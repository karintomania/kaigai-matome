+++
date = '2025-03-19T00:00:00'
months = '2025/03'
draft = false
title = 'AIコーディングで判明！LLMの意外な弱点と落とし穴'
tags = ["AI", "LLM", "機械学習", "プログラミング", "コーディング"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> AIコーディングで判明！LLMの意外な弱点と落とし穴

引用元：[https://news.ycombinator.com/item?id=43414393](https://news.ycombinator.com/item?id=43414393)

{{<matomeQuote body="LLMって、人間とは違うミスするんだよね。マジでエラーに気づきにくい。人間相手なら長年の経験があるから、ミスを防ぐシステムとか得意じゃん？でもLLMって根本的に違うから、「考え方」が分からなくて対策が難しいんだよね。" userName="antasvara" createdAt="2025-03-19T19:16:26" color="#38d3d3">}}

{{<matomeQuote body="LLMのミスは「幻覚」って言うより、人間の錯覚に近いと思う。視覚野とか感覚系が特定の入力に対して間違った解釈をしちゃうみたいな。それと同じで、LLMも人間がしないようなミスをするんだよね。それを能力不足と捉えるのは違う気がする。システムだから解決できるかもしれないけど、まずはLLMがミスしやすい場所を認識して、対策を立てるのが大事だよね。<br>[0] https://youtu.be/2k8fHR9jKVM" userName="MostlyStable" createdAt="2025-03-19T20:20:39" color="#ff33a1">}}

{{<matomeQuote body="LLMは簡単なロジックパズルとか、見たことない数学の問題も解けないんだよ。世界モデルがないから。得意なのは、データセットにあるものをちょっと変えて再現すること。それっぽく見えるけど、理解力とか知能はないんだよね。人を騙すのは上手いけど。Turing Testもアテにならないかもね。" userName="grey-area" createdAt="2025-03-20T08:53:56" color="">}}

{{<matomeQuote body="＞they don't have a model of the world”世界モデルって必要なの？「人工知能」って言葉自体、ちゃんと定義されてないし。確かに人工的だけど、知能があるかっていうと疑問。色々できるけど、簡単な問題で躓いたりするし。インターネットとか本を学習してエッセイを生成できるなら、見たことない問題が解けなくても良くない？" userName="fragmede" createdAt="2025-03-20T12:45:41" color="#ff5733">}}

{{<matomeQuote body="＞it's able to generate essays on anything and everything”色々試したけど、LLMの文章生成能力にはガッカリ。平気で嘘をつくし。LLMはエッセイを生成できるとは言えないな。ありきたりなことしか書けないし、間違った情報も多い。AIスロップって感じ。表面的な模倣は上手いけど、中身がない。世界モデルがないから、タスクによっては完全にデタラメなデータを生成するし。" userName="grey-area" createdAt="2025-03-20T15:07:36" color="">}}

{{<matomeQuote body="＞I would not describe current LLMs as able to generate essays on anything<br>それって、面白いエッセイを作れないって意味？事実に基づいた普通の文章なら作れるけどね。プロンプト次第では、ちょっと面白いものもできるかも。" userName="pmarreck" createdAt="2025-03-20T16:50:34" color="#ff5733">}}

{{<matomeQuote body="LLMはエッセイを生成できるとは言えないかな。出来がイマイチだし、信頼性も低いから。人間が編集するための叩き台にしかならない。子供とJSでゲームを作った時は、AsteroidsとかPongはできたけど、Froggerは難しかった。本当にクリエイティブなことは苦手で、パターンマッチングしてるだけって感じ。" userName="grey-area" createdAt="2025-03-20T17:50:28" color="">}}

{{<matomeQuote body="Froggerで何がダメだったのか詳しく聞きたいな。トレーニングデータからかけ離れてるとは思えないし。AsteroidsとかPongがどれくらい上手くいったのかも分からないから、自分で再現できないんだよね。" userName="fragmede" createdAt="2025-03-21T22:36:28" color="">}}

{{<matomeQuote body="同僚が作ったんだけど、こんな皮肉めいた文章も作れるよ。ありきたりとは言えないんじゃない？<br>”Elon Muskが精子を提供してテキサスに家族を作るって？マジかよ。Wes Pinkleの「リテラシーがあるのが最悪な日だ」って言葉が全てを物語ってる。こんなニュースを読むくらいなら、スマホを海に捨ててカンガルーと暮らしたいわ。”" userName="dreamfactored" createdAt="2025-03-21T08:12:26" color="#ff33a1">}}

{{<matomeQuote body="LLMは明らかに世界モデルを持ってるよ。それを高レベルの特徴として表現してるんだ。低いレベルのレイヤーは単語とか構文を記述して、高いレベルは意味とか概念の関係性を捉えてる。" userName="jychang" createdAt="2025-03-20T09:28:02" color="#ff5c5c">}}

{{<matomeQuote body="https://www.anthropic.com/news/mapping-mind-language-model<br>Anthropicの論文とか見ればわかるけど、ちゃんと研究されてるじゃん。" userName="gmadsen" createdAt="2025-03-20T12:36:12" color="">}}

{{<matomeQuote body="＞「学習データで似た概念がまとまってて、それを操作したら結果が変わった」ってだけ。<br>概念を認識して、似た概念をまとめて操作するのって、まさに「抽象化」じゃん。それって「世界モデルを作る」ことの基本だし、「考える」ってことじゃん。<br>＞「ニューロン」とか「世界モデル」とか「思考」なんて言葉ないじゃん。<br>マジで意味わかんねー。世界モデルとか思考じゃなくて、LLMがめっちゃ基本的なモデル作って、超基本的な推論してるって言ってるようなもんじゃん。" userName="dleary" createdAt="2025-03-20T15:54:22" color="">}}

{{<matomeQuote body="＞LLMに世界を理解したり、世界モデルを持ったり、ニューロンがあったり、考えたり、推論したりする能力があるって信じる根拠がマジで何もないって言ってんの。<br>リンク先には「Golden Gate Bridgeで反応する特徴」って書いてあるじゃん。試しにMS paintで下手くそなGolden Gate Bridgeの落書き描いて、ChatGPTに「これ何？」って聞いたら、吊り橋っぽいって言って、さらに「何の橋？」って聞いたら、Golden Gate Bridgeっぽいって答えたよ。証拠もちゃんと説明してくれたし。<br>＞モデルは何も認識してないし、まとめてもいない。<br>じゃあ、さっきのChatGPTとのやり取りどう説明すんの？Golden Gate Bridgeだって認識してるようにしか見えなくね？" userName="dleary" createdAt="2025-03-21T22:30:13" color="#45d325">}}

{{<matomeQuote body="ハルシネーションは良いんだけど、過信が問題だよね。でも、それって簡単に解決できる問題じゃないらしいね。" userName="admiralrohan" createdAt="2025-03-19T21:56:12" color="">}}

{{<matomeQuote body="＞過信が問題。<br>問題はもっと根深いんだよね。「自信」って認識されてるものがそもそも幻想なんだもん。<br>（実際の）アルゴリズムはドキュメントを長くするだけで、人間が“User”と“AssistantBot”の会話っぽいドキュメントを作って、会話っぽい動きをするコードを書いただけ。自信があるように見えるのは、次のトークンの統計的な確率が高いから。<br>AssistantBotっていうキャラクターは、Count Draculaが「不死身」とか「物思いにふける」とか「ニンニクとか十字架が怖い」のと同じ意味で「過信」してるだけ。テキスト読んでたらそう見えるってだけ。<br>AssistantBotを注意深く慎重だって描写するようにすれば、人間が信用しすぎるのを防げるかもね。でも、慎重な推論から論理的な結論を導き出すようにするのは…遠回しすぎるし、「AssistantBotは数学が得意で、数字のチェックも怠らない」って言うのと同じくらい効果ないんじゃない？<br>＞Hallucinating<br>P.S.：「Hallucinations」とprompt-injectionは皮肉じゃなくて「仕様」だよ。それらを完全に消し去る魔法の呪文なんてないし、無理やり消したら全部ぶっ壊れるよ。" userName="Terr_" createdAt="2025-03-20T04:52:39" color="#38d3d3">}}

{{<matomeQuote body="残念ながら、今のシステムだと、過信は賢い行動だと思う。" userName="jacksnipe" createdAt="2025-03-19T23:14:09" color="">}}

{{<matomeQuote body="でもさー、そもそもシステムのために働いてるわけじゃないじゃん？自分のために働いてるんだし。システムは、こっちの制約に合わせて報酬くれるって形で、働く気にさせてるだけだし。自信過剰なやつらがシステムに貢献しないのは当たり前だけど、報酬の計算を自分たちに有利になるように歪めてるんだよね。「ちゃんとやったのに報酬は？」みたいな。<br>ある意味、めっちゃ成功してるよね。ローリスク・ハイリターンで、みんなと同じように自分のために動いてるけど、システムなんて誰も気にしてないし。もしかして、システムが自分より大事だっていうBSを真に受けちゃってるんじゃない？<br>AIも同じで、すごい知能だって信じ込ませて、NVidiaが兆単位の価値になっちゃってるし。同僚の奥さんがChatGPTとばっかり話してるって嘆いてたよ。自信過剰って、自分にとってはプラスなんだよね。" userName="xwolfi" createdAt="2025-03-20T00:08:54" color="">}}

{{<matomeQuote body="＞人間の錯覚みたいなもんだと思ってるわ。<br>いわゆる「ハルシネーション」って、人間の「発明」「創造性」「想像力」に近いと思うんだよね。人間の「幻覚」とは全然違う。DeepDreamの最初の画像がトリッピーだったってだけでしょ。" userName="ForTheKidz" createdAt="2025-03-20T00:46:08" color="">}}

{{<matomeQuote body="＞いわゆる「ハルシネーション」って、人間の「発明」「創造性」「想像力」に近いと思うんだよね…<br>違うね。<br>LLMの「ハルシネーション」ってのは、PRNG[0]がアルゴリズムに影響を与えて、統計的にありえないような方向に行っちゃう結果だよ。理解も何もない。<br>0 - https://en.wikipedia.org/wiki/Pseudorandom_number_generator" userName="AdieuToLogic" createdAt="2025-03-20T03:03:10" color="#45d325">}}

{{<matomeQuote body="システムを買いかぶりすぎじゃない？「温度下げれば消える」みたいな。大量の一般的なテキストコーパスに基づいた、確率の高い次の単語が、特定の状況で正しいとは限らないし。<br>例えば、「このmathライブラリにはこの関数があるはず」みたいな間違いとか（他の言語のmathライブラリには大体あるから）。" userName="majormajor" createdAt="2025-03-20T03:47:21" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞システムを買いかぶりすぎじゃない？「温度下げれば消える」みたいな。確率の高い次の単語が、特定の状況で正しいとは限らないし。<br>言いたいことは同じだと思うよ。<br>＞いわゆる「ハルシネーション」って、人間の「発明」「創造性」「想像力」に近いと思うんだよね…<br>ってのは、アルゴリズムは正しさなんて概念持ってないし、擬似乱数を使ってテキスト生成の探索パスを変えてるだけってこと。" userName="AdieuToLogic" createdAt="2025-03-20T04:08:27" color="#ff5c5c">}}

{{<matomeQuote body="いやー、ハルシネーションって、めっちゃ人間っぽいミスじゃね？<br>何か思い出そうとすると、脳みそが勝手に新しいこと作り出すことあるし。そういう時、「もしかしたら想像かもしれないけど…」とか「なんかあった気がするんだけど…」って言うじゃん？<br>そういう時は、現実と照らし合わせるしかないんだよね（ググるとか）。<br>strawberryのrの数をパッと見で間違えるのも、めっちゃ人間っぽいミスじゃん。" userName="pydry" createdAt="2025-03-19T22:20:21" color="#45d325">}}

{{<matomeQuote body="それって普遍的なことじゃないと思うな。エラーに気づく能力って人それぞれだし。チーム見てるとそう思うわ。デバッグできる人もいれば、できない人もいる。テスト書ける人もいれば、書けない人もいる。レビューで色々見つけられる人もいれば、そうでない人もいる。<br>CursorのSonnet 3.7に、失敗するテストを直させたんだけど、必要な修正はしたものの、ハードコードされた期待値を、元のファイルと同じアルゴリズムで計算するように変えちゃったんだよね。元のテストみたいに定数を維持するんじゃなくて。<br>で、何回人間が同じことやったと思う？<br>モデルはどこでそんな悪い癖を学んだんだろうね。" userName="tharkun__" createdAt="2025-03-19T19:25:32" color="#38d3d3">}}

{{<matomeQuote body="デバッグできる人もいれば、できない人もいる。テスト書ける人もいれば、そうでない人もいるってマジ？<br>デバッグもテストもできない人と働きたくないんだけど。それってこの業界の最低条件じゃないの？<br>他のスキルで貢献してくれるならまだしも、後始末はちゃんとしてくれよ。見習い期間に学ぶべきことじゃん。" userName="fn-mote" createdAt="2025-03-19T23:16:01" color="">}}

{{<matomeQuote body="ちょっと脱線するけど、LLMってコンパイル時の情報しか持ってないからデバッグできないんだよね。多くのバグは実行時の複雑な状態が原因なのに。<br>もしLLMがデバッグできる優秀な開発者みたいに考えられたら、もっと効率的になるんじゃない？<br>だから、そういうプロトタイプをハッキングして作ってみてるんだ。<br>https://github.com/hyperdrive-eng/mcp-nodejs-debugger<br>エラーをコピペしてLLMに修正させるだけの無限ループから抜け出したい！" userName="30minAdayHN" createdAt="2025-03-20T05:26:05" color="#785bff">}}

{{<matomeQuote body="確かにね。でも、俺が犯すエラーって、自分がエラーに気づいてないってのが大きいんだよね。だから、LLMのエラーの方がマシかなって思う。" userName="woopwoop" createdAt="2025-03-19T20:20:49" color="">}}

{{<matomeQuote body="そんなエラーを考慮したシステムを設計するのもそうだけど、デバッグするのも自分で書いたコードよりずっと難しい。<br>https://www.bugsink.com/blog/copilot-induced-crash/" userName="vanschelven" createdAt="2025-03-19T21:42:28" color="">}}

{{<matomeQuote body="このケースだと、Aiderみたいに、変更を加えるたびに自動でコミットしてくれるツールが最強ってことだよね。「git log -p」を使えば、あのヤバいimportも数時間じゃなくて数分で見つけられたはず。<br>こまめにコミットしよう。" userName="fragmede" createdAt="2025-03-19T22:21:10" color="#785bff">}}

{{<matomeQuote body="AIコーディングエージェントを作ってるんだけど、全ての変更はデフォルトでプロジェクトから隔離されたサンドボックスに保存されるんだ。<br>変更を適用する時は自動コミットも有効になるけど、リスクの高い作業ではレビューするまで分離しておく方が安全だと思う。<br>https://github.com/plandex-ai/plandex" userName="danenania" createdAt="2025-03-20T00:08:52" color="">}}

{{<matomeQuote body="サンドボックスをgitブランチとして実装するなら、話は別だね。" userName="fragmede" createdAt="2025-03-20T00:16:24" color="">}}

{{<matomeQuote body="gitをベースにしてるけど、ただのブランチよりも分離性が高いと思うよ。<br>まず、LLMで変更を加える前にブランチをチェックアウトするのを忘れがち。<br>それに、ブランチを使ってても、自分の変更がモデルの変更と混ざっちゃうのを防げない。ロールバックも難しくて、自分の作業とモデルの出力を切り分ける羽目になる。<br>サンドボックスをデフォルトにすれば、何も考えなくても使えるし、チェックするまでコードベースに何も残らないから安心。" userName="danenania" createdAt="2025-03-20T00:25:48" color="#45d325">}}

{{<matomeQuote body="最新の変更がダメだったら、サンドボックスでどうやって戻るの？3ステップ戻るには？サンドボックスの外で変更したら、どうやってコピーするの？変更を分離するには？<br>サンドボックスを便利にするには、ソース管理の仕組みを実装することになるよね。それなら、gitを使った方がいいんじゃない？ユーザーに見えない裏側でブランチにコミットするとか。<br>サンドボックスが実際にどう機能するか、じっくり考えてみて。サンドボックスに切り替えて、LLMでコードを書いて保存して、手書きでコードを書いて、またサンドボックスに切り替えて、LLMでコードを書いて…<br>使いこなせるようになる頃には、gitブランチを切り替えるなんて、どうでもよくなってるよ。" userName="fragmede" createdAt="2025-03-20T01:15:33" color="">}}

{{<matomeQuote body="これは全部実装済みで、実際に使われてるんだよね。あなたのコメントで言及されたことは全部カバーされてる。<br>サンドボックス内でブランチを作って、別のアプローチを試すこともできるよ。準備ができるまで、プロジェクトに何も残らないから安心。<br>gitをベースにしてるよ。<br>https://docs.plandex.ai/core-concepts/version-control" userName="danenania" createdAt="2025-03-20T01:45:47" color="#ff5c5c">}}

{{<matomeQuote body="LLMはさー、マジで要件のこと何も知らねーんだよね。制約を全部指定しないで何かやらせようとすると、学習データから一番確率の高い答えで勝手に埋めちゃうんだよ。それでいい時もあるけど、もっとカスタムなことしたいなら、ちゃんとLLMに教えてあげないとダメ。<br>「AIにプログラマーが置き換わるには、クライアントが正確に要求を説明する必要がある。だから、俺たちはまだ大丈夫」って言葉を思い出すわ。" userName="yamrzou" createdAt="2025-03-20T04:49:56" color="">}}

{{<matomeQuote body="「AIにプログラマーが置き換わるには、クライアントが正確に要求を説明する必要がある。だから、俺たちはまだ大丈夫」ってマジそれな！<br>でも、今はね。LLMも場合によっては、非標準的なやり方とか、最適じゃないやり方に気づいて、「もしかして、こうしたいんじゃない？」みたいな提案してくるじゃん？選択肢も出してくるし。結局、クライアントは誰かに選んでほしいんだよね。<br>あと、LLMは抽象度の違うレベルでの評価が苦手っぽい。質問された範囲内での改善案は出すけど、根本的なアプローチが間違ってることには気づかない。XY problemってやつ。<br>理論上は、改善できると思うけどね。でも、複雑なタスクは、UIが人間のUIと区別つかなくなるまで、人にお金払ってLLMとやり取りしてもらう人が多いと思うよ。" userName="jonahx" createdAt="2025-03-20T16:32:43" color="#ff5733">}}

{{<matomeQuote body="やっぱり、人が間に入ることでフィードバックができるのがデカいよね。「Xについては考えた？」「Yの要件は曖昧だよ」「ZとWは矛盾してるみたい」とかさ。<br>今まで、要件をコードに「コンパイル」する試みは全部失敗してるんだよね。だって、全てのニュアンスを要件ドキュメントに一発で書き出すなんて無理ゲーだし。それなら、英語の要件なんてすっ飛ばして、Javaで書いた方がマシ。<br>でも、AIアシスタントがいれば、（いずれは）フィードバックループを回して、コード書いて、要件を改善していく、ってのが人間よりも速く、正確にできるようになるかも。<br>まだわからんけど、人間のコーダーはまだ安心できないかもね。" userName="daxfohl" createdAt="2025-03-21T01:16:24" color="#785bff">}}

{{<matomeQuote body="＞Preparatory Refactoringでは、まず変更を容易にするためにリファクタリングし、次に変更を加えるべきだと言っています。リファクタリングの変更は非常に複雑になる可能性がありますが、セマンティクスを保持するため、変更自体よりも評価が容易です。<br>＞人間のソフトウェアエンジニアリングでは、何をすべきかを判断しようとするときによくあるアンチパターンは、要件を明確に説明することを強制せずに、すぐにソリューションを提案することです。多くの場合、問題空間は十分に制約されており、すべての要件を書き出すと、ソリューションが一意に決定されます。要件がないと、特定のソリューションをめぐる議論の混乱に陥りやすくなります。<br>新しいフレームワークやライブラリを学習するときは、チュートリアルからコードをコピーして必要なように微調整するだけで、ソフトウェアを簡単に使用できます。しかし、ある時点で、ソフトウェアで何が可能で何が不可能かを完全に理解するために、ドキュメントを最初から最後まで熟読することをお勧めします。<br>＞Walking Skeletonは、必要なすべての機能を備えたエンドツーエンドシステムの最小限の、粗末な実装です。重要なのは、最初にエンドツーエンドシステムを動作させ、その後でのみさまざまな部分の改善を開始することです。<br>＞バグがある場合、修正を試みる方法は大きく分けて2つあります。1つは、勘に基づいてランダムに試して運が良くなることを期待する方法です。もう1つは、システムの仕組みに関する自分の仮定を体系的に調べて、現実が自分の期待と一致しない場所を把握する方法です。<br>＞ソフトウェアのRule of Threeでは、コードを1回複製しても構わないが、3回目のコピーではリファクタリングする必要があると言われています。これは、重複を排除する方法が必ずしも明確であるとは限らず、3回目の発生まで待つと明確になる可能性があるという事実を考慮して、DRY（Don’t Repeat Yourself）を改良したものです。<br>これらは俺が苦労して学んだ教訓だけど（「学んだ」の定義によるけど、簡単だけど容易ではない）、こんなに簡潔かつ正確に表現されているのを見たことがない。GJ!" userName="colonCapitalDee" createdAt="2025-03-19T21:36:57" color="#ff5733">}}

{{<matomeQuote body="＂Preparatory Refactoring says that you should first refactor to make a change easy, and then make the change. ＂<br>マジそれ。<br>リファクタリングしてたら同僚に「え、もう終わったの？」って言われたけど、まだ終わってない…PRは準備段階。<br>テストが終わった後、念のため「準備」の変更をしばらく本番環境に残して、何か見落としがないか確認したりする。その後に、本番の変更を始める。" userName="duxup" createdAt="2025-03-20T01:51:07" color="#ff5c5c">}}

{{<matomeQuote body="＞a common antipattern when trying to figure out what to do is to jump straight to proposing solutions, without forcing everyone to clearly articulate what all the requirements are.<br>これは、間違ったチームにいるかどうかを判断する簡単な方法。<br>要件を特定しようとしてるのに、マネージャーとかクライアントが曖昧にしてくる時。まるで、こっちが魔法使いみたいに全部答えを知ってると思ってるんだもん。<br>＞When you’re learning to use a new framework or library, simple uses of the software can be done just by copy pasting code from tutorials and tweaking them as necessary.<br>俺はガイドとかサンプルコードを使うようにしてる。（あればね）<br>ライブラリが複雑な時、ドメインを学ぶためにプロトタイプを作って色々試すとマジ助かる。コードは汚くなるけど、どこに何があるのかわかるようになる。" userName="skydhash" createdAt="2025-03-20T02:06:26" color="#ff33a1">}}

{{<matomeQuote body="＂The Rule of Three＂は、「直線を作るには３点必要」って言ってるようなもんだよね。<br>２点だけだと直線に見えるけど、３点目で初めて本当に直線だって確認できる。" userName="Singletoned" createdAt="2025-03-21T14:17:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="このリストを見る限り、LLMは「めっちゃ賢いジュニアプログラマー」レベルのコーディング能力を持ってるって感じかな。知識量はシニアよりも多いけどね。大局的な思考が欠けてて、何をする必要があるかじゃなくて、言われたことだけをやろうとする。<br>モデルはどんどん改善されていくと思うけど、コンテキストウィンドウの一時的な性質とか、作業中のコンテキストに関連情報を紐付けたり、リコールしたりする能力が課題だと思う。" userName="taberiand" createdAt="2025-03-19T20:32:47" color="#45d325">}}

{{<matomeQuote body="＞and default to doing what is asked of them instead of what needs to be done.<br>そんな単純なもんじゃないと思うよ。<br>統計的な「アトラクター」があるんだよね。問題の一部が、LLMが何百万回も見たような超一般的な問題に似すぎていると、出力が統計的に圧倒的な次の単語に「引き寄せられる」んだ。それが一番よく遭遇する問題。" userName="nomel" createdAt="2025-03-19T21:18:53" color="#785bff">}}

{{<matomeQuote body="大小問わず、いつも苦労してるわ。「futures」みたいな共通の概念の特殊なバージョンを提供するライブラリを使うと、間違いが頻発する。正しいコードがすぐ隣にあったり、丁寧なドキュメントを与えてもダメ。<br>`storesByCity`みたいなdictionaryっぽい名前の変数があるけど、実際はリストだったりすると？辞書みたいにイテレートしようとしたり、ソートされてないことに関する”バグ”を指摘したり、関数がリストを返す時に`var`の代わりに`var.Values()`を返そうとする。何度も「これはリストだよ！」ってフィードバックしても、コンパイルエラーが出ても、毎回そうなる。<br>Clean-Code的な構造になってるところもあれば、そうでないところもあると？矛盾する証拠がたくさんあっても、全部Clean-Codeに従ってると勝手に思い込む。<br>一般的なことを一般的な方法で構築する場合はすごいけど、一歩外に出ると、良いことよりも悪いことの方が多い。たまに嬉しい驚きもあるけど、簡単に見逃しやすいミスが多い。" userName="Groxx" createdAt="2025-03-19T21:26:01" color="">}}

{{<matomeQuote body="Cursorでよくあるんだよね。こっちが「いらない」って言った変更を何度も繰り返すの。ゲーム作ってたら、プレイヤーのgoldが毎tick5ずつ増えるって勝手に決めて、removeしろって言っても戻してくるんだもん！" userName="techpineapple" createdAt="2025-03-20T01:31:09" color="">}}

{{<matomeQuote body="言われたことをやる裏返しで、知ってることをやっちゃうってことね。適用性より、馴染みのある解決策を選んじゃう。ジュニアにもよくあることだよね。" userName="taberiand" createdAt="2025-03-19T23:25:07" color="#785bff">}}

{{<matomeQuote body="人間のcontext windowが足りなくなった時と似てるのが面白いよね。面接してると、できない人はworking memoryが足りなくなって、LLMみたいな動きになるんだ。注意しても右から左、問題文をhallucinateしたり、loopにハマったり。15分くらいでこうなるみたい。慣れてないから、問題をcompressできないんだろうね。LLMも同じだと思う。" userName="nomel" createdAt="2025-03-20T00:04:39" color="#785bff">}}

{{<matomeQuote body="それ思った！LLMでcodingしてて感じたのは、senior developerとして開発したいのに、junior developerの面倒を見てるみたいになるのが嫌だってこと。短期的に早くても、codeの質は落ちるし、burn outする。＞「モデルは改善する」って言うけど、本当にそうかな？もしかしたら根本的な問題かもよ？改善が遅くなってるし、訓練も高い。問題は前からあるのに、改善されてないじゃん。決めつけずに分析すべきだよ。" userName="DanHulton" createdAt="2025-03-20T01:24:14" color="#ff33a1">}}

{{<matomeQuote body="今のモデルは、LLMが得意なことを見つけるのが大事だよね。例えば、退屈なこと、syntaxとかdomain knowledgeがないこと、manager scheduleでcodingをdelegateしたい時とか。" userName="ezyang" createdAt="2025-03-20T02:29:35" color="">}}

{{<matomeQuote body="LLMを賢いjunior programmerって言う人は、本当にLLMでcodingしたことあるのかな？全然違うと思うけど。Claudeにcodebase全体のoperationを頼むと、途中で飽きて違うこと始めたり、operation自体を変えたりするんだよ。junior programmerはそんなことしないじゃん。" userName="threeseed" createdAt="2025-03-19T20:58:01" color="#785bff">}}

{{<matomeQuote body="そうだね、全体像を考えられないのがlimitだよね。でも、優秀なjuniorと働いてるんだね。code変更の際に全体像を考えるように促すのは大変だよ。" userName="taberiand" createdAt="2025-03-19T23:23:22" color="">}}

{{<matomeQuote body="確かにcontextが大事だよね。LLMにcodebaseの一部を渡してcontextを増やすと、mistakeが減るよ。context lengthが増えたり、必要な情報を送るtoolができれば、problemは解決すると思う。" userName="qingcharles" createdAt="2025-03-20T00:53:37" color="#38d3d3">}}

{{<matomeQuote body="LLMとの会話はjunior developerより酷いよ…<br>nginx logsをtibbleにloadするRのparserを書いてって言ったら、普通のnginx logsじゃないんだって。nginx-ingressだって。<br>tidyverse使えよ、base R使うな。regex書くなよ、square bracketに対応してないしformatも間違ってる。read_log使えって。readrのread_log使えよ！columnにlabel付けろ！何してんだよ！もう自分でやるわ…5分後にはbetterになったわ…" userName="ohgr" createdAt="2025-03-19T23:02:02" color="">}}

{{<matomeQuote body="machineなんだから、machineとして使えば良いんだよ" userName="woah" createdAt="2025-03-20T03:04:01" color="">}}

{{<matomeQuote body="ああ、やったよ。テキストエディタを使ってライブラリを組み合わせて、動くようにしたんだ。" userName="ohgr" createdAt="2025-03-20T08:46:39" color="">}}

{{<matomeQuote body="だってさー、ジュニアにこんなニッチなタスクで良い結果を期待する方が無理じゃん？<br>手取り足取り教える必要があると思うけど、そしたらLLMももっと上手くできるんじゃないかな。" userName="LinXitoW" createdAt="2025-03-20T10:49:07" color="">}}

{{<matomeQuote body="最初の段落以外、無能なジュニアとLLMのどっちの話してるのかマジで分かんなかったわ。<br>ジュニアの知識の幅の無さには納得だけどね。" userName="fn-mote" createdAt="2025-03-19T23:21:33" color="">}}

{{<matomeQuote body="ジュニアプログラマーには、もうちょい優しくするかな。<br>うちに来るやつらは優秀だし、ちゃんと学ぶし。LLMは学ばないんだよね。毎回同じこと言わなきゃいけないし。で、モデルがアップデートされると、また新しいアホなこと言い出すから、また言い争わなきゃいけない。<br>マジで時間の無駄。何にも知らないか、成果物の質とか気にしない人じゃないと、生産性上がるとは思えない。" userName="ohgr" createdAt="2025-03-19T23:32:30" color="#45d325">}}

{{<matomeQuote body="＞the guys I get are pretty good and actually learn. The model doesn't.”<br>まさにコレ。LLMはプロンプトを修正しない限り、マジでレベル上がらん。ファインチューニングすれば使えるレベルになるかもだけど、めっちゃ大変。（https://arxiv.org/pdf/2308.09895 はおすすめ）<br>でも、ベースレベルが高ければ良いってことでもある。PythonとかJSは、マジで優秀。pandasのクソみたいな処理とか、LLMにピッタリじゃん？<br>Rとかnginxは、学習データに少ないから、StackOverflowで似たようなキーワード検索した結果しか出てこないんだよね。" userName="groby_b" createdAt="2025-03-20T00:33:33" color="#ff5733">}}

{{<matomeQuote body="もしかして、LLMに暴言吐くと結果が悪くなるんじゃね？<br>比喩じゃなくて、最初のコメントみたいな口調でプロンプト書いてるなら、そりゃ酷い結果になるわな。暴言吐いても、LLMはビビらないし、クビになる心配もしないし。ジュニアエンジニアは違うと思うけど。<br>結局、LLMへのプロンプトは、文章力にかかってるんだよね。Slackのメッセージみたいに、適当に書くやついるけど、LLMはエスパーじゃないから。ちゃんと具体的に指示しないと。nginxのログとnginx-ingressのログの違いとか、なんでLLMが分かると思うの？例を示せばいいじゃん。<br>LLMに敬意を払ってるから、ネガティブな書き方してる人を見ると、なんか嫌な気分になるんだよね。なんでだろ？" userName="vipshek" createdAt="2025-03-20T01:30:59" color="#ff5733">}}

{{<matomeQuote body="それはLLMに入力するんじゃなくて、俺の心の声な。" userName="ohgr" createdAt="2025-03-20T08:55:41" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="でも、めっちゃ最適化された2000行のテキスト解析コードを書いてくれることもあるんだよね。ベテラン開発者が一日かけてやるようなことを。<br>LLMを人間と比較するのはやめるべき。マジでエイリアンだから。人間がしないようなミスをするし、人間には面倒なタスクをこなす。それが同じアウトプットで起こる。<br>AIのおかげで、マジで助かってる。退屈な作業を減らせるからね。" userName="qingcharles" createdAt="2025-03-20T00:52:20" color="#785bff">}}

{{<matomeQuote body="＞If I ask Claude to do a basic operation on all files in my codebase it won't do it.”<br>Claudeをどう使ったか分かんないけど、Cursorで試してみて？（デフォルトでClaude使ってる）<br>小規模なWebアプリのコード全体を“推論”させるのは、結構上手くいくよ。" userName="curious_cat_163" createdAt="2025-03-19T21:08:03" color="">}}

{{<matomeQuote body="もしかしたらそうじゃないかもだけど、ジュニアの開発者でもできる比較的簡単なタスクだよね。" userName="andoando" createdAt="2025-03-19T21:04:20" color="">}}

{{<matomeQuote body="そこがマジで助けてほしいところなんだよなー。時間かかるし。残りは自分でできるから、俺はバカじゃないし。" userName="ohgr" createdAt="2025-03-19T23:05:27" color="#45d325">}}

{{<matomeQuote body="＞モデルは今後も改善されていくと思うけど、どうやって？もう世界のコード全部学習済みでしょ？行き詰まりじゃん。<br>＞残るはコンテキストウィンドウを大きくすることくらいだけど、それも効果薄いし（ウィンドウを2倍にしても精度は10%しか上がらないとか）。局所最適にいるよね。" userName="lelanthran" createdAt="2025-03-19T21:53:36" color="">}}

{{<matomeQuote body="意味わかんない。Claude 3.7 SonnetはClaude 3.5 Sonnetより優れてるけど、世界のコードをたくさん学習したからじゃないでしょ。モデルは色々な方法で改善してるじゃん。大きくしたり、速くしたり、パラメータの効果的な使い方とか、RLHFとか。" userName="dcre" createdAt="2025-03-19T21:59:49" color="#ff5733">}}

{{<matomeQuote body="＞モデルは色々な方法で改善してるって言ったけど、大きくしたり、速くしたり、パラメータの効果的な使い方とか、RLHFとか。<br>改善してないとは言ってないよ。効果が薄れてきてるって言ってるの。<br>この2年の方が、その前の2年よりもLLMに力を入れてるのに、成果は全然小さいじゃん。投資した労力に見合ってないってこと。" userName="lelanthran" createdAt="2025-03-19T22:41:55" color="#ff5733">}}

{{<matomeQuote body="局所最適にいるって言ってたじゃん。矛盾してるよ。" userName="dcre" createdAt="2025-03-20T15:59:59" color="">}}

{{<matomeQuote body="記事にも書いてあるけど、MCP連携を拡大して改善することとか。モデルがシステムのコンテキスト内でより効果的に作業できるようなツールを与えるってこと。" userName="taberiand" createdAt="2025-03-19T23:18:15" color="#ff5733">}}

{{<matomeQuote body="はーい、Hacker News！ブログの記事が増えてきて、整理されてないのが悩み。何か良い整理方法ないかな？" userName="ezyang" createdAt="2025-03-19T18:34:11" color="">}}

{{<matomeQuote body="構造を増やして、Fowlerの本とかrefactoring.guruにあるようなパターンランゲージを取り入れてみたら？　もうほとんどできてるけど、見出し（問題、症状、例、緩和策、関連など）に整理するとか。<br>LLMでほとんどできると思うよ。各項目に短い要約[1]を追加して、インデックスページに表示するとか。<br>[1]: https://gohugo.io/content-management/summaries/" userName="joshka" createdAt="2025-03-19T20:19:35" color="#45d325">}}

{{<matomeQuote body="記事を整理して、観察された落とし穴・盲点と対策で分けると見やすいかも。記事によっては「実践ありき」だったり「落とし穴ありき」だったりするね。事例が多いのはいいね！" userName="datadrivenangel" createdAt="2025-03-19T18:47:25" color="">}}

{{<matomeQuote body="全部1ページにまとめたらどう？そしたらナビゲートとか検索が楽になると思う。" userName="smusamashah" createdAt="2025-03-19T19:16:59" color="">}}

{{<matomeQuote body="インデックスされてるけど、クリックしないと全部読めなくない？少なくとも俺はそう思う。落とし穴と対策を分けるってアイデアもいいね。" userName="elicash" createdAt="2025-03-19T19:42:25" color="">}}

{{<matomeQuote body="Wordpressみたいに、記事の概要を表示するのはどう？概要がリストに表示されれば、記事の内容を把握しやすくなるし、リストが長くなりすぎるのも防げると思う。" userName="lelandfe" createdAt="2025-03-19T20:40:11" color="#38d3d3">}}

{{<matomeQuote body="全部1ページに表示して、リンクをクリックしたら同じページの該当箇所に飛ぶようにすればいいんじゃない？最近は1つのHTMLで色々できるし。" userName="smusamashah" createdAt="2025-03-20T10:37:03" color="">}}

{{<matomeQuote body="読んだリンクの色を変えるのはどう？既読リンクの色を変えれば、どこを読んだか分かりやすくなると思う。" userName="rav" createdAt="2025-03-19T19:52:56" color="#ff5c5c">}}

{{<matomeQuote body="前の記事/次の記事みたいなナビゲーションがあると嬉しいな。毎回リンクページに戻るの面倒だし。<details>タグで全部包んでナビゲーションなくすのもありかも。<br>＞https://developer.mozilla.org/en-US/docs/Web/HTML/Element/de…" userName="cookie_monsta" createdAt="2025-03-19T19:43:50" color="">}}

{{<matomeQuote body="人気とか個人的な好みとか、色んな要素をスライダーで評価できるブログがあったよ。スライダーを動かすとランキングがリアルタイムで更新されるんだ。<br>あと、これも見てみて。<br>＞https://news.ycombinator.com/item?id=40774277" userName="incognito124" createdAt="2025-03-19T23:27:04" color="">}}

{{<matomeQuote body="今の形式で全然問題ないよ！全部読んだけど、構成がおかしいとか全く思わなかった。各セクションに具体的な例があるのがマジで良い。今後も例は絶対残して！<br>貴重な情報を共有してくれてありがとう！" userName="Sxubas" createdAt="2025-03-20T00:22:03" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
