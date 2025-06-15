+++
date = '2025-06-08T00:00:00'
months = '2025/06'
draft = false
title = 'なぜAndroidはCDC Ethernetを使えない？ 2023年版の理由'
tags = ["Android", "ネットワーク", "USB", "Ethernet", "カーネル"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> なぜAndroidはCDC Ethernetを使えない？ 2023年版の理由

引用元：[https://news.ycombinator.com/item?id=44219405](https://news.ycombinator.com/item?id=44219405)




{{<matomeQuote body="この記事書いた者だけど、前職でCDC EthernetをAndroidで動かそうと苦労した経験から書いたんだ。<br>書いてから、MACアドレスの特定ビットを反転させると、カーネルが`usbX`じゃなく`ethX`って名前を割り当てるようになるって教えてくれた人が何人かいたよ。<br>もう仕事変わってAndroidデバイスに関わらなくなったから、自分で試してないし、記事もその情報で更新してないんだ。<br>もちろん、これってMACアドレスを制御できるCDCデバイス（例えば、別のLinuxデバイスがCDCアダプターになりすましてるとか）の場合だけだけどね。" userName="jordemort" createdAt="2025/06/08 22:48:30" color="#ff33a1">}}




{{<matomeQuote body="これマジで助かるかも！どのビットか見つかった？<br>（あ、見つけたかも！このリンク見て→https://lkml.iu.edu/hypermail/linux/kernel/1103.2/03250.html ）" userName="rcxdude" createdAt="2025/06/08 23:00:18" color="#785bff">}}




{{<matomeQuote body="ありがとう！MACアドレスをグローバルビットに設定したら、Moto Android 15、Honor Android 9、Raspberry PiからのGSI 16で動いたよ[1]。<br>今はeth0として表示されて、Wi-Fiをオフにして初めてルートが作られるけど、DHCPは関係なく取得できるね。<br>ECMは270Mbit、RNDISは150Mbitだったよ。<br>MACアドレスが変更できるモバイルホットスポットやドングルなら動くはず。（今はusb0として検出されるけどね）<br>[1]: https://gist.github.com/TalalMash/c20e6aa237e1f123ddf9686a07..." userName="goodburb" createdAt="2025/06/08 23:53:27" color="#ff33a1">}}




{{<matomeQuote body="面白い深掘り記事だね！<br>ソースコード見たら、正規表現が2023年10月に`eth\d`から`*`に変わってたみたい。<br>たぶんこれでこの問題は直ったんじゃないかな。<br>このリンク見て→https://android-review.googlesource.com/c/platform/packages/...<br>説明には、「デフォルトはAndroid U+（Android 14だと思う）でusb\d+とeth%d両方の名前のインターフェースを含むようになる」って書いてあるよ。" userName="progbits" createdAt="2025/06/08 21:08:12" color="#ff5c5c">}}




{{<matomeQuote body="それは後に元に戻されちゃったんだ[1]、「現場でテザリングにusbXインターフェースを使ってるデバイスがあるから」だって。<br>その後すぐ、また取り込まれたけど、今度はAndroid V+だけをサポートする形になったよ[2]。<br>[1]: https://android-review.googlesource.com/c/platform/packages/...<br>[2]: https://android-review.googlesource.com/c/platform/packages/..." userName="mshockwave" createdAt="2025/06/08 21:57:41" color="#785bff">}}




{{<matomeQuote body="数ヶ月前にunihikerボード（CDC使うやつ）をもらったんだけど、Androidデバイスじゃ動かなかったんだ。<br>この記事読んでAndroid 15にしたからまた試したけど、やっぱり動かない。<br>Samsungの実装が原因かなあ！<br>iPadで動いたのはびっくりしたよ！" userName="gbil" createdAt="2025/06/09 07:38:01" color="">}}




{{<matomeQuote body="じゃあメタな疑問だけどさ、なんでデバイスAPIは、これがマジなEthernetデバイスかって判断できる十分な情報を提供せず、システムにこんな名前遊びさせんだろ？" userName="shadowgovt" createdAt="2025/06/09 15:58:11" color="">}}




{{<matomeQuote body="TはAndroid 13、UはAndroid 14、VはAndroid 15だよ。" userName="charcircuit" createdAt="2025/06/08 23:03:45" color="">}}




{{<matomeQuote body="この難読化、何で必要だったんだろ？" userName="NooneAtAll3" createdAt="2025/06/09 01:45:15" color="">}}




{{<matomeQuote body="あれは難読化じゃないんだよ。昔Android OSがお菓子の名前だった頃にさかのぼるんだ。開発中はまだお菓子の名前が決まってなかったから、頭文字で呼んでたんだよ。" userName="isiahl" createdAt="2025/06/09 02:09:22" color="#ff5c5c">}}




{{<matomeQuote body="意図的な難読化ではないけど、結局分かりにくいのは変わらないね。" userName="throwaway314155" createdAt="2025/06/09 02:23:52" color="">}}




{{<matomeQuote body="少なくともアルファベット順にはなってるじゃん！" userName="tough" createdAt="2025/06/09 10:07:07" color="">}}




{{<matomeQuote body="数字も文字と同じくらい分かりにくいよ。『Android 14』が13の後で15の前ってこと以外何も教えてくれないのと、『V』がUとWの間のことしか教えてくれないのは同じだ。" userName="shadowgovt" createdAt="2025/06/09 15:58:57" color="">}}




{{<matomeQuote body="LineageOSのコミット履歴見たら、一度修正されて[0]、互換性の問題で元に戻され[1]、また元に戻されたけど[2]、最新のAndroid版だけみたい。コミットを正しく読めてれば、Googleの誰かが関わってるみたいだから、公式ビルドに入ってるかもね。<br>[0] https://github.com/LineageOS/android_packages_modules_Connec...<br>[1] https://github.com/LineageOS/android_packages_modules_Connec...<br>[2] https://github.com/LineageOS/android_packages_modules_Connec..." userName="franga2000" createdAt="2025/06/08 21:23:29" color="#ff33a1">}}




{{<matomeQuote body="LineageOSに関しては、ずいぶん前にこれ見つけてhttps://review.lineageos.org/c/LineageOS/android_packages_mo...<br>を作ったんだけど、誰もテストしてくれなくて、検証する手段もなかったから、今は宙ぶらりんだね。みんなからの報告とか、誰かがたまたま見つけることとか色々あるんだけど、結局は実際のユーザーにテストしてもらう必要があるんだよね笑" userName="luca020400" createdAt="2025/06/09 12:44:45" color="#785bff">}}




{{<matomeQuote body="＞ Android’s EthernetTracker service only acknowledges interfaces that are named ethX<br>If this is true, this is the stupidest goddamn thing I have ever heard of. We fixed this with linux distributions in the 2000s. It was obvious even back then that some device drivers just made up their own device name prefix, so you had to probe the system to find what kind of device it was. (I know the wifi stack has changed a lot over the years, but there’s always been a way to detect if a device was wireless or not)Because consistency is kind of useful, there are also multiple tools which can rename an interface, and I think most linux distros today use udev to make this automatic. Under the hood it’s just calling the kernel’s SIOCSIFNAME ioctl. Modern kernels even have a fancy feature so you can change the name to “wlan*” (actually “wlan%d”) and it will just assign a new number after “wifi”." userName="0xbadcafebee" createdAt="2025/06/09 04:42:47" color="#785bff">}}




{{<matomeQuote body="I wonder if it would make sense to use NetworkManager on Android (with the Android Wireless Settings UI acting as the NetworkManager GUI)" userName="preisschild" createdAt="2025/06/09 12:55:08" color="">}}




{{<matomeQuote body="It’s because some usbX devices must be used by other modules, and managing the list is something they didn’t want to do. So ethX it is." userName="literalAardvark" createdAt="2025/06/09 20:14:53" color="">}}




{{<matomeQuote body="Another similarly stupid thing is when you’re trying to connect USB Serial device to your Android Smartphone.<br>Well, you connect it, it appears to work. Then you want to write an application to use that USB serial interface. But apparently you can’t. You start to dig in and it appears that you just don’t have permissions to access `/dev/ttyACM0` (or whatever the name of the serial device is, sorry, I might have misspell it).Serial support is built into the kernel, but inaccessible to user program, not without rooting anyway.<br>Dig further and it appears that Android has userspace USB access. Similar to libusb, or may be it’s built on top of libusb?. Matters not.So you can open “raw” USB device from your Android program. But you can’t open serial USB device. Serial USB is just a protocol on top of USB. Actually it’s a set of half-proprietary protocols. FTDI, some other protocols. I didn’t dig into it much. But there are half-backed libraries for Android, which actually implement those protocols in the userspace, so in the end you can access USB serial device... At least some of them.<br>Also I think that you can open raw USB device from your Android Chrome browser, using WebUSB! But not WebSerial. Probably for the same reason.<br>What surprised me in the end: why even enable USB serial support in the kernel? For debugging?" userName="vbezhenar" createdAt="2025/06/09 09:28:42" color="#ff33a1">}}




{{<matomeQuote body="There is no way to work around this, short of rooting the phone to change the value of config_ethernet_iface_regex.Another reason why having root is important on a device that you own." userName="userbinator" createdAt="2025/06/08 21:36:26" color="">}}




{{<matomeQuote body="Being able to arbitrarily redirect networking traffic is perhaps the single greatest reason to not have superuser privs in userland. I support anybody that wants to pressure OEMs into allowing bootloader unlocks, but I also can’t name a use for root that justifies the insanely expanded surface area for attackers, at least on Android." userName="bigyabai" createdAt="2025/06/08 21:46:30" color="">}}




{{<matomeQuote body="Yes? I don’t use a single computer I own as root." userName="bigyabai" createdAt="2025/06/08 22:12:55" color="">}}




{{<matomeQuote body="Few people do; “don’t use root as your primary login” has been standard advice for decades. Do you ever use sudo or equivalent?" userName="Zak" createdAt="2025/06/08 22:21:41" color="">}}




{{<matomeQuote body="The corporate FUD has gotten strong enough that people are getting scared of freedom. That should disturb you more than any perceived paranoia about “attackers”." userName="userbinator" createdAt="2025/06/08 21:56:02" color="">}}




{{<matomeQuote body="権限をいちいち求められるのウザい。俺はLinuxでもWindowsでも常に管理者権限使ってるぜ。この10年、ヤバいものは落とさない、パスワードもちゃんとやるで乗り切ってるから問題ないよ。" userName="jimmaswell" createdAt="2025/06/09 02:04:20" color="">}}




{{<matomeQuote body="なんかみんなさ～、管理者権限のポップアップ怖がりすぎじゃない？別に魔法じゃないってば。" userName="stavros" createdAt="2025/06/08 22:40:38" color="">}}




{{<matomeQuote body="君の言い分、シートベルトいらないって言うのと一緒だよ。自分が事故ってないからって大丈夫なわけじゃないし。マルウェア完全に避けられるわけじゃないし、システムにも穴はあるんだよ。" userName="smt88" createdAt="2025/06/09 02:11:45" color="#ff5733">}}




{{<matomeQuote body="root権限より自分のデータ守るのが一番大事なのに、今のPCだと一般ユーザーでもデータ全部盗まれちゃうじゃん。データ危ないのに、OS壊れるかなんてどうでもいいわ。OSは入れ直せるけどデータは戻ってこないし。" userName="josephg" createdAt="2025/06/09 03:09:05" color="">}}




{{<matomeQuote body="ほとんどの人は、管理者権限の自由をちゃんと扱えないって。オプションであるべきだけど、全部が全部、企業の都合ってわけじゃないと思うな。" userName="lucasban" createdAt="2025/06/08 23:29:56" color="">}}




{{<matomeQuote body="わかるんだけどさ、権限を細かく設定できないWindowsだと、サードパーティ製のソフトに権限渡すのやっぱ怖いんだよね。<br>だから、銀行とか大事なのは別のPC使ったり、怪しいソフトは別ユーザーで動かしたりしてる。マジでQubesに乗り換えたいわ。" userName="EvanAnderson" createdAt="2025/06/09 00:01:37" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="そうそう、モバイルOSはその辺上手いのに、Windowsは全許可か不許可か聞くだけじゃん。結局プログラム動かすために「はい」押しちゃうよね。" userName="stavros" createdAt="2025/06/09 00:41:11" color="">}}




{{<matomeQuote body="sudo？安全手袋つけてるとパスワードミスってロックされちゃうんだよね。家族がくれた新しいPCはsudoいらないし、色とか形、動物の鳴き声も出るから、俺にはこれで十分かな。" userName="beeflet" createdAt="2025/06/08 22:42:02" color="">}}




{{<matomeQuote body="同意だね。ほとんどの一般ユーザーや従業員には、管理者権限は無用で危険だよ。でも、expert（IT/Techプロ）やhobbyistには絶対必要。だから、選べるようにするべきだね。" userName="lurking_swe" createdAt="2025/06/08 23:51:20" color="">}}




{{<matomeQuote body="AndroidをRoot化すると、セキュリティ機能がめっちゃ損なわれちゃうんだよ。アプリが必要な権限だけじゃなく、全部の権限持つようになっちゃうから、すげー脆弱性になるんだって。GrapheneOSのRedditスレッドのリンク貼っとくわ。<br>https://www.reddit.com/r/GrapheneOS/comments/13264di/is_root..." userName="preisschild" createdAt="2025/06/09 12:56:43" color="#38d3d3">}}




{{<matomeQuote body="俺の知ってるWindowsユーザーはみんな自分のPCで管理者権限のアカウント使ってるぜ。" userName="1231232131231" createdAt="2025/06/09 00:27:54" color="">}}




{{<matomeQuote body="実はもっと細かい権限設定はいっぱいあるんだけど、誰も使わないんだよな。Windowsで別のユーザーアカウント作ったり、runasでプログラム動かしたり、ACLs設定したりする人どんだけいんの？" userName="dwattttt" createdAt="2025/06/09 03:07:47" color="#ff33a1">}}




{{<matomeQuote body="分かる、でもどうやって有効にするかが大事なんだ。マイクアクセスの許可みたいに、それが”root”って聞かれてもユーザーは「root？なんだそれ、tootのことか？」って適当にOKしちゃって、マシン全部やられちゃうかもよ。" userName="sroussey" createdAt="2025/06/09 00:20:20" color="#45d325">}}




{{<matomeQuote body="もしroot許可のポップアップが出たら、5分後には「これ無しじゃ友達と話せない」みたいな大事なアプリが、高い権限を許可しないと動かなくなるようになるだろうね。" userName="ben0x539" createdAt="2025/06/09 01:24:51" color="#785bff">}}




{{<matomeQuote body="アプリにrootあげたらそりゃそうなるわな。リンク先の記事はちょっと変だよ。UIが出てるレイヤーは権限あげるのにrootはいらないんだ。例えばkdesuはパスワード聞いてsuに渡す。UI部分はsetuidとかrootいらないんだよ。キーボードはもちろんキー入力全部見れるから、変なキーボードは絶対入れるなよ。" userName="ndriscoll" createdAt="2025/06/09 13:54:50" color="#ff5733">}}




{{<matomeQuote body="まさかシステム開発者がユーザーの自由な判断を許すなんて、ありえないだろうな。" userName="greenavocado" createdAt="2025/06/09 13:50:38" color="">}}




{{<matomeQuote body="だからプログラムは別のユーザーで動かすのが良いんだよ。nginxとかjellyfinみたいなバックグラウンドサービスは専用ユーザーで。ゲームやるなら`games`ユーザーとか分けるのもあり。信頼できないコードを触るなら、まず別のユーザー作ってからだ。ホームディレクトリに誰でもアクセスできる権限（world permissions）は付けちゃダメだぜ。" userName="ndriscoll" createdAt="2025/06/09 14:09:01" color="#ff33a1">}}




{{<matomeQuote body="俺はAndroid開発者じゃないけど、そのRedditコメントの筆者（Daniel Micay）は間違いなくAndroidセキュリティの専門家だから、彼のアドバイスは信用できると思うよ。" userName="preisschild" createdAt="2025/06/10 11:42:03" color="">}}




{{<matomeQuote body="スマホは前からそのやり方はダメだって言ってたじゃん。誰かのせいにするなら、問題起こした奴はみんな分かってるでしょ？<br>驚くことじゃないよ。" userName="bigyabai" createdAt="2025/06/08 22:48:58" color="">}}




{{<matomeQuote body="これって、PCがこんな感じになっちゃったことへの皮肉でしょ？<br>まるでこれみたい→ https://www.amazon.com/Fisher-Price-Classic-Farmer-Says/dp/B..." userName="EvanAnderson" createdAt="2025/06/08 23:55:00" color="">}}




{{<matomeQuote body="運転中、一時的にシートベルト外してグローブボックスに手伸ばせるでしょ？あと、マルウェアより交通事故で死ぬ確率の方がずっと高いんだよ。そこが違う。" userName="Wowfunhappy" createdAt="2025/06/09 11:00:05" color="">}}




{{<matomeQuote body="それって多分昔の名残で、Windows Vistaから入ったユーザーアカウント制御で大分マシになったはずだよ。それにadministratorってrootとは違うんだ。rootはシステムレベルのアクセスで、Windowsの標準アカウントはそこまで権限ないし。" userName="baby_souffle" createdAt="2025/06/09 01:08:00" color="">}}




{{<matomeQuote body="いやいや、Windowsなら必要なら管理者権限にできるじゃん。Androidはそれができないんだよ。" userName="wkat4242" createdAt="2025/06/10 02:21:38" color="#ff5733">}}




{{<matomeQuote body="あと、マジでウザいのが複数のネットに同時接続できないこと。例えば、ネットに繋がってないWi-Fiとセルラーとかね。LinuxもWindowsもできるのに、Androidだけなぜかダメなんだ。ネット無しWi-Fiに繋がってようとしないか、すごい面倒か。アプリならできるAPIはあるけど、普通に使うには無理なんだよ。" userName="rcxdude" createdAt="2025/06/08 22:58:37" color="#ff33a1">}}




{{<matomeQuote body="iOSも一緒だよ。ドラレコ繋いで動画DLしようとすると、「ネットないけどセルラーに切り替える？」って出てくる。維持を選んでも、iOSは勝手にCarplayに戻しちゃうんだ。ウザいよ。" userName="OptionOfT" createdAt="2025/06/08 23:03:46" color="#ff5c5c">}}




{{<matomeQuote body="いや、それはiOSのアプリがちゃんと作られてれば問題なくできるよ。俺は複数のデバイスでやってるし。君のドラレコアプリがおかしいんじゃない？" userName="Aurornis" createdAt="2025/06/09 01:12:31" color="">}}




{{<matomeQuote body="でもさ、ネットを管理してるのはスマホ本体じゃん。他のデバイスがたまたま特定の機能を実装してるかどうかに依存するって、それ自体が設計ミスじゃない？" userName="shakna" createdAt="2025/06/09 07:56:54" color="#ff5733">}}




{{<matomeQuote body="アプリなんか必要ないってことだよ。ましてやそれを”正しく”動かすためのアプリとか。" userName="rcxdude" createdAt="2025/06/09 07:59:09" color="">}}




{{<matomeQuote body="俺の記憶だと、AndroidとiPhone両方に解決策あるはずだよ。多分、あなたのドラレコの実装がおかしいんじゃないかな。ここのAppleの開発者フォーラム見てみたら？https://developer.apple.com/forums/thread/13164" userName="raron" createdAt="2025/06/09 00:38:23" color="#ff33a1">}}




{{<matomeQuote body="アプリがないとダメってことだね。OSのこのイライラする挙動のせいで、カスタムアプリ作りたくなるのが唯一の理由、ってことも十分ありうるよね。" userName="rcxdude" createdAt="2025/06/09 08:07:36" color="">}}




{{<matomeQuote body="西洋のAndroidスマホ持って中国本土行くとさらにイラつくよ。Googleサービスに繋がるかでネット接続判断するから、ローカルWiFiに繋いでも金盾通れないじゃん？だから、ネットなし接続を維持するか毎回聞いてくるんだよ。" userName="spaqin" createdAt="2025/06/09 02:46:26" color="">}}




{{<matomeQuote body="これ、めちゃくちゃ腹立つよね。ネットが落ちても、ネットがないWiFiに繋がったままになってくれないからスマホから診断できないんだよ。AndroidのDNSもおかしすぎて困る。" userName="roygbiv2" createdAt="2025/06/09 01:22:06" color="">}}




{{<matomeQuote body="Windowsもできないんじゃない？無線アダプター2つあっても、GUIだと2つの別々のWiFiネットワークに繋げないよ（ターミナルは試してないけど）。" userName="mrheosuper" createdAt="2025/06/09 04:26:30" color="">}}




{{<matomeQuote body="いや、できるよ！両方DHCPでデフォルトルートをアドバタイズしてると混乱するけど、それ以外なら動く。ローカルIPのレンジが重ならない必要もあるね。ネットがないWiFiがデフォルトルートをアドバタイズしてなきゃちゃんと動くよ。" userName="rcxdude" createdAt="2025/06/09 08:04:30" color="">}}




{{<matomeQuote body="ファームウェア要件もチェックしてみて。AndroidのUIじゃ対応できないし、dmesgでしか分からないよ。RealtekやKawasakiチップはファームウェア必要だったね。Vanilla AOSPでUSBドングルよく使ってたから、この問題は最近かな？ファームウェア不要なチップセットか確認してね。" userName="kimixa" createdAt="2025/06/09 00:20:21" color="#ff33a1">}}




{{<matomeQuote body="記事のデバッグ過程が素晴らしいね。たった一つのregexで見落としがデバイス全体をダメにするなんて。これ、全然違う状況で似た経験したんだ。OpenAIのアライメントシステムで、僕のエスカレーションが内部インターフェースのregexにマッチしなかったみたい。詳細はここで:<br>https://news.ycombinator.com/item?id=44221458<br>興味あったら、構造的な話しよう。" userName="404Escalation" createdAt="2025/06/09 04:55:30" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="めっちゃ変だね。俺15個くらいUSB Ethernetアダプター持ってるけど、全部ちゃんと動いてるよ。RealtekとかAXISとか、いくつかの違うチップセットだと思う。Linuxでドライバーいらないやつ買えば、大体どのOSやBIOSでも大丈夫じゃないかな。" userName="hypercube33" createdAt="2025/06/08 21:25:55" color="">}}




{{<matomeQuote body="2023年に直ったってさ！<br>https://news.ycombinator.com/item?id=44219502" userName="Retric" createdAt="2025/06/08 21:27:27" color="#785bff">}}




{{<matomeQuote body="はい、Thunderbolt/USBドックの有線LANアダプターが私のPixel 5とPixel 9で普通に動いたから言いに来ましたよ。<br>全く問題ないです。" userName="Grazester" createdAt="2025/06/08 22:19:15" color="#ff5733">}}




{{<matomeQuote body="Androidのコードって’test interfaces’も許容してたんだよね。<br>なんで筆者はそのやり方を試さなかったんだろう？<br>Androidのリバートメッセージも興味深いね。’現場のデバイスでusbXインターフェースをテザリングに使ってる’って、それが何の問題なの？" userName="secondcoming" createdAt="2025/06/08 22:05:34" color="">}}




{{<matomeQuote body="私の理解だと、そのパッチが扱ってたコードはインターフェースをクライアントとして設定する役割みたい。<br>もしスマホの別のシステムがホストとしてインターフェースを立ち上げて、別のデバイスにインターネットをテザリングしようとすると、スマホがそのインターフェースをルーターとしてもクライアントとしても設定しようとして、おかしくなるんじゃないかな。" userName="jeroenhd" createdAt="2025/06/08 23:06:04" color="#38d3d3">}}




{{<matomeQuote body="これだよ。<br>一般的にインターフェース名なんてテキトーで、それが何に繋がってるか判断するのには向いてない。<br>でも’usb’と’eth’の区別は特に酷いね。<br>だってLinuxはどっちの名前でも、接続の両方の端（ホスト側、クライアント側）に使うんだから。" userName="rcxdude" createdAt="2025/06/08 23:08:30" color="#ff5c5c">}}




{{<matomeQuote body="残念ながら、テスト用インターフェースは’testtap＼d+’のパターンに一致しないといけないんだ。" userName="yeth0099" createdAt="2025/06/09 06:39:32" color="">}}




{{<matomeQuote body="LineageOSが入った私のタブレットは、ごく一部のUSB-Ethernetアダプター（ASIX AX88179チップセット）では動くんだ。<br>でもOTGホストモード中は充電をサポートしないから、アダプターに長く繋いでおけない（バッテリーが古いから）。<br>Samsungみたいな新しいデバイスはACA OTG（Accessory charging adaptor）に対応してて、アダプターに電気送りながら充電もできるらしいよ。" userName="ck2" createdAt="2025/06/08 21:23:10" color="#ff33a1">}}




{{<matomeQuote body="ワイヤレス充電のもう一つの面白い理由ね。<br>たまに、ぴったりのアダプターをあれこれ探すより、横からこっそりデバイスに電気を送る方が楽だったりするんだ。" userName="myself248" createdAt="2025/06/08 22:24:02" color="">}}




{{<matomeQuote body="古いデバイスだと、作業中にバッテリーレベルを維持できるほど、ワイヤレス充電は十分な電力を供給しないのが普通だね。<br>Qi Quick Chargeに対応してる機種がすごく少ないからさ。" userName="wkat4242" createdAt="2025/06/10 02:23:51" color="">}}




{{<matomeQuote body="昔やったことがまた新しいことになってるね。<br>Windows Phoneデバイスは10年前にUSB充電と有線LAN、そして画面出力もしてたんだよ。" userName="Marsymars" createdAt="2025/06/08 23:03:06" color="">}}




{{<matomeQuote body="AndroidスマホがUSB micro HDMIのサポートをやめた時はマジでショックだったわ。<br>あれで基本的にテレビでゲームできたのに。" userName="p0w3n3d" createdAt="2025/06/09 10:37:31" color="">}}




{{<matomeQuote body="新しいスマホとかタブレットって、ノートPCみたいにUSB-Cで映像も出せるじゃん？たぶんそのせいだよ。" userName="izacus" createdAt="2025/06/09 18:42:07" color="">}}




{{<matomeQuote body="細かいこと言うとさ、USBはシリアルプロトコルだけど、映像はシリアルじゃないよね？USB-Cの形してるけど、中身はDisplayportかThunderbolt接続だよ。詳しいことはここ見てね<br>https://en.wikipedia.org/wiki/Thunderbolt_(interface)" userName="AStonesThrow" createdAt="2025/06/09 18:43:23" color="">}}




{{<matomeQuote body="うちのHDMI PhilipsモニターってMHL対応だったんだ。でも結局MHLで画面出せたことないんだよね。Android KitkatとかLollipopの頃のSamsung Galaxy Tabとか、持ってたデバイスがどれも対応してないみたいで。モニターにUSBポートもなかったし、どんなケーブル要るのかも分からなかった。" userName="AStonesThrow" createdAt="2025/06/09 10:41:19" color="">}}




{{<matomeQuote body="100GB以上もあるソースコード全部ダウンロードするより、cs.android.comの方がコード見るだけなら簡単だよ。" userName="tripdout" createdAt="2025/06/08 21:17:09" color="">}}




{{<matomeQuote body="CDCってなんだろうと思って調べたんだ。「USB Communications Device Class」のことなんだね。この10年、Androidデバイスたくさん使ってきたけど、USBアダプターで有線Ethernetに繋ごうなんて一度もしたことなかったな。てっきり、やれば普通に動くと思ってたよ。へぇ、面白いね。" userName="russellbeattie" createdAt="2025/06/08 21:51:47" color="">}}




{{<matomeQuote body="調べるより、記事をちゃんと読めばよかったのに。だって記事の中に「CDC Ethernetって何？なんで気にする必要があるの？」「CDCはCommunications Device Classの略」って書いてあるじゃん。" userName="dfc" createdAt="2025/06/08 23:06:51" color="">}}




{{<matomeQuote body="あー、そうだね。記事の半分より後ろにあったね。見たよ。でも前半がさっぱりで、先読む前に自分で調べちゃったんだ。きっと他の人も知りたいだろうと思ったんだよ。全く同じこと言ってるコメントも他にあるしね。まあ、それは置いといて、自分のコメントは、この問題に今までぶつかったことなかったって話がメインなんだけどね。" userName="russellbeattie" createdAt="2025/06/08 23:40:52" color="">}}




{{<matomeQuote body="前さ、イライラした関連する話なんだけど、素のAndroidがad-hoc WiFiネットワークに繋がらなかったんだよ。サードパーティ製のROMだと大体繋がったから、技術的に難しい問題じゃなかったはずなんだ。バグ報告の番号二桁だったのに、Googleは何年も直そうとしなかったんだ。最近ad-hocネットワークなんて見ないけど、Androidが若い頃はよくあったな。" userName="Zak" createdAt="2025/06/08 22:20:00" color="">}}




{{<matomeQuote body="記事にはさ、iOSはCDC Ethernetアダプターをサポートしてないって書いてあるけど、俺、普通のUSB EthernetアダプターをiPhoneに繋いだら動いたことあるんだけどな。iOSって、なんか別の標準で通信してるの？" userName="MBCook" createdAt="2025/06/08 21:12:10" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
