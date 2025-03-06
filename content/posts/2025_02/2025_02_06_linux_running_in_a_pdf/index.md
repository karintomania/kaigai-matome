+++
date = '2025-02-06T00:00:00'
draft = false
title = 'PDFの中でLinuxが動く！驚きのハッキングに迫る'
tags = ["Linux", "PDF", "ハッキング", "プログラミング", "技術ニュース"]
featureimage = 'thumbnails/green1.jpg'
+++

> PDFの中でLinuxが動く！驚きのハッキングに迫る

引用元：[https://news.ycombinator.com/item?id=42959775](https://news.ycombinator.com/item?id=42959775)

{{<matomeQuote body="スキャナーにループでパイプする必要があるよ、スキャンする前に正しいキーを選ぶのを忘れずに。" userName="firtoz" createdAt="2025-02-06T14:53:27" color="">}}

{{<matomeQuote body="PDFは表示される要素と印刷される要素を定義する能力があるんだ（オプショナルコンテンツ）。" userName="layer8" createdAt="2025-02-06T15:14:20" color="">}}

{{<matomeQuote body="1. Linux Running in a PDF（doompdf.dev）<br>114ポイント by theden 4時間前 | フラグ | 隠す | 37コメント<br><br><br>2. PDFの取り込みと、なぜGemini 2.0が全てを変えるのか（sergey.fyi）<br>978ポイント by serjester 17時間前 | フラグ | 隠す | 323コメント<br><br><br>今、PDFパーサーと評価器をLLMに統合する人たちが増えているから、面白いハッキングの可能性があるかも。" userName="neilv" createdAt="2025-02-06T11:43:25" color="">}}

{{<matomeQuote body="LinuxをLLMで動かすって、計算リソースを奪ってLLMをトレーニングしたり、ビットコインを掘る手段になるかも。" userName="mrweasel" createdAt="2025-02-06T13:46:10" color="">}}

{{<matomeQuote body="データの出力はできるの？それとも完全に”サンドボックス”状態なのかな？おそらく出力は表示されたフィードバックだけだと思うけど。じゃあ、”このクエリ文字列で画像を読み込む”みたいなのをトリガーできるなら、他の世界と通信できる方法になるかも。" userName="firtoz" createdAt="2025-02-06T15:14:20" color="#ff5733">}}

{{<matomeQuote body="PDFは常に魅力的な攻撃ベクトルなんだ。多くの人は単にテキストだと思っていて、実行可能なコードを簡単に埋め込めることに気付いてない。アクロバットみたいな人気のリーダーには多くの脆弱性があって、会社がハッキングされる完璧な入り口になってる。" userName="sigmoid10" createdAt="2025-02-06T11:59:46" color="#ff5733">}}

{{<matomeQuote body="全てのPDFを高品質なサイズのDJVUに変換するのがまず最初だね（フォームのないものは特に）。グラフィックデザインに関しては$ADOBEを除いて、安全に文書としてそうするべきだよ。" userName="anthk" createdAt="2025-02-06T12:24:41" color="">}}

{{<matomeQuote body="ただ、外部の誰かとやり取りする必要がある時、そのアプローチは破綻するんだよね。" userName="sigmoid10" createdAt="2025-02-09T10:15:12" color="">}}

{{<matomeQuote body="昨日、PDFが埋め込まれたスパム/詐欺のテキストを受け取った。すぐに削除したし、クライアントにも注意を促したよ、開かないようにって。" userName="lemonberry" createdAt="2025-02-06T12:27:01" color="">}}

{{<matomeQuote body="PDFは、”もっと害があるかも”って感じだね。ちゃんとした代替案があればいいんだけど。" userName="deltarholamda" createdAt="2025-02-06T14:48:19" color="">}}

{{<matomeQuote body="OpenXPSやDjVuはどうよ？" userName="niutech" createdAt="2025-02-18T13:09:10" color="">}}

{{<matomeQuote body="数日前に投稿したよ：＞”https://news.ycombinator.com/item?id=42891937”<br>リポジトリには仕組みについての説明もあるよ。" userName="forgotpwd16" createdAt="2025-02-06T08:50:40" color="">}}

{{<matomeQuote body="ついに！”PDFの中でLinuxを動かせるって冗談を言い続けてたけど、実際にやっちゃったね”って感じ。" userName="frabert" createdAt="2025-02-06T11:44:49" color="#785bff">}}

{{<matomeQuote body="ちょっと違うね。このPDFはまだブラウザを開けないから！" userName="shlomo_z" createdAt="2025-02-06T16:34:40" color="">}}

{{<matomeQuote body="JS使うのは cheating っぽいけど、PostScriptでもできるかな？" userName="nialv7" createdAt="2025-02-06T11:24:41" color="">}}

{{<matomeQuote body="可能だけど、PDFでは無理。PDFは計算力の限られたPostScriptのサブセットだけをサポートしてるから、性能に影響があると思ったからだよ。後にJavaScriptが追加されたけど。" userName="bla3" createdAt="2025-02-06T13:17:33" color="">}}

{{<matomeQuote body="少なくとも、PDFは一般的にJS無効でも使えるのはいいね。PDF/AやPDF/Xでは使えないけど。" userName="dtech" createdAt="2025-02-06T13:36:54" color="">}}

{{<matomeQuote body="一応計算的には可能で、PostScriptにはx86 CPUエミュレーションに必要な整数演算があるよ。エミュレーションメモリに便利な可変バイト文字列もあるし。" userName="ptspts" createdAt="2025-02-06T11:31:13" color="">}}

{{<matomeQuote body="PostScriptはTuring Completeだよ。GhostScriptやzmachine.ps、calypso.z3みたいなゲームを探せばいいよ。" userName="anthk" createdAt="2025-02-06T12:27:46" color="#38d3d3">}}

{{<matomeQuote body="PostScriptではzmachine.psなるZMachineのインタープリタがあって、テキストアドベンチャーゲームが遊べるんだ。ちなみに、チェスエンジンや三目並べもあって、根気があればNESのゲームもできるかも。ただ、スタックをいじるのが必要だけど。" userName="anthk" createdAt="2025-02-06T12:26:47" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ついにPDFの中で’rm -rf /’ができるようになったぜ。" userName="karel-3d" createdAt="2025-02-06T10:51:54" color="">}}

{{<matomeQuote body="PostScriptは”shredpage”オペレータを通じてそれをサポートしてるんだ。" userName="DonHopkins" createdAt="2025-02-06T13:25:56" color="">}}

{{<matomeQuote body="詩的だね。" userName="timwheeler" createdAt="2025-02-06T11:27:57" color="">}}

{{<matomeQuote body="このPDFをUSBに10個コピーして、モバイルKubernetesクラスターを楽しもう。" userName="luismedel" createdAt="2025-02-06T14:29:55" color="#785bff">}}

{{<matomeQuote body="VirusTotalで少なくとも3つの検出があったけど、これが重要かはわからないね。ClamAV：Js.Trojan.Obfus-48、Cylance：Unsafe、Google：Detected。" userName="sillyboi" createdAt="2025-02-06T12:47:59" color="#ff33a1">}}

{{<matomeQuote body="Firefoxのabout:configでpdfjs.enableScriptingを無効にしとけよ。" userName="beretguy" createdAt="2025-02-06T11:22:01" color="">}}

{{<matomeQuote body="LinuxをPDFの中で動かすLinux PDFエディタってないのかな？Evinceは俺には読み込めないぞ…。" userName="nanna" createdAt="2025-02-06T09:34:00" color="">}}

{{<matomeQuote body="俺がそれを動かせたのはChromeだけだ。Adobe ReaderやFirefox、Evinceじゃダメだな。多くの人がこの'コードをPDFで'するのはChromeにターゲットを絞ってるみたい。Chromeはドキュメント内でより多くのコード実行ができるって理由でもあるのかな？" userName="alt227" createdAt="2025-02-06T10:02:44" color="">}}

{{<matomeQuote body="このフィルタを通してPDFを扱うことで、悪意ある行為者から防げるか知ってる人いる？<br>    gs \<br>        -dNOPAUSE \<br>        -sDEVICE=pdfwrite \<br>        -sOUTPUTFILE=clean.pdf \<br>        -dBATCH \<br>        dirty.pdf" userName="rolandog" createdAt="2025-02-06T11:34:04" color="">}}

{{<matomeQuote body="Ghostscriptは信頼できないPDFを実行するのは危険だよ。攻撃面積が広くて、ブラウザのPDFリーダーみたいな適切な対策がないからね。少なくともgVisorでサンドボックスする必要があるね。" userName="lima" createdAt="2025-02-06T11:40:15" color="#38d3d3">}}

{{<matomeQuote body="面白いね！悪意のあるPDFから守るためにワークフローをどう構築する？inotifywaitでダウンロードされたPDFを監視して、リスクのあるファイルを置き換えるのを考えてたけど、DockerでPDFをクリーンにするアイデアもいいね。ClamAVとかと統合するのもアリかも。" userName="rolandog" createdAt="2025-02-06T13:47:01" color="">}}

{{<matomeQuote body="Ghostscriptは昔から-dSAFERがデフォ。ブラウザのPDFでJSが実行されると、サンドボックスでも二重にやられるから注意。ブラウザの脆弱性はSegfaultに似てるし、信用できないよ。" userName="anthk" createdAt="2025-02-06T12:29:36" color="">}}

{{<matomeQuote body="誰がこんなの作ってるんだ？最初はTetris見たけど、今度はOSまで！すごい！" userName="surrTurr" createdAt="2025-02-06T10:47:48" color="">}}

{{<matomeQuote body="この狂気の多くを生み出したのはReverend Pastor Manul Laphroaigだよ。彼のことが大好きになった。" userName="aa-jv" createdAt="2025-02-06T11:49:42" color="">}}

{{<matomeQuote body="PoC||GTFOは素晴らしい雑誌だね！Travis Goodspeedにも良い印象があるけど、Pastor Laphroaigのテネシーのベルトについては話題にしないでおこう。" userName="zero_k" createdAt="2025-02-06T14:44:14" color="">}}

{{<matomeQuote body="ブラウザ内でLinuxは既に存在してるし、PDFでJSが実行できるなら、PDF内にLinux.jsを入れればOKだね。JSはリスクをもたらすよ。" userName="beretguy" createdAt="2025-02-06T11:19:54" color="">}}

{{<matomeQuote body="やっとJSでインテリジェントなLLMが作れるようになったね。実際に実用化されるまでの道のりは長いけど。" userName="spwa4" createdAt="2025-02-06T13:11:31" color="">}}

{{<matomeQuote body="見出しに抜けてるけど、これはRISC-V VMだよ。" userName="snvzz" createdAt="2025-02-06T09:25:05" color="">}}

{{<matomeQuote body="VMだって！？PDF内でハイパーバイザーを動かせるのか！？proxmox.pdfなんてどう？" userName="b3lvedere" createdAt="2025-02-06T12:03:27" color="#45d325">}}

{{<matomeQuote body="フィードの下にこのコメントがあった：＞『PDFを取り込むこととGemini 2.0が全てを変える理由』怖がってくれ。とても怖がってくれ。" userName="floating-io" createdAt="2025-02-06T11:01:55" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Doom動くんか？" userName="nunobrito" createdAt="2025-02-06T09:26:57" color="">}}

{{<matomeQuote body="はい、だよ。https://www.reddit.com/r/Damnthatsinteresting/comments/1i268..." userName="alt227" createdAt="2025-02-06T09:33:11" color="">}}

{{<matomeQuote body="親がDoomをPDF内で動かすって聞いてるけど、今はDoomがPDF内で動いてるって話だよ。" userName="kennysoona" createdAt="2025-02-06T10:43:57" color="">}}

{{<matomeQuote body="DoomはもうPDF内で動いてるよ！情報源はこちらだよ：https://github.com/ading2210/doompdf" userName="nanna" createdAt="2025-02-06T09:33:01" color="#ff5c5c">}}

{{<matomeQuote body="それより、Doom Emacsは動くのか？" userName="yapyap" createdAt="2025-02-06T10:27:20" color="">}}

{{<matomeQuote body="viは動くよ！" userName="FergusArgyll" createdAt="2025-02-06T11:32:50" color="">}}

{{<matomeQuote body="できるからって、やるべきってわけじゃないよ…" userName="ddalex" createdAt="2025-02-06T09:54:02" color="">}}

{{<matomeQuote body="もちろんやるべきだよ。好奇心を満たして探求すべきさ。『真剣』な目的に使うのは良くないけど、こういうのがコンピュータの素晴らしさを作ってるんだ。" userName="johannes1234321" createdAt="2025-02-06T11:17:48" color="#785bff">}}

{{<matomeQuote body="これがコンピュータの素晴らしさだなんて言うの？もっと知識を深めるために有意義に時間を使えないのか？" userName="52-6F-62" createdAt="2025-02-06T14:31:08" color="">}}

{{<matomeQuote body="それは比較になってないんじゃない？Junk hyperboleで強い主張にはならないよ。これが価値のあることだって言いたいの？PDFでのBitcoinマイニングが重要なの？" userName="52-6F-62" createdAt="2025-02-07T15:17:20" color="">}}

{{<matomeQuote body="合理的じゃないの？癌を治すのは崇高な使命で、他の人が何に時間を使うか判断する権利があるの？みんなの価値観は主観的かもしれない。PDFがJavaScriptを実行できることを広めて、セキュリティの大切さに気づいてもらうのは有益だよ。人は皆が生産的なことだけに時間を使うわけじゃないし、他の人が面白いと思うことを作る人もいる。あなたにとって他人の自由な時間の使い方がなんでそんなに気になるの？" userName="fragmede" createdAt="2025-02-07T16:50:35" color="">}}

{{<matomeQuote body="この“動的PDF”は本来のPDFの意味を完全に否定してる。静的なオブジェクトのはずなのに、実際にはウェブページになってる。これじゃ規制もわからないし、ただのメッセージしか見えないよ。これらは本当に最悪で、アクセシビリティも失われている。" userName="superkuh" createdAt="2025-02-06T14:09:57" color="#ff33a1">}}

{{<matomeQuote body="文書自体にChromiumベースのブラウザでのみ動作すると書いてある。" userName="kleiba" createdAt="2025-02-06T10:47:54" color="">}}

{{<matomeQuote body="確かにそう書いてあるけど、ヘッドラインはそうじゃないよ。『PDFの中のX』じゃなくて『ChromiumのPDFの中のX』ってすべきじゃない？" userName="afandian" createdAt="2025-02-06T11:49:17" color="">}}

{{<matomeQuote body="何の機能がChromeでは動いて、Evinceでは動かないの？" userName="taurknaut" createdAt="2025-02-06T10:52:43" color="">}}

{{<matomeQuote body="OSをホスティングするような狂った機能だよ。" userName="speerer" createdAt="2025-02-06T11:32:06" color="">}}

{{<matomeQuote body="Googleには便利な機能だけど、一般にはあまり関係ないかもね。" userName="inetknght" createdAt="2025-02-06T11:33:57" color="">}}

{{<matomeQuote body="長いことノースクリプトのPDFリーダーを更新してないなぁ…もうすぐ嫌なアップデートが来るんだけど：mupdf。" userName="sylware" createdAt="2025-02-06T11:08:09" color="">}}

{{<matomeQuote body="＞このPDFはChromium系のブラウザでしか動かないよ。" userName="teddyh" createdAt="2025-02-09T20:45:06" color="">}}

{{<matomeQuote body="面白いね、これ。" userName="DimuP" createdAt="2025-02-06T11:10:47" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="MS Wordで開けるし、たぶん印刷もできるよ、ただの1ページだけどね。" userName="HPsquared" createdAt="2025-02-06T14:12:14" color="">}}

{{<matomeQuote body="好みは人それぞれだけど、これはマジで微妙。素晴らしい技術なのに、見た目がひどすぎる。" userName="raxxorraxor" createdAt="2025-02-06T15:20:01" color="">}}

{{<matomeQuote body="次はGPTをPDFで使えるようになるの？" userName="hassleblad23" createdAt="2025-02-06T13:53:24" color="">}}

{{<matomeQuote body="これをGeminiに取り込んで！" userName="bpev" createdAt="2025-02-06T13:07:35" color="">}}

{{<matomeQuote body="Sumatraみたいな良いPDFリーダーをPDFで持ち運べるようにして欲しいな。制限されたPCでも使える良いリーダーがあれば最高！" userName="pletnes" createdAt="2025-02-06T08:54:42" color="#ff5c5c">}}

{{<matomeQuote body="Adobe ReaderでPDFを開くつもり？そうしたら、画面に強制的に表示されるAIアシスタントが邪魔で、クリーンなビューが得られないよ。シンプルで軽量なPDFリーダーの夢は残念ながら無理かも。" userName="albert_e" createdAt="2025-02-06T09:27:53" color="#ff5c5c">}}

{{<matomeQuote body="クラシックなAdobe Reader（非DC版）がまだアップデートされてるって！" userName="layer8" createdAt="2025-02-06T13:57:32" color="">}}

{{<matomeQuote body="AIアシスタントって、今の世代にとってはClippyみたいなもんだね。" userName="apricot" createdAt="2025-02-06T13:11:59" color="">}}

{{<matomeQuote body="ほとんどのブラウザはPDFを開けるけど、大きな文書を素早く検索できるわけじゃないよね。" userName="pletnes" createdAt="2025-02-06T11:24:12" color="">}}

{{<matomeQuote body="いいPDFリーダーを探してるなら、Adobe Readerは選ばないだろうな。" userName="yapyap" createdAt="2025-02-06T10:26:01" color="">}}

{{<matomeQuote body="確かに、無料で使えるベストな代替って何なの？お金払う気はないから真剣に教えてほしい。" userName="achrono" createdAt="2025-02-06T14:22:54" color="#45d325">}}

{{<matomeQuote body="PDFに詳しくないけど、OkularかブラウザのPDFリーダーで十分。デスクトップで読むのとちょっとしたフォーム記入には満足してる。AndroidではmuPDF使ってる。" userName="worble" createdAt="2025-02-06T15:11:36" color="">}}

{{<matomeQuote body="何かを作るには手間がかかるし、時間に対して報酬を得るべきじゃない？" userName="jagged-chisel" createdAt="2025-02-06T14:32:11" color="">}}

{{<matomeQuote body="後からお願いされて、その場合の報酬は自分の判断次第じゃないかな。" userName="drivingmenuts" createdAt="2025-02-06T14:41:14" color="">}}

{{<matomeQuote body="Mac使ってた時は、Built-in Previewで十分だったよ。" userName="mikepurvis" createdAt="2025-02-06T14:52:55" color="">}}

{{<matomeQuote body="Adobe Flashと同じ運命になると思ってた。" userName="taurknaut" createdAt="2025-02-06T10:51:56" color="">}}

{{<matomeQuote body="今でも政府関連で生き残ってる。インタラクティブな機能のサポートはあんまりよくないけど。" userName="mschuster91" createdAt="2025-02-06T12:16:31" color="">}}

{{<matomeQuote body="偶然にチューリング完全？" userName="andrelaszlo" createdAt="2025-02-06T13:11:09" color="">}}

{{<matomeQuote body="AdobeのPDFリーダーはほんとにひどい。企画室にいたらこの製品をボロクソに言いたいくらい。でも、億ドル規模の成功したソフトウェア会社を運営してるわけじゃないから、何も知ったこっちゃないけど。" userName="kristopolous" createdAt="2025-02-06T14:53:59" color="#45d325">}}

{{<matomeQuote body="PDFは真のユニバーサルアプリプラットフォーム。Microsoftには内緒にしてくれ。" userName="patapong" createdAt="2025-02-06T11:54:09" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
