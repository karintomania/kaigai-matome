+++
date = '2025-08-14T00:00:00'
months = '2025/08'
draft = false
title = 'ノートPCでたった5分！一体どれだけ強力なAIモデルが学習できるのか？'
tags = ["AI", "機械学習", "小型AI", "モデル訓練", "効率化"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> ノートPCでたった5分！一体どれだけ強力なAIモデルが学習できるのか？

引用元：[https://news.ycombinator.com/item?id=44875848](https://news.ycombinator.com/item?id=44875848)




{{<matomeQuote body="小さいモデルの学習は、LLMの科学的理解にも重要だよ。酵母みたいな単純な生物で研究するように、LLMの挙動を理解し制御するには、興味深い振る舞いを示す最もシンプルなTransformerを研究する必要があるんだ。" userName="jebarker" createdAt="2025/08/14 12:58:59" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃ同感！数年前のTiny Storiesのポッドキャスト、マジ面白かったよ。シンプルな単語だけのデータセット（3歳児向け絵本みたいな）で、小さいモデルを学習させても文法も多様性も推論もバッチリな英語が作れるって話だった。その研究者がLLMの可能性を小さい例で解説してくれて最高だったな。生物学のアナロジーでのデータセットは、寒天培地かな？シンプルで制御された環境って意味で。参考URLはこれね：Podcast ep https://www.cognitiverevolution.ai/the-tiny-model-revolution...<br>tinystories paper https://arxiv.org/abs/2305.07759" userName="azath92" createdAt="2025/08/14 15:24:21" color="#785bff">}}




{{<matomeQuote body="寒天培地の例え、いいね！酵母が主役だけど、培地の準備にめっちゃ手間かかるんだよね。バイオテック分野の人間からすると、ランチで聞く不満の9割は悪い結果じゃなくて、実験中のミスなんだよ。例えば、ピペッティング中に口を覆わなくて培地が使えなくなっちゃうとかね。" userName="momojo" createdAt="2025/08/14 17:08:05" color="#45d325">}}




{{<matomeQuote body="ハハ！そのエピソード聞いた時、どこにいたか覚えてるよ（シカゴに向かうLakeshore Driveのあたりで何かイベントがあったんだ）——その記憶を呼び起こしてくれてありがとう——めちゃくちゃ面白い話だよね。" userName="re5i5tor" createdAt="2025/08/16 04:43:08" color="">}}




{{<matomeQuote body="あと、ユーザーの購入履歴みたいな企業独自のデータセットもたくさんあって、小さいモデルで実際のビジネス課題を解決できるよ。LLMの進化は全部、入力シーケンスを特定のカスタム言語として表現できれば、小さな問題にも応用できるんだ。" userName="willvarfar" createdAt="2025/08/14 14:13:49" color="#38d3d3">}}




{{<matomeQuote body="残念ながら、今のところ小さいモデルでの挙動や最適化が、大きいモデルでは再現できないってのはよく知られてるんだよね。" userName="tmule" createdAt="2025/08/14 16:05:23" color="">}}




{{<matomeQuote body="たくさんの小さいモデルでハイパーパラメータ探索をして、それぞれのサイズに最適な値を見つけて、スケーリング法則を適用して大きいモデル用のハイパーパラメータを予測する方法は、かなりうまくいくみたいだよ。この分野の最新の進展はこれだと思う：https://arxiv.org/abs/2505.01618" userName="yorwba" createdAt="2025/08/14 19:01:57" color="#38d3d3">}}




{{<matomeQuote body="問題は、「Emergent Abilities」を信じるなら、評価プロセスがここではうまくいかないってことだね。これ見て：https://arxiv.org/abs/2206.07682" userName="swyx" createdAt="2025/08/14 21:22:44" color="#ff33a1">}}




{{<matomeQuote body="それはたぶん、そう信じるべきじゃないね。少なくとも研究者が主張したような「突然の」出現については。理由はこちらの良い記事で詳しくわかるよ。これ、すごく理解の助けになったんだ：<br>https://arxiv.org/abs/2304.15004<br>https://www.wired.com/story/how-quickly-do-large-language-mo..." userName="exasperaited" createdAt="2025/08/14 22:06:13" color="#ff5c5c">}}




{{<matomeQuote body="なんでダメなの？特定のサイズのモデルってのは、特定のニューロンとか機能を持つもんだよ。https://www.youtube.com/watch?v=AgkfIQ4IGaM これ、幻じゃないでしょ、明らかに小さいモデルじゃ無理な能力じゃん。パラメータとか隠れ層が少ないモデルは、顔を認識するニューロンを持てないんだよ。" userName="jychang" createdAt="2025/08/14 23:00:27" color="#ff5733">}}




{{<matomeQuote body="画像全部をまとめる単一ニューロンモデルを想像してみて。顔と非顔で平均活性化が同じになることもあるけど、めっちゃ可能性広いからかなり稀。だから全体で見ると、このニューロンは顔を区別できるんだ。ニューロンが増えると、顔の識別精度はどんどん上がるけど、全く顔を認識できない状態から、たった1個ニューロン追加で完璧になる、なんてことは絶対ないよ。" userName="yorwba" createdAt="2025/08/15 07:42:19" color="#ff5c5c">}}




{{<matomeQuote body="＞モデルが全く顔を認識できないサイズなんてない<br>それ本当。<br>＞たった1個ニューロン追加で完璧になる<br>それは違うね。ニューロンじゃなくて特徴で考えてみて。特徴は複数のニューロンに分散することもある（polysemanticity）。もし複数のニューロンが特徴を完璧に記述するなら、全部大事だよ。Universal Approximation Theoremから、十分大きいネットワークがあれば、最終的には0からn個のニューロンの間で望む結果が得られるはず。" userName="jychang" createdAt="2025/08/16 06:34:05" color="#ff5733">}}




{{<matomeQuote body="＞複数のニューロンが特徴を完璧に記述するなら、全部大事<br>それさ、モデルを最初から学習し直す前に、それらのニューロンを1個削除しても、polysemanticityがちょっと増えて性能もちょっと下がるだけだよ。厳密なサイズの境界なんてなくて、ただもっと正確な近似の連続的な幅があるだけさ。" userName="yorwba" createdAt="2025/08/16 08:33:43" color="#ff5c5c">}}




{{<matomeQuote body="それ自体がすごく面白くて、もっと研究が必要だよね。" userName="victorbjorklund" createdAt="2025/08/14 17:16:36" color="">}}




{{<matomeQuote body="それは主に高次元空間でのスパース性が関係してるね。極端にスケールすると、全部めっちゃ遠く離れて、空間はスカスカになるし、ランダムなベクトルはほぼ直交するようになる。これ全部が最適化をめちゃくちゃ遅くして難しくするんだ。いわゆる”次元の呪い”の一側面ってわけ。" userName="anvuong" createdAt="2025/08/14 19:16:02" color="#ff5c5c">}}




{{<matomeQuote body="よく知られてるけど、ちゃんと理解されてないんだよね。" userName="jebarker" createdAt="2025/08/14 16:43:01" color="">}}




{{<matomeQuote body="それは広くは当てはまらないよ。例えば、GPT-4の技術レポートでは、実験のほとんどが最終モデルより1000倍小さいモデルでやったって言ってるしね。" userName="jph00" createdAt="2025/08/14 20:51:27" color="#ff5c5c">}}




{{<matomeQuote body="確かにその通りだけど、個人的には小さいモデルの領域だと、スケーリング法則の曲線に合うような改善には、固有の選択バイアスがあるんじゃないかって思うな。" userName="tmule" createdAt="2025/08/15 00:46:12" color="">}}




{{<matomeQuote body="でもさ、なんで？なんでか分からないなら、どうやって解明するの？" userName="indoordin0saur" createdAt="2025/08/14 17:16:40" color="">}}




{{<matomeQuote body="筆者がやってるのは事前学習だけど、これはGoogleとかMetaみたいなモデル開発者がやることなんだ。普通の企業はファインチューニングとか継続事前学習の方がいいよ。筆者は学術的な理由でやってるんだね。" userName="leopoldj" createdAt="2025/08/14 15:48:46" color="#ff5733">}}




{{<matomeQuote body="ベンチマーク論文で共通のパラメーターや計算予算を使わないのはずっとモヤモヤするよ。まぁ、そうすれば進歩したって言いやすいんだけどさ…。" userName="smeeth" createdAt="2025/08/14 14:19:52" color="">}}




{{<matomeQuote body="https://github.com/KellerJordan/modded-nanogpt はその点でめちゃくちゃ良いよ。" userName="pizza" createdAt="2025/08/14 17:23:23" color="">}}




{{<matomeQuote body="研究者としてわかるけど、これって簡単じゃないんだよ。GPU間の計算が単純じゃないし、並列処理も問題になる。バッチサイズが1ノードで安定しても2ノードだと不安定になることもあるんだ。みんな知らないでしょ？パラメータやGMACs、スループットを書いてくれると助かるね。レビューアは「スケールが全て」って思ってるから、「GPUが貧しい人は無視」って感じ。僕のモデルが100倍小さくてコストも低いのに、「なんで良くないの？」とか「大きいモデルを蒸留しないの？」って言われることもある。これってマジで frustrating だよ。Yi TayもTwitterで「Fuck theorists」って言ってたしね。" userName="godelski" createdAt="2025/08/14 23:48:31" color="#785bff">}}




{{<matomeQuote body="ノートPCでサクサク動くモデルに興味があるな。でも、同じPCで学習するとなると、数日とか、もっとかかるかもね。" userName="ai-christianson" createdAt="2025/08/14 14:27:07" color="">}}




{{<matomeQuote body="訓練されるモデルのデータ「環境」がすごく重要だから、面白い例えだよね。" userName="biophysboy" createdAt="2025/08/14 13:16:51" color="">}}




{{<matomeQuote body="その通り。単一のランダムシードやデータシャッフルで frontier models を YOLO ランするのは、「分子生物学」を研究するには限界があるよ。LLMの理解は1850年代の生物学に似てるって考えるのが好きだね。生物学がどう進化したかから、LLMを理解するための実験について多くのヒントが見つかると思う。" userName="jebarker" createdAt="2025/08/14 13:52:00" color="#ff5733">}}




{{<matomeQuote body="Anthropic の LLM の「遺伝学」分析を見るたびに思うんだけど、LLMの創発的な特性は、データ環境と切り離せないよ。もしネットのテキスト構成が違ったら、Anthropic は別の「遺伝学」を見てたはず。LLM生成テキストが増えるにつれて、「根本的な単位」はそれらの関係になるって、もっとはっきりすると思うね。" userName="biophysboy" createdAt="2025/08/14 16:43:52" color="#38d3d3">}}




{{<matomeQuote body="ビッグデータはもういいって！誰かスモールデータに取り組んでる人いない？https://www.youtube.com/watch?v=eDr6_cMtfdA&pp=ygUKc21hbGwgZ..." userName="moojacob" createdAt="2025/08/14 16:32:30" color="">}}




{{<matomeQuote body="ありがとう、LLMについて読んだコメントの中で一番面白かったよ。モデルに「Daisy, Daisy...」って歌わせてみたくなるね。" userName="arethuza" createdAt="2025/08/14 14:27:20" color="">}}




{{<matomeQuote body="「時間」じゃなくて「エネルギー」で比較するべきだよね。どれだけのジュールで最強のモデルが訓練できるか、って観点ならMBPもH100ももっと公平に比べられるのに。" userName="zarzavat" createdAt="2025/08/14 11:15:36" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="効率の話じゃなくて、手軽さの話だろ。H100は普段使いの製品じゃないけど、ノートPCはそうじゃん。" userName="NooneAtAll3" createdAt="2025/08/14 11:21:03" color="">}}




{{<matomeQuote body="H100だってネットとクレカがあればすぐに使えるし、椅子から動かずに済むんだよ。M4の価格で、5分どころじゃない計算時間をもっとたくさん使えるぞ。" userName="Sharlin" createdAt="2025/08/14 14:04:05" color="#ff5733">}}




{{<matomeQuote body="現状、H100が大量に存在するんだから、もう実質的には日常的な製品って言えるんじゃないか？" userName="Der_Einzige" createdAt="2025/08/14 12:58:13" color="">}}




{{<matomeQuote body="2万5千ドルが日常品の値段って、もしそうならあんたが羨ましいよ。" userName="logicchains" createdAt="2025/08/14 13:05:05" color="">}}




{{<matomeQuote body="Macは電力消費で優れてるよね、Nvidia GPUほど電力食わないだろうし。<br>ところで、H100は1時間10ドル以下でレンタルできるらしいから、1時間でどんなモデルが作れるかってテストの方がもっと面白そうだよね。" userName="giancarlostoro" createdAt="2025/08/14 12:13:21" color="#38d3d3">}}




{{<matomeQuote body="買うのは無理でも、レンタルならアリだよね。バリスタが淹れたコーヒーは日常的だけど、たいていの人は高価なプロ用コーヒーマシンなんて買えないのと一緒だよ。" userName="falcor84" createdAt="2025/08/14 13:15:47" color="">}}




{{<matomeQuote body="そこそこのコーヒーマシンは普及してるし、ハンドドリップもできるじゃん。マシン代がネックってより、ただ便利さの問題でしょ。エスプレッソの例えもできるけど、Flairみたいな手動マシンでもかなり良い結果出せるしね。だからレンタルって提案はあまり役に立たないと思うな。BaristaNewsの読者はみんな業務用マシンを知ってるけど、今は自宅の手動マシンで何ができるかって話でしょ。" userName="bee_rider" createdAt="2025/08/14 16:14:41" color="">}}




{{<matomeQuote body="組織は自社のデータを適当なオンラインH100に送るなんて許さないだろ…。" userName="ekianjo" createdAt="2025/08/14 14:50:35" color="#45d325">}}




{{<matomeQuote body="クラウドコンピューティングは好きだけど、GPUを一定期間レンタルするコストと、何年も使える資産の購入コストを比べるのは変じゃない？個人的にはあまり役に立つ比較じゃないと思うな。" userName="dekhn" createdAt="2025/08/14 15:33:39" color="#38d3d3">}}




{{<matomeQuote body="m4はh100とエネルギー効率でそんなに変わらないと思うな。誤字直したよ。" userName="KeplerBoy" createdAt="2025/08/14 11:45:59" color="">}}




{{<matomeQuote body="それは状況によるね。メモリ速度がボトルネックならMacが有利だけど、計算効率だとNVIDIAがAppleを上回ってるよ。もしAppleが本気で競争してたら、NVIDIAがデータセンター市場を独占できなかったはずだよね。" userName="bigyabai" createdAt="2025/08/14 13:34:17" color="#785bff">}}




{{<matomeQuote body="ぶっちゃけ、世界のほとんどの人はM4 Macbookも買えないんだけどね。" userName="jeroenhd" createdAt="2025/08/14 13:12:35" color="">}}




{{<matomeQuote body="＞H100は1時間10ドル以下で借りられるってあったけど、今はもっと安いよ。個人だと2〜3ドルくらいだし、まとめ借りなら＜2ドルもザラだよ。" userName="dtnewman" createdAt="2025/08/14 12:20:10" color="#38d3d3">}}




{{<matomeQuote body="多くの組織はGoogleのサービスを喜んで使ってるし、Googleは安全な計算環境も提供してるよ。てか、個人的な趣味の話かと思ってたんだけど、仕事の話だったの？" userName="Sharlin" createdAt="2025/08/14 15:13:49" color="">}}




{{<matomeQuote body="＞そこそこ良いコーヒーマシンは普及してるし、ハンドドリップもできる。マシンのコストが多くの人にとって制約になるとは思わないって？いやいや、手頃な価格のコーヒーマシンがあるからこそ普及してるんだよ。もし安くなければ、こんなに広まってないってば。" userName="inetknght" createdAt="2025/08/14 20:55:56" color="">}}




{{<matomeQuote body="アクセスの公平性がすごく重要だよ。住宅購入と同じで、必要ならレンタルが効率的。所有すると維持費もかかるし、シリコンの価値は製造技術の進歩でどんどん下がるからね。" userName="sudoshred" createdAt="2025/08/14 21:52:41" color="#45d325">}}




{{<matomeQuote body="俺が働いてきた組織では、計算資源の利用可能性よりセキュリティが重要だったな。インターネット上のものを使うより、ローカルネットワークにあるものを使う方が、ガバナンスや承認の観点からずっと楽なんだよ。" userName="jsperson" createdAt="2025/08/14 14:09:14" color="#ff5c5c">}}




{{<matomeQuote body="どの効率を考えてるの？バンド幅だとM4はH100より〜10倍から〜30倍も低いよ。" userName="menaerus" createdAt="2025/08/14 12:10:23" color="#ff5c5c">}}




{{<matomeQuote body="プログラミング学習ではローカル開発が主流。クラウドは合理的だけど「クレカ出して金払う」ってのは大きな障壁なんだ。特に企業では、経費承認やデータ扱いの問題があるからね。ローカルで動かす方がずっと楽なんだよ。「ツールをDLして実行」ってのは強力だし、それを超えるのは「登録なしでウェブサイト使う」くらいだね。" userName="potatolicious" createdAt="2025/08/14 14:25:14" color="#ff33a1">}}




{{<matomeQuote body="時間じゃなくてエネルギーでしょ？<br>そしたらMBPとH100はもっと同じ土俵になるじゃん。何が言いたいの？<br>ラップトップでできることじゃなくて、MacBook Proでできることで作業量を表現したいってこと？" userName="motorest" createdAt="2025/08/14 15:02:16" color="#ff5733">}}




{{<matomeQuote body="もちろん、もしそのローカルマシンをすでに持ってるならね。<br>Hacker News（HN）の文脈だと、多くの人が持ってるだろうけど。" userName="Sharlin" createdAt="2025/08/14 15:17:28" color="">}}




{{<matomeQuote body="あ、間違って書いちゃった。<br>メモリ効率じゃなくて、エネルギー効率って言いたかったんだ。" userName="KeplerBoy" createdAt="2025/08/14 12:15:17" color="">}}




{{<matomeQuote body="クレジットカードを持ってたとしても、インターネットにアクセスできる人の90%を除外する輸出規制があるんじゃないの？" userName="kragen" createdAt="2025/08/14 23:40:20" color="">}}




{{<matomeQuote body="正直、多くのフルタイムの技術者は、最終的に会社に役立つかもしれないことを楽しんで実験してると思うよ。<br>AIはクールで魅力的だし、週末の終わりで暇な時間があれば、会社の課題を意識して、会社の時間で、時には会社のデータセットを使って、最新のものに触れて実験するのが好きだね。<br>それには会社のベンダー承認と資金が必要。<br>プライベートでは、楽しみたければラップトップを閉じてガーデニングに行くよ。" userName="sethhochberg" createdAt="2025/08/14 17:39:58" color="#ff5733">}}




{{<matomeQuote body="うん、H100を動かすには大きなサーバーラックが必要だよね。<br>でも実際、ほとんどの人はコンシューマーグレードのGPUを積んだPCか、ラップトップグレードのGPUを積んだラップトップを持ってる。<br>クラウドのH100は、利用規約（ToS）や他の契約を弁護士にレビューしてもらう必要があるからカウントしないよ。" userName="0x457" createdAt="2025/08/14 18:20:13" color="#ff33a1">}}




{{<matomeQuote body="H100を1時間借りる方が、M4 MacBookを1時間借りるよりずっと簡単だよ。" userName="wongarsu" createdAt="2025/08/14 13:20:03" color="">}}




{{<matomeQuote body="M4はもう持ってるから、それを動かすコストはすごく小さいよ。" userName="victorbjorklund" createdAt="2025/08/14 17:17:42" color="">}}




{{<matomeQuote body="多くの組織は、ほとんどのことでクラウド環境を使うことに問題ないよ。<br>いつも使ってるクラウドサービスは、他のものと同じくらい安全な計算環境を提供してる。<br>とにかく、この記事が扱ってるような、個人的な実験を想定してたんだ。（もしかしたら、筆者の仕事の一部だったのかもしれないけどね。）" userName="Sharlin" createdAt="2025/08/14 15:18:31" color="#38d3d3">}}




{{<matomeQuote body="はっきりした金額は覚えてなかったけど、ハイエンドなGPUを1時間動かすのに10ドル以下で済むってのは、やっぱすごいことだよね。" userName="giancarlostoro" createdAt="2025/08/14 14:56:37" color="">}}




{{<matomeQuote body="AI効率オリンピック、ついに開幕だね！ノートPCとかデスクトップ、スマホでやる？それとも5分、1時間、1日、1週間かけて？船の上？ヤギと一緒にまで？" userName="aniijbod" createdAt="2025/08/14 13:01:25" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ヤギと一緒にってとこ、Llamaのことかと思ったわ。ボストン訛りでもないと、韻を踏むのは難しいよね。" userName="yojo" createdAt="2025/08/14 14:15:28" color="#45d325">}}




{{<matomeQuote body="”On a boat? With a goat?”は、ドクター・スースが1960年に出版した幼児向け絵本、『緑のたまごとハム』からの引用だって知ってた？" userName="cameronoliver" createdAt="2025/08/15 02:05:23" color="">}}




{{<matomeQuote body="ヴァーナー・ヴィンジの小説に、人間が携帯できるチェスコンピューターをアシスタントに使う話があるんだけど、これってマジでクールだと思うんだよね。大会で電源とチェス時計を提供したり、相手のAIに負担がかかるような手を打つとか、駆け引きも生まれそうで面白そう。" userName="hinkley" createdAt="2025/08/14 18:01:20" color="">}}




{{<matomeQuote body="Maxxxed outなMac Studio M3 Ultra 512GBなら、その船はあんたのヤギを浮かせてくれるぜ！" userName="Nevermark" createdAt="2025/08/14 13:38:20" color="#38d3d3">}}




{{<matomeQuote body="これ、マジでLlamaを叩きのめすくらい速いんだよな…まあ、わかるだろ？若い子たち向けに言うと、このmp3プレーヤーがSpotifyの原型だったんだぜ: https://youtu.be/HaF-nRS_CWM?si=d7WHzkV7CFHJ2hGg" userName="evanmoran" createdAt="2025/08/15 04:05:23" color="#785bff">}}




{{<matomeQuote body="正直、AIってのは新しい高いPCを買わせるための策略だよ。俺は10年以上前のPCでこれ書いてるけど、近所の電気屋のチラシに載ってるPCも全然進化してないように見えるしな。" userName="lifestyleguru" createdAt="2025/08/14 13:39:58" color="">}}




{{<matomeQuote body="90年代や2000年代に数ヶ月でPCが古くなったの覚えてる人なら反論するかもな。70b+のLLMsをローカルで動かしたり学習したりする最先端のことやりたいなら、当然最新のハードウェアが必要だよ。最新のAAAゲーム遊びたいのと同じこと。古いPCでも遊べるゲームや小さなLLMはたくさんあるし、ChatGPTみたいなサービスも使えるんだから、自分でホストしたり学習したい人がいるのが策略ってわけじゃない、そういう人にはそういうシステムが必要なだけなんだ。" userName="542354234235" createdAt="2025/08/14 15:34:16" color="#ff5733">}}




{{<matomeQuote body="正直、最近の新しいハードウェアはゲームが牽引してるよな。ウェブのおかげで90年代のPCも今使えるわけだし。俺はAAAゲームやらなかったから、大学時代はずっと10年前のパーツで全然困らなかったわ。" userName="voidUpdate" createdAt="2025/08/14 14:22:54" color="">}}




{{<matomeQuote body="うちの親がYouTube見るために新しいノートPC買ったんだけど、遅くて変だから90日以内にCostcoに返品しちゃったらしい。代わりに10年前のPCにLinux Mint Mate入れてあげたら、それが完璧だったみたい。" userName="throwawaylaptop" createdAt="2025/08/14 19:47:48" color="#ff5733">}}




{{<matomeQuote body="ヤギってパラメータ多すぎだろ、GPT-4みたいだな。" userName="visarga" createdAt="2025/08/14 13:30:54" color="">}}




{{<matomeQuote body="GO4-T" userName="hinkley" createdAt="2025/08/14 18:02:31" color="">}}




{{<matomeQuote body="GoatLMなら金出すわ。" userName="rPlayer6554" createdAt="2025/08/14 13:33:05" color="">}}




{{<matomeQuote body="「Paris, Franceはノースカロライナ州の都市だ。」って文章、意味不明だろ。<br>特に「officially major people」ってフレーズが最高！普段の会話でどう使えばいいんだろうな？" userName="LorenDB" createdAt="2025/08/14 12:03:39" color="">}}




{{<matomeQuote body="これ嘘じゃん。クリップ見たけど、彼女はAIをAIって言ってたぞ。A1って言ってた時は、明らかにAmerica Firstのこと指してたし。" userName="chias" createdAt="2025/08/14 13:13:21" color="">}}




{{<matomeQuote body="McMahon氏が“AI development”って言った後に2回も“A1 teaching”って言い間違えたらしいよ。Snopesも確認してるし、Gizmodo、Newser、Yahoo News、Mediaite、Cybernewsとかいろんなメディアが本物の言い間違いだって報じてるぞ。" userName="quaristice" createdAt="2025/08/14 13:27:15" color="">}}




{{<matomeQuote body="GPT-2のスピードランの工夫（Muon、より良いinit、学習率の慎重な調整）を導入すれば、もっと高いレベルを目指せると思うよ。参考にしたのはこれね。<br>https://github.com/KellerJordan/modded-nanogpt" userName="tootyskooty" createdAt="2025/08/14 11:46:03" color="#785bff">}}




{{<matomeQuote body="AIって広い言葉だよね。Karpathyのzero-to-heroシリーズだとJupyter Notebookで学習するし、ノートPCでもデータベースの重複排除にかなり強力なネットワーク作れるんだ。データ重複排除とか一般的なMDMって、大企業じゃすごく役立つぞ。" userName="chasd00" createdAt="2025/08/14 14:33:33" color="#45d325">}}




{{<matomeQuote body="もっと小さくて特化したモデルを作るのが価値ありそう。オンデマンドでも良いしね。PolishやAstrophysics、Shakespeareまで知ってるモデルじゃなくて、速くて自分が使うドメインに超集中したモデルが欲しいんだ。汎用LLMに“＜useful task＞に最適化されたモデルを学習するスクリプトを書いて”って言って、そのモデルを動かしたいなぁ。追記：このコメント編集中にGoogleがGemma 3 270Mを発表しちゃったよ。" userName="jl6" createdAt="2025/08/14 16:47:11" color="#785bff">}}




{{<matomeQuote body="機械学習のトレンドの一つだけど、汎用モデルの方が専門モデルを、その専門タスクで上回ることがあるんだって！" userName="erkiserk" createdAt="2025/08/14 17:03:43" color="">}}




{{<matomeQuote body="でもさ、“劣った専門家”でもすごく速く動く（またはメモリ制限がある中で全く動かないよりはマシ）なら、その痛い教訓は喜んで受け入れるよ。" userName="jl6" createdAt="2025/08/14 17:50:59" color="#ff33a1">}}




{{<matomeQuote body="未来のJames Bond映画にこのシナリオ好きだなぁ。Bondは悪者たちを足止めするために、チャットAIに自分を装わせて、その間に裏に忍び込むんだ。でもQがくれたBondペルソナボットは前の戦闘で壊れてる。Bondに残された時間はたった数分。自分を装って敵を騙し、要塞に潜入するのに十分強力なAIモデルを学習できるか！？" userName="bryanrasmussen" createdAt="2025/08/14 15:11:48" color="">}}




{{<matomeQuote body="でもさ…彼がキーボードを必死に叩きつけて“学習”してる様子を見せないとね。サスペンスな音楽が流れる中で、汗が額を伝って、プログレスメーターが少しずつ進んでいくのさ。" userName="rsyring" createdAt="2025/08/14 15:14:24" color="">}}




{{<matomeQuote body="いや、それB級ブランドのありきたりなやつだよ。Bondは学習中に酒を飲んで、とんでもない精度で誰かを撃つだろうね。" userName="bryanrasmussen" createdAt="2025/08/14 15:59:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
