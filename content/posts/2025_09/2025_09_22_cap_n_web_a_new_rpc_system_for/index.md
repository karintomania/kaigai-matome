+++
date = '2025-09-22T00:00:00'
months = '2025/09'
draft = false
title = 'Cap'n Web：ブラウザとウェブサーバーの新RPCシステム！JavaScriptのmap()が驚きの賢さで動く？'
tags = ["RPC", "JavaScript", "Web開発", "ブラウザ", "ネットワーク"]
featureimage = 'thumbnails/purple7.jpg'
+++

> Cap'n Web：ブラウザとウェブサーバーの新RPCシステム！JavaScriptのmap()が驚きの賢さで動く？

引用元：[https://news.ycombinator.com/item?id=45332883](https://news.ycombinator.com/item?id=45332883)




{{<matomeQuote body="配列の解決策は驚きだね！.map()は特別で、JavaScriptコードじゃなく、ドメイン固有のDSLみたいな「コード」をサーバーに送ってるんだ。クライアントでコールバックを一度実行し、特別なプレースホルダー値を渡して、パイプライン化されたRPC呼び出しを記録（record-replay）して、それをサーバーに送って実行するって仕組みだね。詳細はここ：https://blog.cloudflare.com/capnweb-javascript-rpc-library/#" userName="mtrovo" createdAt="2025/09/22 17:51:05" color="#38d3d3">}}




{{<matomeQuote body="C#には「Expression Trees」ってのがあって、Entity Frameworkがラムダ式をSQLに変換するのに使ってるよ。コードを実行する代わりに検査・変換できるんだ。JavaScriptにはこれがないから、Cap’n Webは特別なプレースホルダー値でコードの動作を記録しなきゃならないんだね。" userName="mdasen" createdAt="2025/09/22 19:22:09" color="#ff5733">}}




{{<matomeQuote body="条件分岐は禁止されてるのかな？ReactのHooksのルールみたいに。でも、どうやって実現してるんだろう？" userName="spankalee" createdAt="2025/09/22 17:59:48" color="">}}




{{<matomeQuote body="map関数が「記録」モードで呼ばれるとき、入力は最終的な値のRpcPromiseになるんだ。だから値を直接検査できず、パイプライン呼び出しをキューに入れるだけ。値が検査できないから計算や分岐もできないし、もし分岐しても毎回同じ結果になる必要があるから記録してリプレイできるんだ。副作用（RPC呼び出し以外）がないことも重要だよ。" userName="kentonv" createdAt="2025/09/22 18:06:58" color="#ff5c5c">}}




{{<matomeQuote body="C#って何でもありすぎじゃない？動的ローディング、パターンマッチング付きADT、関数型プログラミング、Expression Tree、リフレクションとか、他の言語で困ったことの答えが全部C#にある気がするよ。なのになぜか特定の分野以外ではあまり使われてないのが不思議だね。" userName="squirrellous" createdAt="2025/09/23 00:32:04" color="">}}




{{<matomeQuote body="「一度実行して様子を見る」やり方には限界があるよ。条件ロジックがサイレントに無視されるんだ。例えば `p.IsPerson ? (p.FirstName + ’ ’ + p.LastName) : p.EntityName`みたいなコードだと、プレースホルダー値の挙動次第でどちらかのパスしか記録されない。`.toString()`してASTをパースすれば、許されない構文があったらエラーにできるのに、なんでそうしないんだろう？" userName="drysart" createdAt="2025/09/22 20:07:35" color="#ff5c5c">}}




{{<matomeQuote body=".map()は特別扱いなの？それともコールバックを受け取るユーザー関数は全部同じように動くの？もしそうなら、制御フローの決定を二重化して、選択肢のメニューを提供するScott-Mogensen流の`#ifTrue:ifFalse:`みたいなこともできるんじゃない？" userName="tonyg" createdAt="2025/09/22 18:20:29" color="">}}




{{<matomeQuote body="プレースホルダー値はRpcPromiseで、そのプロパティも全部RpcPromiseだよ。だから`p.IsPerson`もRpcPromiseで、JavaScriptの仕様上、これはtruthy（真とみなされる）だから、常に`p.FirstName + ’ ’ + p.LastName`が評価される。結果は`’[object Object] [object Object]’`になっちゃうんだ。JavaScriptの「すべてのオブジェクトがtruthy」「文字列に強制変換できる」っていう仕様が原因で、TypeScriptでも型エラーが出ちゃうような問題なんだよね。" userName="kentonv" createdAt="2025/09/22 20:13:01" color="#ff5733">}}




{{<matomeQuote body=".map()は完全に特殊ケースだよ。他のコールバックを受け取る関数だと、サーバー側の関数はRPCスタブを受け取って、それが呼ばれたら呼び出し元にRPCを返して元の関数を呼ぶんだ。これは普通なんだけど、.map()だと追加のネットワークラウンドトリップが必要になって目的が達成できなくなるからね。" userName="kentonv" createdAt="2025/09/22 18:25:02" color="#785bff">}}




{{<matomeQuote body="Tanstack DB（https://tanstack.com/db/latest/docs/guides/live-queries）でクエリDSLを実装した時、RefProxyオブジェクトをwhere/select/joinコールバックに渡して、行われたすべてのプロパティや式のトレースに使ったんだ。JSオペレーターは使えないから、トレースできる小さな関数セット（eq, gt, notとか）を自作したんだよね。これらのコールバックは1回実行されて、呼び出しをトレースしクエリのIRを構築するんだ。意外だったのはJSのspread操作もトレースできたことかな。Kentonさん、これ読んでたら、リモートでトレース・実行できる偽オペレーター（eq, gt, inとか）を追加してくれないかな？" userName="samwillis" createdAt="2025/09/22 21:12:42" color="#ff5733">}}




{{<matomeQuote body="C#ってコード自体は見てないと思うんだ。p.Nameって呼んだのを追跡して、その情報からSQLを生成してるんじゃないかな？" userName="javier2" createdAt="2025/09/22 20:57:44" color="">}}




{{<matomeQuote body="filter()は同じアプローチじゃ無理じゃないかな。結果に計算が必要になりそうだし。<br>map()はコールバックで計算しなくてもいい場合に使えるんだよね。サーバー側でフィルターしたいなら、サーバーが配列を引数にとるメソッドを明示的に公開すればいいと思うよ。" userName="kentonv" createdAt="2025/09/22 20:23:50" color="#ff5733">}}




{{<matomeQuote body="関数はクロージャにかなり気をつける必要があるね。Date.toLocaleStringみたいなJS関数は、クライアントとサーバーで結果が違って、気づかないうちに壊れる原因になるよ。" userName="fizx" createdAt="2025/09/23 04:36:47" color="">}}




{{<matomeQuote body="「マッピング関数に.toString()使って、JavaScriptをASTにパースしてプロパティアクセス見つけるとか？」<br>それ、めちゃくちゃ複雑だし、10kB以下のライブラリじゃ無理だって！" userName="kentonv" createdAt="2025/09/22 20:18:12" color="">}}




{{<matomeQuote body="これって、普通のJS関数じゃないものをmapに渡したらもっと安全にできるんじゃないかな？もし全部表現できるなら全部動くはずだし、動かないなら表現できないようにしてほしいな。" userName="Aeolun" createdAt="2025/09/22 22:53:39" color="">}}




{{<matomeQuote body="ラムダはExpression、つまりシンタックスツリーに変換されて、それが解析されて何がアクセスされたか見られるんだよ。" userName="adzm" createdAt="2025/09/22 21:01:26" color="#ff5c5c">}}




{{<matomeQuote body="mapコールバック内で`Date.toLocaleString()`を呼び出したら、いつもクライアント側で実行されるんだ。" userName="kentonv" createdAt="2025/09/23 12:54:07" color="">}}




{{<matomeQuote body="他の構文だと扱いにくいだろうな。RPC呼び出しの表現は関数型が一番しっくりくるよ。データ構造でやろうとするとJSONでDSL作ってるみたいで、かえって面倒になるもんね。" userName="kentonv" createdAt="2025/09/22 23:25:03" color="">}}




{{<matomeQuote body="C#って実はかなり広く使われてる言語なんだよね。特に堅実な中小企業や大企業のバックオフィスでね。流行りの新技術を追いかけるんじゃなくて、良い言語とエコシステムでシステムを組んでるんだ。俺は卒業してからずっとスタートアップでC#ばかり使ってきたよ。" userName="rjbwork" createdAt="2025/09/23 01:22:51" color="">}}




{{<matomeQuote body="PythonのPonyORMも似たことやってるよ。`select(c for c in Customer if sum(c.orders.total_price) ＞ 1000)`って書けるんだ。このハックっぽさがたまらないね。" userName="notpushkin" createdAt="2025/09/23 02:13:55" color="">}}




{{<matomeQuote body="C#, Swift, Dart, Rust, Pythonとか、たくさんの言語がラムダ式をフィルターやwhere句に使ってるよね。内部的にはforループとかLINQ/SQLに展開されてる。C#がSQLの範囲でこれを最初にやったのは画期的だったな。LINQの登場は覚えてるよ、懐かしい。" userName="keyle" createdAt="2025/09/23 03:23:51" color="#38d3d3">}}




{{<matomeQuote body="PonyORMは俺のお気に入りのPython ORMなんだ。`https://pypi.org/project/pony-stubs/` と一緒に使えば、ちゃんとした静的型付けも手に入るし。これは本当にすごいよ！" userName="porridgeraisin" createdAt="2025/09/23 02:29:46" color="">}}




{{<matomeQuote body="基本的に、リモート計算はカスタム関数を呼び出すことで何でも対応できるし、呼び出しも記録できるよ。それにアプリ側でもすでにRPC呼び出しを記録／再生できるんだから、サーバーがRPC APIとして操作ライブラリを提供すればいい。マッパーコールバックもそれを使えるしね。俺はこの方法が好きだな。サーバーが勝手に提供すればいいんだ。プロトコルに操作ライブラリを組み込むのはやめよう。" userName="kentonv" createdAt="2025/09/22 21:20:02" color="#785bff">}}




{{<matomeQuote body="この例がどうやってパイプライン処理されるのか、全然わからないんだけど？`client.getAll({userIds}).map((user) =＞ user.updatedAt == new Date().toLocaleString() ? client.photosFor(user.id) : {})` とか、条件なしの `client.getAll({userIds}).map((user) =＞ client.photos({userId: user.id, since: new Date(user.updatedAt).toLocaleString()}))` とかさ。`toLocaleString`ってサーバー側で呼ばれるべきじゃないの？" userName="fizx" createdAt="2025/09/23 19:39:39" color="">}}




{{<matomeQuote body="これを台無しにする方法として、インデックスカウンターを使って、インデックスごとに違う処理をするって手もあるけど、それは「やっちゃダメ」ってのが答えだね。" userName="skybrian" createdAt="2025/09/22 22:19:40" color="">}}




{{<matomeQuote body="ラムダの代わりに式を引数に取れる言語っていくつあるんだろうね？ Func＜..＞は呼び出し専用のラムダだけど、Expression＜Func..＞＞はコードやライブラリで変換できるラムダのASTなんだってさ。" userName="sobani" createdAt="2025/09/23 07:14:59" color="#38d3d3">}}




{{<matomeQuote body="でも、Cap’n Webって外部の値をクロージャできないんだよね？<br>僕もJavaScriptやDartで似たようなことしたことあるけど、外部アクセスしないか確認するために、関数のテキストを読み込んで再パースしたり（Dartではミラーを使ったり）したんだ。" userName="spankalee" createdAt="2025/09/22 18:21:07" color="#ff5c5c">}}




{{<matomeQuote body="Cap’n WebとOCapN [0] は似てるけど、違いも大きいね。ケイパビリティ転送やプロミスパイプライニング、スキーマレスなのは共通点。でもCap’n WebにはOCapNが持つSturdyRefみたいな帯域外ケイパビリティがない。だからAPIキー認証がいるんだね、誰でもエンドポイントに繋がれちゃうから。OCapNではSturdyRefが推測不能なトークンだから認証いらないんだ。あと、Cap’n WebはAliceがBobをCarolに紹介する「第三者ハンドオフ」機能もなさそう。これは分散アプリケーションには必須だ。Cap’n Webは従来のクライアント・サーバーSaaS向けで、おまけでocap要素がある感じかな。<br>[0] https://ocapn.org/" userName="davexunit" createdAt="2025/09/22 15:19:59" color="#45d325">}}




{{<matomeQuote body="将来的には3PHサポートしたいけど、最初のリリースではブラウザとウェブサーバーの通信に特化してたから優先じゃなかったんだ。SturdyRefsはトリッキーだね。RPCプロトコル自体には属さないと思う。なぜなら、SturdyRefの復元メカニズムは実行プラットフォームにすごく依存するからね。例えば、Cloudflare Workersで Durable Objectストレージにケイパビリティを保存できるようになるかもしれないけど、それはCloudflare Workersプラットフォームに強く結びついてる。Sandstormも永続ケイパビリティの仕組みがあったけど、Sandstorm内でしか意味がなかった。だからCap’n Proto自体から永続ケイパビリティの概念は全部削除したんだよ。SturdyRefsのWeb標準に一番近いのはOAuthだね。OAuthのリフレッシュトークンをベースにしたSturdyRefsの仕組みも考えられるけど、それはSandstormやWorkersみたいな特定のプラットフォームで本当に欲しいものとは違うだろうね。" userName="kentonv" createdAt="2025/09/22 15:27:15" color="#ff5733">}}




{{<matomeQuote body="これ、クールだね。MLコンパイルライブラリ（TensorFlow 1、JAX jit、PyTorch compile）と面白い共通点があるよ。トレーシングで操作グラフを作ってコンパイルするんだ。動的言語で新しいDSLのフロントエンドとしてAST構築を埋め込むってわけだね。MLではGPUカーネルの実行を遅らせて融合し、RPCではネットワークリクエストの実行を遅らせて融合する。コード・イズ・データの力だね。分散システムでコントロールプレーンとデータプレーンを分離する重要性とも関連する。Cap’n WebではRPCグラフが命令にあたるね。興味深いパターンだけど、まだ本質まで見通せてない気がする。Lisp的なコード・イズ・データだけど、なんか突破口がありそうだね。" userName="prngl" createdAt="2025/09/22 22:52:42" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="同意だね、それは強力な一般化だよ！「動的言語が新しいDSLのフロントエンドになって、新しい構文を作る代わりにAST構築をスクリプト言語に埋め込む」って話、TypeScriptこそが真のゲームチェンジャーだよ。JavaScriptの柔軟性（Cap’n Webが賢くProxyを使うように）と、作るDSLの静的型を両立できる。両方のいいとこ取りだね。僕はORMのアナログにずっと時間を使ってるよ。ほとんどのORMは命令的でイガーだから合成可能性が低いんだ。`db.orders.findAll()`みたいにすぐ実行されちゃって、DBにアクセスする前に操作を追加できない。真に合成可能なORMは、君が言ったコンパイラみたいに、TypeScriptでSQL全体の型付きDSLを定義して、クエリからASTを構築して、最後にそのグラフをSQLにコンパイルすべきなんだ。これが僕のプロジェクトTypegresの核となるアイデアだよ。もしこのパターンに興味があったら見てみてね：https://typegres.com/play/" userName="ryanrasti" createdAt="2025/09/22 23:19:01" color="#ff5c5c">}}




{{<matomeQuote body="このパターンは面白いし強力だけど、同時に何か違和感があるんだ（概念的にね、君のビジネスを貶すつもりはない、頑張ってくれ）。これらのパターンが抱える問題はいくつかあるよ。<br>- printfデバッグができない。TracingコンテキストだとRPCResultTracingObjectみたいなものしか見えないからね。<br>- DSL/Tracingコンテキストで「自然な」制御フローがない。データ依存の制御フローだと、専用のif/while/forなどを使う必要がある。<br>- DSL/Tracingコンテキストには副作用がない。AST構築のために一度だけ実行されて、その後は実行されないからね。<br>MLでの使用（JAX jitとか）が一番必要に迫られて限界を押し広げてると思う。これって全部必要な複雑さなのかな？それとも何か見落としてないかな？" userName="prngl" createdAt="2025/09/23 00:01:50" color="#785bff">}}




{{<matomeQuote body="この手のトレーシングによる複雑さは、コードをデータとして扱いづらい言語か、静的型がない場合にだけ生じると思うな。PythonはASTはいじれるけど、静的型がないんだ。MLエコシステムは静的型を採用する前に、きっとすごいことしちゃうだろうね。だから、ハックなしにグラフを構築するのは無理なんだ。例えば、torch.compile()はPythonのバイトコードレベルで機能するんだ。JAXは関数引数をプロキシにして操作を記録するけど、通常のifは使えず、lax.cond()とかを使う。C#やRust、静的型付きLispなら、こんな回りくどいことはしなくてもいいはずだよ。" userName="porridgeraisin" createdAt="2025/09/23 03:02:41" color="#38d3d3">}}




{{<matomeQuote body="そう、同じコードと同じ言語でコンパイラをライブラリとしてインラインで持てることだね。これらすべてが求めているのはそれだと感じるよ。まさにLispの核だと思うけど、静的型と異種バックエンドが必要だね。MLIRもこれを望んでるみたいだけど、C++は実用的でもエレガントじゃない。全然違うかもだけど、ここでは依存型が必要になるのかな？ある「言語」の実行時値が別の言語のコードを決定する。つまり、実行時コンパイルがあるってことだね。依存型はJITコンパイルされたコードの言語なのかも。とにかく、最も実用的なライブラリが刺激する深遠な思考だ。CloudflareはJavaScriptユーザーにもっとジャンク品を売りたいんだろうし、僕らは狂気へと降下し続けてる。EinsteinたちがAI接続のSaaS冷蔵庫を建造してるんだ。それでもなお、その中には美しさが残ってるけどね。" userName="prngl" createdAt="2025/09/23 04:20:14" color="#ff5c5c">}}




{{<matomeQuote body="このDSL/コード・イズ・データパターンの核心的な課題について、本当に素晴らしいまとめだね。データベースの文脈でこれについてたくさん考えてきたよ。printfデバッグできないって話、その通り。解決策は、AST構築のどのステップでもコンパイルされた出力を検査できるtoSQLみたいなものだろうね。SQLではサポートされてないけど、バックエンドがサポートしてたらprintf関数をバックエンドまでコンパイルできるだろうね。DSLでの「自然な」制御フローがないって話も同意。ビルドルールでif/while/forをASTにコンパイルするか、リントルールで禁止するのもありだね。副作用がないって話も同意。これも禁止されるべきか、使う前に明確に理解されるべきことだ。この複雑さが本当に必要なのか、それとも何か見落としているのかって疑問だけど、SQLの場合は100%この複雑さは正当化されるよ。コンテキストスイッチの削減、SQLでは不可能な動的な式構築（実質マクロシステム）、TypeScriptによる強力な型付けという大きな理由があるからね。まとめると、これらのDSLはより良いエルゴノミクスを実現し、間接化は強力な新しいプリミティブを解き放つことができるんだ。" userName="ryanrasti" createdAt="2025/09/23 14:03:48" color="#785bff">}}




{{<matomeQuote body="記事から引用すると、AliceとBobが接続状態でexport/import tableを管理し、ID（POSIXのファイルディスクリプタみたいだけど負のIDもOKで再利用なし）で参照するんだね。これはAndroidのBinder IPC（そしてすぐRPCも）の仕組みにすごく似てる！" userName="ignoramous" createdAt="2025/09/23 06:02:40" color="#38d3d3">}}




{{<matomeQuote body="おい、kentonvの新しいライブラリが出たぞ！GitHubリポジトリを見ると、こんなに少ないコードで実現できてるなんて驚きだね。これだけで本当に全部なの？サーバー側をElixirみたいな他の言語に移植するのもそんなに難しくないのかな？LLMに言語移植のタスクをやらせるのはどうかな？たしかkentonvは数か月前にAI生成（人間がレビュー済み）のPoCやってたよね。" userName="losvedir" createdAt="2025/09/22 20:23:00" color="#45d325">}}




{{<matomeQuote body="テストの一部はLLMが作ったけど、ライブラリ本体は違うよ。LLMがこのライブラリを書けるとは思わないな（少なくとも今の時点では）。ピースがすごく複雑なパズルのように組み合わさってるからね。コードを書くより、どうやったらうまくできるかを考えるのにずっと時間を費やしたよ。workers-oauth-providerライブラリとは全然違う。あれはよく知られた仕様を新しい（でも簡単な）APIで実装しただけだからね。<br>Pythonみたいな動的言語にはうまく移植できるかもしれないけど、静的型付け言語への移植は大変だと思う。型がわからないまま、たくさんの任意オブジェクトを反復処理する部分が多いからね。" userName="kentonv" createdAt="2025/09/22 20:32:56" color="#ff5c5c">}}




{{<matomeQuote body="ハンモック駆動開発だね :)<br>https://www.youtube.com/watch?v=f84n5oFoZBc" userName="krosaen" createdAt="2025/09/22 21:46:49" color="">}}




{{<matomeQuote body="＞型がわからないまま、たくさんの任意オブジェクトを反復処理する部分が多いからね。<br>それってただのparametric polymorphismじゃない？" userName="naasking" createdAt="2025/09/22 23:00:41" color="#ff5733">}}




{{<matomeQuote body="＞ただのparametric polymorphism<br>その3つの言葉、すごく重みがあるね。" userName="nl" createdAt="2025/09/23 04:12:43" color="">}}




{{<matomeQuote body="言語間の壁を越えるのは難しいと思うな。クライアント側のDXのためにRPC仕様をTypescriptにコンパイルするcodegenステップが必要だし、言語間のシリアライズの違いを全部考慮しないといけないからね。クロス言語RPCなら、仕様がデータとして明確なOpenAPIやGraphQLみたいなシステムにこだわる方が、片方しか理解できないコードベースの仕様より、まだ良いと思う。" userName="benpacker" createdAt="2025/09/25 12:24:18" color="#ff5c5c">}}




{{<matomeQuote body="2つ気になることがあるな。1. RPCセマンティクスを更新するアプリデプロイの最善策は？つまり、クライアントとサーバーが同じRPCバージョンで話してるかどうやって確保するのか。これはProtos/gRPC/Avroが解決しようとした課題だよね。2. 関連して、不安定な接続の最善の扱いは？export/import tableはstatefulなWS接続に直接くっついてるみたいだから、接続が切れたらstateも失われるよね。原則として、クライアント/サーバーがこのstateをキャッシュして再接続時に再インスタンス化することを妨げるものはないはずだけど、これらのテーブルにはクロージャが含まれる可能性があるから、完全にシリアライズできるわけじゃなくメモリ問題にぶつかるかも。チームがこれについて考えたかどうか興味あるな。本当にぶっ飛んだ仕事だ！" userName="thethimble" createdAt="2025/09/23 00:20:32" color="#ff5c5c">}}




{{<matomeQuote body="1. JavaScript APIを壊さずに更新するのと同じように考えてみて。ルールはローカル呼び出しの場合とRPCの場合で本質的に同じ。だから、新しいメソッドやオプション引数を追加できる、とかね。2. 接続が切れたら、再接続してオブジェクトを一から再構築する必要があるよ。実際のReactアプリでは、メインのRPCスタブをトップレベルコンポーネントに引数として渡してる。それがサブオブジェクトを取得するメソッドを呼び出して、それをいろんな子コンポーネントに渡す。接続が切れたら、再作成して新しいスタブをトップレベルコンポーネントに渡すと、他のstate変更と同じように「再レンダリング」されるんだ。全ての子は必要なサブオブジェクトをまた取得し直すよ。コールバック付きのサブスクリプションを表すオブジェクトがあるなら、購読を開始するときに、呼び出し側がサブスクリプションで最後に見たメッセージを指定できるようにAPIを設計する必要があるね。そうすれば、何も見逃さずに途切れたところから再開できるから。うーん、いつかデザインパターンのブログ投稿をする必要があるかもしれないね…" userName="kentonv" createdAt="2025/09/23 00:39:31" color="#ff33a1">}}




{{<matomeQuote body="デザインパターンのブログ投稿は本当に素晴らしいだろうね。改めて—素晴らしい仕事だよ！" userName="thethimble" createdAt="2025/09/23 01:30:46" color="#785bff">}}




{{<matomeQuote body="Cap’n Proto好きだし、RPCがフィットするならCap’n Webは面白そう。でも、RPCがプログラマの慣れた関数呼び出しモデルに合うからって、それが正しいかは疑問だよ。「Call/Returnの優しい暴政」って呼んでるんだけど、慣れてるからって不適切な複雑さを受け入れてるんじゃない？<br>関数呼び出しはツールの1つでしかないはずだから、もっと選択肢を広げようぜ！<br>論文: https://www.hpi.uni-potsdam.de/hirschfeld/publications/media...<br>ブログ: https://blog.metaobject.com/2019/02/why-architecture-oriente..." userName="mpweiher" createdAt="2025/09/23 05:23:01" color="#ff5733">}}




{{<matomeQuote body="古き良きSqueak/Smalltalk時代を思い出すね。AngularやSvelteがSignalsで解決しようとしてる変更伝播の問題は、Squeakでも似たようなことしてたよ。<br>UIみたいに他のツール（Signals、Observables、Effects、Runesなど）が良い場所はもうあるし、クライアント/サーバー通信なら「Call/Return」が光る場面だよね。" userName="KuSpa" createdAt="2025/09/23 13:34:10" color="">}}




{{<matomeQuote body="「クライアント/サーバー通信はCall/Returnが光る」って言うけど、WWWやCORBAが黙ってないよ。<br>Signalsなんかは作れるけど表現できないし、Turing MachinesやLambda Calculus、NAND gatesで何でも作れるけど、それだけじゃ足りないんだ。" userName="mpweiher" createdAt="2025/09/24 14:56:34" color="#ff5733">}}




{{<matomeQuote body="俺は、関数呼び出しの組み合わせが本当に優れてて、構成しやすく理解しやすいからこそ勝ったんだと思うよ。単に他の選択肢を試してないだけじゃない。" userName="kentonv" createdAt="2025/09/23 12:57:47" color="">}}




{{<matomeQuote body="1. 関数呼び出しが勝ったって話にはWWWが反論したいだろうね。<br>2. ツールボックスには一つしかツールがないって前提が間違ってるよ。関数呼び出しが最高でも、常にそれが正しいとは限らない。<br>John Hughesが言うように、問題解決能力を高めるには「新しい種類の接着剤」が必要なんだ。<br>3. 手続き呼び出しは特に構成可能じゃないよ。CORBAとRESTを見ればわかる。<br>論文: https://www.cse.chalmers.se/~rjmh/Papers/whyfp.pdf<br>ブログ: https://blog.metaobject.com/2019/02/why-architecture-oriente..." userName="mpweiher" createdAt="2025/09/24 14:54:01" color="#ff5c5c">}}




{{<matomeQuote body="Kentonだよ、返信ありがとう！<br>WWWはHTTPでファイルフェッチ用にデザインされたから、APIを無理やりねじ込んだRESTは変なモデルだよ。俺達はREST APIをプログラミング言語APIに変換する膨大な労力を無駄にしてる。<br>最初からプログラミング言語APIをモデル化するネットワークプロトコルに注力していれば、もっと良い状況だったはずだ。Cap’n ProtoはRESTよりずっと構成しやすいよ。" userName="kentonv" createdAt="2025/09/25 00:02:08" color="#ff5c5c">}}




{{<matomeQuote body="Kentonさん、返信ありがとう。俺の論文「Can programmers escape the gentle tyranny of call/return」が完璧に表現されてて嬉しいよ。<br>WWWのRESTとプログラムのCall/Returnにはアーキテクチャの不一致があるし、Call/Returnはほとんどの言語にハードコードされてる。「プログラミング＝手続き呼び出し」って思い込みは、Mary Shawも言ってるね。<br>RESTは「間違ってない」し「変じゃない」、WWWのアーキテクチャスタイルだよ。<br>俺はIn-Process RESTやObjective.stを開発して、RESTの方が手続き呼び出しよりずっと構成しやすいと証明したんだ。<br>[1] https://dl.acm.org/doi/10.1145/3397537.3397546<br>[2] https://dl.acm.org/doi/10.1145/3480947<br>[3] https://ics.uci.edu/~fielding/pubs/dissertation/abstract.htm<br>[4] https://objective.st<br>[5] https://2019.splashcon.org/details/splash-2019-Onward-papers..." userName="mpweiher" createdAt="2025/09/26 20:22:19" color="#ff33a1">}}




{{<matomeQuote body="これをざっと見ると、Cap’n Webはインポート/エクスポートテーブルやオブジェクトの状態を保持するために、Statefulなサーバーが必要（または強く推奨）されるみたいだね。<br>従来のRPCだと、キーを渡せば連続した呼び出しでも違うサーバーで動くけど、Cap’n Webでもインポート/エクスポートテーブルをDBに永続化したり、サーバーアフィニティとかDurable Objectsみたいなのが必要なのかな？" userName="spankalee" createdAt="2025/09/22 16:45:02" color="#ff5c5c">}}




{{<matomeQuote body="状態は単一のRPCセッションの間だけ存在するよ。<br>WebSocketを使うならWebSocketのライフタイム、HTTPバッチトランスポートなら単一のHTTPリクエストのライフタイムだね。<br>Cap’n Webに関する限り、複数のHTTPリクエストや接続間で状態を保持する必要はないよ。<br>つまり、セッションが途中で切断されても、機能が失われて大惨事にならないようなプロトコルを設計すべきってことだね。再接続して再構築できるようにしておくべき。" userName="kentonv" createdAt="2025/09/22 16:49:16" color="#ff5c5c">}}




{{<matomeQuote body="なるほど、WebSocketの再接続で状態が壊れる可能性があるってこと？これは開発する上で重要だね。再接続セッション開始時にオブジェクトグラフを再確立するとか、HTTPプロトコルを使うならバッチの最初の呼び出しに「get object」を含めるとか、対策が必要だ。" userName="crabmusket" createdAt="2025/09/22 17:50:15" color="#ff33a1">}}




{{<matomeQuote body="WebSocketが切れたら、クライアントは新しいオブジェクトのためにメソッドを呼び直す必要があるよ。古いスタブは使えなくなる。<br>Reactアプリなら、ルートスタブをpropsで渡せば、接続が再確立された時に全部うまく動くみたい。これ、かなり良い方法だね。" userName="kentonv" createdAt="2025/09/22 17:52:46" color="#ff5c5c">}}




{{<matomeQuote body="RPC SDKにはセッション管理が必須だよ。さもないと、「複雑なgRPCやCap’n’Protoプログラムは、結局Akkaの半分を独自に、非効率的に再実装しちゃうことになる」って状況に陥るからね。これ、重要な指摘だ。" userName="doctorpangloss" createdAt="2025/09/22 17:08:52" color="#ff33a1">}}




{{<matomeQuote body="元の引用は「他の言語で複雑な並行プログラムを書くと、Erlangの半分を非効率的に再実装しちゃうことになる」ってやつだよ :-) でも、君のポイントはちゃんと伝わったよ。" userName="vereis" createdAt="2025/09/22 17:26:24" color="">}}




{{<matomeQuote body="違うよ :) Greenspun’s tenth ruleだよ。https://en.m.wikipedia.org/wiki/Greenspun%27s_tenth_rule" userName="coryrc" createdAt="2025/09/22 18:32:27" color="">}}




{{<matomeQuote body="Akkaって、Erlangの廉価版みたいなもんじゃないの？" userName="paradox460" createdAt="2025/09/23 00:33:26" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ読んで気づいたんだけど、サーバーとの紐付けにWebSocketを使ってるんだね。<br>HTTPバッチングはリクエストをまとめて送るだけって感じ。<br>ロードバランシングが難しくなるし、チャッティなクライアントが同じサーバーに繋がると過負荷になりそうだから、僕はあんまり好きじゃない。<br>サーバーのスケール調整も大変だし、DDOSも簡単にできちゃいそうだよ。クライアントがただプッシュし続けてプルしないだけでサーバーが応答を保持しなきゃいけないのは、かなり問題だよね。" userName="cogman10" createdAt="2025/09/22 16:59:53" color="#785bff">}}




{{<matomeQuote body="うん、このシステムをちゃんとスケールさせるなら、ロードバランサーとかDDOS防御に、このプロトコルへの対応を追加する必要があると思うよ。" userName="fleventynine" createdAt="2025/09/22 17:54:53" color="">}}




{{<matomeQuote body="これ、GWTと大差ないよ。GoogleはGWTを長くスケールさせてきたしね。複雑なアプリだとUIサーバーが複数のAPIバックエンドと通信して、内部で負荷分散してたみたい。<br>ロードバランサーで直接サポートするより、コストとか決定をロードバランシング層に返す方が良いと思うな。<br>あと、バッチパイプライニングの例はnode.jsクライアントだから、常に別の抽象化レイヤーを追加できるね。" userName="dgl" createdAt="2025/09/23 05:38:36" color="#ff5c5c">}}




{{<matomeQuote body="僕の限られたCap’n’Protoの知識だと（前に一度ドキュメント読んだだけだけど）、サーバーもクライアントもスタブを共有できるみたいだよ。だから、サーバーCがクライアントB経由でサーバーAのスタブを受け取ったら、CはAに直接アクセスできるはず。" userName="afiori" createdAt="2025/09/22 17:15:29" color="#ff5733">}}




{{<matomeQuote body="これ、すごく良さそうだし、trpc/orpcの代わりに試すのが楽しみだよ。<br>GraphQLが解決したネストされた情報取得の問題は解決してそうだけど、DataLoaderパターンが解決するようなサーバーサイドの課題（リストのアイテムごとにDBクエリが走る問題）への解決策はまだないみたい。<br>だから、サーバーサイドのツールが成熟するまでは、サーバー間やiframe通信にだけ使って、クライアントとサーバー間の通信はもっと厳密な方法でやるかな。" userName="benpacker" createdAt="2025/09/22 15:51:25" color="#785bff">}}




{{<matomeQuote body="「.map()」トリックがGraphQLの代わりにならないってのには同意するけど、N+1問題は避けられないんだよね。でも、もしデータベースがCloudflare Durable Object内のSQLiteで、RPCプロトコルが直接SQLiteと通信するなら、N+1でも実は全然問題ないみたいだよ。<br>詳細はこちら：https://www.sqlite.org/np1queryprob.html" userName="kentonv" createdAt="2025/09/22 17:07:20" color="#ff5c5c">}}




{{<matomeQuote body="同感！僕が思うに、Cap’n Webと自然にシナジーを生むような、セキュリティとコンポーザビリティを兼ね備えたサーバーサイドのデータフレームワーク（例えばORM）がまだ一般的じゃないのが主な問題だね。Promise Pipeliningはキラー機能なのに、ORMがパイプラインに対応してないと、その間のブリッジ構築が複雑になるんだ。<br>僕は逆の立場からこの問題に取り組んでて、TypegresっていうPromise Pipeliningのキラー機能を引き出すレベルのコンポーザビリティを持つTS ORMを作ってるよ。Cap’n Webがクラスを使うのと同じように、テーブルをメソッドを持つクラスとしてモデル化して、Composable SQL式を返すんだ。興味があればこちら：https://typegres.com/play/" userName="ryanrasti" createdAt="2025/09/22 22:39:06" color="#45d325">}}




{{<matomeQuote body="これってすごくクールで、手伝いたい気持ちでいっぱいだよ（僕は今、pgtypedとKyselyのユーザーでコミュニティ貢献者なんだ）。そしてTypegresがCap’n Webに似たアプローチでPromise Pipeliningを使って「ネストした」データを取得する際のN+1問題をどう解決するかは分かるんだけど、`map`問題はまだ解決してないと思うな。<br>もしクライアント側のCap’n Webランド（投稿からね）で<br>```<br>let friendsWithPhotos = friendsPromise.map(friend =＞ {<br>  return {friend, photo: api.getUserPhoto(friend.id))};<br>}<br>```<br>って実行して、サーバークラスを素朴に実装しちゃったら、サーバー側ではデータベースから実体化されたfriendに対して`getUserPhoto`がやっぱり呼び出されちゃうんだ（実際にクエリが実行されてね）。中間的なクエリビルダーじゃなくて。<br>Kenton Vへ、TypegresみたいなクエリビルダーがこれらのRPCコールをうまく最適化するためには、RpcTargetが参照渡し制御フローを公開して、クエリビルダーが`select id from friends`を`user_photos`テーブルとのJOINなしで実行しないように決定できる必要があるんじゃないかな。" userName="benpacker" createdAt="2025/09/23 01:37:57" color="#45d325">}}




{{<matomeQuote body="「`map`問題は解決してない」って意見、同意するよ！`map`を直接使うと、Cap’n WebはまだORMに縛られちゃうからね。<br>解決策は君が言ってる通り、クエリビルダーのプリミティブを直接組み合わせる何かだよ。Typegresなら、こんな感じになるはず：<br>```<br>let friendsWithPhotos =<br>  friendsPromise.select((f) =＞ ({...f, photo: f.photo()})) // `photo()`はスカラサブクエリだよ。JOINでもいいしね<br>```<br>つまり、Promise Pipeliningを使ってサーバー上でクエリを構築していくんだ。<br>Cap’n WebがTypegresのクエリビルダー操作をパイプライン化できるようにするってのがアイデアだよ。これは他のfluentベースのクエリビルダー（KyselyやDrizzleなんか）でも可能だけど、TypegresがCap’n Webと本当に相性がいいのは、全部がすでにクラスのメソッドとして表現されてるから、アーキテクチャがCapability-readyなんだ。<br>追伸：手伝ってくれるって言ってくれて本当にありがとう！連絡先は僕のHNプロフィールにあるから、ぜひ連絡したいね。" userName="ryanrasti" createdAt="2025/09/23 14:27:19" color="#ff5733">}}




{{<matomeQuote body="それ、かなり面白いね！<br>Durable Objectsで動くSQLiteバージョンを作ることは考えたことある？" userName="kentonv" createdAt="2025/09/22 22:59:13" color="">}}




{{<matomeQuote body="Kenton、ありがとう！このアイデアを面白いって言ってくれて、本当に励みになるよ。<br>今はPostgresに集中してるんだ（フルスタックアプリで一番マーケットシェアが高いからね）。SQLiteバージョンも概念的には間違いなく可能だよ。<br>でも、君の言う通り、もっと大きな視点があるよね：Cap’n WebとTypegres（あるいは「Typesqlite」ね！笑）があれば、夢のDev Stackが実現できるかもしれない。つまり、Capabilityによってサンドボックス化されていて、SQL composabilityによってフル機能のSQLレイヤーをクライアント側で使えるようになるってことさ。" userName="ryanrasti" createdAt="2025/09/23 13:42:38" color="#45d325">}}




{{<matomeQuote body="もし、既存のJS-in-DB機能を使って、ストアドプロシージャ内でRPCエンコーディングを処理する方法があったらどうなるんだろうね？" userName="qcnguy" createdAt="2025/09/22 20:06:27" color="">}}




{{<matomeQuote body="これってかなりすごいね！Cloudflare製品（Cap’n WebはCloudflare Workersとは別物だよ）だけじゃないっていうのも嬉しいな。このセクション[1]を読んだけど、もう少し詳しく教えてほしいな：<br>「執筆時点では、両者の機能セットは完全に同じではありません。時間をかけて、足りない機能を両側に追加して一致させることを目指しています。」<br>この2つが一度完全に一致したら、そのパリティは維持されると思う？それともCap’n WebがCloudflare Workersに遅れをとる可能性の方が高いのかな？もしそうなら、どれくらいの期間で？<br>[1] https://github.com/cloudflare/capnweb/tree/main?tab=readme-o..." userName="krosaen" createdAt="2025/09/22 16:03:29" color="#ff5733">}}




{{<matomeQuote body="多分、両方の意味がある機能については、かなり近い状態を維持できると思うよ。<br>むしろCap’n Webの方がWorkers RPCより先に進むんじゃないかな（新しいパイプライン機能で既にそうしてるしね）。だってCap’n Webの実装ってWorkersよりずっとシンプルだからね。Cap’n Webが新しい機能を実験する場所になると思うよ。" userName="kentonv" createdAt="2025/09/22 16:29:53" color="#45d325">}}




{{<matomeQuote body="WunderGraphの者だけど、まずCap’n Protoとそのオブジェクト呼び出しをチェーンできるアイデアは本当に大好きだよ。Cap’n Webでこんなことができるなんて驚きだね。<br>だけど、GraphQLと比較してる例があるけど、企業が実際にクエリ言語を使う方法とはちょっと違う気がするな。まず、他の人も言ってるけど、ネストしたリストではN+1問題が起きるよね。もし各投稿で`comments()`を呼び、各コメントで`author()`を呼ぶなら、ネストしたオブジェクトごとに個別の呼び出しが何度も発生するなんて、絶対避けたいんだ。GraphQLでは、DataLoaderパターンを使えばたった3回の呼び出しで済むのにね。<br>次に、セキュリティの要素もあるんだ。WunderGraphのCosmo Routerみたいな高度なGraphQLゲートウェイは、クライアントが大量のデータを要求するのを防ぐために、きめ細かいレート制限を実装できるんだ。このRPCオブジェクト呼び出しスタイルだと、「クエリプラン」の概念がないから、API呼び出しの組み合わせを静的に分析して、実行前にコストを見積もることができないんだよね。<br>最後に、最近のGraphQLはほとんどがフェデレーションで使われてるんだ。つまり、単一のクライアントがゲートウェイ（例えばWunderGraphのCosmo Router）と通信して、ルーターがクエリプランナーを使って、複数のサブサービス（サブグラフ）から情報を効率的にロードする方法を見つけ、呼び出しを分散させるんだ。Cap’n Webは素晴らしいけど、現実的にはクライアントが多くのサービスと直接通信することになるよね。<br>だから、僕の最後のポイントとしては、Cap’n Web vs GraphQLっていう対立じゃなくて、どうやってこの2つを組み合わせられるかを考えるべきだと思うな。もしクライアントがCap’n Webを使ってフェデレーションルーターと通信して、GraphQLフェデレーションシステム内のエンティティ、つまりオブジェクト定義とやり取りできるとしたらどうだろう？<br>これって本当に探求する価値があると思うよ。他のAPIスタイルと対立するんじゃなくて、それぞれの長所を組み合わせるんだ。- https://wundergraph.com/" userName="jensneuse" createdAt="2025/09/23 05:58:40" color="#ff5733">}}




{{<matomeQuote body="みんなが言うN+1問題だけど、サーバー側の呼び出しはそんなにコストがかからないし、パイプライン処理で1回のラウンドトリップで結果が返ってくるから、そこまで問題ないんじゃない？GraphQLのData Loaderパターンだと3回の呼び出しで済むらしいけどさ。" userName="rhaps0dy" createdAt="2025/09/23 10:42:10" color="">}}




{{<matomeQuote body="N+1問題は、個別のDBクエリとラウンドトリップが増えるからダメなんだよ。GraphQLは賢く1回のラウンドトリップでJoinするはず。`map()`を使うとこは、`getComments()`とか`getCommentsWithAuthors()`みたいに、1クエリで済むメソッドに置き換えるべきだね。" userName="robmccoll" createdAt="2025/09/23 11:15:28" color="#38d3d3">}}




{{<matomeQuote body="もしサーバーがCloudflare Durable ObjectでSQLite動かしてるなら、DBへのラウンドトリップは無料だよ。でも、従来のDBだとGraphQLとの比較はちょっと無理があるかもね。それでも、クライアントサイドで全部呼び出すよりは全然マシだし、DB使わないユースケースも多いんだから。GraphQLとRPCが融合できたら最高だよね？" userName="kentonv" createdAt="2025/09/23 13:40:54" color="#45d325">}}




{{<matomeQuote body="最近、APIの上にエージェントを構築する人が多いよね。GraphQLにはselection setsがあるから、オブジェクトの部分集合を選べるんだ。これは、context windowの制限があるエージェントにとってすごく便利だよ。" userName="jensneuse" createdAt="2025/09/23 07:12:29" color="#ff5733">}}




{{<matomeQuote body="関数をやり取りできるのはマジでクール！でも、実際何に使うんだろうね？スキーマレスが良いって言われてるけど、tRPCやZodのスキーマがちゃんと定義されてるのが好きなんだ。少ない労力でスキーマのメリットを得る方法ってないの？" userName="dimal" createdAt="2025/09/22 16:34:23" color="">}}




{{<matomeQuote body="APIはTypeScriptで定義すれば、スキーマの恩恵は得られるよ。でも、TypeScriptだけじゃランタイム型チェックはできないからね。今はZodを使うのをおすすめするけど、TypeScriptの型から自動で型チェックを生成できるようになるのが俺の夢なんだ。" userName="kentonv" createdAt="2025/09/22 16:54:02" color="#785bff">}}




{{<matomeQuote body="それってさ、TypeScriptとZodでインターフェースを二重に定義するってこと？" userName="ngrilly" createdAt="2025/09/22 18:31:07" color="">}}




{{<matomeQuote body="違うよ。Zodはスキーマに対応するTypeScriptの型を提供してくれるから、Zodでスキーマを書くだけでOK。俺もTypeScriptだけ書いてランタイムチェックを自動で得られたら最高だとは思うけどね。" userName="kentonv" createdAt="2025/09/22 18:49:16" color="#785bff">}}




{{<matomeQuote body="ビルドステップが問題なければ、https://typia.io/とかhttps://github.com/GoogleFeud/ts-runtime-checksみたいな方法もあるよ。これらはhttps://github.com/moltar/typescript-runtime-type-benchmarksで見つけたんだ。" userName="sebws" createdAt="2025/09/22 22:50:24" color="#ff33a1">}}




{{<matomeQuote body="Zod.inferは知ってるんだけど、記事の例にあった`MyApi`みたいな、RpcStubやRpcTargetと互換性のあるインターフェースをどうやって生成するのかがわからないんだよね。" userName="ngrilly" createdAt="2025/09/22 19:09:41" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
