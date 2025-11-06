+++
date = '2025-10-30T00:00:00'
months = '2025/10'
draft = false
title = '蝸牛はいかに音を「計算」するのか？従来の常識を覆す驚きのメカニズム！(2024)'
tags = ["聴覚", "脳科学", "信号処理", "音響学", "生体メカニズム"]
featureimage = 'thumbnails/color1.jpg'
+++

> 蝸牛はいかに音を「計算」するのか？従来の常識を覆す驚きのメカニズム！(2024)

引用元：[https://news.ycombinator.com/item?id=45762259](https://news.ycombinator.com/item?id=45762259)




{{<matomeQuote body="この件を深く掘り下げたいなら、Richard Lyonが数十年間かけて開発したCARFACモデル(Cascade of Asymmetric Resonators with Fast-Acting Compression)があるよ。これは人間の聴覚の最も正確なデジタルモデルだと思う。彼のウェブサイトに人間の聴覚に関する本(Lyon_Hearing_book_01jan2018_smaller...)のPDFがあるよ。URL: https://dicklyon.com/hmh/Lyon_Hearing_book_01jan2018_smaller..." userName="antognini" createdAt="2025/10/30 20:16:23" color="#785bff">}}




{{<matomeQuote body="この記事もこの本も、有毛細胞が音のパルスに位相ロックすることに触れてないね。個々のニューロンは200Hz以上は発火できないけど、ニューロンの集団は数千Hzまでの周波数に位相ロックできるんだ。蝸牛インプラントは特定の周波数に関連する蝸牛内の部位を刺激するだけで、実際の周波数自体は再生しないから(理由は不明だけど)、蝸牛インプラントを使う人は周波数の違いは検出できても、音楽の鑑賞能力は失われちゃうんだ。" userName="dr_dshiv" createdAt="2025/10/31 09:10:37" color="#ff5733">}}




{{<matomeQuote body="そう、これが人間の聴覚と古典的な信号処理アルゴリズムのもう一つの重要な違いだね。通常、オーディオを処理するときはフーリエ変換して位相情報を捨てちゃうんだ。たいてい振幅情報だけで音を理解するには十分なんだけど、耳は実際に位相情報を捉えることができるんだ。（Lyonの本でこのことがどこかで議論されていた気がするけど、読んでから何年も経つから確かじゃないな。）" userName="antognini" createdAt="2025/10/31 16:20:27" color="#45d325">}}




{{<matomeQuote body="でも、それってどういう意味？波形の符号を反転させても同じ音に聞こえるなら、耳がそれを捉えていないとしたら、どんな位相を、何に対して捉えているの？" userName="fluoridation" createdAt="2025/10/31 19:14:54" color="">}}




{{<matomeQuote body="君の質問に直接答えるわけじゃないけど、私たちの位相情報への感性が明らかになる一つの例を共有できるよ。両手が拍手する音を再生するときだね。スピーカーの位相アライメントの問題を見つけるのに最適なテストケースで、スピーカーシステムの評価基準としては過小評価されてるんだ。（専門家でさえ、スピーカーを設計するときに均一な位相応答に多くの労力を費やすことは稀なんだ。周波数応答や高調波歪みレベル、分散、さらには美観が優先されることが多いからね。）<br>同様に、拍手のサンプルで異なる周波数の位相アライメントをいじって、イヤホンやヘッドホンのような位相がコヒーレントな音源を通して再生すると、そのずれはすごく明らかになるよ。" userName="smolder" createdAt="2025/11/01 05:44:24" color="#45d325">}}




{{<matomeQuote body="それは異なる周波数間の**相対位相**のことだよ。耳がグローバルな位相変化を捉えられないというのは正しいね。極端な例としてデルタ関数を考えてみて。無音があって、短いスパイクがあって、また無音になる。この信号の様々な周波数成分の振幅だけを見ていると、ホワイトノイズと区別できないんだ。この信号をホワイトノイズと違うように見せ（そして聞こえ）させている唯一のものは、異なる周波数成分間の相対位相なんだ。耳がこれらの位相の同期を検出する能力は、波形中の”ピーク性”をより簡単に拾うのに役立つんだよ。（これは、ひいては音声の子音を理解するのに重要で、特に騒がしい環境での明瞭度にとって非常に重要なんだ。）" userName="antognini" createdAt="2025/10/31 20:41:51" color="#ff33a1">}}




{{<matomeQuote body="人間の言葉が混雑の少ないスペクトルを占めるという説は、「The Great Animal Orchestra」(https://www.amazon.com/Great-Animal-Orchestra-Finding-Origin...)って本とよく合致してるね。その著者は、数多くの種が音を出す中で、独自の音響ニッチに進化することで、求愛の鳴き声や他の信号を聞き分けられるようになったと詳述してる。すごく興味深いけど、生息地の破壊などでこの現象の強度が低下していることを記録しているから、ちょっと悲しくもなるね。" userName="shermantanktop" createdAt="2025/10/30 18:16:44" color="#38d3d3">}}




{{<matomeQuote body="鳥も、いつ鳴くかを進化させてきたんだ。都会では後で交通騒音が増えるから早めに、一部の森林環境では早朝のうるさい昆虫に邪魔されないように遅めに鳴くようにしてるんだって。" userName="HarHarVeryFunny" createdAt="2025/10/30 18:45:44" color="">}}




{{<matomeQuote body="自然での競争に役立つ進化が消え、都市での競争に役立つ進化が代わりに起こってるのは注目すべきだね。進化は常にトレードオフの連続だよ。もしかしたら、音のバリエーションではなく、時間的なバリエーションを持ってるのかもね。" userName="kulahan" createdAt="2025/10/30 19:49:34" color="">}}




{{<matomeQuote body="自然界で鳥が絶滅することと、都市への適応は、異なる個体群で起こるから、ほとんど別々の話だよ。" userName="jibal" createdAt="2025/10/30 23:16:52" color="">}}




{{<matomeQuote body="これは空いてるニッチを埋めるって話だよ。都市の鳥は長い間、空いてるニッチだったんだ。そこに適応できたやつは、特定の13種類の木でしか生きられない鳥より、個体数を増やして繁栄してる。適応できないやつも、別の方法で強制的に適応させられてるんだ。この世界の変化に対応できるやつが繁栄し、できないやつは苦しむ。それが進化の仕組みだよ。" userName="kulahan" createdAt="2025/10/31 00:43:55" color="#ff33a1">}}




{{<matomeQuote body="進化の仕組みはよくわかってるよ。君のコメントは、僕が言った「トレードオフ」についての指摘に全く反論してないし、答えてもない。僕は鳥には複数の個体群がいるって言ったし、一つの個体群に起こることが別の個体群の運命を決めるようなゼロサムゲームじゃないんだ。そういう考えは、創造論者の「サルがヒトに進化したなら、なんでまだサルがいるんだ？」っていう誤解と同じだよ。" userName="jibal" createdAt="2025/10/31 20:13:05" color="#45d325">}}




{{<matomeQuote body="「君はちょっと話のレベルに合ってないんじゃないかな。進化についてよく知らないみたいだね。」なんて、すごく失礼な言いがかりだね。奇妙なストローマン論法を使い、僕が説明した「ゼロサムゲーム」の意味も全く理解していないみたいだ。彼らにとってはよくあることみたいだけどね。「私たちのエネルギー需要が頭打ちになるって、どんな世界の話だよ？1970年代のヒッピー的考えが今頃復活するなんて本当に驚くよ。」なんて、相手が言ったことを完全に誤解してる。" userName="jibal" createdAt="2025/11/04 02:19:32" color="">}}




{{<matomeQuote body="どんな世界がゼロサムゲームじゃないって言うんだ？人間の人口が他の生物に影響を与えてないと思うのか？オオカミのようなキーストーン種が、文字通り地理的変化を引き起こし、他の種に莫大な影響を与えるほど重要だって知らないのか？君はちょっと話のレベルに合ってないんじゃないかな。進化についてよく知らないみたいだね。" userName="kulahan" createdAt="2025/11/03 21:04:44" color="">}}




{{<matomeQuote body="問題はね、進化って、人間が引き起こす環境変化のペースよりも、はるかに長い時間スケールで作用するんだよ。" userName="didroe" createdAt="2025/10/31 06:58:22" color="">}}




{{<matomeQuote body="このコメントの意図はわかるけど、化石記録を見れば、それは客観的に間違いだよ。過去5億年の11の進化期で、変化の約半分は数時間から数千年で起こった変化が原因で、75％から90％の種が失われたんだ。その時も進化は失敗しなかった。" userName="paulgerhardt" createdAt="2025/10/31 13:52:34" color="#45d325">}}




{{<matomeQuote body="君は大規模な変化が大規模なシフトを引き起こしたってトートロジーを言ってるけど、それは進化が長い期間にわたって作用するという主張とは矛盾しないよ。進化って、人間が認識できるような「シフト」だけじゃなくて、もっと多くのことなんだ。子孫の個体一つ一つが、親からの「シフト」だよ。それに、進化が「失敗する」なんて言うのはカテゴリー間違いだよ。進化は不完全に複製する生物学的メカニズムの必然的な結果で、成功も失敗もない、進行中のプロセスなんだから。" userName="jibal" createdAt="2025/10/31 20:26:11" color="#45d325">}}




{{<matomeQuote body="フーリエ変換って時間精度がないから蝸牛のフィルターとは違うって話、面白いね。<br>耳は信号処理でやるみたいな、窓掛けしたデータの離散フーリエ変換に似たことしてるのかも。周波数と時間にはPauli exclusion principleみたいなトレードオフがあるって、なるほどね。連続フーリエ変換は無限の時間を扱うから、現実の耳とは違うだろうし。" userName="kazinator" createdAt="2025/10/30 17:54:47" color="#ff33a1">}}




{{<matomeQuote body="周波数と時間精度のトレードオフね。FFTは窓の長さで調整できるから、音声認識みたいに、蝸牛も低周波数では周波数分解能、高周波数では時間分解能を使い分けてるってことか。フォルマントや摩擦音、破裂音の検出に役立つって説明、すごく納得したよ！" userName="HarHarVeryFunny" createdAt="2025/10/30 18:37:14" color="#45d325">}}




{{<matomeQuote body="「Pauli exclusion principleに似てる」ってあったけど、それHeisenberg Uncertainty Principleのことじゃないの？Pauli exclusion principleと共役変換に繋がりがあるなんて知らなかったんだけど、どうなんだろう？" userName="xeonmc" createdAt="2025/10/30 18:08:33" color="">}}




{{<matomeQuote body="俺の知る限り、それらは繋がってないよ。" userName="kvakkefly" createdAt="2025/10/30 20:56:23" color="">}}




{{<matomeQuote body="耳は「データのサンプル」とか「窓掛けサンプル」で動いてるわけじゃないと思うよ。だって、そこにはずっと継続する機械的なプロセスがあるんだからさ。" userName="jibal" createdAt="2025/10/30 23:20:33" color="">}}




{{<matomeQuote body="STFT？" userName="energy123" createdAt="2025/10/30 19:25:21" color="">}}




{{<matomeQuote body="昨日、耳がフーリエ変換よりGabor変換やウェーブレット変換に近いっていう記事を読んだよ。両方ともShort Time Fourier Transformsだから、まさにその通りだね！" userName="ducttapecrown" createdAt="2025/10/31 16:24:29" color="#785bff">}}




{{<matomeQuote body="「フーリエ変換」って厳密には無限の「サンプリング」期間を指すから、「有限」の場合はフーリエ級数なんだよね。普段は混同されがちだけどさ。この記事が突いてるのは、その厳密な定義のことっぽい。耳のメカニズムはフーリエ級数とフーリエ変換の中間くらいで、時間的な重み付け関数（フィルター）を使ってるんだ。時間と周波数のトレードオフがあるのがすごく面白いって話だね。" userName="xeonmc" createdAt="2025/10/30 17:32:27" color="#ff5733">}}




{{<matomeQuote body="タイトルはちょっと気に食わなかったけど、記事には人間の音響に関する細かい情報（蝸牛の繊毛の変換実装に関する入門記事へのリンクとか）がたくさんあって、クリックベイトとしては許せるかな。やっぱり厳密な定義と口語的な言葉の間に衝突があるってことだよね。" userName="meowkit" createdAt="2025/10/30 17:48:25" color="">}}




{{<matomeQuote body="そうそう、耳って「ひとつの」フーリエ変換じゃなくて、データのサンプルに対してたくさんのフーリエ変換をやってる感じだよね。時間と周波数の分解能でバランスを取ってるんだ。でも、ほとんどの人はそれをフーリエ変換って言うと思うよ。人間の音声の音響特性と耳の構造に何らかの関係があるっていう仮説、面白いよね。" userName="BrenBarn" createdAt="2025/10/30 19:00:56" color="#ff5c5c">}}




{{<matomeQuote body="＞…人間の音声の音響特性と聴覚系の物理的＼神経学的構造に関係があるという、魅力的な仮説。<br>これって、人間が人間の声を聞き取れるんだから、当たり前のことじゃない？人間が聞けない音や区別できない音はたくさんあるし、音声はそういう音を使ってないわけだしね。" userName="aidenn0" createdAt="2025/10/30 22:54:33" color="">}}




{{<matomeQuote body="うん、でもそれはもうちょっと深い話だよ。耳は特定の周波数帯域にもっと敏感だし、人の声はその帯域に集まってるんだ。単に聞こえるってだけじゃなくて、もっと色々関係があるんだよ。" userName="BrenBarn" createdAt="2025/10/31 09:13:29" color="">}}




{{<matomeQuote body="これは、教科書で理論を読んでワクワクして、いざコードを書き始めたら有限のバッファサイズを選ばなきゃいけないってことに気づくやつだね。よくある話だよ。:-) " userName="foobarian" createdAt="2025/10/30 19:07:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="要するに、耳はフーリエ変換じゃなくて、ウェーブレットみたいな時間局所的な周波数変換をしてるってことだね。耳が処理する音が短い時間で完結してるからなんだ。人間の声が周波数とエンベロープ持続時間の未開拓な部分に進化したって話もあって、耳の蝸牛が声に特化してるのかもってね。音声の位置は、未開拓な場所、脳の処理速度、体の制約のバランスで決まったって説も面白い。" userName="edbaskerville" createdAt="2025/10/30 17:52:38" color="#45d325">}}




{{<matomeQuote body="この記事、変な藁人形論法を立ててる感じがするな。信号処理を分かってる人なら、耳が無限のフーリエ変換をしてるなんて誰も言ってないよ。耳がやってるのはFFTにすごく似てることで、ほとんどの人がフーリエ変換って言うのはそっちのことだろ。ウェーブレットとGaborの中間だって言ってるけど、結果は95-99%同じだしね。単純に言うなら、耳は窓関数付きの離散フーリエ変換をしてるってことでOKじゃない？" userName="crazygringo" createdAt="2025/10/30 21:09:40" color="#38d3d3">}}




{{<matomeQuote body="ちょっと基本的なことかもしれないけど、もし耳が本当にフーリエ変換してるなら、計算が終わるまで一生待たなきゃいけないんじゃない？リアルタイムで聞こえるんだから、絶対そんなことしてないよね。" userName="patrickthebold" createdAt="2025/10/30 19:57:42" color="">}}




{{<matomeQuote body="細かく言うと、FFTじゃなくてDFTのことだよね。耳はアナログな物理プロセスなんだから、離散的なDFTってのはどうなの？むしろ連続で有限なフーリエ級数の方が近いんじゃないかな。ウェーブレット変換はGabor変換みたいな窓関数付きフーリエ変換とは全然違うんだよ。記事が本当に言いたかったのは、そのあたりの違いだろうね。" userName="anyfoo" createdAt="2025/10/30 22:52:44" color="#ff33a1">}}




{{<matomeQuote body="ニューロンってバーストで発火するんじゃない？それって離散的ってことなのかな。" userName="actionfromafar" createdAt="2025/10/30 23:36:17" color="">}}




{{<matomeQuote body="時間-周波数不確定性原理は、高い周波数では時間分解能、低い周波数では周波数分解能が犠牲になるってこと。波長で考えると分かりやすいよ。耳の処理はウェーブレット変換みたいな時間局所化周波数領域変換に近いけど、生理学的なフィルターバンクとして捉える方がいいかも。直交基底関数じゃマスキング効果は捉えられないしね。ヒトの音声の周波数帯は、未利用の音空間の占有、脳の処理速度を考慮した最適な情報密度、進化的な制約、それに動物のサイズが関係してるって説もあるよ。小さい動物は超音波を使うことが多いし。" userName="a-dub" createdAt="2025/10/30 18:09:25" color="#ff5733">}}




{{<matomeQuote body="いや、リアルタイムの音声フィードでも、信号を時間的に区切ってスペクトログラムを作れるじゃん？録音の終わりを待つ必要はないんだよ。詳しくはこちら: https://en.wikipedia.org/wiki/Spectrogram" userName="cherryteastain" createdAt="2025/10/30 20:10:43" color="#38d3d3">}}




{{<matomeQuote body="それって短時間フーリエ変換（Short-Time Fourier Transform）を使ってるよね。耳がやってることとすごく似てるよ。詳しくはこちら: https://en.wikipedia.org/wiki/Short-time_Fourier_transform" userName="IshKebab" createdAt="2025/10/30 20:31:37" color="#785bff">}}




{{<matomeQuote body="小さい動物は発声器官も鳴き声も小さいって話、面白いね！なんだか、全身にわたる声帯（または鳴管）を持った宇宙のトガリネズミが、低い周波数の音を出そうと頑張ってる姿を想像しちゃったよ。" userName="Terr_" createdAt="2025/10/30 19:24:59" color="">}}




{{<matomeQuote body="耳が処理する音は時間的に局所化されてるって言うけど、音って時間的に局所化されてないってどういう意味なんだろう？" userName="lgas" createdAt="2025/10/30 19:35:46" color="">}}




{{<matomeQuote body="そうなんだけど、記事では短時間フーリエ変換とは違うって言ってるんだよね。むしろウェーブレット変換に近いって言ってて、また違う話だよ。" userName="anyfoo" createdAt="2025/10/30 23:03:08" color="">}}




{{<matomeQuote body="たとえ話なんだけど、ドアをノックするとき、偶然ぶつかったと間違えられないように、どんなリズムや長さにするかどうやって決めてる？" userName="xeonmc" createdAt="2025/10/30 18:04:41" color="">}}




{{<matomeQuote body="僕のノックの決め方だと、「シェイブ・アンド・ア・ヘアカッツ（Shave and a haircut）」しかないな。" userName="toast0" createdAt="2025/10/30 18:06:14" color="">}}




{{<matomeQuote body="でも、ほとんど同じじゃん。誰も正確にフーリエ変換やSTFTだって言ってるわけじゃないし。でも、STFT（またはウェーブレット変換）とすごく似てるよ。この記事は「牛は実は球体じゃないよ、みんな」って言ってるようなもんだね。" userName="IshKebab" createdAt="2025/10/30 23:19:36" color="#785bff">}}




{{<matomeQuote body="Well without the humorous size difference, this is basically what whales and elephants do for long distance communication." userName="bragr" createdAt="2025/10/30 20:05:02" color="">}}




{{<matomeQuote body="Ears evolved long before speech did. Probably in step with vocalizations however." userName="SoftTalker" createdAt="2025/10/30 18:10:10" color="">}}




{{<matomeQuote body="Even if they do (and I honestly have no idea), isn’t it the frequency, i.e. the output of the basilar membrane in the ear, and not a sample in time of the actual sound wave which would correspond to a short-time frequency transform, that gets sampled here?And the basilar membrane seems like a pretty un-discrete (in time, not in frequency) process to me. But I’m not 100% sure.Sure, if you go small enough, you end up with discrete structures sooner or later (molecules, atoms, quantum if you go far down enough and everything breaks apart anyway), but without knowing anything, the sensitivity of this whole process still seems better modeled as continuous rather than discrete, the scale at which that happens seems just too small to me." userName="anyfoo" createdAt="2025/10/31 00:23:00" color="#ff33a1">}}




{{<matomeQuote body="Was playing around with a fundamental frequency calculator [0] to associate certain sizes to hertz, then using a tone-generator [1] to get a subjective idea of what it’d sound like.Though of course, nature has plenty of other tricks, like how Koalas can go down to ~27hz. [2][0] https://acousticalengineer.com/fundamental-frequency-calcula...[1] https://www.szynalski.com/tone-generator/[2] https://www.nature.com/articles/nature.2013.14275" userName="Terr_" createdAt="2025/10/30 21:33:25" color="#45d325">}}




{{<matomeQuote body="It would look like a Fourier transform ;)Zooming in to cartoonish levels might drive the point home a bit. Suppose you have sound waves  |---------|---------|---------|<br><br>What is the frequency exactly 1/3 the way between the first two wave peaks? It’s a nonsensical question. The frequency relates to the time delta between peaks, and looking locally at a sufficiently small region of time gives no information about that phenomenon.Let’s zoom out a bit. What’s the frequency over a longer period of time, capturing a few peaks?Well...if you know there is only one frequency then you can do some math to figure it out, but as soon as you might be describing a mix of frequencies you suddenly, again, potentially don’t have enough information.That lack of information manifests in a few ways. The exact math (Shannon’s theorems?) suggests some things, but the language involved mismatches with human perception sufficiently that people get burned trying to apply it too directly. E.g., a bass beat with a bit of clock skew is very different from a bass beat as far as a careless decomposition is concerned, but it’s likely not observable by a human listener.Not being localized in time means* you look at longer horizons, considering more and more of those interactions. Instead of the beat of a 4/4 song meaning that the frequency changes at discrete intervals, it means that there’s a larger, over-arching pattern capturing ”the frequency distribution” of the entire song.*Truly time-nonlocalized sound is of course impossible, so I’m giving some reasonable interpretation." userName="hansvm" createdAt="2025/10/30 19:53:14" color="#ff5c5c">}}




{{<matomeQuote body="The article does a fair job of positing that the ear provides temporal/frequency resolution along a logarithmic scale but doesn’t assert clearly that this resolution is fixed with the STFT and the Gabor variant.  It hints that wavelets are more akin in terms of perceptual scaling as a function of frequency but not articulately.  But it is interesting that the author’s thesis, how Fourier mathematics isn’t appropriate for describing human perception of sound, relates human hearing to the Gabor transform which is thoroughly a derivative of discrete Fourier mathematics." userName="waffletower" createdAt="2025/10/31 02:03:45" color="#ff33a1">}}




{{<matomeQuote body="Is that an human understanding or is it just an AI that read the text and ignored the pictures?Why do we need a summary in a post that adds nothing new to the conversation?" userName="FarmerPotato" createdAt="2025/10/30 18:46:07" color="">}}




{{<matomeQuote body="＞  one would suspect that the specific characteristics of the human cochlea might be tuned to human speech while still being able to process environmental and animal sounds sufficiently well.I wonder if these could be used to better master movies and television audio such that the dialogue is easier to hear." userName="km3r" createdAt="2025/10/30 20:45:20" color="">}}




{{<matomeQuote body="Yes, for the vanilla Fourier transform you have to integrate from negative to positive infinity. But more practically you can put put a temporally finite-support window function on it, so you only analyze a part of it. Whenever you see a 2d spectrogram image in audio editing software, where the audio engineer can suppress a certain range of frequencies in a certain time period they use something like this.It’s called the short-time Fourier transform (STFT).https://en.wikipedia.org/wiki/Short-time_Fourier_transform" userName="bonoboTP" createdAt="2025/10/30 20:11:19" color="#ff33a1">}}




{{<matomeQuote body="タイトルはクリックベイトっぽいって意見に賛成。記事自体は色々なtransformをちゃんと区別してて良いんだけど、タイトルだと耳が周波数分解を全くしてないみたいに聞こえるのが残念だわ。" userName="anyfoo" createdAt="2025/10/30 23:23:06" color="">}}




{{<matomeQuote body="人間の声の周波数帯って、身長の機能なんじゃないかな？子供は声が高くて、大人は低いし、弦楽器のビオラとベースみたいにね。専門家じゃないけど、ちょっと思っただけだよ。" userName="AreYouElite" createdAt="2025/10/30 18:01:20" color="">}}




{{<matomeQuote body="記事には「蝸牛基底膜が周波数分離を行う」って書いてある。蝸牛はFourier transformじゃなくて、色んな周波数に敏感なセンサーがある生体力学的プロセスで周波数分解してるんだよ。網膜の錐体細胞が色んな周波数範囲に敏感なのと似てる。タイトルが耳は周波数分解しないと示唆してるって主張は間違いだよ。URL: https://en.wikipedia.org/wiki/Fourier_transform" userName="jibal" createdAt="2025/10/31 04:22:11" color="#ff5733">}}




{{<matomeQuote body="「離散サンプルを周波数の強度に変える」って説明は、discrete wavelet、discrete Gabor、Hadamard transformsにも当てはまるし、Fourier transformと「95–99%同じ」ってのは違うと思うな。耳はcontinuous timeで機能してて離散サンプルを取らないから、Fourier transformの「discrete」の意味を勘違いしてるんじゃない？" userName="kragen" createdAt="2025/10/31 05:28:05" color="#785bff">}}




{{<matomeQuote body="それだと、時間の始まりよりずっと前から存在して、永遠に聞き始めなきゃいけないってことになっちゃうね。" userName="xeonmc" createdAt="2025/10/30 20:01:48" color="">}}




{{<matomeQuote body="まさにその通り。<br>これは「no cats and dogs don’t actually rain from the sky」みたいな記事だよね。signal processingを少しでも知ってる人は、耳がFourier transformしてるなんて思ってない。STFTみたいなことしてるかって言ったら、もちろんそうだし、記事もそれに反してないよ。" userName="IshKebab" createdAt="2025/10/30 20:30:30" color="">}}




{{<matomeQuote body="うわー、耳の仕組みについての議論、めっちゃ面白いね！音の処理ってこんなに複雑なんだ。signal processingの概念と比較されるとすごく分かりやすいよ。" userName="rattan12138" createdAt="2025/10/31 08:15:48" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="tip linksとion channelsの動画、いいね！耳鳴りの原因を探ってて、そのことについて色々調べたんだ。髪の毛が過度に曲がると壊れてion channelが開きっぱなしになり、細胞が継続的に発火するんじゃないかと推測してる。<br>あと、耳には能動的増幅機能もあるんだって。スピーカー型細胞に電気信号をつないで振動させられるよ。URL: https://youtu.be/pij8a8aNpWQ" userName="tim333" createdAt="2025/10/30 22:00:20" color="#ff5733">}}




{{<matomeQuote body="このテーマ、ずっとモヤモヤしてたんだ。<br>音響学に詳しい人にいつも聞いてたんだけど、蝸牛が何らかのFourier transformをするとして、ベクトル空間の基底として正弦波を使う可能性ってどれくらいなの？もしそうなら、ちょっと違う波形でも基底として使えるはずだよね。<br>剛性と非線形性があるから、物理学の理想的なゴムモデルと現実の完全な正弦波は違うだろうし。" userName="adornKey" createdAt="2025/10/30 18:14:00" color="#ff5c5c">}}




{{<matomeQuote body="おいおい、複雑指数関数って線形時不変系の固有関数なんだぜ。で、音の伝達って線形時不変系だらけじゃん？<br>だから耳が正弦波を完璧に検出できるわけじゃないけど、できるだけ近づけるよう進化してきたんだな。そうすれば、崖で反響した鳥の歌声やオオカミの遠吠えも、そっぽを向いてる赤ちゃんの泣き声も認識できるってわけよ。" userName="kragen" createdAt="2025/10/31 06:01:20" color="#785bff">}}




{{<matomeQuote body="ぶっちゃけ、蝸牛は生物学的・物理的な限界の中で頑張ってるって感じだな。基本的に波が伝わる三角みたいな構造で、その端にセンサーが並んでるんだ。<br>Gaborフィルターのフィルターバンクに似てて、三角形の端に沿って周波数が上がると反応するの。だからフーリエ変換って言えるけど、それは単に場所によってセンサーが違う周波数に反応してるってことなんだよね。" userName="empiricus" createdAt="2025/10/30 20:52:12" color="#38d3d3">}}




{{<matomeQuote body="うん、でも周波数だけじゃなくて波形もめちゃくちゃ大事だよ。例えば三角波だと、シンプルな正弦波に比べてすごくノイズが多いって言われちゃうじゃん？<br>正弦波をベクトル空間の基底にすると、三角波はホントにノイズまみれの混合に見えるんだ。<br>僕が疑問なのは、本当に基本要素が正弦波なのか、それとも蝸牛の基本的な固有波形が別の形（例えば正弦波よりちょっと広かったり狭かったり）なのかってこと。<br>もし耳の中の物理が非線形だったら、もしかしたら正弦波が聞き手にとって最も純粋な波形じゃないかもしれない。<br>物理学者のほとんどは正弦波か、たまに矩形波を変換の基底としてしか知らないけど、数学的にはもっといろんなものを使えるんだぜ。正弦波に似てるけど違う、みたいなやつとかね。" userName="adornKey" createdAt="2025/10/30 21:10:01" color="#ff33a1">}}




{{<matomeQuote body="でもさ、三角波に周波数依存の位相シフトをかけたら、周波数がめちゃくちゃ低くない限り、誰も違いなんてわからないだろ。" userName="kragen" createdAt="2025/10/31 06:03:11" color="">}}




{{<matomeQuote body="ちょっと注意ね。この動画、最後に大きくて甲高い音で終わるから、ヘッドホン外したくなると思うよ。聴覚に関する動画なのに、皮肉だよね。" userName="Cadwhisker" createdAt="2025/10/30 22:58:40" color="">}}




{{<matomeQuote body="3Blue1Brownにすごく良い説明があるよ、これ→ https://www.youtube.com/watch?v=spUNpyF58BY<br>数学の授業よりずっと直感的に理解できたんだ。" userName="TobTobXX" createdAt="2025/10/30 17:38:52" color="#38d3d3">}}




{{<matomeQuote body="まあ大体、波形を時間／振幅（波長込み）の列／行から、周波数／振幅（ある瞬間の）の列／行に変換する「コピー＞特殊貼り付け＞転置」みたいなもんだよ。みんな「すごい！」って言うけど、多分その通り。僕の理解はこんな感じ。" userName="CGMthrowaway" createdAt="2025/10/30 17:44:24" color="">}}




{{<matomeQuote body="だいたい合ってるけど、位相も含まれるんだよ。それが大事なこともあるからね。" userName="TheOtherHobbes" createdAt="2025/10/30 17:48:51" color="">}}




{{<matomeQuote body="結局、ほとんどの場合、耳には位相ってあんま関係ないらしいね！一部の広帯域信号では位相が重要だけど、たいていの人は通常の音声とhilbert-90-degree-shifted-audioの区別がつかないみたいだよ。" userName="bobmcnamara" createdAt="2025/10/30 18:03:19" color="">}}




{{<matomeQuote body="可逆変換するためには位相が必要なんだよ。そうじゃないと、ただのFunctionalになっちゃうだけだよ。" userName="xeonmc" createdAt="2025/10/30 18:09:51" color="">}}




{{<matomeQuote body="これ読んでみて（無料だよ）: The Scientist’s and Engineer’s Guide to Digital Signal Processing* https://www.dspguide.com<br>すごく網羅的だけど、分かりやすく書かれていて、Fourier transformsの仕組みを直感的に理解できるように説明してくれるよ。" userName="anigbrowl" createdAt="2025/10/30 18:48:48" color="#ff5733">}}




{{<matomeQuote body="複雑な波形を個々の成分に分解する、本当に素晴らしい数学だよね。オーケストラの曲を各楽器の貢献に分解するみたいな感じ。これが可能で、しかもJoseph Fourierがそれを解明して世界と共有したって知った時は、正直驚きと感動でいっぱいだったよ。<br>この動画が、それが何でどう機能するのかを素人にも分かりやすく説明してくれてるんだ。3blue1brown - https://www.youtube.com/watch?v=spUNpyF58BY" userName="garbageman" createdAt="2025/10/30 17:40:50" color="#ff5c5c">}}




{{<matomeQuote body="ハハハ、大学2年生の時にこれを学ぼうとしてたんだよね…ちょうどelectrical engineering focussed degreeからsoftware oneに切り替えた時だったな！<br>たぶん、今こそちゃんと学ぶべきなのかも…" userName="jama211" createdAt="2025/10/30 17:40:48" color="">}}




{{<matomeQuote body="一番簡単な説明はこれだよ: 波形（amplitude x time）を、ステレオについてるspectrogram（amplitude x frequency）みたいに変えるものだね。" userName="adzm" createdAt="2025/10/30 17:42:58" color="#45d325">}}




{{<matomeQuote body="あと位相ね。みんな、それが単なる想像上のものみたいに、いつも位相のことを忘れちゃうんだよね。" userName="Chabsff" createdAt="2025/10/30 17:46:31" color="">}}




{{<matomeQuote body="ハハ、僕の理解だと、Fourier transformでは位相はimaginaryなんだよね。Complex numbersが使われて、imaginary portionが実際に位相を表してる。このround-trippingで位相が失われるせいで、逆変換してtime-based waveformを作っても、見た目は元通りにはならないって聞いたよ。でも、僕たちのbrainは位相を全然気にしてないから、耳には同じように聞こえるんだ。（やったね、MP3！）" userName="JKCalhoun" createdAt="2025/10/30 18:35:40" color="#785bff">}}




{{<matomeQuote body="実際は、Kramers-Kronig relationによって、time signalがcausalだと仮定すれば、real partsからimaginary partを推測できるんだよ。だから、causalityを仮定すれば位相は全く失われないんだ。<br>あと、細かいことだけど: 位相はspectrumのimaginary exponentであって、直接的なimaginary partじゃないんだ。つまり、complex amplitudeのlogarithmをとって、log-magnitude（real）とphase（imag）を得るんだよ。" userName="xeonmc" createdAt="2025/10/30 19:50:07" color="#ff5c5c">}}




{{<matomeQuote body="僕のくだらないjokeに誰か気づいてくれて嬉しいな :), ちょっと心配してたんだ。<br>それはさておき、imaginary componentをわざとdiscardしない限り、round-trippingはaxiomatically so、うまくいくんだよ。" userName="Chabsff" createdAt="2025/10/30 18:59:28" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
