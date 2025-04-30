+++
date = '2025-04-22T00:00:00'
months = '2025/04'
draft = false
title = 'Supabaseすげえ！爆速成長で270億円調達！アマチュアエンジニア救済なるか？'
tags = ["Supabase", "資金調達", "データベース", "ノーコード", "開発効率化"]
featureimage = 'thumbnails/purple4.jpg'
+++

> Supabaseすげえ！爆速成長で270億円調達！アマチュアエンジニア救済なるか？

引用元：[https://news.ycombinator.com/item?id=43763225](https://news.ycombinator.com/item?id=43763225)




{{<matomeQuote body="l33t h4x0rs様はSupabaseのことアマチュア向けだって思ってるかもだけどさー、元エンジニアでサイドプロジェクト再開した身としては、Supabaseマジ最高。マジで求めてたやつ。去年使い始めてから一番のお気に入り。ターミナルに住みたくない人たち向けのTAM作って、めっちゃ稼いでほしいわ。" userName="hackitup7" createdAt="2025/04/22 15:38:38" color="#45d325">}}




{{<matomeQuote body="HasuraとPostgRESTをエンタープライズとかスタートアップのデカいプロダクションアプリで数年使ってるけど、マジな問題はバックエンドエンジニアが脅威に感じてるってことだけだわ。CRUD APIの95%をハックなしでカバーできるマジもんのツール。エンジニアにとっても良いツールだよ。別にvibe codingとかAIとかじゃなくて、毎回CRUDバックエンドを再発明するのがマジで無意味ってこと。" userName="whstl" createdAt="2025/04/22 17:13:24" color="#ff5c5c">}}




{{<matomeQuote body="このコメント探してたわ。技術知識ない家族がテックプロジェクトやってて、Lovable.devにSupabaseをバックエンドとして組み合わせたら、マジで魔法みたいだった。ターミナルいじったり、Postgres立てたりする手間が一切ないのがデカい。技術者って、技術知識ない人がフード開けずに色々できるようになると、物事がどれだけ早く進むかを過小評価しがちだよね。" userName="sebastiennight" createdAt="2025/04/22 16:12:41" color="#45d325">}}




{{<matomeQuote body="技術知識ない人がすぐにプロトタイプ作れるのは良いことだけど、セキュリティホールとか分かりにくいバグがある状態でプロダクションに投入するのはマズい。見た目が良いと勘違いしがち。DelphiとかVisualBasicのRAD時代からずっとそう。" userName="giantrobot" createdAt="2025/04/22 16:40:35" color="">}}




{{<matomeQuote body="Supabaseを結構使ってるんだけど、マジで何なのかよく分かってないんだよね。Postgresに拡張機能とPostgrestがバンドルされてて、データベースUIもある。ホストされてて、ローカルでも動く。ローカルで動かすのは色々問題があるから、Docker Composeでパーツを別々に動かした方が楽だった。それなら、Supabaseじゃなくて、拡張機能付きのホスト型Postgresを使う理由ってある？プロダクトストーリーがマジで分かりにくい。" userName="highwaylights" createdAt="2025/04/22 18:10:59" color="">}}




{{<matomeQuote body="ベテランバックエンドエンジニアだけど、Hasuraを仕事で使ってる。プロトタイプをプロダクションに持っていくのは良いし、ソロデベロッパーでも解決できるビジネス上の問題を解決できる。でも、エンジニア2人目からはマジで大変。長期的な戦略としては無理そう。Hasuraしか使ったことないけど、セキュリティがマジでヤバくて、アンチパターンを強制される。スキーマが全部公開されるし、ビジネスロジックはフロントエンドに押し込まれる。他のサービスがデータにアクセスする必要があるのに、安全にアクセスできない場合は、余計なネットワークホップが発生する。VCがリターンを要求したり、会社が今のバージョンを維持する価値がないと判断した場合、どうなるか分からない。" userName="TSiege" createdAt="2025/04/22 18:16:21" color="">}}




{{<matomeQuote body="PostgRESTはビューとかのユースケースには良いんだけど、ユーザーにデータベースへの直接アクセスを許可したくないんだよね。RLSポリシーで制御できるけど、メール認証が必要になった場合、データベース外でループが発生して、データベースの整合性を保護できない。pg_netでwebhookを使えるけど、トリガーが増えて、ビジネスロジックがSQLに閉じ込められる。CRUDアプリでも、データベース外で色んなことが起きて、マジで面倒になる。" userName="highwaylights" createdAt="2025/04/22 18:19:10" color="">}}




{{<matomeQuote body="昔は、デザインとワークフローのプロトタイプって呼んでた。実際のフローとコンセプトが終わるまで技術的なコンポーネントに対処しなくて済むようにね。今は、ニーズを満たしてるかどうかも分からないプロトタイプを「生成」して、それを最終版として進めてる気がする。InvisionとかMarvelとかFigmaとかの良いところは、アイデアとフローをしっかり固めて、開発者がコードに飛び込んで何百回もイテレーションするのを避けることだった。これは開発において大きな進歩で、PMとかUI/UXの役割ができた。今はAI生成ツールで、計画のワークフローとかを無視して、直接コードプロトタイプに戻ってる気がする。" userName="asnyder" createdAt="2025/04/22 17:50:56" color="">}}




{{<matomeQuote body="メール認証が必要になった場合は、CRUD APIでカバーできない5%のケースに遭遇したってこと。普通のendpointを使えば良いじゃん。PostgRESTを使い続ければ時間を節約できる。5%のケースに対応できないからって、全部捨てる必要はない。釘とネジがあるように、ハンマーとドライバーを同時に使えるってこと。" userName="whstl" createdAt="2025/04/22 18:34:03" color="#ff5733">}}




{{<matomeQuote body="面倒くさいフェーズなんて必要ない。特にFigmaにバックエンドを繋げるにはコーディングが必要だし。vibe codingで完全に動くUIとバックエンドを作った方が手間がかからない。計画したり、UIを個別にイテレーションする必要なんてないじゃん。できる人は10倍速くできるし、コード書けない人でもアイデアを市場に出せる。" userName="_zoltan_" createdAt="2025/04/22 18:18:43" color="">}}




{{<matomeQuote body="「技術に詳しくない人がセキュリティホールだらけのプロトタイプをそのまま本番環境に投入しちゃうのはヤバい」って意見には反対だな。むしろ、技術者じゃない人が何かを本番に投入するって最高じゃん！多くの人にとって、それが社内ツールを完成させる唯一の手段なんだから。それに、そうやってるうちに買い手や資金が集まって、セキュリティホールとかを直してくれる”本物の”開発者を雇えるようになるかもしれないし。別に”ベテラン開発者”だってセキュリティホール作らないわけじゃないし。ほら、ちょっと前にあった超有名な出会い系アプリだって、共有された写真とか会話が全部見れちゃうっていうヤバい問題があったじゃん。プロの技術チームがIDの列挙に対する対策を怠ったせいで。" userName="sebastiennight" createdAt="2025/04/22 17:07:21" color="">}}




{{<matomeQuote body="セキュリティが甘いアプリに登録したユーザーが、データを盗まれたり、身元を特定されたりする可能性はどうなるの？そういう事がすでに起こってるからって、素人が専門家だって勘違いするのを助長して、セキュリティ意識をさらに低下させるのは良くないでしょ。多くの人がソフトウェアを開発できるようになるのは良いことだけど、デメリットがないわけじゃない。" userName="somebehemoth" createdAt="2025/04/22 17:19:58" color="#ff5733">}}




{{<matomeQuote body="Supabaseマジ最高。資金調達できて嬉しい！AmazonとかGoogleに買収されて台無しにされないか心配だったんだよね。開発者体験がマジで最高なんだよ。まるで俺の考えてること全部読んで、必要なものを簡単に作ってくれたみたい。<br>・ログイン処理がマジ優秀<br>・データベースも良い感じ<br>・ファイルストレージもある<br>・権限管理も全部いい感じ<br>・Realtimeもマジcool<br>・ドキュメントも最高<br>・SDKも最高<br>・サポートも最高<br>お願いだから売らないで。" userName="jonplackett" createdAt="2025/04/22 19:24:59" color="#785bff">}}




{{<matomeQuote body="フロントエンドに”ビジネスロジック”を置くように強制してるのはお前だけだよ。そういう技術を使えば便利に見えるかもしれないけど、エンジニアリングのルールは守らないと。フロントエンドはバリデーションとか、ラウンドトリップを避けるための重複したロジックを持つかもしれないけど、セキュリティに関わることとか、改ざんされてはいけないことは、サーバーに残しておくか、権限で保護する必要がある。SupabaseとかHasuraだけでほとんど全部ホストできるアプリケーションもあるんだから。そうじゃないからって、無理強いする必要はない。" userName="whstl" createdAt="2025/04/23 05:25:01" color="#ff5c5c">}}




{{<matomeQuote body="どこに問題があった？PostgRESTの部分？シンプルなクエリに使ってる？それとも複雑なビジネスロジックに使おうとしてる？PostgRESTは、本来の使い方をすれば最高だけど、他のツールと同じように、想定外の使い方をすると性能が発揮できない。釘をハンマーで叩く代わりに、ドライバーを使うようなもんだよ。" userName="whstl" createdAt="2025/04/23 05:46:54" color="">}}




{{<matomeQuote body="自動CRUD APIについてだけど、何が問題なの？普通のendpoint使えばいいじゃん。PostgRESTを使って時間を節約し続ければいい。" userName="DidYaWipe" createdAt="2025/04/23 05:27:07" color="">}}




{{<matomeQuote body="PostgRESTをアプリのバックエンドとして使う意味が分からん。アプリにクエリをハードコードするつもりはないから。サーバーがDB構造からアプリを分離するAPIを提供する。" userName="DidYaWipe" createdAt="2025/04/23 08:00:28" color="">}}




{{<matomeQuote body="業界を知ってると、みんなAIのプロトタイプをプロダクションに投入すると思うよ。過去にAIじゃないプロトタイプでも同じことしてたからね。メンテとかリファクタリングとかデバッグのためにベテランを入れた時に、引退したソロ開発者のスパゲッティコードベースより楽かどうかだね。" userName="sally_glance" createdAt="2025/04/22 16:52:39" color="">}}




{{<matomeQuote body="それって、こじつけじゃね？ほとんどのアプリは使われずにすぐ死ぬし、リスクの低いデータを少し集める程度。ノーブランドの会社に個人情報を渡すようなユーザーは、遅かれ早かれスパムとかフィッシング詐欺に引っかかる。" userName="conductr" createdAt="2025/04/22 22:40:09" color="">}}




{{<matomeQuote body="「なんでクエリロジックをクライアントアプリにハードコードするんだ？」って言ってるのはお前じゃん。そんなことしないってのがポイントでしょ。" userName="whstl" createdAt="2025/04/23 05:51:09" color="">}}




{{<matomeQuote body="俺のメッセージのどこに「クライアントアプリにクエリをハードコードする」って書いてあるんだよ？むしろ逆で、CRUDにはそういうツールを使って、フロントエンドを普通のバックエンドと同じように見せるんだよ。ダメなら普通のendpointを使えばいい。" userName="whstl" createdAt="2025/04/23 05:30:09" color="#38d3d3">}}




{{<matomeQuote body="「vibe coding」ツールの品質は、ひどい下請け業者レベル。経験豊富な開発者が修正できる可能性はあるけど、同じ問題が起きるだろうね。AIトークンで「vibe code」を推進した企業は、安く働かせようとするだろうし、無理な納期を要求するだろうね。" userName="giantrobot" createdAt="2025/04/22 19:52:36" color="">}}




{{<matomeQuote body="ああ、俺だよ。で、質問は変わらない。クライアントにクエリを作らせる以外に、自動生成HTTP APIのデータベースに対する意味って何？" userName="DidYaWipe" createdAt="2025/04/23 07:51:53" color="">}}




{{<matomeQuote body="Supabaseは大好きだけど、UIとバックエンドをvibe codeで作れるってのは、いずれ崩壊すると思う。" userName="biztos" createdAt="2025/04/22 20:42:36" color="#785bff">}}




{{<matomeQuote body="めっちゃ金あるやん。Supabase のイグジット戦略って何？単独でやっていけるビジネスモデルなの？最近は vibe coding って言っとけば金が集まるんだね。ちょっとでも関係あれば OK みたいな！" userName="otterley" createdAt="2025/04/22 15:25:13" color="">}}




{{<matomeQuote body="Series D ってことは、IPO より資金調達を選んだってことか。ユーザー数は 200 万人いるって言ってるけど、オープンコアだから有料ユーザーはどれくらいいるんだろ？業績あんまり良くないのかもね。ウォール街はビッグデータ以外のデータベースベンダーのことよく分かってないし、買収狙いかも。でも PostgreSQL ベンダーなんてゴロゴロいるから、どこが買うんだろ..." userName="candiddevmike" createdAt="2025/04/22 15:31:31" color="">}}




{{<matomeQuote body="ビジネス始めて 5 年も経つのに、＞ 長期的に持続可能なビジネスなのかって疑問に答えられないってマジ？新しいソリューション見つけたり、時代遅れの業界を破壊したりするのに、これって一番効率的な方法なの？" userName="diggan" createdAt="2025/04/22 15:33:25" color="">}}




{{<matomeQuote body="＞ Supabase のイグジット戦略って何？ 長期的に持続可能なビジネスなの？ ベストケースは買収、ワーストケースはプライベートエクイティかな。Supabase が株式市場に上場すると思う？ Cloudflare みたいに AWS を再現するとかしないと、上場は難しいかもね。分かんないけど。" userName="colesantiago" createdAt="2025/04/22 15:33:04" color="">}}




{{<matomeQuote body="＞ ビジネス始めて 5 年も経つのに答えられないってマジ？ まだまだ甘いね。Discord はもうすぐ 10 年になるけど、いまだに全然儲かってないのに、近いうちに IPO 検討してるらしいよ。" userName="jsheard" createdAt="2025/04/22 15:35:26" color="">}}




{{<matomeQuote body="Supabase は基本的に AWS Postgres の皮を被っただけ。趣味レベルの人とか小規模チームには人気だけど、大規模チームで使ってるところは知らないな。ビジネスが本格的になってきたら、自分で全部ホストした方がコスパ良いし。" userName="fakedang" createdAt="2025/04/22 15:38:30" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞ PostgreSQL ベンダーなんてゴロゴロいるから、どこが買うんだろ... Supabase の方が知名度は圧倒的に高いと思うけど。" userName="adamnemecek" createdAt="2025/04/22 15:43:24" color="">}}




{{<matomeQuote body="結局のところ、無料で手に入るものを売って、AWS の上に何かを乗っけてるだけだもんね。こういうビジネスモデルは、無料のプロダクトをゴミみたいにしないと持続可能じゃないけど、それもまた持続可能じゃない。AWS と良い契約してるんだろうけど、無料のプロダクトでかなり損してると思うよ。" userName="TechDebtDevin" createdAt="2025/04/22 16:23:23" color="">}}




{{<matomeQuote body="クラウドホスティングビジネスの根本的な考え方は、人々が自分で色々管理したくないってことだよね。" userName="adamnemecek" createdAt="2025/04/22 16:49:22" color="">}}




{{<matomeQuote body="Supabaseのプロダクトは良いと思うよ。基本的にはオープンソースソフトウェア上にbackend as a serviceプラットフォームを構築してるんだから。ただ、それを大規模に運用するのは簡単じゃないから、メンテのために人を雇う予定がないなら、有料プランを使うのが良いかもね。小規模な開発環境なら問題なく使えると思う。" userName="carlhjerpe" createdAt="2025/04/22 16:05:21" color="#ff5c5c">}}




{{<matomeQuote body="結構みんな払ってるよ。俺も複数のプロジェクトで払ってるし。Supabaseはかなり良いサービスだと思う。昔は開発と本番環境両方で使ってたけど、今は開発環境はNeonにしてる。本番環境はまだSupabase。mongoからSupabaseに乗り換えたんだよね。Neonに乗り換えるかもだけど、急いではないかな。Postgres以外にも色々提供してるけど、俺はPostgresしか使ってない。" userName="firtoz" createdAt="2025/04/22 17:35:20" color="#38d3d3">}}




{{<matomeQuote body="lovableとかbolt.newとかがSupabaseと連携し続ければ、たいして営業しなくても稼げると思うんだよね。AIツールって状態を保存する必要があるものが多いし、Supabaseはそれを提供してるじゃん。他の会社が同じようなこと始めてないのが不思議。" userName="clvx" createdAt="2025/04/22 15:39:40" color="#785bff">}}




{{<matomeQuote body="SupabaseとNeon両方使ってるってことだけど、Supabaseを本番環境で使い続ける理由って何かある？今日Neonにアプリ移行してみたんだけど（テストは簡単だった！）、オートスケール機能とかUIがマジ最高。Supabaseとの比較で何かあれば教えてほしい。" userName="drewnick" createdAt="2025/04/23 01:23:10" color="#45d325">}}




{{<matomeQuote body="GoogleのSpannerが明日オープンソース化されたらどうなるかって話だよ。現実的に、GoogleがGoogleのために作った超特殊なペルソナ向けのものを、どれだけの人がデプロイできるようになると思う？Amazonみたいな大企業が自社製品を改善するためにちょっと覗き見するくらいじゃない？価値はマネージドサービスってことだから、管理してもらうためにお金を払い続けるんじゃないかな。" userName="BoorishBears" createdAt="2025/04/22 18:22:53" color="">}}




{{<matomeQuote body="マジそれな。うちは月4桁ドル払ってるわ。5桁になったら改めて考えるけど、自分でホストする時間がない。" userName="ZiiS" createdAt="2025/04/22 16:55:20" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと頭回ってないんだけど、もしかして皮肉？apt-get install postgresqlって入力するの、15～30分もかからないじゃん。" userName="chasd00" createdAt="2025/04/22 20:29:02" color="">}}




{{<matomeQuote body="結局自分たちで色々管理することになるんだよね。しかも別の請求書も管理しなきゃいけないし。" userName="hirako2000" createdAt="2025/04/22 17:09:56" color="">}}




{{<matomeQuote body="SupabaseはPostgreSQLサーバー、pooler（最初はpgbouncerだったけど今は独自）、PostREST APIを提供してて、サポート、バックアップ、ロギングとかもやってくれるんだよね。マジなビジネスやってると、これらを自社で安定して運用する時間とか人員がない場合もあるから、助かるんだわ。Auth0レベルの認証機能とか、VercelみたいなEdge functions、S3みたいなストレージ（DBの権限システム共有）もあるし、Elixirで動くwebsocket/presence機能もある。少なくともウチにとっては、かなり魅力的なんだよね。" userName="ZiiS" createdAt="2025/04/22 17:04:25" color="#38d3d3">}}




{{<matomeQuote body="Discordはサブスクリプションで結構成功してて、数千万ドル稼いでるよ。0ドルってことは絶対にない。儲かってるかどうかは別として。" userName="hashamali" createdAt="2025/04/22 16:11:15" color="">}}




{{<matomeQuote body="マジなビジネスって何？Supabaseはめっちゃスケールすると思うし、ロックインもないし、もし特別なインフラが必要になったら自分で作って統合できるし。FDWを使って自分で運用してるPostgresにアクセスすることもできるかも。AWS postgresのプラグインは全部使えないけどね。全部自分でホストするのは、みんなが思ってるよりずっと大変だよ。心配なのは、Supabaseが倒産したり悪くなったりしたらヤバいってこと。でも、全部オープンソースだし。" userName="carlhjerpe" createdAt="2025/04/22 16:39:49" color="#ff5733">}}




{{<matomeQuote body="テック企業が黒字じゃなくても上場するのはよくあることだよ。成長率が良くて、どうやって黒字にするかっていうストーリーがあれば、普通は大丈夫。もちろん会社によって違うし、上場後に目標達成できないこともあるけど、多くの場合、黒字になるまで待つのはナンセンス。" userName="vecter" createdAt="2025/04/22 15:46:28" color="">}}




{{<matomeQuote body="前にいた会社ではRDS Postgresをたくさん使ってたけど、Supabaseも大好きだったよ。単なるホストDBじゃなくて、Webベースのテーブル編集、認証、エッジ機能、行レベルセキュリティ、簡単なフックとかトリガーとか、色々な価値があるんだよね。RDSを運用できたけど、開発にかかるコストが高かった。Supabaseは手頃な価格でめっちゃ簡単だったし、RDSやRedshiftとも簡単に連携できた。" userName="tootie" createdAt="2025/04/22 17:30:14" color="#ff5733">}}




{{<matomeQuote body="Discordはユーザーがめっちゃ増えてるから大丈夫でしょ。今やGoogleレベルで誰でも知ってる名前だし。サーバーをブーストしてる人もたくさんいるし、絶対儲かってるって。" userName="Aeolun" createdAt="2025/04/22 23:26:28" color="">}}




{{<matomeQuote body="買収狙い。VCからありえないくらいの金を集めて、買収かIPOを狙ってるんだよ。Supabaseも買収されそうだね。" userName="9283409232" createdAt="2025/04/22 15:35:13" color="">}}




{{<matomeQuote body="AWSは順調みたいだけど。" userName="adamnemecek" createdAt="2025/04/22 18:27:14" color="">}}




{{<matomeQuote body="マジなビジネスってのは、稼働時間と安定性を維持する必要があるってこと。俺だけじゃなくて、Supabaseのredditでも、プラットフォームのダウンタイムがヤバいって苦情がよく出てるんだよ。プロトタイプとかMVPには100%使うけど、本番環境？俺も他の人も触りたくないって人が多いと思う。君の経験は違うかもしれないけど。" userName="fakedang" createdAt="2025/04/22 20:41:11" color="">}}




{{<matomeQuote body="上場する必要がある理由の一つに、成長にはコストがかかるってのがあるよね。" userName="hirako2000" createdAt="2025/04/22 17:11:23" color="">}}




{{<matomeQuote body="Supabaseは裏で色々やってくれて、MVP作るにはマジ最高だけど、本番環境で使うのはまだ早いかな。ダウンタイムがたまにあるんだよね（ダッシュボードは大丈夫って言うけど）。Redditでも同じこと言ってる人多いし。お金いっぱい払ってると対応違うのかもね。" userName="fakedang" createdAt="2025/04/22 20:44:52" color="">}}




{{<matomeQuote body="Supabaseは200万人の開発者が使ってて、350万以上のデータベースを管理してるんだって。GoogleのFirebaseの代わりにPostgresをサポートしてる。目指してるのは、開発者と”vibe coders”のためのワンストップbackend。無料でサインアップできるけど、有料ユーザーはどれくらいいるんだろうね。認証が必要なデータの保存だけなら最高。サーバーサイドのロジックが必要になるとちょっと変。firebase functionsに比べるとSupabaseのedge functionsは洗練されてない気がする。セルフホスティングは色々大変だから、今は力を入れてないんだろうね。無料プランは残してほしいな。学習用には最高。" userName="999900000999" createdAt="2025/04/22 16:00:40" color="">}}




{{<matomeQuote body="セルフホスティングってそんなに大変？1年前だけど、docker compose upだけでローカルインスタンス立てて今も使ってるよ。起動時に自動で立ち上がるようにしてる。127.0で使ってるからSSEとかは試してないけど、ログ記録には完璧。" userName="NitpickLawyer" createdAt="2025/04/22 16:16:27" color="">}}




{{<matomeQuote body="URL付きのサーバーでホストするのは大変だよ。特定の文字列を生成しないと動かないんだ。ドキュメントにはどこにも書いてなくて、GitHubのissueでスクリプトを見つけたよ。それを環境変数に設定する必要がある。" userName="999900000999" createdAt="2025/04/22 16:43:05" color="">}}




{{<matomeQuote body="JWTトークンを正しく作ればいいだけの話みたい。クライアントライブラリを使わないなら、ドキュメントにも書いてあるよ。https://supabase.com/docs/guides/self-hosting/docker#generat..." userName="Zekio" createdAt="2025/04/22 18:06:47" color="">}}




{{<matomeQuote body="ドキュメントに書いてあるって言うけど、devopsがcomposeファイルで試したら、色々問題が出てきて数日かかったよ。セルフホスティング向けじゃないんだよね。もっと簡単にできるはずなのに。" userName="k4rli" createdAt="2025/04/22 22:52:32" color="">}}




{{<matomeQuote body="traefikを入れて、envファイルとcomposeファイルをちょっと変えて、docker composeで実行すれば1日でセットアップできるよ。メールサーバーとワイルドカードLE証明書は既にある前提だけど。studioを公開せずに、SSHポートフォワードでアクセスできるようにしてる。セルフホストはユーザーフレンドリーじゃないね。supabaseプロジェクトは1つだけだし。postgresで新しいテンプレートDBを作って、複数のプロジェクトをセットアップできるUIがあってもいいのにね。理由は明白だと思うけど。" userName="sureglymop" createdAt="2025/04/28 17:20:23" color="#ff5c5c">}}




{{<matomeQuote body="最近ちょっと良くなったけど、まだ面倒だよ。docker-compose stackがちゃんと起動しなかったり、誰かがヘルスチェックでミスしたり。PRレビューしてるのかな？新しいバージョンにアップグレードするのも大変。環境変数が追加されたり、名前が変わったり。スムーズにアップグレードできたことないよ。" userName="ctm92" createdAt="2025/04/23 22:55:11" color="">}}




{{<matomeQuote body="自分で証明書を使ってみて。Denoだと簡単だけど、Supabaseだと無理だった。ドキュメントにも書いてないし、本気で開発したいなら大問題だよ。" userName="DidYaWipe" createdAt="2025/04/23 04:35:49" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="自分でホストするなら、少なくともリバースプロキシを立てて、アクセスできるものを制御した方がいいよ。Traefikをポン付けすれば、LE証明書も自動で取得できるし、TLSをそこで終端できるし。" userName="sureglymop" createdAt="2025/04/28 17:22:52" color="">}}




{{<matomeQuote body="普通のPostgresだからね。全部フロントエンドで処理する必要はないんだよ。チュートリアルはRLSを学んでSDKを使うように勧めてくるけど、普通のサーバーサイドコードも書けるんだぜ。" userName="scosman" createdAt="2025/04/22 16:04:00" color="#ff5c5c">}}




{{<matomeQuote body="俺も小さいプロジェクトで、”service account”のクレデンシャルを使って全部やったことあるよ。普通のPostgres接続みたいに動くんだ。" userName="teaearlgraycold" createdAt="2025/04/22 16:14:03" color="">}}




{{<matomeQuote body="ユーザーをサポートしないならいいけど、Supabase authを使うなら、サービスアカウントでRLSをバイパスするのは、接続文字列をハードコーディングするようなもんだよ。" userName="balls187" createdAt="2025/04/22 16:16:36" color="">}}




{{<matomeQuote body="両方ちゃんと一緒に使えるんだぜ。サービスアカウントはサービス上だけでアクセスするべき。Auth+Serverを使うなら、Auth JWTでユーザー認証を確認できる（ドキュメント参照）。クライアントでサーバー接続を使うのはダメ。警告も多いしね。" userName="scosman" createdAt="2025/04/22 21:45:51" color="#ff33a1">}}




{{<matomeQuote body="マジで無料のホストされたPostgresデータベースとして使ってる。バックエンドで接続文字列を使ってクエリを実行してるだけ。" userName="groguzt" createdAt="2025/04/22 16:18:04" color="#ff33a1">}}




{{<matomeQuote body="ちょっと不安定なところがあるよね。特にSupabase、deno、TypeScriptの特定の組み合わせを設定するときとか（stage 2 vs stage 3 decoratorsとか）。" userName="balls187" createdAt="2025/04/22 16:14:23" color="">}}




{{<matomeQuote body="DjanjoがSupabaseの代わりになるってどういうこと？" userName="TechDebtDevin" createdAt="2025/04/22 16:20:17" color="">}}




{{<matomeQuote body="今のプロジェクトで基本的なゲームロジックを処理するためのバックエンドサーバーが必要なんだ。Firebaseで似たようなことをやったときは簡単だったけど、Supabaseは簡単じゃなかった。最終的にはできると思うけど、想定されたユースケースの外だと思う。Djangoの方が柔軟性がある。" userName="999900000999" createdAt="2025/04/22 16:50:38" color="">}}




{{<matomeQuote body="おめでとう、チーム！数週間前にSupabaseのローカルイベントでスピーカーを務めたよ。ナイジェリアのアブジャでローカルイベントを開催したんだ。そこでLaunch Week 14シリーズを宣伝し、Supabaseの新機能を紹介した。週末にSMEビジネス向けのクイックバックエンドを構築する方法を紹介するイベントになった。" userName="kaladin_1" createdAt="2025/04/22 15:54:45" color="#45d325">}}




{{<matomeQuote body="2024年の売上高は1680万ドル、2023年は1050万ドルと推定されてる。この成長率を元にすると今は2690万ドルくらいかな。別のソースだと2025年は1500万ドルらしいけど。仮にそのレンジだとすると、ARRマルチプルは66倍から133倍になるね。今のSaaS市場だと5-15倍くらいが普通じゃない？AIならもっと高いけど、SupabaseはAIじゃないし。でも、Supabaseは市場のリーダーだからボーナスが上乗せされるかも。それに、大口投資家たちがこぞってSupabaseに投資したがったから、評価額も上がったんだろうね。大きなエンタープライズ案件を獲得して成長を語ってるんじゃないかな。いろいろ仮定があるけど、ハイプも加味するとこの評価額も納得できるかもね。" userName="acrooks" createdAt="2025/04/22 16:59:57" color="">}}




{{<matomeQuote body="売上高が年間1500万ドルから2500万ドル程度の企業に20億ドルの評価額か。普通なの？信じられない。Supabaseは好きだけどね。" userName="jc_811" createdAt="2025/04/23 16:22:01" color="">}}




{{<matomeQuote body="サイドプロジェクトでSupabaseを使ってるんだけど、抜け出すのが大変なんだよね。一番の問題はコスト。細かい料金設定が多くて、気づいたら高くなってる。数千人のユーザーしかいないアプリで先月70ドルもかかった。ツール自体は好きだけど、料金体系が分かりにくい。" userName="k2xl" createdAt="2025/04/22 15:41:43" color="#ff33a1">}}




{{<matomeQuote body="似たような感覚。全部のサービスを使ってるわけじゃないんだけど、セルフホストも重くて不安定そう。結局、必要な部分だけAPIで構築して、マネージドPostgres DBにつなげたら、コストが10分の1になった。プロトタイピングには便利だけど、ビジネスの基盤にするのはちょっと不安かな。" userName="jamil7" createdAt="2025/04/22 15:47:41" color="">}}




{{<matomeQuote body="数千人のユーザーがいて月70ドル！？全然妥当じゃない？そのうち2人を月35ドルでマネタイズすればサーバー代はペイできるよ。自分で運用することもできるし、全部オープンソースだし。" userName="cpursley" createdAt="2025/04/22 22:07:09" color="">}}




{{<matomeQuote body="それも一つの考え方だけど、他のサーバー運用方法と比べると明らかに高いよ。同じくらいのユーザー数なら5ドルのVPSで十分。" userName="Capricorn2481" createdAt="2025/04/22 23:47:42" color="">}}




{{<matomeQuote body="じゃあSupabaseを5ドルのVPSで動かすか、自分でバックエンドを構築すればいいんじゃない？" userName="cpursley" createdAt="2025/04/23 00:31:46" color="">}}




{{<matomeQuote body="前に言ったように、アプリはすでにSupabaseと統合されてて、抜け出すのが難しいんだ。" userName="k2xl" createdAt="2025/04/23 09:39:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
