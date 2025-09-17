+++
date = '2025-09-10T00:00:00'
months = '2025/09'
draft = false
title = 'GUIアプリをターミナルで動かす！まさかの技術でどんなアプリもコマンドラインから操作可能に'
tags = ["ターミナル", "GUI", "Wayland", "開発", "Linux"]
featureimage = 'thumbnails/blue.jpg'
+++

> GUIアプリをターミナルで動かす！まさかの技術でどんなアプリもコマンドラインから操作可能に

引用元：[https://news.ycombinator.com/item?id=45181535](https://news.ycombinator.com/item?id=45181535)




{{<matomeQuote body="俺、Wayland Compositorをスクラッチで自作して、どんなGUIアプリ*もターミナルで表示できるようにしたんだ！カスタムWayland Compositorにはまだ探求されていない可能性がたくさんあると思うんだよね。既存のアプリを色々なクールなものに組み込めるんだからさ！だから、まずはターミナルにアプリを埋め込むことから始めたんだ。だって、それが一番簡単な入出力だからね（出力はutf-8で、素晴らしい`chafa`ライブラリを使ってるし、入力はstdinから読み込むだけだから）。<br>もしクールなWayland Compositorのアイデアがあったら、教えてほしいな。俺は意図的にアプリの80%をTypescriptで書いたんだ。より多くの開発者にアピールして、クールな貢献を募りたいからね（描画はみんながよく知ってるCanvas2D APIで全部やってるから、もし興味があれば、これをクールなターミナルCanvasとして独立させることもできるかも、教えてね！）。<br>どうやったかのブログ記事もあるんだけど、かなりハイレベルで技術的じゃないから、質問があったら気軽に聞いてね。<br>[How I Did It](https://github.com/mmulet/term.everything/blob/main/resource...)<br>*厳密にはWaylandアプリとXwaylandを使ったx11アプリだけだけどね。でもLinuxではほとんど全部だよ。" userName="mmulet" createdAt="2025/09/09 13:16:30" color="#45d325">}}




{{<matomeQuote body="これ、めちゃくちゃ素晴らしいのに役に立たないね！プログラミングとアートの境目を行く感じだ。きっと最高の学習経験になっただろうし、楽しかったんじゃないかな。よくやったね！" userName="nick__m" createdAt="2025/09/10 17:24:12" color="#ff5733">}}




{{<matomeQuote body="いや、100%無駄ってわけじゃないよ。Dockerコンテナの中でアプリを動かすときに使えるんじゃないかな。GUIアプリをコンテナ内から表示させる方法はあるけど、もしかしたらこれの方がDockerfileをちゃんと書くより簡単かもね。追記：Dockerでやるのは思ったよりずっと簡単みたい[0]。明日試してみるよ。Windowsでもこの解決策が動くのか気になるな。<br>[0] https://medium.com/@priyamsanodiya340/running-gui-applicatio..." userName="GTP" createdAt="2025/09/10 20:18:11" color="#785bff">}}




{{<matomeQuote body="WindowsがほとんどのLinuxディストロより先にWaylandサポートしてたなんて、ちょっと驚きだね！" userName="nicce" createdAt="2025/09/11 03:34:18" color="">}}




{{<matomeQuote body="WindowsがほとんどのLinuxディストロより先にWaylandサポートしてたって？WSLに非加速のWaylandサポートがあったのは一時期だけだよ。それが“ほとんどのディストロより前”って言えるのかな？何を言いたいのか理解できないよ。Linux環境でのWaylandサポートってのは、ソフトウェアがWayland Compositor上で動くことを意味するんだ。WindowsがWayland Compositorじゃないのは有名な話で、どれだけ現実を曲げようとしても変わらないよ。" userName="0points" createdAt="2025/09/11 07:43:13" color="#785bff">}}




{{<matomeQuote body="このプロジェクト、なんでか分からないけどめちゃくちゃ嬉しいんだよね。いつ使うかって言われると全然思いつかないんだけど、見るだけでニヤニヤしちゃうんだ。" userName="actsasbuffoon" createdAt="2025/09/10 17:35:23" color="">}}




{{<matomeQuote body="これ、「珍道具」をちょっと思い出すね。独創的だけど、ちょっとおかしかったり役に立たないものに特別な喜びを感じるんだよ。" userName="snozolli" createdAt="2025/09/10 18:05:26" color="">}}




{{<matomeQuote body="Emacsには珍道具がいっぱいあるよね。あとは、geekcode、xroach、megahal/hailo、xneko、aalibで動画をレンダリングするaatvやmplayer、aaquake、subleq仮想マシンでeforthが動いたりとかね！" userName="anthk" createdAt="2025/09/10 20:41:24" color="">}}




{{<matomeQuote body="昔、aalibライブラリを使ってtelnet経由でワールドカップを見たのを思い出したよ。テレビよりも5秒早く信号が届いてたんだよね！" userName="hiccuphippo" createdAt="2025/09/10 21:13:39" color="">}}




{{<matomeQuote body="小さなフレームバッファフォントを使えば、aatvは遠くからでもほぼ見られたけど、fbtvが出てきてからはもう使われなくなったね。mplayer -vo aalibも同じで、映画はXと同じくらいフレームバッファで動いたからね。でも、BBデモは覚えてるし、あのキャッチーなs3mモジュールもまだ記憶に残ってるよ。<br>https://aa-project.sourceforge.net/bb/<br>で、まあAAじゃないけど、俺は今でもたくさんのテキストアドベンチャーやローグライク（それにBSDgamesとか）をプレイしてるんだ。俺のメインのX環境はCWM（Window manager）、MPV/MuPDF/NSxiv（画像）、djview4（DJVUファイル）以外は全部CLI/TUIベースなんだよね。" userName="anthk" createdAt="2025/09/10 22:34:56" color="#45d325">}}




{{<matomeQuote body="`xeyes`って実は使えるんだよ。常にカーソルを見てる二つの目で、動物的な脳が相手の視線の方向を判別するようにできてるから、大きな画面でカーソルを見失っても見つけやすいんだ。<br>macOSだとマウスを振ればカーソルが大きくなる機能もあるね。普段は`xeyes`を動かしてないけど、これは由緒正しいハックだよ。" userName="watersb" createdAt="2025/09/10 21:40:36" color="#785bff">}}




{{<matomeQuote body="KDEでもマウスを振ってカーソルを大きくする機能があるよ。Macと違って、振るのを止めない限りカーソルは成長し続けるんだ。画面全体を覆うくらい大きくできるから、マジで面白いよ。" userName="vrighter" createdAt="2025/09/13 15:36:05" color="#ff5c5c">}}




{{<matomeQuote body="SSHと適切なターミナル表示があれば、どんな低スペックデバイスでもアプリを実行できるよ。動画バッファリングをホストにオフロードすればデータ使用量を制限できるし（それが純粋な節約になるかは不明だけどね）、ホストをVPNの背後に置けば地域制限も避けられるよ。" userName="pawelduda" createdAt="2025/09/10 19:56:19" color="#ff33a1">}}




{{<matomeQuote body="昔56Kモデムの時代、Netscape NavigatorをSSH経由でXorgサーバーを使ってCommodore Amigaのデスクトップにトンネルしてたよ。AmigaにNetscapeがなかったし、当時のAmigaOSのブラウザじゃWebをまともに使えなかったからね。<br>今はブロードバンドインターネットや高性能なPCがあって本当に良かった。ポケットのスマホでさえ、子供の頃のデスクトップよりずっと高性能だよ。" userName="blooalien" createdAt="2025/09/10 23:30:57" color="#38d3d3">}}




{{<matomeQuote body="おっと、Xを再発明しちゃったね。" userName="unleaded" createdAt="2025/09/10 20:25:15" color="">}}




{{<matomeQuote body="これは、より一般的なBrowshみたいなものだね。[1] https://www.brow.sh/" userName="msdz" createdAt="2025/09/10 22:33:39" color="#45d325">}}




{{<matomeQuote body="でも一つ重要な違いは、Browshがテキストコンテンツを実際のテキストとしてレンダリングするから、コピーアンドペーストができる点だと思うよ。" userName="tombh" createdAt="2025/09/11 00:05:38" color="">}}




{{<matomeQuote body="Waylandのコピーアンドペーストインターフェース（wl_data_device_manager）を実装すれば、term.everythingでもコピーアンドペーストができるようになるよ。" userName="mmulet" createdAt="2025/09/11 00:11:24" color="#38d3d3">}}




{{<matomeQuote body="マジで！？それ最高じゃん。でもGUIの文字はターミナルフォントにはならないんだよね？" userName="tombh" createdAt="2025/09/11 12:02:54" color="#38d3d3">}}




{{<matomeQuote body="そう、テキストはピクセル化されたままだよ。画像にOCRをかけてテキストに変換することもできるけど、それはまた別の話だね。興味があればGitHubで機能リクエストを出してみて。" userName="mmulet" createdAt="2025/09/11 14:19:56" color="#ff5c5c">}}




{{<matomeQuote body="♡" userName="mmulet" createdAt="2025/09/10 17:47:19" color="">}}




{{<matomeQuote body="俺も同じコメントをしに来たよ。面白そうだから自分で試してニヤニヤしたいね。ナイスな仕事！" userName="k-warburton" createdAt="2025/09/10 19:09:32" color="">}}




{{<matomeQuote body="君にも♡をあげる！" userName="mmulet" createdAt="2025/09/10 19:17:59" color="">}}




{{<matomeQuote body="これ、絶対無駄じゃないよ！ttydサーバーでHTTPS経由でターミナル使ってて、carbonylをその上で仕事に使ってたんだ。でもそれはウェブブラウザに限定されるから、フルGUIサポートはめっちゃ便利だね。" userName="dmayle" createdAt="2025/09/10 22:23:17" color="#ff5733">}}




{{<matomeQuote body="これは、限界をどこまでも押し広げる、とんでもなく素晴らしい技術だね！無限に自慢できるやつだ。すごい！これでVDIをどう実装するか分からなくなったよ。攻殻機動隊にも新しい意味を与えてるね。でも、これDoom動くの？" userName="reactordev" createdAt="2025/09/10 19:39:18" color="#ff5c5c">}}




{{<matomeQuote body="聞けば叶うってね。Doomを動かしてるよ: https://github.com/mmulet/term.everything/blob/main/resource...<br>いくつか変更が必要だったんだ。term.everythingはstdinからしか入力を受け付けないからね（これでSSHでも幅広いターミナルで動く）。<br>1. コントロールキーに別のキーを割り当てた（通常はシグナルを送るから）。<br>2. キー入力のタイムアウトも変更した。stdinではキーダウンイベントは来るけど、キーアップイベントは来ないんだ。だから、いつキーを離したいか推測する必要がある。ほとんどの場合はすぐにキーアップを送れるんだけど、Doomにはキーデバウンスがあるみたいで、キーアップを50-100ms待つ必要があった。あと、ゲームで前進するのに通常は上矢印を押しっぱなしにするけど、これだと連打しなきゃならないね！理想的じゃないけど、ちゃんと動くし遊べるよ。" userName="mmulet" createdAt="2025/09/10 21:04:29" color="#ff5733">}}




{{<matomeQuote body="すごいね！！！俺も昔はtelnetゲームを書いてたから、キーアップが来ないことについてはよく知ってるよ。イミディエイトモード（キーを押しっぱなしにすると連続でキーコードが送られる）でも、いつ止まったか教えてくれないんだよね。バッファをアスキーバイトごとに読み込む必要があったんだ。それでも、これを見れるのは最高だよ。素晴らしい仕事だ！！！" userName="reactordev" createdAt="2025/09/10 23:50:39" color="#38d3d3">}}




{{<matomeQuote body="aaquakeはこれが生まれる前からASCIIターミナルで動いてたぞ。" userName="anthk" createdAt="2025/09/10 20:43:01" color="">}}




{{<matomeQuote body="ここのノリ、マジで最高！お前、完全に”ターミナル”を極めたな。もう俺、完全にシェルショック状態だよ。" userName="shonku" createdAt="2025/09/11 03:08:34" color="">}}




{{<matomeQuote body="ひどいダジャレだな。でも、少なくとも頑張ったな（bash）。" userName="pbhjpbhj" createdAt="2025/09/11 08:12:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="レスが超早いな。このスレッド、いい感じになってきたな（Bourne fruit）。マジで感心した（uTTYerly impressed）。" userName="psd1" createdAt="2025/09/11 10:37:05" color="">}}




{{<matomeQuote body="これ面白いけど、昔もっとすごいのがあったんだよ。GTKテーマで、デコレーションもウィジェットも全部テキスト文字で描画して、GDKバックエンドがテキストにレンダリングするやつ。両方合わせたら、どんなGTKアプリもターミナルで読めるテキストと綺麗なTUIで動かせたんだ。URL：http://zemljanka.sourceforge.net/cursed/screenshots/" userName="marcodiego" createdAt="2025/09/10 21:45:13" color="#785bff">}}




{{<matomeQuote body="リンク切れてるよ。アーカイブはこちら：https://web.archive.org/web/20080924152845/http://zemljanka.sourceforge.net/cursed/screenshots/" userName="GranPC" createdAt="2025/09/10 22:17:06" color="#45d325">}}




{{<matomeQuote body="くそー、これFedora Coreで見た記憶がうっすらあるわ。" userName="pndy" createdAt="2025/09/11 08:35:57" color="">}}




{{<matomeQuote body="なんでこれ、なくなっちゃったの？" userName="colecut" createdAt="2025/09/10 21:53:20" color="">}}




{{<matomeQuote body="多分、このリンクがオーナーにSourceForgeのアカウント持ってることを思い出させて、それで削除する機会になったんじゃない？ってね。" userName="saghm" createdAt="2025/09/11 09:46:38" color="">}}




{{<matomeQuote body="これ、マジでクールなプロジェクトだね。個人的には、Waylandの上に構築できる面白いユースケースってめちゃくちゃあると思うんだ、例えばこれとか：https://github.com/udevbe/greenfield<br>あと、今回のやつもね。" userName="tri2820" createdAt="2025/09/09 20:00:35" color="#ff5c5c">}}




{{<matomeQuote body="以前CarbonylプロジェクトでChromiumをターミナルで動かすのに興奮したけど、メンテされなくなっちゃったんだよね。これってあのプロジェクトをさらに強化した感じだね。めちゃくちゃクールだわ。良い仕事してる！<br>https://github.com/fathyb/carbonyl" userName="warwren" createdAt="2025/09/10 18:31:38" color="#45d325">}}




{{<matomeQuote body="数年前、Kerberosを有効にしたHadoopクラスターのデバッグでSSHポートしか開いてない環境でWebブラウザ無しだと大変だったな。結局macOSにX11クライアント入れて、クラスターノードにGnomeとFirefoxをインストールしたよ。Waylandだとできないことだね。このプロジェクトはすごくうまくいくから、Incusコンテナでテストする例を紹介するね。<br>apt install -y kitty<br>kitty<br>incus --project default launch images:ubuntu/24.04 term<br>incus --project default shell term<br>apt install -y curl firefox libharfbuzz0b libfontconfig1<br>curl -L -o term https://github.com/mmulet/term.everything/releases/download/0.5.1/term.everything.mmulet.com-dont_forget_to_chmod_+x_this_file<br>mv term.everything.mmulet.com-dont_forget_to_chmod_+x_this_file term<br>chmod u+x term<br>echo ’＜h1＞Hello＜/h1＞’ ＞ test.html<br>./term firefox test.html" userName="wdavidw" createdAt="2025/09/11 13:52:38" color="#45d325">}}




{{<matomeQuote body="ヘッドレスWaylandのVNCやRDPソリューションができる前に、SSH over TCP経由でvt100エスケープコードを使ったWaylandが実現したんだね。" userName="serbuvlad" createdAt="2025/09/10 22:41:45" color="#ff5733">}}




{{<matomeQuote body="これはまさにHacker News向きのぶっ飛んだプロジェクトだね。当然のようにTypeScriptで書かれてるし。" userName="roughly" createdAt="2025/09/11 02:54:26" color="">}}




{{<matomeQuote body="この動画を思い出すよ: https://m.youtube.com/watch?v=0mCsluv5FXA" userName="codethief" createdAt="2025/09/11 21:01:00" color="">}}




{{<matomeQuote body="以前Carbonylって似たようなプロジェクトを見た記憶があるよ。偶然だね、笑。それと、これめちゃくちゃクールだね。<br>https://github.com/fathyb/carbonyl" userName="fzorb" createdAt="2025/09/10 16:18:28" color="#38d3d3">}}




{{<matomeQuote body="関連するプロジェクトを紹介してくれるのはすごくありがたいよ。ただ、term.everythingってブラウザよりはるかに広範囲なプロジェクトみたいだね、僕の勘違いじゃなければだけど。" userName="patcon" createdAt="2025/09/10 17:12:45" color="#785bff">}}




{{<matomeQuote body="そうだね。他のプロジェクトも素晴らしいけど、目指してるものが違うんだよね。それは「リンゴとオレンジ」くらい違うことだよ。" userName="mmulet" createdAt="2025/09/10 17:50:35" color="#45d325">}}




{{<matomeQuote body="Awritも似てるプロジェクトだよ。<br>https://github.com/chase/awrit" userName="dodslaser" createdAt="2025/09/10 16:54:18" color="">}}




{{<matomeQuote body="面白いね。Xvfbを使ったトリックを思い出したよ。例えばこんな感じ。<br>$ Xvfb :7 &<br>$ xeyes -display :7 &<br>$ xwd -display :7 -name xeyes -out /dev/stdout | convert xwd:- sixel:-<br>見た目はこんな感じだよ: https://imgur.com/a/Eq2ToVO<br>もちろん入力はできないから、xdotoolを使うことになるね！最大の利点は、これらのツールはほとんどインストール済みだってことかな。" userName="taviso" createdAt="2025/09/11 16:32:12" color="#ff5733">}}




{{<matomeQuote body="WindowsユーザーならXMingでXアプリ動かせるよ。昔使ってたけど、スクショじゃなくて実際にアプリを操作できるんだ。" userName="FortuneIIIPick" createdAt="2025/09/11 16:58:49" color="#785bff">}}




{{<matomeQuote body="ターミナル（XTermとかKonsoleとか）で表示するのがポイントなんだよね。Xサーバーで動かせるのは当たり前じゃん。" userName="taviso" createdAt="2025/09/11 18:00:11" color="">}}




{{<matomeQuote body="これ、アプリのUI要素のテストに使えるかもね。最近のUIアプリって密結合すぎてテストしにくいし、’関心の分離’ができてないと特に難しい。UIバックエンドなしでUIアプリのテストを書けるようになるかも。" userName="SJC_Hacker" createdAt="2025/09/11 16:12:21" color="#38d3d3">}}




{{<matomeQuote body="今後の開発、頑張ってね。応援してるよ！" userName="Forgret" createdAt="2025/09/09 13:53:50" color="">}}




{{<matomeQuote body="brow.shっていうコンセプトも好きだったけど、これはもっといいな。XとかRDPでごちゃごちゃしたくない時に、ちょっとしたハックとして実用的に使える場面がすぐ想像できるよ。" userName="angg" createdAt="2025/09/15 05:41:58" color="#45d325">}}




{{<matomeQuote body="これ、結構すごいね。リモートで一回きり動かすのに役立ちそう。実行中のプログラムにアタッチ・デタッチしたりミラーリングしたりするのはどうかな？<br>SSHでデスクトップにつないで、動いてるDiscordクライアントとかを操作できるようになるといいな。RDPのリモートアプリも気になる。" userName="tracker1" createdAt="2025/09/10 16:55:39" color="#ff5c5c">}}




{{<matomeQuote body="CLIのDiscordクライアントを使えばいいし、Bitlbeeサーバーに対してIRCクライアントを起動する手もあるよ。" userName="anthk" createdAt="2025/09/10 20:43:45" color="">}}




{{<matomeQuote body="あれはあくまで例で、唯一の使い方じゃないよ。俺がリモートでやりたいことの99%はSSH（Wireguard経由）で全然OK。旅行中にノートPCよりデスクトップの方が高性能だから、主にリモートでVS Codeを使ってる。" userName="tracker1" createdAt="2025/09/10 21:28:07" color="#ff5c5c">}}




{{<matomeQuote body="わぁ、これめっちゃ好き！実はこれには、VS CodeをiPadで使うっていう、特定のかなりマニアックな使い道があるんだ。いつかiPadOSをサポートしてくれるといいな。" userName="kposehn" createdAt="2025/09/10 18:45:39" color="#ff33a1">}}




{{<matomeQuote body="私はリモート開発にはhttps://github.com/coder/code-server#code-serverをよく使ってるよ。" userName="lights0123" createdAt="2025/09/10 20:31:43" color="">}}




{{<matomeQuote body="iPad用のSSHクライアントがあるのは知ってるよ。だから動くはず！今すぐ試してみるね！" userName="mmulet" createdAt="2025/09/10 19:02:07" color="">}}




{{<matomeQuote body="見て！iPadで動いてるよ！スクリーンレコーディングはhttps://github.com/mmulet/term.everything/blob/main/resource...、iPadで動いてるビデオはhttps://github.com/mmulet/term.everything/blob/main/resource...を見てね。でもマウスサポートが全くないんだ。iPad用のマウスサポートがあるSSHクライアント知ってる人いる？（VSCodeをスムーズに動かすのはまだ作業中だよ）" userName="mmulet" createdAt="2025/09/10 19:50:09" color="#ff5733">}}




{{<matomeQuote body="マウスサポートがあるiPad用SSHクライアントを知ってる人いる？→iOSとiPadOS用のBlink terminalだよ。VSCodeのサポートも内蔵されてるんだ。" userName="oarsinsync" createdAt="2025/09/10 20:55:19" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="マウスサポートがあるiPad用SSHクライアントを知ってる人いる？→Panic社のPrompt 3だね。" userName="jsjohnst" createdAt="2025/09/11 13:47:42" color="#785bff">}}




{{<matomeQuote body="ありがとう、チェックしてみるね。" userName="mmulet" createdAt="2025/09/11 14:38:52" color="">}}




{{<matomeQuote body="これ好きだなぁ。いつもターミナルで何かを動かしたいんだ。理由はね、1. Xより安全だと思ってたから。2. TTYで動かす動画はいつも音声が良くて、マウスもずっとスムーズなんだ。そう、TTYでもマウスは動かせるよ。<br>誰かがCarbonylみたいなクールなプロジェクトも言ってたよね。Brow.shも聞いたことあるけど、詳しく説明してくれてたから、term.everythingみたいなプロジェクトが出てくると、他のクールなプロジェクトも注目されるのは良いことだね。1つ目の理由はただの迷信かも。term.everythingがTTYでどう動くかは知らないけど、解像度の問題でひどいことになるかもしれない。でも、それでも良い方向性だよね。" userName="Guestmodinfo" createdAt="2025/09/11 00:04:07" color="#ff33a1">}}




{{<matomeQuote body="Kitty image protocolで作業を始めたけど、残念ながらあれはこの手のものには全く向いてないね。パフォーマンスがひどいことになる。プロトコルはPNGを表示して→データ受け取って→指定位置に表示して→画面から消す、みたいな感じ。まるでmotion-PNGだよ。最悪だよね。誰かAV1-over-terminalプロトコルを追加してくれないかな。そしたら本当に役に立つんだけど。他には、ウィジェットのテキストには通常のターミナルテキストを使い、残りはKittyの画像を使うカスタムGUIも試そうとしたけど、これはかなり難しい問題だよ。" userName="IshKebab" createdAt="2025/09/10 21:52:27" color="#ff5c5c">}}




{{<matomeQuote body="君が説明しているのはグラフィカルシェルだよ。ネットワーク経由で使いたいなら、Xっていうプロトコルがあるんだ。ターミナルをこの目的で使うのは根本的に無意味だよ。" userName="f33d5173" createdAt="2025/09/11 03:04:44" color="">}}




{{<matomeQuote body="いや。Xはローカルネットワーク以外では遅すぎて使い物にならないし、FreeNXやxpraみたいな代替も設定が難しくて不安定だよ。それにXは死につつあるから、Waypipeみたいなものか、もっと悪いものを意味してるんだろ（これも前回試したときは外部コマンドをうまく実行できなかった）。<br>でも、僕はそもそもそれが欲しいわけじゃないんだ。ターミナルに実際に統合されたグラフィカルなものが欲しいんだよ。" userName="IshKebab" createdAt="2025/09/11 06:15:05" color="#45d325">}}




{{<matomeQuote body="これ見てみて！https://www.youtube.com/watch?v=dcjkezf1ARY" userName="ranger_danger" createdAt="2025/09/10 22:04:11" color="">}}




{{<matomeQuote body="多分、ネットワーク経由では動かないだろうね。それに、GUIっぽいものも見当たらないんだけど。" userName="IshKebab" createdAt="2025/09/11 12:11:26" color="">}}




{{<matomeQuote body="じゃあこれはどうかな？https://github.com/saitoha/libsixel" userName="ranger_danger" createdAt="2025/09/11 18:09:24" color="">}}




{{<matomeQuote body="Sixelは笑っちゃうくらい非効率的だよ。「motion xpm」を想像してみて。" userName="IshKebab" createdAt="2025/09/11 21:58:14" color="">}}




{{<matomeQuote body="でも、それはネットワーク経由で動くんでしょ？それ以外に何を求めているのかよくわからないな。" userName="ranger_danger" createdAt="2025/09/11 23:24:38" color="">}}




{{<matomeQuote body="これは、僕が所有するビルドマシンで使えるかもしれないね。たまにそのマシン上のデスクトップやブラウザを操作する必要があるんだけど、VNCや他のデスクトップ共有だと実用的じゃないか、セキュリティ上の問題があるんだ。" userName="ugh123" createdAt="2025/09/10 19:50:57" color="#ff5733">}}




{{<matomeQuote body="また同じことを繰り返す嫌なやつだけど、エンジニア向けのマーケティングの教訓その1を思い出してほしい：まず動画やスクリーンショットを投稿することを学ぶんだ。<br>あと、言葉を失うね、これは素直にすごいよ。" userName="camdroidw" createdAt="2025/09/11 09:35:35" color="#ff5c5c">}}




{{<matomeQuote body="なんかさ、俺のキーボード、“V”、“N”、“C”キーがなぜか見当たらないんだよね。新しいキーボード買わずに済んだから助かったよ！ありがとう！" userName="nxobject" createdAt="2025/09/11 12:29:16" color="">}}




{{<matomeQuote body="すごいね！この技術を掘り下げていけば、RDPに発展させられるよ（xrdpとかGNOMEのRemotingとかで試せるやつね）。ターミナルエコシステムがもっと洗練されないのは、群衆のまとまりのなさだけじゃなくて、蒸発冷却現象も関係してるんだ。ターミナルでめちゃくちゃクールなことする人たちは、結局求めてるのは（ルートレスな）リモートデスクトップだって気づいて、ターミナルはそのままにして、もっと洗練されたシステムに投資しちゃうんだよね。" userName="quotemstr" createdAt="2025/09/10 17:04:31" color="#ff5733">}}




{{<matomeQuote body="これはさ、なんか変な理由で特定の時に必要になるまで、俺の秘密兵器として取っておくやつだね。マジで気に入ったわ。" userName="nixpulvis" createdAt="2025/09/10 17:35:48" color="">}}




{{<matomeQuote body="純粋な尊敬の念からインストールするアプリってあるじゃん、これまさにそれだわ。俺もEagle View持ってるけど、全然使ってないんだよね。" userName="camdroidw" createdAt="2025/09/11 09:43:57" color="">}}




{{<matomeQuote body="めっちゃクールじゃん！GitHubリポジトリに動画と例を追加してくれてるのも本当に嬉しいわ。概要を掴むのにすごく助かる！" userName="beckthompson" createdAt="2025/09/10 17:13:11" color="">}}




{{<matomeQuote body="俺も全く違うアプローチで同じようなことやってたんだよ。いい仕事してるね！この調子で頑張って！" userName="user3939382" createdAt="2025/09/11 01:59:14" color="">}}




{{<matomeQuote body="これをdesktop-tui[1]と組み合わせれば、グラフィカルなデスクトップマネージャーとは永遠におさらばできるぜ！<br>1: https://github.com/Julien-cpsn/desktop-tui" userName="babypuncher" createdAt="2025/09/10 18:05:33" color="#785bff">}}




{{<matomeQuote body="うわー、これマジですごいね。俺、いろんな理由でデフォルトで多くのものをコンテナで実行してるんだけど、グラフィカルなアプリを動かしたい時に、これがあればワークフローがもっと良くなるかも。" userName="christophilus" createdAt="2025/09/10 17:05:17" color="#ff33a1">}}




{{<matomeQuote body="動くよ。GIFはすぐ公開するね。" userName="mmulet" createdAt="2025/09/10 15:56:15" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
