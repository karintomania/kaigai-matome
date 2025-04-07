+++
date = '2025-03-31T00:00:00'
months = '2025/03'
draft = false
title = 'Goの最適化で性能爆上げ！GC対策、ゼロコピー、オブジェクトプールまで徹底解説'
tags = ["Go", "最適化", "パフォーマンス", "GC", "プログラミング"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> Goの最適化で性能爆上げ！GC対策、ゼロコピー、オブジェクトプールまで徹底解説

引用元：[https://news.ycombinator.com/item?id=43539585](https://news.ycombinator.com/item?id=43539585)

{{<matomeQuote body="GCの時間を減らすためにallocationを減らすのが良いってよく言われるけど、Goのアプリのpprofを見ると、GC sweepじゃなくてGC mark phaseが時間かかってるんだよね。GC markはいつもlive root（goroutineのstackとかglobalsとか）から始まって、そこから参照を辿ってpointerを色付けする。だからGCの時間を減らすには、_long living_ allocationを避けるのが一番良いんだ。短いallocation、GC mark phaseが届かないやつは、GCの時間にほとんど影響ないんだよ。Allocation自体はGCを早くtriggerする効果があるけど、現実のアプリではGCを避けるのはほぼ無理ゲー。依存関係がないプログラムとか、すごく丁寧に書かれたプログラム以外はね。だからGCが起きたら、GC markの時間を減らすのが一番効果的だと思うよ。" userName="nopurpose" createdAt="2025-03-31T22:34:12" color="#ff5733">}}

{{<matomeQuote body="abstractionはGoでは予期せぬ形で足を引っ張ることがあるから注意が必要だよ。Interfaceを使うと、たとえオブジェクトが読み取り専用で同じscope内だけで使われるとしても、heap allocationが強制されるんだ。fmt.Printf()みたいな関数もそう。だから、for loopでiの値をprintすると、iのintegerがheapにallocationされちゃうんだ。ライブラリのAPIを全部interfaceにすると、呼び出し元は毎回heap allocationしないといけなくなるよ。" userName="liquidgecka" createdAt="2025-04-01T03:38:20" color="#ff5733">}}

{{<matomeQuote body="integerはinterfaceにinlineできると思ったんだけどなー。Goは昔はそうしてた気がする。でもplaygroundで試したら、heap allocationされちゃった：https://go.dev/play/p/zHfnQfJ9OGc" userName="slashdev" createdAt="2025-04-01T04:12:37" color="">}}

{{<matomeQuote body="Goは昔はそうしてたんだよ。でも1.4で削除されたんだ：https://go.dev/doc/go1.4#runtime" userName="masklinn" createdAt="2025-04-01T04:16:04" color="">}}

{{<matomeQuote body="基本的には、thin pointer（*T, chan, map）以外はboxingされるんだよね。結局、interfaceの値の2つのwordは常にpointerになるんだ。これはgarbage collectorにとっては都合が良い（escape analysisが失敗した時のallocationは別として）。標準ライブラリにはboxingを避けるためのtrickがいくつかあるみたいだよ。例えば、log/slogでstringとかtimeがどう扱われてるかとか[2]。[1]：https://github.com/teh-cmc/go-internals/blob/master/chapter2... [2]：https://cs.opensource.google/go/go/+/refs/tags/go1.24.1:src/..." userName="kbolino" createdAt="2025-04-01T13:36:40" color="#785bff">}}

{{<matomeQuote body="slog.Valueはすごく便利そうだね。database/sqlがslog.Valueみたいなのを使うようになったら、garbageを大量に生成しなくなる日が来るかも？" userName="ncruces" createdAt="2025-04-01T21:36:42" color="">}}

{{<matomeQuote body="go1.15でsmall integerのpackingがinterfaceにre-addedされたんだよ：https://go.dev/doc/go1.15#runtime" userName="ominous_prime" createdAt="2025-04-01T13:59:53" color="">}}

{{<matomeQuote body="いや、違うんだ。go 1.15には最初の256個のpositive integerのstatic arrayがあって、interfaceのためにboxingする必要があるときは、そのarrayへのpointerを取得するんだ：https://go-review.googlesource.com/c/go/+/216401/4/src/runti... このarrayはsingle-byte stringにも使われるんだ（以前は独自のarrayがあった）：https://go-review.googlesource.com/c/go/+/221979/3/src/runti..." userName="masklinn" createdAt="2025-04-01T14:35:00" color="#45d325">}}

{{<matomeQuote body="＞It didn’t, do what？<br>それの何が違うの？最初の256個のintegerは“small integer”だと思うけど😉<br>＞Converting a small integer value into an interface value no longer causes allocation<br>single byte stringにも使えるのは知らなかった。それが役に立ったことはないけどね！" userName="ominous_prime" createdAt="2025-04-01T17:06:00" color="">}}

{{<matomeQuote body="＞It didn’t, do what？<br>＞Reintroduce “packing into interfaces”.<br>完全に違うことをしたんだよ。small integerはinlineされないまま。" userName="masklinn" createdAt="2025-04-01T18:11:50" color="#ff33a1">}}

{{<matomeQuote body="アロケートにかかる時間とかリソースも考慮してる？高パフォーマンスシステム作るなら、GCだけじゃなくてアロケーションも最小限にしたいよね。" userName="MarkMarine" createdAt="2025-03-31T22:40:48" color="">}}

{{<matomeQuote body="結局は“do less”ってことじゃん？それってどんなパフォーマンスガイドにも書いてあるし。アロケーションも他のアプリの処理と変わらないよ。<br>僕が言いたいのは、よくある「アロケーション減らしてGCの負担を減らす」ってアドバイスが全てじゃないってこと。短いアロケーションはGCの負担にならないし。みんな時間かけてアロケーション減らしても、結局GCの時間は変わらないってことあるある。" userName="nopurpose" createdAt="2025-04-01T07:14:53" color="#785bff">}}

{{<matomeQuote body="言いたいことはわかるけど、それってコインの裏表だよね。完全なパフォーマンス分析せずに、ある方法だけが有効だって言うのは違うと思う。（君はGCのmark時間を減らすこと、他の人はアロケーション時間を減らすこと、この記事に書いてある他の方法も同様）" userName="MarkMarine" createdAt="2025-04-01T15:20:19" color="">}}

{{<matomeQuote body="ちなみに、GoのGCについてはhttps://tip.golang.org/doc/gc-guideを見てね。<br>GCの頻度は、アロケーションレート（バイト単位）とライブヒープサイズに直接影響されるよ。例えば：<br>　-アロケーションレートを半分にすると、GCの頻度も半分になる。<br>　-ライブヒープサイズを2倍にすると、GCの頻度は半分になる（GOGC=100の場合）。<br><br>＞…でもGoアプリのpprofを見ると、時間がかかるのはGCのmarkフェーズで、GCのsweepじゃないよね。<br>＞sweepがmarkよりずっと安いのは確かで、君の次の発言も：<br>＞短いアロケーションはGCのmarkフェーズに到達しないから、GC時間にほとんど影響がない。<br>…技術的には正しい。でも、2つの重要な点を省略してる：<br>　-短いアロケーションを大量に生成すると、GCがより頻繁にトリガーされる。<br>　-ライブヒープサイズを小さくすると（何も保持しないようにすると）、GCがより頻繁にトリガーされる。<br><br>だから、GCサイクルは安くなるけど、回数は増える。それに、アロケーションコストも大幅に増加する。これが本当に得策なのかはわからない。僕の経験ではそうじゃない。" userName="aktau" createdAt="2025-04-01T11:31:22" color="#ff33a1">}}

{{<matomeQuote body="興味深いね、ありがとう。でも、それらの点はそんなに相関性がないと思うな。例えば、ループ内で不要なラッパーを作成すると、アロケーションレートは2倍になるかもしれないけど、ライブヒープサイズは半分にならないよね？だって、以前はループの外にラッパーがなかったんだから。<br>要するに、スタイル変更（例えば、すべてのエラーに対してラッパーを作成したり、time.Timeの代わりに生の整数を使用したりする）が与える影響を見積もりたいんだ。そして、どんな例でも、君の指摘の一方に他方よりもはるかに影響を与えると思うから、「短いイテレータを作るのは全く問題ない」って主張できると思う。" userName="deepsun" createdAt="2025-04-01T20:42:23" color="#ff5733">}}

{{<matomeQuote body="詳細な回答ありがとう。議論の価値を高めてくれて感謝するけど、僕のコメントの意図が伝わってない気がする。<br>僕は「アロケーションを減らしてGCの負担を減らす」って blanket statement に反対なんだ。それが人々を間違った方向に導いてる。Go benchの“allocs/op”でライブラリを比較したり、sync.Poolの馬鹿げた（誰がタイトループで8KBもアロケートするんだ？）マイクロベンチマークを信じたりして、GCの問題を解決しようとする。そして、多くの努力を費やした結果、GC時間がほとんど変わらなかったことに気づくんだ。<br>一般化するなら、僕の「長生きするアロケーションを避ける」とか、君の「バイト単位でのアロケーションレートを減らす」って方が、この記事や他の多くの記事が説いていることよりも、実際にははるかに役に立つよ。" userName="nopurpose" createdAt="2025-04-01T15:04:29" color="#ff33a1">}}

{{<matomeQuote body=".NETでも同じような話だね。まずインナーループがallocation-freeであることを確認して、次にallocationが短命であることを確認して、最後に大きなallocationのlong tailをクリーンアップする。" userName="zmj" createdAt="2025-04-01T02:04:15" color="">}}

{{<matomeQuote body=".NETは、GCがgenerationalで全体的にもっと洗練されているから、高いアロケーショントラフィックにもっと寛容だよ（tail latencyというコストはあるけど、それはワークロード次第）。<br>LOHに行くような巨大なアロケーションはかなり厳しいけど、実質的なinter-generationalトラフィックでも死ぬことはない。" userName="neonsunset" createdAt="2025-04-01T03:55:15" color="#ff5733">}}

{{<matomeQuote body="ランタイムは2分ごとにGCを強制するからね。だから、頻繁にアロケートしなくても、長生きするアロケーションはGCに負担をかける可能性がある。だからDiscordはRead StatesサーバーをGoからRustに移行したんだ。" userName="kgeist" createdAt="2025-04-01T21:51:06" color="#785bff">}}

{{<matomeQuote body="まぁ、そうかもね。hot loopでアロケートしてたら、どっちにしろ最悪だよ。Object poolは、汎用アロケータよりも効率がずっと良いから、高パフォーマンスを目指すならマジで重要。" userName="zbobet2012" createdAt="2025-04-01T02:18:09" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="GCを完全に避けるって話じゃなくて、allocationの圧力を減らすのが大事なんだよね。アツいループでallocを避けられるなら、絶対やる価値あり。もし無理でもsync.Poolが使えるなら試してみて。allocを半分に減らしても大したことないかもしれないけど、100万回のループで毎回allocationしてたのを無くせたら、たとえすぐに死ぬallocでも効果あるよ。実際、このテクニックでパフォーマンスが2倍以上になったコードもある。" userName="ncruces" createdAt="2025-04-01T10:06:33" color="#785bff">}}

{{<matomeQuote body="mark phaseが重いのは同意。でも、短命なallocationを減らす価値がないってのは違うと思うな。Goプログラムのパフォーマンス分析をよくするんだけど、1秒あたりのbytes allocatedを減らすのは常に有効だよ。" userName="bboreham" createdAt="2025-04-01T10:30:00" color="#ff5c5c">}}

{{<matomeQuote body="＋1。特に[]byte sliceのallocationはGCのペースを左右することが多いし、sync.Poolとかで簡単に最適化できることが多いよね。" userName="felixge" createdAt="2025-04-01T14:19:23" color="#785bff">}}

{{<matomeQuote body="pprofだけじゃ全部見れないから、システムプロファイラも見てみるといいかも。" userName="raggi" createdAt="2025-04-01T00:38:59" color="">}}

{{<matomeQuote body="allocation自体、GCに関係なく結構コストかかるんじゃない？" userName="Capricorn2481" createdAt="2025-03-31T23:23:18" color="">}}

{{<matomeQuote body="Goのallocationはそんなに悪くないよ。数年前にベンチマークしたとき、bump allocationの4倍くらいのコストだった。だから、allocationが多い状況ではarenaが有効だけど、ほとんどの場合はそこまでやる価値ないかな。" userName="nu11ptr" createdAt="2025-03-31T23:48:58" color="">}}

{{<matomeQuote body="$COMPANYのかなり最適化されたmallocと比較すると、Goのallocatorは（相対的なサイクル数でも、Goプログラム全体のサイクル数でも）C/C++のallocatorよりかなりコストが高い（3～4倍だったと思う）。GCのmetadataの設定とか、zeroingとか、やることが多いからね。最近`runtime.mallocgc`の最適化があったから、3～4倍っていうのは少し減ってるかも。" userName="aktau" createdAt="2025-04-01T10:29:08" color="#ff5733">}}

{{<matomeQuote body="それ本当？mallocより3～4倍も遅いってことは、そっちのmallocはbump allocatorってことになっちゃうけど、そんな実装はありえない（普通はmodified free list allocatorだよね）。`mallocgc`が速くないのはわかるけど、そんなに遅いとは思わなかったな。普通のmalloc関数と同じくらい速いと思うけど、測ったことはないし、比較するのは難しいよね（CGo経由でmallocを呼ぶか、CとGoで書いてループのコストが同じになるようにしないといけないし）。" userName="nu11ptr" createdAt="2025-04-01T12:48:49" color="">}}

{{<matomeQuote body="訂正と明確化:<br>相対的な意味で3〜4倍高価であるという意味でした。<br>C + +プログラムの場合、アロケーター（割り当て+解放）はサイクルのおおよそ5％を消費します。<br>Goプログラムの場合、アロケーター（runtime.mallocgc）は〜20％のサイクルを消費していました（これは私が参照したデータです）。確認したところ、最近では最適化のおかげで15％近くになっています。<br><br>バイトレベルでのパフォーマンスの差はテストしていません（Goのオブジェクト構造によっても異なります）。" userName="aktau" createdAt="2025-04-02T08:38:24" color="#45d325">}}

{{<matomeQuote body="違うよ。moving multi generational GCなら、allocationは短命なオブジェクトに対してはincrementするだけだよ。" userName="epcoa" createdAt="2025-04-01T01:24:13" color="">}}

{{<matomeQuote body="movingでgenerationalなGCだと、高速allocationのメリットはデータの移動とコストのかかるメモリバリアで全部なくなっちゃうんだって。" userName="pebal" createdAt="2025-04-01T03:54:47" color="">}}

{{<matomeQuote body="そんなことないって。ほとんどのオブジェクトはすぐ死ぬから移動しないし。移動するまでの時間もCPUの処理に比べたらめっちゃ長いから、統計的にしか影響ないよ（スループットは高いけど、たまにレイテンシが長くなる）。write-only barrierもそんなにオーバーヘッド大きくないし。" userName="gf000" createdAt="2025-04-01T09:25:46" color="#38d3d3">}}

{{<matomeQuote body="オブジェクトがすぐ死ぬかどうかは関係なくて、ヒープにある他のオブジェクトが定期的に移動するせいでパフォーマンスが落ちるんだよ。moving GCを使うと、movingじゃないGCにはないread barrierも必要になるし。" userName="pebal" createdAt="2025-04-01T15:17:46" color="">}}

{{<matomeQuote body="OSがスレッドをcontext switchするのに比べたら、その周期ってそんなに気になる？CPUのタイムラインで見たら、全然珍しいことじゃないよね。それに、ハイパフォーマンスなGC runtimeは全部movingでgenerationalな方式を選んでるんだから。" userName="gf000" createdAt="2025-04-02T06:45:39" color="#ff5733">}}

{{<matomeQuote body="OSがcontext switchするからって、その時間が無視できるわけじゃないよ。その間、コードは本来の処理をしてないんだから。Generational GCはmoving GCでデータの移動によるパフォーマンス低下を減らすために使われてるんだ。movingじゃないGCは侵略性が低いから、generational GCが必要なくて、完全にconcurrentにできる。" userName="pebal" createdAt="2025-04-02T07:45:31" color="">}}

{{<matomeQuote body="Generational GCはmoving collectorをさらに改善して、メモリの使用効率を上げてmarkフェーズを短くするものだと思うな。完全にconcurrentなGCってある？ZGCが一番concurrentらしいけど、read barrierとかポインタのトリックでstop-the-world時間をヒープサイズに依存させないようにしてるんだって。" userName="gf000" createdAt="2025-04-02T08:57:21" color="#785bff">}}

{{<matomeQuote body="Javaにはまだ完全にconcurrentなGCはないし、管理するgarbageの量とかオブジェクトを移動させるってことを考えると、完全にconcurrentなGCができる可能性は低いと思う。でも、movingじゃないGCなら完全にconcurrentにできるよ。C++のSGCLプロジェクトがそう。GoのGCが将来的に完全にconcurrentになる可能性が一番高いと思う。" userName="pebal" createdAt="2025-04-02T09:24:40" color="#ff5733">}}

{{<matomeQuote body="SGCLってあんたのプロジェクト？もしそうなら、managed pointerとかread flagにatomic writeしてる？Redditでいくつかコメント読んだけど、flagはメモリページ単位っぽいね。でも、同期のオーバーヘッドが他の方法より大きいかもしれないし、JavaみたいにGC研究の最先端と比較できないから、本当にメリットがあるかどうかはわかんないね。TLA+で設計をモデル化してみた？" userName="gf000" createdAt="2025-04-02T11:20:27" color="">}}

{{<matomeQuote body="へー、それってGoだけじゃなくて、他のmark-and-sweep GC（JavaとかC#）でも同じなんじゃない？ってことは、短い間しか生きないオブジェクト（loopのiteratorとかwrapperとか）を作るのは全然ありなんだね。" userName="deepsun" createdAt="2025-04-01T20:33:56" color="">}}

{{<matomeQuote body="GCのために短い間しか生きないallocationをする価値ってある？allocationが増えすぎて、逆に遅くなるかもしれないじゃん。" userName="nurettin" createdAt="2025-04-01T05:00:04" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="最初の例のobject poolsだけど、こんなのありなんだって驚いたよ。しかも警告も出ないし。<br>`sync.Pool`ってgenerics以前からあるから`any`を受け取って返すんだよね。Goって強い型付けが原則だけど、型システムから抜け出すAPIが多くて、メリットがなくなってる気がする。<br>ちょっと面白いことをしようとすると型システムを切らないといけないなら、意味なくない？<br>それと、初期値に戻すAPIがないのも気になる。`Clear`みたいなコールバックがあっても良くない？" userName="stouset" createdAt="2025-04-01T06:46:35" color="">}}

{{<matomeQuote body="これはstatic typingじゃないけど、strong typingだよ。static vs dynamicとstrong vs weakの話。<br>https://stackoverflow.com/a/11889763" userName="ncruces" createdAt="2025-04-01T09:35:15" color="">}}

{{<matomeQuote body="strongでstaticでstructuralだね。でもstructural typingはコンパイル時のduck typingみたいなものだから、dynamic typingと混同する人がいるのも理解できる。" userName="9rx" createdAt="2025-04-01T12:59:49" color="">}}

{{<matomeQuote body="Ggpが言ってるのはstructural typingじゃなくて、`sync.Pool`の型消去のことだよ（`any`の値を受け取って返す）。だから、変なgarbageが入る可能性がある。" userName="masklinn" createdAt="2025-04-02T07:21:35" color="">}}

{{<matomeQuote body="＞Ggp is not talking about structural typing、<br>いや、返信先はtypingがstaticかどうかをquestionしてたんだよ。structural typingによってstaticなんだ。コンパイラがdacksがcompatibleかどうかを強制する。でもempty interfaceにはconstraintsがないから、全てのtypeはcompatibleになる。他のcommentが何を言ってたかはirrelevant。<br>＞but about sync.Pool type erasing<br>typeはeraseされてないよ…？<br>`p := sync.Pool{New: func() interface{} { return 1 }}`<br>`fmt.Printf(”%T”, p.Get())` // Prints: int<br>＞So you can put (and will retrieve) random garbage from it.<br>それがdynamic typeだってこと？違うでしょ。" userName="9rx" createdAt="2025-04-02T09:12:40" color="#785bff">}}

{{<matomeQuote body="たしかにgenericsは便利かもね。でも`sync.Pool`とか`sync.Map`みたいなprimitiveはuse caseに合わせてwrapするのが簡単だよ。<br>Goはbreaking changesに厳しいから、今の実装は変わらないと思う。v2が出るかもしれないけど、どうだろうね。codeが多いほどmaintainが大変だし。" userName="zaphodias" createdAt="2025-04-01T08:02:59" color="">}}

{{<matomeQuote body="upstreamもtype-saferな`sync.Pool`はgood ideaだと思ってるみたい。<br>https://go.dev/issue/71076<br>でdiscussionされてるよ。" userName="aktau" createdAt="2025-04-01T10:24:46" color="#38d3d3">}}

{{<matomeQuote body="＞While I think you’re right (generics might be useful there), it’s fairly easy to wrap the `sync` primitives such as `sync.Pool` and `sync.Map` into your specific use case。”<br>それってstrong argumentじゃないよね。どんなAPIでも、typeをrestrictするwrapは簡単にできる。Genericsならそのworkをしなくて済むし、書かないcodeにはerrorsがない。" userName="Someone" createdAt="2025-04-01T10:10:13" color="#38d3d3">}}

{{<matomeQuote body="誤解しないでほしいんだけど、I agreeだよ！performance的にも、want whatever I wantをbuildできるprimitiveが欲しい。generic primitiveはperformanceがちょっと悪くて、自分をshoot in the footしないようにtuneしなきゃいけない。" userName="zaphodias" createdAt="2025-04-01T11:10:32" color="">}}

{{<matomeQuote body="`Sync.map`ってperformanceがbadなはず。<br>https://github.com/golang/go/issues/21031" userName="strangelove026" createdAt="2025-04-01T10:26:46" color="">}}

{{<matomeQuote body="ケースバイケースだね。<br>Godocによると、Map型は2つのユースケースに最適化されてるんだ。(1)キーに対する書き込みが1回だけで読み込みが多い場合、例えばキャッシュとか。(2)複数のgoroutineがバラバラのキーに対して読み書きする場合。この2つならMutexよりlockの競合が減るかも。<br>https://pkg.go.dev/sync#Map<br>あと、書き込みが遅い問題はGo 1.24で改善されたみたい。<br>https://go.dev/doc/go1.24#minor_library_changes" userName="PhilippGille" createdAt="2025-04-01T11:51:12" color="">}}

{{<matomeQuote body="型システムには、型ルールを破れる抜け道があるのが普通だよね。例えば、OCamlのObjモジュールにある”magic”関数とか。<br>これは、型システムの制限を回避するための手段なんだ。<br>wrapperを作れば、コードの安全性を保てるしね。<br>関数型インターフェースで命令型の実装を包むのも同じ考え方だ。表面的には関数型だけど、内部では命令型コードを使ってる場合もある(効率のため)。" userName="jlouis" createdAt="2025-04-01T13:39:56" color="#ff33a1">}}

{{<matomeQuote body="抜け道がない型システムなんてないけど、Goみたいに頻繁に型システムを破る必要がある言語は見たことないな。<br>簡単なことならGoの型システムは役立つけど、複雑なことをしようとすると、すぐ投げ出されるんだよ。そんな時にこそ型システムに頼りたいのに。<br>データベース接続のプールが突然文字列を返すなんて心配したくない。" userName="stouset" createdAt="2025-04-01T15:45:48" color="#785bff">}}

{{<matomeQuote body="ジェネリクス導入前のJavaやC#と似たようなもんだよ。理由はほぼ同じ。" userName="int_19h" createdAt="2025-04-01T22:39:00" color="">}}

{{<matomeQuote body="多くの言語にトップ型って概念があるよね。" userName="jfwwwfasdfs" createdAt="2025-04-01T08:13:45" color="">}}

{{<matomeQuote body="Goでプログラミングしたことないでしょ？`pool.Get()`の型は`any`で、Goのワイルドカード型なんだよ。値を取り出すには、正しい型をアサートする必要がある。これはジェネリクスでは解決できない。JavaやRust、C++でも無理だよ。Goが後方互換性を持ってるから、この構造は残るんだ。<br>＞初期化されたデフォルト値にリセットするAPIがないって？<br>New関数がそうじゃないの？<br>あと、コードにコンマがないよ。" userName="tgv" createdAt="2025-04-01T07:32:58" color="">}}

{{<matomeQuote body="＞New関数がそうじゃないの？<br>New関数はプールがスペースを確保する必要がある時にしか呼ばれないじゃん。sync.Pool()が常にゼロ構造体を返すと思ってるみたいだけど、Golangのallocationと同じようにね。<br>sync.Pool()はパフォーマンスが重要な場合に使う最適化だから、必要な部分だけ初期化するのは理にかなってる。でも、そう思うのも無理はないかも。<br>＞[any]は型<br>Pythonみたいな型付けで、RustやCとは違う。コンパイルできれば正しいってわけじゃないんだ。<br>sync.Poolは使わないけど、ジェネリクスがあるなら型付きのプールの方が良いと思う。" userName="gwd" createdAt="2025-04-01T07:56:45" color="">}}

{{<matomeQuote body="＞コンパイルできれば正しいってわけじゃないんだ。<br>みんながそう思ってるなら、Coqとかがもっと有名になってるはずだよ。普通に使われてる言語はテストが必要で、その過程で型も検証される。”機械がコードをリファクタリングしてくれる”ってのが静的型付き言語の魅力で、”ネットで記事を書ける”ってのが二番目の魅力。" userName="9rx" createdAt="2025-04-01T08:05:17" color="#ff5733">}}

{{<matomeQuote body="レベルによってコストとメリットがあるよね。窓に鉄格子はないけど、玄関には鍵をかける。Golangはコンパイルで多くのエラーを検出できるし、テストで残りを検出できる。PythonやPerlみたいにテストだけが頼りって状態よりマシ。" userName="gwd" createdAt="2025-04-01T08:30:13" color="">}}

{{<matomeQuote body="＞コンパイルで多くのエラーを検出できる<br>リファクタリングにはすごく便利だよね。でも、プログラムの正確さについては、あまり意味がない。" userName="9rx" createdAt="2025-04-01T08:35:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="GPが期待してるのは、Golangのallocationみたいにsync.Pool()が常にゼロ構造体を返すことだと思うんだよね。Pool[T]型を新しく定義して、この保証を得ることもできるよ。intpoolとかboolpoolの例もあるよ。<br>https://go.dev/play/p/-WG7E-CVXHR" userName="ignoramous" createdAt="2025-04-01T09:06:48" color="">}}

{{<matomeQuote body="＞One could define a new “Pool[T]” type (extending sync.Pool) to get these guarantees:”<br>それって、自分がそうじゃない限り？Foo構造体の例で、期待を完全に忘れちゃってるよ。pool.Get()で10を設定してpool.Put(a)したあと、もう一度pool.Get()すると10が表示されちゃう。0が期待されてるのに。" userName="9rx" createdAt="2025-04-01T13:37:27" color="">}}

{{<matomeQuote body="＞You completely forgot to address the expectation<br>＞fmt.Println(b.V) // Prints: 10; 0 was expected.<br>ポインタをpoolingするときに何を期待してるのか、正直よくわかんないんだよね。*[]uint8とか*[]byteをpoolingするのはよくあることだし、Pool.Put()とかPool.Get()で中身をゼロにする必要があるのかな？" userName="ignoramous" createdAt="2025-04-01T14:58:30" color="">}}

{{<matomeQuote body="＞I don’t get what else one expects when pooling pointers to a type?<br>前のコメントにもあるように、期待されてるのは常にゼロ値が返ってくることだよ。“GPが期待してるのはsync.Pool()が常にゼロ構造体を返すこと”なんだから。それを保証するって言ったんだよね？Pool.Put()とかPool.Get()で中身をゼロにしないと。それなのに、そうしてないじゃん。sync.Poolと全く同じ動きしかしないし…ジェネリクスの制約も間違ってるし。" userName="9rx" createdAt="2025-04-01T15:32:47" color="">}}

{{<matomeQuote body="＞And、unfortunately、doesn’t even get the generic constraints right、as demonstrated with the int and bool examples.<br>もし制約が正しくないなら、runtime panicになるんじゃないの？<br>＞What GP seems to expect is that sync.Pool() would always return a zeroed structure<br>アドレスをPoolするときは気をつけないとね。<br>＞But you completely forgot to do it、which questions what your code was for?<br>ポインタにゼロ値を期待するなら、New funcはnilを返すか、Pool.Get/Putでゼロにする必要があるね。レビューありがと。" userName="ignoramous" createdAt="2025-04-01T16:12:08" color="">}}

{{<matomeQuote body="＞If those constraints don’t hold (like you say) it should manifest as runtime panic、no?<br>intとかboolのpoolは問題なく動くよ。panicしたらコードを投稿しないよね。でも、正しくないんだよ。<br>＞I did not forget?<br>じゃあ、保証はどうなってるの？“Pool[T]型を新しく定義して、この保証を得ることもできる”って言ったよね？なんで守れない約束をするの？" userName="9rx" createdAt="2025-04-01T16:18:27" color="">}}

{{<matomeQuote body="それは設計図だよ。Embeddingとかtypedefは、その保証を実現する方法。ジェネリックなpoolライブラリを書くのが目的じゃないんだ。<br>＞but are not correct.<br>意味がわからない。制約が正しくないって言ったよね？どういう意味？" userName="ignoramous" createdAt="2025-04-01T16:24:13" color="">}}

{{<matomeQuote body="＞What does it even mean?<br>Goでは値がコピーされるんだよ。コードは動くけど、期待通りには動かない。poolのユーザーがミスしないように任せっきりだよね。それはある程度は良いけど、sync.Poolだけでも同じことができるから、あなたのコードは何のためにあるの？" userName="9rx" createdAt="2025-04-01T16:40:05" color="">}}

{{<matomeQuote body="＞Values are copied in Go<br>なるほど、ありがとう。<br>＞so what is your code for?<br>それが修辞的な質問じゃないなら、sync.Poolをtypedefとかembedで拡張できることを示すためだよ。pooling自体が正しいかどうかは焦点じゃないんだ。" userName="ignoramous" createdAt="2025-04-01T16:45:55" color="">}}

{{<matomeQuote body="＞then the code was to demonstrate that sync.Pool could be “extended” with other types and custom logic.<br>その保証はどこにあるの？コードはゼロ値も保証しないし、型安全ですらない。そもそも、Goに詳しい人が、そんな標準的な機能を unawareなわけないじゃん。" userName="9rx" createdAt="2025-04-01T16:49:18" color="">}}

{{<matomeQuote body="その保証はどこにあるのさ？あんたの書いたことを読み直した方がいいんじゃない？俺がsync.Poolでみんなの問題を解決しなかったって怒ってるみたいだけど、そんなこと言ってないし。Pool[T]型を新しく定義（sync.Poolを拡張）すれば、その保証が得られるかもね。まあ、sync.Poolを拡張してカスタムタイプ向けに保証を得るってこと。intとかboolの例もあるけど、コピーされるからpoolingは効果ないって言ってる通り。でも、sync.Poolの拡張方法を示したかっただけで、他意はないんだ。" userName="ignoramous" createdAt="2025-04-01T17:01:25" color="">}}

{{<matomeQuote body="＞あんたの書いたことを読み直した方がいいんじゃない？<br>全角の＞元の文からコロンを”忘れ”てコピーしてるじゃん。意味を考えると、わざと省いたのかな？俺が元のコメントを読んでないと思ってた？<br>全角の＞怒ってるみたい<br>全角の＞ネットで怒るなんてありえないでしょ。もし怒りそうになっても、その前にパソコン消すって。楽しくないなら使う意味ないし。<br>全角の＞One could define / extend sync.Pool to get those guarantees [for their custom types] ...<br>全角の＞誰が興味あるの？sync.Poolの複雑さを理解してて、型定義や関数も書けない人なんていないでしょ。" userName="9rx" createdAt="2025-04-01T17:25:16" color="">}}

{{<matomeQuote body="GPが期待してるのは、sync.Pool()が常にゼロ構造体を返すってことかもね。でもそれって型とかジェネリクスとは関係ない設計判断だよね？プールのドレイン関数が必要ないって言ってるみたいだけど、それって珍しいよね。<br>＞It's typed the way Python is typed<br>全然違う。<br>＞”if it compiles there's a good chance it's correct”<br>Rustのunwrap()みたいかも。間違った結果に適用するとpanicするやつ。" userName="tgv" createdAt="2025-04-01T08:40:58" color="">}}

{{<matomeQuote body="＞Not in the slightest.<br>それってUSENETでよくある、議論を呼ばないコメントだよね。Goは好きでよく使うし、`any`型にフォールバックできるのも良いと思う。でも`any`型を使うってことは、コンパイル時にチェックできない性質があるってこと。Pythonも同じ。<br>＞If you want to compare it to something, it's more like Rust's unwrap(), which will panic if you apply it to the wrong result.<br>Rustのunwrap()は、型が2つしかない時に使うんだよね（だから型指定がない）。`any`型は、型が何でもありってこと。例にあるように、int、string、空のstructをプールに入れられる。多分それは求めてることじゃないけど、コンパイラは止めないよ。" userName="gwd" createdAt="2025-04-01T08:53:21" color="">}}

{{<matomeQuote body="＞But it's simply a fact that using the `any` type means that certain properties of the program can't be checked at compile time<br>構造的型付けは、コンパイル時にチェックできる性質を減らすよね。でも、だからってPythonみたいになるわけじゃない。" userName="9rx" createdAt="2025-04-01T17:05:14" color="">}}

{{<matomeQuote body="anyは特別な型じゃないよ。interface{}のエイリアスだよ。空集合はすべての型で満たされるけど、必要に応じて絞り込める。" userName="9rx" createdAt="2025-04-02T02:52:51" color="">}}

{{<matomeQuote body="Pythonの型がないのと、anyから値を取り出すのを比べるのはおかしいでしょ。<br>＞certain properties of the program can't be checked at compile time<br>数字がプラスかマイナスか、stringが空かどうかはコンパイル時にチェックできないけど、だからってGoがCOBOLやForthみたいになるわけじゃない。`var v any`は、vがany型だって宣言してるんであって、任意の型ってわけじゃない。Pythonとは違う。`v + 1`はコンパイルエラーになるけど、Pythonはランタイムエラーになるかも。特にインターフェースを考えると、全然違う。Pythonでintegerを宣言しても保証はないけど、Goでは保証がある。例えばjsonを扱う時に重要になってくる。<br>＞the compiler won't prevent you from doing it.<br>stringの配列をintの配列として使うことはできないよ。Pythonはできる。全然違う。" userName="tgv" createdAt="2025-04-01T10:35:20" color="#785bff">}}

{{<matomeQuote body="Pythonには＂total absense of typing＂はないよ。静的型付けがないから、コンパイル時のチェックができないだけ（最近は擬似的な静的型付けもあるけど）。`+`を呼べるオブジェクトと呼べないオブジェクトがあるのは、型が違うからだよ。<br>本当に型のない言語（またはすべてが単一の型）はASM。レジスタのビットフィールドにどんな操作もできる。文字配列からロードされた64ビットがstringだって？OK、他のレジスタとbitwise andできる。u64？ポインタ？u32のペア？同じこと。意味は変わらない。" userName="sophacles" createdAt="2025-04-01T20:01:35" color="">}}

{{<matomeQuote body="＞There's no way in Java, Rust or C++ to express this either<br>それを表現できるのが良いことみたいに言うなよ。Java、Rust、C++でそれが表現できないのは、言語設計者のおかげだ。<br>any型とかキャストを使わずに、複数の型を持つpoolの値を表現したいなら、Rustのunion型とか、Javaのinterfaceを実装した複数の具象オブジェクトを使えばいい。どちらも、チェックされないduck typingなしに、明示的に値を確認する必要がある。" userName="pyrale" createdAt="2025-04-01T13:39:44" color="#785bff">}}

{{<matomeQuote body="ゼロコピーってマジで過小評価されてるよねー。このサイトでも言ってるように、Go のインターフェースのおかげでゼロコピーのコードが比較的書きやすいんだけど、それでも工夫は必要だよね。でも、それに見合うだけの価値はあると思う。メモリの割り当てとか、データのやり取りにめっちゃ時間使ってることに気づいてびっくりすることがよくあるんだよねー。" userName="kevmo314" createdAt="2025-03-31T23:35:42" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
