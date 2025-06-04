+++
date = '2025-05-28T00:00:00'
months = '2025/05'
draft = false
title = 'Electron製MacアプリをRustで書き換え！'
tags = ["Electron", "Rust", "Mac", "アプリ開発", "プログラミング"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> Electron製MacアプリをRustで書き換え！

引用元：[https://news.ycombinator.com/item?id=44118023](https://news.ycombinator.com/item?id=44118023)




{{<matomeQuote body="最近ね、逆のことしたんだよ（Tauriで始めてElectronに移行）。プラットフォームによって使ってるWebViewのレンダリングが違ってイライラしたからなんだよね．．．移行してからクロスプラットフォームでUIバグに遭遇した？<br>あんたのUIの要件はかなりシンプルで、計算が複雑みたいだから、QAの追加コストを考えても割に合うんだろうね．．．ただ、俺の経験が珍しかったのか、それともレンダリングの違いって俺が感じたほどよくあることなのか、気になってさ。<br>あと、Tauri 2．0を使ったの？それとも1．0？V1の途中で2．0の最初の安定版が出たんだけど、移行が悪夢でドキュメントがひどかったんだよ．．．ドキュメントは整備されたのかな？" userName="yojo" createdAt="2025/05/28 17:13:59" color="#ff5c5c">}}




{{<matomeQuote body="Tauriでのレンダリングの違いへの対応って、普通のWebアプリ作る時より難しくないんじゃないの？" userName="mort96" createdAt="2025/05/28 17:36:10" color="">}}




{{<matomeQuote body="Electronはアプリにchromeをバンドルするから、一つのレンダリングエンジンだけ扱えばいいんだよ．Tauriはアプリをインストールしたシステム上のデフォルトブラウザを使うんだ" userName="logankeenan" createdAt="2025/05/28 17:39:37" color="">}}




{{<matomeQuote body="知ってるよ．俺が言いたいのは、Tauriは普通のWebアプリ開発よりも物事を難しくしてるわけじゃないってこと．クロスブラウザで動くWebアプリを作るのって別に新しくて怖いことじゃないでしょ" userName="mort96" createdAt="2025/05/28 17:45:52" color="">}}




{{<matomeQuote body="実はまだTauri版ではクロスプラットフォーム対応を展開してないんだよ．だからこれからどうなるか様子見だね．幸い、俺たちのUIの要件はシンプルなんだ．Tauriでどんなレンダリングの違いを見たの？一番良かった／悪かったプラットフォームはあった？次はWindowsもサポートしたいと思っててさ．<br>Electron版のアプリでは、Intelチップ搭載のMacでバンドルしたバイナリを実行するのに問題があったんだ．それで頭を悩ませたから、Tauriで再構築するにあたっては、他のプラットフォームをサポートする前にまず一つのプラットフォーム（Appleチップ搭載のMac）に集中しようって決めたんだ．<br>Tauri 1．4を使ったんだけど、今のところ問題ないよ．2．0への移行のドキュメントをチェックして、どんな感じか見てみる必要があるね．" userName="katrinarodri" createdAt="2025/05/28 17:30:41" color="#ff5733">}}




{{<matomeQuote body="新しくも怖くもないけど、”俺のマシンで動けばどこでも動く”に頼るよりは、時間やお金がずっとかかるんだ．<br>俺は大規模な消費者向けWebアプリで働いたことがあるけど、そこには専任のQAチーム（や外部の協力会社）がいて、複数のプラットフォームやブラウザバージョンで視覚的回帰テストを実行してたんだ．ソロ開発者としては、趣味プロジェクトでそんなチームになる気は全然ないね．だから俺にとってTauriとのトレードオフは、”明らかなUIバグを出荷するのを許容する”か、”肥大化したバイナリを出荷するのを許容する”かだったんだ．<br>フォーラムで読んだアネクドートによると、200MB余計にかかることに対して大騒ぎするのはHNの読者くらいらしいし、俺のアプリは彼らをターゲットにしてないんだよ．" userName="yojo" createdAt="2025/05/28 18:01:07" color="#45d325">}}




{{<matomeQuote body="いや、WebkitGTKは問題児で有名だよ．" userName="Klonoar" createdAt="2025/05/28 17:38:41" color="">}}




{{<matomeQuote body="＞ 最近ね、逆のことしたんだよ（Tauriで始めてElectronに移行）．プラットフォームによって使ってるWebViewのレンダリングが違ってイライラしたからなんだよね．．．<br>これが俺たちのTauriに関する一番の不満なんだ．OS提供のシステムWebViewは、開発の基盤として安定してて、再現性があって、一貫性があるプラットフォームじゃないんだよ．<br>Tauriは、アプリにブラウザランタイムをバンドルしないことをプラットフォームの主要なセールスポイントにした．代わりに、オペレーティングシステムのブラウザランタイムを使うことになった．各OSで違うランタイムだ．<br>紙の上では良さそうだけど、それが俺たちにとっては大きな頭痛の種になった．SafariやEdgeはすごく気難しくて非標準的な挙動をするし、それが最悪なんだ．ブラウザ機能が頻繁に壊れる．タイトなシステムサンドボックスとCORSの挙動（ブラウザごとに違う）の間で、とにかく奇妙な方法で動作してるのに、微妙な違いが積もり積もって死に至るんだ．そしてそれが止まらないように見える．これらはCSSのパディングみたいな小さな問題じゃなくて、本格的なアプリの挙動の破壊なんだ．”caniuse．com”でさえ、組み込みWebViewとの互換性マトリックスについては間違ってる．（※以下、テストの手間、Rustは良いけどシステムWebViewは悪い決定、Chromeをバンドルしたい、容量より時間が大事、開発者は読んでほしい、コミュニティ全体の意見だ、という内容が続くが200字以内のため要約）<br>俺たちはRustに惹かれてTauriを選んだけど、システムブラウザランタイムは本当にひどい決定だった．<br>Tauri開発者たちはこの不満を聞いてるけど、残念ながら彼らの解決策はServoのサポートをロードマップに入れることだ．それは1000％間違った修正だ．Servoはまだ製品レベルのプラットフォームじゃない．俺たちはただChromeが欲しいだけなんだ．<br>アプリに最新のchromeをバンドルさせてくれよ．小さいプログラムやインストーラーサイズで誰かの頭痛を救ってるわけじゃない．ゲームはすでに巨大だし、みんな許容してる．たくさんのソフトウェアが大きい．それは受け入れられてるし、大丈夫、普通なんだ．俺たちにはたくさんのスペースがあるけど、たくさんの時間はない．それが本当のトレードオフだ．<br>俺はRustを使いたい．Chromeを使いたいんだ．<br>Tauri開発者がこれを読んでくれることを願ってる．これは俺一人からの意見じゃない．コミュニティ全体のコンセンサスだ．<br>組み込みWebViewはTauriのセールスポイントじゃない．Rustなんだ．" userName="echelon" createdAt="2025/05/28 20:01:38" color="#ff5c5c">}}




{{<matomeQuote body="俺はWeb開発者で、TauriやElectronはまだあまり使ったことがないんだ．<br>なぜプラットフォーム間でレンダリングの違いがそんなに問題になるのか疑問に思ってるんだよね？Webアプリを構築する時も同じ課題に直面するから、そんなに変わらないんじゃないかと思ってたんだ．" userName="krisknez" createdAt="2025/05/28 17:28:56" color="">}}




{{<matomeQuote body="Tauriが使うWebkitGTKって、WebアプリのユーザーのWebブラウザが使うWebkitGTKより悪いものなの？" userName="mort96" createdAt="2025/05/28 17:46:51" color="">}}




{{<matomeQuote body="いや、でも誰も（一次近似で）Gnome webなんて使ってないっしょ。WebKitGTKのせいで大半のJavaScriptウェブアプリはあのブラウザで動かないと思うよ。人気のGnomeディストリビューションは全部Firefoxが最初から入ってるから、「とりあえずデフォルト使っとこ」って人もGnome webは使わないだろうね。" userName="porridgeraisin" createdAt="2025/05/28 18:00:44" color="">}}




{{<matomeQuote body="ぶっちゃけChromeOSプラットフォームだけ残ればWebはずっと良くなるんじゃない？ 標準とか複数ベンダーとか、誰が要るんだよって話。" userName="pjmlp" createdAt="2025/05/28 19:31:05" color="">}}




{{<matomeQuote body="開発者にとっては支配的なオープンソースブラウザエンジンがある方が断然楽だよ。オープンソースってこういう標準とか複数ベンダーの必要性を減らしてくれるんだよね。Linuxがどうやって大量のUNIXを置き換えたか見てみなよ。みんなで一つのプロジェクトに貢献できて、必要に応じてカスタマイズできるってのは成功したモデルだってことだよ。" userName="charcircuit" createdAt="2025/05/28 21:25:17" color="#ff33a1">}}




{{<matomeQuote body="「追加の200MBに騒ぐのはHN読者だけ」って意見あるけど、ユーザーはElectronアプリ多数でRAMが常にパンパンなことに気づく？ Electronの批判は単にバイナリが大きいだけでなく、みんなが過剰にRAM使うアプリ作ってることなんだよ。" userName="Capricorn2481" createdAt="2025/05/28 18:07:41" color="#38d3d3">}}




{{<matomeQuote body="Kreya.appでシステムWebViewを使ってるよ（Tauriじゃなくてカスタム実装だけどね）。プラットフォームの違いはめったに問題にならないな…。Polyfillsでほとんど解決するし、Linuxで自動のエンドツーエンドテストを走らせてるから大半の問題はこれで捕まる。個人的には一番難しいのは、特にLinuxとmacOSで、ユーザーのWebViewバージョンがどれくらい古いかを把握することだと思う。WindowsはWebView2の実装でうまくやってるね。" userName="CommonGuy" createdAt="2025/05/28 18:17:36" color="#785bff">}}




{{<matomeQuote body="BSDの人たちがどう思ってるか聞いてみなよ。単一文化は最高さ、ただしそれが俺たちが賭けたやつならね。" userName="pjmlp" createdAt="2025/05/29 04:45:03" color="">}}




{{<matomeQuote body="Electronの売りは、開発に使ったChromeのバージョンがアプリと一緒に配布されること。自分のマシンで正しく見えれば、実行する誰のでも正しく見えるってわけだ。これはWeb開発みたいに、どのブラウザやバージョンをテスト・サポートするか決めるよりずっと楽だよね。<br>TauriはChromeをアプリにバンドルしないからバンドルサイズはすごく小さくなる。でもそのトレードオフとして、デフォルトのWebViewブラウザでレンダリングすることになる。MacだとSafari（macOSのバージョンによる）、Windowsだと最近のEdgeだね。Tauriにはこれを細かく説明したいいページがあるよ: https://v2.tauri.app/reference/webview-versions/<br>これはつまり、新しいOSが出るとアプリの見え方が変わる可能性があって、ユーザーはアプリをアップデートしなくてもUIバグが出るってことだね。" userName="yojo" createdAt="2025/05/28 17:47:06" color="#ff5733">}}




{{<matomeQuote body="まあ、オープンソースだったおかげで、ニッチなOSでも互換レイヤーとかLinuxドライバー経由でLinuxソフトを動かせるようになって、むしろ良くなったってわけだね。" userName="charcircuit" createdAt="2025/05/29 05:26:08" color="">}}




{{<matomeQuote body="それは確かにそうだね。私のアプリ（そして多分元の記事のアプリも）は、それがユーザーの現在の焦点かつ優先事項であって、タスクが終わったら終了されるものだと想定して作られてる。こういう主要なアプリのために結構な量のRAMを要求することについては悪くないと思ってるけど、もしバックグラウンドツールとか小さなユーティリティを出荷するなら考え方は違うだろうね。" userName="yojo" createdAt="2025/05/28 18:13:56" color="#ff33a1">}}




{{<matomeQuote body="でもさ、Tauri使ってるならウェブアプリは自分でコントロールできるんでしょ。ってことはWebkitGTKでもテストする必要があるってこと？ それが追加の負担ってことなの？" userName="oblio" createdAt="2025/05/28 18:54:36" color="">}}




{{<matomeQuote body="Microsoftって結局正しかったんだね，訴訟とかマジ金の無駄じゃん，モノカルチャー最高！<br>ゲーム開発者がWindowsばっか気にしてるのも同じでしょ，Protonはオープンソースだし別にいいじゃん，気にする必要なくなくない？" userName="pjmlp" createdAt="2025/05/29 06:58:06" color="">}}




{{<matomeQuote body="Tauriも全部でうまくいくわけじゃないよ．LinuxのWebkitGTKはパフォーマンス問題あるししょぼい．Slackの開発者がWebviewからChromiumに移った話みたいに，多くのチームが通った道だしElectronがあるのにも理由があるんだよ．（Tauriが皆の言う”聖杯”みたいじゃないってことね）" userName="Klonoar" createdAt="2025/05/28 18:54:34" color="#ff5c5c">}}




{{<matomeQuote body="特にmacOSはアプリを”終了”しない前提で作られてるんだよね．ウィンドウ閉じても裏で動いてる．cmd＋qとかで終了しないと．<br>使い終わったら終了しろって要求するのはUXとして良くない．アイドルでRAM食うElectronも，裏でCPU食うRust UIフレームワークも，多くが抱える問題だね．" userName="mort96" createdAt="2025/05/28 19:38:30" color="#45d325">}}




{{<matomeQuote body="WebkitGTKにデプロイしたことあんの？<br>WebRTCサポートしてないからビデオ会議アプリ”テスト”できるといいね！エラーページテストにはなるかもだけど．<br>これ以外にも機能不足，バグ，ヤバいパフォーマンスの例はたくさん．通知なし，：hasなし，TLAなし．（Epiphany開発者を責めてるわけじゃないけどね）" userName="porridgeraisin" createdAt="2025/05/28 20:06:25" color="#38d3d3">}}




{{<matomeQuote body="unpopular takeだと思うけど，自分でテストできないプラットフォーム向けのバイナリ出すの，マジ疑問．理解できない複雑さとか，デバッグ能力の限界とか考えると，ユーザーは不満だろうし有料アプリなら購入に繋がりにくいし解約されやすいでしょ．唯一のメリットはマーケティングページにアイコンが増えるくらい．" userName="cosmic_cheese" createdAt="2025/05/28 19:32:35" color="#ff5c5c">}}




{{<matomeQuote body="Tauri 2．0に移行すれば，もしかしたらパフォーマンス面でもっとメリットあるかもよ．特に大量のデータを動かすときに，JS－Rust bridgeがめっちゃ強化されたからね．" userName="M4v3R" createdAt="2025/05/28 19:11:32" color="">}}




{{<matomeQuote body="＞モノカルチャー最高<br>ブラウザこそがプロダクト．OSSエンジンは新規参入障壁下げる．<br>＞ゲーム開発者がWindowsばっか気にしてんのも一緒，Protonオープンソースだし別にいいじゃん<br>だからValveは開発者にWindowsターゲット＆Proton推奨．単一プラットフォームの価値はデカい．前はLinuxにひどいポート作ってたしね．<br>Electron／Tauriは主導実装がクローズドで高機能な点で状況が違うけどね．" userName="charcircuit" createdAt="2025/05/29 07:43:12" color="#ff5733">}}




{{<matomeQuote body="単純な事実として，同じUIを複数のOSで出すのはいくつかのOS（もしかしたら全部？）にとっては明らかに間違ってるんだよ．<br>WebベースのクロスプラットフォームUIツールキットは，基本的なUI慣習さえ間違えるからね．" userName="wtallis" createdAt="2025/05/28 20:50:14" color="">}}




{{<matomeQuote body="UI一貫性のためだけにWebアプリじゃなくてElectronアプリ出すこと，わざわざ選ぶ人っている？<br>俺が見たElectronアプリの大半は，公開されてるWebアプリとコード共有してるか（結局クロスブラウザテストは必要），Webじゃできない機能（ファイルシステム権限とか）のためなんだよ．" userName="ameliaquining" createdAt="2025/05/28 19:08:44" color="">}}




{{<matomeQuote body="逆に，うちみたいに複雑なWebアプリだとマジで大きな問題なんだよ．<br>8年も前のMacのWebviewでユーザーバグ対応するの，マジしんどかったし．LinuxのWebkitGTKのパフォーマンスもヤバいしね．" userName="Sytten" createdAt="2025/05/28 22:25:26" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺の代わりに決めつけないでくれよ。俺はアプリが少し違ってても1GBもない方が全然良いね。Tauri使ってる大半の人は君みたいな問題抱えてないと思うよ。そもそもなんでそんな問題になったのか分からんし。システムWebView使うってサイトにデカデカと書いてあるじゃん。フォークの飾りを見て使っといて、先が尖ってるからスプーンにしろって文句言ってるようなもんだよ。" userName="Aeolun" createdAt="2025/05/28 23:18:13" color="#ff5c5c">}}




{{<matomeQuote body="俺も似たことやったよ。Electronで簡単なwebcam viewer作ったら500MBになっちゃって、App Store出すのにこれは無いなって。Tauri V2に移植したら15MBまで減ったぜ。" userName="platevoltage" createdAt="2025/05/28 19:53:20" color="#ff33a1">}}




{{<matomeQuote body="TauriとElectronって何が違うの？どっちも描画にブラウザ使うけど、Electronはブラウザ丸ごと入れてて、Tauriはシステムにあるやつ使うって理解で合ってる？" userName="smusamashah" createdAt="2025/05/28 21:59:26" color="">}}




{{<matomeQuote body="違いは君の言う通り。それに加えてTauriはバックエンドがRust、ElectronはNode.js。Electronは成熟しててコミュニティもでかいけどTauriも勢い増してるよ。メモリ安全性とかサイズ、パフォーマンス気にするならTauriが良い選択肢だね。Electronも悪くないけど、新しいのいっぱい出てくるのは理由があるんだ。" userName="SpaceL10n" createdAt="2025/05/28 22:13:03" color="#ff33a1">}}




{{<matomeQuote body="一番大きな違いは、ElectronはChromeをまるっと同梱してるからMacとかWindowsとかLinuxで見た目のズレがほとんどないこと。その代わり数百MB増えるけどね。TauriはOSのエンジン使うから、WindowsならEdge、MacならSafariのWebKitとかになって、表示とか機能で違いが出る可能性あるよ。" userName="whywhywhywhy" createdAt="2025/05/29 14:22:12" color="#45d325">}}




{{<matomeQuote body="” If memory safety<br>TauriってWebKitのラッパーでしょ？WebKitってほぼC++で書かれてるんじゃなかったっけ？" userName="amelius" createdAt="2025/05/28 22:54:56" color="">}}




{{<matomeQuote body="そうだよ、でもWebKitは君のアプリコードよりずっとテストされて、fuzzテストもされて、研究もされて、実戦で鍛えられてるんだ。だから全体で見れば安定性とかセキュリティのリスクはそんな高くない。全部メモリ安全だったら最高だけど、それが君自身のコードをメモリ安全な言語で書かない理由にはならないよね。" userName="kevincox" createdAt="2025/05/28 23:28:04" color="#ff33a1">}}




{{<matomeQuote body="自分のRustコードとすごく簡単に繋げられるから、本当に大事な部分（自分のコード）はメモリ安全になるよ。" userName="Aeolun" createdAt="2025/05/28 23:07:45" color="">}}




{{<matomeQuote body="TauriはネイティブのWebView（古いOSだと古い可能性あり）を使って、ネイティブコードにコンパイルされる。ElectronはChromium（HTML/CSS+V8）とNode.jsをまるっと入れてる。Node.js使わないで、コンパイル言語（Rustは低レベルすぎるかもだけど）使うElectronがあったら、もっと良かったのになぁ。" userName="bloomca" createdAt="2025/05/28 23:40:55" color="#785bff">}}




{{<matomeQuote body="マジそれな。ElectronはアプリごとにChromium入れてるけど、TauriはOSのネイティブWebViewを使うんだ。Electronの方がずっと成熟してるけど、Tauriも良くなってるよ。" userName="platevoltage" createdAt="2025/05/28 23:39:32" color="">}}




{{<matomeQuote body="めっちゃいいね。ナイスな作業じゃん。アプリの名前なんていうの？今週App Storeに申請する作業やってんだよね。" userName="correa_brian" createdAt="2025/05/28 19:58:24" color="">}}




{{<matomeQuote body="アプリ名はMicroscopic Viewにしたよ。ウェブサイトも作ったんだ。https://microscopic-view.jgarrettcorbin.com<br>申請プロセスに手こずって他のプロジェクトに追われてまだストアには出てないんだけど、もしよかったらビルド送るよ。" userName="platevoltage" createdAt="2025/05/28 20:04:19" color="">}}




{{<matomeQuote body="これが低スペックなAndroid向けに最適化されたらいいな〜古いタブレットってタダ同然なのにネット見るのさえ厳しいし。<br>あと、安くて使える顕微鏡のおすすめ教えてくんない？AliExpressで色々試したけど全部詐欺かゴミだったんだ。" userName="djfergus" createdAt="2025/05/28 22:14:17" color="">}}




{{<matomeQuote body="https://plugable.com/products/usb2-micro-250x/これが俺が使ってるやつ。値段の割にめっちゃ良い。普通のウェブカメラみたいに使えるんだ。主にマイクロはんだ付けに使ってるから用途が違うかもしれないけど、値段考えたら超良いよ。Amazonに公式ストアあったはず。" userName="platevoltage" createdAt="2025/05/28 23:41:31" color="#45d325">}}




{{<matomeQuote body="興味あるんだけど、どうやって動画データをfrontendにストリームしたの？" userName="itsibitzi" createdAt="2025/05/29 12:28:47" color="">}}




{{<matomeQuote body="標準のWeb APIにあるMediaStreamを使ったよ。https://developer.mozilla.org/en-US/docs/Web/API/MediaStream" userName="platevoltage" createdAt="2025/05/29 17:58:29" color="#785bff">}}




{{<matomeQuote body="俺もチームもMacユーザーじゃないしRustへの書き換えも考えてないんだけど…でもこの記事、めっちゃ感謝してるよ。<br>これが”Show HN”に期待することなんだよね、現実の問題を解決するために必要な技術的なトレードオフを分かりやすくまとめたやつ。経験を共有してくれてありがとう！" userName="zalebz" createdAt="2025/05/28 17:36:43" color="">}}




{{<matomeQuote body="経験を共有できて嬉しいよ。長い間議論してたことなんだ。すでにまあまあ動いてるものを再構築するのは大変だけど、この場合は結果に満足してるよ。" userName="katrinarodri" createdAt="2025/05/28 17:43:40" color="">}}




{{<matomeQuote body="Tauri、Flutter、Electron、React Nativeとか、最新クロスプラットフォームフレームワークの比較ベンチマークが見たいな。バンドルサイズ、メモリ、起動時間とかの指標で。特にTauriはプラットフォームでWebViewの挙動違うから、その互換性マトリクスもあると開発者が選びやすくなると思うんだ。" userName="sillyboi" createdAt="2025/05/28 19:02:05" color="#ff5c5c">}}




{{<matomeQuote body="2週間前に更新された良い比較ベンチマークあるよ！→ https://github.com/Elanis/web-to-desktop-framework-compariso...<br>ランタイムではElectronも結構戦えてるね。みんなディスクよりメモリ気にすべきだと思うんだ。メモリ使用量（シングルウィンドウ、リリースビルド）のデータも一部抜粋するね。<br>Win: Electron ≈93MB, Tauri ≈154MB<br>Mac: NodeGui ≈84MB, Tauri ≈86MB<br>Linux: Tauri ≈16MB, Electron ≈70MB<br>LinuxのTauriやばすぎ！" userName="taroth" createdAt="2025/05/28 20:53:04" color="#ff5c5c">}}




{{<matomeQuote body="ベンチマークにはTauriがLinuxで起動に25秒、Windowsで空っぽアプリのビルドに4分以上かかると書いてあるね。この数字が本当に合ってるのかどうかは分かんないけど。" userName="FINDarkside" createdAt="2025/05/29 00:45:33" color="">}}




{{<matomeQuote body="数ヶ月前、WindowsでWailsとTauriを試してみたんだ。確かにRustオプションでのビルドはありえないくらい時間かかったけど、Goだとずっと速かったよ。理由は分かんないけど、Wailsもだいたい同じことできたし、それが理由でTauriはやめちゃったんだ。" userName="KronisLV" createdAt="2025/05/29 08:07:30" color="#ff33a1">}}




{{<matomeQuote body="作ったWAILSアプリ、公開できたの？一番苦労した点は何だった？" userName="Abishek_Muthian" createdAt="2025/05/29 12:02:03" color="">}}




{{<matomeQuote body="あれは社内アプリで、CLIツール設定GUIだったんだ。VueでローカルSPAを作って、配布サイズが小さいのが助かったよ。Goコードとの連携も快適だったな。一番苦労したのはオンラインで情報が少ないこと。Electronがみんな使ってて情報が多いからね。" userName="KronisLV" createdAt="2025/05/29 16:59:59" color="#ff33a1">}}




{{<matomeQuote body="それ、WAILSアプリには最高の使い方みたいだね、よく作ったね！" userName="Abishek_Muthian" createdAt="2025/05/30 03:51:30" color="">}}




{{<matomeQuote body="これこれ。Casey Muratoriがネットの変な人が作ったベンチマークは信用するなって言ってたのを思い出したよ。Tauriアプリが起動に25秒かかるなんて絶対ありえないね。だってLinuxでTauri触ったことあるもん。これは全然桁が違う話だよ。" userName="samtheprogram" createdAt="2025/05/29 06:25:56" color="#45d325">}}




{{<matomeQuote body="TauriがLinuxだとすごい良くて、Electronが最悪なのは、それぞれ最適化されてるか、されてないかってのが理由なのかなって思うね。" userName="Abishek_Muthian" createdAt="2025/05/29 11:59:09" color="">}}




{{<matomeQuote body="ブロックエディタ（NotionはElectron、AppflowyはFlutterとか）を、ブログ記事[1]で同じような条件で自分で作ったQt C++＆QMLのブロックエディタと比べたことがあるんだ。読んだら面白いかもよ。[1] https://rubymamistvalove.com/block-editor" userName="rubymamis" createdAt="2025/05/29 06:27:48" color="#785bff">}}




{{<matomeQuote body="前の会社ではデカくなったElectronアプリをメンテしてたんだ。Squirrelでの更新が大変で。<br>それでGUIはInferno製のSPAにして、C#とSwiftで書いたネイティブアプリからwebviewで表示するように構成を変えたんだ。そしたらサイズとメモリが90％くらい減ったよ。配布もストアにしたし、マジで良い決断だったな。" userName="pier25" createdAt="2025/05/28 18:20:38" color="#38d3d3">}}




{{<matomeQuote body="ネイティブストアでの配布と更新を褒めるなんて珍しいね<br>承認とか配信の遅れが普通なのに<br>Squirrelって知らないけど、ネイティブに変えて何が良くなったの？" userName="brulard" createdAt="2025/05/28 18:51:31" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Apple対応は大変だけど、更新問題が全部解決したのはデカかった<br>自分たちにリソースが無かったからね<br>無料アプリだったからストア経由とかSquirrel使ったけど、メイン製品ならもっと良い方法にした<br>2018年当時はSquirrelにサーバーが必要で、macOSではマシだったけどWindowsはひどかった<br>exeが変なフォルダに入って、リンク消すと見つけられないとか" userName="pier25" createdAt="2025/05/28 19:17:38" color="#ff5733">}}




{{<matomeQuote body="WebViewで作るのは超簡単だったよ<br>その後、OSに統合する新しい機能も追加したんだ<br>2018年のことだから記憶がちょっと曖昧なんだけど、全体で2〜3週間くらいの作業だったかな<br>SquirrelとかElectronに費やした時間よりは間違いなく短かったと思うよ…" userName="pier25" createdAt="2025/05/28 19:24:23" color="">}}




{{<matomeQuote body="LPのTryが購入ページなのは変、トライアル必要だよ<br>99ドルは高いかも<br>LPに性能情報がないのが気になる<br>詳細求む<br>Electronがボトルネックで処理時間激減したの衝撃<br>CLIP<br>ffmpeg連携だけでは<br>自分は似たElectronツールで性能問題なかった<br>なぜMac Only<br>Electron<br>Tauriはクロスプラットフォームなのに<br>最近Swift触ったけど良かったよ<br>アクティブユーザーすごい、マーケティングどうやったの" userName="jdprgm" createdAt="2025/05/28 18:22:44" color="#ff33a1">}}




{{<matomeQuote body="フィードバックありがとう<br>トライアルは今後やるかも<br>似たツール作ったっていいね、リリースしなかった理由は<br>需要あれば数ヶ月でWindows<br>Linux版出すよ<br>ユーザーはHN<br>reddit<br>linkedinでのローンチと口コミがほとんど<br>Electronと動画処理性能について、workerの使い方が悪かったかも<br>Rust移行でシーン検出やffmpegのGPU加速、バッチ処理もやって改善したけど、バッチ処理はクラッシュもした" userName="correa_brian" createdAt="2025/05/28 18:44:36" color="#ff5c5c">}}




{{<matomeQuote body="Macアプリを目指してたなら、Rust<br>TauriじゃなくてSwift<br>SwiftUIにしなかったのはどうして<br>ちょっと気になっただけ" userName="JohannMac" createdAt="2025/05/28 17:06:47" color="">}}




{{<matomeQuote body="見てくれてありがとう<br>Desktop Docsはクロスプラットフォームにするのが目標なんだ<br>Windowsサポートのリクエストがたくさん来てるから、これから出すWindows版のためにRustを選んだんだよ" userName="correa_brian" createdAt="2025/05/28 17:09:01" color="">}}




{{<matomeQuote body="まだ実用的じゃないかもしれないけど、Arc browserのチームがどこでもSwiftを使いたいからWindows向けのランタイムを開発してたはずだよ" userName="amendegree" createdAt="2025/05/28 18:18:40" color="">}}




{{<matomeQuote body="前にちょっと見てみたんだけど、結局MacではSwiftUIとかAppkit、WindowsではWinUIって感じで、２つのUIを違うフレームワークで書く必要があるんだよね<br>SwiftでWinUIのコードを書けるようになっただけなんだ" userName="StewardMcOy" createdAt="2025/05/29 02:59:16" color="">}}




{{<matomeQuote body="Appkitをwindows APIに移植するのって大変だろうから、まあわかるけど、クロスプラットフォーム開発って意味では大したメリットじゃないよね。ブラウザみたいなの作るならどうせ超低レベルなことやるし、そういうクロスプラットフォーム用の便利機能もあんま役に立たないだろうね。" userName="amendegree" createdAt="2025/05/29 06:07:07" color="">}}




{{<matomeQuote body="Windows版のテストもう始めた？OSごとにTauriが使うブラウザの違いで何か問題見つかった？" userName="rstupek" createdAt="2025/05/28 17:11:32" color="">}}




{{<matomeQuote body="Windows版のテストはまだ始めてないんだ。君はWindows使ってるの？そのバージョン出すときに教えてあげるよ。" userName="correa_brian" createdAt="2025/05/28 17:24:36" color="">}}




{{<matomeQuote body="アプリめっちゃ良さそう！Windows使ってるから見るのが待ちきれないよ！" userName="burnte" createdAt="2025/05/28 17:10:02" color="">}}




{{<matomeQuote body="サンキュー！そのバージョンに興味あったらメールちょうだいね: hello ［at］ desktopdocs dot com。準備できたらアップデート送るよ！" userName="correa_brian" createdAt="2025/05/28 17:21:03" color="">}}




{{<matomeQuote body="俺も同じ質問したかったんだ。Swiftってなかなか良い言語だし、Rustのメリットもたくさん提供してるみたいだね。別のコメントした人が聞いてたけど、俺もCLIPsの統合の詳細に興味あるな。あと、アプリを移植する必要があった理由についての話、すごくいいね。" userName="mark_l_watson" createdAt="2025/05/28 17:10:12" color="">}}




{{<matomeQuote body="サンキュー！別のコメントで言ったけどさ、RustのOrt crate使ってて、onnxruntimeをアプリにバンドルしてるんだ。Swiftも間違いなく検討したし、最後に使ってからかなり良くなったのは知ってるんだけど、SwiftじゃなくてRustにしたのはクロスプラットフォームのサポートがあったからなんだよね。移植に関して言えば、新しいバージョンの方がずっとメンテしやすくて満足してるよ。" userName="correa_brian" createdAt="2025/05/28 17:12:13" color="#785bff">}}




{{<matomeQuote body="俺も興味あるな。デスクトップアプリ作ろうと思ってて、Swiftは長いこと使ってないし、Rustもまだ初心者なんだ。Tauriはすごく期待できそう。Electronアプリは本当に嫌いなんだよね。爆速のマシンでも起動がめっちゃ遅いんだもん。何か知見があったら教えて！" userName="ptsd_dalmatian" createdAt="2025/05/28 17:13:31" color="#ff5733">}}




{{<matomeQuote body="Electronを経験してから、もっと早く得意分野（JS）から離れとけばよかったなって思うよ。Electronはとにかく最適化が必要で、すぐに必要ないものをロードしないようにimportsをマジでタイトにしなきゃいけないんだ。Tauriだとバンドルサイズ小さいし超高速だから、努力する価値は十分あるね。" userName="correa_brian" createdAt="2025/05/28 17:23:28" color="#785bff">}}




{{<matomeQuote body="正直気になったんだけどさ、もっとシンプルな組み込み型ソリューションのSQLiteじゃなくて、なんでRedisみたいなサービスを選んだの？個人的にはRedisって分散型ソリューションの方が向いてる気がするんだけど、デスクトップアプリ作ったことないから、たぶんよくわかってないだけかも。" userName="abvdasker" createdAt="2025/05/29 05:53:51" color="#ff5733">}}




{{<matomeQuote body="チームの効率上げるためのツール、昔はWinForms、最近WinUI3試したらダメダメ。React+Azure Static Site+Tauriに変えた。Tauriはほとんどの事できてファイルサイズも小さいのが良い。Chrome含まずWebとデスクトップ同じコードでいけるの最高だね。" userName="sturges" createdAt="2025/05/28 18:49:36" color="#785bff">}}




{{<matomeQuote body="小さいツールならiced-rsの方がずっと良いんじゃない？Tauriより軽いし、どこでも動くでしょ。最初はコード見るの怖いし手取り足取り教えてくれないからイライラするかもだけど慣れると楽。前に使った時は以前より簡単になってた。複雑なUIならTauriが良いと思うけどね。" userName="t_mahmood" createdAt="2025/05/28 20:30:32" color="#785bff">}}




{{<matomeQuote body="WPF使うべきだったね．Windows開発者でWinUIを真剣に考えてる人いないよ，Project Reunionが2020年に発表されてからどんだけメチャクチャかみんな知ってるし．BUILD 2024でWPFが地位を取り戻した理由があるんだよ．" userName="pjmlp" createdAt="2025/05/30 07:31:58" color="">}}




{{<matomeQuote body="そうそう，Electronアプリでやってたのと同じ機能がTauriでだいぶ小さいバイナリでサポートできるの最高だよね．" userName="katrinarodri" createdAt="2025/05/28 19:18:29" color="">}}




{{<matomeQuote body="eguiとかじゃなくてどうやってTauriに決めたの？Electronの経験があるからかな？俺はPython+QtアプリをRustに移植するのちょっとためらってるんだ，RustのGUIライブラリがQtみたいにリッチじゃない気がして，どこかで詰まるだろうなって分かってるからさ．" userName="dotancohen" createdAt="2025/05/28 21:11:14" color="">}}




{{<matomeQuote body="俺たちにとってもリッチなUIライブラリは重要だったよ．WebのUIライブラリにアクセスしたかったからTauriを選んだんだ．" userName="katrinarodri" createdAt="2025/05/29 02:13:58" color="#785bff">}}




{{<matomeQuote body="Pythonがパフォーマンス的にダメな場所が2つあったんだ．いくつか言語でテストしたら，RustとC++がダントツで一番だった．Rustのコンポーネント書いてPythonから使うこともできたし，C++でQtを使うこともできた．あるいは，Rustにどっぷり浸かることもできた．これは個人アプリで他のユーザーいないから，スキルを磨き続けるのに良い場所だってわけ．" userName="dotancohen" createdAt="2025/05/28 22:13:01" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
