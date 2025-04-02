+++
date = '2025-03-26T00:00:00'
months = '2025/03'
draft = false
title = 'OpenAI、Agents SDKにMCPサポート追加！AIアプリ開発がUSB-Cのように手軽になる！？'
tags = ["OpenAI", "Agents SDK", "MCP", "AI", "プロトコル"]
featureimage = 'thumbnails/color3.jpg'
+++

> OpenAI、Agents SDKにMCPサポート追加！AIアプリ開発がUSB-Cのように手軽になる！？

引用元：[https://news.ycombinator.com/item?id=43485566](https://news.ycombinator.com/item?id=43485566)

{{<matomeQuote body="今日、MCPにStreamable HTTPが追加されたのは大きな進歩だね。リモートのHTTPサーバーとの間に常時接続が不要になったから。でも、仕様を見ると、LSPみたいなパラダイムをHTTPサーバーに持ち込むのは複雑すぎる気がする。たとえば、tool callはこんな感じ。<br>{”jsonrpc”: ”2.0”, ”id”: 2, ”method”: ”tools/call”, ”params”: {”name”: ”get_weather”, ”arguments”: {”location”: ”New York”}}}<br>これって、普通に`/get_weather`に`{ ”location”: ”New York” }`をPOSTするだけじゃん？もっとシンプルにして、普通のHTTPサーバーにフォールバックする方がいいと思うんだよね。Authorizationヘッダーでセッションをネゴして、OpenAPIとかJSON Schemaでエンドポイントを定義すればいいじゃん。" userName="keithwhor" createdAt="2025-03-26T21:27:48" color="">}}

{{<matomeQuote body="めっちゃ同意。MCPは複雑すぎる。何のメリットがあるのかわからない。カスタムのdev toolが必要になるから、時間の無駄になる可能性が高い。伝統的なプロトコルって感じもしないし。結局、みんなが使うから実装するんだろうけど、正しいアプローチだとは思えない。もっとシンプルなHTTPベースのOpenAPIサービスの方が良かったのに。" userName="_pdp_" createdAt="2025-03-26T22:04:38" color="#38d3d3">}}

{{<matomeQuote body="ローカルサービスに`stdio`を使うのはマジで理にかなってると思う。JSONRPCも込みでね。でも、リモートのHTTP MCPサーバーには、もっと簡単な解決策があるべき。昔、OpenAIが`.well-known/ai-plugin.json`っていうプラグインを発表したじゃん。あれはAPI specへのリンクを含んでて、ChatGPTがそれを読んでAPI全体を理解できるっていうやつ。あれはマジでクールだった。<br>ChatGPT Pluginsは失敗したけど、それは技術的な問題じゃなくて、統合に対する需要がまだなかったからだと思う。会社はまだ独自のLLMスタックを構築し始めたばかりだったし、ChatGPT desktopもなかったし。" userName="keithwhor" createdAt="2025-03-26T22:11:21" color="#ff33a1">}}

{{<matomeQuote body="わかる。OpenAIがやったことはシンプルで美しかった。あと、MCPサービスがプラグアンドプレイだって勘違いしてる人がいる気がする。そうじゃないんだよね。関数名とか説明はプロンプトそのものだから、呼び出し方を調整するために変更する必要があるはず。MCPサーバーはそういう拡張性を想定してないから、プロンプトにコンテキストを追加するしかない。でも、それって経験がないと難しいんだよね。" userName="_pdp_" createdAt="2025-03-26T22:24:33" color="#45d325">}}

{{<matomeQuote body="プロンプトを渡すだけじゃないんだよね。Rampみたいなプロダクションシステムでは、エンドポイントからデータを処理するためにカスタムのETLパイプラインを構築して、構造化されたトランザクションデータをLLMコンテキストウィンドウに提供するために別のデータベースをホストする必要があった。<br>promptとかcontextの管理はマジボトルネックになる。MCPサーバーは、タスク関連のpromptとかtool wrapperを必要な時に動的にフェッチすることで、prompt loaderとして機能する。" userName="sarthak_chauhan" createdAt="2025-04-01T20:11:58" color="">}}

{{<matomeQuote body="MCPは業界全体の共同作業を目指してるってのが良い点だよね。pluginsはOpenAI固有のものだったけど。だから、貢献して開発をdirectionできる可能性がある！このdialogueは役に立つと思うし、開発者がGitHubとかで反応してくれると嬉しいな。" userName="keithwhor" createdAt="2025-03-26T22:29:24" color="">}}

{{<matomeQuote body="MCPのユースケースはローカルのfilesystemタスクだと思ってたから、このコメントを理解するのに時間がかかった。ファイルを操作するのがLLMの主要なユースケースなんだよね。AnthropicがリリースしてClaude Desktopに統合して以来ずっと。でも、web requestを想定してる人もいるんだね。" userName="mordymoop" createdAt="2025-03-27T00:00:42" color="">}}

{{<matomeQuote body="なるほどね。でも、それなら「Local-first MCP」と「Remote MCP」を区別するべきだと思う。APIエンジニアの多くは「すでに確立された方法があるんだから、それで標準化しようぜ」って思ってるんじゃないかな。" userName="keithwhor" createdAt="2025-03-27T00:11:55" color="#45d325">}}

{{<matomeQuote body="同意だね。STDIOとか、Cursor/Windsurfみたいな既存のアプリでMCPを使うケースが多いよね。多くの開発者は独自のツールを構築して統合したいと思ってるけど、サーバーの構築、クライアントのバンドル、追加のlatencyを考えると、ROIに見合わないんじゃないかな。セキュリティがMCPで”handle”されるって思ってる人もいるみたいだけど、それは早計かも。全体的には正しい方向への一歩だけど、まだ初期段階だね。" userName="vykthur" createdAt="2025-03-31T15:59:46" color="">}}

{{<matomeQuote body="CloudflareのRemote MCP setupで、この問題のどれくらいがすでに解決されてるんだろう？" userName="sarthak_chauhan" createdAt="2025-04-01T20:24:22" color="">}}

{{<matomeQuote body="マジそれなー。MCPとかLangChainみたいなのを見ると、オレもついに「最近の若いモンは」って言うおじさんになっちまったかって思うわ。でも、若い頃だったら絶対ワクワクしてたと思う。" userName="tlrobinson" createdAt="2025-03-26T23:30:36" color="">}}

{{<matomeQuote body="LangChainは客観的に見てヒドいフランケンシュタインみたいなAPIだよな。若い頃に優秀な開発者だったとしても、軽蔑してたと思うし、MCPにも用心するだろうね。MCP APIもかなりアレだけど、モジュール性、統合、エージェントツールに関して新しいパラダイムが生まれ始めてて、現時点ではMCPが唯一の現実的な選択肢なんだよね。" userName="soulofmischief" createdAt="2025-03-26T23:57:43" color="#45d325">}}

{{<matomeQuote body="MCP APIのどこがダメなの？シンプルで広く使われてる標準ベースのトランスポート使ってるし、カスタム実装もできるし。シンプルなAPIで、ライブラリなしでもどんな言語でも簡単に使えるじゃん？" userName="zambachi" createdAt="2025-03-27T17:26:58" color="#ff5c5c">}}

{{<matomeQuote body="LangChainの何が問題か詳しく教えてほしいなー。ウチは柔軟で安定してる抽象化レイヤーっぽいから使おうとしてるんだけど、何か見落としてる点があるのかな？" userName="gnatolf" createdAt="2025-03-27T04:48:30" color="#38d3d3">}}

{{<matomeQuote body="LangChainは手っ取り早く始めるには良いけど、不要な抽象化で本質的な難しさが分かりにくくなっちゃうって気付く人が多いんだよね。" userName="gregorymichael" createdAt="2025-03-27T05:01:21" color="">}}

{{<matomeQuote body="型なしJSONの塊とPythonのスープで、全部複雑に非同期で動いてる感じ。<br>エージェントの状態にこの変数ある？<br>場合による！1時間前に起動したエージェント？変更前の状態？マネージャーの状態？前のエージェントは正常に動いた？何か問題なかった？" userName="davedx" createdAt="2025-03-27T08:28:53" color="">}}

{{<matomeQuote body="作りたいプロダクトよりも、ツールやフレームワークとの戦いに時間取られちゃうんだよね。" userName="jinushaun" createdAt="2025-03-27T08:12:51" color="#ff5c5c">}}

{{<matomeQuote body="意味不明なエラーでハゲそうになるし、ドキュメントはコロコロ変わるし。" userName="anxman" createdAt="2025-03-29T17:33:20" color="">}}

{{<matomeQuote body="マジでIT業界から足を洗おうか考え中。" userName="davedx" createdAt="2025-03-27T08:26:46" color="">}}

{{<matomeQuote body="え、MCPとLangChainが原因で？" userName="romankolpak" createdAt="2025-03-27T12:04:26" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="マジそれなー。文化的な影響ってやつ？Vibe codingとか、何でもかんでも詰め込んだアプリとか、k8sだらけ、エージェントだらけ。業界全体がマジで迷走してて、具体的なビジネスの問題解決よりも、なんかフワッとした万能薬に向かって突っ走ってる感じ。昔からそうだったけど、AIがコーディングツールに入ってきてから特にヤバい気がする。個人的な意見だけどねー。" userName="davedx" createdAt="2025-03-30T15:42:16" color="">}}

{{<matomeQuote body="わかるー。OpenAPIの仕様をAIに渡して、全部やらせた方が上手くいったわ。MCPの構造とかツールガイダンスは良いと思うけど、REST APIとウェブサーバーじゃダメだったのかな？" userName="pcarolan" createdAt="2025-03-26T22:25:11" color="">}}

{{<matomeQuote body="それなー。うちのユースケースは「リモートツーリング」、つまりAPIの呼び出しが多いんだよね。APIをラップするためにMCPサーバーを実装するのって、実装もインフラもめっちゃ複雑じゃね？GraphQLはAPIの定義にはマジで良い感じの「セマンティック」なインターフェースだと思う。GraphQLのスキーマは説明文を書けるし、人間にも読みやすいし。データヘビーなAIのユースケースでは、GraphQLの柔軟性が良い感じで、データの深さを変えれるから、コストとかLLMアプリのパフォーマンス制御に役立つ。" userName="mbroecheler" createdAt="2025-03-27T15:26:32" color="#785bff">}}

{{<matomeQuote body="マジかー。すごい。思いつかなかった。GraphQLはあんまり好きじゃないんだけど、それマジで良いかも。まだコード見てないし、ここで聞くことじゃないかもだけど、このライブラリって、どんなGraphQLサーバーでも使える感じ？" userName="_pdp_" createdAt="2025-03-27T20:46:54" color="">}}

{{<matomeQuote body="まさに俺が言いたいこと：<br>＞https://taoofmac.com/space/notes/2025/03/22/1900" userName="rcarmo" createdAt="2025-03-27T08:05:59" color="">}}

{{<matomeQuote body="「ツール呼び出し」はMCPの一部でしかないんだよね。サーバー側からクライアントに何かをさせる「サンプリング」とかもある。ツール呼び出しに関しては、MCPみたいなレイヤーがあるのは理にかなってると思う。REST-APIがないものとか、コンピューターへの直接アクセスが必要なものもあるし（ファイルシステムとかプロセスとか）。例えば、DBやRedisインスタンスでSQLコマンドを実行したり、Dockerコンテナを起動したり、SSHでサーバーに接続してコマンドを実行したり、ファイルを読んで必要な情報を抽出したり（OCRとか）、WebDriverプロトコルを使ってリモートブラウザを制御したり、バックエンドへの永続的な接続が必要だったり。REST-APIだけのユースケースなら、MCPはSwagger/OpenApi-Specがやろうとしてることと同じだと思う。つまり、何らかのフォーマットを強制して、各エンドポイントに「名前」とパラメータのリストを与える。問題は、これらのAPI仕様をLLMにツールとして渡す標準的な方法がないことだね。将来的には、MCPサーバーが既存のAPI仕様ファイルを解析して、それらのAPIをツールとして公開するライブラリ/抽象化が作られると思う。REST APIとのステートフルなやり取りを可能にするために、コンピューター上のローカルな状態と組み合わせることができる。" userName="pulkitsh1234" createdAt="2025-03-27T07:14:31" color="#38d3d3">}}

{{<matomeQuote body="OpenAPIの仕様をMCPの仕様に変換するツール作ったった：<br>https://www.open-mcp.org<br>(デプロイしたばっかだから、DNSがまだ伝播してないかも…)" userName="dan-kwiat" createdAt="2025-03-27T16:52:57" color="#ff33a1">}}

{{<matomeQuote body="APIのMCPサーバーを作ろうとしたら500エラーが出た。<br>使ったURL：https://engineapi.moonstream.to/metatx/openapi.json<br>レスポンスボディ：{success: false, error: サーバーURLはhttps://またはhttp://で始まる必要があります}" userName="zomglings" createdAt="2025-03-27T20:37:58" color="">}}

{{<matomeQuote body="個人的にはRPCの方がRESTより好きなんだけど、ここで面白いのは、(1)「tools/call」っていう（リモートの）メソッドを呼ぶRPCがあって、それは(2)「get_weather」っていうメソッドを呼ぶ、っていうこと。両方のメソッドに引数があるんだけど、「tools/call」の引数は「params」って呼ばれてて、「get_weather」の引数は「arguments」って呼ばれてる。" userName="ants_everywhere" createdAt="2025-03-27T01:58:02" color="">}}

{{<matomeQuote body="めっちゃわかる。俺もずっと戦ってきたんだよねー。すべてのエンドポイントをPOSTとJSONのパラメータにする会社を作って、SDK開発を簡単にしようとしたんだ。SOAPみたいな感じで。なんでHTTPメソッドが必要なんだ？ほとんどのSDKは.retrieveとかに単純化してるのに。なんでエンドポイントに名前を付けないんだ？ってね。で、気づいたのは、これらの仕様は長期間にわたって安定していて、多くのエッジケースを処理するから価値があるんだってこと。あと、システム統合の観点から言うと、みんなすでに知ってるし、訓練されてる。長年かけて、コモンズの知恵を受け入れた。" userName="keithwhor" createdAt="2025-03-27T02:08:15" color="#785bff">}}

{{<matomeQuote body="アドホックなRPCってJSON request/responseでHTTP使うやつでしょ？それってJSON-RPC 2.0よりダメじゃね？RESTじゃなくても（HATEOASは置いといて）RPCになるし、ちゃんと書いててもアドホックだよ。<br>[1] そうじゃなくてもREST（HATEOASでも良い）はRPCだし、ちゃんとドキュメントされててもアドホックってこと。<br>[2] https://www.jsonrpc.org/specification" userName="michaelsbradley" createdAt="2025-03-27T00:59:03" color="">}}

{{<matomeQuote body="HATEOASの皮肉な点は、LLMこそがHATEOASに必要な「進化できるエージェント」だってこと。HATEOASは人間レベルの知能を前提にしてて、エンドポイントを自動でクロールして、人間の言葉で書かれたドキュメントを読むことを期待してたんだよね。ブラウザみたいなクライアントしかHATEOASに対応できないのは、構造が動的に変わるAPIへの対応を人間に任せてるから。" userName="imtringued" createdAt="2025-03-27T09:17:32" color="">}}

{{<matomeQuote body="なんでツールの例でget_weatherの場所がいつも「New York」なの？" userName="antupis" createdAt="2025-03-27T06:32:48" color="">}}

{{<matomeQuote body="めっちゃ同意。ACI.devってマネージドな認証付きツール呼び出しプラットフォームで同じことやってるよ。<br>https://www.aci.dev/<br>うちはlist_tools()だけじゃなくて、もっと柔軟なツール発見機能を提供してる。" userName="thisisfixer" createdAt="2025-03-27T12:07:50" color="">}}

{{<matomeQuote body="BLAH（Barely Logical Agent Host）ってのを作ってるんだけど、これは標準（スキーマがある）で、周りにツールのエコシステムがあるんだ。(opensourceでロックインなし) MCPは単なる「ブリッジ」って感じ。BLAHはSLOPとかOpenAPIもサポートしてるし。例えば、blah.jsonでツールを定義して、`blah mcp start --config blah.json`ってやると、MCPサーバーとかSLOPサーバーとかOpenAPIからツールを全部まとめてリストアップしてくれる。Cloudflare AIチームがやってることも良い感じ。<br>https://blog.cloudflare.com/remote-model-context-protocol-se…" userName="thomasfromcdnjs" createdAt="2025-03-26T23:30:50" color="#ff5c5c">}}

{{<matomeQuote body="それめっちゃクールだけど、XKCDの標準のやつみたい[0]。業界がMCPで標準化してるのに、それが良くないってなったら、振り出しに戻るだけじゃん。強い意志（と低いエゴ）を持って、本当に良い実装にたどり着けると良いね。<br>[0] https://xkcd.com/927/" userName="keithwhor" createdAt="2025-03-26T23:35:15" color="#ff33a1">}}

{{<matomeQuote body="USBの例えは良くないと思う。ソフトウェア開発のほとんどは接続することだし。「これはUSBみたいなもの」って言っても、ソフトウェアの大部分をカバーできる。抽象化は良いけど、説明が不透明なのは学習の邪魔になる。" userName="namaria" createdAt="2025-03-26T23:42:09" color="">}}

{{<matomeQuote body="開発者の一部だけが「接続」に時間を使ってる。もしあなたがそういう開発者なら、スキルアップするか転職を考えた方が良いかも。自動化が進めば、そういう開発者からいなくなると思うよ。" userName="soulofmischief" createdAt="2025-03-27T00:00:06" color="">}}

{{<matomeQuote body="いやいや、システム統合は開発の90%くらい占めてるって。抽象化のレイヤーは違うけど。企業はそれを無くそうとしたり自動化しようとしたりしてるけど、いつも失敗してる。" userName="keithwhor" createdAt="2025-03-27T00:07:45" color="">}}

{{<matomeQuote body="こう考えるのはやめて欲しい。<br>＞https://www.osmos.io/fabric" userName="kiratp" createdAt="2025-03-27T02:10:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="MCPをAIアプリのUSB-Cポートみたいに考えるとわかりやすいってことらしいけど、ソフトウェアエンジニアの俺にはピンとこないなー。" userName="talles" createdAt="2025-03-26T20:18:07" color="">}}

{{<matomeQuote body="MCPを理解するにはアプリ設計の発想を変える必要があるんだよね。従来型アプリは設計時に機能が決まってるけど、MCPネイティブアプリはユーザーが実行時にツールを追加できる。ブラウザみたいな感じで、設計時にどんなツールが追加されるかわからないのが面白いところ。まだ多くの開発者はこういうアプリ作ってないから混乱するんだと思うよ。" userName="ondrsh" createdAt="2025-03-26T21:56:12" color="#ff33a1">}}

{{<matomeQuote body="MCPのクライアント側の説明としては良いと思う。でもMCPクライアントを作ってるのはOpenAIとか一部の企業だけじゃないかな？ほとんどの開発者はMCPサーバーを作ってて、結局設計時にツールを決めてるんだよね。CursorとかClaudeもMCPサーバー内でツールを動的にON/OFFできないし。" userName="paradite" createdAt="2025-03-27T06:38:18" color="">}}

{{<matomeQuote body="設計時と実行時の概念はクライアントとサーバー両方に当てはまるよ。サーバー開発者はこの概念を軽視しがちだけど、エンドユーザーがMCPサーバーを直接実行できるようになったのは大きな変化で、サーバー作者にとってもメリットがあるんだ。" userName="ondrsh" createdAt="2025-03-27T08:10:23" color="">}}

{{<matomeQuote body="なるほど、ユーザー視点で見るとパラダイムシフトってことだね。" userName="paradite" createdAt="2025-03-27T08:42:11" color="">}}

{{<matomeQuote body="MCPが実現する機能の良い特徴付けだね。ありがとー。<br>ユーザーが自分でツールを持ち込むことでアプリの機能を拡張できるモデルって、どれくらいのアプリにメリットがあると思う？Cursorみたいな開発ツールは当てはまるけど、他に例はある？ユーザーはどうすれば適切なツールを見つけてインストールして使えるようになるんだろう？プラグインと違ってMCPサーバーは挙動が制限されないけど、大丈夫？" userName="vykthur" createdAt="2025-03-27T00:00:05" color="">}}

{{<matomeQuote body="＞ユーザーが自分でツールを持ち込むことでアプリの機能を拡張できるモデルって、どれくらいのアプリにメリットがあると思う？<br>長期的にはほぼ100%だと思う。Slackにアクセスしてメールの下書きをしたり、LinearがGitとかEmailとかSlackにアクセスしたり…Spotifyはまだ思いつかないけど、ShazamみたいなMCPサーバーが出てくるかも。<br>＞ユーザーはどうすれば適切なツールを見つけてインストールして使えるようになるんだろう？<br>LLMがレジストリを見て自動でやってくれるようになるよ。ローカルでの実行はWASMで解決できるかも。<br>＞MCPサーバーは挙動が制限されないけど、大丈夫？<br>セキュリティの問題は3つあるね。1つ目はMCPサーバーのコード自体、2つ目はツール呼び出しの引数で情報が漏れる可能性、3つ目はツール結果から情報が漏れる可能性。LLMが自動で設定するようになったら確認が必要だね。" userName="ondrsh" createdAt="2025-03-27T09:10:19" color="#785bff">}}

{{<matomeQuote body="＞ローカルでの実行は非自明だけど、WASMで解決できるかも。<br>WASMを使ったプラグイン開発とOCIレジストリを使ったホスティングのhyper-mcpを始めたのはそのためだよ。Dockerfileでプラグインをパッケージングできるし、WASMに対応してれば好きな言語で開発できるよ。https://github.com/tuananh/hyper-mcp" userName="tuananh" createdAt="2025-03-27T09:18:40" color="#ff5c5c">}}

{{<matomeQuote body="すごく共感する！機能の提供方法とユーザーへの構成可能性が完全に変わるよね。言い得て妙。" userName="amerine" createdAt="2025-03-26T22:11:37" color="#ff5c5c">}}

{{<matomeQuote body="それってプラグインと同じじゃない？" userName="kblissett" createdAt="2025-03-26T22:49:36" color="">}}

{{<matomeQuote body="似てるけど、一段階上って感じかな。PluginsはAPIがあらかじめ決まってて、アプリはそのAPIに合わせてコード書くし、pluginの開発者もそうする。機能はAPI通して直接使うってのがレベル1。MCPはメタプロトコルで、APIをpluginがアプリに実行中に知らせるAPIみたいなもん。だからMCPはpluginのAPIより一段階上。LLMがAPI理解して実行中に呼べるからこそできるんだよね。昔は開発者がAPIを設計時に理解する必要あったけど、今はLLMが実行中に理解できる。だからユーザーがアプリに機能を追加できるってわけ。自分のブログで悪いけど、これについて書いたから、参考になるかも。https://www.ondr.sh/blog/thoughts-on-mcp" userName="ondrsh" createdAt="2025-03-26T23:16:41" color="#ff5733">}}

{{<matomeQuote body="＞And because this can now happen at runtime, users (instead of developers) can add arbitrary functionality to applications.”<br>これの意味がわかんないんだよね。MCPがなくても、サーバーにはAPIがあって、ドキュメント見れば、自分のアプリからAPI呼んで機能追加できるじゃん(python scriptとか)。MCPがあると、LLMがMCPでドキュメントされてるAPIを呼んで機能追加する。何が違うの？どっちにしろアプリのコード変えないとダメじゃん？LLMに全部任せるなら、結果は予測不能だし。" userName="Xelynega" createdAt="2025-03-27T16:39:20" color="">}}

{{<matomeQuote body="＞In both cases the application code needs to be modified to account for the new functionality, unless you're also using the LLM to handle the logic which will have very unpredictable results.”<br>MCPの場合は、アプリのコードは変えないんだよ。まずアプリをリリースして、後から機能を追加する。普通のAPIを使う場合はその逆。そこが違うんだ。" userName="ondrsh" createdAt="2025-03-27T21:05:21" color="">}}

{{<matomeQuote body="さっぱりわからん。アプリがAPIのデータに依存する機能（税金情報の表示、税金情報の入力、税金計算とオートコンプリート）を実行する場合、HTTP REST APIよりもMCPを使ってUIを簡単に拡張するにはどうすればいいの？MCPでも、ユーザーがこの新しい機能とやり取りするためのUI要素（入力、出力）を追加するために、アプリケーションコードを更新する必要があるんじゃないの？" userName="Xelynega" createdAt="2025-03-28T02:20:23" color="">}}

{{<matomeQuote body="いや、MCPにはUIの概念はまだないんだよ。ツールの結果は通常テキストのみだけど、Imageの抽象化もあるよ（クライアントが表示方法を決めることができる、例えばインライン）。" userName="ondrsh" createdAt="2025-03-28T09:12:20" color="">}}

{{<matomeQuote body="アプリケーションコードが存在しないから、アプリケーションコードを変更する必要がないってこと？それって、タスクを実行するためにwget/bashの使い方を指示するだけの“アプリケーション”の場合、REST APIでアプリケーションコードを変更する必要がないって言ってるのと同じじゃない？" userName="Xelynega" createdAt="2025-03-30T22:17:39" color="">}}

{{<matomeQuote body="今のMCPはマジでセキュリティの悪夢。開発者のセキュリティ文化への理解不足とか、セキュリティ意識の低い人がコードを自動生成して監査しないとか、最悪の事態が起こりそう。90年代に戻った気分。セキュリティ研究者には良い時代だね！" userName="soulofmischief" createdAt="2025-03-27T00:10:00" color="#ff5733">}}

{{<matomeQuote body="＞Feels like we've slid back into the 90s in this regard.”<br>やったぜ。90年代とか2000年代初期は、ソフトウェアがユーザーを閉じ込めたり、情報を集めたりするんじゃなくて、役に立つようにデザインされてたんだよ。セキュリティは常に有用性と対立するからね。MCPはまず役に立つように設計されてるから、セキュリティの悪夢に見えるんだ。セキュリティがないとユーザーにも悪いから、少しはセキュリティが必要だけど、現代のセキュリティの考え方にとらわれすぎないでほしいな。ユーザーから利益を守るためだけのセキュリティじゃなくてね。<br><br>＞a general lack of appreciation for security culture amongst developers, and the emerging vibe coding paradigm where non-security-minded people automatically generate and fail to properly audit production-facing code<br>誰を誰から、何のために守るのかっていう考慮も足りないよね。MCPとか、LLMとかは、ユーザーに力を取り戻させてるんだ。コンピューティングが普及した時に破壊された“心の自転車”っていう考え方を思い出させてるんだよ。今回はすぐに殺さないでほしい。" userName="TeMPOraL" createdAt="2025-03-27T08:10:40" color="#ff33a1">}}

{{<matomeQuote body="懸念点：<br>・リモートのMCPサーバーがデータを保存/変更しないとか、言われたこと以外のことをしないとか、どうやって信用するの？<br>・ローカルのMCPサーバーがマシンを壊したり、データを削除したりしないって、どうやって信用するの？<br>・サーバーはエンドユーザーをどうやって認証するの？違うユーザーに違う権限を与えるサーバーはどうやって作るの？<br>これらは絶対に正しく行う必要があることで、市場での優位性を得るためにユーザーのセキュリティを犠牲にするのは倫理的に破綻している。歩行者は橋が建設されるときにどの規制が自分たちに役立つかを正確に知っているわけではないので、土木工学における腐敗や怠慢を止めることを期待するわけではない。大量インフラストラクチャについても同様であるはずだ。エンジニアとして正しい判断を下す義務がある。<br><br>＞MCP, vibe coding, and LLMs in general are briefly giving end-users back some agency, bringing back the whole idea of “bicycle for the mind”<br>15年後のソフトウェアがどうなるか楽しみ。それを殺すつもりはない。守りたいし、関係者全員を守りたい。" userName="soulofmischief" createdAt="2025-03-27T10:03:01" color="#ff33a1">}}

{{<matomeQuote body="これについてどう思うか教えてほしいな。<br><br>https://blog.cloudflare.com/remote-model-context-protocol-se…" userName="sarthak_chauhan" createdAt="2025-04-01T21:44:34" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="MCPのこの側面があまり言及されないのは驚きだよね。ファイルシステムへの無制限アクセスやREST APIのPOSTエンドポイントへの接続を提供するMCPを適用すると、モデルとシステムプロンプトの両方に大きな信頼を置くことになるんだから。<br>（とはいえ、自分も実験として強力だけど危険なツール（例：アンサンドボックスで自分のマシン上で任意のPythonコードを実行）を書いているんだけど、結果はすごく面白いんだよね。）" userName="jcheng" createdAt="2025-03-27T00:52:02" color="#ff5c5c">}}

{{<matomeQuote body="確かにそうかもね。<br>いや、MCPはまだ勝ってないよ（今のところ）<br>https://newsletter.victordibia.com/p/no-mcps-have-not-won-ye…" userName="vykthur" createdAt="2025-03-27T00:12:42" color="">}}

{{<matomeQuote body="だよね。使い捨てVMでサンドボックス化しない限り、現時点では役に立たない気がする。怖いね。" userName="lurking_swe" createdAt="2025-03-27T02:07:05" color="">}}

{{<matomeQuote body="ブログ記事、両方ともすごく面白かったよ。すごく考えられてるし、説明も分かりやすい。次の投稿（数ヶ月後、数年後でも）のアップデートを受け取るために購読したいんだけど、ブログにRSSフィードを追加してもらうことって可能かな？" userName="jglamine" createdAt="2025-03-27T03:49:58" color="#ff5733">}}

{{<matomeQuote body="ありがとう。RSSを追加したけど、WC3でエラーが出てる。時間があるときにプレーンなmarkdownに移行するつもり。そうすればもっと簡単になる。" userName="ondrsh" createdAt="2025-03-27T21:08:06" color="">}}

{{<matomeQuote body="ブログはSubstackでホストされていて、フィードをサポートしているよ。<br>https://newsletter.victordibia.com/feed" userName="vykthur" createdAt="2025-03-29T01:15:35" color="">}}

{{<matomeQuote body="それって新しいHATEOASのこと？HTTP APIの自動検出のためのプラグ可能なフレームワークはすごく便利だよね。AIだけじゃなくて。" userName="freeone3000" createdAt="2025-03-26T22:27:03" color="#ff33a1">}}

{{<matomeQuote body="いや、世界が全部webshitで、すべてがREST経由で最適に使用されるわけではないって理解するまで、理解できないよ。<br>（WebshitでさえRESTで最適に使用されるわけじゃない。その証拠に、ほとんどすべての”REST”APIは、RPC over HTTPを装って設計されてる。）" userName="TeMPOraL" createdAt="2025-03-27T07:58:15" color="#38d3d3">}}

{{<matomeQuote body="全文引用した方がいいね。<br>＞ MCP is an open protocol that standardizes how applications provide context to LLMs. Think of MCP like a USB-C port for AI applications. Just as USB-C provides a standardized way to connect your devices to various peripherals and accessories, MCP provides a standardized way to connect AI models to different data sources and tools.”<br>＞MCPは、アプリケーションがLLMにコンテキストを提供する方法を標準化するオープンプロトコルだよ。MCPをAIアプリケーション用のUSB-Cポートのように考えてみて。USB-Cがデバイスをさまざまな周辺機器やアクセサリに接続するための標準化された方法を提供するのと同じように、MCPはAIモデルをさまざまなデータソースやツールに接続するための標準化された方法を提供するんだ。" userName="dotancohen" createdAt="2025-03-26T21:07:31" color="#38d3d3">}}

{{<matomeQuote body="USB-Cのどこが当てはまるのか知りたいなー。あれって実際は30種類くらいのプロトコルがある複雑なプラグで、プラグとかケーブルがどんな機能を持ってるのかマジで分かりづらいじゃん？" userName="madeofpalk" createdAt="2025-03-26T22:52:18" color="">}}

{{<matomeQuote body="もしかして、LLMを使って説明してるのかな？特にGeminiは、役に立たないアナロジーにめっちゃこだわるよね。Wikipediaみたいな、もっとコンテキストがある方が良いんだけどなー。今はLLMが学習に役立つとは思えないんだよね。残念だけど、可能性は感じるんだ。" userName="jchw" createdAt="2025-03-26T20:33:08" color="">}}

{{<matomeQuote body="LLMって、まるで無制限だけど下手くそな百科事典みたいだよね。不正確だったり、あんまり役に立たなかったりするけど、もっと良い情報源を見つけるためのきっかけにはなるかも。「自分が何を知らないか分からない」っていう問題を解決してくれる感じ。" userName="colechristensen" createdAt="2025-03-26T20:40:36" color="#785bff">}}

{{<matomeQuote body="これって「お前の母ちゃんは誰とでも互換性がある」っていうジョークかと思った。" userName="votick" createdAt="2025-03-26T20:27:53" color="">}}

{{<matomeQuote body="俺はこっちの解釈の方が好きだなー。<br>＞MCPはAIのUSB-Cじゃない。ただのUSB-C(laude)ドングルだ<br>＞https://dev.to/internationale/mcp-is-not-ai-usb-c-its-usb-cl...<br>イラストは公式サイトにあるよ。ドングルを発明した会社がUSBを発明したって主張するのは、ちょっとどうかと思う。" userName="tb1989" createdAt="2025-03-26T21:20:52" color="#ff5733">}}

{{<matomeQuote body="このアナロジーの何がダメなの？共通のAPIとかプロトコルのセットで、データとか機能を共有する方法が含まれてるんでしょ？それってまさにUSBじゃん。" userName="atonse" createdAt="2025-03-26T20:51:30" color="">}}

{{<matomeQuote body="これって昔はただの「標準」って呼んでたよね。でも今は、新しい開発者に標準を説明するためにアナロジーが必要らしい。" userName="soulofmischief" createdAt="2025-03-27T00:12:37" color="">}}

{{<matomeQuote body="でも、まだ厳密には標準じゃないんだよね。中立的な団体とかコンソーシアムに認められてないし。でも、OpenAIがSDKに追加したから、事実上の標準になりつつあるね。QUICとかHTTP3みたいに、標準を作るために使われる可能性もあるかも。" userName="atonse" createdAt="2025-03-30T01:49:04" color="#45d325">}}

{{<matomeQuote body="みんなUSB-Cプロトコルのこと知ってると思ってるの？" userName="zombiwoof" createdAt="2025-03-26T20:34:33" color="">}}

{{<matomeQuote body="正直、もっと混乱してきたわ。" userName="matthewmacleod" createdAt="2025-03-26T20:42:03" color="">}}

{{<matomeQuote body="MCPの価値がマジで分からん。最近のAI技術の目くらましみたいで、なんか違う気がするんだよね。<br>＞MCPは、アプリがLLMにコンテキストを提供するのを標準化するオープンプロトコルらしい。<br>標準化する必要ある？ text-to-text変換でトークン列を処理してるだけじゃん。tokens-to-tokensよりも凝ったものは、企業のマーケティングの魔法使いが作った幻想だよ。ツールとか関数呼び出しだって、ただのテキストに対する賢いヒューリスティクスに過ぎないし。<br>＞現在、MCP仕様では、トランスポートメカニズムに基づく2種類のサーバーが定義されているらしい…<br>これってマイクロサービスとAIの組み合わせみたい。最後にハッピーになれる人、あんまりいないんじゃないかな。" userName="bob1029" createdAt="2025-03-26T20:13:26" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
