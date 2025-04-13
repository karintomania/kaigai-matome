+++
date = '2025-03-31T00:00:00'
months = '2025/03'
draft = false
title = 'ついに来た！select要素がCSSで自由にカスタマイズ可能に！長年の夢、JSライブラリ不要になるかも？'
tags = ["CSS", "HTML", "UI", "Web開発", "フォーム"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> ついに来た！select要素がCSSで自由にカスタマイズ可能に！長年の夢、JSライブラリ不要になるかも？

引用元：[https://news.ycombinator.com/item?id=43532830](https://news.ycombinator.com/item?id=43532830)

{{<matomeQuote body="2000年代初頭のウェブ開発者としては、めっちゃ興奮してるんだよね。selectってHTMLじゃ再現できないことができるからさ。viewportの外にドロップダウンを表示できるとか、マジで助かる機能だわ。次はautocompleteとtag selector頼む!" userName="wolframhempel" createdAt="2025-03-31T15:14:52" color="#785bff">}}

{{<matomeQuote body="記事によると、base-selectを使うと色々できなくなるみたい。<br>＞The ＜select＞ doesn’t render outside the browser pane. ... It doesn’t trigger built-in mobile operating system components.”<br>＞”＜select＞はブラウザの外に表示されないし、OSの機能も使えない”<br>モバイルユーザーは最適化されてないselectに備えろってことか。でもjavascript減らせるのは良いね。" userName="asddubs" createdAt="2025-03-31T15:22:48" color="">}}

{{<matomeQuote body="＞The ＜select＞ doesn’t render outside the browser pane. ... It doesn’t trigger built-in mobile operating system components.”<br>＞”＜select＞がブラウザの外に表示されないとか、OSの機能を使えないとか、それって＜select＞じゃなくね？スタイリングは良いけど、これじゃ意味ないじゃん。" userName="cush" createdAt="2025-03-31T18:17:24" color="">}}

{{<matomeQuote body="スタイリングのオプションが全くないのと、ユーザーを危険に晒すオプションしかないんじゃなくて、その中間が欲しいよね。" userName="cush" createdAt="2025-04-02T16:24:36" color="">}}

{{<matomeQuote body="select2みたいなカスタムのselect代替要素はもう色々あるよね。selectにcombobox機能がないのが問題で、type-ahead completionとか、大量のデータソースからの遅延ロードができないんだよね。<br>ブラウザの外に表示できなくなるのは痛い。iPadのStage Managerだと、ポップオーバーはウィンドウ内に収まるんだよね。セキュリティの問題かな。" userName="kmeisthax" createdAt="2025-03-31T21:01:06" color="">}}

{{<matomeQuote body="「OSの機能を使えない」って仕様なの？Appleなら違う実装するかもね。" userName="Eric_WVGG" createdAt="2025-03-31T16:44:45" color="">}}

{{<matomeQuote body="どうなんだろう。positioningとかsizingとかboxのCSS propertiesが壊れるかも。ネイティブウィジェットでHTMLをレンダリングする必要があるし、WebKitをネイティブウィジェットに入れる必要もあるかも。セキュリティの問題もあるし。" userName="jraph" createdAt="2025-03-31T18:57:27" color="">}}

{{<matomeQuote body="モバイルユーザーが圧倒的多数なのに、ウェブデザイナーはユーザーに優しくないサイトを作るのかね？（たぶんそう）" userName="immibis" createdAt="2025-04-01T00:44:37" color="">}}

{{<matomeQuote body="マジでサイトによるよねー。モバイルブラウザで何か調べるのってマジ地獄。仕事も無理ゲー。誰があんな小さい画面でキーボードなしで作業したいんだよ？デスクトップなら、一つのテーマで何十、何百ものタブを開けるし。だから、うちのサイト（技術系の記事）へのアクセスがモバイル端末からたったの17%ってのも納得。<br>Windowsが52%、Linuxが18%、Macintoshが13%、Androidが11%、iOSが6%、Chrome OSが0.5%、その他が0.5%未満だってさ。（AndroidとiOSにはタブレットも含まれてるかもだけど、タブレットからのアクセスはほんの数パーセント。）（クローラーとか不明なUAは除外した結果ね。）<br>ちなみに、ボットって嘘つくから、Windowsの結果が水増しされてるかも。別のデータソースだと、Google検索でサイトを見たデバイスは、デスクトップが69%、モバイルが30%、タブレットが1%だって。（クリック数も似たような感じ。）" userName="qiqitori" createdAt="2025-04-01T03:53:28" color="">}}

{{<matomeQuote body="それはそうだけど、最初の実装ってことっしょ。そのうちブラウザベンダーが、selectのフル機能をちゃんと使えるようにしてくれると思うよ。" userName="wolframhempel" createdAt="2025-03-31T15:28:43" color="">}}

{{<matomeQuote body="ブラウザはviewportの外のことには絶対webコードの影響を受けさせないと思う。詐欺師がヤバいことしかしないって。" userName="caesil" createdAt="2025-03-31T15:46:06" color="">}}

{{<matomeQuote body="viewportの中のピクセルを勝手に描画するだけでも十分ヤバいのにね。一時期廃れたけど、また流行りだしてるのが、ユーザーのOSとブラウザを検知して、Paypalの偽ウィンドウをpixel単位で再現してログインさせようとするやつ。最初のブラウザの中に表示されるんだよ。" userName="immibis" createdAt="2025-04-01T00:46:40" color="#38d3d3">}}

{{<matomeQuote body="だから1Passwordの新しいログインプロンプトは前より酷いんだよ。画面の真ん中に表示されるから、ウェブサイトが簡単に偽物を作れちゃう。前のは拡張機能のアイコンの高さに表示されてたから、ブラウザのアラートダイアログよりちょっと上だったんだよね。" userName="afiori" createdAt="2025-04-03T18:29:29" color="">}}

{{<matomeQuote body="絶対ないわ。なんでブラウザのウィンドウの外にweb開発者が描画できるようにするんだよ？マジありえない。" userName="dbbk" createdAt="2025-03-31T15:54:19" color="">}}

{{<matomeQuote body="中間地点が必要だよね。背景色とフォントだけ設定できるようにして、ネイティブっぽい機能は残してほしい。" userName="cush" createdAt="2025-03-31T18:25:47" color="">}}

{{<matomeQuote body="画像みたいなフォント（色んなUnicode文字を使って、それぞれに小さいタイルを割り当てる）を使えば、それっぽい画像を作れると思う。<br>てか、一つの文字にどれくらいのディテールとかサイズとか色とかアニメーションを詰め込めるんだろう？" userName="afiori" createdAt="2025-04-03T18:24:53" color="">}}

{{<matomeQuote body="Chromeだとこれで動くし、メニューがviewportの外に出るのも防げないよ。<br>    select、option ｛<br>        background： red；<br>        font-family： ’comic sans ms’；<br>    ｝" userName="eurleif" createdAt="2025-04-01T01:55:52" color="#ff5c5c">}}

{{<matomeQuote body="マジか、Chromeだけかよ" userName="cush" createdAt="2025-04-01T15:32:40" color="">}}

{{<matomeQuote body="HTMLで基本的なtypeaheadコンポーネントやタグセレクターがないなんてマジでありえないよね。作ったどのページにも必要だったし。ライブラリはあるけど、バグがあったりするし。Selectタグのスタイリングが今できるようになったってことは、もっと複雑なtypeaheadはいつになることやら。" userName="majora2007" createdAt="2025-03-31T15:17:08" color="">}}

{{<matomeQuote body="なんでエンジニアのリソースを、広く使えるHTMLウィジェットじゃなくて、WebBeer APIみたいなニッチなものに使うんだろ？" userName="cosmic_cheese" createdAt="2025-03-31T23:49:13" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞ basic typeahead<br>完璧じゃないけど、datalist試したことある？タグピッカーについても全く同感。Bootstrapにタグセレクターコンポーネントがないのが残念だった。" userName="jhardy54" createdAt="2025-03-31T15:18:40" color="">}}

{{<matomeQuote body="Appleの公式ドキュメントにはないかもしれないけど、Safari 12.2からサポートされてるよ。<br>https://developer.mozilla.org/en-US/docs/Web/HTML/Element/da... の互換性を見て。iOSとMacの最新Safariでデモは動くよ。" userName="ricenews" createdAt="2025-03-31T18:27:26" color="#45d325">}}

{{<matomeQuote body="動作が不安定な例もあるよね。最新のiOSだけど、ネイティブのdatepickerが起動したりしなかったり、typeaheadも安定しない。" userName="no_wizard" createdAt="2025-04-01T02:31:54" color="">}}

{{<matomeQuote body="デモを見ると問題点がよくわかるね。iOSだと”まあまあ”動くって感じ。" userName="mlhpdx" createdAt="2025-04-02T19:14:53" color="">}}

{{<matomeQuote body="Safariは”新しい”IEだよ。もう10年くらいそうだけど。" userName="recursive" createdAt="2025-03-31T17:32:49" color="">}}

{{<matomeQuote body="マジそれなー。SafariがIEと違うのは、IEが昔めっちゃユーザー多かったからじゃん？<br>「Safari推奨」は見ないけど、Safariで見れるように頑張ってるサイトは多いよねー。Chromeユーザーですらないけどさ。" userName="recursive" createdAt="2025-03-31T21:01:30" color="">}}

{{<matomeQuote body="ほとんどのウェブサイトは別に何もしなくても見れるっしょ。<br>Safariで見れないサイトはChrome独自の非標準機能使ってるだけだし。<br>Safari特有のバグがあるサイトはごく少数だよね。" userName="troupo" createdAt="2025-04-01T20:23:51" color="">}}

{{<matomeQuote body="むしろChromeの方が変な癖があって対応が必要だったりするよね。" userName="facile3232" createdAt="2025-03-31T19:53:32" color="#45d325">}}

{{<matomeQuote body="iframeだけの問題かもだけど、Chrome（というかBlink）でサードパーティCookieなしで動かすのめっちゃ大変だったわ。" userName="facile3232" createdAt="2025-03-31T21:03:57" color="">}}

{{<matomeQuote body="＞オートコンプリート機能も頼むわ<br>もうすぐできるんじゃない？datalist要素を見て。<br>＞https://developer.mozilla.org/en-US/docs/Web/HTML/Element/da…" userName="kkarpkkarp" createdAt="2025-03-31T17:37:10" color="">}}

{{<matomeQuote body="＜input type=“datetime-local”＞で自動でISO8601のタイムゾーンオフセットが付くのが欲しい！" userName="preisschild" createdAt="2025-03-31T16:52:50" color="">}}

{{<matomeQuote body="ISO-8601は過去のローカル時間をシリアライズするには正しいフォーマットだけど、未来には向かないんだよね。<br>ローカルな日時ピッカーは未来の日時で使われることが多いと思う。<br>タイムゾーンオフセットじゃなくて、ゾーンIDが欲しい。そうすればバックエンドでdateとtzdataがうまく処理してくれる。" userName="sublinear" createdAt="2025-03-31T21:29:17" color="#38d3d3">}}

{{<matomeQuote body="この場合、タイムゾーンを聞くことが多いかな。OSで更新されるデータだし。同じ場所にいてタイムゾーンが変わることは少ないと思うし。自分がメンテしてるソフトはログインが必要で、タイムゾーンを選べるようにしてる。それをUTCに変換して保存して、表示するときにUTCからローカル時間に戻してる。ユーザーがタイムゾーンを変えても大丈夫なようにね。" userName="progmetaldev" createdAt="2025-03-31T22:54:03" color="#38d3d3">}}

{{<matomeQuote body="過去のことはそれでいいけど、未来のことはダメじゃん？<br>2028年1月7日の午後8時にニューヨークで何かしたいとして、その後NYCのDSTルールが変わったら、午後8時にしてほしいじゃん。<br>UTCに変換して戻すとその情報が失われて、違う時間になっちゃう。" userName="mason55" createdAt="2025-04-01T13:00:04" color="#38d3d3">}}

{{<matomeQuote body="これ広くサポートされるまでが大変そう。caniuse.comだと今46%だってさ[1]。まだサポートしてないブラウザでもちゃんと使えるように、プログレッシブエンハンスメントとして使うのが大事だね。つまり、plain select elementにない機能を新しいスタイリングに入れちゃダメってこと！ま、それはいつもそうだけどね。でも、形になってきてて嬉しい！divのカスタムセレクトボックスより全然マシになるはず。😊<br>[1] https://caniuse.com/mdn-css_properties_appearance_base-selec…" userName="ljoshua" createdAt="2025-03-31T13:38:52" color="#ff5733">}}

{{<matomeQuote body="マジでそれな！めっちゃ改善だと思うけど、遅すぎだろって感じ。もっと早く実現してほしかったわ。" userName="ddoolin" createdAt="2025-03-31T14:36:53" color="">}}

{{<matomeQuote body="フロントエンドってマジめんどい。ここ15年くらい、JavaScriptフレームワークが幅きかせてて、フォームみたいな簡単なことでも使われてたし。Basic HTML/CSSが、JavaScriptなしでスタイル変えたいってニーズにやっと追いついてきた感じ。" userName="pclmulqdq" createdAt="2025-03-31T14:42:03" color="#45d325">}}

{{<matomeQuote body="JSとJSのコンポーネントが流行ってるのは、ブラウザベンダーが新しいHTML要素をなかなか作ってくれなかったからだよ。みんなが要望してたのに無視し続けてたんだよね。やっと出てきても、dialogとかdetails / summaryみたいに中途半端だったりするし。" userName="no_wizard" createdAt="2025-03-31T14:53:44" color="">}}

{{<matomeQuote body="＞Even when they do arrive, they can be half baked - like dialog or details / summary - and that doesn’t help matters<br>＞dialogとかdetails/summaryが中途半端ってどういうこと？details/summaryはスムーズなトランジションがないとか？dialogはJavaScriptなくても結構使えると思うけどな。<br>自分の場合は、date/time inputがマジ勘弁。FFだと時間のクリック要素すら表示されないし、手打ちしなきゃいけない。" userName="lelanthran" createdAt="2025-03-31T19:45:43" color="">}}

{{<matomeQuote body="openとopenModalのAPIには癖があって、アクセシビリティのこと考えてないと気づかないかも。dialogの中だとフォームにも癖があるし。<br>一番意味不明なのは、JavaScriptなしでdialogを開閉できないこと。マジで方法がない。" userName="no_wizard" createdAt="2025-03-31T20:42:59" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞The biggest thing though, is for the life of me I don’t understand why you can’t open and close a dialog without JavaScript. There’s no way to do it.<br>＞popover使えばJavaScriptなしでできるよ。<br>dialog要素はopen属性でデフォルトで開けるし、dialogフォームメソッド使えばボタンで閉じれる。JavaScriptいらないよ。<br>dialog要素をJavaScriptなしで開く方法はまだないけど、command/commandforがHTMLの仕様に追加されたらしい。" userName="JimDabell" createdAt="2025-03-31T23:06:31" color="#ff33a1">}}

{{<matomeQuote body="マジそれな…こういうのが欲しい。<br>＜button type=”open-dialog” target=”dialogId”＞Open Dialog＜/button＞<br>...<br>＜dialog id=”dialogId”＞<br> ＜button type=”close-dialog”＞Close Dialog＜/button＞<br>＜/dialog＞<br><br>マジでそれが一番理にかなってる。" userName="tracker1" createdAt="2025-03-31T20:53:51" color="">}}

{{<matomeQuote body="＞I'm with you... would be nice to have:<br>＞今すぐできるよ。<br>// 開くとき<br>＜button onclick=’document.querySelector(”#dialogId”).showModal()’＞Open＜/button＞<br><br>// 閉じるとき<br>＜button onclick=’this.closest(”dialog”).close()’＞Close＜/button＞<br><br>close()の結果を使えないのが問題なんだよね。ステータス返せるのに。<br>＞It would just make so much sense.<br>＞提案した方法も同じくらい理にかなってると思うけど。もし提案に問題があって、そっちの提案で解決できるなら教えてほしい。" userName="lelanthran" createdAt="2025-04-01T09:57:14" color="#45d325">}}

{{<matomeQuote body="JavaScriptなしでやりたいって話でしょ。" userName="tracker1" createdAt="2025-04-02T19:40:12" color="">}}

{{<matomeQuote body="なるほどね。でも実際問題、`onclick`でJS使うのと、他の属性使うのと、複雑さは変わんなくね？どっちも大差ないと思うよ。JSオフのブラウザだと`onclick`が動かないのはわかるけど、そもそもJSなしでダイアログ使うのは、ビルトインの開閉属性があってもUX最悪じゃん。" userName="lelanthran" createdAt="2025-04-03T08:34:53" color="">}}

{{<matomeQuote body="それ、もうすぐ来るよ！<br>https://developer.mozilla.org/en-US/docs/Web/API/Invoker_Com..." userName="phpnode" createdAt="2025-04-01T00:07:36" color="">}}

{{<matomeQuote body="ADA準拠を気にする必要があるなら（いつも気にしてるけど、いつもお金もらえるわけじゃない）、これは対応が難しいかもね。昔のOperaはHTML5要素のサポートが最高だった。特に日付/時間の入力はマジで最高だった（他のもほぼ全部良かったけど）。 usabilityとかwebのことちゃんと考えてたOperaが売られちゃったの悲しい。" userName="progmetaldev" createdAt="2025-03-31T22:59:53" color="#785bff">}}

{{<matomeQuote body="ユースケースごとに新しいHTML要素を作るのは違うと思うな。HTML要素を拡張できるようにするべき。<br>`appearance: base-select`っていうCSSルールのおかげで、HTMLとCSSで`＜select＞`を拡張する標準的な方法ができたし（JSに頼らなくても、コマンドを宣言的に呼び出すことでインタラクションも拡張できる可能性もある）。" userName="spartanatreyu" createdAt="2025-04-01T01:03:50" color="#ff5733">}}

{{<matomeQuote body="＞解決策はHTML要素を拡張できるようにすることだって？<br>Appleにこれ実装させるのが解決策でしょ：<br>https://developer.mozilla.org/en-US/docs/Web/HTML/Global_att..." userName="owebmaster" createdAt="2025-04-01T03:22:35" color="">}}

{{<matomeQuote body="十分な数の人をハッピーにできるくらいのHTML要素は作れると思うよ。80%の人のために80%。" userName="ksec" createdAt="2025-04-01T04:43:37" color="">}}

{{<matomeQuote body="フォームってマジ難しいよね。一番ステートフルで、みんなが触るUIコンポーネントだから。HTMLには最低限のツールしかないから、最高のUXを提供するには足りないんだよね。エラー表示のタイミングとか、送信許可のタイミングとか、エラー状態の表現とか、もっと細かく制御したいじゃん？HTML以外でフォーム作ると、言語が変わるだけで、UXのこと考えなきゃいけないのは変わんないんだよね。" userName="hombre_fatal" createdAt="2025-03-31T16:29:32" color="#ff33a1">}}

{{<matomeQuote body="20年以上遅すぎだろ！ここ20年、JavaScriptなしでできることが少なすぎる。" userName="ksec" createdAt="2025-04-01T04:41:26" color="">}}

{{<matomeQuote body="画像で角丸が流行った後に`border-radius`が追加されたみたいなもんか。" userName="Cthulhu_" createdAt="2025-04-01T09:21:40" color="">}}

{{<matomeQuote body="なんかSafariって、iOSアプリに力入れたいからか、基本的なプラットフォームの改善を後回しにしてる気がするんだよね。" userName="true_religion" createdAt="2025-03-31T14:50:06" color="">}}

{{<matomeQuote body="Safariは遅れてるしAppleはWebのこと気にしてないっていうのはもう聞き飽きたよ…<br>Safari 18.4に関する8000字以上の記事（今日リリースされたばかり！）を読めば、Webを気にしてない組織が書いたものには思えないけどね。[1]<br>[1]: https://webkit.org/blog/16574/webkit-features-in-safari-18-4..." userName="alwillis" createdAt="2025-04-01T01:52:40" color="#ff5c5c">}}

{{<matomeQuote body="Webの改善ペースって遅いよね。<br>大企業が気にしてるかどうかは置いといて、90年代のUIフレームワークと比べると、開発者の体験は貧弱だよ。<br>HTML、CSS、JavaScriptが最良の道なのかどうかはわからないけど、30%も収益を奪うエコシステムに縛られない、もっと良いものが必要だよね。" userName="true_religion" createdAt="2025-04-01T08:48:00" color="">}}

{{<matomeQuote body="えー、まだ標準規格ができて2週間しか経ってないじゃん。しかも、Appleの人が書いてるし。" userName="arp242" createdAt="2025-03-31T15:37:56" color="">}}

{{<matomeQuote body="確かにそうなんだよね。だから、ブラウザの新しい改善にすぐ期待しないようにしてる。でも、ブラウザの能力の進化を見てみると、驚くほどだよ。<br>一日一日が長く感じるけど、年月はあっという間だね。" userName="paddy_m" createdAt="2025-03-31T14:30:45" color="#785bff">}}

{{<matomeQuote body="Web開発の永遠の5年問題か。未来の標準規格に対応できる方法があればいいのに。" userName="no_wizard" createdAt="2025-03-31T14:27:29" color="">}}

{{<matomeQuote body="＞まあ、それはいつもの良い習慣だよね。<br>色や形で情報を認識できない人たちのために開発することを忘れないで。メニューのスタイルに重要な情報を隠している場合、スクリーンリーダーを使っている人にはアクセスできない可能性があるよ。" userName="bsimpson" createdAt="2025-03-31T19:18:19" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="おそらく、divベースのコントロールをページに残して、必要に応じて＜select＞ベースのコントロールを隠したり、ブラウザごとに異なるHTMLを生成したりするんじゃないかな。" userName="simiones" createdAt="2025-03-31T14:31:09" color="">}}

{{<matomeQuote body="的外れかもしれないけど、開発者はどのユーザーがアプリを使っているかを考えるべきだと思う。インターネット全体が対象なら、後方互換性を考慮する必要がある。内部アプリなら、気にせずに新しいAPIを使うのもありじゃないかな。" userName="klysm" createdAt="2025-04-01T14:07:46" color="#45d325">}}

{{<matomeQuote body="＞組み込みのモバイルOSのコンポーネントが起動しないのが心配だなー。<br>＞”だって、あれって信頼性もアクセシビリティも高いし、レスポンシブじゃん？”<br>入力要素でAndroidのUIが開くと、使い慣れてて安心できるんだよね。selectとか日付・時刻入力とかもそう。" userName="nasso_dev" createdAt="2025-03-31T14:19:45" color="">}}

{{<matomeQuote body="base-selectを使う場合だけの話みたいだよ。使わなければ今まで通り動くはず。" userName="dimal" createdAt="2025-03-31T20:06:57" color="#ff33a1">}}

{{<matomeQuote body="ここで言う”You”はウェブサイトの作者のこと。ユーザー視点だと問題解決になってないんだよね。" userName="Macha" createdAt="2025-03-31T21:55:33" color="">}}

{{<matomeQuote body="Chromeはもうネイティブじゃないコンポーネントをたくさん使ってるし、Firefoxも似たようなもんじゃん？<br>適当なウェブ開発者が作った実装が甘いコンポーネントは心配だけど、Googleならネイティブの代替を忠実に再現できるんじゃない？少なくともAndroidでは。" userName="gruez" createdAt="2025-03-31T14:23:45" color="#38d3d3">}}

{{<matomeQuote body="＞ChromeとかFirefoxとかがネイティブじゃないコンポーネントを使ってるってことは、OS標準のアプリとは違うってことだけど、ウェブサイト全体としては統一感が出るよね。<br>＞バラバラの人がdivとJavaScriptでバラバラな動きをするよりはマシじゃん。" userName="johannes1234321" createdAt="2025-03-31T16:19:12" color="#785bff">}}

{{<matomeQuote body="勘違いしてるみたいだけど、モバイルでのselectの見た目をウェブ開発者が自由に決められるようになるってことだよ。" userName="asddubs" createdAt="2025-03-31T15:25:52" color="">}}

{{<matomeQuote body="スタイルを変えない方がいいコントロールもあるんだよ。スクロールバーを見てみろよ。細すぎて掴めなかったり、色のコントラストが悪くてどこを掴めばいいかわからなかったり、スクロールバー自体を消しちゃうやつまでいる始末。<br>確かにselectのデフォルトはダサいけど、ちゃんと仕事はするんだぜ。" userName="butz" createdAt="2025-03-31T15:30:28" color="#785bff">}}

{{<matomeQuote body="今更でしょ。2000年からずっとカスタムselectボックスをハックしてきたんだから、牛が通った道を舗装するようなもんだよ。<br>それに、ユーザーとしてはスタイルを自由にselect要素に適用したいんだよね。他が全部スタイリングされてるのに、ダサいselectボックスが一つだけあるのは違和感しかない。<br>SVGとか複雑なDOM要素を入れられないのも問題だし。大抵のカスタムselectボックスはアクセシビリティを無視してるけど、これなら解決する。" userName="dimal" createdAt="2025-03-31T20:12:57" color="#45d325">}}

{{<matomeQuote body="それは違うな。うちのウェブサイトにはサイドバーとメインコンテンツがあるんだけど、サイドバーもメインコンテンツもスクロールできるんだよね。サイドバーは背景色に合わせて暗い色にしてるんだけど、背景が暗いのにサイドバーだけ白くてゴツいと見た目が悪いんだよ。<br>サイドバーだってことはちゃんとわかるし、デザイン的にもこっちの方がいい。" userName="65" createdAt="2025-03-31T18:57:50" color="#785bff">}}

{{<matomeQuote body="理想を言えば、ブラウザがもっとマシなデフォルトを使ってくれれば、こんなことしなくて済むんだけどね。Firefoxはそこらへん優秀だと思う。スクロールバーは控えめだし、コンテンツの幅に影響しないし、`color-scheme`にも対応してるし。" userName="KTibow" createdAt="2025-03-31T20:15:24" color="#45d325">}}

{{<matomeQuote body="これってselect optionsのためにもっとリッチなHTMLが使えるってことだよね。画像とか、2列の情報表示とか、フォントの太さを変えて追加情報とかさ。めっちゃ助かるじゃん。" userName="crazygringo" createdAt="2025-03-31T17:29:40" color="#785bff">}}

{{<matomeQuote body="いやいや、必要な情報をちゃんと伝えるべきでしょ。情報を制限するのは有害な場合も多いし、シンプルにするどころか逆に難しくなることもあるよ。一貫性も同じで、使いやすさを制限することがあるし。10色から選びたいときにスペースが限られてたら？色の見本があるselectが完璧じゃない？名前も添えれば最高じゃん？なんでテキストだけに制限されなきゃいけないの？ユーザー無視じゃん。" userName="crazygringo" createdAt="2025-03-31T19:05:53" color="#45d325">}}

{{<matomeQuote body="良い例だね。カラーピッカーなんて何十、何百通りも発明されてるのに、アプリごとにちょっとずつ違うから毎回考え込んじゃうんだよね。シンプルなselectで色の名前が表示されるのが一番だよ。色見本が欲しいなら、横に置いてselectのイベントハンドラで更新すればいいじゃん。" userName="SoftTalker" createdAt="2025-03-31T19:19:30" color="">}}

{{<matomeQuote body="それって客観的に見て悪化してるじゃん。「blue」が何を意味するのかわからないし、青色なんていっぱいあるし。「悪くしたい」ってのは説得力ないよ。開発者がアプリのニーズを記述できる一貫した文法を提供するのは、不必要な発明でも複雑さでも摩擦でもないよ。<br>技術の文法、つまり開発者が創造するために与えられたビルディングブロックのセットは、柔軟性と表現力のある意図とのバランスを取る必要がある。CSSの＜select＞はいい感じにバランスが取れてる。含めるのを非難するのは、機能よりも批判者について多くを語ってる。" userName="nickelpro" createdAt="2025-03-31T19:30:40" color="#38d3d3">}}

{{<matomeQuote body="名前だけじゃ色が伝わらないって。赤だって緑だって何百種類もあるんだから。一つずつクリックして色見本を確認するなんて面倒だよ。色見本付きのリストにするのが一番簡単じゃん。誰も考える必要ないし。" userName="crazygringo" createdAt="2025-03-31T19:26:19" color="#38d3d3">}}

{{<matomeQuote body="Windowsには標準のカラーピッカーダイアログがあったの覚えてる？Windows 98とかViataのmspaintにあったやつ。何でも屋はどれも得意じゃないって言うじゃん。mspaintの専用パレットツールバーの方が直感的だった。" userName="immibis" createdAt="2025-04-01T00:49:24" color="">}}

{{<matomeQuote body="スクロールバーをウェブサイトから完全に取り除いてるのもあるよね。最悪なのは、hoverした時だけ表示されるカスタムJSのやつ。コンテンツを部分的に隠すし、ドラッグしようとしてちょっとでもカーソルが外れると消えて、下にある要素を誤ってアクティブにしちゃうんだよね。" userName="userbinator" createdAt="2025-04-01T04:13:19" color="">}}

{{<matomeQuote body="小さすぎたり見えなかったりするスクロールバーが多くのブラウザでデフォルトになってるのが残念だよね。例えばLinux版のFirefoxとか、今使ってるんだけど。" userName="streptomycin" createdAt="2025-03-31T16:18:52" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
