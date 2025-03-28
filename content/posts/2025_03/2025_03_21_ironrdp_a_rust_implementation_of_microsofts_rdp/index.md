+++
date = '2025-03-21T00:00:00'
months = '2025/03'
draft = false
title = '爆速！Microsoft RDPプロトコルをRustで実装だと！？これは期待大！'
tags = ["Rust", "RDP", "リモートデスクトップ", "Microsoft", "プログラミング"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> 爆速！Microsoft RDPプロトコルをRustで実装だと！？これは期待大！

引用元：[https://news.ycombinator.com/item?id=43436894](https://news.ycombinator.com/item?id=43436894)

{{<matomeQuote body="これマジですごいね。マイクロソフトのRDPが最強のリモートデスクトップクライアントだと思うわ。パフォーマンスがマジでヤバいし、クライアントがほぼ全てのPCで使えるじゃん。マルチモニタのサポートも最高だし。マイクロソフト製ってのが唯一の欠点かな。" userName="kayson" createdAt="2025-03-21T16:21:16" color="#ff33a1">}}

{{<matomeQuote body="RDPのパフォーマンスが良いって思うなら、Sunshine+Moonlightを試してみてよ。4K120HzでゲームPCからノートPCにストリーミングしてるけど、ローカルと区別つかないレベルだよ。Tailscale経由で1000マイル離れた場所からでも、RDPより全然良かったぜ。WindowsホストならGPUでビデオエンコードできるし、セットアップはRDPよりちょっと面倒だけどマジでおすすめ。" userName="aappleby" createdAt="2025-03-21T18:46:40" color="#45d325">}}

{{<matomeQuote body="リモート管理ならRDPを選ぶな。サーバーとクライアントの連携（クリップボードとか周辺機器）がSunshine/Moonlightより全然良いし。Sunshineみたいに仮想ディスプレイの設定もいらないし。どっちも用途に合わせて使ってるよ。SunshineとMoonlightの最近のバージョンだと、4:4:4クロマサブサンプリングと500Mbit/sまでのビットレートに対応してて、ネイティブ出力とほぼ変わらない画質になるらしい。" userName="winkelmann" createdAt="2025-03-21T19:27:47" color="#785bff">}}

{{<matomeQuote body="色々試したけど、テキストとかGUI関連ならRDP（linux上のxRDPサーバー）を選ぶな。RDP（VNCとかVNCっぽいRDPじゃないやつ）は、接続が悪くなっても画質が劣化しなくて、ラグが増えるだけでテキストはクッキリしてる。Sunshine/Moonlightは画質を落としてレイテンシを抑えるから、ゲーム配信には良いよね。" userName="gryn" createdAt="2025-03-21T19:58:52" color="#ff5733">}}

{{<matomeQuote body="＞4k 120hzでゲームPCからノートPCにストリーミングしてるけど、ローカルと区別つかないレベルだ”って言ってるけど、それは言い過ぎ。コントローラーなら良いけど、マウスだとローカルとの違いはハッキリわかる。昔のV-Syncみたいな感じ。" userName="jorvi" createdAt="2025-03-21T23:37:07" color="">}}

{{<matomeQuote body="言い過ぎじゃないよ。Overwatchとか普通にプレイできてるし。" userName="aappleby" createdAt="2025-03-22T02:09:41" color="">}}

{{<matomeQuote body="Sunshine/Moonlightのデメリットは、モニター出力が必要なこと。だからモニターの解像度に縛られるし、見られちゃう可能性もある。ダミーモニターとかの対策はあるけど。クリップボード共有ができなかったり（対応してるか不明）、特定のキー（\とか）が一部のキーボードレイアウトで使えなかったりするバグもある。でもフル3Dアクセラレーションはマジで快適だし、Windowsのホームエディションでも使えるのが良い。" userName="jwrallie" createdAt="2025-03-21T21:52:28" color="#ff5733">}}

{{<matomeQuote body="＞in sunshine/moonlight such as you still have monitor output<br>Apolloってのがこの問題を解決してくれるよ。「Virtual Desktop」ってオプションで仮想デスクトップを追加して、ローカルモニターを全部無効にできるから、リモート中に見られる心配もない（セッション終わったらロックするの忘れずに！）。モニターレイアウトも維持してくれるらしい。Sunshine使ってた時は色々ハックしてたけど、Apolloなら簡単にできる。" userName="bentcorner" createdAt="2025-03-21T23:22:10" color="#38d3d3">}}

{{<matomeQuote body="RDPは、リモートのウィンドウをローカルのウィンドウみたいにリサイズしたり、モニター間でドラッグできるから、仮想デスクトップに縛られるApolloとは比べ物にならない。" userName="LiamPowell" createdAt="2025-03-22T00:46:03" color="#ff5733">}}

{{<matomeQuote body="それRemoteAppが必要なんじゃない？普通のremote desktopじゃなくて。" userName="gruez" createdAt="2025-03-22T01:08:30" color="">}}

{{<matomeQuote body="RemoteAppってのは、基本的にはRDPでリモートサーバー上で動く一つのデスクトップアプリを、ローカルアプリみたいに見せて起動・実行するやつだよ。ここ10年以上でかなり改善されてるみたい。" userName="mmerlin" createdAt="2025-03-22T11:48:11" color="">}}

{{<matomeQuote body="使ったことないから的外れなこと言ってたらごめんね。これって、リモートでヘッドレスなセッションを作るんじゃなくて、ローカルセッションを作るってこと？もしそうなら、TeamViewerとかRemote Assistみたいに既存のセッションに飛び込むのと同じ感じがするんだけど、考え方間違ってるかな？" userName="feldrim" createdAt="2025-03-22T08:55:31" color="">}}

{{<matomeQuote body="＞Apollo[1]ならこの問題が結構きれいに解決するよ。全角の”Virtual Desktop”オプションで仮想デスクトップを追加して、セッション中にローカルモニターを全部無効にできるから、リモート接続中にローカルの人がデスクトップを見ちゃう心配もないよ（セッション終了後にロックするのを忘れずにね！）。”ってことは、ログイン中に物理アクセスできる人が操作できちゃうってこと？" userName="gruez" createdAt="2025-03-22T01:09:38" color="">}}

{{<matomeQuote body="友達がSunshine+Moonlightにめっちゃハマってて、無理やり試させられたんだよね。結論から言うと、開発作業には全然向いてないけど、ゲームとかストリーミングには最高だよ。" userName="deeviant" createdAt="2025-03-21T22:49:34" color="">}}

{{<matomeQuote body="RDPでremoteFXがちゃんと動くなら、ゲームのパフォーマンスはかなり変わるかな？あと、RDPとかParsecみたいにちゃんと動くクリップボード共有機能がマジで欲しい。" userName="RockRobotRock" createdAt="2025-03-21T21:38:22" color="">}}

{{<matomeQuote body="入力とクリップボードの共有にはBarrier（Synergyの前身）を試してみて。100MBit以上のLANならレイテンシはかなり良い感じだよ。" userName="Joe_Cool" createdAt="2025-03-22T00:30:16" color="#45d325">}}

{{<matomeQuote body="Synergyはまだあるけど、Barrierからinput-leapにフォークしたんだよ。" userName="CUViper" createdAt="2025-03-22T01:42:43" color="">}}

{{<matomeQuote body="RustDeskみたいなもっとモダンなやり方の方が絶対に良いと思う。RustDeskはマジでパフォーマンスが良いから、FPSゲームもできるし、映画も見れるレベルだよ。Microsoft RDPの嫌なところは、リモートGPUを使えてないってこと。" userName="SirMaster" createdAt="2025-03-21T18:29:15" color="#ff5733">}}

{{<matomeQuote body="諦めるの早すぎ！5ドルのDO dropletでサーバーをホストしてるけど、100以上のクライアントがいて、RustDeskは一度も失敗したことないよ。マジで使える。" userName="twooclock" createdAt="2025-03-21T20:32:13" color="#ff5c5c">}}

{{<matomeQuote body="それってビジネスで使えるレベルだと思う？ screenconnectにお金を払いすぎててマジ嫌いなんだけど、とりあえず動くんだよね。" userName="RockRobotRock" createdAt="2025-03-21T21:40:21" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="RDPのGPUアクセラレーションは（少なくともWindowsでは）適切な設定で使えるはずだよ。API的にはGPUソフトの実行を妨げるものはないと思う。ただ、RDPはエッジケースだから、考慮してないソフトも多いかもね。ゲームには向いてないからParsecとかMoonlightがいいんじゃない？" userName="jeroenhd" createdAt="2025-03-21T18:42:07" color="#ff5c5c">}}

{{<matomeQuote body="ゲーム用じゃないのは分かってるけど、RustDeskのパフォーマンスとクオリティがParsecレベルなんだよね。最近のハードウェアだとRustDeskでHEVCとかAV1のハードウェアエンコードされた高フレームレートのデスクトップストリームが得られる。MS RDPでは見たことないよ。" userName="SirMaster" createdAt="2025-03-21T18:58:36" color="#ff5c5c">}}

{{<matomeQuote body="＞リモートGPUを使えないって？<br>そんなことないよ？AutoCADとかGPU使うソフトをRDPでいつも使ってるよ。" userName="raggles" createdAt="2025-03-21T18:34:23" color="#45d325">}}

{{<matomeQuote body="ソフトやゲームによっては、ちゃんとdisplay contextを取得できなくて起動しないことがあったな。" userName="vekatimest" createdAt="2025-03-21T18:41:36" color="">}}

{{<matomeQuote body="リモートデスクトッププロトコルとしては優秀だけど、トンネリングとか認証がMSのいつもの面倒くさいやつだから、SSHをトランスポートプロトコルにしてほしかった。" userName="qsort" createdAt="2025-03-21T17:37:20" color="">}}

{{<matomeQuote body="＞認証がMSのいつもの面倒くさいやつ<br>ADとのシームレスな統合とかスマートカードのサポートのこと？<br>＞SSHをトランスポートプロトコルにしてほしかった<br>RDPはOpenSSHより1年早いんだよ。" userName="donnachangstein" createdAt="2025-03-21T19:10:32" color="#38d3d3">}}

{{<matomeQuote body="RDP v2を出すことだってできたはずじゃん。SSHは信用できる。秘密鍵がないやつは入れない。RDPは侵入されて管理者権限を取られてボット化されると思う。スマートカード（笑）" userName="KennyBlanken" createdAt="2025-03-21T21:04:48" color="">}}

{{<matomeQuote body="90年代後半のMicrosoftを覚えてないの？RDPがもっと高くてもおかしくなかったんだよ。今では実質オープンなプロトコルになってるけどね。リモートシステム管理者になる前は大変だった。RDPに500ドル払っても良かったよ。" userName="naikrovek" createdAt="2025-03-21T20:39:42" color="#38d3d3">}}

{{<matomeQuote body="WindowsはSSHをサポートしてるから、RDP-over-SSHを自分で構築できるかもね。" userName="tomjakubowski" createdAt="2025-03-21T17:52:42" color="">}}

{{<matomeQuote body="RDP-over-SSHだとKerberos認証がうまくいかない理由は2つあって、1つはRDPクライアントがlocalhostのランダムなポートに向いちゃうから、もう1つはKDCへの接続ができないからだよ。皮肉なことにMicrosoftはAzure Arc over SSHでデモしてるけど、それだとNTLMにダウングレードするしかないんだよね。IronRDPはDevolutions Gatewayと連携するように作られてて、WebとかデスクトップクライアントからジャストインタイムのRDP接続ができるんだ。Devolutions GatewayはKDCプロキシもサポートしてて、Kerberosも使えるようにしてるよ。無料のWebアクセスパッケージを試してみて。Remote Desktop ManagerとDevolutions Serverを使えば、RDP接続がダブルクリックだけでできて、自動でトークン作ってKerberosも使えるようになるよ。" userName="awakecoding" createdAt="2025-03-21T18:29:46" color="#ff5733">}}

{{<matomeQuote body="KerberosにはKDCが見えない時のためのプロトコル、IAKERBがあるんだよね。確かMSFTはNTLMを終わらせるためにすごく興味持ってるはず。" userName="cryptonector" createdAt="2025-03-21T19:55:12" color="">}}

{{<matomeQuote body="IAKerbはまだリリースされてなくてプレビュー機能なんだよね。Devolutions GatewayではKDCプロキシを何年も前から成功させてるよ。もっと良い解決策を待つか、一番簡単な方法で実現するか。KDCメッセージを転送するだけでしょ？ちょっと面倒だけど、KDCプロキシのプロトコルはHTTP POSTでリクエストメッセージを送ってレスポンスメッセージを受け取るだけだよ。" userName="awakecoding" createdAt="2025-03-22T00:54:11" color="#ff33a1">}}

{{<matomeQuote body="Kerberosについては詳しいけどAVDのことはあんまり知らないんだよね。MicrosoftはKDC用のHTTPSプロキシを公開してるの？" userName="cryptonector" createdAt="2025-03-22T05:20:36" color="">}}

{{<matomeQuote body="＞パフォーマンスはマジでヤバいんだよね。<br>今でもフレームレートが24fpsか32fpsくらいに制限されてるんだよね。" userName="DaiPlusPlus" createdAt="2025-03-21T16:59:58" color="">}}

{{<matomeQuote body="メインのプロトコルは特許保護の対象外だと思うけど、拡張機能(RemoteFX、オーディオサポートとか)はまだ対象かもしれないから確認する必要があるね。LinuxとMacにも同じくらい有能なものが欲しいな。RDPは他のソリューションが使ってるVNCより良いことが多いし。" userName="tracker1" createdAt="2025-03-21T18:24:14" color="">}}

{{<matomeQuote body="GnomeとKDEは最近のリリースでRDPをサポートしてるよ。まあまあ使えるけど、Windowsのmstsc.exeほどシームレスじゃないかな。バグもあるしね(再起動するまで画面が真っ暗とか)。Linuxで良いRemote Desktop体験ができるのが課題だったんだけど、Gnome RDPは基本的な使い方なら十分だよ。" userName="inversetelecine" createdAt="2025-03-21T23:25:24" color="">}}

{{<matomeQuote body="本当に良いよね。AppleのRDP実装がバラバラで使いにくいのが残念。Mac Miniで何度か試したけど、うまくいかないんだよね。" userName="singhrac" createdAt="2025-03-21T20:25:40" color="">}}

{{<matomeQuote body="RustからIronってのはわかるんだけど、Ironってprefixを見ると、dotnetを思い出しちゃうんだよね。だって、[https://github.com/ironlanguages](https://github.com/ironlanguages)とか[https://ironsoftware.com/](https://ironsoftware.com/)があるじゃん。" userName="graynk" createdAt="2025-03-21T16:54:32" color="">}}

{{<matomeQuote body="IronPythonとかIronRubyとかIronSchemeを思い出すなぁ。Microsoftが.NETとオープンソースを混ぜてブリトーにしようとした初期の試みだよね。<br>[https://ironpython.net/](https://ironpython.net/)<br>[https://en.wikipedia.org/wiki/IronRuby](https://en.wikipedia.org/wiki/IronRuby)<br>[https://en.wikipedia.org/wiki/IronScheme](https://en.wikipedia.org/wiki/IronScheme)" userName="badlibrarian" createdAt="2025-03-21T17:37:16" color="">}}

{{<matomeQuote body="MicrosoftのRDPの実装ってことを考えると、このケースではむしろ自然なんじゃない？" userName="TheRealPomax" createdAt="2025-03-21T17:04:51" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="俺もそう思った。まだアップデートされてるのに驚き。IronJSとかIronTypescriptとかが出なかったのも意外だわ。" userName="tracker1" createdAt="2025-03-21T18:27:11" color="">}}

{{<matomeQuote body="MSがIronTypescriptを作るのは変だよね。だってTypescript作ったのMSだし。" userName="snoman" createdAt="2025-03-21T19:30:21" color="">}}

{{<matomeQuote body="MicrosoftのTypescriptはruntime engineじゃないしね。" userName="tracker1" createdAt="2025-03-21T20:04:07" color="">}}

{{<matomeQuote body="それならIronNodeじゃない？特にnode-tsがある今。" userName="ffsm8" createdAt="2025-03-21T21:18:59" color="#785bff">}}

{{<matomeQuote body="初期の.NET(4.0以前)にはJScript.NETが含まれてて、事実上“IronJS”だったんだよね。ただ、その頃はまだそういう名前の付け方じゃなかったんだ。" userName="int_19h" createdAt="2025-03-21T21:53:13" color="">}}

{{<matomeQuote body="RDPの機能全部入り？っていうか、それ以上？ここ15年くらい、RDPとローカルの画面見てる時間同じくらいだし（会社でもブレードにRDP接続だし、家ではラップトップからワークステーションだし。リモートワークになってからはもっとだし）。Linuxデスクトップも試したけど、RDPの代替品がイマイチで諦めてたんだよね。GNOME 47でもまだまだだけど、良くなってきてる。RDPの細かいところがどれだけすごいか、わかってきたよ。" userName="buybackoff" createdAt="2025-03-21T20:53:30" color="#45d325">}}

{{<matomeQuote body="READMEのデモ、結構すごいね。でも、リポジトリにサーバーコードも入ってるのか（https://github.com/Devolutions/IronRDP/tree/master/crates/ir...）。Proxmoxみたいなツールで、VNC（遅くて変）とかSPICE（Linux以外のツールが少ない）の代わりに使えるかな？もっと効率的な代替手段として。" userName="jeroenhd" createdAt="2025-03-21T16:17:02" color="">}}

{{<matomeQuote body="＞I wonder if tools like Proxmox could use this as a more efficient alternative to VNC (which is slow and weird) or SPICE (for which there are very few non-Linux tools).<br>＞”Proxmoxでも検討中だよ。IronRDPとQEMU display[0]がSPICEを置き換えるスタックの一部になることを期待してる。でも、まだ時間がかかるね。Proxmox VEでどんな役割を果たすか見極めないと。もう一つの実験は、QEMUに最新のビデオエンコードを追加すること。noVNC 1.6がH.264[1]をサポートしたし。AV1みたいなオープンなものがもっと良いけどね。[0]: https://gitlab.com/marcandre.lureau/qemu-display/ [1]: https://github.com/novnc/noVNC/releases/tag/v1.6.0”" userName="tlamponi" createdAt="2025-03-21T17:34:22" color="#45d325">}}

{{<matomeQuote body="ProxmoxがIronRDPを採用してくれたら嬉しいな。Marc-André Lureauの仕事を見つけたんだね。彼はIronRDPサーバー側で素晴らしい仕事をしてるよ。QOIイメージコーデックもIronRDPに追加してて、すごい結果が出てる。IronRDP matrix channelに遊びに来てね: https://matrix.to/#/!opeocvkWZVaLDouykU:matrix.org?via=matri..." userName="awakecoding" createdAt="2025-03-22T01:02:04" color="#45d325">}}

{{<matomeQuote body="返信とチャットの招待、ありがとう！プロジェクトの皆さんにも感謝！招待は評価担当者に伝えておくね。QOIイメージコーデックがさらに採用されるのは嬉しいな。" userName="tlamponi" createdAt="2025-03-22T17:10:32" color="">}}

{{<matomeQuote body="H.264エンコーダーの計算オーバーヘッドは、VMホストにとっては無視できない。CPUサイクルは全部ユーザーVMに使いたいからね。データセンター級のIntel CPU (Xeon) にはH.264エンコーダーは入ってないし。QuickSyncは一般的にコンシューマー向けのCPU限定。MPEGのライセンス問題もあるし。AV1はMPEGのライセンス問題は解決するけど、ハードウェアエンコードはさらに限定的。AV1はYouTubeみたいなエンコード1回きりのケースには良いけど、リアルタイムストリーミングには向かない。H.264の方が全体的に良い。" userName="nemanja" createdAt="2025-03-21T19:12:42" color="#ff33a1">}}

{{<matomeQuote body="考え方次第だよね。CPUサイクルは間接的にユーザーにも使われるし。最新のコーデックでより鮮明で良い画質を、より少ない帯域幅で実現できれば、それはそれで良いことじゃない？最近のCPUはビデオエンコードの構成要素が含まれてることが多いし、専用GPUを積むのもアリ。ユーザー/VMのワークロードがグラフィカルな出力に依存するならね。とは言え、すべてのハードウェアですべてのケースでうまくいくわけじゃないから、注意が必要だね。現状よりも悪くなるなら、オプトアウトできるようにするのが良いかも。" userName="tlamponi" createdAt="2025-03-22T17:07:18" color="#ff33a1">}}

{{<matomeQuote body="CPUにエンコードエンジンが1つしかない場合、マルチテナント環境だと、アクティブなストリームは1つしかフルスピードで動かせないってことにならないかな？" userName="concerndc1tizen" createdAt="2025-03-22T06:49:48" color="">}}

{{<matomeQuote body="＞“need a bit more time to see how this play out and what exact role it can play in Proxmox VE.”<br>＞”もう6年も経ってるのに？試してみて、どうなるか見てみようよ。一緒に開発を始めたら、すぐに加速すると思うけどな。”" userName="KennyBlanken" createdAt="2025-03-21T21:37:19" color="">}}

{{<matomeQuote body="Proxmox VEスタックへの統合について話してるんだ。まずはPOCで何ができるか徹底的に調べて、QEMUのローレベルからREST APIやACLシステムまで、どう組み込めるか検討するって感じ。<br>評価は数週間前にQEMUディスプレイの実験的なやつと一緒に始めたから、まだPOC段階で時間かかるかも。IronRDP自体に時間がかかるとは言ってないよ。<br>あとね、VMの外からのアクセスしかないなら、RDPはVNCと比べて大してメリットないんだよね。だからIronRDPだけ早く使っても、メンテするものが増えるだけで旨味が少ないって判断したんだ。" userName="tlamponi" createdAt="2025-03-22T17:03:10" color="">}}

{{<matomeQuote body="RDPがVNCよりパフォーマンスいい理由の一つは、RDPサーバーがGUIの状態を把握してて、クライアント側で結構合成処理してるからなんだよね。<br>でもハイパーバイザーはVMからのビデオ出力しか見えないから、GUIの状態なんてわかんない。だからRDP使っても、圧縮されたビットマップをストリームするくらいしかできないんじゃないかな。" userName="Nextgrid" createdAt="2025-03-21T16:50:41" color="#ff5c5c">}}

{{<matomeQuote body="それはそうだね。だからSPICEにはAgentがあって、ゲストOS内で動いてより良い統合を提供してるんだ（シームレスなクライアントとホストの切り替えとか、USBパススルーとか、クリップボード共有とか）。RDPでも同じようなアプローチができると思うよ。" userName="tlamponi" createdAt="2025-03-22T17:15:59" color="#ff5733">}}

{{<matomeQuote body="それはVNCも同じだよ（VNCはRDPほど最適化されてないけど）。<br>最近のRDPは、画面の一部をh.264ストリームに変換できるオプションもあるから、アニメーション背景のWebページ開いても接続が落ちないんだ。" userName="jeroenhd" createdAt="2025-03-21T18:47:12" color="">}}

{{<matomeQuote body="必要なのは特化した圧縮アルゴリズムかもね。限られた範囲なら、簡単に改善できるところがありそう。" userName="generalizations" createdAt="2025-03-21T16:54:05" color="">}}

{{<matomeQuote body="圧縮機能付きのVNCならTightVNC[0]があるよ。<br>[0]<br>https://en.wikipedia.org/wiki/TightVNC#Encodings" userName="nix0n" createdAt="2025-03-21T18:08:28" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="いろいろトレードオフがあるよね。新しいコーデック作っても、ハードウェアに載るまで時間かかるし（AV1エンコーダーですらまだ普及してないし）、CPUでエンコード・デコードすることになるから、ワークロードのリソースが減っちゃう。<br>h.264はリアルタイムデスクトップストリーミングには一番良いコーデックかも。低帯域幅、444サポート、ロスレス、低レイテンシ、GPUなくてもCPU使用率そこそこ、GPUでのサポートも長いし。" userName="nemanja" createdAt="2025-03-21T20:36:48" color="#ff5c5c">}}

{{<matomeQuote body="RDPとVNCはターゲットが違うんだよね。Proxmoxとかの仮想化マネージャーは、ハイパーバイザー(KVMとかESX)から直接ストリームを取得できるVNCを使ってる。これってローレベルなデバッグにすごく便利なんだ。<br>VNCプロトコルはオーバーヘッドも低いし（VMホストでh264エンコードのCPU負荷なんてかけたくないでしょ？）。VNCはリモートデスクトップ用途には向いてないんだよね。高い忠実度とかフレームレートが必要だし。<br>* VNC: 低オーバーヘッド / 低忠実度<br>* RDP (と他のリモートデスクトッププロトコル): 高オーバーヘッド / 高忠実度" userName="nemanja" createdAt="2025-03-21T17:00:04" color="#ff33a1">}}

{{<matomeQuote body="何をもって”低”オーバーヘッドって言うの？<br>RDPは低色モードなら56kモデムでも問題なく動くよ。" userName="p_ing" createdAt="2025-03-21T17:20:55" color="">}}

{{<matomeQuote body="CPUオーバーヘッドが低いってこと。VNCは画面キャプチャを最小限の圧縮（または圧縮なし）でストリームするから、CPUオーバーヘッドは低いけど、帯域幅消費が多くてフレームレートが低い。仮想化管理システムでのローレベルVMデバッグには良いけど、デスクトップリモートには向いてない。<br>RDPは低色モードなら56kでも動くけど、ビデオ編集とかCADとか高度なユースケースでは、より多くの帯域幅と計算コスト（CPUまたはGPU）が必要になる。" userName="nemanja" createdAt="2025-03-21T18:45:49" color="#ff5733">}}

{{<matomeQuote body="VNCは今でこそそういう使われ方してるけど、90年代に出たときはリモートデスクトップが目的だったんだよね。<br>ケンブリッジ大学の資料にもそう書いてあるよ。" userName="andrewf" createdAt="2025-03-21T18:42:29" color="">}}

{{<matomeQuote body="VNCサーバーのCPU負荷を見てると、最近は「低オーバーヘッド」とは言えない気がするな。<br>VNCは元々リモートデスクトップ用で、ストリーミング機能は後から追加されたんだよね。<br>RDPがダメな理由はないと思う。Windows VMとの連携が良い解決策になるかもね。<br>昔はRDPはMicrosoftの独自技術で、バグだらけのオープンソースクライアントと仕様が変わるサーバーだったからイマイチだったけど、最近はオープンソースのRDPサーバーも結構安定してる。<br>Gnome/KDEがRDPの便利な部分アップデート機能を使ってるかは知らないけど、インタラクティブなデスクトップストリームにはRDPの方がVNCより便利だと思う。" userName="jeroenhd" createdAt="2025-03-21T18:52:12" color="#38d3d3">}}

{{<matomeQuote body="＞Gnome/KDEがpartial update mechanismを使ってるかってことだけど<br>Wayland compositorが管理することになるのかな。Wayland compositorがRDPサーバーを兼ねてるってこともあるのかな？" userName="RossBencina" createdAt="2025-03-21T19:55:13" color="">}}

{{<matomeQuote body="VNCとかTeamViewerみたいなRDPじゃないやつとの大きな違いはOSとの関わり方だよね。<br>VNCは単なるインタラクティブな画面録画アプリとして動くからWindowsの動作に影響しない。<br>RDPはWindowsのリモートユーザーセッションとしてWindowsに直接組み込まれるから、ローカルユーザーには何が起きてるか見えないし、デバイスとかログイン設定も別になる。<br>オーディオ再生してるマシンにリモート接続したいならRDPは無理。たとえ「リモートでオーディオ再生」を選んでも、RDPが別のオーディオデバイスを使おうとするせいで再生が邪魔される。" userName="TheRealPomax" createdAt="2025-03-21T17:11:09" color="#38d3d3">}}

{{<matomeQuote body="RDPはOSにそこまで組み込まなくてもいいんだよ。X11をRDPで動かす方法もあるし。<br>VNCと違って、マウスの進む/戻るボタンも使えるし！<br>WindowsのRDPは便利な機能が色々あってリモートワークにはLinuxディストリよりずっと良いけど、それが唯一のRDP実装ってわけじゃない。<br>VNCでブロックアップデートを検出するロジックはRDPでも使えるし。RDPでオーディオもWindowsでもLinuxでも問題なく使えるし。<br>シャットダウンの件もLinuxもそうみたいだし、ターミナルサーバーとして使うなら当然かな。RDPで再起動しないから気にしないけど、プロトコルの問題じゃなくて実装の問題。" userName="jeroenhd" createdAt="2025-03-21T18:55:32" color="#45d325">}}

{{<matomeQuote body="xorgxrdp-glamorでレンダリングしてopenh264で転送すると、すごくパフォーマンスが良いよ。" userName="rcarmo" createdAt="2025-03-21T16:29:25" color="#785bff">}}

{{<matomeQuote body="Fedoraが最近インストーラーのVNCサポートをRDPに変えたんだよね。<br>https://docs.fedoraproject.org/en-US/fedora-server/installat...<br>(Waylandのせいかも。Fedoraのことしか知らないけど)。RDPが今の流行りみたいね。" userName="nailer" createdAt="2025-03-21T16:24:45" color="">}}

{{<matomeQuote body="RDPはVNCよりずっと進んでるし、オープンソースの世界で代替案が出てきてないみたいだね。" userName="IshKebab" createdAt="2025-03-21T16:32:00" color="">}}

{{<matomeQuote body="SPICEはどうなっちゃったんだろう？Red Hatがdeprecatedにしたのは知ってるけど、完全にオープンソースになったのかどうか分からない。<br>https://www.spice-space.org/developers.html" userName="rrdharan" createdAt="2025-03-21T17:56:56" color="">}}

{{<matomeQuote body="Waylandのせいじゃないかなーって思うんだよね。SPICEがWaylandだと上手く動かないみたいだし。Waylandのプロトコルがニッチなケースに対応できてないってことなのかも。" userName="spookie" createdAt="2025-03-21T19:02:40" color="">}}

{{<matomeQuote body="面白い説だね。SPICEがWaylandで上手く動かない理由って何かあるのかな？俺は特に問題なかったけど。Wayland向けのremote desktop protocolがあればVNCより良い選択肢になるかもね。SPICEが普及しなかった理由がよく分かんない。" userName="jeroenhd" createdAt="2025-03-21T19:06:51" color="">}}

{{<matomeQuote body="SPICEって廃止されたと思ってた。RDPとは用途が違うんだよね。SPICEは主に仮想マシンへの接続用で、ハイパーバイザーに接続する。だから、VMゲストを意識せずにフレームバッファから操作する設計になってる。<br>この方式は、何が起こってるか”推測”して、最高の結果を出すように頑張るしかないから、パフォーマンスが低い。RDPはOSのGUIサブシステムと連携して、GUIイベントを認識できるから、推測する必要がない。compositingとか2D処理をクライアントにオフロードできるから速いんだよね。<br>SPICEが普及しなかったのは、緊急時以外に使わないニッチな用途に特化してたから。普段はVMに直接remotingすべきだし。VNCと比べて特に優れてる点もなかったしね。" userName="Nextgrid" createdAt="2025-03-22T12:35:26" color="#785bff">}}

{{<matomeQuote body="RustDeskはTeamViewerの代替を目指してるけど、シンプルなremote desktop applicationとしても結構使えるよ。<br>https://github.com/rustdesk/rustdesk" userName="InsideOutSanta" createdAt="2025-03-21T16:37:03" color="#ff33a1">}}

{{<matomeQuote body="昔、windowsにroot証明書をインストールして、全トラフィックをMITMできる状態だったらしいよ。<br>Linuxの.debをインストールしようとした時、インストール前のスクリプトで`pip install`をroot権限で実行してて、めちゃくちゃ大変なことになった。今はpipでブロックされるようになったけど。" userName="Arrowmaster" createdAt="2025-03-21T17:53:21" color="#ff5c5c">}}

{{<matomeQuote body="ネガティブな話は聞いたことないな。CVEは一つだけ見つかった。<br>https://www．cvedetails．com/cve/CVE-2024-25140/<br>個人的には、インターネットに公開してないから、セキュリティは大丈夫かな。" userName="InsideOutSanta" createdAt="2025-03-21T17:02:08" color="">}}

{{<matomeQuote body="Gnome on WaylandがRDP serverを標準機能としてサポートしてるからじゃないかな。<br>https://gitlab．gnome．org/GNOME/gnome-remote-desktop" userName="int_19h" createdAt="2025-03-21T21:58:27" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
