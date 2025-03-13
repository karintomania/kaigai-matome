+++
date = '2025-03-03T00:00:00'
months = '2025/03'
draft = false
title = 'Appleのソフトウェア品質崩壊の現実！致命的なバグが続出する理由とは？'
tags = ["Apple", "ソフトウェア", "バグ", "ユーザー体験", "不具合"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> Appleのソフトウェア品質崩壊の現実！致命的なバグが続出する理由とは？

引用元：[https://news.ycombinator.com/item?id=43243075](https://news.ycombinator.com/item?id=43243075)

{{<matomeQuote body="なんかAppleのソフト開発プロセスに根本的な問題があるって感じる理由として、最近のmacOSのバグを挙げるね。デスクトップで右クリックして壁紙を変える設定を開いて、カスタムカラーを選んで、色選択の円の中の色カーソルを数秒間ドラッグしてみて。カーソルが不安定に動いて、思った色が選べないんだ。これ、設定パネルの中でも一番目立つ操作なのに、QAスペシャリストなら5分で気づくはずのバグだよ。毎回OSアップデートごとにチェックする趣味があって、Venturaからずっと直ってない。フィードバックアシスタントで報告もしたけど、何の改善にも繋がらなそうだ。" userName="flohofwoe" createdAt="2025-03-03T17:01:09" color="#45d325">}}

{{<matomeQuote body="Appleが顧客より自社を優先してるかどうかの指標として、macOSが非Apple製モニターではYPbPrを使って色質を落としてる点を挙げるかな。LGモニターが特別扱いされることもあるけど、これが巧妙に設計されたバグではないかと思ってる。まあ、BetterDisplayとEDIDオーバーライドを使って解決する方法も見つけたけどね。" userName="karmakaze" createdAt="2025-03-03T18:18:23" color="#ff5c5c">}}

{{<matomeQuote body="同感だよ。これって明らかにユーザーに不利な仕様だと思う。実際、なんでドロップダウンにしないの？関連するバグとして、macOSが可変リフレッシュレートを優先しちゃうから、144Hzの設定を保持しない問題もある。これがCaldigit TS3 Plusってハブでもトラブルを引き起こして、真っ暗な画面になることもあるんだよね。正直、Appleが解体されてもっとmacOSが愛されるようになってほしい。" userName="mattgreenrocks" createdAt="2025-03-03T22:57:38" color="#38d3d3">}}

{{<matomeQuote body="M1 MacからLGのOLEDに4k RGB HDRを強制できるカスタムHDMIドングルを買ったよ。" userName="kridsdale1" createdAt="2025-03-03T23:23:30" color="">}}

{{<matomeQuote body="面白いね。ドングルのリンクを教えてもらえる？" userName="knifie_spoonie" createdAt="2025-03-04T00:09:34" color="">}}

{{<matomeQuote body="他の人が使っているのは知らないけど、俺はAnkerのこれをLG OLEDで使ってRGB 4k@120 HDRをM1 MacBook Proで実現してるよ。https://www.anker.com/products/a8317?variant=42329259475094&..." userName="aschla" createdAt="2025-03-04T07:43:40" color="">}}

{{<matomeQuote body="Appleのモニター設定は本当にひどい。小型ポータブルプロジェクターで4k入力を受け取れるのに、いつも1080pにダウンスケールされちゃって。OSXが1080pを出力できなくて、4kのままスケールするだけ。プロジェクターのダウンスケーリングで入力遅延が出ちゃって、マジでイライラする。こういうことをユーザーに選ばせてくれればいいのに。BetterDisplayを試してみる価値があるかも。" userName="doix" createdAt="2025-03-04T08:12:20" color="#ff5c5c">}}

{{<matomeQuote body="YCbCrが正確な変換を行えば、RGBよりも視覚的に劣る理由はないよ。" userName="WithinReason" createdAt="2025-03-04T09:38:34" color="">}}

{{<matomeQuote body="“YCbCr”や“RGB”が指す内容によるね。BT.601？BT.709？BT.2020？Adobe RGB？Display P3？また面白いことに、ケーブルの一端が例えばBT.601プライマリーでエンコードされて、もう一端がBT.709でデコードされていると、問題が起きるんだ。" userName="meindnoch" createdAt="2025-03-04T11:16:04" color="">}}

{{<matomeQuote body="RGBからYCbCrへの変換と戻しは明確に定義されていて、RGBからYCbCRを経由してRGBに戻ると、元のRGB値を返すはずだよ。" userName="WithinReason" createdAt="2025-03-04T14:18:29" color="">}}

{{<matomeQuote body="Losslessな往復変換はYCoCg-Rみたいな場合だけだよ。Rec.601やRec.709は8ビットに量子化しなきゃいけないから、そこでは成り立たないんだ。" userName="meindnoch" createdAt="2025-03-04T16:47:49" color="">}}

{{<matomeQuote body="数学的に完全に再構築できるかは話してないけど、違いが見えないってことについて言ってるんだ。" userName="WithinReason" createdAt="2025-03-04T20:11:33" color="">}}

{{<matomeQuote body="設定アプリの全面的な書き換えは、Appleのソフトウェア開発プロセスが壊れてる証拠だよ、特にMacの場合。" userName="madeofpalk" createdAt="2025-03-03T17:09:36" color="#ff5733">}}

{{<matomeQuote body="正直、Windowsも古いコントロールパネルから設定に移行する際に同じような問題があったんだ。Windowsの設定でも大きな遅延があるし。" userName="progmetaldev" createdAt="2025-03-03T22:04:06" color="">}}

{{<matomeQuote body="Windows 11の新機能の遅さは本当に驚きだよ。エクスプローラーも設定もすごく遅いし、こんなに遅くする方法がわからないくらい。" userName="rqtwteye" createdAt="2025-03-03T23:02:36" color="">}}

{{<matomeQuote body="最近のWindows 11、ボタンを押して電源オプションを表示するのに1〜1.5秒かかるのが信じられない。" userName="runevault" createdAt="2025-03-04T06:38:14" color="#45d325">}}

{{<matomeQuote body="もうWindowsにうんざりだわ。完全にゴミだと思う。Windows 3.1から使ってるけど、今日はChromeがublock originを消したから、何でこのOS使ってるんだろうって思った。だから、Ubuntuをインストールしたんだ。使いやすくていい感じだよ。" userName="Mistletoe" createdAt="2025-03-04T07:10:37" color="#ff5c5c">}}

{{<matomeQuote body="SwiftUIで多くのツールを書き直したみたいだけど、私はまだSwiftUIで何かを出す準備ができてない。不安なんだよね。" userName="ChrisMarshallNY" createdAt="2025-03-03T22:56:58" color="">}}

{{<matomeQuote body="前の設定アプリは少しごちゃごちゃしてたから、リデザインは必要だったとは思うんだけど、メニュー切り替えに1〜2秒もかかるのはどういうことなんだ？本当に素人のやり方だよ。" userName="tacker2000" createdAt="2025-03-03T17:17:06" color="">}}

{{<matomeQuote body="設定アプリの各画面を別のアプリみたいに立ち上げてる気がするんだ。それが遅延の原因かも。Activity Monitorで設定を検索してみて、メニューを下に押してみると、それぞれが別個で表示されるのに気づくと思う。メモリリークっぽい感じもする。" userName="brailsafe" createdAt="2025-03-03T23:45:06" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="設定ページを開くたびにウェブリクエストをしてるのか？実際のところ、いくつかはウェブページらしいよ＞「https://blog.jim-nielsen.com/2022/inspecting-web-views-in-ma...」" userName="userbinator" createdAt="2025-03-04T03:17:57" color="">}}

{{<matomeQuote body="iPhone 13 mini使ってるけど、設定アプリに遅延は感じないな。" userName="lotsofpulp" createdAt="2025-03-03T17:51:23" color="">}}

{{<matomeQuote body="自分が話してたのはmacOSの設定アプリのことだから。" userName="tacker2000" createdAt="2025-03-03T17:53:30" color="">}}

{{<matomeQuote body="Feedback Assistantの問題はマジで最悪だよ。自分が出したチケットに返信がないし、放置されてるプログラムみたいでUXとして最悪。" userName="fnordlord" createdAt="2025-03-03T17:20:26" color="#ff33a1">}}

{{<matomeQuote body="数年前、Final Cutのバグ報告を出したら、Final Cutの開発者から連絡が来て、問題を再現するのを手伝ってくれた。それで修正もしてもらったことがある。" userName="trogdor" createdAt="2025-03-03T23:09:21" color="#45d325">}}

{{<matomeQuote body="最近のATPポッドキャストで、匿名の人が2013年頃までAppleで働いてたとき、macOSには実質的なQAチームがなかったって言ってたよ。今のmacOSのバグの多さを考えると驚かないけどね。" userName="BobAliceInATree" createdAt="2025-03-03T17:05:00" color="">}}

{{<matomeQuote body="macOSの機能歴史見ると、体制が2007年にiPhoneに移ってからはあまり進展がないのが分かるな。もはやSnow Leopardが最高だったとも言えるけど、AppleもAI統合の大きな推進が始まってからやっと進んできた感じ。" userName="schmidtleonard" createdAt="2025-03-03T17:36:06" color="#38d3d3">}}

{{<matomeQuote body="それは難しいかも。Mark Gurmanが最近報じたところによると、AppleのAI部門では「真のモダンな会話型Siriは早くても2027年のiOS 20まで消費者には届かない」と考えているらしい。" userName="woleium" createdAt="2025-03-03T17:42:32" color="">}}

{{<matomeQuote body="Snow Leopardは懐かしいけど、最初はバグだらけだったよ。時間が経つと良くなった。" userName="frizlab" createdAt="2025-03-03T21:21:09" color="">}}

{{<matomeQuote body="macOS 15.3.1とApple Studio Displayで再現できなかった。どのディスプレイ使ってるの？おそらくカラースペースの変換に関係してると思う。編集: 下の追加ステップで再現できたよ。バグ報告を作成する立場としては、特定のスタート状態が必要だったりするのが再現を妨げることが多い。" userName="K7PJP" createdAt="2025-03-04T00:42:11" color="#38d3d3">}}

{{<matomeQuote body="デスクトップアイコンがグリッドにスナップするのがずっと壊れてる。時々グリッドの中に何も置けないスペースができちゃうし、ホームスクリーンやコントロールセンターを整理してるとアイコンが勝手に並び替わる。こんな状態で出荷したのに、改善もされないなんて信じられない。" userName="hbn" createdAt="2025-03-03T17:07:52" color="">}}

{{<matomeQuote body="再現できた。やばいな。新しい設定アプリの雑さに苦労した人が壁紙変更のセクションまでたどり着かないって考えてるのかな。そこに別のルートがあるのを忘れちゃう。" userName="brailsafe" createdAt="2025-03-03T23:35:19" color="">}}

{{<matomeQuote body="この問題は機能的な欠陥だけでなく、デザインの欠陥や退化も関わっている。新しい設定パネルはほぼ全員に嫌われてるし、Appleは売上に影響しないことに手を出している。このままじゃ優先順位が大きく間違ってる。Xcodeの現状もひどい。これを根本から作り直すべきだ。" userName="DidYaWipe" createdAt="2025-03-03T23:47:56" color="#38d3d3">}}

{{<matomeQuote body="”Custom Color”って何？＋アイコンをクリックしてカラーピッカーを開いたけど再現できなかった。Sequoia 15.3.1 (24D70)" userName="drdo" createdAt="2025-03-03T17:07:40" color="">}}

{{<matomeQuote body="面白いね。下の”Colours”に新しい色を追加する時は問題ないけど、壁紙セクションの右上にある”Custom Colour”では問題が出る。壁紙の種類によって表示が変わるし、カスタムカラーを追加した時にこのバグが出た。あまり良いUXじゃないけどね。" userName="flohofwoe" createdAt="2025-03-03T17:17:57" color="">}}

{{<matomeQuote body="それを試したけど、＋ボタンから開くとポップアップは正常に動く。でも設定を閉じて再度開くと、”Custom Colour”を直接押すとバグる。" userName="gloosx" createdAt="2025-03-03T17:46:03" color="">}}

{{<matomeQuote body="30分頑張っても、他のコメントを読んでも、15.3.1で再現できなかった。" userName="dmd" createdAt="2025-03-03T23:36:42" color="">}}

{{<matomeQuote body="たくさんのポインティングデバイスで試した？僕はトラックパッドで一回試したらできたよ。M3 MBPで。" userName="brailsafe" createdAt="2025-03-03T23:38:56" color="">}}

{{<matomeQuote body="僕も他の人たちも、Appleのソフトウェアのひどさを10年くらい叫んでる。正直、もはや悲惨だし、iCloudみたいなサービスに関しては本当にひどすぎる。ブラウザタブの同期すらできてないんだから。オープンじゃないってのも大問題だよ。" userName="crossroadsguy" createdAt="2025-03-03T17:57:31" color="#38d3d3">}}

{{<matomeQuote body="そのバグは再現できなかったけど、他のバグに出くわした。クリックしたところから遠くにウィンドウが開くのがずっとイライラするんだ。ここからカラーピッカーが表示されたよ。" userName="tkgally" createdAt="2025-03-04T03:56:17" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これが数年続いてる。iOS開発をやってたからバグに目がいくけど、Appleのアプリやサービスの品質がどんどん落ちてる。電話アプリでWhatsAppの音声セッションの後、普通の通話ができなくなって電話がすぐキャンセルされるのが最悪。Notesも何年もバグがあって、テキストノートが真っ白になっちゃうことがある。それにAppStoreもバグが多い。Update押すとまた最初からダウンロードし直すし、本気でAndroidに移るかAppleに転職してバグを直したいけど、Appleの秘密主義じゃ無理だろうな。" userName="yalok" createdAt="2025-03-04T08:41:04" color="#ff5733">}}

{{<matomeQuote body="＞通話ができないのが大問題だよ。緊急通報に関わるかもしれないから、こういうバグは優先して直されるべきだと思う。無理に統合するとどこかでプロセスがクラッシュしてそう。" userName="RubberbandSoul" createdAt="2025-03-04T09:31:10" color="#ff5c5c">}}

{{<matomeQuote body="＞電話アプリの終話ボタン、よくやっちゃうんだよね。相手が先に切った瞬間に押すと、画面が最近の通話画面に飛んで無関係な人にかけちゃう。この経験、多分みんなあるよね。" userName="hbosch" createdAt="2025-03-04T14:40:57" color="">}}

{{<matomeQuote body="SkypeのiPadアプリ、通話ボタンと切るボタンが近くて、切られた瞬間にかけ直しちゃうの、本当に簡単に直せると思うんだ。表示後、反応しない時間を作れば、ミスを減らせるはずだし。" userName="kobalsky" createdAt="2025-03-04T14:53:02" color="#38d3d3">}}

{{<matomeQuote body="この記事が言ってることには賛同するけど、まだ他のソフトよりはずっと良いと思う。数年使ってて、実際には少ないバグしか見てないから、結構すごいんじゃない？" userName="ukFxqnLa2sBSBf6" createdAt="2025-03-04T11:58:17" color="">}}

{{<matomeQuote body="＞この記事についてだけど、Samsung S23では問題ないよ。通話もNotesもApp Storeも特に問題なく使えてるし、ユーザー体験に差があるんじゃないかな。" userName="virtualmic" createdAt="2025-03-04T12:51:36" color="">}}

{{<matomeQuote body="Apple-SiliconのMacBook ProとMac Miniで開発してるけど、Appleのソフトはほとんど使わない。JetbrainsのIDEやDockerはすごく良いし、サードパーティのアプリが好き。Safariは避けてる。" userName="nwatson" createdAt="2025-03-04T13:32:45" color="">}}

{{<matomeQuote body="＞Appleのハードウェアはいいけど、ノートパソコンに関しては2つの条件がある。1) 蓋を閉じたらちゃんとスリープすること 2) 簡単な作業してる時は音がしないこと。この点ではAppleはいい。" userName="cbm-vic-20" createdAt="2025-03-04T14:14:06" color="#785bff">}}

{{<matomeQuote body="Lenovo ThinkPad T14s AMDを使ってるけど、スリープもウェイクも問題ない。Bluetoothも快適だし、Linuxも使えてこれが大事。" userName="pimeys" createdAt="2025-03-05T08:03:58" color="#ff5733">}}

{{<matomeQuote body="MacOS、昔に比べて全然安定してないよ。UIだけじゃなくて、ネットワーク周りもSnow Leopardの頃に比べるとひどい。FAT32もちゃんと読めないバージョンが出たり、フレームワークも壊れまくりで、修正しようとしても何もできない。" userName="Mindwipe" createdAt="2025-03-04T13:45:15" color="#38d3d3">}}

{{<matomeQuote body="Notesがひどすぎ。コピー＆ペーストが壊れることが多くて、選んだ部分じゃなくて別の文字列がコピーされたり。Remindersも5年以上、特定の順番で複数のリマインダーを作ると、最初のリマインダーに追記されるだけ。重要なリマインダー設定してなきゃいいけど！" userName="tallytarik" createdAt="2025-03-04T11:00:51" color="#ff33a1">}}

{{<matomeQuote body="iOSの基本的な検索が変わってしまった。検索画面をクリックすると、何も見えないのに1秒待たされるし、各キープレスごとに1秒待たされることも。普通のアプリを探すのが面倒になった。以前は設定した言語でもアプリを検索できたのに、それもできなくなっちゃった。" userName="hombre_fatal" createdAt="2025-03-04T13:22:26" color="">}}

{{<matomeQuote body="もうイライラして選択肢を考えている。Androidに移るか、Appleに雇われてバグを直すかしかない。でもそれはただの幻想だよね。内部にも同じくらいフラストレーションが溜まってるエンジニアがいるはずだし。毎年のリリースサイクルが問題になってると思う。" userName="latexr" createdAt="2025-03-04T08:54:16" color="">}}

{{<matomeQuote body="Tim Cookの責任で方向性を定めるべきだと思うけど、新しいCEOがうまくやれるとは思えない。Steve Jobsのような人は滅多にいないし、価値のない機能の追加を断ることができる管理者も少ないから。" userName="whstl" createdAt="2025-03-04T09:38:25" color="">}}

{{<matomeQuote body="Tim Cookは利益のために高官の助言を無視している。そういう選択が長期的な関係を損なうと警告を受けてもね。彼よりマシなCEOが出てくるかどうかは疑問だけど、早く知りたい。" userName="latexr" createdAt="2025-03-04T09:49:00" color="">}}

{{<matomeQuote body="この問題が主流メディアで報じられないのはなぜ？一般的にはAppleは完璧なテクノロジー会社だとみなされているが、現実はまったく違う。" userName="alt227" createdAt="2025-03-04T11:23:39" color="">}}

{{<matomeQuote body="株主が影響力を持っているから、株価が下がるまでは誰もAppleを批判しない。どんな分野でも上位10位に入っているし、文句を言う理由がない。" userName="datavirtue" createdAt="2025-03-04T12:30:41" color="">}}

{{<matomeQuote body="＞なぜこのことが主流メディアに報じられないのか？<br>－多くのジャーナリストがAppleのファンボーイだから<br>－広告契約の関係でAppleと良好な関係を保ちたがるから<br>－Appleについて悪いことを書くと、多くのファンボーイの読者に反感を買うから" userName="aleph_minus_one" createdAt="2025-03-04T12:03:42" color="#38d3d3">}}

{{<matomeQuote body="Appleについての悪いプレスは、メディアイベントや早期レビュー機器から排除されることになる。広告契約はそれほど儲からないから、メディアは早期レビューのクリックを得るために悪いレビューを避けている。" userName="Prickle" createdAt="2025-03-05T00:41:42" color="">}}

{{<matomeQuote body="あんたの理屈だと、Appleは悪い報道をされることなんてないってことになるよね。そんなことはないじゃん。" userName="latexr" createdAt="2025-03-04T13:00:38" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Appleがメディアで悪い報道をされた例を教えてくれ。" userName="alt227" createdAt="2025-03-04T13:12:16" color="">}}

{{<matomeQuote body="悪い報道があっても、影響を受けないみたいだよね。" userName="bmitc" createdAt="2025-03-04T13:25:19" color="">}}

{{<matomeQuote body="Tim Cookって、数字以外に興味がなさそうだよね。" userName="api" createdAt="2025-03-04T11:37:12" color="">}}

{{<matomeQuote body="ずっと言ってるけど、ACs/DoDsの一貫した劣化が続いてる。開発が進むと、品質が下がるのは確実。それに気づくのには時間がかかる。" userName="friendzis" createdAt="2025-03-04T09:41:46" color="#45d325">}}

{{<matomeQuote body="ほとんどの家電メーカーってこんなもんだよ。クリスマスシーズンには新製品が必要だから、開発は早めに終わらせる。リリース後はバグも落ち着くし、数ヶ月待つのがいい。" userName="RubberbandSoul" createdAt="2025-03-04T09:50:02" color="">}}

{{<matomeQuote body="＞僕の見解では、年に一度のリリースサイクルが問題なんだ。<br>年１回のリリースと、壊れたメモアプリの間には直接のつながりはないと思うよ。もっと根深い問題があるはず。" userName="hajile" createdAt="2025-03-04T13:17:12" color="">}}

{{<matomeQuote body="＞これらの会社がやるべきことは、ペースを落として追いかけるのをやめること。<br>Appleのソフトウェアは実際には危機じゃなくて、ただ質が低いだけだと思う。彼らは本当に優秀だと勘違いしてるんだよ。" userName="alexashka" createdAt="2025-03-04T10:11:06" color="#ff5c5c">}}

{{<matomeQuote body="＞誰が夢の中にいるか、友よ？<br>やるべきだと言っただけで、実行するとは言ってない。確かに昔は良かったもんね。" userName="latexr" createdAt="2025-03-04T11:07:39" color="">}}

{{<matomeQuote body="気にするなよ、俺が言ったのは目的じゃなくて、結果の話。" userName="alexashka" createdAt="2025-03-04T12:21:52" color="">}}

{{<matomeQuote body="引用部＞”そこにある引用部分がそのままさまざまな意味を持つよね。ちなみに前に投稿した愚痴も見たけど、もう削除されちゃってた。”" userName="latexr" createdAt="2025-03-04T13:02:32" color="">}}

{{<matomeQuote body="iPhoneやめた理由はこれだよ。通話履歴が100件までしか残らないのってどういうこと？最強のプロセッサで数百GBもあるのに、先月誰と話したか見れないなんて！もう限界だって思った。" userName="ramraj07" createdAt="2025-03-04T11:59:01" color="#ff5733">}}

{{<matomeQuote body="それは間違いじゃないかも。自分は通話履歴をさかのぼって見たけど、2019年までさかのぼれたし、100件以上あるみたいだよ。" userName="Angostura" createdAt="2025-03-04T12:23:56" color="">}}

{{<matomeQuote body="同じような問題にはまってる。数年前のRedditスレッドにこの問題があったし、Appleみたいな大手がこれを放置するのは無知以外の何物でもないと思う。開発者的には、これらの不整合は様々なアクセスパターンから来てるみたい。" userName="flessner" createdAt="2025-03-04T09:11:45" color="#ff5733">}}

{{<matomeQuote body="Notesの不具合として、テキストをコピーした後で別のテキストを選択し、コピーしたテキストで置き換えると落ちるっていうのがある。Spotlightですべての提案をオフにしてアプリランチャーとして使っても、結果が出るまでに秒単位でかかるのはおかしいよ。" userName="henry_viii" createdAt="2025-03-04T09:30:12" color="">}}

{{<matomeQuote body="Notesで年次ジャーナルをつけてるけど、気付くとキーボードがだんだん遅くなっていく。ノートが長くなるにつれて、メインスレッドでファイルを同期的にフラッシュしてるのかなって思う。それならインターン的な実装だよ。" userName="cellularmitosis" createdAt="2025-03-04T11:10:05" color="">}}

{{<matomeQuote body="iOSの選択、コピー、ペーストは最初から酷かったし、もう一つ気になるのがバックスペースの動きがクソすぎること。言葉や段落に飛ぶのが最悪なタイミング。" userName="whywhywhywhy" createdAt="2025-03-04T09:45:49" color="">}}

{{<matomeQuote body="固有名詞のオートコンプリートが変。誰かの名前を打ってると、しばしば訂正されて、意図した名前に直すのに複数回やり直さなきゃいけない。Ellieは誤字じゃないし、Emmaじゃないって言いたい。" userName="ljm" createdAt="2025-03-04T11:21:49" color="#45d325">}}

{{<matomeQuote body="現AppleハードウェアのトップがCEOの後継者にいるけど、もし彼が将来的にCEOになったら、Appleのソフトウェア文化にいい影響を与えられるかな。" userName="walterbell" createdAt="2025-03-04T08:55:54" color="">}}

{{<matomeQuote body="好きなのは、ボイスメールのスパムを受け取ったときに、通話履歴に番号が残らないこと。ブロックするための番号が分からないのは最高だよ。" userName="MarcelOlsz" createdAt="2025-03-04T18:01:17" color="">}}

{{<matomeQuote body="iPhoneを修理しようとして、必要なデータをバックアップして古いiCloudアカウントを切り離し、新しいアカウントを作ったんだけど、OSアップデート後にログインできないエラーが出た。PCから確認したらアカウントが削除されてて、iCloudロックされちゃった。Appleに電話したけど、オリジナルのレシートを持ってApple Storeに行く必要があるって言われた。これが盗難防止のためだとしても、長年使ってたAppleIDから再取得できないのは理不尽だと思う。結局古い電話が使えなくなっちゃったから、Apple製品は二度と買わない。" userName="gblargg" createdAt="2025-03-04T06:01:20" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
