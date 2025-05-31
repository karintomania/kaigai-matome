+++
date = '2025-05-24T00:00:00'
months = '2025/05'
draft = false
title = 'なぜ代数的効果なのか？'
tags = ["代数的効果", "プログラミング", "エラー処理", "制御フロー", "プログラミング言語"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> なぜ代数的効果なのか？

引用元：[https://news.ycombinator.com/item?id=44078434](https://news.ycombinator.com/item?id=44078434)




{{<matomeQuote body="デメリットが2つあるね。このコード snippetを見て：<br>    my_function （）： Unit can AllErrors ＝<br>      x ＝ LibraryA．foo （）<br>      y ＝ LibraryB．bar （）<br><br>まず、fooやbarが失敗する可能性があるって示唆がない。型シグネチャを見るかIDEでホバーしないと、これらの呼び出しがエラーハンドラーを呼ぶかもしれないって分からない。次に、fooやbarが失敗すると分かったとして、失敗したときに実行されるコードをどう見つけるんだ？呼び出しスタックを”with”式が見つかるまで遡って、それからハンドラーに入る必要がある。そしてこれは静的にはできないんだ（IDEは定義にジャンプできない）。なぜならmy_functionは複数の場所から呼ばれる可能性があって、それぞれ別のハンドラーを持つからだ。これは本当にすごいコンセプトだと思うけど、可読性／デバッグ性の点で大きな懸念があるな。" userName="nemo1618" createdAt="2025/05/24 04:48:21" color="#38d3d3">}}




{{<matomeQuote body="＞ The first thing to note is that there is no indication that foo or bar can fail<br>これはまさにポイントの一部だと思うよ。直接スタイルでシンプルに書けて、effectsのコンテキストを全く気にしなくていいんだ。<br>＞ how do you find the code that will run when they do fail<br>AFAIU、これもポイントだよ。effectsがどう扱われるかの特定の実行から抽象化できるんだ。失敗した時に実行されるコードは、いつそれを実行したいか決める時に後で決定される。ちょうど、”f ： g：（A ー＞ B） ー＞ t（A） ー＞ B”で、gが実行された時に実行される”その”コードを見つける方法がないのと同じようにね。なぜなら、私たちはgの任意の特定の実行に対して抽象化しているからだ。" userName="abathologist" createdAt="2025/05/24 05:43:30" color="#ff5c5c">}}




{{<matomeQuote body="＞ ［…］ how do you find the code that will run when they do fail？ You would have to traverse ［…］<br>僕は．NETの世界で働いてて、多くの開発者が”インターフェースを何でもやる”っていう悪い癖があるんだ、たとえ具体的な実装が1つだけでもね。DTOsにさえそうする人もいる。”実装に移動”すると、インターフェースの宣言に行き着いて、そこにたどり着くには追加の手間がかかる。そして、実装が別のアセンブリにある場合は運が悪くなる。IDEは直接参照なら逆コンパイルできるけど、見つけてはくれない。運が悪い時は、デバッグしてステップインする必要があるね。<br>でも、これが依存性注入コンテナの話になる。より強力なもの（例えばAutofac）は階層的なスコープを確立できて、新しいスコープは登録を（再）定義できる。LISPの動的にスコープされる変数に似てるね。実行時にサービスが何に解決されるかは、現在のDIスコープ階層に依存する。<br>これがポイントだ： effectsがある程度、”ISomeEffectHandler”のインスタンスをクラス／メソッドに注入して、そのメソッドを呼び出してeffectを引き起こすことでシミュレートできるって気づいたんだ。effectがどう扱われるかは、”ISomeEffectHandler”の現在のDI登録によって決まって、それはプログラム全体で動的に変えられる。<br>だから<br>    void DoSomething（…） ｛<br>        throw SomeException（…）；<br>    ｝<br>って書く代わりに、”IErrorConditions”インターフェースを通じてエラープロトコルを確立して<br>    void DoSomething（IErrorConditions ec， …） ｛<br>        ec．Report（…）；<br>    ｝<br>って書くんだ。（代わりに、クラスメンバーとして注入してもいい。）これで、現在インストールされている”IErrorConditions”の実装は、throwしたり、ログを出したり、何でもできる。yieldみたいなもので、この考え方を完全に追求したわけじゃないけどね。" userName="zvrba" createdAt="2025/05/24 06:08:51" color="#ff5c5c">}}




{{<matomeQuote body="例外（ハッピーパスを直接スタイルで書く、など）に似てるけど、例外には”catch”があるよね。それを見つけて別のパスを見ることができる。<br>effectsのコンテキストを素早く見つけたりナビゲートしたりする良い方法はなんだろう？IDE／LSPが色を変えるとか、そういうのを期待すべきかな？" userName="nine_k" createdAt="2025/05/24 05:55:11" color="#ff5733">}}




{{<matomeQuote body="＞ I work in a ．NET world and there many developers have this bad habit of ”interface everything”， even if it has just 1 concrete implementation<br>僕も似たようなJavaバックエンドで働いてるけど、Intellij IDEAは賢くて、テストじゃない実装が1つだけならそのソースコードに連れて行ってくれるよ。" userName="SkiFire13" createdAt="2025/05/24 07:17:30" color="">}}




{{<matomeQuote body="effectsにも”catch”みたいなのがあるんだ、effectハンドラーね。そしてそれは”catch”とすごく似てて、関数ローカルじゃなくて、呼び出しコードのどこかにあるんだ。だから関数を見てて、その関数の例外がどう扱われるか知りたいなら、呼び出し元のコードを見る必要があるんだよ。" userName="MrJohz" createdAt="2025/05/24 06:11:23" color="#ff5733">}}




{{<matomeQuote body="Javaにはあまり詳しくないけど、．netではこれをやるとき、実装が別のassembly、別のプロジェクトの一部にあるのがすごく一般的だよ。" userName="vrighter" createdAt="2025/05/24 14:03:07" color="">}}




{{<matomeQuote body="＞ there is no indication that foo or bar can fail<br>これは、代数的effectsを批判してるんじゃなくて、単にtry-catchスタイルのエラーハンドリングを批判してるだけみたいだね。<br>まあ、コールサイトで例外が発生する可能性が示されない、この種のエラーハンドリングが好きじゃないっていうのは全然正当だよ。でも、それはプログラミング言語の大多数から見て後退してるわけじゃない。それに、それにはいくつかの明確な利点もあるんだよ。" userName="wavemode" createdAt="2025/05/24 06:19:37" color="#ff33a1">}}




{{<matomeQuote body="JavaScriptのような言語では、throwする可能性のある関数呼び出しは全く見分けがつかない。Goでは、失敗する可能性のある関数を呼び出すのは明示的で、エラーを伝播させるだけで3行のボイラープレートが必要だ。それは多すぎるみたいだね。Rustには’?’演算子があって、ボイラープレートは1文字だ。<br>ノイズを追加するけど、effectsを使う関数呼び出しを示すのに1文字のボイラープレートは適切な量に思えるね。effectsをたくさん使う関数は、おそらくすべての関数呼び出しにこの文字があるだろうけど、それはそれがトリッキーなコードだって良い指標になると思うよ。" userName="skybrian" createdAt="2025/05/24 14:53:47" color="#ff5733">}}




{{<matomeQuote body="＞ no indication that foo or bar can fail ．．． how do you find the code that will run when they do fail<br>もしあなたが探しているのがそれなら、私のHaskell effectsライブラリBluefinを試してみるといいかもしれない（それは”代数的”effectsライブラリじゃないけどね）。同等のコードはこうなるだろう：<br>    myFunction ： e ：＞ es ー＞ Exception String e ー＞ Eff es r<br>    myFunction ex ＝ do<br>      x ＜ー LibraryA．foo ex<br>      y ＜ー LibraryB．foo ex<br>      z ＜ー LibraryC．foo<br>      …<br><br>これは最初の質問に答えてる：”ex”引数（Exception String handle）の存在は、それが使われる場所でString値の例外がthrowされうることを示してる。例えば、LibraryC．fooはその例外をthrowしないってわかるね。<br>これは2番目の質問にも答えてる：失敗時に実行されるコードは、Exception String handleを作成したコードそのものだ。そのhandleから発生する例外は、常にhandleが作成された場所でcatchされて、他の場所ではない。例えば、ここかもしれない：<br>    try $ ＼ex ー＞ do<br>        v ＜ー myFunction ex<br>        …<br><br>”try”は例外をcatchしてHaskellのEither型のLeftブランチに変える。あるいはここかもしれない：<br>    myFunction ： e ：＞ es ー＞ Exception String e ー＞ Eff es r<br>    myFunction ex ＝ do<br>      catch<br>        （＼ex2 ー＞ do<br>          x ＜ー LibraryA．foo ex<br>          y ＜ー LibraryB．foo ex2<br>          z ＜ー LibraryC．foo<br>          …）<br>        （＼errMsg ー＞ logErr errMsg）<br><br>だからLibraryB．fooによってthrowされた例外は常にlogErrで扱われて（他の場所ではない）、LibraryA．fooによってthrowされた例外は、exを作成したより上位の例外ハンドラーによって扱われる（他の場所ではない）。<br>どう思うか教えてね！" userName="tome" createdAt="2025/05/24 12:35:56" color="#785bff">}}




{{<matomeQuote body="＞ And this cannot be done statically (i.e. your IDE can’t jump to the definition), because my_function might be called from any number of places, each with a different handler.ってとこだけど、代数的効果のキモの一つとして、これスタティックにできるんじゃないかなと思うよ。IDEが呼び出し元にジャンプするのと基本的には同じ感じで、候補がいくつか表示されて、そこから見たい呼び出し元とかハンドラを選べる、って仕組みだよ。" userName="MrJohz" createdAt="2025/05/24 05:27:56" color="#38d3d3">}}




{{<matomeQuote body="でもそれって、インターフェースが必要になるってこと？それでコンポーネントを別々にコンパイル（してリリース）できる、と。僕は.net使わないけど、これってRustで言うクレート分けとか、Cで言うコンパイルユニット分けに似てるね。それは良いプラクティスだよね、よくあることだけど。" userName="cweld510" createdAt="2025/05/24 14:30:30" color="">}}




{{<matomeQuote body="＞ how do you find the code that will run when they do fail?って質問だけど、そこがポイントで、これはダイナミックなコード注入なんだよね。シャローバインディングとかディープバインディングとか、他のダイナミックな機能みたいに使えるよ。ダイナミックってのは、呼び出し元とかそのまた呼び出し元のコールフレームによってバインディングが決まるってこと。だから、まあ概念的にはスタックを辿ることになるね。<br>＞ And this cannot be done statically (i.e. your IDE can’t jump to the definition),<br>そうそう、これは”ダイナミック”な機能だからね。でも、気にしなくていいはず。なんでかって言うと、君は効果を発動させるだけで、それ以外はピュアなコードを書いてるから。その効果が文脈によってピュアにもインピュアにもなりうるんだ。だから、本番環境でコードを使って、テストではモックに切り替える、みたいなことができる。モックは実際のI/O効果とは違う効果を間に挟むだけだ。これって要するに依存性注入だよ。これ、普通のMonadでもできるって知ってた？Monadの方がずっとスタティックな機能だけど、使ってるMonadがどこでインスタンス化されてるか探すには、やっぱりコールスタックをずっと遡らないといけないんだ。つまり、こういうテクニックからはメリットも得られるけど、代償も払うってこと。メリットと代償はコインの裏表だね。コード注入でテストとかサンドボックス化ができるけど、その代わりに何が起きてるのか分かりにくくなるんだ。" userName="cryptonector" createdAt="2025/05/24 07:00:34" color="#45d325">}}




{{<matomeQuote body="効果がジェネレーターとかコルーチンも実装できるくらい強力だって考えると、単なる例外以上のものみたいだね。一部の関数呼び出しがタスクスイッチしたり、任意の計算をしてから、後で任意のタイミングで返ってくる、なんてこともありうる。どの関数呼び出しがそういうことをする可能性があるのか知れたら便利かもね。僕はJavaScriptの’await’の動作が好きじゃないんだ、付け忘れると微妙なバグになるから。でも、一部の関数呼び出しはシンプルで即時返るけど、そうじゃないものもある、っていう基本的な考え方は分かるよ。" userName="skybrian" createdAt="2025/05/24 15:08:39" color="#38d3d3">}}




{{<matomeQuote body="エラーをローカルで処理せずに呼び出し元に伝播させる場合って、いつもこうなるよね。たぶん、ほとんどのケースがそうじゃないかな。" userName="naasking" createdAt="2025/05/24 15:22:21" color="">}}




{{<matomeQuote body="RustとかGoのエラーって、’副作用’っていう意味ではあんまり効果的じゃないんだよね。ただの関数の普通の戻り値だよ。Resultとか他のEnum返すのと全然変わらない。一方、panicは効果的で、そういうのが効果システムで捉えたい類のものだね。" userName="empath75" createdAt="2025/05/24 15:21:45" color="#ff5733">}}




{{<matomeQuote body="まあね、JavaScriptの普通の同期関数だって、時間のかかる計算をいっぱいしたり、タイマー開始とかDOM操作とか、効果を発動させたりするじゃん。そういうのもキーワードで示すべき？awaitはコードの中で何かデカいことが起きてるっていう良いヒントだけど、結局限られてるし、かなり不透明だよね。代数的効果に対するIDEのサポートが充実したら、効果をインラインヒントで表示してくれるとか、たぶんいいね。" userName="brokencode" createdAt="2025/05/24 16:56:46" color="#ff5c5c">}}




{{<matomeQuote body="確かに、効果システムがある言語なら、エラー処理に効果を使うことになるだろうから、エラーハンドリング手法の比較はする価値があると思うよ。Goは’期待される’エラーには単一の基底型（interface）を使って、普通はキャッチされないエラーにはpanicを使う。これって二つの違う効果になるのかな？’期待される’エラーについては、関数呼び出しに何らかのアノテーションがあった方が便利そうだね。" userName="skybrian" createdAt="2025/05/24 18:26:07" color="#ff5733">}}




{{<matomeQuote body="それは確かにインターフェースが必要だってことを示唆してる可能性があるけど、単にプロジェクトで働いてるみんなが、すでに確立されてるイケてない慣習に盲目的に従ってるだけ、ってこともよくある話だよ。" userName="mystifyingpoi" createdAt="2025/05/24 17:46:52" color="">}}




{{<matomeQuote body="かっこいいね！’代数的’効果と’非代数的’効果の区別がちょっと分かりにくいんだけど。どういう意味か、簡単に例えてくれないかな？あと、Bluefinでは他のHaskellの効果ライブラリとはちょっと違う方向性（効果を型じゃなくて値として扱う）を取ってるって知ってるんだけど、それってこの区別と関係ある？" userName="itishappy" createdAt="2025/05/24 15:27:36" color="#ff5c5c">}}




{{<matomeQuote body="＞ However, you are expected not to care. Why? Because you’re writing pure code but for the effects it invokes, but those effects could be pure or impure depending on context.Does that work out in practice? Genuinely curious if anyone has experience with such systems at scale or in legacy applications where the original authors left long ago. I’m skeptical because in my experience not everything is or can be designed perfectly pure without abstraction leakage. At some point you need to understand all the behavior of a certain sub-system and the less clever the design is the easier that becomes in my experience.”<br>これって実践でうまくいくの？ 大規模システムとか、作者がもういない古いアプリでこういうシステムを使った経験ある人いたらマジで知りたい。完璧にピュアな設計って抽象化の漏れなくできるのかなって懐疑的だよ。経験上、あるサブシステムの挙動全部を理解する必要が出てくる時があるし、デザインが賢すぎない方がそれって簡単なんだよね。" userName="Voultapher" createdAt="2025/05/25 07:50:49" color="#ff5733">}}




{{<matomeQuote body="ちょっと文法が分かりにくいから確認したいんだけど、どっちのケースが一般的だと思ってる？ ほとんどの場合、エラーって投げられた場所じゃなくて、そこから数レイヤー上がったとこで処理されるんじゃないかな。" userName="MrJohz" createdAt="2025/05/25 05:12:26" color="">}}




{{<matomeQuote body="これって、新しいIDE機能のいいアイデアになるかもね。特定の効果に対するハンドラを持ってる呼び出し元だけリストアップする機能とか（関数の名前じゃなくて、効果の名前でコンテキストメニュー出した時に）。" userName="HelloNurse" createdAt="2025/05/24 17:31:49" color="">}}




{{<matomeQuote body="僕の考えでは、効果って例えばエラーがログされる関数とかに実装されるんじゃないかな。<br>でもエラー値がローカルなままであれば、関数は他の条件が同じならまだピュアでいられる。panicみたいな例外を投げるコードはそうじゃない。普通の制御フローから外れて、スタックを巻き戻しながらエラーが”パンチ”してくるみたいだからね。グローバル状態に投げられるのにちょっと似てるかも。<br>だからもしpanicを副作用のある操作と考えるなら、Go言語を変えて、panicを既知の関数シグネチャを持つ副作用として明示的に宣言する必要が出てくる。副作用のリストを関数シグネチャの一部にすると、完全に可視化できていいと思う。それが後方互換性にどう影響するんだろうね。" userName="aatd86" createdAt="2025/05/24 19:15:58" color="#ff33a1">}}




{{<matomeQuote body="「only those」ってどういう意味？ 効果のある関数を呼び出す側は、何らかの方法で効果を処理しなきゃいけないでしょ。それをさらにチェーンの上流に伝播させる可能性もあるし。君が言ってるのは、エフェクトハンドラを定義してる呼び出し元（親とか祖父母とか）にジャンプするIDE機能ってこと？" userName="codethief" createdAt="2025/05/25 02:04:01" color="">}}




{{<matomeQuote body="ちょっと脱線だけど、TypeScriptで作業する時（そんなに頻繁じゃないけど、もしかしたら何かトリック見落としてるかも）、これがマジでうざいんだよね。ライブラリ関数の定義を確認しようとクリックすると、ライブラリがTypeScriptで書かれてる場合でも、型定義だけの`.d.ts`ファイルに飛んじゃうことがすごく多いんだ。理想の世界ではライブラリ関数の実装なんて気にしなくていいはずだけど、世界は理想とは程遠いよね。" userName="deergomoo" createdAt="2025/05/24 20:20:42" color="">}}




{{<matomeQuote body="「.Net界隈でよくある」って言ったのは、それが盲目的に従われるアンチパターンみたいに見えるってことね。もし実装が一つしかないなら、僕的にはそれがもうインターフェースそのものだと思うんだ。" userName="vrighter" createdAt="2025/05/25 05:49:27" color="">}}




{{<matomeQuote body="イライラするのは、.NET標準ライブラリがまさにこういうことをやってるのに、気まぐれで理想よりはるかに少ないんだよね。ILoggerとかIProgress＜T＞がすぐに思いつくけど、IMemoryCacheもちょっと見方を変えれば”状態”効果だね。TimeProviderも代数的効果と考えられるかも。" userName="jiggawatts" createdAt="2025/05/24 07:52:26" color="#785bff">}}




{{<matomeQuote body="エフェクトシステムがある言語だと、DOMいじるのも効果になるんだろうね。asyncみたいに呼び出しサイトを注釈つけるべき効果と、DOM操作みたいにつけない効果があるのかな？ API設計の問題っぽいね。何にextra attention（特別な注意）を向けさせたいかによるんじゃない？" userName="skybrian" createdAt="2025/05/24 18:35:48" color="#785bff">}}




{{<matomeQuote body="可読性の問題はLSPで仮想テキスト表示すりゃ解決できんじゃね？<br>２つ目の点はよく分かんないなー。もし静的にエラーハンドラを特定できるなら、そもそもエラーにする理由なくね？直接ハンドラ呼べばいいだけじゃん。<br>Result型返すのと一緒じゃんか。呼び出し元がどう処理するか分かんないのは変わらねーよ。" userName="YmiYugy" createdAt="2025/05/24 12:28:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="代数的効果が「再開可能な例外」って言うけど、ApplicativeErrorとかMonadError type classと具体的にどう違うの？<br>効果を「投げる」のがchecked exceptionsみたいってのは、MonadErrorの`raiseError`のことだろ。<br>handle式で「捕捉する」ってのは、まさにMonadErrorの`handleError`とか`handleErrorWith`のことじゃんか。<br>代数的効果が「明日の言語で人気爆発」って言うけど、MonadErrorはもう今日の言語で人気だよ。https://typelevel.org/cats/typeclasses/applicativemonaderror... ここ見てみ。" userName="AdieuToLogic" createdAt="2025/05/24 03:58:44" color="#ff33a1">}}




{{<matomeQuote body="ApplicativeErrorとかMonadErrorとどう違うって？<br>単一のエフェクトだけならあんま変わんないかもね。<br>でも複数のエフェクトを同時に使うときは、モナドをネストするより代数的効果の方が扱いやすいよ。モナドのネストは順序決めたり、関数の戻り値に合わせてモナドのセットや順序を変えたりするのが面倒だからさ。" userName="SkiFire13" createdAt="2025/05/24 08:53:47" color="#ff5733">}}




{{<matomeQuote body="モナドのネストが順序決めたり並べ替えたり面倒って話だけど、mtl-style（HaskellのMonadErrorとかが出てるやつね）は、順序とかハンドラを決めるのを、実際に処理するところまで遅らせるのがまさに目的なんだよ。<br>俺はHaskellの話してるけど、Scalaでもたぶん一緒だと思うな。" userName="tome" createdAt="2025/05/24 12:48:17" color="#ff5733">}}




{{<matomeQuote body="Haskellでのmtlと代数的効果（freer-simple）は表現力同じ。違いはmtlは効果ごとに新しい型クラスとn^2インスタンス要るけど、代数的効果はデータ型１個と糊付け関数だけでOK。<br>代数的効果が「和」で合成（可換）されるのに対し、transformerは非可換だからmtlはインスタンスで対応する必要があるって代数的な理由があるんだ。<br>このおかげでカスタム効果をサクッと作れるし、ハンドラでIOまで精錬できる。<br>mtlだと標準モナドクラスしか使わなくなり、ドメイン意味を覚えるのが面倒だったな。" userName="gylterud" createdAt="2025/05/24 22:26:22" color="#ff5c5c">}}




{{<matomeQuote body="モナドとエフェクトは、ライバルというよりは計算コンテキストについて考える補完的なアプローチとして見るのが多分一番良いと思うよ。<br>例えば、https://goto.ucsd.edu/~nvazou/koka/padl16.pdf とか見てみて。" userName="abathologist" createdAt="2025/05/24 05:49:13" color="#785bff">}}




{{<matomeQuote body="同じリンクが二回貼られてるよ" userName="gre" createdAt="2025/05/24 13:45:11" color="">}}




{{<matomeQuote body="発表資料と論文がさらに2つあるよ。https://goto.ucsd.edu/~nvazou/koka/ ここに。" userName="HelloNurse" createdAt="2025/05/24 17:35:27" color="#ff5733">}}




{{<matomeQuote body="代数的効果は限定継続の領域にあって、プログラムスタック上で動くんだよ。<br>どんなモナドの小細工を使っても、コールスタックを5レベル遡ってエフェクトハンドラに即座にジャンプしたり、そのスタックフレームのローカル変数を更新したり、また5レベル戻って実行を再開したりなんてことは、モナドじゃできねーのさ。" userName="davery22" createdAt="2025/05/24 04:53:25" color="#785bff">}}




{{<matomeQuote body="まったく逆だよ。それ、まさに継続モナドができることなんだ。<br>ContTとかfreerみたいにね。あれらはRTSスタックじゃなくて、スタックをシミュレートしてるんだ。<br>RTSスタックを使うeffとかbluefin-algaeもあるよ（bluefin-algaeは開発中）。<br>だからHaskellでは、モナドが限定継続の正しいAPIなんだ。<br>関連リンク: https://www.stackage.org/... https://hackage.haskell.org/... https://github.com/... https://hackage.haskell.org/..." userName="tome" createdAt="2025/05/24 12:43:41" color="#ff5c5c">}}




{{<matomeQuote body="デバッグ、クソ悪夢じゃん。gotoみたいだけど、ラベルすら要らない感じ。" userName="grg0" createdAt="2025/05/24 05:05:27" color="">}}




{{<matomeQuote body="” gotoみたいだけどラベルいらない<br>それって例外のことじゃん。でもEffectsはエラーでデカいスタックトレースが見えないんだよ。だって、Effectと期待される値を提供すればコードはそのまま動き続けるのがポイントだからね。" userName="cryptonector" createdAt="2025/05/24 07:02:22" color="">}}




{{<matomeQuote body="”” gotoみたいだけどラベルいらない<br>” それって例外じゃん<br>多くの場面では同意だけど、ここの違いは例外は一方向の実行制御の移行ってこと。<br>元々の話（どんなMonadテクニックでも5レベル上にジャンプしてローカル変数いじって、また5レベル下に戻るなんてできない）を思い出して。<br><br>”5レベル上の呼び出しスタック”にジャンプして状態変えて、また”5レベル下”に戻るってのは、俺からすると推論するのが悪夢だってことそのものだね。" userName="AdieuToLogic" createdAt="2025/05/27 02:45:26" color="#ff5c5c">}}




{{<matomeQuote body="まあ、ハンドラが正しいデータを受け取るか、そしてどう処理するかをテストするんだよ。テストでこういうハンドラを提供できるのが便利なんだ。Effectsはマジ最高だよ！" userName="vkazanov" createdAt="2025/05/24 06:31:28" color="">}}




{{<matomeQuote body="CLOSのCondition systemがまさにそれだって言われてて、みんなそれ好きみたいだよ。あと、この種の非局所的なスタック/ツリーのリバインディングはPrologを実装する一つの方法だと思う。" userName="agumonkey" createdAt="2025/05/24 10:11:11" color="#ff33a1">}}




{{<matomeQuote body="” ApplicativeErrorやMonadError[0]型クラスを使うのとどう違うの？<br>静的か動的かの違いだと思う。<br>MonadプログラミングだとMonadに関連メソッド全部実装しなきゃだけど、Effectsなら動的にハンドラをインストールして、今のハンドラを必要なとこで上書きできるんだ。<br>この二つを組み合わせるのも便利そうだよね。例えば、テストやサンドボックス用に独自のIO互換Monadを使って、その下にEffectsハンドラ置いても...それでも、そのIOライクなMonadしか呼ばないようにできるとか。" userName="cryptonector" createdAt="2025/05/24 04:39:39" color="#ff5733">}}




{{<matomeQuote body="” Effectsだと動的にハンドラをインストールして、今のハンドラを必要なとこで上書きできるんだ。<br>それ、mtl-styleでもできるよ。ただ、ちょっと不格好だけどね。" userName="tome" createdAt="2025/05/24 12:46:24" color="">}}




{{<matomeQuote body="けっこう似てるけど、使い勝手（ergonomics）が違うね。代数的効果は、ある種の”free” monadテクニックに似てるけど、組み込み版って感じ。組み込みだから、しばしばより良いシンタックスと合成性があるんだ。<br>Monadicアプローチに合った言語（Haskellが代表例）なら同じことできるけど、型クラス推論（mtlみたいな合成性）やHaskellのdoとかScalaのforみたいな組み込みbind構文があると便利だよね。" userName="tel" createdAt="2025/05/24 16:52:58" color="#ff5733">}}




{{<matomeQuote body="面白いね。詳しい説明ありがとう。<br>この問題カテゴリに関連するScala特有のテクニックに、関数型スタイルのAOP[1]メカニズムを提供するStackable Trait Pattern[0]を使う方法があるよ。注意深くやれば、Effects（Aspects）は特定のロジックから独立して定義できるし、証明可能な呼び出し順序で合成できる。<br>引用した参照は、このスレッドを読んでる人向けであって、話しかけてる相手に必須ってわけじゃないよ。<br>0 - https://www.artima.com/articles/scalas-stackable-trait-patte...<br>1 - https://en.wikipedia.org/wiki/Aspect-oriented_programming" userName="AdieuToLogic" createdAt="2025/05/27 01:51:35" color="#ff33a1">}}




{{<matomeQuote body="ごめん、Haskellの”monad transformer library”のことね。複数のmonadic effectを組み合わせる初期のアプローチの一つだよ。代数的効果システムと結構似てて、(Error m, Nondet m, WithState App m) =＞ m () みたいな型で、エラー処理や非決定性、App型のstateにアクセスできる計算だって示せるんだ。いくつか欠点はあるけど、代数的効果の使いやすさの80パーセントくらいはHaskellで手軽に実現できる結構シンプルな方法だよ。" userName="tel" createdAt="2025/05/24 21:19:45" color="#45d325">}}




{{<matomeQuote body="HaskellのMonadErrorに関しては、少なくとも結構似てるよ。でも、mtl-styleにはeffect systemにはない問題点がいくつかあって、それはeffectfulの作者がhttps://hackage.haskell.org/package/effectful の”What about mtl?”ってとこで詳しく説明してるね。" userName="tome" createdAt="2025/05/24 12:49:34" color="#ff5733">}}




{{<matomeQuote body="＞ they actually enjoy popularity in programming languages today<br>あれはScala FPの一部の人たちの間で人気があっただけだよ。<br>広く人気があるわけじゃない。だって、複雑さが増したり、デバッグが難しかったり、すぐに理解しにくかったり、リソースをめっちゃ使ったりとか、許容できないほどの欠点があるからね。あれを使ってアプリをいくつも作ったけど、ROIは全くなかった。<br>だからOderskyでさえ、コンパイラにそのまま入れずに、GearsとかCapabilitiesみたいなもっとシンプルで直接的な方法で同じ結果を得ようとしたんだよ。" userName="threeseed" createdAt="2025/05/24 06:39:14" color="">}}




{{<matomeQuote body="よく分かんないんだけど、これってdelimited continuationとも関係あるの？" userName="anon-3988" createdAt="2025/05/24 04:17:02" color="">}}




{{<matomeQuote body="うん、例えばhttps://github.com/ocaml-multicore/ocaml-effects-tutorial を見てみて。" userName="tempodox" createdAt="2025/05/24 04:36:09" color="">}}




{{<matomeQuote body="それってただの実装詳細でしょ。effect自体がそれを実装するのにdelimited continuationsを_要求する_なんてことはないと思うよ。" userName="cryptonector" createdAt="2025/05/24 07:03:41" color="">}}




{{<matomeQuote body="multishot continuationsを使いたいなら、delimited continuations以外の方法（undelimeted continuationsとか、heap上でdelimited continuationsをシミュレートするとか以外で）は、正直知らないな。" userName="tome" createdAt="2025/05/24 12:45:27" color="">}}




{{<matomeQuote body="なんでハンドラってeffectを呼び出した場所から呼ばれたみたいに動いて、そしたら戻れないの？<br>それはさておき、質問に答えると、delimited continuationsの他に代替手段はあるよ。それはundelimited continuations。これは基本的に呼び出しフレームをheap上に確保する必要があるけどね。" userName="cryptonector" createdAt="2025/05/24 16:09:31" color="">}}




{{<matomeQuote body="ハンドラは「仕事をする、計算を再開する、終わる」みたいなパターンに従う必要はないんだ。<br>その代わりに「仕事をする、計算を再開する、もっと仕事をする」みたいなこともできる。<br>もっと踏み込むと、「計算をどっかにしまっておく、ハンドラから戻る、プログラムの残りがしばらく動く、それから計算を再開する」なんてこともできるんだよ。" userName="Rusky" createdAt="2025/05/24 16:21:34" color="#45d325">}}




{{<matomeQuote body="＞ Why can’t the handler be invoked as if it was called from the effect invocation site, then return?<br>そしたら、それはただの関数呼び出しと（等価に）なっちゃうよ。" userName="tome" createdAt="2025/05/24 20:58:23" color="">}}




{{<matomeQuote body="そうだよ．Multishot resumption for algebraic effects は delimited continuations で実装されてるんだ．" userName="iamwil" createdAt="2025/05/24 22:43:38" color="">}}




{{<matomeQuote body="静的型システム嫌いだけど、古いdynamic Effの記事[1]で型なしの代数的効果を知って興味持った．Andrej Bauerの”parameterised operation with generalised arity”と俺のabstraction algebra[2]のアイデアが似てて面白い．代数的効果はabstraction algebraを言語化するのに使えそう．<br>[1] https://math.andrej.com/2010/09/27/programming-with-effects-...<br>[2] http://abstractionlogic.com" userName="practal" createdAt="2025/05/24 07:34:13" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="静的型システムの何が悪いの？" userName="nicoty" createdAt="2025/05/24 07:44:15" color="">}}




{{<matomeQuote body="静的型システムについての意見はこちら: https://doi.org/10.5281/zenodo.15118670<br>普通の言語では必要悪だけど、論理では不要で複雑にするだけ．型の代わりに項を使えばいい．論理での型は不変式表現の時期尚早な最適化．" userName="practal" createdAt="2025/05/24 08:49:31" color="#785bff">}}




{{<matomeQuote body="俺は論理学者じゃないけど、述語とその代数の方が、型ってものを記述するのにもっときめ細かくて普遍的な方法ってこと．．．つまり名前が問題なの？" userName="agumonkey" createdAt="2025/05/24 10:06:50" color="">}}




{{<matomeQuote body="イエスでもあり、ノーでもあるね．イエス、述語はもっと柔軟だよ．例えば（一階の）一階述語論理みたいに、数学的な宇宙全体にわたって適用できるからね．ノー、名前は問題じゃないよ．述語だって名前を持てるんだから．" userName="practal" createdAt="2025/05/24 10:15:35" color="">}}




{{<matomeQuote body="個人的にはTLA＋に型が欲しい．TLA＋は論理だよね？ abstraction logic とどう違うの？ TLA＋でよく使う TypeOK 述語はどんな型システムより表現力あるけど、中間値の間違いに気づきにくい問題がある．同じ分野の新しいプロジェクト Quint には型があるよ．" userName="_flux" createdAt="2025/05/24 09:20:39" color="#45d325">}}




{{<matomeQuote body="じゃあ、名前が問題じゃないなら、普通の静的型システムの問題は、ユーザー定義の型を操作したり／組み合わせたりして、表現の行き詰まりを避ける方法がないってこと？" userName="agumonkey" createdAt="2025/05/24 12:09:47" color="">}}




{{<matomeQuote body="x ： ℝ と y ： ℝ のとき、x ／ y の型は何？" userName="practal" createdAt="2025/05/24 15:30:29" color="">}}




{{<matomeQuote body="あなたの型定義は単純すぎでカテゴリーエラーだよ（curry-howard見て）．”時期尚早な最適化”は型システムの話なら”有用な形式化の最善の努力”だよ．ALは型を廃止じゃなく、同じ制約を別形式に移すだけ．あなたは型と呼んでないだけで使ってるよ．" userName="frumplestlatz" createdAt="2025/05/24 09:15:29" color="#ff33a1">}}




{{<matomeQuote body="タイプってのはさ，領域とか現実世界の意味のためにあるんだよね．人間の言葉の曖昧さをなくしたり，人間が話す時に当たり前だと思ってる文脈を明確にしたりするんだ．でもロジックって抽象的じゃん？<br>もしタイプシステムをホスト言語で表現できるようにすべきって意味なら，それ面白いね．なんかPrologみたいなのがどの言語にも埋め込まれてて，タイプアノテーションになるイメージ．そしたらめっちゃ柔軟になるけど，プログラマーにかなりの負担がかかるなぁ．<br>このアイデアって試されたことあるの？" userName="exceptione" createdAt="2025/05/24 09:38:54" color="">}}




{{<matomeQuote body="Abstraction Logic（AL）だとエラー値 ⊥ を使うんだ．引数が ⊥ だったり，戻り値が定義できない時に ⊥ を返す．例えば div 7 0 は ⊥ だし，plus 3 ⊥ も ⊥ だから，plus 3 （div 7 0） は ⊥ になるわけ．<br>TLA+でも多分できる．Definedっていう述語（Defined x は x ≠ ⊥ って意味）を証明しなきゃいけない感じ．" userName="practal" createdAt="2025/05/24 09:30:59" color="#785bff">}}




{{<matomeQuote body="実世界セマンティクスとしてのタイプはいいね，述語みたいに理解すればさ．タイプの代わりに述語を使うアイデアは何度も試されてるよ．主な問題点（だと思う）は，変数束縛をうまくやる方法がやっぱり必要で，それがタイプしか方法ないように見えるから，結局タイプを導入しちゃうってことなんだ．そしたら元のアイデアの意味なくない？<br>ALの良いところは，タイプを導入しなくても一般的な変数束縛の仕組みを持てるってことなんだよな．" userName="practal" createdAt="2025/05/24 10:00:04" color="">}}




{{<matomeQuote body="これ，抽象ラティス拡張をコンクリートセマンティクスのスーパーセットとして定義したみたいだけど，そういう分析は Cousot ＆ Cousot の Abstract Interpretation に完全に含まれてると思うよ．AIは静的タイプいらないしね．<br>プログラムの振る舞いを高速にチェックするためにやってるわけだ．<br>全体を動的に移しても新しいことある？ Lisp は昔からタグ付けてチェックしてるじゃん？" userName="thechao" createdAt="2025/05/24 12:40:15" color="">}}




{{<matomeQuote body="Curry-Howardへの言及はリンクにあるかもだけど，ALにとっては全然重要じゃないよ．型の人たちが関係なくても持ち出すんだよね．<br>ALにはタイプはないんだ．ロジックへのアプローチを全部curry-howardに還元しようとするのが，還元主義的な見方じゃない？" userName="practal" createdAt="2025/05/24 09:45:14" color="">}}




{{<matomeQuote body="ALがIsabelle/HOLのメタ理論的インフラを再発明してるように見えるって？それは型理論から完全に決別したっていうより，型理論でよく知られたアイデアの記法の変更みたいだね．<br>何を見落としてるかな？" userName="frumplestlatz" createdAt="2025/05/24 11:16:25" color="">}}




{{<matomeQuote body="”abstract lattice extension” なんて定義してないよ．こんなシンプルなことにラティスを知る必要ある？便利なDefined述語のための提案．例えば mul 0 ⊥ ＝ 0 と定義してもいいかもね．<br>ALは型理論に対するLispみたいなものかな（あくまでアナロジー）．" userName="practal" createdAt="2025/05/24 13:45:03" color="">}}




{{<matomeQuote body="システムが不変条件をエンコードして，項を制約して，形式的なルールで抽象化をサポートするなら，名前が好きだろうが好きじゃなかろうが，タイプの仕事をしてるんだよ．<br>Curry–Howardの，計算とロジックに対する基礎的で切り離せない関連性を無視したまま片付けるのは，反論になってないね．" userName="frumplestlatz" createdAt="2025/05/24 10:12:03" color="">}}




{{<matomeQuote body="このフォーラムでの君のやり取り，実践的なプログラミングを無視してるのが問題だね．現場のエンジニアが静的タイプを使うのは数学じゃなく”速くて形式的なチェック”．<br>タイプが好きじゃないと言っても，現場のエンジニアはそれが問題を解決したって知ってるよ．主張は現場経験に根ざすべきだ．シングルレベルは規模が大きいと実行時チェックがエラー多すぎる．<br>もし違うと思うなら，大規模なタイプ無しソフトウェア（OS，DB，ブラウザ）を持ってきて証明しなきゃ．できないなら，薄っぺらい形式主義で自己正当化してる，ただのアカデミックな大言壮語だよ．" userName="thechao" createdAt="2025/05/24 17:29:54" color="#ff33a1">}}




{{<matomeQuote body="Isabelleユーザーだけど、Isabelleとの類似性は偶然じゃないよ。Isabelleは結構よかったけど、メタロジックがITTじゃなくAbstraction Logicだったらもっと良かったと思うんだ。Abstraction Logicは意味論が単純で、ITTはそうじゃない。この単純さが実践で大事だと俺は賭けてるね。詳しくは俺のAbstraction Logicの本の118ページに書いたよ。<br>＞ 型理論の焼き直しだろって蔑むコメントを見るのは楽しいね（別のコメントは消したみたいだけど）。これは君のためじゃなく他の読者のために書いてるからさ。" userName="practal" createdAt="2025/05/24 14:52:35" color="">}}




{{<matomeQuote body="xとyの型って何なの？もしℝだったら、なんでx / yは*ℝ（超実数）型じゃないんだ？俺は普通のプログラマーで抽象論理とかはよくわかんないんだけど、ちょっと気になっちゃった。" userName="magicalhippo" createdAt="2025/05/25 01:51:59" color="">}}




{{<matomeQuote body="Curry-Howard、Curry-Howardって言うだけじゃ議論にならないだろ。型がこの仕事できないなんて言ってない。型がなくてもできるって言ってて、Abstraction Logicがその証明なんだ。まあ、一階述語論理でもできるけど、あれは一般的なバインダーがないからね。君は、この仕事は全部Curry-Howardだって言うけど、それは全然違うよ。Curry-Howardにはちゃんとした意味があるから、ちょっと調べてみたらどうだ？" userName="practal" createdAt="2025/05/24 10:24:15" color="">}}




{{<matomeQuote body="Curry-Howardは、証明に計算的な意味があるときに当てはまるんだ。Abstraction Logicみたいに、論理の中で計算とか抽象化をコード化するときだね。型みたいなことやっといて、名前変えただけなのに似てないって言うのは筋が通らないだろ。型システムなんていらないって言いながら、型システムを作ってるようなもんだよ。" userName="frumplestlatz" createdAt="2025/05/24 10:55:40" color="">}}




{{<matomeQuote body="x / 0だから未定義なんじゃない？ℝには無限大も含まれるでしょ。" userName="agumonkey" createdAt="2025/05/25 08:56:32" color="">}}




{{<matomeQuote body="＞ Always fun to encounter disparaging comments<br>型理論についてあんなに偉そうに言われたら、そりゃ誰だって疑うでしょ。なんで疑われるのか分からないなんて言ってるけど、そりゃ無理ないわな。" userName="frumplestlatz" createdAt="2025/05/25 17:00:56" color="">}}




{{<matomeQuote body="＞ At least TypeOK can be much more expressive than any type system.<br>それってどういう意味？Dependent typesとかRefinement types（F*みたいの）は、どんな述語でも組み込めるんだけど？" userName="deredede" createdAt="2025/05/24 10:15:48" color="">}}




{{<matomeQuote body="Abstraction Logicベースのプログラミング言語ってあるの？俺にはちょっと抽象的すぎて難しく感じるけど、なんか面白そうだな。" userName="cardanome" createdAt="2025/05/24 13:24:53" color="">}}




{{<matomeQuote body="強い意見だね！あと、君、俺がこれまでのやり取りをちゃんと読んでないみたいだね。俺がリンクした要約も読んでないだろ。読んでれば、今のプログラミング言語での型の使い方は完全に賛成だって分かるはずなのに。あれは軽量な形式手法（君が”速くて形式的なチェック”って呼んでるやつ）だからね。でも、俺たちはもっとずっと良くできると思うんだ。静的型がなくても、速くて形式的なチェックができるようになる。今日明日じゃないけど、きっと10年以内にはね。" userName="practal" createdAt="2025/05/24 18:02:08" color="">}}




{{<matomeQuote body="Hyperrealsでもx/0とか0/0の問題は解決しないよ。理由は、Hyperrealsにもゼロがあるから。何が言いたかったのか気になるけど、解決策はいくつか考えられるかな。1. 質問自体が不適切。2. 結果用に`undefined`とか無限大を値として加える。でもこれだと数学的に困ることが多い。3. 適当な実数で定義。ゼロ割りが定義されるように見えるけど、ほとんどの場面で使えないから意味ない。" userName="hansvm" createdAt="2025/05/25 11:32:54" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
