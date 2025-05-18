+++
date = '2025-05-11T00:00:00'
months = '2025/05'
draft = false
title = 'まさかの単純さ！LLMのアテンションヘッド ゼロから作る開発記 第13回'
tags = ["LLM", "Attention", "機械学習", "開発", "技術解説"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> まさかの単純さ！LLMのアテンションヘッド ゼロから作る開発記 第13回

引用元：[https://news.ycombinator.com/item?id=43931366](https://news.ycombinator.com/item?id=43931366)




{{<matomeQuote body="Attentionについて一番分かりやすかったのはCosma Shaliziって人の投稿だよ[0]。彼が言うには、AttentionってKernel smoothingの再発見、っていうかそのものなんだって。数学とか定量的な背景がないとピンとこないかもだけど、ある人にはめっちゃ腑に落ちるはず。Multi-headed Attentionも、Kernel smoothingでカーネルを増やして、結果に線形変換（実際は平均とか足し算）をしてるだけって分かると超シンプル！[0] リンク略" userName="crystal_revenge" createdAt="2025/05/11 19:52:09" color="#45d325">}}




{{<matomeQuote body="Kernel smoothingとの関連は役に立つよね。カーネル関数の近似方法が研究されてるし。GoogleもPerformerっていうので、Attentionの計算量を線形にする研究発表してるよ。これはKernel smoothingの考え方で、効率的なカーネル近似のアルゴリズム（FAVOR+）を使ってるんだって。" userName="FreakLegion" createdAt="2025/05/11 21:00:27" color="#ff5733">}}




{{<matomeQuote body="ってことはさ、LLMがすごく長い文章を扱えるのって、もしかして内部でKernel smoothingみたいな計算量少なめの仕組みをもう使ってるからなのかな？ Manifest AIのCEO、Jacob Buckmanって人もそんなこと言ってた動画があったよ[1]。" userName="snthpy" createdAt="2025/05/12 08:03:23" color="#785bff">}}




{{<matomeQuote body="「Kernel smoothing」って言葉知らない人のために説明すると、この式のことだよ：Σᵢ yᵢ · K(xᵢ, x₀) ⁄ (Σⱼ K(xⱼ, x₀))。<br><br>Attentionでは K(qᵢ, k₀) = exp(＜qᵢ, k₀＞) みたいになる感じ。<br><br>QueryとKeyが違うベクトルを使うのがAttentionの特徴。<br><br>Self-attentionみたいに K(xᵢ, x₀) = exp(＜W_q xᵢ, W_k x₀＞) って定義しない限りね。<br><br>ほとんどのAttentionは正規化項も使うよ。" userName="thomasahle" createdAt="2025/05/11 21:14:48" color="#45d325">}}




{{<matomeQuote body="それってAttention理解するのに必要な数学、つまり線形代数が分かる人向けだよね。数学苦手なら遠慮なく聞いて！みんな喜んで助けてくれるはずだよ。総和記号についてはここのリンク見てみたら？ リンク略" userName="mrks_hy" createdAt="2025/05/12 08:02:05" color="">}}




{{<matomeQuote body="いや、正直分かりやすいってわけじゃないよ。大学で線形代数は一番成績良かったけど、カーネルについて何も知らないと、これじゃ助けにならないな（そもそもxiとかyiって何？）。" userName="auggierose" createdAt="2025/05/12 10:10:15" color="">}}




{{<matomeQuote body="それは最初に紹介されてるリンクに全部書いてあることだよ。みんな落ち着こうぜ。" userName="lambdasquirrel" createdAt="2025/05/12 12:58:13" color="">}}




{{<matomeQuote body="Kernel smoothingではカーネルが固定だったり、位置エンベディングとかがなかったりするんだ。あと計算量がデータの二乗で大変だったのが、TransformerがRNNやLSTMより効率的で流行った理由だよ。Attentionをカーネル法に還元する見方は、理論的には面白いけど、実用的にはちょっと違うかもね。" userName="esafak" createdAt="2025/05/11 21:48:18" color="#45d325">}}




{{<matomeQuote body="個人的には、Attentionを「学習されたk-vマップの加重平均ルックアップ」って表現する方が、「Kernel smoothing」って言うよりストレートで分かりやすいと思うな。" userName="sooheon" createdAt="2025/05/12 03:33:54" color="#ff5c5c">}}




{{<matomeQuote body="両方の良いとこ取りでさ、『あれは単に kernel smoothing なんだよ。連続的に学習した kv-map lookup の加重平均なんだ。』って言ってみたら？そうすれば定義も分かるし、調べるのに使える別の名前も手に入るじゃん。" userName="ablob" createdAt="2025/05/12 12:53:53" color="#38d3d3">}}




{{<matomeQuote body="ってことはさ、彼らが展開してるモデルで sub-quadratic architectures を使ってて、長い context lengths を実現するために、なんかこの考え方を使ってるって思う？<br>1: ”Context Is The Next Frontier by Jacob Buckman, CEO of Manifest AI” (https://youtu.be/wJyl6kBCwmY?si=ruwMWdENJazu3rp6)" userName="snthpy" createdAt="2025/05/12 08:01:46" color="">}}




{{<matomeQuote body="もしこういうのに興味あるならさ、ブラウザで純粋な Javascript で動く、めっちゃシンプルな neural network で attention heads が2つついたやつ見てみたらどう？この実装のソースコードも見れるよ:<br>https://taonexus.com/mini-transformer-in-js.html<br>100エポック学習させてもあんまりうまく動かないんだけど（学習後の Inference タブで試せるよ）、ライブラリ一切使ってないから、ソースコードで実際の計算が見えるんだ。" userName="logicallee" createdAt="2025/05/11 17:46:41" color="#38d3d3">}}




{{<matomeQuote body="semantic space の話なんだけど、ベクトルの長さが重要なんだよね。だから dot product より『Cosine Similarity』が使われるんだ。長いベクトルは『より強い signal』って意味になるかも。もし『very happy』が『happy』の長いバージョンなら、単語『more』がベクトルの長さに反映されるような学習ってできないのかな？これは LLM 開発の次のフロンティアかもね。" userName="quantadev" createdAt="2025/05/11 18:44:32" color="#45d325">}}




{{<matomeQuote body="これすごく面白そうだね。<br>このシリーズ記事の最初に行く一番簡単な方法はこれみたい:<br> https://www.gilesthomas.com/til-deep-dives/page/2<br>あー、時間さえあればなあ…" userName="andrehacker" createdAt="2025/05/11 16:40:08" color="">}}




{{<matomeQuote body="たぶんモバイルだと表示が違うのかもだけど、僕にはこれが最初のエントリーだったよ。記事の終わりのナビゲーションで次のパートに進めるよ<br>https://www.gilesthomas.com/2024/12/llm-from-scratch-1" userName="Tokumei-no-hito" createdAt="2025/05/11 17:07:38" color="">}}




{{<matomeQuote body="著者です: このコメントに賛成だよ ;-) シリーズを読むなら、間違いなくこれが僕が最適化したルートだからね。" userName="gpjt" createdAt="2025/05/12 03:05:45" color="">}}




{{<matomeQuote body="Python と外部ライブラリを使うのはやめてほしいな。すぐ動かなくなるから。昔の C 言語の本は今でも役に立つのにさ。理論を教える本は、外部ライブラリに頼らず自己完結的であるべきだよ。じゃないと、後から読もうとしたときに困るんだ。" userName="badsectoracula" createdAt="2025/05/11 17:18:54" color="">}}




{{<matomeQuote body="Myeah, C and C++ have the advantage that the compilers support compile for old versions of the language. The languages are in much flux partly because of security problems, partly because features are added from other languages.<br>That means that linking to external libraries using the older language version will fail unless you keep the old version around simply because the maintainer of the external library DID upgrade.Python is not popular in ML because it is a great language but because of the ecosystem: numpy, pandas, pytorch  and everything built on those allows you to do the higher level ML coding without having to reinvent efficient matrix operations for a given hardware infrastructure." userName="andrehacker" createdAt="2025/05/11 17:38:15" color="">}}




{{<matomeQuote body="＞Python is not popular in ML because it is a great language but because of the ecosystem: numpy, pandas, pytorch and everything built on those allows you to do the higher level ML coding without having to reinvent efficient matrix operations for a given hardware infrastructure.Ecosystems don’t poof into existence. There are reasons people chose to write those libraries, sometimes partly or wholly in other languages for python in the first place.It’s not like python was older than or a more prominent language than say C when those libraries began." userName="og_kalu" createdAt="2025/05/11 19:56:17" color="">}}




{{<matomeQuote body="（”The languages are in much flux”はC/C++じゃなくてpythonのことだとして）Pythonが今使われてる理由は分かるし、理論書ならPythonでも良いと思うよ。古いバージョンを使う手もある。でも、理論学習なら効率より堅牢性や将来性も大事じゃない？CとかC++とかGoとかJavaとかC#みたいに後方互換性の良い言語を使う選択肢もあるし、多少非効率でもライブラリもあるだろうから、本のコード試す用に使っても良いんじゃないかな。（個人的にはPythonはテスト用途だけにしてほしいけど）" userName="badsectoracula" createdAt="2025/05/11 17:48:36" color="#ff5c5c">}}




{{<matomeQuote body="”The languages are in much flux”はC++のことだよ。だってC++は10年で4回も大きな改訂があったんだから。企業で数百万行のC++コードのアップグレードを経験したけど、C++だってバージョン問題の銀の弾丸じゃない。コンパイラの互換モードを使えば古いコードを動かせるのは確かだけどね。" userName="andrehacker" createdAt="2025/05/11 18:30:56" color="#ff33a1">}}




{{<matomeQuote body="それって新しい機能の追加だろ。その多くは言語自体じゃなくてライブラリの一部だよ。大体さ、コンパイラで新機能を有効にするだけで、古いコードをコンパイルするのにそれを無効にする必要はないんだよ。古いコードをいじりつつ、新しいコードで新しい機能を使うのも全然問題ないよ。" userName="YZF" createdAt="2025/05/11 19:04:19" color="">}}




{{<matomeQuote body="2年前のPythonプログラムが今のバージョンのPythonで動かなくなる、って例を見せてあげられるよ。gccのバージョンでそれできる？" userName="guappa" createdAt="2025/05/12 08:34:01" color="">}}




{{<matomeQuote body="私の知る限り、これが原因で既存のコードが動かなくなるってことはないね。" userName="badsectoracula" createdAt="2025/05/12 16:22:56" color="">}}




{{<matomeQuote body="超有名なEffective C++シリーズの著者、Scott Myersでさえ、C++の変動についていけなくて言語から離れたんだよ。動画はこれね -＞ https://www.youtube.com/watch?v=KAWA1DuvCnQ" userName="AlexCoventry" createdAt="2025/05/12 03:46:57" color="#38d3d3">}}




{{<matomeQuote body="C++はさ、どんどん肥大化して複雑になってる、って問題はあるけど、変更のせいで既存のコードが動かなくなる、って問題はないんだよ（めちゃくちゃ特殊なエッジケースは別としてさ）。" userName="badsectoracula" createdAt="2025/05/12 16:23:25" color="">}}




{{<matomeQuote body="その動画11年前のだよ。今のC++はすごく良い言語だよ。一つだけ惜しいのはスタンドアロンのREPLがないことかな。でも今のコードエディタってそれに近い役割を果たしてると思うんだ。" userName="thesz" createdAt="2025/05/12 09:55:21" color="">}}




{{<matomeQuote body="外部ライブラリへのリンク失敗について．古い言語バージョンでも大丈夫だよ．CのABIは変わってないし，C＋＋も互換性はあるはず．標準ライブラリの作者が頑張ってるからね（少なくともlibc＋＋とstdlibc＋＋はそう）．最後にC＋＋のABIが壊れたのは15年前のstd：：stringの変更だけだよ．だから君の言ってることは正しくないと思うよ．" userName="vlovich123" createdAt="2025/05/11 19:42:53" color="#785bff">}}




{{<matomeQuote body="venvとかじゃ根本問題は解決しないんだよ．この前Pythonツール使おうとしたら，依存関係の奥深くで互換性壊れてて動かなかった経験がある．使ってたPythonバージョンも無かったし．結局Debian docker内でソースからPythonビルドして解決したよ．大変だった．" userName="badsectoracula" createdAt="2025/05/12 16:30:55" color="#38d3d3">}}




{{<matomeQuote body="condaとかvenvって根本的な解決にならないんだよね．MLプロジェクトはrequirementsが不十分で，pipで最新版入れたら依存関係が壊れるとかよくある．依存の依存の依存で問題起きたりね．pip freezeも完璧じゃないし，pipは賢くないんだ．requirementsがずれるしPythonバージョン問題も．これらの救世主がuvだよ．正確なバージョンロックで互換性解決してくれるし，高速だよ．一度試してみて！" userName="miki123211" createdAt="2025/05/12 15:02:54" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="venvやcondaも良いけど，古すぎるのに戻ると問題起きるよ．システムOpenSSLにリンクするPythonライブラリで，依存のせいで超古いバージョンが必要になったんだけど，今のOpenSSLじゃコンパイルできなくてハマった．最終的にUbuntu 18．04／20．04のDockerコンテナ＋virtualenvで解決したけどね．" userName="tonyarkles" createdAt="2025/05/11 20:01:53" color="#38d3d3">}}




{{<matomeQuote body="ある程度はね．でも回避や更新の難しさが違う．Cなら自分のコード直せばいいけど，僕の経験では依存の依存の依存で問題起きて泥沼だった．pip installで試行錯誤して最小バージョンを探って，Pythonコードを合わせる手もあったけどね．" userName="tonyarkles" createdAt="2025/05/14 20:27:56" color="#785bff">}}




{{<matomeQuote body="今のLLMじゃAGIには絶対ならないよ．静的ウェイトの時代だから．計算力だけでスケールしても限界がある．昔のAIはドメイン知識重視で計算力スケールに負けた（ビターレッスン）．今は”大きい方が良い”って人ばかりだけど，静的ウェイトは経験から学ばない．継続学習とは別物だよ．僕は自己参照行列とかメタ学習戦略が来ると思う．手動調整は終わるべきだ．" userName="imtringued" createdAt="2025/05/12 08:45:56" color="#ff5c5c">}}




{{<matomeQuote body="LLMは脳の記憶と想像を真似てるからだよ．足りないのは，現実世界を元に生み出したものを検証する能力．僕たちには真偽の概念があるけど，LLMにはないんだ．" userName="hliyan" createdAt="2025/05/12 04:05:40" color="#38d3d3">}}




{{<matomeQuote body="LLMってさ、トークン同士の複雑なつながりを追うことで言葉を真似てるんだって。記憶とか想像を真似てるんじゃなくて、ただトークンのリストを別のリストに変えて言葉を生み出してるだけ。言葉って知能のパズルの超大事な部分だから、すごい機械的なのに賢く見えるんだよね。次はさ、自分らしさとか時間を感じるためのparetial lobeみたいな部分を持つ”心”を作る段階かもね。" userName="nurettin" createdAt="2025/05/12 04:36:55" color="#38d3d3">}}




{{<matomeQuote body="<br>”it looks smart to people despite being quite mechanical”ってさ<br>脳だってソフトだって物理システムだって全部”quite mechanical”じゃん？<br>結局さ、”Looks smart”ってのは限界までいくと”is smart”ってことなんだよ。" userName="dTal" createdAt="2025/05/12 15:02:30" color="">}}




{{<matomeQuote body="え、transformersってさ、universal differentiable layered hash tablesだよ。それってめちゃくちゃ強力だよ。ほとんどのlogicって単にsymbolを取り出してhashでstructureを合わせるだけだし。intelligenceが単にlogicのreasonable manipulationなら、LLMがintelligentなのは別にsurprisingじゃないかもね。たぶんsurprisingなのは、もっとsizeを大きくしなくてもintelligenceがあることかな。あとinternetでtrainingさせたらこんなことするようになったのもpossibly more surprisingだね。" userName="throwawaymaths" createdAt="2025/05/11 21:44:54" color="#ff33a1">}}




{{<matomeQuote body="<br>前のコメントで俺の言ったことを”word-salad”って言われたけどさ、Llama LLMをnon-pythonで作った経験あるから分かってるつもりだよ。transformersがuniversal differentiable layered hash tablesって話はここから知ったんだ: https://www.youtube.com/watch?v=iDulhoQ2pro<br>vectorsがK/Vって呼ばれてるし、やっぱそうだろ？logicとかもcleverなlookup tablesでいけるってアイデアはここから: https://en.wikipedia.org/wiki/Fluid_Concepts_and_Creative_An..." userName="throwawaymaths" createdAt="2025/05/12 03:38:45" color="">}}




{{<matomeQuote body="上の投稿の作者だけどさ、もしあれがword saladなら、Michelin star saladだよ。Lettuceとtomatoのmixがjust rightで、dressingもspot on :-) Seriously, universal differentiable layered hash tablesはawesome way to look at themだね、もっと早く知りたかったよ。" userName="gpjt" createdAt="2025/05/12 11:05:32" color="">}}




{{<matomeQuote body="Neurons are pretty simple too. Any arbitrarily complex system must be made of simpler components, recursively down to arbitrary levels of simplicity. If you zoom in enough everything is dumb." userName="jlawson" createdAt="2025/05/11 20:14:26" color="">}}




{{<matomeQuote body="The deeper you break things down, the dumber they seem.<br>But maybe that dumbness is just an illusion of the observer’s perspective.<br>Consciousness isn’t in the neurons themselves—it’s in the invisible coordination and tension between them." userName="Zorass" createdAt="2025/05/12 04:32:56" color="#ff33a1">}}




{{<matomeQuote body="Anything is simple if you approximate it to an adimensional point and ignore all the complexities that make it different from that." userName="guappa" createdAt="2025/05/12 08:36:25" color="">}}




{{<matomeQuote body="No, you misunderstood.<br>I am describing [taking part of the whole] not [simplifying the whole] - is that clearer?" userName="jlawson" createdAt="2025/05/12 16:24:30" color="">}}




{{<matomeQuote body="ニューロンってマジで単純じゃないんだよね．人工ニューラルネットワークの超単純化されたモデルよりはるかに複雑だよ．" userName="voidspark" createdAt="2025/05/11 20:56:18" color="">}}




{{<matomeQuote body="ほとんどの複雑さは知能には関係ないんだよ．細胞を生かしておくためのメカニズムばっかりでしょ．生物のほとんど全ては進化で偶然見つかった不器用なハックで，長い年月かけて死ぬほど最適化されただけ．そのゴチャゴチャをすっ飛ばして，知能に本当に必要な核となるアルゴリズムだけ抽出できるんだよ．" userName="jiggawatts" createdAt="2025/05/12 03:41:09" color="#ff5733">}}




{{<matomeQuote body="それ君の間違いだよ．https://grok.com/share/bGVnYWN5_ab498083-58c4-4345-9140-07b5...<br>Biological Neuronは複雑な入力統合や時間パターンがあるけど，Artificial Neuronは単純な線形和で機能が少ないんだ．詳しい比較はリンク見てね．" userName="voidspark" createdAt="2025/05/12 04:06:01" color="#38d3d3">}}




{{<matomeQuote body="これ興味深いね．https://chatgpt.com/share/68219da9-1e78-8007-b083-8a81bfbea2...<br>”Dendritesは非線形処理や論理ゲートみたいに動けるし，Neurotransmitterが多様だから接続ごとに意味が違うんだって．人工的なのは単純なんだな．詳細はリンク見てみて．" userName="voidspark" createdAt="2025/05/12 07:05:54" color="#ff33a1">}}




{{<matomeQuote body="ほとんどの関数もそうじゃないけど，局所的に見れば，一点での線形近似は実際には全く問題なく機能するでしょ．" userName="laichzeit0" createdAt="2025/05/12 03:54:10" color="">}}




{{<matomeQuote body="これ関連するかも．https://news.ycombinator.com/item?id=43959553" userName="voidspark" createdAt="2025/05/12 04:09:26" color="">}}




{{<matomeQuote body="このトピックに関する本，今はたくさん出てるよね．他の選択肢についてどう思う？なんでこれ（記事で言及されてる本）を選んだの？あなたの考えを聞かせてもらえると嬉しいな！" userName="theyinwhy" createdAt="2025/05/11 16:35:18" color="">}}




{{<matomeQuote body="この本，”一番良い”って言われてるけど，Giles Thomasも言ってたみたいに，詳細に寄りすぎで全体像がないんだよね．細かいところはすぐ変わるだろうし．3blue1brownみたいに分かりやすくて深掘りできる資料を探してるんだけど見つからない．Gilesのブログはこの本に背景を加えてて良さそうだよ．［1］ https://m.youtube.com/watch?v=wjZofJX0v4M" userName="andrehacker" createdAt="2025/05/11 16:50:27" color="#785bff">}}




{{<matomeQuote body="今，ブログで言及されてる本を読み進めてて，小さいLLMを作ってるところだよ．まだ2章だけど，LLMsについて色々なことがクリアになったし，細かいステップに分けてくれてて助かってる．Building a large language model from scratch，マジおすすめ．" userName="darrelld" createdAt="2025/05/12 04:25:27" color="#ff5733">}}




{{<matomeQuote body="なんか気になるんだけど，本の著者って，誰かが本の内容全部ブログで要約したりすること，自分たちの利益になると思ってんのかな？<br>もっと興味深いのは，LLMに本を要約させて，それでブログシリーズ作っちゃうのはアリなのかな？" userName="buster" createdAt="2025/05/12 05:42:33" color="#ff5733">}}




{{<matomeQuote body="筆者だよー、それ気を付けてるんだ。俺の記事は抜けを埋めることに重点置いてるんだよね。触れられてないことをカバーしてる感じ。あの本は、俺よりAIの内部に詳しい人がターゲットだと思うから、俺も追いつくのに必死なんだ。" userName="gpjt" createdAt="2025/05/12 11:00:36" color="#ff5733">}}




{{<matomeQuote body="機械学習の「なぜ」には2つの層があると思うんだ。1つは低レベルの「なぜ」で、数学的に説明できる方。もう1つは高レベルの「なぜ」で、直感的な意味付けとかの方。TransformerのQKVに意味を考えるのは、後者の高レベルな話だね。数学的な「なぜ」は正しさを証明できるけど、高レベルな「なぜ」は他のアイデアを生むのに役立つんだ。" userName="Lerc" createdAt="2025/05/11 22:09:30" color="#ff5c5c">}}




{{<matomeQuote body="低レベルの「なぜ」はよく分かんないこと多いな。ただ、問題を解決するために何か作って、大量のデータと計算能力で勾配降下法を使って力技で押し通してる感じ。設計の選択が良かったかは不明だけど、とにかく動いちゃうんだよね。" userName="charlieyu1" createdAt="2025/05/12 03:48:02" color="">}}




{{<matomeQuote body="QKVに意味を持たせる必要はないんじゃないかな。モデル容量とか表現空間として考えればいいと思う。学習時と推論時でモデルの振る舞いは違うことがあるしね。LSTMとかMambaのGatingも、情報を選別してるっていうより、線形システムじゃ表現できない非線形な関係性を表現できるようにしてるんだと思う。" userName="imtringued" createdAt="2025/05/12 09:32:28" color="#785bff">}}




{{<matomeQuote body="QKVの名前は歴史的なものってのは分かるけど、それぞれの役割を調べるのは意味あると思うんだ。そこから新しいモデルのアイデアが生まれるかもね。MLPみたいな単純なモデルは大きすぎて無理だから、今のアーキテクチャは効率化のためだし。QとKと元の情報からVを動的に作る仕組みとか、ありえるんじゃないかな。" userName="Lerc" createdAt="2025/05/12 12:07:15" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
