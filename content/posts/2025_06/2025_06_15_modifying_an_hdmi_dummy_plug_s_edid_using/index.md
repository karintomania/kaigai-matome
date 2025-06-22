+++
date = '2025-06-15T00:00:00'
months = '2025/06'
draft = false
title = 'Raspberry PiでHDMIダミープラグのEDIDを自由に変更する方法！'
tags = ["Raspberry Pi", "HDMI", "EDID", "自作", "ハードウェア改造"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> Raspberry PiでHDMIダミープラグのEDIDを自由に変更する方法！

引用元：[https://news.ycombinator.com/item?id=44282998](https://news.ycombinator.com/item?id=44282998)




{{<matomeQuote body="これ試したい人に注意だよ！安いダミープラグのEEPROMは256バイトしかないから、高解像度・高リフレッシュレートの設定とか、拡張EDIDブロックは保存できないんだ。1080p60なら大丈夫だけど、4k240とかは無理だよ。あと、書き込み保護ピンが有効になってて、書き込むにはちょっと改造が必要なやつもあるらしい。" userName="aappleby" createdAt="2025/06/15 19:25:56" color="#ff33a1">}}




{{<matomeQuote body="書き込み保護のオンオフは、使ってるチップによるかもね。" userName="klysm" createdAt="2025/06/16 00:56:57" color="">}}




{{<matomeQuote body="これらのダミープラグの欠点は、HDCPに対応してないことなんだよね。ヘッドレス環境で特定の解像度を強制するのにはいいけど、HDCP必須のコンテンツを再生したい場合はダメ。そこで質問なんだけど、このHDMIダミープラグみたいに、HDCPに対応してる良い解決策を知ってる人いる？HDCPが必要な動画配信アプリをテストしたいんだけど、テストごとにテレビを用意するのは大変で。一つ見つけたのはHDMIマルチビューアで、これはポートごとにHDCPをネゴシエートするみたいなんだけど。" userName="avidiax" createdAt="2025/06/15 17:05:09" color="#38d3d3">}}




{{<matomeQuote body="俺はこのHDMIスプリッターを使ってるよ。事前にプログラムされたEDIDを設定したり、HDMI出力1に繋いだモニターからEDIDを学習させたりできるんだ。出力に何も繋がなくても、スプリッターが挿さってる限りモニターとして認識されるよ。コンピュータ／ゲーム機とスプリッターの間でHDCPをネゴシエートして、信号を出力モニターに送るときはHDCPなしになると思う。<br>https://www.amazon.com/dp/B07VP37KMB" userName="ndiddy" createdAt="2025/06/15 17:33:22" color="#ff33a1">}}




{{<matomeQuote body="俺は違う用途なんだ。HDMIを出力する組み込みシステムがあるんだけど、その起動画面を別のHDMIストリーム（静止画でいいんだけど）に置き換えたいんだ。組み込みシステム側は色々な理由で絶対に変更したくない。これを安くて頑丈にやる方法ない？" userName="amelius" createdAt="2025/06/15 18:24:38" color="#785bff">}}




{{<matomeQuote body="多分一番エレガントな方法じゃないけど、GPIOとかRS-232で制御できるHDMIスイッチャーはたくさんあるよ。それとRaspiを使えば、Raspiから画像を入力して、組み込み機器の電源オンをGPIOで検出したら、別のHDMI入力に切り替えるってことができる。これが使えるかどうかは、消費電力とかスペースとか、他の要件次第だけどね。俺は以前AV関係で似たソリューションを使ってて、何年も安定して動いてるよ。もっとちゃんとしたのがいいなら、BlackmagicのAtem Miniっていう良いHDMIスイッチャーがあって、複数の静止画を保存できたり、イーサネットとかでも切り替えられるよ。" userName="atoav" createdAt="2025/06/16 08:23:51" color="#ff33a1">}}




{{<matomeQuote body="https://www.ti.com/product/TMDS261B<br>これと、2つ目の信号を生成するためのRP2040があれば多分うまくいくよ。https://learn.adafruit.com/picodvi-arduino-library-video-out... にRP2040でHDMIを出す方法の例があるよ。" userName="indrora" createdAt="2025/06/16 23:17:56" color="#785bff">}}




{{<matomeQuote body="AliExpressでHDCPを終端してHDMIをフォワードするって謳ってるもの売ってるよ。自己責任でね。" userName="hedora" createdAt="2025/06/15 18:44:22" color="">}}




{{<matomeQuote body="こういうのが存在するのに、モニターとデスクトップコンピュータ間の信号が暗号化されてるなんて信じられないよね。" userName="kachapopopow" createdAt="2025/06/15 22:21:47" color="">}}




{{<matomeQuote body="もっとクレイジーなのは、DRMの悪い面だけあって、良い面は何もないことだよ。俺はHDCP 2じゃない4k HDMI 2.0 TVを持ってるから、”スプリッター”なしでは4kコンテンツが見れないんだ。あと、相互運用性の問題があると、最悪の事態（コンテンツが見れないか、HDMI出力すら出ない）になるんだ。実際、そういうことは起こるよ。ソフトウェアの実装が壊れてたり（ソース切り替え時にHDCPの状態マシンをリセットしないテレビとか）、単に電気的な問題だったり（i2cとかCECは電荷漏れで死ぬことがあって、直すには全部10分くらい抜き差しする必要があるんだ）。" userName="phh" createdAt="2025/06/16 07:54:40" color="#ff33a1">}}




{{<matomeQuote body="それが動画DRMってやつね。<br>いいこと？ そんなのこれっぽっちもなかったし、これからもないよ。ユーザーにも、他の誰にとってもね。動画DRMは文字通り一度もちゃんと動いたことないんだ。<br>それなのに存在するし、存在することでみんなにとって状況が悪くなってるんだ。" userName="ACCount36" createdAt="2025/06/16 11:01:41" color="">}}




{{<matomeQuote body="音楽ストリーミングで働いてた時も、いつもこんな議論してたんだ。<br>レーベルの人たちもDRMがどんだけダメかってことには心底同意してたんだけど、アーティストがコピーを止めるために「何か」しろって要求するから、って言ってたね。<br>https://youtu.be/z8K08AcVru0?t=627" userName="qingcharles" createdAt="2025/06/20 20:12:32" color="">}}




{{<matomeQuote body="Netflixでたまーに音声問題があるんだよね（AppleTVをSamsung 4K OLEDテレビに繋いでるんだけど）。これも何らかのDRMのせいだと思うんだけど、詳しく調べたことはないんだ。<br>入力（Fire TV stick／AppleTV stick）を切り替えたり、AppleTVでアプリ間でコンテンツを切り替えたりすると、Netflixのコンテンツ音声だけが出なくなる時があるんだ。アプリのUI音は全部ちゃんと出るのに、再生を押すと音声が全く出ないんだよね。<br>AppleTVの音声設定をDolby Atmosと標準ステレオの間で何度か切り替えると大体元に戻るから、オーディオトラックのDRMと何か関係あると思うんだけど、もし他のアイデアがある人いたら教えてほしいな。" userName="radicality" createdAt="2025/06/16 16:12:42" color="#38d3d3">}}




{{<matomeQuote body="以前Paramount+でこの問題によくぶつかってたよ。<br>今もそうかは分からないけど、これが原因で解約したんだ（プレミアム払ってるのに広告見せられるのも理由だったけどね）。" userName="freedomben" createdAt="2025/06/16 20:13:35" color="">}}




{{<matomeQuote body="DRMの唯一直接的なメリットは、知的財産を持ってる人だけだね。" userName="wildzzz" createdAt="2025/06/16 19:59:22" color="">}}




{{<matomeQuote body="うん、でもモニターだったらDisplayPortの方が断然いいよね。それにDisplayPortはHDCPをやらないし。" userName="wkat4242" createdAt="2025/06/16 02:08:12" color="">}}




{{<matomeQuote body="DisplayPortはバージョン1.1からHDCP（それに独自のDRMスキームDPCPも）をサポートしてるんだよ。<br>モニターにはDisplayPortの方が良かったってのは同意だけど、HDMIも基本的にはDisplayPortみたいになってきたから、最近は多かれ少なかれ同じコインの裏表みたいなもんだね。<br>どっちも今は固定レートリンクでデータパケットを使うようになってる。" userName="wolrah" createdAt="2025/06/16 05:03:00" color="#785bff">}}




{{<matomeQuote body="DisplayPortとHDMIの違いは、多分USB-C経由の話と勘違いしてるんじゃないかな？それ以外だと全然違うんだ。<br>とにかく、HDMIは未だにひどく特許とロイヤリティに縛られてて、オープンソースのGPUドライバーがネイティブでHDMI 2.1以降をサポートするのが難しくなってきてる状況なんだ。一方、DisplayPortはまだロイヤリティフリーだよ。<br>状況はかなり悪くて、Intelは最近のチップセットグラフィックでネイティブのHDMIポートをほとんどスキップして、DisplayPortだけに集中してるんだ（マザーボードメーカーは既製のDisplayPort→HDMI変換チップを載せることはできるけど）。AMDの方だと、Linuxでは新しいHDMI機能が全くサポートされないだろうね。" userName="AshamedCaptain" createdAt="2025/06/16 14:39:05" color="#785bff">}}




{{<matomeQuote body="＞USB-C経由のHDMIとDisplayPortを混同してるんじゃない？って思ってるかもだけど、違うよ。HDMI 2.1がコネクタ以外ほとんど変わって、DVI由来じゃなくDisplayPortみたいなマルチレーンパケットベースのプロトコルになったって話だよ。ライセンス問題がひどいのは分かってる。" userName="wolrah" createdAt="2025/06/17 14:44:51" color="">}}




{{<matomeQuote body="うん、俺はLinux動かすのにHDMI to DPコンバーター使ってるよ。" userName="kachapopopow" createdAt="2025/06/16 20:20:47" color="">}}




{{<matomeQuote body="他にも同じことやってるやついるよ。Decimatorの一部とか？これかな？https://www.decimator.com/Products/MiniConverters/12G-CROSS/..." userName="bombcar" createdAt="2025/06/16 11:03:13" color="#45d325">}}




{{<matomeQuote body="Amazonで”HDCP strippers”って公然と広告されてるHDMIスプリッターを試してみてよ。" userName="mschuster91" createdAt="2025/06/15 17:26:51" color="">}}




{{<matomeQuote body="multiviewerってのが同義語かもね。このダミープラグのチップって、HDCP対応をハックできるほど強力なのかな？" userName="crazysim" createdAt="2025/06/15 18:31:33" color="">}}




{{<matomeQuote body="ダミープラグの中身って、ほんとただの256バイトのeepromがI2Cにつながってるだけなんだって。シェルの中にはそれ以外何もないらしいよ。" userName="aappleby" createdAt="2025/06/15 19:04:14" color="#ff5733">}}




{{<matomeQuote body="HDCPの終端は難しいよ。HDCP 1.4にダウングレードして、1.4”compliant”（つまり終端のデバイス）をダミーモニターにする必要があるんだ。HDCP 1.4より新しいのが必要なら、多分無理だよ。" userName="dcan" createdAt="2025/06/15 17:27:52" color="#ff33a1">}}




{{<matomeQuote body="このMonopriceのドングルの分解記事書いたんだ（https://tomverbeure.github.io/2023/11/26/Monoprice-Blackbird....）。これ、HDCP 2.0で終端してHDCP 1.4に変換するんだけど、結局動かすにはHDCP 1.4のシンクが要るんだよね。" userName="tverbeure" createdAt="2025/06/15 19:40:51" color="#785bff">}}




{{<matomeQuote body="俺はMonoprice multiviewer使ってるよ。ディスプレイ繋がなくてもHDCPネゴシエートするんだ。ちょっとデカくて高いし、HDCP解除はできないけど、良い解決策だよ。AliExpressで同じやつがジェネリックパッケージであったけど、まだ試してないな。業務用のSDIコンバーターとかいっぱいあるけど、3千ドル以上とか”価格はお問い合わせ”なんだよね。" userName="avidiax" createdAt="2025/06/15 20:05:44" color="#ff5c5c">}}




{{<matomeQuote body="それ、君が書いたの？この部分には同意できないな＞HDCPコンバーターは単純に最終ビデオエンドポイントとして名乗ってる…でも内容は出力ポートにリピートしてる。すごく高いHDMIプロトコルアナライザーがないと、ソースがコンテンツをtype 0かtype 1かタグ付けしてるかチェックできないけど、それがtype 1じゃないと思う理由は今はないね。HDMIプロトコルにはtype 1とかtype 0とかいう魔法はないよ。それは単なるDDC経由の別のHDCPメッセージだけど、リピーターにしか送られないんだ。この場合、HDCP Repeaterがリピーターじゃないフリしてるから、StreamID Type情報は送られてこないんだ。" userName="kevin_b_er" createdAt="2025/06/15 22:37:30" color="#ff33a1">}}




{{<matomeQuote body="分解記事いいね！<br>これってHDCPを完全に解除できるの？<br>HDCP2.xに対応してる”って報告できれば、実際は非対応でもいけるってこと？<br>もしそうなら、暗号化されたストリームを流して、受け側で復号する”ってこと？<br>18 Gb/sでリアルタイム処理するには、このデバイスは非力そうだね。" userName="Sporktacular" createdAt="2025/06/15 23:32:02" color="">}}




{{<matomeQuote body="多分、チップ自体はできるんだろうけど、ユーザーには公開されてないんじゃないかな。<br>それやるとライセンス違反になりそうだし。" userName="tverbeure" createdAt="2025/06/16 04:03:08" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="関連で聞きたいんだけど、EDIDバイナリの良いアーカイブとか、もっと良い編集ツールない？<br>プログラマブルなEDIDエミュレータープラグ持ってるから、モニターとかクローンできるんだけど、たまに特定の解像度や機能（8K with DSCとか）を設定したいのに方法がないんだよね。<br>https://github.com/bsdhw/EDIDは知ってるけど、最近のモニターにはちょっと物足りない。<br>https://www.analogway.com/products/aw-edid-editorで自作もしたけど、色々なモードの細かい調整とか、優先順位の設定とか、個人的には結構難しいんだ。" userName="slipheen" createdAt="2025/06/15 20:40:10" color="#ff5733">}}




{{<matomeQuote body="EDID編集は（やりすぎなくらい）経験あるよ。<br>おすすめツールはこれ：<br>- AW EDID Editor (君も挙げてるね)<br>- CRU (Windows用で、モニターからダンプしたEDIDファイルを編集できるけど、Wineでは動かない)<br>- 010 Hex Editor (EDIDテンプレートがある)<br>- LinuxならFlatpakからwxEDIDを入れられる (多分、ディストリのパッケージだとWxWidgetsでクラッシュするかも)。セクション作成はできないと思うけど。<br>- v4l-utilsにedid-decodeがある (git diffのtextconvツールにも使えるけど、EDIDファイルのエンコードには使えない)<br>HDMI EDIDにはCEA拡張ブロックがあって、DP EDIDにはDisplayID拡張ブロックがあることを見つけたんだ。<br>256バイト超えの複数ページEDIDは扱ったことないけどね。" userName="nyanpasu64" createdAt="2025/06/16 00:56:39" color="#38d3d3">}}




{{<matomeQuote body="これも見てみて。<br>https://www.extron.com/product/software/edidmanager30<br>https://www1.kramerav.com/au/product/edid%20designer<br>どっちも無料だけど、再配布はできない。<br>Extronの方は、彼らのハードウェアを使ったプロジェクトに関わってる必要があるかもね。" userName="_kb" createdAt="2025/06/16 00:58:48" color="#38d3d3">}}




{{<matomeQuote body="最近、似たような問題があったよ。<br>安い5.1サラウンドシステムサウンドバーを買ったんだけど、HDMI経由でDolby TrueHDまで対応してるのに、eARC対応デバイス（新しいTV）でしか使えないんだ。<br>PCをつなぐと、SPIDFかauxを使うしかなくて、音質が落ちる。<br>オーディオ抽出器とか分配器を買う以外で、PCのEDIDを偽装してサウンドバーにeARCとして認識させるっていう解決策がある。<br>今、これに取り組んでるけど、残念ながら厳密なガイドラインはまだないんだ。" userName="3abiton" createdAt="2025/06/15 23:40:37" color="#45d325">}}




{{<matomeQuote body="君が使ってるプログラマブルなEDIDエミュレータープラグって何？<br>最近調べてたんだけど、どのデバイスにどんな機能があるのかとか、安いので良いものがあるのかとか、よく分からなかったんだ。" userName="The_SamminAter" createdAt="2025/06/16 04:38:16" color="">}}




{{<matomeQuote body="これだよ。<br>https://www.store.level1techs.com/products/p/5megt2xqmlryafj..." userName="slipheen" createdAt="2025/06/16 07:28:26" color="#ff5c5c">}}




{{<matomeQuote body="なるほど。<br>もっと手頃な代替品はある？<br>それとも、安い製品を改造するしかないかな。" userName="The_SamminAter" createdAt="2025/06/16 08:40:34" color="">}}




{{<matomeQuote body="パススルー付きのHDMIダミープラグもあるんだぜ。古いPCで高解像度モニターを使う時に便利なんだ。うちの2011年製AMD FX8350のオンボードGPUだと4KでHDMI出力がおかしいんだけど、これ挟めば1080pで出力できて、モニター側で2倍にアップスケールしてくれるからバッチリだよ。" userName="zdw" createdAt="2025/06/15 17:03:43" color="#38d3d3">}}




{{<matomeQuote body="パススルー付きのやつ、俺も何個か持ってるよ。記事でも触れるべきだったかな。俺のは凝っててさ、モニターのEDIDを読み込んで保存、別のモニターに適用できるんだ。あと最高なのが、モニターを常に検出させられること。うちのモニターは電源切ると仮想的に抜けちゃうせいで問題起きてたんだけど、パススルーで完全に解決！俺が使ってるのはTHWTのHD-EWBってやつ。" userName="dougg3" createdAt="2025/06/15 17:15:40" color="#785bff">}}




{{<matomeQuote body="Dougさん、教えてくれてありがとう！パススルー付きなんて知らなかったよ。君のやつ、調べてみるね。記事もナイスだよ。" userName="gadiyar" createdAt="2025/06/15 17:36:01" color="">}}




{{<matomeQuote body="どういたしまして！うまくいけばいいな。さっきのコメントで「モニターを常に検出させられる」って言ったけど、正確には「常に検出させる」って言うべきだったかな、言い換えとくね。" userName="dougg3" createdAt="2025/06/15 17:53:46" color="">}}




{{<matomeQuote body="HDMIダミープラグってのは、本来存在すべきじゃないソフトウェアの問題を、ハードウェアで無理やり解決してる感じだよね。" userName="mrheosuper" createdAt="2025/06/16 01:53:52" color="">}}




{{<matomeQuote body="それって、世の中にたくさんあるハードウェア解決策のほとんどに言えることなんじゃない？って俺は思うな。" userName="HappMacDonald" createdAt="2025/06/16 16:11:06" color="">}}




{{<matomeQuote body="なんでダミープラグが必要なの？ソフトじゃできないことで何ができるんだろ？（仮想ディスプレイを18個作っても問題なかった者からの質問）" userName="ashirviskas" createdAt="2025/06/15 21:35:32" color="">}}




{{<matomeQuote body="一つ例を挙げると、俺はWindows VMを操作するのにLooking Glassってソフトを使ってるんだ。PCにGPUが2つあって、Linuxホスト用にAMD、WindowsゲストにパススルーでNVidiaを使ってる。Looking GlassはNVidia GPUの出力をキャプチャしてデスクトップのウィンドウに表示するんだ。これでVMのWindowsソフトを許容できるパフォーマンスで使える。<br>問題は、NVidia GPUはディスプレイ繋がないと何もしてくれないこと。Quadro GPUならEDIDを保存してマッピングできるけど、コンシューマー向けGPUは対応してない。そこでダミープラグの出番さ。" userName="ndiddy" createdAt="2025/06/15 23:58:03" color="#45d325">}}




{{<matomeQuote body="外出先でZoomやTeamsの会議しながら、PowerPointの発表者ツールを使いたい時に超簡単なんだ。ダミープラグをPowerPointの出力画面にして、ノートPC画面で発表者ノートを見る。そしてダミープラグ側の画面を共有すればOK。Hacker Newsのヘビーユーザー向けじゃないかもだけど、先生や営業さんにはマジで楽。" userName="antgiant" createdAt="2025/06/16 04:06:51" color="#ff33a1">}}




{{<matomeQuote body="OS、GPU、ドライバの組み合わせで、仮想ディスプレイを自由な設定で作れないことが多いんだよね。OBSとかSteam、Parsecなんかでゲームストリーミングする時とかに欲しいんだ。数年前はLinuxのXorg+オープンソースドライバやWindows+NVidiaで何となくできたけど、MacOSとかWindows+AMD/Intel GPUだと全然うまくいかないんだよね。" userName="SXX" createdAt="2025/06/15 21:54:55" color="#ff5c5c">}}




{{<matomeQuote body="バイナリ埋め込みLinuxのテストで使うんだよ。OSにディスプレイ繋がってると思わせると、本番環境にない要素が入っちゃうからね。ダミープラグは安くて楽なハードウェア oplossing。エンジニアがソフトでゴニョゴニョするより多分コスパ良いんだ。" userName="leonheld" createdAt="2025/06/16 01:16:50" color="#38d3d3">}}




{{<matomeQuote body="ダミープラグってさ、たいていの人には簡単なんだよね。俺、リモートゲームストリーミングのためにソフトで偽物の4Kモニター作ったことあるんだけど、予想よりずっと難しかったんだよ[^1]。<br>[^1]: https://pfy.ch/programming/4k-sunshine.html" userName="pfych" createdAt="2025/06/15 21:53:13" color="#38d3d3">}}




{{<matomeQuote body="どのGPU/ドライバ使ってたの？" userName="lyu07282" createdAt="2025/06/15 23:55:10" color="">}}




{{<matomeQuote body="あの時はね、AMD 5700xtをMesaドライバで使ってたんだよ。" userName="pfych" createdAt="2025/06/16 01:42:15" color="">}}




{{<matomeQuote body="改造したChromebox（WindowsとLinuxが起動する）なんだけど、HDMIポートに何も繋がってないと起動してくれないんだよね。だからダミープラグ使うしかなくてさ。" userName="dd_xplore" createdAt="2025/06/15 21:44:04" color="#785bff">}}




{{<matomeQuote body="他でも言われてるけどさ、MacってディスプレイがないとGPUの能力を全部引き出せない問題があった記憶があるな。ソフトで何とかできる方法もあるかもだけど、HDMIダミーは安くてすぐ使えるし、アップデートで使えなくなったりしないから安心だよ。" userName="detaro" createdAt="2025/06/16 10:34:43" color="#ff5c5c">}}




{{<matomeQuote body="リモートデスクトップ使うRaspberry Piって、物理的にモニター繋がってないとデスクトップが表示されないんだよね…。PhD学生には一番楽な解決策だよ。" userName="TheJoeMan" createdAt="2025/06/15 23:00:40" color="#785bff">}}




{{<matomeQuote body="Appleデバイスにさ、VNC経由で特定の解像度を使わせるように説得するんだ。（皮肉っぽいニュアンスで）" userName="immibis" createdAt="2025/06/16 19:38:38" color="">}}




{{<matomeQuote body="「ソフトでできないことって？」って話だけど、Macbookを蓋閉じたまま使えることかな。" userName="RunSet" createdAt="2025/06/16 18:57:07" color="#45d325">}}




{{<matomeQuote body="多分、ソフトを簡単にいじれないデバイス向けなんだろうね。" userName="tshaddox" createdAt="2025/06/15 21:52:03" color="">}}




{{<matomeQuote body="どうやらLinuxって仮想ディスプレイをサポートしてないみたいだね。Windowsならダミーディスプレイ入れたりApolloが自動でやってくれたりするのに。Linuxにはそういうのないんだ。" userName="TiredOfLife" createdAt="2025/06/16 10:22:54" color="">}}




{{<matomeQuote body="楽しい豆知識だよ。これ、普通のモニターとかノートPCの画面に保存されてるEDIDを変えるのにも使えるんだ。たまに、他のi2cアドレスに書き込めばTCONのいろんな設定も変えられたりするよ。ラズパイじゃなくても、どんなコンピューターでもできるんだ。" userName="dishsoap" createdAt="2025/06/15 17:15:59" color="">}}




{{<matomeQuote body="これ、前にAcerのモニターでやったんだ。CRTみたいにブレない映像にするために、LEDバックライトをストロボさせるように改造しててね。DDCバスでバックライト制御する他のレジスタが露出してるのを見つけて、外部回路繋いでストロボさせてたんだよ。フラッシュROMの読み書きレジスタがあるのに気づいて、ダンプして8051の逆アセンブラ書いて、雑なリバースエンジニアリングしたんだ。そしたら、ROMを改造してストロボモードを組み込めたんだよ（明るさ制御の下の方を使って、OSDか普通のDDC明るさ制御で有効・調整できるように）。書き込むときは、中に一度入ってライトラインを繋ぐ必要があったけどね。都合の良いことにvblankに割り込みがあって、LEDバックライトを制御するタイマーに、次の割り込みのちょっと前にオンにして、その後調整可能な時間オフにするモードがあったんだ。LCDの更新が終わって落ち着いた後でフラッシュさせるのにちょうどいい時間だったよ。元々は数秒かかる起動ロゴを消したかっただけなんだけどね（それは達成した）。" userName="gblargg" createdAt="2025/06/16 07:21:51" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="フラッシュチップって通常、書き込み有効／無効ピンがあって、ほとんどのモニターやテレビはEDIDへの書き込みを防ぐように配線されてるんだ。多分、安いものだけが気にしないんだろうね。保護がないと、読み込み中の電圧グリッチが書き込みになっちゃってフラッシュを壊すリスクがあって危険なんだよ。" userName="ajb" createdAt="2025/06/15 18:51:00" color="#785bff">}}




{{<matomeQuote body="ライトプロテクトピンを+Vに繋ぐなんて、PCB設計プロセスでは文字通りタダじゃん。個人的には、そうしないのは設計ミスか意図的な判断だと思うね（ユーザーがモニターの識別情報を書き換えることをどれだけ考慮したかは知らないけど）。" userName="nyanpasu64" createdAt="2025/06/16 01:00:28" color="">}}




{{<matomeQuote body="筆者はラズパイの使用を推奨してるけど、必須じゃないって注意してるね＞PCでこれらのコマンドを実行すると、EDIDじゃないハードウェア、例えばRAMモジュールのSPD EEPROMを誤ってフラッシュする可能性がある。" userName="crtasm" createdAt="2025/06/15 17:22:46" color="">}}




{{<matomeQuote body="そうだね、でもDIMMが繋がってるi2cコントローラーって、ディスプレイポートに繋がってるGPUのi2cコントローラーとは完全に別のデバイスだよ。何やってるか分かってる限り、リスクはそんなに大きくない。" userName="dishsoap" createdAt="2025/06/15 17:24:14" color="">}}




{{<matomeQuote body="うん、自分のGPUのI2Cコントローラーを使ってるって100％自信があるなら多分大丈夫だよ。でも記事で何度も警告した理由は、RAMのSPDを誤ってフラッシュしちゃった人が2人もいたGitHubのissueを見つけちゃったからなんだ。<br>https://github.com/bulletmark/edid-rw/issues/5" userName="dougg3" createdAt="2025/06/15 17:31:43" color="#ff5c5c">}}




{{<matomeQuote body="これ聞いて、Linus Torvaldsのオフィス仲間からのこの逸話思い出すな。(1)からだよ＞ある時、Linusは/devにデバイスファイルを実装して、大学のコンピューターにダイヤルアップして端末エミュレーションコードをデバッグしたかったんだ。それで端末エミュレータープログラムを起動して、/dev/hdaを使うように指定したんだ。それは/dev/ttyS1であるべきだった。おっと。今や彼のマスターブートレコードは”ATDT”と大学モデムプールの電話番号で始まってたんだ。彼は次の日には権限チェックを実装したと思うよ。<br>(1) https://liw.fi/linux-anecdotes/" userName="netsharc" createdAt="2025/06/15 18:00:09" color="#ff5c5c">}}




{{<matomeQuote body="＞普通のモニターやノートPCの画面に保存されてるEDIDを変えるのにも使える<br>それはハードウェア開発者にとっては奇妙な見落としだろうね。普通は事前にプログラムされたEPPROMを買って、ライトイネーブルピンがハイにならないボードに配置するはずだ。モニターのような製品にEEPROMを置いて書き込み可能にしておくのは奇妙だけど、出荷されたハードウェアでもっと変なものも見たことがあるよ。" userName="Aurornis" createdAt="2025/06/15 19:31:04" color="">}}




{{<matomeQuote body="え、それダメでしょ、でも実際に見たことあるよ。最悪だったのは、最初のロットはEDIDが全く書き込まれてなくて、そのままお客さんに送られたんだ。ほとんどの人は気づかなかったけどね、接続先の製品のデフォルト設定で動いたから。でも最適じゃなかったし、普通のノートPCとは使えなかったんだ。<br>皮肉にも、この2つの問題のおかげで現場でEDIDを直せたんだけど、数千ドルのTVを壊したら怖いからやらなかったよ。" userName="ajb" createdAt="2025/06/15 20:38:59" color="">}}




{{<matomeQuote body="最近のモニターはもうEDIDにEEPROMチップなんて使ってないよ。I2Cバスはモニター内のマイクロコントローラーに繋がってて、それでDisplay Data Channelを実装してるんだ。これで、コンピューターのアプリから画面の明るさとかカラープロファイルを調整できるようになったの、モニターのOSDをいじる必要なくね。<br>ddcutilみたいなツールはあまり知られてないけど、もしDIY KVMスイッチみたいに、PCがモニターに入力切り替えを指示するだけで実現したいなら、すごく役に立つよ！" userName="crote" createdAt="2025/06/15 20:43:44" color="#ff5733">}}




{{<matomeQuote body="＞PCがモニターに入力切り替えを指示するだけでDIY KVMスイッチ<br>まさにそれをやった時に、ddcutil-dbのデータベースにちょっとだけ貢献したんだ。最初は僕のモニターはサポートされてなかったけど、ツールやテンプレートを使って基本的な設定とか入力切り替えの正確なアドレスを見つけるのは難しくなかったよ。<br>全部うまく動くようになって、いい午後の作業になったな。" userName="Crespyl" createdAt="2025/06/16 02:16:06" color="#785bff">}}




{{<matomeQuote body="DDC通信とI2C EEPROMの両方を同じバス上の別アドレスに置いて共存させるために、I2Cのマルチペリフェラル機能を使ってるモニターってあるの？ それとも機能をコントローラーチップに統合する方が安いのかな？ （DisplayPortはAUXバスでEDIDをトンネルしてるし、（たぶん）最初からEEPROMは使ってないよね？）" userName="nyanpasu64" createdAt="2025/06/16 01:02:38" color="">}}




{{<matomeQuote body="標準仕様では明確にそれを許可してるけど、正直あまり一般的じゃないと思うな、もし使われてたとしても。<br>主な問題は2つ。まず、標準的なEDID EEPROMはサイズがすごく限られてるんだけど、多くのモニターはもっと容量が必要なんだ。VESAはこれを解決するために、別のI2Cアドレスにあるダミーの“セグメントセレクター”レジスターを追加したんだ。これで市販のI2C EEPROMチップとは互換性がなくなったから、どっちみちEDID専用のEEPROMチップみたいなのが必要になる。<br>2つ目の問題は、ほとんどのモニターには複数の入力ポートがあること。普通のEEPROMチップは1つのポートにしか繋げないから（I2C自体は対応してるけど、仕様で禁止されてる）、ポートごとにEEPROMチップが1つ必要になるんだ。それはすぐに高くなるよ。<br>もしDDC＼CIをマイクロコントローラーで実装してるなら、EDIDもそれに任せればよくない？ なんなら、EEPROMに別の接続を持たせてプログラムしやすくすればいい。EDIDの部分なんて完全に些細なことで、全然頑張らなくても2ダースの命令で実装できると思う。わざわざ別にして自分を追い込む理由はないよ。" userName="crote" createdAt="2025/06/17 00:12:14" color="#785bff">}}




{{<matomeQuote body="友達がHDMIポート経由で、壊れたEDIDのモニター（Acer K222HQL）を再フラッシュしなきゃいけなかったんだ。そのモニターには3つの入力ポート（VGA, DVI, and HDMI）があって、それぞれポートの隣にEEPROMチップがあったのを確かめたよ（友達はHDMIのEEPROMのピンを1本浮かさないと再フラッシュできなかったんだ。GNDに繋ぐべきだったのにね）。ネットでマニュアル（https://global-download.acer.com/GDFiles/Document/User%20Man...）を見たら、そのモニターはDDCをサポートしてるって書いてあって、I2Cのマルチペリフェラル機能を使ってたってことだと思う。<br>別の壊れたモニターのメインボードがあるんだけど、そこではVGAとDVIのEDIDピンが100Ωの抵抗を通って、未実装の8ピンフットプリントやメインチップに行ってるんだ。たぶんこれは、設計段階では専用のEEPROMチップにEDIDを保存することも考えたけど、結局はディスプレイレシーバーにデータを統合する形になったってことだと思う。" userName="nyanpasu64" createdAt="2025/06/17 04:16:26" color="#45d325">}}




{{<matomeQuote body="あれ、混乱したな。プラグがGPIOのI2Cピンに繋がると思ってたんだけど、ただRPiに挿すだけで十分みたいだね。え、じゃあHDMIってI2Cインターフェースを直接公開してるの？" userName="m000" createdAt="2025/06/16 19:35:26" color="">}}




{{<matomeQuote body="そうだよ、VGA＼HDMI＼DVIの通信部分であるDDCリンクは、基本的にI2Cリンクなんだ。普通の動作でOSがEDIDを問い合わせるのは、この方法だよ。<br>記事にも書いてある通り、RPiはHDMIポートピンにI2Cコントローラーが配線されてるんだ。DDC経由でEDIDを読み取る必要があるからね。" userName="pm215" createdAt="2025/06/16 19:51:17" color="#ff5c5c">}}




{{<matomeQuote body="KVMとLinuxでの問題を解決するために、安価なDisplayPort EDIDエミュレーターを知ってる人いる？ 前回調べた時は、HDMI用よりずっと高くて、新しいKVMを買う方がマシなくらいだったんだ。" userName="1100011" createdAt="2025/06/15 20:27:24" color="">}}




{{<matomeQuote body="ここでの問題は、DisplayPortがEDIDにI2Cバスに繋がった基本的なEEPROMを使ってないってことなんだ。代わりに、高速なDisplayPort専用のAUXバスを使ってて、これをいじるのはかなり複雑なんだよ。正直、VESAに参加してNDAにいっぱいサインしないと、まともなドキュメントすら見つけられないと思うな。" userName="crote" createdAt="2025/06/15 20:38:08" color="#ff33a1">}}




{{<matomeQuote body="EDIDはカーネル設定で変更できるらしいよ！(https://foosel.net/til/how-to-override-the-edid-data-of-a-mo...)。でも、記事みたいに仮想モニターを追加したいなら、別の方法かもね？こっちのURLも参考になるかな？(https://askubuntu.com/questions/453109/add-fake-display-when...)。うまくいくかは分かんないけど！" userName="nyanpasu64" createdAt="2025/06/16 01:04:48" color="#38d3d3">}}




{{<matomeQuote body="これ関連だと、DisplayLinkのevdi（https://github.com/DisplayLink/evdi）とか、自分のおもちゃプロジェクト（https://github.com/mlukaszek/evdipp）もあるから見てみてよ！お手柔らかにね！" userName="mlukaszek" createdAt="2025/06/16 07:23:17" color="#785bff">}}




{{<matomeQuote body="ダミープラグって、デバイスのフィンガープリンティングを変えるために使えるの？" userName="1vuio0pswjnm7" createdAt="2025/06/16 03:18:54" color="">}}




{{<matomeQuote body="USBのibus2プラグのhex dumpは、EDIDにくっつけられるんだよ。" userName="awaymazdacx5" createdAt="2025/06/15 18:08:21" color="">}}




{{<matomeQuote body="よく分かんないんだけど、なんでRaspberry Piでモニターが繋がってるって偽装する必要があるの？別に普通に起動するんじゃないの？" userName="Simon_O_Rourke" createdAt="2025/06/16 05:50:26" color="">}}




{{<matomeQuote body="記事ちゃんと読んだ？Raspberry Piは、ただダミープラグを書き換えるために使ってるだけだよ。" userName="Gigachad" createdAt="2025/06/16 05:53:17" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
