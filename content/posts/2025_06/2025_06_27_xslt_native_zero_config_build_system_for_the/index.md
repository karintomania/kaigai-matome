+++
date = '2025-06-27T00:00:00'
months = '2025/06'
draft = false
title = 'XSLTがウェブ向け設定不要ビルドシステムに！'
tags = ["XSLT", "XML", "ウェブ開発", "ビルドシステム", "XPath"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> XSLTがウェブ向け設定不要ビルドシステムに！

引用元：[https://news.ycombinator.com/item?id=44393817](https://news.ycombinator.com/item?id=44393817)




{{<matomeQuote body="XSLT、特に1.0はダメだったな。パフォーマンス問題がヤバくて、アルゴリズムの複雑性が隠れちゃってデバッグが地獄。JSならそんな問題はないんだけどね。<br>てか、テーブルの処理で7分とかありえなくない？" userName="badmintonbaseba" createdAt="2025/06/27 08:37:07" color="#45d325">}}




{{<matomeQuote body="XMLを救世主視してた時代全体の問題だよね。機械用なのに人間が手を入れるのが超大変。実世界だとすぐに炎上するし、火消ししても次が出てくる。<br>XSLTとかSOAPとかXHTMLもその流れ。" userName="nolok" createdAt="2025/06/27 09:40:02" color="">}}




{{<matomeQuote body="XSLT/XPathは進化してるんだよ。key（インデックス）とかで超速くなる。Saxonみたいな良いXSLT実装もパフォーマンスに効く。<br>XMLを他の形式に変換するなら、XSLTはロジックを整理できてけっこう便利だよ。" userName="nithril" createdAt="2025/06/27 11:15:20" color="">}}




{{<matomeQuote body="「XMLは救世主」みたいなサイクル、プログラミング界隈ではよくあるよね。新しい技術が出て、普及して、問題が出て、衰退して、「適材適所」になる。<br>このサイクルから抜け出すには、冷静に良いとこだけ使うのが勝ちかな。" userName="diggan" createdAt="2025/06/27 10:47:39" color="#ff5733">}}




{{<matomeQuote body="ちょっと異論かもだけど、JSONもXMLみたいなサイクルに乗ってると思う。テキスト形式のオーバーヘッドがあるのにJavaScript人気で広まった。MongoDBみたいにJSONベースのDBも出たけど、多くのケースでRDBより遅かった。<br>でも、やっぱりJSONは手軽でinspectしやすいのが強み。" userName="colejohnson66" createdAt="2025/06/27 13:34:04" color="#ff33a1">}}




{{<matomeQuote body="XSLT 1.0にもKeyはあったよ。2+は副作用とかで複雑になった。1.0は学習曲線キツかったけど、Muenchian groupingとかマジで美しかったんだ。<br>新しい規格はエレガンス失って構文はイケてないまま。そりゃ広まらないよね。" userName="sam_lowry_" createdAt="2025/06/27 12:11:21" color="">}}




{{<matomeQuote body="XSLTはXMLじゃない形式で書けた方が良いよね。XMLデータ構造自体も、XML以外のシリアライゼーションが必要。<br>Semantic WebのOWLみたいに、XML以外にも色々な形式があるのが理想。" userName="echelon" createdAt="2025/06/27 13:40:08" color="">}}




{{<matomeQuote body="個人的には、XSLTじゃなくてXPathライブラリと他の汎用言語（Haskell含む）で解決したいな。XSLTは癖があって制約がキツすぎる。<br>XPathがXSLTにしかなかった頃はともかく、今は他の言語にもあるんだし。" userName="jerf" createdAt="2025/06/27 13:26:52" color="#ff5c5c">}}




{{<matomeQuote body="こういうサイクルはいっぱいあったけど、00年代のXMLヒステリーが一番ひどかったな。長期間続いて、丸穴に四角いXMLを無理やり突っ込んだ。<br>あれは本当に最悪だった。" userName="colonwqbang" createdAt="2025/06/27 12:07:35" color="">}}




{{<matomeQuote body="XSLTって、長いXMLソースを処理する前提で作られたはずだよね。それなのに、ネストしたループで簡単にパフォーマンス問題起こすの、なんか変じゃない？" userName="agumonkey" createdAt="2025/06/27 09:58:34" color="">}}




{{<matomeQuote body="Saxon以外のオープンソースのXSLTプロセッサーを知ってる？ 知りたいんだよね。" userName="thechao" createdAt="2025/06/27 13:19:47" color="#45d325">}}




{{<matomeQuote body="IDK、XMLへの過熱ぶりって、昔の動的/関数型言語の時と似てるけど、マイクロサービスとかSPAとか、今のAIへの過熱ぶりに比べたら全然大したことないよ。" userName="0x445442" createdAt="2025/06/27 12:40:06" color="">}}




{{<matomeQuote body="真面目な話、XSLTをもっと使いやすい言語のコンパイル先にしたらどう？<br>XSLTはJavaScriptなしでテンプレート処理できて、Webネイティブで広く使えるのは良い点だよね。デバッグツールが弱いのが残念だけど。<br>参考：https://justinfagnani.com/2025/06/26/the-time-is-right-for-a..." userName="yoz" createdAt="2025/06/27 16:59:41" color="#ff33a1">}}




{{<matomeQuote body="XSLTがDOMツリーをたどるのが主流で、ストリーミングが後のバージョンまでサポートされてなかった時代のことだね。" userName="j16sdiz" createdAt="2025/06/27 10:39:12" color="">}}




{{<matomeQuote body="JSLTっていうのもあるよ。JSONを別のJSONに変えたい時に便利かも。<br>https://github.com/schibsted/jslt" userName="ako" createdAt="2025/06/27 13:50:22" color="#ff33a1">}}




{{<matomeQuote body="XSLTは簡単じゃないよね。変なPrologみたいで学習曲線が急だよ。マスターすれば数独みたいに満足感あるけど、普通の人はもっと簡単な方法で済むから、一般的なビルド/テンプレート手法にはなりにくいかもね。それにXML自体そんなに皆に愛されてないし。" userName="larodi" createdAt="2025/06/27 16:54:32" color="">}}




{{<matomeQuote body="うーん、記憶が曖昧だけど、2005年頃にバックエンドでXMLファイルを処理してるのをよく見た気がするな。" userName="agumonkey" createdAt="2025/06/27 11:04:17" color="">}}




{{<matomeQuote body="XSLTは新しい規格もあるのに、1.0が主流なのは、2.0の実装にSaxon XSLTみたいな商用ライブラリが必要だからじゃないかな？ 2000年代にXSLTやってた時（今でも悪夢見るけど）1.0はほぼ使い物にならなくて、2.0が必要だったんだよね。今は3.0まであるらしいよ。<br>参考：https://en.wikipedia.org/wiki/Saxon_XSLT" userName="ChrisMarshallNY" createdAt="2025/06/27 15:03:46" color="#ff5733">}}




{{<matomeQuote body="みんなに愛されてるかってのは一つの要素だけど、特定の仕事にはXMLみたいに選択肢が少ない場合もあるよね。第一候補ではないけど、XMLが結構柔軟で有能なのを知ってるから全く候補から外すことはないかな。XSLTはもっと高レベルの抽象化が必要なのかもしれないね。" userName="j45" createdAt="2025/06/27 20:25:38" color="#ff5c5c">}}




{{<matomeQuote body="Saxonの商用版使ってる？高くないし、個人的には機能（新しい標準含む）とパフォーマンスを考えたら払う価値あると思うよ。昔の記憶だけど、賢い最適化をいくつかしてたはず。" userName="bux93" createdAt="2025/06/27 09:33:20" color="">}}




{{<matomeQuote body="＞XSLT 1.0 is still dominant<br>どうやって、どこで？2013年にまだXSLTをいっぱい使ってたけど、1.0はどこを見ても完全に死んでたぞ。SaxonはXSLT 2用が無料で優秀だった。俺は巨大ドキュメントも大量の小さいドキュメントも変換してたけど、パフォーマンス問題はゼロだったね。" userName="bambax" createdAt="2025/06/27 12:10:27" color="">}}




{{<matomeQuote body="今は”JSONが救世主”って感じだね。新しい奴がプロジェクトに来て、理由もなく全部XMLからJSONに変えたがるのを何度も見たよ。これって基本的に何も解決しないし、しばしば独自の問題を引き起こすだけなのに。俺はXMLそんな好きじゃないけど、設計問題のヒエラルキーではかなり低い方だと思うな。" userName="vjvjvjvjghv" createdAt="2025/06/27 18:14:28" color="">}}




{{<matomeQuote body="個人的には、かなり似てると思うよ。違いは狂気の規模だけだね。だって、大量のXML変換のパフォーマンスを向上させるはずだったハードウェアXMLアクセラレーターを業界はゴミにしたんだろ—あれって今のGPU/TPUクレイズじゃない？<br>https://en.wikipedia.org/wiki/XML_appliance<br>例えばこれとか：<br>https://www.serverwatch.com/hardware/power-up-xml-data-proce..." userName="homebrewer" createdAt="2025/06/27 15:18:04" color="#ff5733">}}




{{<matomeQuote body="たぶん、見た目を良くしてJSONサポートが必要なんだろうね。いつかregexとかjqレベルに簡潔で、そこそこ短く記述的で、任意のツリーを別のツリーに変換できる何かが登場すると思う。XSLTのアイデアは天才的だけど、その本質はXPathで、それが可能にしてるんだ。XPathがCSS Selectorsに進化して、それ自体で役に立ってるのを見てきたでしょ。だから変換には二つの側面がある：<br> - selection - ツリーのどの部分がマッチするか指定する<br> - transformation - 新しいツリーを構築する<br>最初の部分には確立されたアプローチがあるけど、変換については、たぶんXSLTだけが”一般的に受け入れられてる”って定義に当てはまる唯一のものだね。でもjqでも変換は可能だって議論できるけど、あの過度に設計された構文は全然好きじゃないな。個人的には、変換構文のチャンピオンはまだ決まってないと思う。2025年になってもXSLTが多かれ少なかれ王様だってのは、XMLがもはや普通の選択肢じゃないのに、って考えると面白いよね。" userName="larodi" createdAt="2025/06/28 06:01:41" color="#785bff">}}




{{<matomeQuote body="ちょうど別のコメントでこれを貼ったとこだよ：https://github.com/Juniper/libslax/wiki/Intro" userName="bokchoi" createdAt="2025/06/27 18:49:32" color="">}}




{{<matomeQuote body="- ブラウザはXSLT (1.0) プロセッサだよ。<br>- Xee: https://github.com/Paligo/xee<br>- xrust: https://docs.rs/xrust/latest/xrust/xslt/<br>- XJSLT (XSLTをJSにコンパイル): https://github.com/egh/xjslt<br>XeeはWIP（進行中）だと思うし、xrustとXJSLTの成熟度は知らないな。" userName="jraph" createdAt="2025/06/27 15:40:40" color="#ff33a1">}}




{{<matomeQuote body="XMLの唯一の問題はそのマークアップの冗長さだね。それ以外は、YAMLとかJSONの奇妙な癖がない、データを構造化するいい方法だよ。" userName="SoftTalker" createdAt="2025/06/27 19:05:40" color="">}}




{{<matomeQuote body="それって、あのライブラリの上でか、バグまでそのまま真似しないと文字通り実装できないって仕様（WebQSLがある特定のSQLiteバージョンなしじゃ実装不可能だったみたいに）なの？それともSaxon XSLTが単にその仕様の唯一の実装なの？" userName="dragonwriter" createdAt="2025/06/27 15:24:03" color="">}}




{{<matomeQuote body="JSONを別のJSON構造に変換するだけなら、もっといい代替手段って何？" userName="ako" createdAt="2025/06/27 17:42:10" color="">}}




{{<matomeQuote body="昔のブラウザ inconsistent のせいで JS 使ったけど、今はブラウザも標準化してきてるし、実は古いページ単位リロードの方が速くてメモリも食わないんじゃない？最近のレガシーシステム移行で実感したんだ。<br>インターネットは速くなったし、スマホメモリも多いけど、結局バックエンドは CRUD ばっかだもんね。" userName="p0w3n3d" createdAt="2025/06/27 07:12:22" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AJAX は速くするためじゃなくて、web documents から web applications へのパラダイムシフトのためだよ。simple なサイトなら全ページリロードでいいけど、web applications ではありえない。<br>HNみたい simple なとこならうまくいくけどね。" userName="ozim" createdAt="2025/06/27 09:30:46" color="#ff5c5c">}}




{{<matomeQuote body="全ページリロードとかフレームとかあったけど、今は fancy な JS でフレームみたいなの作ってるよね。昔のやり方が実は正しかったんじゃね？って原始人 grug は思ったよ。<br>https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/..." userName="alganet" createdAt="2025/06/27 13:47:43" color="">}}




{{<matomeQuote body="昔の classic frames は正直ダメだったね。各フレームが完全に独立したブラウザエンジンみたいで、ほとんどの場合それが欲しかったものじゃない。ヘッダーとか sidebar とかは従属的であるべきだし、ブックマークや履歴もおかしくなるんだよ。" userName="kbolino" createdAt="2025/06/27 15:03:19" color="">}}




{{<matomeQuote body="34359のタイムライン、ちょっと違うと思うな。JS は標準化じゃなくて最初からインタラクティビティのためだったし、CSSも結構 inconsistent だったよ。jQuery が出てきてからようやくブラウザ inconsistent がマシになった感じかな。<br>俺の記憶違いかもだけど。" userName="viraptor" createdAt="2025/06/27 07:53:51" color="#38d3d3">}}




{{<matomeQuote body="classic frames がダメって言うけど、メニューとかナビゲーションで使う分には便利だったじゃん。独立してるかどうかとか関係ないし、実際は他のフレームを操作するために使うんだよ。<br>速くて軽量だったしね。" userName="bmacho" createdAt="2025/06/27 15:23:26" color="">}}




{{<matomeQuote body="frameset page だと、HistoryとかBookmarksとかBack buttonがちゃんと動かないんだよね。リンク共有とか incoming links もね。<br>コンセプトはいいんだけど、実装が悪いんだよ。" userName="kbolino" createdAt="2025/06/27 15:36:09" color="">}}




{{<matomeQuote body="俺にとっては、JQuery がブラウザ inconsistent を解決してくれたんだ。JQuery 使えばどのブラウザでもコードが動いたんだよ。<br>これがたぶん2008年くらいかな。" userName="jonwinstanley" createdAt="2025/06/27 08:03:06" color="">}}




{{<matomeQuote body="サーバー生成ページが速いって言うけど、高遅延インターネット接続だとそうでもないよ。<br>この記事見てみて。https://news.ycombinator.com/item?id=44326816" userName="em-bee" createdAt="2025/06/27 07:41:02" color="">}}




{{<matomeQuote body="ただし、遅延が大きい回線の場合、ブラウザでほとんどのビジネスロジックが実行される「シッククライアント」のjsonアプリがメリットを発揮するのは、Google Docsみたいに一部だけだよ。アパート検索アプリとかは違うと思うな。<br>――編集――<br>ところで2005年に、UIの変更を全部サーバーに送るPRADOっていうすごく面白いPHPフレームワークを使ってプログラミングしてたんだ。あれは遅かったしサーバーにも負担がかかったね。絶対に行くべきじゃなかった方向だったな…" userName="p0w3n3d" createdAt="2025/06/27 07:45:14" color="">}}




{{<matomeQuote body="＞履歴がおかしい<br>＞ブックマークがおかしい ――これはリンク共有や外部リンクにも当てはまるね<br>＞戻るボタンがおかしい<br>これ、多くのJSウェブページにも当てはまることだよ。pushState/popStateはフレームが人気なくなった何年も後に出てきたんだ。これらの問題はフレームが廃れた理由とは関係ない。まあ落ち着けって。別に今フレームを使うべきだって言ってるんじゃないよ。当時はシンプルで良いツールだったって言ってるだけ。" userName="alganet" createdAt="2025/06/27 16:16:06" color="">}}




{{<matomeQuote body="フレームは決して良くなかったよ。いつもこれらの問題で壊れてたんだ。一部のサイトでは大した問題じゃなかったけど、POSIX specsとかJavadocsみたいにフレームを使った多くの場所は、即座に個人的に使う以外は最悪だった。デザイナーがスクロールバーを嫌ったから非推奨になったんじゃない（彼らは嫌ってるしそれも最悪だけど、それは別の話）。そして皮肉にも、フレームの問題を直す一番いい方法はJavaScriptを使うことなんだ。" userName="kbolino" createdAt="2025/06/27 16:27:25" color="">}}




{{<matomeQuote body="＞決して良くなかった<br>十分良かったよ。<br>＞一部のサイトでは大した問題じゃなかった<br>まさに僕の言いたいことさ。<br>＞POSIX specs or Javadocs<br>へぇ、僕には問題なく使えてるよ。<br>＞フレームの問題を直す一番いい方法はJavaScriptを使うこと。<br>ほんの少しのJavaScriptでいいんだ。主にメインフレームの状態をアドレスバーにプロキシするんだよ。仮想DOM、babel、Reactなんかはいらない。<br>――もう一度言うけど、僕は今フレームを使うことを擁護してるわけじゃない。多くのウェブサイトは「左ナビ、中央コンテンツ」っていう全体レイアウトに従ってて、ナビは固定されてコンテンツが更新されるだろ。フレームは壊れてたけど、正しい方向だったんだ。君は壊れてた点を重箱の隅つつくように見てるだけで、全体像を見てないね。" userName="alganet" createdAt="2025/06/27 16:51:21" color="">}}




{{<matomeQuote body="オールドガイだけど同意。ウェブ開発とJavaScriptの実際の歴史は全然違ったんだ。HTMLが最初で、90年代はCGIとかPerl/Cでサーバーサイドをやってた。JSはパーティートリック程度だったよ。その後PHP, ASP, JSP, ColdFusion, VBScriptとか色々出てきて、サーバーサイドが主流だったんだ。FacebookもPHPで、CSSも普及が遅かった。JSがUIに使われ始めて本格化したのは2000年代後半で、v8とかが大きかったんだ。JSが大きくなった後、フレームワーク乱立やクライアントサイド過多で開発から離れた人も多かった。JSが離陸したのは2007年～2011年頃だよ。" userName="middleagedman" createdAt="2025/06/27 09:22:07" color="#45d325">}}




{{<matomeQuote body="方向性は正しかったとしても、やり方がひどいとアイデアをダメにすることもある。フレームは最悪で、良くならなかった。これと他の問題がAJAXやSPA、JSフレームワークを生んだんだ。今の状況になった大きな理由の一つは、ウェブ標準を作ってた人たちがXHTMLや「セマンティックウェブ」（これも方向性は正しかったけど、やり方がひどかった！）とか他のくだらないことに10年くらい費やして、現状を改善しなかったからだ。だから先祖返りするのはありだし、よくそうすべきだけど、責任の所在を探ったり歴史を辿ったりするなら、ちゃんとやらなきゃね。" userName="kbolino" createdAt="2025/06/27 17:09:55" color="">}}




{{<matomeQuote body="君の歴史認識は間違ってるし、違う時代やブラウザ標準と他の取り組みを混ぜてるよ。フレームの次は間違った使い方のテーブル時代で、これはひどかった。そのテーブル時代がウェブ標準の刷新を生んだんだ。これはセマンティックウェブとは別だよ。テーブル時代はjQuery時代になり、ブラウザ標準はマシになったけどベンダーは違った。jQuery時代はJSフレームワーク（backbone, ember, angular, reactとか）の台頭で終わったんだ。フレームとSPAの間には少なくとも2世代ある。フレームのアイデアへの悪評は消えて、今日のウェブサイトもその使い方に似てる。実装が違うだけさ。" userName="alganet" createdAt="2025/06/27 17:50:14" color="#ff5733">}}




{{<matomeQuote body="うん、SPAにはフレームだけじゃ足りないね、JavaScriptなしでは。そして、履歴、URL、ブックマークとか全部をJavaScriptで扱うなら、フレームなしでdivを使えばいいだけだ。" userName="bmacho" createdAt="2025/06/27 15:46:18" color="">}}




{{<matomeQuote body="アパート検索アプリとかはそうじゃないかな？<br>これはいい例じゃないよ。今は見つけられないんだけど、不動産アプリの話があってね。不動産屋がお客さんと一緒に家を見て回る時に使ってたんだけど、外だとネットの接続が悪くて、新しい物件データや写真を読み込むのが大変だったんだ。全部をプリロードして時々アップデートするようにフロントエンドフレームワークを使うまで、アプリは使い物にならなかったんだよ。遅延が大きい接続はどんなサイトでも影響する。このHacker Newsでさえ、遅延が大きいと読むのが大変で、新しいコメントがバックグラウンドで読み込まれるようになったら改善するだろうね。問題は思ってるより早く忍び寄ってくるんだ。" userName="em-bee" createdAt="2025/06/27 08:00:18" color="#785bff">}}




{{<matomeQuote body="それほど最高じゃなかった点は、大量のFlash、Realplayer、その他のプラグインが必要だったことだね。" userName="nasduia" createdAt="2025/06/27 10:41:27" color="">}}




{{<matomeQuote body="jQueryより前のPrototype.jsはRoRの初期AJAXサポートの一部で、IE 5から7あたりのブラウザ間のデータ取得の不整合を直してたんだ。<br>XMLHttpRequestはIE 7からネイティブで使えるようになったけど、それ以前はActiveXだったんだよ。他のブラウザは最初から対応してたけどね。<br>記憶は曖昧だけど、セレクタとかも追加されてたし、その上にアニメーションとかを追加するscript.aculo.usもあった。<br>jQueryはそれらを全部あっという間に取って代わったけどね。" userName="Cthulhu_" createdAt="2025/06/27 09:22:07" color="">}}




{{<matomeQuote body="ページのプリフェッチはフロントエンドフレームワークいらないよ。<br>ページの全ての、または特定のアンカーリンクをプリロードするシンプルなスクリプトがあればいいだけだし、Service Workerとサイトマニフェストでもっと凝って、現在のページにリンクされてないページもプリロードできるんだ。" userName="_heimdall" createdAt="2025/06/27 11:02:48" color="">}}




{{<matomeQuote body="たぶん2005年か2002年かな。JSRSを使ってたよ。HTTP 204/No Contentを返すと、ブラウザがページをリフレッシュしたりロードしたりしないんだ。<br>スケジュールタスクの開始/一時停止ボタンみたいな、小さなインタラクティブなことだけだけどね。プログレスバーとか。<br>でもさ、俺の意見だけど、適切な進歩が15年くらい失われたと思うよ。<br>ネットワークはコンピュータだっていうのは実現したし、SUN/JEEモデルは素晴らしいよ。<br>ただ、独占が progress とより良い standards を阻害してるだけ。<br>Standards は pretty much dead で、全てが application layer にある。<br>とはいえ… XSLTは嫌いだよ、20年近く触ってないけどね。俺がいたプロジェクトには、デザイナー兼XSLTの達人がいたんだ。彼は何でもできたけどね。<br>XPathは結構いいと思うけど。" userName="jbverschoor" createdAt="2025/06/27 08:10:45" color="">}}




{{<matomeQuote body="ほとんど violently agreement してる気がするな。<br>このスレッドの original context で俺が理解したフレームの key point は、実際に変更される content だけをロードできたことだ。<br>だから table-layout era を考慮しても perspective は変わらないね。フレームはひどすぎたから、AJAXが登場するまでは、少なくとも full-page-loads に後退することをウェブサイトは厭わなかったんだ—もっとも、それは div-layout era の隆盛（まだ続いてるけど）とも coincide してる。<br>rectilinear grid での部分ページ reloading の concept は alive and well だという点には wholeheartedly agree するよ。<br>JavaScript と CSS でそれをするのが、俺が理解する SPA の whole premise だし、それらの details が今とフレームの全盛期の違いの key だ。<br>でも、フレームの実装と ossified の幻滅を反映して、その二つの era の間には full-page-loading が norm だった時期もあった。<br>W3C (*) は、数年間かけて複数のものに取り組んだけど、ほとんどが pan out しなかった。厳しすぎるかもしれないけど、多くの working groups が practice と industry からあまりにも長く disconnected してしまったように感じる。<br>おそらくそれはウェブ standards の〜10年間の stagnation とは tangential だったかもしれないけど、それは俺の criticism の point を変えないね。<br>* = Ecma もこれに part in してる。JavaScript は W3C じゃなくて彼らによって standardized されたから（理由はともあれ）、彼らもほぼ同じ期間、la-la land に行ってしまったんだ。" userName="kbolino" createdAt="2025/06/27 18:16:38" color="#ff5733">}}




{{<matomeQuote body="これは SPA とは全然関係ないよ。<br>sibling comment でリンクされてる POSIX spec を見てみて。<br>あるいは classic な JavaDocs でもいい。今 java.util.ArrayList の doc を見てるんだ。<br>ブラウザの URL バーからのリンクはこれ：https://docs.oracle.com/javase/8/docs/api/<br>でも君は java.util.ArrayList の doc に行ったわけじゃない、starting page に行ったんだよね。<br>分かった、ArrayList の doc に直接リンクしてあげるよ。”view frame source” して URL を grab しなきゃならなかったんだ：https://docs.oracle.com/javase/8/docs/api/java/util/ArrayLis...<br>分かった、でも他のフレームは全然見えないだろ？ そして俺はあのフレームの一つを java.util クラスに向けてたんだ。だからこれらのリンクのどれも、俺が見たものを見せてくれない。<br>それに history を見ても、俺が実際見たものに対応する entry はないんだ。各フレームの separate entries はあるけど、frameset page を正しい state でロードするものはない。<br>これらは strongly hyperlinked reference document だ。HTML の classic な使い方だよ。JavaScript も CSS も必要ない。" userName="kbolino" createdAt="2025/06/27 15:54:38" color="">}}




{{<matomeQuote body="これって exactly what I wrote だろ？でも言い直させて。<br>フレームだけじゃ SPA には不十分で、状態を保持できない、そのために JavaScript/dynamic webserver が必要なんだ。<br>＞Ok, fine, I’ll link you directly to the ArrayList docs, for which I had to ”view frame source” and grab the URL:<br>「frames」リンクを右クリックして URL をコピーすればよかっただけだよ。https://docs.oracle.com/javase/8/docs/api/index.html?java/ut... 。彼らは URL の search params に基づいてナビゲートするために JavaScript を使ってるんだ。<br>それは great じゃないし、ナビゲートするにつれて URL を update すべきだね。多分、そのために PR を送れるんじゃない？（それに左側の boxes の state も変えるために。）<br>それに browser history handling は本当に messy で、get right するのが難しいんだ、フレームに関係なくね。<br>＞And if I look in my history, there is no entry that corresponds to what I actually saw.<br>JavaScript で counter を update する「+1」ボタンを書いたら、君の history には counter の actual states に対応する entry はないだろ？ それが JavaScript の fundamental problem だとは思わないけど？" userName="bmacho" createdAt="2025/06/27 16:14:53" color="">}}




{{<matomeQuote body="scripts は何もいらないはずだよ<br>https://en.wikipedia.org/wiki/Link_prefetching<br>client 側で強制することもできるんだ、例えば https://en.wikipedia.org/wiki/Web_accelerator を使ってね。" userName="chriswarbo" createdAt="2025/06/27 13:08:59" color="">}}




{{<matomeQuote body="＞native JS `XMLHttpRequest` was only available from IE 7 onwards, before that it was some ActiveX thing.<br>IE6でも使えたのはほぼ確かだよ。たとえそうじゃなくても、hidden iframe を使って、メインページとインタラクトする JavaScript を埋め込んだページを call することで emulate できたんだ。<br>軽量で素敵な animation のために mootools を使った fond memory は今でもあるけど、dojo の less fond な memory もね。" userName="arkh" createdAt="2025/06/27 09:38:34" color="">}}




{{<matomeQuote body="XMLとかXSLTが00年代のエンタープライズでダメになったせいで、成熟してたのにJSONに取って代わられたの残念だわ。<br>昔はPHPとかで滅茶苦茶なXSLT使ってたし、今でもブラウザで直接XSLTやるのって互換性の問題とかで不安なんだよなー。" userName="CiaranMcNulty" createdAt="2025/06/27 06:41:48" color="#45d325">}}




{{<matomeQuote body="「84年経ったみたい」って感じだけど、XMLにあった標準化団体とかスキーマとかがJSONにはなくて、追いつくのに十年もかかった気がするわ。<br>最後にXML使ったのはEXIっていうバイナリ圧縮技術。<br>protobufとかが人気だけど、XMLが残ってたら互換性あって良かったかもね。protobuf/gRPCとJSONにはっきり壁があるし。" userName="Cthulhu_" createdAt="2025/06/27 09:25:55" color="#ff5733">}}




{{<matomeQuote body="EXI、ちょうど俺がやってるプロジェクトで使ってるわ！<br>マジで速くて小さいんだよなー。XMLのバイナリ表現。<br>XMLSchemaがあると結構圧縮できるんだ。<br>仕様書も読みやすくてエレガントだったぜ。https://www.w3.org/TR/exi/" userName="bokchoi" createdAt="2025/06/27 13:24:47" color="#785bff">}}




{{<matomeQuote body="XSLTのデータ変換能力ってマジ凄かったんだよな。<br>XMLを元に、CSVとかどんな形式にも変換できた。<br>XMLはテキストで20%帯域無駄にしてたけどOKだった。<br>ただ、XSLTのスタイルシート理解するのは頭おかしくなりそうだったわ。<br>意味もなくクソ複雑になり得るから、みんな嫌いなのわかる。" userName="sumtechguy" createdAt="2025/06/27 12:16:05" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="XMLはまあ良い。冗長だけどYAMLより正確で表現力あるし。<br>XPathもそこそこ。<br>XSLTだけはマジで狂ってるから燃えてなくなればいいと思う。" userName="rwmj" createdAt="2025/06/27 08:40:51" color="">}}




{{<matomeQuote body="XMLとかXSLTは使い道によるわ。<br>昔、銀行間のメッセージングで標準XMLにして、XSLTでクライアントに表示したり、受信システムに合わせてデータ変換してた。<br>XSLT使える人は経験豊富な開発者じゃなくても良かったし、修正も速かった。<br>教育本の出版社のデータ加工でもXMLとXSLTはすごく役立ったよ。" userName="cturner" createdAt="2025/06/27 11:38:37" color="#ff5c5c">}}




{{<matomeQuote body="コメント8とは逆の意見だなー。俺はXSLT好きだったよ。<br>理解に時間かかったけど、関数型プログラミングとか冪等性とかの概念を知るきっかけになったし。<br>XPathも最高！<br>問題はXML自体じゃなくて、データ正規化を知らない人がXMLでデータ公開しちゃったこと。<br>良いものもあったのに悪い記憶だけ残ってるね。" userName="tclancy" createdAt="2025/06/27 14:28:11" color="#38d3d3">}}




{{<matomeQuote body="ゲームのRimworldがXMLで設定、XPathでModdingしてるんだけど、これがめちゃくちゃ良いんだよ。データ変更を安定させるのに超優れてる組み合わせなのに、みんなXMLを古いって思ってるからか他で全然見ないんだよね。この用途ではマジで頑丈なシステムだよ。https://rimworldwiki.com/wiki/Modding_Tutorials/PatchOperati..." userName="kllrnohj" createdAt="2025/06/27 17:05:22" color="#785bff">}}




{{<matomeQuote body="00年代のエンタープライズXMLはひどかった、ってのはマジそうだね。XMLって元々SGMLをウェブ用にシンプルにしたやつで、ブラウザの表現力を進化させるはずだったんだ（SVGとMathMLしか残らなかったけど）。でもウェブブームでW3C（MS）が暴走してSOAPだのWS-*だの、XMLベースの言語（XSLTとか。元はSchemeだったってHNersには内緒ね、JavaScriptがJavaの名前を借りたみたいに、当時の狂気だよ）を作りまくったんだよね。" userName="tannhaeuser" createdAt="2025/06/27 12:45:14" color="#38d3d3">}}




{{<matomeQuote body="XPathはさ、クエリの全ての要素にいちいち名前空間を律儀につけないといけないのがイマイチだよね。" userName="codeulike" createdAt="2025/06/27 07:26:20" color="">}}




{{<matomeQuote body="え、それXPathには関係ないんじゃない？ドキュメントに名前空間があるなら、XPathはそれに合わせる必要があるんだよ。受け入れるか、ショートハンドを使わずに`local-name()`で明示的に無視するかだね。" userName="masklinn" createdAt="2025/06/27 08:26:54" color="">}}




{{<matomeQuote body="あー、「クエリを名前空間する」って言い方は間違ってたかもね。ただ言いたいのは、俺がXPathを使った時はいつも`/*bookstore/*book/*title`みたいにスッキリ書けなくて、`/*[name()=’bookstore’]/*[name()=’book’]/*[name()=’title’]`みたいなクソみたいな感じだったってこと。ファイルのタグ名でそのままマッチさせてくれないで、名前空間とかいう大抵の人が気にしてないものに縛られなきゃいけないのが嫌なんだよ。多くのXMLは名前空間なんて定義してないアドホックなものだしね。「やぁXPath、このXML文書のbookstore/book/titleタグを探してよ」「＊はぁはぁ＊ 旦那様、どの名前空間にいるか教えていただけないと、そんなタグを探すなんてとんでもございません。もしかして変態さんですか？」「あーもう、ちくしょう… ＊xpath name() syntaxをググる＊」って感じ。" userName="codeulike" createdAt="2025/06/27 10:41:42" color="">}}




{{<matomeQuote body="ファイル内のタグ名が「そのまま」ってのは実際は関係ないし、普通のXMLプロセッサが受け取る情報でもないよ。ファイルがデフォルト名前空間（xmlns）を使ってるなら、その要素は名前空間を持ってるから、XMLを処理するものは名前空間を適切に扱うか、明示的に無視する必要があるんだ。もし要素が名前空間を持ってないなら、XPathはプレフィックスを要求しないから、`//bookstore/book/title`って書けばいいだけだよ。" userName="masklinn" createdAt="2025/06/27 12:22:57" color="#ff5c5c">}}




{{<matomeQuote body="名前空間がないタグに対してそんなこと（プレフィックスが必要だったこと）は経験ないな。君が抱えてる問題は、タグが名前空間を持ってるってことじゃないの？`my:book`と`your:book`は違うものだし、普通は両方に間違ってマッチさせたくないでしょ。それらを区別するのが名前空間の全体的なポイントだよ。他のプログラミング言語と同じようにね。" userName="ndriscoll" createdAt="2025/06/27 12:14:35" color="">}}




{{<matomeQuote body="新しいバージョンのXPathとXSLTだと、`*:bookstore/*:book/*:title`みたいに書けるようになったんだよ。" userName="rhdunn" createdAt="2025/06/27 11:57:02" color="#ff5733">}}




{{<matomeQuote body="プログラムでXMLを扱うのはマジでそんなに悪くないってのは同意できるよ。XPathっていう整ったクエリ構文もあるし、DOM APIも普通に動く。ただ、誰かがXML名前空間を使おうと決めた瞬間、何もかもが一気に醜くなるんだよね。なんでそんなに不快なのかうまく説明できないけど、とにかく全てが超冗長になるし、APIには色々な余計な状態が必要になるんだよ。" userName="somat" createdAt="2025/06/28 03:39:06" color="">}}




{{<matomeQuote body="XSLTは全然好きじゃなかったな。なんかいつも無理やり使ってる感じ（四角い穴に丸い釘を入れるみたい）だった。でもXML自体は懐かしいね。知られてなかった超強力な機能がマジでたくさんあったのに、あんまり使われなかったんだ。XSDはドメインモデリングに信じられないくらい良かったし、ファイルを組み合わせるincludeシステムもあった。あと、mixed contentなんて誰も上手く使わなかったけど、あれはめちゃくちゃ強力な機能だったんだよ。構造化されてないコンテンツの中に構造化されたコンテンツを埋め込めるんだから。" userName="tootie" createdAt="2025/06/27 19:59:09" color="">}}




{{<matomeQuote body="元々のアイデアは良かったんだよね。<br>クライアント側でモデルからビューへの変換だけをやって、サーバーはモデルを提供するっていう。<br>ただ、XSLTがそれを実装するのに使われたのがダメだった。<br>プログラミング言語の構文にXMLを使うのがとにかく使いにくいから。<br>もしXSLTの最初のバージョンがXQueryみたいだったら、もっとずっと人気が出たと思うよ。" userName="int_19h" createdAt="2025/06/27 20:07:16" color="">}}




{{<matomeQuote body="うん、そのアイデアは理にかなってるね。<br>使えるようになるまで何年もかかって、結局プリプロセッサまで必要になったCSSよりは、よっぽど理にかなってたんじゃないかな。" userName="tootie" createdAt="2025/06/27 20:51:31" color="">}}




{{<matomeQuote body="2003年の「The Art of Unix Programming」では、専用のテキスト形式とそれを解析するパーサーを書くことが推奨されてて、手でXMLを書くのは戦争犯罪リストに入ってたんだ。<br>それからシンタックスハイライトや補完、自動整形のおかげで手間が減ったし、寛容なパーサー（ブラウザが主な例）は悪い評判になった。<br>MarkdownやYamlは、今のモダンなエディタがなくても存在したのかな？" userName="aitchnyu" createdAt="2025/06/27 09:36:25" color="">}}




{{<matomeQuote body="でも、XMLって実際インターネットで転送するにはもっと悪いフォーマットなんだよ。<br>肥大化してるし、帯域をより多く消費するからね。" userName="maxloh" createdAt="2025/06/27 08:06:58" color="">}}




{{<matomeQuote body="XMLはその意図された用途には素晴らしいフォーマットだよ。<br>XMLはマークアップ言語システムで、JSONはデータフォーマット。<br>ウェブページみたいなものはXMLが得意で、設定ファイルみたいなものはJSONが得意なんだ。<br>ストリーム処理で解析するならXML、メモリに読み込んでキーを探すならJSONって感じ。" userName="JimDabell" createdAt="2025/06/27 08:54:00" color="#ff33a1">}}




{{<matomeQuote body="圧縮を全く使わない場合に限るんじゃない？" userName="rwmj" createdAt="2025/06/27 08:41:21" color="">}}




{{<matomeQuote body="EXIをチェックしてみてよ。<br>XMLストリームをバイナリエンコードに圧縮して、すごく小さくて速いんだ。<br>これ見て：https://www.w3.org/TR/exi/" userName="bokchoi" createdAt="2025/06/27 13:27:25" color="">}}




{{<matomeQuote body="最近は、フィードのスタイルにXSLTを使ってるんだ。<br>例えばこれとか：<br>https://susam.net/feed.xml<br>https://susam.net/feed.xsl" userName="susam" createdAt="2025/06/27 06:55:42" color="">}}




{{<matomeQuote body="これを見ると、ブログってただのRSSフィードで良くない？って思っちゃうね。" userName="pacifika" createdAt="2025/06/27 11:46:29" color="">}}




{{<matomeQuote body="俺、自分の個人サイトをXSLTで何回か作ってみて、どこまでいけるか試したことがあるんだ。<br>驚くほど上手くいくんだけど、唯一の問題はFirefoxにある何十年も前のバグで、XMLドキュメントからHTMLコンテンツを直接レンダリングできないことだったね。<br>つまり、ブログ記事のコンテンツがcdata経由のHTMLだと、Firefoxがraw cdataテキストをレンダリングする代わりに、そのテキストをinnerHTMLとしてレンダリングさせる簡単なスクリプトが必要だった。" userName="_heimdall" createdAt="2025/06/27 12:06:15" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
