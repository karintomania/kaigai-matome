+++
date = '2025-05-07T00:00:00'
months = '2025/05'
draft = false
title = 'Postgres 18への期待 非同期I Oがディスク読み取りを高速化'
tags = ["Postgres", "データベース", "パフォーマンス", "非同期I O", "OSS"]
featureimage = 'thumbnails/red1.jpg'
+++

> Postgres 18への期待 非同期I Oがディスク読み取りを高速化

引用元：[https://news.ycombinator.com/item?id=43916577](https://news.ycombinator.com/item?id=43916577)




{{<matomeQuote body="Postgresってマジすげープロジェクトだよね、メンテナーやコミュニティに超リスペクト！<br>個人的にはLinuxに次いで、ビジネステック界で2番目に影響力あるOSSプロジェクトだと思うな。<br>マジ公共財って感じで、大切にして褒め称えるべき。" userName="drdrek" createdAt="2025/05/08 07:52:36" color="">}}




{{<matomeQuote body="これ以上ない最高の推薦文だよね。前にSQLiteの主要作者 Richard Hipp氏のプレゼンで聞いたフレーズでさ。<br>新しい機能とかデザインを決める時に参考にしてるのが『Postgresならどうする？』なんだって。" userName="belter" createdAt="2025/05/08 13:46:13" color="#785bff">}}




{{<matomeQuote body="最近テキストデータ使うMLプロジェクト始めたんだけど、MySQLかPostgresかで悩んでさ。<br>それぞれの機能とか pros and cons 見たら、Postgresにすぐ決まったよ。<br>pgvectorとか https://postgresml.com も使えるし、さらにPostgres選びやすかったね。" userName="freilanzer" createdAt="2025/05/08 09:20:49" color="#45d325">}}




{{<matomeQuote body="Postgresで十分って話:<br>https://gist.github.com/cpursley/c8fb81fe8a7e5df038158bdfe0f..." userName="cpursley" createdAt="2025/05/08 11:15:10" color="">}}




{{<matomeQuote body="逆でしょ、なんでMongoDBなの？<br>ACID compliantじゃないから major down sides あるよ…" userName="ricw" createdAt="2025/05/08 12:21:53" color="#ff5c5c">}}




{{<matomeQuote body="MongoDBによると ACID compliant らしいよ。<br>https://www.mongodb.com/resources/products/capabilities/acid..." userName="okeuro49" createdAt="2025/05/08 14:43:19" color="#38d3d3">}}




{{<matomeQuote body="Linuxには preadv2(..., RWF_NOWAIT) ってのもあるよ。<br>これ使うと page cache から optimistic non-blocking な読み込みができるんだ。<br>io_method = worker で latency をちょっと削るのに役立つかもね。<br>main threadで NOWAITで読んでみて、もしダメなら worker thread に offload する、みたいな。" userName="the8472" createdAt="2025/05/07 16:11:23" color="#38d3d3">}}




{{<matomeQuote body="俺も試したけど、ページキャッシュ参照が二倍になるオーバーヘッドが痛いみたい。呼出元が非同期で待てる時だけワーカーにIOオフロードするからコストを減らせるんだ。Lukasの投稿にもあるように、データがkernel page cacheにある時はワーカーへのオフロードが有利で、kernelからuserspaceへのコピーやPostgresのchecksum computationを並列化できるんだ。特にIntel server CPUsだとmemory bandwidthがpage cache accessやchecksum computationのボトルネックになることが判明したよ。" userName="anarazel" createdAt="2025/05/07 17:21:04" color="#ff5733">}}




{{<matomeQuote body="あー、そうだね。kernelとuserspace間で大きなファイルをワンショットでmemcpyするパフォーマンス出すのは驚くほど難しいんだよね。mmapはセットアップ/ティアダウンのオーバーヘッドがあって、ワンショット転送にはデカすぎるし、普通のread/write呼び出しはpage cacheとかページごとのオーバーヘッドに悩まされるんだ。kernelのlarge folio関連の作業が役に立つといいんだけどね。" userName="the8472" createdAt="2025/05/07 17:59:20" color="#38d3d3">}}




{{<matomeQuote body="俺が見た感じ、page cacheからの大きな読み込みではSMAPのオーバーヘッドが大きいみたい。clearcpuid=smapで起動すると（本番はNG！）、大きな読み込みがかなり速くなるんだ。IntelとAMD両方でね。Intelだと、最新HWでもコアあたりmemory bandwidthにすぐ達して、checkpointing processの書き込みやbuffer poolのprewarmingのような読み込みでボトルネックになることもあるんだ。" userName="anarazel" createdAt="2025/05/07 18:25:09" color="#45d325">}}




{{<matomeQuote body="＞ clearcpuid=smapで起動すると（プロダクションではダメだけど！）、大きな読み込みがかなり速くなるんだ。IntelとAMDのCPU両方で興味深いことにね。<br>最近のx86 CPUsからスループットを上げるために、”ハードウェアセキュリティ層を全部オフにする”みたいな設定をまとめたページとかどこかにないのかな？システムに攻撃される余地がほとんどない（例えばair-gappedで単一テナントのHPCとか）場合に使いたいんだけど。" userName="derefr" createdAt="2025/05/08 00:29:30" color="">}}




{{<matomeQuote body="kernel側には、それ全部のためのブートパラメータがあるよ: mitigations=off<br>追加のフェンスでコンパイルされたソフトウェアは、それらを削除するために再コンパイルが必要かもしれないね。<br>https://www.kernel.org/doc/html/latest/admin-guide/kernel-pa..." userName="the8472" createdAt="2025/05/08 09:24:43" color="#45d325">}}




{{<matomeQuote body="mitigations=offは、CPUのバグや”誤機能”で、OSのセキュリティ対策を回避するのに悪用される可能性があるものへの回避策を無効にするんだよ。<br>SMAPはOSのセキュリティ対策だから、mitigations=offでは無効にならないんだ。SMAPは特定のIOパフォーマンスにはかなり影響するんだけどね。俺的には、もっとよく知られるべきか、もっと分かりやすいオプションでカバーされるべきだと思うな。Linux kernel開発者はこういうオプションの定義とネーミングが本当に下手だよね。" userName="starspangled" createdAt="2025/05/08 14:02:14" color="#45d325">}}




{{<matomeQuote body="SMAPのオーバーヘッドはほぼ一定のはずだし、大きな読み込みで気づくほどだとしたらかなり驚きだな。小さな読み込みは話が別だけどね。" userName="amluto" createdAt="2025/05/08 00:29:30" color="">}}




{{<matomeQuote body="curiouslyなことに、逆なんだよ。読み込みが大きくなるほど（syscall一回でどれだけ読むか）とか、読み込みのターゲット領域が大きくなるほど（ターゲットメモリ位置が再利用されるまでどれだけかかるか）、SMAPのオーバーヘッドは大きくなるんだ。もし興味あるなら、いつか作ったリプロデューサーを掘り起こせるよ。" userName="anarazel" createdAt="2025/05/08 00:34:13" color="#ff33a1">}}




{{<matomeQuote body="TCMallocはmunmapせず、mmap(MAP_FIXED)してmadvise(MADV_FREE)でRSSを減らしてるんだ。ファイルI/Oでもこれ応用して、読み込み後のmunmapによるTLB shootdownsのコスト回避に役立つかも。MADV_DONTNEED使う手もあるけど、munmapよりコスト低いかも？アドレス空間が厳しくなるまでマッピング残して、その上からMAP_FIXEDするのもアリかもね。" userName="gregjm" createdAt="2025/05/08 20:55:57" color="#ff5c5c">}}




{{<matomeQuote body="最近はさ、こんなのもあるみたいだよ。 https://www.phoronix.com/news/Linux-RWF_UNCACHED-2024" userName="yxhuvud" createdAt="2025/05/07 19:04:21" color="">}}




{{<matomeQuote body="あれね、ユーザー空間とカーネルのメモリーコピーは速くならないんだよ。キャッシュの入れ替わりを減らすだけ。名前とは違ってページキャッシュは通るし、終わったらページを書き出して捨てる感じ。例えばtmpfsにコピーする時は、メモリー上にあるから全然違いが出ないんだ。" userName="the8472" createdAt="2025/05/07 19:21:13" color="#45d325">}}




{{<matomeQuote body="ってことはさ、このフラグをスキャンとかループのワークロードに使えるから、ページ置換アルゴリズムがスキャンに強くなくてもあんまり気にしなくてよくなるってこと？だよね？" userName="senderista" createdAt="2025/05/07 20:09:52" color="">}}




{{<matomeQuote body="最初からWALの書き込みと読み込みに追加するのがいいと思うな。普通の使い方ではもう他の読み込みは無いハズだし。" userName="gmokki" createdAt="2025/05/08 05:11:56" color="">}}




{{<matomeQuote body="AIOが使えるようになったんだから、将来どこかのタイミングでDirect IOが採用される可能性ってあると思う？" userName="gavinray" createdAt="2025/05/07 17:45:18" color="">}}




{{<matomeQuote body="「AIOが使えるようになったんだから、将来Direct IOが採用される可能性はあると思う？」<br>それは明確な目標だよ。今でもdebug_io_direct=dataで、色々な注意点付きでオンにできる。リードオンリーとかseqscan、bitmap index scanみたいな適切なワークロードなら、かなり大幅なパフォーマンス向上を見込めるよ。でも、v18だとまだ全然ダメだけどね。<br>少なくともこれらが必要：<br>- checkpointer、bgwriter、バックエンドのバッファ置換でのAIO書き込み（COPYでの大量データロードとかを想像して）<br>- readaheadのサポートをもう何箇所か、最も重要なのはインデックスレンジスキャン（ヒープがインデックスと相関してるなら今でも大丈夫だけど、そうじゃないと最悪）" userName="anarazel" createdAt="2025/05/07 17:57:49" color="#38d3d3">}}




{{<matomeQuote body="ClickHouseデータベースでの使い方を見てみて。https://github.com/ClickHouse/ClickHouse/blob/d2697c0ea112fd...<br>特定のLinuxカーネルバージョンでいくつか問題はあるけど、すごくうまく動いてるよ。" userName="zX41ZdbW" createdAt="2025/05/07 17:23:01" color="#ff5733">}}




{{<matomeQuote body="この新しい非同期I/O機能ってLinuxだけなの？WindowsにはIOCPがあるし、最近は独自のIORing実装もあるよね（macOSの機能はPOSIX AIOくらいしか知らないな）。https://learn.microsoft.com/en-us/windows/win32/api/ioringap...<br>追記：下のコメントのほとんどは、WindowsにもIORing実装があるって事実を見落としてるみたいだね。ここに対比記事があるよ。https://windows-internals.com/ioring-vs-io_uring-a-compariso..." userName="nu11ptr" createdAt="2025/05/07 16:03:37" color="#ff5733">}}




{{<matomeQuote body="俺はWindowsに詳しくないけど、手伝ってもらってIOCPで基本的なプロトタイプを動かせたよ。近いうちに公開する予定。IORing版も構想だけしてみた（デバッグとか肉付けを手伝ってくれるなら教えて！）。<br>分かったこと：IOCP版は非同期フラッシュができない！これ欲しい機能なんだ。IORing版はできる！でも、scatter/gather（別名vector I/O）がまだできないんだ！これはバッファプール実装には必須の機能なんだよね。だから、IORingがこれをサポートするまで、あんまり真面目には考えられないかな（enumにあるから開発中なのは分かるけど、ビルド関数が無い）。<br>だから、たぶん1年くらいしたら、PostgreSQLのディスクI/O全部をWindowsのIORingで動かせるようになるんじゃないかな？どうかな？<br>もう一つの複雑な点は、並行処理が本当に必要なこと（他のプロセスで開始されたI/Oの完了を処理するのはすごく大変、動かしたけど…）。これはPostgreSQLのマルチスレッド化が進めば自然と解決するだろうね。<br>次の問題は、IORingがソケットに対応してないこと！だから、将来の非同期ネットワーキング（初期プロトタイプは存在する）の作業では、その部分のためにたぶんIOCPも必要になるだろうね。" userName="macdice" createdAt="2025/05/08 03:20:51" color="#ff5c5c">}}




{{<matomeQuote body="ソケットに関してはRegistered I/Oを調べてみたらどうかな。" userName="p_ing" createdAt="2025/05/08 11:32:39" color="">}}




{{<matomeQuote body="I/O方式によるんだってー。記事にもあるけど、io_uringはLinuxだけ（liburingとかカーネル設定も必要）。でもbeta1のデフォルトはworker方式で、これはどのOSでも動くよ。workerは専用のI/Oワーカープロセス使うんだ。ベンチマークではio_uringほどじゃないけど、今のPostgres（17以前）と同じsync方式よりは明らかに速かったってさ。" userName="lfittl" createdAt="2025/05/07 16:17:27" color="#ff5733">}}




{{<matomeQuote body="＞”io_uring”はLinuxだけ”って？いやいや、WindowsにもIORingあるよ（上にコメントしたけど）。" userName="nu11ptr" createdAt="2025/05/07 16:58:45" color="">}}




{{<matomeQuote body="うん、でもそれがどうしたの？この新しいPostgresをIORing対応のWindowsに持ってきてすぐコンパイルできるわけじゃないでしょ？結構手間と時間かかるし、ボランティア頼みが多いんだ。それにPostgresってほとんどLinuxで使われてるじゃん。だから開発者がまずLinuxに注力するのは当たり前でしょ。" userName="severino" createdAt="2025/05/08 08:53:02" color="#45d325">}}




{{<matomeQuote body="あ、誤解してたわー。IORingがLinux固有の機能だって言ってるのかと思ったけど、Postgres上での話ね。Linux版Postgresでの話ってことね。" userName="nu11ptr" createdAt="2025/05/08 10:18:16" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="なんかこの機能ってio_uringベースっぽいよね。これはLinuxの機能だし。Linuxユーザーの方が断然多いんだから、Windows版で非同期I/Oを先に実装するなんてことはないと思うなー、びっくりだよ。" userName="stingraycharles" createdAt="2025/05/07 16:10:26" color="">}}




{{<matomeQuote body="へえ、Linuxが1994年のWindowsに追いついたって話、意外だね。スケジューラーやOOMもWindowsの方が進んでる面があるし、io_uringみたいな概念も昔からあった。NTの「全てのI/Oが非同期」ってのはLinuxにはまだ無いんだ。Windowsのカーネルは実は進んでるのに、UIとかで台無しにされてる感じ。WindowsのI/O RingはLinuxのコピーだけど、IOCPとかはもっと前からあった。どっちが良いじゃなくて、お互いから学んで欲しいね。OSはビジネスで決まることも多いし。" userName="p_ing" createdAt="2025/05/07 16:50:43" color="#785bff">}}




{{<matomeQuote body="＞スケジューラーも同じくって？WindowsがOOMうまいのは、メモリをあんまりオーバーコミットしないからだよ。でもCPU _scheduler_ は、Linuxの方がWindowsよりずーっと良いよ。Linuxはリアルタイム処理だってできるんだから。" userName="cyberax" createdAt="2025/05/07 17:56:43" color="#ff5733">}}




{{<matomeQuote body="Windows Server Coreってのがあって、CLI以外は無いけど、ログインとかデスクトップの一部は残るし、Win32アプリも動くよ。Win32はコアサービスに必要だから、完全に剥がすのは無理なんだ。他のサブシステムもWin32依存だしね。WindowServerも必須。でもNTDEVって人がWindows 11をテキストオンリーにした例はあるらしい。技術的には可能だけど実用的じゃないって感じ。動画リンクもあるよ。https://www.youtube.com/watch?v=SL6t_iuitxM" userName="p_ing" createdAt="2025/05/07 17:24:21" color="#785bff">}}




{{<matomeQuote body="＞Windows Server Coreの話、うん、UIほとんどテキストになってるね（ログインもTUI）。シェルとかウィンドウマネージャーは残ってるけど、UIアプリそのまま移行できるから良い点でもある。＞NTDEVのテキストオンリー化は技術的に可能だけど実用的じゃないって？WindowsにはXPの頃から「テキストモード」あったけど全然役に立たないよ。リカバリはWindows PEが断然良い。" userName="smileybarry" createdAt="2025/05/07 17:38:53" color="#45d325">}}




{{<matomeQuote body="”この機能はLinuxの機能であるio_uringに基づいている”<br>で、今はWindowsの機能でもあるよ、詳しくは上のコメント見てね．" userName="nu11ptr" createdAt="2025/05/07 16:59:36" color="">}}




{{<matomeQuote body="IoRing ！＝ io_uring．似てるAPIだけど同じじゃないんだ．" userName="zokier" createdAt="2025/05/08 11:02:09" color="#38d3d3">}}




{{<matomeQuote body="昔からLinuxには非同期ファイルI／OのためのAPIは仕様としてはあったんだけど、実際何も速くならなかったから使う価値なかったんだよね．" userName="PaulHoule" createdAt="2025/05/07 16:11:59" color="">}}




{{<matomeQuote body="長い時間ーでもunbuffered IOを使うときだけね．io_uringの新しいところは、buffered IOも高速化するところだよ．最初のバージョンは全部カーネルワーカースレッド経由だったけど、最近はいくつかのファイルシステムで一般的なケースのために良いパスがあるんだ．" userName="anarazel" createdAt="2025/05/07 17:10:13" color="#785bff">}}




{{<matomeQuote body="うろ覚えだけど、文字通りワーカースレッド上でsync I／Oを実行してただけだったと思うよ．" userName="immibis" createdAt="2025/05/07 16:55:53" color="#ff5733">}}




{{<matomeQuote body="それがPOSIX AIOだよ．Linuxにはdirect I／Oだけをサポートしてて、使いづらくする特定の制限があったAIOがあったんだ．" userName="DmitryOlshansky" createdAt="2025/05/08 18:18:55" color="#785bff">}}




{{<matomeQuote body="そうだよ、WindowsはWindows NT 3．1からasync I／Oがあったけど、そのAPIはまだPostgresにサポートされてないんだ．" userName="spwa4" createdAt="2025/05/07 16:37:41" color="#ff33a1">}}




{{<matomeQuote body="そういえばさ、IOCPベースのio_methodの試作パッチがあったんだよ。でも、PG 18には間に合う状態にできなかったんだ。今回入ったやつを入れるだけでも、もうギリギリだったんだよ…。" userName="anarazel" createdAt="2025/05/07 17:12:11" color="#ff33a1">}}




{{<matomeQuote body="そう、あれはIOCPだったね。でも、Windowsには今、IORingもあるんだよ（上のコメントも見てね）" userName="nu11ptr" createdAt="2025/05/07 16:58:12" color="">}}




{{<matomeQuote body="WindowsでPostgres動かしてる人いる？まだ対応してるってことはユーザーはいるはずだよね。プラットフォームごとの利用統計とか誰か知らない？ここで使ってる人いる？マジで興味あるんだ。Windowsでのバックエンド開発って全然分からなくてさ。" userName="mijoharas" createdAt="2025/05/08 08:17:04" color="">}}




{{<matomeQuote body="FreeBSDのaio(4)にはたくさん開発者の努力が注ぎ込まれてるから、どう動くか見るのが楽しみだね。だってさ、Linux/glibc aioにあった欠点がないんだよ。" userName="kev009" createdAt="2025/05/07 19:31:26" color="">}}




{{<matomeQuote body="そうそう、FreeBSDでPostgreSQL AIOを動かすパッチを持ってるんだよ。v19で提案しようと思ってる。結構うまく動くんだぜ！v18のコアな部分とか基本機能でAndresの邪魔にならないようにしてたんだ。ややこしい新しい話をかき乱したくなかったってわけ" userName="macdice" createdAt="2025/05/08 02:56:15" color="#45d325">}}




{{<matomeQuote body="この話、もうちょっと詳しく教えてくれない？FreeBSDはなんかすごい違ったり、もっと良いことしてたりするの？" userName="tiffanyh" createdAt="2025/05/07 20:48:48" color="">}}




{{<matomeQuote body="Linux aio（POSIX）はglibcでの実装がダメで根本的に問題があった。io_uringは別。<br>FreeBSD aio(4)はカーネル実装で継続的に改善されており、Linuxの欠点がないのが利点。Thomas Munroの記事に比較がある。ZFSのARCには問題があるが、他のファイルシステムならOK。<br>FreeBSDはソースツリー全部持ちの利点があり、NICオフロードなどのエンドツーエンド実装に使える。ChelsioやNetflixの関連作業でaioはさらに改善されてるよ。" userName="kev009" createdAt="2025/05/07 23:04:49" color="#45d325">}}




{{<matomeQuote body="これってさ、MySQLがInnoDBでやってるやり方とどれくらい近いの？ほとんど同じに見えるけどね。" userName="skeptrune" createdAt="2025/05/07 16:18:07" color="">}}




{{<matomeQuote body="その通りだね。何年も前にやるべき簡単なことだったんだよ。テーブルにB+ツリーを使うことも、そのうち分かるだろうさ。" userName="seunosewa" createdAt="2025/05/07 16:30:48" color="">}}




{{<matomeQuote body="PGはストレージとかアクセス方法について、まだやることいっぱいあるんだよ。ずっと取り組んでるみたいだけどね。Orioledbはすごい可能性を見せてくれてて、それをPGに取り込んでる最中なんだ。ストレージエンジンでLSMみたいなことができたら超いいね。今のTOASTより圧縮率も上がるかもだし。TOASTってそんなに圧縮できないんだよね…。PGには標準でページ圧縮もないし…。" userName="tehlike" createdAt="2025/05/07 22:22:09" color="#45d325">}}




{{<matomeQuote body="そのB-treeの話、もうちょい詳しく聞かせてもらえない？PGのデフォルトインデックスがB-treeなのは知ってるんだけど、なんか俺の知らないことがあるみたいだからさ。" userName="ARandomerDude" createdAt="2025/05/07 16:47:26" color="">}}




{{<matomeQuote body="PostgreSQLはテーブルデータにheapファイルを使うけど、InnoDBはクラスタードインデックス（B-treeにデータが直接入るやつ）なんだ。だから得意なことが違うよ。PGは非キー列の更新とか、たくさんのセカンダリインデックス、予測不能なアクセスパターンに強い。InnoDBは主キー順アクセスやレンジスキャン、OLTP向きだね。どっちが良いかは、君の用途次第だよ。" userName="greenavocado" createdAt="2025/05/07 17:03:31" color="#ff5733">}}




{{<matomeQuote body="ディスク上のカラムを直接指すインデックスは速いんだ。InnoDBでOLAPやる時の悩みは、セカンダリインデックスが全部間接的ってこと。カラムを追加してカバリングインデックスにすれば回避できるけど、面倒だしインデックスが大きくなっちゃうんだよ。" userName="Sesse__" createdAt="2025/05/07 19:28:54" color="#ff5c5c">}}




{{<matomeQuote body="OracleとかMicrosoftの商用DBは、どんなインデックスでもDBをクラスター化できるんだよね。PostgreSQLもそれできるようになってほしいな、マジで。" userName="sroussey" createdAt="2025/05/08 14:56:29" color="">}}




{{<matomeQuote body="できるよ。でも新しい行は再クラスターしないと反映されないけどね。<br>CLUSTER table_name USING index_name;<br>ってコマンド使うんだ。" userName="cwbriscoe" createdAt="2025/05/08 18:12:42" color="">}}




{{<matomeQuote body="昔のMySQL MyISAM（構文は違ったけど）でそれがあったの覚えてるわ。Oracleでもできると思ってたけど、俺の勘違いだったね。<br>MySQL InnoDBとかは本物のクラスタード主キーインデックスを持ってるけど、良い面も悪い面もあるんだ。" userName="sroussey" createdAt="2025/05/10 20:05:12" color="">}}




{{<matomeQuote body="スキャンと逆の、追記専用テーブルへの高速書き込みも大事な点だね。ここでもPostgreSQLのアプローチは優れてるよ。" userName="farazbabar" createdAt="2025/05/07 17:57:17" color="">}}




{{<matomeQuote body="あと、MVCCとかトランザクション内でDDLができることとも深く関係してるんだよね？って思ってるんだけど。" userName="saltcured" createdAt="2025/05/07 18:11:58" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="SQL Serverは、heapストレージ、clusteredストレージ、MVCC、トランザクション内DDLの全部に対応してるよ。" userName="jiggawatts" createdAt="2025/05/07 22:16:59" color="">}}




{{<matomeQuote body="SQL Serverを使ってた20年前に戻った気分だよ！たしかクラスタードインデックスを選べたんだよね。" userName="foobahhhhh" createdAt="2025/05/08 11:07:38" color="">}}




{{<matomeQuote body="SQLite3はファイルやインデックスにb-treeだけを使ってる。<br>PostgreSQLはテーブルにヒープだけ、インデックスにはいろんな構造があって、デフォルトはb-treeだね。<br>テーブルにb-treeがあった方がパフォーマンスが良くなるケースはたくさんあるんだ。<br>GPは、PGがテーブルにヒープしかないことをからかってるわけ。" userName="cryptonector" createdAt="2025/05/07 23:53:18" color="#45d325">}}




{{<matomeQuote body="特にOSS版のMySQLは改良が比較的少ないのに、まだPostgresがMySQLを超えてない分野はたくさんあるし、今後3～4年でもそうなりそうにないな。" userName="ksec" createdAt="2025/05/10 15:03:50" color="">}}




{{<matomeQuote body="コミットされるまでの努力に感謝します。<br>async I/O（とio_uring）についての最初の議論を6、7年前に見たのを覚えてるよ。デザインを正しくするのにすごい量の作業があったんだろうね。<br>これで基礎ができたから、今後のPostgresリリースでasync I/Oが使える他の場所にも期待してるよ。" userName="Tostino" createdAt="2025/05/07 16:30:36" color="">}}




{{<matomeQuote body="すごくよく書かれた記事だね！NVMeで本番環境で動かすのが楽しみだし、主要なクラウドプロバイダーが早く提供開始してほしいな。<br>パフォーマンス向上はマジで魅力的だよ！" userName="shayonj" createdAt="2025/05/07 16:22:01" color="#ff5733">}}




{{<matomeQuote body="俺の理解では、NVMeみたいなローカルストレージは、ebsみたいなネットワークベースのブロックデバイスと比べてレイテンシがすごく低いから、async I/Oの影響はそんなに大きくないんじゃないかと思ってる。" userName="CoolCold" createdAt="2025/05/08 16:29:56" color="">}}




{{<matomeQuote body="最近、Hetzner EX-44サーバーにPostgresをデプロイしたんだ。価格対性能比がヤバくて、エンタープライズレベルの容量が通常のクラウドコストの何分の一かで手に入る。セキュリティにTailScaleを使った。俺の最適化アプローチはPGTuneで設定、PgHeroで監視、pgcronでVACUUM ANALYZE、自分で作ったZSTD圧縮バックアップツール（S3自動アップロード付き）を使ってるよ（github.com/overflowy/pgbackup）。この構成は驚くほど安定してて高性能だよ。" userName="niux" createdAt="2025/05/07 16:04:50" color="#785bff">}}




{{<matomeQuote body="それはすごいね、でもデータが少しでも大事なら、しっかりしたHAとかバックアップとリカバリーの戦略が必要だよ。" userName="trollied" createdAt="2025/05/07 16:12:48" color="">}}




{{<matomeQuote body="俺ならbarmanとかpgbackrestみたいな他のバックアップユーティリティを絶対使うね。<br>君のはpgdumpをラップしてるだけだけど、あれはフル機能のバックアップソリューションじゃないんだ。既存のツールを使えば、PITR、レプリケーション用リストア、フェイルオーバー、世代管理なんかが手に入るよ。" userName="Tostino" createdAt="2025/05/07 16:23:01" color="#45d325">}}




{{<matomeQuote body="自分でツール書いたのは、そのときPg17でいいのが見つからなかったのと、pgbackrestが自分の用途にはやりすぎに見えたから。あと、CLIでバックアップの世代管理もできるんだ。Barmanは面白そうだね、絶対見てみるよ、ありがとう！" userName="niux" createdAt="2025/05/07 16:29:33" color="">}}




{{<matomeQuote body="俺の経験だとpgbackrestはずっと使いやすかったよ。設定も楽だし低オーバーヘッド。WAL shipping、圧縮、ブロック増分バックアップとか便利機能も満載（やったー！！！）。前の会社で6年くらい使ってたけど、文句なしの超しっかりしたソフト。バックアップはこれだね。barmanはCloundNativePG経由で使ってるけど、まだ運用経験は少ないな。" userName="Tostino" createdAt="2025/05/07 16:48:34" color="#ff5733">}}




{{<matomeQuote body="pgbackrestは柔軟すぎて難しそうに見えるだけだよ、でもほとんどのケースでデフォルト設定でうまく動く。設定はストレージバケット作って、pgbackrestの設定ファイルにプロバイダー設定するくらい。ちゃんとセットアップすれば岩みたいに堅牢だよ。もう一度試してみるのをマジでおすすめ。エレガントに解決してくれるし、考えてなかったことまでたくさんカバーしてくれるよ。経験済みだよ :)" userName="9dev" createdAt="2025/05/07 21:18:26" color="#ff5733">}}




{{<matomeQuote body="それってまだ必要なの？しばらくpg管理してないんだけど、pg17にバックアップのソリューションって何かあるんじゃないの？" userName="lousken" createdAt="2025/05/07 21:44:53" color="">}}




{{<matomeQuote body="まだ必要だよ。Postgres付属ツールは機能不足。pgBackRestみたいな専用ツールが断然良い。pgBackRestはブロック増分バックアップや自動保持、暗号化、PITRとか、ストレージ削減、運用効率化、エッジケース対応に役立つ機能満載。自分でスクリプト管理するより楽だし、環境によっては必須の機能もあるよ。" userName="Tostino" createdAt="2025/05/08 13:56:40" color="#ff5c5c">}}




{{<matomeQuote body="その設定、オープンソースにする気ある？ぜひ参考にしたいんだけど。" userName="codegeek" createdAt="2025/05/07 16:48:19" color="">}}




{{<matomeQuote body="同感。このプログラミングの分野って、しっかりした実務経験がない人にとっては、深くて暗くて怖い場所なんだよね。ベストプラクティスを学び始めるのに、基礎的な出発点があるとものすごく助かるだろうね。" userName="digdugdirk" createdAt="2025/05/07 19:23:04" color="">}}




{{<matomeQuote body="＞書き込みが多いテーブルに対してpgcronでスケジュールした自動VACUUM ANALYZE操作だけど、なんでテーブルごとにautovacuum_analyze_scale_factorパラメータ（かautovacuum_analyze_threshold）を設定して、AUTOVACUUMに任せないの？" userName="natmaka" createdAt="2025/05/08 04:49:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
