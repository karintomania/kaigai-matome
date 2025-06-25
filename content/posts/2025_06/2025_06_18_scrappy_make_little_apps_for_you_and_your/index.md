+++
date = '2025-06-18T00:00:00'
months = '2025/06'
draft = false
title = 'Scrappy登場！自分や友達のための小さなアプリが手軽に作れるぞ！'
tags = ["アプリ開発", "ローコード", "開発ツール", "Webアプリ", "個人向け"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Scrappy登場！自分や友達のための小さなアプリが手軽に作れるぞ！

引用元：[https://news.ycombinator.com/item?id=44306859](https://news.ycombinator.com/item?id=44306859)




{{<matomeQuote body="Scrappy に似た CardStock[0] や Decker[2] ってツールもあるよ。特に CardStock は open-source で local でも動くみたい [1]！Decker は Scrappy の roadmap にある機能（表 data とか parts の再利用とか）も already 持ってるんだって。<br>[0] https://cardstock.run<br>[1] https://github.com/benjie-git/CardStock<br>[2] http://beyondloom.com/decker/index.html" userName="RodgerTheGreat" createdAt="2025/06/18 06:29:29" color="#45d325">}}




{{<matomeQuote body="こういう tool 探してたんだよねー！[0] 見つけてくれてマジ感謝！desktop app があるってのが huge で最高に助かるわ。<br>[0] https://news.ycombinator.com/item?id=44216943" userName="WillAdams" createdAt="2025/06/18 14:19:25" color="">}}




{{<matomeQuote body="趣旨はいいけど、 SaaS だと個人で長く使う小さな project には dependency ができちゃうのが嫌だな。もし service 終わったら困るし。<br>簡単な HTML／CSS／JS や PHP で browser base で作るか、 AutoHotKey みたいな既存 tool の方が、 simple だけど長くメンテいらずで安心なんだよね。 code を全部隠すんじゃなくて、 MySpace 時代の CSS みたいに、とっつきやすく tailored するのが大事だと思う。" userName="al_borland" createdAt="2025/06/18 11:14:11" color="#38d3d3">}}




{{<matomeQuote body="Scrappy みたいなのは TiddlyWiki みたいに self-replicating な HTML file でやるのがいいんじゃない？ single HTML file に全部入ってて、 save するだけで更新されるから resilience がすごいんだ。<br>個人的な小物には、この self-contained な model がより reliability が高いと思うよ。" userName="slightwinder" createdAt="2025/06/18 14:08:45" color="#ff33a1">}}




{{<matomeQuote body="TiddlyWiki に inspire されて self-modifying な HTML runtime を作ってるんだ [0]。 Plain な CSS／JS で single file な HTML app を作れるよ。<br>これは share も host もできるし、 local に download して offline app としても使える [1]。HTML file 自体が自分自身を modify できるから、 app の UI でそのまま app を edit できちゃうのが cool なとこ。<br>UI／state／logic を single file に集約することで、複雑さをなくしてるんだ。<br>[0] https://hyperclay.com/<br>[1] https://hyperclay.com/hyperclay-local" userName="panphora" createdAt="2025/06/18 14:16:38" color="#ff5c5c">}}




{{<matomeQuote body="Hyperclay ってすごく cool だね！<br>これって 「 hypermedia systems 」っていう本 [0] の考え方と align してる？<br>あと、 Lazarus とか Interface Builder 、 QT Designer みたいな visual tool を作ることはできるのかな？" userName="WillAdams" createdAt="2025/06/18 15:35:14" color="">}}




{{<matomeQuote body="Yes、 hypermedia approach と philosophical には align してるよ [0]。 Hyperclay では DOM が source of truth で、 single-file HTML app に特化してるから、そこが HTMX とは違うね。<br>Visual tool については、 HTML file 自体が自分を modify できる仕組みだから、 app の UI がそのまま visual tool になるイメージ。 drag-and-drop layout editor とかも app の一部として作れちゃうよ。<br>この vision に近いのは 「 Local-first software 」[0] と 「 Malleable software 」[1] って essay かな。<br>[0] https://www.inkandswitch.com/essay/local-first/<br>[1] https://www.inkandswitch.com/malleable-software/" userName="panphora" createdAt="2025/06/18 16:05:29" color="#785bff">}}




{{<matomeQuote body="TiddlyWiki ちょっと経験あるけど、その ultimate survivability が最高なんだよね。 `rclone serve webdav` で in place save したり、 File → Save As で別名保存したり。 SyncThing との相性も good 。<br>Home Maintenance Wiki とかで使ってるけど、いつでも browser で開けて読めるし、 modify もできるのが強い。 simple に読める（ devolves into read only ） option もあるし。<br>TiddlyWiki 自体はちょっと複雑だけど、もっと simple で、 vim とかで markdown export とか modify しやすい 「 Quine.html 」みたいな framework が理想かな。" userName="ramses0" createdAt="2025/06/18 18:18:35" color="#38d3d3">}}




{{<matomeQuote body="RedBean [0] みたいなやつ？<br>これは six OS で native に動く single-file の open source webserver なんだ。<br>redbean.com って file を download して、 zip で `.html` とか `.lua` file を中に入れれば、どこでも deploy ＆ share できる hermetic app が作れるよ。<br>https://redbean.dev/" userName="adolph" createdAt="2025/06/20 15:18:39" color="#ff5c5c">}}




{{<matomeQuote body="その RedBean のこと忘れてたな… cosmo／ape (and *.zip) は portability に面白い使い方をいくつか開くけど、 in-place editing とか browser を IDE として使う（ file → save ）のは RedBean で別途作る必要がありそうだね。<br>Seriously 、 TiddlyWiki の 「 zen 」をまだ見てないなら絶対見てみて！[0] 「 blank.html 」を download して change して 「 mine.html 」で save して始めるってのが pretty wild で最高なんだ。<br>[0] https://tiddlywiki.com/#GettingStarted" userName="ramses0" createdAt="2025/06/20 19:37:18" color="#45d325">}}




{{<matomeQuote body="Hyperclayは結構面白いね、よくできてるよ！でも使うにはアプリをインストールする必要があるの？ただ動くTiddlyWikiのUXの方が良いと思うんだけど。" userName="owebmaster" createdAt="2025/06/18 14:34:47" color="">}}




{{<matomeQuote body="アプリのインストールは不要だよ、HyperclayファイルはただのHTMLファイルだから、その点ではTiddlyWikiみたいに動くんだ。ダウンロードしてテキストエディタでローカルで使うこともできるし、TiddlyWikiみたいな保存方法も実装できるよ。<br>一番の違いはウェブで共有したいとき。TiddlyWikiだと普通は読み取り専用版を共有して、見る人は自分でダウンロードして保存する必要があるよね。Hyperclayなら同じHTMLファイルをサーバーに置いて、所有者ならブラウザで直接ライブ編集できるんだ。誰かがクローンしても、そのクローンはウェブで共有・利用可能になるよ。<br>だから、オフラインで「ただ動く」単一ファイルのシンプルさと、公開してブラウザで直接編集できる生きたドキュメントとしての能力、両方の良いところがあるんだ。<br>TiddlyWikiの哲学を共有ウェブに拡張したもの、って考えてみて。同じ単一ファイルのシンプルさで、変更が他の人にも見えるようになるってこと。" userName="panphora" createdAt="2025/06/18 14:51:02" color="#ff5c5c">}}




{{<matomeQuote body="＞TiddlyWikiの哲学を共有ウェブに拡張したものって考えてみて。<br>ごめん、それが利点だとは思えないんだ。TiddlyWikiは添付ファイルみたいに簡単に共有できるじゃん。でもサーバー動かすのって、普通の人には全然簡単じゃないよ。" userName="owebmaster" createdAt="2025/06/18 15:15:22" color="#ff5c5c">}}




{{<matomeQuote body="見た目クールだね。ちょっと気になった点が2つあってね。<br>－ 料金ページが今、スタイルなしの404になってるよ<br>－ docsのサブドメインはJavaScriptがないと表示されないのが、まあ良いんだけど例はJavaScriptなしで見れるからなんか変だなって。<br>それ以外は本当に面白いよ、シェアありがとう！" userName="dmwilcox" createdAt="2025/06/19 09:27:53" color="#ff5733">}}




{{<matomeQuote body="アプリって動かすのにローカルサーバー（特にローカルデータベースに書き込む場合）が必要だったり、OS用の実行ファイル形式で配布される必要があったりするよね。ネイティブアプリは書けないけどPHPはそこそこできる俺としては、自分の問題を解決する方法は、bashスクリプトでApacheサーバーを起動して、自分のアプリのindex.phpファイルを読み込むことだって発見したんだ。全部ローカルのハードドライブに保存してる。モバイルでも動くよ、TermuxでApacheを手動で起動する必要があるけどね。<br>今のコンピューティングは、リモートのウェブサーバーに依存しないローカルアプリを自分で構築できる能力がマジで必要とされてると思う。これはインターネット以前の時代のコンピューティングのやり方だったんだよ。HyperCardはデータベースに接続できたし、Filemaker Proもそう。Windowsにも似たようなのがあって、GUIアプリがAccess DBを読み書きできた。これらのツールは廃れて、今はサブスクリプションベースのSaaSの一部としてしか生き残ってないんだ。" userName="rchaud" createdAt="2025/06/18 19:12:44" color="#38d3d3">}}




{{<matomeQuote body="PHPならローカル開発やテスト用に組み込みのウェブサーバーがあるよ。俺は必要なときはそれを使ってるな。<br>`cd ~/html`<br>`php -S localhost:8000`" userName="al_borland" createdAt="2025/06/18 23:42:34" color="#ff5c5c">}}




{{<matomeQuote body="DeckerもTiddlyWikiみたいに動くよね。完全に分散化された自己複製アプローチが、このタイプのアプリケーション＼ツールを配布するのに理想的な方法だって俺も同意だよ。すごく制限された環境でも、ウェブブラウザで動く単一ファイルアプリは使えるし共有も許可されるだろうからね。" userName="RodgerTheGreat" createdAt="2025/06/18 14:24:55" color="">}}




{{<matomeQuote body="https://codeboot.org を見てみるべきだよ。完全にクライアントサイドで動くPython IDEで、ステップ実行とか仮想ファイルシステム、JavaScriptコードを呼び出すFFIとか色々あるんだ（docsを見てね）。CodeBootでのアプリ共有は超簡単だよ。プレイボタンを右クリックして共有可能なURLをコピーするだけ。俺はCodeBootを使ってデータ処理の問題を解決する手伝いを何人かにしたんだけど、彼らは今、その小さなアプリをブックマークして使ってるよ。マジでうまく機能してる。<br>まだまだ話せるけどね。興味があればAMA（Ask Me Anything）してね。俺たちは活発に開発してて、いくつかのすごい新機能がもうすぐ出るよ！" userName="belmarca" createdAt="2025/06/18 14:41:24" color="#45d325">}}




{{<matomeQuote body="UXとUIの絶対的な機能性だけを愛してるって言ってもいいかな？ウェルカム画面なしで、即座にメインインターフェースに放り込まれる感じ、それ自体に余計なボタンやスタイリングが一切無駄になってない。俺にとってはこれが美しいんだ。" userName="jorvi" createdAt="2025/06/18 16:40:05" color="">}}




{{<matomeQuote body="本当に喜んでくれてマジ嬉しいよ！入門プログラミングコースを教えるのに使ってて、あのシンプルなUIはその使用例のために意図的に作られたものなんだ。プログラミングするのは本当に楽しいんだけど、それができること全部を伝えるのにちょっと苦労してるんだよね。その点一生懸命取り組んでて、近いうちにランディングページとかもっと分かりやすい説明資料ができるはずだよ。フィードバックはすごく興味があるんだ。もし誰かもっと知りたいって人がいたら、プロフィールのメールで連絡してね！<br>じゃあまた！" userName="belmarca" createdAt="2025/06/18 17:09:29" color="#ff5733">}}




{{<matomeQuote body="ランディングページじゃなくて「？」ボタンがいいかも。Cookie同意ポップアップとかマジでウザいんだよね。プライベートウィンドウでLMarena開いてみて、どれだけひどいか見てごらんよ。Cloudflareの認証とか何回出てくるんだって話。<br>でも、それ以外はまだコメントないけど、良さそうなプロダクトみたいだね！" userName="jorvi" createdAt="2025/06/18 21:21:22" color="#45d325">}}




{{<matomeQuote body="ドメインを2つ使うの考えてるよ。codeboot.orgは”会社”向け、codeboot.appはIDEとかユーザーアプリ向け、とか。現状の体験は変えたくないんだけど、ソフトで何ができるか説明をもっとちゃんとしないとね。コメントありがとう！" userName="belmarca" createdAt="2025/06/19 00:56:23" color="">}}




{{<matomeQuote body="長く使うには、SaaSのコードをオープンソースにするのがいい方法だと思うな。Penpotの人たちがうまくやってるみたいにね（https://penpot.app/）。<br>アプリの署名とか難しい問題はあるけど、Web3とか使えないかな。PICO-8みたいにランタイムだけ出して、”カートリッジ”やアプリを配布するってのもありだね（https://www.lexaloffle.com/pico-8.php）。<br>信頼できる配布網を作るのは大変だけど、前例もあるしきっとできるよ！" userName="bandoti" createdAt="2025/06/18 11:57:43" color="#ff5733">}}




{{<matomeQuote body="20年前にTiddlyWiki使ってた頃を思い出したよ。これってHTML, CSS, JavaScriptだけなら、1つのHTMLファイルに全部詰め込めないかな？ テンプレートをダウンロードして、オフラインでアプリ作って、自分で動くファイルとして保存できるとか。オフラインで使えたらいいのに。<br>今の例は簡単すぎて、Vibe codingでもすぐに作れちゃうレベルだよね。ChatGPTに頼んだら50行だってさ。手作業ならもっと短くできる自信あるよ。<br>もちろん最初はシンプルでいいんだけど、AIで簡単にできちゃうことのために、結構なインフラを追加するほどの価値はまだないかなって気がする。" userName="al_borland" createdAt="2025/06/18 12:26:05" color="#ff33a1">}}




{{<matomeQuote body="Vibe codingでも目的は達成できるかもしれないけど、友達のためにちょっとしたアプリを作って楽しむっていう点では、Scrappyの方がいいんじゃないかな。それに、AIが生成したコードって、変更したいときに初心者が編集するのは難しくなりがちだと思うよ。" userName="II2II" createdAt="2025/06/18 13:19:55" color="">}}




{{<matomeQuote body="CursorとVibe codeでフライトトラッカーを作ったんだけど、これが最高なんだ！ 空を飛んでる飛行機からADS-B情報を受信して、地元の空港情報と組み合わせて、駅のパタパタする表示板みたいに見れるようにしたんだよ。奥さんも飛行機がどこ行くか知るのが好きだから、マジックミラーに表示させてるんだ。<br>実は、裏側の技術とか全然わかってないし、フロントエンドのJavaScriptもほとんど書けないんだけど、10時間くらいで素敵な小さなアプリができたよ。前なら2ヶ月かかっても挫折してたと思う。<br>Vibe codingのおかげで、またコードが好きになったくらいポジティブな経験だったね。コードの質も結構良くて、アマチュアレベルとしてはかなりいい方だと思うよ（普通の商用コードの平均より上じゃないかな）。" userName="edmundsauto" createdAt="2025/06/18 16:08:21" color="">}}




{{<matomeQuote body="Scrappyの共同開発者です。ソフトウェアの長期利用が重要だってのは完全に同意だよ。Scrappyはlocal-firstアーキテクチャで設計してるから、従来のバックエンドはなくて、軽量な同期サーバーにしか依存してないんだ。（急いでFAQに技術的な詳細を追加したんだよ、HNでバズったって知って。）<br>これが、ほとんどのローコード／ノーコードツールがSaaSなのとは違う重要な点だと思ってるんだ、技術的にも金銭的にもね。<br>初期に考えてたこととして、scrappsを単一の自己完結型HTMLファイルとして保存できるようにするっていうアイデアがあったんだ。実験はしたけど、今はその機能は公開してないんだよね。" userName="jrcplus" createdAt="2025/06/18 21:47:49" color="#785bff">}}




{{<matomeQuote body="自己完結型のHTMLファイルとしてダウンロードできるのは、すごくいいと思うな。長期利用のためだけじゃなくて、ネットの接続が怪しい場所とかでも便利だよね。" userName="al_borland" createdAt="2025/06/18 23:48:48" color="">}}




{{<matomeQuote body="基本的なHTML/CSS/JavaScriptを自分で使うのに抵抗がないなら、openjam.ai ってのも面白いかもね。<br>こんな面白いもの作れるから見てみてよ（PCで見るのがおすすめ）:<br>https://openjam.ai/lonely_ant_702/bajbin4neo<br>https://openjam.ai/stupid_coral_852/qg8yembjg5<br>https://openjam.ai/stupid_coral_852/y2hj69iqvo" userName="nico" createdAt="2025/06/18 15:29:28" color="">}}




{{<matomeQuote body="僕がやったことで一番良かったことの一つは、1週間かけてApple Watchの散歩ルート全部を大きな地図に表示できる簡単なアプリを作って、AppStoreで公開した後に友達と共有したことだよ。もう1年前に作業は止めたんだけど、友達（とたまたま見つけた何人かの人！）から、街全体を歩き回れたとか、今でもメッセージが届くんだ。お金には全然ならなかったけど、本当にやりがいのある経験だったね。<br>OPが言う通り、友達のために簡単なアプリを fun! （楽しく）作るのが最高なんだよ！" userName="tokioyoyo" createdAt="2025/06/18 07:04:12" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="うわー、このアイデアずっと温めてたんだ。<br>実現してくれてマジ感謝！" userName="culopatin" createdAt="2025/06/19 01:41:57" color="">}}




{{<matomeQuote body="すごくいいね、アプリのリンク貼ってくれない？" userName="bryantt" createdAt="2025/06/18 07:46:21" color="">}}




{{<matomeQuote body="はいどうぞ！<br>https://apps.apple.com/us/app/mapcut/id6478268682<br>すごいってわけじゃないけど、アクティブユーザーがいるくらいには使えるよ。<br>無料だから遊んでみて！<br>認証があってごめんね、他の機能試しててウェブサーバーが必要だったんだ。" userName="tokioyoyo" createdAt="2025/06/18 10:43:05" color="#ff5c5c">}}




{{<matomeQuote body="OPのアプリじゃないけど、似た感じのアプリで長年使ってたのがあるよ。<br>GPSトラッカーとかからもインポートできる。<br>https://fogofworld.app" userName="dewey" createdAt="2025/06/18 08:23:18" color="#45d325">}}




{{<matomeQuote body="それってゲームマップみたいに行った場所の霧が晴れるの？<br>それはいいね、レビューは微妙みたいだけど。" userName="gardenhedge" createdAt="2025/06/18 11:00:23" color="">}}




{{<matomeQuote body="そうそう、そのアイデアだよ。<br>使ってた数年間はちゃんと動いてたよ。" userName="dewey" createdAt="2025/06/18 11:40:27" color="">}}




{{<matomeQuote body="僕はhttps://wandrer.earth/ 使ってるよ。<br>Stravaと連携できる。" userName="matsemann" createdAt="2025/06/18 11:02:14" color="#785bff">}}




{{<matomeQuote body="OPじゃないけど、https://dawarich.app/ も同じ感じみたいだよ。<br>オープンソースでSelf-hostできて、iOS Appもある。" userName="drchaos" createdAt="2025/06/18 08:54:38" color="#45d325">}}




{{<matomeQuote body="あれ作るのに超えなきゃいけなかった、数え切れない無駄な障害を想像してみてよ。<br>どれだけの人が諦めたか。<br>苦労しても何もコントロールできず、ベンダーに縛られる。<br>AIにPromptするだけで作れて、オープンソースの時計に送れる世界になったら最高だよね。" userName="brador" createdAt="2025/06/18 10:15:58" color="">}}




{{<matomeQuote body="もっともな意見だね。<br>でも大人になるにつれて、そういうの自分にはどうでもいいって気づいたんだ。<br>考え方はシンプルで、よく歩くからどれだけ街を回ったか気になるな、無料Appないな、iOS App作ったことないけどこれ簡単そう、1週間で作って友達とShareしよう、って感じ。<br>個人的には、囲い込み論争とかマジどうでもいい。<br>人生はシンプル、新しい場所歩いてビール飲む方がいいな。" userName="tokioyoyo" createdAt="2025/06/18 11:45:00" color="#785bff">}}




{{<matomeQuote body="これで作ったアプリがモバイルでちゃんと動くようになるのはロードマップにあるけど、モバイル編集自体は「手乗りサイズのタッチスクリーンはScrappsを快適に編集するには小さすぎる」って書いてあるね。<br>モバイルユーザーの粘り強さを軽視しないでほしいな！最近はスマホだけが唯一のPC代わりの人も多いし、スマホでコード書いたり小説全部書いちゃったりする人もいるんだぜ。<br>デスクトップより快適じゃなくても、モバイル編集インターフェースを考える時間をかけると、このツールの影響力はすごく大きくなると思うよ。" userName="simonw" createdAt="2025/06/18 12:45:39" color="#785bff">}}




{{<matomeQuote body="「vibe coding」が短期間で開発者を置き換えることはないと思うけど、こういうシンプルなシステムにとっては最強のライバルになるだろうね。<br>いくつかのLLMにこういうアプリ（HTMLにJSを埋め込んだだけのやつ）を作らせてみたら、何回か修正したらちゃんとできたよ。しかも見た目ももっと魅力的だったんだ[1]。<br>[1] https://claude.ai/public/artifacts/bb451732-9559-401a-8000-b..." userName="selcuka" createdAt="2025/06/18 06:31:08" color="#ff33a1">}}




{{<matomeQuote body="どんな感じか知りたくて、趣味のプロジェクトを「vibe coding」でやってるんだ。<br>数時間おきに、LLMじゃ解決できない問題で行き詰まることに気づいたよ。プログラミング経験がないユーザーだと、それを解決する希望はほとんどないだろうね。<br>多分、この問題はテクノロジーとかプロジェクトの範囲によるのかもしれないけど。" userName="yreg" createdAt="2025/06/18 08:18:27" color="#ff5c5c">}}




{{<matomeQuote body="バグがあるよ。<br>3 + 2 = 5.1みたいに非整数を入力すると、それが正しいって判定されちゃうんだ。" userName="physicsguy" createdAt="2025/06/18 08:52:01" color="#785bff">}}




{{<matomeQuote body="君のシンプルなシステムスタックは何？自己ホストできるやつがいいな。<br>多分Vueを選ぶかな。あとAuth、マルチプレイヤーオフラインDB、静的ホスティング、ファイルホスティング、そしてできればユーザーごとにデータをフィルタリング（APIをいじっても他の人のデータが見えないように）できるのが必要だね。" userName="aitchnyu" createdAt="2025/06/18 10:24:09" color="">}}




{{<matomeQuote body="「?」を空白かアンダーバーに変えた方がいいと思うな。" userName="djmips" createdAt="2025/06/18 14:13:32" color="">}}




{{<matomeQuote body="Vibe codingって、「まあまあ動くけど、バグが多い」ってことと同義みたいだね。" userName="4ndrewl" createdAt="2025/06/18 11:32:06" color="">}}




{{<matomeQuote body="クリティカルエラーを乗り越えられればね。<br>それがプログラマーじゃない人の一番のネックだよ。<br>Excel VBAとかちょっと弄れるパワーユーザーならまだしも、それでも簡単なプロジェクト始めるのに結構設定が必要だし。<br>.jsファイルがJavaScriptファイルだってこと（それが何を意味するか）みたいな細かいことまで。<br>俺たちには当たり前だけど、普通の人はそうじゃない。<br>よっぽど時間かける気がないと無理だね、ほとんどの人はそんな気ないけど。" userName="trinix912" createdAt="2025/06/18 19:28:31" color="#ff33a1">}}




{{<matomeQuote body="いいツールだけど、スプレッドシートより使いやすいエンドユーザー向けプログラミング環境はまだ見たことないな。" userName="nilirl" createdAt="2025/06/18 06:47:22" color="">}}




{{<matomeQuote body="その極端な例を見るなら、これを見てみてよ：https://pyspread.gitlab.io/" userName="WillAdams" createdAt="2025/06/18 13:48:55" color="">}}




{{<matomeQuote body="テストなし、バージョン管理なし、ライブラリサポートなし。<br>俺はパスだね。" userName="schwartzworld" createdAt="2025/06/18 10:40:32" color="">}}




{{<matomeQuote body="それって、エンドユーザー向けのプログラミングもプロのソフト開発と同じ優先順位であるべきだって主張してるの？" userName="nilirl" createdAt="2025/06/18 11:03:04" color="">}}




{{<matomeQuote body="それって、どこで言ってる？" userName="schwartzworld" createdAt="2025/06/20 10:12:09" color="">}}




{{<matomeQuote body="コーディングを学ぶか、このツールを学ぶかだね。<br>俺は開発者だから自分で作れるし、LLMを使えば簡単なのはすぐできる。<br>一般の人にとって、これの市場ってどこだろう？<br>誰がドラッグ＆ドロップでアプリ作るのを学ぶのに時間かけるのかな？" userName="thunspa" createdAt="2025/06/18 09:25:37" color="#ff5c5c">}}




{{<matomeQuote body="「コンピューターは人のために働くべき〜」って部分、テンプレートっぽいね。<br>「with live updating — all for free. LLMs ar...」とか長いダッシュが多いのは、ChatGPTで書いたか、AIみたいな書き方になってる証拠かも。<br>AI生成コンテンツは、サインを見ると脳がオフになるからあんまり好きじゃないんだ。<br>クリエイターには悪気ないけどね。" userName="blips" createdAt="2025/06/18 09:20:58" color="#ff5c5c">}}




{{<matomeQuote body="＞「with live updating — all for free. LLMs ar...」の長いダッシュはAIの兆候かも、って？<br>あれ、実は俺の10-15年前からの書き方なんだよねｗ<br>でも、確かにAI生成コンテンツは、他の人がプロンプトしたやつはあまり好きじゃないってのは同意だよ。<br>もしLLMの答えで十分なら、自分で直接LLMに聞いた方が早いしね。" userName="ben_w" createdAt="2025/06/18 09:24:28" color="">}}




{{<matomeQuote body="ダッシュの使い方、ハイフン、エMダッシュ、エMダッシュの違いを調べると、君が例に挙げた使い方は実はエMダッシュで合ってるんだよね。だから、これがAI生成の証拠っていう君の結論には反対だな。" userName="Hendrikto" createdAt="2025/06/18 09:44:08" color="">}}




{{<matomeQuote body="エMダッシュって大事な句読点だけど、打ち方知ってる？MacならShift-Option-Hyphenだと思うよ。— ←こんな感じね。" userName="juped" createdAt="2025/06/18 19:16:34" color="">}}




{{<matomeQuote body="Scrappy作った者だけどさ、昔ながらのMacユーザーだからハイフンとかエMダッシュの違いは分かってるんだよ:) AIは言葉を整えるのにちょっと使っただけで、文章全部は作ってないよ。マジで、これ作るの大変だったんだから（Pontusが頑張った！）。" userName="jrcplus" createdAt="2025/06/18 22:02:28" color="#785bff">}}




{{<matomeQuote body="プログラマー視点じゃなく、もっとコミュニティって側面が大事な気がするな。家族経営のアプリストアみたいな感じから始めるとかどう？Mastersonスタイルってやつ。<br>セキュリティは気にしない（友達同士でしょ？）で、招待がないと貢献できない仕組みとか。ただの思いつきだけど。" userName="Peteragain" createdAt="2025/06/18 07:43:38" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="初心者向けのブロック型じゃなくて”スクリプトで動かせる部品”って考え、めっちゃ賛成だよ！今はスマホだけど、デスクトップですぐ試してみるね。でも、分析で抜けてると思うのは、みんな簡単に共有できてタダで使いたいってことじゃない？アプリ作るの簡単でも、配ったりホストしたりが大変。アプリストアは壁だし、妻や子供は月5ドルなんて絶対払わないよ（プロの開発者も多くはそう）。" userName="riffraff" createdAt="2025/06/18 06:21:07" color="#38d3d3">}}




{{<matomeQuote body="自分でホストできるよ。OSのウェブサーバーと、家のPCを指すダイナミックDNSサービスを使えばさ。" userName="DougN7" createdAt="2025/06/18 06:27:38" color="">}}




{{<matomeQuote body="でもさ、OSにはウェブサーバーないから探して入れる必要があるし、自動起動とかポート転送も設定しなきゃ（CGNATとかISPによっては無理かも…）。それに、共有リストのためにPCを24時間つけっぱなしにするってパートナーに説明いるし、月5ドルのVPSより電気代の方が絶対高いよ。それもう受け入れられないって話だったじゃん。" userName="franga2000" createdAt="2025/06/18 06:44:00" color="">}}




{{<matomeQuote body="”…妻とか子供たち”って言った時点で、”…自分でホスト”のところで、もう彼らは話を聞く気なくしてるって！" userName="vincnetas" createdAt="2025/06/18 07:01:45" color="">}}




{{<matomeQuote body="そのコメント（GPって書いてるやつね）は、妻や子供が自分でホストするんじゃなくて、投稿者が妻や子供のためにホストするって言ってるんだと思うよ。" userName="abcd_f" createdAt="2025/06/18 07:20:08" color="">}}




{{<matomeQuote body="残念ながら、こういう面白いアイデアをタダでホストしたり配ったりできるようにすると、悪い人たちがサービスを悪用しちゃうんだよね。" userName="stevoski" createdAt="2025/06/18 06:32:29" color="">}}




{{<matomeQuote body="UI要素を空のシートにドラッグして、グリッドスナップと格闘（だってUI要素のサイズと合わないんだもん）、そのあとはコード補完もビジュアルプログラミングもAPIヘルプもAIサポートもなしで生のJavaScriptを入力しろってこと？<br>それで終わり？って感じ？" userName="indyjo" createdAt="2025/06/18 09:08:32" color="">}}




{{<matomeQuote body="これ、素晴らしいデモだと思うよ。君が受けてるフィードバックがこんなに厳しいのは興味深いね。<br>たぶん、もうこの分野には乗り遅れたのかもしれない。私もこの分野で働いてるけど、この先の道は残念ながら指数関数的に難しくなるよ。" userName="zupa-hu" createdAt="2025/06/18 12:26:28" color="">}}




{{<matomeQuote body="Scrappyの代替として、無料のCodeBootウェブアプリ（https://codeboot.org）があるよ。これを使うと、Pythonでウェブアプリを作れて、それが全部URLにカプセル化されるんだ。<br>開発者もユーザーもインストールは一切いらないよ。<br>以下は、ダイアログを使った簡単なユーザーインタラクションがある算数練習アプリの例。ウェブアプリのURLを作るには、「play」ボタンを右クリックして、生成したいリンクの種類を選ぶだけ。<br>https://app.codeboot.org/5.3.1/?init=.fbWF0aF9wcmFjdGljZS5we...<br>もっと複雑なUIの場合は、CodeBootにはPythonコードからDOMに直接アクセスするためのFFIが用意されてるよ。例えば、もう一度サイコロを振るボタンがあるサイコロ投げアプリの例はこちら。<br>ボタンのテキストは多言語に対応してて、ブラウザのデフォルトに合わせて調整されるんだ。<br>https://app.codeboot.org/5.3.1/?init=.fZGljZS5weQ==~XQAAgADq..." userName="feeley" createdAt="2025/06/18 09:51:31" color="#38d3d3">}}




{{<matomeQuote body="友達のためにこういう小さいアプリはよく作るけど、100％PHPと普通のHTML、ちょっとJavaScriptで書いてるよ。<br>すぐに作って、すぐにデプロイして、すぐにアップデートできて、どんなデバイスでも動いて、WhatsAppでリンクを送るだけで実行できる必要があるんだ。<br>だからAppleが何をしようと関係ないね。そんなものをApp Storeに入れる気は全くないから。" userName="InsideOutSanta" createdAt="2025/06/18 06:37:32" color="#ff33a1">}}




{{<matomeQuote body="ええとね、ネイティブAPIを使って書かれたアプリを共有するんじゃなくて、ウェブブラウザを使わないといけない理由は、AppleがApp Storeを使うように強制するからなんだ。だから、Appleが何をするかってことは関係あるんだよ。<br>彼らは君がネイティブツールキットを使うのを妨げてるし、ブラウザを使うのはその回避策でもあるんだ。<br>追記だけど、Appleは彼らがウェブAPIで公開する機能も完全にコントロールしてるから、たとえそれでもめちゃくちゃ重要なんだよ。" userName="bowsamic" createdAt="2025/06/18 07:33:22" color="">}}




{{<matomeQuote body="＞ウェブブラウザを使わないといけない理由って？<br>使わないといけないんじゃなくて、使いたいんだよ、ウェブブラウザをね。<br>俺、アメリカにいないから、知ってる人でiPhoneを使ってる人なんてほとんどいないし、APKsを送ることだって簡単にできるけど、なんでわざわざそんな面倒なことをする必要があるの？" userName="InsideOutSanta" createdAt="2025/06/18 12:38:06" color="">}}




{{<matomeQuote body="つまりそれはそれでいいんだけど、そうすると膨大な数のシステムAPIが使えないから、スマホの機能を使うソフトを作りたいなら実際問題なんだよ。<br>iPhoneだろうがAndroidだろうがウェブブラウザがあるから大丈夫、なんてことはないんだ。<br>AppleがiOS向けのネイティブソフトを無料で書かせてくれないのが問題じゃない、って主張しようとしてるのが俺には信じられないわ。<br>あと、iPhoneはアメリカだけのものじゃないよ。俺、ドイツにいるけど、ここでもiPhoneはすごく人気だよ。" userName="bowsamic" createdAt="2025/06/18 13:12:12" color="">}}




{{<matomeQuote body="Applescript Studioにはすごく期待してたんだ。HyperCardの広く使われる代替になることを願ってた。このサイトhttps://macosxautomation.com/applescript/develop/index.htmlを見ると、現状は多くの人にとってハードルが高いみたいだけどね。" userName="WillAdams" createdAt="2025/06/18 13:52:23" color="">}}




{{<matomeQuote body="HyperCardに関するYouTube動画を見て、Appleがもう関心がないって気づいたよ。正直、他の人たちもそうなんだけど、洗脳されてると思うんだ。もしユーザーに自分でアプリを作らせたら、どうやって広告を出して30%の収益を取るんだい？" userName="bowsamic" createdAt="2025/06/18 14:15:47" color="">}}




{{<matomeQuote body="ユーザーにアプリ開発をさせると収益化の可能性が減るっていうのは、まさにその通りで素晴らしい指摘だね。でもopensourceならうまくいくかも？<br>Raspberry Piとかで、誰でも簡単にアクセスして使えるのに、今みんなが当たり前に期待する洗練されたユーザーインターフェースを作れるプラットフォームが登場したら最高なんだけどな。" userName="WillAdams" createdAt="2025/06/18 14:44:40" color="">}}




{{<matomeQuote body="iPhone Shortcutsって、驚くほど色々なことができるよ。Apple ecosystemで趣味のアプリを作るのはハードルが高すぎるっていうのは同意だけど、ShortcutsはCRUD作業なんかを簡単にこなせるんだ。" userName="jimbob45" createdAt="2025/06/18 08:30:54" color="">}}




{{<matomeQuote body="LLMとvanilla JavaScript、GitHub Pages、それとユーザーのlocalStorageを一時的な保存場所として使えば、すっごく役立つ小さなツールがたくさん作れるんだ。安定性も高くてクロスプラットフォームだしね。<br>最近、私は食事チェックリストを作ったんだけどhttps://hiandrewquinn.github.io/diet-checklist/、週に5日はほぼ完璧に守れてるよ。Androidにそのウェブページを開く小さなボタンを置いて、クリックして、サッと終わらせるんだ。もし何か変更したくなったら、現在のリストのプレーンテキストのスクリーンショットをコピーしてGeminiとチャットすればいい。<br>この新しい技術の流れがすごく気に入ってるよ。" userName="hiAndrewQuinn" createdAt="2025/06/18 08:50:42" color="#ff5c5c">}}




{{<matomeQuote body="これに+1だね。深い技術的バックグラウンドがない自分でも、LLMのおかげで想像もつかないくらい生活が向上したよ。日々のちょっとした煩わしさを解消する小さな機能をサッとスケッチして開発できるようになったんだ。" userName="zigman1" createdAt="2025/06/18 08:53:16" color="">}}




{{<matomeQuote body="最初にやったのは、ジャーナルエントリを適切なGoogle Driveフォルダに自動で保存することだったんだ。毎日Google Docsにブレインダンプやジャーナルを書いてるんだけど、「新しいドキュメント」をクリックするとGoogle Driveのルートフォルダに入っちゃって、それを手動で移動するのが面倒でね。<br>LLMに手伝ってもらってPythonスクリプトを書いたんだ。ルートフォルダを検索して、正しいドキュメント（名前はいつもその日の日付）を見つけて、Google Driveの指定されたリポジトリにある正しいフォルダを探す（新しい月が始まったら年や月のフォルダも作る）スクリプトだよ。GitHub actionsで毎日一度これをトリガーするyamlスクリプトも作ってもらったんだ。<br>まるで魔法使いになった気分だったね。それ以来、second brainデータベースや、YouTube動画の内部インデックスなんかも作ったよ。APIを呼び出してトランスクリプトを取得しLLMに送ったり、他のノート作成の自動化も色々やったよ。" userName="zigman1" createdAt="2025/06/18 11:35:29" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
