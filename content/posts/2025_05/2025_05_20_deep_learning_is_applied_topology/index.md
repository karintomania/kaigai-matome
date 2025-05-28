+++
date = '2025-05-20T00:00:00'
months = '2025/05'
draft = false
title = 'ディープラーニングって、実は応用トポロジーだった？'
tags = ["ディープラーニング", "AI", "機械学習", "数学", "トポロジー"]
featureimage = 'thumbnails/purple5.jpg'
+++

> ディープラーニングって、実は応用トポロジーだった？

引用元：[https://news.ycombinator.com/item?id=44041738](https://news.ycombinator.com/item?id=44041738)




{{<matomeQuote body="この投稿、俺の2014年のブログ記事（https://colah.github.io/posts/2014-03-NN-Manifolds-Topology/ ）が元になってるから、コメントさせてくれ。<br>トポロジーを使ってニューラルネットを理解しようと結構頑張ったんだけど、この10年色々試した結果、あんまり手応えがなかったんだ。<br>それより線形表現仮説（「概念」が方向に対応するって考え）とか、回路（そういう概念がつながったネットワーク）のアイデアの方が、ずっとうまくいってるよ。" userName="colah3" createdAt="2025/05/20 16:32:22" color="#ff5733">}}




{{<matomeQuote body="ニューラルネットの理解に関連して、よく見るけど誤解っぽい考えがこれ。<br>LLMは単なるちょっといいn-gramモデルだとか、「ただ」次のトークンを予測してるだけ、だからバカだって考え。<br>多分、KarpathyのRNNに関する投稿（https://karpathy.github.io/2015/05/21/rnn-effectiveness/ ）へのある人気ある反応（https://nbviewer.org/gist/yoavg/d76121dfde2618422139 ）とか、stochastic parrotの論文（https://dl.acm.org/doi/pdf/10.1145/3442188.3445922 ）の一部（「n-gramモデルを主に念頭に置いていたが、結論は適切で関連性が残る」とか）が、LLMをn-gramモデルと同一視させる原因になってるんじゃないかな。" userName="montebicyclelo" createdAt="2025/05/20 16:57:27" color="#ff5c5c">}}




{{<matomeQuote body="俺の持論だけどね。<br>”stochastic parrots”とか”モデルは理解してるか”みたいな議論って、すごく不健全だと思うんだ。だって本来はメカニズムについての科学的な問いであるべきなのに、ニューラルネット内部にどんなメカニズムが存在するかっていう語彙がみんな無いからさ。だから、曖昧なアイデアに意味を投影して、科学的・経験的な主張に根差さない議論ばっかりになっちゃう。<br>俺たちの最近の論文（https://transformer-circuits.pub/2025/attribution-graphs/bio... ）では、ニューラルネットが特定のタスクで使う計算をリバースエンジニアリングしてるんだ。”多段階推論”とか”計画”みたいに非公式に表現できる計算を見つけたよ。" userName="colah3" createdAt="2025/05/20 19:07:35" color="#ff5c5c">}}




{{<matomeQuote body="メカニズムがどうであれ、LLMの根幹にある”思い込み”は、十分な構文（そして構文だけ）を十分に複雑なシステムに大量に投入すれば、意味論が創発されるはずだ、ってこと。<br>かなり無理があると思うね（Plato’s Caveを参照）。" userName="somewhereoutth" createdAt="2025/05/20 23:00:46" color="">}}




{{<matomeQuote body="哲学、科学（物理、生物）、経済、政治なんかの幅広いトピックを、実践者やオリジナルの視点、ニュースとかから広く読んできた人なら誰でも、言葉とその構文だけで膨大な量の関係性を理解できたはずだよね。<br>多くは感覚と結びついてるけど、遥かにそれを超えるものがほとんどだよ。<br>経済ってどんな見た目？分からないけど、最適解とか期待される結果とかを考える時、頭の中で意識し、認識し、作り出せるけど、感覚とは結びつけて説明できない形を動かしてるんだ。<br>変な代数で予想の証明を探してる時も同じ。<br>これって本当に意味論を扱ってるの？それとも、単に構文の塊の中にある、（統計的または信頼できる）不変な関係性のための、グラフみたいな潜在表現を学んだだけ？<br>違いなんてある？<br>視覚世界の構文を学んでるだけじゃない？密度、付着、目的、次元、サイズみたいな抽象概念を学ぶけど、実際見てるのは３種類の点（ピクセル）の明るさの塊だよね。これらの抽象概念だって、他人がそれらを説明する言葉からすごく恩恵を受けてる。だって実際には”見て”ないんだから。" userName="Nevermark" createdAt="2025/05/21 02:57:33" color="#38d3d3">}}




{{<matomeQuote body="フォローありがとう。数年前からあなたのcircuitsスレッドを追ってるよ。線形表現仮説はすごく説得力があると思うし、Toy Models of Superpositionのレビュー草稿がメモにあるよ。Circuitsは、分析がTransformerアーキテクチャにすごく縛られてる気がするから、そこまで説得力は感じないんだけど、まあ俺に何が分かるかって感じだね。<br>線形表現仮説だけど、それはアーキテクチャに依存するんじゃない？GANs, VAEs, CLIPなんかは、明らかにマニホールドをモデル化してるように見えるし。簡単なモデルでも、最適化の圧力で似たような特徴を同じ線形方向に押し込めるはずだよ。" userName="theahura" createdAt="2025/05/20 17:42:57" color="#ff5c5c">}}




{{<matomeQuote body="あなたが答えてる人とは、少し違う点を言ってるよ。あなたは言葉（おそらく知的な内容を持った）と、それらからより大きなアイデアを構築できる構文の組み合わせについて話してる。<br>彼が言ってるのは、LLMは、十分な構文を消化してそれを再現するだけで、知性が見かけ上だけでも（実際にはどうかは別として）現れることが可能だ、という原則で動いてるってことだよ。彼には同意するね。<br>長くなるけど許してほしい。これは最近すごく考えてることで、ちょっと脳内ダンプさせてくれ：<br>Chinese Room思考実験——Stanford Encyclopedia of Philosophyでは20世紀後半で最も議論された思考実験の一つとされてる——は、まさに構文からは何の理解も生まれない、したがって（我々がそれをどう定義するにせよ）本当に、実際に理解する’強いAI’は不可能だと主張したんだ。だから、この問題について議論してる人はたくさんいるよ。<br>俺は大陸哲学や社会思想の専門家じゃないけど、同様に、構造主義は、本質的に言語や文化を理解できる（あるいは理解しなければならない）のは、それらの構文をマッピングすることによってだと主張したと理解してるんだ。でも構造主義者はもういない。彼らのプロジェクトは失敗した。彼らの方法が機能しないからね。<br>繰り返しになるけど、俺は専門家じゃないから鵜呑みにしないでほしいけど、ポスト構造主義は、そのような構文が人工的で技巧であるという認識の上に部分的に構築されたんだと思う。内容、意味は、どこか別の場所にある。<br>それを取って代わった”ポストモダニズム”は、構造主義者たちは基本的にプラトン主義者かマニ教徒だった——思考を、現実世界の荒々しく、醜く、汚い、混沌とした具現化とは別の、ある理想的な（哲学的な意味で）形を持っていると扱っていた、と我々に告げる。ポストモダニズムは、広く言えば、それはナンセンスだと言うんだ（文字通りね）。なぜなら、文脈が王様だからだ（そしてそれはまさにそうなんだ）。<br>だから、俺が知る限り、これらの問題を理解するのがまさに仕事である、よく情報に通じた多くの人々が、構文そのものが何らかの理解を与えるかどうかをまだ議論しているし、20世紀に哲学がたどった道は、強くそれに反対しているように見えるよ。" userName="globnomulous" createdAt="2025/05/21 05:43:35" color="#ff5733">}}




{{<matomeQuote body="SP（stochastic parrot）に反対する俺のお気に入りの議論は、ゼロショット翻訳だよ。モデルは日本語-英語とスワヒリ語-英語を学んで、それから日本語-スワヒリ語を直接翻訳できるんだ。それは内部で単なるパターンマッチング以上のことが起こってることを示してる。<br>モデルの能力に基づいた全ての議論に加えて、使い方からの議論もある——LLMはオウムよりピアノに近いってこと。人々はLLMを鍵盤で”演奏”して、彼らに”歌わせてる”んだ。ピアノは音楽を作らないけど、音楽家とピアノは作る。BenderとGebruはLLMが単独で、人間の指示なしで動くかのように話すけど、ピアノも単体ではバカだよ。" userName="visarga" createdAt="2025/05/21 05:58:28" color="#38d3d3">}}




{{<matomeQuote body="CircuitsはTransformerに特有だと思った？<br>Transformer Circuitsのスレッドでの俺たちの仕事はしばしばそうだけど、オリジナルのCircuitsの仕事は畳み込み視覚モデル（https://distill.pub/2020/circuits/ ）で行われたんだよ。<br>線形表現仮説はアーキテクチャに依存する？GANs, VAEs, CLIPなんかは明らかにマニホールドをモデル化してるみたいだけど？<br>（1）実際、GANs, VAEsなんかにも線形表現の例はかなりあるんだ（Toy Modelsの議論に例があるよ）。<br>（2）線形表現は必ずしもマニホールド仮説と対立しない。<br>（3）GANs/VAEsなんかが潜在ガウス空間としてモデル化するのは、超位置（superposition）（これは線形表現を必要とする）を許容するなら、実際にはるかに自然なんだ。なぜなら中心極限定理によって超位置がガウス分布のような分布を生み出せるから。" userName="colah3" createdAt="2025/05/20 18:05:50" color="#45d325">}}




{{<matomeQuote body="俺は構文を一般的な形の「パターン」という意味で使ってるんだ。<br>俺たちはLLMについて話してて、議論は非言語的な概念を言語的なパターン（つまり、言葉の意味間の関係を反映する制約を含む言葉の使用に関する全てのルールを含む構文だけど、その意味をより直接的な方法で伝えないもの）を通じて学ぶことが、意味的な理解を構成するかどうか、ってことについてみたいだね。<br>結局、俺たちが持ってる全ての意味は、俺たちの感覚が伝えるパターンから構築されてるんだ。俺たちはそれらのパターンから意味を構築する。<br>つまり、LLMは俺たちと同じくらい、あるいは深く「理解」してるかもしれないし、してないかもしれない。でも、彼らがやってることは、同じ方向性にあるよ。" userName="Nevermark" createdAt="2025/05/21 08:12:50" color="">}}




{{<matomeQuote body="物理で異なる大域対称性（トポロジー多様体）が同じ計量構造（局所幾何）を満たせるのが面白いと思うんだ。例えば、アインシュタイン方程式の同じ計量テンソル解がトポロジー的に異なる多様体上に存在しうる。逆に、Ising Modelの解を見ると、同じ格子トポロジーでも多くの異なる解がありうるし、系が臨界点近くにあるときは、格子トポロジーは全く関係なくなる。あくまで類推だけど、ダイナミクスの面白い詳細が系のトポロジーに埋め込まれてるわけじゃないってことを示唆してるね。もっと複雑なんだよ。" userName="riemannzeta" createdAt="2025/05/20 17:35:39" color="#38d3d3">}}




{{<matomeQuote body="＞私は本当に意味論を扱っているのだろうか？それとも単に、構文の中にある（統計的か信頼できる）不変な関係性のグラフのような潜在表現を学んだだけなのか？<br>この部分やコメントの残りは哲学的な懐疑論だね。ヒュームの「経験の束」モデルがまだ認識論の未解決問題だった頃に、カントがこれを論破したんだ。" userName="viccis" createdAt="2025/05/21 07:30:46" color="">}}




{{<matomeQuote body="＞元の回路の研究は畳み込み視覚モデルでされた<br>へー、そんな昔のは読んでないや。読書リストに追加しとこう。<br>「処理」と「状態」が混ざる感覚から回路分析にピンとこないけど、タンパク質経路みたいで惹かれる部分もあるんだ。<br>線形表現（linear representations）と多様体仮説（manifold hypothesis）は対立しないって話は分かったよ。「強い」線形表現を考えすぎてた。<br>重ね合わせ（superposition）はニューラルネットにとって自然だと思うんだけど、なんでこれが線形表現（linear representations）を必然的に要求するのか、もっと詳しく知りたいな。（個々のニューロンが組み合わさって、より多くの特徴を表現できるってことは、特徴が線形構成だってことを意味するの？）" userName="theahura" createdAt="2025/05/20 18:24:52" color="#38d3d3">}}




{{<matomeQuote body="＞結局、僕たちが持つ全ての意味は、感覚が伝えてくれるパターンから構築されるんだ。僕たちはそれらのパターンから意味を構築する。<br>かなり大胆な主張だね。無限とか物理的には存在しない他の数学的概念について、どんな感覚伝達が僕たちに教えてくれるの？数学センスって、超物理的な何かから引っ張ってくる自分自身のセンスなの？<br>これって、チョムスキーの貧困刺激（poverty of stimulus）の仕事にも反するんじゃない？言語の多くの意味と能力は、不十分な感覚データからじゃなくて、言語の再帰的な性質が提供するってやつ。" userName="meroes" createdAt="2025/05/21 15:25:12" color="">}}




{{<matomeQuote body="翻訳はトークン埋め込み（token embeddings）のおかげで起こるんだ。文脈上の意味合いを捉える豊かな埋め込みを開発するのにたくさんの時間を費やしたんだよ。それを学習すれば、翻訳は単に一方の言語で埋め込んで、もう一方の言語で取り出す「だけ」なんだ。<br>これは複雑な思考行動を示すものではないね。もっと良い例はおそらくあるだろうけど。翻訳は本当にその一つじゃない。" userName="Hendrikto" createdAt="2025/05/21 08:35:56" color="">}}




{{<matomeQuote body="対称性が好きなら、conv netの回路分析で対称性がどう現れるか、ここで楽しめるといいよ：<br>https://distill.pub/2020/circuits/equivariance/" userName="colah3" createdAt="2025/05/20 18:06:54" color="#785bff">}}




{{<matomeQuote body="「強い線形表現」の話は「一様な重ね合わせ（uniform superposition）」で起こることで、現実は違うよ。「特徴多様体（feature manifolds）」や「多次元特徴（multi-dimensional features）」を探してみて。<br>重ね合わせ（superposition）が線形表現（linear representations）を要求するかって質問だけど、君の表現は重ね合わせを非公式に言ってる感じで、技術的なニュアンスとはちょっと違うんだ。非線形特徴を許容すると意味が曖昧になる。技術的な意味での重ね合わせは、線形表現とスパース性が必要だよ。" userName="colah3" createdAt="2025/05/20 19:00:47" color="#785bff">}}




{{<matomeQuote body="特徴多様体（feature manifolds）や多次元特徴（multi-dimensional features）の話はすごく腑に落ちたよ。デフォルトの考え方に近いな。<br>技術的な意味での重ね合わせ（superposition）と線形表現（linear representations）の依存関係も分かって良かった。<br>「全ての特徴が線形」って話は、非線形特徴と比べてってことだよね？単一の層で非線形な概念表現があったら驚くけど、層をまたぐなら回路（circuits）寄りになるってのは納得だな。" userName="theahura" createdAt="2025/05/20 20:16:10" color="#785bff">}}




{{<matomeQuote body="これって、俺が2011年にトポロジーを学んでからずーっと、現実世界に応用しようとしてうまくいかなかった経験と全く同じなんだよね。よく言われる”現実世界のデータは滑らかな低次元多様体で近似できる”ってセリフにすら今じゃためらうよ。この主張が現実データでどれだけ通用するのか、次元削減でどれだけ歪んでるのか、時間かけて調べたいんだけど、まあ時間ないよねー。" userName="j2kun" createdAt="2025/05/20 23:29:04" color="">}}




{{<matomeQuote body="”The model learns Japanese-English and Swahili-English and then can translate Japanese-Swahili directly. That shows something more than simple pattern matching happens inside.”<br>日本語と英語、スワヒリ語と英語を学んだモデルが、直接日本語とスワヒリ語を翻訳できるなんて、単純なパターンマッチングだけじゃないってことだよね。ヘレン・ケラーの「水」の話みたいに、異なるモダリティのトークンを結びつけることが、何か意味のあることをする最初のステップだって、人間の経験からもわかるじゃん。" userName="nthingtohide" createdAt="2025/05/21 07:38:29" color="#ff5733">}}




{{<matomeQuote body="マジ1000パーセント同意！N-gramとかNLTKとかで何年もデータの扱いに苦労したエンジニアじゃないと、このすごさってマジわかんないんだよね。2012年頃に「できたらいいなー」って思ってたプロジェクトが、今じゃもうちょちょいのちょい。このヤバい飛躍の意味を理解するのは超面白いし、「ブラックボックスだろ」って文句言うのとは全然違う次元の話だよ。前にもここで言ったことあるけど、LLMの世間の受け入れ方って、みんながやっと機械学習ってものの存在を知ったばっかりだから、なんか損してる感じするわー。" userName="agentcoops" createdAt="2025/05/20 19:54:29" color="#785bff">}}




{{<matomeQuote body="LLMの根っこにある考えって、「十分な構文（シンタックス）だけをぶち込めば、十分に複雑なシステムの中で意味（セマンティクス）が勝手に生まれてくるんじゃね？」ってこと。シンタックスは内容と振る舞いの両面があり、自己生成的なシステムとしてデータ自身が意味空間を作るんだ。これは再帰的プロセスで、外部からじゃ完全に理解できないんだ。ゲーデルとかチューリングとかチャイティンも証明してるでしょ？訓練や推論もまさにそれ。水が川岸を削り、川岸が水をせき止める詩みたいに、モデルの重み（川岸）と言語（水）は相互に作用してるんだ。" userName="visarga" createdAt="2025/05/21 06:11:01" color="#ff5c5c">}}




{{<matomeQuote body="「”stochastic parrots”だ」「”do models understand”？」みたいな議論って、マジ不健全だと思うんだよね。みんな曖昧なアイデアに意味を投影してるだけで、科学的な根拠とか経験的な主張に基づかないじゃん。俺に言わせれば、「LLMが理解するか？」って問い自体が、カテゴリ間違いなんだよ。「変ホ長調は黄色ですか？」って聞いてるのと同じくらいナンセンスなんだ。" userName="lo_zamoyski" createdAt="2025/05/21 16:16:05" color="#ff5c5c">}}




{{<matomeQuote body="無限とか、物理的に存在しない数学的な概念について、感覚が何を教えてくれるかっていう質問、マジいいポイントだね！俺の推測は、<br>1. 環境に直接ないけど、扱うのに便利な、単純化されたパターン（抽象化）を学ぶんだ。<br>2. 次に、そのパターンについて推論する。それで、環境についての深い洞察とか、パターンについてのパターン（つまり、より高次の抽象化）を生むんだよ。数とか論理とか無限みたいにね。<br>抽象化の進歩は、最初はめちゃ遅かったけど、一旦始まるとめちゃ速くなった。人間は種として賢い。個人じゃなく。天才も先人の知識の上に立つ。累積知識消したら進歩は激遅になるだろうね。" userName="Nevermark" createdAt="2025/05/22 17:41:25" color="#ff5733">}}




{{<matomeQuote body="じゃあさ、symbolic mathematics（数式処理）についてはどう思う？特にMathematicaみたいなシステムって、純粋な構文操作だけで、本当に新しい数学的な事実を生み出せるじゃん。実際のところ、構文（シンタックス）と意味（セマンティクス）って、めちゃくちゃ強く絡み合ってて、きれいに分けられないんだよ。”証明”だって、単なる形式システムの中での、構文的に正しい文字列にすぎないわけだし。" userName="dTal" createdAt="2025/05/21 11:28:08" color="#ff5733">}}




{{<matomeQuote body="まさにSuperposition仮説について同じコメントしようと思ってたんだ。［0］ OPが「線形表現仮説 ― ’概念’がニューラルネットワークの方向に対応するというアイデア」に言及してたけど、この「’概念’＝NNの特徴」っていうアイデアって、NNができる学習の一部を説明するには、ちょっとシンプルすぎる気がするんだよね。俺たちが作ったカスタムNNモデル（LLMじゃなくて、オーディオベースで、今は公開してないやつ）でも、データ量に比べて少ないパラメータで大量のデータに”過学習”できてるのを確認したし。" userName="rajnathani" createdAt="2025/05/21 14:36:27" color="#45d325">}}




{{<matomeQuote body="トポロジーなら、類似度探索のために多様体を歪ませたりしないはず。これは距離を持つ幾何学だよ。学習中に多様体のトポロジーはどう進化するんだろう？最初は激しく変わって、安定してから幾何学的洗練が進むイメージだな。<br>関連論文もいくつか貼っとくね。" userName="esafak" createdAt="2025/05/20 14:06:53" color="#38d3d3">}}




{{<matomeQuote body="＞多様体のトポロジー的変換は学習中にも起こる<br>GANsやVAEsとかで学習中の多様体の変化は確認できるよ。UMAP/TSNEとかでね。<br>＞最初は激しく変わって、安定してから幾何学的洗練が進むイメージ<br>これもそうだけど、最初の激変は学習率とか最適化アルゴリズムにも影響されるよ。" userName="theahura" createdAt="2025/05/20 16:03:13" color="#ff5733">}}




{{<matomeQuote body="そして重要なのは、初期化アルゴリズムだね。" userName="esafak" createdAt="2025/05/20 16:06:53" color="">}}




{{<matomeQuote body="同意だね。どちらかというと応用線形代数だよ…まあ、それだとあまりエキゾチックに聞こえないけどね。" userName="profchemai" createdAt="2025/05/20 14:35:43" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="まあ、それが非線形だってことはわかってる。むしろ微分方程式に近いかな。" userName="lostmsu" createdAt="2025/05/20 15:17:13" color="">}}




{{<matomeQuote body="記事は好きだけど、”トポロジー”の使い方が変。近さや遠さってのはトポロジーじゃないんだ。トポロジーは空間伸ばしても同じもの（コーヒーカップとドーナツ）として扱う。<br>これは距離とかメトリックがある幾何学や代数幾何学の話だと思うな。" userName="ComplexSystems" createdAt="2025/05/20 14:34:40" color="#785bff">}}




{{<matomeQuote body="＞これこそトポロジーとは真逆のことだよ<br>100パーセント真実だね。<br>願わくば、混乱がトポロジーの方だけに収まってますように。" userName="srean" createdAt="2025/05/20 15:06:23" color="">}}




{{<matomeQuote body="うん、あの文では「トポロジー」を口語的に使ってたんだ。代わりに「表面」って言うべきだったね。" userName="theahura" createdAt="2025/05/20 16:07:25" color="#45d325">}}




{{<matomeQuote body="ああ、それでスッキリしたよ。<br>つまり、ディープラーニングは微分幾何学や多様体全般と共通点が多いってことだね。それなら絶対に同意するよ。" userName="srean" createdAt="2025/05/20 17:28:01" color="#ff5c5c">}}




{{<matomeQuote body="なんかトポロジーって、距離がなくても”近い”とか”遠い”って考えられる空間を研究することだと思うんだよね。近傍ってアイデアが”点同士が近くにある”ってのを捉えてて、連続性とか収束とか、”近さ”が必要なものを定義できるんだ。Wikipedia [0] にもあるけど、開集合の概念で”近い”とかを正確に表現できる。開集合の定義を変えると、連続関数とかも変わるんだ。この定義の選び方がトポロジー。距離空間は距離が定義できる位相空間で、証明が簡単になる。だからってディープラーニングにトポロジーが一番いいわけじゃないけどね。<br>[0] https://en.wikipedia.org/wiki/General_topology" userName="steppi" createdAt="2025/05/20 23:43:48" color="#ff5733">}}




{{<matomeQuote body="記事のタイトルは陳腐で間違ってるね。記事自体は楽しく読んだけどさ。トポロジーっていうのは、距離とか角度とか向きとかを全部捨てても幾何学に残る最低限の構造なんだ。すごい変形をしても有効なもの。MLでトポロジーの考え方は役立つけど、スケールとか距離とか角度とか、普通はデータについて大事な情報なんだよ。長さとか距離とかが信用できない時にトポロジーは役立つけど、ディープラーニングが応用トポロジーだなんて主張するのは馬鹿げてるし、ほとんどアホらしいね。" userName="srean" createdAt="2025/05/20 14:55:06" color="">}}




{{<matomeQuote body="＞ Topology is useful especially when you cannot trust lengths, distances angles and arbitrary deformations<br>でも…できないでしょ。入力データは”信用できない” manifold 上にあるんだよ。Coca-Cola 缶の画像と停止標識の画像が pixel space で近くにいても、それ自体には何の意味もないんだ。neural network は君が言ってるような激しい変換を全部適用してるんだから。" userName="theahura" createdAt="2025/05/20 16:05:33" color="">}}




{{<matomeQuote body="＞ But...you can’t.<br>それは必死の営業か研究費稼ぎの時だけ。確かに測定が信用できない状況はあるけど、それが一般的だなんて怪しいね。ランダムノイズでもそうなるし、純粋なトポロジーが扱う滑らかな変換だけじゃない。Metrics が信用できないこと自体は否定しないけど、トポロジー的手法は極端。使える非トポロジー情報は全部使うべき。トポロジーだとカップとドーナツは見分けられないけど、Deep learning はできる。データが noisy な manifold から来てるって考え方には賛成。ノイズデータから manifold 復元は価値がある。君のブログ記事のほとんどはそれ。でもそれって differential geometry と manifold の話で、トポロジーより豊かな構造。トポロジーはそういうのを全部捨てることになるんだ。" userName="srean" createdAt="2025/05/20 16:18:41" color="#ff5c5c">}}




{{<matomeQuote body="あれは彼らの言いたかったことじゃないと思うな。彼らが言いたかったのは、neural network は長さとか距離とか角度を使って最適化空間を”作る”ってことだと思う。トポロジー的な視点からそれを捉え直すことはできないよ。だって、もしできたとしたら、似たような問題に対する似たような neural network の最適化空間はトポロジー的に比較可能になるはずだけど、それは違うからね。" userName="kentuckyrobby" createdAt="2025/05/20 16:35:37" color="">}}




{{<matomeQuote body="まあ、ちょっとならね。neural network が”universal”な特徴を学習するって示唆する証拠は少しある（例えば Anthropic の circuits thread とか）。でも、正直この辺はよく分からないし、たぶん筆者さんの言いたいことを理解できてないのかも。" userName="theahura" createdAt="2025/05/20 17:45:10" color="">}}




{{<matomeQuote body="ぶっちゃけ細部に入り込むと、純粋なトポロジーなら気にしないようなことが色々関係してくるんだよ。層の数とか、量子化とか浮動小数点数の精度とかね。" userName="throwawaymaths" createdAt="2025/05/20 16:54:19" color="">}}




{{<matomeQuote body="”topology”って言葉には、君が主張してるような要件が全然ないちゃんとした辞書的な定義があるんだよ。君が見落としてるのは、この言葉には二つの定義があるってことだと思う。" userName="quantadev" createdAt="2025/05/20 17:33:21" color="">}}




{{<matomeQuote body="専門的で技術的なトピックのブログ記事では、長く確立された定義と意味を持つ分野内の専門用語は、同じ技術的な意味で使われるのが普通だよね。そうしないと結構混乱するんだよ。ニュートン力学の話をする時は、Gravity は Gravity を意味するでしょ。同じように、数学やMLでは、’topology’ には特定の意味があるんだ。" userName="srean" createdAt="2025/05/20 17:40:12" color="">}}




{{<matomeQuote body="”topology”って言葉は、あらゆる種類の本とか論文とか技術資料で、サーフェスの幾何学的な特性について話す時はいつでも、かなり一般的に使われてるんだ。君が主張してるような厳密で堅苦しい使い方よりも、このもっと一般的な意味でたぶん100万倍もよく使われてるよ。" userName="quantadev" createdAt="2025/05/20 18:18:21" color="">}}




{{<matomeQuote body="Surfaceには確かにTopologyがあるけど、TopologyとSurfaceは違う意味だよ。犬と毛が違うみたいにね。Topologyは数学や物理学で昔からある、ちゃんとした分野なんだ。(AmazonやWikipediaのリンク)。高校生向け雑誌にも載ってるし、大学の必修科目だったりするくらい。新しい分野じゃなくて、昔からあるんだぜ。(Calculusと比較するのもおかしくない)。もし誰かが’differential calculus’をラブレターで別の意味で使うならいいけど、数学やMachine Learningではちゃんとした意味があるんだ。" userName="srean" createdAt="2025/05/20 18:57:17" color="">}}




{{<matomeQuote body="LOL 君の貼ったリンクの一番最初の行見てよ！それはTopologyのちゃんとした意味だよ。特に数学ではね。ブログの記事も応用数学についてだし関係ないね。これで俺の主張は終わり。<br>＞ ”surface”の意味で使われるのが一番多いって？引用頼むよ。AmazonでTopology検索してもsurfaceの本出てこないし、Wikipediaだってまずその意味を載せないだろ？落ち着きなって。この丘で死ぬ価値ある？良い一日を。Topologyの本、面白いかもよ。" userName="srean" createdAt="2025/05/20 19:53:14" color="">}}




{{<matomeQuote body="Amazonにメッセージ送ってみたら？もしTopologyが一般的にそういう意味なら、検索結果変えるべきだろ。笑いのためにChatGPTに’surface’の代わりに’topology’を使わせてみたよ。<br>湖のTopologyは穏やかだったとか、キッチンのTopologyを拭いたとか、道のTopologyは凍結してたとか。<br>これめっちゃ面白いと思うんだ。これには同意しようぜ。<br>一番良かったのはドーナツの表面がコーヒーマグのに似てるってやつだな。" userName="srean" createdAt="2025/05/20 20:45:00" color="#45d325">}}




{{<matomeQuote body="”applied X”（応用X）っていうフレーズは、Xの技術的、科学的、あるいは学術的な意味を呼び起こすんだ。だから例えば、”applied chemistry”（応用化学）は出会い系アプリでの経験のことじゃないぜ。" userName="cvoss" createdAt="2025/05/20 18:14:28" color="">}}




{{<matomeQuote body="シェアありがとう。俺も学習をmanifoldで捉えることが多いよ。 powerful representation だ。<br>＞ 十分に高次元な空間では、推論と区別できないってかなり確信してる<br>これについて probabilistic reasoning manifoldsって呼んで詳しく書いたんだ。<br>このmanifoldは入力で非文脈化パターン空間を学習して構築され、真の推論は確率で表現される。<br>でも”推論”は入力データから切り離せない。高度に非文脈化された構造も再文脈化なしでは役に立たないかもね。<br>非文脈化は学習、再文脈化は変換だよ。<br>全文はこちら: https://news.ycombinator.com/item?id=42871894" userName="soulofmischief" createdAt="2025/05/20 14:49:42" color="#38d3d3">}}




{{<matomeQuote body="君の言う推論って一般的なやつ？だとしたら、「真の推論は公理じゃなくて確率で表現される」って理解できないな。<br>推論の特徴の一つは、そう（確率的）に動作しないことだと思うんだ。動物が非確率的に推論する能力持ってないなんてありえない。正しい推論に不可欠だし簡単な能力でしょ？例えば、「クモがboxAにいたら他のどこにもいない」とかさ。" userName="mjburgess" createdAt="2025/05/20 15:05:04" color="#45d325">}}




{{<matomeQuote body="命題って結局は予測で、すべて不確実性があるよ、実用上無視してもね。<br>理論の検証なんて本質的に統計的だよ。時空で環境をサンプリングする精度が仮説の正確さと関係するわけ。<br>つまり、論理の公理系は作れるけど、現実に照らし合わせるには経験的サンプリングが必要。<br>量子物理や重力だって確率的なんだ。<br>「箱Aのクモは他にはいない」なんて物理的には証明できない。不確実性があるから推論に確率が入るんだ。<br>ありえない事を無視するのは便利だからであって、確率が消えるわけじゃない。<br>普遍的な公理は確率的なattractorの中の不動点として考えられるかもね。" userName="soulofmischief" createdAt="2025/05/20 15:32:20" color="">}}




{{<matomeQuote body="この返信、正直イマイチだな。<br>命題は予測じゃなく、不確実性はその意味じゃなく信念の態度。<br>私たちの心は物理的可能性に縛られず、物理的に不可能なこと（Supermanの例）も論理操作で想像できる。<br>これは確率操作ではありえないこと。<br>離散的な論理操作は経験的事実で、自然が与えた安価な能力。<br>AIを過大評価して人間能力を軽視するのはおかしいよ。" userName="mjburgess" createdAt="2025/05/20 18:22:41" color="#ff33a1">}}




{{<matomeQuote body="確率的に正しい推論で十分なら、動物が100%正しい推論をする能力を授かる必要があったのか？<br>もし確率的推論の方がエネルギー的に安上がりなら、正しい推論はむしろ不利になるんじゃないか。" userName="naasking" createdAt="2025/05/20 17:51:50" color="">}}




{{<matomeQuote body="十分じゃないよ。<br>それに、ただ（アルゴリズム的な）否定を持つ方が、エネルギー的に圧倒的に安上がりなんだ。<br>(A, not A) を確率関数に圧縮するなんて、途方もなくありえないくらい高コストだよ。" userName="mjburgess" createdAt="2025/05/20 18:08:48" color="">}}




{{<matomeQuote body="たとえそれが本当だとしても、それは何かを「持つ」のが安上がりだっていう議論であって、自然選択を通じてそれを「発展させる」のが安上がりだって話じゃないだろ。<br>LLMsの学習時間とエネルギーを見れば、grokking/circuit generalizationの段階に達するまでの学習がいかにエネルギー集約的かわかるじゃん。" userName="naasking" createdAt="2025/05/20 22:03:26" color="">}}




{{<matomeQuote body="私たちが論理関係で推論できるのは経験的事実だ。<br>だから、LLMとその学習を認知のモデルと見なすのは経験的に誤りだよ。<br>なぜならモデルとして、それは私たちの認知の些細な側面を獲得するのを不可能なくらい高コストにするからね。" userName="mjburgess" createdAt="2025/05/20 22:38:23" color="">}}




{{<matomeQuote body="論理関係で正しく推論する私たちの能力が、確実性ではなく高い統計的な可能性しか持たない、というのが経験的事実だよ。<br>これは実際の論理というより、論理の確率的モデルのように見える。" userName="naasking" createdAt="2025/05/21 14:30:31" color="">}}




{{<matomeQuote body="普段から人が意思決定するのを見てる素人として思うんだけど、心のどこかに「確実性チェッカー」があるんじゃないかな。<br>私たちは論理そのものじゃなくて、言語的推論の一部として確実性から論理を作り出してるだけなんだ。<br>立ち止まって考えたり、自信満々に突っ走ったりするのは、可能性の内部推論がぐちゃぐちゃだからで、他人を納得させる時にだけ「定理」みたいなものが必要になるんだよ。" userName="jvanderbot" createdAt="2025/05/20 15:14:37" color="">}}




{{<matomeQuote body="人間が曖昧なのは、言葉にして推論する時だけだよ。難しいケースを扱うのがそういう推論の本質だから。<br>動物の認知は基本的なレベルでは信じられないほど洗練されてて、論理を完璧に、頻繁に使ってる。<br>私たちの精神能力に対するこのナイーブな皮肉は、統計的AIに対するこの軽信が生み出したものなんだ。" userName="mjburgess" createdAt="2025/05/20 18:26:35" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まあ、根本的に意見が違うね。そして、高圧的な態度、見事だね。<br>論理的な命題は、動物の生存に必要とか十分とは程遠いように見えるよ。<br>「獲物がどこに行くか」とか「あそこに獲物が何匹いるか」みたいな、曖昧なヒートマップの方が、必要かつ十分に近い。<br>Probability factor graphみたいなものの方が、厄介な「概念」や、べっとりして厳密すぎる「含意」を過剰に使うことなく、それができるんだよ。" userName="jvanderbot" createdAt="2025/05/20 18:59:53" color="">}}




{{<matomeQuote body="なあ、お前が完全に正しい可能性も大いにあるけど、俺たちの主張はどっちもだいたい同じ価値（ゼロ）だよ。だって両方とも外部の裏付けゼロで、個人的な意見として提示されてるからね．俺はただ、最初からそれを認める良識があっただけさ．" userName="jvanderbot" createdAt="2025/05/21 14:05:22" color="">}}




{{<matomeQuote body="データは実際にはmanifoldの上に住んでないよ．あれはデータを考えるための近似なんだ．deep learningで役に立つことのほぼ全部は、topologyなんて一切考えずに生まれてるんだ．deep learningは応用なんとかじゃない．あれは主にトライアルアンドエラーと、まあ理論（それはtopologyじゃなかったけど）からの少しの直感で進化した経験的な分野だよ．" userName="umutisik" createdAt="2025/05/20 14:12:35" color="">}}




{{<matomeQuote body="これには心底同意できないね．確かにトライアルアンドエラーは多いけど、それはtopology, geometry, game theory, calculus, statisticsを含む多くの数学分野からの理論の集合体だよ．まさにその基盤（つまりback-propagation）は、重みに適用されたchain ruleにすぎない．違いは、deep learningがこんなにアクセスしやすく（そして儲かる）分野になったせいで、多くの実務家がその形式論の起源を学ぶ贅沢（？）を手に入れたことだ．結局、他の分野ではずっと前からあった理論やテクニックを、知らないまま利用したり”再発明”したりしてるんだ．" userName="sota_pop" createdAt="2025/05/20 14:23:45" color="#ff33a1">}}




{{<matomeQuote body="他の分野からの理論やテクニックが再発明された例を挙げてくれる？ 具体的な例にはすごく興味があるな．そういう”再発明”って科学ではけっこうよくあるから、ある程度は予想してたけどね．" userName="kwertzzz" createdAt="2025/05/20 14:53:05" color="">}}




{{<matomeQuote body="自称実務家の間でよく見られる、この理論に対する傲慢な反感を理解できないな．<br>既存の理論が不十分だとしても、機能する理論があった方が得じゃない？<br>それとも、当てずっぽうと退屈な作業の組み合わせが、仕事の安定につながるのか？" userName="thuuuomas" createdAt="2025/05/20 14:21:03" color="">}}




{{<matomeQuote body="”データは実際にはmanifoldの上に住んでない．”<br>しばしば、そうなんだよ（そしてそれらは”sheaves”と呼ばれる）．" userName="Koshkin" createdAt="2025/05/20 14:32:10" color="">}}




{{<matomeQuote body="あれは錬金術だよ．<br>現在の形のdeep learningは、仮説上の基礎理論に対して、錬金術が化学に対してそうであるような関係さ．<br>数百年後、俺たちの後の文明のInuktitutを話す高校生は、この奇妙な”deep learning”という言葉が、昔の共通語の残骸だったって学ぶことになるだろうね．" userName="niemandhier" createdAt="2025/05/20 14:29:42" color="">}}




{{<matomeQuote body="Bethe ansatzが一つだね．loopy belief propagationが、Free Energyに対するBetheの近似の定常点を計算してるって認識するのに、Yedidiaによる離れ業が必要だった．<br>統計熱力学の多くのアイデアがMLで再発明されてる．<br>mirror descentもそうだ．Warmuthとその学生たちが、Bregman divergence近傍最小化として、あるいは特殊なケースではexponential gradient algorithmsとして独自に発見した．<br>他にも続けられるけどね．" userName="srean" createdAt="2025/05/20 15:02:48" color="#45d325">}}




{{<matomeQuote body="多くの種類のデータはそうじゃないよ．整数空間みたいに連結してない空間はmanifoldの上に載らない（それらはlatticesだよ）．とがったノイズだらけの断片的なデータは（滑らかな）manifoldの上に載らない．<br>実際、全てのMLモデルがデータをmanifoldとみなすわけじゃない．Nearest neighbors, decision treesはmanifold仮定を必要としないし、実際それがない方がうまくいく．" userName="wenc" createdAt="2025/05/20 15:29:29" color="#ff33a1">}}




{{<matomeQuote body="deep learning10年以上やってるけどさ、この記事けっこう間違ってると思うよ。データがmanifold上にあるってのは明らかだし、deep learningへの応用もChris Olahのブログとか見ればわかるじゃん。embedding spacesを’spaces’って呼ぶのには理由があるんだよ。GANsとかVAEsとかcontrastive lossesとかって、データ作るために歩き回れるvector manifoldsを作る話なんだから。" userName="theahura" createdAt="2025/05/20 15:07:36" color="#ff5c5c">}}




{{<matomeQuote body="deep learningが何か方法を思いついた後に、他の分野の研究者が「あれ、これうちの分野の何十年前の方法に似てるじゃん？」って気づく「後付け」な気がするな。例えばさ、この記事の著者がGPTのこと、自分がphysicsで前に解いた計算問題と同じだって発見してる例があるしね。" userName="behnamoh" createdAt="2025/05/20 14:22:01" color="">}}




{{<matomeQuote body="いやいや、今のほとんどのアプローチはpartition functionの近似みたいなもんだよ。" userName="adamnemecek" createdAt="2025/05/20 14:58:05" color="">}}




{{<matomeQuote body="deep learningがstat-mechとかthermodynamicsと繋がってるのって、マジで面白いよね。stat-mechのprobability distributionsってどこから来るんだろうって考えちゃったよ。physicalなrandomnessって（quantum mechanics以外は）ほとんどfictionでしょ？probability theoryも便利なfictionだとして、客観的に見てstat-mechのprobabilitiesってどこから？結局、（generalized）Boltzmann distributionがprobability theoryとthermodynamicsの橋渡し役で、非確率的なphysicsから役に立つprobabilitiesを発明させてくれるみたい。" userName="ogogmad" createdAt="2025/05/20 15:11:41" color="#45d325">}}




{{<matomeQuote body="Boltzmannのstat-mechだと、equilibriumの時にmacro-stateと合うmicro-statesは全部同じprobabilityでいるってassumptionから来てんだよね。thermal agitationがprime mover。circularになっちゃうなら、equilibriumをtemporal termsで定義する手もあるよ。macro-statesがchanging with timeじゃない時ってね。" userName="srean" createdAt="2025/05/20 15:21:09" color="#ff33a1">}}




{{<matomeQuote body="MLがなんでこんなにうまくいくか、ちゃんとしたexplanationがないから、みんな自分の得意分野から勝手な「俺理論」（head-canon）を inventしちゃうんだよね。すごく頭のいいindividualsでもこういうの見かけるよ。「If you only have a hammer...」ってやつ？" userName="Regic" createdAt="2025/05/20 15:49:23" color="">}}




{{<matomeQuote body="deep learningがalchemyみたいなもんなのはさ、こういう「deep theories」にpredictive abilityがないからなんだよ。Essentially all practical modelsはtrial and errorで見つけられて、後から”explained”されてるだけ。diffusion modelsとかもそう。theoryはpracticeでやってることと合わないし、many random approachesでもkind of workしちゃうんだから、it’s not a good theoryってこと。In most other fieldsならこんなの論文にならないよ。" userName="fmap" createdAt="2025/05/20 16:17:05" color="#38d3d3">}}




{{<matomeQuote body="もしdataにぴったりのhyperparametersを教えてくれたり、dramaticallyにlearningをimproveする新しいregularizationとか、directly usefulなtheoriesがあるなら、deep learning practitionersはlove itだよ。As it currently stands, such theories don’t really exist。" userName="canjobear" createdAt="2025/05/20 15:08:47" color="">}}




{{<matomeQuote body="ちょっと、ad hominems（人身攻撃）はやめようよ。OP（Original Poster）は、すっごくimmatureなfieldのことをaccurateなdescriptionしてるだけだと思うけど？" userName="hiddencost" createdAt="2025/05/20 14:23:54" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
