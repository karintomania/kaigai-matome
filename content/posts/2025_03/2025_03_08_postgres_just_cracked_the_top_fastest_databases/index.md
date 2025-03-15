+++
date = '2025-03-08T00:00:00'
months = '2025/03'
draft = false
title = 'Postgresが分析向けデータベースのトップに躍り出た！その理由とは？'
tags = ["Postgres", "データベース", "分析", "性能", "テクノロジー"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> Postgresが分析向けデータベースのトップに躍り出た！その理由とは？

引用元：[https://news.ycombinator.com/item?id=43270712](https://news.ycombinator.com/item?id=43270712)

{{<matomeQuote body="標準的なSQLデータベースは大規模分析には向かないよね。以前の会社でPostgresを使ったけど、データが20億件を超えると、クエリが実行できなくなるほど遅くなった。BigQueryに変えたら、リアルタイムでの集計が簡単で、コストも安かった。もうPostgresには戻れないかな。" userName="bhouston" createdAt="2025-03-08T11:33:58" color="#785bff">}}

{{<matomeQuote body="Postgresは普通のテーブルを使ったの？それともTimescaleやCitusみたいなカラムストレージ拡張を使ったの？普通のPostgresじゃ分析には向かないよね。ClickHouseもいいよね。ただ、BigQueryはデータ量が増えると高くつくと思う。" userName="atombender" createdAt="2025-03-08T12:15:23" color="">}}

{{<matomeQuote body="Google Cloud SQLで普通のPostgresテーブルを使ったよ。確かに、普通のPostgresは分析に苦労するよね。ClickHouseはどこで運用してる？サーバーレスも可能？BigQueryはコストがかかるかもしれないけど、私はあまり感じなかったな。ストレージコストはほとんどかからなかったし、クエリパターンにうまく対応できたよ。" userName="bhouston" createdAt="2025-03-08T12:23:04" color="#ff5733">}}

{{<matomeQuote body="君のコメントは記事に関係ないように感じる。Postgresのヒープテーブルに関する話じゃないし。ClickHouseを自社で運用してるけど、今始めるならClickHouse Cloudを選ぶと思う。ClickHouseの利点は、普通のクラウドストレージ（S3やGCS）にテーブルをバックアップできること。BigQueryは高くつくこともあるし、特に大量のデータ処理には気をつけて。" userName="atombender" createdAt="2025-03-08T14:00:52" color="">}}

{{<matomeQuote body="ClickHouseは調べてみるよ！たくさんのデータやクエリがあると、BigQueryよりも優れた解決策になるかも。" userName="bhouston" createdAt="2025-03-08T17:49:56" color="">}}

{{<matomeQuote body="ClickHouseはすごいよね。Postgresも良いけど、特にClickHouseは特定の用途に強い。新しいPostgresの拡張で競争力が増すかもしれないけど、ClickHouseは分析ワークロードに最適化されてるから、スケーラブルなデータ取り込みが得意なんだ。" userName="atombender" createdAt="2025-03-08T21:03:11" color="#ff5733">}}

{{<matomeQuote body="ビリオンレコードに対してBigQueryは安くないよ。ストレージコストは安くても、クエリやデータ転送で高くつく。最安のPostgresサーバーも通常のPostgresインストールに比べて高いと思う。" userName="dig1" createdAt="2025-03-08T12:18:32" color="#45d325">}}

{{<matomeQuote body="うん。個人プロジェクトでGHTorrentを使った時、各クエリが約20ドルかかった。ビジネスには問題ないかもしれないけど、個人ではかなり高い壁だよ。" userName="sgarland" createdAt="2025-03-08T15:58:21" color="">}}

{{<matomeQuote body="EDIT: そのサイトはもう存在しないみたい。プロジェクトはGitHubのメタデータを更新していたもので、こちらにアーカイブのスナップショットがあるよ。" userName="sgarland" createdAt="2025-03-08T18:02:40" color="">}}

{{<matomeQuote body="ビリオンレコードのクエリコストは一般的に1セント未満だったよ。キーとなるフィールドでクラスタリングとパーティショニングを行ったからね。" userName="bhouston" createdAt="2025-03-08T17:50:51" color="#45d325">}}

{{<matomeQuote body="このサイトがハッキングされたか、売られたかどっちかじゃないかな。どちらにしても、HNにリンクするべきじゃないと思う。" userName="chrisldgk" createdAt="2025-03-08T17:51:51" color="">}}

{{<matomeQuote body="RDSとかは、自分でインスタンスを立てるのを除けば高すぎると思うよ。Digital Oceanはけっこう安定してると思う。" userName="renegade-otter" createdAt="2025-03-08T13:18:30" color="">}}

{{<matomeQuote body="DOの価格がかなり上がってて驚いた。もう$5のVMが始められないかもしれない。確認した方がいいよ。" userName="eastbound" createdAt="2025-03-08T14:21:04" color="">}}

{{<matomeQuote body="できるけど、対応してる地域にいないとダメみたい。一般的に世界中で一番安いVMは月$6だよ。" userName="jmholla" createdAt="2025-03-08T17:46:19" color="">}}

{{<matomeQuote body="”通常のPostgresインストール”ってどういう意味？" userName="michaelmior" createdAt="2025-03-08T12:59:50" color="">}}

{{<matomeQuote body="＞2Bのユーザーイベントのレコードがあって、500Mを超えたらリアルタイムでクエリするのがほぼ不可能になった。これは解決済みの問題なのに、向こうの技術者はそのスキルがなかったみたい。インデックスだけじゃ解決できないから、複合インデックスとかパーティショニング、シャーディング、キャッシングを使うべきだよ。" userName="rapfaria" createdAt="2025-03-08T12:01:02" color="#ff5733">}}

{{<matomeQuote body="＞この問題は解決済みで、向こうの技術者はスキルがなかったみたい。簡単な解決策が好みだけど、BigQueryを使えば安くて済むし、ジュニア開発者でもできるよ。Kubernetesが嫌いでこのブログを紹介してる。" userName="bhouston" createdAt="2025-03-08T12:10:37" color="">}}

{{<matomeQuote body="50列のテーブルに10Bレコードがあるんだけど、すべての列にインデックスがあって、クエリは1～2分かかる。突然パフォーマンスが落ちたのも困ってる。次にどう改善すればいいのか分からない。" userName="majkinetor" createdAt="2025-03-08T13:34:56" color="">}}

{{<matomeQuote body="これは興味深いワークロードだね。大きな列のテーブルの高速フィルタリングの問題を聞いたことがある。これにはカラムストアのバージョンが役立つよ。手伝えるからDMしてね。" userName="moonikakiss" createdAt="2025-03-08T16:31:20" color="">}}

{{<matomeQuote body="やっぱり多くの列でフィルターかけたいって要望はよくあるよね。pg_mooncakeで解決しようとしてるから、興味あったらmooncake-devs.slack.comに参加して使い方を話そうぜ。" userName="zhousun" createdAt="2025-03-08T16:34:12" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="インデックスはちゃんとしたDB講座で習う基本だから、博士号なくても大丈夫。でもBigTableが解決するならそれもいいかも。Postgresが人気なのはACIDのおかげなんだよね、BigTableはそれがないかも。後で問題が出るかもしれないし、出ないかもしれない。" userName="DrFalkyn" createdAt="2025-03-08T12:54:41" color="">}}

{{<matomeQuote body="ACIDは良いけど、その分コストもかかる（例えばvacuumとか）。分析する時にはACIDは気にしないよね。" userName="furstenheim" createdAt="2025-03-08T15:02:38" color="">}}

{{<matomeQuote body="Postgres大好きでよく使ってるけど、分析には使ってない。" userName="bhouston" createdAt="2025-03-08T14:39:34" color="">}}

{{<matomeQuote body="4つ以上の対策が必要ってことは、まだ解決してない問題って感じだね。" userName="Isn0gud" createdAt="2025-03-08T12:10:50" color="">}}

{{<matomeQuote body="＞>「標準」SQLって何を指してるの？OLTPかOLAPのDBを使ってたときに問題があったの？あと、BigQueryはなぜ「標準SQL」DBでないの？GoogleSQL使ってるけど、多くのDBも微妙にSQLは違うから。" userName="TuringNYC" createdAt="2025-03-08T12:14:25" color="">}}

{{<matomeQuote body="＞「標準」SQLってどういう意味？Google CloudのデフォルトのPostgres Cloud SQLをそのまま使ってる。>BigQueryが「標準SQLデータベース」でない理由は何？GoogleSQL使ってるけど、たくさんのDBには微妙なSQLのバリエーションがある。BigQueryはトランザクションやロールバック、外部キー制約、インデックス、ストアドプロシージャなどがないから、SQLの便宜上だけの非SQLデータベースだと思ってる。" userName="bhouston" createdAt="2025-03-08T12:27:27" color="#ff33a1">}}

{{<matomeQuote body="関係データベースのことを言いたいんじゃない？" userName="gbin" createdAt="2025-03-08T12:42:52" color="">}}

{{<matomeQuote body="挙げられた全ての機能はSQLの一部だよ。" userName="layer8" createdAt="2025-03-08T12:58:08" color="">}}

{{<matomeQuote body="SQL（DML）はただのクエリ言語で、どんなものにも実装できる。SQLのDDLの一部は実装特有で、SQL標準は（現代的な基準で）小規模なシステムを前提にしているから、大規模システムでは大きく異なる。そのため、「標準」を作るのは現実的ではないし、実装を理解しなければならない。" userName="jandrewrogers" createdAt="2025-03-08T14:13:38" color="#ff33a1">}}

{{<matomeQuote body="SQLはリレーショナルデータベースとやりとりするための言語ってことだよね。言語の問題じゃないよ。" userName="nom" createdAt="2025-03-08T13:21:26" color="">}}

{{<matomeQuote body="その人の言ってる標準って、デフォルトの状態を指すんだろうね。" userName="braiamp" createdAt="2025-03-08T12:25:21" color="">}}

{{<matomeQuote body="コメントありがとね。でも用語を混同してるっぽいよ。mooncakeの核心はオープンなカラム形式と交換可能なベクトルエンジンの上に構築して、Postgresとネイティブに統合することなんだ。だからBigQueryに近いんだよ。特に新しいBigQueryとicebergテーブルには。その特徴は素晴らしいし、スケーリングも不可能ではないよ。" userName="zhousun" createdAt="2025-03-08T16:07:12" color="#ff5733">}}

{{<matomeQuote body="＞それは基本的にとても遅かったから手が付けられなかったよね。<br>5B行のテーブルでSnowflakeを使ったことがあるけど、インデックスがなくても、少し遅いけど一分か二分で合理的なクエリを実行できたよ。" userName="Simon_O_Rourke" createdAt="2025-03-08T13:25:12" color="">}}

{{<matomeQuote body="BigQueryの便利さが好きだった。大きなデータセットで数秒でクエリができるのは、ユーザーが解析ダッシュボードを使う時にリアルタイムでクエリができるから、設計と実装の複雑さが大幅に簡素化されるんだ。" userName="bhouston" createdAt="2025-03-08T14:57:48" color="#785bff">}}

{{<matomeQuote body="＞セッション中のユーザーイベントの約2Bレコードの急速に成長しているテーブルについて。500Mレコードを超えた時、リアルタイムでクエリするのは不可能だった。<br>リアルタイムって何を指してるのか分からないけど、20B行のテーブルでPostgresを使ってリクエストを処理できてるよ。インデックスとパーティションを少し調整すれば、だけどね。あんまりDBAじゃないけど。" userName="Galanwe" createdAt="2025-03-08T12:13:40" color="#45d325">}}

{{<matomeQuote body="OPは分析ワークロードを混ぜてるけど、Postgresは小規模でもすごく苦手だよ。ほんの少しの調整じゃどうにもならない。アーキテクチャに内在する問題なんだ。100BレコードをPostgresに入れても、トリビアルなワークロードだったら機能するけど、うまくはいかない。Postgresの内部構造はそんなに大きなデータには向いてない。" userName="jandrewrogers" createdAt="2025-03-08T14:29:39" color="#38d3d3">}}

{{<matomeQuote body="同じことがhttps://www.merklemap.com/にも言えるよ。最大のテーブルには30Bレコードが入ってて、B-treeインデックスを使ったクエリは数マイクロ秒で完了するんだ。" userName="Eikon" createdAt="2025-03-08T12:28:36" color="#38d3d3">}}

{{<matomeQuote body="インデックスを使ったポイントルックアップは分析クエリの問題じゃなくて、大きなスキャンで高いカラム選択性や述語選択性を最小限にすることなんだ。タイムスタンプやプライマリーキーに対するフィルタを最適化したら、フィルタリングされたパーティション内の全てのページに触れるクエリを実行する必要が出てくる。これらの問題はPostgresである程度解決できるけど、今度は非SIMD集計を行うためにページ内でランダムI/Oしなきゃいけなくなる。" userName="tomnipotent" createdAt="2025-03-08T15:38:50" color="#ff33a1">}}

{{<matomeQuote body="最初のコメントがコスト削減とGoogle Cloudでの実行について言っているなら、彼らは仮想マシンやHDDを使ってんのかも。あなたや親がいい速度を話してるのに対して、物理サーバーとSSDを使ってるかもしれないから。" userName="jodrellblank" createdAt="2025-03-08T12:54:14" color="">}}

{{<matomeQuote body="PeerDBとClickHouseのSaiだよ。このプロジェクトの進展を見るのは嬉しいね。いくつか気づいたことを残しておくよ。トランザクションデータの分析には、やっぱり論理レプリケーションが必要みたい。管理が難しいのが課題だけど、PeerDBはその辺の性能や管理の問題を解決するために使われてるよ。Postgresとの互換性の価値は大きいけど、カラムテーブルでのSQLの網羅性には疑問があるな。全ての機能をサポートするのは難しいし、Citusの時もそのジレンマに苦しんだ。目的に特化したデータベースを使うのがいいのか、より一般的なアプローチを取るのがいいのか迷うところだ。自分は、適材適所が大事だと思うけど、進化するPostgresコミュニティの成果にはワクワクするよ。" userName="saisrirampur" createdAt="2025-03-08T07:20:58" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Mooncake LabsのZhouだよ。PeerDBの仕事は素晴らしくて、pg_mooncakeの進化に影響を与えてるね！mooncakeの核となるアイデアは、オープンなカラムフォーマットと置き換え可能なベクトルエンジンを基に、Postgresとネイティブに統合することなんだ。小規模開発者のためには、使いやすくするためにPostgres拡張としてスタック全体を埋め込むことができるし、企業向けにはPeerDBやClickHouseに似た特化型スタックとして提供してるんだ。徐々に1から2への移行も可能にしているよ。" userName="zhousun" createdAt="2025-03-08T15:35:22" color="#38d3d3">}}

{{<matomeQuote body="ありがたい言葉ありがとう！仮に目的に特化した設計だとしても、分析データベースをトランザクションデータベースにレトロフィットするのはかなり難しいと思う。そうすると、双方のベストな部分をユーザーが得られない可能性が高い。PeerDBはPostgresとClickHouseを別々に保ってデータをきちんと移動させてるんだ。お互いの特性を生かした利用ができるよ。これからも頑張ってね！analytics拡張を作る上でのCitusでのチャレンジも参考になったよ。" userName="saisrirampur" createdAt="2025-03-08T17:22:01" color="#785bff">}}

{{<matomeQuote body="デザインの境界は確かに曖昧になってきているよね。Mooncakeの論理レプリケーションは、Postgresのヒープテーブルのカラム版を作ろうとしているんだ。これをpg_mooncakeを通じてPostgres内外で読み取れるようにしているよ。特に従来のOLAPシステムが遅れをとるようなリアルタイムの更新や削除も行えるから、データ管理が楽になるよね。" userName="zhousun" createdAt="2025-03-08T18:36:10" color="#38d3d3">}}

{{<matomeQuote body="なるほど。そうなると、なんでそのクエリエンジンを直接使わないのかという疑問が出てくるね。DuckDBを含めた拡張の中でその能力を存分に発揮できないかもしれないし、Postgresの制約の中で操作してるからね。" userName="saisrirampur" createdAt="2025-03-08T19:54:53" color="">}}

{{<matomeQuote body="その通り！次のバージョンに期待してね！Mooncakeの焦点は、pgとネイティブに統合されたカラムストレージエンジンとして、pgからの書き込み、レプリケーション、pg_mooncakeを使った読み込みを可能にすることだよ。他のエンジンもmooncakeからデータを読む操作をしてもらうし、それはステートレスエンジンだから管理が楽でETLの問題も避けられるんだ。" userName="zhousun" createdAt="2025-03-08T20:43:36" color="#38d3d3">}}

{{<matomeQuote body="いい感じ！まだ少し混乱してるけど、次のバージョンを待ってるよ！ETLの問題は解決されていないと思うよ、Postgresソースからの論理レプリケーションはまだETLにあたるし、論理レプリケーションの問題に対処するために会社を作った経験があるから、注意が必要だね。" userName="saisrirampur" createdAt="2025-03-08T20:51:34" color="">}}

{{<matomeQuote body="cedardbみたいなものが、OLAPとOLTPデータベースの違いをなくす日が来ると思う？" userName="theLiminator" createdAt="2025-03-08T09:30:51" color="">}}

{{<matomeQuote body="面白いね！mooncakeチームはSingleStoreを作ってたけど、これまでで最も生産準備が整ったHTAPシステムだと思う。人々はOLTPシステムを変更したがらないことを学んだよ。ネタバレ：mooncakeはこれからHTAPユースケースをサポート予定で、OLTPのPostgresテーブルをそのままに、分析機能を追加するんだ。" userName="zhousun" createdAt="2025-03-08T15:46:31" color="#38d3d3">}}

{{<matomeQuote body="DuckDBをカラムストアクエリの実行エンジンとして組み込んで、クエリの実行速度を向上させているっていうけど、解析のトップに立ったのはPostgresなの？それともDuckDBなの？" userName="dleeftink" createdAt="2025-03-08T05:47:20" color="#ff5733">}}

{{<matomeQuote body="pg_mooncakeはPostgresの拡張だし、Postgresとpg_mooncakeを合わせてもPostgresでしかないよ。ユーザーはpg_mooncakeをPostgresの拡張としてデプロイして、psqlを通じてテーブルの作成やクエリを行ってる。高速な分析データベースには、カラムストレージとベクトル化実行エンジンが必要だ。Postgresにカラムストアテーブルアクセス方式を追加して、データをParquetで保存し、DuckDBを使ってそのテーブルにクエリを実行してる。これでベクトル化クエリ実行の再発明を避けながら、全部Postgresで管理できるんだ。<br>詳しくはこちら：<br>https://www.mooncake.dev/blog/how-we-built-pgmooncake" userName="moonikakiss" createdAt="2025-03-08T07:05:21" color="#ff5733">}}

{{<matomeQuote body="忘れてたけど、実はParquetではDuckDBより速いんだ。Parquetメタデータに基づいてセグメント排除を実装したんだ。<br>ブログでも触れてるよ：<br>https://www.mooncake.dev/blog/duckdb-parquet" userName="moonikakiss" createdAt="2025-03-08T07:19:08" color="#ff5733">}}

{{<matomeQuote body="DuckDBへの変更は反映させたの？" userName="porker" createdAt="2025-03-08T09:27:56" color="">}}

{{<matomeQuote body="リンク先のブログ読むと、スピードアップはPostgresテーブルへの一部のルックアップをオフロードしたからみたいだけど、それはDuckDBには合わない気がする。<br>＞pg_mooncakeはPostgresを使ってテーブルメタデータを保存するから、外部カタログをクエリする必要がないんだ。Parquetファイルをスキャンするためにどのファイルを調べるか、直接Postgresテーブルをクエリして特定して、オーバーヘッドを減らしてるんだ。<br>さらに、pg_mooncakeは各ファイルの詳細なParquetメタデータをPostgresに保存していて、各行グループの列統計値も含まれているんだ。この統計は、スキャンを最適化するために集計されるんだ。" userName="fmbb" createdAt="2025-03-08T12:01:45" color="#ff5733">}}

{{<matomeQuote body="自分はpgとxを組み合わせたらpgじゃないって思う派なんだ。ホスティングされたpgサーバーにはxをインストールできないこともあるし、pgを拡張できるのは素晴らしいけど、組み込みソリューションほどの評価はできないな。" userName="jbergens" createdAt="2025-03-08T13:11:25" color="">}}

{{<matomeQuote body="この文をREADMEの冒頭に入れることを提案したいな。<br>＞高速な分析データベースには、カラムストレージとベクトル化実行エンジンの二つの要素が必要だ。Postgresにカラムストアテーブルアクセス方式を追加し、データをParquetで保存して、それに対してDuckDBを使ってクエリを実行している。" userName="gavinray" createdAt="2025-03-08T12:05:19" color="">}}

{{<matomeQuote body="並列処理のためにCPUを増やすコストはどれくらい？AWS/AthenaやBigQueryと比べてそれがいつも問題だった。彼らは分析ワークロードでも100CPUに計算を並列化できるのに、あんまり追加料金がかからないから安いよ。PostgresだとCPUを増やすのに線形コストがかかるから、全体的に遅くなるんだ。" userName="fifilura" createdAt="2025-03-08T07:52:38" color="#ff5c5c">}}

{{<matomeQuote body="mooncake labsのzhouです。いい指摘だね！通常はPostgres拡張だと解決が難しいけど、mooncakeの場合は実はそうじゃないんだ！mooncakeの基本アイデアはオープンカラム形式と交換可能なベクトル化エンジンをもとに、Postgresとネイティブに統合することだからね。今はPostgres内でDuckDBを使ってクエリを実行してるけど、AthenaやStarRocks、Sparkなど、他の'静的エンジン'を使って大きなクエリを実行することもサポートする予定なんだ。" userName="zhousun" createdAt="2025-03-08T15:56:30" color="#ff33a1">}}

{{<matomeQuote body="高速分析データベースには他に重要な技術が必要だと思うけど、何か分かってないみたい。" userName="nextn" createdAt="2025-03-08T13:42:56" color="">}}

{{<matomeQuote body="両方ってこと？彼らのホームページを見た感じ、これが明らかに彼らのビジネスモデルだと思うけど。" userName="tonyhart7" createdAt="2025-03-08T06:59:48" color="">}}

{{<matomeQuote body="DuckDBって名前だね。" userName="rubenvanwyk" createdAt="2025-03-08T07:01:47" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="すごくワクワクするプロジェクトだね。主なポイントは、Query processorはDuckDBで、PGの型システムをDuckDBの型システムにうまく変換できれば、かなり速くなるってこと。データはS3にParquetで、DeltaやIcebergのメタデータと共に保存されるんだって。だから、分析データをWALに通す必要がなくて、メタデータだけがWALに入る。理論的には、素早いロードが可能になるし、Delta/Icebergのエコシステムとも互換性があるんだ。リアルタイムの取り込み機能ができたら、時系列データをこのシステムにプッシュできて、Clickhouseみたいな別のシステムは不要になるよ。" userName="nikita" createdAt="2025-03-08T05:42:44" color="#785bff">}}

{{<matomeQuote body="ローカルファイルシステムにもデータが保存されるんだね。これって普通のPGやS3に基づくストレージと比べてどうなの？" userName="tarun_anand" createdAt="2025-03-08T05:51:13" color="">}}

{{<matomeQuote body="少し前から疑問に思ってることがあるんだけど、OLTP用のPostgresインスタンスとOLAP用のカラムストア拡張を同じインスタンスで使ってるチームっているのかな？それとも別のPostgresインスタンスを立ててるのかな？一緒にするとOLTPのパフォーマンスに影響が出るのか知りたいんだ。" userName="dsiegel2275" createdAt="2025-03-08T13:29:36" color="">}}

{{<matomeQuote body="pg_mooncake拡張を使うとS3にデータを保存できるけど、PostgresはただDuckDBを動かすための計算を提供してるだけなんだろうか。標準化されたインターフェースと”データカタログ”も提供しているのかな？" userName="bach4ants" createdAt="2025-03-08T13:52:49" color="">}}

{{<matomeQuote body="トランザクションはPostgresによってネイティブテーブルとして管理されるから、PostgresとS3データ間のコミットを調整する必要がないよ。" userName="zhousun" createdAt="2025-03-08T15:48:17" color="#ff5733">}}

{{<matomeQuote body="ビジネスモデルは何なんだろう？MITライセンスの拡張だけど、会社とVCが背後にいるんだよね。なんか詐欺になりそうで心配だな。" userName="owenthejumper" createdAt="2025-03-08T11:44:24" color="">}}

{{<matomeQuote body="反論：こういうスタートは実に賢いと思うよ。 viableなビジネスモデルを持つためには、ユーザーに価値を提供する必要があるからね。ユーザーは賢いから、会社が消えたときに出口がないものを試そうとは思わない。どの会社も望むのは、提供する価値に満足した顧客に広めてもらうことだよ。そうじゃない場合は、最終的に誰もが不満を持つ状況になるんだ。大きなカラムDBの価格が高いから、この空間には多くの機会があると思うし、ベンチマークの変化も早いし、メモリ価格の低下も見えそうだし、AIの影響も気になるな。10年後に1TBのRAMを持った電話を手に入れても、99％の人はカラムストアがいらなくなるんじゃないかな。" userName="tesch1" createdAt="2025-03-08T14:56:39" color="#785bff">}}

{{<matomeQuote body="mooncake labsのZhouだよ。Mooncakeはオープンテーブルフォーマットと置換可能なクエリエンジンに基づいていて、単なるPostgres拡張ではないんだ。pg_mooncakeはMITの下でオープンソースのまま、小規模開発者向けにPostgresに収まるプロジェクトとして楽しんでもらえることを願ってる。そして、Postgresから次世代スタック、Postgres + mooncakeに移行する手助けをしたいと思ってるよ。" userName="zhousun" createdAt="2025-03-08T15:41:22" color="#38d3d3">}}

{{<matomeQuote body="他の人も言ってるけど、結果は拡張からのものであって、Postgresの一部じゃないから残念だね。実際、pg_stat_statementsみたいに、”外部”の拡張を使うのは、技術的な問題も法的な問題もあって、ほとんどの人にとっては平易なことではないからね。" userName="spapas82" createdAt="2025-03-08T09:04:00" color="">}}

{{<matomeQuote body="Neon Postgres試してみて！<br>https://neon.tech/docs/extensions/pg_mooncake<br>始めるのはすごく簡単だよ。" userName="moonikakiss" createdAt="2025-03-08T16:13:19" color="">}}

{{<matomeQuote body="法的な問題って何？" userName="kyrra" createdAt="2025-03-08T14:18:40" color="">}}

{{<matomeQuote body="TimescaleDBのような拡張機能には、競合に使うことを禁止するライセンスがあるんだ。具体的には、主要なクラウドプロバイダーの管理データベースでは使えない。例えば、CitusのAGPLライセンスでは、サービスをホスティングする際にはその変更を公開する必要があるから、負担になりそうだね。企業の弁護士はこのAGPLに疑念を抱くことが多いみたい。" userName="kbolino" createdAt="2025-03-08T16:28:38" color="#45d325">}}

{{<matomeQuote body="2年前に彼らのチャットで聞いたことがあるんだけど、CEOはDirectに返事をくれた。その話では、Timescaleは管理サーバーで使うことはできるが、他の人のためにTimescaleをホスティングしてはいけないって。" userName="eska" createdAt="2025-03-14T06:42:07" color="">}}

{{<matomeQuote body="Postgresは有名なオープンソースライセンスがあって使いやすいんだ。でも、一部の拡張機能はそうじゃないから、使いづらいんだよね。例えば、ライセンスがApacheやMITでも、将来的に変わる可能性があるから気をつけて！" userName="spapas82" createdAt="2025-03-08T16:28:36" color="">}}

{{<matomeQuote body="タイトルを何回も読んだけど、やっぱり誤解を招くかも。ベンチマークはPostgresじゃなくてMooncake拡張付きPostgresのものだし、他の拡張でも結果があるからね。最速ではないし、トップ10にも入ってないよ。" userName="xkgt" createdAt="2025-03-08T09:31:55" color="">}}

{{<matomeQuote body="現在、Clickbenchベンチマークでは12位のようだから、3週間後にはトップ10にはいないみたい。" userName="bigtones" createdAt="2025-03-08T06:29:08" color="">}}

{{<matomeQuote body="分かる！この分野はみんなすごく早く動いてるよね。今、最適化に取り組んでる低いハンギングフルーツがある（<br>https://github.com/Mooncake-Labs/pg_mooncake/issues/82<br>）から、またトップ10に戻りたいな。" userName="moonikakiss" createdAt="2025-03-08T07:07:13" color="">}}

{{<matomeQuote body="必要なのはPostgresだけだ：パート73" userName="dcreater" createdAt="2025-03-08T07:18:00" color="">}}

{{<matomeQuote body="簡単にプラグインを書けるデータベースさえあれば、誰でも難しい部分をスキップできるよ。" userName="menaerus" createdAt="2025-03-08T09:25:29" color="">}}

{{<matomeQuote body="確かにPostgresじゃないよね、クエリはDuckDBで実行されてるし。DuckDBは解析クエリにマジで速いんだよ。" userName="antonmks" createdAt="2025-03-08T06:39:22" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
