+++
date = '2025-03-21T00:00:00'
months = '2025/03'
draft = false
title = '自作OS開発の入門書がアツい！OS自作erたちが語る、禁断の領域'
tags = ["OS開発", "自作OS", "プログラミング", "x86", "システムプログラミング"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 自作OS開発の入門書がアツい！OS自作erたちが語る、禁断の領域

引用元：[https://news.ycombinator.com/item?id=43440473](https://news.ycombinator.com/item?id=43440473)

{{<matomeQuote body="osdevマジ最高っしょ。最終的に何がしたいかわかんないけど、マジで何でも作れる感じがめっちゃクール。x86の基本的な割り込みとsyscallが動いた時、マジで全てが繋がった気がしたんだよね。syscallが動き出したら、マジで世界は自分のものだよ！趣味でOSいじるの超オススメ。Rustの勉強にもなったし、マジで予想以上だった。今ではRustもそれなりに使えるし、他の誰よりもdouble faultとかtriple faultを発生させられる自信あるわ。" userName="rocky_raccoon" createdAt="2025-03-22T04:41:27" color="#38d3d3">}}

{{<matomeQuote body="FPGAで自作CPUコア作って、その上でOS動かすってのはどう？（どこまでもOystersってことね）" userName="checker659" createdAt="2025-03-22T08:33:50" color="">}}

{{<matomeQuote body="Wirthもこれで楽しんでたみたいだよ: <br>http://www.projectoberon.net/" userName="Rochus" createdAt="2025-03-22T11:40:55" color="">}}

{{<matomeQuote body="本とか参考にした？なんかRustでOS実装する本があった気がする。" userName="endorphine" createdAt="2025-03-22T05:24:55" color="">}}

{{<matomeQuote body="https://os.phil-opp.com/ <br>これのこと？" userName="hedonhermdev" createdAt="2025-03-22T07:38:55" color="">}}

{{<matomeQuote body="他にもOS開発のチュートリアルがあるよ。Rustのやつもあるよ: <br>https://github.com/bobeff/programming-math-science?tab=readm..." userName="ibobev" createdAt="2025-03-22T06:18:09" color="">}}

{{<matomeQuote body="残念ながらこの本にはosdevチュートリアルによくある欠点がある。x86の細かい話ばっかりで、OS開発の話が少ない。x86の細かい話はOS開発じゃない。それは基本的なOSが扱うことのほんの一部分にすぎない。" userName="netbsdusers" createdAt="2025-03-22T02:59:19" color="">}}

{{<matomeQuote body="X86以外のものをターゲットにした趣味OSのリソースがもっとあれば最高だよね。一般的ではあるんだけど、ブートストラップとかデバイスの面倒なこととか、頭に入れる必要ないじゃん。386アセンブリを手で書くのはマジでイライラするし、分かりにくいし。RISCマイクロコントローラから始めるのがオススメ。カーネルを起動して、簡単なシリアル通信をするまでに必要な知識が少なくて済むし、命令セットリファレンスとかアセンブラマニュアルとか、必要な情報が全部書いてあるデータシートもあるし。ハードウェアハッキングも楽しいし、自分で周辺機器とか作れるし。" userName="dokyun" createdAt="2025-03-22T04:11:29" color="#785bff">}}

{{<matomeQuote body="こういうの？ <br>https://operating-system-in-1000-lines.vercel.app/en/" userName="qwerty59" createdAt="2025-03-22T04:44:20" color="">}}

{{<matomeQuote body="前の議論: <br>https://news.ycombinator.com/item?id=42631873" userName="homarp" createdAt="2025-03-22T08:12:26" color="">}}

{{<matomeQuote body="これ、マジでイケてるね。" userName="dokyun" createdAt="2025-03-22T06:43:47" color="">}}

{{<matomeQuote body="もしかして、これのことかな？<br>https://github.com/mit-pdos/xv6-riscv<br>昔のxv6はx86ベースで、もう公式にはメンテされてないんだよね。Xinuはどう？https://xinu.cs.purdue.edu BeagleBone(ARM)ポートがあるよ。" userName="anta40" createdAt="2025-03-22T06:05:53" color="#ff5c5c">}}

{{<matomeQuote body="出来合いのUnixをいじるのは、OSを趣味にするって考えには向かないと思うな。Unixの仕組みを勉強するなら最高だけど。もし自分で作ったシステムを実験したいなら、先入観なしで、デザインを丸ごとコピーしない方がいいよ。Unix系の趣味OSなんて腐るほどあるし、実験する立場からすると、Unixのエコシステムに縛られすぎちゃうんだよね。Plan 9/9frontの方がいいかも。Bell LabsがUnixを捨てたのは、もはや研究プラットフォームとして価値がなかったから。" userName="dokyun" createdAt="2025-03-22T06:55:04" color="#ff5c5c">}}

{{<matomeQuote body="なるほどね。DOS/Unixじゃないオープンソースの趣味OSもいくつか知ってるけど…残念ながらVisopsysとかKolibriみたいにx86だけなんだよね。<br>x86以外なら、http://wiki.osdev.org/Projects を探してみるといいかも。好みに合うものが見つかるかもしれないよ。" userName="anta40" createdAt="2025-03-22T09:15:19" color="">}}

{{<matomeQuote body="＞昔のxv6はx86ベースで、もう公式にはメンテされてないんだよね。<br>当然だよね。OS開発を教えるって目的に集中するためには、あのISAには対処しなきゃいけないレガシーなゴミとか醜い部分が多すぎるんだ。" userName="snvzz" createdAt="2025-03-23T11:45:42" color="#ff5c5c">}}

{{<matomeQuote body="例えばARMをどうやるかって話だけど：<br>1. まずx86でマルチタスクを動かす。ガイドがたくさんあるから。OSdevのコンセプトを学んで。<br>2. ARMARMを読む。何千ページもある技術資料だけど、ほとんど必要なことは書いてある。ARM osdevの良いリソースがないのは、環境が全然標準化されてないから。ARMチップは色んな場所で使われてるし、特定のボードをターゲットにすることが多いからね。" userName="junon" createdAt="2025-03-22T10:17:10" color="#ff33a1">}}

{{<matomeQuote body="確かにね。lexingとかparsingが言語開発ガイドの焦点になってるのと同じ理由だと思う。コンパイラのほんの一部なのにね。入り口としては理にかなってるし、ある時点からはほとんど自習になるからね。" userName="dist1ll" createdAt="2025-03-22T05:55:23" color="">}}

{{<matomeQuote body="みんなSICPを崇拝してるけど、今のコンピューティングアーキテクチャとはほとんど関係ないんだよね。x86はまだ入門には良い方法なのかもね。" userName="quotemstr" createdAt="2025-03-22T04:23:04" color="">}}

{{<matomeQuote body="問題はx86が言及されてることじゃないんだ。OSにはCPU上でコードを動かす以外にも色々あるってこと。<br>RPC、入力スタック、グラフィックススタック、ネットワークスタック、オーディオ、プロファイリング、telemetry、スケジューリング、UI toolkits、セキュリティ、サービス管理…色々あるよね。これらを学ぶには、他のOSのドキュメントとかソースコードを読む必要があるよ。" userName="charcircuit" createdAt="2025-03-22T05:10:27" color="#ff5733">}}

{{<matomeQuote body="現実世界のOSは間違いなく複雑だよね。でも初心者には、xv6で十分だと思うよ。<br>https://github.com/mit-pdos/xv6-public<br>コードベースは小さいし、ドキュメントも充実してるし、GCCをカスタムビルドしたり、dockerとか使わなくても簡単にビルドできるしね。" userName="anta40" createdAt="2025-03-22T06:00:35" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="x86は今のコンピューティングアーキテクチャとはほとんど関係ないんだよね。あれはただのISAで、データフローに固有のパイプライン処理とかキャッシュの問題を解決する助けにはならないし。<br>学生にx86を勧めるなんてマジでサディスティックだと思うわ。適当でいいから、もっと扱いやすいISAを選んでやれよ(intel製じゃない1990年以降のやつとか)。" userName="nukem222" createdAt="2025-03-22T07:39:15" color="">}}

{{<matomeQuote body="x86マシンは安いしどこにでもあるから、ググったりネットで人に聞いたりして簡単に情報が得られるのが良いよね。<br>仮想マシンとかエミュレーターも充実してるし。<br>変な仕様は286で大体終わってるから、無視しても問題ないレベル。どうしても無視できない部分は初期化処理くらい。<br>アセンブラとかハードウェアプログラミングを段階的に学びたいなら、DOSBoxと80年代後半～90年代前半のIDE/デバッガーの組み合わせはマジでおすすめ。Turbo/Borland PascalとかC(++)にTurbo DebuggerとTurbo Assemblerを組み合わせるとか。実行環境もあるし、ハードウェアにも直接アクセスできるし(DOSは邪魔しない)、Pascal/Cからもアクセスできるし、インラインアセンブラも使えるし、外部アセンブリファイルも使える。ステップ実行とかブレークポイントもかなり使えるし。<br>Raspberry Piとかも良い選択肢だと思う。ARM以外のプラットフォームは無いかな。" userName="peterfirefly" createdAt="2025-03-22T09:35:34" color="#45d325">}}

{{<matomeQuote body="x86の細かい仕様は別に嫌じゃないな。実際に動くハードウェア上でOSを作ったり理解したりしたいなら、プロセッサとかハードウェアの細かい仕様は避けて通れないし、これはその一例として、どんな問題に遭遇してどう対処するかを示してるんだと思う。" userName="egl2020" createdAt="2025-03-22T19:37:25" color="">}}

{{<matomeQuote body="ほとんどのOSでは、プロセッサの細かい仕様を扱うコードなんてほんの一部なんだよね。移植性の高いロジックがほとんど。DOSとかWindows 9xみたいな特殊なOSは例外かもだけど。<br>チュートリアルを読むと、90%くらいの時間が他の部分に比べて面白くない領域の説明に費やされてる気がする。それって全然魅力的じゃないと思うんだよね。<br>趣味でOS作ってて、4つのアーキテクチャ(m68k、amd64、aarch64、riscv)に移植した経験から言わせてもらうとね。今はTCP/IPスタックに取り組んでるんだけど、これがマジで楽しいし、すでに多くのことを学べた。他にも、仮想メモリとかページ置換、非同期I/O機構の設計、IPCとか、それぞれの適切な同期処理とかも面白いよね(同期処理だけでも奥が深いし、安全なメモリ再利用みたいな革新的な技術も色々あるし)。人それぞれだろうけど、俺はx86の細かい仕様よりもこういうところに興味があるな。" userName="netbsdusers" createdAt="2025-03-23T08:16:54" color="#ff5733">}}

{{<matomeQuote body="この本がどんなOSについて書かれたものかよく知らないけど、x86のアーキテクチャ的な側面は、多くのx86 OSにとって「標準」と見なされてる部分が多いんじゃないかな。x86、MIPS、SH-2のコード密度は、軽量RISCプロセッサに比べて高いってよく聞くし。あるいは、OSの普遍的な側面を軽く触れて、x86固有の機能に焦点を当ててるのかも。" userName="initramfs" createdAt="2025-03-22T06:19:41" color="">}}

{{<matomeQuote body="wasmみたいなVMを使って、プレエンプションできる、マシンに依存しないユーザースペースOSを作ったら何か面白いこと学べるかな？" userName="01HNNWZ0MV43FF" createdAt="2025-03-22T03:55:22" color="">}}

{{<matomeQuote body="マジで、Xerox PARCの有名なOSは全部VMベースみたいなもんだったよ。<br>コンパイラがバイトコードを生成して、CPUはマイクロコードで動いてた。<br>だから最初のブートフェーズは、マイクロコードをCPUにロードして、それからSmalltalk、Interlisp-D、Mesa、Cedar環境を起動するって感じ。<br>Amiga OSの後継を目指したプロジェクトもあって、それもバイトコードベースでJITを使ってた。<br>＞https://news.ycombinator.com/item?id=9806607<br>Inferno with Limboもそうだし、wasmをdisVMの代わりにするとか。<br>AndroidのARTとかもそうだし。<br>ah、IBM i (旧AS/400)もカーネル上でJITを使うバイトコードベースだね。<br>UNIXだけじゃないってこと。" userName="pjmlp" createdAt="2025-03-22T07:55:45" color="#ff5c5c">}}

{{<matomeQuote body="https://github.com/rswier/swieros<br>は独自のVM(Cコンパイラ込み)を使ったクールなプロジェクトだよ。色々な機能があってびっくりした。" userName="PhilipRoman" createdAt="2025-03-22T07:37:32" color="">}}

{{<matomeQuote body="俺が一番好きなOSの本は(開発より仕組みについてだけど)Operating Systems: Three Easy Pieces。HTMLとPDFで無料公開されてるけど、印刷された本も売ってるよ。<br>https://pages.cs.wisc.edu/~remzi/OSTEP/" userName="xmprt" createdAt="2025-03-22T01:36:57" color="#38d3d3">}}

{{<matomeQuote body="一番良いのは、古典的な論文とか資料への参考文献が付いてるところ。" userName="checker659" createdAt="2025-03-22T08:35:44" color="">}}

{{<matomeQuote body="UWの教授で一番好きなRemziの授業だ！最高だったな～" userName="servercobra" createdAt="2025-03-22T02:14:27" color="#38d3d3">}}

{{<matomeQuote body="おすすめされて読んでみたらめっちゃ良かった！" userName="drudolph914" createdAt="2025-03-22T02:11:49" color="#ff5733">}}

{{<matomeQuote body="ありがとう！参考になるね！<br>10代の頃に作ったOSのソースコードがまだあればなぁ。MBRブートローダー作って、プロテクトモードに切り替えて、画面に文字表示して、キーボード入力できるようにしたんだよね。面白いからおすすめだよ。" userName="dlachausse" createdAt="2025-03-21T21:28:38" color="#ff5733">}}

{{<matomeQuote body="俺も昔、自分の“OS”（ほぼBran's Kernel Development Tutorial [1]のコピーだけど）作ったなー。システムのプログラミングとか裏で何が起こってるのか学ぶのにめっちゃ良い経験になった！<br>[1] http://www.osdever.net/bkerndev/Docs/gettingstarted.htm" userName="shpongled" createdAt="2025-03-21T23:51:49" color="#45d325">}}

{{<matomeQuote body="マジか！俺もだ。コードなくしちゃったけど。ベアメタルで起動するのはマジで楽しかった。この本に助けられたよ。<br>https://www.amazon.com/Developing-32-Bit-Operating-System-Cd..." userName="qingcharles" createdAt="2025-03-22T00:53:44" color="#785bff">}}

{{<matomeQuote body="みんなおすすめしてるけど、俺はProject Oberonが好き。2025年のコンピューティングには合わないかもしれないけど、メモリ安全なシステム言語で書かれた、ちっちゃいグラフィカルOSで、OS開発について学ぶのに十分な内容がある。<br>https://www.projectoberon.net/" userName="pjmlp" createdAt="2025-03-22T08:03:38" color="#ff33a1">}}

{{<matomeQuote body="OS開発といえば、ゲームで学ぶのも面白いよね。コンピューターの歴史を旅しながらOSを学べるゲームを作りたいと思ったことがある。プレイヤーはプロセススケジューラとか割り込みハンドラになって、最初はシングルCPUのシステムから始めて、SMPシステムに成長して、最終的にはマルチシステムの分散コンピューティングプラットフォームにたどり着くんだ。" userName="fragmede" createdAt="2025-03-21T22:26:54" color="#ff5c5c">}}

{{<matomeQuote body="核戦争前に壊れたビンテージコンピューターを修理するために部品を集めて、マニュアルを探してプログラムを書いてクエストを解決するFallout 3/4のmodを作ろうと思ってる。" userName="markus_zhang" createdAt="2025-03-21T23:08:37" color="#38d3d3">}}

{{<matomeQuote body="面白そうだね。アセンブリのゲームをデザインしようとしたけど、ただ「一般的なアルゴリズムをアセンブリ言語で実装する」みたいなのしか思いつかなくて。仮想ファームウェアからPCをブートストラップしてOSを書くっていうのはいいかも。" userName="SoothingSorbet" createdAt="2025-03-22T00:45:32" color="">}}

{{<matomeQuote body="＞…コンピューターの歴史を旅しながらOSを教える。プレイヤーはプロセススケジューラや割り込みハンドラーの役割を演じ、非常に限られたRAMを備えたシングルCPUシステムから開始…<br>Ben Eaterの似たようなやつ（ゲーム開発ではないけど）：<br>https://youtube.com/playlist?list=PLowKtXNTBypFbtuVMUVXNR0z1…" userName="ignoramous" createdAt="2025-03-22T09:57:37" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="日本語のOS開発本で、グラフィカルな環境まで解説してるのが2冊あるんだよねー。英語訳がマジで欲しい。[0]はMikanOS、[1]は30日OSのこと。誰かが30日OSを英語に翻訳しようとしたけど、途中で終わっちゃったみたい。[0] https://github.com/uchan-nos/mikanos [1] https://github.com/kamaboko123/30daysOS [1] https://github.com/handmade-osdev/os-in-30-days Fusion以外でここまで詳しく解説してる英語の資料ってない気がする。" userName="vibrantrida" createdAt="2025-03-22T00:00:10" color="#ff33a1">}}

{{<matomeQuote body="Fusionの作者だよー。まだ開発諦めてないし、グラフィックサブシステムとかネットワークスタックもちゃんと作るつもり。今は効率的なゼロコピーIPCを実装しようとしてて、これができれば開発スピードも上がるはず。進捗はちゃんとドキュメントに書くから。" userName="khaledh" createdAt="2025-03-22T04:50:11" color="#45d325">}}

{{<matomeQuote body="Nimのchannelsでメッセージパッシングをしようとしてるの？俺の場合は、コピーを防ぐためにpointersを渡すようにしてるよ。ロックを使わないように、独立したメモリー領域に書き込むようにしてるけど、一般的なパターンじゃないよね。もし何か良いパターンを見つけたら教えてほしいな。" userName="warangal" createdAt="2025-03-22T09:27:16" color="">}}

{{<matomeQuote body="違うよー。Nimのchannelsは同じプロセス内のスレッド間通信用で、メッセージのディープコピーが発生するんだ。Fusionのchannelsはそれとは全然違う。カーネルオブジェクトで、syscallsを使ってcreate/open/send/recv/closeする。ゼロコピーを実現するために、channel heapはuserspaceに置く必要があるけど、カーネルが管理する。POSIXのshared memoryに似てるけど、メッセージパッシングの意味合いが強いかな。Fusionはシングルアドレス空間OSだから、tasks間でpointersを直接渡せるのが強み。保護はpage table mappingsで実現してるよ。" userName="khaledh" createdAt="2025-03-22T12:17:35" color="#ff33a1">}}

{{<matomeQuote body="詳しく説明してくれてありがとね！ゼロから作ってるから、機能のモデル化も自由にできるんだね。数ヶ月前にこのprojectをbookmarkしたけど、まだちゃんと理解できてなかったんだよね。ドキュメントがあるの知らなかったから、これから読んでみるよ！" userName="warangal" createdAt="2025-03-22T16:05:10" color="#ff5c5c">}}

{{<matomeQuote body="この本は良いよね。でもGitHubのissuesを見てほしいなー。直さないといけないところがいくつかあるんだよね。最後のcommitが10年前ってのが気になる。" userName="furkanonder" createdAt="2025-03-21T22:03:31" color="">}}

{{<matomeQuote body="activeなforkがあるよ: https://ordoflammae.github.io/littleosbook/" userName="roywashere" createdAt="2025-03-21T22:12:34" color="">}}

{{<matomeQuote body="2000年代のplanet-source-code.comを思い出すなー。たくさんの人がミニOSを書いて公開してたんだよね。C/C++とかAssemblyで書かれてて、Mingw32でコンパイルして、フロッピーディスクから起動してた。" userName="vishnuharidas" createdAt="2025-03-22T06:39:22" color="">}}

{{<matomeQuote body="リトルレッドOSブックのマニュアルはどこにあるんだ？ https://en.wikipedia.org/wiki/Kylin_(operating_system)" userName="initramfs" createdAt="2025-03-22T06:21:02" color="">}}

{{<matomeQuote body="「The Little…」シリーズってタイトル、ちょっと紛らわしいよね。" userName="zelphirkalt" createdAt="2025-03-22T02:05:51" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
