+++
date = '2025-11-15T00:00:00'
months = '2025/11'
draft = false
title = 'インターネットの『屋台骨』TCP！なぜ今も不可欠なのか？'
tags = ["TCP", "ネットワーク", "プロトコル", "インターネット", "通信技術"]
featureimage = 'thumbnails/green4.jpg'
+++

> インターネットの『屋台骨』TCP！なぜ今も不可欠なのか？

引用元：[https://news.ycombinator.com/item?id=45935503](https://news.ycombinator.com/item?id=45935503)




{{<matomeQuote body="信頼性の低いデータグラム層の上に信頼性のあるデータストリームを作るなら、TCPのような解決策になるのは当然だね。オリジナルのTCPはウィンドウサイズ、パケットロス処理、シングルストリーム管理に課題があったけど、SCTPやQUICで解決されたんだ。輻輳制御アルゴリズムはプロトコルとは別で、帯域幅を効率的に使うためのコードさ。昔のRenoとかVegasもシンプルながら良くできてたけど、今はもっと賢いアルゴリズムの研究が進んでるよ。" userName="gsliepen" createdAt="2025/11/15 08:50:49" color="#ff5733">}}




{{<matomeQuote body="TCPがシングルストリームなのは、Web開発者の怠慢もあると思うんだ。昔、JavaScriptライブラリで一つのストリームで複数のダウンロードを管理するのを作ったよ。デートサイトでサムネイルを効率的に読み込むGreaseMonkeyスクリプトに使って、サーバーや帯域を圧迫しないようにしたんだ。今ではマルチプレクシングは普通だけど、これはJQueryも知らない時代の話。面白話だけど、そのスクリプトをシェアした相手と、Tinderができるずっと前から付き合って20年近くになるよ。" userName="rkagerer" createdAt="2025/11/15 13:00:06" color="#38d3d3">}}




{{<matomeQuote body="TCPが書かれた当時、電話業界はパケット交換vs回線交換の議論で圧倒的だった。TCPはIP上で信頼性のあるバイトストリームを介して、パケット交換ネットワーク上に仮想回線を提供するんだ。エンドポイントで再送して信頼性を確保するアイデアは、フランスのCyladesネットワークから来ていて、IPネットワークの基本原則になったんだよ。" userName="bobmcnamara" createdAt="2025/11/15 09:04:28" color="#ff33a1">}}




{{<matomeQuote body="アプリケーションレベルでマルチプレクシングを再実装できるけど、JavaScriptでやらずに済むよう、トランスポートレベルでやる方が理にかなってるよ。" userName="xyzzyz" createdAt="2025/11/15 14:38:15" color="">}}




{{<matomeQuote body="残念だけど、QUICはカーネルのUDP上のユーザー空間実装なんだ。" userName="groundzeros2015" createdAt="2025/11/15 15:30:50" color="">}}




{{<matomeQuote body="パケット交換が勝ったせいで、今も遅延やジッターの影響に「苦しめられてる」感じだね。今のインターネットでの遅延とジッターは、ベストエフォート、特に「エフォート」を重視しているよ。" userName="Karrot_Kream" createdAt="2025/11/15 09:37:49" color="">}}




{{<matomeQuote body="信頼性の低いデータグラム層の上に信頼性の高いストリームを作るなら、TCP以外にも多くの設計案があったはずだ。全二重や半二重、メッセージ境界の公開、TCPMUXでのポート名の使用などね。SACKはデフォルトであるべきだったし、RTT測定やPUSHビットの必要性にも疑問符が付く。IPアドレス変更で接続できない点や、5分というタイムアウトの硬直性も大きな欠点だよ。ISNもIPスプーフィング対策としては不十分で、タイムスタンプやPAWSでパッチを当てたんだ。" userName="kragen" createdAt="2025/11/15 16:54:39" color="#38d3d3">}}




{{<matomeQuote body="電話業界がTCP/IPに批判したQoS、ジッター、帯域幅、遅延、公平性、キューイング遅延、マルチプレクシング、トラフィックシェーピングなどの点は、基本的に正しかったんだ。ATMはこれらに対応したけど、TCP/IPはしなかった。VoIPやビデオ会議が出てきて、これらの問題が再燃し、今でも解決は簡単じゃないね。" userName="musicale" createdAt="2025/11/15 18:31:08" color="#45d325">}}




{{<matomeQuote body="これを読めて嬉しいよ。素朴な疑問なんだけど、ほとんどのウェブサイトやウェブサーバーがCDNを必要とするのって、CDNがWeb開発者よりキャッシングを理解してるからなの？でも、ユーザーのアクセスパターンに詳しい人の方が最適なキャッシング戦略を知ってるんじゃないかな。" userName="rishabhaiover" createdAt="2025/11/15 20:12:43" color="">}}




{{<matomeQuote body="それって、この記事とどう関係あるの？ユーザーエージェント（ブラウザ）がトランスポートを処理してるんだからさ。" userName="MrDarcy" createdAt="2025/11/15 16:27:32" color="">}}




{{<matomeQuote body="複数のストリームが必要なアプリのために、オーバーヘッドがあるTCPの代わりにSCTPやQUICが作られたんだって。DNS over TLS（DoT）を使えば、一つのTCP接続で複数のDNSクエリを順不同で送受信できるし、これはブラウザ外で毎日やってるよ。HTTP/1.1パイプラインでDNS over HTTPS（DoH）もできるけど、HTTP/2が特にこの用途で速いかは疑問だね。QUICはまだサーバーサポートが限定的だし。" userName="1vuio0pswjnm7" createdAt="2025/11/15 16:53:32" color="#ff33a1">}}




{{<matomeQuote body="それが問題なんだよね。ブラウザって、もはやOSみたいな巨大ベンチャーだからQUICを気に入ってるけど、それって巨大なライブラリが必要になるし、カーネルがトラフィックを見れなくなるからタイミング管理とかが難しくなるんだ。" userName="groundzeros2015" createdAt="2025/11/15 19:30:21" color="">}}




{{<matomeQuote body="「一つのTCP接続で複数のレスポンスを順不同で受け取れる。ブロッキングなし。」って言ってるけど、そこが違うんだよ。もし最初のレスポンスがネットワークの問題で失われたり遅れたりしたら、2番目のレスポンスを読むには1番目を再送信するまで待つ必要がある。それがブロッキングなんだ。これは広告とは全く関係なくて、他のプロトコルにはこの欠点はないんだよ。" userName="do_not_redeem" createdAt="2025/11/15 17:09:52" color="#ff5733">}}




{{<matomeQuote body="AppleTalkって、ブロードキャスト（あるいはマルチキャスト？）ベースのサービスディスカバリプロトコルがあまり評価されなかったけど、それがmDNSの元ネタになったんだ。AppleTalkのLANアドレスはいつも動的だったから、管理が簡単だったよね。Linuxのコンテナがネットワークサービスに必要なのは、DNSがIPアドレスしか返さなくて、各サービスプロセスが独自のIPアドレスを持つ必要があるからだと俺は思ってるよ。AppleTalkには信頼性の高いトランザクションプロトコル（ATP）やセッションプロトコルもあって、Macのネットワークサービス（プリンティング、ファイルサーバーとか）に使われてたんだ。バイトストリームのシリアル化／デシリアル化よりもずっと簡単だったよ。" userName="musicale" createdAt="2025/11/15 19:04:52" color="">}}




{{<matomeQuote body="もしそれが本当なら、なぜtelcosは1990年代に電話網のバックボーン全体をIPに移行したんだ？そして、なぜ彼らは残りの（周辺部分の）古い回線交換網を廃止して、顧客全員にIP phoneハードウェアを使わせようとしてるんだ？" userName="hollerith" createdAt="2025/11/15 18:46:59" color="#ff33a1">}}




{{<matomeQuote body="そんなの、どうってことない問題だよ。QUICの実装なんて数千行（依存関係や標準ライブラリなしでも1万行未満）で簡単にできる。適切なネットワークスタック設計がされていれば、カーネルがトランスポートプロトコルを管理しても、レイテンシやスループットに実際のメリットは全くないね。ハードウェアオフロードも、暗号化以外は必要ない。主張されてる違いは、単にネットワークスタックの設計が悪いか、プロトコル実装が下手なだけだよ。" userName="Veserv" createdAt="2025/11/16 00:04:25" color="#ff5733">}}




{{<matomeQuote body="確かにね、でも回線交換方式だったら、たぶん今でも分単位で料金を払ってたはずだし、こんなにジッターやバッファブロットのある接続はそもそも存在しなかっただろうね。" userName="lxgr" createdAt="2025/11/15 11:51:05" color="">}}




{{<matomeQuote body="「信頼性の低いデータグラム層の上に信頼性の高いデータストリームを作成する方法の問題から始めると」<br>「パケット欠落の処理が貧弱」<br>…それって、設計されたまさにその目的が貧弱だったってこと？" userName="NooneAtAll3" createdAt="2025/11/15 09:43:28" color="">}}




{{<matomeQuote body="ほとんどのウェブサイトはCDNsなんていらないよ。昔はjQueryみたいなのをキャッシュして、2つ目のサイトの読み込みを速くするって思われてたけど、今はプライバシー保護のためにブラウザは他のウェブサイトのキャッシュアセットを無視するんだ。CDNsが役立つ理由はいくつかあるけど、エッジ機能が一番重要だろうね。たくさんの静的データを配信するのが小規模サイトには大変だから、専門サービスに任せるのは理にかなってる。最近は静的データ以外にも、バックエンドを隠したり、TLSを処理したり、ボットやTor、嫌いな国のユーザーをフィルタリングしたりもできるけど、ダッシュボードで数クリックでできるだけで、正直、数日あれば自分で書けないことはないよ。" userName="vbezhenar" createdAt="2025/11/15 22:41:03" color="">}}




{{<matomeQuote body="カスタムのTCPライクなフレームワークで高速ネットワーキングやってるよ。プロトコルはチャネルごとに順序保証するけど、チャネル間では順不同。同じチャネルなら順序通り。トレードオフで、受信側のアプリコードが結構複雑になっちゃうんだ。気に入ってるけど、良いとこばかりじゃないね。" userName="maccard" createdAt="2025/11/15 19:25:29" color="#785bff">}}




{{<matomeQuote body="10KBより小さいライブラリってある？Chromium QUICはChatGPTによると250KB以上だってさ。" userName="groundzeros2015" createdAt="2025/11/16 06:58:09" color="">}}




{{<matomeQuote body="回線交換は、大規模だと難しいしコストも高いんだ。特にプロバイダが違うとね。たぶん、昔の通信会社が自分たちの地位を守るために推進したんだろうな。MPLSみたいな新しい技術も、ネットワーク内での利用が主で、ATMやFrame Relayほど接続指向じゃないよ。" userName="hylaride" createdAt="2025/11/15 14:29:02" color="#ff5c5c">}}




{{<matomeQuote body="セッションプロトコルってTCPみたいに再送とか再順序付けのこと？バイトストリームのシリアル化・デシリアル化をどう節約するの？IPとTCPの設計からして、DNS-SDでサービスのアドレス指定は良いね。ZeroConfもそう。ポート番号がDNSより10年早かったから、IPアドレスとポート番号の設計が今の形になったのかもね。もしポート番号の16ビットをIPアドレスに回せたら、IPアドレスの枯渇問題はかなり軽減されただろうな。" userName="kragen" createdAt="2025/11/15 19:38:10" color="#785bff">}}




{{<matomeQuote body="今の規模で回線交換ネットワークって、どんな風になるんだろうね？" userName="cachius" createdAt="2025/11/15 18:44:35" color="">}}




{{<matomeQuote body="回線交換は難しくないけど、効率が悪いんだ。PSTNやISDNだと使ってなくても帯域食ってたし。ATMはオーバーヘッドが大きくて非効率だった。その名残がGPONやXGSPONにあるけど、EPON/10GEPONの方が断然いいよ。MPLSもIPv6のネクストヘッダーで解決できる問題があるし、昔のハードウェアの制約があったから生まれた技術だけど、今のASICならオンチップのルートテーブルで十分なんだ。" userName="bcrl" createdAt="2025/11/15 22:16:15" color="#ff5733">}}




{{<matomeQuote body="セッションプロトコルはAFP（AppleShareファイルサーバー）のサーバーセッションで使われてたと思うな。上位プロトコルはメッセージベースのATPが土台。ADSPはバイトストリームが活きるリモートターミナルとかのストリームプロトコルだったよ。ポート番号がDNSより早かったってコメントあったけど、ホントかな？DNSがポート番号を提供できる可能性はあるみたいだけど、あまり使われてないよね。" userName="musicale" createdAt="2025/11/15 20:07:13" color="#38d3d3">}}




{{<matomeQuote body="信頼性のないデータグラム層の上に信頼できるデータストリームを作るならTCPみたいになるって言うけど、今の通信はメッセージベースが多いし、バイトストリーム化は非効率で、gRPCとかだと面倒だよね。TCPの輻輳制御は再順序付けに対応しにくいし、無線リンクでは直接使えない。バッファブロート問題もある。TCPはハードウェアオフロードやモビリティ、光/WDMネットワークにも向いてないんだ。現代のニーズには合わない部分が多いってことだね。" userName="musicale" createdAt="2025/11/15 18:21:18" color="#ff33a1">}}




{{<matomeQuote body="じゃあ、自分でQUICみたいなのを作るってこと？" userName="tekne" createdAt="2025/11/15 22:11:09" color="">}}




{{<matomeQuote body="へえ、面白いね。世界中のキャッシュ一貫性を保ちつつ、地理的な可用性を確保するのが大きな強みなんだろうな。数クリックでセキュリティを提供できるのも、多くのユーザーには助かるメリットだ。でも、セキュリティが中央集権化されるのは、やっぱりちょっと気になるな。" userName="rishabhaiover" createdAt="2025/11/16 14:39:32" color="">}}




{{<matomeQuote body="CDNって開発者が設定するキャッシュヘッダーに従うだけなんだよ。だから、ちゃんとヘッダー設定しないと効果は薄いかもね。でも、静的ファイルなら一部はデフォルトでキャッシュしてくれることもあるってさ。" userName="weird-eye-issue" createdAt="2025/11/16 02:27:11" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Web開発者じゃないんだけど、サイトってホストごとに数個（例えば4つ）の接続しか持てなくて、それ以上は待つって認識してたよ。結構速い接続なら、それで十分なんじゃないかな。" userName="karmakaze" createdAt="2025/11/15 15:07:57" color="">}}




{{<matomeQuote body="みんなSCTPはどう思う？SCTPはUDPみたいなメッセージ指向で、TCPみたいに信頼性と輻輳制御があるんだって。マルチホーミングや冗長パスも対応してて、耐障害性も高いらしいよ。TCPと違ってバイトじゃなくてメッセージ単位で送れるし、マルチストリーミングで複数のデータを同時に送れるのがすごい。例えばWeb画像の同時送信とかね。詳しくはここ→ https://en.wikipedia.org/wiki/Stream_Control_Transmission_Pr..." userName="throw0101a" createdAt="2025/11/15 13:23:09" color="#38d3d3">}}




{{<matomeQuote body="いやいや、SCTPって問題の半分しか解決してないし、ルータのサポート問題はさておき、余計な欠点も増やしてるんだよね。一番いいのはUDPの上に信頼性レイヤーを作ることだよ。幸い、今はみんなQUICに注目してるから、それが本命じゃないかな。" userName="o11c" createdAt="2025/11/15 21:01:17" color="#785bff">}}




{{<matomeQuote body="BSD好きだし、Erlangを書いてお金をもらってる身としては、SCTPはめっちゃ好きだよ！" userName="nesarkvechnep" createdAt="2025/11/15 14:26:44" color="">}}




{{<matomeQuote body="待って、IPを直接使えるの？自分でパケット作ってネット上のホストに送れるってこと？途中のルータとか、それがTCPかUDPかって、さすがに気になるんじゃないかなって思うんだけど。" userName="stavros" createdAt="2025/11/15 08:24:32" color="">}}




{{<matomeQuote body="「TCPかUDPか」って言ったけど、ICMPも忘れないでよ！あれ、IPv6だと特に重要なんだ。あとIPsecとか、90年代にはTCPでもUDPでもないちゃんとしたIPプロトコルも設計されてたんだよ。自分でパケット作って送るのはできるはずだけど、企業とか家庭の厳しいルータ、NATを使ってる場合は、ルータが認識するプロトコルじゃないとダメかもね。この20年くらいはみんなTCPやUDP、いやHTTPの上にハックを積み重ねてるだけなのが悲しいな。HTTPはIPより長く生き残るんじゃないかな。" userName="xorcist" createdAt="2025/11/15 11:05:16" color="#ff33a1">}}




{{<matomeQuote body="IPパケットは手動で作って送れるよ。IPv4なら、プロトコルフィールドにこのリストから0-255の数字を入れればOK。→ https://www.iana.org/assignments/protocol-numbers/protocol-n...<br>主要なルータは中身を見ないけど、NATやISPの機器は見る可能性あるね。ちゃんとしたLinuxサーバー2台があれば、実験用のプロトコル番号（253とか254）を使ってカスタムIPパケットを送受信するのは全然できるはずだよ。" userName="ilkkao" createdAt="2025/11/15 08:48:50" color="#ff5733">}}




{{<matomeQuote body="ルータはパケットの中身を検査すべきじゃないんだよね。だって、IPヘッダーだけでルーティングできるのがポイントで、それ以上のプロトコルはエンドポイント同士でやり取りすべきだから。でも残念ながら、一部のルータは見るし、NATを使ってるなら、NATデバイスはパケットを転送するためにTCPかUDPヘッダーを見ないといけないんだ。" userName="gsliepen" createdAt="2025/11/15 08:39:32" color="#785bff">}}




{{<matomeQuote body="残りの104個の未割り当てプロトコル番号がなくなったら、どうなっちゃうんだろう？" userName="morcus" createdAt="2025/11/15 13:46:40" color="">}}




{{<matomeQuote body="QUIC（HTTP/3）は、新しいプロトコル番号じゃなくてUDPを使ってるんだってさ。これが理由らしいね。" userName="jadamson" createdAt="2025/11/15 09:25:57" color="">}}




{{<matomeQuote body="「NATがエンドツーエンド原則を壊した」って意見は、必ずしもそうじゃないよ。<br>データにIP/ポート情報を含まないプロトコルはNAT経由でも大丈夫。FTPは例外で、制御チャネルでIP:portを指定するからNATルーターが書き換える必要があるんだ。他のプロトコルは問題ないことが多いよ。" userName="gruturo" createdAt="2025/11/15 11:51:45" color="#45d325">}}




{{<matomeQuote body="TCPやUDPパケットはIPデータグラムに包まれてて、IPネットワークはA地点からB地点へデータを送るのが役目だよ。途中にあるノードがDPIする可能性はあるけど、ルーティングの基本作業には不要なんだ。<br>TCPやUDPヘッダの情報は、エンドポイント同士のやり取りを管理するためのもの。ポートは、同じIPアドレスで複数のサービスを動かすための識別子だよ。" userName="Twisol" createdAt="2025/11/15 08:43:55" color="#45d325">}}




{{<matomeQuote body="多分ダメだろうね。多くのルーターはICMPの一部すらブロックしてるし。" userName="GardenLetter27" createdAt="2025/11/15 11:42:04" color="">}}




{{<matomeQuote body="そうなんだよね、QUICが独自のプロトコルじゃなくてUDPを使った理由、まさにそれが気になってたんだ。「思ったより干渉がないわけじゃない」ってのが答えっぽいね。" userName="stavros" createdAt="2025/11/15 09:27:15" color="">}}




{{<matomeQuote body="みんな番号を使いすぎちゃうだろうね。その頃までにはIPv4の使用をやめててほしいけど…。アドレスが枯渇してから10年経ってもまだ使ってるんだから、どうなることやら。" userName="marcosdumay" createdAt="2025/11/15 14:24:53" color="">}}




{{<matomeQuote body="それはファイアウォール（か何か）で、ルーターじゃないよ。もし何かをブロックするなら、それはもはやルーターじゃないって定義になるんだから。" userName="eqvinox" createdAt="2025/11/15 11:46:29" color="#45d325">}}




{{<matomeQuote body="うーん、中間ルーターって輻輳制御のためにTCPパケットのビットを使うのかと思ってたけど違うのかな？でも、宛先IPだけでもできるだろうけどね。" userName="stavros" createdAt="2025/11/15 09:25:40" color="">}}




{{<matomeQuote body="そうだよ、よく知られたTCP、UDP、ICMP以外にもIPプロトコルはたくさんあるんだ。マルチキャスト関連のIGMPやPIM、ルーティングプロトコルのOSPF、VPN/カプセル化のGRE、IP-in-IP、L2TPとかね。<br>詳しいことはWikipediaの「List of IP protocol numbers」を見るといいよ: https://en.wikipedia.org/wiki/List_of_IP_protocol_numbers" userName="gruturo" createdAt="2025/11/15 11:44:50" color="#38d3d3">}}




{{<matomeQuote body="IPv6もIPv4と全く同じ8ビットのコードを使ってるよ。IPv4は1パケットに1プロトコルだけど、IPv6は「拡張ヘッダー」っていう仕組みでプロトコルをチェーンできるんだ。<br>でも、これが逆に番号枯渇問題を深刻にしちゃうんだよね。" userName="kbolino" createdAt="2025/11/15 15:39:01" color="#ff5c5c">}}




{{<matomeQuote body="同意だね。NATルータがFTPやSIPみたいなアプリプロキシを使えば、トラフィックをリレーしたり書き換えたりできるんだ。TCPやUDPにはポート番号があって、NATソフトがそれを取り出して状態を管理できるから、戻りのトラフィックを正しい宛先に送れるよ。でも、未知のIPプロトコルだとそれは無理だし、せいぜいネットワークダイオードみたいになるだけで、エンドツーエンド原則を破ることになるね。" userName="xorcist" createdAt="2025/11/15 12:40:15" color="#ff5733">}}




{{<matomeQuote body="UDPのオーバーヘッドはたった8バイトでめちゃくちゃ低いんだから、新しいプロトコルを発明する意味はあんまりないんじゃない？UDPのフレーミングを使えばNATも越えられるのに、なんで新しいトランスポート層プロトコルをわざわざ作るの？" userName="xyzzyz" createdAt="2025/11/15 14:42:54" color="#785bff">}}




{{<matomeQuote body="これみたいな？<br>https://en.wikipedia.org/wiki/IP_over_Avian_Carriers" userName="NooneAtAll3" createdAt="2025/11/15 09:45:00" color="">}}




{{<matomeQuote body="「ルーターはTCPかUDPか気にするはず」って意見あるけど、全然気にしてないよ。ルーターはレイヤー3だし、TCPとUDPはレイヤー4だからね。ECMPフローハッシュの複雑さが減るくらいだけど、これは最適化の話。インターネットではTCP、UDP、ICMPだけじゃなく、SCTP、GRE、L2TP、ESPなんかも普通に使われてるよ。好きなプロトコル番号で好きな内容を送れるけど、相手がそれを使ってくれるかは別問題だね。" userName="eqvinox" createdAt="2025/11/15 11:45:05" color="#ff5733">}}




{{<matomeQuote body="NATは、TCPやUDPの上に乗るアプリ層プロトコルを、NATがアプリ層を理解しなくても通せるよね。そうじゃないとNATを使ったネットワークは完全に壊れるからね。ただ、IP層でのエンドツーエンド原則（IPフォワーディング層が上位のトランスポート層プロトコルに依存しないこと）は、それでも破られてるよ。" userName="lxgr" createdAt="2025/11/15 12:02:08" color="#45d325">}}




{{<matomeQuote body="GPの意見にもあるけど、ほとんどのプロトコルは、残念ながら多くのミドルボックスで落とされちゃうよ。NA(P)Tの裏だと、翻訳機がポートを再マッピングできるプロトコルしか当然使えないんだよね。" userName="lxgr" createdAt="2025/11/15 11:55:08" color="#785bff">}}




{{<matomeQuote body="拡張ヘッダーがあればもっと良くなるんじゃないかな？Next Headerフィールドを大きくしただけのプロトコルを作って、プロトコル番号が255より大きい場合にこの疑似ヘッダーを実際のペイロードと連結するんだ。これってIPv4でも使えるアイデアだよね。" userName="brewmarche" createdAt="2025/11/15 17:42:34" color="#45d325">}}




{{<matomeQuote body="「ICMPを忘れてるぞ、お気に入りなのに！」って話だけど、最近はICMPでさえNATやファイアウォールを通り抜けるのが難しいんだよ、かなり残念な理由でね。例えばAWS内の何かをpingしてみるとわかるよ..." userName="lxgr" createdAt="2025/11/15 11:58:32" color="#38d3d3">}}




{{<matomeQuote body="同意だね。HTTPの上にカスタムプロトコルを作るのは「難しい」って思われがちだけど、ヘッダーとかクエリパラメータ、JSONでめちゃくちゃなことしてるのを見ると、ちょっと笑っちゃうな。全部テキストにするのは_本当に_大変だよ。UDPの問題点の一つは、良いプラットフォームやツール、そして実例が少ないことだね。僕はそれを手助けしようとしてるけど、間違いなく大変な戦いだよ。" userName="mlhpdx" createdAt="2025/11/15 16:52:59" color="#ff33a1">}}




{{<matomeQuote body="IPsecとか、自分で作ったプロトコルに対しても1:1 NATはできるよ。" userName="Hikikomori" createdAt="2025/11/15 13:01:17" color="">}}




{{<matomeQuote body="ルーターは理想的にはレイヤー3だけど、実際にはNATが入ることが多くて、TCP、UDP、運が良ければICMP以外は破棄されちゃうよ。" userName="lxgr" createdAt="2025/11/15 12:06:55" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="IPプロトコルでもNATはできるけど、外部IPあたり1つまでしかできないんだ。" userName="Hikikomori" createdAt="2025/11/15 13:19:03" color="">}}




{{<matomeQuote body="そうじゃないって言ってるわけじゃないよ。でも、IPv4もIPv6も同じことが言える。IPv6で解決された問題はたくさんあるけど、「TCP/UDP以外のトランスポートのための余地を増やす」ってのはその一つじゃなかったし、正直必要なかったと思うな。" userName="kbolino" createdAt="2025/11/15 18:00:54" color="">}}




{{<matomeQuote body="君の定義だと、うちのホームルーターはNATするからルーターじゃないってこと？こんな意味論で議論しても意味ないよ。" userName="rubatuga" createdAt="2025/11/15 14:54:45" color="">}}




{{<matomeQuote body="枯渇まではあと半分くらいだけど、割り当て済みの多くのプロトコルは非推奨かプロプライエタリで、再割り当てできるかもね。今は1980年代より割り当てが保守的だよ。昔、OpenBSDがCARPってオープンソースのルーターフェイルオーバープロトコルを作ったけど、公式のIP番号がもらえなくてVRRPと同じ番号を使うことになったんだ。CiscoがEIGRP用にもらったみたいに、プロプライエタリプロトコルに番号が割り当てられてたことには歴史的な反感も多いんだよ。詳細はこれ：https://en.wikipedia.org/wiki/List_of_IP_protocol_numbers" userName="hylaride" createdAt="2025/11/15 14:38:29" color="#38d3d3">}}




{{<matomeQuote body="TCPの輻輳制御アルゴリズムは意外な影響があるよ。新しいTCP接続は最初遅くて、帯域幅に達するまでの時間はレイテンシーで決まる。データセンターではラウンドトリップタイムを短縮すると高速化できるんだ。TCPスタックは立ち上がりレートをセグメント数で数えるから、ジャンボフレームを使うと帯域幅が6倍になることも！AWSも低レイテンシーとジャンボフレームに力を入れてる。プロはこのチューニングをするけど、他の人は10 Gbpsリンクの性能が出ない理由に気づいてないんだ。" userName="jiggawatts" createdAt="2025/11/15 22:38:37" color="#38d3d3">}}




{{<matomeQuote body="昔の小さなコンピューターのおかげで、ネットワークはシンプルに設計されたんだ。90年代に設計されたIPv6は、たくさんの拡張機能で複雑になっちゃったけど、核はただのIPだよ（ほとんど使われない拡張も多い）。もし今ネットを設計したら、X.509みたいに複雑怪奇でJSONなんかも入った、ものすごいオーバーヘッドの代物になってただろうね。これは「Eroom’s law（ムーアの法則の逆）」って言って、高性能なマシンはプログラマーを複雑化の方向へ走らせるんだ。" userName="api" createdAt="2025/11/15 13:20:09" color="#ff5c5c">}}




{{<matomeQuote body="IPv6の拡張機能はIPSecが有名だけど、今はVPNで使われるくらい。SLAACやルーターアドバタイズはDHCPv6より実用的じゃなく、アドレス割り当ても無駄が多いんだ。SLAACのために64ビットも浪費してるし、V6ヘッダーの拡張ビットは使われずファイアウォールでブロックされる。ミドルボックスがプロトコルを固定化してるから存在意義がないんだよね。結局、IPアドレスを64か128ビットにして、他は何もいじるべきじゃなかった。でもIPv4は小さすぎるから、エンドツーエンドの接続性を維持するためにもV6へのアップグレードには賛成だよ。" userName="api" createdAt="2025/11/15 15:56:47" color="#ff33a1">}}




{{<matomeQuote body="IPv6のアドレス空間の使い方について議論してるね。VMやコンテナに／96を割り当ててSLAACで追加するのは良いけど、NDPテーブルに注意が必要だよ。IPv6の拡張ヘッダーは結局使われず、IPv4と同じ問題抱えてるから、IPアドレスだけ伸ばせばよかったって意見は、ちょっと矛盾してるように感じるな。" userName="toast0" createdAt="2025/11/15 16:31:03" color="#785bff">}}




{{<matomeQuote body="Plan9のRUDPはTCPとUDPのちょうど中間にあって、いいプロトコルだったんだよな。<br>https://en.wikipedia.org/wiki/Reliable_User_Datagram_Protoco..." userName="rfmoz" createdAt="2025/11/15 17:06:51" color="">}}




{{<matomeQuote body="TCPがデフォルトで使われすぎたせいで、本来はもっと適したプロトコルがあったのに、システムが非効率になってたんだ。HTTP/3とQUICで改善されそうだけど、QUICは複雑で、その恩恵を受けるのは一部の人だけかもしれないね。WireGuardみたいなUDPベースのシンプルな解決策がもっと業界に必要だと思うよ。" userName="mlhpdx" createdAt="2025/11/15 16:29:34" color="#ff33a1">}}




{{<matomeQuote body="TCPは人間が作った素晴らしいものだけど、インターネットの主流が「半接続型ネットワーク」になるなんて、当時の開発者は想像してなかっただろうね。" userName="FrankWilhoit" createdAt="2025/11/15 12:11:05" color="">}}




{{<matomeQuote body="もし1981年に戻って、今のインターネットみたいにグローバルアドレスじゃなくて、NATとか非対称な帯域幅のリンクとか、クライアントとサービスを区別するような複雑な仕組みを説明したら、きっと「なんでそんなにややこしくするんだ？」って言われただろうな。" userName="convolvatron" createdAt="2025/11/15 16:45:00" color="#45d325">}}




{{<matomeQuote body="ワイヤレスネットワークって常に送信パワーに差があるんだよね。ALOHAnetは1971年からあったんだし、全てはそこから派生してるってことだね。" userName="FrankWilhoit" createdAt="2025/11/15 19:46:06" color="">}}




{{<matomeQuote body="それってNATのことを言ってるの？" userName="cpach" createdAt="2025/11/15 14:54:10" color="">}}




{{<matomeQuote body="いや、NATじゃないよ。TCPは完璧な接続と完全に切断された状態は得意だけど、半接続型みたいにパケットロスが常に変動する状況には弱いんだ。設計者は無線LANが主流になるとは思ってなかったからね。FECみたいな機能がないと、ワイヤレスだとTCPはほとんど使えないよ。FECをL4プロトコルに組み込むのは面白いかもね。" userName="FrankWilhoit" createdAt="2025/11/15 19:40:20" color="#ff33a1">}}




{{<matomeQuote body="IPの上に独自のプロトコルを作るのって超簡単だよ。<br>15年前はPythonでライブラリなしでARPとかIPのパケットを手作りしてたもん。" userName="iberator" createdAt="2025/11/15 09:27:01" color="">}}




{{<matomeQuote body="オーガニックなコンテンツだって読者を納得させるのに必死な、今のブログ記事の未来を考えるとゾッとするわ。" userName="zkmon" createdAt="2025/11/15 07:58:08" color="">}}




{{<matomeQuote body="宇宙人もTCP使ってるのかな？" userName="brcmthrowaway" createdAt="2025/11/15 19:56:04" color="">}}




{{<matomeQuote body="いや、E.T.は電話したんだから、たぶんSS7でしょ。" userName="1970-01-01" createdAt="2025/11/16 00:31:06" color="">}}




{{<matomeQuote body="インターネットってどれくらいのエネルギーを使ってるんだろ？" userName="brcmthrowaway" createdAt="2025/11/15 19:55:52" color="">}}




{{<matomeQuote body="インターネットはすごい。人を遠ざけるなんて不可能に近いって言うけど、俺は懐疑的だよ。<br>GoogleがChromeや検索、AI、YouTubeでネットを支配してるし、昔と違って皆自分のサイトじゃなくMediumみたいなブログ使ってる。<br>多様性が失われ、トップダウンで制御され過ぎ。<br>Twitterも利己的な億万長者が所有してるし、この25年で何か大切なものを失った気がするね。" userName="shevy-java" createdAt="2025/11/15 11:51:03" color="#ff5c5c">}}




{{<matomeQuote body="君が話してるのはウェブのことだけど、それはインターネットっていうプラットフォーム上のただのアプリじゃん。<br>ウェブなんて捨てて、インターネットを使って別のものだって作れるんだから。" userName="__MatrixMan__" createdAt="2025/11/15 14:31:17" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
