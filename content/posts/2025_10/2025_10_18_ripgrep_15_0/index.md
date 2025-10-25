+++
date = '2025-10-18T00:00:00'
months = '2025/10'
draft = false
title = 'Ripgrepが15.0に！多くの開発者を救ってきた「時間節約の神ツール」がさらに進化！'
tags = ["プログラミング", "開発ツール", "コマンドライン", "検索", "アップデート"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Ripgrepが15.0に！多くの開発者を救ってきた「時間節約の神ツール」がさらに進化！

引用元：[https://news.ycombinator.com/item?id=45627324](https://news.ycombinator.com/item?id=45627324)




{{<matomeQuote body="Ripgrepには長年、マジでお世話になってるよ！新しくシステムを立ち上げたら真っ先にインストールするくらい、今では欠かせないツールだね。古いコードベースを扱うのには必須だよ。<br>唯一の不満は、-F（リテラルとして扱う）オプションが、まだ特定の文字を特殊文字として扱っちゃうことかな。何の文字かは忘れちゃったけど。<br>更新され続けるのはいつも嬉しいね！" userName="Night_Thastus" createdAt="2025/10/18 18:33:13" color="#ff5c5c">}}




{{<matomeQuote body="＞-Fオプションが特定の文字をまだ特殊文字扱いしちゃう件。<br>もし具体的な例があれば、それについて説明できるよ。-F/--fixed-stringsは、パターン内の正規表現機能を100％オフにして、シンプルなリテラルとして扱われるはずだからね。エスケープが必要なのは、シェル側がそう要求してる場合かもしれないね。" userName="burntsushi" createdAt="2025/10/18 18:35:32" color="#ff5733">}}




{{<matomeQuote body="-Fとーregexみたいな見た目のフラグはどう？コマンドラインの解析でフラグとして解釈されちゃってエラーになるよね。<br>-Fを使わないなら、シングルクォートで＼-regexってハイフンをエスケープできるけど、固定文字列検索ができなくなっちゃう。そして-F ＼-regexは「バックスラッシュハイフン r e g e x」の固定文字列検索になっちゃうんだ。<br>唯一の方法は、正規表現を自分でエスケープして-Fを使わないことだね。-F=ーregexみたいな構文が使えるといいと思うよ。" userName="cormacrelf" createdAt="2025/10/19 00:01:14" color="#38d3d3">}}




{{<matomeQuote body="うん、それは良い指摘だね。`rg -F -e -pattern`ってやればいいんだよ。" userName="burntsushi" createdAt="2025/10/19 00:33:22" color="#38d3d3">}}




{{<matomeQuote body="コマンドラインツールでは、`--`を使うことでオプションの終わりを示すのが慣例だよね。これ以降のものは、たとえダッシュで始まっていても通常の引数として解析されるんだ。もしRipgrepがこれをサポートしてないなら、すべきだね。" userName="account42" createdAt="2025/10/20 10:22:24" color="">}}




{{<matomeQuote body="Ripgrepはリリース初日からサポートしてるよ。grepみたいに`-e/--regexp`フラグも使えるしね。" userName="burntsushi" createdAt="2025/10/20 13:02:54" color="#785bff">}}




{{<matomeQuote body="Ripgrepにはマジでお世話になってるよ！最近はLLMと一緒に使って、Ripgrepが使えることを教えてあげてるんだ。GitHubで寄付もしたよ、いつもありがとう！" userName="kator" createdAt="2025/10/18 23:29:57" color="#ff5c5c">}}




{{<matomeQuote body="全然話は変わるけど、`jiff`とchrono、time、std::timeなんかのセールスポイントって何？<br>あなたの仕事は本当に素晴らしい！僕たちは前から少しだけどスポンサーしてるんだ。いつも本当にありがとう！" userName="echelon" createdAt="2025/10/18 19:22:50" color="#38d3d3">}}




{{<matomeQuote body="https://docs.rs/jiff/latest/jiff/_documentation/comparison/i...とhttps://docs.rs/jiff/latest/jiff/_documentation/design/index...?を見てくれたかな？もっと具体的な質問があれば喜んで答えるよ。<br>個人的な意見だけど、`jiff`はより良いAPI、フットガン（予期せぬ挙動）の少なさ、より多くの機能、カレンダー期間のより良いサポート、統合されたtzdbサポートなど、正直もっとたくさんあるよ。<br>std::timeは、モノトニッククロックやシステムクロックへのプラットフォームに依存しないけど最低限のアクセスしか提供しないんだ。Unixタイムスタンプを単なる整数として扱う以上のことをしたいなら、何らかの日付時間ライブラリが必要になるんだよ。" userName="burntsushi" createdAt="2025/10/18 19:35:34" color="#38d3d3">}}




{{<matomeQuote body="rgは魔法みたいに感じるツールだよ。でも実際は、すごいエンジニアリングと改善への努力の結晶で、毎日使ってる素晴らしいハードウェアを活かしてるんだ。<br>それに、”lsp-like”な標準を待つ代わりに、agentがコードを速く探索・推論できるようにした「smithing」っていう点がすごいね。" userName="atonse" createdAt="2025/10/18 18:36:51" color="#ff5733">}}




{{<matomeQuote body="この文脈での”smithing”って、マジで何のことか気になるんだけど！" userName="restlake" createdAt="2025/10/18 22:22:05" color="">}}




{{<matomeQuote body="”something”じゃないかな、たぶんね。" userName="speerer" createdAt="2025/10/18 22:36:25" color="">}}




{{<matomeQuote body="ごめん、ハハ。誤字に気づいた時にはもう遅くて、HNで編集できなかったんだ。誰も読み間違えないことを願ってたんだけど。" userName="atonse" createdAt="2025/10/20 17:56:55" color="">}}




{{<matomeQuote body="Ripgrepのコードベースは究極の「お酒を注いで、最高の椅子に座って、質の高いソフトウェアを読む」コードベースだよ。ちょっとクリックして見て回るだけで感動するはずさ。" userName="2bitencryption" createdAt="2025/10/18 14:58:41" color="#45d325">}}




{{<matomeQuote body="このブログ記事もすごく良いから読んでみて！https://burntsushi.net/ripgrep/" userName="drob518" createdAt="2025/10/19 00:33:04" color="">}}




{{<matomeQuote body="fdと同じく、rgも使うの楽しいんだよね。新しいコマンドラインツールはやっぱり良いわ。" userName="Fethbita" createdAt="2025/10/18 15:30:30" color="">}}




{{<matomeQuote body="ripgrepとfdの作者がどちらもAstralで働いてるって今知ったよ。Astralが良いソフト作るのも納得だわ！" userName="CorrectHorseBat" createdAt="2025/10/18 15:39:03" color="">}}




{{<matomeQuote body="Astralってどんなビジネスモデルなの？" userName="nicce" createdAt="2025/10/18 15:51:18" color="">}}




{{<matomeQuote body="彼らはツールのうえにサービスを構築したいみたいだよ。3ヶ月前のこの記事を見てみて！https://news.ycombinator.com/item?id=44358216" userName="pas" createdAt="2025/10/18 15:55:37" color="#38d3d3">}}




{{<matomeQuote body="pyxを企業向けに売ってるよ。https://astral.sh/pyx" userName="BiteCode_dev" createdAt="2025/10/18 17:57:38" color="">}}




{{<matomeQuote body="rgもfdも、引数なしのデフォルト設定が99%のケースで欲しいものになってるのが良いんだよね。めちゃくちゃ時間節約になるわ。`rg ＜string＞` `fd ＜string＞`" userName="dizhn" createdAt="2025/10/18 16:38:36" color="#38d3d3">}}




{{<matomeQuote body="今週、gitで追跡されてるファイルだけripgrepで検索する小さなbash関数`rgg()`を作ったよ。バイナリファイルやコミットされたドットファイルが多いディレクトリで、すごく速くなるんだ。ドットファイルを検索するのに`-uu`が必要なんだけど、そうするとバイナリファイルも検索しちゃうのが難点。何百ものファイルがあるリポジトリだと`git ls-files`のオーバーヘッドも少し大きいな。" userName="oever" createdAt="2025/10/18 18:07:41" color="#ff5733">}}




{{<matomeQuote body="それ、本当に速くなる例ある？ripgrepはデフォルトで`.gitignore`を尊重して`git ls-files`に似た動きをするはずだよ。あと、`-uu`は`.gitignore`無視と隠しファイル検索だけど、バイナリはスキップ。バイナリも無視するなら`-uuu`が必要だよ。君の`rgg`関数をLinuxカーネルで試したら「引数リストが長すぎる」ってエラーに。`xargs`使っても`rg`単体より遅かったし、どういう時に速くなるか具体例ある？" userName="burntsushi" createdAt="2025/10/18 18:19:20" color="#38d3d3">}}




{{<matomeQuote body="僕のリポジトリ[0]（PDFや音声ファイル20GB）だと`-u`が遅いんだ。これらは`.gitignore`とバイナリだから普段は無視されるんだけどね。`.woodpecker`内のCIファイルを検索したくて、前は`-uu`で4秒以上かかってたんだけど、`-`を使うと24msに短縮できたよ！`git ls-files ...`は40ms、`rg -w. ...`は24ms、僕の`rgg ...`は16ms、`rg -wuu ...`は2754msだった。試すなら20GBのバイナリファイル入れてみて。まあ、`-`フラグのおかげでこの議論も解決したけどね。[0] https://codeberg.org/vandenoever/rehorse" userName="oever" createdAt="2025/10/18 18:32:56" color="#ff5c5c">}}




{{<matomeQuote body="ああ、わかったよ。`ripgrep`で隠しファイルを検索すると、`gitignore`で無視してるファイルも検索しちゃうと思ってたんだね。だから`git ls-files`使ってたのか。うん、これで納得。`-./--hidden`を使えば解決するもんね。教えてくれてありがとう！" userName="burntsushi" createdAt="2025/10/18 18:37:23" color="">}}




{{<matomeQuote body="これって`gitignore`と同じじゃないと思うな。`git ls-files`は追跡されてるファイルだけを検索するんでしょ？それならインデックス使う方が、ファイルシステムを直接見るより速いんじゃないかな。" userName="EnPissant" createdAt="2025/10/19 02:23:49" color="">}}




{{<matomeQuote body="俺、言葉を選ぶのにめっちゃ気を遣ったんだよ。もう一度引用するね、強調して言うけどさ、『`ripgrep`は基本的に`gitignore`を考慮して、`git ls-files`とほぼ同じ挙動になるはずだ』ってね。これも見てみて: https://news.ycombinator.com/item?id=45629515" userName="burntsushi" createdAt="2025/10/19 02:43:04" color="">}}




{{<matomeQuote body="ただ力になりたいだけで、君を責めてるわけじゃないんだ。`gitignore`を考慮したファイルスキャンを自分で実装したことあるんだけど、追跡ファイルだけを探す場合だと、`git`のネイティブ操作より遅かったんだよ。俺が話してたのは、意味じゃなくて速度のことね。" userName="EnPissant" createdAt="2025/10/19 04:09:22" color="">}}




{{<matomeQuote body="うん、`git ls-files`が`rg --files`より速いのは同意するよ。Chromiumのリポジトリで試したらさ、`git ls-files`が`rg --files`より2.57倍も速かった。でも`ripgrep`は`.rgignore`とか`.ignore`も考慮しなきゃいけないし、Gitリポジトリじゃなくても`.gitignore`を尊重するから、意味も大事なんだよね。" userName="burntsushi" createdAt="2025/10/19 12:24:49" color="#ff5733">}}




{{<matomeQuote body="このコメント書いた後、マニュアルをもう一回読んだら、`-uu`の代わりに使える`-.`フラグを見つけたんだ。Gitが追跡してる隠しファイルを検索できるのは素晴らしいけど、Gitに問い合わせて全ファイルリストを取得するオーバーヘッドは、Rustでもかなり大きいだろうね。" userName="oever" createdAt="2025/10/18 18:18:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺が見落としてるだけかな、でも`ripgrep`ってデフォルトでGitで追跡されてないファイルは無視するんじゃないの？" userName="woodruffw" createdAt="2025/10/18 18:19:09" color="">}}




{{<matomeQuote body="要は、Gitに追跡されてる隠しファイルを検索したいってことなんだ。例えば`.woodpecker`とか`.forgejo`、`.gitlab-ci-yml`みたいなCIスクリプトなんかは、そういう場所に入ってるでしょ。" userName="oever" createdAt="2025/10/18 18:35:09" color="">}}




{{<matomeQuote body="これをもっとスマートにする方法として、こんなのはどうかな？<br>`printf ’!.woodpecker<br>!.forgejo<br>!.gitlab-ci-yml<br>’ ＞ .rgignore`<br>とかね。`!`を追加すれば、隠しファイルでもホワイトリストに追加されて、他の隠しファイルは無視しつつ`rg`で自動的に検索できるようになるよ。`ripgrep`自体もリポジトリのルートにある`.ignore`ファイルで`!/.github/`を使ってるしね。https://github.com/BurntSushi/ripgrep/blob/38d630261aded3a8e..." userName="burntsushi" createdAt="2025/10/18 18:42:40" color="#ff5c5c">}}




{{<matomeQuote body="それ、`.rgignore`と`~/.rgignore`にめっちゃ良い提案だね！" userName="oever" createdAt="2025/10/18 20:41:30" color="">}}




{{<matomeQuote body="「これってgit grepより速いの？」" userName="kibwen" createdAt="2025/10/18 19:24:04" color="">}}




{{<matomeQuote body="「いや、驚くべきことに（私にはね）、問題のリポジトリではgit grepがripgrep -w.やカスタムのrgg関数より2倍速いよ。<br>でもどれも100ms未満だから、十分速いね。」" userName="oever" createdAt="2025/10/18 20:40:43" color="#ff33a1">}}




{{<matomeQuote body="「追加してほしいのは”extension”フラグかな。-gに似てるけど、引数を拡張子として扱うやつ（つまりrg -g ’*.{c,h}’じゃなくてrg -e c,h）。<br>globパターンを使う99%の時間は拡張子でマッチさせたいんだ。」" userName="zem" createdAt="2025/10/18 17:15:05" color="">}}




{{<matomeQuote body="「-t/--typeフラグは使ったことある？君の例は-tcって書けるよ。<br>Ripgrepにない一般的なやつなら、自分でタイプを定義することもできるんだ。」" userName="burntsushi" createdAt="2025/10/18 17:27:19" color="#785bff">}}




{{<matomeQuote body="「使ったことあるよ、すごく便利な機能だよね。<br>でも、初めてカスタムglobを使いたい時に自分でタイプを定義するのはちょっと面倒に感じるな。長い目で見れば報われるんだろうけどさ。」" userName="zem" createdAt="2025/10/18 17:33:32" color="">}}




{{<matomeQuote body="「素晴らしいツールだね、信じられないほど使いやすい。<br>Linuxで使い始めて、今は’dozeでも使ってるよ。<br>標準ワイルドカードで検索してから正規表現に切り替えるんじゃなくて、最初から正規表現を検索オプションとして使うようになったのは、たぶんこれが唯一の理由だな。」" userName="davoneus" createdAt="2025/10/18 15:36:19" color="#ff5c5c">}}




{{<matomeQuote body="「普通のgrepより優れてるし、便利なrg --filesもあるよ。」" userName="linhns" createdAt="2025/10/18 16:40:51" color="">}}




{{<matomeQuote body="「RipgrepがRustに興味を持った主な理由の一つだよ。<br>すごくうまく機能したから、Rustで書かれていることに興味を持ったんだ。何年か経ったけど、本当に嬉しいね。それ以来、毎日rgを使ってるよ！」" userName="jstrong" createdAt="2025/10/18 17:27:58" color="#ff5733">}}




{{<matomeQuote body="「QBasicはもう何年も使ってないけど、NibblesをハッキングしたからQBasicを学んだんだ。<br>その経験が、今AI教授になった理由の初期の大部分を占めていると言えるね。好きなソフトウェアが特徴の言語で遊ぶのは全然悪いことじゃないよ！」" userName="CJefferson" createdAt="2025/10/19 00:01:12" color="">}}




{{<matomeQuote body="Ripgrepは仕事で毎日使ってる。CLIでもVSCodeでも大活躍！burntshushiさんに感謝だよ。" userName="locusofself" createdAt="2025/10/18 16:42:58" color="#ff33a1">}}




{{<matomeQuote body="最近`—replace`や`—type`オプションの便利さに気づいたよ。もっと早く知ってれば良かったな。これからはリリースノートもちゃんと読まなきゃね。JJとの連携も期待大だ！" userName="jiehong" createdAt="2025/10/18 21:59:50" color="#785bff">}}




{{<matomeQuote body="新しいマシンを組む時、俺は真っ先にRustツールチェインと`cargo install ripgrep`を入れるんだ。数年前のBoston Rust meetupでの有限状態トランスデューサーの講演もすごく良かったよ。ソフトウェア開発と俺の学びへの貢献、本当にありがとう！" userName="jcgrillo" createdAt="2025/10/19 00:01:48" color="#785bff">}}




{{<matomeQuote body="rgはLLM、特にClaudeやCodexが教えてくれた初のCLIツールなんだ。昔はgrep派だったけど、最近は指をrgに再教育中だよ。rgは本当に最高だね！" userName="vessenes" createdAt="2025/10/18 15:41:49" color="#ff5c5c">}}




{{<matomeQuote body="2017年に`ack`へ、そして`ag`は飛ばして`rg`へ乗り換えたよ。最近は`find`じゃなくて`fd`も使い始めたんだ。1997年からターミナルを触ってるけど、新しい学びや改善されたコマンドを使えるのはマジで楽しいね。" userName="sshine" createdAt="2025/10/18 15:50:35" color="#785bff">}}




{{<matomeQuote body="俺はまだ`ag`を使ってるけど、`rg`に乗り換えるほどのメリットがわかんないんだよね。`rg`と`ag`って、そんなに違うものなの？`bash`から`zsh`に`oh-my-zsh`で乗り換えた時みたいな感じかな。`Nushell`も最近気になってるよ。" userName="ahartmetz" createdAt="2025/10/18 17:18:49" color="">}}




{{<matomeQuote body="Ripgrepは`ag`より断然速くて（デカいファイルで違いがわかるよ）、バグも少ないし、ちゃんとメンテナンスもされてるんだ。" userName="burntsushi" createdAt="2025/10/18 17:28:21" color="#ff5c5c">}}




{{<matomeQuote body="俺にとっては`ag`も十分速いし、バグにも遭遇したことないんだ。返信ありがとう！君が誰だかわかったよ ;)" userName="ahartmetz" createdAt="2025/10/18 19:26:38" color="">}}




{{<matomeQuote body="`ag`のイシュートラッカーを見てみてよ。いくつか重大なバグがあるんだ。気づかないうちに影響を受けてるかもね。パフォーマンスは10倍くらい速くなるのをマジで体感できるよ。LinuxカーネルやChromiumリポジトリでのベンチマークも見てごらん。`ag`はデカいファイルをスキップしちゃうこともあるんだよ。" userName="burntsushi" createdAt="2025/10/18 19:46:38" color="#785bff">}}




{{<matomeQuote body="俺は`rg`も`ag`も長年使ってるけど、問題も速度差も感じないな。むしろ、`rg`で`-i`フラグを忘れて検索結果を見逃すことがあるのが残念。`rg`はパフォーマンス重視で、UXはちょっとイマイチって印象だよ。" userName="EliMdoza" createdAt="2025/10/19 00:24:55" color="#785bff">}}




{{<matomeQuote body="スマートケースはデフォルトで無効の方がユーザー体験は良いと思うけど、--smart-caseフラグを使えば有効にできるよ。これはエイリアスか設定ファイルに追加できるね。agのスマートケース機能よりバグも少ないし、安定しているよ。<br>パフォーマンスの違いについては他のコメントを見てね。agはいくつか致命的なバグがあるし、もうメンテナンスされてないんだ。<br>検索するデータ量が少ないなら、動作が遅いgrepでもパフォーマンス的には問題ないことが多いよ。" userName="burntsushi" createdAt="2025/10/19 01:20:03" color="#ff5c5c">}}




{{<matomeQuote body="機能リクエストには最適な場所じゃないのは分かってるんだけど、ripgrepが.githubディレクトリを隠しファイルだからって無視しちゃうのが最近すごく不便なんだ。デフォルトで含めてほしいディレクトリは他にもあるかもしれないね。<br>でも、もし急に検索結果に出てくるようになって、バージョンアップした人が後方互換性を期待してたら、そのトレードオフは割に合わないかもしれないけど。" userName="sshine" createdAt="2025/10/20 09:05:45" color="">}}




{{<matomeQuote body="＞機能リクエストには最適な場所じゃないのは分かってるんだけど、ripgrepが.githubディレクトリを隠しファイルだからって無視しちゃうのが最近すごく不便なんだ。<br>このスレッドの他の場所でも提案されてるけど、リポジトリのルートに`echo ’!/.github/’ ＞ .ignore`ってやってみた？ripgrepのリポジトリ自身もそうしてるよ: https://github.com/BurntSushi/ripgrep/blob/d47663b1b4548e4fa...<br>デフォルトで特定のディレクトリをホワイトリスト化してほしいっていうリクエストはあったけど、それは絶対にやらないよ。セマンティクスが複雑になるし、もっと分かりにくくなるからね。今は「ripgrepは.gitignoreを尊重し、隠しファイルとバイナリファイルを無視する」って言えるけど、もし特定のものをホワイトリスト化し始めたら、その説明は間違っちゃう。ripgrepのデフォルトのヒューリスティックを説明する時に、それらを例外として追加しなきゃいけなくなるもん。<br>それに、ディレクトリをホワイトリスト化するのはすごく簡単でシンプルだよ。みんな.ignoreファイルは無視するためだけだと思ってるみたいだけど、違うんだ。CLIコマンドをいじらなくても、無視しないようにできるんだよ。<br>＞でも、もし急に検索結果に出てくるようになって、バージョンアップした人が後方互換性を期待してたら、そのトレードオフは割に合わないかもしれないけど。<br>ripgrepではsemverを使ってるよ。つまり、破壊的な変更を加える時はメジャーバージョンを上げるんだ。それでも、よほど強い理由がない限り、大きな破壊的変更は基本的にないね。semverは破壊的変更を許容するけど、ライブラリの文脈で一番うまく機能するんだ。直接エンドユーザーがいるripgrepにとっては、semverはあまり役立たない。ユーザーはただ、スクリプトが壊れたり、以前使えていたコマンドが動かなくなったり、違う動作をするようになったりするだけだからね。" userName="burntsushi" createdAt="2025/10/20 13:09:22" color="#ff5c5c">}}




{{<matomeQuote body="fdについて教えてくれよ。俺はたまにfindを使うけど、ほとんどは-nameか-inameフラグを使うだけなんだ。" userName="dotancohen" createdAt="2025/10/18 16:31:40" color="">}}




{{<matomeQuote body="findと比べたらマジで一瞬だよ。それだけで十分だったわ。" userName="rkomorn" createdAt="2025/10/18 16:37:05" color="">}}




{{<matomeQuote body="-nameって1000回もタイプしなくて済むのがいいよね。" userName="lawn" createdAt="2025/10/18 16:43:35" color="">}}




{{<matomeQuote body="サンキュー。他の人向けだけど、Ubuntuでfdをインストールするなら`fd-find`パッケージだよ。実行ファイル名は`fdfind`（ダッシュなし）だからね。" userName="dotancohen" createdAt="2025/10/18 22:59:54" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="検索はrgで始めるんだけど、パイプの後だと筋肉の記憶でgrep使っちゃうんだよね。" userName="dotancohen" createdAt="2025/10/18 16:30:29" color="">}}




{{<matomeQuote body="え、俺もそれやってたことに気づかなかったわ。grepは「パイプでフィルター」っていう位置付けが頭の中にあって、rgは「全ファイルを再帰的に検索」っていう位置付けなのかな。" userName="WJW" createdAt="2025/10/18 18:10:53" color="">}}




{{<matomeQuote body="俺もripgrepをリリースした当初はそうだったよ。今ではパイプの中でもrgを使うようにほとんど筋肉の記憶を再訓練したね。（特にrgがパイプの中でもgrepと同じように機能するように慎重に作ったからさ。）<br>あと、-o, --only-matchingと-r, --replaceを組み合わせることで、sedやawkの多くの用途を置き換えられることにも気づいたよ。" userName="burntsushi" createdAt="2025/10/18 18:22:37" color="#ff5733">}}




{{<matomeQuote body="へぇ、俺も最近同じことに気づいたんだよね。意識して`grep`じゃなくて`rg`を使うようにして、無意識に手が動くくらい覚え込ませようとしてるよ。" userName="kstrauser" createdAt="2025/10/18 18:03:01" color="">}}




{{<matomeQuote body="余談だけどさ、Ken Thompsonのオーラルヒストリーを見てたら、彼が`grep`って名付けたらしいんだ。URL: `https://youtu.be/OmVHkL0IWk4`" userName="thijson" createdAt="2025/10/19 02:13:04" color="#785bff">}}




{{<matomeQuote body="これこそ質の高いソフトウェアだよね。" userName="IlikeMadison" createdAt="2025/10/18 14:03:47" color="">}}




{{<matomeQuote body="IntelliJのインデックス検索より`rg`がずっと速いって、マジで驚くよね。" userName="winrid" createdAt="2025/10/18 20:05:01" color="">}}




{{<matomeQuote body="俺は500枚以上のヴィンテージMacintoshマガジンのCD-ROM（100万ファイル、解凍で3000万ファイル）からRipgrepでファイルリストを検索してるよ。データベースプログラマーじゃないけど、Ripgrepと同じくらい速くはできないし、正規表現でプレーンテキストを検索するのにこれで十分なんだ。URL: `https://news.ycombinator.com/item?id=43607153`" userName="msephton" createdAt="2025/10/19 17:21:04" color="#38d3d3">}}




{{<matomeQuote body="＞`.jj`を含むディレクトリがgitリポジトリとして扱われるようになったって？これは本当に嬉しいな！" userName="pseufaux" createdAt="2025/10/18 21:39:43" color="">}}




{{<matomeQuote body="これがRustで書かれてなかったら、みんな気にしたかな？俺はまだgrep使ってるんだけど、それってダメなやつ？" userName="RustSupremacist" createdAt="2025/10/23 01:26:49" color="">}}




{{<matomeQuote body="ripgrepを`git grep`に近づけるにはどうしたらいい？普通の`rg`だと`.github`みたいな隠しフォルダは無視するし、`rg --hidden`だと`.github`は検索するけど`.git`の中まで検索しちゃうんだ。俺は今、`rg --hidden --glob ’!*/.git/*’`ってエイリアスを使ってるけど、もっと良い方法はないかな？`git`リポジトリの外でも動く方法がいい、`git ls-files`をパイプするのはパスで。" userName="rustc" createdAt="2025/10/18 18:43:33" color="#ff33a1">}}




{{<matomeQuote body="これが役立つかも: `https://news.ycombinator.com/item?id=45629497`。特定の隠しファイルやディレクトリをホワイトリストに追加できるってことね。ripgrepは`git`リポジトリの状態を読まないから、`git`で追跡されてるファイルだけを検索するって正確に指示する方法はないんだ。`.gitignore`を見て、隠しファイルとかバイナリファイルは自動で無視するだけだよ。だから`git`っぽく使うには、検索したい隠しファイルをホワイトリストに追加するといいよ。`git`と全く同じにしたいなら、`git ls-files -z | xargs -0 rg ...`ってやる必要があるね。" userName="burntsushi" createdAt="2025/10/18 18:45:40" color="#ff5733">}}




{{<matomeQuote body="ripgrepができる前からThe Silver Searcher（`ag`）を使ってるんだ。ほんの少し速いだけの検索で、コマンドラインオプションが違うツールに切り替える必要はあんまり感じないんだよね。何かすごい機能を見落としてるのかな？" userName="kccqzy" createdAt="2025/10/18 19:48:37" color="">}}




{{<matomeQuote body="バグが減ってパフォーマンスが向上してるって？データ量にもよるけど、大量のデータを検索するなら10倍の差が出ることもあるよ：https://news.ycombinator.com/item?id=45629904<br>Ripgrepがagより優れてる点はたくさんあるぞ。<br>・Unicodeサポートが圧倒的に良い（agはほとんどない）<br>・`--pre`でプラグイン可能なプリプロセッサ<br>・Jujutsuサポート<br>・UTF-16データを自動で検索できる<br>・PCRE2をサポート（agは数年前にEOLになったPCRE1だけ）<br>・`-r/--replace`フラグで出力操作ができる。`sed`や`awk`の代わりに結構使ってるよ。<br>・Ripgrepはメンテされてる<br>・マルチライン検索がはるかにうまく動く<br>・2GB超のファイルも検索可能（agは無理っぽい）<br>・agには変なバグが多いんだ。<br>例としては、`ag -c ’\w{8,} Sherlock Holmes’ sixteenth.txt`が9って出すのに、`cat sixteenth.txt | ag -c ’\w{8,} Sherlock Holmes’`だと1が9回出たりとかね。<br>他にも、`printf ’foo<br>bar<br>’ | ag ’foo\s+bar’`だと何も出ないのに、`rg -U ’foo\s+bar’`だとちゃんと出る。<br>さらに、`ag ’\w+ Sherlock Holmes’ full.txt`だと2147483647バイトより大きいファイルはスキップされちゃうエラーが出るんだ。<br>まだあると思うけど、今思いつくのはこれくらいかな。" userName="burntsushi" createdAt="2025/10/18 19:58:46" color="#45d325">}}




{{<matomeQuote body="ありがとう！今rgを試してるところだよ。ただ一つ問題なのが、rgの`-g`フラグがagの`-G`フラグほど表現力が低いってこと。agのはファイル名に正規表現を指定できるんだけど、rgのはglobしか使えないんだ。だから、よくあるケースではちょっとタイプ量が増えるし、柔軟性も少し低いね。" userName="kccqzy" createdAt="2025/10/20 17:36:34" color="">}}




{{<matomeQuote body="でも、UnicodeサポートってやっぱりNuclearなんだよな。Unicodeでは同じGraphemeでも色々な書き方ができちゃうし、Unicode非対応の言語固有の例えば`ue`が`ü`を表す場合なんか、`ü`自体もマークありと直接の二通りの書き方があるでしょ？そうなると、Ripgrepもugrepもそういう部分文字列は探し出せないんだ。アラビア語の微妙な違いもそう。マークの組み合わせだけじゃなくて、同じGraphemeを意味するもっと美しい文字もあるからね。" userName="rurban" createdAt="2025/10/19 09:16:36" color="#ff5c5c">}}




{{<matomeQuote body="「still nuclear」ってどういう意味かわからないな。それに「unclear」じゃないの？<br>確かに、RipgrepはUnicodeのNormalizationはしてないよ。そんなツールは少ないしね。<br>でも、僕が言ったことが間違ってるわけじゃない。RipgrepにはagにはないたくさんのUnicode機能があるんだ。" userName="burntsushi" createdAt="2025/10/19 11:24:17" color="">}}




{{<matomeQuote body="NuclearはNuclearであって、Unclearじゃないよ。<br>Unicodeが文字列検索について何を言ってるか、通常のバイト検索grepツールとは対照的に、このレポートを読んでみて：https://www.unicode.org/reports/tr10/#Searching" userName="rurban" createdAt="2025/10/20 19:51:12" color="#38d3d3">}}




{{<matomeQuote body="＞バグ修正が主で、ちょっとしたパフォーマンス向上とマイナーな新機能があるメジャーバージョンリリース<br>「バグ修正とパフォーマンス改善」って、ソフトウェアが肥大化する言い訳としてジョークみたいになってるのが悲しいよな。これはもっとひどい。「バグが減って速くなった」は少なくともほとんどの人が望むことだけど、「バグが減って速くなって、おまけに頼んでないランダムな変更も入った」なんて、全然嬉しくないね。" userName="username223" createdAt="2025/10/19 01:00:54" color="">}}




{{<matomeQuote body="ファイル内容を検索するとき、検索文字列なしでrgを起動する方法ってある？" userName="thdhhghgbhy" createdAt="2025/10/18 19:37:02" color="">}}




{{<matomeQuote body="どういうこと？空のパターンを渡すこともできるけど、それだと全部マッチしちゃうよ。<br>もっと高いレベルでユースケースについて話してくれない？" userName="burntsushi" createdAt="2025/10/18 19:59:51" color="">}}




{{<matomeQuote body="返信ありがとう。fzfとrgを使ってファイル内容を検索したいんだけど、プレビューアを開いた状態で、最初にfzfを開いたときはrgに引数を渡したくないんだ。入力を始めてから検索したいんだよね。Telescope live_grepみたいな感じで。" userName="thdhhghgbhy" createdAt="2025/10/18 20:13:10" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
