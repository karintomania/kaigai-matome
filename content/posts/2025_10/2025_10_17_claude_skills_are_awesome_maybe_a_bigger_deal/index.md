+++
date = '2025-10-17T00:00:00'
months = '2025/10'
draft = false
title = 'Claudeスキルが神がかってる！実はMCPより革命的なのかも？'
tags = ["AI", "LLM", "プログラミング", "開発", "技術革新"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Claudeスキルが神がかってる！実はMCPより革命的なのかも？

引用元：[https://news.ycombinator.com/item?id=45619537](https://news.ycombinator.com/item?id=45619537)




{{<matomeQuote body="社内でもmonorepoで似たことやってるって。<br>コンテキストドキュメントが昔の開発ドキュメントより使える理由を3つ挙げてるよ。<br>1) Claudeでフィードバックが速い。<br>2) ツールが作成を助ける。<br>3) プログラマーはAIを操るためのドキュメントにやる気が出る。他にも理論ある？" userName="michael1999" createdAt="2025/10/17 22:54:18" color="#785bff">}}




{{<matomeQuote body="これはプリンシパルエージェント問題とマシュマロテストの要素があるね。<br>AIが使うドキュメントは、自分を助けるから、情報を書く強い動機と短いフィードバックループが得られるんだ。<br>LLMがコメントを消すから、ドキュメントは増えたけどコメントは減ったよ。" userName="7thpower" createdAt="2025/10/18 00:26:43" color="#ff5733">}}




{{<matomeQuote body="君のLLM、コメント消すの？僕のはやたら追加するんだけど。" userName="Wowfunhappy" createdAt="2025/10/18 02:36:05" color="">}}




{{<matomeQuote body="これは賛否両論あるだろうけど、僕はコメントを残すことにしたよ。<br>LLMがコードを書く“確率空間”がコメントを書きがちだから、残しておけば次のLLMも同じ空間から始められる、ってのが僕の理論。<br>今はとにかくコードが正しければいいから、コメントや変数名とかの厳密な表現は気にせず、速さを優先してるんだ。" userName="evanmoran" createdAt="2025/10/18 06:14:51" color="#785bff">}}




{{<matomeQuote body="コードコメントは人間にもAIにも理解の助けになると思うんだ。<br>NBA選手がプライドでアンダーハンドシュートをしないのと似て、ソフトウェアエンジニアもコメントを敬遠しがちだけど、全体的にはコード理解度を上げると強く思うよ。<br>HNでも『ジュニアSEみたい』って言われることあるけどね。" userName="jychang" createdAt="2025/10/18 07:54:22" color="#45d325">}}




{{<matomeQuote body="Geminiには『コメント多すぎる！』って怒鳴らなきゃならないんだ。デフォルトだとコードよりコメントの方が多いぐらいだよ。" userName="ls612" createdAt="2025/10/18 03:14:32" color="">}}




{{<matomeQuote body="ドキュメントは書いた瞬間から古くなるし、コード修正のたびに維持費がかかる追加の負債だね。<br>だからって書かないのはダメだけど、コスト認識は重要。<br>今の会社で古いドキュメントに何週間も無駄にした経験があるよ。<br>それでもやる価値はあるから、その負債は継続的に返済すべきだね。" userName="crowbahr" createdAt="2025/10/18 15:01:32" color="#45d325">}}




{{<matomeQuote body="この例え、嫌いだな。NBA選手はオーバーハンドでも90%決められるよ。<br>ただ、試合のプレッシャーや状況変化にうまく対応できない選手がいるだけさ。" userName="thenanyu" createdAt="2025/10/18 11:35:02" color="">}}




{{<matomeQuote body="自分のAGENTS.mdとか同等のファイルを確認してみて。<br>LLMが変な挙動をするのは、たいてい僕が古い指示を残してるのが原因なんだ。" userName="hu3" createdAt="2025/10/18 03:28:21" color="#ff5c5c">}}




{{<matomeQuote body="ドキュメントは、コードと同じリポジトリに置くべきだね。そして、コードレビューのプロセスで、PRと一緒に必ず更新するように強制するんだ。関連するドキュメントが更新されてないPRは通さない。Wikiみたいな別のシステムにドキュメントを置くのは、たいていアンチパターンだよ。だって、コードとすぐズレて誰も信用しなくなるからね。<br>しかも、最近のLLMは賢いから、PRを自動でチェックして、変更が既存のドキュメントに影響するか警告してくれるようにしたら、かなり使えるんじゃないかな？" userName="simonw" createdAt="2025/10/18 15:20:50" color="#45d325">}}




{{<matomeQuote body="ドキュメントが古いままになるのは、技術的負債ができるのと同じ理由ばかりだね。ビジネスのプレッシャー、ひどい設計、リソース不足。昔は、コードが変わるたびに良いドキュメントを更新し続けるのはコストがかかったんだ。" userName="Herring" createdAt="2025/10/17 23:51:15" color="">}}




{{<matomeQuote body="2) ツールがドキュメント作成を助ける、ってのはちょっと注意が必要だよ。たくさんの例とかURLとかを含める期待があると、かえって何も書かなくなる摩擦が増えるし、AIが間違った「スロップブロート」（駄文の肥大化）を助長しかねない。それに、肥大化したドキュメントは重要な情報を更新し続けるのを難しくするんだ。<br>3) プログラマーはエゴイストが多いから、他人を助けるドキュメントには動機づけられないけど、コンピューターのミニオン（AI）を意のままに操るためのドキュメントは魅力的だよね。<br>他にも、組織は摩擦が大きかったり、信頼できないドキュメント置き場を提供したりしてたのも理由だ。学校や会社で「仕事」として習った「見せかけ」のためのスキルを、チームのための「本当の価値」に切り替えるのはすごく難しいんだよ。" userName="neilv" createdAt="2025/10/18 03:08:18" color="#38d3d3">}}




{{<matomeQuote body="いやいや、絶対違うって。そのファイルに何度も明示的に書いたのに、LLMはコメントをつけすぎるって言い張るんだから、アホみたいだよ。" userName="taormina" createdAt="2025/10/18 04:12:12" color="">}}




{{<matomeQuote body="AIに、コメントを別の「重要コメント」フォルダに入れるように指示できるかな？ハハ！そういうことだよね、こういうのは。" userName="Nevermark" createdAt="2025/10/18 05:06:03" color="">}}




{{<matomeQuote body="LLMについては言えないけど、俺が初めてやった仕事の一つが、ソフトウェアの競合状態をデバッグすることだったんだ。何が競合状態なのかも、コードのどこにあるのかもわからなかった。何ヶ月もサービスを監視して、コードベースを読みまくったよ。やっと問題を直したら、原因はコードの実際の動作と正反対のコメントだった。もしあのコメントがなければ、もっと早くコードを読んで問題に気づいてたと思う。<br>個人的には、AIが追加する冗長なコメントは削除してる。それは、コードをレビューして、AIの記述が正確だと信じてるってことを示すためなんだ。AIは、俺のプロンプトへの応答としてしか意味をなさないコメントを、文脈に合わない形で追加することさえあるからね。" userName="lukeschlather" createdAt="2025/10/18 19:48:03" color="#ff5c5c">}}




{{<matomeQuote body="以前は、ドキュメントを作る障壁は何だったんだろうね？<br>独自システムだと、質の高い技術ドキュメントを作ることは、自分の後任を育成するのに使われかねないから、圧力があった。自分のため、あるいは同僚のためだけにドキュメントを書くのも疑わしかった。だって、書いたことはもう知ってることだからね。AIアシスタントは、このインセンティブをひっくり返したんだ。今では、ドキュメントが自分の個人的なデジタルゴブリンを正しい方向に導く助けになってる。ドキュメントは、自分の能力を具体的に増強してくれるものなんだよ。" userName="ryukoposting" createdAt="2025/10/18 13:14:33" color="#45d325">}}




{{<matomeQuote body="同じロジックだけど、コードと全く同じ内容のコメントを残すのには強く反対だね。<br>コードを書くとき（後に来る部分）にはLLMにとって有用だけど、後でそのコードを読むLLMにとっては、ただのコンテキストの無駄でしかない。人間にとっては画面スペースの無駄だよ。コメントは、何かを解析するのが難しい場合にのみ、それが何をするのかを説明すべきだね。そうでなければ、「なぜ」それがそうなっているのか、例えば特別なケースとか、コードの他の部分への手がかりとか、そういう情報だけを追加するべきだ。これらのコーディングエージェントには、コードを書くときに加えたLLMっぽいコメントを削除する後処理ステップがあるといいし、そういうのを指摘するリンターが欲しいね。" userName="stuaxo" createdAt="2025/10/18 11:14:14" color="#785bff">}}




{{<matomeQuote body="将来の自分のためにドキュメントを書くんだよな。" userName="neves" createdAt="2025/10/18 19:57:32" color="#45d325">}}




{{<matomeQuote body="AIの正確なコンテキスト提供の副産物としてドキュメントがあれば、維持するインセンティブは十分あるよな。" userName="ashleyn" createdAt="2025/10/18 00:02:28" color="#785bff">}}




{{<matomeQuote body="コメントってマジで大事だよな。冗長なコメントが多いコードは、機能してない証拠。コードを一行ずつ検証しながら、コメントが正確か確認しつつ削除してるよ。" userName="lukeschlather" createdAt="2025/10/18 19:49:29" color="#ff33a1">}}




{{<matomeQuote body="これは面白いね。優秀な開発者は実用的で結果重視だから、役に立つなら使う。タイムラグや直接的なフィードバックがないのが問題だ。コードが壊れたり納期に間に合わないと怒られるけど、ドキュメントの苦情はマネージャーに届きにくいし、彼らが直接痛みを経験しないと重視されないんだよな。" userName="chermi" createdAt="2025/10/18 01:32:28" color="#ff33a1">}}




{{<matomeQuote body="意図、つまり「なぜ」についてのコメントが好きだ。AIは意図を理解せず、「どうやって」に関するつまらないコメントばかり書くんだよな。しかも、意図に関するコメントを消しちゃうこともある。例えば、特定の考慮が必要な理由をコメントしたら、AIは「インデックスに1を追加」とかに書き換えちゃうんだ。" userName="lolc" createdAt="2025/10/18 19:23:53" color="#ff5733">}}




{{<matomeQuote body="「ヘイ、Codex。コード変更したんだけど、ドキュメントのどこを更新すればいい？」って聞くの、マジで楽しい。まだゆっくり試してるけど、イケてる奴らは最初からAIにコード変更もドキュメント更新もやらせてるらしいね。" userName="apitman" createdAt="2025/10/18 17:46:14" color="#ff33a1">}}




{{<matomeQuote body="そうそう、俺もよくClaude Codeにドキュメントの更新が必要か聞くけど、かなり良い感じにやってくれるんだ。" userName="freedomben" createdAt="2025/10/18 17:46:16" color="#ff33a1">}}




{{<matomeQuote body="うーん、これGitHub ActionsでPRに組み込めないかな？" userName="crowbahr" createdAt="2025/10/20 22:16:39" color="">}}




{{<matomeQuote body="だから、ドキュメントはできるだけコード内に書くのが好きなんだ。テストコードで動作を記述したり、Infrastructure as Codeでシステム構成を書いたりね。そうすれば、強制的に常に最新の状態に保てるからさ。" userName="tidbeck" createdAt="2025/10/18 15:54:04" color="#ff5c5c">}}




{{<matomeQuote body="それって、LLMが助けになることだよね。コメントは古くなるかもしれないけど、LLMならすぐに最新のコメントを生成できるし、あなたが言ったような状況を防ぐ可能性も高いよ。だけど、AIがプロンプトへの返答としてしか意味をなさず、文脈に合わないコメントを追加することが多いのは、まあ、よくある問題だよね。" userName="jychang" createdAt="2025/10/21 06:12:19" color="#785bff">}}




{{<matomeQuote body="「米国の国勢調査データをどこから入手し、その構造をどう理解するか」みたいなタスクをカバーするスキル群を想像してみてって話、初めてWolfram Alphaを使った時の衝撃を思い出すな。通常の検索エンジンと違って、構造化されたツールで問題を解決する能力にマジで驚いたんだ。今でもね！スキルはWolfram Alphaのカスタム拡張版ってのが僕のイメージかな。URL: https://www.wolframalpha.com/input?i=what%27s+the+total+popu..." userName="crvdgc" createdAt="2025/10/17 20:01:34" color="#ff5733">}}




{{<matomeQuote body="あなたのリンクをクリックしたら、Wolfram Alphaで「what%27s the total population of the United States%3F」ってクエリが開いたんだけど、結果が「6.1% mod 3 °F (degrees Fahrenheit) (2015-2019 American Community Survey 5-year estimates)」だったよ。どう計算されたんだろうね、これ…。" userName="FireInsight" createdAt="2025/10/17 20:51:17" color="">}}




{{<matomeQuote body="Wolfram Alphaって、あんな自然言語の入力は受け付けなかったはずだよ。population(USA)みたいな形式なら、色々なバリエーションでちゃんと機能するんだけどね。" userName="KeplerBoy" createdAt="2025/10/17 21:19:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="正直、Wolfram Alphaは昔からめちゃくちゃすごい存在だよ。どう実装されてたのか詳しく調べてないけど、あの複雑な数学問題をAIなしで解決してたのはマジでぶっ飛んでた。" userName="idk-92" createdAt="2025/10/17 20:41:13" color="">}}




{{<matomeQuote body="Wolfram AlphaはAIだよ。LLMじゃないってだけでね。AIは60年代から存在してるんだ。たぶん数年後には、LLMも”AIじゃない”って言われるようになるんじゃないかな。" userName="globular-toast" createdAt="2025/10/17 21:06:54" color="#ff5c5c">}}




{{<matomeQuote body="根幹部分が変わっても、業界外やマニア以外はそれが何かわからないだろうね。自分の車のエンジンをどれだけの人が知ってる？僕なんかCorollaのアクセルを踏むだけ。Dodge ChallengerのHemiを知ってる人もいるけど、それ何？今はインターネットがあるから、興味があればすぐに調べられるけどね。AIって口語的には完全に未定義の言葉だから、それを定義しようとする試みは全て間違ってるんだよ。" userName="fragmede" createdAt="2025/10/18 13:35:57" color="#ff5733">}}




{{<matomeQuote body="なんで君がダウンボートされてるのか分からないな。LLM＝AIっていうマーケティングが、”_only_ LLM＝AI”って解釈されちゃってるみたいだね。" userName="phs318u" createdAt="2025/10/17 21:33:04" color="">}}




{{<matomeQuote body="今との違いは、従来のソフトウェア（Wolframみたいな古いAIも）は最終的にif/then文の長い羅列に行き着くけど、新しいAI（主にLLM）は根本的に違うアプローチをとってるってことだと思うな。" userName="svdr" createdAt="2025/10/17 21:58:29" color="#ff33a1">}}




{{<matomeQuote body="Prologみたいな昔のシステムを見てみろよ。LLMがなかった時代にもルールベースのシステムはあったんだぜ。結局はif/elseに分解されるって意味なら、LLMだって同じさ。LLMはみんなが思ってるほどの量子的な飛躍じゃないって。" userName="globular-toast" createdAt="2025/10/17 22:16:53" color="#ff5c5c">}}




{{<matomeQuote body="ユーザーから見るとLLMは革命的だよ。良い意味だけじゃないけどね。アルゴリズミックAIってのは決定的で信頼できたんだ。統計的で言語的な推論が、厳密なロジックの代わりになるとは誰も思ってなかったんじゃないかな。使える場面もあるけど、多くの問題にはまだイマイチだね。" userName="TheOtherHobbes" createdAt="2025/10/17 23:52:24" color="#785bff">}}




{{<matomeQuote body="この結果はマジでクールだね。初めてピザを食べた時みたいな気分だろうな。人類は何千年も前から小麦を粉にして、水と混ぜて、熱い石で焼いてた。同時に、果物を煮たり、牛乳をうまく凝固させたりする方法も編み出してきた。それが全部一緒になって、最高の食べ物「ピザ」が生まれたんだ。俺たちはまだピザを初めて食べた段階。パンや小麦で他にもできること、あるいは全く違う食べ物があることを思い出すには、まだちょっとかかるだろうね。" userName="globular-toast" createdAt="2025/10/18 08:10:44" color="#45d325">}}




{{<matomeQuote body="LLMそれ自体だけじゃなくて、LLMを今みたいに使えるだけの計算能力があって、実際にそれを使ってるってのが、かなりの飛躍だよ。" userName="ozim" createdAt="2025/10/17 23:02:28" color="">}}




{{<matomeQuote body="君が話してるのは非決定的アルゴリズムのことだね。それはAIとよく結びつけられるけど、LLMが登場するずっと前から存在してたんだぜ。" userName="eloisant" createdAt="2025/10/18 11:48:53" color="">}}




{{<matomeQuote body="これは basically Lisp の別の形だよ。Lisp Machines の開発アプローチを、もっと親しみやすい構文で再構築した感じ。Lisp は最初の AI Winter が来るまで AI 言語だったし、Prolog も一緒に消えていった。Wolfram Alpha は、すごく簡単に言えば、これらをベースにしてるんだ。" userName="pjmlp" createdAt="2025/10/17 21:15:33" color="#38d3d3">}}




{{<matomeQuote body="これは Lisp の M-expression 版の1つだよ。Wolfram Language の変なところが、この視点で見たら急に理解できたんだ。" userName="krackers" createdAt="2025/10/17 21:46:56" color="">}}




{{<matomeQuote body="Wolfram Alpha の基本的な数学機能をセルフホストできるものが欲しいな。とんでもない数学能力は要らないけど、標準的な記号計算とか、式の簡約、よくある方程式の微分・積分、プロット、単位変換くらい。全部、学習がいらない使いやすいテキストインターフェースでね。" userName="magicalhippo" createdAt="2025/10/17 21:21:32" color="#38d3d3">}}




{{<matomeQuote body="Maxima を試してみなよ。オープンソースだし、https://maxima.sourceforge.io/ にあるよ。俺は Macsyma って名前で TOPS-20 (それと PDP-10 / Decsystem-20) で動いてた頃に使ってたんだ。テキストインターフェースは少し覚える必要があるけど、そんなに大変じゃないさ。" userName="jhallenworld" createdAt="2025/10/17 22:18:17" color="#38d3d3">}}




{{<matomeQuote body="Maxima は最高だし、GUI もあるよ。唯一不満なのは、計算の過程をステップバイステップで見せてくれないことだね。" userName="jgalt212" createdAt="2025/10/17 22:55:18" color="">}}




{{<matomeQuote body="それ、Wolfram Mathematicaじゃん。" userName="krackers" createdAt="2025/10/17 21:43:50" color="">}}




{{<matomeQuote body="個人的なお気に入り：Mathematica、Maple、MathStudio（モバイル）、Ti-89電卓（高校で好きだったやつ）。<br>他にはSageMath、GNU Octave、SymPy、Maxima、Mathcadもあるよ。" userName="harrall" createdAt="2025/10/17 23:51:49" color="#ff5733">}}




{{<matomeQuote body="TI-89は単4電池1組で1年持つのに、シンボル処理ツールとかソルバーが驚くほど優秀なんだ。まるで魔法のAlien Techみたいだね。" userName="skylurk" createdAt="2025/10/18 13:24:24" color="#38d3d3">}}




{{<matomeQuote body="計算でよく使ってたよ。たしか、どうやって答えが出たか見せてくれたし、記号を理解してくれるのも良かったな。積分記号とか貼り付けられるのがクールだった。" userName="ge96" createdAt="2025/10/17 22:40:29" color="#38d3d3">}}




{{<matomeQuote body="＞AIなしで。<br>理解できるまではAIって呼ぶんだよ。LLMをもっと理解して、また新しいよく分かんない技術が出てきたら、今のAIはもっとComputer Sciencyな名前に変わるんだろうね。" userName="fooker" createdAt="2025/10/18 01:13:09" color="#ff33a1">}}




{{<matomeQuote body="僕のお気に入りのAIの定義はこれだよ。『AIとは、まだ成し遂げられていないこと全てだ』ってLarry Teslerが言ってたんだ。詳しくはここ見てね: https://en.wikipedia.org/wiki/AI_effect" userName="simonw" createdAt="2025/10/18 01:39:41" color="#38d3d3">}}




{{<matomeQuote body="みんなMCPに過度に集中しすぎてるけど、本当は「Tool Calls」が面白いんだと思うよ。Tool Callsはめちゃくちゃ興味深くて便利だよね。MCPはあくまでその手段の一つで、しかもベストなものじゃない。" userName="tptacek" createdAt="2025/10/17 20:45:36" color="#ff5733">}}




{{<matomeQuote body="MCPが普及したのはタイミングが大きかったと思うよ。MCPより前からTool Callingはあったけど、モデルがあまり得意じゃなかったんだ。MCPはモデルがTool Callingを使いこなせるようになった時期とほぼ重なったんだよね。だから、ほとんどのMCPへの熱狂は、LLMが他のシステムと連携するためにTool Callingを使えるって知ったからだろうね。" userName="simonw" createdAt="2025/10/17 20:47:36" color="#ff5c5c">}}




{{<matomeQuote body="MCPに関して、モデルがMCPベースのRolloutsで後から学習されてることを忘れがちだよね。MCPはモデルが偶然発見したものだと思われがちだけど、実際はもっと深いんだ。モデルは多様で未知のMCP System Promptsを解釈できるように明示的にトレーニングされてるんだよ。<br>Claude Skillsも全く同じ。技術的には「ただのSystem Promptといくつかのツール」だけど、実はLLM Labsが意図的に特定の行動Frameworkをモデルに組み込んでるってことなんだ。" userName="aabhay" createdAt="2025/10/18 22:49:37" color="#ff33a1">}}




{{<matomeQuote body="信頼できる情報筋によると、Anthropicのモデルはまだスキルについて意図的に学習してないらしいよ。" userName="simonw" createdAt="2025/10/18 23:47:20" color="">}}




{{<matomeQuote body="MCPサーバーってツール呼び出しの登録所みたいなもんでしょ？普通のツール呼び出しより悪いってどういうことなの？" userName="kobalsky" createdAt="2025/10/17 21:52:48" color="">}}




{{<matomeQuote body="MCPサーバーはサポートしてるツール以外のコードも実行できるんだ。ツール呼び出しにはできないことだよ。" userName="behnamoh" createdAt="2025/10/17 22:39:05" color="">}}




{{<matomeQuote body="ツールって余計な手順がある関数呼び出しそのものだし、MCPはその通訳者だよ。名前が違うだけでAnthropicがRPCプロトコルでみんなを納得させただけじゃん。SOAPやDCOMと変わらんけど、LLMがAPI定義や自然言語のドキュメントを理解してリアルタイムでAPIとユーザー入力を結びつけられるから、古いやり方よりは使えるね。" userName="TeMPOraL" createdAt="2025/10/17 22:45:46" color="#ff5733">}}




{{<matomeQuote body="MCPが関数呼び出しの通訳者ってのは違うよ。ツール呼び出しはMCPの一部でしかないんだ。MCPをSOAPとかDCOMと同じだと思ってる人は、ちゃんと理解してないね。ツール呼び出しはMCPのせいぜい20%だよ。LLMに公開するツールリストを動的に作るのが結構大事なのに、みんなMCPは50個のツールから選ばせることだと思ってるみたい。" userName="brazukadev" createdAt="2025/10/18 00:19:29" color="#38d3d3">}}




{{<matomeQuote body="「ツール呼び出しはMCPの最大20%」って言うけど、他に何があるの？リソースとかプロンプトは知ってるけど、みんなが使ってる証拠ってほとんどないじゃん。俺が見る限り、ツールがMCPの利用の90%以上を占めてると思うけどな。" userName="simonw" createdAt="2025/10/18 00:30:13" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ここで議論してるほとんどの人がMCPを全然理解してないのがウケるね。ツール以外にも、MCPにはリソース、プロンプト、サンプリング、エリシテーション、ルートがあって、どれもLLM接続アプリに役立つんだ。MCPはサーバーだけじゃなくて、ホスト／クライアント部分も超重要だよ。今のLLMクライアントはチャットボットばかりだけど、MCPクライアントはチェスゲームとかプロジェクト管理アプリにもなり得るんだからね。「リソースとプロンプトを使ってる証拠がない」って言うけど、これらはMCPクライアントが実装すべき機能なのに、ほとんどがまだやってないのが現状だよ。" userName="brazukadev" createdAt="2025/10/18 00:49:31" color="#ff5733">}}




{{<matomeQuote body="OpenAI Responses APIの関数呼び出しインターフェースじゃできないことで、MCPならできることって何？もちろん、自分で書いてないエージェントに関数呼び出しを組み込むのがMCPの売りだってのはみんな分かってるよ。でも、それ以上だって言うなら、具体的に教えてくれる？" userName="tptacek" createdAt="2025/10/18 00:54:10" color="">}}




{{<matomeQuote body="MCPはツールリスト以外に、プロンプトテンプレートやリソースリストも公開できるし、クライアントにLLMで何かを実行させる（サンプリング）ことや、質問を続けるかのルールも提供できるんだ。自分でエージェントを作ってモデルを直接呼び出すなら全部できるけど、どんなエージェントにも振る舞いを提供したいならMCPが役立つよ。" userName="didibus" createdAt="2025/10/18 20:55:20" color="#785bff">}}




{{<matomeQuote body="LLMはMCPツールしか使えないけど、モデルを使うクライアントはリソース、プロンプト、エリシテーション、サンプリングにアクセスできるよ。これらはモデルに問い合わせるのに役立つツールだ。だから、これらの機能を実装したMCPサーバーは、クライアントもMCPホスト／クライアントなら、LLMのエージェントとしてタスクを振り分けられるんだ。" userName="brazukadev" createdAt="2025/10/18 14:36:57" color="#785bff">}}




{{<matomeQuote body="でもさ、ほとんどがただのツールじゃん。例えば、リソースも`getFile`みたいなゲッターツールと一緒だよ。" userName="ming030890" createdAt="2025/10/18 15:19:43" color="">}}




{{<matomeQuote body="MCPはね、ツールを再利用できるようにするための標準化プロトコルなんだ。MCPなしでもできるのは当然だけど、みんなが同じプロトコルでやり取りすれば、生産性はグッと上がるんだよ。" userName="brazukadev" createdAt="2025/10/18 19:27:30" color="#38d3d3">}}




{{<matomeQuote body="リソースは「リソースをリストする」みたいなツールにもなるけど、リソースとして公開すれば、クライアントでユーザーに一覧を見せたり、モデルが選ばなくてもクライアント側で説明をコンテキストに入れられたりするんだ。" userName="didibus" createdAt="2025/10/18 20:59:18" color="#785bff">}}




{{<matomeQuote body="そうだね。俺のAPIとモデルの理解は完璧じゃないけど、俺が使うレベルだと、プロンプト（広い意味でコンテキストチャンク）とツール呼び出しの2つしかないんだ。MCPでこれがどう広がるのかわかんない。MCPでできることはコンテキストチャンクとツール呼び出しでできるし、セキュリティやコンテキスト管理の制御が細かいから、そっちの方がいいかもね。" userName="tptacek" createdAt="2025/10/18 16:09:38" color="">}}




{{<matomeQuote body="「ツール呼び出しはすごく面白いし便利。MCPはその一つの手段で、特に優れてはいない。」って意見もあったけど、オープン標準なのは良いことだね。そういう意味ではかなりすごいよ。でもMCPはツールだけじゃなく、プロンプトテンプレートやコンテキストリソースも公開できるんだ。ローカルスクリプトに依存しないスキルなら、全部MCPリソースになりえるんだから。" userName="didibus" createdAt="2025/10/18 01:24:03" color="#38d3d3">}}




{{<matomeQuote body="プロンプトテンプレートやコンテキストリソースにMCPはいらないよ。それらはただのプロンプトの一種じゃん。" userName="tptacek" createdAt="2025/10/18 01:42:41" color="">}}




{{<matomeQuote body="何言ってるか分かんない？LLMはプロンプトでしかやり取りできないんだよ。OpenAPIのツール呼び出しだって、APIの向こう側でプロンプトをさらに別のプロンプトでラップしてるだけ。だから他の全部は、ただその周りに振る舞いを足してるだけなんだ。MCPはユーザーの利便性のためにLLMのプロンプト周りに振る舞いを足す方法なの。" userName="didibus" createdAt="2025/10/18 21:08:13" color="#45d325">}}




{{<matomeQuote body="MCPはLLMにOAuthを教えるって点で価値があるみたい。だからサーバーベースでツールを呼び出せるんだ。前はCLIを全部インストールしなきゃだったし、裏で認証処理してたでしょ。ツール呼び出しはLLMの大きな強みだけど、「ツールもちゃんと認証すべき」ってのはかなり大事だよね。" userName="kasey_junk" createdAt="2025/10/17 21:47:53" color="#ff5733">}}




{{<matomeQuote body="MCPはね、技術的には「ツール呼び出し」のアプローチだよ、もっと具体的だけどね。" userName="3abiton" createdAt="2025/10/17 22:04:15" color="">}}




{{<matomeQuote body="そうそう、すごく具体的なアプローチなんだけど、同時にちょっと不明確な部分もあるし、規定しすぎてる感もあるんだよね。" userName="tptacek" createdAt="2025/10/17 23:22:13" color="#38d3d3">}}




{{<matomeQuote body="MCPもAnthropicのイノベーションだよ。" userName="manojlds" createdAt="2025/10/17 21:40:44" color="">}}




{{<matomeQuote body="それって大したイノベーションじゃないよ。ただツールを登録するための、かっこいいけど安全じゃない方法なだけ。" userName="behnamoh" createdAt="2025/10/17 22:39:53" color="">}}




{{<matomeQuote body="俺はもう1つのMCPツールでDBを呼んでSkillsを実現してるし、それで十分だよ。<br>Skillsが一体何を追加するのか、インフルエンサーがエージェントワークフローを10倍にするためのネタ以外に何があるんだか。100倍の生産性って最高だね。" userName="smrtinsert" createdAt="2025/10/17 21:55:34" color="">}}




{{<matomeQuote body="Skills以外で、MCPより優れたテクニックって他に何があるの？" userName="jgalt212" createdAt="2025/10/17 23:01:17" color="">}}




{{<matomeQuote body="MCPはターミナルを超えた大きなインパクトがあるよ。ChatGPT, Claude Web, n8n, LibreChatで使えるし、認証やリソース、UIの考慮もあるんだ（例：OpenAIのapps-sdkはMCP上にある）。CLIツールも価値あるけど、CRMやセールスなど他の役割ではMCPベースのツールの方が優れてるね。SkillsとMCPは競合じゃなくて、それぞれ目的が違うと思う。Skills内のPythonコードがインタプリタ経由でMCPを直接呼べると、それが大きなブレイクスルーになるだろうね。俺たちは試して、めちゃくちゃ上手くいくのを発見したんだ。" userName="jngiam1" createdAt="2025/10/17 18:44:49" color="#785bff">}}




{{<matomeQuote body="うん、MCPがターミナルツールより優れてる最大の点は、フル機能のサンドボックス型Linux環境が不要なことだよ。それに、MCPは性能が低いモデルでも動くんだ。ラップトップやスマホで動くようなモデルからでもMCPをいくつか動かせる。そんなモデルでファイルを読み込んでcurlリクエストをたくさん発行するのは信頼できないけどね！" userName="simonw" createdAt="2025/10/17 18:55:04" color="#ff5733">}}




{{<matomeQuote body="LLMを他のソフトウェアや物理世界と統合できるのはかなりクールだよね、しかも全部自然言語で動くんだ。LLMがMCPサーバーを生成できる段階に来てるから、全く新しい機能を簡単に作れるよ。" userName="andoando" createdAt="2025/10/17 19:38:34" color="#ff5733">}}




{{<matomeQuote body="俺の意見だと、MCPは過大評価されてて価値は限定的だよ。世の中のMCPサーバーの約95%は役立たずで、単純なツール呼び出しで十分だね。" userName="cheema33" createdAt="2025/10/17 19:37:49" color="">}}




{{<matomeQuote body="当たり前の話だけど、良いMCPサーバーは本当に良いし、悪いMCPサーバーは物事をかなり悪くするよ。問題は、ほとんどのMCPサーバーが後者だってこと。どの製品チームもMCPが流行りだって言われて、顧客のためにMCPサーバーを作らなきゃいけないんだ。顧客もAIを活用したいから、これを求める。顧客は何が欲しいか分かってなくて、ただAIがあればいいって思ってるだけ。製品チームもAIが必要だと分かってるけど、どうやって製品に取り入れるか意味ある方法を見つけられない。そこにMCPが降ってきて、実際にAI製品にならなくても“私たちはAI製品です”って言うための手軽な方法になってる。" userName="dinkleberg" createdAt="2025/10/17 20:18:22" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
