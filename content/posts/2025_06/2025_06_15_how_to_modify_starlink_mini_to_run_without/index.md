+++
date = '2025-06-15T00:00:00'
months = '2025/06'
draft = false
title = 'Starlink Mini 内蔵ルーターをバイパス！改造して使う方法'
tags = ["Starlink Mini", "Starlink", "Hardware", "Network", "DIY"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> Starlink Mini 内蔵ルーターをバイパス！改造して使う方法

引用元：[https://news.ycombinator.com/item?id=44282017](https://news.ycombinator.com/item?id=44282017)




{{<matomeQuote body="記事の最後が混乱するな。”disablement codes”（地域制限とか速度違反とか）がユーザー端末で強制されるって？端末はサービスプランとか国の情報知らないのに？衛星からのコマンドに従うだけって変じゃね？DHCPで制限されるべきじゃない？この記事、実はStarlinkの規約回避ガイドの遠回しなヒントなの？" userName="chatmasta" createdAt="2025/06/16 07:00:49" color="#ff5733">}}




{{<matomeQuote body="それって「ACCOUNT_DISABLED - The Starlink account has been suspended or permanently disabled」とか「UNLICENSED_COUNTRY – The terminal is located in a country where Starlink lacks regulatory approval」みたいな結果コードを端末に伝えるためだと思うよ。Starlinkネットワークじゃなくて端末側でその対応を判断するとは思えないな。" userName="rickdeckard" createdAt="2025/06/16 11:49:18" color="">}}




{{<matomeQuote body="衛星がコードを端末に送ってるってのは、端末自体はブロックされてるって知らないからだよって言ってるんだと思う。そうすれば、ユーザー側でなんでネットが繋がらないか原因が分かるじゃん。" userName="kortilla" createdAt="2025/06/16 07:49:16" color="">}}




{{<matomeQuote body="Starlink詳しくないけど、普通はアプリで端末のエラーコードとか診断コード見るんでしょ？内蔵ルーターバイパスしてSBCに繋ぐならスマホアプリ使えないから、エラーコード見て対応するスクリプト書けばいいじゃん。<br>ドローンに付けてて止まったら自動で場所変えるとか、ジオフェンス越えて切れたらStarlink切ってバックアップに切り替えるとかさ。要は、あの無効化コードをセンサーみたいに使えるってことじゃない？" userName="wildzzz" createdAt="2025/06/16 18:34:43" color="#ff5c5c">}}




{{<matomeQuote body="実際に騙せる・回避できる「disablement codes」をもし見つけたとしても、それを共有はしないだろうね。Starlinkが不正利用をどれだけ厳しくチェックするかにかかってると思う。この規模のUS企業なら、めっちゃ厳しいか、最低限か、必要な時だけか、って感じじゃない？<br>コメントでStarlinkがロシアでも使えるって言ってたけど、おかしいでしょ？ウクライナ向けのがロシアでも使えちゃってるのかもね。" userName="sharpshadow" createdAt="2025/06/16 11:12:28" color="">}}




{{<matomeQuote body="ロシア全土じゃないよ。クリミアとか占領されてるドンバスとルハンシクでは使える。あと一部の国境地帯でも使えてるみたい、Starlinkが国境を細かく「geofence」するの気にしてないからだろうね。" userName="cyberax" createdAt="2025/06/16 12:06:24" color="#785bff">}}




{{<matomeQuote body="彼らを責められる？その国境がどこかっていう紛争があるんだと思うよ。だから細かく「geofencing」するのが難しいんじゃない？" userName="fragmede" createdAt="2025/06/16 12:09:12" color="">}}




{{<matomeQuote body="クリミアはロシアが占領してるウクライナの土地だよ。紛争なんてほとんどない、ロシアだけが自国だって言ってるだけ。ベラルーシは傀儡国家みたいなもんだから数に入れない。<br>世界の他の国は、ロシアが占領してるウクライナの土地として見てるよ。" userName="borski" createdAt="2025/06/16 18:11:59" color="">}}




{{<matomeQuote body="武力で占領された土地じゃないと思う。クリミアの大多数の人は住民投票に参加して、ロシア連邦に入るのが一番多かったんだよ。<br>国際法では「Self-determination（自己決定権）vs 領土保全」っていう矛盾する考え方があってさ。人が自己決定権を求めても、国は違法って言うんだ。Cataloniaみたいにうまくいかない時もあれば、Kosovoみたいにうまくいく時もある。Hawaiiがアメリカの50番目の州になった時も、住民投票で決まった少し前の例だね。<br>0. https://en.m.wikipedia.org/wiki/Self-determination" userName="sharpshadow" createdAt="2025/06/17 09:48:04" color="">}}




{{<matomeQuote body="あの住民投票は併合された後で、投票所にはロシア軍がいたんだよ。承認率は97パーセント。<br>別のニュースだけど、Putinは完全に民主的に選ばれた大統領で、全然腐敗してないってさ。" userName="borski" createdAt="2025/06/17 09:55:19" color="">}}




{{<matomeQuote body="正直言って、国境ってこの2年以上そんなに大きく動いてないんだよね。畑や廃墟になった集落が少し変わったくらい。<br>あと、彼らはドローンボートにStarlinkを使ってるから、ある程度の柔軟性が必要なんだと思うよ。" userName="_joel" createdAt="2025/06/16 13:51:00" color="">}}




{{<matomeQuote body="それは俺の印象と全然違うな。もし端末がサービスプランや制限の情報を保持してないなら、もっと上位で管理されてるってことだろ。このブログ記事だけじゃ、端末が制限を無視するように設定できるかどうかわからないけど、”disablementCode”を無視するだけじゃ不十分だと思うんだ。" userName="some_random" createdAt="2025/06/16 14:31:59" color="">}}




{{<matomeQuote body="多分、他のISPみたいに、端末はVLANに入ってるんじゃない？" userName="ahoka" createdAt="2025/06/16 09:00:15" color="">}}




{{<matomeQuote body=" modulated board-to-board Ethernetを選んだのが面白いね。 MACからMACにRGMIIを走らせるだけじゃなくてさ。" userName="15155" createdAt="2025/06/15 14:53:08" color="">}}




{{<matomeQuote body="Ethernetの方がプロトタイプずっと簡単そうだよ。RGMIIで通信するための既製品なんてほとんどないけど、EthernetならテストするためにノートPCに挿すだけだろ。もし二つの違うチームがものを作ってるなら、インターフェースをEthernetに決めちゃって、統合テストを遅らせるか、リリースを早くする方がずっと楽に思えるね。" userName="msgodel" createdAt="2025/06/15 16:17:11" color="#38d3d3">}}




{{<matomeQuote body="RGMIIはEthernetの obscureな競合相手じゃなくて、むしろEthernetは”MAC”と”PHY”チップが”MII”インターフェースで繋がるモジュラーな二部構成として設計されたんだよ。RGMIIはその最新版ってだけ。<br>多くのEthernet対応SoCはいまだにいろんなMIIスタイルのインターフェースを使ってる。だって、特にみんながEthernetを使うわけじゃないなら、物理層を外部チップに任せる方が理にかなってるからね。<br>これはThunderboltを使うのと、生（raw）のPCIeを使うのとの違いみたいなものかも。同じマシンの中で二つのものを永続的に繋ぐだけなら、技術的にはThunderboltは必要ないはずだよね。<br>それをproperにやって、シリコン効率を良くするのが賢いのか、それとも単に ASAPで出荷するのがいいのか？わかんないな。どうなるか見ものだね。" userName="numpad0" createdAt="2025/06/15 23:10:42" color="#785bff">}}




{{<matomeQuote body="RGMIIはboard-to-boardで動かすのがめっちゃ大変なんだよ（信号線がたくさんあって、かなり精密な長さ合わせやインピーダンス制御とかが必要だし、より良いboard-to-boardコネクタもとか）。そして結局、Ethernetで走らせるよりロバストじゃない可能性が高いね。SGMIIの方がずっと信号線が少ないから、そっちの方がずっと使いたいな（たとえ速度がずっと速くても）。<br>彼らが使ってるチップには、最初からEthernet PHYが内蔵されてる可能性もあるし、それもEthernetを使ってる理由の一部かもしれないね。" userName="stephen_g" createdAt="2025/06/16 00:18:51" color="#785bff">}}




{{<matomeQuote body="いや、信号なんて各方向に半ダースくらいだし、125Mhz DDRで動いてるだけだよ。rpi picoみたいなものでもビットバンギングできるくらいの近さだよ。" userName="monocasa" createdAt="2025/06/16 07:24:02" color="">}}




{{<matomeQuote body="RGMII PHYとMagJackが付いた3ドルのブレークアウト基板があれば、アナログ通信に頼らずにこの問題は解決できるだろうね。" userName="15155" createdAt="2025/06/15 17:33:19" color="">}}




{{<matomeQuote body="組み立てだってタダじゃないよ。エンジニアかPCB製造業者が組み立てなきゃいけないし。それに設計もタダじゃないし、必ずしも相手側のデバイスの振る舞いと一致するわけでもないだろうね。<br>でも、君のノートPCのEthernetアダプターはノートPCにタダで付いてくるし（お金の面でも、手元にあるから待たずに済む面でも）、そしておそらくもっと重要なのは、ノートPCメーカーやユーザーが君のために QAしてくれてるってことだ。だから、設計してるデバイスがうまく動かない時でも、それが絶対期待通りに動くってことが分かってるんだ。" userName="msgodel" createdAt="2025/06/15 17:37:15" color="#45d325">}}




{{<matomeQuote body="組み立てはタダじゃないし、設計通りだとisolation transformerとかないとラップトップのEthernetにはそのまま繋がらないよ。だから筆者はブレークアウトボードにisolation transformerとジャックを付けたんだね。" userName="15155" createdAt="2025/06/15 18:29:56" color="">}}




{{<matomeQuote body="RGMIIは本来ボード間で使う設計じゃないんだよね。データレート高いし、信号の遅延合わせも必要。2枚のボードだとそれが難しくなる。EMI／EMCの問題も出そう。評価キットではやるけど、製品版には向かないやり方だよ。" userName="jpm_sd" createdAt="2025/06/15 20:12:30" color="#45d325">}}




{{<matomeQuote body="これ、かなりPoCっぽいね。デジタル→アナログ→アナログ→デジタルは効率悪いし、RGMIIでMACとPHYを繋ぐ方が抽象的には良いかも。記事のインターフェースはアクセスしやすいか、内部を深く探る必要が少ないから選ばれたんじゃないかな。Starlink MiniのRGMIIラインがどこにあるか分からないし、設計によってはもっと奥に隠れてるかもしれないしね。" userName="MOARDONGZPLZ" createdAt="2025/06/15 15:24:36" color="#785bff">}}




{{<matomeQuote body="この改造の目的がよく分かんないな。MiniにはすでにRJ45ジャックがあるから、Ethernet PHYにアクセスするためにハックする必要ないじゃん。Wi-Fiルーターも設定ページでオフにできるし。ウクライナで提供されてるMiniはEthernetジャックのサポートがなくなったのかな？WiFiボードにはまだ電源ジャックの隣にあるみたいだけど。" userName="CamperBob2" createdAt="2025/06/15 16:34:01" color="#45d325">}}




{{<matomeQuote body="Wi-Fi信号が一切出ないように絶対確実にしたかったのかもね。設定ページでオフにするだけじゃ全然足りないよ。起動中にWi-Fiチップが信号出すかもしれないし、現場でうっかりリセットされる可能性もある。SpaceXが設定をいじるようなアップデートを出すことだってあり得るしね。" userName="dogben" createdAt="2025/06/15 16:58:42" color="#785bff">}}




{{<matomeQuote body="まあ、それはすごいけど、衛星通信のアンテナ動かしてる時はWi-Fiの電波なんて一番心配しなくていいことの一つだと思うけどね。Kuバンドには傍受しようと思えばいくらでもできる電波が出てるだろうし。質量を減らすためなら分かる気もするけど。" userName="CamperBob2" createdAt="2025/06/15 17:16:47" color="#45d325">}}




{{<matomeQuote body="Wi-Fiをオフにしても、電力は使うよ（だいぶ少なくなるけど）。SWaP（Size, Weight, and Power）のP（電力）を減らす一番効果的な方法は、ユニットごと全部取っ払うことだね。" userName="MOARDONGZPLZ" createdAt="2025/06/15 18:22:41" color="">}}




{{<matomeQuote body="質量がすごく重要になるような使用例も想像できるよね。" userName="closewith" createdAt="2025/06/15 16:40:07" color="">}}




{{<matomeQuote body="Wi-Fiだけじゃないよ。ルーター全体の問題なんだ。" userName="j16sdiz" createdAt="2025/06/16 09:39:08" color="">}}




{{<matomeQuote body="あのコネクタって、大きな反射なしにRGMII信号を伝送できるものよりずっと安いんだよね。結局、コネクタを良くするより余分なシリコンを積む方が安上がりなんだろうし、アイソレーションがいらないなら磁気部品も不要だと思うな。" userName="dlcarrier" createdAt="2025/06/16 02:18:20" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Ethernetを使うと、ボード間のコネクタに繋がるものの柔軟性が高まるってだけじゃないかな。この記事の場合はWi-Fiルーターだけど、既存のインフラ（モデムだけとか）に接続するためにベアポートが欲しい顧客もいるかもしれないし。それに、両方のボードがどのMII規格を使ってるか心配する必要もなくなるから、それぞれ独立してアップグレードできるよね。Ethernetの物理インターフェースは変わらないけど、MIIはピン数が違うから。" userName="wildzzz" createdAt="2025/06/16 18:49:49" color="#45d325">}}




{{<matomeQuote body="そうそう、そうなるとリンクをちゃんと検出するためにMDIOエミュレーターを書くことになるし、それが独自のシステムだからSMIコードをコメントアウトすることもできないだろうし… 面白いね！" userName="5" createdAt="2025/06/16 00:00:00" color="">}}




{{<matomeQuote body="ブロガーがウクライナのKiev に拠点を置いていることを考えると？ これ、 Predator みたいな長距離ドローンに使われる可能性はかなり高いんじゃないかな。" userName="michaelt" createdAt="2025/06/15 13:47:07" color="">}}




{{<matomeQuote body="これって、 Starlink にリアルタイムで追跡したり、 operation を止めたりする能力を与えちゃうんじゃないの？" userName="mft_" createdAt="2025/06/15 14:12:41" color="">}}




{{<matomeQuote body="うん、数年前にMusk が似たようなことを示唆して少し論争になったのを覚えてるかもしれないね。短距離で十分とか、高 latency に耐えられるなら代替手段もあるけど。もちろん、通信が全く不要な fire-and-forget 型の巡航ミサイルもあるけどね。でも、それほど多くの選択肢があるわけじゃない。過去の衛星インターネット企業、 Iridium 、 Globalstar 、 Teledesic なんかはあまりうまくいってないし。" userName="michaelt" createdAt="2025/06/15 14:44:48" color="#38d3d3">}}




{{<matomeQuote body="よくわからないんだけど、 afaik 、Starlink は速度制限（衛星の可視性と特定の latency の仮定？）があって、それを超えると機能しないんだよね、 right ？でも、ドローンの群れに自分の位置を知らせずにインターネットを使うのには役立つかもしれないね？" userName="tomaskafka" createdAt="2025/06/15 15:14:04" color="#38d3d3">}}




{{<matomeQuote body="もっと興味深い情報で事実確認＞ https://chatgpt.com/share/684eef92-a604-8010-94aa-07200edb4b...<br>AIの会話なんて事実確認にはならないよ。" userName="gruez" createdAt="2025/06/15 16:24:37" color="">}}




{{<matomeQuote body="Iridiumは設計通りにマジでうまく機能するよ—本当にグローバルで低遅延な通信が、指向性アンテナなしでできるんだ。残念ながら、それはデータレートがすごく低いってことでもある。<br>第2世代衛星ネットワークでやっとパケット交換データに対応したけど、データレートは今でもすごく低い（数百kbpsとか、それすらhigh-gain antennasが必要かも）。" userName="lxgr" createdAt="2025/06/15 15:43:41" color="#38d3d3">}}




{{<matomeQuote body="具体的なフィードバックがあるならどうぞ。リンク開けばソースも入ってる。俺が書いたのは、この件に関するばかな誤情報と戦う中で、大量の記事やfirst-party takesから覚えてたことなんだ。そして、ほとんどのcommentersよりずっと役に立つと思ってfact checkを追加しただけ。<br>Replying（trolling？）「lol AI stupid」みたいなのはhelpfulじゃないし、誰もbetter informedにならないよ。" userName="maxlin" createdAt="2025/06/15 16:30:54" color="">}}




{{<matomeQuote body="～Iridium～ devicesは、記憶では、invasionの初期にbrickedされたんだ。だからstarlinkがそんなにbig dealになったし、それがウクライナでproved itselfした後にusmilが「yesterday」欲しがった理由だよ。<br>every branchが自分たちで手に入れようとしてpurchasingがcomplicatedになったから、starlinkをdealするためのdedicated unitをset upする必要があったんだ。<br>そのunit / projectはstarshieldとも呼ばれてて、starlink buses ＋ ng sensor packagesを使うanother starshield projectとconfusingなんだ。<br>edit：IridiumじゃなくてViasatだった、I got them mixed up。" userName="NitpickLawyer" createdAt="2025/06/15 16:45:54" color="#ff5733">}}




{{<matomeQuote body="RussiansもMuskのsatellitesを使ってるし、informationがusefulに思うかもね。<br>あと俺のunderstandだと、satellitesはRussian territory overでworkしないはずだから、これがwhere this can be usedかguessしてみて。" userName="codedokode" createdAt="2025/06/15 16:29:34" color="">}}




{{<matomeQuote body="あれはclicksのためにcontroversyがあるようにmade to appearしただけだよ。Ukrainiansは（understandably）the rulesをbendしようとしたんだ。<br>あれには「this thingはthis big hex gridのthese cellsでworksする」っていうclear limitがあった。<br>そして彼らはthat hex gridからdrove it offした。Plan and simple。<br>Its like if the US-supplied HIMARSがsome built-in limit「it cannot be used to target known Russian nuclear installments」と一緒にcame with、and they’d try to do that。<br>It’s not that those thingsはunquestionableだけど、they are limits that would need US consultationだよ。as USはobviously doesn’t want the thingがa defensive warからsomething elseにescalateすることを。" userName="maxlin" createdAt="2025/06/15 16:12:41" color="#ff33a1">}}




{{<matomeQuote body="Viasat fixed modemsはウクライナでのwarのstartでbrickedされたんだ。and some collateral one’s in border areasでもね。" userName="RF_Savage" createdAt="2025/06/15 17:32:56" color="">}}




{{<matomeQuote body="Actually、they do work is Russia。You need account registered in some allowed country and also use RV plan（or maybe it is called ’roam’ now）。I know some ppl who use it。Was thinking to get one myself、to have a reliable bypass of pathetic russian firewall。" userName="Andrew_nenakhov" createdAt="2025/06/15 17:04:09" color="#45d325">}}




{{<matomeQuote body="Crimeaは「this big hex grid」に入ってるの？<br>If not、why not？" userName="karp773" createdAt="2025/06/15 18:38:30" color="">}}




{{<matomeQuote body="へぇ、Starlinkってロシアでも動くんだ。geolockみたいなのがあるんじゃないの？<br>ロシアのファイアウォールって世界一強力だってデータもあるみたいだけど、話したロシア人たちはVPNはブロックされてないし、ちょっとお金出せばどのサービスも使えるって言ってたよ。" userName="Ray20" createdAt="2025/06/15 23:26:12" color="">}}




{{<matomeQuote body="面白いよね、小さな規模のハッキングで「Computer Security Act」違反だって大騒ぎするアメリカが、Starlinkみたいな超デカくてヤバい攻撃には全然反応しなかったって。" userName="snickerdoodle12" createdAt="2025/06/15 19:30:15" color="">}}




{{<matomeQuote body="Starlinkがクリミアで使えないのは、アメリカのロシアへの制裁のせいだよ。Muskがウクライナの攻撃中にオフにしたからじゃないんだ。" userName="TMWNN" createdAt="2025/06/15 21:31:25" color="">}}




{{<matomeQuote body="あれはロシアでCNNを読むためじゃなくて、ウクライナとの前線で戦うのに使われてるんだよ。" userName="tguvot" createdAt="2025/06/16 04:52:40" color="">}}




{{<matomeQuote body="あれ、アメリカ人には影響なかったけど、私たちヨーロッパ人には影響したんだよ。でもあの時はロシアの安いガスに頼りきってて、軍事力もなかったから、ちゃんと反発できなかったんだよね。マジで、ロシアが反体制派を自由に処刑したり（SkripalとかベルリンのTiergarten殺人事件とか思い出すな）、2014年にちょこまか侵攻して領土を奪ったりするのも許してたし。これどっちもマジでヤバい行動で、クリミア/ドンバスの奪取なんて宣戦布告レベルだったよ、俺に言わせればね。でも結局、安いガス欲しさにプーチンにペコペコしてただけ。" userName="mschuster91" createdAt="2025/06/15 22:53:22" color="#ff5c5c">}}




{{<matomeQuote body="俺の知り合いは、前線からはかなり離れたエカテリンブルクに住んでるけど、使ってるって言ってたよ。" userName="Andrew_nenakhov" createdAt="2025/06/16 05:08:52" color="">}}




{{<matomeQuote body="うん、他のコメントにもあったけど、Starlink端末ってロシアでも動くらしいね。それにMuskが攻撃中にオフにしたって報告もたくさんあるし、2018年頃からのあの人の予測不能な行動見てると、信じるのも難しくないよ。先日だって、NASAのDragon打ち上げを止めるって文字通り脅してたしさ。" userName="karp773" createdAt="2025/06/16 12:53:59" color="">}}




{{<matomeQuote body="米国国民に影響しないなら、米国の会社を攻撃しても大丈夫ってこと？皮肉っぽい感じかな。" userName="snickerdoodle12" createdAt="2025/06/15 23:53:13" color="">}}




{{<matomeQuote body="Starlink端末は銃と同じで、ただの道具だよね。気に入った使い方ならOKなのに、そうじゃないと悪いって騒ぐ人がいるのは不思議じゃないね。" userName="justsomehnguy" createdAt="2025/06/15 19:36:02" color="">}}




{{<matomeQuote body="”他のコメントによると”って、笑っちゃうね。ジオブロックは厳しいよ。ロシアがStarlinkを使えたのは、端末を奪った時だけ。ウクライナはStarlinkを戦場での大きな強みにして色々システムを作ってるから、ずっと恩恵を受けてるんだ。<br>＞彼の不安定な行動を考えると信じるのは難しくない<br>おめでとう、君は誤情報とメディアの扇動に乗っちゃったね。5年後にどうなってるか見てみな。将来のFalcon 9が全部爆発するって言うくらい、区別がつかないんだね。" userName="maxlin" createdAt="2025/06/16 14:37:30" color="#ff33a1">}}




{{<matomeQuote body="Starlinkみたいな非対称戦の技術に関わってるエンジニアや科学者が、敵から狙われないか心配だよ。有名になると、かえって危なくならないかな？" userName="neilv" createdAt="2025/06/15 22:26:55" color="">}}




{{<matomeQuote body="アーカイブ版はこちら。<br>https://archive.ph/UTFTK" userName="donohoe" createdAt="2025/06/15 14:04:21" color="#ff33a1">}}




{{<matomeQuote body="Starlinkって、どのSoCを使ってるの？Broadcomなの？" userName="brcmthrowaway" createdAt="2025/06/15 16:08:22" color="">}}




{{<matomeQuote body="MediaTekだよ。" userName="inemesitaffia" createdAt="2025/06/15 18:22:52" color="#38d3d3">}}




{{<matomeQuote body="これはいいね！ Starlinkが本当にこんな感じのdishとmodemだけのサービスを提供して、CGNATじゃなくてちゃんとしたIPv4アドレスをくれればいいのにと思うよ。ビジネスプランだとそうらしいけど、すごく高いんだよね。" userName="purpleidea" createdAt="2025/06/16 07:32:56" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Starlink経由でもトンネルを使えばPublic IPは手に入れられるよ。MTUが減ったり、トンネル終端までの余分なホップがあるから100％効率的じゃないけど、機能はするよ。" userName="dboreham" createdAt="2025/06/16 11:51:25" color="#ff5c5c">}}




{{<matomeQuote body="これは新しいISPではよくあることなんだ。v4アドレスの購入申請は、適切なアドレス利用計画がないと承認されないからね。すべての家庭ユーザーにPublic IPを配るのは、もうv4スペースのいい使い方とは見なされないことが多いんだ。" userName="kortilla" createdAt="2025/06/16 07:45:03" color="">}}




{{<matomeQuote body="著者はどうやってEthernetのピンアサインを見つけ出したんだろう？ すごいことだよ！<br>あとGRPCを使ってるのも称賛に値するね。急いで適当にやってるんじゃなくて、ちゃんとした能力のある人がいるってことだ。" userName="leoh" createdAt="2025/06/16 06:54:22" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
