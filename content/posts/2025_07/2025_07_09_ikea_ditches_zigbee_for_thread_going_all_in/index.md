+++
date = '2025-07-09T00:00:00'
months = '2025/07'
draft = false
title = 'IKEAがZigbeeを捨てThreadへ！Matterスマートホームに全振り！'
tags = ["スマートホーム", "Matter", "Thread", "IKEA", "Zigbee"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> IKEAがZigbeeを捨てThreadへ！Matterスマートホームに全振り！

引用元：[https://news.ycombinator.com/item?id=44507971](https://news.ycombinator.com/item?id=44507971)




{{<matomeQuote body="IKEAがZigbeeを捨ててThread/Matterに移行するの、最悪じゃん。Matterは公開鍵基盤とデバイス証明書を使った閉鎖的なエコシステムだし、Threadはデバイス出荷にロイヤリティが必要らしいよ。これで「よりオープンなエコシステムへ」ってIKEAが言うの、ガッカリだね。<br>しかも、既存のハードウェアとの互換性がなくなる（Touchlink機能以外は）。Zigbeeデバイスをたくさん持ってたら、新しいデバイスを追加したい時に、完璧に動いてるZigbeeデバイス全部買い替えるか、ネットワークがごちゃごちゃになるか、選ばなきゃいけないんだ。" userName="WhyNotHugo" createdAt="2025/07/09 11:33:13" color="#ff5c5c">}}




{{<matomeQuote body="メーカーの半端なスマホアプリを使ってるなら、既存のZigbeeデバイスとの互換性が問題になるって思うかもね。でも、スマートホームを真剣にやってる人、例えばHome Assistantを使ってる人なら、色んな種類のスマートデバイスがあっても全然問題ないよ。設定する無線が一つ増えるだけだからね。ZigbeeとZwave両方使ってる人もいれば、ZigbeeとWi-Fi、あるいはZigbeeとZwaveとWi-Fiとクラウド連携までやってる人もいるけど、Home Assistantは気にしないんだ。" userName="Toutouxc" createdAt="2025/07/09 12:05:10" color="#ff33a1">}}




{{<matomeQuote body="あんまり深く考えなかったせいかもしれないけど、何年も色々バラバラに買ってきて、Home Assistantで繋げようとした後、結局IKEAのスマートホーム製品だけに統一したよ。HAはもうやめて、今持ってるIKEA以外の”スマート”デバイスは全部メーカーのアプリ使ってる（でも最近、ほとんどのスマートデバイスにはうんざりして、できるだけ避けてるけどね）。<br>アップデートに失敗したり、リリースノートを読み飛ばしたせいで、照明スイッチが動かなくなるたびに、ログとかYAML設定をいじらなきゃいけないのが、まるでシステム管理者みたいな仕事になっちゃって嫌だったんだ。僕はプログラマーで、Linuxの管理も好きで、サーバーもたくさん運用してるんだけど、キッチンの照明が消えないからって、こんなことするのは理想的じゃないよ。HomeKitも似たような問題があったけど、あそこはAppleのデザイン思想で何でも“ただ動く”ことになってるから、謎に動かなくなった時に診断できる機能が全然ないんだ。" userName="macNchz" createdAt="2025/07/09 14:36:09" color="">}}




{{<matomeQuote body="何をデタラメばっかり広めてんだよ。MatterとThreadについてちゃんと調べてから言えって！" userName="tommysve" createdAt="2025/07/09 13:59:36" color="">}}




{{<matomeQuote body="自分でMatterデバイスって作れるの？" userName="echelon" createdAt="2025/07/09 14:18:56" color="">}}




{{<matomeQuote body="うん、作れるよ。これを見て→ https://developers.home.google.com/codelabs/matter-device" userName="olalonde" createdAt="2025/07/09 14:55:05" color="#785bff">}}




{{<matomeQuote body="それを売るのにべらぼうな金を払わずに済む？<br>ネタバレだけど、無理だよ。このリンク見たら分かるけど、色々クソみたいなのが山ほどあるんだ：https://developers.home.google.com/matter/integration/pair#p...<br>Googleに必要以上の情報を渡しても良ければ、自分のデバイスを動かすことは一応できるけど、Googleはいつでもそれをブロックできるんだ。<br>認めなよ、巨大テック企業は閉鎖的なエコシステムが大好きなんだから。もし可能なら、イーサネットパケットを送りたい全てのコンピュータに、巨大テック企業の秘密鍵を付与して、それをいつでも取り消せるようにしたいと思ってるはずだよ。でも幸いなことに、この標準（Ethernet）は、そんな彼らの新しい歪んだフェチズムが生まれる前から存在してたんだ。" userName="snickerdoodle12" createdAt="2025/07/09 15:37:35" color="#ff5c5c">}}




{{<matomeQuote body="Home Assistantは「ただ動く」んだよ。確かにノブはたくさんあるけど、僕が3年間使ってる中で、一度も問題が起きたことないんだ。特定のメーカーのデバイスが不安定なことはあるけど、プラットフォームとしては本当に安定してるよ。もう1年以上設定をいじってないけど、全部ちゃんと動いてる。" userName="turtlebits" createdAt="2025/07/09 15:23:27" color="">}}




{{<matomeQuote body="そうなんだよね、Matterって多くの場合インターネットアクセスが必要だし。オープンなホームオートメーションの救世主になるはずだったのに、実際にはメーカーがデータ収集やクロスセルのためにアプリを使いたがるっていう、いろんな制約が多すぎるんだ。そして、オープンソース愛好家にとっては十分オープンじゃないのに、メーカーからも評判が悪いらしいよ。僕、メーカーに勤めてて、なんでMatterとThreadを導入しないのか聞いたら、マーケティング部門が自社アプリをデータ収集とクロスセルの手段として手放さないからって笑い飛ばされたんだ。もちろん、まさにそれが僕がMatterを望まない理由なんだけどね。<br>大手しかできない認証とか、ロックされたファームウェアの要件があるなんて知らなかったよ。馬鹿げてる。なんでThreadとMatterが、実際は真逆なのにオープン革命として称賛されたんだろ？" userName="wkat4242" createdAt="2025/07/09 12:53:41" color="#ff5c5c">}}




{{<matomeQuote body="MatterはGoogleとは何の関係もないよ。彼らは標準をサポートしてるだけ。もしオープンなエコシステムがそんなに大事なら、Google Homeなんかじゃなくて、Home Assistantのサポートについて心配すべきでしょ。" userName="Larrikin" createdAt="2025/07/09 18:15:12" color="">}}




{{<matomeQuote body="まさにそれがHome Assistantを導入するのに躊躇する理由なんだ。スマートホームのデバイスは「ただ動く」ものであってほしいし、家電であってほしいんだよ。" userName="JoshTriplett" createdAt="2025/07/09 15:00:44" color="#38d3d3">}}




{{<matomeQuote body="何かリンクがあるみたいだね。Home AssistantのMatter開発ボードに関するドキュメントはここ。https://www.home-assistant.io/integrations/matter/#experimen...<br>AndroidユーザーはテストデバイスをGoogle開発者コンソールに追加しないと試運転失敗するらしい。<br>デバイスを売るならGoogle Homeサポートは絶対気にするべき。Home Assistantだけで動くものを売るのはおかしいよね。" userName="snickerdoodle12" createdAt="2025/07/09 18:40:13" color="#ff5733">}}




{{<matomeQuote body="それは違うよ。Matterはオープン標準だからね。詳しくはここを見て。https://en.wikipedia.org/wiki/Matter_(standard)" userName="olalonde" createdAt="2025/07/09 14:04:44" color="#45d325">}}




{{<matomeQuote body="Androidに関するちょっとした注釈を、GoogleがMatterを管理してるって証拠にしてるの？本気で言ってる？" userName="dieortin" createdAt="2025/07/09 21:12:00" color="">}}




{{<matomeQuote body="”特定のメーカーのデバイスが不安定”ってコメントにはちょっとうんざりするよ。昨日動いたライトが今日は動かないのが「メーカーの不安定さ」のせいだとしても、どうでもいいよ。<br>これって初回設定時の不安定さのこと？それともアップデート後のこと？" userName="delusional" createdAt="2025/07/09 15:45:06" color="">}}




{{<matomeQuote body="Home Assistantのドキュメントに、自分のMatterデバイスをテストするならGoogleを巻き込む必要があるって書いてあるから、真剣に引用してるんだよ。Home Assistantのドキュメントが間違ってるって言うの？詳しく教えてよ。" userName="snickerdoodle12" createdAt="2025/07/10 06:44:52" color="#ff5733">}}




{{<matomeQuote body="それってZigbeeでも同じじゃない？Zigbeeデバイスを料金なしで販売したり宣伝したりできるの？" userName="mardifoufs" createdAt="2025/07/09 17:26:10" color="">}}




{{<matomeQuote body="Matterネットワークに最終製品を投入するには、認定と会費が必要で、これは一回限り、継続的、製品ごとの費用がかかるんだね。<br>PKIとデバイス認証証明書を使って強制されるらしい。<br>詳しく教えてくれてありがとう！" userName="devnullbrain" createdAt="2025/07/09 14:28:40" color="#38d3d3">}}




{{<matomeQuote body="技術的な制限は何も無いよ。" userName="snickerdoodle12" createdAt="2025/07/09 18:41:43" color="">}}




{{<matomeQuote body="僕のHome Assistantはちゃんと動いてるよ。アップデート後も、他の理由でもランダムに壊れたことは一度もないね。" userName="Cu3PO42" createdAt="2025/07/09 16:01:07" color="">}}




{{<matomeQuote body="Home Assistantは”ちゃんと動く”よ。中古のHP EliteDesk 705 G3 Mini Desktopで4年以上、ほとんどメンテなしで動いてるんだ。テレビ台に置いたまま、しっかり役割を果たしてる。https://homeautomation.substack.com/p/setting-up-home-assist..." userName="iamspoilt" createdAt="2025/07/09 18:05:48" color="#45d325">}}




{{<matomeQuote body="Android（Google製OS）で自分のMatterデバイスをテストするならGoogleを巻き込む必要がある。これってMatter自体について何か言ってるの？" userName="dieortin" createdAt="2025/07/10 12:41:13" color="">}}




{{<matomeQuote body="はっきり言うと、これって有料認証が必要なZigbeeを開発した団体と同じだよ。認証なしだと、製品がZigbee対応とかロゴ使用はできない。でも、認証なしでもデバイスは接続できるし、コミッショニング時に未認証警告が出るだけ。実用上は全く問題ないね。" userName="arghwhat" createdAt="2025/07/09 16:55:39" color="#ff33a1">}}




{{<matomeQuote body="Matterはインターネットアクセス不要で、他ベンダーのエコシステムと統合しても完全にローカルなプロトコルなんだ。Google HomeみたいなのはGoogle Home Hubと話すためにオンラインになるかもしれないけど、それはGoogleの都合であってMatterのせいじゃないよ。" userName="arghwhat" createdAt="2025/07/09 16:51:54" color="#ff5c5c">}}




{{<matomeQuote body="HAのアップデートって自動？手動で定期的に？それとも”年に一回くらい手動”でやってるの？" userName="DavideNL" createdAt="2025/07/09 19:14:25" color="">}}




{{<matomeQuote body="じゃあ、Matterデバイスをプロビジョニングするには他にどうすればいい？iPhoneを買うとか？" userName="snickerdoodle12" createdAt="2025/07/10 13:04:05" color="">}}




{{<matomeQuote body="＞ThreadとMatterはなぜオープンな革命って賞賛されたのに、実際は真逆なの？<br>消費者が怠け者でバカで、何も調べないからだよ。書いてあることを信じるんだ。『OpenAI』はなぜ『オープン』って呼ばれてる？" userName="dylan604" createdAt="2025/07/09 14:05:50" color="">}}




{{<matomeQuote body="技術的にはMatter自体はインターネットアクセス不要だけど、動作するボーダールーターなしでは動かない（または参加できない）デバイスがたくさんあるだろうね。仕様と実際の経験は、ここで少し違うんだ。" userName="Volundr" createdAt="2025/07/09 17:00:59" color="#ff5733">}}




{{<matomeQuote body="HAはもう非ホビーユーザー向けになった？よく動かすには100ドル以上のハードが必要で、ただのPiとSDカードじゃダメって感じだったし。今はかなり良くなってるみたいだけど、最近までPLC並みの信頼性からは程遠かった。非技術者の家に設置して、5年間メンテなしで動くレベルになったのかな？" userName="eternityforest" createdAt="2025/07/10 06:51:38" color="#ff33a1">}}




{{<matomeQuote body="＞ThreadとMatterはなぜオープンな革命って賞賛されたのに、実際は真逆なの？<br>それはごまかしのPRか、貪欲さによる本来の意図の転覆だよ。あと、最近Threadがメーカーに放棄され、EOL宣言されたってニュースなかったっけ？何か勘違いしてるかな？" userName="K0balt" createdAt="2025/07/09 13:31:39" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ZWaveJSはよく壊れてたけど、HAをLinuxのコンテナで動かしてるから、アップデートも自分で管理できるし、何かあってもロールバックできるから、問題ないよ。" userName="op00to" createdAt="2025/07/09 16:08:52" color="#785bff">}}




{{<matomeQuote body="Home AssistantとZigbeeはIKEAのデバイスと完璧に統合されてて、製品のデザインも最高だったのに、もし無くなるなら悲しいな！ThreadがIPv6対応でIPネットワーキングが統一されるのは便利そうだけど、Matter/Threadが本当にオープンで良い未来になるか知りたいな。スマートホームってすごく便利だよ、うちはこんな風に使ってるって具体例も紹介してる。" userName="gorgoiler" createdAt="2025/07/09 11:18:13" color="#38d3d3">}}




{{<matomeQuote body="Matter/Threadって、クローズドなエコシステムだと思うよ。PKIとデバイス認証が必要だから、承認されたパートナーのデバイスしか使えないんだ。小さい企業や個人が作ったデバイスは、まず無理だね。" userName="WhyNotHugo" createdAt="2025/07/09 11:35:55" color="#ff5733">}}




{{<matomeQuote body="え？ESP32とOpenThreadを使えば、自分でMatter/Threadデバイスを簡単に作れるじゃん。全然クローズドじゃないよ。Home AssistantもMatter over Threadに対応してるしね。何がクローズドなの？" userName="madwolf" createdAt="2025/07/09 11:41:20" color="#ff5c5c">}}




{{<matomeQuote body="他のデバイスと話すには、そのデバイスの秘密鍵を持ってないとダメなんだよ。" userName="Asmod4n" createdAt="2025/07/09 11:53:03" color="">}}




{{<matomeQuote body="しかも、メーカーはMatterデバイスをロックダウンする傾向があるんだ。だからTasmotaとかESPHomeを書き込めないんだよ。ShellyやSonoffがそうだね。" userName="0x000xca0xfe" createdAt="2025/07/09 11:59:53" color="#ff33a1">}}




{{<matomeQuote body="ロックダウンする”傾向”じゃなくて、”必須”なんだよ。Matter認証にはフラッシュの暗号化とファームウェアの署名が求められるからね。" userName="3nwf248" createdAt="2025/07/09 12:30:35" color="#785bff">}}




{{<matomeQuote body="ZigbeeとIPネットワークが競合してるって話、逆にと俺はそれが”機能”だと思うな。ハッキングされたデバイスがネットワークから情報抜き出すリスクが減るからね。だからWi-Fiデバイスは避けてるよ。" userName="alex_duf" createdAt="2025/07/09 12:12:11" color="#ff5c5c">}}




{{<matomeQuote body="他のデバイスの秘密鍵がないと通信できないって、どういうこと？説明してくれない？" userName="meepmorp" createdAt="2025/07/09 12:16:54" color="">}}




{{<matomeQuote body="例えば、Eveのデバイスを買ってMatter/Threadにファームウェアをアップグレードしても、Home Assistantに追加できないんだ。Eveがデバイスの鍵を渡してくれないからね。" userName="Asmod4n" createdAt="2025/07/09 12:51:24" color="#ff5733">}}




{{<matomeQuote body="それが悪いことみたいに言うけど、俺はもっとIoTセキュリティが欲しいな。" userName="jekwoooooe" createdAt="2025/07/09 17:35:25" color="">}}




{{<matomeQuote body="Matterはほとんど知らないんだけど、これって本当？自分のファブリックを管理すれば、コントローラーが信頼されてるから、そこにあるデバイス全部と話せると思ってたけど。" userName="mmastrac" createdAt="2025/07/09 12:48:58" color="">}}




{{<matomeQuote body="自作スキームの可能性がゼロってのは同意できないな。開発者モードを有効にすれば、Google HomeやApple Homeを使って自作デバイスを簡単にコミッショニングできるんだから。" userName="bri3d" createdAt="2025/07/09 12:42:02" color="">}}




{{<matomeQuote body="この要件って公開されてるの？Matterデバイスを開発してたけど、高コストと顧客需要のなさで結局認証されなかったよ。" userName="0x000xca0xfe" createdAt="2025/07/09 12:38:01" color="">}}




{{<matomeQuote body="これだよ。ネットワークの分断こそが重要なんだ。企業がIPXを内部で使って、プロキシでWeb/IPトラフィックを保護するのと一緒だね。全てがTCP/IPである必要はない。スマートホーム接続に関しては、その標準がTCP/IPと同じくらいオープンである限り、それは良い特徴だと思うよ。" userName="stego-tech" createdAt="2025/07/09 12:43:26" color="#ff5c5c">}}




{{<matomeQuote body="その通り。Matterに中央の管理機関があることへの懸念は理解できるけど、DIY Matterファブリック/ネットワークの構築はすごく簡単だから、不安がるのは全く筋違いだね。Matterの“クローズド”な部分はデバイスの認証プロセス。GoogleやAppleのMatter Commissionerなら、信頼されないDACのデバイスでも簡単に使えるよ。詳細はここ: https://developers.home.google.com/matter/primer/fabric" userName="bri3d" createdAt="2025/07/09 15:55:34" color="#ff5733">}}




{{<matomeQuote body="ここで言う“セキュリティ”ってのは、“ベンダーによって明示的に許可されていないものは何でも禁止”ってこと？" userName="markhahn" createdAt="2025/07/09 18:06:29" color="#ff5c5c">}}




{{<matomeQuote body="まさに俺がこれやったよ。Eveのスマートプラグメーターを手に入れて、HomeAssistantで完璧に動いてる。その前にApple Homeアプリで最新ファームウェアにアップデートしたはずだけどね。" userName="fnwbr" createdAt="2025/07/09 13:07:11" color="">}}




{{<matomeQuote body="開発者モードなんて選択肢にならないだろ。それがどんなものか知らないけど、キッチンの照明を開発者モードで動かしたくなんかない。普通のアナログスイッチを使うよ。" userName="lukeschlather" createdAt="2025/07/09 16:37:13" color="">}}




{{<matomeQuote body="Matterでは、ファームウェア画像はすべて署名され、改ざんされてないことをデバイスがインストール前に検証する必要がある。また、不正なファームウェア実行の防止や、ダウングレードできない仕組みも必須。ファームウェア画像は“暗号化されてもよい”とされてるけど、これは必須じゃないよ。詳細はここ: https://community.arm.com/arm-community-blogs/b/internet-of-..." userName="Chihuahua0633" createdAt="2025/07/09 14:13:31" color="#ff5c5c">}}




{{<matomeQuote body="HomeKitモードなら問題なく動くよ。Thread/MatterだとAppleだけがキーを持ってるか、誰かが金払って手に入れたんだろ。あとApple HomeアプリじゃモードをMatterに変えられないから、Home Assistantでやらないとダメだよ。" userName="Asmod4n" createdAt="2025/07/09 13:22:34" color="">}}




{{<matomeQuote body="「Devモードは非現実的」って何のこと？コミッショナー（MatterデバイスをFabricに接続するブローカー）がデバイス認証を承認済みCAに連鎖させないって意味だよ。GoogleだとアカウントのDeveloper consoleでベンダー/プロダクトID追加、Appleだと「この不明なデバイスを信頼」ボタンを押すだけ。それだけ。" userName="bri3d" createdAt="2025/07/09 17:05:39" color="#38d3d3">}}




{{<matomeQuote body="いや、署名付きファームウェアと検証済みブートって意味だろ…" userName="jekwoooooe" createdAt="2025/07/09 20:58:58" color="">}}




{{<matomeQuote body="「小規模プレイヤーや自作シーンは無理」ってあるけど、Matter/Thread機器を中国メーカーがあまり作らなくなるのが最悪だと思う。安い中国製品はZigbee普及に貢献したんだ。信頼性は低いけど、安価にスマートホームを始めるには最高だったよ。" userName="ValentineC" createdAt="2025/07/09 15:37:51" color="#ff5c5c">}}




{{<matomeQuote body="それってUEFI Secure Bootみたいな感じ？PKIで公式の信頼済み企業リストがあって、ユーザーが独自のキーを追加できるはずだけど、ベンダーがいつでも簡単にその機能を潰せるから、みんな不安になるってこと？" userName="yjftsjthsd-h" createdAt="2025/07/09 17:46:12" color="">}}




{{<matomeQuote body="Matterのデザインは良し悪し両方あるね。良い点は、公式の信頼リストやルート証明書がブロックチェーンに保存されてて、公開されてるからベンダー間で公平に共有されること。キー取得や認証もUEFIと違って簡単。Google/Appleがテストキーサポートやめても、自分のMatter Fabricを立てられる。ウォールドガーデン外だけど、自作コントローラーでMatter動かせる。Commissioner開発は大変だけど、不可能じゃない。ロックアウトは逆方向で、ユーザーが危険なデバイスを買うのを防ぐためだよ。<br>悪い点は、標準のCommissionerじゃ独自のキーやルート証明書は登録できないこと。テストデバイスとして固定のベンダーID/デバイスIDを使うのが普通。ユーザーが自分でデバイスを作れるようにしつつ、エコシステムを保護する設計だけど、UEFIみたいにユーザーがキーを登録してシステムを完全に制御できるわけじゃない。結局、自分の自己署名証明書を信頼するCommissionerを自作するのは可能だけど、デフォルトではないから本当に「開発モード」であって「持ち込みキー」じゃないんだよね。" userName="bri3d" createdAt="2025/07/09 18:46:27" color="#785bff">}}




{{<matomeQuote body="Z-Waveは認証が必要で、アライアンスのメンバーシップや適合性テストがあるよ。でもシールドやモジュール（https://z-uno.z-wave.me/module/）を使って自作できるし、一部メーカーは汎用的な低電圧入出力を持つZ-Waveデバイス（https://www.fibaro.com/en/products/smart-implant/）も作ってる。他よりは簡単じゃないけど、DIYはかなり可能だよ。https://z-wavealliance.org/development-process-overview-2/" userName="magicalhippo" createdAt="2025/07/10 10:41:08" color="#ff5733">}}




{{<matomeQuote body="これはMatterスタックを通じたOTAアップデートにしか影響しないみたいだね。シリアルフラッシュをブロックする明確な要件じゃない。免責事項：Shelly/SonoffのMatter対応デバイスを自分でシリアルフラッシュしたことはないけど、再フラッシュに失敗したって顧客の不満をいくつか覚えてるよ。" userName="0x000xca0xfe" createdAt="2025/07/09 15:19:13" color="">}}




{{<matomeQuote body="あんまり心配しなくていいよ。Espressifがこのチップを安価で大量に市場に出すだろうから。これはZigbee/Thread/BLEに対応してるよ。https://www.espressif.com/en/products/socs/esp32-h2" userName="petre" createdAt="2025/07/09 18:33:19" color="#ff5733">}}




{{<matomeQuote body="何のためにあるのか分かんないし、電球ひとつ付けるのにも手順が多すぎ。電球が一番簡単なのにね。もし2つのデバイスで、一方が信頼済みで他方が信頼されてない場合、ボタンを押すだけで本当に解決するのか怪しいね。(正直、広範な調査なしでちゃんと動くとは疑ってるよ。これってあり得る問題の一つに過ぎないしね。)" userName="lukeschlather" createdAt="2025/07/09 20:56:37" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="やったー、IKEAの新しいデバイスはHAとThreadモードで動くけど、古いのはAppleハブがないと無理なんだよね。Matterが普及する前に買ったIKEAデバイスが6〜7個あるけど、ファームウェアアップデートしてもHome Assistantで全く使えないよ。" userName="Asmod4n" createdAt="2025/07/09 13:29:56" color="#ff33a1">}}




{{<matomeQuote body="ThreadがZigbeeより優れてる点が分かんない！記事にはハブ不要ってあるけど、ボーダーゲートウェイってハブとほぼ同じじゃん？うちはHome AssistantでZigbee無線機だけで動いてるしハブなんて要らないよ。メーカーのサポート以外でThreadがZigbeeより優れてる理由って何？Zigbeeでまとまればよかったのに、誰か教えて！" userName="nick__m" createdAt="2025/07/09 11:07:16" color="#ff5733">}}




{{<matomeQuote body="Matterは旧Zigbee Allianceが作った、次世代のZigbeeだよ！ThreadはMatterより前からあって、Wi-FiやEthernetと並ぶMatterの対応通信方式の一つなんだ。(編集: MatterがZigbeeになかったBluetoothプロビジョニングを追加したおかげで、QRコードとか数字入力なしでスマホからデバイスを追加できるようになったんだ。)あと、Home AssistantはCSAの一員で、GoogleやAppleがテストに使ってるって知ってた？" userName="alsko" createdAt="2025/07/09 11:24:20" color="#38d3d3">}}




{{<matomeQuote body="『編集: MatterがZigbeeになかったBluetoothプロビジョニングを追加したおかげで、QRコードとか数字入力なしでスマホからデバイスを追加できるようになったんだ。』<br>7年間ホームオートメーション開発に携わってる俺の意見。UX優先のフローは心配だよ。急な停電で電球がリセットされると、電波の届く範囲のデバイスならどれでも電球を乗っ取れる可能性がある。プロビジョニングは稀なイベントだから、これで脆弱性が増えるのはどうかなって思う。Lowe’sとかIKEAはテックサポートしたくないからUX優先を求めるけど、QRコードはオフラインでも使えてパスワードみたいに分かりやすいから優れてると思うよ。" userName="bevr1337" createdAt="2025/07/09 16:08:05" color="#785bff">}}




{{<matomeQuote body="そうそう、その逆もあってさ。新しい家でNanoleafの埋め込み型照明を業者に付けてもらったんだけど、ドタバタでQRコードが入ってる箱を捨てちゃったんだ。半分くらいはQRコードのシールを見つけたけど、残りはなくしちゃって。ライト本体にもQRコードが印刷されてるけど、天井裏に釘打ちされた床板で完全に隠れてるんだよ。だから、今NanoleafのCSに注文番号でペアリングコードを教えてもらえないか、ただただ祈ってるんだ、ハハ。" userName="umbra07" createdAt="2025/07/09 16:47:37" color="#785bff">}}




{{<matomeQuote body="まさにそうだね。QRコードはデバイスの寿命まで持つように印刷されるべきだよ。技術者（設置業者）が証明書やキーをリセットできるといいな。QRコードをなくすこと以外にも、中古品のオーナーも安心して使えるようにさ。" userName="bevr1337" createdAt="2025/07/09 16:57:32" color="">}}




{{<matomeQuote body="まさにこの状況だからこそ、Bluetoothプロビジョニングには期待してるんだよね。" userName="luckydata" createdAt="2025/07/09 17:42:43" color="">}}




{{<matomeQuote body="大抵のLEDパックスポットライトは、石膏ボードの裏を掴む小さなバネ式の腕で固定されてるだけだから、ちょっと引っ張ればすぐ外せるよ。ライトは短い低電圧ケーブルで電気接続箱に繋がってて、LEDドライバーと電源電圧の接続は全部この接続箱の中だよ。" userName="frosted-flakes" createdAt="2025/07/10 05:26:27" color="">}}




{{<matomeQuote body="みんなアナログスイッチの使いやすさを甘く見てない？プロビジョニングは「稀」って言うけど、デバイスの寿命で考えたら最低でも1ヶ月は使えない期間が出そうだよ。多くのデバイスは何ヶ月も何年も使われなくなるかもね。セキュリティ対策って実際の運用には影響ないし、むしろ余計な対策がデバイスをダウンさせる。これじゃあ、ただのスイッチの代わりにもならないよ。セキュリティも使えなさも最悪だね。" userName="lukeschlather" createdAt="2025/07/09 16:45:47" color="#ff5c5c">}}




{{<matomeQuote body="デバイスの寿命を10年と考えると、プロビジョニング用ハードウェアのせいで全寿命のうち最低1ヶ月はダウンタイムになるだろうって意見があったけど、もっと詳しく教えてよ。なんでデバイスは何年もオフラインになるの？" userName="bevr1337" createdAt="2025/07/09 16:59:51" color="">}}




{{<matomeQuote body="Bluetooth接続がおかしくなって再プロビジョニングが必要になるけど、デバイスがある部屋が担当者の管轄外だと、誰も直せなくて放置されるんだ。物理スイッチより簡単にするはずが、結局は手間が増えてるのが現実だね。一人で使う場合でも、再設定が面倒で物理スイッチに戻っちゃうなんてこともありそう。" userName="lukeschlather" createdAt="2025/07/09 20:29:50" color="#785bff">}}




{{<matomeQuote body="前の例は正しいけど、俺の経験ではQRコードのスキャンが全然無理な状況もたくさんあるんだ。だから、めっちゃオートメーション化された家を持ってる俺としては、このMatterの進展はマジで大歓迎だよ。" userName="luckydata" createdAt="2025/07/09 17:41:51" color="#ff5c5c">}}




{{<matomeQuote body="ってことはさ、10年くらいしたらCSAとか他の会社が「今度こそマジで正しい規格を作るぞ！」って言って、みんなMatterデバイスから次の規格に乗り換えなきゃいけなくなるってことかな？" userName="mns" createdAt="2025/07/10 08:05:37" color="">}}




{{<matomeQuote body="「スマホを使わせてくれる」んじゃなくて、「スマホを使うことが必須」なんだよな。一般ユーザーには流れを合理化できていいけど、パワーユーザーとしては何か抜け道が欲しいな。まぁ、細かい不満だけど、セットアップ自体はすごく簡単になったのは確かだね。" userName="AceJohnny2" createdAt="2025/07/09 19:32:05" color="#38d3d3">}}




{{<matomeQuote body="ThreadはIPv6（Ethernet、Wi-Fiとか）でメッシュを透明に拡張できるみたいだけど、ZigbeeやZ-Waveのメッシュを拡張するのは超大変なんだよね。俺のZ-Waveネットワークはコントローラが2つあって最悪だよ。メンテがマジでウザいし、ノードとの接続が一時的に切れると回復も遅い。Threadはまだ試してないけど、ローカルネットワークに繋がったベースステーションがいくつかあって、デバイスが自動でローミングしてくれるって概念は最高！でも、Apple Home、Google Home、Home AssistantのThreadネットワークがそれぞれ互換性ないっぽいのが不満だな。" userName="amluto" createdAt="2025/07/09 12:54:39" color="#ff5c5c">}}




{{<matomeQuote body="うん、それはThread v1.4が解決しようとしてる問題だよ。AppleはすでにThread border routerをv1.4にアップデートしたし、Google、Amazon、Samsungもborder routerをアップデートするって約束してるよ。" userName="umbra07" createdAt="2025/07/09 16:49:41" color="#785bff">}}




{{<matomeQuote body="そうだね、これは本当に問題だ。でも、Z-WaveやZigbeeの情報をMQTTサーバーに流して、Home AssistantとMQTTで全部繋げれば、別々のネットワークとして動かせるよ。Zigbee to Ethernetアダプター（Sonoffのがいいとか、Raspberry Piとかね）かZ-wave to Ethernetアダプター（これもRaspberry Piとか）が必要だけど。ちょっと面倒だけど、できるよ。俺はHome Assistant、MQTTサーバー、Sonoff ZigbeeブリッジとTasmotaで、近くに複数のZigbeeネットワークを動かしてるよ（家と離れのガレージとかね）。" userName="mox1" createdAt="2025/07/09 14:27:41" color="#38d3d3">}}




{{<matomeQuote body="Apple HomeのThreadネットワークとGoogle HomeのThreadネットワークとHome AssistantのThreadネットワークが互換性ないって、どういうこと？Matter標準では、デバイスは最低5つ以上の「ファブリック」を同時にサポートするはずだけど、実際どこに問題があるの？" userName="izacus" createdAt="2025/07/09 13:43:35" color="#38d3d3">}}




{{<matomeQuote body="問題ないのかな？例えば、ThreadデバイスをApple TVに“ペアリング”して、Apple TVとIKEA Dirigera hubを介して、DirigeraからApple TVへIPv6で通信できるの？" userName="amluto" createdAt="2025/07/09 15:42:59" color="">}}




{{<matomeQuote body="ThreadはZigbeeより低遅延で低消費電力らしいよ。" userName="AndrewDucker" createdAt="2025/07/09 11:10:59" color="">}}




{{<matomeQuote body="Threadが802.15.4上でIPv6スタック使うのに、Zigbeeはシンプルなスタックでどうして低遅延・低消費電力に？メーカーが開発「簡単」だからIPスタックを好むだけじゃないかな？" userName="nick__m" createdAt="2025/07/09 11:25:59" color="#ff33a1">}}




{{<matomeQuote body="良い質問だね！研究結果を貼っとくよ。ここのトップグラフを見てみて: https://www.reddit.com/r/homeautomation/comments/nxmehn/clea..." userName="AndrewDucker" createdAt="2025/07/09 11:28:49" color="#ff5c5c">}}




{{<matomeQuote body="遅延や速度は信じるけど、IPv6スタックの方がZigbeeより低消費電力ってのは疑わしいな。あと、「インターネットみたいに安全」ってThreadの利点には笑った。でも、答えてくれてありがとう！" userName="nick__m" createdAt="2025/07/09 11:47:33" color="#45d325">}}




{{<matomeQuote body="測ってないけど、組み込み機器では無線送信が一番電力使うんだ。Thread+Matterはコマンドあたりのパケット数が少ないから（低遅延の理由）、実はバッテリーを節約できる可能性もあるよ。" userName="dgacmu" createdAt="2025/07/09 12:20:06" color="#38d3d3">}}




{{<matomeQuote body="でもそれって実用面でメリットあるの？俺Matter (Wi-Fi) デバイス開発したけど、スタックがめちゃくちゃチャッティだよ。" userName="0x000xca0xfe" createdAt="2025/07/09 11:48:30" color="">}}




{{<matomeQuote body="(余談だけど) リンクの「インターネットみたいに安全」って表現、まじで笑った！アハハハ！彼らが言いたいのは、独自の変なIPスタック作るんじゃなくて、IPv6の実績ある技術を使うってことだろうけど、表現が面白すぎたわ。" userName="AceJohnny2" createdAt="2025/07/09 20:20:24" color="#45d325">}}




{{<matomeQuote body="IPスタックは開発しやすいし、ツールやライブラリも豊富だよ。スマートホームのコントローラーもIP使うことが多いしね。Zigbeeがよりシンプルなスタックを使ってるわけじゃないんだ。Threadが使う6LoWPANはZigbeeより効率的で、パケットも小さいしルーティングも良い。ThreadはZigbeeを改善するために作られたから、これって普通のことなんだよ。" userName="RandomThoughts3" createdAt="2025/07/09 12:28:37" color="#ff33a1">}}




{{<matomeQuote body="Threadはボーダールーターを介してスマホと通信できるIPv6ベースだよ。今のハブが必要なシステムと違って、ボーダールーターはネットワーク機能だけだからシンプル。MatterはZigbeeのホームオートメーション部分で、複数の会社が関わって肥大化してる感じもするけど、標準規格だからスマホからWi-Fiデバイスを好きなアプリで操作できるってことだよ。" userName="ianburrell" createdAt="2025/07/10 00:51:39" color="#38d3d3">}}




{{<matomeQuote body="これがMatter/Threadがもっと普及するきっかけになってほしいな。今GoogleとAmazonが「Generic Switches」をサポートしてないから、スマート電球をArre Smart Buttonで操作できなくて困ってるんだ。IKEAが対応してくれたら嬉しいんだけどな。" userName="AndrewDucker" createdAt="2025/07/09 11:17:07" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
