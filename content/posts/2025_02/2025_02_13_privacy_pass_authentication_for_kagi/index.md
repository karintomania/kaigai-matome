+++
date = '2025-02-13T00:00:00'
draft = false
title = 'Kagi検索のためのプライバシーパス認証でオンラインの安全性を高めよう！'
tags = ["プライバシー", "セキュリティ", "Kagi", "認証", "検索エンジン"]
+++

> Kagi検索のためのプライバシーパス認証でオンラインの安全性を高めよう！

引用元：[https://news.ycombinator.com/item?id=43040521](https://news.ycombinator.com/item?id=43040521)

{{<matomeQuote body="KagiがPrivacy Passを使ってるのがすごくいいと思う！そうは言っても、彼らは僕がずっと取り組んできたIETFのドラフトやRustの実装を使ったみたいで、薄いラッパーを作って「KagiのPrivacy Passの実装」って呼んでるんだ。少しはクレジットをもらっても良かったんじゃないかな。こういうボランティアの仕事って報われないとやる気がなくなるよ。Kagi、もっと頑張って！" userName="raphaelrobert" createdAt="2025-02-14T12:28:56" color="">}}

{{<matomeQuote body="正直に言うけど、TFAが言う「KagiのPrivacy Passの実装」って、サーバーやクライアントへの機能統合のことだと思う。" userName="alphabetter" createdAt="2025-02-14T13:21:42" color="">}}

{{<matomeQuote body="＞追記：ブログ記事に私の姓を間違えずに書いてくれるといいな、ロバートです。これ私の責任でした。修正しました！" userName="freediver" createdAt="2025-02-15T16:21:24" color="">}}

{{<matomeQuote body="じゃあ、彼らが‘raphaelrobert’へのクレジットを追加したり、どこかにライセンスをコピーしたら、Kagiはコンプライアンスになるの？オープンソースソフトウェアを使ったことがないから、他の団体がライセンスにどう対応するのか気になる。" userName="SamuelAdams" createdAt="2025-02-14T13:37:20" color="">}}

{{<matomeQuote body="彼らはMITライセンスの下で使ってるから、コンプライアンスしてるよ。" userName="literallyroy" createdAt="2025-02-14T14:14:46" color="">}}

{{<matomeQuote body="うん、FOSS好きな俺でも、MITライセンスで他の人がコードを使ったとしても、文句を言っちゃいけないと思う。あれはかなり自由なライセンスだし、もしクレジットが欲しいなら、その要件があるライセンスを使うべきだよ。" userName="moksha256" createdAt="2025-02-14T15:22:09" color="">}}

{{<matomeQuote body="法律上の義務と一般的な礼儀の間にはギャップがある。誰かがドアを開けてくれたからといって、感謝する義務はないけど、感謝しないのはちょっと失礼だよね。全体をそのまま持って行くのはいいけど、感謝の言葉は言うべきだよ。" userName="brookst" createdAt="2025-02-14T15:32:37" color="">}}

{{<matomeQuote body="確かに違うけど、ドアを開けることに対するライセンスはないから、違った例だと思う。FOSSではライセンスは確立されたものだし、開発者たちはMITを選ぶことが多いけど、その結果、全ての権利が失われるってこともある。著作権の世界では、作者が一定期間自分の作品を所有するのが長年のデフォルトだから、公共の領域へ送るのは無理がある。言いたいのは、無礼な人たちに対して文句を言うのが悪いわけではない、だけどMITライセンスを選ぶことが多すぎることへの不満がある。" userName="moksha256" createdAt="2025-02-14T15:48:18" color="">}}

{{<matomeQuote body="ドアを開けることの例はちょっと弱かったけど、原則は成り立ってると思う。MITでリリースするのは、多くの人を助けたいという期待があるし、有名な会社がそれを採用した場合には感謝の気持ちを期待するのもおかしくない。" userName="brookst" createdAt="2025-02-14T16:01:50" color="">}}

{{<matomeQuote body="ドアを開けることは社会的な契約に関わる。" userName="azinman2" createdAt="2025-02-14T16:25:27" color="">}}

{{<matomeQuote body="ありがとうって言うのも大事だよね。これが言いたかったんだ。" userName="brookst" createdAt="2025-02-14T16:51:18" color="">}}

{{<matomeQuote body="ちょっと意見が違うかな。プロジェクトによっては50〜800の依存関係があって、誰に感謝すればいいかわからないよね。Kagiの人たちが感謝してくれて、君がそのコードを公開したのはいいと思うけど、ネットで感謝を求めるのはちょっと変わったことだよ。" userName="tarboreus" createdAt="2025-02-17T19:16:50" color="">}}

{{<matomeQuote body="著作権のヘッダーがなければそれが可能だよ：”上記の著作権表示と許可通知は、全てのコピーまたは重要な部分に含まれるべき”って。彼らはそれをやってないっぽい。MITライセンスは自分たちの著作権を主張してるし、READMEにもライブラリの参照はないみたい。" userName="_Algernon_" createdAt="2025-02-14T18:04:54" color="">}}

{{<matomeQuote body="依存関係として取り込んでるから、フォークじゃないよ。cargo buildを実行すれば、元のライセンスを含むソースコードが取得される。それは設定メニューにライセンスが載っているよりもいいよ。" userName="Throwaway123129" createdAt="2025-02-15T01:38:26" color="">}}

{{<matomeQuote body="Kagiのリポジトリにはraphaelrobertのコードが直接含まれてない。ライブラリとして使われているだけなんだ。" userName="matthews2" createdAt="2025-02-14T18:06:43" color="">}}

{{<matomeQuote body="2025年2月14日12時15分にREADMEヘッダーからキャプチャした内容だね。”このリポジトリはKagiで使われるPrivacy Pass APIのコアライブラリのソースコードを含む”って。これってちょっと良くない気がする。Kagiの人たちはこれを”raphaelrobert/privacypassのCrystal Langラッパーのコアライブラリ”って表現した方がいいと思うよ。" userName="graypegg" createdAt="2025-02-14T17:16:10" color="">}}

{{<matomeQuote body="インターネットはネットワーク効果を加速させるけど、安くすることでそれをさらに強化することができるよ。有料ユーザーのネットワークを築こうとすると、無料の競合に負けちゃうよ。" userName="sxg" createdAt="2025-02-13T21:59:44" color="">}}

{{<matomeQuote body="この現象についての説明は最高だと思う。もし有料ユーザーだけのネットワークを築こうとすれば、間接的に収益化している”無料”の競合に負ける。" userName="api" createdAt="2025-02-13T22:41:16" color="">}}

{{<matomeQuote body="違うと思う。失うわけじゃなくて、もっと小さくて良くて、しかもまだ利益を上げてるんだよ。HBOも昔このモデルを使ってたけど、それが長続きするビジネスなんだ。" userName="brookst" createdAt="2025-02-14T03:23:31" color="">}}

{{<matomeQuote body="でもさ、そうするとブリッツスケールして数年後に億万長者でExitできないじゃん！" userName="freeAgent" createdAt="2025-02-14T03:36:52" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もしかして’hectomillionaire’のことを言いたかったんじゃない？" userName="codingjourney" createdAt="2025-02-14T12:42:50" color="">}}

{{<matomeQuote body="この意味では両方同じだから。" userName="freeAgent" createdAt="2025-02-14T14:39:33" color="">}}

{{<matomeQuote body="どういうこと？centimillionaireは$10k持ってて、hectomillionaireは$100m持ってるよ。" userName="stavros" createdAt="2025-02-14T16:42:58" color="">}}

{{<matomeQuote body="> LMGTYF: ”https://www.merriam-webster.com/dictionary/centimillionaire”" userName="freeAgent" createdAt="2025-02-14T17:28:54" color="">}}

{{<matomeQuote body="それはSIじゃないから、受け入れられないよ。" userName="stavros" createdAt="2025-02-14T17:35:28" color="">}}

{{<matomeQuote body="ルールを作ったのは俺じゃないからさ。英語はそういうもんなんだよ。" userName="freeAgent" createdAt="2025-02-14T17:44:53" color="">}}

{{<matomeQuote body="無料の競合サービスは底辺に走っちゃって、もう役に立つサービスを提供してない。" userName="kevin_thibedeau" createdAt="2025-02-13T23:18:33" color="">}}

{{<matomeQuote body="天使の代弁者として...サブスクリプションモデルでも、支払えない人を補助することはできる理由はあるよ。ただ、企業は著しくお金を引き出す構造になっているから…広告は全体を通じて搾取を可能にするけど、適切に技術に詳しいユーザーは広告を回避できるんだ。" userName="laurex" createdAt="2025-02-13T23:37:57" color="">}}

{{<matomeQuote body="企業は、すぐにできるだけ多くを搾取しなければならないという法律には縛られてないよ。" userName="kennyloginz" createdAt="2025-02-14T03:39:18" color="">}}

{{<matomeQuote body="君の環境が羨ましいな。" userName="namtab00" createdAt="2025-02-14T10:42:11" color="">}}

{{<matomeQuote body="それはいい環境だね。基本給が倍になったし、MSの影響を気にせず働けるのは楽しい。検索エンジンに関しても、2012年から2022年の間に解決済みだった問題が、もうそうじゃなかったのが本当にストレスだった。" userName="eitland" createdAt="2025-02-14T17:45:56" color="">}}

{{<matomeQuote body="一般的に、ウォールストリートがプライベート企業に与える影響はあまり大きくないよ。" userName="growse" createdAt="2025-02-14T08:38:23" color="">}}

{{<matomeQuote body="だからGPが『彼らが公開しているなら』と言ったのはその文脈なんだよ。" userName="dreamcompiler" createdAt="2025-02-14T14:31:07" color="">}}

{{<matomeQuote body="ああ、確かに良い指摘だ！" userName="growse" createdAt="2025-02-16T20:25:44" color="">}}

{{<matomeQuote body="ごめん、”罰する”って何を意味するの？どうやって？" userName="drdaeman" createdAt="2025-02-14T07:18:11" color="">}}

{{<matomeQuote body=">構造はできるだけ多くを取り出すようにできている（公開されている場合は法律上）。これは間違いで、フィデューシャリー義務が意味することじゃない。" userName="kortilla" createdAt="2025-02-14T02:16:29" color="">}}

{{<matomeQuote body="プライベート企業が誰が補助を受けられるのかを確認する仕組みは何？学生だけを補助するつもりなの？" userName="dmoy" createdAt="2025-02-14T00:44:28" color="">}}

{{<matomeQuote body="Discordにも広告はあるけど、あんまり頻繁ではないしチャットに埋め込まれてるわけじゃないよ。設定でオフにできる”クエスト”って呼ばれるやつね。" userName="prododev" createdAt="2025-02-14T07:22:31" color="">}}

{{<matomeQuote body="できれば直接サイトにお金を払うっていうモデルもいいよね。サイト訪問ごとにお金を払って、広告費を抑えられたら、結局こっちに還元されるし、良い製品が評価される社会になる。でも人間の心も経済もそうは上手くいかないよね。" userName="jorvi" createdAt="2025-02-14T02:20:54" color="">}}

{{<matomeQuote body="まあ、広告モデルには問題があるけど、ネットが誰にでもアクセスできるようになったのはこれのおかげでもあるよね。お金持ちたちが広告でサービスをみんなに提供してる感じ。" userName="api" createdAt="2025-02-14T00:44:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="広告テクノロジーのネガティブな影響なしに、低所得者向けのサービスも他の手段で提供できると思うんだ。図書館とかがその例だね。" userName="ulrikrasmussen" createdAt="2025-02-14T06:46:21" color="">}}

{{<matomeQuote body="現状のフリーミアムゲームはそういうモデルにまさに基づいてるよね。お金をたくさん使う“クジラ”プレイヤーがいて、他には無料で楽しむ人が多い。" userName="Twisell" createdAt="2025-02-14T06:16:20" color="">}}

{{<matomeQuote body="ビデオゲーム業界はうまく顧客を分けて成功してるよね。無料や安いゲームでプレイヤーを集めて、少数の“クジラ”が全体を支えてる。" userName="sxg" createdAt="2025-02-14T17:29:31" color="">}}

{{<matomeQuote body="もしpinboard.inが売りに出されたら、良い管理者になると思う。" userName="basch" createdAt="2025-02-14T00:15:21" color="">}}

{{<matomeQuote body="直接の収益化推進。顧客が価値のためにお金を払うようにすれば、みんなが幸せになる。" userName="brookst" createdAt="2025-02-14T03:21:48" color="">}}

{{<matomeQuote body=">（Orionは使わないけど、Linux版がないから。）" userName="freediver" createdAt="2025-02-14T01:28:44" color="">}}

{{<matomeQuote body="オープンソース化はいつ頃になるの？ :^)" userName="hurutparittya" createdAt="2025-02-14T08:23:11" color="">}}

{{<matomeQuote body="Orionの発表は覚えてるけど、あんまり詳しくは追ってないんだよね。Firefoxみたいなコンテナプロキシのサポートあるの？この機能は失いたくないなぁ。" userName="joshuaturner" createdAt="2025-02-14T02:45:27" color="">}}

{{<matomeQuote body="ArcはWebKitじゃなくてChromiumベースだよ。" userName="andelink" createdAt="2025-02-16T06:13:11" color="">}}

{{<matomeQuote body="ごめん、ArcはWebKitのフォークをベースにしてるんだ。" userName="prophesi" createdAt="2025-02-16T08:04:24" color="">}}

{{<matomeQuote body="すごい！！！" userName="WD-42" createdAt="2025-02-14T02:39:29" color="">}}

{{<matomeQuote body="これのデメリットは、大きなネットワークにいないとIPアドレスがたぶん匿名性を失うこと。Kagiがログインしてるのを知ってて、プライベートブラウジングウィンドウでスパイシーな検索をしたら検索がリンクされることもある。モードの高速切り替えは不都合だよね。" userName="Klaus23" createdAt="2025-02-13T22:26:56" color="">}}

{{<matomeQuote body="だからKagiは同時にTorでサービスの利用可能性を発表したんだよ。<br>Torには欠点や批判もあるけど、Kagiがそれを直すのは関係ないよ。でもTorとプライバシーパスの組み合わせで、Kagiは他のどのサービスよりも有料ユーザーにアクセスを許可することを進めてるんだ。注意：Kagiとは全く関係なく、ただのハッピーなユーザーだよ。" userName="aryonoco" createdAt="2025-02-13T22:35:44" color="">}}

{{<matomeQuote body="FYIだけど、2024年の終わりにポッドキャストでOrionのLinux版が計画されてるって発表されたんだ。" userName="theschmed" createdAt="2025-02-13T22:14:35" color="">}}

{{<matomeQuote body="Kagiなら、正しい選択をすることに慣れるよ。本当にミスがほとんどないのが驚き。自分のKagiのTシャツもそうだったらいいのに。裾が洗って2回目でほつれて、もう寝るときと庭仕事用のシャツになっちゃった。代わりに無料シャツのクーポンが発行されたけど、まだ発送されてない。" userName="paradox460" createdAt="2025-02-13T23:06:15" color="">}}

{{<matomeQuote body="やっとKagiの期待に乗れる気がする。真面目な悪い意見を見つけたから。" userName="cootsnuck" createdAt="2025-02-14T04:34:44" color="">}}

{{<matomeQuote body="Kagiには問題もあるよね。シャツの件は大失敗だったし、もっと商品にお金を使ってほしい。非ユーザーの批判は偽善的に感じることが多い。" userName="Sakos" createdAt="2025-02-14T08:12:33" color="">}}

{{<matomeQuote body="うん、僕も。プライバシーパスは主にイコグニート検索用に使うかな（コホン、P0RNコホン）。ぜひkagifeedback.orgにアイデアを送ってね。" userName="thibaultmol" createdAt="2025-02-13T20:46:57" color="">}}

{{<matomeQuote body="サーバーがクライアントのリクエストを認証しているのに匿名性がどう保たれるのか？プライバシーパスと単に共通の認証トークンを渡すのに何が違うの？" userName="rajnathani" createdAt="2025-02-14T10:01:31" color="">}}

{{<matomeQuote body="Kagiが提供するクライアントはサイドチャネルになっちゃうの？独立したスタンダードなクライアントを使ったほうがいいのかな？" userName="potamic" createdAt="2025-02-14T16:35:29" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
