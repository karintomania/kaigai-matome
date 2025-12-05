+++
date = '2025-11-28T00:00:00'
months = '2025/11'
draft = false
title = 'Pocketbase 1ファイルで完結する爆速リアルタイムバックエンドがプロ開発者に大好評！'
tags = ["バックエンド", "リアルタイム", "オープンソース", "開発ツール", "軽量"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> Pocketbase 1ファイルで完結する爆速リアルタイムバックエンドがプロ開発者に大好評！

引用元：[https://news.ycombinator.com/item?id=46075320](https://news.ycombinator.com/item?id=46075320)




{{<matomeQuote body="Pocketbaseを見たら即高評価だよ。いくつかの本番アプリで使ってるけど、すごく安定してるね。たまに破壊的変更はあるけど、基本的には超堅実。拡張性も高いし、まれに足りない機能に出くわすこともあるけど、腕利き開発者ならどうにでもできるさ。" userName="throwaway77385" createdAt="2025/11/28 08:51:10" color="#38d3d3">}}




{{<matomeQuote body="‟腕利き開発者ならどうにでもできる‟って意見に同意！ PocketbaseのFAQにあった『ドキュメントを読む時間もなくて、AIツールにだけ頼るつもりなら、Pocketbaseは使うな！』って注意書き、超気に入ったよ。" userName="mrbluecoat" createdAt="2025/11/28 13:42:42" color="#ff5c5c">}}




{{<matomeQuote body="だよね、まだAIが学習するほど有名じゃないからね。" userName="Bombthecat" createdAt="2025/11/28 17:58:52" color="">}}




{{<matomeQuote body="Claudeではかなりマシになってきてるよ。トレーニングのカットオフが2023年末を超え始めたからね。OpenAIモデルは、v0.23+を考慮するようにちゃんと教えてあげれば、そんなにつまづかないはずさ。" userName="F7F7F7" createdAt="2025/11/28 19:32:51" color="#785bff">}}




{{<matomeQuote body="Gemini 2.5 ProならPocketbaseをまあまあうまく扱えるってわかったよ。非推奨のモデルをbaseModelの代わりに使っちゃうとか、細かいことは忘れるけど、劇的な問題はないね。" userName="throwaway77385" createdAt="2025/12/01 17:35:08" color="">}}




{{<matomeQuote body="それはAIが生成するスロップを嫌う気持ちを、‟misomechanistic‟って‟10ドルの単語‟で表現してるってことだね。面白いな。" userName="fvckai" createdAt="2025/11/30 14:54:22" color="">}}




{{<matomeQuote body="これ、まさに俺のコメントと全く同じだよ。PocketbaseはJSで拡張できるし、本当に良い作品だね。ただ、開発者が一人で、討論でも一人で返答してるから、将来がちょっと心配。彼はちょっと『ぶっきらぼう』なやり取りをするけど、みんなに引っ張り回されてる立場を考えると、すごく理解できる。バックエンドとフロントエンドを分離したい時には、本当に最高のツールだよ。" userName="BrandoElFollito" createdAt="2025/11/28 10:03:48" color="#45d325">}}




{{<matomeQuote body="オープンソースのメンテナーは燃え尽き症候群になる人が多いね。Pocketbaseがたった一人のメンテナーだとは知らなかったよ。製品に集中できるのは良いけど、シングルポイント障害になるリスクが心配だね。もし何かあったらプロジェクト全体がダメになる可能性もあるし。この点だけでもPocketbaseに過度に頼るのは躊躇しちゃうな。もし彼が時間がなくなってもコミュニティに引き継がれることを願うけど、結局50個ものフォークがバラバラになるのがオチだろうね。この問題の最適な解決策は何なんだろう？" userName="throwaway77385" createdAt="2025/11/28 13:08:52" color="#45d325">}}




{{<matomeQuote body="俺もいくつかオープンソースをメンテしてるけど、幸いなことにニッチだから圧倒されることはないよ。でもその苦労は分かる。フォークに関する君の意見は本当にその通りだね。いくつかのすごく良いアイデアが始まっても、途中で半ば放置されて互換性のないフォークが乱立して、最終的に全部ダメになるんだ。正しいモデルが何なのか、俺も全然分からないよ。" userName="BrandoElFollito" createdAt="2025/11/28 13:34:48" color="">}}




{{<matomeQuote body="どんな種類のプロダクションアプリでPocketbaseを使ってるの？他の人がどうしてるのか知りたいな。" userName="tajd" createdAt="2025/11/28 12:04:32" color="">}}




{{<matomeQuote body="一番規模が大きいのは地域ビジネスのディレクトリだよ。Pocketbaseが真価を発揮する、まさに中程度の複雑さのレベルだね。<br>ユーザー登録や認証、Stripeのサブスク（サブスクレベル別）、画像ギャラリー付きビジネスリスト、ビジネスの位置を示すマーカー付き地図、タグ、フィルタリング可能なビジネスカテゴリとタグなど、標準的な機能は全部揃ってる。<br>Pocketbaseのコレクションの扱い方からすると、Firebaseみたいに無限にネストできるわけじゃないから、データはあまりネストしない方がいいだろうね（JSON型フィールドを使えば深くネストすることも可能だけど）。<br>だから、複数のクライアントが大量のネストされたデータを持つような場合、「クライアント」コレクションの中にさらに多数のコレクションを持たせることはできないんだ。コレクションは一階層だけで、その中の各アイテムがフィールドを持つ形になる。これは中程度の複雑さならうまくいくけど、数レベルのネストが必要なCMSなんかだと複雑になる可能性があるね。" userName="throwaway77385" createdAt="2025/11/28 13:13:10" color="#ff5c5c">}}




{{<matomeQuote body="「SQLiteはスケールしない」っていう議論は、大抵の場合、時期尚早な最適化が معم (architectural wisdom) のフリしてるだけだろ。現代のNVMeでWALの競合限界にぶつかるなんて、驚くほど難しいんだから、分散型の複雑なシステムなんかより、単一バイナリの運用 simplicité が毎日でも勝つわ。俺たちは、あらゆるサイドプロジェクトが専用のDBクラスターとRedisキャッシュを「必要」とする複雑さの税金に慣れすぎてるんだよ。Pocketbaseは、99%のCRUDアプリにとってのボトルネックはDBじゃなくて、ネットワーク遅延と、開発者がk8sマニフェストの管理に費やす時間だってことを証明してる。" userName="leo_e" createdAt="2025/11/28 16:43:01" color="#ff33a1">}}




{{<matomeQuote body="ほとんどのアプリのボトルネックは、技術的なボトルネックに到達するのに十分なユーザーを獲得することだよ。" userName="davidron" createdAt="2025/11/28 19:28:03" color="">}}




{{<matomeQuote body="俺はPocketBaseをプロダクションで使ったことがあるよ。adminページがすべての注文をロードするせいでDBの問題にぶつかったんだ。5000件を超えててね。読み取り専用操作としてはそんなに多くないと思ったけど、5人のスタッフが30秒ごとにロードすると、たまに10〜30秒もかかってすごく遅くなったんだ。速いVultrサーバーに変えても改善されなかったね。サーバー側で検索するようにadminページを再設計しろって勧められたけど、当時は無理だった。PocketBaseでの開発は楽しかったし、デベロッパーもとても親切で、素早く役立つ返信をくれたよ。弟は結婚式のウェブサイトをこれで作成してた。小さなプロジェクトには素晴らしいね。もっと高いパフォーマンスが必要な場合は、テストして設計を見直す必要があるよ。" userName="mdnahas" createdAt="2025/12/05 01:55:31" color="#ff5c5c">}}




{{<matomeQuote body="今はもう状況が違うよ。「ユーザー」はrobots.txtを尊重せず、自己スロットリングも適用しない悪意のあるAIクローリングボットの形で現れるからね。" userName="martin82" createdAt="2025/11/29 06:12:56" color="#ff5c5c">}}




{{<matomeQuote body="俺は一番安いDigital Ocean Dropletで個人ブログをSQLiteでセットアップしたんだ。トラフィックはそんなにないし、こういうプロジェクトにはSQLiteが最高の選択肢だと思うね。RustのCLIツール（名前は今思い出せないけど、Apache Benchみたいなやつ）でベンチマークもしてみたんだ。同じマシンでMySQLやPostgresを動かすよりも、高いパフォーマンスは得られなかっただろうね。" userName="9notorp" createdAt="2025/11/28 18:31:37" color="#ff33a1">}}




{{<matomeQuote body="ブログみたいに98%が読み込みのユースケースなら、SQLiteは理想的だね。" userName="jitl" createdAt="2025/11/28 18:42:21" color="">}}




{{<matomeQuote body="HA（高可用性）の方がスケールより重要って話。みんなが分散化を選ぶのは、スケールのためっていうよりHAのためなんだ。スケールはHAの副次的なメリットでしかないからね。" userName="roncesvalles" createdAt="2025/11/29 09:18:57" color="#ff5c5c">}}




{{<matomeQuote body="AWSなら専用DBクラスタやRedisキャッシュを3クリックで構築できるし、ポイントインタイムリカバリやレプリケーション、自動フェイルオーバー、稼働時間の保証もある。もし深夜3時にPocketbaseサーバーがクラッシュしたらどうするの？SupabaseはPostgresを使ってるし、商用アプリでPocketbaseをSupabaseより優先する強い理由は見当たらないよ。Supabaseには手厚い無料枠もあるし、スケールもセルフホストもできるからね。" userName="odie5533" createdAt="2025/11/29 06:51:02" color="#38d3d3">}}




{{<matomeQuote body="うん、3クリックでアプリに途方もない複雑さを追加できるってわけだ。でも、それって本当にすべきこと？俺の経験では、世間が言う「夜中のクラッシュ」の方が、AWSの複雑さとコストよりはるかにマシな問題であることが多いんだ。" userName="zoul" createdAt="2025/11/29 07:12:36" color="#38d3d3">}}




{{<matomeQuote body="AWSの専用DBクラスタとRedisキャッシュって？それこそ「時期尚早な最適化のラスボス」だろ。" userName="danlugo92" createdAt="2025/11/29 11:57:51" color="">}}




{{<matomeQuote body="個人的には、SQLiteにDecimal型がないのが使えない理由。金融系の処理を完全にアプリ側でやるのは面倒すぎるよ。" userName="denismenace" createdAt="2025/11/28 18:45:01" color="#38d3d3">}}




{{<matomeQuote body="米ドルでの金融取引って、多くの場合は整数（ペニー単位）で保存されてるんじゃない？表示する必要があるときにDecimalに変換すればいいだけだよ。どんなデータベースを使っても、これって結構普通だと思うけど。" userName="benjaminoakes" createdAt="2025/11/28 19:12:26" color="#ff5c5c">}}




{{<matomeQuote body="多くの場合、BigIntに変換されて文字列として保存されるよ。そうすれば、異なる言語が実際の値をいじくり回すのを防げるからね。" userName="fermuch" createdAt="2025/11/29 00:01:21" color="#ff5733">}}




{{<matomeQuote body="君は金融系のものしか作らないの？SQLiteがこの一つの特定のユースケースで最適じゃないってだけで、SQLite全体がダメってことになる意味がわからないな。" userName="cweagans" createdAt="2025/11/29 04:58:43" color="">}}




{{<matomeQuote body="いや、全然そうじゃないんだ。でも、多くのアプリでいつの間にかデータベースに通貨を保存する必要が出てくるんだよね。請求とか他の機能で関連してくるんだ。アプリ自体が金融系じゃなくてもね。" userName="denismenace" createdAt="2025/11/30 15:22:59" color="#45d325">}}




{{<matomeQuote body="Decimal型もだけど、DATETIME型もね。SQLiteをキーバリュー ストアとして使うだけなら、これらのワークアラウンドで問題ないけど、SQLクエリ内でそれらの変換をするのはひどい音に聞こえるよ。" userName="burky" createdAt="2025/11/28 19:09:11" color="#785bff">}}




{{<matomeQuote body="多くの人は”SQL”をちゃんと使ってないよな。ORMとかで抽象化されたSQL構文で基本的なCRUD操作してるだけだし。ACIDのためにSQL DBが欲しいだけだろ。もしデータ型を気にしたり、クエリを自分で書いたりするなら、ちゃんとしたDBサーバーを立てるべきだよ。" userName="mike_d" createdAt="2025/11/28 19:59:28" color="#45d325">}}




{{<matomeQuote body="良いアーキテクチャがあれば、SQLiteもかなり使えるぜ。でもしっかりしたアーキテクチャがないと、すぐに限界が来るけどな。だから、アーキテクチャに詳しい人はSQLiteで素晴らしいものを作れる。SQLiteに警告するやつらは、大抵アーキテクチャを気にせず適当につなぎ合わせるタイプだ。" userName="arendtio" createdAt="2025/11/29 07:41:33" color="#38d3d3">}}




{{<matomeQuote body="Pocketbase、個人的なプロジェクトや社内ツールでめっちゃ使ってるよ。https://pocketpages.dev/と組み合わせてファイルベースルーティングとかテンプレートも使ってる。あと、PocketbaseはDBマイグレーションも自動でやってくれるから、スキーマ変更もバージョン管理できるのが良いね。Geminiプロトコルサーバーもハックして、Lagrangeで個人知識グラフを見てるんだ。" userName="olav" createdAt="2025/11/28 08:27:46" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Pocketbaseのパフォーマンスってどんな感じ？Raspberry Pi 5で自宅ホスティング考えてるんだけど。Supabaseと比べて、変わった制限とか何か目立つことある？" userName="8cvor6j844qw_d6" createdAt="2025/11/28 18:03:06" color="">}}




{{<matomeQuote body="僕が答えるべきじゃないかもしれないけど、これ、家で使うには完璧だよ。OSSのホームラボダッシュボードもいくつかあるし、そういう目的で作られてるんだ。僕はHome Assistantのやつを動かしてるよ。" userName="F7F7F7" createdAt="2025/11/28 19:35:22" color="">}}




{{<matomeQuote body="Postgres/Supabaseよりずっと軽いよ。Pi-5で動かしてるけど、完璧にうまくいくね。" userName="rekttrader" createdAt="2025/11/28 20:01:08" color="#ff33a1">}}




{{<matomeQuote body="Lagrangeって何？LLMとかナレッジグラフの文脈でプロジェクトが見つからないんだけど。" userName="phl" createdAt="2025/11/28 08:35:45" color="">}}




{{<matomeQuote body="彼らがGeminiサーバーをハックしたって言ってたでしょ、LagrangeはGeminispaceブラウザだよ。https://github.com/skyjake/lagrange" userName="foul" createdAt="2025/11/28 08:47:20" color="#45d325">}}




{{<matomeQuote body="僕もそう思ったよ。Geminiプロトコルは知ってるけど、ほとんどの場合”Gemini”って聞いたらGoogleのLLMのことだと思うから、そうじゃないとびっくりするんだよね。" userName="TeMPOraL" createdAt="2025/11/28 15:06:47" color="">}}




{{<matomeQuote body="Geminiプロトコル用のミニマリストブラウザLagrangeってのがあるんだけど、多分それのこと言ってるんじゃないかな。" userName="andsoitis" createdAt="2025/11/28 08:43:04" color="">}}




{{<matomeQuote body="誰もLLMって言ってないのに、なんで「LLM関連だろ」って決めつけてるの？おかしいよ。" userName="throwaway290" createdAt="2025/11/28 11:57:53" color="">}}




{{<matomeQuote body="Google GeminiとGeminiプロトコルを間違えてるね。Googleのせいで、プロトコルの方が名前を変えないといけなくなるかもよ。" userName="stareatgoats" createdAt="2025/11/28 12:36:03" color="">}}




{{<matomeQuote body="これはGUIで設定できるバックエンドサーバーだよ。ほとんどコードなしでバックエンドが作れるから、プロトタイプやMVPs、シンプルなアプリに最適。Firebaseが流行らせたコンセプトだね。" userName="olalonde" createdAt="2025/11/28 07:00:49" color="#38d3d3">}}




{{<matomeQuote body="実際何ができるの？俺が書いてるバックエンドは何千行ものコードがあるんだけど、どうやってそれらをなくせるの？どんな種類のアプリがこれで構築できるのか教えてよ。" userName="dotancohen" createdAt="2025/11/28 07:34:55" color="">}}




{{<matomeQuote body="これはFirebaseやSupabaseの代替だよ。自分で作る方がいい場合もあるけど、これならバイナリ一つで認証とかすぐに使えるようになる。Firebaseと違ってどこでも動かせるし、Supabaseと違ってたくさんのコンテナもいらないのがメリットだね。" userName="input_sh" createdAt="2025/11/28 07:55:01" color="#38d3d3">}}




{{<matomeQuote body="よくあるCRUDバックエンドと同じこと（RESTやリアルタイムAPI、認証、認可、検証とかね）ができるよ。例えば、クラウドと同期するシンプルなTodoモバイルアプリとかに使える。ただ、システムがサポートしてない要件が出てきたら、結構困るかもね。" userName="olalonde" createdAt="2025/11/28 07:54:43" color="#785bff">}}




{{<matomeQuote body="そうかもしれないけど、ドキュメントをしっかり確認して要件を洗い出すのは大事だよ。Pocketbaseは拡張性がすごいから、たいていの機能は20行くらいのコードで追加できちゃうんだ。" userName="d1sxeyes" createdAt="2025/11/28 07:58:31" color="#38d3d3">}}




{{<matomeQuote body="これってDjangoやRailsと同じようなもんで、モデルをGUIで定義するだけってこと？ビジネスロジックは結局ちゃんとしたフレームワークやプログラミング言語に任せるなら、かなりニッチで限界があるように思えるけど。" userName="ezst" createdAt="2025/11/28 11:59:52" color="">}}




{{<matomeQuote body="いや、モデルやDBマイグレーションも全部コードで設定できるよ。GUIは単に便利だからあるだけ。" userName="shagrath" createdAt="2025/11/28 12:53:32" color="#38d3d3">}}




{{<matomeQuote body="PocketbaseはDjangoとは別物で、WagtailとかPayload、Craftみたいな高機能なCMSじゃなくて、すごくシンプルだけどよくできたCMSだよ。" userName="evantbyrne" createdAt="2025/11/28 14:25:03" color="">}}




{{<matomeQuote body="あなたの意見はよく分かんないな。Pocketbaseはバックエンドをサッと立ち上げるための親しみやすいGUIとして設計されてるんだ。あなたのユースケースには合わないかもしれないけど、多くのユースケースに合うし、思ってるよりも多機能だよ。ニッチで制限的だなんて言うのは、このすごいソフトウェアに対して失礼じゃないかな。" userName="d1sxeyes" createdAt="2025/11/28 13:28:40" color="">}}




{{<matomeQuote body="SupabaseやFirebaseがニッチで制限的なのと一緒で、Pocketbaseもニッチで制限的なんだよ。" userName="F7F7F7" createdAt="2025/11/28 19:37:09" color="">}}




{{<matomeQuote body="サイドプロジェクトでPocketbaseを試してるんだけど、超感動してるよ！長年Djangoプロジェクトをやってきたけど、小中規模のプロジェクトで従来のバックエンドを作りたくない時にはPocketbaseがぴったりだね。何か質問あったら答えるよ。" userName="Humphrey" createdAt="2025/11/28 06:52:39" color="#ff5733">}}




{{<matomeQuote body="DjangoはGIS統合が素晴らしいけど、Pocketbaseはどうなの？PostgreSQLと連携できるのかな？それともSQLiteだけ？" userName="JodieBenitez" createdAt="2025/11/28 07:31:28" color="#785bff">}}




{{<matomeQuote body="SQLiteだけだよ。GIS統合は見たことないな。Pocketbaseは「機能がないこと」と「軽量であること」が必要な時に選ぶべきだと思うよ。" userName="Humphrey" createdAt="2025/11/28 08:37:07" color="#ff5c5c">}}




{{<matomeQuote body="PostgresにPostGISがあるように、SQLiteにはSpatialiteがあるよ。URLはhttps://www.gaia-gis.it/fossil/libspatialite/index。Pocketbaseとの統合は確かじゃないけど、多分できると思う。" userName="zeckalpha" createdAt="2025/11/28 15:30:01" color="#785bff">}}




{{<matomeQuote body="既存のSQLiteベースのバックエンドから、どれくらい簡単にPocketbaseに移行できる？" userName="jdthedisciple" createdAt="2025/11/28 07:31:47" color="#785bff">}}




{{<matomeQuote body="試したことはないけど、Pocketbaseはスキーマの構造にこだわりがあるし、スキーマを管理するツールとして使う必要があるんだ。だから、俺ならAdmin UIで似たようなデータ構造のDBを新しく作って、サードパーティツールを使ってデータを選んで新しいデータベースに入れると思うよ。" userName="Humphrey" createdAt="2025/11/28 08:46:24" color="#785bff">}}




{{<matomeQuote body="社内のナレッジベース（KB）としてPocketbaseは使えるかな？15～20人くらいのテックチーム向けなんだけど。" userName="Omie6541" createdAt="2025/11/29 08:02:53" color="">}}




{{<matomeQuote body="Pocketbaseはアプリ開発向けだよ。ナレッジベースを作るなら、ConfluenceやNotion、https://www.getoutline.com/、https://clickup.com/みたいに既存のツールを使えばいいじゃん？無料のセルフホスト型もあるしね。" userName="odie5533" createdAt="2025/11/29 18:01:04" color="#ff5c5c">}}




{{<matomeQuote body="個人のサイドプロジェクトで使ってるんだけど、LLMがPocketbaseの操作でいつも混乱するんだよね。Claude Skillを作って混乱を減らそうとしてもダメだった。他の人も似た経験ある？" userName="parkersweb" createdAt="2025/11/28 08:18:20" color="">}}




{{<matomeQuote body="PocketbaseのFAQには「ドキュメントを読まずにAIツールに頼るつもりなら、Pocketbaseは使わないで！」って書いてあるよ。ニッチでアルファ版、しかも頻繁に変わるから、LLMがうまく扱えないのは当然でしょ。" userName="input_sh" createdAt="2025/11/28 09:11:31" color="#ff5733">}}




{{<matomeQuote body="LLMにPocketbaseのサーバーサイドコーディングを手伝ってもらおうとしたけど、ほとんどダメだったな。LLMはPocketbaseのAPIを最新の状態に保てないみたい。3回に2回はヒントをくれるけど、結局手動でコードを直したり、ドキュメント読んだり、ソースコードを見たりする羽目になるよ。まあ、いい“ペアプログラミング”くらいの経験かな。頼りにはならないね。" userName="p2detar" createdAt="2025/11/28 09:24:46" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="私がやった方法はこれだよ…Pocketbaseのリポジトリをクローンして、agents.mdに参照を追加するんだ。さらに自分のメモをaddendum.mdに入れて、クローンしたリポジトリのラインに置いた。そうしたらChatGPT-codexのバリアントがほぼ完璧に扱ってくれて、情報が古い問題もなかったよ。このパターンは他の“ニッチ”なライブラリにも使ってる。" userName="catketch" createdAt="2025/11/28 20:04:25" color="#785bff">}}




{{<matomeQuote body="Pocketbaseについてはあまりドキュメントを見る必要がないから、LLMで困ったことはないんだけど、LLMがいつも間違える分野って他にもたくさんあるよね。例えば、ChatGPTはDavinci ResolveのUIの使い方も、ほとんど正確に教えてくれたことがないよ。" userName="Humphrey" createdAt="2025/11/28 08:50:59" color="">}}




{{<matomeQuote body="OpenSOHOをPocketbaseを使って作ったんだけど、すごく時間節約になったよ！バックエンドを再利用するために少し改造したけど、それほど難しくはなかったな。スクリーンショットを見れば、Pocketbaseがベースだってすぐわかるはず。https://github.com/rubenbe/opensoho/" userName="rubenbe" createdAt="2025/11/28 07:31:23" color="#45d325">}}




{{<matomeQuote body="Pocketbaseは最高だね。サイドプロジェクト（https://kavla.dev/）の認証レイヤーとして使ってるよ。フックも素晴らしいし、インフラの起動みたいな、わりと複雑なことも簡単にできるんだ。https://pocketbase.io/docs/go-event-hooks/" userName="aleda145" createdAt="2025/11/28 07:42:09" color="#785bff">}}




{{<matomeQuote body="TrailbaseもPocketbaseと同じコンセプトだけど、GoじゃなくてRustで書かれているよ。" userName="rubenvanwyk" createdAt="2025/11/28 05:55:13" color="">}}




{{<matomeQuote body="TrailBaseがPocketbaseとの比較ページを出してるよ。見てみて！https://trailbase.io/comparison/pocketbase/" userName="odie5533" createdAt="2025/11/28 06:08:13" color="">}}




{{<matomeQuote body="TrailBaseの比較ページ、すごく丁寧で謙虚だね。Supabaseとの比較もそう。客観性はまだ不明だけど、注目しちゃったよ。謙虚さが弱点と見なされがちな世の中で、こんな素敵な記事に出会えるのは本当に嬉しいね。素晴らしい！" userName="cyco130" createdAt="2025/11/28 06:19:29" color="#785bff">}}




{{<matomeQuote body="ありがとう！まさに巨人の肩の上に立っている感じだよ :heart:" userName="trailbase" createdAt="2025/11/28 10:30:35" color="">}}




{{<matomeQuote body="謙虚さの話だけど、GenAIツールが進歩するにつれて、状況は逆転すると思うな。個人的には読書時間が減ってきてるし、著者をリスペクトしてないと、GenAIが作った安っぽいコンテンツは読まないようにしてるよ。" userName="rahulroy" createdAt="2025/11/28 08:33:47" color="#38d3d3">}}




{{<matomeQuote body="未来の悲観的な話は置いといて、今は純粋に喜ぼうよ！" userName="jama211" createdAt="2025/11/28 17:51:23" color="">}}




{{<matomeQuote body="TrailBaseの誠実さは評価するけど、UIに関してはPocketbaseに軍配が上がるね。PocketbaseのAdmin UIは品質が高くて、配慮も感じられる。TrailBaseは（特にモバイルで）ちょっと雑に見えるし、bootstrap使ってるみたいだ。" userName="rudedogg" createdAt="2025/11/28 06:17:47" color="#ff33a1">}}




{{<matomeQuote body="PocketBaseのUIが素晴らしいって意見には全く異論ないよ。俺はshadcnっていうUIコンポーネントシステムを使ってるんだけど（ちょっとbootstrapに似てるかも）、GaniさんみたいなUXデザイナーじゃないからさ、もし改善点があったらぜひフィードバックがほしいな。PocketBaseのUIはモバイルだと横スクロールが必要だったと思うんだけど、TrailBaseは少なくともモバイルでちゃんと使えるようにしたつもりなんだよね。よかったらもう少し詳しく教えてくれないかな？ありがとう！" userName="trailbase" createdAt="2025/11/28 10:11:08" color="#ff5c5c">}}




{{<matomeQuote body="詳細だけど、モバイルを縦向きで使った時、行編集をクリックすると画面全体じゃなくモーダルで表示されるのがちょっと変なんだ。それに、入力欄がパディング不足で少し切れてるし、Admin UI全体がiPhoneの縦向きだとナビバーのアイコンのせいで画面からはみ出して、横スクロールが必要になっちゃうんだよね。あと、デモユーザーのID＼パスワードを最初から入力しておいてくれると便利かも。<br>でも、プロジェクトはめちゃくちゃクールだし、Rustによるパフォーマンスの恩恵はすごいね！" userName="rudedogg" createdAt="2025/11/28 19:42:33" color="#ff5733">}}




{{<matomeQuote body="ありがとう！最高のフィードバックだよ。本当に感謝してる。" userName="trailbase" createdAt="2025/11/30 10:01:05" color="">}}




{{<matomeQuote body="FYIだけど、shadcnって好きなようにスタイルやテーマを設定できるんだぜ！" userName="Natfan" createdAt="2025/11/28 22:02:42" color="#45d325">}}




{{<matomeQuote body="Pocketbaseの管理UIはスマホに全然最適化されてないんだよね。" userName="input_sh" createdAt="2025/11/28 07:25:41" color="">}}




{{<matomeQuote body="Trailbaseは例にcurlコマンドを省かなかったから、すごく気に入ったよ :)" userName="elfrinjo" createdAt="2025/11/28 10:48:28" color="">}}




{{<matomeQuote body="Pocketbaseから始めたんだけど、SQLiteベースなのにNULLABLEカラムをサポートしてないのが問題になり始めて、少し前にTrailbaseに切り替えたんだ。" userName="vunderba" createdAt="2025/11/28 16:17:32" color="#ff5c5c">}}




{{<matomeQuote body="Trailbaseってどう？切り替える価値あった？" userName="Humphrey" createdAt="2025/11/28 22:57:46" color="">}}




{{<matomeQuote body="DBの切り替えはすごく大変だよね。アプリケーションの基盤変更はもっと大変だよ。PocketBaseに満足してて、特に困ってないなら、切り替える必要はないと思うな。何か探してることある？" userName="trailbase" createdAt="2025/11/30 10:52:19" color="#ff5c5c">}}




{{<matomeQuote body="なかなか良さそうだね！エンドポイントでJavaScriptも実行できるってこと？これでアプリ全体をホストできそうだね。https://trailbase.io/getting-started/first-ui-app/#custom-en..." userName="raybb" createdAt="2025/11/28 07:37:49" color="#ff5733">}}




{{<matomeQuote body="「どんなJavaScriptでも」っていうのが何を指すかによるね。多くのJavaScriptエコシステムは環境に依存するんだ。ブラウザ環境、Node.js、Deno、Bunといったサーバー環境とかね。<br>簡単に言うと、普通のJavaScript（ES5、ES6、多分CommonJSも）なら実行できるはずだよ。WASMランタイムを通じてI/Oを行う標準WASI APIと、いくつかのTB固有APIがあるんだ。" userName="trailbase" createdAt="2025/11/28 10:02:45" color="#45d325">}}




{{<matomeQuote body="それならPocketbaseの別のセールスポイントになるね。" userName="odiroot" createdAt="2025/11/28 11:09:10" color="">}}




{{<matomeQuote body="Pocketbaseの大ファンだよ。でもSQLiteのバックアップが思ってたよりストレスだったんだ。Pocketbaseが動いてる間にsqlite3_rsyncでバックアップできるプラグアンドプレイな方法が欲しくて、これを作ってるんだ：https://sqlrsync.com。MVPは動くよ。フィードバックくれたら嬉しいな。" userName="rfc2324" createdAt="2025/11/28 10:18:59" color="#38d3d3">}}




{{<matomeQuote body="SQLiteへの愛が見れて嬉しいな。個人的にはLitestreamで素晴らしい経験をしてるよ、これは変更を継続的に複製してくれるんだ。君はhttps://sqlite.org/rsync.htmlを使ってるの？" userName="trailbase" createdAt="2025/11/28 11:10:36" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
