+++
date = '2025-05-17T00:00:00'
months = '2025/05'
draft = false
title = 'JavaScriptに新能力 明示的なリソース管理で何が変わる？'
tags = ["JavaScript", "プログラミング", "リソース管理", "非同期処理", "新機能"]
featureimage = 'thumbnails/green2.jpg'
+++

> JavaScriptに新能力 明示的なリソース管理で何が変わる？

引用元：[https://news.ycombinator.com/item?id=44012227](https://news.ycombinator.com/item?id=44012227)




{{<matomeQuote body="この提案はマジ「あんたの関数何色？」問題っぽいな。非同期関数の区別がSymbol.dispose/asyncDisposeとかDisposableStack/AsyncDisposableStackみたいに、また機能に入り込んでくるんだよね。<br>JavaがVirtual Threads（JEP 444, JDK 21）選んだのは正解だと思うわ。JVM側で複雑さ引き受けて、開発者とかの負担減らしたんだから。" userName="nayuki" createdAt="2025/05/17 17:47:09" color="#38d3d3">}}




{{<matomeQuote body="俺は反対だな。asyncを隠す方が、コード読むときに分かりにくくなると思う。<br>破棄が非同期なのか、ネットワークの問題とかに影響される可能性があるのかどうか、知りたいんだよ。" userName="jupp0r" createdAt="2025/05/17 18:05:36" color="#ff5c5c">}}




{{<matomeQuote body="React Suspenseがasynchronyをどう隠してるか（fibers使ってね）見てみ。Next.jsとゴチャゴチャしてるけど、なんでReact SuspenseがPromises使わないか（sebmarkbageのgithub issueにあったよ）っていう元の考え方は、結構説得力あるから。" userName="swyx" createdAt="2025/05/18 02:45:40" color="#ff5c5c">}}




{{<matomeQuote body="（前のコメントを受けて）説得力？ あれはひどいよ。Promise解決まで待つんじゃなくて、実行をスローして、解決したらまた最初から実行とか繰り返すんだ。<br>あれは、フック呼び出しとコンテキストを関連付けるためにグローバルなものを使うっていうハック。全部同期的にやるためで、もしpropsでコンテキスト渡せてたら、async/awaitやGenerator Components使えたのにね。" userName="notnullorvoid" createdAt="2025/05/18 04:08:33" color="#ff33a1">}}




{{<matomeQuote body="それ論点のすり替えだよ。関数の引数とか戻り値の型を全部シグネチャに入れて、呼び出すたびに手で書くべきだって言うのと同じ理屈じゃん。バカバカしいだろ。<br>非同期の状態は型システムが追跡して、IDEでホバーしたら分かるべき。構文に入れるべきじゃないし、関数を複製したり問題起こす理由には絶対ならないよ。" userName="throw10920" createdAt="2025/05/20 10:21:03" color="#785bff">}}




{{<matomeQuote body="はっきりさせとくけどさ…。これは関数色を新しく導入してるわけじゃないんだよね。<br>君が指摘してるのは、単に元からある関数色の影響であって、Symbol.disposeとSymbol.asyncDisposeがあるってことだけだよ。<br>Symbol.iteratorとSymbol.asyncIteratorがあるのと同じさ。" userName="paulddraper" createdAt="2025/05/18 04:58:09" color="#ff5733">}}




{{<matomeQuote body="それって`async`への批判であって、`using`への批判じゃないよね？<br>私の理解が正しければ、これって関数を今まで以上に色付けしてるようには見えないんだけど。" userName="bla3" createdAt="2025/05/18 02:21:45" color="">}}




{{<matomeQuote body="これはね、普通の実行と非同期関数が別々の閉じたデカルト圏っていうのを作ってて、それを明示するかどうかの言語設計の話。全ての関数には色（特定の圏で表現できるってこと）があるんだよ。<br>圏論はスレッド以外にも強力。Javaみたいなスレッドベースだと同期が難しい。JSはモノイド圏、継続渡しで表現できるものに限定されてる感じ。" userName="anon291" createdAt="2025/05/17 19:34:48" color="#ff5c5c">}}




{{<matomeQuote body="最近の言語で「同期からでも非同期起こりうるから全部asyncで書け」みたいなのがマジうざい。うまく解決してるのはPurescriptくらい。Eff（同期）とAff（非同期）をターゲットにして呼び出し時に決められるから。<br>構造化並行性は良いけど、この構文努力はそれより、サーバーで複数のリクエスト捌くみたいなembarassingly parallelな作業のためって印象だな。" userName="rtpg" createdAt="2025/05/17 21:01:14" color="#ff5c5c">}}




{{<matomeQuote body="マジそれな。Virtual threads、structured concurrency、scoped valuesは良い機能だよ。" userName="dingi" createdAt="2025/05/18 03:16:45" color="">}}




{{<matomeQuote body="素のJavaScriptだと、型がダックタイピングだから、Promiseだろうが結果だろうが関係ないんだよね。この柔軟性で”色問題”もうまく回避できる。問題は、完全にダックタイピングな言語に無理やり型システムを全部追加しようとしたり、async/awaitをコンパイル言語に雑に突っ込んだりした時だけだよ。" userName="timewizard" createdAt="2025/05/17 18:21:30" color="">}}




{{<matomeQuote body="TypeScriptなら君のシナリオの型付けも問題ないよ（少なくとも”素の”JavaScriptにない問題はないかな…値がPromiseだったらどうする？）。コンパイル言語もJavaScriptより困ってないし、むしろJavaScriptの方が問題少ないわけじゃない。色問題は構文レベルの問題なんだ！" userName="rtpg" createdAt="2025/05/17 20:54:44" color="">}}




{{<matomeQuote body="ただし、Promiseじゃないオブジェクトでもawaitできるんだ。元のオブジェクトがそのまま返ってくる。多くの型付け言語、例えばC#にはこの便利さはない。これがJavaScriptを際立たせてる。Promise.resolve()もPromiseならそのまま返す。実際の型を知らなくても、楽に色付けたり外したりできるよ。" userName="timewizard" createdAt="2025/05/17 23:54:49" color="#38d3d3">}}




{{<matomeQuote body="Promiseじゃないものをawaitしても同期実行にはならないんだよ。その後の行はマイクロタスクで実行される。このコードを実行してみて。<br>const foo = async () =＞ console.log(await ”foo”);<br><br>  foo();<br>  console.log(”bar”);<br>async関数は文字列リテラルをawaitしてるだけで、呼び出し元はawaitしてないのに、”bar”が先に表示されて、それから”foo”が表示されるはずだよ。" userName="jakelazaroff" createdAt="2025/05/18 06:59:55" color="#45d325">}}




{{<matomeQuote body="C#だと、`var t = Task.Run(() =＞ ExpensiveButSynchronous());`ってやって、後でそれを`await`するのを止められないわけじゃないよ。既知の長い処理を他のスレッドプールスレッドに任せるのは珍しくない。まさか、awaitできない型を文字通りawaitするって意味じゃないよね…それはどんな静的型付け言語でも意味不明じゃない？" userName="neonsunset" createdAt="2025/05/18 07:13:16" color="">}}




{{<matomeQuote body="JVMでどう実装されてるか分からないけど、一般的にマルチスレッドってめちゃくちゃ理解するの難しいよね。落とし穴（競合状態、デッドロックとか）について本が書けるくらい。それに比べたら、シングルスレッドのasyncプログラミングなんて楽勝だよ。”関数色”の問題に取り組む方が、マルチスレッドアプリの再現性の低いバグをデバッグするよりずっとマシだね。" userName="olalonde" createdAt="2025/05/17 21:01:44" color="#38d3d3">}}




{{<matomeQuote body="ErlangみたいなメッセージパッシングによるShare-nothingなら、マルチスレッドはかなり扱いやすくなる。ぶっちゃけ楽しいとさえ言える。Asyncはシンプルなタスクには良い構文だけど、大きな構造やエラー処理を扱うと辛くなる。明示的なスレッド処理より、何が起きてるか理解するのが難しいと感じるよ。" userName="pton_xd" createdAt="2025/05/17 22:12:51" color="">}}




{{<matomeQuote body="＞Asyncはシンプルなタスクには良い構文だけど、より大きな構造を組んだりエラー処理とかを扱ったりすると、そのシンプルさは崩壊する。<br>具体的な例ある？ async/awaitになってからは、自分にとっては問題になったことないんだよね（まあ、コールバック地獄はひどかったけど）。" userName="olalonde" createdAt="2025/05/17 22:26:30" color="">}}




{{<matomeQuote body="Multithreadingってほとんどの言語で似たようなもんだから、これもそうだと思ってたんだよね。あんたのコメントでちょっと不安になって、仕様書見直したわ。そしたら、やっぱり元々思ってた通りの標準的なMultithreadingだったわ。" userName="olalonde" createdAt="2025/05/18 18:50:39" color="">}}




{{<matomeQuote body="実装と、実際にどう見えるか（ observable behaviour ）は別の話だよ。" userName="afiori" createdAt="2025/05/19 08:09:07" color="">}}




{{<matomeQuote body="マジかよ。<br> const defer = f =＞ ({ [Symbol.dispose]: f })<br> using defer(() =＞ cleanup())<br>これ、今気づいたわ。当たり前だろって思った人には”お疲れ様”だけど、それでも言っとく価値ある気がしたんだよね。" userName="mst" createdAt="2025/05/17 13:02:47" color="">}}




{{<matomeQuote body="ユースケースによっては DisposableStack や AsyncDisposableStack が便利だよ。これらは using proposalの一部で、コールバック登録機能がある。using はブロックスコープだから、条件付きやスコープを超える登録にはスタックが必要なんだ。詳しいコード例付きで解説してるよ。関数の最後にクリーンアップしたい場合も、スタックを使う方法があるんだ。" userName="masklinn" createdAt="2025/05/17 13:32:36" color="#ff33a1">}}




{{<matomeQuote body="DisposableStack.move() の目的って何？ 収集した .defer() コールバックを現在のスコープから完全に外に出すのに使えるの？ 例えばコールスタックを遡るとか。呼び出し元のコンテキストで .defer() コールバックを全部スタックするために DisposableStack を引数で渡す方が簡単じゃない？" userName="MrResearcher" createdAt="2025/05/18 01:30:57" color="">}}




{{<matomeQuote body="そうそう、他のどこにでも移動できるよ。constructor でリソースを確保するクラスでのユースケースはこれ:<br> class Connector {<br> constructor() {<br> using stack = new DisposableStack;<br> // Foo and Bar are both disposable<br> this.foo = stack.use(new Foo());<br> this.bar = stack.use(new Bar());<br> this.stack = stack.move();<br> }<br> [Symbol.dispose]() {<br> this.stack.dispose();<br> }<br> }<br>この例だと、constructor の途中でエラーが出たら、それまでに確保したリソースがクリーンアップされるようにしたい。でも成功した場合は、インスタンス自体がクリーンアップされるまでリソースはクリーンアップされないようにしたいんだ。" userName="bakkoting" createdAt="2025/05/18 03:20:38" color="#ff5733">}}




{{<matomeQuote body="DisposableStackを引数で渡す方法だと、エラー時に解放されない問題があるんだ。だから代わりにローカルスタックを使って、成功時に親や他のオブジェクトに .move() するのが良いよ。こうすると、エラー時はローカルスタックが解放されて、成功時は所有権が移る。これは RAII やエラー時deferみたいな挙動を実現する方法なんだ。具体的なコード例も複数紹介してるよ。" userName="masklinn" createdAt="2025/05/18 07:51:02" color="#38d3d3">}}




{{<matomeQuote body="（スニペットの const local は using local であるべきだよ）" userName="masklinn" createdAt="2025/05/18 11:35:57" color="">}}




{{<matomeQuote body="これについて去年記事書いたんだ。記事のURLも貼っとくね。 .move() の話は、作業中の DisposableStack をそのまま渡すと関数終了時に勝手に破棄されたり、エラー時にリソースが漏れたりする問題を解決するんだ。 .move() でスタックを”生け贄”みたいに使えるようにして、エラー時は自動破棄、成功時は中身を安全に移動できるようにするんだよ。" userName="MrJohz" createdAt="2025/05/18 05:49:45" color="#785bff">}}




{{<matomeQuote body="golangみたいじゃん。いいね。" userName="mattlondon" createdAt="2025/05/17 16:34:13" color="">}}




{{<matomeQuote body="これめっちゃ良いアイデアなんだけどさ、＞ Integration of [Symbol.dispose] and [Symbol.asyncDispose] in web APIs like streams may happen in the future ってあるように、しばらくは一部のAPIしか対応しない状況が続くと思うんだ。<br>そうなると、”using”とtry/catchを混ぜるか、全部try/catchで書くかってなるけど、後者の方が分かりやすくて「実用的じゃない」って評判になっちゃうのが心配。せっかく良い機能なのに、もったいないよね。" userName="xg15" createdAt="2025/05/17 11:54:13" color="#ff33a1">}}




{{<matomeQuote body="JavaScriptでは新機能が普及するまでいつも時間かかるんだよね。Babelみたいなコンパイラ→言語仕様→NPMやブラウザAPIって流れで、3〜4年かかることもザラ。古いデバイス対応を考えるとさらに待つ必要も。でも開発者はweb API周りに小さいラッパー書くのには慣れてるし、個人的には有用そうな新機能で使いにくいと思ったことはないかな。" userName="jitl" createdAt="2025/05/17 14:44:08" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="実際、たくさんのライブラリが既にpolyfillを使って対応してるよ。NodeJSのバックエンドとかはかなり前から効果的に使えてるんだ（トランスパイラがあればね）。去年のリサーチでSymbol.dispose対応APIの多さに驚いたよ。フロントエンドでは独自の仕組みがあるから少ないだろうけど、テストライブラリとかで役に立つと思う。バックエンドでの普及が進んでるから、それも時間と共に進むと思うな。" userName="MrJohz" createdAt="2025/05/17 14:59:19" color="#45d325">}}




{{<matomeQuote body="この機能に対応してないAPIでも、DisposableStackを使えば”using”を使えるよ。DisposableStackにリソースを登録すれば自動でクリーンアップしてくれるんだ。try/catchよりまだシンプルだし、特にリソースが複数ある場合はね。だから、既存のリソースがアップデートされるのを待たなくても、ランタイムが新しい構文に対応し次第すぐに採用できるんだ。" userName="bakkoting" createdAt="2025/05/17 21:37:23" color="#785bff">}}




{{<matomeQuote body="これってJavaScriptの世界だとだいたいpolyfillで解決されるんじゃないの？" userName="berkes" createdAt="2025/05/17 12:10:18" color="">}}




{{<matomeQuote body="自分は結構Symbolベースの機能を自分で使ってるJSライブラリに追加してるよ（名前付きメソッドはリスク高いけどね）。クラスを継承してSymbolメソッドを追加するみたいなやり方だね。これでヤラかしたことはまだないけど、まあ保証はできないよ。でも今のところすごくうまくいってる。" userName="mst" createdAt="2025/05/17 12:56:07" color="">}}




{{<matomeQuote body="元のクラスにSymbolメソッド直接追加するより、SomeStreamClass_にsomeSymbolがもうあるかチェックして、あったら例外出すとか警告ログ出すとかすれば、もっと良くなるかもね。" userName="berkes" createdAt="2025/05/22 14:27:01" color="#785bff">}}




{{<matomeQuote body="元のクラスにSymbolメソッド直接追加するより、ずっといいね。:p" userName="sroussey" createdAt="2025/05/17 15:43:34" color="">}}




{{<matomeQuote body="だからTC39はプロトコルみたいな根本的な言語機能に取り組む必要があるんだよ。Rustだと、新しいtraitを定義して既存の型にimplできるじゃん。これでも欠点はあるけど（orphan ruleは問題を防ぐけど肥大化を招く）、ユニークなSymbol機能がある動的な言語なら、何かを思いつくのはきっともっと簡単だろうな。" userName="spion" createdAt="2025/05/17 12:11:38" color="#ff5733">}}




{{<matomeQuote body="Dynamic languageならプロトコルいらないんじゃね？<br>既存のオブジェクトを”conform to AsyncDisposable”に合わせるなら、<br> `function DisposablImageBitmap(bitmap) { bitmap[Symbol.dispose] ??= () =＞ bitmap.close(); return bitmap }`<br> `using bitmap = DisposableObserver(createImageBitmap(image))`<br>みたいにすればいいし、ImageBitmap全部をDisposableに合わせるなら`ImageBitmap.prototype[Symbol.dispose] = function() { this.close() }`<br>ってすればいい。でもこれって”trait conformance”がグローバルに漏れて危ないんだよね。他のコードと衝突したり。プロトコルだとこれどうなるの？" userName="jitl" createdAt="2025/05/17 14:52:46" color="#38d3d3">}}




{{<matomeQuote body="モジュールシステムを使えばプロトコル実装をスコープに入れられるかもね。これでmonkey-patching問題解決できるかもよ。でもかなり新しいアイデアだし、TC39はリスク回避型、ブラウザ側は機能回避型だし、言語も複雑で面白いアイデアのほとんどに問題が出ちゃうんだよね。" userName="spion" createdAt="2025/05/17 21:57:03" color="#38d3d3">}}




{{<matomeQuote body="resize observerの切断ってこの機能の例として微妙じゃない？" userName="someothherguyy" createdAt="2025/05/17 15:04:18" color="">}}




{{<matomeQuote body="「しばらくは一部のAPIとかライブラリだけ対応する状況になる」って？まぁウェブなんてそんなもんだよ、ようこそ（笑）JavaScript 1.1の頃からずっとこんな感じ。欲しいものにはshims使って、後で言語になったりさ。" userName="TheRealPomax" createdAt="2025/05/17 16:25:53" color="">}}




{{<matomeQuote body="C#を思い出すねぇ。C#のIDisposibleとかIAsyncDisposibleって、ロック処理とかキューの仕組み、一時的なスコープとか、本来ならちゃんと抽象化すべきことをうまく書くのにすごく役立つんだよ。" userName="havkom" createdAt="2025/05/17 08:55:36" color="">}}




{{<matomeQuote body="それって提案してる人がMicrosoftの人だからだよ。C#と違う構文にする提案を何度も却下してるらしいよ。https://github.com/tc39/proposal-explicit-resource-managemen... 他にもいくつかリンクあるね。" userName="pwdisswordfishz" createdAt="2025/05/17 10:41:08" color="#ff5c5c">}}




{{<matomeQuote body="そしてその人、最近レイオフされちゃったみたいだよ。https://news.ycombinator.com/item?id=43978589" userName="Zacru" createdAt="2025/05/18 02:36:01" color="">}}




{{<matomeQuote body="これさ、基本的にC#から持ってきたようなもんだよ。元の提案書でも隠してなくて、Pythonのcontext managersとかJavaのtry with resources、C#のusing statementsとかusing declarationsとか、全部参考にしてるって書いてるんだよね。`using`がキーワードで`dispose`がフックメソッドなのがもうかなり大きなヒントだろ？" userName="masklinn" createdAt="2025/05/17 10:37:57" color="#45d325">}}




{{<matomeQuote body="JavaScriptの後方互換性は分かるけど、[Symbol.dispose]()って構文がすごく変に見えるんだよね。これって配列なのに関数みたいに呼ばれてて、配列の中にメソッドのハンドルが入ってるみたい。この構文ってなんて呼ばれるの？もっと詳しく知りたいな。" userName="vaylian" createdAt="2025/05/17 14:07:42" color="">}}




{{<matomeQuote body="dynamic keys（オブジェクトリテラルで[ ]を使うやつ）って10年近く前からあるし、メソッドのショートハンドもあるよ。Symbolは文字列でアクセスできないから、これらを組み合わせるんだ。だから、基本的に新しい構文じゃないんだよね。" userName="zdragnar" createdAt="2025/05/17 15:01:10" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、iterableなコレクションを作ってる人にはおなじみだよ。クラス宣言とかオブジェクトリテラルで同じdynamic keyの構文を使うんだけど、そのときはSymbol.iteratorっていうWell-known Symbolをメソッドに使うんだよね。" userName="a4isms" createdAt="2025/05/17 17:26:23" color="#45d325">}}




{{<matomeQuote body="他の人は「何を」説明してるけど、「なぜ」この構文なのか誰も答えてないみたいだね。メソッド名にSymbolを使うことで、既存のメソッドと明確に区別できるんだ。つまり、文字列じゃなくてSymbolをメソッド名に使うことで、この新しいAPIの名前衝突を防いで、うっかりクラスがdisposeable扱いされちゃうのを避けられるんだよ。" userName="mceachen" createdAt="2025/05/17 16:57:29" color="#ff5733">}}




{{<matomeQuote body="これが一番重要な理由だね！" userName="whizzter" createdAt="2025/05/18 05:07:11" color="">}}




{{<matomeQuote body="多分dynamic property accessかな？ 基本的にオブジェクトのプロパティにはいつも[ ]を使ったインデックス構文でアクセスできるんだ。だからobject.fooはobject[”foo”]とかobject[”f” + ”o” + ”o”]と同じなんだよ。 普通、[ ]の中のキーは文字列に変換されるんだけど、Symbolだけは例外で、そのままキーとして使えるんだ。 最後のポイントは、特定の”well known symbols”があること。Symbol.disposeもその一つなんだよ。" userName="MrJohz" createdAt="2025/05/17 14:42:36" color="#ff33a1">}}




{{<matomeQuote body="それは違うと思うな、オブジェクトリテラルでのdynamic keyだよ。 例えばこんな感じ。<br>const key = ”foo”;<br>const obj = { [key]: ”bar” };<br>console.log(obj.foo); // ”bar”が出力される" userName="cluckindan" createdAt="2025/05/17 15:19:03" color="#785bff">}}




{{<matomeQuote body="前の人が言ってるのも確かに可能だしよく使うんだけど、最初の質問で言ってた構文はオブジェクトリテラルの中じゃなくて、オブジェクトのプロパティにアクセスするときの話だと思うな。前のコメントが長くなりすぎそうだったから言わなかったけどね。でも、うん、オブジェクトリテラルでプロパティを設定するときとか、クラスの中でも似た構文があるよ。" userName="MrJohz" createdAt="2025/05/17 17:45:46" color="#ff33a1">}}




{{<matomeQuote body="詳しい人がもっと教えてくれると思うけど、多分こういうやつ（<br>const x = { age: 42 };<br>x[Symbol.name] = ”joe”; // これ<br>）から派生したんじゃないかな。だから結構理にかなってるんだよね。" userName="homebrewer" createdAt="2025/05/17 14:16:47" color="#ff5733">}}




{{<matomeQuote body="この構文って結構前から使われてるんだよ。JavaScriptのイテレーターも同じ構文を使ってて、もう10年近くJavaScriptの一部なんだ。" userName="ff2400t" createdAt="2025/05/17 14:54:07" color="">}}




{{<matomeQuote body="それって記法の話だよ。<br>コードが obj.function() なら<br>function() って書いてるだけ。<br>obj[Symbol.dispose]() なら<br>[Symbol.dispose]() って書いてるだけだよ。<br>Symbol.disposeはシンボルキーさ。" userName="paulddraper" createdAt="2025/05/18 05:01:14" color="">}}




{{<matomeQuote body="obj[Symbol.dispose]() を [Symbol.dispose]() って書いてる」<br>じゃあ obj[Symbol.dispose]() と [Symbol.dispose]() は同じってこと？<br>なんか変じゃない？<br>obj2とかobj3とかもあるかもしれないじゃん。<br>[Symbol.dispose]() が特定のオブジェクトを指してるって、JavaScriptはどうやって見分けてるの？" userName="vaylian" createdAt="2025/05/18 05:25:03" color="">}}




{{<matomeQuote body="[Symbol.dispose]ってのは Symbol.dispose の値がキーになるプロパティを作るやり方で<br>obj[Symbol.dispose] はそれにアクセスする方法さ。<br>カッコはメソッド定義のショートカットだから<br>[Symbol.dispose]: function()<br>って書くより短いだけ．<br>ブラケットはね、元々JSは foo: bar みたいにキーを”foo”って文字列にしてたのを<br>変数 foo の値をキーにしたい時に [foo]: bar って書くために導入されたんだよ．" userName="masklinn" createdAt="2025/05/19 08:18:11" color="#45d325">}}




{{<matomeQuote body="const o = {}<br>  o[”foo”] = function(){}<br>  o[”foo”]()<br>  let key = ”foo”<br>  o[key]()<br>  key = Symbol.dispose ?? Symbol.for(’dispose’)<br>  o[key]()<br>  o[Symbol.dispose]()" userName="90s_dev" createdAt="2025/05/17 15:52:27" color="#ff5733">}}




{{<matomeQuote body="オブジェクトのプロパティアクセスじゃないかな．<br>myObj[”myProperty”] みたいに．<br>もし関数なら呼び出せる、myObj[”myProperty”]()．<br>キーがシンボルなら、myObj[theSymbol]() って感じだよ．" userName="Kalabasa" createdAt="2025/05/17 14:22:13" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="きっとさ、彼らが聞いてたのは<br>動的なプロパティ名の { [thing]: ... } って書き方のことだと思うよ．" userName="TheRealPomax" createdAt="2025/05/17 16:24:38" color="">}}




{{<matomeQuote body="リソース管理、特にレキシカルスコープが効く時の管理ってさ、<br>structured concurrency をJSに持ち込もうとしてる人たちがいる理由なんだよ．<br>詳細はこちらを見てね → https://bower.sh/why-structured-concurrency<br>structured concurrency を使ったライブラリもあるよ → https://frontside.com/effection" userName="qudat" createdAt="2025/05/17 13:32:09" color="#ff5733">}}




{{<matomeQuote body="いやマジで、こんなコード書いてる人が<br>プログラムの実行をどうやって理解したり制御したりしてるのか<br>全然わかんないわ<br>async (() =＞ (e) {<br> try { await doSomething();<br> while (!done) { ({ done, value } = await reader.read()); }<br> promise<br> .then(goodA, badA)<br> .then(goodB, badB)<br> .catch((err) =＞ { console.error(err); }<br> catch { } <br> finally { using stack = new DisposableStack();<br> stack.defer(() =＞ console.log(”done.”)); }<br>});" userName="0xCE0" createdAt="2025/05/17 11:13:33" color="">}}




{{<matomeQuote body="JS界隈ときたらさ、変数が数値か判定するだけのパッケージ作った奴がいて<br>しかもそれが超使われてるんだぜ．<br>ある面ではここまで進歩してるのに<br>パラメータ型みたいに基本的なのがまだ無いのって<br>俺にはマジで信じられないわ！" userName="stephenr" createdAt="2025/05/17 12:49:20" color="">}}




{{<matomeQuote body="言語で食っててさ、その言語のキーワードの意味とかに慣れてれば<br>わかるんじゃないの？<br>みんな自分の好きな言語を理解してるのと同じだよ．<br>Haskellで食ってる人もいるんだしね．" userName="gavinray" createdAt="2025/05/17 11:49:22" color="">}}




{{<matomeQuote body="JSでまじめに開発してんなら、ほとんどTypeScriptで書いてるっしょ。" userName="chrisweekly" createdAt="2025/05/17 13:32:56" color="">}}




{{<matomeQuote body="Web開発ってさ、誰も望んでない”アップグレード”が9割、そのせいで起きた問題の修正が1割なんだよ。<br>たまーに昔書いたコードとか理解する必要あるけど、そんなのは新人の”登竜門”としてとっとけばいーの。<br>それまではIE6とか使って何とかしてもらうのが一番てっとり早いワークアラウンドだねｗ" userName="snickerbockers" createdAt="2025/05/17 11:59:35" color="">}}




{{<matomeQuote body="分かりにくいんじゃなくて、密度が高いんだよ。<br>Factorの例で言うと、<br>`2 3 + 4 * .`<br>って書かれてると、<br>`(2 + 3) * 4`<br>より頭の中で処理するのが大変なんだ。<br>Rob Pikeがシンタックスハイライトを批判するのと似てるけど、俺にはすっげー便利だよ。<br>速く読めるようになる。<br>単語の最初と最後だけ見て推測で速く読むのと同じ原理で、タイポにすら気づかないことあるもんね。" userName="90s_dev" createdAt="2025/05/17 16:29:56" color="">}}




{{<matomeQuote body="まず、君のコードは構文エラーひどすぎて、ValidなJSからほど遠いよ。<br>推測で修正してみたのがこれ。<br>```javascript<br>(async (e) =＞ {<br>  await doSomething()<br>  while (!done) {<br>    ({ done, value }) = await reader.read()<br>  }<br><br>  promise<br>    .then(goodA, badA)<br>    .then(goodB, badB)<br>    .catch(err =＞ console.log(err))<br>    .finally(() =＞ {<br>      using stack = new DisposableStack()<br>      stack.defer(() =＞ console.log(’done.’))<br>    })<br>})()<br>```<br>でもそれ以前に、まともなJS開発者ならこんなコードは絶対書かない。<br>1. awaitとwhile(!done)を混ぜるなんて普通じゃない。<br>2. Async IIFEの中ならPromiseチェーンは不要。<br>3. よくできたJSライブラリはPromiseハンドラを積まない。<br>4. Async IIFE自体、もう普通いらないよ。" userName="90s_dev" createdAt="2025/05/17 13:05:49" color="#ff5733">}}




{{<matomeQuote body="JSってめちゃくちゃになってるように見えるけど，Pythonだってひどいのあるしね．JSの構文はもともとイケてないし，機能増えるとどんどん複雑になるのはしょうがないよ．標準ライブラリもないから，色々グローバルに散らばるし，PHPみたい．新しいC#も初心者にはさっぱり分からない魔法の呪文みたいで，読むのも追うのも大変．JSは成長してモダンなことできるようになったのは素晴らしいけど，初期の作りがアレだから，新しい機能が取ってつけたみたいで，初心者にはハードル高いんだよね．エンタープライズ言語になっちゃって悪い面も出てきた．もうみんなが簡単に習得できる言語だとは思えないってことだよ．" userName="mrweasel" createdAt="2025/05/17 17:01:22" color="#785bff">}}




{{<matomeQuote body="どうしてそう思う？<br>前コメント（GP）がJSには型がないって文句言ってたでしょ．俺は，ほとんどのJSはTSで書かれてるから，実際には型を使ってるメリットがあるって言ったんだよ．”真のスコットランド人”論法でもないよ．" userName="chrisweekly" createdAt="2025/05/17 19:19:00" color="">}}




{{<matomeQuote body="Forthって，オペランドが＋から何百もの単語を挟んで離れちゃう，devilishな書き方ができちゃうんだよね．例えば「2 ．．．． たくさんの単語 ．．．． ＋」みたいに．これは「．．．． たくさんの単語 ．．．． 2 ＋」みたいにオペランドが近くにある方がずっと読みやすいでしょ！Forth書くなら後者みたいに，計算結果に簡単な操作を適用するスタイルが良いよ．いつもできるか分からないけど「．．．複雑な分子．．． ．．．複雑な分母．．． ／」みたいな場合もあるしね．" userName="kazinator" createdAt="2025/05/17 22:28:49" color="">}}




{{<matomeQuote body="それ，型を言語に追加するべきだって，もっと強い理由になるね．" userName="stephenr" createdAt="2025/05/17 13:56:18" color="">}}




{{<matomeQuote body="要約するとさ：<br>＞＞ JSは進歩したけどまだ型がないし，そんな基本的なものがない言語で真面目なプログラミングするのはおかしいみたいだね<br>＞＞ JSでの真面目なプログラミングはTypeScriptでやるんだよ" userName="cluckindan" createdAt="2025/05/17 22:22:34" color="">}}




{{<matomeQuote body="＞ 現代C#の一部も混乱してるメスだ<br>何か例ある？" userName="neonsunset" createdAt="2025/05/17 18:28:58" color="">}}




{{<matomeQuote body="＞ ．．．複雑な分子．．． ．．．複雑な分母．．． ／<br>そう，だからForthでは短い「単語」を使うべきなんだよ．複雑な部分は，短くて自己完結してる，分かりやすい名前の単語に切り出すべきで，そうするとコードが読みやすくテストしやすくメンテしやすくなる．例えば：<br>じゃなくて：<br>： compute-numerator a b ＋ c d ＋ ＊ ；<br>： compute-denominator e f ＋ g h ＋ ＊ ；<br>： compute-ratio compute-numerator compute-denominator ／ ；<br><br>ほとんど（全部じゃないけど）のForthの本にもこう書いてあるよ．" userName="johnisgood" createdAt="2025/05/18 11:30:52" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
