+++
date = '2025-02-16T00:00:00'
months = '2025/02'
draft = false
title = '計算機アプリなんて誰でも作れるよな？'
tags = ["アプリ開発", "プログラミング", "テクノロジー", "スタートアップ", "ユーザーエクスペリエンス"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> 計算機アプリなんて誰でも作れるよな？

引用元：[https://news.ycombinator.com/item?id=43066953](https://news.ycombinator.com/item?id=43066953)

{{<matomeQuote body="いい話だね。数を表現する強力な方法の一つが連分数で、実数や有理数を効率的に表現できるんだ。面白い事実として、有名な数論の教科書には、連分数の加算や乗算のアルゴリズムは存在しない可能性があるって書いてあるんだよ。でも1972年にBill Gosperがそれを証明して、連分数は算術に完全に適していると語ったんだ。今、僕はrealsっていうPythonライブラリに取り組んでて、DecimalやFractionの代わりに使えるようにしてるんだ。" userName="rustybolt" createdAt="2025-02-16T14:57:02" color="#ff5733">}}

{{<matomeQuote body="＞ どちらの実数と有理数も連分数表現で効率的に表現できる。実際、すべての有限連分数は有理数を表すので、ちょっと残念だね。整数の順序を使えば、計算可能な数を表すことができるんだけど、連分数は厳密には単純な分数と同じだよ。特定の問題構造には便利だけど、一般的な問題には使いにくいことが多いと思う。" userName="naniwaduni" createdAt="2025-02-16T15:44:53" color="">}}

{{<matomeQuote body="＞ すべての有限連分数は有理数を表す。どんな実数も無限連分数で表現できるよ。効率的といったのは、連分数の係数を使って実数xに近い有理数の上限と下限を計算する手段だよ。連分数は、特に計算精度を高めるのに便利だと感じてるよ。単純な分数じゃなかなか良い近似値が見つけにくいけど、連分数なら簡単さが強みだと思う。" userName="rustybolt" createdAt="2025-02-16T17:46:00" color="#45d325">}}

{{<matomeQuote body="確かに、分数を10進数に変換するのは厄介な問題だね。それが一つの弱点だと思う。" userName="lifthrasiir" createdAt="2025-02-17T03:40:13" color="">}}

{{<matomeQuote body="連分数は任意の数を必要な精度まで表現できるという理解だよ。例えばπを求める際に小数点以下2桁までなら3.14って書けばいいし、π×10^9を求めるときは11桁計算して3141592653.58と書けるよ。OPが言いたいのはこれだと思う。" userName="npodbielski" createdAt="2025-02-17T09:04:34" color="">}}

{{<matomeQuote body="連分数は真の実数への近似を逐次生成するために使われるから、分母の制御ができないと思うんだ。基準を変える方法があれば効率的にできるかもしれないけどね。" userName="lifthrasiir" createdAt="2025-02-17T12:26:48" color="">}}

{{<matomeQuote body="この記事は計算機アプリについてだけど、ユーザーは生成までの時間にあまりこだわらないと思うから、実質的には即レスに見えるよね。" userName="npodbielski" createdAt="2025-02-17T13:31:58" color="">}}

{{<matomeQuote body="Bill Gosperが書いた論文は、無限の連分数や、無理数的な記号を含む可能性があるんだ。" userName="layer8" createdAt="2025-02-16T16:43:06" color="">}}

{{<matomeQuote body="＞ 有限。それが問題だよね。無限になるとすべての実数を表現できるから、計算可能な関数に相当する数列を表現できるんだ。" userName="SkiFire13" createdAt="2025-02-16T20:18:55" color="">}}

{{<matomeQuote body="言ってることは、実際には数システムよりもコンピュータ代数システムに近いと思う。無限に行くなら無限ストレージが必要だけど、πのように計算できる数には適用できる。ただし、任意の数には簡単じゃないよ。" userName="pclmulqdq" createdAt="2025-02-16T20:51:41" color="">}}

{{<matomeQuote body="それはπのような再帰的な数式で計算できる可能性があるけど、任意の数に対しては簡単ではないよ。計算できる数はほとんどの関心のある数に対応してるけど、すべての実数には当てはまらない。実際、実数と自然数の関数の間に等価性が生じて、非計算可能な関数に対応する実数は表現できないんだ。" userName="SkiFire13" createdAt="2025-02-18T10:09:00" color="#ff5c5c">}}

{{<matomeQuote body="その数をコンピュータにどうやって入れるの？そういう数を正確に扱う実用的なシステムが必要だね。" userName="tiagod" createdAt="2025-02-17T03:14:38" color="">}}

{{<matomeQuote body="他の不思議な数も数学の演算を通じてコンピュータに入れるんだ。例えば、√7は無理数だけど、√7に近い数を引き算すれば、どんどん桁数を増やさなきゃいけなくなるよ。" userName="pclmulqdq" createdAt="2025-02-17T04:01:33" color="">}}

{{<matomeQuote body="連分数ってすごいよね。CTFの競技で、RSAの変種を破る問題があって、ある比が連分数の収束項にあるってことが関係してたんだ。数論のPhDを追求してる人をチームに入れたけど、結局問題を解けずに第3位だったよ。" userName="LPisGood" createdAt="2025-02-16T19:25:49" color="#ff5c5c">}}

{{<matomeQuote body="ちょっとWiener’s attackに似てるかな。攻撃の詳細については、残念ながらあまり良い記事じゃないけど。" userName="jwilk" createdAt="2025-02-16T19:46:24" color="">}}

{{<matomeQuote body="あの攻撃について数論のクラスでプレゼンしたんだ。それでその問題を解けなかったことが少し悲しかった。" userName="LPisGood" createdAt="2025-02-17T03:01:08" color="">}}

{{<matomeQuote body="そういう愚痴を公の場で言う必要はあるの？この人が読んだら不快だろうし、もうその失敗で十分苦しんでるんじゃないかな。" userName="djmips" createdAt="2025-02-17T03:33:31" color="">}}

{{<matomeQuote body="でも、そんな風には考えないよ。あれはそんなに真剣な競技じゃなかったし、軽いからかい以外には全然苦痛なんてなかったから。" userName="LPisGood" createdAt="2025-02-17T04:42:31" color="">}}

{{<matomeQuote body="そっか。" userName="djmips" createdAt="2025-02-17T05:06:31" color="">}}

{{<matomeQuote body="ここでの「自然に」ってどういう意味？" userName="throwaway2037" createdAt="2025-02-17T03:33:09" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="皮肉を込めて言ってるみたい。ここでの”自然に”は、著者が特定の感情セットを表現したかったってこと。例えば、役に立たない人をチームに残してしまったことへの腹立たしさや、”しょうがない”って受け入れる感情が含まれてる。書いた人は”しょうがない”の遊び心で言ったみたいで、チーム内で和気藹々としてるみたい。ちょっとAIっぽく聞こえたらごめんね。" userName="reaperman" createdAt="2025-02-17T18:54:35" color="#ff33a1">}}

{{<matomeQuote body="特にこのチャレンジに備えて準備してたのに、予想通りに来た課題に対して解決策が見えなかったってのは皮肉だね。" userName="LPisGood" createdAt="2025-02-17T04:43:58" color="">}}

{{<matomeQuote body="”皮肉的に”って言えばいいじゃん？" userName="throwaway2037" createdAt="2025-02-18T18:31:28" color="">}}

{{<matomeQuote body="他のコメントが良い解説してたから賛同するよ。”自然に”って言葉が少しユーモラスで、結果が皮肉であっても期待すべきことのように思わせる。" userName="LPisGood" createdAt="2025-02-18T18:39:13" color="#ff33a1">}}

{{<matomeQuote body="新しい実数の定義を作ってて、これは実数の基礎に良さそう。今は”rational betweenness relations”って呼んでる。これ、すべての実数を含む有理的区間のセットのことだよ。" userName="jostylr" createdAt="2025-02-17T16:57:39" color="">}}

{{<matomeQuote body="これ、Dedekind cutsに似た感じだね。でも、不等号 < と > でリアルな数を越えたものだ。いいウェブサイトだ。" userName="lanstin" createdAt="2025-02-17T22:07:31" color="">}}

{{<matomeQuote body="私の論文が示すように、Dedekind cutsと同等だよ。Dedekind cutsは区間の下界を集めて上界を捨てる感じなんだけど、役立つように整理するためには上界とのペアが必要なんだ。" userName="jostylr" createdAt="2025-02-18T12:50:01" color="#ff5c5c">}}

{{<matomeQuote body="x = sqrt(2) と y = sqrt(2) - epsilonの時にx - yの答えってどうなるの？" userName="dan-robertson" createdAt="2025-02-16T17:14:20" color="">}}

{{<matomeQuote body="数値的な設定でしか区別できないんだ。これは弱点みたいに感じるかもだけど、不正確なものを扱うのが正直な方法だ。真の解を求めるために、十分な計算で有理の下限と上限を計算できるよ。" userName="rustybolt" createdAt="2025-02-16T17:31:09" color="">}}

{{<matomeQuote body="＞あなたは解の最初の桁さえ書けないだろう" userName="zozbot234" createdAt="2025-02-16T19:24:54" color="">}}

{{<matomeQuote body="理性的な区間を使えば、計算の基盤になるし、UXは区間全体の真実を表示するオプションか、直感的に理解するために中央値や中間値を表示する選択肢もあるだろうね。多分それはその場のユーザーの選択になる。" userName="jostylr" createdAt="2025-02-17T16:26:25" color="#38d3d3">}}

{{<matomeQuote body="あの子は超長いπをどうやって計算したんだろう？" userName="luxuryballs" createdAt="2025-02-17T01:46:50" color="">}}

{{<matomeQuote body="最後のリンクが短縮されててクリックできないのは残念。こっちが本物のリンクだよ： https://dl.acm.org/doi/pdf/10.1145/3385412.3386037" userName="coder543" createdAt="2025-02-16T12:54:22" color="">}}

{{<matomeQuote body="指摘してくれてありがとう。今は修正したはずだ。短縮はツイートを下書きするために使ったエディタ（“Buffer”）によるものだったから、意図的にリンクをトラッキングするつもりはなかったんだけど、クリック数を見る手段としては良いかもしれない。" userName="ChadNauseam" createdAt="2025-02-16T22:23:22" color="">}}

{{<matomeQuote body="全然関係ないけど、12歳の頃にプログラミングを学ぼうとした時のことを思い出す。参考書でちょっと学びながら、C++で簡単な計算機を作ったけど、次にどう進めばいいかわからなくて、母がITスクールを探してくれたんだ。セールスウーマンが「完全パッケージ」を推して、Cプログラミングの基礎とMicrosoft Excelなどの不要なトピックも入ってた。俺がもっと進んだことを学びたいって聞いても、あの人は俺の成果を過小評価して「計算機を作っただけじゃ誰でもできる」って言ったんだ。でも結局、俺は無知だったし、あの人はセールスがうまかったし、知識欲に負けて契約しちゃった。結局、プログラミングセクションはコンピュータサイエンスの表面をかすめるだけだったよ。教えてくれる人も多分いなかったし。学んだことは、セールスパーソンを信じちゃダメってこと。今の子供たちはオンラインでプログラミングを学ぶのがずっと簡単で良かった。" userName="nagonago" createdAt="2025-02-17T02:44:20" color="#ff33a1">}}

{{<matomeQuote body="いい話だね。シェアしてくれてありがとう。俺も当時「メッセージパッシング」ってなんだろうと悩んでたけど、後でWin32 APIのウィンドウプロシージャ（WNDPROC）に過ぎないってわかった。<泣き顔>" userName="throwaway2037" createdAt="2025-02-17T03:46:47" color="">}}

{{<matomeQuote body="たぶん、ITに関することを教える学校だよ。昔は俺の国（インド）で人気だった。でも今はプログラミングや組み込みをそれなりに幅広く教えるところがたくさんあるよ、大規模なブートキャンプみたいなやつではなく。" userName="sokz" createdAt="2025-02-17T15:56:51" color="">}}

{{<matomeQuote body="あの人が「計算機を作っただけ？それは誰でもできる」と言ったことを思い出すとムカつく。この自分の成し遂げたことを過小評価するのは教育者として最悪だし、彼女が悪者に思える。" userName="bbarnett" createdAt="2025-02-17T10:51:37" color="#45d325">}}

{{<matomeQuote body="俺も似たような道を歩んだよ。学校を通じてコンピュータの追加の授業を受けたら、10歳ぐらいでこの証明書を持ってることになった。だからOfficeもそれなりに熟知してたけど、招待状をExcelで作ったらかっこよくてさ。個別に印刷してた。幸運にも、理解してくれる先生がいて、フロッピーディスクでウェブページのテンプレートをくれて、Notepadで編集して実際に動かしてみることができた。" userName="matsemann" createdAt="2025-02-17T13:16:49" color="#ff5733">}}

{{<matomeQuote body="セールスパーソンは世界のがん。" userName="brettermeier" createdAt="2025-02-17T13:53:55" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="利益追求の教育が問題だよね。" userName="ed_b4_profit" createdAt="2025-02-17T18:20:29" color="">}}

{{<matomeQuote body="タイトルを見て笑っちゃった。計算数学の背景があるから、内容が何になるかだいたい想像がついた。IEEE 754は民主主義みたいなもので、最悪なものの中では一番マシだけど、シンプルなことが実は奥が深いって再確認したよ。" userName="mynegation" createdAt="2025-02-16T16:49:55" color="#ff5733">}}

{{<matomeQuote body="IEEE 754は、数値の動的範囲を広くし、精度を保ちながら、ビット幅を固定することで、スピードと精度をバランスを取ってる。計算機工学者はこの標準が必ずしも計算機に使われると考えてなかったはずだよ。" userName="pclmulqdq" createdAt="2025-02-16T18:13:19" color="#38d3d3">}}

{{<matomeQuote body="William KahanはIEEE 754とHP計算機の両方に関わってたよ。当時、8087と計算機のスピード差はそれほど大きくなかった。" userName="buescher" createdAt="2025-02-16T19:05:06" color="">}}

{{<matomeQuote body="1987年にビリオンやトリリオンの演算は合わないな。" userName="djmips" createdAt="2025-02-17T03:38:49" color="">}}

{{<matomeQuote body="いいポイント！ちなみにCray-2はIEEE 754浮動小数点を使ってなかったよ。" userName="djmips" createdAt="2025-02-17T10:23:37" color="">}}

{{<matomeQuote body="Crayは浮動小数点を使ってたけど、IEEE標準の浮動小数点ではなかったんだ。浮動小数点演算はトランジスタよりも古いよ。" userName="pclmulqdq" createdAt="2025-02-17T13:36:26" color="#45d325">}}

{{<matomeQuote body="そうだよ、仕様をリンクしたよ。" userName="djmips" createdAt="2025-02-17T22:50:54" color="">}}

{{<matomeQuote body="彼らが古すぎてサポートできなかったのは分かるけど、IEEE-754の設計者は基準を作るときにこれらのシステムを意識してたはずだよ。" userName="saagarjha" createdAt="2025-02-19T12:29:41" color="#45d325">}}

{{<matomeQuote body="何言ってるの？確かに大きな数字よりも、０から１の範囲の方が精度高いはずじゃない？" userName="8n4vidtmkvmk" createdAt="2025-02-16T22:19:27" color="">}}

{{<matomeQuote body="数値の精度って相対的に考えられることが多いよね。すべての浮動小数点数は同じビット数の精度を持ってるから。この範囲では半分が-1から1の間にあるのが事実だし、精度は均一だから。" userName="pclmulqdq" createdAt="2025-02-16T22:30:07" color="">}}

{{<matomeQuote body="普通の浮動小数点数だけがその性質を持ってて、サブノーマルは違うんだ。例えば単精度浮動小数点では、０.000000000000000000000000000000000000000000002は存在しなくて、０.000000000000000000000000000000000000000000001から０.000000000000000000000000000000000000000000003に直接飛ぶんだ。だから、精度は実質一桁もないよ。" userName="tialaramex" createdAt="2025-02-17T00:53:27" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、サブノーマルはゼロに近づくにつれて精度が徐々に失われるんだ。" userName="pclmulqdq" createdAt="2025-02-17T01:41:28" color="">}}

{{<matomeQuote body="サブノーマルは、必要な人のためにゼロ周辺に少し余裕を持たせるための汚いハックだよ。ハードウェアでも実際にはあまりサポートされてないし、普通の状況で使うのは間違い。" userName="hoseja" createdAt="2025-02-17T08:31:05" color="">}}

{{<matomeQuote body="2025年には、IntelとAMDがようやくハードウェアサポートを実装したみたいだね。Zen 2とIce Lakeに到達するまで待ったんじゃなかったっけ。" userName="pclmulqdq" createdAt="2025-02-17T13:38:34" color="">}}

{{<matomeQuote body="おお、やっと来たね！でも計算はほぼ８ビットの“floats”で動くようになるところだね。" userName="hoseja" createdAt="2025-02-17T13:49:20" color="">}}

{{<matomeQuote body="IEEE 754は、符号や指数、分数のアイデアから始めて、それを可能な限り効率的なハードウェアの実装にしたものだよ。美しいとは言えないけど、見た目はシンプルだし、-0やサブノーマル、あらゆる丸めモードみたいな奇妙に見える部分もその前提から自然に出てくるんだ。民主的に設計されたわけじゃないけど、数値計算の専門家とハードウェア設計の専門家が一緒になって作ったんだ。単純化された浮動小数点の実装は、最終的には必ずIEEEの標準に戻ってくるよ。" userName="titzer" createdAt="2025-02-16T17:07:42" color="#45d325">}}

{{<matomeQuote body="もう一つの見方として、浮動小数点は固定小数点演算を対数空間で拡張して、大きな数オーダーの扱いを可能にするものだよ。“美しい”って言う言葉が適切かは分からないけど、信じられないくらい堅固なお手本のエンジニアリングだね。" userName="AlotOfReading" createdAt="2025-02-16T17:47:42" color="#ff33a1">}}

{{<matomeQuote body="あなたの説明は、IEEE-754 floatsの設計に対して意図したよりもネガティブに感じるかも。何か他にもっと良い案があったと思うの？もしかしたら誤解してるかも。ハードウェアの焦点が大きな指数と小さな仮数を生んでる要因かもね。非IEEEで我が思い付きにあるのはbfloat16のようにfloat32の最上位半分だけを使うものや、log8のようにほぼすべて指数にしたものかな。どちらもメモリ帯域幅を最大限活用するためのものだし、基本操作はf32 + x * y -> f32（つまりf32結果に掛け算して累積する）だよね。もしかしたら、これらはIEEEの標準にも組み込まれるかも。" userName="dan-robertson" createdAt="2025-02-16T17:48:53" color="#785bff">}}

{{<matomeQuote body="サブノーマル嫌いな人もいるけど、確かにIntelじゃ遅いし、Armでもちょっと遅いからな。IEEE 754に関してはあんまり好き嫌いはないけど、-0だけは勘弁。これにはほんとに膨大な時間を費やしたわ。オレ的には、これは機能に見せかけたエンコーディングのアーティファクトだと思う。" userName="titzer" createdAt="2025-02-17T04:01:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞”符号、指数、そして分数のアイデアから始めて、最も効率的なハードウェア実装を思いついた結果がこれだ。美しいとは言えないけど、スタート地点からはストレートに導き出される。”この文脈での「美しい」の定義が奇妙に思えるね。" userName="tbrownaw" createdAt="2025-02-16T20:23:44" color="">}}

{{<matomeQuote body="IEEE754は純数学には向いてないけど、実生活には問題ないよ。実際には、ダブルで得られる52ビットの精度を持つ計測器なんてないし、10の1000乗の範囲の数量なんて遭遇しないからね。画面にピクセルを描く時、原子レベルまで気にする必要はない。なので、リアルな例では通常のIEEE 754算術を改善する方法は、区間算術が良いかも。数学には向かないけど、測定誤差に対応できるしね。計算機では精度が大事だけど、ユーザーが現実の数値使ってるか抽象数学やってるか分からないからね。" userName="GuB-42" createdAt="2025-02-17T01:22:21" color="#ff5733">}}

{{<matomeQuote body="IEEE754は実生活には問題ないかもしれないけど、単純な数式を使った時に、入力や出力が普通でも意外に複雑な中間値に遭遇しちゃうことがあるから、注意が必要だよね。" userName="RandomBK" createdAt="2025-02-17T02:48:02" color="">}}

{{<matomeQuote body="精度エラーがシステム内で蓄積されると問題になるよね。一回の計算がちょっと外れたっていうよりも、複数の計算を重ねていくと、最終的にはかなりずれてくるから。これってアホみたい？" userName="azeirah" createdAt="2025-02-17T16:17:06" color="">}}

{{<matomeQuote body="＞”IEEE 754は民主主義みたいなもので、最悪だけど他の選択肢よりはましな感じだ。”それより悪いのは思いつかないな。コンピュータの本来の目的は正確な結果を出すことだから、コンピュータに不正確な数学システムを導入するのは本末転倒だよ。正確な結果を出せる別の数学解決法の方が良さそうな気がするな。" userName="bigstrat2003" createdAt="2025-02-16T17:17:30" color="">}}

{{<matomeQuote body="時には、1.近似 2.コンパクトで速い 3.広いダイナミックレンジを持つ数値システムが必要になるんだ。これらの条件を満たすなら、浮動小数点より優れたものを作るのは難しいよ。" userName="aoeusnth1" createdAt="2025-02-16T17:29:31" color="">}}

{{<matomeQuote body="＞”正確な結果が出ない限り、何かをやり遂げるのは難しい。IEE-754は表現サイズに対する誤差がひどい距離を持っている。”どんなシステムが正確な結果を出すのか、固定サイズで数値を表し、合理的な整数で1/nを正確に表現し、指数も正確なシステムなんて知らないな。" userName="recursive" createdAt="2025-02-16T17:39:42" color="">}}

{{<matomeQuote body="電子コンピュータは、人間のコンピュータ（スライドルールや機械的な加算機を使ってた）より速く、安く作られるために生まれたんだ。人間のコンピュータは限られた精度の小数点浮動数を扱ってたからね。" userName="dan-robertson" createdAt="2025-02-16T17:57:32" color="">}}

{{<matomeQuote body="＞”ほとんどの場合において、正確な結果なんて存在しない。”自分の望む精度で十分なほど正確な結果しか得られないんだ。" userName="raverbashing" createdAt="2025-02-16T17:31:53" color="">}}

{{<matomeQuote body="コンピュータでの工学計算には理想的だよ。値を正確に測定できることなんてないから、1-1=0が正確かどうかは誰も気にしないしね。シングル精度で十分だけど、ダブル精度は中間結果に使っても見た目の誤差が出ないからいい感じ。数値的に不安定なアルゴリズム使わなければだけど。" userName="foxglacier" createdAt="2025-02-16T17:43:35" color="#ff5c5c">}}

{{<matomeQuote body="「正確」ってどういう意味？" userName="meindnoch" createdAt="2025-02-16T17:38:49" color="">}}

{{<matomeQuote body="コンピュータのメモリは有限だけど、実数は無限にあって、どんな実数システムでも四捨五入は避けられないよ。" userName="bazoom42" createdAt="2025-02-17T06:55:49" color="">}}

{{<matomeQuote body="NYCの地下鉄の運賃は$2.90だよ。iOSのPCalc使ってメトロカードの残り値を計算したら、AC, 8.7, m+, 2.9, m-, m-, m-で-8.881784197E-16が出ちゃった。Appleの計算機じゃこうならないみたい。開発者に聞いたら、”Appleは独自の数学ライブラリを使っているから、俺もなんとかしなきゃ”ってさ。" userName="kevinpacheco" createdAt="2025-02-16T17:16:57" color="#ff5733">}}

{{<matomeQuote body="初代BlackBerry用の計算機を作ったんだけど、浮動小数点は使えなかったんだ。丸め誤差を避けるために十進法の浮動小数点を実装した。難しくはなかったけど、”指数部”はビットシフトじゃなくて、割り算に使う10のべき乗を扱ってたから、0.1や0.001が正確に表現できたんだ。" userName="MatthiasWandel" createdAt="2025-02-16T21:12:18" color="#ff5733">}}

{{<matomeQuote body="＞”指数部”はビットシフトじゃなくて、割り算に使う10のべき乗を扱ってたから、0.1や0.001が正確に表現できたんだ。意味するのは、10のべき乗で割り算するってこと？" userName="cylemons" createdAt="2025-02-17T04:52:57" color="">}}

{{<matomeQuote body="びっくりした、君はすごい機械装置を作ってるだけだと思ったよ。RIMのページャーにJVMがあると思ったけど、実際はあまり使わなくて、メールにしか使ってなかったな。" userName="kragen" createdAt="2025-02-17T04:27:10" color="">}}

{{<matomeQuote body="JVM搭載のデバイスは数年後の話だよ。これは1998年で、386ベースのBlackBerryページャーだからメールだけしかできなかった。電話もできなくて、その当時は二方向ページングが未来に見えたんだ。RIMは後に電話ネットワークに移行したけど、iPhoneとAndroidの登場でトラブルにあったよ。" userName="MatthiasWandel" createdAt="2025-02-17T12:26:29" color="#ff5c5c">}}

{{<matomeQuote body="そうだ、そのページャーだった。ポケットデバイスの中で最高のキーボードだったから、君の計算機も少し使ったよ。" userName="kragen" createdAt="2025-02-17T22:20:01" color="">}}

{{<matomeQuote body="どうやら彼はただの定番の数学関数を使ってるだけみたいだね。JavascriptとPythonも同じだから、8.7から(2.9×3)を引いた結果をすぐ保存するのと変わらない。" userName="6SixTy" createdAt="2025-02-16T20:48:59" color="">}}

{{<matomeQuote body="ちゃんとした計算機アプリなんてほとんど誰も作ってないんだよね。本当にちゃんとしたのはTI-89みたいな完全な計算機だよ。今Androidでエミュレーター使ってTI-89計算機を動かしてるけど、半分の機能も持ってるアプリがないんだ。" userName="Shorel" createdAt="2025-02-16T13:17:17" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
