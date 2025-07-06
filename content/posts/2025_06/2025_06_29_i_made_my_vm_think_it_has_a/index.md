+++
date = '2025-06-29T00:00:00'
months = '2025/06'
draft = false
title = 'VMにCPUファンがあると認識させた話！？'
tags = ["仮想マシン", "ハードウェア", "システム", "冷却", "テクノロジー"]
featureimage = 'thumbnails/red1.jpg'
+++

> VMにCPUファンがあると認識させた話！？

引用元：[https://news.ycombinator.com/item?id=44413185](https://news.ycombinator.com/item?id=44413185)




{{<matomeQuote body="へー、マルウェア対策の新戦術か！ファンレスPC買って、ロシア語キーボードにすればいいんだね。Krebs on Securityの記事も貼っとくわ！<br>https://krebsonsecurity.com/2021/05/try-this-one-weird-trick..." userName="wkat4242" createdAt="2025/06/29 14:33:58" color="">}}




{{<matomeQuote body="ファンレスPCでロシア語キーボード使ってる俺からの報告！<br>`dmidecode`で見たら、Cooling Deviceはいくつか認識されてるね。Unknownとかが多いけど、Power Supply FanはOKだって。<br>センサーデータでCPU温度も見えてるよ。" userName="patrakov" createdAt="2025/06/29 16:24:37" color="#ff5c5c">}}




{{<matomeQuote body="Streacom FC8 Evoね。普段PCケースってダサいか面白みないなって思うんだけど、Streacomのサイト見たらマジで何か組みたくなったわ。" userName="irusensei" createdAt="2025/06/29 16:51:30" color="">}}




{{<matomeQuote body="LTTが数ヶ月前にSG10の動画出してたよ。あれマジでナイスなコンセプト。見てみて！<br>https://www.youtube.com/watch?v=iLHC2_gByQ8" userName="jdmichal" createdAt="2025/06/30 02:40:12" color="">}}




{{<matomeQuote body="それってさ、単に見た目がスムースな普通のIndustrial PCケースじゃないの？ああいうのも個人的には好きだけどね。" userName="ansgri" createdAt="2025/06/30 15:38:05" color="">}}




{{<matomeQuote body="Industrial PCが何を指すのかよく分からないや。Streacomの中身は、CPUからヒートパイプが出てて、ケースの側面がそのままヒートシンクとフィンになって熱を逃がす感じだよ。" userName="patrakov" createdAt="2025/07/01 00:27:25" color="">}}




{{<matomeQuote body="Industrial PCっていうのは、工業環境で使うPCのことだよ。汚い場所や温度変化が激しいとこ、電気ノイズが多いとこでも動く頑丈なやつ。Node-REDとかSAPとかPLCとか、工場とかで制御に使われることが多いね。" userName="spauldo" createdAt="2025/07/01 05:36:51" color="#45d325">}}




{{<matomeQuote body="Streacomはファンレスとか空冷のケース作ってて、見た目もおしゃれなのが特徴だよ。オーディオ・ビデオ好きとか、PC自作マニア向けだね。Silverstoneとかと同じ感じかな。" userName="irusensei" createdAt="2025/07/02 21:14:52" color="">}}




{{<matomeQuote body="なるほど、Industrial PCとは結構違うんだね。あっちはエンジニアがスペック表をじっくり見て、見た目はサラッとしか見ないイメージだわ。" userName="spauldo" createdAt="2025/07/03 00:18:38" color="">}}




{{<matomeQuote body="片方だけってわけじゃないでしょ。streacom.com/products/db4-fanless-mini-itx-case/#fea... みたいなの設計するの、結構エンジニアリングいるんだよ。" userName="irusensei" createdAt="2025/07/03 08:18:30" color="">}}




{{<matomeQuote body="ファンレスのPCだと多分動かないよ。ボードにファンヘッダーが何も繋がってなくても残ってるだろうからね。" userName="dale_glass" createdAt="2025/06/29 15:51:24" color="">}}




{{<matomeQuote body="じゃあ、自分のPCでOPの逆をやればいいんだね。OSにファンが無いと思わせればいいじゃん。" userName="dom96" createdAt="2025/06/29 15:58:27" color="">}}




{{<matomeQuote body="マザーボードのメーカーはDMIからファンを隠すBIOSオプションを入れるべきだよね。" userName="Gormo" createdAt="2025/06/30 18:11:14" color="">}}




{{<matomeQuote body="外部冷却装置とかどうかな？" userName="syntaxfree" createdAt="2025/06/29 17:41:14" color="">}}




{{<matomeQuote body="PCはタコ出力でファンを認識するんだ。出力がなけりゃ知らない。AliExpressで安い温度制御PWMコントローラー買って、どっかから12V取ってファンを動かせばいいよ。センサーの位置は工夫してね。もっと良い方法もあるけど、それはソフト開発が必要で、3ユーロと15分じゃ無理。" userName="theodric" createdAt="2025/06/29 17:59:14" color="#ff33a1">}}




{{<matomeQuote body="”ファンが無い時を知ってるから”ってどういう意味？温度を測る部分が、暖かくなるはずなのにそうならない場所を測るってこと？<br>システムはどうやって、それがヒートパイプで熱が移動してるだけじゃないって知るの？" userName="lukan" createdAt="2025/06/30 06:46:16" color="">}}




{{<matomeQuote body="今コメントしてるの、ミームだよ - https://knowyourmeme.com/memes/the-missile-knows-where-it-is" userName="junon" createdAt="2025/06/30 08:25:13" color="#785bff">}}




{{<matomeQuote body="うわ、残念。でもこのミーム、この文脈だとすごく意味が通っちゃうね。" userName="bryant" createdAt="2025/06/30 01:47:32" color="">}}




{{<matomeQuote body="問題はファンじゃなくてマザボのファンコントローラーだよ。ファン繋がってなくてもエラーにならないだろうし、patrakovの上のコメントもそう言ってるし。" userName="mananaysiempre" createdAt="2025/06/29 23:18:49" color="">}}




{{<matomeQuote body="OSをVMみたいに見せたら、セキュリティ上がって研究者も楽になるかもね。非仮想化アクセスは許可制にすれば、マルウェア作る人は研究者向けにするか少ないターゲットにするか選ぶしかなくなるし。どっちにしろマルウェア作者以外は得するよ。" userName="Grimblewald" createdAt="2025/06/29 21:58:19" color="#ff33a1">}}




{{<matomeQuote body="Genode / SculptOS[0] ってまさにこの方向性なんだ。プロセス始める前に見せるハードウェアリソースを細かく設定できるよ。アプリはリソース要求定義持ってて、それを実際のリソースでも仮想でもnullでも満たせる。すごいシステムだよ、Doomも動くから実用性も証明済みだし、ソースも綺麗。ドキュメントはちょっとわかりにくいかも。試すならVMで触ってみるのがおすすめ。<br>[0]:https://genode.org/download/sculpt" userName="xelxebar" createdAt="2025/06/30 07:38:51" color="#38d3d3">}}




{{<matomeQuote body="アンチチートソフトの業者も困るだろうね。俺はソフトが自分の場所を知っててほしい派だけど、チーターをスパイウェアみたいなソフトより嫌うマルチプレイヤーゲーマーもたくさんいるからね。" userName="orthoxerox" createdAt="2025/06/29 22:32:55" color="">}}




{{<matomeQuote body="入力ポートがないゲーミングサイバーカフェで、同じフランチャイズ内のPCとしか対戦できないみたいなビジネスって成り立つかな？「チートなし、自分のPCにスパイウェア不要、席でコーヒー持ってきてもらえる」みたいなさ。" userName="mattigames" createdAt="2025/06/30 02:10:27" color="">}}




{{<matomeQuote body="これってゲームコンソールの強みそのものだよね。プレイヤーには設定いらずで安全な専用機、開発者にはプラットフォームがセキュリティ守ってくれるからアンチチートの複雑さを避けられる信頼できる場所としてね。" userName="cpgxiii" createdAt="2025/06/30 17:27:57" color="">}}




{{<matomeQuote body="他には、チートできないゲームっていうのも大事だよね。Steamで、開発者がアンチチートちゃんとしなかったせいでゲームがダメになったってレビュー結構見たし。" userName="mattigames" createdAt="2025/06/30 08:00:09" color="">}}




{{<matomeQuote body="＞ OSをVMみたいに見せる<br>それとも逆かな？<br>VMが仮想化されてるのに全然気づかないようにする、って方向。IBMのlparsはそうだったと思うけど。" userName="bear8642" createdAt="2025/06/29 22:11:50" color="#38d3d3">}}




{{<matomeQuote body="VMの便利なフック機能をホストと連携させたいなら、それは難しそうだね。解決策としては、非VM環境にも同じフックを実装して、権限で実際の利用をブロックすることみたい。VMでは権限を許可したり拒否したりできるけど、非VMでは常に拒否。でも、マルウェアはなぜ拒否されたか分からないようにできるよ。" userName="crazygringo" createdAt="2025/06/30 01:02:53" color="#ff5c5c">}}




{{<matomeQuote body="もしそれが簡単だったら、この記事なんて存在しないよね。" userName="Grimblewald" createdAt="2025/07/02 07:24:25" color="">}}




{{<matomeQuote body="“Simply”って言うけど、これってとてつもない量の作業だよ。”VM内でVM動かせる？”みたいな簡単なことでも、ハードウェアからの huge support が必要になるんだから。" userName="achierius" createdAt="2025/06/30 07:28:27" color="#45d325">}}




{{<matomeQuote body="モバイル開発へようこそ。" userName="comboy" createdAt="2025/06/30 00:11:08" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Oh please no。そんなことになったらPC使うのもアプリ書くのも chore になるよ。誰もモバイルOSとかChrome OSで本気で開発しないのには理由があるんだから。" userName="raxxorraxor" createdAt="2025/06/30 08:28:19" color="">}}




{{<matomeQuote body="これってLinuxのFlatpakとかMacのSandboxと全く同じアイデアじゃないの？" userName="viktorstrate" createdAt="2025/06/30 07:33:11" color="">}}




{{<matomeQuote body="コンシューマー向けマザーボードでSMBIOS情報が実際のハードウェアと一致してるの見たことないんだよね。マルウェアは実際のハードウェアの50%で失敗してもVM/デバッガーで100%失敗すればいい、って考えてそう。でも、それならSMBIOSよりtiming checks使うはずだけど。" userName="AshamedCaptain" createdAt="2025/06/29 14:33:31" color="#785bff">}}




{{<matomeQuote body="＞ I am yet to see _any_ consumer-oriented motherboard where SMBIOS descriptions have even a passing relationship to the actual hardware.<br>特に安いchineese boxesに当てはまるね。「to be filled in by OEM」がlive/production BIOS imagesに入ってるのを何度見たか…。Retiredできるくらいだよ（笑）。" userName="baby_souffle" createdAt="2025/06/29 14:44:33" color="#ff5c5c">}}




{{<matomeQuote body="Bonus points for a non-unique UEFI UUID が Microsoft Intune / Windows Autopilot に登録されてて、Windows入れたら見知らぬ会社のログインを求められるやつね。 Triple-points if the vendor includes a sticker でネット繋がずにOOBEしろって書いてある。" userName="kotaKat" createdAt="2025/06/29 15:02:46" color="#45d325">}}




{{<matomeQuote body="Microsoftが、自分のものでもないマシンをbrickするのを企業に許してるなんて信じられないよ。犯罪的だね。" userName="snickerdoodle12" createdAt="2025/06/29 16:21:09" color="">}}




{{<matomeQuote body="他のデバイスのUUIDをハードコーディングするより、もっと悪質ってこと？犯罪みたいだね。" userName="dylan604" createdAt="2025/06/29 17:49:09" color="">}}




{{<matomeQuote body="自分のデバイスは好きに触っていいんだよ。Microsoftも君のデバイスで好きにやってるんだからさ。" userName="snickerdoodle12" createdAt="2025/06/29 17:59:40" color="">}}




{{<matomeQuote body="OEMがやらかしてUUIDを使い回してなかったら、Microsoftが企業にデバイスで好きにやらせてるだけって話だったんだよ。それは別に不合理じゃない。<br>UUIDを使い回すOEMが、誰のデバイスかっていう цепоを壊してるんだ。" userName="sweetjuly" createdAt="2025/06/29 19:37:10" color="">}}




{{<matomeQuote body="OEMのことは置いといてさ。もし他の人のUUIDが分かっちゃったら、そのUUIDでVMを立ち上げて、それを自分のシステムに追加したら相手のPCを壊せちゃうの？" userName="AnthonyMouse" createdAt="2025/06/29 22:18:27" color="#ff5733">}}




{{<matomeQuote body="ミスは起きるもんだよ。大規模だと避けられないんだからさ。<br>だから、もっと簡単に復旧できるプロセスが必要なのかもね？" userName="shakna" createdAt="2025/06/29 21:00:26" color="">}}




{{<matomeQuote body="僕の高いASUS ROGマザーボード（つまり安物じゃないやつね）も、「OEMが記入する」っていう文字列があって、自分で上書きできなかった気がするんだ。<br>ASUSはツールを持ってるらしいけど、公開してないんだよね。たぶんPCショップ向けなんだろうな。" userName="smileybarry" createdAt="2025/06/29 14:51:04" color="#38d3d3">}}




{{<matomeQuote body="そういや、2011年のASUS Zenbook UX21って知ってる？<br>“Ultrabook”として最初期のモデルだったんだけど、Linuxだと突然シャットダウンするバグがあったんだ。<br>理由はACPIファームウェアが、物理的に無いSATAコントローラーを初期化しようとして、I/O領域の変なところに書き込んじゃってたかららしいよ。<br>（リンク見つからなくてごめんね。）" userName="mananaysiempre" createdAt="2025/06/29 23:24:49" color="#ff33a1">}}




{{<matomeQuote body="でもまさにそこがポイントなんだよ。<br>完成したシステムを売るPCショップは、「システム製造元」欄に自分たちの名前を入れることになってるんだ。<br>もし自分でマザーボードを買ってシステムを組んだなら、誰がその文字列を置き換えるべきだと思う？" userName="iforgotpassword" createdAt="2025/06/29 16:19:00" color="">}}




{{<matomeQuote body="それは分かるけど、BIOSで変えられる設定になってるか、少なくともマザーボードのモデル番号がデフォルトになるべきだと思うんだ。<br>自分で組む場合、ASUSがツールを公開しないから、全く変更できないんだよ。<br>ていうか、前のPCで使ったショップでさえ、そんなツール持ってなかったよ。<br>Windowsで変えても、起動するたびにSMBIOSから書き戻されちゃうしね。" userName="smileybarry" createdAt="2025/06/29 20:56:17" color="#ff5733">}}




{{<matomeQuote body="PCショップで長く働いてたけど、そんなツールにアクセスできたことなんて一度もなかったな。<br>正直、大手のOEMしか持ってないようなものみたいだね。" userName="theshackleford" createdAt="2025/06/30 00:26:57" color="#45d325">}}




{{<matomeQuote body="ASUSのドキュメントには載ってるけど、サポートページにはないんだって。たぶん大きなOEM向けに取ってあるんじゃないかな。" userName="smileybarry" createdAt="2025/06/30 00:58:37" color="">}}




{{<matomeQuote body="昔MS-DOSベースのBIOSフラッシュツールで、コマンドラインオプションで見かけたことがあるよ。どのマザーボードか、どんなオプションだったか覚えてないけどね。" userName="iforgotpassword" createdAt="2025/06/30 03:28:32" color="">}}




{{<matomeQuote body="でもさ、ここで話してるのは普通に売ってるコンシューマー向けのマザーボードのことじゃん。ASUSがこういう設定で売ってるのに、それを変える方法をユーザーに提供しないのは変だよね。" userName="thesuitonym" createdAt="2025/06/30 13:54:06" color="">}}




{{<matomeQuote body="デフォルトは”Asus”にしといて、パソコンショップがその設定を変えるツールを持ってるってのはどうかな？" userName="mrheosuper" createdAt="2025/06/30 02:28:29" color="">}}




{{<matomeQuote body="そうするとASUSが組んだ本物のPCと区別つかなくなるよ。でもほとんどの小さいショップはツール持ってないみたいだし、結局、誰も変えられないって逆の状況になるだけじゃない？" userName="iforgotpassword" createdAt="2025/06/30 03:23:24" color="">}}




{{<matomeQuote body="自分でPCを組むためにマザーボードを買った場合、その人はOEMだよ。" userName="dragonwriter" createdAt="2025/06/29 17:47:18" color="">}}




{{<matomeQuote body="ASUS以外の”ゲーミング”マザーボードでも同じ感じだったよ。たぶん自作PC組む人はSMBIOSのシリアル番号とか気にしないだろうから、メーカーも力を入れてないんじゃないかな？" userName="gruez" createdAt="2025/06/29 15:30:17" color="#785bff">}}




{{<matomeQuote body="もし変えられるなら気になるけど、手に入らない専用ツールが必要なんだよね。他の方法だとUEFIをいじったり、Secure Bootをオフにしないといけなかったりするんだよ。" userName="smileybarry" createdAt="2025/06/29 20:56:55" color="#ff5c5c">}}




{{<matomeQuote body="MSIのPRO Z790-A WIFIってマザーボードで試してみたよ。SMBIOS情報を見てみたら、ManufacturerとかProduct Nameは表示されてるけど、期待したほど埋まってないみたい。<br>（詳細は省略）<br>なんか残念…" userName="encom" createdAt="2025/06/29 16:46:00" color="#ff5733">}}




{{<matomeQuote body="でもさ、マザーボードを単体で買って、完成品のPCじゃなかったら、システムメーカーって存在しないんだから、そこが埋まってないのは当たり前じゃない？" userName="iforgotpassword" createdAt="2025/06/29 16:15:08" color="#ff33a1">}}




{{<matomeQuote body="マルウェアにもバグはあるんだってさ。あるウイルスはバグで拡散速度が半分になっちゃったらしいけど、それでも十分ヤバい損害を与えられるんだって。" userName="hinkley" createdAt="2025/06/29 17:05:51" color="">}}




{{<matomeQuote body="Linuxって最近はファンをどうやって見つけるの？ ACPIとかEFIとかかな？ 俺のマシンではちゃんと動いてるんだけどさ。" userName="msgodel" createdAt="2025/06/29 15:02:35" color="#38d3d3">}}




{{<matomeQuote body="めっちゃたくさんのマザーボード固有のハックで検出してるみたいだよ。ここにソースがあるから見てみてよ。<br>https://lxr.linux.no/#linux+v6.7.1/drivers/hwmon/" userName="AshamedCaptain" createdAt="2025/06/29 19:43:26" color="#45d325">}}




{{<matomeQuote body="これってさ、実際にマルウェアがチェックしてるの？それとも研究者が作ったサンプルなの？" userName="frollogaston" createdAt="2025/06/29 16:32:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そういう変なAPI呼ぶやり方は、解析を難しくするつもりが、AVソフトにすぐ怪しいってバレちゃうよ。難読化してないと逆効果かも。正規のプログラムならいいけどさ。前この分野で働いてたけど、こういうAPI使うのを検出するregex作ったことあるけど結構効果あったよ。" userName="lpapez" createdAt="2025/06/29 14:12:40" color="#ff5733">}}




{{<matomeQuote body="ってことはさ、セキュリティ的にソフトは全部VMの中で動かすべきってこと？" userName="amelius" createdAt="2025/06/29 14:24:39" color="">}}




{{<matomeQuote body="ハードウェアアクセラレーションが無くなっちゃうね。それに、VMを検出したら勝手に止まったり消えたりするマルウェアも多いんだよ。VirtualBoxとかVMwareとかの検出とか、ロシアのキーボード配置を見て止まるロシア系マルウェアとかね。全部じゃないけど、解析されたくなくて勝手に死ぬやつもいるよ。" userName="jeroenhd" createdAt="2025/06/29 15:07:32" color="#ff5c5c">}}




{{<matomeQuote body="ハードウェアアクセラレーションが無くなるって話は、だんだん当てはまらなくなってきてるよ。SR-IOVとかS-IOVが普通になってきて、OSも仮想化を使い始めてる。WSLのおかげでハードウェアメーカーも仮想化に協力するようになったし、MicrosoftはGPU仮想化もできる一時的なWindows VMサンドボックスまで出してるんだぜ。" userName="OneDeuxTriSeiGo" createdAt="2025/06/29 16:13:10" color="#785bff">}}




{{<matomeQuote body="でもさ、それだとVMが直接ハードウェアにアクセスすることになるから、VMを使うメリットが減るか無くなるんじゃない？どっちもいいとこ取りはできないってことだよ。" userName="AshamedCaptain" createdAt="2025/06/29 18:53:57" color="#ff5733">}}




{{<matomeQuote body="完全にそうじゃないよ？SIOVとかSRIOVみたいな仮想化されたPCIEフレームワークは、ハードウェアに直接アクセスさせるんじゃなくて、現代のPCがCPUやメモリを仮想化するみたいに、PCIEデバイスの中に仮想化されたデバイスを作る感じだよ。" userName="OneDeuxTriSeiGo" createdAt="2025/06/29 21:44:05" color="">}}




{{<matomeQuote body="いや、それがまさにこれらのフレームワークの目的だよ。スピードを得るために…ハードウェアに直接アクセスできるようにするんだ。PCIeってのは（すごく大雑把に言うと）どのVMが要求してるかハードウェアに知らせるための方法なんだ。ここからはハードウェアメーカーが、色んな「パーティション」を分離できるか…全く分離できないか、に委ねられることになる。想像するのが難しいくらい攻撃対象が広がるんだ。" userName="AshamedCaptain" createdAt="2025/06/29 21:47:03" color="#ff33a1">}}




{{<matomeQuote body="＞ハードウェアに直接アクセスさせる＞メーカー次第とかウソ言うな！<br>もっとデタラメな投稿続ける前にSR-IOVについてちゃんと読めよ！<br>https://en.wikipedia.org/wiki/Single-root_input/output_virtu..." userName="0points" createdAt="2025/06/30 07:06:40" color="">}}




{{<matomeQuote body="じゃあ、何がデタラメだと思うか正確に説明しろよ、内容のないRTFMメッセージでHNのガイドライン違反する前にさ？<br>お前のリンク先もまさに俺が言ったこと（バスへのマルチプレクサ）と同じこと書いてあるじゃん。これは全部VMにハードウェアへの直接アクセスを与えるためのものなんだよ。そうでなきゃこんな機能について議論する意味ないだろ。これが本当のハードウェアアクセスじゃないなら、何のためのものだと思うんだ？VMホストがIntel PRO1000イーサネットカードをエミュレートしやすくするためか？" userName="AshamedCaptain" createdAt="2025/06/30 11:51:35" color="">}}




{{<matomeQuote body="こっちの方が何をしてるか分かりやすい説明だよ：<br>SR-IOV：https://cdrdv2-public.intel.com/321211/pci-sig-sr-iov-primer...<br>S-IOV：https://cdrdv2-public.intel.com/671403/intel-scalable-io-vir...<br>これらがやってることは「技術的には」直接バスアクセスをさせてるんだけど、そのバスアクセスは制限されてるんだ。VMのアクセスは全てタグ付けされてて、許可された範囲（設定時のハードウェアのアクセス制御で定義される）外にアクセスしようとしたら、VMが何かを触る前にフォルトが出るんだよ。<br>これはVT-dとか他のCPU仮想化拡張が、IOMMUを通じて許可やアクセス制御付きでRAMへの直接アクセスを許可するのと似てるね。<br>そしてSR-IOVとS-IOVのもう一つの主要な要素は、PCI-Eハードウェア自体のインターフェース（仮想関数って呼ばれる）とその文脈、レジスタ、BARなんかを仮想化することなんだ。これはVT-xとか似たような命令がCPU（とレジスタなど）を仮想化するのに似てるよ。そしてこれらの仮想関数はハードウェアでアクセス制御やクォータなんかで制限できるんだ。<br>だから既存のVT-x拡張はCPUを仮想化してて、既存のVT-d拡張はIOMMUとRAMを仮想化してて、既存のVT-cはネットワークインターフェース（ただしPCI-E全体じゃない）を仮想化してる。今度はSR-IOVとS-IOVがPCI-Eバスをレーンごとのアクセス制御付きで仮想化してるんだ。そしてSR-IOVとS-IOVがPCI-Eデバイスハードウェアとその関数＼インターフェースをバス上で仮想化してるんだ（VT-xやVT-dに似てるね）。<br>特にS-IOVは、付属機能というより「SR-IOV 2.0」として見るべきだね。仮想関数から物理関数への変換を、CPUやチップセット内のハードウェアからPCI-Eデバイス自体に移動させるんだ。" userName="OneDeuxTriSeiGo" createdAt="2025/06/30 12:16:05" color="#ff5c5c">}}




{{<matomeQuote body="何がこの混乱を招いてるのか分からないな。<br>＞技術的には直接バスアクセスをさせてるんだけど、アクセス制御で制限されてる<br>これはまさに俺が知ってることで、最初の投稿で言ったことだよ：どのVMが何にアクセスしてるか特定する方法。それは…そのVMにハードウェアへのアクセスを与えるためだ。<br>＞許可された範囲外にアクセスしようとしたら、VMが何かを触る前にフォルトが出る<br>これも、俺が言ったことと全く同じだよ：メーカー次第でパーティショニングがあるかどうかが決まるんだ。そうじゃないと思うのは希望的観測で、どこから来るのか分からないな。<br>これはまさにVMにハードウェアへの直接アクセスを与えることの定義だよ。ソフトウェア制御のエミュレーションは一切行われていないから、明示的にコンテインメントを失って攻撃対象を増やすんだ。<br>一番シンプルなイーサネットカード以外、お前のハードウェアは閉鎖的なファームウェアでこのマルチプレキシングを実装してる可能性が高い。それはハードウェアエンジニアによって書かれたもので、おそらくセキュリティ的には最悪のコードだ。<br>＞VT-dとか他のCPU仮想化拡張が、IOMMUを通じて許可やアクセス制御付きでRAMへの直接アクセスを許可するのと似てる<br>全く違うよ。通常IOMMUは、元々RAMに直接アクセスできるハードウェアを制限するために使うものなんだ。<br>＞そしてSR-IOVとS-IOVのもう一つの主要な要素は、PCI-Eハードウェア自体のインターフェース（仮想関数って呼ばれる）を仮想化することなんだ<br>これが混乱の原因か？仮想って呼ばれてるから、これが仮想化されてるって思うのか？俺がパーティションって呼ぶのは、ハードウェアの観点からはそれにずっと近いからだよ。<br>＞既存のVT-x拡張はCPUを仮想化してて、既存のVT-d拡張はIOMMUとRAMを仮想化してて、既存のVT-cはネットワークインターフェース（ただしPCI-E全体じゃない）を仮想化してる<br>これは全部混ぜてて意味がないね。「RAMを仮想化する」ってどういう意味だ？RAMは通常のMMUですでに仮想化されてるんだ、VT-dは全然必要ない。ハードウェアこそ、メモリの考え方がハードウェアに直接アクセスしてるVMの考え方と一致するように、RAMアクセスも仮想化する必要があるかもしれないんだ（ソフトウェアエミュレーション層を通す代わりにね）、そしてそれがIOMMUの恩恵を受けるんだ（でも一般的には必須じゃない、GARTやVT-cを見てくれ）。<br>でもこれの全体のポイントは、やっぱりVMにハードウェアへの直接アクセスを与えることだ！ここから正確に何を否定したいんだ？" userName="AshamedCaptain" createdAt="2025/06/30 12:35:15" color="#ff33a1">}}




{{<matomeQuote body="それじゃサイドチャネル攻撃にやられちゃうよ。セキュリティ的にはソフトなんか全く動かすべきじゃないけど、どうしてもならAWS Lambdaだけ使いなよ。" userName="eddythompson80" createdAt="2025/06/29 14:45:39" color="">}}




{{<matomeQuote body="＞これはまさに俺が知ってることで、最初の投稿で言ったことだよ：どのVMが何にアクセスしてるか特定する方法。それは…そのVMにハードウェアへのアクセスを与えるためだ。<br>そうだけど、全体的なポイントはVMのアクセスの分離をソフトウェアからハードウェアに移してるってことなんだ。確かにハードウェアのサブセットに直接アクセスさせてるけど、そのハードウェアのサブセットはVMのアクセスから外れた場所からVMのアクセスを制限するように設定されてるんだ。<br>＞これも、俺が言ったことと全く同じだよ：メーカー次第でパーティショニングがあるかどうかが決まるんだ。そうじゃないと思うのは希望的観測で、どこから来るのか分からないな。<br>俺の知る限り、それは実際には真実じゃないな。S-IOVとSR-IOVはハードウェアサポートが必要だ。もちろんメーカーは実装をテキトーにやるかもしれないけど、S-IOVとSR-IOVはパーティショニングが必須なんだ。でも、VMにS-IOVやSR-IOV経由でハードウェアへのアクセスを許可してるなら、最低でも暗黙的にハードウェアメーカーが仕様を正しく実装してるって信用してることになる。<br>＞ソフトウェア制御のエミュレーションは一切行われていないから、明示的にコンテインメントを失って攻撃対象を増やすんだ。<br>これは真実だけど、VT-xとかVT-dなんかも同じだ（つまり、一般的な仮想化拡張機能ね）。S-IOVやSR-IOVが新しいからとか、「バトルテスト」されてないからとか以外は、それらと比べて真実じゃないってことはない。仮想化拡張を使うなら、もう純粋なソフトウェア仮想化はしてないんだからね。<br>＞一番シンプルなイーサネットカード以外、お前のハードウェアは閉鎖的なファームウェアでこのマルチプレキシングを実装してる可能性が高い。それはハードウェアエンジニアによって書かれたもので、おそらくセキュリティ的には最悪のコードだ。<br>全く同じことが現代のCPUのマイクロコードや内部ファームウェア、関連するチップセットにも言えるよ。<br>＞通常IOMMUは、元々RAMに直接アクセスできるハードウェアを制限するために使うものなんだ。<br>そうだよ。そしてVT-dはこれをVMのために拡張して、ホストがソフトウェアレベルのリマッピングをする代わりに、ハードウェアレベルのIO、割り込み、DMAリマッピングを導入するんだ。<br>＞これが混乱の原因か？仮想って呼ばれてるから、これが仮想化されてるって思うのか？俺がパーティションって呼ぶのは、ハードウェアの観点からはそれにずっと近いからだよ。<br>俺は仮想化って呼ぶよ、だってそれは仮想化だから。SR-IOVではまだ仮想化だけど、アーキテクチャ的にはアクセス制御付きのパーティショニングに似てるのはそうだね、でもそれはそれでも仮想化だよ、ネスティングができないだけだ。でもS-IOVは完全にハードウェア上での仮想化で、仮想デバイスのネスティングもサポートしてる。<br>＞でもこれの全体のポイントは、やっぱりVMにハードウェアへの直接アクセスを与えることだ！ここから正確に何を否定したいんだ？<br>ここでの食い違いは、俺（そして他の人もそうだと思うけど）は、ハードウェア仮想化拡張＼フレームワークを通じて、アクセス制御と許可されたハードウェアのサブセットにVMがアクセスすることを、CPU仮想化拡張（これは基本的に常に有効）がそうでないのと同じくらい、「VMにハードウェアへの直接アクセスを与えること」には当たらない、という前提で話してるんだと思う。<br>----------<br>編集：あ、別のコメンターが俺たちのコメントチェーンにいたことも付け加えるべきだったな。SR-IOV＼S-IOVが分離と仮想化機能を正しく実装するかどうかのメーカー次第ってところに反論してたのがその人だって気づいたんだ。それがあれば、君が機能が安全であるためにはハードウェアメーカーが正しく実装することに頼ってるってことを俺が100%理解してるのが少し分かりやすくなるかもしれないな。" userName="OneDeuxTriSeiGo" createdAt="2025/06/30 13:24:07" color="#ff5733">}}




{{<matomeQuote body="それじゃ、アプリごとに長～い権限ダイアログが出てくることになるよ。どのアプリも、ろくな理由もなく（単なるフィンガープリントとして）CPUファンを読みたがるだろうから、どんなアプリも使えるように「許可」をクリックするのに慣れちゃうだろうね。結局マルウェアはすり抜けるだろうさ。これもうモバイルで起きてることだ。" userName="immibis" createdAt="2025/06/29 16:01:44" color="">}}




{{<matomeQuote body="最近のMalwareって意外と署名されてることが多いんだよね。ハッキングされたコード署名証明書が出回ってて、Microsoftは元の顧客のソフトが動かなくなるのを恐れて、証明書の信頼失効に消極的みたい。<br>Malwareがカーネルに潜り込むためによく使う、脆弱性がある古いドライバも同じ。WMI呼び出しする怪しい小さなバイナリは目立つけど、脆弱性だらけの5年前のオーバークロックツールが同じことしてても怪しまれないかも。<br>記事で読んだ研究によると、これは検知を避けるためっていうより、マルウェア解析者のマシンで本物のペイロードを実行させないのが目的なんだって。もしAVがフラグ立てたり検知が発動したりしたら、第2段階はダウンロードされず、ニュースになるような悪さをするマルウェアは（まだ）実行されないってこと。" userName="jeroenhd" createdAt="2025/06/29 15:16:22" color="">}}




{{<matomeQuote body="＞ そうだけど、大事なのはVMのアクセス分離をソフトからハードに移してるってこと。ハードの一部分に直接アクセスさせてるけど、そのハードはVMの外からVMのアクセスを制限するように設定されてるんだ。<br>でも、この“一部分”（普通は機能の一部分じゃないけど）へのアクセスを制御してるのは誰？ 答えはハードウェア。前はソフトがハードをエミュレートしてチェックを入れてた。今はVM OSがハードに直接アクセスしてレジスタを叩いてて、VM間のアクセス隔離は文字通りハードウェアに依存してるんだね。<br>＞ これは本当だけど、VT-xとかVT-dとか（よくある仮想化拡張）でも同じ。SR-IOVやS-IOVでも、新しくて“戦い慣れてない”って以外は同じだよ。“仮想化拡張を使ってるなら、もう純粋なソフトウェア仮想化じゃない”ってね。<br>いや、この例えは正しくないな。VT-xがなくても、386時代からCPUは信用できないコードを実行できるように設計されてる。VT-xを追加すると少し変わるけど、全体的なアーキテクチャから見ればほとんど無関係だよ。だってCPUはどっちにしてもVMゲストコードを直接実行してるんだから（VT-xなしでもよく動いた初期の仮想化ソフトを見て）。<br>ここで言ってるのは、信用できないソフトやユーザーレベルコードからアクセスされるなんて全く想像もしてなかったハードに、信用できないコードが直接アクセスできるようにしてるってこと（GPUみたいに例外は少数あるけどね）。<br>セキュリティ境界の大きさの違いはものすごく大きくて、想像するのも難しいくらい。<br>正しい例えは、JavaScript VMがネイティブCPUコードを生成してたのを、インターネットから直接ダウンロードしたネイティブCPUコードを直接実行するのに切り替えるようなもの。8086レベルのCPUに適当にMMUを乗っけた上でね。理論上は動くけど、実際にはみんなゾッとするはずだよ（当然だけど）。それが適切な例え。<br>SRIOVの議論は的外れ。これらの技術はこういう直接ハードウェアアクセスを可能にするためのもの。SRIOVがハードウェアとVMの間のファイアウォール（君が考えてるもの）なわけじゃない。これらは完全にこの直接ハードウェアアクセスを促進するために設計された技術で、アクセスを防止したり制限したりする目的は全くないんだ。" userName="AshamedCaptain" createdAt="2025/06/30 13:58:35" color="#ff5733">}}




{{<matomeQuote body="＞ 前はソフトがハードをエミュレートしてチェックを入れてた。今はVM OSがハードに直接アクセスしてレジスタを叩いてて、VM間のアクセス隔離は文字通りハードウェアに依存してるんだね。<br>これはもう何十年も前の話だよ。CPUは仮想化のほとんどをハードウェアに任せてる。ほとんどのソフトはハードウェアを設定したり、ちょっとした繋ぎの役割をしてるだけで、別のアーキテクチャを完全にエミュレートしてるんじゃない限りはね。<br>＞ 信用できないソフトやユーザーレベルコードからアクセスされるなんて全く想像もしてなかったハードに、信用できないコードが直接アクセスできるようにしてるってこと（GPUみたいに例外は少数あるけどね）。<br>デバイスがSR-IOVやS-IOVをサポートしてるなら、それは仕様を満たすように設計されてるはず。古いハードウェアでスイッチを有効にするだけじゃないんだ。スタック上の全てのデバイスが標準をサポートしてる必要があって、だからそれらの仕様が課すセキュリティ境界を少なくとも尊重しようと設計されてるはずだよ。<br>＞ JavaScript VM generting native cpu code into directly executing native CPU code directly downloaded from the internet.<br>これはまさに今のモダンブラウザがやってることだよ。ChromeのV8 JSエンジンはJSをパースしてV8バイトコードを生成する。そして実行時にV8 JITがそのバイトコードをネイティブマシンコードにコンパイルして、そのネイティブコードをハードウェアで実行するんだ。JSを解釈してるんじゃなくて、JSをCPUで動くネイティブコードにコンパイルしてるんだよ（予測を使って、コードパスが実行される前にコンパイルが終わるようにしてる）。<br>＞ On a 8086 level CPU with a haphazardly added MMU on top of it. Sure, works on theory. In practice, it will make everyone shiver (and with reason). That is the proper analogy.<br>これも正しくない。P2P DMAサポートは、コンシューマー向けPCI-Eデバイス（主にNVME、ネットワークHBA、GPU）では何年も前から一般的だし、データセンターなんかでは少なくとも10年前から利用可能だよ。<br>＞ On a 8086 level CPU with a haphazardly added MMU on top of it.<br>あと、細かいことだけど、80286（オリジナルの8086から4年足らずでリリースされた8086 CPUの第3世代）には適切なセグメンテーションサポート付きの統合MMUがあったんだ。さらに、MMUは8086よりずっと前から存在してた。8086に最初から統合されてなかったのは、ターゲット市場に必要なかっただけ。<br>＞ The discussion about SRIOV is a red herring because these technologies are about allowing this direct hardware access. It is not that SRIOV is a firewall between the hardware and the VM (or whatever it is that you envision). They are technologies entirely designed to facilitate this direct hardware access, not prevent or constrain it in any way.<br>繰り返すけど、これも単に正しくない。これらはハードウェアを分割し、そのセグメントの隔離を強制するためのフレームワークを提供してる。それはホストが設定したもの以外のハードウェアへのアクセスを「防止し、制限する」ことを意図してるんだ。<br>——<br>もしSR-IOVやS-IOVが謳ってる機能を果たしてないという引用を提供できるなら、喜んでこの議論を続けよう。" userName="OneDeuxTriSeiGo" createdAt="2025/07/01 18:45:25" color="#ff5c5c">}}




{{<matomeQuote body="＞ 何がおかしいと思うか具体的に説明しないで、内容のないRTFMメッセージでHNガイドラインに違反するの？<br>違反って…落ち着いてよ。最初の文を読むだけでよかったんだけど、言い換えてあげるよ。<br>＞ In virtualization, single root input/output virtualization (SR-IOV) is a specification that allows the isolation of PCI Express resources for manageability and performance reasons.<br>（仮想化では、SR-IOVは管理性とパフォーマンスのためにPCI Expressリソースの分離を可能にする仕様です。）" userName="0points" createdAt="2025/07/01 09:42:49" color="">}}




{{<matomeQuote body="アンチウイルスソフトが、静的な呼び出しを解析してマルウェアかどうかを推測するだけっていうのは、正直すごいウザいよね。それやってるなら、信頼できるソフトの許可リスト作って、リストにないソフトはマルウェアだってマークした方がよっぽどマシじゃない？ ほとんど同じように機能すると思うけど。" userName="dom96" createdAt="2025/06/29 16:01:41" color="">}}




{{<matomeQuote body="＞ ハッキングされたコード署名証明書が出回ってて、Microsoftは元の顧客のソフトが動かなくなるのを恐れて、証明書の信頼失効に消極的みたい。<br>俺が知る限り、ほとんど（全部？）のコード署名CAはこれに対して取り締まりを強化してる（というかMicrosoftがプッシュしてるのかも）。署名キーを物理またはクラウドホストのHSMに置くのを義務付けてるんだ。例えば、DigiCertでコード署名証明書を買おうとすると、配送オプションはクラウドか物理HSMしか選べないよ。<br>https://www.digicert.com/signing/code-signing-certificates" userName="gruez" createdAt="2025/06/29 15:31:36" color="#45d325">}}




{{<matomeQuote body="コツは「CrowdStrike」みたいな会社になること。カーネルレベルで動くクソソフトに署名してもらえば、怪しいシステムAPI呼び出しもやりたい放題。VMかどうか判断するなんて考える必要ないよ。<br>検証してないコード＼リリースを顧客のプロダクションマシンにばらまいて、世界が炎上するのを見るんだ。フライトは遅延、重要なインフラは攻撃され、‘リアル’な人々に影響が出る。<br>‘正規の’会社は、ブラックハットハッカーや国家主体が夢にも見られないほどの損害をアメリカ企業に与えてきた。<br>libzma内のxz utilの裏にいる奴らは、ClownStrikeやSolarWindsのような会社が引き起こした損害に匹敵するものを目指してるんだよ。" userName="xyst" createdAt="2025/06/29 17:07:39" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
