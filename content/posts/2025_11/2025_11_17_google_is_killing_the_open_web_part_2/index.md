+++
date = '2025-11-17T00:00:00'
months = '2025/11'
draft = false
title = 'Googleがオープンウェブを殺す？またもや論争が勃発！'
tags = ["Web開発", "Google", "Web標準", "ブラウザ", "テクノロジー"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Googleがオープンウェブを殺す？またもや論争が勃発！

引用元：[https://news.ycombinator.com/item?id=45954560](https://news.ycombinator.com/item?id=45954560)




{{<matomeQuote body="ブラウザからXSLTを削除するのは、マジで遅すぎたね。元libxsltメンテナーの俺が言うんだから間違いない。もっと気になるのは、ChromiumがRustベースのXMLパーサーに切り替えようとしてる件。xml-rsはXMLの一部しか実装してないから、Googleは標準準拠のXMLサポートすらなくそうとしてるみたいだ。これはかなり心配なことだよ。" userName="nwellnhof" createdAt="2025/11/17 16:33:27" color="#38d3d3">}}




{{<matomeQuote body="「XSLTの削除は遅すぎた」「Googleが標準準拠のXMLサポートをなくそうとしてる」って、これ全部同じ話じゃん。「不便なら排除」ってのは、まさにオーナーがやること。ウェブの文化は「サイト運営者がオーナーで、ブラウザはサーバント」だったはず。C言語の依存関係にあるWASM層の維持が不便だからって排除するのは、ウェブを偉大にしたサーバント精神に反してるよ。" userName="svieira" createdAt="2025/11/17 16:54:54" color="#38d3d3">}}




{{<matomeQuote body="Googleが、”市場シェアがあるから”って標準を無視するInternet Explorer 5.1みたいな振る舞いをしてるのが興味深いね。昔の「`＜!--[if IE 6]＞＜script src=”fix-ie6.js”＞＜/script＞＜![endif]--＞`」を思い出すよ。" userName="xmcp123" createdAt="2025/11/17 16:37:48" color="#ff33a1">}}




{{<matomeQuote body="その”サーバント指向”の考え方はどこから来たの？ブラウザ開発者が、自分たちのソフトに入れるコードについて主体性がない、なんて見なされてたウェブの時代、俺は思い出せないな。" userName="akerl_" createdAt="2025/11/17 17:05:45" color="">}}




{{<matomeQuote body="標準化団体がMozillaとSafariの支持を得てXSLTを非推奨にしてるんだよ（提案したのはMozillaが先）。なんでそこから”Googleが標準を無視してる”って話になるのか、俺には理解できないね。" userName="granzymes" createdAt="2025/11/17 16:47:16" color="#45d325">}}




{{<matomeQuote body="「ウェブの文化はサイト運営者がオーナーで、ブラウザはサーバントだった」ってのは歴史の書き換えだろ。初期のNCSA MosaicはOpen Source Softwareじゃなかったし、Netscape Navigatorは有料だった。Microsoftはブラウザのバンドルで問題になったんだ。Chromiumみたいな真のOpen Source Browserがある今の方が、よっぽどオープンウェブに近いと思うけどね。" userName="Aurornis" createdAt="2025/11/17 17:51:01" color="#45d325">}}




{{<matomeQuote body="標準化団体って言っても、GoogleとGoogleのエンジンコードを使ってる会社ばっかじゃん。" userName="echelon" createdAt="2025/11/17 17:45:55" color="">}}




{{<matomeQuote body="最近だと”smooshgate”って例があるよ。古いMootoolsを使ってるサイトを壊すのはウェブを進歩させないってことで、`Array.prototype.flatten`の代わりに`Array.prototype.flat`になったんだ。`https://news.ycombinator.com/item?id=17141024`<br>『サーバントであること』は『主体性がない』ってことじゃなく、『誰のために主体性を発揮するか』ってこと。ツールには主体性ないけど、サーバントにはあるんだ。" userName="svieira" createdAt="2025/11/17 20:45:04" color="#ff33a1">}}




{{<matomeQuote body="`https://issues.chromium.org/issues/451401343`を見ると、xml-rsリポジトリで必要な作業が進んでるし、チームは標準準拠に関わる問題に取り組んでるみたいだね。ちなみに俺はChromeの開発者で、過去にlibxml2/libxsltも触ったことあるけど、この件には直接関わってないよ。" userName="zetafunction" createdAt="2025/11/17 17:16:20" color="#38d3d3">}}




{{<matomeQuote body="MozillaとSafari以外のブラウザエンジンってことだろ？この2つが競合するブラウザエンジンだろ？Chromiumベースのブラウザだらけの部屋ってわけじゃないんだぜ。" userName="dewey" createdAt="2025/11/17 17:54:10" color="">}}




{{<matomeQuote body="深読みしすぎだと思うな。まず、それはJavaScriptの提案で、管理してるのはTC39だろ。それに、バグが見つかってロールアウトが調整された、ごく普通のドラフト提案だったんだよ。もしそれが「奉仕者志向」って言うなら、99％のソフトウェアプロジェクトがそうだよ。" userName="akerl_" createdAt="2025/11/17 20:50:00" color="#38d3d3">}}




{{<matomeQuote body="「バグ」が「たった1つのウェブサイトが壊れる」ことだったのに、今回は多くのウェブサイトが壊れる（USBサポートをなくすよりも多くだ）ことが許容されてる。TC39の文化は、昔はウェブを使うツールを開発する人たちの文化だったんだ（Space Jamのウェブサイトを壊すな、みたいなね）。" userName="svieira" createdAt="2025/11/18 19:35:18" color="#45d325">}}




{{<matomeQuote body="おそらくMozillaが最初にXSLTを推進しなかったら、あと10年かそれ以上は残ってただろうな。彼らの役員会は、「Foundation + Corporation」という組み合わせから残ったわずかな金を吸い上げて、毎年Firefox開発チームを削減してる。役員メンバーのために数百万ドルの追加収入があるなら、ウェブ標準の一部を維持したくないんだろうよ。" userName="andrewl-hn" createdAt="2025/11/17 17:07:46" color="">}}




{{<matomeQuote body="ChromiumのコミットはGoogleの開発者プールが管理してるから、誰でも貢献したりプロジェクトの方向性を決めたりできる意味では「オープン」じゃないんだ。3200万行ものコードは、何か大きく違うブラウザアーキテクチャを計画するなら、ビジネスプランや多額の資金がないと維持するのが現実的に難しすぎる。世の中にはNextcloudやSyncthingの各種フォークみたいに、完璧にフォーク可能で維持できるものはたくさんあるけど、Chromiumはソフトウェアエコシステムの健全性やオープンさのテストとしては、フォークして非凡な目的のために維持するのに現実的に何が必要かを考えると、あまりポジティブな信号じゃないと思うな。" userName="glenstein" createdAt="2025/11/17 17:57:59" color="#ff5733">}}




{{<matomeQuote body="この比較はよく分からないな。XSLTの非推奨化はGoogle以外の支持もあるし。" userName="Aurornis" createdAt="2025/11/17 16:50:01" color="">}}




{{<matomeQuote body="WhatWGの裏にはXMLに関する長い歴史があるんだ。WhatWGはブラウザが実装・維持するつもりの仕様を維持することに焦点を当ててる。Chrome、Firefox、SafariがXSLTの削除に合意したら、それがWhatWGの仕様削除を効果的に決定するんだ。誰が最初に削除を提案したかにはあまり重きを置かないほうがいい。ウェブの仕様に関してはかなり狭い世界だから、議論はベンダー間で始まってから、どれかが提案することになるのが一般的だよ。" userName="_heimdall" createdAt="2025/11/17 17:48:07" color="#38d3d3">}}




{{<matomeQuote body="Safariはそうだけどさ、Mozillaは？本当に競合してるって言えるの？" userName="Forgeties79" createdAt="2025/11/17 18:23:59" color="">}}




{{<matomeQuote body="ウェブはブラウザじゃなくてプロトコルだったんだぜ。" userName="croes" createdAt="2025/11/17 18:14:57" color="">}}




{{<matomeQuote body="それはただの的外れなイデオロギー的思考だよ。Googleが何かすると、自動的に悪いことだと決めつけて、Googleが悪だからそうなるんだって決めつけるんだ。Hacker Newsは歴史的にそういうドグマとは比較的無縁だったけど、ここでも時代は変わってるみたいだな。" userName="amarant" createdAt="2025/11/17 17:53:51" color="">}}




{{<matomeQuote body="待って。DOCTYPEをサポートするXML parserを使ってるの？XSLTが古くてexploitだらけなのはわかるけど、DOCTYPEだってそうじゃん。<br>Billion Laughs attack（他のvectorもだけど）の典型的な例だよ。" userName="Ygg2" createdAt="2025/11/17 17:20:57" color="#ff33a1">}}




{{<matomeQuote body="W3Cのポリシー（https://www.w3.org/TR/html-design-principles/#priority-of-co...）もGoogleの非推奨ポリシー（https://docs.google.com/document/d/1RC-pBBvsazYfCNNUSkPqAVpS...）もユーザー最優先って言ってるのに、実際はbrowser implementerの都合ばっかりじゃん。<br>Googleは0.0001%のPageVisitsでも影響あるなら軽視できないって言ってるけどね！" userName="troupo" createdAt="2025/11/17 22:20:46" color="#785bff">}}




{{<matomeQuote body="browserが”servant-oriented”だった時代なんて想像できないね。<br>俺が思いつくすべてのbrowserは、何らかのデカい会社のデカい戦略に従ってるよ。" userName="etchalon" createdAt="2025/11/17 17:09:52" color="">}}




{{<matomeQuote body="Mozillaはfree marketで存在できることを証明してる、ちゃんと競争してるよ。<br>俺が心配なのはSafariだね。Appleのmonopoly controlがなければ、Safariは死んだengineになること間違いなし。WebKitはLinuxとWindowsでBlinkとGeckoに対抗できるほどsupportされてないから、3つの中で一番expendableなengineだよ。" userName="bigyabai" createdAt="2025/11/17 18:49:51" color="">}}




{{<matomeQuote body="それが単一のwebsiteだってどこで見たの？Mootoolsはたくさんのwebsiteで使われてるJavaScript libraryだよ。<br>それに、Flashを削除した時も tons of sitesが壊れたけど、Flashが悪夢だったから結局やったじゃん。" userName="akerl_" createdAt="2025/11/18 20:48:05" color="#ff5c5c">}}




{{<matomeQuote body="もしremoveを最初に提案した人に重きを置かないって言うならさ、他の奴がGoogleにすべての重きを置くのはおかしいだろ。<br>Googleは最初に提案すらしてないのに。" userName="NewsaHackO" createdAt="2025/11/17 18:19:02" color="">}}




{{<matomeQuote body="Mozillaのboardは基本的にGoogleのyes-peopleだよ。<br>Mozillaはわざとrudderlessになるように仕組まれてるって確信してる。C-suiteは高額なsalaryを受け取って、Dumbでmission-orthogonalなobjectiveを承認して、Mozilla自体がGoogleを脅かさないように無力化してるんだね。<br>MozillaはGoogleのantitrust litigation spongeだよ。でもdumbでobedientに保たれてる。GoogleはMozillaが実際に脅威になることを望んでないんだ。<br>もしMozillaが健全なside businessを望んでたなら、PocketとかXR/VRとかAIじゃなくて、MDNとRustを中心にDevEx platformを構築すべきだった。彼らのcore web missionとsynergizeしたはずなのにね。あの人たちはもうlet goされちゃったけど。" userName="echelon" createdAt="2025/11/17 17:47:23" color="#785bff">}}




{{<matomeQuote body="“Chromium commitsはGoogle developerのpoolにcontrolされてるから、誰でもcontributeしたりprojectのdirectionをsteerしたりできるという意味ではopenじゃない”って言うけどさ。<br>このcriteriaだと、どんなsoftwareもopen sourceじゃなくなっちゃうよ。" userName="dpark" createdAt="2025/11/17 18:22:56" color="">}}




{{<matomeQuote body="https://news.ycombinator.com/item?id=17141024がリンクしてるhttps://developer.chrome.com/blog/smooshgateでは、Firefox Nightlyでfeatureをshippingしたことで、少なくとも一つのpopular websiteがbreakしたって言ってるんだ。<br>そしてhttps://www.w3.org/TR/html-design-principles/#support-existi...には”servant-oriented”な考え方が書いてあるよね。<br>Flashはstandardじゃなかったから、browserがsupportするかはad-hocなものだった。でもXSLT 1.0はstandardの一部なんだ。だからauthorsとimplementersの間で”これを使えば、ちゃんと動き続けることを保証する”っていうagreementがあったんだよ。" userName="svieira" createdAt="2025/11/19 17:45:46" color="#ff33a1">}}




{{<matomeQuote body="initial proposerにweightを置くべきじゃないってことには同意するけど、removalを主導して、decisionを最初にannounceしたのはGoogleだね。<br>俺のtimingが間違ってなければだけど。" userName="_heimdall" createdAt="2025/11/17 18:50:37" color="">}}




{{<matomeQuote body="企業のオープンソースは、企業の支配下で運営されていて、コミュニティ主導で多様なステークホルダーが参加する文化モデルとは違うんだ。Debian、VLC、LibreOfficeは後者に入ると思うな。" userName="glenstein" createdAt="2025/11/17 19:44:59" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="XML処理がブラウザで問題視されるのは、もう違うんじゃないかな。XHTMLがHTML 5に取って代わられて15〜20年経つし、XSLTサポートがなくなるのも自然な結論だよ。セキュリティ面でもRustベースに移行して攻撃面を減らすのは良いこと。JavaScriptでXML解析するなら、polyfillとかWASMライブラリで十分対応できるんじゃない？" userName="jillesvangurp" createdAt="2025/11/17 16:56:47" color="#38d3d3">}}




{{<matomeQuote body="記事の「XSLTはRSSに不可欠」ってのは違うよ。RSSフィードはJavaScriptを使えばブラウザで閲覧できるし、GoogleのpolyfillみたいにJavaScript内でXSLTを動かすこともできる。俺は数千行のXSLTを書いてきたけど、JavaScriptの方が断然優れているから、XSLTはもう時代遅れでしょ。XSLTをなくすべき理由はこれ→https://www.offensivecon.org/speakers/2025/ivan-fratric.html" userName="dfabulich" createdAt="2025/11/17 16:44:22" color="#785bff">}}




{{<matomeQuote body="「JavaScriptがXSLTより優れている」ってのは、さすがに言い過ぎだよ。XSLTは宣言的でHTMLと自然に連携するから、プログラミングを知らない人でも簡単にWebページを作れるんだ。ビルドステップや特別なサーバーソフトも不要で、手軽に高機能なテンプレートウェブページが作れるのはすごいよ。新しいHTML要素を追加するのも簡単だしね。一方、JavaScriptのドキュメントはクラスやコールバック、Shadow DOMの話から始まって、Webページを作りたいだけの初心者には全く優しくない。<br>Webの方向性を決める企業は、個人が簡単な方法でシンプルなことをできるようにすることを軽視してる。RSSサポートがブラウザから削除されたように、簡単なオープンな方法がないからみんなFacebookみたいなサービスを使う羽目になるんだ。" userName="ndriscoll" createdAt="2025/11/17 17:05:22" color="#ff5c5c">}}




{{<matomeQuote body="XSLTを独学でマスターして、生産的に使っている非プログラマーに会ったことある？<br>「Webコンテンツ作れてHTMLは得意だけどJavaScriptは苦手でXSLTは学べる」なんて層は、かなりニッチだと思うな。どこかで「このユースケースはあまりにも限定的だから、ブラウザがこの複雑さを永遠に維持するのは無理」って決断する必要があるでしょ。" userName="munificent" createdAt="2025/11/17 17:34:59" color="#45d325">}}




{{<matomeQuote body="Webページを作りたいなら、HTMLとCSSを学ぶべきだよ。<br>もろくてほとんど使われないXSLTみたいな技術を加えて、どう役に立つっていうの？" userName="ErroneousBosh" createdAt="2025/11/17 17:43:50" color="">}}




{{<matomeQuote body="数年前、Skylandersのフィギュアを安く買ったんだけど、コレクションを管理するためにXSLTスクリプトでリストを並べ替えて、それぞれの「要素」に基づいてフォーマットしたんだ。普通のHTMLとCSSでやるのは、マジで地獄だっただろうね。見てみて→https://wyrm.org/inventory/skylanders.xml" userName="basscomm" createdAt="2025/11/17 20:58:09" color="#785bff">}}




{{<matomeQuote body="CSSだけじゃ無理だっただろうけど、JavaScriptならめちゃくちゃ簡単だったはずだよ。君が書いた何百行ものXSLTよりね。<br>→https://wyrm.org/inventory/skylanders.xsl" userName="dfabulich" createdAt="2025/11/18 06:41:02" color="">}}




{{<matomeQuote body="JavaScriptで「めちゃくちゃ簡単」って言うけど、それできるようになるまでにどれだけ勉強しなきゃいけないのさ？<br>俺のXSLTの何百行っていうのは、ゲームごとに10種類の条件があるif文を5回繰り返しただけだよ。難しいんじゃなくて、ただ冗長なだけ。" userName="basscomm" createdAt="2025/11/18 13:02:47" color="">}}




{{<matomeQuote body="子供の頃、俺はプログラマーじゃなかったけど、XSLTが新しい頃は図書館でHTMLの本を読んで、コンテンツとスタイルを分離するとか学んだよ。XSLTは、Webページをいくつか書いた人なら誰でもやりたいと思うことの、HTMLの自然な拡張だったんだ。Webの新しい支配者たちが、Webページ作りがWebプラットフォームにとって「あまりにもニッチなユースケース」だと判断しちゃったのが問題なんだよね。" userName="ndriscoll" createdAt="2025/11/17 17:39:51" color="#785bff">}}




{{<matomeQuote body="JavaScriptは進化が早すぎて、WebKitかFirefoxに縛られ、常にアップグレードしなきゃいけないんだ。XSLTは何年も変わってなくて、ちゃんとした標準だよな。昔使ってた独立系ブラウザが、大手ブラウザの進化についていけず諦めたのを覚えてる。Konquerorが懐かしいね。" userName="Pet_Ant" createdAt="2025/11/17 17:09:10" color="#ff5c5c">}}




{{<matomeQuote body="コンテンツとスタイル、レイアウトを分離するって話なら、それはCSSの役目だよ。" userName="ErroneousBosh" createdAt="2025/11/17 17:44:39" color="">}}




{{<matomeQuote body="JavaScriptって後方互換性があるじゃん。もし望むなら、全てでサポートされてる古い標準を使えばいいんだよ。" userName="pitaj" createdAt="2025/11/17 18:23:54" color="">}}




{{<matomeQuote body="XSLTはチューリング完全な関数型言語で、宣言型じゃない。簡単な変換は宣言的に感じるけど、UIのために複雑な変換が必要だと、for-eachとか使ってマジ大変。XSLTの「逃げ道」は変数やifでチューリング完全にするけど、JSやモダンフレームワークと比べたら最悪。だからJSが人気で、XSLTは廃れたんだよ。ビルドステップやサーバソフト不要で手軽にテンプレート作れるのはJSの方がずっと優れてる。Web ComponentsでカスタムHTML要素もJSの方が自然。マジでXSLTはJavaScriptよりあらゆる面で劣ってるよ。パフォーマンスもセキュリティも学習しやすさもね。EDIT：Custom Element APIはインタラクティブなクライアントサイドコンポーネント用。HTML変換だけならquerySelectorAllやjQueryで十分だよ。" userName="dfabulich" createdAt="2025/11/17 17:20:18" color="#45d325">}}




{{<matomeQuote body="「RSSフィードをJavaScriptでユーザー閲覧可能にできる」って？XSLT使ってるXML文書をどうJSで変えるのさ。`＜?xml-stylesheet type=”application/javascript” href=”https://example.org/script.js”?＞`みたいなのが許されれば、サービスワーカーAPIでリクエストをインターセプトして変換できるのにね。今のJS実装じゃXSLTみたいなファーストクラスの体験は提供できないよ。" userName="kuschku" createdAt="2025/11/17 18:50:19" color="#38d3d3">}}




{{<matomeQuote body="RSSフィードを開いてもJavaScriptは動かないから、それは無理だよ。" userName="LtWorf" createdAt="2025/11/17 18:58:53" color="">}}




{{<matomeQuote body="RSS/Atomなら、`feed`や`rss`要素の中に、XHTMLの名前空間指定して`＜script src=”https://example.org/script.js” xmlns=”http://www.w3.org/1999/xhtml”＞＜/script＞`とか`＜style xmlns=”http://www.w3.org/1999/xhtml”＞* { color: red; }＜/style＞`とか`＜link href=”https://example.org/style.css” rel=”stylesheet” xmlns=”http://www.w3.org/1999/xhtml”/＞`とか入れられるよ。" userName="dfabulich" createdAt="2025/11/17 23:50:41" color="#45d325">}}




{{<matomeQuote body="HTML+CSSを学ぶとXSLTがしっくりくるのはそういうことだよな。HTMLテンプレートに適用される同じ考え方で、手書きHTMLでナビバーやフッターを使い回したい時にめっちゃ役立つんだ。" userName="ndriscoll" createdAt="2025/11/17 17:50:43" color="#38d3d3">}}




{{<matomeQuote body="マジで？私の古いiPad（第4世代？）はもう色んなサイトで動かないんだけど。もしJavaScriptが後方互換性があるなら、ちゃんと機能するはずだよね。" userName="Pet_Ant" createdAt="2025/11/17 19:20:01" color="">}}




{{<matomeQuote body="プログラマーじゃないけど、XSLTを独学で覚えて5年くらい自分のサイト（https://github.com/zmodemorg/wyrm.org）作ってたよ！最近はSSGに変えたけど、XSLTでできたことができないのが残念で。XSLTのサポートが続くなら、すぐにでも戻したい気分だね。" userName="basscomm" createdAt="2025/11/17 20:51:55" color="#ff33a1">}}




{{<matomeQuote body="XSLTのリファクタリング方法を詳しく教えてくれてるよ！要素やシリーズごとにテンプレートを分けたり、XML構造自体を工夫したりすれば、もっと簡潔に書けるってさ。<br>ChatGPTを使ったリファクタリングの例も載ってるぞ。XSLTは初心者にもパワフルなんだってさ。" userName="ndriscoll" createdAt="2025/11/18 18:08:13" color="#ff5733">}}




{{<matomeQuote body="JavaScriptの方がXSLTより学習コストが低いって言ってるな。それに、何百行も同じ条件文をコピペするなら、プログラミング言語ならループを使えるだろって指摘してるぜ。" userName="ErroneousBosh" createdAt="2025/11/19 13:20:37" color="">}}




{{<matomeQuote body="最初の選択肢（XSLTのサポート）はどうなの？もしそれが安定してたら、俺の悩みは全部解決するんだけどな。でも、それだとDOMが解析される前に変更できないから、DOMを全部消してページロード全体をpolyfillしなきゃいけないのかな？って疑問を投げかけてるぜ。" userName="kuschku" createdAt="2025/11/18 00:45:51" color="">}}




{{<matomeQuote body="XSLTなしでXMLフィードをスタイリングする方法のGitHubリポジトリがあるぞ！これ見てみろよ。<br>https://github.com/dfabulich/style-xml-feeds-without-xslt" userName="dfabulich" createdAt="2025/11/18 06:53:42" color="#ff5733">}}




{{<matomeQuote body="「セキュリティ？はるかに悪い」ってのは完全に間違いだってさ。メモリ安全な実装を使えばセキュリティは格段に良くなるんだって。SSLがバグのある実装だからって技術自体が悪いわけじゃないのと同じだろって言ってるぜ。" userName="James_K" createdAt="2025/11/17 17:29:46" color="#45d325">}}




{{<matomeQuote body="HTMLを手書きしてテンプレート全部含めるなんてやり方は、30年前も今も良くないってさ。最近流行りの「静的サイトジェネレーター」ってやつ、あれは90年代半ばには「Makefile」って呼ばれてたんだぜ。" userName="ErroneousBosh" createdAt="2025/11/17 17:53:37" color="">}}




{{<matomeQuote body="XSLプロセッサを静的ジェネレーターとして使うこともできるんだぜ。ログインユーザーの情報を組み込むdocument()みたいな機能は失われるけど、静的サイトなら問題ないだろ。" userName="ndriscoll" createdAt="2025/11/17 21:04:50" color="">}}




{{<matomeQuote body="「for-eachやchooseを使うべきじゃない」って言われたけど、間違ってたとは思わないな。ただ効率的じゃなかっただけだ。当時それは分かってたけど、俺はプログラマーじゃないし、5年前に数日かけて求めてた結果が出たから、それ以降は見直してないんだよ。" userName="basscomm" createdAt="2025/11/19 01:43:32" color="">}}




{{<matomeQuote body="XSLTだとルール書いて結果のドキュメント断片を書くだけで超シンプルだろ？JavaScriptだとcreateElementとかgetAttributeとかメソッド呼び出しばっかだし。みんな「テンプレートエンジン」を書き続けるのはなんでだ？XSLTより劣るのに。なんでJSXみたいな複雑な仕組みをわざわざ作ったんだ？ plain JavaScriptの方が良いならって皮肉ってるぜ。" userName="Mikhail_Edoshin" createdAt="2025/11/17 20:00:40" color="#ff5c5c">}}




{{<matomeQuote body="これは前方互換性の話だな。JavaScriptは後方互換性があるから古いコードも新しいエンジンで動くけど、前方互換性はないから新しいコードは古いエンジンで動かない。iPadの問題はエンジンじゃなくて、ウェブサイトが互換性を破ってるからだろ。ウェブサイトは公開されたら動き続けるのが普通なのに、XSLTの状況は例外なんだってさ。" userName="demurgos" createdAt="2025/11/17 19:52:29" color="#38d3d3">}}




{{<matomeQuote body="うちのサイトではユーザーがログインしないんだよね。テキストベースのブラウザでも見れるようにしたくて、最終的にはサーバーサイドのXSL処理（https://nginx.org/en/docs/http/ngx_http_xslt_module.html）を使い始めたんだけど、これってブラウザと同じXSLTライブラリを使ってるから、いつまで使えるのか不安だなぁ。" userName="basscomm" createdAt="2025/11/17 21:27:59" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞XSLTを自ら進んで習得し、生産的に使った非プログラマーに会ったことある？<br>確かに20年くらい前の話だけど、ビジネスアナリストにXSLTを教えて、自分でレポート作成・編集・フォーマットできるようにしてたよ。当時Crystal Reportsがめちゃくちゃ高かったから、XMLデータをブラウザに送ってXSLTでレポートをフォーマットするシステムを開発したんだ。基本的なインタラクティブ性もあって、俺以外の人が編集できたしね。あと、当時IEでしか動かなかった気がする。だって、IEだけがtransform関数持ってたんだもん。" userName="matwood" createdAt="2025/11/17 18:14:42" color="#ff33a1">}}




{{<matomeQuote body="ごめん、伝え方が悪かったね。他のコメンターに返信してる側面もあったんだ。実は、君の言ってる「数百行にもなる複雑なテンプレートなんていらない」っていう点を強調したかったんだよ。君がやったようなのは複雑じゃないし、もし頑張るなら2つの小さいテンプレートに凝縮できたはず。それから「やり方が間違ってる」って話は、for-eachとかが必要だって言ってたスレッド上のコメントへの返信だよ。君みたいなケースでは絶対にいらない。でも、君にとってそれが一番簡単な方法だったなら、全然OK。俺が言いたいのは、XSLTって現代のJSアプローチよりもずっと親しみやすくて、可能性を広げる技術だってずっと思ってるってことなんだ。" userName="ndriscoll" createdAt="2025/11/19 02:51:06" color="">}}




{{<matomeQuote body="Googleがオープンウェブを殺してるっていう意見には同意するけど、XSLTをその根拠にするのはかなり弱いね。すごく複雑な機能だし、滅多に使われない。サポート打ち切りが悪意ある政治的決定だとは到底思えないな。使われることがほとんどないものにリソースを注ぎ込みたくないってのが、よっぽど可能性高いだろ。ブラウザでRSSやAtomフィードを表示する特定のユースケースなら、XSLTに頼るよりブラウザに最初から内蔵サポートがある方が良い解決策だよね。" userName="thayne" createdAt="2025/11/17 17:00:54" color="#785bff">}}




{{<matomeQuote body="壊れるサイトって、実はめちゃくちゃ重要なところが多いんだよ。Congress.gov/govinfo.gov、weather.gov、europa.gov、それに図書館や大学のサイトもたくさんある。ある機能を使ってるサイトの数だけで見るのは、全体像を捉えられてない。もしある機能がWikipediaだけで使われてたとしても、破壊的な変更で短い（1年なんて）移行期間で非推奨にするのは不適切だろ。重要なユーザーと協力して廃止を進めて、それから公に終了を告知して、見落としてるかもしれないみんなに知らせるべきだよ。" userName="AlotOfReading" createdAt="2025/11/17 18:26:50" color="#ff5733">}}




{{<matomeQuote body="もちろんRSSの組み込みサポートがあれば最高だけど、そんなこと実現する可能性あんの？" userName="Fileformat" createdAt="2025/11/17 17:55:56" color="">}}




{{<matomeQuote body="ブラウザメーカーがXSLTライブラリの保守にコミットするよりは、可能性高いだろね。" userName="thayne" createdAt="2025/11/17 18:16:05" color="">}}




{{<matomeQuote body="彼らはそれを維持する必要なんてなかったんだよ。もっとシンプルな解決策や、壊れてないライブラリに切り替えることができたはずだ。" userName="righthand" createdAt="2025/11/17 20:15:39" color="">}}




{{<matomeQuote body="昔のFirefoxとOperaは、RSSフィードの表示（と購読）に対応してたんだよ。" userName="homebrewer" createdAt="2025/11/17 20:37:50" color="">}}




{{<matomeQuote body="今モバイルだからソースを探すのは大変なんだけど、Google自身の追跡統計によると、WebUSBよりもXSLTを使ってるサイトの方が多いらしいよ。" userName="wpm" createdAt="2025/11/18 04:40:32" color="#ff33a1">}}




{{<matomeQuote body="これはオープンウェブとは関係ないよ。オープンとは「ブラウザがこれまで出荷されたすべてをサポートする」という意味じゃない。<br>GoogleがMozillaやSafariと一緒にHTML仕様を変更してXSLTのサポートを中止するんだ。ウェブを壊すから悪い、って言うのはいいけど、オープンかどうかとは関係ないよ。オープンウェブは、誰でもウェブサーバーを動かせて、ウェブサイトを作れて、互換性のあるブラウザを構築できることなんだ。<br>Google Readerの廃止はRSSに一番ダメージを与えただろうし、AMPはGoogleがウェブトラフィックをより厳しく制御しようとした試みだった。Chrome拡張機能の変更は広告ブロッカーの制御のためみたいだし、検索結果にGeminiを出すのはユーザーがウェブサイトにアクセスしないようにするためだろうね。<br>XSLTはブラウザでは何年も前から死んでるし、XSLT 2.0がChromeリリース前に標準化されても誰も実装しなかったんだから、Googleのせいじゃない。XSLTの削除はウェブのオープン性を変えないし、ほとんど何も壊さずに実際のセキュリティエラー源を排除できるんだ。" userName="dpark" createdAt="2025/11/17 17:59:34" color="#ff5733">}}




{{<matomeQuote body="Google Readerの廃止でRSSがダメになったって言うけど、もしプロトコルがキラーアプリひとつで廃れてしまうなら、それはプロトコルじゃなくユースケースの問題だったんだ。<br>個人的にはRSSはまだ死んでない。ポッドキャスティングでは健在だよ。死んだのは、人々が特定のサイトからコンテンツを購読モデルで消費するやり方で、今ではソーシャルメディアのフィードでごちゃ混ぜになった情報を受け取ってるからね。情報のソースにはこだわらず、情報そのものが欲しいんだ。これはRSSサポートの改善で解決できる問題じゃなくて、Facebookより良い体験を求める行動の問題だと思うよ。" userName="shadowgovt" createdAt="2025/11/17 18:46:33" color="#785bff">}}




{{<matomeQuote body="キラーアプリの廃止や削除だけじゃなかったよ。RSSは一時ブラウザにも統合されていたけど、その後削除されたんだ。<br>もしブラウザのホームぺージがすでにタイムラインを提供していて、どのウェブページでも「購読」ボタンを追加するのが簡単だったら、ソーシャルメディアのフィードなんて必要なかったはずだ。でも、既知の実績ある、はっきりとした需要があるユースケースじゃなくて、USBデバイスにファームウェアをフラッシュするみたいなニッチなJavaScript APIばかりが増えてるんだ。" userName="ndriscoll" createdAt="2025/11/17 19:20:07" color="#38d3d3">}}




{{<matomeQuote body="オープンウェブは、WHATWGがブラウザで何が有用で何がそうじゃないかを決めるって意味じゃない。<br>GoogleがMozillaやSafariと一緒にHTMLの仕様を変更してXSLTのサポートを中止してるけど、それが「ウェブを壊す」から悪いって言うのはいいよ。でも、彼らはそれが理由だと嘘をついてるんだ。それ自体もすごく危険だ。<br>この特定のテクノロジーを排除することがオープンウェブを殺すことじゃないって、ずいぶんごまかしてるけど、他の人もそう言ってるよ。<br>XSLTはセキュリティエラーの源じゃない。これは前回の不誠実な議論から来てる（これらの会社で働いてるなら言ってくれ）。libxsltにセキュリティ脆弱性があるだけで、XSLT自体にはないんだ。それに、彼らが貢献したり実装したりできる代替プロセッサや、他にもたくさんの解決策があるのに、彼らは排除することを選んだ。それがオープンウェブを殺してるんだよ。" userName="righthand" createdAt="2025/11/17 23:23:45" color="">}}




{{<matomeQuote body="この前のこの件に関するスレッドで、君と建設的な会話をしようとしたら、何度も個人攻撃に走って、僕が「オープンウェブ」の意味を明確にしようとしたら、もう関わりたくないって明言したよね（その後もスレッドの他の場所で非難を続けたけど）。今またここに来て、僕を雇われた回し者呼ばわりして、根拠のない「オープンウェブを殺してる」ってキャッチフレーズを繰り返してる。<br>君の「オープンウェブ」の定義は「決して機能を非推奨にしない」みたいだね。ブラウザに機能をずっとサポートしてほしいってのは良いけど、それがオープンウェブと関係があるとは思わないな。このブログ記事の作者とまったく同じように、君はGopherみたいな「ウェブ」の一部でさえなかったものが、「オープンウェブ」の名の下にサポートされるべきだと信じている。<br>ライブラリには複数のセキュリティ脆弱性があることが知られてる。彼らはこの依存関係を維持するのは持続不可能だと宣言したんだ。そして、置き換える価値もないと宣言している。そこに嘘があるとは思えないな。誰もXSLTをまったくサポートできないとは主張してないよ。彼らは、サポートにはもっと投資が必要で、ROIが低すぎるって言ってるんだ。<br>この点は前回も明確にしたよ。君は意図的にメッセージを誤解してるんだ。ここのエンジニアリング上のトレードオフを認めれば、これが君が主張するような怠惰な開発者や悪意のあるPMの問題だけじゃないって考えざるを得なくなるからね。<br>僕はMicrosoftで働いてるけど、この議論には関与してないと思う。ただChromiumが削除すれば、Edgeもおそらくそうなるだろうね。Edgeがこの機能についてどう考えてるかは、僕には全くわからないよ。" userName="dpark" createdAt="2025/11/18 00:56:26" color="#38d3d3">}}




{{<matomeQuote body="XSLTの非推奨について不満を言ってる記事で、実際にその人がなぜXSLTを使っていたのか、なぜそれが重要だったのかを説明しているものをまだ読んだことがないんだ。<br>「私はXSLTを使い続けるし、実際、それに頼る新しい機会を探すつもりだ」というのが一番近いけど、これは非推奨になる前の重要性の説明じゃない。反抗として使うって宣言してるだけだね。" userName="Aurornis" createdAt="2025/11/17 16:31:02" color="">}}




{{<matomeQuote body="僕はJavaScriptが無効なユーザーのためにウェブサイトを動かしたいし、静的にホストされたサイトでAtomフィードのリンクをHTMLドキュメントとして表示して、標準への準拠を壊したくないからXSLTを使ってるんだ。これで役に立つといいな。" userName="James_K" createdAt="2025/11/17 17:31:35" color="#ff33a1">}}




{{<matomeQuote body="ビルドプロセスの一部としてXSLTを実行して、生成されたHTMLを配信することはできないの？" userName="matthews3" createdAt="2025/11/17 17:36:30" color="">}}




{{<matomeQuote body="それはAtomフィードじゃなくなっちゃうよ。AtomはRSSの後継のシンジケーション形式で、有効なAtom XMLドキュメントへのリンクをユーザーに提供して、このリンクがクリックされたときにウェブページを見てもらいたいんだ。だから多くの人がこれを問題視してるんだ。<br>基本的なブログを作るなら、HTMLドキュメントとRSS/Atomフィードが必要だ。これに必要な技術は、ドキュメント用のHTMLと、フィードをフォーマットするXSLTなんだ。Googleが今その技術の一つを削除することで、真に静的なウェブサイトを提供することが実質的に不可能になるんだよ。" userName="James_K" createdAt="2025/11/17 17:43:37" color="#785bff">}}




{{<matomeQuote body="どうして？ただ静的ページを生成するだけだろ。ちゃんと動くやつを生成すればいいんじゃないのか？" userName="ErroneousBosh" createdAt="2025/11/17 17:46:53" color="">}}




{{<matomeQuote body="HTMLとしても表示される有効なRSS＼Atomドキュメントは作れないよ。" userName="James_K" createdAt="2025/11/17 18:06:07" color="">}}




{{<matomeQuote body="ブラウザ用のHTMLとフィードリーダー用のXMLは別のプロトコルだから、別々のページに置くべきだよ。HTMLページにフィードリーダーにコピー＆ペーストするためのリンクを貼ればいい。開発者はブラウザの現状に合わせて問題を過度に制約しちゃってる気がするな。" userName="shadowgovt" createdAt="2025/11/17 18:40:46" color="#785bff">}}




{{<matomeQuote body="RSS＼Atomフィードを新しいユーザーに優しくするのは、その普及とオープンウェブにとって重要だね。XSLTがそのための最善策だよ。僕はXSLTを使ったRSS＼Atomフィードのサイトを作ったんだ。ビフォーアフターのスクリーンショットを見てみて。どっちが非技術系のユーザーを怖がらせると思う？URLはhttps://www.rss.style/だよ。" userName="Fileformat" createdAt="2025/11/17 18:03:42" color="#785bff">}}




{{<matomeQuote body="＞別プロトコルだから別ページにする？それならHTTP／2とHTTP／1.1やgzip圧縮と素のレスポンスでも別URLを勧めるの？内容は同じで、フォーマットが違うだけなんだから、同じURLであるべきだよ。" userName="kuschku" createdAt="2025/11/17 18:57:10" color="#ff5c5c">}}




{{<matomeQuote body="RSSとAtomフィードは現状、問題を探してる解決策って感じかな。僕はPodcastの更新チェックでRSSをいつも使ってるけど、ニュースはみんなソーシャルメディアを使ってるよね。RSSがその状況を変える鍵じゃなくて、RSSの上のアプリがそうなのさ。Google Readerがなくなってから、Facebookで噂話をするのに勝るようなものは出てきてないし。" userName="shadowgovt" createdAt="2025/11/17 18:34:04" color="#45d325">}}




{{<matomeQuote body="＞ニュースはソーシャルメディアを使う。RSSは変化の鍵じゃない。じゃあソーシャルメディアやFacebookを使ってない人は運が悪いってこと？" userName="basscomm" createdAt="2025/11/17 21:03:18" color="">}}




{{<matomeQuote body="それならサーバーはAcceptヘッダーに基づいて適切なフォーマットを提供するべきだね。application／rss＋xmlでもapplication／atom＋xmlでもtext／xmlでもtext／htmlでもさ。クライアントにXMLとXSLTを送るよりも、XSLTが出力するHTMLを直接送る方がずっと安上がりだよ。" userName="shadowgovt" createdAt="2025/11/17 23:05:35" color="#ff5c5c">}}




{{<matomeQuote body="なぜそう思うのか分からないな。新聞を購読できるし、RSSと購読ツールもまだあるよ。僕が言いたいのは、今この時点でソーシャルメディアを使っていないなら、あなたはもうアウトライヤーだってこと（Hacker NewsもFacebook、Twitter、Mastodonと同じカテゴリ）。みんなRSSフィードのコレクションを使う代わりに情報収集の場としてソーシャルメディアを使うんだ。その理由がRSSの行く末を示すかもしれないね。" userName="shadowgovt" createdAt="2025/11/17 21:22:11" color="#38d3d3">}}




{{<matomeQuote body="つまり、もう静的サイトはなしってこと？" userName="James_K" createdAt="2025/11/18 21:22:57" color="">}}




{{<matomeQuote body="Arduino Uno 3の2KB RAMではそれは安くないね。でも、別の方法として、xmlnsがxhtmlのscriptタグを含めるっていう提案もあったよ。理想的ではないけど、それもうまくいくはずさ。" userName="kuschku" createdAt="2025/11/18 00:47:44" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
