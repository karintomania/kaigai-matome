+++
date = '2025-04-02T00:00:00'
months = '2025/04'
draft = false
title = '「全部同期はやめとけ！」非同期コミットで痛い目見る前に知っておきたいこと'
tags = ["データ同期", "非同期処理", "分散システム", "SQLite", "データ整合性"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> 「全部同期はやめとけ！」非同期コミットで痛い目見る前に知っておきたいこと

引用元：[https://news.ycombinator.com/item?id=43537272](https://news.ycombinator.com/item?id=43537272)

{{<matomeQuote body="整合性モデルがよく分かんないんだけど。<br>＞Graftクライアントはローカルでコミットしてから、非同期でリモートにコミットしようとするんだって。Graftはグローバルで厳密な直列化を強制するから、同じスナップショットに基づいて同時にコミットすると、片方は成功してもう片方は失敗するらしい。<br>＞でも、APIはコミット操作が一つしかない。<br>＞commit(VolumeId, ClientId, Snapshot LSN, page_count, segments) 安全ならVolumeに変更をコミット。指定されたSnapshot LSNはコミットの元になったスナップショット。成功すると、新しくコミットされたSnapshotを返す。<br>＞もしクライアントが何かコミットして、ローカルで成功した場合、そのコミットの「非同期」伝播が失敗したことをどうやって知るの？そして、その成功したローカルコミットの上でやったことを全部ロールバックする必要があるんじゃない？<br>これって「コミット」の概念がごっちゃになってる気がする。普通「コミット」って言ったら有効だって保証されてるじゃん？でも、ここでは「ローカルコミット」が後から無効になる可能性があるってこと？" userName="kiitos" createdAt="2025-04-02T04:20:55" color="#45d325">}}

{{<matomeQuote body="確かに分かりにくいよね！ブログ記事の整合性のセクションで説明してみたよ：https://sqlsync.dev/posts/stop-syncing-everything/#consisten...<br>重要なのは、オフライン書き込みをサポートするなら、クライアントは厳密な直列化できないってこと。トランザクションの同期が無効になることを前提にする必要があるんだ。Graftは強力な基盤を提供するけど、ローカル書き込みの処理方法はクライアントに任せてる。<br>クライアントは以下のオプションを選べるよ：<br>1. オフラインならローカル書き込みを拒否する<br>2. オンラインに戻ったらローカル書き込みを最新のスナップショットにリベースする<br>3. ローカルの変更をリモートの変更とマージする<br>4. Volumeを完全にフォークして、ユーザーが手動でマージする<br>5. ローカルの変更を破棄する<br>エッジネイティブシステムを構築するためのビルディングブロックを作りたいんだ。ローカル書き込みのセマンティクスにはこだわりはないんだよね。" userName="carlsverre" createdAt="2025-04-02T04:46:42" color="#785bff">}}

{{<matomeQuote body="言ってること、リポジトリのドキュメントと全然違うじゃん。<br>Graftの「commit」操作の保証は、Graftシステム自体の性質なんだよね。もしcommitが、あるクライアントの要件を満たすと厳密に直列化されて、満たさないと直列化されないなら、「commit」は厳密に直列化されてないってことにならない？" userName="kiitos" createdAt="2025-04-02T04:53:49" color="#45d325">}}

{{<matomeQuote body="確認させてほしいんだけど、クライアントが常に同期的にコミット（MetaStoreのコミットがOKになるまで待つ）する場合、厳密な直列化されるってことでOK？<br>もしそうなら、クライアントが非同期的にコミットしたい場合、トレードオフと結果の整合性モデルをどう説明するのが分かりやすいかな？ドキュメントをどうアップデートすればいいか教えてほしい。" userName="carlsverre" createdAt="2025-04-02T05:05:18" color="#785bff">}}

{{<matomeQuote body="まず、読み取りと書き込みの整合性を分ける価値があるかも。例えば、君のシステムでは読み取りは最終的に整合性が保たれる（同期が強制されないから）。書き込みはもっと複雑だよね。<br>君のデザインのキーポイントは柔軟性だと思うんだ。それを強調して、アプリケーションがストレージとどうやり取りできるか、トレードオフを説明した方がいいんじゃない？<br>強い書き込み整合性を得るためにグローバルなシリアライゼーションを強制したり、同期ポリシーを緩くして弱い整合性にしたり。アプリケーションから見れば、内部の詳細はどうでもよくて、外部の性質とそれをどう実現するか（CRDTスタイルでマージするとか）が大事。" userName="ratorx" createdAt="2025-04-02T11:55:07" color="#ff5733">}}

{{<matomeQuote body="クライアントとコミットの定義が違うのかも。<br>クライアントが「ローカルでコミット」と「グローバルでコミット」を別々にできるとは思えないんだよね。クライアントはmetastore APIとやり取りするものだと思ってて、commit操作はローカルのコミット状態に基づいて成功/失敗を返すんじゃないの？<br>design.mdに「ClientはRustライブラリになる」って書いてあるけど、これが議論のポイント？クライアントはGraftクレートと同じコンパイルユニットのRustコードってこと？" userName="kiitos" createdAt="2025-04-02T05:25:53" color="#ff33a1">}}

{{<matomeQuote body="Graftの定義って、SQL標準のコミットよりGitのコミットに近い気がする。それが混乱の原因かも？" userName="mdavidn" createdAt="2025-04-02T15:05:52" color="">}}

{{<matomeQuote body="そうかもね。でも、Gitの「コミット」はドメインの概念で、分散システムの「コミット」とは違うんだよね。「厳密な直列化」とか「スナップショット分離」とかは分散システムの概念で、Gitの概念じゃない。「コミット」は分散システムのルールに従う必要があると思うよ。" userName="kiitos" createdAt="2025-04-03T21:12:29" color="#45d325">}}

{{<matomeQuote body="GitはDVCS（分散バージョン管理システム）じゃん。分散ってことは、マスターがないってこと。Gitには「グローバル」がないんだよ。" userName="drewcoo" createdAt="2025-04-02T21:57:26" color="">}}

{{<matomeQuote body="理論上はそうだけど、実際にはGitHubやGitLabがほとんどの開発者にとっての「グローバル」レプリカになってるよね。" userName="mdavidn" createdAt="2025-04-05T01:56:02" color="#ff33a1">}}

{{<matomeQuote body="リンク先のドキュメントと作者の返信で、状況がかなりはっきりするよね。ローカルとグローバルの特性を持つエッジデータストアを構築してて、オフラインモード用のオプションもあるみたい。システムの厳密な直列化について話す場合は、もっと複雑になるのは当然だと思うよ。" userName="tyre" createdAt="2025-04-02T05:10:38" color="">}}

{{<matomeQuote body="基本的にはシングルマスターの非同期レプリケーションだね。しかもsqliteのジャーナルモード専用みたい。マスターがsqliteのジャーナルをコミット履歴として保存して、フォロワーに送ってリプレイさせるんだ。" userName="feverzsj" createdAt="2025-04-02T05:13:39" color="#45d325">}}

{{<matomeQuote body="みんな、どうも！Graftの作者だよ。コメント、スター、サポート、本当にありがとう！またこうして公に開発できて嬉しいな。今夜はもうサインオフするけど、明日また質問に答えるよ！今、Washington, DCのAntithesis BugBash[1]に来てるんだけど、時差ボケ対策しないと後悔しそう。もし今週Washingtonにいる人がいたら（カンファレンスとかで）、ぜひ会おう！hello [at] orbitinghail [dotdev]にメールしてね。<br>[1]: https://bugbash.antithesis.com/" userName="carlsverre" createdAt="2025-04-02T04:53:56" color="#ff33a1">}}

{{<matomeQuote body="シェアしてくれてありがとう、すごくいいね。グラフィックも素晴らしいって言いたかったんだ。自分で作ったのか、誰かに手伝ってもらったのかわからないけど、ポイントをよく説明できてる。ページとかデータベースみたいな技術的なコンセプトのグラフィックを作るのは難しいけど、これはすごくいいよ。" userName="vineyardmike" createdAt="2025-04-02T06:20:54" color="#ff33a1">}}

{{<matomeQuote body="ありがとう！http://excalidraw.com/ で自分で作ったんだ。" userName="carlsverre" createdAt="2025-04-02T12:59:52" color="">}}

{{<matomeQuote body="Graftの盛り上がり、すごいね！Discord [1]やGitHub [2]でも会話できるよ。Antithesis BugBash [3]でDeterministic Simulation Testing (DST)について話してるから、もしいたら声かけてね！<br>[1]: https://discord.gg/etFk2N9nzC<br>[2]: https://github.com/orbitinghail/graft<br>[3]: https://bugbash.antithesis.com/" userName="carlsverre" createdAt="2025-04-02T15:42:23" color="#ff33a1">}}

{{<matomeQuote body="素晴らしい出来だね！ちょっと質問なんだけど、ページにある美しい図（https://sqlsync.dev/_astro/pull_changes.DjOYfgBf_2biXxv.webp とか）は何のツールで作ったの？" userName="gejose" createdAt="2025-04-02T17:54:38" color="">}}

{{<matomeQuote body="ありがとう！https://excalidraw.com/ で全部作ったんだ。もう何年も使ってて、本当に気に入ってるよ！" userName="carlsverre" createdAt="2025-04-02T18:04:20" color="">}}

{{<matomeQuote body="つまり、一貫性モデルは基本的にgitってこと？ローカルコピーがあって、それを変更して、プッシュするときにコンフリクトが起きて、リベースとかマージができるみたいな。問題は、コンフリクトをうまく検出する方法がないこと。ドキュメントには変更されたページについて書いてあるけど、ページの変更はコンフリクトのいい指標にはならない。読み取りのコンフリクトでも起こり得る。<br>例えば...<br>Update Customer Id: ＞”UPDATE Customers SET id＝’bar’ WHERE id＝’foo’; UPDATE Orders SET customerId＝’bar’ WHERE customerId＝’foo’”<br>Add Customer Purchase: ＞”SELECT id FROM Customers WHERE email＝”blah”; INSERT INTO Orders(customerId, ...) VALUES(”foo”, ...);”<br>もしupdateタスクが先にコミットされて、Ordersテーブルのページが一杯だったら（つまり、挿入すると新しいページが割り当てられる）、これらの操作にはページのコンフリクトはないけど、結果は正しくないことになる。<br>これを修正するには、書き込みが発生したトランザクション中に読み取られたページを追跡する必要があるけど、updateカラムがインデックスの一部でなければ、テーブル全体になる可能性がある。" userName="chacham15" createdAt="2025-04-02T07:11:44" color="#785bff">}}

{{<matomeQuote body="gitでのリベースも安全な操作じゃないよね。マージはヒューリスティックで、コンフリクトやサイレントな誤ったマージが起こりやすい。<br>簡単な例: https://www.caktusgroup.com/blog/2018/03/19/when-clean-merge..." userName="fulafel" createdAt="2025-04-02T07:52:51" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="それについては後で説明があるみたいだよ。厳密なシリアライズが無理な場合、ローカルのトランザクションは永続的じゃないけど、システム全体としてはシリアライズを回復できるってさ。ローカルの非同期トランザクションがページのリードセットを保持して、そこでコンフリクトを探す限りは大丈夫なはず。" userName="ncruces" createdAt="2025-04-02T08:21:49" color="">}}

{{<matomeQuote body="ローカルでトランザクションをコミットした後に、同期が失敗した場合、アプリがどう対応すべきか想像しにくいんだよね。全部ドロップするのは技術的には一貫性があるけど、状況によっては安全じゃないかも。例えば、緊急の紹介状を記録したのに、管理スタッフが患者の電話番号を更新してトランザクションが失敗するとか。自動リプレイは安全じゃないし。手動でマージするのが安全な場合もあるけど、ユーザーがレビューできるようにコンテキストを再構築するにはどうすれば？SQLiteはトランザクションIDを表面に出さないから、Graft APIが必要になるのかな。" userName="fauigerzigerk" createdAt="2025-04-02T12:10:17" color="#ff5c5c">}}

{{<matomeQuote body="ローカルでトランザクションをコミットした後に同期が失敗した場合、アプリがどう対応すべきか想像しにくいって話、マジそれな！手動マージが安全な場合もあるよね。CRDTが人気なのは、自動でコンフリクトを解決してくれるから。Graftは「同じデータ形式を使い続けられて、すべてがうまくいく！」って感じだけど、実際はコンフリクト解決ロジックを書く必要があるってことだよね。うまい話はないってことだ。" userName="NickM" createdAt="2025-04-02T16:13:36" color="#ff33a1">}}

{{<matomeQuote body="CRDTの問題点は、技術的にはコンフリクトフリーだけど、アプリケーションレベルの制約を表現できないことなんだよね。例えば、ホテルの部屋を複数の人が同時に予約できないようにするとか、制約違反としてフラグを立てて手動で介入する必要があるとか。集中型のトランザクションの使いやすさには到底及ばないよね。" userName="fauigerzigerk" createdAt="2025-04-02T17:50:23" color="#ff5733">}}

{{<matomeQuote body="それは確かに制約だよね。もしそういう制約があるなら、集中型のトランザクションシステムを使うべきかも。完璧なコンフリクト解決があっても、予約確定した後に「ごめん、やっぱ他の人が予約してたわ」って言いたくないでしょ？これはCRDTに限った話じゃなくて、可用性を優先するデータベースの限界だよね。制約が緩いユースケースなら問題ないけど。" userName="NickM" createdAt="2025-04-02T18:44:28" color="">}}

{{<matomeQuote body="ホテル予約は良い例じゃないかもね。ソフトコンストレイントを指定できれば、CRDTはもっと広い範囲のアプリに使えると思うな。変更をマージした後で、CRDTに制約違反のリストをクエリできるみたいな。" userName="fauigerzigerk" createdAt="2025-04-02T19:16:33" color="">}}

{{<matomeQuote body="「ホテルの部屋を複数の人が同時に予約できないようにするには？」いい質問だね！そうはしないんだ。グローバルに一貫性のあるトランザクションの順序付けを仮定すると、調整のレイテンシと認識される信頼性のトレードオフになる。複数の人が同時に予約できるけど、最終的には1人が勝つ。問題は、調整のレイテンシをユーザーが許容できる範囲に減らすこと。レイテンシが小さければ、ブロッキングAPIで信頼性の低さを隠せる。" userName="fatherzine" createdAt="2025-04-03T15:48:20" color="#ff33a1">}}

{{<matomeQuote body="＞your local transactions are not durable<br>これってユーザーからしたら単なるデータロスだよね。なんか操作して、うまくいったように見えても、後で消えちゃうんだもん。" userName="bastawhiz" createdAt="2025-04-02T13:24:32" color="">}}

{{<matomeQuote body="説明を読む限り、トランザクションは再適用できるみたい。システムがどう処理するか（アプリにどこまで任せるか、Graftがどこまで処理するか）はわからん。" userName="ncruces" createdAt="2025-04-02T13:57:01" color="">}}

{{<matomeQuote body="それってどういうこと？失敗したトランザクションを後でどうやって再適用するの？データベース自体は解決方法を知らないはず（もし知ってたら失敗しない）。だからアプリがやるしかないけど、常に可能とは限らない。結局データロスは避けられないかもね。「一貫性」は、都合の悪いトランザクションを削除すれば簡単に実現できるってことだ。" userName="bastawhiz" createdAt="2025-04-02T17:21:05" color="">}}

{{<matomeQuote body="これマジそれな！gitでmerge conflict解決するのってマジ大変じゃん？アプリ作る時に、UIとかユースケース込みで全部mergeするのとか非現実的すぎ。CRDTsとかターン制ゲームとか、単一顧客が使うデータサイロみたいな限定的なケースなら使えるかもだけど、一般的には無理ゲーだと思うわ。" userName="kikimora" createdAt="2025-04-02T23:19:00" color="">}}

{{<matomeQuote body="状態への変更順序がマジでどうでもいい場合だけ安全だと思う。<br>・カウンターの増減<br>・アクションのタイムスタンプをセットで保存<br>とか。<br>変更をアクションの順不同セットとしてモデル化できないとデータ損失するかも。例えば、3つのクライアントがアクションを実行。action 1がXをtrueに、action 2もtrueに、action 3がfalseにしたら、Xがtrueかfalseかわからなくなる。タイムスタンプがあっても、集中writerがない限り、クライアントのタイムスタンプが正確かどうかなんてわかんないし。マジ難しい問題！" userName="bastawhiz" createdAt="2025-04-03T01:59:18" color="#38d3d3">}}

{{<matomeQuote body="＞クライアントがgraftをpullした後、変更点を正確に把握できる。その情報を使って、どのページが有効で、どのページを取得する必要があるかを判断できる。<br>Cloud-Backed SQLiteのmanifestとどう違うんだろ？https://sqlite.org/cloudsqlite/doc/trunk/www/index.wiki<br>設計は似てるけど（変更されたページを送信）、サーバー側の計算が不要なのがデカい。" userName="conradev" createdAt="2025-04-02T02:19:22" color="#ff33a1">}}

{{<matomeQuote body="Cloud-Backed SQLite (CBS)の話ありがとね！CBSはマジで素晴らしいプロジェクトで、Graftより成熟してると思う。違いを説明するね。<br>CBSはmanifestとblockを使ってる。リーダーはmanifestをpullして、どのblockを再利用して、どれをpullする必要があるか知ることができる。だから、その点では似てる。<br>書き込みレイヤーはかなり違う。CBSはクライアントから直接blockを書き込むけど、GraftはPageStoreを使って永続化を処理する。<br>PageStoreを使うメリットは、複数のVolumeからの変更をS3の大きなセグメントにまとめることができること。将来的には、クエリのパフォーマンスを向上させたり、tombstoneを削除するために、セグメントを圧縮して最適化する予定。<br>もう一つのメリットは、書き込まれたページはMetaStoreにコミットされるまで、LSNに固定されないこと。書き込みの同時実行性が高い場合に重要になる。クライアントのコミットが拒否された場合（最新のスナップショットに基づいていない）、ローカルの変更を最新のスナップショットにrebaseしようとする。その際、Graftのモデルでは、以前に試みたコミットのサブセットを再利用できる。非重複ワークロードの同時実行性を劇的に向上させることができると思う。<br>3つ目のメリットは、権限。Graftを展開すると、PageStoreとMetaStoreで細かい書き込み権限を強制できる。CBSはクライアントがblobストレージに直接アクセスする必要がある。サーバー側でのデプロイには有効だけど、アプリケーションにレプリカを埋め込みたいエッジやデバイスのユースケースには向かない。<br>manifest側では、CBSではクライアントが最新のmanifestをpullするだけでいいけど、クライアントが多くて変更ワークロードが高い場合、Graftの圧縮bitsetアプローチは、クライアントがpullする必要があるデータ量を劇的に減らすことができる。メタデータのログとスナップショットみたいなもん。<br>違いがわかったかな？<br>あと、Rust好きなんだよね。:)" userName="carlsverre" createdAt="2025-04-02T04:33:21" color="#ff5733">}}

{{<matomeQuote body="なるほどね！サーバーが不要ってのもあるけど、CBSの魅力はシンプルさだよね。<br>Graftは新しい概念が多い気がする。必要なのかもしれないけど、HTTP APIとProtobufを維持していくの、大変そう。<br>CBSの書き込み同時実行性は「bucketごとに1つのwriter」で、これは「ユーザーごとに1つのbucket」で使える。クライアントのblobストレージへのアクセスは、署名付きURLで制御できる。ただ、自分でconflict resolutionする必要がある。<br>ストレージエンジン（ページ）レベルでconflict resolution（rebase/fork/reset）を処理するのが面白い。<br>非重複書き込みの場合、rebaseが効果的だと思う。" userName="conradev" createdAt="2025-04-02T17:48:45" color="#45d325">}}

{{<matomeQuote body="確かに！CBSは同じ問題を解決するキラーソリューションだね。" userName="carlsverre" createdAt="2025-04-02T18:06:32" color="">}}

{{<matomeQuote body="rebaseってどういう意味？アプリケーションがinteractive codeを含めてtransactionを再生するの？それともデータベースが前回書き込まれたのと同じ行/ページを書き込むの？" userName="aboodman" createdAt="2025-04-03T04:16:10" color="">}}

{{<matomeQuote body="SQLiteには実験的な変更”BEGIN CONCURRENT”がある。楽観的ロックを使って、重複しない書き込みを同時実行できる。<br>https://www.sqlite.org/src/doc/begin-concurrent/doc/begin_co...<br>書き込みが重複しなければ、rebaseは全く同じページ（計算なし）になる。重複する場合は、transactionを再生して新しいページを作成する必要がある（計算が必要）。" userName="conradev" createdAt="2025-04-04T18:35:55" color="#ff5c5c">}}

{{<matomeQuote body="へー、これ知らなかったけどマジでクール！<br>gcloudで低スケールのserverless dbを探してたんだけど、gcloudのサービスよりいいかも。<br>Cloud firestoreが良さそうに見えたけど、既存のgcloud credentialsで動かせなかった。俺のスキル不足かも。" userName="hamandcheese" createdAt="2025-04-02T04:04:03" color="#ff5733">}}

{{<matomeQuote body="こういう一般的なソリューションって、いつも混乱するんだよね。分散データって、本質的に欠陥があって、制限があるから、自分のユースケースに一番近いものを選ばなきゃいけない。<br>Graftの考え方は好きだけど、すぐに問題にぶつかる。例えば、ネットワークが不安定なエッジデバイスだと、必要な時にページを取得できない可能性がある。クライアントが必要なのは、必要な時にアクセスできるように、できるだけデータを取得すること。<br>でも、データが多すぎると時間がかかる！だから、アプリケーションがデータに優先順位をつけて、必要なものから取得する必要がある。<br>SQLite向けってことは、その点を補強してる気がする。分散リレーショナルデータベースって、だいたいの場合悪い考え。みんなACID特性を求めるけど、分散環境じゃ無理だし。CRDTsがあるのはそのため。すべての”コピー”を独立したものとして扱うことで、同じものを複数の場所に確実に分散できるっていう誤った考えを打破できる。（だから、リレーショナルデータベースはレプリケーションに向いてない。リレーショナルデータベース全体をCRDTsでレプリケートするには、セルごとにCRDTが必要になる。）" userName="0xbadcafebee" createdAt="2025-04-02T16:54:42" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これ役に立つかもだから、似たようなツールのリンク集めといたよ！<br>https://tinybase.org/<br>https://www.evolu.dev/<br>https://replicache.dev/<br>https://fireproof.storage/<br>https://vlcn.io/<br>https://www.instantdb.com/<br>https://loro.dev/<br>https://electric-sql.com/<br>https://docs.y-sweet.dev/<br>https://syncedstore.org/docs/<br>https://collabs.readthedocs.io/en/latest/<br>https://remotestorage.io/<br>https://rxdb.info/offline-first.html<br>https://github.com/siriusastrebe/jsynchronous<br>https://www.powersync.com/<br>https://pouchdb.com/<br>https://jazz.tools/<br>https://www.triplit.dev/<br>https://automerge.org/<br>https://www.dxos.org/<br>いつか全部試したいなー。誰かのまとめ記事読みたい。" userName="vladstudio" createdAt="2025-04-02T11:37:44" color="">}}

{{<matomeQuote body="なんでこんなにたくさんあるんだろ？誰も必要としてないものを再発明してるだけじゃない？<br>個人的には、pouchdb、automerge、loro、sqlsyncは触ったことあるけど、どれも既存のアーキテクチャに合わなかったんだよねー。<br>たぶん、抽象化レイヤーが間違ってるんだと思う。REST APIとクライアント側のストレージがあれば99%十分じゃん？サービスワーカーもあるし。データの部分更新とかじゃなくて、サーバーから全データをリロードする方が説明しやすいし実装も楽だし。ラストライトウィン方式で十分なことが多いし。DBのコンフリクト解決とか無理ゲー。" userName="ozim" createdAt="2025-04-02T11:56:11" color="">}}

{{<matomeQuote body="これはマルチプレイヤーアプリの話だよ。Googleドキュメントとかみたいな。複数のユーザーが同時に編集できて、オフラインでも使えるみたいな。<br>みんながこんなことにハマるのは、データの同期処理が複雑で、関係ない部分まで影響が出ちゃうから。<br>A：ログをそのまま使う方式（オブジェクトの種類ごとに処理が必要）。<br>B：フレームワークが全部やってくれる方式（KVストアみたいな）。<br>C：最近はSQLの機能が欲しくなるから、最初からSQLを使う方式。<br>今はAだけど、Bに乗り換えたいなー。SQLもいいけど、やったことあるからなー。オフライン対応が簡単ならAでもいいけど、複雑になったらBを検討するよ。<br>ドキュメント単位の同期が多いけど、SQLのクエリとか使えなくなるのが困る。普通のSQLバックエンドと同期できるツールが少ない。" userName="whizzter" createdAt="2025-04-02T13:42:38" color="#45d325">}}

{{<matomeQuote body="それならCouchbaseがいいんじゃない？全部自社でコントロールしてるし。（宣伝注意：CouchbaseのSyncを8年やってる）<br>ローカルではドキュメント単位で同期できて、サーバー側では複数ドキュメントのトランザクションとか、KVアクセスとか、SQLとか、フルテキスト検索とか、細かい権限設定とかできるけど、その分ロックインされるしお金もかかる。ストレージとかクエリとか同期を自由に組み合わせられない。" userName="bbrks" createdAt="2025-04-02T16:35:55" color="">}}

{{<matomeQuote body="話が噛み合ってない気がする。<br>マルチプレイヤーのドキュメントはリアルタイムで同期するもので、DBの同期とは違うよ。これらのツールはオフラインからオンラインへのデータ同期が目的。ドキュメントとは用途が違う。" userName="ozim" createdAt="2025-04-02T16:22:31" color="">}}

{{<matomeQuote body="いや、根本的な問題は一緒だよ。GPが言ってるツールの問題は、同時編集の問題。普通のCRUDだと頻度が低いから無視されるけど、オフラインとかマルチプレイヤーだと頻繁に起こる。<br>ドキュメントとDBだけど、ドキュメントをテーブルに分割できるし。DBに分解しておけば、管理が楽になるし、部分的な権限管理もできる。" userName="whizzter" createdAt="2025-04-03T14:59:49" color="">}}

{{<matomeQuote body="＞なんでこんなにたくさんあるんだろ？誰も必要としてないものを再発明してるだけじゃない？<br>本当に必要なものって何？誰が決めるの？<br>＞全データをリロードする方が説明しやすいし実装も楽<br>電源ランプは点いてる？点いてなかったら、電源ボタンを押してね。簡単なことを説明するのって難しいんだよ。<br>対象は俺らみたいなオタクだから、誰かがforkして直してくれるまで、適当でもいいんじゃない？" userName="drewcoo" createdAt="2025-04-02T22:06:19" color="">}}

{{<matomeQuote body="“最近の問題はほとんどが同期の問題”<br>https://news.ycombinator.com/item?id=43434239" userName="codeulike" createdAt="2025-04-02T17:16:12" color="">}}

{{<matomeQuote body="関連ブログ書いたよ！<br>https://marcoapp.io/blog/offline-first-landscape" userName="isaachinman" createdAt="2025-04-02T21:50:01" color="">}}

{{<matomeQuote body="リンクありがとう！ちょうど欲しかったんだ！" userName="vladstudio" createdAt="2025-04-03T14:19:39" color="">}}

{{<matomeQuote body="これマジで面白いプロジェクトだし、記事も最高じゃん！めっちゃ勉強になったわ。「Leap」アルゴリズム（https://www.usenix.org/system/files/atc20-maruf.pdf）がリモートメモリのプリフェッチを予測するのに使われてるって知って、ハマりまくってる。<br>libgraftのSQLite連携ばっか見ちゃうけど（tursoとかと比較して）、作者がもっと一般的でローレベルな分散ストレージ問題としてアプローチしてるのが良いよね。実用的だって証明されたら、SQLite以外にも色々使えそう。<br>ただ、「ローレベルな一般的ソリューション」って、具体的な経験がないと的外れになりがちじゃん？作者はsqlsyncの経験があるし、最初からgraftをSQLiteに適用してるから、一般的なソリューションに挑戦する資格があると思う。特に、reconciliationの責任をアプリケーション/クライアント層に移してるのが良いよね。reconciliationってトレードオフが多いから、アプリ側がどうしたいかちゃんと考える必要があるってのは当然だと思う。<br>みんなSQLiteのレプリケーションシステムとの比較ばっか聞いてるけど、記事の最後に比較に関するセクションがあるから見てみて！https://sqlsync.dev/posts/stop-syncing-everything/#compariso..." userName="snickell" createdAt="2025-04-02T03:58:12" color="#ff5733">}}

{{<matomeQuote body="ありがとね！SQLlite/SQLSync以外のソリューションにGraftを適用するの、めっちゃワクワクしてるし興味あるんだよね。それがもっと一般的にした理由でもあるし。でもマジでその通りで、まずユースケースを開発してから一般的なソリューションに落とし込んだのは正解だったわ。逆だったら絶対ミスってたと思う。<br>あと、Leapのrabbit holeにはマジでハマった。あれは楽しいよね！" userName="carlsverre" createdAt="2025-04-02T04:10:24" color="#ff33a1">}}

{{<matomeQuote body="実装の詳細はよく分かんないからコメントしないけど、これはマジで解決すべき重要な問題だと思う。クライアントとサーバー間で変更をsyncできる、agnosticなsyncレイヤーがずっと欲しかったんだよね。アプリ開発者が何もしなくても、データベースがURLを指すだけでsyncを全部やってくれるのが理想。<br>そうすれば、アプリ開発者は何の苦労もなくプライベートsyncをサポートできるし、syncのためだけにサブスク払わなくても済む。NASでsyncサーバーを動かせば、全部のアプリがそこにsyncしてくれるようになる。もちろん、アプリ開発者はサブスク収入が欲しいから嫌がるだろうけど、ユーザーがプッシュすれば変わるかもね。" userName="stavros" createdAt="2025-04-02T08:45:25" color="#ff5c5c">}}

{{<matomeQuote body="10年くらい前は、CouchDBがこの問題の答えだったんだよね。2025年の現状は知らんけど、当時は飛行機のセールス担当が使ってるタブレットを、地上に戻ってオンラインになったら中央データベースとsyncするのに使われてた。" userName="Cthulhu_" createdAt="2025-04-02T08:47:19" color="">}}

{{<matomeQuote body="CouchDBってどうなったんだろ？もっと人気出ると思ってたけど、全然聞かなくなったよね。もしかしてこの問題って重要じゃないのかな？それとも、こういう方法で解決できるって知らないだけ？" userName="stavros" createdAt="2025-04-02T08:49:16" color="">}}

{{<matomeQuote body="この分野はマジで元気だし、OPみたいな小さいプロジェクトから競争が生まれてるのは嬉しいね。<br>（免責事項：私はこの分野の企業のsyncバックエンドで過去8年間働いてます。探せばどこか分かると思うけど、これはセールスじゃないよ）<br>こういう競争は、インターネット環境が悪いけど開発能力があるコミュニティにとってマジで価値がある。例えば、発展途上国とかアフリカで巡回診療してる医者とか。村全体で健康診断して、タブレットにデータを記録するじゃん。医者がインターネット使える場所に行ったらsyncして、フォローアップに使うんだよね。残念ながら、こういうプロジェクトって予算がないんだよね。だから、これらの問題を解決するための技術を使う余裕がないんだよ（うちの会社もそう）。<br>エンタープライズ側だと、航空会社とかクルーズ船とか、小売とかフィールド系の産業でこういう技術が使われてる。オフラインになったり、P2Pメッシュだけになったりするからね。クラウドデータベースとか、普通のレプリケーションデータベースは使えない。管理する人がいないから。レプリケーションは難しい問題なのに、通信が途絶える状況じゃもっと大変。" userName="bbrks" createdAt="2025-04-02T09:28:39" color="#45d325">}}

{{<matomeQuote body="CouchDBの専門家じゃないけど、最近プロジェクトで使って、フロントエンドのpouchdbとのsyncが気に入った。<br>一番の問題はセキュリティだった。<br>CouchDBとのやり取りはデータベースと直接行う必要があり、中間APIは利用できなかった。CouchDBが設計されたときは良いアイデアだったのかもしれないけど、2024年では不安を感じた。CouchDBの中間APIレイヤーを知ってる人がいたら教えて。" userName="miramba" createdAt="2025-04-02T09:39:25" color="#45d325">}}

{{<matomeQuote body="中間サーバー/APIがないことを欠点だと捉えてるのが面白いね。InstantDBはそれを進歩だと考えてるよ。彼らのエッセイを見てみて：https://www.instantdb.com/essays/sync_future" userName="dotemacs" createdAt="2025-04-02T12:52:59" color="">}}

{{<matomeQuote body="ありがとね！同じように考えてくれて嬉しい！私もずっと、シンプルなconsistencyモデルの上に構築できる、汎用的なsyncレイヤーが欲しかったんだよね。<br>Graftをオープンソースにしたのは、まさにそれを実現するため！どこにでもデプロイして！使ってくれるなら、もっとサポートできるように教えてね :)" userName="carlsverre" createdAt="2025-04-02T15:32:16" color="#38d3d3">}}

{{<matomeQuote body="SQLSyncを作ってくれてありがとう！Klepmannの「local-first」の講演が好きだと思うよ。もう知ってるかもだけど。" userName="stavros" createdAt="2025-04-02T15:48:45" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="どういたしまして！ Klepmannと彼のローカルファーストなコンテンツ、マジでファンなんだよねー！ リマインダーありがとね！" userName="carlsverre" createdAt="2025-04-02T16:22:24" color="#ff33a1">}}

{{<matomeQuote body="めっちゃすごいじゃん！ VFS使うのってマジ楽しい”ハック”だよねー！<br>自分たちはnotes/tasks用のオフラインファーストなIDE[1]向けに独自のsyncエンジン作ってて、データ構造はツリー（というかグラフ）でアウトライン操作をサポートしてるんだ。コンフリクト解決はいつも課題で、特にツリーだと複数のオフラインプレイヤーが楽観的にローカル変更をコミットすると、グローバルにマージしたときに無効なツリー状態になるんだよね。<br>これの対処法は、クライアントがオンラインになったときに他のツリーinsertデルタを受け取ると、ツリーのinsertをロールバックすること。SQLSyncの説明からすると、最新のスナップショットをpullしてリプレイするのが一番良い方法っぽい。でもフルスナップショットをpullするのは結構コストかかるよね。自分たちは、大量のデルタが来る場合にヒューリスティックで判断してそうしてるけど、ほとんどのオフラインsyncでは必要ないんだよね。SQLSyncではスナップショットをどう定義してるのか気になるなー。例えばnote-takingの例だと、グラフ機能（transclusions）があるから、単一の”note”のスナップショットは作れないんだよね。SQLSyncには”reset and replay”するためにすべての状態を送信しなくて済むような賢い方法があるのかな？<br>[1] https://thymer.com" userName="wim" createdAt="2025-04-02T08:57:51" color="#38d3d3">}}

{{<matomeQuote body="ありがとうございます！ そして同意です（笑）。SQLite VFS書くの大好き。<br>SQLSyncの主な問題は、まさにあなたが説明したとおり、リプレイするためにフルスナップショットをpullすることでした。これがGraft設計の”partial”な側面を推進する主な要因です。つまり、クライアントは、まだ持っていない、トランザクションのr/wセットとオーバーラップする受信スナップショットの部分のみをpullする必要があります。だから、あなたの質問に答えると、SQLSyncがGraftによって強化されると、resetとリプレイのためにすべての状態をダウンロードする必要がなくなることがよくあります。<br>クライアントがスナップショット分離に緩和しても大丈夫な場合（特に、これはクライアントがWrite Skew[1]を経験する可能性があることを意味します）、ローカルトランザクションのr/wセットがスナップショットの変更セットと交差しない場合、Graftは自動マージを実行できます。<br>[1]: https://jepsen.io/consistency/phenomena/a5b" userName="carlsverre" createdAt="2025-04-02T13:09:18" color="#ff33a1">}}

{{<matomeQuote body="面白そうじゃん。これ、マジで頭を悩ませる難しい問題だよね。これに取り組んでる人は、まさにこの分野を前進させてるって感じ。<br>うちのReact Nativeアプリの不安定な接続環境で試してみようかな。" userName="wg0" createdAt="2025-04-02T03:22:05" color="#ff5c5c">}}

{{<matomeQuote body="＞うちのReact Nativeアプリの不安定な接続環境で試してみようかな。<br>似たようなやつで、調べてみるといいかも（個人的な意見じゃないけど、ちょっと調べたことあるから共有するね）。<br>・https://rxdb.info<br>・https://www.powersync.com<br>・https://electric-sql.com<br>・https://dexie.org<br>https://localfirstweb.dev も良いリンクだよ。" userName="rudedogg" createdAt="2025-04-02T04:01:34" color="">}}

{{<matomeQuote body="楽しいプロジェクトで、どこまで深く掘り下げられるかワクワクしてるんだ。:)<br>ぜひ試した感想を聞かせてほしいな！ まだSQLite extensionをモバイルで動かしたことがないから、手伝ってくれるとマジ感謝！ モジュールを別のアーキテクチャに対してコンパイルする必要があるかもしれないけど、”just works”するといいな。" userName="carlsverre" createdAt="2025-04-02T04:16:35" color="#45d325">}}

{{<matomeQuote body="やっと見れた。LMAOマジ最高！" userName="carlsverre" createdAt="2025-04-02T14:55:52" color="">}}

{{<matomeQuote body="これも関連プロジェクトだよ。<br>https://zero.rocicorp.dev/" userName="presentation" createdAt="2025-04-02T15:12:30" color="">}}

{{<matomeQuote body="モバイルクライアントが超遅い回線に繋がってて、同期が必要なdiffがギガバイト単位になる場合に問題が起きるよね。最初の同期だったり、DBが肥大化しちゃったりとか。<br>ハイブリッドなアプローチとしては、同期が遅い（例えば5秒経っても終わらない）のを検知して、サーバーに直接クエリを送るのが良いかも。ユーザーがやりたいタスクが肥大化したレコードに依存してない可能性が高いからね。" userName="londons_explore" createdAt="2025-04-02T07:32:10" color="#45d325">}}

{{<matomeQuote body="なるほどねー。Graftみたいにデータをエッジに同期するソリューションは、データセットが大きすぎたり、一貫性を部分的に保てないほど分割されてないと、うまく機能しないんだよね。だからGraftはクライアント同期だけじゃなくて、サーバーレス機能とかエッジにも力を入れてるんだ。同じスナップショットで同じ処理を実行できるから（一貫性保証のおかげで簡単に検証できる）、クライアントの処理をエッジに移動させたりできるんだって。そっちの方がリソースがあったり、ネットワークが良かったり、キャッシュがあったりするからね。" userName="carlsverre" createdAt="2025-04-02T13:12:38" color="#ff33a1">}}

{{<matomeQuote body="もしかして俺だけ？コメント欄の人たちは分かってるみたいだけど、読んでもさっぱり分からん。APIの簡単な例を「マーケティング記事」かgithubのreadmeに載せてほしいな。<br>データの同期についてなのは分かるんだけど（タイトルは違うけど）。「開発が簡単になる」「データがスムーズに共有される」とか、他のツールも言ってるようなことばかり。データ複製が役立つ場面なら何でも使えるってこと？具体的に何ができるの？<br>同期で一番の問題はコンフリクト解決だよね。Graftは「ページの中身を気にしない」から、コンフリクトを解決できない。メモアプリで使うとしたら、テキストファイルの変更が全部コンフリクトになるってこと？SQLiteファイルの複製を、コンフリクトがない場合にMySQLとかPostgresみたいに処理するだけ？SQLiteドライバを置き換えて、Graft-DB経由でリクエストを外部のGraftインスタンスに送るってこと？" userName="krick" createdAt="2025-04-02T09:13:38" color="">}}

{{<matomeQuote body="解決しようとしてる問題をうまく伝えられないなら、本人たちも分かってないんじゃない？" userName="kubb" createdAt="2025-04-02T10:04:03" color="">}}

{{<matomeQuote body="Graftについてもっと詳しく知りたいなら、2週間前にVancouver Systemsでした講演を見てみて！https://www.youtube.com/watch?v=P_OacKS2h5g<br>Graftのトランザクションレイヤーとレプリケーションレイヤーの仕組みについて詳しく解説してるよ。" userName="carlsverre" createdAt="2025-04-02T18:16:32" color="">}}

{{<matomeQuote body="readmeにこう書いてある。<br>＞Licensed under either of<br>＞Apache License、Version 2.0 (LICENSE-APACHE or https://www.apache.org/licenses/LICENSE-2.0)<br>＞MIT license (LICENSE-MIT or https://opensource.org/licenses/MIT)<br>＞at your option.<br>よくあるけど、なんでApacheとMITを両方選べるようにしてるんだろ？Apacheライセンスだけど、MITの条件で使ってもいいってこと？それなら最初からMITライセンスにすればいいのに…" userName="giancarlostoro" createdAt="2025-04-02T14:22:37" color="">}}

{{<matomeQuote body="Rust FAQ[1]によると:<br>＞Apacheライセンスは特許侵害に対する重要な保護を含んでいますが、GPL version 2と互換性がありません。RustをGPL2と一緒に使う問題を避けるために、MITライセンスも選択できます。<br>Rust APIガイドラインも同じことを推奨しています。https://rust-lang.github.io/api-guidelines/necessities.html#...<br>[1]: https://github.com/dtolnay/rust-faq#why-a-dual-mitasl2-licen...<br>(Graftの作者として)私の目標は、オープンソースで、Rustのエコシステムとできる限り互換性を持たせることでした。だからデュアルライセンスにしたんです。" userName="carlsverre" createdAt="2025-04-02T14:34:23" color="#ff5733">}}

{{<matomeQuote body="ありがとうございます！助かります。その背景なら理解できます。私もプロジェクトで使う言語のベストな標準に従うようにしています。" userName="giancarlostoro" createdAt="2025-04-02T14:37:12" color="#45d325">}}

{{<matomeQuote body="Apacheは特許の権利を与えるけど、MITはそうじゃないってことじゃないかな。" userName="CorrectHorseBat" createdAt="2025-04-02T14:31:12" color="">}}

{{<matomeQuote body="＞GraftはまだAlpha品質のソフトウェアだから、本番環境での利用は控えた方がいいよ。<br>ベータ版はいつ頃？" userName="mrbluecoat" createdAt="2025-04-02T02:15:20" color="">}}

{{<matomeQuote body="ASAP(なるはや)！" userName="carlsverre" createdAt="2025-04-02T03:13:35" color="">}}

{{<matomeQuote body="めっちゃ面白いアイデアだね！実は俺も似たようなこと考えててさ。pgliteベースで、データじゃなくて「意図」を同期するシステムを試作中なんだ。つまり、アクションを再現するってこと。ビジネスロジック関数へのタグと引数のセットを、ハイブリッド論理クロックと、アクションで変更されたデータの forward & reverse パッチと一緒に複製するんだよ。<br><br>アクションが不変で、非決定的な入力が引数にキャプチャされていれば、クライアントがいつ同期しても、既知の共通状態からクライアントデータベース内で完全なクロック順に（再）実行できるから一貫した状態になるんだ。これのメリットは、Postgres の row level security で認証・認可が完璧にできるってこと。それに、クライアントが書き込めるものをサーバーが完全にコントロールしながら、クライアントは最小限の情報だけ同期してコンフリクトを処理できるから効率的。<br><br>実際にはもっと細かい話があるんだけどね。アクション実行中にトランザクション内で row level のパッチと reverse パッチをキャプチャするトリガーとか、ローカルの DB 状態をロールバックして完全な因果関係順にアクションをリプレイしてコンフリクトを解決するクライアントローカルのロールバック機構とか、アクションのリプレイの期待される結果と実際の結果の差を調整するステートパッチアクションとか（例えばプライベートデータとか条件分岐のせいとか）。<br><br>このテクニックの大きな利点は、単にデータをマージするだけじゃなくて、ビジネスロジックを実行して状態を進めるってこと。つまり、データのマージだけじゃ捉えられないユーザーの意図を捉えられるんだ。従来の CRDT はデータをマージして一貫性のある状態になるけど、エンドユーザーにとってその状態のセマンティックな正当性は保証されないことが多い。ビジネスロジック関数をリプレイすることで、状態が一貫しているだけでなく、インターリーブされた書き込みを調整する際にユーザーの意図を最大限に維持することを目指してるんだ。<br><br>まだ WIP で、まだ共有できるものは何もないけど、アイデアの核はしっかりしてると思う。データ同期の分野でこんなに多くのイノベーションが見られてエキサイティングだよ！これは難しい問題で、多くの種類のアプリのユースケースに対応できるソリューションは（まだ）ないね。" userName="imagio" createdAt="2025-04-02T12:37:21" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
