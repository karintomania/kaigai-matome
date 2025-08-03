+++
date = '2025-07-27T00:00:00'
months = '2025/07'
draft = false
title = 'Dumb Pipeの正体！NATを突破し接続を維持するシンプルすぎるネットワーク術'
tags = ["ネットワーク", "NAT越え", "SSH", "ネットワーク接続", "ユーティリティ"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> Dumb Pipeの正体！NATを突破し接続を維持するシンプルすぎるネットワーク術

引用元：[https://news.ycombinator.com/item?id=44701555](https://news.ycombinator.com/item?id=44701555)




{{<matomeQuote body="これ、`ssh`（`socat`か`mkfifo`を使って）でもできるぜ。<br>レシーバーでは`socat UNIX-RECV:/tmp/foobar - | my-command`、<br>セーダーでは`my-command | ssh host socat - UNIX-SENDTO:/tmp/foobar`って感じ。<br>ターゲットがファイアウォールや`NAT`の裏にいても、`ssh-j.com`みたいなパブリックな`SSH`サービス経由でリレーできるんだ。これ、`SSH`の中に`SSH`だからエンドツーエンドで暗号化されてるぜ。<br>元の投稿は「beam」のスレッド`https://news.ycombinator.com/item?id=42593135`だよ。" userName="remram" createdAt="2025/07/27 17:12:49" color="#ff5733">}}




{{<matomeQuote body="これ、「Dumb Pipe」が謳ってることのほとんどできてないね。`QUIC`使ってないし、可能な時にリレーを使わないこともないし、自分でリレーを選んでくれないし、ネットワーク接続が変わってもデバイスの接続を維持しないし。<br>あと、`ssh`のキー管理はアウトオブバンドでやらないといけないけど、「Dumb Pipe」はキーをランダムなASCII文字列に入れるみたいだね。`WireGuard`の方が近いよ。" userName="kragen" createdAt="2025/07/27 18:21:45" color="#45d325">}}




{{<matomeQuote body="`WireGuard`もほとんどそういうことできないよ。" userName="nightfly" createdAt="2025/07/27 18:27:38" color="">}}




{{<matomeQuote body="確かに、いくつかだけだね。" userName="kragen" createdAt="2025/07/27 18:49:21" color="">}}




{{<matomeQuote body="このトピックのリンクを辿ったら、最初の文にこうあったぜ。「Dumb Pipeはオンザフライのノード識別子を使って`NAT`を突破するぜ。ネットワークの状況が変わっても、マシンを接続し続けるんだ。」" userName="cakealert" createdAt="2025/07/27 21:15:20" color="">}}




{{<matomeQuote body="もっとシンプルにするなら、`https://www.tarsnap.com/spiped.html`で`spiped`を動かす手もあるぜ。これ、`ssh`すら前提としてないんだ。" userName="nine_k" createdAt="2025/07/28 00:32:50" color="#ff33a1">}}




{{<matomeQuote body="`iroh`も似たような感じだね。" userName="cyberge99" createdAt="2025/07/30 06:44:28" color="">}}




{{<matomeQuote body="`WireGuard`サーバーを立てて、両方のクライアントをそこに接続させて、2つの`IP`間でデータを渡すこともできるぜ。`NAT`があってもなくても、結局は中央のリレーがデータをやり取りすることになるけどね。" userName="rfl890" createdAt="2025/07/27 22:10:13" color="">}}




{{<matomeQuote body="最近`WireGuard`で何度か痛い目見たから、もう使う気になれないんだ。もっと魔法みたいなことはいらない、Linuxだと特に、難解な`ip table`のルールセットはごめんだね。" userName="bb88" createdAt="2025/07/28 03:11:34" color="">}}




{{<matomeQuote body="OpenVPNやIPSec、WireGuardを運用した経験から言うと、WireGuardってすごく普通なんだよね。IPSecの設定なんて、電話で呪文みたいな設定を何度も唱えないといけないからゾッとするよ。違う実装のIPSec同士だと、動かないこともしょっちゅうで、結局どっちかのパラメータが間違ってるってわかるんだ。VPNのトラフィックをIPTablesやnftablesで手動ファイアウォールするのは嫌だけど（ダサいよね）、最近ufwやfirewalldにルーティング管理機能が追加されたのは嬉しいね。" userName="tetha" createdAt="2025/07/28 10:08:28" color="">}}




{{<matomeQuote body="うん、IPSecの初期設定とトラブルシューティングはマジで悪夢だよね。僕もみんなと何時間も格闘したよ。WireGuardは本当にシンプルで新鮮だね。設定項目も少なくて間違いにくいし。「すべてのエンドポイントがピア」っていうメンタルモデルを理解するのに少し時間かかったけど、それさえわかれば超簡単だったよ。" userName="throitallaway" createdAt="2025/07/28 17:41:52" color="#ff33a1">}}




{{<matomeQuote body="WireGuardって他の選択肢よりずっとシンプルだよね。IPSecはもうサイアク。" userName="icedchai" createdAt="2025/07/28 12:53:00" color="">}}




{{<matomeQuote body="WireGuardでどんな目に遭ったのか興味あるね。何が期待外れで、WireGuardのせいで失敗したことってある？俺は何年も使ってるけど安定してるし、OpenVPNより管理が楽だったよ。UDPポート1つしか使わないのに、IPtablesのルールが複雑になるってコメントには疑問だね。(OpenVPNは当時もすごかったよ。2000年代初め頃、会社の営業担当が外出先から仕事できるって喜んでたな)" userName="BLKNSLVR" createdAt="2025/07/28 07:24:37" color="">}}




{{<matomeQuote body="「WireGuardでどんな目に遭ったのか興味ある？」<br>俺の場合だけど、Tailscaleと同じくらい簡単にセットアップできると期待してた。同じ技術じゃないのはわかるけど、難易度が近いと思ってたんだ。<br>でも、WireGuardは何日も格闘してもシンプルなケースですら動かなくて、Tailscaleは5分で動いたよ。<br>これってLinuxのネットワーキングに何十年もつきまとってるパターンだと思う。ネットには「この人の設定ファイルは昔動いたらしい」みたいな情報ばっかで、みんな理解せずにそれをコピペしてるんだ。検索エンジンはもう、そういう古い情報の海に沈んでて、たとえ完璧なガイドがあったとしても見つけられないくらいだよ。あと、こういうネットワーク技術ってエラーメッセージや診断が最悪なんだ。たった1文字の間違いで動かないのか、それとも根本的にアプローチが間違ってて全然動く見込みがないのか、誰も教えてくれない。結局、全部黙って動かないだけなんだからさ。" userName="jerf" createdAt="2025/07/28 14:31:29" color="#ff33a1">}}




{{<matomeQuote body="あ、間違えた。WireGuardじゃなくてTailscaleのことだった。TailscaleはDNSルックアップを変えたり、大量のiptablesルールを追加したり、あと残念なことに変更ログなしで機能をぶっ壊したこともあるんだ（セキュリティ上の理由らしいけど）。<br>WireGuardは公開鍵や秘密鍵、IPアドレスの管理にちょっと手間がかかるけど、余計な「魔法」が少ないんだよね。最近は本当に、ただ動いてくれるシンプルなものがいいって思うよ。" userName="bb88" createdAt="2025/07/29 16:58:45" color="#ff5733">}}




{{<matomeQuote body="君が説明する方法だと、ホストにアクセスできるSSHポートが開いてなきゃダメだよね。QUICとNATホールパンチングなら、これを回避できるんだよ。" userName="ndyg" createdAt="2025/07/29 14:09:19" color="">}}




{{<matomeQuote body="SSHサーバーとオープンポートが必要になるし、プロトコルも違うんだよね。" userName="defraudbah" createdAt="2025/07/28 08:44:40" color="">}}




{{<matomeQuote body="あのHNコメントを持ち出す人、ちゃんと調べてくれよ。あれはHN全体の反応じゃなくて、特定の丁寧なコメント主の話だ。返信後には譲歩もしてたし、コミュニケーションの良い例なんだ。けなすより褒めるべきだぜ。" userName="latexr" createdAt="2025/07/28 11:15:14" color="#38d3d3">}}




{{<matomeQuote body="まだあのコメントにリンク貼ってる奴は、ただの荒らしだよ。" userName="acheron" createdAt="2025/07/28 11:35:29" color="">}}




{{<matomeQuote body="でも、俺が最初に思い出したのは、やっぱりあのHNコメントだったよ。" userName="gherkinnn" createdAt="2025/07/28 14:43:25" color="">}}




{{<matomeQuote body="“modicum of research”だって？冗談だろ。あのコメントが持ち出されるのは、それがHNコミュニティをステレオタイプ化してるからさ。彼は失礼じゃなかったんだ。落ち着けって。" userName="michaelmcmillan" createdAt="2025/07/28 13:08:55" color="">}}




{{<matomeQuote body="このプロジェクトが役立たずだなんて言ってない。君が持ってるツールでできる別の方法を提案しただけだ。落ち着いてくれよ。Irohは本当にクールなんだぜ。" userName="remram" createdAt="2025/07/28 09:20:14" color="#785bff">}}




{{<matomeQuote body="“このプロジェクトは役立たずだなんて言ってない”<br>BrandonMもそうだよ: https://news.ycombinator.com/item?id=42394739" userName="ignoramous" createdAt="2025/07/28 10:22:37" color="">}}




{{<matomeQuote body="ちょっと関係あるけど、AからBにファイルを送る（ほとんどブラウザベース＋一部はセットアップ不要なCLI）ツールのリストを持ってるんだ。[1]こういう話題が出ると、もっとツールを探すためにこのリストをシェアしてるんだよ。<br>[1]: https://gist.github.com/SMUsamaShah/fd6e275e44009b72f64d0570..." userName="smusamashah" createdAt="2025/07/27 18:11:24" color="#ff5c5c">}}




{{<matomeQuote body="自分のデバイス間でサクッと送れるLocalSendがめっちゃ好きだね。どのOSでもちゃんと動くんだ。<br>https://github.com/localsend/localsend" userName="Liquix" createdAt="2025/07/27 21:53:27" color="#38d3d3">}}




{{<matomeQuote body="iOSはBluetoothで画像や動画ファイルをWindowsみたいな受信機に送れないってAppleが言ってるんだけど、もしLocalSendがiOSとWindowsで動くなら、LocalSendで写真が送れるのかな？`https://support.apple.com/en-ca/120267`" userName="voidmain0001" createdAt="2025/07/28 01:13:10" color="">}}




{{<matomeQuote body="動くはずだよ、まだ試してないけどね。それはiOSの制限じゃなくて、Apple自身の同期アプリやプロトコルの制限だよ。LocalSendは、俺が知る限り、ネットワークデバイス発見機能付きのHTTPクライアント/サーバーだからさ。" userName="sampullman" createdAt="2025/07/28 02:06:29" color="#ff5733">}}




{{<matomeQuote body="うん、いつも使ってるよ。でも、両方のデバイスが同じネットワーク（LAN/WiFi）にいる必要があるね。LocalSendはBluetoothは使わないんだ。" userName="future10se" createdAt="2025/07/28 13:53:21" color="#38d3d3">}}




{{<matomeQuote body="最近、俺の注意を引いたプロジェクトがあるんだ。色々なプロトコルに対応してて、色々なウェブブラウザ（IE6も！）で動くって言ってるし、セットアップも超簡単（Pythonファイル一つだけ）らしいよ。まだ試してないけど、共有したいな。`https://github.com/9001/copyparty`" userName="mrheosuper" createdAt="2025/07/28 06:21:30" color="#ff33a1">}}




{{<matomeQuote body="Dumb Pipeの裏にいる同じチームが作ってるsendmeってやつ、このユースケースにもっと近いんだよ！`https://github.com/n0-computer/sendme`" userName="b_fiive" createdAt="2025/07/27 20:07:35" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="誰かが製品を”Dumb”って呼ぶたびに、俺はちょっとワクワクするんだ。たいていそれは実は賢いってことだからね。インターネットは君を監視して靴下を売ろうとする”Smart”なもので溢れてる。たまには、説明通りのことだけするパイプが欲しいんだよ。俺のデータを運んで、黙ってて、母親の旧姓なんて聞かないでくれ。" userName="44za12" createdAt="2025/07/28 06:25:50" color="#38d3d3">}}




{{<matomeQuote body="”Dumb”は今や「君のデータは盗まない」って意味だね。" userName="Sateeshm" createdAt="2025/07/28 06:47:21" color="#45d325">}}




{{<matomeQuote body="今日、生のPOSIXネットコードを書いてたんだけど、多くの変数が”socket”を”sock”に短縮してるんだ。そしたら脳が「やばい！これは俺たちに特別な”sock(et)”を売りつけようとしてるぞ！」ってなったよ。" userName="josephg" createdAt="2025/07/28 06:31:21" color="">}}




{{<matomeQuote body="同じ理由で、すごく面白いダジャレだと思ったよ。" userName="lozf" createdAt="2025/07/28 11:05:47" color="">}}




{{<matomeQuote body="でも、彼らが君のデータで学習できるようなエンタープライズ対応のAI機能はどうなの？" userName="thuridas" createdAt="2025/07/28 11:09:32" color="">}}




{{<matomeQuote body="USBケーブルでPC同士を直接つないでファイル転送できないのってなんでだろうな？標準になってほしいよ。USB-A同士は無理でも、USB-Cならできるはずだし。AndroidとPCならできるのに、PC同士じゃできないのは不思議だよな。" userName="Aardwolf" createdAt="2025/07/27 20:07:05" color="#ff5c5c">}}




{{<matomeQuote body="TCP/IPが標準になってから、イーサネットクロスオーバーケーブルでPC間のファイル転送をしてたんだ。USBメモリがなかった頃の話ね。最近はイーサネットポートがないPCも増えて、クラウド利用を促してるみたいだけど、クロスオーバーケーブルは今でも使えるよ。USB-to-EthernetアダプタがあればポートがなくてもOK。TCP/IPさえあれば、特別なソフトやルーター、ネットも不要なんだ。" userName="1vuio0pswjnm7" createdAt="2025/07/27 22:17:43" color="#38d3d3">}}




{{<matomeQuote body="「今、イーサネットポートが多くのPCからなくなってる」って話だけど、Wi-Fiでアドホックネットワークを組めばいいんじゃないかな。" userName="loloquwowndueo" createdAt="2025/07/27 23:43:47" color="">}}




{{<matomeQuote body="君が言ってる技術って、Nintendo DSですら無線でできたんだぜ。この問題は40年間で何百通りも解決されてきたのに、一部の奴らはクラウドサービス抜きじゃ解決したがらないのさ。「Dumb Pipe」も同じ問題にぶつかるだろうね。Windowsユーザーに50MBのファイルを送る時、Linuxユーザーが送れる方法じゃ、Windowsユーザーは特別なソフト入れないと受け取れないんだから。" userName="clearleaf" createdAt="2025/07/27 20:49:37" color="#ff33a1">}}




{{<matomeQuote body="アドホックはできるけど、ゼロからやるのはほぼ無理だよ。ネットに繋いでやり方をダウンロードしないといけないから、それじゃ意味ないだろ？それに、Wi-Fiの電波が届く範囲じゃないとダメだしな。" userName="deathanatos" createdAt="2025/07/28 03:36:18" color="">}}




{{<matomeQuote body="USB-C (USB4 / Thunderbolt) を使えば、PC同士を繋いでネットワーク接続できるんだぜ。デフォルトはLink-Localアドレスだから、SSHとかだとちょっと面倒だけど、ネットワーク探索を使うならスムーズに動くはずだ。詳しくはここを見てくれ: https://christian.kellner.me/2018/05/24/thunderbolt-networki... または https://superuser.com/a/1784608" userName="felurx" createdAt="2025/07/27 21:45:55" color="#ff5c5c">}}




{{<matomeQuote body="「40年間で何百通りも解決された」って言うけど、E2EEとGoogleに依存しないって条件を加えたら、WebRTCのP2Pファイル転送のほとんどは対象外になるぜ。WebRTCってGoogleのSTUN/TURNサーバーをコピペしてるだけだからな。ISPがIPv6でNATを廃止するはずなのに、俺のISP (Verizon Fios) はIPv6ファイアウォールをデフォルトで有効にしてて、受信パケットをブロックするんだ。これじゃ実用的じゃないだろ。" userName="deathanatos" createdAt="2025/07/28 03:48:39" color="#38d3d3">}}




{{<matomeQuote body="昔はパラレルポートでPC同士を繋げたんだぜ。俺、Windows 95をラップトップに再インストールするのに一回やったことある。すっげー遅かったけど、ちゃんと動いたよ。" userName="Bluecobra" createdAt="2025/07/28 04:05:40" color="">}}




{{<matomeQuote body="Starlinkってルーターを回避しないと公開IPv6がもらえないんだ。接続が時々切れるから、pfsenseとかopnsenseみたいなののインストール中に失敗すると最初からやり直しになっちゃう。ipcopやmonowallはIPv6に対応してないみたいだし、自分でルーター組む時も、どのOSもIPv6ルーティングを簡単にしてくれないんだよな。Debianでも無理だったし、IPv6はマジで謎だわ。" userName="genewitch" createdAt="2025/07/28 08:19:31" color="#38d3d3">}}




{{<matomeQuote body="店でOS入りのPCを2台買って、一度もネットに繋いだことないってか？完全にエアギャップされてて、ネットで調べることもできないって言うのか？そんなの信じられないね。" userName="loloquwowndueo" createdAt="2025/07/28 12:20:39" color="">}}




{{<matomeQuote body="デフォルトだとリンクローカルアドレスしか割り振られないよ。<br>USB4のネットワーク機能って、イーサネットでPC同士を繋ぐのと一緒だね。ソフトからはイーサネットNICみたいに見えるけど、下のレイヤーのプロトコルが違うってことらしい。" userName="userbinator" createdAt="2025/07/27 23:44:22" color="#ff5733">}}




{{<matomeQuote body="Starlinkはルーター回避しないとIPv6を公開してくれないって。公開IPないとマジでインターネットに繋がってると言えんの？<br>IPv6の管理、自作ルーターとかDebianで試したけど、マジで難しすぎる。VMでIPCopのガイド書いた俺でもIPv6はわかんねえ。たぶんv6フォワーディング有効にするだけでしょ。RAやDHCPはいらないと思うし、それは上流任せでしょ。" userName="deathanatos" createdAt="2025/07/28 20:49:19" color="#ff5c5c">}}




{{<matomeQuote body="クロスケーブル、ここに売ってるよ！" userName="dwattttt" createdAt="2025/07/28 00:42:43" color="">}}




{{<matomeQuote body="なんか言い方が紛らわしいけど、そうなんだよな。PCが繋がってない間は実質エアギャップ状態だね。macOSでアドホックWi-Fiの設定を探したけど見つからん。ネット検索してみたけど、「Create Network」なんてオプションは幻だったわ。結局、Macじゃアドホックネットワーク作るのって超難しいし、ネットがない状況で必要になっても無理っぽい。" userName="deathanatos" createdAt="2025/07/28 20:43:30" color="#ff5c5c">}}




{{<matomeQuote body="これってLaplinkが先駆けなんじゃないかな。<br>https://en.wikipedia.org/wiki/Laplink" userName="exidy" createdAt="2025/07/28 05:55:46" color="">}}




{{<matomeQuote body="Starlinkで公開IPv6使うには、割り振られた/56を/64に細かく管理しないとダメなんだって。市販ルーターで試したら、DHCPv6のPDができれば全部いけた。ルーター高かったから返品したけど、いつかVMでやろうと思ってる。" userName="genewitch" createdAt="2025/07/29 15:18:50" color="#38d3d3">}}




{{<matomeQuote body="LinuxならMTPエンドポイントを作ればできるよ、スマホみたいにね。<br>https://github.com/viveris/uMTP-Responder<br>MicrosoftもWindows CE用に持ってたみたい。<br>https://www.microsoft.com/en-us/download/details.aspx?id=933..." userName="viraptor" createdAt="2025/07/27 20:41:30" color="#ff5c5c">}}




{{<matomeQuote body="「イーサネットポートが消えたのはクラウドを使わせる陰謀だ」って意見、それ陰謀じゃねーよ。<br>ここ10年使ったラップトップは全部イーサネットポートより薄いし、デスクトップには普通に付いてるだろ。みんな薄いPCの方が好きだし、俺のMacBook Airも薄くて最高。ほとんどの人にとってイーサネットポートなんていらねえんだよ。" userName="vineyardmike" createdAt="2025/07/28 08:41:50" color="">}}




{{<matomeQuote body="USBはホストとデバイスがあって非対称だよ。デバイスはスレーブとして扱われるし。PC同士を繋ぐ有線接続なんて、USBよりずっと昔にイーサネットで解決済みだったじゃん。" userName="userbinator" createdAt="2025/07/27 21:30:56" color="#45d325">}}




{{<matomeQuote body="LinuxだとNetworkManager使えばマジで楽勝だよ。他のOSにも簡単なホットスポット機能とかあるんじゃないの？" userName="cozzyd" createdAt="2025/07/28 07:26:50" color="">}}




{{<matomeQuote body="ネットワークの仕組みを分かってないね。インターネット接続があればマシンをネットワーク化できるって？話にならないよ。<br>もう終わりだ。" userName="loloquwowndueo" createdAt="2025/07/28 21:14:00" color="">}}




{{<matomeQuote body="FireWireがそうだったと記憶してるな。新しいMacを買う時、ケーブル1本で繋いでデータ転送できたんだ。" userName="thebruce87m" createdAt="2025/07/27 20:10:49" color="">}}




{{<matomeQuote body="AppleのMacはTarget Disk Modeにできるよね。ホストコンピュータがMacの中身をただのディスクドライブみたいに扱えるんだ。" userName="0_____0" createdAt="2025/07/27 21:07:41" color="">}}




{{<matomeQuote body="クロスLANケーブルのこと？それともBluetooth？ローカルWi-Fi（直接接続かどうかも含めて）のこと言ってる？" userName="xandrius" createdAt="2025/07/27 20:35:34" color="">}}




{{<matomeQuote body="最近のNICのほとんどは、”オートクロスオーバー”って機能があるんだって。状況を自動で検知して、NIC自身がクロスオーバー処理してくれるから普通のケーブルで大丈夫だよ。" userName="deathanatos" createdAt="2025/07/28 03:24:55" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="最近のオンラインヘルプの忘れられ具合に不満だったんだけど、macOSはオフラインドキュメントが全くないし、Wi-Fiオフだとユーザーガイドも使えない。<br>さらにアドホックWi-Fiの設定がGUIから消えてCLI必須になってる。現代のテック企業が高速ネット前提にしてるの、本当に嫌だわ。" userName="hoherd" createdAt="2025/07/28 04:23:14" color="#38d3d3">}}




{{<matomeQuote body="Pairdrop.netがいいよ。何もインストールしなくていいし、同じLAN内にデバイスがあればローカルネットワーク経由で転送できるよ。" userName="loloquwowndueo" createdAt="2025/07/27 23:42:10" color="#ff5c5c">}}




{{<matomeQuote body="XmodemやZmodemとかは？" userName="genewitch" createdAt="2025/07/28 08:25:14" color="">}}




{{<matomeQuote body="現代のテック企業が高速インターネット接続前提でいるのは、おそらく意図的だと思うな。特にその会社がクラウドサービスも売ってたらね。" userName="userbinator" createdAt="2025/07/28 05:48:28" color="#785bff">}}




{{<matomeQuote body="https://www.xda-developers.com/reasons-wi-fi-never-better-th..." userName="1vuio0pswjnm7" createdAt="2025/07/28 17:02:43" color="">}}




{{<matomeQuote body="irohの世界ではNodeIdっていう鍵でノードを識別するけど、俺のネットワークスタックはTCP/IPしか話せないんだ。だから、その公開鍵を接続できるホストとポートに解決する必要があるわけだね。これってDNSとだいたい同じ用途じゃん？しかもDNSは人間にも分かりやすいドメイン名で、世界中のネットワークエンジニアが管理してる。このシステムは独自の解決システムを作ってるみたいだけど、作者は「好きなの使っていいよ！」って感じでその部分を軽く見てる気がする。でも、この手のシステムにとって、ノード発見って全部だよ！それが唯一の難しい問題なのに。そこを無視したら、そりゃコンテンツアドレスなP2Pネットワークなんて簡単に作れるよね。IPFSを見れば分かるじゃん。" userName="kiitos" createdAt="2025/07/28 02:19:25" color="#38d3d3">}}




{{<matomeQuote body="ノード発見にはDNSも使うよ。でも、pkarr.orgを使う選択肢もあって、それはBittorrentのメインラインDHTを使ってるから完全に分散化されてるんだ。他の人が言ったように、チケットには直接IPアドレスも入ってるから、同じプライベートサブネット内や公開されてるノード同士なら発見の必要はないんだ。あと、リレーのURLも入ってるから、リスナーのIPが変わったりNATの裏にいても、同じ地域にいる限りDumbpipeはノード発見を使わなくて済むんだよ。" userName="rklaehn" createdAt="2025/07/28 07:34:35" color="#ff33a1">}}




{{<matomeQuote body="pkarr.org経由でBittorrentのメインラインDHTにアクセスするなら、それは明らかに分散化されてないでしょ？そのサーバーがクライアントが信頼を委ねる中心点になっちゃうんだから。" userName="kiitos" createdAt="2025/07/30 22:56:38" color="#ff5733">}}




{{<matomeQuote body="実際、Dumbpipeが提供する“チケット”には、君のマシンのIPとポート情報が入ってるんだ。だから、チケットを使う状況では、発見インフラなしでも2台のマシンは接続できると思うよ。（UPnPとかが有効になってればね。）irohのドキュメントも見てみて。https://www.iroh.computer/docs/concepts/discovery" userName="makeworld" createdAt="2025/07/28 03:15:05" color="#785bff">}}




{{<matomeQuote body="`./dumbpipe listen`ってやると出る`nodeecsxraxj...`ってやつは、クライアントが接続するのに必要なIPアドレスとかが入ったデータ型をシリアル化したものなの？バカな質問かもしれないけど、もしそうなら、このサービスのウリって何？単にIPアドレスとか公開鍵を一つの識別子にまとめただけってこと？" userName="kiitos" createdAt="2025/07/28 06:42:25" color="#ff5c5c">}}




{{<matomeQuote body="チケットのウリは、チャットとかにコピペしやすい単一の文字列ってこと。それに、安定したテキストエンコーディングだから、しばらく互換性も保つようにする予定だよ。チケットの中身を正確に見られるツールもあるんだ。https://ticket.iroh.computer/" userName="rklaehn" createdAt="2025/07/28 11:10:39" color="#45d325">}}




{{<matomeQuote body="URLだってコピペしやすい単一の文字列じゃん。俺が知りたいのは、これらの文字列がどうやって接続できるものに解決されるかってことだよ。解決するためにリレーを通る必要があって、そのリレーがDNS名で指定されてるなら、普通のURLと大して変わらないよね。もし文字列に直接IPが埋め込まれてるなら素晴らしいけど、IPは一時的だから文字列は安定しないし、エンドユーザーにとっては識別子として役に立たないじゃん。もし文字列が時間とともに異なるIPに解決される値（DNSエントリみたいに）を表すけど、異なるチャネル（リレー、ブロックチェーン、mDNSなど）経由で解決できるなら、その文字列は解決された「方法」と「いつ」の文脈でしか意味を持たないよね。もし「abcd」をアリスとボブに共有して、アリスはあるリレーシステムで、ボブはmDNSで解決したら、全く違う結果になるでしょ？そしたらその文字列って何のためにあるの？" userName="kiitos" createdAt="2025/07/29 22:39:38" color="#38d3d3">}}




{{<matomeQuote body="ウリは、Dumbpipeが暗号化、再接続、UPnP、ホールパンチング、リレーなんかを全部処理してくれることだよ。たとえばnetcatじゃ、こんなに簡単に複製できないよ。" userName="makeworld" createdAt="2025/07/28 12:19:51" color="#785bff">}}




{{<matomeQuote body="ngrokやTailscaleとか、他の多くのサービスもこれらの機能を提供してるよね。このDumbpipeの唯一ユニークな点は、不透明な文字列識別子と“分散化”っていう概念みたいだけど、特に発見の仕組みがどうなってるのか知りたいんだ。" userName="kiitos" createdAt="2025/07/29 22:24:02" color="#ff33a1">}}




{{<matomeQuote body="このプロジェクトとTailscaleってどれくらい再実装してんのかな？ニーズは共通してるみたいだしさ。NAT突破する低レベルライブラリって他にもあるはずだけど、もしかしてこれが初めてのやつとか？" userName="Liftyee" createdAt="2025/07/27 15:04:18" color="">}}




{{<matomeQuote body="もうそんなことどうでも良くね？Tailscale自体がNebulaとかTincみたいな先行例がある中で、同じアイデアの600番目の再実装だよ。WireGuardが流行り始めた良いタイミングで出てきて、VCマネーで広告に何百万もぶち込んだんだろ。コミュニティの競合にはできない芸当だね。" userName="homebrewer" createdAt="2025/07/27 16:19:13" color="#ff5c5c">}}




{{<matomeQuote body="Tailscaleが発明したと勘違いしてる奴が多いけど、ZeroTierやHamachi、多くのFOSSや学術研究が先行してるんだぜ。オーバーレイネットワークもVPNもP2Pも暗号アドレスも新しくない。彼らは良いUXと簡単なオンボーディング、それに安価な時に調達した巨額のマーケティング予算で成功したんだ。最近10年で本当に新しいのはLLMだけだな。ちなみに俺はZeroTierの創設者。俺らは産業分野に移行したが、無料で使えるし今も成長中だよ。Tailscaleには悪感情はないよ。P2Pは誰も独占できないし、彼らとはUXやターゲットが違うからね。この記事の「Dumb Pipe」ツールはZTやTSとはまた違うクールなツールで、異なるユースケース向けだ。インターネットがクライアント-サーバーになったのは最悪だけど、いつか修正されるって楽観的に見てるよ。" userName="api" createdAt="2025/07/27 16:27:57" color="#785bff">}}




{{<matomeQuote body="TailscaleってWireGuardのラッパーに、ちょっとホールパンチング機能が付いてるだけじゃないの？" userName="cr125rider" createdAt="2025/07/27 15:21:22" color="">}}




{{<matomeQuote body="うん、WireGuardとWebRTCを使ってるよ。Tailscaleの本当の機能は、デバイスがどこにあるか気にせずに接続できることだね。" userName="odo1242" createdAt="2025/07/27 15:47:49" color="">}}




{{<matomeQuote body="TailscaleにWebRTCはないよ。" userName="bradfitz" createdAt="2025/07/27 16:11:04" color="">}}




{{<matomeQuote body="これはirohを使って作られてるよ。irohは分散ソフトウェア向けの低レベルフレームワークを目指してて、ネットワーキングだけじゃなく、ネットワークノード間の複製や一貫性を可能にする色々なデータ構造も扱えるんだ。" userName="mpalmer" createdAt="2025/07/27 15:11:36" color="#785bff">}}




{{<matomeQuote body="Tailscaleってすごく宣伝されてるけど、調整サーバーをフルでセルフホストできるオプションがあるんだよね。そっち（iroh）にはそういう機能あるの？" userName="udev4096" createdAt="2025/07/27 17:00:30" color="">}}




{{<matomeQuote body="irohはこういうライブラリになることを目指してるんだよ。でもirohより前からlibp2pっていうのもあるんだ。" userName="max-privatevoid" createdAt="2025/07/27 15:16:50" color="">}}




{{<matomeQuote body="DERPサーバーってWebRTCにちょっと変更加えただけじゃないの？" userName="snapplebobapple" createdAt="2025/07/27 16:52:04" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
