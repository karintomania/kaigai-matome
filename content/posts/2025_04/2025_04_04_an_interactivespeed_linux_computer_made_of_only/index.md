+++
date = '2025-04-04T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ！8ピンのチップ3つだけで動くLinuxマシンが爆誕！インタラクティブな速度で動作だと！？'
tags = ["Linux", "ハードウェア", "組み込みシステム", "DIY", "ハック"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> マジかよ！8ピンのチップ3つだけで動くLinuxマシンが爆誕！インタラクティブな速度で動作だと！？

引用元：[https://news.ycombinator.com/item?id=43586654](https://news.ycombinator.com/item?id=43586654)

{{<matomeQuote body="SDIOの3つのピンと組み合わせられるのはどのピンかな？めっちゃ考えた結果、答えは明らかじゃん。RAMのnCSをSDカードのCLKに、RAMのCLKをSDカードのCMDに、RAMのMOSIをSDカードのDATにすればいいんだよ。それぞれのデバイスとの相互作用を考えてみて。Hacker Newsに載せる価値あり。" userName="nine_k" createdAt="2025-04-04T22:09:22" color="#ff5c5c">}}

{{<matomeQuote body="「めっちゃ考えた結果、答えは明らかじゃん」ってTシャツにしたい。" userName="jlg23" createdAt="2025-04-04T23:20:54" color="">}}

{{<matomeQuote body="昔のジョークにこんなのがあったな。大学の数学の授業で教授が黒板にめっちゃ複雑な数式を書く。「これから明らかなように」って言って、また別の数式を書く。ちょっと考えて「うーん…」って言って教室を出て、30分後に戻ってきて、大量の計算用紙を机に叩きつけて「ああ、確かに明らかだった」って言って講義を続ける。" userName="dmitrygr" createdAt="2025-04-04T23:31:38" color="#ff5c5c">}}

{{<matomeQuote body="うちの親父が似たようなことやったらしい。大学で問題を解いてたら途中で詰まっちゃって、問題と答えは分かってるから、両側から解いてみても真ん中で詰まっちゃったんだって。それで教授に相談したら「その部分に来たら『これは明らかである』って言って次に進め」って言われたらしい。そして親父はそうして、誰も気づかなかったって。" userName="mionhe" createdAt="2025-04-05T14:18:21" color="#45d325">}}

{{<matomeQuote body="「これは明らかである」っていうのは、数学の教科書とか講義では「大量の計算が必要だけど、たいして頭を使わなくてもできる」って意味で使われることが多いね。便利だよ。" userName="pclmulqdq" createdAt="2025-04-05T18:17:33" color="">}}

{{<matomeQuote body="問題を書き出す。めっちゃ考える。答えを書き出す。（ファインマンの方法。本人じゃなくて、観察してた人が言ってたことだけど）。" userName="bee_rider" createdAt="2025-04-05T00:45:31" color="">}}

{{<matomeQuote body="USBとのインターフェースに別のチップを使うのが当たり前になってるのが悲しい。USBってめっちゃ複雑なプロトコルで、V-USBでUSB1.1を低速で動かす以上のことは、専用のハードウェアとソフトウェアがないと無理っぽいんだよね。SPIはめっちゃシンプルなのに…昔はシリアルポートとかパラレルポートがあったのに。<br>UARTとかI2CとかSPIマルチドロップとかでも良かったんじゃないかな" userName="em3rgent0rdr" createdAt="2025-04-04T21:06:11" color="#45d325">}}

{{<matomeQuote body="＞Meanwhile a protocol like SPI is ridiculously simple<br>そうそう。トランジスタのコストを最小限にするために、できるだけ少ないシリコンで済むように設計されてるんだよね。SPIは電源とかホットプラグとかエラー検出とか、USBみたいな機能は一切考えてない。SPIとハードウェア設計者が使うイディオムを理解するのはソフトウェア開発者にとって価値があると思う。SPIはペリフェラルのレジスタを埋めるのに使うことが多くて、USBとかEthernetみたいに抽象化されたものではないんだよね。" userName="topspin" createdAt="2025-04-04T22:19:16" color="#45d325">}}

{{<matomeQuote body="ATTiny45でbitbangできるくらいシンプルなプロトコルでも、ホットプラグとかエラー検出とかサポートできると思う。(Neywinyのリストにあるような、ビット順とか半二重とか4つのモードとかは、手抜きしただけだと思う。) USB-C PDは関係ないし、電源供給はソフトウェアの複雑さとは関係なくて、USB-Aプラグの電源とグランドのトレースをデータトレースより長くすればいいだけ。<br>I²Cに近いものでも実現可能だと思う。" userName="kragen" createdAt="2025-04-05T01:05:12" color="#785bff">}}

{{<matomeQuote body="＞something close to I²C should be feasible.<br>それってhttps://en.wikipedia.org/wiki/System_Management_Busのことじゃない？" userName="timschmidt" createdAt="2025-04-05T03:30:02" color="">}}

{{<matomeQuote body="それってただの機能制限されたI²Cじゃん。I²Cに足りないものを何も足してないよね。まあ、SMBus ARPはちょっと違うか。ありがとね！" userName="kragen" createdAt="2025-04-05T03:58:09" color="">}}

{{<matomeQuote body="ホットプラグ可能なSMBus周辺機器を作るって発想はなかったな。面白いかも。マザーボードにはヘッダーが出てるし、OSにはSMBus周辺機器のドライバーが色々あるし。LoFi USBって感じ。" userName="timschmidt" createdAt="2025-04-05T05:06:37" color="">}}

{{<matomeQuote body="うちにはホットプラグ可能なI2Cがあるぜ。HDMIポート（とパッシブアダプター付きのDPポートは大体）にはDDCピンにI2Cがあるんだ。ポートは5V 50mAも供給するから、MCUは外部電源いらないし。例えば：https://www.reddit.com/r/raspberry_pi/comments/ws1ale/i2c_on..." userName="NavinF" createdAt="2025-04-05T08:27:45" color="#38d3d3">}}

{{<matomeQuote body="USBをbit-bangで実装するのがほぼ無理ゲーなのは、デバイスが特定のクロックレート（1.5 MHz、12 MHz、480 MHz）を使う必要があるから。SPIとかI²Cみたいにクロックレートを動的に変えられないんだよね。この制限がなければ、USBのbit-bangは簡単になると思う。USBが固定クロックにしたのは正解だと思うけどね。可変クロックだと複雑になるし、認証とか互換性が難しくなるから。" userName="phire" createdAt="2025-04-06T03:39:17" color="#45d325">}}

{{<matomeQuote body="それってほぼUSBじゃん？少なくともUSB 1なら。もちろん、今はもっと色々できるけど。I2Cみたいに半二重シリアルラインだし、UARTみたいに非同期だし。" userName="immibis" createdAt="2025-04-05T12:16:03" color="">}}

{{<matomeQuote body="マジそれな。ビット順、半二重、4つのモード、チップセレクトから最初のクロックまでの時間、1ワードあたりのビット数、ワード間のnCSストローブとか色々あるけど、USB 1.1デバイスなら大体何ができるかわかるもんね。" userName="Neywiny" createdAt="2025-04-04T23:20:22" color="">}}

{{<matomeQuote body="こういった細かい点（ホットスワップとかハンドシェイク）は、人間が抜き差しできるデバイス向けのシンプルなSPI標準サブセットで解決できるんじゃないかな。" userName="em3rgent0rdr" createdAt="2025-04-05T19:09:42" color="">}}

{{<matomeQuote body="USBのバルクパケットには16ビットのCRCがあるよ。" userName="tverbeure" createdAt="2025-04-05T17:21:12" color="#ff5c5c">}}

{{<matomeQuote body="へー、おもしろいね。最近、6フィートのUSB3ケーブルと外付けドライブで試したんだけど、1TBのファイルの転送が何回か失敗しちゃったんだよね（詳しくはわかんないけど）。ケーブルがそんなに悪いわけないと思うし、16ビットのCRCでエラーは検出されるはずなのに（エラーがあったらデータの再送が発生するはず）。何が原因なんだろう？Linuxでエラーレートを確認する方法ってあるのかな？" userName="amelius" createdAt="2025-04-05T18:02:47" color="">}}

{{<matomeQuote body="＞16ビットのCRCでエラーは検出されるはず<br>16ビットCRCを過信しすぎだと思うよ。512バイトのUSBパケットだと、ある種の破損に対しては65536分の1の確率でCRCが失敗する可能性があるんだ。1TBの転送では約20億パケットもあるからね。BERが高ければ、転送が壊れてもおかしくないよ。<br>6フィートのケーブルなら、ちゃんと設計・製造されてて、状態が良くて、SMPSみたいなノイズ源に近くなければ大丈夫なはず。どれか1つでも問題があるとBERが上がって、16ビットCRCの限界が見えてくるよ。<br>USB4が32ビットCRCを使ってるのには理由があるんだ。とりあえず、短くて高品質なケーブルを使うのが一番だよ。" userName="topspin" createdAt="2025-04-06T09:01:26" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="USB PHYをシリアル-Ethernet変換とEthernet PHYで置き換えたいってこと？<br>SPIとかI2Cみたいなシンプルなプロトコルは、正直言って性能が良くないんだよね。遅いし、シングルエンドの信号方式だからノイズに弱いし、エラー訂正もない。これらのプロトコルは、PCB上のICを接続するっていう本来の目的には合ってるし、うまく機能するんだけどね。でも、ポートを外に露出させると、話は別だよ。<br>これらのプロトコルは、今でも最新のPCで使われてるけど、あくまで内部バスとしてだよ。USBの仕様は詳しく見てないけど、bit-bangingの問題は速度にあると思う。専用のハードウェアが必要なのは、プロトコルをデコードしてエラー訂正を管理するソフトウェアスタックを動かしながらピンを切り替えるのに、マイクロコントローラじゃ速度が足りないからだよ。<br>I2Cでも同じ問題が起こりうるよ。20MHzのCPUだと、最大クロック速度は約250KHzにしかならない。これは、一般的な最大レート400KHzの半分強だよ。1MHz版なんて絶対に無理。<br>PHYが存在する理由は簡単で、通信プロトコルをハードウェアに任せた方が圧倒的に安上がりだからだよ。そうしないと、通信を手動で管理するためにCPUのスペックをかなり上げないといけなくなる。だから、今のマイクロコントローラにはI2C、SPI、シリアルなどのハードウェアが搭載されてるんだよ。<br>要するに、SPIとかI2CとかUARTみたいなシンプルなシリアルプロトコルは、外部ペリフェラルには絶対に選ぶべきじゃないってこと。速度が出ないし、長いケーブルに対応できないし、ノイズに弱い。これらのプロトコルは、RS232を除いてそういう設計になってるんだ。USBを再発明しない限り、仕様を変更しても対応できないよ。" userName="mystified5016" createdAt="2025-04-04T21:42:45" color="#38d3d3">}}

{{<matomeQuote body="UART over LVDSはシンプルで、長いケーブルにも使えるし、グランド電位差やノイズにも強いよ。" userName="fxtentacle" createdAt="2025-04-04T22:22:58" color="">}}

{{<matomeQuote body="USBもbitbangが難しいよね。タイミングがシビアだし。I2Cみたいに、ピンが明示的に切り替わったときだけクロックが進むようなものとは違うし。" userName="Skunkleton" createdAt="2025-04-04T22:08:03" color="">}}

{{<matomeQuote body="SPIのこと言いたかったんじゃない？I²Cには”clock stretching”っていう、準備ができるまで遅らせる機能があるけど、それは特定のケースだけだよ。それ以外は、I²Cのクロックはボーレートに関係なく常に進むよ。ピンが切り替わる時だけじゃないよ。" userName="kragen" createdAt="2025-04-05T01:14:35" color="#ff5c5c">}}

{{<matomeQuote body="コントローラかターゲットかで変わってくるんじゃない？僕がI2Cを使うのは、マイクロコントローラからペリフェラルと通信するときで、自分がクロックソースになることが多いかな。クロックストレッチはターゲット側に関係するよね、少なくともSCLについて言えば。" userName="Skunkleton" createdAt="2025-04-05T16:01:16" color="#ff5c5c">}}

{{<matomeQuote body="記事では8ピンチップがたくさん紹介されてるけど、人気のCH32V003（2k RAM、16k Flash、48 MHz、1 CPI）は無視されてるね。CH570（開発ボードが届く予定）も同じく10セントでSOIC8だけど、100 MHz、16k RAM、256k flash、USB、2.4 GHzの無線機能があるよ。" userName="brucehoult" createdAt="2025-04-04T23:15:35" color="#45d325">}}

{{<matomeQuote body="CH32V003はmouser.comにもdigikey.comにもないね。<br>CH570をググるとトラクターばっかり出てくる。リンクある？<br>編集：ここにあった。<br>＞https://www.cnx-software.com/2025/04/02/10-cents-wch-ch570-c...<br>8ピン版にはUSBがないし、I/Oピンも3つしかない。I/Oが少なすぎるから不合格だね。8ピンのうち5ピンも無駄にするなんて笑える！<br>古いCH32V003は、48MHzでSTMの150MHzより遅いし、フラッシュは半分、RAMは1/4。最高の選択肢とは言えないね。<br>記事は更新したけどね！" userName="dmitrygr" createdAt="2025-04-04T23:16:41" color="">}}

{{<matomeQuote body="＞8ピン版にはUSBがないし、I/Oピンも3つしかない<br>でも無線（CH572版にはBLE）があるから、USBはいらないんじゃない？<br>別にあなたがそれらを選ばなかったことを批判してるんじゃなくて、考慮に入れてなかったことを言いたかったんだ。" userName="brucehoult" createdAt="2025-04-04T23:35:08" color="">}}

{{<matomeQuote body="8ピンの部品じゃBLEは使えないよ。まあ、検討して記事に追加したけどね。" userName="dmitrygr" createdAt="2025-04-04T23:47:28" color="">}}

{{<matomeQuote body="8ピンの部品でも無線は使えるよ。ピン8の”ANT”接続のこと。クリスタルと一緒に、文句言ってた3つの”無駄な”ピンの一つじゃん。" userName="brucehoult" createdAt="2025-04-05T02:14:02" color="#ff5733">}}

{{<matomeQuote body="BruceとDmitryが一緒にプロジェクトを組む世界を想像してる。CNLohrに仲裁してもらわないと。" userName="sitkack" createdAt="2025-04-07T16:18:24" color="">}}

{{<matomeQuote body="DimaとCharlesの物理ハックプロジェクトには頭が上がらないよ！<br>俺はソフトウェア屋だからね。一番大きなハードウェアプロジェクトは、誰かの設計図を元に3Dプリンターを組み立てたことかな。あとは2012年頃に、Unoを使ってPID制御のホームヒーティングコントローラーを作ったこと。サーミスタで室温を測って、433 MHzトランスミッターでJaycarの240Vリモコンコンセントに通信して、主に2400Wのオイルヒーターを制御してたんだ。高デューティーサイクルになったらファンも回してた。ついでに給湯器も固定スケジュールでオンオフしてたし。Wellingtonで3年間使って、Honeywellの機械式サーモスタットを使ってた時より、電気代が冬にNZ$500も安くなったんだ。" userName="brucehoult" createdAt="2025-04-08T00:31:13" color="#ff33a1">}}

{{<matomeQuote body="それはマジですごいね。製品化できそうじゃん。Nestがサーモスタットにif文を3つ追加しただけで、数十億ドルの会社になったのが面白いよね。" userName="sitkack" createdAt="2025-04-08T18:48:31" color="#38d3d3">}}

{{<matomeQuote body="マジか、Aliexpressにセラーが1人しかいないし、開発ボードもないじゃん。どこで見つけたの？" userName="knotimpressed" createdAt="2025-04-05T20:14:37" color="">}}

{{<matomeQuote body="USBデバイスとして使えるMCUはたくさんあるけど、パッケージの制限で除外されたんだよ。" userName="pantalaimon" createdAt="2025-04-04T21:35:41" color="">}}

{{<matomeQuote body="まあ、最近のハイエンドマイクロコントローラーにはUSB HS PHYが統合されてる（特にSTM32F7とかTeensy 4で使われてるMIMXRT1060とか）。でも、安価なattinyライクやice40ライクにはないし、普通は外付けのPHYが必要になる。CH32V305を使ってみたいな。ハンダ付けしやすいTSSOP-20パッケージだし、USB HS PHYも内蔵してる。でも、ソフトウェアのサポートがないみたいだし、microchip/digikeyとかにもないんだよね。20セントのUSB HSマイクロコントローラーが手軽に使えるようになるかもしれないけど、プロトコルが複雑すぎるし、周辺機器とのインターフェースにはオーバースペックだと思う。" userName="em3rgent0rdr" createdAt="2025-04-05T19:47:14" color="#ff5c5c">}}

{{<matomeQuote body="まじかよ、今でもシリアルポート付きの新品PC組むことあるんだぜ！DellからOptiPlexタワー買って、古い科学機器に接続するためにシリアルカード付けるんだよね。" userName="DecentShoes" createdAt="2025-04-05T08:19:00" color="">}}

{{<matomeQuote body="USBって理解できる可能性あるじゃん？少なくともロースピードの1.5Mbpsならbit-bangできるらしいし。最近のMCUならフルスピードの12Mbpsもいけるかも。俺は分かんないけど、理解しようと思えばできる。<br>SPIとかCAN、SDも同じようなもんかもね。分からなかったら誰かが作ったもの使うけど、理解しようと思えばできるし、理解したら自分で実装できる。スレーブならタイミング厳しいけど、決まったビットパターンに決まったビットパターンで応答すればいいだけ。マスターなら、スレーブがポーリングの多少のズレに気付かないから、色々同時にできるけど、接続されるスレーブの種類が増えるって問題がある。" userName="immibis" createdAt="2025-04-04T23:13:26" color="#ff33a1">}}

{{<matomeQuote body="USB 1.1はトランスポート層以下ならそんな難しくないよ。でも上位層はもっと複雑。USB HID（マウスとかキーボード）はよく使うと思うけど、デバイスがトークン化されたデータ記述言語で独自のパケット形式を記述できるのが特殊なんだよね。デバイスは要求されたら追加のblobを送るだけでいいけど、ホストはそのblobの内容を解析して、デバイスのパケットを解析しないといけない。プロトコルが複雑で複数の実装があると、互換性の問題が起きやすいんだよね。MS-Windowsでは完璧に動くNキーロールオーバーのゲーミングキーボードが、AppleやLinuxホストで認識されないとかね。" userName="Findecanor" createdAt="2025-04-05T09:17:04" color="#45d325">}}

{{<matomeQuote body="マウスとキーボードには必須の固定レイアウトの“boot”プロファイルってのもあった気がする。ベンダーが“boot”プロファイルだけサポートすればいいと解釈したせいで、USBキーボードのほとんどが最大6キーロールオーバーになったっていう論争があったよね。" userName="immibis" createdAt="2025-04-05T12:24:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="i2cで同じことやろうとした人いたよね。昔の倒産したコンピュータ会社が、そのコンセプトに基づいたバスを出荷してた気がする。名前忘れちゃった。その子孫はVGA HDMI control channel specだよ（事実上の別の標準として実装されたけど、すごく似てる）。名前が出てこない。" userName="parl_match" createdAt="2025-04-04T21:34:49" color="">}}

{{<matomeQuote body="今回もめっちゃ面白かった！ありがとう！<br>一つだけ、USB-Cエッジコネクタを使うなら、基板の厚さ（0.8mmだったっけ？）について触れた方がいいかも。<br>理由: USB-Cエッジコネクタがプラグに合うようにするため。" userName="_Microft" createdAt="2025-04-05T07:41:26" color="#785bff">}}

{{<matomeQuote body="記事面白かったよ、ありがとう。ちょっと細かい話だけど、8ピンって制限を緩くしたら、もっと簡単になったんじゃないかな？ピンが少し増えるだけでプロジェクトの複雑さがかなり減るのに、ハンダ付けの時間もそんなにかからないと思う。" userName="kibwen" createdAt="2025-04-05T06:42:14" color="">}}

{{<matomeQuote body="それだと全然チャレンジにならないじゃん。面白くないし。USB内蔵のチップなんていくらでもあるよ。<br>Allwinner v3sは手ハンダ付けできるし、RAM内蔵でLinuxもネイティブに起動できるし。<br>Rp2350も良い選択肢だよね。QSPI RAMインターフェースとキャッシュ内蔵で、USBもサポートしてるし。" userName="dmitrygr" createdAt="2025-04-05T06:44:18" color="#38d3d3">}}

{{<matomeQuote body="手ハンダ付けできるかどうかは人によるよね。確かに、QFNとかBGAは難しい。でも、普通の趣味の人がQFP、特に裏面にパッドがあるやつをハンダ付けできるとは思えないな。趣味のレベルだと、SOICですら自信ないわ。" userName="RainyDayTmrw" createdAt="2025-04-05T06:58:01" color="">}}

{{<matomeQuote body="Soic8なら最初のハンダ付けプロジェクトとしてマジでアリだよ。何人かで試して成功してる。" userName="dmitrygr" createdAt="2025-04-05T07:05:52" color="#785bff">}}

{{<matomeQuote body="ほぼ2チップじゃん。1つはただのUSB-serial ICだし！でもSDカード数えてないから、結局3つになるね。ピン数がマジで少ないから、dead bugバージョン作りたくなってきた。" userName="alnwlsn" createdAt="2025-04-04T20:53:55" color="">}}

{{<matomeQuote body="俺がdead bugバージョン作らなかったのは、お前が最初になるようにするためだよ:)。Microsd-to-sdアダプターは、ハンダ付け可能なmicrosdホルダーとして使える。" userName="dmitrygr" createdAt="2025-04-04T20:55:40" color="">}}

{{<matomeQuote body="SDカード自体に、結構強力なプロセッサが入ってるんだよね。多分32-bit ARM。それで同じようなハックをするのも面白いかも。" userName="russdill" createdAt="2025-04-04T23:18:16" color="#45d325">}}

{{<matomeQuote body="SDカードには、めちゃくちゃ速い8051が入ってる可能性も全然あるよ:<br>https://www.bunniestudios.com/blog/2013/on-hacking-microsd-c..." userName="userbinator" createdAt="2025-04-05T01:48:49" color="#785bff">}}

{{<matomeQuote body="こんなのもあるぜ！<br>https://hackaday.com/2016/06/30/transcend-wifi-sd-card-is-a-..." userName="joshu" createdAt="2025-04-05T04:13:33" color="">}}

{{<matomeQuote body="SandiskにRISC-Vが入ってる。" userName="brucehoult" createdAt="2025-04-05T03:30:45" color="">}}

{{<matomeQuote body="wifi内蔵のeye-fi SDカード持ってるわ。シリアルポートすら要らないじゃん！" userName="genewitch" createdAt="2025-04-05T01:35:38" color="#785bff">}}

{{<matomeQuote body="もうやったわ。Tシャツも持ってる:<br>https://dmitry.gr/?r=05.Projects&proj=15.%20Transcend%20WiFi..." userName="dmitrygr" createdAt="2025-04-05T01:37:12" color="">}}

{{<matomeQuote body="マジでナイスなワーク！upvoteだけじゃ、このクールさを伝えきれないと思ったんだ。しかもほぼ即レスだし。" userName="genewitch" createdAt="2025-04-05T02:57:32" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃクールなプロジェクトだけど、作者さん（見てるよね？）、ちょっと極端すぎるんじゃないかな。技術的にはすごいけど、初心者のための新しいコンピューターキットっていう目標と矛盾してる気がする。初心者にとってSOIC8でもSOIC28でも、ハンダ付けの難易度は変わらないと思うんだよね。もっと大きいチップなら、もっと便利なコンピューターになるのに。例えば、簡単なサウンド機能（DAC付きのチップとか）、キーボード、VGAみたいなモニター出力も追加できるかも。ハンダ付けはそんなに難しくないと思うし、もし興味を持ったら拡張できる良いベースになると思うよ。" userName="blacklion" createdAt="2025-04-05T11:14:59" color="#ff33a1">}}

{{<matomeQuote body="そうだよね。もしよかったら、僕のコードを使ってくれよ。僕は8ピンっていう人工的な制限の中で楽しみたいんだ。" userName="dmitrygr" createdAt="2025-04-05T19:05:22" color="">}}

{{<matomeQuote body="基板すら使わずに、回路彫刻みたいにしたいっていう、ちょっと変わった衝動に駆られてる。" userName="myself248" createdAt="2025-04-04T20:52:54" color="">}}

{{<matomeQuote body="もしやるなら、せめてICの一つに「555」ってシルクスクリーン印刷してほしいな。" userName="genewitch" createdAt="2025-04-05T01:37:27" color="">}}

{{<matomeQuote body="＞個人的な理由でRISC-Vにアレルギーがあるんだ。<br>詳しく教えてくれない？" userName="tromp" createdAt="2025-04-05T06:50:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="命令セットが気に入らないんだよね。炎上させたいわけじゃないんだ。あくまで個人的な意見だけど、すごく強い意見だよ。<br>もっと早い段階で利用可能な情報がたくさんあったのに、全然活用されなかった。だから、本来最初からきちんとやっておくべきだったことを修正するために、たくさんの拡張機能が提案されてる。色々な追加機能によって、10年遅れでようやくまともになりつつあるけどね。学習プロセスが必要だったっていう言い訳は受け入れられないな。情報は最初から全部あったし、間違いはみんなに明らかだったはずなんだ。<br>拡張機能の中には、根本的な設計上の問題を一時しのぎで解決するものもある。例えば、shadd2は配列にアクセスするための適切なアドレッシングモードがないことへの応急処置。これに対する一般的な反論は、コアでの魔法のような命令融合が約束されること。でも、それはよく約束されるけど、実現されない。少なくとも、RISC-Vがターゲットにしてるような安価なプロセッサではね。ビットフィールドの抽出や挿入のための命令がないのも、アマチュアのミス。だから、それを修正するための拡張機能もある。でも、それは最初から必要だって分かってたはず。レジスタのビットに基づく条件分岐も、よくあることだから最初から考慮されるべきだった。最近のソフトウェアを分析すれば、それがわかるはずなのに。<br>何がイライラするかっていうと、情報があったのに無視されたこと。現代のソフトウェアがどんなことをするのか知ってたはずなのに。代わりに、ちょっとアップデートされたmips-1が出てきただけ。そして、今では拡張機能が乱立してる。最終的な結果（RV23だったかな？）をターゲットにするか、どこでも動くけどしょぼい最小公分母をターゲットにするしかない。<br>RISC-Vを実際のハイパフォーマンスコンピューティングに使おうとすると、もっと深刻な設計上の問題がある。それはまた別の機会に話すよ。<br>ほぼ同時期に、別の命令セットが設計された。それは現代のソフトウェアがどんなものかという利用可能な知識をすべて活用していて、それがよく表れてる：aarch64。" userName="dmitrygr" createdAt="2025-04-05T06:56:41" color="#ff5733">}}

{{<matomeQuote body="＞最終的な結果（RV23だったかな？）をターゲットにするか、どこでも動くけどしょぼい最小公分母をターゲットにするしかない<br>RVA23が正しいね。WindowsとかAndroidとか、次のUbuntu LTSがターゲットにしてるって聞いたよ。<br>＞どこでも動くけどしょぼい最小公分母をターゲットにするしかない<br>君が言うほどしょぼくないよ。それに、aarch64よりも大きな利点がある。それはシンプルさ。桁違いにシンプルだから、aarch64が夢見ることしかできないシナリオでも使えるんだ。<br>＞ほぼ同時期に、別の命令セットが設計された<br>aarch64が本当に好きなんだね。どっちがより良い選択をしたかって？君が正しいかもしれないけど、時間が経てばわかるさ。どちらが良い選択をしたのか、それとも呪われた選択をしたのか、振り返ることができる。<br>楽しみだね。90年代以来こんなに楽しいことはなかった。" userName="snvzz" createdAt="2025-04-05T13:53:18" color="#ff33a1">}}

{{<matomeQuote body="速さを求めるビッグコアなら、比較にならないくらいaarch64が有利。<br>小さくて安いものなら、確かにRVでも良い。でも、AVR/ARMv6M/ARMv7Mもそうだったよね。" userName="dmitrygr" createdAt="2025-04-05T15:50:58" color="">}}

{{<matomeQuote body="もしよかったら聞きたいんだけど、一番好きなISAって何？ARM64とか、あんまり一般的じゃないやつ？" userName="mixmix" createdAt="2025-04-05T11:14:54" color="">}}

{{<matomeQuote body="でっかくて速いならaarch64。中くらいならarmv8M。ちっちゃいならAVRかな。" userName="dmitrygr" createdAt="2025-04-05T15:48:12" color="#38d3d3">}}

{{<matomeQuote body="AArch64ってRISC-Vの16bit圧縮命令みたいなの、サポートしてないんだよね。あれってハードウェアで簡単に実装できて、RISC-Vのコード密度をx86-64並みにできるのに。RISC-Vのデザインって理にかなってると思うけど、好みの問題かもね。" userName="zozbot234" createdAt="2025-04-05T12:27:25" color="#ff5c5c">}}

{{<matomeQuote body="圧縮命令セットは、速さを求めるbig coreにはナンセンス。エンコードスペースの3/4を無駄にしてる。big out of order coreを設計するなら、ちょっと大きめのL1を積む方がマシ。可変長命令はマジ勘弁。Apple M4と好きなRISC-Vのfast coreのMHzあたりの性能を比べてみ？マイクロコントローラーにはアリだけど、big coreにはないわー。何でも屋になろうとするから、RISC-Vは誰にとってもイマイチなんだよ。" userName="dmitrygr" createdAt="2025-04-05T15:49:47" color="#ff5c5c">}}

{{<matomeQuote body="＞Apple M4と好きなRISC-Vのfast coreのMHzあたりの性能を比べろって言うけど”QualcommがARM対策でRISC-VのSoCを作り始めたら、あるいはTenstorrentがM4みたいなCPU設計をしたら、そういう比較ができるかもね。RISC-Vの2,4byteの可変長命令が本当に問題なのかはまだわからんよ。x86-64みたいにごちゃごちゃしてないし、ARM32+Thumb2に近いと思うけどね”" userName="zozbot234" createdAt="2025-04-05T16:18:39" color="">}}

{{<matomeQuote body="もう10年経ってるんだぜ。陪審員は評決を出して、ピクニックに行って、帰ってきて、引退してラマを飼ってるんだよ。君の言ってることは願望だよ。事実じゃない。「もし誰かがやったら」は事実じゃない。誰かがM4より性能の良い8501を作るかもしれないけど、できたら信じるよ。thumb2に近いのは確か。でもaarch64はわざとそれを選ばなかった。よく研究した結果だよ。aarch64の方がよく考えられてると思うから、正しい判断をしたのはそっちのチームだと思うよ。" userName="dmitrygr" createdAt="2025-04-05T16:31:26" color="#45d325">}}

{{<matomeQuote body="ストレージにSDカードじゃなくて8ピンのSPI flash chipを使うのも可愛いと思う。" userName="zokier" createdAt="2025-04-04T20:55:42" color="">}}

{{<matomeQuote body="検討したけど、ファイルの出し入れが大変になるんだよね。" userName="dmitrygr" createdAt="2025-04-04T21:05:13" color="">}}

{{<matomeQuote body="chip clipを使えばいいけど、chip clipを知らない人でも再現できるようにしたいから、そのアイデアは却下したんだよね？" userName="kragen" createdAt="2025-04-05T01:17:01" color="">}}

{{<matomeQuote body="chip clipって名前を知らなかったけど、IC clipとかIC test clipの方がしっくりくるね。クリップでSPI flashに電気的に接続できるけど、ジャンパーがないと通信できないんじゃない？ジャンパーなしでできる？" userName="RossBencina" createdAt="2025-04-05T05:37:46" color="#38d3d3">}}

{{<matomeQuote body="SPI flashのファイルシステムドライバがないなんて考えられないな。LinuxがSPIに対応してるのは当然だし、SPI flashは多くのアプリケーションでめちゃくちゃ使われてるし。" userName="mystified5016" createdAt="2025-04-04T21:46:12" color="#ff5733">}}

{{<matomeQuote body="組み立てた後の話ね。俺のデザインだとカード取り外して、ファイル入れて、またブートして、ファイル使えるんだ。" userName="dmitrygr" createdAt="2025-04-04T22:07:11" color="">}}

{{<matomeQuote body="理論的にはこれ使えるかも: https://www.tindie.com/products/bobricius/micro-sd-card-to-s... 試したことないから、ちゃんと動くかわかんないけど。" userName="ajb" createdAt="2025-04-04T22:51:22" color="">}}

{{<matomeQuote body="ただの機械的なアダプターっぽいね。SOIC-8プログラミングクリップの方が良くない？これだと、コンピューターがFAT-16 SDカードみたいに簡単に通信できるように、結構な量のコードを書く必要がありそう。" userName="Neywiny" createdAt="2025-04-05T00:07:26" color="#ff5c5c">}}

{{<matomeQuote body="その通り。SDカードはSPIの上にプロトコルを実装してるみたい。OSから見ると、flashチップはSDカードに見えないってことだね。" userName="ajb" createdAt="2025-04-05T07:53:20" color="#ff5733">}}

{{<matomeQuote body="だよねー。SDコントローラーに隠されたSPIモードがあるかどうかは不明。ニッチすぎる製品っぽいけど。まあ、選択肢の一つとして覚えておいてもいいかもね。" userName="Neywiny" createdAt="2025-04-06T01:30:31" color="">}}

{{<matomeQuote body="このプロジェクト自体がすごくクールなのはもちろんだけど、このページは小型マイクロコントローラーの情報源としてマジで役に立つ。WLCSPは除いてだけど。あと、ARM用のMIPSエミュレーターページへのリンクもあるし(https://dmitry.gr/?r=05.Projects&proj=33.%20LinuxCard)、これはすごく興味深い。" userName="kragen" createdAt="2025-04-05T03:44:24" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
