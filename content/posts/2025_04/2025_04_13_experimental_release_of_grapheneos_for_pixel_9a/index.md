+++
date = '2025-04-13T00:00:00'
months = '2025/04'
draft = false
title = 'Pixel 9a速攻対応！GrapheneOSの実験的リリースがもう来た！セキュリティ意識高い系必見か？'
tags = ["GrapheneOS", "Pixel 9a", "カスタムROM", "セキュリティ", "プライバシー"]
featureimage = 'thumbnails/blue4.jpg'
+++

> Pixel 9a速攻対応！GrapheneOSの実験的リリースがもう来た！セキュリティ意識高い系必見か？

引用元：[https://news.ycombinator.com/item?id=43669185](https://news.ycombinator.com/item?id=43669185)

{{<matomeQuote body="GrapheneOSマジ最高なんだけど、Googleのintegrity APIのせいでGoogle Payのワイヤレス決済が使えないのが痛いんだよね。オランダの銀行はみんなGoogle Payを勧めてくるし。GoogleにGrapheneOSのサポートをお願いしてみたけど、機能リクエストしてって言われただけで梨の礫。消費者市場庁にも苦情申し立てたわ。だってGoogleとAppleの二社独占で、どのOSが使えるか決めちゃうんだもん。しかもそいつらクローズドソースでスパイウェアてんこ盛りだし。Googleのintegrity APIが将来的に銀行アプリにも影響するかもって話もしたら、めっちゃ真剣に聞いてくれたから期待してる。" userName="versluis" createdAt="2025-04-13T09:42:13" color="">}}

{{<matomeQuote body="GrapheneOSでもCurve Pay使えばヨーロッパの多くの国でtap-to-payできるよ。オランダでもね。イギリスでも使えるし。残念ながらアメリカはまだみたいだけど。銀行によっては独自のtap-to-payが使えるかも。ヨーロッパは標準化されてるから。詳しくは[https://privsec.dev/posts/android/banking-applications-compa...]をチェックして。Google Payに移行して開発費を抑えようとしたけど、今は離れる動きもあるみたい。<br>[https://grapheneos.org/articles/attestation-compatibility-gu...]を、GrapheneOSを禁止してる企業に送ってみて。もっと安全な方法でGrapheneOSを許可できるはずだから。ユーザーが頑張ってレビューとかサポートリクエスト送ったら、銀行も対応してくれるかも。SwissquoteはYuhアプリで実装したし、メインのアプリでもやってくれるといいな。Play Integrity APIなんて最初から入れなきゃいいのにね。まあ、ユーザーが頑張ればなんとかなるかも。" userName="strcat" createdAt="2025-04-13T15:33:21" color="#785bff">}}

{{<matomeQuote body="icardのNFC決済も問題なく使えるよ。" userName="pshirshov" createdAt="2025-04-13T22:51:17" color="">}}

{{<matomeQuote body="＞オランダの銀行はみんなGoogle Payを勧めてくる”ってマジか。それは大きな間違いだよ。チャンスを逃してるね。国によっては銀行が協力して独自のシステムを作ってるのに。BigTechじゃないアプリで送金とか支払いができるんだよ。どの国にもそういうアプリが必要だと思う。アメリカの企業に決済システムを依存したくないじゃん。" userName="palata" createdAt="2025-04-13T10:58:19" color="">}}

{{<matomeQuote body="オランダの銀行はiDealってのを作ったんだ。<br>[https://www.ideal.nl/en/]<br>iDealはオランダじゃ個人間の送金とかオンライン決済でめちゃくちゃ使われてるよ。でも実店舗でのNFC決済はサポートしてないんだよね。だからGoogle/Appleウォレットを選んだんだと思う。将来的にはWero([https://wero-wallet.eu/])とかデジタルユーロ([https://www.ecb.europa.eu/euro/digital_euro/html/index.en.ht...])がEU全体で使われるようになるんじゃないかな。" userName="sushibowl" createdAt="2025-04-13T11:18:53" color="#785bff">}}

{{<matomeQuote body="それいいね！NFCじゃなくてQRコードを使えばいいんだよ。どの決済端末もQRコードを表示できるし、紙に印刷することもできる。Twintがそうしてる。最初はNFCでシームレスにしようとしたけど、Appleのせいでできなかった(今はDMAで変わるかも)。それでBluetoothを使ったけど、誰も使わなかった。QRコードにしたら、すぐに人気になった。QRコードは誰でもわかる。NFCに対応してるかとか、設定でNFCが有効になってるかとか気にしなくていい。カメラでQRコードをスキャンするだけでOK。完璧じゃん。" userName="palata" createdAt="2025-04-13T13:49:03" color="#ff5c5c">}}

{{<matomeQuote body="＞QRコードを使えばいい”<br>ウェブでの買い物ではもう使われてるんだから、実店舗でもできるはずだよね。なんで普及しないんだろう。" userName="jonkoops" createdAt="2025-04-13T16:59:11" color="">}}

{{<matomeQuote body="銀行はP2P決済とかEコマースではやってるよ(iDealとかポーランドのBLIKとか)。実店舗だとハードウェアとネットワークの問題があるんだよね。みんなカード端末を持ってるし、ほぼ100%使えると思ってないと使ってくれない。Google/Apple Payの代わりに独自のNFC決済アプリを作ることもできるけど、お金がかかるし、カードを簡単に切り替えられないから嫌がる人も多いんだよね。" userName="dzikimarian" createdAt="2025-04-13T11:57:56" color="">}}

{{<matomeQuote body="さっきも言ったけど、TwintはQRコードを使ってるよ。マジで使える。小さな店でも紙にQRコードを印刷して使えるから、端末を買う必要がないんだ。普通のカード端末でQRコードを印刷して、それをスキャンしてもらう店が多いよ。" userName="palata" createdAt="2025-04-13T13:50:48" color="#785bff">}}

{{<matomeQuote body="NFC決済は双方向通信で、MITM攻撃のリスクが低いんだよね。QRコードはステッカーを貼るのが簡単すぎる。TWINTアプリは「信頼できるソースからのQRコードのみをスキャンし、次のステップで支払い先を確認してください」って言ってる。それって信用できないじゃん。動的なQRコードならいいかもね。POS端末とアプリの間で安全なチャネルを構築して、販売者が支払いを受け取ったことを確認できるようにする。静的なQRコードは難しいし、ソーシャルプロテクションに頼りすぎてる気がする。個人がQRコードを持てないのも気になる。NFCなら個人でも決済を受け付けられるのに。" userName="andrewaylett" createdAt="2025-04-13T22:11:32" color="">}}

{{<matomeQuote body="いろいろあるね。<br>ほとんどの支払いは動的なQRコードだよ。静的なQRコードは、めっちゃ小さい店とかが使うくらい。金額入れて確認画面見せるみたいな。相手も正しいQRコードを見せるはず。友達への送金は電話番号でできるけど、相手の番号入力が必要。駐車料金の支払いで静的なQRコードが使われてて、フィッシング詐欺も報告されてる（MITMじゃなくて、悪いサイトに飛ぶQRコード）。でも、怪しいと思ったら使わなくていいし、毎回ちゃんとサイトを確認すれば大丈夫。全体的にめっちゃ便利で、NFCもGoogle Play Servicesもいらないから最高！" userName="palata" createdAt="2025-04-13T22:51:31" color="#785bff">}}

{{<matomeQuote body="そりゃ便利なんだろうけど、技術的な面が好きになれないんだよね。クレジットカードだってGoogle Play Servicesいらないし、電池切れの心配もないし、どんな店でも使えるし。TWINTなんて流行らないと思うな。イギリスじゃNFC決済が普及してるし、めっちゃ簡単だし。" userName="andrewaylett" createdAt="2025-04-14T19:11:34" color="">}}

{{<matomeQuote body="＞技術的な面が好きになれないってのは別にいいんだ。<br>でも、セキュリティが低いって言うなら、それは違うんじゃないかって言いたくなる。＞クレジットカードはGoogle Play Servicesが不要ってのは、NFCアプリとQRコードアプリの議論の的を得てないよね？イギリスでTWINTが流行るかは別の話。俺が言いたいのは、アメリカ以外の銀行はGoogle Play ServicesとかApple Payに頼るべきじゃないってこと。" userName="palata" createdAt="2025-04-15T06:52:33" color="#785bff">}}

{{<matomeQuote body="＞Google/Apple Payの代わりに独自のNFC決済アプリを作ることは可能？<br>それって可能なの？AppleとGoogleは銀行とサーバー側で連携してるはず。銀行はApple/Googleと連携する必要があるんじゃないかな。もし違ったらごめん。" userName="codethief" createdAt="2025-04-13T12:32:03" color="">}}

{{<matomeQuote body="＂add to wallet button＂が欲しいなら必要だけどね。独自のアプリを作るって話とは関係ないよ。iOSでもAndroidでもNFCハードウェアに直接アクセスできるし（iOSは地域限定）、好きなようにカードデータを送れる。GoogleとかAppleは関与しないよ。" userName="dzikimarian" createdAt="2025-04-13T22:45:58" color="#785bff">}}

{{<matomeQuote body="AppleはずっとNFCの使用を制限してたはず（決済だけだったかも？）。EUのDigital Markets Actでそれができなくなるはず。DMAはそういう意味で素晴らしいね。" userName="palata" createdAt="2025-04-13T13:52:04" color="">}}

{{<matomeQuote body="確かにiOSではNFCチップへのアクセスが制限されてたね。でもAndroidではアプリはNFCチップを自由に使えてたよ。それでも、すべての銀行やカードに対応した汎用的な＂wallet＂アプリを作るのは簡単じゃないけどね。前に言ったように。" userName="codethief" createdAt="2025-04-13T16:10:19" color="">}}

{{<matomeQuote body="＞AndroidアプリはNFCチップを自由に使えてた<br>最後に見たときは、AndroidはNFCで使用されるuidをアプリが制御できなかったから不可能だった。" userName="charcircuit" createdAt="2025-04-13T17:19:49" color="">}}

{{<matomeQuote body="ああ、そうだね。忘れてた。いずれにしても、アプリがチップを完全に制御できたとしても、ウォレットアプリを作るにはNFCチップとのインターフェースだけでは済まないと思う。" userName="codethief" createdAt="2025-04-13T18:54:51" color="">}}

{{<matomeQuote body="カード会社との接続が必要だから、大量の書類が必要で、お金もかかる。それが一番の問題。技術的な面では、SDKを売ってる会社もあるよ。" userName="dzikimarian" createdAt="2025-04-13T23:06:02" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もっと詳しく教えてよ。なんか詳しいみたいじゃん？Wallet作るのってNFCチップの設定だけじゃなくて、銀行とかのバックエンドと連携しなきゃいけないのは知ってたけど、なんで？スマホが普通のクレジットカードをエミュレートできない理由がわからん。" userName="codethief" createdAt="2025-04-14T12:40:03" color="">}}

{{<matomeQuote body="技術的には別に無理じゃないよ。Paymentカードって基本的にprivate keyで、それは銀行が管理してるmaster keyから派生してるんだよね。そのkeyが取引に署名する。Tokenizationで色々手順が増えるけど、根本は同じ。つまり、銀行が発行してくれないとカードprofileは手に入らない。だから銀行とカードschemeの許可が必要。もっと詳しく知りたければ、Mastercardのtokenizationのフレームワークとか見てみて。もし試すなら声かけて。知り合いがいるから" userName="dzikimarian" createdAt="2025-04-14T14:00:40" color="#38d3d3">}}

{{<matomeQuote body="めっちゃ勉強になった！ありがとう！<br>＞もし試すなら声かけて。知り合いがいるから :-)”<br>実は前から興味あったんだけど、外部の人間には難しいよね。やっぱり。Google/Apple Payと競争したいわけじゃなくて、オープンソースでプライバシーを守れる非接触決済がしたいんだよね。HNのプロフィールに連絡先追加しとくといいかも。;-)" userName="codethief" createdAt="2025-04-16T17:29:57" color="#ff5733">}}

{{<matomeQuote body="＞スマホが普通のクレジットカードをエミュレートできない理由？”<br>もしそれが可能なら、詐欺師が簡単に他人のカードをクローンできるようになっちゃうから。そういうことができないように設計されてるんだよ。カード自体に秘密の情報が入ってて、それは公開されない。" userName="charcircuit" createdAt="2025-04-14T16:34:48" color="">}}

{{<matomeQuote body="＞The protocol”<br>プロトコルって色々あるんじゃないの？NFCチップとか昔の「電話カード」のUICCはクローンが難しいと思うけど、少なくともアメリカでは磁気ストライプのカードをスワイプするのってまだ普通だよね。" userName="codethief" createdAt="2025-04-16T17:34:36" color="">}}

{{<matomeQuote body="つまり、スマホはprivate keyを持っていれば、完全に普通のクレジットカードをエミュレートできるってことだね。クレジットカードみたいに振る舞うことと、クレジットカードがクローン可能であることは別問題。" userName="palata" createdAt="2025-04-15T06:54:02" color="">}}

{{<matomeQuote body="アプリを作って、プロトコルに準拠したトランザクションを生成して、自分のカード番号を使えば、短いプログラムでできるよ。運が良ければ銀行にルーティングされるけど、認証エラーで失敗すると思う。YouTubeにDEFCONのトークがあるはず。" userName="dzikimarian" createdAt="2025-04-15T19:04:31" color="">}}

{{<matomeQuote body="＞運が良ければ銀行にルーティングされるけど、認証エラーで失敗すると思う。”<br>スワイプ式の支払いプロトコルを真似たらどうなるの？磁気ストライプって比較的簡単にクローンできるんじゃないの？<br>＞DEFCONのトーク”<br>これのこと？-> https://m.youtube.com/watch?v=EBZlt1E8drE" userName="codethief" createdAt="2025-04-16T17:36:54" color="">}}

{{<matomeQuote body="スマホにはスワイプをエミュレートするハードウェアはないよ。でも磁気ストライプは簡単にクローンできるから、廃れていってるんだよね。貼ってくれたやつでもいいけど、NFCに焦点を当てた方が役立つかも。例えばこの二つ https://youtu.be/7ElZBI9PufY https://youtu.be/tFi0vYuYeAI" userName="dzikimarian" createdAt="2025-04-17T14:41:07" color="#785bff">}}

{{<matomeQuote body="どうもありがとう！" userName="codethief" createdAt="2025-04-17T18:13:38" color="">}}

{{<matomeQuote body="多くのNFCチップはUIDの設定を許可してないし、EMVカードでUIDのクローンが必要なものもないよ" userName="j16sdiz" createdAt="2025-04-15T02:14:54" color="">}}

{{<matomeQuote body="NFC決済があんまり普及してない国での話だね。ヨーロッパだとほとんどの国でNFC決済が標準化されてるから、Apple/Google Payが一番スムーズなんだよね" userName="argsnd" createdAt="2025-04-13T11:09:28" color="#38d3d3">}}

{{<matomeQuote body="スイス(ちゃんと銀行業務できる国だよ)はTwint(スイスのアプリ)をQRコードで使ってるんだよね。NFCより便利だと思う(駐車場の支払い機とかの印刷されたQRコードでも使えるし)。スイスでApple/Google Pay使ってる人知らないな。国の成功例だと思うよ" userName="palata" createdAt="2025-04-13T13:54:07" color="#ff33a1">}}

{{<matomeQuote body="ありがとう。数年前にGrapheneOSをアメリカで試したんだけど、銀行の件はそこまで問題じゃなかった(Google Pay/Apple PayがないからRFIDカードを持ち歩けばいい)。問題は、Google Play関係を探すときにアプリが起動時にnull pointer exceptionを出すことだった。parkmobileとか、複数のev charging networks、Uber、Lyft、Yelpが少なくとも1週間は動かなかった。今もそうなの？それとももっと安定してる？GrapheneOSはGoogleの広告してるバッテリー寿命の2倍以上だったけど、サンドボックスにGoogle Play Services入れたら広告通りになった。それもGoogleへの苦情に追加した方がいいかも。バッテリー寿命を半分にするのは経済的損失だよ。(プライバシーの方が大事だけど、Googleはうまくごまかすだろうね)" userName="hedora" createdAt="2025-04-13T15:01:09" color="#ff5733">}}

{{<matomeQuote body="今はコンタクトレスカードを使ってるよ。第三者のデバイスに自分の金融機能を結びつけるのはもうやめた。誰かに直接払いたいときは、PayPalの家族・友人宛か銀行振込だね" userName="ohgr" createdAt="2025-04-13T14:21:28" color="">}}

{{<matomeQuote body="スマホを使うのが、どうしてデビットカードを端末にかざすより簡単なのか理解できない。Googleには絶対に自分の金融情報なんて渡さないよ" userName="encom" createdAt="2025-04-13T16:13:26" color="">}}

{{<matomeQuote body="ACMに苦情出したの？参考にしたいな" userName="decide1000" createdAt="2025-04-13T10:51:37" color="">}}

{{<matomeQuote body="ウェブサイトのフォームからやったよ。Googleが公正な市場原理に違反してるってことを明確にする必要がある。何が起きてて誰が影響を受けてるかとかの詳細も必要。だから電話がかかってきたんだと思う" userName="versluis" createdAt="2025-04-13T11:06:07" color="#ff5c5c">}}

{{<matomeQuote body="協力したいな。いつも自分だけが気にして苦情を出してる気がするんだよね。同じことはしたくないけど、どんな言葉を使ったか教えてくれる？GrapheneOSをブロックするのが市場支配力の乱用になるのかどうかわからないんだよね。Appleっていう別の選択肢があるから独占じゃないし。<br>連絡先がプロフィールにないから連絡できなかった。ここに書きたくないなら、プロフィールのメールアドレスを使ってね" userName="Aachen" createdAt="2025-04-13T11:45:43" color="#45d325">}}

{{<matomeQuote body="そうだね。連絡先を追加するよ。<br>もうしばらく経ってるから正確な言葉は覚えてないな。同じ言葉は使わない方がいいよ。請願じゃないし意味がないから。彼らはそれが不公正な行為かどうかを調査したいんだ。俺の考えでは、銀行業務とワイヤレス決済は公共の利益だ。2つの企業が、パートナーのソフトウェアしか承認せず、そのほとんどが削除できないスパイウェアを含んでいるのは、銀行へのアクセスとプライバシーを制限している。セキュリティはGoogleの主張だけど、GrapheneOSの方が安全だ。GrapheneOSのユーザー数を伝えて、一部の個人にしか影響しないわけではないことを明らかにした。LineageOSのユーザーも影響を受けてるかもしれないね" userName="versluis" createdAt="2025-04-13T12:05:38" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Pixel 9aが木曜に発売されたばかりなのに、もうGrapheneOSが出たんだから、マジですごい速さだよね。" userName="JeremyBarbosa" createdAt="2025-04-13T01:58:52" color="#785bff">}}

{{<matomeQuote body="新しいデバイスの立ち上げが大変なんだと思うけど、Pixelの公式のソースから始められるなら、GrapheneOSのビルドプロセスに合わせるのはそんなに難しくないはず。GrapheneOSのカスタマイズはフレームワーク側で、デバイスに依存しないんじゃないかな。カーネルの変更は難しいかもね。" userName="tripdout" createdAt="2025-04-13T02:52:20" color="">}}

{{<matomeQuote body="GrapheneOSにはハードウェアとの連携が必要な機能が色々あるんだよね。ハードニング機能は、特にドライバーのバグを見つけ出すのに役立つし。Pixelsは似てるから、作業はほとんど終わってるんだけど。Snapdragonのデバイスは、USB-Cの制御とか、Qualcomm XTRAのプライバシー対策とか、色々問題があるんだよね。Tensorみたいにメモリタギングもないし。" userName="strcat" createdAt="2025-04-13T04:27:26" color="#45d325">}}

{{<matomeQuote body="ちょっと話がそれるけど、ずっとあなたの活動を見てきた者として、また投稿してくれるのは嬉しいな！元気でやってるみたいで良かった。" userName="NoahKAndrews" createdAt="2025-04-13T05:18:22" color="">}}

{{<matomeQuote body="あなたの仕事と、面白くて洞察力のあるコメントに感謝します。あなたから多くのことを学びました。もっと多くのデバイスでGrapheneOSが使えるようになればいいのにな。Googleはどういうわけか、Pixelを世界中で売ることができないみたいだけど。" userName="matheusmoreira" createdAt="2025-04-13T07:30:01" color="">}}

{{<matomeQuote body="GrapheneOSの開発、いつもご苦労様です。" userName="rzk" createdAt="2025-04-13T12:13:48" color="#ff5c5c">}}

{{<matomeQuote body="GrapheneOSの開発、いつもありがとうございます。P7Pで使ってるけど、最高だよ。" userName="edm0nd" createdAt="2025-04-13T06:14:49" color="#785bff">}}

{{<matomeQuote body="strcatって名前のユーザーからのセキュリティ情報を信用していいのかな？(笑)<br>誰かstrcat_sかstrncatって名前の人が訂正して！" userName="fph" createdAt="2025-04-13T06:39:56" color="">}}

{{<matomeQuote body="めっちゃ速いね！9aと9 Proは似てるけど、コミュニティベースの開発ではこれはすごいことだよ。普段は批判的なんだけど、GrapheneOSチームにはマジで敬意を払うわ。" userName="CartwheelLinux" createdAt="2025-04-13T02:36:21" color="#ff5c5c">}}

{{<matomeQuote body="そりゃ、これらのデバイスで動くように作られたOSからスタートしてるんだからね。" userName="bitpush" createdAt="2025-04-13T02:07:16" color="">}}

{{<matomeQuote body="iOSとiDevicesみたいだね。何ヶ月もかけて安定させてるのに、結局安定しなくて、バグだらけのまま次のバージョンを出すんだもん。GrapheneOSは、自由とプライバシーを重視したコミュニティ主導のプロジェクトだから、マジでリスペクトだわ。" userName="crossroadsguy" createdAt="2025-04-13T05:08:51" color="">}}

{{<matomeQuote body="Android端末はTreble経由でAOSPを動かせるし、Pixel以外の端末もサポートできるよ。でも、セキュリティ要件を満たしてないんだよね。adevtoolで作業を自動化してるし、Pixelは似たような機種が多いから楽なんだよね。メモリ corruption バグとかも見つけて直してる。" userName="strcat" createdAt="2025-04-13T03:37:52" color="#785bff">}}

{{<matomeQuote body="詳しい情報ありがとう。Pixelスマホが同じカーネルバージョンなのはいいね。修正はLinux kernelとかAOSPに還元してるのかな？セキュリティ機能はAOSPにもあるけど、Googleがデフォルトで有効にしないのは、パフォーマンスとか安定性との兼ね合いかな？" userName="haukem" createdAt="2025-04-13T22:48:18" color="#ff33a1">}}

{{<matomeQuote body="＞Do you also contribute your fixes back to the upstream projects like the upstream Linux kernel, AOSP or Google？”<br>過去には貢献してたけど、今はGrapheneOSのユーザーのためになることしかしないよ。Androidのパートナー管理チームに邪魔されたから、脆弱性の報告も減らしたしね。AOSPにあるセキュリティ機能って言うけど、ほとんどはGrapheneOSのために開発されたものだよ。" userName="strcat" createdAt="2025-04-14T12:26:58" color="#785bff">}}

{{<matomeQuote body="AOSPのことじゃない？" userName="nofriend" createdAt="2025-04-13T02:51:38" color="">}}

{{<matomeQuote body="AOSPのことならすごいことだよね。でも、9aは既存のGrapheneOSをベースにしてるから早く開発できるって考えられるかも。" userName="nzeid" createdAt="2025-04-13T02:58:35" color="">}}

{{<matomeQuote body="これ、発表後初のPixelだね。<br>https://news.ycombinator.com/item?id=43485950" userName="kowabungalow" createdAt="2025-04-13T09:16:47" color="">}}

{{<matomeQuote body="変更は大げさで、GrapheneOSにはほとんど影響ないよ。AndroidはStableリリースのソースコードは公開してるけど、Betaリリースはほとんど公開してないんだ。GrapheneOSはAndroid OEMパートナーみたいに早期アクセスできると助かるんだけどね。" userName="strcat" createdAt="2025-04-13T16:56:19" color="">}}

{{<matomeQuote body="え、マジか！strcat / Daniel Micayさん、もし見てたら聞きたいんだけど、GrapheneOSの今後の開発にどれくらい影響あるの？" userName="codethief" createdAt="2025-04-13T12:43:02" color="">}}

{{<matomeQuote body="メディアで言われてるほど影響ないみたい。詳しくは[https://news.ycombinator.com/item?id=43674145](https://news.ycombinator.com/item?id=43674145)見てね。四半期とか年次リリースに早くアクセスできたら嬉しいんだけど、公開されてないんだよね。AOSPのメインブランチも、必要なコンポーネントの最新の変更しか提供してくれないし。" userName="strcat" createdAt="2025-04-13T16:57:30" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="ありがとね！" userName="codethief" createdAt="2025-04-13T18:50:21" color="">}}

{{<matomeQuote body="このOSのドライバーってLinuxに移植できないの？そうすれば新しいスマホもサポートできるんじゃない？" userName="mixmastamyk" createdAt="2025-04-13T03:03:10" color="#45d325">}}

{{<matomeQuote body="Android Open Source ProjectとかGrapheneOSみたいなOSはLinuxディストリビューションだよ。カーネルドライバーはLinuxカーネルドライバーだし。ユーザー空間ドライバーはAndroidのTreble hardware abstraction layerの一部で、将来のAndroidリリースとの互換性とSELinuxベースのサンドボックスを提供してる。ドライバーは分離されたプロセスに分割されてるんだ。Androidでは実用的な理由でそうしてるけど、セキュリティにもいいんだよね。<br>Trebleの互換性システムは今はあんまり関係ないかな。Androidのリリースは毎月あって、月次、四半期、年次のリリースがある。今サポートしてるPixelデバイスは全部公式にアップデートを受け取ってるよ。他のAndroidデバイスは月次とか四半期のアップデートはなくて、年次のアップデートだけだったりする。Pixelは[https://grapheneos.org/faq#future-devices](https://grapheneos.org/faq#future-devices)に書いてあるハードウェアセキュリティ要件を満たしてる唯一のデバイスなんだ。GrapheneOSはLinuxカーネルの6.1と6.6の長期サポートブランチを使ってて、次はAndroid 16で6.12を使う予定。" userName="strcat" createdAt="2025-04-13T03:21:23" color="#ff5c5c">}}

{{<matomeQuote body="＞The kernel drivers are Linux kernel drivers.<br>＞でも、アップストリームされてないドライバーだから、新しいカーネルに移行するのが大変なんじゃない？" userName="yjftsjthsd-h" createdAt="2025-04-13T03:32:07" color="">}}

{{<matomeQuote body="＞But they're drivers that are not upstreamed and which therefore make it hard to move to a newer kernel, right?<br>＞アップストリームされてても、されてなくても、大変さは変わらないよ。GoogleがPixelのドライバーを新しいLTSブランチとかメインラインカーネルに移植してるから。" userName="strcat" createdAt="2025-04-13T03:53:59" color="#ff5733">}}

{{<matomeQuote body="2つ思ったこと（と半分かな）。<br>まず、GrapheneOSがGoogleからアップデートが来てるPixelデバイスだけを対象にしてるのを一瞬忘れてた。Googleがデバイスのメンテナンスをしっかりやってる限りは、それでもいいと思う。ベンダーが責任感ない場合も多いから、考え方がそっちに引っ張られてるかも。<br>GrapheneOSは現在Pixel 6に3つ前のカーネルを載せてるけど、Androidの開発プロセスを追うのが難しいから、見落としてたらごめん。でも、最新のバグ修正が入ってないカーネルを載せてるなら、微妙じゃないかな。" userName="yjftsjthsd-h" createdAt="2025-04-13T04:23:32" color="">}}

{{<matomeQuote body="顧客に出荷されるカーネルが1ヶ月遅れなのは、そんなに悪くないと思うよ。<br>＞So the super stable slow moving distro<br>＞遅いってのは、Debianが最新バージョンにアップデートするんじゃなくて、ホットフィックスを適用するのに時間がかかるって意味だよ。" userName="charcircuit" createdAt="2025-04-13T05:00:07" color="#ff5733">}}

{{<matomeQuote body="最新の6.1.134と6.6.87になってるのがわかると思うけど、Greg KHがAndroid GKI LTSブランチをkernel.org LTSブランチに追いつかせたからだよ。これは次のOSリリースに含まれる予定。GKI LTSアップデートはすぐに出荷するけど、GKI LTSブランチはkernel.org LTSブランチより数週間遅れることがある。" userName="strcat" createdAt="2025-04-16T23:14:30" color="#ff33a1">}}

{{<matomeQuote body="Linux 6.12はLinux 6.1やLinux 6.6よりセキュリティが高いわけじゃないよ。新しいカーネルは攻撃対象が増えて複雑になるし、バグも多い。バグ密度は新しいコードほど高いんだ。古いブランチほどパッチのバックポートが不完全になるから、新旧のバランスが大事。Googleは既にPixelをLinux 6.12に移植してるけど、バグが多いから出荷はしないんだって。<br>Pixelは最近新しいLTSリリースに移行し始めたばかりで、今後は毎年新しいLTSリリースに移行する可能性が高い。古い世代を6.1に移行したのは2025年3月。今後は一緒に新しいブランチに移行すると思うよ。<br>LinuxカーネルLTSリビジョンは、他のプロジェクトのLTSリビジョンとは全然違うんだ。kernel.org LTSリリースは、テストされてないパッチを盲目的に適用してるだけだし、更新しても問題が解決するとは限らない。GrapheneOSは最新のLinux 6.1とLinux 6.6 GKI LTSブランチリリースを出荷してて、Pixel 6も6.13に移植されてるけど、安定してないから出荷しないんだ。DebianはGreg KHのGKI LTSブランチより遅れてることが多いし、GKI ABIの安定性システムはPixelには無意味。もしGKIシステム全体が存在しなければいいのにって思ってるくらい。Pixelの場合、カーネルイメージとドライバーは全部同じカーネルソースツリーで構築されてるから、ドライバーのABI互換性のためのシステムは複雑で悪い方向に進んでるだけなんだ。" userName="strcat" createdAt="2025-04-13T04:53:24" color="#ff5733">}}

{{<matomeQuote body="えーと、6.1に特に反対してたわけじゃなくて、パッチレベルの話ね。個人的には、[kernel.orgをチェック] 5.15.180 (最新5.15) の方が 6.1.130 (最新じゃない6.1) よりいいかな。今は機能追加よりバグ修正が大事だから。GKI LTSが修正をバックポートしてるならいいけど、ちょっと不安になるかも。<br>＞Linux kernel LTS revisionsは他のプロジェクトのLTSとは違う。<br>＞ほとんどテストされてないパッチをLTSメンテナーがメインラインからバックポートしてるだけ。パッチがうまく適用されればOK、ダメなら適用されない。うまくいくかは疑問。<br>あと、ごちゃまぜカーネルは好きじゃないんだよね。バックポートがダメなら、一番最新のバージョンを追いかけるべきじゃない？" userName="yjftsjthsd-h" createdAt="2025-04-13T06:21:16" color="">}}

{{<matomeQuote body="LTSブランチを使いたいけど、できるだけ新しいのがいいな。今は6.6で、近いうちに6.12に移行したい。でも、GoogleがCIインフラや製品デバイスでテストしてるカーネルの方が安心。Pixelsが6th、7th、8th genデバイスを6.1に移行したのは2025年3月。初めてLTSブランチを移行したんだよね。今後は新しいLTSを1年かけて安定させて、次のLTSに移行するって感じになるんじゃないかな。LTSカーネルの品質は上がると思うよ。Greg KHがkernel.org LTSとGKI LTSの両方を担当してるのは問題だよね。<br>＞5.15.180 (最新5.15) の方が 6.1.130 (最新じゃない6.1) よりいい<br>最新の5.15は6.1より修正が少ない。<br>＞バックポートがダメなら、一番最新のバージョンを追いかけるべき？<br>Linux kernelの品質は低いから、最新のカーネルはバッテリーとか考えると実用的じゃない。セキュリティバグも多いし。Arch LinuxではLTSカーネル (今は6.12) を使ってるよ。LTSの品質が上がれば、6.12.15+みたいな最新のLTSを使いたい。今はリグレッションが見つかるのが遅すぎるから、まだ早すぎる。USBとかBluetoothとかビデオ録画とか、ニッチな機能のリグレッションは困るんだよね。" userName="strcat" createdAt="2025-04-13T06:58:30" color="#38d3d3">}}

{{<matomeQuote body="情報が多いね。でも、mobianとかpostmarketOSみたいなモバイルLinuxディストリビューションが、新しいPixelみたいなスマホをどうサポートできるのか知りたかったんだ。読んでも分からなかった。Androidは使いたくない、LinuxとPhoshを使いたいんだ。でも、対応してるハードウェアがイマイチなんだよね。" userName="mixmastamyk" createdAt="2025-04-13T18:17:04" color="">}}

{{<matomeQuote body="GrapheneOSもモバイルLinuxディストリビューションだよ。Linux kernelを使ってるからね。GrapheneOSはハードウェア仮想化をサポートしてて、Linux kernelのセキュリティに頼らなくてもよくなる。GrapheneOSのインスタンスをネストしてサンドボックス化したり、他のOSをTerminalアプリで実行したりできる。Windows 11もサポートしたいな。" userName="strcat" createdAt="2025-04-13T21:01:22" color="">}}

{{<matomeQuote body="今までの知識を活かせるモバイルOSが欲しいな。RustとかPythonとかpipewireとかsystemdとかWaylandとかでソフトウェアを書きたい。sshでログインしたい。AndroidアプリとかWindowsには興味ない。GrapheneOSのことは全然知らないんだよね。FedoraやMintみたいに使えるstarliteタブレットは最高だよ。セキュリティも大事だけど、まずはまともに動くデバイスが欲しい。Libremは5年前のスマホでなんとか動いてるけど、もう時代遅れだよ。カーネルがすごいなら、他のディストリビューションでも使えるようにアップストリームしてほしいな。" userName="mixmastamyk" createdAt="2025-04-14T01:11:55" color="">}}

{{<matomeQuote body="GrapheneOSはAndroid/Linuxディストリビューションで、GNU/Linuxじゃないから、セキュリティの取り組みはunix系のLinuxディストリビューションには移植できないと思うよ。" userName="yjftsjthsd-h" createdAt="2025-04-14T02:08:13" color="">}}

{{<matomeQuote body="セキュリティはそこまで重要じゃない。Linuxが動く最新のスマホが欲しい。動くようになってから強化すればいい。" userName="mixmastamyk" createdAt="2025-04-14T04:07:09" color="">}}

{{<matomeQuote body="AndroidはLinuxでマイクロカーネルを作ろうとしてるみたいだね。" userName="speed_spread" createdAt="2025-04-13T03:37:03" color="">}}

{{<matomeQuote body="特定の種類のアプリケーションでは、Linuxをブラックボックスとして扱える。syscallとか/procとか/sysは安定してるから、Goはsyscall packageでlibcとかld.soを回避して、できるだけ静的ビルドしてる。OpenBSDとかmacOSではうまくいかなかったみたいだけど。" userName="rollcat" createdAt="2025-04-13T06:58:31" color="">}}

{{<matomeQuote body="Goを避ける理由の一つがsyscall packageなんだよね。LD_PRELOADとかstatic linker interpositionを使うツールが動かなくなる。(例: clockをinterposeしてタイムアウトのロジックをテストする。) libcを使うオプションが欲しいな。いつかPOSIXを使うターゲットが追加されるといいな。" userName="hedora" createdAt="2025-04-13T15:18:37" color="">}}

{{<matomeQuote body="GoogleがPixel 4aのバッテリー寿命を短くした後にGrapheneOSを入れたんだ。最初は色々動かなくてイライラしたけど、今は慣れてセキュリティも安心できるようになったよ。自分のデバイスって感じで、誰かに覗き見されたり、突然サポート打ち切られたりする心配がなくなった。マジ最高。" userName="OsrsNeedsf2P" createdAt="2025-04-13T02:09:34" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
