+++
date = '2025-06-25T00:00:00'
months = '2025/06'
draft = false
title = 'PNGに新仕様が登場！'
tags = ["PNG", "画像フォーマット", "標準規格", "Web", "技術"]
featureimage = 'thumbnails/purple5.jpg'
+++

> PNGに新仕様が登場！

引用元：[https://news.ycombinator.com/item?id=44365754](https://news.ycombinator.com/item?id=44365754)




{{<matomeQuote body="やあ、著者だよ！<br>何でも聞いてね。<br>よくある疑問に答えるよ。<br>- 「新フォーマット」じゃなく既存のアップデートだよ。<br>- 後方互換性は高い。<br>- 古いソフトでもなるべく表示できる。<br>PNGはチャンクに分かれてて、不明なチャンクはスキップできる。画像ストリームは一つだけ。" userName="ProgramMax" createdAt="2025/06/25 19:00:25" color="#45d325">}}




{{<matomeQuote body="新しい仕様を使ったPNGの例ってある？アニメとかHDR画像とかのデモページがあると cool だな。自分のソフトが対応してるかテストしてみたい。" userName="fwip" createdAt="2025/06/25 20:05:46" color="#ff33a1">}}




{{<matomeQuote body="もちろん！<br>共同著者のChris LilleyがHDR画像の例をブログに載せてるよ：https://svgees.us/blog/cICP.html<br>記事の真ん中あたり、バースデーケーキの画像だよ。<br>スマホで見てみてね。ケーキや髪のピンク、背景がより鮮やかになってるはず。<br>ブラウザサポート検証用のWPTもあるよ：https://wpt.fyi/results/png/cicp-chunk.html?label=master&lab...<br>これは退屈な青い画像だけど、ブラウザでライブで見れる：https://wpt.live/png/cicp-chunk.html<br>APNGの例はWikipediaの画像を使えるよ：https://en.wikipedia.org/wiki/APNG<br>でも、君の言う通り、デモを用意すべきだったね。" userName="ProgramMax" createdAt="2025/06/25 20:21:42" color="#ff33a1">}}




{{<matomeQuote body="僕は一般的なツールで扱えるメタフォーマットが好きなんだ。PNGは今までIFF（Interchange File Format）に「ほぼ」準拠してたけど、少し違ったせいで「汎用IFFツール」が生まれなかったと思う。<br>だから僕のPNGv3への願いは、PNGがIFFに完全に準拠することなんだ。<br>PNGをIFFに合わせるのは難しいけど、PNGがIFFに反して導入した良いアイデアをIFF自身の仕様に「逆輸入」するのはどう？<br>つまり、「PNGで使われてるIFFのバリアント」をIFF 2.0として正式な仕様にするんだ。これはPNG仕様から独立させる。IFFv1が準拠するプロファイルや、全く新しい「グリーンフィールド」プロファイルも定義して、両方のドキュメントを可逆的に変換できるようにする。" userName="derefr" createdAt="2025/06/25 21:06:28" color="#45d325">}}




{{<matomeQuote body="例をありがとう。ピンクのケーキの画像を試してみたよ。僕の環境だと、ウェブブラウザだけがちゃんと表示できたんだ。IrfanView, XnView, Nomacs, Windows Photosみたいなビューアーも、Paint .NET, GIMPみたいなエディターも、全部「色あせた」画像しか表示できなかった。" userName="jacekm" createdAt="2025/06/25 22:30:18" color="">}}




{{<matomeQuote body="sRGBってこんなに限界があるんだって初めて知ったよ。CRTテレビが人気だった理由や、アナログTVをPC画面でまともに見れなかった理由が分かった気がする。" userName="Nopoint2" createdAt="2025/06/26 05:12:02" color="">}}




{{<matomeQuote body="圧縮の改善について、どんなことが期待できる？ロスレスWebPやJPEG XLに匹敵する可能性はあるの？" userName="LinAGKar" createdAt="2025/06/26 15:39:45" color="">}}




{{<matomeQuote body="新しい標準をビッグエンディアンで作るべきじゃないね。<br>共通コンテナ形式がどれだけ役に立つかも疑問だよ。中身のフォーマットを知らないと何もできないし、「賢い」プログラムがファイルを変な扱いをすることが問題。" userName="account42" createdAt="2025/06/26 08:47:20" color="">}}




{{<matomeQuote body="AIFFやRIFFファイルは知ってたけど、両方IFFだってことに気づかなかったよ。IFFを知らなかった。ありがとう :)<br>W3Cは古い仕様を壊さないように要求してるんだ。次のPNG仕様が以前のを無効にするなら承認されない。<br>IFFv2を正式化してPNGをそれに適応させるのは考えられるけど、それは事実上PNGIFFで、新しい仕様になるだろうね。古い仕様は壊せないから。<br>そのアイデアは好きだけど、たぶん別のものになる。 formal なIFF仕様を作るのは良いことだろうな。管轄団体がないなら、組織を見つけて関心を集められる。W3Cじゃなさそう。ISOサブグループとか？" userName="ProgramMax" createdAt="2025/06/25 22:48:35" color="#ff5c5c">}}




{{<matomeQuote body="うん、大手企業のいくつかからは賛同を得られたんだ。全部のグループに連絡できるわけじゃないけどね。大手企業が賛同したから、他の企業もプログラムをアップデートしてくれることを願ってるよ。<br>だから...バグ報告してね :D<br>あと、優しくね。これ公開されたの昨日なんだ。" userName="ProgramMax" createdAt="2025/06/25 22:50:53" color="">}}




{{<matomeQuote body="広色域をsRGBとして変換せず見ると薄く見えるけど、それ以外はそこまで制限されてないよ。問題はそこだけさ。" userName="account42" createdAt="2025/06/26 08:35:51" color="">}}




{{<matomeQuote body="記事の途中でもほぼ同じこと言ってるね。PNG自体を変えるんじゃなくて、IFFをPNGのIFFに合うように合わせようってさ。" userName="saintfire" createdAt="2025/06/25 23:14:19" color="">}}




{{<matomeQuote body="まずは今のままでどこまでできるか見るのが目標。Step1はlibpngを改善して圧縮率アップ、仕様変更なしで。Step2は並列処理でファイルサイズ少し増えるかもだけどオプション。Step3はzstdみたいな大きな変更だけど、これは旧ソフトでは見れなくなるからハードル高い。Step1で十分ならやらないかもね。これはあくまで目標で約束じゃないよ。" userName="ProgramMax" createdAt="2025/06/26 19:15:52" color="#45d325">}}




{{<matomeQuote body="これは”新しいフォーマット”じゃなく既存のアップデートなんだね。古いソフトでもちゃんと絵として認識できる後方互換性の高さは素晴らしいけど、最適じゃない表示に気づかない人がいるのは問題。追記によると、古いソフトだと色があせて見えるみたいで最悪だね。JPGのゲインマップみたいに、sRGBの色は正しく表示されて、広色域は新しいソフトでだけ利点を得られるようにできたはずなのに。" userName="account42" createdAt="2025/06/26 08:30:24" color="#ff33a1">}}




{{<matomeQuote body="JPEG XLの可逆圧縮と比べて、何か利点はあるの？" userName="nabla9" createdAt="2025/06/26 12:18:04" color="">}}




{{<matomeQuote body="ライブデモが必要って意見に賛成。あと、デモでピンクの色を使う時は気をつけてね。赤緑色覚異常の人には問題になることがあるんだ。男性の約8％に影響するから、みんなが見れるように配慮しよう。" userName="jcynix" createdAt="2025/06/26 18:03:04" color="">}}




{{<matomeQuote body="OptiPNGとかPngcrushみたいなツールは、元々遅いPNGにさらに処理能力が必要になるんだ。しかも、ほとんどの場合、新しい方法には及ばないってさ。" userName="Nanopolygon" createdAt="2025/06/27 05:19:24" color="">}}




{{<matomeQuote body="もしマジで新しいことするなら、HALICみたいな凄いやつを参考にした方がいいよ。HALICは超高速で圧縮率も高くてメモリも全然使わないし、マルチスレッドも強力なんだ。新しいPNGにピッタリだと思うけど、HALICの作者がどう思うかは分からないね。" userName="Nanopolygon" createdAt="2025/06/27 05:49:26" color="#45d325">}}




{{<matomeQuote body="JPEG XLとの違いはいっぱい。一番は普及度かな。JPEG XLも良いけどブラウザサポートは後回しになりがち。PNGはもうみんな使ってる。あと、長持ちするのも強みでアーカイブにも向いてる。みんな、帯域幅やストレージで困ったことある？PNGのせいで遅かった？ファイルサイズ気にするのは90年代の名残かもよ。" userName="ProgramMax" createdAt="2025/06/26 19:26:42" color="#ff33a1">}}




{{<matomeQuote body="僕のM1 macbookのMacOSでFirefoxで見たら、画像の違いがハッキリわかったよ。いいね。" userName="cratermoon" createdAt="2025/06/26 14:00:28" color="">}}




{{<matomeQuote body="今作業してるPNG Fourth Editionには、たぶんgain mapを追加する予定だよ。でも、gain mapは追加データだからトレードオフはあるんだ。Third Editionに入らなかったのは、まだgain mapが正式な標準じゃないから。でも、標準ができたらすぐに対応できる準備はできてるよ。" userName="ProgramMax" createdAt="2025/06/26 19:06:23" color="#ff5c5c">}}




{{<matomeQuote body="僕もそう思ったけど、違いはかなり大きいね。なんか色がおかしくなったり、すごく明るい花が潰れたりするのかと思ったけど、そうじゃなくて、sRGB外の色って普通にあるんだね。昔はテレビとか、スクリーンの性能で表示できる色が限られててどうしようもなかったけど。" userName="Nopoint2" createdAt="2025/06/26 13:55:44" color="">}}




{{<matomeQuote body="あれ、なんでかGIMPだといつもの色空間変換ダイアログも出てこないな。" userName="account42" createdAt="2025/06/26 08:38:18" color="">}}




{{<matomeQuote body="面白いことに、Paint.NETだとケーキをスクリーンショット（Win+Shift+S）して貼り付けると鮮やかな画像になるのに、PNGを開くと色が薄くなった画像になるんだね。" userName="sedatk" createdAt="2025/06/26 21:24:05" color="">}}




{{<matomeQuote body="photopea.comの作者さんはユーザーの提案にすごく反応が良い人だよ。もし連絡してないなら、コンタクトしてみるのをオススメするね。" userName="dave8088" createdAt="2025/06/26 03:20:55" color="">}}




{{<matomeQuote body="＞なんでもするのに、その中に含まれてるアプリケーション固有のフォーマットを知る必要があるんだ<br>IFFのすごいところは、すべての”コンテナ”チャンクタイプ（LIST, FORM, CAT）が標準の一部だってこと。ドメイン固有のチャンクタイプは基本的にリーフノードになるって想定されてるんだよ。だから、IFFはXMLとかJSONとかLispみたいに”読める”（ELFなんかよりはずっと読める）形式なんだ。" userName="derefr" createdAt="2025/06/26 19:36:02" color="#ff5733">}}




{{<matomeQuote body="（スペースの都合で返信を分けます）<br>＞ビッグエンディアンのバイト順で新しい標準を作るべきじゃない<br>IFFは効率的なゼロコピーのためのワイヤプロトコル標準じゃないし、ストリーミング解析に適したファイル形式でもないよ。<br>それでいいんだ！すべてのフォーマットが、効率的でスケーラブルで並行処理可能で、他の素敵な言葉で表現されるようなメッセージングに適している必要はないんだからね！" userName="derefr" createdAt="2025/06/26 20:53:27" color="#ff33a1">}}




{{<matomeQuote body="PNGが圧縮なしで保存できたら便利だよね。そういう状況って結構あるんだよ。" userName="80x86" createdAt="2025/06/26 01:59:45" color="">}}




{{<matomeQuote body="ウェブの描画ツールでやってる面白いトリックなんだけど、ドキュメントのJSONデータをPNGのコメント欄に保存するんだ。こうすれば画像としてもすぐ使えるし、エディタにも読み込める。それにダウンロードフォルダが意味不明なJSONファイルでごちゃごちゃにならないよ。" userName="joshmarinacci" createdAt="2025/06/25 15:55:40" color="">}}




{{<matomeQuote body="面白いトリックだけど、ユーザーに何でPNGで保存されるのか、Paintとかで開いて保存し直すとデータが消えちゃう理由を説明したくないなあ。" userName="dtech" createdAt="2025/06/25 17:11:50" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それに、最終画像には見えないレイヤーとか履歴とか、編集できる部分をユーザーがうっかり共有しちゃってセキュリティ問題になることもあるかも。" userName="account42" createdAt="2025/06/26 08:51:50" color="#ff33a1">}}




{{<matomeQuote body="もしユーザーがPaintで写真を編集してるんなら、元ドキュメントで色々いじって遊びたいなんて全然思わないだろうね、絶対。" userName="KetoManx64" createdAt="2025/06/25 18:31:28" color="">}}




{{<matomeQuote body="Kritaもブラシをそんな感じで保存してるらしいよ。残念だけど、データが多すぎると予期せぬ問題が起こることもあるんだって。[1] - https://github.com/Draneria/Metallics-by-Draneria_Krita-Brus...<br>[2] - https://krita-artists.org/t/memileo-impasto-brushes/92952/11..." userName="shiryel" createdAt="2025/06/25 18:29:03" color="#38d3d3">}}




{{<matomeQuote body="もしlibpngにパッチが必要なら、Kritaは使いやすさのためにlibpngをベンダー化するべきかもね。こんな巨大なファイルを作りたい人がいても全然おかしくないし。" userName="oakwhiz" createdAt="2025/06/25 18:51:00" color="#ff5733">}}




{{<matomeQuote body="Macromedia Fireworksが20年も前に同じことしてたんだよ。デフォルトの保存形式がPNGだった。まあ、JSONが入ってたわけじゃないけどね…。" userName="speps" createdAt="2025/06/25 18:39:09" color="">}}




{{<matomeQuote body="俺も同じこと言おうとしてた！<br>ネイティブ形式なのにどこでも開けるのは良かったよね。でも余計なデータでファイルサイズ増やしたくないなら、ちゃんとエクスポートするのを忘れちゃダメだった。当時ウェブでFireworksのPNGをよく見かけたよ。" userName="usef-" createdAt="2025/06/25 22:08:30" color="#ff33a1">}}




{{<matomeQuote body="MacromediaがFireworksファイルをPNGで保存する時にやってたやつね。あとAdobeも、AIファイルをPDFで保存したり（AIファイルは全部PDFだよ）、PhotoshopがPSDをTIFFで保存したりするんだ（他のソフトだと1レイヤーなのに、PhotoshopだとレイヤーがたくさんあるTIFFをみんな不思議に思うみたい）。" userName="IvanK_net" createdAt="2025/06/25 18:46:05" color="#45d325">}}




{{<matomeQuote body="あー、MacromediaがFireworksでPNG保存する時にこれやってたね。これ忘れてたよ…Fireworksは一番好きな画像エディターだったな〜。あんなに愛せるソフトはもう見つからない気がする。グラフィックのプロじゃないけど、Fireworksはとにかく最高だった。" userName="giancarlostoro" createdAt="2025/06/25 18:50:46" color="">}}




{{<matomeQuote body="そういえば、Photopea.comの作者は僕だよ:D 今Fireworksファイルを開ける唯一のソフトなんだ！ファイルがあったらブラウザですぐ開けるから試してみてね。<br>https://www.photopea.com<br>https://community.adobe.com/t5/fireworks-discussions/open-fi..." userName="IvanK_net" createdAt="2025/06/25 19:49:10" color="#785bff">}}




{{<matomeQuote body="Photopea、神の仕事してるね、感謝！いつも使ってるよ。パフォーマンスは今まで見たWebアプリの中で一番すごいかも。" userName="eigenvalue" createdAt="2025/06/26 11:49:18" color="#ff5c5c">}}




{{<matomeQuote body="PNGチャンクで使われてるフォーマットについて何か情報ある？誰かFireworksを再開発してくれないかな〜、色んなワークフローに完璧に合ってたんだよね。" userName="speps" createdAt="2025/06/25 23:09:29" color="">}}




{{<matomeQuote body="Photopeaの有料ユーザーだけど、マジすごい。信じられないくらい助けられたよ。Photopea見つける前はデュアルブートまで考えてたんだ。（.aiファイルとかもすごいよく扱えるしね！！）" userName="Andrex" createdAt="2025/06/26 13:05:21" color="#ff5c5c">}}




{{<matomeQuote body="これMermaid diagramsのエクスポートとかにすごく良さそうだね。" userName="neuronexmachina" createdAt="2025/06/25 17:36:56" color="">}}




{{<matomeQuote body="これについて詳しく説明してくれる？JSONみたいなテキストを画像の中に保存して、それをすぐ画像として使えるって、ちょっとありえない話に聞こえるんだけど？" userName="tomtom1337" createdAt="2025/06/25 16:40:05" color="">}}




{{<matomeQuote body="OPじゃないけど、PNGとかほとんどの画像・動画フォーマットはメタデータとか任意のフィールドを許可してるんだよ。ちゃんとパースできるソフトなら、知らないフィールドは安全にスキップできる。<br>HTTPリクエストヘッダーと似てるかな。標準のヘッダーもあるけど、x-tomtomとか勝手に作って送っても止められないでしょ。受け取った側がそれをパースして使えるんだ。PNGも同じだよ。<br>https://dev.exiv2.org/projects/exiv2/wiki/The_Metadata_in_PN..." userName="bitpush" createdAt="2025/06/25 16:47:34" color="#785bff">}}




{{<matomeQuote body="テキストじゃなくて”アイデア”を保存してるんだよ。「マップ」とか「CADモデル」とか「ビデオゲームのスキン」とかね。例えばスプリンクラー配置図みたいな”マップ”は、家の長方形とか庭の境界線のスプラインとか木の円とか、パイプを描く線の集まりでできてる。それぞれの幾何要素は、XとYの位置、長さや直径、色なんかを定義するJSONテキストで簡潔に表せるんだ。そしてOPは、そのJSONを画像に戻せるレンダリングエンジンを持ってるんだよ。" userName="LeifCarrotson" createdAt="2025/06/25 17:29:52" color="#38d3d3">}}




{{<matomeQuote body="テキスト（JSON）をコメントとして保存するけど、ファイル自体はPNGだから画像として使える（ビューワーはコメントを無視するからプレビューもできる）。でもOPのエディターなら、そのファイルを読み込んでコメントをパースして元のデータを取り出して編集を続けられる。メンテするファイルが1つで済む。なかなか賢いやり方だね。" userName="chown" createdAt="2025/06/25 16:49:47" color="#ff33a1">}}




{{<matomeQuote body="データ可視化ツールみたいに、画像を表示するコードにとってこれってすごく便利だよ。<br>画像がメインだけど、元データはJSON形式かもしれないよね。元データを画像に（見えない形で）埋め込んでおけば、後で取り出して修正したり再生成したりできるんだ。" userName="woodrowbarlow" createdAt="2025/06/25 16:59:16" color="#45d325">}}




{{<matomeQuote body="いや、前のコメントの人は、JSONテキストを画像のメタデータとしてコメントに追加するって言ってるんだと思うよ。" userName="behnamoh" createdAt="2025/06/25 16:47:10" color="">}}




{{<matomeQuote body="draw.ioでPNGをダウンロードするときにどうなるか見てみてよ。" userName="meindnoch" createdAt="2025/06/25 18:23:23" color="">}}




{{<matomeQuote body="これ、めちゃくちゃ良い使い方だよね。Excalidrawもこうしてるよ[0]、そして`.excalidraw.png`っていう2段階の拡張子を使ってるんだ。<br>[0]: https://excalidraw.com/" userName="japanuspus" createdAt="2025/06/26 06:19:20" color="#ff5c5c">}}




{{<matomeQuote body="これはValetudoがHome Assistantにロボットのマップデータを送るのにも使ってる方法だよ。 https://hass.valetudo.cloud." userName="geekifier" createdAt="2025/06/25 17:12:40" color="#785bff">}}




{{<matomeQuote body="stable-diffusion-webuiもこうしてるよ（フォーマットは残念ながらplaintextだけど）。ComfyUIはnode graphをJSONで保存したりね。" userName="akx" createdAt="2025/06/25 19:17:59" color="#ff5733">}}




{{<matomeQuote body="多くのAI画像生成のフロントエンドもこうしてるね。生成の設定をコメントとして保存しておけば、画像を開いてpromptや設定（ComfyUIなんかだとworkflow全部）を読み込んで調整できるんだ。<br>正直、画像扱うツールではかなり一般的だと思うよ。" userName="dragonwriter" createdAt="2025/06/25 18:54:00" color="#45d325">}}




{{<matomeQuote body="＞ save a JSON representation of your document as a comment field inside of a PNG<br>それって圧縮できるの？<br>理論的には’zTXt’チャンクがあるんだけど、僕の場合うまくいったことがないから、聞いてるんだ。" userName="osetnik" createdAt="2025/06/25 18:52:15" color="">}}




{{<matomeQuote body="これは、すでによく実装されてるものを仕様化しただけなんだ。<br>次世代PNGは新しいdecoderが必要だろうね。PNG2って呼べばよかったのに。<br>JPEG-XLはロスレスcodecとしてほとんどの人が求めてたものを提供してるよ。問題があるとしたらencodingとdecodingの速度とリソースだね。<br>現在のロスレス画像codecのチャンピオンはHALICだって。 https://news.ycombinator.com/item?id=38990568" userName="ksec" createdAt="2025/06/25 11:10:42" color="">}}




{{<matomeQuote body="問題があるとすれば、それはエンコードとデコードの速度とリソースだって。<br>でもJPEGのエンコーダーやデコーダーみたいに、時間とともに改善されると思うよ。" userName="illiac786" createdAt="2025/06/25 13:38:18" color="">}}




{{<matomeQuote body="WebP losslessは最新技術に近いし広く使えるのに、あまり使われてないよね。<br>つまり、可逆圧縮で最高の性能だけが重要じゃないか、少なくともそれで広く採用されるわけじゃないってことみたい。" userName="bla3" createdAt="2025/06/25 16:12:04" color="">}}




{{<matomeQuote body="私の間違いだといいけど、これは確定じゃないね。<br>昔のリファレンスエンコーダーとデコーダーは速度とかリソースを気にしなかったけど、過去10年でほとんどのリファレンスは速度最適化にかなり力を入れてるよ。<br>そして、もうJPEG XLのハードウェア実装を検討してる人もいるみたいだ（可逆だけだと良いけど）。" userName="ksec" createdAt="2025/06/25 14:05:24" color="">}}




{{<matomeQuote body="現代のJPEG実装とリファレンスを比べるような改善は少なくなるだろうってのは同意かな。<br>ハードウェアエンコード／デコードに関しては、あなたの言いたいことがよく分からないんだけど。<br>JPEG XLのハードウェア実装を検討してるって事実が、どういう意味を持つの？<br>JPEGのハードウェアアクセラレーションはかなり一般的だって知ってるから、それでJPEG XLがどう違うのか、良いのか悪いのか理解しようとしてるところだよ。" userName="illiac786" createdAt="2025/06/25 15:06:57" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="新しいPNGが具体的に何が良いのか、よく分からないな。<br>速度とか圧縮率といった要素が全く触れられてないし。<br>ありがとう、ksecさんの親切な考えに感謝します。<br>コーデックの幅広いサポート以外に、重要な要素は3つあるよ。処理速度、圧縮率、メモリ使用量。<br>HALICは速度／圧縮率の面で可逆画像圧縮において非常に優れてるけど、驚くほどのメモリを使うんだ。これが必須かどうか誰も触れてないけどね。<br>ただし、メモリ使用量が少ないと、処理速度と圧縮率の両方に悪影響を与えるんだ。<br>HALICの本当の性能は、大サイズの（20 MPixel以上）画像（シングルスレッドとマルチスレッド両方）でしか見られないよ。<br>現在のテスト例を以下に示すね。<br>動作中、HALICは約20 MBしかメモリを使わないけど、JXLは1 GB以上使うんだ。<br>https://www.dpreview.com/sample-galleries/6970112006/fujifil...<br>June 2025, i7 3770k, シングルスレッド結果<br>----------------------------------------------------<br>最初の4つのJPG画像をPPMに、合計 1,100,337,479バイト<br>HALIC NORMAL: 5.143s 6.398s 369,448,062バイト<br>HALIC FAST : 3.481s 5.468s 381,993,631バイト<br>JXL 0.11.1 -e1: 17.809s 28.893s 414,659,797バイト<br>JXL 0.11.1 -e2: 39.732s 26.195s 369,642,206バイト<br>JXL 0.11.1 -e3: 81.869s 72.354s 371,984,220バイト<br>JXL 0.11.1 -e4: 261.237s 80.128s 357,693,875バイト<br>----------------------------------------------------<br>最初の4つのRAW画像をPPMに、合計 1.224.789.960バイト<br>HALIC NORMAL: 5.872s 7.304s 400,942,108バイト<br>HALIC FAST : 3.842s 6.149s 414,113,254バイト<br>JXL 0.11.1 -e1: 19.736s 32.411s 457,193,750バイト<br>JXL 0.11.1 -e2: 42.845s 29.807s 413,731,858バイト<br>JXL 0.11.1 -e3: 87.759s 81.152s 402,224,531バイト<br>JXL 0.11.1 -e4: 259.400s 83.041s 396,079,448バイト<br>----------------------------------------------------<br>HALACでとても忙しかったから、彼にも休憩を与えたところだよ。<br>多分、やり残したHALICに戻って、もっと良くできるかもしれない。<br>つまり、もっと集中的に、そして／あるいは、もっと速く。<br>合成画像でもっとずっとうまく機能するようにすることもできるし、ニアロスレスのモードを追加することもできるよ。<br>でも、それに費やす時間に見合う価値があるかは分からないんだ。" userName="HakanAbbas" createdAt="2025/06/25 17:39:33" color="#ff33a1">}}




{{<matomeQuote body="PCでの使い方で言えば、JPEGやほとんどの画像コーデックのデコードはハードウェアじゃなくてソフトウェアでやってるんだ。<br>私が知る限り、AVIFデコードでさえブラウザではソフトウェアでやってるよ。<br>可逆のハードウェアアクセラレーションは、今のところJPEG XLがすごく遅いから意味があるんだ。<br>HALICの作者が下にいくつか結果を投稿してるけど、JPEG XLはメモリ最適化後でもメモリを大量に使うのに、20～50倍遅いんだ。<br>そして他の可逆コーデックと比べても10～20倍遅い。<br>JPEG XLは既にカメラで使われててDNGとして保存されてるけど、エンコードのリソースが普及を制限してるんだよね。<br>だからハードウェアエンコーダーは素晴らしいだろうね。<br>非可逆のJPEG XLについては、そこまででもないかな。<br>ビデオコーデックみたいに、ハードウェアエンコーダーは速度を重視する傾向があって、品質で追いつくには何度も繰り返し開発したり5～10年かかったりするんだ。<br>JPEG XLは比較的新しくて、たくさんのツールや使い方最適化があるから、現在のソフトウェアエンコーダーでさえコーデックのポテンシャルを出し切れてないんだ。<br>そして、私は質の悪いJPEG XLハードウェアエンコーダーはいらないから、アップグレード可能なソフトウェアエンコーダーを非可逆JPEG XLに、ハードウェアエンコーダーを可逆JPEG XLに使うのがずっと良いと思うよ。" userName="ksec" createdAt="2025/06/25 19:24:39" color="#ff33a1">}}




{{<matomeQuote body="＞ つまり、一番速いとか一番圧縮できるだけでは意味がない。<br>これは厳密には正しいけど、例えばアーカイブとかたくさんのユーザーに配信するコンテンツでは、圧縮に必要な速度やメモリは、圧縮サイズと比べたら二の次だよ。" userName="account42" createdAt="2025/06/26 09:02:20" color="">}}




{{<matomeQuote body="HALICの議論ページ [1] はそれと違うこと言ってるよ。<br>LEA 0.5がチャンピオンみたいだね。<br>そして、この可逆画像圧縮ベンチマーク [2] ではHALICは10位にも全然入ってないよ。<br>[1] https://encode.su/threads/4025-HALIC-(High-Availability-Loss...<br>[2] https://github.com/WangXuan95/Image-Compression-Benchmark" userName="thesz" createdAt="2025/06/25 14:45:19" color="#38d3d3">}}




{{<matomeQuote body="可逆のJPEG XLエンコードは、ソフトウェアでも既に速いし、コア数に応じてすごくよくスケールするんだ。<br>数コアあれば、毎秒100メガピクセル以上簡単に圧縮できるよ。<br>（DPReviewのサンプルを使ったコメントにある時間はシングルスレッドのもので、画像1枚が101.8MPだから合計約400MPに対する時間なんだ。）" userName="spider-mario" createdAt="2025/06/26 14:34:50" color="#ff33a1">}}




{{<matomeQuote body="ストレージは昔より安くなったよね。<br>帯域幅も昔より安くなった（ストレージほど安くはないけど）。<br>だから、低品質な非可逆圧縮技術より、高品質な非可逆技術や可逆技術がもっと採用されるようになったんだ。<br>今日、プロセッサのコアはそれほど速くなってないし、エネルギーもまだ安くないよね。<br>だから私の全ての仕事では、処理速度（エネルギー消費）の方がずっと優先度が高いんだ。" userName="HakanAbbas" createdAt="2025/06/26 13:42:12" color="">}}




{{<matomeQuote body="JPEGやPNGのロスレスって実用で使ったことないな。WebPのロッシーも微妙だったし、WebPが広まらなかったのってそれが理由だと思うよ。ロスレスってさ、アーカイブ以外で使い道あるの？" userName="mchusma" createdAt="2025/06/25 17:16:31" color="">}}




{{<matomeQuote body="HALICってやつは、ほぼ同じ圧縮率なのに数十倍速いんだって。しかもメモリもほとんど使わないらしい。残念ながら、これが現実みたい。" userName="Nanopolygon" createdAt="2025/06/26 18:50:26" color="#ff5c5c">}}




{{<matomeQuote body="透明性はどうなったの？あれこそがPNGの一番の利点だと思うんだけど。" userName="klabb3" createdAt="2025/06/25 12:00:38" color="">}}




{{<matomeQuote body="もしかしたら、JPEG 2000のエンコーダーみたいに、結局普及しないって可能性もあるよね。" userName="account42" createdAt="2025/06/26 08:57:14" color="">}}




{{<matomeQuote body="そうだね。でもさ、エンコードは一度だけだけど、デコードって何度も必要になるってこと、忘れてない？だから、ファイルサイズとデコード時間を最適化するのが超大事だと思うな。" userName="boogerlad" createdAt="2025/06/26 13:58:04" color="#ff5733">}}




{{<matomeQuote body="HALICが速いのはわかるけど、だからってロスレスJXLがハードウェアアクセラレーションいるほど遅いってわけじゃないと思うよ。" userName="spider-mario" createdAt="2025/06/26 18:55:11" color="">}}




{{<matomeQuote body="HALICって、その圧縮の範囲内だとデコード速度がすごく速いみたいだよ。すごいね。" userName="poly2it" createdAt="2025/06/25 18:45:19" color="">}}




{{<matomeQuote body="WebPのロスレスの唯一の弱点はさ、RGBだけしかダメだから、ビデオのYUVフレームをロスレスでそのまま保存できないことなんだ。AVIFのロスレスならこれができるんだけどね。" userName="adzm" createdAt="2025/06/25 16:23:42" color="#785bff">}}




{{<matomeQuote body="メタデータのことだけど、まだあまり普及してないってのは大した問題じゃないんじゃない？特定のツールで対応できれば十分だし、これはPNGにとって大きな進歩だよ。" userName="yyyk" createdAt="2025/06/25 15:28:53" color="">}}




{{<matomeQuote body="俺さ、コンピュータービジョンの画像アノテーションツール[0]でPNGを使ってるんだ。PNGのいいメタデータ機能を使って、クラスラベルをサイドカーファイルじゃなくて画像に直接保存してる。次はこの手のタスク向けにフォーマットを拡張したいんだよね。[0]https://github.com/VoxleOne/XLabel" userName="voxleone" createdAt="2025/06/25 15:06:27" color="#45d325">}}




{{<matomeQuote body="メディア作成のAsset pipelineでは、ロスレス画像や動画の圧縮率が良いとすごく助かるよね。" userName="Inityx" createdAt="2025/06/25 20:41:57" color="">}}




{{<matomeQuote body="前に調べた時、cwebpってPNGのカラースペース情報をちゃんと保てないから、実際は見た目がロスレスじゃないんだよ。" userName="account42" createdAt="2025/06/26 08:55:33" color="#45d325">}}




{{<matomeQuote body="なんか、多くの人が非公式にやってたことを改めて認めたって感じだね。俺はコンピューターが作った静止画にはPNG、写真には昔ながらのJPEGを使ってるよ。" userName="ChrisMarshallNY" createdAt="2025/06/25 17:02:37" color="">}}




{{<matomeQuote body="デコード速度だけじゃなくて、エンコード速度も桁違いに速いんだ。このスレッドの下の方に新しい検証結果があるよ。自分で確認してなかったら、詐欺かと思ったくらいだ。" userName="ksec" createdAt="2025/06/25 19:30:07" color="#45d325">}}




{{<matomeQuote body="正直言うと、JPEG XLって超巨大画像専用だと思ってたから、数年間無視してたんだ。" userName="Aloisius" createdAt="2025/06/25 16:40:09" color="">}}




{{<matomeQuote body="そうそう、JPEG-XLにはアルファチャンネルがあるんだよ。" userName="cmiller1" createdAt="2025/06/25 13:18:27" color="">}}




{{<matomeQuote body="WebPはチャンネルあたり8ビットが最大なんだ。HDRには10ビットか12ビットが本当に必要。WebPはすごいけど、”最先端”って言うならJPEGXLだと思うよ！" userName="ProgramMax" createdAt="2025/06/25 17:38:35" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
