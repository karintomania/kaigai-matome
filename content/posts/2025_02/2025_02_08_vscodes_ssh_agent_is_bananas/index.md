+++
date = '2025-02-08T00:00:00'
months = '2025/02'
draft = false
title = 'VSCodeのSSHエージェントはおかしい！'
tags = ["VSCode", "SSH", "エージェント", "開発ツール", "プログラミング"]
featureimage = 'thumbnails/red2.jpg'
+++

> VSCodeのSSHエージェントはおかしい！

引用元：[https://news.ycombinator.com/item?id=42979467](https://news.ycombinator.com/item?id=42979467)

{{<matomeQuote body="この1ヶ月、4年くらい使ってるソフトについて記事を書こうとしてたんだ。Kurtは心配してたけど、簡単なことでも書くよって言って、今までと逆のアプローチでやるつもり。30分で書ける自信ある。これはただの試行錯誤の結果を書いただけだよ。" userName="tptacek" createdAt="2025-02-08T02:47:45" color="">}}

{{<matomeQuote body="記事のおかげで、これがおかしいとわかったけど、最初はそうは思ってなかった。エージェントの機能を列挙してたけど、むしろ逆だと思ってた。READMEにあった一文が分かりやすかったよ：＞”A compromised remote could use the VS Code Remote connection to execute code on your local machine.”これはCVE番号つけるべきじゃないかな。" userName="dunham" createdAt="2025-02-08T17:01:17" color="#ff5733">}}

{{<matomeQuote body="HNのコメントの最初の段落は、句点なしだったらもっと良かったかな。お気に入りのブログがまだ活動してて嬉しいよ。ちょっと心配してたんだ。今ある最初の二つのブログ、McCord-ValimのFLAME-Livebook-GPUと、”murid”って言葉が入ってるこの投稿は、開発者の心理的なアークを素晴らしく捉えてるね。ありがとう！" userName="scop" createdAt="2025-02-08T03:14:22" color="#ff5733">}}

{{<matomeQuote body="もっと低努力な投稿、お願いします！" userName="alexgartrell" createdAt="2025-02-08T03:09:09" color="">}}

{{<matomeQuote body="この投稿が156コメントも生み出したのがどれだけ嬉しいか、反論することもないし、皆正しいんじゃないかな。" userName="tptacek" createdAt="2025-02-08T06:35:18" color="">}}

{{<matomeQuote body="Emacsはviよりも良くて、スペースはタブよりも良いんだよ！！！全てのコメントに賛成のままでいるから、これを言いたかっただけ。" userName="DonHopkins" createdAt="2025-02-08T10:55:54" color="">}}

{{<matomeQuote body="この二つに賛成だよ。" userName="mediumsmart" createdAt="2025-02-08T12:50:26" color="">}}

{{<matomeQuote body="インデントはタブで、整列はスペースで。両方使えばいいじゃん！両方必要だよ！両方あった方がいいね。" userName="philsnow" createdAt="2025-02-09T01:12:49" color="#785bff">}}

{{<matomeQuote body="ちなみに、Emacsはタブストップの倍数でないインデントは混合をデフォルトにしてるよ。" userName="aidenn0" createdAt="2025-02-09T03:13:21" color="">}}

{{<matomeQuote body="正直、素晴らしい投稿だし、低労力な投稿のアイデアが好きだから、これからも続けてほしいな。" userName="DannyBee" createdAt="2025-02-08T17:22:41" color="#ff5733">}}

{{<matomeQuote body="sshが問題っぽい。sshでdockerのような体験をできる方法があるはず。特定のAPIを使って特定のフォルダ以外へのアクセスを防げるようにしたい。基本的にはリモートにdockerコンテナをダウンロードして、リモートディレクトリをマウントし、sshで接続するのが解決策かも。でも、全サブディレクトリを同期するだけじゃなくて、リモートでデバッグしたいから、プラグインもリモートで動かす必要がある。" userName="rat87" createdAt="2025-02-08T19:16:49" color="">}}

{{<matomeQuote body="普通のユーザーとしてsshするなら、そのユーザーのリモートホームディレクトリのファイルしか変更できないはず。普通のアクセスには管理者アカウントを使わない方がいいよ。" userName="SoftTalker" createdAt="2025-02-09T00:59:49" color="">}}

{{<matomeQuote body="inetdやpam.dを使えば、こういうことができる方法もあるよ。" userName="zeckalpha" createdAt="2025-02-11T01:13:29" color="">}}

{{<matomeQuote body="「ブログに戻ることにしたんで、これを学んだらあなたも学んでね。」これが、まさに正しい方法だね。" userName="phyzome" createdAt="2025-02-08T14:58:38" color="">}}

{{<matomeQuote body="良い文章で面白い！真ん中に隠れたMonty Pythonの引用がある？" userName="bambax" createdAt="2025-02-08T12:52:34" color="">}}

{{<matomeQuote body="めっちゃ面白い！パートナーと毎週同じ会話してるよ。" userName="tomrod" createdAt="2025-02-08T14:44:03" color="#45d325">}}

{{<matomeQuote body="あなたは確実にノードリングをカバーしたね。" userName="DominoTree" createdAt="2025-02-08T18:43:49" color="">}}

{{<matomeQuote body="VSCodeの仕組みを知れば知るほど、まるでダクトテープで繋がれたような、JS開発者の呪われたアイデアのオンパレードに思えてくるよ。特にSSH拡張で、ワークスペースURIはホスト名と16進数でエンコードされたJSON形式の二つがあって、具体的なユーザー名が必要な時やホスト名に大文字が含まれてるときに後者が使われるみたい。保存される時はなぜか小文字にされちゃうし。SSH接続ではサーバーにインストールする拡張を設定できるけど、あんまりやるとWindowsホストに接続できなくなるから注意。CMDを介してコマンドライン引数で渡してるみたいだけど、8191バイトの制限があるらしい。" userName="opliko" createdAt="2025-02-08T13:50:36" color="#45d325">}}

{{<matomeQuote body="VSCodeはEclipseより使いやすいと思うな。SSHをIDEで使う必要がなかったから詳しくないけど、サーバーに行く時は通常PuTTYでSSHしてViを使ってた。" userName="giantg2" createdAt="2025-02-08T15:44:51" color="">}}

{{<matomeQuote body="リモート開発の話だよ。編集してるコードがローカルのディスクではなく、リモート環境に存在してるってわけ。" userName="nickstinemates" createdAt="2025-02-08T16:35:39" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="俺はsshfsが好きなんだ。それは「一つのことを、うまくやる」というアイデアを守ってると思う。多くのIDEはそれを忘れちゃってるみたいだけど。" userName="smitelli" createdAt="2025-02-08T17:22:51" color="">}}

{{<matomeQuote body="でも、VSCodeはリモートのファイルを編集するだけじゃなくて、全てをリモートで動かしてるんだ。拡張やターミナルコマンドもそう。ウェブプロジェクトならポートを転送して、リモートホストのデバッガーを使ってもブラウザでローカルにアクセスできるのも良いよね。" userName="larsnystrom" createdAt="2025-02-08T17:33:48" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、完全に仮想化されてて、ローカルマシン上で同じ環境が使えるからね。これは特に機械学習のシン・クライアントには必須だね。" userName="drchickensalad" createdAt="2025-02-08T17:52:53" color="">}}

{{<matomeQuote body="sshfsはMacOSで開発してLinux向けの時には使えないよね。コードを実行したりデバッガーでステップしたりができないからさ。普段はIDEを使わずほぼsshfsで作業してるけど、ファイル編集とコード実行の違いは理解できるよ。" userName="foobiekr" createdAt="2025-02-08T17:35:32" color="">}}

{{<matomeQuote body="sshfsはinotifyや他のことを通さないから、IDEがファイルが変更されたことを知らないんだ。gitやコンパイラーの出力とかもね。VSCodeだとファイル変更をすぐに見れるから便利だよ。" userName="himinlomax" createdAt="2025-02-08T20:19:17" color="#45d325">}}

{{<matomeQuote body="それに対処するためにrcloneを使ってるよ。確かに「一つのことを徹底的にやる」ってわけじゃないけど、リモートのファイルを扱う厄介な問題をほぼ解決してくれるからね。性能もsshfsよりも良い場合が多いし。" userName="ElectricalUnion" createdAt="2025-02-08T19:30:38" color="">}}

{{<matomeQuote body="まあ、俺もCoderやSSH、Viみたいなツールを使ってリモート作業はしてきたよ。" userName="giantg2" createdAt="2025-02-08T18:13:32" color="">}}

{{<matomeQuote body="カスタム言語サポートとかツールをJavaScript/TypeScriptで簡単に拡張できるところが好き。補完や診断を提供したり、言語間の定義をカスタマイズできる。ただ自分の使ってるやつの方が楽しい。" userName="catlifeonmars" createdAt="2025-02-08T23:42:22" color="#ff5733">}}

{{<matomeQuote body="＞”VSCodeの仕組みを知るほど...バンドのテープだ”<br>この最悪な数行。Microsoftに呼ばれて、一人でこの問題を解決したい。" userName="dataviz1000" createdAt="2025-02-08T16:35:08" color="">}}

{{<matomeQuote body="EclipseってJavaで書かれてないの？" userName="johnisgood" createdAt="2025-02-08T16:07:41" color="">}}

{{<matomeQuote body="そうだよ。ただ、今のEclipseは昔の見た目だけだ（2002年から使ってる）。JREをバンドルしてて、インストールされてないとそれを使う。3ヶ月ごとに安定版をリリースして、起動は5秒、メモリはVSCodeより少ない600MB。ウェブ開発やC/C++、Python、リモート実行などもサポート。Git統合も素晴らしいし、C/C++ではデバッガーとも連携する。ブロートしないからサクサク動く。" userName="bayindirh" createdAt="2025-02-08T17:36:53" color="#ff5c5c">}}

{{<matomeQuote body="Eclipseは長いこと使ってないけど（JetBrains派）、お前のコメントで久しぶりに試したくなった。ダウンロード行ったら、いろいろ聞かれて、Pythonでのウェブ開発はできないの？エラーダイアログが表示されて、Gitの使い方も分からない。やっぱり使えないと思った。" userName="mdaniel" createdAt="2025-02-08T18:20:18" color="">}}

{{<matomeQuote body="Eclipseはプラットフォームで、IDEを別々にインストールするのではない。ダウンロードしたやつがスタートポイントだ。機能は全て一つのインストールで揃ってる。PythonはPyDevで追加できる。" userName="bayindirh" createdAt="2025-02-08T19:35:19" color="">}}

{{<matomeQuote body="回答ありがとう。テクニカルサポートは求めていないけど、自分の経験を共有したくて。Eclipseの機能の使い方が、すごく使いにくいと感じる。こういう体験は自分だけじゃないと思う。" userName="mdaniel" createdAt="2025-02-08T19:53:41" color="">}}

{{<matomeQuote body="ありがとう、その意見のおかげで30分の時間を節約できた。まさに自分が覚えている通りの使いにくさだ。" userName="guiambros" createdAt="2025-02-08T19:36:04" color="">}}

{{<matomeQuote body="確かに進化してるけど、前のイメージを壊すのは難しいよね。流れが期待とは違うけど、使えることが多いとは思うよ。ViやEMacsのために時間を使うなら、Eclipseのために使うのも十分理由になると思うし、あまり気にしてないよ。" userName="bayindirh" createdAt="2025-02-08T19:42:34" color="">}}

{{<matomeQuote body="いい感じだね。4年前にJavaでEclipseをちょっと使ってたけど、IntelliJに切り替えたら機能が豊富で使いやすかったよ。最近どうなってるのかは分からないけど。" userName="johnisgood" createdAt="2025-02-08T18:17:27" color="">}}

{{<matomeQuote body="＞“独自のJREがバンドルされていて、JREがない場合はそれを使う。”<br>＞“5秒で起動して、RAMは約600MB（VSCodeより少ない！）、すごく軽快に動く。”<br>うん、それをEclipseのいいとこだと思ってるみたいだけど、vimと比べてて笑えるね。'/s'を忘れたんじゃない？" userName="Karellen" createdAt="2025-02-08T20:06:02" color="">}}

{{<matomeQuote body="いや、あくまでその時のVSCodeとの比較なんだ。毎日Vimも使ってるけど、あれはエディタだし、IDEじゃないよ。Vimとの学習曲線を比べただけで、システム要件には関係ないし。" userName="bayindirh" createdAt="2025-02-08T20:16:09" color="">}}

{{<matomeQuote body="自分は両方使ってるし、IntelliJも使ってるよ。人の使ってるツールをバカにする必要ある？" userName="notyourwork" createdAt="2025-02-08T15:12:32" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="特に身近にVimを使ったことがないVS Codeユーザーはいないと思う。自分の周りはVim使いが多いから、偏りがあるかもしれないけどね。" userName="aidenn0" createdAt="2025-02-09T05:10:34" color="">}}

{{<matomeQuote body="なるほど！それならEmacsも使えるじゃん。" userName="Nab443" createdAt="2025-02-08T15:44:43" color="">}}

{{<matomeQuote body="自分はVScodeのターミナルでVim使ってるよ。携帯からSSH接続して使うこともあるし。" userName="dunham" createdAt="2025-02-08T16:10:58" color="">}}

{{<matomeQuote body="VS Code無しじゃvimのバインディング使えないよね。" userName="wiseowise" createdAt="2025-02-08T21:45:14" color="">}}

{{<matomeQuote body="両方使うけど、VS Codeはサーバー上でviを使えるから便利だよね。" userName="tomrod" createdAt="2025-02-08T15:24:59" color="#ff5733">}}

{{<matomeQuote body="素朴な疑問だけど、セキュリティの問題がよくわからない。SSHでアクセスできるなら、他のこともできるって考えなんだけど。VS Codeのプロトコルが便利さを追求しているだけじゃないの？" userName="shipp02" createdAt="2025-02-08T02:43:19" color="">}}

{{<matomeQuote body="VS CodeはSSHセッションをエミュレートしてるわけじゃなく、リモートエージェントをインストールしてるんだ。ユーザーとそのエージェント間でのAPI公開が問題になるのかな？" userName="schmichael" createdAt="2025-02-08T02:58:10" color="">}}

{{<matomeQuote body="リモートシステムに対する攻撃面が増えるのは理解できるけど、エージェントがSSH経由で同じ権限を持ってるなら、どれだけリモートのリスクが増えるの？" userName="shitter" createdAt="2025-02-08T03:17:25" color="">}}

{{<matomeQuote body="エージェントのコードがコンプロメットされると、VS Code関連のファイルが隠されることがある。最近の開発環境はnpmパッケージの管理がズサンで、危険度が増してる。" userName="smackeyacky" createdAt="2025-02-08T04:12:10" color="#45d325">}}

{{<matomeQuote body="エージェントに理論的なバグがあるとして、具体的にどうやって悪用されるのか例を挙げてほしい。" userName="lostmsu" createdAt="2025-02-08T06:48:11" color="">}}

{{<matomeQuote body="リモートホストで動いてるコードが侵害される可能性はあるよね。VS Codeが人気だから攻撃ベクターとして見られがちだけど、まずはプロダクションリソースには使うべきじゃないよ。" userName="w0m" createdAt="2025-02-08T14:41:01" color="">}}

{{<matomeQuote body="最新のJetbrainsツールも同じようなことしてるみたいだね。サーバーをインストールして、それに接続するって。Microsoftじゃないから誰も話題にしないんじゃない？" userName="0xbs0d" createdAt="2025-02-08T13:43:22" color="">}}

{{<matomeQuote body="それは、JetbrainsのRemote Development Gatewayのことじゃない？クライアントでの手動インストールとサーバーでの手動インストールが必要で、普通のIntelliJ IDEの一部ではないと思うけど。" userName="Y-bar" createdAt="2025-02-08T16:36:32" color="#ff33a1">}}

{{<matomeQuote body="そうでもないよ。ゲートウェイは君の言ってる通りだけど、JetbrainsのIDEにも同じ機能があってサーバーに手動でインストールする必要がないんだ。VSCodeみたいに自分専用のものをインストールするし。" userName="0xbs0d" createdAt="2025-02-08T18:43:20" color="">}}

{{<matomeQuote body="たまに、もっと生産的になれなかったことを悔やむけど、他の生産的な人たちのやってること見ると、俺は結構上手くやってるかもって思う。" userName="TZubiri" createdAt="2025-02-08T03:28:15" color="">}}

{{<matomeQuote body="限界まで行くと、パソコンに触れない方がいいってことになるのかな？" userName="eru" createdAt="2025-02-08T05:11:17" color="">}}

{{<matomeQuote body="VSCodeが提供する機能をバッシュでプログラム的に操作する方がいいのかな？機能や使いやすさに妥協はしたくないしね。カスタムエージェントを書いて特権APIにアクセスさせるのは悪手だとは思うけど、バッシュ自体もセキュリティ的には不安だし。" userName="shipp02" createdAt="2025-02-08T03:15:59" color="">}}

{{<matomeQuote body="関係ある部分はここだね：＞エージェントはポート転送されたSSHを通じて動作する。VSCodeのフロントエンドに向けてWebSockets接続を確立する。この接続の下地となるプロトコルは：" userName="ajsharp" createdAt="2025-02-08T03:22:35" color="#ff33a1">}}

{{<matomeQuote body="つまり、サーバーがクライアントに対して何かを行えるってこと？なんだかそれは理屈が通らないな。" userName="KTibow" createdAt="2025-02-08T03:42:38" color="">}}

{{<matomeQuote body="VSCodeリモートに関しては、VSCodeサーバーはクライアントと同じ信頼の境界にいる。リモートSSHの場合、リモートが侵害されると、VSCodeリモート接続を通じてクライアント上でコードを実行することができるんだ。詳細はこの前書いたことがあるよ：VS Code Remote DevとDev Containersはセキュリティ境界ではない。" userName="retsl" createdAt="2025-02-08T10:08:02" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="だから最近VSCodeがリモートフォルダの作者や所有者を信じるかどうかを尋ねるようになったのか。" userName="mbreese" createdAt="2025-02-08T13:49:46" color="">}}

{{<matomeQuote body="なるほど、コンテナを使ってnpmやyarnをサンドボックスしようと思ったけど、無駄っぽいね。npmは怖いし、Macでサンドボックスする方法があれば知りたいな。" userName="dunham" createdAt="2025-02-08T16:40:46" color="">}}

{{<matomeQuote body="macOSには正式なサンドボックス言語があるよ。iTerm2のビルドプロセスで初めて知ったけど、これがスタート地点になると思う。" userName="mdaniel" createdAt="2025-02-08T17:49:31" color="#ff33a1">}}

{{<matomeQuote body="MacOSのコンテナはLinuxのVM内で動いてるから、そのVMが必要なファイルやネットワーク以外にアクセスできないようにすればかなり安全だよ。DockerやPodmanの設定を見直して統合の制限をかけるのがベスト。VMやコンテナ内からどんなネットワークやファイルにアクセスできるか確認するのが大事だね。" userName="retsl" createdAt="2025-02-08T17:02:37" color="#ff33a1">}}

{{<matomeQuote body="リモートサーバーにSSHで接続した場合、あくまでそのサーバーからクライアントに対して任意のコードを実行することはできないはずだよ。…X11フォワーディングが無効になってるか、X11サーバーがクライアントのシステムで動いていない限りはね。" userName="inetknght" createdAt="2025-02-08T04:00:47" color="#38d3d3">}}

{{<matomeQuote body="確かX11フォワーディングはオプトインなんじゃないかな？つまり、`ssh -X`や`-Y`を使わない限り問題にはならないと思うよ。" userName="yjftsjthsd-h" createdAt="2025-02-08T04:06:18" color="">}}

{{<matomeQuote body="通常、-Xを使った場合でもクライアントが信頼されないから問題にならないはずだけど、一部のディストリビューションはデフォルト設定を変更しちゃってることもあるんだよね！残念ながら、Xはもう死んでるとか言われてるから、二十年近く修正に対する関心は薄いみたい。" userName="uecker" createdAt="2025-02-08T15:51:08" color="">}}

{{<matomeQuote body="これまでにデフォルトでForwardX11Trustedを有効にしてるディストリビューションは見たことないんだけど、具体例ある？あまり一般的な使用ケースじゃないから、そんなことするとは思えないけど。" userName="donio" createdAt="2025-02-08T21:40:05" color="">}}

{{<matomeQuote body="X11フォワーディングをオンにしてる場合、悪意のあるアプリは何ができるのかな？UIを表示するのは確実だし、スクリーンショットも取れると思う。それ以外に何かできるの？キーボードのイベントを送信するなら終わりだと思うけど。" userName="awwaiid" createdAt="2025-02-08T17:59:35" color="#ff5733">}}

{{<matomeQuote body="基本的には正しいと思うよ：これはセキュリティ問題ではないけど、特定の脆弱性やセキュリティ境界を越えるわけではないからね。でも、”curl | bash”がセキュリティ問題であるのと同じようにやっぱり問題だと思う。" userName="jcgl" createdAt="2025-02-08T11:18:53" color="#ff33a1">}}

{{<matomeQuote body="”curl | bash”をサーバー側で検出することは可能だよ。詳しくは、https://news.ycombinator.com/item?id=34145799を見てみて。" userName="1una" createdAt="2025-02-08T15:06:17" color="">}}

{{<matomeQuote body="自分が何をしているか理解して、信頼できるソースからであればセキュリティ問題にはならないよ。だけど、これはソフトウェアをインストールする一般的なやり方としては問題があって、信頼できないコードを実行するリスクがあるからね。クレバーなユーザーを育てる努力を妨げる可能性もあるし、一般のウェブサイトはディストリビューションの専用インフラよりも安全性が低いことが多い。" userName="uecker" createdAt="2025-02-08T16:00:38" color="">}}

{{<matomeQuote body="＞あなたは他のことをする許可はもう持ってるよ。もちろん。でも問題は、サードパーティのエージェントがあなたの許可を使って何でもできること。あなたはそのことに気づかないかもしれない。" userName="slashdave" createdAt="2025-02-08T05:59:22" color="">}}

{{<matomeQuote body="サードパーティのエージェントはもう自分のPCで信頼してるからね。VSCode自体がマルウェアなら、リモートマシンにSSHで接続して、背後でコマンドを実行することもできるんだ。" userName="IshKebab" createdAt="2025-02-08T07:59:49" color="#785bff">}}

{{<matomeQuote body="VSCodeはオープンソースだけど、リモートSSHエージェントはそうじゃない。" userName="bornfreddy" createdAt="2025-02-08T08:24:48" color="">}}

{{<matomeQuote body="VSCodeがバイナリでインストールされていると、オープンソースとは言えないよ。" userName="Nab443" createdAt="2025-02-08T15:49:26" color="">}}

{{<matomeQuote body="それって、ただそのマシンにログインしてコードを実行することとどう違うの？" userName="joe91" createdAt="2025-02-08T20:59:01" color="">}}

{{<matomeQuote body="VSCodeのリモート機能は、接続したクライアント上でコードを実行できるから、侵害されたリモートサーバーがあなたのローカルマシンを攻撃できることになる。" userName="roywiggins" createdAt="2025-02-08T21:08:08" color="#38d3d3">}}

{{<matomeQuote body="＞もしあなたがマシンにSSHで接続してソケットをポートフォワードできるなら、他のことをする許可はもう持ってる。技術的にはそうだけど、サーバーでカスタムソフトウェアスタックやリモートシェルをインストールしたりすると、いろんな状況で人やアラームが気づくことがあるよ。" userName="fulafel" createdAt="2025-02-08T05:19:13" color="">}}

{{<matomeQuote body="多くの人は全然気づかない状況もあるよ。前の職場では、自分のお気に入りのツールを構築するためのAnsibleマニフェストをかなり書いて、会社の開発ホストで快適にリモートワークをしてて、誰も気にしなかった。" userName="spudlyo" createdAt="2025-02-08T05:39:00" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
