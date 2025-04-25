+++
date = '2025-04-18T00:00:00'
months = '2025/04'
draft = false
title = 'ド迫力！QRコードにDoom風ゲームを詰め込んでみた結果www'
tags = ["QRコード", "ゲーム", "JavaScript", "HTML5", "技術デモ"]
featureimage = 'thumbnails/purple8.jpg'
+++

> ド迫力！QRコードにDoom風ゲームを詰め込んでみた結果www

引用元：[https://news.ycombinator.com/item?id=43729683](https://news.ycombinator.com/item?id=43729683)

{{<matomeQuote body="DecompressionStream、初めて知ったわ、ありがとねー。HTML部分を削って、さらに容量を減らせたよ。PR送ったから、もしよかったら見てみて。" userName="sangeeth96" createdAt="2025-04-18T19:14:50" color="#ff33a1">}}

{{<matomeQuote body="マジ神！おかげで、タッチスクリーン操作、より良い移動、敵の出現とダメージの仕組みを（なんとなく）追加できた！マジで感謝、今月最高だわ:)" userName="kuberwastaken" createdAt="2025-04-18T19:49:09" color="#ff5c5c">}}

{{<matomeQuote body="マジか、すげー！役に立ててよかったわ:D" userName="sangeeth96" createdAt="2025-04-18T20:28:35" color="">}}

{{<matomeQuote body="これぞオープンソースの勝利って感じだね。" userName="collingreen" createdAt="2025-04-18T22:31:42" color="">}}

{{<matomeQuote body="ほんとそれ！" userName="kuberwastaken" createdAt="2025-04-18T22:49:12" color="">}}

{{<matomeQuote body="マジでクールなプロジェクト！　'data:' URLについて初めて知ったわー。URIスキーム自体は知ってたんだけど、URLとして使えるとは思わなかった。実は、QRコードに収まるようなものを作ろうと思ってたんだけど、HTTP(s)リンクが必要だと思って諦めてたんだよね。" userName="redbell" createdAt="2025-04-18T22:01:14" color="#ff5733">}}

{{<matomeQuote body="優しい言葉ありがとね！<br>自分もロックダウン中にこの動画にインスパイアされたんだよね。ブラウザベースにしたのは互換性が高いから。リポジトリにもちゃんとクレジットしてるよ:P" userName="kuberwastaken" createdAt="2025-04-18T22:16:07" color="#785bff">}}

{{<matomeQuote body="素朴な疑問なんだけど、QRコードってただのデータエンコードでしょ？　最大データ量は3kbくらいで、3000文字程度のテキストに相当すると思うんだけど。ってことは、このゲームは3kbくらいの実行ファイルで動くってこと？" userName="cosignal" createdAt="2025-04-19T02:56:10" color="">}}

{{<matomeQuote body="QRコードには、数値、英数字、8ビット、漢字など、さまざまなエンコードモードがあるんだ。一般的なのは英数字エンコードで、最も密度が高いのが8ビットエンコード（バイナリデータをそのまま格納）。<br>8ビットエンコードは任意のバイナリデータを格納できるよ。qrencodeツールでネイティブにできる。デコーダのサポートはもっとトリッキーで、テキストを含むと思われがち。自分はzbarにパッチを送る必要があったんだ。" userName="matheusmoreira" createdAt="2025-04-19T03:32:17" color="#ff33a1">}}

{{<matomeQuote body="興味深いね、返信ありがとう！" userName="cosignal" createdAt="2025-04-24T04:19:02" color="">}}

{{<matomeQuote body="data: URIはサポートされてないみたい。QRコードのサイズとか長さの問題じゃないんだ。<br>例えば、<html><body>Hi!</body></html>をエンコードするとdata:text/html;base64,PGh0bWw+PGJvZHk+SGkhPC9ib2R5PjwvaHRtbD4=になる。ブラウザに貼り付けると”Hi!”って表示されるけど、QRコードにすると動かない。" userName="pudquick" createdAt="2025-04-18T17:26:02" color="">}}

{{<matomeQuote body="dataURIならbase64エンコードもいらないよ。mime-typeとコンマの後にテキストを置くだけ。<br>data:text/html,<!doctype html><title>Hi!</title><p>Hello.<br><br>これでHTMLドキュメントになる。ASCII以外を使うなら`;charset=utf-8`が必要。<br>Base64は安全だけど、サイズが1/3大きくなる。ASCII dataURIがダメなデバイスもあるから、BackroomsのQRコードは738バイト削減できたかも。" userName="myfonj" createdAt="2025-04-18T19:23:00" color="#ff5733">}}

{{<matomeQuote body="これ、便利かも。Duck browserじゃブックマークできないけど、Safariはいけるね。" userName="reaperducer" createdAt="2025-04-19T00:07:11" color="">}}

{{<matomeQuote body="dataURIは過去に悪用されたから、ブラウザで制限されることが増えてる。リンクをクリックしてdataURIに移動できないとか。ブックマークとか手動入力はOK。<br>Backroomsはbase64 URIじゃなくても動くからもっと小さくできるよ。" userName="myfonj" createdAt="2025-04-19T01:29:38" color="#ff5733">}}

{{<matomeQuote body="すごいね！ちょっと試してみるよ！シェアしてくれてありがとう😊" userName="kuberwastaken" createdAt="2025-04-19T05:50:25" color="">}}

{{<matomeQuote body="どういたしまして :] BackdoomsをSandboxで試すなら、オリジナルのHTML payloadを使うか、”verbatim”を使うといいよ。そうしないと%23が二重エンコードされちゃうから。" userName="myfonj" createdAt="2025-04-19T18:26:57" color="#ff33a1">}}

{{<matomeQuote body="Safariだと壊れてるけど、Chromiumベースのブラウザならモバイルでも動くみたい。QRコードはURI URL自体を持ってるんだね。" userName="kuberwastaken" createdAt="2025-04-18T17:34:06" color="">}}

{{<matomeQuote body="ほとんどのiOSユーザーがQRコードを読み込むのに使うカメラアプリだと、このURLに遷移できないってこと。<br>HTMLゲームがSafariで動くかどうかは別の話。QRコードは、一般的な方法だとクリックできない。" userName="pudquick" createdAt="2025-04-18T17:40:18" color="">}}

{{<matomeQuote body="＞それはそうだね　笑" userName="kuberwastaken" createdAt="2025-04-18T17:56:48" color="">}}

{{<matomeQuote body="へー、見てくれてありがとね！多分、https://qrscanner.org/ みたいなのを使うといいかも。スマホだと大きいQRコードの読み取りが苦手なことが多いからさ。あと、残念ながらスマホじゃ動かないんだ。サイズ制限で互換性を入れられなかったんだよね。" userName="kuberwastaken" createdAt="2025-04-18T17:26:01" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ちなみに、Pixelの内蔵QRコードスキャナーだと問題なく動くよ。URLじゃなくてテキストとして認識するけど、クリップボードにコピーしてブラウザに貼り付ければOK。もちろん操作が全く効かないから即死だけど、全部うまくいくとは限らないよね。" userName="ascorbic" createdAt="2025-04-18T19:36:41" color="#ff5733">}}

{{<matomeQuote body="アップデート！なんと、最近のPRでさらに最適化されたおかげで、モバイルタッチサポートをちょこっと追加できたんだ。だから、もし操作方法がわかれば、スマホでも遊べるようになったよ！" userName="kuberwastaken" createdAt="2025-04-18T19:56:58" color="#ff5733">}}

{{<matomeQuote body="え、もしかしてモバイルだと全然動かないってこと？じゃあ、QRコードは何でスキャンするの？" userName="iainmerrick" createdAt="2025-04-18T17:41:25" color="">}}

{{<matomeQuote body="QRコードを物理的なカメラで直接スキャンする必要はないんだよ。普通のコンピューターなら、QRコード解析プログラムを使って、画像を入力として読み込めるんだ。JSでQRコードスキャンできるウェブページもあるくらい簡単だよ。だから、親の発言者は、QRコードの.pngファイルを保存して、リンク先のウェブサイトとかでデータを抽出することを勧めてるんだ。そうすれば、どんなコンピューターでもQRコードをスキャンできるってわけ。" userName="lelandbatey" createdAt="2025-04-18T17:58:30" color="#ff33a1">}}

{{<matomeQuote body="それか…URLを使うとか。デスクトップパソコンでQRコードをスキャンしたことのある人なんて、ゼロよりは多いだろうけど、ほとんどいないでしょ。" userName="iainmerrick" createdAt="2025-04-18T22:45:15" color="">}}

{{<matomeQuote body="たぶん僕自身がその数を3桁に乗せたと思うけど、もし興味があれば、ホストしてるバージョンもあるよ！このプロジェクトの理由は実用性じゃなくて、単に僕がそれを“できる”からなんだ。" userName="kuberwastaken" createdAt="2025-04-18T22:50:07" color="#785bff">}}

{{<matomeQuote body="その通り！もっとわかりやすく説明してくれてありがとう！" userName="kuberwastaken" createdAt="2025-04-18T18:10:04" color="">}}

{{<matomeQuote body="アップデート！モバイルタッチサポートをちょこっと追加できたから、もし別のChromiumベースのブラウザを使えば、URIを入力してモバイルでも遊べるよ！" userName="kuberwastaken" createdAt="2025-04-18T19:52:23" color="#ff5c5c">}}

{{<matomeQuote body="いいね！" userName="iainmerrick" createdAt="2025-04-18T22:41:35" color="">}}

{{<matomeQuote body="いやいや、そんなことないって。画像入力できるQRコードスキャナーならどれでも使えるよ！スマホ操作も入れたかったけど、そしたらめっちゃ容量食っちゃうからね。" userName="kuberwastaken" createdAt="2025-04-18T18:09:18" color="">}}

{{<matomeQuote body="iPhoneで動かないって聞いて、なんかホッとしたわ。QRコードってURLを打つ手間が省けるけど、勝手にコード実行されるのはマジで怖いじゃん。" userName="Jerry2" createdAt="2025-04-18T18:27:55" color="#785bff">}}

{{<matomeQuote body="マジかよ、実は俺も同じことブログに書いたんだよね。QRコードを気軽にスキャンすることの危険性についてさ。<br><br>＞https://kuberwastaken.github.io/blog/Technology/QR-Codes-and…" userName="kuberwastaken" createdAt="2025-04-18T19:09:38" color="#ff5c5c">}}

{{<matomeQuote body="内容は良いんだけど、最後の3分の1くらいがAIで水増しした感じが否めない。" userName="Valodim" createdAt="2025-04-19T06:29:26" color="">}}

{{<matomeQuote body="AIで水増しってどういうこと？" userName="kuberwastaken" createdAt="2025-04-19T07:05:21" color="">}}

{{<matomeQuote body="なんとなくわかるかも。AIチャットって、無駄な言葉でコンテンツを増やしたり、訴訟とかネガティブなイメージを避けるための免責事項を並べ立てたりするじゃん？あれに似てるってことだと思う。" userName="poilcn" createdAt="2025-04-19T07:52:28" color="">}}

{{<matomeQuote body="でもこれ、ブラウザ上で動くんだよね。普通のリンクを踏んで、JavaScriptのサンドボックス内でコードが実行されるのと変わらないじゃん。QRコードが怪しいリンクに繋がるのはみんな知ってるし。" userName="Blikkentrekker" createdAt="2025-04-18T20:15:46" color="#ff5c5c">}}

{{<matomeQuote body="QRコードの上に、人間が読める形式でリンク先が書いてあったら最高だよね。もしQRコードとリンク先が一致しなかったら、開くのを拒否するように設定できたらもっと安心。" userName="Blikkentrekker" createdAt="2025-04-19T07:23:18" color="#ff5c5c">}}

{{<matomeQuote body="今回のQRコードは大丈夫だけど、悪意のある人が作ったQRコードはどうなるかわからないよ。スキャンするまで何が起こるかわからないのが怖いところ。" userName="dylan604" createdAt="2025-04-18T21:08:13" color="#ff33a1">}}

{{<matomeQuote body="知ってる限り、QRコードで実行できるコードってURLくらいだよね。それって既に言われてるリスクと同じじゃん。" userName="Blikkentrekker" createdAt="2025-04-19T07:21:02" color="">}}

{{<matomeQuote body="これってQRコードからウェブサイト開いて、そこで好きなコード実行するのと何が違うの？" userName="berkes" createdAt="2025-04-19T07:30:44" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ウェブサイトのJavaScriptについて知ったら腰抜かすぞ。" userName="recursive" createdAt="2025-04-18T20:28:25" color="">}}

{{<matomeQuote body="canvasのCSSを`image-rendering: pixelated`にすると、ぼやけずにクッキリして良い感じになるよ！" userName="jasonjmcghee" createdAt="2025-04-18T17:11:03" color="#38d3d3">}}

{{<matomeQuote body="試したけど、こっちの方が楽しくてレトロな感じがして良いんだよね、笑" userName="kuberwastaken" createdAt="2025-04-18T17:30:20" color="">}}

{{<matomeQuote body="次のプロジェクト：QRコードでLLM！<br>関連：https://www.reddit.com/r/OpenAI/comments/138kbhs/someone_sho..." userName="thund" createdAt="2025-04-19T00:22:51" color="">}}

{{<matomeQuote body="アップデート - なんとか作ったよ、笑 (LLMじゃないけどクールなchatbot)<br><br>https://github.com/Kuberwastaken/MiniLMs/tree/main/SYNEVA" userName="kuberwastaken" createdAt="2025-04-24T16:18:00" color="#ff5733">}}

{{<matomeQuote body="マジか、ちょっと試してみるかも。ありがとう。" userName="kuberwastaken" createdAt="2025-04-19T06:12:01" color="">}}

{{<matomeQuote body="ゲームのトレーラーのリンク先が”Fly me to the moon - 19 September 2024”ってショートフィルムになってるけど、これ間違ってない？" userName="r1chardnl" createdAt="2025-04-18T17:08:05" color="#ff5c5c">}}

{{<matomeQuote body="修正したよ、ごめんね、笑" userName="kuberwastaken" createdAt="2025-04-18T17:28:06" color="#45d325">}}

{{<matomeQuote body="Never gonna give you upは新しい形で生き続けるんだな。" userName="dylan604" createdAt="2025-04-18T21:02:43" color="">}}

{{<matomeQuote body="こういうミニマルなゲームプロジェクトってマジ最高だよね。マジ、.kkrieger思い出すわ。<br>https://en.wikipedia.org/wiki/.kkrieger" userName="Barrin92" createdAt="2025-04-18T21:56:02" color="#785bff">}}

{{<matomeQuote body="マジかよ！！誰かがLinkedInで教えてくれたんだよね、超クールじゃん！" userName="kuberwastaken" createdAt="2025-04-18T22:03:02" color="">}}

{{<matomeQuote body="kuberwastaken、マジでイケてるもの作り続けてくれよな！" userName="rezmason" createdAt="2025-04-18T19:15:58" color="">}}

{{<matomeQuote body="マジ頑張るっす！あざます😊" userName="kuberwastaken" createdAt="2025-04-18T19:55:21" color="">}}

{{<matomeQuote body="友達と似たようなアイデアで盛り上がってたんだよね。<br>3DプリントのSTLファイルを全部QRコードにエンコードして、それをプリントしたオブジェクトに貼り付けたら、オブジェクトをスキャンしてプリントするだけで複製できるんじゃね？って。<br>調べたらデータ量が多すぎて無理かと思ったけど、でかいQRコード作ればいけるのか…" userName="kamranjon" createdAt="2025-04-19T13:11:11" color="#785bff">}}

{{<matomeQuote body="昔、テーブルのデザインで同じようなことやったわ。2Dファイル（テーブルはシート材のカットだけで済むから）をエンコードしたんだけど、それでもカスタム圧縮アルゴリズムが必要だったんだよね。<br>https://johnkestner.com/rev/" userName="jkestner" createdAt="2025-04-20T19:49:37" color="#45d325">}}

{{<matomeQuote body="この前のDef Con 32のバッジで、Pico 2上でフルバージョンのDoomが動くんだぜ[1]。<br>[1] Running Doom on the Raspberry Pi Pico 2: A Def Con 32 Badge Hack:<br>https://shop.sb-components.co.uk/blogs/posts/running-doom-on..." userName="teleforce" createdAt="2025-04-19T00:38:12" color="#ff5c5c">}}

{{<matomeQuote body="Raspberry Piなら余裕で動くっしょ、計算能力高いし。" userName="kuberwastaken" createdAt="2025-04-19T05:52:19" color="">}}

{{<matomeQuote body="Picoはarduinoみたいなマイコンだから。フルバージョンのGNU/Linuxは動かないよ。Nanoと間違えないでね。" userName="opan" createdAt="2025-04-19T09:41:43" color="#38d3d3">}}

{{<matomeQuote body="s/Nano/Zero/" userName="opan" createdAt="2025-04-19T18:00:43" color="">}}

{{<matomeQuote body="これマジですごいね。似たような感じで、https://urlfile.app 作ってみたんだ。URLでファイルを共有できるか試したくて（あと、EdgeでQRコード生成してスマホに読み込みたかったし）。小さいファイルなら結構使えるよ。" userName="below43" createdAt="2025-04-19T06:12:11" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="それ、めっちゃクールじゃん！" userName="kuberwastaken" createdAt="2025-04-19T07:05:50" color="#ff5c5c">}}

{{<matomeQuote body="25年前のAllegro SizeHackに出した作品思い出したわ。https://www.oocities.org/trentgamblin/sizehack/entries.html#... でPacManみたいなゲームを10KB以下で作ったんだ。HackManって名前でね。一番の自慢はストーリーだったりする！" userName="EGreg" createdAt="2025-04-18T19:06:10" color="#ff5733">}}

{{<matomeQuote body="マジで超クール！" userName="kuberwastaken" createdAt="2025-04-18T19:57:57" color="#ff5733">}}

{{<matomeQuote body="誰かがゴキブリとかミバエをハックしてDOOMをプレイさせるってニュースを待ってるんだよね。自律じゃなくてもいいから、鳥肌が立つようなやつ。昆虫をロボット化してるみたいだし、歯ブラシから起動したQRコード経由でアクセスしてDOOMをプレイできるようになったら最高じゃん。SFは遅れてる。" userName="metalman" createdAt="2025-04-18T20:15:24" color="">}}

{{<matomeQuote body="いつかそうなるかもね。" userName="kuberwastaken" createdAt="2025-04-18T22:18:03" color="">}}

{{<matomeQuote body="めっちゃクールだけど、ちょっと技術的な問題があったな。Firefox mobileだと画面が真っ黒になった（昨日だけど、もしかしたらアップデートされたかも）。Firefox desktopだと、キーボードが発砲クリックするまで動かないことと、F5でリスタートするたびにリセットされることに気づいたら動いたよ（多分ブラウザのフォーカス問題）。あと、上下キーとw/sキーは前後に使えるけど、aとdは左右に使えなくて、左右の矢印キーが必要だった。色々試行錯誤しちゃった！" userName="redeyedtreefrog" createdAt="2025-04-19T09:03:32" color="#ff33a1">}}

{{<matomeQuote body="へいよー！チェックしてくれてありがと！<br>＞”On Firefox mobile I got a black screen”<br>＞”そうなんだよねー、モバイルコントロール追加しようとして壊しちゃったんだけど、今はちゃんと動くはず！”<br>＞”the keyboard doesn't work until after I click to fire, and this state resets itself every time I press f5 to restart the game”<br>＞”それはゲーム音楽とか他のプロセスを起動するためなんだ”" userName="kuberwastaken" createdAt="2025-04-19T09:37:03" color="#45d325">}}

{{<matomeQuote body="オフラインのAndroidで試してみたよ。動くことに驚いたけど、操作方法が全然わからなくて、いつも数秒で死んじゃう！readmeに操作方法書いた方がいいかも。" userName="sebastiennight" createdAt="2025-04-19T09:12:54" color="">}}

{{<matomeQuote body="そうそう、慣れるまで時間かかるけど、なんとなく動くって感じｗ<br>もっと慣れて、いつか追加してみるよ！" userName="kuberwastaken" createdAt="2025-04-19T09:38:07" color="">}}

{{<matomeQuote body="すごいクレイジーなことだね！<br>canitrundoomに「自己完結型QRコード」が追加されるのを待ってるよ（技術的に承認されるかわからないけど）。<br>でも…これからはQRコードをスキャンする前に、ちょっと考えちゃうかも＾＾" userName="Bengalilol" createdAt="2025-04-18T20:33:23" color="#ff33a1">}}

{{<matomeQuote body="ハハ、そうなるといいなー！<br>QRコードってすごい可能性秘めてるよね。<br>もっと詳しく知りたいなら、この記事読んでみてね！<br><br>https://kuberwastaken.github.io/blog/Technology/QR-Codes-and..." userName="kuberwastaken" createdAt="2025-04-18T20:51:05" color="">}}

{{<matomeQuote body="なんでreadmeにゲームのスクリーンショットが1枚もないんだ？" userName="deadbabe" createdAt="2025-04-18T18:11:52" color="">}}

{{<matomeQuote body="ゲームがどんどん進化して、ゲーム自体よりも開発の話がメインだったからね。<br>もしQRコードをスキャンするのが面倒なら、ここで直接プレイできるよ！<br><br>https://kuberwastaken.github.io/backdooms/" userName="kuberwastaken" createdAt="2025-04-18T18:26:17" color="#785bff">}}

{{<matomeQuote body="動かないけど、別にプレイしたいわけじゃなくて、どんなゲームかスクリーンショットが見たいだけなんだよね。" userName="deadbabe" createdAt="2025-04-18T20:13:17" color="">}}

{{<matomeQuote body="iOS（ipad）で動かない。<br>スクリーンショットがあると嬉しいな。" userName="ant6n" createdAt="2025-04-18T18:49:04" color="">}}

{{<matomeQuote body="タッチデバイスだとダメだね。<br>どんなゲームか見たいなら、このトレーラーを見てみて！<br><br>https://www.youtube.com/shorts/QWPr10cAuGc" userName="kuberwastaken" createdAt="2025-04-18T18:58:35" color="">}}

{{<matomeQuote body="アップデートだよ！<br>モバイルタッチ操作を少し追加できたから、別のChromiumベースのブラウザを使えば、URIを入力してモバイルでもプレイできるよ！" userName="kuberwastaken" createdAt="2025-04-18T19:52:57" color="#ff33a1">}}

{{<matomeQuote body="アップデート！<br>GIFをrepoに追加したよ。少しはマシになったかな？" userName="kuberwastaken" createdAt="2025-04-18T22:17:48" color="">}}

{{<matomeQuote body="ありがとう！" userName="deadbabe" createdAt="2025-04-21T19:18:22" color="">}}

{{<matomeQuote body="なんかSnow Crashに近づいてる気がしてちょっと怖いなー。QRコード見たとき、マジで脳みそいじられてるかと思ったわ 笑。マジですげー。" userName="frellus" createdAt="2025-04-18T22:47:38" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
