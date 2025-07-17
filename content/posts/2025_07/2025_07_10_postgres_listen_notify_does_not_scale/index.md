+++
date = '2025-07-10T00:00:00'
months = '2025/07'
draft = false
title = 'PostgresのLISTEN/NOTIFYは大規模では通用しない！？'
tags = ["Postgres", "データベース", "スケーリング", "メッセージング", "システム設計"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> PostgresのLISTEN/NOTIFYは大規模では通用しない！？

引用元：[https://news.ycombinator.com/item?id=44490510](https://news.ycombinator.com/item?id=44490510)




{{<matomeQuote body="この記事、いいね。みんな「使い方が間違ってる」って言うけど、それもわかる。<br>でも「Postgresで何でも解決！」って考えに反論できるのは良いね。L/Nは学習も大変だし、深く統合すると後戻りも難しい。<br>俺はPostgres/ClickHouse/NATSの組み合わせが、だいたいのワークロードに対応できて、軽くて速いから気に入ってるよ。これはしばらく俺の“お気に入り”だね。" userName="osigurdson" createdAt="2025/07/11 02:13:55" color="#ff5c5c">}}




{{<matomeQuote body="こういう問題って、いつもビジネスロジックをデータベースに入れちゃうと起こるんだよな。<br>データベースはデータのためのもの。データが入ってデータが出るだけ。次何をするかはアプリケーションコードが決めるべきだよ。" userName="fathomdeez" createdAt="2025/07/11 03:47:00" color="">}}




{{<matomeQuote body="だいたい同意だよ。<br>機能的には、ジョブが少ないならデータベースをキューとして使うのは問題ないね。<br>だけど、キューのスケーリングでデータベース、ひいてはアプリ全体がダウンするって状況に何度か遭遇したから、こういうシステムはあまり密接に結合すべきじゃないって意見なんだ。<br>もちろん、長所と短所はあるけどね。" userName="ownagefool" createdAt="2025/07/11 08:04:54" color="#ff5c5c">}}




{{<matomeQuote body="データベースをキューに使うのは、むしろ正しさを確保するために不可欠な場合が多いんだよ。<br>キューから取り出すのとデータベース更新をアトミックにやりたい時とかね。別システムだとXAとか不安定な冪等性ロジックが必要になって、データ破損につながることもある。<br>Postgresが技術的な限界に達してるって話、よく聞くよね。OpenAIも似たようなブログ記事出してたしな。<br>https://news.ycombinator.com/item?id=44074506<br>資金のあるスタートアップは、PostgresじゃなくてOracle Databaseみたいに統合キューエンジンを持ってる商用DBを買った方がいいよ。<br>OracleのTxEQは本当に優れてるし、LISTEN/NOTIFYなんて全然キューじゃないからね。<br>こういうスタートアップが、火消しに時間やお金、士気を失ってるのを見るのは納得いかないよ。お金払ってクラウドやGPU使ってるんだから、とっととデータベース買って仕事に戻ればいいのに！" userName="mike_hearn" createdAt="2025/07/11 08:36:38" color="#ff33a1">}}




{{<matomeQuote body="＞データが次に何をすべきか、データ自身が決めちゃいけないって言うけど、<br>それならなんでリレーショナルデータベースなんて使うんだ？<br>リレーションとかスキーマって、ビジネスロジックそのものじゃん。<br>俺はデータ整合性はできる限り欲しいね。" userName="bevr1337" createdAt="2025/07/11 03:52:50" color="#45d325">}}




{{<matomeQuote body="この手の哲学、どっちも見たことあるね。<br>まるで宗教だよ、信者は熱心だし。<br>「コードこそ王」か「DBこそ王」かって話だね。<br>俺は個人的には「コードこそ王」派なんだ。もちろん、俺なりの理由もあるけどね（みんなと同じようにさ）。" userName="Jailbird" createdAt="2025/07/11 03:59:54" color="">}}




{{<matomeQuote body="じゃあ制約とか外部キーについてはどう考えるの？<br>Railsみたいに、それも全部アプリケーション側で処理すべきだって思う？（Railsは昔使ってたけど、今はどうなってるか知らないけどね）" userName="panzi" createdAt="2025/07/11 04:04:34" color="">}}




{{<matomeQuote body="NATS、一度試してみたかったんだよね。<br>いつもはRedisをpubsubに使ってるからさ。<br>NATSの主な利点って何がある？<br>ClickHouseとPostgresは使い倒してるんだけどね。" userName="goodkiwi" createdAt="2025/07/11 03:44:56" color="">}}




{{<matomeQuote body="「Postgresを何にでも使う」のは、結局は間違いだね。<br>でも、ほとんどの新しいプロジェクトにとっては二番目に良い選択肢だよ。<br>それに、多くの製品はもっと専門的なDBが必要になるほどのトラフィックなんて見ないからね。<br>recall.aiはPostgresじゃ厳しくなったレベルに到達したってだけで、彼らが製品の他の部分でPostgresを使ったこと、後悔してないと思うな。" userName="jelder" createdAt="2025/07/11 13:08:42" color="#ff5c5c">}}




{{<matomeQuote body="もしキューから普通のSQL DBへのトランザクションが必要なら、何か根本的に間違ってると思うね。<br>Oracle DBはめちゃくちゃ強力だけど、色々な意味で使いづらいし、もしそれが必要になるなら、設計/アーキテクチャでとんでもない失敗をしてる可能性が高いよ。<br>HNに載ってる「火消し物語」なんて、意味のある指標じゃないんだ。<br>「面白い」話、つまり火消しとか「Postgres最高」みたいな話しか出てこないからね。退屈だけど成功してる大半のストーリーはほとんど出てこないんだ。<br>一般的に、みんなHNがどれだけ代表的かを過大評価しすぎてると思うな。" userName="dathinab" createdAt="2025/07/11 14:49:44" color="#ff33a1">}}




{{<matomeQuote body="コードが良いかDBが良いかの問題じゃなくて、ほとんどはデータの近接性の話だね。何千ものレコードを更新するなら、別にプロセスに引っ張り出して更新してから書き戻すなんて無理でしょ。だからコードをDBのデータのそばに置くんだ。Stored proceduresってのは、DB containerにデプロイされたcodeにすぎないってことさ。" userName="ako" createdAt="2025/07/11 10:12:33" color="#ff33a1">}}




{{<matomeQuote body="KafkaってPub/Sub界のPostgreSQLじゃない？つまり、明確な理由がない限りKafkaを使うべきってことだよね？じゃあなんでNatsなの？" userName="v5v3" createdAt="2025/07/11 08:28:32" color="#45d325">}}




{{<matomeQuote body="queuesをatomic、transactionalに使うことはhttps://pgflow.devを構築する上での核となる原則だったよ。DB内のqueueでworkflow stateがtransactionalに更新されることで、debuggingが楽になったり、audit logやreporting、statsなんかがSQL query一つで済むようになったりして、色々シンプルになったんだ。" userName="jumski" createdAt="2025/07/11 12:01:01" color="#785bff">}}




{{<matomeQuote body="もしdatabaseにただbytesを保存させたいだけなら、Key-Value storeを使えばいい。でもSQLがschemasやconstraintsを提供するのは理由があるんだよ。それらはbusiness logicのguardrailsみたいなもんさ。ただ、tablesにbusinessそのものを動かそうとはしないでくれ。" userName="platzhirsch" createdAt="2025/07/11 04:08:30" color="#38d3d3">}}




{{<matomeQuote body="それは単に、誰もSQLはもちろんStored proceduresの書き方を知らないからってだけだよ。もしStored proceduresのdevexがもっと良ければ、appのほとんどで使われてただろうね。" userName="djfivyvusn" createdAt="2025/07/11 09:21:29" color="#ff5733">}}




{{<matomeQuote body="この記事を見た時、まずPostgres docsを確認したんだ。「”heh, きっと細かいとこ読んでないだけだろ”」って思ったからね。でもLISTEN/NOTIFYのページには、「”lock”」っていう単語が全く出てこなかったよ。" userName="chatmasta" createdAt="2025/07/11 06:22:30" color="#45d325">}}




{{<matomeQuote body="business logicはapp側、data types間の関係はデータの配置ってのが俺の考え。でもORM経由だとtriggersやStored proceduresがサポートされないんだよね。もしサポートしてたら絶対使うのに。複数の開発者がcodeを書いても、共通のdatabase modelsを使えばデータの重要なconstraintsを常に守れるからさ。開発者がデータ更新でcheckを忘れるなんて事態も防げるしね。" userName="IgorPartola" createdAt="2025/07/11 06:05:02" color="#ff5c5c">}}




{{<matomeQuote body="Railsはconstraintsを完全にサポートしてて、使うことを推奨してるよ。migrationでSQLを実行するか、add_check_constraintを使えばいいんだ。" userName="Lio" createdAt="2025/07/11 07:20:21" color="#ff33a1">}}




{{<matomeQuote body="実際はworkloadによるね。例えばWebhooksの送信は、databaseを更新しに戻る必要がないことが多いけど、俺はまさにその例で色々なmanaged databases（Postgresだけじゃない）がダウンするのを見てきたよ。" userName="ownagefool" createdAt="2025/07/11 12:29:08" color="#ff5c5c">}}




{{<matomeQuote body="PostgresはpgSQL、C、Tcl、Perl、PythonでStored proceduresをそのまま書ける。RustやJSなど、ほとんどのlanguageの3rd party extensionsもあるしね。SQLが書けないなんて問題は簡単に解決できるし、RDBMSを仕事で使うなら知っておくべきだよ。たとえORMを使ってても、それが何してるか理解しないと、いずれ見ることになるEXPLAIN outputも理解できないだろ。" userName="sgarland" createdAt="2025/07/11 14:32:11" color="#ff5733">}}




{{<matomeQuote body="ORMsがトリガーやストアドプロシージャをもっとサポートしてくれたらなぁ。よく使うフィールドを非正規化して、アプリコードなしで自動更新できたら、もっと楽になるのに。" userName="IgorPartola" createdAt="2025/07/11 06:01:57" color="#ff5c5c">}}




{{<matomeQuote body="Postgres、ClickHouse、NATSに加えて、RedisやValkeyみたいなKVS、それにMinIO、Garage、SeaweedFSみたいなS3互換ストレージがあれば、ほとんどのワークロードに対応できるはず！まぁ、どれだけ特化させるかにもよるけどね。" userName="KronisLV" createdAt="2025/07/11 11:04:59" color="">}}




{{<matomeQuote body="「できない」って思うのはなんで？俺は何回もやってるぜ。<br>レガシーシステムの移行とか、データコンプライアンス、危険なDB設定くらいしか理由が思いつかないな。俺はDBにビジネスロジックを入れるのは避けてて、ストアドプロシージャはあくまで一時的な解決策だと考えてるよ。" userName="0xFEE1DEAD" createdAt="2025/07/11 12:12:12" color="#ff33a1">}}




{{<matomeQuote body="NATSにはガッカリさせられたよ。Core NATSは良いけど、強い配信保証が必要なJetstreamはクセが強いし、Core NATSの権限システムとうまく連携しない。クライアントSDKもPython、Rust、Goのを試したけど、Go以外はバグだらけで信頼できないね。NATSよりRabbitMQ、Kafka、Redpandaを勧めるよ。" userName="sbstp" createdAt="2025/07/11 04:24:22" color="#785bff">}}




{{<matomeQuote body="知ってるORMは全部、生SQLを扱えるだろ。ストアドプロシージャを書いて、VCSに保存して、マイグレーションとして追加して、それを呼び出せばいい。もっと使いやすくしたかったら、自分の言語で関数にラップしてヘルパーやエラーハンドリングを追加すればいいんだよ。" userName="sgarland" createdAt="2025/07/11 14:25:32" color="#ff33a1">}}




{{<matomeQuote body="メッセージ処理中のフェイルセーフがDBトランザクションと直接結合すると、脆くて扱いにくいものになる。キューからのメッセージ処理の標準ワークフローは、トランザクションDBで処理済みメッセージを追跡し、未処理メッセージをリクエストすることだ。処理したメッセージIDをDBに保存し、同じトランザクションで更新するのが一般的。エラーならトランザクションをロールバックすれば、メッセージIDも戻る。コンシューマは次の試行で失敗したメッセージを自動で再リクエストし、少なくとも1回配信の冪等性が得られるよ。" userName="imtringued" createdAt="2025/07/11 15:38:09" color="#45d325">}}




{{<matomeQuote body="その通りだけど、良い実装だと、配信が継続的に失敗したらダッシュボードで受信者に通知したいよね。だから、どこかの時点で例外キューのメッセージがDBを更新することになるだろうね。" userName="mike_hearn" createdAt="2025/07/11 15:29:15" color="">}}




{{<matomeQuote body="Railsを使っていた頃は、「外部キーなんていらない、全部ActiveRecordが処理してくれる」って風潮だったね。" userName="panzi" createdAt="2025/07/11 20:28:08" color="">}}




{{<matomeQuote body="新しいプロジェクトで、最初に選ぶべき最適な選択肢って何？SQLite？" userName="lytedev" createdAt="2025/07/11 22:59:48" color="">}}




{{<matomeQuote body="DBでのデータモデリングや保存方法は根本的にビジネスロジックの一部だよ。データは用途に応じて様々なモデル化ができ、トレードオフがある。大量データなら、使い方を知って、一般的な操作が十分速くなるようにモデル化する必要がある。アプリが進化すればそれも変わり、データ移行も必要になるかもね。だからってストアドプロシージャやトリガー、LISTEN/NOTIFYを使うべきってわけじゃないけど、「データ」と「ビジネスロジック」はきれいに分離できないってことが言いたいんだ。" userName="tsimionescu" createdAt="2025/07/11 06:53:08" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="NATSは今、Key-Valueストアがかなりいい感じだよ。今年の初めまでは有効期限がなかったけどね。" userName="whaleofatw2022" createdAt="2025/07/11 11:16:46" color="">}}




{{<matomeQuote body="Oban（Elixirのバックグラウンドジョブフレームワーク）では、PostgresのLISTEN/NOTIFYがずっと苦労の種だったんだ。ペイロードサイズ制限やコネクションプーラーの問題だけで、微妙な障害が起きてたよ。Elixirは分散Erlangのおかげで分散・pubsubがすごいから、皮肉な話だよね。Flyみたいなプラットフォームが出て楽になったけど、Herokuが衰退してからはほぼ無理になっちゃったな。" userName="sorentwo" createdAt="2025/07/10 20:55:58" color="#785bff">}}




{{<matomeQuote body="どうやって解決したの？WALをリッスンすることも検討したのかな？" userName="cpursley" createdAt="2025/07/10 21:09:23" color="">}}




{{<matomeQuote body="うちはPostgresベースのpubsubを使ってるけど、できるなら分散Erlangベースの通知器を使うのを勧めてるよ。あと、この投稿で触れられてる理由と全く同じで、insertトリガーを削除したのも大事な変更だったんだ。" userName="sorentwo" createdAt="2025/07/10 21:21:40" color="#ff33a1">}}




{{<matomeQuote body="＞ この投稿で触れられてる理由と全く同じで、insertトリガーを削除したのも大事な変更だったんだ。<br>代わりに何を使ったの？" userName="MuffinFlavored" createdAt="2025/07/11 00:16:15" color="">}}




{{<matomeQuote body="アプリ内通知にしたよ、これは無効にできるんだ。うちはトリガーを秒以下のジョブディスパッチのためだけにしか使ってなかったけどね。" userName="sorentwo" createdAt="2025/07/11 01:28:24" color="#38d3d3">}}




{{<matomeQuote body="アプリケーションがクラスター化されてたら分散Erlang、そうじゃなかったらRedisを使ってるよ。情報源はObanでこの問題にぶち当たった会社の開発者だよ。" userName="parthdesai" createdAt="2025/07/10 21:30:33" color="#785bff">}}




{{<matomeQuote body="HerokuだとErlangクラスタリングが難しかったってどういうこと？Flyと同じDNSクラスタリング機能、2017年からあったはずだけどな: https://devcenter.heroku.com/articles/dyno-dns-service-disco...." userName="nightpool" createdAt="2025/07/11 18:41:36" color="#ff33a1">}}




{{<matomeQuote body="問題はDNSベースの発見じゃなくて、接続が制限されてたことだよ。僕の知る限りだと、TCP/UDPでdyno同士が直接接続できなかったんだ。" userName="sorentwo" createdAt="2025/07/11 18:55:24" color="#38d3d3">}}




{{<matomeQuote body="Private Spacesを使えば、それは問題ないよ。2015年から利用可能だからね。" userName="nightpool" createdAt="2025/07/11 19:16:39" color="#ff5733">}}




{{<matomeQuote body="Mnesiaを使ってるアプリは本当に少ないよ。PostgresよりMnesiaを推奨するなんてありえないね。" userName="sorentwo" createdAt="2025/07/10 22:17:39" color="">}}




{{<matomeQuote body="Mnesiaはすごく信頼性が低いって聞いたよ、残念だね。これって修正可能なのかな、それとも設計上の問題なのかな？" userName="arcanemachiner" createdAt="2025/07/10 23:08:39" color="">}}




{{<matomeQuote body="Mnesiaはまるで過去の遺物みたいな感じだよ。扱うのがすごく難しくて、エッジケースや障害が多いんだ。正直、救済すべきか疑問だね。" userName="sb8244" createdAt="2025/07/11 00:04:14" color="">}}




{{<matomeQuote body="RabbitMQは、メタデータストレージにまだMnesiaをデフォルトで使ってるはずだよね。それって問題あるのかな？" userName="tecleandor" createdAt="2025/07/11 02:53:20" color="#38d3d3">}}




{{<matomeQuote body="RabbitMQはMnesiaから移行中だよ。<br>https://www.rabbitmq.com/docs/metadata-store" userName="schaum" createdAt="2025/07/11 04:18:59" color="#ff5c5c">}}




{{<matomeQuote body="数年前、Mnesiaはクラスタリングと組み合わせると、スプリットブレインの惨事を引き起こしてたよ。あれはまだ解決されてないと思うね。" userName="spooneybarger" createdAt="2025/07/11 02:56:29" color="#ff33a1">}}




{{<matomeQuote body="Mnesiaを使った製品でしか働いたことないから、直接の経験はないんだけど、よく言われてたのはスプリットブレインが頻繁に起こるって問題だね。" userName="ahoka" createdAt="2025/07/11 12:10:09" color="#ff5733">}}




{{<matomeQuote body="みんな、俺も似たようなスケーラビリティ問題に直面したんだ。それで、LISTEN/NOTIFYがリスナー数を増やしたときにどう動くかベンチマークツールを作って調べたよ。<br>Postgresの全バージョン（9.6から最新まで）は、アイドルリスナー数に比例してスケーリングすることが判明したんだ。接続ごとに約13μsの余分な遅延が発生する。これはすぐに積み重なるから、アイドルリスナーが1,000だとNOTIFYの往復は0.4msから14msに増えるんだ。<br>ボトルネックをより理解するために、ベンチマークツールと、単一リスナーケースのO(N)バックエンドスキャンを共有ハッシュテーブルに置き換える概念実証パッチを書いたよ。これを使えば、数千のリスナーがいても遅延はほぼO(1)に抑えられるんだ。<br>詳しいベンチマーク、ソース、分析はここだよ:<br>https://github.com/joelonsql/pg-bench-listen-notify<br>まだアップストリームでの提案はないけど、関心を集めてパフォーマンスの崖を表面化させたいだけなんだ。フィードバック歓迎だよ。" userName="JoelJacobson" createdAt="2025/07/11 10:52:09" color="#45d325">}}




{{<matomeQuote body="LISTEN/NOTIFYってインターフェースがイケてないよね。アクセス制御とかペイロードの型指定ができないのは変だよ。『CREATE CHANNEL』と『GRANT』みたいなコマンドがあれば、権限管理やJSONペイロードの強制、シリアライズ方法の選択とか、いろんな改善ができるはずだよ。" userName="cryptonector" createdAt="2025/07/11 15:36:47" color="#ff5733">}}




{{<matomeQuote body="アクセス制御がないって話、SECURITY DEFINER関数で無理やりやる手もあるけど、一番良いのはアプリ側でAES-GCMとかでメッセージを暗号化して、鍵にアクセス制限をかける方法だよ。（隣接するチャンネルが使われてるかはバレちゃうけどね。）" userName="maxbond" createdAt="2025/07/11 22:08:50" color="#ff5733">}}




{{<matomeQuote body="うん、それ考えたことあるけど、そういうやり方に頼らないといけないって、なんか面倒くさいよね？" userName="cryptonector" createdAt="2025/07/12 06:52:34" color="">}}




{{<matomeQuote body="Postgresは最高だけど、LISTEN/NOTIFYは一番ダメな機能だよね。便利だし可能性あるのに、制限や粗削りな部分が多くて使われないんだ。あんまり知られてないし、非同期ジョブキューの話でも聞かないもんね。将来的に改善してほしいし、アクセス制御は絶対必要だね。" userName="maxbond" createdAt="2025/07/12 07:18:43" color="#45d325">}}




{{<matomeQuote body="この記事とスレッドはもうメーリングリストで話題になってるみたいだよ。このベンチマークと実験も紹介する価値あるかもね！<br>https://www.postgresql.org/message-id/flat/CAM527d_s8coiXDA4...<br>https://www.postgresql.org/message-id/flat/175222328116.3157..." userName="infogulch" createdAt="2025/07/12 19:23:32" color="#45d325">}}




{{<matomeQuote body="この問題に取り組んでくれてありがとう（まだ研究段階でも、必要なスタートだね）。筆者が大規模だって自慢してるのに、自分で直さないで他のpubsubに乗り換えたのはちょっとウケるね。" userName="WhyNotHugo" createdAt="2025/07/12 00:58:37" color="">}}




{{<matomeQuote body="dumb-ol’ polling（FOR UPDATE SKIP LOCKED）だとどうなるか興味あるな。いつかベンチマークしてみたいね。AccessExclusiveLockの挙動は知らなかったよ。Postgresのロックについては、僕のpglockpyも見てみてね！<br>https://leontrolski.github.io/postgres-as-queue.html<br>https://leontrolski.github.io/pglockpy.html" userName="leontrolski" createdAt="2025/07/10 21:00:49" color="#ff5c5c">}}




{{<matomeQuote body="同僚のベンチマークだと、LISTEN/NOTIFYは低〜中負荷ならいいけど、リスナー多いとスケールしないって分かったよ。この記事と同じ結果だね。僕はDBOSっていうの作ってて、Postgres上でキューにFOR UPDATE SKIP LOCKEDを使って、高負荷時の競合はexponential backoffとjitterで減らしてるんだ。<br>https://github.com/dbos-inc/dbos-transact-py" userName="qianli_cs" createdAt="2025/07/11 01:03:35" color="#ff5c5c">}}




{{<matomeQuote body="ナイス！DBOS使ってるよ。内部でこの問題どう処理してるのか気になってたから、心配しなくていいって聞いてよかった！" userName="mind-blight" createdAt="2025/07/11 02:22:41" color="">}}




{{<matomeQuote body="WALを読まないのって、なんで？" userName="eatonphil" createdAt="2025/07/11 10:57:46" color="#45d325">}}




{{<matomeQuote body="DBOSではWALを追跡に使おうか考えたけど、レプリケーションスロットの設定や管理が大変で、ディスクが無制限に増えるリスクもあるからやめたんだ。<br>俺たちはユーザーのPostgresインスタンスに組み込む形で、データ管理はしないから、もっとシンプルで侵入的じゃない方法を選んだんだよ。<br>それに、キューの場合、DBの制約やトランザクションを使えば、グローバルな並行性制御、レート制限、重複排除なんかがずっと楽に実装できるんだ。" userName="qianli_cs" createdAt="2025/07/11 16:54:59" color="#ff5c5c">}}




{{<matomeQuote body="ポーリングは良い方法だけど、正しく実装するのはかなり難しいんだ。<br>特に、トランザクションが開きっぱなしでVACUUMがタプルを掃除できない時でも速くて信頼性のあるキューを作るのは大変だね。<br>例えば、”最初の利用可能なタプルを取得”するのに、数千ものデッドタプルをスキップしないといけないかもしれない。<br>トランザクションを開きっぱなしにするのはアンチパターンだけど、時々便利なんだ。例えば`pg_repack`は実行中にトランザクションを開きっぱなしにするし、VACUUMも部分的にそうだったと思う。<br>偶然こうなってもDBが溶けないのは良いことだね。" userName="singron" createdAt="2025/07/10 21:33:21" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺がうまくいった方法は、テーブルをハッシュパーティションして、各ワーカーが一度に1つのパーティションで作業を探すんだ。<br>ワーカーの管理方法次第でいくつか戦略があるよ。こうすると、作業を探す時に考慮するデッドタプルがパーティション数のN分の1になるんだ。<br>厳密な順序は犠牲になるけど、厳密な順序が不要なユースケースは多いしね。<br>この戦略で一番大規模に実装した時は、128パーティションで各パーティションにワーカーがいて、1日約1億タスクを処理してたよ。<br>この規模だとLISTEN/NOTIFYは全然ダメで、ポーリングベースのアプローチで、仕事がない時はバックオフするようにしたんだ。<br>ホント、興味深い問題で、大規模だと正しくやるのは結構大変だね。" userName="time0ut" createdAt="2025/07/11 00:22:39" color="#ff5c5c">}}




{{<matomeQuote body="パーティション数は動的に変えられないし、ジョブが変なサイズで来るとさらに大変だよ。" userName="j16sdiz" createdAt="2025/07/11 01:13:36" color="">}}




{{<matomeQuote body="正確に何が必要かによるけど、`mod(queue_value_id, 5000)`で関数インデックスを作れば、これでごまかせる場合が多いよ。<br>そしたら`mod(queue_value_id,5000)`が`m`と`n`の間にあるのをクエリすればいいんだ。<br>これで、欲しいパーティション数に合わせて`m`と`n`のギャップを動的に調整できるよ。" userName="AlisdairO" createdAt="2025/07/11 04:01:49" color="#45d325">}}




{{<matomeQuote body="もしこれのトイ実装とか公開されてるものがあったら、ぜひ見てみたいな。" userName="dfsegoat" createdAt="2025/07/11 00:36:36" color="">}}




{{<matomeQuote body="Kafkaがまさにこんな感じでやってるんだよ。<br>Kafkaは何年もかけて粗い部分（パーティションのリサイズとかね）を修正してきたんだ。最近は使ってないけど。" userName="CBLT" createdAt="2025/07/11 02:10:13" color="">}}




{{<matomeQuote body="デッドタプルはリアルで重大な問題だよ。タプルをスキップしなきゃいけないだけじゃなくて、プランナーを動かす統計がそれらを考慮しないからなんだ。<br>俺はこれを痛い目に遭って知ったんだ。単純なクエリが、アプリが常に`SELECT ... FOR UPDATE SKIP LOCKED`して、ちょっと処理したらすぐに削除するテーブルで、急にすごく遅くなったんだよ。<br>結局、テーブルがほとんど空なのに約1万～2万のデッドタプルがあるせいで、プランナーが別のインデックススキャンに切り替えて、何千ものページを過剰にフェッチして、デッドタプルしかないから捨ててたんだ。俺が気づかなかったのは、プランナーの統計がデッドタプルを気にしないし、ANALYZEも考慮しないってことだったんだ。<br>だからプランナーはテーブルが実際よりずっと大きいって思い始めてたんだね。<br>こういうユースケースでは、`autovacuum`の設定（テーブルごとに設定できるよ）をずっとアグレッシブにして、高負荷時でもVACUUMがほぼ連続的に動くように調整するのが本当に重要なんだ。<br>もう一つの選択肢は、行を削除せずに、完了した行を示すカラムを使うことだ。これはパーシャルインデックスと組み合わせることでデッドタプルを避けられるよ。メリットもデメリットもあるけどね。クリーンアップ（とVACUUM）を別のジョブとしてやる必要があるんだ。" userName="atombender" createdAt="2025/07/11 09:59:13" color="#785bff">}}




{{<matomeQuote body="残念だけど、行を更新するだけでもデッドタプルはできちゃうんだよ。ホントに厄介だよね！" userName="singron" createdAt="2025/07/11 19:10:04" color="">}}




{{<matomeQuote body="できるけど、インデックスの仕組み的に、デッドタプルの存在で歪むことはないと思うよ（ただし、ブロートでライブデータが多くのブロックに散らばってI/Oが増える可能性はあるけどね）。ちゃんと`autoanalyze`を定期的に実行していれば大丈夫。" userName="atombender" createdAt="2025/07/11 19:14:21" color="#ff33a1">}}




{{<matomeQuote body="HOT更新があるかどうか次第だね。https://www.postgresql.org/docs/current/storage-hot.html もしヒープ全体にdead tuplesが多いと、HOT更新がたくさん起きる可能性があるよ。挿入順に処理すれば、同じページ内の他のタプルがまだ完全にdeadじゃないから、HOT更新をゼロにできることもあるよ。fillfactorを下げて試せるけど、パフォーマンスには悪影響だから助けにならないかもね。" userName="singron" createdAt="2025/07/11 21:10:18" color="#ff5733">}}




{{<matomeQuote body="”done”カラムで部分インデックスを使ってフィルタリングしてるなら、HOT更新は使われないよ。HOT更新の条件は、変更されるカラムにインデックスがないことだからね。" userName="atombender" createdAt="2025/07/11 21:39:06" color="#ff33a1">}}




{{<matomeQuote body="それは違うよ。PG16からはBRINみたいなサマリーインデックスに対してはHOT更新が許容されるんだ。https://www.postgresql.org/docs/16/storage-hot.html あと、”done”になったジョブは未処理のジョブと同じテーブルに入れない方がいいよ。スケールアップするならアーカイブするべきだし、色々な運用上のメリットがあるのにコストはかからないからね。" userName="menthe" createdAt="2025/07/11 22:30:28" color="#785bff">}}




{{<matomeQuote body="嘘じゃないよ。誰もこんな用途でBRINなんて使わないし。俺は普通のインデックスの話をしてるんだよ、それはHOT更新を防ぐんだ。前のコメントをちゃんと読めば、”done”カラムはホットパスでのカラム削除を避けて、dead tuplesがプランナーをめちゃくちゃにするのを防ぐためだってわかるはず。完了ジョブを同じテーブルに置かないのは同意だけど、それだとdead tuple問題にぶつかるリスクがあるんだ。どのアプローチも妥協点だね。" userName="atombender" createdAt="2025/07/11 22:34:30" color="#45d325">}}




{{<matomeQuote body="＞トランザクションを開きっぱなしでも高速って話だけど、俺のリンクした例だと、キューからアイテムを取得したらすぐにポーリング対象外のステータスにするよね。Postgresはそれでも、バキュームされるまでこれらのタプル（インデックス内でも）をスキップし続ける必要があるのかな？" userName="leontrolski" createdAt="2025/07/11 04:36:32" color="#785bff">}}




{{<matomeQuote body="LISTEN/NOTIFYがないMariaDB/MySQLクラスタでポーリングを実装したけど、あれは大変だったよ。バッチサイズはパフォーマンス、レイテンシ、ダウンタイムからの復旧のために適応的にすべきだし、ポーリングのタイムアウトや頻度もそう。ヒステリシスも避けるべきで、メインアプリに重い負荷をかけたり、誤ってテーブルや行をロックしたりしないよう、めちゃくちゃ気を遣う必要があるよ。ネットワーク分断に備えて、複数の分散ワーカーも欲しいね。当時はSKIP LOCKEDに対応してなかったから特に難しかったよ。今思えばWALを監視した方がずっと楽だったな。" userName="broken_broken_" createdAt="2025/07/11 05:33:44" color="#ff33a1">}}




{{<matomeQuote body="pgmqで遊んでみたことある？かなり良い感じだよ。https://github.com/pgmq/pgmq" userName="cpursley" createdAt="2025/07/10 21:10:08" color="">}}




{{<matomeQuote body="@leontrolskiがベンチマークに追加すべきもう一つのことだね。読むのが待ちきれないよ。" userName="edoceo" createdAt="2025/07/10 22:29:36" color="">}}




{{<matomeQuote body="pgmqの上に構築されたpgflowっていうクールなソリューションがあるよ。https://www.pgflow.dev/concepts/how-pgflow-works" userName="cpursley" createdAt="2025/07/11 00:19:40" color="">}}




{{<matomeQuote body="僕はバックオフ付きのポーリングを最大1分まで使ってるよ。ワークロードが終わったらすぐに次の仕事を探しにポーリングするんだ。何も見つからなかったら5秒待って、それでもダメなら10秒、…と1分まで待って、それからは1分ごとにポーリングするんだ。また仕事が見つかったらバックオフタイマーはリセットされるよ。" userName="RedShift1" createdAt="2025/07/10 21:29:26" color="#785bff">}}




{{<matomeQuote body="経験があるならChancy[1]にフィードバックくれない？ これはPostgresとPython向けのオールインワン提供を目指してるんだ。大規模な水平スケーリングじゃなくて、1日数億件のジョブを想定してるよ。ポーリングとLISTEN/NOTIFYを組み合わせて、早期にワーカーを起こしてポーリングさせるんだ。これはnotifications=falseでグローバルにオフにもできるよ。<br>参照: https://github.com/tktech/chancy" userName="TkTech" createdAt="2025/07/11 00:42:38" color="#785bff">}}




{{<matomeQuote body="LISTEN/NOTIFYの代わりにWAL（Write-Ahead Log）や論理レプリケーションストリームをリッスンするって手もあるよ。あるいは、WALや論理レプリケーションストリームをリッスンするだけのワーカーを作って、そいつがNOTIFYするとか。それか、WALをリッスンしてPostgres以外のpubsubシステムにパブリッシュするワーカーを作るのもアリだね。" userName="cryptonector" createdAt="2025/07/11 15:38:54" color="#38d3d3">}}




{{<matomeQuote body="図々しい宣伝だけど、この記事をまとめてくれて本当にありがとう！ Postgresのロックについて、すごく役立つ概要だったよ。" userName="aurumque" createdAt="2025/07/10 21:03:55" color="">}}




{{<matomeQuote body="Ping方式だとチェックするために永続的な何かが必要で、タプルの作成と、消費後に削除が必要になるよね。これってデータベースにプレッシャーかけるし、バキュームも必要になる。でもpubsubは完全に一時的だからそういうのはないんだ。それにpubsubは1つのメッセージで複数のコンシューマを許すけど、FOR UPDATEは設計上1つのコンシューマだけだしね。" userName="sorentwo" createdAt="2025/07/11 02:06:49" color="#ff5c5c">}}




{{<matomeQuote body="リアルタイム通知にはKafkaやRabbitMQを勧める人が多いけど、これらは比較的安定した少数のトピックにはいいけど、チャットアプリみたいにユーザーが頻繁に出入りするような多数の動的なサブスクライバーを扱うと、コストがかかるし非効率になるんだ。RabbitMQはキューのバインディングがリソース食いだし、Kafkaは新しいサブスクリプションで高コストなリバランシングが頻繁に発生するんだよね。あるメッセンジャーアプリでは、RabbitMQと各ユーザーごとの個別キューを使って10万の同時サブスクライバーを処理してて、通常時でRabbit側のCPUが60%だった。インフラのプロキシリロードで大規模な再接続が起きたら、ユーザーが再接続するのに数分かかってたよ。そこで、Centrifugo（https://github.com/centrifugal/centrifugo）とRedisエンジン（PUB/SUBとRedis Streamsを組み合わせる）への切り替えを提案したら、Redis側のCPUは0.3%になったんだ。今ではこのシステムは約200万の同時接続をさばいてるよ。" userName="FZambia" createdAt="2025/07/11 13:09:48" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、それに文字数制限（カラムサイズ）もあるんだ。だから俺はPostgresのWALをリッスンしてデータベースの変更を追うのが好きなんだ。<br>参照: https://github.com/cpursley/walex?tab=readme-ov-file#walex （いくつか役立つリンクもあるよ）" userName="cpursley" createdAt="2025/07/10 20:42:21" color="#ff5c5c">}}




{{<matomeQuote body="最近、WALに直接トランザクション保証付きで書き込める、しかも実際のテーブルに書く必要がない方法を見つけたんだ。これってキューやアウトボックスの用途にめちゃくちゃ良さそうに聞こえるよね。テーブルにデータを挿入する通常のやり方だと、かなりのリソースを使うし（オートバキュームはこれらのユースケースで大きな懸念事項になるんだ）。その関数が見つからないんだけど、まだ現場で使われてるのを見たことないんだ。何か落とし穴があるのかな？<br>追記: 見つけたよ、`pg_logical_emit_message`だ。" userName="williamdclt" createdAt="2025/07/10 21:20:45" color="#45d325">}}




{{<matomeQuote body="`pg_logical_emit_message()`はPostgresユーザーにアウトボックスパターン[1]を実装するのに俺が推奨する方法だよ。君が言うようにテーブルのオーバーヘッドもハウスキーピングもいらない。他にもクールな応用があるんだ。例えばCDCストリームにアプリケーション固有のメタデータを提供したり、トランザクションロギングに使ったり。少し前に[2]でそれについて書いたよ。もう一つは、監視してるデータベースにトラフィックがなくてもレプリケーションスロットを進められるようにすることだね[3]。<br>参照: [1] https://speakerdeck.com/gunnarmorling/ins-and-outs-of-the-ou...[2] https://www.infoq.com/articles/wonders-of-postgres-logical-d...[3] https://www.morling.dev/blog/mastering-postgres-replication-..." userName="gunnarmorling" createdAt="2025/07/11 06:34:26" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
