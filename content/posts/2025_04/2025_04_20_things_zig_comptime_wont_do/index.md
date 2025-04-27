+++
date = '2025-04-20T00:00:00'
months = '2025/04'
draft = false
title = 'Zigのコンパイル時計算(comptime)で「できないこと」まとめ！え、マジ？'
tags = ["Zig", "コンパイル時計算", "プログラミング言語", "メタプログラミング", "静的型付け"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> Zigのコンパイル時計算(comptime)で「できないこと」まとめ！え、マジ？

引用元：[https://news.ycombinator.com/item?id=43744591](https://news.ycombinator.com/item?id=43744591)

{{<matomeQuote body="マジそれな！<br>Zigのcomptimeがユニークなのって、2つのポイントがあると思うんだよね。<br>1つは、comptimeが他の言語で専用の機能だったものを色々置き換えてること。コンパイル時とか実行時のメタプログラミングとか関係なく。<br>2つ目は、comptimeが参照透過性を持ってること[1]。これのおかげでASTマクロよりは機能的に劣るけど、理解しやすいんだよね。マクロみたいな参照不透明な力はなくても、introspectionと組み合わせることでめっちゃ色々できるのがすごい。<br>この2つがZigにシンプルさとパワーのユニークな組み合わせを与えてるんだと思う。Schemeとか他のLispではよく見るけど、Zigのアプローチは全然違う。Lispほど汎用的じゃないけど、コードが理解しやすいから十分パワフル。<br>好き嫌いはあると思うけど、めっちゃ面白いし斬新だよ（斬新なのは機能自体じゃなくて、言語における位置づけ）。数日で学べる斬新なデザインの言語って、マジでレアじゃん？<br>[1]: つまり、名前とか式にはアクセスできなくて、値しか見れないってこと。" userName="pron" createdAt="2025-04-20T18:16:51" color="#38d3d3">}}

{{<matomeQuote body="comptimeが参照透過的ってとこでちょっと混乱したわ。関数型プログラミングで使われる意味だと、副作用がないから式をその値で置き換えられるってことじゃん？ でも、昔のコメント[1]見たら意味が分かった。<br>正しく理解できてれば、ここでは違う意味で使ってるんだね（もしかしたらより正確な、元々の意味？）。同じ意味を持つ2つの式は、プログラムの意味を変えずに置き換えられるってこと。Rustのマクロとかだと`1 + 1`と`2`を区別できるから、この性質が壊れてる。Zigのcomptimeは値しか見れないから、この性質は壊れないってことね。<br>[1]: https://news.ycombinator.com/item?id=36154447" userName="paldepind2" createdAt="2025-04-20T19:28:34" color="#38d3d3">}}

{{<matomeQuote body="それって斬新じゃないよ。D言語が2007年くらいにコンパイル時関数実行(CTFE)を始めたんだから。その後、C++とか他の言語でも採用されてるし。<br>文字列リテラルを生成して、それをコンパイラに渡すのに使ったりするんだよね。マクロの代わりになるってわけ。<br>CTFEはD言語でめっちゃ人気のある機能だよ。" userName="WalterBright" createdAt="2025-04-20T23:17:51" color="">}}

{{<matomeQuote body="いやいや、革命的だって。さっきも言ったけど、「斬新なのは機能自体じゃなくて、言語における位置づけ」なんだって。機能を作るだけじゃなくて、それを言語の中でどう位置づけるかが重要なんだよ。D言語とかNimとかC++とかのコンパイル時評価は、Zigとは全然違う位置づけなんだって。Zigのcomptimeのポイントは、コンパイル時に計算できることじゃなくて、テンプレートとかジェネリクスとかインターフェースとかマクロとか条件付きコンパイルとか、もっと特殊な機能を置き換えることなんだよ。それがシンプルさとパワーの新しいバランスを生み出してるんだって。<br>機能の数でデザインを判断するなら、機能が多い方が良いってことになるけど、実際はそうじゃないじゃん？ 機能がないことも、デザインにとってはめっちゃ重要なんだよ。タッチスクリーンと物理キーボードの両方を持ってるデバイスは、タッチスクリーンだけのデバイスと本質的に同じって言ってるようなもんじゃん。<br>もしある言語にZigのcomptimeと全く同じことができる機能があったとしても、ジェネリクスとかテンプレートとかマクロとか条件付きコンパイルがあったら、Zigのcomptimeとは言えないんだって。" userName="pron" createdAt="2025-04-21T12:21:22" color="#ff5733">}}

{{<matomeQuote body="Zigの革命は、comptimeメカニズムが何ができるかじゃなくて、それによって他の機能が不要になることで、言語のシンプルさとパワーの比率が高まることなんだよ。<br>例えるなら、Zigのcomptimeは、introspection機能を持っていて、ジェネリクス・テンプレート、インターフェース・タイプクラス、マクロ、条件付きコンパイルを置き換える、汎用的なコンパイル時計算メカニズムなんだ。<br>デバイスの主なデザインの特徴が、タッチスクリーンは付いてるけどキーボードがない、みたいなもん。斬新なのはタッチスクリーンじゃなくて、タッチスクリーンがキーボードをなくしてること。タッチスクリーン自体は斬新じゃなくても、キーボードをなくすためにどう使うかが斬新なんだよ。タッチスクリーンとキーボードの両方があるなら、同じデザインとは言えないじゃん。<br>Zigの斬新なcomptimeは、他の特殊な機能を排除するメカニズムで、もしこれらの機能がまだ存在してるなら、あなたの言語にはZigのcomptimeはないんだよ。タッチスクリーンとキーボードがあるようなもんで、Zigの斬新さはキーボードがないタッチスクリーンなんだ。" userName="pron" createdAt="2025-04-21T18:41:00" color="#ff5c5c">}}

{{<matomeQuote body="関数のcomptimeパラメータの例はテンプレートだよ、呼び方がどうであれ！ 関数テンプレートはコンパイル時パラメータを持つ関数なんだって。<br>皮肉なことに、2000年代には多くのプログラマがC++のテンプレートに嫌気がさして、混乱してたんだよね。俺もその一人だった。でも、（遅ればせながら）関数テンプレートがコンパイル時パラメータを持つ関数だって気づいた時、マジで衝撃を受けたんだ。<br>テンプレートって呼ぶな！ コンパイル時パラメータを持つ関数って呼べばいいんだよ。テンプレートで混乱してた人たちは、すぐに理解できた。そして、自分がずっとテンプレートを使ってたことに気づいて、テンプレートに慣れていったんだよね。<br>小さい機能セットで多くのことができる方が良いってのはマジで同意だけど、comptimeがどうやってそれを実現してるのか分からん。" userName="WalterBright" createdAt="2025-04-21T19:06:36" color="">}}

{{<matomeQuote body="＞But I'm not seeing how comptime is accomplishing that.<br>ZigはC++のテンプレート、マクロ、条件付きコンパイル、constexpr、コンセプトの機能を、比較的シンプルな1つの機能で実現してるから。" userName="pron" createdAt="2025-04-21T19:17:15" color="">}}

{{<matomeQuote body="記事から引用:<br>    fn print(comptime T: type, value: T) void {<br><br><br>それってテンプレートじゃん。D言語だとこうなる:<br>    void print(T)(T value) {<br><br><br>これもテンプレート。" userName="WalterBright" createdAt="2025-04-21T19:43:16" color="">}}

{{<matomeQuote body="別の言い方をすると、Zigが型レベルのパラメータとコンパイル時評価の両方を表すために同じキーワード“comptime”を再利用しているからといって、機能が1つしかないという意味にはならないと思う。テンプレートとCTFEという2つの機能がまだ存在していて、たまたま同じキーワードを使っているだけ。" userName="pcwalton" createdAt="2025-04-21T20:01:02" color="">}}

{{<matomeQuote body="それって二つの機能だって言い張ることもできるかもだけど（個人的には違うと思う）、片方をテンプレートって呼ぶのはマジで的外れじゃね？だって、少なくともC++のテンプレートには独自のテンプレートレベルの言語（”メタ関数”のこと）があるけど、Zigにはないじゃん。例えば、C++の`std::enable_if`がZigだと普通の`if`になるってところがマジで重要なんだよね（ってことは、そもそも二つの機能じゃなくて一つだってことかも）。" userName="pron" createdAt="2025-04-21T20:22:23" color="">}}

{{<matomeQuote body="std::enable_ifはオーバーロード解決中に特定のオーバーロードを無効にするために存在するんだよね。Zigにはオーバーロードがないから、対応するものもないってわけ。" userName="edflsafoiewq" createdAt="2025-04-21T20:50:13" color="#45d325">}}

{{<matomeQuote body="TFAを正しく理解してたら、作者はDのアプローチはマジで違うって言ってるみたい。<br>＞In contrast、there’s absolutely no facility for dynamic source code generation in Zig。You just can’t do that、the feature isn’t! [sic]<br>＞Zig has a completely different feature、partial evaluation/specialization、which、none the less、is enough to cover most of use-cases for dynamic code generation。”だって。" userName="msteffen" createdAt="2025-04-21T01:44:56" color="">}}

{{<matomeQuote body="部分評価／特殊化はDではテンプレートを使って実現してるんだよね。例はこんな感じ。<br>fn f(comptime x: u32, y: u32) u32 {<br> if (x == 0) return y + 1;<br> if (x == 1) return y * 2;<br> return y;<br>}<br>and in D:<br>uint f(uint x)(uint y) {<br> if (x == 0) return y + 1;<br> if (x == 1) return y * 2;<br> return y;<br>}<br>パラメータリストが二つあるのが関数テンプレートってこと。最初のパラメータがコンパイル時のテンプレートパラメータ。二番目が実行時のパラメータ。コンパイル時のパラメータは型とかエイリアス化されたシンボルにもなれる。" userName="WalterBright" createdAt="2025-04-21T04:25:34" color="#ff5c5c">}}

{{<matomeQuote body="TFAが言ってることの面白い例だと思うんだよね。ゲーム開発者が苦労することがあるんだけど、C/C++だと、structの配列(AoS)は構文的にはいい感じで、扱いやすいしリークも避けやすいけど、配列のstruct(SoA)はメモリレイアウトがコンパクトでパフォーマンスが良いんだよね。<br>Zigには、SoAみたいにメモリに配置されたAoSを実現できるライブラリがあるんだ。<br>https://zig.news/kristoff/struct-of-arrays-soa-in-zig-easy-i...<br>実装を読むと（https://github.com/ziglang/zig/blob/master/lib/std/multi_arr...）、SoAはコンパイル時にイントロスペクトするstruct型でパラメータ化された、手の込んだ特殊化された型なんだよね。<br>これの良いところは、こういうことをやるのにマクロを使いたくなるかもしれないけど（実装はかなり複雑になると思うし、そもそも可能なのかもわからない）、Zigのコンパイル時の詳細—型のパラメータstructのフィールドを調べることができて、SoAは自身のフィールドについて非常に柔軟に対応できる—おかげで、マクロシステムは必要ないし、Zigの実装はマクロを使ったアプローチよりも実際シンプルになるってこと。" userName="msteffen" createdAt="2025-04-21T14:42:44" color="#785bff">}}

{{<matomeQuote body="Dにもマクロシステムはないから、何を言いたいのかわからないな。" userName="WalterBright" createdAt="2025-04-21T16:53:42" color="">}}

{{<matomeQuote body="異なる構文じゃなくて異なる型を使うってことは、特にDがテンプレートとか他の機能も持ってる場合、ユーザビリティの観点から重要になってくるんだよね。Zigはそれら全てにコンパイル時の型しか提供してないから。均一性もユーザビリティの面で良いけど、デメリットもある。" userName="naasking" createdAt="2025-04-21T16:26:02" color="">}}

{{<matomeQuote body="Zigで関数の引数にcomptimeを使うとテンプレートになるんだよねー。<br>異なるコンパイル時引数でその関数を使ってコンパイルして、アセンブラをダンプすると、その関数が何回も出てきて、それぞれちょっと違うコードが生成されてるのがわかると思うよ。" userName="WalterBright" createdAt="2025-04-21T17:10:05" color="#38d3d3">}}

{{<matomeQuote body="＞Zig's use of comptime in a function argument makes it a template :-/<br>二つのものの間に同型性を見出せるからって、人間工学的に同じってわけじゃないよね。" userName="naasking" createdAt="2025-04-21T17:19:02" color="">}}

{{<matomeQuote body="他の言語にもZigと本質的に同じ機能があるって valid な指摘に対して、人間工学に関する主観的な主張で反論してるのを見ると、Zigのコンパイル時が「革新的」だって考えはすごく薄っぺらく見えるな。Walterに同意。Zigは何も新しいことはしてない。ある機能を選んで、他の機能を除外するのは、全ての言語がやってること。それをやるだけで言語が「革新的」になるなら、全ての言語が革新的だよ。現実はもっとシンプルで退屈。Zigの熱狂的なファンにとっては、Zigが持ってる機能のセットが魅力的なだけ。他のプログラミング言語の熱狂的なファンと同じようにね。" userName="pcwalton" createdAt="2025-04-21T18:35:55" color="#ff5c5c">}}

{{<matomeQuote body="Zig好きな人にとって、Zigの機能は魅力的だよね。他の言語のファンと同じさ。JavaとRustの人がZigのアプローチを褒めてるのが面白いな！<br>fn Pair(A: type, B: type) type { return struct { fst: A, snd: B }; }みたいなジェネリックなペアを定義できる言語って1MLくらいしか思いつかないけど、あれも革命的だと思うんだ。" userName="matklad" createdAt="2025-04-21T19:04:27" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="えーと、波括弧とreturn文をなくせば、普通の型定義じゃん。型から型への関数としてジェネリック型をモデル化するのはSystem Fそのもので、1975年に遡るよ。型レベルのTuring完全なプログラミングは、TypeScriptからScala、Haskellまで、多くの言語で一般的だし。<br>ここで革新的なのは命令型の型レベルプログラミングだと思うなー。型レベルプログラミングをサポートする言語って、たいてい関数型言語か、型レベルでは関数型言語なんだよね。確かに面白いけど、革命的とまでは言えない気がする。" userName="pcwalton" createdAt="2025-04-21T19:22:19" color="#38d3d3">}}

{{<matomeQuote body="これって型レベルプログラミングじゃなくて、タームレベルプログラミングなんだよね。型のための別の言語がないってのがポイント。<br>関数型か命令型かは関係ないよ。それと、他の主要な機能がcomptime/partial evaluationを通じて直接表現されてるってのも重要。ジェネリック、マクロ、条件付きコンパイルの3つが大きな例かな。" userName="matklad" createdAt="2025-04-21T19:43:13" color="#38d3d3">}}

{{<matomeQuote body="＞This is one half of the innovation、 dependent-types lite。”それってdependent typesじゃないよ。Dependent typesは値に依存する型のこと。関数への引数が型か値だけなら、kind polymorphismだよ。<br>＞The second half is how every other major feature is expressed _directly_ via comptime/partial evaluation、 not even syntax sugar is necessary. Generic、 macros、 and conditional compilation are the three big ones。”シンタックスシュガーがないのは些細なことだと思うけどね。" userName="pcwalton" createdAt="2025-04-21T19:54:22" color="">}}

{{<matomeQuote body="＞ Dependent types are types that depend on values。”こんな感じ？<br>fn f(comptime x: bool) if (x) u32 else bool { return if (x) 0 else false; }" userName="matklad" createdAt="2025-04-21T20:28:13" color="">}}

{{<matomeQuote body="タッチスクリーンを使ってキーボードをなくすデザインが、タッチスクリーンが他の場所で使われていたとしても斬新だってことに気づけないのは、デザインを理解してないってことだよ。<br>汎用的なコンパイル時メカニズムを使って、ジェネリクス/テンプレート、インターフェース/typeclasses、マクロ、条件付きコンパイルのような特殊な機能を避けた言語を教えてよ。そしたらその言語は革命的だって言うよ。<br>これらの機能を単一の機能（ASTマクロじゃないもの）に置き換えるのが斬新だってわからないのも信じられないな。" userName="pron" createdAt="2025-04-21T18:47:48" color="#ff5c5c">}}

{{<matomeQuote body="でもZigのcomptimeは、君が言った機能を完全に実装してるわけじゃないよね。それが元の記事で言ってること。タッチスクリーンでキーボードをなくすのは、タッチスクリーンのキーボードにキーがないなら、あんまりすごくないってことだよ。<br>不完全な実装を数えるなら、Cプリプロセッサがジェネリクス/テンプレート、インターフェース/typeclasses、マクロ、条件付きコンパイルを包含すると言えるかも。" userName="pcwalton" createdAt="2025-04-21T19:36:00" color="">}}

{{<matomeQuote body="＞The important thing is that the feature performs the duty of those other features。”タッチスクリーンにキーボードがなくてもキーボードの代わりになるって言うようなもんかな。大事なのは他の機能の役割を果たすことだよ。<br>＞If you say that incomplete implementations count、 then I could argue that the C preprocessor subsumes generics/templates、 interfaces/typeclasses†、 macros、 and conditional compilation。”CプリプロセッサのパワーがZigのcomptimeと完全に同じだと仮定しても、2つの問題があるよ。<br>まず、Cプリプロセッサは別のメタ言語。Zigのcomptimeの重要な点は、メタ言語がオブジェクト言語と同じ言語だってこと。<br>次に、マクロが他のすべての機能の役割を果たすことができるのは当然。<br>" userName="pron" createdAt="2025-04-21T20:34:30" color="#785bff">}}

{{<matomeQuote body="＞The important thing is that the feature performs the duty of those other features。”Zigのcomptimeは、Rust（とかJava、C#、Swiftなど）のジェネリクスがすること全部できないよね。Zigのcomptimeで作る”generics”は、インスタンス化されるまで型チェックされないから。<br>Zigのメタプログラミング機能は、DがZig登場の10年以上前に徹底的に探求したメタプログラミング機能のスピンオフだよ。" userName="pcwalton" createdAt="2025-04-22T03:21:54" color="">}}

{{<matomeQuote body="＞Zig doesn't allow for the inference and type-directed method resolution that Rust or the above languages do”まあ、Zigはオーバーロードも許可してないし、comptimeに関係なく常に明示性を選択してるから、それは設計と一貫性があると思うよ。<br>＞Here's an experiment. Start with D and start removing features: GC, the class system, exceptions, etc. etc. Do you get to something that's more or less Zig modulo syntax?<br>Dがどうやってこれをやるか見てみたいな。comptime変数の概念は、”metalanguage”とオブジェクト言語がほぼ同じ言語であるという点で不可欠だね。" userName="pron" createdAt="2025-04-22T10:50:17" color="">}}

{{<matomeQuote body="＞Dにはコンパイル時変数のアナロジーが見つからなかったんだけどさ。<br>Dのコンパイル時変数はこんな感じになるかな。<br>　enum v ＝ foo(3);<br><br>enumの初期化はConstExpressionだから、コンパイル時に評価されないとダメなんだよね。<br>Dのコンパイル時関数パラメータはこんな感じ。<br>　int mars(int x)(int y) ｛ ... ｝<br><br>最初のパラメータリストはコンパイル時パラメータで、2番目は実行時パラメータ。<br>Dには型スイッチ文はないけど、static-if文で同じことができるよ。<br>　static if (is(T ＝＝ int)） ｛ ... ｝<br>　else static if (is(T ＝＝ float)） ｛ ... ｝<br><br>Static Ifは常にコンパイル時に評価されるんだ。IsExpressionは型に対してパターンマッチングするんだよ。" userName="WalterBright" createdAt="2025-04-22T17:54:17" color="">}}

{{<matomeQuote body="＞Dは2007年頃にコンパイル時関数実行(CTFE)を始めたんだって。<br>パイオニアだって？Forthは1970年代にあったし、Lispは1960年代のどこか(最初のバージョンにあったかどうかは知らないから断言はしないけど)にあったし、他にもっと古い例があるかもね。" userName="Someone" createdAt="2025-04-21T09:01:34" color="">}}

{{<matomeQuote body="君がこの機能を一年中ベタ褒めしてるのが理解できないんだよね。君は言語実装者なのにさ。<br>「YはただのXだ」って言えるのはクールだよね。美術館とかで遠くから見る分には。でも、毎日使うとなるとちょっとね。JavaのinterfaceからHaskellのtypeclassまで色々あるけど、実装しちゃえばあとは動くじゃん。Comptime型だと、Tをcomptimeに持ってきて、そこで動くかどうか確認しないといけないって聞いたんだけど。先見の明がないと動かないかもしれない。<br>それは嫌だな。Genericsとかparametric polymorphismとか、コンパイルが通ったらあとは動いてほしいんだよ。＜T＞があれば、サプライズなしにTを突っ込みたい。YがただのXかどうかは、優先順位が低いんだよね。Genericsとかが全部Xの下にあるかどうかもどうでもいい。もっと宣言的に言語を使わせてよ。<br>君が30億台のデバイスにインストールされてない言語をアカデミックだって批判してた時は、自分が理想主義的な方だと思ってたんだけどね。今はよく分からなくなってきたよ。<br>[1] https://news.ycombinator.com/item?id=24292760<br>[2] ScalaはJVM上にあるから、技術的にはカウントされるのかな？" userName="keybored" createdAt="2025-04-20T22:50:01" color="">}}

{{<matomeQuote body="僕がベタ褒めしてるのは、Zigのデザインが革命的だからだよ。プログラミング言語で完全に新しいデザインを見るのは珍しいし、学びやすくてローレベルプログラミング向けな言語なら特にね。<br>機能が良いかどうか判断するまで10～15年待つけど、悪いと判断するのはもっと早いことが多いかな。<br>＞Comptime型だと、Tをcomptimeに持ってきて、そこで動くかどうか確認しないといけないって聞いたんだけど。先見の明がないと動かないかもしれない。<br>でも、それは全部コンパイル時に行われるんだよ。他の特殊な機能もチェックされる時と同じようにね。<br>＞Genericsとかparametric polymorphismとか、コンパイルが通ったらあとは動いてほしいんだよ。<br>それもコンパイル時にチェックされるよ。コンパイルが通れば、Genericsみたいに動くよ。<br>＞もっと宣言的に言語を使わせてよ。<br>それは良いと思うよ。言語の好みは美的感覚だと思うし、デザインを客観的に評価するのは難しいと思う。結局は個人の好みとか、開発者やライブラリの有無、成熟度とかの言語外の要因で決まることが多いよね。<br>＞今はよく分からなくなってきたよ。<br>個人的には、ZigとかRustを重要なソフトウェアに使うのは考えられないな。実績がないからね。でも、新しいデザインは面白いと思うよ。僕の美的感覚に合うものもあるしね。" userName="pron" createdAt="2025-04-21T12:16:31" color="#ff5733">}}

{{<matomeQuote body="＞でも、それは全部コンパイル時に行われるんだよ。他の特殊な機能もチェックされる時と同じようにね。<br>＞... <br>＞それもコンパイル時にチェックされるよ。コンパイルが通れば、Genericsみたいに動くよ。<br>違うよ。Zigでcomptime型を使うライブラリを使う時、僕のコンパイルがうまくいくとは限らないんだ。ライブラリの作者が僕が使う型(とかコンパイル時の入力)でテストしたかどうかに左右されるからね。[1] それはJavaとかHaskellでは問題ないんだ。ライブラリがMaryで動けば、Johnでも動く。型入力が何であれね。<br>＞それは良いと思うよ。言語の好みは美的感覚だと思うし、デザインを客観的に評価するのは難しいと思う。結局は個人の好みとか、開発者やライブラリの有無、成熟度とかの言語外の要因で決まることが多いよね。<br>美的感覚に逃げないでよ。僕が言ってるのは、具体的で客観的なユーザー体験のトレードオフだよ。<br>[1] https://strongly-typed-thoughts.net/blog/zig-2025#comptime-i..." userName="keybored" createdAt="2025-04-21T13:50:09" color="">}}

{{<matomeQuote body="＞違うよ。Zigでcomptime型を使うライブラリを使う時、僕のコンパイルがうまくいくとは限らないんだ。ライブラリの作者が僕が使う型(とかコンパイル時の入力)でテストしたかどうかに左右されるからね。[1] それはJavaとかHaskellでは問題ないんだ。ライブラリがMaryで動けば、Johnでも動く。型入力が何であれね。<br>言ってる意味がよく分からないな。Genericsだって型パラメータに制限(例えばZigのtypeclassとかJavaの型境界)があるし、全ての型で動くわけじゃないでしょ。どちらの場合も、自分の型が境界に合うかどうかはコンパイル時に分かるよね。<br>Haskell/Javaの方が宣言的なのは確かだけど、それは美的感覚の問題だよね。ComptimeはC++テンプレートともHaskell/Java genericsとも違うし。どんなことでもそうだけど、特に本当に新しいアプローチは、万人に合うわけじゃない。Java, Haskell, Rustもそうだしね。だからといって、Zigのアプローチが面白くないわけじゃない。僕はRustのデザインが好きじゃないけど、面白くないわけじゃないし、Zigのアプローチはもっと新しいんだ。" userName="pron" createdAt="2025-04-21T16:36:59" color="">}}

{{<matomeQuote body="Comptimeについて何が不満なのか分からないな。君がやりたいこと(generic, parametric polymorphism, slotting ＜T＞, etc)は全部comptimeでできるじゃん。Comptimeが褒められてるのは、他の言語の多くの機能を置き換えるシンプルなメカニズムだからだよ。Comptimeはシンプルで使いやすいし、日々のプログラミングで気にせず使えるよ。" userName="ww520" createdAt="2025-04-21T01:13:25" color="#ff33a1">}}

{{<matomeQuote body="誰かZigスタイルのマクロをCommon Lispに移植した人いる？" userName="User23" createdAt="2025-04-20T18:53:51" color="">}}

{{<matomeQuote body="それってLispではデフォルトのことじゃないの？コードはデータだから変換できるじゃん。" userName="toxik" createdAt="2025-04-20T19:11:46" color="">}}

{{<matomeQuote body="Lispは強力だけど、静的型がないとオーバーロードみたいな基本的なことすらできないし、型(カスタム型の場合)をチェックして分岐する方法を自分で作らないといけないんだよね。" userName="TinkersW" createdAt="2025-04-21T01:02:53" color="">}}

{{<matomeQuote body="Zig の comptime には客観的に議論の余地があるけど、主観的には明確な欠点があって、Zig コミュニティはそれを zig build でコードを文字列として生成して、後で @imported してコンパイルすることで克服してるんだよね。<br>実際には”zig build”時の評価って感じ。だから、もっと自由度が高くて、実行時間に制限がなくて（@setEvalBranchQuota がない）、IO もできる（DB スキーマとかネットワーク検索とか）別の 'comptime' ステージがあるんだ。でも、現在のコンパイルで Zig の型を値として生成する自由はなくなるんだよね。その代わりに、ターゲットでコンパイルされたセマンティクスから入力構文に落として、文字列にして、将来のコンパイルコンテキストにまた入れる自由があるんだ。<br>昔、Perl と Tcl を C で繋いでた時、Tcl で生成した Perl の文字列を渡すのを思い出すよ。確かに動くけど、嬉しくないんだよね。コードで見えない別の ”macro” ステージ（@import）があるんだ。<br>Zig コミュニティの連中が自分たちを縛り付けるのが好きなのが、マジで理解できない。どんな新しい自傷行為をみんなに押し付けたいのかって議論は、マジで不快だわ。" userName="ephaeton" createdAt="2025-04-20T18:47:50" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞Zig コミュニティの連中が自分たちを縛り付けるのが好きなのが、マジで理解できない。どんな新しい自傷行為をみんなに押し付けたいのかって議論は、マジで不快だわ。”<br>個人的には、コンパイラが完全に自分自身から外にアクセスできるなんて考えはマジで恐ろしい（ネットワークやデータベースにアクセス？マジかよ？）。<br>それは 100% ビルドシステムの仕事じゃん。<br>テキストファイルを生成して結果をコンパイラに戻すのが最良の方法かどうかは議論の余地があるけど、コンパイラが受け取って生成するものは完全に決定論的であるべきだよね。" userName="bsder" createdAt="2025-04-20T19:43:16" color="">}}

{{<matomeQuote body="＞個人的には、コンパイラが完全に自分自身から外にアクセスできるなんて考えはマジで恐ろしい（ネットワークやデータベースにアクセス？マジかよ？）。”<br>ここで言う ”自分自身” って何？ 静的な ”外部” ソースにアクセスすること？ 動的に生成された ”外部” ソースにアクセスすること？ そのファイルがビルドシステム/ビルドプロセスで派生情報として生成された場合、バージョン管理下に置く？ そうじゃないなら、俺と同じくらいヤバい？<br>一部のプロセスには鋭利なツールが必要で、常に扱うのを恐れてはいられないんだよ。鈍器しかないなら、C++ のことわざを知ってるだろ？<br>＞しかし、コンパイラが取得して生成するものは完全に決定論的である必要があります。”<br>Zig コミュニティは 'zig build' を ”コンパイルステップ” として扱ってるから、コンパイラが最終的に取得するものは ”コンパイル時、えーと、zig build 時” に決定されるんだ。コンパイラが取得するもの、つまり zig build が同じユーザー向けのプロセス内で生成するものは、決定論的じゃないんだ。<br>どうしてそうなるの？ インターフェースを生成することは、合理化されたプロセスの一部にしたいことなんだよ。C インターフェースを満足させるには、zig の 'translate-c' を含む zig build 時のマルチステッププロセスに移行することになる。その出力を Zig ファイルにインポートするんだ。誰かがそれを comptime で暗黙的に行うのと（実際には今そうだけど）違って扱うと思う？" userName="ephaeton" createdAt="2025-04-20T21:09:55" color="">}}

{{<matomeQuote body="＞Zig コミュニティは 'zig build' を ”コンパイルステップ” として扱ってるから、コンパイラが最終的に取得するものは ”コンパイル時、えーと、zig build 時” に決定されるんだ。コンパイラが取得するもの、つまり zig build が同じユーザー向けのプロセス内で生成するものは、決定論的じゃないんだ。”<br>完全に決定論的なビルドシステムなんて、明示的にピン留めするプロセスを経ない限りないよ。実際には、ほとんどすべてのコンパイラは決定論的だよ（例えば、gcc は自分自身を 3 回再構築し、最後の 2 つがバイト単位で同一であることを確認する）。”zigmeson”（依存関係を解決して生成）と ”zigninja”（静的なリソースに対してコンパイラを呼び出すだけ）を区別する必要があるかもしれないけど、”zig build” が ”ビルドシステム” にディスパッチし、”zig”/”zig cc” が ”コンパイラ” にディスパッチするという事実は変わらない。<br>＞C インターフェースを満足させるには、zig の 'translate-c' を含む zig build 時のマルチステッププロセスに移行することになる。その出力を Zig ファイルにインポートするんだ。誰かがそれを comptime で暗黙的に行うのと（実際には今そうだけど）違って扱うと思う？”<br>それは全く別の問題だけど、問題を完璧に示してる。<br>問題は、@cImport() が同じファイルに対して 2 つの異なるモジュールから呼び出せることなんだ。3 つあったらどうなる？ 異なるバージョンが必要になったらどうなる？ 以前の @cImport がファイルの翻訳方法を変更したらどうなる？ それに対してリンク時最適化をどうやる？<br>これが、コンパイラがすでに解決済みの静的なリソースで実行される必要がある理由なんだ。ビルドシステムが SAT ソルバーを呼び出してゴルディアスの結び目を解くのは構わない。コンパイラがその解決を行う必要があるのは勘弁。" userName="bsder" createdAt="2025-04-21T01:03:23" color="#ff5c5c">}}

{{<matomeQuote body="＞What is “itself”<br>理解が正しければ、Zig コンパイラはプロジェクトのビルドファイルのローカルディレクトリにサンドボックス化されてる。C ヘッダーはおそらく例外だけどね。<br>ビルダーとリンカーはもう少し範囲が広い。" userName="throwawaymaths" createdAt="2025-04-21T10:56:29" color="">}}

{{<matomeQuote body="”ビルド時” には、デフォルト言語のビルドツールである Zig プログラムは、どこにでも、どこまでもアクセスできるんだ。Zig プロジェクトをビルドするには、Zig プログラムを使って依存関係を作成し、コンパイラを呼び出し、結果をキャッシュし、出力バイナリを作成し、リンクする必要がある。<br>`comptime` と `build time` を区別するのは、象牙の塔からの区別だよ。'zig build' はどこにでもアクセスして、何でも生成できるんだ。" userName="ephaeton" createdAt="2025-04-21T11:05:40" color="">}}

{{<matomeQuote body="それは単なる学術的なことじゃないんだ。コード内でパス外のものを @include しようとすると、嫌な思いをするだろうね。それに、'zig build' は Zig スイートの唯一のツールではなくて、個別のコンパイルコマンドもあるんだ。だから、これには実際的な意味があるんだよ。<br>git ツリー/サブモジュールシステムの外のものが実行内容に影響を与える可能性があるかどうかを確認するために、ワンストップで確認できる場所があるのは、コード/セキュリティレビューにも役立つんだ。" userName="throwawaymaths" createdAt="2025-04-21T12:03:46" color="">}}

{{<matomeQuote body="＞個人的には、コンパイラが完全に自分自身から外にアクセスできるなんて考えはマジで恐ろしい（ネットワークやデータベースにアクセス？マジかよ？）。”<br>コンパイラ自体ではないんだよ。<br>コードを生成できるビルドシステムが欲しいとしよう。それはすごく一般的で、おかしいことじゃないって、みんな同意できるよね？<br>もし Zig コードを生成するコードも Zig で書かれていたら、すごくない？ コード生成コードが完全に無関係な言語で書かれるべき理由は何？ 開発者がコンパイル時のコード生成を行うために、まったく新しい言語を学ぶ必要がある理由は何？ そうだよ、Rust のマクロを睨んでるんだ！" userName="forrestthewoods" createdAt="2025-04-20T23:37:36" color="#45d325">}}

{{<matomeQuote body="＞個人的には、コンパイラが完全に自分自身から外にアクセスできるなんて考えはマジで恐ろしい（ネットワークやデータベースにアクセス？マジかよ？）。”<br>なんでそう思うの？ F# には TypeProviders っていう機能があって、コンパイラに型を発行できるんだ。例えば、こんなことができる。<br>type DbSchema = PostgresTypeProvider<”postgresql://postgres:…”><br>type WikipediaArticle = WikipediaTypeProvider<”https://wikipedia.org/wiki/Hello”><br>これで、その Article や DB を参照する型ができた。手動で書いた型のように扱うことができるんだ。IDE、デバッガー、ロガーで完全に検査できる。一時ディレクトリに自動生成される完全な型なんだ。<br>最初見たときは、すごく奇妙だと思った。少し考えて、触ってみて、素晴らしいと思った。文字通り、史上最高のアイデアの 1 つだよ。ファーストクラスのコード生成フレームワークだ。いくつかの制限はあったけどね。<br>実際のプロジェクトで使ってみると、なぜ普及しなかったのかがわかる。すごく惜しいんだけど、何かが足りないんだ。たった 1 つだけ、ずれているんだ。CsvTypeProvider やパブリックなインターネット URL のようなファイルソースでないものの場合、インタラクションが苦痛なんだ。また、ソース管理や再現ができない依存関係がコードにできてしまう。ハックや回避策はあったけど、しっくりくるものはなかった。<br>しかし、Python や JavaScript のスクリプト構文を模倣しようとする静的型付け言語としては、最高の試みだったよ。DB URI を指定すれば、型を想定して使えるんだ。" userName="eddythompson80" createdAt="2025-04-21T04:12:27" color="#785bff">}}

{{<matomeQuote body="＞個人的には、コンパイラが完全に自分自身から外にアクセスできるなんて考えはマジで恐ろしい（ネットワークやデータベースにアクセス？マジかよ？）。”<br>ゲーム開発では、コードは最終製品のほんの一部にすぎないんだ。”データ駆動” っていう言葉で調べるといいよ。ビルドの一部として、データとコードを部分的に評価する最適化パスを実行するのは普通のことなんだ。コードには、データの変更をサポートする '開発バージョン' と、データが既知であることを前提とできる '出荷バージョン' がある。<br>より伝統的な PGO+LTO の例は、コードが既存のデータに対してどのように特化できるかの別の例にすぎない。ビルド間で PGO プロファイリングデータが変更された場合、結果のバイナリに大幅な変更なしで対応できるツールチェーンは知らないな。" userName="SleepyMyroslav" createdAt="2025-04-21T09:20:49" color="#ff5733">}}

{{<matomeQuote body="PGOデータって、コンパイラに食わせる静的ファイルじゃないの？それならコンパイラは決定的なんじゃない？" userName="bsder" createdAt="2025-04-21T20:54:08" color="">}}

{{<matomeQuote body="個人的には、コンパイラが外部にアクセスできるって考えはマジで怖いんだけど（ネットワークとかデータベースとかありえないっしょ？）。<br>＞まあ、build.rsとかMakefileで呼ぶやつもそうだけどね。cargoみたいなのがサンドボックス機能持ってたら面白いかも。" userName="panzi" createdAt="2025-04-20T22:41:32" color="">}}

{{<matomeQuote body="cargoはサンドボックスで実行できるよ。" userName="jenadine" createdAt="2025-04-21T06:56:38" color="">}}

{{<matomeQuote body="そうなんだよね。でもcargoにやってほしいんだよね。build.rsが変なことしてたら教えてほしいし。" userName="panzi" createdAt="2025-04-21T17:01:38" color="">}}

{{<matomeQuote body="＞それってビルドシステムの仕事じゃん？<br>ビルドシステムとコンパイラの主な違いって何？コンパイラがビルドのやり方を知ってれば、コンパイル時のコード生成もコンパイル中にできるんじゃない？" userName="naasking" createdAt="2025-04-22T15:20:36" color="#785bff">}}

{{<matomeQuote body="個人的には、ビルドシステムとかいうものが必要なこと自体がマジで無理。" userName="CRConrad" createdAt="2025-04-23T13:40:56" color="">}}

{{<matomeQuote body="コンパイラにIOを求めてるわけじゃなくて、他の言語がマクロでできること（コマンド実行、コード生成、コードの読み書き、コードの変更）を求めてるんだよ。それはすごく便利だって証明されてる。" userName="bmacho" createdAt="2025-04-20T20:38:08" color="#ff5c5c">}}

{{<matomeQuote body="それ便利って言うけど、マジで？マクロはパワフルだと思うけど。<br>マクロはどの言語でもデバッグが地獄。comptimeならランタイムで実行できるからデバッグしやすい（型を返すのは例外）。マクロは認知負荷が高いし、衛生的なマクロを作るのは大変。Rustのproc-macrosとかどれだけクレート引っ張ってくるの？<br>マクロのフルパワーは、それによって生じる苦労に見合うかどうか疑問。" userName="bsder" createdAt="2025-04-21T00:24:42" color="#785bff">}}

{{<matomeQuote body="＞マクロはどの言語でもデバッグが地獄だって？<br>Common Lispでしかマクロ使ったことないけど、少なくともCommon Lispでは普通に関数みたいに開発してデバッグできるよ。macroexpandでマクロの出力を見れるし、エラーがあれば他の関数と同じデバッガーに飛ばされるし。" userName="disentanglement" createdAt="2025-04-21T06:43:06" color="#ff33a1">}}

{{<matomeQuote body="デバッグのためにREPLを使うってことは、インタラクティブな環境と、それに伴うオーバーヘッド（ヒープアロケーション、ガベージコレクション、tty、インタラクティブプロンプト、macroexpandのオーバーヘッドなど）があるってことだよね。<br>少なくとも、C、C++、Rust、Zigみたいな言語が想定してるシステムプログラミングの範囲外だよね。" userName="bsder" createdAt="2025-04-21T20:46:38" color="">}}

{{<matomeQuote body="build-timeのコード生成の方が、run-timeのJVM bytecode patchingより全然好きだな。JavaでORM使うのは魔法みたいで、何が動くか全然わかんないし。コード生成ありのORMの方がずっと良い。IDEで各関数が何してるか見れるし、デバッグもできるし。" userName="fxtentacle" createdAt="2025-04-21T10:45:36" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="コード生成に文句言ってるけど…それってzig固有の問題じゃないよね？zigのcomptimeに何か足りないせいでこうなってるって言うけど…何が？それに、zigでfree-formのコード生成がどれくらい使われてるか疑問。" userName="jmull" createdAt="2025-04-21T11:36:49" color="">}}

{{<matomeQuote body="俺はこれ、むしろ良い機能だと思う。C#だとMSBuildのpropsとかtargetいじらないといけないけど、あれマジで優しくないし。それに、この手のサポートがあるからこそJSは特別だし、JSのエコシステムは革新的なんだよ。" userName="rk06" createdAt="2025-04-21T10:57:01" color="#ff5733">}}

{{<matomeQuote body="XS(たぶんSwig使う？)を学ぶのは、Perlをちゃんと理解するのにめっちゃ良い方法だった。" userName="User23" createdAt="2025-04-20T18:54:56" color="">}}

{{<matomeQuote body="zigのコミュニティはコンパイル速度を気にしてるんだよ。制限なしのcomptimeはマジでヤバいことになる。" userName="Cloudef" createdAt="2025-04-21T07:32:15" color="#38d3d3">}}

{{<matomeQuote body="それってマジで的外れだと思う。<br>@setEvalBranchQuotaで好きなだけ大きくできるし、XMLファイルを@embedFileして、comptimeでパースして、それに基づいて型を生成できる(BTDT)。コンパイルを遅くしようと思えばいくらでもできる。<br>comptimeの表現力を制限することとコンパイル時間は関係ない。andrewrkのビジョンと違うuse-caseがあっても良くない？" userName="ephaeton" createdAt="2025-04-21T11:02:16" color="">}}

{{<matomeQuote body="OdinとかGoとかJaiとか、他のコミュニティと似たようなとこ多いよね。<br>なんか、昔に戻ろうぜ！みたいなノリなのがよくわからん。<br>皮肉なことに、最終的にはLLMが直接バイナリを生成するようになるから、こんなのどうでもよくなる。" userName="pjmlp" createdAt="2025-04-21T07:22:13" color="">}}

{{<matomeQuote body="スペイン語の、北欧神話の神についての引用はホルヘ・ルイス・ボルヘスの物語から。英語訳はここにあるよ:<br>https://biblioklept.org/2019/04/02/the-disk-a-very-short-sto..." userName="hiccuphippo" createdAt="2025-04-20T17:22:03" color="#45d325">}}

{{<matomeQuote body="もしあなたがその物語を読んで、私のように、投稿のトップにある引用が物語のどの部分なのかまだ疑問に思っているなら：<br>”それはオーディンの円盤だ。片面しかない。地球上には他に片面しかないものはない”" userName="kruuuder" createdAt="2025-04-20T20:15:38" color="#785bff">}}

{{<matomeQuote body="メビウスの輪がそうじゃん！" userName="tines" createdAt="2025-04-20T22:46:12" color="">}}

{{<matomeQuote body="紙でできたメビウスの輪には表と裏の2つの面があって、さらに端っこもあるんだよね。" userName="bibanez" createdAt="2025-04-21T11:59:32" color="">}}

{{<matomeQuote body="クラインの壺みたいな端がないものもあるけど、メビウスの輪と違って地球上には存在できないから、記事の引用は正しいことになるのかな？" userName="WJW" createdAt="2025-04-21T19:41:09" color="">}}

{{<matomeQuote body="スペイン語だとこれ：<br>https://www.poeticous.com/borges/el-disco?locale=es<br>スペイン語がよく分からなくて最初は「オーディンのディスコ」かと思ったけど、意味が通じないから「レコードのことかな」って思った。" userName="_emacsomancer_" createdAt="2025-04-20T18:48:59" color="">}}

{{<matomeQuote body="オーディンのレコードにB面はないんだって。なぜならオーディンが書くものは全部最高だから。" userName="wiml" createdAt="2025-04-20T19:03:28" color="">}}

{{<matomeQuote body="昔はA面とB面があって、ビッグアーティストは両方の曲を宣伝する“Double A”を出すのが普通だったんだ。例えば、Nirvanaの“All Apologies”と“Rape Me”、The Beatlesの“Penny Lane”と“Strawberry Fields Forever”とか。" userName="tialaramex" createdAt="2025-04-20T21:56:58" color="#38d3d3">}}

{{<matomeQuote body="物語は短いけど強烈。オーディンは自分が持つ限り王でいられるという神秘的な円盤を明らかにする。それまで彼を受け入れていたキリスト教の隠者は、彼を崇拝せずキリストを崇拝すると言い、金のために円盤を奪って殺してしまう。彼はオーディンの体を川に捨て、円盤を見つけることはなかった。彼はオーディンが円盤を渡さなかったことを恨んでいた。現代のアメリカ人読者として、もし私がこの物語が現代のものだと信じたなら、キリスト教が名誉を破壊的な貪欲に置き換えているのだと思うだろう。オーディンの狼の子孫がヘブライ人を崇拝し、金のために彼を殺すのは悲しいことだが、それは不正確な人物描写ではないと思う。金銭的な祝福を渡さないことに対するオーディンへの恨みもある。それも私には悲しい。いつかオーディンがそのような軽蔑を受けないことを願っている。" userName="Validark" createdAt="2025-04-21T00:54:51" color="#ff33a1">}}

{{<matomeQuote body="Zigには部分評価/特殊化っていう別の機能があって、動的なコード生成のほとんどのユースケースをカバーできるんだよね。こういう洞察がZigの好きなところ。Andrew KelleyはKISS原則の守護聖人かも。昔、F#でマクロを使って賢いことをしようとしたら、もっと基本的な部分適用とか高階関数で実装できることに気づいたんだ。しかもコンパイラが最適化してくれるからパフォーマンスも問題ない。" userName="bunderbunder" createdAt="2025-04-21T16:18:46" color="#45d325">}}

{{<matomeQuote body="Juliaコミュニティでも、メタプログラミングを最初の解決策として使うべきではないって議論されてるよ。多重ディスパッチとか高階関数の方がクリーンで速いからね。<br>https://discourse.julialang.org/t/how-to-warn-new-users-away..." userName="minetest2048" createdAt="2025-04-21T21:24:03" color="#785bff">}}

{{<matomeQuote body="comptimeの面白いところは、作業中に柔軟に対応できるところだよね。型情報が必要になったら、関数のパラメータに追加するだけ。それがどんどん伝播して完了する。あるいは、特定の状況では型を提供できないことに気づき、アーキテクチャや設計の問題を解決する必要が出てくる。" userName="pyrolistical" createdAt="2025-04-20T16:45:25" color="#45d325">}}

{{<matomeQuote body="引数として渡す型が別の引数の型と同じ場合、関数内で@TypeOf(arg)を使うだけでAPIをシンプルにできるよ。" userName="Zambyte" createdAt="2025-04-20T18:39:30" color="">}}

{{<matomeQuote body="＞コンパイル時にコードを実行する時、どのマシンで実行されると思う？普通は自分のマシンって答えるよね。でも違うんだって！<br>これマジわかんねー。<br>クロスコンパイルしてる時って、`comptime`のコードはホストマシンで実行されるんじゃないの？それってコンパイル時の定義じゃん？<br>エンディアンが変わるなら、Zigがターゲットマシンをエミュレートするってのはわかるけど。<br>なんか変な感じ。`HostPlatform`と`TargetPlatform`が違うのは良いんだけど、ホストプラットフォーム隠す意味がわからん。なんで隠したいんだろ？<br>誤解しないで欲しいんだけど、クロスコンパイルはマジで賛成派。Zigは他の言語よりマジで優秀だと思う。だから何がわかってないんだろ？<br>あ、待って。Jaiと違って、Zigの`comptime`はコンパイル時に実行されるわけじゃなくて、コンパイル時に既知のことだけを参照するってこと？いや、それも違うか。マジで混乱してきた。" userName="forrestthewoods" createdAt="2025-04-20T21:20:30" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
