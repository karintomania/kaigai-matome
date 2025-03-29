+++
date = '2025-03-22T00:00:00'
months = '2025/03'
draft = false
title = 'RustにZigのコンパイル時機能がやってきた Crabtimeってマジ 開発が捗るらしいぞ'
tags = ["Rust", "Zig", "コンパイル時", "マクロ", "メタプログラミング"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> RustにZigのコンパイル時機能がやってきた Crabtimeってマジ 開発が捗るらしいぞ

引用元：[https://news.ycombinator.com/item?id=43415820](https://news.ycombinator.com/item?id=43415820)

{{<matomeQuote body="ロゴめっちゃいいね！Rustのマクロを簡単にするのは素晴らしいと思うよ。ユーザーとしては、proc macroが別のcrateを必要とするのが特にめんどいんだよね。Crabtimeはそれを解決してくれるみたいでいいね。でも、Zigのcomptimeの類似物ってより、コンパイル時のevalの強化版って感じかな。Zigとの大きな違いは型情報へのアクセスだと思う。ZigではできるけどRustではできないからね。残念ながらRustでそれが実現するのはまだ先になりそう。compile time reflectionがあれば、もっとcomptimeっぽくなるんじゃないかな。" userName="weinzierl" createdAt="2025-03-22T06:38:32" color="">}}

{{<matomeQuote body="＞ZigのcomptimeとRustのマクロの大きな違いは型情報へのアクセスだと思う”ってあるけど、他にも違いはあるよ。まず、comptime関数は構文マクロじゃないから、すごく扱いやすいしデバッグしやすいんだ。強力なリフレクションを備えた、部分的に型付けされた言語で実行される通常の関数みたいなもんかな。comptimeは他の言語機能を冗長にするから、言語全体がシンプルになるってのがユニークな点だと思う。つまり、シンプルだけど強力な機能があれば、他のいくつかの機能が要らなくなるんだよね。Zigはとてもシンプルな言語なのに、他の複雑な言語と同じくらいの表現力を持ってるってこと。それをローレベルで実現してるのが革命的なんだよね。comptimeを複雑な言語に追加しても、その最大のメリットは得られないと思うな。" userName="pron" createdAt="2025-03-22T13:24:04" color="#ff5733">}}

{{<matomeQuote body="細かいことだけど、JavaScriptはシンプルじゃないよ。個人的には、一般的に使われてる言語の中で一番複雑なセマンティクスを持ってると思う。" userName="GrantMoyer" createdAt="2025-03-22T15:30:12" color="">}}

{{<matomeQuote body="型の自動変換とか’with’とかの変な部分以外で例を挙げられる？JavaScriptの子孫で後方互換性のないやつを作って整理しようと思ってるんだけど、問題点について聞きたいな。" userName="Lerc" createdAt="2025-03-22T17:17:35" color="">}}

{{<matomeQuote body="ぱっと思いつくのは…<br>・undefinedとnullがある<br>・変数の宣言方法が3つある<br>・typeof vs instanceof<br>・for in vs for of<br>・`this`の挙動<br>・引数の数が間違った関数を呼び出した時の挙動<br>まだまだ色々あると思う。" userName="GrantMoyer" createdAt="2025-03-22T17:46:14" color="">}}

{{<matomeQuote body="＞扱いやすいってことだけど、Zigのcomptimeの方がマクロよりもエラーを見つけやすい例ってある？<br>＞他の言語機能を冗長にするってことだけど、IDEとかユーザーは一般的なイディオムを意識する必要があるよね？それなら、コンパイラで実装されてるかcomptimeで実装されてるかって、そんなに重要？" userName="creata" createdAt="2025-03-22T14:00:17" color="">}}

{{<matomeQuote body="comptimeが冗長にする他の言語機能の例ってなんかある？" userName="forks" createdAt="2025-03-22T13:31:30" color="">}}

{{<matomeQuote body="例えばジェネリックシステムはcomptimeの上に構築されてるんだ。ジェネリックな構造体は、型を引数として受け取って構造体を返す関数みたいなもん。<br><br>fn Vec(comptime T: anytype) {<br>  return struct {<br><br>     // ...<br>  }<br>}<br><br>第一級のジェネリック型パラメータの構文がある方がいいと思うけど、これはOPの主張を示してる。" userName="dhruvrajvanshi" createdAt="2025-03-22T13:50:03" color="#ff5c5c">}}

{{<matomeQuote body="C++のテンプレートとちょっと構文が違うだけに見える…" userName="Wumpnot" createdAt="2025-03-22T16:18:49" color="">}}

{{<matomeQuote body="いや、ちょっと違うよ。C++ではできないような、あらゆるレベルのデータ型の複雑なものを渡せるんだ（comptimeで有効なものに限るけど）。<br><br>fn MyType(T: type, comptime tag: [] u8, comptime count: usize) type {<br>  const capitalized = some_module.capitalize(tag);<br>  return struct{<br>    fn name() []const u8 {<br>      return capitalized;<br>    }<br>    array: [count]T,<br>  };<br>}<br><br>みたいな。" userName="throwawaymaths" createdAt="2025-03-22T18:00:32" color="#45d325">}}

{{<matomeQuote body="その例はC++のconstevalとテンプレートで簡単に再現できそうじゃん？ちょっとした構文の違いを除けば、基本的には同じって感じ。" userName="Wumpnot" createdAt="2025-03-22T20:03:17" color="">}}

{{<matomeQuote body="C++のconstevalとテンプレートじゃ絶対に無理だよ。C++はリフレクションのサポートが必要だし、10年後には実現するかもしれないけど、現状じゃ不可能。それに、議論のポイントはC++でできるかどうかじゃなくて、Zigの一つの機能が、C++のconsteval、テンプレート、SFINAE、type traitsといった多くの機能を包含してるってこと。バラバラな機能が微妙に違う動きをするんじゃなくて、一つの機能で全部統一できるってわけ。" userName="Maxatar" createdAt="2025-03-22T22:16:40" color="#ff33a1">}}

{{<matomeQuote body="一般論としてはその通りだけど、C++26でリフレクションの中核部分が導入される予定だよ。それでこれが実現できるかは詳しくないけどね。Rustは…10年後かもね。" userName="steveklabnik" createdAt="2025-03-22T22:36:25" color="">}}

{{<matomeQuote body="crates.ioには色々リフレクションのクレートがあるのは知ってるでしょ？" userName="pcwalton" createdAt="2025-03-23T00:14:32" color="">}}

{{<matomeQuote body="reflectクレートがもっと進んで欲しかったな。言語サポートが重要だと思ってるけど、色々あって時間がかかりそう。残念。" userName="steveklabnik" createdAt="2025-03-23T03:06:40" color="">}}

{{<matomeQuote body="ジェネリクス、インターフェース/traits/コンセプト、マクロ、条件付きコンパイル、const関数/constexpr。C++やRustでは4つか5つの異なる機能だけど、全部comptimeっていう単純な構成要素で表現できるんだ。" userName="pron" createdAt="2025-03-22T14:39:04" color="#ff5733">}}

{{<matomeQuote body="comptimeでジェネリクスの型チェックとか型推論をどうやるの？[1]で提起されてる問題全部に対応できるの？comptimeがジェネリクスのシステムを完全に再現できるなんて、明らかに嘘じゃん。<br>[1]: https://typesanitizer.com/blog/zig-generics.html" userName="pcwalton" createdAt="2025-03-22T16:41:21" color="#45d325">}}

{{<matomeQuote body="これは問題というより違いって感じかな。根本的な問題として提示されてるものも、実は小さいものが多いと思う。例えばZigが`fn foo (comptime T : type, ...){typecheck(T); ...}`じゃなくて、`fn foo (comptime T : typecheck(T), ...){ ... }`みたいな構文を導入したら、ジェネリクスじゃなくてテンプレートって言う？この変更が価値があるかどうかはまだわからないけど、もしそうなら後からでもできるし。この記事のほとんどの”問題”はIDEサポートの問題だと思う。C++のテンプレートよりコンパイルエラーがわかりやすいって認めてるし（もっとわかりやすいと思う）。<br>Zigの選択が常に優れてるとは思わないけど、ジェネリクス、マクロ、条件付きコンパイル、constexprが必要な場合に、特に魅力的なトレードオフを実現してると思う。Javaみたいな言語では不要だし、Zigスタイルのcomptimeはそこまで言語を単純化しない。C++やAdaの最大の欠点は言語の複雑さだと思う人にとって、Zigは革命的な一歩だよ。これだけシンプルで表現力豊かな低レベル言語はなかったんじゃないかな。" userName="pron" createdAt="2025-03-22T18:44:57" color="#38d3d3">}}

{{<matomeQuote body="このスレッドの多くの返信が「今はXができないけど、ZigはXを追加できる」って言うのが面白いね。Zigが”今できること”に基づいた議論が見たい。Rustには同じように甘くないのに、Zigはそんなに若い言語じゃないし。PL界隈では、まだ実現してないことを約束するって評判があるよね（例えば、高階関数の存在下でスタックオーバーフローを静的に検出するとか、無理だと思う）。" userName="pcwalton" createdAt="2025-03-23T00:10:45" color="#ff5733">}}

{{<matomeQuote body="＞それは僕の主張じゃないよ。<br>＞Rustに同じように甘くしないのは、Rustの美学的な問題は複雑な機能が多すぎることだから、どうやって甘くすればいいかわからない。機能を追加するのと削除するのには非対称性があるけど、僕がZigに与えてる美学的な”ポイント”は、追加”できる”機能じゃなくて、まだ重要だと示されてない機能を”持ってない”ことに対してだよ。<br>どんな言語の機能も、何らかの肯定的な価値を追加するために追加されたのは明らかだと思う。でも、全ての機能は言語を複雑にするっていうマイナスの価値も持っていて、全体としてはその言語で書かれるプログラムが少なくなるかもしれない。重要なのは、機能の価値と複雑さのバランスを取ること。Rustの美学を好む人でも、Zigのパワー/シンプルさのバランスへの斬新なアプローチは、近年プログラミング言語設計で見られなかったものだと認めるはず。" userName="pron" createdAt="2025-03-23T03:01:41" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ZigでSendみたいなtraitってどう表現するんだろ？<br>https://doc.rust-lang.org/std/marker/trait.Send.html<br>スレッドをspawnするときとかに、値が安全に別のスレッドに移動できることを保証するやつ。<br>https://doc.rust-lang.org/std/thread/fn.spawn.html" userName="kobebrookskC3" createdAt="2025-03-22T16:05:25" color="">}}

{{<matomeQuote body="それが必要なら、proof checkerとかが必要になるんじゃない？" userName="throwawaymaths" createdAt="2025-03-22T18:22:45" color="">}}

{{<matomeQuote body="Rustが提供してるやつみたいな？<br>Zigはmemory safeじゃないから無理だよね。" userName="pcwalton" createdAt="2025-03-23T00:15:00" color="">}}

{{<matomeQuote body="こういうプロジェクトは見たことない？<br>https://github.com/ityonemo/clr<br>色々出てきてるよね。なぜかZigの人がRustのものを欲しがって、Rustの人がZigのものを欲しがるんだよね。" userName="rc00" createdAt="2025-03-23T00:30:52" color="">}}

{{<matomeQuote body="そういうプロジェクトは見たことあるよ。でも、Zigが今できることに基づいた議論が見たいんだよね。将来的にできることじゃなくて。昔、C++の人もISO C++ Core Guidelinesでmemory safetyを約束してたけど、今は聞かないよね。C++のままじゃ無理だってわかったから。" userName="pcwalton" createdAt="2025-03-23T03:58:10" color="">}}

{{<matomeQuote body="Rust Nightlyから出る予定だったものの約束はどうなったの？<br>Zigに関しては、1.0になるのが遅すぎるからまだ早いって言う人がいるよね。機能開発はもう終わったって言うの？何が言いたいの？" userName="rc00" createdAt="2025-03-23T04:11:03" color="">}}

{{<matomeQuote body="C++のmetaprogrammingの進化ってマジですごいと思う。<br>C++98の時はtemplateのハックだったけど、C++23ではかなり使いやすくなったし、compile time reflectionでさらに良くなる。<br>Rust macrosみたいに別の言語を学ぶ必要もないし、3rd party crates (syn)に頼る必要もないし。" userName="pjmlp" createdAt="2025-03-22T09:09:57" color="#ff33a1">}}

{{<matomeQuote body="C++のtemplate metaprogrammingって、今でもC++の中の別の言語じゃない？<br>syntaxとかlogicとか、普通のC++と全然違うじゃん。" userName="msk-lywenn" createdAt="2025-03-22T09:18:46" color="">}}

{{<matomeQuote body="Zigってどうやってmacrosの前にtypeをresolveするんだ？<br>評価順序がマジでヤバい気がするんだけど。<br>どういう仕組みなの？<br>macrosのlayerが複数あるの？<br>levelを宣言する必要があるの？<br>どうやってmacrosでtypeを定義したり、変数のtypeを宣言したりするの？<br>そのtypeを別のmacrosで使えるの？" userName="nukem222" createdAt="2025-03-22T06:57:09" color="">}}

{{<matomeQuote body="Zigにはmacrosはなくて、comptimeに実行できるfunctionがあるんだよ。<br>typeを返すfunctionを作って、別のfunctionから呼べる。<br>宣言は最初に使われた時にしか解析されないし、comptimeに呼ばれたfunctionはその引数に基づいてmemo化される。<br>評価順序はマジでシンプルで予測可能。" userName="pfg_" createdAt="2025-03-22T07:05:13" color="#ff5c5c">}}

{{<matomeQuote body="補足だけど、Rustにもコンパイル時に実行できる関数があるよ。それはconst fnって呼ばれてて、標準で使えるんだ。crateは要らない。Rustそのもので、マクロみたいに別の構文じゃないんだ。<br>ただ、Zigのcomptimeの完全な代わりにはならないかな。ある意味、Zigより制限が多いし、良いか悪いかは別として、Zigより高い目標を持ってる。<br>const fnはコンパイル時か実行時に動く必要があって、常に同じ結果を出す必要があるんだ。これは結構大変で、コンパイル環境と実行環境が違うクロスコンパイルだと特にね。<br>副作用も禁止だから、Rustのconst fnは純粋関数って言われてるよ。" userName="weinzierl" createdAt="2025-03-22T07:44:51" color="#45d325">}}

{{<matomeQuote body="Rustにはコンパイル時の環境変数があって、const fnで解析できるんだ。コンパイル時にRustのコードを試したり設定したりするのに便利だから、もっと活用されるべきだね。" userName="kzrdude" createdAt="2025-03-22T09:50:40" color="">}}

{{<matomeQuote body="RustがC++からconstexpr関数をコピーしたのはよくわからないな。constexpr関数はコンパイル時に実行される”かもしれない”だけだし。<br>C++は結局constevalとconstinitを追加することになったんだ。これらは本当にコンパイル時専用だよ。" userName="IshKebab" createdAt="2025-03-22T10:21:47" color="">}}

{{<matomeQuote body="Rustでは、浮動小数点数がコンパイル時と実行時で完全に同じになるとは限らないよ。" userName="tyilo" createdAt="2025-03-22T10:55:49" color="">}}

{{<matomeQuote body="そこまで悪くはないよ。違いはNaNの表現（符号とペイロードのビット）が安定しているとは限らないってことだけ。NaNの特定の表現に頼ってないなら、const fnでの浮動小数点演算は同じだし、違いが見られたらRustコンパイラのバグってことになる。" userName="kibwen" createdAt="2025-03-22T12:42:53" color="">}}

{{<matomeQuote body="コンパイルするシステムと実行するシステムで精度が違う場合はどうなるの？ 例えば、64bitシステムでコンパイルして、FPアクセラレータ付きの32bit組み込みとか、softfloatの16bitシステムをターゲットにする場合とか。" userName="throwawaymaths" createdAt="2025-03-22T18:26:14" color="">}}

{{<matomeQuote body="もしRustにZigのcomptime機能があるなら、このcrateは何？ どう違うの？ 何を追加するの？" userName="johnisgood" createdAt="2025-03-22T10:02:08" color="">}}

{{<matomeQuote body="RustにはZigのcomptime機能はないよ。Rustのconst fnは普通の関数で、コンパイル時に実行できる”だけ”。これは単なる最適化で、ランタイムでも実行できる必要があから、特別な機能はないんだ。<br>Zigのcomptime関数はコンパイル時”だけ”に実行されるから、特別なことができるんだ。特に、型を操作するとかね。ランタイムで実行する必要がある関数ではできないことだよ。" userName="IshKebab" createdAt="2025-03-22T10:25:22" color="#785bff">}}

{{<matomeQuote body="Zigのcomptimeはマクロじゃなくて、ステージングプログラミングだよ。" userName="deredede" createdAt="2025-03-22T07:07:44" color="">}}

{{<matomeQuote body="Zigのcomptimeは、C++のテンプレートを改良したものだね。C++のテンプレートと同じような問題もあるけど。関数がcomptimeかどうかは、comptimeに入れてみて初めてわかるんだ。<br>＞https://typesanitizer.com/blog/zig-generics.html" userName="Ygg2" createdAt="2025-03-22T07:55:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="このライブラリ試してみたけど、マジで使いやすかったよ。前にbenchmark関数を生成するdeclarative macroを書いたんだけど、マジ苦行だったし、変更を加えるのも不安だったんだよね。でもcrabtime使ったら、マジ快適になった。ほとんどRustコード書くだけだし、めっちゃ見やすいしカスタマイズしやすいんだよね。例えば、新しいモジュール追加するたびに名前渡す必要なくなったし。paste!{}とcrabtime::output!{}の中身見比べたらわかると思うけど、Rustコードで文字列作って{{ str }}でポン置きできるのがマジでかい。paste!{}の方は、マジでどうやったか覚えてないけど、動くまで試行錯誤してたわ。years_and_daysのループも、declarative macroの`($($year:ident {$($day:ident),+ $(,)?}),+ $(,)?)`より、crabtimeの`for (year, day) in years_and_days`の方が読みやすいし。crabtimeマジ最高。前まではRustのメタプログラミングとか避けてたけど、これからは状況次第で全然ありだわ。" userName="nindalf" createdAt="2025-03-22T09:25:46" color="#ff5c5c">}}

{{<matomeQuote body="こういう感謝の言葉ってマジ良いよね。感謝の気持ちだけじゃなくて、共同作業のクリエイティブな過程が垣間見えるし。<br>全角の＞以下の方々の貢献に心から感謝します。<br>全角の＞timonv – このクレートの素晴らしい名前を発見し提案してくれたことに感謝します。<br>全角の＞Polanas – テスト、設計、そしてプロジェクトを大幅に改善する洞察力に富んだフィードバックという貴重な支援に感謝します。<br>全角の＞あなたのサポートと貢献は、このクレートをより良くするために重要な役割を果たしました—ありがとうございます!”" userName="stared" createdAt="2025-03-22T11:37:09" color="#ff33a1">}}

{{<matomeQuote body="最初、eval_macroにそっくりじゃんって思ったけど、名前が変わっただけみたいだね。新しい名前マジ良いね。おめでとう!" userName="mplanchard" createdAt="2025-03-22T14:31:37" color="">}}

{{<matomeQuote body="マジすごい。誰か使ったことある人いる? フィードバックとかあれば聞きたいな。既存のマクロより全然良さそうに見える。" userName="vlovich123" createdAt="2025-03-22T06:39:10" color="">}}

{{<matomeQuote body="作者が数週間前に前のバージョンを発表して、2日前にこの新しいバージョンを発表したみたい。だからまだユーザーは少ないかもね。declarative macroをcrabtimeで置き換えたけど、declarative macroは自分が書いたはずなのに、どう動いてるか全然わかんなかった。crabtimeにしたら、理解できてメンテできるようになった。crabtimeマジ最高。以前はRustのメタプログラミングとか避けてたけど、これからは状況次第で全然ありだわ。" userName="nindalf" createdAt="2025-03-22T08:01:02" color="#785bff">}}

{{<matomeQuote body="マジ neatだけど、Zigのcomptimeと同じではないと思うな。Zigの動的な挙動はないし、コンパイル時のリフレクションもないし。RustはZigのcomptimeみたいな動的な特性は持てないし、ZigもRustのコンパイル時の保証は絶対に得られない。動的なケーキを同時にコンパイル時に食べることはできないんだよね。理論的には可能だけど、言語を大幅に変える必要があると思う。" userName="Ygg2" createdAt="2025-03-22T09:06:57" color="">}}

{{<matomeQuote body="使ったことないけど、マジ良さそうだし役に立ちそう。でもZigのcomptimeとは全然違うと思う。" userName="weinzierl" createdAt="2025-03-22T06:48:13" color="">}}

{{<matomeQuote body="これマジ良さそう。昨日macro_rulesでコードを簡潔にしようとしたんだけど、macro_rulesじゃ無理だったから全部書いたんだよね。proc macrosはできるだけ避けてる。たくさん書いたことあるけど嫌い。synとかquoteとかproc_macros2とかの依存関係が増えてコンパイル時間が長くなるし。依存関係が増えないか確認してみよう。" userName="norman784" createdAt="2025-03-22T09:09:43" color="">}}

{{<matomeQuote body="proc-macro2、syn、quote、toml、rustc_versionに依存してるみたい。最初の3つは複雑なprocedural macrosなら当然だよね。Tomlとrustc_versionはCargoの設定用みたいで、悪影響はなさそう。transitive dependenciesはunicode-ident（proc-macro2から）、serde、serde_spanned、toml_datetime（tomlから）、semver（rustc_versionから）みたい。" userName="lifthrasiir" createdAt="2025-03-22T09:16:52" color="#45d325">}}

{{<matomeQuote body="最高に素晴らしい!" userName="jpgvm" createdAt="2025-03-22T10:15:43" color="">}}

{{<matomeQuote body="それってまさに「blursed」って言葉のためにあるようなもんじゃん。" userName="Sharlin" createdAt="2025-03-22T12:23:51" color="">}}

{{<matomeQuote body="それ、もっと頻繁に使わなきゃ…" userName="airstrike" createdAt="2025-03-22T13:18:19" color="">}}

{{<matomeQuote body="これクールだけど、プロジェクトのコンパイル時間にどう影響するんだろ？同じ引数でマクロを何度も呼び出す場合のキャッシュについて書いてあるけど、生成されたプロジェクトの作成、コンパイル、実行にかかるおおよその時間があると嬉しいな。" userName="dymk" createdAt="2025-03-22T17:07:14" color="#785bff">}}

{{<matomeQuote body="Rustのマクロの問題は、コンピューターへのフルアクセス権があるってことだよね。これって文字通り、悪用を招いてるようなもんじゃん。Rustがもっと普及したら、この脆弱性を利用した攻撃が出てくると思う。" userName="codedokode" createdAt="2025-03-22T19:10:49" color="#ff5733">}}

{{<matomeQuote body="`make myfile.mk` -> pwned<br>マジそれなー。めっちゃ思うわー。でも、ビルドスクリプトがある環境ならどこでもコンピューターぶっ壊せるよね。できる限り暗号化するしかないけど、ソフトウェアエンジニアリングってセキュリティ的に超危険な仕事だよね。" userName="jkelleyrtp" createdAt="2025-03-22T19:56:32" color="#ff5c5c">}}

{{<matomeQuote body="もっとヤバいのは、テキストエディタで開くだけで(lspがあるとして)pwnされる可能性があるってこと。Rustだけじゃないけどね。多くのエディタは、知らないリポジトリを開くときはダウングレードモードで起動すると思う。" userName="zamalek" createdAt="2025-03-23T03:58:26" color="#ff33a1">}}

{{<matomeQuote body="さらにヤバいのは、敵対的なgitリポジトリのチェックアウトでディレクトリに移動するだけでも、シェルがgit情報(どのブランチにいるかなど)を表示する場合、任意のコードが実行される可能性があるってこと。" userName="kibwen" createdAt="2025-03-23T16:42:50" color="#ff5733">}}

{{<matomeQuote body="他の言語にはこれに対するセキュリティモデルってあるの？どんな言語でも、任意のコードをビルドすれば何かしら実行されると思ってた。<br>OpenBSDのpledge syscallみたいなのをコンパイラで使うと便利かも。システム上の何にアクセスできるかをプロセスレベルで制御できるから。" userName="hypeatei" createdAt="2025-03-22T21:20:08" color="#ff5c5c">}}

{{<matomeQuote body="Cマクロとgccはコンパイル中に任意のコードを実行することはできないよ。" userName="codedokode" createdAt="2025-03-22T22:36:18" color="">}}

{{<matomeQuote body="Cの標準は相変わらず融通が利くね。<br>＞https://feross.org/gcc-ownage/<br>＞“gccをハックする方法が書いてあるよ”" userName="fulafel" createdAt="2025-03-23T07:19:35" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="実際、Cのビルドシステムは全部そうしてるよね。" userName="kibwen" createdAt="2025-03-23T16:45:23" color="">}}

{{<matomeQuote body="wasmでマクロをサンドボックス化するランタイムはもうあるよ。https://github.com/dtolnay/watt" userName="cmrx64" createdAt="2025-03-22T19:13:49" color="">}}

{{<matomeQuote body="つまり、セキュリティを最初から用意するんじゃなくて、webブラウザ言語にコンパイルしたり、設定ファイルをいじったりするハックが必要ってこと？<br>でも、役に立つことを教えてくれてありがとう。" userName="codedokode" createdAt="2025-03-22T19:28:33" color="">}}

{{<matomeQuote body="これはデモンストレーションだよ。wasmは“言語”というよりポータブルなISAでしょ。段階的に構築するのは当然じゃない？<br>https://internals.rust-lang.org/t/pre-rfc-sandboxed-determin...<br>" userName="cmrx64" createdAt="2025-03-22T20:17:05" color="#38d3d3">}}

{{<matomeQuote body="Procマクロはそうだけど、宣言的マクロは違うよ。" userName="treyd" createdAt="2025-03-23T04:59:14" color="">}}

{{<matomeQuote body="このページ以外に例ってある？理解に苦しんでるんだよね。<br>今メタプログラミングに興味があって、Vec3 SIMDタイプを構築してるところ。f32::Vec3x8とかf64::Vec3x16とか、似たようなバリアントをたくさん管理する必要があるんだ。これって従来の<br>マクロ、手続き型マクロ、または“code gen”（コードの文字列操作だと思う）で処理できる？Crabtimeを代わりに使える？使うべき？" userName="the__alchemist" createdAt="2025-03-22T12:57:57" color="">}}

{{<matomeQuote body="正直、crates.ioのページよりこの長いドキュメントの方が参考になると思うよ。<br>https://docs.rs/crabtime/latest/crabtime/<br>＞ This could be handled using traditional macros, procedural macros, or something called “code gen”, which I think is string manipulation of code. Could I use crabtime to do this instead? Should I?<br>＞できるみたいだよ。Crabtimeは手続き型マクロと“code gen”の両方に対応してるみたい。" userName="CGamesPlay" createdAt="2025-03-22T13:41:36" color="#ff33a1">}}

{{<matomeQuote body="単純にコードをコピペするだけなら、一番簡単な従来の<br>マクロから始めるのがいいかも。どんな方法を選んでも、コードは読みにくくなると思うけどね（IDEに“生成されたコードを表示”ボタンが欲しいよね）。" userName="codedokode" createdAt="2025-03-22T19:31:50" color="">}}

{{<matomeQuote body="実は、まさに君が求めてることをするコマンドがあるんだ。「expand macro」だよ。Crabtimeも同じような機能があるって言ってるね。" userName="conaclos" createdAt="2025-03-22T22:01:01" color="#ff33a1">}}

{{<matomeQuote body="こっちのリンクの方がいいかもね。<br>https://docs.rs/crabtime/1.1.1/crabtime/" userName="KolmogorovComp" createdAt="2025-03-22T14:54:05" color="">}}

{{<matomeQuote body="マクロってコード全体をgrepしにくくならない？Semantic grepで解決できそうだけど、マクロのユースケースって聞いたことないな。" userName="jgalt212" createdAt="2025-03-22T14:29:44" color="">}}

{{<matomeQuote body="だからマクロで新しいstruct作るの基本避けてるんだよね。エラーライブラリのsnafuが個人的に嫌いな理由もそれ。定義へのジャンプとかコード検索ができなくなるのはマジ勘弁。proc macroでメソッド追加するくらいならまだマシだけど、定義が隠された型を使うのはマジ無理。" userName="mplanchard" createdAt="2025-03-22T14:43:13" color="">}}

{{<matomeQuote body="Snafuはrust-analyzerの定義ジャンプは少なくとも問題ないよ（参照ジャンプは確かに壊れるけど）。" userName="Nullabillity" createdAt="2025-03-22T18:38:53" color="">}}

{{<matomeQuote body="問題はマクロじゃなくて、識別子の連結でしょ。CSSプリプロセッサでよくあるやつ。<br>.user {<br>  &--profile { color: red; }<br>}<br>みたいな。<br>こうなると、user--profileってCSSクラスを探すのが不可能になる。SASSとかは人気だけどね。フロントエンド開発者には期待してないから別にいいけど。識別子を壊さなければ検索できるはず。でもIDEの補完とかは無理かもね。" userName="codedokode" createdAt="2025-03-22T19:36:44" color="#45d325">}}

{{<matomeQuote body="＞問題はマクロじゃなくて、識別子の連結でしょ。”<br>それも問題だよね。MySQLCursorDict Classとかも。コード全体で全てのテーブルのカラム名をgrepしないといけなくなる。" userName="jgalt212" createdAt="2025-03-22T20:10:32" color="">}}

{{<matomeQuote body="普通のサブルーチン呼ぶより？" userName="loeg" createdAt="2025-03-22T14:45:33" color="">}}

{{<matomeQuote body="crabtimeのreadmeのコード例がgrepしにくい例だよね。例えば`Position1`ってのを見つけて、定義場所を知りたいとするじゃん？でも`enum Position1`なんてないんだよね。識別子が連結されてるから。IDEの機能も使えない。定義にジャンプできないとか。" userName="dymk" createdAt="2025-03-22T16:54:47" color="#ff5733">}}

{{<matomeQuote body="マジで理解できないんだけど、comptimeって何がいいの？マクロはわかるけど、crabtimeって何が改善されるの？proc macrosの代わりに普通のRustコードを書けるってこと？" userName="cchance" createdAt="2025-03-22T20:41:28" color="">}}

{{<matomeQuote body="Zigのcomptimeとは全然違うよ。" userName="jedisct1" createdAt="2025-03-22T18:54:20" color="">}}

{{<matomeQuote body="いやいや、これ全然Zigのコンパイル時計算じゃないって。Zigのコンパイル時計算はマジで別次元ですごいんだから。" userName="cyber1" createdAt="2025-03-22T18:52:11" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
