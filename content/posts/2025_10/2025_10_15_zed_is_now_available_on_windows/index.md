+++
date = '2025-10-15T00:00:00'
months = '2025/10'
draft = false
title = 'ZedがWindowsで登場！Rustなのにまさかの大容量で騒然！？'
tags = ["プログラミングエディタ", "IDE", "Windows", "Rust", "ソフトウェア開発"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> ZedがWindowsで登場！Rustなのにまさかの大容量で騒然！？

引用元：[https://news.ycombinator.com/item?id=45594920](https://news.ycombinator.com/item?id=45594920)




{{<matomeQuote body="Windowsの基本ショートカット（ALT+F、ALT+SPACEBARなど）が動かないのは、DirectXレンダリングのせいかな。<br>インストールサイズが400MB超えで、VSCodeの380MBより大きいのはなぜ？Rust製アプリは軽量だと思ってたのに、まるでJava並みの肥大化だよ。" userName="miffy900" createdAt="2025/10/16 01:54:08" color="#38d3d3">}}




{{<matomeQuote body="400MB超えの肥大化したインストールは多くの人を怒らせるだろうね。<br>なぜこんなに大きいのか、すぐにでも説明してほしい。そうしないと、みんなインストールをためらうよ。" userName="tremarley" createdAt="2025/10/16 02:32:30" color="">}}




{{<matomeQuote body="奇妙なことに、実際のバイナリの.textセクションだけで約400MBもあるらしい。ちょっと調べてみるか！" userName="landr0id" createdAt="2025/10/16 05:18:21" color="#45d325">}}




{{<matomeQuote body="大規模アプリの静的リンクへようこそ！<br>世界は1980年代にちゃんとした理由があって動的リンクに移行したんだよ。基本的なCLIツールなら静的リンクでもいいけどね。" userName="pjmlp" createdAt="2025/10/16 06:06:59" color="#38d3d3">}}




{{<matomeQuote body="「世界は1980年代にちゃんとした理由があって動的リンクに移行したんだよ」だって？<br>その理由はもう存在しないよ。ストレージは安いし、アップデート配信はタダ。OS間で共有ライブラリのバージョン違いをデバッグする手間の方が高いんだから。" userName="trenchpilgrim" createdAt="2025/10/16 06:30:52" color="#45d325">}}




{{<matomeQuote body="Sublime Textと比較すると、こんな感じだよ。<br>RAM: Zed 213MB、ST 41MB。<br>ストレージ: Zed 406MB、ST 52MB。<br>起動時間: ZedはSTより少し遅い（数ミリ秒だけど）。<br>あと、STは前回のリサイズを記憶するけど、Zedはしないね。" userName="bdhtu" createdAt="2025/10/16 12:29:52" color="#785bff">}}




{{<matomeQuote body="「Rustアプリは軽量だと思ってたのに、Java並みの肥大化だよ」ってコメントがあったけど、Linux版Zedの実行ファイルは3.2MBだよ。…あっ、ごめん。nix storeが隠してただけだ。実際は337MBに加えてwebrtc-sysもあるらしい。" userName="neobrain" createdAt="2025/10/16 07:39:14" color="#ff33a1">}}




{{<matomeQuote body="「cargo build --release」でZedをコンパイルしたら、2000以上の依存関係を引っ張ってきて、実行ファイルのサイズがまさかの1.4GBになったよ！デバッグ版は1.2GB。この肥大化は尋常じゃない。<br>cargoがライブラリを共有しない理由や、2000以上の依存関係が必要な理由、リリース版がデバッグ版より大きくなる理由を誰か教えてくれ！" userName="johnisgood" createdAt="2025/10/16 08:02:07" color="#785bff">}}




{{<matomeQuote body="STはただのテキストエディタだけど、ZedはIDEだよ。<br>VSCodeみたいにモジュラーだけど、ネイティブで書かれたものが欲しいな。でもVSCodeは十分優秀だし、毎日使ってるよ。" userName="markus_zhang" createdAt="2025/10/16 13:23:47" color="">}}




{{<matomeQuote body="WindowsユーザーにはUltraEditやNotepad++があるぞ。ZedはIDEとは呼べないな。InteliJとかに比べたら全然違う。プラグインを足しまくってIDEになるなら、どんなプログラマー用エディターだってIDEになっちまうよ。" userName="pjmlp" createdAt="2025/10/16 13:30:47" color="">}}




{{<matomeQuote body="Zedのバイナリサイズ、ヤバいな！最初は3.2Mに見えたけど、実はlibexec/.zed-editor-wrappedに隠れてて、そっちは337Mもあったぞ！webrtcもサイズに貢献してるから、マジでデカいバイナリだわ。" userName="neobrain" createdAt="2025/10/16 08:06:28" color="#45d325">}}




{{<matomeQuote body="ストレージってそんなに安くないんだよな。Appleだと1TBで$600もするし。数GBをあちこちで無駄にしてたら、500GBから1TBドライブへのアップグレード（$300）を強制されちまう。これって結構な出費だぞ。" userName="mort96" createdAt="2025/10/16 06:50:23" color="#785bff">}}




{{<matomeQuote body="俺の基準だと、エディターのUIからプログラムをコンパイル、実行、デバッグできるなら、それはIDEだと思ってる。" userName="trenchpilgrim" createdAt="2025/10/16 15:15:13" color="">}}




{{<matomeQuote body="ちょっと疑って確認してみたんだ。https://imgur.com/a/AJFQjfL に証拠があるぞ。最初は897MBもあった！でも、どうやら2回インストールされてたみたいだ。起動したら408MBに減ったから、多分アップデートの途中だったんだろうな。" userName="hdjrudni" createdAt="2025/10/16 03:03:11" color="#ff33a1">}}




{{<matomeQuote body="アップグレードは差分更新じゃないの？" userName="eviks" createdAt="2025/10/16 04:48:07" color="">}}




{{<matomeQuote body="Sublimeが軽いのは、AIエージェント機能やLSP、それにビデオ会議や画面共有クライアントみたいなのがデフォルトで付いてないからだろうな。きっとそれが役立ってるんだよ。" userName="andrewl-hn" createdAt="2025/10/16 13:18:52" color="#ff5733">}}




{{<matomeQuote body="たとえ差分更新でも、Windowsでは実行中に自分自身をパッチできないんだよ。だから、アップデーターを動かして新しい実行ファイルを作って、再起動後にそっちに切り替えるんだ。ChromeやFirefoxなんかと同じ仕組みさ。" userName="wongogue" createdAt="2025/10/16 07:04:31" color="#38d3d3">}}




{{<matomeQuote body="＞そして、ビデオ会議と画面共有クライアントもデフォルトで…<br>え、マジかよ？ Zed（テキストエディター）と何か勘違いしてないか？まさかビデオ会議なんて積んでないだろ？！" userName="CaptainOfCoit" createdAt="2025/10/16 13:36:11" color="">}}




{{<matomeQuote body="OSの欠陥だよ。プログラムが勝手にアップデートしない方がいいんじゃないかな。" userName="1718627440" createdAt="2025/10/16 07:32:47" color="">}}




{{<matomeQuote body="デスクトップテキストエディタとWebRTCに何の関係があるの？" userName="torginus" createdAt="2025/10/16 12:12:44" color="">}}




{{<matomeQuote body="`strip --strip-all`後のZedのリリース版は261MB、デバッグ版は482MBだって。全く、まだ恥ずかしいサイズだよ。さらに悪いことに、Zedの起動はコールドスタートだと数分かかるのに、VSCodeはほぼ一瞬なんだ。今、測定してみてるけど、かなり時間がかかってるよ。" userName="johnisgood" createdAt="2025/10/16 08:23:18" color="#ff33a1">}}




{{<matomeQuote body="RustのHello WorldがGitより大きいんだ。JavaやElectronよりは小さいけど、決して小さくはないよね。" userName="1718627440" createdAt="2025/10/16 07:29:23" color="#ff33a1">}}




{{<matomeQuote body="みんなZedのサイズに文句ばっかりだね、もういい加減にしてほしいよ。もっとデカいドライブ買えばいいのに。あ、ノートPCだとできないのか、残念。そんな考え方でモバイルアプリ開発もやってみたら？ https://www.abbacustechnologies.com/why-your-app-keeps-getti..." userName="pjmlp" createdAt="2025/10/16 06:34:31" color="">}}




{{<matomeQuote body="ドキュメントのこの記述から判断すると、コラボレーション機能のためだね。https://zed.dev/docs/development/freebsd#webrtc-notice" userName="neobrain" createdAt="2025/10/16 13:05:30" color="#ff5c5c">}}




{{<matomeQuote body="＞ Zedのウィンドウが開くのに数分かかるのに、VSCodeはほぼ一瞬だ。それ、面白いね。僕にとってはもっと速くて、コールドスタートでも1秒以下だし、2回目以降の起動はほぼ一瞬だよ。" userName="neobrain" createdAt="2025/10/16 08:27:57" color="#45d325">}}




{{<matomeQuote body="本当にそうかな？<br>“テキストエディタ”としては大きいけど、従来のIDEよりは全然小さいよ。それにWindowsを使ってるなら、OSが数十GBも理由もなく占めてるんだから、400MBなんてかなり些細な問題でしょ。" userName="juliangmp" createdAt="2025/10/16 07:39:15" color="#ff33a1">}}




{{<matomeQuote body="＞ ストレージは安いって言うけどさ、ボタン2つとスクロールバーのために僕のRAMを全部使うのはやめてほしいな、ありがとう。" userName="nottorp" createdAt="2025/10/16 11:44:09" color="">}}




{{<matomeQuote body="他のエディタにはプラグインと30年のエコシステムがあるんだ。ZedでGoコードをデバッグしてみなよ。" userName="pjmlp" createdAt="2025/10/16 16:42:20" color="">}}




{{<matomeQuote body="いや、そんなことは重要じゃないよ。起動速度じゃなくて、好きな言語でどれだけ早く作業環境を整えられるかを見るべきだね。機能が欲しければそれなりの容量は必要。トレードオフだよ。代替品よりマシなら十分、特にJSを使ってないならね。" userName="wseqyrku" createdAt="2025/10/16 16:23:23" color="">}}




{{<matomeQuote body="Zedは見た目も使い心地も最高！Linuxで試したんだけど、GPUアクセラレーションの凄さは体験しないと分からないね。でも、今のところDevContainerが使えないのが残念。DevContainerを完璧に設定するのに時間をかけたから、ローカルに戻るのは大変だよ。この機能には期待してるんだ。<br>https://github.com/zed-industries/zed/issues/11473" userName="Alupis" createdAt="2025/10/16 01:34:08" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Zedに完全に移行できない理由の一つは、開いているファイルの外部からの変更を自動で更新してくれないことだね。他のエディタは対応してるのに、Zedはそうじゃない。毎回ファイルを閉じたり開いたりするのは嫌だし、そのうち忘れて作業を失うだろうな。<br>https://github.com/zed-industries/zed/issues/15791" userName="vitro" createdAt="2025/10/16 09:37:01" color="#785bff">}}




{{<matomeQuote body="他のエディタって、君の経験だとどうやってる？VSCodeもほとんど同じで、保存時に手動マージエディタが出るけど、変更はライブで表示されないはずだよ。何かコンテナとか仮想ファイルシステムを使ってるのかな？" userName="ricardobeat" createdAt="2025/10/16 12:21:53" color="">}}




{{<matomeQuote body="他のエディタは、ディスク上のファイル変更をポップアップで教えてくれて、リロードするか上書きするか尋ねてくれるんだ（geanyがそうだよ）。エディタウィンドウにマウスを合わせるだけで即座にね。Zedは最初の変更は表示するけど、それ以降は拾ってくれないのが不思議。Zedのインストーラー使ってるし、最新版、コンテナも仮想ファイルシステムもなし、パーティションはext4だよ。" userName="vitro" createdAt="2025/10/16 12:42:37" color="#45d325">}}




{{<matomeQuote body="しばらく使ってみたけど、まあまあかな。タイピングの遅延は気にならないから、個人的には魅力が見出せないね。VS Codeで得られないものもないし、物足りない感じ。もし本当にパフォーマンスを気にするならNeovimを使うよ。" userName="ZpJuUuNaQ5" createdAt="2025/10/16 10:49:13" color="">}}




{{<matomeQuote body="Neovimは意外と重いと感じるな。もちろん拡張機能を色々入れた後だけどね。特にパフォーマンスが良いとは思わないな。Zedの方がずっとキビキビ動くよ。" userName="isqueiros" createdAt="2025/10/16 11:18:13" color="">}}




{{<matomeQuote body="C++とTypescriptを書いてるんだけど、WindowsでZedを試したけど、そこまで速いとは感じなかったな（少しは速いかも）。それより悪いのはC++の自動補完。Zedは現代C++をあまり理解してない感じがしたし、補完も壊れてた。乗り換えるほどの優位性は今のところ感じないよ。" userName="torginus" createdAt="2025/10/16 12:43:21" color="#ff33a1">}}




{{<matomeQuote body="君のカスタムDevContainerについて、もう少し詳しく教えてくれるかな？" userName="droplit" createdAt="2025/10/16 01:49:34" color="">}}




{{<matomeQuote body="VSCodeのDev Containersって良いよね。Fedora Silverblueの「Toolbox」で同じことできるか気になるな。会社ではみんな同じ環境で開発できるからDev Containerはマジ便利！" userName="dustbunny" createdAt="2025/10/17 04:07:51" color="#ff33a1">}}




{{<matomeQuote body="Dev Containerって実際、何がいいの？自分の環境設定を全部記録するのは分かるんだけど、それだけじゃないよね？" userName="mercutio2" createdAt="2025/10/16 01:52:31" color="">}}




{{<matomeQuote body="OPじゃないけど、うちのチームではDev Containerが超便利だよ。みんな同じ環境、同じシステム依存で、開発マシンはDockerだけでOK。コンテナ内でコード動かしたり、シェル使ったり、本番に近い環境で作業できる。プロジェクトごとの依存関係の衝突も防げるしね。" userName="OlivOnTech" createdAt="2025/10/16 10:48:46" color="#ff5c5c">}}




{{<matomeQuote body="Dev ContainerでClaude Codeを、ツール全部入りのサンドボックスで動かしてるよ。おかげで、ある程度安全にYOLOモードを実行できるんだ。" userName="adastra22" createdAt="2025/10/16 03:53:25" color="#ff33a1">}}




{{<matomeQuote body="それって結構無駄じゃない？複雑なDockerfileなんか使わずに、ベースシステムから「ツールやサービス全部」をマウントすればいいんだよ。詳しくはこの記事を読んでみて: https://blog.gpkb.org/posts/ai-agent-sandbox/" userName="globular-toast" createdAt="2025/10/16 06:45:14" color="#785bff">}}




{{<matomeQuote body="なんで、手間がかかって、安全じゃなくて、クロスプラットフォームでもないようなことをする必要があるの？" userName="adastra22" createdAt="2025/10/16 15:52:14" color="">}}




{{<matomeQuote body="それって手間も少ないし、安全性も同じくらいだよ。まあ、君がそうしたいならそうすればいいけどね。" userName="globular-toast" createdAt="2025/10/16 19:38:59" color="">}}




{{<matomeQuote body="古いPHPアプリを触ることがあって、5.4みたいな超古いバージョンじゃないと動かないやつがあるんだ。今のシステムじゃインストールもオンボーディングも大変で、詳細なセットアップドキュメントを毎回書いて時間かかるし。だったら、そのドキュメントをビルド指示として書いて、結果をシステムから隔離すれば良いんじゃない？" userName="homebrewer" createdAt="2025/10/16 07:25:11" color="#785bff">}}




{{<matomeQuote body="これって同じ話してる？君の話は、開発中のソフトを動かすDocker/Compose環境っぽいけど、Dev Containerって、静的解析ツールやLanguage Serverとか、エディタ関係をコンテナで動かすことだよ。" userName="globular-toast" createdAt="2025/10/16 08:28:26" color="#45d325">}}




{{<matomeQuote body="うちのチームでは、Dev Containerのおかげで開発者のオンボーディングが爆速で、ホスト設定は一切いらないんだ。超複雑なリポジトリで、珍しいシステム依存が山ほどあるんだけど、マルチアーキテクチャのベースイメージ作って、その上にDev Containerを構築してる。フックで環境設定も一貫してバージョン管理できるし、もう手放せないね。" userName="corford" createdAt="2025/10/16 10:26:19" color="#38d3d3">}}




{{<matomeQuote body="複雑なツールチェーン、特にコンパイルが必要なものと一緒に使うとき、これめっちゃ便利だよ。ファイルシステムのクリーンアップは、コンテナを削除して新しいのを立ち上げるだけで超簡単だし。WindowsでOCaml使うときとかマジ助かるね。" userName="mfro" createdAt="2025/10/16 12:25:16" color="#ff33a1">}}




{{<matomeQuote body="オープンソースプロジェクトに超いいよ。小さい修正ならローカルにツールチェーン入れる必要ないし。GoのPOCで使ったけど、誰もGo入れてなかったから助かったんだ。Goは簡単だけど、一回きりのPOCでインストールしてって頼めないもんね。Ruby on MacOSみたいにOSとケンカするツールチェーンもあるし。" userName="Cthulhu_" createdAt="2025/10/16 11:40:58" color="#ff5733">}}




{{<matomeQuote body="質問の仕方が悪かったかな。「普通のDocker Composeと比べて何が良いの？」って聞けばよかった。みんなDocker Composeでできることばっか言ってるけど、俺なんか見落としてる？" userName="mercutio2" createdAt="2025/10/19 02:25:35" color="">}}




{{<matomeQuote body="俺はdev containerの中でZedを動かしてるよ。でもbubblewrapを使ったカスタムのだけどね。" userName="coppsilgold" createdAt="2025/10/16 15:51:01" color="">}}




{{<matomeQuote body="サブピクセルフォントレンダリングって、もう実装されたの？Linuxだとそれが問題だったよね。MacのHiDPIディスプレイ用にUI作ったせいで、LinuxやWindowsのLoDPIユーザーにはフォントがぼやけて見えてたの覚えてるよ。" userName="jsheard" createdAt="2025/10/15 22:29:19" color="#ff33a1">}}




{{<matomeQuote body="サブピクセルフォントレンダリングはわかんないけど、Linuxのフォントレンダリングは先週のパッチでめちゃくちゃ改善されたみたいだよ。<br>https://github.com/zed-industries/zed/issues/7992#issuecomme..." userName="sapiogram" createdAt="2025/10/15 22:40:49" color="#38d3d3">}}




{{<matomeQuote body="その進展は嬉しいね。もしサブピクセルRGBアンチエイリアシングが実装されたら、代替としてマジで考える価値あるよ。Zedのテキストレンダリングがずっと酷かったのに、みんな褒めてるのが不思議だったんだ。" userName="pulsartwin" createdAt="2025/10/15 22:45:57" color="#ff5733">}}




{{<matomeQuote body="でも正直、高解像度モニターが普通になった今、サブピクセルテキストレンダリングってそこまで重要かな？LoDPIはもう例外だし。" userName="flohofwoe" createdAt="2025/10/16 06:42:35" color="">}}




{{<matomeQuote body="たまには大都市とか高給取りの仕事から離れて、現実を見た方がいいよ。世界のほとんどの人にとって、高DPIモニターなんて例外中の例外なんだから。" userName="homebrewer" createdAt="2025/10/16 07:13:47" color="#ff5733">}}




{{<matomeQuote body="西洋でなくてもこれは関係あるよ。俺がよく行くFortune 500企業のソフトウェア開発オフィスと、そこそこの規模の大学のオフィスや共用スペース（教室、コンピュータ室など）では、モニターの80％以上が1080pだよ。" userName="starkrights" createdAt="2025/10/16 13:16:20" color="#ff33a1">}}




{{<matomeQuote body="それでも視界が悪いから、今年初めに45インチ3440x1440モニターにアップグレードしたんだ。125%で見てるから、サブピクセルフォントは読みやすさにすごく役立つよ、ネイティブピクセルはよく見えないけどね。高DPIじゃないけど、大きくてズームされてる感じ。良い点としては、4:3モニター2枚を並べたような感じで、画面半分でアプリを並べるのは最高。悪い点はRDPセッションが最悪ってこと。スケーリング対応RDPアプリを探さないと。" userName="tracker1" createdAt="2025/10/16 19:14:59" color="#ff33a1">}}




{{<matomeQuote body="俺の知ってるほとんどの人は1920x1080のLCDを使ってるよ。PCゲーマーの半分以上がその解像度みたいだね。例えばこれを見て：https://store.steampowered.com/hwsurvey" userName="trenchpilgrim" createdAt="2025/10/16 07:32:37" color="#ff5c5c">}}




{{<matomeQuote body="俺のゲーミングPCも1080pディスプレイに繋いでるよ、正直ゲームならそれで十分だからね。でも、高DPIディスプレイと比べるとClearTypeがあってもなくてもアプリのテキスト品質はかなり悪いから、その設定で文句は言わないけどね😉" userName="flohofwoe" createdAt="2025/10/16 09:47:24" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、Fedoraで試してみたんだけど、ひどいテキストレンダリングのせいで、俺にとっては即削除だったよ。" userName="byproxy" createdAt="2025/10/16 02:41:14" color="#38d3d3">}}




{{<matomeQuote body="なんでここでサブピクセルRGBアンチエイリアシングが必要なの？コードのためにゲームエンジンを動かしてるってこと？" userName="tonyhart7" createdAt="2025/10/16 06:23:21" color="">}}




{{<matomeQuote body="フォントのサブピクセルアンチエイリアシングは数十年前からかなり標準的な機能だよ。それが無いと、特定のディスプレイでテキストがぼやけて見えることがあるね。＞ゲームエンジンでコードを動かしてるのかって？Zedは文字通りそれをやってるよ。ビデオゲームみたいにグラフィックライブラリを使ってUIをレンダリングしてるんだ。" userName="trenchpilgrim" createdAt="2025/10/16 06:33:16" color="#ff5c5c">}}




{{<matomeQuote body="「GPUアクセラレート」とか「ゲームエンジンみたい」って表現を見るのは面白いよね、文字通り全てのアプリケーションが同じAPIで同じようにレンダリングされてるのにさ。" userName="magackame" createdAt="2025/10/16 09:07:39" color="">}}




{{<matomeQuote body="最後に確認した限りでは、WPFアプリを作るのにGLコンテキストは作成しないよ。" userName="trenchpilgrim" createdAt="2025/10/16 14:14:42" color="">}}




{{<matomeQuote body="その”after”画像はまだサブピクセルじゃなくてグレースケールAAでレンダリングされてるね。でも彼らが変更したおかげで、少なくとも読みやすくはなったよ。" userName="jsheard" createdAt="2025/10/15 22:45:02" color="#ff33a1">}}




{{<matomeQuote body="Windows版のZedはレンダリングにDirectX 11、テキストにDirectWriteを使ってて、Windowsらしい見た目に合わせてるんだって。DirectWriteのフォントレンダリングはWindowsのサブピクセルレンダリングを使ってるみたい。俺のモニターではLinux版より良く見えるし、開発者はこの問題をちゃんと予期して設計したみたいだよ！" userName="andyferris" createdAt="2025/10/16 01:43:54" color="#38d3d3">}}




{{<matomeQuote body="macOSで試したら、1440pの外部モニターだとフォントがマジでひどかったわ。ノートPCの“Retina”ディスプレイでは問題ないけど、他のモニターだとぼやけすぎて数時間で頭痛がしたよ。" userName="TranquilMarmot" createdAt="2025/10/15 22:51:47" color="#785bff">}}




{{<matomeQuote body="これ、ちょっと混乱するんだけど。ZedってWindowsでDirectWriteを使ってるみたいに、macOSではCoreTextを使うんじゃないの？macOSのCoreTextがこの問題を全部解決してくれないとダメでしょ？" userName="lenkite" createdAt="2025/10/16 05:12:13" color="">}}




{{<matomeQuote body="適当な推測だけど、サブピクセルレンダリングってレンダリングパイプラインとの連携も必要だよね。グリフの表示位置に合わせて分数オフセットをラスタライゼーションエンジンに渡す仕組みとか、グリフアトラスがRGBAテクスチャであることとか、ラスタライザーがテクスチャフォーマットを知ってること、とかが必要なんじゃないかな。" userName="simonask" createdAt="2025/10/16 05:56:20" color="#ff5733">}}




{{<matomeQuote body="分数オフセットって、本当に必要なの？" userName="jstimpfle" createdAt="2025/10/16 06:37:42" color="">}}




{{<matomeQuote body="いろんな表現方法があるけど、“サブ”って付いてるんだから、どこかの段階で分数ピクセルを扱わないといけないってことだよね、きっと。:-) " userName="simonask" createdAt="2025/10/16 08:36:58" color="">}}




{{<matomeQuote body="グリフの位置を分数にする必要はないよ。サブピクセルレンダリング自体は、特定のディスプレイのサブピクセル（赤、緑、青、その並び順とか）の配置に関する知識を利用するだけだからね。" userName="jstimpfle" createdAt="2025/10/16 18:51:32" color="#ff33a1">}}




{{<matomeQuote body="eguiみたいな作りなら、フォントアトラスにレンダリングしてるのかもしれない。そうなると、サブピクセルAAが複雑になる可能性もあるんじゃないかな。" userName="piker" createdAt="2025/10/16 05:57:13" color="#785bff">}}




{{<matomeQuote body="俺、数ヶ月前にZed使うのやめちゃったんだけど、先週からLinux版のフォントレンダリングがFull HDでもHiDPIディスプレイでもすげー良く見えるようになってるじゃん！" userName="gombosg" createdAt="2025/10/16 11:55:29" color="#45d325">}}




{{<matomeQuote body="Zedをインストールして1440pモニターでフォントを試したけど、まあまあかな。Windowsのフォントレンダリングがひどいのが原因だと思う。Zed特有の問題じゃなくて、VSCodeも同じ感じ。最近は4k以上のディスプレイじゃないと高品質なフォントレンダリングは無理みたいだね。" userName="avdwrks" createdAt="2025/10/16 03:21:09" color="">}}




{{<matomeQuote body="＞ Windowsのひどいフォントレンダリング<br>半分の人はWindowsのフォントレンダリングを気に入ってるってことを知っておいてほしいな。" userName="RossBencina" createdAt="2025/10/16 11:22:30" color="">}}




{{<matomeQuote body="なるほどね。OS全体を非難するんじゃなくて、最近のフォントがWindows向けに適切にヒント処理されてないって言えばよかったかも。" userName="avdwrks" createdAt="2025/10/16 12:32:07" color="">}}




{{<matomeQuote body="数ヶ月Zedを使ってたけど、VSCodeに戻ったよ。2つの理由がある。1つは俺のミスだけど、Zedの右クリックメニューにある”Delete”と”Trash”が並んでて、”Delete”はゴミ箱を通さずCtrl+Zも効かないのが問題。大事なファイルを間違って消しちゃった。もう1つは、Rustの特定のクレートでエラーや警告がZedに表示されなくて、VSCodeだと問題なく動いたこと。" userName="kettlecorn" createdAt="2025/10/16 05:10:37" color="#ff33a1">}}




{{<matomeQuote body="＞ Deleteはゴミ箱を通さず、ZedはまだCtrl+Zを実装していない<br>ZedのUIが良いとは言わないけど、文字通り”skip the undo-ability of this option”機能に対してCtrl+Zを実装していないと言うのは、ちょっと誤解を招く言い方じゃないかな。" userName="maccard" createdAt="2025/10/16 08:10:01" color="">}}




{{<matomeQuote body="君の言いたいことはわかるし、正しいと思うよ。でも、’Trash’ボタンが確認ボックスの後ろになくて、取り消せないなら、それはかなりひどいデザイン選択だね。" userName="lintfordpickle" createdAt="2025/10/16 08:58:32" color="">}}




{{<matomeQuote body="今Zedをダウンロードしたんだけど、”Trash”も”Delete”も確認ボックスの後ろにあったよ。”Trash”は（Windowsの）ゴミ箱に送られるし、”Delete”はちゃんと削除される。ゴミ箱には元に戻す機能はないけど、普通のゴミ箱やリサイクルビンから復元できるよ。" userName="maccard" createdAt="2025/10/16 10:13:55" color="#ff5733">}}




{{<matomeQuote body="うん、今Windowsビルドを試したら、確かに（TrashとDeleteの両方で）確認ボックスの後ろにあったよ。今朝OPのコメントを読んでた時には、そんな印象は受けなかったんだけどね。" userName="lintfordpickle" createdAt="2025/10/16 12:57:34" color="">}}




{{<matomeQuote body="OPだよ。長年VSCodeを使ってたから癖になってた。”Delete”は両方とも右クリックメニューの最後にあって、似た確認ダイアログが出るんだ。VSCodeの”Delete”はファイルをゴミ箱に移してCtrl+Zで元に戻せるけど、Zedの”Delete”はゴミ箱をスキップしてCtrl+Zも効かない。確認ボックスのことは言うべきだったけど、無意識にクリックしすぎてて、Zedの挙動が違うことに気づかなかったよ。" userName="kettlecorn" createdAt="2025/10/16 18:56:18" color="#ff5733">}}




{{<matomeQuote body="うん、確認ボックスがあるから問題は少しマシになったけど、コンテキストメニューに”Trash”と”Delete”が並んでるってのは、個人的にはまだ問題だと思うな。" userName="lintfordpickle" createdAt="2025/10/17 07:09:27" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
