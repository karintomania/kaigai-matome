+++
date = '2025-06-07T00:00:00'
months = '2025/06'
draft = false
title = '古いPC活用でセルフホスト！タダで始める技術的自立の楽しさって？'
tags = ["セルフホスト", "技術的自立", "サーバー", "Linux", "DIY"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> 古いPC活用でセルフホスト！タダで始める技術的自立の楽しさって？

引用元：[https://news.ycombinator.com/item?id=44211273](https://news.ycombinator.com/item?id=44211273)




{{<matomeQuote body="おーっと、宣伝タイム失礼！<br>セルフホスティングのためにわざわざハードウェア買う必要ないぜ。数年経ったローエンドPCはWindowsだと使い物にならないけど、Linuxサーバーとしてはまだまだ十分イケる。君か友達の家に古いノートPCが転がってる可能性は結構高いし、それを再利用できるんだ。<br>俺は2011年のi3で2ユーザー向けにやってるけど、2025年になってもアップグレードの必要は感じないね。<br>ノートPCはアイドル時の消費電力もかなり効率良いから、長い目で見るとデスクトップより理にかなってる。これから始める人にとっては、最高の最初のサーバーになるよ。<br>（あ、ノートPCにUPS機能なんて付いてないよ。24x7で電源繋ぎっぱなしにするならバッテリーは外すことをオススメするぜ）<br>1: https://www.kassner.com.br/en/2023/05/16/reusing-old-hardwar..." userName="kassner" createdAt="2025/06/08 06:20:12" color="#ff33a1">}}




{{<matomeQuote body="そうだね、でもRAID6/RAIDZ2以下だと、無視できないレベルでデータ損失のリスクがあるって言えるよ。多くのノートPCはSATA/M.2ポートが足りないから、パリティRAIDは組めない。RAIDが提供する回復力を求めるなら、新しいハードウェアが必要になるね。「バックアップは最低2箇所の物理的に異なる場所に」っていうルールに従うなら、理想的には違うマシンで2回RAID組むことになるかな。" userName="cherryteastain" createdAt="2025/06/08 07:01:27" color="#45d325">}}




{{<matomeQuote body="これ俺だけじゃなかったんだ！嬉しいね。古いノートPCはRaspberry Piより断然良いし、タダで手に入ることも多いし、電力効率も良いもんね。" userName="anotherpaul" createdAt="2025/06/08 06:26:54" color="">}}




{{<matomeQuote body="正直、個人利用でRAIDの必要性がマジで分からないんだよね。RAIDってバックアップじゃないし、どうせ頻繁に増分バックアップは取る必要があるわけでしょ。99.99%のアップタイムが必要な場合にだけ意味があるんじゃない？<br>あー、たくさんの人が依存してるサービスをホストしてるなら分かるかも（それでもダウンタイムの原因は他が主だと思うけど）でもr/DataHoarderでメディア保管にRAID使ってる人たちを見ると、マジでありえんって思うわ。" userName="PhilipRoman" createdAt="2025/06/08 09:58:45" color="">}}




{{<matomeQuote body="今、まさに13年前のAcerノートPCにLinux Mint XFCE入れて使ってるところから投稿してるよ。古い技術を捨てるのがいつも勿体ないって思うんだ。だから新しいノートPCを買う時が来た時、こいつをHDMIでリビングのテレビに繋いで、25ドルのLogitech K400+ワイヤレスキーボード/トラックパッドを買ったら、今も全然問題なく動いてる。ウェブサーフィン、YouTube、NetflixもOKだし、たまにVS CodeやThunderbirdを開いて仕事関係のチェックもする。Steamのインディーゲームだっていくつかゲームパッドで動くよ。<br>FrameworkノートPCなら、このダイナミクスをさらに加速させるんだろうな。残念ながら俺の住んでる国には発送してないんだ。" userName="safety1st" createdAt="2025/06/08 08:51:35" color="#45d325">}}




{{<matomeQuote body="”タダで電力効率が良い”って言うけど、タダはそうだよ。電力効率は違うね。2年ごとにノートPC買い替えるならともかく、それより古いとそんなに効率良くないはずだよ。" userName="Onavo" createdAt="2025/06/08 06:32:20" color="">}}




{{<matomeQuote body="Lenovo ThinkCentre Mini-PCとかもオススメできるよ。会社がハードウェアをアップグレードする時に、よく安く手に入るんだ。こういうマシンもアイドル時は電力効率が良いし、ノートPCよりさらに場所を取らないし、ケースファンもすごく静かだよ（ノートPCだと負荷がかかるとうるさいことがあるからね）。<br>俺は今、Syncthing, Forgejo, Pi-hole, Grafana, DB, Jellyfinとか色々、i5（第6世代か第7世代）のM910で動かしてるけど、全然問題ないね。" userName="mkayokay" createdAt="2025/06/08 06:43:09" color="#785bff">}}




{{<matomeQuote body="俺の2011年のノートPCは、SATA SSD2台繋いでアイドル時8Wだよ。第10世代IntelのMini-PCは、SSD1台でアイドル時5W。3W差は大したことないけど、Mini-PCに180ドル払ったことを考えたら、タダのPCで元を取るのに何年もかかる計算になるね。" userName="kassner" createdAt="2025/06/08 07:29:14" color="">}}




{{<matomeQuote body="本題だけど、俺がコンピューティングとLinuxにハマったのはこれがきっかけなんだ。高校卒業してすぐ家を出て、唯一のPCは初代Mac Miniと、 blazing 1GhzのシングルコアIntel Atom（32bit）の小さなネットブックだけだった。XPですら遅かったよ。Vistaも当時比較的新しかったWindows 7もインストールできなかった。<br>友達がLinuxのことを教えてくれたんだ。だから失うものはないと思って試してみた。自分が何を得るかは知らなかったけどね。<br>結局どっぷりハマったよ。地元のコミュニティカレッジのゴミ箱からコンピューターを拾ってきて、まあまあまともなマシンをいくつか組み立てられた。今でも古いコンピューターを拾ってきては適当なサーバーにしてるんだ。ノートPCやスマホはだいたい使えるね。全部ができるわけじゃないけど、そこがポイントじゃないんだ。10年前のスマホでもまだ何ができるか知ったら驚くと思うよ。<br>自慢したいわけじゃなくて、マジで何もなくても色んなことができるってことをみんなに知ってほしいんだ。当時はその日暮らしだった。誰も経験してほしくない状況だけど、思ってるよりずっとたくさんのタダのハードウェアがあるんだぜ。みんな色々捨ててるんだ。壊れてすらいない物もたくさん！俺が学んだのは、全部当時5年以上前の物だった。ピカピカの物なんて必要ないし、正直言って、初心者段階を超えないとそこから大きなメリットは得られないんだ。大変だけど、大抵のことは最初は大変だろ。一番大事なのは、それを遊びに変える方法を学ぶことだよ。" userName="godelski" createdAt="2025/06/08 19:15:36" color="#785bff">}}




{{<matomeQuote body="そうそう、最近のゴミ箱から拾えるものってマジでアメージングだよ。俺は壊れたLenovo P720ワークステーションを2台拾って、デュアルXeon silver 32コア、64GB ECC RAMのマシンを動くようにしたんだ。電力はめっちゃ食うけど、3年かけてECC RAMデスクトップを買い足すよりはるかに金がかからない。ぶっ壊れても、部品交換1時間くらいしかかかってないから、コストはほぼゼロだよ。" userName="neepi" createdAt="2025/06/08 22:05:38" color="#38d3d3">}}




{{<matomeQuote body="ノートPCのバッテリーをUPS代わりに使うなら、Thinkpadみたいなビジネス向けPCがいいかも。BIOS/UEFIでバッテリー管理設定できるから、常時繋ぎっぱなしでも劣化しにくいんだって。2010年のThinkpadにもあったらしいよ。使えるバッテリー付きが見つかればいいね！" userName="thatspartan" createdAt="2025/06/08 11:38:30" color="#ff5c5c">}}




{{<matomeQuote body="うちの2011年のノートPCは、SATA SSD2枚でアイドル時8Wだって。Raspberry Pi 4はアイドル3W以下、負荷かかっても6Wちょいなんだってさ。古いPCの消費電力は、あんまりメリットじゃないね。" userName="motorest" createdAt="2025/06/08 07:48:30" color="#785bff">}}




{{<matomeQuote body="冗長性ってホント価値あるよね。安く組めるし。でも、ドライブが壊れるまではその価値に気づかないかもね。でもRAID 5なら、動かしたまま壊れたドライブだけ交換できるから、ダウンタイムなしで済むよ！" userName="j45" createdAt="2025/06/09 01:57:01" color="#ff5733">}}




{{<matomeQuote body="“壊れてもパーツ交換1時間だけ”って、それが魅力なんだと思う。お金ない時って、高いもの触るの怖いじゃん？何が高いかもすぐ。でも、ゴミ捨て場とかで拾ったやつなら…壊しても別にいっか、ってなるよね？" userName="godelski" createdAt="2025/06/09 03:03:20" color="">}}




{{<matomeQuote body="i5入りのM910とかM920qは良い選択だね。中古で$100〜$160なら超お得。でも、長く使うならディスクの状態はチェックしといた方がいいよ（結構劣化してるかも）。新しいモデルは$300超えるし。Minisforum MS-01ってのもあるけど、これは$500近くするから、SFP+とかPCIEが必要ならって感じかな。" userName="zer00eyz" createdAt="2025/06/08 15:53:13" color="#38d3d3">}}




{{<matomeQuote body="バッテリー外すの、なんで勧めるの？火事の心配？最近のノートPCなら、ずっと繋ぎっぱなしでも問題ないんじゃない？それに、そもそも簡単にバッテリー外せない機種も多いでしょ？" userName="shawabawa3" createdAt="2025/06/08 10:33:39" color="">}}




{{<matomeQuote body="Macbookも、ずっと電源繋ぎっぱなしにしてると、自動でバッテリー管理してくれるらしいよ。" userName="cguess" createdAt="2025/06/08 12:43:24" color="">}}




{{<matomeQuote body="あとね、古いノートPCってキーボードとか画面（クラッシュカート）とバッテリー（UPS）が元々付いてるのが良いよね。ホームラボ始めるには最適だよ。唯一の弱点は、他の人も言ってたけど、ストレージ（RAID）の拡張性が低いことかな。" userName="imrejonk" createdAt="2025/06/08 08:03:32" color="#ff5733">}}




{{<matomeQuote body="Linux/debian向けに、この記事みたいに何かできることある？これはOSの機能だろうし、MacbookにLinux入れただけじゃダメだよね？" userName="kassner" createdAt="2025/06/08 13:25:02" color="">}}




{{<matomeQuote body="2012年のMac-Miniが貰い物であるんだけど、元々クソ遅かったんだ。macOSアプデしたら使い物にならなくなった。YouTube見ながらSSD換装して、Debian入れて、さらにCasaOSっていうホームサーバーOSを入れたら爆速になった！Navidromeで音楽聴けるし、Wireguardで外からアクセスできる。Dockerは謎だけど、いっぱい学べたよ。" userName="m-localhost" createdAt="2025/06/08 09:55:28" color="#ff5c5c">}}




{{<matomeQuote body="Framework laptopでポータブルサーバー作って持ち運びたい！i7のパワーを詰め込んだコンパクトなやつ。いつかやりたいToDoリストに入ってるんだ。<br>＞ I bet Framework laptops would take this dynamic into overdriveIt’s in my (long-term) TODO list to build my own enclosure for a Framework motherboard, to make a portable server to carry around during long trips. Something compact that carries the punch of an i7. One day…" userName="kassner" createdAt="2025/06/08 18:44:32" color="">}}




{{<matomeQuote body="ずっと貧乏だったから、タダでできることが大事なんだよね。壊れても大丈夫なように、最近見つけたLenovo M70sに部品足して使ってる。高っかいM4 Macbook Proも持ってるけど、古いのも手放せないんだ。いつ何があるかわからないから、両方の世界に足跡を残しとくのが賢いと思う。" userName="neepi" createdAt="2025/06/09 06:31:08" color="">}}




{{<matomeQuote body="今はtiny mini microマシンが一番コスパ良いみたいだよ。ServethehomeのプロジェクトとかeBayでよく売られてる。この前i5 9400TのLenovo m720qを16GBメモリ付きで100ポンドでゲットしたんだ。消費電力も少ないけど、10GbデュアルSFP NIC入れたらちょっと変わったかな。<br>https://www.servethehome.com/introducing-project-tinyminimic..." userName="philjohn" createdAt="2025/06/08 18:55:15" color="#ff5c5c">}}




{{<matomeQuote body="メディアドライブにはsnapraidがいい感じだよ。ファイルの削除や変更があまりない用途なら、色んな容量のドライブを混ぜて使えるし、パリティでちょっとしたバックアップにもなる。いいところは、どのドライブが壊れたり取り出されたりしても、他のドライブのデータはいつでも読めるところ。<br>I like snapraid for media drives. As long as it’s something without lots of deletes and changes, I bet more space and can use mixed drives and get a bit of a backup too since it’s a manual sync to create or update the “parity”. And the added advantage that any drive taken out or they dies you still can read any if the content on the other drives at any time." userName="xcrunner529" createdAt="2025/06/09 02:52:05" color="#785bff">}}




{{<matomeQuote body="Dell Optiplex Microシリーズもオススメだよ。外付け電源で省エネ。第8世代i5くらいのモデルならeBayで100〜150ドルで手に入る。ほとんどのセルフホスト用途に十分すぎるパワーだし、32〜64GBのRAMとSSD 2台も載せられるよ。" userName="huuhee3" createdAt="2025/06/08 06:49:42" color="#785bff">}}




{{<matomeQuote body="俺は10年前のThinkpad、Core i3でArch Linux入れて使ってるよ。DiscordとかWebアプリはたまに重いけど、普段使いは全然問題なし。ちょっと知識があれば、古いマシンでも結構いけるんだよね。" userName="agumonkey" createdAt="2025/06/08 20:42:33" color="">}}




{{<matomeQuote body="Lenovo M920q、ホームサーバーに完璧なのに、M.2コネクタがケチられてるのがムカつく！2xM.2と1xSATA構成にしたいなら、Intel NUCのTallモデルにするしかないんだよね。" userName="kassner" createdAt="2025/06/08 18:11:44" color="">}}




{{<matomeQuote body="キーポイントは消費電力の6Wだよ。Raspberry Piはアイドル状態ならいいけど、負荷がかかるとすぐスロットルされちゃう。ミニPCやラップトップの方が、アイドルとバースト時の電力効率のバランスが良いんだ（6W/3W vs 35W/8Wみたいな）。前にRPiでセルフホストしてたんだけど、力不足だったんだよね。<br>1: https://www.kassner.com.br/en/2022/03/16/update-to-my-zfs-ba..." userName="kassner" createdAt="2025/06/08 08:09:17" color="#ff5733">}}




{{<matomeQuote body="もしM.2スロットが2つ欲しいなら、p330がいいよ。M920qと同じフォームファクタなんだ。<br>https://www.ebay.co.uk/itm/116583724775" userName="philjohn" createdAt="2025/06/08 18:58:40" color="#ff5733">}}




{{<matomeQuote body="俺の古いPCのスペックはCPUがIntel i7-3630QM (8) @ 3.400GHzで、GPUはNVIDIA GeForce GT 640M、メモリは7818MiBだよ。確かに古さは否めないけど、TVの解像度が1366x768だからこれで十分だったんだ。特にCPUは本当に優秀だったね。ウィンドウマネージャーにXFCEを使ってるのも大きいと思う。XFCEはすごく軽くてキビキビ動くから。" userName="safety1st" createdAt="2025/06/09 12:57:02" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="セルフホストに挑戦するなら、俺はぜひProxmoxを古いハードにインストールすることをおすすめするよ。そして、動かすサービスごとに個別のLXCやVMを使うんだ。DockerコンテナよりもLXCの方が管理しやすいし、理解しやすいと思うのは俺だけかな？<br>あと、コミュニティがメンテしてる素晴らしいスクリプト集があるんだ。これがDockerみたいに手軽に使えるようにしてくれるんだよ：<br>https://community-scripts.github.io/ProxmoxVE/scripts<br>ソフトウェアがDebian（ProxmoxのベースOS）で直接動くものなら、可能な限りLXCを使うようにしてるんだけど、Home AssistantのHAOSみたいにもっと細かい制御が必要な場合はVMが使えるのがいいね。Proxmoxだと、ディスクみたいなものをLXC間で共有するのも比較的簡単だし、自動バックアップも組み込まれてるんだ。" userName="briHass" createdAt="2025/06/08 12:56:14" color="#ff5c5c">}}




{{<matomeQuote body="’何がベスト’かっていうのは、ユースケース（と予算）によると思うんだ。俺はProxmoxを何台かのサーバーで動かしてるけど、すごくいいよ。<br>でも、メインのNASサーバーにはUnraidを動かしてるんだ。これは完全にZFSのドライブ設定のため。色々なサイズやメーカーのドライブを寄せ集めて使えるのは、自宅マシンだとかなり価値があって、すごくお金を節約できるんだよね。" userName="esskay" createdAt="2025/06/09 07:41:38" color="#45d325">}}




{{<matomeQuote body="慣れてるものによると思うよ。LXCコンテナは軽量な擬似VMみたいなものだと思うけど、Dockerはもっと、維持管理せずにすぐに捨てて作り直す、本当に一時的なコンテナっていう感じかな。データだけ保持するんだ。" userName="fourfour3" createdAt="2025/06/10 07:52:38" color="">}}




{{<matomeQuote body="そうそう、俺の環境は全部Proxmox VEとProxmox Backup Serverがベースなんだ。ゲーミングPCだってProxmoxの上にVMを置いて、GPUをパススルーしてるくらいだよ。これ以上ないくらい満足してる。" userName="internet101010" createdAt="2025/06/09 07:47:39" color="#ff33a1">}}




{{<matomeQuote body="俺はlxdでlxcコンテナを管理してるんだけど、何か見落としてることあるかな？" userName="leosanchez" createdAt="2025/06/08 12:59:44" color="">}}




{{<matomeQuote body="便利でだいたい分かりやすいUIと、バックアップ/リストアみたいな便利なツールが組み込まれてるよ。必須ってわけじゃないけど、もし誰かが始めようとしてるなら、Proxmoxにはやり方に関するドキュメントがたくさんあるし、UIのおかげでウェブサイトやLLMからコピペした設定コードで自分で墓穴を掘ることも少なくなるよ。" userName="nullwarp" createdAt="2025/06/08 13:09:11" color="">}}




{{<matomeQuote body="個人的には、自分の管理/仮想化レイヤーを管理したくなかったんだ。設定をいじりたくならない、全部入りのISOが欲しかった。新しいPMインストールにコンテナのバックアップだけをリストアできて、ホスト側で何か足りないものを心配したくなかった（可能な限りね）。<br>あと、ProxmoxがWeb UIから全部管理できるのも好きだよ。ほとんどのことはLXDでもできるんだろうけど、俺がセットアップした当時はProxmoxが標準的だったんだ（その頃はLXDはまだそこまで洗練されてなかった）。" userName="briHass" createdAt="2025/06/08 13:41:57" color="#ff5c5c">}}




{{<matomeQuote body="セルフホストしたい気持ちはわかるけど、したくない気持ちもわかるよ。セルフホストってのはマジで大変なんだ。Dockerのアップデートが必要だったり、たまに壊れたりするし、自分だけが問題に直面して一人で解決策を探すことになる。それに、うまくいったとしても、たいていちょっと不格好なんだよね。<br>俺がセルフホストしてるツールは、本当にごく一部で、ちゃんと動いてて時間を節約してくれるものだけ（一番はFireflyかな）。でも、結局壊れて諦めた設定にかなりの時間を無駄にしたのは神のみぞ知るって感じだよ。<br>最近は、会社がプライバシーを尊重してて値段も妥当なら、お金を払ってサービスを使うのも全然アリだと思ってるんだ。" userName="aucisson_masque" createdAt="2025/06/07 22:51:16" color="">}}




{{<matomeQuote body="＞ docker<br>そこに問題があるんだよ。Dockerはストレージやネットワーキングに間接的な層を追加するし、セキュリティアップデートとかのためにコンテナを作り直すか、他の誰かがやってくれるのを待つ必要があって、アップグレードも難しくなるんだ。<br>もし upstreamのOSベンダーパッケージとしてデプロイできるものとか、シングルバイナリ（goベースのプロジェクトがよくそう）なものだけにするなら、長期的にはもっと楽になる可能性が高いよ。" userName="zdw" createdAt="2025/06/07 23:50:39" color="#38d3d3">}}




{{<matomeQuote body="まあ、Dockerには良いとこ悪いとこあるよね。Dockerなら同じマシンで違うものを2つ以上動かせるし、別々にアップデートできる。これは、片方が欲しい機能をリリースしたのに、もう片方が大事なものを壊すようなアップデートをした時に結構重要。OSで動かすと両方アップデートしなきゃいけないことが多い。シングルバイナリもたまに良いけど、メモリとディスクスペースがもっと必要になる。（まあ、俺がセルフホスト始めた1996年頃よりは大分マシだけど、それでも問題になることはあるね）" userName="bluGill" createdAt="2025/06/08 00:31:31" color="">}}




{{<matomeQuote body="システムdでシングルバイナリを動かすのが、同じバイナリとそのDockerコンテナレイヤー、そしてDocker自体のオーバーヘッドがあるシステムで動かすより、なんでメモリやディスク容量が必要なんだ？<br>バージョンの衝突は認めるけど、それがどれだけ頻繁に起こる？特にOSベンダーの公式リポジトリからほとんど持ってくるならね。<br>一番多い衝突は、全部がポート80／443を使いたがることだけど、ほとんどのセルフホストサービスは内部ポートで動かして、1つのWebサーバー（ApacheとかnginxとかCaddyとか好きなやつを選べばいい）をフロントに置けば解決できるじゃん。" userName="zdw" createdAt="2025/06/08 01:22:12" color="#ff5733">}}




{{<matomeQuote body="’そこが問題’だって？Dockerはストレージとかネットワークに間接的な層を追加して、セキュリティとかアップデートを受けるにはコンテナを再構築するか、他の人にやってもらう必要があってアップグレードが難しいって？<br>君の言ってること、全然意味分かんないんだけど。Dockerは抽象化レイヤーとしてめっちゃ上手く機能するよ。Docker上で動いてるものは何でも、アップグレードするのがめちゃくちゃ簡単で、心配することすらないくらい。君の主張は的外れすぎて、全部ポイントを逆に捉えちゃってるよ。<br>おまけに、Docker swarm modeを使えばクラスタリングまでタダで手に入る。<br>’OSベンダーのパッケージか、シングルバイナリ（Goベースのプロジェクトはよくやるね）に固執すれば、長い目で見てもっと良い時間が過ごせるだろう’って？<br>君にニュースだよ。実は、今じゃフル機能のKubernetesディストリビューションだって、snapパッケージをさくっとインストールするだけでLinuxディストリビューション上で動くんだから驚くべきだよ。" userName="motorest" createdAt="2025/06/08 07:53:07" color="">}}




{{<matomeQuote body="マジかよ、いやありえない。Dockerは超絶便利だから、パッケージマネージャーとか手動インストールには二度と戻れないね。" userName="phito" createdAt="2025/06/08 06:21:52" color="">}}




{{<matomeQuote body="さっきの2つの段落がなんか対立してるみたいに聞こえたなら、ごめん（後から考えればそう聞こえたのは明らかだけど）。トレードオフがあるんだ。シングルバイナリは、Dockerと共有ライブラリを使うライブラリの間くらいの位置づけ。何が合ってるかは君の状況次第だよ。俺は自分のセルフホスト環境で3つ全部使ってるし、君もおそらくそうすべきだよ。" userName="bluGill" createdAt="2025/06/08 02:10:13" color="">}}




{{<matomeQuote body="それに同意するよ。Dockerにはたくさんの使い道があるけど、セルフホストはその一つじゃないね。セルフホストするなら長期的に考えたいし、色々いじるのに飽きる時がくるってことを考慮したい。<br>だから、ちゃんとしたディストリビューションでパッケージ化されたソフトウェアを使い続けるのがたぶん正しいやり方だと思う。これがLinuxとかBSDディストリビューションの忘れられがちな付加価値、つまり一貫性のあるシステムとメンテナンス、そして簡単なアップグレードパスだよ。<br>Umbrelみたいなのは例外で、あれはDockerをパッケージマネージャーとして使って全部メンテしてるからOKだと思う。" userName="sunshine-o" createdAt="2025/06/08 07:16:20" color="">}}




{{<matomeQuote body="彼らが言ったことは絶対に全部理にかなってるね。<br>君が言ってることは、ほとんどのエンタープライズ環境でさえ完全にやりすぎだよ。ホームサーバーでeBookとかペーパーレス文書をホストする話をしてるのに、Kubernetesクラスターが動かすのに十分簡単だから良いソリューションだって示唆してる？狂気だね。<br>’ニュースがある’って？<br>ニュースがあるのは君の方だよ：Dockerを使う必要がないもの（つまり、公式にサポートされてる唯一のデプロイ方法じゃないもの）に使うのは、食料品を車のトランクに入れて、その車をトラックの荷台に乗せて、それからトラックで家に帰るみたいなもんだよ。「車のマニュアルトランスミッションをトラックのオートマチックトランスミッションで抽象化するんだ」って言うみたいにね。すごいね、それで自分がボスだって見せつけてるつもりだろうけど。<br>オペレーティングシステムは簡単だよ。君はただKool Aidに騙されちゃっただけさ。" userName="movedx" createdAt="2025/06/08 09:50:24" color="#ff5c5c">}}




{{<matomeQuote body="Dockerを使ってる場合、共有ライブラリを使うことで何か節約になるの？Dockerは全部コピーすると思ってた。つまり、各コンテナが独自の共有ライブラリを持ってて、それらのコンテナ全部を動かしてるOSも独自に持ってるんじゃないの？" userName="Lvl999Noob" createdAt="2025/06/08 04:08:52" color="">}}




{{<matomeQuote body="＞＞Oh my god no, docker is so damn useful I will never return to package managers/manual installation.<br>これね。この「コンテナ反対」のコメントって、コンテナのこと何も知らない人が、30年前の技術にしがみついて、たった5分でも何か他のことを調べるのを拒否してるみたいに見えるわ。" userName="motorest" createdAt="2025/06/08 07:55:24" color="">}}




{{<matomeQuote body="必ずしもそうじゃないよ。君はまだ同じカーネルの中で動いてるわけだし。<br>もし君のイメージが同じベースコンテナを使ってるなら、ライブラリは一度しか存在しなくて、Dockerじゃないセットアップと同じメリットが得られるんだ。<br>これはストレージドライバーによるけどね。少なくともデフォルトの、そして一番一般的なoverlayfsドライバーではそうだよ。[1] https://docs.docker.com/engine/storage/drivers/overlayfs-dri..." userName="kilburn" createdAt="2025/06/08 04:38:09" color="#ff5c5c">}}




{{<matomeQuote body="みんなDockerに頼りすぎだよ。プロとしてDockerやk8sをいっぱい使ったけど、Nixosとsystemdの方がメンテやデバッグは断然楽。コンテナは分離のために使うべきで、’docker pull’のためじゃないんだ。Dockerって静的リンクとか宣言的OS設定の下位互換みたいだよね。" userName="ndriscoll" createdAt="2025/06/08 11:41:48" color="#ff33a1">}}




{{<matomeQuote body="Dockerをそんなに頻繁にアップデートする必要ある？俺の環境はDocker自体を1年以上アプデしてないよ。イメージは更新するけど、月1回15分くらいかな。<br>会社のプライバシー尊重は期待薄だし、信用するのも難しいと思う。" userName="princevegeta89" createdAt="2025/06/08 05:53:39" color="">}}




{{<matomeQuote body="いやいや、全然わかってないね。コンテナ化がどれだけみんなを楽にしてるか無視しすぎ。「docker run」よりsystemdが簡単なんてありえない。ホームサーバーにk8sがMadnessだって？無知をさらしてるだけだよ。Ubuntuのmicrok8sでも見てみろって。古い常識に囚われすぎ。" userName="motorest" createdAt="2025/06/08 12:00:35" color="">}}




{{<matomeQuote body="OSのネイティブなパッケージマネージャーとDockerの一番の違いは、アプリの下にあるシステムを更新できるかだね。例えばOpenSSLのHeartbleedみたいなのがまた起きたら、ネイティブならOSのパッケージをアプデして再起動すれば済む。でもDockerだと、ライブラリを含んだコンテナ全部を誰かがビルドし直す必要があって、遅れる可能性が高いよ。" userName="zdw" createdAt="2025/06/08 05:22:01" color="#38d3d3">}}




{{<matomeQuote body="コンテナは運用とセキュリティがめちゃくちゃ大変だよ。アプデの設計、セキュリティスキャン、内部調査、最小権限での実行とか、本当に悪夢だ。いろんなセキュリティガイド（例：https://cheatsheetseries.owasp.org/cheatsheets/Kubernetes_Se...）見てもわかるように、火をつけて忘れるようなものじゃないんだ。開発やパイプラインならいいけど、本番は「bare metal」がいいね。「簡単」なのが「良い」とは限らない。Dockerは万能じゃない。君（相手）は運用を知らない開発者だね。systemctlとかAnsibleとかの方が、メンテしやすくて安定したインフラを安く作れるんだよ。K8sなんて高い専門家が必要。EC2 2台とLBで超巨大アプリも動くんだぜ。君は敵対的だから放っておくわ。" userName="movedx" createdAt="2025/06/08 12:35:15" color="#ff33a1">}}




{{<matomeQuote body="いやいや、全然違うよ。Dockerの「indirection」ってのはOSレベルの分離のことで、全然悪いことじゃない。アプデが難しい？逆だよ。「docker compose pull<br>docker compose build .<br>docker compose up -d」だけで済む。docker-compose.ymlで全部管理できるから、アプリと設定、データが完全に分離するんだ。だからOSに依存しないし、他のVPSに引っ越すのも超簡単。aptとかdnfよりずっと楽だよ。" userName="eddythompson80" createdAt="2025/06/08 00:59:47" color="#38d3d3">}}




{{<matomeQuote body="Dockerが物足りないなんて考えられないね。コンテナ化はインフラ配置の大きな課題を解決するから、業界全体がこっちに来たんだよ。systemdでSDNクラスター組むのが簡単だって？馬鹿げてる。Docker単体だって、「docker run」よりsystemd使うのが楽なんて、信じられない発言だよ。" userName="motorest" createdAt="2025/06/08 11:55:10" color="">}}




{{<matomeQuote body="コンテナのrefreshに時間がかかるって言うけど、大げさすぎだよ。俺の環境だと、CI/CDパイプラインにcronでトリガー仕込んでて、毎晩ベースイメージの最新をプルして、サービスが自動で再デプロイされるだけだよ。全然手間かからないよ。" userName="motorest" createdAt="2025/06/08 08:02:03" color="#ff33a1">}}




{{<matomeQuote body="セルフホストにはDockerが最高のソリューションだよ。1台のサーバーで色んなPHPやPythonバージョンが必要なサービスをいっぱい動かすのにめちゃくちゃ簡単。もし新しいサーバーに移る必要があっても、ボリュームを移すだけで、新しいマシンでコンテナ動かせば終わり。だから、Dockerはセルフホストにすごく向いてるんだよ。" userName="tacker2000" createdAt="2025/06/08 08:44:52" color="#ff5c5c">}}




{{<matomeQuote body="Podmanのrootlessコンテナについてどう思う？rootlessコンテナをアプリごとに別々のOSユーザーで実行すれば、セキュリティ向上と各サービスが自分のリソースしかいじれないようにするのに簡単だと思うんだけど。何か既知の問題とか、Podmanの経験ある？考えを聞きたいな。" userName="feirlane" createdAt="2025/06/08 17:39:42" color="#ff33a1">}}




{{<matomeQuote body="Ansibleみたいなツールもあるし、デプロイはそれ一つでLinux以外ももっとできるよ。Docker以外の分離技術も、systemdとかjailsとか色々あるんだ。" userName="zdw" createdAt="2025/06/08 01:31:23" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="君の見方はDockerの成功を示してるけど、同時にDockerしか知らない世代の過大評価だよ。VMの流行もあったけど、結局Frankensteinみたいなシステムになる。Dockerだとセキュリティも失われがちかな。企業ならいいけど、自宅で数人向けならそんな大掛かりなものいらないでしょ。仕事スキルアップ目的ならDockerやKubernetes使うのもいいけど、Dockerで簡単だと思うことはRaw LinuxやBSDの方が実際はシンプルで簡単だよ。" userName="sunshine-o" createdAt="2025/06/08 19:17:05" color="">}}




{{<matomeQuote body="Docker使うだけで年齢や経験を決めつけるのはおかしいでしょ？Dockerできるずっと前からやってるし、VMも使ってたよ。自宅でもSaaSでもいいけど、Raw Linuxで違うバージョンのPHPアプリを3つ動かすのと、Docker使うのとどっちが簡単？これは進化なんだよ。単なる”hype”じゃない。" userName="tacker2000" createdAt="2025/06/09 16:14:42" color="">}}




{{<matomeQuote body="＞Tools like Ansible exist and can do everything you mention on the deploy side and more (…)’ってコメント、技術的には正しいけど事実として間違いだよ。Dockerが標準で提供する機能を実現するには、Ansibleでめちゃくちゃ大きなカスタムスクリプトを書く必要があるんだ。君の目的は自分でサービスをホストすること？それともAnsibleを延々いじくり回すこと？" userName="motorest" createdAt="2025/06/08 07:58:01" color="#45d325">}}




{{<matomeQuote body="それは良い選択肢だと思うな。特権を失わずにコンテナから多くの機能を得られるのはいいね。Podmanも他のツールと同じだよ。適材適所なら喜んで使う。でも、コンテナ化なしでも同じことできる？最近はChatGPTみたいなの使うと、どんなサービスでもsystemd unitファイル作るのがすごく簡単になったよ。プロンプト一つでかなりロックダウンされたサービスが動くんだ。" userName="movedx" createdAt="2025/06/08 22:36:37" color="">}}




{{<matomeQuote body="Dockerをアップグレードするかどうかは関係ないよ。セルフホストだろうが何だろうが、技術は３つの理由で壊れるんだ。<br>1）何か自分でやった（設定変更、アップグレードなど）<br>2）何か自分でやらなかった（設定変更、アップグレードなど）<br>3）ただ単に。壊れると、まるで仕事みたいなトラブルシューティングが始まって、家の色々なものが動かなくなるのに家族はこっちを見てる…なんてことになるよ。セルフホストはトレードオフがあることを知っとこうね。どこか別の誰かがやってくれてた仕事が、全部自分の肩にかかってくるんだ。" userName="buran77" createdAt="2025/06/08 08:37:59" color="#ff33a1">}}




{{<matomeQuote body="自宅ラボで、コード更新して全コンテナを再ビルドするようなCI/CDパイプライン組んでる人なんて、ほんの一握りだと思うな。大抵は一度`docker pull`して、あとは放置してるんじゃない？正直言って、外部に公開してないプライベートネットワーク内なら、アップグレードサイクルが遅くても許せるかもね。" userName="zdw" createdAt="2025/06/08 15:39:25" color="">}}




{{<matomeQuote body="k8sに言及したのは、コンテナのメリットって、デプロイや実行システム（k8sとか）のこと言うことが多いからだよ。コンテナ自体はLinuxのnamespace機能だし、immutableイメージとかとは関係ない。だから、コンテナ周辺システムに経験があるって話をしたんだ。immutableで宣言的なビルドや配布が簡単なLinuxディストリビューションに慣れてるなら、コンテナは特定の選択肢に過ぎない。ちゃんと使ったことあるなら、systemd unitの方がdocker runよりずっとシンプルだよ。複数のインターフェースがあるのにコンテナにtcpdumpがなくてNATやiptablesをデバッグしたり、`mv`でファイルが置き換わってbind mountが変更を拾わないとか、Dockerのデバッグは面倒なんだ。systemd unitは複雑じゃないよ。" userName="ndriscoll" createdAt="2025/06/08 12:04:55" color="#ff33a1">}}




{{<matomeQuote body="＞It doesnt matter if its my home lab or some Saas server, how is it simpler to serve 3 PHP apps with different PHP versions on raw linux than simply using docker for example?＜って話ね。ごめん、PHPの管理は正直よく分からないんだ。直感的にはまずNixで解決しようとするかな。でも、同じOSでPHPを複数バージョン動かせないなら、それはPHPかディストリビューション側の問題じゃないかな。だから、自宅では多分PHPは避けると思うし、職場でコンテナがこの問題を解決してくれるのはありがたいよ。もっと良い話で締めくくると、もしDockerが好きならFreeBSD Jailsも見てみてほしいな。きっと気に入ると思うよ。両方使ったけど、JailsはOSとの統合レベルが段違い（ZFSと一緒だとね）。本当に両方の良いとこ取りができるんだ。" userName="sunshine-o" createdAt="2025/06/10 09:45:03" color="#45d325">}}




{{<matomeQuote body="必要なものはほとんどセルフホストしてるんだけど、最近ネットが intermittent（断続的）に落ちた時に究極のテストになったよ。面白い疑問がいくつか浮かんだんだ。<br>ー ネットなしでどれだけ生産的にいられる？<br>ー 何が足りない？<br>僕の場合、もっとドキュメントをアーカイブすべきだって分かったし、NixOSはキャッシュをホストしないとオフラインじゃ使えない（これはかなり悪いね）。結局、必要なほとんどをセルフホストしてオフラインでいる方が、すごく生産性が上がることも分かったんだ。" userName="sunshine-o" createdAt="2025/06/07 21:45:43" color="">}}




{{<matomeQuote body="オフラインのドキュメントなら、devdocs [1] をセルフホストしたり、LinuxでZeal [2] を使うのが便利だよ。<br>[1] https://github.com/freeCodeCamp/devdocs<br>[2] https://zealdocs.org/" userName="elashri" createdAt="2025/06/07 22:13:09" color="#785bff">}}




{{<matomeQuote body="オフラインドキュメントは、Emacsで読むInfoドキュメント [1]、Gnome Devhelp [2]、Zeal [3]、Debianのdoc-rfcパッケージ [5] に含まれるRFCアーカイブ [4] をよく使うよ。<br>[1] https://www.gnu.org/software/emacs/manual/html_node/info/<br>[2] https://wiki.gnome.org/Apps/Devhelp<br>[3] https://zealdocs.org/<br>[4] https://www.rfc-editor.org/<br>[5] https://tracker.debian.org/pkg/doc-rfc" userName="teddyh" createdAt="2025/06/07 23:09:07" color="#45d325">}}




{{<matomeQuote body="システムが停止すると、自分のシステムの弱点がわかる良い機会になるね。外部の問題はどうしようもないけど、自分でコントロールできることは対策（Contingency）を考えられる。<br>コストと可能性が見合わなくても、備えを考えるのは楽しいよ。" userName="BLKNSLVR" createdAt="2025/06/08 00:21:33" color="">}}




{{<matomeQuote body="近所の火事で家を追い出された経験から、ホームラボやツールはハードケースに入っていて、低電力でモジュール式がいいって痛感したよ。<br>今家族の家に避難してるんだけど、パッと出してすぐに使えるとすごく助かると思ったね。" userName="ehnto" createdAt="2025/06/08 02:54:27" color="#ff5733">}}




{{<matomeQuote body="インターネットから離れてる時が一番集中できるし、生産的だよ。wgetでサイト全部保存したり、yt-dlpで動画、KiwixでWikipediaをオフラインで見たり、Zealでドキュメントを見たり。<br>SingleFileでウェブページを一枚で保存するのも便利だね。" userName="AstroBen" createdAt="2025/06/08 00:15:41" color="#ff33a1">}}




{{<matomeQuote body="そこで紹介してたwgetのbash alias、シェアしてくれない？<br>俺も使いたいな。" userName="kilroy123" createdAt="2025/06/08 00:29:15" color="">}}




{{<matomeQuote body="これがそのwgetのbash aliasだよ → https://srcb.in/nPU2jIU5Ca<br>ただ、シングルページアプリにはうまく効かないんだ。<br>誰か良い方法を知ってたら教えてほしいな。" userName="AstroBen" createdAt="2025/06/08 00:39:27" color="">}}




{{<matomeQuote body="シングルページアプリを保存するには、chromiumみたいなので前処理してmonolith [0] に渡す方法しか知らないな。<br>例えばこんな感じ [1] にするんだよ。<br>chromium --headless --window-size=1920,1080 --run-all-compositor-stages-before-draw --virtual-time-budget=9000 --incognito --dump-dom https://github.com | monolith - -I -b https://github.com -o github.html<br>[0] https://github.com/Y2Z/monolith<br>[1] https://github.com/Y2Z/monolith?tab=readme-ov-file#dynamic-c..." userName="sunshine-o" createdAt="2025/06/08 06:55:32" color="#ff33a1">}}




{{<matomeQuote body="NixOSはキャッシュをホストしないとオフラインで使い物にならないから、パッケージマネージャーを使うならキャッシュとかリポジトリのバックアップは大事だね。<br>数百、数千の個人に依存するのはすごい時代だと思うよ。<br>個人的には、依存関係全部込みの単一パッケージの方が好きだな。" userName="ehnto" createdAt="2025/06/08 02:48:39" color="#ff5733">}}




{{<matomeQuote body="Kiwix [https://kiwix.org/en/] とかJellyfinはオフラインリソースとしてすごく良いよね。<br>でも、NixOSとかGentooみたいのは、ネットがないとすごく困るし、全部のパッケージをミラーリングするのは現実的じゃないんだよな。" userName="bombcar" createdAt="2025/06/08 02:10:43" color="#45d325">}}




{{<matomeQuote body="Nixはソースコードのリンクまで追えるから、ローカルにURLがあれば全部ビルドできるんだって。" userName="XorNot" createdAt="2025/06/08 08:51:57" color="">}}




{{<matomeQuote body="NixOSは詳しくないけど、Gentoo使いとしてはネット常時接続が必要ってのが分かんないな。詳しく教えてくれない？" userName="hansvm" createdAt="2025/06/08 05:02:54" color="">}}




{{<matomeQuote body="新しいの入れる時はネット前提だよね。UbuntuとかCentOSはDVDソースあったけど、今はあんま使われてないだろうな。" userName="bombcar" createdAt="2025/06/08 12:26:01" color="">}}




{{<matomeQuote body="NixOSはネットなくても普通に使えるよ。問題なんてないし、jellyfinはSpotifyより全然安定してるくらい。ネットから新しいの入れるのは無理だけど、それはどれも同じだし。nginxの設定変更くらいならオフラインでリビルドできるはずだよ。" userName="ndriscoll" createdAt="2025/06/08 13:36:54" color="#45d325">}}




{{<matomeQuote body="長年大丈夫だと思っててテストも成功してたんだけど、ネットなしで簡単なネットワーク設定変えようとした日に詰まったんだよ！なんでか分かんない。オフラインのNixOSはちょっと賭けっぽいな。" userName="sunshine-o" createdAt="2025/06/08 16:12:28" color="#ff33a1">}}




{{<matomeQuote body="世界の．zipみたいなの持っておくのも助けになるかも。いつでも最新モデル用意しとけばいい。LLMはIT sphereを殺すって言われるけど、doomsdayへの合理的な保険にもなるんだ。" userName="larodi" createdAt="2025/06/08 07:25:51" color="">}}




{{<matomeQuote body="数日とか、もっと長い停電でも、自分でrobotryとか使って電源自立できれば耐えられるかもね。でもsocietyが数日でcollapsesするだろうから、すごくうまくhiddenしないとダメだけど。" userName="larodi" createdAt="2025/06/08 10:34:42" color="">}}




{{<matomeQuote body="いい記事だね！若い人がbig techへのdependencyヤバいって気づいてるのが心強いな。昔はみんな自分でhostしてたんだよ。今は簡単になったのに、企業の甘いcandyに流されて”cloud”とかいうvendor lockinに流れちゃう。emailも重要で、記事のは外部service使ってるけど、自分でbusiness ISP契約すればport 25も使えるよ。emailのreputation systemはbig techのblockadeだけど、overcomeすべきだね。" userName="johnea" createdAt="2025/06/07 21:44:39" color="#38d3d3">}}




{{<matomeQuote body="参考までに、FreeBSD使ったemail system、これ見てみて。<br>https://www.purplehat.org/?page_id=1450<br>記事、linuxだけじゃなくBSDsにも触れてたら、もっと良かったかもね。" userName="johnea" createdAt="2025/06/07 23:47:46" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
