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

# Copy Hugo from install-hugo stage
COPY --from=install-hugo /usr/local/bin/ /usr/local/bin/
# Verify installations
RUN hugo version 

# Change ownership of the /app directory
RUN chown -R appuser:appuser /app

USER appuser

# Set the entrypoint
ENTRYPOINT ["hugo", "version"]
