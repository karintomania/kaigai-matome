+++
date = '2025-04-09T00:00:00'
months = '2025/04'
draft = false
title = 'PostgreSQLの全文検索は遅いって嘘！？爆速チューニング術でElastic並みの性能を叩き出す！'
tags = ["PostgreSQL", "全文検索", "パフォーマンス", "チューニング", "データベース"]
featureimage = 'thumbnails/color4.jpg'
+++

> PostgreSQLの全文検索は遅いって嘘！？爆速チューニング術でElastic並みの性能を叩き出す！

引用元：[https://news.ycombinator.com/item?id=43627646](https://news.ycombinator.com/item?id=43627646)

{{<matomeQuote body="pg_searchのメンテナーの一人だよー、どうも！いくつか思ったことを言うね。<br>まず、Neon/ParadeDBの記事とこの記事で紹介されてる方法は、どっちもPostgresのドキュメントで推奨されてるんだ。<br>次に、この記事で言ってるように、Postgres FTSの問題は「特定のクエリをどう最適化するか」じゃなくて、「PostgresでElastic並みの性能を、いろんな条件のクエリで出すにはどうすればいいか」なんだよね。<br>pg_searchは後者の問題を解決するために作られてて、ベンチマークもそれを反映してる。クエリを一つ選んで、データの重複とか複雑さを犠牲にすれば、いつでも最適化できるけどね。Neon/ParadeDBのベンチマークは全部で12個のクエリがあって、もっとできたことがあったんだ。<br>例えば、booleanの条件があるクエリのために複合b-treeインデックスを作ったり、JSONBからテキストフィールドを全部取り出して、別のカラムに保存してインデックスを作ったりね。でも、それって現実的じゃない場合が多いよね。<br>pg_searchはそんなことしなくても、いろんな種類のElasticみたいなクエリに対応できる、シンプルなインデックス定義なんだ。ユーザーにテキストカラムをいちいち複製しろなんて言わないし。" userName="retakeming" createdAt="2025-04-09T04:04:47" color="#ff33a1">}}

{{<matomeQuote body="報告ありがとう！どのリンクのことか見つけられないんだけど、リンクが載ってるファイルとかページを教えてくれる？" userName="stuhood" createdAt="2025-04-09T19:49:02" color="">}}

{{<matomeQuote body="TFAがリンクしてるpg_searchの記事から引用するね。<br><br>＞DB with pg_search：BM25インデックスを1つ作った<br>＞DB without pg_search：これらのインデックスを全部作った “GIN index on message (for full-text search)<br>GIN index on country (for text-based filtering)<br>B-tree indexes on severity、timestamp、metadata->>'value' (filtering、ordering、aggregationsを速くするため)”<br><br>問題わかる？pg_searchがない場合、ベクトルにインデックスを作ってないんだよ。同じ条件で比較してない。TFAはそれを指摘してるんだ。<br>fastupdates=onインデックスを作ればよかったって言うかもしれないけど、ブログではそうしてないよね。<br>＞いつもクエリを一つ選んで最適化できるけど、データの重複とか複雑さを犠牲にする必要がある。Neon/ParadeDBのベンチマークには12個のクエリが入ってて、ベンチマークはもっとできたことがあった “<br>TFAは、一つのクエリをもっと速くできるって言ってるんじゃないんだよ。同じ条件で比較してないって言ってるんだ。その12個のクエリを見ても、TFAが提案してるtsvectorを保存する方法が使えないなんてことはないと思う。<br>pg_searchの方がスケールしやすいとか、アップデートの速度を犠牲にしなくてもいいとか、そういうメリットがあるなら、それをアピールすればいいんじゃない？" userName="cryptonector" createdAt="2025-04-09T05:12:56" color="">}}

{{<matomeQuote body="なんでそんな怒ってるの？<br><br>＞”あんたは〜しなかった”<br>いや、彼らはNeonじゃないし、リンクされてる記事のベンチマークをしたわけじゃない。Postgresのメンテナーだよ。<br>ちゃんとコメントを読めば、pg_searchは簡単なインデックス定義で、いろんなクエリに対応できるって言ってるのがわかるはず。必要なら、ドキュメントに書いてある最適化を追加することもできるんだよ。" userName="supermatt" createdAt="2025-04-09T07:41:11" color="">}}

{{<matomeQuote body="親コメントの人は、そのブログ記事の作者だって確信してる？<br>勘違いかもしれないけど、あなたはpg_searchのメンテナーに向かって、誰かがしたひどいベンチマークについて怒ってるように見えるよ。" userName="wodenokoto" createdAt="2025-04-09T09:22:23" color="">}}

{{<matomeQuote body="コミュニケーションにはコツがあるよね…大学の頃に学ぶと思うんだけど。" userName="moogleii" createdAt="2025-04-09T12:54:53" color="">}}

{{<matomeQuote body="＞間違いその1：tsvectorをその場で計算する（重大な問題）<br><br>元の記事がこんな間違いを犯してるなんて、マジでびっくり。最近、個人プロジェクトでPostgres FTSを実装したんだけど、Postgresのドキュメントを読んで、指示に従っただけだよ。ドキュメントには、最適化されてない基本的なケースを作って、それを最適化していく過程が書いてあって、それぞれのステップの目的とか、なんで速くなるのかが説明されてる。すごくわかりやすいから、この間違いをする人は、Postgres FTSをわざと誤解させるか、基本的なドキュメントを読んでないかのどっちかだと思う。" userName="danpalmer" createdAt="2025-04-09T00:30:43" color="#ff33a1">}}

{{<matomeQuote body="専門じゃないから、話半分に聞いてほしいんだけど、tsvectorをテーブルとインデックスの両方に保存する必要があるのか疑問に思ったんだ（tsvectorの値はGINインデックスにロスレスで保存されるから）。<br>PGのドキュメントには、row rechecksにしか影響しないって書いてあるから、インデックスに保存されてない情報を確認する必要がある場合にしか影響しないんだ。例えば、重み付けされたテキストのクエリとか、lossy GiSTインデックスに対するクエリとかね。ケースバイケースだと思うけど、ディスクスペースを無駄にする前に、自分のクエリが必要かどうか確認した方がいいよ。" userName="aobdev" createdAt="2025-04-09T01:06:05" color="#38d3d3">}}

{{<matomeQuote body="PostgresにVirtual Generated Columnsがあればなぁ。嫌味じゃなくて、MySQLには昔からあるんだよね。ディスクスペースをほとんど使わないのに、インデックスを作れるんだ（もちろん、インデックスは保存される）。<br>MySQLの最大の利点だと思う。昔は、MySQL（InnoDB）のクラスタリングインデックスが最強だと思ってたけど、最近ベンチマークしてみたら、クラスタリングインデックスを活用するようにスキーマを設計しても、Postgresはパフォーマンスで負けてなかった。<br>追記：MySQLの方が優れてるのは、RDBMSの知識がない人でも「とりあえず動く」ってこと。ハイパースケーラーが言うこととは違って、DBは特別な存在で、たくさんの設定項目があって、ある程度知識がないと使いこなせない。Postgresは特に、MVCCの実装によるテーブルの肥大化とか、txidの蓄積の問題があって、autovacuumの設定をテーブルごとに調整するように、もっと強く警告するべきだと思う（数百GBの書き込みが多いテーブルなら、すぐに必要になる）。MySQLにはこの問題がなくて、何も設定しなくても、何年も動いてくれる。最適じゃないかもしれないけど、動くことは動く。Postgresではそうはいかない。" userName="sgarland" createdAt="2025-04-09T02:18:01" color="#ff5c5c">}}

{{<matomeQuote body="Virtual generated columnsなんていらなくて、`to_tsvector('english', message)`をmaterializeしなくてもindex使えるんだよね。Postgresはexpressionのindexをサポートしてて、query plannerがちゃんとmatchするものを見つけてくれるんだって。<br>作者がなんでそれ使わないのかわかんないけど、ドキュメントに書いてあるじゃん（https://www.postgresql.org/docs/current/textsearch-tables.ht...）。<br>つまり、`message_tsvector` columnはいらなかったと思うし、<br>CREATE INDEX idx_gin_logs_message_tsvector<br>ON benchmark_logs USING GIN (to_tsvector('english', message))<br>WITH (fastupdate = off);<br>みたいなindex作れば、<br>WHERE to_tsvector('english', message) @@ to_tsquery('english', 'research')<br>みたいなqueryで`idx_gin_logs_message_tsvector` indexをmaterializeせずに使えるってこと。<br>dbfiddleもあるよ（https://dbfiddle.uk/aSFjXJWz）" userName="charettes" createdAt="2025-04-09T05:19:29" color="#38d3d3">}}

{{<matomeQuote body="その通り、見逃してたわ。MySQLだとfunctional indicesはinvisible generated virtual columnsとして実装されてる（vector index typeはまだないと思うけど）。Postgresの方がすごいね。" userName="sgarland" createdAt="2025-04-09T13:30:30" color="#ff5733">}}

{{<matomeQuote body="TIL MySQLのfunctional indicesがvirtual columnsで実装されてるなんて知らなかった。[0]<br>[0] https://dev.mysql.com/doc/refman/8.4/en/create-index.html#cr..." userName="charettes" createdAt="2025-04-09T19:17:20" color="">}}

{{<matomeQuote body="記事読んでて同じこと思った。なんでexpressionをindexしないんだろ？" userName="ahoka" createdAt="2025-04-09T12:42:31" color="">}}

{{<matomeQuote body="Postgres 18で実装されるらしい。<br>https://www.depesz.com/2025/02/28/waiting-for-postgresql-18-..." userName="VoVAllen" createdAt="2025-04-09T02:25:30" color="#785bff">}}

{{<matomeQuote body="そうだね（めっちゃ楽しみ！）。でもindexはできないんだよね。そこが重要だと思うんだけど。<br>でも、そのうちできるようになると思うよ。invisible columnsもそのうちできるかもね。でもPostgresにとってはMySQLほど問題じゃないかも。MySQLはdata typesが限られてるから。" userName="sgarland" createdAt="2025-04-09T02:39:35" color="">}}

{{<matomeQuote body="arbitrary expressionsはindexできるよね？invisible columnを定義するのと同じexpressionをindexできるってことだよね？" userName="danielheath" createdAt="2025-04-09T07:16:18" color="">}}

{{<matomeQuote body="OrioleDBがPostgresのhigh maintenance storage engineを置き換えてくれるとうれしいな。そうすれば楽になる。" userName="CodesInChaos" createdAt="2025-04-09T09:21:38" color="">}}

{{<matomeQuote body="MySQLのlogical replicationは完璧じゃないけど、PostgreSQLが標準で提供するものよりはるかに簡単だよ。（そうじゃないといいけど！）" userName="mastax" createdAt="2025-04-09T06:03:54" color="">}}

{{<matomeQuote body="PostgresとMySQLのreplicationは複雑さ的には同じくらいだと思う。Postgresの方が選択肢が多いけど。MySQLの方がlogical replicationは早かったね。<br>Postgresにはcopy_dataっていう神機能がある。dump/restoreしなくてもreplica作れるんだ。（tablesが小さければ/diskが大きければ。primaryが最初のsyncの間WALを持つからね。）MySQLはparallel dump and restoreできるから、そこまで必要ないかも。" userName="sgarland" createdAt="2025-04-09T12:02:27" color="#ff5733">}}

{{<matomeQuote body="まあ、トリガーがあるDBなら似たようなことできるけど、PostgreSQLはバージョン13からgenerated columnsがあるんだよね。今は17だよ。<br>virtual generated columnのメリットがよくわかんない。検索indexみたいな計算に時間かかる処理なら、generated columnの方が良くない？<br>Postgresはずっと前から関数の結果でindex作れたから、同じことできるよね。" userName="brightball" createdAt="2025-04-09T02:28:48" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="メリットは、使いやすさのために保存したいけど、diskとかmemoryを圧迫したくないときかな。例えば、vectorを事前に計算してindex化しておけば、サイズが2倍にならずに済む。" userName="sgarland" createdAt="2025-04-09T02:43:01" color="#785bff">}}

{{<matomeQuote body="それってPostgresで関数の結果でindex作るのと同じメリットだよね。" userName="brightball" createdAt="2025-04-10T00:28:49" color="">}}

{{<matomeQuote body="それってトリガーのsyntax sugarでしょ。そんなに大きなメリットじゃないと思うな。" userName="senorrib" createdAt="2025-04-09T02:23:54" color="">}}

{{<matomeQuote body="disk容量が増えるだけじゃなくて、トリガーとかでメインcolumnと同期する必要があるし、バックアップも大変になるよね。なんで「疑問に思った」の？デメリットしか見当たらないんだけど。weighted queriesとかjoined tablesで検索する必要があるなら別だけど。" userName="codesnik" createdAt="2025-04-09T02:34:52" color="">}}

{{<matomeQuote body="generated columnだから、更新のoverheadはないけど、PGのgenerated columnは全部保存されるんだよね。text searchのcorpusは、ソースcolumnに1回、tsvectorとしてindexに1回、generated columnとして1回保存されることになる。disk容量が50%も増えるってことだよ。" userName="aobdev" createdAt="2025-04-09T02:53:25" color="#ff5733">}}

{{<matomeQuote body="そのextra spaceを更新するoverheadはやっぱりあるよね。" userName="cryptonector" createdAt="2025-04-09T05:17:04" color="">}}

{{<matomeQuote body="それは確かに問題だね。pg_searchに有利な点だ。<br>PG 18ではvirtual generated, indexable columnsができるから、pg_searchのメリットはなくなるかもね。" userName="cryptonector" createdAt="2025-04-09T05:16:05" color="">}}

{{<matomeQuote body="Postgres FTSを10年以上推奨してるよ。Solr searchを置き換えてから、メンテナンスが楽になったし、queryの柔軟性が増したし、速度もほとんど変わらなかった。<br>マジ最高。<br>Elasticはユースケースが違うけど、pgはほとんどのワークロードで十分だよ。" userName="brightball" createdAt="2025-04-09T02:23:14" color="#38d3d3">}}

{{<matomeQuote body="Postgres searchを一番大きい規模で使ったのはどのくらい？" userName="therealdrag0" createdAt="2025-04-09T16:25:25" color="">}}

{{<matomeQuote body="ユーザー30万人くらいのサイトで、まだスケールアップしてたんだって。" userName="brightball" createdAt="2025-04-10T12:08:58" color="">}}

{{<matomeQuote body="Postgres FTSをわざと誤解させるか、基本的なドキュメントを読んでないかのどっちかだと思っちゃうな。あと、順番逆の方が良かったかもね。Hanlon's Razorって言うじゃん？" userName="DoctorOW" createdAt="2025-04-09T03:43:58" color="#ff33a1">}}

{{<matomeQuote body="ドキュメント読まずにナイーブなことやっちゃう人向けの記事だと思えば、まあアリかもね。そういう人結構いるし。" userName="timClicks" createdAt="2025-04-09T05:20:30" color="">}}

{{<matomeQuote body="＞誰かがこの間違いを犯すのは、Postgres FTSを意図的に誤って伝えるか、基本的なドキュメントを読んでいないかのどちらかだとしか考えられない。“システム管理者のノリ、マジ卍”" userName="fnord123" createdAt="2025-04-09T06:08:27" color="">}}

{{<matomeQuote body="2008年くらいからpg full text使ってるけど、SOLRとかElasticSearchも使って大規模な検索とかレコメンドもやってきたよ。postgres full text searchの問題は、遅いんじゃなくて柔軟性がないこと。ちょっと検索をチューニングしたいだけでも無理ゲー。サブストリングすら無理だし、カスタムトークナイズも無理。トークナイズパイプラインなんてないに等しいし。SolrとかElasticSearchなら設定で複雑なインデックスとか検索処理できるのに、postgresはマジで何もない。postgresのデベロッパーは他のソリューション触ったことないんじゃないかな。トークナイズとかフィルター設定の話しても、わかってないっぽいし。フィールドを連結してインデックス作るのもマジめんどい。フィールドの重み付けとかもできないし。マジおもちゃレベル。" userName="ltbarcly3" createdAt="2025-04-09T10:03:28" color="#ff5733">}}

{{<matomeQuote body="どっちの記事にもexplain planがないのが残念。クエリがインデックス使ってれば、tsvectorのリチェックはマッチしたやつだけだし、ベンチマーククエリはLIMIT 10だからリチェック少ないよね？Edit: 確かにクエリの述語には2つのginインデックスの条件があるから、プランナーは行ごとにリチェックすれば回避できるはずなのに、片方のインデックスのマッチを全部リチェックすることを選んでるのか。" userName="nattaylor" createdAt="2025-04-09T03:10:45" color="#ff5733">}}

{{<matomeQuote body="マジでなんでみんなpostgresに全部入れようとするの？ベクトル検索とか、フルテキスト検索とか、ワークロードオーケストレーションとか、キューとか、マジで意味わからん。" userName="nostrebored" createdAt="2025-04-09T01:28:56" color="">}}

{{<matomeQuote body="データベースと別の検索インデックス（Elasticsearch、Solr、Xapian）を使うシステムをいくつか作ったけど、一番大変なのは検索インデックスとデータベースの同期を保つこと。PostgreSQL、MySQL、SQLiteに組み込まれてる検索エンジンを使うと、この問題がマジで楽になる。" userName="simonw" createdAt="2025-04-09T01:58:38" color="#45d325">}}

{{<matomeQuote body="規模によるよね。自分一人でやるなら、一つのシステム（データベース、モノレポ、何でも）が100%ベスト。複数のシステムを大規模でやったこともあるけど、エンジニアがいっぱいいて、コストに見合うならアリ。全部一つのシステムにまとめると、いつか崩壊するけど、できるうちはマジ最高。" userName="sroussey" createdAt="2025-04-09T04:44:06" color="#785bff">}}

{{<matomeQuote body="postgresqlで全部やるってことは、必ずしも一つのデータベースサーバーでやるって意味じゃないよ。検索、キュー、アナリティクス（カラムナー）とか、それぞれ別のサーバーでやってもいいし、全部バニラのトランザクショナルなpostgresqlサーバーからレプリケーションすればいいじゃん。アプリに必要なのは一つの技術だけで、必ずしも一つのサーバーじゃないんだから。" userName="throwaway7783" createdAt="2025-04-09T05:29:44" color="#785bff">}}

{{<matomeQuote body="検索で一番大事で難しいのはETLだよね。Extract、Transform、Load。Loadはデータを処理場所に置くこと。Transformはアルゴリズムを適用して処理すること。Loadはストアに突っ込むこと。Transformがマジ重要。ExtractとLoadは簡単で、数行で実装できる。Transformはアプリ固有のビジネスロジック。クエリするのはDBのストアとは違うもの。計算コストが高いし、スケールすると大変。アプリサーバーやDBでやるのはNG。検索はインデックス時に計算しておくとクエリが楽になる。言語ごとのトークン化、Page Rank計算、正規化、セマンティックベクター、データの強化とか色々ある。これらを全部省くとシンプルになるけど、検索品質は下がるかもね。PostgreSQLを検索インデックスにする場合でも、ETLパイプラインでアプリDBと分離しないとダメ。Elasticsearchの方が機能は多いけど。高速化だけじゃなくて品質も大事。ETLをちゃんとやれば、DBと検索インデックスを同じ場所に置く意味がなくなるから、もっと最適なものを選べばいい。" userName="jillesvangurp" createdAt="2025-04-09T07:05:27" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ペナルティなしで余計なサービス追加を避けられるなら、スキル習得やDevOps担当の雇用、サービスの維持とかも不要になる。サービス追加のコストは過小評価されがち。エンタープライズレベルなら包括的なシステムの価値は理解できるけど、30000人以上の企業で必要なサービスを全部まとめて、DBとWebアプリサーバー1台にできたら、コスト削減できると思う。" userName="bmelton" createdAt="2025-04-09T02:32:38" color="">}}

{{<matomeQuote body="うちの会社で数年前にシステム棚卸ししたら、DB（テーブルじゃなくて！）の数がエンジニアの数と同じくらいだった。QAとか本番環境含めて。その棚卸しチームも、データを入れるために新しいDB作ったし、QAとテスト環境も作った。多分、古いシステムのために前のDBも残ってると思うよ。" userName="xmcqdpt2" createdAt="2025-04-09T11:23:55" color="">}}

{{<matomeQuote body="それ、当たり前だよー。DBの数がエンジニアの100倍とか1000倍の会社で働いたことあるし。MySQLだとスキーマと1対1だったりするかもね。" userName="hobs" createdAt="2025-04-09T13:05:09" color="">}}

{{<matomeQuote body="ElasticsearchとPG使ってるけど、速くて良い感じ。でも、データがPGにあるのに、別のサーバーにインデックスする必要があるから、色々面倒。うちの場合は、そこまでやる価値なかったかも。PGを最適化すれば、同じくらい速くなったと思う。キューをPGに移したら、トランザクションで更新とジョブ開始をラップできて、同期の問題も減った。キャッシュの無効化は難しい問題の一つ。" userName="bvirb" createdAt="2025-04-09T01:54:06" color="#38d3d3">}}

{{<matomeQuote body="名前付けとオフバイワンエラーもね。" userName="_joel" createdAt="2025-04-09T11:58:45" color="">}}

{{<matomeQuote body="RDBMSなら何でも同じだけど、速くて簡単になるってこと。ORMでデータを操作してたら、SQL一発で終わる処理が、オブジェクトを複数のコンピューターシステムに渡すのに数時間かかった。FTSエンジンをSQLエンジンに入れれば、APIとかフレームワークとかサードパーティとかレイテンシとか全部避けられる。SQLは複雑なデータを構造化するのに最適な方法だと思う。SQLビューで済むものを、ネストされたイテレータの山にするのはマジ勘弁。コードは少ない方が良い。" userName="bob1029" createdAt="2025-04-09T03:33:41" color="#ff33a1">}}

{{<matomeQuote body="＞There is ZERO honor in offloading what could have been a SQL view into a shitty pile of nested iterators somewhere. I don't understand where any of this energy comes from. The less code the better. It's pure downside.”<br>激しく同意。ORMを使う理由を聞くと、SQLを知らないとか、SQLはデータアナリストの仕事だと思ってるみたい。オブジェクト指向とか構造体とかポインタとか配列じゃないと、エンジニアリングじゃないと思ってる。SQLの宣言的な性質が嫌なのかも。" userName="xmcqdpt2" createdAt="2025-04-09T11:33:16" color="#38d3d3">}}

{{<matomeQuote body="これな。ORMはマジでクソ。" userName="cryptonector" createdAt="2025-04-09T05:27:02" color="">}}

{{<matomeQuote body="ちょっと前にまた経験したけど、マジでそう。アプリケーション管理インターフェースを置き換えてて、設定パラメータがたくさんあって、リレーショナルデータベースに最適だった。でも、フロントエンドから送られてくるドキュメントとして扱いたかったから、GORMを使った。最初は良かったけど、すぐに破綻した。特にデータモデルが深くネストされてると。GORMでXをどう解決するんだ？ってなって、ドキュメントも少ないし、コミュニティのメンバーもすぐ燃え尽きる。" userName="Cthulhu_" createdAt="2025-04-09T07:06:10" color="#38d3d3">}}

{{<matomeQuote body="新しいサービスをメンテするのはマジで面倒くさいんだよね。Postgresと他のDBへのアトミックコミットができないのも最悪。" userName="NavinF" createdAt="2025-04-09T01:34:31" color="">}}

{{<matomeQuote body="分散システムの問題を避けるのがマジ重要。分散システムってマジで構築が難しいから、Postgresを垂直スケールしまくって、どうしても無理ってなるまで頑張る。" userName="klysm" createdAt="2025-04-09T04:05:42" color="#38d3d3">}}

{{<matomeQuote body="Postgresで分散DBも作れるんだよ。例えば、複数の書き込みノードがあるDBなら、イベント配送モデルを実装して、論理レプリケーションでサーバーがイベントを発行して他のサーバーをサブスクライブすればOK。あとは競合解決ルールを実装する必要があるね。Postgresの型システムを使えばCRDTシステムも作れそう(誰かもうやってるかも)。" userName="cryptonector" createdAt="2025-04-09T05:26:14" color="">}}

{{<matomeQuote body="IBMのメインフレームは君のために作られたようなもんだよ。めっちゃ信頼性の高いコンピューターがあると思ってくれ。ホットスワップ可能なディスク、RAM、CPUとか、冗長電源とか、冗長ネットワークスタックとか。OSは再起動する必要がないように設計されてるし。IBMは今でも数十億ドルも売り上げてるんだぜ。" userName="roncesvalles" createdAt="2025-04-09T07:47:55" color="">}}

{{<matomeQuote body="「全部1つにまとめるのは不安だから分散させたい」って言われるけどさー。10個のノードに状態を分散させるのはマジで簡単で、最高だよねー(棒)。" userName="hobs" createdAt="2025-04-09T13:06:50" color="">}}

{{<matomeQuote body="Postgresは、データベースっぽいこと全般が得意だからね。全部80%くらいの出来だとしても、最初に手を出すものとしてPostgresを選ぶのはアリだと思う。でも、自分がその20%に入ってないか確認するのを忘れがち。Postgresじゃなくて他のものを使うべきなのに、誰も確認してないってケースは結構あると思う。" userName="eqvinox" createdAt="2025-04-09T10:44:54" color="#ff5c5c">}}

{{<matomeQuote body="PostgresはSQLで必要なことを全部やるのに最適なプラットフォームだし、パフォーマンスもマジで良い。PostgRESTを使えばREST APIもほぼ無料で手に入る(スキーマ設計は必要だけどね)。それに、Postgresは進化が早いし、開発者とユーザーのコミュニティも活発だから、これからもっと凄い機能が追加されるはず。(例えば、AIOスレッドを追ってるけど、パフォーマンスが大幅に向上するパッチが来る予定。)" userName="cryptonector" createdAt="2025-04-09T05:20:17" color="#38d3d3">}}

{{<matomeQuote body="新しいプロジェクトを始める時って、データ量が少ないうちは、プロジェクトが失敗したり、ボトルネックが予想と違ったりする可能性もあるから、理論的な最適化よりもプロダクトに集中した方が良い場合が多いんだよね。<br>今の職場では、簡単だし、コードが全部Postgresに繋がってるから、バイナリデータも含めて全部Postgresに突っ込んでた。RDSのストレージコストが高くなってきたから、S3とかDynamoDBにデータを移し始めたけどね。<br>それに、クラウドで便利なキューイングとかキャッシュの製品が簡単に使えるわけじゃない人もいるし。KafkaとかMongoDBとかをデプロイするよりも、1つの複雑なもの(どうせメンテする必要がある)を扱う方が良い場合もあるんだよね。<br>移行を簡単にするために、コードを抽象化しておくことを強くおすすめするよ。" userName="hylaride" createdAt="2025-04-09T13:39:16" color="#45d325">}}

{{<matomeQuote body="MySQLも最新バージョンで同じことができるよ(ベクター検索)。でも、理由はシンプルさとコストだね。「Choose Boring Technology」って聞いたことある？Postgresは退屈。めっちゃ複雑だけど、パフォーマンス、信頼性、柔軟性が手に入る。マニュアルは1つ読めばいいし、言語も1つ覚えればいい(アプリ以外でね)。1つのことを深く知ればいいんだ。ESの管理は大変だし、やったことあるけど、Postgresも管理は大変。でも、1つの大変なことをマスターしてページングされるか、2つの大変なことをマスターしてページングされるか選ぶなら、前者を選ぶ。" userName="sgarland" createdAt="2025-04-09T02:56:35" color="#45d325">}}

{{<matomeQuote body="みんながすぐに専門サービスにオフロードしちゃうような仕事を、Postgresは得意としてるんだよね。キュー、通知、スケジュールされたジョブとか。拡張機能で専門化もできるし。" userName="hmaxdml" createdAt="2025-04-09T02:43:41" color="">}}

{{<matomeQuote body="データに近いサービスほど実装が楽で、速度も出やすいってことじゃないかなー。PostgresのFTSはマジ最高で、ベクトル検索とRAGを組み合わせると、お手軽なのにマジでいい感じになるんだよね。" userName="drittich" createdAt="2025-04-09T02:22:23" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="経験はないんだけどさ、理論的にはツールは少ない方が組織にとっては良いんだよねー。[0]を見てみて。求人広告に「postgres」って書くだけで、「postgres, elasticsearch, tool x, tool y, tool z」とか書かなくて済むし。全部知ってるユニコーンを探したり（育てたり）しなくて済むじゃん？ただ、postgresは奥が深いから、postgresでXをやる専門家を探すとなると、結局同じことになっちゃうかもねー。でも、完全に新しいツールを学ぶよりは、postgresの専門知識を学ぶ方が楽だと思うよ。あと、何でもかんでもpostgresでやろうとするのは危険かも。データベースの中でJSONをクエリする必要が出てきたら、ちょっと考えた方がいいかもね。<br>[0] https://mcfunley.com/choose-boring-technology" userName="Cthulhu_" createdAt="2025-04-09T07:01:40" color="#ff5733">}}

{{<matomeQuote body="Dimitri Fontaineの「The Art of PostgreSQL」にあった、>PostgreSQLをストレージレイヤーとしてではなく、同時データアクセスサービスとして考えるべき＞っていう意見に賛成だな。このサービスはデータ処理もできるんだよね。" userName="tianqi" createdAt="2025-04-09T02:42:27" color="#ff5c5c">}}

{{<matomeQuote body="みんなの意見で混乱してきたけど、データベースに全部突っ込む理由は、トランザクション処理ができるからだよ。セカンドシステムを導入したら、それはできなくなるんだよね。" userName="Spivak" createdAt="2025-04-09T15:01:35" color="#785bff">}}

{{<matomeQuote body="分散ロックの仕組みを使えばできるかもだけど、正しくやるのは難しいよねー。" userName="whilenot-dev" createdAt="2025-04-09T16:40:00" color="">}}

{{<matomeQuote body="無料だし、安定してるし、優秀だし、どこにでもあるし。「なんで全部Pgに入れないの？」って話だよね。Pgに入れるべきじゃないのは、明らかに優れた代替手段があって、そっちの方がサービスを増やす価値がある場合だけ。例えば、Redisは超高速なレスポンスが必要な場合に有効だけど、超えるべきハードルは高いよね。" userName="petesergeant" createdAt="2025-04-09T03:37:10" color="#ff33a1">}}

{{<matomeQuote body="PostgreSQLは20年以上裏切ってないなー。完璧じゃないけど、データに関するほとんどの場合にマジで使える（チューニングは必要かも）。" userName="edoceo" createdAt="2025-04-09T01:32:22" color="#ff5733">}}

{{<matomeQuote body="HNや現実世界のほとんどの人は、同時接続ユーザーが10人を超える規模なんて必要ないからね。データベースで十分にスケールできるのに、インフラをゴテゴテ追加してるスクリプトキディが多いよね。" userName="wordofx" createdAt="2025-04-09T07:10:02" color="#45d325">}}

{{<matomeQuote body="なんでダメなの？パレートの法則だよ。ほとんどのケースで8割はカバーできるし、高度に最適化されたソリューションが必要になったら、その時に移行すればいいじゃん。" userName="whalesalad" createdAt="2025-04-09T01:40:57" color="#785bff">}}

{{<matomeQuote body="良い理由はいろいろ挙げられてるけど、最近Postgresのカルト的な人気が高まってるのもあるよね。" userName="ketzo" createdAt="2025-04-09T01:50:00" color="">}}

{{<matomeQuote body="わかるー。Postgres好きな人多いけど、理由聞くと「なんとなく」って人多くない？　INETみたいな便利機能も全然使ってないし。ドキュメント読もうよマジで！" userName="sgarland" createdAt="2025-04-09T02:23:18" color="">}}

{{<matomeQuote body="考え方がちょっと違う気がするなー。チーム全員がPostgres推しってすごくない？　ライブラリとかで意見が割れる中、Postgresはみんな納得できる選択肢なんだよ。拡張性も高いし。" userName="whilenot-dev" createdAt="2025-04-09T16:57:00" color="#38d3d3">}}

{{<matomeQuote body="pg_searchとvchord_bm25のRPM/DEBパッケージ作ったから、ベンチマークしたい人はどうぞ。<br><br>https://pigsty.io/ext/fts/vchord_bm25<br><br>https://pigsty.io/ext/fts/pg_search" userName="Vonng" createdAt="2025-04-09T11:41:20" color="">}}

{{<matomeQuote body="Postgresネイティブの全文検索実装が増えて嬉しいね。luceneとかtantivyはimmutable segments向けだから、Postgresと組み合わせると微妙になりがち。" userName="zhousun" createdAt="2025-04-09T01:47:08" color="#785bff">}}

{{<matomeQuote body="segmentsがimmutableってことは、TantivyがPostgresと相性悪いってわけじゃないよ。MVCCとかブロックストレージに対応させればいいんだって。詳しくはこの記事見て。<br><br>https://www.paradedb.com/blog/block_storage_part_one" userName="retakeming" createdAt="2025-04-09T04:10:46" color="">}}

{{<matomeQuote body="根本的な問題は「dmlごとに新しいsegment作っちゃう」ってことだと思う。緩和はできるけど、良い解決策はなさそう。" userName="sunzhousz" createdAt="2025-04-09T15:53:35" color="">}}

{{<matomeQuote body="1000万件のデータセットっておもちゃみたいなもんだよね。WikipediaとかRedditのコメントみたいにもっと大きいデータセットでベンチマークすべき。" userName="atemerev" createdAt="2025-04-09T10:50:13" color="">}}

{{<matomeQuote body="昔、ネイティブFTS使おうとしたんだけど、ダメだったんだよね。1秒に数千件insertがあるテーブルで、更新が遅すぎてタイムアウトしちゃって。インデックス落としたら直ったけど、FTSの性能テストまで行けなかったのが残念。" userName="some_developer" createdAt="2025-04-09T13:52:00" color="">}}

{{<matomeQuote body="それって検索インデックスとトランザクションデータを同じテーブルに置いてたのが原因じゃない？　検索インデックス専用のテーブルなら、insertの遅延なんて気にしなくて良くない？" userName="thr0w" createdAt="2025-04-09T14:30:28" color="#ff33a1">}}

{{<matomeQuote body="PostgresのFTSをちゃんと使えばElasticsearchとかMeilisearch並の性能出せるのに、最初からそっち行っちゃうチーム多いよね。SQLite + FTS5 + Wasmでブラウザでも同じようなことできるかな？" userName="chenhoey1211" createdAt="2025-04-09T08:03:34" color="#ff33a1">}}

{{<matomeQuote body="テキスト検索にはpostgresproの”rum”拡張機能を使ってるよ。テラバイト級のPDFを1秒以内で検索できるんだって。詳しくはこの講演を見てみて！https://github.com/jmscott/talk/blob/master/pgday-austin-20161112.pdf" userName="johnthescott" createdAt="2025-04-12T06:31:17" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
