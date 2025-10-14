+++
date = '2025-10-07T00:00:00'
months = '2025/10'
draft = false
title = 'クアルコムがArduinoを買収へ！入門ボードの未来はどうなる'
tags = ["Qualcomm", "Arduino", "買収", "マイクロコントローラー", "オープンソース"]
featureimage = 'thumbnails/purple4.jpg'
+++

> クアルコムがArduinoを買収へ！入門ボードの未来はどうなる

引用元：[https://news.ycombinator.com/item?id=45502541](https://news.ycombinator.com/item?id=45502541)




{{<matomeQuote body="QualcommとArduinoが共同で「Uno Q SBC」って44ドルのボードを出すらしいよ。Dragonwing SoCとSTM32マイクロコントローラーが載ってて、Unoの形をしてるんだって。Arduinoはブランドも既存製品も維持するみたいだけど、買収後どこまで続くかなって心配だね。Pi RP2040/2350やEspressifのボードも選択肢だけど、Arduinoが俺をマイクロコントローラーの世界に引き込んだから思い入れがあるんだ。<br>詳しい情報はここ：https://www.arduino.cc/product-uno-q" userName="geerlingguy" createdAt="2025/10/07 13:19:19" color="#ff5733">}}




{{<matomeQuote body="QualcommがArduinoを買ったのは潰すためじゃなくて、ゲートウェイとして見てるんだと思うな。学生にいきなりARMを学ばせるより、Arduinoのシンプルさを利用して、より低レベルな開発者への入り口にする方が合理的だよ。Arduino IDEがSnapdragonへの橋渡しをサポートするように刷新されても驚かないね。STやTIも同じ戦略をとってるし、悪くないと思うよ。" userName="jajuuka" createdAt="2025/10/07 19:51:31" color="#45d325">}}




{{<matomeQuote body="みんな騒ぎすぎじゃない？もっとシンプルな話だと思うよ。Qualcommは高利益のビジネスを買うのが好きで、Arduinoはまさにそれ。ボードの粗利益は90%以上だってさ（だから30ドルのボードのクローンが3ドルで買えるんだ）。この傾向は衰える気配がないね。30ドルのArduino Unoと同じTIのボードは5ドルだし、あれこそ真のゲートウェイ製品だよ。" userName="pclmulqdq" createdAt="2025/10/07 21:00:49" color="#785bff">}}




{{<matomeQuote body="数年前、Bluepillが2ドルだった頃は、Arduinoってあんまり意味ないように思えたんだけどね。今じゃWiFi付きのESP32開発ボードが6ドルで買えるし、Arduino Uno WiFiは55ドルもするんだぜ。" userName="freeopinion" createdAt="2025/10/07 22:17:09" color="">}}




{{<matomeQuote body="このボード、EMMC、WiFi/BLEがオンボードで、フルLinuxが動くんだって。RP4/5にRP2xxxがくっついてるようなもんだね。Arduino IDEもプリインストールされてるみたい。ちょっとがっかりだけど、Qualcommがこのブランドを使いたい理由もわかる気がするよ。" userName="c0balt" createdAt="2025/10/07 13:26:56" color="#785bff">}}




{{<matomeQuote body="チェックしてみたんだけど、Uno Qのボードの回路図はあったよ。でも、QRB2210 SoC自体のデータシートやSDK、マニュアルとか、ドキュメントが全くないんだ。うん、Qualcommらしいね。" userName="ACCount37" createdAt="2025/10/07 16:40:33" color="">}}




{{<matomeQuote body="BluepillもESP32もArduino IDEでプログラムできるって知ってた？Arduinoライブラリや膨大なスケッチ、サードパーティライブラリも使えるんだ（AVRアセンブリ言語を使ってなければね）。Pi PicoやMilk-V Duo（64bit Linuxコアと64bitマイクロコントローラーコア）、他にもたくさんのボードで使えるよ。" userName="brucehoult" createdAt="2025/10/07 23:23:15" color="#785bff">}}




{{<matomeQuote body="クローンってのはハードウェア設計とソフトウェア開発が必要で、これにはたくさんのお金がかかるんだ。だから部品の最終価格だけで値段を決められないんだよね。Arduinoはハードもソフトもオープンソースだから、安価なクローンが存在できるんだよ。それがソフトウェアやドキュメント作成にも役立って、結果的に彼らにとっても安く済むってわけ。" userName="Romario77" createdAt="2025/10/07 21:59:53" color="#ff33a1">}}




{{<matomeQuote body="Arduinoみたいなシンプルな開発キットを設計するのに、有能なエンジニアなら1日くらいでできるよ。デバッグを含めても1週間ってとこだね。その費用を100万台で償却すれば、エンジニアリングコストは1枚のボードにつき1セント以下になるんだ。" userName="pclmulqdq" createdAt="2025/10/07 22:07:19" color="#785bff">}}




{{<matomeQuote body="Arduino Uno R3/R4みたいにいろんなArduinoボードと比較して話してるんだ。Qボードは2GB RAM、16GB eMMC、プロセッサはPi 3～4相当で44ドル。でも45ドルで買えるPi 5はGPIO、PCIe内蔵でSoCもずっと速いよ。Pi 5はQボードのフォームファクター、高効率SoC、リアルタイムマイコン、ディスプレイ出力付きUSB-Cポートがないのが残念だけどね。" userName="geerlingguy" createdAt="2025/10/07 13:30:22" color="#785bff">}}




{{<matomeQuote body="STM32 MCUは3.3Vだよね？5Vじゃないはず。Arduinoはネーミングが下手すぎるよ。Unoって名前なのにAVRだったりARMベースだったりするし、今じゃ3.3Vか5Vベースかも色々だし、ただのMCUじゃなくてSBCにまでなってるしね。" userName="nic547" createdAt="2025/10/07 13:32:39" color="">}}




{{<matomeQuote body="Raspberry Pi Picoは、計算速度やRAMの面でArduinoを圧倒してるし、価格もずっと安い。Picoが出てからはArduinoを使ってないよ。Picoで足りなければ、もっと高性能なボードもあるし。俺にとってArduinoはもうほとんど終わりだね。Espressifも良いボードを作ってるし。" userName="jacquesm" createdAt="2025/10/08 08:27:13" color="#ff33a1">}}




{{<matomeQuote body="EspressifとPicoのSDKもよくできてるね。Arduino SDKは一番使いやすいけど、PicoフレームワークとPIOは素晴らしいよ。PIOで3線SPIをほぼリアルタイムで実装した経験があるんだ。Linux PCのGCCはタダなのに、なんでArduino SDKはボードに高額な上乗せが必要なんだろう？" userName="serbuvlad" createdAt="2025/10/07 23:57:01" color="#785bff">}}




{{<matomeQuote body="あんまり鵜呑みにしないでほしいんだけどね、俺が連絡を取ってる担当者が、SoCについてもっと情報を出すって言ってたよ…" userName="geerlingguy" createdAt="2025/10/07 16:46:14" color="">}}




{{<matomeQuote body="Arduinoみたいなシンプルな開発キット設計が1日でできるって？ハッ！俺も過小評価はするけど、これは無理だよ。有能なエンジニアでも数ヶ月はかかるんじゃないかな。1日じゃチップのドキュメントすら読み終わらないよ。" userName="RealityVoid" createdAt="2025/10/08 00:55:50" color="#785bff">}}




{{<matomeQuote body="Teensy万歳！<br>誰かがArduinoみたいなボードについてコメントで触れてほしかったんだよね。みんなも知ってると思うけど。<br>https://www.pjrc.com/teensy/" userName="JKCalhoun" createdAt="2025/10/08 12:15:11" color="">}}




{{<matomeQuote body="フリーソフトウェアが無償ボランティアに依存してるからって、それが望ましいわけじゃない。特に、何十億ドルも稼ぐ企業が、その成果の上に成り立ってるのに、ほとんど貢献してないのは問題だよ。" userName="mietek" createdAt="2025/10/08 01:40:39" color="#38d3d3">}}




{{<matomeQuote body="Arduinoにとって、Unoっていうのは、ただ「Unoフォームファクターで、シールドピンが同じ場所にある」って意味なんだと思うよ。" userName="geerlingguy" createdAt="2025/10/07 13:36:02" color="">}}




{{<matomeQuote body="これらのボードの回路図を見たことある？めちゃくちゃシンプルだよ。俺は昔組み込みエンジニアだったけど、『1日』ってのはかなり甘めな評価。データシートをざっと見るのもスキルだし、必要な情報を得るのに丸1日かかるわけないよ。" userName="pclmulqdq" createdAt="2025/10/08 05:16:07" color="#ff5c5c">}}




{{<matomeQuote body="Arduinoにはいくつか利点があるよ。例えば100ms以下の起動時間とか、電源オンから瞬きする間に起動するんだ。これはLinuxでもできないことはないけど、全然簡単じゃないし、汎用ディストリビューションじゃまず無理だろうね。割り込み処理とか（RP2040なら）専用のマルチコアコードもいいね。" userName="cyberax" createdAt="2025/10/07 17:58:23" color="#38d3d3">}}




{{<matomeQuote body="それはそうなんだけど、EspressifやRaspberry Pi FoundationがSDKを構築して、それでも安いチップやボードを提供できるなら、Arduinoだってできるはずだよね。原価割れしろとは言わないけど、Arduinoの値段は、特に低所得国に住んでる人にとっては、提供されるものに対して単に高すぎるよ。" userName="serbuvlad" createdAt="2025/10/08 11:47:24" color="#ff33a1">}}




{{<matomeQuote body="「ゲートウェイ製品＝手頃な価格」とイコールで考えているみたいだけど、僕の意見では、ゲートウェイ製品ってのは、その分野の人じゃない人が偶然見つけるようなものだよ。最近、地元の小さな本屋で子供向けのArduinoキットを見たんだ。「わあ、この電子工作ってかっこいいな、姪っ子の誕生日に買ってあげようかな」って思う人もいるだろうね。その一方で、マイクロコントローラについて何も知らない人が、わざわざ中国のArduinoクローンをネットで探したりはしないだろうし。" userName="mastazi" createdAt="2025/10/08 00:32:48" color="#785bff">}}




{{<matomeQuote body="これ、Arduino Intel Galileoを思い出すな。https://en.wikipedia.org/wiki/Intel_Galileo" userName="schappim" createdAt="2025/10/07 19:43:08" color="">}}




{{<matomeQuote body="MCUによるけど、一般的にSTM32は1.7～3.6Vだよ。" userName="the__alchemist" createdAt="2025/10/07 13:43:11" color="">}}




{{<matomeQuote body="ハードウェア単体だとしても…まだ一日以上かかるよ。もしそれに付随するソフトウェアまで含めるなら、さらに桁違いに時間がかかるね。どんなにシンプルな周辺機器でも、注意しないと痛い目に遭うし、エッジケースまでテストしないといけないんだ。AVRは確かにかなりシンプルだけど、他の人が使うものを作ろうとしたら、ちゃんと磨き上げる必要があるんだ。俺、実際に組み込みエンジニアをやってるよ。今もやってるんだ！PCB設計よりはSW側だけど、やっぱり君の言う「一日でできる」ってのは、かなり大げさだよ。" userName="RealityVoid" createdAt="2025/10/08 06:38:38" color="#45d325">}}




{{<matomeQuote body="本物のQualcommか！そして、u/geerlingguyはもう新しいSoCのプロモーション動画をYouTubeにアップしてるよ…。" userName="phoronixrly" createdAt="2025/10/07 19:16:04" color="">}}




{{<matomeQuote body="Teensyはちょっと変なんだよね。少なくとも俺が遊んでた頃はそうだった。USB経由でフラッシュできる二次チップを積んでるのに、デバッグピンは隠されてるし、USBポート経由でシリアル通信するには、アプリケーションにUSBスタック全体を組み込む必要があるんだ。開発ボードとしては、STM32を搭載したボードと安価なSTLinkの方がいいと思うな。STLinkでフラッシュできるし、DFUが必要なら自分で追加できるし、デバッグアダプターも手に入るからね。" userName="Arch-TK" createdAt="2025/10/08 15:28:28" color="#785bff">}}




{{<matomeQuote body="そうだといいな。Qualcommのハードウェアは、ほら、Qualcommというブランドがついてなければ、使ってみるのも楽しいのに。" userName="ACCount37" createdAt="2025/10/07 17:15:20" color="">}}




{{<matomeQuote body="そんなに簡単じゃないし、それに難しいのはSWの方だよ。Arduinoは何年もかけてSWコードを書き続けてるし、今も、簡単に動かしたり、デバッグしたり、サポートを提供したりするためにやってるんだ。それに、100万個の開発キットなんて、ほとんどの会社にとっては非現実的だよ。5千～2万個くらいが現実的な数字じゃないかな。" userName="shadowpho" createdAt="2025/10/08 00:46:06" color="#45d325">}}




{{<matomeQuote body="Unoのピン配置って高速信号にはイマイチなんだよね。ちょっと残念。" userName="chimpontherun" createdAt="2025/10/07 13:46:14" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ブランド力ってすごいよね。特許が切れた薬でも製薬会社はブランドのおかげで儲け続ける。Arduinoも同じさ。" userName="kiba" createdAt="2025/10/08 01:48:12" color="">}}




{{<matomeQuote body="ホビー向けハードウェアって儲からないから、大手が参入してもIntelのGalileoやEdisonみたいに失敗するんだよね。IoT/AI向けも、結局は安いチップか、本格的なPCが使われるし。Arduinoブランドってそこじゃ意味ないと思う。SDKsとかtoolchainsをもっと使いやすくすべき。" userName="MountDoom" createdAt="2025/10/07 15:55:45" color="#785bff">}}




{{<matomeQuote body="ArduinoってRaspberry Piとか互換デバイスに時代遅れにされてるんじゃないかな？ベアチップを扱える人はArduinoの単純化なんて要らないし、プログラミングを学ぶならArduinoの抽象化はむしろ邪魔。モジュールを組み合わせるならRaspberry Piの方が断然便利だよ。" userName="xg15" createdAt="2025/10/07 16:13:25" color="">}}




{{<matomeQuote body="そうは言っても、Arduinoが完全に時代遅れになったわけじゃないよ。「カジュアルDIY」、つまりアーティストとか学校のロボットクラブ向けとしてはまだ需要がある。ベアメタルやプロ向けとは違う層なんだ。古いアナログ回路みたいに、慣性でずっと使われ続けるんだよ。" userName="MountDoom" createdAt="2025/10/07 16:32:26" color="#45d325">}}




{{<matomeQuote body="安いIoT製品でも、みんなArduinoブランドにはお金を払うよ。Arduinoボードって、他のハードウェアベンダーが夢見るような高い利益率を出してるんだ。その利益を支えてるのはArduinoブランドだけだよ。" userName="pclmulqdq" createdAt="2025/10/07 21:06:24" color="">}}




{{<matomeQuote body="そんなにArduinoが儲かってるなら、なんで売っちゃうんだろうね？" userName="noobermin" createdAt="2025/10/08 04:10:47" color="">}}




{{<matomeQuote body="今すぐもっとお金が欲しいからだよ。Arduinoって、成長ビジネスというよりは、いい生活を送れる「ライフスタイルビジネス」なんだ。だから今売ってまとまったお金にするんじゃないかな。" userName="pclmulqdq" createdAt="2025/10/08 05:13:39" color="">}}




{{<matomeQuote body="Arduinoブランドはプロ向けじゃないってのは同意。でもさ、もしQualcommと組んで、機械エンジニアがロボットのプロトタイプを簡単に作れて、それをそのまま製品化できるような最高の開発環境ができたらどうかな？その時、Arduinoブランドとコミュニティってすごく価値を持つんじゃない？" userName="petra" createdAt="2025/10/07 16:44:23" color="">}}




{{<matomeQuote body="高い利益率があるならQualcommが買収したがるのは理解できるけど、Arduinoが売るのは矛盾してるように聞こえるよ。Arduino側が「カモ」だって言ってるみたいだね。" userName="noobermin" createdAt="2025/10/08 05:29:21" color="">}}




{{<matomeQuote body="Unoをベースにした消費者向け製品を設計して50万台以上売ったよ。ツールチェーンもハードウェアもかなり優秀で、丁寧にやれば超低電力（ほとんどの時間で約1マイクロアンペア）で動くんだ。" userName="DamonHD" createdAt="2025/10/07 16:41:36" color="#ff33a1">}}




{{<matomeQuote body="Arduinoは多くのプロに利用されてる。安価だから会社のカードで買っても上司にあまり質問されないし、多くの製品がArduinoベースのデモから始まるんだ。デモが成功すると本格的なプロジェクトになるけど、その時に全く新しいハードウェアが選ばれがち。Arduinoオーナーにとって価値があるかっていうと疑問だよね。" userName="bluGill" createdAt="2025/10/07 21:02:39" color="#ff5c5c">}}




{{<matomeQuote body="プロがArduinoをそういう用途で使う時、Arduinoソフトウェアプラットフォームを使うの？それともチップベンダーのツールチェーン？プロがどうやってるのか純粋に知りたいな。" userName="kovac" createdAt="2025/10/07 23:18:20" color="">}}




{{<matomeQuote body="でもなんで？同じチップならもっと安く手に入るじゃん。「ツールチェーン」なんて既存の言語やツールのちょっとした味付けみたいなもんだし、自分のハードウェアで使っても全く問題ないし。疑ってるわけじゃなくて、ただ純粋に疑問に思っただけ。" userName="MountDoom" createdAt="2025/10/07 16:56:43" color="">}}




{{<matomeQuote body="QualcommがArduinoを買収したのは、収益や利益率のためじゃないだろうね。Qualcommの規模からしたら、Arduinoの収益なんてほとんど関係ないはずだから。" userName="sneak" createdAt="2025/10/08 06:09:41" color="">}}




{{<matomeQuote body="Arduinoは元々「カジュアルDIY」層、つまりアーティストとか学校のロボットクラブとか、難しい学習なしに自動化したい人向けだった。その通りだね。でも、今のこの層だったら、Raspberry Piを買った方がもっとパワフルで手軽にプロジェクトできると思うんだけど。" userName="xg15" createdAt="2025/10/07 17:07:36" color="">}}




{{<matomeQuote body="10年前、IntelもGalileoやEdisonでIoT/AIに参入しようとしたけど、実行力が相変わらずひどかったね。GalileoもEdisonもArduinoよりずっと高価で、x86 CPUはこの分野でほとんど価値がなかった。どちらも5年も持たずに打ち切り。Intelの長期的なコミットメント不足で、デバイスをベースに製品を作った人は使えないものを抱える羽目になったんだ。" userName="Alupis" createdAt="2025/10/08 03:59:54" color="#ff33a1">}}




{{<matomeQuote body="もし50万台の実績があるなら、「Unoを再設計した」っていうのは、PCBにATmega328Pと16MHzの水晶が載ってて、シリアルとリセットピンにアクセスできるポイントがあるってことだろうね。" userName="michaelt" createdAt="2025/10/07 19:23:20" color="#ff5c5c">}}




{{<matomeQuote body="だから、今回の買収も、Arduinoがカモでもない限り、誰の視点から見ても全く意味がわからないってことになりそうだね。" userName="noobermin" createdAt="2025/10/08 06:27:48" color="">}}




{{<matomeQuote body="スマートラジエーターバルブにはATmega328pと32768Hzの水晶が使われてるよ。オープンソースのOpenTRV（ソフトウェアとハードウェアのオープンな部分）と、商用製品のRadbotを見てみて。" userName="DamonHD" createdAt="2025/10/07 20:16:14" color="#38d3d3">}}




{{<matomeQuote body="趣味のハードウェアは儲からないってこと。Arduinoの魅力は、ハードウェアじゃなくて、使いやすいIDE、シンプルなAPI、プラットフォーム抽象化レイヤー、ドキュメント、サンプルコード、そしてコミュニティにあるんだよ。これが簡単に始められる秘訣だね。" userName="bluescrn" createdAt="2025/10/07 20:15:54" color="#38d3d3">}}




{{<matomeQuote body="それはプロジェクトによるね。ハッカー気質の人は手持ちの物を使うし、ベンダーツールに慣れた人はちゃんとしたSDKとIDEを使いたがる。でも、ベンダーツールに飽きて使わない人もいるよ。ESP32のソフトをArduino IDEで試作して、そのまま出荷しそうになった例もある。結局、別のチームがESP-IDFで作り直したら、機能が減ってバグが増えたなんてこともあったんだ。" userName="ACCount37" createdAt="2025/10/08 01:24:58" color="#38d3d3">}}




{{<matomeQuote body="ほんと、今やArduino互換ボードは山ほどあるし、他の要素の方が大事なんだ。Arduinoはマイコン開発におけるPythonみたいな存在だよ。ちょっと変わったマイコンボードで興味を持つけど、結局コミュニティに引き留められるんだよね。" userName="analog31" createdAt="2025/10/08 02:48:52" color="#ff33a1">}}




{{<matomeQuote body="なぜ彼らがカモだと言い張るの？こういう買収ってよくあることじゃない？例えば、事業売却で最低10年分の利益を望むとする。大企業が11年分の利益相当額を提示したら、売るよね。買収企業は、元を取るのに時間がかかると分かっていても、開発者を取り込んで自社製品を普及させたり、競合の勢いを削ぐことで、事業利益の少なくとも3年分に相当する効果を見込むんだ。だから、多少の割高でも喜んで買う。この場合、顧客以外はみんなWin-Winなんだよ。" userName="modo_mario" createdAt="2025/10/08 08:42:45" color="#38d3d3">}}




{{<matomeQuote body="それ、かっこいい製品だね！うちの温水ラジエーターにも付けられたらいいのに、個別のバルブがないんだよね。" userName="relaxing" createdAt="2025/10/08 16:08:10" color="">}}




{{<matomeQuote body="そのデザイン、約10年前からだよ。もし今また始めるなら、多分別のものを選ぶかな。" userName="DamonHD" createdAt="2025/10/07 17:08:20" color="">}}




{{<matomeQuote body="彼らのx86 CPUは、その分野ではほとんど価値がなかったね。Intelは、x86とPCエコシステム周辺の周辺機器が自分たちを成功させたって気づいて、Galileo/Edisonを本当にPC互換にしていれば、レトロコンピューティングコミュニティを惹きつけられたはずなのに。結局、486DX+コアのSoCとほとんど互換性のない周辺機器を作っちゃった（80186/88で学んだはずなのに…）。しかも、映像出力機能が全くないのに、どうにかMicrosoftにWindowsの特別版まで作らせたんだ。「一体何を考えていたんだ！？」ってのが、この失敗の最も簡潔なまとめだね。" userName="userbinator" createdAt="2025/10/08 04:43:42" color="#ff5733">}}




{{<matomeQuote body="それはそうなんだけど、そうじゃない場合も多いんだ。マイコンベースのホビーボードの最大の強みは、小型バッテリーで長時間動くように調整するのが簡単ってこと（Raspberry Pi Picoは除く）。Raspberry Piではそうはいかない。それに、マイコンなら必要な割り込みに直接アクセスできるけど、標準のRaspbian Linuxでは無理だよね。これらは根本的に違うもので、それらの境界に達するのに複雑なプロジェクトは必要ないんだ。強力なWi-Fiスタックやカメラが必要ならRTOS（ESPなど）かOSがいる。高速回転するロータリーエンコーダーを確実に処理するならマイコンが必要。Raspberry PiでArduinoの真似はできるけど、初心中級者にとっては用途が違うツールなんだ。" userName="petsfed" createdAt="2025/10/07 22:45:56" color="#785bff">}}




{{<matomeQuote body="それらは全く違うものだよ。Arduinoって言ってるのは、Arduinoのハードウェアのことかな？あれはたいてい、特定のMCU用のブレイクアウトボードに過ぎないんだ。Raspberry Piは、起動時間が秒単位の本格的なコンピューターだよ。" userName="mrheosuper" createdAt="2025/10/08 02:29:41" color="#785bff">}}




{{<matomeQuote body="比較してみよう。Arduino IDEを使ってUSBで繋ぎ、アップロードボタンを押すだけ。プログラムは起動時に毎回、確実に素早く始まるよ。<br>一方、SDカードを買って”書き込み”ってのが何かも学んで、RPiを見るためのキーボードとモニターを探して、初めてのLinuxの使い方を覚えて、MacbookとLinux間でファイルをコピーする方法を考えて、Wi-Fi設定をして、プログラムの実行方法を調べて、RPiを再起動したらプログラムが自動で始まらないことに気づいて、Linuxでプログラムを起動時に始める何百万通りの方法を調べて、RPiを繋ぎ直したらプログラムが始まるのに永遠に時間がかかって、Linuxがタイミングを狂わせてLEDアートプロジェクトが動かないなんてことになるんだよ…。" userName="harrall" createdAt="2025/10/08 02:42:19" color="#45d325">}}




{{<matomeQuote body="フルPCみたいなPiは小さいプロジェクトには向かないよ。LinuxのセットアップとかSDカードとか電源とか面倒だし、50ドルも出したくないな。Arduino互換ボードなら安くてすぐコードが動くし、Piよりずっと楽。RPi PicoはArduinoみたいでいい感じだね。" userName="wat10000" createdAt="2025/10/07 19:42:46" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Raspberry Pi PicoはArduinoのライバルだよ。Linux OSが邪魔なリアルタイム制御ではベアメタルの方がいいしね。PicoもArduino環境やPlatformIOでよく使うよ。Arduinoの抽象化は制限もあるけど、カジュアルな用途では時間節約になるし、豊富なライブラリが使えるのが強みだね。" userName="dimatura" createdAt="2025/10/07 21:17:28" color="#45d325">}}




{{<matomeQuote body="元ロボットチームの経験から言うと、両方に良いところがあるよ。Arduino UnoやMegaはAtMEGAベースでソフトサポートもいい。うちはPiで外部モジュールを繋ぎ、PiからUARTでArduinoに繋いで、Arduinoで肝心な制御をしてたな。PiのIOはレイテンシが悪いし、配線を間違えると壊れやすいけど、Arduinoは頑丈だよ。" userName="solsane" createdAt="2025/10/07 20:45:02" color="#45d325">}}




{{<matomeQuote body="Lady AdaはQualcommの買収に不満らしいよ。QualcommのAIコンポーネントは彼らのスタックに完全に縛られてて、オープンじゃないって。ArduinoブランドはQualcommのハードウェアの広告になるだけで、NDAとか大量注文がないと手に入らなくなるってさ。<br>https://blog.adafruit.com/2025/10/07/qualcomms-latest-ai-pla..." userName="angry_octet" createdAt="2025/10/08 04:53:49" color="#ff33a1">}}




{{<matomeQuote body="あの投稿はLady Adaの旦那さん、Philip Torroneが書いたんだってさ。オープンソースハードウェアに関しては権威ある人だよ。" userName="relaxing" createdAt="2025/10/09 13:56:24" color="">}}




{{<matomeQuote body="企業が買収するのって、プロジェクトを潰すためなのかな？コミュニティにとって良いことなんて滅多にない気がするんだけど。大企業が小規模で良いプロジェクトを買収して、利益だけ絞り取らずにちゃんと残した例ってある？" userName="EasyMark" createdAt="2025/10/07 19:17:54" color="#45d325">}}




{{<matomeQuote body="悪意があるわけじゃないと思うな。Qualcommが長く働いてきた人たちに大金を出しただけだよ。彼らもそろそろ別のことしたいって時期だったのかもね。で、その後は巨大企業のKafkaesqueな官僚主義に振り回されて、1～2年で疲れ果てて辞めちゃうんじゃないかな。" userName="MountDoom" createdAt="2025/10/07 20:00:03" color="#ff5733">}}




{{<matomeQuote body="QualcommはArduinoを続けたいと思ってるはずだよ。多くの企業がArduinoを先進的なプロジェクトに使ってるし、それが製品化される時に、Qualcommのチップを売り込むきっかけになるからね。でも、会社の方向性はよく変わるから、内部でプロジェクトを潰そうとする動きがあるかもしれないけどね。" userName="bluGill" createdAt="2025/10/07 20:56:00" color="#38d3d3">}}




{{<matomeQuote body="GoogleはAndroidもYouTubeも買ったけど、潰さなかったじゃん。でも、逆の例の方が多いってのは認めるよ。" userName="rossdavidh" createdAt="2025/10/07 20:00:29" color="">}}




{{<matomeQuote body="GoogleがAndroidを潰さなかったのは確かだけど、今やホビイストたちを締め出し始めてるよね。" userName="JohnFen" createdAt="2025/10/07 21:41:03" color="">}}




{{<matomeQuote body="Androidは死んでないけど、Googleが魅力的な部分を潰したから、まるでiOSみたいになっちゃった。スパイウェアアプリを入れさせたり、コンテンツ消費とSNSを見るだけの退屈なスマホが増えて、ゴミみたいだね。" userName="olyjohn" createdAt="2025/10/08 00:05:02" color="">}}




{{<matomeQuote body="ここを見て。https://killedbygoogle.com" userName="vdfs" createdAt="2025/10/07 22:04:09" color="">}}




{{<matomeQuote body="Arduinoを潰すのは得策じゃないよ。類似ボードがいっぱいあるし。むしろMicrosoftがMinecraftを買ったみたいに、認知度とユーザー基盤で手っ取り早く人を引き込むためじゃないかな。" userName="elictronic" createdAt="2025/10/07 20:56:12" color="">}}




{{<matomeQuote body="わざと殺す意味が分かんないな。自分のチップに人を誘導する良いブランドなのにさ。" userName="jjrh" createdAt="2025/10/07 21:00:03" color="">}}




{{<matomeQuote body="Qualcommは次の10年どうするつもり？AIに乗り遅れたし、スマホはコモディティ化、AppleやGoogleは垂直統合で攻めてくる。さらにMediaTekやUnisocみたいな中国ベンダーからのプレッシャーもあるし、もう終わりじゃないの？" userName="webdevver" createdAt="2025/10/07 13:24:01" color="#ff33a1">}}




{{<matomeQuote body="QualcommはArmとの訴訟で勝って、SnapdragonでOryonコアを使える権利を得たんだ。X86からARMへの変換層と組み合わせれば、次世代の携帯ゲームを支配できるかもね。Valveとかと組んだら最強だよ。ハイエンドではSnapdragon 8 Elite Gen 5を出してるし、5G通信やiPhone 17 Pro Maxへのモデム提供、IoT、ウェアラブルにも力を入れてるよ。" userName="piltdownman" createdAt="2025/10/07 13:43:39" color="#ff33a1">}}




{{<matomeQuote body="Appleの垂直統合はすごいけど、GoogleはTensor SoCの性能や効率でSnapdragonにずっと遅れてるんだ。TSMCに切り替えても追いつけてないし、QualcommはAndroidハイエンド市場ではまだしばらく安泰じゃないかな。" userName="jsheard" createdAt="2025/10/07 13:32:13" color="#ff33a1">}}




{{<matomeQuote body="GoogleとAppleのSoC性能差は半端ないね。今のPixelはiPhoneの3分の1くらいしかない。性能を気にしない人でも、Pixelの値段を考えたら何を払ってるんだって思うよ。Appleが好きじゃなくても、ちょっと足せばSnapdragon搭載機と戦えるものが買えるんだから。" userName="cosmic_cheese" createdAt="2025/10/07 14:21:37" color="">}}




{{<matomeQuote body="ARMがライセンス紛争で勝訴した後の株価急騰って、ARMの市場での存在感を示してるよな。QualcommはノートPCとかNPUみたいな競争が激しい市場で戦ってるけど、正直そこは低ボリュームで利益も少ない。誰も気にしてないエッジAIとか、携帯ゲーム機市場なんて50Mドルくらいしかないし。結局、QualcommってSnapdragonと5G通信以外に何があるんだろうね。" userName="webdevver" createdAt="2025/10/07 13:50:19" color="#ff33a1">}}




{{<matomeQuote body="Pixelユーザーとしては、OS代を払ってるようなもんだよな。他のAndroidスマホはアンインストールできないブロートウェアだらけだし、アップデートも保証されない。iOSはAppleに制限されてるし。昔Maemoを使えてた頃は良かったけど、今はPixelが唯一まともなスマホなんだよ。" userName="zem" createdAt="2025/10/07 16:20:13" color="">}}




{{<matomeQuote body="ハードウェア業界から離れてたけど、Qualcommって製品を出す時に最高のパートナーだったんだ。全部がクソなんだけど、マジでエンジニアを派遣してくれたり、バグ報告も真剣に聞いてパッチも出してくれたりしたんだよ。開発ボードやソフトウェアのサンプルも豊富だったし。V1の製品を出す会社だったら、間違いなくQualcommを選ぶね。MediaTekなんかは手厚いサポートはないから。めちゃくちゃ嫌だったけど、少なくとも一緒に仕事はできたベン vendorsだったよ。" userName="xyzzy_plugh" createdAt="2025/10/07 13:52:37" color="#ff5c5c">}}




{{<matomeQuote body="AIは過大評価されてると思うな。すべての巨大企業がテクノロジーのすべてに手を出す必要はないよ。Qualcommにとっては、MediaTekが低価格帯市場を圧迫してることの方がはるかに大きな問題だ。高価格帯市場ではQualcommが60%のシェアを占めてるけど、MediaTekが成功してる低価格帯で競争できないと、トップティアでも支配力を保つのは難しいんじゃないかな。" userName="xphos" createdAt="2025/10/07 15:41:19" color="">}}




{{<matomeQuote body="Qualcommって、自社と同じくらいデカい会社とか、50万台出荷するくらいの案件なら”まとも”に仕事ができるらしいよ。でも”まとも”ってのがQualcommの最高点。最悪のQualcommと仕事するくらいなら、割れたガラスを噛み砕く方がマシだね。" userName="ACCount37" createdAt="2025/10/07 13:57:43" color="">}}




{{<matomeQuote body="どうやらAIの流れに乗って、ハードウェア企業が買収されてるみたいだね。Intelが最たる例だけど、AMDもOpenAIに狙われてるし。Marvellとか、なんならHDDメーカーまで、AIパイプラインにフィットするって理由で注目されてるんだ。" userName="ivape" createdAt="2025/10/07 13:26:43" color="">}}




{{<matomeQuote body="Qualcommはこれからも特許持ちの会社であり続けるだろうね。無線通信に関する膨大な数の特許を持っていて、それを金の卵のように大事にしてるんだ。" userName="Workaccount2" createdAt="2025/10/07 14:29:28" color="">}}




{{<matomeQuote body="GoogleはPixelで独自のエコシステムを提供してる。Appleもベンチマークの数値で買われるんじゃなくて、体験で選ばれるんだよ。Googleがサプライチェーンからサードパーティを排除するのは、セキュリティと価格の安定性を確保するための賢い長期戦略。業界全体が内製化と統合に向かっていくだろうね。" userName="webdevver" createdAt="2025/10/07 13:38:07" color="">}}




{{<matomeQuote body="ARMがNuviaの発表を阻止して、クアルコムにクリーンシートでの再設計を強制した理由って、SoftBankの思惑以外に何があるんだろう？ARMのCEOがQualcommによる収益減少を懸念してたみたいだけど。携帯ゲーム機の話だと、Xboxの携帯機がAMDとの契約で1000万台の最低注文数が必要でキャンセルされた。でも、Nintendo Switch 2が160万台売れて史上最高のローンチになったことを考えると、ARMベースのQualcommにはチャンスがあるんじゃないかな。<br>URL: https://law.justia.com/cases/federal/district-courts/delawar..." userName="piltdownman" createdAt="2025/10/07 15:03:17" color="#785bff">}}




{{<matomeQuote body="ARMの株価を引用するのは笑えるね。流通してるのがたった10%で、その95%が機関投資家に保有されてるんだから。あれはまさに大口投資家がオプション取引で莫大な利益を出すために操作されてる株だよ。それより、QualcommってSnapdragonと5G通信以外にも、自動車関連で年間40億ドルの収益を上げてるのを忘れてない？NvidiaやNXPから自動車市場をほぼ奪い取ったんだぜ。" userName="Moral_" createdAt="2025/10/07 15:03:32" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
