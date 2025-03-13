+++
date = '2025-02-24T00:00:00'
months = '2025/02'
draft = false
title = '確率微分計算入門！数学を使って新しい世界を探ろう'
tags = ["数学", "確率", "プログラミング", "シミュレーション", "AI"]
featureimage = 'thumbnails/purple3.jpg'
+++

> 確率微分計算入門！数学を使って新しい世界を探ろう

引用元：[https://news.ycombinator.com/item?id=43160779](https://news.ycombinator.com/item?id=43160779)

{{<matomeQuote body="高度な学部生や大学院生向けの数学知識がある人には、ここにある導入がかなり役立つよ。" userName="markisus" createdAt="2025-02-24T18:13:11" color="#ff5c5c">}}

{{<matomeQuote body="素晴らしいリソースだね。大学院でこの分野を勉強していたけど、素材としてはかなり難しい方だと思う。これらのトピックと高い重複があるインスピレーショナルな教科書があるよ。" userName="hrududuu" createdAt="2025-02-24T21:16:20" color="#45d325">}}

{{<matomeQuote body="もう少し簡単なリソースを誰か提案してくれないかな？それとも、前提知識のためのリソースだけでもいいんだけど。" userName="krick" createdAt="2025-02-25T05:54:16" color="">}}

{{<matomeQuote body="上のリンクは純粋な数学者が勉強するためのもので、核心的な学部科目をほとんど履修している必要がある。もし、数学の証明に自信があれば、この本が合うかもしれない。" userName="hrududu" createdAt="2025-02-25T07:08:14" color="">}}

{{<matomeQuote body="昔、良い教師がいなかったから流体力学の授業がトラウマになったよ。今はYouTubeのチュートリアルもあるけど。" userName="3abiton" createdAt="2025-02-24T23:06:54" color="">}}

{{<matomeQuote body="高度な学部生って、ほんとに超高校生みたいなやつもいるよね。大学院でも高卒が教授を訂正した話も聞いたことあるから、必ずしもPhDじゃないといけないわけじゃないよ。" userName="markisus" createdAt="2025-02-24T22:07:26" color="">}}

{{<matomeQuote body="確率微分学って、イベントの不確実性を計算機でシミュレーションしないといけないのか、それとももっと優雅な数学的手法があるのか？この素晴らしい記事で、初めて本当に「理解」できた気がする。" userName="Daniel_Van_Zant" createdAt="2025-02-24T16:06:50" color="#ff5c5c">}}

{{<matomeQuote body="あなたの質問が難しかったら、他の回答がわかりにくいかもね。簡単な分布の場合は、解析的な答えが得られることが多いけど、複雑な問題には数値的方法が必要だよ。" userName="sfpotter" createdAt="2025-02-24T19:13:01" color="">}}

{{<matomeQuote body="説明ありがとう、すごく助かったよ。新しい検索リストができた。特にquasipotentialやcommittor関数が興味深いなと思うけど、良いリソースが見つからないのがちょっと困ってる。" userName="Daniel_Van_Zant" createdAt="2025-02-24T22:25:47" color="">}}

{{<matomeQuote body="かなり難しいし、エソテリックだね。これに入るにはしっかりした大学院のバックグラウンドが必要か、真剣に学ぶ意欲がある人じゃないと厳しいと思う。" userName="sfpotter" createdAt="2025-02-25T00:06:00" color="">}}

{{<matomeQuote body="確かに何を計算したいかによるけど、一般的に確率密度関数は時刻tにおける確率微分方程式(SDE)に従ってるよ。これは物理学者にはFokker-Planck方程式、数学者にはKolmogorov前方方程式って呼ばれてる。一般には正確な解析解は取れないから、数値解が必要になる。ただし高次元の問題では数値解を求めるのが高くつくから、SDEを解いてモンテカルロサンプリングをした方が安上がりだよ。<br>編集：他の質問もあるけど、特定のランダム事象が起きた時の解も興味が持たれることがあるね。同様のことが言えるよ。" userName="kkylin" createdAt="2025-02-24T17:12:05" color="#ff5c5c">}}

{{<matomeQuote body="簡単な確率微分方程式は解析的に解けることもあるけど、例えば古典的なBlack Scholes方程式のように複雑になると通常は無理。確率過程の期待値を求めたくなることが多いけど、これは特定の決定論的偏微分方程式に従うことが示されていて、数値的に解くことができるよ。高次元や経路依存性の強い場合はモンテカルロシミュレーションを使うことが多いね。" userName="FabHK" createdAt="2025-02-24T17:06:06" color="#ff5c5c">}}

{{<matomeQuote body="しばらくこの手のことを勉強してなかったけど、確率的な化学反応シミュレーションをしてた時は、時には答えがある場合もあるし、無い場合もあると思う。例えばランダムウォークは正規分布になるから、優雅な解析解が得られると思うよ。ただ、しばしば解析解は無くて、単純な確率的化学動力学の場合はGillespieアルゴリズムみたいな確率アルゴリズムを使う必要があるね。" userName="LeonardoTolstoy" createdAt="2025-02-24T16:26:34" color="">}}

{{<matomeQuote body="正規分布に関しては、Black Scholesのようにオプション評価の解析解があると思う。ただ、なんで今この記事がHacker Newsで注目されてるのかは謎。これを本当に読む人がどれくらいいるのかって感じだし、そういうのが示されてるのかな。" userName="yoyoma1234" createdAt="2025-02-24T16:34:51" color="">}}

{{<matomeQuote body="これはHNの典型的な投稿だね。数学的な内容で、特に純粋なものだとポイントが高い感じがする。アップvotesも多くて、コメントはあまり無いのが逆に面白い。政治的な投稿とは全く違うのがいいね。" userName="PhilipRoman" createdAt="2025-02-24T16:46:20" color="">}}

{{<matomeQuote body="面白いコメントを増やすために、長く残るようにアップvoteするよ。知らないことを学ぶのは楽しいし、理解できなくてもそういう経験が好きなんだ。" userName="magicalhippo" createdAt="2025-02-24T17:21:33" color="#785bff">}}

{{<matomeQuote body="良いと思ったものにはアップvoteするようにしてる。読まない時でも、悪質な政治的投稿に反応するエネルギーを消費したくないから。いいものを促進するのは大事だと思う。" userName="nh23423fefe" createdAt="2025-02-24T16:56:24" color="">}}

{{<matomeQuote body="何を知りたいかによるけど、軌道を取得したいなら確率微分方程式をシミュレーションする必要がある。でも道統計が欲しいなら、Fokker-Planck方程式に取り組んでパス密度を得ることができる場合が多い。" userName="anvuong" createdAt="2025-02-24T17:27:01" color="">}}

{{<matomeQuote body="次のステップとしてLangevin Dynamicsがあって、ここではシステムが減衰した運動量を持ち、ノイズは運動量に挿入される。これは分子動力学シミュレーションやベイズMCMCサンプリングに使える。また、AIに関する多くの話では運動量の使用が省略されがちだけど、勾配降下法に使われていることも多いんだ。分子動力学との関連で混乱を招くかな。" userName="paulfharrison" createdAt="2025-02-24T21:12:00" color="#ff5733">}}

{{<matomeQuote body="Langevinの運動量アナログは欠陥Langevinとして知られていて、離散化法を最適化すれば通常のLangevinより早く収束する。AIアプリケーションの非凸性が問題を引き起こしてるかもね。サンプリングはもう大変だよ。" userName="zzazzdsa" createdAt="2025-02-24T22:15:18" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="確かに、stochastic calculusを勉強した記憶があるよ。標準偏差と分散の計算がちょっと違うって気づいたな。quadratic variationが分散の計算と違って、何か理由があるんだろうな、たぶんstochastic volatilityが原因かも。" userName="EGreg" createdAt="2025-02-24T16:58:49" color="">}}

{{<matomeQuote body="人口全体の分散は、sum i=1..N (x_i - mu)² / Nとして定義されてるけど、n個のiidサンプルから分散を推定する場合は、sum i=1..n (x_i - a)² / (n-1)になるんだ。ここでは、平均muをサンプル平均aにして、Nの代わりに(n-1)で割ってるんだよ。これはバイアスがない推定法だし、計算も確認しやすいよ。" userName="FabHK" createdAt="2025-02-24T17:18:57" color="#45d325">}}

{{<matomeQuote body="他の人の説明がしっかりしてるから、俺のを代わりに使ったり、他のが間違ってると思わないでほしいな。サンプル分散を考えると、サンプル平均sum(x_i)/nに依存してるよ。n個のサンプルのうち先にn-1個を知ってる場合、最後のx_nを決定できるから、n-1は「自由度」と理解できるかも。他のサンプルモーメントも同じように考えられると思う。これが間違ってたらすまん。" userName="SeaGully" createdAt="2025-02-24T17:36:14" color="">}}

{{<matomeQuote body="おすすめのstochastic calculusの資料は、Eugene Wongの『Stochastic Processes in Information and Dynamical Systems』McGraw-Hill、1971年だよ。" userName="graycat" createdAt="2025-02-24T19:53:25" color="">}}

{{<matomeQuote body="これありがとう！古いのにすごく分かりやすく書かれてるから、measure theoryの入門部分だけでも価値があったよ。" userName="paulfharrison" createdAt="2025-02-25T22:17:56" color="#ff33a1">}}

{{<matomeQuote body="最近遭遇した例を教えるね。0から1の間でランダムな数Aを引いて、同じくBを引く。もしA > Bなら、Bを再度引く（Aはそのまま）。このゲームで引かれる回数の平均は無限になるよ。たまにはAがすごく大きくて、Bをbeatするのに何百万回も引くことになるから。" userName="janalsncm" createdAt="2025-02-24T19:29:51" color="#ff33a1">}}

{{<matomeQuote body="計算を示してみるね。Aの値をpとした場合、Bを引くたびにB>Aになる確率は(1-p)。だから、BがA以下になるまでn回引く確率は、p^(n-1)(1-p)(幾何分布)だ。期待される引く回数は(1/p)だね。E[draws]=E[E[draws|A=p]]=∫_0^1 E[draws|A=p] dp=∫_0^1 (1/p) dpは無限大に発散する。計算してみたかっただけだよ。" userName="drdeca" createdAt="2025-02-24T20:16:05" color="#ff33a1">}}

{{<matomeQuote body="興味がある人には、これはhttps://en.wikipedia.org/wiki/St._Petersburg_paradoxの一例だと思うよ。" userName="joncrocks" createdAt="2025-02-25T13:09:19" color="">}}

{{<matomeQuote body="質問のフレーミングが曖昧で、“再度引く”がBだけに当てはまるのか、Aも再度引くのか分からなかったよ。「無限」の答えが前者に当てはまると仮定してるんだけど。" userName="RandomBK" createdAt="2025-02-24T19:50:35" color="">}}

{{<matomeQuote body="ごめん、Bだけを再度引く。" userName="janalsncm" createdAt="2025-02-24T20:08:16" color="">}}

{{<matomeQuote body="これって本当に確率微分方程式を使わないと証明できないの？標準的な積分で、固定されたAの期待サンプル数が1/(1-A)になるって証明できるはずだと思うけど。" userName="zzazzdsa" createdAt="2025-02-24T19:48:51" color="">}}

{{<matomeQuote body="質問なんだけど、マウスのゲノムにある50カ所のDNAの違いが死亡率に影響するって定義したんだ。でも、ほとんどが年齢依存の複雑な影響。これを使って死亡年齢を予測するのに確率微分方程式は有用なアプローチになるかな？" userName="robwwilliams" createdAt="2025-02-24T17:49:17" color="">}}

{{<matomeQuote body="確率微分方程式は、一般的に状態を示す変数が少しだけ時間で異なるシステムのモデルに役立つけど、今回のように死亡時期が1/50マウス寿命の差で変わるのを検出するのは難しいんじゃないかな。時間の変数が限られているから、普通の統計手法で十分かも。" userName="whatshisface" createdAt="2025-02-24T18:13:37" color="">}}

{{<matomeQuote body="L1正則化回帰を使うつもりだ。因子は遺伝子の有無を示す0か1の簡単な変数で、次元の高い問題に対処するのに役立つ。これが年齢の問題だから、ガウス分布を前提にする必要はないよ。" userName="evanfrommaxar" createdAt="2025-02-24T20:26:26" color="#ff33a1">}}

{{<matomeQuote body="このタスクは応用次第だけど、あなたの説明だとベイズ統計を使ったグラフのやり方の方が適している気がする。" userName="etiam" createdAt="2025-02-24T18:40:14" color="">}}

{{<matomeQuote body="遺伝子の発現は非線形で、様々な経路によって調整されるから、経路が分かればベイズ的プログラミングが役立つかもしれないな。少し前に出版された関連する記事もあるよ。" userName="btown" createdAt="2025-02-24T18:59:57" color="">}}

{{<matomeQuote body="確率微分方程式は、出力が連続的なシステムをモデル化するためのものだと思うけど、今回の話は死ぬか生きるかの二項だから、普通の統計モデルで十分だと思う。例えば、神経ネットワークとの比較なんかも面白いと思う。" userName="joe_the_user" createdAt="2025-02-24T18:27:24" color="">}}

{{<matomeQuote body="もし見逃してたら、<a href=”https://en.m.wikipedia.org/wiki/Survival_analysis”>Survival Analysis</a>がこの質問に具体的に答えるためにあるよ。私は時間を離散化して古典的なMLを使って、データを使って死ぬ確率を予測するアプローチが簡単だと思う。" userName="bbminner" createdAt="2025-02-24T18:28:09" color="#ff5c5c">}}

{{<matomeQuote body="生存分析の問題だと思うけど、50のDNAの影響があって、エピジェネティクスデータがあれば確率過程としても捉えられる可能性があるよ。Omer KarinとUri Alonの研究が関連しているかも。" userName="nextos" createdAt="2025-02-24T19:19:11" color="#785bff">}}

{{<matomeQuote body="みんな言っているように、最初は生存モデルをglmnetでフィットさせるのがいいと思う。でも、細胞をモデル化するためにSDEを使おうとしている人たちもいるみたい。まだ死亡年齢の予測とは遠いけど、興味深いことが得られるかもしれない。" userName="paulfharrison" createdAt="2025-02-25T03:57:29" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="レスありがとう！これから数ヶ月、みんなの提案を参考にして勉強しようと思ってる。これは2年前の研究の続きだよ：<br>https://pubmed.ncbi.nlm.nih.gov/36173858/" userName="robwwilliams" createdAt="2025-02-25T04:57:52" color="#38d3d3">}}

{{<matomeQuote body="ネズミについては分からないけど、ストカスティック・カリキュラスが人間の生命保険のモデルに使われるって聞いたよ。" userName="seanhunter" createdAt="2025-02-24T18:10:33" color="">}}

{{<matomeQuote body="そのリンクは生命保険会社がストカスティック・カリキュラスを使ってる証拠にはなってないよ。ただの学部課程のカリキュラムだし。" userName="joe_the_user" createdAt="2025-02-24T18:31:18" color="">}}

{{<matomeQuote body="これはちょっと違うと思うよ：<br>https://en.mwikipedia.org/wiki/Stochastic_modelling_(insuran..." userName="layer8" createdAt="2025-02-24T19:19:29" color="">}}

{{<matomeQuote body="初心者向けの導入としてすごく良いモデルだね。特に伊藤の補題の動機付けが素晴らしいし、dW²項が消えちゃうのに重要であることも良く説明されてる。ストラトノビッチへの変換もいい感じ！" userName="ngriffiths" createdAt="2025-02-25T15:07:16" color="#ff33a1">}}

{{<matomeQuote body="伊藤計算についての私の理解を共有するね。<br>1. 最初に理解できるランダムプロセスはブラウン運動だけだよ。<br>2. 幸運なことに、座標を変えることができるんだ。" userName="whatshisface" createdAt="2025-02-24T17:26:35" color="#45d325">}}

{{<matomeQuote body="ありがとう！2についてもっと詳しく教えてくれない？" userName="max_" createdAt="2025-02-24T20:32:47" color="">}}

{{<matomeQuote body="伊藤の公式は微積のチェーンルールみたいなもので、一般化されたものなんだ。二次テイラー展開を使うんだよ。だから、(2)はこの事実を反映していて、導出プロセスのダイナミクスを計算できるんだ。" userName="hrududuu" createdAt="2025-02-24T21:11:20" color="#ff5c5c">}}

{{<matomeQuote body="誰かこの文章を解析するの手伝ってくれない？<br>＞『ブラウン運動と伊藤計算は、現実世界をモデル化するためのかなり高度な数学の注目すべき例です』。伊藤計算って何だ？混乱してるのは私だけかな？" userName="dmvdoug" createdAt="2025-02-24T17:11:07" color="">}}

{{<matomeQuote body="伊藤はその計算方法の名前で、計算はただの計算の複数形だと思うよ。要するに「全ての伊藤計算はかなり高度な数学の注目すべき例だ」ってことかな。" userName="luisfmh" createdAt="2025-02-24T17:17:01" color="">}}

{{<matomeQuote body="calculusの複数形はcalculiかcalculusesなのね。calculareは別の言語の自動修正かもしれないけど、作者が韓国名だからただの変なタイプミスの可能性が高いかな。" userName="layer8" createdAt="2025-02-24T19:25:13" color="">}}

{{<matomeQuote body="納得！でもcalculusの複数形はcalculiかcalculusesって主張したい気持ちも。辞書では後者が出てくるけど、実際には見たことないし…でもそれはどうでもいいことだね！助けてくれてありがとう！" userName="dmvdoug" createdAt="2025-02-24T17:22:08" color="#38d3d3">}}

{{<matomeQuote body="それはタイプミスだよ。”calculare”は”calculus are”のつもりだったんじゃない？" userName="incognito124" createdAt="2025-02-24T17:22:44" color="">}}

{{<matomeQuote body="タイプミス。" userName="FabHK" createdAt="2025-02-24T17:20:28" color="">}}

{{<matomeQuote body="これはItô Calculusのことを指してると思うよ。<br>＞”https://en.wikipedia.org/wiki/It%C3%B4_calculus”" userName="ricoxicano" createdAt="2025-02-24T17:21:44" color="">}}

{{<matomeQuote body="Ito calculusについてのリンクだよ。<br>＞”https://en.wikipedia.org/wiki/It%C3%B4_calculus”" userName="karpierz" createdAt="2025-02-24T17:15:23" color="">}}

{{<matomeQuote body="詳細はこのリンクに書いてあるよ。<br>＞”https://jiha-kim.github.io/posts/introduction-to-stochastic-...”<br>でも要約すると、確率的な歩行の積分を定義する方法だね。" userName="adgjlsfhk1" createdAt="2025-02-24T17:21:08" color="#ff33a1">}}

{{<matomeQuote body="量子金融の人たち、これって日常的にどれくらい役立ってるの？" userName="eachro" createdAt="2025-02-24T19:17:20" color="">}}

{{<matomeQuote body="日常的にはあんまり使わないかな。構造物・エクゾティクスのストラクチャーをやってるなら重要だけどね。この記事以上の難しい質問を面接で聞かれることもあるし、”Cameron-Martin定理を証明して”って言われて、すごく難しかったことを覚えてる。" userName="mamonster" createdAt="2025-02-24T19:29:43" color="#38d3d3">}}

{{<matomeQuote body="必要ないと思うよ。ここにシンプルな代替案があるよ。<br>＞”https://keithalewis.github.io/math/um1.html”" userName="keithalewis" createdAt="2025-02-24T19:32:08" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="そうだね。線形金利の取引所だと、ほとんどがこの方程式の決定論的部分を調整することに時間を費やすんだ。ほとんどの本がただ記号的な名前を与えるだけの問題なのに、何千行ものコードが必要なんだよ。オプションを取引するなら、オフ・ザ・シェルフのモデルでデルタを計算するのが良いかもね。マーケットメイキングやエクゾティック・プロダクトを扱う時は、こういったことを常に考えなきゃいけないけど。" userName="mhh__" createdAt="2025-02-25T01:01:55" color="#ff5c5c">}}

{{<matomeQuote body="博士課程の時に量子確率微分方程式について勉強したんだけど、普通の微分と全く違う結果が出るから驚いたよ。" userName="bowsamic" createdAt="2025-02-24T17:46:51" color="">}}

{{<matomeQuote body="それって少なくともどちらかの結果が間違ってるってことになるんじゃない？" userName="ta8645" createdAt="2025-02-24T18:02:22" color="">}}

{{<matomeQuote body="いや、確率微分の基本的な見解は、ノイズを加えることでプロセスの軌道が非自明に変わるってことだと思う。例えば金融市場では、”ボラティリティ税”の概念に繋がるんだ。単純には、ノイズを加えても期待リターンは変わらないと思うけど、実際はボラティリティのせいで期待リターンが減少しちゃうんだ。これは元の記事が『Geometric Brownian Motion』のセクションで話してることの一つなんだ。" userName="antognini" createdAt="2025-02-24T18:23:00" color="#785bff">}}

{{<matomeQuote body="これに付け加えると、確率論はノイズのある中で微分をしようとする学問だから、ノイズがあると関数が微分不可能になるんだよ。だから、滑らかな曲線がなくても計算はできるんだ。チェーンルールの修正や、積分の意味を定義する必要があるけれど。" userName="crdrost" createdAt="2025-02-24T20:44:47" color="#ff33a1">}}

{{<matomeQuote body="まあ、量子Ito微積分では、通常の微分が正しく定義されていない確率的変数にも適用できるんだ。" userName="bowsamic" createdAt="2025-02-24T18:18:13" color="">}}

{{<matomeQuote body="意思決定のモデル化に応用はあるの？" userName="bytesandbits" createdAt="2025-02-25T03:04:05" color="">}}

{{<matomeQuote body="拡散モデルがAI画像生成の秘密兵器になりつつあるのが未だに驚きだよ。でもその根源は確率微分にあるんだ。ブラウン運動が最終的に猫のミームを作る助けになるとは誰が想像しただろうね。" userName="tsunego" createdAt="2025-02-24T17:48:31" color="#785bff">}}

{{<matomeQuote body="良い記事だね。確率微分に少し経験があるから、ほとんど理解できたと思うよ。他に良い入門資料はあるかな？" userName="ForceBru" createdAt="2025-02-24T17:00:05" color="#ff5c5c">}}

{{<matomeQuote body="少し進めようと思ってるんだけど、先にカバーするべき基礎があるから、まだ手をつけられてないんだ。YouTubeチャンネルの”Mathematical Toolbox”には入門向けのいい動画があるらしい。あと、Calinの”An Informal Introduction to Stochastic Calculus with Applications”がオススメみたいだ。その後Klebanerの”Introduction to Stochastic Calculus with Applications”や、Evansの”An Introduction to Stochastic Differential Equations”が良いけど、難しくて形式的なので分析や測度理論の確率のバックグラウンドが必要だよ。Evansは定義的なPDEの本を書いたEvansと同じだからね。CalinよりKlebanerやEvansの方が難しいらしいけど、みんな入門って名前ついてるし。" userName="seanhunter" createdAt="2025-02-24T18:25:59" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
