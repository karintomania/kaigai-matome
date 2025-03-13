+++
date = '2025-02-09T00:00:00'
months = '2025/02'
draft = false
title = 'ターミナルでよくあるイライラの原因とは？'
tags = ["ターミナル", "プログラミング", "開発者"]
featureimage = 'thumbnails/blue2.jpg'
+++

> ターミナルでよくあるイライラの原因とは？

引用元：[https://news.ycombinator.com/item?id=42959824](https://news.ycombinator.com/item?id=42959824)

{{<matomeQuote body="コマンドライン引数がバラバラで、-hかhelpか–helpかって感じでイライラする。エラーの”Option `--help` not understood, did you mean `-help`? Use `-help` to display program options.”ってメッセージは本当にムカつく。`--help`は基本的なもんだから、絶対サポートしてほしい。コマンドの使い方を知ってれば、ヘルプなんか求めないよ。" userName="exmadscientist" createdAt="2025-02-10T00:00:43" color="#785bff">}}

{{<matomeQuote body="長い引数に対してシングルダッシュ使うのはおかしいと思う。Goのツールがこういうの多いけど、基本的にCLIアプリは短い引数はシングルダッシュ、長い引数はダブルダッシュが普通だと思う。" userName="ljm" createdAt="2025-02-10T14:19:21" color="">}}

{{<matomeQuote body="ダブルダッシュを長い引数に使うのはGNUのスタイルだけど、GCCのオプションでも統一性がないので、ちょっとおかしい。" userName="kevin_thibedeau" createdAt="2025-02-10T16:34:18" color="">}}

{{<matomeQuote body="それはそうだけど、一連のフラグを組み合わせるのはPOSIXに則ってる。" userName="camel-cdr" createdAt="2025-02-10T17:14:19" color="">}}

{{<matomeQuote body="簡単に覚えられるGNUスタイルは良いツールならだいたい従ってるけど、Javaのアプリは変なことになっちゃってる。" userName="codesnik" createdAt="2025-02-10T17:02:28" color="">}}

{{<matomeQuote body="JavaのツールはGNUの規約ができる前か、同時期に開発されたみたい。Golangもシングルダッシュ使うけど、ダブルダッシュも受け入れるし、PowerShellやUnixコマンドのfindもそう。初期のUnixではオプションにダッシュを使うって明確な規約はなかった。" userName="layer8" createdAt="2025-02-10T17:21:45" color="#ff5c5c">}}

{{<matomeQuote body="GNUはJavaより10年早く設立された。" userName="kevin_thibedeau" createdAt="2025-02-10T18:07:07" color="">}}

{{<matomeQuote body="GNUのダブルダッシュの長いオプションは、1992年にPOSIXがプラス記号の使用を禁止した後に作られた。Javaはその2年前に開発が始まっている。" userName="layer8" createdAt="2025-02-10T18:13:43" color="">}}

{{<matomeQuote body="findの使い方をいつも調べ直さなきゃいけない。" userName="oxidant" createdAt="2025-02-10T14:57:25" color="">}}

{{<matomeQuote body="fdを使った方がいいよ。" userName="idunnoman1222" createdAt="2025-02-10T16:02:24" color="">}}

{{<matomeQuote body="サーバー向けのLinuxにデフォルトで入ってないなら、いらないなー。企業が何万台も一気に導入するなんて無理だし。自分のLinux経験はrhelやubuntuにデフォルトで入ってるものに影響されてる。" userName="Daneel_" createdAt="2025-02-10T22:46:26" color="">}}

{{<matomeQuote body="最初にviを覚えた理由は、DoDのマシンや他のコンサル先で使うためだった。ネットを参考にできないところで便利なスクリプトやコマンドをメモしてた。" userName="jsperson" createdAt="2025-02-10T23:07:11" color="">}}

{{<matomeQuote body="デフォルトで入ってるかどうかは、大規模な組織には関係ないと思う。独自のパッケージリポジトリがあれば、'fd'をデプロイリストに追加するくらい簡単だと思うけど。" userName="dsr_" createdAt="2025-02-11T02:34:54" color="">}}

{{<matomeQuote body="それが簡単にいかないのが現実なんだよね。組織はサポートやセキュリティ評価を求めてくるし、今は頼んでもすぐに通らない。セキュリティコンサルタントとして見てきたけど、大半の環境では標準パッケージにはならないよ。" userName="Daneel_" createdAt="2025-02-11T02:42:07" color="#785bff">}}

{{<matomeQuote body="自分は長年セキュリティアセスメントを担当してサポートもしてきたから、こういう意見になった。" userName="dsr_" createdAt="2025-02-14T11:50:22" color="">}}

{{<matomeQuote body="興味がある人のために： https://github.com/sharkdp/fd" userName="danudey" createdAt="2025-02-10T20:53:06" color="">}}

{{<matomeQuote body="ありがとう！rgでタイプが半分になったばかりなのに、次は更に50％減らせそう！" userName="oxidant" createdAt="2025-02-11T03:38:46" color="">}}

{{<matomeQuote body="Goのツールでよく見かけるけど、選択肢が詳しく表示されないのはイライラするよね。また、古いGNU findutilsにも同じようなのがあって、'go help build'って言われるのも面倒。" userName="danudey" createdAt="2025-02-10T20:52:17" color="">}}

{{<matomeQuote body="多くのJavaツールがそうなるのが嫌だな。" userName="tdeck" createdAt="2025-02-10T16:17:41" color="">}}

{{<matomeQuote body="一つのダッシュの長い引数のツールがある時は、他の有効な選択肢を使うようにしてる。" userName="plagiarist" createdAt="2025-02-10T17:14:22" color="">}}

{{<matomeQuote body="自分はgnuスタイルのダブルダッシュが嫌いで、ダブルダッシュイコールも嫌いなんだ。コマンドラインに余計なノイズが増えるだけだと思う。シャワーを浴びながら考えてたら、シングルダッシュも見た目が悪くて読みづらいとは思ったけど、もっと良い方法があるんじゃないかと思ったんだ。それは標準のunixにある一番変わったコマンドからヒントを得た。そう、自分が新しいcliスクリプトを作ってる者だ。" userName="somat" createdAt="2025-02-10T20:01:24" color="#38d3d3">}}

{{<matomeQuote body="ddスタイルのarg=valueはJCLの影響を受けているかもしれないね。" userName="schoen" createdAt="2025-02-10T23:28:22" color="">}}

{{<matomeQuote body="MegaCliは古いからlibc5のコピーが同梱されてるの？それとも今はどうにかアップグレードできたのかな？" userName="danudey" createdAt="2025-02-10T20:56:24" color="">}}

{{<matomeQuote body="megacliはいつも変なプログラムだったよね。サーバーにこっそりインストールするのが大変だった。自分たちは今はハードウェアRAIDを使ってなくて嬉しい。色々謎がありすぎた。" userName="somat" createdAt="2025-02-10T23:41:47" color="">}}

{{<matomeQuote body="間違ったヘルプオプションに対して特別な処理をしておきながら、正しいオプションに案内しないのはすごく細かいと思う。" userName="swiftcoder" createdAt="2025-02-10T09:31:49" color="">}}

{{<matomeQuote body="おそらく不明な引数に対するメッセージを出しているだけだと思うよ。" userName="toast0" createdAt="2025-02-10T15:14:39" color="">}}

{{<matomeQuote body="おそらくファジー類似検索だと思う。" userName="ithkuil" createdAt="2025-02-10T09:49:13" color="">}}

{{<matomeQuote body="ファジー類似検索を書くなら、”--help”の時はショートサーキットするべきだと思う。そんな問題を抱えているソフトは大抵どちらもやってないね。" userName="TeMPOraL" createdAt="2025-02-10T14:09:14" color="">}}

{{<matomeQuote body="ファジー検索はユーザーがタイプミスを見つけやすくするためのものだと思う。--helpに関しては別の話。できるだけ多くのエイリアスを含めるのもいいかもしれないね。" userName="ithkuil" createdAt="2025-02-10T14:33:10" color="">}}

{{<matomeQuote body="違う人がそれぞれの目標を持ってCLIライブラリやアプリを作っているから、間違ったヘルプを求めた際のメッセージが出るのは普通だと思う。" userName="pgwhalen" createdAt="2025-02-10T15:56:18" color="">}}

{{<matomeQuote body="ランダムに選んだCPANの依存関係がそれをサポートしていないのは、ひどいユーザー体験を出荷するための弱い言い訳だよね。" userName="swiftcoder" createdAt="2025-02-10T16:40:54" color="">}}

{{<matomeQuote body="人々はあまり書かないと思う。おそらく使ってるCLIライブラリにデフォルトで組み込まれていて、それを有効にしてるだけだね。" userName="WD-42" createdAt="2025-02-10T18:34:06" color="">}}

{{<matomeQuote body="ごめん、’[em][en]h[Cyrillic]lp’って入力したけど、もう一回やり直して。" userName="AStonesThrow" createdAt="2025-02-10T14:44:28" color="">}}

{{<matomeQuote body="そうなの？実際助けてるよ。最初のヒント：引数の構文はこんな感じだから、使ってみて。" userName="idle_zealot" createdAt="2025-02-10T11:45:01" color="">}}

{{<matomeQuote body="“助けてる”って言うけど、めちゃくちゃ堅苦しくて役に立たない方法だよね。開発者は一般的なオプション用にサポートを追加したけど、ユーザーに“使い方が間違ってる”って言うためだけに。" userName="swiftcoder" createdAt="2025-02-10T13:44:36" color="">}}

{{<matomeQuote body="子供のころ’Beyond Zork’をやっていて、ある夜とても疲れていて、プテラノドンに出会ったんだけど、タイポばかりしちゃったんだ。" userName="danudey" createdAt="2025-02-10T20:59:41" color="#ff5c5c">}}

{{<matomeQuote body="ハハ。“開発者はすべてを考えた”ってわけじゃないよね。" userName="montag" createdAt="2025-02-10T21:20:56" color="">}}

{{<matomeQuote body="それには笑ったよ、ありがとう。Infocomのゲームは素晴らしかった。" userName="kstrauser" createdAt="2025-02-10T21:11:16" color="#45d325">}}

{{<matomeQuote body="’--help’はGNUの慣習で、だからあなたが望むほど普遍的じゃない。今はほとんどのLinuxユーザーがGNUツールを使っているから、同じ慣習でツールを開発しているけど、非GNUのもの、例えばBSDのユーティリティや古い’openssl’はそれに従ってないね。" userName="Arnavion" createdAt="2025-02-10T07:38:06" color="">}}

{{<matomeQuote body="2025年だよ、1995年じゃない。これに関しては’POSIXにはない’って言うのにはあまり同情しないよ。--helpが必要な場面では、--helpだけじゃなくて、-hでも常にヘルプが表示されて、何も起こらないようにしてほしいよ。" userName="jerf" createdAt="2025-02-10T16:08:15" color="#785bff">}}

{{<matomeQuote body="つまり、コメントの主旨は’--help’が普遍的じゃない理由を教えることだから、賛否を述べたわけじゃないよね。俺自身は’同じコンベンションでツールを作る派’だよ。" userName="Arnavion" createdAt="2025-02-10T20:02:12" color="">}}

{{<matomeQuote body="そんな簡単なCLIのプログラムでヘルプがないのはどうなの？英語が苦手な人は’—ayuda’って打ちそうだし。2025年にはシェルがプログラムを実行しているだけで、それぞれのプログラムが違うエントリーポイントを持っているのをもっとわかるべきだと思うな。" userName="benatkin" createdAt="2025-02-10T17:16:52" color="">}}

{{<matomeQuote body="個人的な意見だから気にしないでね：単純すぎるCLIでヘルプがないのはクソソフトだと思うし、非英語圏の人が’—ayuda’って打つってマジ！？ほとんどのツールはオプション名が英語中心なのに。'find'を'buscar'とか、'cut'を'schneiden'にするの？そんなの馬鹿げてる！やめて！" userName="f1shy" createdAt="2025-02-10T18:17:52" color="">}}

{{<matomeQuote body="’grep’の翻訳はどうしたの？'Global Regular Expression Print'を'Imprimir Globalmente Expresión Regular'とか？でも’grep’は略語じゃなくて'ged'のコマンド’g/re/p’の短縮形でしょ。文法を変えないとも思わないけど。" userName="Y_Y" createdAt="2025-02-10T19:16:27" color="">}}

{{<matomeQuote body="’gobal de expresiones regulares’って言っているけど、’grep’は'global reg ex parser'って意味だよね。俺の知識は古いSunマニュアルから来てる。あちこちで'print'って書いてあるし、俺が間違ってた。翻訳は常に部分的だから、完璧な翻訳は無駄だと思うんだ。" userName="f1shy" createdAt="2025-02-11T02:32:01" color="">}}

{{<matomeQuote body="別に気を悪くしてないよ。小さなプロセスが好きだし、言語学習にも興味があるから、自分の偏見は出るけど、ほとんどが’--help’をサポートしてる現状は納得できる。みんながシェルで呼び出すプログラムに’--help’があるといいんじゃないかと思うし、シェル関数でコマンドのヘルプを取得するのもありだと思う。" userName="benatkin" createdAt="2025-02-10T18:28:16" color="">}}

{{<matomeQuote body="シェル関数でコマンドのヘルプを取るって考えは良いね。PowerShellのコマンドレットを参考にしてみて！コマンドレットは自分自身やパラメータを標準的に注釈できるし、シェルのヘルプコマンドがそれを読み取って標準的に表示するよ。でも残念ながら、これはコマンドレット専用で、任意の実行ファイルには適用できないんだ。" userName="Arnavion" createdAt="2025-02-10T20:14:19" color="#ff5c5c">}}

{{<matomeQuote body="’--long’オプションはGNUから始まったと思うけど、すぐに広く受け入れられた。kshのいいところは、bashがコピーしてない’getopts’が簡単に長いオプションを処理できて、’--help’も組み込みであることだよ。" userName="kps" createdAt="2025-02-10T15:11:29" color="">}}

{{<matomeQuote body="GNU/BSDの規約は、MacOSとLinux（またはWindowsのWSL）で使う人間が混在する自動化スクリプトにはいい感じだよ。" userName="hylaride" createdAt="2025-02-10T14:20:47" color="">}}

{{<matomeQuote body="UbuntuではGNU/Linuxシステムを使ってるから、そこそこ普遍的だと思ってる。BSDやSolarisが好きだけど、Linuxの時はLinuxを期待するよ。それがプログラムをポーティングする一部だと思う。" userName="f1shy" createdAt="2025-02-10T18:10:13" color="">}}

{{<matomeQuote body="プログラムは間違った引数を受け取ったら、ヘルプを表示するべきだよね。" userName="xboxnolifes" createdAt="2025-02-10T04:50:19" color="">}}

{{<matomeQuote body="たまに、エラーメッセージが七ページも出るプログラムがあって困る。初心者には余計に混乱すると思う。エラーの後に’--helpを見てね’って追加すれば、もっと良いかも。" userName="lucb1e" createdAt="2025-02-10T18:23:34" color="">}}

{{<matomeQuote body="--helpの内容が七ページもあって、それがstderrに表示されるプログラムにはがっかりする。パイプ処理しなきゃいけないし。" userName="danudey" createdAt="2025-02-10T21:03:05" color="">}}

{{<matomeQuote body="昔、manページをいい感じにフォーマットして表示してくれるツールがあったけど、細かい情報を忘れることがよくあって探すのが大変だった。" userName="xp84" createdAt="2025-02-11T00:47:34" color="">}}

{{<matomeQuote body="多くのプログラムは引数が間違ってる時に簡潔にエラーを出すけど、’--help’は明確な要求だから、それに対してしっかりとした表示が必要だと思う。" userName="exmadscientist" createdAt="2025-02-10T06:36:28" color="#ff5733">}}

{{<matomeQuote body="エラー内容が分かる前に長い--help出されるのはイライラする。エラーをまず表示してほしいよ。" userName="linsomniac" createdAt="2025-02-10T13:38:46" color="#38d3d3">}}

{{<matomeQuote body="エラーメッセージを先に表示して、続けてヘルプを出すのが一番いいと思うよ。" userName="gknoy" createdAt="2025-02-10T20:29:58" color="">}}

{{<matomeQuote body="でも、エラーも--helpもstderrに出るからね…。" userName="linsomniac" createdAt="2025-02-11T01:46:47" color="">}}

{{<matomeQuote body="ドキュメントを読むのが強制されたこともあって、それがもっとしんどい。" userName="AStonesThrow" createdAt="2025-02-10T14:47:31" color="">}}

{{<matomeQuote body="何かを学ぶ必要がある時はドキュメント読むのも良いけど、もう知ってる内容で誤字を修正する時はエラーメッセージが求められる。" userName="Thorrez" createdAt="2025-02-10T15:15:39" color="">}}

{{<matomeQuote body="高校の時にそんな教師がいたなぁ。“この証明で間違えたけど、どこか分からない。”って言ったら、“教科書があるんだから、答えはそこにある。”って返された。" userName="linsomniac" createdAt="2025-02-10T15:19:25" color="">}}

{{<matomeQuote body="技術文書を読むのってスキルだよね。IT業界では開発者も運用もそれが足りてない感じ。学ぶ時にはRTFMが有効っていう教訓になるよ。" userName="sbuk" createdAt="2025-02-10T21:05:09" color="">}}

{{<matomeQuote body="スポーツの審判が、そのゲームのルール知らずに試合を管理すると思う？" userName="kevin_thibedeau" createdAt="2025-02-10T16:39:57" color="">}}

{{<matomeQuote body="でも、スポーツの審判って特定のゲームやリーグに特化してることが多いよね。高いレベルでは、審判の役割って医者や弁護士と似てて、毎年ルールが変わったり過去の判例があったりするから、フィールドにいない時もお金や時間、努力を使う。/usr/binの全てを考えたらそれは大変だね。" userName="AStonesThrow" createdAt="2025-02-13T04:22:02" color="#45d325">}}

{{<matomeQuote body="やっぱりHacker Newsじゃ皮肉が伝わらないことが多いね。" userName="gerad" createdAt="2025-02-10T19:05:34" color="">}}

{{<matomeQuote body="-?は、getopt()使う時に間違った引数リストを渡すのと同じだから最低共通分母になるかも。これが簡潔なヘルプを出すべきか、詳しいヘルプになるべきかは別の問題だね。" userName="dfox" createdAt="2025-02-10T07:36:15" color="">}}

{{<matomeQuote body="`?`は1文字用のグロブだから、bashみたいにマッチしなかったグロブがそのままの単語になるか、zshのNULL_GLOBオプションが必要なんだよね。そして、現在の作業ディレクトリに例えば`-a`みたいなファイルが無い必要もある。やってみて：  touch ./-l  ls -?" userName="lloeki" createdAt="2025-02-10T09:30:42" color="">}}

{{<matomeQuote body="さっきの言い方は、実際にはCWDに一文字の名前のファイルが無い必要がある、つまり`a`みたいなのは別の問題だね。試してみて：  touch a  ls -?" userName="TeMPOraL" createdAt="2025-02-10T14:13:54" color="">}}

{{<matomeQuote body="試したけど何が見せたいのか分からないよ。'a'が'-l'の代わりにどう影響するの？仮に'a'がある場合でも、グロブの'-?'に対してどうなるのか疑問だね。実際のコマンドも試してみたけど、グロブは機能しなかった。" userName="me-vs-cat" createdAt="2025-02-10T23:43:35" color="">}}

{{<matomeQuote body="ZSHはグロブを変な風に扱ってるのかな？'?'は1文字用のグロブだから、'-?'は“ダッシュの後にどんな文字でも”って意味だと思ってるんだけど、私の`ls`はそれに反応するよ。" userName="TeMPOraL" createdAt="2025-02-11T09:09:48" color="">}}

{{<matomeQuote body="zshでの便利なオプションについて言及されてるけど、lsは通常グロブを展開しないんだよね。'touch a; ls -?'の二つを試す意味は何なの？" userName="me-vs-cat" createdAt="2025-02-11T14:05:41" color="">}}

{{<matomeQuote body="'-?'は'ダッシュの後に任意の文字'を意味するけど、'a'はそれに当たらないから一致しないのか。もっとテストしてみるべきだったな！" userName="lloeki" createdAt="2025-02-11T11:44:17" color="">}}

{{<matomeQuote body="確かに、基本中の基本を見逃しちゃった！" userName="lloeki" createdAt="2025-02-10T21:59:23" color="">}}

{{<matomeQuote body="助けを求める共通の基準はman(1)だけど、そんなの共通の基準とは言えないよ。'--help'や'-h'で簡単にチェックできる方がずっと楽だし、全体の文書を書くのは変なマークアップ言語使うのと比べて手間がかかる。" userName="maleldil" createdAt="2025-02-10T11:07:11" color="">}}

{{<matomeQuote body="'common denominator'は全てのコマンドに共通で存在するもの。man(1)はそれを提供する。フラグは各コマンドによってパースの仕方が違うから、全コマンドに広げるのは無理がある。man(1)は問題を切り離してるし、'man foo'は副作用なしなのも大事だよ。" userName="lloeki" createdAt="2025-02-10T12:43:30" color="#785bff">}}

{{<matomeQuote body="逆の理解だけど、manページはシンプルなヘルプテキストより作成が大変だと思う。ヘルプが常に用意されてるとは限らないし、自動生成できるCLIライブラリも多いから。今の時代、manページがあるだけで驚くし、'--help'が無いプログラムにはイライラする。" userName="maleldil" createdAt="2025-02-10T13:16:15" color="">}}

{{<matomeQuote body="今はmanページを作るのが全然楽になったんだよ。昔のroffの面倒はなくなったし、簡単なマークダウンファイルでさくっと作れるから。" userName="lloeki" createdAt="2025-02-10T21:57:50" color="">}}

{{<matomeQuote body="難しいとは言ってないけど、相対的に作るのが大変だとは思う。'--help'の扱いは簡単なのに対し、manページはあらかじめ明示的に作らなきゃいけないから。" userName="maleldil" createdAt="2025-02-11T12:15:01" color="">}}

{{<matomeQuote body="manページが内容豊かすぎるって議論してる人がいるの？個人的には、必要な時に使えないほど薄っぺらいことが多いから、ソフトウェアにはInfoページを期待したい。" userName="TeMPOraL" createdAt="2025-02-10T14:16:02" color="">}}

{{<matomeQuote body="引数が誤っているときは、何が間違ってるかを簡潔に教えてほしいし、全体を説明するために'--help'も使いたい。20ページもスクロールしないといけないのは勘弁してほしいし、何か特定のエラーが先に表示されてくれないと困る。" userName="immibis" createdAt="2025-02-10T16:14:04" color="">}}

{{<matomeQuote body="CLIツールの中には、ユーザーが何をしたいかを推測して、より特化したメッセージを表示してくれるものもあるよね。例えば、kubectlは指定したリソースが存在しない時、似た名前のものがあるよって教えてくれる。ヘルプテキストがめちゃくちゃ長い時に特に役立つよね。" userName="crabbone" createdAt="2025-02-10T13:35:47" color="">}}

{{<matomeQuote body="これには賛成だけど、ジュニアエンジニアは説明が長いエラー出るとすぐに助けを求める傾向があるんだよね。どんなに明確なメッセージがあっても、出力の多さに圧倒されちゃうことが多い。" userName="pgwhalen" createdAt="2025-02-10T15:57:56" color="">}}

{{<matomeQuote body="--helpが最低限だなんて思わない方がいいよ。不正な引数リストの方がもっと低い共通点だから。--helpを不正な引数として扱うのは正しいことだけどね。" userName="GoblinSlayer" createdAt="2025-02-10T12:04:30" color="">}}

{{<matomeQuote body="確かに！オプションを理解できない時に短いヘルプメッセージを出すプログラムはいいよね。ただ、GNU/Linuxでは、--helpがないプログラムはクソって思ってる。" userName="f1shy" createdAt="2025-02-10T18:06:57" color="">}}

{{<matomeQuote body="プログラムがショートフォーマット引数だけ受け付けることを忘れないで。`cmd --help`でエラーになることがあるし、golang製のツールではよく見かけるパターンだよ。これ、直訳すると混乱を招くことも多いけど、--がエムダッシュに置き換わる頻度を減らしてくれるからましな方かも。" userName="danudey" createdAt="2025-02-10T20:46:21" color="">}}

{{<matomeQuote body="データベースクライアント（例：psql）がホスト引数に`-h`を使うのは理解できるけど、好みじゃない。" userName="bouke" createdAt="2025-02-10T09:18:15" color="">}}

{{<matomeQuote body="-Hがそこにあるのに、なんでちょっと変わったものを選んだのかな？" userName="viraptor" createdAt="2025-02-10T10:56:48" color="">}}

{{<matomeQuote body="macOSのshutdownコマンドは`-h`でハルト＝実際のシャットダウンを意味するね。" userName="kccqzy" createdAt="2025-02-10T17:57:13" color="">}}

{{<matomeQuote body="それはLinuxでも同じだよ。" userName="daleswanson" createdAt="2025-02-11T04:11:08" color="">}}

{{<matomeQuote body="POSIXには’man(1)’があって、’--help’じゃないのが面白いね。" userName="blueflow" createdAt="2025-02-10T19:30:53" color="">}}

{{<matomeQuote body="確かにそうだけど、なんだかんだで使えるパラメータをふわっと検索するのも助けになることが多いよね。" userName="WD-42" createdAt="2025-02-10T18:31:45" color="">}}

{{<matomeQuote body="’$command --help’じゃなくて’man 1 $command’だよ。プログラムを無闇に実行して’--help’で他に何もしないと思ったらダメ。" userName="blueflow" createdAt="2025-02-10T16:45:26" color="">}}

{{<matomeQuote body="これジョークかどうかわからないけど、’--help’がないツールに出会ったのは人生で１回だけなんだよね。結構な数のツールにはmanページがないけど。" userName="scubbo" createdAt="2025-02-10T17:56:23" color="">}}

{{<matomeQuote body="’--help’がないツールって言ったけど、echoのこと知らなかったの？これ何すると思う？  echo --help" userName="enriquto" createdAt="2025-02-10T18:05:28" color="">}}

{{<matomeQuote body="ヘルプメッセージを表示して終了するわけだ。" userName="jancsika" createdAt="2025-02-10T19:19:13" color="">}}

{{<matomeQuote body="$ echo --help  --help  $ type echo  echoはシェルビルトインだよ。" userName="blueflow" createdAt="2025-02-10T19:25:17" color="">}}

{{<matomeQuote body="俺は/usr/bin/echoがこう反応することを期待してるんだ。  Usage: /usr/bin/echo [SHORT-OPTION]... [STRING]...  って感じだね。これがBashのビルトインのこと考えてた？" userName="ninalanyon" createdAt="2025-02-11T07:36:31" color="">}}

{{<matomeQuote body="そんなクソみたいなことは期待してないよ。echoは引数を出力するのが基本だろ。" userName="enriquto" createdAt="2025-02-11T08:10:14" color="">}}

{{<matomeQuote body="ルールを破るのは頭に負担をかけて、メンテの悩みの種になるよ。どうして’echo’だけが’--help’の呼び出しに違った反応するの？" userName="scubbo" createdAt="2025-02-11T23:56:16" color="#ff33a1">}}

{{<matomeQuote body="じゃあ逆に聞くけど、なんで『--help』だけ他の文字列と違って出力されないん？" userName="enriquto" createdAt="2025-02-12T20:47:51" color="">}}

{{<matomeQuote body="2つの理由があるんだよ。まず『echo --help』を入力する人が本当に『--help』を出力したい可能性は低いし、次に『--help』だけじゃなくて、他にも特別扱いの文字列があるし、一貫性を持たせるためには標準のオプションをサポートしてほしい。" userName="scubbo" createdAt="2025-02-12T22:23:05" color="">}}

{{<matomeQuote body="パッケージマネージャーでインストールされたプログラムが多い環境ではこれがうまくいくけど、色んな環境ではそれが合理的ではない。マニュアルが無くてもオンラインヘルプが充実してることもよくあるから、使い方を知りたくなるのは当たり前だよ。" userName="tenacious_tuna" createdAt="2025-02-10T16:49:55" color="">}}

{{<matomeQuote body="使い方を知りたいって思うのは当たり前だよね。Debian使ってるの？/usr/sbin/e2scrub_all --helpを試してみて。" userName="blueflow" createdAt="2025-02-10T16:55:54" color="">}}

{{<matomeQuote body="はい、こんな感じ。 e2scrub_all --helpを実行したら、rootで実行しなきゃダメって言われるし、sudoでやったら不正なオプションって出た。" userName="danudey" createdAt="2025-02-10T21:10:35" color="">}}

{{<matomeQuote body="man e2scrub_allはrootじゃなくても動くよ :P" userName="blueflow" createdAt="2025-02-10T23:56:44" color="">}}

{{<matomeQuote body="AnsibleのインストールはPythonのpipパッケージとして推奨されていて、マニュアルページが追加されない。オンラインドキュメントを使うにはたくさんの`ansible help topic`コマンドを実行しないといけない。でもマニュアルがあれば素晴らしいし好きだけど、常にあるわけじゃないから、その点が不満だよ。" userName="tenacious_tuna" createdAt="2025-02-11T17:39:36" color="">}}

{{<matomeQuote body="Ansibleのドキュメントは全体的にひどいから、毎日使ってるのに役に立つことが少ないんだ。調べるのに時間がかかってしまって困ってる。" userName="blueflow" createdAt="2025-02-12T15:22:11" color="">}}

{{<matomeQuote body="プログラムが普通はシングルダッシュのオプションしか対応してないなら、--helpを使うと間違った期待を持つことになる。ヘルプを求める正しい方法が示されるほうがいい。GNUスタイルのダブルダッシュオプションのサポートが必要かどうかは微妙だけど。" userName="scbrg" createdAt="2025-02-10T16:11:34" color="">}}

{{<matomeQuote body="『--help』がシングルダッシュのオプションしかないことを伝える手段としては、ヘルプテキストを表示するのは良いコミュニケーションだと思う。どのプログラムがどのスタイルを好むかを覚えられないから、ヘルプを求めるのは差別的に感じないでほしい。" userName="exmadscientist" createdAt="2025-02-10T19:30:23" color="">}}

{{<matomeQuote body="なるほど、それもそうだね。でもたった3秒増えたくらいで文句言うほどのことかな？結構忘れがちなヘルプテキストを確認するきっかけになるし。一応K&Rにはもっとちゃんとした標準を考えてほしかったけど、何の標準でも良かったかな。" userName="scbrg" createdAt="2025-02-10T21:11:08" color="">}}

{{<matomeQuote body="K&Rって書いたのは間違えた。Ken ThompsonとDennis Ritchieを思い浮かべてたけど、K&RはBrian KernighanとDennisを指すんだよね。混乱させたらごめん。" userName="scbrg" createdAt="2025-02-11T13:26:41" color="">}}

{{<matomeQuote body="解析中にエラーじゃなくてヘルプを表示した方がいいよ。" userName="nurumaik" createdAt="2025-02-10T18:46:18" color="">}}

{{<matomeQuote body="すごいことに、こんなに多層のシステムが問題無く動いてる。ターミナルエミュレーターを使って、シェルを立ち上げて、ssh接続して、tmuxでセッションに入って、エディタでファイル開いたら猫の絵文字も正しく表示される。" userName="sevensor" createdAt="2025-02-10T14:20:41" color="">}}

{{<matomeQuote body="ほとんどのやり取りが低帯域・低遅延な二重通信のテキストストリームだから、色々と前提条件が楽に成り立つ。" userName="hatthew" createdAt="2025-02-10T22:45:13" color="">}}

{{<matomeQuote body="> discoverability (55) 便利なツールや機能を見つけるのが難しいってコメントが多かった。この意見にまとめられる。独学が大変すぎる。これは本当にその通りで、私たちが存在する理由の一つだし、ターミナルツールの発見はもっと改善しないとね。Juliaも調査をしてくれてありがとう。" userName="terminaltrove" createdAt="2025-02-09T22:53:57" color="#ff33a1">}}

{{<matomeQuote body="あなたのサイトを見たけど、素晴らしいコンテンツでとても役立つよ。ただ、他のコメントにもあったようにいくつかの提案をしたい。1. モバイル向けにリソースを軽くした方がいいと思う。2. CLIユーティリティがどの言語で書かれているかに興味がある時もあるので、フロントページに検索機能を追加してほしい。3. カテゴリビューは役に立たないと思ってる。リストに直接飛ぶ方がいい。全体的にはよくできてると思うよ。" userName="zxexz" createdAt="2025-02-10T08:09:54" color="">}}

{{<matomeQuote body="いいサイトだね！個人的には、週ごとのハイライトは良いけど、アグリゲーターの価値はカテゴリ分けと検索にあると思う。そういう機能は見当たらなかったな。" userName="armanckeser" createdAt="2025-02-09T23:49:06" color="">}}

{{<matomeQuote body="フィードバックありがとう。ここにはカテゴリ分けがあるんだけど、これが使いやすくなるために改善点はあるかな？検索機能の考慮もしてるけど、何を検索したいか教えてほしい。" userName="terminaltrove" createdAt="2025-02-10T00:32:24" color="">}}

{{<matomeQuote body="> 何か改善できることはある？ ヘッダーにカテゴリへのリンクを追加した方がいいよ。動的アニメーションは煩わしいし、フッターの小さい字でリンクあるけど、それじゃあ良くない。" userName="elashri" createdAt="2025-02-10T07:24:16" color="">}}

{{<matomeQuote body="ああ、グレースケールのリンク見逃したわ。いずれにしても、集約ツールにはデータテーブルが必要だと思う。言語やカテゴリー、GitHubのスター数でフィルタリングやソートできたら、もっと価値があると思う。" userName="armanckeser" createdAt="2025-02-10T14:15:19" color="">}}

{{<matomeQuote body="Atuin.shは履歴の問題を全部解決してくれた。プロジェクトごとの履歴やセッションごとの履歴、グローバルな履歴もばっちり。2～4文字打てば、複雑なコマンドも簡単に見つけられるよ。" userName="oliviergg" createdAt="2025-02-09T22:52:54" color="#ff5733">}}

{{<matomeQuote body="Atuinを使う前は、fzfを使って履歴を検索する面白いFishプラグインを使ってた。今でもそれをよく使ってるけど、複雑になったり失敗したときにはAtuinのネイティブ検索が助けてくれる。ほんとにコンソールでの作業が変わるし、めちゃくちゃおすすめだよ。" userName="pridkett" createdAt="2025-02-10T12:44:28" color="#785bff">}}

{{<matomeQuote body="（やあ！Atuinのメンテナーだよ！）" userName="ellieh" createdAt="2025-02-10T13:37:21" color="">}}

{{<matomeQuote body="履歴が無秩序すぎて使えないと感じてる。それでPlaybooksを作ったんだ。" userName="laktak" createdAt="2025-02-10T08:34:31" color="">}}

{{<matomeQuote body="ターミナルからのテキストのコピー＆ペーストには、MacのショートカットCmd+Cを使うのが好き。Linuxではそのまま使えないから、簡単にCmd+Cを全アプリで使えるように設定する方法がある。" userName="knazarov" createdAt="2025-02-10T16:19:13" color="#38d3d3">}}

{{<matomeQuote body="iTermで特別な設定をしたか覚えてないけど、Macでは長い出力を選択するよりも、`pbcopy`コマンドにパイプを通してコピーする方が楽だと思う。" userName="pcthrowaway" createdAt="2025-02-10T18:55:32" color="">}}

{{<matomeQuote body="特別な設定をした覚えはないよね。pbcopy（とpbpaste）はMacにプレインストールされてるものだよ。" userName="einsteinx2" createdAt="2025-02-13T12:10:38" color="">}}

{{<matomeQuote body="じゃあ、SIGINTはどうするの？" userName="schindlabua" createdAt="2025-02-10T17:19:56" color="">}}

{{<matomeQuote body="Linux用語で言うと、Super+CがCtrl+Insertにマッピングされてるから、Ctrl+CはそのままSIGINTを送るんだって。IBM CUAのリンクもあるよ。" userName="mook" createdAt="2025-02-10T17:40:33" color="">}}

{{<matomeQuote body="そうだね。Ctrl+Cはいつも通り使えるよ。" userName="knazarov" createdAt="2025-02-10T19:49:48" color="">}}

{{<matomeQuote body="Smalltalkみたいにコードのスニペットを置いとけるインタラクション環境って楽しそうだな。SQLのdBeaverみたく、シェルコマンド用のファイルがあったら便利かも。" userName="smackeyacky" createdAt="2025-02-10T01:00:20" color="">}}

{{<matomeQuote body="Pharoみたいだね。" userName="xk3" createdAt="2025-02-11T19:48:14" color="">}}

{{<matomeQuote body="今の秘密なんだけど、cht.shで色々楽になるよ。CLI AIの設定もしてる。例もあるから参考にしてね。" userName="kristopolous" createdAt="2025-02-09T23:31:59" color="#785bff">}}

{{<matomeQuote body="この例、実際のコマンド結果としてはおかしい気がするんだけど。リモートでのポート転送間違ってない？" userName="thwarted" createdAt="2025-02-10T16:34:59" color="">}}

{{<matomeQuote body="LLMを使ったシェルヘルパー見つけたよ。コマンド提案する機能があって、使えるかも。" userName="scottyeager" createdAt="2025-02-10T01:35:08" color="">}}

{{<matomeQuote body="似たようなツール作ったことあるよ。達成したいことを説明すると、コマンドを提案してくれるんだ。" userName="regnull" createdAt="2025-02-09T23:45:24" color="">}}

{{<matomeQuote body="プロンプトエンジニアリングしてるよ。inline replacementに使えるかも、ちょっとフォークして試してみる。" userName="kristopolous" createdAt="2025-02-10T00:05:29" color="">}}

{{<matomeQuote body="CLIツール作ったよ。Control+Rで履歴検索とAIクエリができるんだ。プロンプトエンジニアリングのリンクもあるよ。" userName="ddworken" createdAt="2025-02-10T00:14:31" color="">}}

{{<matomeQuote body="結構大変なことだね。シェルの履歴が壊れてるのにみんな同意してるのは嬉しいよ。ログローテート使ってたけど、いつもトランクしてた。最近は色んな選択肢があって良いね。誰かが”https://atuin.sh/”を紹介してたけど、初めて知ったよ。追いかけるのが難しいな。" userName="kristopolous" createdAt="2025-02-10T01:00:17" color="#785bff">}}

{{<matomeQuote body="トランクしないようにする設定はこうだよ：  shopt -s histappend  shopt -s cmdhist  export HISTCONTROL=ignoreboth  export HISTFILESIZE=-1  export HISTFILE=~/.bash_eternal_history  export HISTSIZE=-1  export HISTTIMEFORMAT=”%d/%m/%y %T ”  export HISTIGNORE=”history:ls:l:ll:pwd:exit:clear”  これで1MB近くなったよ。どれくらいからトランクしたの？" userName="porridgeraisin" createdAt="2025-02-10T07:16:02" color="">}}

{{<matomeQuote body="数千行くらいからトランクし始めたかな。数千万行はサポートしてほしい。十分早いPCもあるし、ストレージはほとんど無料みたいなもんだし。色々試したけど、BPFフィルターとかバイナリのブレークポイント以外はやってないよ。現代のシステムだからこれが問題にならないのはおかしいね。" userName="kristopolous" createdAt="2025-02-10T10:08:28" color="">}}

{{<matomeQuote body="あー、たくさんあるよ。俺の解決策も試してみてよ。" userName="porridgeraisin" createdAt="2025-02-10T10:26:32" color="">}}

{{<matomeQuote body="プロンプトを調整していい感じにしたって。失敗したときには理由を考えて修正する実験モードもあるよ。PR送ってもいいよ。" userName="regnull" createdAt="2025-02-10T00:10:31" color="">}}

{{<matomeQuote body="よし、やったよ。これは再発明だね。基本的にはこうするんだ、(zsh前提で)$ source how.sh。  そのあとシェルで入力するんだ。  それからデフォルトではCTRL+X+Hを押すと実行される。  正直、99％の確率で構文を忘れちゃうから、深く探求してるわけじゃないんだ。" userName="kristopolous" createdAt="2025-02-10T00:48:44" color="">}}

{{<matomeQuote body="面白いアプローチだね、シェアしてくれてありがとう！" userName="regnull" createdAt="2025-02-10T02:30:02" color="">}}

{{<matomeQuote body="色に関して問題なのは、最近のトレンドでterminfoやTERMを無視してエスケープシーケンスをハードコーディングすることだよ。ipython/prompt_toolkitやchalk、linenoiseなどがその悪化を助長しているね。これをやめよう。libterminfoを使うのが面倒なのは分かるけど、結局みんなにとって良い結果が得られるんだから。" userName="quotemstr" createdAt="2025-02-09T23:00:17" color="#38d3d3">}}

{{<matomeQuote body="最近はターミナルの仕組みやterminfoのことを知らない人が多いね。技術や教育の進展で基礎的な知識が学ばれなくなっている。ターミナルは特にその影響が大きい。皆、ターミナルをただのコマンド入力ボックスだと思ってるし、エスケープシーケンスをコピペしてるだけだよ。" userName="Ferret7446" createdAt="2025-02-10T07:09:25" color="">}}

{{<matomeQuote body="terminfoが基礎的な知識ってどの世界の話？" userName="zokier" createdAt="2025-02-10T16:54:44" color="">}}

{{<matomeQuote body="Unixの世界だね。" userName="quesera" createdAt="2025-02-10T18:03:06" color="">}}

{{<matomeQuote body="新しいクロスターミナルエミュレーターのOSCシーケンスを定義して、ターミナルエミュレーターが全てのTERMINFOの能力をそのまま返してくれればいいよね。XTGETTCAPみたいな機能があれば、他のターミナルエミュレーターをfootに合わせて、libterminfoを捨てられると思う。" userName="navi-desu" createdAt="2025-02-10T13:51:45" color="#38d3d3">}}

{{<matomeQuote body="XTGETTCAPがいい感じで実装されてるのはいいね。他のターミナルエミュレーターも進化させるべきだし、Emacsもやっちゃおうかな。" userName="quotemstr" createdAt="2025-02-10T18:34:52" color="">}}

{{<matomeQuote body="ターミナルエミュレーターがデフォルトでTERMをxtermなんとかにしてるなら、ちゃんとxtermのコントロールシーケンスをサポートすべきだよ。" userName="kps" createdAt="2025-02-10T15:20:23" color="">}}

{{<matomeQuote body="ポイント3に強調したいんだけど、適当なANSIエスケープシーケンスをstdoutに出すなら、ちゃんとttyであることを確認してほしいよ。" userName="spudlyo" createdAt="2025-02-10T14:32:12" color="#ff5c5c">}}

{{<matomeQuote body="atuinは、色んなコマンドを繰り返し使うときに、記憶するのに役立つよ！" userName="thesurlydev" createdAt="2025-02-10T17:01:27" color="">}}

{{<matomeQuote body="他の人の手間を減らすために言うけど、atuinはターミナルの履歴を別のシステム間で同期するんだよね。これがどうやって記憶を助けるのか分からないな。" userName="lucb1e" createdAt="2025-02-10T18:31:36" color="">}}

{{<matomeQuote body="履歴を探すのが楽で、前回使った引数も見つけられるから、思い出す必要がないよ。マシン間で同期も取れるから、2年前に使ったコマンドもctrl+rで見つかるんだ。" userName="shawabawa3" createdAt="2025-02-10T19:08:18" color="#ff5733">}}

{{<matomeQuote body="履歴の同期以外にも、fishは同じようなことができると思うよ。" userName="yonatan8070" createdAt="2025-02-10T19:42:06" color="">}}

{{<matomeQuote body="コピーとペーストのショートカットの不満が全然理解できない。 COPYはマウスでテキストを選択することだし、PASTEは真ん中のボタンでやればいいんじゃない？キーボードは必須じゃないし、どのプログラムでも昔からこれで問題ないよ。" userName="enriquto" createdAt="2025-02-10T17:55:01" color="">}}

{{<matomeQuote body="どこがそうなの？どのターミナルエミュレーターでも中ボタンで選択をコピーして右クリックでペーストできるんだけど。" userName="jimmaswell" createdAt="2025-02-10T19:05:59" color="">}}

{{<matomeQuote body="中ボタンで最近選択したテキストをペーストするのはX WindowでのPRIMARY選択だから、ターミナル特有じゃないよ。どのターミナルが中ボタンでコピー、右クリックでペーストするの？俺には全然知らない世界だ。" userName="Sharlin" createdAt="2025-02-10T20:46:20" color="">}}

{{<matomeQuote body="CMDのWindows、デフォルトのPuTTY設定、WSLでもそうだね。あんまりネイティブのLinux環境でGUIは使ってないけど、使ったときはターミナルエミュレーターの設定を変えたのかもしれない。" userName="jimmaswell" createdAt="2025-02-11T01:43:29" color="">}}

{{<matomeQuote body="ああ、つまりWindowsか。その他の環境とは全然違うのが納得だわ。" userName="Sharlin" createdAt="2025-02-11T12:55:36" color="">}}

{{<matomeQuote body="詳細は知らないけど、数年前に政府のRHELシステムを使ってた時、中ボタンで選択した内容が常にペーストされてた。どのプログラム間でも関係なかったよ。それのおかげでかなり時間が節約できた。" userName="h3half" createdAt="2025-02-10T19:23:46" color="#45d325">}}

{{<matomeQuote body="全てのターミナルはxtermの光からどれだけ逸脱するかで判断される。" userName="tedunangst" createdAt="2025-02-10T20:40:22" color="">}}

{{<matomeQuote body="これ、tmuxセッション内の縦に分割したウィンドウでは動かないよね。vimの分割バッファでも同様だし。" userName="indigo945" createdAt="2025-02-10T18:22:07" color="">}}

{{<matomeQuote body="縦に分割したvimでも選択できるよ。もし大きな選択をしたいなら、ターミナルエミュレーターを使うのは大変だけど、vimのコマンドでコピーすればいいんじゃない？" userName="deathanatos" createdAt="2025-02-10T19:50:12" color="">}}

{{<matomeQuote body="tmuxセッション内でマウスを使ってテキストを選択すると、マウスサポートが有効になってれば分割にちゃんと反映されるよ。" userName="Henchman21" createdAt="2025-02-10T22:03:34" color="">}}

{{<matomeQuote body="Appleが一ボタンマウスに統一するまでは、もっと一般的だったと思うよ。" userName="WD-42" createdAt="2025-02-10T18:38:32" color="">}}

{{<matomeQuote body="マウスが使えないときはどうすればいいの？" userName="samspot" createdAt="2025-02-10T18:14:04" color="">}}

{{<matomeQuote body="スキルの問題が多い良いカタログ。CLIの不具合やストレスに悩まされる人が多いけど、普段使わない人にとっては特にフラストレーションが増すみたい。CLIに慣れた人にはあまり問題に感じないかも。コマンドやフラグを覚えたり、エイリアスや設定ファイルを用意して、使いこなすと当たり前になる。" userName="gregjor" createdAt="2025-02-06T10:47:28" color="">}}

{{<matomeQuote body="Unixの信者たちに対するフラストレーションを凝縮したコメント。UnixやCLIは失敗しない、失敗するのはあなたのスキルの問題って考えがある。プログラム名やフラグが難解なまま作られたのは今の時代には関係ないし、GUIにも同じ種の問題があるのを軽視しているかのようだ。" userName="Analemma_" createdAt="2025-02-09T21:56:21" color="#785bff">}}

{{<matomeQuote body="UnixやCLIツールは、今の多くの新しいソフトウェアの基盤を形成してる。コマンドやフラグを単純化すると、何百万行ものスクリプトやツールが壊れちゃうから簡単に変更できない。自分で良いアイデアのツールを作るのは自由だし、時には人気が出ることもある。さあ、RAMやディスクの制限は今も関係があるんだ。" userName="gregjor" createdAt="2025-02-10T15:27:13" color="">}}

{{<matomeQuote body="飛行機を操縦するのに訓練なしで行けると思う？ヴァイオリンを持ってソナタを演奏できる？ターミナルには欠点があるけど、他のインターフェースにもそれぞれ問題がある。基本を学ぼうとせずに、自分が知ってるシステムのようにしてほしいと求めるなら、そのマニュアルに指示するのは当然。" userName="skydhash" createdAt="2025-02-09T22:38:51" color="">}}

{{<matomeQuote body="飛行機のライトスイッチはどこでも同じように動くべきって思う。マニュアルに従う必要があるにしても、そんなデザインは最悪だからリアルな問題を無視している。" userName="eviks" createdAt="2025-02-10T03:49:35" color="">}}

{{<matomeQuote body="飛行機のライトスイッチの例には驚かされたよ。アメリカではライトスイッチが逆に動くなんて知らなかった。推しのボタンが普通のトグルスイッチを指してると思うけど、環境によって思いがけないことが起きるのは面白いよね。" userName="follower" createdAt="2025-02-10T11:26:23" color="">}}

{{<matomeQuote body="ボタンの曖昧さは知ってたよ。完璧な例えじゃないし。" userName="eviks" createdAt="2025-02-10T12:31:58" color="">}}

{{<matomeQuote body="飛行機のシステムについて意見を持つことは大事だと思う。特に737 MaxのMCASについて。少なくともマニュアルの一部は読むべきだけど、数十億ドルかけてffmpegをどうにか使おうとしているのなら、自分たちが無駄に難しくしていないか考えなきゃ。" userName="fragmede" createdAt="2025-02-09T22:54:15" color="">}}

{{<matomeQuote body="数十億ドルかけてffmpegを使っているなら、必要ない出費だったな。簡単に使えるツールが他にもたくさんある中、ffmpegの存在理由を考えるべき。使いこなせば簡単なのに、分からない人には難しいのはどのソフトでも同じ。" userName="skydhash" createdAt="2025-02-09T23:27:48" color="">}}

{{<matomeQuote body="これはスキルの問題をよくまとめたものだね。全ての開発者を責めるのは厳しいかも。でもソフトウェアのインターフェースデザインや共感力は、多くのプログラマーがもっと学ぶべきスキルだよ。残念ながら、こういった分野でのリソースが不足してるのが実情なんだ。単に『git gud』って言うのは、無理解な門戸を閉ざす行為なんだから。" userName="follower" createdAt="2025-02-10T11:57:25" color="#785bff">}}

{{<matomeQuote body="基本的なCLIツールの使い方に苦労してる人はスキルの問題があるんだ。ツールは数十年前のもので、何百万ものスクリプトに組み込まれてるからUIは変わらない。今さらgrepやawkに文句を言っても意味がない。著作者たちはスキルの不足ではなく、自分たちのためにツールを作ったんだから。" userName="gregjor" createdAt="2025-02-10T15:21:56" color="">}}

{{<matomeQuote body="君が言いたいのは、基本的なCLIツールに苦労する人はスキルの問題だってことだよね。それを理解してるよ。でも、過去のツールが今も便利であるのに対して、スキルに関する批判は時代遅れで無意味なんだ。ガードレールとしての批判は理にかなってないし、技術を楽しむ機会を奪うだけだよ。" userName="follower" createdAt="2025-02-10T22:42:20" color="">}}

{{<matomeQuote body="スキルの問題を侮辱と捉えることもできるけど、単にプログラミングの基礎スキルを学んでいないことを指してるつもり。ツールを悪く言うより、学ぶことが大事なんだ。自分のスキルを見つめ直すのは重要で、批判を受け止める姿勢が大切だよ。" userName="gregjor" createdAt="2025-02-11T01:26:32" color="">}}

{{<matomeQuote body="役に立つことを思い出させてくれるコメントだね。我々はインポスターではないから。" userName="spudlyo" createdAt="2025-02-10T14:26:20" color="">}}

{{<matomeQuote body="時間が経つにつれてコマンドやフラグを忘れることもあるんだ。これはあまり使わない人だけの話じゃないよ。" userName="eviks" createdAt="2025-02-10T03:42:48" color="">}}

{{<matomeQuote body="だからこそ、--helpやmanなどのドキュメントが重要なんだよ。CLIツールには膨大なドキュメントがあるから、使い方を学ぶことが必須だと思う。多くのプログラマーが細かいツールのフラグをすぐ忘れちゃうけど、しっかり学ぶ必要があるんだ。" userName="gregjor" createdAt="2025-02-10T15:33:55" color="">}}

{{<matomeQuote body="コマンドラインツールを作る中で、良いUXがどれだけ重要かよくわかるようになる。良いヘルプはあるか？わかりやすいエラーメッセージはあるか？使いやすいデフォルト値は？しっかりした例が用意されてるか？それが評価されるんだ。" userName="InfinityByTen" createdAt="2025-02-10T07:43:50" color="">}}

{{<matomeQuote body="自分が使ってるfindは非常に使いづらいんだ。--helpや-hが効かないなんて。" userName="oneeyedpigeon" createdAt="2025-02-10T11:00:00" color="">}}

{{<matomeQuote body="あなたのシステムが問題だと思うよ。私のUbuntu 24.04では、find --versionや--helpがちゃんと機能してるから。" userName="gregjor" createdAt="2025-02-10T16:04:35" color="">}}

{{<matomeQuote body="ファイルのパスを探して中身を確認した？もしかしたら、どこかにインストールして忘れたラッパーや別バージョンがあるかもしれないよ。それと、テスト用に”find /help”や”find /?”、”find -?”も試してみて、もしDOS風のパラメータを使ってるならね。" userName="slightwinder" createdAt="2025-02-10T13:09:51" color="">}}

{{<matomeQuote body="$ file `which find`  /usr/bin/find: Mach-Oのユニバーサルバイナリなんだ。でも、$ find /helpや$ find /?を試してみたけど、どっちも該当するものが見つからなかったよ。" userName="oneeyedpigeon" createdAt="2025-02-10T13:44:46" color="">}}

{{<matomeQuote body="これってMacOSなの？確か、FreeBSDのツールを使ってるから”man”を使う文化があるはずで、helpパラメータはないんじゃないかなー。" userName="slightwinder" createdAt="2025-02-10T16:33:41" color="">}}

{{<matomeQuote body="brewがあれば、findutilsをインストールしてgfindを使うと、もっと期待通りの動きをするよ。" userName="achierius" createdAt="2025-02-10T13:53:11" color="#785bff">}}

{{<matomeQuote body="前回のやりとりのリンクだよ：https://news.ycombinator.com/item?id=42970632  https://news.ycombinator.com/item?id=42975816  https://news.ycombinator.com/item?id=42959824  https://news.ycombinator.com/item?id=42953869" userName="rcarmo" createdAt="2025-02-09T22:05:27" color="">}}

{{<matomeQuote body="投稿時にアイテムIDも含めるのって、ちょっとおかしいと思うんだ。" userName="slightwinder" createdAt="2025-02-10T13:13:20" color="">}}

{{<matomeQuote body="これってボットなの？" userName="tonymet" createdAt="2025-02-09T22:23:26" color="">}}

{{<matomeQuote body="違うよ。ただ、以前にこの話題を投稿した人がいるだけ。最近、HNの重複検出がちょっと怪しいね。" userName="rcarmo" createdAt="2025-02-10T08:13:57" color="">}}

{{<matomeQuote body="重複検出は以前に十分な議論があった場合だけ機能するみたいで、今回はそういうのがなかったからね。" userName="asicsp" createdAt="2025-02-10T08:32:59" color="">}}

{{<matomeQuote body="上の人にとって大事なことなんじゃない？それだから質問したんだろうし。" userName="wutwutwat" createdAt="2025-02-10T01:04:05" color="">}}

{{<matomeQuote body="このフォーラムは技術に興味がある人のためだよね？だから、大事なことだよ。" userName="tonymet" createdAt="2025-02-10T03:02:19" color="">}}

{{<matomeQuote body="興味あるんだけど、何でそれがあなたにとって大事なのか技術的に知りたい。いろんな方法があるけど、人間が関わってることでこのサイトに対する気持ちはどう変わるの？" userName="fragmede" createdAt="2025-02-10T07:05:46" color="">}}

{{<matomeQuote body="ただ興味があるだけ。" userName="tonymet" createdAt="2025-02-10T16:32:37" color="">}}

{{<matomeQuote body="それがどう大事なの？" userName="fragmede" createdAt="2025-02-12T07:56:22" color="">}}

{{<matomeQuote body="「興味がある」としか言えないんだよね、Hacker Newsではどうやって物事が動いてるのかを話し合うためにいるんだから。" userName="tonymet" createdAt="2025-02-12T16:53:44" color="">}}

{{<matomeQuote body="他の人（ただのものではない）をどう考え、どう動いてるのか知りたいらしいよ。だから、自分がそのコメントを書いた理由を聞きたいんだけど、どう思ったの？" userName="fragmede" createdAt="2025-02-14T09:04:22" color="">}}

{{<matomeQuote body="LinuxでコピーをWIN+C、ペーストをWIN+Vにマッピングできるの？ターミナルではWin+Cが終了信号を送らないようにするんだけど。" userName="darcwader" createdAt="2025-02-14T14:23:23" color="">}}

{{<matomeQuote body="ターミナルで色を管理するのにvividを使ってるよ。これで多くのツールの色を一発で設定できる。" userName="maleldil" createdAt="2025-02-10T11:30:06" color="">}}

{{<matomeQuote body="アドバイスありがとう、sharkdpからの素晴らしいツールだね。" userName="gkfasdfasdf" createdAt="2025-02-10T16:27:31" color="">}}

{{<matomeQuote body="色テーマについては、melange-nvimをおすすめします。いろんなプログラムの設定があって、温かくて低ブルーライトで、変な色もなくていい感じ。zenbonesで色を諦めようとしてたけど、これ見つけて良かった。コピー＆ペーストは36キーのキーボード使ってて、ctrlを親指で押して持つ形、コンマ押しながらシフト+ctrlにしてるけど、他の人にはあんまり役に立たないかも。" userName="__s" createdAt="2025-02-09T23:43:03" color="">}}

{{<matomeQuote body="ここには少なくとも2つの異なる問題があると思う。1つ目は端末エミュレータの一般的なUX、古いハードウェアの制約を emulation していること。現代の端末エミュレータはその制約を解消しようとしているけど、使ったことがない人には無関係なものになっている。2つ目はCLIソフトウェアのUX。最近のものならそこまでひどくはないが、問題が多い。iTerm2を使っているが、コピペが簡単で、スクロールも快適なので気に入ってるけど、根本的なツールの問題は解決しにくい。例えば、lsの代わりにezaを使っているよ。" userName="jillesvangurp" createdAt="2025-02-10T14:44:21" color="#ff33a1">}}

{{<matomeQuote body="誰もが触ったわけじゃない古いエミュレータを使い続けているのは奇妙だけど、これにより多くのソフトウェアが廃れることなく、互換性が保たれている。最近、友人からもらったVT320ターミナルでGentooをインストールしたが、1987年のハードウェアで最新のLinuxを使えるのは感慨深い。設定次第でほとんど問題なく使えたし、刺激が少なく、Vimをもう一度学ぶきっかけにもなった。" userName="jimmaswell" createdAt="2025-02-10T19:31:10" color="#ff5c5c">}}

{{<matomeQuote body="この記事のポイントは良いね。端末をしっかり使うならfzfをおすすめ。Tmuxも便利だし、ホットキーを自分に合うように再設定しちゃえばいい。マニュアルは長すぎるから、cheat.shを使って簡単に使い方を探ってる。エイリアスは凄く便利だし、皆が同じコマンドを何度も打ってるのを見ると自分のエイリアスの幅を広げたくなる。" userName="staindk" createdAt="2025-02-09T22:24:05" color="#45d325">}}

{{<matomeQuote body="Tmuxは1つ以上の端末を開くのに素晴らしい。ホットキーを自分に合うように再マッピングすれば、もっと楽に使えるよ。新しいペインが元のディレクトリじゃなく、現在の作業ディレクトリを引き継ぐようにする設定も簡単にできるし、これのおかげで無駄なcdコマンドが減った。" userName="susam" createdAt="2025-02-09T23:11:36" color="">}}

{{<matomeQuote body="新しいペインがTmuxを起動したディレクトリにデフォルトになるのはいいじゃないけど、環境全体も引き継ぐのはやっぱり問題がある。" userName="lloeki" createdAt="2025-02-10T09:49:01" color="">}}

{{<matomeQuote body="これに同感。大きな変化だね。デフォルトにするべきだと思う。" userName="kristopolous" createdAt="2025-02-09T23:42:25" color="">}}

{{<matomeQuote body="fzfはほんと便利だから、ターミナル触る人には必ず勧めてる。シェル履歴のファジーファインディングやディレクトリ移動のショートカットだけでも価値あるよ。" userName="hiAndrewQuinn" createdAt="2025-02-10T19:01:29" color="#45d325">}}

{{<matomeQuote body="この手のフラストレーションは何十年も言われてる気がする。MacやLinux間のコマンドラインの切替で、基本コマンドすら再学習しなきゃいけなかったあの頃を思い出す。システムの多様性が原因だけど、例を使った学習方法がもっとあれば解消できると思う。" userName="dare944" createdAt="2025-02-10T18:42:17" color="">}}

{{<matomeQuote body="特徴の網羅的リストを好む派だな。例だけじゃそれぞれのフラグの意味が分からず、フラグの組み合わせを覚えるだけになっちゃう。例は役立つけど、学びには不十分。" userName="MyOutfitIsVague" createdAt="2025-02-10T19:55:46" color="">}}

{{<matomeQuote body="RTFM。bashを最初から最後まで読んだことがあるシェルユーザーには会ったことない。これは読まないと文句言えないよ。プログラミング言語と同じくらい真剣に読むべき。" userName="teknopaul" createdAt="2025-02-11T06:53:01" color="">}}

{{<matomeQuote body="bashを理解したら他のツールも分かる。bashのエスケープルールを知らないとsedがより難解になるよ。" userName="teknopaul" createdAt="2025-02-11T06:56:11" color="">}}

{{<matomeQuote body="zshの履歴とfzfを使って自分の脳みそ代わりにしてる。昔の複雑なコマンドも数回のキーストロークで復元できるのが楽チン。" userName="reddit_clone" createdAt="2025-02-10T14:35:19" color="#45d325">}}

{{<matomeQuote body="自分もコメントを追加してfzfで検索できるようにしてる。自分はその必要性は少ないけど、長い履歴を持つ前提。その設定、忘れちゃうことが多いな。" userName="IggleSniggle" createdAt="2025-02-10T15:09:21" color="">}}

{{<matomeQuote body="コマンド履歴をバックアップしてる？" userName="trallnag" createdAt="2025-02-10T15:24:44" color="">}}

{{<matomeQuote body="新しいコンピュータの設定時にコピーしてるけど、バックアップはしてないよ。" userName="reddit_clone" createdAt="2025-02-10T16:27:19" color="">}}

{{<matomeQuote body="コメント読んでて楽しかった！いくつか素晴らしい提案あったし。tmuxのショートカットに関してはzellijが良いよ、Rustで書かれてるからcargoでインストール可能。" userName="Fnoord" createdAt="2025-02-10T21:19:03" color="">}}

{{<matomeQuote body="ユーザーにはコンテキストスイッチを記録して、対策ツールを見つけることをお勧めするよ。可能な限りターミナルに留まろう。TLDRやfabric、devdocsなどのツールをインストールして、manページを探すのに慣れよう。タスクを複数同時に実行するためにはbashのジョブ制御やtmuxを使いこなそう。古いコマンドを再実行したい時は、HISTFILESIZEを大きくして ctrl-rを使おう。便利なコマンドはREADME.mdに記録しよう。シェルがもっと使いやすいオンボーディングやチュートリアルを提供してほしいな。" userName="tonymet" createdAt="2025-02-09T22:22:38" color="#38d3d3">}}

{{<matomeQuote body="swyxがCLIについての考察をまとめたのを思い出したよ。特にCLIアプリの例を集めた部分が好きだな。FishやFZFカスタマイズも楽しんでる。今の設定に満足してるけど、プロダクションホストにSSHすると困る。" userName="adelpozo" createdAt="2025-02-10T20:43:21" color="">}}

{{<matomeQuote body="コマンドラインオプションを学ぶのは数百のDSLを学ぶようなもので、LinuxとMacOSで異なるセットを学ぶのはさらに大変。Unicesの設計上、これらを組み合わせることが求められるから、これらの形式やDSLを学ぶ必要がある。CLIを使うことで生産性が大幅に低下するし、習得には長い時間がかかると思う。Microsoft PowerShellはこの問題を改善しているけど、Windows以外では広まっていない感じ。" userName="efitz" createdAt="2025-02-10T12:26:31" color="">}}

{{<matomeQuote body="非転送可能と言うけど、Unixスキルは数十年にわたり他の仕事やプロジェクトに役立ったよ。Unix/Linuxを学んで得た知識は、学ぶのに長い時間がかからない。Unixはプレーンテキストという共通のファイル形式を持っていて、ツールもそれに基づいて組み合わさっている。基本的なツールには一貫性があって、manページもあるから、DSLとは言えないと思う。" userName="gregjor" createdAt="2025-02-10T16:11:19" color="">}}

{{<matomeQuote body="PowerShellは本当に意味不明だと思う。なぜそれを持ち出すのか理解できない。ポータビリティや移植性の面で最も悪いものだ。Win32専用のドメイン固有のシェル言語で、他のOSでは機能しない。Bashは50年の歴史があるのに対し、PowerShellは2007年に登場し、2013年になってやっと使いやすくなった。Windowsのスクリプトとの互換性がないので、使うたびに調べる必要があって、本当に疲れる。" userName="xerox13ster" createdAt="2025-02-10T15:23:11" color="">}}

{{<matomeQuote body="シェルスクリプトは設計が悪くて、特に「変数を設定し忘れた」で「ホームディレクトリを削除」はおかしい。PowerShellは異なるモダリティを導入していて、データを扱うことができるのが面白い。UNIXの50年の経験があっても、スクリプトで困難を感じることも多いから。" userName="jcranmer" createdAt="2025-02-10T17:53:30" color="">}}

{{<matomeQuote body="UNIXを学んでいたら他のUNIXシステムですぐに使えただろうし、キャリアの初めにもっと高い給料を得られたはず。" userName="Reasoning" createdAt="2025-02-10T21:55:39" color="">}}

{{<matomeQuote body="レガシーのごちゃごちゃは本当に多いし、CLIインターフェースのゼロからの実装があればいいね。" userName="UltraSane" createdAt="2025-02-09T22:29:44" color="">}}

{{<matomeQuote body="これはチェスタートンの柵だ。ターミナルの代替品は既存のアプリケーションをすべてサポートしなければならない。そうしないと、置き換えは役に立たないし、サポートするなら歴史的な制約に縛られる。" userName="Ferret7446" createdAt="2025-02-10T07:12:49" color="">}}

{{<matomeQuote body="参考になる動画があるみたい。興味深い内容だね。" userName="notsomeuser" createdAt="2025-02-09T23:30:54" color="">}}

{{<matomeQuote body="全く意見が違うわ。" userName="wpm" createdAt="2025-02-10T12:29:25" color="">}}

{{<matomeQuote body="PowerShellを試してみてね。" userName="tonymet" createdAt="2025-02-09T22:36:01" color="">}}

{{<matomeQuote body="そのツール、全然ダメだと思う。新しいエディタ作る人たちも既存のツールをちゃんと使ってないんじゃない？無駄な機能だらけの破綻したものが多いよ。" userName="crabbone" createdAt="2025-02-10T14:12:38" color="">}}

{{<matomeQuote body="この意見は最悪だ。PowerShellが悪い理由を具体的に言ってないよ。オブジェクトをパイプするのが素晴らしいんだ。手間も減るし、プロパティ名でのフィルタリングもできるし、ConvertTo-JSONも便利。" userName="UltraSane" createdAt="2025-02-10T18:33:19" color="">}}

{{<matomeQuote body="PowerShellの具体的な批判って何なの？" userName="ykonstant" createdAt="2025-02-10T14:31:24" color="">}}

{{<matomeQuote body="PowerShell好きな人たちは、Unixシェルは古いものだって言うけど、実際はそのシンプルさがいいんだよ。全てがテキストだから、簡単に扱えるし、異なるシェル間での通信も楽。" userName="crabbone" createdAt="2025-02-10T17:18:55" color="">}}

{{<matomeQuote body="PowerShellでもシリアライズは簡単だけど、より強力だよ。ConvertTo-JSONやConvertTo-CliXMLを使うと、構造化された出力が得られる。" userName="UltraSane" createdAt="2025-02-10T18:35:47" color="">}}

{{<matomeQuote body="PowerShellオブジェクトをJSONやXMLに変換するのは簡単じゃないよ。クローズャーをJSONに変換したらどうなると思う？それはどんな言語でも問題だよ。" userName="crabbone" createdAt="2025-02-12T18:50:32" color="">}}

{{<matomeQuote body="これはOPじゃないけど、PowerShellは全部ケースセンシティブで大変だ。手軽にPythonでスクリプト書く方が楽だよ。" userName="stackedinserter" createdAt="2025-02-10T16:11:28" color="#38d3d3">}}


