+++
date = '2025-04-17T00:00:00'
months = '2025/04'
draft = false
title = 'DeepSeek発！ペタバイト級データも爆速処理？分散ファイルシステム徹底解剖'
tags = ["分散ファイルシステム", "DeepSeek", "大規模データ", "機械学習", "ストレージ"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> DeepSeek発！ペタバイト級データも爆速処理？分散ファイルシステム徹底解剖

引用元：[https://news.ycombinator.com/item?id=43716058](https://news.ycombinator.com/item?id=43716058)

{{<matomeQuote body="アーキテクチャ的にはスケールアウトなメタデータファイルシステムなんだね[ref]。関連する分散ファイルシステムとしては、CollosusとかTectonic (Meta)とか、ADLSv2 (Microsoft)、HopsFS (Hopsworks)、それにPolarFS (Alibaba)とかがあるみたい。メタデータの保存には、それぞれ違う分散row-oriented DBを使ってるんだって。S3FSはFoundationDB、CollosusはBigTable、Tectonicは何かのKVストア、ADLSv2は不明、HopsFSはRonDBを使ってるらしい。S3FSで重要なのは、(1)fuseクライアントをサポートしてること–これがあるとマジで楽になる–と、(2)NVMeストレージを使えること–トレーニングパイプラインがDisk I/Oにボトルネックにならないようにね(S3 object storeに対して、ファイルを十分に小さく分割したり、並列読み書きを十分に行うのが難しい場合もあるからね)。ちなみに、俺はHopsFSで働いてたんだ。HopsFSはtiered storageも追加してて、最近のデータはNVMeに、アーカイブはS3に置いてるよ。<br>[ref]: https://www.hopsworks.ai/post/scalable-metadata-the-new-bree..." userName="jamesblonde" createdAt="2025-04-17T13:54:06" color="#38d3d3">}}

{{<matomeQuote body="＞Tectonic some KV store、<br>TectonicはZippyDB上に構築されてて、それはRocksDB上に構築された分散DBなんだ。<br>＞What’s important here with S3FS is that it supports (1) a fuse client - it just makes life so much easier<br>Tectonicにも、100% NVMeストレージでバックアップされたクラスター上のGenAIワークロード用に構築されたFUSEクライアントがあるんだ。<br>https://engineering.fb.com/2024/03/12/data-center-engineerin...<br>個人的に3FSで際立っているのは、FUSEクライアントがあるだけでなく、FUSEクライアントとネイティブIOパスのハイブリッドになっていることだと思う。普通にファイルを開くのと同じだけど、fdを取得したら、実際のIOにはネイティブライブラリを使用するんだ。FUSEのオーバーヘッドを避けたい場合は、AIトレーニングコードを3FSネイティブで使用するように適応させる必要があるけど、ネイティブクライアントが実装する必要があったすべてのメタデータ操作にFUSEクライアントを使用できるようになったんだ。<br>https://github.com/deepseek-ai/3FS/blob/ee9a5cee0a85c64f4797..." userName="MertsA" createdAt="2025-04-17T18:39:21" color="#ff33a1">}}

{{<matomeQuote body="重要なユースケースのために、より複雑で効率的なユーザーモードIOパスを<br>opt-in<br>できるのは、すごく良いアイデアだね。" userName="Scaevolus" createdAt="2025-04-17T23:12:14" color="#785bff">}}

{{<matomeQuote body="全く同じではないけど、Cephストレージはオブジェクトストレージ、ファイルシステム(FUSEとカーネルの両方)、ブロックストレージとしてアクセスできるよ。" userName="carlhjerpe" createdAt="2025-04-18T02:25:39" color="">}}

{{<matomeQuote body="AIスタックでJuiceFSを最初から使ってるよ。似たようなもので、メタデータにはpostgresqlを使ってる。" userName="nickfixit" createdAt="2025-04-17T13:59:58" color="">}}

{{<matomeQuote body="JuiceFSはすごく良いよね。スケールアウトメタデータFSとしては考えてなかったけど、たくさんのDB(シングルホストと分散DB)をサポートしてるんだね。" userName="jamesblonde" createdAt="2025-04-17T14:04:27" color="#38d3d3">}}

{{<matomeQuote body="Tiered storageとFUSEはAlluxioで何年も前から存在してるよね。<br>それに、OpenEBS (Mayastor)のNVMeoFみたいなNVMe最適化もね。<br>どれも特に画期的なものではなく、たくさんの要素を組み合わせただけだよ。" userName="threeseed" createdAt="2025-04-17T14:05:02" color="">}}

{{<matomeQuote body="違いはファイルシステムにおけるスケールアウトメタデータだよ。AlluxioはメタデータにRaftを使ってると思うけど、それは単一のサーバーに収まる必要があるんだ。" userName="jamesblonde" createdAt="2025-04-17T14:15:55" color="#38d3d3">}}

{{<matomeQuote body="3FSはmdbenchでは特に速くないんだよね。FDBのチューニングスキルが原因なのか、FUSEが原因なのかわからないけど、どっちでもいいかな。俺にとって本当にすごいのは、NVMe SSD + RDMA + すでに開いている巨大なファイルから大量のランダムオフセットを効率的に読み取れることなんだ。これでトレーニングボックスが20～30GiB/s(と約400万IOPS)を消費するようになるんだよ。" userName="rfoo" createdAt="2025-04-17T14:40:53" color="#ff33a1">}}

{{<matomeQuote body="FUSEは伝統的にすごく遅いことで有名だよね。速くするための変更がいくつかあったはずだけど、それは特定のfuse実装だけだったのかも。" userName="rjzzleep" createdAt="2025-04-17T16:15:05" color="">}}

{{<matomeQuote body="ブロックサイズがデフォルトで4KBってマジでありえないよね。うちはデフォルトで1MBくらいにしてるけど、マジで全然違うよ。<br>https://github.com/logicalclocks/hopsfs-go-mount" userName="jamesblonde" createdAt="2025-04-17T16:47:14" color="#ff33a1">}}

{{<matomeQuote body="ObjectiveFSってのもあって、FUSEをサポートしてて、データとメタデータのストレージにS3を使ってんだって。だからメタデータノードを動かす必要がないんだよね。S3をデータベースの代わりに使うことで、データとメタデータをS3 object storeのパフォーマンスでスケールできるらしいよ。" userName="objectivefs" createdAt="2025-04-17T14:17:58" color="#ff5c5c">}}

{{<matomeQuote body="OFSはEFSの代替としてポン付けできて、マジでこの問題領域においては価値がヤバい。" userName="halifaxbeard" createdAt="2025-04-18T11:14:47" color="">}}

{{<matomeQuote body="ちょっとした指摘：GoogleのはColossusだよ。" userName="joatmon-snoo" createdAt="2025-04-17T17:14:55" color="">}}

{{<matomeQuote body="著者の言う通りだと思うな。評価すべき点は、理論的な限界、効率、実用的な限界の3つだよね。<br>理論的には、Lustreみたいな並列分散ファイルシステムは何年も前から存在してる。ストレージとスループットを無限にスケールできるはずなんだよね、ノードを追加すれば。<br>で、ノードにX TiBのディスクを積んだ時に、どれくらいのストレージとスループットが得られるかっていう効率を評価するわけ。FSx for Lustreで計算してみたんだけど、3FSはAWSでFSxLより12-30%安く済むみたい。でも、自分でクラスタ管理するなら、そこまで良くはないよね。<br>最後に、実際にどれくらいの規模で構成できるかっていう話になる。Cephを1 TiB/sにするのが難しいとかね。3FSがどうなるかはまだ分からないけど。<br>DeepSeekが自社でこういうのを作るのは理にかなってると思う。Archilとしては、巨大なクラスタを管理しなくても、良いデフォルト設定を見つけたい。" userName="huntaub" createdAt="2025-04-17T14:12:56" color="#ff33a1">}}

{{<matomeQuote body="AWSはまず、高速なNVMesを提供するべきじゃない？1 GB/sを得るためだけに、何TBものディスクが必要なのって話だよ。S3FSの実験は14 GB/sのNVMeディスクで行われたのに、AWSじゃありえない。SSDはバカみたいに速くなってるのに、クラウドでは例外なんだよね：<br>https://news.ycombinator.com/item?id=39443679" userName="jamesblonde" createdAt="2025-04-17T14:23:28" color="#ff33a1">}}

{{<matomeQuote body="家のLANでMacBook Proとサーバーを10gbpsの光ファイバーで繋いでるんだけど、1.5gbpsくらいしか出ないんだよね。ディスクの速度は50gbpsくらいなのに。（ビットね）<br>macOSのSMB実装がクソだってことが分かった。NFSドライバを設定したら2倍速くなったけど、マウントとかが面倒だし、ディスクの性能には遠く及ばない。<br>結局、ネットワークを諦めて、Thunderboltで物理的にドライブを運んでる。" userName="kridsdale1" createdAt="2025-04-17T16:58:23" color="#785bff">}}

{{<matomeQuote body="SMB/CIFSはマジでおしゃべりで、同期的なプロトコルなんだよね。高遅延の衛星回線で使うために、これを軽減する製品がたくさんあったんだよ（米軍とかが使ってた）。" userName="dundarious" createdAt="2025-04-17T17:44:54" color="">}}

{{<matomeQuote body="設定したことはあるけど、Macでドライバを動かすのが簡単じゃないんだよね。" userName="kridsdale1" createdAt="2025-04-17T19:37:55" color="">}}

{{<matomeQuote body="具体的にどのドライバーのこと言ってるのかな？NFSはMacOSで標準サポートされてるけどね。" userName="insaneirish" createdAt="2025-04-18T03:49:39" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="確かにそうなんだけど、実装がちょっと変わってるんだよね。<br>NFS共有をマウントする方法はこんな感じ：<br>sudo mount -t nfs -o nolocks -o resvport 192.168.1.1:/tank/data /mnt/data<br>-o nolocks：マウントされた共有でのファイルロックを無効にする。NFSサーバーまたはクライアントがロックをサポートしていない場合、またはロックデーモンに問題がある場合に便利。MacOSでは、lockdが不安定なため、これが必要になることが多い。<br>-o resvport：NFSクライアントに、接続に予約済みポート（1024未満）を使用するように指示。一部のNFSサーバー（一部のLinux構成や、より厳格なセキュリティを備えた* BSDなど）は、予約済みポートを使用するクライアントからのリクエストのみを受け入れる（認証目的）。" userName="olavgg" createdAt="2025-04-18T07:45:39" color="">}}

{{<matomeQuote body="AWSのi4iインスタンスなら、ディスク容量は小さいけどIOPSをたくさん得られるよ。" userName="__turbobrew__" createdAt="2025-04-17T18:06:20" color="#38d3d3">}}

{{<matomeQuote body="調べてみたんだけど、ベースラインのディスクスループットは78.12 MB/s。最大スループット（1日30分）は1250 MB/s。<br>150ドルで買った4 TBのNVMeは、6000 MB/sの持続的な速度が出る。<br>https://docs.aws.amazon.com/ec2/latest/instancetypes/so.html" userName="jamesblonde" createdAt="2025-04-18T07:43:55" color="">}}

{{<matomeQuote body="それ、一番小さいインスタンスの話でしょ。なんでそんなの提供してるのかわからないけど。大きいインスタンス（みんなが使ってるやつ）だと5000 MBpsだよ。最新のi7ieだと最大7500 MBps。" userName="sgarland" createdAt="2025-04-18T13:42:07" color="">}}

{{<matomeQuote body="それ違うよ。引用してる数字はEBSボリュームのパフォーマンス。<br>iXインスタンスはEBSとは別の直接接続されたNVMEボリュームを持ってるんだ。<br>＞NVMeが150ドル？<br>＞サーバー代、ラック代、コロケーション代、電気代、複数AZ冗長構成、closネットワークファブリック、ネットワークピアリング、障害時のスペアハードウェア、オフサイトバックアップ、サプライチェーン管理、システム設計エンジニアチーム、ハードウェアの設置・撤去スタッフ、ネットワーク管理エンジニアチーム、オンコール体制...全部含めたら？<br>＞NVMeが150ドルで済むわけないじゃん。" userName="__turbobrew__" createdAt="2025-04-18T17:08:13" color="#38d3d3">}}

{{<matomeQuote body="AWSはiXインスタンスのNVMeのスループットを公開してないんだよね。ベンチマークを見るか、自分でテストするしかない。PPS（パケット毎秒）制限も同じで、公開されてなくて、ベンチマークから推測するしかないんだ。" userName="__turbobrew__" createdAt="2025-04-20T05:21:25" color="#785bff">}}

{{<matomeQuote body="それってサーバーに直接接続されてるの？それとも別にホストされてるの？" userName="ashu1461" createdAt="2025-04-18T05:11:33" color="">}}

{{<matomeQuote body="i-seriesインスタンスは直接接続ドライブを持ってるよ。" userName="huntaub" createdAt="2025-04-18T13:39:10" color="">}}

{{<matomeQuote body="他に重要なのは、そのファイルシステムが何に使うために設計されたかってことだよね。たとえば、3FSは読み込みスループットに最適化されてるっぽい（当然だよね、ほとんどのトレーニングワークロードは読み込みヘビーだから）。書き込みはかなり重そう。メタデータサーバーはスケールできるのかな？メタデータ操作のコストは？単一のクライアントがメタデータサーバーのIOを全部吸い上げないようにするスロットリングの仕組みはある？ロッキングはサポートしてる？COWファイルシステム？" userName="KaiserPro" createdAt="2025-04-18T09:32:55" color="#ff5733">}}

{{<matomeQuote body="SeaweedFSと比較してどうなのか興味あるなー。SeaweedFSはMLトレーニングのために、3PBくらいの気象データの保存に使ってるんだ。" userName="robinhoodexe" createdAt="2025-04-17T14:45:04" color="">}}

{{<matomeQuote body="一見似てるけど、SeaweedFSと3FSは用途が全然違うと思うな。SeaweedFSは小さいオブジェクトの読み込みがめっちゃ速い。だって、オブジェクトを読むためのメタデータクエリがほぼないんだもん。volume idとfile id（+cookie）をクライアントに配るだけだから。<br>3FSはそこまで極端じゃない。POSIXインターフェースをサポートしてるし、open()がSeaweedFSほど速くない。その代わり、ファイルを小さい（例：512KiB）チャンクに分割して、RDMA NICが必要だけど、大きなファイルからのランダムリードがめっちゃ速い[0]。データセットがimmutableならSeaweedFSをエミュレートできるけど、そうじゃないならSeaweedFSの方が良い。[0] っていうのは、単一のストレージサーバーで12個のPCIe Gen 4 NVMe SSDを4Kランダムリードで完全に飽和させることができて、それを水平方向にスケールできるってこと。" userName="rfoo" createdAt="2025-04-17T14:53:28" color="#ff33a1">}}

{{<matomeQuote body="SeaweedFSをS3FSでマウントしたら、3FSみたいな感じになるのかな？S3FSはFUSEを使ってマウントするんだよね。" userName="jszymborski" createdAt="2025-04-17T18:48:38" color="">}}

{{<matomeQuote body="4KランダムIOPSは、2桁か3桁くらい違うんじゃないかな。" userName="rfoo" createdAt="2025-04-18T07:32:17" color="">}}

{{<matomeQuote body="パフォーマンスはほぼ同じくらいだと思うけど、SeaweedFSの方がティアードストレージみたいな管理機能がたくさん入ってるみたい。それを使うかどうかは別として。" userName="huntaub" createdAt="2025-04-17T14:50:41" color="">}}

{{<matomeQuote body="俺は中小企業とホームラボの人間だから、こういう大規模分散ファイルシステムはたぶん使わないなー。でも、ペタバイトの話が出てくると、こういうのってちゃんとバックアップされてるのかな？バックアップとリカバリは何を使ってるんだろう？" userName="stapedium" createdAt="2025-04-17T14:38:52" color="#785bff">}}

{{<matomeQuote body="こういうシステムのバックアップは、セカンダリデータセンターを使うのが一般的だよ。<br>バックアップには2つの目的があるのを覚えておいて。1つはハードウェアの故障、もう1つはヒューマンエラー。ハードウェアの故障は冗長性で対処する。冗長性っていうのは、複数の障害ドメインにまたがって冗長な情報を保持すること。そのドメインはキャッシュラインくらい小さいかもしれないし、データセンターくらい大きいかもしれない。こういう故障は、最新のファイルシステムでは透過的に、自動的に処理できる。<br>ヒューマンエラーの場合、障害ドメインには時間の経過以外に自然な境界はない。だから、ファイルシステムに保存されたスナップショットが一番良い選択肢になる。特に、copy-on-writeがあれば、スナップショットのオーバーヘッドを非常に小さく抑えられる。<br>ランサムウェアみたいな敵対的なヒューマンエラーっていう特殊なケースもある。答えはスナップショットだけど、根本的な問題は早期検出。そうしないと、復旧できる時点がないかもしれない。" userName="ted_dunning" createdAt="2025-04-17T19:00:12" color="#ff5c5c">}}

{{<matomeQuote body="バックアップとリカバリーって、失敗する可能性がゼロじゃないんだよね。テストすればするほど確率は下がるけど、絶対はない。でも、こういうシステムだとデータの保全性はめっちゃ高くて、失敗率も超低いんだって。しかも、システムの中で常に失敗が起こる前提で動いてるから安心じゃん？バックアップよりデータの保全性が高いなら、バックアップって必要なのかな？もちろん理由はあるけど、データの内容によるし、一般的な機能としては重要度が下がるよね。" userName="shermantanktop" createdAt="2025-04-17T15:57:53" color="#785bff">}}

{{<matomeQuote body="＞why backup?<br>そりゃあ、ミスとか悪意のあるヤツらのせいだよ…" userName="Eikon" createdAt="2025-04-17T16:37:36" color="">}}

{{<matomeQuote body="…それに、「Disaster recovery」のDisaster（災害）って、局地的で広範囲な場合もあるじゃん（火事とか洪水、大地震、変圧器の故障による停電、建物の倒壊、タンクローリーがサーバー室に突っ込む、巨大な陥没穴とか）。" userName="overfeed" createdAt="2025-04-17T16:58:47" color="">}}

{{<matomeQuote body="そうそう、光ファイバー対バックホーみたいな悲劇ね。でも、分散ファイルシステムが地理的に冗長化されてれば、少なくともデータの保全性の観点からは大丈夫でしょ。サーバーの一部が消えちゃったとしても、バックアップじゃ助けられないし。" userName="shermantanktop" createdAt="2025-04-17T18:35:33" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞But if your distributed file system is geographically redundant<br>冗長性とバックアップは違うから！　似てるところもあるけど、同じものだと思ってるとヤバいことになるよ。たとえば、設定変更で5/5のデータセンター全部がバラバラになってクォーラムを作れなくなって、基礎サービスをブートストラップしようとしたら循環依存が見つかったとか。ローカルバックアップがあれば、各DCは最後に正常だった設定をロードできるけど、冗長性に必要なコンセンサスを再構築するには、アクセスできないホストからの連携が必要になるんだ。" userName="overfeed" createdAt="2025-04-17T21:21:42" color="#45d325">}}

{{<matomeQuote body="アクティブなデータなら、システム内のレプリケーションでインスタンスの故障からデータを守れるって考えだよね（ちゃんとメンテナンスして、故障したホストをすぐに修復する前提だけど）。バックアップとリカバリーは、rm -rf / みたいなコマンドをうっかり実行しちゃった時のために使う感じかな。ファイルシステムだから、普通のファイルで使えるバックアップとリカバリーのソリューションなら何でも使えるはず。" userName="huntaub" createdAt="2025-04-17T14:47:08" color="#45d325">}}

{{<matomeQuote body="データの種類によるよね。レプリケーションの要素から考えると、このファイルシステムは容量よりも読み込み速度が重視されてると思う。どっちにしても、「ニアライン」ストレージって考え方があって、バックアップエージェントだけがアクセスするように設計されたストレージ層のこと。メインのファイルシステムのsnapshotを数時間おきに保存するんだ。" userName="KaiserPro" createdAt="2025-04-18T09:35:45" color="">}}

{{<matomeQuote body="＞what you use for backup and recovery<br>ハイパースケーラーで働いてた経験から言うと、1. リージョンを跨いだミラーリング 2. 昔ながらのテープバックアップ。" userName="dilyevsky" createdAt="2025-04-18T02:16:47" color="">}}

{{<matomeQuote body="これって、Deep Learningのワークロードには特に重要じゃない機能がたくさんある複雑なセットアップに見えるな。必要なのはPB級のストレージ、読み書きの並列処理（1PBのファイルを10,000個の100GBのshardに分割して、各クライアントが必要なshardだけを読めば達成できる）、あと冗長性くらいでしょ。Consistencyは実現が難しいし、ここでは必要ない気がする。プログラマーが頑張って、違うプロセスが違うファイル名に書き込むようにすればいいんだし。" userName="londons_explore" createdAt="2025-04-17T13:45:06" color="">}}

{{<matomeQuote body="＞Consistency is hard to achieve and seems to have no use here<br>それ、有名な死亡フラグだよ。こういうデータプラットフォームを大規模に運用してると、ノードがどんどん壊れていくのが普通なんだよね、特にクラウドだと。だから、堅牢なConsistencyとレプリケーションの仕組みがないと、トレーニングジョブに必要なブロックが特定のノードになくて、再起動が必要になるってことがよくあるんだ。" userName="threeseed" createdAt="2025-04-17T14:14:37" color="#ff33a1">}}

{{<matomeQuote body="ありがちだよねー、こういうのって。最初は「分散システムなんてチョー簡単！」とか言ってるんだけど、最後は「やべっ！」ってなって、そそくさと逃げるんだよなー。" userName="ted_dunning" createdAt="2025-04-17T18:51:46" color="">}}

{{<matomeQuote body="確かに冗長性は大事だよね（学習データは多少欠けても問題ないけど）。でも、ここで言ってる一貫性って、データベースでよくある厳密な順序付けのことだと思うよ。たくさんの人がデータを読み書きして、もし書き込みが無理ならエラーにしたり、ありえない状態を読ませないようにするやつ。機械学習にはそこまでいらないよね。" userName="londons_explore" createdAt="2025-04-17T14:21:44" color="#ff33a1">}}

{{<matomeQuote body="これって、元々はクオンツ系のヘッジファンド向けに開発されたんじゃないかなーって思う。" userName="sungam" createdAt="2025-04-17T14:05:03" color="">}}

{{<matomeQuote body="たぶんそうだと思う。ヘッジファンドって、大量のデータを共有して、kdb+とかでバックテストしたいってニーズがあるんだよね。NFS使ってるのが多いけど、スケールしにくいのが難点。だから、特定の用途に特化したファイルシステムを自作するのは理にかなってると思う。AIの学習と似たような使い方だし。" userName="huntaub" createdAt="2025-04-17T14:48:22" color="#785bff">}}

{{<matomeQuote body="他のコメントでも言ったけど、3FSは2019年に設計されたんだよ。[0]を見てみて（中国語だけど）。<br>＞[0]　”https://www．high－flyer．cn/blog/3fs/”" userName="ammo1662" createdAt="2025-04-18T02:27:09" color="">}}

{{<matomeQuote body="SeaweedFSの質問と同じように、JuiceFSと比較してどうなの？俺のホームラボでは、JuiceFSをS3 Garageの上で動かそうと思ってるんだ。Garageはレプリケーションだけで、ECとかシャーディングはないけど、そこまで必要ないし、設定が簡単そうだったんだよね。" userName="snthpy" createdAt="2025-04-17T16:21:13" color="">}}

{{<matomeQuote body="アーキテクチャが全然違うんだよね。3FSは全部SSDに保存するから、めちゃくちゃ高いけど低遅延（アクセスに100～300マイクロ秒くらい）。JuiceFSはS3に保存するから、安いけど遅延が大きい（アクセスに20～60ミリ秒くらい）。パフォーマンスのスケーラビリティは同じくらいだと思うよ。メタデータはどっちもデータベースを使うから、同じものを選べばメタデータのパフォーマンスも同じくらいになるはず。" userName="huntaub" createdAt="2025-04-17T16:32:04" color="#785bff">}}

{{<matomeQuote body="なるほど、それは知らなかった。ほとんどの場合、遅延は我慢できるかな。頻繁にアクセスするファイルは、JuiceFSのキャッシュで遅延を減らせるはずだし。俺のユースケースはDeepSeekとは違うからね。3FSを調べる必要はないかなと思ってたんだ。JuiceFSの魅力は、コンテナに簡単にマウントできること。小規模クラスタで分散FSとして使えるし、CephとかGlusterFSより簡単そうだし、S3をバックエンドにできるから、クラウドのS3に乗り換えることもできるし。" userName="snthpy" createdAt="2025-04-18T10:01:31" color="#ff33a1">}}

{{<matomeQuote body="CephFSを使わないのはなんで？実世界でたくさんテストされてて、ペタバイト規模でも信頼性があるのに。オープンソースだし、高速なNVMeストレージで動かせるし、10Gbps以上のインターコネクトで高いIOPSも出せるのに。「他の分散ファイルシステム」のセクションで、この質問に答えてないと思う。" userName="randomtoast" createdAt="2025-04-17T14:01:02" color="">}}

{{<matomeQuote body="CephFSは遅いからだよ。OSDがNVMeドライブを想定して設計されてないから、最新のNVMeのIOスループットとIOPSを処理できないんだよね。ゼロコピーとかRDMAが必要になる。次世代OSDのCrimsonプロジェクトがあるけど、まだ時間がかかりそう。Wekaの方がパフォーマンス的には優れてるよ。<br>＞[0]　”https://ceph．io/en/news/crimson/”<br>＞[1]　”https://seastar．io/”<br>＞[2]　”https://www．weka．io/”" userName="charleshn" createdAt="2025-04-17T16:57:16" color="#38d3d3">}}

{{<matomeQuote body="＞だって実際結構遅いんだもん。<br>”僕らは635 GiB/sでデータを読んでたんだ。1500万の4kランダムリードIOPSを超えたよ。”<br>ソース：https://ceph.io/en/news/blog/2024/ceph-a-journey-to-1tibps/<br>いやー、マジで15MのランダムリードIOPSは結構速いと思うけどな。エンタープライズ環境でNVMeだけで数百万IOPSのクラスター構築したことあるし。" userName="rthnbgrredf" createdAt="2025-04-18T06:57:39" color="">}}

{{<matomeQuote body="＞15MのランダムリードIOPSは結構速いと思うって言ってるけど<br>680個のNVMe SSDを68台のストレージサーバー（つまり68CPU）で使って、たった15M（チューニングして25M）のランダムリードIOPSってのは、イマイチだよね。3FSとか他のカスタム設計が輝くユースケースって、64台のサーバーにそれぞれ8個のPCIe gen 4 NVMe SSD（合計512個のSSD）で200MランダムリードIOPSとかそんな感じ。" userName="rfoo" createdAt="2025-04-18T11:19:34" color="#ff5c5c">}}

{{<matomeQuote body="最新のcephリリースだと、2 OSD/NVMEで最新のNVMEデバイスを飽和させられるんだよね。NVMEあたり複数のOSDを持たせるのはある種のハックだけど、ちゃんと動くよ。nvme-ofがcephのパフォーマンスにおける次のハードルだってのは同意。" userName="__turbobrew__" createdAt="2025-04-17T18:11:00" color="#ff5c5c">}}

{{<matomeQuote body="今の推奨ってNVMeあたり複数のOSDを持たせないことじゃなかったっけ？しばらく見てないけど。Infinibandメッシュネットワークで接続された3つのノードに、3つのSamsung NVMe（PLP付きのエンタープライズ向け、型番は忘れちゃった）があるよ。ベンチマークしたとき、シングルコアCPUの性能にボトルネックがあって、2000MBpsくらいしか出なかった気がする。ホームラボのニーズには十分だけどね。" userName="sgarland" createdAt="2025-04-18T13:48:39" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="https://ceph.io/en/news/blog/2023/reef-osds-per-nvme/<br>1 OSDと2 OSDでベンチマーク取ったら、2 OSDの方が良かったよ。NVMEあたり3つ以上のOSDを動かすのは推奨されてないと思う。" userName="__turbobrew__" createdAt="2025-04-18T15:58:24" color="#ff5733">}}

{{<matomeQuote body="DigitalOceanはS3とブロックボリューム製品の基盤にCephを使ってるんだよね。俺がいたとき、Cephを管理するチームが2つもあって、上に構築されたコントロールプレーンとかは含まれてないんだよ。大規模に管理・チューニングするのはマジで大変。DOはCephFSベースのものを提供することを承認しなかった。管理することが多すぎるからね。Red Hatの開発者であるメンテナと改善点をコントリビュートするのも大変だよ。" userName="skrtskrt" createdAt="2025-04-17T19:29:30" color="#45d325">}}

{{<matomeQuote body="Cephはマジで複雑すぎる。もしチームが2つあったら、スクラッチで書き直すことを試すかも。" userName="Andys" createdAt="2025-04-17T19:50:55" color="">}}

{{<matomeQuote body="まともなデータセンター規模のCephの代替案は、残念ながら独自のものが多いんだよね。大規模であることを証明するのに多額の費用と人的専門知識時間が必要だから、コストを回収して先を行きたいんだよ。Minioは絶対にデータセンター規模じゃないし、Goで書かれたものがそこまで到達するとは思えない。大規模なスケールでのガベージコレクションは大変だからね。Rustで書かれたものがそのうち出てくると思う。Oxide computer companyからかな？OSSをたくさんやってるけど、特定のサーバーラックOSに焦点を当ててるみたい。" userName="skrtskrt" createdAt="2025-04-17T20:35:13" color="#785bff">}}

{{<matomeQuote body="＞Rustで書かれたものがそのうち出てくると思う。Oxide computer companyからかな？<br>Crucibleが僕らのストレージサービスだよ：https://github.com/oxidecomputer/crucible<br>READMEにリンクされているRFD 60には、Cephに関する情報が少し含まれてるよ。評価したんだ：https://rfd.shared.oxide.computer/rfd/0060" userName="steveklabnik" createdAt="2025-04-17T21:11:15" color="#ff33a1">}}

{{<matomeQuote body="へー！RAIDZ3を何らかの賢いラッパー（またはDRBD）で使ってると思ってたけど、それよりもずっと複雑なんだね。" userName="sgarland" createdAt="2025-04-18T13:57:09" color="">}}

{{<matomeQuote body="個人的にはあんまり触ってない領域だけど、色々動きがあるみたいだね。これからもっと増えるんじゃないかな。例えば、今は自分たちでデータの整合性を保証してるけど、Cephみたいなのが勝手にやってくれるなら二重払いになっちゃうじゃん？だから、そういう選択肢をユーザーに提供するのが大事だよね。この分野、マジで面白いよね！" userName="steveklabnik" createdAt="2025-04-18T17:22:54" color="">}}

{{<matomeQuote body="3FSのchunk engineはRustで書かれてるんだって。" userName="zackangelo" createdAt="2025-04-18T13:48:55" color="">}}

{{<matomeQuote body="うちにもCephのクラスターがいくつかあるよ。<br>うちのシステム担当が言うには、動かすのがマジで時間泥棒で、しょっちゅう監視が必要なんだって。" userName="tempest_" createdAt="2025-04-17T14:33:28" color="">}}

{{<matomeQuote body="ストレージクラスターを自分で運用するなら、Cephに限らずこれが問題だと思うよ。インスタンスが落ちてもデータを維持するって、結局は結構なメンテナンスが必要になるんだよね（自動化しても）。" userName="huntaub" createdAt="2025-04-17T14:35:19" color="#785bff">}}

{{<matomeQuote body="10年くらい前にクラスター管理してたけど、当時はまあまあだったよ。bluestoreの頃ね。一つ問題があったのは完全に俺のミスだけど、そこまで酷くはなかった。" userName="_joel" createdAt="2025-04-17T14:38:24" color="">}}

{{<matomeQuote body="CERNはCephFSを50PBくらい使ってて、色んなアプリで活用してるみたい。めっちゃ満足してるってさ。" userName="elashri" createdAt="2025-04-17T15:01:39" color="#ff5c5c">}}

{{<matomeQuote body="CERNもCeph使ってると思ってたけど、調べてみたらCernVM-FSとか自社製のソリューションに切り替えたみたいだね。何があったんだろう。" userName="dfc" createdAt="2025-04-17T15:23:39" color="">}}

{{<matomeQuote body="CERNはCephのヘビーユーザーで、CephFS、オブジェクトストレージ（S3のバックエンドとして使用）、ブロക്ക്ストレージ（主にVMのストレージ用）全体で約100PBのデータがあるよ。CVMFS(https://cernvm.cern.ch/fs/)は、LHC実験で使用されるソフトウェアスタックをWLCG(Worldwide LHC Computing Grid)全体に配布するために使用されていて、ストレージニーズのためにCephでS3をバックアップしてる。物理データはEOS(https://eos.web.cern.ch)に保存されてて、CERNは最近EOSで管理されてる生のディスクストレージの1EBマークを超えたんだ。EOSはCERNBox(https://cernbox.web.cern.ch/)のストレージソリューションとしても使用されてて、ユーザーデータを保持してる。データ分析ではROOTを使用して、XRootD(https://github.com/xrootd/xrootd)を使用してEOSからリモートでデータを読み取る。EOS自体がXRootDに基づいているから。XRootDは、他のソリューションと比較して、ネットワーク経由でデータを読み取るのに非常に効率的。高エネルギー物理学以外の実験でも使用されてる。たとえば、LSSTのクラスタ化されたデータベースQserv(https://qserv.lsst.io)など。" userName="amadio" createdAt="2025-04-18T12:23:24" color="#785bff">}}

{{<matomeQuote body="切り替えたわけじゃないよ。必要に応じて両方使ってるんだ。EOS(CVMFS)は主に物理データの保存とユーザーデータに使われてて、Cephはインフラとか、自社製アプリとか、他の色々なことに使われてる。" userName="elashri" createdAt="2025-04-17T16:29:47" color="#ff5c5c">}}

{{<matomeQuote body="DeepSeekの分散FSって簡単に無効化できるの？例えば、アメリカの大学が研究目的でDeepSeekを使う許可を得たとして、研究データがローカルのクラスターファイルシステムから絶対に漏れないようにする必要があるとするじゃん？<br>Edit：DeepSeek初心者だから、的外れな質問だったらごめんね。" userName="seethishat" createdAt="2025-04-17T15:23:05" color="">}}

{{<matomeQuote body="DeepSeek modelと3FSってローカルでオフライン運用できるってマジ？ネットに繋がなくても使えるなら、セキュリティ的にヤバい情報扱う時とか超安心じゃん？もっと詳しく教えてほしいかも。" userName="ikeashark" createdAt="2025-04-17T15:26:26" color="#38d3d3">}}

{{<matomeQuote body="ありがとー！疑問解決した！" userName="seethishat" createdAt="2025-04-17T15:32:32" color="">}}

{{<matomeQuote body="DeepSeekは会社名ね。この記事はそこの分散ファイルシステムの話で、DeepSeek-R1とかDeepSeek-V3みたいなモデルとは別物だよ。例のUSの大学はDeepSeekのモデルを研究に使ってるだけで、3FS使ってるわけじゃないと思う。" userName="ajcp" createdAt="2025-04-18T01:23:54" color="#ff5c5c">}}

{{<matomeQuote body="関連情報だよー。<br>Understanding Smallpond and 3FS<br>＞https://news.ycombinator.com/item?id=43232410<br>－ 2025年3月 (47件のコメント)<br>Smallpond – DuckDBと3FSで作られた軽量データ処理フレームワーク<br>＞https://news.ycombinator.com/item?id=43200793<br>－ 2025年2月 (73件のコメント)<br>Fire-Flyer File System (3FS)<br>＞https://news.ycombinator.com/item?id=43200572<br>－ 2025年2月 (101件のコメント)" userName="dang" createdAt="2025-04-17T19:10:26" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
