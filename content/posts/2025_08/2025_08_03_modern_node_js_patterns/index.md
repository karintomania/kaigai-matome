+++
date = '2025-08-03T00:00:00'
months = '2025/08'
draft = false
title = 'Node.jsのモダンなパターンを徹底解説！開発の質を高める秘訣！'
tags = ["Node.js", "プログラミング", "セキュリティ", "Web開発", "設計"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> Node.jsのモダンなパターンを徹底解説！開発の質を高める秘訣！

引用元：[https://news.ycombinator.com/item?id=44778936](https://news.ycombinator.com/item?id=44778936)




{{<matomeQuote body="うわー、これ知らなかったわ。Node.jsの実験的なパーミッション機能だって！Denoにインスパイアされたみたいで、めっちゃ良い機能じゃん。<br># Run with restricted file system access<br>  node --experimental-permission \<br>    --allow-fs-read=./data --allow-fs-write=./logs app.js<br>  <br># Network restrictions<br>  node --experimental-permission \<br>    --allow-net=api.example.com app.js<br>Looks like they were inspired by Deno. That’s an excellent feature. https://docs.deno.com/runtime/fundamentals/security/#permiss..." userName="simonw" createdAt="2025/08/03 22:43:57" color="#ff5c5c">}}




{{<matomeQuote body="ランタイムやアプリにこんな機能は要らないって思うね。「適切な」場所はOSで、すでに解決済みだし、あらゆる角も処理されてる。車輪の再発明は複雑性、バグの表面、メンテナンスの負担を増やすだけだよ。他で解決済みの問題をなぜまた解決しようとするの？" userName="berkes" createdAt="2025/08/04 06:27:35" color="">}}




{{<matomeQuote body="正しく実装されてるとは思えないな。銀行が顧客を信頼するようなものだよ。MAC（強制アクセス制御）をやりたいなら、OSのカーネルレベルでやるべきだね。AppArmorやSELinuxを使えば、ファイルアクセス以外にもっと多くのことが制御できるよ。" userName="tankenmate" createdAt="2025/08/04 05:27:02" color="#45d325">}}




{{<matomeQuote body="Linux、macOS、Windows全体でこれをOSレベルでどう解決するつもり？Pythonプロジェクトで何年も良い方法を見つけようとしてきたんだ。試した解決策は互換性がないし、複雑でドキュメントも信頼できないから、ミスしそうで不安なんだよね。" userName="simonw" createdAt="2025/08/04 13:11:56" color="#ff5733">}}




{{<matomeQuote body="「信頼できない」っていう不満、意味が分からないな。彼らがこのサポートをしない方が良かったってこと？何が言いたいわけ？単に信頼できないって言いたいだけ？" userName="motorest" createdAt="2025/08/04 06:01:53" color="">}}




{{<matomeQuote body="これをネイティブな方法でどうやるの？chrootとかかな？でも、みんなが*nixシステムを使ってるわけじゃないし、Node開発者がOSについてそこまで知ってるとも限らないよね。Javaエコシステムでもっとひどいけど、それは「一度書けばどこでも動く」って売りになってるし。" userName="Cthulhu_" createdAt="2025/08/04 07:42:38" color="">}}




{{<matomeQuote body="NodeはN-API経由でパッケージにネイティブアドオンを許可してるから、それらのパーミッションでは制限されないんだよね。Denoは--allow-ffiでこれに対応してるけど、この実験的なNodeのパーミッションはN-APIを無効化する機能がない。Node標準ライブラリしか制限できないみたい。" userName="throwup238" createdAt="2025/08/04 06:30:17" color="#ff5c5c">}}




{{<matomeQuote body="OSは実際には問題を解決してないよ。どんなプログラムでもファイルにアクセスできるし、そのアクセスを制御するのはかなり難しい。eBPFを使ってseLinuxでポリシーを強制するとか？それはマシンの管理者じゃないとできないことも多いしね。現代のセキュリティはサプライチェーン脆弱性対策で、Capabilityモデルみたいに、明示的に許可されたものしかアクセスできないようにするべきなんだ。" userName="vlovich123" createdAt="2025/08/04 12:13:16" color="#785bff">}}




{{<matomeQuote body="これはdotenvライブラリを使うことについての僕の考えなんだけど。「適切な」場所はOSだね。アプリは環境変数をロードするんじゃなくて、読み取るだけでいいんだよ。OMZとかにあるdotenv関数＼プラグインの方がはるかに望ましいね。" userName="hk1337" createdAt="2025/08/04 09:40:26" color="">}}




{{<matomeQuote body="嫌いな点なんてある？NodeのパーミッションはOSレベルの制限を置き換えるんじゃなくて、追加するだけなんだぜ。" userName="epolanski" createdAt="2025/08/04 09:34:47" color="">}}




{{<matomeQuote body="NodeがN-API経由のネイティブアドオンを許可してるから、ネイティブモジュールはパーミッションに制限されないって？NodeパーミッションはNode標準ライブラリを制限するだけ。それがどうした？Nodeのドキュメントにhttps://nodejs.org/api/permissions.html#file-system-permissi...って明確に書いてあるじゃん。何が言いたいんだ？" userName="motorest" createdAt="2025/08/04 07:14:52" color="#ff5733">}}




{{<matomeQuote body="OSレベルのチェックはOSやバージョンで変わるから、アプリバイナリにチェックがあればOS関係なく標準実装できるってことだね。DBレベルのセキュリティルールもよく聞くけど、RLSみたいな強力な機能を使ってもAPIレベルの認証チェックをサボっちゃダメ。ビジネスロジックとDB、両方で確認すべきだよ。" userName="_heimdall" createdAt="2025/08/04 11:49:04" color="#ff33a1">}}




{{<matomeQuote body="パス制限って簡単そうに見えて、ちゃんと実装するのは超ムズいんだぜ。PHPのopen_basedirも昔シンボリックリンクとかでバイパスされまくったらしいし。Nodeも同じ道を辿ってるみたいだね。DNSのトリックで--allow-net制限を突破される可能性もあるかも。これだけじゃ脆弱性じゃないだろうけど、標的型攻撃の一部にはなりうる。だから過信しないで、多層防御をしっかりやろうぜ！" userName="kijin" createdAt="2025/08/04 04:59:29" color="#38d3d3">}}




{{<matomeQuote body="いやいや、追加じゃなくて混乱させるだけだよ。管理者からしたら、同じ設定がいろんな場所でバラバラに管理されるのってマジで最悪なんだよな。Node.jsのこの機能実装は、システムレベルのいろんな細かいケース、特にDNS検索パスとか`/etc/hosts`とか、考慮してないと思うわ。アプリが発見プロトコルに余計な（しかも壊れた）レイヤーを加えるのはやめてほしい。接続問題の解決がマジで大変になるんだから。" userName="crabbone" createdAt="2025/08/04 15:02:46" color="#38d3d3">}}




{{<matomeQuote body="「*nixシステム以外で動く人もいる」ってWindowsのこと？WindowsにもOSレベルでちゃんとテストされて信頼できるファイルシステムパーミッションがあるぜ。「Node開発者全員がOSについて詳しいわけじゃない」って言うなら、このNode機能も理解できないだろうし、それに対応したコードも書けないだろうな。もしシステムパーミッションを真剣に考えるなら、OSでやる方がはるかに楽だって。" userName="Deestan" createdAt="2025/08/04 07:58:45" color="#38d3d3">}}




{{<matomeQuote body="何年もcronがいいって言われてたけど、本番で動かなかったり、権限が足りなかったり、ログが残らなかったりって問題ばかりだったわ。OSの変更も大変。7年前に自作のNodeスクリプトに切り替えたら、マジでゼロ問題！開発者も喜んでスケジューラーに登録してる。DockerやKubernetesがあるのは、OS設定が必要なデプロイがムズい証拠。もし”npm start”でコードのバージョンに合った適切なパーミッション制限ができるなら、喜んで使うぜ！" userName="batmansmk" createdAt="2025/08/04 10:10:15" color="#785bff">}}




{{<matomeQuote body="必要なアクセス権だけを適切に設定してるアプリが、本番環境でどれくらいあると思う？その割合が高くても、開発者のマシンで何でもインポートするようなNodeスクリプト動かしてる人たちはどうなんだ？安全に動かすことはできるけど、そんな人は少ないだろうな。こういう機能があれば、その割合を増やせるんじゃないか？" userName="brulard" createdAt="2025/08/04 08:28:20" color="#ff5c5c">}}




{{<matomeQuote body="Node.jsの実装ってDNS検索パスを認識してると思う？（俺の予想だと90%は認識してないね）。DNS検索パスってのは、`/etc/resolv.conf`に”search foo”があると、`foo.bar.com`と`bar.com`へのリクエストが同じになる企業ネットワークの機能だよ。Node.jsがこれを理解せずに設定されたら、これらの操作はできなくなる。運用管理者としては、Node.jsのこんな機能を使われたらマジ嫌だ。おもちゃであって本物じゃない。DNSはアプリが扱うべきじゃなくて、システムのタスクなんだからさ。" userName="crabbone" createdAt="2025/08/04 14:52:07" color="#ff33a1">}}




{{<matomeQuote body="簡単にバイパスできるパーミッションシステムなんて、何の意味があるんだ？" userName="pfg_" createdAt="2025/08/04 07:35:51" color="">}}




{{<matomeQuote body="アプリと一緒にデプロイするには運用チームの協力が必要だけど、コマンドラインの変更は開発者ができるって話だよね。" userName="bombela" createdAt="2025/08/04 05:34:28" color="">}}




{{<matomeQuote body="OSレベルで解決するとOSごとに対応が必要だよね。Node.jsとJavaでデータ解析の方法が違うのと同じ。本当にOSに依存しない汎用的な解決策なら、ネットワークレベル、例えば特定のURLへのトラフィックだけ許可するプロキシを使うのがいいんじゃないかな。" userName="spacebanana7" createdAt="2025/08/04 13:20:19" color="#ff5c5c">}}




{{<matomeQuote body="実際的な理由としては、ランタイムはコードよりも多くのパーミッションを持つべきってことだね。例えばNode.jsの`require(’fs’)`はシステムフォルダーのファイルを読み込む可能性があるから。" userName="afiori" createdAt="2025/08/04 16:21:09" color="">}}




{{<matomeQuote body="じゃあ、「セキュリティシアター」が一番良い選択肢なの？皮肉じゃなくて、すごく浅い選択肢で簡単に回避されちゃいそうだけど。" userName="tankenmate" createdAt="2025/08/05 11:22:51" color="">}}




{{<matomeQuote body="チームで開発するなら、`env`や設定の読み込みロジックをリポジトリに組み込むとすごく便利だよ。アプリケーションプロセスで読み込む必要はなくて、コードベースの一部である周辺ツールに含めることができる。" userName="theozero" createdAt="2025/08/04 23:23:41" color="">}}




{{<matomeQuote body="`allow-net`の公式ドキュメントが見つからないな。ブログ記事しかないみたい。" userName="captn3m0" createdAt="2025/08/04 07:49:03" color="">}}




{{<matomeQuote body="プロキシはネットワークアクセスは解決するけど、ファイルシステムアクセスは解決しないよね。プロキシを使う場合、信頼できないコードがプロキシ経由でしかネットワークにアクセスしないようにどう保証するかが課題だね。コンテナやiptables以外でその方法を見たことがないな。" userName="simonw" createdAt="2025/08/04 13:25:36" color="#38d3d3">}}




{{<matomeQuote body="cronが使えないなら、ランタイムやアプリ内ではなく、SaaS cronやSystemdなど既存のOSレベルの解決策を使うべきだ。DIYは「Do One Thing」に反し、不完全で非効率な上に、構築や長期保守に余計な時間がかかり、ビジネスに集中できなくなるという損失を生むよ。" userName="berkes" createdAt="2025/08/04 11:11:43" color="#785bff">}}




{{<matomeQuote body="まったく！「でもWindowsは…」って反論はよく聞くけど、Windowsが`env`などに欠けてるなら、サポートしてる環境に移行するか、Windowsユーザー専用のツールを導入すべきだ。複雑な`.env`ファイルスキャナーなんて作るなよ。開発では`.env`ファイルを使うけど、プロジェクト外の`zenv`や`loadenv`ツールを使って環境変数に読み込んでるよ。" userName="berkes" createdAt="2025/08/04 11:19:23" color="#785bff">}}




{{<matomeQuote body="開発者のコードにセキュリティホールがないか信用できないからね。" userName="simonw" createdAt="2025/08/04 17:21:50" color="#ff5c5c">}}




{{<matomeQuote body="このアイデアはいいんだけど、OSツールが良くない場合はどうする？macOSとか、OSレベルのサンドボックスはあるけど、ドキュメントがほとんどなくて、ブログ記事を読み漁るしかないんだよ。Nodeに組み込めば、少なくとも理論的にはどのOSでも同じものがすぐに手に入るってことだよね。<br>[0] https://www.karltarvas.com/macos-app-sandboxing-via-sandbox-..." userName="Etheryte" createdAt="2025/08/04 09:55:26" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ここでのキラーアップグレードはESMじゃないね。NodeがfetchとAbortControllerをコアに組み込んだことだよ。axiosやnode-fetchを捨てたら、Lambdaのバンドルが軽くなって、コールドスタートのレイテンシーが約100ms短縮されたんだ。もし習慣でまだnpm install axiosしてるなら、2025年のNodeはもう「補助輪を外す」合図だよ。" userName="farkin88" createdAt="2025/08/03 20:11:10" color="#ff5733">}}




{{<matomeQuote body="話はそれるけど、バリデーションとAPI呼び出しは密接だから共有するね。個人的には`ts-rest`をスタック全体で使うのが好きだよ。zodやJSON Schemaベースのライブラリの中で一番スリムだし。好きなHTTPクライアントを使えるし（自分はBunやFastifyを使ってる）。型安全性をコンパイル時にほとんど移行できるから、多少のオーバーヘッドは全然気にならない。他の人はどう思う？何か他にオプションあるかな？かなり探したけど、軽量で十分な型安全性を備えてるのはこれだけだった気がする。" userName="exhaze" createdAt="2025/08/03 21:54:50" color="#ff33a1">}}




{{<matomeQuote body="node fetchはaxiosより断然良いよ（使いやすくて分かりやすい、シンプル）。まだaxiosを使ってる人がいるなんて知らなかったな。" userName="yawnxyz" createdAt="2025/08/03 20:24:09" color="">}}




{{<matomeQuote body="fetchの構文や`response.json`をawaitする必要がある点、追加のエラーハンドリングが必要なところがどうも好きじゃなかったな。<br><br>async function fetchDataWithAxios() {<br>    try {<br>      const response = await axios.get(’https://jsonplaceholder.typicode.com/posts/1’);<br>      console.log(’Axios Data:’, response.data);<br>    } catch (error) {<br>      console.error(’Axios Error:’, error);<br>    }<br>}<br><br><br><br>async function fetchDataWithFetch() {<br>    try {<br>      const response = await fetch(’https://jsonplaceholder.typicode.com/posts/1’);<br><br>      if (!response.ok) { // Check if the HTTP status is in the 200-299 range<br>        throw new Error(”HTTP error! status: ${response.status}”);<br>      }<br><br>      const data = await response.json(); // Parse the JSON response<br>      console.log(’Fetch Data:’, data);<br>    } catch (error) {<br>      console.error(’Fetch Error:’, error);<br>    }<br>}" userName="tanduv" createdAt="2025/08/03 21:55:54" color="#ff5733">}}




{{<matomeQuote body="リリースから16年も経って、ネットワークリクエストを中心に据えたJSランタイムが、ようやくデフォルトでネットワークリクエストをサポートするようになったってことだね。" userName="andai" createdAt="2025/08/04 01:00:36" color="">}}




{{<matomeQuote body="ライブラリ作者としては逆だね。fetchは素晴らしいけど、ESMは苦痛だったけど絶対的に価値のあるアップグレードだったよ。記事の作者が言ってること全部当てはまるし。" userName="franciscop" createdAt="2025/08/03 20:58:24" color="#ff5733">}}




{{<matomeQuote body="ライブラリ作者の視点は興味深いね。確かに、デュアルパッケージハザードとかCJS/ESM互換性地獄、ツール変更とか、エコシステム全体の変化に対応しなきゃいけなかったんだもんな。だから、ESMの方が彼らにとっては大きな出来事だったってのも分かるよ。" userName="farkin88" createdAt="2025/08/03 21:08:31" color="#ff5c5c">}}




{{<matomeQuote body="当たり前だけど、当時からネットワークリクエストはサポートしてたよ。fetch APIなんてまだ存在しなかったし、当時の標準だったXMLHttpRequestは狂ってたからね。" userName="snickerdoodle12" createdAt="2025/08/04 01:27:00" color="">}}




{{<matomeQuote body="すごかったけどちゃんと動いたね。少なくともダウンロードの進捗は確認できたし。" userName="8n4vidtmkvmk" createdAt="2025/08/04 03:29:36" color="">}}




{{<matomeQuote body="fetchでダウンロード進捗は取れるけど、アップロードはドキュメント不足で実装が大変そうだよ。XMLHttpRequestの方がいいかもね。ちょっと興味湧いたから今から実装試してみるわ。" userName="CSSer" createdAt="2025/08/04 04:12:04" color="#ff5733">}}




{{<matomeQuote body="俺はいつもfetchはこう書くんだよね<br>    const data = (await fetch(url)).then(r =＞ r.json())<br><br>でもさ、好きなように構文をラップするのはめちゃくちゃ簡単だよね。" userName="stevage" createdAt="2025/08/04 01:30:57" color="">}}




{{<matomeQuote body="APIコールの型安全はめちゃくちゃ重要だよね。ts-restは使ったことないけど、コンパイル時バリデーションって堅実そう。実行時のサプライズより全然良いじゃん。実際、使ってみてどう？シンプルなエンドポイントだとスキーマ定義のオーバーヘッドって重く感じる？" userName="farkin88" createdAt="2025/08/03 22:29:12" color="#38d3d3">}}




{{<matomeQuote body="axiosのエクステンションが恋しいなぁ。レート制限とか、スロットリング、リトライ戦略、キャッシュ、ロギングとかがめちゃくちゃ簡単に追加できたんだよね。fetchでもできるけど、なんかバラバラだし、ボイラープレートが多いんだよなぁ。" userName="Raed667" createdAt="2025/08/03 20:33:22" color="#785bff">}}




{{<matomeQuote body="先週、俺もts-restを導入しようとしたんだよ。でも、express v5をまだサポートしてないって気づいてさ: https://github.com/ts-rest/ts-rest/issues/715<br>ts-restはいいライブラリだけど、メンテ不足で不安になっちゃったんだよね。LLMのおかげで今は自社製ソリューションを作るのもアリだよって話。俺はシンプルなts-restを数日で自作して大満足。Claudeがめちゃくちゃ助けてくれたわ。2025年には自作がもっと一般的になるかもね。" userName="jbryu" createdAt="2025/08/03 22:50:28" color="#785bff">}}




{{<matomeQuote body="プラットフォームがネイティブなHTTPクライアントサポートを最初から持ってなかったことにいつも驚いてるんだよね。過去20年間、ほぼ全てのプロジェクトで必要だったのにさ。<br>あと、「fetch」って名前もさ、ほとんどのAPIコールがPOSTだって考えるとイマイチだよね。" userName="pbreit" createdAt="2025/08/03 21:49:33" color="">}}




{{<matomeQuote body="俺は信頼性が必要なコードだと、APIコールには必ず何かしらのスキーマバリデーションを入れるようにしてるんだ。プロトタイプにはtRPCを使うこともあるけど、プロダクションではzodが一番使いやすいね。fetchApiみたいなラッパーでスキーマとバリデーションをまとめて扱うようにしてるよ。" userName="_heimdall" createdAt="2025/08/04 00:01:52" color="#ff5c5c">}}




{{<matomeQuote body="なんでこれでダメなの？<br>    const data = await (await fetch(url)).json()" userName="mythz" createdAt="2025/08/04 03:30:06" color="">}}




{{<matomeQuote body="fetchをベースにしたaxiosみたいなライブラリを作る余地がありそうだね。" userName="hiccuphippo" createdAt="2025/08/03 21:04:45" color="">}}




{{<matomeQuote body="CJS/ESMの互換性の問題が解消しつつあるってことは、あれって技術的な制約じゃなくて設計の問題だったんだな。たくさんの時間を無駄にしたわ。" userName="bikeshaving" createdAt="2025/08/03 23:43:29" color="#ff5c5c">}}




{{<matomeQuote body="向こう側でスキーマってどうやって提供してる？フロントエンドとバックエンドを同期させるのが大変だったから、バックエンドからスキーマを読んでフロントエンドにAPIファイルを生成するスクリプトを書いたよ。" userName="pnappa" createdAt="2025/08/04 00:11:01" color="#ff33a1">}}




{{<matomeQuote body="すごく簡潔だね。でも、二重の`await`はやっぱり変だよな。なんで必要なんだ？" userName="mcv" createdAt="2025/08/04 06:31:21" color="">}}




{{<matomeQuote body="`axios`はまだ、dev.toとかの初心者向けチュートリアルで使われてるのを見るよな。レガシーコードもたくさんあるし。" userName="reactordev" createdAt="2025/08/03 21:32:17" color="#785bff">}}




{{<matomeQuote body="アップロードもダウンロードもプログレスバー付きで動かせたよ。サーバーがHTTP/2かQUICに対応してるかが鍵で、`Express`じゃなく`Fastify`に乗り換えたらスムーズだった。`fetch`が簡単に進捗追跡できるのは嬉しいね。" userName="CSSer" createdAt="2025/08/04 07:41:51" color="#ff5733">}}




{{<matomeQuote body="俺もライブラリをメンテしてるんだけど、ESMへの移行はめちゃくちゃ大変だったよ。結局CJSも配布しなきゃいけないし、どっちでもバンドルできてテストできるようなコードの書き方を考えなきゃならないからな。" userName="stevage" createdAt="2025/08/04 01:32:57" color="#38d3d3">}}




{{<matomeQuote body="AIがそれを80年代のディスコでWham.を流すみたいにぶり返させるぞ。「やるなら間違ってやれ」ってな。" userName="bravesoul2" createdAt="2025/08/03 22:02:29" color="">}}




{{<matomeQuote body="gist見せてもらえる？" userName="rikafurude21" createdAt="2025/08/04 10:57:47" color="">}}




{{<matomeQuote body="そうだね、典型的なバンドルサイズとDXのトレードオフだよね。`fetch`は確かにボイラープレートが多いし、`response.ok`の手動チェックとか二重の`await`はめんどくさい。`Lambda`でコールドスタートを最適化するなら我慢するけど、バンドルサイズがそんなに重要じゃない普通のアプリ開発なら、`axios`のきれいなAPIの方が俺は好きだな。" userName="farkin88" createdAt="2025/08/03 22:09:16" color="#45d325">}}




{{<matomeQuote body="それは設計上の選択でも技術的な制約でもなかったんだ。複雑で、個別のグループ間の細かい内部作業と調整が必要なことだった。Joyee Cheungがそのすべてをやり遂げるために、かなり英雄的な努力をしたから実現したんだよ。Joyeeのブログ記事で詳しく説明されてるから、Node.jsみたいな大きなプロジェクトで物事がどう進むか、より正確な全体像がわかるよ: https://joyeecheung.github.io/blog/2024/03/18/require-esm-in..." userName="bakkoting" createdAt="2025/08/04 03:49:58" color="#ff5733">}}




{{<matomeQuote body="ts-restは最近あまり使われてないらしいよ。俺たちはモダンなTanStack Queryとの連携がイケてないから、別の選択肢を探し始めたんだ。で、oRPCが使えるレベルになってたから、これをお勧めするよ。tRPCみたいだけど、ts-rest風の契約に対応してて、標準OpenAPI RESTエンドポイントも使えるんだ。チェックしてみて！<br>https://orpc.unnoq.com/<br>https://github.com/unnoq/orpc" userName="hmcdona1" createdAt="2025/08/04 03:51:42" color="#ff5733">}}




{{<matomeQuote body="未だに`fetch`じゃなくて`axios`が使われてるのを見るたび、まじでムカつくね。みんな気にしてないのか、既存のプロジェクトをコピペして使い回してるだけなんだろうな。" userName="pjmlp" createdAt="2025/08/04 06:19:58" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="`fetch`のネイティブなパフォーマンスと`axios`みたいな便利さが、まさに求めてるものだよね。そういう方向に進んでるライブラリもあるけど、まだ完璧なのはないな。多分、軽量さを保ちつつ、リトライパッケージの問題とか解決するのが難しいんだろうね。" userName="farkin88" createdAt="2025/08/03 21:13:00" color="">}}




{{<matomeQuote body="もう`chalk`とか`picocolors`をインストールする必要ないぜ。`node:util`の`styleText`を使えば自分でテキストにスタイルをつけられるんだ。<br>Docs: https://nodejs.org/api/util.html#utilstyletextformat-text-op..." userName="vinnymac" createdAt="2025/08/03 21:58:34" color="#ff33a1">}}




{{<matomeQuote body="俺はそういうの全然必要なかったな。アプリ全体で使うオブジェクトプロパティに、こんな感じでANSIエスケープシーケンスを直接入れてたよ。<br>`text: { angry: ”\u001b[1m\u001b[31m”, ... }`<br>こうやって直接呼んでたんだ。`${vars.text.green}whatever${vars.text.none}`ってね。" userName="austin-cheney" createdAt="2025/08/04 02:52:34" color="">}}




{{<matomeQuote body="それこそ、賢いつもりになってる人の問題点だよね。ターミナル設定に関係なくエスケープシーケンスが出力されちゃうじゃん。そんな時は、それをちゃんと処理してくれるライブラリ（他にもたくさんの癖に対応してくれる）を使う方が、ずっと理にかなってるよ。" userName="xbbdbd" createdAt="2025/08/04 05:30:28" color="">}}




{{<matomeQuote body="賢いとかそういう問題じゃないね。エスケープシーケンスは何十年も前からあるし、事実上の標準として普遍的にサポートされてる。ChromiumのDevToolsのコンソールでさえ直接サポートされてるんだぜ。本当の問題は「自前主義（invented here syndrome）」だよ。みんな、不確実性への感情的な恐怖から、不合理にライブラリに頼りすぎなんだ。`left-pad`事件みたいに極端な例を見ると、みんなが不合理な理由で依存関係を増やしてるのがわかるよ。" userName="austin-cheney" createdAt="2025/08/04 10:37:45" color="#ff33a1">}}




{{<matomeQuote body="俺もマイクロライブラリは嫌いだけど、あんたの解決策だと、出力が`grep`とかにパイプされた時に、不要なエスケープコードが出力されちゃうんだよな。対話モードでしか意味ないものならいいけど、UNIXシェルの一部として動くことを想定してない壊れたプログラムを散々見てきたからな。まぁ、出力が対話型シェルじゃない時に、エスケープコードの変数に空の文字列を代入すれば簡単に解決できるんだけどね。" userName="homebrewer" createdAt="2025/08/04 11:59:46" color="#38d3d3">}}




{{<matomeQuote body="`pnpm`の依存関係ツリー表示は、`|less`にパイプしようとすると俺のターミナル環境を壊すんだよね。JavaScript関連のツールで、こういう困った挙動がいくつか見られるな。多くのユーザーはそんな深いところまで依存関係を見ないか、もっと凝ったツールを使ってるんだろうけど。これって、今のJavaScriptエコシステムの状況をよく表してる症状だと思うよ。" userName="palmfacehn" createdAt="2025/08/04 14:39:53" color="">}}




{{<matomeQuote body="それは文字列出力の問題じゃないんだよ。ターミナルエミュレータの問題だ。アプリケーションが、呼び出し元のターミナルやシェルのモードや挙動を知る必要なんてないんだ。他のstdoutに書き込む全アプリケーションにまったく同じことが言える。賢さなんて関係ない。でも、もし本当に他の理由でANSI記述子を避けたいなら、例えばカラー出力が好きじゃないとか、俺のアプリケーションにはANSI制御文字列の値を空文字列に置き換える「no-color」オプションがあるよ。" userName="austin-cheney" createdAt="2025/08/04 12:30:34" color="">}}




{{<matomeQuote body="多くのアプリが`isTTY`を使って出力を決めてるってこと知ってた？" userName="zachrip" createdAt="2025/08/04 14:08:20" color="">}}




{{<matomeQuote body="ターミナルエミュレーターはパイプには関係ないよ。`grep`はエスケープコードをそのまま検索しちゃうから、これは文字列出力の問題だね。自分でやるならちゃんとやるか、`NO_COLOR`みたいなエッジケースも考慮した実績のあるライブラリを使おうよ。" userName="9dev" createdAt="2025/08/04 21:22:02" color="#ff5733">}}




{{<matomeQuote body="「実績のある」ってどういう意味？JS開発者は「たくさんの人が使ってるから安全」って思いがちだけど、それはセキュリティを重視する組織とは考えが違うよ。NPMの多くのパッケージには安全性の評価がなくて、悪意のあるものが増えてるんだ。自分でミスしても、依存関係を無計画に増やすよりはマシな場合が多いんじゃないかな。" userName="austin-cheney" createdAt="2025/08/04 21:53:39" color="#ff5c5c">}}




{{<matomeQuote body="文字列整形ライブラリの話であって、レンダリングエンジンじゃないんだからさ。品質が気になるならGitHubでソース読めばいいじゃん。俺はいつもそうやって、自分で実装するかインストールするか決めてるよ。" userName="9dev" createdAt="2025/08/05 05:46:40" color="">}}




{{<matomeQuote body="アプリケーションが100％担当すべきことだよ。だから多くのプログラムには`--color=auto`みたいなオプションがあって、出力先（ターミナルなら色付き、パイプなら色なしとか）に応じて最適な出力モードを推測するんだ。" userName="eddd-ddde" createdAt="2025/08/05 01:47:42" color="#ff5c5c">}}




{{<matomeQuote body="それはアプリを使う人や環境によるよ。公開するならライブラリがいいし、社内とか決まった環境なら、こんな簡単な解決策なら余計な依存は不要だね（ただし、ライブラリで簡単に代替できるようなシンプルな場合だけだけど）。" userName="progx" createdAt="2025/08/04 07:21:57" color="">}}




{{<matomeQuote body="広く実装されてるターミナルのエスケープシーケンスはもうよく知られてると思うけど、なんでこんなの毎回コピペしなきゃいけないんだろ？ログをファイルにパイプしてもエスケープコードが書き込まれるんでしょ？もっと楽にすればいいじゃん。" userName="tkzed49" createdAt="2025/08/04 04:55:59" color="">}}




{{<matomeQuote body="厳密に言えば、ライブラリを使うのも「全プロジェクトにコピー」してるって言えるんじゃない？" userName="berkes" createdAt="2025/08/04 06:30:04" color="">}}




{{<matomeQuote body="それって不必要に理屈っぽいよ。前のコメントの人は、Node.jsの標準ライブラリに入ってるから、わざわざライブラリをインストールしたりANSIエスケープの表をコピペしたりするのを思いとどまらせるって言ってるんだ。" userName="tkzed49" createdAt="2025/08/04 07:44:08" color="">}}




{{<matomeQuote body="俺は「ascii.txt」ってファイルに「本の絵文字」のブロック文字を用意してて、ログの先頭にコピペしてるよ。ログがうるさくならなくていい感じ。HNだと表示できないから、ここのページにリンクするね: https://www.piliapp.com/emojis/books/" userName="fuzzythinker" createdAt="2025/08/04 06:30:54" color="">}}




{{<matomeQuote body="それは本のエモジだけじゃなくて、もっとたくさんの記号があるからだよ。幾何学的なコードのdocstringを書くのが楽になるんだ。残りはここにあるぜ（HNだとフォーマットが崩れるからコピペしてみてくれ）。" userName="fuzzythinker" createdAt="2025/08/04 07:46:28" color="">}}




{{<matomeQuote body="正直、シェルスクリプトを手書きするときはそうしてるけど、もし内蔵されてるならなんでわざわざするんだ？" userName="vinnymac" createdAt="2025/08/05 02:04:58" color="">}}




{{<matomeQuote body="これは最高だぜ。この記事を読んで、個人的な小さいプロジェクトにすぐ使えることがいくつか分かったよ。<br>1. Node.jsには組み込みのテストサポートがあるから、Jestはもういらないみたいだ！<br>2. Node.jsには組み込みのウォッチサポートがあるから、nodemonもいらないみたいだ！" userName="tyleo" createdAt="2025/08/03 19:51:11" color="#ff33a1">}}




{{<matomeQuote body="`node:test`を試したけど、これは小規模プロジェクトやサードパーティ依存を減らしたいライブラリ作者には便利だね。でも、大規模アプリにはシンプルすぎるし、`node:assert`はおもちゃみたいだから、最低でももっとちゃんとしたアサーションライブラリが必要だ。`vitest`は”ただ動く”し、多くのTypeScript設定の面倒な部分を解決してくれる。Jestは自重で潰れたよ。" userName="moogly" createdAt="2025/08/04 10:27:47" color="#ff5733">}}




{{<matomeQuote body="何年もJestとかを避けてMochaのシンプルさを選んできた者として、Mochaがアサーションライブラリをテストハーネスと分離した設計は今でも評価してるぜ。Chaiは今も素晴らしいアサーションライブラリだ。`node:test`プロジェクトでのTypeScript設定は、`”type”: ”module”`やその他のおかげで、そんなに問題ないな。https://www.chaijs.com/" userName="WorldMaker" createdAt="2025/08/04 16:19:06" color="#ff33a1">}}




{{<matomeQuote body="うーん、Node.jsのテスト機能はかなりイマイチだし、Node.jsの開発者たちは改善に興味がないみたいだぜ。数週間使ってみれば俺が言ってる意味が分かるはずだよ（それで問題点を報告しようとしても、Node.jsチームは気にしないって分かるだろうな）。" userName="hungryhobbit" createdAt="2025/08/03 21:57:33" color="">}}




{{<matomeQuote body="ドキュメントを見たところ、結構強力なモック機能やカスタムテストレポーターもあるみたいだね。これは本当に素晴らしい追加機能に聞こえるぜ。お前が言うように、実際に試すまでは熱意を抑えておくことにするよ。" userName="tejohnso" createdAt="2025/08/04 03:31:10" color="">}}




{{<matomeQuote body="それでも俺はMochaやChai、Sinon、Istanbulをインポートするよりは、そっちを使いたいね。結局ただのテストだし、構文が冗長でもLLMが書いてくれるんだからさ ;)" userName="upcoming-sesame" createdAt="2025/08/03 23:23:38" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
