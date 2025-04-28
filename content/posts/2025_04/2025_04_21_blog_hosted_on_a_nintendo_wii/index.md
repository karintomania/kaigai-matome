+++
date = '2025-04-21T00:00:00'
months = '2025/04'
draft = false
title = 'まじかよ！Wiiでブログ運用とか凄すぎ！セキュリティは大丈夫なの？'
tags = ["Wii", "ブログ", "NetBSD", "サーバー", "組み込みシステム"]
featureimage = 'thumbnails/purple4.jpg'
+++

> まじかよ！Wiiでブログ運用とか凄すぎ！セキュリティは大丈夫なの？

引用元：[https://news.ycombinator.com/item?id=43754953](https://news.ycombinator.com/item?id=43754953)

{{<matomeQuote body="知らない人もいるかもだけど、「SSL Added and removed here!」の画像は、2013年にNSAからリークされた、Googleのデータセンター間の暗号化されてない通信を示す図が元ネタなんだって。[1]にソースあるよ。<br>[1] https://arstechnica.com/tech-policy/2013/10/new-docs-show-ns…" userName="tech234a" createdAt="2025-04-21T20:19:24" color="#38d3d3">}}

{{<matomeQuote body="昔、Top Secretの許可持ってて政府の仕事してた教授がいたんだけど、この件はまだ機密解除されてないから言えないんだって。でも授業で、これとそっくりの丸が二つ並んだ図を使って説明してて、気づいた人いたかな。" userName="easterncalculus" createdAt="2025-04-21T23:50:09" color="">}}

{{<matomeQuote body="アメリカ政府が潜水艦とか使ってアメリカ企業の通信をハッキングしてアメリカ国民をスパイしてたって考えると、ヤバすぎじゃない？しかも2013年に大騒ぎにならなかったのが信じられない。" userName="CobrastanJorji" createdAt="2025-04-22T00:44:51" color="">}}

{{<matomeQuote body="当時、明らかに法律破ってる政治家を訴えなかったことが、今の政治家が法律を完全に無視する時代につながったと思う。James Clapperが議会で嘘ついたのに、何の罰もなかったのも同じ。法律に意味がないってわかったから、政治家はやりたい放題になったんだよ。" userName="coldpie" createdAt="2025-04-22T13:14:09" color="#38d3d3">}}

{{<matomeQuote body="Watergate<br>Iran-Contragate<br>イラクのイエローケーキ<br>例はいっぱいあるよね。" userName="canuckintime" createdAt="2025-04-22T16:14:35" color="">}}

{{<matomeQuote body="その:¬)顔は、セキュリティ関連のチャンネルでカスタム絵文字として使うと最高。" userName="jsheard" createdAt="2025-04-21T21:15:54" color="">}}

{{<matomeQuote body="横向きバージョンもあるよ：˙ ͜ʟ˙" userName="indrora" createdAt="2025-04-23T01:54:59" color="">}}

{{<matomeQuote body="トップシークレットのラベルの下に、明らかに急いで書いた図があるのが笑える。" userName="_fat_santa" createdAt="2025-04-21T20:59:01" color="">}}

{{<matomeQuote body="ほとんどの人はどんなことでも軽く扱えると思う。[1]医療現場とか、もっとヤバい組織でも同じことが起きてる（第二次世界大戦の証言とか）。<br>[1] 経験則だけどね。" userName="RestartKernel" createdAt="2025-04-22T01:35:56" color="">}}

{{<matomeQuote body="デザイン面接みたい。" userName="pyfon" createdAt="2025-04-21T21:11:03" color="">}}

{{<matomeQuote body="SSL追加したり削除したりしてたんだって！<br>あとCloudFlareも！" userName="encom" createdAt="2025-04-21T21:48:18" color="">}}

{{<matomeQuote body="Cloudflareって昔は暗号化されてないバックエンドもサポートしてたけど、今はオリジンサーバーにもSSLを推奨してるよね。Cloudflare署名の「オリジン証明書」を使うこともあるけど、結局SSLだもんね。" userName="carlhjerpe" createdAt="2025-04-22T12:35:01" color="">}}

{{<matomeQuote body="そのシャツ、昔持ってたんだけど、どこ行っちゃったかなー。<br>https://philkast.com/2013/10/30/spying-tshirt.html" userName="conradev" createdAt="2025-04-22T02:35:50" color="">}}

{{<matomeQuote body="Wiiのステータスページ見てて一番驚いたのは、RAMが88MBしかないこと。SoCに24MB内蔵されてて、GDDR3が64MBだって。<br>ntpdがシステムメモリの15%も使ってたってことは、約13MBも使ってたってことだよね。時間サーバーの数を減らせば改善するかな？俺のシステムだと、debian poolから9個くらいのサーバーを追跡してるみたい。<br>XBox 360は当時でも512MBもあったのに、Wiiはすごいよね。" userName="spauka" createdAt="2025-04-22T01:01:37" color="#ff33a1">}}

{{<matomeQuote body="1995年頃の最初のNetBSDボックスを思い出すなー。4-8MBのRAMでメールサーバー、自作のウェブメールサーバー、複数のユーザーがログインしてMUDやIRCで遊んでたんだから。" userName="qingcharles" createdAt="2025-04-27T01:40:51" color="#ff33a1">}}

{{<matomeQuote body="＞NetBSDを再起動すると、NetBSDアプリだけじゃなくてコンソール全体が再起動して、カーネルパッチやシステムアップデートの後にWiiメニューに戻っちゃうんだよね。”<br>Priiloaderをインストールして、Homebrew ChannelかNetBSDの.dolファイルを自動起動するようにすれば回避できるよ。" userName="greeniskool" createdAt="2025-04-21T20:04:56" color="#45d325">}}

{{<matomeQuote body="24年以上前のプロジェクトを思い出した。誰かがGBA用のウェブサーバーを作ったんだよね。<br>当時は魔法みたいに思えて、よくそのサイトを見てたなー。<br>https://web.archive.org/web/20030204043536/http://fivemouse...." userName="janvdberg" createdAt="2025-04-22T05:24:37" color="">}}

{{<matomeQuote body="こういうのめっちゃ好き！昔、家のRobot Vacuumのdockerコンテナでブログをホストしてたんだよね。Vacuumがベッドの下に入ってwifi信号をロストして、アプタイムアラートが来るようになったから、まともなホストに変えたけど！" userName="kn100" createdAt="2025-04-22T01:47:26" color="#ff33a1">}}

{{<matomeQuote body="え、マジで？どうやったのかマジで教えてほしいんだけど！" userName="skiman10" createdAt="2025-04-22T03:01:56" color="#45d325">}}

{{<matomeQuote body="Wiiのhomebrewの経験からすると、小さいSDカードの信頼性の問題は、exploit後にUSB thumbdriveに交換すれば解決できるかも。ポートは2.0だけど、プロセッサがボトルネックになるだろうし。" userName="joseda-hg" createdAt="2025-04-21T19:09:28" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="FYI。Photo Boothの代わりにQuicktime Playerで「新規ムービー収録」を使えば、画像の反転問題を解決できると思うよ。" userName="sadeshmukh" createdAt="2025-04-21T21:14:10" color="#ff5c5c">}}

{{<matomeQuote body="うん、OBSでもいいね。" userName="mattl" createdAt="2025-04-22T05:16:34" color="">}}

{{<matomeQuote body="＞macOSのPhoto Boothでキャプチャカード使ってたんだけど、ビデオフィードの反転を無効にできなかったんだよね。<br>OBSを使って。" userName="RockRobotRock" createdAt="2025-04-21T19:19:41" color="">}}

{{<matomeQuote body="Photo Booth使ってたのが意外だった。iOSデバイスみたいにQuickTime Playerで録画すると思ってた。" userName="macshome" createdAt="2025-04-21T20:25:36" color="">}}

{{<matomeQuote body="パフォーマンスは悪くないね。NintendoのTCPスタックを使ってないのは明らかだ。Wiiのはマジで酷かったから。" userName="jandrese" createdAt="2025-04-21T19:58:14" color="#45d325">}}

{{<matomeQuote body="Nintendoのネットワーキングは、どのゲーム機でもなぜかイマイチなんだよね。" userName="Starlevel004" createdAt="2025-04-21T21:22:08" color="">}}

{{<matomeQuote body="ニンテンドーのマイナーな機能に関わる、最高にひどい経験をしたことがあるんだ。<br>ネットワーキングっていうのはコンソールスタックのことだと思うけど、それなら経験あるよ…うん、マジで良くない。ウェブサービスも（10年以上前だから、今はマシになってるといいけど）マジで酷かった。<br>当時も今も思うのは、彼らはあんまり気にしてないみたいで、ゲームと差別化されたハードウェアでイノベーションを起こすことに集中してるってこと。<br>若い頃の俺は「時代遅れ」だって思ってたけど、今はリスペクトしてる。" userName="addisonj" createdAt="2025-04-21T22:13:50" color="#38d3d3">}}

{{<matomeQuote body="昔はNintendo Switchのために全てのUDPポートを開放しろって言ってたよね。今は1024から65535を開放しろって言うだけになった。" userName="goosedragons" createdAt="2025-04-21T22:45:50" color="">}}

{{<matomeQuote body="信じない人のためにソース：https://en-americas-support.nintendo.com/app/answers/detail/…<br>(「PCまたはスマートデバイスで」の4番目のポイント)" userName="tom1337" createdAt="2025-04-21T23:40:02" color="">}}

{{<matomeQuote body="＞当時も今も変わらないのは、彼らはあまり気にしていないように見えるってこと。ゲームと差別化されたハードウェアでイノベーションを起こすことに集中してるんだよね。＜br>そういうことを専門とする会社にネットワーク関連のニーズをアウトソースすればいいのにって思うよね。" userName="yellowapple" createdAt="2025-04-22T01:07:24" color="">}}

{{<matomeQuote body="優先順位を尊重するよ。最高のウェブサービスは必要なくて、マリオカートオンラインをプレイするのに十分であればいいんだから。" userName="SuperHeavy256" createdAt="2025-04-21T22:23:34" color="#ff33a1">}}

{{<matomeQuote body="興味深いね！当時何がそんなに酷かったのか、もっと詳しく教えてくれないかな？(Nintendoの弁護士は読まないで)" userName="hamish-b" createdAt="2025-04-21T23:02:21" color="">}}

{{<matomeQuote body="WiiのTCPスタックに割り当てられたメモリがすごく少なかったから、ほとんどウィンドウを開けなかったし、bandwidth delay productも小さかったんだよね。だから、ローカルネットワークとNintendoのサーバーに十分な帯域幅があっても、システムのアップデートに時間がかかったんだ。<br>サーバーの実装も悪くて、TCP PEPs[1]をサーバーの前に設置して、なんとか許容できるパフォーマンスを得たらしい。<br>WiiはFast Ethernet(100Mbps)ポートを最大限に活用できる計算能力とメモリを持ってるのに、設計上の問題で実際には1Mbpsも出せなかったんだ。システムのアップデートが大きくなるにつれて、この問題が深刻になってきてたんだよね。<br>[1] https://en.wikipedia.org/wiki/Performance-enhancing_proxy" userName="jandrese" createdAt="2025-04-22T02:16:35" color="#785bff">}}

{{<matomeQuote body="Wiiは専用のARMプロセッサ(コミュニティではIOSと呼ばれてる)で別のOSを実行してて、ディスクアクセス、内部/外部ストレージ、特にネットワークなど、デバイスの入出力の大部分を担当してたんだ。TCP/IPスタックは完全にそこで実装されてたんだよね。<br>IOSはメインCPUより弱いCPUで動作するけど、メインシステムのメモリの一部に(排他的に使用するために)アクセスできたんだ。でも、メインCPUで実行されてるゲームを邪魔しないように、通常は12〜16MBだったんだ(https://wiibrew.org/wiki/Memory_map)。<br>メインPPC CPUで実行されてるコードは、ほとんどのIO関連ハードウェアに直接アクセスできなかったんだ(GPU/ディスプレイ出力と有線コントローラーだけ)。だからLinuxポートもIOSを介してハードウェアアクセスをプロキシする必要があったんだ。でも、完全なブートプロセスをリバースエンジニアリングした後、特別なレジスタを介してフルアクセスを可能にする代替IOSを作成することができたんだ(https://wiibrew.org/wiki/MINI)。" userName="hueho" createdAt="2025-04-22T13:38:57" color="#ff33a1">}}

{{<matomeQuote body="＞当時も今も変わらないのは、彼らはあまり気にしていないように見えるってこと。ゲームと差別化されたハードウェアでイノベーションを起こすことに集中してるんだよね。＜br>マルチプレイヤーゲームでイノベーションを起こして、pingが100msくらいのwifiチップを搭載するのは、目標が矛盾してるように思える。" userName="Starlevel004" createdAt="2025-04-22T19:58:24" color="">}}

{{<matomeQuote body="WFCのコードはちょっと古いし、セキュリティも甘いんだよね。WiiのDNS設定を変更するだけでWFCゲーム(マリオカートWii)をプレイできるバグがあって…。証明書の特定のフィールドを設定すると、無効な証明書でもOKになっちゃうんだ。(これは韓国版で修正済)<br>もう一つは、ネットワークライブラリにバッファオーバーランによるRCEがあって、最初のメッセージの長さをチェックせずにデータをコピーしちゃうんだ。<br>だから、DNS設定を特定のDNSサーバーに変更してマリオカートWiiを起動するだけで、WFCサーバーへのDNSルックアップが行われ、不正な証明書の検証をパスして、エクスプロイトを含むメッセージを受信してゲームをパッチできるんだ。<br>WFCが終了して11年経っても、Wiiのゲーム(たぶんマリオカートWii)をオンラインでプレイできるんだよ。" userName="jkrejcha" createdAt="2025-04-21T20:55:28" color="#38d3d3">}}

{{<matomeQuote body="細かいことを言うようだけど、CaddyインスタンスをWiiに移動するか削除するまでは、ブログは完全にWiiでホストされてないよ！<br>ナイスワーク。" userName="bennydog224" createdAt="2025-04-21T19:29:52" color="">}}

{{<matomeQuote body="作者はTLSを無効にすればよかったのに！そうすれば、完全にWiiでホストされたウェブサイトになったのに！" userName="Wowfunhappy" createdAt="2025-04-21T20:15:02" color="">}}

{{<matomeQuote body="lol、rare wowfun sightingで嬉しくなった(nacho@atmosphirよりこんにちは)" userName="pedroslopez" createdAt="2025-04-21T20:42:17" color="">}}

{{<matomeQuote body="😊" userName="Wowfunhappy" createdAt="2025-04-22T10:54:26" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="この投稿についてfediverseでライターが告知してたんだけど、それがフィードに流れてきてマジ笑った。" userName="OuterVale" createdAt="2025-04-22T01:35:44" color="#38d3d3">}}

{{<matomeQuote body="ハグされた。<br>もしかしたら次の投稿は「Blog is hosted on a Nintendo Wii (running Varnish)」って言うかもね。" userName="benwilber0" createdAt="2025-04-21T18:57:51" color="">}}

{{<matomeQuote body="ちょっと抵抗してるね。<br>https://blog.infected.systems/status/ でWiiがどんな感じかplaintextで見れるよ(もし動いてたら。ブログによると15分ごとに更新されるらしい)。<br>https://archive.is/6QvVA" userName="kotaKat" createdAt="2025-04-21T19:25:39" color="#ff5c5c">}}

{{<matomeQuote body="今のところちゃんと表示されるよ。" userName="codetrotter" createdAt="2025-04-21T19:02:15" color="">}}

{{<matomeQuote body="OPはこの瞬間のために準備してたんだね:<br>https://blog.infected.systems/posts/2024-12-04-hugs-of-death…" userName="beeandapenguin" createdAt="2025-04-21T23:02:13" color="#ff5733">}}

{{<matomeQuote body="＞https://blog.infected.systems/posts/2025-04-21-this-blog-is-…<br>WIIでウェブサーバーを動かすブログでこんなに正確に特定されるとは思わなかった。" userName="zoezoezoezoe" createdAt="2025-04-22T14:00:31" color="#785bff">}}

{{<matomeQuote body="https://web.archive.org/web/20250421184947/https://blog.infe…" userName="chandlerswift" createdAt="2025-04-21T19:25:40" color="">}}

{{<matomeQuote body="ロードアベレージがマジ低い(15分で0.06)のすごい。" userName="Bluecobra" createdAt="2025-04-21T20:12:40" color="#ff5733">}}

{{<matomeQuote body="ステータスページ、更新されてないみたいだけど…" userName="cactusplant7374" createdAt="2025-04-21T21:24:20" color="">}}

{{<matomeQuote body="更新頻度によるけど、ステータスページは15分おきにしか更新されないよ。<br>＞簡単なシェルスクリプトを組んで、crontabから15分おきに実行して、システムの統計情報をwebroot内の基本的なHTMLファイルに出力してるんだ。" userName="spauka" createdAt="2025-04-22T00:33:52" color="">}}

{{<matomeQuote body="もう一度確認したら、ちゃんと15分おきに更新されてるね。" userName="Bluecobra" createdAt="2025-04-22T00:35:18" color="">}}

{{<matomeQuote body="これはマジですごい。NESでも同じようなことってできると思う？例えばシンプルなCGIのウェブサイトとか。" userName="allegrotim" createdAt="2025-04-21T19:24:33" color="#ff33a1">}}

{{<matomeQuote body="残念ながら、有効なHTTPレスポンスができるようになる頃には、SNESというより、SNESに何かを接続したような状態になると思う。例えば、オリジナルのFamily Computer Network Systemのアドオンは、モデムとして機能するためだけでも、元のコンソールよりも多くのRAMとCPUパワーを搭載していた。ましてやCGIのような「基本的な」ことなんてね。<br>Wiiはおそらく、これに必要なハードウェアがすべて内蔵されている最初のNintendoコンソールだよ（Nintendo DSでも、RAM拡張パックをGBAスロットに接続せずにLinux + サーバーをメモリに収めることができるかどうかによっては可能かも）。" userName="zamadatix" createdAt="2025-04-21T19:34:56" color="#785bff">}}

{{<matomeQuote body="これは「チート」の線引きに関する興味深い哲学的な議論につながるね。NESはHTTPを処理できるだけの能力があると思う。私はWeb UI（とCGI）を備えた小型のマネージドネットワークスイッチを持っていて、それはスイッチASICに組み込まれた8051で動作している。それができるなら、NESでも不可能ではないと思う。難しいのはストレージとI/Oだ。<br>これは純粋に理論的な話だけど、6522を使ってSPIをbitbangすれば、SDカードとEthernetコントローラー（Wiznet W5500のようなチップ）を追加できる可能性がある。少量のSRAM（〜16/32Kbit）とローダーROMを追加すれば、カートリッジスロットだけでNESを汎用コンピュータにできる。必要に応じて、拡張スロットから割り込みを奪うこともできる。<br>W5500にはTCP/IPスタックが内蔵されているから、「チート」とみなされるかもしれないけど、個人的にはNESがサイトをホストしていると言ってもいいと思う。<br>6522を使ったSPIのBitbangingについてはこちら：https://wilsonminesco.com/6502primer/potpourri.html#BITBANG_..." userName="tyami94" createdAt="2025-04-22T01:49:07" color="#785bff">}}

{{<matomeQuote body="これは絶対に可能だと思う。https://mitxela.com/projects/kiloboot を思い出した。これはEthernetにENC28J60を使ってる。SPIのbitbangはかなり簡単にできると思う。メモリ空間にいくつかのアドレスを割り当ててバスと直接やり取りするようにすれば（もっと簡単にするために、別のシフトレジスタチップを使ってもいい）。画面への書き込みを諦めれば、Ethernet側で何かが起こるまで待機して、リクエストされたパスを読み取り、そのパスに対応するデータをROMから取り出して送り返せばいい。" userName="voidUpdate" createdAt="2025-04-22T08:10:29" color="#ff33a1">}}

{{<matomeQuote body="＞Wiiはおそらく、これに必要なハードウェアがすべて内蔵されている最初のNintendoコンソール<br>アクセサリーが必要だったとしても、N64 Disk DriveかGameCubeネットワークアダプターでもできたかもしれない。どちらもネットワークインターフェースで、システムにディスパッチしてた。<br>N64 Disk Driveは面白いケースだね。ストレージメディアはフロッピーディスクドライブのようなものだし。モデムで接続するから、ミドルウェアが必要になるだろうけど。<br>Super Nintendoにもネットワークアダプターがあったし、NESとSNESには日本で衛星ネットワークアダプターがあった。Game Boyにもネットワークアダプターがあったと思う。それがどう機能するか、ハードウェア/ソフトウェアにどれだけの制御を委ねるかはわからない。<br>[1] https://en.wikipedia.org/wiki/64DD<br>[2] https://en.wikipedia.org/wiki/Satellaview" userName="echelon" createdAt="2025-04-21T19:48:40" color="#45d325">}}

{{<matomeQuote body="衛星統合については間違ってた。[1]ダイヤルアップだった。<br>Game Boy Pocketでも同じような試みがあった記憶があるけど、市場に出なかったかもしれない。<br>[1] https://en.wikipedia.org/wiki/Family_Computer_Network_System" userName="echelon" createdAt="2025-04-21T22:02:28" color="">}}

{{<matomeQuote body="GenesisもSega Channelあったよね確か？" userName="Klonoar" createdAt="2025-04-22T02:35:31" color="">}}

{{<matomeQuote body="これAtari 2600のGraduate Computer思い出すわー。残念ながら今リンク見つけられないんだよね。家帰ったら探してみる。" userName="athom" createdAt="2025-04-21T19:53:33" color="">}}

{{<matomeQuote body="参考リンクだよー。<br>・http://www.atarihq.com/museum/2678/graduate.html<br>・https://atarimuseum.ctrl-alt-rees.com/videogames/consoles/26..." userName="EvanAnderson" createdAt="2025-04-21T22:35:51" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Evanさん、フォローありがとう！仕事中に書いたから、リンク全部ブロックされちゃって参照できなかったんだよね。ポリシー最近変わったみたいで…。家から見たら、トップページの一番下にあなたの返信が！Googleで有名人だ！" userName="athom" createdAt="2025-04-24T07:51:51" color="#45d325">}}

{{<matomeQuote body="DSが一番最初からWi-Fi対応してるから、色々サポートされてるのかもね。Linuxはちょっと重いかな？" userName="jkrejcha" createdAt="2025-04-21T20:08:35" color="">}}

{{<matomeQuote body="DSLinuxがあるけど、RAM拡張カートリッジが必要。ネットワーク使えるみたいだけど、システムが使う分を除くと8MBしかないんだよね。ツールチェインも古いし。" userName="unleaded" createdAt="2025-04-22T00:22:25" color="#785bff">}}

{{<matomeQuote body="4MBあれば十分でしょ。DSのhomebrewやるなら、3in1持ってれば8MBに拡張できるし。<br>Linux動くかって？Webサーバーなら絶対動くよ。<br>VRAMは置いといて。" userName="immibis" createdAt="2025-04-21T22:26:19" color="#785bff">}}

{{<matomeQuote body="DSLinuxはRAM拡張なしの4MBで動くよ。WebサーバーとかCGIとか色々入れるのは大変だけどね。EZ-Flash V 3-in-1は16MBのPSRAM追加できたんだよ！Operaのブラウザ移植版とか懐かしい。" userName="zamadatix" createdAt="2025-04-21T23:49:06" color="#ff5733">}}

{{<matomeQuote body="DSLinuxってuCLinuxだよね？MMUないから普通のLinuxじゃないと思う。PSRAMだったっけ？Flashだと思ってた。" userName="immibis" createdAt="2025-04-22T08:44:38" color="#ff5733">}}

{{<matomeQuote body="uClinuxもLinuxだよ。MMUなしで動く機能も2.x系でmainlineにmergeされたし。<br>> https://lwn.net/Articles/14823/<br>EZ-Flash V 3-in-1は、16MBのPSRAMに加えて、64MBか128MBのNOR flashも搭載してた（revisionによる）。バッテリーバックアップSRAMもあったね。" userName="zamadatix" createdAt="2025-04-22T12:12:56" color="#ff5733">}}

{{<matomeQuote body="C64でウェブサーバー動かせるなら、理論的にはNESでもいけるはずだけど、RAMがネックだな。NES64ってプロジェクトでC64 OSをNESで動かしてる例もあるし。Famicom Disk System足せばRAM増えるから、C64 LUnix NGを移植できるかも。LUnix NGには実験的なウェブサーバーも入ってるし。つまり、NESでHTTP 1.0サーバーを立てるのも夢じゃないかもね。誰が使うんだって話だけど(笑)。" userName="starkparker" createdAt="2025-04-21T20:24:04" color="">}}

{{<matomeQuote body="裏技的な話だけど、NESのカートリッジにRAMを増設してるゲームもあったりするんだよね。カートリッジスロットからCPUのデータ線とかアドレス線が直接出てるから、割と簡単にできるんだ。" userName="tyami94" createdAt="2025-04-22T01:52:30" color="">}}

{{<matomeQuote body="SNESならFXPAK PRO使ってUSB経由でプロキシできるよ。ただ、激遅だけどね。転送速度がイマイチなんだよね(ファームウェア側の制限かな？)。RAMの特定の位置にパケットを書き込んで、別の位置からパケットを読み出すみたいな感じ。ROMは12MBもあるけど、RAMは128KBしかないのが難点。NESで同じことができるかは不明。everdriveがUSB経由のRAMアクセスに対応してないんだよね(GB*では非対応で残念)。コントローラーポート経由でシリアル通信する方法もあるみたい。" userName="a_t48" createdAt="2025-04-22T03:21:45" color="">}}

{{<matomeQuote body="SNESoIPってのもあるんだね。" userName="a_t48" createdAt="2025-04-22T03:25:53" color="">}}

{{<matomeQuote body="NESで何かやったとしても、それはもうウェブサイトとは言えないんじゃないかな。ジョイスティックポート1と通信したいなら、TCP／IPじゃないし。カスタムプロトコルに接続するためのゲートウェイは、NESよりも高性能になっちゃうだろうし。" userName="Dwedit" createdAt="2025-04-21T20:04:22" color="">}}

{{<matomeQuote body="NESはRAMが2KBしかないし、MMUもない8bit CPUだし、かなり厳しいと思うよ。第5世代(のゲーム機)よりも前の世代は難しいんじゃないかな。" userName="joseda-hg" createdAt="2025-04-21T19:35:47" color="">}}

{{<matomeQuote body="ウェブページとTCPスタックを書き込んだカートリッジを用意して、イーサネットのハードウェアも用意する必要があるけど、メモリ要件を減らすための工夫はできるよ。一度に処理できるパケットは少ないだろうけど、低スペックなハードウェアでもTCPスタックを実装してる例はあるし。TLSは無理だろうけど。TCPはメモリやCPUサイクルが少ないマシンで開発されたんだから。Atari 2600は厳しいかもしれないけど、NESならできるはず。" userName="jandrese" createdAt="2025-04-21T20:04:12" color="">}}

{{<matomeQuote body="拡張とかカスタムソフトウェアを使うよりもシンプルだけど、OPが言ってるような「汎用OSを焼いて、すぐに使えるようにする」のとは程遠い気がするな。" userName="joseda-hg" createdAt="2025-04-21T20:40:41" color="">}}

{{<matomeQuote body="Jupiter Aceは少ないRAMで色々なことができたから、あなどれないよ。シリアル<>PPPの外部モジュールを追加すれば、もっと面白いことができる。" userName="anthk" createdAt="2025-04-21T20:18:43" color="">}}

{{<matomeQuote body="面白いことに、第5世代ではほぼ不可能だけど、第6世代(特にXbox。ほぼPC)では簡単なんだよね。" userName="KeplerBoy" createdAt="2025-04-21T20:47:47" color="">}}

{{<matomeQuote body="6th genの主要なゲーム機は全部、有線Ethernetをサポートしてたんだよね。Xboxだけが標準装備だったけど(PS2スリムもそうだったか)。どれもウェブページを表示できたんじゃないかな。5th genでもできるかもしれないけど、Ethernetがないとモデムかシリアルインターフェースになるから、今だと家の別の高性能なホストに接続する方が確実だよね。Apple Pippinは5th genらしいし、Macみたいなもんだから、Ethernet接続は一番簡単だと思うよ。変なピン配置のPCIスロットだけどね。" userName="toast0" createdAt="2025-04-21T21:43:01" color="">}}

{{<matomeQuote body="うちのスイッチはほとんどがアンマネージドだから、無理だね。DSLとかケーブルモデムならできるかもだけど、ISPが管理してると難しいかも。" userName="toast0" createdAt="2025-04-21T22:55:09" color="">}}

{{<matomeQuote body="めっちゃクールで面白いね。消費電力についてだけど、後のWiiは改善されたみたい。初期のWiiは後期のより“熱い”んだ。" userName="msephton" createdAt="2025-04-22T04:55:40" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
