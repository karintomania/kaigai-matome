+++
date = '2025-05-25T00:00:00'
months = '2025/05'
draft = false
title = 'アニメーションベクターグラフィックのオープンフォーマット Lottieとは？'
tags = ["Lottie", "アニメーション", "ベクターグラフィック", "JSON", "Web開発"]
featureimage = 'thumbnails/red1.jpg'
+++

> アニメーションベクターグラフィックのオープンフォーマット Lottieとは？

引用元：[https://news.ycombinator.com/item?id=44088216](https://news.ycombinator.com/item?id=44088216)




{{<matomeQuote body="Lottieは正直、悲しいわ。アイデア自体はクールで、アニメーターが作ったものからアニメーション作れるのはマジすごいんだけど、実装がガッカリすぎるんだよね。<br>フォーマットが最悪の選択肢の一つだよ、JSONなんてさ。数値の集まりで、バイナリの方がコンパクトに収まる用途なのに。JSONから外部ファイル参照したりするから、アニメーションはフォルダか、Base64でインライン化か、それかzipファイルになる。<br>ウェブで使う場合、クソデカいSDK読み込まないとダメだし、それもあんまりメンテされてなくてサイズ最適化されてない。アニメーション読み込むのも、バラバラのファイルいっぱい読み込むか、単一ファイル読み込んで、色んなパーサー通して処理するか（JSON、base64、png、lottie、zip）。.lottieファイル使うならJSにzip解凍入れないと。別のライブラリ(.lottie player)は2MBのwasm blobも使うし、意味不明。<br>アプリでこのクソ大変な足跡を潰すのに時間かかったよ。頻繁に通るところじゃなくてよかった、マジで狂ってる。特別な時のちょっとした飾りのはずなのに、コードベースで一番重い部分。手動でアニメーション調整して、オプティマイザー通して、変なパスとかインライン化の問題直して、exporterがベクターをpngに変えちゃう問題とか、色々やった。<br>しかも、ブラウザじゃいくつも同時に再生するとすぐ死ぬ（特に低スペック端末）。そりゃそうだよな、JSとDOMでアニメーションさせるとか、ぜんぜんパフォーマンス出ないんだから（誰が予想した？）。<br>週末プロジェクトで、これを最適化されたsvg spriteに変えて、CSS transitionで再生してみるか考えてる。そしたらもう少しマシになるんじゃないかな。" userName="panstromek" createdAt="2025/05/25 16:14:56" color="#38d3d3">}}




{{<matomeQuote body="今、俺にとってLottieは信号機。赤か黄色か見極めようとしてる。<br>この前の金曜日に、デザイナーの一人が使うって決めて、Figmaデザインに150x150のLottieアイコンをいっぱい埋め込んできたんだ。「Lottieって何だよ？」って感じ。そしたら、CDNからこの小さいアイコンを表示するためにJavascriptアプリを埋め込むことになってるって説明された。もう、ありとあらゆる悪い兆候が出まくりだよ。<br>どれくらいヤバいのかな？このLottieってやつをanimated GIFとかに変換できない？小さい、シンプルなアイコンをアニメーションさせるためにJavascript埋め込むとか、いいわけないし、パフォーマンスとかCWVのために頑張ってきたことが全部台無しになる気がする。今、無料でanimated GIF作るサイトを探してるなんて信じられない。まるで2003年に戻ったみたいだよ。このLottieエコシステム全体を誰が所有してるのか、誰が書いたのかも知らないし、”Lottie Files”みたいなサブブランドが何なのかも分からないけど、そのコードを埋め込めって言われてるんだ。" userName="safety1st" createdAt="2025/05/26 09:26:04" color="">}}




{{<matomeQuote body="サイズがデカいJSONにガッカリする気持ちはわかるよ、片方ではね。<br>でも、もう一つの独自のバイナリフォーマットなんて扱いたくないんだよね、もう片方では。<br>そして、zipped JSONはほぼ両方の良いとこ取りなんじゃないかと思うんだ。テキストベースだからデバッグとか手動編集がピンチの時に簡単だし、バイナリフォーマットと同じくらい小さいんだ。<br>時々思うんだけど、辞書のキーじゃなくてクラス属性みたいなインメモリ構造と、zipped JSONへの書き出しを直接やってくれる最適化されたライブラリってないのかなって。キーとかカッコとか数字とか、繰り返し出てくる値をzip辞書に自動で登録するとか。通常のzip圧縮より断然速くなるかもしれない。動的な辞書を作らないからね。（つまり、デフォルトではJSON値内の英語テキストは圧縮しないけど、必要なら普通の遅いグローバルなzip圧縮も有効にできるとか）。<br>そうすればファイルフォーマットはどんなツールでも読めるzipped JSONのままだ。でも、この最適化ライブラリを使えば、ディスク上のずっと小さいサイズとメモリ上の小さいサイズ間で直接変換できて、たとえばJSONの解凍された文字列全部をメモリに保持する必要なんて一切なくなる。<br>もしかしたらもうこんなの存在するのかな？俺は見たことないんだけど。" userName="crazygringo" createdAt="2025/05/25 18:53:47" color="#ff33a1">}}




{{<matomeQuote body="言ってること100％わかる。俺もぶち当たったのが、あのひどいAfter Effects → Lottieワークフローだよ。多くのレイヤーやスタイルがエクスポートすると動かなくなるんだよね。だからモーションデザイナーに、どの機能を使っていいか、どれはダメか説明しないといけなくて、彼らはそれが気に入らないことが多いんだ。<br>多くの場合、動画をレンダリングして再生をインタラクションに紐付けた方が、Lottie使うよりずっと軽量で手間がかからない。<br>Riveについては前に聞いたことあるけど、彼らがしてることの多くはLottieの問題に対するまさにピンポイントの解決策みたいだね。まだ使ったことないけど、結果は変わるかも。" userName="chrisldgk" createdAt="2025/05/25 16:26:14" color="">}}




{{<matomeQuote body="独自のバイナリフォーマットを使う必要はないよ。既存の選択肢はたくさんあるし、Protobufが一番分かりやすいだろう。<br>俺の経験では、zipped JSONは魔法の万能薬じゃない。バイナリフォーマット（特に圧縮されたやつ）ほど小さくないし、使う前に全体をメモリに解凍する必要があるのが普通だ。それは手抜きだよ、ちゃんとした解決策じゃない。" userName="IshKebab" createdAt="2025/05/25 19:21:08" color="">}}




{{<matomeQuote body="うん、心配するのは正しいよ。マイクロインタラクション（”いいね/いいね解除”ボタンとかね）には全然向いてない。<br>もしスピナーをアニメーションさせるなら、そのアニメーションはおそらく、スピナーを表示してる対象物よりも多くのリソースを食うし、もろくなるだろうね。<br>まあでもGIFは多分もっと悪いから、それはやめた方がいい。一番いいのは、俺が匂わせてて、いつか試したいと思ってることだろうな。アニメーションからフレームをsvgとして抽出して、それをsprite imgに入れる（そしてsvgoにかける）。それからbackground-positionかcss transformでそのspriteをアニメーションさせるんだ。<br>フレーム抽出はpuppeteerでできるよ。そのためのツールがある→https://github.com/transitive-bullshit/puppeteer-lottie<br>動画かgifで出力できるけど、スプライト化までできるかは分かんない。それは手動でやる必要があるかもね。<br>[追記]: 俺が話してるのはウェブのこと前提ね。モバイルのLottieは違うかもしれないし、問題ないかもしれないけど、そっちは経験ないんだ。" userName="panstromek" createdAt="2025/05/26 09:51:47" color="#ff33a1">}}




{{<matomeQuote body="個人的にはProtobuf扱うのはすごく大変だったよ。古いバージョンのProtobufでAPIデータを提供してるサイトとか、人気の言語でデコードするライブラリが手に入らないんだ。JSONとzipは簡単だし、普遍的だし、アクセスしやすい。Protobufにはシンプルにないことなんだ。<br>だから俺は言ってるんだ、zipped JSONには本当に言うべきことがあるって。君は「通常、全体をメモリに解凍する必要がある」って指摘したけど、それこそまさに俺のコメントの大部分が言ってたことなんだ——それを効率的に扱う方法についてね。<br>それに、Protobufだってそれに関して特に優れてるわけじゃないんだよ——ファイルの真ん中にあるレコードにアクセスしたいなら、そこに行き着くまでファイル全体をストリームで読み進めないとダメだ。ネイティブなランダムアクセスなんてサポートしてない。<br>だから、俺の元のコメントがダウンボートされてるのがちょっとガッカリだよ——俺はそこにマジで真剣な提案をしてるんだからね。zipped JSONはファイルフォーマットとして真剣に受け止められるべきだと思うんだ、特にずっとメモリ効率の良いデコードを伴えばね。" userName="crazygringo" createdAt="2025/05/25 21:08:30" color="">}}




{{<matomeQuote body="デザイナーがAfter Effectsで作ったアニメをWebページに載せたいんだってさ。動画で書き出して埋め込むか、AEファイルをLottieにするかだね。ユーザーには同じように見えるから、結局は通信量だけの問題かな。" userName="Wowfunhappy" createdAt="2025/05/25 23:22:00" color="#45d325">}}




{{<matomeQuote body="Riveは使ったことないけど、知り合いで使ってる人はめっちゃ褒めてたみたいだよ，参考までにね。" userName="throwanem" createdAt="2025/05/25 18:06:39" color="">}}




{{<matomeQuote body="Lottieを見てて思うのは2つ。<br>1つ目は，Flashみたいな製品，つまり専門知識がないクリエイターでも簡単にアニメ作れるツールへの需要はまだまだすごいってこと。<br>2つ目は，今のWeb標準に合わせてアニメをビルドしたりコンパイルしたりするのは全然最適じゃないから，アニメーションに特化したバイナリ形式が必要だってことだね。" userName="echelon" createdAt="2025/05/25 17:37:13" color="#ff33a1">}}




{{<matomeQuote body="なんでGIFの方がダメなの？（フロントエンド詳しくないから，マジで知りたいんだけど）。" userName="alecthomas" createdAt="2025/05/26 11:29:08" color="">}}




{{<matomeQuote body="（GIFは）ブラウザで何個か同時に再生すると，すぐ不安定になっちゃうんだ。<br>それに比べて，2000年ぐらいにあったFlashのウザいアニメ広告なんて，マジ腹立ったけど，当時の普通なシングルコアCPUでもちゃんと動いてたからね。" userName="userbinator" createdAt="2025/05/25 21:58:45" color="#38d3d3">}}




{{<matomeQuote body="もうさ，めちゃくちゃ良いフォーマットあるじゃん，SVGだよ。<br>残念ながら，一部の人には独自仕様じゃないと気に食わないらしいけどね。" userName="bestouff" createdAt="2025/05/26 11:23:37" color="#ff5733">}}




{{<matomeQuote body="MP4は透過できないから，ウェブページの背景と動画の背景が全く同じような，ほんのわずかなアニメーションしか使えないんだ。<br>ウェブページの背景がグラデーションだったり，ライトモード/ダークモードの切り替えがある場合とか，全然馴染まないよ。" userName="rchaud" createdAt="2025/05/25 23:58:13" color="#ff5c5c">}}




{{<matomeQuote body="Lottie自体より，お前の会社の技術決定のやり方がヤバいと思うわ…<br>ちょいとしたアイコンのためにあんたが説明したような対応になるなんて，マジでクレイジーだよ。<br>他のことなんて想像もつかない。<br>こういう連中と文化が定着すると，もう変えるのは難しいんだよね，残念ながら。" userName="bdelmas" createdAt="2025/05/26 12:52:52" color="">}}




{{<matomeQuote body="MP4は透過できないけど，HEVCとVP9はできるし，最近はブラウザのサポートもめっちゃ良いよ。<br>ちょうどこの間，この形式で複雑なAfter Effectsアニメをウェブサイトに載せたところなんだ。<br>動画を1個じゃなくて2個作るから手間は増えるけど，結果は最高だよ。<br>このチュートリアル参考にしたんだ：https://rotato.app/blog/transparent-videos-for-the-web" userName="mindhunter" createdAt="2025/05/26 07:16:14" color="#ff33a1">}}




{{<matomeQuote body="てかさ、JSONって圧縮したら結構小さくなるし、JavaScript VMに読み込むのもすっごく効率的だよね。" userName="chpatrick" createdAt="2025/05/25 23:28:18" color="#785bff">}}




{{<matomeQuote body="Riveのプレイヤーってオープンソースなんだってね、ってことはフォーマットもそうだと思うんだけど？" userName="k__" createdAt="2025/05/25 19:13:39" color="">}}




{{<matomeQuote body="GIFって1980年代の古いフォーマットで、全然進化してないんだ。フレームごとに256色しか使えないし、見た目悪いしファイルサイズも膨らむ。今の動画コーデックに比べるとダメダメだよ。ほとんどのサイトはアップロードされたGIFをこっそりMP4に変換して、品質はそのままなのに容量を大幅に減らしてるんだ。Telegramはこれで95%も容量を削減できたって言ってるよ。どれだけGIFがダメかってことだよね。" userName="jdiff" createdAt="2025/05/26 12:08:19" color="#45d325">}}




{{<matomeQuote body="＞ あと、protobufが本質的にそれより優れてるわけでもないよ--ファイルの中央のレコードにアクセスしたいなら、そこまでファイル全体をストリームする必要がある。<br>それは間違いだね。Protobufはtag-length-valueで目的の部分に素早くスキップできるんだ。JSONより桁違いに速いよ。あなたの提案は複雑で問題解決になってないね。" userName="IshKebab" createdAt="2025/05/26 08:24:54" color="#ff5c5c">}}




{{<matomeQuote body="＞ Lottieのアニメーションをanimated GIFとかに変換できる？<br>SMIL (SVG Animations) に変換できるかもね。これはJS不要でまだサポートされてるよ。作者のリポジトリにツールがある（https://github.com/bodymovin/bodymovin-to-smil）けど、あんまりメンテされてなくて機能も限定的みたい。" userName="__jonas" createdAt="2025/05/26 13:22:01" color="#45d325">}}




{{<matomeQuote body="LottieとSDKがmp4より重いってホント？個人的には、アニメーションが1つか2つくらいならそんな経験ないな。特にWebMが使えて、ダメなら最適化されたmp4にフォールバックできるならね。" userName="sampullman" createdAt="2025/05/26 00:38:54" color="">}}




{{<matomeQuote body="やりたいことに対してパフォーマンスが足りないし、周りの”標準”も使いにくいんだよ。<br>専用のバイナリフォーマットが必要だね。CSSとかXMLとかJavascriptじゃなくてさ。<br>アニメーターには扱いづらいし、プログラマーならできるかもしれないけど、Flashみたいに簡単じゃないよ。" userName="echelon" createdAt="2025/05/26 16:31:24" color="#ff33a1">}}




{{<matomeQuote body="アニメーションの共通オープンフォーマットって考えは好きだな。でもね、多くのweb開発者がCSSやSVGアニメーションをちゃんと学ぶよりLottieに頼ってる気がするんだ。Lottieってライブラリだけで数百KB増えるし、アニメーションごとに容量食うんだよね。CSS/SVGならもっと軽いし調整しやすいのに。Lottieのサイトでサイズが小さいってGIFやPNGとだけ比較して宣伝してるのもちょっとね。CSS/SVGと比べないのはズルい。まあ、ネイティブアプリなら良いのかもしれないけど。" userName="herrherrmann" createdAt="2025/05/25 15:37:43" color="#45d325">}}




{{<matomeQuote body="<br>CSSとかSVGを学ぶ代わりにLottie使うなって意見への反論として、FlashはWeb 1.0の最高なものの一つだった。Flashはビデオ、アニメ、プログラミング、UI、ゲームとか何でもできて、子供でも使えたくらい簡単だったんだ。今のWeb標準（CSS, SVG, HTML, JS）はまだFlashの多機能さに追いついてないし、40年経っても同じ問題で苦労してる。Flashみたいに何でもできる、新しいフォーマットや技術を考えるべきでしょ。特定の標準だけに縛られちゃダメだよ。" userName="echelon" createdAt="2025/05/25 15:50:57" color="">}}




{{<matomeQuote body="Flashチーム、ここに参上！ピーク時はマジで凄かった時代だよ。AppleがFlashを終わらせたけど、競争相手じゃなかったからじゃなくて、スティーブ・ジョブズのあの有名な批判記事が始まりだったんだ。Flashは時代を先取りしてたんだよな。" userName="hbarka" createdAt="2025/05/25 17:04:12" color="">}}




{{<matomeQuote body="<br>「CSSとか他の”標準”への強制移行はFlashが提供してたものにまだ追いついてない」って意見だけど、それにはマジで異論アリ。今のWebアプリはブラウザだけで凄いのが作れるんだよ。FigmaとかOnShapeとか、最高の例じゃん。Lottieのことも誤解してるんじゃない？ Webで使うLottieは、君が言ってたブラウザの基本機能にコンパイルされるんだよ。ちゃんと動くし、「まだ苦労してる」って言ってる意味が分かんないね。" userName="Aurornis" createdAt="2025/05/25 16:52:17" color="#38d3d3">}}




{{<matomeQuote body="Flashは良かったけど、あの時代のものでさ、全面的な見直しなしじゃスケールしなかっただろうね。エネルギー消費とか、セキュリティ、アクセシビリティとか、マジで問題だらけだったから。" userName="dagmx" createdAt="2025/05/25 17:33:47" color="">}}




{{<matomeQuote body="あの時代の長いドキュメンタリー作るべきだね。Netscapeブラウザで苦労せずにWebアプリでビデオ、オーディオ、アニメーションが使えたんだぜ。コンテンツ作る人も増えてエコシステムも盛り上がってたし、大手ネットワークもFlashでニュース生中継したり、RealNetworksがリアルタイムオーディオストリーミングやってたり。90年代後半から00年代前半の話だよ。マジでエキサイティングだった。でも、その後httpベースが全部牛耳っちゃって、メディアは10年くらい逆戻りした感じがするんだよね。" userName="hbarka" createdAt="2025/05/25 17:51:13" color="">}}




{{<matomeQuote body="<br>「まだ苦労してる意味が分かんない」って？苦労してるよ。Flashは作るのが超簡単で、できたファイルはGIFやPNGみたいに扱えてダウンロードもできた。今のWeb標準はFlashみたいに魔法じゃないし、全然追いついてないんだ。<br>Lottieがブラウザ基本機能にコンパイルされるって？気持ち悪いね。俺はブラウザなしで開ける一つのファイルが欲しいんだよ。JSやCSSの寄せ集めはいらない。「標準」はデカすぎで負の遺産だらけだ。" userName="echelon" createdAt="2025/05/25 16:55:56" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Flashファイルを見るのに、専用のFlashプレイヤーが必要だったでしょ？俺はそんなのまた入れるより、ブラウザでアニメとかアプリとかゲームを動かす方がいいわ。" userName="brulard" createdAt="2025/05/25 17:14:04" color="">}}




{{<matomeQuote body="Lottieが目指してるのは、CSSトランジションみたいな簡単なアニメじゃなくて、もっと複雑で自由なアニメなんだよ。ちょっと動かすっていうより、漫画みたいにガッツリ動かす感じ。良い例はTelegramメッセンジャー。アニメスタンプのフォーマットでLottieを使ってるんだ。このリンクとか見てみてよ。" userName="nine_k" createdAt="2025/05/25 15:58:15" color="#45d325">}}




{{<matomeQuote body="Flashってさ、色々やりすぎだったんだよ。動画機能とかベクトルアニメの基本と合わなくてバッテリー食いだったし、Appleが使わなかったのもそれが理由の一つなんだよね。DRMとか求められるとFree Softwareじゃ使えないし、結局企業のグダグダ経営でダメになった感じ。" userName="Benanov" createdAt="2025/05/25 15:58:05" color="">}}




{{<matomeQuote body="問題はね、Flashみたいな編集ツールで、誰でも簡単に、でも深くも使えるやつが今ないことなんだよ。技術者向けツールはいっぱいあるけど、ただ作りたいって人が気軽に触れるのが少ないんだよね。昔のウェブって、技術知らなくてもCool Shit™作る人がいたから面白かったじゃん。" userName="detritus" createdAt="2025/05/25 17:26:51" color="#785bff">}}




{{<matomeQuote body="Appleが使わなかったのは、囲い込みたいとか広告で儲けたいからだよ。AndroidはFlash使えたし、まあまあ動いたんだよね。Androidアプリ自体も昔は電力食ったけど、バージョン上がってマシになったし。俺はiPadじゃなくてAndroidタブレット選んで、Flashとか普通に使ってたよ。" userName="rchaud" createdAt="2025/05/26 00:53:27" color="#38d3d3">}}




{{<matomeQuote body="俺がダイヤルアップだった頃は、そういうの全然使えなかったんだよね。HTTPが普及して誰でもネットできるようになったのは偶然じゃないと思うよ。帯域が広がる頃には、もうHTTPがスタンダードになってた感じかな。" userName="throwanem" createdAt="2025/05/25 18:11:54" color="">}}




{{<matomeQuote body="Lottieアニメーションって、SVG+JSにコンパイルできるんじゃないの？まだそれができないのが惜しいのかな？" userName="legulere" createdAt="2025/05/25 15:48:08" color="">}}




{{<matomeQuote body="今のJSとCSSでDOM動かすのと、ActionScriptとFlash Spritesって何が違うの？Flashはビデオ形式じゃないよ。タイムラインでアニメを視覚的に作るアプリだったんだ。そういう編集画面のアプリ、今も色々出てきてるらしいけど、俺には必要ないから詳しくないな。" userName="dylan604" createdAt="2025/05/25 17:37:16" color="">}}




{{<matomeQuote body="DOMはSpritesとは違うんだよ。DOMって全部がお互いに関係して配置されてるから、ちょっとした変更でもページ全体が全部描き直されたり配置し直されたりするの。アニメは後から無理やり付け足した感じで、めっちゃ重いんだよね。" userName="troupo" createdAt="2025/05/26 09:08:38" color="#38d3d3">}}




{{<matomeQuote body="そうそう、CSSアニメとかWeb Animations APIはハードウェアアクセラレーション使えるけど、こういう系のライブラリはできないんだよね。" userName="afavour" createdAt="2025/05/25 15:56:48" color="">}}




{{<matomeQuote body="俺たちは車輪の再発明とかやるべきだよ。ブラウザ作ってるやつら（AppleとかGoogle）は、みんなを自分のサービスに囲い込みたいだけだし、Webを良くすることに興味ないもん。Mozillaもとっくに諦めてる感じだしね。" userName="rchaud" createdAt="2025/05/26 00:24:12" color="">}}




{{<matomeQuote body="それってライブラリがウェブレンダラーでやってることそのままじゃん。SVGレンダラーとウェブレンダラーがあるんだよ。" userName="JusticeJuice" createdAt="2025/05/25 16:09:23" color="#785bff">}}




{{<matomeQuote body="それだけじゃなくて ダウンロードできたんだよ。これは当時の俺にはでかい出来事だったし PWAですらまだ追いついてない（まあ PWAの方が変更しやすいのは認めるけど）。ウェブアプリの9割をオフライン用にダウンロードして ファイルとして全システムで持ち運べるのがめっちゃ良かったんだ。今時 JARファイルくらいしか似たのないけど あっちにはそんなエコシステムないしね" userName="WorldPeas" createdAt="2025/05/25 16:15:15" color="">}}




{{<matomeQuote body="Ruffleってのがあるよ：https://ruffle.rs/downloads#website-package" userName="cwillu" createdAt="2025/05/25 18:35:55" color="">}}




{{<matomeQuote body="個人的に Lottieがマジで優れてると思うのは After Effectsみたいなデザイン制作ツールの出力形式としてだよ。それは記事でも一番上に Lottieのライブラリとファイル形式の元々の動機として書かれてる通り。そもそもあんなの誰も手で書いたりしないしね。俺はモバイルアプリの開発者として Lottieアニメーションを扱ったことあるけど 作成したことはないな。" userName="throwanem" createdAt="2025/05/25 15:41:01" color="#45d325">}}




{{<matomeQuote body="そうそう それで Lottieはそのユースケースにすごく合ってると思うんだ！ 俺が言ってたのは もっとシンプルで小さなアニメーションでも Lottieに手を出しがちなこと。デザイナーが作ったLottieファイルをプロジェクトにポンと入れる方が よりネイティブな方法でアニメーション作るより簡単に見えるからさ。少なくとも Redditでこういう推奨を見たことあるよ。" userName="herrherrmann" createdAt="2025/05/25 16:00:10" color="#785bff">}}




{{<matomeQuote body="Appleは有名な話だけど iPhoneにウェブブラウザを入れたじゃん それでお前の説には穴が開くね。" userName="robertoandred" createdAt="2025/05/26 02:55:54" color="">}}




{{<matomeQuote body="俺 2005年頃にちょっと”flash developer”やってたんだけど そのFlash環境（Macromedia Flashだっけ？）がどうも肌に合わなかったんだよね。インタラクティブな可視化とか小さいゲームとかは作れたけど 俺にはシンプルじゃなかった。それが変わったのは Adobe Flexと ActionScriptが出てきてから。そこが自分の居場所って感じだったよ。でも俺にとってより 他の人にとって Flashがすごく理にかなってたのは十分分かってるけどね。" userName="brulard" createdAt="2025/05/25 19:02:06" color="">}}




{{<matomeQuote body="残念ながら そんなに色んなことやってたってことは コードベースはかなりでかかったはず。ライセンスのあるコード（例えばビデオコーデックとか）を監査して取り除くのは 彼らにとっては手に余るくらい大きかったみたいだね。あれは本当に素晴らしいツールで クリエイティブコーディングには今でも匹敵するものがない。" userName="bsimpson" createdAt="2025/05/25 15:58:00" color="">}}




{{<matomeQuote body="君はたぶん HTML 5仕様の作成者が HNに投稿したこの文書に興味あると思うよ：https://news.ycombinator.com/item?id=34612696" userName="satvikpendem" createdAt="2025/05/25 20:32:08" color="#45d325">}}




{{<matomeQuote body="フラッシュの時代を美化しすぎだと思うよ。確かにみんなフラッシュを使ってたけど、かなりの犠牲があったんだ。バッテリーはすごく食うし、パフォーマンス上げるにはブラウザに巨大なセキュリティホールを開ける必要があった。<br>フラッシュはコンテンツ制作者や開発者としては納品のこと気にしなければ最高だけどね。<br>でもiPhone関係なくどっちみち消えてたでしょ。ストリーミング動画はHLSが、もっと高度なウェブサイトはJSとウェブ標準の進化がトドメを刺したはずだよ。<br>唯一後退したのはウェブゲームの配信くらいかな。" userName="dagmx" createdAt="2025/05/26 00:29:58" color="#ff33a1">}}




{{<matomeQuote body="90年代にRealNetworksの技術で仕事したことあるけど、今はオープンソース技術とHLSの方がずっと良くなってると思うな。" userName="ofrzeta" createdAt="2025/05/25 18:52:28" color="">}}




{{<matomeQuote body="LottieとRiveの両方を実装・組み込みの面でちょっとだけ使った経験から言うと、Riveの方が断然良かったんだ。<br>もし今後選ぶとしたら、Lottieに何か見落としてる良さってあるのかな？誰か知ってる？" userName="zdragnar" createdAt="2025/05/25 15:37:57" color="">}}




{{<matomeQuote body="Riveは自分で使ったことないけど、進捗は追ってるよ。Lottieの作成者が数年前にRiveチームに加わったのは注目だね。<br>この分野のツールを評価するなら俺の候補リストに入るな。<br>個人的には、デザイナーが使いたがるアニメーションの種類に対して、Lottieのファイルサイズはどうしても正当化しにくくて、プロジェクトでLottieを使うのに反対してきたんだ。SVGatorはうまくいった別の選択肢だったよ。<br>すごくイライラするのは、ファイルサイズに全く触れずにLottieが推されてる場所が多すぎること。Webflowみたいなツールとか、テック界の著名人からの一般的な推奨とかね。<br>Lottieにも最適な使いどころはあるだろうけど、ほとんどの人が使ってるユースケースにはもっと良い選択肢があると確信してるよ。" userName="andrewingram" createdAt="2025/05/25 16:47:41" color="#45d325">}}




{{<matomeQuote body="Rive、これまで全く知らなかったよ！プロジェクトの一つで使えそうに見えるな。ありがとう、こういうネタがあるからHN中毒はやめられないんだ。" userName="cjbgkagh" createdAt="2025/05/25 15:51:54" color="">}}




{{<matomeQuote body="Riveは前に個人的な小さいプロジェクトで使ったことあるけど、あれ以外でウェブアニメーションを作成したり編集したりするなんて想像できないね。どうやら独自のベクトルベースのフェザリング技術も作ったみたいで、それもすごいよ：https：//rive.app/blog/introducing-vector-feathering<br>オープンフォーマットの魅力はもちろん理解できるけど、Riveは独自のバイナリ形式みたいなんだよね（ドキュメントはあるけど）：https：//rive.app/docs/runtimes/advanced-topic/format" userName="euvin" createdAt="2025/05/25 15:59:09" color="#785bff">}}




{{<matomeQuote body="https：//rive.app/pricingにフォーマットはOSとMITって書いてあるけど、何か見落としてるのかな？" userName="cjbgkagh" createdAt="2025/05/25 16:30:00" color="">}}




{{<matomeQuote body="ああ、俺のミスだ。＂独自仕様＂って言葉を使うべきじゃなかった、でももう編集できないや。コミュニティ製のランタイムもあるみたいだね：https：//rive.app/docs/runtimes/community-runtimes" userName="euvin" createdAt="2025/05/25 18:43:52" color="">}}




{{<matomeQuote body="俺も初めて知って、かなりテンション上がったよ。ウェブオンリーじゃないデスクトップアプリがあるって知ってもっとね。<br>で、アプリダウンロードしたら＂アカウント＂設定してオンラインじゃないと使えないって分かったんだ。<br>結局、これまたうんざりするウェブオンリーなクソだわ。消した。" userName="DidYaWipe" createdAt="2025/05/25 20:03:31" color="">}}




{{<matomeQuote body="Lottieのコンセプトはすごくクールだけど、使ってみると分かるよ、マジで扱いにくいんだ。<br>RiveはLottieの問題点の多くを解決しようとしてる新しいプラットフォームだね。特にLottieでデータを動的に更新するのはほぼ不可能。<br>でも、Tracker.GGのValorant Backtrack（Spotify Wrappedみたいなやつ）ではなんとかLottieで実現したんだ。デモはこちら：https：//tracker.gg/valorant/backtrack/episode6/00d0aa2d-94d3...<br>これを動かすために、After Effectsで作ったソースファイルで付けたレイヤー名でアクセスしてるんだ。<br>スライドごとにLottieファイルが分かれてるから、ファイル間のトランジションをシームレスにするのに気を使ったよ。<br>俺の記憶だと、Lottieはデフォルトで動的なレイヤーアクセスを提供してないから、Lottieインスタンスを扱うために別のライブラリを使って、その上にさらに優れたデータ制御レイヤーを構築する必要があった。<br>これはデザイナーチームとエンジニア間で何度も何度もやり取りが必要だった、かなり大変なプロジェクトだったね。プロセスがチームでの共同作業に全く向いてないんだ。場合によっては、レイヤーのプロパティが他の属性、例えば実際の色とかのデフォルト値で指定されてたりするんだ。<br>全く楽しいフォーマットじゃないね。将来の仕事でRiveを使えるのが楽しみだよ。" userName="lwansbrough" createdAt="2025/05/25 23:23:49" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うちの会社のUIライブラリ、スピナーとかプログレスバーみたいなアニメーションにlottie-web使ってんだよね。んで、このページさ：https：／／airbnb.io／lottie＃／community-showcase これがもう、会社のPCを完全にやっつけちゃって、CSSでやってたらこんなことにはならないはずだって思ってるんだ。" userName="Tade0" createdAt="2025/05/25 19:31:57" color="#785bff">}}




{{<matomeQuote body="あのページのあれ、全部アニメーションGIFだよ。" userName="bitpush" createdAt="2025/05/25 20:07:14" color="">}}




{{<matomeQuote body="念のため言っておくけど：君が正しかったわ。同じページで、あれをLottie画像と間違えちゃったんだ。とはいえ、500KBのGIFの方がここで適切だって彼らが感じたのがちょっと気になるね。もしかして、私も画像をGIFにコンパイルした方がいいのかな？" userName="Tade0" createdAt="2025/05/26 10:04:06" color="">}}




{{<matomeQuote body="resonancy.io のアニメーションを lottielab で作ったんだ。エディタは使いやすかったけど、エクスポートした Lottie ファイルがデカすぎて、彼らの有料ホスティング（月30ドル）使わないと実用的じゃないのが困るね。代替を探してるけど、作り直すのは嫌だな。Rive はまだ試してない。Lottie の圧縮方法について何かいい案ない？マジで助かる！" userName="gervwyk" createdAt="2025/05/25 16:57:47" color="#ff33a1">}}




{{<matomeQuote body="実際のUIにはCSSで十分なのが多いし、Lottie は単発アニメ向けかな。それなら SVG アニメツールで良くない？デザイナーは Lottie に盛り上がるけど、俺はパフォーマンスと扱いやすさで CSS で作る派。そういえば、＠property ルールで CSS アニメーション超簡単になったよ！" userName="65" createdAt="2025/05/25 16:15:02" color="#ff5733">}}




{{<matomeQuote body="Lottieの本当のキラー機能は、After Effectsにプラグインがあって、Lottie JSONとしてエクスポートできることなんだ。AEの特定のレイヤーのフィルターとか、そういうのによっては常に1：1でうまくいくわけじゃないけど、うまくいく時はマジで時間が節約できるんだよ。" userName="mpeg" createdAt="2025/05/25 16:41:36" color="#ff33a1">}}




{{<matomeQuote body="PBS KIDSで Lottie を長年使ってて、利点多いけどパフォーマンス問題もある。After Effects連携で、Lottie JSON、Mov、SVG にエクスポートできるのが便利なんだ。Flash 後はこれが役立ったね。Rive も使ってるよ。Hernan とか Pixi の Mat Groves、CloudKid の Matt Karl とも仕事したことがある。ツールは互換性ないから、プロジェクトに合ったやつを選ぶのが大事だよ。" userName="nye2k" createdAt="2025/05/25 21:35:31" color="#38d3d3">}}




{{<matomeQuote body="現実的な意見いいね。ツール対決にこだわりがちだけど、実際はどのフォーマットやワークフローにも得意な分野があるんだよね。" userName="interludead" createdAt="2025/05/26 07:50:00" color="#785bff">}}




{{<matomeQuote body="Lottieの競合のRiveの問題点は、Flashみたいに直感的に絵を描く感じじゃないんだ。だいたいSVGインポートとか特定のやり方をしないといけない。面白いこともできるけど、UIアニメーションにはFlashより直感的じゃないね。" userName="b3ing" createdAt="2025/05/25 17:07:07" color="#38d3d3">}}




{{<matomeQuote body="ラスター画像も入力でサポートされてる資産タイプだよ" userName="higgins" createdAt="2025/05/25 19:19:55" color="#45d325">}}




{{<matomeQuote body="これってAirBnbのフォーマットだよね？彼らは新しい代替案に乗り換えたらしいよ。メンテナンスとか開発を彼らに頼ってたのかは分からないけど、もしそうなら他のを探し始めた方がいいかもね。" userName="ComputerGuru" createdAt="2025/05/25 17:18:40" color="">}}




{{<matomeQuote body="え、Airbnb自体がLottie使うのやめたの？今は何使ってんの？探しても見つからないな。追記：動画フォーマットのLavaと勘違いしてるっぽいね。AirbnbはLottieの代わりにLavaを使ってる場所もあるけど、それはFlashへのアプローチっていうよりアニメーションGIFへの現代的なアプローチみたいだよ。" userName="mortenjorck" createdAt="2025/05/26 01:39:03" color="#45d325">}}




{{<matomeQuote body="そうそう。技術的には競合しないけど、片方をもう片方の代わりに使ってるって意味では、注目度とかサポートの面で現実的には競合してるよね。" userName="ComputerGuru" createdAt="2025/05/26 03:46:30" color="#785bff">}}




{{<matomeQuote body="このスレッド、Flash比較が多いね。他のツールいくつか紹介するよ：Google Web Designerは広告向けにFlashを置き換えるやつだけどLottie非対応。<br>Expressive Animator（有料だけどLottieエクスポート可）はSVGアニメ用。<br>オープンソースのGlaxnimateはLottieサポートしてるよ。" userName="rogierhofboer" createdAt="2025/05/26 20:22:38" color="#ff5c5c">}}




{{<matomeQuote body="SWFの何が悪いのさ？仕様も公開されてるしすごく効率的だよ。セキュリティで心配なら高度な部分は実装しなきゃいいだけ。別のJSON形式ってコメントは的を射てるね。ウェブクソに溺れてるせいで、効率を知らない開発者が多すぎる。" userName="userbinator" createdAt="2025/05/25 21:54:15" color="">}}




{{<matomeQuote body="Samsungが出してるrlottieっていう独立したC++ライブラリがあるよ。Telegramはアニメーションスタンプに使ってるし、Samsung自身もスマートウォッチのアイコンに使ってるよ。" userName="nokeya" createdAt="2025/05/25 17:44:58" color="#45d325">}}




{{<matomeQuote body="信頼できないアニメーションを読み込むなら、rlottieは絶対に使っちゃダメだよ。セキュアじゃないしSamsungはセキュリティ問題を対応してくれないから。※どうしても使うならTelegramのフォークを使ってね。彼らは最低限の問題は修正してるよ。" userName="landr0id" createdAt="2025/05/25 19:06:32" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
