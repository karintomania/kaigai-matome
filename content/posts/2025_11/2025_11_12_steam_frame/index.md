+++
date = '2025-11-12T00:00:00'
months = '2025/11'
draft = false
title = 'スチームフレームがVR界を変える？ フォビエイテッドストリーミング＆6GHz無線搭載のハッカブル一体型ヘッドセットに注目！'
tags = ["VR", "ストリーミング", "Linux", "ハードウェア", "ワイヤレス"]
featureimage = 'thumbnails/purple7.jpg'
+++

> スチームフレームがVR界を変える？ フォビエイテッドストリーミング＆6GHz無線搭載のハッカブル一体型ヘッドセットに注目！

引用元：[https://news.ycombinator.com/item?id=45903325](https://news.ycombinator.com/item?id=45903325)




{{<matomeQuote body="Foveated streamingは超良いアイデアだね！Foveated renderingはAPIの実装が難しいけど、streamingなら全コンテンツに適用しやすくて効果的じゃん。6GHzドングルも通常のWiFiより全然良さそう。<br>SteamOSデバイスだから、自分のアプリをインストールしたり、ブラウザを使ったり、好きにできるんだ。VRヘッドセットでありながら、rootアクセスも可能なARM Linux PCってことだね。SDカードスロットもあるから、すごくハッカブルで、他のスタンドアロンVRヘッドセットとは全然違うよ。ディスプレイは2160x2160（片目）で72-144Hz。Quest 3と同等くらいでVision Proよりは低いから、モニター代わりにはならないかも。でも、拡張ポートがあるから、フルカラーARや口のトラッキングなんかも後付けでできるかもね。トラッキングパックがないのは残念だけど、LTTの情報だとAndroid APKも動かせるって話だし、オプションでトップストラップやValve Indexみたいなコントローラーも使えるらしいよ。" userName="modeless" createdAt="2025/11/12 19:02:33" color="#38d3d3">}}




{{<matomeQuote body="Foveated streamingはマジでヤバいね。文字を読むときの眼球運動（Saccades）って20-30msくらいだから、2.4GHzでその遅延を保証するのはめちゃくちゃ大変そうだよ。もしかして、アイトラッキングの状態が伝播して新しい中心窩位置のフル解像度画像が来るまで、MLモデルで部分的にアップスケーリングしてるのかな？あと、周辺視覚をうまくNeural compressionして、アップスケーリングがきれいになるようなヒントを埋め込む方法もあるのかもって思ったよ。" userName="monocasa" createdAt="2025/11/12 19:36:48" color="#ff5733">}}




{{<matomeQuote body="Foveated streamingの話が出たから、大学時代（80年代後半〜90年代前半）の思い出をシェアするね。親父がオーストラリア空軍のF-111フライトシミュレーターのプロジェクトマネージャーだったんだけど、そのシミュレーターのコックピットには球状のドームスクリーンとSilicon Graphics Reality Enginesが2台あったんだ。片方が低解像度で全体を映して、もう片方がパイロットのヘルメットと連動してパン/チルトするタレットで、ヘルメットが向いてる方向にだけ高解像度の画像を投影してたんだよ。親父の子供だから週末に「遊ばせてもらった」んだけど、マジで楽しかったし、すごくリアルに感じたね。他の人がプレイしてるのを見て、どこを見てるか見てないか、敵が忍び寄ってきてるのが分かったのも面白かったな。" userName="bigiain" createdAt="2025/11/12 23:40:33" color="#38d3d3">}}




{{<matomeQuote body="もし俺が正しく理解してるなら、これは6GHz帯でやるんでしょ？専用ルーターがあれば、Foveated renderingなしでも（Quest 3とかみたいに）十分な品質と納得できる遅延でストリーミングできるはずだよ。Foveated renderingがあれば、これはもう楽勝だと思うね。" userName="cube2222" createdAt="2025/11/12 19:38:11" color="#ff33a1">}}




{{<matomeQuote body="5.8GHz帯でさえ混雑してきてるんだよね。今回は専用ルーター（USBドングル）があるけど、それでも他のデバイスとスペクトラムを共有しなきゃいけないからね。それに、WiFi6の160MHzシンボルレートモードだと、5.8GHzスペクトラムでは共有しなきゃいけないチャンネルが一つしかないんだ。" userName="monocasa" createdAt="2025/11/12 19:47:20" color="">}}




{{<matomeQuote body="壁の薄い隣人が6GHz帯を-87の信号として見てるなら、そんなに問題じゃないんじゃないかな。そうは言っても、アメリカでは1200MHz、つまり5.925 GHzから7.125 GHzの範囲だね。" userName="esseph" createdAt="2025/11/12 19:50:41" color="">}}




{{<matomeQuote body="俺も子供の頃の話をシェアするね。93年から95年頃、親父に連れられてドイツに行った時、ゲーセンに行ったんだ。普通のアーケードゲームとか、カートに乗って銃を撃つゲームとか色々あったけど、一番印象的だったのはフル3Dのシューターだよ。小さなリングに入って、3Dヘッドセットと手には一つだけパッグを持っていたんだ。パッグを回すと移動して、ボタンを押すと撃てる。頭を動かせば周りを見渡せたし、何よりも、しゃがんで敵の弾を避けられたんだ！ゲーム自体は、Q3DM17（The Longest Yard）みたいなワイヤーフレームだった気がするけど、レイアウトは似てたね。プレイヤーはダーツガンを持ってて、一発撃ったら弾が消えるか相手に当たるまで待つ必要があったんだ。マルチプレイヤーだったかは覚えてないな。<br>その記憶がよく蘇るのは、そのすぐ後に親父にコンピューターフェアに連れて行ってもらって、VFX1とかいうやつでDoomやHexenをプレイする機会があったからだよ。あれもAIが今みたいに世界を変えるって言われてたんだ。それから、P5 Gloveがあって、手で3Dモデリングしたり、メカに乗って操縦したりする無限の可能性を示唆する衝撃的なデモビデオがあったけど、結局そうはならなかったんだよ。" userName="zeroq" createdAt="2025/11/13 01:46:57" color="#38d3d3">}}




{{<matomeQuote body="これには需要があるんだろうけど、個人的には「ヘッドセットにコンピューターを詰め込む」路線にしたのはがっかりだよ。俺はもっとシンプルでコンパクトな、Bigscreen Beyond 2みたいな「ダムデバイス」の方がずっと好きだね。そっちの方がずっと軽くて、長時間装着しても快適だろうし。ゲーミングPCを持ってるなら、オールインワンのPC/ヘッドセットモデルの重さや追加の部品コストはただの無駄だよ。" userName="JeremyNT" createdAt="2025/11/12 21:57:25" color="#38d3d3">}}




{{<matomeQuote body="質問なんだけど、ディスプレイ解像度がモニター代わりには適さないって判断基準は何なんだろう？仮想スクリーンに顔を近づければ、もっと細かいディテールが見えるようになるんじゃないの？" userName="xeonmc" createdAt="2025/11/12 19:23:44" color="#ff33a1">}}




{{<matomeQuote body="解像度はQuest 3くらいでVision Proには及ばないって。モニター代わりには厳しいかもね。でも本質的な問題は、長時間装着することとバッテリー持ちだよ。解像度なんて、昔はもっと低かったし、ズームすれば十分じゃない？" userName="MetaWhirledPeas" createdAt="2025/11/12 19:58:21" color="#45d325">}}




{{<matomeQuote body="モニター代わりにはPPDが超重要なんだよ。Vision Proの35ppdは合格点だけど、Quest 3の25ppdはダメって言われてるね。Steam FrameはQuest 3に近いから厳しいかも。画面に近づくと首をいっぱい振る羽目になって疲れるし、結局は物理的なピクセルが足りないと話にならないんだよ。" userName="potatolicious" createdAt="2025/11/12 19:37:25" color="#38d3d3">}}




{{<matomeQuote body="Vision Proの35ppdだって、良いデスクトップモニターのPPDには全然及ばないんだよね。AppleのRetinaディスプレイはもちろん、24インチの1080pモニターでもこれを超えるPPDが出るんだから。個人的には、VRでテキスト作業するなら35ppdが最低限だけど、これじゃまだモニターの代わりにはならないな。計算にはここが使えるよ。https://phrogz.net/tmp/ScreenDensityCalculator.html" userName="giobox" createdAt="2025/11/12 20:28:36" color="#ff5733">}}




{{<matomeQuote body="6GHz帯Wi-Fiってさ、スマホとかパートナーが動画見てると干渉しちゃうのが問題だよね。専用ドングルだと、既存のWi-Fiと競合するし。MIMOで多少は良くなるけど、完璧じゃないんだよな。" userName="monocasa" createdAt="2025/11/12 19:59:36" color="">}}




{{<matomeQuote body="Foveated streamingってすごいよね。Vision ProもMacの仮想ディスプレイで使ってて、それでたくさんのピクセルを効率良く送れてるんだよ。" userName="dagmx" createdAt="2025/11/12 20:15:18" color="">}}




{{<matomeQuote body="「The One Big Beautiful Bill」って法律のせいで、このスペクトラムの大部分がWi-Fiじゃない用途に売られちゃうんだって。" userName="cyberax" createdAt="2025/11/12 20:00:26" color="">}}




{{<matomeQuote body="これってVirtualityっていう製品に似てるのかな？90年代の初め頃に、バーかゲーセンでVirtuality 1000CSとかで遊んだ記憶があるんだよね。" userName="m463" createdAt="2025/11/13 03:09:56" color="">}}




{{<matomeQuote body="Wi-Fi 6EはPC VRストリーミング以外では、あんまり使う理由がないかな。俺はQuest 3用にWi-Fi 6Eルーターを立ててて、他のデバイスは5GHzで使ってる。壁抜けしないから問題ないしね。Steam Frameは6GHzを動画、5GHzをWi-Fiって使い分けできるのがいいね。Questだと頭を速く動かすとラグったから、foveated streamingで解消されるといいんだけど。" userName="cube2222" createdAt="2025/11/12 20:09:40" color="#45d325">}}




{{<matomeQuote body="マウス（口）トラッキング？Steamのゲームカタログを考えると、なんか嫌な想像しちゃうな。" userName="ch4s3" createdAt="2025/11/12 21:06:14" color="">}}




{{<matomeQuote body="foveated renderingって、帯域幅の問題には良いけど、遅延はひどくなるんじゃないかな？ラグると超低解像度の画像を見ることになるし。MLモデルで目の動きを予測すれば、遅延を隠せるかもしれないけどね。" userName="monocasa" createdAt="2025/11/12 20:38:47" color="#38d3d3">}}




{{<matomeQuote body="Dactyl Nightmareっていうゲーム思い出したわ。<br>VRはいつか主流になるって信じてるよ。値段と、視覚リアルさ重視で酔っちゃうのがネックだけどね。でも、VRはきっと成功する！<br>URL: https://www.youtube.com/watch?v=hBkP2to1P_c" userName="somenameforme" createdAt="2025/11/13 06:13:23" color="#ff5c5c">}}




{{<matomeQuote body="モニターに顔を近づけて見るのってマジだるいよね。<br>VRで近く見ると輻輳調節不一致で目が疲れちゃうんだよな。<br>これを解決するにはバリフォーカルレンズが必要だけど、まだ試作段階なんだよね。" userName="modeless" createdAt="2025/11/12 19:25:59" color="#ff33a1">}}




{{<matomeQuote body="Dactyl Nightmareのブース、俺の記憶と全く同じだ！<br>’91年にこんな技術あったのに、まだ普通にないってマジかよ？<br>CEBITで見たIntelのスマートウォッチもすごかったな。手首をひねって操作するやつで、レストランでの注文や空港でタクシー呼ぶのに使えたんだぜ。" userName="zeroq" createdAt="2025/11/13 03:32:34" color="">}}




{{<matomeQuote body="2k X 2kって全然低解像度じゃないだろ。フルHDの縦が2倍って感じじゃん。<br>俺のモニターは1080pだよ。<br>VRセットは使ったことないから、どんな感じか想像つかないな。" userName="krzyk" createdAt="2025/11/12 20:17:54" color="">}}




{{<matomeQuote body="MetaはVRにめちゃくちゃ投資してるし、John Carmackもいたのに、なんでこの記事の技術を試さなかったんだろ？" userName="cedws" createdAt="2025/11/12 19:58:21" color="#45d325">}}




{{<matomeQuote body="LTTによると、フォビエイテッドストリーミングは最新のGPUだとワイヤレスで1～2msしか遅延しないらしいよ。マジでやばい！" userName="nabakin" createdAt="2025/11/12 21:16:45" color="#ff33a1">}}




{{<matomeQuote body="みんな35ppdで「十分」って言うけど、高品質なモニターには全然かなわないよね。<br>個人的には35ppdが最低限のラインだと思うよ。<br>ホテルとかでの一時的な作業にはいいけど、モニターの完全な代替にはまだ早すぎるな。" userName="potatolicious" createdAt="2025/11/12 20:37:55" color="#38d3d3">}}




{{<matomeQuote body="それは違うスペクトル帯域の話だよ。<br>古いレーダー帯域を掴んでるみたいだね。<br>既存のISM 6GHzバンドに、もっとスペクトルを追加しようって話も出てるよ。" userName="esseph" createdAt="2025/11/12 22:44:50" color="#38d3d3">}}




{{<matomeQuote body="サッカードの対処法が知りたいな。<br>6GHzを使ってるって言ってるけど、2.4GHzもサポートするのかな？<br>まあ、データ無線の周波数はそんなに重要じゃないと思うけどね。" userName="vlovich123" createdAt="2025/11/13 11:28:16" color="#ff5733">}}




{{<matomeQuote body="同感だね。<br>Bigscreenには今後もハードウェアを作り続けてほしいな。<br>俺、オリジナルのBigscreen Beyond持ってるけど、グレア以外はすごく満足してるよ。" userName="preisschild" createdAt="2025/11/12 22:02:00" color="#ff33a1">}}




{{<matomeQuote body="フォービエイテッドストリーミングって、ピクセル数は変わんないけど非注視領域のビットレートを落とすだけだよ。これでエンコードとか送信、デコードにかかる時間を短縮して遅延を減らすんだ。フォービエイテッドレンダリングだと、実際に描画されるピクセル数が減るって感じ。" userName="anvuong" createdAt="2025/11/13 00:42:20" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="どの年齢層の人の話をしてるの？俺は53歳だけど、Quest 3 はモニターの代わりとして全然使えるよ。" userName="andybak" createdAt="2025/11/12 21:29:43" color="">}}




{{<matomeQuote body="これってオープンエコシステムのスタンドアロンヘッドセットとして初めてなんだよな。それがめちゃくちゃデカい。Meta Quest や Apple Vision は開発者認証とかルートアクセスが必要で、イノベーションがマジで遅れてたからさ。" userName="arnaudsm" createdAt="2025/11/12 22:09:53" color="#ff5c5c">}}




{{<matomeQuote body="ごめん、見逃したのかもしれないけど、なんでエコシステムがオープンだってわかるの？リンクからはOSの変更可否とか（多くの Android フォンみたいにロックされてるかも）、DRM／Steam を動かすのに接続マシンが必要かとか、ドライバがオープンソースかどうかも分からないよね。" userName="contrarian1234" createdAt="2025/11/13 05:06:20" color="#38d3d3">}}




{{<matomeQuote body="SteamOS で動くって書いてあったろ。SteamOS はただの Linux だぞ。" userName="theknarf" createdAt="2025/11/13 05:21:09" color="">}}




{{<matomeQuote body="Android だって結局は Linux だけど、俺のフォンには Debian なんて入れられないもん。" userName="contrarian1234" createdAt="2025/11/13 07:23:24" color="#ff33a1">}}




{{<matomeQuote body="俺はノートPCのポータブルプライベートディスプレイとして使える“ダム”なヘッドセットが欲しいだけなんだよ。3D も VR も変なコントローラーもいらねえ。ただ目のサイズのモニターをくれよ。XR OS とか XR の“ビジョン”とか、もううんざりなんだって。Apple ですらちゃんと理解できてないし、偉い人たちはスマホ以降、どこに進めばいいか全然分かってないよな。" userName="Razengan" createdAt="2025/11/12 23:02:20" color="#ff33a1">}}




{{<matomeQuote body="SteamOS って、基本的には Arch に Steam といくつかの追加ソフトが入ってるだけなんだよ。" userName="wombarly" createdAt="2025/11/13 07:47:07" color="#ff33a1">}}




{{<matomeQuote body="それだけじゃ別OSを入れられるってことにはならないけど、Arch のソフトが動くってのは分かるよ。Arch の ARM サポートって非公式じゃなかったっけ？（昔試したっきりだけど）Raspberry Pi とかでも Arch を動かしてる人って聞かないしね。" userName="contrarian1234" createdAt="2025/11/13 07:56:11" color="#45d325">}}




{{<matomeQuote body="SteamOS と SteamVR だから、任意の aarch64 Linux バイナリが SteamVR と連携して動くはずだよ。" userName="piperswe" createdAt="2025/11/13 06:27:29" color="#ff5c5c">}}




{{<matomeQuote body="SteamVRはDRMプラットフォームでオープンソースじゃないみたいだね。Metaより制限が少ないかもだけど、「オープンエコシステム」って呼ぶのはどうかなって思うよ。" userName="contrarian1234" createdAt="2025/11/13 08:02:28" color="">}}




{{<matomeQuote body="ドライバー再構築の頻度が減るのが重要だね。スタックは成熟してるし、3588 SBCと同じスタックだから、ゲーム開発で大量のAndroidソフトをダウンロードしなくて済むんだ。OpenVR/SteamVRがクローズドでも、オープンソースドライバースタックへの道が短くなるから長期的な問題にはならないと思うよ。" userName="bullen" createdAt="2025/11/13 11:25:38" color="#45d325">}}




{{<matomeQuote body="「最初のオープンエコシステムのスタンドアローンヘッドセット」って、Lynx XR1はどうなの？ Androidベースだけど公式にrooted化できるし（詳細 https://lynx.miraheze.org/wiki/Rooting_Process ）、実験的だけどLinuxも動くんだよ（詳細 https://wiki.postmarketos.org/wiki/Lynx_R1_(lynx-r1) ）！" userName="utopiah" createdAt="2025/11/13 08:06:42" color="#ff5733">}}




{{<matomeQuote body="混乱するね。VRには力不足なSBCでゲーム開発するの？ クロスコンパイルしないの？いつかこのヘッドセットで完全なオープンソーススタックが実現するかもだけど、それが確実だとは思わないな。SteamVRってGooglePlay Servicesみたいな感じに聞こえるよ。" userName="contrarian1234" createdAt="2025/11/13 13:11:48" color="">}}




{{<matomeQuote body="ドキュメントやスペックには書いてないけど、Valveのハードウェアはいつもそういう感じでオープンなんだよ。例えばSteam DeckにWindowsを自由にインストールできるでしょ。" userName="mavamaarten" createdAt="2025/11/13 08:12:34" color="">}}




{{<matomeQuote body="3588でもVRはできるよ、Unity/Unreal VRじゃないだけ。それは肥大化したエンジンの問題で3588の問題じゃないんだ。主要なヘッドセットは最終的にオープンソースドライバーを手に入れることになるよ： https://github.com/collabora/libsurvive" userName="bullen" createdAt="2025/11/13 14:02:01" color="#ff5733">}}




{{<matomeQuote body="MetaがQuest 1をすぐに捨てたことは言うまでもないね。ゲームを買ったけど、プレイしないうちに動かなくなっちゃったよ！ 30ポンドが無駄になった。タダで手に入れたからあまり文句は言えないけどね。" userName="IshKebab" createdAt="2025/11/12 22:17:41" color="">}}




{{<matomeQuote body="Androidは「ただのLinux」じゃないよ。修正されたカーネルやクローズドソースのブートローダー、他のOSのコンポーネント、大量のバイナリブロブがあるんだ。技術的にはLinuxカーネルだけど、「ただのLinux」って言うならmacOSも「ただのFreeBSD」って言えるでしょ。Steam DeckにDebianやOpenBSDもインストールできるし、このVRヘッドセットもValveの広告を見る限り、同じような自由度があるってことだね。" userName="tete" createdAt="2025/11/13 10:14:37" color="#785bff">}}




{{<matomeQuote body="Steam Deckみたいなら、このヘッドセットのSteamOSも全くロックダウンされないだろうね。Steam DeckにはWindowsや好きなディストリビューションを問題なくインストールできるんだ。Valveが何か制限してるわけじゃないからね。" userName="sensanaty" createdAt="2025/11/13 11:15:37" color="#ff33a1">}}




{{<matomeQuote body="そう、私たちはルートアクセスとオープンブートローダー付きのヘッドセットをリリースしたんだ。数ヶ月後には次のヘッドセットを発表する予定だよ :-)" userName="stanlarroque" createdAt="2025/11/13 11:20:27" color="#45d325">}}




{{<matomeQuote body="ドキュメントやスペックには書いてないけど、別のOSをインストールできるって示唆してるんだよね。「SteamOSデバイスと同じで、アプリをインストールしたり、ブラウザを開いたり、好きなことができる。それは君のPCだ」って。他のSteamOSデバイスはOSインストールを許してるから、Frameも同じだと思うよ、その説明からするとね。" userName="embedding-shape" createdAt="2025/11/13 08:28:23" color="">}}




{{<matomeQuote body="うん、でもfoveated streamingとかってオープンソースになるの？それとも、誰かが不完全に再実装するのを10年待つことになるのかな？" userName="contrarian1234" createdAt="2025/11/14 15:52:16" color="">}}




{{<matomeQuote body="Steam DeckはARMじゃなかった。Steam Machineのページと違って、Steam FrameのページではカスタムOSを入れられるとは示唆されてないね。カスタムドライバーもアップストリームされてるとは限らないし、Qualcomm SoCは常にカーネルと結びついたクローズドソースのユーザー空間デーモンを必要とするんだ。" userName="surajrmal" createdAt="2025/11/13 14:41:47" color="#ff5733">}}




{{<matomeQuote body="Lynx XR1には唯一の問題があって、誰もまともに手に入れられてないんだ。バッカーの一部がランダムに手に入れただけ。多くの人（僕も含めて）はまだデバイスが届くのを待ってるし、多分ずっと待つことになるだろうね。これは開発者エコシステムに深刻な影響を与えてる。興味深いことしてる人もいるけど、ユーザーが少なすぎて大きな進歩は期待できない。昔のJolla Tabletと似てるよ。2013年にオープンなLinuxディストロを動かすx86タブレットで、すごく面白かったけど、資金問題で少数の人にしか渡らなかったから、Sailfish OSアプリの対応もそれに反映されたんだ。" userName="m4rtink" createdAt="2025/11/13 12:15:20" color="#45d325">}}




{{<matomeQuote body="多分ね。でも、インディーズエンジンが3588で動くなら、eye tractionは決して焦点にはならないだろうな。あと、クロスコンパイルは意味ないよ。テストするにはハードウェアが必要だし、そのデバイス上でコンパイルできるべきだ。少なくとも俺が望むのは、コンパイルできないデバイスを違法にすることだ。" userName="bullen" createdAt="2025/11/15 12:22:03" color="">}}




{{<matomeQuote body="彼らはOSについても明示的に言及してるね。Qualcomm SoCを搭載した製品が代替OSのインストールをサポートするとは、すごく疑わしいけどな。" userName="surajrmal" createdAt="2025/11/13 14:43:27" color="">}}




{{<matomeQuote body="Valveがユーザーに最初からrootアクセスを与えるのは大きいね。これでヘッドセットが本当のPCと同じカテゴリに入るよ。" userName="KolibriFly" createdAt="2025/11/13 10:14:25" color="#785bff">}}




{{<matomeQuote body="問題は、君がLinuxデスクトップのエコシステムについて話してるのに対して、OPはカーネルについて話してるかもしれないってことだよ。どちらもただのLinuxだけど、その違いを区別する命名法が進化してないのは驚きだね。ちなみに、Androidカーネルはもうそんなに大きく改造されてないし、カスタムのほとんどはアップストリームされてるよ。" userName="surajrmal" createdAt="2025/11/13 14:36:02" color="#45d325">}}




{{<matomeQuote body="HUDグラスは、ディスプレイが頭に向かってると不快だからイマイチだよね。3DOFトラッキングを追加しても部分的にしか解決しないから、視覚的・前庭的快適さを最大化するために6DOFを使うんだ。仮想環境内に仮想ディスプレイをレンダリングするけど、たくさんの無駄なスペースがある！だから仮想モニターを追加するんだ！それらを管理するメカニズムが必要になるからそれを追加すると、ウィンドウシステムができてくる…固定空間デスクトップで仮想モニターをレンダリングする意味は？アプリケーションウィンドウ自体をレンダリングすればいいんじゃない？ノートPCに最適なポータブルプライベートディスプレイは、XRネイティブデスクトップを持つ6DOFトラッキングヘッドセットになるのは避けられないだろうね。" userName="scheeseman486" createdAt="2025/11/13 08:33:21" color="#45d325">}}




{{<matomeQuote body="Frameが主役だけど、新しいSteamOS mini-PCと新しいコントローラーも発表されたみたいだよ。価格はまだ不明みたい。ストアへのリンクはこれね。<br>https://store.steampowered.com/sale/steammachine<br>https://store.steampowered.com/sale/steamcontroller" userName="jsheard" createdAt="2025/11/12 17:57:05" color="#ff5c5c">}}




{{<matomeQuote body="やったね。Valveの次期マシンのスペックがリークされてて、VRデバイスじゃなくてmini PCだといいなって願ってたんだ。このスレッド見て一瞬がっかりしたけど、前の投稿を見て安心したよ。Steam Deckの6倍の性能（ほとんど繋ぎっぱなしで使ってるから、Steam Deck 2よりパフォーマンスに投資できるのは嬉しい）は最高だね。これならほとんどのゲームが1080pで快適に動くはずだよ。" userName="phantasmish" createdAt="2025/11/12 18:29:21" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="でもSteam Machineの魅力って何だろう？ 同スペックのPCと価格は変わらないって言うけど、それなら普通のmini PCを買ったり自作したりすればいいんじゃない？ 選択肢はたくさんあるわけだし。" userName="andoando" createdAt="2025/11/12 21:37:53" color="">}}




{{<matomeQuote body="4Kで60Hzなのは本当に残念だね。4K 120Hzストリーミングにはまだ良い選択肢がないから、次期Apple TVに期待したいな。追記：スペック更新で対応できるって書いてるけど、HDMI 2.0に制限されてるみたい。" userName="marcosscriven" createdAt="2025/11/12 18:02:35" color="#ff5c5c">}}




{{<matomeQuote body="昔はドライバの問題とか互換性とか、新しいゲームのためにいつもハードウェアをアップデートするのにうんざりしてPCゲームやめたんだよね。それでコンソールゲームに移行してから、PCゲームは全然考えてなかった。でも、これを見ると考え直してる。とにかく“ただ動けばいい”んだ。ゲームしたいときに、余計なことで悩みたくない。もう歳だし、そんな時間ないからね。" userName="baggachipz" createdAt="2025/11/12 21:46:19" color="">}}




{{<matomeQuote body="Snapdragonはデスクトップゲームのサポートがあまり良くない歴史があるよね。Windows for ARMも互換性がイマイチだったし。Deckみたいにほとんどのゲームが遊べるのが目標みたいだけど、ちょっと不安が残るな。" userName="torginus" createdAt="2025/11/12 19:05:02" color="">}}




{{<matomeQuote body="彼らの新しいmini PCはARMじゃないよ（FrameはARMだけど）。Steam Deckと同じAMDのハードウェアで、x86みたいだね。SteamOSで動く限り、私のライブラリにあるほとんどのゲームが1080p以上でプレイできるはずだよ。" userName="phantasmish" createdAt="2025/11/12 19:12:48" color="#ff5c5c">}}




{{<matomeQuote body="フレームはスタンドアローンモードでも普通のx86ゲームをサポートしてるんだぜ。" userName="torginus" createdAt="2025/11/12 19:37:30" color="">}}




{{<matomeQuote body="スペックシートが更新されたから書き直すね。4K 120Hz対応みたいだけど、HDMI 2.0制限で4:2:0クロマサブサンプリング頼りになるってさ。HDMI 2.1がないのは政治的な問題みたいで、RDNA3 GPUはハードウェアで対応してるはずなのに、HDMI ForumがAMDのオープンソースHDMI 2.1実装をブロックしてるんだって。詳しいことはここで確認してね。https://arstechnica.com/gadgets/2024/02/hdmi-forum-to-amd-no..." userName="jsheard" createdAt="2025/11/12 18:06:20" color="#ff5733">}}




{{<matomeQuote body="FEXを動かすんだ、ARMゲームを直接動かすわけじゃないよ。" userName="klohto" createdAt="2025/11/12 19:41:02" color="">}}




{{<matomeQuote body="それってQualcomm GPUやドライバーを魔法のように直すわけじゃないでしょ。" userName="torginus" createdAt="2025/11/12 20:02:25" color="">}}




{{<matomeQuote body="DP 1.4もサポートしてるみたいだから、もしディスプレイがHDMI 2.1しかサポートしてなくても、アダプターを使えばいけるかもね。" userName="OGWhales" createdAt="2025/11/12 19:28:04" color="">}}




{{<matomeQuote body="それは無理だと思うよ。アダプターは基本的にただのストレートケーブルで、何も変換してないはず。GPUがDisplayportコネクターからHDMI信号を出してて、アダプターはそれをHDMI形状のコネクターに配線し直してるだけだからね。" userName="SchemaLoad" createdAt="2025/11/12 23:58:25" color="#ff5733">}}




{{<matomeQuote body="ちょっとトピックから外れるけど、Steam MachineがMac Mini m4と比べてどれくらい大きいのか気になったんだ。Mac Mini m4持ってるから比較対象にね。もちろん機能とかじゃなくて物理的な容積だけの話。Mac Mini m4は127 x 127 x 50 mmで0.8 L、Steam Machineは156 x 162 x 152で3.8 Lだよ。なんと4.76倍も大きいんだね。" userName="JBiserkov" createdAt="2025/11/12 18:42:36" color="#785bff">}}




{{<matomeQuote body="買ったメモリが互換性なかったり、GPUがスタイリッシュなmITXケースに収まらなかったりすると、部品交換に時間を費やしたくない人もいるよ。PCを組むときは、全てのパーツが互換性があって最適か確認するのにたくさん調べなきゃいけないんだ。PCを使う時間よりも組む時間に費やしたくないって人にはね。" userName="eptcyka" createdAt="2025/11/12 22:16:30" color="">}}




{{<matomeQuote body="君はゲーミングPCに関してすごく良い経験をしてるんだろうね、俺もそうだったらよかったのに。俺のWindows PCは、バグだらけのFocusriteオーディオインターフェースドライバーのせいでランダムにBSODするし、RX 5600 XT GPUを忘れて統合グラフィックスになるから1995年みたいなDevice Managerでリセットしなきゃいけないし、たまに音が出なくなるし、タスクバーのアイコンが消えたり、アプリが閉じられなくてTask Managerで強制終了する羽目になるんだ。<br>15年くらいPCゲームしてるけど、こんなの俺にとっては当たり前だよ。" userName="niek_pas" createdAt="2025/11/13 10:36:06" color="#45d325">}}




{{<matomeQuote body="PCにSteamOSを入れるのと何が違うの？って疑問なんだよね。" userName="andoando" createdAt="2025/11/12 23:48:51" color="">}}




{{<matomeQuote body="GPUは大丈夫そうだし、Valveが過去のハードウェアでオープンソースドライバー使ってたように、もし今回もそうなら、自分たちで修正できる可能性があるのはいいよね。" userName="scheeseman486" createdAt="2025/11/12 20:31:01" color="">}}




{{<matomeQuote body="ValveがQualcommにGPUドライバーをオープンソース化させたらバナナの皮食うわ。新しく書くかfreedreno使っても、どうせ性能問題は出るだろうしね。" userName="surajrmal" createdAt="2025/11/13 15:52:16" color="#785bff">}}




{{<matomeQuote body="新しいコントローラーめっちゃ楽しみ！初代Steam Controllerは最高で、FPSはマウスとキーボード以外無理だった俺も、これならRTSやポイント＆クリックをソファでできたから、生産中止になった時8個も買っちゃったんだ。" userName="komali2" createdAt="2025/11/13 02:06:45" color="#ff5c5c">}}




{{<matomeQuote body="既存のPCにSteamOSを入れるだけで同じことできるよ。良い製品だけど、革命的ってわけじゃないよね。" userName="andoando" createdAt="2025/11/12 23:16:23" color="">}}




{{<matomeQuote body="その数字ってどこ情報？スペックページには載ってないみたいだけど。" userName="skeaker" createdAt="2025/11/12 18:24:00" color="">}}




{{<matomeQuote body="コントローラーは良さそうだけど、D-padが気になるな。Xboxコントローラーみたいにカチカチした感触がいい。Dualshock 5や8BitDo Pro 2みたいなフニャフニャは嫌なんだよね。D-padは左上派だけど、やっぱXboxみたいにカチカチしてほしい。" userName="tosmatos" createdAt="2025/11/13 07:22:33" color="#ff5733">}}




{{<matomeQuote body="コンパクトだし、TVでコントローラー操作前提のSteamOS搭載。多くの開発者のパフォーマンスターゲットになるはずだよ。PCにはないクイックサスペンド＆レジュームが最大の機能かもね。ゲームによってはPCのスリープを嫌がるからさ。" userName="rbits" createdAt="2025/11/12 23:13:11" color="#45d325">}}




{{<matomeQuote body="要するにコンソールだね。ユーザーはほとんど何もせず、すぐに遊べるのが売りだよ。" userName="remir" createdAt="2025/11/12 22:48:22" color="">}}




{{<matomeQuote body="ドライバーはもう大した問題じゃないけど、.NETやVisual C++ redistributable地獄がマジで厄介だわ。起動時に謎のエラーが出て、結局20個もインストールされてるし、MSは何でJavaみたいに最新版が全部後方互換にならないんだ？これWindows 10と公式Steamゲームの話ね。" userName="kakacik" createdAt="2025/11/13 10:05:06" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
