+++
date = '2025-05-03T00:00:00'
months = '2025/05'
draft = false
title = 'HTML単体ではなぜインクルードできない？ かつて存在した機能の知られざる歴史'
tags = ["HTML", "Web開発", "歴史", "XML", "Semantic Web"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> HTML単体ではなぜインクルードできない？ かつて存在した機能の知られざる歴史

引用元：[https://news.ycombinator.com/item?id=43878728](https://news.ycombinator.com/item?id=43878728)




{{<matomeQuote body="HTMLは昔、SGMLっていう規格の一部だったんだよ。SGMLにはインクルード機能があったんだ。新しい”entity”を定義して、”system” entityを作れば、後でそれを参照して置き換えられたんだね。＜!DOCTYPE html example [<br>      ＜!ENTITY myheader SYSTEM ”myheader.html”＞<br>    ]＞<br>    ....<br>    &myheader;<br><br>SGMLは複雑だから、HTMLを単純にするためにいろんな努力がされた結果、この機能は途中で削られちゃったんだ。" userName="dwheeler" createdAt="2025/05/03 21:06:38" color="#45d325">}}




{{<matomeQuote body="XHTMLで少しだけXML寄りになったこともあったね。XMLにはXIncludeっていう機能もあるけど、必須じゃなかったんだ。" userName="int_19h" createdAt="2025/05/03 23:35:32" color="">}}




{{<matomeQuote body="20年前にXHTMLやsemantic webに進まなかったのは残念だね。XHTMLの失敗は厳しすぎる構文と壊れたWebのせい、ベンダー全体の責任だよ。Googleは後年、ビジネスメリットのあるJSON+LDでsemantic webを実現した。これはschema.orgの標準。結局semantic webは別の形で手に入ったんだ！" userName="echelon" createdAt="2025/05/04 03:14:47" color="#ff33a1">}}




{{<matomeQuote body="面白い情報だね、調べてみるよ。<br>＜object＞タグって、他のHTMLページをインクルード/埋め込めるみたいだね。<br>埋め込みの例だよ：＜object data=”snippet.html” width=”500” height=”200”＞＜/object＞<br>https://www.w3schools.com/tags/tag_object.asp" userName="j45" createdAt="2025/05/04 00:37:20" color="">}}




{{<matomeQuote body="＜object＞をこう使うのは、標準の中ではもっと不安定な、互換性維持のための劣化版iframeだよ。iframeみたいに、全体をブロック要素として”include”するけど、これは元の記事の人が示唆してるのとはちょっと違うね。" userName="nephyrin" createdAt="2025/05/04 04:52:59" color="">}}




{{<matomeQuote body="個人的には、厳格なsemantic webにはそんなに興味なかったんだけど、XMLには周りのエコシステム（XPathとかXSLTとか）の利点があったり、namespaceの形で拡張性が組み合わせられたりするんだよね。それが全部HTML5で捨てられたのはすごく不満だったし、その理由（XHTML前のページとの互換性は、XHTMLに変換する仕様を定義するのが一番良いって考え）も全然理解できなかったな。" userName="int_19h" createdAt="2025/05/04 08:23:15" color="">}}




{{<matomeQuote body="Google批判は同意だけど、失われたsemantic webへの見方には驚くね。XHTMLの失敗は厳しすぎる構文と壊れたWebのせい、ベンダー全体の責任だよ。Googleは後年、ビジネスメリットのあるJSON+LDでsemantic webを実現した。これはschema.orgの標準。結局semantic webは別の形で手に入ったんだ！" userName="safety1st" createdAt="2025/05/04 10:51:37" color="#45d325">}}




{{<matomeQuote body="それって、90年代後半から2000年代初頭に固定要素のためにたくさんのサイトがやってたことだよ。<br>あれは本当にひどかった。ブラウザのナビゲーションが見えなくなるし、ちょっとしたエラーでコンテンツじゃなくて固定フレームの方に飛んで全体が台無しになるし、デザインの柔軟性はなくなるし（一貫したスタイルには余計な手間がかかるのに）、フレームはコンテンツに合わせてサイズが変わらないからクリップされたりスクロールバーだらけになったりするし、デバッグは最悪だし…。<br>それにリソースも余計に食うんだよ。" userName="masklinn" createdAt="2025/05/04 06:29:00" color="">}}




{{<matomeQuote body="理想的じゃないけど、objectタグを使えばピュアなHTMLでもできるよ…筆者は触れてないみたいだけどね。<br>ちょっとしたバニラのJavaScriptとWebComponentsを使えば数行だよ：<br>https://gomakethings.com/html-includes-with-web-components/" userName="j45" createdAt="2025/05/04 15:27:10" color="#785bff">}}




{{<matomeQuote body="昔PHP sessionsをXHTMLドキュメントで使ったらパースエラーになったの覚えてるよ。PHPがセッションをリンクのクエリ文字列に足すとき、パラメータ区切りにrawな&文字を&amp;じゃなくて使ってたからXMLパースエラーを引き起こしてたんだよね。<br>ずさんなHTMLが生む問題（ブラウザ間のレンダリング不一致）を避けるために、ブラウザがシンタックスに緩すぎるのを防ごうって動きもあったんだ。" userName="mildred593" createdAt="2025/05/04 16:35:45" color="#38d3d3">}}




{{<matomeQuote body="semantic webなんて90年代とか00年代のばかげた夢だよ。実現可能な技術じゃないし、Googleがまさにその理由を示したろ？<br>Web上でページを見つけるアルゴリズムが固定されたら、みんな自分のコンテンツを優先させるためにアルゴリズムを悪用し始めるんだ。金をかけてやり方を調べて実行する全てのパブリッシャーのことだよ。<br>だから、どんな純粋にアルゴリズムに基づいた検索もすぐにほぼゴミしか返さなくなる。実際の検索エンジンが機能するのは、悪用する人たちに対応してアルゴリズムを常に人間が変更してるから。これはsemantic webの考え方にある程度反するし、大衆向けのローカルファーストなWeb検索エンジンなんて考え方には完全に反するね。" userName="tsimionescu" createdAt="2025/05/04 05:50:07" color="#ff5733">}}




{{<matomeQuote body="XHTML 1.0がそうだったんだよ、それから互換性なく進化しちゃったけど。" userName="immibis" createdAt="2025/05/04 20:56:18" color="">}}




{{<matomeQuote body="semantic webが大衆向けに機能する持続可能な道筋なんて、今までなかったと思うね。<br>みんな書きたい、公開したいって思ってたんだ。ページに事実情報をタグ付けするリソースや意欲があったのは、ほんの一握りの人や機関だけだったろうね。ほとんどの人はsemanticな分類を無視しただろうし。<br>小さくて閉鎖的なsemantic webは無いよりマシだと思うけど、実際にWebがこれほど豊かになったシナリオで、かつ厳格に組織化されてたなんて状況は疑わしいな。" userName="kweingar" createdAt="2025/05/04 04:50:48" color="#ff5733">}}




{{<matomeQuote body="それはHTML 4以下で使われてたDTD (Document Type Definition)とかXMLにもあったね。SGMLからも来たんだろうな。" userName="lkuty" createdAt="2025/05/04 09:24:54" color="">}}




{{<matomeQuote body="まあ、それはそれ自体がまるごと攻撃対象になりうるね。<br>https://en.wikipedia.org/wiki/Billion_laughs_attack" userName="timewizard" createdAt="2025/05/04 02:40:00" color="">}}




{{<matomeQuote body="うん、それはHTML Frames [1]のただの劣化したバージョンだよ。<br>1 - https://en.m.wikipedia.org/wiki/Frame_(World_Wide_Web)" userName="jazzypants" createdAt="2025/05/04 15:15:46" color="">}}




{{<matomeQuote body="＞ピュアなhtmlに存在する［…］JavaScript with WebComponents<br>君の言う”ピュアなHTML”の定義、かなり独創的みたいだね。" userName="masklinn" createdAt="2025/05/04 15:34:03" color="">}}




{{<matomeQuote body="まあ、なんとなく同意するけど、microformatsの”死”はXHTMLの死とは関係ないって言いたいな（schema.orgはまだあるけどね）。例えばhReviewとか今でも使えるけど、誰も使ってないじゃん。結局microformatsの問題は、“自分のコンテンツを自分のWebプロパティの外でも使ってほしい”なんて誰も望んでないってことだよ。検索エンジンがトラフィックを流してくれる以外はね。Fediverseだけがそのコンセプトを復活させる唯一のチャンスかもね。だって、あそこは基本的にアトリビューションがちゃんと残るから。" userName="riffraff" createdAt="2025/05/04 04:24:31" color="#ff33a1">}}




{{<matomeQuote body="XHTMLは単にHTMLのより厳格な構文だっただけだよ。それでセマンティックになったわけじゃない。" userName="bazoom42" createdAt="2025/05/04 16:59:43" color="">}}




{{<matomeQuote body="歴史は全然そんな感じじゃなかったよ。俺が90年代後半（つまりGoogleが支配的になる前）にインターネット会社で働いてた頃は、SGMLなんて一部の人が興味あるだけだった。SGMLベースのイントラネットをクライアントに売り込もうとしたけど、柔軟性とか訴えても全然興味持たれなかったし、当時のWebは雑なマークアップとか間違ったHTMLが普通だったんだ（Chromeとか出る前ね）。" userName="seanhunter" createdAt="2025/05/04 15:15:21" color="#ff5c5c">}}




{{<matomeQuote body="2番目の点は部分的しか正しくないな。Googleは複数のセマンティックWeb標準をサポートしてるよ。RDFa、JSON+LD、それにmicrodataもだと思う。JSON+LDは抽出やパースがずっと簡単だけど、値が埋め込めるRDFaと比べて情報が重複するからサイトのHTMLは大きくなるね。" userName="LunaSea" createdAt="2025/05/04 12:17:05" color="#ff5c5c">}}




{{<matomeQuote body="“semantic web”はいくつかの分野では成功したけど、SQLとかドキュメントデータベースほどじゃないな。RSSフィードとかAdobeツールが使うXMPメタデータみたいに、多くのデータ形式で使われてるよ。" userName="PaulHoule" createdAt="2025/05/04 14:09:13" color="">}}




{{<matomeQuote body="それに、たとえセマンティックタグ付けをうまくやっても、分類法を巡る認識論的な問題がめちゃくちゃ大きいんだよ—誰が作るの？ 用語って実際どういう意味？ どう整理するの？ とかね。俺がwikidataの分類法を使おうとした経験だと、クラウドソースだと完全にカオスになるし、“専門家”が作った分類法だと網羅性とか意味とか民主性とかでいろんな問題がある。2007年頃からsemantic webをちょっとかじってみたけど、残念ながらAIが唯一実行可能なアプローチだって個人的な結論に至ったよ。" userName="elevaet" createdAt="2025/05/04 13:25:04" color="#ff5c5c">}}




{{<matomeQuote body="俺はブラウザチームで働いてたけど、厳格なパーサーが欲しかったんだ。XHTML推進派だった。でも“競合がパースできるのに俺たちができなきゃ、ユーザーは離れる”って意見に納得させられた。市場が求めるものか、死ぬかの選択だったんだ。厳格さでユーザーを失うのを見た結果、“手抜き”せざるを得なかった。Webは最初から構文に緩いことにコミットしてたし、それがWebが勝った一因だ。ユーザーはエラー吐くブラウザなんていらない。XHTMLはWebの本来の姿やユーザーの要望と離れてただろうね。" userName="safety1st" createdAt="2025/05/07 20:45:54" color="#785bff">}}




{{<matomeQuote body="俺は“semantic XML processing”に関わってたけど、“semantic”部分は不明確だった。今のLLMの誇大広告と似てるね。デモや実用アプリはできるけど、“semantics”がXMLから生まれるわけじゃないし、LLMは“意識”じゃない。XHTMLがHTML5よりセマンティックだったかは疑わしい。それに、Google以前の検索は構造化しすぎてて使いにくかった。Googleはユーザーが簡単な単語で検索できることを示し、作成時じゃなく検索時に関連性を見つける方が効果的だと証明した。ドキュメントの厳格さも、alt属性とか付けさせるだけじゃ無意味な値が増えるだけかも。ブラウザは雑なソースでもうまく再構築できるようになったし。semantic webが失敗したのは、アイデアが魅力的じゃなかったからだと思う。25年経っても“semantic”の意味すら分かってないのが正直なところだ。" userName="DemocracyFTW2" createdAt="2025/05/04 06:59:06" color="#45d325">}}




{{<matomeQuote body="SGMLのXMLサブセットにはエンティティ使用法が残ってるよ。外的な一般エンティティもね。XIncludeは断片も読み込めるけど重複してた。HTMLに残ってるXIncludeは断片を使わず名前空間もナシ。SVGには＜use href=...＞構文があるよ。XIncludeはXML Schemaがあるとマジでうまく動かなかったんだ。" userName="tannhaeuser" createdAt="2025/05/04 08:14:35" color="#785bff">}}




{{<matomeQuote body="90年代に同じヘッダーとサイドバーでうんざりして、SSIを知ってウキウキした経験があるよ。何度もこの問題を解決してきたね。iframeはダメだし、サーバーサイドはサーバーが要る。単純なクライアントサイド方法がないのは妥当な疑問だよ。今こそ検討する価値あるんじゃない？" userName="dimal" createdAt="2025/05/03 14:45:56" color="#45d325">}}




{{<matomeQuote body="HTMLってマークアップ言語であって、プログラミング言語じゃないからね。Markdownになんでインクルード機能がないの？って聞くみたいなもんかな。一部のMarkdownエディターは対応してるけど（HTMLのサーバーサイドツールみたいに）、全部じゃないんだよね。" userName="luotuoshangdui" createdAt="2025/05/03 16:32:22" color="">}}




{{<matomeQuote body="それがHTMLのHyperな部分で、特別なところなんだよ。PDFみたいな他のドキュメント形式と違って、外部リソースを取り込むように作られてるんだ。スクリプト、スタイルシート、画像、オブジェクト、ファビコンとかね。HTMLってテーマ的に似たようなもんだよ。" userName="paulddraper" createdAt="2025/05/03 17:04:40" color="">}}




{{<matomeQuote body="俺はこの理由でhttps://htmx.orgのファンになったわ。10KBくらいの小さいライブラリなんだけど、静的なHTMLの動的なインポートみたいな必須の良いものをHTMLに加えてくれるんだ。" userName="matchagaucho" createdAt="2025/05/03 22:37:04" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いや、HTMLは根本的に違うよ。（JSでのDOM操作がない静的サイトなら）HTMLは全ての意味論的なコンテンツを持ってるけど、スタイルシート、画像、オブジェクトなんかは見た目のためのものだからね。" userName="ummonk" createdAt="2025/05/03 18:54:58" color="#45d325">}}




{{<matomeQuote body="最適な解決策は、テンプレートエンジンを使って静的ドキュメントを生成することだと思うな。" userName="codr7" createdAt="2025/05/03 19:04:55" color="">}}




{{<matomeQuote body="これが一番ありそうな答えだね。俺も共通ヘッダーで最初に困った。HTMLの元のコンセプトはスタンドアロン文書で、再利用部品があるサイトじゃなかったんだ。でもフレームセットがなぜ発明されてインクルードじゃなかったのかは理解できないな。帯域幅節約のためとか？" userName="crazygringo" createdAt="2025/05/03 18:49:30" color="#ff33a1">}}




{{<matomeQuote body="画像はコンテンツだよ。動画もコンテンツ。オブジェクトやiframeもコンテンツ。見た目のためのものはスタイルシートだけだよ。" userName="paulddraper" createdAt="2025/05/03 23:41:48" color="">}}




{{<matomeQuote body="テンプレートエンジンで静的ドキュメント作るのが最適解って言うけどさ、それって作る側にはいいけど、使う側にはどうなの？ あんたのテンプレートエンジンで作った静的ドキュメント100個見たら、全部同じ内容を100回ダウンロードすんじゃん。" userName="JadeNB" createdAt="2025/05/03 20:02:42" color="">}}




{{<matomeQuote body="静的なhtmlをちょっとインライン化するだけなのに、framework持ち込むのはやりすぎだと思うな。<br>それだけなら、scriptタグ自身を置き換えるスクリプトがスマートだよ：<br> ＜script＞<br>  function includeHTML(url) {<br>    const s = document.currentScript<br>    fetch(url).then(r =＞ r.text()).then(h =＞ {<br>      s.insertAdjacentHTML(’beforebegin’, h)<br>      s.remove()<br>    })<br>  }<br> ＜/script＞<br><br>…<br> ＜script＞<br>  includeHTML(’/footer.html’)<br> ＜/script＞<br><br>このscript要素が/footer.htmlの中身に置き換わるんだ。" userName="HumanOstrich" createdAt="2025/05/04 02:41:23" color="#ff33a1">}}




{{<matomeQuote body="ページサイズは親にメッセージできるよ。ドメイン跨ぐ場合は、#location hashに高さを入れて親で同じURLを読み込めば、更新されないで済む。" userName="econ" createdAt="2025/05/03 15:04:56" color="">}}




{{<matomeQuote body="回避策があるのは分かってるけど、そこがポイントじゃないんだよな。これ、超よくあるケースだから、簡単にできるようにすべき。これ、もはや「牛のスーパーハイウェイ」レベルじゃん。この問題解決するために業界丸ごと作っちゃったんだぜ。もし、簡単なWeb公開なら、複雑なweb frameworkじゃなくて新しいタグ一つで済むとしたらどうよ？" userName="dimal" createdAt="2025/05/03 15:17:32" color="#785bff">}}




{{<matomeQuote body="インラインのJavaScriptは、実行されるまでレンダラーを止めちゃうよ。出力結果が確定しないと先に進めないからね。" userName="rbanffy" createdAt="2025/05/04 04:49:42" color="">}}




{{<matomeQuote body="XHRが発明・普及する前、フレームは動的なインターフェース作るのにかなり悪用されてたんだ。アプリはいくつかのサブフレームに分かれてて、リンクやフォームは全部違うフレームを指してた。サイドバーのリンクで「エディター」フレームにページを開いて、そこでフォーム送信とか。同じフレームで再読み込み。保存ボタンとか、完了して次へ進むボタンとか複数あったり。今のアプリの状態はサーバー側で管理されてて、簡単なクライアント側JSでフォーマットチェックくらい。この設定で、フレーム対応してる一番古いブラウザでもCRUD web apps使えたんだ。WebObjectsみたいな初期のweb frameworkもこのモデルに乗っかってたと思うよ。" userName="giantrobot" createdAt="2025/05/03 21:33:44" color="#785bff">}}




{{<matomeQuote body="1996年のNetscapeならこれできたんだ（今でも使ってるサイトのサーバーやってる）。<br>＜！DOCTYPE HTML PUBLIC ”-//W3C//DTD HTML 4.01 Frameset//EN” ”http://www.w3.org/TR/html4/frameset.dtd”＞<br>＜html＞＜frameset cols=”1000, *”＞＜frame src=”FRAMESET_navigation.html” name=”navigation”＞＜frame src=”FRAMESET_home.html” name=”in”＞＜/frameset＞＜/html＞<br>フレームでいつもムカついたのが、賢すぎること。右クリックで再読み込みしても、フレーム一個しか更新されないとか嫌なんだよ。フレームとキャッシュは違う問題なのに混ぜてどっちもイマイチに。俺的にHTMLのインクルードは一番馬鹿な方法であるべき。インクルードの中身を単純に貼り付けるだけ。キャッシュしたいなら別属性でやるべき。インクルードはシンプルが一番いい。" userName="atoav" createdAt="2025/05/03 16:31:55" color="#ff33a1">}}




{{<matomeQuote body="でもこれJavaScript要るじゃん…" userName="johnisgood" createdAt="2025/05/04 14:14:34" color="">}}




{{<matomeQuote body="あー、マジだ、完全に忘れてたわ、あれ。あれは酷かったよー。バックボタン押すとフレーム一個だけ戻っちゃって、アプリの状態がおかしくなったり… マジでメチャクチャだった！" userName="crazygringo" createdAt="2025/05/03 22:42:56" color="">}}




{{<matomeQuote body="細かいことだけどさ、HTML4の仕様が出たのは1997年12月で、HTML4.01は1999年12月なんだ。だから1996年のNetscapeじゃ多分動かなかったんじゃないかな。" userName="lodovic" createdAt="2025/05/04 05:34:22" color="#ff5c5c">}}




{{<matomeQuote body="＞画像や動画はセマンティックなコンテンツじゃないって言うけど、その考え方、なんか納得できないな。" userName="DemocracyFTW2" createdAt="2025/05/04 07:57:54" color="">}}




{{<matomeQuote body="Webってさ、意図的にどんな形の構成可能性も不可能にするように設計されてるみたいだよね。プラットフォームとしては最悪な点の一つだよ。きっと、どこかの純粋主義的な議論がこうさせたんだろうな。" userName="api" createdAt="2025/05/03 18:40:45" color="">}}




{{<matomeQuote body="今ってService Workers APIでこれができるようになってるんじゃないの？本質的にはブラウザ内のプロキシとしてサーバーにアクセスする感じでしょ。<br>https://developer.mozilla.org/en-US/docs/Web/API/Service_Wor..." userName="RenThraysk" createdAt="2025/05/04 13:05:44" color="#38d3d3">}}




{{<matomeQuote body="昔のSAP WebアプリでフレームとHTMLフォームだけのやつに苦労した思い出。リセットボタンばっか押して「戻る」は厳禁だった。あれはひどい。今のJavaScriptもあれだけど、XHRとかダイナミックHTMLは昔のフレーム乱用よりはマシになったよね。" userName="giantrobot" createdAt="2025/05/03 23:53:04" color="">}}




{{<matomeQuote body="まあ（知ってると思うけど）、文字通り’content’を持ってるよね<br>https://developer.mozilla.org/en-US/docs/Web/CSS/content" userName="hnick" createdAt="2025/05/04 00:46:47" color="">}}




{{<matomeQuote body="同じコンテンツを何度もDLすることになっても、消費者側には大した問題じゃないでしょ。共通コンテンツってヘッダーとかフッターとかサイドバーで、本文に比べたら小さいし。重さの主原因は画像とかスクリプト、CSSで、それらは重複させないんだから。共通テキストが大きいならiframeかJSで対処すればいい。実際、重複HTMLでサイトが激重になった例あったら教えてほしいな。" userName="iainmerrick" createdAt="2025/05/04 09:44:21" color="#38d3d3">}}




{{<matomeQuote body="＞ Iframesがコンテンツに合わせて広がらないって言うけど、実はそれ、元の計画の一部だったんだよ。<br>https://caniuse.com/iframe-seamless" userName="unilynx" createdAt="2025/05/03 19:37:38" color="#45d325">}}




{{<matomeQuote body="htmx.org の縮小版は51KBくらい（圧縮すると16KB）だよ。curlでサイズ測った結果がこれ。<br>＄ curl －－location －－silent ”https://unpkg.com/htmx.org@2.0.4” ｜ wc －c<br>  50917<br><br>＄ curl －－location －－silent ”https://unpkg.com/htmx.org@2.0.4” ｜ gzip －－best －－stdout ｜ wc －c<br>  16314" userName="gforce_de" createdAt="2025/05/04 11:51:51" color="">}}




{{<matomeQuote body="https://www.w3.org/TR/xhtml2/introduction.html＞ XHTML 2 は全然違うアプローチなんだ。すべての画像に長い説明がある前提で、画像とテキストを同等に扱ってる。XHTML 2 ではどんな要素でも ＠src 属性を持てて、そこにリソース（画像とか）を指定するとその要素の代わりに読み込まれるんだって。" userName="wizzwizz4" createdAt="2025/05/03 21:07:52" color="#ff33a1">}}




{{<matomeQuote body="この機能提案は HTML Imports って呼ばれてたんだ［1］。Web Components の取り組みの一部として作られたんだよ。HTML Imports は他のHTML文書にHTML文書を含めて再利用する方法なんだ。template タグのサポートとかも計画されてたみたい。<br>たしか、Google は提案された仕様をBlinkに実装したんだけど、他のベンダーはいろんな理由で尻込みしたんだ。Mozilla は実装の複雑さとかセキュリティの懸念、あとES6 modulesとの重複を心配してたらしい。ベンダーの支持が得られなくて、公式に廃止されちゃったんだって。<br>［1］ https://www.w3.org/TR/html-imports/" userName="throwup238" createdAt="2025/05/03 15:54:18" color="#ff5733">}}




{{<matomeQuote body="廃止理由の需要不足やベンダー消極的っていうのは納得いかないな。20年も待望されてるのに需要がないわけないし、ベンダーが実装までしたのに拒否した本当の理由を知りたいよ。JSでHTMLをクロスオリジンでインポートできるのに、HTMLタグだとセキュリティ問題になるっていうのも変じゃない？CORSで解決できる気がするけど。<br>［1］ https://frontendmasters.com/blog/seeking-an-answer-why-cant－..." userName="xg15" createdAt="2025/05/03 20:46:52" color="#ff33a1">}}




{{<matomeQuote body="複雑なのは、HTMLの読み込み順序っていう基本的な前提を壊すのが難しいからだよ。JSなら許されるけど、HTMLタグだとバグだらけになる。プリロードとか複雑なこと考える必要もあるし、iframeもあるしね。簡単なユースケースは数行でできるけど、それ以外の難しいケースを扱うのがめちゃくちゃ大変なんだよ。" userName="athrowaway3z" createdAt="2025/05/04 09:06:41" color="#ff33a1">}}




{{<matomeQuote body="この需要の低さに付け加えるかもしれないこととして：<br>1. ユーザーがJSを使う前提で開発されてるWebページなら、同じ結果を得る方法を簡単に実装できるんだ。<br>2. JSが動かないユーザーエージェント向けに開発されてるWebページは、おそらく何かしらインタラクションが欲しいから、すでにサーバーランタイムがあってこの機能を提供できるんだ。<br>2b. そして、もしユーザーインタラクションが全くないなら、それは多分静的なコンテンツサイトで、誰もHTMLでコンテンツを書いてないから、すでにこの機能を提供してるビルドステップがあるんだよ。" userName="NoahZuniga" createdAt="2025/05/04 07:49:28" color="#38d3d3">}}




{{<matomeQuote body="HTML Imports はbodyの中にマークアップを含められなかったんだよ。カスタム要素のための template 要素を参照するのにしか使えなかったんだ。" userName="mildred593" createdAt="2025/05/04 17:06:47" color="#785bff">}}




{{<matomeQuote body="JSファーストな開発者は、クライアント側でもサーバー側でも同じように動くものを求めてるんだよね。それで主流のフロントエンド開発コミュニティは、良いか悪いかは別としてJSファーストにシフトしたんだ。" userName="brundolf" createdAt="2025/05/04 05:18:05" color="">}}




{{<matomeQuote body="HTML Imports は似た方向性だったけど、ブログ記事が扱ってることとは違うんだ。HTMLは文書の特定の場所にインポートされて表示されるべきだよね。HTML Imports はJavaScriptなしではこれができなかったんだ。<br>詳細は https://github.com/whatwg/html/issues/2791#issuecomment－3112... を見てね。" userName="uallo" createdAt="2025/05/03 21:32:21" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="公平に言うと、それはかなり複雑だったよ。たしか、使うにはインポート後にJavaScriptを使って template をインスタンス化する必要があったんだ。include src=”myinclude.html” みたいなシンプルな感じじゃなかったんだよね。" userName="thayne" createdAt="2025/05/03 21:38:37" color="#38d3d3">}}




{{<matomeQuote body="caniuse.comによると、FFでさえconfig flagとしてこれを持ってたんだって。" userName="riedel" createdAt="2025/05/03 20:15:08" color="#ff33a1">}}




{{<matomeQuote body="正直、HTML Importsはこの記事が求めてるincludesよりずっと複雑だったんだよね。" userName="paulddraper" createdAt="2025/05/04 02:40:21" color="">}}




{{<matomeQuote body="Framesも基本的にHTMLインポートみたいなことできたんだよ。" userName="AtlasBarfed" createdAt="2025/05/03 20:37:56" color="">}}




{{<matomeQuote body="Netscape 4にはinflow layersっていう機能があってね、＜ILAYER SRC=included.html＞＜/ILAYER＞って書けたんだ。web.archive.orgのリンクもあるよ。" userName="Lammy" createdAt="2025/05/03 17:26:18" color="#ff33a1">}}




{{<matomeQuote body="俺が知ってる限りではね、SRC属性を変えるのは結構クラッシュしやすくて、その機能はすぐに無くなっちゃったんだ。(ベータ版でこれで遊んでたのを覚えてるんだけど、製品版では無くなってたんだよ。)" userName="masswerk" createdAt="2025/05/04 11:47:17" color="#785bff">}}




{{<matomeQuote body="ずっとILAYERって何で呼ばれてるんだろうって思ってたんだよね。教えてくれてありがとう。" userName="blorto" createdAt="2025/05/03 20:20:01" color="">}}




{{<matomeQuote body="この機能の名前はtransclusionだよ。Wikipediaのリンク。Project Xanaduの一部で、元々ハイパーテキストの重要な機能と考えられてたんだ。特にmediawikiはtransclusionをすごく活用してるよ。wikiがハイパーテキストの最も真の形だと感じることがあるね。" userName="Null-Set" createdAt="2025/05/03 15:12:33" color="#785bff">}}




{{<matomeQuote body="Ward Cunningham（Wikiの発明者）はtransclusionを第一にしたwikiを考案しようとしてた時期があってね、みんなが自分のwikiスペースを持ってtransclusionを社会的に使うみたいな。Federated Wikiのリンクもあるよ。でも、あまり普及しなかったんだ。" userName="jes5199" createdAt="2025/05/04 02:39:30" color="#45d325">}}




{{<matomeQuote body="俺はね、本当のtransclusionはもっとすごいと思うんだ。Xanaduでは、ある文書から抜粋した部分だけを別の文書に取り込めた。HTMLでこれをやろうとすると、CSSの解決が必要になる。一般的な場合は不明瞭だ。シンプルな＜include ...＞タグだと、ゲスト文書はホストのCSS環境内で機能するように設計される。もう1つのシンプルな答えはShadow DOMで、ほとんどの場合、ゲストが文書の他の部分に影響を与えずにスタイルを付けられる。この場合でもホストはゲストを修正するために一部のスタイルを入れられると思う。" userName="PaulHoule" createdAt="2025/05/04 15:24:45" color="#ff5c5c">}}




{{<matomeQuote body="これって、ずっと昔（HTML 4？）のちゃんとしたframesets（iframesじゃない方）がやるべきだったことじゃないの？少なくとも、framesetsはちゃんと自動拡張して、サイズも調整できたんだ。framesへの批判は多かったけど、Java API documentationみたいな役立つことにも使われてたよ。俺の意見では、デザイナーにとって柔軟性がなさすぎたのが残らなかった理由だと思う。情報ページには十分だったろうけど、かさばるスクロールバーとかでデザイナーのニーズに応えられなかった。今、framesetsをそのまま復活させるのは遅すぎる。モバイルで動かないだろうから。" userName="Linux-Fan" createdAt="2025/05/03 15:04:12" color="#38d3d3">}}




{{<matomeQuote body="frame setの問題はディープリンクができなかったことだよ。ブックマークやGoogleから来た人がナビゲーションのないページに取り残されちゃって、みんなJavaScriptでなんとかしようとしたけど、結局いい体験にはならなかったんだよね。" userName="johannes1234321" createdAt="2025/05/03 15:13:35" color="#ff5733">}}




{{<matomeQuote body="最近は逆に、ページが全部JavaScriptで動いてて、そもそもいい体験にならないこともあるよね。ちゃんとした”リンク”を取得するのに苦労したことが何度もあるよ。それにブラウザがアドレスバーを隠したがるし、それが本当にまだそんなに重要な機能なのかな？って疑問に思うことも。もちろん”当時は”これが重要な機能で、フレームをなくす理由の一つだったのは確かだけどね。 " userName="Linux-Fan" createdAt="2025/05/03 15:18:39" color="#ff5c5c">}}




{{<matomeQuote body="”Includes”機能はサーバーサイド、つまりウェブブラウザの外側で処理されるものだと考えられてるよ。HTMLはクライアントサイドで、本当にただのマークアップ構文であってプログラミング言語じゃない。記事が言うように、この問題はもう解決済み。HTMLで”includes”といえば、PHPの入門書で誰もが学ぶことだし、ほとんどのCMSでは、”includes”は”template partials”になって、ドキュメントで最初に説明されることの一つだよ。本当にHTML単体でincludesを利用できるようにする必要なんてないんだ。HTMLはCSSとJSがなきゃ何も面白くないしね。" userName="rchaud" createdAt="2025/05/03 15:03:05" color="#45d325">}}




{{<matomeQuote body="＞”Includes”機能はサーバーサイド、つまりウェブブラウザの外側で処理されるものだと考えられてるよ。っていうのは、クライアントサイドでincludesが起きちゃいけないって主張にはならないでしょ。実際、HTMLにはフレームやiframeっていう、これよりひどいバージョンがすでにあるしね。サーバーサイドincludesのクライアントサイド版は、みんながHTMLでやってることと自然にフィットすると思うな。" userName="naasking" createdAt="2025/05/03 15:52:53" color="#ff33a1">}}




{{<matomeQuote body="なんか変だなって思うのは、HTMLファイルってスクリプトとかフォント、画像、動画、スタイルとか、多分他にも色々含められるのに、HTML自身は含められないところかな。カスタム要素（＜include src=.../＞）を使えばコードで書けそうだし、似たようなGitHubリポジトリがあっても驚かないけどね。" userName="tgv" createdAt="2025/05/03 16:40:06" color="#ff5733">}}




{{<matomeQuote body="これに似たものを比較的最近作ったよ。もちろん欠点はJavaScriptが必要なことだけどね。<br>https://github.com/benstigsen/include.js" userName="benstigsen" createdAt="2025/05/04 12:34:45" color="#785bff">}}




{{<matomeQuote body="既存のカスタムコンポーネントも改良したんだ。これだよ： https://amc.melanie-de-la-salette.fr/polyfill.js" userName="mildred593" createdAt="2025/05/04 17:17:44" color="#ff5733">}}




{{<matomeQuote body="その通り！これ多くの学生にとってPHPの入門だよね。でも、なんで ＜include src=header.html/＞ はダメなんだろう？<br>画像とか、ページのまだ表示されてない部分のコンテンツとか、すでに非同期で読み込まれるものもあるのにさ。<br>＞HTMLは本当にただのマークアップ構文であって、プログラミング言語じゃない。<br>これ炎上狙いじゃない？ :) 各ブラウザエンジンがそれぞれ解釈する、宣言型言語だよ。" userName="cantSpellSober" createdAt="2025/05/03 15:26:12" color="#785bff">}}




{{<matomeQuote body="HTMLのMLって何のことか分かる？ 多分それが議論の核心だよね。HTMLをその名前を超えて進化させるつもりなのかな？" userName="gyesxnuibh" createdAt="2025/05/03 15:30:57" color="">}}




{{<matomeQuote body="もし「include」ってのがどうもマークアップっぽくないって問題なら、簡単な解決策があると思うんだ。他のタグにsrc属性を使うだけ。＜html src=”/some/page.html”＞とか、＜div src=”/some/div.html”＞とか、＜span src=”/some/span.html”＞とかね。<br>あるいは fragmentとか page とか、ドキュメントの部品みたいな名詞の新しいタグを作るか。きっと svg, img, script, video, iframe なんかよりマークアップらしくないなんてことはないはずだよ。" userName="Aloisius" createdAt="2025/05/03 17:47:02" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
