+++
date = '2025-09-26T00:00:00'
months = '2025/09'
draft = false
title = 'SimpleFold登場！ タンパク質折り畳みが実は超シンプルだった？'
tags = ["タンパク質", "AI", "機械学習", "構造予測", "効率化"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> SimpleFold登場！ タンパク質折り畳みが実は超シンプルだった？

引用元：[https://news.ycombinator.com/item?id=45389267](https://news.ycombinator.com/item?id=45389267)




{{<matomeQuote body="論文へのリンクだよ！ https://arxiv.org/abs/2509.18480" userName="kevlened" createdAt="2025/09/26 18:01:26" color="">}}




{{<matomeQuote body="SimpleFoldが「シンプル」って言われてるけど、トレーニングデータのほとんどはAlphaFoldみたいな複雑なモデルの予測結果から来てるんだって。だから、結局は複雑なモデルの成果に依存してるってことだね。MSAとかの複雑な仕組みを全部捨てられるわけじゃないんだ。" userName="hashta" createdAt="2025/09/26 19:32:05" color="#45d325">}}




{{<matomeQuote body="このSimpleFoldは、ML分野でよくある「複雑化した後にシンプルなモデルが同等かそれ以上の性能を出すブレイクスルー」ってパターンだよ。この「シンプル」なアーキテクチャがうまくいくってことは、これからまたMSAみたいな複雑な要素を加えて、もっと性能を伸ばせる可能性を秘めてるってことだね。だから、最適じゃなくてもすごく期待してるんだ！" userName="aDyslecticCrow" createdAt="2025/09/26 19:56:59" color="#ff5733">}}




{{<matomeQuote body="MSAをまた追加するか？って質問だけど、MSAは局所最適解かもしれないね。ESMはMSAなしでもうまくいく例があるし。MSAは良い帰納的バイアスを提供するけど、B細胞やT細胞受容体みたいにMSAが不正確なタンパク質には向かないんだ。Isomorphic LabsとかがOpenBind Consortium (https://openbind.uk) を立ち上げて、もっとデータができれば、MSAはモデル入力としてあまり重要じゃなくなるかもね。「線形すぎる」ってことらしいよ。" userName="nextos" createdAt="2025/09/26 20:26:31" color="#38d3d3">}}




{{<matomeQuote body="これってそんなに珍しいことかな？シンプルなものって、ほとんどが最初は複雑だったはずだよ。一般的なシンプルな形を見つけるためには、まず複雑なことを全部経験しないとね。自然界のものが比較的シンプルなルールで動いてるのは明らかだけど、ライフゲームを見てルールと初期パラメーターを逆算するようなものだ。P=NPだって本気で信じる奴がいる？" userName="godelski" createdAt="2025/09/26 19:51:09" color="#45d325">}}




{{<matomeQuote body="分野外の人には、「折り畳みが本質的にシンプルになった」って聞こえるかもしれないけど、このモデルはAlphaFoldの複雑なモデルが作った大規模な合成データセットなしには存在しないよ。この「シンプル」なアーキテクチャは、知識蒸留を通して複雑なモデルを間接的に使ってるんだ。新しい工夫でゼロからシンプルなモデルを作ったわけじゃなくて、複雑さをモデル空間からデータ空間に移動させただけだよ（GPT-5がなければGPT-5-miniも存在しないのと一緒）。" userName="hashta" createdAt="2025/09/26 20:41:11" color="#45d325">}}




{{<matomeQuote body="「分野外の人向けに」って言うけど、それがどうした？これは研究論文だよ。一般向けに書くものじゃないし、アクセスできるからって意図された読者ってわけじゃない。論文は科学者が同業者とコミュニケーションをとるためのものだ。「思ったよりシンプル」を「シンプル」と混同するような人は、そもそも論文を読む資格がない。そんな比較表現も理解できない小学校レベルの読者に基準を合わせるべきじゃないよ。" userName="godelski" createdAt="2025/09/26 23:27:05" color="#ff5c5c">}}




{{<matomeQuote body="論文のタイトルは「SimpleFold」だけど、私が言いたかったのはそこじゃないんだ。前のコメントから、あなたがシンプルさがアーキテクチャだけのものだと思ってるように感じたよ。本当に公平に比較するなら、「シンプルだけど同等に良い」と主張するモデルは、AlphaFoldと同じデータで訓練するか、少なくとも学習データの大部分がAlphaFold由来であることを明確に認めるべきだ。この研究を批判したいわけじゃなくて、単にそのニュアンスを、時間や背景知識がない読者に伝えたいだけだよ。注目を集めるための「シンプル／よりシンプル」ってメッセージングがうまくいったのはわかるけどね！" userName="hashta" createdAt="2025/09/26 23:50:35" color="#ff33a1">}}




{{<matomeQuote body="私がシンプルさがアーキテクチャ由来だと示唆した場所は不明だけど、混乱させてごめんね。私は元々、AlphaFoldのようなものが最初に必要だったという批判に反論してたんだ。シンプルさって色々な意味があるけど、ここではアーキテクチャ設計の「シンプルさ」を指してるのは明らかだと思うよ。公平な比較って話だけど、ML研究者としてはそう思うよ。彼らの目標はベンチマークで最高スコアを取ることじゃなくて、コンシューマーレベルのハードウェアで効率的に動くことなんだ。AlphaFold2よりはるかに少ない計算量で同等のモデルサイズを達成してるんだから、性能が多少落ちても、計算量が450倍も減るなら（最大モデルでも20倍）、それを選ぶ人はいるんじゃない？タイトルで注目を集めるのは残念な慣行だけど、論文を読んでもらうためには必要なんだ。要旨が十分明確なら、タイトルが多少紛らわしいくらいで目くじらを立てるべきじゃないよ。それに、ターゲット層から大きく外れた人だけが混乱するなら、そんな小さな問題だ。研究者が一般向けに書くべきだなんて代替案は良くない。専門家が努力すれば読める程度の論文を、その分野の仲間向けにしっかり書くべきで、一般向けには科学コミュニケーターがいるんだ。" userName="godelski" createdAt="2025/09/27 00:59:12" color="#ff5c5c">}}




{{<matomeQuote body="でもこれって単なる細かい点だよね？もし僕らが何百万ものタンパク質を骨の折れる作業でカタログ化できたとしたら、複雑なモデルでデータを生成する必要もなく、シンプルなモデルを使えるようになるんじゃないかな？" userName="stavros" createdAt="2025/09/26 21:15:50" color="#38d3d3">}}




{{<matomeQuote body="AlphaFoldはタンパク質の構造決定にかかる時間と労力を大幅に削減し、もはや実験プロセスに不可欠な存在だよ。実験だけだと時間も手間もかかるし、正確な予測は今後の研究にも役立つんだ。これのおかげで、タンパク質構造データが世界的に増えてるんだよ。" userName="connorbrinton" createdAt="2025/09/27 13:04:34" color="#45d325">}}




{{<matomeQuote body="あー、わかるわ。質的な変化じゃなくて、量的な改善ってことだよね。" userName="stavros" createdAt="2025/09/27 13:14:22" color="">}}




{{<matomeQuote body="”このモデルがもっと複雑なAlphaFoldの作った合成データなしでは無理だった”って言うけどさ、もし十分な自然データがあれば、自然データだけでも作れたんじゃないの？" userName="littlestymaar" createdAt="2025/09/27 07:14:05" color="#ff5733">}}




{{<matomeQuote body="たしかに。でも、それって元の問題を解決してるんじゃなくて、データの蒸留をしてるだけって感じだよね？記事タイトルが示唆してた”タンパク質折り畳みは実はもっとシンプル”ってのと違う気がするな。MLだとデータが限られるのが問題だし、合成データの方が圧倒的に多いからね。" userName="inkysigma" createdAt="2025/09/27 09:01:50" color="#38d3d3">}}




{{<matomeQuote body="”自然界のことはシンプルなルールで動いてるはず”って言うけどさ、10億年にもわたる進化の淘汰を”シンプルなルール”って呼ぶなら、まぁね。" userName="slashdave" createdAt="2025/09/27 05:15:39" color="#ff5733">}}




{{<matomeQuote body="進化ってさ、バカで欲張りな探索で、すっごく小さなステップでしか進まないんだよ。しかも、どのステップも前よりは適応してないとダメなんだ。だから、進化が作ったものは、どんなに複雑に見えても、実は小さなステップの積み重ねで到達できるほどシンプルじゃないといけないんだよ。" userName="TeMPOraL" createdAt="2025/09/27 06:55:24" color="#45d325">}}




{{<matomeQuote body="「どのステップも前より適応してないとダメ」って、それ間違いだよ。進化を語る前にゲノミクスをちゃんと学んでから言ってくれ。" userName="slashdave" createdAt="2025/09/27 17:11:38" color="#ff5c5c">}}




{{<matomeQuote body="勉強したよ。もちろん細かいことは省略してるけど、ざっくり言えば間違ってないはず。どこが間違ってると思うか、教えてよ。" userName="TeMPOraL" createdAt="2025/09/27 21:58:20" color="">}}




{{<matomeQuote body="10億年ゲーム・オブ・ライフをやってみてよ、それでも同じこと言える？ルールってのは時間で変わらないんだよ。物理学をちゃんと学べば、複雑さがどうシンプルさから生まれて、どうやって”創発”っていう現象で一度下がってまた複雑になるのか、わかるはずなんだけど。" userName="godelski" createdAt="2025/09/27 08:17:00" color="#38d3d3">}}




{{<matomeQuote body="生物学とゲーム・オブ・ライフを比べるのか…もう呆れたわ。" userName="slashdave" createdAt="2025/09/27 17:10:44" color="">}}




{{<matomeQuote body="お前が書いたものをもう一度読めって言いたいね。本当に論点を完全に外そうと必死だな。俺が言ったことと人生は全然関係ないだろ。物理学者は、自然が単純なルールに従うって確信してるんだよ、たとえ俺たちがそれを知らなくてもね。複雑さが単純さから生まれるってことにも、絶対的な自信がある。フラクタル、カオス理論、摂動論、お前が微分方程式の授業で分岐図にぶつかったはずだよ。もし微分方程式を履修してないなら…たぶん問題はお前の結果への自信が専門知識より強いってことだ。そうじゃないなら…ちゃんとした議論をしてくれよ、もうこれ以上手取り足取り教えないからな。" userName="godelski" createdAt="2025/09/27 21:49:33" color="#45d325">}}




{{<matomeQuote body="物理学でPhD持ってるんだけどさ…生物学はシンプルとは程遠いよ。" userName="slashdave" createdAt="2025/09/27 22:54:05" color="">}}




{{<matomeQuote body="いい加減にしろよ、どの物理の問題も、比較的シンプルなシステムの記述から始まって、そこから膨大な計算とページ数にわたる記述を経て、結局また比較的シンプルな記述に落ち着くんだ。E&Mでこんな複雑さを見ないでどうやって物理の学部課程を終えられたのか理解できないね。全てを記述する4つのルールがあって、それぞれ短い1行で書けて記号もほんの数個だ。つまり、そのルールはシンプルなんだよ。でも、それがその形ではあまり役に立たないって意味じゃない。残りはそこから導き出せるんだ。ゲーム・オブ・ライフで俺が話してるのはまさにそのことだ。JacksonやGoldsteinどころか、どうやって微分方程式を乗り越えて、単純さから複雑さが生まれるのを見なかったんだよ！？なんなんだ、お前は嘘をついてるか、わざと誤解してるかのどっちかだ。生物学がシンプルだって言ったのはお前だけだ。誰もそんなこと示唆してないんだ！もし学位について嘘をついてないなら、わざとコメントを誤解してるんだよ。なんで？何のために？" userName="godelski" createdAt="2025/09/28 19:16:20" color="#ff5c5c">}}




{{<matomeQuote body="悪いけど、タンパク質折り畳みを第一原理から直接予測することはできないし、どのDeep Learningモデルでも無理だ。Molecular dynamicsを使うことはできるかもしれないけど、もし運が良くて計算リソースがあればね。Molecular dynamicsを“シンプルなルール”と結びつけたいのかもしれないけど、それは妄想だよ。Molecular dynamicsは通常、データといくつかの量子シミュレーションでパラメーター化された古典的なフォースフィールドを使うんだ。第一原理に基づいているわけじゃない。タンパク質は何千年もの自然選択を経て生成されたパターンで折り畳まれるんだ。シンプルじゃない。" userName="slashdave" createdAt="2025/09/29 00:17:15" color="#45d325">}}




{{<matomeQuote body="その通りだ。AlphaFoldはX線を使った折り畳まれたタンパク質の実験観察で検証されたんだ。" userName="mapmeld" createdAt="2025/09/26 19:43:58" color="">}}




{{<matomeQuote body="その通り。分からない人のために言うと、MSAは既知のPDB構造から新しい配列へ一般化するために使われるんだ。AlphaFold2の結果で訓練すると、モデルはその一般化能力が不要になる（丸暗記に頼れるようになる）。この単純な結論を著者たちは見逃してるみたいだね。" userName="slashdave" createdAt="2025/09/26 23:05:19" color="#785bff">}}




{{<matomeQuote body="初めてFolding@Homeプロジェクト（https://foldingathome.org）について聞いたのは、まだメディアサーバーが余ってて、大学の寮で電気代が安かった（無料）頃だったな。この分野は詳しくないんだけど、今日のハードウェアでタンパク質折り畳みをもっとシンプルにできたのかな、それとも特定の種類の問題にしか適用できないのかな？Folding@Homeプロジェクトがまだやってるんだね！" userName="stephenpontes" createdAt="2025/09/26 18:32:03" color="">}}




{{<matomeQuote body="俺の理解では、Folding@Homeは物理ベースのシミュレーションソルバーで、AlphaFoldとその派生（今回のものも含む）は統計的手法だ。統計的手法は計算コストがずっと安いけど、既存のタンパク質折り畳みに依存するし、訓練セット内のタンパク質と類似性のないタンパク質に対しては強力な予測ができないんだ。言い換えれば、これは多用途性を速度と引き換えにする異なるアプローチだけど、そのトレードオフは、興味のあるどんなタンパク質でも折り畳みを生成できるくらい十分で、ほとんど計算上不可能だった折り畳みを、通常のワークフローの一部としてできるものに変えたんだ。" userName="roughly" createdAt="2025/09/26 19:46:02" color="#38d3d3">}}




{{<matomeQuote body="1. Folding@Homeを統計ベースじゃないと categorise するのは躊躇するね。彼らはMarkov state modelsを使ってるし、それはかなり統計に基づいている。そして現在のフォースフィールドは機械学習でパラメータ化されてるんだ（https://pubs.acs.org/doi/10.1021/acs.jctc.0c00355）。<br>2. Folding@HomeとAlphaFoldの最大の違いは、Folding@Homeが完全な折り畳みtrajectoryを生成しようとするのに対して、AlphaFoldは単なるタンパク質構造予測で、折り畳まれた結晶構造に合わせるだけってことだ。Folding@Homeは、変異がタンパク質の折り畳み時間を長くしたり、折り畳まれた状態の安定性を高めたり低くしたりする仕組みを調べることができる。AlphaFoldはそういうことはしようとしないんだ。" userName="cowsandmilk" createdAt="2025/09/27 00:53:57" color="#38d3d3">}}




{{<matomeQuote body="その通り、君の言うことは正しいよ。Folding@Homeの方法論についてはちょっと簡略化しすぎたね。でも、核となる違いは、Folding@Homeがシミュレーションを通じて折り畳みを解明しようとしているのに対して、AlphaFoldはトレーニングデータに依存するGPTスタイルの予測器に近い、という点だと思うんだ。実際、AlphaFoldがすごく好きなのはそのせいだね。アミノ酸文字列とタンパク質の構造や機能の関係性が、段落内の単語間の相互作用と全体の意味の関係に似ているという核心的な認識は、AlphaFoldがこの分野にもたらしたような飛躍として、たまにしか現れない美しい発見の一つだからだ。この手法にはたくさんの限界があるけど、こういう異分野間の相互作用こそが、いつも最も興味深い新しい発展を生み出すんだよ。" userName="roughly" createdAt="2025/09/27 02:05:24" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GPUはどっちも電気食うよね？3000ドルくらいのRTXとM4 Mac Miniをいっぱい繋げたのとで、性能ベンチマークってあるのかな？" userName="stwsk" createdAt="2025/09/27 07:02:45" color="#ff5733">}}




{{<matomeQuote body="そうそう、これとSETI@Homeだよね。内容全部は分からなかったけど、画面見てるだけでも楽しかったな。" userName="_joel" createdAt="2025/09/26 19:03:42" color="">}}




{{<matomeQuote body="それから同時期のRC5プロジェクトもね！https://www.distributed.net/RC5<br>https://en.wikipedia.org/wiki/RSA_Secret-Key_Challenge<br>今のM1コンピュータでどれくらい性能が出るんだろう？笑<br>え、RC5-72ってまだ参加してる人いるの？https://stats.distributed.net/projects.php?project_id=8" userName="gregsadetsky" createdAt="2025/09/26 19:23:13" color="#ff33a1">}}




{{<matomeQuote body="なんでAI@Homeってないんだろう？" userName="seydor" createdAt="2025/09/26 19:21:23" color="">}}




{{<matomeQuote body="計算能力よりノード間のネットワーク帯域幅が大きなボトルネックだよ。最新のNvidiaカードは一枚の基板内でも400Gbitバスで通信するしね。SETIやFolding@Homeと比べたら、AIモデルにとってはめちゃくちゃ遅いだろうな。" userName="throwup238" createdAt="2025/09/26 19:24:27" color="#ff5733">}}




{{<matomeQuote body="レイテンシを気にしないような大量の計算が必要なトレーニングなら、AI@Homeみたいなのが向いてるんじゃない？" userName="fourthark" createdAt="2025/09/26 20:33:53" color="">}}




{{<matomeQuote body="いや、トレーニングではレイテンシも帯域幅もめちゃくちゃ大事だよ！all_gatherとか勾配のことを考えてみて。むしろ推論の方が分散しやすいんだ。" userName="ronsor" createdAt="2025/09/27 03:56:53" color="#785bff">}}




{{<matomeQuote body="でも、レイテンシに基づいたトポロジーを組めば、そこそこいいトレードオフが得られるかもよ。例えば100万個のノードがそれぞれツリー状にバッチ更新をして、all_reduceがノード間のレイテンシで階層化されるようなね。" userName="meehai" createdAt="2025/09/27 07:56:37" color="#785bff">}}




{{<matomeQuote body="800Gbps" userName="shaklee3" createdAt="2025/09/27 04:38:13" color="">}}




{{<matomeQuote body="Folding@Homeのブログによると、タンパク質の最終的な形だけでなく、どうやって折り畳まれるかのダイナミクスを知るのもまだ大事みたいだよ。MLで折り畳まれたタンパク質は、その働きを検証したり理解したりするためのシミュレーションに、すごく役立つって！<br>https://foldingathome.org/2024/05/02/alphafold-opens-new-opp..." userName="jffry" createdAt="2025/09/26 22:38:10" color="#ff5c5c">}}




{{<matomeQuote body="彼らはまだ活動中で、長年素晴らしい発見をしてきたよ。詳しくはここ見てね: https://foldingathome.org/papers-results/?lng=en" userName="EasyMark" createdAt="2025/09/26 22:37:23" color="#ff5733">}}




{{<matomeQuote body="俺もそこにめっちゃ貢献したよ。冬は3080Ti-FEを小さいヒーター代わりに使ってたんだ。" userName="ge96" createdAt="2025/09/26 20:38:55" color="">}}




{{<matomeQuote body="笑、俺も冬はまだ動かしてるけど、夏はなんか申し訳なくてさ。エアコンや暖房が要らない時は動かさないんだ。でも、ゼロよりは少しでも貢献する方がずっとマシだよね。" userName="EasyMark" createdAt="2025/09/26 22:38:29" color="">}}




{{<matomeQuote body="F@Hチーム、永遠に！" userName="nkjoep" createdAt="2025/09/26 18:50:04" color="">}}




{{<matomeQuote body="「俺たちの方法は最先端よりシンプルだ」って言う論文ね。でも「全指標で最先端に比べてかなり劣ってる」とは大声で言わないんだよな。論文として出すのは簡単じゃないだろうけど、大企業の名前でプレプリントとして出せば、まあ…助けになるんだろうね…。" userName="vbarrielle" createdAt="2025/09/26 19:19:51" color="#ff33a1">}}




{{<matomeQuote body="この記事の背景にある論文リンクだよ、読みたいならどうぞ。https://arxiv.org/abs/2509.18480" userName="IAmBroom" createdAt="2025/09/26 18:28:26" color="#45d325">}}




{{<matomeQuote body="そして要旨だけで（もし俺が正しく読んでるなら）「AIはまだ必要だけど、他がやってるほどじゃない」って書いてあるね。" userName="IAmBroom" createdAt="2025/09/26 18:29:38" color="#45d325">}}




{{<matomeQuote body="もう一つの形：このタスクにはTransformerだよ。" userName="mentalgear" createdAt="2025/09/26 19:30:33" color="">}}




{{<matomeQuote body="GitHubリンクに興味がある人向けだよ。https://github.com/apple/ml-simplefold" userName="serjester" createdAt="2025/09/26 20:11:17" color="#ff5733">}}




{{<matomeQuote body="なんでAppleがタンパク質折り畳みをやってるの？" userName="barbarr" createdAt="2025/09/26 18:22:29" color="">}}




{{<matomeQuote body="AppleにはML研究グループがあって、Apple製品に役立つこと、その他アプリケーション、一般的な最適化、そして基礎研究まで色々やってるよ。詳細はここ見てね：https://machinelearning.apple.com/" userName="robotresearcher" createdAt="2025/09/26 19:41:41" color="#ff5733">}}




{{<matomeQuote body="これが実際にそうかは分からないけど、「AI for science」研究の一部はマーケティング目的でやってるってことを知っておくのは大事だよ。会社の製品に直接役立たなくても、「名声」のためにはなるからね。" userName="bobmarleybiceps" createdAt="2025/09/26 20:30:35" color="">}}




{{<matomeQuote body="ローカル推論のためだよ。AppleはSimpleFoldみたいな最先端モデルを、デスクトップで素早く推論できるくらい小さくしたいはず。記事のFigure 1EでもM2 Max 64 GBでの推論が示されてるし。小さな製薬会社なら、ローカル推論ができれば色々ハードルが下がるし、Bayesian optimizationやRLも試せるよね。AlphaFoldはリソース使うし、多重アラインメントもちょっとハック的で、ホモログがないタンパク質では性能落ちるし、前処理も大変。MetaのESMはアラインメントなしで高精度なことを示してるし、AlphaFoldに秘密のソースはないよ。単なるseq2seq問題で、SSMsみたいに注意機構なしでもうまくいく方法はたくさんあるんだ。" userName="nextos" createdAt="2025/09/26 18:36:21" color="#38d3d3">}}




{{<matomeQuote body="みんな深読みしすぎじゃないかな。Appleみたいな会社なら、タンパク質折り畳みが主要な関心事じゃなくても、面白い研究を自由にやらせるラボがあるってことじゃない？だからGorilla Glassの配合じゃなくて、こういう論文が出るんだよ。" userName="Zacharias030" createdAt="2025/09/27 01:02:22" color="">}}




{{<matomeQuote body="将来の市場がどうなるか楽しみだね。オンプレミスで動かせる「三番目に良いモデル」を選ぶ人が増えるのか、それともみんなスーパーコンピュータで「一番良いモデル」を数セント高くても使うために並ぶのか。" userName="mensetmanusman" createdAt="2025/09/27 02:24:36" color="#38d3d3">}}




{{<matomeQuote body="コンピューターを売るためじゃない？20年前、AppleはWWDCで科学ポスターセッションもやってたし、PyMolをMacに対応させようとしてたんだ。論文のタンパク質の絵はPyMolで生成されてるし、ここ15年の科学論文のタンパク質画像の50%以上はPyMolでできてるはずだよ。" userName="cowsandmilk" createdAt="2025/09/26 23:32:59" color="#38d3d3">}}




{{<matomeQuote body="Warren Delano（PyMolの作者）が生きてたら、AlphaFoldや今の状況に驚いただろうね。彼が望んだ、こういうソフトウェアがオープンソースでピアレビュー可能であるべきという願いは、ほとんど実現してるよ。" userName="whyenot" createdAt="2025/09/27 05:54:04" color="#ff5733">}}




{{<matomeQuote body="おそらくByteDanceやFacebook（EvolutionaryScaleにスピンアウトした方）も同じようなことやってるからじゃない？" userName="shpongled" createdAt="2025/09/26 19:21:03" color="">}}




{{<matomeQuote body="評判ロンダリング？" userName="Forbo" createdAt="2025/09/26 18:31:01" color="">}}




{{<matomeQuote body="ほとんどの会社より評判はいいよね。Google、Facebook、Oracleとかと比べたら全然マシだと思う。企業が良いことしてるなんて誰も思ってないけど、それでも評判ってのはそこそこ大事なんだよ。" userName="EasyMark" createdAt="2025/09/26 22:40:04" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="もっと多くの人がDOJとEUのAppleに対する訴訟を読んだら、多分Appleに対してこんなに高い評価はしないはずだよね。" userName="leptons" createdAt="2025/09/26 23:24:01" color="#ff5c5c">}}




{{<matomeQuote body="何をロンダリングするっていうの？<br>彼らが持ってるほどの良い評判を持つべきじゃないのかもしれないけど、実際に良い評判があることは否定できないでしょ。" userName="jama211" createdAt="2025/09/26 19:02:02" color="">}}




{{<matomeQuote body="何の評判？<br>Appleはただのオフィス家電会社でしょ。" userName="amelius" createdAt="2025/09/26 19:14:39" color="">}}




{{<matomeQuote body="会社に対するあなたの意見と、一般の人々の認識を混同してるよ。Appleは平均的な人から「オフィス家電会社」だなんて思われてないよ。多くの人にはハイエンドなラグジュアリーブランドだと見なされてるんだ[1]。<br>[1]: https://www.researchgate.net/publication/361238549_Consumer_..." userName="axoltl" createdAt="2025/09/26 19:29:39" color="#ff33a1">}}




{{<matomeQuote body="ハイテクブランドって言いたかったんじゃない？<br>リンク先の記事もそう言ってるし。" userName="commandersaki" createdAt="2025/09/27 05:55:44" color="">}}




{{<matomeQuote body="Appleの公開されてる販売データを見ると、主に消費者向けで、特にiPhoneを売ってるのがわかるよ。1980年代のSONYみたいに、彼らは当時の最高級家電の巨人だね。iPhoneはWalkmanやTrinitron TVよりも成功してるんじゃないかな。企業向けにも売ってるけど、一番人気のあるノートPCも消費者向けに売ってるよ。SONYのVAIOみたいな感じだけど、もっと人気だね。" userName="robotresearcher" createdAt="2025/09/26 19:45:55" color="#ff5c5c">}}




{{<matomeQuote body="家電業界のリーダーシップが日本からアメリカ、韓国、そして今は中国に移ったのって、理解すると面白いだろうね。<br>これについて良い本とか記事を誰かお勧めしてくれない？" userName="robotresearcher" createdAt="2025/09/26 21:43:35" color="#45d325">}}




{{<matomeQuote body="あー、どこで間違ったかわかったよ。あなたが自分の心の中だけの評判を意味してるって言ってなかったもんね。ちなみに、「評判」って普通は個人の意見じゃなくて、一般的な世論と関係があるって考えられてるよ。" userName="jama211" createdAt="2025/09/27 13:56:05" color="#ff33a1">}}




{{<matomeQuote body="グリーンウォッシングの逆って何て呼ぶんだろう？他と同じくらいモデル学習にエネルギー使ってるって見せたい時とかに使う言葉。" userName="lovasoa" createdAt="2025/09/26 19:11:52" color="">}}




{{<matomeQuote body="タンパク質の絵が気になったんだけど、説明には「真の値はlight aqua、予測はdeep teal」って書いてあった。なんでこの色を選んだのか、マジで疑問だよ。" userName="foodevl" createdAt="2025/09/26 18:32:14" color="">}}




{{<matomeQuote body="図aは、光合成で大事な植物タンパク質RuBisCO（7QSW: https://www.ebi.ac.uk/pdbe/entry/pdb/7qsw、https://en.wikipedia.org/wiki/RuBisCO）の折り畳みをリボンで示してるんだ。色が違うのは予測とground truthモデルのため。見分けにくいのは色選びもあるけど、予測がめちゃくちゃ正確で両者がほぼ一緒だからだよ。" userName="gilleain" createdAt="2025/09/26 18:41:25" color="#785bff">}}




{{<matomeQuote body="これはMLの典型的な知識蒸留パターンだね。複雑な「先生」モデル（AlphaFold, ESMFold）がシンプルな「生徒」モデルの訓練データを生成する。MSAの進化的シグナルなしで、この簡略化されたアーキテクチャがよく汎化するってのが特に面白い。MSA計算がネックなリアルタイムアプリにすごく重要かもね。オリジナルAlphaFoldとの推論速度比較って誰かやった？" userName="nicohayes" createdAt="2025/09/27 12:22:24" color="#38d3d3">}}




{{<matomeQuote body="このアプローチがタンパク質折り畳み研究にどう影響するのか、専門家の意見を聞きたいな。面白そうだけど、正直どんな意味があるのかはっきりしないんだ。" userName="frenchie4111" createdAt="2025/09/26 18:39:58" color="">}}




{{<matomeQuote body="将来のモデルが変わるきっかけになるかもね。参考までに、ある人の意見はこれだよ: https://genomely.substack.com/p/simplefold-and-the-future-of...<br>でも、研究って実際の影響がわかるまで何年もかかるものだから、将来の予測はあくまで予測ってことだね！" userName="epistasis" createdAt="2025/09/26 19:59:49" color="">}}




{{<matomeQuote body="SimpleFoldはTransformerだから、Transformer向けの理論やツールが使えるし、モデルのスケールアップも楽になる。これって、AlphaFoldには特別な魔法はなくて、大事なのは十分なモデルと大量のデータセットだったってことじゃない？AlphaFoldを試した人たちは、LLMみたいに学習データに近い入力には強いけど、汎化は苦手って言ってるよ。" userName="geremiiah" createdAt="2025/09/26 19:25:59" color="#ff5733">}}




{{<matomeQuote body="でもさ、彼らのデータセットってほとんどAlphaFoldの出力じゃん。AlphaFoldは、X線結晶構造解析で分析されたもっと少ないタンパク質データセットを元にしてるんだ。これはモデル蒸留の試みとしては価値があるけど、自分たちのアーキテクチャとAlphaFoldの元のデータセットだけで同じ結果が出せるわけじゃないよ。もしそうなら、もっとすごいことになってたはずだもん。" userName="johncolanduoni" createdAt="2025/09/27 02:50:04" color="#ff33a1">}}




{{<matomeQuote body="「AlphaFoldに魔法はなかった。大事なのは、十分なモデルと大量のデータセットだったんだ。」って意見、わかる。AGIにはアルゴリズムのブレークスルーが必要ってよく言うけど、実際はデータセットと環境ベース学習が鍵だよね。データを集めれば、どんなモデルでもいけるはず。問題はモデルじゃなくて、その外側にあるってことだね。" userName="visarga" createdAt="2025/09/26 20:38:06" color="#45d325">}}




{{<matomeQuote body="「シンプルさが良い」ってのは勘違いだよ。シンプルってのは良い科学的手法のこと。複雑だと結論出しにくいから、測定可能な成果が出るシンプルな方法を探して次に繋げる。複雑さとシンプルさは繰り返しで、新しいシンプルさがSOTAを超えたってことは、また新しい山を見つけただけってことさ。" userName="aDyslecticCrow" createdAt="2025/09/26 22:16:52" color="#ff33a1">}}




{{<matomeQuote body="Transformerのスケーリング法則のデータにはAlphaFoldを多く使ったから、Bitter Lessonとは違うけど、面白い話だね。" userName="cma" createdAt="2025/09/27 19:39:09" color="">}}




{{<matomeQuote body="全く新しいわけじゃないけど、タンパク質折り畳みモデルがどんどんシンプルになるのはマジですごいね。AF2からAF3でモデルのアーキテクチャも簡単になったし、これはBitter Lessonの方向へ向かってるってことだ。" userName="shpongled" createdAt="2025/09/26 19:22:32" color="#785bff">}}




{{<matomeQuote body="AF3の性能って、AF2のデータで学習してなかったらダメなんじゃない？AF2のデータには equivariance みたいな誘導バイアスがいっぱい詰まってるからね。" userName="hashta" createdAt="2025/09/26 19:40:59" color="#ff33a1">}}




{{<matomeQuote body="AlphaFoldが出てから、古典的な分子動力学シミュレーションって、タンパク質折り畳みに関してはもう古いのかな？DESRESみたいなところの研究はどうなってるんだろう？彼らは同じ分野の特定の課題をやってるのか、それとも全く違うビジネスをしてるのかな？" userName="phoenicyan" createdAt="2025/09/26 20:32:21" color="#45d325">}}




{{<matomeQuote body="違うよ。AlphaFoldはダイナミクスを扱わないんだ。最終状態のスナップショットだけ。原子の動きはMDの主要機能だから、そこはAlphaFoldの仕事じゃないんだ。" userName="the__alchemist" createdAt="2025/09/26 20:34:34" color="#ff33a1">}}




{{<matomeQuote body="リリースされたものに興味があったんだけど、AlphaFold V3のパラメータは非営利目的なら一部のグループにしか公開されてないんだ。でもAlphaFold V2のパラメータは誰でもダウンロードできるみたいだよ。<br>https://github.com/google-deepmind/alphafold3?tab=readme-ov-...<br>https://github.com/google-deepmind/alphafold?tab=readme-ov-f..." userName="tripplyons" createdAt="2025/09/26 20:52:25" color="#ff33a1">}}




{{<matomeQuote body="MDは元々構造予測には向いてなかったから、AlphaFoldが出たって時代遅れにはならないよ。MDは、タンパク質が最終構造に折り畳まれる前後の物理的な動きを研究するのに役立つんだ。" userName="dekhn" createdAt="2025/09/26 21:03:53" color="#38d3d3">}}




{{<matomeQuote body="MDシミュレーションって、普通はタンパク質の折り畳みプロセスを教えてくれる時間スケールではやらないんだ。ほとんどの人は、折り畳まれた後の動きを見てるよ。" userName="cowsandmilk" createdAt="2025/09/26 23:25:37" color="#38d3d3">}}




{{<matomeQuote body="「タンパク質折り畳みはシンプル」っていうけどさ、なんで地球上で一番金持ちな会社2社（この記事のやつとGoogleのAlphaFold）のリソースが必要な、専用LLMモデルが2つも要るわけ？" userName="kylehotchkiss" createdAt="2025/09/26 18:20:05" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
