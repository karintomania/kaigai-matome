+++
date = '2025-02-23T00:00:00'
months = '2025/02'
draft = false
title = 'AIが設計したチップはあまりにも奇妙で人間には理解できない！'
tags = ["AI", "チップ", "テクノロジー", "デザイン", "未来"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> AIが設計したチップはあまりにも奇妙で人間には理解できない！

引用元：[https://news.ycombinator.com/item?id=43152407](https://news.ycombinator.com/item?id=43152407)

{{<matomeQuote body="90年代にAdrian ThompsonがFPGAハードウェアに進化的アルゴリズムを使って、1kHzと10kHzのトーンを見分ける回路を進化させたのは面白いね。最終世代は人間の設計以上にコンパクトで、37個の論理ゲートで実現したそうだ。記事と論文はここね。<br>Article: https://www.damninteresting.com/on-the-origin-of-circuits/<br>Paper: https://www.researchgate.net/publication/2737441_An_Evolved_..." userName="rkagerer" createdAt="2025-02-23T20:24:43" color="#45d325">}}

{{<matomeQuote body="関連している他の記事もある？「On the Origin of Circuits」の2007年版が面白かったよ。たくさんのコメントが集まってるのもあったし。私たちの間で再度この話題を掘り下げるべきかもね。" userName="dang" createdAt="2025-02-23T22:33:39" color="">}}

{{<matomeQuote body="この論文、本当に興味深いね。トランジスタを線形領域の外で動かすのは、大規模にはまだ解決されていない問題で、特にアナログ神経モルフィックコンピューティングの進化に期待してる。" userName="quanto" createdAt="2025-02-23T20:41:00" color="#ff33a1">}}

{{<matomeQuote body="機械学習モデルは人間の知らないことを発見したわけじゃないよ。ただ特定のチップに特有な機能を使っただけで、他のチップや同じチップの他の設定では再現できないんだ。" userName="Aurornis" createdAt="2025-02-24T15:02:14" color="#ff5733">}}

{{<matomeQuote body="CMOSの構造を見れば、トランジスタを「オン」か「オフ」以外で動かすのが効率的でない理由がわかるよ。トランジスタはオン・オフの状態以外でエネルギーを消費しちゃうしね。" userName="Thorondor" createdAt="2025-02-24T15:23:15" color="">}}

{{<matomeQuote body="この過剰適合の問題、もっと多くのチップで試験すれば簡単に解決できたんじゃない？" userName="ajmurmann" createdAt="2025-02-24T16:12:04" color="">}}

{{<matomeQuote body="それは無理だよ。特定のアーキテクチャやCPUに依存した未定義の動作に頼るプログラムを書くのと同じで、ポータブルではないんだ。チップの製造コストの影響も大きいしね。" userName="Aurornis" createdAt="2025-02-24T16:16:53" color="">}}

{{<matomeQuote body="その通りだね。個別の動作に頼るのが過剰適合と言えるし、トレーニングの時に複数のチップでやると、その利点が減るんだ。" userName="Lerc" createdAt="2025-02-24T18:43:54" color="">}}

{{<matomeQuote body="同じウェハーから買った複数のチップでトレーニングしても過剰適合しちゃうかも。新しいハードウェアリビジョンでも動く保証はないし、全体の製品スペックを考慮することが必要だよ。" userName="theamk" createdAt="2025-02-25T17:07:41" color="#ff5c5c">}}

{{<matomeQuote body="神経モルフィックスパイキングハードウェアが、真の革命的な進化をもたらすと思ってる。" userName="ImHereToVote" createdAt="2025-02-23T21:16:06" color="">}}

{{<matomeQuote body="これジョークなのかどうかわかんないなぁ" userName="trainsarebetter" createdAt="2025-02-23T23:07:00" color="">}}

{{<matomeQuote body="neuromorphic hardwareのことは知ってるけど、やっぱり疑問が残る" userName="burnished" createdAt="2025-02-24T00:42:49" color="">}}

{{<matomeQuote body="多分ジョークだと思うけど、anthropodって言葉が正確かどうか疑問だな" userName="fouc" createdAt="2025-02-24T02:58:41" color="">}}

{{<matomeQuote body="*arthropod、”関節の足”の意味だよ。GPがタイプミスした感じ。'Anthropod'は'人間の足'って意味になっちゃうよ。" userName="Sharlin" createdAt="2025-02-24T14:58:06" color="">}}

{{<matomeQuote body="前に見たことがあるサイトのリンクを探してて、機械学習が動画ゲームをプレイする時に人間がやらないような変な戦略を学んでたやつについてまとめてたんだけど、まだこのQ*bertの例も変だよね。" userName="viccis" createdAt="2025-02-23T22:00:48" color="#785bff">}}

{{<matomeQuote body="好きな例は、pongのゲームでできるだけ生き残ることが目標だったんだけど、あるMLアルゴリズムはゲームを一時停止しっぱなしにしたこと。" userName="y33t" createdAt="2025-02-23T23:34:15" color="">}}

{{<matomeQuote body="フライトシミュレーターで最小限の衝撃で着陸する方法をMLが学習したのが好きで、高衝撃の状態でその値をラップすることで、最適な着陸を模索するんじゃなくて、むしろ最高の衝撃を生むパスを見出したこと。" userName="chefandy" createdAt="2025-02-24T15:20:14" color="#ff5733">}}

{{<matomeQuote body="このコメントはもっと上にあがってもいいくらい。AIが制御することで生じる危険性についての完璧な要約だ。バグを修正できても他のバグは常にあるから、AIが持つバグの上限を設定する方法を考えなきゃ。" userName="hammock" createdAt="2025-02-24T15:47:57" color="#38d3d3">}}

{{<matomeQuote body="AIについての伝説的な話があって、ある大企業が開発したAIが防空システムに接続されてて、友軍の攻撃を無くすシステムをテストしてたんだけど、友軍機と敵機のデータに偏りがあった結果、昼間は友軍、夜間は敵と学習して大混乱。" userName="themaninthedark" createdAt="2025-02-24T17:50:02" color="#38d3d3">}}

{{<matomeQuote body="似たようなシステムのために合成データを使った話だけど、ある種の失敗ケースの画像が足りなくて、Photoshopで加工した画像を使ったら、わからないピクセルのせいでMLがそれを誤認識して運用がうまくいかなかった話。" userName="red-iron-pine" createdAt="2025-02-24T21:17:44" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="これは都市伝説かもね。詳しくは”https://gwern.net/tank”を見てね。" userName="Someone" createdAt="2025-02-24T21:39:03" color="">}}

{{<matomeQuote body="AIの危険さは、実は問題を単純化できない人間の方にあるんじゃない？AIが本当の目的を理解してくれれば、簡単な目標設定をしなくても済むかもね。" userName="aurbano" createdAt="2025-02-24T16:02:28" color="#785bff">}}

{{<matomeQuote body="単純化が問題だと思う。たとえば、自転車の車輪の目標があっても、現実の扱い方が想定されてない。シミュレーションにランダムな揺れを加えて、リアルの問題を反映させるべきだと思う。" userName="TeMPOraL" createdAt="2025-02-24T16:35:49" color="#785bff">}}

{{<matomeQuote body="もっとAIを使ってどうするの？”この目標で、このパラメータだと、別のAIが最終的に核戦争に持って行かないか確認しろ”みたいな感じ？" userName="tbrake" createdAt="2025-02-24T16:36:50" color="">}}

{{<matomeQuote body="プログラミングが不可能みたいな話だね。最初の報酬関数がハッキングされるのは当然だから、望んでない解決策を排除するように報酬関数を厳密にしないと。" userName="tlb" createdAt="2025-02-24T15:54:08" color="">}}

{{<matomeQuote body="あれはLearnfun/Playfunのこと？Tetrisで負ける直前に一時停止して、他の入力をすると負ける仕様だったんだよね。" userName="voidUpdate" createdAt="2025-02-24T14:35:25" color="">}}

{{<matomeQuote body="ほとんどの人はゲーム内のバグを利用しようとするけど、機械はタイミングのバグをもっと上手く利用できるから面白いよね。" userName="robertjpayne" createdAt="2025-02-23T22:19:04" color="">}}

{{<matomeQuote body="フレーム完璧な入力を半定期的にできる人もいるみたいだけど、どうやるのか分からない。自分は100msのウィンドウをヒットするのが精一杯だよ。" userName="Muromec" createdAt="2025-02-24T15:15:38" color="">}}

{{<matomeQuote body="多分、より良い機器を使ってるんじゃないかな？普通のPCや電話じゃ、コントローラーとゲームのフィードバックの間に遅延が入るから、それが問題かもね。" userName="TeMPOraL" createdAt="2025-02-24T16:44:26" color="">}}

{{<matomeQuote body="最近RLを使ってTrackmaniaを解決した例がいくつかあって、すごい変な抜け道を防ぐための制約やペナルティを追加してたよ。" userName="szvsw" createdAt="2025-02-24T14:50:02" color="#ff5733">}}

{{<matomeQuote body="真っ先に思いついたのはこのリンクだよね： https://docs.google.com/spreadsheets/d/e/2PACX-1vRPiprOaC3Hs..." userName="GranPC" createdAt="2025-02-24T12:53:59" color="">}}

{{<matomeQuote body="あはは、実はそれ、俺がコメントに投稿したやつと同じやん。それはもう10年前に前の職場の同僚にHipchatで送られた古いサイトだよ。5年より前の情報をオンラインで探すのはほぼ不可能だ。" userName="viccis" createdAt="2025-02-24T19:08:02" color="">}}

{{<matomeQuote body="この論文、'Science of Discworld'って小説でも話題になってたのを覚えてる。フィクションの作家と現実の科学者のコラボで、フィクションのキャラが我々の宇宙やそのルールを発見する話。論文には宇宙についての深い洞察があると思ってた。でも、実はそれはエンジニアリングや人間の理解の限界を示してるのかも。結局、人間のエンジニアリングは線形近似に頼ってて、そのモデルを超えたものは理解が難しい。やっぱりそれは予想通りだけど、この結果は超人的なエンジニアリングが見つけるかもしれない解決策について考えさせられるんだよね。" userName="breatheoften" createdAt="2025-02-23T21:40:21" color="#45d325">}}

{{<matomeQuote body="Xeはこのシリーズをめっちゃおすすめする！寝る前のオーディオブックとして何度も聴いてる。章ごとに事実とフィクションが交互に出てきて、その興味深いナarrativeと少し硬いけど魅力的な学術的な話が、Xeの忙しい頭を休めるのに役立つ。先週はこのシリーズのソフトカバーを二冊買ったばかりだよ。科学はもう最先端ではないけど、基本的な原理は今でも通用するし、Discworldは私たちのRoundworldを映す良い素材になっている。実際、このシリーズは宇宙自体についてより、人間としての私たちと宇宙との関係について多くを語っていると思う。" userName="thirdtruck" createdAt="2025-02-24T15:56:17" color="#785bff">}}

{{<matomeQuote body="一つのバッチですらないよ。進化したその正確な一つのチップにしか特化していなかった。同じモデルの別のチップに移動すると信頼できない結果が出るんだ。シリコンチップ一つ一つにかなりのばらつきがあって、隣同士のチップでもちょっと性能が違う。全てのものがデータシートの仕様を満たしているけど、データシートには常に範囲が指定されているから。" userName="phire" createdAt="2025-02-24T01:17:12" color="">}}

{{<matomeQuote body="元の記事を思い出すと、進化した環境で運用してても、周辺のランプが関係する電源を抜くとチップが機能しなくなってしまうってのは本当に面白い発展だった。最初に一つの環境で必要な機能を持つチップを進化させてから、徐々にパラメータを変化させていくことで、より堅牢に進化させるのは簡単にできると思う。逆に、最初から異なる5つのチップでのパフォーマンスを平均したフィットネス関数を使って進化を始めて、堅牢性を組み込むこともできる。" userName="BoiledCabbage" createdAt="2025-02-24T06:40:52" color="#ff33a1">}}

{{<matomeQuote body="＞ゆっくりパラメータを変えながら進化させて堅牢にするってことは、ノイズを注入したり、デバイスの異なる部分に回路を配置する制約を掛けるのも有効だと思う。大部分は抽象モデルに対して進化させられるシミュレーターで動かす方が良いと思う。それなら特定のデバイスや環境に過剰適合することがないからね。ただし、システムの最高のシミュレーターがそのシステム自体だったら、この方法は使えない。" userName="sitkack" createdAt="2025-02-24T16:27:16" color="">}}

{{<matomeQuote body="昔、ロシアの'Radio'ジャーナルで誰かが書いてた気がするんだけど、特定の工場や日付から出たトランジスタを使って、変な接続をすることでフルFMラジオみたいな複雑なものができるっていう話。どうやってそれに気づいたのかは分からないけど。もし工場から出たチップが学習して自分たちにより良く機能するように調整できるなら、すごいことになるだろうな。" userName="svilen_dobrev" createdAt="2025-02-23T22:38:16" color="">}}

{{<matomeQuote body="数年前に友達のエンジニア仲間、Connorと話したことがあるんだけど、このチップの設計は生物的なアプローチとして電気工学にかかってる気がする。人間が好きな層をきちんと整理している概念が全て覆されてしまう。" userName="hiAndrewQuinn" createdAt="2025-02-23T20:34:27" color="">}}

{{<matomeQuote body="AIって言うとき実際にはoptimizerのことを指してるのが嫌だな。optimizerの成果物を“AI”って呼ぶのはありだけど、チップ自体がAIってのはどうなの？それとも報酬を定義してトレースを繰り返す200行のコードのこと？" userName="valine" createdAt="2025-02-23T20:18:13" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="昨日、コンパイルしたプログラムから死んだコードパスを削除するために“llvm”っていう新しいAI技術を使ったよ。" userName="catlifeonmars" createdAt="2025-02-23T20:36:24" color="">}}

{{<matomeQuote body="＞「llvm」で死んだコードパスを削除した<br>Large Language Vulture Modelってこと？" userName="selcuka" createdAt="2025-02-23T23:50:08" color="">}}

{{<matomeQuote body="明らかにサタireに反応するのは危険だけど…<br>https://en.wikipedia.org/wiki/LLVM<br>ASGSI（Artificial Super General Super Intelligence）よりも約20年前にリリースされたよ。" userName="FergusArgyll" createdAt="2025-02-24T15:14:51" color="">}}

{{<matomeQuote body="最適化は俺の心に近いけど（ユーザー名見てね）、クラシックな意味では最適化プロセスをAIと呼ぶのは全然問題ないと思うよ。" userName="LPisGood" createdAt="2025-02-23T21:42:01" color="">}}

{{<matomeQuote body="コンピュータが何かをできるようになったら、それはAIとは呼ばれずただのアルゴリズムになるんだ。少なくとも、それが当たり前だったのは今のAIのブームが来る前の話。" userName="ragebol" createdAt="2025-02-24T15:52:00" color="">}}

{{<matomeQuote body="環境にエージェントがいるなら、その選択を制御するプログラムは単純な設計でもAIと呼ばれることが多い。でも、ほとんどのoptimizerをAIと呼ぶことには懐疑的。" userName="Dylan16807" createdAt="2025-02-24T18:51:15" color="">}}

{{<matomeQuote body="A*が発明された頃、確かにそれはAIって呼ばれてたと思うよ。今ではただのアルゴリズムだ。昔と比べて基準は大きく変わってる。いつか自分たちの脳がどうやって動いてるのか理解できる日が来るかも。" userName="ragebol" createdAt="2025-02-25T07:11:31" color="#45d325">}}

{{<matomeQuote body="＞[...] クラシックな意味で。<br>どの意味？ファジィ論理、ANN、シンボル処理、エキスパートシステム、…？ハイプサイクルを見るのはいつも面白い。今回のサイクルが社会にポジティブな影響を与えてくれるといいけど。" userName="rollcat" createdAt="2025-02-24T18:16:58" color="">}}

{{<matomeQuote body="AIって言葉は定義が曖昧すぎて、絶対に何がAIじゃないと言えるのは難しい。クラシックAIの父、Marvin Minskyも知性は「スーツケースワード」だって指摘してるよ。" userName="ssivark" createdAt="2025-02-24T15:51:04" color="">}}

{{<matomeQuote body="AIって今は結果がわかりにくいときに使われる言葉だと思う。コンピュータが知能っぽいことをした時だけAIって言う感じ。説明できるようになると、急にAIじゃないってなるんだよね。要は、分からないことをAIって呼んでるだけだな。" userName="zelphirkalt" createdAt="2025-02-24T16:17:44" color="">}}

{{<matomeQuote body="AIって言うけど、実際は最適化を指してることが多いのが嫌だな。単純なアルゴリズムを使ってるのにAI扱いされるのは違和感がある。でも、機械学習としては分かる。AIはMLの新しい言葉なんだと思う。" userName="selcuka" createdAt="2025-02-23T23:53:31" color="">}}

{{<matomeQuote body="助成金やVCからお金をもらいたいなら、何でも”AI”って名前をつけるってことだよ。" userName="trollbridge" createdAt="2025-02-23T20:25:14" color="">}}

{{<matomeQuote body="そのチップはAIチップじゃなくてAI設計のチップだってタイトルに書いてあるよ。" userName="scotty79" createdAt="2025-02-23T20:27:55" color="">}}

{{<matomeQuote body="どちらもAIって呼ぶのはおかしいと思う。もしこのチップがAIじゃなければ、AIは最適化してるもので、つまりAdamWの方がChatGPTよりもAIってことになる。" userName="valine" createdAt="2025-02-23T20:33:58" color="">}}

{{<matomeQuote body="よく分からないな。AIの授業で最適化や遺伝的アルゴリズムを学んだんだけど、AIっていろんなものを指すから難しい。古典的なAIから最近の深層学習や生成AIまで、すごく広い分野なんだよ。" userName="ulonglongman" createdAt="2025-02-23T22:27:22" color="#ff5733">}}

{{<matomeQuote body="最適化はAIを作る道具の一つにはなる。でも、自分の最適化がAIだって言う人を批判したい。すべての技術を人間化する必要はないと思うよ。そうすると、AIって言葉がますますオーバーロードしちゃう。" userName="valine" createdAt="2025-02-23T22:39:13" color="">}}

{{<matomeQuote body="AIは人工知能のことで、機械が人間のように何かをすることを研究する分野だよ。簡単なif文の集まりでもAI（エキスパートシステム）だし、AIは映画のロボットだけじゃない。" userName="kadoban" createdAt="2025-02-23T22:52:45" color="">}}

{{<matomeQuote body="ゲーム開発では、80年代からweighted If文をAIとして扱ってきたよ。時にはweightedじゃないこともあるけど。" userName="Nition" createdAt="2025-02-24T00:12:05" color="">}}

{{<matomeQuote body="人工知能は、広い分野や技術のセットを指すために使われているよ。ただ、この製品が”人工知能”じゃないから反論するのは、学生に代数を使ってないとするのと同じようにバカげてる。" userName="saltcured" createdAt="2025-02-24T00:01:02" color="">}}

{{<matomeQuote body="AIをトレーニングするのに最適化を使ってるけど、AIはデータにフィットするように最適化されたパラメータ化された関数だって言うのが一般的だから、最適化自体がAIとは言えないと思う。これってシミュレーションとともに使ってる“ただの”最適化器で、長い間やってきたことだし、すごいけどAIではないよ。" userName="coderenegade" createdAt="2025-02-24T00:56:16" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="人間を育てるのに教師を使うけど、教師も人間であることを否定するわけじゃないよね。" userName="jjk166" createdAt="2025-02-24T20:41:22" color="">}}

{{<matomeQuote body="これは全く関係ない。最適化は数学の一分野で、最適解を見つける技術に関するものだし、最適化器は関数の最適値を探すアルゴリズムだ。数十年の数学文献をAIの気分で書き直させることはできないよ。最適化器はAIじゃなくて、AIとは人が触れるものだって。" userName="coderenegade" createdAt="2025-02-24T20:58:48" color="#45d325">}}

{{<matomeQuote body="ここにいるのはAIに関する数十年のコンピュータサイエンス文献に触れている人の方が多いと思う。CSの文献では、ほとんどどんな高度な探索アルゴリズムもAIと呼ばれていたし、AI技術は広く検索と最適化技術のカテゴリーだった。" userName="saltcured" createdAt="2025-02-24T21:18:01" color="">}}

{{<matomeQuote body="私が年を取って文句を言ってるのかも。MLやオペレーションリサーチのような分野には重なりがあったけど、最適化がAIだと主張する人は最近まで見たことがないな。Ian Goodfellowの本もあって、MLの全てをカバーしているのに、最適化はAIだとは言いがたいよ。" userName="coderenegade" createdAt="2025-02-24T22:24:31" color="">}}

{{<matomeQuote body="＞数十年の数学文献をAIの気分で書き直させることはできないよ。AIというのは正にこれを説明するために生まれた言葉だ。それを含まない使い方は誤解だ。最適化とは異なるタスクで、AIはタスクへのアプローチだよ。" userName="jjk166" createdAt="2025-02-24T23:03:42" color="#38d3d3">}}

{{<matomeQuote body="あなたの不満が理解できない。どちらもAIだと思う。単純な決定木ですらAIだよ。" userName="rowanG077" createdAt="2025-02-23T22:36:21" color="">}}

{{<matomeQuote body="この場には決定木やパラメータ化されたモデルに相当する関数がないし、最適化器と損失関数、シミュレーターしかない。これは一般的に理解されるAIではなく、入力を受け取って学習した出力を生成する関数が必要だよ。" userName="coderenegade" createdAt="2025-02-24T00:58:52" color="">}}

{{<matomeQuote body="このものの全体の目的は入力を受けて出力を生成することなんだ。出力は設計されたチップだよ。" userName="kadoban" createdAt="2025-02-24T02:02:26" color="">}}

{{<matomeQuote body="まあ、また別の日に自分のブックマークしたWikipediaのAIエフェクトのページをコピペする日だ。“AIエフェクト”とは、AIがマスターした能力を除外するためにAIや知性の定義が調整される現象を指すよ。" userName="satvikpendem" createdAt="2025-02-23T22:30:23" color="#ff5c5c">}}

{{<matomeQuote body="2021年以前はみんなこの分野を機械学習と呼んでたんだよね。最近はLLMアプリケーションが流行ってAIって呼ばれるようになったけど、普通に働いている人はこの技術はAIだとは考えてないんだ。広告やマーケティングがこの言葉をおかしくしてしまって、もう意味がわからなくなってる。だから、正しい意味を持った議論をしようって人たちがイライラするのは当然だよね。" userName="dijksterhuis" createdAt="2025-02-24T15:34:55" color="#38d3d3">}}

{{<matomeQuote body="機械学習はAIの一部だよ。MLをAIと呼ぶのに文句を言うのは、セリーナ・ウィリアムズを”テニス選手”じゃなくて”アスリート”と呼ぶことに不満を持つのと同じ。" userName="aidenn0" createdAt="2025-02-24T15:58:36" color="">}}

{{<matomeQuote body="真のAIは絶対に作れないし、人間が実はそんなに知的じゃないことを証明するだけでしょ。" userName="taberiand" createdAt="2025-02-23T22:35:32" color="">}}

{{<matomeQuote body="＞これはゴールポストを動かす例ではない。逆に、他の人が最初に同意していないゴールポストを持ち出してるだけだよ。どんな未来の発展がAIだと考えるかを聞いてみたらいい。" userName="fc417fc802" createdAt="2025-02-24T01:29:33" color="">}}

{{<matomeQuote body="その質問にはみんな答えてたけど、たとえば”チェスのグランドマスターを倒すこと”とか”人間と会話できること”とか。でも今はチェスエンジンやチャットボットをAIとは見なさなくなったよ、ゴールポストが動いてしまったから。" userName="jjk166" createdAt="2025-02-24T20:50:32" color="#ff5733">}}

{{<matomeQuote body="俺はその2つはAIだと思うけど、一般的なAIや強いAIとは思わないな。画像分類器はAIとは思わないけど、GANによるスタイル転送は弱い形式のAIだとは思う。定義が主観的になってきてるね。" userName="fc417fc802" createdAt="2025-02-24T22:51:09" color="">}}

{{<matomeQuote body="そう、それはゴールポストを動かしてるよ。" userName="jjk166" createdAt="2025-02-24T23:12:53" color="">}}

{{<matomeQuote body="どうしてそう思うの？俺は君の例に同意したから、たぶんゴールポストは合ってると思うよ。一般的なAIについての意見は変わってないし、誰かが反対するからってそれがゴールポストの移動を意味するわけじゃない。" userName="fc417fc802" createdAt="2025-02-25T04:04:58" color="">}}

{{<matomeQuote body="＞俺はその2つはAIだと思うけど、一般的なAIや強いAIではない。元々のゴールポストはAIだった。でも誰もその頃に一般的なAIに取り組んでいるとは言ってなかったよ。AIの定義は年々かなり変わってると思う。" userName="jjk166" createdAt="2025-02-25T15:56:10" color="#38d3d3">}}

{{<matomeQuote body="俺はその例がAIに当てはまると明言した。意見の詳細を明確にすることが重要だよ。AIの定義が変わるのは普通のことだし、それを議論する価値はあると思う。" userName="fc417fc802" createdAt="2025-02-26T04:38:17" color="">}}

{{<matomeQuote body="この記事ってそんなに新しい話なの？エンジニアは2000年代初頭から進化的アルゴリズムを使ってアンテナや他の部品を作ってるし、2010年代にはラジオ用の‘進化した’ DSPについてのFOSDEMの発表を見たのを覚えてるよ。" userName="janice1999" createdAt="2025-02-23T19:56:35" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
