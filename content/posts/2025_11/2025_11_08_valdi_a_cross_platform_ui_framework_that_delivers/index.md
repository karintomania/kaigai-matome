+++
date = '2025-11-08T00:00:00'
months = '2025/11'
draft = false
title = 'Valdiはネイティブ性能を実現するクロスプラットフォームUIフレームワーク！ その実力は？'
tags = ["UIフレームワーク", "クロスプラットフォーム", "パフォーマンス", "モバイル開発", "Web開発"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> Valdiはネイティブ性能を実現するクロスプラットフォームUIフレームワーク！ その実力は？

引用元：[https://news.ycombinator.com/item?id=45852854](https://news.ycombinator.com/item?id=45852854)




{{<matomeQuote body="React Native使ってるけど、アプリストアやプラットフォーム依存の言語にはうんざり。<br>来年はWebサイト＋WebViewアプリで、通知やGPS、Healthkitはネイティブコードにしようかと検討中。<br>AIの登場で、UIはプラットフォームごとに3回書く方がマシって思えてきたよ。" userName="bearjaws" createdAt="2025/11/08 03:02:09" color="#38d3d3">}}




{{<matomeQuote body="WebViewアプリ作ったけど、全然後悔してないよ！<br>良い体験のために、UIコンポーネントは基本に忠実にして、ボタンのスタイルとかはプラットフォームに合わせて調整。<br>キーボード表示時の挙動やiOSのスワイプ戻るなど、Webviewがネイティブブラウザと同じかテストすることも大事だね。<br>オフライン対応やネットワーク診断ツールも実装したよ。これはB2B向けだけどね。" userName="DecoPerson" createdAt="2025/11/08 03:33:42" color="#785bff">}}




{{<matomeQuote body="WebViewアプリで「本当に良い体験」だって思ったことは一度もないな。" userName="adastra22" createdAt="2025/11/08 05:02:40" color="">}}




{{<matomeQuote body="それって、WebViewアプリの体験が良いと気づかないけど、悪い時にだけ気づくからだよ。<br>AppleがWebviewをあちこちで使ってるけど、うまくやってるから誰も気づかないって記事を昔HNで見たんだ。そのリンク、今見つからないけどね…" userName="serial_dev" createdAt="2025/11/08 06:33:04" color="">}}




{{<matomeQuote body="良いWebViewアプリは気づかないって言うけど、Appleのアプリ以外で、iOSで良いWebViewアプリって今何があるの？" userName="jmb99" createdAt="2025/11/08 07:03:18" color="">}}




{{<matomeQuote body="俺はLemmyクライアントのVoyagerを毎日使ってるけど、一番好きなiPadアプリだよ。Apolloの後継だね。<br>https://github.com/aeharding/voyager<br>IonicのCapacitor製で、React Native製のBlueskyやDiscordより問題が少ない気がする。<br>一人でクロスプラットフォームアプリを作るなら、WebViewアプローチが唯一現実的な方法だと思う。Tauri Mobileも有望だけど、まだモバイルは優先じゃないみたい。" userName="erlend_sh" createdAt="2025/11/08 10:08:11" color="#ff5733">}}




{{<matomeQuote body="UIをプラットフォームごとに3回書くって話、複雑な長期アプリで実際にやった人いる？<br>機能やテストの同期が大変で、開発の楽しさが激減しそうで悪夢に聞こえるんだけど。<br>良いWebViewと比べてUXが少し良い程度なら、ネイティブコードベースってそんなに莫大なトレードオフをする価値があるのかな？<br>俺が何か見落としてるか、実際にこの開発に関わってない人の意見なのかな。" userName="seanwilson" createdAt="2025/11/08 14:46:59" color="#785bff">}}




{{<matomeQuote body="フロントエンド開発者に、優れたUXの管理を任せるのは、良い考えじゃないね。" userName="blub" createdAt="2025/11/08 07:39:54" color="">}}




{{<matomeQuote body="おいおい、フロントエンド開発者がUXについて何を知ってるって言うんだよ。呆れるね…" userName="khalic" createdAt="2025/11/08 09:14:45" color="">}}




{{<matomeQuote body="バウンディングモデルで補助される自動画像キャプチャのような、複雑なネイティブコードが必要になるまでは使えるよ。" userName="sebmellen" createdAt="2025/11/08 04:08:12" color="#785bff">}}




{{<matomeQuote body="10年ごとに試してるんだ。最初の数ヶ月は速さに感動するけど、新しいOS機能やネイティブなジェスチャー、スタイル、アニメーションを統合しようとすると後で苦労するんだよね。iOSで「スワイプで戻る」がないのが、WebViewを見てるって一番わかりやすいサインだね。もう10年くらい経ったから、また試す時期かな…。" userName="scosman" createdAt="2025/11/08 09:26:07" color="#ff5c5c">}}




{{<matomeQuote body="WebViewアプリとWebViewアプリを比べてるだけじゃない？「React Native」が意図的に専門用語を誤用して水を濁してるんだよ。React Nativeでも、結局はWebViewアプリを書くんだ。単にブラウザビューなしでデバイス上で動くように事前コンパイルされるだけ。でも、「ネイティブアプリ」が昔意味していたような、ネイティブUIコンポーネントは使ってないよ。" userName="adastra22" createdAt="2025/11/08 20:59:31" color="#785bff">}}




{{<matomeQuote body="それなら、わざわざアプリを作る意味ある？ユーザーはブラウザでWebアプリにアクセスできるじゃん。" userName="DeathArrow" createdAt="2025/11/08 08:09:33" color="">}}




{{<matomeQuote body="Web経由でできない理由はないよ。Canvasでの画像キャプチャなら、生の画像ピクセルマップデータにアクセスできるんだ。" userName="littlecranky67" createdAt="2025/11/08 07:29:47" color="#38d3d3">}}




{{<matomeQuote body="誰かがPlay Storeをスクレイピングしてフレームワークを調べたんだって。Capacitorで作られたAndroidのWebViewアプリのリストはここにあるよ: https://capgo.app/top_capacitor_app/<br>多分iOSでも同じアプリのリストがあるかもね…。" userName="la_fayette" createdAt="2025/11/08 08:15:21" color="#38d3d3">}}




{{<matomeQuote body="うん、Appleのアプリは本当にひどいね。App Storeもさ。あれが単体アプリなのかOSの一部と呼ぶべきなのかもわからないよ。WebViewアプリは設計上ひどいものなんだ。WebViewは一つの目的、つまり「Webビュー」のために作られたんだから。" userName="crossroadsguy" createdAt="2025/11/08 13:47:55" color="">}}




{{<matomeQuote body="独自のUIフレームワークを持つZedでは、逆の経験をしたよ。予期せぬ動作をして、UIが普段通りに振る舞わないから不気味な感じがしたんだ。これは、UIフレームワークを正しく作るのにどれだけの労力と経験が必要か、そしてUXにとって数えきれないほどの「ロングテールな癖」がどれほど重要かを示してるね。ブラウザから脱却しようとした努力は認めるけど、時間と予算の都合でWebベースのソリューションを選ぶ人がいるのも理解できるよ。" userName="torginus" createdAt="2025/11/08 14:22:49" color="#ff33a1">}}




{{<matomeQuote body="WebViewアプリって、Webアプリよりどう良いの？" userName="e12e" createdAt="2025/11/09 02:03:02" color="">}}




{{<matomeQuote body="これかな？ https://blog.jim-nielsen.com/2022/inspecting-web-views-in-ma... と https://news.ycombinator.com/item?id=30648424<br>モバイルではWebViewアプリの体験はクソだし、アプリがネイティブじゃないのは一目でわかるよ。誰も顧客にどう思うか尋ねてないんだ。マネジメントは、誰も文句を言わずユーザーが大量に離脱しない限り、体験は完璧だと決めつけてるんだよね。" userName="hn8726" createdAt="2025/11/08 07:58:16" color="#ff5733">}}




{{<matomeQuote body="フォーカスを直接操作するなら、ネイティブカメラアクセスは超大事だぜ。IDスキャンアプリでは、ネイティブデバイスの方が5倍もキレイな画像を撮れるんだ。特にiOSのAVFoundationはマジで別格だよ。" userName="sebmellen" createdAt="2025/11/09 03:15:34" color="#ff5c5c">}}




{{<matomeQuote body="CapacitorJSはReact Nativeより断然良い開発体験を提供してくれるんだ。記事の内容にピッタリな、すごく統合されたシステムだよ。僕の会社はReact NativeからCapacitorJSに切り替えたら、パフォーマンス含め、マジで雲泥の差だったよ！" userName="logicprog" createdAt="2025/11/08 08:53:28" color="#45d325">}}




{{<matomeQuote body="Webビュー使ってるアプリって、App Storeでリジェクトされる可能性、高くない？承認後にアプリ全体をゴッソリ変えられちゃうとか？それとも、URL埋め込みじゃなくてHTML/JSを直接バンドルしてるの？" userName="tiborsaas" createdAt="2025/11/08 11:45:18" color="">}}




{{<matomeQuote body="全くその通り！特にAppleのJIT禁止はホント勘弁してほしい。僕らのReact NativeアプリはWebアプリとコード共有で幾何学処理が必要なんだけど、「ちゃんと速く動くかな？」っていつもヒヤヒヤしてるんだ。ブラウザだと問題ないのに、React Nativeだと遅すぎて使い物にならない時があるんだよ。" userName="cyberax" createdAt="2025/11/08 04:03:28" color="#785bff">}}




{{<matomeQuote body="もし読み違えてたらごめん、でもそれちょっと違うんじゃないかな。React Nativeって名前の通り、ちゃんとネイティブUIコンポーネントを使ってるよ。AOTコンパイルじゃないし、Webビューじゃないアプリ内でJSを実行するけど、それがネイティブコンポーネントにマッピングされるんだ。" userName="boguscoder" createdAt="2025/11/09 00:12:56" color="">}}




{{<matomeQuote body="そうじゃないんだ。ロジックは共通言語で書いて、UIはビルド設定で切り替える外部レイヤーだよ。だいたいCやC++、あるいはLuaみたいな組み込み言語を選ぶよね。React Nativeは後者のやり方で、さらにUI用DSLとしてReactを使ってるんだ。" userName="skydhash" createdAt="2025/11/08 15:54:43" color="">}}




{{<matomeQuote body="これが言いたかったことかな？<br>https://news.ycombinator.com/item?id=45250759（「AppleがWebコンテンツにLiquid Glass効果を追加するプライベートCSSプロパティを持ってる」っていう話だけど）" userName="smokel" createdAt="2025/11/08 06:40:19" color="">}}




{{<matomeQuote body="スワイプバックがないからって、それが基準になるわけじゃないよ。Appleだって、そのパターンをいつも守ってるわけじゃないんだから。" userName="hjort-e" createdAt="2025/11/08 12:45:38" color="">}}




{{<matomeQuote body="ありがとう、どうやら間違ってたかFlutterの知識とごちゃ混ぜにしてたみたい。ごめんね。でも、カスタムなことする時、多くのReact NativeアプリはReact（ネイティブじゃない）コンポーネントを使うみたいだから、僕が体験したReact Nativeアプリでのイマイチな体験はそれが原因かもしれないね。" userName="adastra22" createdAt="2025/11/09 01:48:30" color="">}}




{{<matomeQuote body="ハイブリッドアプリ開発を8年間やってきた僕から話せることあるよ。僕は日頃はCordovaだけど、FlutterやRNも試した。iOS/Androidの見た目（スワイプジェスチャーとか）はIonic（FlutterならCupertinoパッケージ）が必須だね。これがないと大変。ただ、iOS 26の新デザイン（リキッドグラス）はまだ対応してないみたい。僕らは見た目にそこまでこだわらないから問題ないけど、こだわる人は気になるかもね。ハイブリッドだからとか、見た目が違うからってアプリが却下されたことは一度もないよ。ネイティブアプリじゃないって感じることはあるけど、誰が気にする？昔はOTAプラグインでアプリストアの審査なしにjs/htmlファイルを更新してたな。Ionicにもまだそういう機能があるはずだよ。ネイティブの機能を使うとなると大変なんだ。地図アプリとか、ネイティブSDKを使うケースだとハイブリッドは最適じゃない。JSとネイティブでデータを共有するプラグインをいくつか作ったけど、ビジネスロジックを共有するっていう当初の考えはもうなくなったね。ネイティブでやることが多すぎて、Androidで作ったらiOSでもSwift版を作らなきゃいけないんだ。みんなも言ってたけど、開発者が3つのプラットフォーム（iOS、Android、Cordova（Ionic+Angular））の知識を持たなきゃいけないのが一番の欠点だよ。僕はiOSとAndroidに詳しいけど、ネイティブ開発者とは言えないね。なのに、パーミッション、ジオロケーション、スレッド処理とか、たくさんのネイティブコードを書くことになる。バージョンアップのたびに新しい問題（Androidの16KBページサイズ、iPadOSの回転対応とか）が出てくるし。ここで時間がすごくかかるんだ。それだけじゃなくて、メンテされてない古いコミュニティプラグインを理解して直すのにも時間を使わされるんだよ。" userName="baduiux" createdAt="2025/11/08 20:51:10" color="#785bff">}}




{{<matomeQuote body="コンセプト的にはReact Nativeにすごく似てるね。React Native、Lynx.js（ByteDance/Tiktok）、そしてValdiと、全部Reactベースになってきたってことだ。競争は開発者にとって良いことだと思うけど、ValdiがReact Nativeみたいに大きくて速いエコシステムやコミュニティを作れるかは疑問だな。React Nativeはこの一年でかなり成長したし、LynxやValdiの良いところがたくさん改善されたりコピーされたりしてるよ。たとえば、Valdiの3つのコンパイルモード（AOT, JIT）は数ヶ月でReact NativeのStatic Hermesにも入るし、ネイティブバインディング生成もRNには公式ジェネレーターやnitro/nitrogenがある。Node-APIも開発中だね。アニメーションやJSコードを別スレッドで実行する機能（Lynx.js）も、RNにはswmansionのworkletライブラリがあるよ。TailwindCSSのサポート（Lynx）もRNではuniwindがある。Lynx.jsはReact以外もサポートしたいみたいだから、React Nativeよりチャンスがあるかもね。" userName="pzo" createdAt="2025/11/08 12:54:14" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ちょっと調べたら、ValdiはVSCodeでの完全なデバッグに対応してるみたい。これはいいね。React NativeはRadon IDEってのがあるけど、有料サブスクなんだ。ValdiがReact Nativeと同じHermesを使ってるのが面白いね。もしかしたらReact Nativeでも使えるように改造できるかも？AOTとJITを自分たちで実装したのか、それともStatic Hermesブランチを使ってるのか、開発モードでHermesを使ってるだけなのか、気になるな。参照URL: https://github.com/Snapchat/Valdi/blob/main/docs/docs/workfl..." userName="pzo" createdAt="2025/11/08 16:15:21" color="#ff5733">}}




{{<matomeQuote body="僕はこのプロジェクトの初期（Screenshopの頃！）にSnapにいて、Simonと直接デバッグ作業をしたんだ。彼は素晴らしいエンジニアで、このプロジェクトが公開されたことを本当に嬉しく思うよ。Snapチーム、本当におめでとう！" userName="joenot443" createdAt="2025/11/08 01:47:48" color="">}}




{{<matomeQuote body="Snapみたいな会社がクロスプラットフォームUIフレームワークに投資したことに驚いたな。もっと複雑なアプリに比べて、Snapchatはシンプルに見えるのに。それに、Snapchatってカメラ、AR機能、通知、スクリーンショット検出とか、ネイティブ機能との密な連携がすごく役立ちそうなアプリじゃない？" userName="xmprt" createdAt="2025/11/08 07:13:57" color="">}}




{{<matomeQuote body="たぶん、AirbnbがLottieを作ったのと同じ理由じゃないかな。こういう会社には超優秀なエンジニアがいるから、市場に適切な選択肢がないときに、こういう秘密裏のプロジェクトに投資できるんだよ。" userName="ingenieros" createdAt="2025/11/08 07:41:59" color="">}}




{{<matomeQuote body="「超優秀なエンジニア」がいると、そういうプロジェクトのコストは上がり続けるばかりで、結局「収益にならない」「コスト削減だ」って言われて、広告技術にもっと力を入れるように言われるか、会社を辞めるか、外部の無料労働力（「コミュニティ」）にメンテナンスを任せることになるんだよ。" userName="pols45" createdAt="2025/11/08 09:07:10" color="">}}




{{<matomeQuote body="僕の意見も同じだけど、Snapchatは何億人もの人に日常的に使われてる、最も複雑なアプリの一つだよ。君自身が挙げた全ての機能、どれもピクセルパーフェクトで、ユーザー体験を完璧にするために膨大な時間が費やされてるんだ。実際、Snapの成功はアプリがいかに完璧であるかに起因すると言える。なのに、それをシンプルだと呼ぶのか？" userName="ramraj07" createdAt="2025/11/08 08:00:15" color="#ff5733">}}




{{<matomeQuote body="僕は君の意見に同感だよ。でも、上のコメントの気持ちもわかるな。もしUIが「ただ理にかなってる」とか「めちゃくちゃシンプルで使いやすい」って思われたら、それは完璧だってこと。最高の褒め言葉だよね。" userName="Alifatisk" createdAt="2025/11/08 10:26:50" color="#785bff">}}




{{<matomeQuote body="クロスプラットフォームよりネイティブの方が詳細とパフォーマンスで優れてるって言いたかったんだよ。数百のビューがあるならクロスプラットフォームもいいけど、Snapchatぐらいならネイティブの方が速くて安いはず。<br>Snapchatの成功がピクセルパーフェクトのおかげって言うけど、2017年のAndroid版は全然最適化されてなくて、ピクセルパーフェクトとは言えなかったじゃん。" userName="xmprt" createdAt="2025/11/08 10:29:42" color="#785bff">}}




{{<matomeQuote body="SnapchatはしばらくAndroidアプリ出してなかったんだよ。HNのキーボード戦士は違うって思うかもしんないけど、特に米国のキッズの間ではiPhoneが主流だったから、Android体験は正直どうでもよかったんだろ。" userName="ramraj07" createdAt="2025/11/08 17:59:09" color="">}}




{{<matomeQuote body="だからさ、なんでそんなにクロスプラットフォームにこだわるわけ？Snapchatのことべた褒めしてるけど、俺の質問に答えてないじゃん。<br>Snapchatのエンジニアリングがすごいのは認めるけど、それがReact Nativeみたいな既製品使うとか、最初からネイティブでアプリ作るんじゃなくて、自前でクロスプラットフォームUIフレームワークに大金つぎ込む理由にはなんないでしょ。" userName="xmprt" createdAt="2025/11/08 19:32:24" color="#ff5c5c">}}




{{<matomeQuote body="Snapchatはさ、写真撮るのもテキトーで、実際の写真じゃなくてカメラのプレビューをパシャっとするだけだったアプリじゃん。" userName="FridgeSeal" createdAt="2025/11/08 11:14:53" color="">}}




{{<matomeQuote body="それはスピード出すためだったんだよ。好きでやってたわけじゃないでしょ。" userName="dbbk" createdAt="2025/11/09 12:15:22" color="">}}




{{<matomeQuote body="俺がそこにいた時、これ、マジで見てて面白いプロジェクトの一つだったな。最初からオープンソースにするって目標だったはずだから、実現して嬉しいよ！" userName="hummusFiend" createdAt="2025/11/08 02:28:08" color="">}}




{{<matomeQuote body="俺も！Simonとこれやってたし、Webに移植しようとしたんだけど（失敗したな）。マジで頭いい人だよ、Simonは！チームの皆、おめでとう！" userName="stuckinaloop" createdAt="2025/11/08 06:53:06" color="">}}




{{<matomeQuote body="SnapchatのAndroidアプリが散々だったのに、Snapがまともなクロスプラットフォームフレームワークを作れるなんて信用できないな。" userName="mholm" createdAt="2025/11/08 01:49:10" color="">}}




{{<matomeQuote body="変わったと思うけど、Android版アプリが写真じゃなくてカメラビューのスクリーンショットを撮ってたって知ったときは驚いたよ。変だよね。" userName="buffet_overflow" createdAt="2025/11/08 02:10:56" color="">}}




{{<matomeQuote body="InstagramのiOS版カメラで働いてたんだけど、画面プレビューと実際の高品質画像には最大5000ミリ秒の遅延があったんだ。AndroidカメラSDKは知らないけど、当時の古いハードウェアではパフォーマンスと品質のバランスを考えると、この選択は正しかったと思うよ。ユーザーは高品質を求めてなかったし、ズームもしなかったからね。バイラルになるには遅延ゼロの方がずっと重要だったんだ。" userName="kridsdale1" createdAt="2025/11/08 02:17:52" color="#ff33a1">}}




{{<matomeQuote body="＞ユーザーは高品質を全く求めていなかった、ズームすることもなかった。デーティングアプリもアップロードした写真の品質を下げてるよ。ほとんどの人にはそれで十分みたいだね。" userName="dmix" createdAt="2025/11/08 04:38:36" color="">}}




{{<matomeQuote body="2017年にSnapchat Android版の開発に携わってたよ。Androidのカメラを扱ったことない人にとっては変に感じるだけさ。GoogleはCameraXで頑張ってるけど、いろんな性能や品質のスマホが無数にあるからね。Snapは（当然ながら）アプリを開いて最速で写真を撮れることに超集中してたんだ。当時のトレードオフとしては妥当な判断だったよ。" userName="greysonp" createdAt="2025/11/08 05:15:35" color="#ff5733">}}




{{<matomeQuote body="その後改善されたけど、僕の理解だと、その技術的な理由は昔はカメラのビューファインダーAPIしかデバイス間で共通じゃなかったことだね。各メーカーが独自にカメラを実装してたから、開発者は高品質な写真や動画を撮るために、モデルごとのカメラ処理を書く必要があったんだ。" userName="cosmic_cheese" createdAt="2025/11/08 02:18:05" color="#785bff">}}




{{<matomeQuote body="そう、これはiOSでも昔、カメラAPIが公開されてなかった時代にそうやってたんだ。でもSteve Jobsが個人的にiOS App Storeでそういうアプリの公開を許可してたよ（2009年末）。" userName="yalok" createdAt="2025/11/08 06:00:27" color="">}}




{{<matomeQuote body="それが、当時のAndroidスマホでよくあった異常なシャッターラグを避ける唯一の方法だったんだ。「HoldStillForAMinuteChat」じゃなくて「SnapChat」だからね、理にかなってるよ。誰かを責めるならGoogleを責めればいい。最大シャッターラグ時間を義務付けることもできたはずだ（今はしてるかもしれないけど、知らないや）。" userName="IshKebab" createdAt="2025/11/08 21:09:23" color="#785bff">}}




{{<matomeQuote body="これ以上に使いたくないものなんて、ちょっと考えられないね。Snapchatが開発したUIフレームワークで、コミュニケーションがDiscord経由なんて、僕をうんざりさせるために念入りに設計されたとしか思えないよ。" userName="GaryBluto" createdAt="2025/11/08 11:02:06" color="">}}




{{<matomeQuote body="多くのソフトウェアプロジェクトがコミュニティをDiscordに移してるよ。良いことだとは言わないけど、そうしないと未来から自分を切り離すことになるよ。" userName="noitpmeder" createdAt="2025/11/08 12:14:15" color="">}}




{{<matomeQuote body="もし未来が批判的な思考ができない場所なら、俺は過去に留まるわ。" userName="GaryBluto" createdAt="2025/11/08 12:37:59" color="">}}




{{<matomeQuote body="セルフホストのフォーラムとか、GitHubの組み込みフォーラム、IRC。Discord以外なら practically anything だね。" userName="GaryBluto" createdAt="2025/11/08 14:57:56" color="">}}




{{<matomeQuote body="Discordは使ったことないんだけど、なんで使うべきじゃないのか納得させてほしいな。何がそんなにダメなの？" userName="antonvs" createdAt="2025/11/09 07:57:48" color="">}}




{{<matomeQuote body="Discordは、プラットフォームを使ってない人にはシンプルにアクセスできないんだ。アカウント作ってコミュニティ/“サーバー”に参加しないと何も見れないし、検索エンジンでも見つからないし、ローカル利用のためにエクスポートすることも全くできないんだよ。" userName="lblume" createdAt="2025/11/09 14:11:36" color="#ff5c5c">}}




{{<matomeQuote body="lblume と nicce が言ってたことに加えて、Discordは中国にコントロールされてるプライバシーの悪夢だよ（ログイン後しばらくすると非VOIPの電話番号で認証が必要になるらしい）。それに、バカでも簡単に入って来れるから、どんなチャットルームでもすぐに Eternal September の良い例になっちゃうよ。" userName="GaryBluto" createdAt="2025/11/09 15:25:57" color="#ff5c5c">}}




{{<matomeQuote body="中国？詳しく教えてくれ。" userName="efilife" createdAt="2025/11/11 00:59:00" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Discordは“今”チャットするためにデザインされたソフトウェアだと考えてみて。スレッドやピン留めとかは、根本的な問題を解決するんじゃなくて、ただの対症療法だよ。memes との交流のためにデザインされたプラットフォームじゃなくて、整理されて検索できる知識ライブラリが必要なんだ。" userName="nicce" createdAt="2025/11/09 11:58:56" color="#ff5c5c">}}




{{<matomeQuote body="みんながやってるからって良いこととは限らないし、黙って受け入れるべきじゃないよ。「みんなやってるんだし！」「それが未来なんだから時代に合わせて対処しろよ」っていうのが、en-shittification が広まる（お金持ちじゃない）一因なんだから。" userName="0manrho" createdAt="2025/11/08 20:06:43" color="#45d325">}}




{{<matomeQuote body="＞ Valdiは、開発速度を犠牲にすることなくネイティブ性能を実現するクロスプラットフォームUIフレームワークだよ。宣言的TypeScriptでUIを一度書けば、iOS、Android、macOSのネイティブビューに直接コンパイルされるんだ—WebビューもJavaScriptブリッジもなし！" userName="digianarchist" createdAt="2025/11/08 01:02:48" color="">}}




{{<matomeQuote body="Valdiのコンポーネントの状態管理について知りたかったら、Reactクラスコンポーネント方式を参考にしているよ。`StatefulComponent`を継承し、`state`を初期化、`onCreate`でタイマー開始、`onDestroy`でクリーンアップ、`onRender`でUI描画するんだ。このコメントのコード例のようなシンプルなタイマーの実装で、時間経過とループ状況を表示できるよ！詳しいコードはここを見てね：https://github.com/Snapchat/Valdi/blob/main/docs/docs/core-s..." userName="maxloh" createdAt="2025/11/08 08:57:50" color="#45d325">}}




{{<matomeQuote body="Reactのクラスコンポーネントが懐かしいな。30種類ものエラーになりやすい`use`関数なんていらなかったのにね。" userName="Liquidor" createdAt="2025/11/08 10:28:54" color="">}}




{{<matomeQuote body="ソースコード見たんだけど（アマチュア開発者として）、めちゃくちゃ複雑で過剰設計だね！10年以上前にCordovaアプリ作った時C++、JNI、JavaScriptを連携させたのを思い出したよ。これはソロ開発者向けじゃないけど、ベテランにはいいかも。自分はTauriとReact Nativeを使うかな。20%の労力で80%の要件を満たせるしね。" userName="sheepscreek" createdAt="2025/11/08 15:28:20" color="#ff5733">}}




{{<matomeQuote body="BigTechのフレームワークはどれも過剰設計で、トレンドを追いかけて常に変化するから困るんだよね。ライセンス問題やメンテナのドラマに巻き込まれることも。特定の用途にはいいけど、ほとんどのユースケースでは複雑すぎるし、その複雑さが常に変わるんだよ。" userName="0manrho" createdAt="2025/11/08 20:15:01" color="#ff5c5c">}}




{{<matomeQuote body="アマチュアなのに、どうしてそんなに複雑だって言えるの？何を見てるのか本当に分かってる？それとも自分の理解を超えるものは”過剰設計”だって感じるの？Dunning-Kruger効果みたいだね。" userName="hippo22" createdAt="2025/11/09 04:47:40" color="">}}




{{<matomeQuote body="インタラクティブなUIの複雑さを測る目安として、アクションとリアクションの間にどれくらいのレイヤーがあるか数えるのが好きだよ。例えば、ボタンクリックから画面に何かが起きるまでに、どれくらいの呼び出しや動く部分があるか。それが”うさぎの穴”がどれだけ深いかの良い指標になるんだ。" userName="hu3" createdAt="2025/11/09 22:11:15" color="#ff33a1">}}




{{<matomeQuote body="ソフトウェアエンジニアとして20年以上の経験があり、複雑なWebアプリ開発もしてきたから、アマチュアだけどValdiについてコメントする資格はあると思うよ。昔の自分の仕事は今の開発者じゃ無理なレベルだったしね。歴史の先生が人類学の論文に意見するみたいな感じかな。" userName="sheepscreek" createdAt="2025/11/13 15:22:23" color="">}}




{{<matomeQuote body="2つのプラットフォームでそれぞれネイティブUIを書いて、C言語みたいなFFIを使える言語で共通のコアを共有すればいいだけじゃない？<br>そんなに大変なこと？" userName="JaggerJo" createdAt="2025/11/08 11:44:01" color="">}}




{{<matomeQuote body="そうそう、それが正しいやり方だよ。モバイル開発者じゃないけど、UIとコアロジックを分離する設計から始めるべきだね。そうすれば、Web、モバイル、デスクトップなど、どんなUIもコアを呼び出す薄い層になる。各UIの複雑さは違うし、共通化は「簡単」じゃないけど、個別のプラットフォームに合わせた開発の手間は大幅に減るし、将来なくなるかもしれない3rd-partyフレームワークに依存しなくて済むよ。" userName="imiric" createdAt="2025/11/08 12:01:18" color="#ff5c5c">}}




{{<matomeQuote body="そうだね。品質がビジネス上重要ならネイティブUIを使うべき。食洗機アプリみたいに重要じゃないならFlutterやReact Nativeもいいけど、3rd-party依存のリスクは増える。iOSでSwiftを書くのもAndroidでKotlin/Javaを書くのも退屈だけど、それは良いこと。開発者は機能開発に集中できるからね。" userName="JaggerJo" createdAt="2025/11/08 14:25:59" color="#ff5c5c">}}




{{<matomeQuote body="Swift SDK for Androidを使えば、共通のコードロジックはSwiftで書けて、AndroidとiOSのネイティブUIだけ作ればいいんだよ。<br>https://www.swift.org/blog/nightly-swift-sdk-for-android/" userName="flanbiscuit" createdAt="2025/11/10 23:12:02" color="#785bff">}}




{{<matomeQuote body="話はわかるけど、実装するとすぐ破綻するよ。ほとんどのアプリはUI、リモートリクエスト、ストレージだよね。共通コアに何を入れるの？<br>HTTPリクエストもOSで違うし、libcurlで3つ目のやり方を作るの？<br>ビジネスロジックだけ共有するにしても、リクエストやDBアクセスしないロジックって、そんなにある？" userName="vmsp" createdAt="2025/11/09 14:51:59" color="#785bff">}}




{{<matomeQuote body="良い指摘だね。「状況による」が答えだよ。共有できない機能は無理に共有しなくていいんだ。APIクライアントは2回実装する方が、変に共通化するより楽な場合が多いし、退屈でもそれが良いこと。共通コアはオプションで、必要なら使えばいい。Snapchatみたいにビデオエフェクトを共通コアに入れるとかね。" userName="JaggerJo" createdAt="2025/11/09 15:18:24" color="#785bff">}}




{{<matomeQuote body="それは理にかなってるけど、「95%ネイティブで、5%だけ共通コアに抽出する」って話になっちゃうよね。アーキテクチャとしては最高だけど、React Nativeみたいなものが目指す開発時間短縮には、あまり貢献しないってことだね。" userName="vmsp" createdAt="2025/11/09 15:28:01" color="#ff5733">}}




{{<matomeQuote body="今はiOSだけで、Androidは後回しにしてるんだ。うちのチームはAndroidユーザーが多いのに、アプリのユーザーはiOSってのが変なんだけどね。Valdiみたいな新しいクロスプラットフォームが出ると期待しちゃうけど、結局「ネイティブでやれ」っていうコメントに引っ張られてしまう。ちなみに自分は開発者で、React Nativeアプリも作ったことあるよ。" userName="pedalpete" createdAt="2025/11/08 21:16:43" color="#45d325">}}




{{<matomeQuote body="こんなに多くの人がシンプルなアプリを作ってるなんて信じられないね。SnapchatのネイティブAndroid/iOSアプリを作るのに、どれだけの人数がいるんだ？「単一」コードベースは、増える複雑さやリスクに見合う価値があるのかな？ユーザー体験がビジネス上重要なら、俺は常にネイティブを選ぶよ。" userName="JaggerJo" createdAt="2025/11/09 15:24:25" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
