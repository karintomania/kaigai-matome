+++
date = '2025-04-05T00:00:00'
months = '2025/04'
draft = false
title = 'Appleの心臓部「Darwin OSとXNUカーネル」を徹底解剖！他OSへの影響や開発秘話も暴露'
tags = ["Darwin OS", "XNUカーネル", "macOS", "カーネル", "オペレーティングシステム"]
featureimage = 'thumbnails/purple2.jpg'
+++

> Appleの心臓部「Darwin OSとXNUカーネル」を徹底解剖！他OSへの影響や開発秘話も暴露

引用元：[https://news.ycombinator.com/item?id=43597778](https://news.ycombinator.com/item?id=43597778)

{{<matomeQuote body="Darwinってマジでおもろいよね。コアコンポーネントの変更ペースがヤバい。syscallの後方互換性を捨てたり、強制コード署名とか、dyld_shared_cacheでシステムライブラリのファイル読み込みを高速化したり。完全に結果重視のデザインで、昔ながらのやり方に固執しない感じ。Appleみたいな大手がやるからこそできるんやろな。" userName="llincerd" createdAt="2025-04-06T17:21:10" color="#45d325">}}

{{<matomeQuote body="マジそれな。userspace driversとかexclaves[1]とか、進化が止まらんね。セキュリティがkernelを進化させる大きな要因ってのは間違いないっしょ。" userName="conradev" createdAt="2025-04-06T22:37:05" color="#45d325">}}

{{<matomeQuote body="＞Machの仮想メモリ(VM)システムはプロジェクト以外にも影響を与え、4.4BSDや後のFreeBSDでメモリ管理サブシステムとして採用された”<br>…とNetBSD[0]、OpenBSD[1]もね。DragonFly BSD[2]は違うみたいやけど。" userName="bch" createdAt="2025-04-06T01:27:15" color="#45d325">}}

{{<matomeQuote body="残念ながら、それは完全には正しくないんだよね。<br>386BSD、FreeBSD、NetBSDの3つ（最初はOpenBSDはなかった）は、Mach 2.5スタイルの設計を受け継いだんだけど、FreeBSDはすぐにMach VMの残骸を全部捨てて、完全に新しくて高性能なVMに書き換えたんだ[0]。FreeBSD 4にはMachのコードは残ってなくて、それは90年代後半のこと。だからFreeBSDはMachとの関係で語れないんだよね。最初の頃はそうだったってだけで。<br>NetBSDとOpenBSDもしばらくはMachを使ってたんだけど、すぐに限界が来て（パフォーマンスとかSMPとかネットワークとか）、UVM（unified virtual memory）で書き換えることにしたんだ。UVMはChuck Cranorが設計して、彼の論文のテーマにもなったんだよ。OpenBSDは後でUVMを借りて採用して、今でも使ってる。<br>だから、今のBSDでMachを使ってるのはXNU/Darwinだけなんだよね。しかもMach 2.5じゃなくてMach 3。Machには2.5、3、4があって（GNU/HurdはMach 4を使ってる）、互換性は低いから、別々の設計として扱うのが良いと思うよ。" userName="inkyoto" createdAt="2025-04-06T01:53:47" color="#785bff">}}

{{<matomeQuote body="＞I am not sure whether DragonBSD is dead or alive today at all.”<br>マジか[0][1]。元気にしてるといいな。技術的に面白いし、独自の道を歩んでるのが魅力的[2][3][4][5]。" userName="bch" createdAt="2025-04-06T02:30:26" color="">}}

{{<matomeQuote body="最後のリリースが「Version 6.4.0 released 2022 12 30」で、2007年と2012年のリンクは、2025年の今、プロジェクトがまだ生きていることを保証するには弱い気がするな。他の似たようなプロジェクトと比べるとね。<br>HAMMER（前の設計）とHAMMER2（2018年からの現在の設計）は、全く違うファイルシステムのデザインだってことも注意。前の設計をここで言及する意味があるのか疑問。" userName="inkyoto" createdAt="2025-04-06T03:24:41" color="#ff5c5c">}}

{{<matomeQuote body="＞The last release being «Version 6.4.0 released 2022 12 30», links from 2007 and 2012 do not lend much assurance that the project is still alive in 2025 – compared to other similar projects.”<br>だよねー。git repoには昨日のコミットもあるけど、NetBSDほどじゃないし。<br>＞Also note that HAMMER (the previous design) and HAMMER2 (the current design, since 2018) are two distinct, incompatible file system designs. I am not sure what is the value of mentioning the previous and abandoned design in the this context.”<br>確かに。HAMMER2について触れてるイントロとしてリンクしたけど、ミスったわ。" userName="bch" createdAt="2025-04-06T05:23:14" color="">}}

{{<matomeQuote body="＞I am not sure whether DragonBSD is dead or alive today at all.”<br>NetBSDと同じくらいの活動レベルっぽいね。それをどう捉えるかは人それぞれ。" userName="o11c" createdAt="2025-04-06T02:14:59" color="">}}

{{<matomeQuote body="へー、おもしろい！記事に追記するね、ありがとう！" userName="tansanrao" createdAt="2025-04-06T01:31:38" color="#ff33a1">}}

{{<matomeQuote body="記事には、swapファイルを管理するpager daemonsはユーザ空間で実行され、カーネルメモリもswapアウトされることがあるって書いてあるけど、ユーザ空間のdaemonがどうやってカーネルメモリをswapアウトするのか説明がないんだよね。特別なdaemonのための例外があるのか、特別なシステムコールがあるのか？ユーザ空間のメモリ管理についてもっと詳しく知りたいんだけど。" userName="agentkilo" createdAt="2025-04-06T03:06:00" color="#ff5c5c">}}

{{<matomeQuote body="この記事の内容、ちょっと違うみたいだよ。ごっちゃになってる部分があるね。<br><br>- Machのマイクロカーネルは、昔はユーザーランドのページングをサポートしてたんだ。mmapみたいに、ファイルシステムの代わりにデーモンを使ってたんだって。<br>https://web．mit．edu/darwin/src/modules/xnu/osfmk/man/memory-…<br>でもDarwinで使われてたかは不明。少なくともここ20年はないんじゃないかな。<br>- dynamic_pagerはこれを使ってなくて、もっと限定的なMachのインターフェースを使ってた。xnuがswap不足をdynamic_pagerに知らせて、dynamic_pagerがswapファイルを作って、macx_swaponとかでカーネルに渡してたんだって。でも実際のswapはカーネルがやってた。<br>https://github．com/apple-oss-distributions/system_cmds/blob/…<br>今はカーネルに移動して、dynamic_pagerはほぼ何もしてない。<br>https://github．com/apple-oss-distributions/system_cmds/blob/…<br>- カーネルメモリのほとんどはwiredでページアウトできないけど、カーネルはページング可能なメモリを要求できる（IOMallocPageableとか）。それはswapできるけど、あんまり使われてないみたい。<br>ユーザーランドが直接pagingに関わらなくても、ファイルシステムとかで間接的に関わることがあるから注意が必要だね。FUSEとかNFSとかSMBとか。<br>EDIT：最後に書いたことは間違ってるかも。ユーザー空間でブロックするファイルシステムは作れるけど、swapを置けるかはわかんない。" userName="comex" createdAt="2025-04-06T05:48:23" color="#ff33a1">}}

{{<matomeQuote body="＞xnu could alert it when it was low on swap; dynamic_pager would create swap files, and pass them back into the kernel”<br>swapファイルの作成をユーザー空間経由にするメリットって何？カーネルが自分で作れば良くない？" userName="krackers" createdAt="2025-04-06T06:41:25" color="">}}

{{<matomeQuote body="今はカーネルが自分でswapファイル作ってるよ。昔と違った理由は分からないな。dynamic_pagerのコードも355行しかないし、ユーザー空間に処理を移すほど複雑じゃないし。でも1999年に書かれたものだし、マイクロカーネルへの熱意があったのかもね（フルMach pagingからは撤退してたけど）。" userName="comex" createdAt="2025-04-06T07:03:28" color="">}}

{{<matomeQuote body="当時のドキュメントを見ると、歴史的な経緯っぽいね。マイクロカーネルとして作られたインターフェースが、実際のシステムに適用されるときに、マイクロカーネルの概念が役に立たなくなって、負担にならない部分だけ残ったって感じかな（pagerインターフェースみたいに）。" userName="delusional" createdAt="2025-04-06T09:25:15" color="#ff5733">}}

{{<matomeQuote body="長い間、カーネル内でファイル操作が発生しないように頑張ってたんだよ（レイヤー構造のため）。でも、最終的にもっとヤバい考えが広まっちゃったんだよね。" userName="95014_refugee" createdAt="2025-04-07T09:01:52" color="">}}

{{<matomeQuote body="カーネルがファイル（どんなファイルでも）を単独で管理するのは、ハードウェアやユーザー空間について勝手な前提を置きすぎだと思うんだ。レスキューシステムでfsckしようとしたり、外部ROメディアから起動したり、ディスクレスで起動したり、NFSから起動したりすると、予期せぬ問題が起こる可能性がある。<br><br>一方、Linuxでは、swapon(2)であらゆるものを指定できる。ファイル、パーティション、ディスク全体、/dev/zram、zvolなど（最後のzvolは危険なデッドロックにつながる可能性があるからやめないで）。<br><br>XNU/NeXT/Darwin/OSXの開発者も同じくらいの柔軟性を求めていたのかな？何かのために、適切なものを、たとえスタブとしてでも、用意しておきたかったのかな？" userName="rollcat" createdAt="2025-04-06T17:23:25" color="#38d3d3">}}

{{<matomeQuote body="Darwinカーネルが話題になると、AppleがLinuxをフォークして、その上にOSサービスを構築してたらどうなってたんだろうって考えちゃうんだよね。<br><br>特にDarwinにこだわり続けるのを見ると、残念な気持ちになる。オープンソースにとって損失だし、Appleも時間と金をつぎ込んでるのに、見返りが少ない気がする。" userName="swatson741" createdAt="2025-04-06T01:34:36" color="">}}

{{<matomeQuote body="Appleがそういうスイッチをするタイミングはなかったと思うよ。NeXTSTEPはLinuxより前だし、Mac OS Xに採用されたときには、カーネルを丸ごと置き換えるプロジェクトなんてできなかっただろうし、1990年代後半のLinuxは、明らかに優れた選択肢とは言えなかった。OS Xが数バージョン進んで、消費者向けPCで最も成功したUNIX系OSとして確立された後では、Linuxベースに切り替えるのは、コストがかかるだけで、短期的なメリットはほとんどないリスクだっただろうね。<br><br>もしAppleが昔のMacOSを5年長く続けられたか、Linuxの成熟が5年早ければ、OS Xへの移行は全く違ったものになっていたかもしれないけど。でも、XNUを捨てて2．6以前のLinuxカーネルを採用するのは意味がなかったと思う。" userName="wtallis" createdAt="2025-04-06T01:58:51" color="#ff5733">}}

{{<matomeQuote body="全部同意だね。それに、Torvaldsが何をするかによっては、AppleはもっとコストのかかるXNUを手に入れることになって、大惨事になっていたかもしれない。AppleはTorvaldsとうまくやれると思うけど、どうなってたかは誰にも分からない。" userName="swatson741" createdAt="2025-04-06T02:09:12" color="">}}

{{<matomeQuote body="それはないって。絶対うまくいかないって。エゴと文化の衝突で、言い争いと責任のなすりつけ合いになるのが目に見えてる。Appleはメインフレーム以外で最も垂直統合されたシステムモデルを運用してるけど、Linuxとそのエコシステムは真逆だからね。あと、他の人も言ってるけど、NEXTSTEPのタイムラインが逆だよ。" userName="inopinatus" createdAt="2025-04-06T04:41:18" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="乗り換えはまだしも、最初からOS XにLinuxを使う方が理にかなってたと思うな。そうならなかったのはJobsが自分のもう一つの子供に執着してたからでしょ。悪い選択じゃなかったけど、技術的なメリットよりも虚栄心とエゴから生まれた選択だったんじゃないかな。" userName="lunarlull" createdAt="2025-04-06T04:03:59" color="">}}

{{<matomeQuote body="なんでLinuxカーネルをベースにするのが理にかなってたのか、具体的に説明してないじゃん。当時の状況を説明して、なんでそう言えるのかをもっと詳しく教えてよ。Macはユーザーランド以外はBSDベースじゃないし。カーネルはかなり違ってたし、当時Linuxを使ってたらハードフォークしてたと思うよ。LinuxっていうとGNU/Linuxのこと言ってる人が多いけど、GNUはPOSIXのコマンドラインツールから大きくかけ離れてるし(そういう意味ではmacOSの方が忠実)、GPL3ライセンスはAppleにとって嫌悪すべきものだし。Linuxをベースにしたからって、今より良い結果になったとは到底思えないな。" userName="dagmx" createdAt="2025-04-06T05:46:14" color="#ff5733">}}

{{<matomeQuote body="まず、メモリ管理が良くなるはず。XNUカーネルのメモリマネージャーは時間計算量が低いから。mmap()を使ってスパースメモリマップをたくさん作ると、10,000個を超えたあたりからXNUが悲鳴を上げ始めるんだよね。" userName="jart" createdAt="2025-04-06T11:36:22" color="">}}

{{<matomeQuote body="Linuxカーネルを使ったとしても、カーネルは大きく分岐してたはずだってコメントをもう一度読んでみて。30年前のカーネルが今と同じ特徴を持つと思ってるわけ？当時はどんなメリットがあったの？30年後も保証されるようなものはあった？" userName="dagmx" createdAt="2025-04-06T14:43:17" color="#ff5c5c">}}

{{<matomeQuote body="これって、AppleがJobsを意思決定者として迎え入れたって前提で、NEXTSTEPがおまけだったってことになってるよね。当時は逆で、Appleは将来のOSとしてNEXTSTEPを買収して、Jobsがおまけでついてきたんだよ。90年代のAppleのOS計画が大失敗だったことを考えると、Appleの役員会がLinuxに飛びつくとは思えないな。" userName="andrewf" createdAt="2025-04-06T04:12:08" color="">}}

{{<matomeQuote body="なんでAppleがLinuxに興味を持たなかったんだろ？ JobsのおかげでNeXTSTEPを買ったのはわかるけど。Linuxは2000年にはデスクトップOSとして十分に使えるようになってたし、UXとかmac固有のドライバーを上に追加できたはず。デメリットはなかったはずだし、最大のライバルを弱体化させることにもなったのに。" userName="lunarlull" createdAt="2025-04-06T04:52:01" color="">}}

{{<matomeQuote body="＞Linuxは2000年にはデスクトップOSとして十分に使えるようになってた<br>Appleが決定したのは1996年だよ。" userName="musicale" createdAt="2025-04-06T05:06:21" color="#785bff">}}

{{<matomeQuote body="2000年代初頭、LinuxはデスクトップOSとしては実質的に使えなかった。唯一”完全に機能する”ウェブブラウザがInternet Explorerだったから。Netscape 4.xは”動作した”けど、めちゃくちゃ不安定で30分おきにクラッシュしてたし。Mozilla / Phoenix / Firefoxはまだ完成してなかったし。Chromeは存在しなかった。全然違う世界だったんだよ。オーディオとビデオの再生については言うまでもないよね。僕は1993年に初めてインストールした初期のLinuxユーザーだったけど、Linuxのデスクトップ体験はひどかったから、デスクトップでは悲しいことにWindowsを使ってたよ。" userName="icedchai" createdAt="2025-04-06T23:55:15" color="#ff5c5c">}}

{{<matomeQuote body="Safariが出たのは2003年だよ。" userName="f33d5173" createdAt="2025-04-07T00:24:26" color="#38d3d3">}}

{{<matomeQuote body="Jobsは最初Appleに戻りたくなかったんだよね。AppleがNeXTSTEPを買収したのは、BeOSとの間でJean-Louis Gasseeが欲張りすぎて法外な値段を要求したから。それでAppleはNeXTを選んだってわけ。Jobsは当時、みんなと同じようにAppleに見切りをつけてて、潰れる会社を立て直すなんてまっぴらごめんだったんだ。それに、当時のNeXTだって絶好調ってわけじゃなかったし。<br>＞There wouldn't have been any downsides for them<br>＞本当に？デメリットなんてないって言うの？？？<br>・15年分の開発とエンジニアの経験を捨てることになる(Avie TevanianがMachの開発を手伝ったんだから、これはLinusがソフトウェア開発のトップにいるのに、Hurdに乗り換えろって言うようなもんだよ！)<br>・ライセンスの問題(AppleはGPLのせいで未だに古いbash 3.2を使ってる)<br>・OSをリリースするまでの開発期間が長くなる(10.0のリリースに5年もかかったし、出来もイマイチだった)<br>ちょっと考えただけでもこれだけある。Linux kernelが1996年当時、XNUより優れてる、安全だって思い込んでるんじゃないの？" userName="wpm" createdAt="2025-04-06T16:26:02" color="#ff33a1">}}

{{<matomeQuote body="＞it would have strengthened something that was hurting their biggest rival.<br>最大のライバルってMicrosoftのこと？Appleを1997年に倒産から救ったのはMicrosoftだよ。" userName="DeathArrow" createdAt="2025-04-06T15:57:11" color="">}}

{{<matomeQuote body="AFAICT、AppleがNextSTEPを買収した時、LinuxはPowerPCに移植されてすらいなかったんじゃないかな。" userName="monocasa" createdAt="2025-04-06T06:55:24" color="">}}

{{<matomeQuote body="AppleがNeXTを買収した頃、Linuxは開発途上でまだ確立されてなかった。Linuxはモノリシックカーネルだから、Machのようなコンパートメント化はできなかったんだ。<br>今のFreeBSDは、DarwinとLinuxのオープンソースの利点を兼ね備えてるって感じかな。Appleのロックインが進むのが嫌なら、FreeBSD(や他のBSD)を検討する価値はあるかも。" userName="GianFabien" createdAt="2025-04-06T02:30:00" color="">}}

{{<matomeQuote body="FreeBSDってモノリシックカーネルじゃなかったっけ？コンパートメント化されてるって話は初耳。<br>俺の理解だと、MachはBSDがベースで、既存のBSDカーネルの大部分がマイクロカーネルの下で単一のタスクとして動作するハイブリッド型だったはず。Darwinはその後、FreeBSDの最新の開発を取り入れ、マイクロカーネル下のBSDカーネルをアップデートしたんだよね。" userName="laurencerowe" createdAt="2025-04-06T07:14:22" color="#ff33a1">}}

{{<matomeQuote body="MachはBSDをベースにしてないよ。BSDを置き換えたんだ。<br>MachはAccentとAlephカーネルの後継。<br>BSDはユーザランドツールとして採用された。<br>＂Machは、BSD版Unixのカーネルを置き換えるものとして開発された＂(https://en.wikipedia.org/wiki/Mach_(kernel))<br>面白いことに、MkLinuxはLinuxのユーザランドでMachカーネルを使うプロジェクトだった(BSDじゃなくて)。" userName="TickleSteve" createdAt="2025-04-06T07:44:11" color="#ff33a1">}}

{{<matomeQuote body="FreeBSDをデスクトップOSとして使うには、ドライバのサポートってどうなの？<br>10年くらい前に試した時は、Nvidiaのドライバがネイティブ解像度で動かなくて諦めたんだよね。Bluetoothも問題があった気がする。FreeBSDはサーバーOSだと思った。" userName="finnjohnsen2" createdAt="2025-04-06T05:52:21" color="">}}

{{<matomeQuote body="＞As things now stand, FreeBSD represents many of the benefits of Darwin and the open source nature of Linux.<br>ありえない。FreeBSDは、Intelアーキテクチャ以外のサポートを全て打ち切るという、UNIXの原罪を犯した。UNIXのDNAには、多様なCPUとハードウェアプラットフォームのサポートが刻まれてるのに。<br>FreeBSDが衰退したのは、Intelだけが生き残ると信じてARMやRISC-Vを見誤ったからだと思う。Linuxがその隙間を埋めて、今やどこでも動いてる。FreeBSDは速いけど、Linuxの方が優れてる。" userName="inkyoto" createdAt="2025-04-06T08:46:16" color="#ff5733">}}

{{<matomeQuote body="1995年頃からFreeBSDとLinuxを使い続けてるけど、それは違うと思うな。<br>LinuxがFreeBSDより成功したのは、マルチスレッド、マルチコアCPUへの移行が大きかった。2003年のSMT Intel Pentium 4から始まったんだ。<br>2003年頃、FreeBSD 4.xはシングルコアCPUで最速で安定したOSだった。LinuxやWindowsよりずっと上。でもマルチコアCPUに対応できなくて、Linuxに負けた。FreeBSD 5.xで対応したけど、競争力のある性能を取り戻すまで時間がかかった。<br>" userName="adrian_b" createdAt="2025-04-06T11:15:07" color="#45d325">}}

{{<matomeQuote body="歴史的な出来事の解釈には概ね同意するけど、BSDコアチームのせいもあると思う(不人気な意見だけど)。<br>最初の間違いは、JVMのネイティブサポートを拒否したこと。Linuxエミュレーションで動かしたけど、バグだらけだった。でもユーザーはJavaアプリを求めてたんだよ。<br>2つ目の間違いは、コンテナ(Docker)を拒否したこと。Linuxベースのコンテナがクラウドコンピューティングを支えてるのに。FreeBSDは手遅れだった。<br>" userName="inkyoto" createdAt="2025-04-06T11:39:10" color="#ff33a1">}}

{{<matomeQuote body="Dockerって2013年にできたんだよね。BSDが人気なくなった後じゃん。それに、FreeBSDの方がLinuxよりずっと前にコンテナの先駆けだったんだよ。https://en．m．wikipedia．org/wiki/FreeBSD_jail" userName="usrnm" createdAt="2025-04-06T13:35:00" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="FreeBSDのjailsは、ちょっと進んだchroot++みたいなもんかな。コンテナの前身って言えるかもしれないけど、kernelの分離が弱かったり、network stackの分離がオプションだったり、resource controlも弱かったりするんだよね。Solaris 10のzonesの方がコンテナとしては先だったんじゃないかな。" userName="inkyoto" createdAt="2025-04-06T14:04:33" color="#ff5733">}}

{{<matomeQuote body="FreeBSDが普及しなかった理由の一つに、デュアルブートの問題もあったと思うんだよね。FreeBSDはディスク全体を管理したがるから、Windowsとかと一緒のディスクに入れるのが難しかった。Linuxはパーティションを切ればよかったから、手軽だったんだよね。あとはCD-ROMの対応が遅かったのも痛かった。" userName="tzs" createdAt="2025-04-06T15:41:12" color="">}}

{{<matomeQuote body="FreeBSDがIntel CPUに特化してたから衰退したってのは違うと思うな。もっと前からLinuxに負けてたし。原因は色々あると思うよ。ATTの訴訟とか、FreeBSDがexpert向けだったとか、forkが多かったとか、資金力とか、色々。" userName="danieldk" createdAt="2025-04-06T10:03:50" color="#785bff">}}

{{<matomeQuote body="ATTの訴訟はもう解決済みの話だよ。むしろ、それがFreeBSDとかNetBSDができたきっかけなんだから。ライセンスの問題も関係ないと思うな。BSDライセンスの方が商用には向いてるんだし。問題は、FreeBSDの開発がclosed-sourceな人たちを受け入れなかったことじゃないかな。" userName="inkyoto" createdAt="2025-04-06T11:20:55" color="">}}

{{<matomeQuote body="＞FreeBSDは、Intelアーキテクチャ以外をサポートしないっていう、UNIXの罪を犯したんだよ。<br>FreeBSDはamd64とかaarch64とか、色んなプラットフォームをサポートしてるよ。https://www．freebsd．org/platforms/" userName="_paulc" createdAt="2025-04-06T10:17:11" color="">}}

{{<matomeQuote body="AppleがLinuxをPowerPC Macに移植するプロジェクトに協力してたのは面白いよね。でも、Macintosh GUIをLinuxに移植する動きはなかったと思う。昔はA/UXとかMacintosh Application Environmentとかもあったけど、ワークステーションレベルのリソースが必要だったから、現実的じゃなかったんだよね。" userName="linguae" createdAt="2025-04-06T02:31:17" color="#38d3d3">}}

{{<matomeQuote body="MkLinuxのタイミングがすごいよね。Coplandがキャンセルされた頃にリリースされてるんだから、AppleはLinuxを使うことも考えてたのかもしれないね。" userName="threeseed" createdAt="2025-04-06T06:10:09" color="">}}

{{<matomeQuote body="MkLinuxがLinux-on-Machだったってのがすごいよね。MachをPowerPCに移植したのが、NeXTSTEP Machの移植にも使われたんだから、全部繋がってるんだね。" userName="kalleboo" createdAt="2025-04-06T08:04:11" color="#38d3d3">}}

{{<matomeQuote body="＞Darwin kernelの話になるといつも思うんだけど、AppleがLinuxをforkしてたらどうなってたんだろうね。<br>XNUは一部しかopen sourceじゃないんだよね。APFS filesystemとかはmissingしてるし。Linuxをforkしてたら、全部open sourceにする必要があったかもしれないけど、Appleはそれを嫌ったんじゃないかな。" userName="skissane" createdAt="2025-04-06T01:41:13" color="">}}

{{<matomeQuote body="昔、NeXTがGCCをGPLで配布しようとしたけど、起動時にプロプライエタリな部分をリンクさせるってことを考えてたんだって。Stallmanが弁護士と話して拒否したらしいよ。sourceforge.net/p/clisp/clisp/ci/default/tree/doc/Wh…で”NeXT”を探してみて。" userName="mattl" createdAt="2025-04-06T01:55:59" color="">}}

{{<matomeQuote body="Stallmanが裁判官は自分に味方するって言い張ったのは、ちょっぴり傲慢じゃないかな。Oracle v. Googleの裁判とか見ると、裁判官が技術的なことを全然理解してないみたいだったし。" userName="leoh" createdAt="2025-04-06T04:46:46" color="">}}

{{<matomeQuote body="90年代後半の話だよ。Ubuntuなんて影も形もなかったし、デスクトップLinuxは機能も使いやすさもイマイチだった。<br>Appleには、NeXTStepを新しいカーネルに書き換えるお金も時間もなかったんだよ。開発チームの多くが、Appleのエンジニアリングや技術戦略の整理、Macみたいな機能の開発に忙殺されてたし。<br>当時AppleはPowerPCを使ってて、NeXTStepは対応してたけどLinuxは対応してなかった。IBMがLinuxを動かすまでに数年かかったしね。" userName="threeseed" createdAt="2025-04-06T01:56:58" color="#ff33a1">}}

{{<matomeQuote body="＞90年代後半、Ubuntu以前は、デスクトップLinuxは機能も洗練度もイマイチだった。<br>当時のLinuxの勢いは凄かったんだよ。常に画期的なことが起きてる感じで、メジャーアップデートの度に変化があってワクワクしたんだ。アップデートをダウンロードして試すのが本当にエキサイティングで、最先端にいる気分だった。システムはしょっちゅう壊れたけど、それもまた楽しかった。<br>Slashdotを毎日読んで、distrowatchで新しいディストリビューションが出るたびに試してたな。カーネルのビルドもよくやってたし。<br>LILOからGRUBへの変更、EXT2からEXT3への変更、OSSからASLAへのサウンドシステム変更、/sysの導入、Gentooのミーム、udev、Signalfd、Splice/VMsplice、初期のワイヤレスサポート、ndiswrapperとか色々あったなあ。<br>今のLinuxは安定してて、良い意味で”退屈”。歳をとって時間がなくなったのもあるけどね。昔はLinuxを常にいじってないと動かなかったけど、今は大体”動く”。Ctrl + Alt + Backspaceなんて、最後にやったのがいつだったか思い出せないよ。最後にワクワクしたのはio_uringかな。" userName="bigger_cheese" createdAt="2025-04-07T01:30:25" color="#45d325">}}

{{<matomeQuote body="FreeBSDからのアップデート頻度から考えると、AppleがLinuxをフォークしたらLinux 2.4みたいになるんじゃないかな？<br>オープンソースにとって何の損失があるんだろう？AppleがLinux 2.4にカーネルを移植するのと、FreeBSD 4.4に移植するのと、時間やお金は変わらないと思うけど。" userName="toast0" createdAt="2025-04-06T03:52:11" color="">}}

{{<matomeQuote body="GPLなら、改造した部分を公開する必要があるからじゃない？AppleはBSDの緩いライセンスを利用してるから、ただ乗りできてるんだよ。" userName="WD-42" createdAt="2025-04-06T06:18:23" color="#785bff">}}

{{<matomeQuote body="別の見方をすれば、また別のカーネルがメンテナンスされてるのは素晴らしいことだと思うよ。<br>もしAppleがDarwinをオープンソースにしたら、オープンソースにとって大きな勝利になるんじゃない？" userName="palata" createdAt="2025-04-06T11:13:19" color="">}}

{{<matomeQuote body="この記事にはたくさんの愛と努力が注ぎ込まれてるね。昔からこの業界にいて、NeXTSTEPのコードをWindowsに移植したり、GNUStepを試したり、YellowBoxやOpenStepを覚えたり、内部構造の本を読んだり、WWDCのコンテンツをよく見てるけど、この記事はほとんどのシステムの進化について、僕の記憶と一致してるよ。" userName="pjmlp" createdAt="2025-04-06T09:26:32" color="#ff5733">}}

{{<matomeQuote body="JobsがTorvaldsをMac OS Xの開発に誘ったけど、Linusは断ったんだって。macrumors.com/2012/03/22/steve-jobs-tried-to-hir…" userName="naves" createdAt="2025-04-06T11:01:45" color="#785bff">}}

{{<matomeQuote body="たぶんこれって、iOSがフォアグラウンドのアプリにバックグラウンドのアプリより多くのCPUパワーを割り当てるために使ってるブーストとかスロットルの元ネタだよね。目的としては、デーモンがクライアントアプリのために作業するときに、そのアプリの優先度を引き継ぐためなんだって。thread groupsとかworkloadsが何のためにあるのかは忘れちゃった。" userName="astrange" createdAt="2025-04-11T09:07:23" color="">}}

{{<matomeQuote body="I/O kitが速度のためにこのC++サブセットで書かれたのかどうかはわかんないな。当時、物議をかもしたことがあってさ。AppleがMacOS Xを発表して、今のソフトウェアと互換性がないって言ったんだよね。パートナーはみんなObjective-Cで書き直す必要があったんだ。これはうまくいかなかったんだよね。Appleは方針転換して、cppアプリケーションのためのAPIレイヤーの“carbon”と、objective-cベースのFramework“Foundation”の基盤となる“Core Foundation”を導入したんだ。Obj-c++がある理由もそれ。面白いのは、メモリ管理を無料にできたこと。C/cppの世界で割り当てられたオブジェクトを、余分なオーバーヘッドなしにobj-cに渡せるってこと。" userName="larusso" createdAt="2025-04-06T06:22:05" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="既存のC++ドライバをObjective-Cで書き直す代わりにIOKitに移植できるのは売りになるよね。なぜかObjective-CのシェルをC++で書くのが嫌いな人が多いみたいだけど。" userName="dcrazy" createdAt="2025-04-06T17:25:24" color="">}}

{{<matomeQuote body="今の時代と比べて、外部の会社がどれだけ多くのドライバを出荷・開発する必要があったか、過小評価してるんじゃない？ソフトウェア/ハードウェア会社にとっては大問題だったんだよ。" userName="larusso" createdAt="2025-04-07T04:01:40" color="">}}

{{<matomeQuote body="XNUの周りにもっと良いFOSSコミュニティを育てるべきだったよね。ARMに移行した今、x64用の実行可能なディストリビューションがあるべきだった。" userName="fithisux" createdAt="2025-04-06T05:44:38" color="">}}

{{<matomeQuote body="ダーウィンをこの深さで理解したいとずっと思ってたんだ。素晴らしい記事だね!" userName="whalesalad" createdAt="2025-04-06T01:11:29" color="#ff33a1">}}

{{<matomeQuote body="Singhの『Mac OS X Internals』は俺のお気に入りの本の一つ。10.4の頃のMac OS Xの詳細な調査が素晴らしい。アップデート版があれば本当に嬉しいな。<br>Edit：この記事の最後に引用されてるのを見つけた。まさに（macOS）時代の源だね。" userName="jshier" createdAt="2025-04-06T01:15:00" color="#ff5733">}}

{{<matomeQuote body="Jonathan Levinの3部作“*OS Internals”がそのアップデートだけど、Catalinaの頃にDarwinに関する作業と執筆をやめちゃったんだよね。" userName="wpm" createdAt="2025-04-06T02:41:02" color="#785bff">}}

{{<matomeQuote body="俺もWindows NTをこの深さで理解したいと思ってたんだ。Win32のことは飛ばして、その下にあるものを議論してくれ。俺の理解だと、Win32は単なる人格の一つに過ぎない。Windows XP時代にはWindows Services for UNIXがあって、Windows VistaにはSubsystem for UNIX-based Applicationsもあった。根底にあるNTカーネルは、POSIX準拠を可能にするほど柔軟なんだ。それは面白い読み物になるだろうね。" userName="kccqzy" createdAt="2025-04-06T01:37:24" color="#785bff">}}

{{<matomeQuote body="Windows Internalsって本がおすすめだよ。もっと古いのがいいならInside Windows NTがいいかも。もしくはWindows NT OS/2 Design Workbookもいいんじゃない？<br>Win32はただの機能の一つだけど必須なんだよね。OpenNTとかInterixとかSFUとかSUAもWin32と一緒に使えるし。もちろんOS/2もあったよね。" userName="p_ing" createdAt="2025-04-06T01:50:44" color="">}}

{{<matomeQuote body="100%同意。今はAzureのトップのRussinovichが、このシリーズの多くの本を書いてて、NTカーネルを書いたDavid Solomonも最初の頃のを一緒に書いてるんだ。最新版はWindows 10/Server 2016をカバーしてるから、めっちゃおすすめ。" userName="nunez" createdAt="2025-04-06T16:23:00" color="#ff5733">}}

{{<matomeQuote body="＞Win32はただの機能の一つって理解してたけど…<br>いや、NTは複数の”機能”を動かすように設計されたんだけど、開発の初期にWin32を”メイン”にすることにしたんだよね。だからOS/2とかPOSIXはWin32に頼る形になっちゃった。複数の機能っていうのは最初の理想だったけど、うまくいかなかったんだよね。WSL1は昔のOS/2とかPOSIXとは全然違うし、WSL2はただのLinuxのVMだし。" userName="skissane" createdAt="2025-04-06T01:51:02" color="#ff33a1">}}

{{<matomeQuote body="「NT（Windows 2000まで）には、キャラクタモードの16bit OS/2アプリを動かすOS/2サブシステムが搭載されてた」ってOS/2 museumに書いてあるよ。" userName="ForOldHack" createdAt="2025-04-06T06:19:25" color="">}}

{{<matomeQuote body="＞それって違うみたい。<br>いや、あんたが引用したコメントは正しいよ。あんたが言ってることの方が違う。<br>＞OS/2 2.0はNTのスキンと互換レイヤーで、OS/2向けに出た<br>それ勘違いしてるよ。OS/2はNTのスキンとかじゃなくて、完全に別のOSだよ。<br>NTがOS/2 2.0になるとか、OS/2 3.0になるとか言われてた時期もあったけど、最終的にリリースされたOS/2 2.0はNTとは全然関係ないんだ。IBMが独自に開発したもので、Microsoftは関わってない（初期段階は別として）。" userName="skissane" createdAt="2025-04-06T16:38:10" color="#785bff">}}

{{<matomeQuote body="WSL2はただのLinux VMで、POSIXサブシステムはただの間に合わせだって。NTにOS/2サブシステムがあったなんて聞いたことないな。Cutlerは激怒するだろうね。俺の壁にはUnix、Windows、Linuxの年表があるんだ。今はMacOS Xのもあるよ。機能はコンテナになったけど、これはWindows版の仮想化だね。コンテナはVirtualPCがベースだけど、Mark Russinivichの才能があったからこそ。" userName="ForOldHack" createdAt="2025-04-06T06:14:51" color="">}}

{{<matomeQuote body="＞NTにOS/2サブシステムがあったなんて聞いたことないな<br>NT 3.1からWindows 2000まであったんだよ。Windows XPからは削除されたけどね。サポートされてたのはキャラクタモードの16bit OS/2 1.xアプリだけ。32bitアプリはサポートされなかった。Microsoftは「Microsoft OS/2 Presentation Manager For Windows NT」っていう追加料金のアドオンを提供して、GUIアプリもサポートしてたけど（それでも16bit OS/2 1.xアプリだけ）。NTがOS/2になるはずだったから、互換性のために入れたんだよね。でもMicrosoftは32bit OS/2はサポートしなかった。コンテナとか仮想化は機能の後継だけど、アーキテクチャは全然違うよ。" userName="skissane" createdAt="2025-04-06T06:32:24" color="#ff5733">}}

{{<matomeQuote body="＞Microsoft Jazz workstations (in-house Microsoft workstation design using Intel i860 RISC CPUs)で動いてた<br>訂正：Microsoft Jazz machineはMIPSを使ってた。i860 machineはMicrosoft Dazzleだった。NT for MIPSは実際に出荷されたけど、NT for i860はMIPS portが使えるようになった時点で中止された。" userName="skissane" createdAt="2025-04-08T01:36:39" color="">}}

{{<matomeQuote body="32-bit appsは､IBMがOS/2 2.0で導入したけど､サポートされなかったんだよね｡<br>これは離婚が原因なのは明らかだけど､Cruiser APIが完成してなかったからでもあるんだ｡<br>＞最初のOS/2 APIセットは､進化中の32-bit Cruiser､つまりOS/2 2.0 APIセットを中心にしてるんだ｡(Cruiser APIsの設計はNT OS/2の設計と並行して行われてる｡)“<br>…<br>＞OS/2の設計(共同開発契約)の性質上､2.0 APIsの設計に影響を与えて､移植可能でx86以外のシステムにも実装できるようにするのはほとんど無理だったんだ｡“" userName="p_ing" createdAt="2025-04-06T12:03:18" color="">}}

{{<matomeQuote body="うん､これだよ｡https://computernewb.com/~lily/files/Documents/NTDesignWorkb..." userName="p_ing" createdAt="2025-04-07T11:42:56" color="#785bff">}}

{{<matomeQuote body="サンキュー！NT Design Workbookだね｡WRKの一部として配布されたやつだ｡<br>興味深いことに32-bit OS/2 APIのサポート(Dos32* APIs)について言及してる｡これって単なる計画倒れだったのか､それとも実装したけどNT 3.1のリリース前に削除したのかはわからないな｡<br>MicrosoftがOS/2 2.0のベータSDKを配布してたことを今知ったけど､MicrosoftのOS/2 2.0のプレリリース版は､最終的なIBM OS/2リリースに比べて色々欠けてるね｡特にWorkplace Shell (WPS)｡IBMは当初､WPSをOfficeVision for OS/2の一部としてリリースする予定だったけど､2.0の開発サイクルのかなり後半でコアOS/2製品に移行させたんだ｡" userName="skissane" createdAt="2025-04-08T02:44:56" color="#785bff">}}

{{<matomeQuote body="すごく詳しくて読みやすかったから､印刷して今日みんなに最後のOSリリースの違いを見せて､Snow Leopardについて語り合ったんだ｡Blue BoxがRosettaになって､Rosetta IIがIntelからARMへの移行で同じことをしたって誰も言わないよね｡<br>細かい点はいくつかあるけど､今までで一番だね｡(Rhapsodyとスウェーデン語のLinuxとNT 3.1から始めたんだ｡)(7100でMKLinuxを動かしてたけど､ビデオアクセラレーションはできなかった｡)" userName="ForOldHack" createdAt="2025-04-06T06:06:15" color="#ff5c5c">}}

{{<matomeQuote body="良い歴史だね｡でも､AppleのOSをLinuxやWindowsと区別する優れたセキュリティの取り組みをたくさん飛ばしてる｡Appleがセキュリティでどれだけ進んでるかっていう評価が足りないんだよな｡いつかこのことが認識されて､機密性の高い仕事をしてる人はCISOからMacを使うように言われるようになるんじゃないかな｡<br>重要なのはコード署名システム｡これのおかげでアプリに権限を与えたり､サンドボックス化したり､それを実際に維持できる｡AppleはほとんどのUNIXみたいにELFを使わず､Mach-Oっていう形式を使ってる｡ELFとMach-Oの違いは､Mach-Oが署名済みコードディレクトリを含む追加のセクションをサポートしてること以外は重要じゃない｡" userName="mike_hearn" createdAt="2025-04-06T11:14:21" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
