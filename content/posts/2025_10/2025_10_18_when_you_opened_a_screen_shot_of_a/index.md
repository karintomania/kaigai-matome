+++
date = '2025-10-18T00:00:00'
months = '2025/10'
draft = false
title = 'Paintで開いたビデオのスクリーンショット、まさかの動画が流れる！'
tags = ["レトロPC", "MS Paint", "動画再生", "バグ", "ビデオオーバーレイ"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> Paintで開いたビデオのスクリーンショット、まさかの動画が流れる！

引用元：[https://news.ycombinator.com/item?id=45609986](https://news.ycombinator.com/item?id=45609986)




{{<matomeQuote body="Fun Fact: Classic Macintosh Quadra 840AVの8ビットカラーモードでも同じことがあったんだよ。リアルタイムビデオキャプチャの再生で、システムパレットの濃い緑色（カラーインデックス#243）が予約されて、その色が使われてる場所はどこでもライブビデオに置き換わったんだ。90年代にこれでクールなエフェクトをいくつか作ったな。" userName="cgijoe" createdAt="2025/10/19 00:02:38" color="#45d325">}}




{{<matomeQuote body="うん、他のMac AVモデルでも同じことできたよ。うちにあった6100/60AVでもやった記憶があるね。" userName="dietrichepp" createdAt="2025/10/19 03:28:57" color="">}}




{{<matomeQuote body="Pump Up the Jamって聞くといつもPhilomena Cunkを思い出すんだ。Netflixで「Cunk on Earth」っていう番組があるから見てみて。絶対に後悔しないよ。" userName="Stratoscope" createdAt="2025/10/19 14:03:38" color="">}}




{{<matomeQuote body="昔、EverQuestでモブの出現待ち中にPS2ゲームをチャットウィンドウでやってたんだ。キャプチャカードが、特定の紫色の部分にビデオをオーバーレイするのを発見してね。空のチャットウィンドウをその色にして、カードのアプリウィンドウと重なる部分にビデオを表示させてた。超ジャンクなピクチャーインピクチャーだったけど、ちゃんと動いたんだ。" userName="whiatp" createdAt="2025/10/19 15:16:56" color="#ff5733">}}




{{<matomeQuote body="これ偶然発見したんだ。大学時代に「MS Paintでビデオを再生できる」って賭けをして、ビールを何本か勝ち取ったよ。 :)" userName="jowood" createdAt="2025/10/19 09:21:05" color="#ff5733">}}




{{<matomeQuote body="「これらの特殊なサーフェスはデスクトップに重ねて表示されるから“オーバーレイ”って呼ばれてた」って言うけど、ウィンドウが変な形（つまり四角じゃない）のプログラムも、何らかのオーバーレイを使ってたようなぼんやりとした記憶があるんだ。それってまた別の種類のオーバーレイなのかな？" userName="kqr" createdAt="2025/10/19 06:25:38" color="">}}




{{<matomeQuote body="それはリージョンって呼ばれてたよ。" userName="grishka" createdAt="2025/10/19 09:44:42" color="">}}




{{<matomeQuote body="Matrox MilleniumカードでWindows 98 SE2 PCでTVを見てたんだ。当時は最高にクレイジーだったんだけど、グリーンバックみたいな効果は謎のバグだと思ってた。Windows 98は不安定だったから、下手にいじるとビデオキャプチャが壊れるんじゃないかって怖かったんだ。ウィンドウを素早く動かしたり、ドライバーが stuttering すると、一時的に緑色が見えてビデオが表示されるって現象があった。他のコンテンツで同じ色があると、そこにビデオが出たりもしたよ。" userName="halyconWays" createdAt="2025/10/18 22:03:08" color="#785bff">}}




{{<matomeQuote body="WinampとかGUIで偶然これを見つけて、めちゃくちゃ使ってたんだよね！" userName="nomel" createdAt="2025/10/16 22:12:54" color="">}}




{{<matomeQuote body="俺も子供の時に偶然見つけてさ、デスクトップの壁紙に動画流してたんだ。めっちゃクールだと思ってたよ。" userName="nicce" createdAt="2025/10/19 08:17:26" color="">}}




{{<matomeQuote body="「今どきビデオレンダリングにオーバーレイは使われない」って記述、GPU変えてからChromeで動画に緑の線が入るのこれのせいかと思ったのに、違ったわ。" userName="edgineer" createdAt="2025/10/18 04:13:36" color="">}}




{{<matomeQuote body="緑の線はYCbCr動画のデコードで補間エラーが起きるとよく出るやつだよ。YCbCrからRGBへの変換がちゃんとできてないと、緑色として出ちゃうんだ。オーバーレイ以外でも起こり得るよ。" userName="ack_complete" createdAt="2025/10/19 08:13:45" color="#785bff">}}




{{<matomeQuote body="ビデオレンダリングは今でもオーバーレイ（MPO）でできるよ。君の緑の線は、たぶんアンクランプなバイリニアフィルタリングと、出力領域よりデカいテクスチャが原因だと思う。" userName="BearOso" createdAt="2025/10/18 20:44:54" color="#785bff">}}




{{<matomeQuote body="現代でも「オーバーレイ」は使われてるけど、もっと高機能になったMPOってやつね。緑とかのアーティファクトは、ハードウェアビデオデコーダーとアプリの表示のバグが原因だと思う。動画のブロックサイズと実際のサイズが合わないと出やすいんだ。ANGLEとか使うとハードウェアデコーダーが使われなくなるから、それで解決することもあるかもね。<br>https://learn.microsoft.com/en-us/windows-hardware/drivers/d..." userName="kimixa" createdAt="2025/10/19 03:17:52" color="#45d325">}}




{{<matomeQuote body="俺も昔同じようなことがあったからググってみたよ。Redditのこれ見てみて。<br>https://old.reddit.com/r/OLED_Gaming/comments/1kovgdx/green_...<br>Chromeのフラグいじる前に、まずドライバーを最新にしとくのが大事だよ。" userName="jadamson" createdAt="2025/10/18 20:39:41" color="#ff33a1">}}




{{<matomeQuote body="これはマジで間違ってるよ。WindowsのChromeでは今でも動画はオーバーレイでレンダリングされてるんだ。オーバーレイが使われる理由はいっぱいあるんだから。" userName="petermcneeley" createdAt="2025/10/19 01:31:28" color="">}}




{{<matomeQuote body="[要出典]もし動画レンダリングがオーバーレイ使ってたら、YouTubeでツールバーとか字幕を動画の上に表示できないはずだよね？でもずっとできてるじゃん。" userName="Kwpolska" createdAt="2025/10/19 09:08:43" color="">}}




{{<matomeQuote body="今どきのオーバーレイシステムはアルファ合成に対応してるんだ。動画が奥にあって、ツールバーみたいな要素がアルファマスクを使って手前に表示されてるってことだよ。" userName="petermcneeley" createdAt="2025/10/19 14:43:32" color="#ff5c5c">}}




{{<matomeQuote body="ツールバーと字幕は別のプレーンにあって、それが上に合成されてるんだよ。Chromeだと、ハードウェアオーバーレイ対応のデバイスでは、動画のフレームは最大1つまでハードウェアオーバーレイに昇格させるんだって。詳しくはここ見てね: https://issues.chromium.org/issues/40140067" userName="charcircuit" createdAt="2025/10/19 11:17:23" color="#ff5c5c">}}




{{<matomeQuote body="これ聞いて思い出したんだけどさ、Windows 95（かWin 98）の時、Quakeがスタートボタンの中にレンダリングされちゃったことがあったんだよね。たしかAlt+Tab関連だった気がするけど、詳細が思い出せないや。" userName="dqh" createdAt="2025/10/19 09:50:25" color="">}}




{{<matomeQuote body="その奇妙なエフェクトは、Windows 95/98時代の初期のDirectDrawやWinQuakeでよく知られたクセなんだよ。特定のモードでゲームがプライマリサーフェスを奪うと、DirectDrawがプライマリサーフェスと協調レベルを管理する方法のせいで、デスクトップのGDI（スタートボタンとかタスクバーとか）の一部がゲームのバックバッファを一時的に表示しちゃったりしてたんだよね。" userName="mycall" createdAt="2025/10/20 01:49:57" color="#ff33a1">}}




{{<matomeQuote body="皮肉なことに、2025年にはこの答えもまた間違ってるってことになるんだよね。スマートフォンから始まって、スキャンアウトのハードウェアは複数のプレーンやオーバーレイを再びサポートするようになって、固定機能ブロックでオンザフライで合成されるんだ。これでGPUを起動したり、メモリ帯域幅を無駄にしたりしなくて済む（スマホだとこれが電力の大部分を占めるんだ）。もうグリーンピクセルを使ったハックじゃなくなるけどね。" userName="stefan_" createdAt="2025/10/18 23:09:06" color="#785bff">}}




{{<matomeQuote body="そうだね、今はアルファチャンネルがあるからできることだよね。" userName="reactordev" createdAt="2025/10/19 00:21:21" color="">}}




{{<matomeQuote body="ビデオオーバーレイでのブレンドには必ずしも必要ないし、無駄だよ。もしオーバーレイ内にコントロールが表示されるなら必要だけどね。アルファブレンドって、影響を受ける全領域（画面全体の場合もある）で1ピクセルあたり2回の読み出しと1回の書き込みが必要なんだ。不透明なオーバーレイなら、目的の矩形内の各ピクセルで1回の読み出しと1回の書き込みで済むよ。" userName="ahartmetz" createdAt="2025/10/19 02:15:32" color="#38d3d3">}}




{{<matomeQuote body="問題のビデオオーバーレイは、メモリ内のフレームバッファにブレンドして描画されるわけじゃないんだ。ディスプレイパスが並行して読み出す2つの別々のディスプレイプレーンで、スキャンアウト時にスケーリングされて合成されるんだよ。読み出しだけで書き込みはないんだ。今どきのGPUは、パディングとしてどうせ必要になるアルファチャンネルを使ってアルファブレンドされたディスプレイプレーンをサポートしてるんだ。ハードウェアディスプレイプレーンを使うと、ビデオの上にコントロールを浮かせる場合とか、静止画の上にプレーンをスムーズにアニメーションさせる場合なんかに効率が良いんだけど、ディスプレイプレーンをどれだけ小さくスケーリングできるかみたいな、ハードウェア帯域幅の制限みたいな変な癖もあるんだよね。" userName="ack_complete" createdAt="2025/10/19 08:24:59" color="#785bff">}}




{{<matomeQuote body="ああ、ごめん。その通りだね。ハードウェアプレーンはメインのフレームバッファを通さずに直接スキャンアウトされるんだ。" userName="ahartmetz" createdAt="2025/10/19 19:02:07" color="">}}




{{<matomeQuote body="確か、「グリーン スクリーン」を壁紙にして、動画をデスクトップの背景にできたこともあったよね！" userName="dixie_land" createdAt="2025/10/18 20:50:07" color="">}}




{{<matomeQuote body="WinAmpのAVSビジュアライザーをオーバーレイ表示にして、デスクトップ背景にする手もあるよ。" userName="cluckindan" createdAt="2025/10/18 22:35:58" color="">}}




{{<matomeQuote body="そうそう、俺も「ライブ壁紙」みたいな動画をデスクトップにしてたな。DivXでAVCが普及した頃の話だけどね。使ってたプレイヤーのオーバーレイ色は#0000A0だったような…もう記憶が曖昧で、歴史を調べるレベルの話になっちゃったよ。歳を感じるわ。" userName="lotyrin" createdAt="2025/10/19 01:28:05" color="">}}




{{<matomeQuote body="そうそう、俺もビデオのスクリーンショットが全然撮れなかったの覚えてる。GUIが何も知らないオーバーレイでレンダリングされてたからなんだよね。" userName="k__" createdAt="2025/10/19 08:23:44" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺が知る限り、DRM保護された動画だと今でも同じ現象が起きるよ。スクショを撮ると真っ黒になるのは、OSが動画を「見られない」からで、モニターに直接送られてるんだ。記事の現象と似てるね。" userName="jakub_g" createdAt="2025/10/19 09:08:06" color="#ff5733">}}




{{<matomeQuote body="いや、違うよ。普通はOSも動画を見てるし、コンポジターも普通に画面に描画してるんだ。でもスクショを撮るとき、OS自身がその画面を写さないようにしてるってわけ。OSが共犯者なんだよ。" userName="grishka" createdAt="2025/10/19 09:43:36" color="#38d3d3">}}




{{<matomeQuote body="残念だけど、今のDRMはProtected Media Pathみたいな技術を使ってるんだよね。詳しくはこちら: https://en.wikipedia.org/wiki/Protected_Media_Path" userName="JoshTriplett" createdAt="2025/10/19 10:29:30" color="#ff5733">}}




{{<matomeQuote body="OSが動画を見られる状態でのDRM保護なんて意味ないよ。だってOSはユーザーが完全にコントロールできるんだから。（少なくとも今はね）" userName="CrossVR" createdAt="2025/10/19 14:41:37" color="">}}




{{<matomeQuote body="Androidではそれは違うよ。Secure Bootがあって、ブートローダーをアンロックしたらすぐバレるんだ。Trusted Execution EnvironmentっていうOSカーネルより高権限のハイパーバイザーで認証されるから、どうしようもないんだよね。" userName="grishka" createdAt="2025/10/19 14:51:41" color="#785bff">}}




{{<matomeQuote body="AndroidがもうユーザーにコントロールされるOSじゃないってのは、本当に心配なことだよね。" userName="CrossVR" createdAt="2025/10/20 08:00:40" color="">}}




{{<matomeQuote body="それってまさしく記事の内容そのものじゃん。" userName="karel-3d" createdAt="2025/10/19 14:54:51" color="">}}




{{<matomeQuote body="これ、なんか思い出すなー。俺のシステムだと、クロマカラーは緑じゃなくて、ほとんど黒に近いけどそうじゃない、#010101みたいなめちゃくちゃ濃いグレーだった気がするんだよね。" userName="janwl" createdAt="2025/10/16 23:57:49" color="">}}




{{<matomeQuote body="Win98で同じ実験した時、あのマジックカラーは明るい緑じゃなくて、#010000っていう一番暗い赤だったんだよ。これってOSとかドライバーによるのかな？" userName="geon" createdAt="2025/10/19 09:46:57" color="">}}




{{<matomeQuote body="うん、俺も一番暗い赤だったの覚えてる！ビット深度に依存してたのかな？" userName="dusted" createdAt="2025/10/19 13:02:04" color="">}}




{{<matomeQuote body="これ、いつもマジでイライラしたよな。高画質なビデオの実際のスクリーンショット撮ってデスクトップの壁紙にしたい時とかさ。俺はハードウェア/ソフトウェア アクセラレーションとかが関係してると思ってたわ。" userName="zelphirkalt" createdAt="2025/10/19 10:04:02" color="">}}




{{<matomeQuote body="PowerDVDの診断アプリが使うテストパターンをキャプチャしようとした時に、これに気づいたんだよね。" userName="FMecha" createdAt="2025/10/19 13:11:03" color="">}}




{{<matomeQuote body="XineとかTVTimeもオーバーレイ ビデオ出力だと同じだったな。X11でスクリーンショットを撮ろうとすると、ビデオじゃなくて青緑のウィンドウになっちゃうんだよね。<br>ビデオ プレイヤー/TV ビューアの内蔵スクリーンショット機能を使わないといけなかった。OpenBSD 7.7の今のMPlayerも`mplayer -vo xover`でオーバーレイ ビデオ出力があるよ。" userName="anthk" createdAt="2025/10/19 09:26:47" color="#ff5c5c">}}




{{<matomeQuote body="Linuxのグラフィックス初期の頃は、これが一種の通過儀礼だったよな。2003年頃には、Intelが良いオープン ドライバーを提供していたi915グラフィックス ドライバーを使っていたのを覚えてる。<br>VLCでビデオを開いてデスクトップのスクリーンショットを撮ると、オーバーレイ合成色（青、緑など）が写り込んで穴が開いたみたいになってた。でも、X11がビデオ処理している場合は、その部分にビデオが表示されてたな。" userName="ddtaylor" createdAt="2025/10/19 19:05:59" color="#785bff">}}




{{<matomeQuote body="これ、Athlon 64とRadeon X200Mを積んだ昔のHPのノートPCを思い出すな。<br>FGLRXドライバーがオーバーレイしかサポートしてなかったから（記憶が正しければ）、Compizとか動かすと、緑の背景のウィンドウは変形するのにビデオ本体は元の場所に残って、重なる部分だけビデオが上に張り付く感じだった。<br>オープンソース ドライバーがついにr300をサポートして、ちゃんとしたテクスチャ付きビデオができるようになった時は興奮したのを覚えてるよ…。" userName="HansHamster" createdAt="2025/10/19 01:44:46" color="#ff5c5c">}}




{{<matomeQuote body="これ、テキストのコピー保護に良いトリックだったんだよ。例えば学生の課題とかね。CRTディスプレイをデジタルカメラで撮ることはできたけど、20年前はカメラが高価で学生は持ってなかった。<br>ゼロからテキストを打つのは面倒な作業だったし。だから、オンラインで提供された課題はすぐには共有されなかったってわけ。" userName="OCTAGRAM" createdAt="2025/10/18 03:47:01" color="#785bff">}}




{{<matomeQuote body="2005年頃にはデジカメとか携帯のカメラって普通だったよ。当時の携帯カメラは今より良くなかったけどさ。もしかして、もっと前の時代の話してる？" userName="magic_hamster" createdAt="2025/10/19 02:51:59" color="">}}




{{<matomeQuote body="2005年はiPhoneが出る前だよ。カメラは普及してたけど、今みたいに誰もが持ってるほどじゃなかったね。多くの家庭では旅行用とかで持ってて、子供が手軽に画面を撮るなんて感じじゃなかったよ。" userName="ffsm8" createdAt="2025/10/19 03:22:52" color="">}}




{{<matomeQuote body="当時でも多くのフリップ携帯にカメラは付いてたよ。例えば、Razr V3は2005年のベストセラーで、640×480pxのカメラを搭載してたし。" userName="LukeShu" createdAt="2025/10/19 05:19:52" color="#ff5733">}}




{{<matomeQuote body="カメラが無かったんじゃなくて、当時の技術じゃ、今みたいに巧妙なチートには使えなかったってことだよ。個人的なOCR Pythonライブラリなんて無かったしね。チートが不可能だったわけじゃないけど、今みたいに何でもライブラリがある時代と比べたら、ずっと大変だった。" userName="doublerabbit" createdAt="2025/10/19 08:40:09" color="#45d325">}}




{{<matomeQuote body="AABBY FineReaderは2000年代初頭から海賊版がかなり出回ってたよ。作業の流れはちょっと手間がかかっただろうけど、OCR自体は十分可能だった。" userName="xattt" createdAt="2025/10/19 11:04:51" color="#45d325">}}




{{<matomeQuote body="誰も昔は不可能だったとか、2005年以前にカメラが無かったなんて言ってないよ。ただ、カメラが今ほどユビキタスじゃなかったって話だ。それを議論するのはバカらしいよ。みんながいつでも使えるわけじゃなかったんだ。（君が言ったわけじゃないけど、このコメントチェーンがそう言ってた）。<br>たしかに、多くのグループで何人かはカメラを持ってたけど、それがみんなの普通じゃなかったんだよ。当時の（カメラだけじゃなくOCRとかも）アクセスしやすさは今よりずっと低かった。今はスマホを向けるだけで、画面やレンズのテキストを透明に抽出してくれるからね。だから、問題は今の方がずっと深刻で広範になってるんだ。これがここで言いたかったことだよ。" userName="ffsm8" createdAt="2025/10/19 12:31:12" color="#785bff">}}




{{<matomeQuote body="もし小型カメラや海賊版のOCRソフトに投資するほど熱心で賢いなら、そもそも課題を自分でやればいいんじゃない？" userName="throwaway290" createdAt="2025/10/20 18:00:55" color="">}}




{{<matomeQuote body="みんながRazrを持ってたと思うなんて、ちょっとお坊ちゃんだね！それに640x480カメラの小さい画面でテキストを読むなんて、かなり苦労するよ。" userName="throwaway290" createdAt="2025/10/20 16:43:39" color="">}}




{{<matomeQuote body="君がいた場所ではそうだったかもしれないけど、全ての場所でそうじゃなかったよ。俺は当時15歳で、デジカメも携帯のクソカメラも持ってたし。友達もみんなデジカメ持ってたんだ。Myspaceはピークを迎えてて、Facebookが伸びてた時期で、それが主に子供たちの写真撮影によって後押しされてたんだよ。2005年の西洋社会の大部分で、写真撮影の能力がユビキタスじゃなかったっていう考えは、正確じゃないみたいだね。" userName="1dom" createdAt="2025/10/19 09:03:51" color="">}}




{{<matomeQuote body="今はみんな良いカメラ付きのスマホを持ってるけど、当時はカメラもそんなに安くなかったし、携帯のカメラは画質がすごく悪かったよね。" userName="throwaway290" createdAt="2025/10/19 11:44:30" color="">}}




{{<matomeQuote body="「2005年はiPhone登場前」って言い方、テックライターはiPhoneでスマホの歴史を単純化しすぎ！iPhone前にもタッチスクリーンやスマホはあったし、SymbianとかLinux、BlackBerryのスマホは、今のiPhoneやAndroidより高性能だったことだってあるんだよ。" userName="ezst" createdAt="2025/10/19 05:42:02" color="#ff5c5c">}}




{{<matomeQuote body="他の市場は知らないけど、初代iPhoneは当時の高性能フィーチャーフォンより劣ってたし値段も高かったから、あんまり売れなかったんだ。本当にヒットしたのはiPhone 3Gからだよ。" userName="realusername" createdAt="2025/10/19 06:53:32" color="">}}




{{<matomeQuote body="このページを見てみて！http://www.thebestpageintheuniverse.net/c.cgi?u=iphone" userName="5-" createdAt="2025/10/19 10:46:26" color="">}}




{{<matomeQuote body="当時Ericsson R320sを使ってて、あのサイトを見てNokia E70に替えたんだ。E70のジョイスティックが壊れてE90にしたけど、キーボードが合わなかったな。でもE90は時速80Km＼hでバイクから落としても傷だらけで済んだんだよ！今までで最高の3台だね。今はN86を使ってて、最後の2Gがなくなるまで使うつもり。" userName="M95D" createdAt="2025/10/19 21:21:20" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ自分で試したことないんだけど、E70のジョイスティックは分解して掃除すれば直るって聞いたよ（WD-40をちょっと使うといいかもね）。" userName="5-" createdAt="2025/10/20 17:17:11" color="">}}




{{<matomeQuote body="2003年に初めてデジタルカメラ、2004年には初のビデオ通話できる電話（Nec e313）を手に入れたんだ。あの頃はまだ子供だったなあ。" userName="bapak" createdAt="2025/10/19 06:01:37" color="">}}




{{<matomeQuote body="「テキストを一から入力するのは面倒な作業だった」って言うけど、そうやって入力することで何か学べることがあるかもね。：）" userName="accrual" createdAt="2025/10/19 01:23:32" color="">}}




{{<matomeQuote body="この技、Windows XPの頃から知ってたよ。SketchUpみたいなプログラムで3Dモデルの中に動画を再生してたんだ。" userName="precommunicator" createdAt="2025/10/17 00:21:12" color="">}}




{{<matomeQuote body="最近https://tnmoc.orgでSGI IRIXの展示を見てウェブカメラがあった時、この技を思い出したよ。CRT画面のカメラフィードの遅延は、今の基準でも信じられないくらいすごかった！1分くらい純粋に驚いた後、オーバーレイのことを思い出したけど、それでもかなり印象的だったな。" userName="5-" createdAt="2025/10/18 20:57:36" color="#785bff">}}




{{<matomeQuote body="Winamp AVSのオーバーレイモードを使うとすごく速くなったのを覚えてるよ。なんでだったんだろうね？" userName="perryizgr8" createdAt="2025/10/19 06:34:35" color="">}}




{{<matomeQuote body="最初のコメントで訂正されててよかった。あれは緑色じゃなくて、俺が使ってたIntelとかnVidiaのドライバーだと濃いマゼンタに見えてたな。ドライバーで設定できるかハードコードされてるかもだけど、ハードウェアで固定じゃないと思うよ。<br>デスクトップコンポジターは、全ウィンドウのグラフィックコンテンツをまとめて、モニターに送るデスクトップ画像を生成するんだ。レイテンシと効率は犠牲になるけどね。" userName="userbinator" createdAt="2025/10/19 02:27:29" color="#38d3d3">}}




{{<matomeQuote body="これ、個人的に覚えてるよ！<br>何が起きてるのか、いつも全然わからなかったんだよな。" userName="jdthedisciple" createdAt="2025/10/19 07:14:35" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
