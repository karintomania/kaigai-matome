+++
date = '2025-06-20T00:00:00'
months = '2025/06'
draft = false
title = 'Hurl HTTPリクエストのテストがプレーンテキストで超手軽に！？'
tags = ["HTTP", "API", "テスト", "自動化", "開発ツール"]
featureimage = 'thumbnails/red3.jpg'
+++

> Hurl HTTPリクエストのテストがプレーンテキストで超手軽に！？

引用元：[https://news.ycombinator.com/item?id=44324592](https://news.ycombinator.com/item?id=44324592)




{{<matomeQuote body="Hurlは数ヶ月前から使い始めたんだけど、テストスイートモードと個別実行モードがあるのがマジで良いね。CIでサービスのHTTPリクエストのテストスイートを実行するのに使ってるよ。設定言語はちょっとファンじゃないかな、ブロックが直感的じゃないし、ドキュメントに記載されてないアサーションもあると感じたんだ。全体的にはツールは素晴らしくて、すごく valuable だったよ。POCｓで interface testing を始めた時に使ってみたんだけど、これがLLM開発に役立つって気づいたんだ。テストがHTTPメソッドを直接実行するように書かれてるから、プロジェクトが進むにつれて実装の柔軟性と進化ができるんだ。テストを分離するのもすごく役に立ったし、interface と implementation の分離がさらに徹底される感じ。Hurlの前は、サービスの言語のテストフレームワークでテスト書いてたんだ。Hurlベースのテストはマジで”client”視点を徹底するのに役立つね。バックドアのデータアクセスとか全然なくて、interface、テスト、implementation の間に厳格な分離があるんだ！" userName="dm03514" createdAt="2025/06/20 13:26:14" color="#ff33a1">}}




{{<matomeQuote body="Hurlのメンテナーだけど、フィードバックありがとう！6、7年前にHurlを作り始めた時は、最初はJSONとかYAMLファイル形式だったんだ。だんだん新しいファイル形式を書く方が良いって確信したんだけど、それがちょっと変に感じるかもしれないってのは完全に理解できるよ。シンプルなケースはシンプルになるようにトライしたんだけど（もしかしたら成功してないかも！）。ドキュメントに関する問題には本当に興味があるから、どんな問題でも大歓迎だよ！いつでも改善できるからね！" userName="jicea" createdAt="2025/06/20 13:42:43" color="#785bff">}}




{{<matomeQuote body="Yeah、Hurl大好き！2023年9月から使い始めたんだ。前はRunscopeでテストスイート使ってたんだけど、変更がバージョン管理されないのがマジで嫌だった。AI助けて！って思いながらちょっと頑張ってRunscopeのテストを全部Hurlに変換したんだ。今は誰がどんな変更をいつ、なんでしたのか全部わかるようになった！マジ最高。" userName="1a527dd5" createdAt="2025/06/20 07:13:26" color="#ff5733">}}




{{<matomeQuote body="私もRunscopeの変更がバージョン管理されなかったの嫌いだったんだ :) その作業は始めたんだけど、その後なんか違う方向に行っちゃって。" userName="johns" createdAt="2025/06/20 17:01:08" color="">}}




{{<matomeQuote body="Oh wow、まさかここでRunscopeの創設者に出会うとはね。Runscopeは目的を果たしてくれたんだけど、バージョン管理ができるのが出てきちゃったんだよね。" userName="1a527dd5" createdAt="2025/06/20 20:38:03" color="">}}




{{<matomeQuote body="Hi Hurlメンテナーです、質問があれば喜んで答えるしフィードバックも大歓迎だよ！" userName="jicea" createdAt="2025/06/20 05:13:56" color="">}}




{{<matomeQuote body="ねぇ、私とか知り合いの多くは、VS CodeやIDEAのIDE拡張で実行できる”.http”ファイルの形でテストを書いてるんだ。あれって、<br> POST http://localhost:8080/api/foo<br> Content-Type: application/json<br><br> { ”some”: ”body” }<br><br>みたいな形式でしょ？それと、integration test 用に”expected.json”っていう出力の1対1マッピングがあるんだ。これらをbashスクリプトでcURLで実行して、jqで出力を比較、成功・失敗をコンソールにログして、”actual.json”を書き出すってやってるんだ。HURLでも同じような使い方はできる？要するに、期待する出力としてJSONファイルを参照する、IDEで実行可能なサンプルHTTPリクエストみたいな感じで？あと、それらのファイルのディレクトリ全体に対してHURLを実行することはできる？" userName="gavinray" createdAt="2025/06/20 09:17:51" color="#38d3d3">}}




{{<matomeQuote body="Hurlでそのやり方はできるよ。僕のプロジェクトでは、testディレクトリにHurlファイルを置いてて、テストケースごとに1ファイルになってるんだ。1つのケースで1つ以上のHTTPリクエストを実行できるよ。Hurlファイルは外部ファイルを参照したり、レスポンスから値を取得して後続のリクエストに使ったり、ステータスや出力のバリデーションもできるんだ。Hurlには色々なテストランナーモードがあって、もしもっと大きなレポートフレームワークと連携したいなら、全体の結果を解析可能な色々なフォーマットで出力することもオプションで選べるよ。" userName="digikata" createdAt="2025/06/20 15:55:09" color="#ff5733">}}




{{<matomeQuote body="それができるって聞いてマジ嬉しい！もしよかったら手元に例とかある？<br>もしそれができるなら、たぶん唯一お願いしたいのは、VS CodeやJetBrainsのIDEがサポートしてるREST Clientの”.http”ファイルとの相互運用性かな。UPDATE: 見つけた！下の方法でできるみたいだね。<br>    POST https://example.org/api/tests<br>    Content-Type: application/json<br>    file,insert_user.request.json;<br><br>    [Asserts]<br>    body == file,insert_user.expected.json;<br><br>ってことだと、あとはIDE連携だけだね。" userName="gavinray" createdAt="2025/06/20 16:21:18" color="#45d325">}}




{{<matomeQuote body="そのアプローチ良いね。あなたのexpected.jsonは実際のレスポンスボディなの？それともボディ、ステータス、ヘッダーの値、時間などを含むオブジェクト？" userName="xnorswap" createdAt="2025/06/20 13:56:42" color="">}}




{{<matomeQuote body="Hurlはレスポンスボディしか検証しないけど、俺にはそれで十分。APIドキュメント、テスト、開発中のAPI呼び出しに便利だから気に入ってるぜ。" userName="gavinray" createdAt="2025/06/20 16:20:01" color="#38d3d3">}}




{{<matomeQuote body="HurlはメンテナブルなHTTPテスト書くのに過小評価されてるよな。良いツールだぜ、ありがとう！" userName="hiddew" createdAt="2025/06/20 06:59:56" color="">}}




{{<matomeQuote body="VSCodeのrest clientの開発者と協力して、httpファイルの標準仕様を作ったらどうだ？" userName="LadyCailin" createdAt="2025/06/20 09:28:06" color="">}}




{{<matomeQuote body="ちょっと脱線するけど、Hurlって名前の響きが最高に気に入ってるんだ。" userName="airstrike" createdAt="2025/06/20 12:07:58" color="">}}




{{<matomeQuote body="メンテナンスお疲れ様！ Hurlは今後2年でどうなると思う？" userName="jiehong" createdAt="2025/06/20 06:44:28" color="">}}




{{<matomeQuote body="IDE連携、gRPC、Websocketサポートは良いね。個人的にはaptで入るのが一番嬉しいな。Debianへの対応がマジで難しくて手こずってるんだよ。<br>https://github.com/Orange-OpenSource/hurl/issues/366" userName="jicea" createdAt="2025/06/20 07:07:12" color="#ff5c5c">}}




{{<matomeQuote body="Fedoraパッケージもないみたいだな。もし時間できたら、specファイルとかci/cdワークフローを提供して、そっちでも使えるように手伝えるかもよ。" userName="akdev1l" createdAt="2025/06/20 13:06:41" color="#ff5c5c">}}




{{<matomeQuote body="Hurlは使ってるし貢献もしたことあるぜ。設定ファイルのインクルード機能、実現できそう？" userName="nikeee" createdAt="2025/06/20 14:50:42" color="">}}




{{<matomeQuote body="Hurlはマジで最高！ PythonからRustにサービス移した時、HurlのテストのおかげでAPI変えずにできたんだ。Rustで使うとcargo testとも連携できて、.hurlファイルがそのままテストに使えるのが激アツだよ！ デモはこれ。<br>https://github.com/perrygeo/axum-hurl-test" userName="perrygeo" createdAt="2025/06/20 12:48:29" color="#ff5733">}}




{{<matomeQuote body="正直言うとね、あのサンプル section[1] はツールの良さを伝えるのに超うまいやり方だと思ったよ。<br>特に最初の5分でパッと判断しちゃう人には響くはず（俺もたまにやっちゃうけど）。<br>[1] https://github.com/Orange-OpenSource/hurl?tab=readme-ov-file..." userName="hliyan" createdAt="2025/06/20 12:04:30" color="">}}




{{<matomeQuote body="俺が自分のHTTPテストツール「Nap」[0]をデザインする時、このHurlからめっちゃインスピレーションもらったんだ。<br>何百ものテストを速く、並列に実行する必要があったからね。<br>もしそういうのが必要で、Hurlが気に入ったなら、Napも気に入るかも。<br>[0] https://naprun.dev" userName="twodave" createdAt="2025/06/20 12:52:07" color="#38d3d3">}}




{{<matomeQuote body="そのNapの設定って、Hurlと一緒？違う？似てる？<br>違いをまとめたページとかあるの？教えてほしいな。" userName="bitpush" createdAt="2025/06/20 19:07:40" color="">}}




{{<matomeQuote body="一番の違いはね、NapはYAMLで動くことだよ。<br>どんな感じかは、ページの左側にある「The Basics」[0]をクリックすると見れるよ。<br>[0] https://naprun.dev/the-basics/" userName="twodave" createdAt="2025/06/20 20:18:45" color="#ff5733">}}




{{<matomeQuote body="なんか、これってこのVS Codeの拡張機能にちょっと似てるね。<br>https://marketplace.visualstudio.com/items?itemName=humao.re...<br>HTTPとか色々テストするのに超使えるやつだよ。" userName="chvid" createdAt="2025/06/20 05:14:50" color="#785bff">}}




{{<matomeQuote body="IntelliJにも同じような機能あるよ。<br>https://www.jetbrains.com/help/idea/http-client-in-product-c..." userName="krisgenre" createdAt="2025/06/20 05:21:39" color="#ff5c5c">}}




{{<matomeQuote body="https://github.com/mistweaverco/kulala.nvim<br>Neovimには「kulala.nvim」っていう別のrestish系（gRPCもできる）プラグインもあるよ。<br>Jetbrainsのにできるだけ互換性を持たせようとしてるみたい。" userName="vyskocilm" createdAt="2025/06/20 08:07:59" color="">}}




{{<matomeQuote body="Neovimにもあるんだって！「rest.nvim」[0]っていうやつ。<br>職場の人がIntelliJの使ってるの見てから、Neovimで探したんだけど、これが一番良かったな。完璧じゃないけど、ちゃんと動くよ。<br>あ、でも記事のHurlも超 neat だね。試してみるわ。いくつかよく使うテスト用に用意しておくのに便利かも。<br>[0] https://github.com/rest-nvim/rest.nvim" userName="7d24cbd0556f442" createdAt="2025/06/20 06:09:42" color="">}}




{{<matomeQuote body="そうそう、エディタに依存しないってのが、個人的には超デカいメリットだと思う。" userName="jiehong" createdAt="2025/06/20 06:43:10" color="">}}




{{<matomeQuote body="あとBrunoとBruってのもあるんだよね。<br>これもHurlに結構似てるみたいだよ。<br>https://docs.usebruno.com/bru-lang/overview<br>ただ、これはPostman使う人向けっぽいから、Hurlほど軽量じゃないかもね。" userName="lowwave" createdAt="2025/06/20 07:55:58" color="">}}




{{<matomeQuote body="Postmanとかそれに似たツールは全然軽量じゃないし、Postmanとその騒動は置いといても、データをインポート・エクスポートしないとリポジトリにコミットできるテキストファイルにならないのが大きな欠点なんだ。うちのチームではこれがだめで、みんながテストスイートを作ってもコミットしないから、他の人が同じ作業を何度もやっちゃうんだよ。" userName="LadyCailin" createdAt="2025/06/20 09:31:50" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Brunoならテキストファイルのためにインポートやエクスポートは必要ないよ。" userName="argentinian" createdAt="2025/06/20 09:52:03" color="">}}




{{<matomeQuote body="あああ、わかった。Insomniaと混同してたかも。あれもPostmanのフォークかな？どっちにしても、テキストファイル問題がPostmanがだめだった理由だよ。Rest Clientは設定がテキストファイルなのも良いね。bearer tokenとかをスクリプトで更新できる。でもRest Clientにもリクエストチェインとか欠点はあるけど。" userName="LadyCailin" createdAt="2025/06/20 11:04:55" color="#785bff">}}




{{<matomeQuote body="Brunoでも設定はテキストファイルだよ。Rest Client使ってたけど、コンピュータのNO_PROXY環境変数を使って特定のURLでプロキシを回避したかった時、それができなくて困ったんだ。それで他のツールを探すことになった。分析の結果、BrunoとHurlが良い感じだった。Hurlはまだ試してないな。" userName="argentinian" createdAt="2025/06/20 19:36:39" color="#45d325">}}




{{<matomeQuote body="うん、Hurlは触ってみて良かったけど、最近は.httpファイル形式に惹かれてるんだ。IntelliJには組み込みであるし、リンクされてたプラグインもあるし、CLIならhttpYacを使ってる。ベンダーロックインがないし、コピペやソース管理で簡単に共有できるのが最高だね。" userName="mcescalante" createdAt="2025/06/20 06:44:42" color="#785bff">}}




{{<matomeQuote body="HttpYacには＋１だね。使い始めやすくて、だんだん強力なAPIテストスイートとして成長させられるのが本当に良いよ。" userName="gotimo" createdAt="2025/06/20 08:31:04" color="">}}




{{<matomeQuote body="アイデアは良いと思うけど、なんでこれを使うべきか悩むね。僕はDjangoを書いてて、フレームワーク内に十分なテスト機能があるんだ。なんでバックエンドに盲目で、同期の手間が増えるツールに切り替えるんだろう？少なくとも、結果がおかしい時にデバッガーで簡単に調べられなくなる。バックエンドとテストコードを明確に分けるメリットもあるだろうけど、これだと作成・保守が大変になりそう。ネイティブのテストスイートも結局必要だし、外部ツールに手を出すのは少し変な感じがするな。APIが十分に汎用的で、他の人もクライアントを実行できるようにするためだけならありえるけど。" userName="3eb7988a1663" createdAt="2025/06/20 15:56:35" color="#785bff">}}




{{<matomeQuote body="バックエンドに盲目で、同期の手間が増えるツールか。僕はHurlは使ってないけど、言語非依存のAPIテストツールはいくつか使ったことがあるし、今も新しいのを作業中だよ。こういうテストの良いところは…実装に盲目なこと、むしろそれが利点なんだ。内部に依存せず、インプットとアウトプットだけを見れるからね。言語非依存で共有しやすいから、ドキュメントとしても使えるし、OpenAPI specに加えて、または代わりにチーム間で共有するのにすごく良い。それに実際に契約をテストしてるから、移行の時にも再利用できるんだ。PerlからGoへの大規模なAPI移行で、既存のPerl APIのテストを非回帰テストとして書いて、Go APIでも全く同じテストを使えたから、書き直すよりずっと自信が持てたよ。開発者としても、これらを書くことで文脈を切り替えて、自分が作ったAPIの消費者になれるから、質の高いテストを書きやすかったな。" userName="thiht" createdAt="2025/06/20 16:27:35" color="#45d325">}}




{{<matomeQuote body="これはPostmanとかの代替だよ。HTTPリクエストをいくつかテストするためだけに、重たいElectronウィンドウを丸ごと起動する必要がなくなるんだ。curlスクリプトとPostmanの中間くらいの位置づけで、多くの人にとってちょうど良いところをついてるんだよ。" userName="sorashi" createdAt="2025/06/20 16:00:56" color="#ff5733">}}




{{<matomeQuote body="うちではHurlを使って、ktorのWebサーバーからSpring Bootに書き換えたんだ（Java/Kotlinスタック）。サーバーのスタックに依存しない仕様テストスイートがあったおかげで、移行がすごく楽だったよ。もう一つの利点は、プロダクション用にDockerイメージをビルドしたんだけど、結合テストのために軽量で実装に縛られないものが欲しかったんだ。それにHurlが役立ったね。" userName="jicea" createdAt="2025/06/20 16:08:34" color="#ff5c5c">}}




{{<matomeQuote body="Hurlは必須じゃないし、もっと良いツールがあればそっちでいいよ。でも、チームで使うなら追加モジュールとかvenvがいらない自己完結型ツールはめちゃくちゃ便利。みんな簡単に使えるようになるし、起動も速いだろうね。特にヘッダーテストは、ウェブサーバーやLB、CDNの設定確認に役立ちそうだよ。" userName="CoolCold" createdAt="2025/06/21 03:35:03" color="#785bff">}}




{{<matomeQuote body="面白いね。昔はVS Code-restclient使ってたけど、最近はスクリプトやCLI用にhttpyacに移ってるんだ。Hurlも試してみるよ。でも、こういうツールを使ってて困るのが、`.http`ファイルで前のリクエスト結果を次の入力にする構文に標準がないこと。Hurlは`[Captures]`、VS Code-restclientは`{{loginAPI.response.body.token}}`、httpyacは`@ref`って全部バラバラなんだよね。どれか一つに合わせると他で動かなくなりそう。<br> [1] https://hurl.dev/docs/capturing-response.html<br> [2] https://github.com/Huachao/vscode-restclient<br> [3] https://httpyac.github.io/guide/metaData.html#ref-and-forcer..." userName="kalli" createdAt="2025/06/20 09:24:32" color="#38d3d3">}}




{{<matomeQuote body="またHTTPクライアント用の新しいフォーマット作っちゃって、ごめんね！<br> この問題に対処するために、Hurlと一緒に使える`hurlfmt`っていうツールがあるよ。HurlファイルをJSONにエクスポートできるんだ。JSONを介せば他の形式にも変換できるかも。魔法じゃないけど、Hurlから別のツールに移る時にちょっとは役立つと思うよ。" userName="jicea" createdAt="2025/06/20 09:41:33" color="#ff33a1">}}




{{<matomeQuote body="大丈夫、みんながどんな構文が良いと思ってるか見るのも面白いね。エクスポート・インポートツールがあると、確かにちょっと楽になるかも。標準化の仕組みやきっかけは分からないけど、多分すごく良いツールが出てみんなが真似したくなる時かな。とにかく、返信ありがとう。ツール頑張ってね。" userName="kalli" createdAt="2025/06/20 09:48:55" color="">}}




{{<matomeQuote body="すごいのは、Visual Studio CodeとVisual Studioの両方に`.HTTP`ファイルがあるのに、互換性がないってことだよ。 みなさん、これがConway’s Law（コンウェイの法則）の実践例だね。" userName="jiggawatts" createdAt="2025/06/20 10:01:01" color="">}}




{{<matomeQuote body="JVMプロジェクトでは、結合テストにKarateを使ってるよ。 https://github.com/karatelabs/karate<br>テストシナリオに好きなJavaScriptを書けるから、リクエストや検証を自由に設定できるんだ。" userName="a57721" createdAt="2025/06/20 08:09:40" color="#ff5733">}}




{{<matomeQuote body="IntelliJにあるHTTP Clientツールに似てるんじゃない？ https://www.jetbrains.com/help/idea/http-client-in-product-c..." userName="the_arun" createdAt="2025/06/20 05:20:16" color="">}}




{{<matomeQuote body="似てるかもしれないけど、IDEのプラグインではないよ。" userName="resonious" createdAt="2025/06/20 05:28:26" color="">}}




{{<matomeQuote body="単体でも使えるみたいだよ。 https://blog.jetbrains.com/idea/2022/12/http-client-cli-run-..." userName="HatchedLake721" createdAt="2025/06/20 08:55:25" color="">}}




{{<matomeQuote body="こういうシンプルでCLIで使えるツール、すごく良いね！ https://httpie.io/cli とか https://jqlang.org/ を思い出したよ。" userName="mdtrooper" createdAt="2025/06/20 08:43:11" color="">}}




{{<matomeQuote body="Nice editor integration（特にEmacs）があれば、HurlはPostmanのいい代わりになるね。ちょっとニッチだけど、俺はlibhurlをラップしてAWS Lambdaの可用性モニターを超簡単に作れるようにしたよ。このHurlファイルからね→ https://gitlab.com/manithree/hurl_lambda" userName="manithree" createdAt="2025/06/20 15:01:33" color="#785bff">}}




{{<matomeQuote body="面白そうだね。依存ライブラリを見てみたんだけど、HTTPコールとかをテストするCLIツールで1.5k行って、Rustだと普通なの？このURL見てよ→ https://github.com/Orange-OpenSource/hurl/blob/master/Cargo...." userName="Thaxll" createdAt="2025/06/20 13:06:36" color="">}}




{{<matomeQuote body="依存関係はCargo.lockじゃなくてCargo.tomlファイルを見た方がいいんじゃないかな（直接の依存だけでもね）。lockファイルには開発やテスト用の依存も入っちゃうからさ。" userName="ewpratten" createdAt="2025/06/20 13:15:08" color="#ff33a1">}}




{{<matomeQuote body="Hurlに足りないのはスナップショットテストだね。`insta`でAPIテストしてから、もうそれに慣れちゃって他の方法に戻れないよ。" userName="laerus" createdAt="2025/06/20 04:48:16" color="">}}




{{<matomeQuote body="それってhttps://insta.rs/のこと？スナップショットテストでどんなメリットを感じた？教えてよ。" userName="porker" createdAt="2025/06/20 05:04:22" color="">}}




{{<matomeQuote body="定型コードがめっちゃ減るんだよね。スナップショットの差分を見て変更を承認するか拒否できるのが、より堅牢でユーザーフレンドリーだよ。" userName="laerus" createdAt="2025/06/20 06:33:49" color="#785bff">}}




{{<matomeQuote body="スナップショットの価値って何？body全体をチェックするんじゃダメなの？HurlのREADMEにも色々書いてあるじゃん→ https://github.com/Orange-OpenSource/hurl?tab=readme-ov-file..." userName="whilenot-dev" createdAt="2025/06/20 06:02:49" color="">}}




{{<matomeQuote body="スナップショットは現在の出力と前回の差分を見るんだ。俺がするのはその差分をOKかNGするだけ。期待する応答を自分で全部書かなくていいんだよ。非決定的な部分（日付とか）もマスクできるしね。" userName="laerus" createdAt="2025/06/20 06:32:24" color="#785bff">}}




{{<matomeQuote body="非決定的な部分をマスクできるんだ！知らなかった！俺はそれをモックでやってたよ。スナップショットテストがそういう非決定的な部分を”マスク”できるって聞くと、超クールだね！" userName="adelineJoOs" createdAt="2025/06/20 08:07:57" color="">}}




{{<matomeQuote body="正直、それってかなりスナップショットテストに近いと思うよ。APIテストだけじゃなく、俺は今TUIアプリのテストにも使ってる。「なんか出力があって、それを表示できるなら、将来変更するまで同じ見た目であるべき」っていうテストなら使える。最初のスナップショットを自分で書かなくていいのも便利だよ！" userName="adelineJoOs" createdAt="2025/06/20 12:25:35" color="#ff5733">}}




{{<matomeQuote body="Kreyaっていうツールでもスナップショットテストを開発中だよ。8月に出る予定だから、チェックしてみて！" userName="CommonGuy" createdAt="2025/06/20 06:42:23" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Hurlのフォーマットで、レスポンスのステータスコードのアサーションがなんで[Asserts]じゃなくてリクエストのところに書くのか、それがずっと謎なんだよね。理由は何なんだろう？" userName="yoavm" createdAt="2025/06/20 12:26:55" color="">}}




{{<matomeQuote body="ひとつ前のコメントへの回答だよ。<br>簡単なGETでステータスコードを書くなら、<br>GET http://foo.com<br>  HTTP 200<br>って書けばOK。<br>[Asserts]セクションで<br>GET http://foo.com<br>  HTTP *<br>  [Asserts]<br>  status == 200<br>って書くこともできる。<br>HTTP行はレスポンスセクションの区切りになってるんだ。" userName="jicea" createdAt="2025/06/20 19:07:14" color="#45d325">}}




{{<matomeQuote body="自分のRADテンプレートWebサーバープロジェクトでHurlがテストにすごく役立ってるよ。Hurlベースのテストのおかげで「クライアント視点」が強化されるって話、ほんとそう。Dockerイメージ含め3つの環境でテストしてるけど、Hurlで全部クライアントレベルのテストが簡単にできるんだ。<br>欲を言えば、もっと高機能な正規表現が欲しいな。regexクレート（とHurl）は後方参照ができないから、特定のパターンチェックができなかった。あと、ストリーム更新やSSEのテスト方法があれば最高なんだけど。コネクション開いて待機、別のリクエスト、元のコネクションのストリームをアサート、みたいな。詳細はこのリンク見て。https://github.com/Orange-OpenSource/hurl/discussions/2636" userName="infogulch" createdAt="2025/06/20 15:35:21" color="#38d3d3">}}




{{<matomeQuote body="自動テストにはHurlを使ってるんだけど、個人的には別のツールを開発したいと思ってるんだ。Hurlのクライアントの状態管理がイマイチで、そこを直すのは簡単じゃない。もっと完全にクライアントの状態を制御できて、変数管理も使い方も良くしたいんだよね。前のプロジェクトではPythonでテスト書いたけど、最初は良かったけど継続メンテでどうなるか分かんないな。" userName="lelanthran" createdAt="2025/06/20 07:56:46" color="">}}




{{<matomeQuote body="すごく興味深いツールだね。俺も似たようなことをやったことがあるんだ。VS Code Rest-client（https://marketplace.visualstudio.com/items?itemName=humao.re...）のファイル向けにCLIモードのインタープリターを実装したんだ。HTTP操作の結果に対してJavaScriptでテストコードを実行できる機能も付けたよ。バッチモードで.httpファイルをまとめて実行したり、選んだHTTP操作を並列で実行できるツールにしたかったんだ。" userName="mikmoila" createdAt="2025/06/21 21:40:36" color="">}}




{{<matomeQuote body="これ良さそうだね。もしWebSocketサポートが追加されたらテストに使ってみたいよ。詳細はここ見て。https://github.com/Orange-OpenSource/hurl/issues/1096" userName="zoidb" createdAt="2025/06/20 05:26:36" color="">}}




{{<matomeQuote body="いいね。これ、Goで書かれたこのツール（https://github.com/vdobler/ht hjsonを使ってる）よりずっと良さそうだ。数年前にかなり使ってたんだ。Hurlを試してみるつもりだよ。" userName="cyri" createdAt="2025/06/20 14:42:24" color="">}}




{{<matomeQuote body="READMEのPOST例、パスワードをクエリパラメーターで送ってるの？省略記法？それとも文字通り？<br>俺はcurlの代替はあんまり必要ないかな。前はhttpieとか使ってたけど、結局Pythonのrequestsライブラリでテスト書くのに戻っちゃうんだよね。<br>もしかしたら俺はターゲットじゃないのかもだけど、何か良いこと言っとくべきかな。Rust製なのは良いね。AIのモノリスに仕事全部スクレイピングされる時代になって、OSSツールには新しいプロジェクトが必要とされてるから、こういうのは祝うべきだよ。ただ、俺には使いどころがないのが残念だけど。" userName="antisceptic" createdAt="2025/06/20 05:29:59" color="">}}




{{<matomeQuote body="READMEのPOSTは、リクエストボディで”url form encoded”形式、ウェブページのフォームみたいにパラメーターを送るんだよ。ドキュメントサイトにもっとサンプルがあるよ [1]。<br>curlに関して言うと、Hurlはリクエスト間でデータを渡したり、レスポンスにアサートを追加するための構文をcurlに足してるだけなんだ。一度送って終わり、みたいなリクエストならcurlで十分だけど、認証が必要なリソースにアクセスするみたいなワークフローがあるならHurlは試す価値あり。Hurlは内部でlibcurlを使ってて、`--curl`オプションでcurlコマンドリストを見ることもできるよ。<br>[1]: https://hurl.dev/docs/samples.html" userName="jicea" createdAt="2025/06/20 06:00:37" color="#ff5733">}}




{{<matomeQuote body="READMEのPOSTリクエスト例さ、フォームみたいにボディにパラメータ送るってこと？<br>それともこの例のuserとpasswordをボディで送るって言ってるの？<br>POST https://example.org/login?user=toto&password=1234<br>これってマジ？どうやってクエリ文字列パラメータ入りのPOSTリクエスト送るの？<br>[Form]パラメータのドキュメント[1]だと、フォームエンコードされたリクエストパラメータ送るには明示的な構文があるって書いてあるよ？<br>[1]: https://hurl.dev/docs/request.html#form-parameters" userName="mrcarrot" createdAt="2025/06/20 06:35:25" color="#45d325">}}




{{<matomeQuote body="ごめんね、両方とも。READMEのサンプルはずっと前（4年前）からあって、ちゃんと読み直してなかったんだ。<br>POST https://acmecorp.net/login?user=toto&password=1234<br>これはREADMEにある、userとpasswordパラメータをURLに入れたPOSTリクエストだよ。<br>POST https://acmecorp.net/login<br>  [Form]<br>  user: toto<br>  password: 1234<br>これはもっと一般的な、userとpasswordをボディに入れたPOSTだよ。多分READMEのサンプル更新すると思う。Issueはここで作ったよ。[1]<br>[1]: https://github.com/Orange-OpenSource/hurl/issues/4151" userName="jicea" createdAt="2025/06/20 07:38:01" color="#ff5c5c">}}




{{<matomeQuote body="これってcurlっていうよりPostmanの代わりになると思うんだ。APIのセットで作業してる時、すぐにHurlファイル書いて色んな組み合わせを試せるんだよね。エディターの連携で個別のリクエストを実行できることが多いし。で、同じHurlファイルをチームで共有したり、リポジトリにコミットしたりできるんだ。" userName="ankitrgadiya" createdAt="2025/06/20 05:47:06" color="">}}




{{<matomeQuote body="もしPython使いならtavernをチェックしてみてよ。宣言的にAPIテスト書くのに結構いい感じだよ。" userName="tra3" createdAt="2025/06/20 05:50:08" color="">}}




{{<matomeQuote body="これマジでawesomeだね。こんなの何回も探してたし、作るの途中で投げ出したこと何回もあるんだよ。マジ素晴らしい仕事！" userName="gabesullice" createdAt="2025/06/20 05:48:28" color="">}}




{{<matomeQuote body="俺だけ？それともこれ、https://github.com/Sanix-Darker/dycow からインスピレーション受けたんじゃないかな？" userName="sanix-darker" createdAt="2025/06/23 01:22:02" color="">}}




{{<matomeQuote body="テスト間で「fixtures」って共有できるの？例えば、何百ものテストでユーザーごとにサインアップとログインのプロセスをコピペしたくないんだけど。<br>テストの分離はどうやる？<br>テストを実行する前後にサービスを「prime」するのに何か他のツール使ってる？" userName="globular-toast" createdAt="2025/06/20 08:20:13" color="#45d325">}}




{{<matomeQuote body="俺も似てるけどちょっと違うの作ったよ。<br>サポートしてるどのクローラーでもGETリクエスト投げて、結果をJSONで取得するやつ。<br>https://github.com/rumca-js/crawler-buddy/<br>request, selenium, Httpx, curl cffiとか対応してるよ。" userName="renegat0x0" createdAt="2025/06/20 14:02:29" color="">}}




{{<matomeQuote body="元祖Hurl HTTPツールに敬礼！https://web.archive.org/web/20100112040154/http://hurl.it/" userName="johns" createdAt="2025/06/20 17:04:07" color="">}}




{{<matomeQuote body="うわー！これ、10年くらい前に俺がやろうとしてたことにめっちゃ似てるんだよね。あの頃はノープランすぎてダメだったけどさ。https://github.com/zackify/legible" userName="zackify" createdAt="2025/06/20 14:38:40" color="">}}




{{<matomeQuote body="環境変数とかプロファイルとか、グローバル変数を変えて使えたりするの？" userName="genericspammer" createdAt="2025/06/20 07:06:42" color="#ff5c5c">}}




{{<matomeQuote body="うん、envファイルを使えるよ。リクエストファイルでテンプレート構文を使うんだ。<br>https://hurl.dev/docs/templates.html#injecting-variables" userName="DownGoat" createdAt="2025/06/20 07:16:57" color="#45d325">}}




{{<matomeQuote body="これクールだけど、素朴な疑問なんだけどさ、なんでHTTP呼び出しも簡単なスクリプト言語じゃなくてこれを使うの？DSLってPLより格段に楽なわけじゃないし、制限もあるよね？生の速度とかDSLの読みやすさのため？" userName="ninetyninenine" createdAt="2025/06/20 13:23:35" color="#45d325">}}




{{<matomeQuote body="＞ curlスクリプトとPostmanの中間くらいか。Emacsのrestclient-modeにすごく似てるね。Emacsを開いてない人には確かに魅力的なのが分かるわ。" userName="kqr" createdAt="2025/06/20 17:21:37" color="">}}




{{<matomeQuote body="PostmanユーザーでOrg ModeとEvilを使ってるんだけど、Emacsのrestclient-modeについて教えてくれない？" userName="dotancohen" createdAt="2025/06/23 00:21:28" color="">}}




{{<matomeQuote body="restclientじゃなくてOrg-modeだよ。コード動かして結果を連携できる文芸的プログラミング環境なんだ。APIテストでob-httpとか使って、結果をClojureやPython、Javascript、Rブロックに渡してJSON処理、SQL DBクエリも。実験が再現可能でノートに残るのが良い。検索、エクスポートも簡単だし、PDFや動画リンク、LLM、Anki連携も。全部Org-modeで完結だよ。" userName="iLemming" createdAt="2025/06/23 20:38:20" color="#785bff">}}




{{<matomeQuote body="ありがとう。文字通り売ってくれって意味じゃなくて、どうワークフローに合うか説明して欲しかったんだ。ちゃんと伝わったよ。<br>Org modeは簡単な個人ノートで使ってる。帰ったらRESTクライアントとして使ってみるよ。EmacsはすごいOSだけど、まともなテキストエディタがないっていつも言われてるよね。" userName="dotancohen" createdAt="2025/06/23 23:23:59" color="">}}




{{<matomeQuote body="もちろん。Org modeソースブロック間でデータを渡す実例だよ¹。Emacsも好きだけど、Org-modeは本当に宝物だわ。もっと早く知りたかった。最高のツールだよ。仕事ノート、個人ジャーナル、Org-Roam、LLMチャット、研究、学習、Anki、pomodoro、dotfiles管理、全部Org-mode。プレーンテキストの価値は過小評価されてる。一度分かると手放せないよ。___¹ https://www.reddit.com/r/emacs/comments/1hbi751/passing_data...² https://news.ycombinator.com/item?id=44264368" userName="iLemming" createdAt="2025/06/23 23:41:17" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
