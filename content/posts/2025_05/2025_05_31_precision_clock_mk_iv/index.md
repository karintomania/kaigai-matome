+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = '高速カメラも捉える！ 驚異の超精密時計 Mk IV'
tags = ["時計", "エレクトロニクス", "ハードウェア", "ディスプレイ", "高速カメラ"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> 高速カメラも捉える！ 驚異の超精密時計 Mk IV

引用元：[https://news.ycombinator.com/item?id=44144750](https://news.ycombinator.com/item?id=44144750)




{{<matomeQuote body="この時計、持ってるんだけどマジ最高！特に100kHzのリフレッシュレートとアナログLCDドライバのおかげで、高速カメラで見ても全然ちらつかないんだよね。暗くしても大丈夫！あと、今までで一番精密な時計ディスプレイだって断言できる！値段は張るけど、実用性よりアート作品って感じかな。まあ、目が何千Hzも見えない限りね！" userName="geerlingguy" createdAt="2025/05/31 16:01:01" color="#38d3d3">}}




{{<matomeQuote body="これLEDなんだよね。各セグメントが連続的に可変電圧で光る明るさ調整なんだ。普通のLEDドライバってマルチプレックスで、一瞬光ってすぐ消えるフラッシュ方式が多いんだけど、これは各セグメントに専用のドライバが付いてる。だから高速カメラと使うのに超重要なんだね。これは分かりやすい使い方だ。" userName="gblargg" createdAt="2025/06/01 02:31:09" color="#ff5c5c">}}




{{<matomeQuote body="全く関係ないんだけど、確か最近GitHubのコメントで別の時間デバイスのプロトタイプをいじってたのを見た気がするんだ。ちょっと記憶をリフレッシュしてもらえないかな？探してるんだけど、今朝からそれが気になってしょうがないんだよ。よろしく！" userName="newman314" createdAt="2025/05/31 17:26:44" color="">}}




{{<matomeQuote body="GitHubのtime-piリポジトリをチェックしてみて！<br>https://github.com/geerlingguy/time-pi" userName="geerlingguy" createdAt="2025/05/31 17:32:14" color="#ff5c5c">}}




{{<matomeQuote body="「携帯モデムがあれば、基地局から時間を取得できる。これはNITZっていうプロトコルで放送されてるんだ。違うタイムゾーンに入った時にスマホが自動更新する仕組みだけど、キャリアによっては結構不安定だし、GPS使うよりは全体的に劣るね。あと、時計にSIMカード入れたくないんだ。」<br>ただの興味なんだけど、SIMカードなしで携帯モデムで何ができるの？時間は取得できる？" userName="ianbicking" createdAt="2025/05/31 16:00:50" color="">}}




{{<matomeQuote body="CDMAネットワークは、基地局の広告の一部として時間（GPSから）をクリアに放送してたんだ。だから、契約なしで高精度な時間源としてCDMAが使われてたのを見たことあるはずだよ。CDMA機器はTDM調整のために正確な時間が必要だったんだ。残念ながらGSMは同期のアーキテクチャが違って、正確な時間を全然必要としないから、時間を要求するには契約が必要だし、それでもそんなに信頼性高くないんだ。" userName="jcrawfordor" createdAt="2025/06/01 01:38:55" color="#ff5c5c">}}




{{<matomeQuote body="いや、時間を得るにはネットワークへのアクセスが必要だよ。ネットワークから「タダで」タイミングは得られるけど、時間そのものはくれないんだ。" userName="huslage" createdAt="2025/05/31 17:43:24" color="">}}




{{<matomeQuote body="「時間」と「タイミング」の違いが正確には分からないんだけど…？例えば、未知の開始時点からの正確な増加オフセットみたいな感じ？" userName="ianbicking" createdAt="2025/05/31 18:03:03" color="">}}




{{<matomeQuote body="タイミングは全て周期性に関することだよ。もし何かが1秒ごとにビープ音を鳴らすなら、2つのビープ音の間隔は測れるけど、他の情報は全くない。タイミングも、例えば秒の境界に同期してる場合が多いし、ほとんどの時間源はそうするだろうね。時間っていうのは、そのビープ音に何らかのインデックスを付けること。時間源がビープ音を鳴らして、それがN番目のビープ音だって言うことで、Nから実際の時間を計算できるんだ。" userName="lifthrasiir" createdAt="2025/05/31 21:18:00" color="#ff5c5c">}}




{{<matomeQuote body="彼らはチャネルタイミングのことを言ってるのかな？携帯電話の周波数は時間セグメントに区切られてて、各チャネルは各デバイスが送信できるのは自分の”順番”が来た時だけなんだ（これで複数の電話が同じ周波数を同時に共有できる）。" userName="kvmet" createdAt="2025/05/31 21:16:11" color="">}}




{{<matomeQuote body="このタイミング情報ってどうやってアクセスできるの？個人的にモバイルプロキシサービスやってるんだけど、そこに価値を加えられそう。携帯ネットワークって結構面白いよね。" userName="TechDebtDevin" createdAt="2025/05/31 17:50:55" color="">}}




{{<matomeQuote body="SIMなしのスマホと、有効じゃない古いSIMが入ってるスマホって何か違いあるの？" userName="harshreality" createdAt="2025/05/31 23:29:09" color="">}}




{{<matomeQuote body="うん、新しいネットワークだと、5G NRのシステム情報ブロック9（SIB9）がUTC時間を提供してるよ。" userName="offmycloud" createdAt="2025/06/01 03:58:43" color="#ff5c5c">}}




{{<matomeQuote body="ただ、追加のSIBは必ずしも放送されてなくて、オンデマンドで手に入るみたい…そして、SIMカードなしでオンデマンドのSIB要求ができるかはよく分からなかったな。" userName="dezgeg" createdAt="2025/06/02 09:26:43" color="">}}




{{<matomeQuote body="これが文字通りの意味じゃないのは分かってるけど、面白い思考実験になるよね。どんな状況なら911に時間聞くのが有効かな？最初に思ったのは、原発のオペレーターみたいな場合。「19:00ちょうどに炉心を停止しなきゃ、でも時計が全部ダメだ！」ってんで電話して、オペレーターがその時間になったら教えてくれるのを待つ、とか。明らかに無理やりで現実的じゃないけど、考えるのは面白いね。" userName="accrual" createdAt="2025/05/31 17:42:39" color="">}}




{{<matomeQuote body="それはUS Naval Observatoryのマスタークロック電話サービスのためにあるんだよ：<br>719-567-6742" userName="disillusioned" createdAt="2025/06/01 04:49:32" color="#ff5c5c">}}




{{<matomeQuote body="＞どんな状況なら911に時間聞くのが有効かな？<br>たぶん、君の時計が全部ダメ、他所もダメ、雨で日時計もダメ、他の連絡先もダメ…みたいな状況ならかもね。他全部試してダメだったから。（こんな架空の話を聞いたことがあるよ。ありそうもないシナリオだけど、悪天候とか停電とか電話トラブルとか、ありうる話もあるね。）" userName="zzo38computer" createdAt="2025/05/31 21:13:21" color="">}}




{{<matomeQuote body="うーん、実際みんなの”電話”ってほとんどが携帯電話で、ネットワークに繋がらないと電話自体できないし、ネットワークは電話に時間を教えないと通話できないから、2025年ではこういう状況は20世紀の固定電話時代よりずっとありえないね。 :)" userName="HappMacDonald" createdAt="2025/06/01 07:52:26" color="#45d325">}}




{{<matomeQuote body="UKだと、新しく設定したオフィスの電話ルーティングをテストするために999に電話しても大丈夫なんだって。ただ、おしゃべりはダメみたいだけどね。" userName="mattbee" createdAt="2025/05/31 19:57:04" color="">}}




{{<matomeQuote body="時間を聞くのと緊急システムがちゃんと動くか試すのは別だよ。" userName="fc417fc802" createdAt="2025/06/01 00:12:39" color="">}}




{{<matomeQuote body="ヨーロッパの多くの国では、昔、固定電話で時報サービスがあったんだ。<br>俺はそういうサービスで使う音声メッセージを出す装置を設計したことがあるよ。<br>携帯は自動で時間合わせるから、今はもう聞かないけどね。" userName="adrian_b" createdAt="2025/06/01 08:14:13" color="">}}




{{<matomeQuote body="緊急時以外で911に電話するのはダメだよ。<br>でも数十年前までは、多くの人が電話で時報を聞いて時計を合わせてたんだ。<br>俺の所ではTI4-1212だった。「トーンと同時に、時間は…」って言ってたな。" userName="c5karl" createdAt="2025/05/31 18:25:33" color="">}}




{{<matomeQuote body="NISTに電話すれば、今でも「トーンと同時に…」で時報を聞けるよ。<br>URLはここね：https://www.nist.gov/pml/time-and-frequency-division/time-di..." userName="jrockway" createdAt="2025/05/31 18:33:03" color="#38d3d3">}}




{{<matomeQuote body="記事の「要望全部盛り込んだ」って読んで、EthernetポートとPoEつけてNTPサーバーにしたら？って思ったよ。<br>完全にやりすぎだけど、データセンターに飾ってタイムサーバーにしたら面白いなと思ってニヤニヤしちゃった。" userName="boricj" createdAt="2025/05/31 16:01:08" color="">}}




{{<matomeQuote body="0.56インチのディスプレイを使えば、横幅を1Uラックに収まるようにできるかもね。<br>リビングのラックの上に置いたらカッコイイと思うよ。" userName="wpm" createdAt="2025/05/31 19:47:54" color="">}}




{{<matomeQuote body="NTPは10msくらいの誤差が出るから、このディスプレイだと見えちゃうかもね。<br>もっと正確にするならPTPがお勧めだよ。<br>遅延補償できるスイッチとか、プロバイダがダメならGPS付きの時計を屋根に置けばいいんだ。<br>科学のためさ。" userName="Matumio" createdAt="2025/06/01 11:10:33" color="#ff5c5c">}}




{{<matomeQuote body="それは実際めちゃくちゃ役に立つと思うよ！<br>ネットワークタイムが一目でわかるのは、すごく便利だろうね。<br>SCIFsみたいに外部と隔離された環境とかでも使えるし、俺も自分の家に欲しくなったよ。" userName="XorNot" createdAt="2025/05/31 16:34:47" color="">}}




{{<matomeQuote body="SCIFではGPSは使えないもんね。NTPがいいのは同意。あと、決まったタイムゾーンを手動で切り替えたり、いつもUTC表示できるオプションがあると嬉しいな。" userName="signal-intel" createdAt="2025/05/31 17:51:47" color="#45d325">}}




{{<matomeQuote body="SCIFってどうやって時間合わせてるの？光絶縁ネットワークとか使ってSIPRnetとかで同期してるの？気になるなー。" userName="sneak" createdAt="2025/05/31 22:31:26" color="">}}




{{<matomeQuote body="米海軍はパブリックインターネットとかSIPRnet含む色々なネットワークでNTPサーバーを運用してるよ。ここに情報あるから見てみて。<br>https://www.cnmoc.usff.navy.mil/Our-Commands/United-States-N..." userName="signal-intel" createdAt="2025/06/01 02:03:31" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="特殊なプロジェクトなら、一方向のIRIG時間信号をファイバーで送る方法もあるよ。アナログGPSベースバンドをファイバーで送るのも技術的には可能だけど、承認された機器が必要になるね（逆流防止とかポリシー的に）。" userName="offmycloud" createdAt="2025/06/01 06:47:53" color="#ff5c5c">}}




{{<matomeQuote body="これめちゃくちゃクールじゃん！記事もすごく良く書けてて、デザインの決定とか問題点が全部わかる。開発者を応援するためにも自分で買っちゃおうかな。homelabとかtech/hacker spaceに置いたら最高だろうね。<br>唯一の小さな不満はmicro-USBポートなことかな、USB-Cじゃないのがなんでか記事に書いてないね。PD controllerとか入れると複雑になるからかな。普通のUSBでも5V 1A（5.0W）は大丈夫だから、それがシンプルだったのかも。" userName="accrual" createdAt="2025/05/31 17:58:57" color="#785bff">}}




{{<matomeQuote body="PD controllerなんて要らないよ。USB-Cで5V最大3A出すには、決められた値の抵抗2本で十分。入力側にはICなんていらないんだよ。" userName="Kirby64" createdAt="2025/05/31 18:25:18" color="#45d325">}}




{{<matomeQuote body="なるほどね！すごくいいポイントだ。それなら自分で好きなようにUSB-Cポートを追加するのも簡単そうだね。" userName="accrual" createdAt="2025/05/31 20:10:50" color="">}}




{{<matomeQuote body="ほとんどのやつはピンの間隔がすごく狭いから、記事の最後に載ってるような自作環境だと確実に実装するのが難しかったのかもね。" userName="LiamPowell" createdAt="2025/05/31 18:29:30" color="">}}




{{<matomeQuote body="Power-onlyのUSB-Cコネクタなら、電源ピンとCC1/CC2ピンだけだから同じピンピッチの問題はないよ。<br>それに、ここ数年使ってる基板屋さんなら、USB-Cに必要な0.65/0.40パッドももう問題なく対応してるけどね。" userName="bsder" createdAt="2025/05/31 23:07:01" color="#ff33a1">}}




{{<matomeQuote body="そうそう、使えるUSB-Cコネクタは見つかるはずだよ。それに、電源とGNDとd+/d-の信号だけ配線すればいいんだから。" userName="roland35" createdAt="2025/06/01 18:25:05" color="">}}




{{<matomeQuote body="仕事でこの時計２つ使って、高速な映像処理の同期をとってるんだ。すごい便利だから、あと何個か買い足そうと思ってるよ。" userName="sstanfie" createdAt="2025/05/31 16:32:22" color="#38d3d3">}}




{{<matomeQuote body="２つの時計のディスプレイ表示って、どれくらい正確に同期してるの？気になるな。" userName="Scaevolus" createdAt="2025/05/31 17:31:01" color="">}}




{{<matomeQuote body="まともなGPS信号があれば、たぶん１ミリ秒以内の誤差に収まるんじゃないかな。いや、もっと良いかもね。" userName="geerlingguy" createdAt="2025/05/31 17:32:49" color="">}}




{{<matomeQuote body="この時計で使ってるublox MAX-M8みたいな安価なGPSモジュールは、数百ナノ秒くらいのjitterがあるんだ。でももしmicrocontrollerが1PPSをinterrupt routineに繋いでたら、１ミリ秒よりずっと高精度になる可能性もあるよ。" userName="tverbeure" createdAt="2025/05/31 17:56:20" color="#ff33a1">}}




{{<matomeQuote body="＞ jitter of about a few hundreds nanoseconds<br>1PPS出力にそのくらいのjitterはあるかもね。でもたいていは、1PPS信号と理想的な時間の誤差を知る方法があると思うよ。Sylvain Munautって人が、高解像度のTDCとか使ってGPSの理想時間に合わせて別のclockを調整するprojectをやってたな。今linkが見つからなくて残念。" userName="RossBencina" createdAt="2025/05/31 22:58:21" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、そのfeatureあるよ。でもそれって普通、位置情報じゃなくて時間保持専用のGPS moduleにしかついてないんだよね。uBlox LEA-M8Tとか。ああいうのはすごく高くて、10ドルじゃなくて100ドルくらいするよ。" userName="tverbeure" createdAt="2025/06/02 06:58:43" color="#38d3d3">}}




{{<matomeQuote body="そうなんだよね。もし受信状態が良くて、antennaの置き場所もちゃんとしてたら、たぶん数十nsの精度が出るはずだよ。" userName="geerlingguy" createdAt="2025/05/31 18:05:04" color="">}}




{{<matomeQuote body="前職で、あるhardware構成で使ってたんだけど、２つのGPS-disciplined clockの間の一般的なskewは、70 ns（two sigma）って測定値を使ってたんだ。もちろん、自分のsystemでtestせずにこの数字を使っちゃダメだよ。でも、だいたいのorder of magnitude estimateは合ってるってことだね。" userName="addaon" createdAt="2025/05/31 18:30:22" color="#ff33a1">}}




{{<matomeQuote body="正直、記事全部は読んでないんだ。でも、物理的なproduct、特に売るのを作る人にはいつもrespectしてるよ。10 MHz oscillatorがあるのにMHz signalsの話がないのが気になったな。EMI/C report見たかったよ。普通、SMPS frequenciesがspurで見えるから（特にPFM mode）。32KはH7だとshieldingにring of ground推奨されてたっけ。ここで役立ったかは不明だけど。vbatで内蔵RC 32K使えるmicroとか、crystalなしでUSBできるやつもあるしね。一番良いのは知ってるmicro、二番目は持ってるやつだ。ここもそうかもね。LED driver variabilityはniftyだった。大規模IOで厳しいtimingならFPGAかと思ったけど、使ってる解決策はinteresting and worksだね。" userName="Neywiny" createdAt="2025/05/31 16:00:08" color="#ff5c5c">}}




{{<matomeQuote body="＞ EMI/C reportが見たかった。<br>あれ、loop areasをkeep smallしようとしてないtwo layer boardだから絶対badだと思うよ。記事をざっと読んだ感じでは大部分は良さそうだけど、EMIに関する部分は完全に「は？」って感じ。Edit: アートとしてtwo layer stackupなのはいいけど、それでextremely low radiated emissionsになるよう設計されてるって主張するのはちょっとね。" userName="LiamPowell" createdAt="2025/05/31 17:23:48" color="#45d325">}}




{{<matomeQuote body="＞ ループエリアを小さく保とうとしてない<br>テキストを好意的に読めばそれは間違いじゃないけど、EMI特性が良いかはテストしないと分からんね。俺は片面をグラウンドにして設計するのが好きで、テトリスみたいに何時間でもやれるんだ。数日集中して信号品位や電流ループエリアの夢を見ることもあるよ。<br>そういえばさ、電源ラインのインダクタンスはダメって話だけど、今は説明してる時間ないや。" userName="mastax" createdAt="2025/05/31 17:32:59" color="#ff5733">}}




{{<matomeQuote body="その部分は見てないけど、レイアウト画像[0]見るとグラウンドプレーンに大きなカットがあって、トレースがその真上を走ってるね。特にU8とU7の間。グラウンドトレースを追加するスペースはあるのにやってない。<br>CEマークがないからテストしてないと思うな。前のバージョン1000個も売ったならテスト費用は余裕でペイできるのに、法的に必須なテストをやってないのが気になるよ。[0]: https://mitxela.com/img/uploads/clock/mk4/kicad-screenshot2...." userName="LiamPowell" createdAt="2025/05/31 17:48:02" color="#785bff">}}




{{<matomeQuote body="EUのEMCDだけなら、こういう簡単なデバイスならラボによっては1000ドルくらいでやってくれるよ。自分でやることも技術的には可能だけど、正確な法的要件はすぐには分からないな。" userName="LiamPowell" createdAt="2025/05/31 20:04:27" color="">}}




{{<matomeQuote body="自分で100パーセントできるよ。GPS付きだと無線みたいでちょっと領域が変だけど（EMCテストのラボの人も規格の意味分からんって言ってた）。普通のガジェットなら、自己責任で規格満たしてるって宣言するだけ。自信あるなら自分でサインすればいい。何かひどいことしてない限り、規制当局は小さいものにはうるさくないよ。" userName="rcxdude" createdAt="2025/06/01 01:18:03" color="">}}




{{<matomeQuote body="ここらへん（US East Coast）だと、FCC認定ラボでの自己認証テストで、普通の小型デバイスなら1日1000ドルから4000ドルくらいかかるね。" userName="InitialLastName" createdAt="2025/05/31 20:02:09" color="">}}




{{<matomeQuote body="いつも悪いわけじゃないよ。適切なバイパスコンデンサは必要だけど、意図的にインダクタンスを入れて電源ラインをフィルタリングするのは一般的。共振を起こさないように注意はいるけど、細いトレースは抵抗も加えるからそれが助けになる。まあ、こういうPCBではどっちにしても検出できるほどの違いは出ないだろうけどね。" userName="rcxdude" createdAt="2025/06/01 01:14:44" color="">}}




{{<matomeQuote body="ケースがあればスペック内になるかもね。高速信号やクロックのエネルギーは小さいだろうし、その周波数帯じゃトレースは放射源としてダメダメだよ。一番エネルギーが大きいのはLEDじゃないかな、EMIコンプライアンスの下限（10Mhz）よりずっと低い周波数で動いてるし。" userName="Workaccount2" createdAt="2025/05/31 17:51:28" color="">}}




{{<matomeQuote body="MCUの出力は速くスイッチングするから厄介だよね。STM32はどれもスルーレート制限があると思うんだけど、GitHubのコード見たらほとんどのピンで明示的にオフにしてるんだ。何かドライバICとの兼ね合いでできない理由があるんだろうね。" userName="LiamPowell" createdAt="2025/05/31 18:23:29" color="">}}




{{<matomeQuote body="これを思い出したよ。スタジオのマスタークロック、bronic WCD-530WとかEvertzのやつ。俺は1275Tみたいなアナログスタイルが好きかな - https://evertz.com/products/12x5T" userName="Scene_Cast2" createdAt="2025/05/31 16:04:58" color="">}}




{{<matomeQuote body="双子の片割れが宇宙旅行から帰ってきたら、その時計を見て精密さや時間の真実を知ることになるだろうね。" userName="IIAOPSW" createdAt="2025/05/31 18:20:24" color="">}}




{{<matomeQuote body="ISSに行けばいいんだよ。宇宙飛行士は僕らよりミリ秒単位で若いらしい。でも、あの厳しい生活は一日あたり数ミリ秒よりずっと速く老化させるけどね。" userName="hinkley" createdAt="2025/05/31 18:23:03" color="">}}




{{<matomeQuote body="素晴らしい出来栄えだね。リクエスト全部盛り込んで、細部まで書いてるみたいだ。この高解像度だと、実用的なのはカメラ用途だけだろうね。画像や高速カメラの正確なタイムスタンプ記録に使える。でも、画像撮影って一時点じゃないし、露光時間は測るのが難しい。数字もブレる。これならLEDを並べて一つずつ光らせるのがいいよ。画像に複数のLEDが写れば、始まりと終わりが確認できる。まあ、俺は時計一つ必要だっただけだから、もう作っちゃったけどね。" userName="schobi" createdAt="2025/06/01 08:46:23" color="#ff5733">}}




{{<matomeQuote body="俺がめちゃくちゃ技術力ある友達に「趣味を金にしろよ」って言う時、まさにこの製品を想像してるんだ。超技術的で完璧な出来、面白くてスマートなプロダクト。ソースコードも全部公開して、組み立て説明書もあるし、完成品も売って稼げるなんて最高じゃん！好きなことで稼いで生き残れるなんてさ！<br>（もちろん、ハードウェアビジネスって注文増えると製造とか組み立て、発送のロジスティクスがヤバいって現実もあるけど、俺はそれも良い問題だって単純に思うんだよね？)<br>本当に凄い時計だわ。おめでとう、ローンチ成功と売上を祈ってるよ！" userName="gregsadetsky" createdAt="2025/05/31 18:44:33" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺はMk IIIのキットを2つ組み立てたけど、どっちもすごく楽しかったよ。今回は衝動買い決定だね。" userName="xd1936" createdAt="2025/05/31 18:26:52" color="#ff5733">}}




{{<matomeQuote body="船上で使うなら、手動でオフセット設定できる機能が必要だろうね。船の時間は慣習的に船長の裁量で決まるから。" userName="Tabular-Iceberg" createdAt="2025/06/01 08:25:50" color="">}}




{{<matomeQuote body="それってMk Vでの機能リクエストってことかな？" userName="Jolter" createdAt="2025/06/01 08:57:06" color="">}}




{{<matomeQuote body="DIYで極限のパフォーマンスを追求するプロジェクトには、素直にアップボートするしかないね。これがHacker Newsが作られた理由だと俺は思ってるよ。" userName="djoldman" createdAt="2025/05/31 18:20:25" color="">}}




{{<matomeQuote body="YouTubeで動画見てるけど、あの鋼球時計が秒を表示するのをまだ待ってるんだよ。近所の人が殺しにかかるだろうけどね。試作機がうるさすぎるんだ。" userName="hinkley" createdAt="2025/05/31 18:25:03" color="">}}




{{<matomeQuote body="頭の中のバイクメカニックが知りたがってるんだけど、あのボルトをナットから突き出た分だけ削るか、気にしてる？" userName="hinkley" createdAt="2025/05/31 18:21:02" color="">}}




{{<matomeQuote body="PCB設計とEMIについて深く掘り下げてるのめっちゃ面白いね。コスト、製造、コンプライアンスのバランスってマジで考えること多いんだなって再確認したよ。1層をほぼ全部グランドプレーンにするっていうのはすっごく実用的だし、ちょっとしたレイアウトの選び方で信号の質に大きな影響が出るのがすごい興味深いな。みんなが専門知識を共有してくれてありがとう！こういうところがこのコミュニティの価値だよね。" userName="matrix2596" createdAt="2025/05/31 18:30:16" color="#ff33a1">}}




{{<matomeQuote body="これって時計なの？ディスプレイなの？哲学的、存在論的な問題だね。(マジでナイスなプロジェクト！)" userName="KingOfCoders" createdAt="2025/05/31 17:05:48" color="">}}




{{<matomeQuote body="Mk Vへの機能リクエスト！GPSがダメになった時でも、不確かさをちゃんと見積もれるように、3つの原子時計の委員会をオンボードに積むってどう？" userName="lokimedes" createdAt="2025/05/31 16:59:00" color="">}}




{{<matomeQuote body="それは存在するよ[0]。でも安くはないね（ベースモデルのチップで1400ドルくらい）。[0] https://www.microchip.com/en-us/products/clock-and-timing/co..." userName="nullhole" createdAt="2025/05/31 17:29:06" color="#ff5c5c">}}




{{<matomeQuote body="ルビジウム発振器が原子時計なのは、博士号がドクターであるのと同じくらいだよ！(まあ、原子時計って見なされてるって知ってるから心配しないで。俺、ルビジウムモジュール2個持ってるんだぜ。)" userName="tverbeure" createdAt="2025/05/31 17:59:59" color="">}}




{{<matomeQuote body="ついにチップスケール原子時計の良い使い道が出てきたね。https://www.microchip.com/en-us/product/csac-sa65" userName="mastax" createdAt="2025/05/31 17:29:04" color="#ff5733">}}




{{<matomeQuote body="へっ、俺もそう思った！あのチップさ、ナビゲーション信号からもっと良い位置情報を得るのにも役立つんだよ。例えば、偽装信号を除去するのに使うとか想像できるよね。" userName="nullhole" createdAt="2025/05/31 17:32:23" color="#785bff">}}




{{<matomeQuote body="クールなプロジェクトだね。でも、この電力と面積の予算ならチップスケール原子時計使えないの？あと、クォーツの精度が1000秒で1ミリ秒ずれるって書いてあるけど、それ年間31秒でしょ？HAQクォーツ時計（年間±5秒）より精度低いし、シチズン0100（年間±1秒）より全然ダメじゃん。" userName="bubblethink" createdAt="2025/05/31 19:25:55" color="#ff5733">}}




{{<matomeQuote body="この時計はGPSの時刻信号に同期してるんだよ。だからクォーツの精度が必要になるのは、GPS信号がない時か、同期の間だけってこと。" userName="layer8" createdAt="2025/05/31 19:28:15" color="#785bff">}}




{{<matomeQuote body="そうだな、それは分かるけど、そんなに面白くないんだよね。どんな時計だってGPSとかNTPに同期できるじゃん。ARMチップとかフラッシュストレージとかを使った巨大なデバイスを作ってるなら、自律して正確な時計の方がもっとクールだろ。" userName="bubblethink" createdAt="2025/05/31 19:30:17" color="">}}




{{<matomeQuote body="GPSに同期する時計ってどうやって手に入れるか分からないんだよな。NTPサーバーがおかしいか確認したり、オフラインの時にあれば便利だったのに。" userName="layer8" createdAt="2025/05/31 19:35:30" color="">}}




{{<matomeQuote body="市販のGPS壁掛け時計が欲しいなら、Seikoがいくつかモデルを出してるよ。俺はGP502Wを持ってるけど、他にもある。日本のモデルだから、日本から取り寄せる必要があるけどね。" userName="bubblethink" createdAt="2025/05/31 19:38:42" color="#ff33a1">}}




{{<matomeQuote body="アメリカ大陸ならWWVに同期する時計の方が便利な場合もあるよ。外部アンテナがいらないからね。WWVは100nsの精度だけど、アメリカ国内の場所によって伝播遅延はあるよ。" userName="syncsynchalt" createdAt="2025/05/31 22:45:59" color="#ff33a1">}}




{{<matomeQuote body="ラジオ信号の受信って、場所によって悪くなりがちで、もっと影響を受けやすいんだよね。それに、あれも廃止の話が出てたし。" userName="bubblethink" createdAt="2025/05/31 23:43:52" color="">}}




{{<matomeQuote body="ありがとう。それって自動でタイムゾーンを調整してくれるの？" userName="layer8" createdAt="2025/05/31 19:47:45" color="">}}




{{<matomeQuote body="いや、自動ではしないよ。UTCからのオフセットを手動で設定する必要があるんだ。夏時間を使う地域なら、開始日と終了日も自分で設定しないとね。でも電池は3年持つから、すごくメンテナンスフリーだよ。" userName="bubblethink" createdAt="2025/05/31 19:55:53" color="#ff33a1">}}




{{<matomeQuote body="ここから始めるのが良い場所だよ: https://news.ycombinator.com/item?id=44145770<br>BeagleBone Blackと小さなハードウェアRTC、GPSモジュールをGPIOとかシリアルで繋いだ別のプロジェクトも出てる。BBBの利点は、内蔵NICでハードウェアPTPタイムスタンプをサポートしてることだね。週末にパッと一つ作ったんだけど、全部入れる小さい箱を設計する必要がある（ケーブルがごちゃごちゃだから、それを整理するインターポーザーボードも設計したくなったな）" userName="wpm" createdAt="2025/05/31 19:45:05" color="#ff5c5c">}}




{{<matomeQuote body="要求仕様から出荷製品まで、すごく綺麗に書かれてる記事だね。でも、全然使う機会がないのが残念！" userName="addaon" createdAt="2025/05/31 15:29:08" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
