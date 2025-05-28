+++
date = '2025-05-20T00:00:00'
months = '2025/05'
draft = false
title = 'Litestreamが待望の刷新！'
tags = ["SQLite", "データベース", "バックアップ", "レプリケーション", "運用"]
featureimage = 'thumbnails/red2.jpg'
+++

> Litestreamが待望の刷新！

引用元：[https://news.ycombinator.com/item?id=44045292](https://news.ycombinator.com/item?id=44045292)




{{<matomeQuote body="コードはここっぽいよ：<br>https://github.com/benbjohnson/litestream/tree/v0.5<br>これが見れてマジ嬉しいわ。2年前にLitestreamとlitefsを使おうとして、ちょっとイライラしてた時に書いたコメントがこれ：<br>https://news.ycombinator.com/item?id=37614193<br>これで大体の問題解決するのかな？今度は複数のライターの問題を気にせずにLitestreamをDBで自由に実行できるってこと？引き継ぎはどう処理されるんだろ。<br>リードレプリカのFUSEレイヤーはマジで良いね。<br>追記：あー、こうやって動くんだ：<br>https://github.com/benbjohnson/litestream/pull/617<br>＞ 別のLitestreamプロセスが起動して既存のリースを確認したら、成功するまで1秒ごとにリース取得を再試行する。この短い再試行間隔のおかげでローリングリスタートがすぐにオンラインになる。<br>いけそうだね！" userName="maxmcd" createdAt="2025/05/20 20:12:44" color="#ff5733">}}




{{<matomeQuote body="この投稿は、まるで俺の心の中を読んで新しいLitestreamに欲しかったものを全部実装してくれたみたいだわ。マジで興奮するね。" userName="simonw" createdAt="2025/05/20 21:01:12" color="">}}




{{<matomeQuote body="ben、litestreamありがとう！<br>俺たちプロダクションで1年以上使ってるよ。書き込み多めの社内ユースケースで（圧縮して約12GB）、毎月数百円しかかかってない（azure）。<br>新しい変更が入るのが楽しみだわ。" userName="thewisenerd" createdAt="2025/05/20 22:37:48" color="#ff5c5c">}}




{{<matomeQuote body="ホスティングやデプロイの運用選択について少し教えてくれない？Azureのどのサービスを使ってるの？設定はどんな感じ？スループットはどんなもん？マイグレーションに関して何かコツとかある？専用サーバーかVPSか、どっち使ってる？<br>俺も今年の後半に似たようなデプロイする予定だから、このトピックについて読むの楽しいんだ。" userName="tmpz22" createdAt="2025/05/22 00:53:18" color="#785bff">}}




{{<matomeQuote body="この特定のデプロイについてはね、Azureのblob storageだけ使ってるよ。デプロイ先はオンプレのkubernetesクラスターで、replicas=1、strategy: recreate。スループットはそんなに重くない正直なところ。10秒に1回くらいのwebhookリクエストで、リクエストごとにテーブルに10～100件以上のエントリーが追加される感じ。マイグレーションは、社内コンソールだから、数時間ダウンタイムとってやったよ。" userName="thewisenerd" createdAt="2025/05/23 07:46:07" color="#ff5c5c">}}




{{<matomeQuote body="FlyがSQLite周りの開発者体験をもっと磨いてくれたらなー。結構近いんだけど、足りないんだよね：<br>1. VolumeからSQLiteを管理するUIとCLIが内蔵されてない。Fly Machineに初期DBを置くのに手間がかかりすぎる。<br>2. `fly console`がSQLiteで動かないんだ。別のMachineを起動するから、SQLiteデータがあるVolumeに繋がらないんだよね。代わりに`fly ssh console —pty`を実行しないといけないって知らないといけない、これが事実上DBがあるMachineにSSHするってやり方なんだけどさ。<br>SQLiteを使ったウェブアプリの一般的な問題は、小さいアプリになりがちで、ホスティングでそこそこ稼ぐにはたくさん必要になるってことなんだ。" userName="bradgessler" createdAt="2025/05/20 22:34:15" color="#ff5733">}}




{{<matomeQuote body="Brad、Rails 8とSQLiteについてどう思う？最近はPostgresよりそっちに傾いてきてる？" userName="adenta" createdAt="2025/05/21 01:53:54" color="">}}




{{<matomeQuote body="そうだよ！FlyのPG clusterデータベースをSQLiteに移行したばかりなんだ。DBリソースを過剰にプロビジョニングしちゃって、たまにノードがクラッシュするのに対応するのに疲れたからね。<br>正直言うと、Managed PG clusterを動かしてくれてたら、もっと簡単にスケールダウンできたのにとは思うけど、SQLiteには満足してるよ。<br>別のプロジェクトで、最大100ユーザーくらいの同時接続になるって分かってたやつにSQLiteを使ったんだけど、めちゃくちゃ上手くいったね。一番良かったのは、ユーザーがプロダクションエラーを報告してくれて、ローカルで再現できなかった時に、DBをダウンロードして、最新のプロダクションデータを使って自分のラップトップで再現できたことだわ。高コンプライアンスなアプリじゃできないことだけど、ほとんどのアプリはそうじゃないしね。<br>「SQLiteとRailsは最高だよ」って断言するのはちょっとためらうんだ。だって、自分のアプリが1つのノードで動くって分かってないといけないからさ。それが分かってたら最高だけどね。" userName="bradgessler" createdAt="2025/05/21 03:23:33" color="#785bff">}}




{{<matomeQuote body="なんて偶然だ、今日ちょうどLitestream調べてたんだ！VPSでSqlite使ってて、これ追加しようと思ってたんだよね。<br>これって、litestreamプロセスが動いてる間のどの時点にもDBをリストアできるようになるって理解で合ってる？だって、auto-checkpointingが動いてない間にWALを消費しちゃう可能性があるんでしょ？<br>極端な例で言うと、プロセスが2:00から3:00の間クラッシュしたとして、1:55か3:05にはリストアできるけど、2:00から3:00の間にリストアするのに必要な情報が失われるってこと？" userName="jasonthorsness" createdAt="2025/05/20 20:52:22" color="#ff5c5c">}}




{{<matomeQuote body="LitestreamはWALセグメントを時間粒度に合わせて保存するんだ。デフォルトだと、1秒ごとにWALの変更を送り出すから、（保持期間内であれば）履歴の任意の秒にリストアできるはずだよ。" userName="benbjohnson" createdAt="2025/05/20 22:08:02" color="#ff33a1">}}




{{<matomeQuote body="DST（夏時間冬時間）の扱い、問題ない？ ヨーロッパだと3月30日に時間が1時間ずれたんだけどさ。" userName="dolmen" createdAt="2025/05/21 08:44:25" color="">}}




{{<matomeQuote body="これめっちゃいいね！昔DynamoDBをバックエンドにしたsqlite vfs、DonutDB作ったんだ。最近S3にCASが追加されたからS3版も考えたんだけど、Litestreamが対応してるなら自分でやらなくて済むじゃん！早く試したいな。<br>[0]: https://github.com/psanford/donutdb" userName="psanford" createdAt="2025/05/20 21:07:44" color="">}}




{{<matomeQuote body="S3にCASが追加って話、参照元ある？CASってcontent addressable storageのこと？ググってもAWSのドキュメント見つかんないんだけど。" userName="hamandcheese" createdAt="2025/05/21 02:25:19" color="">}}




{{<matomeQuote body="Compare And Swapだよ。" userName="xyzzy_plugh" createdAt="2025/05/21 02:35:30" color="">}}




{{<matomeQuote body="TL;DR（超要約）は、Amazon S3が「条件付き書き込み」をサポートしたってこと。他の人が書き込んでたら失敗する保証付き。ETagを送って実現してるんだ。Litestreamはこれを使って複数ライターを処理してる。楽観的ロックみたいな感じ。AWSの告知リンクもあるよ。<br>https://aws.amazon.com/about-aws/whats-new/2024/11/amazon-s3..." userName="gcr" createdAt="2025/05/21 02:54:35" color="#785bff">}}




{{<matomeQuote body="二人ともありがとね！俺が仕事で使ってる感じだとCASはcontent-addressable-storageの意味なんだわ。俺の間違いだ。" userName="hamandcheese" createdAt="2025/05/21 14:04:38" color="">}}




{{<matomeQuote body="LLMコード書くロボットもSQLite好きになるかもって密かに思ってる。コード試して失敗しても状態ごとロールバックできるのがエージェントにとって超重要。タイムトラベルで並行探索できると強いよね。ワークフローで決定論保つのが大変って話も。ReplitがNeonのタイムトラベルをエージェントに統合したのも同じ理由[0]。ReplitはGCPとかの上にあるから、Oracleみたいになんないか心配だよ。<br>[0]: https://blog.replit.com/safe-vibe-coding" userName="ignoramous" createdAt="2025/05/20 21:37:17" color="#785bff">}}




{{<matomeQuote body="LitestreamでたくさんのDB（一人一個とか）をレプリケーションしたい場合、実行中に新しいDBを追加する指示ってどうやるの？設定ファイルは変わんないし、DB追加を指示するAPIも見つかんなかったんだけど。" userName="hobo_mark" createdAt="2025/05/20 22:37:22" color="#45d325">}}




{{<matomeQuote body="この問題は解決されるはずだよ。新しいsqlite見つけるのはちょっと難しいけど、できないことじゃない。とりあえず今はライブラリとして使うのが結構簡単だよ。" userName="mrkurt" createdAt="2025/05/20 23:08:46" color="">}}




{{<matomeQuote body="Benのことずっと追ってるけど、LiteFSが彼の仕事ベースだって知らなかったわ。結局、自分で分散DBやるならrqliteがいいかって落ち着いたんだけどね。<br>https://github.com/rqlite/rqlite リンク貼っとくわ。" userName="srameshc" createdAt="2025/05/20 20:21:48" color="">}}




{{<matomeQuote body="LiteFSと似たアプローチだけど、rqliteはConsulに頼らずRaftをプロジェクトに組み込んでるんだって。https：//youtu.be/8XbxQ1Epi5w？si=puJFLKoVs3OeYrhR" userName="digianarchist" createdAt="2025/05/20 22:59:22" color="#ff5c5c">}}




{{<matomeQuote body="全然似てないと思うな。LiteFSはConsulを使ってPostgresみたいにシングルリーダー・マルチレプリカ構成のリーダー選出をするんだ。rqlite（前に見た感じだとね）は直接Raftを動かして、書き込みごとにクォーラムを取る。どっちが良いってわけじゃないけど、LiteFSはrqliteみたいな意味での”分散SQLite”じゃないよ。何十年も前からあるログシッピングみたいにリードオンリーレプリカを作るためのシステムだよ。" userName="tptacek" createdAt="2025/05/20 23:12:22" color="#ff5c5c">}}




{{<matomeQuote body="rqliteは専用のクライアントライブラリを使う必要があるけど、LiteFSはプログラムからは透過的だよ。" userName="apitman" createdAt="2025/05/21 02:17:07" color="#ff5733">}}




{{<matomeQuote body="＞ Now that we’ve switched to LTX, this isn’t a problem any more. It should thus be possible to replicate /data/*.db, even if there’s hundreds or thousands of databases in that directory.<br>これが最大のネックだったんだよね。これで（理論的には）テナントごとにDBを持つマルチテナント構成で、各ユーザーが特定の時点にロールバックしたり、DBを完全にダウンロードして持ち出したりするのが可能になるはずだよ。" userName="wg0" createdAt="2025/05/21 16:40:09" color="#785bff">}}




{{<matomeQuote body="今のLitestream使ってる人が新しいのにアップグレードするには何が必要なの？バージョン上げるだけでいけるのか、それとも他に何かいる？" userName="rads" createdAt="2025/05/21 02:47:58" color="#38d3d3">}}




{{<matomeQuote body="超いいね！これすごい賢いし、デプロイめっちゃ簡単になるね。うちは（たくさんの）数千個のSQLite DBをバックアップしなきゃいけなくて使えなかったんだ。とりあえずfanotifyとSQLiteのBackup API使って適当にコピるの作ったけど、ワイルドカードレプリケーションでこのファイル数いけるならLitestreamに乗り換えてみるつもりだよ。" userName="wim" createdAt="2025/05/21 17:57:50" color="#45d325">}}




{{<matomeQuote body="新しいLitestreamって、条件付き書き込みに対応してないオブジェクトストレージでも動くの？" userName="JSR_FDED" createdAt="2025/05/21 04:30:48" color="#45d325">}}




{{<matomeQuote body="アプリの新バージョンをデプロイするとき、一般的なマネージドソリューションだと新しいサーバーインスタンスを立てて、ヘルスチェックが通ったら古いのは落として新しい方にトラフィックを流すよね。前はこれだと新しいインスタンスが古いサーバーの変更を取りこぼす可能性があって問題だったんだけど、今回の変更で解決されたの？" userName="Skinney" createdAt="2025/05/21 10:22:55" color="#ff33a1">}}




{{<matomeQuote body="サーバーをWebサーバーインスタンスじゃなくプロダクションDBとして考える必要があると思うよ。自分のPython/SQLite Webアプリの新バージョンデプロイでは、マシン全体は変えず、Pythonパッケージ上げてsystemdサービス再起動するだけ。ダウンタイム減らしたいならSO_REUSEPORT移行も考えられるけど、DB同時使用への対応が必要。スキーマ変更あるアップグレードだとダウンタイム避けられるか不明。従来のDBでもできるか分からないけどね。" userName="gwking" createdAt="2025/05/21 22:51:47" color="#ff33a1">}}




{{<matomeQuote body="これって簡単に解決されるわけじゃないと思うな。リースを持ってるライターはまだ一つだけだからね。新しいサービスが起動しても、前のサーバーがシャットダウンするまで書き込みリースは取れないよ。これを検知して、片方のライターを止めてもう片方を起動するツールはあるだろうけど、サービスはリクエストのキューイングかダウンタイムを経験することになるだろうね。" userName="maxmcd" createdAt="2025/05/21 15:30:45" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="fossil（sqliteベース）とこれ（Litestream）を組み合わせたらSCM（ソースコード管理）になるの？" userName="malkia" createdAt="2025/05/21 00:18:19" color="">}}




{{<matomeQuote body="fossil版のGitHubを誰か作ってくれないかな。名前がPaleontologyだったらマジ最高なんだけど。" userName="hiAndrewQuinn" createdAt="2025/05/21 07:28:53" color="">}}




{{<matomeQuote body="fossilを便利にするのにそんなの必要？基本Gitで言うGitHubみたいに全部入ってるし、P2Pで動くから centralized serviceはいらないでしょ。discovery（見つける）のためなら分かるけど、”GitHub for Fossil”じゃなくて検索エンジンとかポータルみたいなもんじゃない？" userName="diggan" createdAt="2025/05/21 09:45:43" color="">}}




{{<matomeQuote body="あと、俺の知る限りだとCI連携が全くないんだよね。組織で使うプラットフォームとしてはそれって絶対必要（個人的には）。そういえばfossilの今の状況調べてたらこれ見つけたんだけど、https://fossil-scm.org/home/doc/trunk/www/qandc.wiki#:~:text... これ見て爆笑したけど、正直導入のハードル高いよ。Bugzillaファンがいるのは知ってるけど、あんなゴミみたいなBugzillaで仕事するくらいなら速攻辞めるね。" userName="mdaniel" createdAt="2025/05/22 19:37:59" color="#45d325">}}




{{<matomeQuote body="大規模にみんなに使われるのを妨げてるのって、結局Discovery（見つけてもらうこと）と market dominance（市場での支配力）だけみたいだよね。" userName="hiAndrewQuinn" createdAt="2025/05/22 07:08:29" color="">}}




{{<matomeQuote body="”mass”（大規模普及）ってのをどう考えるかによるよね。だって（a）世の中にはGitHub APIしか対応してないツールがめちゃくちゃいっぱいあるし（GitLab、Giteaとかは言うまでもないとして）、（b）AIUIではfossil開発者たちは履歴変更をめっちゃ嫌うらしいから。それは彼らにとっては良いけど、一部のGitユーザーには全然良くない。Mercurialの”please don’t”をもっと強くした感じかなって俺は思ってる。" userName="mdaniel" createdAt="2025/05/22 19:34:23" color="#ff33a1">}}




{{<matomeQuote body="LitestreamってLiteFSの機能も取り込む感じなの？ Re：PITR（ポイントインタイムリカバリ）の話だけど、これってAIが作ったコード変更をlive data（実データ）の一部で自動A/Bテストするのに使える？その方向でマジ色々面白いことできそう。Ben、これマジ最高だわ！" userName="neom" createdAt="2025/05/20 22:56:25" color="#38d3d3">}}




{{<matomeQuote body="最高すぎる！ これで1つのLitestreamプロセスでSQLiteの*.dbファイルがフォルダごと全部複製できるようになるっていう、俺の一番欲しい機能が叶ったわ。ついに来たって感じで超嬉しい。これでMulti tenant（マルチテナント）でユーザーごとにSQLite使うのが、もっとやりやすくなるはず。" userName="mythz" createdAt="2025/05/21 03:31:37" color="#38d3d3">}}




{{<matomeQuote body="こういうアーキテクチャの本当の”advantages”（利点）がまだよく分かんないんだよね。centralized（中央集権型）のPostgresサーバーでも同じくらいのデータ処理できるんじゃないの？" userName="oulipo" createdAt="2025/05/21 09:26:23" color="">}}




{{<matomeQuote body="データベースサーバーへのクエリのネットワークのやり取りって積み重なっていくから、それがクエリの設計にも影響するんだ（n-tier（n層アーキテクチャ）が当たり前になってきて、今はあんまり意識しないけどね）。SQLiteのadvantage（利点）は、クエリがめちゃくちゃ速いことだよ。" userName="tptacek" createdAt="2025/05/21 18:04:19" color="#ff5c5c">}}




{{<matomeQuote body="なるほど！ありがとう。<br>Litestreamは”レプリケーションされるローカルDB”って言われるけど、”中央DBで、サーバーコードの近くに同期されるローカルキャッシュがある”って見た方が分かりやすいかもね。同じことだけど、ローカルキャッシュで読み書きするっていう意図が明確になる気がするよ。" userName="oulipo" createdAt="2025/05/22 13:33:38" color="">}}




{{<matomeQuote body="これいいね！特にLitestreamがちゃんとメンテされてて嬉しいよ。<br>バックアップ以外の使い道ってあるのかな？<br>オ●フラインファーストは好きだけど、デバイスのSQLiteインスタンスを一つの中央インスタンスに同期する方法があるといいな。" userName="j0e1" createdAt="2025/05/20 21:48:30" color="">}}




{{<matomeQuote body="バックアップとリードレプリカが主な使い道だよ。<br>ローカルファーストに興味があるなら、cr-sqlite[1]みたいなプロジェクトをチェックしてみるといいよ。<br>[1]: https://github.com/vlcn-io/cr-sqlite" userName="benbjohnson" createdAt="2025/05/20 22:05:58" color="#ff5733">}}




{{<matomeQuote body="＞ リードレプリカ<br>これってLitestreamだけでできるの？それともLiteVFSはまだ開発中？去年LiteFSのFUSEによる書き込みパフォーマンス低下[1]でやめたんだよね。LiteVFSはまだWIP[2]で1年以上更新されてないみたいだし。<br>[1] https://fly.io/docs/litefs/faq/#what-are-the-tradeoffs-of-us...<br>[2] https://github.com/superfly/litevfs" userName="dankebitte" createdAt="2025/05/20 22:43:28" color="#ff5733">}}




{{<matomeQuote body="Benさん、素晴らしい仕事ありがとう！<br>あと、これについても調べたのを覚えてるよ: https://github.com/vlcn-io/cr-sqlite/issues/444" userName="j0e1" createdAt="2025/05/20 22:16:27" color="">}}




{{<matomeQuote body="すごくいいね！<br>ここにタイポがあるかもね:<br>＞ The most straightforward way around this problem is to make sure only one instance of Litestream can replication to a given destination.<br>”can replicate” か ”can do replications” かな？" userName="bambax" createdAt="2025/05/21 06:53:48" color="">}}




{{<matomeQuote body="Fly.ioの人いる？<br>PostgreをCloudflare D1（これもSqliteベースだよね）みたいにこれで置き換えられるの？" userName="wiradikusuma" createdAt="2025/05/21 06:23:28" color="">}}




{{<matomeQuote body="Compare-And-SwapをサポートしてるS3互換オブジェクトストレージプロバイダーのリスト持ってる人いる？" userName="Nelkins" createdAt="2025/05/21 17:41:39" color="">}}




{{<matomeQuote body="進捗が見れて聞けて最高だよ。<br>Benが何か開発してシェアしてくれるのはいつも嬉しいね。<br>この調子で頑張って！" userName="rawkode" createdAt="2025/05/20 21:09:30" color="">}}




{{<matomeQuote body="安定版から0.5ブランチへの移行ガイドってある？<br>DockerサイドカーとしてPythonアプリと一緒にLitestreamを使ってて、SQLiteのDBがS3にバックアップされててすごく安心なんだ。" userName="nodesocket" createdAt="2025/05/20 22:11:29" color="#ff5733">}}




{{<matomeQuote body="Litestreamのアップデート超嬉しい！ずっとPocketbaseと使ってて、安くて reliable で safe な backend にはチートコードみたいだよ。" userName="oliwary" createdAt="2025/05/20 22:37:29" color="#ff5c5c">}}




{{<matomeQuote body="Litestream、最近あんまり開発されてないと思って心配だったんだよね。でもBen Johnsonが続けてくれて嬉しいわ。新しい計画も exciting だね。" userName="fra" createdAt="2025/05/20 20:56:49" color="#45d325">}}




{{<matomeQuote body="LitestreamとLiteFSのアイデア大好きで、ちっちゃなプロジェクトで使ってるんだ。でも開発止まったかと心配してた。「もう完成」と「放置」って紙一重だし。この分野にはまだまだ untapped potential あるし、benbjohnsonが開発続けてくれて嬉しい。新しいリリースで複数のDBファイルを replication できるのは超いいね！S3とかTigrisが conditional write support 提供してるって話だけど、SFTPとか一部のS3互換ストレージにはこの機能ないから、これが hard requirement にならないことを願うよ。" userName="noroot" createdAt="2025/05/21 08:34:23" color="#45d325">}}




{{<matomeQuote body="俺も数ヶ月前に似たツール調べた時、同じ結論になったよ。Litestreamの最終リリース2023年でDockerイメージ1年以上前だったから。結局、ちょっと不便でもバックアップ頻繁に取る方が safer かなと思った。" userName="avtar" createdAt="2025/05/21 01:57:59" color="#ff5733">}}




{{<matomeQuote body="BenってBoltDBも書いた人だけど、あれもcommunity活発なのに何年も untouched （archivedまで）だったんだよね。完成したらもういいって時もあるんだよ！" userName="tptacek" createdAt="2025/05/21 02:21:31" color="">}}




{{<matomeQuote body="2週間前にactiveなcommitあるみたいだよ。mainブランチじゃないけどね。" userName="Zekio" createdAt="2025/05/21 07:52:09" color="#ff5733">}}




{{<matomeQuote body="S3 compatibleなobject storageから直接ページ fetch して cache できるようになるって？それってSQLiteのDBサイズがlocal disk capacityに制限されなくなるってこと？" userName="ChocolateGod" createdAt="2025/05/21 07:46:16" color="#38d3d3">}}




{{<matomeQuote body="LiteVFSのrepo見ると、いくつかの limitation 付きでそうみたい。「LiteVFSはLiteFS Cloudをbacking storeとして使うSQLite向けのVirtual Filesystem extensionだよ」<br>Limitations：<br>・journal_mode=walなDBはLiteVFS経由で変更ダメ（readはOK）<br>・auto-vacuumなDBはLiteVFS経由で開けない<br>・VACUUMは未support" userName="bdcravens" createdAt="2025/05/21 09:47:34" color="#ff5733">}}




{{<matomeQuote body="SQLiteに手ぇ加えないで（Tursoの人がやったみたいにね）、WAL indexをネットワーク越しに共有するのって大変（impossibleじゃないけど）なんだよね。多分それが理由かな。俺、数千回mptestをCIで何ヶ月も回してるけど問題ないって結構 confident なhack知ってるよ。Benがinterestedかもだからここにlink貼っとく。" userName="ncruces" createdAt="2025/05/21 15:58:36" color="#ff5c5c">}}




{{<matomeQuote body="read-replicas に対応してて、cold data を object storage に offload できるSQLite DB、めっちゃ useful だろうね。" userName="ChocolateGod" createdAt="2025/05/21 10:04:49" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Benが見てるみたいだから聞くんだけど、刷新されたLitestreamはトランザクションがストレージに永続的にコミットされたときだけACKを返すような解決策を持つのか？" userName="dastbe" createdAt="2025/05/21 02:49:33" color="#ff33a1">}}




{{<matomeQuote body="バックエンドはプラグイン形式になってるの？楽観的並行性制御をサポートするkey value storeなら何にでも書き込めるように設定できるの？" userName="caleblloyd" createdAt="2025/05/20 21:57:21" color="">}}




{{<matomeQuote body="今のところプラグインはサポートしてないけど、いくつかのバックエンドはあるよ（S3、Azure Blob Storage、Google Cloud Storage、SFTPなど）。" userName="benbjohnson" createdAt="2025/05/20 22:04:50" color="#785bff">}}




{{<matomeQuote body="ちょっと話それるけど、今のSQLiteって書き込みはまだ直列なの？ピーク時に何千もの書き込みが発生する可能性があるアプリの技術スタックを選ぶときの俺の主な心配事なんだ。" userName="yowmamasita" createdAt="2025/05/21 00:05:15" color="">}}




{{<matomeQuote body="そうだよ、でも秒間何千回もの書き込みでベンチマークしてみると、SQLiteは全然大丈夫だってわかるはず。秒間何万回とか何十万回とかになると問題が出てくるかもしれないけど、適切なハードウェアならそれでも大丈夫な場合もあるよ。" userName="simonw" createdAt="2025/05/21 00:33:56" color="#ff33a1">}}




{{<matomeQuote body="これについては2022年に書いた記事があるよ、今でも通用する内容だよ：https://www.golang.dk/articles/benchmarking-sqlite-performan..." userName="markusw" createdAt="2025/05/21 17:37:31" color="#ff33a1">}}




{{<matomeQuote body="そうだよ、でもね：https://sqlite.org/wal.html" userName="soamv" createdAt="2025/05/21 02:06:29" color="#ff5c5c">}}




{{<matomeQuote body="pipで簡単にインストールできるLivestreamみたいなものってあるの？" userName="m3sta" createdAt="2025/05/21 01:23:11" color="">}}




{{<matomeQuote body="すごく良いアイデアだね。fly.ioで小さなPostgres vmを使ったら、データ容量が少ないのにメモリ不足で失敗ループに入ってリカバリーに苦労した経験があるんだ。簡単に始められたけど、その後のリカバリーで時間を無駄にしちゃったよ。元はsqlite使ってたんだけどね。" userName="nico" createdAt="2025/05/20 21:17:39" color="">}}




{{<matomeQuote body="この投稿はFly.ioのプラットフォーム提供物とは全然関係ない話だよ。LitestreamはFly.ioとは完全に切り離されてるんだ。Benは彼がここに来る前にこれを始めたんだよ。" userName="tptacek" createdAt="2025/05/20 22:09:13" color="">}}




{{<matomeQuote body="確かに、fly.ioがLiteFS/Litestreamをユーザー向けの理想的なDBとして推してるんだから、fly.ioと関係あるって思われるのは当然だよね。他のfly.ioのサービスと比べられるのも無理ないと思うよ。" userName="sosodev" createdAt="2025/05/20 23:34:10" color="">}}




{{<matomeQuote body="いやいや、fly.ioはLiteFS/Litestreamをそんな推してないって。うちはPostgresがメインだし、昔あったLiteFS Cloudも1年以上前に終わってるよ。今はマネージドPostgresに力入れてるんだ。記事を書くのは、その人が興味あるからだよ。BenがLitestreamについて書いてるのも、基本的には自分の興味からなんだよ。" userName="tptacek" createdAt="2025/05/20 23:37:50" color="#ff5733">}}




{{<matomeQuote body="LiteFSもLitestreamも（当たり前だけど）終了してないよ。どっちもオープンソースのプロジェクトで、fly.ioに頼らなくても動くように慎重に設計されてるんだ。" userName="tptacek" createdAt="2025/05/20 23:56:38" color="#785bff">}}




{{<matomeQuote body="Supabaseとの連携はどうなったの？これも立ち消えになったみたいだね。" userName="mixmastamyk" createdAt="2025/05/21 15:12:41" color="">}}




{{<matomeQuote body="マネージドPostgresをまだ提供してないのが変だなって思うんだよね。RenderとかHerokuはやってるのに、fly.ioはGPUとかLitestreamに注力してるみたいだね。スタートアップでPaaSを選んだ時、Postgresが必要だったからfly.ioは検討もできなくて、Renderにしたんだ。" userName="yellow_lead" createdAt="2025/05/20 21:50:12" color="#38d3d3">}}




{{<matomeQuote body="マネージドPostgresは、すごくゆっくりだけど展開してるところだよ。" userName="tptacek" createdAt="2025/05/20 22:08:37" color="#785bff">}}




{{<matomeQuote body="あれ、ベータ中だと思うよ。マネージドRedisもあったら良かったんだけどね。PostgresはNeon (neon.tech) を使うことにして、今のところすごく満足してる。セットアップも立ち上げもすごく簡単だし、Webインターフェースからデータを簡単に見れるのも気に入ってるよ。" userName="nico" createdAt="2025/05/20 22:01:59" color="#ff5c5c">}}




{{<matomeQuote body="fly.ioのマネージドPostgresのドキュメントだよ。" userName="biorach" createdAt="2025/05/20 21:59:30" color="#45d325">}}




{{<matomeQuote body="Railway 使ってみなよ．こいつらマジ最高．値段も手頃だし，開発者のUXもめちゃ良いよ．" userName="sergiotapia" createdAt="2025/05/20 22:44:57" color="#45d325">}}




{{<matomeQuote body="それってsupabaseの代替になるの？" userName="internet_points" createdAt="2025/05/21 08:44:50" color="">}}




{{<matomeQuote body="renderとかRailwayとかnorthflankとかflyみたいなやつだよ．新しい世代のPaaSの一部かな．" userName="sergiotapia" createdAt="2025/05/21 14:50:14" color="">}}




{{<matomeQuote body="月29ドル払ってみるのも手だよ．メールサポートはめちゃくちゃ良いと思ったね．" userName="apitman" createdAt="2025/05/21 02:22:17" color="">}}




{{<matomeQuote body="それが，彼らのPostgresインスタンスを使わない理由の一つなんだ．その代わりに専用のデータベースサービスを使ってるよ．でも，バックエンドアプリのデプロイにはかなり良いと思う．" userName="norman784" createdAt="2025/05/21 10:48:43" color="#38d3d3">}}




{{<matomeQuote body="ちょっと注意ね，”Litestreamは完全にオープンソースだよ”って呼びかけの中のリンクが間違ってるよ．https://http//litestream.io/ に飛んじゃう．" userName="gavinray" createdAt="2025/05/20 20:19:32" color="#785bff">}}




{{<matomeQuote body="かなり新しいものにしては，もう選択肢が多すぎる気がするな．一つの名前で戦略を決めて，良いデフォルトといくつか設定オプションだけにしてほしいな．" userName="mixmastamyk" createdAt="2025/05/20 21:37:44" color="">}}




{{<matomeQuote body="それ，もしかしたら構造かCSSの問題だと思うな．デスクトップだと記事の左側にあるんだけど（ウィンドウを縮小したら確かに記事の下に来たよ）．" userName="vhodges" createdAt="2025/05/20 20:45:31" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
