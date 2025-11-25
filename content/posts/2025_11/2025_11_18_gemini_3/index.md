+++
date = '2025-11-18T00:00:00'
months = '2025/11'
draft = false
title = 'Gemini 3、数学で人間越えを達成か？既存モデルを圧倒する性能に驚きを隠せない！'
tags = ["AI", "LLM", "Google", "数学", "プログラミング"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Gemini 3、数学で人間越えを達成か？既存モデルを圧倒する性能に驚きを隠せない！

引用元：[https://news.ycombinator.com/item?id=45967211](https://news.ycombinator.com/item?id=45967211)




{{<matomeQuote body="ここからGemini 3の開発者向け情報と、新しいチャットのプロンプトを見れるよ！<br>https://blog.google/technology/developers/gemini-3-developer...<br>https://aistudio.google.com/prompts/new_chat?model=gemini-3-..." userName="preek" createdAt="2025/11/18 15:09:38" color="">}}




{{<matomeQuote body="好奇心から、2025年11月16日に公開されたばかりの最新のProject Euler問題をGeminiに与えてみたんだけど、多分トレーニングデータには入ってないはず。<br>Geminiは5分10秒考えて、正しい答えを出すPythonのコードをくれたんだ。リーダーボードによると、この問題を解いた人間の中で一番速い3人は、それぞれ14分、20分、1時間14分かかってるらしい。もちろん、こういう問題はモデルがRLチューニングされてる分布内にあると予想はしてたけど、フロンティアモデルが数分で解いちゃうなんてすごい！俺なら何日もかかるような問題をさ。" userName="lairv" createdAt="2025/11/18 17:37:15" color="#ff5c5c">}}




{{<matomeQuote body="俺もGemini 3 Pro Previewを使ってみたよ。271秒、つまり4分31秒で終わったんだけど、残念ながら答えは間違ってたんだ。<br>しかも、StackExchange.comとかYouTube.com、Mpmath.org、Ncert.nic.in、Kangaroo.org.pkみたいな8つの“ソース”を返してきたんだよ。ウェブ検索は使うなって明確に言ったのにさ。でも、それでもまだ役立つツールではあるな。洞察の大部分は確実に捉えてるし。プロンプトはこれだよ: https://aistudio.google.com/app/prompts?state=%7B%22ids%22:%..." userName="thomasahle" createdAt="2025/11/18 18:28:13" color="#45d325">}}




{{<matomeQuote body="Gemini 3が数学で他のフロンティアモデルよりはるかに先行してるってことは、モデル自体についてもっと一般的なことを教えてくれてるのかもね。<br>MathArena Apexで23.4%を記録したんだ。Gemini 2.5 Proの0.5%、Claude Sonnet 4.5の1.6%、GPT 5.1の1.0%と比べると、これは段階的な進歩じゃなくて、劇的な変化だよ。ただのデータ増や計算能力アップじゃなく、新しい発見があったってこと。数学でこれだけ成功するには、ただ確率的に生成するだけじゃなくて、検証可能な探索が必要なんだ。<br>自分がやってることを検証して、間違いを見つけたら検知して、別のアプローチを試すために立ち戻る必要があるってこと。SimpleQAベンチマークも、我々が研究のブレイクスルーを見てる可能性を示唆してる。データや計算能力が増えただけじゃないんだ。Gemini 3 ProはGPT-5.1の2倍以上の信頼性（72.1%対34.9%）を達成したしね。これは段階的な利得じゃなくて、幻覚を減らす面での飛躍的な変化だよ。<br>そして、これこそが、確率的トークン予測から検証済み探索、つまりより良いエラー検出とエラー発見時のバックトラッキングへの根本的なシフトがあった場合に期待されるものなんだ。それが数学での突出した性能、信頼性、さらにはGUI操作（ScreenSpot-Proで72.7%対GPT-5.1の3.5%）を説明できるのかもしれないね。" userName="panarky" createdAt="2025/11/19 00:06:29" color="#38d3d3">}}




{{<matomeQuote body="公平に言って、モデルが高いEloスコアを出すのは、単純に速いからってのも大きいよ。十分な時間があれば、多くの真面目な競技プログラマーは同じかそれ以上の結果を出せるだろうし。<br>でも、この結果を見ると、今世紀末までには、これらのパズルに対してStockfishがチェスに対してそうであるようなものが登場しても驚かないね。つまり、事実上のグラウンド・トゥルースであり、人間が妥当な時間制限内で見つけるのは絶対不可能だろうなっていう解法をしばしば編み出すようなものがさ。" userName="qsort" createdAt="2025/11/18 18:02:28" color="#ff5733">}}




{{<matomeQuote body="もし誰か、そんな「ground truth」かつ「absolutely ridiculous」な解法の例を挙げてくれたら嬉しいな！たとえ賢い人間が作るのに長い時間がかかったとしてもさ。そんな楽しいプログラミングコードを探求してみたいし、知識豊富な人間が「ground truth」であり「absolutely ridiculous」だと考えるものが、通常の時間制約内でどういうものなのかも知りたいんだ。" userName="nerdsniper" createdAt="2025/11/18 18:52:16" color="">}}




{{<matomeQuote body="俺、うまく説明できてなかったね。Stockfishは超人的なチェスプログラムなんだ。チェス分析では「ground truth」として日常的に使われてるんだよ。もしStockfishがミスをしたと言ったら、まず間違いなく実際にミスしてる[0]。それに、最高の人間と比べても比べ物にならないほど強いから、たまに提案する手がものすごく直感に反してて、大会の状況で人間が見つけるのは現実的じゃないんだ。<br>もちろん、一般的なソフトウェア開発はもっとオープンエンドだけど、パズルや競技みたいに閉じたゲームのような環境に限定すれば、そのタスクでRLしまくったエージェントシステムなら、似たようなスキルレベルを達成できるのはありえそうだよ。もしそこまで行ける基盤モデルがあるなら、たとえ一貫性がなくても、試行回数を多くするのが安上がりな環境なら、RLが月まで、いやそれ以上最適化できるような設定になるんだ。俺は未来を予測しないし、そう主張する人には懐疑的だよ。現在を正しく予測するのだって難しいのにさ。ただ、これまでの進歩を考えると、数年でそんなシステムができる可能性は十分あるって言ってるだけ。それがどんな見た目になるかの詳細は俺の給料じゃわかんないな。<br>---<br>[0] エンドゲームやクローズドポジションとかでは注意が必要だけど、あくまで例として使ってるよ。" userName="qsort" createdAt="2025/11/18 19:14:58" color="#ff5733">}}




{{<matomeQuote body="今までの経験から言うと、一発芸みたいな効果は限界があるんだよな。数十万トークンの長いコンテキストで複雑なことをやらせると、どのモデルも同じようにボロボロになる。Sonnet 4.5を1Mトークンで使っても、1万行以下のコードベースでさえ混乱し始める。みんな大きな進歩を主張してるけど、これって企業の宣伝じゃないか？俺がGemini 3にHome Assistantの簡単なYAML問題（3～5行で済むやつ）を頼んだら、見事に失敗したよ。まだ人間は安泰だと思うね。" userName="windexh8er" createdAt="2025/11/19 01:13:55" color="#38d3d3">}}




{{<matomeQuote body="そうそう、ゲーム分析だと、AIが悪いって言ったGMの手が実は良い手だったって言われることあるよね。でも、そういうのって超特殊な状況でしか起きないんだよな。" userName="pclmulqdq" createdAt="2025/11/18 19:21:17" color="">}}




{{<matomeQuote body="Terrence Taoがね、一般の人からの貢献って結局、チェックの手間の方がメリットを上回るから逆効果だって主張してるんだ。<br>「ほとんどの研究プロジェクトで、一般の人からの意見は助けにならない。実際、エラーチェックに時間がかかるだけだ。」<br>最先端のLLMもドジなミスをするから、彼らが時々すごいと思われても、結果的にマイナスになる’エラーを犯しやすい数学者’のカテゴリーに入るかもね。<br>参照元: https://www.youtube.com/watch?v=HUkBz-cdB-k&t=2h59m33s" userName="nomilk" createdAt="2025/11/19 07:14:49" color="#785bff">}}




{{<matomeQuote body="一般的に、俺は経済のあらゆる分野で生産性を上げることに全面的に賛成だよ。" userName="eru" createdAt="2025/11/19 07:03:15" color="">}}




{{<matomeQuote body="リクエストされたプロンプトが存在しないか、アクセス権がないよ。<br>もしリクエストが正しいと思うなら、まずAI StudioにGoogle Driveへのアクセスを許可して、それからオーナーにプロンプトを共有してもらうように頼んでみてね。" userName="JBiserkov" createdAt="2025/11/18 18:47:00" color="">}}




{{<matomeQuote body="最初はジョークかと思ったよ。人のプロンプトを実行するのにDriveへのアクセスが必要なんだって。マジか。" userName="junon" createdAt="2025/11/18 19:06:48" color="">}}




{{<matomeQuote body="AIのせいで何百万もの子供がカンニングして、多くの大人が読書や思考の代わりにGPUを使ってるのを見るよ。責任を持って学習に使ってる人は0.001％くらいだね。お前は本当に馬鹿だよ。" userName="ImaLuddite" createdAt="2025/11/19 02:47:06" color="">}}




{{<matomeQuote body="AIは素晴らしい学習ツールだよ、まずね。何を得られるかは、何を投入するか次第だ。<br>1800年代初頭に織物工場を破壊したラッダイト（Luddite）を知ってるかな？知らなければ: https://en.wikipedia.org/wiki/Luddite<br>ラッダイトは悪評が多いけど、技術進歩は止められないのが現実だよ。問題のあるテクノロジーがあっても繁栄する方法を見つけて、人を搾取するシステムに挑戦すべきで、ツールを攻撃するのは違うよ。" userName="antonvs" createdAt="2025/11/19 01:17:23" color="#ff5733">}}




{{<matomeQuote body="みんなの生活水準を上げるためだよ。" userName="eru" createdAt="2025/11/19 15:04:18" color="">}}




{{<matomeQuote body="君への長い返信がフラグ立てられて消えちゃったから、ここに投稿するね。新しいユーザー名をつけさせてあげて嬉しいけど、他人に影響されると脳が焼かれるって心配しないの？<br>LLMが一部の人にしか価値がないって言うけど、そんなものは世の中にたくさんあるよね？放射線技師がAIを使うのは脳を焼くことじゃないの？世界は変化するんだから、それに合わせて変わる方が面白いし、挑戦的だよ。<br>俺はソフトウェア開発でLLMが新しい可能性を開いてくれた。君が言ってた依存も、オープンウェイトモデルを使えば問題ない。俺の経験から、LLMは建設的で生産的な使い方をすれば多くの人に広がると思うよ。" userName="antonvs" createdAt="2025/11/19 04:32:21" color="#ff5c5c">}}




{{<matomeQuote body="それって、プレイヤーが相手の傾向を理解して最適なプレイをさせないようにしてるの？それとも機械の分析自体に欠陥があるの？" userName="emodendroket" createdAt="2025/11/18 19:27:12" color="">}}




{{<matomeQuote body="技術のせいで人がクビになるのと、どう折り合いをつけるんだい？" userName="elbear" createdAt="2025/11/20 10:11:16" color="">}}




{{<matomeQuote body="一般人と違ってAIモデルは訓練できる。一般人を訓練したら専門家になるから、もう一般人じゃないよね。" userName="red75prime" createdAt="2025/11/19 10:45:47" color="">}}




{{<matomeQuote body="これ、俺が書いたんだけど、LLM使いすぎて話し方まで似てきたかな？<br>俺の文章スタイルを攻撃したり、悪意をほのめかしたりするんじゃなくて、ちゃんと根拠のある議論をしてほしいね。Hacker Newsでいいコメントをするには、これ見てみて: https://news.ycombinator.com/item?id=38944467" userName="panarky" createdAt="2025/11/19 00:38:36" color="">}}




{{<matomeQuote body="君の返信に敬意を表して、誠実に答えるよ。<br>一部の人にしか恩恵がないものについてどうしたいかって？銃や車みたいに、規制すべきものはたくさんあるだろ。オープンで自由な社会なんて、資本家が搾取するためのデタラメだよ。<br>教室のコンピューターはair-gapにして、LLMを使った課題は剽窃で退学にすべきだ！LLMはただの剽窃ロンダリングマシンだよ。<br>COVID時のマスクが子どもの言語発達に影響したように、LLMも子どもの脳に予測不可能な悪影響を与えるはずだ。読む、考える、情報を処理する努力を奪っちゃダメだよ。俺自身、中年だけどもう影響を感じてる！<br>放射線技師がAIに置き換わるのはいい。危険な工場労働者が置き換わるのもいい。でもLLMは違う。社会全体の利益にならないし、不平等を広げるだけだよ。<br>子ども世代でAIの世界的実験をするのは反対だ。ソーシャルメディアやポルノから何も学ばなかったのか？<br>Uberが月20ドルで乗り放題になったら、みんな短距離でも使うだろ？無限ピザ機があったら、みんな太るだろ？表面上は良く見えても、長期的に社会には最悪なんだよ。<br>LLMのモラルハザードは山ほどある。学習や労働以外にもね。AI企業は自分たちの利益のために「ゲームチェンジャー」だと言ってるだけだ。昔の占星術師とAI企業は何も変わらないよ。LLMはDunning Kruger剽窃ロンダリングマシン。テック億万長者に支配された、テキスト押し出し機だよ。" userName="TechDebtDevin" createdAt="2025/11/19 05:48:01" color="#ff5733">}}




{{<matomeQuote body="俺の街Londrinaの歴代市長リストを尋ねると、ほとんどのモデルは間違えるんだ。オフラインモデルは全部ダメ。でもGemini 3だけは、弾劾された人まで含めて正確にリストアップしたんだよ。Wikipediaにある情報なのに、ほとんどのモデルはLondrinaみたいな「どうでもいい都市」の情報を正しく扱えないみたいだね。<br>ポルトガル語で「Londrinaのクールな観光スポット」って聞いても、99%正確だった。他のモデルがデタラメな情報を作るのと大違いだよ。桜とイペ（似てる）を混同した可能性はあるけどね。なんか、視覚的な理解があるみたいだね、俺の意見では。" userName="vitorgrs" createdAt="2025/11/19 04:06:32" color="#ff33a1">}}




{{<matomeQuote body="今後の読者のために文脈をはっきりさせるね。今一番新しい問題は#970だよ: https://projecteuler.net/problem=970" userName="sedatk" createdAt="2025/11/18 19:34:32" color="">}}




{{<matomeQuote body="モデルは修正を学べず、セッション内でも後退し続けるんだ。止める方法が見つからないよ。70%正しくて30%間違ってても良いって、まるで自動運転みたいだね。統計的には人間より優秀なことが多いけど、全ての人間に勝るわけじゃないし、間違える時は信じられないくらい基本的なミスをするんだから驚く。モデルサイズとデータが増えれば98%は正しくなるかもだけど、出力の信頼度表示が絶対欲しいな。ゴミも真珠も同じに見えるのは、何も無いより危険だよ。" userName="jacquesm" createdAt="2025/11/19 14:22:13" color="#785bff">}}




{{<matomeQuote body="これはすごいね。古いXMLを渡したら、Geminiは1分足らずで動くWebアプリを作ったんだよ。https://aistudio.google.com/app/prompts?state=%7B%22ids%22:%… 僕は何年もかけてXMLからAndroidやJava Swingアプリを作るコンパイラを開発したのに。Geminiはフォーマットの説明なしに同じことを短時間でやってのけた。Lovableでも試したけど、うまく動かなかったし、すぐにクレジットを使い果たしちゃった。これは別次元の体験だったね。" userName="davidpolberger" createdAt="2025/11/18 23:58:17" color="#ff33a1">}}




{{<matomeQuote body="これこそLLMが得意なタスクだよね。フォーマット変換とか定型文を作るのが得意なんだ。でも、要件を自分で決めたり、新しいアルゴリズムを開発するみたいな独自の研究は苦手だよ。" userName="zarzavat" createdAt="2025/11/19 03:26:46" color="#785bff">}}




{{<matomeQuote body="それって、コーディングの90%を言い表してるだけじゃん。" userName="codespin" createdAt="2025/11/19 03:36:51" color="">}}




{{<matomeQuote body="結局、LLMにはやる気も自己規律も必要ないってこと。これは今、ソフトウェア開発の最大のボトルネックだと思うな、要件とかの次だけど。" userName="Cthulhu_" createdAt="2025/11/19 08:57:49" color="#ff5733">}}




{{<matomeQuote body="LLMはもっと大きな記憶、あるいはより深い事実のスタックを持ってる感じだね。たくさんの情報源を素早く探して、より多くの知識で解決策を出せるみたい。人間は問題を解決しようとする前にあまり深く探さないし、失敗した時だけもっと掘り下げるからね。" userName="agumonkey" createdAt="2025/11/19 12:46:56" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LLMはグローバルな文脈や一貫性、深い理解が苦手で、現実世界ではそれが失敗の原因になるね。まともなものを作るには、たくさんのヒントとパターンを教える必要がある。すぐにリサーチするのは得意だけど、毎回ゼロから始めるし、問題を解決できないと『ごまかす』ことが多いんだ。もっと良くなるには、特定のコードベースモデルでの記憶力改善、深く調査するRL、過去の会話履歴の活用、そして運営コストの削減が必要だと思うな。" userName="nwienert" createdAt="2025/11/19 16:29:50" color="#45d325">}}




{{<matomeQuote body="コーディングは90%って言うけど、多くのプロのプログラマーが実際にコードを書くのはせいぜい20%くらいじゃないかな。ほとんどの時間は要件の明確化とかに費やされるんだよ。" userName="oblio" createdAt="2025/11/19 04:31:29" color="#785bff">}}




{{<matomeQuote body="他の開発者の仕事を聞けば聞くほど、本当に様々だよね。僕もいろいろな役割を経験してきたけど、『要件の明確化』が主な仕事だったことは一度もないな。新人の時はひたすらコードを書いてテストしてたし、リードの時はメンタリングやコードレビュー、会議が多かった。最近はデバッグやグラフィックデバッガーのキャプチャをじっと見つめてることがほとんどだよ。" userName="Agentlien" createdAt="2025/11/19 05:42:16" color="#38d3d3">}}




{{<matomeQuote body="リード開発者として、俺は主にビジネスや技術要件の明確化、コードレビュー、会議に時間を費やしたんだ。これを「人間中心のソフトウェアエンジニアリング」って言い換えられるね。グラフィックスデバッガーの話から察するに、君はゲーム開発者だろうけど、それは特殊な世界だよ。ほとんどの開発者は、複雑な社会環境を乗り切る必要があるんだ。ただコードだけ書いても、長期的にうまくいくとは思えないな。" userName="oblio" createdAt="2025/11/19 08:22:30" color="#785bff">}}




{{<matomeQuote body="「人間中心の側面」って言うけど、皮肉なことに人間はコミュ力低いじゃん？RLHFはLLMのコミュ力を上げるのに最適化されてるんだぜ。超人的なコーダーでありコミュニケーターであるAIが、人間の要件をコードに翻訳するのが下手だなんて、なんで思っちゃうの？" userName="falcor84" createdAt="2025/11/19 10:40:37" color="">}}




{{<matomeQuote body="今のLLMは「量」の点だけ超人なだけで、品質は全然「超人」じゃないよ。本当の超人ってのは品質が天井を突破することだろ。LLMは安くて量産できるけど、それはスーパーマンじゃなくて「1兆匹のアリ」って感じだね。" userName="oblio" createdAt="2025/11/19 12:12:48" color="#45d325">}}




{{<matomeQuote body="俺の経験だと、ChatGPTやClaude Codeの文章やコードは俺が1発で書くより格段に質が高いって感じるんだ。AIの出力に俺が意見を出して修正させると、自分で書くより質も速度も上回るね。それにAIが人間を超えたタスクはたくさんあるぜ。<br>1. チェス (Stockfish ELO 3644 vs Magnus Carlsen 2882)<br>2. 自然言語理解 (SuperGlueで人間超え)<br>3. 画像分類 (ImagenetでAI 98.55% vs 人間 94.9%)<br>4. 癌診断 (AI 0.994 vs 人間 0.884)<br>5. 競技数学 (IMOでゴールドレベル)<br>6. 競技プログラミング (ICPCで全問正解、AtCoderでほぼ人間超え)<br>完璧じゃないけど、もう人間よりAIに頼ることが多いよ。<br>P.S.<br>AIが生成したコードドキュメントの品質は、人間が書いたものより優れてるって研究もあるぜ。 [8] https://arxiv.org/pdf/2312.10349" userName="falcor84" createdAt="2025/11/19 14:03:41" color="#ff5733">}}




{{<matomeQuote body="ブラザー、言語学習に人生を捧げて、それでいい暮らしをしてる人たちにさ、その言語が機械翻訳で簡単に手に入るようになるって言っても、なかなか納得させられないだろ。" userName="Workaccount2" createdAt="2025/11/19 15:10:26" color="">}}




{{<matomeQuote body="まさにそうだね、アプトン・シンクレアの言葉を借りるなら、「人が何かを理解するのを困難にさせるのは、それが彼の給料にかかっている時だ。」ってことだ。" userName="falcor84" createdAt="2025/11/19 15:13:07" color="">}}




{{<matomeQuote body="ビジネスやプロダクト担当者が、開発者に要件を渡す前にLLMを使って「要件を明確にする」ようになる可能性はあると思う？彼らにとってこの作業は退屈な雑務だろうし、それはLLMが得意とすることだからね。" userName="SoftTalker" createdAt="2025/11/19 15:51:45" color="">}}




{{<matomeQuote body="彼らは90%のコーディングが苦手だけど、それは別の理由から。とはいえ、しつこく面倒を見てやれば、一部の作業はちょっと早く進められるかもね。" userName="nwienert" createdAt="2025/11/19 03:43:29" color="">}}




{{<matomeQuote body="それは実際のコーディングの「タイピング」部分の90%かもしれないけど、コーディングの「仕事」の90%ってわけじゃないだろ。" userName="taco_emoji" createdAt="2025/11/19 17:40:54" color="">}}




{{<matomeQuote body="「AIは自分で要件決められない」って言うけど、今の最先端モデルは、あんまり明確に言わなくても結構要件を見つけ出すのがうまいよ。「新しいアルゴリズム開発」は無理って思ってたけど、数ヶ月前にGemini 2.5 Proに複雑なパターンマッチングアルゴリズムを説明したら、すごく賢いアプローチを出してきて驚いたんだ。数学に強いから、そこら辺の能力が被ってるのかもね。<br>AIが苦手なのは、計算、HTML/CSSの視覚化、グラフィックスプログラミングの視覚的なエラー（z-indexの問題とか）だろうね。" userName="arnorhs" createdAt="2025/11/19 13:16:41" color="#785bff">}}




{{<matomeQuote body="複雑なアルゴリズム開発をGeminiでやろうとしてたんだ。でもGeminiで作ったアルゴリズムは特許取れないかもね。でも、それは私たちにとって良いことなのかもな。" userName="SoftTalker" createdAt="2025/11/19 15:53:32" color="">}}




{{<matomeQuote body="詳細な要件定義には現実との密な接触が必要だよね。技術だけでなく組織やお金の制約も含まれる。適切なコンテキストがあればAIもきっとうまくやるだろうけど、長期的な全体像を捉えるのは今のところ人間の方が得意みたいだね。" userName="xpe" createdAt="2025/11/19 17:07:07" color="#ff33a1">}}




{{<matomeQuote body="前にFlash 2.5で試したAIコードのアナログ時計のプロンプトをGemini Pro 3 Previewで試したら、Flash 2.5より断然良い結果が出たよ。一発で正確にできたのはマジで感動だね。例は限定的だけどさ。<br>プロンプト：リアルタイムで更新されるアナログ時計ウィジェットを作って。秒針は1秒ごとに動いて、全ての時刻表示が見えて、モダンでおしゃれな文字盤にして。数字や針の位置も正確に合わせてね。[0] https://aistudio.google.com/app/prompts?state=%7B%22ids%22:%..." userName="dwringer" createdAt="2025/11/18 17:07:57" color="#ff5c5c">}}




{{<matomeQuote body="これは多分、Wes Bosの無料JavaScript30コースのプロジェクトだから、LLMのトレーニングデータに入ってるんじゃないかな。[0] https://javascript30.com/" userName="kjgkjhfkjf" createdAt="2025/11/18 22:14:20" color="#ff5c5c">}}




{{<matomeQuote body="そうなると、トレーニングデータってかなりたくさん必要だよね。プロジェクトが一つだけじゃ“まばら”すぎて足りない気がするんだけど。でも、この例は多くの人に使われて拡散したってことなのかな？" userName="baxtr" createdAt="2025/11/18 22:28:53" color="">}}




{{<matomeQuote body="そのリポジトリ[0]、今までに41300回くらいフォークされてるよ。[0] https://github.com/wesbos/JavaScript30" userName="kjgkjhfkjf" createdAt="2025/11/18 22:35:13" color="#785bff">}}




{{<matomeQuote body="トレーニングデータに同じリポジトリとかフォークが含まれるってのは、かなり考えにくいな。それだけで公開されてるデータセットのサイズを超えちゃうだろ。" userName="ricardobeat" createdAt="2025/11/19 17:52:16" color="#ff5c5c">}}




{{<matomeQuote body="秒針が12を指した後のあの微妙な“ゆらぎ”アニメーションがないんだよね。マジで見ちゃいられない。" userName="stalfie" createdAt="2025/11/18 17:57:50" color="">}}




{{<matomeQuote body="弁解させてもらうと、そのコードは実際にそのエッジケースを意図的に外してるんだよ。理由もちゃんと書いてあるし。<br>/* 回転を計算<br>累積計算ロジックを頭の中で使うけど、ここではトランジションリセットトリックや特定のアニメーションスタイルのおかげで単純な度数で動く。360度から0度への”巻き戻し”グリッチを防ぐには、ラップアラウンドのためにトランジションなしのシンプルなティックを使えるけど、この特定のReactレンダリングの簡潔さのため、標準の0-360度でいく。秒針の巻き戻しをうまく処理する堅牢な方法は度数を累積することだけど、標準的な時計ウィジェットはよくリセットする。 */" userName="apetresc" createdAt="2025/11/18 20:16:00" color="#38d3d3">}}




{{<matomeQuote body="スイスとドイツの鉄道時計も実は同じように動くんだ。分針が進む間に（半秒間？）止まるんだよ。https://youtu.be/wejbVtj4YR0" userName="skipnup" createdAt="2025/11/18 20:43:51" color="#45d325">}}




{{<matomeQuote body="スイスの駅時計って、秒針は58.5秒で一周して一時停止、毎分マスタークロックからの信号で分針が進むんだって。Mondaineの時計もこの動きをエミュレートしてるらしいよ。<br>https://en.wikipedia.org/wiki/Swiss_railway_clock" userName="quickthrowman" createdAt="2025/11/18 22:20:11" color="#ff5c5c">}}




{{<matomeQuote body="ビデオの時計、秒針が「ゴツン」って感じで動くのが見えたよ。もっと滑らかな動きを期待してたんだけどな。" userName="Severian" createdAt="2025/11/18 22:01:19" color="">}}




{{<matomeQuote body="プロンプトで「秒針が12に止まるときに震えないように修正して」って言ったら、131秒で直ったよ。`useState()`とか`useEffect()`をたくさん使ったってさ。" userName="scotty79" createdAt="2025/11/19 02:14:15" color="">}}




{{<matomeQuote body="Gemini 2.5 Proでメートル法UNIX時計のウェブページを作ってもらったんだ。キロ秒、メガ秒、ギガ秒とかで時間を表す面白いシステムだよ。今なら1.76ギガ秒AUNIXだって。火星でも使えるんだってさ。いつか20フィートの物理的なメートル法UNIX時計を庭に作りたいな。" userName="kldg" createdAt="2025/11/18 23:45:16" color="#38d3d3">}}




{{<matomeQuote body="これ、Gemini 2.5 Proでもできたんだよね。Geminiは7月にも有名な時計のアートワークを再現できたんだよ。<br>https://gemini.google.com/app/93087f373bd07ca2<br>https://www.youtube.com/watch?v=7xfvPqTDOXo" userName="xnx" createdAt="2025/11/18 18:05:02" color="">}}




{{<matomeQuote body="色々改良してみたんだけど、ほとんど一発でうまくいったよ。秒針の「カチカチ」って音だけは2回目でやっと理想通りになったけどね！<br>https://ai.studio/apps/drive/1oGzK7yIEEHvfPqxBGbsue-wLQEhfTP..." userName="pmarreck" createdAt="2025/11/18 22:32:07" color="">}}




{{<matomeQuote body="これ、すごく良いね。秒針をスムーズにするのに3回やり直したんだ。最初はSVGでぎこちなかったんだけど、最終的にはうまくいったよ！<br>https://ai.studio/apps/drive/1yAxMpwtD66vD5PdnOyISiTS2qFAyq1..." userName="farazbabar" createdAt="2025/11/18 18:23:45" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「このプロンプトを見るにはGoogle Driveへのアクセスを許可して」って何でだよ？プライベートなファイル共有へのアクセスなんて絶対許可しないからね。Google、どうなってんの？" userName="thegrim33" createdAt="2025/11/18 17:24:38" color="">}}




{{<matomeQuote body="Google Driveに保存したファイルにGoogleがアクセスするのを嫌がるの？ってか、アプリケーション専用のフォルダにしかアクセスしないんだよ。" userName="LiamPowell" createdAt="2025/11/18 17:36:36" color="">}}




{{<matomeQuote body="データ学習の許可も必要だよね。Google Driveのデータそのものじゃなくても、個人情報が含まれるアカウントでアクセス許可を出すのは、障壁が弱すぎるし曖昧だと思うな。" userName="tibbar" createdAt="2025/11/18 19:18:40" color="">}}




{{<matomeQuote body="AI StudioがGoogle Driveに依存してるって仮定してるよ。<br>共有プロンプトもDriveのファイル共有使ってるから、Driveにアクセスできないと共有プロンプトも見れないんじゃない？" userName="dragonwriter" createdAt="2025/11/19 03:41:43" color="#ff33a1">}}




{{<matomeQuote body="多分Hanlon’s razor的に、Google Driveだけをストレージに使うのがUXとして合理的って決めたんだろね。<br>大企業論理ではわかるけど、ユーザーとしてはマジ変。<br>テキストチャットは独自形式なのに、画像は普通のJPEGやPNGなのも謎。" userName="lxgr" createdAt="2025/11/18 23:24:42" color="#785bff">}}




{{<matomeQuote body="これは他の人が使ってたプロンプトと違うぞ。<br>時間指定ないから簡単になってるし、JavaScriptも入ってる。<br>元のプロンプトはもっと難しくて、俺が試したらひどい時計作って失敗したよ。<br>これ見て：https://ai.studio/apps/drive/1c_7C5J5ZBg7VyMWpa175c_3i7NO7ry..." userName="malfist" createdAt="2025/11/18 22:54:05" color="#ff33a1">}}




{{<matomeQuote body="URLが見つからない:(" userName="irthomasthomas" createdAt="2025/11/19 00:09:43" color="">}}




{{<matomeQuote body="こないだあのページ見たけど、これはめちゃくちゃすごいね！<br>他のページと同じ2000トークン制限があるのかな？" userName="dyauspitr" createdAt="2025/11/18 17:27:54" color="">}}




{{<matomeQuote body="違うよ。<br>それに、他のページは純粋なHTMLとCSSだけだった。<br>この時計はReactとJavaScript使ってるから、公平な比較じゃないね。" userName="Taek" createdAt="2025/11/19 03:28:16" color="#ff5c5c">}}




{{<matomeQuote body="これ、前の投稿のページと同じプロンプトや技術スタック使ってないよ。<br>aistudioだと、いくつかのファイルにわたってウェブアプリ作るし。<br>確かに簡潔だけど、そこまで驚くほどじゃないと思うな。" userName="dwringer" createdAt="2025/11/18 17:34:45" color="#785bff">}}




{{<matomeQuote body="JavaScriptも入ってるけど、オリジナルのプロンプトではダメだったやつだよ。<br>それに、時計の時刻も指定してないし。" userName="malfist" createdAt="2025/11/18 22:57:56" color="#ff33a1">}}




{{<matomeQuote body="見た目はかなり良いけどさ、細かく言うと「quartz」と「design & engineering」が意味もなく入ってるよね。" userName="skybrian" createdAt="2025/11/18 17:58:54" color="">}}




{{<matomeQuote body="安物だけど、そこまでひどくない実際の時計によくあるやつだね。" userName="wongarsu" createdAt="2025/11/18 18:50:37" color="">}}




{{<matomeQuote body="Static Pelicanはつまんないね。最初の試みは、ハイファンタジーの魔術師の塔とか、緑のゴブリン、 grumpyな老魔術師がファイアボールを撃つSVGアニメーションを生成したんだ。ゴブリンの後ろからの視点でね。<br>https://codepen.io/Runway/pen/WbwOXRO" userName="SXX" createdAt="2025/11/18 18:15:40" color="">}}




{{<matomeQuote body="何回か試したあと、ゲーム開発からインスパイアされたストーリーのある、もっと長いアニメーションを作ったんだ。<br>https://codepen.io/Runway/pen/zxqzPyQ<br>PS: でもこれ、たぶん20回目くらいの試行なんだよね。" userName="SXX" createdAt="2025/11/18 19:11:14" color="">}}




{{<matomeQuote body="うわ、これマジでクソだな。生成されたコードがめちゃくちゃで、改善するのもすごく大変なのに、みんな感動してる。俺たちは一体どんな世界に住んでるんだよ…" userName="hollowturtle" createdAt="2025/11/19 03:26:28" color="#ff5c5c">}}




{{<matomeQuote body="もっと低評価をもらうために、コードの一部を晒すよ。<br>＞ setTimeout(() =＞ showSub(”Ah, Earl Grey.”, 2000), 1000);<br>＞ setTimeout(() =＞ showSub(”Finally some peace.”, 2000), 3500);<br>…みたいなスロップで仕事を失うなら、俺は別のことをして幸せになりたいね。" userName="hollowturtle" createdAt="2025/11/19 04:00:14" color="#45d325">}}




{{<matomeQuote body="じゃあ、お前ならどうするんだよ？" userName="sejje" createdAt="2025/11/19 04:14:54" color="">}}




{{<matomeQuote body="データとコードをちゃんと分離するね。そうすれば、コード中の数字を全部書き直さなくても、会話とそのタイミングを簡単に変更できるからさ。" userName="Timwi" createdAt="2025/11/19 05:58:59" color="#ff5c5c">}}




{{<matomeQuote body="お前が望む設定なんて、たった一つのプロンプトでできることじゃん…" userName="DrSiemer" createdAt="2025/11/19 06:11:27" color="">}}




{{<matomeQuote body="そうだな、どんどんスロップを積み重ねていこうぜ。AIはコードをde-spaghettifyするのは苦手で、さらにスロップを積み重ねるのが得意なんだから。" userName="hollowturtle" createdAt="2025/11/19 09:43:10" color="#ff5c5c">}}




{{<matomeQuote body="LLMは、お前自身のソフトウェアアーキテクチャのスキルと同じくらいしか良くないんだよ。" userName="SXX" createdAt="2025/11/19 11:14:58" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
