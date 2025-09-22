+++
date = '2025-09-15T00:00:00'
months = '2025/09'
draft = false
title = '愛犬見守りのはずが！TP-Link製スマートデバイスの内部通信をハッキングした一部始終'
tags = ["IoT", "セキュリティ", "リバースエンジニアリング", "TP-Link", "ネットワーク"]
featureimage = 'thumbnails/purple4.jpg'
+++

> 愛犬見守りのはずが！TP-Link製スマートデバイスの内部通信をハッキングした一部始終

引用元：[https://news.ycombinator.com/item?id=45251690](https://news.ycombinator.com/item?id=45251690)




{{<matomeQuote body="おお、すげー！これ、俺のFridaスクリプト使ってくれてるんだね！このURLのだよ：https://github.com/httptoolkit/frida-interception-and-unpinn....プロジェクト、ナイス！スクリプトがちゃんと使われてて嬉しいな。もし何か追加とか調整が必要だったら、ぜひ教えてほしいね。" userName="pimterry" createdAt="2025/09/15 21:35:24" color="#ff5c5c">}}




{{<matomeQuote body="Tim、ありがとう！スクリプトは期待通りにすごくよく動いたよ。最終的に使ったコマンドは、リポジトリの例の一部を抜き出しただけさ。<br>frida -U ＼    -l ./config.js ＼<br>    -l ./android/android-proxy-override.js ＼<br>    -l ./android/android-system-certificate-injection.js ＼<br>    -l ./android/android-certificate-unpinning.js ＼<br>-f com.tplink.iot" userName="kennedn" createdAt="2025/09/16 11:09:21" color="#ff5c5c">}}




{{<matomeQuote body="HTTP Toolkitはこれまで使ったソフトの中で最高だよ。mitmproxy、Proxyman、Charles Proxyも使ったけど、HTTP Toolkitが一番で、しかもオープンソースなんだ。" userName="cute_boi" createdAt="2025/09/15 23:19:08" color="">}}




{{<matomeQuote body="HTTP Toolkitは素晴らしいね、Tim、よくやった！" userName="stavros" createdAt="2025/09/15 22:21:55" color="">}}




{{<matomeQuote body="追記：Frigateで双方向音声を使いたかったら、普通のrtsp://じゃなくてtapo://のgo2rtc設定をメインストリームで使う必要があるよ。TP-Linkはめんどくさがりで、独自のAPIでしか双方向音声を提供してないからね。残念なことに、これを使うとONVIFが使えないんだ。オープンツールでカメラをパン・チルトできるのはONVIFしかないみたいだから、双方向音声もカメラ操作もしたいなら、tapo://ストリームを停止してONVIFクライアントを起動して回転させ、ONVIFクライアントをオフにしてまたtapo://でストリーミングを始める必要があるんだ。" userName="bayesianbot" createdAt="2025/09/16 01:28:57" color="#785bff">}}




{{<matomeQuote body="IoTのセキュリティは全般的にひどいけど、一般のルーターが実質的に監査されてないブラックボックスで、全てのネットワークトラフィックを処理してるってのは本当に心配だね。ほとんどの人は、自分のルーターのファームウェアが何年も更新されてなくて、既知のCVEが動いてる可能性すら知らないんだ。ネットワークハードウェアのサプライチェーンの信頼モデルは崩壊してるよ。" userName="selinkocalar" createdAt="2025/09/15 22:43:42" color="#38d3d3">}}




{{<matomeQuote body="解決策はpfSenseだよ。" userName="teaearlgraycold" createdAt="2025/09/15 22:48:13" color="">}}




{{<matomeQuote body="君と目的地の間には、監査できないルーターが無数にあるんだから、どうしようもないよ。エンドデバイスはとっくにルーターが侵害されてる前提で、全てを検証して通信中に暗号化してるんだ。だから、君のルーターがDDoS攻撃に参加したりBitcoinをマイニングしたりしない限り、セキュリティがどうであろうと、そこまで問題じゃないよ。" userName="Gigachad" createdAt="2025/09/16 00:54:43" color="">}}




{{<matomeQuote body="市販品は確かにそうだけど、UbiquitiやMikrotikみたいな“プロシューマーグレード”のハードウェアなら、ちゃんとタイムリーなアップデートがきて、しっかり作られたファームウェアが手に入るよ。" userName="briHass" createdAt="2025/09/16 00:09:46" color="">}}




{{<matomeQuote body="Actually, pfsense kind of has a shitty reputation in the FOSS community and opnSense is preferred.But I don’t like the limitations of BSD systems in terms of hardware compatibility and performance, so I build my router using a plain Linux distro (Debian)." userName="drnick1" createdAt="2025/09/16 00:20:37" color="#45d325">}}




{{<matomeQuote body="Most people only care about how strong the signal is when buying a router, but almost no one checks if the firmware is outdated, or bothers to change the default password or disable remote access. And manufacturers rarely remind you either, so over time it just becomes a hidden risk." userName="ByteDrifter" createdAt="2025/09/16 05:11:55" color="#785bff">}}




{{<matomeQuote body="Many IoT devices (or Windows when the LAN network location is set to “Private”) expose a wider surface area to local network addresses. Having a competent firewall on your residential router is still useful, especially for those that have no idea how to configure their endpoints securely.Comparing a residential router to a network operator’s router is spurious: those routers don’t perform any sort of filtering for the public internet traffic flowing through them." userName="johncolanduoni" createdAt="2025/09/16 03:35:29" color="#ff5c5c">}}




{{<matomeQuote body="That’s the first I’ve heard of pfsense having a bad reputation, can you explain? (I haven’t used it, genuinely want to know)" userName="the_biot" createdAt="2025/09/16 10:31:47" color="">}}




{{<matomeQuote body="Ubiquiti is awful, it’s a cloud-centric ecosystem. The best ”prosumer-grade” stuff is probably OpenWrt. If you need more power, opnSense or a plain Linux distro on an x86 machine." userName="drnick1" createdAt="2025/09/16 00:17:21" color="#785bff">}}




{{<matomeQuote body="Or openWRT.The bsd based distributions sure are powerful, but with the power/heat budget to match." userName="baby_souffle" createdAt="2025/09/15 22:55:14" color="#785bff">}}




{{<matomeQuote body="A lot of them violate the GPL and BSD licenses too." userName="pabs3" createdAt="2025/09/16 05:25:05" color="#ff5c5c">}}




{{<matomeQuote body="Is there any residential router that exposes internal endpoints be default? I’ve yet to come across one that does not have a deny-any policy on it’s WAN interface and has incoming destination NATs setup up.What use is reducing the attack surface of a device which only ever initiates connections?Edit: also there are network operators that block customer traffic on certain ports liike NetBIOS, SMB or SMTP to name a few." userName="dracotomes" createdAt="2025/09/16 09:08:16" color="#ff5c5c">}}




{{<matomeQuote body="Most people don’t buy routers, they get them from the ISP and never think about them again unless the wifi goes out, in which case they unplug and plug back in." userName="t-3" createdAt="2025/09/16 07:42:27" color="#45d325">}}




{{<matomeQuote body="https://arstechnica.com/gadgets/2021/03/buffer-overruns-lice..." userName="Eisenstein" createdAt="2025/09/16 11:59:51" color="">}}




{{<matomeQuote body="OpenWRTは好きなんだ。でも、アップデートがいつもリスキーで面倒なんだよね。" userName="bmurphy1976" createdAt="2025/09/15 23:32:58" color="">}}




{{<matomeQuote body="ほとんどの人はISPから渡されたルーターを使ってて、彼らにとってルーターはブラックボックスだよ。WiFiに繋ぐ時に、みんなISPが選んだルーター名とパスワードを教えてくれるのにはいつも驚くね。俺はISPにそんなにコントロールされたくないんだ。" userName="cortesoft" createdAt="2025/09/16 00:12:57" color="#785bff">}}




{{<matomeQuote body="IOTの“S”は“Security”の意味だよ！" userName="java-man" createdAt="2025/09/15 23:24:36" color="">}}




{{<matomeQuote body="カリフォルニア大学のRegentsを承認しないことで、BSDライセンスに違反してるんじゃないの？" userName="fsckboy" createdAt="2025/09/17 19:54:02" color="#ff5733">}}




{{<matomeQuote body="俺のIoT Wi-Fiのパスワードは“TheSInIoT”だよ ;)" userName="BLKNSLVR" createdAt="2025/09/16 00:22:15" color="">}}




{{<matomeQuote body="IoTセキュリティはひどいよね。IoTはセキュリティの再考が必要だと思う。デバイスにはただ繋がってほしいだけだし、オンライン必須の要件を回避するエクスプロイトを使うことも辞さないよ。もちろん、クラウド連携が必要な人もいる。<br>だから、デバイスは最初の起動時にモードを選ばせて、それを固定すべき。クラウドMFAが必要ならそれもアリだし、Pythonで電球を点滅させたいなら、それが永続的な設定になるべきだね。" userName="protocolture" createdAt="2025/09/16 03:05:22" color="#38d3d3">}}




{{<matomeQuote body="OpenWRTはお金を払って時間を買ってるようなものだね。自分でカスタムルーターを設定したい人にはいいけど、ほとんどのプロシューマーにはUbiquitiの方が良い体験を提供してくれるよ。Ubiquitiはローカル管理をサポートしてるし、Ubiquiti Cloudのデータ漏洩は、不満を持った元従業員が会社を脅迫しようと広めたデマだったってことも注目すべきだね。" userName="omcnoe" createdAt="2025/09/16 10:04:51" color="#785bff">}}




{{<matomeQuote body="著作権表示とBSDライセンスを配布してないってことだよ。" userName="pabs3" createdAt="2025/09/18 02:35:23" color="#785bff">}}




{{<matomeQuote body="それは完全に正確じゃないよ。Ubiquitiデバイスにはローカル管理オプションがあって、ゲートウェイを除けばインターネットには繋がらないんだ。自分のVPN経由でリモートで全体を管理できるし、実際かなり便利だよ。" userName="gradstudent" createdAt="2025/09/16 01:11:23" color="#38d3d3">}}




{{<matomeQuote body="平均的な消費者がISPルーターで驚かなくてもわかるけど、HN読者なら違うよね。僕はISPのデバイスは信用しないよ。WiFiも無効にして、ブリッジとして使ってる。自分の”インナーサークル”には絶対入れないし、25年間ずっとそうだよ。" userName="tharkun__" createdAt="2025/09/16 03:09:29" color="#ff33a1">}}




{{<matomeQuote body="個人的には、ISP提供（や大手量販店）のルーターは最初から侵害されてるって考えてるよ。自分のルーターを交換するか、それが無理ならその下流に繋いで、全部自分のルーターに接続してるんだ。それにTailscaleや他のDNSサーバーも使ってるよ。" userName="lazide" createdAt="2025/09/16 13:14:26" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Fritzboxとかは、デフォルトで自動更新するブランドだよ。ISPも顧客に送ったデバイスを管理してて、”フリート管理”の一環としてアップデートをインストールすることがよくあるんだ。" userName="lo0dot0" createdAt="2025/09/16 14:03:06" color="">}}




{{<matomeQuote body="ルーターはローカルネットワークの”王国の鍵”なんだよね。ローカルデバイス全部を敵視するべきなんだけど（それは妥当なことだけど、ほとんどの人はやらないよね）、ルーターをしっかり守るのは超重要なことだよ。" userName="TomaszZielinski" createdAt="2025/09/16 13:32:30" color="#ff5c5c">}}




{{<matomeQuote body="多くの人がNetwork PNPとかを喜んで使ってて、ルーターの公開側にポートを開放してるんだよな。" userName="lazide" createdAt="2025/09/16 13:15:12" color="">}}




{{<matomeQuote body="MikroTikユーザーとして言うけど、ネットワーキングの知識がないなら手を出さない方がいいよ。慣れるのに時間はかかるけど、使いこなせば難しくないんだ。でも、何をするにも20〜40個のオプションがあるから、最初は戸惑うかもね。" userName="ThatMedicIsASpy" createdAt="2025/09/16 11:02:02" color="">}}




{{<matomeQuote body="attended sysupgrade をチェックしてみてよ。" userName="fignews" createdAt="2025/09/16 00:11:39" color="">}}




{{<matomeQuote body="このブログの書き方、すごく良い感じだね。最近はLLMで生成された記事が多くて読みにくいけど、これは技術的でいて、しかも気楽なバランスが取れてて嬉しい驚きだよ。（カバー画像がAI生成なのは内容とは関係ないってわかるけどね。）" userName="bstsb" createdAt="2025/09/15 19:12:14" color="">}}




{{<matomeQuote body="僕はuBlock Originで大きなメディアファイルをデフォルトでブロックしてて、不要なリソース消費を避けてるんだ。カバー画像はたいてい不要だからブロックしてるよ。今はみんながAI生成にエネルギーを使ってるのが残念だね。" userName="jraph" createdAt="2025/09/15 20:53:18" color="">}}




{{<matomeQuote body="どういう意味？ざっと計算してみたんだけど、手作業で”使い捨て”のバナー画像を15分で作るのと、Stable DiffusionでAI生成するのとだと、人間や電気のエネルギーはAI生成の方が少なく見えるんだけど、一体何が問題なの？" userName="concats" createdAt="2025/09/16 08:58:57" color="#ff5733">}}




{{<matomeQuote body="人間のエネルギーは計算に入れるべきだよ。モデル訓練のコストやリバウンド効果、ボットクロールの補助金とかも無視できない。この議論はもううんざりだね。個人的には、無意味なカバー画像はやめるべきだと思う。AI生成じゃなくても、ストック画像でも同じことが言えるよ。" userName="jraph" createdAt="2025/09/16 10:35:27" color="">}}




{{<matomeQuote body="それはどの規模で見るかによるね。個人レベルならそうかもだけど、車と同じで効率が上がっても全体消費は増え続けるんだ。できることが増えれば増えるほど、僕たちはそれをやっちゃう。CPUパワーが増えればJavaScriptが重いウェブサイトが増えるし、画像が生成できるほどもっとたくさん生成するようになる。" userName="marci" createdAt="2025/09/16 17:18:03" color="#45d325">}}




{{<matomeQuote body="Photoshopを15分使っても、君のCPUは100Wを数秒以上使うことはないよ。" userName="Liquid_Fire" createdAt="2025/09/16 15:48:52" color="">}}




{{<matomeQuote body="関連情報だよ。<br>Tapo C200 research project https://drmnsamoliu.github.io/ (https://news.ycombinator.com/item?id=37813013)<br>PyTapo: Python library for communication with Tapo Cameras https://github.com/JurajNyiri/pytapo (https://news.ycombinator.com/item?id=41267062)" userName="gnabgib" createdAt="2025/09/15 16:33:25" color="#785bff">}}




{{<matomeQuote body="来年、署名要件が導入された後も、AndroidアプリでFridaやmitmproxyを使う技ってまだ使えるのかな？" userName="201984" createdAt="2025/09/15 18:01:49" color="">}}




{{<matomeQuote body="全体的には可能だけど、アテステーションが必要なアプリだとかなり難しくなるよ。PixelみたいにOEMアンロックとルート化が許されてるスマホならできるけど、Googleのアテステーションには失敗する。アプリを分解してFridaを注入し、自分の開発者アカウントでサイドロードすることもできるけど、これもアテステーションには通らないし、アプリレベルのアンチタンパリングコードにも弱いんだ。" userName="bri3d" createdAt="2025/09/15 18:29:44" color="#785bff">}}




{{<matomeQuote body="だから、銀行アプリみたいに実用的なニーズがある人にとっては無理だね。この時点でAndroidはもはや意味のあるオープンソースプラットフォームじゃないし、何年も前からそうだよ。正直になっただけまだマシだけどね。" userName="josteink" createdAt="2025/09/15 20:12:37" color="#ff5733">}}




{{<matomeQuote body="アプリのリバースエンジニアリングと銀行アプリを同じデバイスでやろうとするのは、かなり馬鹿げてると思うな。GrapheneOSだってユーザーのセキュリティとプライバシーを重視するから、リバースエンジニアリングツールとしては使わせないよ。サードパーティアプリストアの制限は反競争的だけど、それは『Fridaを銀行で使うスマホに入れたい』って話とは別だ。デバイスのアテステーションはリバースエンジニアリングに敵対的だけど、GoogleはPixelのOEMアンロックや開発者コンソールでの自己署名APKを許可してるから、来年のAndroidの変更でもそんなに変わらないだろうね。" userName="bri3d" createdAt="2025/09/15 20:47:17" color="#ff5733">}}




{{<matomeQuote body="OEMアンロックや自己署名APKが許可されても、それが『本当にデバイスを使っている』って言えるのかな？スマホとして機能しなくなるなら、それは意味のある使い方じゃないよ。まるで、車をサードパーティの整備士に直してもらったら、公道走行が違法になるようなものさ。" userName="franga2000" createdAt="2025/09/15 21:48:16" color="#ff33a1">}}




{{<matomeQuote body="なんでLinuxでroot権限で銀行のウェブサイトを使うのと、Androidアプリを使うのとで違いがあるのか、僕には分からないよ。『君たちを保護するため』っていう理屈が全く意味不明だね。" userName="3abiton" createdAt="2025/09/15 21:27:59" color="#38d3d3">}}




{{<matomeQuote body="銀行がモバイルアプリを厳しくするのは、不正対策のためだね。利用の8割、不正の9割がモバイルデバイスからだから、アプリをロックダウンすれば詐欺を大幅に減らせるんだ。それに、P2P決済みたいなデスクトップにない機能もモバイルにあるしね。Androidでのデバイス乗っ取り詐欺も横行してるし、これはみんなにとって良いことだよ。" userName="bri3d" createdAt="2025/09/15 21:44:43" color="#785bff">}}




{{<matomeQuote body="なんでロックされたモバイルで詐欺が多いのに、オープンなWindows/Linux PCでは少ないんだろう？もしモバイルで9割の詐欺が起きてるなら、ロックダウンしても意味ないってことじゃない？P2P決済みたいな特別な機能だけモバイルで制限して、他は普通に使えたらいいのにね。昔、Chaseのアプリは脱獄iOSだと小切手預金だけできなかったけど、他の機能は使えたよ。" userName="Wowfunhappy" createdAt="2025/09/15 21:47:39" color="">}}




{{<matomeQuote body="モバイルバンキングの利用率は90%以上で、詐欺もそこに集中してるんだ。理想はGrapheneOSでもアプリ機能が8割使えることだけど、0.001%以下のユーザーのために開発費と詐欺リスクを負うのは現実的じゃないってのはわかるよ。誰もやらないからって陰謀とかじゃなくて、単に採算が合わないってことだね。" userName="bri3d" createdAt="2025/09/15 22:26:58" color="#45d325">}}




{{<matomeQuote body="詐欺師が詐欺をするときは、一番やりやすい場所を選ぶはずだよね？だから、各プラットフォームがどれだけ普及してるかは関係ないんじゃないかな。" userName="Wowfunhappy" createdAt="2025/09/15 23:32:37" color="">}}




{{<matomeQuote body="詐欺はたいていまとめてやるんだ。全体の儲けはターゲットの価値と数で決まるけど、労力はターゲット数に比例しないことが多い。攻撃しやすくても数が少ないより、ちょっと難しくてもターゲットが多い方が（労力が事前に一度で済むから）ずっと「おいしい」ってわけさ。" userName="dsymonds" createdAt="2025/09/15 23:56:10" color="">}}




{{<matomeQuote body="大抵の場合、ウェブアプリからは小切手は預金できないよ。" userName="machinate" createdAt="2025/09/15 21:37:25" color="">}}




{{<matomeQuote body="デバイス認証がここでは何をしてるのか謎だね。偽の小切手なんていくらでも作って写真撮れるし、デッドピクセルみたいなデバイス指紋も偽造できるでしょ。OSを認証したって、カメラ自体や何が写ってるかなんて認証できないよ。「落書きされたナプキンがお金」っていう話の弱点は、写真を撮ってるデバイスがroot化されてるかどうかじゃないと思うけどな。" userName="jrockway" createdAt="2025/09/16 00:50:14" color="#ff33a1">}}




{{<matomeQuote body="GrapheneOSは推奨しないけど、やりたいなら止めないよ。ブートローダーをアンロックしたままroot化したり、root対応のカスタムイメージを作ったりできる。やり方のガイドもたくさんあるしね。" userName="KetoManx64" createdAt="2025/09/15 20:56:34" color="">}}




{{<matomeQuote body="ブートローダーのロックは、完全な検証済みブートのために大事だよ。詳しくはGrapheneOSのインストールガイドを見てみてね。<br>https://grapheneos.org/install/cli#locking-the-bootloader" userName="easyKL" createdAt="2025/09/15 23:14:12" color="#38d3d3">}}




{{<matomeQuote body="「ブートローダーをアンロックしたままroot化」って話は、GoogleじゃなくてGrapheneOSのことだよ。" userName="bri3d" createdAt="2025/09/15 21:00:22" color="">}}




{{<matomeQuote body="GrapheneOSでもMagiskは使えるんだよ。インストールガイドに従って最後のステップをスキップしてMagiskをフラッシュすればいいだけ。アップデートはちょっと手間だけど、やろうと思えばできるよ。" userName="KetoManx64" createdAt="2025/09/18 01:13:41" color="#ff33a1">}}




{{<matomeQuote body="オープンソースであることと、ハッキングできるかどうかは別問題なんだ。メーカーキーで署名が必要なファームウェアはオープンソースでもあり得るし、コードが公開されていても、ユーザーが改造版をデバイスにインストールできるとは限らないんだよ。FIDOキーとかBitcoinウォレットなんかがこれに当たるね。" userName="miki123211" createdAt="2025/09/15 20:56:43" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="オープンソースとハック可能性が無関係ってのは、ライセンスによるんだよ。例えばLGPLだと、エンドユーザーに自分の作った修正版ライブラリとリンクする方法を提供しなきゃいけないってハッキリ書いてあるんだから。" userName="jcalvinowens" createdAt="2025/09/16 07:29:04" color="#ff33a1">}}




{{<matomeQuote body="Androidがもはやオープンソースじゃないってのは間違いだよ。Google Androidは元々オープンソースじゃなかったし、AOSPは今もオープンソースのままだからね。Google AndroidとAOSPをごっちゃにするのはやめようぜ。" userName="akimbostrawman" createdAt="2025/09/16 06:38:47" color="#38d3d3">}}




{{<matomeQuote body="俺はiOSだけど、Androidだったらモバイルバンキングを諦めてでもroot権限が欲しいな。なんでこれがそんなに大ごとになるのか全然わからんわ。例えばSlackがアテステーションを要求してきたら話は別だけど、仕事で必要だからね。" userName="Wowfunhappy" createdAt="2025/09/15 21:26:57" color="">}}




{{<matomeQuote body="それは組織次第だよ。ここで確認して→ https://slack.com/help/articles/360042097113-Block-jailbroke..." userName="lights0123" createdAt="2025/09/15 21:42:36" color="#ff33a1">}}




{{<matomeQuote body="リバースエンジニアリングはルート化デバイスやエミュレータでやることが多いから、Googleの変更に直接は影響されないと思うよ。Fridaとかで非ルートデバイスをいじるのは難しいけど、開発者モードがあればまだいけるんじゃないかな。一番の問題はデバイスアテステーションの普及だね。これがもっと広まったら、ルート化デバイスは使えなくなるかもね。" userName="pimterry" createdAt="2025/09/15 21:47:33" color="#45d325">}}




{{<matomeQuote body="今でも既にかなり難しいよ。Fridaを使うにはルート化が必要だけど、それができないモデルが増えてるし、Play Integrity以外にも優れたルート検出SDKはいくらでもあるからね。" userName="mschuster91" createdAt="2025/09/15 20:07:57" color="#ff5733">}}




{{<matomeQuote body="ルート化できる物理デバイスはまだたくさんあるし、Googleもルートアクセス可能なエミュレータイメージを出してるから、ここはまだ大丈夫だよ。ルート検出のほとんどはFridaなんかで突破できるしね。本当に大きな問題はPlay Integrityとアテステーションだ。これが反競争的行為として規制されることを期待してるよ。" userName="pimterry" createdAt="2025/09/15 21:56:14" color="#ff5c5c">}}




{{<matomeQuote body="そうは言っても、SamsungなんかはKNOXが飛ぶし、エミュレータで動かないアプリも多いんだ。ルート検出は本当にいたちごっこでうんざりだよ。リモート検証可能なハードウェアアテステーションもSDKが出てくれば簡単に普及するだろうし、反トラスト法で規制なんて、アメリカじゃ3年以内は無理だし、EUでも5～10年かかるうえ、銀行とかゲーム会社のロビー活動で阻止されるだろうね。" userName="mschuster91" createdAt="2025/09/15 23:51:08" color="#38d3d3">}}




{{<matomeQuote body="僕が知る限り、Fridaはroot化なしで使えるよ。Objectionを使えばね。<br>https://github.com/sensepost/objection" userName="crowfunder" createdAt="2025/09/15 20:39:46" color="#ff5733">}}




{{<matomeQuote body="Frida gadgetを埋め込んでiOSやAndroidアプリをパッチできるってのがポイント。でも来年には変わるかも。前はDeveloperモードのAndroidにFrida gadget入りAPKを入れられたけど、今後はAndroid認証を外す（root化/アンロック）か、自分で署名して入れる必要があるって。iOSみたいなやり方になるんだね。" userName="bri3d" createdAt="2025/09/15 20:50:41" color="#ff5c5c">}}




{{<matomeQuote body="うわ、マジで恐ろしいな。ほとんどのユーザーにとって、もうAPK改造の時代は終わりってことか。" userName="crowfunder" createdAt="2025/09/15 21:09:38" color="">}}




{{<matomeQuote body="まだだよ。確か、最初はほんの数カ国しか影響を受けないはず。" userName="sureglymop" createdAt="2025/09/15 22:04:29" color="">}}




{{<matomeQuote body="ちょっと関連する話なんだけど、TP-Linkファームウェアの復号化について。<br>C210 V2クラウドカメラのbootloadersに関する記事だよ。<br>https://watchfulip.github.io/28-12-24/tp-link_c210_v2.html?u..." userName="tripdout" createdAt="2025/09/15 17:05:18" color="#ff5c5c">}}




{{<matomeQuote body="彼らはデフォルトパスワードを手に入れるためにAPKを解析したけど、ググってみたら2022年のCVEに載ってたよ。<br>https://nvd.nist.gov/vuln/detail/CVE-2022-37255" userName="fnord77" createdAt="2025/09/15 20:19:52" color="#38d3d3">}}




{{<matomeQuote body="これで、ハードコードされた管理者パスワードを見つけるのは大したことないって段階になったのか。" userName="micah94" createdAt="2025/09/15 17:17:59" color="">}}




{{<matomeQuote body="これはハードコードされたデフォルトパスワードであって、永続的なバックドアじゃないよ。投稿を正しく理解していれば、ユーザーは初期設定の流れでこれを変更するはず。多くのアプリがデフォルトパスワードを持っていて、ユーザーが変更するようになっているのと一緒さ。" userName="mtlynch" createdAt="2025/09/15 18:08:28" color="#45d325">}}




{{<matomeQuote body="デバイスにはMCUシリアル番号やEEPROMの秘密情報が理想。アプリは『デバイスのコード入力』や『QRコードスキャン』で相互認証すべきで、ハードコードパスワードより安全だね。これはクラウドなしでオフラインでも可能。アプリはデバイスの秘密情報でローカル認証し、その後ユーザーがRTSPパスワードを設定できるようにすればいい。未設定デバイスのネットワーク攻撃脆弱性は減るよ。これは最悪ではないけど良くもない。カメラを設定し忘れると、接続から設定までの間は格好の標的だからね。" userName="bri3d" createdAt="2025/09/15 18:20:55" color="#45d325">}}




{{<matomeQuote body="設定後に正常なフローで更新されるなら、まあいいかな。ここ5年でIoT／スマートホーム製品をできるだけたくさん構築してきて確信したのは、ほとんどのベンダーは単体だと『一発芸』程度の価値しかないゴミを売ってるってことだね。スマートホーム全体を構築するのは、全部同じベンダーからじゃないとイライラするし、かといって、すべてのニーズにうまく応えるベンダーなんていない。<br>俺のスマホにはEcobee、Lutron、Hue、カメラ4社[1]、Meross、Smart Lifeのアプリが入ってる。たぶん他にもいくつか忘れてるやつがあるな。LutronとHueだけは、ハブやHomeKitでかなり包括的な制御ができるから、アプリを使う必要がなくて合理的だ。<br>MatterとThreadが新しい標準として決まってから何年も経つのに、市場には互換性のあるデバイスが溢れるどころか、安価なWi-Fiデバイスがひしめき合っていて、それぞれがクラウド依存で、管理も日常的な使用も、主な目的がクラウドサービスをアップセルすることにある、クソみたいなモバイルアプリを通じてしかできない。<br>[1] カメラが4つあるのは、安いのを衝動買いした俺のせいだと認めるよ。でも、あるベンダーが最高のドアホンカメラを作って、別のベンダーがもっと優れたPTZ屋内カメラを作るってこともよくあるから、多くの人には正当な理由があるだろうね。" userName="xp84" createdAt="2025/09/15 17:30:42" color="#45d325">}}




{{<matomeQuote body="Home Assistantは、完全にローカルでプライベートなホームオートメーションシステムを構築するのに、ますます理にかなってるよね。" userName="hleszek" createdAt="2025/09/15 17:38:21" color="#ff5c5c">}}




{{<matomeQuote body="それは良いアイデアだけど、小規模ベンダーには全然現実的じゃないと思うな。昔、ホームネットワーキングデバイスを売ってたんだけど、君が説明してるようなことはしないよ。もしラベルが間違ったパスワードを計算したり、メーカーがどのデバイスにどのラベルをつけるか間違ったりしたら、顧客の手元に届いてクレームが入るまで何ヶ月も気づかない。そうなったら、出荷したデバイスを全部回収するために、製造・出荷ラインを全部巻き戻さなきゃいけない。<br>そんな手間をかけて、どんな攻撃から守るっていうの？ユーザーのネットワークに悪意のあるソフトウェアがあって、ユーザーが設定する前にデバイスのパスワードを変えちゃうような攻撃？その場合、ユーザーはフィードにアクセスできないから、ただカメラを使わないだけになるよね。<br>[0] https://mtlynch.io/i-sold-tinypilot/" userName="mtlynch" createdAt="2025/09/15 18:59:29" color="#38d3d3">}}




{{<matomeQuote body="例えばAT&Tのルーターは、デバイスにWi-FiネットワークとWi-Fiパスワードが印刷されて出荷されるよね。でも、それだと物理アクセスできる人なら誰でも簡単にデバイスに入り込めるってことにもなる。複雑なパスワードは、『デフォルトの管理者パスワードじゃないから大丈夫』って人々が思い込む、セキュリティの幻想を一つ増やしてるだけなんだ。根本的な問題は、『多くの人がパスワードとオンボーディングのフローが苦手』ってことみたいだから、出荷時のパスワードをどう変えても、だいたい同じような問題になっちゃうんだよね。" userName="yannyu" createdAt="2025/09/15 18:27:36" color="#ff5733">}}




{{<matomeQuote body="大好きだよ！でも俺のセットアップには、いっぱい手強い部分があるんだ。『標準互換』なHAへの接続方法がカメラ制御を欠いていたり、Chamberlainみたいなひどいベンダーが嫌がらせでHAサポートを潰したり、結局GoogleかAmazonを音声アシスタントに使わなきゃいけなかったりね。<br>俺の一番の願いは、HAネイティブの音声アシスタントスピーカーを作ってくれる人がいること！$30のGoogle Home Miniみたいな物理的な品質で、HAに直接統合されて、現代のLLMを使ってユーザーの意図を判断してくれるやつなら、一台$100ずつ払うよ。GoogleアシスタントやSiriのデタラメな文法が毎時間変わるような、テキストアドベンチャーゲームをやってるみたいな状況はもう嫌だ。それが存在して、ただ動いてくれるなら、月額料金も払うね。" userName="xp84" createdAt="2025/09/15 18:13:09" color="#45d325">}}




{{<matomeQuote body="全くその通り。Home Assistantを6年くらい使ってるけど、いろんなエコシステムのハードウェアを連携させるのに本当に素晴らしいよ。<br>たとえハードウェアがローカルAPIに対応してなくても、誰かがクラウドAPIと連携するHA統合を作ってる可能性が高いしね。" userName="johnmaguire" createdAt="2025/09/15 17:47:34" color="#38d3d3">}}




{{<matomeQuote body="それに、もしHA統合がまだ作られてなくても、自分でかなり簡単に書けるし、HACSを通じて配布できるよ（俺はHACSに3つ、メインラインに1つ統合を持ってる）。" userName="borski" createdAt="2025/09/15 17:50:05" color="#ff5733">}}




{{<matomeQuote body="もしカメラを買って、プラグを挿しただけでセットアップを忘れたら、ただ単純にそれが使えないだけだよね？確かに『存在証明』はもっと良いけど、一体どれくらいの人が真剣に影響を受けるんだろう？" userName="some_random" createdAt="2025/09/15 18:29:28" color="">}}




{{<matomeQuote body="TP-Linkは、小さなベンダーどころか、かなり大きな会社だよね。" userName="kelnos" createdAt="2025/09/15 19:06:29" color="">}}




{{<matomeQuote body="物理アクセスがあるなら、デバイスを工場出荷時設定にリセットして、普通に初期設定すればいいだけだよね。" userName="some_random" createdAt="2025/09/15 18:32:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
