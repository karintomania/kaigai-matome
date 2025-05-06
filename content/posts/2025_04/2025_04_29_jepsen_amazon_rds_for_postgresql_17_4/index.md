+++
date = '2025-04-29T00:00:00'
months = '2025/04'
draft = false
title = 'JepsenがAmazon RDS for PostgreSQL 17.4を検証！あの整合性に問題発覚か？'
tags = ["Jepsen", "Amazon RDS", "PostgreSQL", "データベース", "整合性"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> JepsenがAmazon RDS for PostgreSQL 17.4を検証！あの整合性に問題発覚か？

引用元：[https://news.ycombinator.com/item?id=43833195](https://news.ycombinator.com/item?id=43833195)




{{<matomeQuote body="ソフトウエアの文章は、Jepsenみたいに直接的で要点だけ、飾り気なく書くのが理想だよ。「Amazon RDS for PostgreSQLのSnapshot Isolation違反を指摘」みたいなね。昔はmemeを使ったブログも好きだったけど、他のSTEM分野みたいにシンプルで分かりやすい書き方が恋しいんだ。" userName="hliyan" createdAt="2025/04/30 08:45:27" color="#ff5c5c">}}




{{<matomeQuote body="昔いた会社の社内ブログで技術記事書いたら、普通はあんま反応なかったんだけど、meme入れたらみんな超気に入ってくれた経験があるんだ。Kubecostの話とか、PythonからCを呼ぶ話とか、内容は結構技術的だったんだけどね。やっぱmemeとか視覚的なもの入れると、普段関係ない人でも興味持ってくれるみたい。正直このトレンドは好きじゃないけど、広い読者に届けるには仕方ないのかな。Jepsenはそうじゃなくて、あの厳密なアプローチと飾り気ない文章はすごいと思う。" userName="sgarland" createdAt="2025/04/30 13:48:40" color="#45d325">}}




{{<matomeQuote body="面白いね、だって俺、Jepsenの初期の頃覚えてるけど、memeにめっちゃ頼ってたもん（名前自体「call me maybe」とかcarly rae jepsenから来てるし）し、aphyrも彼のカラフルな実生活のパーソナリティを隠そうとしなかった（今もだけど）よ :-) 例えば、https://aphyr.com/posts/282-call-me-maybe-postgres なんか見てみて、めっちゃmeme使ってるから。" userName="jbaiter" createdAt="2025/04/30 15:59:46" color="#ff5c5c">}}




{{<matomeQuote body="俺のお気に入りは”UUIDs as Primary Keys”（小見出し：”Just Say No”）かな．:) memeだらけって感じじゃないけど、素晴らしいイラストがあるんだ！ 例えば、UUID v4のidbファイルのデータ断片化のこの可視化とか：https://cdn.zappy.app/b1b54bb0c780c0f6dd891475589aeee3.png" userName="0xCA1EB" createdAt="2025/05/04 00:12:16" color="#ff5c5c">}}




{{<matomeQuote body="memeが効果的な理由は多分二つあると思うよ．一つは、memeが難しい技術の分かりやすい比喩になっていた場合、比喩が重要だったってこと。<br>二つ目は、視覚化だよ．文章は視覚的にすればするほど良いし、グラフやイラストを使ってコンセプトを見せることが一番大事だね．" userName="Mawr" createdAt="2025/04/30 22:40:35" color="#785bff">}}




{{<matomeQuote body="俺はもうmemeだらけのブログ記事を読みたい気分じゃないんだ．特に，たった一段落の内容を無理やり引き延ばしてるだけのことが多すぎるからね．最近はセキュリティ脆弱性関連の記事が多分一番ひどいよ．" userName="Twirrim" createdAt="2025/04/30 13:30:15" color="">}}




{{<matomeQuote body="ちょうど，昔のJepsenがどれだけ恋しいか考えてたんだ．あの飾り気なく直接的な感じは同じだけど，memeがいっぱいだった頃のね．例えば，昔のredisの記事 https://aphyr.com/posts/283-call-me-maybe-redis を見てみてよ．" userName="cwmma" createdAt="2025/04/30 18:09:50" color="#785bff">}}




{{<matomeQuote body="Jepsenは最高だよ，いろんな意味でね！" userName="augustl" createdAt="2025/04/30 09:35:36" color="">}}




{{<matomeQuote body="isolation levels，ってことね！" userName="fuy" createdAt="2025/04/30 16:18:49" color="">}}




{{<matomeQuote body="Amazonは技術文書に関する健全な文化があることで知られてるけど，俺もそれに賛同できるよ．このコメントは俺個人の考えであって，会社のもんじゃないからね．それについて考察してる公開記事がこれだよ．https://quartr.com/insights/business-philosophy/amazon-s-wri..." userName="n8m8" createdAt="2025/04/30 18:31:19" color="">}}




{{<matomeQuote body="これ、ヘッドラインにも記事にもあんまり明確に書かれてないんだけど、これってMulti-AZ clustersっていう、RDSの新しめの機能の話なんだよね。<br>みんながよく知ってるMulti-AZ instancesとは違うんだ。（分かりにくいね）<br>Multi-AZ instancesってのはRDSの昔からの機能で、プライマリDBが別のAZにあるセカンダリDBに同期的にレプリケーションされるんだ。プライマリが落ちたらRDSがセカンダリにフェールオーバーする。<br>Multi-AZ clustersはセカンダリが2つあって、トランザクションは少なくともどっちか片方に同期的にレプリケーションされる。これだとセカンダリが壊れたり性能落ちたりしても、Multi-AZ instancesより頑丈。<br>セカンダリへの読み込みアクセスもできるんだ。<br>Multi-AZ clustersはきっと内部にもっと”魔法”があるんだろうね、だって僕が知る限りVanilla Postgresの機能じゃないから。<br>たぶんこれがJepsenテストで落ちちゃった理由だと思うな。" userName="luhn" createdAt="2025/04/30 02:38:04" color="#785bff">}}




{{<matomeQuote body="なんでこんな魔法が必要なのか面白いね。Vanilla Postgresだってquorum commitでこれできるのに。Patroniでも同じMulti-AZ clusterみたいな構成組めるし、（バグは別として）トランザクションを失ったり、永続化されてないトランザクションを見えちゃったりしないように、必要な連携をやってくれるはずだよ。<br>ただ、Postgresにも似たようなパターンを可能にしちゃう欠点はまだある。<br>クライアントがコミット途中で落ちちゃった非レプリケートトランザクションは、すぐに見えちゃうんだ。<br>だから例の場合、T1がパーティションされたリーダーで起きて、コミット中に切断されて、T2もパーティションされたノードで起きて、T3とT4が後で新しいリーダーで起きたら、同じ結果になるはず。<br>でも、これは今回のテストでフォルトインジェクションしてないって話と合わないな。<br>追記：このパターンがレプリカとプライマリでのコミット順序の不整合で説明できるって投稿に気づいてなかった。<br>その修正方法について講演したことあるのに、ちょっと恥ずかしいね。" userName="ants_a" createdAt="2025/04/30 12:35:24" color="#785bff">}}




{{<matomeQuote body="https://www.youtube.com/watch?v=vz-dhwSpjOw" userName="ants_a" createdAt="2025/04/30 20:24:11" color="">}}




{{<matomeQuote body="質問です<br>もしMulti-AZ instancesの中でスナップショット違反が起きてるなら、シングルリージョンで複数リードレプリカみたいな構成でも起きうるのかな？<br>でもMulti-AZ構成の方がラグが大きいから気づきやすいだけ？" userName="ashu1461" createdAt="2025/04/30 03:01:32" color="">}}




{{<matomeQuote body="WAL shippingを使った同期レプリカはPostgresの枯れた機能だよ。RDSの裏側でもそれ使ってると思うし、それで整合性バグがあるとしたらすごく驚くね。<br>AWSが”Semi synchronous”って呼んでる2つのレプリカ構成は、僕が知る限りベースのPostgresにはない。<br>AWSは何か独自のレプリケーション戦略を使ってるはずで、それは同期レプリケーションとは違うバグがあるだろうし、あんまり実戦で鍛えられてないだろうね。<br>でもAWS以外誰もRDSの実装詳細を知らないから、これは全部根拠のない推測で、あんまり意味ないんだけどね。" userName="luhn" createdAt="2025/04/30 04:53:00" color="#ff5733">}}




{{<matomeQuote body="この手のレプリケーション、Vanilla Postgresでsynchronous_standby_namesにANY 3 (s1, s2, s3, s4)みたいに設定すればできるんじゃないの？<br>ドキュメントはこれ。<br>https://www.postgresql.org/docs/current/runtime-config-repli..." userName="wb14123" createdAt="2025/04/30 08:40:58" color="#ff5733">}}




{{<matomeQuote body="ANYの設定じゃ無理だと思うよ。<br>せいぜい一部のレプリカが他のより古くなるだけ。<br>でもレプリカAがtx1は書いたけどtx2は書いてない、レプリカBがtx2は書いたけどtx1は書いてない、みたいな2つの矛盾する状態を返すことはないはず。<br>Long ForkとかParallel Snapshotってのはそういう話でしょ。<br>だからAmazon Multi-clusterは変更を順番ぐちゃぐちゃにしてレプリケートしてるってことなのかな？" userName="ctapobep" createdAt="2025/04/30 11:32:27" color="#38d3d3">}}




{{<matomeQuote body="まあ、そういう感じ。<br>これって「ただ」PostgreSQLの振る舞いが原因なんじゃないかと思うんだ。<br>レプリカではトランザクションコミットの見える順番はWALレコードの順番で決まる。<br>プライマリでは、トランザクションを書いたバックエンドが、そのトランザクションが十分に永続化されたって気づいた時 based on で決まる。<br>このスレッドの別のコメントも見てみて。<br>https://news.ycombinator.com/item?id=43843790" userName="mattashii" createdAt="2025/04/30 11:47:33" color="#785bff">}}




{{<matomeQuote body="これ、大事な補足だよね。RDS（Auroraじゃない）には昔からsingle-AZとmulti-AZがあって、本番はmulti-AZってのが常識だったんだけど、今はmulti-AZインスタンスとmulti-AZクラスターがあるから言葉が曖昧になっちゃったんだよね。multi-AZインスタンスでも、AWS的にはクラスターじゃなくても実質2つのノードがまとまってるんだよ。" userName="evil-olive" createdAt="2025/04/30 18:18:35" color="#ff33a1">}}




{{<matomeQuote body="いい調査だね！今の開発者はトランザクションのこと全然知らない人が多いし、ましてIsolation levelなんて絶対知らないね。シニアでもDBトランザクションのこと clueless なCRUD開発者とかいるし。でもトランザクションって性能やエラー回避にすごく大事なんだよ。俺の経験だと、SQL ServerでIsolation levelを変えたらロック競合が劇的に減ってユーザー大喜びだったけど、教えるまで誰もIsolation levelなんて知らなかったよ。" userName="havkom" createdAt="2025/04/30 10:04:00" color="#38d3d3">}}




{{<matomeQuote body="これ、シニア開発者だけじゃないよ。Isolation level全然知らないシステムアーキテクトとか、ACIDとCAPのConsistencyを混同してる人にだって会ったことあるし。小売業でレースコンディションだらけなのにIsolation levelが使われてなくて悲しいよ。スタートアップはひどいけど、BigCoのOracleとかMSSQL開発者は基本ができてるって意味で評価高いね。" userName="shivasaxena" createdAt="2025/04/30 20:33:04" color="#45d325">}}




{{<matomeQuote body="25年以上働いてるけど、Isolation levelが面接で出たのって1回だけしか覚えてないな。問題にならないと誰も気にしないんだよね。" userName="icedchai" createdAt="2025/04/30 21:46:04" color="">}}




{{<matomeQuote body="俺たち全然違うキャリアだったみたいだね。同じ年数なのに180度逆だよ。俺の面接ではIsolation levelは毎回必ず聞かれたし、知らないと落ちるくらいコアな質問だったな、例外なく。" userName="bdangubic" createdAt="2025/04/30 21:48:31" color="">}}




{{<matomeQuote body="そうかもね。俺のキャリアはスタートアップとか小さい会社が多かったんだけど、そういうとこってDBの基本がひどく欠けてたんだよ。" userName="icedchai" createdAt="2025/04/30 22:40:42" color="">}}




{{<matomeQuote body="関わったことある”エンタープライズ”なHR製品で、全データが数百列ある単一のMS SQL Serverテーブルに入ってたの知ってる？<br>基本スプレッドシートをDBにしたみたいなやつで、10年以上前の話だけど、衝撃だったね。" userName="selcuka" createdAt="2025/04/30 23:55:02" color="">}}




{{<matomeQuote body="20年くらい前、スタートアップで自分のORM作ってる奴がいたんだけど、謎だったな。<br>プリペアドステートメント使わず、バグだらけのカスタムエスケープで、本番でSQL injectionしょっちゅう起きてたよ。" userName="icedchai" createdAt="2025/05/01 14:22:15" color="">}}




{{<matomeQuote body="トランザクション意識のなさって、サーバーレスとかEdgeの文脈で特に感じるね。<br>バックエンドがクライアントの要求だけで決まっちゃうみたいなとこで、DBクエリがReact Hooksみたいにモデル化されてるのとか見たことあるけど、俺の経験上、ひどい結果になったよ。" userName="ljm" createdAt="2025/04/30 10:18:11" color="#ff33a1">}}




{{<matomeQuote body="たぶん、そのうちほとんどのエンジニアはLLMが出したクソコードを写すだけで、実際何が起きてるか全然分からなくなるだろうね（ShopifyとかだとMSが3分の1はLLMで書いてるって自慢してるらしいし）。<br>そうなると新しいエンジニアも育たないよ。だってエンジニアの仕事なくなるなら、学ぶ意味なくない？" userName="jacobsenscott" createdAt="2025/04/30 19:28:40" color="">}}




{{<matomeQuote body="これってまさにLLMの二面性だと思うんだ。色々なDBトランザクションモデルについて説明を求めたら、仕組みとかどれを選べばいいかとか、どう適用するかとか完璧に教えてくれる。でもLLMが作るコードには、トランザクションで直せるバグも結構含まれてるだろうね。" userName="whazor" createdAt="2025/04/30 21:48:37" color="">}}




{{<matomeQuote body="それってLLMがちょっと良い検索エンジンみたいなものだからだよ。Postgresのドキュメント見れば幻覚見ずに分かることだし。でもそのコンテキストで正しいコードを作れないって点は君の言う通りだね。" userName="jacobsenscott" createdAt="2025/05/01 12:25:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="若手におすすめの勉強法はもう10年変わらないよ。週末にSQL DBの入門書を読んで、次の週末は今仕事で使ってるDBの本を読むんだ。そうすればプロジェクトのDBエキスパートになれる可能性高いよ。" userName="baq" createdAt="2025/04/30 17:18:42" color="">}}




{{<matomeQuote body="数年前に似た状況あったよ。Read CommittedからRead Committed Snapshotに変えたら、今や億稼ぐプロダクトのパフォーマンスが劇的に改善したんだ。<br>でもこれやる時に注意なのが、blocking readに頼ってるコード（例えばselect with existsとか）は全部ダメになること。明示的なロックとかで書き直す必要があるね。" userName="fuy" createdAt="2025/04/30 16:22:57" color="#785bff">}}




{{<matomeQuote body="DBトランザクションを知らないのにこの業界で稼いでる奴らがいるって衝撃は置いといて… 俺の推測だけど… 多分ウェブスケールなMongoDBとか使ってたんじゃない？" userName="belter" createdAt="2025/05/01 09:23:16" color="">}}




{{<matomeQuote body="へえ、面白いね。前の会社でバックアップスクリプトのpg_dumpコマンドを並列（-jフラグ）使うように変えたら、リストア時にたまーに不整合（duplicate keyエラーとかfk constraintエラー）らしきエラーが出るようになったんだ。当時AWSにもPostgresのメーリングリストにも報告しようとしたけど、再現できなくてどこにも辿り着けなかった。結局シングルスレッドに戻したよ。今回の問題と関係あるのかな？" userName="cswilliams" createdAt="2025/04/30 00:50:33" color="#ff5733">}}




{{<matomeQuote body="テスト環境は単一インスタンスだったの？ それとも別のAZにスタンバイがある構成？ それともここでテストされたみたいなmulti-azクラスター？" userName="belter" createdAt="2025/04/30 01:10:42" color="">}}




{{<matomeQuote body="スタンバイインスタンス（”replica”ってRDS用語で言うとね）でpg_dump動かした時にそれを見たんだ。プライマリはmulti-azインスタンスだったよ。だからここでテストされたのとは正確には違うだろうけど、RDSがPostgresに裏側でどんな変更加えてるのか気になるね。" userName="cswilliams" createdAt="2025/04/30 03:03:33" color="#45d325">}}




{{<matomeQuote body="これ読んだ感じだと、write直後にreadすると古いデータが見えるってことかな。multi AZなRDSインスタンスで、write完了前に全層に更新が行き渡らないから、すぐ読むとデータが見えなかったり古い値だったりするのかも。PostgreSQLのsnapshottingからして変な値は見えなさそう。最終的に整合するレースコンディションみたいだね。それともlong forkのトランザクションは完了しないって読んだ？" userName="ezekiel68" createdAt="2025/04/29 21:41:55" color="#45d325">}}




{{<matomeQuote body="これは単に古いデータって話じゃないと思うな。「最近のトランザクションを反映しない、ある時点の整合スナップショット」って意味のstale dataとは違う。ここで起きてるのは、セカンダリへのread-onlyトランザクションが、あるトランザクションTは見れるのに、Tより論理的に前に終わってるはずのトランザクションを見逃す可能性があるってことだと思う。" userName="aphyr" createdAt="2025/04/29 22:13:03" color="#38d3d3">}}




{{<matomeQuote body="Jepsenの記事で言ってる「レプリカへの読み取り専用トランザクションは，ある処理を見たのに，それより前に起きたはずの別の処理を見逃すかも」ってとこ，直感的に気になってたけど，記事の例（処理1， 2， 3， 4）がどうしてそうなるのかよく分かんないんだ．例では処理2だけが読み取り専用で，レプリカから読むってこと？つまり，処理1， 3， 4はプライマリ，処理2だけがレプリカってこと？" userName="mikesun" createdAt="2025/04/29 23:38:03" color="#45d325">}}




{{<matomeQuote body="うん，その通りだよ．プライマリとレプリカの間で，処理の見え方が順番通りにならないことがあるってことだね．" userName="aphyr" createdAt="2025/04/29 23:48:33" color="">}}




{{<matomeQuote body="WALは一つのスレッドで動いてて，それぞれの場所では特定時点での整合性は保たれるんだ．でも，二つの場所の間ではズレる可能性がある．<br>RDS Multi-AZ clusterはShared buffersにちゃんと反映されるまで待たないで，WALの同期だけ待つから，これは普通にありえる動きだよ．<br>PostgreSQLでsynchronous_commitをonにした時と同じ感じ．別に驚くことじゃないね．" userName="franckpachot" createdAt="2025/04/30 13:26:30" color="#ff5c5c">}}




{{<matomeQuote body="あー，なるほどね…．もしプライマリで処理3が処理1より先に終わったのに，レプリカを読む処理2は処理1だけを見る，みたいなことが起きるのは，レプリカ側では処理1が処理3より先に終わったみたいに見えることがあるから，ってこと？" userName="mikesun" createdAt="2025/04/30 01:13:50" color="#38d3d3">}}




{{<matomeQuote body="どんなことが起きるか分かりやすい例を出すね．例えば，gps_coordinateが更新されたらpostal_codeを更新，次にcityを更新って順番で進むはずのデータがあるとする．<br>通常なら，データは「何も変わってない」→「gpsだけ更新」→「gpsとpostal更新」→「全部更新」の順でしか見れないはずだよね．<br>でも，Jepsenが見つけたみたいに，処理の順番がズレることがあると，「postalだけ更新されて他は前と同じ」とか「cityだけ更新されて他は前と同じ」みたいな，「ありえない」状態が見えちゃうことがあるってこと．<br>本来の更新順序を無視した，中途半端な適用状態を見ることがありえるって話だよ．" userName="kevincox" createdAt="2025/04/30 12:31:48" color="#45d325">}}




{{<matomeQuote body="Jepsenが報酬なしで独自にやったってのは，RDBMSの関係者からしたら，最高の日でも聞きたくない知らせだよね．社内では心配するメールが飛び交っただろうな〜って想像できるよ．<br>aphylにはいつものことながら，脱帽だね．" userName="baq" createdAt="2025/04/30 07:40:58" color="">}}




{{<matomeQuote body="エンジニアと，その担当のRDSディレクターの間にいる，3段階くらいの中間管理職の人たちのことかな．" userName="bobnamob" createdAt="2025/04/30 08:26:33" color="">}}




{{<matomeQuote body="ステークホルダーっていうのは，システムに関係あるビジネス上の人全部のことだよ－お客さんとか，エンジニアとか，マネージャーとかね．<br>RDBMSはこれ→（リンク省略）" userName="baq" createdAt="2025/04/30 08:41:52" color="">}}




{{<matomeQuote body="報告を受ける側は，むしろ喜んだ方がいいと思うな．<br>Jepsenの検証で無傷で済んだとこなんて今までないけど，Aphyrにやられたってことは，真剣に向き合ってもらってるってことだからね．" userName="fulafel" createdAt="2025/05/01 05:43:00" color="">}}




{{<matomeQuote body="これって、upstreamのマルチインスタンスPostgresクラスターでは問題じゃないってことで合ってる？AWSがクラスター構成でなんかしてるか、この挙動を引き起こすパッチ当てたって理解でOK？" userName="nijave" createdAt="2025/04/29 21:25:01" color="#38d3d3">}}




{{<matomeQuote body="いい質問だね！AWSのレプリケーションアーキテクチャを標準のPostgresで再現できるほどはまだ理解してないんだ。この挙動はシングルノードのPostgresでは起きないみたいだけど、一部のレプリケーション設定だと起きるかもね！<br>Postgresのレプリケーションって色んなやり方があって、結果も色々だってことは分かってるよ。例えば、PatroniについてのBin Wangさんのレポートはこれだよ：[リンク]" userName="aphyr" createdAt="2025/04/29 23:43:53" color="#38d3d3">}}




{{<matomeQuote body="シングルインスタンスでは問題ないけど、マルチインスタンス（プライマリ＋レプリカ）で影響するんだ。プライマリとレプリカ間でスナップショットの挙動に一貫性がないのが原因だよ。セカンダリはWALのコミット順で可視性を判断するけど、プライマリはコミット完了を知ったタイミングで決まるんだ。<br>それぞれのノード内では一貫してるけど、プライマリとセカンダリ間では順序が違うことがある。この問題への対応は進んでるけど、まだWIPだよ。" userName="mattashii" createdAt="2025/04/30 11:39:23" color="#45d325">}}




{{<matomeQuote body="matashiiさんありがとう——これで絶対に説明がつくね。この異常はプライマリとセカンダリ間のコミット/可視性の順序の違いが原因だって、別のメールでも示唆されてたんだ。<br>これについてどこかに記述があるかな？リンクできるやつ。<br>[リンク]が関係ありそうに見えるけど、確信はないんだ。もしそうなら、レポートを更新したいな。<br>私のメールは[メールアドレス]だよ、もしよかったら連絡してね。 :-)" userName="aphyr" createdAt="2025/04/30 13:29:06" color="#38d3d3">}}




{{<matomeQuote body="あのスレッドは同じ問題だよ。原因は、プライマリとセカンダリでトランザクションの可視性順序が違うこと。プライマリはWAL挿入と可視化マークの順が違う可能性があり、セカンダリはWAL順で判断するんだ。これを直すにはプライマリもWAL順にすればいいけど、トランザクションごとの耐久性設定がそれを難しくしてるんだ。WAL順にすると非同期トランザクションは待つか、read-your-writesを諦める必要がある。これが議論が止まってる理由だよ。<br>個人的にはread-your-writesを諦める方がいいと思ってる。" userName="ants_a" createdAt="2025/04/30 20:14:56" color="#38d3d3">}}




{{<matomeQuote body="二人ともありがとう！<br>この記事を更新して、これについて議論したよ。AWSのブログにもアップデートがあるんだ。<br>:-) [リンク]" userName="aphyr" createdAt="2025/05/03 15:11:04" color="#ff5c5c">}}




{{<matomeQuote body="あなたにとってのマルチインスタンスのupstream Postgresクラスターって何？Postgresにはマスターフェイルオーバーの公式サポートはないよ。レプリケーションを使って自分でツール（Patroniとか）を作るんだ。<br>AWSはPostgresにパッチを当てて、2つのインスタンスにレプリケートさせて、片方が承認すればOKとしてるみたい。<br>個人的にはファイルシステムレベルのレプリケーション（drbdみたいに）がPostgresには良いと思う。これは昔のAWS Multi-AZがやってたやつ。でもスループットは低いし、セカンダリから読めないんだ。" userName="aeyes" createdAt="2025/04/30 03:26:13" color="#ff33a1">}}




{{<matomeQuote body="＞個人的な意見では、ファイルシステムレベルのレプリケーション（drbdみたいなのを想像してみて）の方がPostgreSQLには良いアプローチだと思うな<br>それは基本的には、彼らのAuroraバリアントがやってることだよ。<br>クラスター化された共有ストレージを使って、従来のレプリケーションはキャッシュを無効にするためだけに使ってるんだ（それでレプリカは、共有ストレージ上のメモリとかキャッシュに読み込まれたデータがいつ変わったかを知れるんだ）。" userName="nijave" createdAt="2025/04/30 10:50:01" color="#38d3d3">}}




{{<matomeQuote body="うん、違うよ。<br>これは彼らが何をしたかの、もっと詳しい概要だよ：[YouTubeリンク]<br>特にここを見て：[YouTubeリンク]" userName="belter" createdAt="2025/04/29 22:15:33" color="#45d325">}}




{{<matomeQuote body="投稿されたタイトルは本題を隠してるね。<br>RDS for PostgreSQL 17.4はスナップショット分離を適切に実装してない、ってことだよ。" userName="tibbar" createdAt="2025/04/29 21:03:30" color="#45d325">}}




{{<matomeQuote body="HNではJepsenレポートのタイトルで揉めがちだから背景を説明するね。レポートはクライアントとの長い協力の成果で、タイトル決めは「厳しすぎる？」「一番大事な点？」など激論になることも。色んな試行錯誤の結果、僕は全てのレポートを「Jepsen: ＜system＞ ＜version＞」と命名することにしたんだ。HNでは好きなようにリンクテキストを選んでいいよ :-)" userName="aphyr" createdAt="2025/04/29 23:27:06" color="#785bff">}}




{{<matomeQuote body="作者と投稿者（それにコメントしてる人！）が全部同じ人なんだから、あなたの選択（タイトル）でいいと思うよ :)<br>HNでスレッドが上位にあること、GP（一つ上のコメント）がスレッドで上位にあること、それにみんながJepsenレポートがいかに面白いかを知ってるって事実だけで、伝えたいことは十分に伝わるはずだよ。" userName="dang" createdAt="2025/04/29 23:29:07" color="">}}




{{<matomeQuote body="君のコメントもね。Multi-AZ clustersの話だけど、これはトランザクション保証の神様Kyle Kingsburyからの指摘だからAWSは無視できないはずだよ。これはPostgresのRDSの選択肢の一つで、特にスタンバイ2つの場合に言えることだ。［1］<br>AWSの分厚いRDSマニュアルには、Multi-AZ clustersのisolationやグローバルな読み取り一貫性についてほとんど記述がないんだ。ライターはスタンバイ1つを待つけど、リーダーは別のスナップショットを見ちゃうのかな？［1］［2］" userName="belter" createdAt="2025/04/29 21:51:41" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞彼らのドキュメントにはそんな保証はない<br>まあ、ユーザーとしては、そこにちゃんと書いてほしいな。Snapshot Isolationが機能として文書化されてる素のPostgresから、Multi-AZのRDSに移行するなら、両者がどう違うか知りたいだろうし。" userName="n2d4" createdAt="2025/04/29 22:43:40" color="">}}




{{<matomeQuote body="モデレーターにメールして、リンク先の記事からコピペしたこのフレーズにタイトルを変えてって頼んだんだよ：<br>＞Amazon RDS for PostgreSQL multi-AZ clusters violate Snapshot Isolation" userName="altairprime" createdAt="2025/04/29 22:40:00" color="">}}




{{<matomeQuote body="開発者がSnapshot Isolationを前提にしてるのに、Amazon RDS for PostgreSQLが実際にはParallel Snapshot Isolationしか提供してない場合、特にRead Replicaエンドポイントを使うmulti-AZ構成で、どんな安全性やアプリレベルのバグが起こり得るのかな？" userName="badmonster" createdAt="2025/04/30 02:48:08" color="">}}




{{<matomeQuote body="「git push」みたいな例で言うと、トランザクションで読んでから書き込む流れで、不整合な状態のコミットハッシュができちゃうことがあるんだ。<br>こういうことを理解するのが難しいから、問題回避も難しいんだよね。だから、たぶん一番簡単な対策は「writerエンドポイントだけを使うこと」になりそう。<br>でも、特に可用性が失われる状況でその方法がテストされてないのは意外だったな。" userName="Elucalidavah" createdAt="2025/04/30 06:38:40" color="#ff33a1">}}




{{<matomeQuote body="ちょっと考えてみてよ。記事にコメントしたとするじゃん。最初にコメントした人は”初コメバッジ”をもらえるとするね。<br>今、User1がコメントして、次にUser2がコメントしたとしよう。<br>User1は（別のトランザクションで）コメントが1個しかないことを確認して、バッジをもらう。<br>User2も同じように確認して（別のトランザクションで）、やっぱりコメントが自分のが1個だけだって見て、バッジをもらっちゃうんだ。<br>Snapshot isolationならこれはありえない。別のトランザクションでのチェックの少なくともどちらか一方は、コメントが2個あるって見るはずだからね。<br>記事にあるParallel Snapshotについての原文は読む価値ありだよ。https://scispace.com/pdf/transactional-storage-for-geo-repli..." userName="ctapobep" createdAt="2025/04/30 11:40:14" color="#45d325">}}




{{<matomeQuote body="＞これらの現象はテストされた全てのバージョン、13．15から17．4までで発生しました<br>メジャーバージョンアップしたの失敗だったかなって心配したけど、どうやらそうじゃないみたいだね。これはリグレッションじゃなくて、単なる機能要求か長年のバグってことだね。" userName="mushufasa" createdAt="2025/04/29 21:48:54" color="">}}




{{<matomeQuote body="Amazon RDSのいろんな種類も全部Jepsenでテストされると最高だね。" userName="password4321" createdAt="2025/04/29 23:15:17" color="">}}




{{<matomeQuote body="実はこれ、僕（すごくゆっくりだけど、時々夜とか週末に！）取り組んでるんだよね。Peter Alvaroと僕は、RDS for MySQLでの安全性問題についてもここで報告したことあるよ。https://jepsen.io/analyses/mysql-8.0.34#fractured-read-like-..." userName="aphyr" createdAt="2025/04/29 23:32:40" color="">}}




{{<matomeQuote body="クラウドプロバイダーが新しいデータベースサービスを発表するたびに、Jepsenテストを依頼して、全ての課題が解決されるか少なくとも文書化されるまで改善を繰り返すような世界があればいいのにね。残念ながら、ここでは信頼性ってそんなに高い優先度じゃないみたい。引き続き頑張って！" userName="password4321" createdAt="2025/04/30 00:44:22" color="">}}




{{<matomeQuote body="AWSはこれについて説明するためにドキュメントを更新する必要があると思うな。Snapshot isolationの修正って、レイテンシとかスループットのパフォーマンスを悪化させちゃうのかな？それとも、今のままで十分強いって主張するのかな。どっちにしても、何か言わないとダメだよね。" userName="film42" createdAt="2025/04/29 22:30:15" color="#45d325">}}




{{<matomeQuote body="AWSからの理想的な解決策は、バグを直して、ドキュメントに書いてある通りの保証をちゃんと提供することだと思うよ。" userName="kevincox" createdAt="2025/04/29 22:42:14" color="">}}




{{<matomeQuote body="同意だよ。でも、これ簡単な修正じゃなさそう。同等だと思って選んだ仕組みが、実際はそうじゃなかったって感じなんじゃないかな。それを入れ替えるには、すごく時間もテストも必要になると思うよ。" userName="film42" createdAt="2025/04/29 23:22:04" color="">}}




{{<matomeQuote body="＞入れ替えるには、すごく時間もテストも必要になる<br>ラッキーなことに、正しい振る舞いを検証するための自動化されたスイートが［1］あるんだぜ！<br>1： https：／／github．com／jepsen－io／rds" userName="mdaniel" createdAt="2025/04/30 01:30:19" color="#45d325">}}




{{<matomeQuote body="パフォーマンスを壊さずにこれを簡単に直す方法はないよ。だいたい、分散システムにタダ飯はないっていうか、AWSはこの特定のセットアップで整合性の保証を緩めるトレードオフを選んで、それをあんまりちゃんと宣伝しなかったんだと思うな。" userName="slt2021" createdAt="2025/04/30 00:52:49" color="#38d3d3">}}




{{<matomeQuote body="これバグみたいだね。でも問題はドキュメントにこのシナリオでの保証について詳しく書かれてないこと。誰か書いてある場所教えてくれると嬉しいな…" userName="belter" createdAt="2025/04/30 01:09:02" color="#38d3d3">}}




{{<matomeQuote body="いや、キミのコメントの下にある引用文にはv13以降って書いてあるし、上にドキュメントに書いてないって書いてあるけど。Bugとかguaranteeって言葉で、あんまり詳しくない読者を混乱させてない？" userName="zaphirplane" createdAt="2025/04/29 23:26:49" color="">}}




{{<matomeQuote body="Microsoft SQL Serverはどうかなって思ったんだけど、ちゃんとテストリストに入ってたわ。これね。<br>https://jepsen.io/analyses" userName="RachelF" createdAt="2025/04/30 03:26:12" color="">}}




{{<matomeQuote body="Microsoft SQL Serverのライセンス違反かも？ MicrosoftはJepsenの解析にお金払ってないみたいだし（もしかして公開したくないのかな 笑）" userName="__float" createdAt="2025/04/30 04:20:18" color="">}}




{{<matomeQuote body="＞ MicrosoftはJepsenの解析にお金払ってないみたいだし（もしかして公開したくないのかな 笑）<br> もし俺がたまにテキトーな（Microsoftがそうって言ってるわけじゃなくて、あくまで例ね）データベースベンダーで、製品が99.95%のユースケースでOKで残りの修正がめちゃくちゃ大変なら、Jepsenに解析させないように金払う可能性の方が高いかも。だって、依頼して欠陥が明るみに出たら、それまで満足してた人たちまで離れちゃうかもしれないじゃん。" userName="KronisLV" createdAt="2025/04/30 06:26:42" color="">}}




{{<matomeQuote body="でも、この記事の解析は無償でやられたみたいだし、レポートや調査の価値はお金だけじゃないってことみたいだね。" userName="mdaniel" createdAt="2025/04/30 14:10:35" color="">}}




{{<matomeQuote body="僕が問題を正しく理解してるなら、たぶんAuroraは大丈夫だと思う。<br> 僕の理解だと、multi-azは複数の準同期レプリカ構成で、1つのレプリカだけトランザクションを確認すればいいんだ。<br> Auroraは準同期レプリケーションじゃなくて、共有ストレージを使ったクラスター構成で、キャッシュ無効化のために違うレプリケーション設定を使ってるからね。" userName="nijave" createdAt="2025/04/30 11:02:15" color="#785bff">}}




{{<matomeQuote body="AuroraはたぶんまだPostgreSQL 17は提供してないと思うな。" userName="VeejayRampay" createdAt="2025/04/30 07:27:04" color="">}}




{{<matomeQuote body="”彼らがテストした全てのPostgreSQLバージョン、13.15（AWSがサポートしてた一番古いバージョン）から17.4（一番新しいバージョン）までで発生した。”<br> って書いてあるから、v17でも違いはなさそうだね。" userName="phonon" createdAt="2025/04/30 10:14:34" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
