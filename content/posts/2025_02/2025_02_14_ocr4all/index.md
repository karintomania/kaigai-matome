+++
date = '2025-02-14T00:00:00'
months = '2025/02'
draft = false
title = 'OCR4allで簡単にスキャン文書をデジタル化！あなたの作業効率が劇的に向上する方法とは？'
tags = ["OCR", "デジタル化", "生産性向上", "テクノロジー", "ツール"]
featureimage = 'thumbnails/purple1.jpg'
+++

> OCR4allで簡単にスキャン文書をデジタル化！あなたの作業効率が劇的に向上する方法とは？

引用元：[https://news.ycombinator.com/item?id=43043671](https://news.ycombinator.com/item?id=43043671)

{{<matomeQuote body="大がかりなセグメンテーションパイプラインは昔からの遺物で、今ではエラーが多く、モデルに重要なコンテキストを奪ってしまう。手書きの認識をするには、文全体のコンテキストが必要なんだ。全体を見なきゃ、正しい意味を捉えるのは難しい。結局、我々が求めているのは文字認識じゃなくて、全体のテキスト認識だよね。" userName="vintermann" createdAt="2025-02-14T06:51:46" color="#45d325">}}

{{<matomeQuote body="＞”全体のテキスト認識が必要だ”<br>確かに意味のないテキストは文字認識が必要だけど、逆に言うと、意味のないテキストが存在する場面も多い。" userName="liotier" createdAt="2025-02-14T08:51:57" color="">}}

{{<matomeQuote body="＞”意味のないテキストは文字認識が必要だ”<br>そうかな？印刷されたテキストが非連結のスクリプトの場合は別だけど、手書きの場合は単語を認識できるのでは？文脈を無視するのは難しいよ。" userName="einpoklum" createdAt="2025-02-14T10:22:22" color="">}}

{{<matomeQuote body="実際にはそうでもなくて、私のHTRの使い方では専門的なコードを扱ってる。使っているOCRソフトは英語の言葉のカテゴリに当てはめることで困難をきたしている。<br>LLMsは助けになるが、繰り返しの内容によってひどいハルシネーションが起きることがある。" userName="coredog64" createdAt="2025-02-14T16:03:42" color="">}}

{{<matomeQuote body="VLMsは従来のOCRシステムを無意味にするかもしれない。最近、GeminiがOCRに関するタスクで優れてるという話を聞いた。新しいモデルは毎月登場していて、まるで90年代のコンピュータが年々速くなるようだね。" userName="modeless" createdAt="2025-02-14T08:14:18" color="#38d3d3">}}

{{<matomeQuote body="OCRをLLMsで行うとハルシネーション問題がある。あまりにも多くの置き換えが起こることがあった。Tessactはニューラルネットワークベースに移行して再構築してる。特に、手書きが扱えるならOCR4Allに切り替えたい。" userName="bayindirh" createdAt="2025-02-14T08:49:59" color="">}}

{{<matomeQuote body="逆説的だけど、LLMsこそ従来のOCRを修正すべきだ。文脈から言葉を認識することで、適切に修正できる。" userName="mdp2021" createdAt="2025-02-14T09:09:30" color="">}}

{{<matomeQuote body="今、埋もれている文書を再OCRするために学んでるけど、現代のOCRはもう十分良い。認識が向上すると、ポストプロセスが逆にエラーを生むことになる。LLMsはそのエラーを修正するには不向きだ。初めての試みで、数字や略語のエラーが多い。" userName="cvz" createdAt="2025-02-14T22:43:21" color="#785bff">}}

{{<matomeQuote body="＞”LLMsはポストプロセスでは逆効果”<br>印刷された文書ではそうかもだけど、手書き文書では大量の文脈や言語が必要だから、LLMsの助けも重要だよ。" userName="vintermann" createdAt="2025-02-16T07:46:23" color="">}}

{{<matomeQuote body="印刷文書を扱っているんだ。手書き認識ではLLMsが効果的かもしれないが、今は印刷物の精度が高い。ニューラルネットワークが既に進んでいて、全体を処理する方向に向かっているんだ。" userName="cvz" createdAt="2025-02-17T05:32:16" color="">}}

{{<matomeQuote body="現代のOCRは結構優秀だけど、間違いが出ることが多いって意見には同意だよ。LSTMベースのエンジンを使ってるけど、Tesseractの最新バージョンを使ってないから、もっと改善の余地はあるかもね。とはいえ、LLMは文脈から数字や略語を推測できるはずだし、うまく使えば正確性を高められると思うよ。<br>" userName="mdp2021" createdAt="2025-02-15T09:13:50" color="#45d325">}}

{{<matomeQuote body="完全自動のプロセスを考えてるんじゃなくて、索引付けを人間がやることが大切だよね。自分はConfidenceスコアに基づいてレビューする単語を選別してるけど、今の方法で十分うまくいってるからLLMの導入は考えてない。でも、Tesseract 5.5を使ってるって言ってるけど、実際に効果があるかもね。<br>" userName="cvz" createdAt="2025-02-16T02:21:05" color="#38d3d3">}}

{{<matomeQuote body="＞その例（ページ番号）は難しいけど、他の文法的なエラーは言語モデルで修正できると思うよ。<br>特定の言語モデルがあれば、文章を理解しているから、その中の誤りを修正できるんだ。この間違いを扱えるモデルがあれば、もっと簡単だと思うよ。<br>" userName="mdp2021" createdAt="2025-02-16T19:30:27" color="">}}

{{<matomeQuote body="LLMをレビュー過程に使うとしても、そのドキュメントの情報が普遍的であるかどうかが重要だよね。<br>あまり知られてない情報が多い方が価値がある資料だよ。<br>" userName="cvz" createdAt="2025-02-17T05:53:22" color="">}}

{{<matomeQuote body="＞LLMをレビュー過程で使うのはそれほど意味がないわけじゃないけど、真のポジティブを多く見つけられないと非効率的な作業になるよ。<br>一部の文が新しい見解や議論を含んでいることもあるし、OCRエラーの影響が少ないかもしれないね。<br>" userName="mdp2021" createdAt="2025-02-17T08:58:14" color="">}}

{{<matomeQuote body="実際に使ってみたら、結構うまくいったよ！<br>例えば“ABG News was founded in 194S after action from the PCC…”が正しい情報に修正できた。<br>最初は数回の権限変更で誤りも修正してくれたけど、最後の数字の間違いには気づかなかったね。<br>" userName="mdp2021" createdAt="2025-02-17T10:57:42" color="#45d325">}}

{{<matomeQuote body="自分は、検討するだけならOCRのConfidenceスコアを使う方が簡単だと思うんだ。<br>そんな時間ができたら、実際の画像を使って比較してみたい！<br>" userName="cvz" createdAt="2025-02-17T19:09:08" color="">}}

{{<matomeQuote body="ちょっとシンプルな文法モデルを使って即座にテキストを改善できるかもね。<br>最新のAIモデルを使わなくてもこういった誤りは修正できるし、実際にMicrosoft Wordとかもやってるよ。<br>" userName="bayindirh" createdAt="2025-02-14T09:14:56" color="#785bff">}}

{{<matomeQuote body="今のやり方は翻訳タスクみたいなもので、文をいじってデータを作るのは簡単だよね。<br>入力は固定で出力トークンを使ってマスクする方法がいいかも。<br>" userName="mistercow" createdAt="2025-02-14T14:45:12" color="">}}

{{<matomeQuote body="読んでてこんな課題を思い出したけど、文字の数で推測する手法が使えるかも。<br>文法を気にしないで、単語を特定するには効果的だと思う。<br>" userName="bayindirh" createdAt="2025-02-14T14:53:23" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞シンプルなモデルに頼るのもいいけど、特定のテキストの異常を見つけるモデルが必要だと思うんだ。<br>小型のLLMやバリエーションがそれに適したものがあればいいんだけど。<br>" userName="mdp2021" createdAt="2025-02-14T09:35:36" color="">}}

{{<matomeQuote body="文脈に合わせた微調整が必要なこともある。<br>一見明らかな間違いを直すことで推測するのが大切だね。<br>" userName="pbhjpbhj" createdAt="2025-02-14T12:02:24" color="">}}

{{<matomeQuote body="だからLLMが必要って書いたんだ。単なるスペルチェックじゃなくて、文脈内の異常を見つけるための統計モデルが必要なんだよ。文を理解するシステムがないと、単語をマークするだけじゃ不十分だね。" userName="mdp2021" createdAt="2025-02-14T14:20:09" color="#38d3d3">}}

{{<matomeQuote body="GeminiはLLMでOCRはしないみたい。既存のOCR技術を使って、その出力をLLMに送信する感じ。温度を0にして文書の正確なテキストを要求すれば、かなりいい結果が得られるよ。ただ、変な結果が出たときは、OCRの結果のJSON出力がそのまま返ってきたこともあった。" userName="dajonker" createdAt="2025-02-15T14:28:02" color="">}}

{{<matomeQuote body="OCRやSTTの結果を複数の言語モデルに通して、結果を比較してエラーを修正できるアルゴリズム探してたんだ。誰か同じようなことやってる人いたら、情報くれるとありがたい。" userName="wittjeff" createdAt="2025-02-14T14:53:51" color="#ff5c5c">}}

{{<matomeQuote body="Tesseractはクリーンな機械印刷文書のOCRで、試した中のVLMを圧倒的に上回るよ。Tesseractに少しミスがあったページでも、VLMはそのミスを全て再現するし、それ以外でも読み間違える。" userName="aidenn0" createdAt="2025-02-14T17:26:54" color="#ff33a1">}}

{{<matomeQuote body="テストプロジェクトを終えたところで、低コスト・高速のMLモデルを使っていろんな工程を委託できることが分かった。例えば、画像の説明は遅くてLLMが必要だし、低スペックの機器で動かすには大変だった。" userName="gopher_space" createdAt="2025-02-14T22:39:36" color="#ff5c5c">}}

{{<matomeQuote body="一般的な機能が必要って思うけど、まだ待ってる状態。Geminiは試した中では一番だけど、遺族研究で解読しようとした遺言書が正しく認識できないのは残念だ。" userName="vintermann" createdAt="2025-02-16T07:32:52" color="">}}

{{<matomeQuote body="数時間前にGeminiをOCRとして使ったんだけど、Androidのアプリが全部失敗したから大変だった（笑）。目が覚めたときにこのコメント見て驚いた。" userName="tcascais" createdAt="2025-02-14T08:43:02" color="">}}

{{<matomeQuote body="Gemini Flash 2がVQAタスクに答える中で「OCRテキストに」と言ってたのを見て、通常のOCRプロセスも混ざってるのか疑問に思った。" userName="dhon_" createdAt="2025-02-14T22:01:34" color="">}}

{{<matomeQuote body="今後一年待つと、解決したい問題がより能力の高いAIによって解決されるだろう。これがデスクトップAGIの時代なのかもしれない。" userName="exikyut" createdAt="2025-02-14T12:12:58" color="">}}

{{<matomeQuote body="AIは仮定を立ててミスを直すんじゃない？例えば、＞「The speiling standards were awful」は「The spelling standards were awful」って感じで。" userName="chgs" createdAt="2025-02-14T09:00:55" color="">}}

{{<matomeQuote body="うーん、問題なのは、書き方が単語ベースじゃないことかな。略語や専門用語がいっぱいあって、年ごとに書き方も変わるから、時代に合わせた情報が必要なんだよね。だから、LLMは1400年と1900年では内容をちゃんと解析できないかも。文字ベースのOCRはルールを無視して、誤字脱字も含めてその時の書き方をそのまま出しちゃうんだ。" userName="yndoendo" createdAt="2025-02-15T15:24:42" color="#ff33a1">}}

{{<matomeQuote body="ちょっとわかりやすく説明してもらえる？要するに、1850年の人は小文字の”l”が一貫して小文字の”l”に見えるけど、1550年の人は文の文脈によってそれが大文字の”K”や数字の”0”に見えることがあるってことだよね。言語の変化に関係してるのかな？それとももっと簡単なことで？" userName="registeredcorn" createdAt="2025-02-14T18:31:57" color="">}}

{{<matomeQuote body="ゴシック体の小文字の”e”はしばしば小文字の”r”に見えちゃうんだ。だから、ある文脈で”r”として認識できれば、他の似た形も”r”だと推測できるんだよ。特に固有名詞など、文脈があまり役立たない書き方の時が多い。手書きはスタイルや文脈によって読み取り方が変わるから、全部見る必要があるんだ。" userName="vintermann" createdAt="2025-02-16T13:15:34" color="#ff33a1">}}

{{<matomeQuote body="専門家にモデルをしっかり訓練してもらうのはお金がかかるし、大きな文脈が必要ってのも大変だね。それに、みんなが共有の知識を持てたらいいんだけど、欲張りな人たちばかりで、知識を独り占めしようとしてる。このままだと質の悪い情報ばかりになるよ。" userName="cyanydeez" createdAt="2025-02-14T22:06:12" color="">}}

{{<matomeQuote body="こちら見てみて：<br>> OCR4allは、初期の近代印刷物のデジタルテキスト回復と認識を主な目的としたソフトウェアです。大変な印刷技術やレイアウトが多くて、普通のテキスト認識ソフトウェアには厳しいんだ。" userName="abrichr" createdAt="2025-02-14T03:29:07" color="#45d325">}}

{{<matomeQuote body="これすごいプロジェクトだけど、細かいこと言うつもりはないんだけど…<br>> OCR4allは、わかりやすくて直感的な操作で非技術者のニーズに応えるって書いてるけど、実際にはターミナル開いてコマンド入れなきゃいけないのってどうよ？" userName="seu" createdAt="2025-02-14T10:03:00" color="">}}

{{<matomeQuote body="アプリのインストールはユーザーの仕事じゃないね。ユーザーが使うために準備されたアプリと、インストールが簡単なことは別なんだ。ITに詳しい人にインストールを手伝ってもらうと、プログラムの使い方が簡単なら良いってことね。" userName="pbhjpbhj" createdAt="2025-02-14T12:06:45" color="">}}

{{<matomeQuote body="非技術系のユーザーじゃなくって、Dockerに興味があって、無駄にパソコンにでかいファイルを入れるのが気にならない技術系のユーザーだね。" userName="einpoklum" createdAt="2025-02-14T10:25:20" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞ちょっとした秘密：AppleのVision Frameworkには、Tesseractよりも精度が高くて驚くほど早いテキスト認識ライブラリがある。実際、あらゆる画像フォーマットに対応していて、PDFも含まれる。<br>自作のCLIツールとPythonラッパーを作ったよ：<br>https://github.com/fny/swiftocr" userName="fny" createdAt="2025-02-14T12:05:10" color="#ff5733">}}

{{<matomeQuote body="Appleが追加したこの機能はお気に入りの一つ。通話中にページを共有されたとき、リンクを聞くよりもスクリーングラブしてAppleのOCRで認識させてチャットにリンクを貼る方が早いんだ。" userName="Moto7451" createdAt="2025-02-14T14:05:41" color="">}}

{{<matomeQuote body="iPhoneを手に入れてからAPIドキュメントに触れたら、Appleの機能には驚かされた。iOSのアプリ体験はAndroidと雲泥の差だし、Vision機能はすごいし、テキスト認識も最高だ。私の下手くそな手書きでも問題なく認識されるし、無料とオープンソースの選択肢も好き。でも、デスクトップはApple製品じゃないからあんまり使えないんだ。" userName="jjice" createdAt="2025-02-14T14:55:33" color="#ff33a1">}}

{{<matomeQuote body="Appleがどうやってるかは分からないけど、Googleには「Lens」っていう同等のものがあって、しっかり機能してるよ。この方法で使ってる。" userName="JeremyNT" createdAt="2025-02-15T15:34:31" color="">}}

{{<matomeQuote body="Googleの写真アプリもすごいOCRをやってるよ。" userName="ted_dunning" createdAt="2025-02-14T21:27:17" color="">}}

{{<matomeQuote body="自作のiOSアプリでPDFを画像に変換して、ネイティブOCRを使ったんだけど、驚くほどよく働いてる：<br>https://apps.apple.com/us/app/super-pdf-ocr/id6479674248<br>多分、無料アプリにしてみんなに使ってもらえばよかったなぁ。" userName="eigenvalue" createdAt="2025-02-14T14:41:51" color="">}}

{{<matomeQuote body="どう違うの？Tesseractとかとは。ワークフローは歴史的な印刷物のデジタル化用だよ。古い黒文字の公告を保存することを考えてみて。" userName="mometsi" createdAt="2025-02-14T04:14:28" color="">}}

{{<matomeQuote body="Tesseractではいい結果が出なかったから、これが本当に違うことを願うよ。画面からスクレイピングしたテキストでも、Tesseractでは100%完璧じゃなかったんだ。高解像度の写真でも問題が多かった。スキャン文書には試してないけど。" userName="amelius" createdAt="2025-02-14T10:16:54" color="">}}

{{<matomeQuote body="手書きにはちゃんと向き合ったことはないけど、Tesseractではうまくいったこともあった。確かに今は最良の無料オプションじゃないかもしれないけど、少し画像前処理をすればいい結果が出るパイプラインが作れると思う。2010年代半ばにはTesseractやOCRadを使って、履歴書を構造化文書に変換してた。今の技術のほうがずっと良くなってるはずだから、または実際に試してみればわかるよ。" userName="Moto7451" createdAt="2025-02-14T14:13:46" color="#ff5733">}}

{{<matomeQuote body="私のタイプライター原稿には手書きの修正が混ざってるんだけど、Tesseractは手書きの部分でダメだった。有効なローカルソリューションがあれば教えて。16GBのLenovoノートとRTX 4070 Tiのワークステーションにアクセスできるよ。" userName="spigottoday" createdAt="2025-02-14T14:47:49" color="#ff5733">}}

{{<matomeQuote body="興味があれば、私もAI支援OCR APIを作ったよ。TesseractとPoppler-utilsを組み合わせている。ローカルのオープンソースLLMが文書を賢くセグメント化するよ。Dockerコンテナにまとめて出力もできるんだ。" userName="jjuliano" createdAt="2025-02-14T10:41:25" color="">}}

{{<matomeQuote body="TesseractとLLMを使って間違いを修正したりフォーマットを改善するのが今のところ速度・効率・精度のベストだと思う。このプロセスは英語のプロンプトを修正するだけで簡単にカスタマイズできるよ。" userName="eigenvalue" createdAt="2025-02-14T14:46:48" color="#45d325">}}

{{<matomeQuote body="Tesseract+LLMのパイプラインでどれくらいの精度達成したの？LLMの限界もあるだろうし、元々Tesseractは完璧じゃないよね。PaddleOCRライブラリを使った結果が結構良かった。デジタルテキストに特化してるけど、手書きの場合は注意が必要かも。" userName="TheNovaBomb" createdAt="2025-02-14T18:19:52" color="">}}

{{<matomeQuote body="まだ試してないけど、うまくいくと思う。プロンプトを調整して古代ギリシャ語の扱い方を例示すれば、十分に効果があるんじゃないかな。" userName="eigenvalue" createdAt="2025-02-14T16:32:25" color="">}}

{{<matomeQuote body="“OCR4allは各種オープンソースソリューションを組み合わせて、歴史的な印刷物や手書き資料の自動テキスト認識の完全自動化されたワークフローを提供します。”OCR-Dに基づいてるみたい。" userName="amai" createdAt="2025-02-14T12:27:31" color="">}}

{{<matomeQuote body="Ocrっていいけど、Tesseractでほとんど解決したと思ってたのに、これが何をもたらすのか？今探してるのはMRC圧縮のライブラリか実装なんだが、商業製品には全然かないません。" userName="jaffa2" createdAt="2025-02-14T03:53:13" color="">}}

{{<matomeQuote body="面白い記事だね。MシリーズのMac Miniって、この役割でも問題ないのかな？速度テストは遅かったけど、iPhoneで動かしたらOCRのスピードは良さそうだった。GPU使ってるからかな？" userName="jjice" createdAt="2025-02-14T15:02:14" color="">}}

{{<matomeQuote body="メッセージありがとう。MRC（https://en.m.wikipedia.org/wiki/Mixed_raster_content）について話してるんだ。ただのテキストレイヤーじゃなく、色付きPDFをグループ4バイナリ圧縮の画像より小さくできる。" userName="jaffa2" createdAt="2025-02-14T09:32:27" color="">}}

{{<matomeQuote body="“Ocrっていいけど、Tesseractでほとんど解決したと思ってたのに、これが何をもたらすのか？”これは歴史的な文書専用で、Tesseractが苦手な部分をカバーしてる。" userName="aidenn0" createdAt="2025-02-14T18:01:39" color="">}}

{{<matomeQuote body="インターネットアーカイブがMRC PDFを生成して、そのツールをオープンソースにしてる（https://github.com/internetarchive/archive-pdf-tools）。" userName="aidenn0" createdAt="2025-02-14T17:59:17" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
