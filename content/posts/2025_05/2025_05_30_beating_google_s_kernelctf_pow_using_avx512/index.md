+++
date = '2025-05-30T00:00:00'
months = '2025/05'
draft = false
title = 'Google kernelCTF PoWをAVX512で攻略！'
tags = ["CTF", "AVX512", "高速化", "プログラミング", "CPU"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> Google kernelCTF PoWをAVX512で攻略！

引用元：[https://news.ycombinator.com/item?id=44137715](https://news.ycombinator.com/item?id=44137715)




{{<matomeQuote body="これクールだね！<br>このやり方、AVX-512で最適化したRSAの実装とすごく似てるよ、そっちも超でかいべき乗をやんなきゃいけないからさ．<br>この論文［1］にRSAがどうウィンドウ処理をやってるか載ってるんだけど、ウィンドウサイズがどんな値でも大丈夫な式も含まれてる．<br>ただ、AVX-512のRSA実装がもう一つやってることは、［0..2＾｛window-size｝）の範囲の掛け算結果をテーブルに保存しておくことなんだ．で、各ウィンドウではその結果をテーブル［2］から取ってきて、あとはシフトとか再配置だけやればいいわけ．<br>1． https：//dpitt．me/files/sime．pdf （ジャーナルから持ってきたから自分のドメインに置いてる）<br>2． https：//github．com/aws/aws-lc/blob/9c8bd6d7b8adccdd8af4242e0．．．" userName="pittma" createdAt="2025/05/30 18:01:08" color="#ff5733">}}




{{<matomeQuote body="おー、興味深いね．開発中にこれ見とくべきだったな．．．<br>あのコード、Zen 5とか用に別のバージョン作ったら絶対いいと思うよ、zmmレジスタ使えば掛け算のスループットが2倍になりそうだし．maskレジスタをGPRにバウンスさせて演算してるけど、Zen 4/5だとこれは最適じゃないんだよね．<br>あと別に気になるんだけど、キャリーって本当に一回のステップで伝播させる必要あるのかな．（少なくとも僕にはそう見えたんだけど？）ハイ側の12ビットに既にあるキャリーを超えて、入力キャリーがさらにキャリーアウトを生む可能性ってすごく低いんだよね．だから僕のコードでは、キャリーは一度だけ発生すると仮定して、必要ならループバックしてる．これだと一般的なケースでのレイテンシが減るんだ．ブランチがあるとタイミング攻撃の問題はあるかもだけど．" userName="anematode" createdAt="2025/05/30 18:59:38" color="#ff5c5c">}}




{{<matomeQuote body="ymmsを使ったのは意図的だよ！フル幅のレジスタだと、IFMA命令が周波数に悪い影響を与えるんだ、少なくともIcelakeの頃はね．" userName="pittma" createdAt="2025/05/30 19:21:52" color="">}}




{{<matomeQuote body="うん、だからその問題がないCPU用に別のバージョンが必要ってことだね．それにしても、こんなRSAカーネルをいっぱいメンテするのは大変そうだ．あのコード書いたのが君だって知らなかったよ；実際に使われてるって超クールだね！" userName="anematode" createdAt="2025/05/30 19:37:13" color="">}}




{{<matomeQuote body="私がオリジナル作者じゃないんだー<br>これは私がリンクした論文の著者、Shay Gueronさんの実装を改変したものなんだよ、でもクールだって意見には同意！" userName="pittma" createdAt="2025/05/30 19:43:50" color="">}}




{{<matomeQuote body="zen5はavx512をほぼフルブーストクロックで実行できるよ： https：//chipsandcheese．com/p/zen-5s-avx-512-frequency-behavi．．．" userName="hnuser123456" createdAt="2025/05/31 01:15:20" color="#45d325">}}




{{<matomeQuote body="＞dpitt．me/files/sime．pdf （ジャーナルから持ってきたから自分のドメインに置いてる）<br>archive．orgにもアップロードできるよ： https：//archive．org/download/sime_20250531/sime．pdf" userName="ignoramous" createdAt="2025/05/31 20:12:00" color="">}}




{{<matomeQuote body="何かおかしいな<br>＞．．．コンシューマーCPUでも数世代にわたってサポートしてるのに［AVX512］．．．<br>うーん、どうかな．Rocket Lake（11th gen）より前は、AVX512はそういうエンスージアスト向けCPUとかXeon CPU、あとは一部のモバイルプロセッサ（これは正直コンシューマーCPUとは言い難い）でしか使えなかったんだ．<br>12th gen（あのパフォーマンス・効率コアのコンセプトね）では、数ヶ月でそういうコアでは無効化されちゃって、その後全然見なくなったし．<br>でも正直確信してるんだけど、AMDがAVX512でそれなりに成功したら、Intelはまた再導入すると思うよ．<br>ちなみに、僕はまだIntel i9-11900 CPUをここで使ってるよ．；）" userName="SunlitCat" createdAt="2025/05/30 17:49:25" color="#ff5c5c">}}




{{<matomeQuote body="いい発見だね！本当にそうなることを願ってるよ、Intelの数ヶ月前の更新されたAVX10ホワイトペーパー［1］もこれを裏付けてるみたい．<br>PコアとEコアの両方で512ビットAVXが標準になるとはっきり書いてあって、256ビットのみの構成から移行するって．<br>これはAVX-512がサーバーだけでなく、Eコア搭載の将来のコンシューマーCPUでも本格的に復活することを強く示唆してるね．たぶんAMDのより広いAVX-512採用に追いつこうとしてるんだろう．<br>［1］ - https：//cdrdv2．intel．com/v1/dl/getContent/784343 （PDF）" userName="oparin10" createdAt="2025/05/30 21:36:40" color="#45d325">}}




{{<matomeQuote body="いいね発見！本当にそうだといいな、AVX512は弄ってて面白いし、将来、特にAIとかその周りのものでもっと大きな役割を果たすって確信してるからさ！" userName="SunlitCat" createdAt="2025/05/31 02:39:04" color="">}}




{{<matomeQuote body="12世代（P/Eコア）のAVX512はPコアにだけあったけど、Eコアにはなくて全体としてはサポート無しになったって話ね。BIOS設定でEコア無効にするとPコアで使える裏技もあったけど、Eコア諦めなきゃいけなかったんだよ。" userName="Aurornis" createdAt="2025/05/30 20:23:54" color="#38d3d3">}}




{{<matomeQuote body="個人的には、これってIntelの機能不全のサインだと思うんだ。AVX512命令を使ったらPコアに切り替えるとかできたはずだし、AMDみたいにZen4やZen5 Cコアでサポートできたはずだよ。PコアとEコアで命令セットが違うってのが、別々のチームが競争してる結果だよね。" userName="adgjlsfhk1" createdAt="2025/05/30 20:38:31" color="#45d325">}}




{{<matomeQuote body="＞AVX512でPコアに切り替えられたはず<br>いや、そうでもないよ。OSのスケジューラはP/Eコアだけでも大変なのに、CPU機能で動的にタスク移動させるのは無理ゲーでしょ。＞AMDみたいにサポートできた<br>AVX512の問題は幅広ユニットだけじゃなくて、めっちゃデカいレジスタファイルが必要なことなんだ。AVX2の4KBから16KBに増えるし、リネーム用にもいっぱい必要になるんだよ。" userName="pitust2" createdAt="2025/05/30 21:32:56" color="#ff5c5c">}}




{{<matomeQuote body="＞巨大なレジスタファイルが必要なこと<br>いや、全部が必要なわけじゃないよ。EコアがAVX512をサポートするとして、レジスタの半分はL2キャッシュに置いとくとかでも良かったんじゃないかな。" userName="adgjlsfhk1" createdAt="2025/05/31 02:37:31" color="">}}




{{<matomeQuote body="あとZen4CはGracemontより35％くらい大きいだけなのにAVX512サポートしてるよ（TSMCノードの分を考慮してもね）。これはIntelのEコアとは最適化が違うけど、AVX-512がそこまで大きくなく実装できるってことだと思うんだ。それかIntelはAVX-10を8年もウロウロしてないでもっと早く出すべきだったんだよ。" userName="adgjlsfhk1" createdAt="2025/05/31 05:54:16" color="#ff5c5c">}}




{{<matomeQuote body="Pコアだけで有効にする別チェックを設けて、スケジューリングは開発者に任せれば良かったのにね。LinuxにはそういうAPIがあると思う（macOSにはあるから）、Windowsは分かんないけど。" userName="conradev" createdAt="2025/05/31 01:19:06" color="">}}




{{<matomeQuote body="OSレベルでスレッドにパフォーマンスと効率のプロファイル導入すればいいじゃん。なんでCPUってISAとか細かいとこで異なってる必要があるんだろ？" userName="fc417fc802" createdAt="2025/05/31 01:14:44" color="">}}




{{<matomeQuote body="コア全体を切り替える必要ないよ。EコアがPコアのAVX512回路だけ借りることもできたんじゃない？" userName="charcircuit" createdAt="2025/05/31 10:00:10" color="">}}




{{<matomeQuote body="＞AVX512でPコアに切り替え<br>これはOSの仕事だよね。メインフレームとかスパコンの世界やBSDで四半世紀前に解決済みの問題だよ。超シンプル。各CPUがサポート機能リスト出して、スケジューラがプログラムの使う機能を追跡。特定の機能が必要なら、サポートしないCPUにはスケジュールしないってだけ。昔、違うCPU載せたことあるけどちゃんと動いたし、スケジューラ変えればもっとうまくできるなって思ったんだ。" userName="johnklos" createdAt="2025/05/31 16:17:10" color="#ff5c5c">}}




{{<matomeQuote body="最高じゃん！こういうの読むのめっちゃ好きなんだよね、特にAVX512いじってる話とかさ！" userName="SunlitCat" createdAt="2025/05/31 02:41:06" color="">}}




{{<matomeQuote body="優勝チームは3.6秒だったけど、2位は3.73秒（優勝タイムに合わせるなら3.74秒）。ってことは、2位もPoW最適化してたのかな？それともFPGAだった？<br>筆者が言ってた前の高いFPGAでの提出は4秒以上かかってたって言うし。<br>今回の2位が史上2番目に速いかもしれないこととか、なんか触れててもよさそうなのにね？" userName="fitzn" createdAt="2025/05/31 00:24:13" color="#ff5733">}}




{{<matomeQuote body="画像に(dupe)って書いてあるね。たぶんOPのチームが、自分たちで複数回並行して提出しようとしたんじゃない？" userName="underdeserver" createdAt="2025/05/31 06:27:52" color="#45d325">}}




{{<matomeQuote body="記事から引用ね：「サーバーに接続してexploitできて、Google Formにフラグを提出できた最初のチームだけが報酬を受け取れる。その後の提出は全部duplicate（複製）ってマークされるんだ。”" userName="yorwba" createdAt="2025/05/31 13:23:09" color="#45d325">}}




{{<matomeQuote body="すごいことだけど、なんか最適化する方向が違う気がするな。<br>CTFって提出操作の競争であるべきじゃないでしょ。提出期間内にフラグ送れたチーム全員で賞金分け合った方が、みんなにとって絶対良いよね。" userName="bluelightning2k" createdAt="2025/05/30 18:24:08" color="#ff33a1">}}




{{<matomeQuote body="これって、exploit見つけてもすぐ報告しないで温存しようって気になると思うんだ。<br>今回の提出タイミングの小細工抜きにしても、今回ダメだったら次に提出しようって考えるだろうしね。<br>だから、積極的に”間違った”ことを奨励してるのかも。" userName="kimixa" createdAt="2025/05/30 20:17:47" color="#ff5733">}}




{{<matomeQuote body="それは別のメタゲームになっちゃうね。<br>深く考えてないけど、たぶんその結果、みんなやる気なくしてkernelCTFに提出しようとか思わなくなるんじゃないかなって思うけど。" userName="rfoo" createdAt="2025/05/30 18:42:04" color="#38d3d3">}}




{{<matomeQuote body="まあ、でもぶっちゃけ、どのCTFにもこういうのあるっちゃあるよね。" userName="saagarjha" createdAt="2025/06/01 11:00:49" color="">}}




{{<matomeQuote body="じゃあ俺が理解してるのが正しければー、これって4秒のproof of workで、報酬は月に1回？<br>そんなにexploitってたくさんあるもんなの？みんな毎月競争するくらい？" userName="bawolff" createdAt="2025/05/30 17:12:45" color="">}}




{{<matomeQuote body="サーバーは2週間ごとにオープンだったんだ。<br>proof of workは、接続リクエストをスパムみたいに送りまくるインセンティブを減らすために、少しだけ接続を遅くするのが目的だった。<br>公開CTFって難しいよね、どうしてもどこかのチームがゴール争いの一環でDDoSみたいなこと試したりするからさ。<br>Googleはこれの後、proof of workのステップをなくしたんだよ。" userName="Aurornis" createdAt="2025/05/30 20:44:23" color="#ff5c5c">}}




{{<matomeQuote body="これってローカル権限昇格（一般ユーザーからrootになるやつ）のエクスプロイトであって、リモートコード実行じゃないんだよね。権限昇格のバグなんて掃いて捨てるほどあるし。" userName="dist-epoch" createdAt="2025/05/30 17:57:39" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これuser namespaceも必要だと思うんだよね。tc qdisc操作にrootいるから。namespace内かrootデーモン頼みかな（たぶん無理？）。user namespaceはrootだけのAPIを一般ユーザーに公開しちゃって、EoPの攻撃面を広げたんだ。Androidにuser namespaceは無いし、Linuxでも無効な場合ある。でも最近は有効なとこも増えてる。そうそう、kernelCTFがuser namespace無効にするって発表したよ。エクスプロイト多いなら良いかもね。リンク：https://github.com/google/security-research/commit/7171625f5..." userName="singron" createdAt="2025/05/30 20:56:25" color="#45d325">}}




{{<matomeQuote body="まあ、ほとんどのソフトウェアはホストOS上で動いてるよね。サードパーティ開発者のソフトウェアの脆弱性は、たとえカーネルを拡張してても範囲外なんだよ。ネットワークタスクの一部はカーネルに任されてるけど、本当にヤバいもののほとんどはコアカーネルにはないよ。" userName="internetter" createdAt="2025/05/30 20:55:46" color="">}}




{{<matomeQuote body="その神話も少しは本当かもね。平均的なWindowsエクスプロイトの影響はLinuxより高かったんだ。NTじゃないWindowsはベストプラクティス使ってなかったから。何年もネットワークで待機してるだけでRCEされるWindowsデーモンがあったし（Confickerとか）。Microsoftがセキュリティ優先決めてからセキュリティは向上したよ。NTカーネルを一般向けWindowsに使い始めた頃かな。あと、セキュリティリスクには「可能性」と「影響」って要素があるのに、神話はこれを無視してる。二つを混同するから混乱するんだよね。変なCVEスコアの時みたいに。" userName="thephyber" createdAt="2025/05/30 18:48:00" color="#38d3d3">}}




{{<matomeQuote body="＞MicrosoftがNTカーネルを一般向けWindowsで再利用し始めたのと同じくらいの時期だったと思う。<br>もっと後だよ。Windows XPは2001年にNTカーネル使ってたけど、Confickerは2008年だったからね。" userName="bonzini" createdAt="2025/05/30 19:24:24" color="">}}




{{<matomeQuote body="大学の寮で、パッチ当ててない状態でOSインストールすると、ワーム（たぶんNimda？）に感染するのがパッチダウンロードするより速かったから、XPのサービスパックのCDコピーを焼いて、完全にオフラインでインストールした思い出があるよ。" userName="aidenn0" createdAt="2025/05/31 04:55:29" color="">}}




{{<matomeQuote body="Linuxが成熟期（2000年頃）の頃，Windowsのsecurityはマジひどかったんだ．同時にWindowsマシンの方がLinuxより圧倒的に多かった．その＃１と＃２が合わさって，Windowsがめっちゃattractiveなtargetになって，exploits for Linuxはあんまり無かったんだよ．" userName="aidenn0" createdAt="2025/05/30 18:15:59" color="#785bff">}}




{{<matomeQuote body="忘れないでね：４．Poor binary compatibility made it seem like wormsはimpossible，あとtwenty years ago，most dangerous cyberattacksはhose as many PCs as possible designedな”pranks”だったんだ．" userName="rhet0rica" createdAt="2025/05/30 18:29:14" color="">}}




{{<matomeQuote body="Linuxで？C/C＋＋ compiled with dynamic linkingはglibcバージョン違いで問題あったけどstatic compileもできたよ．LGPL的には”not ok”でclosed sourceにしたい開発者には問題だったけど，malicious worm creatorならGPL/LGPLなんて気にしないだろうから絶対できたはず．LinusはABI壊さないよう厳しかったし．" userName="whizzter" createdAt="2025/05/30 21:02:42" color="#45d325">}}




{{<matomeQuote body="Yeah．Emphasis on the ”seem” part．A false sense of security Brought on by，”If binary artifacts for package _foo_ can’t be ported between distros，what chance do worms have？” plus the even older memory that the Morris worm had been designed around （and limited to）certain target platforms and architectures：https：//en.wikipedia.org/wiki/Morris_worm" userName="rhet0rica" createdAt="2025/05/30 22:28:15" color="#38d3d3">}}




{{<matomeQuote body="<br>＞ dynamic linking often had issues due to glibc versions diffing<br>これはexploit authorsとしてもannoyingだったね．Like an early form of ASLR．" userName="bobmcnamara" createdAt="2025/05/31 04:49:54" color="">}}




{{<matomeQuote body="I thought when people say ”Linux security is a myth” they were comparing it to FreeBSD ／ OpenBSD．So it’s revealing that most are comparing Linux to Windows here．" userName="rfoo" createdAt="2025/05/30 18:51:54" color="">}}




{{<matomeQuote body="Also，Microsoft was pushing hard into the workstation and server market in the late ’90s．I remember an ad that showed someone who had painted themselves into a corner with paint the shade of purple that Sun used in its branding with the slogan something like ”we have the way out．”" userName="aidenn0" createdAt="2025/05/30 23:54:21" color="#ff33a1">}}




{{<matomeQuote body="A myth propelled by people who don’t understand security continually saying ”Anyone can read the code，therefore it’s more secure”．" userName="landr0id" createdAt="2025/05/30 18:01:51" color="">}}




{{<matomeQuote body="Most of the serious security researchers，such as Daniel Micay（lead developer of GrapheneOS），have been quite vocal ［0］ on how insecure linux is．<br>［0］ ー https：//old.reddit.com/r/GrapheneOS/comments/bddq5u/os_secur..." userName="udev4096" createdAt="2025/05/30 19:17:38" color="#45d325">}}




{{<matomeQuote body="Flatpakが最初からダメな理由とか，MAC批判についてもっと詳しく知りたいなー．FedoraはFlatpakについて色々やってるのに，記事には触れられてないね．Waylandがデスクトップのセキュリティで進歩した点もなんで認めないんだろ？かなり大雑把な見方だね．" userName="spookie" createdAt="2025/05/30 20:35:11" color="#38d3d3">}}




{{<matomeQuote body="macOSをめっちゃ褒めてLinuxをけなすのに，macOS由来のsystemdを嫌うのは皮肉だよね．<br>Flatpak嫌いも謎だけど，サンドボックスが使いにくいってことかな．Flatpakはネイティブメッセージとかテーマ，フォルダアクセス，貼り付けとか色々壊れるんだよ．厳しすぎるサンドボックスだね．" userName="jorvi" createdAt="2025/05/30 23:59:29" color="#ff5c5c">}}




{{<matomeQuote body="そうかなー？バグと機能の比率が大事なんじゃない？バグなし機能なしのシステムも良いけど，僕たちにはやるべき仕事があるしね．" userName="JackSlateur" createdAt="2025/05/30 19:33:44" color="">}}




{{<matomeQuote body="すごい成果だけど，この課題に勝つための障害を見るとコメディみたいに読めるね．リアルなルーブ・ゴールドバーグ装置だよ．" userName="mmsc" createdAt="2025/05/30 18:36:31" color="">}}




{{<matomeQuote body="この記事で言及されてるbase-52表現についてもっと知りたいなら，今日のフロントページのこの記事も見てみてね： https：／／news．ycombinator．com／item？id＝44132673" userName="dcrazy" createdAt="2025/05/30 18:13:18" color="#785bff">}}




{{<matomeQuote body="細かい指摘なんだけどさ： static linkはinliningはしてくれないよ．PLTのオーバーヘッドを無くすだけ．inliningの機会を増やしてくれるのはLTOだよ．" userName="mshockwave" createdAt="2025/05/31 06:24:02" color="#38d3d3">}}




{{<matomeQuote body="Willと相談して，彼が何をして直したか正確に確認したよ，サンクス！" userName="anematode" createdAt="2025/05/31 16:22:00" color="">}}




{{<matomeQuote body="なんでレース形式なの？ユニークなexploitごとに支払えばいいんじゃない？" userName="vlovich123" createdAt="2025/05/30 18:31:16" color="#ff5733">}}




{{<matomeQuote body="上司はあのカッコいいプログラムを動かすのに厳格に固定された予算を求めてるんだ．これらのプログラムの根拠（少なくとも部分的だけど）は，バグを買うんじゃなくて，exploitと緩和策のダイナミクスを測定することなんだよ．Linuxはバグ多すぎて，ゼロデイ全部に金払うとぶっちゃけ制御不能になる．Googleは昔一度試したけど，ゼロデイがどっと押し寄せちゃって大変だったんだ．<br>コミュニティも怒らせたくないしね．だからこのレース形式になったんだよ．" userName="rfoo" createdAt="2025/05/30 18:36:35" color="#ff5733">}}




{{<matomeQuote body="Googleが4秒の猶予を作るのにPoW入れなきゃならんほどLinux kernelのセキュリティってマジヤバいなら、Androidのベースに使い続けるの平気なのかよってビックリだわ。" userName="0x0" createdAt="2025/05/30 19:22:05" color="">}}




{{<matomeQuote body="Androidはすっげー改良されてて良いバージョンのLinux kernel使ってんだぜ。これ見てみなよ。https://old.reddit.com/r/GrapheneOS/comments/bddq5u/os_secur..." userName="udev4096" createdAt="2025/05/30 19:29:24" color="">}}




{{<matomeQuote body="それってさ、userspaceの話ばっかじゃん？" userName="kimixa" createdAt="2025/05/30 20:21:00" color="">}}




{{<matomeQuote body="全部じゃないって。例えばkCFIはkernel spaceだし。あと攻撃対象領域を減らすのも超有効な戦略なんだよね。userspace（アプリごとのsandboxとか）の話に見えても、kernelの攻撃対象がどれだけ晒されるかにすごい差が出ることもあるんだ。" userName="rfoo" createdAt="2025/05/30 20:47:48" color="">}}




{{<matomeQuote body="うん、でもCFIの概念ってそのスレッド全体でちょっと触れられてるだけだし、使われてるkCFIの実装はAndroid独自じゃなくて普通のkernel機能じゃん。あれって「Distroのkernel設定が最適じゃないかも」って話であって、AndroidとVanilla Linux Kernelの差ってわけじゃないだろ。" userName="kimixa" createdAt="2025/05/30 21:16:49" color="">}}




{{<matomeQuote body="いや、Android以外でkCFIが有効になってるDistro、俺知らないけど？だってClangでbuildする必要あるし。前のin-kernel CFI実装（kCFIになる前）もGoogleがupstreamしたんだぜ。https://www.phoronix.com/news/Clang-CFI-Linux-Patches<br>https://www.phoronix.com/news/Linux-Kernel-Clang-LTO-Patches<br>Pixelデバイスも前からこれ使ってたし。Linux kernelの機能全体がAndroidから開発されたってのに、「Vanilla kernel feature」って呼ぶのはちょっと不公平じゃね？" userName="rfoo" createdAt="2025/05/30 21:29:25" color="#38d3d3">}}




{{<matomeQuote body="まあでもさ、Shared open source kernel使う一番の意義って他のユーザーも恩恵を受けられることじゃね？「誰が最初に追加したか」みたいな議論って不毛なneedless tribalismみたいで意味なくない？Android kernelだってGoogleが開発したわけじゃない機能いっぱい使ってるじゃん。それってGoogleはそれらの機能を開発できなかったってこと？それとも既存のがあるならわざわざ並行して作る意味ないだけ？" userName="kimixa" createdAt="2025/05/30 21:42:04" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ここでのpointは「誰がLinux kernelに最初に追加したか」じゃないんだよ。Androidがsecurityをcareして、CFI実装作って2018年にはもうshippingしてたってこと。一方でLinuxは他のprioritiesあって2021年まで無かったし、しかもeven then almost nobody adopted it。" userName="rfoo" createdAt="2025/05/30 21:51:31" color="">}}




{{<matomeQuote body="Alternativeってあんの？I suspect all modern kernelsはmore or less just as vulnerable？Googleはhttps://fuchsia.dev/始めたけど、これってthis problemへのhedgingなのかな？でもfully-featured OS作るのってa huge undertakingじゃん。especially if you need compatibility with existing apps and a wide variety of hardware。" userName="kevincox" createdAt="2025/05/31 00:40:24" color="">}}




{{<matomeQuote body="Other alternativeでefficient、feature complete（*）でmore secureなのは？（*）例えば、AndroidはSELinux使ってappsをconfineしてるし、virtual machines（pKVM）でDRM codeをrunしてる。こういうの全部increase the overall security of the systemしてdecrease the cost of kernel bugsなんだよね。だから、not easy to evaluateなtradeoffがあるんだ。" userName="bonzini" createdAt="2025/05/31 05:16:55" color="#ff5733">}}




{{<matomeQuote body="Googleはレースをやってるわけじゃないって。有効な提出をした人に払ってるだけだよ。競争してるのは提出者側で、他の人より先にってエクスプロイトを貯め込んでるんだ。もし利他主義者なら、報酬なしで提出するはずだよね。だからレースはGoogleがやってることじゃないんだ。PoWも”four second race”を加えるためじゃなくて、ddosみたいなスパムを防ぐためだよ。" userName="imtringued" createdAt="2025/05/31 08:13:30" color="#38d3d3">}}




{{<matomeQuote body="そのfloodについて、どこかにもっと詳しい情報ある？ how many teams？ how many submissions？ how many unique？ how much money G paid out？" userName="pas" createdAt="2025/05/30 19:49:57" color="">}}




{{<matomeQuote body="Eduardoのtweetで、プロモ開始直後に0day submissionsが大量に来たって。<br>https://x.com/sirdarckcat/status/1681491274489282565<br>public spreadsheet ［0］で見ると、開始直後unique bug 7つ、その後の1ヶ月で9つ。 paid amountは覚えてないけど、total $200~300kかも。［0］ https://docs.google.com/spreadsheets/d/e/2PACX-1vS1REdTA29OJ..." userName="rfoo" createdAt="2025/05/30 21:10:55" color="#785bff">}}




{{<matomeQuote body="Can anyone tell me how they equated the Python function in the blog to what was shown in the Google’s POW implementation？ Seems a little difficult to follow." userName="supriyo-biswas" createdAt="2025/05/30 18:01:12" color="">}}




{{<matomeQuote body="Google codeの”exponent = (p + 1) // 4”は2の1277乗だよ。huge powerにraiseするには、それを1277回squareする（Python functionがこれ）。initial valueが”x”なら、squareごとに”x”の数がdoubleして、最後に2の1277乗になるから成り立つんだ。" userName="bonzini" createdAt="2025/05/30 19:36:32" color="#ff33a1">}}




{{<matomeQuote body="Awesome。Just when I was starting to wonder if we finally had a chance to thwart L7 attacks using these PoW tricks。" userName="ramshanker" createdAt="2025/05/30 17:36:02" color="">}}




{{<matomeQuote body="I think it’s something like this https://github.com/timlrx/tailwind-nextjs-starter-blog<br>basically nextjs + tailwind + mdxだね。" userName="Brybry" createdAt="2025/05/30 21:17:50" color="">}}




{{<matomeQuote body="マジで最高！" userName="davidfiala" createdAt="2025/05/30 16:32:26" color="">}}




{{<matomeQuote body="投稿数を減らす基準としてなんか変な気がするな。現実世界じゃエクスプロイトに4秒かかろうが6秒かかろうが関係ないでしょ。バグがいつ導入されたかとか、向こうがたくさん用意してるボーナス基準みたいな、もっと面白い別の基準を使えばいいのに？ 競争にするなんてやっぱ変だわ。" userName="IshKebab" createdAt="2025/05/30 17:27:56" color="#38d3d3">}}




{{<matomeQuote body="ゴミみたいな投稿を抑えるために、ある程度の投稿難易度があるのはわかるけど、これはちょっとやりすぎなんじゃない？ Googleが自社に関係ある高品質なバグに対して、50k払おうが50kx2払おうが、そんなに大差ないと思うんだけど。" userName="Havoc" createdAt="2025/05/30 16:57:46" color="#ff5c5c">}}




{{<matomeQuote body="だろ？ これって、有効な攻撃手法を開発したのに、CTFの競争に勝てるように戦略を最適化してないからっていう理由で、それを公開するのをためらってる人がいるんじゃないかって印象を与えるんだよ。これって最適じゃない行動を生み出す、ひねくれたインセンティブみたいだわ。" userName="jameshart" createdAt="2025/05/30 17:05:04" color="#785bff">}}




{{<matomeQuote body="だから彼らはそれを取り除いたんだよ。" userName="Retr0id" createdAt="2025/05/30 17:11:59" color="">}}




{{<matomeQuote body="いや違うよ。Googleは今でも提出サイクルの間に長い期間を設けてるし、人々は次のサイクルで勝てることを期待して、まだ自分のエクスプロイトを出し惜しみしてるよ。今はPoWを最適化するんじゃなくて、単なる運の問題になってるだけさ。" userName="markasoftware" createdAt="2025/05/30 17:14:58" color="#ff5733">}}




{{<matomeQuote body="でもまだ競争ではあるんだよ。だからproof of workの実装を最適化することで不正はできないけど、人々はまだ優位性を探そうとするだろうね。彼らはCTFのエキスパートで、システムを攻略するのが彼らの仕事だからさ。" userName="jameshart" createdAt="2025/05/30 17:16:55" color="#ff33a1">}}




{{<matomeQuote body="＞ Googleが自社に関係ある高品質なバグに対して、50k払おうが50kx2払おうが、そんなに大差ないと思うんだけど<br>君は重要な実装の詳細を無視してるよ。このプログラムを運営してるのはGoogle全体じゃなくて、固定予算と限られた人員で、手持ちのリソースでベストを尽くしてる社内の特定のチームなんだ。<br>君の主張は「アメリカはGDPが何兆ドルもあるんだから、癌の子供たちに無料治療を倍の数提供できるはずだ」っていうのと似てるよ。全体で見れば妥当に聞こえるけど、具体的な話になると破綻するんだ。個別の病院システム、チーム、医療提供者は今、能力の限界に近いところで働いてるんだから。" userName="overfeed" createdAt="2025/05/30 18:41:35" color="#ff5c5c">}}




{{<matomeQuote body="別に何も無視してたわけじゃないよー。知らなかっただけ。Googleの社内財務がどうなってるかなんて知らないし…。" userName="Havoc" createdAt="2025/05/31 00:02:14" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
