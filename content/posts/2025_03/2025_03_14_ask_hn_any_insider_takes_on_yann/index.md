+++
date = '2025-03-14T00:00:00'
months = '2025/03'
draft = false
title = 'Yann LeCunが現在のアーキテクチャに反対する理由とは？専門家の意見を探る！'
tags = ["AI", "機械学習", "Yann LeCun", "アーキテクチャ", "AGI"]
featureimage = 'thumbnails/purple5.jpg'
+++

> Yann LeCunが現在のアーキテクチャに反対する理由とは？専門家の意見を探る！

引用元：[https://news.ycombinator.com/item?id=43325049](https://news.ycombinator.com/item?id=43325049)

{{<matomeQuote body="LeCunの主張はこうだよ。1) テキストだけでは正確な世界モデルを学べない。2) 視覚や言語、環境との相互作用を通じたマルチモーダル学習が真の学習には重要。彼やHinton、Bengioは言ってるけど、マウスですら理解できるタスクがAIにはできない。マウス並みの知性を持つことが重要で、言語学習だけでは無理だって。例えば、「How Large Are Lions?」って論文では、テキスト分析で物体の大きさを学ぶのは難しいけど、視覚なら簡単にわかる。ライオンのサイズを知るには、たくさんの文を読むよりも数枚の画像を見る方が楽。LeCunはLLMが無駄だとは言ってないけど、AGIのような大きな問題が言語分析だけで解決できないことを心配してるんだ。エネルギー最小化アーキテクチャはマルチモーダル学習に関するものだよ。" userName="bravura" createdAt="2025-03-14T22:40:54" color="#38d3d3">}}

{{<matomeQuote body="それが彼の主張なの？俺の視点では、LLMは前のトークンに基づく確率的アプローチに依存してると思うんだ。間違った時はエラーが連鎖していく。例えば、偉人の肩の上に立つように、間違った前提から積み上げると、結局おかしなことになる。いわば、間違った前提から成り立つものは、どんどん absurd になる。LLMは“どうやって[x]するの？”って聞かれると、最初は[a]を提案してもすぐに違うって言われる。結局、最初の間違いに戻ってきちゃうから、問題解決にはならないよ。" userName="somenameforme" createdAt="2025-03-15T09:37:53" color="#38d3d3">}}

{{<matomeQuote body="最近、言語だけでは不足だと痛感してる。言語はまるで2D平面みたいで、どんなに投影しても情報の伝達には限界がある気がする。それぞれの入力モードがネットワークが育つための新しい次元を作る。例えば、滑った時の動的な反応を言葉で説明することはできるけど、その経験があるアンドロイドが接続してくれることで「滑る」って言葉が持つ力が変わるんじゃないかな。" userName="jcims" createdAt="2025-03-15T03:38:24" color="">}}

{{<matomeQuote body="LLMって名前に過ぎないよ。言語の中に画像や動画、音を含めることができるから。" userName="ninetyninenine" createdAt="2025-03-15T03:44:18" color="">}}

{{<matomeQuote body="＞あなたは何でも”言語”にエンコードできる。俺は素人だけど、これは正しくないと思う。言語は抽象的なもので、現実を解釈するメカニズムだ。現実の再現、つまり画像は抽象よりも多くの情報を持っているから。" userName="kryogen1c" createdAt="2025-03-15T17:43:52" color="">}}

{{<matomeQuote body="言語自体がマルチモーダルな経験をエンコードしていると思う。テキストを書くとき、視覚的、触覚的、他の感覚経験を言葉にする機会がある。テキストコーパスでトレーニングされたLLMは、間接的に人間のマルチモーダル経験を学んでるんだ。ただ、テキストだけだと質と完全性がデータを決定していて、それがAIの働きに影響する。" userName="codenlearn" createdAt="2025-03-14T23:05:05" color="#785bff">}}

{{<matomeQuote body="いいえ。＞太陽が肌に熱く感じる。何度その文を読んでも、その体験を理解することはできない。＞ヨガ本を読んでも、Tittibhasanaポーズの感覚はわからないし、実際にやることでしか理解できない。体験はテキストだけでは捉えきれない。" userName="ThinkBeat" createdAt="2025-03-14T23:55:28" color="">}}

{{<matomeQuote body="＞いいえ。テキストはマルチモーダルな経験をエンコードしているけど、実際の感覚のエンコードよりも正確さが欠けている。" userName="spyder" createdAt="2025-03-15T01:45:17" color="">}}

{{<matomeQuote body="すべての「体験」は脳内で電気としてエンコードされている。だから、”テキスト”でもエンコードできるはず。英語の言葉が適切でない場合もあるけど。" userName="csomar" createdAt="2025-03-15T04:48:05" color="">}}

{{<matomeQuote body="テキストはそれらを指し示すことしかできないよ。この惑星には、太陽の熱が肌に感じるとどういうものかを記録したテキストは存在しない。外に出たことがない人は、テキストを読んでもその感覚を体験することはできない。" userName="chongli" createdAt="2025-03-15T06:04:33" color="">}}

{{<matomeQuote body="＞この惑星には、太陽の熱が肌に感じるとどういうものかを記録したテキストは存在しない。<br＞＞外に出たことがない人は、テキストを読んでもその感覚を体験することはできない。<br>それが当然だと思うほど、前提は違うと思う。人間のメタフィジカルな説明を信じているのならともかく、感覚は確かに符号化できるから。保存に必要なストレージは、精度に応じて変わるだけ。<br>ただ、その後者は、脳に情報を転送する入力デバイスによって制約される。つまり、読むことで情報が脳に渡るわけではない。ネウラリンクのような高帯域のインターフェースがあれば、脳にその情報を渡せるかもしれないし、AIの場合は補助デバイスが不要で直接マップできるかも。" userName="tgma" createdAt="2025-03-15T08:10:31" color="#38d3d3">}}

{{<matomeQuote body="電気信号は主観的経験と同じではない。機械が信号を記録して再生できても、体験そのものが記録されているわけではないし、機械はそれにアクセスできない。<br>聴覚障害者が音楽を録音して再生できても、その体験を共有する方法にはならない。" userName="chongli" createdAt="2025-03-15T08:56:27" color="#ff33a1">}}

{{<matomeQuote body="哲学者（例：Chalmers対Dennett）ですら、主観的経験が実在するかどうかさえ意見が分かれてるのに、その主張は強すぎる。" userName="mietek" createdAt="2025-03-15T17:12:04" color="">}}

{{<matomeQuote body="純粋なDennett主義者でも、信号の移動中や安静時の違いと、処理されている信号の違いには機能的な差異を認めざるを得ない。カセットテープを持っていても、実際に交響曲を聴くとは違うよ。<br>このケースをAIに当てはめると、中国語の部屋の議論が生まれる。LLMの幻覚の傾向がこの比較を呼び起こす。" userName="chongli" createdAt="2025-03-15T18:46:27" color="">}}

{{<matomeQuote body="LLMは主観的経験を持っているのか？もちろんない。<br>でも、もし脳内の電気信号が主観的経験の原因ではないとするなら、あなたの立場は何なの？二元論？個人的には、中国語の部屋の議論は無効だと思ってる。部屋の中の人が本を引いて応答するには、無限の本が必要というのは物理的に不可能だよ。そうじゃなければ、応答を計算するためのアルゴリズムが知的存在として機能し、部屋の人はその基盤に過ぎない。" userName="mietek" createdAt="2025-03-15T20:21:49" color="#ff33a1">}}

{{<matomeQuote body="中国語の部屋は、LLMの現状をよく表している。<br>本は無限じゃなく欠陥がある。そしてその点が重要で、LLMの幻覚や間違った推論に直面し続けているから、LLMが賢くないことを私たちは実感する。<br>ただ、この本のアナロジーの弱点は、LLMの技術的な実装に関することで、トークン化や重みのセットが関係している。これらは訓練データの符号化にすぎない。" userName="chongli" createdAt="2025-03-15T22:40:39" color="#38d3d3">}}

{{<matomeQuote body="＞本は無限じゃなく欠陥がある。<br＞じゃあ、人間の本は無限で完璧なの？<br>＞LLMの幻覚や間違った推論に直面し続けている。<br＞人間も同じことをやるけどね。<br>中国語の部屋はナンセンスでは？あなたの脳で英語を理解している部分を明確に指摘できる？あなたは中国語の部屋かと思うんだけど。" userName="og_kalu" createdAt="2025-03-16T13:50:12" color="">}}

{{<matomeQuote body="人間は分からないことがあると認める能力がある。「分からないから、後で考えておくよ」とは言えるけど、LLMはそれができない。正しい答えが本の中にあれば答え、なければ作り事（幻覚）をする。でも、自分がどちらをしているかわからないんだ。" userName="chongli" createdAt="2025-03-16T16:32:43" color="">}}

{{<matomeQuote body="＞人間は分からないことがあると認める能力がある。<br＞実際には、全く見当違いのことを自信を持って言う人も多いよ。<br＞＞LLMはできないが、実はやることも多い。むしろ確率よりも断然良い。人間ほど上手くはないけど。<br>＞彼らは自分が何をやっているかすらわからない！<br＞これは多くの研究が示していることだ。https://news.ycombinator.com/item?id=41418486" userName="og_kalu" createdAt="2025-03-16T17:50:24" color="#38d3d3">}}

{{<matomeQuote body="ヘレン・ケラーの話を思い出すね。彼女は盲で聾だったから、先生が手にシグナルを送っても、最初はそれが意味を持つことを理解できなかった。でも、水の出ているポンプの水を手に感じたときに初めて「水」という言葉が分かったんだ。つまり、多モーダルな体験が必要だってこと。テキストだけだと、すごいと思えるように見えても、色々な情報が欠けているんだ。他のチャネルを通じて学べれば、もっと世界を理解できるはず。" userName="not2b" createdAt="2025-03-14T23:44:37" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="知らない言語のテキストだけで何が学べる？たとえば、FTL旅行の詳細な理論がその中にあるって言っても、どうやってそのエンジンを作るの？文法を推測して、何かを構築しようと思う？多くの無翻訳な言語史上の例がある。たくさんの資料があっても、世界との関係を伝える文脈が失われたから、解読できなかった。だから、テキストだけでは意味を取り出すのが難しいんだよ。" userName="mystified5016" createdAt="2025-03-15T00:19:03" color="#38d3d3">}}

{{<matomeQuote body="もちろん言語自体が多モーダルな体験を表現してるよ。要は、情報をベクトルにエンコードしているんだ。けど、本当に詳細に説明できるテキストデータセットがないから、あまり多くのことはできていないんだ。" userName="danielmarkbruce" createdAt="2025-03-14T23:39:53" color="">}}

{{<matomeQuote body="人間の認知は単に意味だけでなく、動的で、身体的で、社会的、文化的に広がっているし、意識を持っているんだ。LLMは素晴らしい意味的なヒューリスティックマシンだけど、他の要素にはアクセスできていない。" userName="heyjamesknight" createdAt="2025-03-15T02:35:42" color="#45d325">}}

{{<matomeQuote body="LLMのトークンへの埋め込みは、単に意味以上のものをカバーしてる。LLMの埋め込み層と意味検索用の埋め込みモデルを混同しないで。" userName="danielmarkbruce" createdAt="2025-03-15T03:31:33" color="">}}

{{<matomeQuote body="言語に関連する意味という意味では、我々は同じ「意味」という言葉を使っていないと思う。" userName="heyjamesknight" createdAt="2025-03-17T02:26:20" color="">}}

{{<matomeQuote body="その意見をよく表現してくれてありがとう。私は音楽家で音楽・コンピュータサイエンスの博士課程に在籍していて、ジャズの即興演奏において言語的な思考が不十分な状況をよく経験している。現在のLLMのムードが言語的知性がAGIに必要だと信じているのは、イライラするけどどう対抗すればいいかわからない。" userName="iainctduncan" createdAt="2025-03-15T04:02:48" color="#ff5c5c">}}

{{<matomeQuote body="今のLLMは多モーダルだよ。" userName="kadushka" createdAt="2025-03-15T04:22:21" color="">}}

{{<matomeQuote body="脳が重要な部分で、電気はその動作を助けてるだけだよ。それに、単なる数値の行列以上のものがある。" userName="yahoozoo" createdAt="2025-03-15T16:49:45" color="">}}

{{<matomeQuote body="よく分からん。1) 確かにテキストから学ぶのは難しいけど、LLMは今やマルチモーダルだよ。2) 「ライオンの大きさ」って論文は2019年のもので、今はもう岩石の時代みたいなもん。SOTAはGPT2で、まともなテキストを出せなかった。3) マウスにチェスをさせたり物理の問題を解かせたりコードを書かせたりしたことある？マウスがChatGPTやGrok、Claudeを超えるベンチマークって何なん？" userName="throw310822" createdAt="2025-03-15T00:32:44" color="">}}

{{<matomeQuote body="マウスは生き延びるために狩りをしたり繁殖したりできる。LLMにはそれができない能力がたくさんある。LLMは実質的には圧縮データセットの検索で、ほんの少しの推論を持つパロットみたいなもんだから、幻覚が生まれる。検索が失敗したり、圧縮が失敗したり、推論が失敗するわけ。" userName="nextts" createdAt="2025-03-15T00:40:34" color="">}}

{{<matomeQuote body="3歳児と話すと、彼らはかなりの頻度で幻想を抱くんだ。ほとんど何にでもそうだよ。LLMのやってることは、俺たちの認知とそんなに遠くない気がする。" userName="pfisch" createdAt="2025-03-15T00:48:26" color="">}}

{{<matomeQuote body="興味深いけど、少し関係ないね。人間は学んで間違う生き物だし、3歳児はLLMに比べて桁外れに知性がある。3歳児の音声とLLMのバイナリトークンを比べるのは、ただの幻想を楽しんでるだけなんじゃないかな。" userName="nextts" createdAt="2025-03-15T01:04:31" color="">}}

{{<matomeQuote body="俺は納得してない。反論が説得力ないけど、このコメントは考えさせられる一方で、ちょっと驕り高ぶってるな。ああ、Yannの『平均的な家猫はLLMより賢い』の意味が分からん。同様の質問をしている俺に、マジで3歳児がLLMより賢いってどういうこと？" userName="refulgentis" createdAt="2025-03-15T01:09:22" color="#ff5733">}}

{{<matomeQuote body="＞ 3歳児がLLMより賢いってどういうこと？<br>それはLLMが現実世界の理解がひどいからだ。例えば、> あなた：トドラーの隣にウィッグを置いたら、どっちが高くなるの？<br>ChatGPTはウィッグが高いって言うけど、実際にはトドラーが寝てるからウィッグは平たくなるし、トドラーが高くなるよ。" userName="chmod775" createdAt="2025-03-15T03:12:49" color="">}}

{{<matomeQuote body="マウスは朝食前に多くの物理問題を解決できるよ。彼らは物理的な世界をナビゲートする必要があるからね。LLMが猫やカモメ、フクロウから逃げつつ食べ物を探すためのベンチマークをクリアしたことあるの？ChatGPTはそのスコアどうなの？" userName="YeGoblynQueenne" createdAt="2025-03-16T09:30:59" color="">}}

{{<matomeQuote body="＞ マウスは多くの物理問題を解決できる<br>え？どれ？物理の問題を解くことが身体能力と同じじゃないから、サッカー選手が物理学の博士号持ってるわけじゃないし。特定の問題を繰り返し解くシステムが知能とは言えないよ。" userName="throw310822" createdAt="2025-03-16T13:26:44" color="">}}

{{<matomeQuote body="これはClaudeがポケモンをプレイすることで強く裏付けられている気がする。" userName="cm2012" createdAt="2025-03-14T22:59:00" color="">}}

{{<matomeQuote body="AIの進歩は、アルゴリズムの進展がある度に人々がすぐに新旧の問題に適用しようとして進展が早まる感じかな。その後、数年の停滞期が来るんだ。例えば、AlexNetの画像ラベリング、LeCunのDeepLearning、OpenAIの大きなトランスフォーマーモデルがある。この過程で「最近の進展は線形的・指数的に続く」と思われることが多いけど、実際はむしろS字曲線の頂点でモデルが実用化される手前での停滞がある。今はLLMがS曲線の0.9あたりで、さらに改善の余地があると思うけど、次のアルゴリズムの突破口が必要だね。" userName="jawiggins" createdAt="2025-03-14T17:57:24" color="#ff5c5c">}}

{{<matomeQuote body="確かに、科学全般もそんな感じだよね。生産的なパラダイムシフトの間に長い停滞期がある。" userName="Matthyze" createdAt="2025-03-14T18:14:24" color="">}}

{{<matomeQuote body="暗い部屋で手探りしてて、やっと電気のスイッチを見つける感覚だね。見つけたら次の暗い部屋への扉が見える。" userName="ahazred8ta" createdAt="2025-03-15T01:35:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="科学もそんな感じだよね。でも、AIの生産的なパラダイムシフトは単にお金の問題で解決できるとは思えない。AIで5年間の停滞が起きたら、株式市場や経済にとっては短期的な災害だよ。" userName="calmbell" createdAt="2025-03-15T22:29:06" color="#ff5733">}}

{{<matomeQuote body="確かにそれは怠慢なアプローチだと思う。代わりに出だしから99％進んでいるシンプルで洗練されたアプローチが必要だね。統計的な調整や過剰適合を始めると、解決に向かう道から遠ざかる。" userName="tyronehed" createdAt="2025-03-14T18:46:48" color="">}}

{{<matomeQuote body="その通りだね。しかし、物理モデルの場合は、簡単で正確なものが多いから疑ってかかるべきだ。一般的な知能やマルチモーダルパターンマッチングには、核心に優雅な構造があるとは限らないからね。" userName="klabb3" createdAt="2025-03-15T13:15:02" color="">}}

{{<matomeQuote body="公式のML研究者じゃなくても、このことは理解してるよ。LLMの問題は出力が本質的に確率的という点だね。“十分な情報がない”という選択肢がない。LLMは巨大な参照マップで、補間を行ってるから、真のAIは現在のLLMのようなフィードフォワードアーキテクチャだけじゃないと思う。" userName="ActorNightly" createdAt="2025-03-10T20:26:17" color="#45d325">}}

{{<matomeQuote body="＞LLMの出力が本質的に確率的という問題は、次のトークンを予測する際に明確に低確信度を示すことができるってのは正しくないんじゃないかな。要するに、モデル全体が低い確率を割り当てることで、あるトークンへの低い信頼度を示す能力があるということだね。" userName="seanhunter" createdAt="2025-03-14T18:09:06" color="">}}

{{<matomeQuote body="LLMの機能について誤解がどんどん積み重なってる気がする。勾配降下法や自己回帰生成を理解してると、逆に自信過剰になりがちだ。出力はあくまで次の単語を予測するためのもので、それにとどまらないよ。単語の間に適切に使うこともできるし、あらかじめ用意されたデータの内部知識を使うことができる。" userName="Lerc" createdAt="2025-03-14T19:47:52" color="#ff5c5c">}}

{{<matomeQuote body="わかりやすく書いてくれてありがとう。毎日友達や同僚、メディアの専門家から聞く誤った主張が多いのが不思議。ちょっと考えれば、そのアイデアは間違ってるってわかるはずなのに。ChatGPTを試したことがある人なら、明らかに間違っているとわかるはず。それを否定する心理が働いてるのかな。" userName="metaxz" createdAt="2025-03-14T22:12:04" color="#785bff">}}

{{<matomeQuote body="自分はMLのリサーチャーじゃないけど、あなたの意見は逆だと思う。＞「次の単語を予測することは、内在的なアイデアがないという誤解」って部分が違うと思う。モデルは「an」を選ぶけど、それは「a」と同時に確率を出して、選んだ単語によって次が決まるだけ。事前に知ってるわけじゃないよ。" userName="littlestymaar" createdAt="2025-03-14T20:12:06" color="">}}

{{<matomeQuote body="モデルは「an」を出すとき、次の単語が母音で始まるかどうかの表現は持ってる。それを理解するには、LLMに質問してみればわかるよ。「ワニに最も似ている動物は？」とか、常に「an alligator」と返してくるし。これはモデルが内部的に「alligator」と考えているから。" userName="yunwal" createdAt="2025-03-14T20:41:37" color="#ff5c5c">}}

{{<matomeQuote body="それは良い例じゃないと思う。答えはすでにプロンプトに含まれているから。だから「alligator」が高い確率になってるのは当然で、そのために「an」を使う機会を待ってるだけ。事前に何を言いたいか分かってるわけじゃない。" userName="littlestymaar" createdAt="2025-03-14T20:53:40" color="">}}

{{<matomeQuote body="あなたが書いたことに同意。モデルは「an」を出す瞬間に、ランダムに出してるわけじゃなくて、高い確率で「alligator」が正しいと内心知ってるから。だから「an」を選ぶけど、「alligator」は明示的にはプロンプトに含まれてないよ。" userName="metaxz" createdAt="2025-03-14T22:03:03" color="#ff5c5c">}}

{{<matomeQuote body="モデルは時々「a」も出すことがあるけど、その後には「alligator」を出さないんだ。LLMの自己回帰性のために、長いレスポンスになるほど、プロンプトよりも自分の出力に依存する。基本的な事実の質問でも、全く逆の答えになることもある。" userName="littlestymaar" createdAt="2025-03-15T02:17:26" color="">}}

{{<matomeQuote body="他にも例があるよ。例えば、別のモデルを使った質問ね。生まれた国についての例が出てきて、まさに「an Australian」と言っている。これは「an」を選んだからではなく、先に「Australian」が来ることがわかっているから。" userName="Lerc" createdAt="2025-03-14T23:12:09" color="#ff5c5c">}}

{{<matomeQuote body="その意見には賛成できる。簡単なテストも実施されてるし、論文でもその能力について検証されている。線形プローブを使って隠れた表現から次のトークンを高精度で予測できる。" userName="numeri" createdAt="2025-03-16T08:31:46" color="">}}

{{<matomeQuote body="面白い観察だね！内部状態は毎回新しいトークンのためにリセットされるの？出力はいつも前のコンテキストと新しいトークンが加わることによるもの。内部状態は入力トークンに組み込まれてるだけじゃない？" userName="cruffle_duffle" createdAt="2025-03-15T15:52:03" color="">}}

{{<matomeQuote body="それは正しい。モデルが次の5つの言葉の予測ができてるとき、最初を出すと、残りの4つは再利用されず、次の推論サイクルでもう一度同じ情報を生成することが多い。哲学的な問題もありそうだね。" userName="Lerc" createdAt="2025-03-15T17:30:45" color="">}}

{{<matomeQuote body="論理ゲートとCPUの例えはその通りだね。まるで木を見て森を見ぬって感じで、モデル自体は全体の森を生成してる可能性があるけど、その出力が自然言語だから、一度に一本の木しか植えられないんだ。トークン選択の過程は、最終的な精製段階にすぎないんだよ。" userName="jkhdigital" createdAt="2025-03-15T00:32:04" color="#38d3d3">}}

{{<matomeQuote body="本当に「わからない」ってのを扱えないんだね。教えられないとダメだよ。面白い。" userName="flamedoge" createdAt="2025-03-15T09:06:56" color="">}}

{{<matomeQuote body="調整後は「わからない」って言わないように訓練されてるって言った方が正確かも。" userName="Lerc" createdAt="2025-03-15T09:46:51" color="">}}

{{<matomeQuote body="もっと根本的な話だと思う。LLMに関して「考える」って言ったら間違いだよ。LLMはあくまであいまいなパターンマッチングだし、「わからない」ってのもただそのフレーズを知ってるだけ。概念を持ってるわけじゃないんだ。" userName="kerkeslager" createdAt="2025-03-15T19:07:04" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="その意見がどれほど役に立つかは疑問だけど、電子は動機なんてないけど低エネルギー状態に行こうとするよね。機械が意識や理解を持つっていう主張に関しては、文脈をしっかり示してほしい。重調整については異議があるけど、元々理解の概念は持ってると思う。大多数の人間も哲学者じゃないしね。" userName="Lerc" createdAt="2025-03-15T22:19:08" color="">}}

{{<matomeQuote body="言語のあいまいさが原因でLLMの理解が難しいって言いたいんだね。その通りだと思うよ。モデルは「わからない」って言わせるために調整されていても、実際に理解してるわけじゃない。人間とは異なり、LLMは質問の違いを理解できない。" userName="kerkeslager" createdAt="2025-03-16T19:07:28" color="#38d3d3">}}

{{<matomeQuote body="比喩で説明するのと不正確さは違うよ。でも曖昧な表現を使われると混乱する人が多いのも事実。調整によって「わからない」と言う能力を学ぶのは理解できるが、内部表現を言葉にするのは人間も同じだと思うんだ。" userName="Lerc" createdAt="2025-03-17T05:12:46" color="#ff33a1">}}

{{<matomeQuote body="問題はその確率分布だよ。ネットワークは「これはナンセンスだからゼロ%」と言えないし、他のアーキテクチャは不確実性を評価できるけど、Transformersはまだできない。" userName="estebarb" createdAt="2025-03-14T18:25:33" color="">}}

{{<matomeQuote body="そうそう、そういうことを考えてた！最近のモデルには競争力がないモデルをリリースするPRのプレッシャーがあって、みんなすぐにでもインクリメンタルな改善をしたがる。あとは、試している新しいことの成果が上がらない場合も多いな。結局、ユーザーエクスペリエンスが一番大事で、改善が体感できていないのかもしれない。" userName="refulgentis" createdAt="2025-03-14T18:40:03" color="#785bff">}}

{{<matomeQuote body="そうだね、専門的なモデルにとっては役立つと思う。進歩の断片化はプライベートとオープンソースの分断が原因だろうね。この流れの中で新しい突破口を見つけるのは大変だ。" userName="ortsa" createdAt="2025-03-14T21:32:50" color="#ff5733">}}

{{<matomeQuote body="間違いなく、Stephensonのパス依存性についてのエッセイを読むべきだよ。要は、新しいものが流行するには大きな進歩が必要ってことさ。" userName="vessenes" createdAt="2025-03-14T18:55:40" color="">}}

{{<matomeQuote body="うん、みんな十分理解していないものにお金を使いすぎているのは、かなり無理があるね。" userName="Ericson2314" createdAt="2025-03-14T21:31:21" color="">}}

{{<matomeQuote body="そうだね。その結果、低トークンレベルの信頼度が他の言い回しの可能性や関連するトピックの欠如を示すことが多いんだよね。実際、事実が間違っているとは限らない場合が多い。" userName="duskwuff" createdAt="2025-03-14T18:29:18" color="">}}

{{<matomeQuote body="最初の反応は、モデルは無理だけど、サンプリングアーキテクチャはできるかも。今の推論の全体構造が批判に応じているか理解しようとしている。" userName="vessenes" createdAt="2025-03-14T18:42:17" color="#ff5733">}}

{{<matomeQuote body="出力のスコアは最後のレイヤーで得られるから、特にフラットな分布を見つけたら問題に気づくかも。ただ、隠れ層からその観測結果を引き出す方法がないのが難しいね。" userName="derefr" createdAt="2025-03-14T18:55:07" color="">}}

{{<matomeQuote body="“情報が足りない”という選択肢がないのは言れるよ。だけどモデルが自分の情報の必要性を示すように訓練される研究が進んでるんだ。SelfRAGがその一例だよ。" userName="spmurrayzzz" createdAt="2025-03-14T20:25:22" color="#785bff">}}

{{<matomeQuote body="最近、Andrej Karpathyの動画を見たんだけど、ハルシネーションはトレーニングデータの中に”知らない”という回答の例がなかったからって言ってたかも。間違って解釈してるかもしれないけど。" userName="thijson" createdAt="2025-03-14T20:19:22" color="">}}

{{<matomeQuote body="＞ ”LLMの問題は出力が本質的に確率的であることだ。”人間にも当てはまると思うんだけど？人間は新しい知識を生成するために跳躍をするんだ。" userName="unsupp0rted" createdAt="2025-03-14T20:25:22" color="">}}

{{<matomeQuote body="情報が足りない選択肢がないのが残念だわ。LLMって基本的には巨大な参照マップと補間の集まりじゃん。ChatGPTに「市の中心にいるんだけど、 landmarkに行くには右か左に曲がった方がいい？」って聞いたら、皆が以前に聞いた道順の平均を答えたりしないよ。ちゃんと自分がどこにいるのか、どっちを向いているのかを詳しく教えてって聞いてくる。" userName="throw310822" createdAt="2025-03-14T19:22:44" color="#ff33a1">}}

{{<matomeQuote body="トレーニングデータに基づいて、道順を聞かれたらまず場所を明確にするのが最も可能性の高い返答になるからね。それに、「1stと2ndの角にいるんだけど、隣の公共の公園は何？」って知識のテストとして聞くと、ウェブ検索機能がないモデルは自信を持って作り話をしちゃうよ。だから、モデルに「知らない」と言わせることを頑張るんじゃなくて、どんな質問がウェブ検索を必要とするかを教える方がいいと思う。" userName="wavemode" createdAt="2025-03-15T03:37:48" color="#45d325">}}

{{<matomeQuote body="今、Chatbot Arenaで試したけど、両方のチャットボットがもっと情報を求めてきたよ。一つはGPT 4.5プレビュー、もう一つは誰かのアイデアの可愛いコードネームだと思うけど、 cohort-chowder。" userName="QuesnayJr" createdAt="2025-03-15T05:03:03" color="">}}

{{<matomeQuote body="今、Chatbot Arenaで試したけど、両方のチャットボットが自信を持って公園の名前を間違えたんだ。実際の場所を隠すための例として「1stと2nd」を使っただけだから、実際の公園の近くにある通りの名前を使った方がいいよ。都市や州も指定しても大丈夫だし。" userName="wavemode" createdAt="2025-03-15T05:42:27" color="">}}

{{<matomeQuote body="LeCunの主張には賛同できないな。RLがうまくいけば（今、推論モデルが見えてきてるし）モデルに正解に最も高い報酬関数を与えて、「分からない」と言った場合はその次に低い報酬にする、間違った答えはペナルティを与えるみたいな仕組みができるんじゃない？RLが報酬を最大化しようとしたら、正しさが高いと思う答えが見つからないときに「分からない」と言う戦略を見つけるはずだと思う。" userName="josh-sematic" createdAt="2025-03-14T20:06:03" color="#785bff">}}

{{<matomeQuote body="多くの反応が「LeCunはなぜLLMがAGIに繋がらないと思っているのか？」という別の質問に答えているように見えるけど、君の質問は「なぜLeCunはLLMにハルクスが必然的なのだと思うのか？」だよ。LLMをどうやって訓練しているか考えてみて。全ての人間の言語の統計的分布を学ぶために、テキストの塊を与えることで、次に最も可能性が高いトークンを生成する。真偽を判断することを学ばないし、「これは知っているか？」を学ぶ必要もないんだ。だからLLMは自分が知らないことを認識できない。新しいアーキテクチャと生涯学習の訓練パラダイムでこれを解決するアイデアがあるけど、実行するのが難しいんだ。" userName="chriskanan" createdAt="2025-03-15T12:23:55" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
