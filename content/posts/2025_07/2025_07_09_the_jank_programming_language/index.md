+++
date = '2025-07-09T00:00:00'
months = '2025/07'
draft = false
title = 'ClojureがLLVMとC++と融合！？新言語jankが切り開く未来とは'
tags = ["プログラミング言語", "Clojure", "LLVM", "C++", "Lisp"]
featureimage = 'thumbnails/purple1.jpg'
+++

> ClojureがLLVMとC++と融合！？新言語jankが切り開く未来とは

引用元：[https://news.ycombinator.com/item?id=44482273](https://news.ycombinator.com/item?id=44482273)




{{<matomeQuote body="Hey folks. I’m the creator of jank. I didn’t expect to be on HN today, but I appreciate the interest.In short, jank is Clojure, but it’s on LLVM and has seamless C++ interop. You still get full nREPL capabilities, can redefine anything on the fly, and we can actually JIT compile C++ code alongside your Clojure. The seamless C++ interop is first of its kind, for a lisp, and is done by JIT compiling C++ alongside the LLVM IR we generate for jank and then stitching them together into one IR module.Note, jank isn’t released yet. I’m targeting the end of this year for the first alpha release. I put out monthly development updates on the jank blog, with the next one coming out this week." userName="Jeaye" createdAt="2025/07/09 19:01:45" color="#785bff">}}




{{<matomeQuote body="beautiful work. clojure is very nice. one of the most impactful talks I have ever seen was from Rich Hickey - simple made easy.however my only gripe with clojure while it’s easy to write and comprehend at first - it’s difficult to read. & yet most our time we read code not write it. but then again it might be my lack of brain power." userName="dzonga" createdAt="2025/07/09 19:53:24" color="">}}




{{<matomeQuote body="I agree with you, but perhaps in my own way. Jumping into an arbitrary Clojure program can be tough, since the data shapes may not be defined anywhere. Hopefully the program uses spec or malli, but even then, unless they annotate every function with the shape it expects, you may be left needing to REPL in and poke around. However, REPLing in to check just a function or two may not be easy if the program requires some setup and doesn’t use integrant or similar.Once Clojure parity is achieved, I’m interested in static typing, pattern matching, value-based errors, and some other opt-in improvements that I think will greatly improve both readability and toolability (i.e. how well tooling can work with the code, based on what it knows of the code). Stay tuned. :)" userName="Jeaye" createdAt="2025/07/09 20:42:31" color="#ff5c5c">}}




{{<matomeQuote body="What’s your take on Hickey’s talk titled “Maybe Not” which fundamentally criticizes static types? Is there a middle ground where some form of static typing makes sense in a Clojure-esque world?https://youtu.be/YR5WdGrpoug?si=4mI8doBX6jj6PJkk" userName="thethimble" createdAt="2025/07/09 22:12:23" color="#ff5c5c">}}




{{<matomeQuote body="My comment to code ratio is magnitudes higher in Clojure than in other languages, which helps a lot with this.Also  writing Clojure can be incredibly terse, resulting in quite high-effort when reading. Conversely, a lot of time I can condense hundreds of lines of equivalent python into 5 or 6 lines of Clojure. Having all of this functionality condensed into something you can fit in a tweet really helps for grokking larger parts of the dataflow or even larger system. So there are tradeoffsPlus structural editing and the repl really help with the “reading” experience (reading in quotes because it’s much more interactive than reading)" userName="barrell" createdAt="2025/07/09 20:28:27" color="">}}




{{<matomeQuote body="＞ Conversely, a lot of time I can condense hundreds of lines of equivalent python into 5 or 6 lines of Clojure.I’m curious if you have any example of this? Even if it’s an hyperbole, I don’t really see how." userName="NeutralForest" createdAt="2025/07/09 21:17:26" color="">}}




{{<matomeQuote body="Maybe hyperbole on the frequency, but not the condensation. I meant more along the lines of “most of the complicated code I write in Clojure is an order of magnitude more dense.” _Most_ of the code I write would be 1:1 or 1:2 with other languages,  it I don’t think it’s the type of code OP was referring to.The 1:20+ is definitely not hyperbole though. Using transducers to stream lazy reductions of nested sequences; using case, cond-＞ and condp-＞; anywhere where you can lean on the clojure.core library. I don’t know how to give specific examples without giving a whole blog post of context, but 4 or 5 examples from the past year spring to mind.It’s also often the case that optimizing my clojure code results in a significant reduction of lines of code, whereas optimizing Python code always resulted in an explosion of LoCPersonally I find Python particularly egregious. No map/filter/reduce, black formatting, no safe nested property access. File length was genuinely one of the reasons I stopped using it. The ratio would not be so high with some languages, ie JavaScriptEven with Elixir though, many solutions require 5-10 times the amount of lines for the same thing thing in Clojure. I just converted two functions yesterday that were 6 & 12 lines respectively in Clojure, and they are both 2 pages in Elixir (and would have been much longer in Python)" userName="barrell" createdAt="2025/07/10 04:56:34" color="#ff5c5c">}}




{{<matomeQuote body="I find 95% Clojure has the right tools to write very terse code. But in some cases the functional transducer/piped paradigm can’t be contorted to the problem.Usually these are problems where you need to run along a list and check neighboring elements. You can use amap or map-indexed but it’s just not ergonomic or Clojure-y (vs for instance the imperative C++ iterator model)The best short example I can think of is Fibbonaccihttps://4clojure.oxal.org/#/problem/26/solutionsI find all the solutions hard to read. They’re all ugly. Their performance characteristics are hard to know at a glance" userName="geokon" createdAt="2025/07/10 06:59:50" color="#38d3d3">}}




{{<matomeQuote body="Personally, I would normally reach for loop to check neighboring elements very ergonomically.  (loop [[a b c & more] coll] (recur (apply list b c more)))<br><br>There’s also partition if you’re working with transducers/threads/list comprehension  (partition 3 1 coll)<br><br>Or if you need to apply more complicated transformations to the neighbors/cycle the neighbors  (-＞＞ coll cycle rest (map xform) (map f coll))<br><br>Using map-indexed to look up related indices is something I don’t think I do anywhere in my codebase. Agreed that it’s not ergonomicEDIT: those Fibonacci functions are insane, even I don’t understand most of them. They’re far from the Clojure I would advocate for, most likely written for funsies with a very specific technical constraint in mind" userName="barrell" createdAt="2025/07/10 07:54:51" color="#38d3d3">}}




{{<matomeQuote body="Heh. Hickey once debated with me at length about visual neuroscience, a subject I have a master’s degree in and he doesn’t. At no point did this stop him from confidently asserting things.I have to wonder if “Maybe Not” is similar, since he’s not actually an expert in types, either afaik.Alexis King wrote a partial rebuttal to Maybe Not: https://lexi-lambda.github.io/blog/2020/01/19/no-dynamic-typ..." userName="KingMob" createdAt="2025/07/10 05:34:11" color="#ff5733">}}




{{<matomeQuote body="正直、`partition`って危なっかしいツールだと思うんだよな。例えば、数字のシーケンスがあって5点移動平均を計算したいとするだろ？<br>`(partition 5 1 coll)`ってやって、結果の各要素を平均化すれば、理解はすごく簡単だ。でもパフォーマンスは最悪だろうな？レイジーリストだし、5要素のセットにアクセスするたびに、コレクションをなぞってサブセットを作り直してるんじゃないか？配列タイプから始めればいいのかもしれないけど、いつもシーケンスに強制変換されるし、難しいわ。<br>最初の5要素を取って、先頭要素を削除したリストで再帰する方が多分いいけど、コードが読みにくいと感じるんだ。慣れの問題かな…。" userName="geokon" createdAt="2025/07/10 12:42:40" color="#45d325">}}




{{<matomeQuote body="なんでjankって呼ぶんだ？ほとんどの文脈でネガティブな言葉じゃん。だから気になってるんだよ。" userName="no_wizard" createdAt="2025/07/10 03:42:44" color="">}}




{{<matomeQuote body="個人的には型付けするかしないかはスタイル選択だと思うけど、ここでの君の批判はHickeyが視覚神経科学の修士号を持ってないって言ってるみたいで、ちょっと的外れに見えるな。<br>君の主張が「俺は専門家だけどHickeyは違う」ってことなら、彼の言語設計スキルを批判するのは論理的な間違いじゃないか？彼は今の時代の第一線の言語設計者の一人だぜ。「Maybe Not」は、専門家が自分の専門分野で話しているスピーチだ。<br>もし彼の自信に根拠がないって主張するなら、これもまた、彼はその分野の専門家だ。彼がその分野で自信満々な態度を取るのは妥当だし、他の専門外の分野で根拠のない自信を持っていたとしてもな。多くの専門家がそうしてるし、賢い人のよくあるステレオタイプだぜ。<br>彼は型を実装する専門家である必要はないんだ。それが良い言語機能かどうかを判断するためにね。" userName="roenxi" createdAt="2025/07/10 09:21:57" color="#ff33a1">}}




{{<matomeQuote body="うん、俺が言ったように、まず`loop`を使うね。もしもっと複雑なものだったら（ここではコメントはかなり単純だけど）コメント付きだとこんな感じになるぜ：<br> `(loop [coll [1 2 3 4 5 6 7 8 9] memo []]`<br>  `(if (＜ (count coll) 5) memo ;; アイテムが5個未満になったら停止` <br>   `(--＞ (take 5 coll) ;; 最初の5日間を取る`<br>        `(reduce +) ;; 合計する`<br>        `(* 0.20) ;; 5で割る`<br>        `(conj memo) ;; memoの末尾に追加する`<br>        `(recur (rest coll)) ;; 残りの要素で再帰する`<br>        `,,,))))`<br>現実的にパフォーマンスを考慮するなら、多分こうするな：<br> `(loop [[a b c d e :as coll] [1 2 3 4 5 6 7 8 9] memo []]`<br>  `(if-not e memo`<br>    `(recur (rest coll) (conj memo (/ (+ a b c d e) 5)))))`<br>ネストされたループを避けることで、約15倍速くなるはずだぜ。最小サイズを変更したい場合でも、かなりクリーンだ：<br> `(loop [[a b c d e :as coll] [1 2 3 4 5 6 7 8 9] memo []]`<br>  `(if-not c memo`<br>    `(recur (rest coll) (conj memo (/ (+ a b c d e)` <br>                                     `(cond e 5 d 4 c 3))))))))`" userName="barrell" createdAt="2025/07/10 14:47:01" color="#ff5733">}}




{{<matomeQuote body="詳細な返信ありがとう！本当に考えさせられるわ。こんなコードを書くなんて思いつかないよ。命令的なインデックスベースの解決策より解析しにくい気がするけど、どうなんだろうな。すぐに理解できる？慣れの問題なんだろうな、きっと。<br>最初の解決策で避けたネストしたループって、`reduce`のこと？それとも`count`？<br>`conj`ってすごくLispyな感じがする（ClojureじゃなくてLispの方ね）…アイテムを追加するたびにリストを辿ることになるんじゃないの？<br>俺の残ってる懸念は、リスト／ベクターへの絶え間ない型強制だな。結果のサイズは実質的に分かってるのに、実行時やコンパイラはそれが分からないだろ。だから`memo`を事前割り当てしてないし…なんか間違ってる気がする（笑）<br>純粋に君の意見を聞きたいだけさ。<br>全てをこれほどきれいに抽象化して構成可能に保つのは多分無理だろうけど、配列をランダムアクセスで扱えるともっとスムーズだったらいいのにって思うよ。Clojureで配列を扱う現状の方法はいつもちょっと扱いにくいんだ。そして全てがリストに強制変換される。ベクターを`mapv`や`filterv`などで使うのは便利だけど、ランダムアクセスがないから、いつも欲しい解決策ってわけじゃないんだよな。" userName="geokon" createdAt="2025/07/11 06:14:48" color="#785bff">}}




{{<matomeQuote body="俺の言いたいこと、分かってないな。Hickeyが講演する時の自信は、彼が何を話しているか知っていることと混同すべきじゃないってことさ。<br>＞「Maybe Not」は専門家が自分の専門分野で話しているスピーチだ。<br>動的型付け言語を書いているからといって、彼が型のエキスパートってわけじゃないだろ。<br>ハハ！最高だね。<br>アシモフ：「アメリカには無知の崇拝があり、常に存在してきた。反知性主義の傾向は、私たちの政治的、文化的暮らしを貫く絶え間ない糸となっており、『私の無知はあなたの知識と同じくらい価値がある』という誤った考えによって育まれてきた。」" userName="KingMob" createdAt="2025/07/11 08:25:53" color="#785bff">}}




{{<matomeQuote body="Richは静的型を批判してたってより、思ってるほどメリットがないし、時間の経過とともにプログラムの進化を複雑にするって言いたかったんだと思うよ。" userName="drob518" createdAt="2025/07/10 02:13:29" color="#38d3d3">}}




{{<matomeQuote body="これをClojureの代替バックエンドやC++構文拡張じゃなくて、別の言語として実装することを選んだのはなんでか、ちょっと気になるな。<br>Windowsサポートを最優先にする予定はある？LLVMベースの言語に注目してる多くの人は、ゲーム向けC++の代替を探してると思うんだ。" userName="binary132" createdAt="2025/07/09 20:27:58" color="#ff5c5c">}}




{{<matomeQuote body="＞動的型付け言語を書いているからといって、彼が型のエキスパートってわけじゃない。<br>それはここで妥当な批判じゃないね。極端に言えば、ホメオパシーを無視することにしたからといって、その人がホメオパシーのエキスパートでなければならないとは誰も認めないだろ。自分の分野の価値を積極的に示すのは専門家の役目だ。彼は言語設計のエキスパートで、型システムを形式化する人々が、新しい言語設計のためにそれが一般的に強力であることを証明できていないと彼は考えているんだ。<br>彼は型のエキスパートだと主張しているわけじゃない。「Maybe Not」では、プログラミング言語において型は問題を解決しようとする試みだけど、もっと強力なアプローチを探すべきだと具体的に主張しているんだ。そして、そのアプローチとはオープンなスキーマだとね。" userName="roenxi" createdAt="2025/07/11 11:00:48" color="#785bff">}}




{{<matomeQuote body="＞インデックスベースの解決策より解析しにくい気がするけど、どうなんだろうな。すぐに理解できる？<br>これらの例は驚くほど分かりやすいぜ。インデックスベースの解決策を理解するのに、俺ははるかに時間がかかるんだ。特にnilの処理、インデックスの欠落、境界チェック…Clojureでは心配する必要のない、当たり前の問題にすぐに埋もれてしまうからな。<br>もしもっと複雑なら、最初の例みたいにコメントを使う。もっと複雑なループを理解するときは、確かに文字単位で見ると読む速度は遅くなるけど、他の場所でも言ったように、機能の理解が遅くなることはないと思うな。<br>＞最初の解決策で避けたネストしたループって、`reduce`のこと？それとも`count`？<br>正解、`reduce`はループだぜ。<br>＞`conj`ってすごくLispyな感じがする（ClojureじゃなくてLispの方ね）…アイテムを追加するたびにリストを辿ることになるんじゃないの？<br>いや、ベクターはリストよりハッシュマップに近いんだ。Clojureには主にリストとベクターの2つのシーケンシャルコレクションがある。リストは追加がO(n)だけど、ベクターはO(1)だぜ。リストは先頭追加がO(1)だけど、ベクターの先頭追加のパフォーマンス特性は実はよく知らないんだ。<br>＞俺の残ってる懸念は、リスト／ベクターへの絶え間ない型強制だな。<br>コード中でベクターからリストへの型強制は1回だけだ（入力が元々ベクターだった場合に、`rest`が最初に呼ばれる時だな）。入力がリストである可能性の方が高いし。それに、コンピューターサイエンス的な意味での型強制ですらないかもしれないんだ。<br>＞結果のサイズは実質的に分かってるのに、実行時やコンパイラはそれが分からないだろ。だから`memo`を事前割り当てしてないし…なんか間違ってる気がする（笑）<br>これはJavaScriptでは問題にならないし（JavaScriptはいつもすべてのベクターに大量のメモリを事前割り当てしてるはずだ）、Javaでの意味合いは分からないけど、Clojureでみんなが出してるパフォーマンスを考えると、問題ないはずだぜ ;-) <br>＞Clojureで配列を扱う現状の方法はいつもちょっと扱いにくいんだ。そして全てがリストに強制変換される。ベクターを`mapv`や`filterv`などで使うのは便利だけど、ランダムアクセスがないから、いつも欲しい解決策ってわけじゃないんだよな。<br>俺のプロジェクトで`nth`を使った回数は片手で数えられるくらいしかないぜ。ランダムアクセスに基づいてソリューションを構築するなんてクレイジーだなって思うんだXD<br>とはいえ、ベクターのランダムアクセスはO(1)だぜ。`filterv`や`mapv`が返すものも含めてな（厳密にはO(log32n)だけど）。" userName="barrell" createdAt="2025/07/11 14:16:47" color="#ff5733">}}




{{<matomeQuote body="ベクトルがハッシュマップみたいに振る舞うって話、忘れてたわ。リストで動いてるってことは、O()保証が必要な場面ではちょっと「ヤバい」かもね。reduceのオーバーヘッドとデストラクチャリングの性能差は意外だった。nthはあまり使わないけど、配列の連続メモリアクセスとキャッシュ局所性はホットループで性能差がすごく出るよね。" userName="geokon" createdAt="2025/07/11 16:36:10" color="#ff5733">}}




{{<matomeQuote body="ホメオパシーは基礎物理で否定できるけど、型システムは複雑すぎて専門知識が必要だって話。「モナドは自己関手の圏のモノイドに過ぎない、何が問題？」っていう有名なジョークがそれを物語ってるよね。" userName="KingMob" createdAt="2025/07/11 14:32:17" color="">}}




{{<matomeQuote body="jankはClojureだけど、商標の問題と、静的型付けやパターンマッチングみたいな新機能を追加したいから、別の言語名にしたんだって。Windowsサポートは今限定的だけど、まずはClojure開発者向けに集中して、その後C++開発者向けにWindowsサポートを強化していく計画らしいよ。" userName="Jeaye" createdAt="2025/07/09 20:36:41" color="#785bff">}}




{{<matomeQuote body="「jank」みたいにネガティブな名前の技術は使わないって話。テック系の面接で不利になったり、何か問題があった時に「jankのせい」って言われたりするリスクがあるからだって。皮肉たっぷりで、プロジェクト名がもたらす印象の怖さを語ってるよ。" userName="bgro" createdAt="2025/07/10 14:11:07" color="#ff33a1">}}




{{<matomeQuote body="リストで反復してるのは、リストを返す関数で再帰してるからだよ。ベクトルを使う必要がないケースもあるし、Clojureのコア関数のほとんどがリストを返すのには理由があるんだ。ほとんどのプログラミングでリストで十分だってね。dotimesやvolatile、nthを使えばパフォーマンスも確保できるし、エルゴノミクス的な解決策は常にあるから大丈夫だよ。" userName="barrell" createdAt="2025/07/11 17:24:01" color="#45d325">}}




{{<matomeQuote body="そうだね。僕もloopやpartition+map/reduceを使うよ。map-indexedはほとんど使わないし、インデックスを使うことも稀なんだ。大抵はmapやreduceで十分。map-indexedは、関数型アルゴリズムじゃなくて命令型アルゴリズムに走ってる感があって、ちょっとコードの「匂い」がするなって思う。" userName="drob518" createdAt="2025/07/10 10:47:00" color="#785bff">}}




{{<matomeQuote body="ElixirとClojureの例をいくつか見せてくれるかな？" userName="cess11" createdAt="2025/07/10 05:46:42" color="">}}




{{<matomeQuote body="「jank」って名前、やっぱり目立つよね。GitとかRustもネガティブな響きだし。これって新しいトレンドなのかな？もう良い名前が残ってないのか、それとも単に名付けが怠惰なだけなのかな。" userName="amelius" createdAt="2025/07/10 07:50:35" color="">}}




{{<matomeQuote body="「Maybe Not」って記事のアイデアが面白かったな。静的型付けは情報のシェイプと存在・要件を混同してるって指摘が重要だった。つまり、型定義はシェイプに、null許容性みたいな要件はコンテキストに属すべきだって。このnull許容性マスキングはSpecの機能として意図されてたらしいけど、実装されてる感じはしないね。" userName="frogulis" createdAt="2025/07/10 00:49:11" color="#45d325">}}




{{<matomeQuote body="Clojure大好きだったから、jankもすごく良い感じ。今C++プロジェクトやってるんだけど、jank入れて自動化できるか試してみるつもり。CarmackのTrinityとコンパイル戦略が似てるってのも最高だね！応援してるぞ！" userName="benreesman" createdAt="2025/07/10 11:25:31" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="別の言語でJVM分離を経験した俺からのアドバイスだよ。JVM APIとの後方互換性は追わない方がいいし、GCはmmtkを使うべき。マルチスレッディングは早めに考えるべきだし、単スレッド性能ベンチマークに時間かけすぎるなよ。URLもあるから見てみろ：https://github.com/mmtk/mmtk-core https://dl.acm.org/doi/pdf/10.1145/3519939.3523440" userName="densh" createdAt="2025/07/10 11:39:09" color="#38d3d3">}}




{{<matomeQuote body="アドバイスありがとう！jankはJVMとはほとんど関係ないし、GCもmmtkにする予定だよ。マルチスレッディングはPythonみたいにはならないし、最適化は「動かす→正しくする→速くする」のステップ2にいるんだ。役に立つアドバイスをくれてサンキュー！" userName="Jeaye" createdAt="2025/07/10 17:25:48" color="#ff5c5c">}}




{{<matomeQuote body="すごくクールなプロジェクトだね！君のやり方は正しいと思うよ。成功を祈ってる！" userName="densh" createdAt="2025/07/10 20:49:20" color="">}}




{{<matomeQuote body="ClappってCommon Lisp in C++ using LLVMを思い出したよ。あれは停滞したけど、jankも同じ問題にぶつかるかな？ClappはSBCLより100倍遅くて、コンパイルに丸一日かかったらしい。Juliaは成功したけど、多くの人が関わってたし。頑張ってほしい。Clojurists Togetherにも感謝だね！" userName="catfacts" createdAt="2025/07/09 20:47:26" color="#38d3d3">}}




{{<matomeQuote body="Claspは知ってるし、アプローチもかなり違うんだ。Claspのコンパイル時間は知らないけど、C++はコンパイル遅いよね。jankコンパイラは僕のマシンだと1分くらいでビルドできるよ。jankはClojure JVMより100倍遅くないし！応援ありがとう、簡単じゃないけど、できるさ！" userName="Jeaye" createdAt="2025/07/09 23:10:47" color="#38d3d3">}}




{{<matomeQuote body="ClappじゃなくてClaspだよ。まだリリースされてるんだぜ。2.7.0が1月で、2.8.0ももうすぐだ：https://github.com/clasp-developers/clasp" userName="Jtsummers" createdAt="2025/07/09 22:57:28" color="">}}




{{<matomeQuote body="このプロジェクト大好きで、GitHubでもスポンサーしてるんだけどさ、頼むから名前変えてくれよ！会社とかでJankを使わせてもらえない理由が、名前のせいだけってことにならないようにさ。" userName="mgdev" createdAt="2025/07/09 19:03:41" color="#ff5c5c">}}




{{<matomeQuote body="良かったな！<br>https://jank-lang.org/blog/2025-04-01-jank-has-been-renamed/" userName="didibus" createdAt="2025/07/09 20:32:31" color="#785bff">}}




{{<matomeQuote body="“一文字違いの危険”ってセクション、マジ笑えるな。一母音違いの例も探してみた？" userName="alanbernstein" createdAt="2025/07/09 23:27:49" color="">}}




{{<matomeQuote body="Jankって名前、めっちゃ好きだわ。名前だけで使っちゃうかも。" userName="fud101" createdAt="2025/07/10 01:25:20" color="#ff5c5c">}}




{{<matomeQuote body="Jank開発者の呼び方って何？Jankerとか？" userName="onionisafruit" createdAt="2025/07/09 19:17:53" color="#ff5733">}}




{{<matomeQuote body="まだ決め中。Janksterとかかな。" userName="Jeaye" createdAt="2025/07/09 20:30:05" color="">}}




{{<matomeQuote body="Jankobite？うーん…。このプロジェクト、マジ好き。ZigコードがC言語のトランスパイルでLispに組み込まれて連携するの、超楽しみなんだよね。でも、Clojureの商標承認が無理なら、最初のコメントにマジ同意するわ。とにかく、すごい仕事続けてね。StrangeloopでのあのJankyなトーク、別のタイムラインで見たかったな。" userName="DetroitThrow" createdAt="2025/07/09 21:17:27" color="#ff5c5c">}}




{{<matomeQuote body="Jank-yankerは候補から外れるだろうな、多分。" userName="onionisafruit" createdAt="2025/07/09 22:08:23" color="">}}




{{<matomeQuote body="可愛い形だとJankiyeかな。" userName="ForgotMyUUID" createdAt="2025/07/09 19:40:38" color="">}}




{{<matomeQuote body="そう、でも北欧や中央ヨーロッパ風に「yanker」って発音してね。" userName="eduction" createdAt="2025/07/10 02:22:28" color="">}}




{{<matomeQuote body="Jankeeって、まさにJankyな呼び方っぽいね。" userName="dxdm" createdAt="2025/07/10 07:36:50" color="">}}




{{<matomeQuote body="Jankobianは？" userName="magicalhippo" createdAt="2025/07/10 02:01:55" color="">}}




{{<matomeQuote body="本が出たら、挿絵を描く人はjankee doodle（ヤンキードゥードゥル）って名前にすべきだね…って、ごめん、もう出ていくわ。" userName="AnimalMuppet" createdAt="2025/07/10 01:47:13" color="">}}




{{<matomeQuote body="ブロードウェイミュージカルになって『Damn Jankees』って名前にできるよ。" userName="saghm" createdAt="2025/07/10 03:28:25" color="">}}




{{<matomeQuote body="名前に対する異論って何？意味わかんないんだけど。" userName="intalentive" createdAt="2025/07/09 22:15:39" color="">}}




{{<matomeQuote body="ネガティブな意味合いがあるよ。https://fluentslang.com/jank-meaning/" userName="hotpocket777" createdAt="2025/07/09 23:30:24" color="#45d325">}}




{{<matomeQuote body="『Slack』って名前みたいなものかな？それも企業で使われるのを邪魔してるってこと？/s" userName="remram" createdAt="2025/07/10 03:11:23" color="">}}




{{<matomeQuote body="俺の会社は当時、最大規模のSlackエンタープライズ契約の一つを持ってたんだ。導入の各段階で上層部に真剣に受け止めてもらうために、どんな社内バトルがあったか君には想像もつかないだろうね。最終的に大規模展開できたけどさ。Slackはその名前にもかかわらず、じゃなくて、名前のせいで苦労したのにエンタープライズで成功したんだ。実際の製品は、他の代替品と比べても驚くほど良かったよ。" userName="mgdev" createdAt="2025/07/10 13:48:00" color="#785bff">}}




{{<matomeQuote body="それか『Git』だよ。あれは完全な侮辱だし。" userName="Cthulhu_" createdAt="2025/07/10 08:45:55" color="#ff5c5c">}}




{{<matomeQuote body="うん、Linusみたいに悪評とか広範囲への普及、それに侮辱的なことで有名だったら、そういう名前でも許されるんだよ。だって、”ジョーク”を既に理解してる文化に向けて売ってるわけだからね。" userName="mgdev" createdAt="2025/07/10 13:43:15" color="#ff5c5c">}}




{{<matomeQuote body="Jankyって、英語で「ポンコツ」とか「適当に作ったもの」みたいなスラングだよね？これって、名前としてどうなの？" userName="an_aparallel" createdAt="2025/07/10 02:29:33" color="">}}




{{<matomeQuote body="大企業にいた時、うちらのチームは「Python」とか「GIMP」って名前を使っても、笑われたり呆れられたりするくらいで、名前に文句を言われたことはなかったんだ。<br>でも、本当の変化を起こすのが遅すぎて、結局辞めちゃった。<br>もしもっとひどい組織で働いてるなら、さっさと辞めちまえ！" userName="globular-toast" createdAt="2025/07/10 08:29:57" color="">}}




{{<matomeQuote body="大企業で未知の“リスキー”な技術を導入するのは得意なんだ。名前は初期段階ではすごい力を持つ。適当なPMが「jankなんてプロジェクトで使うか！」って一蹴し、全てを台無しにすることがあるんだ。<br>でも、「jank」という名前に文化的な意味を込めて、腕利きのハッカー集団を象徴するなら別だけどね。<br>Jeayeさんには、その名前が本当にプロダクションで採用される可能性を考えて、メリットがリスクを上回るか検討してほしいな。<br>https://www.linkedin.com/pulse/building-cloud-choosing-lisp-..." userName="mgdev" createdAt="2025/07/10 13:39:06" color="#ff33a1">}}




{{<matomeQuote body="名前が問題になるのは本当にその通りだね。でも、それはダメな組織かどうかの良い試金石だと思うんだ。<br>名前を変えても、結局アホな上司の下で働くなら、人生の半分は最悪だろうしね。<br>「Rust」だってネガティブな意味があるけど、ちゃんとやってるじゃん。<br>PMのわがままで名前を変えたくなんかないよ。大人ならちゃんと管理するべきだろ？<br>最近は6桁の給料もらってるヤツのAI議事録を直すのに毎日費やしてるよ。" userName="Capricorn2481" createdAt="2025/07/10 16:50:57" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="確かに、良い試金石だね。<br>どの戦いを選ぶかによるけど、俺はそういう組織に入ったら、直すためにあらゆる手段を使いたいんだ。<br>再建は好きだけど、エネルギー管理が大事だから、今名前を変えるチャンスがあるなら、後で労力を省けるんだよ。<br>Fortune 100企業でReactとClojureの社内利用を承認させるのに何週間もかかった経験から言えるね。<br>ライセンス問題もあったけど、作者が数年前に少し明確にしてくれれば回避できたのにって思うよ。" userName="mgdev" createdAt="2025/07/10 18:03:29" color="#ff5733">}}




{{<matomeQuote body="Clojureは大好きなんだけど、かつては勢いがあったのに、最近はオタクの間でも話題にならなくなった気がする。<br>jankがClojureに新しい息吹を吹き込んで、また盛り上がってくれることを期待してるよ。" userName="lewdwig" createdAt="2025/07/10 07:33:45" color="#785bff">}}




{{<matomeQuote body="これってJVMのせいだと思うんだ。<br>LLVM上での実装が見られて嬉しいよ。" userName="JonChesterfield" createdAt="2025/07/10 08:34:32" color="">}}




{{<matomeQuote body="JVMが理由でClojureに手を出さなかったんだ、すごく興味はあったんだけどね。<br>以前HNでJankのこと読んで興奮したのを覚えてるよ。<br>でも、完成する頃にはもう興味が薄れちゃってるんじゃないかって心配だな。<br>そうじゃないといいんだけど。" userName="latexr" createdAt="2025/07/10 09:01:43" color="">}}




{{<matomeQuote body="Janetっていう言語もあるよ。<br>Clojureとは違うけど、かなり影響を受けてて良い言語なんだ。<br>だいたいANSI Cで実装されてて、小さくてどこでも速くコンパイルできるし、LLVMに依存せずにアプリに組み込めるよ。" userName="30360000" createdAt="2025/07/10 09:11:47" color="#ff33a1">}}




{{<matomeQuote body="関連情報だよ: Janetプログラミング言語<br>https://janet-lang.org/" userName="jhoechtl" createdAt="2025/07/10 04:25:56" color="">}}




{{<matomeQuote body="ClojureがJVM、JS、CLR、LLVMとか色んなプラットフォームをターゲットにするのって、どういう仕組みなの？<br>JVMやJSに特化してないClojureライブラリって、どのClojureプラットフォームでも動くの？<br>jankでもそのまま使えるのかな？それとも、ライブラリ作者がプラットフォームごとに何か特別な対応をしなきゃダメ？" userName="sideeffffect" createdAt="2025/07/09 21:17:52" color="#785bff">}}




{{<matomeQuote body="Clojureのコードで他言語連携を使ってないやつは、だいたいClojure、ClojureScript、Clojure CLR、jankとかでそのまま動くよ。一部例外はあるけどね。<br>ライブラリ作者が特別な対応をするかについては、Clojureはリーダーマクロっていう機能があって、プラットフォームごとにコードを書き分けられるんだ。<br>C言語の「#ifdef」みたいな感じで、今Clojure、ClojureScript、jankのどれでコンパイルされてるかチェックできるんだよ。例えばスリープ関数だと、JVM用とjank用でこんな風に書き分けられるんだ。これで使う側は何も気にしなくていいってわけ。<br>(defn sleep [ms]<br>  #?(:clj (Thread/sleep ms)<br>     :jank (let [s (/ ms 1000)<br>                 ns (* (mod ms 1000) 1000000)<br>                 t (cpp/timespec. (cpp/long. s) (cpp/long. ns))]<br>             (cpp/nanosleep (cpp/＆ t) cpp/nullptr))))" userName="Jeaye" createdAt="2025/07/09 21:54:58" color="#45d325">}}




{{<matomeQuote body="Clojureが複数のプラットフォームをターゲットにする仕組みは、まずファイル拡張子で分けてるんだ。<br>JVM向けは.clj、JS向けは.cljsって感じ。<br>複数のプラットフォームで動かしたいコードは.cljcファイルに入れるんだよ。<br>で、プラットフォームごとの細かい違いは、リーダーマクロを使ってコードの中に直接書き分けるんだ。<br>だから、コンパイラにはプラットフォームごとにちょっと違う抽象構文木が渡されるってわけ。他の言語でクロスプラットフォームコードを書くのと似てるけど、Lispスタイルだからもっと便利だよ。" userName="simongray" createdAt="2025/07/10 07:32:15" color="#38d3d3">}}




{{<matomeQuote body="jankのエラー報告には特に期待してるんだ。ブログ記事で紹介されてた通りなら最高なんだけど。<br>だって、Clojureを試すように説得したほとんどの人が、エラーメッセージが全然わからなくて混乱するって言うんだよね。" userName="defo10" createdAt="2025/07/09 20:30:49" color="">}}




{{<matomeQuote body="うん、エラーメッセージが役に立たないのはマジで信じられないレベルだよね。ある意味、とんでもない偉業だよ。<br>それでもClojureは大好きなんだけどさ、まいったね。" userName="chamomeal" createdAt="2025/07/09 20:59:49" color="">}}




{{<matomeQuote body="jankのツールってどんな感じなの？<br>Clojureのツールは正直、おまけみたいな感じで残念だったんだよね。<br>Gleamみたいに最初からちゃんと使えるツールが揃ってる方が好きなんだ。" userName="Lyngbakr" createdAt="2025/07/10 11:01:03" color="#38d3d3">}}




{{<matomeQuote body="jankはLeiningenをガッツリ推していくぜ。もちろんdeps.ednもサポートするよ。<br>このプロセスは、最近のClojure CLI開発者がやってることよりずっとシンプルだと俺は思ってるんだ。<br>lein new jank hello-world<br>cd hello-world<br>lein run<br>lein test<br>lein package<br>今後はLeiningenの軽量版とか、jankでLeiningenをコンパイルしたり、独自のツールを作ることも検討するかもね。でも今のところは、標準のLeiningenを推奨していくよ。" userName="Jeaye" createdAt="2025/07/10 17:39:59" color="#785bff">}}




{{<matomeQuote body="これが本当に実在する言語だったって知って、ちょっとビックリしたわ。<br>なんか変な冗談言語かと思ってたからさ。" userName="padjo" createdAt="2025/07/10 07:29:38" color="">}}




{{<matomeQuote body="俺、2011年頃はClojureファンだったんだよね。でも、こういうニッチな言語でどうやって生計を立てるのかマジで疑問なんだ。当時、ClojureでPoCとしてバックエンドサービスを2つ作ったっきりで、それっきりClojureは基本的に消えちゃったと思ってたんだよ。それが2025年にまた流行るなんて、LISPまで復活するなんてマジで驚きだわ。" userName="lisbbb" createdAt="2025/07/10 20:35:40" color="">}}




{{<matomeQuote body="Clojureはまだまだ現役だし、方言の面でも成長中だよ。Stack Overflowの2024年の調査だと、Clojureは言語別で3番目に給料が高い仕事なんだぜ。詳しくはこちらを見てくれ→https://survey.stackoverflow.co/2024/technology#top-paying-t..." userName="Jeaye" createdAt="2025/07/10 22:09:00" color="#38d3d3">}}




{{<matomeQuote body="面白い言語だったんだけど、結局それを仕事に活かすことはできなくて、使うのは楽しかったけど最終的にはやめちゃったんだよね。" userName="lisbbb" createdAt="2025/07/14 19:46:36" color="">}}




{{<matomeQuote body="数年前までは（長寿命のインフラプロジェクトで）たくさんのプロジェクトがあったんだけど、最近は主にスクリプトで（babashkaを使って）Clojureを使ってるよ。数週間前にスタートアップに転職したから、またClojureを使う機会が増えてきたぜ！たくさんの仕事は、全部の言語を縛るわけじゃないからね。" userName="lucyjojo" createdAt="2025/07/12 12:00:22" color="">}}




{{<matomeQuote body="これが（評価の高いClojureと比較して）jankの目玉機能みたいだから、JVM版とLLVM版のベンチマーク比較が見れるといいな。jankはREPLベース開発のメリットを活かしつつ、ネイティブの世界にシームレスにアクセスしてJVMのパフォーマンスとガチで戦えるようになるらしいからね。" userName="npalli" createdAt="2025/07/09 19:14:20" color="#38d3d3">}}




{{<matomeQuote body="ベンチマークとか最適化に関するブログ記事はいくつかあるんだけど、今は言語開発に全ての時間を費やしてるんだ。実装が流動的だから、去年のベンチマークはもうあんまり参考にならないんだよね。jankがClojureと機能的に同等になって安定したら、パフォーマンス測定と最適化に集中できるのを楽しみにしているよ。" userName="Jeaye" createdAt="2025/07/09 20:29:25" color="#38d3d3">}}




{{<matomeQuote body="ソースをざっと見たんだけど、この言語にはもっと良い設計があると思うんだ。jankの自己コンパイル可能な、もっと小さなサブセットがあるはずだぜ。Clojureで（同じサブセットに限定して）Clojure（またはターゲットにしたい他の言語）に変換するブートストラップコンパイラが書けるって確信してる。俺の経験からすると、多分5000行、いやもっと少なくてもできるんじゃないかな。それができたら、Cに変換するバックエンドを書けばいいんだ。これでそのjankの小さなサブセットのネイティブコンパイラが手に入る。自分のソースコードに適用すれば、ネイティブコンパイラのバイナリがタダで手に入って、Clojureから独立できるんだよ。そうなれば、ネイティブコンパイラと、とても小さくてタイトな言語が手に入る。小さいから、正しさのチェックも最適化も簡単だし、新しいバックエンドも比較的簡単に追加できる。REPLについては、Cコンパイラを使って関数を独自のハッシュアドレス付き共有ライブラリにコンパイルして、dlopenでロードすればいい。TCCは生成コードがGCCやClangほど良くなくても、この目的にはめちゃくちゃ速いぞ。将来のビジョンは全部この基盤の上で実現できるはずだ。今のやり方は、C++やLLVMの余計な複雑さに足を引っ張られて、作者を泥沼にはめるだけだと思うぜ。機能は不完全にたくさんあるより、少なくても完全に実装されてる方がずっと良いんだからな。" userName="norir" createdAt="2025/07/10 16:20:23" color="#38d3d3">}}




{{<matomeQuote body="＞コンパイラのSLOCがフィットネス指標なら、確かに良い設計があるんだろうな。でも、そういうのはパフォーマンスと堅牢性を犠牲にするんだぜ。俺はjankをjankで実装するつもりはないし、自己ホスト型にもならないと思うね。なんでかって？<br>まず、jankはシステム言語じゃないし、速いランタイムのためにはC++みたいなシステム言語が必要なんだ。最速のClojureを目指すには、5000行の小さな自己ホスト型コンパイラじゃ全然足りないんだよ。<br>次に、jankには2つのターゲットがいるんだ。1つは既存のClojure開発者。自己ホスト型jankは彼らにとっては良いだろう。でも、2つ目の、もっと大きなターゲットは既存のネイティブ開発者だ。彼らにとっては、jankを自分のプログラムに組み込めるように、イディオムに沿ったネイティブインターフェースが必要なんだ。jankのClojure側はC++ APIを作るようには設計されてなくて、使うように設計されてるんだ。でも、jankのC++側はC++ APIそのもので、ライブラリとして設計されてるんだぜ。<br>3つ目に、jankのシームレスな相互運用性はLispとしては前例がないレベルなんだ。これは、ClangとLLVMの最先端（書いてる時点ではまだリリースされてないLLVM main）が必要なんだよ。完全なJIT機能も、C++のあらゆる値、関数、型をjankからシームレスに使えるようにするためには、JITテンプレートのインスタンス化が必要で、これには最新のが必要不可欠なんだ。CにコンパイルしてTCCを使うような、よくある小さなコンパイラのアプローチじゃ、これは実現できないね。だから、これもまた別のフィットネス指標ってわけだ。<br>＞今のやり方は、C++やLLVMの余計な複雑さに足を引っ張られて、作者を泥沼にはめるだけだと思うぜ。<br>それって、jankじゃなくて別の言語を設計してるみたいに聞こえるな。もちろん、jankの設計もコードも改善できるのは分かってるさ。誰よりも俺の方がjankのコードの問題点を指摘できる自信があるね、だってほとんどは俺が作ったんだからさ。でも、C++を減らしてjankを増やすっていう君の主張は、言語を小さく、遅く、堅牢性の低いものにするだけなんだ。俺は自分が作りたい言語を作るために、C++のコストを払うつもりだよ。" userName="Jeaye" createdAt="2025/07/10 17:37:10" color="#785bff">}}




{{<matomeQuote body="JVMがないこと以外に、JankがClojureのドロップイン代替（そのまま置き換えられるもの）になるのを妨げてるものって何があるの？" userName="axblount" createdAt="2025/07/09 18:58:45" color="">}}




{{<matomeQuote body="必要な機能が全部実装されたら、唯一ネックになるのはJVMとの相互運用性だけだよ。もし君が持ってるコードが「純粋なClojure」（つまり他のJVMライブラリとかに依存してないコード）なら、それはjankコードとしてもそのまま有効になるはずだ。" userName="Jeaye" createdAt="2025/07/09 19:03:03" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
