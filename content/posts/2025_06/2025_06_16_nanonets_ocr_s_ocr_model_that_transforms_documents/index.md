+++
date = '2025-06-16T00:00:00'
months = '2025/06'
draft = false
title = '紙の文書が構造化データに！ PDFや画像をMarkdown変換するOCRモデル Nanonets-OCR-sが登場！'
tags = ["AI", "OCR", "Markdown", "文書処理", "構造化データ"]
featureimage = 'thumbnails/green4.jpg'
+++

> 紙の文書が構造化データに！ PDFや画像をMarkdown変換するOCRモデル Nanonets-OCR-sが登場！

引用元：[https://news.ycombinator.com/item?id=44287043](https://news.ycombinator.com/item?id=44287043)




{{<matomeQuote body="追記だけど、Nanonetsで働いてるよ！<br>Nanonets-OCR-sについて共有できて嬉しいな。これはパワフルで軽量な（3B）VLMモデルで、文書を綺麗で構造化されたMarkdownに変換してくれるんだ。文書構造とか、テーブル、方程式、画像、プロット、ウォーターマーク、チェックボックスなんかのコンテンツのコンテキストを理解するように学習されてるんだよ。<br>主な機能としては、LaTeXの方程式認識（$...$と$$...$$を区別してLaTeXに変換）、画像の説明（＜img＞タグで画像の説明をつける、ロゴやグラフも対応）、署名検出（署名を見つけて＜signature＞ブロックにタグ付け）、ウォーターマーク抽出（ウォーターマークのテキストを＜watermark＞タグに入れる）、スマートチェックボックス＆ラジオボタン処理（Unicode記号に変換）、複雑なテーブル抽出（構造を維持してMarkdownとHTML両方出力）があるよ。<br>Huggingface、GitHub、試すならここを見てね：https://huggingface.co/nanonets/Nanonets-OCR-s<br>ColabでDocextと一緒に試すなら：https://github.com/NanoNets/docext/blob/main/PDF2MD_README.m..." userName="PixelPanda" createdAt="2025/06/16 06:14:56" color="#ff33a1">}}




{{<matomeQuote body="Docextの正しいリンクはこっちだよ：https://github.com/NanoNets/docext/blob/main/PDF2MD_README.m..." userName="mvac" createdAt="2025/06/16 10:44:45" color="">}}




{{<matomeQuote body="これって（多分下流のLLMの助けも借りて）レストランのメニューの写真とかPDFを、あるスキーマに準拠したJSONファイルにパースするのに使えるかな？それともそういうケースでは、もっと大きくてホストされてるMultimodal LLMの方がうまくいくかな？" userName="RicoElectrico" createdAt="2025/06/16 19:11:01" color="#38d3d3">}}




{{<matomeQuote body="これのおかげで、ずっとやりたかったことができるようになった感じ！印刷された文書をスキャンして、構造化されたpdf（画像のコンテナじゃないpdf）を生成できるようになったよ。" userName="arkh" createdAt="2025/06/17 09:17:37" color="">}}




{{<matomeQuote body="これ、雑誌のレイアウトにも対応できるかな？テキストが色んな角度で配置されてたりするかなりランダムなレイアウトを追えるものをまだ見たことがないんだ。" userName="wisdomseaker" createdAt="2025/06/17 07:14:06" color="#785bff">}}




{{<matomeQuote body="精度は、より大きなモデルの方が良いか、スケールすると思う？それとも、もし改善があるとしても、3B VLMモデルと比べて僅かなものかな？" userName="uselesswords" createdAt="2025/06/17 14:15:14" color="#ff33a1">}}




{{<matomeQuote body="使ってるLLMでハルシネーションは起こるの？" userName="gibsonf1" createdAt="2025/06/16 19:58:37" color="#45d325">}}




{{<matomeQuote body="時々ね。Huggingfaceのデモに、ありえない詳細を含む画像[1]を食わせてみたら、「Page 1000000000000」ってOCRしたんだけど、ゼロが一つ余計についてたんだ。<br>正直、逆にゼロが多すぎて繰り返しペナルティが効いて、ゼロが少なくなると思ってたんだけど、そうじゃないみたい。だから、文書が1兆ページあったりするなら、このモデルは避けた方がいいかもね。<br>それ以外では、しっかりした仕事をしてくれたよ。テーブルのOCRなんかは、もっとひどい попыткуも見たことあるしね。<br>[1] https://imgur.com/a/8rJeHf8" userName="michaelt" createdAt="2025/06/16 22:47:31" color="#45d325">}}




{{<matomeQuote body="ベースモデルはQwen2.5-VL-3Bで、発表によると「モデルはハルシネーションを起こす可能性がある」ってのが制限として挙げられてるよ。" userName="nattaylor" createdAt="2025/06/16 20:34:02" color="#ff33a1">}}




{{<matomeQuote body="PDFからの「ソース」テキストが実際にハルシネーションする可能性があるって、ちょっと怖いね。" userName="gibsonf1" createdAt="2025/06/16 22:44:50" color="#ff33a1">}}




{{<matomeQuote body="入力がPDFじゃなくて画像だから、別に意外でもないよね。" userName="prats226" createdAt="2025/06/16 23:55:33" color="">}}




{{<matomeQuote body="画像自体を抽出できる機能はあるの？それとも後で別でやる感じ？" userName="generalizations" createdAt="2025/06/16 16:25:34" color="">}}




{{<matomeQuote body="PDFから画像を抜き出すだけなら、LLMいらないツールいっぱいあるよ。" userName="j45" createdAt="2025/06/16 20:09:15" color="">}}




{{<matomeQuote body="てか、理想的には、生成されたMarkdownが文書の正しい位置にある正しい画像を参照できることだよね。それ言ってる？なら、そういうツールは知らないな。" userName="generalizations" createdAt="2025/06/16 20:15:32" color="">}}




{{<matomeQuote body="これ、ローカルでPDFに実行するPowershellスクリプト書いたよ。 https:＼＼gist.github.com＼kordless＼652234bf0b32b02e39cef32c71e... 動くけど、古いGPU (Nvidia 1080 8GB) だと超遅い。1ページ5分以上かかってるかも。<br>編集：これ使ったPDF→Markdown変換ツール、Cloud Run (GPUサポート付き) でホストしてるやつ試したい人いたら教えて。あと1時間くらいでできてここにリンク貼るね。" userName="kordlessagain" createdAt="2025/06/16 16:15:25" color="#785bff">}}




{{<matomeQuote body="報告！これのサンプル出力だよ。https:＼＼www.sidis.net＼animate.pdf<br>こんな感じ。画像の説明も出てる。<br>目次の出力もあるよ。（リンクしたPDFとはちょっと違うコピー使ったけど）<br>超遅いのは別として、これは謳い文句通りにかなり良い感じみたいだよ。" userName="kordlessagain" createdAt="2025/06/16 17:22:52" color="#45d325">}}




{{<matomeQuote body="オッケー、作ったよ。でも色々あって今朝テストしてる（多分まだ壊れてるけどコードは全部ある） https:＼＼github.com＼kordless＼gnosis-ocr" userName="kordlessagain" createdAt="2025/06/17 13:46:23" color="#38d3d3">}}




{{<matomeQuote body="昔のWordやPowerPoint文書を読み込んで、要素を他の形式で再利用できる標準形式に変換するものを探してたんだ。これはそのシステム構築の重要な要素になりそう！<br>あとは要素を簡単にアーカイブ、引っ張ってこれるカタログ、アーカイブ、ヒストリアン機能が必要だね。素晴らしい仕事だよ！" userName="el_don_almighty" createdAt="2025/06/16 13:11:39" color="#ff5733">}}




{{<matomeQuote body="unoconvとかpandocでまずやってみて、その後にLLMでプレーンテキスト変換したやつをクリーンアップするんじゃダメなの？" userName="pxc" createdAt="2025/06/16 16:47:23" color="">}}




{{<matomeQuote body="え、どの時代の話？DOCXとかPPTXってXMLをzipしただけじゃん、結構普通だと思うけど。" userName="toledocavani" createdAt="2025/06/17 13:57:21" color="">}}




{{<matomeQuote body="こういうモデルがMarkdownばっか狙ってるの、ちょっとなぁ。<br>もっとちゃんと構造化されてて仕様がある方がいいじゃん。<br>Markdownって種類いっぱいあるし、脚注とか参考文献とか図とか、対応イマイチなんだよね。" userName="ks2048" createdAt="2025/06/16 12:56:21" color="">}}




{{<matomeQuote body="実はさ、モデルはMarkdown変換と同時に意味タグ付けもするように学習させてるんだ。<br>例えば、数式はLaTeXで抽出したり、画像は`＜img＞`タグで説明入れたりしてるよ。<br>`＜signature＞`とか`＜watermark＞`とか`＜page_number＞`もそう。<br>複雑なテーブルはMarkdownじゃなくてHTMLテーブルで出すんだ。" userName="souvik3333" createdAt="2025/06/16 13:30:33" color="#45d325">}}




{{<matomeQuote body="XMLは考えた？例えばTEIとか、文書のマークアップだとめちゃくちゃ頑丈で枯れてる（成熟してる）んだけど。" userName="mgr86" createdAt="2025/06/16 14:22:51" color="">}}




{{<matomeQuote body="ああ、分かるわ。<br>俺、学術出版関係なんだけど、XML好きな人たちは減ってるけど、文書マークアップには今も最高だと思うよ。<br>それに、アメリカとかEUの政府データとか、XMLめっちゃ使ってるし。<br>Nanonets-OCRのいいお客さんになるかもね。<br>TEIもいいと思うな、他のフォーマットへの変換ツールも結構あるし。" userName="mgr86" createdAt="2025/06/16 15:03:46" color="#45d325">}}




{{<matomeQuote body="MyST Markdown (https://mystmd.org) ってやつ、見てみて！<br>学術出版だとMyST使われてるよ。<br>例えばCurvenote通したhttps://www.elementalmicroscopy.com/ とか。<br>（MySTに貢献してる者です）" userName="agoose77" createdAt="2025/06/16 17:26:33" color="#38d3d3">}}




{{<matomeQuote body="最初からカスタムタグとか拡張性が全部入ってるっぽいRSTじゃなくて、なんでMySTが流行ったか知ってる？" userName="viraptor" createdAt="2025/06/16 20:59:21" color="">}}




{{<matomeQuote body="MyST Markdown（同名のDocument Engineとは別ね）はReSTに影響されてるんだ。<br>ReST使う人が最初に困るとこ（Markdownじゃない！）を解決するためにできたんだよ。<br>MyST Markdownを解析するツールは、ReSTを入力とするSphinxの上で作られたんだ。<br>今じゃ、新しいSphinxユーザーのほとんどがMyST Markdown使ってると思う（データはないけどね！）。<br>その後、Jupyter Bookプロジェクトは、もっとユーザー向けでモダンなツールを使った新しいDocument Engine作る方向に変わったんだ。" userName="agoose77" createdAt="2025/06/17 10:44:13" color="#785bff">}}




{{<matomeQuote body="もしかしたら、epubもありかもね。あれ、xhtmlだし。" userName="jxramos" createdAt="2025/06/16 17:17:22" color="">}}




{{<matomeQuote body="構造化文書ならXMLの方が絶対いいのに、せっかく構造抽出モデル作ったのに表現力劣るMarkdown選ぶとか、業界で昔の知識が共有されてないんじゃね？って思うわ。" userName="lukev" createdAt="2025/06/16 21:15:30" color="">}}




{{<matomeQuote body="それは出力の使い方によると思うな。LLMに食わせるなら、トークン化しやすいし、LLMが学習してて、トークン少ないMarkdownがいいんじゃね？プログラムでパースしたいならXMLとかのがいいかもだけどさ。" userName="prats226" createdAt="2025/06/17 00:00:11" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="脚注は最後の行に普通のテキストとして出てくるよ。" userName="souvik3333" createdAt="2025/06/16 14:28:34" color="">}}




{{<matomeQuote body="じゃあ脚注は手動でリンクすんの？Pandocみたいにマークアップする方法とか考えなかったの？脚注よくあるし、マークアップないと分かりにくいよ。" userName="jtbayly" createdAt="2025/06/16 22:00:57" color="">}}




{{<matomeQuote body="宣伝しまくりだけど、MyST Markdownも見てみて！脚注も構造化オブジェクトとして扱えるんだ。URL: https://mystmd.org" userName="agoose77" createdAt="2025/06/17 10:45:06" color="#45d325">}}




{{<matomeQuote body="LLM OCRより「構造化Markdown」ってのに期待したんだけど、単に要素にタグ付けるだけかー。LLM向けにはいいけど、それ以外だと微妙っぽいね。" userName="starkparker" createdAt="2025/06/16 16:49:51" color="">}}




{{<matomeQuote body="構造化Markdownに興味あるならMyST Markdown見てみてよ。まさに構造化Markdownを目指してるんだ。URL: https://mystmd.org" userName="agoose77" createdAt="2025/06/16 17:27:01" color="#ff5c5c">}}




{{<matomeQuote body="Shipibo→スペイン語辞書をLLMでShipibo→英語に翻訳しようとしてて、2カラムとか変な改行、Shipiboとスペイン語混ざってて苦労してるんだ。スキャンも悪いし、これ試してみる必要あるかもな。" userName="temp0826" createdAt="2025/06/16 17:19:42" color="">}}




{{<matomeQuote body="Datalab/Marker https://github.com/datalab-to/marker と比べてどう？色々試したけど、これが一番良かったんだ（完璧じゃないけどさ）。" userName="mvac" createdAt="2025/06/16 10:43:10" color="#ff5733">}}




{{<matomeQuote body="Nanonets-OCR-s、複雑な文書でもめちゃくちゃ使えるって体験談！数学とコードが混ざったやつとかね。Fortranの古い論文を試したんだけど、Markerだとインライン数式とかコードブロックがうまくOCRできなかったんだよ。例えばこのページ、https://imgur.com/a/Q7UYIfW<br>Markerでやったらインラインの$\_sigma\_0$が「＜sup＞s＜/sup＞ 0」とか、$f(t)$が「f~~t*!」みたいになっちゃった。でも、このモデルはどっちもちゃんと認識してくれたんだ！" userName="nxobject" createdAt="2025/06/16 14:57:51" color="#45d325">}}




{{<matomeQuote body="Marker作った者だけど、その画像、最新バージョン(1.7.5)で試したけど、言われてる問題は起きなかったよ。設定なしでもforce\_ocrつけても試したけど、両方で問題なかったんだ。" userName="vikp" createdAt="2025/06/17 01:36:30" color="#38d3d3">}}




{{<matomeQuote body="返信ありがとう！このワークフローは本当にうまくいくといいなと思ってて、Markerには他の用途でいつもお世話になってるからね。今、Datalabのオンラインプレイグラウンドでデフォルト設定で使ってるんだけど、これでインライン数式って認識されるようになってる？" userName="nxobject" createdAt="2025/06/18 01:28:16" color="">}}




{{<matomeQuote body="PDFを使ってるんだよね？画像じゃなくて？PDFならインライン数式を認識させるにはforce ocrかformat linesの設定が必要だよ（画像なら全部OCRするから設定いらない）。<br>今プレイグラウンドの改善中で、明日大きなアップデートがあるんだ！format linesがデフォルトになる予定だよ。嬉しい言葉ありがとう！最近まで一人だったんだけど、チームも大きくなってるから、これからどんどん問題解決していくよ。" userName="vikp" createdAt="2025/06/18 02:41:44" color="#ff33a1">}}




{{<matomeQuote body="完璧！ちゃんとできたよ！<br>このプロジェクトにかけてきた時間に感謝してるよ。私の隠れた目標の一つは、古いシステムの技術文書とかプログラミング環境をLLMがアクセスできるようにして、retro computing のプログラミングにも現代の生産性の向上を取り入れることなんだ。きっと他にも同じようなこと考えてる人、たくさんいると思うよ！" userName="nxobject" createdAt="2025/06/20 12:40:36" color="#ff5c5c">}}




{{<matomeQuote body="私も今ちょうど自分で色々なツールを比較検討し始めたところなんだ。もし手元にリストがあれば、あなたが検討した候補を教えてもらえると嬉しいな。" userName="wittjeff" createdAt="2025/06/16 14:00:27" color="">}}




{{<matomeQuote body="docling (https://github.com/docling-project/docling) と比べたらどうなの？" userName="ZQ-Dev8" createdAt="2025/06/16 16:26:58" color="">}}




{{<matomeQuote body="Llamaparse、LLMWhisperer、Marker、Reducto と比べたらどうなるのか知りたいなー。誰か比較した人いる？" userName="constantinum" createdAt="2025/06/16 13:35:26" color="">}}




{{<matomeQuote body="英語以外のテキストだとどうなるのか興味あるな。LLMベースのOCRソリューションって、他の言語になると従来のツールよりかなり劣るって聞いたことがあるんだけど。" userName="silversmith" createdAt="2025/06/16 06:30:57" color="">}}




{{<matomeQuote body="それ、聞いた話？それとも実際に使ってみた経験？私の経験では全然違うよ！Google TranslateとChatGPTで画像を試すと、ChatGPTの方がほぼいつも優れてる。日本語の手書きメニューもかなりうまく翻訳できるし、料理の説明とか文脈も追加してくれるっていうメリットもあるんだ。" userName="wickedsight" createdAt="2025/06/16 07:25:13" color="#ff5733">}}




{{<matomeQuote body="ローカルLLM OCRにパッシブに興味あるんだよね。いくつかアイデアがあるからさ。前にも試したけど、最近の知識は伝聞ばっか。誰かが「これマジで使えるぜ！」って叫ぶまで、あんまり時間かけたくないんだ。chatgptみたいな大手商用サービスなら、あの圧倒的なパワー使ってるからうまくいくと思うけどね。" userName="silversmith" createdAt="2025/06/16 08:59:20" color="">}}




{{<matomeQuote body="こういうモデルって、多言語対応って書いてないと、現実の英語以外のPDFには全然使えないんだよね。" userName="raus22" createdAt="2025/06/16 06:33:52" color="">}}




{{<matomeQuote body="やあ、このモデルの作者だよ。主に英語の文書で学習させたから、メイン言語は英語って書いてるんだ。でも、学習データには中国語と様々なヨーロッパ言語も少しだけ含んでるよ。それにベースモデルのQwen-2.5-VL-3B自体が多言語対応なんだ。Redditで誰かが中国語でも動いたって言ってたよ：<br>https://www.reddit.com/r/LocalLLaMA/comments/1l9p54x/comment..." userName="souvik3333" createdAt="2025/06/16 07:05:34" color="#ff5733">}}




{{<matomeQuote body="これ、オープンソースでもオープンウェイトでもないみたいだよ：<br>https://huggingface.co/nanonets/Nanonets-OCR-s/discussions/2" userName="progval" createdAt="2025/06/16 06:45:43" color="#785bff">}}




{{<matomeQuote body="こんにちは、モデルの作者です。これはオープンウェイトモデルだよ。ここからダウンロードできるよ：<br>https://huggingface.co/nanonets/Nanonets-OCR-s" userName="souvik3333" createdAt="2025/06/16 06:56:34" color="#ff33a1">}}




{{<matomeQuote body="面白いことに、Qwen2.5-VL-3Bをベースにした別のOCRモデルで、Apache 2ライセンスのやつも丁度リリースされたんだ。Hugging Faceの「Trending」リストでNanonets-OCR-sのすぐ隣にあるよ：<br>https://huggingface.co/echo840/MonkeyOCR/blob/main/Recogniti..." userName="gardnr" createdAt="2025/06/16 08:09:49" color="#785bff">}}




{{<matomeQuote body="個人的な意見だけど、ウェイトがダウンロードできるだけじゃオープンウェイトとは言えないと思うな。僕の理解だとね：<br>・ウェイト公開：ウェイトがダウンロードできる。<br>・オープンウェイト：ウェイトがダウンロードできて、かつ自由なライセンス（パブリックドメイン、CC BY-SA、MITとか）で使える。<br>・オープンソース：（議論の余地あるけど）ウェイトがダウンロードできてライセンスも自由、さらに学習データも公開されててライセンスが自由。<br>補足：君の言う通り。Apache-2.0ライセンスって間違って書いちゃって、ごめんね。Qwen-2.5-VL-3Bの派生だから、ベースモデルと同じ（Qwen RESEARCH LICENSE AGREEMENT）になるよ。指摘ありがとう。" userName="CaptainFever" createdAt="2025/06/16 15:47:22" color="#45d325">}}




{{<matomeQuote body="複数列や複数行のテーブルがある文書ってどう処理されるの？<br>例えばこれ：<br>https://www.japanracing.de/Teilegutachten/Teilegutachten-JR1...<br>1ページ目のrowspanとか29ページのcolspanは？" userName="Bestora" createdAt="2025/06/16 18:10:54" color="">}}




{{<matomeQuote body="複数列のテキストとかヘッダー、フッターはどんな感じ？" userName="nehalem" createdAt="2025/06/16 13:46:24" color="">}}




{{<matomeQuote body="階層型のカラムヘッダーや、rowspanやcolspanが1より大きいテーブルでもモデルを学習させたから、大丈夫なはずだよ。MarkdownじゃなくてHTML形式でテーブルを予測する理由はそれなんだ。" userName="souvik3333" createdAt="2025/06/16 14:27:44" color="#785bff">}}




{{<matomeQuote body="ありがとう。俺が考えてたのは、雑誌みたいなレイアウトで、テキストのカラムがいくつかあって、記事タイトルとページ番号が各ページのヘッダーやフッターに入ってるようなやつだったんだ。" userName="nehalem" createdAt="2025/06/16 15:15:36" color="#ff5c5c">}}




{{<matomeQuote body="それもいけるはずだよ。俺たちは2カラムのテキストがある研究論文で学習したんだ。普通、論文にはフッターに参考文献とページ番号が入ってるしね。" userName="souvik3333" createdAt="2025/06/16 16:06:40" color="#ff33a1">}}




{{<matomeQuote body="ベンチマークとか、独立したテストセットでの精度評価はないの？" userName="tensor" createdAt="2025/06/16 06:46:02" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="やあ、モデルの作者だよ…ドキュメント理解タスクのVLM評価用のベンチマークはあるんだ：https://idp-leaderboard.org/ 。でも残念ながら、image to markdownはタスクに含まれてないんだ。<br>image to markdownの評価が難しいのは、二つのブロックの順序が違っても正解になりうることなんだ。例えば、売主情報と買主情報が画像の中で並んでる場合、あるモデルは売主情報を先に抽出して、別のモデルは買主情報を先に抽出するかもしれない。どっちのモデルも正しいんだけど、グラウンドトゥルースによっては、あいまい一致させると片方のモデルの精度が高くなるんだ。<br>通常、会社は同じ種類のアノテーション（左のブロックを先にとか右のブロックを先にとか）で学習・テストするデータセットを使うから、他のモデルは自分たちのベンチマークで低いスコアになる可能性があるんだ、逆のアノテーション順序で学習してるからね。" userName="souvik3333" createdAt="2025/06/16 06:58:14" color="#ff5733">}}




{{<matomeQuote body="どんなVLMでも、俺にとってより重要なのはベースのOCR性能とハルシネーションなんだ。言語モデルを使えば、品質がすごく低いスキャンでも平均精度を上げるのはそれほど難しくない。残念ながら、こういうのはたいてい大量のハルシネーションを出すんだけど、もし金融とか法律目的で値を取り出そうとしてるなら、それは致命的だね。<br>精度が低くても、間違った部分が空白にされるかフラグ付けされるOCRの方がはるかに優れてるんだ。Mistral OCRもこの問題に悩まされてるよ。<br>もし君のOCRが各テキスト行のbounding boxを出力して、そのテキストに伝統的なOCRをかけたなら、これは軽減できるかもしれない。あるいは少なくとも、bounding boxがあれば、ユーザーは伝統的なOCRの出力と相互参照できる。<br>あと小さな注意点だけど、Mistralとテストしてないのに、自分の製品がMistralに勝ると言うのはおそらくやめた方がいいよ。機能が多いことが、その機能の精度が高くないなら、製品をより良くするわけじゃないからね。<br>がっかりさせたいわけじゃないんだ、これは重要な分野だし、すごく機能豊富なモデルに見えるよ。良いソリューションが開発されるのを見たいね！" userName="tensor" createdAt="2025/06/16 15:41:33" color="#ff5c5c">}}




{{<matomeQuote body="もしそれが唯一の問題なら、スコアリングする前に後処理データを正規化することで対応できないの？（もし本当にブロックの順序だけの問題ならね）" userName="krapht" createdAt="2025/06/16 15:01:15" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！これはすごく面白いね。— ただちょっと気になるんだけど、なんでそんな小さなモデルを使うの？<br>俺のMacでは27Bモデルも快適に動くし、ハルシネーションが少なくて多言語を betterに扱えるものの方が、PDFライブラリの処理にはずっといいんだけど…" userName="jwr" createdAt="2025/06/17 01:37:21" color="#785bff">}}




{{<matomeQuote body="面白い点は、パース中にセマンティクスをタグ付けしてることだね。レイアウト再構築の前に、何かが署名なのか透かしなのかチェックボックスなのかを知ってる。ほとんどのパイプラインは、後でヒューリスティクスか分類器を使ってこれをボルトオンする。<br>＞その前処理タグ付けが、後続の単純化、特に extra passなしでのJSON/HTML変換にどう影響するのか気になるね。<br>＞あと、レイアウトメタデータなしで、視覚的な手がかりの曖昧さにどう対応してるのかも知りたい。" userName="b0a04gl" createdAt="2025/06/16 14:59:46" color="#785bff">}}




{{<matomeQuote body="こういうツールのベンチマークはあるの？テーブルにはどう対応してる？色々な言語は？" userName="nnurmanov" createdAt="2025/06/17 02:50:33" color="#ff5733">}}




{{<matomeQuote body="棒グラフ、時系列みたいな科学グラフからデータを抽出できる？" userName="huqedato" createdAt="2025/06/17 12:35:07" color="">}}




{{<matomeQuote body="手書き文字はどう？" userName="Eisenstein" createdAt="2025/06/16 08:56:08" color="">}}




{{<matomeQuote body="完全に手書きの学習はまだだけど、フォームデータには手書きも含まれてるよ。<br>ここで試せるからやってみて！ https://huggingface.co/spaces/Souvik3333/Nanonets-ocr-s<br>完全手書き向けモデルは開発中だよ。" userName="souvik3333" createdAt="2025/06/16 09:19:54" color="#785bff">}}




{{<matomeQuote body="この手書き文書を試したらこんな変な結果になったよ。<br>処理に1時間もかかったんだけど、1ページ（554文字）でトークンってどれくらい使うの？<br>Documentは https://imgur.com/cAtM8Qn、結果は https://imgur.com/ElUlZys" userName="Eisenstein" createdAt="2025/06/16 10:31:45" color="#ff33a1">}}




{{<matomeQuote body="処理が遅かったのは、みんなが使ってるからだよ。<br>僕の環境ではちゃんと動いたんだけどね。→ https://ibb.co/C36RRjYs<br>トークン数はテキスト次第、qwen-2.5-vlってのを使ってるよ。<br>Colabなら早く試せるかも。→ https://github.com/NanoNets/docext/blob/main/PDF2MD_README.m...<br>手書きの抽出には間違いがあるから、手書きモデルを待つのが良いと思うよ。" userName="souvik3333" createdAt="2025/06/16 10:53:48" color="#ff5c5c">}}




{{<matomeQuote body="“手元で正しく動いた”って、単にエラーなく最後まで動いたって意味？<br>なんか出力された文字がおかしい気がするんだけど（ユニコード？変なフォント？）。<br>手書きを読もうとするのはすごいと思うけど、あの結果が期待通りだったの？" userName="mdaniel" createdAt="2025/06/16 14:17:50" color="">}}




{{<matomeQuote body="結果はそこそこだったかな。フォントがおかしいのかも？<br>これが元のテキスト内容だよ。markdownじゃないけどね。<br>Page# 8Log: MA 6100 2.03.15<br>34 cement emitter resistors - 0.33R 5W 5% measure 0.29R 0.26R<br>..." userName="Eisenstein" createdAt="2025/06/16 14:26:28" color="#38d3d3">}}




{{<matomeQuote body="これがColabノートブックで実行した結果だよ。<br>https://markdownlivepreview.com/ に貼って確認してみて。<br>どんなユニコード文字がおかしいって言ってるの？" userName="souvik3333" createdAt="2025/06/16 14:50:25" color="#45d325">}}




{{<matomeQuote body="図とか線とか、そういうのにも使える？" userName="CMCDragonkai" createdAt="2025/06/17 01:21:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
