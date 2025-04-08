+++
date = '2025-04-01T00:00:00'
months = '2025/04'
draft = false
title = 'なぜF#を選んだ？Railsアプリ書き換えでHaskell、Scala、OCamlを蹴ってF#に決めた理由が納得すぎた'
tags = ["F#", "関数型プログラミング", ".NET", "言語比較", "開発"]
featureimage = 'thumbnails/purple4.jpg'
+++

> なぜF#を選んだ？Railsアプリ書き換えでHaskell、Scala、OCamlを蹴ってF#に決めた理由が納得すぎた

引用元：[https://news.ycombinator.com/item?id=43546004](https://news.ycombinator.com/item?id=43546004)

{{<matomeQuote body="F#はRuby on Railsアプリを書き換える時に最高の関数型言語だったんだよねー。HaskellとかOcamlとかScalaも見たけど。Microsoftテクノロジーは詳しくなかったから、F#は一番なさそうだったんだけど、一番の選択肢になったんだよね。Haskellの純粋さはちょっと難しくて、Ocamlのエコシステムはイマイチだったし。Scalaは複雑そうだったし…。F#は意外と簡単に始められたんだよね。コミュニティは корпоратив-mindedな感じだけど、メンバーはフレンドリーで賢くて助けてくれるよ。エコシステムも良くて、dotnetライブラリも使えるし。FsHttpとかFliとかwebsharperとか、良いライブラリやフレームワークもあるしね。マジでF#最高！" userName="raphinou" createdAt="2025-04-01T14:49:49" color="#ff5c5c">}}

{{<matomeQuote body="ちなみに、F#のslackはもう死んでて、コミュニティはDiscordに移行したみたいだよ。<br>https://discord.com/invite/fsharp-196693847965696000" userName="Lanayx" createdAt="2025-04-01T18:01:26" color="">}}

{{<matomeQuote body="ブログにも書いてないけど、Haskellの純粋さが難しかったってどういうこと？Haskellをプロダクションで使ってるけど、純粋さは気にならないな。ほとんどの関数はI/Oコンテキストにあるから、他の言語と変わらないし。" userName="kqr" createdAt="2025-04-01T15:30:20" color="">}}

{{<matomeQuote body="Haskellの純粋さに対するイメージが、始めた頃は難しかったなー。以前命令的に作ったプログラムをHaskellで書き直そうとしたんだけど、それがそもそもピュアなやり方じゃ難しくて。当時はzipersとかknot-tyingとか使って非効率的なことしてたけど、今は普通にやるかな。" userName="internet_points" createdAt="2025-04-01T21:04:22" color="">}}

{{<matomeQuote body="言語を選ぶ時って、簡単に手に入る情報とかから、これから起こりうる問題を推測したりするよね。Rescriptのobject typeが嫌で使わないって人もいたけど、Rescriptでobject typeなんて使わないし。IO monadとかも、使ったことないと想像しにくいし、影響がどれくらいあるかとかもわからないし。" userName="giraffe_lady" createdAt="2025-04-01T20:56:20" color="#45d325">}}

{{<matomeQuote body="＞You gotta remember people are often picking languages based on what they can easily find out about it and extrapolating/guessing about what problems they’ll run into with their expected use.”<br>それマジでそう思う。LispもSyntaxだけで拒否する人多いし。RescriptもReasonとJSの距離を縮めてJSデベロッパーを引きつけようとしたんだよね。" userName="fredrikholm" createdAt="2025-04-02T06:22:49" color="">}}

{{<matomeQuote body="もう6年前くらいだから覚えてないんだけど、Haskellを勉強し始めた時にそう思ったんだよね。今なら違う結論になるかも？わからん。=<<とか.とか$とかの特殊な演算子も理解するのが難しかった。F#の方がアプローチしやすくて、関数型のコンセプトを学べたんだよね。" userName="raphinou" createdAt="2025-04-01T15:41:58" color="">}}

{{<matomeQuote body="HaskellはIOとparityの違いとか、プログラミングの方法に影響を与えてくれたけど、複雑すぎて使いたくない。" userName="ninetyninenine" createdAt="2025-04-02T15:15:35" color="">}}

{{<matomeQuote body="ライブラリはどうなの？特定のmonadを使わされることない？" userName="blatantly" createdAt="2025-04-02T09:29:49" color="">}}

{{<matomeQuote body="使ってるライブラリはIOがベースになってるか、少なくともIOを許可してるから、liftIOでIOアクションできるよ。" userName="kqr" createdAt="2025-04-02T12:09:51" color="">}}

{{<matomeQuote body="Ruby on RailsからElixirに移った人が結構いたのに、なんで検討リストに入ってないの？　なんか理由ある？" userName="mike1o1" createdAt="2025-04-01T15:34:48" color="">}}

{{<matomeQuote body="メッセージで言うべきだったんだけど、強い型付けの言語を探してたんだよね。動的型付けの言語を愛用してたんだけど、Ruby on Railsのアプリが保守不能になっちゃって、原因の一つが動的型付けだったんだ。<br>静的型付けの言語なら、複雑なアプリでも長期的に保守しやすくなるかなと思って。そしたらマジでそうなって、もう動的型付けの言語で開発したくないレベル。<br>F#を学びながらライブラリ作ったんだけど、dotnetでasyncが主流なのを見逃して全部同期処理で書いちゃって。プロジェクトの半分くらいで気づいてasyncに切り替えたんだけど、動的型付けだったら地獄だったと思う。強い型のおかげで大規模なリファクタリングも自信を持ってできたよ。<br>アプリはオープンソースでここにあるよ: https://gitlab.com/myowndb/myowndb" userName="raphinou" createdAt="2025-04-01T15:52:56" color="#38d3d3">}}

{{<matomeQuote body="細かいことだけど、”強い型付け”と”静的型付け”は同じ意味じゃないよ。ここでは型システムの静的な性質に関心があるんだよね？　”強さ”とは違うものだよ。" userName="DonaldPShimoda" createdAt="2025-04-01T17:11:56" color="#785bff">}}

{{<matomeQuote body="マジでその通り。指摘ありがとう。" userName="raphinou" createdAt="2025-04-01T17:22:54" color="">}}

{{<matomeQuote body="どういたしまして！　じゃあね！" userName="DonaldPShimoda" createdAt="2025-04-01T18:37:58" color="">}}

{{<matomeQuote body="強い型付けと静的型付けについてもっと詳しく教えて！" userName="throwaway2037" createdAt="2025-04-02T08:19:43" color="">}}

{{<matomeQuote body="強い型付け：2 + ”2” はエラーになる(Pythonとか)。<br>静的型付け：2 + ”2” はコンパイル/パースできない(mypyとかTypescript)。<br>単純な例だけど、違いを感じてもらえるかな？" userName="baq" createdAt="2025-04-02T08:38:46" color="#ff33a1">}}

{{<matomeQuote body="＞static typing: 2 + ”2” does not compile/parse (e.g. Python vs mypy, Typescript vs JS)“<br>この例は正しくないと思うな。静的型付けは異なる型の値がどう相互作用するかに影響しないから。`2 + ”2”` が有効な式になる静的型付け言語は知らないけど、静的型付け言語は弱く型付けされる可能性があるよ。一番良い例はCで、明示的に型変換しなくても異なる型の値を組み合わせられる(`2 + 2.0`)。<br>強い/弱いと静的/動的は直交してると思う。例を挙げると：<br>・強い: `2 + ”2”` はエラー<br>・弱い: `2 + ”2”` は4になる<br>・静的: `var x = 2; x = ”2”` はエラー<br>・動的: `var x = 2; x = ”2”` はOK" userName="volemo" createdAt="2025-04-02T15:25:23" color="#ff5733">}}

{{<matomeQuote body="動的型付けでも後者(実行時)を禁止できるけど、実装によるね。潜在的型付けってのもあって、これは型が変数じゃなくて値に関連付けられる。<br>でも動的言語でも変数に型を関連付けて、最初にチェックした後に型が変わるのを禁止できる。" userName="sparkie" createdAt="2025-04-02T17:22:11" color="">}}

{{<matomeQuote body="＞But a dynamic language can have types associated with variables, and it can forbid changing those types after their types have been checked the first time.<br>それってC++の`auto`みたいな感じ？" userName="volemo" createdAt="2025-04-02T20:10:48" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="weak typingかー。2 + ”2”が22になっちゃうんだね。" userName="hoseja" createdAt="2025-04-02T10:32:23" color="">}}

{{<matomeQuote body="”4”とか4!もありえるね。4が一番たちが悪そうだけど。" userName="RUnconcerned" createdAt="2025-04-02T13:41:10" color="">}}

{{<matomeQuote body="一番ヤバいのはC言語かも。2+”22” = 0、4+”4” = 未定義の動作で、たぶん他の変数の値になっちゃう。" userName="pjc50" createdAt="2025-04-02T13:46:56" color="">}}

{{<matomeQuote body="＞”22”+2 = ””のことじゃない？2番目のポインタを作るのはUBじゃないよ、使うときだけ。" userName="manwe150" createdAt="2025-04-02T14:16:04" color="">}}

{{<matomeQuote body="最近はBEAM VM向けの強く型付けされた代替としてGleam[0]があるよ。まだ使ったことないけど、安全＋ミニマル＋生産性のスイートスポットに一番ハマりそう。(C言語風のsyntaxはちょっとイヤだけど、syntaxは言語の重要な側面じゃないしね。)" userName="tasuki" createdAt="2025-04-01T16:21:55" color="">}}

{{<matomeQuote body="Gleamは、BEAMをターゲットにしてる言語と同じように、F#に比べて1、2桁遅いよ。" userName="neonsunset" createdAt="2025-04-01T17:24:54" color="">}}

{{<matomeQuote body="魅力はruntime modelだよね。BEAM言語が本当に遅いのかどうかはすぐには確認できないけど、とりあえずそう仮定しよう。<br>遅いとしても、runtime modelはすごく柔軟で、スケールアップ・ダウンが安くて、hot updateも簡単だし、非同期処理もたくさんのprocessにまたがってすごく得意だよね。<br>F#もasync ergonomicsはすごく良いけど、同じようなtask/processingの柔軟性はないし、Websocketsはelixirとかerlangに比べるとちょっと面倒。" userName="no_wizard" createdAt="2025-04-01T18:41:36" color="#ff5733">}}

{{<matomeQuote body=".NETのSignalRはマジで良いよ。server[0]で強く型付けされたmessage hubが使えるし、client supportも広いし。web socketをscaleさせるためのinfrastructureを持ちたくないならAzure SignalR[1]もあるし。" userName="CharlieDigital" createdAt="2025-04-02T10:57:13" color="">}}

{{<matomeQuote body="Apache Spark、Delta LakeはScalaで書かれてるし。JVMベースだから、大きなecosystemもあるし。F#よりScalaの方が良い選択肢かもね。" userName="breadwinner" createdAt="2025-04-01T15:41:36" color="">}}

{{<matomeQuote body="良い選択肢になりえるのは確かだけど、俺にとってはそうじゃなかった。<br>Scalaとは相性が悪かったみたい。複雑な言語だって感じて、どうしても理解できなかったんだよね。<br>F#は評価の最初では最後の選択肢だったし、ScalaはJava ecosystemのおかげで上位だったんだけど、結局うまくいかなかった。<br>JVM上でF#が動けば最高なんだけどね！" userName="raphinou" createdAt="2025-04-01T15:58:04" color="#45d325">}}

{{<matomeQuote body=".NETで動くんだから、そりゃそうでしょ。小さいプラットフォームじゃないし。" userName="hurril" createdAt="2025-04-01T17:51:39" color="">}}

{{<matomeQuote body="基本的に全部OS上で動くし、そっちの方がもっと複雑じゃん。" userName="michaelcampbell" createdAt="2025-04-01T19:59:23" color="">}}

{{<matomeQuote body="F#ってScalaより習得簡単かな？ (Scalaは昔の2.x時代にちょっと触ったことあるけど、F#は全然知らない)" userName="flakiness" createdAt="2025-04-01T16:34:23" color="">}}

{{<matomeQuote body="JVMエコシステムでFPやるならClojureの方がいいと思うなー。Scalaの問題は、関数型とオブジェクト指向の両方をサポートしてるところ。Scalaで関わったコードベースは全部ごちゃ混ぜになっちゃって困るんだよね。でも最高の関数型言語は、もちろんElixir！ :D" userName="innocentoldguy" createdAt="2025-04-01T16:02:54" color="#ff5c5c">}}

{{<matomeQuote body="＞Every code base I've worked on in Scala has ended up being a hodgepodge of both<br>それって何か困ることある？Scalaのコードベースで働く中で、一番良いのはScalaのマルチパラダイムな性質を受け入れてるものだと思うな。OOで全部解決しようとするとレイヤーが増えちゃうし、FPで全部解決しようとすると高度なテクニックが必要になるし。OOの単純な部分とFPの単純な部分を組み合わせる方が、それぞれ単体でやるよりずっと良いと思う。何か違うこと見てきた？" userName="dkarl" createdAt="2025-04-01T17:00:20" color="#38d3d3">}}

{{<matomeQuote body="Elixirに強い型システムが入るのは面白いけど、Gleamにも注目だね。ただ、computation expressionsがないのが残念。https://github.com/CaptnCodr/Fli と https://github.com/fsprojects/FsHttp みたいな面白い可能性が開けるのに。" userName="raphinou" createdAt="2025-04-01T16:09:21" color="#785bff">}}

{{<matomeQuote body="Gleamはlispスタイルのマクロがないし、BEAMとOTPの実装も完全じゃないんだよね。例えば、Gleamはホットアップデートとか、完全な分散システムサポートとか、低レベルなプロセス操作とかをサポートしてない。静的型付けのためにBEAMとOTPのフルパワーを捨てるのはちょっと考えられないなー。" userName="innocentoldguy" createdAt="2025-04-01T16:27:30" color="#ff5733">}}

{{<matomeQuote body="今の俺の好みは、Elixirとその素晴らしいエコシステムをプロジェクトのシェルとして使って、コアなビジネスロジックをGleamで実装すること。" userName="felixyz" createdAt="2025-04-02T10:30:48" color="">}}

{{<matomeQuote body="Clojureも同じようにマルチパラダイムじゃないの？ もっとそうかも？" userName="michaelcampbell" createdAt="2025-04-01T20:00:04" color="">}}

{{<matomeQuote body="そうは思わないなー。関数型＋JVMへのブリッジって感じかな。言語自体にはそんなに多くのものはないし。関数型プログラミングが基本で、オブジェクトJVMのものをフックするためのツールがあるけど、それは言語の自然な流れじゃない。<br>Clojureはほとんど値と関数（といくつかのマクロ）でできてる。クラスとか継承とか情報隠蔽もない。プロトコルとマルチメソッドはあるけどね。良い感じに小さくてパワフルな言語だよ。" userName="lucyjojo" createdAt="2025-04-02T00:15:25" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="F#試したけど、.NETの環境が初めてだったんだよね。hello worldやるだけで、プロジェクトファイルとかボイラープレートがめっちゃ多くてビックリして、やる気なくなったわー。FPとかimmutableとかモダンな言語はマジで賛成なんだけど、仕事ないじゃん？いいコード書いたって評価してくれる会社どこだよ？今はみんなAIで使いやすい言語とか、人員削減とか、生産性アップとかばっか考えてるし。20年プログラミングやってて4～5言語できるけど、インドはもっとひどくて、EUならまだJavaとかTypeScriptで何とか生活できるレベル。Kotlin + TypeScriptですら良い給料の仕事見つけるの難しいのに、ElixirとかClojureとかF#なんて無理ゲー。 relocateすれば70K/yearくらいの仕事あるかもだけど。だからニッチな言語勉強するの諦めたんだよね。" userName="rockyj" createdAt="2025-04-01T13:08:29" color="">}}

{{<matomeQuote body="F#のシンタックスは、純粋なロジックだけやってる時はマジで好き。でも、データベースとかREST APIとかのI/O処理が必要になると、MLの美しいシンタックス捨てて、 computation blocksとかいうクソダサいやつ使わないといけないんだよね。C#ならこんな感じ。<br>    var post ＝ await _postService.getById(id);<br><br>F#だとこんな感じ。<br>    let getPostById id ＝ async {<br>        let! post ＝ blogPostService.getPostById id<br>        return post<br>    }<br><br>    let post ＝ getPostById 42 |> Async.RunSynchronously<br><br>でも実際は、RunSynchronouslyはawaitと同じじゃないんだよね。async computationの結果をちゃんと扱おうと思ったら、continuation作らないといけないし。F#だけじゃなくて、Ocamlとか他のML系の言語も同じ問題を抱えてる気がする。F#で非同期処理やる時のパターンは、だいたい以下のどっちか。<br>1．ロジックは全部MLシンタックスで書いて、最後にcomputation blockにデータを渡してI/O処理して、unitを返す。<br>2．C#みたいなTask<>を返して、I/O処理は全部C#でやる。<br>どっちにしても、ML系の言語は、俺らが普段やってるCRUDアプリみたいな商用アプリには向いてない気がするんだよね。" userName="shortrounddev2" createdAt="2025-04-01T14:34:32" color="">}}

{{<matomeQuote body="個人的には、C#よりCRUDアプリに向いてると思うけどな。どっちも書いたことあるし。シンタックスの比較も、C#のコードに必要になるラッパーとかボイラープレートを考慮してないからフェアじゃない。awaitはどこでも使えるわけじゃないし。async使う時は、どのcontextで実行するか指定する必要があるけど、これはTask/Asyncを現在のsync contextで実行したくない時に便利。最近は、C#みたいな挙動が欲しいならtask使うのが普通だし、custom F# CE'sでSyncContextのオーバーロードを減らすライブラリもある。<br>> The equivalent C# to your F# would be<br>＞”  task { return! _postService.getById(id) }”<br><br>これは意味ないし。postServiceからtaskを直接返せばいいじゃん。asyncを同期的に実行する必要もないし。Asyncはtask、thread、sync上で何度もロジックを実行できるから、taskとは全然違うモデル。<br>C#のコードをF#のコードと比較するには（taskは同じじゃないから厳密には違うけど）、メソッドを定義して、taskを同期的に安全に実行する方法を見つける必要がある。<br>> public async Task<Post> GetPostById(id) => await blogPostService.getPostById(id);<br><br>  // これは完全に同じじゃない。taskはhotだから<br>  this.GetPostById(42).Result" userName="throw234234234" createdAt="2025-04-02T00:21:30" color="#45d325">}}

{{<matomeQuote body="F#はでかい言語で、MLのマルチパラダイム言語でC#と相互運用できるから、複雑になるのは仕方ないし、同じことをやる方法もたくさんある。強いメリットは、最初に動く関数型プロトタイプを作って、遅い部分をホットスポット最適化して、イミュータブルな関数をミュータブルな関数で置き換えて高速化できること。PythonとC++みたいに、パフォーマンスが重要な部分だけC++で書き換えるみたいな感じ。C#のawaitは、C#がF#の相互運用を考慮して設計しなかったのが残念。F#はtask builderを追加して、awaitをtask builderブロック内でlet!で置き換えられるようにした。<br>> let getById(id:int) : Task<string> = failwith ”never”<br>> let doWork(post:string) : unit = failwith ”never”<br>> let doThing() ＝ task {<br>>   let! post ＝ getById(42);<br>>   doWork(post); }”<br><br>または、taskをAsync.AwaitTask関数で通常のF# asyncに変換できる。<br>> let getPostById1(id:int) : Async<string> ＝ async { return! getById(id) |> Async.AwaitTask }<br>> let getPostById2(id:int) : Async<string> ＝ getById(id) |> Async.AwaitTask<br>> let getPostById3 : int -> Async<string> ＝ getById >> Async.AwaitTask" userName="cjbgkagh" createdAt="2025-04-01T16:38:07" color="">}}

{{<matomeQuote body="async CEの特別な挙動が必要な場合を除いて、task CEを常に使うのがベスト。元のコメントの人は、そのことを知らないし、F#がシームレスに動作するかどうか確認しようともしてない（実際は動作する）。F#で非同期コードを書くのは、C#よりも構文が少ない。ボイラープレートは必要ないし、F#はそういう風に書くべきじゃない。" userName="neonsunset" createdAt="2025-04-01T16:43:23" color="#ff5c5c">}}

{{<matomeQuote body="F#はでかい言語だから、初心者が知らないのは当然だと思う。F#を単純化するんじゃなくて、F#は万人向けじゃないってことを理解すればいいんじゃない？" userName="cjbgkagh" createdAt="2025-04-01T16:56:43" color="">}}

{{<matomeQuote body="別に良いんだけど、間違ったことを自信満々に言うより、特定の言語機能について確信がない方がマシだと思う。個人的には、”.NETは〇〇だからクソ”→”いつの話だよ？”→”10年前”→”それが？”みたいな無限ループにイライラする。上の例みたいに、新しいF#のコードでこんなことやるやつはいないと思う。task { ... } を普通に使うでしょ。" userName="neonsunset" createdAt="2025-04-01T17:08:56" color="#ff33a1">}}

{{<matomeQuote body="できるのはわかるけど、コードがクソみたいになるし、MLの美しさが損なわれるって言ってんだよ！" userName="shortrounddev2" createdAt="2025-04-01T20:42:29" color="">}}

{{<matomeQuote body="マジでやめてくれ。Task CEはF# 6.0からあって、CoreLibのTasksとValueTasksのawaitを問題なく処理できるんだから。" userName="neonsunset" createdAt="2025-04-01T21:03:04" color="#785bff">}}

{{<matomeQuote body="OcamlとF#どっちが好きか、それともC#とF#どっちが好きかってこと？あなたの例は確かにエレガントじゃないけど、 built inされてる関数をわざわざ4行で再現してる時点で設計が悪い。どの言語でもクソコードは書けるでしょ。" userName="cjbgkagh" createdAt="2025-04-01T21:22:23" color="#ff5733">}}

{{<matomeQuote body="F#のcomputation blocksが見た目もっと良ければいいのになー。C#みたいにasyncメソッドでアロー構文もっと綺麗に書けるじゃん？F#って独自のキーワード使いすぎな気がするんだよね。もっと再利用してほしい。member this.Foo = ...とかmember val Foo = ...とかさ。" userName="shortrounddev2" createdAt="2025-04-02T13:24:11" color="">}}

{{<matomeQuote body="批判が支離滅裂で意味不明。そもそもcomputation block使わなくても、組み込み関数で同じことできるし。キーワード増やさないでって言う割に、新しいの提案してるじゃん。F#は万人に合うわけじゃないんだから、それでいいんだよ。" userName="cjbgkagh" createdAt="2025-04-02T16:08:52" color="">}}

{{<matomeQuote body="＞あんたが新しいキーワードを提案してるって言ってるけど<br>してないし。asyncはF#のキーワードだし、括弧をなくしてreturn文を削除してほしいって言ってるだけ。<br>＞言語設計にはトレードオフがあるけど、どこが改善されるか分からないって言ってるけど<br>読みやすくなるし、特定の機能のための特殊な構文が減るし。MLスタイルの構文を維持できるし、computation blockでラップする必要なくなる。あれF#で一番ダサい構文じゃん？<br>＞Computation expressionsは便利なものだって言ってるけど<br>そうは思わない。見た目が悪い。もっと砂糖をかけてくれ。" userName="shortrounddev2" createdAt="2025-04-02T16:40:34" color="">}}

{{<matomeQuote body="'async'はF#のキーワードじゃなくて、builder instanceだよ。return文は何か返したいときにだけ必要。async { let! x = f(); return x}はf()にできる。残りはあんたの意見だね。同意しないけど。" userName="cjbgkagh" createdAt="2025-04-02T17:12:11" color="#ff33a1">}}

{{<matomeQuote body="この区別はマジで意味ない。言語の使いやすさの問題なんだよ。純粋関数型言語から抜け出すと、とたんに使いづらくなる。" userName="shortrounddev2" createdAt="2025-04-02T18:18:14" color="">}}

{{<matomeQuote body="`var post = await _postService.getById(id);`<br>F#だと`let! post = _postService.getById id`だよね。" userName="malakai521" createdAt="2025-04-01T15:06:59" color="#785bff">}}

{{<matomeQuote body="C#だとasyncじゃないメソッドでawait使えないから、短絡的な意見だと思う。" userName="smoothdeveloper" createdAt="2025-04-01T14:56:10" color="">}}

{{<matomeQuote body="関係ないじゃん。結局全部asyncにする必要があるけど、それでもF#よりシンタックス綺麗だよ。Asp.Net controller使ってるなら、handlerをasync Task<IActionResult>にすればいいだけだし。mainメソッドだってasyncにできるし。" userName="shortrounddev2" createdAt="2025-04-01T14:59:16" color="">}}

{{<matomeQuote body="シンタックスは全く同じだよ。C#は`var x = await`で、F#は`let! x =`。controller handlerも同じ。C#は`async`キーワードで、F#は`task` CEでマークされる。" userName="malakai521" createdAt="2025-04-01T15:29:25" color="#ff5733">}}

{{<matomeQuote body="えーと、全然同じじゃないよ。let!はcomputation blockの中でしか使えないし。computation blockから値を返して、スレッドを止めずにFunctionalな世界に戻りたいなら、継続を使わないといけないんだけど、C#にはasync/awaitっていう構文糖があるけど、F#にはないんだよね。" userName="shortrounddev2" createdAt="2025-04-01T15:42:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="awaitはasync functionの中でしか使えないじゃん。let!がcomputation expressionの中でしか使えないのと何が違うのさ？" userName="sparkie" createdAt="2025-04-01T16:02:40" color="#785bff">}}

{{<matomeQuote body="だってasync functionって、動かすためにsyntaxを変える必要ないじゃん。" userName="shortrounddev2" createdAt="2025-04-01T16:40:40" color="">}}

{{<matomeQuote body="逆だよ。C#はasync/awaitのsyntaxが固定されてる。F#のasync/awaitのsyntaxは、ユーザーが自由に使える汎用的な仕組みなんだ。" userName="Smaug123" createdAt="2025-04-01T18:55:35" color="#ff5733">}}

{{<matomeQuote body="もし君のコードベースがasync awaitを既に使ってるなら、マジで問題ないと思うよ。" userName="jayd16" createdAt="2025-04-01T15:17:45" color="">}}

{{<matomeQuote body="君の考えはわかるよ。俺はニッチな言語を学ぶための媒体として見てるんだ。例えば、個人のプロジェクトでRustを使うのが好きなんだよね。リリースしないプロジェクトでも、immutableとか、functional programmingとか、trait-oriented programmingの教訓が日々の仕事に役立つから。だから、ニッチな言語を学ぶのは価値があると思うんだ。" userName="8s2ngy" createdAt="2025-04-01T14:02:26" color="#ff33a1">}}

{{<matomeQuote body="Rustをニッチな言語って呼ぶのはもう違うんじゃない？（2018年くらいならそうかもだけど）多くの大企業で普通に使われてるし。" userName="jen20" createdAt="2025-04-01T14:13:18" color="#ff5c5c">}}

{{<matomeQuote body="このバブルの外ではめっちゃニッチだよ。" userName="homebrewer" createdAt="2025-04-01T14:47:33" color="">}}

{{<matomeQuote body="Stack Overflowのdeveloper surveyによると、Rustは12.5%で、C#やJavaの半分くらい、Pythonの4分の1くらい。Rubyよりは2倍以上。だから全然ニッチじゃない。" userName="mmoskal" createdAt="2025-04-01T18:15:21" color="#ff5c5c">}}

{{<matomeQuote body="念のため言っとくと、そのdeveloper surveyで聞かれたのは、＞“過去1年間に集中的に開発作業を行った、または今後1年間に取り組みたいプログラミング、スクリプト、マークアップ言語は何ですか？”<br>ってこと。<br>仕事でその言語を使ってるかは聞いてないんだよね。<br>あと、同じ結果で、Rustのすぐ上に、＞PowerShell 13.8%<br>ってあるし。<br>＜sarcasm＞じゃあ、Microsoft PowerShellの方がRustより人気があるって言っても大丈夫だよね。＜/sarcasm＞" userName="throwaway2037" createdAt="2025-04-02T08:36:11" color="">}}

{{<matomeQuote body="俺的にニッチじゃないってことは仕事があるってことだと思うんだよね。で、Rustには仕事がない。少なくとも意味のある量ではね。ほとんどの国では皆無だよ。だから俺にとってはニッチのど真ん中って感じ。" userName="askonomm" createdAt="2025-04-01T21:13:20" color="">}}

{{<matomeQuote body="F#はたぶん永遠にニッチなままだろうね。Rustは違うと思う。MicrosoftとかGoogleとかLinux Kernelでの採用がどんどん増えてるし、加速してるから。CとC++の40年以上の支配を打ち破るには時間がかかるってこと。" userName="vlovich123" createdAt="2025-04-01T15:36:21" color="#38d3d3">}}

{{<matomeQuote body="個人的にはRustの複雑さよりCのシンプルさの方が好きだな。俺だけかもだけど。" userName="johnisgood" createdAt="2025-04-01T16:40:16" color="">}}

{{<matomeQuote body="俺はRustの方がCよりずっとシンプルだと思うけどな。コンパイルできれば、たぶんエンコードしたビジネスロジックの有効な表現になってる。もちろん、そのロジックを間違えることはあるし、どの言語もそれが防げるわけじゃない。知ってるって！いろんな言語が試したけど、俺の考えを誤って伝える能力で打ち破ってきたんだ！でも少なくともRustなら、コードが実際に自分が頼んだことをしてくれるって自信がある。Cだと、クラッシュせずに何百回も実行するまでそんな自信は持てないな。<br>（Cの残念なコードを書かないようにするための豊富なエコシステムについてはよく知ってるよ。Coverityで働いてたこともあるし。むしろ、Cのコードが完全に壊れてないことをある程度確信するまでに、どれだけのハードルを乗り越えなきゃいけないかを思い知らされた。）" userName="kstrauser" createdAt="2025-04-01T18:04:05" color="#ff5733">}}

{{<matomeQuote body="それって…かなり反論的な意見に聞こえるな。Imho、Cは時々ちょっと壊れやすいコードを作っちゃうかもしれないけど、Rustはそれより二桁くらい複雑だと思う。" userName="dboreham" createdAt="2025-04-02T12:25:04" color="">}}

{{<matomeQuote body="いや、彼の言いたいことはわかるよ。Cは「時々ちょっと壊れやすいコード」なんかじゃないんだ。コードの複雑さ、コード量、コードに関わる人数が増えれば増えるほど、脆さが蔓延するんだよ。" userName="ninetyninenine" createdAt="2025-04-02T15:19:40" color="">}}

{{<matomeQuote body="兄弟コメントが指摘してるように、.fsprojマニフェストとProgram.fsファイルだけだよ。何のボイラープレートのこと言ってるの？JavaとかTypeScriptで作られたプロジェクトとは真逆でしょ。F#の場合、本格的なアプリケーションやライブラリを作るにはプロジェクトが必要だけど、それ以外は.fsxでF#スクリプトを書いて'dotnet fsi {SomeScript.fsx}'で実行すればいいんだ。<br>（当然、shebangとしてdotnet fsiを指定して、これらのスクリプトをUnixシステム上の一般的なスクリプトに統合することもできる。すごく生産的だよ）" userName="neonsunset" createdAt="2025-04-01T13:37:46" color="#ff33a1">}}

{{<matomeQuote body="たぶん、新しいプロジェクト形式が登場する前の.NET Core以前のことか、Visual Studioでプロジェクトを作成して、オプションのボックスを全部チェックしてるんじゃないかな。確かに昔は、コードを実行するために必要なボイラープレートが今よりずっと多かった。今は、VS Codeで合計2つのファイルで.NETプロジェクトをかなり快適に実行できるよ。" userName="twodave" createdAt="2025-04-01T13:45:17" color="">}}

{{<matomeQuote body="Visual Studioを使ってるなら、fsprojだけでなくソリューションファイルも生成されるね。俺はC/C++で育ったから、ボイラープレートのプロジェクト/IDE/makeファイルやビルドオブジェクトを見るのは当然だと思ってる。主にJITコンパイル/インタプリタ言語を使ってる人は、ソースファイルがいっぱい入ったディレクトリツリーがあって、CLIツールがすべてを管理してるのに慣れてるんじゃないかな。依存関係リストファイルもあるかもしれないけど、それくらい。Pythonとかjavascriptはそんな感じ。" userName="shortrounddev2" createdAt="2025-04-01T14:45:32" color="">}}

{{<matomeQuote body="F#はAIとかなり相性が良いよ。すべてのAIモデルは、自然なF#コードを生成する能力がある。実際、優れた型システムのおかげで、実装する前にAIに型を使って問題をうまくモデル化させれば、ありもしないバグも簡単に見つけられる。" userName="Foofoobar12345" createdAt="2025-04-01T16:39:02" color="#45d325">}}

{{<matomeQuote body="F#とかScala、Haskell、OCamlって、マジでビルドシステムがクソすぎて普及が止まってるよね。Rustの方がビルドシステムが良いから、問題領域に合わなくても選ばれてる。組み込み開発でC++じゃなくてRustを選ぶ理由の8割はビルドシステムだよ。非営利団体とか企業がバックについてる言語が、未だにクソなビルドシステムなのマジ意味不明。ビルドシステムへの投資が一番重要だってマジ。" userName="darksaints" createdAt="2025-04-01T18:08:04" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
