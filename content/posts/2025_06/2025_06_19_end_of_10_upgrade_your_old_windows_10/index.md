+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'Windows 10サポート終了間近 古いPCをLinuxにアップグレードしよう'
tags = ["Windows 10", "Linux", "サポート終了", "OS移行", "PC"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Windows 10サポート終了間近 古いPCをLinuxにアップグレードしよう

引用元：[https://news.ycombinator.com/item?id=44318420](https://news.ycombinator.com/item?id=44318420)




{{<matomeQuote body="USBメモリとかRufusとか使ってLinuxのインストールメディア作るの、Windowsユーザーにはマジでハードル高いんだよな。Ubuntuみたいにメジャーなやつでも、インストールガイド見ろよこれ（https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overvi...）。普通の人、絶対途中で諦めるって。<br>解決策としてさ、UbuntuがWindowsアプリ出して全部自動でやってくれるようにすればいいじゃん？ISOダウンロード、USBフォーマット、デュアルブート設定とか。ユーザーが使うかWindowsに戻るか分かりやすくさ。" userName="pentagrama" createdAt="2025/06/19 16:29:53" color="#ff33a1">}}




{{<matomeQuote body="＞ Rufusみたいに外部ツールが必要って話だけどさ、UbuntuとかLinux Mintは今balenaEtcherを推してるよ。Rufusより使いやすいって。" userName="p1mrx" createdAt="2025/06/19 16:42:41" color="">}}




{{<matomeQuote body="Emacs見てみろよ、あのままずっと変わんねえ。このエコシステム、何がダメかって言えば200個くらい理由挙げられるわ。<br>ここ15年でUbuntuに5回手出したけど、マジで問題ばっかで、ググるのにクソ時間かかって結局戻ったわ。もうたくさん。<br>WSL2あるから、別にLinuxとかいらねえし。" userName="artemonster" createdAt="2025/06/19 16:33:30" color="">}}




{{<matomeQuote body="そもそも別にインストールメディアとかいらなくね？<br>既存のパーティション縮小して、そこにLinuxのリカバリパーティション作って、そこから再起動してインストールすりゃいいじゃん。<br>てか、Windows上でVMでインストーラー全部動かしちゃって、再起動したらもうLinux環境出来てるとかでもいいし。<br>マジで、USBとか探して買うのだるすぎ。パソコン詳しい俺でも、久々にLinux入れる時以外使わんし、それが既に障壁なんだわ。" userName="jitl" createdAt="2025/06/19 16:34:01" color="#ff5733">}}




{{<matomeQuote body="他にも色々UX良くする方法あると思うわ。<br>BIOS/EFIに入って起動順序いじる手間とかマジで無くしたい。WindowsのAPIでどうにかできんじゃね？<br>あとGRUBさ、あれマジで見た目怖いし、Windowsアップデートでぶっ壊れること多いし、初心者には無理ゲーすぎ。<br>rEFIndとかCloverみたいな見た目良くて、自動で直るようなモダンなやつに替えようぜ。" userName="cosmic_cheese" createdAt="2025/06/19 19:51:25" color="#ff5733">}}




{{<matomeQuote body="WindowsのインストールってVistaの頃から大して変わってねえのに、Linux連中は20年近く何やってたんだ？<br>俺、何年か前にUbuntu入れたらSamsungのノートPCぶっ壊れたんだよ。もう二度とやらん。" userName="dale_huevo" createdAt="2025/06/19 19:21:37" color="">}}




{{<matomeQuote body="＞ GRUBをrEFIndとかCloverに置き換えるって話だけど、GRUBとか要らなくね？<br>OpenSUSEみたいなブート可能なスナップショットとか使わないんなら、ぶっちゃけブートローダーって必要ないんだよ。<br>Linuxカーネルとか必要なもん全部一個の.efiファイルにまとめちまえばいい。<br>そしたらWindowsみたいにUEFIのブートリストに入るだけ。てか、Windowsはアプデで勝手にブート順序書き換えるから、結局他のOSを起動する方法は知っとく必要があるんだし、こっちの方が自然。" userName="bmicraft" createdAt="2025/06/19 21:57:36" color="#ff5c5c">}}




{{<matomeQuote body="Wubiって知ってる？Windows上で動いて、ファイルをインストールするだけでUbuntu使えるようになるやつ（https://github.com/hakuna-m/wubiuefi）。<br>昔はこういうの結構あったんだよね。CD-Rとか無かった時代は、ダウンロードしたLinuxを使うのに外部メディア無くて、パーティション切ってインストールするのが普通だったし。" userName="wat10000" createdAt="2025/06/19 16:44:53" color="">}}




{{<matomeQuote body="＞ UbuntuのインストールでSamsungのノートPCがぶっ壊れたって話、何？<br>どうやって？ インストールでBIOSが壊れるなんて見たことないんだけど。<br>まぁ可能だとは思うけど、何がまずかったのか気になるわ。" userName="const_cast" createdAt="2025/06/19 20:57:42" color="">}}




{{<matomeQuote body="普通のWindowsユーザーも再インストールなんてしないよ。だからこの記事が「手伝ってくれる人を見つけよう」を一番最初の選択肢にしたのは正解だと思うね。ほとんどの人は「ただ動けばいい」って思ってるし、「古いパソコンを引き取って、もっとよく動く新しいデバイスに変えてあげるよ」ってのはすごくいい提案だよ。一番の難点は、今持ってるものを失うのが怖いってことだけど、もう彼らが前に使ってた世代のパソコンでもLinuxを動かせるレベルにはなってるよ。" userName="mindslight" createdAt="2025/06/19 17:06:52" color="#785bff">}}




{{<matomeQuote body="そうなんだけど、どこかからプログラムをダウンロードしなきゃいけないでしょ。これをお母さんにあげたら、絶対間違ったリンクをクリックしてWindowsをウイルスに感染させて、諦めちゃうのが目に見えるね。技術者向けであって、一般の人向けじゃないよ。なんでUbuntuはWindowsみたいなメディア作成ツールを提供しないんだろう？ ddとバッチGUIを組み合わせるの、そんなに難しくないはずなのに。" userName="doublerabbit" createdAt="2025/06/19 16:54:18" color="">}}




{{<matomeQuote body="なんでこんなに複雑なのか全然理解できないな。Linuxなら`cat liveusb.iso ＞ /dev/sdX`みたいに簡単にライブUSB作れるじゃん。Powershellにも同じようなのあると思うし。書き込み先間違えるリスクはあるけど、実際の書き込み作業は超簡単。ISOを埋め込んだWin32実行ファイルにして、ユーザーはダウンロード1つだけで済むようにして、それを実行するだけでUSBメディア作れるようにすればいいのに。" userName="invalidptr" createdAt="2025/06/19 17:02:40" color="">}}




{{<matomeQuote body="これは、独りよがりな技術オタクたちが、ユーザー体験がクソなせいで良いFOSS製品の普及を邪魔してるっていう、かなり分かりやすくて当然の例えだと思ったよ。<br>君が言ってた「VMでLinuxを動かす」ってのは、トラブルなし、ドライバー問題なし、ランダムフリーズなし、再起動なしで常に動くから、全然こっちの方がマシ。" userName="artemonster" createdAt="2025/06/19 18:19:27" color="">}}




{{<matomeQuote body="今どきWindowsの再インストールは超簡単だよ。スタートメニューの項目をクリックするだけで、少し作業があって、既存のリカバリパーティションから再起動して完了。アカウントも復元されて、またログインすればWindowsデスクトップに戻れる。OneDriveが有効になってれば、ファイルも全部そのまま見えるし。" userName="jitl" createdAt="2025/06/19 18:00:00" color="#38d3d3">}}




{{<matomeQuote body="＞ これを解決して、もっと多くの人に乗り換えてもらうための1つのアイデアは、Ubuntuが全てを処理するWindowsアプリを提供すること。バックグラウンドでISOをダウンロードして、USBメモリをフォーマット、デフォルトでWindowsとデュアルブートでインストールして、ユーザーがUbuntuを使い始める方法やWindowsに戻る方法を各ステップごとに分かりやすく説明する。<br>こういうの、15～20年前にCanonicalから出てたはずだと、ほぼ確信してるよ。" userName="heavyset_go" createdAt="2025/06/19 18:34:06" color="">}}




{{<matomeQuote body="Linuxをインストールしてきた僕のこれまでの経験からすると、これはもう驚くほど予想通りだよ（たぶん、インストールが難しいって話ね）。君は今まで信じられないくらいラッキーだったか（もしかしたら僕より5～10歳若いか）だね。" userName="throwaway314155" createdAt="2025/06/20 03:53:39" color="">}}




{{<matomeQuote body="ちなみにFedoraはやってるよ：https://en.wikipedia.org/wiki/Fedora_Media_Writer" userName="i80and" createdAt="2025/06/19 17:02:39" color="#ff5733">}}




{{<matomeQuote body="しかも毎回このヤバい作業（たぶんUSB作成のこと）を通らなきゃいけないなんて、さらに最悪だね。https://blog.balena.io/did-etcher-break-my-usb-sd-card/" userName="7734128" createdAt="2025/06/19 17:14:29" color="">}}




{{<matomeQuote body="君の言う通りだよ、Ubuntuも昔こういうツール（Windows用）をどこかの時点で出してたはずだって、僕は確信できたんだ（コメント28728への同意）。" userName="frollogaston" createdAt="2025/06/19 19:34:04" color="">}}




{{<matomeQuote body="フロッピーが帯域幅より制限的だったって、面白い状況だったんだね。最初のインストールではインストーラーを複数のフロッピーに分けるのが普通だったと思うし、素晴らしいダイヤルアップでも1時間に2枚くらいしか書き込めなかったろうね。" userName="baobun" createdAt="2025/06/20 06:37:41" color="">}}




{{<matomeQuote body="ブートローダー無しで起動時に Windows か Linux か選ぶのどうやるの？ いきなり Linux だけにするのはきついし、ほとんどの UEFI インターフェースがユーザーにとってどれだけ直感的じゃないか忘れてるでしょ（起動時にホットキー連打、遅い UEFI 読み込み待って、起動順序のサブ画面に移動して、正しいメニュー項目見つけて、並べ替えて保存するか F キーの組み合わせで「一度だけ起動」するか）" userName="Macha" createdAt="2025/06/20 08:57:27" color="#38d3d3">}}




{{<matomeQuote body="それって実際にファイルシステムを完全に消してフォーマットするの？ つまりローカルファイルだけだったら、全部消えちゃうってこと？ Start メニューの項目をクリックするだけで？ Windows の「再インストール」が解決策として頻繁に提案されることには驚かないけど、俺はゼロからインストールメディアを作成して再インストールする話をしてたんだよ。" userName="mindslight" createdAt="2025/06/19 18:10:18" color="">}}




{{<matomeQuote body="俺はそんな問題は一度も経験したことないな。2003年から Linux （いろんなディストロ）をインストールしてるけど。" userName="bombela" createdAt="2025/06/20 09:21:33" color="">}}




{{<matomeQuote body="これは Fedora だけじゃなく使えるみたいだね。それでも Ubuntu とか Mint とかのオールインワンインストーラーよりは少し複雑だけど。誰かがこれをフォークして、それにその機能（たぶんオールインワンインストーラーのこと）を追加すべきじゃないかな。" userName="weaksauce" createdAt="2025/06/19 17:05:21" color="#ff5733">}}




{{<matomeQuote body="キーを連打する必要がある MB は一度もなかったな。起動時に押しっぱなしにするだけでメニューが表示されて、マウスかキーボードで起動したいやつを選べた。これは通常、デフォルトの起動順序は変更しない。Linux をインストールできたんなら、これでつまずくはずないんだけどな。" userName="bmicraft" createdAt="2025/06/20 11:02:40" color="#ff5c5c">}}




{{<matomeQuote body="いや、何も完全に吹き飛ばしたりはしないよ。ただ周りにコピーしたり上書きしたりするだけ。だからマルウェア、ウイルス、ルートキットとかも全部保存される。もちろん、ライセンスやコピープロテクションは別だけどね。それは消えちゃうから、インストールIDが再生成されるんで全部買い直さないといけない。" userName="holowoodman" createdAt="2025/06/19 20:45:33" color="#ff33a1">}}




{{<matomeQuote body="少なくとも俺は、キャンパスのアカウントに夜中にフロッピーイメージをダウンロードして、キャンパスのコンピューター室まで歩いて、それらをディスクに書き込んで Linux をインストールしてたよ（フロッピーがある NeXTstation がいくつかあったんだ）。" userName="devilbunny" createdAt="2025/06/20 13:39:29" color="">}}




{{<matomeQuote body="ある時期には、Windows の中に Ubuntu をインストールするやつもあったんだ。<br>https://en.m.wikipedia.org/wiki/Wubi_(software)" userName="andai" createdAt="2025/06/19 19:39:53" color="">}}




{{<matomeQuote body="＞ なんで別メディア必要なんだ？ 既存のパーティションサイズ変更して、代わりに新しい Linux リカバリパーティション作成して、そこから再起動してインストールするか、Windows 上の VM でインストーラー全部実行して、それから完全に動作する Linux システムに再起動すればいいじゃん。<br>これは、（一般のエンドユーザーにとっては）親コメントに比べて全くシンプルな解決策とは言えないよ。" userName="throwaway314155" createdAt="2025/06/20 03:51:24" color="">}}




{{<matomeQuote body="これマジすごいね。手伝えるなら協力したいけど、時間がないな。てか、職場ではWindows 10 PCがアップグレードできなくて困ってるんだ。研究室の大量のPC、Windows専用ソフトとか使ってて、予算もなくて買い替えとかマジ無理すぎる。" userName="etbebl" createdAt="2025/06/19 16:04:26" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ「もしも」じゃなくて確定事項だからね。MSは前からOSのサポート打ち切ってるし、誰も驚かないはずだよ。キミみたいな組織向けに延長サポートもあるから。詳しくはこちら→ https://learn.microsoft.com/en-us/windows/whats-new/extended-security-updates" userName="p_ing" createdAt="2025/06/19 16:11:37" color="#785bff">}}




{{<matomeQuote body="MSは今までEOLで①前より使われてたOS、②後継が一つ、③当時使ってたハードを後継がサポートしない、なんてことやったっけ？まあやるだろうけど、マジふざけんな！Raymond Chenみたいな良心はもう死んだんだな。詳しくはこちら→ https://www.joelonsoftware.com/2004/06/13/how-microsoft-lost-the-api-war/" userName="anonymars" createdAt="2025/06/19 16:38:41" color="#45d325">}}




{{<matomeQuote body="シスアドなら、システム組むときにOSのアップグレードのこと考えとけよ、って普通思うだろ？" userName="karmakurtisaani" createdAt="2025/06/19 19:31:18" color="">}}




{{<matomeQuote body="正直さ、Windows 10は「最後のOS」って宣伝されてたんだから、OS選ぶときにそれ考慮した人のせいじゃないって。MSが手のひら返したのが悪いでしょ。" userName="amflare" createdAt="2025/06/19 19:37:20" color="">}}




{{<matomeQuote body="前の質問に答えるね。<br>1. MSはそんなの気にしないってば。PCが豊富になったから？<br>2. 後継が一つはいつもそうだよ。XP→Vista、Vista→7みたいにね。Win9xとNT4があった90年代以降はね。<br>3. Win11はリリース当時のハードはサポートしてる（俺は10から11にできたし）。もし古いハードって言うなら、98/NT4で486サポートなくなった話とか、XP→Vistaで必要スペック上がってグラボ問題とかあったじゃん？これって別に新しいことじゃないんだよ。ピカチュウの顔になってる奴らは、MSの歴史を知らないだけかもね。" userName="p_ing" createdAt="2025/06/19 19:55:31" color="#38d3d3">}}




{{<matomeQuote body="Microsoftは「Windows 10が最後のOS」なんて言ってないし、そう言った開発者エバンジェリストのJerry Nixonを支持もしてないんだよ。" userName="p_ing" createdAt="2025/06/19 19:58:45" color="">}}




{{<matomeQuote body="コメント2のキミへ。それWin7の時と同じ状況だよ。月々の累積アップデートについて、3年間の延長サポートが受けられるし、かなり安いと思うよ。米政府は優遇価格らしい。コンシューマー価格は1年目30ドル、2年目60ドル、3年目90ドルだって。" userName="Hilift" createdAt="2025/06/19 17:05:00" color="#ff5733">}}




{{<matomeQuote body="あの記事（Raymond Chenの）面白いタイムカプセルだね。MS（Windows部門ね）はどんどんAppleやSunみたいになってるわ。最近のユーザー向けOSは2位か3位くらい。新しい開発環境はブラウザ＋JavaScriptが主流で、C#と.NETじゃないね。古いソフトを動かすのはニッチになってきてるし、どんどんそうなると思うよ。" userName="wat10000" createdAt="2025/06/19 16:52:50" color="">}}




{{<matomeQuote body="＞Win10から11に既存のハードウェアでアップグレードしたんだ。＜br＞よかったね。でもTPM 2.0がないせいで、性能的には十分なのにアップグレードできないハードウェアがいっぱいあるんだぜ。" userName="Too" createdAt="2025/06/20 07:10:49" color="">}}




{{<matomeQuote body="君が見てるタイムラインがどういうのか知らないけど、Windows 98は2006年にEOLになった。それまでにはMe、2000、XPがあったし、XPのEOLは2014年で、それまでにVista、7、8があった。ハードウェアの進化が速くて実質的な寿命が短かったのは置いといて、Pentium 233は1997年に出た。XPがEOLになったのは2014年だぜ？ほぼ20年もハードウェアをサポートしてたんだ。うちの家族のPCは2015年とか2017年のやつで、他は完璧なのにW11に対応してない。俺の古いノートPCも、4コア（8 HT）2.6 GHz（3.6 Turbo）CPU、1 TB SSD、16 GB RAMで十分パワフルなのに、ダメなんだよ、Windows 11は無理。" userName="anonymars" createdAt="2025/06/19 21:01:59" color="#ff5c5c">}}




{{<matomeQuote body="彼がそう言った時、彼はMicrosoftの社員で、Microsoftがスポンサーのイベントで話してたんだ。これは役員会以外では最も公式に近いレベルだぜ。その発言は広く知られてたから、ほとんどの人が知ってたんだ。Microsoftにはその件について記録を訂正する機会が何年も、何度もあったのにしなかった。だから、その発言は本当だと見なされてるんだ。" userName="theandrewbailey" createdAt="2025/06/19 23:38:57" color="">}}




{{<matomeQuote body="そして、Secure BootやTrusted Platform Module 2.0がないWin10対応ハードウェアにWin 11をインストールするために、これらのチェックをバイパスする方法を公開してるWindows Insiderがいっぱいいるんだ。2021年のこの記事（https://christitus.com/update-any-pc-to-windows11/）から始まって、多分今ではChris Titus’s WinUtilに統合されてるだろうね。レジストリの値をちょっと変えたり、DLLのサイズをゼロにしたりする組み合わせで、これまではうまくいってるよ（でも、今後のアップグレードやパッチでどうなるかは分かんないけど）。" userName="defrost" createdAt="2025/06/20 07:21:17" color="#45d325">}}




{{<matomeQuote body="ああ、Satya Nadellaは「cloud first, mobile first」って戦略を打ち出したね。彼や投資家にとってはいいことだけど、毎年テクノロジーでできることがどんどん減ってる気がして、これはおかしいぜ。何をするにもものすごく労力がかかるようになったのは、全部小さなタッチスクリーン向けに設定されてるからだよ。そして、MSスタックで開発してる者として、バージョンと依存関係地獄に対処するのに、どれだけ多くの時間を費やしてるか…。趣味のプロジェクトはもう諦めたよ。だって、数時間時間ができても、アップデートするか非推奨になったものに対応するかで全部終わっちゃうレベルだったんだ。Joelの記事を読み返して気づいたこと一つ：彼が挙げたあのピカピカの新しいAPI、実際ほとんどどれも普及しなかったね。そして、UIフレームワークの分断についても彼は的を射てた。最近Windows Phoneの話が持ち上がったけど、SDKを何度も変えたり、アプリストア使う特権に金を取ったり（ツールはタダでくれるって言ってたのにね）とか、同じテーマがいっぱい出てきたんだ。問題の一部は、Appleは何とかしてこういうことをやってのけるのに、Microsoftには人を洗脳してクソみたいな目に遭わせてもそれを好きにさせるようなマーケティング力がないことだと思う。新しいApple製品買うのは、新車をディーラーに買いに行くのとは違って、ポジティブな体験にするために彼らは頑張ってるからかもね。https://news.ycombinator.com/item?id=44272078" userName="anonymars" createdAt="2025/06/20 12:01:14" color="#ff5c5c">}}




{{<matomeQuote body="知らないかもしれないけど、今ならWindows 11のアップグレードでハードウェア要件を強制的に無視できるんだ。これでサポート対象外のPCでもWindows 11のアップデートを受け取れるけど、これは長期の公式サポートが必要な商業ユーザーにとっては現実的な選択肢じゃないね。Windows 10が10月に終わるのに、GUIがほぼない無料のMicrosoft Hyper-V Server 2019が2029年まで延長サポート（セキュリティアップデート）を受けられるのはマジで驚きだよ。古い機器を再利用するために、多分パッチ当てた＼スリップストリームのインストーラーを組み立てるだろうな！" userName="password4321" createdAt="2025/06/19 19:37:38" color="#38d3d3">}}




{{<matomeQuote body="＞研究室で10s of 1000s＜br＞そこにいたよ。研究機器は普通、珍しい特殊な非コンシューマー（高価な）電子機器で、関係するPCはもちろんだが、その真逆で、何をやっても安価な事務用PCなんだと推測するよ。そしてWindowsはおまけでついてくる。当然、IT部門はOSが変わるのに追いつくのがやっとだし、事務用PCの技術者以外のユーザーの割合は天井知らずで、Windowsが全く変わらなくても骨の折れる問題が山積みなのに、研究施設が必要とするものなんて決して手に入れられないだろう。テクノロジーはそこにある、ただIT部門のサポート体制にギャップがあるだけだ。" userName="fuzzfactor" createdAt="2025/06/20 05:48:39" color="">}}




{{<matomeQuote body="願わくば、これが十分人気になって、SteamやMozillaとかが、あと数年Windows 10のサポートをやめないといいな。" userName="cosmicgadget" createdAt="2025/06/19 18:01:27" color="">}}




{{<matomeQuote body="ああ、そうなんだ、知らなかったよ。なんて奇妙な約束なんだろうね…。" userName="karmakurtisaani" createdAt="2025/06/19 19:46:43" color="">}}




{{<matomeQuote body="いつでもLTSCのラインに切り替えられるよ。LTSC IOTを使ってるけど、結構いいね。" userName="nwellinghoff" createdAt="2025/06/19 18:16:19" color="#38d3d3">}}




{{<matomeQuote body="Windows 10のサポート終了について、Microsoftのアナウンスが下手すぎたって話だね。ハッキリしたのはWindows 11を発表した時くらいじゃない？" userName="kbolino" createdAt="2025/06/19 23:14:44" color="">}}




{{<matomeQuote body="リンクありがとう、忘れてたよ。うちの大学の公式方針では、2025年以降はWindows 10サポートなし。でも、個々の研究室の機器アップグレード費用をどうするかの計画がないんだよね。ESUパッケージを個別に買えるかもだけど、ソフトライセンス担当が対応してくれるか分かんないや。" userName="etbebl" createdAt="2025/06/20 01:14:10" color="#38d3d3">}}




{{<matomeQuote body="Windows 11の要件って、スピードだけじゃなく命令セットも必要だよって話。<br>TPMとか特定のモデルがないと駄目。TPM自体は7年くらい前の古い技術だけどね。新しいOSには新しいハードが必要ってこと。" userName="p_ing" createdAt="2025/06/20 16:10:02" color="#38d3d3">}}




{{<matomeQuote body="解決策は単純だよ、そういう古いPCはアップグレードしないことだね。仕事で大事なパソコンは、アップグレードしたり実験したりするべきじゃないんだ。" userName="carlosjobim" createdAt="2025/06/19 21:25:42" color="">}}




{{<matomeQuote body="新しいPCを買うのに比べたら、それはそんなに悪くないと思うよ。俺はWindowsユーザーじゃないけど、比較的新しいPCの寿命をあと3年延ばすのに$180払うのは、価値があるんじゃないかな。" userName="em-bee" createdAt="2025/06/19 17:13:12" color="">}}




{{<matomeQuote body="いや、正確には違うんだよね。それらは基本的にゲーミングPCで、IT部門とは別に自分たちで買って管理してるんだ。特定の計算が必要だからね。そういうやり方は可能だし、結構普通だと思うけどな。" userName="etbebl" createdAt="2025/06/20 12:22:06" color="">}}




{{<matomeQuote body="Microsoftに「Fワード」を。Windows Mixed RealityヘッドセットをOSの途中で使えなくするなんて前代未聞だろ。Microsoftは環境気にしてるフリして、またゴミを増やすんだ。幸い、redditのこのリンク先↓には希望があるかもね。<br>https://www.reddit.com/r/WindowsMR/comments/1l65ji8/things_a...<br>Microsoftみたいなリソースが限られた企業じゃ、誰かが個人的に何とかしないといけないなんて情けない話だよ。" userName="anonymars" createdAt="2025/06/20 11:43:49" color="#ff5733">}}




{{<matomeQuote body="新しいPCが買えない人は、きっと有料アップデートとか気にしないで古いPCを使い続けるだろうね。一部の会社は、特定のWindows 10のマシン用に延長サポートを買うかもだけど。パソコンは安いんだからさ！" userName="ponector" createdAt="2025/06/19 20:03:49" color="">}}




{{<matomeQuote body="きっとオフィスにある普通のパソコンには（ESUを）提供しないだろうね。研究室みたいな特別なところだけだと思うよ。" userName="anticensor" createdAt="2025/06/20 05:15:08" color="">}}




{{<matomeQuote body="Microsoftはホント大量のWindowsバージョンを色んなレベルでサポートしてて、絶対それぞれに割けるリソースに影響してると思うんだよね。ServerとかLTSC（IoT）向けのがマシなんだろうけど、あれもあれでめんどいし。<br>でも、ソフトのサポートが切れるたび3〜4年ごとにクリーンインストールしなきゃいけないより、俺はCandy CrushとかOneDriveの広告を見せられる方がイヤだな。" userName="SpecialistK" createdAt="2025/06/20 06:59:03" color="">}}




{{<matomeQuote body="このサイトは素晴らしいんだけど、普通の人が最初につまずくのは、「Linux distribution」って言葉を知らないこと。たとえ知ってても、どれを選べばいいかおすすめがないのが問題だよ。<br>たとえUbuntuとかを勧めるとしても…OSとカーネルが別物だって考える人はホント少ない。ハードとソフトの分離だって十分ややこしいのにさ。<br>誰かが口出しするんじゃなくて、「Linux」っていうペンギンブランドのOSがマジで存在すればいいのにね。" userName="frollogaston" createdAt="2025/06/19 19:39:37" color="#38d3d3">}}




{{<matomeQuote body="いや？<br>誰も公式Linux OSを作るとか主張したら、コミュニティ全体を敵に回すに決まってるじゃん。<br>それに、平均的なユーザーがLinuxを使う必要なんてないし。もし開発者がWindows 10からLinuxに移るなら、そっちの方がよっぽど影響デカいって。" userName="kattagarian" createdAt="2025/06/19 19:45:32" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="このサイトは一般ユーザー向けっぽいじゃん。開発者なんてそんな多くないし、たとえ開発者だって「動けばいい」って思ってるもんだよ、時間はお金だからね。<br>「公式Linuxカーネル」があることに誰も怒ってないってのはその通り。そりゃLinus Torvaldsが決めることだし、彼が公式OSを指定することに興味がないのも理解できる。これが今の状況の原因なんだよ。" userName="frollogaston" createdAt="2025/06/19 20:00:15" color="#38d3d3">}}




{{<matomeQuote body="＞公式Linuxカーネルがあることに誰も怒ってないってのはその通り。<br>だってLinus Torvaldsが文字通り全部の生みの親だからだよ。「公式」っていう言葉、オープンソース界隈じゃあんまり意味ないんだよね。例えばyt-dlpはyoutube-dlから動画ダウンロードの王冠を奪ったけど、yt-dlpは「公式」なの？「公式」って一体何を意味するんだ？<br>あと、多くの開発者が「動けばいい」って思ってるのは全然いいこと。Windowsが改善しないどころか、ユーザー体験を悪化させるような直接的な行動を取ってることに、みんな少しずつ気づいてきてる。Linuxが良くなってるだけじゃなくて、Windowsも悪くなってるせいで、Linux有利にバランスが傾いてきてるんだよ。" userName="kattagarian" createdAt="2025/06/19 22:09:04" color="#785bff">}}




{{<matomeQuote body="それだけじゃ十分じゃないよ、LinuxにはWindowsに匹敵するような何かがないから。Microsoftはユーザーを完全にブチギレさせない程度にうまくやるってやり方を続けてる。少なくともVistaの頃からずっとそうだよ。" userName="frollogaston" createdAt="2025/06/19 22:21:56" color="">}}




{{<matomeQuote body="あのサイト、全ユーザーを狙ってるわけじゃないでしょ。<br>でも、他の人より好奇心旺盛な人もいるし、そういう人なら「ディストリビューション」って言葉の意味を理解できる可能性は高いよ。" userName="prmoustache" createdAt="2025/06/20 06:49:06" color="">}}




{{<matomeQuote body="でも俺はUbuntuは勧めないな。<br>Linuxの最大の欠点の一つは、一般人向けの簡単でユーザーフレンドリーで、バカでも使えるディストリがないことだと思ってるんだけど、Ubuntuはただの壊れた企業のカス（slop）だよ。<br>前の仕事で「自分で自分を壊すユーザーを救う」役回りだった時、Ubuntuユーザーは100％俺の悩みの種だった…全員サーバーの顧客だったんだけど、俺のアドバイス聞いてDebianに乗り換えてくれた人たちは、元々どんな問題抱えてたとしても、突然トラブル起こさなくなったんだよね。<br>俺にとって、Ubuntuは単にDebianを企業向けに無理やり「aggressive」に変えちまっただけなんだよ。" userName="DiabloD3" createdAt="2025/06/19 20:19:19" color="#ff33a1">}}




{{<matomeQuote body="正直、俺もUbuntuよりDebianが好きだけど、問題はDebianもダメだ、LinuxMintを使うべきだとか言う人も同じくらいたくさんいるってことなんだよ。「お前の用途による」っていうの、マジでイライラするんだよな。PCユーザーの99.99%が同じ基本的なことやろうとしてるのにさ（サーバーは違うけど、それでも90%は同じ？）。<br>何か受け入れられる、あまり変わらないデフォルトが必要だよ。たとえそれが最高じゃなくてもさ。Ubuntuはオリジナルのデスクトップ環境で全然問題なかったのに、2回も変えやがったし。WindowsのUIはこの時点でもうワザと悪くしてるけど、少なくとも安定はしてる。" userName="frollogaston" createdAt="2025/06/19 20:21:47" color="#785bff">}}




{{<matomeQuote body="WindowsのUIってわざと使いづらくしてるみたいだけど、安定はしてるんだよね。昔はUIって結構変わったけど、今はWindowsキー押してもアプリメニューじゃなくてウェブ検索しか出ないし。プログレスバーの％も嘘ばっかだしさ…。Windows 2000、XP、Vista、7、10、11ってバージョンごとに大きく変わったのにね。" userName="holowoodman" createdAt="2025/06/19 20:42:48" color="">}}




{{<matomeQuote body="昔Windows 2000をよく使ってたけど、その後のバージョンも大して違いを感じなかったな。すぐ使えたよ。でも、Linuxのデスクトップは久しぶりに会社のやつにログインしたら、ボタンとか設定場所が全部変わっててびっくりした。Windowsキーはちゃんとスタートメニュー開くと思うけど、広告とかゴミが増えただけじゃない？" userName="frollogaston" createdAt="2025/06/19 20:46:40" color="">}}




{{<matomeQuote body="Windowsキーはまだ使えるよ。でも、昔あった「プログラム」っていうサブメニューはもうないんだよね。今は検索するしかない。Windowsアップデートってマジでサポートの悪夢なのに、みんな当たり前だと思って痛みを忘れてる。Linuxのデスクトップ環境がちょっと変わっただけで、みんな大騒ぎなのにね。MicrosoftはStockholm Syndromeで許されてるんじゃないかって思うわ…。" userName="holowoodman" createdAt="2025/06/20 05:58:08" color="">}}




{{<matomeQuote body="デスクトップ環境の変更はIT部門の選択でもあるけど、Linuxの状況で仕方なくもあるんだよね。他の会社がWindowsを好む理由もわかるよ。うちはソフトウェア会社でWindowsソフトは作らないのに、LinuxノートPCはドライバ問題でMacに切り替えてるし。Mac持ってなかったらLinux使うだろうけど、それはWindowsが嫌いってだけで、合理的かって言うとそうじゃないんだよね。" userName="frollogaston" createdAt="2025/06/20 16:24:10" color="">}}




{{<matomeQuote body="Fedoraはもう「普通のやつにもバカでも使える」レベルになってるよ。" userName="herbst" createdAt="2025/06/20 08:26:37" color="">}}




{{<matomeQuote body="「Linux 初心者」で検索したら、Kali Linuxとか変なのが出てきて、結果めちゃくちゃなんだよね。まあ今はChatGPTに聞けばいいか（笑）。冗談はさておき、初心者にはUbuntuかPop!_OSを推しとけば間違いないと思うよ。" userName="k_bx" createdAt="2025/06/21 07:31:42" color="">}}




{{<matomeQuote body="Linuxでゲームのアンチチートが動けばいいのにってマジ思うわ。Windowsはもうめちゃくちゃだし、検索機能はまともに使えないし、どこもかしこも広告だらけでさ。" userName="bearjaws" createdAt="2025/06/19 15:37:33" color="">}}




{{<matomeQuote body="Linuxのディストリビューションは、アンチチートが使えるAPIを作るように頑張るべきだよ。そうすればKernelドライバーのStable ABI問題も避けられる。macOSのVanguardを見れば、セキュリティが十分ならKernelモードのアンチチートは必要ないってわかるしね。Linuxがセキュリティで競争力を持てれば、Kernelモードは要らなくなるはず。まあ、実現するとは思ってないけど。" userName="charcircuit" createdAt="2025/06/19 15:50:19" color="#ff5c5c">}}




{{<matomeQuote body="「LinuxデスクトップOSはソフトウェアの供給チェーンの整合性でWindowsよりセキュリティ的に優れてる」ってのは違うよ。xzバックドアを見ればわかるし、セキュリティは供給チェーンだけじゃない。「Windowsが独自のソフトウェア発行者の意向をユーザーの自由より優先してる」ってのも違うんじゃない？Microsoftは開発者だけでなくユーザーのことも気にかけてるよ。Freedom 0とか1の侵害って言うけど、チートして他のプレイヤーと対戦する自由は保証されてないよ。クライアントを自由に改造する権利と、それを使って他人とプレイする権利は別だよ。" userName="treyd" createdAt="2025/06/19 16:30:45" color="#ff33a1">}}




{{<matomeQuote body="「LinuxデスクトップOSはソフトウェアの供給チェーンの整合性でWindowsよりセキュリティ的に優れてる」ってのは違うよ。xzバックドアを見ればわかるし、セキュリティは供給チェーンだけじゃない。「Windowsが独自のソフトウェア発行者の意向をユーザーの自由より優先してる」ってのも違うんじゃない？Microsoftは開発者だけでなくユーザーのことも気にかけてるよ。Freedom 0とか1の侵害って言うけど、チートして他のプレイヤーと対戦する自由は保証されてないよ。クライアントを自由に改造する権利と、それを使って他人とプレイする権利は別だよ。" userName="charcircuit" createdAt="2025/06/19 16:50:07" color="#ff5733">}}




{{<matomeQuote body="Linuxはリポジトリから、Windowsは野良exeでソフト入れるからWindowsはマルウェアだらけなんだよ。Windowsは企業ばっか見てて、ユーザーの自由は無視する。<br>ゲームのアンチチートがユーザーの自由を侵害してるって言ってるんだ。" userName="const_cast" createdAt="2025/06/19 21:10:18" color="">}}




{{<matomeQuote body="ユーザーの選択の自由をなくさずにどうやるの？<br>クライアント側のアンチチートって、結局は「隠すことで安全にする」ってやり方でしょ。" userName="frollogaston" createdAt="2025/06/19 19:45:30" color="">}}




{{<matomeQuote body="「ユーザーの選択の自由」って言うけど、今Linuxでゲームできない方が選択肢ないでしょ。Linux対応すれば選択肢が増えるじゃん。<br>隠すことで安全にする、ってやり方も、アンチチートにはチーターを遅らせる効果があるんだよ。" userName="charcircuit" createdAt="2025/06/19 20:46:55" color="">}}




{{<matomeQuote body="セキュリティの話だけど、ほとんどのLinuxユーザーはサイトが apt repo 追加しろとか curl ... | bash って言ってもあんま気にしないと思うな。普通にインストールする方法だから。" userName="frollogaston" createdAt="2025/06/19 22:43:20" color="">}}




{{<matomeQuote body="他の人も言ってるけど、Linuxはユーザーがシステム全部をコントロールできるのが基本。<br>この手のアンチチートは、ユーザーが触れない部分をカーネルに入れないと無理。<br>セキュリティ・バイ・オブスキュリティが悪いとは言わないけど、Linuxはユーザーからシステムを隠すものじゃないんだよ。" userName="frollogaston" createdAt="2025/06/19 20:51:55" color="#785bff">}}




{{<matomeQuote body="ほとんどのLinuxユーザーは気にするよ、それは普通じゃないやり方だね。99%は公式リポジトリから入れるし、curl ... | bash は開発者しかやらないよ。Windowsのソフトはほとんどがこのやり方で入れてるけどね。Windows Storeはダメ。" userName="const_cast" createdAt="2025/06/19 22:56:11" color="#785bff">}}




{{<matomeQuote body="特にどのゲーム？<br>結構な数のオンラインゲームは問題なく動いてるけど。" userName="omnimus" createdAt="2025/06/19 15:49:02" color="">}}




{{<matomeQuote body="Linuxがちゃんとしたアンチチートをサポートできない理由はないよ。rootkitとかexploitを拒否してるだけ。<br>特定のアンチチートが動かないのは、作った会社がLinuxをサポートしないせいだね。彼らはユーザーのセキュリティを気にしてない。<br>それはおかしいから、買うのやめようぜ（財布で投票）。" userName="zeta0134" createdAt="2025/06/19 16:24:09" color="#ff5733">}}




{{<matomeQuote body="「ユーザーがシステム全部をコントロール」って言うけど、みんな標準カーネル使ってるよね。カスタマイズと安全は両立できるし、ゲームはセキュアなVMで動かすとか。<br>アンチチートじゃなくて証明（attestation）の話だけど、安全を保証するにはユーザーが変えられない部分は必要。<br>Linuxは隠さないけど、安全性の証明に難読化はいらないよ。" userName="charcircuit" createdAt="2025/06/19 21:13:22" color="#ff33a1">}}




{{<matomeQuote body="もしWindowsが急に人気なくなったら、ゲーム作る側はユーザーのカーネルにヤバいものを入れなくてもアンチチート作る方法を考えなきゃいけなくなるかもね。" userName="mystified5016" createdAt="2025/06/19 16:21:25" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
