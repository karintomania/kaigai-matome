+++
date = '2025-02-20T00:00:00'
months = '2025/02'
draft = false
title = '240タブでPongを動かしてみた'
tags = ["ブラウザ", "ゲーム", "技術", "実験", "プログラミング"]
featureimage = 'thumbnails/blue.jpg'
+++

> 240タブでPongを動かしてみた

引用元：[https://news.ycombinator.com/item?id=43119086](https://news.ycombinator.com/item?id=43119086)

{{<matomeQuote body="あ、こんにちは！これ作ったんだ！HNの人たちにウケるかなって思ってさ。質問があれば何でも聞いてね！いくつか考えてることもあるよ：<br>・アニメーション使ったらどうなるか興味あるな（Firefoxはアニメーションfaviconサポートしてるし）。将来のボールの位置を予測して、アニメーションSVG作ればもっと滑らかな動きになるかも。<br>・友達がオフラインで教えてくれたんだけど、canvasのラスタライズはGPU上で行われるから、アニメーションのカクつきの印象が間違ってたかもしれない。<br>・Chromeはfaviconの更新を1秒4回に制限してるかもしれないけど、色々な更新方法があるから見落としてるかもしれない。" userName="eieio" createdAt="2025-02-20T22:48:39" color="#785bff">}}

{{<matomeQuote body="リダイレクションするにしても、君の作品大好きだよ！こういう技術的なパフォーマンスアートは見るのも作るのも楽しいよね。もしかしたら、それが僕がジャグリングをする理由でもあるかも。「もっと難しい方法があるはず！」ってね。" userName="uranium" createdAt="2025-02-21T00:34:44" color="#38d3d3">}}

{{<matomeQuote body="君のポンゲームはどれ？見てみたいな。" userName="eieio" createdAt="2025-02-21T02:47:00" color="">}}

{{<matomeQuote body="俺も興味あったけど、これかもしれない。<br>https://news.ycombinator.com/item?id=19155205" userName="WastedCucumber" createdAt="2025-02-21T07:50:25" color="">}}

{{<matomeQuote body="＞友達がオフラインで言ってたのは、canvasのラスタライズは大抵GPU上で行われるから、アニメーションのカクつきの印象が間違ってたかもしれないって言ってたけど、解決したの？いいリソースはJake Gordonのブログだよ。彼はダブルバッファリング方式のキャンバスゲームループを使ってる。<br>https://jakesgordon.com/writing/javascript-pong/part1/" userName="dataviz1000" createdAt="2025-02-20T23:16:59" color="">}}

{{<matomeQuote body="ごめん、特にタブバーに移動する四角形のカクつきについて話してるんだ。効率が悪かったからfaviconを何度も更新してたけど、なぜカクつくのか理解してなかった。faviconの処理は別スレッドで行われると思ってたから、前面でアニメーションしても影響を受けないと思ってたんだ。友達が言ってたのは、俺はCPUではなくGPUに制約されてたってことだ。" userName="eieio" createdAt="2025-02-21T15:49:53" color="">}}

{{<matomeQuote body="素晴らしい！君の出力速度は本当にすごいね！この作品や、グローバルキャップロック、バッドアップルのregex、UUIDなど、1百万のチェックボックス以降の多くのことに感心してるよ。君の努力に驚いてる。" userName="adamgordonbell" createdAt="2025-02-21T02:42:40" color="#45d325">}}

{{<matomeQuote body="あ、アダムありがとう！ここで会えるのが楽しいね！" userName="eieio" createdAt="2025-02-21T16:17:35" color="">}}

{{<matomeQuote body="今度はブラウザタブでDoomを見たいな。" userName="OneLeggedCat" createdAt="2025-02-21T03:37:00" color="">}}

{{<matomeQuote body="Nolenの最近のRecurseでのトークに参加したんだけど、こういうクールで面白い一発ネタのゲームは本当に楽しいよね。昔のインターネットを思い出すな、ただ遊ぶために作られてた時代。昨夜もNolenが投稿してるものからインスパイアを受けて、ページのソースコードを表示する非常に面白いクワインを作ったんだ。手間はないけど、こういうふうに面白いものを作っている人たちがいることが嬉しい。みんなにとって物事を面白くしてくれるね。<br>そのクワインの作品はこちらだよ、笑いたい人はどうぞ。<br>https://github.com/notactuallytreyanastasio/blog/blob/main/l..." userName="rhgraysonii" createdAt="2025-02-20T22:41:39" color="#ff5733">}}

{{<matomeQuote body="Nolenの作品は最高だね！昔のインターネットを思い出させる単目的なアプリやサイトが特にいい感じ。" userName="smithcoin" createdAt="2025-02-20T22:31:21" color="#785bff">}}

{{<matomeQuote body="Matthew Rayfieldがタブのファビコンの代わりにURLバーを使った探求も面白いよ。リンクはコチラ：<https://www.youtube.com/watch?v=q7GtCLwTmV4>" userName="dejawu" createdAt="2025-02-21T06:11:26" color="">}}

{{<matomeQuote body="Mattの作品からすごく刺激を受けてる！今回のプロジェクトを進める中で、彼のURLのアイデアを思い出すのが楽しかった。" userName="eieio" createdAt="2025-02-21T15:44:27" color="#ff5c5c">}}

{{<matomeQuote body="思い出したのが：>“Show HN: びっくりするような実験を見たから、シンプルなバージョンを作ったよ” (2023年11月25日) <https://news.ycombinator.com/item?id=38413660><br>*>“Three.jsとlocalStorageで複数のウィンドウに3Dシーンを同期させる” (2023年11月27日) <https://news.ycombinator.com/item?id=38437773>" userName="kvemkon" createdAt="2025-02-21T14:38:07" color="">}}

{{<matomeQuote body="Firefoxのタブの幅について。ブラウザの検査ツールで最小タブ幅のスタイルを見つけて、userChrome.cssに追加できるよ。タブ幅についてのガイドもあるみたいだけど、ちょっとズルかもね。" userName="capitainenemo" createdAt="2025-02-22T22:04:48" color="">}}

{{<matomeQuote body="次はDoomが来ると言っておくよ。" userName="LonelyWolfe" createdAt="2025-02-20T22:39:52" color="">}}

{{<matomeQuote body="Doomは結構厄介なんだよね。タブの更新頻度が4FPSに制限されるから、画面の大部分が更新されるとなると、プロセスが重くなるんだよ。オフスクリーンキャンバスのことは知らなかったけど、これが役立つかも。" userName="eieio" createdAt="2025-02-20T22:50:09" color="">}}

{{<matomeQuote body="確かにDoomは計算機や妊娠検査薬、ミリングマシン、タッチバー、PDFドキュメントでも厄介なんだ。でもそれが逆に楽しさでもある！Doomを4FPSでプレイするのも、やったことがあればなんとかなるだろうな！" userName="graypegg" createdAt="2025-02-21T15:40:24" color="">}}

{{<matomeQuote body="NolenはiPhotoでもDoomをやってたと思うけど、そういうのが好きならいいかも。" userName="rhgraysonii" createdAt="2025-02-20T22:42:23" color="">}}

{{<matomeQuote body="まさに不思議で楽しげ。A+の努力だね！" userName="luma" createdAt="2025-02-20T21:31:39" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Ok GoがGoogle Chromeとコラボしたミュージックビデオがあって、ブラウザウィンドウとダンサーの同期や万華鏡みたいな効果が素晴らしかったのを思い出したわ。" userName="wedocharlie" createdAt="2025-02-20T21:30:10" color="">}}

{{<matomeQuote body="＞ここがその動画だよ：”https://www.youtube.com/watch?v=ISL1GfXwr-o”" userName="wedocharlie" createdAt="2025-02-20T21:31:48" color="">}}

{{<matomeQuote body="昔、Chromeの実験でArcade Fireを知ったんだ。" userName="Rendello" createdAt="2025-02-20T22:33:38" color="">}}

{{<matomeQuote body="Doomの移植の話。" userName="sho_hn" createdAt="2025-02-20T23:03:15" color="">}}

{{<matomeQuote body="Chromeがこんなに変更できるのはすごいね。このやつはwebsockets使ってるみたいだけど、タブ間通信の拡張機能も使えるよ。" userName="ge96" createdAt="2025-02-20T22:13:25" color="#ff5733">}}

{{<matomeQuote body="それともweb storage APIを使う手もあるよ。" userName="remram" createdAt="2025-02-20T23:32:41" color="">}}

{{<matomeQuote body="それでストレージの変更をリスニングするってことでしょ？" userName="ashu1461" createdAt="2025-02-21T03:55:36" color="">}}

{{<matomeQuote body="いつもながら感心するわ。" userName="fitsumbelay" createdAt="2025-02-21T06:57:53" color="">}}

{{<matomeQuote body="＞お約束だね：”https://imgur.com/a/FcYpGz1”" userName="qingcharles" createdAt="2025-02-20T22:38:56" color="">}}

{{<matomeQuote body="チェックボックスがタブになってるね。しっかりピクセルを取れる場所を見つけ続けてるよ。" userName="aqueueaqueue" createdAt="2025-02-21T00:03:20" color="">}}

{{<matomeQuote body="これはまさにHNが見せるために作られたものだね。素晴らしい仕事だと思うよ！" userName="nektro" createdAt="2025-02-21T05:32:29" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
