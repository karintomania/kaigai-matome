+++
date = '2025-02-25T00:00:00'
draft = false
title = 'クリーンコードとソフトウェアデザインの哲学！どちらが本当に重要なのか？'
tags = ["ソフトウェア開発", "プログラミング", "クリーンコード", "設計哲学", "技術的負債"]
featureimage = 'thumbnails/orange4.jpg'
+++

> クリーンコードとソフトウェアデザインの哲学！どちらが本当に重要なのか？

引用元：[https://news.ycombinator.com/item?id=43166362](https://news.ycombinator.com/item?id=43166362)

{{<matomeQuote body="いまだにどうしてこんなにドグマ的な人がいるのか理解できん。80行の文字数制限を超えたら腹立てる奴もいるし。プログラミングスタイルやアーキテクチャについても同じ。専門的な場で誰かの本やブログに書いてあることを振りかざすだけの奴にはイラつく。NoSQLやマイクロサービスの流行の頃が特にひどかった。あんまり価値ないFunction Appsやlambdasが増えて、サポートやメンテに余計な負担がかかってる。要は、その本やブログを書いた奴と自分の違いは、その人が実際に書いたってことだけ。だから、自分の考えや経験を大事にしてほしい。" userName="ilitirit" createdAt="2025-02-25T10:10:00" color="#ff33a1">}}

{{<matomeQuote body="若い頃のPRコメントを思い出すと cringe するな。『実際、これもっとSOLID原則に従うべきだよ』なんて言ってた。エンジニアリングの正式なバックグラウンドから来たから、これがプロのエンジニアってもんだと思ってた。実際には、こういう『原則』ってコンサルのただの考えであることが多い。皆、いい意図でコードの規格化を目指してるけど、結局企業のFizzBuzzのミームリポジトリみたいに見えるコードになっちゃってる。" userName="trevor-e" createdAt="2025-02-25T16:48:35" color="#45d325">}}

{{<matomeQuote body="ソフトウェアの世界には根拠のない考えや信念が広がるのは不思議だよね。多くの場合、有効な解決策のスペースがほぼ無限だから、厳密な要件がないと、どんなシステム構造でも正当化できて、『これがより良い』って言える。" userName="sunrunner" createdAt="2025-02-25T18:26:33" color="">}}

{{<matomeQuote body="＞ 何故かソフトウェアには根拠のない考えや信念の広がりがある。<br>本の著者が自分の主張を裏付けるために擬似的な証拠を作り出すのが上手になったのも問題だね。最も多いのは『X社にY年の間に話を聞いたから、これがベストだ』みたいな言い回し。要するに『私を信じて』ってだけなのに、社会的証明の中で一見否定できないように見える。" userName="Aurornis" createdAt="2025-02-25T18:46:37" color="">}}

{{<matomeQuote body="＞ いまだにどうしてこんなにドグマ的な人がいるのか理解できん。<br>俺の意見では、CCは守るべき鉄のような意見が多いけど、APoSDは経験に基づいた原則やガイドラインって感じがある。" userName="Lyngbakr" createdAt="2025-02-25T12:10:25" color="#ff5733">}}

{{<matomeQuote body="俺の持論を再び言わせてもらうが、コンパイルプロセスを通過しないものはデザインではなくコードの整理に過ぎない。デザインとは、どのデータ構造を使うか、どれをメモリに保持するか、いつデータをロード/セーブするか、どのアルゴリズムを使うか、並行処理をどう扱うかなどだ。コードを整理することは大事だが、職人技の決め手ではない。" userName="hliyan" createdAt="2025-02-25T13:11:58" color="">}}

{{<matomeQuote body="この本は、SSRやSRの開発者にとって権威のある情報源として機能してると思う。コードスタイルについてのコメントは主観的で、個人の好みとして簡単に却下できるが、Jr devが『The Uncle Bob book』を持ち出すと、急に教育的なアドバイスに見える。こうなると、他の人も耳を傾ける理由ができるが、それは全部でっち上げだ。お金の概念みたいなもんで、他の人が有効だと受け入れるから存在する。" userName="leidenfrost" createdAt="2025-02-25T13:44:11" color="#38d3d3">}}

{{<matomeQuote body="“SSRおよびSRの開発者”とは何ですか？" userName="tempodox" createdAt="2025-02-25T15:15:10" color="">}}

{{<matomeQuote body="Semi Senior と Senior dev のこと。" userName="leidenfrost" createdAt="2025-02-25T15:36:30" color="">}}

{{<matomeQuote body="これは一般的な使い方？" userName="__mharrison__" createdAt="2025-02-25T16:22:21" color="">}}

{{<matomeQuote body="コードを整理するのは基本的なハイジーンの一部だけど、これが職人技の定義的特性とは言えないと思う。どちらかがプロジェクトをダメにすることはあるし、ソフトウェア開発のどの側面が重要かについての議論は、実際にプロジェクトが失敗した経験を持つ人の間で起こるから。" userName="dkarl" createdAt="2025-02-25T15:33:32" color="#ff33a1">}}

{{<matomeQuote body="確かにUncle Bobはペダンティックなところがあるよね。友達が彼と仕事をした時、”Uncle Bobは自分のやり方が全て”って言ってた。彼のクリーンコードのやり方はかなりドグマティックだけど、C++の本はいい部分もあると思う。あの有名なsudokuパズルの事件も面白い。" userName="wglb" createdAt="2025-02-25T16:01:12" color="">}}

{{<matomeQuote body="TDDが増分的な変更を超えた問題解決には役立たないって言ってくれてありがとう。新しいことには“リアル”なコードで探求したり創造したりしたい派なんだ。" userName="brianmcc" createdAt="2025-02-25T16:13:06" color="">}}

{{<matomeQuote body="俺はDTT派、Develop, Then Testなんだ。" userName="arcanemachiner" createdAt="2025-02-25T16:18:03" color="">}}

{{<matomeQuote body="Bobは成功しすぎて自己過信してるかも。でも、他の人は攻撃的で悪い印象を受けたよ。彼がBobのアイデアを意図的に誤解してた気がする。" userName="tqwhite" createdAt="2025-02-25T20:16:15" color="">}}

{{<matomeQuote body="あれはRon Jeffriesが失敗したんじゃなかったっけ？それはTDDのせいではなく、キーボードの前にいる人の経験不足を示してると思う。" userName="switchbak" createdAt="2025-02-25T17:54:08" color="">}}

{{<matomeQuote body="他の業界のプロは“ただ本を書く”だけじゃないから、分野に優れた著者がたくさんいて、ちゃんとした研究が行われてる。プログラミングは西部劇みたいなもので、しばしばルールに従うことで楽になるんだ。" userName="crabbone" createdAt="2025-02-25T15:41:21" color="">}}

{{<matomeQuote body="俺は11年のキャリアの中で、80文字の制限について愚痴る人には会ったことない。でも、どのコードベースもDRYばかり続けて、人を困らせる保守性の問題があったな。" userName="jsbg" createdAt="2025-02-25T16:51:21" color="">}}

{{<matomeQuote body="掃除するコードがDRYにすると保守がずっと楽になると思う。ただDRYであることが目的じゃなくて、抽象化がしやすくなるのが重要なんだ。" userName="nuancebydefault" createdAt="2025-02-25T17:44:48" color="">}}

{{<matomeQuote body="Macbook Pro M2で、画面の半分をブラウザ、もう半分をIDEにしてファイルツリービューやターミナルも活用してる。コード編集パネルの実際のスペースが足りなくて80文字でも横にスクロールすることがある。" userName="soulofmischief" createdAt="2025-02-25T18:47:09" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ノートパソコンでコーディングするのが問題なんだよね。場所や物理的な理由で15インチの画面で書かなきゃならないのは理解できるけど、選択するべきじゃない。僕は42インチの4Kテレビでチラシを表示して四つのウィンドウを開いてるけど、ノートパソコンでは絶対にやりたくないよ。" userName="ajross" createdAt="2025-02-25T18:57:31" color="">}}

{{<matomeQuote body="僕も120インチの4Kモニターと40インチの2Kモニターを持ってるけど、デスクから離れることが多いって言いたいんだよね。" userName="soulofmischief" createdAt="2025-02-25T19:04:55" color="">}}

{{<matomeQuote body="Vision Proに投資すべきだね。人生が変わるよ。" userName="cluckindan" createdAt="2025-02-25T22:00:55" color="">}}

{{<matomeQuote body="C#やJava、C++のエンジニアにとって、Uncle Bobは救世主でGoFは使徒みたいな存在だね。みんなSOLIDやクリーンな原則を守ってデザインパターンで実装するべきだと思われてる。" userName="DeathArrow" createdAt="2025-02-25T18:13:11" color="#38d3d3">}}

{{<matomeQuote body="クリーンコードの熱心な人たちは、あまり好かれないし、生産性も低い人が多いよ。過去にそういう人がチームにいると、みんなが辞めたがってたし、彼がいなくなるとバグが減って機能の出荷が増えた。" userName="felizuno" createdAt="2025-02-25T14:59:46" color="">}}

{{<matomeQuote body="これはちょっと硬直的な意見のように思える。あまり好かれない、非生産的、非実用的な人たちと協力するのが難しいのも分かる。自分はこの戦いに参加してないけど、クリーンコードの人たちの方が反応的な人たちよりも協力的に見えるよ。" userName="wesselbindt" createdAt="2025-02-25T15:37:23" color="">}}

{{<matomeQuote body="＞ Who else has had to deal with idiots who froth at the mouth when you exceed an 80 line character margin?<br>本当に平凡な開発者の証拠だと思う。" userName="raverbashing" createdAt="2025-02-25T11:08:54" color="">}}

{{<matomeQuote body="コードのフォーマットに気を遣うことは、開発者としての能力とは関係ないと思うよ。" userName="einpoklum" createdAt="2025-02-25T12:16:34" color="">}}

{{<matomeQuote body="言語が下手な人ほど、コードのフォーマットもひどいと思った。皆が読みやすいコードにしようとするから、フォーマットのルールも厳格になるけど、実際はコードの組織が重要なんだよね。" userName="bena" createdAt="2025-02-25T12:55:48" color="#ff5c5c">}}

{{<matomeQuote body="反対だな。賢い奴が書くコードは逆にクソになることもある。クリーンコードは頭の良くない人のためのもので、賢い人はあまり気にしないんだよ。賢い人にとってはすごく読みやすいからな。逆に頭の悪い人は、汚いコードを理解できないからクリーンコードが必要だと思う。" userName="ninetyninenine" createdAt="2025-02-25T13:47:14" color="">}}

{{<matomeQuote body="それは全く今日は真実じゃない。クソコードは動かないか、著者が思ってることをするわけじゃない。賢い人が書いたコードはちゃんと形が整ってるし、構造が問題の構造にあってる。" userName="bena" createdAt="2025-02-25T16:48:22" color="#785bff">}}

{{<matomeQuote body="もしかしたら、賢い人は自分よりも経験が少ない人たちがコードを扱いやすい重要性を理解しているのかもしれない。" userName="Ma8ee" createdAt="2025-02-25T15:01:28" color="">}}

{{<matomeQuote body="まあ、この話題について本を書いた奴もいるし、一人は自分の意見を『哲学』だなんて言ってる。ソフトウェアは実際には概念に対して大きな言葉や複雑な言葉をつけているだけで、深い意味のあるものではない。" userName="ninetyninenine" createdAt="2025-02-25T13:38:38" color="">}}

{{<matomeQuote body="普通に良い慣習があることは認めるよね。VCSを使ったり、テストを書いたりするのはそうだし、時間が経つにつれて共通の問題とその解決策が見つかるんだ。" userName="NeutralForest" createdAt="2025-02-25T14:10:32" color="">}}

{{<matomeQuote body="固定されたものはないんだよ。強い型付けを使って、純粋な関数でプログラミングすると、少ないユニットテストで動くんだ。パターンは30パーセントくらいしかいいものじゃない。" userName="ninetyninenine" createdAt="2025-02-25T14:30:30" color="">}}

{{<matomeQuote body="ユニットテストは振る舞いをテストするべきだと思う。あまりパターンが良いとは思わないけど、既存の問題に対する構造はあるから、アートだというのはちょっと極端な気がする。" userName="NeutralForest" createdAt="2025-02-25T15:06:54" color="">}}

{{<matomeQuote body="あなたは私が使っている静的チェックを十分に活用していないから同意できないんだろう。私は文字列や数字を使ってないから、行動をテストせずに動作することができる。" userName="ninetyninenine" createdAt="2025-02-25T15:15:41" color="">}}

{{<matomeQuote body="私は型指向言語で大きなWebアプリを作ってるけど、ユニットテストはたくさん書くよ。解析に関してはね。" userName="yakshaving_jgt" createdAt="2025-02-25T15:41:25" color="">}}

{{<matomeQuote body="そうだね。通常はそこに必要ないけど、IOとのコードのインターフェースでは例外やエラーが発生するから重要だよ。純粋で決定論的なコードになるはずさ。" userName="ninetyninenine" createdAt="2025-02-25T16:54:35" color="">}}

{{<matomeQuote body="ただの初心者向けの本として扱われていて、それに基づいて質問されるって変だよ。実際にその本を読んでいるかも確認されず、ただ引用されるだけ。彼らが会社を離れた後も同じ考えを持ち続けるのが心配。" userName="wiether" createdAt="2025-02-25T10:11:00" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="という英語のヒントは面白いね。Uncle Bobのアドバイスを受けた経験があって、彼らのやり方には疑問を感じている。特に、アジャイルの時代に何も実現できなかった人たちは疑わしい。" userName="jbreckmckye" createdAt="2025-02-25T10:14:09" color="">}}

{{<matomeQuote body="Kent Beckはその中には含まれないよ。彼は初のユニットテストライブラリを出したし、他の言語でもいろいろ出したからね。JUnitスタイルは今やどこにでもあり、個人的にはpytestみたいなシンプルなスタイルが好きだけど。" userName="disgruntledphd2" createdAt="2025-02-25T11:57:59" color="#ff33a1">}}

{{<matomeQuote body="Kent BeckもUncle Bob同様、彼自身のアイデアに夢中で、良い洞察もあるけど、それに溺れてしまうとミスに気づかない。彼らの本を読むときは、しっかり疑って考えないといけない。" userName="machine_ghost" createdAt="2025-02-25T16:28:24" color="">}}

{{<matomeQuote body="ペアプログラミングを考え出したのは素晴らしいことだと思うけど、君はその有用性を理解していないみたい。コードを書く手法をどんどん改善していく必要があるね。だから、もし問題点に気づいているなら、ぜひ役立つ本を書いてほしい。" userName="snapdaddy" createdAt="2025-02-26T02:22:42" color="#ff33a1">}}

{{<matomeQuote body="そういうのが本当に効果があるの？試してみたことある？" userName="lmm" createdAt="2025-02-26T02:02:46" color="">}}

{{<matomeQuote body="ペアプログラミングを強制しちゃダメだけど、うまく使えばめちゃくちゃ効果的だよ。" userName="gabrieledarrigo" createdAt="2025-02-27T12:56:50" color="">}}

{{<matomeQuote body="コードを他の人に見てもらうのは有効だけど、負担もあるし、全員に向いてるわけじゃないよね。それでも、実際のコードレビューはペアプログラミングに似てくるという意見もあって、開発中にお互いがいることでやり取りを減らせると思う。もちろん、法的な理由からコードレビューは必要だけど、ZoomでPRを話し合うことが多くて、ペアプログラミングで助けられるのかもしれない。" userName="disgruntledphd2" createdAt="2025-02-26T13:50:46" color="#38d3d3">}}

{{<matomeQuote body="私はペアプログラミングが好きじゃないけど、賛成派の人たちは、開発中に両者がいることで早めに問題を解決できるのが強みだと言う。コードレビューは遅すぎて、初期の決定が後のコードに影響を与えるから、もっといい選択ができていたらと思うよ。" userName="michaelcampbell" createdAt="2025-03-01T16:07:24" color="">}}

{{<matomeQuote body="指摘してくれてありがとう。初期の頃は人気を得るために資格が必要じゃなかったから、あまり誰もチェックしなかったと思う。最近のアニメアイコンのTwitterアカウントがAIを発明したかのように振る舞っているのと似てるね。" userName="Copenjin" createdAt="2025-02-25T12:37:51" color="">}}

{{<matomeQuote body="FitNesseフレームワークのソースコードを読むのはとても勉強になるよ。https://github.com/unclebob/fitnesse 彼のアイデアがどうやって数百のほとんど空のクラスにまとまっているのか見られるし、”catch Throwable”みたいな珠玉も見つかる。" userName="Scubabear68" createdAt="2025-02-25T16:06:29" color="">}}

{{<matomeQuote body="最初は同意しようと思ってたけど、見た限りでは実際のコードはかなり良さそうだった。いくつかのファイルにはボイラープレートが多いけど、それはJavaのせいだし、全体的にはすごく読みやすい。レガシーコードを扱うなら、これぐらいなら嬉しいよ。" userName="snapdaddy" createdAt="2025-02-26T02:17:00" color="#ff33a1">}}

{{<matomeQuote body="A Philosophy of Software Designは簡潔で素晴らしく、数十年の教育経験に基づいているね。" userName="__loam" createdAt="2025-02-25T09:10:15" color="#ff5c5c">}}

{{<matomeQuote body="宝くじが当たったら、自分の名に建物を作られるよりも、その本を全ての大学のコンピュータサイエンスの学生に寄付して、必須読書にしたいね。少ないけど、ソフトウェアエンジニアリングの本だから、分かるでしょ。" userName="mdaniel" createdAt="2025-02-25T15:17:52" color="">}}

{{<matomeQuote body="もっと大事なのは、素晴らしいソフトウェアを書く経験だね。" userName="kragen" createdAt="2025-02-25T10:47:15" color="">}}

{{<matomeQuote body="Clean Codeやデザインパターンは教師や講師にも教えられてる。でもこういうパラダイムは効率やエラー処理、デバッグみたいな重要なことを無視してることが多い。これらを上手く扱うには時間と努力が必要だから、教えられるレシピはないんだよね。" userName="dgb23" createdAt="2025-02-25T13:24:22" color="">}}

{{<matomeQuote body="Clean Codeは効率よりもコード保守に重きを置いてる。コンピュータは速く動くから効率を心配する必要ないことが多い。でもエラー処理やデバッグも保守の一部。Clean Codeに否定的な理由もあるけど、その原則に従っていると以前よりはずっと良いコードになってるよ。" userName="bluGill" createdAt="2025-02-25T14:22:43" color="#ff5733">}}

{{<matomeQuote body="個人的にメンテの時間がかかる問題は、サードパーティの依存、余計な抽象化、パフォーマンス問題、エラー処理の不備、データの不整合によるものが多い。シンプルなコードならこういう問題をかなり避けられるからね。" userName="dgb23" createdAt="2025-02-25T15:42:22" color="">}}

{{<matomeQuote body="俺もそう思うけど、コードの不整合が多い原因として、抽象化を避けてシンプルに保とうとすることがある。お互い呼び合うクラスばかりだと面倒だけど、その解決策としてインラインにするとさらに悪化することもある。" userName="lmm" createdAt="2025-02-26T03:22:54" color="">}}

{{<matomeQuote body="同意だけど、コードの不整合には他にも理由があるよ。早すぎる抽象化、実際の作業を無視した自動化、一貫性のない名前やファイル構成、高度な技術に飛びつくことなど。シンプルで一貫したコードから進化させる方が楽だと思う。" userName="dgb23" createdAt="2025-02-26T11:09:41" color="">}}

{{<matomeQuote body="＞『より原始的で一貫したインラインのコードから、明確に問題を解決する抽象に進む方が楽だと思う』それは状況次第だと思う。コードベースに既に微妙な差異が溜まってると、インラインよりもファクタリングが難しくなるよ。自前で開発しすぎて不整合が増えることもあるから注意が必要。" userName="lmm" createdAt="2025-02-27T00:13:57" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="なんかラッキーだったみたいだね。言及された問題について、いい解決策を見つけられるといいけど、自信を持てるものは見たことがないな。" userName="bluGill" createdAt="2025-02-25T15:52:12" color="">}}

{{<matomeQuote body="コメントには重要な理由がある。時には制御不能なバグや直感に反した処理に直面することがある。例えばUSBデバイスのドライバを書くとき、文書化されたプロトコルに従っても壊れた状態になることが多いから、その都度コメントを入れてるんだ。そうしないと、後々コードを修正する時に理由を忘れちゃうからね。" userName="sudobash1" createdAt="2025-02-25T01:26:50" color="#38d3d3">}}

{{<matomeQuote body="＞メソッド名がコメントとしては理想的じゃないよね。視認性が低いし、略語や曖昧さもあって難しい。俺は特に、難解なコードに関する詳細なコメントを書くことが多いんだけど、説明したいことは文書やADRsに載せるべきなんだ。それを入れると、読まれないことが多くて、皆コードを間違って使う。コメントにしたら、ちゃんと読まれてバグが減ったよ。コメントは修正しやすいからね。" userName="zbentley" createdAt="2025-02-25T01:56:44" color="#ff5733">}}

{{<matomeQuote body="ADRsを挙げてくれてありがとう！決定の”なぜ”を記録するのに良い方法だと思う。ADRsに不慣れな人向けに良いスタート地点のリンクを置いとくね。<br>https://cognitect.com/blog/2011/11/15/documenting-architectu...<br>https://adr.github.io/" userName="colddevil" createdAt="2025-02-25T08:32:26" color="#38d3d3">}}

{{<matomeQuote body="＞メソッド名はコメントとしてはあまり良くないね。視認性が低いし。snake_caseやkebab-caseの方がいいよ。特にJSONでcamelCaseを使うと、処理したくてもインターフェースが読みづらくなるから、改善してほしい。" userName="rswail" createdAt="2025-02-25T05:34:09" color="">}}

{{<matomeQuote body="＞コードがなぜそうなったかっていう理由はコメントに頼らざるを得ないね。コードは”何”と”どう”を示せるけど、”なぜ”は文章にする必要があるんだ。" userName="slotrans" createdAt="2025-02-25T04:14:14" color="">}}

{{<matomeQuote body="USBの具体的な例を挙げて、リテラテプログラミングの必要性があるって感じだね。コードより文章が重要ってこと。" userName="Cthulhu_" createdAt="2025-02-25T08:28:22" color="">}}

{{<matomeQuote body="ルールを押し付ける必要ないんじゃない？コメントは役に立つと言えばそれでいいと思うよ。" userName="lompad" createdAt="2025-02-25T10:33:58" color="">}}

{{<matomeQuote body="リテラテプログラミングは方法論じゃなくて、文章を重要視してコードはその次っていう考え方だよ。" userName="kragen" createdAt="2025-02-25T11:26:05" color="">}}

{{<matomeQuote body="関数名には限界があるよね。制御する回路図を名前で表現するのは無理だし、コメントを使うことで伝えられる。" userName="SAI_Peregrinus" createdAt="2025-02-25T14:31:08" color="">}}

{{<matomeQuote body="もし理由が変わったら関数名も更新しないといけない。単一のコードベースならまあいいけど、関数が外部に出てる場合は面倒だよ。" userName="ricree" createdAt="2025-02-25T16:22:11" color="">}}

{{<matomeQuote body="同意。じゃあ、コメントに頼る前に名前にできるだけ詰め込もうよ。Proseは見た目は良くないけど、使い勝手は損なわれないよ。" userName="ninetyninenine" createdAt="2025-02-25T15:21:33" color="">}}

{{<matomeQuote body="それはAPIに'なぜ'を埋め込むことになる。もし'なぜ'が変わったら、その関数は抽象化として機能しなくなるし、名前を変えるとAPIが壊れるよ。名前は実際にやることを明確に示し、やってないことで除外するために十分な精度が必要だってことは言いたい。" userName="SAI_Peregrinus" createdAt="2025-02-25T19:15:16" color="#ff5c5c">}}

{{<matomeQuote body="＞例えば、今USBデバイス用のドライバソフトウェアを書いてるんだけど、文書化されたプロトコルの範囲内でもデバイスが悪い状態になるのが簡単なんだ。作業諸元やメッセージがどうあるべきかをドキュメントとして残すためにコメントを書いてるよ。コードに特徴を追加したりリファクタリングする時、そうしないと理由を忘れちゃうからね。これは一般的に言っても意味があると思うよ。" userName="bch" createdAt="2025-02-25T08:32:31" color="#785bff">}}

{{<matomeQuote body="私は'コメント禁止'のUncle Bob派ってわけじゃないけど、意味不明な長いメソッド名には注目しちゃう。そういう名前が付いてるなら、きっと変なことやってるはずだからね。" userName="mbo" createdAt="2025-02-25T01:44:08" color="">}}

{{<matomeQuote body="その通り、長い名前は本当に変なことするメソッドだけに使うべき。どのメソッドも長いとコードベースがうるさくなるからね。同意だよ。" userName="hakunin" createdAt="2025-02-25T03:13:47" color="#ff33a1">}}

{{<matomeQuote body="実際にはそうならないよ。プログラムって多くのことをやるから、実際には短い名前が多くの関数に通じるんだ。英語みたいに大きな単語と小さな単語があって、通常はその組み合わせを使ってコミュニケーションしてる。" userName="ninetyninenine" createdAt="2025-02-25T13:58:36" color="">}}

{{<matomeQuote body="それはこの記事で起きたし、Robertもそう主張してるね。" userName="hakunin" createdAt="2025-02-25T14:04:42" color="">}}

{{<matomeQuote body="作り話かもしれないけど、長い名前の利点を示すための例だった。私の意見では、逆にそれを示したと思う。" userName="kristiandupont" createdAt="2025-02-26T11:01:26" color="">}}

{{<matomeQuote body="以前はそうやってたけど、どの非自明なメソッドもエッジケースや作業手順を含んでいて、メソッド名が可読性を壊してたよ。" userName="Pxtl" createdAt="2025-02-25T17:13:23" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
