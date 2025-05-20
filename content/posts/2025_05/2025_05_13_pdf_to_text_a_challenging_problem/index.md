+++
date = '2025-05-13T00:00:00'
months = '2025/05'
draft = false
title = 'PDFからテキスト抽出、意外な難しさ'
tags = ["PDF", "テキスト化", "OCR", "プログラミング", "文書処理"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> PDFからテキスト抽出、意外な難しさ

引用元：[https://news.ycombinator.com/item?id=43973721](https://news.ycombinator.com/item?id=43973721)




{{<matomeQuote body="これ新しい、面白い、って思ったけど、後で昔何年もかけて得意になったのに全部忘れてたわ、って思ったことない？人生で成し遂げたこと全部忘れて新人みたいに感じちゃうんだけど、こういう記事で思い出すんだよね。<br>6、7年前にPDFとOCRでめっちゃクールなことやったの覚えてるわ。たぶん「tesseract」ってやつかな。" userName="90s_dev" createdAt="2025/05/13 18:18:39" color="#ff33a1">}}




{{<matomeQuote body="この形式に燃やされた合計何十年もの時間、もう二度と戻ってこないよ。いつになったらこの狂気は止まるんだ？" userName="hallman76" createdAt="2025/05/14 02:32:51" color="">}}




{{<matomeQuote body="こんな代替案が出てきたらね。<br>（１）１つのファイルに保存できる<br>（２）表、画像、紙に表示できるもの全部いける<br>（３）アニメーションとか折りたたみテキストとか、紙に表示できないものはない<br>（４）Javascriptも外部サイトへのアクセスもいらない<br>…ってことは、絶対無理ってことだね。<br>少なくとも、”web designers”が（３）を不可能にする前に、マーケターが（４）を不可能にする前にPDFが出てきて、まだラッキーだったってことだ。" userName="theamk" createdAt="2025/05/14 02:54:31" color="">}}




{{<matomeQuote body="見てみろ、Bitmapだ。<br>でもマジな話、あれってかなり簡単な条件セットだよ。本当の障壁は、PDF’sは不変だっていう心理的な誤謬だよ。" userName="protocolture" createdAt="2025/05/14 03:47:44" color="">}}




{{<matomeQuote body="”画面でも紙でも綺麗に見える”、”テキストをコンパクトに保存”、”複数ページ対応”も追加すべきだったね（全角括弧に変換）。簡単な条件だよ。DjVuの方を標準にしてたらよかったな。<br>”PDF’sは不変だ”についてだけど、あれは心理的な誤謬じゃなく、PDFの主要な利点だよ。もしmutableな形式が欲しいなら、odtとかrtfとかdocを選ぶね。”出力専用”形式なら、最新版のエディターアプリを使っても、結果が古いリーダーでも動くっていうのが可能になるんだ。これは多くの場面でかなり望ましいことだよ。" userName="theamk" createdAt="2025/05/14 04:09:10" color="#45d325">}}




{{<matomeQuote body="PDFsって実際は不変じゃないよ。Okularをいつも使って、PDFフォームの上に俺の”notes”（どこにでも置けるただのテキストだけど）を書いて、それを完全に記入済みの新しいPDFとして印刷してるんだ。手でやってるのは紙にサインするだけだよ。" userName="imtringued" createdAt="2025/05/14 09:34:36" color="">}}




{{<matomeQuote body="ここでの君の不変性の理解はちょっとずれてるな。PDFに注釈つけるたびに新しいバージョンができるんだよ。上書きしても構造が変わって新しいドキュメントになる。”the ship of Theseus.pdf”みたいだね。<br>.docや.txtと違って、PDFは”変更に抵抗する”ように設計されたっていう合意があるんだ。.txtで試せば分かるけど、変更削除してもmd5は変わらないままだからね。" userName="iLemming" createdAt="2025/05/15 01:54:04" color="#ff5733">}}




{{<matomeQuote body="Acrobat使ったことある？<br>”Acrobat Reader”じゃなくて、普通のAcrobat、一番人気のPDFエディターだよ。Adobeのだ。あれは絶対編集に”resist”しないよ。" userName="me-vs-cat" createdAt="2025/05/16 00:57:20" color="">}}




{{<matomeQuote body="君が言いたいことは分かってるけど、核心外してるよ。不変性ってのは、作成後に変更できず、変更は新しいオブジェクトになること。君は”well, look, I can modify this pdf and I can even undo my changes…”って言うけど、それは新しいファイルを作ってるだけ。PDFは構造が複雑でビット完璧な復元は難しい。<br>テキストと違って細かい可逆性は簡単じゃない。GitでPDFが全部別オブジェクトで保存されるの見れば分かる。注釈undoして保存しても、君の目には同じでもデジタルでは別のファイルだよ。" userName="iLemming" createdAt="2025/05/16 01:39:00" color="#ff5c5c">}}




{{<matomeQuote body="＞（３）アニメーションとか折りたたみテキストとか紙に表示できないものは含まない＜br＞＞（４）Javascriptとか外部サイトへのアクセスは不要です＜br＞で、それがさあ・・・ https://opensource.adobe.com/dc-acrobat-sdk-docs/library/jsa..." userName="dqv" createdAt="2025/05/14 05:39:32" color="">}}




{{<matomeQuote body="（ー１）ピクセル化されないベクター形式であること（０）どのＯＳでもどこでも完璧に再現されること（０．５）過去も未来も含めてタイポグラフィのエンジニアが望むすべてをサポートすること＜br＞ビットマップ形式は条項ー１から除外、Ｏｆｆｉｃｅファイル形式は条項０から失格、Ｍａｒｋｄｏｗｎは条項０．５を満たさない。それ以外だとＷｏｒｄの．ｄｏｃ形式が条項１ー４のほとんどをカバーしてる。" userName="numpad0" createdAt="2025/05/14 07:09:12" color="#45d325">}}




{{<matomeQuote body="＞（０）どのＯＳでもどこでも完璧に再現されること＜br＞誰かＨＴＭＬの場合なぜこうならないのか説明してくれない？印刷ページを模倣したウェブサイトがＦｉｒｅｆｏｘとＣｈｒｏｍｅの間で同じようにレンダリングされない状況によく遭遇するんだ。ここでの主な原因を理解したいな。ＣＳＳの単位は全部完全に定義されてたと思ってたんだけど？" userName="Timwi" createdAt="2025/05/14 07:52:23" color="#ff33a1">}}




{{<matomeQuote body="ＰＤＦが法的に不変であるかのように振る舞う人たちはＭＤ５比較なんてしてないよね。それに、それはこのファイル形式の意図ですらないと僕には思えるんだ、ほとんどは余分なものや後方互換性の副産物だよ。画像を移動して元の場所に戻すのがすごく難しいからって、誰も．ｄｏｃを不変だなんて言わないでしょ。この文脈では、みんなＰＤＦとして何かを保存して保管するのは、修正できないと思ってるからだ。でも正しく指摘されてるように、それは違うんだ。" userName="protocolture" createdAt="2025/05/16 01:58:40" color="#ff33a1">}}




{{<matomeQuote body="ｄｖｉ？ https://en.m.wikipedia.org/wiki/Device_independent_file_form..." userName="coderatlarge" createdAt="2025/05/14 03:27:14" color="">}}




{{<matomeQuote body="昔、電子リーダーｉＲｅｘでＰＤＦからテキストをコピーできず、ｐｏｐｐｌｅｒを改造した経験談。多段組みの読み順推測のため、ｔｅｓｓａｒａｃｔ作者のＯＣＲアルゴリズムを利用。ｐｏｐｐｌｅｒの古いＡＰＩの課題や、メンテナーとの調整の難しさ、ｋｐｄｆへの機能追加に触れ、今はｔｅｓｓａｒａｃｔ直接利用が良いと考察してる。" userName="bazzargh" createdAt="2025/05/13 20:10:37" color="#ff5733">}}




{{<matomeQuote body="なんでこれってEPUBでできないの？ファイル一個だし、ぜんぶzipにまとまってるし、javascriptはいらないけど入れられる。pdfみたいにマークアップとかフォームもいけるじゃん。" userName="majora2007" createdAt="2025/05/14 13:38:14" color="">}}




{{<matomeQuote body="まるで幼児と話してるみたい、はぁ。不変性ってのはね、”オブジェクトを変更できない”って意味じゃないんだ。”変更するには新しい（クローン）オブジェクトを作らなきゃいけない”ってことだよ。pdfが不変じゃないって言う君の説明は、不変性の考え方が間違ってる。多くのプログラミング言語の文字列は不変だけど、それは新しい文字列オブジェクトを作るってことなんだ。Clojureみたいな言語で基本が分かれば明確になるよ。" userName="iLemming" createdAt="2025/05/16 02:27:52" color="#ff5c5c">}}




{{<matomeQuote body="解凍ツールなしでは不変に見えるのは、出版ソフトがテキストをpdfに入れる典型的なやり方。どんなエディタでも簡単に変更できるpdfを作ることは可能。テキストや画像を編集・置換もできるよ。「紙で見る分には良さそう」ってのは、pdfフォーマットじゃなくてレンダリングエンジンの話。今じゃブラウザでjs使ってpdfをレンダリングしてるし、テキストはDOMでテキスト扱い。これで「pdfが優れてる」って主張は違うってよくわかるよ。" userName="harshreality" createdAt="2025/05/14 10:07:32" color="#ff5c5c">}}




{{<matomeQuote body="たぶんOSのフォントレンダリングが違うせいだろうね。" userName="djxfade" createdAt="2025/05/14 10:07:56" color="">}}




{{<matomeQuote body="＞ 適切なオブジェクト/テキストストリームを交換するだけでいつでもできる<br>あるいは右クリックして編集を選べばいいんだ。いくつかのpdfエディタで、テキストも画像の内容もいけるよ。" userName="me-vs-cat" createdAt="2025/05/14 16:00:19" color="">}}




{{<matomeQuote body="EPubはhtmlみたいに、リーダーが再フォーマットできるから、pdfみたいにドキュメントが固定されてないんだ。" userName="currency" createdAt="2025/05/14 17:48:00" color="#38d3d3">}}




{{<matomeQuote body="HTMLとCSSの一部を使えば、かなり近いことできるっしょ。Data URLなら単一ファイルの問題も解決できるし。" userName="ninalanyon" createdAt="2025/05/14 10:17:47" color="">}}




{{<matomeQuote body="PDFの「開発者ツール」が欲しいって話。HTMLのインスペクターみたいに、PDFのコード（コンテンツストリームとかテキストオペレーター）を見て、それが表示上のどの部分に対応するかを知りたいんだ。今のツールはオブジェクト単位までしか見れないから、もっと細かいレベルでPDFの中身を理解したいんだよね。HTMLみたいにソースとレンダリングを紐付けられるとマジ便利だと思う。" userName="svat" createdAt="2025/05/13 15:56:23" color="#785bff">}}




{{<matomeQuote body="MozillaのPDF.jsでPDFをブラウザに表示させると、結構近いことできるかもよ。たぶん、Tjが＜span＞になって、TJが＜span＞の集まりになる感じじゃないかな（＜canvas＞は使ってないと思うけど）。元ドキュメントに忠実じゃないと動かないだろうしね。" userName="kccqzy" createdAt="2025/05/13 17:48:48" color="">}}




{{<matomeQuote body="マジそれな！FOIAで受け取った文書を解析するのに使ったことあるよ。PDFのヘンな動きに対応するより、beautifulsoupでコード書く方が簡単な時あるんだよね。" userName="chaps" createdAt="2025/05/13 18:54:44" color="">}}




{{<matomeQuote body="cpdfってツール試してみてよ（念のため言うけど、これ俺が作ったやつ）。<br>cpdf -output-json -output-json-parse-content-streams in.pdf -o out.json<br>ってコマンドでJSONにできるから、そのJSONをいじって、<br>cpdf -j out.json -o out.pdf<br>でPDFに戻せるよ。ライブな双方向性はないけどね。" userName="whenc" createdAt="2025/05/13 16:01:51" color="">}}




{{<matomeQuote body="さっき紹介してもらったcpdf試したけど、求めてる「ライブな双方向性」はなかったわ。cpdfのJSON出力はPDFの中身を細かくしただけなんだよね。俺が知りたいのは、PDFの表示からそのコード部分へどう移動できるか、そしてそのコードがPDF上のどこに対応するかをどうやって理解できるかってことなんだよ。PDFの構造って複雑だからね。" userName="svat" createdAt="2025/05/13 16:23:06" color="#38d3d3">}}




{{<matomeQuote body="これ、俺にとってマジで役立ちそう。今さ、フォーマットが毎年ちょっとずつ変わる大きな機関の財務報告書がいっぱいあって、手で比較するの超めんどいんだよ。内容バラバラにして、どの年の報告書でも同じセクションを同じページに揃えられるツール探してたんだよね。これ、まさにそれかも。" userName="IIAOPSW" createdAt="2025/05/13 20:28:16" color="">}}




{{<matomeQuote body="オープンソースか無料ツール前提なんだろうけど、Acrobat Proも何年か前に使った時は、もうちょいでそれだったよ。ただ、ページを見るんじゃなくてコンテンツツリーを辿る逆パターンだったんだけど、ページ上のオブジェクトをハイライトする機能はあったんだ。コマンドレベルまでは見れなくて、オブジェクトとかストリームまでだったけどね。" userName="hnick" createdAt="2025/05/14 00:04:39" color="">}}




{{<matomeQuote body="このノートブック[0]見てみてよ。探してるものとはちょっと違うけど、PDFの描画オペレーションの「ライブ」インスペクター機能を提供してるんだってさ。[0]: https://observablehq.com/@player1537/pdf-utilities" userName="dleeftink" createdAt="2025/05/13 16:11:18" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="サンキュー、でも紹介してもらったノートブックどう使うのか全然分かんなかったよ。どこが「ライブ」インスペクターなのさ？PDFをただ「ops」と「args」に分解してるだけに見えるんだけど（単体じゃ意味ないし）、全然「ライブ」って感じじゃないんだけどな。PDF上の場所から対応するコード見つけるとか、その逆ってどうやるの？" userName="svat" createdAt="2025/05/13 16:31:00" color="">}}




{{<matomeQuote body="自分でPDFを読み込ませて、最初にページを選ぶと、そのページのopcodeを表示できるんだ。<br>操作は構造的にまとまってないけど、3つの整列された配列に分解されてるから、opcodeで好きにグループ化したり、座標としてクエリに使ったりできるよ（opsとargsの配列を組み合わせる感じ）。<br>ここでいう”ライブネス”ってのは、最初のパースされたPDFから複数の downstream cells（フィルターとか、グループ化とか、描画命令とか）を引き出せて、PDFファイルを入れ替えるとそれらが更新されるってことなんだって。" userName="dleeftink" createdAt="2025/05/13 16:50:33" color="">}}




{{<matomeQuote body="”I know this goes against the current trend / state-of-the-art of using vision models to basically “see” the PDF like a human and “read” the text, but it would be really nice to be able to actually understand what a PDF file contains.”<br>これに近いのをうちのTensorlakeで作ってるんだ（中の人だよ）。PDFを人間みたいに”見て”、テキストを”読む”だけじゃなくて、内容を”理解”できるやつ。PDFの内容って大体、tables, images, text, formulas, hand-writingとかだしね。<br>それで”PDF file contains”を理解できるのが、その理解する部分にとって大事（だと思う）なんだ。だからPDFをパースして、いろんなmodelsを動かしてmarkdown chunks/JSONを抽出してるんだ。そうすれば、実際のデータを他のapplications（AI agents, LLMs, またはぶっちゃけ好きなもの）に取り込めるようになるんだよ。<br>https://tensorlake.ai" userName="drguthals" createdAt="2025/05/14 15:50:13" color="">}}




{{<matomeQuote body="”PDF to Text”ってちょっと単純すぎると思うな。このカテゴリには実はいくつかの問題があるんだ：<br>1. documentsからの信頼できるOCR（search indexとかvector DBに入れるため）<br>2. structured data extraction（targeted valuesを抜き出す）<br>3. end-to-end document pipelines（例：mortgage applicationsの自動化）<br>Marginaliaは問題#1（OCR）を解決する必要があるけど、これは幸いなことにGemini Flashみたいなmodelsのおかげでどんどんcommoditizedされてるね。前のsolutionsの何分の1かのコストでOCR pipelinesをFlashに置き換えてるcompaniesを何社も見てきたけど、ほんとremarkableだよ。<br>問題#2と#3はもっとずっとtricky。raw OCR outputsからmission-critical use casesでprodにdeployedされたdocument pipelinesにするにはまだlarge gapがある。LLMsとVLMsはmagicじゃないし、100% automationを期待してる人はsurpriseを受ける羽目になるよ。<br>まだdatasetsをbuild and labelしたり、pipelinesをorchestrateしたり（classify → split → extract）、uncertaintyをdetectしてhuman-in-the-loopでcorrectしたり、fine-tuneしたり、他にもたくさん必要だよ。時間をかければ、時間の経過とともにfull automationにかなり近づけることは確かにできるけどね。時間とeffortがかかるよ。でもfutureはdefinitelyこのdirectionに向かってるよ。<br>Disclaimer: このspaceでcompaniesが問題をsolveするのを手助けするLLM doc processing companyを始めたよ（https://extend.ai）" userName="kbyatnal" createdAt="2025/05/13 18:00:14" color="#38d3d3">}}




{{<matomeQuote body="あと#4もあるね、many diverse classes of documents全般でreliable OCRとsemantics extraction、これはaccessibilityに関わること。これはhardなんだ。なぜなら：<br>1. business workflowと違って、often only deals with a few specific kinds of documentsなのと違って、userがどんなdocumentを持ってくるかyou never know。Delawareのbankruptcy casesのcourt documentsをprocessするappじゃなくて、abstract PDF readerを作ってるわけだからね。<br>2. textだけ（traditional OCRみたいに）じゃなくて、tables, page headers and footers, footnotes, headings, mathematicsなんかをrecognizeする必要がある。<br>3. Because this is for human consumption, you want to minimize errors as much as possible, which means not using OCR when not needed, and relying on the underlying text embedded within the PDF while still extracting semantics. This means you essentially need two different paths, when the PDF only consists of images and when there are content streams you can get some information from.<br>3.1. But the content streams may contain different text from what’s actually on the page, e.g. white-on-white text to hide information the user isn’t supposed to see, or diacritics emulation with commands that manually draw acute accents instead of using proper unicode diacritics (LaTeX works that way).<br>4. You’re likely running as a local app on the user’s (possibly very underpowered) device, and likely don’t have an associated server and subscription, so you can’t use any cloud AI models.<br>5. You need to support forms. Since the user is using accessibility software, presumably they can’t print and use a pen, so you need to handle the ones meant for printing too, not just the nice, spec-compatible ones.<br>これはまさにopen problemで、solvedにはeven remotely closeじゃないよ。People have been taking stabs at it for years, but all current solutions suck in some way, and there’s no single one that solves all 5 points correctly." userName="miki123211" createdAt="2025/05/13 19:38:13" color="#ff33a1">}}




{{<matomeQuote body="”replace their OCR pipelines with Flash for a fraction of the cost of previous solutions, it’s really quite remarkable.”<br>VLMがso unreliableなせいでcustom toolsを作らなきゃいけなかった人間としては言わせてもらうと：unprocessed imagesにVLMsを使うやつは、guard railsなしでLLMsをconsumersとdirectly interactさせる全てのproviders以上のpainを味わうことになるぞ。<br>They are very good at image labeling. They are ok at very simple documents, e.g. single column text, centered single level of headings, one image or table per page, etc. (which is what all the MVP demos show). They need another trillion parameters to become bad at complex documents with tables and images.<br>Right now they hallucinate so badly that you simply can’t use them for something as simple as a table with a heading at the top, data in the middle and a summary at the bottom." userName="noosphr" createdAt="2025/05/13 20:10:45" color="#45d325">}}




{{<matomeQuote body="OPと同じようなheader detectionのobstacles（and many other issues）にぶつかって、PDFsをMarkdownにprocessしようとhacking awayしてきたんだ。OCRはthese days fantasticだけど、documentのglobal structureをmaintainingするのはmuch trickier。Consistent HTMLはstill out of reach for large documentsみたい。複数passesのLLMを使ってdocument structureをextractして、それをin contextでpage-by-pass extractionするためにfeedingすることでMarkdownにしてるんだけど、half-decentなresultsが出始めてるところだよ。" userName="varunneal" createdAt="2025/05/13 18:40:54" color="">}}




{{<matomeQuote body="このproject試してみて。promising resultsが出てるから使ってるんだ。<br>https://github.com/matthsena/AlcheMark" userName="dstryr" createdAt="2025/05/13 23:44:45" color="">}}




{{<matomeQuote body="PDF一つで試してみたら、なんかcloud serviceにconnectしてるのにsurprisedだったんだ：<br>  2025-05-14 07:58:49,373 - urllib3.connectionpool - DEBUG - Starting new HTTPS connection (1): openaipublic.blob.core.windows.net:443<br>  2025-05-14 07:58:50,446 - urllib3.connectionpool - DEBUG - https://openaipublic.blob.core.windows.net:443 ”GET /encodings/o200k_base.tiktoken HTTP/1.1” 200 361 3922<br>The project’s READMEにはそんなことどこにもmentionしてなかったのに…" userName="aorth" createdAt="2025/05/14 05:05:45" color="">}}




{{<matomeQuote body="The project’s READMEには、tiktoken[0]を使ってるってmentionしてるよ。それはOpenAIがcreatedしたseparate projectなんだ。<br>tiktokenは、you use them the first timeする時にtoken modelsをdownloadsするんだけど、それはmentionしてないんだよね。It does cache the models, so you shouldn’t see more of those connections, if I’m understanding the code correctly.<br>[0] <br>" userName="degamad" createdAt="2025/05/14 06:26:37" color="">}}




{{<matomeQuote body="Appleで長年PDFテキスト抽出やってたんだけど，ジオメトリとクラスター分析がコツだった．これで単語と文字のスペースを見分けるんだ．多くのPDFには効くけど，種類が多すぎて微妙な時もあるね．今やるならOCRは避けて機械学習を使うかな．既知のテキストからPDF作って学習できるから自動化しやすいよ．" userName="herodotus" createdAt="2025/05/14 03:42:49" color="#ff33a1">}}




{{<matomeQuote body="もっといい解決策は，編集可能な元ドキュメントをPDFに埋め込むことだよ．LibreOfficeで簡単にできる．埋め込みは一般的にそんなに容量取らないし（よく圧縮されるからね），そうすればテキストとその意味について，はるかに良い情報が得られるんだ．既存のPDFリーダーでも全然問題なく使えるよ．" userName="dwheeler" createdAt="2025/05/13 16:22:32" color="#45d325">}}




{{<matomeQuote body="それはそうだけど，PDF作る人と使う人の利害が一致しないとダメだね．eーDiscoveryの分野では，証拠を提供する側がPDFにダンプするのはよくあることで，それは単に相手側の弁護士が情報を利用しにくくするためなんだ．お金がない側は処理に困って不利になる．だから，証拠データは機械可読フォーマットで提供を法律で義務付けるべきだ．単なる技術的な問題が裁判結果に影響するのはおかしい．" userName="kerkeslager" createdAt="2025/05/13 16:51:05" color="#785bff">}}




{{<matomeQuote body="＞これを違法にすることだよ：…倫理的な理由はないよ．<br><br>盗聴はともかく，法律分野では既に機械可読性が求められることが多いよ．GDPRとかね．物理的なドキュメントダンプも嫌われる．PDFが標準なのはフォーマット一貫性があるからで，機械可読性の難しさは補ってる．代替が進まないのは，PDF処理で事務所が稼げるからかもね．でもコスト問題なら，元データは機械可読形式（Excelとか）で出せって言われるだろうね．" userName="lurk2" createdAt="2025/05/14 00:38:07" color="#38d3d3">}}




{{<matomeQuote body="あなたの言ってること，よくわからないんだけど？PDFはほとんどのデータにとって機械可読なフォーマットじゃないし，元々の裁判費用を抑えることは常に重要だよ，だってそれが貧しい人にとって裁判を公平にするからね．" userName="kerkeslager" createdAt="2025/05/14 02:02:09" color="">}}




{{<matomeQuote body="私が言ってるのは，ほとんどの法域ではおそらく既にデータを機械可読にするよう求めてるってことだよ．でもPDFに出くわす場合，それは（裁判所が好まない）ドキュメントダンプじゃなくて，慣習とやる気のない怠惰が混ざった結果なんだ．" userName="lurk2" createdAt="2025/05/15 19:14:28" color="">}}




{{<matomeQuote body="あなたは互いに矛盾する2つのことを言ってるよ．機械可読性が求められてるか，PDFか，どっちかだよ．両立はしない．" userName="kerkeslager" createdAt="2025/05/16 04:58:19" color="#ff5733">}}




{{<matomeQuote body="AIがそれを解決してくれるのかな" userName="giovannibonetti" createdAt="2025/05/13 17:21:21" color="">}}




{{<matomeQuote body="専門のモデルもあるけど，Gemini 2.0 Flashみたいな一般的なやつでもすごく性能良いし安いよ．それらを使ってOCR結果をPDFの中に埋め込んで，元のコンテンツへのインデックスに使えるんだ．" userName="GaggiX" createdAt="2025/05/13 18:17:48" color="#ff5733">}}




{{<matomeQuote body="この問題、根本的に誤解してるよ。AIは既存技術に付加価値なく、問題はテキスト構造の欠如。汎用AIは精度不足で、特化学習必須。根本解決は、証拠を最初から構造化データで提供させること。PDF経由は無駄。" userName="kerkeslager" createdAt="2025/05/13 18:53:52" color="#ff5c5c">}}




{{<matomeQuote body="検索エンジンが既存PDFからテキスト抽出するより、PDFの作り方を教えるのがより良い解決策だって？この解決策がいつペイオフするんだか。" userName="lelandfe" createdAt="2025/05/13 17:25:21" color="">}}




{{<matomeQuote body="Microsoftはこの問題にかなり貢献してるよ。ExcelにはPDFにエクスポートする機能があるのに、逆がないのはなんで？あのエクスポート機能、夏休みのインターンが2週間で仕上げて二度と関わらなかった感じするよね。" userName="chaps" createdAt="2025/05/13 18:58:02" color="">}}




{{<matomeQuote body="逆の機能、あるにはあるんだよ。理論上、ExcelでPDFから表データを抽出できる（注意：Windows版だけ。macOS版にはない）。実際は、めちゃくちゃ信頼性低いことが分かった。これは、おそらくPDFにテーブルをテーブルとして意味的に定義するオプションのメタデータがないせいだと思う。レンダリングすると表に見えるけど、そう定義するものが何もない。ただのグラフィック要素とテキスト要素が集まって、結果的に表みたいに見えてるだけなんだ。" userName="bartread" createdAt="2025/05/14 03:24:49" color="#38d3d3">}}




{{<matomeQuote body="そうそう。”extremely unreliable”って部分が最悪なんだよ。FOIAで受け取るエクスポートの中には、何千ページもあるやつもあって、信頼性の低さが本当にあっという間に compounding するんだ。フラストレーション溜まるよ。だって、MicrosoftにはPDFに対して、そんな問題をなくすためにできることたくさんあるのにさ。でも、いつも改行とか全然考慮してないナイーブな実装なんだよな。" userName="chaps" createdAt="2025/05/15 18:16:37" color="#45d325">}}




{{<matomeQuote body="だってそうしたら、”Excelが作ったPDF”と”本物のPDF”っていう2種類のフォーマットができちゃうじゃん。同じ拡張子なのにさ。そしたらそれ自体がMicrosoftにとっても他の誰にとっても別の問題の缶詰（can of worms）になっちゃうよ。" userName="mattigames" createdAt="2025/05/13 21:40:09" color="">}}




{{<matomeQuote body="ハッ、違うね。20万フォーマットから20万1フォーマットになるだけだよ。浅いxkcdネタは出ていけ！" userName="chaps" createdAt="2025/05/14 17:15:20" color="">}}




{{<matomeQuote body="それはそうだけど、ソースドキュメントがレンダリングされたPDFの内容と勝手に違う可能性っていう脆弱性も開いちゃうんだよ。" userName="layer8" createdAt="2025/05/13 16:26:52" color="">}}




{{<matomeQuote body="問題の90%はレガシーなPDFだろうね。うちの会社には何千もあるよ。ひどいスキャンだったり、AdobeのOCRが埋め込まれてたり、ほとんどがOCRなしだったり。" userName="carabiner" createdAt="2025/05/13 17:09:42" color="#45d325">}}




{{<matomeQuote body="確かにね、PDFが作られた元のドキュメントにアクセスできるなら、それが一番良い方法だよ。でも大体の場合、そんなコントロールはできないんだよね。" userName="yxhuvud" createdAt="2025/05/13 18:41:53" color="#ff5c5c">}}




{{<matomeQuote body="見て見て、このPDFなんだけどさ、実は.txtファイルなんだ。拡張子を.pdfにして保存すればPDFビューアで開けるし、テキストエディタで中身もいじれるんだぜ。このテキストファイルを編集すれば、PDFを開いたときに表示される文字とか、フォント、サイズ、行間、1行の最大文字数、1ページあたりの行数、紙の幅や高さ、縦向きか横向きまで変えられるんだ。<br>PDFのソースコードってわかる？こんな感じなんだよ。<br>（PDFのソースコード例は省略）" userName="1vuio0pswjnm7" createdAt="2025/05/13 18:28:08" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="PDFってバイナリのデータも埋め込めるんだよ。もともとテキストのためじゃなくて、レイアウトとかグラフィックのために作られたものなんだ。さっきの例はわかりやすいけど、実際には文字がバラバラにエンコードされてたり、単語ごと、文字ごとにバラバラに配置されてたりするんだぜ。" userName="swsieber" createdAt="2025/05/13 18:32:55" color="#ff5c5c">}}




{{<matomeQuote body="フォントによってはね、見た目の文字と実際の文字コードが違うこともあるんだ。例えば“PDF”って書いてあっても、中身は“1#F”みたいなコードだったり。これはレンダリングして見るか、OCRかけないと正確にはわからないんだよね。きれいなファイルなら問題ないけど、現実にはそうじゃないことも多いんだ。" userName="hnick" createdAt="2025/05/14 00:12:37" color="#785bff">}}




{{<matomeQuote body="ほら、だからまともなものってできないんだよ。" userName="90s_dev" createdAt="2025/05/14 03:37:16" color="">}}




{{<matomeQuote body="“PDF”は“Portable Document Format”の略だよ。Adobeの公式ドキュメントには「PDFファイルは7ビットASCIIファイルで、画像や特殊文字も含めASCII文字セットで記述するから、色々な環境でポータブルだよ」って書いてあるんだ。" userName="1vuio0pswjnm7" createdAt="2025/05/13 18:47:35" color="">}}




{{<matomeQuote body="「PDFファイルはASCII文字セットを使う」って？へえ、じゃあPDFのソースコードって簡単に印刷できるの？" userName="normie3000" createdAt="2025/05/14 02:18:32" color="">}}




{{<matomeQuote body="まあでも、ほとんどのPDFは圧縮されてたりバイナリデータを含んでるんだ。qpdfみたいなツールを使えば、同じ内容のASCII版PDFに変換することはできるけどね。" userName="gpvos" createdAt="2025/05/14 06:35:18" color="">}}




{{<matomeQuote body="最初のコメントのはさ、“Hello World”みたいなすごく簡単なPDFなんだよ。最近のPDFはほとんどオブジェクトがdeflateで圧縮されてるし、さらにオブジェクトストリームの中にまとめられてたりして、さらに圧縮されてることも多いんだ。だからテキストエディタでオブジェクトを探そうとしても見つからないんだよ。" userName="jimjimjim" createdAt="2025/05/14 04:36:38" color="#785bff">}}




{{<matomeQuote body="テキスト抽出の難しさがよくわかるPDFとして、この記事（https://academic.oup.com/auk/article/126/4/717/5148354）を見てみてよ。1ページ目がすごくてさ、2カラムなのに真ん中にテキストが割り込んでたり、行の長さやインデントが変わったりするんだ。ページごとにヘッダーが変わったり、章のタイトルもバラバラだったりね。段落にスペースがなかったり、最初の行がインデントされてなかったりもするんだ。もう全部入りって感じ。" userName="ted_dunning" createdAt="2025/05/13 17:31:28" color="#ff5733">}}




{{<matomeQuote body="MacOSのCoreGraphics APIだと、PDFのテキストはエンコードされた順に出てくるんだ。95%くらいはこれでうまくいくよ。ワードプロセッサみたいな元のアプリがテキストを順番にPDFに書き込んでる場合は、テキストの並びも正しいことが多いんだ。でもヘッダーとかフッターは、どの順番で書き込まれたかわからないから、出てくる順序は予測できないね。" userName="JKCalhoun" createdAt="2025/05/13 17:42:07" color="#38d3d3">}}




{{<matomeQuote body="そうなんだよ、PDFからテキスト、特に構造化されたのを取り出すのはほんと大変だよね。HTMLみたいに簡単じゃないんだ。<br>テーブルもただのグラフィックとテキストの寄せ集めみたいなPDFが多いんだよ。表示されて初めてテーブルだって分かる感じ。<br>俺はPoppler PDF utilsでPDFをHTMLに変換して、HTML要素のx-coordinateとか使ってテーブルデータを抽出してる。ちょっと泥臭いけど、プレーンテキストよりは信頼できるんだ。" userName="bartread" createdAt="2025/05/13 15:38:51" color="#ff5c5c">}}




{{<matomeQuote body="ウェブページ＋BeautifulSoupみたいにPDFからデータ抽出できないのがイライラして、そういうのが（ kinda ）できるライブラリを作っちゃったんだ[0]。他にも色々変なことしてるけど、メインの目的はもっと「人間らしい」操作方法。例えば、`page.find(’text:bold:contains(“Summary”).below().extract_text()` みたいにね。<br>あと、PDFってそれぞれが独自の悪夢みたいなもんだから、抽出が大変な例を集めて、ハウツーライブラリの基礎にしようともしてるんだ[1]。[0] https://jsoma.github.io/natural-pdf/[1] https://badpdfs.com/" userName="spacecaps" createdAt="2025/05/14 13:38:55" color="#ff33a1">}}




{{<matomeQuote body="俺のお気に入りはね、（公式の、政府の）文書で、表示されるテキストとは全く違うテキストが、普通のテキスト抽出で出てくるやつなんだよ。。" userName="yxhuvud" createdAt="2025/05/13 18:45:12" color="">}}




{{<matomeQuote body="いつか自分の data wrangling ソフト用に、PDFから表形式のデータを取り出せるようになりたいんだ。もしPDFからテーブルを抽出できる、C++アプリに統合できて、無料か数百ドル以下のライブラリ知ってる人いたら、教えてください！" userName="hermitcrab" createdAt="2025/05/13 19:21:09" color="">}}




{{<matomeQuote body="pdfplumber はテーブル抽出にすごくいいんだけど、Pythonなんだよね。" userName="______" createdAt="2025/05/13 23:28:32" color="">}}




{{<matomeQuote body="PDFって本来 markup / xml みたいなフォーマットで、仕様は公開されてるよ。<br>同じPDFでも色々なアプリで何通りも作れちゃうのが難しいところ。作成アプリが情報をどう扱うかで出力されるPDFも変わるんだ。<br>既成のツールなら cisdem みたいなのが結構使えるらしいよ。構造化データ対応を謳ってるツールは多いけど、自分の用途に合うか確認してみてね。" userName="j45" createdAt="2025/05/13 15:45:44" color="#ff5733">}}




{{<matomeQuote body="＞ PDFは本来 markup / xml 形式<br>これは間違いだよ。PDFはオブジェクトグラフで、命令型の描画指示とか色々含んでるんだ。上に構造情報（HTMLの文書構造みたいな）を追加する方法はあるけど、それは完全にオプションで補助的な metadata に過ぎないから、PDFフォーマットの核じゃないんだ。" userName="layer8" createdAt="2025/05/13 16:16:35" color="#ff33a1">}}




{{<matomeQuote body="訂正ありがとう。PDFを手書きした経験から言うと、PDFの構造は階層化されてて、概念的に markup 言語や DOM, JSON, YAML にすごく似てるように感じるんだ。「＜＜」「＞＞」とか使うのもね。<br>その構造がPDF作成方法の多様さにつながって、テキスト抽出が難しい理由なんだと思う。PDFを手書きで学ぶのは面白いよ。" userName="j45" createdAt="2025/05/13 22:01:57" color="#ff33a1">}}




{{<matomeQuote body="Markup はテキストに属性（スタイル、構造情報など）で「印付け」することで、ベースはプレーンテキストなんだ。HTML や XML, TeX, Troff, Markdown がそう。markup を剥がせばテキストだけに戻せる。<br>でもPDFはそうじゃないんだよ。<br>JSON や YAML と比較してたけど、あれらは markup 言語じゃないんだ（[0]を見て）。HTMLも DOM じゃないよ。[0] https://stackoverflow.com/a/18928199" userName="layer8" createdAt="2025/05/13 23:48:09" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
