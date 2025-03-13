+++
date = '2025-02-26T00:00:00'
months = '2025/02'
draft = false
title = 'FFTを活用した自己注意メカニズムの新たな効率的代替手法とは'
tags = ["AI", "機械学習", "深層学習", "数理最適化", "アルゴリズム"]
featureimage = 'thumbnails/purple1.jpg'
+++

> FFTを活用した自己注意メカニズムの新たな効率的代替手法とは

引用元：[https://news.ycombinator.com/item?id=43182325](https://news.ycombinator.com/item?id=43182325)

{{<matomeQuote body="基本的に畳み込み定理を利用してるね。直接空間での高コストな畳み込みが逆空間で簡単な乗算になるってわけ。データに畳み込み操作があったら共役空間に変換して乗算にしよう。つまり、データに自然な領域で作業しろってことだ。" userName="xeonmc" createdAt="2025-02-26T11:22:16" color="#785bff">}}

{{<matomeQuote body="その表現、すごくわかりやすいけど、LLMの注意空間が周波数領域だと分かるのは明確じゃなかったな。" userName="snickmy" createdAt="2025-02-26T18:34:47" color="">}}

{{<matomeQuote body="2025年01月06日に社内Slackに書いた内容だけど、実際の努力は書くこと以上だね。大規模言語モデルは高次元トークンスペースで動作してて、トークンを信号として見て多次元の知識空間をカバー。FFTの手法で時系列の複雑さを周波数領域に変換して計算を効率化できそうだ。トークンの信号を波数領域にマッピングするってアイデアで、トークンの出現頻度や時間的相関を分析できる。" userName="pavelstoev" createdAt="2025-02-27T03:47:06" color="#45d325">}}

{{<matomeQuote body="一つのアイデアを考えるのに多くのトークンを調整する必要があるってこと。つまり、アイデアはトークン間の長距離相関なんだ。アイデアはトークンの流れの中の長波長特性だよ。" userName="evanb" createdAt="2025-02-26T19:52:27" color="">}}

{{<matomeQuote body="そうだね。これは納得だけど、なんで特にフーリエ空間なの？ウェーブレット変換はダメなの？" userName="spot5010" createdAt="2025-02-26T22:38:42" color="#ff33a1">}}

{{<matomeQuote body="＞ウェーブレット変換はダメなの？<br>それって素晴らしい論文のアイデアだね。進めて書いて、ぜひ共著者として名前を入れてね！" userName="1024core" createdAt="2025-02-27T00:22:21" color="#ff33a1">}}

{{<matomeQuote body="それなら、データから学習した変換とかどう？" userName="monkfish328" createdAt="2025-02-27T02:26:06" color="#ff5733">}}

{{<matomeQuote body="それがうまくいけばめっちゃすごいよね！僕も活性化関数について同じことを考えてた。アルゴリズムに活性化関数を学習させてみようかな。" userName="spot5010" createdAt="2025-02-27T13:24:33" color="">}}

{{<matomeQuote body="そのアイデアは存在してるよ（広い分野は神経アーキテクチャ検索と呼ばれる）。ただ、勾配降下が起こるように何らかの方法でパラメータ化が必要なんだ。例としては、以下を見てね。" userName="porridgeraisin" createdAt="2025-02-27T16:12:21" color="#ff5733">}}

{{<matomeQuote body="ほとんど計算効率のためだと思うけど、非線形性にはあまり影響がないから、早いものを選ぶ方が計算リソースの効率的な使い方になるんだよね。" userName="FuckButtons" createdAt="2025-02-27T16:38:04" color="">}}

{{<matomeQuote body="効率について話してるね。ウェーブレット変換も良いかもしれないけど、ウェーブレットはFTに比べてもっと局所的な特性があるよね。" userName="evanb" createdAt="2025-02-27T00:30:56" color="">}}

{{<matomeQuote body="これで時間を膨張させた畳み込みネットワークになるね。" userName="thesz" createdAt="2025-02-27T07:18:27" color="">}}

{{<matomeQuote body="これ好き。新しいシナプスをアナロジーでつなげるものはいい投稿だね。" userName="kridsdale1" createdAt="2025-02-26T21:29:13" color="">}}

{{<matomeQuote body="これは視覚化するのがとても面白い方法だね。" userName="3abiton" createdAt="2025-02-27T01:03:15" color="#785bff">}}

{{<matomeQuote body="まさにその通り。行列の構造を利用するのは自然だよね。プリプリントの内容がしっかりしてれば、データに対する対称性を示唆するかもしれない。" userName="kkylin" createdAt="2025-02-26T19:51:55" color="#785bff">}}

{{<matomeQuote body="基本的な数学の空間変換サンドイッチだね。データを別の空間に変換して、そこで操作して、元の空間に戻す。このために各ステップを最適化して、効率的な空間で作業するのが重要。" userName="ttoinou" createdAt="2025-02-26T14:31:55" color="#785bff">}}

{{<matomeQuote body="変換のロスがどれくらいかはまだわからないね。DSPでやり過ぎるとデータを大量に失うから。" userName="kridsdale1" createdAt="2025-02-26T21:30:11" color="">}}

{{<matomeQuote body="ReLUは半分のデータを捨てちゃうけど、それでも機能するんだよね。" userName="thesz" createdAt="2025-02-27T07:55:06" color="">}}

{{<matomeQuote body="＞つまり、自分のデータに自然な領域で作業するってこと。なぜ掛け算が畳み込みより自然な領域なの？単に計算が簡単なだけじゃないの？" userName="ambicapter" createdAt="2025-02-26T15:06:38" color="">}}

{{<matomeQuote body="例えば信号を”スムージング”する時は、高周波成分を除去したいんだ。だからフーリエ変換で周波数領域に変換すると、周波数データを直接扱える。周波数領域の操作が簡単なのが”自然”な空間にいる証拠だ。ただ、”自然さ”の定義は正式にはないし、最終的にはどちらでも同じ結果が出る。" userName="MajimasEyepatch" createdAt="2025-02-26T15:11:25" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="線形演算子の対角化を考えると、複雑な情報の混合が単純なストレッチに見えることがある。Fourier変換はユニタリなので、元の演算子が単純に各次元をストレッチしているだけだと理解できる。畳み込みはもともと掛け算なので、例えば多項式の係数を掛け合わせるのがこの観点に当たる。ここでの重要な点は、他の群に対するFourier変換があるかどうかで、抽象調和解析につながる。" userName="ndriscoll" createdAt="2025-02-26T15:47:14" color="#45d325">}}

{{<matomeQuote body="数学に自信がない人向けに、良い性質を持つ対象を見つけるのが役に立つ。例えば、整数を素因数分解することで計算が楽になるし、ベクトル空間では基底ベクトルを使うと楽。指数関数も特別な性質があって、微分方程式を解く際には便利だ。ダイナミカルシステムの固定点を見つけて計算を減らすのもこの考え方の一例。" userName="rachofsunshine" createdAt="2025-02-26T17:48:54" color="#ff5733">}}

{{<matomeQuote body="この考え方は「数学的成熟」と呼ばれ、本質を捉える良い実用例だと思う。" userName="Karrot_Kream" createdAt="2025-02-26T18:38:38" color="">}}

{{<matomeQuote body="期待値演算子みたいに、詳細を省いて一つの中心的なモーメントに注目することで簡略化できる。もっと情報が欲しいならモーメントを増やせばいいし、公共政策にも適用できる。" userName="xpe" createdAt="2025-02-26T19:10:29" color="">}}

{{<matomeQuote body="今の経済モデルもこの考え方を採用していて、固定点を使って分析するのが一般的。" userName="LudwigNagasena" createdAt="2025-02-27T02:58:06" color="">}}

{{<matomeQuote body="高次元データが特定の投影でスパースになる例を示すもので、FFTがデータの再投影だと理解すると直感的。" userName="ted_dunning" createdAt="2025-02-26T23:38:05" color="#ff5733">}}

{{<matomeQuote body="＞ただ計算が簡単なだけだね<br>それがこの文脈での「自然」の全てさ。結果を得るのに労力が少ないなら、簡単な方法を選ぶのが普通じゃない？" userName="nimish" createdAt="2025-02-26T22:21:08" color="">}}

{{<matomeQuote body="簡単に計算できるという意味だと思う。" userName="amelius" createdAt="2025-02-26T15:43:40" color="">}}

{{<matomeQuote body="掛け算の方が畳み込みよりも簡単な代数を生むからだよ。" userName="jacksnipe" createdAt="2025-02-26T19:06:04" color="">}}

{{<matomeQuote body="FFTの場合はそうじゃない。だからFourier spaceって呼ぶのが好き。frequency domainってあんまり好きじゃないんだ。3-Dや5-D FFTをよく使うから、frequencyは一次元FFTに関連してる気がする。" userName="cowsandmilk" createdAt="2025-02-26T17:36:34" color="">}}

{{<matomeQuote body="たぶん”recurrence space”みたいな名称が良さそう。frequencyには物理的な解釈があって、誤解を招く可能性もある。例えば、空間領域の波のFFTは独立変数のwavenumberを出すから、frequencyとは言えないし。" userName="SJC_Hacker" createdAt="2025-02-27T16:08:34" color="">}}

{{<matomeQuote body="一般的な正式名称は”Dual space”だと思う。" userName="xeonmc" createdAt="2025-02-27T05:01:11" color="">}}

{{<matomeQuote body="Fourier変換は自分自身の逆ってことで、入出力空間は同じ'形'（実数から複素数の関数）を持つから、reciprocalって呼ばれるんだ。同じコインの裏表みたいなもん。" userName="rocqua" createdAt="2025-02-26T21:56:31" color="">}}

{{<matomeQuote body="そうだけど、実際のメリットは理論的なもの。O(n^2)をO(nlog n)に変えるのは良さそうだけど、実際にはnの平均は3だからね。計算を複素数でやる必要があるし、安定性も落ちるし。これまでの所、FFTは普通の畳み込みには向いてないと思う。" userName="bjourne" createdAt="2025-02-26T16:21:08" color="#45d325">}}

{{<matomeQuote body="＞O(n^2)をO(nlog n)に変えるのは良さそうだけど、nの平均は3であることを考えなきゃね。長い畳み込みが高コストだから回避されることが多いだろ？この論文は全ての文脈ウィンドウをカバーするattentionメカニズムの代替を話してるんじゃないの？これによって、長い畳み込みは遅くないってことじゃないの？ ＞複素数を使った計算は数値的に安定性に欠けるって言うけど、ニューラルネットではそれが大きな問題とは聞かないよ。16ビット浮動小数点を重みに使ってスペースを節約してるからね。複素数の数値的安定性は量子化で失う精度を超えているのかな？また、複素数は本当に数値的に安定性が低いのか、それともまだ使い方が良くないだけなのか。" userName="feoren" createdAt="2025-02-26T17:05:47" color="#ff5c5c">}}

{{<matomeQuote body="3^2 / (3*log(3)) => 6倍の性能向上があるし、3が線形平均ならさらに大きな改善が期待できると思う。実際の計算は単純なスケーリング数式には従わないこともあるし、6より大きな定数因子が利点を打ち消すかもしれないが、2つのBig Oとn=3だけでは君の主張を支持するには不十分だと思う。" userName="ToValueFunfetti" createdAt="2025-02-26T16:43:47" color="">}}

{{<matomeQuote body="O(f(n))の表記はそんな風には使わないよ。O(f(n)) / O(g(n))にnを代入して特定の性能向上を主張しちゃダメ。Big-Oで省略される全ての要因を知ってないと、比較は成り立たない。そして、領域間の変換費用は無視してるよ。 ＞実際の計算は単純なスケーリング数式には従わないが、だからって否定する理由は無いし、ただ否定するだけではダメ。加えて、Log(3)に10進数を使っているようだけど、2進数の方が適切で、1.8倍にしかならないと思う。Log_1000(n)とLog_2(n)は同じBig-Oを持つから、基数は省略されるけど、特に何かを言うのは難しいよ。O(n^2)がO(n*log(n))よりも早くなるのはnがGraham's numberまでかもしれないし。" userName="feoren" createdAt="2025-02-26T16:54:51" color="#ff33a1">}}

{{<matomeQuote body="Googleは2022年に”FNet: Mixing Tokens with Fourier Transforms”というアイデアを紹介したけど、後に彼らのTPUが行列乗算の性能がほとんどのシナリオでFFTよりも速いとわかったらしいよ。参考リンクは全角】https://arxiv.org/abs/2105.03824" userName="yagizdegirmenci" createdAt="2025-02-26T11:24:49" color="">}}

{{<matomeQuote body="『全体的に、FNetやPerformer、スパーストランスフォーマーのようなアプローチは、固定または近似のトークンミキシングが計算オーバーヘッドを減らせることを示しているけど、私たちの適応的スペクトルフィルタリング戦略は、FFTの効率と学習可能な入力依存のスペクトルフィルタをユニークに組み合わせているんだ。これにより、複雑なシーケンスモデリングタスクにとって必要なスケーラビリティと適応性を提供している。」ってのも参考になるね。" userName="TheDudeMan" createdAt="2025-02-26T12:57:46" color="#ff5c5c">}}

{{<matomeQuote body="この論文の書き方は、まるでFFTを使うのを初めて発見したかのようだな。しかも証明もあるし、タイトルにも書いてあるけど、実際にはみんな知ってたことで、彼らはただいくつかの追加の学習可能なパラメータを加えただけって感じで、ちょっと残念。" userName="light_hue_1" createdAt="2025-02-26T16:21:17" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="検索エンジンは必ずしも前例を見つけるのがうまくないんだよね。専門用語の違いで誤解が生じることも多いけど、これを確認バイアスと考えることもできるかも。人々が悪いニュースを本気で探すのは難しいし、目の前にないと証拠がないと決めつけちゃうから。" userName="hinkley" createdAt="2025-02-26T22:29:11" color="">}}

{{<matomeQuote body="XilinxにはFFT用に非常に最適化されたコアがあるけど、サイズは2の累乗に制限されるんだ。これはあまり問題にならないけど、FFTをゼロパディングして高いエイリアスを避けることが多いからね。ただし、ハードウェアで直接実装するとサイズが固定されるのがデメリットかな。" userName="SJC_Hacker" createdAt="2025-02-26T14:46:52" color="">}}

{{<matomeQuote body="はい、DSPのほとんどはFFTのためのネイティブなハードウェアサポートを持っているよ。信号処理にとっては基本的な機能だからね。" userName="gct" createdAt="2025-02-26T14:06:38" color="#38d3d3">}}

{{<matomeQuote body="確かに、FFTは信号処理の重要な部分だから、ほぼ全てのDSPには専用のハードウェアサポートがあるよ。すごく大事だよね。" userName="mshockwave" createdAt="2025-02-27T05:39:39" color="#785bff">}}

{{<matomeQuote body="うん、dsPICで見られるビット逆アドレッシングモードはその一例だね。" userName="addaon" createdAt="2025-02-26T15:31:19" color="">}}

{{<matomeQuote body="(離散) Fast Fourier Transformの実装についてだよ。FFTWやそのGitHubトピックも紹介されてるし、NvidiaのCuFFTやAMD-FFTW、Intel MKL FFTWなどもあるね。特にCuFFTはGPU用のFFTで、ROCmのrocFFTも同様にGPUで動くよ。新しい論文では、RISC-VアーキテクチャでのFFTアクセラレータの紹介があって、性能向上が118倍とも言われてる。" userName="westurner" createdAt="2025-02-27T04:22:37" color="#ff33a1">}}

{{<matomeQuote body="GPUがTPUに比べて10%の性能向上があったらしいよ。TPUは4096以上のサイズにFFTを使わないくらい効率が悪くて、代わりに二次スケールFT実装を使用してるみたい。ある会社はTPUでの推論時間を40%短縮できると言ってるけど、FFTNetがあればもっと早くなるかもね。" userName="unraveller" createdAt="2025-02-26T16:23:22" color="#ff33a1">}}

{{<matomeQuote body="最近思ってたのは、デザイン改善が、1.2台のマシンでタスクをやるときは面白いけど、6台だと注目されないのに、120台になるとまた興味が湧くってこと。20%のリソース改善には誰も興味を示さなくて寂しい。" userName="hinkley" createdAt="2025-02-26T22:31:19" color="">}}

{{<matomeQuote body="4096トークンは今のトランスフォーマーの 기준からするとちょっと短いね。" userName="Eridrus" createdAt="2025-02-26T19:50:02" color="">}}

{{<matomeQuote body="FFTは文脈ウィンドウのトークン数が増えるほどスケールが良くなると思うよ。Googleのモデルが競合に比べて大きな文脈サイズで勝っているのも面白い。" userName="frodo8sam" createdAt="2025-02-26T11:49:55" color="">}}

{{<matomeQuote body="同じ考えを持っている人がいて嬉しい！彼らのモデルが他のLLMに比べて長い文脈でも劣化しない秘密が気になるけど、もしかしたらデータセットのせいかもしれないね。" userName="Daniel_Van_Zant" createdAt="2025-02-26T16:41:40" color="#45d325">}}

{{<matomeQuote body="＞”FFTよりも速い”ってだけじゃなくて、TPUでのFFTサポートはいつもベストエフォートだから、精度の問題もあったはずだよ。" userName="j2kun" createdAt="2025-02-26T16:59:28" color="">}}

{{<matomeQuote body="ただ、これって限られたトークン数でしか機能しないんじゃない？" userName="DrNosferatu" createdAt="2025-02-26T12:32:20" color="">}}

{{<matomeQuote body="”3.3 実装”の部分はハードウェアレベルのスピードアップに関する内容が多くて、要するにGPUではFFTが常に速いけどTPUでは短いシーケンスだと行列演算の方が速いって言ってるよね。" userName="yagizdegirmenci" createdAt="2025-02-26T12:39:38" color="">}}

{{<matomeQuote body="確かに、電力利用の比較も必要だよね。GPUよりも効率的で速いハードウェアを作れることはあるけど、実際のFFTハードウェアは十分に大きなnでパワーとスピードを圧倒的に上回ると思う。だって行列演算の掛け算はO(n³)だけどFFTはO(n log n)だし。" userName="xphos" createdAt="2025-02-26T16:10:16" color="#785bff">}}

{{<matomeQuote body="FFTは長さNのベクトルに対してO(N log N)だけど、N×Nの行列だとO(N² log N)だよ。各行や列に対してFFTを適用するからね。" userName="SJC_Hacker" createdAt="2025-02-26T18:38:58" color="">}}

{{<matomeQuote body="指摘してくれてありがとう！ASICの行列演算ハードウェアと非ASICのFFTハードウェアを比較してると思う。TPUハードウェアは256×256の行列演算を線形時間でやってるけど、FFTのASICはメモリがボトルネックになる前にもっと大きなNを受け入れられるはず。" userName="xphos" createdAt="2025-02-27T03:59:57" color="#ff5c5c">}}

{{<matomeQuote body="FFTの一部はGPUハードウェアで加速できるよ。GPUはバタフライのような命令がたくさんあって、overlap-and-addやoverlap-and-save、cuFFTDxを使うと共有メモリ内での並列処理も活用できるからね。tcFFT論文を再現するのは時間がなくて厳しかったけど、Tensor Coreレジスタにデータを保持することもできるみたい。" userName="touisteur" createdAt="2025-02-27T19:00:15" color="#ff5c5c">}}

{{<matomeQuote body="ASICのデメリットは、乗算器の固定サイズとか、精度（16ビット、8ビット）やデータ形式（浮動小数点vs整数/固定）が変更不可なことなんだ。" userName="SJC_Hacker" createdAt="2025-02-27T05:11:23" color="">}}

{{<matomeQuote body="フーリエ変換は「トークン」次元で行われるんだけど、実際のアプリケーションではその次元はあまり意味がないんだ。だからトランスフォーマーはデータの置換不変性を活用するのにいい選択だと思う。あまり知られていない有限群上のフーリエ変換を使った追加実験も見てみたいし、これがLLMでの次の大きなことになるなら、推論エンジン（vLLMやllama.cppなど）がどれだけ簡単に統合できるか気になるな。" userName="markisus" createdAt="2025-02-26T13:38:55" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="この分野に詳しくないんだけど、ほとんどのモデルではトークンが位置依存の情報に変換されてるんじゃないかな。llamaは入力の位置に基づいてベクトルを回転させるみたいだよ。" userName="3vidence" createdAt="2025-02-27T03:11:20" color="">}}

{{<matomeQuote body="LLMの領域ではそれは正しいけど、この場合、位置情報は最初のレイヤーにだけ加えられるんだ。後のレイヤーではトークンがその情報を「忘れる」ことができるし、トランスフォーマーは他の分野でも使われているよ。" userName="markisus" createdAt="2025-02-27T17:08:22" color="">}}

{{<matomeQuote body="LlamaみたいなTransformersは、すべてのアテンション層でロタリー埋め込みを使ってるんだよね。" userName="topwalktown" createdAt="2025-02-28T05:23:18" color="">}}

{{<matomeQuote body="面白いね！これがパフォーマンスを改善するかどうかについての研究ってあったの？" userName="markisus" createdAt="2025-03-01T13:04:24" color="">}}

{{<matomeQuote body="整数のモジュロ2^nかな？nはコンピュータが得意なやつ(8、32、64)で、ハードウェアで群の演算をサポートしてる。" userName="markisus" createdAt="2025-02-26T15:23:23" color="">}}

{{<matomeQuote body="それは伝統的なフーリエ変換じゃん。ただし、任意のサイズの循環群になり得るし、2のべき乗である必要はない。けど、FFTは2^nの入力サイズが特に実装しやすいんだよね。で、順列不変じゃない。" userName="yorwba" createdAt="2025-02-26T15:29:11" color="#ff5c5c">}}

{{<matomeQuote body="考えが不注意だった、訂正ありがと。群の要素をどの順番で足しても結果が同じって考えてたけど、群の要素は「トークンインデックス」としての役割を果たしてるから、扱える要素は同じじゃないんだよね。" userName="markisus" createdAt="2025-02-26T17:19:23" color="">}}

{{<matomeQuote body="群の演算って標準のモジュラー加算のこと？そうなら、解説されたように古典的な離散フーリエ変換を復元するよね。" userName="Y_Y" createdAt="2025-02-26T16:16:55" color="">}}

{{<matomeQuote body="正直、数学が頭を超えてるし、周りの文章もほとんど理解できないんだけど、これがアテンションメカニズムとどう同じなのか基本的な英語で説明してくれる？どんな周波数の話？トークン間の位置関係をどうエンコードしてるの？" userName="pointlessone" createdAt="2025-02-26T11:09:13" color="">}}

{{<matomeQuote body="フーリエ変換は可逆な演算子で、関数に作用する（行列の場合、関数と演算子は行列自体）。これが周波数空間に変換するんだ。" userName="iNic" createdAt="2025-02-26T11:25:23" color="#38d3d3">}}

{{<matomeQuote body="周波数空間は一時元と見なされることが多い。位相を加えることで他の次元が生まれるんだよ。" userName="xpe" createdAt="2025-02-26T19:16:24" color="">}}

{{<matomeQuote body="modReLUって入力値の大きさを増やして、元の極角に回転させるだけみたいだね。マイナスの大きさをクリップして。<br>つまり、入力角度のバイアス項を回転させて元のに足す感じかな。" userName="jampekka" createdAt="2025-02-26T11:41:24" color="">}}

{{<matomeQuote body="実際の仕組みはシンプルだね。要は入力の埋め込みのFFTを取って、それをMLEから得た重みで要素ごとに掛け合わせて、活性化関数を通して逆FFTをかけるって感じ。<br>この「周波数」って抽象的なものかもしれないけどね。とてもエレガントで、もしこれでうまくいくならすごいよ。" userName="jampekka" createdAt="2025-02-26T11:21:05" color="#38d3d3">}}

{{<matomeQuote body="基本は畳み込み定理を利用しているよね。これって他でもよく見る考え方だ。" userName="xeonmc" createdAt="2025-02-26T11:23:06" color="">}}

{{<matomeQuote body="そうそう、これはよく使われるやり方だね。N^2の計算をN log Nにするから、グリッドベースのペアワイズ相互作用には便利。" userName="physicsguy" createdAt="2025-02-26T11:59:50" color="#ff5c5c">}}

{{<matomeQuote body="それってまさにParticle Mesh Ewaldみたいだね。ペアワイズ相互作用の力を近似するために使うよ。" userName="dekhn" createdAt="2025-02-26T16:18:40" color="">}}

{{<matomeQuote body="似てるけど、私は双極子相互作用を持つ磁気スピン系で作業していて、補間はないんだ。Ewald summationでは周期境界条件を仮定するけど、こっちのスピンシステムでは相互作用カーネルテンソルをあらかじめ計算して、周期性を考慮するかしないかを選べる。<br> FFTしてから相互作用テンソルと掛け算して、iFFTするって感じ。" userName="physicsguy" createdAt="2025-02-26T17:31:33" color="#ff5733">}}

{{<matomeQuote body="まだ混乱してるんだけど、入力トークンはサンプリングされた波形として扱うの？つまり、ASCIIのテキストファイルを生のwavとしてFFTかけるってこと？<br>これは役立つ情報が取れるかもしれないね。逆FFTがうまくいくかどうかは驚き。" userName="pointlessone" createdAt="2025-02-26T11:35:03" color="">}}

{{<matomeQuote body="FFTはオリジナルデータのロスレスな同等表現だから、その点を忘れないでね。" userName="xeonmc" createdAt="2025-02-26T11:39:11" color="">}}

{{<matomeQuote body="私の理解では、トークン埋め込みはマルチチャネルのサンプリング波形みたいだね。モデルはバックプロパゲーションを通じてFFTとIFFTを学習するか、適切なトークン化が必要だと思うけど、論文ではそのあたり触れてないのかな？<br>言語にはうまく機能しなさそう。" userName="yobbo" createdAt="2025-02-26T20:24:39" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
