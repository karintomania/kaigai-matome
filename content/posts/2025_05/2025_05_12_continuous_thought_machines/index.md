+++
date = '2025-05-12T00:00:00'
months = '2025/05'
draft = false
title = 'Continuous Thought Machines 連続的に思考する機械とは何か'
tags = ["人工知能", "機械学習", "ニューラルネットワーク", "神経科学", "脳型コンピューティング"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> Continuous Thought Machines 連続的に思考する機械とは何か

引用元：[https://news.ycombinator.com/item?id=43959071](https://news.ycombinator.com/item?id=43959071)




{{<matomeQuote body="この論文、先行研究（生体的なSNNなど）を無視してるみたいで心配だね。特に「思考」って言葉の使い方が混乱招くよ。シナプス統合レベルのプロセスを「思考」って呼ぶなんて、MLやANNの常識と違いすぎる。パターン認識はわかるけど「思考」は言い過ぎ。両分野に詳しい者として、用語の選び方に疑問を感じるな。" userName="iandanforth" createdAt="2025/05/12 09:24:17" color="#ff5733">}}




{{<matomeQuote body="まあ、なんか驚かないな。この10年か20年、神経科学の関連研究を認めたML研究者はさ、生物の脳と比べやがって傲慢だとかって、大体非難されてきた印象なんだよね。" userName="TeMPOraL" createdAt="2025/05/12 19:16:35" color="">}}




{{<matomeQuote body="著者たちはね、単一のシナプス統合を「思考」なんて呼んでないよ。彼らは、外部入力があるたびに展開される、ネットワーク全体の内部ループ（「内部ティック」）のことをそう言ってるんだ。そして、それが単に「思考に似ている」って明言してるんだよ。" userName="tiahura" createdAt="2025/05/12 13:34:44" color="#ff5733">}}




{{<matomeQuote body="生体的に妥当なスパイクに関する研究について、君の意見で一番洞察に富む本とか論文のリスト（簡単なレビューでもいいから）を共有してくれないかな？" userName="cepera" createdAt="2025/05/12 13:13:41" color="">}}




{{<matomeQuote body="元の投稿者じゃないけど、いくつか挙げるね。<br>書籍なら Theoretical Neuroscience Computational and Mathematical Modeling of Neural Systems - Peter Dayan, L. F. Abbott (2001) と、Neuronal dynamics がおすすめ。論文だと Real-Time Computing Without Stable States (Maass)、Dynamics of Sparsely Connected Networks of Excitatory and Inhibitory Spiking Neurons (Nicolas Brunel)、あとはレビュー論文として Spiking Neural Networks and Their Applications もあるよ。関連キーワードは LIF、SNN、LSM、Synaptic plasticity とか。" userName="erewhile" createdAt="2025/05/12 13:49:59" color="#785bff">}}




{{<matomeQuote body="いくつか注目すべき論文リストだよ（全てじゃないけどね）：Maass 2002、Sussillo & Abbott 2009、Abbott et al 2016、Zenke & Ganguli 2018、Bellec et al 2020、Payeur et al 2021、Cimesa et al 2023、Ororbia 2024、Kudithipudi et al 2025 の論文を挙げてるよ。" userName="rkp8000" createdAt="2025/05/12 16:25:17" color="#ff33a1">}}




{{<matomeQuote body="ごめん、このコメントに返信すべきだったんだけど、親スレッドに別の返信を書いちゃったんだ。正直、あのpdf / paperは、一番緩い意味でしかスパイクする生物ネットワークを真似しようとしてないように感じたんだよ。主要な貢献は、出力の転置と出力のドット積を使ってることだけで、あとは入力に対するdiffusion / attentionに過ぎないと思うな。コンセプト的には、「入力attention」と「出力attention」を組み合わせた、一種の段階的な再帰モデルだね。" userName="program_whiz" createdAt="2025/05/12 21:19:12" color="#ff5c5c">}}




{{<matomeQuote body="同意だよ。何十年もあるスパイクニューラルネットや類似の研究にほとんど言及せずに、まるで新しいアイデアみたいに提示してるよね。" userName="mountainriver" createdAt="2025/05/12 18:27:34" color="">}}




{{<matomeQuote body="このトピックに焦点を当てるのは素晴らしいね。分野をまたいだ橋渡しが見られるのはクールだよ。生体では時間を直線的に捉えがちだけど、脳と体では、短い「今」の中に埋め込まれた順序づけられた操作が重要なんだ。時間性については、John BickleによるRW Williamsへのインタビュー記事（The European Journal of Neuroscience掲載）を参照してみて。https://pubmed.ncbi.nlm.nih.gov/40176364/" userName="robwwilliams" createdAt="2025/05/12 04:14:46" color="#ff5c5c">}}




{{<matomeQuote body="この週末に出たのってさー、Continuous thought machines（生物の脳みたいに時間的にエンコードするニューラルネットワーク）、Zero data reasoning（巨大データセットで訓練するんじゃなくて、自分でやって学ぶAI）、Intellect-2（世界中に分散された強化学習アーキテクチャ）だよなー。<br>俺専門家じゃないけど、これってちょっとシンギュラリティにウサギ跳びで近づいた気がするわー。" userName="davedx" createdAt="2025/05/12 09:19:43" color="">}}




{{<matomeQuote body="俺はそうは感じないなー。マジで論文とか研究分野、多すぎるって。<br>DiffusionとかTransformerとか AlphaZero とか Chat GPT-3 みたいに、どれが「キタ！」ってなるか予測すんの、めっちゃむずいって。<br>でも、こういうステップ関数みたいに見える研究とか製品の進歩も、めっちゃたくさんの研究と試行錯誤の上に成り立ってんだよ。<br>お前が挙げた３つ、なんか組み合わせられたりすんのかな？そうだといいけど、全然わかんねーわ。" userName="chrsw" createdAt="2025/05/12 13:47:19" color="">}}




{{<matomeQuote body="個別の論文にそんなにデカい顔させんなよ。<br>良くても、それってそこに至るまでの全ての努力無視してるだけだろ。<br>悪くても、なんかいいように見せて、わざと抜かしてること多い考えを、鵜呑みにして信じまくってるだけだからさー。" userName="dgfl" createdAt="2025/05/12 11:52:55" color="">}}




{{<matomeQuote body="でもさー、Zero Data reasoning って、以前の研究をちゃんと直接引用してるじゃん。<br>あれは特に結構な進歩だと思うけどなー。今の手法への主な批判の一つに、「人間はテラバイト級の Common Crawl 食べて学ぶわけじゃなくて、経験から学ぶんだよ」ってのがあるけど、まさにそこに対応してるし。" userName="davedx" createdAt="2025/05/12 12:52:29" color="#ff33a1">}}




{{<matomeQuote body="そりゃもちろん、マジで良いアイデアの論文もあるよ。<br>でも、なんかイマイチうまくいかないことも結構あるんだよねー。<br>俺の分野の Nature の論文でも、実際に応用するとなると全然ダメなの多いし。<br>今回挙げられてるのがそうだとか言ってるわけじゃないけど、研究ってやつにはちょっとは健全な懐疑心を持って接するのが大事だよ、マジで。" userName="dgfl" createdAt="2025/05/13 05:12:22" color="">}}




{{<matomeQuote body="俺も専門家じゃないけどさ、これってカメラとかアクチュエータとかバッテリーを発明したから、すぐロボットが世界征服すんぞーって言ってるようなもんだと思うんだよね。<br>要は、ウサギ跳びじゃなくて、赤ちゃんがやっと歩き出したくらいのステップだよ。" userName="spiderfarmer" createdAt="2025/05/12 09:47:44" color="">}}




{{<matomeQuote body="ある意味、そうなったとも言えるんじゃね？<br>世界中が人間みたいなロボットが荒野とか街中を勝手に歩き回ってるわけじゃないけどさー、世の中アクチュエータとかセンサーとかバッテリーで満載じゃん。<br>お前のコーヒーメーカーにもセンサーとアクチュエータ入ってるし。<br>車にもいっぱいだろ？タイヤとか、ミラーの角度とか、窓の高さとか、ドアノブの状態とかさ。<br>そういうロボット部品のほとんどって…もっとデカい工場ロボットが作ったもんだしね。<br>ある意味、支配されてるって言えるんじゃない？" userName="TeMPOraL" createdAt="2025/05/12 19:38:51" color="#38d3d3">}}




{{<matomeQuote body="そりゃロボットマスターレースへのたくさんの赤ちゃんのステップではあるけど、それが現実になるまでにはまだまだすっげー長い道のりだよ。<br>AGI（汎用人工知能）がいつかできるようになるって話と同じでね。" userName="spiderfarmer" createdAt="2025/05/13 17:06:13" color="">}}




{{<matomeQuote body="Intellect-2 も Zero data reasoning もさー、LLMs で動いてんじゃん（「Zero data reasoning」って名前マジで紛らわしいし、そんな画期的じゃないって）。<br>もし LLMs のヤベー進歩見たいなら、InceptionLabs が最近 Diffusion モデル使って推論を１６倍速くしたやつ見てみろって（https://www.inceptionlabs.ai/）。<br>時系列の強化学習アルゴリズムとか、推論モデルと比べたらマジでカスだよ。<br>AI 分野めっちゃ発展してるのに、ロボットとか自動運転はあんま進歩してないし。<br>この記事の手法はポテンシャルあるかもだけど、誰かもっと分かりやすく煮詰めて、用語変えないとダメだろ。せっかく頑張って書いてるけど、簡単には読めない記事だし。<br>あと、こういうモデルをちゃんと動かせるようになるには、まだ全然程遠いんだわ。<br>モデルがデカくなればなるほど、俺らが作った報酬関数の抜け穴見つけるのが上手くなるし。<br>これがマジでたくさんの分野で使える AI を邪魔してんだ。" userName="aDyslecticCrow" createdAt="2025/05/12 18:40:49" color="#ff5c5c">}}




{{<matomeQuote body="みんなの反論読んだから、ここでコメントしとくわ。<br>その批判はさ、特定の、そこそこ有名な論文とかプロジェクト自体が、いきなりAGIとかSI（シンギュラリティ）とかへの明確な進歩だ！っていう狭い見方をするなら、マジで全部正しいよ。<br>でもさ、これらの特定の論文を、もっと広い研究の方向性を示してる代理だと考えるなら、その批判は的外れなんだわ。<br>実際、他のコメントでも関連する先行研究リストとか出てたし。<br>つまり、この特定の論文とかあの特定の論文が「ホップ（飛躍）」なんじゃなくて、ウサギ全体が正しい方向向いてて、細かい「マイクロホップ（微小なステップ）」がたくさん起きてるってことなんだ。<br>その集まった動きの中で、どれを「ホップ」って呼ぶかってのは、細かいこと気にする奴らの問題じゃん？<br>その間にも、ウサギはちゃんと前に進んでるかもしれないんだぜ。" userName="aaroninsf" createdAt="2025/05/12 17:37:16" color="#785bff">}}




{{<matomeQuote body="でもさ、コード動かしたり製品使おうとすると、なんか足りなかったり、論文で言ってるほど性能出なかったりするんだよね。AI hypeに騙されないための個人的な対策としては、まず論文読んで具体的な主張とか結果、限界を確認すること。できるだけコードをダウンロードして動かしてみる。訓練データセット以外の入力とか実際の例でテストしてみるのがおすすめだよ。" userName="gessha" createdAt="2025/05/12 13:05:13" color="#45d325">}}




{{<matomeQuote body="このアイデア、完全に新しいわけじゃないんだよね。2002年にLiquid State Machines (LSM)って研究があって［1］、連続入力をスパイクNNで処理するやつ。Atariゲームにも使われたけど［2］、従来のNNに勝てないって結果。連続入力・出力で、脳の可塑性だけで動くNNとか、もっと研究進んでほしいな。自分で試したけど難しかった。たぶんまだ脳の仕組みが完全には分かってないんだと思う。［1］ doi.org／10.1162／089976602760407955<br>［2］ doi.org／10.3389／fnins.2019.00883" userName="erewhile" createdAt="2025/05/12 08:17:14" color="#ff5c5c">}}




{{<matomeQuote body="＞ Emulating these mechanisms... computationally efficiency.<br>ちゃんと時間を扱うシミュレーションって、今のハードウェアだとめっちゃ大変なんだよ。パラメータが増えちゃうし、計算効率も悪い。将来のスパイクを管理するのに優先度キューとか必要で、計算量が落ちちゃうんだよね。ハードリアルタイムが目標じゃないなら、この方向性を追う価値があるのか疑問。STDPは魅力的だけど、今のシリコン技術では難しそう。専用ハードウェアも資金尽きそう。" userName="bob1029" createdAt="2025/05/12 09:50:12" color="#ff33a1">}}




{{<matomeQuote body="うーん、FFNで100msかかる処理を、CTMが内部10ms × 10ステップでやるとして、CTMも同じくらい簡単に探索できない？ 結局、明示的に時間軸組み込むのが本当に価値ある誘導バイアスなのか？って話に行き着くだけじゃないかな。" userName="angusturner" createdAt="2025/05/12 12:25:53" color="#ff33a1">}}




{{<matomeQuote body="論文読んだけど、これ生物的なスパイクNNとは全然違うと感じたよ。入力履歴とattention使うのは改造版transformerみたい。同期も出力活性化の内積を取ってるだけ。最適化も勾配降下で、損失適用ステップを選んでるだけだし。これがスパイクNNの時間シミュレーションにどう似てるのか疑問。ニューロン同期も生物的な意味と違うし、アテンションの基本メカニズムに似てるよ。" userName="program_whiz" createdAt="2025/05/12 21:16:36" color="#ff5c5c">}}




{{<matomeQuote body="論文の弱点は、比較対象がLSTMだけで、Attention／Diffusionモデルと比較してないことかな。Attentionを使った再帰モデルの性能が気になるけど、たぶんCTMとすごく似た性能と構造になると思うよ。" userName="program_whiz" createdAt="2025/05/12 21:26:55" color="#38d3d3">}}




{{<matomeQuote body="＞ The Continuous Thought Machine (CTM)... its functionality.<br>これめっちゃワクワクする論文だね。内部的な視覚的再帰とか、神経同期のアイデアが面白い。時間が絡むタスクのNNを解釈しやすくしてくれそう。（神経同期の適用は新しいかも）。<br>＞ Indeed, we observe the emergence... more effective AI systems<br>まさにこれ！思考プロセスをもっと透明にしてくれる応用が、他のアーキテクチャでも見たいな。Sakanaからのまた良い論文だね。" userName="rvz" createdAt="2025/05/12 05:34:26" color="#ff5c5c">}}




{{<matomeQuote body="これって、以前のAI coderの不正疑惑で話題になったSakanaと同じとこ？あの時の基本的な間違いが、チームの信頼性を疑わせる原因になったんだけど。<br>https:／／www.hackster.io／news／sakana-ai-claims-its-ai-cuda-en...<br>https:／／techcrunch.com／2025／02／21／sakana-walks-back-claims-t..." userName="omneity" createdAt="2025/05/12 07:00:47" color="#ff5c5c">}}




{{<matomeQuote body="彼ら、間違い認めて謝罪したし、論文も改訂中だよ。<br>間違いは大小問わずいつでも起きるものだよ。もっと大事なのは、透明性を保って、そこから学んで、同じ間違いを二度と繰り返さないことじゃないかな。" userName="doall" createdAt="2025/05/12 08:04:46" color="">}}




{{<matomeQuote body="皮肉なことに、このウェブページ、僕のfirefox iOSだと連続的にリフレッシュされちゃうんだよねP" userName="ttoinou" createdAt="2025/05/12 04:56:06" color="">}}




{{<matomeQuote body="数学とアーキテクチャが融合したMLの図とか大好き。形式的な数学よりずっと退屈じゃないね。" userName="coolcase" createdAt="2025/05/12 05:59:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="すっげー面白そう。ブラウザで動くデモとモデルが、続きの研究に興味を持つきっかけとしてマジ最高だった。まだ途中だけど、アイデア自体に惹きつけられるよ。" userName="liamwire" createdAt="2025/05/12 08:15:49" color="">}}




{{<matomeQuote body="個人的には、次世代モデルの鍵は「一緒に発火するニューロンは結合する」ってことだと思う。SNNは刺激的な別のアプローチを提示してるよね。" userName="swalsh" createdAt="2025/05/12 11:31:39" color="#38d3d3">}}




{{<matomeQuote body="誰かこの記事をLLMアーキテクチャの文脈で説明してくれない？ これってLLMのディープラーニングと組み合わせられない感じ？ それともできるのかな？" userName="AIorNot" createdAt="2025/05/12 08:56:49" color="">}}




{{<matomeQuote body="この記事読むの超楽しみ！最近のLLMって商業向けで生物の脳みたいに本質的なAIじゃないと思うんだ。連続思考やメモリ、継続学習がなくて、トークン空間推論も限界あるし。<br>もっとこの記事みたいに変革的な研究が必要なのに少ないのが不思議。SNNとかneuromorphic computingは期待してるけど、あまり注目されないよね。" userName="dcrimp" createdAt="2025/05/12 07:37:42" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
