# Install Hugo -------------------------------
FROM debian:bookworm-slim AS install-hugo

ENV HUGO_VERSION=0.142.0

ENV HUGO_DOWNLOAD_URL=https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz

RUN apt-get update && apt-get install -y curl tar

WORKDIR /usr/local/bin

RUN curl -L $HUGO_DOWNLOAD_URL -o hugo.tar.gz && \
    tar -xzvf hugo.tar.gz && \
    rm hugo.tar.gz && \
    chmod +x hugo

# Verify installation
RUN ./hugo version


# Install Dart Sass -------------------------------
FROM debian:bookworm-slim AS install-dart-sass

ENV DART_SASS_VERSION=1.83.4

ENV DART_SASS_DOWNLOAD_URL=https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz

RUN apt-get update && apt-get install -y curl tar

WORKDIR /usr/local/bin

RUN curl -L $DART_SASS_DOWNLOAD_URL -o dart-sass.tar.gz && \
    tar -xzvf dart-sass.tar.gz --strip-components=1 && \
    rm dart-sass.tar.gz && \
    chmod +x sass

RUN ls -la && ./sass --version

# Main image -------------------------------
FROM golang:1.23

# Set work directory
WORKDIR /app

# Set build arguments for UID and GID
ARG UID=1001
ARG GID=1001

# Create a group and user with specified UID and GID
RUN groupadd -g ${GID} appuser && \
    useradd -m -u ${UID} -g appuser -s /bin/bash appuser

# Copy Dart Sass from install-dart-sass stage
# COPY --from=install-dart-sass /usr/local/bin/ /usr/local/bin/

# Copy Hugo from install-hugo stage
COPY --from=install-hugo /usr/local/bin/ /usr/local/bin/
# Verify installations
# RUN hugo version && sass --version
RUN hugo version 

# Change ownership of the /app directory
RUN chown -R appuser:appuser /app

USER appuser

# Set the entrypoint
ENTRYPOINT ["hugo", "version"]
