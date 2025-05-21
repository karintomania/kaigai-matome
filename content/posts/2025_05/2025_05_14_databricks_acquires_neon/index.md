+++
date = '2025-05-14T00:00:00'
months = '2025/05'
draft = false
title = 'DatabricksがNeonを買収！その狙いは？'
tags = ["買収", "データベース", "データ分析", "クラウド", "IT"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> DatabricksがNeonを買収！その狙いは？

引用元：[https://news.ycombinator.com/item?id=43982777](https://news.ycombinator.com/item?id=43982777)




{{<matomeQuote body="データウェアハウスってオープンソースでどんどんコモディティ化してるよね。<br>友達の会社、Clouderaに2PB+データあったけど、Databricksみたいなクラウドに行かずにIceberg、Trino、Supersetで自社プラットフォーム作ってコスト5倍削減したらしい。k8sオペレーターもオンプレS3も良くなってる。サーバーもすごいスペックあるしね。<br>TrinoだけじゃなくてStarRocksとかClickhouseもエンタープライズ級のk8s対応してる。<br>Databricksの600億ドル評価額は足かせだよ。価格で正当化しないとダメだけど、コアビジネスはコモディティ化してるし。<br>Neon買収はDatabricksに足りなかったオペレーショナルDB（行指向）を埋めるためだろうね。" userName="jamesblonde" createdAt="2025/05/14 14:05:10" color="#ff5733">}}




{{<matomeQuote body="k8sオペレーターベースのオープンソースのCloudera代替を探してる人いない？うちはまさにそういうの作ってるよ（もう5年くらいやってる）：https://stackable.tech/<br>& https://github.com/stackabletech/<br>オンプレのオープンソースS3は課題だよね。MinIOはちょっと使いたくないし、他にエンタープライズ向けのソリューションがあまり見当たらない。" userName="lars_francke" createdAt="2025/05/14 15:11:45" color="">}}




{{<matomeQuote body="エンタープライズにとってはコモディティ化なんて関係ないんだよ。前の職場ではオープンソースとか10年後どうなるかわからない会社はダメだったし、データも自社テナント以外に置くのは無理だった。Databricks導入は私のトップ3の功績の一つって言われたよ。新しいプラットフォームに入れ替えるのってエンタープライズにはめちゃくちゃコストかかるから、信頼できないもの（ほら、オープンソースのやつとか）には頼れないんだよ。例外的にスタートアップ製品を入れたこともあるけど、運用チームのスキル不足から結局マネージドサービス（Atlas）に高額なサポート費用を払うことになったりした。スタートアップとエンタープライズでは考え方が全く違うってことだね。" userName="richardw" createdAt="2025/05/14 19:37:35" color="#38d3d3">}}




{{<matomeQuote body="でもさ、なんでDatabricksからオペレーショナルDBなんて買うわけ？Databricksが時価総額維持するためにじたばたしてるだけとしか思えないんだけど。" userName="datadrivenangel" createdAt="2025/05/14 17:32:20" color="">}}




{{<matomeQuote body="MinIOの何が悪いの？ちょっと興味ある。Cephって選択肢は？" userName="matt-p" createdAt="2025/05/14 15:51:00" color="">}}




{{<matomeQuote body="クラスターの拡張とか、イレージャーコーディング設定の変更とか、ファイル内（parquetとか）のランダムアクセスが必要な時とか、あと運用（Day 2 operation）でいろいろ大変なんだよ。" userName="positisop" createdAt="2025/05/14 17:48:45" color="">}}




{{<matomeQuote body="＞ 前の職場ではオープンソースとか10年後どうなるかわからない会社はダメだった<br>どうせVMwareだらけだったんでしょw" userName="jeffbee" createdAt="2025/05/14 23:55:57" color="">}}




{{<matomeQuote body="AIのユースケースに加えて、データウェアハウスのデータをOLTPみたいに高速参照とか高並行処理で共有したい時があるんだよね。Neonがそれに対応するかは分からないけど、そうだといいな。SnowflakeのHybrid Tablesみたいに、カラムストアの横に行ストアを追加するイメージ。OLAP + OLTP = HTAPだね。" userName="antruok" createdAt="2025/05/14 18:28:59" color="#45d325">}}




{{<matomeQuote body="Databricksが単にRDB欲しかっただけなら、自分でPostgresやればよかったんじゃない？こんなにお金出してNeon買うってことは、なんか特別なものがNeonにあるってことだと思うんだよ。彼らの売り文句的に言えば”Postgres向けの独立してスケール可能なストレージとコンピュート”ってやつかな。" userName="swyx" createdAt="2025/05/14 19:10:04" color="#ff33a1">}}




{{<matomeQuote body="エンタープライズ企業は、ただのデータウェアハウスじゃなくて、Databricksみたいなフル機能のデータプラットフォームを求めることが多いんだよね。" userName="antruok" createdAt="2025/05/14 20:07:46" color="">}}




{{<matomeQuote body="中身をちゃんと見てみろよ、制限はコア部分にあるんだ．UIを貼り付けただけじゃ、スケールした時に何が必要か隠せないんだから．" userName="positisop" createdAt="2025/05/14 18:16:55" color="">}}




{{<matomeQuote body="SingleStoreは何年も前からやってるよ．Unistoreは苦戦してるけどね．" userName="bbohan" createdAt="2025/05/14 19:55:34" color="">}}




{{<matomeQuote body="全データをDatabricksとかSnowflakeに入れるETLは大変な労力がかかるんだ．OLTPデータがすでにDatabricksにあって、OLAP層から直接アクセスできた方がずっといいよね．" userName="ako" createdAt="2025/05/14 18:32:47" color="#ff33a1">}}




{{<matomeQuote body="全く同意だね．僕はオープンソースのStarRocksユーザーで、k8sオペレーターを使ってテラバイト級の顧客向け分析をやっててハッピーだよ．僕の周りにはDatabricksの必要性はほとんどないな．" userName="hlpn" createdAt="2025/05/14 14:29:50" color="">}}




{{<matomeQuote body="SnowflakeとDatabricksがIcebergを推す中で、PostgresのOLTPデータをOLAP向けにするのが難しくなってる．問題はCDCツールじゃなくて、IcebergみたいなカラムストアがOLTPの書き込みに弱くて追いつけないことなんだ．これはMooncakeが解決しようとしてる問題で、Icebergを運用可能なカラムストアにしてPostgresの鮮度（＜s freshness）に追いつけるようにするんだよ．https://www.mooncake.dev/" userName="moonikakiss" createdAt="2025/05/14 19:56:12" color="#45d325">}}




{{<matomeQuote body="Singlestoreってなんでそんなに人気がないんだろうね（少なくとも僕は聞いたことがないんだ）．たぶんHTAP自体はそんなに重要な機能要件じゃなくて、他の主要なDB機能のおまけみたいなものなんだろうね．" userName="antruok" createdAt="2025/05/14 20:12:51" color="#45d325">}}




{{<matomeQuote body="そうだね．OpenShiftとかRed Hat for LinuxとかSAPとかIBMとか．でもさ，影響力とか収益とか競合に対して，それを知ってる人ってほんの一握りなんだ．スキルが必要なら”買う”ってクリックすれば，専門家なコンサルタントが100人来て解決してくれて，次に進めたんだ．使ってるものを知ってる人を探したり，50種類ものオープンソースツールを学ぶ必要はなかったんだよ．もっと緩い世界から来た僕は，その状況での原則がありがたいって学んだんだ．" userName="richardw" createdAt="2025/05/15 07:25:21" color="">}}




{{<matomeQuote body="StarRocksのサイト見たんだけど（https://www.starrocks.io/），ClickhouseとかDruid，Trinoとは比較してるのに，Spark／Databricksとは比べてないんだね。やっぱSparkって競争力ないのかな？" userName="anilshanbhag" createdAt="2025/05/14 15:11:18" color="">}}




{{<matomeQuote body="ちょっと詳しくないんだけど，フルデータプラットフォームってどういう意味？必要な色々なDBを全部一つのベンダーから買うってこと？それとも，色々なベンダーのを寄せ集めるより連携がもっと密なの？" userName="tqi" createdAt="2025/05/15 02:51:18" color="">}}




{{<matomeQuote body="Icebergって読み書き全部に関わるの？メタデータだけだと思ってたんだけど？" userName="ako" createdAt="2025/05/14 21:02:29" color="">}}




{{<matomeQuote body="もう何十年もコモディティ化してるよね。価格性能みたいな指標は昔からあるけど，SnowBricks製品はそれに全然ダメ。強引な売り込みか，控えめかの違いだよ。" userName="kwillets" createdAt="2025/05/14 15:53:10" color="">}}




{{<matomeQuote body="MinIOは効率が悪くて，静的ハッシュでクラスターを作るだけ。拡張も縮小も大変なんだ。複数のプールをクラスターって呼んでるけど，オブジェクトを探せない静的ハッシュの集まりだよ。VC資金でマーケティングばっかりしてるね。" userName="positisop" createdAt="2025/05/14 19:49:57" color="">}}




{{<matomeQuote body="アプライアンスを買って前払いする必要がないのは，すごく価値のある選択肢だよね。あと，処理とストレージが分かれてることで，アーカイブやスケーリング戦略が立てやすくなるよ。" userName="datadrivenangel" createdAt="2025/05/14 17:34:11" color="">}}




{{<matomeQuote body="HTAPは難しいんだ。<br>１．OLTPの置き換えが大変。<br>２．OLTPとOLAPはチームが違うから，誰を中心に進めるか難しい。<br>３．SingleStoreみたいなのがなくてもHTAPは可能だよ。OLTPに追いつけるカラムストアがあればいいんだ。（追伸：SingleStoreで働いてたよ。）<br>https://www.mooncake.dev/blog/htap-is-dead" userName="moonikakiss" createdAt="2025/05/14 20:35:25" color="#38d3d3">}}




{{<matomeQuote body="MinIOはS3パターンを考慮してないしインデックスもない。ファイルシステム依存だから，バージョンが多い時とかリストアップする時にロック競合でダメになる。オープンソースへの投資はやめたみたい。<br>https://github.com/minio/minio/issues/20845#issuecomment-259..." userName="cirque" createdAt="2025/05/14 22:57:06" color="#ff5c5c">}}




{{<matomeQuote body="先週Neonに応募して、買収ニュースが流れて今朝不採用通知が来たんだけどさ<br>不採用通知もらってこんなに嬉しかったことないわ<br>これで3回連続買収に巻き込まれるとこだったし…ホント最悪なんだって<br>俺はただ安定が欲しいだけ<br>Neonチームおめでとう！Neon使ってるし大好きだよ<br>これで彼らが変わりすぎないといいんだけどな" userName="Robdel12" createdAt="2025/05/14 12:32:05" color="">}}




{{<matomeQuote body="Kenna Securityに雇われたのがCiscoに買収される一ヶ月前だったんだけど、ホントに最悪な経験だったんだ<br>だからKennaのリーダーシップが関わるところでは絶対働かないし、Ciscoで働くなんて二度と考えたくないね" userName="tedivm" createdAt="2025/05/14 12:52:17" color="">}}




{{<matomeQuote body="僕はこれまで2回経験したけど、1回はほとんど何も変わらなかったし、もう1回は一年間書類の山に埋もれてたみたいなもんだったよ<br>何がそんなに最悪な経験だったか聞いてもいい？" userName="jhickok" createdAt="2025/05/15 02:39:04" color="">}}




{{<matomeQuote body="個人的には逆の経験かな<br>買収時って一番面白い時期に雇われるんだよね<br>何回か、買収した会社をうまくスケールさせて統合する経験があったからって採用されたこともあるよ" userName="no_wizard" createdAt="2025/05/14 14:51:26" color="">}}




{{<matomeQuote body="初めて経験した買収はそこまで悪くなかったよ！<br>でも文化的にすごく違ってたんだ<br>だから2年経ってちゃんと引き継ぎを済ませた後、別のスタートアップに移ったんだ<br>ああいう状況に飛び込むのは大変だね、だって二つのチームはちょっと仲が悪かったりして、あなたはホントに“どっちつかず”だから<br>両方のチームに面接してもらえるようにしたいと思うな" userName="Robdel12" createdAt="2025/05/14 17:23:11" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞あなたはホントに“どっちつかず”だから<br>個人的には、こういう状況に雇われることの強みはここだと思うな<br>どちらの会社にも既存の偏見がないし、それに伴うめんどくさい荷物もない<br>両方のやり方の長所短所を見ることができるし、それに応じて動けるんだ" userName="no_wizard" createdAt="2025/05/14 17:54:24" color="">}}




{{<matomeQuote body="買収時にEMだったんだけど、その後の2回のレイオフを乗り越えなきゃいけなかったんだ<br>チームを再編成して、誰を残すか決めるグループにも入ってたよ<br>士気は最悪だったし、文化も全然合わなかった<br>それが原因でかなり燃え尽きて、今はICに戻って楽しく働いてるよ" userName="bicx" createdAt="2025/05/14 18:05:01" color="">}}




{{<matomeQuote body="＞これで彼らが変わりすぎないといいんだけどな<br>俺の予想だと、このチームはOnline Tables techに組み込まれるだろうね<br>製品的には理にかなってると思う" userName="gopalv" createdAt="2025/05/14 17:05:56" color="">}}




{{<matomeQuote body="うん、俺もそうだと思うよ<br>Databricksはここ数年DynamoDBとかCosmosDBにお金を払ってきたんだ<br>だけど、Neonはリアルタイムワークロードに必要なスペックじゃないんだ<br>高性能AIにはね<br>CockroachとかAerospike、RonDBみたいな他の候補もいくつか予想してたんだけどな" userName="jamesblonde" createdAt="2025/05/14 17:55:44" color="#785bff">}}




{{<matomeQuote body="俺、過去のスタートアップ買収経験から言うけど、創業者かよほどのエクイティがないと買収は割に合わないよ。俺たち現場で統合のために働くのに、創業者は報われてすぐいなくなったり力奪われたりするんだ。" userName="Robdel12" createdAt="2025/05/14 17:20:45" color="#ff33a1">}}




{{<matomeQuote body="10億ドルって多分全部現金じゃないだろうね。かなりの部分はDatabricksの換金しにくい株式だと思うよ。" userName="dilyevsky" createdAt="2025/05/14 18:52:21" color="">}}




{{<matomeQuote body="DatabricksはSparkが中心だけど、今はIcebergとDuckDBの組み合わせの方が安くて速くて分かりやすいから、ほとんどの会社にはそっちで十分じゃないかな。俺たちはDefinite[0] って製品をそういう考えで作ってるよ。" userName="mritchie712" createdAt="2025/05/14 11:25:21" color="#785bff">}}




{{<matomeQuote body="あなたが言ってた代替案、IcebergとDuckDBって、両方ストレージソリューションじゃないの？Sparkは分散コンピューティングを表現する方法だよね？<br>この分野からちょっと離れてたんだけど、もっと新しい分散コンピューティングのやり方ってあるの？" userName="isignal" createdAt="2025/05/14 15:38:01" color="#785bff">}}




{{<matomeQuote body="Databricksはデータ版のJiraみたいなもんで、誰も使いたがらないクソツールだよ。機能は多いけどどれも微妙だし、今はもっと良い代替がある。自分で選んで使うことは絶対ないね。" userName="MOARDONGZPLZ" createdAt="2025/05/14 15:12:16" color="">}}




{{<matomeQuote body="いや、マジで同意できないな。<br>Hadoop使ってた身からすると、Databricksはユートピアだよ。安定してるし、速いし、massive datasetsを扱ってもめちゃくちゃ上手くスケールする。<br>一番不満があるとすれば、マジで値段が高すぎることだけだね。" userName="swalsh" createdAt="2025/05/14 11:18:13" color="#ff5c5c">}}




{{<matomeQuote body="Serverlessをマジでゴリ押ししてくるけど、制限とかsurprise gotchasがめちゃくちゃ多いんだよ。もうほんと頭おかしくなりそう。" userName="viccis" createdAt="2025/05/14 17:19:08" color="">}}




{{<matomeQuote body="どんな選択肢を使ってるの？俺、Databricksで働いてるわけじゃないけど、自分のデータ基盤スタートアップを立ち上げようとしてるんだ。<br>だから”良い”ってのがどんな感じか聞きたいな！" userName="winwang" createdAt="2025/05/14 19:51:51" color="">}}




{{<matomeQuote body="Flink．の方がさ，今のところSparkより勢いあるよね．" userName="Nate75Sanders" createdAt="2025/05/14 15:48:59" color="">}}




{{<matomeQuote body="スタートアップ作るほどでもないかなー．Neonは面白かったけど，OSSが成熟しちゃって後追いはきつい感じ．OSSをそのまま使うのがいいかもね．" userName="MOARDONGZPLZ" createdAt="2025/05/14 20:30:08" color="">}}




{{<matomeQuote body="俺さ，昔はあのプラットフォームの大ファンだったんだよ．だって2020年とか2021年頃はさ，AWSとかAzureとかSnowflakeと比べても，データプラットフォーム作るならマジで唯一まともな選択肢だったんだもん．でも今はフィーチャークリープとピボット＆買収が多すぎてダメになっちゃった．機能の名前付けがクソ下手なのもマイナスだね．" userName="robertkoss" createdAt="2025/05/14 11:17:51" color="">}}




{{<matomeQuote body="SparkはHadoopからマジで大きな進歩だったよな．でも最近はTrinoとか何でもいいから，そういうの使えばいいじゃん．データ扱う新しい方法がたくさん出てきてて，どれもSparkがHadoopから進歩したみたいに，人間工学的にも，パフォーマンスも価格もSparkよりずっと進化してるんだぜ．" userName="willvarfar" createdAt="2025/05/14 11:54:29" color="">}}




{{<matomeQuote body="あ，俺のスタートアップはPostgresじゃなくて，GPUで高速化したSparkの方なんだよね．これこれ → https://news.ycombinator.com/item?id=43964505<br>データ製品でさ，こういうUXはマジ勘弁ってのある？嫌いなUX教えてほしいな．" userName="winwang" createdAt="2025/05/14 20:33:31" color="">}}




{{<matomeQuote body="”momentum”って言葉はさ，難しいよね．ZigはC++より勢いあるけど，あの言語を追い越せるか？俺は無理だと思うね．" userName="mgfist" createdAt="2025/05/14 17:46:00" color="">}}




{{<matomeQuote body="それにさ，明らかにめっちゃ高い傾向があるんだ！機能少ないのに価格が4倍～5倍とか…" userName="datadrivenangel" createdAt="2025/05/14 17:35:22" color="">}}




{{<matomeQuote body="duckdbはクエリエンジンだよ．データがあるS3上のparquetとかを直接クエリできるのが強み．分散ワークロードの実験例もあるけど，まだ実験段階．これね ― https://www.definite.app/blog/smallpond" userName="mritchie712" createdAt="2025/05/14 17:28:54" color="#ff33a1">}}




{{<matomeQuote body="ねえねえ，みんなが一番困ってる制限とか落とし穴って何？俺，このチームのメンバーなんだ．ペインポイントについて聞きたいんだよね．" userName="hacliff" createdAt="2025/05/14 18:36:02" color="">}}




{{<matomeQuote body="もしこれらの疑問の答えが見つかったら、その結論に至った経緯についてのブログ記事は絶対読むよ。これからも面白い質問続けてね！ じゃあね。" userName="hadlock" createdAt="2025/05/14 23:04:39" color="">}}




{{<matomeQuote body="Sparkをホスティングするのってそんなに画期的なのかな？それにさ、Sparkってエンタープライズのデータ処理の90％には複雑すぎない？この会社の評価額が全然理解できないんだけど。なんでそんな高いの？" userName="apwell23" createdAt="2025/05/14 12:14:18" color="">}}




{{<matomeQuote body="DuckDBはストレージソリューションだけじゃないんだよ。それは保存されてる様々なファイル形式を、何も再保存せずに直接クエリできるんだ。それがウリの一つで、S3とかに置いてあるアーカイブやログデータを「”ingest”」する必要もなく、すでに保存してるデータを複製するのに二重にお金払わなくて済むんだ。" userName="tomjakubowski" createdAt="2025/05/14 17:15:55" color="#ff33a1">}}




{{<matomeQuote body="IBMみたいな「みんなこれが使ってるから！ きっと良いはず！」って感じのソフトウェアやプラットフォームの市場は、どうやらまだ飽和してなかったみたいだね。" userName="isoprophlex" createdAt="2025/05/14 11:08:14" color="">}}




{{<matomeQuote body="Trino（AWS Athenaとして使ったんだけど、それはまだTrinoがPrestoって呼ばれてた頃の話ね）のことは本当にどれだけ褒めても足りないくらいだよ。「”どんどん増えていくCSV／JSON／Excel／Parquet／その他なんでも”」の山を、変換したり他のシステムに入れたりせずに、そのままSQLでクエリできるようにしたのは、ものすごく印象的だったな。本当にすごい技術の成果だよ。" userName="lelandbatey" createdAt="2025/05/15 05:08:58" color="#ff5c5c">}}




{{<matomeQuote body="Hadoopはそもそも、大きなデータファイルのバッチ処理システムであって、データウェアハウス（DW）の概念が扱っていたようなオンラインのレポーティングや分析のワークロードには全く向いてなかったんだ。その上にPigとかHiveとかHBaseとか後続のツールをいくら重ねても、その根本的な事実は決して変わらなかったんだよ。" userName="DebtDeflation" createdAt="2025/05/14 14:13:07" color="#785bff">}}




{{<matomeQuote body="もしコスト（またはパフォーマンス）が問題なら、うちは超効率的でGPUで速くした、使いやすいSparkを今作ってるところだよ。詳しくはここ見てね： https://news.ycombinator.com/item?id=43964505" userName="winwang" createdAt="2025/05/14 19:46:56" color="">}}




{{<matomeQuote body="多くの人が気づき始めてるんじゃないかな、実際には分散処理ってそんなに必要ないんだって。シングルノードのDuckDBでもかなりいけるし、そっちの方がずっとシンプルだよ。" userName="robertlacok" createdAt="2025/05/15 09:45:36" color="#38d3d3">}}




{{<matomeQuote body="最近DuckDBを使い始めたんだけど、この機能めっちゃ興奮するわ。完全に新しいパラダイムだね。科学者とか、たぶん他の多くの人にとっても最高のツールだよ。もっと早く真剣にやってればよかったなー。" userName="steve_adams_86" createdAt="2025/05/15 05:57:54" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="でも…でも…君たちのこと追跡しないと！それが僕らのサイトの全目的なんだからさ /s" userName="fuzzy_biscuit" createdAt="2025/05/14 11:58:00" color="">}}




{{<matomeQuote body="Sparkのいいとこはね、scala/python/RのAPIがあることだよ。これのおかげでSQLのめんどくさいこと（特に複数カラムに同じ変換する時とか）たくさん避けられるんだ。" userName="disgruntledphd2" createdAt="2025/05/14 13:14:13" color="">}}




{{<matomeQuote body="今ね、ParaQuery（GPUアクセラレート版のSparkだよ）で別のSparkベースのやつ作ってるんだ。詳細はこれ見て→ https://news.ycombinator.com/item?id=43964505" userName="winwang" createdAt="2025/05/14 19:45:52" color="">}}




{{<matomeQuote body="Databricksってさ、Oracleレベルでヤバいんだよ。きっとNeonをダメにするか、めっちゃ高くするに決まってる。だから中長期的には、Neonの代わりに使えるものを探し始めるつもりだよ。" userName="acd10j" createdAt="2025/05/14 11:26:26" color="#45d325">}}




{{<matomeQuote body="DatabricksのM&A戦略は買収先をダメにするようにできてる。IcebergやDuckDBみたいなオープンソースの流れに苦戦してるんだ。買収でイノベーションやろうとしても、社風が買収した会社を潰しちゃう。元Snowflakeで今は tower.dev をやってる俺は偏見あるかもだけど、Icebergとかに支えられたオープンソースのトレンドはマジで来てる。これからどうなるかマジで気になるね。" userName="bradhe" createdAt="2025/05/14 12:20:37" color="#38d3d3">}}




{{<matomeQuote body="記事にあったんだけど、Neonが去年のGAの時、DBの30%がAIエージェント製だったのが、最近80%超になったって。AIが人間の4倍DB作ってるってこと。<br>これヤバくない？ DatabricksはPostgresをAIソリューションって売り込みたいみたいだけど。マジ変な時代だわ。" userName="everfrustrated" createdAt="2025/05/14 15:52:27" color="#ff5c5c">}}




{{<matomeQuote body="で、それらのDB、どれくらいが今もちゃんと使われてるんだろうな…" userName="4b11b4" createdAt="2025/05/14 23:49:03" color="">}}




{{<matomeQuote body="Neonチームおめ！（俺、彼らが作ったもの好きなんだよね）。でもさ、Databricksとの価値とか関係性が全然わかんないんだよな。Neonがこのまま独立した製品として続いてくれるといいんだけど。じゃないと、市場から頼りになるPostgresのプロバイダーがいなくなっちゃうからさ。" userName="higeorge13" createdAt="2025/05/14 10:56:49" color="#ff5c5c">}}




{{<matomeQuote body="Azureでは結構使われてるから、なくなるってなったらビックリするね。これはDBX（Databricks）が分析DBだけじゃなくて、トランザクションDBの分野にも進出するための戦略だよ。" userName="rockwotj" createdAt="2025/05/14 12:49:16" color="#45d325">}}




{{<matomeQuote body="HNでNeonチームの最初の投稿を覚えてるよ。当時、すごく良いアイデアだってコメントした気がする。まだ使う必要はなかったけど、いつか使うと思ってた。正直、この買収で立ち止まるのって俺だけ？<br>新しいオーナーのニーズにもっとフォーカスしないといけなくなるのが心配。ユーザーのニーズとは理論上は一致するはずだけど、実際にはそうならないことが多い気がするんだ。" userName="timmg" createdAt="2025/05/14 10:56:36" color="">}}




{{<matomeQuote body="＞HNでNeonチームの最初の投稿を覚えてるよ。当時、すごく良いアイデアだってコメントした気がする。<br>それな！俺も覚えてるよ。結構面白かったんだよね。storageとcomputeの分離って新しい発想で、Pageserver[0]について質問したんだ。データベース開発のキャリアの進め方についても聞いたっけ[1]。<br>2年後、Turso databaseで似たようなdisaggregated storageに関わることになったよ。Neonチーム、おめでとう！<br>[0] - https://news.ycombinator.com/item?id=31756671<br>[1] - https://news.ycombinator.com/item?id=31756510" userName="avinassh" createdAt="2025/05/14 11:31:27" color="">}}




{{<matomeQuote body="俺も立ち止まってる…IA向けのサービス提供と開発者向けのサービス提供は一致しないと思うんだ。PostgreSQLのコアに関わる部分の仕事がコミュニティの助けになることを願ってる。" userName="kaeshiwaza" createdAt="2025/05/14 11:29:06" color="">}}




{{<matomeQuote body="Neonチームおめでとう。素晴らしいプロダクトだよ。これを見るのは悲しいけど、VCから資金調達してたら避けられないことだよね。Nikitaたちが強く踏みとどまって、Databricksにbit.io化されないことを願うよ。" userName="beoberha" createdAt="2025/05/14 14:22:04" color="">}}




{{<matomeQuote body="Neonチーム、おめでとう。<br>正直、これは俺にとって少し悲しいことだな。CockroachDBが“business source”になった後にNeonがその空白を埋めてくれることを期待してたんだ。DataBricksに買われたことで、俺にとってNeonの興味はかなり薄れたよ。過去に買収で問題を抱えたことがあるような大組織が、俺にとってほぼ一番重要なインフラを本当に気にかけてくれるなんて信用できないんだ。<br>より“モダン”なpostgresqlへの需要は確実にあるけど、直接の代替案はほとんどが根本からかなり離れてる。価格設定、互換性、ソース公開とかね。<br>昔、postgresの代替を探してた時に検討したのはこれらだったんだ。<br>1. AWS RDS: すでに使ってたけど、高いしスケーリングや運用に問題があった。<br>2. AWS Aurora: 最終的に推奨されたやつで、運用問題は解決したけど他のニッチな欠点があった。他のワイヤ互換なpostgresql代替案とほぼ同じ欠点だね。<br>3. CockroachDB: すごく面白かったし、ワイヤ互換だったけど、深い互換性問題があった。当時はオープンソースだったけど、俺たちのツールには合わなかった。<br>4. Neon: 当時はまだ未熟だと見なされてたけど、確かに興味深かったし、俺たちの課題のほとんどを解決できそうに見えた。postgresqlの運用問題以外はね。当時はそれ以上深く調べなかった。<br>5. Yugabyte: 面白い技術だけど、互換性問題もあった。でも他のよりは少なかったな。俺が見る限り、彼らもpostgresqlのクエリエンジンを使ってるからね。<br>他にも、CloudPGみたいないろんな自前ホスティングユーティリティも見たけど、Kubernetesとpostgresqlのステートフルなデプロイを自分たちで維持するリソースがなかったんだ。俺たちの要件のほとんどは満たせただろうけど、KubernetesとPostgreSQLの両方でメンテナンス負担が増えるからね。<br>PostgreSQL単体でのホスティングは、その時点では十分成熟したレプリケーションや運用機能がなかったんだ。着実に成熟はしてるけど、データベースがたくさんあったから手動でのアップグレードやパッチ適用はすごく時間かかるだろうし。PostgreSQLにはメジャーアップグレードでちょっと面倒な癖があるんだよね。基本的に全データをアンロードしてリロードしないといけない。この問題を回避するために拡張機能や他のサービスを使わない限りね。" userName="kjuulh" createdAt="2025/05/14 11:32:31" color="#ff33a1">}}




{{<matomeQuote body="＞5. Yugabyte: 面白い技術だけど、互換性問題もあった。でも他のよりは少なかったな。俺が見る限り、彼らもpostgresqlのクエリエンジンを使ってるからね。<br>NeonはPostgresそのものだよ。" userName="tuukkah" createdAt="2025/05/14 11:44:21" color="">}}




{{<matomeQuote body="だから俺は他の多くとは違ってNeonに期待してたんだ。でもYugabyteはただのpostgresじゃないからね。" userName="kjuulh" createdAt="2025/05/14 12:44:03" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
