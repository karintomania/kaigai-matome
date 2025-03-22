+++
date = '2025-03-15T00:00:00'
months = '2025/03'
draft = false
title = 'Rubyist歓喜！AI開発が爆速になるRubyLLMがマジ最高らしい'
tags = ["Ruby", "LLM", "AI", "開発", "DSL"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> Rubyist歓喜！AI開発が爆速になるRubyLLMがマジ最高らしい

引用元：[https://news.ycombinator.com/item?id=43331847](https://news.ycombinator.com/item?id=43331847)

{{<matomeQuote body="このインターフェース、streamingとの連携もっとうまくならないとだめだね。レスポンスにラグがあるし、多くの人がレスポンスをノンブロッキングなスレッドでstreamしたいと思うはず。プロセスを待たせるんじゃなくてさ。ドキュメントの問題かもしれないけど、streamingは数秒以上かかるIO処理には必須でしょ。でもDSLはマジで最高。" userName="kyledrake" createdAt="2025-03-15T13:52:11" color="#45d325">}}

{{<matomeQuote body="Rubyのasync IOの世界、もっと注目されてもいいのにね。async gemとか、async-http、async-websockets、Falcon web serverとかチェックしてみて！<br>https://github.com/socketry/falcon" userName="bradgessler" createdAt="2025-03-15T17:28:01" color="">}}

{{<matomeQuote body="ありがとね！いい指摘だね。実はasync-http-faradayを使ってstreamingを改善しようとしてるところなんだ。デフォルトのアダプターをasync_httpとFalcon、async-jobを使うように設定するんだ。PumaとかSolidQueueみたいなスレッドベースじゃなくてね。これでRubyでのAIワークロードのリソース効率がマジで上がるはず。他のRuby LLMライブラリで実装されてるの知らないけど。今のブロックを使うやり方はRubyっぽいけど、asyncサポートでさらにproductionで使いやすくなるよ！" userName="earcar" createdAt="2025-03-15T21:40:30" color="#785bff">}}

{{<matomeQuote body="＞https://rubyllm.com/#have-great-conversationsから引用<br>＞”# Stream responses in real-time<br>chat.ask ”Tell me a story about a Ruby programmer” do |chunk|<br>print chunk.content<br>end”" userName="joevandyk" createdAt="2025-03-15T16:40:02" color="">}}

{{<matomeQuote body="これだと’chat.ask’が返ってくるまで同期的にブロックされるよね。streaming APIが処理を終えるまでアプリ全体のメモリ(数十～数百MB)が無駄になる覚悟は必要だよ。" userName="jupp0r" createdAt="2025-03-15T17:09:32" color="">}}

{{<matomeQuote body="Railsはグローバルな可変ステートの塊みたいなもんだから、スレッドで頑張って。" userName="jupp0r" createdAt="2025-03-16T02:19:11" color="">}}

{{<matomeQuote body="RailsのデフォルトのアプリケーションサーバーはPumaで、スレッド使ってるよ。" userName="andrewmutz" createdAt="2025-03-16T03:02:30" color="">}}

{{<matomeQuote body="そうそう。RubyにはGILがあって、インタプリタで複数のスレッドが同時に実行されるのを防いでるんだ。Pumaはスレッド持ってるけど、同時にRubyコードは実行できない。でもIOは隠せる。" userName="jupp0r" createdAt="2025-03-16T19:10:50" color="#ff5733">}}

{{<matomeQuote body="GILは、LLMとの通信に使われるHTTPリクエストみたいな一般的なIO処理の間は解放されるよ。" userName="andrewmutz" createdAt="2025-03-17T13:35:03" color="#45d325">}}

{{<matomeQuote body="それいいね！前に見なかった。" userName="kyledrake" createdAt="2025-03-15T23:05:46" color="">}}

{{<matomeQuote body="langchain みたいなクソ DX なライブラリと比べて、マジで新鮮！" userName="jatins" createdAt="2025-03-15T02:57:00" color="#ff5c5c">}}

{{<matomeQuote body="Ruby コミュニティって DUX をめっちゃ大事にしてるよね。なんで他の言語コミュニティにはないんだろ？" userName="nullpoint420" createdAt="2025-03-15T03:02:06" color="#45d325">}}

{{<matomeQuote body="他の好きなものがある人をけなすつもりはないんだけど、Ruby は趣味の良い人たちのための言語とエコシステムだと思う。" userName="toasterlovin" createdAt="2025-03-15T05:51:19" color="">}}

{{<matomeQuote body="グローバルステートが好きってことだよね、きっと。" userName="continuational" createdAt="2025-03-15T07:00:15" color="">}}

{{<matomeQuote body="特定のケースで単純化できるとしても、グローバルステートを盲目的に拒否するのはセンスないよね。goto でさえ、エレガントな時もあるじゃん。" userName="atemerev" createdAt="2025-03-15T07:38:05" color="">}}

{{<matomeQuote body="でも大抵は長期的な問題を引き起こして、重要な作業を後回しにするだけなんだよね。" userName="zelphirkalt" createdAt="2025-03-15T08:26:25" color="">}}

{{<matomeQuote body="後回しにした結果、結局やらないってこともあるから、最初から強制的にやらせる言語よりはマシってこと。" userName="bmacho" createdAt="2025-03-15T08:42:42" color="">}}

{{<matomeQuote body="でも後回しにしたせいで、グローバルステートを完全に解きほぐしてコードを再利用できるようにするのに何年もかかることもあるよね。そもそも最初にそれを使ったことで生産性が上がった？たぶん違うよね。<br>もしアプリが1年以上続くとか、3人以上でメンテするとか、50万行以上のコードになるとか（好きな指標に置き換えて）、グローバルステートの除去を後回しにするのはやめとけ。絶対後悔するし、最初からちゃんとやっても大した手間じゃないよ。<br>あと、グローバルステートを使うなって強制するメインストリームな言語はないよ。Java でさえ、必要ならグローバルステートを簡単に使えるし。" userName="lolinder" createdAt="2025-03-15T13:36:14" color="#785bff">}}

{{<matomeQuote body="それってグローバルステートのせいじゃなくて、アーキテクチャがダメダメなせいじゃない？ツール自体は悪くないよ。良いナイフも使い方次第ってこと。" userName="trevorhinesley" createdAt="2025-03-15T14:01:57" color="">}}

{{<matomeQuote body="グローバルステートって、アーキテクチャが重要なアプリだとほぼ確実に悪いアーキテクチャにつながるんだよね。 例外もあるだろうけど、システム内のどこからでも変数をいじれるようにすると、予測不能な影響が出やすくなって、大規模なコードベースではマジでヤバいことになるからね。グローバルステートを避けることで、腐敗の原因を一つ減らせるんだ。" userName="lolinder" createdAt="2025-03-15T14:13:53" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="「ほぼ」ってのがミソだよね。あなたの意見は尊重するけど、いつも絶対ダメとか言うのはどうかなって。長くいればいるほど「場合による」って思うようになるんだ。大規模なコードベースでグローバルステートをうまく使ってる例として、https://dev.37signals.com/globals-callbacks-and-other-sacril... が参考になるよ。" userName="trevorhinesley" createdAt="2025-03-15T15:40:27" color="">}}

{{<matomeQuote body="＞それはいつも絶対ダメってことじゃないよ！<br>そんなこと言ってないじゃん！例外はあるって言ってるし。ルールを教えて、本当にわかってて破るなら良いけど、そうじゃなければグローバル変数は普通だなんて思わない方が良いよ。 例外になれる可能性は低いんだから、グローバル変数は特別な場合にしか使わないようにしないとね。" userName="lolinder" createdAt="2025-03-15T16:38:34" color="#45d325">}}

{{<matomeQuote body="グローバルステートを四肢切断に例えるのは極端すぎない？そこまで悪いものじゃないと思うな。RailsのCurrent singletonみたいに、グローバル変数を使う仕組みが組み込まれてるフレームワークもあるし。確かにグローバル変数は鋭いナイフだけど、使い道もあると思うよ。あなたの言う「ほぼ絶対ダメ」ってほどじゃないかな。だから、私は「場合による」って言うよ。" userName="trevorhinesley" createdAt="2025-03-16T00:25:48" color="">}}

{{<matomeQuote body="grepできないコードも忘れちゃ困るぜ！型ヒントって一体何なんだ？" userName="IshKebab" createdAt="2025-03-15T10:08:59" color="">}}

{{<matomeQuote body="Global Interpreter Lockがお好き？" userName="techscruggs" createdAt="2025-03-15T13:44:18" color="">}}

{{<matomeQuote body="世界が小さいときはグローバルステートって便利だよね。Rubyを使う人たちは世界を小さく保つのが好きみたいで、それには他のメリットもたくさんあるし。" userName="simpaticoder" createdAt="2025-03-15T13:26:07" color="">}}

{{<matomeQuote body="Rubyは好きだけど、これはナンセンスだね。Railsアプリなんてすぐに巨大化するじゃん。どんなフレームワークでも同じだよ。世界を小さく保つなんて宣言できないよ。問題の大きさ次第だよ。" userName="lolinder" createdAt="2025-03-15T13:32:40" color="">}}

{{<matomeQuote body="ある種の趣味だね。" userName="madeofpalk" createdAt="2025-03-15T12:18:33" color="">}}

{{<matomeQuote body="MatzさんがRubyは開発者の幸せを最適化するように設計したって言ってたよ。それが作られたときからの言語の核となる原則なんだって。" userName="choxi" createdAt="2025-03-15T03:08:50" color="#38d3d3">}}

{{<matomeQuote body="コードを書く開発者の幸せは、それを読んだりデバッグしたりする人の不幸になることもあるよね。2009年頃に数年間Rubyで仕事してたんだけど、method missingでロジックが実装されたコードを扱った経験は、今でも最悪の記憶だよ。" userName="kuboble" createdAt="2025-03-15T07:48:41" color="">}}

{{<matomeQuote body="`binding.irb`と`show_source`は、Rubyのデバッグですごく役に立ったな。`binding.irb`でブレークポイントを設定して、`show_source`でメソッドのソースコードを見つけることができるんだ。生成されたコードでも見つけられるのがすごいよね。" userName="MatthiasPortzel" createdAt="2025-03-15T11:50:32" color="#ff5c5c">}}

{{<matomeQuote body="Rubyを何年も使ってるけど、デバッガで`show_source`をこんな風に使うなんて考えたこともなかったよ。ありがとう、親切な人。おかげで今日は良い日になったよ！" userName="richjdsmith" createdAt="2025-03-15T18:12:17" color="#ff5c5c">}}

{{<matomeQuote body="Rubyのforwarded methodsも面倒なんだよね。生成されたインジェクションコードで作られてるから、どのメソッドに転送されるかを実行時に簡単に調べられないんだ。" userName="viraptor" createdAt="2025-03-15T09:07:50" color="">}}

{{<matomeQuote body="そうそう、それがまさに’切れ味の良いナイフ’ってやつだよね。俺が勧めるのは（そして目指してるのは）、’ライブラリ’コードにだけそのナイフを使うこと。アプリケーションコードは’シンプル’に保つべき（そうすればずっと扱いやすくなる）。そうしないと、マジでめちゃくちゃになっちゃうよ！" userName="RangerScience" createdAt="2025-03-15T19:58:06" color="#ff5733">}}

{{<matomeQuote body="どの言語も何か（またはいくつか）を優先してるよね。なぜなら、どの言語も理由を持った人（または人々）によって作られたから。Pythonなら正確さ、Javaなら分業、Goなら’シンプルさ’みたいな感じかな（もちろん、これらがそれぞれの言語の唯一の優先事項ってわけじゃないけどね）。別のコメントにもあるように、Matzさんは開発者の幸せを優先したんだよ。<br>俺が好きな例は、Rubyの配列演算の素晴らしさと奇妙さ。減算（`arr1 - arr2`）は要素ごとの削除だけど、加算（`arr1 + arr2`）は単純な追加。ほとんどの場合、これらはまさにやりたいことだけど、数学的には完全に’間違ってる’よね。" userName="RangerScience" createdAt="2025-03-15T19:55:53" color="#ff33a1">}}

{{<matomeQuote body="＞ python and correctness<br>Pythonは読みやすさと’一つのことを行うためのただ一つの方法’だと思ってた。" userName="okeuro49" createdAt="2025-03-15T21:40:42" color="">}}

{{<matomeQuote body="えーと、Goもそうじゃないの？個人的にはGoのツールの方が使いやすいな。" userName="rochak" createdAt="2025-03-15T07:25:34" color="">}}

{{<matomeQuote body="どっちもDXを最適化してると思うけど、アプローチが全然違うよね。Rubyはコードを書くことに重点を置いてる。つまり、表現力豊かで直感的で楽しいものにするってこと。<br>Goは高速で堅牢なシステムを構築しやすくすることに重点を置いてる。でも、コード自体が醜くてボイラープレートだらけでも気にしないんだ。<br>経験を積むにつれて、Goのトレードオフを本当に評価するようになったよ。最初は楽しくないけど、4時にサーバーアラートを受け取る可能性は低い。何を作るかにもよるけどね。" userName="danenania" createdAt="2025-03-15T07:40:52" color="#ff5c5c">}}

{{<matomeQuote body="Goのエコシステムはマジ良いよね。でもGoってシンタックスがちょっとアレだから、RubyみたいにDSL作れないんだよねー。Rubyは表現力が高い分、ちょっと重いんだよね。個人的にはチーム開発ならGo、個人開発ならRubyLLMかな。" userName="jatins" createdAt="2025-03-15T07:32:48" color="">}}

{{<matomeQuote body="「DSL作れる＝開発者体験が良い」ってのは違う気がするなー。RubyとGoは、開発者体験の重視ポイントが違うんだよね。Rubyは最初のコード書く人の体験優先、Goは後からメンテする人の体験優先。どっちが良いかは、新規コード書く時間とメンテ時間の割合で変わるんじゃない？" userName="lolinder" createdAt="2025-03-15T13:42:36" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Goがメンテしやすいってのは違うと思うな。コード量が多いほどメンテは大変になるし。Goは一行一行は読みやすいけど、全体像を掴むのが難しいんだよね。Goの変更って、予想以上にアプリの奥深くまで影響することが多いし。でもruntimeは最高だから、人気は落ちないと思うけど。" userName="smw" createdAt="2025-03-15T18:51:37" color="">}}

{{<matomeQuote body="＞More lines of code typically makes maintenance more difficult.<br>コード量が多いってのは表面的な問題かもね。Goはファイル単体の読みやすさより、抽象化や間接参照の連鎖を最小限にすることに重点を置いてると思う。ロジックや設定がファイルにまとまってて、”Go to definition”を1、2回クリックすれば大体わかる。ボイラープレートは多いけど、ファイル間の結合は弱い。Rubyの美しいDSLは、壊れたり拡張が必要になったりすると大変。変更が色んなファイルに影響したり、テストを修正する必要が出てくる。" userName="danenania" createdAt="2025-03-15T19:30:12" color="#785bff">}}

{{<matomeQuote body="＞or else just one or two “Go to definition” clicks away<br>これマジ重要。メンテ担当者はstatic analysisとかgrepでコードを理解する必要がある。Rubyは性質上static analysisが難しいけど、Goはその逆。" userName="lolinder" createdAt="2025-03-15T21:45:33" color="#785bff">}}

{{<matomeQuote body="RubymineとかGolandのctrl-bがマジ使える。5年以上前から他のエディタより全然良かった。今はlspがあるから、違いは小さくなってるのかな？" userName="smw" createdAt="2025-03-20T21:33:21" color="">}}

{{<matomeQuote body="Goでも同じようなAPI作れるんじゃない？エラー処理とかoptional argumentsがないとか、言語特有の違いはあるけど。WithSomething()をAsk()の前に置く必要があるくらいかな。" userName="drdaeman" createdAt="2025-03-15T21:59:32" color="">}}

{{<matomeQuote body="昔Langchainに貢献してたんだけど、最初は良かったんだよねー。チャットモデルとかツールとかJSON modeとかがなかった頃の話だけど。LangchainがLLMメーカーに機能追加を促したけど、いつの間にか廃れてゾンビみたいになっちゃった。LLMプロバイダーが色々追加して、walled garden化してるし。Langchainは何度も方向転換しようとしてるけど、投資を受けずにいたら、コアチームはOpenAIとかAnthropicとかに行ってただろうね。" userName="jasongill" createdAt="2025-03-15T15:06:16" color="#ff33a1">}}

{{<matomeQuote body="langchainとかllamaindexってマジgarbage librariesだよね。ドキュメントは半分もないし、APIはバージョンごとに壊れるし。" userName="ekianjo" createdAt="2025-03-15T03:40:54" color="">}}

{{<matomeQuote body="それ言おうと思ってた。これらのライブラリに頼らず、自分で全部作ることにしたんだよね。PythonLLMがあっても良いかもね。Python界隈はdeveloper experienceを気にしてる人がいないみたいだし。" userName="brokegrammer" createdAt="2025-03-15T10:35:29" color="">}}

{{<matomeQuote body="誰かJavaScriptとかTypeScriptで同じくらいDXが良い感じのライブラリ知らない？" userName="olegp" createdAt="2025-03-15T04:57:48" color="">}}

{{<matomeQuote body="もしかして: https://llmjs.themaximalist.com/ かな" userName="mathgeek" createdAt="2025-03-15T10:15:14" color="">}}

{{<matomeQuote body="でも例には気を付けてね！<br>https://github.com/crmne/ruby_llm/issues/25" userName="gregmolnar" createdAt="2025-03-15T15:04:34" color="">}}

{{<matomeQuote body="ご指摘ありがとう。evalはドキュメントの中だけで、あくまで例として載せてたんだけど、危険なパターンを推奨したくないから修正したよ。" userName="earcar" createdAt="2025-03-15T21:32:00" color="#ff33a1">}}

{{<matomeQuote body="bobby drop table、まだあるあるなんだね" userName="soheil" createdAt="2025-03-15T21:10:13" color="">}}

{{<matomeQuote body="これのおかげでRails試してみようかな？Rubyのシンタックスってマジで良いよね。" userName="ketzo" createdAt="2025-03-15T03:47:40" color="#45d325">}}

{{<matomeQuote body="見た目がめっちゃ良くてクリーンなハイレベルAPIが良い感じだよね（もちろん仕事に合えばだけど）。<br>このAPIのセマンティクス（インスタンスビルダーで設定して、ask/paint/embedで言語ネイティブな方法でストリーミングと宣言的なツールを扱う）は、他の言語でも美しくて使いやすいと思うな。例えばPython、C#、Erlangとか。このレベルのAPIじゃ十分じゃないかもしれないけど、開発時間は確実に短縮できるはず。" userName="drdaeman" createdAt="2025-03-15T04:05:06" color="#ff5733">}}

{{<matomeQuote body="マジで美しい。Rubyって表現力豊かで簡潔だよね。<br>TypeScriptのオプションを見ると、自分で自分に水責めしてるみたいじゃん。" userName="ilrwbwrkhv" createdAt="2025-03-15T03:21:37" color="#ff5733">}}

{{<matomeQuote body="これって本当にRubyなの？インターフェースが良いだけじゃない？TypeScriptの例もそんなに変わらないと思うけど。<br><br>＞// Just ask questions<br>＞const chat: Chat = LLM.chat;<br>＞chat.ask(“What’s the best way to learn TypeScript?”);<br>＞<br>＞// Analyze images<br>＞chat.ask(“What’s in this image?”, { image: “ts_conf.jpg” });<br>＞<br>＞// Generate images<br>＞LLM.paint(“a sunset over mountains in watercolor style”);<br>＞<br>＞// Create vector embeddings<br>＞LLM.embed(“TypeScript is powerful and scalable”);<br>＞<br>＞// Let AI use your code<br>＞class Calculator {<br>＞  description = “Performs calculations”;<br>＞  params = {<br>＞    expression: { type: “string”, desc: “Math expression to evaluate” },<br>＞  };<br>＞<br>＞  execute(args: { expression: string }): string {<br>＞    return eval(args.expression).toString();<br>＞  }<br>＞}<br>＞<br>＞chat.withTool(new Calculator()).ask(“What’s 123 * 456?”);" userName="gedy" createdAt="2025-03-15T14:20:04" color="">}}

{{<matomeQuote body="余分な括弧、セミコロン、キーワード、型アノテーションが多いんだよね。Rubyは読みやすさを最優先にしてる。TypeScriptも読めるけど、構文をスキャンしたりコードを書いたりするのにRubyより労力がかかると思う。<br>あと、`const chat: Chat = LLM.chat;` はクラスのインスタンス化じゃなくて、Rubyは裏でやってるんだよね。ファクトリを作るには、さらに括弧が必要じゃん！<br>これは主にシンタックススタイルの問題だね！" userName="williamcotton" createdAt="2025-03-15T15:18:04" color="#785bff">}}

{{<matomeQuote body="追加の括弧とかセミコロン、キーワード、型アノテーションのことだよね。細かい文法の違いなんて、重要じゃないと思ってたんだ。構文を勉強中の人とか、色んな言語を見たことない人以外は気にしないんじゃないかな？<br><br>もちろん人それぞれだけど、APIで色々やったり、一回の呼び出しで便利なものが返ってくる方が嬉しいな。セミコロンとかインデントとか括弧とか、些細なことすぎて気にならない。コードが何をするかしか見てないし(typoは別だけど笑)。<br><br>たぶん昔のC vs Pascal vs BASICのsyntax論争のせいかな。SchemeとかLisp書くときも、括弧なんて「見えてなかった」し。でも今Lispのコード見るとsyntaxが変に見えて時間がかかるなー、最近使ってないから。<br><br>結局は人それぞれだけど、`const chat = new LLM.Chat();`と`chat = RubyLLM.chat`は同じことだと思うんだよねー。画面のtokenなんて覚えてないし、どっちも「chat objectを作ってchatに代入する」って認識してる(言葉にはしないけど)。`const`とか`;`とかで悪くなるとは思わないな。でも実験したわけじゃないから、間違ってるかも。実験方法もわかんないし。<br><br>＞`const chat = new LLM.Chat();`と`chat = RubyLLM.chat`は同じことだと思う<br><br>みたいな感じかな。" userName="drdaeman" createdAt="2025-03-15T22:46:43" color="">}}

{{<matomeQuote body="chat = RubyLLM.chat<br><br>って、曖昧じゃね？代入なのか新しいオブジェクトの生成なのかわかんないし。読みやすいとは思えないな。" userName="maleldil" createdAt="2025-03-15T16:02:57" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Rubyistなら完璧に理解できるよ。よくある書き方だし。" userName="xutopia" createdAt="2025-03-15T19:08:49" color="">}}

{{<matomeQuote body="「代入か新しいオブジェクトの生成か」ってどういうこと？RubyLLM.chatが返すものをchatに代入するだけじゃない？関数名がもっとわかりやすい方がいいってことかな？" userName="shellac" createdAt="2025-03-15T17:09:38" color="">}}

{{<matomeQuote body="`chat`がRubyLLMのfield/property/memberなのか、method呼び出しなのかが不明ってこと。" userName="maleldil" createdAt="2025-03-15T18:04:18" color="">}}

{{<matomeQuote body="Rubyにはmethodしかないし、全部objectだよ。だから問題ない。" userName="nickisnoble" createdAt="2025-03-15T18:17:24" color="#ff5c5c">}}

{{<matomeQuote body="そう思うのは勝手だけど、Ruby触ったことある人ならわかるでしょ。Rubyにfield/property/memberなんてないんだから。methodしかない。括弧はmethod呼び出しでは省略可能。" userName="caseyohara" createdAt="2025-03-16T01:04:22" color="#ff33a1">}}

{{<matomeQuote body="へー、考えさせられるね。<br>Ruby: パーティーに遅れてきたけど、ビール樽持ってきた。" userName="freen" createdAt="2025-03-15T03:08:13" color="">}}

{{<matomeQuote body="https://github.com/alexrudall/ruby-openai<br><br>を長年使ってるけど問題ないよ。良いgemだし。" userName="wtf242" createdAt="2025-03-15T04:31:39" color="">}}

{{<matomeQuote body="どうもありがとう、気に入ってくれて嬉しいよ！RubyのAIライブラリが増えるのは良いことだと思う。" userName="strudey" createdAt="2025-03-15T18:39:10" color="#ff5733">}}

{{<matomeQuote body="RubyにはすでにLLMと連携するためのツールがたくさんあるよね。TorchやTensorflowみたいなものへのバインディングも長年あるし。" userName="dismalaf" createdAt="2025-03-15T04:13:18" color="">}}

{{<matomeQuote body="Rubyは元気いっぱいだよ！" userName="aguynamedben" createdAt="2025-03-15T04:59:45" color="">}}

{{<matomeQuote body="LLMとやり取りするためのAPIとして、めっちゃ簡潔だね！OllamaのサポートPRが下書きにあるの楽しみ！" userName="init0" createdAt="2025-03-15T04:54:38" color="#ff33a1">}}

{{<matomeQuote body="LLMベースのアプリのスクリプトを書いてるんだけど、これめっちゃ簡単に感じる！" userName="jiangplus" createdAt="2025-03-15T06:14:28" color="#45d325">}}

{{<matomeQuote body="例えば、<br>chat.ask ”What's being said?”, with: { audio: ”meeting.wav” }<br><br>みたいな場合に、本番環境で使うより、何かをテストするための使い捨てコマンドを実行するCLIみたいなものに便利だと感じるな。ユーザーが75%の時間しか有効なレスポンスを得られないのは嫌だよね、たぶん？" userName="soheil" createdAt="2025-03-15T21:03:54" color="">}}

{{<matomeQuote body="構文がマジで美しい！" userName="tommica" createdAt="2025-03-15T10:16:20" color="">}}

{{<matomeQuote body="Rubyから俺が受けた印象は、構文が重要ってこと。良い構文はプログラマーを幸せにするんだよね。" userName="nextaccountic" createdAt="2025-03-15T10:18:33" color="#45d325">}}

{{<matomeQuote body="いろんな言語のソフトウェアをサポートしてるけど、Rubyは一番構文的に刺激的だわ。" userName="dkobia" createdAt="2025-03-15T15:51:08" color="#45d325">}}

{{<matomeQuote body="綺麗さとシンプルさを混同してるんじゃない？あの”美しい”構文の裏にはたくさんの複雑さと魔法が隠されてるんだよ。スクリプトや小さなプログラムには最高だけど、大規模プロジェクトでは悪夢だよ。単純すぎるんだ。" userName="brink" createdAt="2025-03-15T22:31:13" color="">}}

{{<matomeQuote body="他人の好きなものを否定するのはやめとけってことだね。<br>Rubyのトレードオフが好きな人はたくさんいるし、Shopify、GitHub、GitLab、Airbnb、Stripeみたいな超巨大企業がRubyをめっちゃうまく使ってるじゃん。<br>嫌なら使わなきゃいいんだよ。" userName="the_gastropod" createdAt="2025-03-16T02:32:23" color="#45d325">}}

{{<matomeQuote body="こっちの好きにさせてもらうわ。<br>あんたの承認なんかいらないし。<br>Rubyは10年やったから、この件に関しては多少は発言権あると思ってる。" userName="brink" createdAt="2025-03-16T03:12:42" color="">}}

{{<matomeQuote body="このライブラリのシンプルさにマジで感動した！<br>レスポンス待ちが問題になるのは確かだね。<br>そういう用途向けじゃないと思うけど、インプットに基づいて成果物を処理・作成するツールには使えるんじゃないかな。<br>MistralとローカルLLMが大好きなんで、これはぜひ追加したいところだね。" userName="desireco42" createdAt="2025-03-15T19:18:00" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
