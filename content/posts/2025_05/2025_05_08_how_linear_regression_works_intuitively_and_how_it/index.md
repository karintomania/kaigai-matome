+++
date = '2025-05-08T00:00:00'
months = '2025/05'
draft = false
title = '線形回帰が直感的にわかる！どうして勾配降下法につながるの？'
tags = ["機械学習", "統計", "データサイエンス", "アルゴリズム"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> 線形回帰が直感的にわかる！どうして勾配降下法につながるの？

引用元：[https://news.ycombinator.com/item?id=43895890](https://news.ycombinator.com/item?id=43895890)




{{<matomeQuote body="least squares regressionの面白い性質として、予測値がgiven right-hand-side variablesにおけるtarget variableの条件付き期待値（平均）になるってのがあるんだ。だから記事の例だと、与えられたサイズの家の平均価格を予測してるわけだね。平均を予測するって考え方は、target variableのconditional distributionの他の性質、例えばmedianとか他のquantilesにも拡張できるんだ[0]。これには興味深い示唆があって、medianが平均よりoutliersに強いっていうよく知られた性質とかね。実際、記事で触れられてるabsolute loss functionは、conditional median予測を与えることが示されてるんだ（ユニークじゃない場合はmid-pointを使うけど）。だから、記事の例みたいに、特異な理由（例えば元有名人の家とか汚染された土地とか）で異常に高いか低い値を持つoutliersがデータセットに含まれてるなら、absolute lossの方がleast squaresより賢明な選択肢になり得るんだよ（もちろん、これに対処する他の方法もあるけどね）。ここで触れる価値はあると思うんだ、なぜなら記事の筆者はabsolute loss functionに対して特定の恨みを持ってるみたいだからさ。完璧じゃないけど、美点もあるしleast squaresよりいくつかの利点もある。多くのことと同じで、トレードオフなんだよ。[0] https://en.wikipedia.org/wiki/Quantile_regression" userName="c7b" createdAt="2025/05/08 06:55:15" color="#45d325">}}




{{<matomeQuote body="そうだね。noiseがGaussianなら二乗誤差が最適でconditional meanを推定するし、noiseがLaplaceなら絶対誤差が最適でconditional medianを推定するんだ。もし君の住宅データにeight-figure outliersがいくつかあるなら、heavy tailsがGaussian assumptionを破るから、例えば90th percentileを対象にしたquantile regressionの方が、plain least squaresよりもっとrobustに価格を予測するだろうね。" userName="easygenes" createdAt="2025/05/08 09:48:35" color="#45d325">}}




{{<matomeQuote body="確かに。でも、normalityはasymptotic inferenceにしか必要ないってことを言っておく価値があるよ。least squaresが際立ってることの多く、例えばconditional mean forecastであることとか、それがbest linear unbiased estimatorであることとかは、error distributionに関係なく成り立つんだ。多くの人がnormalityの重要性を過大評価しがちな印象があるね。実際には、他のことにもっと心配するだろうな。記事の例だって、もし実際の分析だったら、omitted variablesについて懸念が生じるだろうね。明らかに、家の価格はサイズ以上の要因、例えばlocationとかに依存するわけだ。ここでのNon-normalityは、underspecified modelの単なるartifactかもしれないね。" userName="c7b" createdAt="2025/05/08 17:38:25" color="#45d325">}}




{{<matomeQuote body="これから大学に入る学生とか、もっと悪いことにすでに卒業した人が、こういう統計学を、数式の意味を深く理解して、どうやって学ぶんだろう？単にcookbook formulasをplug and chuggingしたり、deep semanticsなしにmechanically theoremsをprovingしたりするんじゃなくて。" userName="lupire" createdAt="2025/05/08 11:36:56" color="">}}




{{<matomeQuote body="Statistical Rethinkingはこういうことを説明するのにかなり良い本だよ。https://xcelab.net/rm/" userName="ayhanfuat" createdAt="2025/05/08 12:48:22" color="">}}




{{<matomeQuote body="Basically all of the Andrew Gelman booksも良いね。Data Analysis... https://sites.stat.columbia.edu/gelman/arm/<br>Regression and Other Stories: https://avehtari.github.io/ROS-Examples/Wasserman’s All of Statisticsはmathematical statisticsへのすごく良い入門書だよ（Gelmanの上のやつはもっとpractically and analytically focusedだけど）。でも、地元の大学で良いstatistics courseを見つけて、auditしてみるか夜間にやってみるのが多分一番簡単だろうね。" userName="disgruntledphd2" createdAt="2025/05/08 14:37:12" color="">}}




{{<matomeQuote body="“for engineers”バージョンは取らない方が良いよ。<br>”proving” theorems mechanically<br>君は悪い経験をしたんだと思うよ、だってproofを書くことはdeep understandingをexplainingすることだからね。" userName="monkeyelite" createdAt="2025/05/08 14:31:06" color="">}}




{{<matomeQuote body="”I think you’ve have a bad experience because writing a proof is explaining deep understanding.”<br>君の言葉遣いが鍵だと思うな—proofをcoming up withするのはcreative processだ。でもproofをwritingすることは、very much deep understandingをexplainingしたりcreatingしたりする必要はないんだ。proofをwritingすることはmechanicallyに、instructorもstudentもできちゃうし、もしそうするなら、understandingをdemonstratesしたりcreatesしたりしないんだ。<br>（あと、統計学は、他のほとんど全てのmathematically based subjectよりも、rigorous mathematical foundationsは重要だけど、those foundationsのcomplete theoretical understandingが、actual practice of statisticsにany lightをshedする必要はないんだよ。）" userName="JadeNB" createdAt="2025/05/08 15:52:22" color="">}}




{{<matomeQuote body="君の言う通りだね。proofをcoming up withするのはcreative processだよ。mathematicsの各major proofはとてもuniqueで、通常はits inventorの名前が付けられるんだ。だから、there are infinitely many primesだというEuclid’s proofとか、eはirrationalだというEuler’s proofとか、Fermat’s last theoremのWiles’ proofがあるんだね。" userName="alejohausner" createdAt="2025/05/08 17:23:41" color="">}}




{{<matomeQuote body="”need not shed any light on the actual practice of statistics.”<br>それはこのコメントがasked forことじゃないでしょ。" userName="monkeyelite" createdAt="2025/05/08 17:00:36" color="">}}




{{<matomeQuote body="Quantile regressionはめっちゃいいよ、特に平均だけじゃなくていろんな情報が必要な時にね。例えば10パーセンタイルとか90パーセンタイルのquantileモデルとかは、何かを決めるときにすごく役立つの。Rにはqgamっていうすごくパワフルな非線形quantileモデルをフィットさせられる素晴らしいパッケージがあるんだ。これはRの”killer apps”の一つで、僕がPython一本に絞れない理由だよ。" userName="levocardia" createdAt="2025/05/08 17:35:05" color="#38d3d3">}}




{{<matomeQuote body="これ、すごく軽くて分かりやすいんだけど、ここで求めてるような統計的な直感を築くところまではいかないね。Gaussian noise modelに繋げたり、自然なデータに対する予測能力との関連をちゃんと示さずに、Squared errorsのスムーズさにばかり固執してる感じ。" userName="easygenes" createdAt="2025/05/08 07:46:14" color="#ff5733">}}




{{<matomeQuote body="深く理解したいなら、ブログより本がいいかも。「All of statistics」がおすすめだけど、積分の知識がいるかもね。自分でモデルを作るのもいい学習法だよ。data campみたいなのは繰り返しが多いのが難点。" userName="akst" createdAt="2025/05/08 09:25:29" color="#45d325">}}




{{<matomeQuote body="深い直感のある良い記事を集めてる、Hacker Newsっていう賢い人がいっぱいいるサイトがあるよ。何年も行ってないけどね。" userName="jovial_cavalier" createdAt="2025/05/08 12:31:29" color="">}}




{{<matomeQuote body="うん、あとこれ、もしかしたらLLMが一部書いたのかもしれないね。でも、そのLLMがあなたの批判を取り入れて、元記事を改善して、あなたが「これは最高の教科書に近い」って思えるものができるまで繰り返せる。ただ一つ足りないのは「魂」だね。この文章の裏に誰か人がいる感じが全然しないんだ。" userName="jfjfjtur" createdAt="2025/05/08 09:23:41" color="">}}




{{<matomeQuote body="あなたの言ってることをもっと詳しく書いてる資料とかリンクとか、何か知ってる？" userName="BlueUmarell" createdAt="2025/05/08 08:58:26" color="">}}




{{<matomeQuote body="CMUの講義ノート [0] は、Gaussian noise linear modelから始めて、log-likelihoodを導出して、解析的なアプローチを示すっていう直感的な方法でアプローチしてると思うよ。ただgradient methodsへの橋渡しはないけどね。gradientについては、Stanford CS229 [1] が直接入ってるよ。" userName="easygenes" createdAt="2025/05/08 10:09:46" color="#45d325">}}




{{<matomeQuote body="この投稿には大事な文脈がちょっと抜けてると思うんだ（’IMO’）。載せてるデータセットは多分Linear Regressionとか、古典的なモデルにはあんまり合ってないんじゃないかな。データセットの片方の端っこで分散がすごく大きいのがわかるでしょ。だから、たとえGradient Descentみたいな可視化で良い感じのベストモデルが見つかっても、そんなに予測力はないかもしれないんだ。こういうデータセットの一般的な対処法の一つは、データを別の空間に写像して、分布をもっと均一にしてから、その空間でモデルを作るってやり方だよ。元のデータセットの予測は、モデルの出力に逆写像をかけることでできるんだ。" userName="tibbar" createdAt="2025/05/08 16:26:31" color="">}}




{{<matomeQuote body="分散が一定じゃなくてもLinear Regressionの係数はバイアスされないから予測は大丈夫だよ。ただ、Standard Errorsを過小評価してp-valuesが小さくなりがち。log-transformとかWeighted Least Squaresで対処できる。反復的な手法の練習にも良いよ。" userName="levocardia" createdAt="2025/05/08 17:27:50" color="#ff5733">}}




{{<matomeQuote body="俺の仕事では、Linear RegressionよりMultiple Linear Regressionをよく使うんだ。これは複数の予測子を扱えて便利なんだよね。予測子間の多重共線性がひどい時は、RidgeとかLASSO、Elastic Netみたいな手法が良いよ。Gradient Descentとの関連性は分からないけど、非正規の誤差分布ならGeneralized Linear Modelsが良いかもね。" userName="SubiculumCode" createdAt="2025/05/08 16:54:25" color="#ff5733">}}




{{<matomeQuote body="いや、Kernel Trickは別物だよ。基本的にはモデルの非線形基底表現なんだ。Polynomial Modelとかsplinesを使うのがそう（ML界隈の言葉だけど）。データ変換はYの変換で、log(y)とかを使うんだ。右に歪んだデータ（家の価格とか）に使うのが一般的。sqrt(y)とか1/yも稀に役立つよ。" userName="levocardia" createdAt="2025/05/08 17:32:41" color="#ff33a1">}}




{{<matomeQuote body="まあ正直言って、Kernel Trickの「トリック」な部分は、データを暗黙的に高次元空間に変換して、その空間で線形関数をフィットさせることだよ。つまり、入力を変換して、変換前より線形関数がフィットするようにするんだ。これは、計算コストをかけずに高次元で線形フィットを可能にする技術なんだ。" userName="psb217" createdAt="2025/05/08 18:08:42" color="#45d325">}}




{{<matomeQuote body="いや、実は君が間違ってると思うな。線形モデルがより正確に状況を捉えられるような非線形変換でモデルを表現するっていうのが、まさにKernel Trickがやることなんだ。まあ、ここで説明されてる状況はKernel Trickより広いんだけど、Power Transformみたいなものもそれに当てはまるよ。" userName="LPisGood" createdAt="2025/05/08 18:56:42" color="">}}




{{<matomeQuote body="Kernel Trickは、data classificationで使われるテクニックだよ。点を高次元空間に写像して、その高次元空間でlinear separationを見つけるんだ。ベストフィットな線を見つけるとか、データセットを線形に見せるとかじゃなくて、線形関数を使ってデータセットを二つのクラスに分割できるようにするためのものだよ。" userName="Maxatar" createdAt="2025/05/08 19:15:03" color="#38d3d3">}}




{{<matomeQuote body="まあ、覚えておいてほしいんだけど、Kernel Trickは”linear things work better”のようにデータを変換するけど、データを線形にするわけじゃないんだ。線や平面でデータをきれいに分離できる空間に変換する技術だよ。これは特定の状況で使う専門用語だから気をつけてね。もっと一般的な、関数に関して物事をうまく機能させる変換なら”feature transformation”って言うんだ。" userName="Maxatar" createdAt="2025/05/08 23:41:55" color="#ff5c5c">}}




{{<matomeQuote body="このexplorable explanation（https:／／setosa.io／ev／ordinary-least-squares-regression／）めっちゃおすすめだよ！Gradient descentの実際のコードなら、これ前にPyTorchで作った例（https:／／github.com／stared／thinking-in-tensors-writing-in-pyt...）があるよ。" userName="stared" createdAt="2025/05/08 09:51:09" color="#ff33a1">}}




{{<matomeQuote body="うん、俺もここに投稿したかったんだけど、”linear regression explorable explanation”で検索したら、なんか変なリンクばっかだったんだよね。ありがたいことに、PyTorchの資料とhttps:／／pinboard.in／u:pmigdal／t:explorable-explanationは保存してたけど。" userName="stared" createdAt="2025/05/08 14:26:35" color="">}}




{{<matomeQuote body="”統計学があるのは、物事について私たちを不確かにさせるためです”ってこの一行だけで、この記事は歴代最高だわ！インタラクティブな可視化も超いいね！" userName="sorcerer-mar" createdAt="2025/05/08 12:45:56" color="">}}




{{<matomeQuote body="でもGoogleはさ、こういうことをもっと詳しく説明してるめちゃくちゃいいコースも提供してるよ: https:／／developers.google.com／machine-learning／crash-course" userName="Nifty3929" createdAt="2025/05/08 14:28:37" color="#ff33a1">}}




{{<matomeQuote body="俺も最初そう思ったよ。でも元のGoogle検索がどんなだったか分かんなかったし、いくつかKagiで試してもその記事出てこなかったんだよね。（当たり前だけど、記事のタイトルで検索したやつは別としてね）" userName="billbrown" createdAt="2025/05/08 15:22:05" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OLSで二乗誤差を最小化する一番現実的な理由って、解析解があるからなんだよね。だからGDの例としてはちょっと微妙かも。解析解がない損失関数はGDみたいな数値最適化で解くんだよ。二乗誤差は、ただ便利とか伝統だからって理由で使われすぎなんだよね。" userName="jampekka" createdAt="2025/05/08 08:36:38" color="#38d3d3">}}




{{<matomeQuote body="いつも思うんだけど、MLの入門ってOLSを完全にダメにしてるよね。統計学で習ったときは、Gauss-Markov条件とか係数の解釈とか、残差の分析とかめっちゃ考えたのに、MLの入門は予測を当てることばっかにフォーカスしてるんだもん。" userName="jbjbjbjb" createdAt="2025/05/08 11:07:29" color="#ff33a1">}}




{{<matomeQuote body="俺もそう思うわ、それ統計学とMLの決定的な違いだよ。統計学はモデルを当てはめて解釈すること、MLはモデルをブラックボックスとして扱うことなんだもん。だから多重共線性が統計家にとってはめちゃくちゃ重要なのに、MLやってる人たちは全然気にしないんだよね。" userName="soVeryTired" createdAt="2025/05/08 11:23:49" color="#ff33a1">}}




{{<matomeQuote body="アカデミックな数学者や統計学者と、”応用系／エンジニアリング／アクチュアリー／ビジネス”で統計を使う人たちの違いを説明してるね。”ブラックボックス”って考え方は、MLとかコンピューターが登場するもっと前からあった話だよ。" userName="lupire" createdAt="2025/05/08 11:33:22" color="">}}




{{<matomeQuote body="統計とかMLの”ブラックボックス”哲学は、予測が合ってるかすぐ確認できない場合はヤバいと思うんだ。例えばPCAでノイズ消すのは人間がすぐ判断できるからいいけど、新しい発見に使うみたいに他に確かめる方法がない場合は、PCAを定義とか定理とか証明レベルで深く理解しとかないとダメなんじゃないかな？みんなはどう思う？PCAの話は集団遺伝学とかIQとかにも言えることで、PCAだけで結論出ちゃってて、他に裏付けがないから疑問視されてるのもあるんだよね。" userName="ogogmad" createdAt="2025/05/08 11:51:21" color="#ff5c5c">}}




{{<matomeQuote body="いい指摘だね。MLと統計の違いはモデルの解釈とか検証だけじゃなくて、”サイエンスをする”、つまり”新しい発見”の部分にもあるんだ。統計モデリングは主に科学を発展させるためにやってて、仮説を検証したり、介入の効果を推定したりするのが目的なんだよ。モデルのパラメータを解釈するのは、それが介入効果の推定値になるから大事なんだ。PCAみたいな手法はどっちのプロセスでも使えるけど、事前に仮説もないのにデータからパターン探すのはサイエンスじゃないね。" userName="kyllo" createdAt="2025/05/08 16:26:11" color="#ff5c5c">}}




{{<matomeQuote body="線形代数のレベルだと、統計モデルを当てはめる時に問題になるのは完全な多重共線性（相関が1.0か-1.0）だけだよ。でも、科学的な場面で、なんで相関が高い（完璧じゃないけど）説明変数を複数使いたいと思うの？それは偶然じゃなくて、意図的に同じ理論的な潜在変数を測るために、複数の指標を使って測定誤差を減らしたい時が多いんだ。それは測定やモデリングの戦略の一部なんだよ。" userName="kyllo" createdAt="2025/05/08 16:36:36" color="#ff5733">}}




{{<matomeQuote body="この区別はそんなにはっきりしてないと思うよ。MLやってる人たちも”解釈可能性”についてよく話してるの聞くからね。" userName="0xDEAFBEAD" createdAt="2025/05/08 17:37:18" color="">}}




{{<matomeQuote body="これは違うよ。実際には効率的な線形回帰には解析解じゃなくて、確率的な手法を使うことが多いんだ。二乗誤差を使うのは、観測ノイズが正規分布してるって仮定した時の最尤推定法だからで、解析解が得られるからじゃないんだよ。" userName="orlp" createdAt="2025/05/08 09:30:29" color="#ff5c5c">}}




{{<matomeQuote body="知ってる限りだと、RのlmとかPythonのstatsmodelsみたいな古典的な統計パッケージで解析解を使うのは、社会科学とか生物・化学みたいな伝統的な分野では今でも普通だよ。機械学習の分野こそ例外で、みんな非線形モデルとか超でかいデータセットとか、（確率的）勾配ベースのソルバーにすぐ行っちゃう傾向があると思う。誤差の正規性ってのは、OLSで当てはめた後の後付けの正当化みたいなもんで、実際にはよくテストされてすらいないんだよね。" userName="em500" createdAt="2025/05/08 09:44:14" color="#ff5733">}}




{{<matomeQuote body="確率的手法（MCMCとか）は解析的・数値的な方法より複雑なモデルで主に使われるけど、まだ主流じゃないかな。ADVIみたいな近似法も人気だよ。多レベル線形回帰みたいなモデルでも二乗誤差の数学的な便利さが使われてる。二乗誤差は正規分布ノイズの推定値を与えるんだけど、正規性の仮定は暗黙的で理解されてないことも多い。二乗誤差の解析解は伝統的な分野で長い歴史があって、紙で計算してた時代からの慣性があるんだ。正規性の仮定が成り立たない時でも、変数変換して正規近似して解析解を使うのが伝統だったんだよ。" userName="jampekka" createdAt="2025/05/08 09:58:18" color="#ff5733">}}




{{<matomeQuote body="解析的な便利さってわけじゃなくて、中心極限定理のおかげだよ。" userName="xadhominemx" createdAt="2025/05/08 13:09:49" color="">}}




{{<matomeQuote body="全部が大量の（IIDな）サンプルの線形結合になるわけじゃないから、全部が正規分布するわけじゃないんだよ。" userName="jampekka" createdAt="2025/05/08 13:32:48" color="">}}




{{<matomeQuote body="なるほど、じゃあみんなが同意するのは、ほとんどの場合、平方誤差を最小化する理由は、それが最小化するのに適切なものだからだってことだね。解析的な解があるとか、便利だからとか、伝統だからとかじゃなくてさ。" userName="kgwgk" createdAt="2025/05/08 14:17:35" color="">}}




{{<matomeQuote body="...というのは、確率的な手法は暗黙的な正則化器だから、より汎化性能の高い解につながるんだ。知らない人のためにちゃんと言っておこうね。https://www.inference.vc/notes-on-the-origin-of-implicit-reg..." userName="esafak" createdAt="2025/05/08 15:39:00" color="">}}




{{<matomeQuote body="OLSは凸最適化問題だから、これはあまり当てはまらないよ。それに統計分析では、よく分かってない人工的なノイズをパラメータ推定値に加えたくないだろうしね。" userName="jampekka" createdAt="2025/05/08 16:08:38" color="">}}




{{<matomeQuote body="一般的にはそうだよ。偏りのない推定値は汎化誤差が高いからね。君はすでにサンプリングノイズを扱ってるんだ。俺は最適化の専門家じゃないし、君にとって”poorly understood”が何を意味するかわからないけど、俺はSGDノイズの特性についてはかなりの研究があるのは知ってるよ。例えばリンク先の記事を見てみて。" userName="esafak" createdAt="2025/05/08 16:43:29" color="#45d325">}}




{{<matomeQuote body="それは違うよ。最小二乗法は中心極限定理から直接導かれるんだ。" userName="xadhominemx" createdAt="2025/05/08 12:47:43" color="">}}




{{<matomeQuote body="中心極限定理は実際にはガウス分布がかなり一般的だと予想できるって教えてくれるんだ。それでガウス分布が良い最初の推測になる。最小二乗法はガウス残差に対するML推定値を与える。俺はこれをあんまり直接的だとは思わないし、根拠があるからってその根拠が現実にその使い方を推進してるわけじゃないと思うんだ。俺はガウス分布との関係を言ってるんだよ。コメントのどの部分が間違ってるんだい？" userName="jampekka" createdAt="2025/05/08 13:27:08" color="#ff5733">}}




{{<matomeQuote body="この部分が間違ってるね：「通常の線形回帰で平方誤差が最小化される主な実用的な理由は、解析的な解があることだ」OLSはCLTの結果として正しい答えを出すから人気なんだよ。" userName="xadhominemx" createdAt="2025/05/08 14:07:36" color="">}}




{{<matomeQuote body="それに解析的な解があるってのもあるよね。コンピューティングが発達する前はそれが重要だったし（今でも速くしてくれる）。" userName="disgruntledphd2" createdAt="2025/05/08 15:36:52" color="">}}




{{<matomeQuote body="つまり、経済学者が言うように、OLSは証明されてるBLUE（最良線形不偏推定量）だよ。Gauss-Markov Theoremってやつね。" userName="kyllo" createdAt="2025/05/08 16:28:43" color="#ff5c5c">}}




{{<matomeQuote body="OLSはGDを紹介するのに分かりやすい方法だよね。解析解はあっても、規模が大きくなるとメモリとかIOの限界になるから、GDは実際的な選択肢としてまだ使えるんだ。" userName="easygenes" createdAt="2025/05/08 09:14:02" color="#ff5c5c">}}




{{<matomeQuote body="OLSって計算上はシステム行列の擬似逆行列を取るんだ。密な行列だと計算量はO(samples * parameters^2)。GDの一歩の計算量は多分O(samples * parameters)だから、漸近的な利点はあるかもしれないけど、実際に役に立つかは想像しにくいね。それに、統計分析目的で回帰にGD使う人なんていないよ。実際にはNewton-Raphsonとか、もっと複雑だけど収束性が良い方法が使われることが多いよ。" userName="jampekka" createdAt="2025/05/08 10:24:18" color="#38d3d3">}}




{{<matomeQuote body="ミニバッチとかストリーミングのGDだと利点は明らかでしょ。解析解のOLSはsamples * params^2がメモリに収まる限り最強だよ。でもパラメータが10^5とかになると、すぐメモリに乗らなくなる。最近はよくあるケースだね。分散処理とかストリーミングが必要になったり、データが縦にも横にもデカすぎるときは、一次の方法（first order methods）が呼ばれるわけ。" userName="easygenes" createdAt="2025/05/08 11:01:38" color="#38d3d3">}}




{{<matomeQuote body="バッチ処理だとSGDになるね。近似で良ければ、ランダム化SVDとか低ランクSVD、ストリーミングSVDとかもあるよ。これらはSGDより近似とか収束性が良かったりする。パラメータ10^5のOLSってどんな場合があるの？天気モデルとかでそんな計算するのかな？" userName="jampekka" createdAt="2025/05/08 11:14:41" color="">}}




{{<matomeQuote body="＞ 最小二乗法を使うとき、導関数がゼロだと常に最小値になる。でも一般的にはそうじゃないんだよね... 最小値か最大値かを見分けるには、二階微分を見る必要があるんだ。<br>高次元に分析を進めるのは面白いよ。ヘッセ行列っていう二階微分のある種の行列プロパティを見る必要のある、興味深い停留点があるからね。データの問題（線形回帰みたいの）を幾何学的な考察に変換するのは、一般的にめちゃくちゃ強力だよ。" userName="brrrrrm" createdAt="2025/05/08 06:02:59" color="#38d3d3">}}




{{<matomeQuote body="数学は詳しくないけど、理解の確認で。記事は計算方法じゃなく、二乗距離を使う理由を説明してる？絶対値距離が複数の結果になる理由も説明してないよね？回帰式y=ax+cだけじゃ良さ分からないと思うんだけど。バラバラなデータでも式は出ちゃうし。家の値段の例みたいに、広さだけじゃ不十分でしょ。標準偏差は必要じゃない？あと、二乗距離で結果が一つだけになるって、単純化しすぎて情報が削られちゃうマイナス面にならないの？" userName="geye1234" createdAt="2025/05/08 20:09:18" color="#38d3d3">}}




{{<matomeQuote body="線形回帰は、各点と線間にバネをつけて線が落ち着くイメージで考えると直感的！端っこに点をつけると線は傾き、真ん中だと上下に動く。このバネのシステムは、ポテンシャルエネルギー最小化で線形回帰と数学的に等価って自分で証明した記憶があるよ。" userName="sakras" createdAt="2025/05/08 18:43:26" color="#45d325">}}




{{<matomeQuote body="最高のたとえだね！このモデルのすごいところは、勾配降下法（gradient descent）の部分についても良い直感を与えてくれることだよ。バネの力が勾配で、線が「パシッ」と定位置に収まるのが勾配降下法のプロセスなんだ。厳密には、物理的なバネは勢い（momentum）もあって、行き過ぎたり振動したりするけどね。でもこれさえも実際には使われてるんだよ、momentum付きの勾配降下法でね。" userName="cloud-oak" createdAt="2025/05/08 18:52:34" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="教えようとするとよくハマる落とし穴だね。教えるのが見た目よりずっと難しい理由だよ。あるトピックを深く理解してると、直感でギャップや凸凹を自然に埋めちゃうんだ。これは仕事する上では最高だけど、教える上ではダメだね。スタートからゴールまで12分でたどり着く道が、教えるコツがないと初心者にはどう見えるか見えないんだ。" userName="Workaccount2" createdAt="2025/05/08 15:36:36" color="">}}




{{<matomeQuote body="勾配降下法を可視化するWebアプリ（svelteとtensorflow js使用）作ったんだ。線形（y=ax+b）とwave（y=cos(ax+b)）の問題に対応。訓練データは関数にノイズ加えて生成。neural network版[1]や損失可視化[2]も追加。クリックで初期点変えて軌跡も見れるよ。完成はしてないけどブログ記事[3]書いた。ぜひ見て！[0] https://gradfront.pages.dev/[1] https://f36dfeb7.gradfront.pages.dev/[2] https://deploy-preview-1--gradient-descent.netlify.app/[3] https://blog.horaceg.xyz/posts/need-for-speed/" userName="rogue7" createdAt="2025/05/08 15:26:25" color="#ff33a1">}}




{{<matomeQuote body="これが現代社会の間違いだって？いやいや、IBMも言うように線形回帰は未来を科学的・信頼性高く予測する実績ある方法だよ。ビジネスリーダーはこれでより良い意思決定ができる。大量のデータから経験や直感じゃなく現実を管理するのに役立つんだ。ビジネス仲間が気づいてなかったパターンや関係性も明らかにできるよ。販売・購入データ分析とかね。https://www.ibm.com/think/topics/linear-regression" userName="reify" createdAt="2025/05/08 06:38:22" color="">}}




{{<matomeQuote body="君の言いたいことは分かるけど、線形回帰はパラメータ選ばなきゃいけないし、検証も簡単。MLとかは理解できないハイパーパラメータだらけで過学習にハマる。お決まりのxkcd: https://xkcd.com/1838/ JW Tukeyの言葉じゃないけど「精密な質問への近似解」の方が良い。問題はツールじゃなくて、簡単な間違った問題にツールを使ってることだよ。" userName="uniqueuid" createdAt="2025/05/08 06:52:26" color="#ff33a1">}}




{{<matomeQuote body="俺の統計学のモットーは、応用統計学は不確実な状況で意思決定するアートだ、ってことなんだけど、みんなはデータを基に確実性を作り出す科学みたいに扱ってるよね。" userName="lupire" createdAt="2025/05/08 11:44:50" color="">}}




{{<matomeQuote body="うーん、prompt engineeringも結局これと同じじゃない？" userName="uniqueuid" createdAt="2025/05/08 08:12:11" color="">}}




{{<matomeQuote body="LLMsも結局は線形代数の塊じゃない？" userName="fph" createdAt="2025/05/08 07:52:30" color="">}}




{{<matomeQuote body="そうそう、まさにそこ！「データを山ほど詰め込んで、動くまでかき混ぜる」ってのが冗談じゃなくて、実際使えるやり方になっちゃったんだよね。<br>これはまた”The Bitter Lesson”ってやつの一例だね。リンクはこれ：<br>http：//www.incompleteideas.net/IncIdeas/BitterLesson.html" userName="alexey-salmin" createdAt="2025/05/08 08:12:50" color="#ff5733">}}




{{<matomeQuote body="The Bitter Lessonのリンクありがとう！<br>あの記事が言ってる教訓、マジで「苦い」よね。<br>計算力でパターンを見つけても、人間には理解不能で意味や因果関係もないってのが耐えられない。<br>タンパク質折りたたみとか自動運転とか、結果は頼るけど「なぜ」が分からない。正常でも原因不明ってのが気持ち悪いんだ。<br>記事の「how we think we think」って言葉、最高！" userName="FitCodIa" createdAt="2025/05/08 09:07:29" color="#45d325">}}




{{<matomeQuote body="「人間の思考」って正規分布でカーブが広いから、「なんで？」って考えるのは無駄かもね。<br>それより入力変数から結果を予測できる方が大事だよ。<br>人の行動も、予測範囲内で危害がなければ理由は気にしない。AIも同じ。とにかく安全第一！" userName="eitally" createdAt="2025/05/08 13:11:31" color="#38d3d3">}}




{{<matomeQuote body="あー、動くから面白いんだよね。あのやり方、結構色んなアプリで使われ始めてた時期に（この記事が）出たんだ。" userName="rcxdude" createdAt="2025/05/08 09:06:00" color="">}}




{{<matomeQuote body="あとReLUをひとつまみ！" userName="foobahhhhh" createdAt="2025/05/08 08:03:37" color="">}}




{{<matomeQuote body="同じ流れで言うと、Karpathyの動画シリーズ”Neural Networks from zero to hero”もこういう話とか直感的な理解に触れてるよ。<br>ニューラルネットの部分を無視しても最高の入門シリーズの一つで、勾配とか微分の直感を教えてくれるんだ。<br>[0] https：//youtu.be/VMj-3S1tku0？si=jq1cCSn5si17KK1o" userName="throwaway7783" createdAt="2025/05/08 16:36:00" color="#45d325">}}




{{<matomeQuote body="他にも線形回帰と勾配降下法を説明してるインタラクティブな記事があるよ：<br>https：//mlu-explain.github.io/linear-regression/" userName="jwilber" createdAt="2025/05/08 16:05:00" color="#ff5c5c">}}




{{<matomeQuote body="いいね、シェアしてくれてありがとう！HS calculus teacherとシェアしたよ ：) （俺のモデルでは、先生の生徒たちが機械学習エンジニアの仕事を目指すようにモチベーション上がるはずだから、微積分を頑張るモチベーションになるはず…まあ分かんないけどね。）" userName="setgree" createdAt="2025/05/08 16:11:31" color="">}}




{{<matomeQuote body="へー、Deming Regressionって知らなかった。これじゃなくて他の方法が適してるケースって想像しにくいね、今となっては。" userName="buss_jan" createdAt="2025/05/09 13:05:21" color="#785bff">}}




{{<matomeQuote body="線形回帰の話が出たけどさ、線形モデルのフィッティングを深く掘り下げてるオンラインコースとか本で何かおすすめある？" userName="wodenokoto" createdAt="2025/05/08 09:07:08" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
