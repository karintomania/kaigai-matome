+++
date = '2025-05-14T00:00:00'
months = '2025/05'
draft = false
title = 'Gemini搭載のアルゴリズム設計AI AlphaEvolveが登場！'
tags = ["AI", "アルゴリズム", "プログラミング", "機械学習", "Gemini"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> Gemini搭載のアルゴリズム設計AI AlphaEvolveが登場！

引用元：[https://news.ycombinator.com/item?id=43985489](https://news.ycombinator.com/item?id=43985489)




{{<matomeQuote body="論文から言うと、「特に4×4行列2つを掛けるのに、Strassenのアルゴリズムを再帰的に使うと49回の乗算で済んで、これはどんな体でも使えるんだ…。AlphaEvolveは初めて4×4の複素数値行列を48回の乗算で見つけ出した方法なんだ。」って書いてあるね。<br>素朴な行列計算をすると、似たような作業を何度もしてる気がするけど、それが具体的にどんな重複作業かって quantifying するのは難しいよね。<br>例えば、2つの集合の合併のサイズを計算するのと比べてみてよ。<br>合計サイズ = size(A) + size(B) - size(intersection(A, B))<br>この重複してる intersection の分を取り除かないといけないのは、2回数えてるからだよね。もし最初から2回数えるのを避けられたらどうかな？それは簡単で、それぞれの集合を1回ずつ見て、既に見た要素を記録しておけばいい。<br>Strassenのアルゴリズムは、後で必要になる計算を記録してるんだ。動的計画法を思い出すね。<br>面白いのは、この余分な savings には複素数が必要らしいってこと。素朴なやり方だと、複素数平面で何か again over-counting してる部分があるに違いないね。" userName="aabajian" createdAt="2025/05/14 17:11:14" color="#ff5c5c">}}




{{<matomeQuote body="「4x4 matrices multiplication 48」でググってみたら、math.stackexchangeのこの議論に行き着いたよ https://math.stackexchange.com/questions/578342/number_of_el… <br>そこで2019年に誰かが「4×4行列A,Bはたった48回の乗算で掛けられる」って言ってて、博士論文へのリンクがあったんだ。もしかしてこの結果って既に知られてた可能性があるってことかな（アルゴリズムの概要はまだ確認してないけど）。" userName="lf88" createdAt="2025/05/14 19:38:23" color="">}}




{{<matomeQuote body="著者の一人だよ。Winograd方式は知ってるけど、あれは可換環でしか動かないから、大きな行列に再帰的に適用するのは無理なんだよね（あと、＜4,4,4＞行列乗算テンソルのランク48分解にも対応してない）。MathOverflowの回答は間違いがあって、Benoit Jacobがコメントで訂正してくれてるよ。<br>もっと詳しくね：Winograd方式は (x1+  y2  )(x2+  y1  ) + (x3+y4)(x4+y3)-Ai-Bj を計算するんだけど、最初の括弧を展開して出てくる y2y1 が、Bj=y1y2 + y3y4 の y1y2 とキャンセルするのに依存してるんだ。数を扱うときはこれでいいんだけど、アルゴリズムを大きな行列に再帰的に適用したい場合、一番上の再帰レベルだと4x4のブロック行列（それぞれのブロック自体が大きな行列）を扱うことになるんだけど、一般的な行列だと Y2Y1 != Y1Y2 になっちゃうからダメなんだよ。<br>異なる行列サイズの最速（再帰適用可能な）行列乗算アルゴリズムを追跡してるサイトもあるよ https://fmm.univ-lille.fr/4x4x4.html 4x4x4は49になってるね。<br>UPD: fields を rings に修正したのと、数式の表示を直したよ。" userName="alexnovikov" createdAt="2025/05/15 17:14:29" color="#785bff">}}




{{<matomeQuote body="Twitterでのいくつかの会話からすると、4×4行列乗算テンソルのrank-48分解は本当に新しいっぽいってことがあり得るね。そして、多分問題が起きたのは、この結果を分かりやすく説明しようとしたときじゃないかな。あの投稿にあるアルゴリズムは、どうやらrank-48テンソル分解を構成したり、それを意味したりするものではないみたいなんだ。<br>一方で、ここでは1970年からたった46回の乗算を使うアルゴリズムが知られてるっていう主張もここで見たよ https://mathstodon.xyz/@fredrikj/114508287537669113" userName="robinhouston" createdAt="2025/05/14 20:53:59" color="#45d325">}}




{{<matomeQuote body="皮肉だね、彼らのAIに聞けば46ステップの関連論文を引用できるらしいよ https://gemini.google.com/share/b0d5d6a76c87" userName="looofooo0" createdAt="2025/05/15 09:58:20" color="">}}




{{<matomeQuote body="すでに下の fdej さんの投稿で指摘されてるけど、1970年の Waksman のアルゴリズムは複素数上で、たった46回の乗算で済むんだ（あと、2での除算が必要だと思うけど、これは実際の環によるかもしれないね）。" userName="wbhart" createdAt="2025/05/14 21:44:53" color="">}}




{{<matomeQuote body="（Waksmanの）回答には「2での除算が許可されている環向け」って書いてあるね。AlphaEvolveのアルゴリズムにも同じ制約があるのかな？<br>Edit2: Z_2 は標数2だよ。<br>Edit: AlphaEvolveは標数0の任意の体で動くって主張してるね。Waksmanのは既存の研究かもしれない。AlphaEvolve論文から：「56年間、標数0の任意の体上で49乗算未満のアルゴリズム設計は未解決問題だった。AlphaEvolveは初めて4×4の複素数値行列乗算を48回の乗算で見つけ出した方法だ。」ってさ。" userName="nemonemo" createdAt="2025/05/14 22:27:06" color="#ff33a1">}}




{{<matomeQuote body="もし2での除算を許容したくないなら、1967年の Winograd のアルゴリズムがあるよ。これは任意の可換環上で動いて、4x4 なら48回の乗算を使うんだ。" userName="fdej" createdAt="2025/05/14 22:36:09" color="">}}




{{<matomeQuote body="Z_2 は標数2だよ、0じゃないね。" userName="wbhart" createdAt="2025/05/14 22:47:17" color="">}}




{{<matomeQuote body="それで、LLM（つまりGemini-Flash）は組み合わせ最適化のプロセスを手伝ったのかな？ 彼らの発見（キッシング数とか）の全部が以前の解法と違う形を持ってるわけじゃないだろうけど、これらの発見はとても大きな組み合わせ最適化タスクみたいに見えるね。" userName="mik09" createdAt="2025/05/20 09:47:54" color="#ff5733">}}




{{<matomeQuote body="＜br＞興味深いのは、追加の節約に複素数値が必要らしいことだね。単純なアプローチで過剰計算する何かがあるんだろうね。「テンソルのランクは分解されるフィールドに依存する。いくつかの実テンソルは、同じテンソルの実数分解よりもランクが厳密に低い複素数分解を許容することが知られている」ってWikiにもあるし。＜br＞" userName="meindnoch" createdAt="2025/05/15 08:49:39" color="#785bff">}}




{{<matomeQuote body="Strassenのアルゴリズムについていくつか勘違いがあるみたいだよ。1. アルゴリズム設計における分割統治の標準的な例であって、動的計画法のアプローチじゃない。（どう見ても動的計画法の問題に変換できるか不明だけど。）2. Strassenは複素数値の行列を必要としないよ。全部実数でできるんだ。" userName="jackpirate" createdAt="2025/05/14 19:11:27" color="#ff5733">}}




{{<matomeQuote body="OP（元の投稿者）は、Strassenのアルゴリズムが機能する理由が、単純な分割統治アプローチでは明らかでない一種の重複作業を明らかにした点だって指摘したかったんだと思うよ。様々な部分行列の賢い定義によって、この“重複”作業を避けられるんだ。言い換えれば、Strassenのアルゴリズムの力は、動的計画法に似た、あるいはそれを彷彿とさせる戦略から来てるってことだね。" userName="pontus" createdAt="2025/05/14 21:03:19" color="#ff5c5c">}}




{{<matomeQuote body="元の投稿者は、標準のStrassen（複素数値に関して）じゃなくて、AlphaEvolve版のStrassenに言及してたんだと思うよ。" userName="kenjackson" createdAt="2025/05/14 19:16:58" color="">}}




{{<matomeQuote body="複素数の掛け算は、少なくとも実数の掛け算3回分の“価値”があるんだ。" userName="Zr01" createdAt="2025/05/15 07:42:46" color="">}}




{{<matomeQuote body="その通り！ 単一の複素数掛け算(a+bi)(c+di)を実装するには、確かに実数の掛け算が最低3回必要だよ。＜br＞でも、研究者（そしてこの文脈でのAlphaEvolveのようなシステム）がStrassenのような高速行列掛け算アルゴリズムを分析するとき、主な目標はたいてい漸近的な計算量（そしてこれらのアルゴリズムの空間をよりよく理解すること）を改善することなんだ。この計算量は、行列が定義されているフィールド上の掛け算の数によって決まるんだ。＜br＞・実数行列の場合、実数スカラー掛け算を数える。＜br＞・複素数値行列（AlphaEvolveが48回のスカラー掛け算で解を見つけた4x4の例など）の場合、“スカラー掛け算”は複素数スカラー掛け算を指すんだ。＜br＞大事なのは、これらが再帰する演算だってこと。足し算や、あるフィールドの掛け算を実装する定数因子コストは、N^(log_base(掛け算の数))という計算量の指数を変えないんだ。それらは定数因子なんだよ。＜br＞もちろん、特定の4x4行列の実用的なパフォーマンスを上げるためには、間違いなく実数の演算、足し算、メモリレイアウトなどに深く踏み込むけど、このセクションの焦点は、特定のハードウェア上で4x4行列掛け算を実用的に速くすることじゃなかったんだ。（ブログ記事の「AIトレーニングと推論の強化」セクションでは、ターゲットハードウェア上での大規模行列掛け算の実用的な実装は改善してるよ。）＜br＞（免責事項：著者の一人です。）" userName="alexnovikov" createdAt="2025/05/16 08:05:00" color="#45d325">}}




{{<matomeQuote body="節約に複素数値が必要って本当？ char 0のフィールドならどれでも動くと思うけどな。たぶん4!=24の約数で割るだけな気がするけど。" userName="Davidzheng" createdAt="2025/05/15 00:58:12" color="">}}




{{<matomeQuote body="彼らの(4,4,4)行列掛け算テンソルの分解は、Colabノートブックに明示的に載ってるけど、それには複素数が含まれてるよ。" userName="meindnoch" createdAt="2025/05/15 08:47:14" color="#ff5c5c">}}




{{<matomeQuote body="＜br＞AlphaEvolveは、TransformerベースのAIモデルにおけるFlashAttentionカーネルの実装で最大32.5%の高速化を達成！＜br＞知る限り、およそ75%のケースで最新の（state-of-the-art）解法を再発見！＜br＞そして20%のケースで、以前の最良の解法を改善！＜br＞これ、信じられないような結果だね。どんな改善がなされたのか／改善点が何だったのか知りたいな。＜br＞例えば、その“最大32.5%の高速化”って、何か変わったエッジケースでの話で、それ以外では無視できるほどの高速化だったのかな？ ベンチマークが見たいなぁ。" userName="jasonjmcghee" createdAt="2025/05/14 15:57:10" color="#45d325">}}




{{<matomeQuote body="GPUにはキャッシュ階層があって、ブロックサイズを合わせるのが超重要らしい。これってデフォルトじゃ上手くいかないことが多いんだよね。オープンソースだと無償でそこまでチューニングする人がいないし。カーネルフュージョンとかAPI境界もあって、分かりやすさのために最適じゃない選択を強いられがちだし。でも、結果はすごいよ。魔法じゃないけど、ズルでもない！" userName="schmidtleonard" createdAt="2025/05/14 16:10:15" color="#ff33a1">}}




{{<matomeQuote body="ほんとそれ。LLMって人間が見落としがちな、当たり前だけど繰り返しの最適化にめっちゃ役立つんだよね。" userName="hiddencost" createdAt="2025/05/14 16:13:02" color="">}}




{{<matomeQuote body="基本的には、何か変えて、評価して、また繰り返して結果を比較するデバッグ/最適化ループみたいなもんだよね。前は人間がこのループにいたけど。もちろん自動ハイパーパラメータチューニングとかもあるけど、あれは決められた検索空間でしか動かないし。そのうちLLMが人間には全く理解できない新しいLLMアーキテクチャを生み出すようになるのかな？" userName="jerjerjer" createdAt="2025/05/14 18:17:55" color="">}}




{{<matomeQuote body="もし俺の理解が合ってたら、これって結局基盤のLLMがどれだけ優秀かにかかってるんじゃない？便利そうだけど、「このコードを最適化して」っていうループとバリデーターに入れただけみたい。基盤のLLM技術ほど革命的じゃないかも。追記：論文ではGemini FlashとProのアンサンブルって書いてある。Flashで大量候補、Proで質高い提案。やっぱ俺の意見通り。論文でも特別すごいとは言ってなくて、FunSearchの進化版って言ってるし。" userName="amarcheschi" createdAt="2025/05/14 19:05:33" color="#45d325">}}




{{<matomeQuote body="「ループでこれを改善して」っていうのは、集団で進化させるより力がないよ。進化も単なるステップの繰り返しに見えるかもしれないけど、集団ダイナミクスによって質的に違うことが起きるんだ。複数回の再開とか、例間の補間（LLMによると）、そして「新規性」が即座に否定されないチャンスがあるからね。" userName="mdda" createdAt="2025/05/16 13:16:09" color="#ff5c5c">}}




{{<matomeQuote body="コードが「人間には全く理解できない」ようになる可能性、ソフト開発者としては気になるけど怖いね。過去50年、人間がコードを理解できるようスケールさせてきたのに。もしコードの理解が不要になったら、進歩の歯車は遅くなるし、理解不能に近づくかも。抽象化で成り立ってきた開発者の仕事も危うい。APIラッパーの下にAlphaAlgoが作る使い捨てコードの塊ができるみたいに。これに対処しないと、仕事が滅びて、GPU持ちしか理解できないコードが残るかもね。" userName="threecheese" createdAt="2025/05/15 01:10:14" color="#ff33a1">}}




{{<matomeQuote body="高度に最適化された数値カーネルなんて、すでに理解できる人少ないし、機械で最適化されてるのも多いじゃん。AlphaEvolveはそれをちょっと進めただけだよ。そもそも、ほとんどのプログラマーは高性能アルゴリズム開発なんてしないしね。" userName="yujzgzc" createdAt="2025/05/15 07:16:55" color="">}}




{{<matomeQuote body="当たり前だけど繰り返しの最適化は、記号プログラミングでもできるんだぜ [1]。AlphaEvolveの著者たちがequality saturationで達成できることと比較してないのが変だよね。equality saturationの実装は、すごく単純なルールで面白い積分も解けるんだ [2]。[1] https://arxiv.org/abs/1012.1802<br>[2] https://github.com/alt-romes/hegg/blob/master/test/Sym.hs#L3..." userName="thesz" createdAt="2025/05/15 13:18:42" color="#38d3d3">}}




{{<matomeQuote body="もちろん、結果が不合理だって言ってるわけじゃないよ。ただ、報告通りの性能が出るのはどんな時なのか、提示されたソリューションが別のテストケースにどれだけ汎化するのか、あるいは特定の基準に基づいて違うソリューションにルーティングしてるのか、みたいな点に興味があるだけ。" userName="jasonjmcghee" createdAt="2025/05/14 16:27:55" color="">}}




{{<matomeQuote body="ねえ、この種のカスタム最適化についてもっと学ぶためのリソースとか、何かおすすめある？面白そうだけど、どこから始めたらいいか分かんなくて。" userName="othorns" createdAt="2025/05/15 11:34:27" color="">}}




{{<matomeQuote body="https://ppc.cs.aalto.fi/ にこの話題の一部が載ってるよ（前の人が言ってたトピックとかぶるところもあるけど、全部じゃないし、他にも色々ある）" userName="samvher" createdAt="2025/05/15 15:11:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="論文によると、これはJaxを使って書いたXLA GPUカーネルでのスピードアップなんだ。たぶんSOTAじゃないね。JaxにはFlash Attentionの公式実装もないと思うし。" userName="cavisne" createdAt="2025/05/15 02:42:18" color="#785bff">}}




{{<matomeQuote body="”公式”が何を意味するかはっきりしないけど、GCP MaxText [0] フレームワークを見てみたら？<br>このGDM論文が言及してるものとは違うけど、このリポジトリにMaxText/layers/attentions.py[0]でいろんなAttention実装が入ってるよ。<br>[0] https://github.com/AI-Hypercomputer/maxtext" userName="yarri" createdAt="2025/05/15 15:58:45" color="#ff5c5c">}}




{{<matomeQuote body="最近、こういう数字を読むのはほんと雑になってる気がする。FAが32.5%スピードアップ？いいね。<br>なんでFlash AttentionのリポジトリにPRとして提出しないの？<br>もっと詳しく読めるかな？" userName="Amekedl" createdAt="2025/05/14 16:53:20" color="">}}




{{<matomeQuote body="この記事は読んでないんだけど、コメント読んでSakana AI Labsが発表したCUDAカーネルのスピードアップ議論を思い出した。<br>NYUの研究者Ravid Shwartz ZivがLinkedInに投稿してて[1]、これが話題のTwitter投稿ね[2]<br>”””<br>昨日のSakana AI Labsのニュースは、AIエージェントを扱ってる私たち全員にとって重要な教訓になった。AIシステムがCUDAカーネルを100倍速く最適化できるって発表は、最初はAI支援開発でまさに期待してたユースケースだと思ったんだ。<br>多くの人と同じように、私も興奮したよ。だって、私たちがAIに求めてるのって、こういう技術システムを最適化したり改善したりすることじゃない？<br>だけど、コミュニティ（Twitter）による注意深い調査で別の話が明らかになった。実際どうなった？<br>AIが生成したCUDAカーネルは信じられないスピードアップを達成したかに見えたけど、コードがうっかり前の結果を含むメモリバッファを再利用してて、実質的に実際の計算をスキップしてたんだ。<br>正しく評価したら、カーネルは実際にはベースラインより約3倍遅かった。<br>”””<br>[1] https://www.linkedin.com/posts/ravid-shwartz-ziv-8bb18761_ye...<br>[2] https://x.com/main_horse/status/1892473238036631908" userName="dpflan" createdAt="2025/05/14 17:42:54" color="#ff5733">}}




{{<matomeQuote body="くそ笑った、これまさにいつもClaudeで見るやつだわ。テストにSkip()を追加して”これで動くようになりました！”って宣言するみたいな。”いやー速くなりましたね、TODOの基準満たしました！バイバイ”<br>あんまりにもよく見るから、”うっかり”だったかはちょっと怪しいんだよね。手抜きするの意図的みたいだし、それについてガスライトまでしてくるから。" userName="pram" createdAt="2025/05/14 17:49:18" color="">}}




{{<matomeQuote body="超イライラする。あと、mockで期待するレスポンスをハードコードして、目的を完全に回避するやつとか。”これでテスト通るようになった！”<br>面白いことに、5年前は同じ不満を（一部の）人間について言ってたのにね。" userName="james_marks" createdAt="2025/05/14 21:31:54" color="">}}




{{<matomeQuote body="TypeScriptの型エラーでも同じこと。”AIがas any足して問題解決！”って。" userName="sroussey" createdAt="2025/05/14 18:15:23" color="">}}




{{<matomeQuote body="Geminiの結果はTPU向けのJAXとかPAX-MLとかPallasの改善だと思うから、最近のPRそこら辺見てみたら？" userName="yarri" createdAt="2025/05/14 20:14:15" color="">}}




{{<matomeQuote body="オープンソースの実装試してみるのもいいかもね。https://github.com/codelion/openevolve これだよ。" userName="codelion" createdAt="2025/05/21 04:01:41" color="#45d325">}}




{{<matomeQuote body="これすごいね。でもどれだけ画期的なの？<br>例えばB.2（2番目の自己相関不等式）を選んで、過去の最高水準論文（https://arxiv.org/pdf/0907.1379）見たら、著者たちは”Mathematica 6”で数値検索して上限見つけてた（P.4）。<br>しかもこれ、著者自身も二次的貢献（P.2）としてて、「最小限の利益にしちゃ労力に見合わない」って言ってたんだよね（P.5）。<br>だから少なくともこの件では、AlphaEvolveの進歩はかなり段階的っぽい（それでもクールだけど）。" userName="qq12as" createdAt="2025/05/14 17:45:53" color="#38d3d3">}}




{{<matomeQuote body="君の話からすると、もう「労力に見合わない」ってことはなくなったみたいだね。「労力」が劇的に減ったんだから。それ自体が重要。" userName="prvc" createdAt="2025/05/14 18:04:38" color="">}}




{{<matomeQuote body="この進歩、たぶん2009年の著者たちが想像できなかった計算リソース使ってるだろうね。労力が劇的に減ったなんて絶対ないよ。" userName="SideQuark" createdAt="2025/05/17 22:37:54" color="">}}




{{<matomeQuote body="それって計算リソース＝労力ってことだよね。多くの人はそう解釈しないと思うけどな。" userName="cman1444" createdAt="2025/05/19 02:14:07" color="">}}




{{<matomeQuote body="コンピューティング、特に深層学習やってる人はそう考えるよ。<br>人間の労力なら、モデル構築やインフラ、データ収集とか、とんでもない労力があったわけ。<br>こういうPJには普通1000人以上専門家いるし（最近のChatGPT論文著者リストは付録で何ページも！）。<br>どう考えてもこの結果、数千万～数億ドルかかるような膨大な労力以外じゃない。<br>これが低労力だったって説明してみてよ。" userName="SideQuark" createdAt="2025/05/19 13:43:40" color="#45d325">}}




{{<matomeQuote body="その通り、ていうかそれがこのツールの核心的な目的なんだ。<br>これは複雑な自動化で、非自動化プロセスより効率的に機能する計算可能なプロセスにソリューションを圧縮するんだ。<br>それこそが革命的部分―問題を解決するためのエネルギー（労力など）の使い方が変わるんだよ。" userName="AndrewKemendo" createdAt="2025/05/14 18:17:13" color="#38d3d3">}}




{{<matomeQuote body="もっと速いのは確かだね；もっと効率的かどうか…それが原子力発電所に資金提供してる理由かな？" userName="codr7" createdAt="2025/05/14 22:45:58" color="">}}




{{<matomeQuote body="そうだよ．電力の生成，送電，そして仕事への変換は，人間を使うよりも労働単位あたりで効率的なんだ．" userName="AndrewKemendo" createdAt="2025/05/15 00:55:13" color="">}}




{{<matomeQuote body="GPUは人間よりはるかにエネルギー効率が良いよ！" userName="UltraSane" createdAt="2025/05/15 02:21:08" color="">}}




{{<matomeQuote body="正確に何を言ってるのか分かんないけど，それは違うと思うな．人間の脳はだいたい20ワットくらい使うんだ．GPUはもっと使うよ．" userName="pms" createdAt="2025/05/20 22:02:03" color="">}}




{{<matomeQuote body="だからこそ，AIが人の仕事を奪うって懸念は大げさだと思うんだ．やるべき知識労働とか，発明や発見できることの量が限られてるわけじゃない．今は労力，時間，お金に見合わないだけで，価値がないわけじゃない仕事があるんだ．労力，時間，お金が減らせれば，突然それができるようになるんだよ．<br>プログラミングだってそう．AIに自分のアプリをトレース用に計測してもらったんだけど，ずっとやりたかったけどやり方分かんなかったし，調べる気もしなかったことなんだ．それは人を雇ってやるような仕事でもないし，AIがいなかったら絶対やらなかった仕事だよ．小さいことだけど，小さいことが積み重なるんだ．" userName="empath75" createdAt="2025/05/14 19:57:51" color="#ff5733">}}




{{<matomeQuote body="AIが仕事を奪う明確な閾値があるわけじゃない．すでに起こってるのは，コード，ローコード，ノーコードとか色々なレベルのツールがじわじわ進出してくる長期的な摩耗なんだ．そしてそれは，仕事が尊敬されたり評価されたりしない人たちが辞めていくことから始まって，一度辞めたら後任が見つからなかったり，スキルの低い人に置き換えられたりして，やがてそのポジション自体がなくなっちゃうんだ．<br>ある意味，これは新しいことじゃなくて，技術の自然な進歩だよ．違うのは変化のスピードが上がってること．20代でいくつかスキルを学んで，一生涯生産的に働けるかなんて？今じゃそんなこと言ったら笑われるくらい完全に間違ってるね．キャリアの中で何度かアップスキルするように言われるんじゃなくて，継続的にアップスキルしろって言われてるんだ．<br>変化がどんどん速くなるにつれて，もっと多くの人が取り残されるだろうし，もちろん彼らは自分の窮状を自分のせいにするんだろうね．" userName="geodel" createdAt="2025/05/14 20:36:17" color="#45d325">}}




{{<matomeQuote body="＞そしてそれは，仕事が尊敬されたり評価されたりしない人たちが辞めていくことから始まって，一度辞めたら後任が見つからなかったり，スキルの低い人に置き換えられたりして，やがてそのポジション自体がなくなっちゃうんだ．<br>自動化は農業を悪く変えた？今の農家は仕事が尊敬されてない／評価されてない？農家はスキルの低い労働者に置き換えられた？農家（”食料生産者”ともいう）の仕事はなくなると思う？<br>俺は未来を予測するんじゃなくて，過去に何が起こったかだけを見るんだ．そして農業に関して上の質問それぞれに対する俺の答えは，君のコメントを農業に当てはめた場合に示唆されることとは逆だよ．" userName="czl" createdAt="2025/05/15 00:33:46" color="#45d325">}}




{{<matomeQuote body="君の言ってることは，”コードレス掃除機で軽い労力で30分で家中掃除できるようになったのに，手作業のほうきだと半日かかる大変な作業だったから，家での生活は悪くなったか？”って言うのと同じくらい変だよ．<br>もちろん，家の持ち主として，そして掃除機のおかげで週末に数時間節約できたから，俺の生活は少し良くなったよ．<br>でも，労働者としての俺の生活はここ10年で悪くなったんだ．なぜなら，大規模で複雑なアプリケーションを開発する知識はもはや価値がないからだ．だって俺たちはNext Gen Cloud native時代にいるわけで，1つのアプリケーションに5つ以上の機能なんて含まれないんだ．たとえ俺がより保守可能でパフォーマンスの良いコードを書けると主張しても，雇用主は直接的か間接的にこう言うんだ．”まあ，気にしないよ．今スプリントでこの10個のJIRAを完了させてくれればいいんだ”ってね．そして俺から聞きたい返事はイエスだけなんだ．" userName="geodel" createdAt="2025/05/15 02:20:37" color="#45d325">}}




{{<matomeQuote body="＞今の農家は仕事が尊敬されてない／評価されてない？ほとんどの人が，大変な仕事量の割に賃金が低いと感じてるみたいだよ．そして若い人たちをこの仕事に引きつけるのに苦労してて，だから外国人労働者がたくさんその仕事に就いてるって聞くね．" userName="weatherlite" createdAt="2025/05/15 05:56:13" color="">}}




{{<matomeQuote body="それで，AGIの発明は電気と同じ影響があるって？つまり，どっちも発明でしょ？今の仕事を置き換える何十億もの新しいフルタイムの仕事が生まれるのが待ちきれないね．<br>農家はスキルの低い労働者には置き換えられなかった．なぜなら彼ら自身が低スキルだから．<br>農家は存在しなくならなかったけど，人口の80%が農業に従事していた状態から1〜10%になったんだ．もし農業の自動化が労働力の80%が農業にいた1800年代に起こってたら，それは大災害だっただろうね．<br>ソフトウェアエンジニアに対するちょっとした広範な尊敬の欠如はきっとあると思うよ．これは主に彼らの高給で相殺されてるけどね．vibecodingが新しい普通になったらどうなるか見てみよう．<br>そしてソフトウェアエンジニアに関しては，そう，自動化は彼らの仕事と給料を台無しにするだろうね．なぜなら，ソフトウェアエンジニアリングの効率における最高速度は光速であって，トラクターの速度じゃないからだよ．" userName="Skylyz" createdAt="2025/05/15 01:56:03" color="#785bff">}}




{{<matomeQuote body="ホントそうだよね。ソフトウェアで今もどうにか稼いでる人たち以外を見渡すと、ITの甘い汁からとっくに外れちゃった人が山ほどいるよ。<br>そこそこ良い生活できてた多くのマニュアルテスターは、今は自動化でいなくなった。ソフトウェアのドキュメントライターの仕事もほとんど消えたね。開発者が自分でConfluent wikiとかに書くことになってる。<br>昔は高給取りだったSAPコンサルとかも、ITの仕事にしがみつけててもせいぜい普通のミッドレベルのPMとかITマネージャーに格下げだよ。<br>他にもExchange admins、app server admins、DBAとか、たくさんの仕事が消えたか、すごく数が減った。15～20年の間に、たくさんの人がスキルアップできずに競争から脱落しちゃったんだよね。" userName="geodel" createdAt="2025/05/15 02:42:19" color="#45d325">}}




{{<matomeQuote body="これは慎重に分析する必要があると思うな。AIの話を一切出さなくても、開発者やコード行数の需要が近い将来頭打ちになったり減ったりする理由をあと10個は挙げられるかもね。" userName="Skylyz" createdAt="2025/05/15 13:50:42" color="">}}




{{<matomeQuote body="これ、本当にいろんな理由があるってとこに大賛成だよ。一つは、昔は目新しくてカスタムで作ってた仕事の大量が、今の世界の基本インフラに組み込まれちゃったってことだと思う。<br>大手IT企業とか他のベンダーは新しいものをどんどん推してるけど、多くの人や会社は、昔ならカスタム作業が必要だったタスクでも、基本的なレベルで十分だって気づいてる。<br>だから、何でもかんでもカスタムソフトウェアの需要が伸びるってことはないんだよね。<br>Ericssonのレポート[1]によると、例えばモバイルデータとスピードの需要は指数関数的に伸びた後、今はもう頭打ちで、次の10年は huge growth は見られないみたいだよ。ユーザーがスマホでやってる事や使ってるアプリが、もう速くて十分良いと感じてるからね。" userName="geodel" createdAt="2025/05/15 15:53:04" color="#38d3d3">}}




{{<matomeQuote body="ITの仕事について考えるやり方は2つあると思うんだ。一つは、特定の技術の使い方を本当によく分かってる人として働くこと。もう一つは、ある目的を達成するために、技術全般をどう使うか考えられる人として働くこと。<br>最初の道を選ぶ人は、その技術が relevant な数年間はものすごく稼げるかもしれないけど、結局はダメになる。常に次を見て、スキルと知識をアップデートし続ける必要があるんだ。Microsoft Outlook admins が生涯のキャリアを保証されたことなんて一度もないんだから。" userName="empath75" createdAt="2025/05/15 12:45:27" color="#ff33a1">}}




{{<matomeQuote body="僕が話してるのは全体的な分布の話であって、個人がもっと頑張ろうってモチベーションの話じゃないんだ。<br>もちろん、もっと上手くやれる人、新しいことを学べる人、LinkedIn プロフィールを定期的に更新する人、地元の networking event に参加する人、転職活動で visibility を高めるために有料会員になる人なんかはいるよ。<br>ポイントは、昔は average skills や一度の学習で生き残れた人が、今はそれができなくなってるってことなんだ。<br>そして、これは何かや誰かに対する complain ではなくて、技術の変化によって人生が markedly improvement してる人は少数で、多くの人が同じ変化によって degradation を感じてるっていう observation なんだよね。" userName="geodel" createdAt="2025/05/15 16:17:44" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="”ソフトウェアエンジニアに対する widespread な尊敬の欠如が slight にあるのは確かだと思う”<br>僕は逆の印象を受けるな。むしろソフトウェアデベロッパーは deserve してる以上の尊敬を受けてるんじゃないかな。" userName="ConspiracyFact" createdAt="2025/05/17 07:12:54" color="">}}




{{<matomeQuote body="いいね、でも勘違いしないでほしいんだけど、これって essentially similar にGoogleのCo-Scientistに似てない？複数のモデルが loop になって、 context をやり取りして things を validate するやつ。<br>At its core, それは still a system of LLMs だよね。それは execution は impressive だけど、 fundamentally new じゃない。<br>LLMs は code ”optimisation” とか、人間が見落としがちな patterns や redundancies を detecting するタスクには undoubtably useful だけど、この announcement はまた Google からの polished で hypey な blog post って感じがするな。<br>What’s also becoming increasingly confusing なのは、彼らが使う ”Alpha” branding だね。Originally、それは AlphaGo や AlphaFold みたいな breakthroughs 用だったのに、そこには clear leap in performance and methodology があったんだ。Now それが、sophisticated ではあるけど、really rise to the same level of impact しないシステムに適用されてる。<br>edit: I missed the evaluator in my description, but an evaluation method is applied also in Co-Scientist:<br>”The AI co-scientist leverages test-time compute scaling to iteratively reason, evolve, and improve outputs. Key reasoning steps include self-play–based scientific debate for novel hypothesis generation, ranking tournaments for hypothesis comparison, and an ”evolution” process for quality improvement.”<br>[0]: https://research.google/blog/accelerating-scientific-breakth..." userName="quantumHazer" createdAt="2025/05/14 17:08:17" color="#ff5c5c">}}




{{<matomeQuote body="AlphaEvolveの論文でこれに触れてるね：”AI Co-Scientistが科学的な仮説とその評価基準を自然言語で表現するのに対して、AlphaEvolveはコードの進化に焦点を当ててて、プログラム評価関数で進化を方向づけてる。この選択のおかげで、LLMの幻覚をかなり回避できて、AlphaEvolveが多数のタイムステップで進化プロセスを進められるんだ。”" userName="chriskanan" createdAt="2025/05/14 21:02:32" color="#38d3d3">}}




{{<matomeQuote body="もし彼らがそのスタンスを変えてvibe codingに屈することがあったら、少なくとも”DeepVibe”として華麗にリブランドするチャンスはあるよね。" userName="latentsea" createdAt="2025/05/15 00:20:21" color="">}}




{{<matomeQuote body="GoogleがGenAI競争の流れを変えて、基礎研究だけでなく、面白いモデルや製品でもリードしてるように見えるのは面白いね。これがどれだけニッチで”いいね”止まりなのか、センセーションになるのかはまだ分からないけど、もし大げさな hype にならなくても、オープンウェイトの世界にリリースしてくれることを願ってるよ。" userName="3abiton" createdAt="2025/05/15 05:18:57" color="#ff33a1">}}




{{<matomeQuote body="GoogleがMu Zeroの裏にいたことをみんな忘れがちだけど、個人的には Mu Zero こそこの10年で最も重要なAI論文だと思うんだ。Transformer論文じゃなくてね。だって、モデルが探索の仕方を学習できるって効果的に示したんだからさ。<br>例えば、自動運転はゲームのように扱うのがずっと理にかなってる。モデルが周囲の環境の進化を学び、自分の行動がそれにどう影響するかを学び、MCTSで正しい行動を見つけるんだ。特に、環境ダイナミクスを一度学べば、内部でクラッシュをシミュレーションして自分自身を再訓練できるからね。<br>このプロセスが洗練されれば（特に訓練の方向を制御する関数が）、実世界のデータセット（視覚、聴覚、物理的な相互作用、デジタルなものも）でモデルの訓練を開始して、環境を学ぶにつれてさらに洗練させていける。そしたら、自己進化させて真に”知的”と見なされる意思決定ができるようになるポイントに到達するんだ。" userName="ActorNightly" createdAt="2025/05/15 07:31:13" color="#ff5c5c">}}




{{<matomeQuote body="”GoogleがGenAI競争の流れを変えて、パックをリードしてるように見えるのは面白いね”<br>これは Google Brain と DeepMind を統合して、Demis Hassabis をトップに据えたからじゃないかな？<br>私も Google が今 AI で間違いなくリードしてると思う。心配なのは、競争相手にアドバンテージを与えると思うなら研究のオープンリリースには消極的になったって最近言ってたことなんだ。Demis はビジネスマンより科学者だから、研究をリリースし続けてくれる希望はあるかもしれないけど。" userName="JFingleton" createdAt="2025/05/15 09:13:04" color="#ff5733">}}




{{<matomeQuote body="本質的に同じものを2つの異なるチームが2つの異なる製品として作るっていうのは、Googleらしさ全開だよね。" userName="Workaccount2" createdAt="2025/05/14 17:26:16" color="">}}




{{<matomeQuote body="それと対照的に、Microsoftは同じチームが同じ製品を2つの異なる名前で作ってるんだ。" userName="coredog64" createdAt="2025/05/14 18:10:35" color="">}}




{{<matomeQuote body="これ、同じチームで、同じアイデアを適用可能な2つの異なる問題に適用するのはすごく当たり前じゃないの？" userName="luckydata" createdAt="2025/05/14 18:09:45" color="">}}




{{<matomeQuote body="つまり、同じアイデアを4ヶ月ごとにリブランディングして、ブレークスルーと呼んでるってこと？" userName="quantumHazer" createdAt="2025/05/14 18:33:19" color="">}}




{{<matomeQuote body="いやいや、適用する領域を広げてるんだよ。ワクチンが天然痘にも使える—そしてインフルエンザにも！っていうのに似てるね。同じアイデアでも、レシピは違うんだ。" userName="kenjackson" createdAt="2025/05/14 19:24:29" color="">}}




{{<matomeQuote body="ごめん、「”Google’s Co-Scientist”」って何？<br>そんな名前のプロジェクトいくつもあるの？" userName="mistrial9" createdAt="2025/05/14 17:09:35" color="">}}




{{<matomeQuote body="そうだよ<br>https://research.google/blog/accelerating-scientific-breakth..." userName="quantumHazer" createdAt="2025/05/14 17:14:10" color="">}}




{{<matomeQuote body="https://engineering.cmu.edu/news-events/news/2023/12/20-ai-c..." userName="mistrial9" createdAt="2025/05/14 17:25:09" color="">}}




{{<matomeQuote body="へぇ、AlphaEvolveはもう1年使われてたみたいで、今やっと公開されたんだね．<br>論文にはGemini 2.0（proとflash）を使ってるって書いてあって、Gemini 2.0がGemini 2.5の学習に使われたって状況みたい．<br>これが噂の”自己改善フィードバックループ”って呼べるかは分からないけど、ある程度はそうなってるみたいだね．<br>それに、AlphaEvolveが1年間開発されてたのか、それとも1年間本番稼働してたのかも疑問．<br>今はAI研究で発見したすごいものは公開を控えるのが賢明なんだろうね．" userName="Workaccount2" createdAt="2025/05/14 18:01:22" color="#45d325">}}




{{<matomeQuote body="もし頭脳と計算能力とハードウェアのコントロールを持ってるなら、テイクオフフィードバックループを止められるものって何があるの？<br>Deepmindは今，この点で唯一無二の立場にいるね．" userName="baq" createdAt="2025/05/14 18:38:29" color="#38d3d3">}}




{{<matomeQuote body="＞テイクオフフィードバックループを止められるものって何？<br>例えばAIハードウェアだと、良いアイデアだけじゃダメで、開発・検証・生産に膨大な時間と人がかかるんだ．<br>この全てのステップを加速させないと無理．<br>何百年も前から改善のループにはいるけど、各ステップが遅いから劇的に見えないだけだよ．" userName="david-gpu" createdAt="2025/05/14 19:18:39" color="#ff5733">}}




{{<matomeQuote body="計算問題には複雑さの上限があって、そこに近づくほど改善は難しくなるよ．<br>例えば，シングルCPUでソートはO(n*log(n))より速くならない．<br>キャッシュ適応などで改善の余地はあるけど、それも限られてるんだ．" userName="logicchains" createdAt="2025/05/14 19:40:21" color="#45d325">}}




{{<matomeQuote body="彼らはもう何年も前からこれやってるよ．<br>2016年のヘッドライン：”DeepMind AI Reduces Google Data Centre Cooling Bill by 40%”<br>https://deepmind.google/discover/blog/deepmind-ai-reduces-go..." userName="drexlspivey" createdAt="2025/05/14 21:34:16" color="#38d3d3">}}




{{<matomeQuote body="最初の試行で改善のネタが尽きちゃったら、それ（テイクオフ）は防げるだろうね．<br>このAlpha Evolveが目的を果たして、もう時代遅れになってないって誰が言える？<br>なんか形而上学的なこと言ってるみたいに聞こえたくないけど、人工知能への依存ってのは”愚かさの山の頂上”（Darwin Awardsがあるところ）で見つけそうなものだね．<br>チェスの時間遅れそう、またねー．" userName="factibicongue" createdAt="2025/05/14 18:56:57" color="#785bff">}}




{{<matomeQuote body="＞Gemini 2.0がGemini 2.5の学習に使われたって状況みたい．<br>先行モデルからの合成データを使って、より優れたモデルや蒸留モデルを作るっていうのは、少なくともOpenAIがRLHFを導入してからずっと行われてることだよ．<br>多分それより前からだろうけどね．" userName="throwaway314155" createdAt="2025/05/14 22:36:35" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
