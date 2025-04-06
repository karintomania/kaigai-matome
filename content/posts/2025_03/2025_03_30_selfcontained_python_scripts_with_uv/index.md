+++
date = '2025-03-30T00:00:00'
months = '2025/03'
draft = false
title = 'uvでPythonスクリプトが自己完結！？環境構築の手間を省く裏技'
tags = ["Python", "uv", "仮想環境", "パッケージ管理", "スクリプト"]
featureimage = 'thumbnails/purple3.jpg'
+++

> uvでPythonスクリプトが自己完結！？環境構築の手間を省く裏技

引用元：[https://news.ycombinator.com/item?id=43519669](https://news.ycombinator.com/item?id=43519669)

{{<matomeQuote body="UVに限らず、コメント欄でコードの実行をコントロールするのってマジ勘弁って感じ😅。リンターとか開発者向けのメモは全然ありだけど、設定とか実行に関わるデータはもっと良い方法があると思うんだよね。<br><br>例えばこんな感じ。<br>UV_ENV = {<br>  ”dependencies”: { ”requests”:  ”2.32.3”, ”pandas”: ”2.2.3” }<br>}<br><br>これなら、Pythonの文法として正しいし、標準的なデータ構造を使ってるから解析も楽ちん。それに、コメントを全部消してもコードがちゃんと動くっていう原則にもちゃんと従ってるのが良いよね👍" userName="stared" createdAt="2025-03-30T09:39:33" color="#45d325">}}

{{<matomeQuote body="めっちゃ同意だけど、もう一歩踏み込んで考えるなら、それって結局ランタイムでは何もしてないマジック定数じゃん？UVが解析する為だけにあるみたいな。他のツールが未使用コードとして消しちゃう可能性もあるし。それって、マジックコメントと大差ない気がするんだよね🤔。<br><br>だったら、UVに直接指示を出せば良くない？<br>import uv<br><br>uv.exec(<br>  dependencies=[“clown”],<br>  python=“>=3.10”,<br>)<br><br>from clown import nose<br><br>最初の呼び出しは、uvパッケージを見つけられるPythonでOK。uvパッケージがvenvを設定して、環境変数とかでフラグ立てて再実行する感じ。<br>2回目の実行では、uv.execはフラグを検知して何もしない、みたいな。" userName="gorgoiler" createdAt="2025-03-30T10:49:57" color="#785bff">}}

{{<matomeQuote body="それにはちゃんと理由があるみたいだよ。<br>＞https://peps.python.org/pep-0723/#why-not-use-possibly-restr…" userName="hanikesn" createdAt="2025-03-30T11:01:32" color="">}}

{{<matomeQuote body="リンクありがとね😊。PEPの主張に対する反論としては、（1）Pythonを実行しようとしてるんだから、Pythonパーサーは手元にあるはずだし、（2）当面は過去のバージョンのPythonも解析できるはず、ってことかな。まぁ、ちょっと強引な気もするけどね。依存関係と実際のコードで言語を分けるのは、長期的な安定性には役立つかもね。" userName="gorgoiler" createdAt="2025-03-30T11:48:10" color="">}}

{{<matomeQuote body="それって結局、PythonがUVを実行することになるってことでしょ？開発の観点から色々な影響がありそうじゃん？理論的にはそれが一番クリーンな方法だと思うけど、shebangもコメントみたいなもんだし、ここでドグマティックになる価値があるのかは微妙だよね🤔" userName="atoav" createdAt="2025-03-30T12:56:29" color="">}}

{{<matomeQuote body="その議論には賛成できないな🙅。JSON形式に限定すれば、アドホックな構文よりもずっとメンテナンスしやすいし、拡張性も高いと思うよ。最初は管理しやすくても、徐々に解析が複雑になっていくのは避けたいじゃん。" userName="stared" createdAt="2025-03-30T12:48:26" color="#ff33a1">}}

{{<matomeQuote body="UVの正当性のひとつは、Pythonに依存しないからブートストラップ問題がないってことだよね。現状、UVを使うには「UVのサイトからインストールコマンドを取得して実行（まだインストールしてない場合）。UVでスクリプトを実行。」の2ステップで完了する。これ以上シンプルにはできないでしょ。UVをインポート可能にするってことは、Pythonがすべてのシステムに簡単にインストールできる前提になるから、それならUVは必要なくなるよね。" userName="skeledrew" createdAt="2025-03-30T13:52:21" color="#45d325">}}

{{<matomeQuote body="それだと、本来UVに依存しなかったコードがUVに依存することになるよね。スクリプトのコメントに依存関係を示す仕様はPEP723で、ツールに依存しないんだよ。" userName="loloquwowndueo" createdAt="2025-03-30T13:42:17" color="#ff5733">}}

{{<matomeQuote body="＞”In your case that’s uv doing the parsing but another tool might delete it as unused code.”<br>それが狙いだよ。特定のツールのためだけにあるんだから。使われなかったら、実行中のアプリに影響を与えないようにしたい。コメントと同じだね。" userName="nickpsecurity" createdAt="2025-03-30T12:42:15" color="">}}

{{<matomeQuote body="だって、UVをインストールしてないとコードが動かなくなっちゃうじゃん。" userName="simonw" createdAt="2025-03-30T11:59:32" color="">}}

{{<matomeQuote body="Pythonのバージョンによって文法が違うから､新しい構文だと古いPythonじゃ最初の数行すら実行できないかもね｡例えばPython3.6で`print(”hello”) match 123: case _: pass`ってやると､”hello”すら表示されないよ｡" userName="Retr0id" createdAt="2025-03-30T13:38:16" color="#ff5c5c">}}

{{<matomeQuote body="＞”自己完結型”スクリプトの肝は､どこでも動くこと｡ uv は専用の cpython runtime を使うけど､uv の起動前にスクリプトが実行されると､それが台無し｡<br>記事のテクニックなら､古い Ubuntu LTS 環境でも最新 Python のスクリプトが動くけど､GP のやり方じゃダメ｡" userName="Retr0id" createdAt="2025-03-30T18:16:56" color="#ff33a1">}}

{{<matomeQuote body="代わりに､uv に何をすべきか指示する呼び出しを作ったらどう？<br>大事なのは､これが uv 特有の機能じゃないってこと｡ 将来的には他のパッケージマネージャーも実装する Python の標準機能になる予定｡ だから､どんな解決策も uv だけでなく､標準に準拠したパッケージマネージャー全てで動作する必要がある｡" userName="dagw" createdAt="2025-03-30T13:14:01" color="#ff5733">}}

{{<matomeQuote body="これは uv の発明じゃなくて､uv は他のツールと同じように標準の PEP 723 を使ってるだけだよ｡ https://peps.python.org/pep-0723/" userName="sorenjan" createdAt="2025-03-30T10:13:57" color="">}}

{{<matomeQuote body="前に言ったように､uv への批判じゃなくて､この全体的なアプローチへの批判だよ｡" userName="stared" createdAt="2025-03-30T14:43:19" color="">}}

{{<matomeQuote body="それもそうだね｡ 命令的なコードを解析・評価するより､最小限の権限の原則に従って宣言的なデータにする方が､柔軟性があると思う｡<br>コメントを使うのは､そもそも shebang 行と同じ｡ 45年も経つから､みんなシェルコメントだって気づかないだけ｡" userName="JimDabell" createdAt="2025-03-30T12:30:47" color="">}}

{{<matomeQuote body="＞コードからコメントを全部消しても､依存関係をちゃんとインストールすれば､挙動は変わらないはず<br>その通り｡ コード自体の意味は変わらない｡コードが動く環境が変わるだけ｡ それはシェルの先頭にある`#!/bin/bash`コメントと変わらない｡" userName="wavemode" createdAt="2025-03-30T15:50:30" color="#ff5c5c">}}

{{<matomeQuote body="完全に同意｡ こういうのが標準化されると良いな｡<br>問題は､uv は依存関係を見つけるために何も実行したくないから､かなり制限された Python のサブセットになる必要があるってこと｡<br>そもそも､これが求められてるってことは､言語の弱点を示してる｡ import 文自体が依存関係の情報を全部伝えるべき｡" userName="petters" createdAt="2025-03-30T10:08:01" color="#ff5733">}}

{{<matomeQuote body="UV は PEP 723[1] を実装しただけ｡ これは PyPA Inline Script Metadata[2] になった｡ もはや仮のものではなく､標準化されたんだ！ Python に､コメントじゃない方法でこの機能を提供する方法がなかったのは残念｡ [1] https://peps.python.org/pep-0723/ [2] https://packaging.python.org/en/latest/specifications/inline..." userName="SAI_Peregrinus" createdAt="2025-03-30T16:44:43" color="#ff33a1">}}

{{<matomeQuote body="そもそもこれが必要なこと自体が、言語の弱点を浮き彫りにしてるよね。`import`文自体に依存関係に関するすべての情報を含めるべきじゃない？どの言語がスクリプトの`import`文で依存関係のバージョンを伝えてるの？" userName="pedrosorio" createdAt="2025-03-30T15:45:28" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="`import`文の前に、有効な静的構造であることを指定できるってこと。" userName="stared" createdAt="2025-03-30T11:31:58" color="">}}

{{<matomeQuote body="`future statements`とか他の`import`の間に入れるってこと？" userName="nemetroid" createdAt="2025-03-30T12:14:46" color="">}}

{{<matomeQuote body="だいたい賛成だけど、それって`shebang`を文字通り使ってるよね。" userName="Svoka" createdAt="2025-03-30T13:38:45" color="">}}

{{<matomeQuote body="これ、ここ数ヶ月の`HN`でめっちゃ話題になってるよね。最近の例だと、<br>`https://news.ycombinator.com/item?id=43500124`<br>`https://news.ycombinator.com/item?id=42463975`<br>`uv`は好きだけど、”自己完結型”って主張には異論があるんだ。<br>1) スクリプトは`uv`が既にインストールされてることを前提としてる。最悪、`uv`がインストールされてるかチェックして、されてなかったら`curlpipe`でインストールするシェルスクリプトにすることもできるけど…ボイラープレートが増えるし、`curlpipe`パターン自体が微妙じゃん？<br>2) ホームディレクトリに`venv`を自動作成するのも、自己完結型とは言えない。使い捨てスクリプトを実行して削除しても、`venv`は残って容量を食う。一時的な仮想環境が自動的にクリーンアップされるって記述も`uv`のドキュメントに見当たらないし。" userName="bityard" createdAt="2025-03-30T13:43:53" color="#38d3d3">}}

{{<matomeQuote body="そうだよね、`uv`をインストールする必要があるし、インストールされてなかったら手動か`curl | sh`でインストールする必要があるかも。<br>これは妥当な不満だと思う。<br>パッケージマネージャーが`uv`をリポジトリに含めるようになれば、問題は少なくなるかもね。<br>例えば、`uv`は既に`Alpine Linux`と`Homebrew`で利用可能だよ。<br>`https://repology.org/project/uv/versions`<br>あと、インラインスクリプトのメタデータは`Python`の標準だよ。<br>`uv`がシステムにない、パッケージ化もされてないけど、スクリプトに適したバージョンの`Python`がある場合は、`pipx`でスクリプトを実行できるよ。<br>`https://pipx.pypa.io/stable/examples/#pipx-run-examples`<br>`pipx`はもっと広くパッケージ化されてる。<br>`https://repology.org/project/pipx/versions`" userName="networked" createdAt="2025-03-30T14:23:39" color="#45d325">}}

{{<matomeQuote body="`curl | sh`はマジで嫌なやり方だから絶対に使っちゃダメ。" userName="Gud" createdAt="2025-03-30T19:49:57" color="">}}

{{<matomeQuote body="`Dockerfile`では便利で適切な場合も多いよ。" userName="Myrmornis" createdAt="2025-03-31T02:17:30" color="">}}

{{<matomeQuote body="そうじゃなかったら、10種類のディストリビューションすべてがプログラムをパッケージ化して、それが更新されるのを気長に待つしかないじゃん。" userName="tempaccount420" createdAt="2025-03-30T21:43:07" color="">}}

{{<matomeQuote body="いやいや、自分でパッケージングして署名キー付きで配布する方が良くない？．debとか．rpm作れば、エンドユーザーの大部分カバーできるじゃん。" userName="sgarland" createdAt="2025-03-31T14:39:12" color="">}}

{{<matomeQuote body="それって現状より悪くない？開発者の多くはArch LinuxとかNixOSとか、一般の人にはマイナーなディストリ使ってるし。作者が持ってるドメインのHTTPSリンクから`curl | sh`するより、署名キー付きの．deb/．rpmの方がなんで良いの？．deb/．rpmだって任意のシェルコマンド含んでるじゃん。" userName="tempaccount420" createdAt="2025-03-31T15:31:12" color="#ff33a1">}}

{{<matomeQuote body="もしシェルスクリプトにキー検証が組み込まれてたら、出所検証の観点からは大差ないかもね。でもそれってレアじゃん？それに、OSのパッケージマネージャー使えば、アンインストールがめっちゃ簡単。" userName="sgarland" createdAt="2025-03-31T18:26:34" color="">}}

{{<matomeQuote body="俺は10個もOS/ディストリ使ってないけど、俺のツールの潜在的なユーザー全体で見れば、10個以上なんて余裕でありえる。" userName="dagw" createdAt="2025-03-31T11:38:19" color="">}}

{{<matomeQuote body="docker+uvで同じような問題を解決しようとしたけど、なんとなくできたよ。ランダムな開発環境だとuvよりdockerの方が一般的だからね（特にtfaがgong projectだって言ってるし）。<br>これ動くけど、何もキャッシュしないから毎回ダウンロードするのが面倒なんだよね。ボリューム使えば直せるかも？<br>＞https://hugojosefson.github.io/docker-shebang/#python" userName="photonthug" createdAt="2025-03-30T13:59:38" color="">}}

{{<matomeQuote body="普通、プログラムを実行する前に何かインストールする必要があるよね。だからuvをインストールするのも、そんなに悪いことじゃないと思うな。でも、プログラムを実行する時にインターネットから色々ダウンロードするから、これって自己完結型とは言えないよね！<br>俺にとって、完全な自己完結型ってAppImageみたいなもの。" userName="krupan" createdAt="2025-03-30T17:47:52" color="#785bff">}}

{{<matomeQuote body="100%同意。py2exeみたいなものを使うと、自己完結型の“pythonスクリプト”が作れる。開発者にとっては問題が多いけど、ユーザーにとっては問題が少ない。" userName="dazzawazza" createdAt="2025-03-30T14:22:53" color="">}}

{{<matomeQuote body="細かいことだけど、uvのパッケージの重複排除機能のおかげで、仮想環境は固有の依存関係がない限り容量を消費しない。" userName="gcr" createdAt="2025-03-30T17:02:31" color="#785bff">}}

{{<matomeQuote body="＞uvのドキュメントには、一時的な仮想環境が自動的にクリーンアップされるという記述が見当たらない。<br>それは良い指摘だね。少なくとも、スクリプトを何回か実行したら再利用されるのかな。" userName="benhurmarcel" createdAt="2025-03-30T13:47:09" color="">}}

{{<matomeQuote body="詳しく見てみたんだけど、uvは必要なパッケージをキャッシュディレクトリ(~/.cache/uv)にインストールしてるみたい(まだそこになければ)。だから、uv clearとかでキャッシュを消さない限りパッケージは残るんじゃないかな。venvディレクトリを新しく作るわけじゃなくて、uvはパッケージを中央の場所にリンクさせて、既にあれば再利用するっぽいね。" userName="maxed" createdAt="2025-03-30T15:46:15" color="#38d3d3">}}

{{<matomeQuote body="たぶん、uvはvenvを作るときにスクリプト名、Pythonのバージョン、依存関係のハッシュを作るんだと思う。だから、どれも変わらなければvenvを再利用するんじゃないかな。" userName="dagw" createdAt="2025-03-30T13:52:58" color="">}}

{{<matomeQuote body="Nixでも同じことやってるよ。shebang行はこんな感じ:<br>#! nix-shell -i python3 -p ”python312.withPackages (pkgs: [ pkgs.boto3 pkgs.click ])”<br>これで、必要なのはシステムにNixが入ってることだけ。PythonすらインストールされてなくてもOK!" userName="kissgyorgy" createdAt="2025-03-30T06:50:53" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="それはそうだけど、PyPIパッケージにはまだnixpkgsでパッケージ化されてないものもたくさんあるから、uvほど万能なアプローチではないよね。" userName="skowalak" createdAt="2025-03-30T11:24:44" color="">}}

{{<matomeQuote body="＞ you don’t even need Python to be installed!<br>TFAの場合もまさにそうで、uvがPythonのインストールをその場で行ってくれる。" userName="falcor84" createdAt="2025-03-30T12:21:45" color="#38d3d3">}}

{{<matomeQuote body="うん、同じテクニックはどの言語にも使えるよ。一番わかりやすいのはbashで依存関係を全部指定するやつだけど、nix shebangを使ってRustのシングルファイルスクリプトをハックしたこともある。<br>https://nixos.wiki/wiki/Nix-shell_shebang" userName="skavi" createdAt="2025-03-30T08:27:12" color="">}}

{{<matomeQuote body="Nihをインストールする方が、uvをインストールするよりもずっと大変だよ。" userName="Tractor8626" createdAt="2025-03-30T12:53:25" color="">}}

{{<matomeQuote body="Nixはセットアップと理解にいろいろ必要。uvはPATHにあるバイナリだけ。" userName="maleldil" createdAt="2025-03-30T19:35:40" color="">}}

{{<matomeQuote body="`nix shell`(flakeベースのコマンド)で`nix-shell`の代わりに同じことをするにはどうすればいいの？" userName="execat" createdAt="2025-03-30T11:19:07" color="">}}

{{<matomeQuote body="それ、ちょっぴり面倒なんだよねー。詳しくはこのリンク見てみて！<br>https://nix.dev/manual/nix/2.22/command-ref/new-cli/nix3-she…" userName="skavi" createdAt="2025-03-31T07:48:35" color="">}}

{{<matomeQuote body="もしかして `#! /usr/bin/env -S nix shell ` って手もあるかも？" userName="skeledrew" createdAt="2025-03-30T13:59:02" color="">}}

{{<matomeQuote body="他のコメントにもあるように、“自己完結型”って言うには`uv`がインストールされてる前提じゃん？<br>マジで自己完結させたいなら、Nuitkaコンパイラがおすすめだよ[0]。プロダクション環境のgRPCサービスで使ってるけど問題なし！ ”nuitka --onefile run.py”でOK。マジ卍。コンパイラだから、Pyinstallerより速いし。<br>作者のGitHub[1]には「最高のPythonコンパイラを作るのが俺の使命！」って書いてあるよ。<br>[0] https://nuitka.net/<br>[1] https://github.com/kayhayen" userName="bheadmaster" createdAt="2025-03-31T09:49:56" color="#38d3d3">}}

{{<matomeQuote body="このパターン、マジで好きなんだけど、LSP (pyright, in Helix) で動かすのがマジ無理ゲー。uv経由でエディタ起動してもダメだった (`uv run hx script.py`)。<br>`uv run --with 必要なやつ hx script.py` とかできるけど、めんどくさすぎ。" userName="tiltowait" createdAt="2025-03-30T05:26:31" color="">}}

{{<matomeQuote body="俺の自作uveスクリプト、マジ汚いけど晒すわ。<br>bash<br>$ cat ~/.local/bin/uve<br>#!/bin/bash<br>temp=$(mktemp)<br>uv export --script $1 --no-hashes > $temp<br>uv run --with-requirements $temp vim $1<br>unlink $temp<br><br>エディタが`uv python find --script`に対応してくれたら最高。" userName="mayli" createdAt="2025-03-30T07:35:18" color="#ff33a1">}}

{{<matomeQuote body="`trap .. EXIT` 使ってunlinkみたいな処理を遅延させるの、マジ便利だよ。スクリプトが途中で止まってもちゃんと動くし。" userName="Galanwe" createdAt="2025-03-30T11:25:34" color="#ff5733">}}

{{<matomeQuote body="なるほど、こんな感じ？<br>`temp=$(mktemp)`<br>`trap 'unlink $temp' EXIT`<br>`# Do things`" userName="lioeters" createdAt="2025-03-30T13:17:35" color="">}}

{{<matomeQuote body="そーそー。cleanup処理が複雑なら関数にしてもOK。" userName="Galanwe" createdAt="2025-03-30T13:37:14" color="">}}

{{<matomeQuote body="これマジ使える！uvってPythonプロジェクトのデプロイで長期的にも安全な選択肢？昔anacondaで痛い目見たから心配なんだよねー。5年くらい前に依存関係管理に使ってたんだけど、ルール変わって従業員200人以上の企業は有料になっちゃったんだよね。" userName="icameron" createdAt="2025-03-30T04:46:54" color="#ff5733">}}

{{<matomeQuote body="uvはMITかApache-2.0ライセンスだよ[0]。開発が止まったり、ライセンスが変わったりする可能性はあるけど、過去のバージョンはオープンソースが保証されてる。心配ならフォークして同期すればOK。でも、他のOSSプロジェクトも同じだし、気にしすぎないで良いと思うよ。condaは元々オープンソースじゃなかったし、バイナリ配布だったはず。<br>[0] https://github.com/astral-sh/uv?tab=readme-ov-file#license" userName="godelski" createdAt="2025-03-30T05:55:28" color="#38d3d3">}}

{{<matomeQuote body="オープンソースだからってメンテされるとは限らないよね。uvはRustで書かれてるってのがちょっと特殊。Pythonに興味あるRustの開発者がアクティブにいるかにかかってるってことじゃん？<br>PyPI使ってるから、パッケージ管理とか開発ツールとしては使ってもいいかな。最悪pipとかに戻ればいいし。でも、パッケージのランタイム依存としては使わないかな。それにはpyinstaller使う。<br>こういうのって、開発者がリポジトリで使うユーティリティスクリプト向けだと思う。個人のユーティリティをuvに縛り付けたくないし。依存関係が必要ならパッケージ作る方が楽だしね。" userName="globular-toast" createdAt="2025-03-30T09:17:51" color="">}}

{{<matomeQuote body="マジですごいのは、インラインメタデータの形式がPEPで認められてるってこと。だから、uvがダメになっても、他のツールでサポートできる可能性があるってことだね。" userName="skeledrew" createdAt="2025-03-30T14:04:32" color="#ff5733">}}

{{<matomeQuote body="anacondaの件はリポジトリの引き上げでしょ（conda-forgeのパッケージは今でも無料で使える）。<br>uvはpypi使ってるだけだから、uvからpipとかpoetryに変えるだけ。パッケージは全部同じところから来るし。" userName="scarlehoff" createdAt="2025-03-30T06:30:20" color="#785bff">}}

{{<matomeQuote body="俺の理解だと、プロジェクトがContributor Licensing Agreement（CLA）を結んでる場合、著作権をプロジェクトのオーナーに譲渡することになるから、ライセンスの変更が可能になるんだよね。（最終的には、考えうる限り最悪の金持ちに買収される運命）。<br>uvのコントリビューションガイドとかissuesを覗いてみたけど、CLAは見当たらなかった。PyTorchでは、コントリビューションガイドの冒頭にCLAの記載があったよ。<br>あと、Anacondaの最後のFOSSバージョンのコミュニティフォークがあっても良かったはず。Redisではそうだったし、RedisはCLA使ってるし。<br>https://github.com/redis/redis/blob/unstable/CONTRIBUTING.md...<br>みんな、絶対にCLAにサインしちゃダメだよ。どうせなら、コピーレフトプロジェクトに貢献しようぜ。ただ働きするには給料高すぎるって。" userName="01HNNWZ0MV43FF" createdAt="2025-03-30T05:21:12" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="CLAが無いとライセンス変更はできないけど、オープンソースライセンスってそもそも取り消せないじゃん。" userName="throwaway48476" createdAt="2025-03-30T08:12:06" color="">}}

{{<matomeQuote body="それって法廷でほとんど試されてないんだよね。最近の判決では、少なくともOSSには対価性があるから、正当な理由なしに一方的に終了することはできないってことになってるけど、USCにはその正当化事由が規定されてる（ただし、2～10年の事前通知とか、特定の期間内に行う必要があるとか、厄介な要件がある）、取り消し不能って書いてあるライセンスでも。" userName="hansvm" createdAt="2025-03-30T15:10:46" color="">}}

{{<matomeQuote body="これって、小さいユーティリティをコンテナ化する代わりに使うには良いパッケージングの選択肢になりそうだね。同僚全員にuvをインストールさせるように説得しなきゃ。" userName="holysoles" createdAt="2025-03-30T04:04:02" color="">}}

{{<matomeQuote body="Uvはマジで速いよ。それが後押しになるはず。" userName="throwaway48476" createdAt="2025-03-30T07:50:57" color="#ff33a1">}}

{{<matomeQuote body="俺たちにとっての問題は、SCAの脆弱性スキャナがまだuvに対応してないってことなんだよね。" userName="tiltowait" createdAt="2025-03-30T05:24:02" color="">}}

{{<matomeQuote body="uvの依存関係をrequirements.txtとしてエクスポートする中間SCAステージを追加すればいいんじゃない？" userName="cmgbhm" createdAt="2025-03-30T12:51:03" color="#38d3d3">}}

{{<matomeQuote body="これってRubyのbundler/inlineみたいなもんかな？[1] Pythonで同じようなのが出てきて嬉しいなー。めっちゃ便利そう！<br>[1] https://bundler.io/guides/bundler_in_a_single_file_ruby_scri..." userName="mos_6502" createdAt="2025-03-30T14:57:01" color="#ff5733">}}

{{<matomeQuote body="誰かこれWindowsで動かせた人いる？ゲームMOD用のツールで使いたかったんだけど、shebangのトリックがうまくいかなくてさ。" userName="dharmab" createdAt="2025-03-30T04:04:55" color="">}}

{{<matomeQuote body="WindowsとLinuxでよく使ってるよー。手順はこんな感じ：<br>＞uv init --script <script_name>.py<br>＞uv add --script <script_name>.py <pkg1> <pkg2> ...<br>＞uv add --script <script_name>.py --dev <dev_pkg1> <dev_pkg2> ...<br>＞uv run <script_name>.py<br>参考になるといいな！<br>Source: https://docs.astral.sh/uv/guides/scripts/" userName="quickslowdown" createdAt="2025-03-30T04:47:37" color="#ff33a1">}}

{{<matomeQuote body="残念ながら、`uv add --dev`は`--script`と一緒には使えないみたい：<br>＞uv -V<br>uv 0.6.10<br>＞uv add --script foo.py --dev ruff<br>エラーが出るんだよね。<br>Pythonのインラインスクリプトのメタデータは、開発依存関係を標準化してないみたい。pyproject.tomlで開発環境を整える方法について最近コメントしたから見てみて！ https://news.ycombinator.com/item?id=43503171" userName="networked" createdAt="2025-03-30T13:56:40" color="">}}

{{<matomeQuote body="--debフラグがスクリプトで使えないのは興味深いね。記憶だけで書いちゃったけど、スクリプトに開発依存関係をインストールした気がしてた。ただの勘違いだったみたい。訂正ありがとう。" userName="quickslowdown" createdAt="2025-03-30T15:20:41" color="">}}

{{<matomeQuote body="ちょっと脱線するけど、シェルの例では山括弧は避けるべきだよ。間違って入力しちゃうと全部パーになっちゃうからね。" userName="mixmastamyk" createdAt="2025-03-30T16:50:24" color="">}}

{{<matomeQuote body="Windowsの通常のCPythonインストーラーはpy launcherをインストールして、.pyファイルに関連付けるんだよね。py launcherはshebang行をサポートしてる。<br>数日前に同じトピックのブログ記事が投稿されてたよ。それによると-Sは省略しないといけないみたい。試してないけど、.pyファイルをuv runで開くようにファイル関連付けを変更したよ。参考：https://thisdavej.com/share-python-scripts-like-a-pro-uv-and... https://news.ycombinator.com/item?id=43500124 https://docs.python.org/3/using/windows.html#python-launcher... https://peps.python.org/pep-0397/" userName="sorenjan" createdAt="2025-03-30T10:26:28" color="#ff33a1">}}

{{<matomeQuote body="へー、面白いね。俺が使ってるワークフローはCPythonインストーラーをスキップしてuvだけ使ってるよ。" userName="dharmab" createdAt="2025-03-30T17:06:47" color="">}}

{{<matomeQuote body="Windowsはshebang行をサポートしてないと思うけど、uvを.pyファイルに関連付ければ同じ結果になるよ。こんな感じかな：<br>ftype Python.File=C:¥Path¥to¥uv.exe run %L %*<br>CPythonインストーラーを使ってない場合はPython.Fileファイルタイプが定義されてないかもしれないから、assocで設定する必要があるかも：<br>assoc .py=Python.File" userName="sorenjan" createdAt="2025-03-30T20:49:53" color="">}}

{{<matomeQuote body="でも拡張ハンドラーの登録はサポートしてるみたいだよ[1]。だから、スクリプトに例えば.pyuvって名前を付けて、”.pyuv”ファイルのハンドラーとして“uv run --script %1”とか、uvを実行するのに必要なものを登録すれば、うまくいくんじゃないかな。uvが変なことしてなければ。<br>インストール段階でこれをやるとか。<br>[1]：https://learn.microsoft.com/en-us/windows/win32/shell/fa-fil…" userName="magicalhippo" createdAt="2025-03-30T04:35:50" color="">}}

{{<matomeQuote body="PyInstallerみたいなのを使うのもアリだよ。<br>https://pyinstaller.org" userName="dlachausse" createdAt="2025-03-30T04:20:36" color="">}}

{{<matomeQuote body="役に立つかわかんないけど、誰かがRacketで同じようなことをPoweScriptでやる方法を投稿してたよ。<br><br>https://onor.io/2025/01/more-scripting-with-racket.html" userName="gus_massa" createdAt="2025-03-30T15:03:58" color="">}}

{{<matomeQuote body="WSLからならShebangはちゃんと動くはず。" userName="skeledrew" createdAt="2025-03-30T14:08:01" color="">}}

{{<matomeQuote body="このユースケースのおかげでuvを好きになったんだけど、公式の(しかも、めっちゃ役立つ!) PEPが公式のPythonツールでサポートされてないのは、PythonのZenに反してると思うんだよね。<br>Pythonが“batteries included”じゃなかったのは初めてだよ。<br>今では、システムに二つのPython依存性マネージャーがあるし。Pythonの依存性管理については語るべきことが山ほどあるのは知ってるけど、requirements.txtがある限り、pip+venvで何年もやってこれたんだ。" userName="yallpendantools" createdAt="2025-03-30T16:49:45" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
