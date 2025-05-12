+++
date = '2025-05-05T00:00:00'
months = '2025/05'
draft = false
title = 'Pi-Hole最高！広告ブロックだけじゃないその魅力（2024）'
tags = ["Pi-Hole", "DNS", "ネットワーク", "セキュリティ", "広告ブロック"]
featureimage = 'thumbnails/purple5.jpg'
+++

> Pi-Hole最高！広告ブロックだけじゃないその魅力（2024）

引用元：[https://news.ycombinator.com/item?id=43894175](https://news.ycombinator.com/item?id=43894175)




{{<matomeQuote body="Pi-Hole 長年使ってるけど、これなしじゃ生きられないわ。 Unbound と組み合わせて独自の再帰 DNS にして爆速だよ。 Smart TV とかの怪しい DoH/DoT 通信も OPNSense の firewall で全部 Pi-Hole に強制リダイレクト。 IoT も安全に管理できるし、外出先からは WireGuard VPN だけ。 最近の stats は Domains on List: 500k, Total queries: 43k, Queries Blocked: 17k, Percentage Blocked: 39%。 スマホも GrapheneOS でアプリも制限してるから、ログ消したばっかだけど低めかな。" userName="h4kunamata" createdAt="2025/05/06 02:55:22" color="#ff33a1">}}




{{<matomeQuote body="＞ DoT とか DoH をどうやって Pi-Hole に？<br>firewall でポート通してるみたいだけど、DoH って 443 使うじゃん？ Samsung が 443 で DoT とか使ったらどうなるの？特定の宛先だけ？<br>うちも似た設定だけど、Pi-Hole はやめて OPNSense の Unbound にリスト入れてる（あんま変わんなかったけど）。うちの Smart TV はひどすぎて抜線したわ（これで Dumb TV になって最高）。Chromecast 使おうと VLAN 分けてネットなしにしてみたけどダメだったな。" userName="vladvasiliu" createdAt="2025/05/06 06:17:29" color="#ff5c5c">}}




{{<matomeQuote body="前にシェアした labzilla.io のブログ見た？ firewall 設定は必須だよ。 443 全部じゃなくて、 public-dns.info のリストにあるパブリック DNS 宛てだけブロックするんだ。 Samsung QLED TV が Google:443 で DNS しようとしても OPNSense がブロックして Pi-Hole にリダイレクト（NAT もいるよ）。高い Smart TV を Dumb にしたくないしねw 電源入れると Pi-Hole のログがやばいことになるわ。 dig で Google:443 に飛ばしても Pi-Hole で見えるけど、ブラウザで開くと OPNSense がブロックする、みたいな。 853(DoT) は簡単ブロックだよ。" userName="h4kunamata" createdAt="2025/05/06 06:51:54" color="#ff33a1">}}




{{<matomeQuote body="うちも AdGuard と OPNSense で似た設定だよ。 DoH サーバーの IP リストなら、 dibdot/DoH-IP-blocklists にあるのも使えるよ（IPv6 もある）。" userName="illiac786" createdAt="2025/05/07 13:27:41" color="">}}




{{<matomeQuote body="それもいいけど、 public-dns.info のリストの方がずっと大きいよ。" userName="h4kunamata" createdAt="2025/05/07 23:26:05" color="">}}




{{<matomeQuote body="それもいいけど、 firewall で HTTP/S プロキシ立てて、他全部（ホワイトリスト以外）ブロックするってのはどう？" userName="silon42" createdAt="2025/05/06 11:39:23" color="">}}




{{<matomeQuote body="プロキシに対応してないデバイスもあるし、それだと UDP 通信（RTP とか QUIC とか）も全部ブロックすることになっちゃうよ。ネット使うのがすごく不便になると思う。" userName="illiac786" createdAt="2025/05/07 07:29:10" color="">}}




{{<matomeQuote body="Unbound と Pi-Hole を一緒に使う設定とか、DNS リクエストを全部強制リダイレクトするやり方で、分かりやすい最新ガイドないかな？前にやろうとしたけど、難しすぎて諦めたんだよね。" userName="dayone1" createdAt="2025/05/07 19:40:36" color="">}}




{{<matomeQuote body="前にリンクしたブログ（labzilla.io）見ればいいよ。強制するには firewall ルールが絶対必要。前は設定間違えてバイパスされちゃったんだよね。システムクラッシュで再構築した時に、正しいルールの場所が分かったんだ。シェアしたブログに全部書いてあるから、それ見れば大丈夫だよ。" userName="h4kunamata" createdAt="2025/05/07 23:22:51" color="#38d3d3">}}




{{<matomeQuote body="やってることはすごいしエラいと思うけど、61%もブロックされてないってことは、データまだ漏れてるってことだよ。追跡の精度は落ちるかもだけど、完全に防げてるわけじゃないよね。正確な線じゃなくて印象派の絵みたい、って感じかな。俺は Pollack の絵みたいに、全く追跡できない状態になりたいんだ。" userName="brewdad" createdAt="2025/05/06 05:53:21" color="">}}




{{<matomeQuote body="君の言いたいことはわかるよ。俺には全部の99%をブロックする必要はないんだ。<br>例えば、銀行アプリとかGoogle使って通知送ってるのが多いから、全部ブロックし始めたら何も使えなくなるよ。まあ、君みたいにもっとブロックできるのはすごいけど、俺はそこまでしてないな。ブロックするのに夜を徹したこと何回もあるけどね（笑）Redditは、static.reddit.comをブロックしたせいで今家で見れないんだ。<br>API問題以来、全然使わなくなったけど、前は毎日何時間も無駄にしてたからね。正直、やめて超ハッピーだよ（笑）唯一諦めたのはYouTubeだね。YouTube Premiumには価値があると思ってる。<br>Spotifyはマジで最悪。YouTube MusicはDJリミックスとか古い音楽とか、他では聴けない音楽が聴けるし、オフライン再生もできるけど、Spotifyはダメだったね。俺はYouTubeしか見ないよ。テレビニュースは今は全く役に立たないね。しっかりしたニュースチャンネルもあるし、とにかく、広告ブロックして無料版使うよりは、お金払って見てるよ。<br>だってさ、広告ありで音楽聴くとか無理でしょ？勘弁してよ（笑）" userName="h4kunamata" createdAt="2025/05/06 07:03:25" color="">}}




{{<matomeQuote body="HNによくいる「もうPi-Hole持ってるわ」って人向けに言うと、ローカルDNSを迂回するアプリやデバイス（例えばNew York TimesアプリはハードコードされたDNSサーバーを使うみたい）を修正するiptablesの設定が本文（TFA）に載ってるから読んでみて。試してないけど、これは良さそうだよ。<br>追記：返信で、ネットワーク作業があんまり得意じゃない俺はこの件で間違ってるかも、って言われたわ。だから、話半分で聞いてくれ。" userName="mikestew" createdAt="2025/05/05 15:52:09" color="">}}




{{<matomeQuote body="まあ、心配しないで。ブラウザとかはみんなDNS-over-HTTPSに移行してて、このレベルの制御はバイパスしてきてるから。ネットワークにTLS終端プロキシを置くか、このイタチごっこは諦めるしかないね。" userName="wang_li" createdAt="2025/05/05 16:23:26" color="#ff5c5c">}}




{{<matomeQuote body="ハードコードされたDoHサーバーに依存するやつも増えてて、ブロックやリダイレクトがますます難しくなってるよ。ルーターでPi-HoleやAdguard Homeを動かして、特定のリストに基づいてブロックする必要があるね（つまり[1]）。[1] https://github.com/dibdot/DoH-IP-blocklists" userName="elashri" createdAt="2025/05/05 16:04:55" color="#45d325">}}




{{<matomeQuote body="君が言うこのイタチごっこでは、今の「動き」は既知のDoHサーバーに対応するIPの厳選リストってことだけど、それはそれで良いとしてさ…<br>もし敵が、通信したい普通のホスト名（例: endpoint.samsung.com）と同じホスト名でDoHリクエストにも応答することにしたら、それってもう勝ち確の動きじゃない？<br>例えば、あるアプリやアプライアンスがendpoint.samsung.comにHTTPSで通信する場合、同じendpoint.samsung.com宛てのDoHリクエストをどうやってブロックするの？" userName="rsync" createdAt="2025/05/05 19:03:58" color="#ff5733">}}




{{<matomeQuote body="確かに、DoHはアメリカのめちゃくちゃニッチな問題、つまりプロバイダがユーザーのDNSログを売る能力があったことへの解決策だったんだよね。プライバシー保護がある普通の国ではそもそもそんなことはないんだ。<br>このモデルだと、DoHはローカルDNS制御を回避するから悪いことなんだよ。<br>アプリが常に独自の仕組みを使ったりサーバーをハードコードしたりできるのはわかるけど、DoHが救世主みたいに見られてるのが嫌なんだよね。ヨーロッパのユーザーには何のメリットもないし、デメリットしか増やしてないのに。" userName="wkat4242" createdAt="2025/05/05 22:21:32" color="#ff5c5c">}}




{{<matomeQuote body="公平に見て、Pi-Holeを動かすくらいギークな人なら、ブラウザでDoHをオフにする設定オプションを見つけるのに苦労することはないだろうね。" userName="gbuk2013" createdAt="2025/05/05 16:29:22" color="">}}




{{<matomeQuote body="あなたのコメント意味不明なんだけど。DoHプロバイダは依然としてリクエストをログして売れるからね。<br>DoHは中間者があなたのリクエストを盗み見たり、応答を偽造したりするのを防ぐものだよ。HTTPSと全く同じ。<br>2025年にインターネット経由で何かを平文で送るのは、もう犯罪的な過失だよ。" userName="diogocp" createdAt="2025/05/06 01:31:04" color="#ff33a1">}}




{{<matomeQuote body="ブラウザでDoHをオフにするんじゃなくて、広告ブロッカーをインストールしろよ。DNSブロックリストのポイントは、スマホとかテレビとか、設定できないデバイスの広告を取り除くことなんだから。" userName="int0x29" createdAt="2025/05/05 18:02:33" color="#ff33a1">}}




{{<matomeQuote body="DNSトラフィックを暗号化するのにHTTPSは必須じゃないんだよね。DNS-over-TLSは存在するけど、DNS-over-HTTPSに比べて全然普及してない。たぶん理由は、HTTPSトラフィックが全部ポート443を通るから、「検閲」が難しくなるんだと思う。DNSトラフィックが普通のウェブトラフィックと少し区別しにくくなるからね。<br>DNSパケットをHTTPペイロードにカプセル化するのは、どうも奇妙に感じるな。なんかDOCSISに似てる気がする。あれはイーサネットフレームをMPEG-2 Transport Streamパケットにカプセル化してるんだ（冗談じゃないよ）。" userName="koito17" createdAt="2025/05/06 01:57:26" color="#ff5c5c">}}




{{<matomeQuote body="DNSインターセプションをマジでやるならさ、<br>a) IPv4 onlyはもう終わってるってことにして（ってふりをして）、Aレコードのルックアップは受け付けないようにするんだ。<br>b) AAAAルックアップごとに新しいIPv6アドレスを返して、それを実際のアドレスにNATする（これでNAT64も使えるから、クライアントがIPv4ホストに繋がるようにできる）。<br>で、クライアントには設定したIPv6アドレスにだけ接続させる。<br>もし誰かがDNS以外でアドレス解決を忍び込ませても、クライアントは接続できなくなるってわけ。<br>（これ、めっちゃめんどくさいけど、まあそういうもんだよ）" userName="toast0" createdAt="2025/05/05 22:40:22" color="#ff33a1">}}




{{<matomeQuote body="80と443以外のポートはデフォルトでブロックされてるし、HTTPS越しの何でもかんでも通信も時間の問題だね。ちゃんと設定したTLS MITMプロキシがあれば、証明書ピン留めだけが覗き見を防げるけど、それだと接続もできなくなる。だから、セキュリティやプライバシー的には勝ちかもしれないけど、もし自分がそういう環境の中から安全なネットワークにVPN接続する必要があるなら、オープンインターネットとしては負けって言えるかもね…。" userName="baq" createdAt="2025/05/06 05:36:56" color="#ff5733">}}




{{<matomeQuote body="いや、それは修正方法じゃないし、そのiptablesの設定はルーターの上だよ。Port 53のDNSリクエストしかキャッチできない。ルーターじゃできないDoHはキャッチできないよ、それにはファイアウォールが必要だね。" userName="bongodongobob" createdAt="2025/05/05 17:32:53" color="#38d3d3">}}




{{<matomeQuote body="ポート番号で特定のプロトコルが決まるわけじゃないよ。Port 443で好きなこと何でも動かせる。あとさ、俺も全部HTTPSで動かすのはマジで悪いアイデアだと思う。でも、そうはならないと思うけどね。" userName="wkat4242" createdAt="2025/05/06 10:20:24" color="">}}




{{<matomeQuote body="勝手にUDP/TCPポートを開けるアプリ？それってApp Storeのポリシーで却下されるべきじゃないの？" userName="silverwind" createdAt="2025/05/05 16:11:14" color="">}}




{{<matomeQuote body="＞ 例えば、New York Timesアプリは独自にハードコードされたDNSサーバーを使ってるみたいだね。試してないけど、TFAにはその修正方法があるように見えるって。<br>TFAのあのコマンドは、Port 53のトラフィックをPi-Holeにリダイレクトするだけだから、アプリが独自の名前解決をするのを防ぐには不十分だよ。例えば、TelegramアプリにはDNS-over-HTTPSが内蔵されてるけど、あのiptablesチェーンじゃ何もできないんだ。" userName="ignoramous" createdAt="2025/05/05 16:02:23" color="#ff5733">}}




{{<matomeQuote body="証明書ピン留めって、最初の選択肢も無くしちゃうの？自分のトラフィックを検査するのがもうダメになるシステムになっていくのかな、何か見落としてる回避策ってある？" userName="mikevin" createdAt="2025/05/05 17:22:39" color="">}}




{{<matomeQuote body="できるよ。でもクライアント側の企業プロキシ/ファイアウォールは、本当にそうさせたくないと思ってるんだよね。まぁ、そういうもんだよ。" userName="baq" createdAt="2025/05/06 12:00:08" color="">}}




{{<matomeQuote body="残念！私はfortinet持ってるけど、これができるんだ…。あ、でもTLS 1.1までだったかな、それに遅いんだよね。ソフトウェアの名前忘れちゃったけど、前は終了させて再暗号化するツールがいくつかあったな。でもね、dnssecはそれ自体がまた別の課題なんだよ。" userName="notarealllama" createdAt="2025/05/05 16:29:21" color="">}}




{{<matomeQuote body="ていうか、今はもう自分のウェブブラウザすら完全にコントロールできないし、広告ブロッカーもどんどん弱体化してるんだよね。これはもう大変な苦戦だよ、マジで。" userName="hnuser123456" createdAt="2025/05/05 20:11:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺んちはAdguardに加えてZenarmorも動かしてるよ。これはDoHトラフィックを検知して遮断できるんだ。有料だけど、DoHが心配ならこれが一番簡単なブロックツールだと思う。うちでDoHを使おうとするのはパートナーのiPhoneだけだな。何度か試して失敗すると、trackerをブロックしてくれるAdguard DNSを使ってくれるよ。" userName="pimeys" createdAt="2025/05/05 21:56:43" color="#785bff">}}




{{<matomeQuote body="そういえば、piholeが落ちたらネットワークおかしくならない？前はワークステーションでDNS上書きしてたけど、そのiptables設定だと許可されてないDNSトラフィック全部ブロックしちゃうよね？" userName="tenacious_tuna" createdAt="2025/05/06 03:40:34" color="">}}




{{<matomeQuote body="AAAAルックアップごとに新しいIPv6アドレスを返して、それを実際のアドレスにNATする（NAT64でクライアントがIPv4ホストに繋がるようにできる）。<br>この技術はうちのAndroidファイアウォールアプリでまさに使ってるんだよ。クライアントのAAAA/Aリクエストなんて月に3.5万件も超えないから、IPv4もできる（ドメインのハッシュ値をRFC6598の予約サブネットにマッピング）。<br>あと（もっとシンプルに）ユーザー設定のリゾルバが名前解決しなかったIPへの接続を全部ドロップする機能もある。＞ （これ大変だろうけど、まあそういうもんだよね）<br>まったくだ。" userName="ignoramous" createdAt="2025/05/05 23:54:43" color="#ff33a1">}}




{{<matomeQuote body="このイタチごっこは続くね。次の世代はself hostedなarchive.phみたいなホストが出てきて、全部読み込ませてからPDFとかWeb 1.0みたいなファイルにまとめてくれるんじゃないかな。よく見るやつをプリロードしてくれるブラウザ拡張とか、需要に応じてレンダリング済みのサイトをまとめてtorrentで共有するサービスとかでもいいな。<br>追記：AIは嫌いだけど、広告を全部花の絵に置き換えてって言えたら最高だね。" userName="gosub100" createdAt="2025/05/05 23:14:20" color="#38d3d3">}}




{{<matomeQuote body="それはそうなんだけど、ホームネットワーク上の全デバイスでDoHを無効にしたいんだよね。ほとんどのデバイスは直接設定変更できないし。" userName="freedomben" createdAt="2025/05/05 17:58:02" color="">}}




{{<matomeQuote body="それはThe Internet Junkbusters ProxyとかPrivoxyがめっちゃ得意だったことだね。" userName="DrillShopper" createdAt="2025/05/06 02:00:11" color="">}}




{{<matomeQuote body="それからamazon sidewalkってのもあるけど、これはテレビのwifi基板引っこ抜くしかないらしいよ。" userName="woleium" createdAt="2025/05/05 18:52:00" color="">}}




{{<matomeQuote body="FirefoxではAdBlockersは無効化されてないよ。" userName="Larrikin" createdAt="2025/05/06 00:39:28" color="">}}




{{<matomeQuote body="”ブラウザでオフにしちゃダメ。自分で設定できるならad blocker入れなよ。DNS block listsのポイントは、スマホやTVとか設定できないものの広告を消すことだよ。”<br>そうそう、それに…<br>広告をブロックするだけじゃないんだよ。自分でコントロール/設定できないデバイスのいろんなtrackerとか、いらないこっそりした”telemetry”とか”updates”もブロックするためなんだ。" userName="nobody9999" createdAt="2025/05/05 21:03:16" color="#45d325">}}




{{<matomeQuote body="マシンをコントロールできるなら、努力次第でpinningはいつも破れるよ。でもIoTデバイスとなると、うん、もうそうなってるね。" userName="jcalvinowens" createdAt="2025/05/06 16:56:02" color="">}}




{{<matomeQuote body="ブラウザの設定でDoHを防いで会社のDNSを使わせるようにできるんだって。俺はPi経由でトラフィック流すために、全部のブラウザでこの設定してるよ。Pi-HoleじゃなくてunboundをPiで直接動かしてるんだけど、unboundの方が最初は設定大変だけど、Pi-Holeより機能多いんだ。例えばunboundならブロックリストでワイルドカードも使えるしね。<br>もちろん、ファイアウォールレベルで既知のDoHサーバー全部ブロックしたり、ルーターにPiをDNSとして使うように強制したりするのと併用しても全然大丈夫だよ。" userName="TacticalCoder" createdAt="2025/05/06 01:18:48" color="#45d325">}}




{{<matomeQuote body="ブレーカーが何回か落ちて、ルーターが壊れちゃったんだ。もう10年近く前のルーターだから、別に驚かないけどね。<br>そのせいでPi-Holeも一時的に使えなくなってるんだ。<br>Pi-Holeで”インターネットと戦う”のに時間かけてたけど、今回壊れてみて、もっと少ないウェブサイトだけ見て、あんまり接続機器を持たずに、外で作業したり本読んだりする方がいいなって感じてるよ。<br>Javascriptブロックもかなり効果あるけど、結局、変なウェブサイトとかウェブアプリとかを避けるのが唯一の長期的な解決策な気がするな。" userName="everdrive" createdAt="2025/05/05 20:20:56" color="">}}




{{<matomeQuote body="俺も”技術との付き合い方を間違えてる”って強く感じてる一人だよ。よくネタにもなるけど、技術が私たちのためにあるんじゃなくて、私たちが技術のためにあるみたいになっちゃってるよね。<br>君のアプローチいいと思うな。技術とは軽く付き合う感じで、役立つところで使って、そうじゃないところは無視するってやつ。<br>もちろん、無視できない時は難しいんだけどね、それもまた大変なことだよね。" userName="mberlove" createdAt="2025/05/06 17:16:40" color="">}}




{{<matomeQuote body="Pi-holeがたまに普通のウェブサイト見れなくしちゃうこと、みんなどう対処してる？<br>数ヶ月使ってたんだけど、ある日支払いサイトにログインしようとして30分もダメで、Pi-hole動いてたの思い出したんだ。<br>特定のURLをホワイトリストに入れればいいのは分かってるんだけど、その時は諦めてPi-hole止めちゃったよ。" userName="vagab0nd" createdAt="2025/05/12 01:58:45" color="">}}




{{<matomeQuote body="まず、これはPi-Holeへの不満じゃなくて、企業が広告を組み込む方法への不満ね。<br>Pi-Hole使ってて困るのが、広告がないと動かないサービス（Paramount+とか）や、Google検索の広告リンクが機能しないこと。<br>これらの回避策知ってる人いる？Pi-Hole自体は本当に気に入ってるんだけどね。(友達に”黙ってろ”って言われるけど笑)<br>追記：記事に書いてたホワイトリスト登録とか、Google広告については広告ブロッカーを再度入れるのがいいかもって思った。" userName="xracy" createdAt="2025/05/05 18:10:21" color="#ff5c5c">}}




{{<matomeQuote body="EdgeブラウザにuBlock Origin入れたら、YouTubeも広告なしで完璧に見れるよ。" userName="chihuahua" createdAt="2025/05/05 18:18:19" color="">}}




{{<matomeQuote body="Firefoxもちゃんと動くよ。俺のuBlockでは1020万件ブロックしてるけど、YouTubeとか他のサイト全部、広告なしで完璧に見れてる。" userName="squigz" createdAt="2025/05/05 23:53:17" color="">}}




{{<matomeQuote body="YouTubeが壊れたのは、多分 `jnn-pa.googleapis.com` がブロックリストに入ってたからじゃないかな。これを「Exact allow」リストに追加するといいよ。<br>`googleadservices.com` も許可できるけど、俺的にはやりすぎだと思うな。俺はそういう（広告）結果はクリックしない習慣がついたよ。" userName="happyhacks" createdAt="2025/05/06 03:22:52" color="#38d3d3">}}




{{<matomeQuote body="あと、YouTubeにログインしないでおくのも、広告ブロッカー対策を避けるのには有効みたいだよ。今のところはね。" userName="bluescrn" createdAt="2025/05/06 08:27:22" color="#785bff">}}




{{<matomeQuote body="あれを直すにはさ、Pi-HoleのUIからログを見て、ブラウザの邪魔してるドメインをホワイトリストに入れればいいんだよ。Googleの検索広告の問題も俺はすぐ直せたんだ。他のサービスが依存してるやつも、また探してホワイトリストに入れれば、そんな難しくないよ。残念ながら、Pi-Holeですべてを止められるわけじゃないんだけどね。" userName="NoPicklez" createdAt="2025/05/06 03:35:37" color="#45d325">}}




{{<matomeQuote body="それも一つの手だよね、うん。でもさ、今の世の中で敵対的じゃない製品見つけるのってマジ難しいんだよ。だいたい、どれくらい敵対的か、そして自分がそれに耐えられるか、またはコントロールできるかの問題になるんだよね。" userName="NoPicklez" createdAt="2025/05/08 03:07:43" color="">}}




{{<matomeQuote body="Googleの問題だけど、俺は過去2週間Kagiを検索ツールとして使ってて、すげー気に入ってるんだ。広告なしで最高の結果だし、パーソナライズもできるんだよ。今は無料版だけど、たぶんすぐ課金すると思う。" userName="perdomon" createdAt="2025/05/06 13:54:36" color="#ff5733">}}




{{<matomeQuote body="コストと簡単さで言えば、俺的にはNextDNSの方が断然楽だよ。スマホとかPCに気の利いたアプリがあって、外出先でもオンオフできるし、ルーターにも設定できるんだ。技術詳しくない家族とかにも優しくてマジ楽。" userName="itchyouch" createdAt="2025/05/05 16:42:29" color="#ff5733">}}




{{<matomeQuote body="俺は自分のデバイスはもちろん、技術詳しくない家族のTVとかスマホでも使ってるんだよね。でも心の奥底で、いつかあいつらが態度変えてデータ業者に売って、俺の通信履歴が全部そこに集められるんじゃないかって予感がするんだ。前は安いVPSで個人用のAdGuard-Homeを動かしてたんだけど、NextDNSが非推奨にしてからやめちゃったんだ。また動かし始めなきゃいけないかもなー。" userName="n_ary" createdAt="2025/05/05 18:36:43" color="#785bff">}}




{{<matomeQuote body="俺、数年前にPi Hole試したんだ。最近NextDNSを知って、自宅のルーターを設定して使ってみたら、ワオ、マジでずっと簡単だわ。" userName="glial" createdAt="2025/05/06 01:57:06" color="">}}




{{<matomeQuote body="NextDNSは、ブロックを簡単にオンオフできるアプリを探してる人には答えにならないよ。iOSとiPadOSのNextDNSアプリは5年近く更新されてなくて、オンオフスイッチが壊れてるんだ（これは俺が何年も悩まされてるから分かる）。iOS/iPadOSでアプリ使うなら（VPNプロファイルじゃなくて）、NextDNSがオンか知りたかったらいつでもtest.nextdns.ioをブラウザで開いて、「unconfigured」か特定のエンドポイントが表示されるか確認しなきゃダメ。俺にとっては、これでランダムに動いたり動かなかったりするのが証明されちゃった感じ。" userName="AnonC" createdAt="2025/05/06 02:58:24" color="#ff5733">}}




{{<matomeQuote body="俺はPi-hole大好きなんだけど、彼が155ドルのキットとキーボード、マウス、モニター推奨してるのにマジビックリしたわ。俺のPi-holeはPi Zero 2Wで動いてて、電源はUSB接続。設定は全部SSHでやって、費用は25ドルくらいだった。ネットワーク設定できるなら、SSHも絶対分かるはずだよ。" userName="perdomon" createdAt="2025/05/06 12:06:07" color="#38d3d3">}}




{{<matomeQuote body="FWIW、Pi Zero 2ですらオーバースペックだよ。俺のPi-holeは、初代のPi Zeroに同じmicroSDカード使って、ルーターのUSBポートから電気もらって3年近く動いてるもん。" userName="sgbeal" createdAt="2025/05/06 16:09:18" color="#ff33a1">}}




{{<matomeQuote body="オリジナルの Pi zero に USB Ethernet つけても普通に動くよ。" userName="tonymet" createdAt="2025/05/06 14:07:26" color="#38d3d3">}}




{{<matomeQuote body="1. それ全くその通りなんだけど、見つけにくかったんだよね。<br>2. 最初は WiFi で DNS やるの躊躇してたんだけど、コメント読んだらみんな全然問題ないみたいで。うちのもルーターのすぐ隣で半年動いてるけど、全然遅延とかないから大丈夫だと思うよ。" userName="perdomon" createdAt="2025/05/06 15:00:09" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞ WiFi で DNS やるの躊躇してたんだけど、コメント読んだらみんな全然問題ないみたいで<br>ぶっちゃけ、それ俺も最初の懸念だったんだ。ほぼ３年経つけど、Pi-Hole を WiFi 経由で動かしてて一度も問題起きたことないよ。" userName="sgbeal" createdAt="2025/05/06 16:11:09" color="#38d3d3">}}




{{<matomeQuote body="使えるのは合ってるけど、DNS は低遅延が一番重要なサービスなんだよね。干渉のない良い WiFi なら平均 2ms、標準偏差 0.2-0.4ms の ping 分布が得られる。Ethernet は平均 0.2ms、標準偏差 0.01 SD。<br>問題になるのは外れ値で、電波干渉があると起こる。WiFi は基地局が干渉回避のためにバンドを移動するダイナミックなシステムだからね。" userName="tonymet" createdAt="2025/05/06 17:01:23" color="#45d325">}}




{{<matomeQuote body="＞ 干渉のない良い WiFi なら平均 2ms、標準偏差 0.2-0.4ms の ping 分布が得られる<br>俺は家庭内 LAN の用途では、これらの速度に機能的な差はないと思うな。どっちの値も人間が違いを知覚できるレベルよりはるかに低いし。" userName="sgbeal" createdAt="2025/05/07 10:14:53" color="#ff33a1">}}




{{<matomeQuote body="同意だけど、テストしないと分からないよ。Ethernet の結果はケーブルが悪くない限りアプリ間でめちゃくちゃ安定してる。WiFi は同じ場所でも日によって10000倍とか変動する可能性があるんだ。" userName="tonymet" createdAt="2025/05/07 17:09:37" color="#ff5733">}}




{{<matomeQuote body="大体は大丈夫だけど、特殊なケースだけね。初代 zero W と 2.4GHz ラジオだと、電子レンジがマジで干渉源だった。<br>USB は実験として使ってただけで、普通の zero を他にどうしたらいいか分からなかったんだ。<br>5ドルのボードがこんなにうまく動くなんてすごいね！君の投稿見れて嬉しかったよ。" userName="tonymet" createdAt="2025/05/06 16:57:40" color="#ff5c5c">}}




{{<matomeQuote body="俺が欲しいのは Pi-Hole の上にファイアウォールみたいな機能だな。Pi-Hole 経由じゃない接続や、ブロック対象ドメインに解決される RDNS はブロックしたい。DoH とかでネットワーク制御回避するデバイスが増えたけど、ルーティングは必要だから遮断は可能なんだ。" userName="iramiller" createdAt="2025/05/05 19:57:46" color="#45d325">}}




{{<matomeQuote body="記事の著者だよ（mpweiher さん、投稿ありがとう）。Pi-Hole は、間違いなく、うちの家庭で最高のインフラ投資だった。今、200万以上のドメインをブロックしてるけど、パフォーマンスはすごく良いよ。" userName="dend" createdAt="2025/05/05 20:14:38" color="#45d325">}}




{{<matomeQuote body="なんで DNS レベルでしかブロックしない Pi-hole をわざわざ使うのか、全然理解できないな。DOM レベルでブロックできる uBlock Origin を使えばいいのに。uBlock Origin の方がセットアップ簡単だし安いし、メンテも少ないし、もっと効果的だよ。" userName="jstanley" createdAt="2025/05/05 16:22:25" color="#38d3d3">}}




{{<matomeQuote body="Pi-holeならスマートデバイス（TVとか食洗機とか）のテレメトリもブロックできるし，スマホが繋がるVPN上で動かせば，スマホアプリの広告やトラッキングもブロックできるんだよ．記事にも書いてあったけど，Pi-holeはブラウザの広告ブロックを補完するもので，置き換えるもんじゃないからね．" userName="dvratil" createdAt="2025/05/05 16:36:56" color="#45d325">}}




{{<matomeQuote body="俺はそういうデバイス，ネットに繋がないだけだけどね．" userName="timbit42" createdAt="2025/05/05 18:01:36" color="">}}




{{<matomeQuote body="TVでYouTube見たい人もいるんだって．" userName="ThrowawayTestr" createdAt="2025/05/05 18:45:08" color="">}}




{{<matomeQuote body="俺はTVでYouTube見てるよ．FirefoxとuBlock Origin使ってね．TVにノートPC繋いでBluetoothキーボード使ってるんだ．今まで見たどのスマートTVより，全然いい体験だよ．" userName="jstanley" createdAt="2025/05/05 18:51:14" color="#45d325">}}




{{<matomeQuote body="なんで一部の人がそのセットアップやりたくないのか，正直わかんないの？" userName="Mashimo" createdAt="2025/05/06 08:13:32" color="">}}




{{<matomeQuote body="いや，反対する理由がバカげてるね．Firefoxの体験はどんなスマートTVアプリより全然いいし，簡単でしっかり広告ブロックもできるんだから．なんでみんなやりたがらないのか一番の推測は，宣伝されてないことはやらないように条件づけられてるせいかも．ノートPCをTVに繋いで最高のスマートTV体験をしよう，なんて広告誰も出してないからね．" userName="jstanley" createdAt="2025/05/06 10:25:55" color="#ff5733">}}




{{<matomeQuote body="いいところは言われなくてもわかるよ，理解してる．でも，ソファに座ってスマホでいい動画見つけて，ボタン一つでTVで見たいって人がいる理由もわかるんだ．PCの起動時間もアップデートもなしで，寝ながらキーボード入力とかしたくないんだよ．ファンレスPC買ってunattended-upgrades付きのLinux入れて，もっとすごいのできるってのもわかる．でも，ほとんどの人はやり方知らないか，そんな面倒なことはしたくないんだよ．" userName="Mashimo" createdAt="2025/05/06 11:23:31" color="#ff5733">}}




{{<matomeQuote body="俺の場合はこれが理由かな：<br>ー スマホアプリ，TV，Safari，Chromeの中で動いてほしいから<br>ー Chromeの拡張機能を信用できないから．広告ブロッカー入れる時に，ブラウザに表示される全部読める可能性あるよ，ってめっちゃ怖い警告が出るんだ．<br>こういう拡張機能は途中で持ち主が変わって，新しいコード送られるリスクもある．銀行やメールの画面を勝手に送られるのはイヤなんだよ．" userName="FredPret" createdAt="2025/05/05 17:24:40" color="#785bff">}}




{{<matomeQuote body="それに，ほとんどの人がリビングに置きたいと思ってるよりずっと大げさなんだよ．うちの奥さんは，たまにYouTubeに広告が出るくらいなら，変なパソコンがずっと繋がってる方がイヤだって言ってる．片手で操作できるリモコンより扱うのが難しいってのもあるしね．" userName="dividedcomet" createdAt="2025/05/05 19:14:46" color="#ff33a1">}}




{{<matomeQuote body="”ブラウザに表示される全部読める可能性あるよ”<br>ブロッカーがページの中身見れなかったら，どうやって動くのかわかんないけどね…" userName="swiftcoder" createdAt="2025/05/05 17:34:53" color="">}}




{{<matomeQuote body="uBlockはブラウザ専用だから、他のアプリやスマートデバイス、ゲーム機には効かないんだよね。だから両方使うのが一番いいよ。" userName="crtasm" createdAt="2025/05/05 16:28:37" color="#45d325">}}




{{<matomeQuote body="俺も両方使ってるよ。ブラウザ以外の通信もブロック。Pi-Holeが動いてないときはすぐわかる。メンテが少ない件だけど、普段全然気にしてないよ。自動更新だし、必要なら勝手に再起動。ほぼ放置で大丈夫だから、存在忘れるくらい楽。" userName="Twirrim" createdAt="2025/05/05 17:21:23" color="#ff33a1">}}




{{<matomeQuote body="”uBlockはブラウザだけ...”うん、でもさ、他のデバイスやアプリってDoHに移行する（あるいはもうしてる）んじゃない？そうなるとPi-HoleとかNextDNSって意味なくなるよね...TLS通信全部プロキシしてブロックすればいいけど、欲しい通信とDoHが同じFQDNだったら手詰まり？" userName="rsync" createdAt="2025/05/05 19:08:10" color="#ff5733">}}




{{<matomeQuote body="そうそう、だから俺はDNSレベルでブロックしてるんだ。" userName="FredPret" createdAt="2025/05/05 18:11:05" color="">}}




{{<matomeQuote body="”キーボードで動画探すのが...”って、また君は自分の話？ソファで寝転がってる人にはキーボードなんて邪魔なだけ。YouTubeアプリからコピペしてFirefoxアプリ経由でPCに送るとか、キャストボタン一発で済むのに超ダルい。スマホばっか使う人も多いんだから、YouTubeアプリ使うのが楽なんだよ。" userName="Mashimo" createdAt="2025/05/06 14:38:25" color="">}}




{{<matomeQuote body="スマホだからって、必ずしも追跡や広告があるわけじゃないよ。GrapheneOSとかF-Droidとか見てみて。" userName="akimbostrawman" createdAt="2025/05/06 09:06:16" color="#ff5733">}}




{{<matomeQuote body="あー、YouTubeアプリ使うのはダメだよ！Firefoxでウェブ版なら広告ブロックできるのにさ。" userName="jstanley" createdAt="2025/05/06 20:47:20" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
