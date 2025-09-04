+++
date = '2025-08-28T00:00:00'
months = '2025/08'
draft = false
title = '「Uncertain<T>」とは？GPSから自動運転まで、不確実な位置情報をどう扱うべきか！'
tags = ["GPS", "自動運転", "位置情報", "プログラミング", "測位"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> 「Uncertain<T>」とは？GPSから自動運転まで、不確実な位置情報をどう扱うべきか！

引用元：[https://news.ycombinator.com/item?id=45054703](https://news.ycombinator.com/item?id=45054703)




{{<matomeQuote body="GPSの不確実性って円形近似だけじゃダメなんだ。オープンな場所とか限られた条件でしか成り立たないよ。自動運転だとマルチパス効果が重要で、結局パーティクルフィルタとかに行き着くんだよね。" userName="AlotOfReading" createdAt="2025/08/28 19:11:02" color="#38d3d3">}}




{{<matomeQuote body="車のGPSって、速度計やコンパス、地図データ、それから電源オフの間は動いてないって仮定で補強されてるんだ。だから位置特定も速いんだよ。" userName="mikepurvis" createdAt="2025/08/28 19:56:58" color="#38d3d3">}}




{{<matomeQuote body="都市部だとマルチパスの影響で、どの車線にいるか分からないし、隣の道と間違えることもあるよ。HDマップやカメラで建物の形を見たり、WiFiも役立ちそうだけど、WiFiの位置情報自体がGPS頼りなのが問題だよね。" userName="astrange" createdAt="2025/08/29 04:29:31" color="#38d3d3">}}




{{<matomeQuote body="昔、101号線の一部が工事で横に数フィートずれた時、GPSと地図のローカライゼーションがずっとケンカしてて大変だったよ。すぐ再マッピングする羽目になったんだ。" userName="jeffreygoesto" createdAt="2025/08/29 09:48:12" color="">}}




{{<matomeQuote body="電源オンから動いてないっていう仮定は、牽引されたり、フェリーに乗ったり、車が故障して押したりするみたいなイレギュラーなケースで破綻するよね。『こんなこと起こるはずない』ってログに出るやつだ。" userName="blauditore" createdAt="2025/08/29 10:12:35" color="#ff5c5c">}}




{{<matomeQuote body="とはいえ、ある程度の誤差修正には使えるよ。もしGPS切った時と5kmもずれてたら異常だけど、25m程度なら衛星を拾っていくにつれて前の場所に戻るようにスナップさせるのは、ほぼ正しいアプローチだね。" userName="mauvehaus" createdAt="2025/08/29 11:32:38" color="">}}




{{<matomeQuote body="あと、携帯の基地局とかWiFiネットワークが分かってるから、高速で位置を特定できるんだ。" userName="monocasa" createdAt="2025/08/28 21:09:44" color="">}}




{{<matomeQuote body="それなのに、高速道路を走ってるのにAppleマップとかGoogleマップがいきなり隣の未舗装道路から案内し始めることがあるんだよ。高速で溝を越えてフェンスぶち破ってダート道を時速100kmで走ってると思われてるってことだよね。" userName="mauvehaus" createdAt="2025/08/29 11:30:11" color="#ff5733">}}




{{<matomeQuote body="電源オンから動いてないっていう仮定は、フェリーに乗るとダメだよね。" userName="o11c" createdAt="2025/08/29 05:11:50" color="">}}




{{<matomeQuote body="Lidarの点はただの点じゃなくて、一番ありそうな場所を中心に、ちょっとぼやけた球体なんだよ。" userName="nullhole" createdAt="2025/08/29 07:22:36" color="#45d325">}}




{{<matomeQuote body="プログラミングの変数が数学的な変数の「仕様」を持てるとわかると、AIの基礎になるすごい扉が開くんだ。`y = m * x + b`みたいな式も、単なる計算じゃなくて、その裏にある計算の「仕様」を扱えるようになると、自動で逆算（バックワードパス）して最適な値を学習できるようになるんだよ。これはディープニューラルネットワークの各層にも使われてる。`Uncertain＜T＞`は氷山の一角で、数値変数にその値の可能性のメタデータを含ませて、普通の計算みたいに操作できるって考え方はめちゃくちゃ面白いから試してみてほしいな。" userName="btown" createdAt="2025/08/29 01:37:50" color="#ff5c5c">}}




{{<matomeQuote body="これめちゃくちゃ面白そうなんだけど、MLとか数学あんまり知らないから、ELI5（5歳児でもわかるように説明して）で教えてくれないかな？" userName="danhau" createdAt="2025/08/29 09:44:07" color="">}}




{{<matomeQuote body="点がいっぱいあるとして、それに曲線（カーブ）を合わせたいとするよね。普通の関数だと、曲線を決めるパラメータを入れてx座標を入れたらyの値が出てくる。でも、数値だけじゃなくて「計算のサブグラフ全体」を足したり掛けたりできるライブラリがあれば、その関数を自動で逆算して、「データ点との差が一番小さくなるようにパラメータを最適化して」って言えるんだ。LLMとかは、これを何十億ものパラメータでやってる。コードはシンプルなのに、ライブラリがGPUを使ったトレーニングを自動でやってくれるからすごいんだよ！" userName="btown" createdAt="2025/08/29 20:07:28" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃ面白いね。今説明してくれたみたいなことを、言語レベルでサポートしてるプログラミング言語（PLs）ってあるの？" userName="jonahx" createdAt="2025/08/29 03:26:52" color="">}}




{{<matomeQuote body="https://colcarroll.github.io/ppl-api/ がPythonでの良い入門になるよ。カスタム言語を使ってる例もあるけど、LLM界隈でPythonのフレームワークが成功してるのは、連携と組み合わせやすさのおかげだと思うな。https://news.ycombinator.com/item?id=28941145 にも議論があるけど、これはちょっと古いね。今はPyroとNumPyroが人気みたいだよ！" userName="btown" createdAt="2025/08/29 03:56:41" color="#ff33a1">}}




{{<matomeQuote body="もし離散的に扱うことに抵抗がなければ、PrologやMercuryみたいな論理型言語は「評価」じゃなくて「単一化（unification）」を使うから、逆向きに評価できるんだよ。" userName="astrange" createdAt="2025/08/29 04:30:53" color="#45d325">}}




{{<matomeQuote body="このコメント、変数と関数と線形システムを混同してるように見えるね。これらを混同する意味はないと思うな。" userName="MangoToupe" createdAt="2025/08/29 09:49:11" color="">}}




{{<matomeQuote body="確率分布の「仕様」を保存して名前を付けたら、スカラー値をサンプリングできる関数みたいにも振る舞うし、新しい変数に代入して普通の変数みたいに扱える。線形システムは、その仕様を定義する方法の一つに過ぎない。これらの概念を統合した、複雑な入れ子の確率分布を、まるでドールハウスのおもちゃみたいに扱えるようになるのがポイントなんだよ！" userName="btown" createdAt="2025/08/29 15:24:44" color="#ff33a1">}}




{{<matomeQuote body="おめでとう、君はモナドを再発明したんだね。" userName="Davidbrcz" createdAt="2025/08/29 12:00:02" color="">}}




{{<matomeQuote body="ケンブリッジ大学でUncertain＜T＞（James Bornholt）や関連研究に触発されて、プロセッサマイクロアーキテクチャを設計したんだ。<br>パラメトリック分布（ガウス分布、レイリー分布とか）の仮定に加えて、任意のサンプルセットをレジスタやメモリにロードして、プログラムの値を非パラメトリック分布として普通の演算を通して伝播させられるよ。<br>スピンオフのSignaloidがこのテクノロジーを製品化してるし、状態推定（パーティクルフィルタとか）への応用も研究中。詳細はこの論文を見てみて: https://dl.acm.org/doi/10.1145/3466752.3480131" userName="thekoma" createdAt="2025/08/29 10:56:12" color="#ff5c5c">}}




{{<matomeQuote body="これって、異なる変数間の共分散を扱えるのかな？例えば、距離を測るオブジェクトの位置誤差が自分の位置と相関してる場合とか（似たような時期に別のGPSを使ってる場合など）。<br>単一変数のモデルも型システムでは役立つけど、共分散を扱えればもっと強力で正確になるはずだよ。" userName="boscillator" createdAt="2025/08/28 18:32:34" color="#38d3d3">}}




{{<matomeQuote body="このサンプリングベースのアプローチを使えば、共分散のモデリングは自動で正しくできるよ。複数箇所で使われるリーフ値は評価ごとに一度だけサンプリングすればいいんだけど、彼らはまさにそれをしてるみたいだね: https://github.com/mattt/Uncertain/blob/962d4cc802a2b179685d..." userName="flaghacker" createdAt="2025/08/29 10:45:18" color="#45d325">}}




{{<matomeQuote body="プログラムが実世界の利用を通して共分散を「学習」できないかなって前から思ってたんだ。<br>そうじゃないと、変数を独立とモデル化するのは常に間違ってる気がするし、そこそこの規模のプログラムだと、すべての変数間の相関を考慮するのは無理だもんね。<br>どう学習させるかは、まだ分からないけど！" userName="joerick" createdAt="2025/08/29 06:05:16" color="#45d325">}}




{{<matomeQuote body="共分散を追跡する必要があるなら、Pythonのgvar https://gvar.readthedocs.io/en/latest/ を試してみるといいかもね。" userName="evanb" createdAt="2025/08/28 20:00:38" color="">}}




{{<matomeQuote body="量子力学を適切にモデル化するには、絡み合った変数セットには複素数値の波動関数を関連付けなきゃいけないだろうね。" userName="layer8" createdAt="2025/08/28 19:24:18" color="">}}




{{<matomeQuote body="これって、この名作Functional Pearl論文 https://web.engr.oregonstate.edu/~erwig/papers/PFP_JFP06.pdf とめっちゃ関連してるよね！<br>Haskellの入門コースではいつも、Monty Hall問題を確率モナドを使って、2つの戦略で勝つ正確な確率を分数で出すデモから始めてるんだけど、めちゃくちゃクールなんだ。" userName="black_knight" createdAt="2025/08/28 20:31:40" color="#ff33a1">}}




{{<matomeQuote body="Haskellライブラリのmonad-bayesも見てみてね。 https://monad-bayes.netlify.app/tutorials/<br>https://www.tweag.io/blog/2019-09-20-monad-bayes-1/" userName="internet_points" createdAt="2025/08/29 09:13:05" color="">}}




{{<matomeQuote body="この概念は「区間算術」って名前で過去に何度もやられてるよ。Boost https://www.boost.org/doc/libs/1_89_0/libs/numeric/interval/... にもあるし、flint https://arblib.org/ にもある。<br>何が本当に不思議かって、何度も再発明されるのに、なぜもっと主流にならないんだろうってこと。実際に製品で使ってみて「これはダメだった」って判断した人たちの話を聞いてみたいな（そういう人がいればだけど）。" userName="j2kun" createdAt="2025/08/28 20:44:18" color="#38d3d3">}}




{{<matomeQuote body="記事には「Uncertain＜T＞はGPSの不確実性をRayleigh分布でモデル化してる」って書いてあるよね。<br>Rayleigh分布って、明らかに一様分布の単なる区間じゃないからね。普通の区間算術じゃ役に立たないのは、その一様分布が現実世界の良いモデルじゃないからなんだ。<br>例えば、あなたがリンクしたBoostライブラリに`(-2,2)*(-2,2)`を計算させると`(-4,4)`って出る。でも、もっと理にかなった結果は`(-2.35, 2.35)`みたいになるはず。<br>`-4`っていう下限は、乗数が区間の極端な値（`-2`と`2`）の時にしか達成できないけど、確率的に見ると、これらが独立した確率変数だとしたら、同時にその極値になる確率はもっと低いもんね。" userName="kccqzy" createdAt="2025/08/28 21:41:16" color="#ff33a1">}}




{{<matomeQuote body="著者が特定の区別を見落とした可能性はあるけど、(-2.35, 2.35)って範囲はちょっとおかしいんじゃないかな。極値は起こりうるんだから、コードはそれをしっかり処理しなきゃダメだよ。" userName="rendaw" createdAt="2025/08/29 05:34:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="一様分布って現実世界ではほとんどないんだよね。ノイズのあるセンサーだと、超間違いの確率はかなり低いけど、99%信頼区間なら実用的。多くの場合は他の分布を求めて、(-2, 2)みたいなのは90パーセンタイルで、絶対的な境界じゃないよ。" userName="esrauch" createdAt="2025/08/29 12:06:56" color="#785bff">}}




{{<matomeQuote body="区間演算って、極値はわかるけど、それがどれくらい起こりやすいかは教えてくれないから役に立たないんだ。一様乱数として解釈するしかないけど、掛け算とかすると分布の形が変わっちゃって、追跡できない不明な分布になっちゃうんだよね。" userName="kccqzy" createdAt="2025/08/29 13:41:15" color="#785bff">}}




{{<matomeQuote body="＞掛け算とかすると分布の形が変わっちゃう<br>それって足し算でも同じじゃない？例えば d6+d6 の出力範囲は2-12だけど、 d11+1 とは全然違うじゃん。" userName="mcphage" createdAt="2025/08/29 16:03:01" color="#45d325">}}




{{<matomeQuote body="うん、そうだね！もともと例として掛け算を使ってたから、ついそっちを出してしまったよ。" userName="kccqzy" createdAt="2025/08/29 16:17:39" color="">}}




{{<matomeQuote body="-2と2は、そもそも極値じゃなかったんだよ。" userName="Dylan16807" createdAt="2025/08/31 05:57:14" color="">}}




{{<matomeQuote body="なんでこのコメントが高評価されてるのかわからないな。記事は区間演算について説明してるんじゃなくて、いろんな不確実性分布をサポートしてるって言ってるのに。" userName="orlp" createdAt="2025/08/29 00:49:25" color="">}}




{{<matomeQuote body="区間演算は処理が少し遅いだけだけど、各ステップで単純化できるんだ。あらゆる数値演算には、最も精密な区間演算の equivalent があって、これは Galois connection のおかげだよ。でも、その表現が精密とは限らない。この記事のサンプリング計算グラフは遅いけど正確で、精度を失う abstract domain は不要だね。" userName="Tarean" createdAt="2025/08/28 20:54:18" color="#45d325">}}




{{<matomeQuote body="もし区間演算がもっと普及する道を選んでたら、面白かっただろうね。確かにちょっと遅いけど、操作は独立してるから、非整数値を扱う一般的な方法になってたら、今頃は並列処理のためのハードウェア加速が実現してたかもね。" userName="bee_rider" createdAt="2025/08/28 21:31:11" color="#38d3d3">}}




{{<matomeQuote body="区間演算の並列化はCPUやGPUを使えばできるかもね。完全にタダじゃないけど、工夫次第でいけるんじゃない？パイプラインやリオーダリングで暗黙的な並列実行も期待できるよ。" userName="eru" createdAt="2025/08/29 01:49:02" color="#45d325">}}




{{<matomeQuote body="ブール型みたいな単純な型は分かりやすいけど、物理的な不確実性のモデル化は難しいし、ドメインごとにモデルも違うよ。中途半端なライブラリを使うより、専用のモデルを使う方が断然いいと思うな。" userName="woah" createdAt="2025/08/28 23:57:24" color="#45d325">}}




{{<matomeQuote body="不確実性のモデルは用途ごとに違うってのは同意するけど、いいモデルなら普遍的に使えるかも。みんなIEEE 754フロートを使ってるでしょ？あれも一種の不確実性モデルだけど、大体うまくいくし、たまに変な挙動があっても対応できる。結局、すごく役立つってことだよ。" userName="eru" createdAt="2025/08/29 01:46:55" color="#ff33a1">}}




{{<matomeQuote body="不確実な値や確率変数、区間、ファジー論理なんかについて考えるのは難しいんだよね。だから、物事が確実だってモデルの方が処理しやすいし、それで十分現実をうまくモデル化できてるってことだよ。" userName="anal_reactor" createdAt="2025/08/28 22:43:26" color="">}}




{{<matomeQuote body="物理学では誤差伝播を早くから学ぶよね。ガウス分布を仮定すれば、結果の誤差もエレガントに計算できる。C++で（値、誤差）を持つカスタム型を作って自動伝播させる練習もいい。でも現実ではガウス分布の誤差は稀だし、システマティックな誤差が問題。結局、自動処理だけじゃダメで、手動分析が必要になるから、誤差伝播の自動処理って大抵意味ないんだよね。" userName="jjcob" createdAt="2025/08/29 10:30:01" color="#785bff">}}




{{<matomeQuote body="区間演算って、区間の端点を正確に表現できるなら、直感的にはすごく分かりやすいんだ。でも、それをどうやって実現するかっていうのは、全然簡単じゃないんだよね。" userName="pklausler" createdAt="2025/08/28 21:22:49" color="#45d325">}}




{{<matomeQuote body="すべての不確実性が区間上の一様分布でうまくモデル化できるわけじゃないんだよ。" userName="eru" createdAt="2025/08/29 01:49:53" color="">}}




{{<matomeQuote body="何年か前に区間演算の歴史を調べてたら、60年代にCPU開発者たちに「区間演算をCPUの基本設計にすべきだ！」って強く主張してたグループがいたのを知って驚いたよ。彼らは「普通の整数や浮動小数点じゃ世界を正確にモデル化できない」って言ってたんだ。" userName="PaulDavisThe1st" createdAt="2025/08/28 23:36:10" color="#45d325">}}




{{<matomeQuote body="別のコメントでもあったけど、区間演算は不確実性を認めてるけどモデルが単純すぎて、多くの用途で使い物にならないのが問題だよ。だから、それを標準プリミティブにしちゃうと、不確実性を明示的にモデル化する必要ないアプリまでそのコストを払うことになるし、もっと現実的なモデルが必要なアプリは、この単純すぎるモデルとの相互作用で手足を縛られることになる。理論上は良くても、実際には成功しなかった理由があるんだ。不確実性を明示的にモデル化したいけど、区間演算の単純なモデルで十分なユースケースって、かなり狭い範囲でしかないから、ごく一部のニーズしか満たせない標準プリミティブなんて、いいアーキテクチャじゃないよね。" userName="skissane" createdAt="2025/08/29 01:04:18" color="#ff5733">}}




{{<matomeQuote body="機械工学の図面だと、職人さんとかに伝えるのに公差を使うよね。例えば10cmでプラス8mmマイナス3mmみたいに、許容範囲を示す。GPSを使った「もう着いた？」みたいなのは、エラーの方向とか、どの方向の不確実性がより良いか悪いかを理解するべきだと思うな。" userName="8note" createdAt="2025/08/28 20:07:26" color="#38d3d3">}}




{{<matomeQuote body="不確実性の表記って「範囲を超えちゃダメ」って意味と「10%の確率で超える」って意味があって、どっちなのか分からなくなるんだよね。" userName="mabster" createdAt="2025/08/28 22:23:18" color="#45d325">}}




{{<matomeQuote body="機械製図で「90%信頼度」みたいな寸法は見たことないな。部品がデカすぎたらハマらないし、役立たずになっちゃうじゃん。" userName="taneq" createdAt="2025/08/28 23:12:10" color="#785bff">}}




{{<matomeQuote body="全数検査なら寸法は厳密に公差内だけど、全部検査しない大量生産だと、一部は公差を外れて3-sigmaみたいな分布になっちゃうよな。" userName="kevin_thibedeau" createdAt="2025/08/28 23:32:34" color="#ff5733">}}




{{<matomeQuote body="Gaussian-basedな不確実性は分野特有かもね。計算で使うときは大抵Gaussianだよ。でも、不確実性って言われたとき、その意味が分かんないと困るんだよなぁ。" userName="mabster" createdAt="2025/08/29 09:37:00" color="#38d3d3">}}




{{<matomeQuote body="Mechanical Engineeringでは、公差は部品がちゃんと合うかを保証するものなんだ。統計じゃない。公差外の部品は捨てられるし、統計的な公差で部品を組もうとしたら、ほぼ確実に問題が起きるよ。" userName="brabel" createdAt="2025/08/29 14:07:01" color="#ff5733">}}




{{<matomeQuote body="うん、分かる。electronicsではResistorの値はGaussianだけど、テストで選別されて、機械部品と同じように公差として扱われてるんだ。" userName="mabster" createdAt="2025/08/29 22:10:39" color="#ff33a1">}}




{{<matomeQuote body="みんなに関係ありそうな例だと、プロジェクト計画の3 point time estimatesとかね。本質的に不確実性がある領域なら、Probability distributions（シンプルなものでも）を使うと、すごくクリアな見通しが得られるよ。" userName="_kb" createdAt="2025/08/29 02:35:58" color="#ff5c5c">}}




{{<matomeQuote body="これって、fuzzy logicのプログラミング版ってこと？<br>https://en.wikipedia.org/wiki/Fuzzy_logic" userName="munchler" createdAt="2025/08/28 19:37:22" color="">}}




{{<matomeQuote body="probabilistic programmingに近いね。もうすでに実用化されてるよ。例えば、https://pyro.ai/なんかを見てみて。" userName="esafak" createdAt="2025/08/28 19:48:18" color="#ff5c5c">}}




{{<matomeQuote body="matttの仕事はいつも楽しめるな。すごく良いlibraryみたいだね。" userName="mackross" createdAt="2025/08/28 18:28:01" color="">}}




{{<matomeQuote body="不確実性ってデフォルトであるべきで、本当に確実な時だけ「確実なT」って明記するべきじゃない？って思うんだよね。" userName="layer8" createdAt="2025/08/28 19:19:54" color="#45d325">}}




{{<matomeQuote body="物理的な測定ならそうだけど、お金みたいなのはかなり確実で、厳密な端数まで正確であるべきだよ。なんか最近のFortranライブラリで似たようなアプローチが導入されてるみたいだね。" userName="nine_k" createdAt="2025/08/28 20:17:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="お金って、どんだけ賢くやっても誰かが全部Excelに入れちゃって、合わないって文句言われる問題あるよね。日額Xって言われても時給で明細欲しがるし…<br>前働いてた会社では計算上の誤差を項目にするとか許してくれなくて大変だったよ。" userName="XorNot" createdAt="2025/08/28 21:02:55" color="#ff5c5c">}}




{{<matomeQuote body="値段の打ち間違いやバーコードの読み間違い、数量ミスとかも不確実性だよね。センサーからの測定誤差だけじゃないんだ。こんな不確実性がどう伝播していくか気になるな。ユーザー入力を代表的な分布と照合して異常かチェックしたり、エラーのコストと手間を考えて再確認したりできたら良いかも。" userName="rictic" createdAt="2025/08/28 21:10:28" color="#785bff">}}




{{<matomeQuote body="タイプミスって物理的な許容誤差とはまた違うタイプのエラーだよね。数学的にこれを考えるのってすごく難しそうだ。" userName="bee_rider" createdAt="2025/08/29 00:52:55" color="">}}




{{<matomeQuote body="お金について「確実なのは交換の瞬間だけ」って見方もあるよ。それから、Fortranライブラリの話、もっと詳しく知りたいな。リンクある？" userName="geocar" createdAt="2025/08/29 04:55:52" color="">}}




{{<matomeQuote body="お金で計算したことある？いや、お金は抜きにして、浮動小数点数で計算したことある？もうね、確実なものなんて何もないんだよ。" userName="random3" createdAt="2025/08/28 21:18:50" color="#ff5c5c">}}




{{<matomeQuote body="うん、請求部署で働いてたよ。フロート（浮動小数点数）はね、お金の表現には絶対向いてない。表示用のすごく丸めた値とかなら別だけど。フロートって相対誤差を抑えようとするから絶対精度が大きく変わっちゃうんだ。丸め誤差を抑えるには、最小の桁から足し算したり、他にもいろんな地味な工夫が必要なんだよ。" userName="nine_k" createdAt="2025/08/28 21:22:55" color="#38d3d3">}}




{{<matomeQuote body="Optional の補完って感じかな。" userName="esafak" createdAt="2025/08/28 19:47:12" color="">}}




{{<matomeQuote body="適切な抽象化を選ぶのに悩むなら、この「不確実なT」って抽象化はきっと間違ってるよ。" userName="contravariant" createdAt="2025/08/28 22:16:49" color="">}}




{{<matomeQuote body="不確実な値を持つデータ型を作りたいとずっと思ってたんだ。既知か未知かわからない、特定の分布に従う値ね。それに不確実性のある変換を適用して、最終的に洗練された確率分布のセットを得る。その確率分布を使って、ランダムな結果を基にしたシミュレーションを実行するのが目標だよ。" userName="akst" createdAt="2025/08/29 06:04:38" color="#ff5733">}}




{{<matomeQuote body="もっと近似的に考えるなら、小さい誤差なら誤差伝播（https://en.wikipedia.org/wiki/Propagation_of_uncertainty）を簡略化できるよ。NimのSciNim/Measuremancerライブラリ（https://github.com/SciNim/Measuremancer）は俺もよく使う。でも、実世界のデータで出てくるような変な分布には、Uncertain＜T＞みたいな方が合ってるだろうね。コストがかかるけど。" userName="cb321" createdAt="2025/08/28 20:20:19" color="#ff5c5c">}}




{{<matomeQuote body="物理学やってた時、誤差伝播はしょっちゅう計算してたな。C++やPythonで似たのを実装しようとしたけど未完。スプレッドシートが「1m +- 10cm」みたいに不確実性や単位を理解して、誤差を伝播してくれたら便利なのに。CADでもそう。計測値が合わないとイライラするんだよね。全ての長さや角度に不確実性を入れて、合計誤差を最小化するソルバーがあったら最高だ。" userName="captainmuon" createdAt="2025/08/29 16:14:41" color="#785bff">}}




{{<matomeQuote body="閉じた形式の数学じゃなくて、計算で確率を求めるのがすごく好きだ。シミュレーションしたり、サンプリングしたり、分布を直接扱ったりする方が、ずっと直感的だと思ってたんだ。コンピューターがあれば、ただプロセスを実行して、結果を見て、そこから推論するだけで自然に「計算」できるからね。" userName="lxe" createdAt="2025/08/28 22:35:10" color="#ff33a1">}}




{{<matomeQuote body="それって`ProbabilityDistribution`型って呼ぶ方が適切じゃないかな。概念を扱うには、そっちの方が一般的だし直感的にわかると思うよ。" userName="dcsommer" createdAt="2025/08/28 23:26:08" color="">}}




{{<matomeQuote body="うん、でも短い名前の方が結局勝つんだよ。" userName="ngruhn" createdAt="2025/08/28 23:36:31" color="">}}




{{<matomeQuote body="でも、uncertaintyってダジャレなんだってば。" userName="bee_rider" createdAt="2025/08/29 00:56:00" color="">}}




{{<matomeQuote body="エラーの原因が独立してない場合、一部の値が過小評価されるリスクはないかな？例えば、金融商品のROIは失業リスクと逆相関するかもしれないでしょ。それぞれにエラーをつけて、この関係を失うような組み合わせ方をすると問題になると思うよ。" userName="nicois" createdAt="2025/08/28 21:00:11" color="#785bff">}}




{{<matomeQuote body="モナドはやっぱり最強だな。この応用は、波束の進化に似てる気がする。ヒルベルト空間上の確率モナドとしての密度行列、結合としてのユニタリー進化、測定／崩壊が純粋／リターンって感じ？カテゴリ理論で見ると、全部似てるように思えるね。" userName="krukah" createdAt="2025/08/28 19:38:45" color="#38d3d3">}}




{{<matomeQuote body="関連する情報だよ（2006年の記事）: https://web.engr.oregonstate.edu/~erwig/pfp/" userName="valcron1000" createdAt="2025/08/28 19:57:20" color="#ff5733">}}




{{<matomeQuote body="すごい！これ、前からずっと考えてて欲しかったことなんだ。<br>科学分野で確率的プログラミング（Python）もやったし、ウェブ開発で従来のソフトウェアエンジニアリング（TypeScript, Python, Rust）もやったけど、なんで前者のリアルワールドモデリング能力と後者の静的型保証を両立できないんだろうってずっと思ってたんだよね。君たち（とMicrosoft）が同じことを考えてくれてて嬉しいよ！<br>これのPython実装って何か知ってる？動的な統計プログラミングライブラリはたくさんあるけど、型付けソリューションを提供してるのは知らないな。" userName="webcoon" createdAt="2025/08/29 05:16:57" color="#38d3d3">}}




{{<matomeQuote body="アイデアが主流になるまでこんなに時間がかかるってのは本当に興味深いね。<br>俺の記憶では、OlegとChung-chieh Shanが2009年にOCamlのライブラリとしてこれを最初にやったと思うんだけど。<br>https://groups.google.com/g/fa.caml/c/CbXeoR_Rzrk?pli=1<br>https://okmij.org/ftp/kakuritu/" userName="naasking" createdAt="2025/08/29 15:22:08" color="#ff5c5c">}}




{{<matomeQuote body="これのC#の完全なコードってある？元の論文を見たんだけど、スニペットしかないんだよね。" userName="lloydatkinson" createdAt="2025/08/28 21:50:13" color="">}}




{{<matomeQuote body="https://github.com/klipto/uncertainty" userName="kittoes" createdAt="2025/08/28 23:51:23" color="#45d325">}}




{{<matomeQuote body="最後のコミットから10年も経ってるし、ちっちゃいREADME以外にドキュメントがないから、これはパスかな。" userName="Pxtl" createdAt="2025/08/29 00:15:02" color="">}}




{{<matomeQuote body="いやいや、コードがないわけじゃないし、研究論文の全部をモデル化してるみたいだよ。<br>元の研究論文がリポジトリに含まれるべきってのはあるけど、これ以上必要ないね。全部ビルドもコンパイルもエラーなし、警告はライブラリ本体で2つ、テストプロジェクトで6つだけ。それにユニットテストプロジェクトも付いてて、59個のテストでライブラリコードの約73%をカバー、失敗は2つだけ。ユニットテストライブラリがあるってだけで、GitHubにあるリポジトリの50%くらいは上回ってるよ。" userName="miffy900" createdAt="2025/08/29 03:50:12" color="#38d3d3">}}




{{<matomeQuote body="Microsoft Researchを非難するべきだよ。リンクは直接彼らから来てたんだから。https://www.microsoft.com/en-us/research/project/uncertainty<br>彼らは最初の論文やプレゼンテーションを超えて、このプロジェクトを本当に進めることはなかったと思うな。" userName="kittoes" createdAt="2025/08/29 05:16:09" color="">}}




{{<matomeQuote body="時には「これで完了」ってこともあるんだよ。実装が論文に忠実なら、論文自体がいいドキュメントになるからね。" userName="naasking" createdAt="2025/08/29 15:24:03" color="">}}




{{<matomeQuote body="ああ、Swiftエコシステムにちょっといた頃のこのブログのこと忘れてたよ…相変わらず最高だね！楽しい投稿！" userName="keeganpoppen" createdAt="2025/08/28 23:01:16" color="">}}




{{<matomeQuote body="これってRustやClojureで実装できるのかな？Anglicanも似たようなことやってる？" userName="droideqa" createdAt="2025/08/28 20:35:30" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
