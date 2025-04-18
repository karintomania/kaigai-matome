+++
date = '2025-04-11T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ!? WebSocketsいらないかも…代替技術で十分イケるらしい'
tags = ["WebSocket", "HTTP", "SSE", "ストリーミング", "Web開発"]
featureimage = 'thumbnails/color4.jpg'
+++

> マジかよ!? WebSocketsいらないかも…代替技術で十分イケるらしい

引用元：[https://news.ycombinator.com/item?id=43659370](https://news.ycombinator.com/item?id=43659370)

{{<matomeQuote body="記事の細かい点だけど、RequestIDをサーバーに送ってリクエスト/レスポンスのサイクルを作るのは、別に変なことじゃないし、ありだと思うよ。<br>真面目なアプリなら`send(message).then(res => ...)`みたいなAPIはあって損はないんじゃないかな。<br>でも、確かにupgradeリクエストはわかりにくいし、WebSocketサーバーがHTTPサーバーの中に組み込まれてるのがスッキリしないのはわかる。<br>ヘッダーの`headers['authorization']`を読み取るmiddlewareを再利用せずに、`connectionParams`っていう変なオブジェクトにアクセスして、それをリクエストヘッダーみたいに扱うんだもんね、へへ。<br>まあ、癖はそんなに気にならないけどね（慣れただけかも）。WebSocketのブラウザAPIは、例えばEventSourceよりは使いやすいし。" userName="hombre_fatal" createdAt="2025-04-11T23:41:15" color="">}}

{{<matomeQuote body="それってよくある手だよね。嫌いなプロセスのすべてのステップを細かく説明して、プロセスが複雑に見えるようにして、自分の代替案を提示して、それが単純に聞こえるようにするんだ。<br>例えば、サンドイッチを作る場合：冷蔵庫からパンを見つけた後、正確に2枚のパンを取り出す必要がある。適切なナイフを見つけた後、バターを均一に塗り、約2.1mmのコーティングを塗るようにしてください。すべての後、トースターを調整する必要があるでしょう！" userName="syspec" createdAt="2025-04-11T23:56:08" color="">}}

{{<matomeQuote body="その通り。この場合、WebSocketsの方がHTTP2よりも実装が簡単だよ。raw TCPに近くて、rawパケットを送受信するだけだし… 客観的に見て、よりシンプルで、より効率的で、より柔軟性があると思う。<br>リソース転送のために設計されたプロトコルで、厳密なステートレスのリクエスト-レスポンス形式のインタラクションで、サーバープッシュが後付けされたものが、双方向通信のためにゼロから構築されたものよりも単純だとはどうしても思えない。" userName="jongjong" createdAt="2025-04-12T00:08:30" color="#ff5733">}}

{{<matomeQuote body="WebSocketクライアントのバグをいくつか修正したんだけど、古いプロキシを騙して全部台無しにしないようにするための工夫に驚いたよ。" userName="bobmcnamara" createdAt="2025-04-12T02:04:46" color="">}}

{{<matomeQuote body="大きいのは、プロキシがレスポンスを効果的にキャッシュできないように、すべてのクライアントリクエストを’マスク’することだね。リクエストが常に変わるから。<br>RFCに書いてあるよ：<br>＞https://datatracker.ietf.org/doc/html/rfc6455#section-5.3”" userName="bobmcnamara" createdAt="2025-04-12T20:40:52" color="">}}

{{<matomeQuote body="WebSocketsってJavaScriptでマルチコアとスレッドを使ったコードを書く唯一の方法なの？それともシングルスレッドの制限があるの？nodeみたいに動くのかな？" userName="AtlasBarfed" createdAt="2025-04-12T03:22:04" color="">}}

{{<matomeQuote body="それってWeb Workersのこと？<br>＞https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers…" userName="nothrabannosir" createdAt="2025-04-12T03:41:36" color="">}}

{{<matomeQuote body="一方、僕らは記事の最初の小さなサブヘッダーにこだわって、まともな記事の残りの部分に焦点を当てないっていう、もっと悪い戦術をとってるよね。<br>それに、彼らの代替案はただのライブラリじゃん。SaaSを売ってるわけじゃないんだから、意地悪くしちゃだめだよ。" userName="hombre_fatal" createdAt="2025-04-12T00:15:33" color="#ff5c5c">}}

{{<matomeQuote body="＞…意地悪くしちゃだめだよ。<br>ここってそういうサイトじゃないの？<br>URLチェック<br>みんな何かにつけて意地悪くなるんだから。" userName="NetOpWibby" createdAt="2025-04-12T04:52:27" color="">}}

{{<matomeQuote body="パンは冷蔵庫に入れるべきじゃないし、バター2.1mmは多すぎない？特にトーストする前に塗るならね。" userName="procaryote" createdAt="2025-04-12T08:17:07" color="">}}

{{<matomeQuote body="バター多すぎ？そんなんじゃ生きてるって言えないよ！" userName="goosejuice" createdAt="2025-04-12T14:30:48" color="">}}

{{<matomeQuote body="サンドイッチのコードレビューこそがHNの存在意義だよね。" userName="iandanforth" createdAt="2025-04-12T09:11:10" color="#38d3d3">}}

{{<matomeQuote body="パンのサイズに合わせて最適なバターの量を返す関数が必要だと思うな。パンの種類ごとの吸収率とかも考慮して、バターの好みもパラメータに入れるべきかも。" userName="accrual" createdAt="2025-04-12T17:05:36" color="#ff5733">}}

{{<matomeQuote body="その通り。作者は、WebSocketsを使えばフロントエンドのjsコードが不要になるっていうメリットを都合よく省いてるよね。著者が宣伝してるライブラリもそうだし。バックエンドはエラーメッセージをフロントエンドに送ってレンダリングさせるんじゃなくて、レンダリング済みのViewを送るべき。" userName="waynesonfire" createdAt="2025-04-12T06:52:19" color="">}}

{{<matomeQuote body="トーストする前にバター塗るの？マジか。試してみる。" userName="plasma_beam" createdAt="2025-04-12T20:51:24" color="">}}

{{<matomeQuote body="20年前、TCPで同じようなことやってたな。リクエストIDをサーバーがエコーバックして、クライアントが保留中のリクエストと照合するんだ。タイムアウトしたらエラーにするタイマーもあったし。C++で実装して、たいしたコード量じゃなかったよ。今のWeb開発者が複雑だとか難しいとか言うことが信じられない。ソフトウェアエンジニアリングの厳格さが失われてるんじゃないかな。" userName="hliyan" createdAt="2025-04-12T03:34:16" color="#ff33a1">}}

{{<matomeQuote body="ブラウザにはリクエストとレスポンスを対応付けて、タイムアウトをチェックするシステムが既にあるじゃん。車輪の再発明は不要。<br>ソフトウェアエンジニアリングの問題は、ビジネス上の問題を解決するよりも、無意味なアーキテクチャに気を取られすぎることだよ。" userName="Tabular-Iceberg" createdAt="2025-04-12T04:23:37" color="#45d325">}}

{{<matomeQuote body="ソフトウェアエンジニアリングの本当の問題は、無意味なアーキテクチャ宇宙飛行士ごっこに気を取られて、実際のビジネス問題を解決できなくなっちゃうことだよね。<br>ソフトウェアエンジニアリングには2つのテーマがあると思うんだ。<br>・問題領域を理解してない人が、システムが複雑すぎると文句を言う。<br>・問題領域を理解してる人が、システムをリファクタリングして、未熟でメンテナンスできないハックをなくし、エレガントに対応できていない要件をサポートする必要があると主張する。<br>君のコメントはステップ1だね。" userName="motorest" createdAt="2025-04-12T05:23:13" color="">}}

{{<matomeQuote body="まあ、ここではウェブサイトを作る話をしてるだけだし。自分でHTTPを実装するのはやりすぎだって。君はGoogleじゃないんだから。" userName="Tabular-Iceberg" createdAt="2025-04-13T06:37:38" color="">}}

{{<matomeQuote body="エンドポイントのアルゴリズム的なセキュリティ（認証とか）を保証することと、開発者のコードとは関係ないセキュリティ問題を予測することの間には大きな違いがあると思うな。前者は可能だけど、後者は無理じゃん。作者がWebSocketのアップグレードプロセスを嫌がるのはわかるよ。どっかにゼロデイ脆弱性が潜んでてもおかしくないし。" userName="willtemperley" createdAt="2025-04-12T13:37:40" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="最近、ますますそう思うようになってきたんだよね。基本的なミスを犯してるアプリとか、前の3つのフレームワークで既に修正されたことを修正しようとする新しいフレームワークとか、意味不明なUXデザインとか、昔は解決されてたエラーを出すとか。小さな会社（まあ、それは仕方ない）から数十億ドル規模の会社（もっとちゃんとすべき）まで、厳密さが足りない気がする。" userName="prox" createdAt="2025-04-12T08:14:25" color="">}}

{{<matomeQuote body="最近、Rust-to-WASMのクライアントサイド状態管理が、JS版のコードでスタックオーバーフローを引き起こすような数万件のレコードを処理できるのがどれだけ素晴らしいかを比較してるフレームワークが投稿されてたんだけど…<br>…JS版のスタックオーバーフローは簡単に修正できて、JS版もかなりうまく動いたんだよね。" userName="crabmusket" createdAt="2025-04-12T11:17:28" color="#ff5c5c">}}

{{<matomeQuote body="それって基本的にWS上のRPCだよね。<br>この記事はいろんなトピックをごっちゃにしてる気がする。もしWebSocket接続がSSE+POSTリクエストで簡単に置き換えられるなら、確かにWebSocketは必要ないかもね。でも、ゲームとか、リアルタイムな双方向インタラクションが必要なものとか、非常に有効なユースケースはたくさんあるよ。" userName="ricardobeat" createdAt="2025-04-12T01:02:53" color="#ff5733">}}

{{<matomeQuote body="＞ゲーム、リアルタイムな双方向インタラクション<br>WebSocketは要らないよ。WebTransportをチェックしてみて。" userName="koakuma-chan" createdAt="2025-04-12T01:25:48" color="">}}

{{<matomeQuote body="mdnドキュメントにも、特定のケースにおけるWebSocketの精神的な後継者として言及されてるよ。<br>https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_..." userName="hntrl" createdAt="2025-04-12T01:30:07" color="">}}

{{<matomeQuote body="”アプリケーションが非標準のカスタムソリューションを必要とする場合は、WebTransport APIを使用する必要がある”<br>説得力のあるユースケースだね。標準のものがあるのに、なんで非標準のカスタムソリューションを使うんだ!" userName="almostnormal" createdAt="2025-04-12T05:08:45" color="">}}

{{<matomeQuote body="＞WebTransportはWebSocketsをHTTP/3で書き直したようなものじゃないかって？<br>違うよ。" userName="koakuma-chan" createdAt="2025-04-12T10:13:57" color="">}}

{{<matomeQuote body="そのドキュメントのどこにWebTransportがHTTP/3のWebSocketsだって書いてあるの？共通点は双方向のストリームを提供することだけじゃん。WebTransportは信頼性の低いストリームとか色々サポートしてるし。ドキュメント読んでよ。RFC 9220もあるし。HTTP/3でWebSocketsをブートストラップすることもできるけど、それは文字通りHTTP/3のWebSocketsだよ。" userName="koakuma-chan" createdAt="2025-04-12T11:38:48" color="#ff5c5c">}}

{{<matomeQuote body="“基本的に”って言ってるから、“大体”って解釈すべきじゃない？だとしたら、彼の主張はほぼ正しいんじゃない？" userName="lttlrck" createdAt="2025-04-12T19:03:32" color="">}}

{{<matomeQuote body="＞RequestIDをサーバーに送ってリクエスト/レスポンスのサイクルを得るのがおかしいとかありえないとか言うのは違うと思うな。<br>俺が引っかかるのは、“レスポンス”が来なかったらどうするかってこと。WebSocketプロトコルにはメッセージを承認する必要があるなんて書いてないし。リクエスト/レスポンスならクライアントはネイティブにそのケースを処理できる。<br>＞WebSocketのブラウザAPIはEventSourceより使いやすい。<br>具体的に何が？" userName="hntrl" createdAt="2025-04-12T00:07:35" color="">}}

{{<matomeQuote body="レスポンスがタイムアウトするまで待つライブラリが必要だよね。<br>TCPが独自のping/pongを送ってるのに、keepaliveのためにWebSocket上でアプリ層のping/pongを実装する必要があるのと同じようにね。-_-<br>EventSourceについては、正確には覚えてないけど、いつも何か問題が起こるんだよね。同じことがWebSocketにも言えるけど。再接続/バックオフのロジックを実装するのも面倒だし。<br>記事で提案してることを試してみる時が来たかも。" userName="hombre_fatal" createdAt="2025-04-12T00:30:28" color="#ff5c5c">}}

{{<matomeQuote body="WebSocketのプログラミング経験は少ないんだけど、ping pongの仕組みはプロトコルに組み込まれてると思ってた。タイムアウトはあるの？アプリケーション層で役立つの？<br>参考：https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_..." userName="throwaway2037" createdAt="2025-04-12T03:26:21" color="">}}

{{<matomeQuote body="クライアントまたはサーバー側の並行処理モデルをめちゃくちゃにして、待機中のものとは別に応答できない場合にのみ、自分で実装する必要があるよ。" userName="copperroof" createdAt="2025-04-12T03:44:35" color="">}}

{{<matomeQuote body="Discordは独自のheartbeatメカニズムを実装してる。WebSocketネイティブのpingはなんか信頼性がないって聞いた。WebSocket接続は大丈夫でも、アプリケーション層で何か問題が発生した場合かな？" userName="koakuma-chan" createdAt="2025-04-12T03:57:05" color="">}}

{{<matomeQuote body="これってどうなんだろうね？HTTP streamingってそういう使い方のために設計されたものじゃない気がするんだ。<br>たぶん間違ってるかもだけど、HTTP streamingって大きいデータをchunkに分けるためのものだと思ってるんだよね。このパターンでstreamingをpub/subみたいに使うと後悔しそう。HTTP intermediary（NGINXとかCloudFlareとか）はこういうトラフィックパターンを想定してないんじゃないかな。それに、streamが開いてる時にWiFiが切れるたびに、fetch APIがエラーを出すと思うよ。<br>でも、WebSocketがいろんな場面で使われすぎてるのは確かだと思う。Server-Sent Eventsの方がシンプルで良い場合も多いよね。SSEがもっと注目されても良かったのに。" userName="gabesullice" createdAt="2025-04-12T09:18:04" color="">}}

{{<matomeQuote body="＞HTTP streamingってそういう使い方のために設計されたものじゃない気がするんだ<br>＞server-sent events are a simpler solution”<br>Server-Sent EventsはHTTP Streamingの上のprotocolだよ。<br>この記事でSSEに触れてないのがちょっと意外。代わりに、SSEのローレベル版みたいなのを自分で作ってるみたいに見える（素人目だけど）。chunkをpackageの区切りにするのはちょっと変な気がするな。大きいresponseは複数のchunkに分割されたりしないか心配。" userName="skrebbel" createdAt="2025-04-12T10:42:02" color="#45d325">}}

{{<matomeQuote body="WebSocketよりSSEの方がシンプルで好きだな。HTTPベースだから、HTTP関連の技術とかツールがそのまま使えるし、WebSocketみたいに特別な設定もいらない。curlとかnetcatもそのまま使えるし、特別なclientもいらない。CDNの設定も、bufferingを切るだけでOK。<br>WebSocketはL7 stackを全部作り直すみたいな感じで、Upgradeとかtext/data frameとか、いろいろ設定が必要になる。それに、HTTPモードから外れると、認証とかredirectとかsessionとか、基本的な機能を全部自分で実装しないといけなくなる。<br>だから、Tiny SSEっていう、Rustで書かれたSSE serverを作ったんだ。Luaでprogramできるよ。" userName="benwilber0" createdAt="2025-04-12T16:52:05" color="#785bff">}}

{{<matomeQuote body="「全部うまくいく」って言うけど、scripting supportが必要なserverを自分で作る必要があったじゃん。<br>俺的には「全部うまくいく」って言うなら、Apacheが最初からsupportしてて、config fileをちょっといじるだけでclient IPにmessageを送れるようになるって意味だと思う。" userName="alt227" createdAt="2025-04-12T17:55:47" color="">}}

{{<matomeQuote body="「全部うまくいく」ってのは、こういうことだよ。<br>while true; do<br>curl example.com/sse | handle-messages.sh<br>done<br><br><br>ただのtext-over-httpだからね。WebSocketだと、custom clientとlayer 7 protocol stackがないと無理だよ。" userName="benwilber0" createdAt="2025-04-12T18:41:11" color="#45d325">}}

{{<matomeQuote body="HTTPの上に薄いlayerを重ねた、lobotomized WebSocket実装もできるよ。<br>そう考えると、SSEとWebSocketは全く同じなんだ。HTTP requestをずっと開いてるだけ。firewallとかnetwork機器から見ると、両方とも同じに見える。長生きしてるHTTP requestに見えるんだ。だって、そうなんだから。" userName="Sammi" createdAt="2025-04-13T12:49:05" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="一方向のeventしか気にしないなら、全然良い解決策だと思うけど、そうじゃない場合は、SSEと普通のHTTP callを組み合わせると、ちょっと面倒になるかもね。長生きHTTP connectionを使ったとしても。<br>＞once you're out of “HTTP mode” you now have to implement the primitive mechanics of basically everything yourself, like auth, redirects, sessions, etc.”<br>WebSocketはcookieとかcustom headerで認証できるんじゃないの？" userName="lxgr" createdAt="2025-04-12T17:10:40" color="">}}

{{<matomeQuote body="＞If you only care about events in one direction, it's a perfectly fine solution”<br>clientがserverにrequestを送るのは、普通のHTTPで解決済みの問題じゃない？そこが難しいとは思えないんだけど。" userName="notatoad" createdAt="2025-04-12T19:21:14" color="">}}

{{<matomeQuote body="双方向通信が必要な場合は別だよ。例えば、request/responseのping-pongとか。それはWebSocketで解決できるけど、SSE+requestだと難しい。client requestが同じSSE serverに届くとは限らないしね。回避策はあるけど、複雑になるよね。" userName="nitely" createdAt="2025-04-12T20:26:00" color="#ff5c5c">}}

{{<matomeQuote body="WebSocketsって、cookieとかカスタムヘッダーで認証できるんじゃないの？<br>実装によるけど、CDNとかAPIゲートウェイでHTTPコネクション切って、ただのTCPソケットとしてバックエンドに転送するシステムだと、HTTPの情報が残らない場合があるよ。" userName="VWWHFSfQ" createdAt="2025-04-12T17:33:29" color="">}}

{{<matomeQuote body="そりゃそうでしょ。WebSocketsでHTTPヘッダーとかcookieを使った認証が必要なら、ヘッダー全部入ったHTTPリクエストが必要になるよね。よくあるケースだし、そういう設計にするのは簡単だよ。<br>WebSocketの認証は、普通HTTPリクエストの認証と全く同じくらい簡単だよ。だって全く同じなんだもん。" userName="Sammi" createdAt="2025-04-13T12:45:12" color="#ff5733">}}

{{<matomeQuote body="へー、なんか例とかある？WebSocketsをそういうコンテキストで使ったことないけど、アプリケーションサーバーにどう渡されるのかいつも気になってたんだよね。" userName="lxgr" createdAt="2025-04-12T19:11:23" color="">}}

{{<matomeQuote body="TCPのせいで、大きいデータは必ず小さく分割されるんだよね。HTTPレベルだと見えないけど。UDPだと自分でプロトコル設計する必要がある。ソケットコーディングした経験からすると、WebSocketsはハイエンドなブラウザゲームとか、シミュレーション、トレーディングシステムに良いと思う。ブラウザはただの窓になるけどね。他の人が言ってるように、普通のWebアプリなら他の選択肢がいっぱいあるし。" userName="notjoemama" createdAt="2025-04-12T15:15:18" color="#ff33a1">}}

{{<matomeQuote body="ビデオゲームとかトレーディングで問題なのは、WebSocketsがデフォルトでTCPしかサポートしてないこと。WebRTCみたいな技術の方がずっと速いアップデートができるんだよね。<br>WebSocketsにも使い道はあると思うよ。SSEがすぐ使えない場合とか、連続で短い通信を送りたい時に、ブラウザが自動でパイプライン処理してくれるかどうかわからない場合とか。" userName="jeroenhd" createdAt="2025-04-12T16:25:04" color="">}}

{{<matomeQuote body="SSEの問題は、ブラウザ全体でドメインごとに6つしかコネクションできないこと。" userName="ranger_danger" createdAt="2025-04-12T17:33:38" color="">}}

{{<matomeQuote body="それはHTTP/1.1の問題で、SSEだけの問題じゃないよ。WebSocketsも同じ制限がある。" userName="VWWHFSfQ" createdAt="2025-04-12T17:43:01" color="">}}

{{<matomeQuote body="HTTP/2を使えば解決するよ。もう解決済みの問題。" userName="CharlieDigital" createdAt="2025-04-12T20:10:20" color="#ff5733">}}

{{<matomeQuote body="最近のAI/LLMブームでSSEがまた注目されてて、LLMチャットのフロントエンドはほとんどSSEを使ってるよね。HTTPサーバーフレームワークのSSEサポートもかなり改善されてる気がする。<br>ただ、SSEで便利なことをしようとすると、仕様に準拠しないことをしないといけないのが残念だよね（例えば、POSTで最初のデータを送るとか）。" userName="hobofan" createdAt="2025-04-12T10:03:21" color="#38d3d3">}}

{{<matomeQuote body="GraphQLのsubscriptionも同じだね。<br>サーバーレスアーキテクチャだと、WSよりSSEの方が使いやすいのもあるかも。LambdaとかAPI Gatewayでそういうのやりたいなら、最初から考えてないと大変なことになるよ。" userName="ljm" createdAt="2025-04-12T10:56:39" color="">}}

{{<matomeQuote body="ブラウザでのSSEの制限は、やっぱり面倒だよね。" userName="nkozyra" createdAt="2025-04-12T11:26:38" color="">}}

{{<matomeQuote body="SSEとこの記事で提案されていること（すごく似てるけど）の問題点は、コネクションがめっちゃ長生きすること。<br>OpenAIはコールバックにSSEを使ってる。チャットとか中くらいの長さのやり取りならいいんだけど、ファインチューニング（すごい時間かかることある）だと、SSEがいつも壊れて、クライアント側でリトライしないとダメになるんだよね。<br>だから、ロングポーリング ＋ HTTPストリーミング（SSEをちょっと変えたやつ）みたいなのを使ってみたらどうかな？<br>1) 標準のGETで/api/v1/eventsを呼ぶ（認証とかも普通に）<br>2) バッファ/キューに何かあったらすぐ返す<br>3) 新しいイベントを最大60秒ストリームする。各イベントにはシーケンスID（記事みたいに）をつける。メッセージがない場合は、10秒ごとにキープアライブメッセージを送る。<br>4) 60秒経ったらコネクションを切る。クライアント側でちゃんと終わらせる。<br>5) クライアントは最後に受け取ったシーケンスを使って、別のGETリクエストを送る。<br>これのいいところは、すごく分かりやすい（SSEみたいに）、レイテンシーが低い、普通のGETで認証も普通にできる、ロードバランサーとかの設定に関係なく動くってこと。もちろん、たまにエラーは出るだろうけど、タイムアウトとかのエラーに対処するのが普通にはならないと思う。" userName="osigurdson" createdAt="2025-04-12T15:01:18" color="">}}

{{<matomeQuote body="自分でSSEを再構築するメリットが分かんない。普通にSSE使えば良くない？<br>＞SSEはいつも壊れて、クライアント側でリトライしないとダメになるって言うけど<br>ブラウザが自動でやってくれるじゃん。SSEはマジで簡単に始められるよ。" userName="thedufer" createdAt="2025-04-12T15:19:00" color="">}}

{{<matomeQuote body="eventsourceの問題は、標準の認証を使わないこと。JWTをクエリ文字列に入れるのは変だし、ログにトークンが漏れる可能性が高い気がする。<br>どうしてるのか気になる。<br>あと、クライアントはブラウザだけじゃないし（OpenAI/ファインチューンの例はブラウザじゃない）。<br>最後に、問題解決のために裏で何か動いてるせいで、しょっちゅう失敗するってのが嫌なんだよね。ログのエラーとか警告は意味を持ってほしい。" userName="osigurdson" createdAt="2025-04-12T15:42:57" color="#ff33a1">}}

{{<matomeQuote body="＞どうしてるのか気になる？<br>Cookieでうまくいくよ。ブラウザでは普通の認証方法だし。<br>＞クライアントはブラウザだけじゃないし（OpenAI/ファインチューンの例はブラウザじゃない）。<br>それはそうかも。でも、ブラウザベースのクライアントの負担を減らして、（自分で仕様を書くのを避けて）既存の技術を使った方が簡単だと思う。それに、言ってることはSSEと矛盾しないよ。サーバーが60秒ごとにコネクションを切ればいいだけ。認証以外は全部カバーできる（ブラウザでBearerトークンを見たことがない。Cookieを使わないとダメだよね）。" userName="thedufer" createdAt="2025-04-12T20:26:07" color="#45d325">}}

{{<matomeQuote body="＞標準の認証を使わないってどういうこと？<br>CORSで許可されていれば、認証ヘッダーを送るwithCredentialsオプションをサポートしてるよ。" userName="VWWHFSfQ" createdAt="2025-04-12T17:47:11" color="">}}

{{<matomeQuote body="SSEはHTTP GETで実装できるから、ヘッダーのJWTトークンの扱い方は変わらないよ。" userName="CharlieDigital" createdAt="2025-04-12T20:12:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="たぶん間違ってるかもだけど、HTTP streamingってでかいblobをchunkに分けるためのものだと思ってた。<br><br>ChromeとFirefoxの場合は違うよ。試したけど、例えばunordered listの要素とかはすぐに表示される。Safariだと、”text/html” streamingは512バイトずつのchunkになるらしい。<br>[1] https://bugs.webkit.org/show_bug.cgi?id=265386" userName="runeks" createdAt="2025-04-12T16:31:39" color="">}}

{{<matomeQuote body="GPは中間のproxyとかCDNの話をしてるんだよ。レスポンスがちょっとずつ来るような長期間の接続を嫌がるかもって。client側で動くかどうかを疑ってるわけじゃないと思う。<br><br>とは言え、proxy softwareとかCloudflareみたいなサービスが、”text/event-stream”を見たら自動的に”CDN mode”をやめて、もっとtransparentなものに切り替えるロジックを持ってても驚かないな。そんなに珍しいことじゃないし。" userName="lxgr" createdAt="2025-04-12T17:04:32" color="#45d325">}}

{{<matomeQuote body="もしそうじゃなかったら、ファイル全体を先に読み込まなくてもvideoをstreamで見れないじゃん。<br><br>それ違うと思う。俺の知る限り、video streamはrangeでchunkをrequestしてて、clientがcontrolしてる部分が大きい。singleのlong livedなHTTP connectionじゃないよ。" userName="osigurdson" createdAt="2025-04-12T00:16:29" color="">}}

{{<matomeQuote body="それ違うと思うよ。<br><br>うん、その発言は明らかに間違ってるね。HTTP Live StreamingとかMPEG-DASHみたいな、HTTPでchunkに分けるのがmainのfeatureになってるvideo formatはいくつかあるよ。" userName="motorest" createdAt="2025-04-12T05:31:43" color="#ff5733">}}

{{<matomeQuote body="Netflixとかではstandardだと思うけど、普通のwebmとかmp4の＜video＞tagでもそうなの？そういうのはrequest1回でdownloadされるけど、fileの最初にplaybackを開始できるだけのmetadataがあるんだと思ってた。" userName="EE84M3i" createdAt="2025-04-12T00:29:13" color="">}}

{{<matomeQuote body="そうだよ。<br><br>static web serverとやり取りするbrowserは、HTTP byte range requestを使ってvideoのchunkを取得して、file内の任意のpointにseekするのにも同じ仕組を使える。そのstreamingの方法は速くてsimple。fancyなtechnologyはいらない。MP4をそれで動かすには、fragmented MP4としてrenderする必要がある。" userName="wewewedxfgdf" createdAt="2025-04-12T00:40:35" color="#ff33a1">}}

{{<matomeQuote body="video tagで最初から最後までlinearにplaybackするつもりなら、browserはなんでbyte range requestを送るの？additionalのoverheadになるんじゃないの？" userName="EE84M3i" createdAt="2025-04-12T01:48:17" color="">}}

{{<matomeQuote body="＞video tagで最初から最後までlinearにplaybackするつもりなら、browserはなんでbyte range requestを送るの？<br>seekが必要だからじゃない？最初からplaybackするのは、0にseekするのと同じだし。<br><br>＞additionalのoverheadになるんじゃないの？<br>ならないよ。最初のbyte range requestのrangeはfile全体(`bytes=0-`)だから。" userName="koakuma-chan" createdAt="2025-04-12T02:02:48" color="#45d325">}}

{{<matomeQuote body="俺のoriginal commentは、俺がreplyしたcommenterが言ってたことについてだよ。<br><br>＞俺の知る限り、video streamはrangeでchunkをrequestしてて、clientがcontrolしてる部分が大きい。singleのlong livedなHTTP connectionじゃないよ。<br><br>file全体のbyte range requestは、”singleのlong livedなHTTP connection”に入るんじゃないの？seekのためにearlyにterminateしてanother requestを送ることはできるけど、videoはencodeがcorrectならfile全体をdownloadする前にstartできるよね？" userName="EE84M3i" createdAt="2025-04-12T02:35:44" color="">}}

{{<matomeQuote body="＞file全体のbyte range requestは、”singleのlong livedなHTTP connection”に入るんじゃないの？<br>うん、そうなるね（もっとcorrectな言い方をすると、”singleのlong livedなHTTP request”かな。connectionとは関係ないから）。wewewedxfgdfもYesってreplyしてるし。<br><br>＞seekのためにearlyにterminateしてanother requestを送ることはできるけど、videoはencodeがcorrectならfile全体をdownloadする前にstartできるよね？<br>うん。" userName="koakuma-chan" createdAt="2025-04-12T03:09:55" color="#ff5c5c">}}

{{<matomeQuote body="クライアントはファイル全部を読み込みたくないから、必要な部分だけをrange requestで取得してるんだね。" userName="tedunangst" createdAt="2025-04-12T02:51:55" color="">}}

{{<matomeQuote body="クライアントはファイル全体を要求して、不要になったらリクエストを中断すると思うよ。少なくともブラウザはそうしてる。" userName="koakuma-chan" createdAt="2025-04-12T03:14:01" color="">}}

{{<matomeQuote body="どっちもアリだよね。サーバーによっては、HTTPのpersistent connectionで動画データを少しずつ送り続けるのが嫌な場合もあるかも。OSレベルでTCPのsend bufferが常にいっぱいになっちゃうし。" userName="lxgr" createdAt="2025-04-12T03:54:06" color="">}}

{{<matomeQuote body="＞どっちもアリ<br>クライアントを自分でコントロールできるなら可能だけど、ブラウザはmp4ファイルをrequestごとにstreamしないよ。<br>＞OSレベルでTCPのsend bufferが常にいっぱい<br>flow controlがあるから問題ないはず。データはkernelに小さいchunkで送られるし、一度にファイル全体を送るわけじゃない。" userName="koakuma-chan" createdAt="2025-04-12T04:04:24" color="#45d325">}}

{{<matomeQuote body="＞クライアントを自分でコントロールできるなら可能だけど、ブラウザはmp4ファイルをrequestごとにstreamしないよ。<br>最近のブラウザはそうしてると思うけど。<br>＞flow controlがあるから問題ないはず。<br>flow controlを活用してるけど、サーバーのmemory usageとかconnection数によっては、大きめのchunkをdownloadしてHTTP connectionを閉じる方が効率的な場合もあるかも。無線protocolも、constant trickleよりburst transmissionの方が好きな場合が多いし。" userName="lxgr" createdAt="2025-04-12T04:17:47" color="#ff33a1">}}

{{<matomeQuote body="＞最近のブラウザはそうしてると思うけど<br>違うよ。ブラウザはファイル全体に対してbyte range request (0-)を送って、downloadが進むにつれてtime rangeが広がっていくんだ。seekしたら、別のbyte range request (10000-)を送る。だからブラウザがsmall chunkでrequestを送ってる証拠はない。<br>＞memory usage<br>flow controlがあるから、serverはsendできる以上のデータをfilesystemから読み込まない。<br>＞concurrent open connections<br>HTTP/1ならそうかもだけど、今はHTTP/2-3だよ。<br>＞無線protocol<br>browserがdownload speedをthrottleしてるわけじゃない。" userName="koakuma-chan" createdAt="2025-04-12T04:46:48" color="#ff5733">}}

{{<matomeQuote body="なるほど、勘違いしてたかも。range request basedのHLS playlistとごっちゃにしてたみたい。ありがとう！<br>＞browserがdownload speedをthrottleしてるわけじゃない。<br>client側で大きめのbufferを用意して、media codecが許す最小単位じゃなくて、大きめのchunkで読み込むことで同じ効果が得られるかも。TCP bufferからMP3 frameを1つずつ読み込むと、Nagle’s Algorithmでdownloadがthrottleされちゃうけど、無線には非効率的だよね。" userName="lxgr" createdAt="2025-04-12T13:22:02" color="#ff33a1">}}

{{<matomeQuote body="実際にはTCP bufferから直接読み込むことはないはず。appとTCPの間にはTLSがあるし、TLSがbufferingしてくれるはず。" userName="koakuma-chan" createdAt="2025-04-12T14:46:18" color="">}}

{{<matomeQuote body="それって結局、application layerのsmall bufferってことじゃない？TCP receive bufferにあったものが、application layerに移るだけじゃないかな。" userName="lxgr" createdAt="2025-04-12T17:03:35" color="">}}

{{<matomeQuote body="そうだね、TLSの話をするのに慣れすぎてる。bufferingなしでsmall readをするとsyscallのcostもかかるから、ごめんxD" userName="koakuma-chan" createdAt="2025-04-12T17:58:59" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
