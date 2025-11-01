+++
date = '2025-10-25T00:00:00'
months = '2025/10'
draft = false
title = '電源ボタンからLinuxカーネルへ！知られざる起動プロセスの全貌を徹底解説！'
tags = ["Linux", "ファームウェア", "ブートプロセス", "組み込みシステム", "デバッグ"]
featureimage = 'thumbnails/purple3.jpg'
+++

> 電源ボタンからLinuxカーネルへ！知られざる起動プロセスの全貌を徹底解説！

引用元：[https://news.ycombinator.com/item?id=45707658](https://news.ycombinator.com/item?id=45707658)




{{<matomeQuote body="UEFIはファームウェアのインターフェースであって、ファームウェア自体じゃないんだ。ファームウェアがマシンを起動させて、UEFI経由でそれにアクセスするってことだね。この記事はモダンなファームウェアの面白い部分を全部スキップしてる。ExitBootServices()を呼ぶ頃にはすでにLong Modeに入ってるから、Real ModeやProtected Modeを経由する必要もないって指摘も面白いな。" userName="nickelpro" createdAt="2025/10/26 00:30:16" color="#ff5733">}}




{{<matomeQuote body="ファームウェアこそ、誰も語らない真のIoTだね。無限の小さなコンピュータとコードが視界から隠れて動いてるのに、全然アップデートされてない。次のスノーデン・リークは、きっとこの「ファームウェア」って言葉でいっぱいになるだろうね。" userName="1oooqooq" createdAt="2025/10/26 12:39:53" color="#38d3d3">}}




{{<matomeQuote body="公開されてる情報からすると、NSAのツールの大部分は、こんな低レベルのファームウェアのバグを悪用してるみたいだね。俺のAsrockのファームウェアが、普通のLenovoとかと比べてどれだけ優れてるのか気になるよ。Appleだけは、このプロセスをロックダウンするために相当考えてると思うけどね。" userName="caycep" createdAt="2025/10/26 17:48:19" color="#785bff">}}




{{<matomeQuote body="ファームウェアに関する情報や、その開発方法がほとんどないってのは本当にひどいね。高等教育でも、まともに教えられてないし。" userName="tonetegeatinst" createdAt="2025/10/26 13:29:35" color="">}}




{{<matomeQuote body="昔、ファームウェアエンジニアだったんだけど、日々の開発プロセスは、その後のソフトウェアエンジニアと何も変わらなかったな。書いて、コンパイルして、テストして、繰り返す。そしてレビューに出して、同僚に批判されるか、たまに気の利いたフィードバックをもらうって感じだったね。ファームウェア開発は高等教育でも教えてるよ。「組み込みシステム」って名前でね。俺の経験だと、電気工学科が担当してて、CSの学生は避けてたけど。" userName="anthomtb" createdAt="2025/10/26 18:50:24" color="#ff5c5c">}}




{{<matomeQuote body="ファームウェアってどうやってテストするんだろう？普通のソフトウェアなら、LinuxやMacのボックスがサーバーと似てるし、Dockerで距離も縮められるけど。ファームウェアは全然違うよね。FreeRTOSにはPOSIXバックエンドがあるから、多少は助かるかも。ハードウェアエミュレータで動かせるかもしれないけど、一般的なデベロッパーの知識だと、テストしたいことの多くはテストできないように見えるな。ファームウェア開発のイテレーションは、ビルド→フラッシュ→シリアル接続でデバッグプリント確認、って感じだよね。" userName="mbac32768" createdAt="2025/10/26 21:20:40" color="#785bff">}}




{{<matomeQuote body="シリアルポート？それは恵まれた人向けだよ。俺たちみたいな肉体労働者は、使ってないGPIOを見つけて、LEDをはんだ付けして、好きなコードを点滅させるんだ。まあ、実際にLEDを点滅させたことはないけど、俺の引き出しにはあった裏技だよ。組み込みデバイスのデバッグで本当に最高なのは、JTAG付きの開発キットだね。高価なハードウェアとソフトウェアライセンスがあれば、gdbみたいなデバッグインターフェースが手に入るんだ。ブレークポイント、スタックトレース、WindowsやLinux、あるいはウェブブラウザをいじる時に当たり前だと思ってる良いものが全部ね。エミュレータもあったけど、俺はあんまり使わなかったな。エミュレーション環境をセットアップする頃には、最初のシリコンとデバッグボードが机にあったからね。" userName="anthomtb" createdAt="2025/10/27 15:13:39" color="#785bff">}}




{{<matomeQuote body="俺はファームウェアデベロッパーじゃないけど、彼らが作業してるところを見た感じだと、プリントデバッグに頼るだけじゃなくて、色々な豪華なテストキットやデバッグ計装、Software (chip scope?)とかを使ってデバッグしてるよ。もちろん、プリントデバッグも有効な方法だけど、もっと良い選択肢があるのは確かだね。" userName="waste_monk" createdAt="2025/10/27 05:35:00" color="#38d3d3">}}




{{<matomeQuote body="セキュリティ分野の人間として、今セキュリティの学位プログラムにいるんだけど、電気工学やコンピュータ工学の学位要件とかなり重なってるよ。基本的なMIPSアセンブリとかマイクロコントローラーのプログラミングを少しかじったことはあるけど、それをブートレベルのファームウェアとか、もっと複雑なものを制御するファームウェアと同じくらい複雑だとは思ってないな。組み込みは、俺が実際のハードウェアエンジニアリングに一番近づける場所だと思ってるんだけど、全てがこんなに複雑なことに衝撃を受けてるよ。" userName="tonetegeatinst" createdAt="2025/10/26 19:58:58" color="#45d325">}}




{{<matomeQuote body="興味あるなら組み込みプラットフォームのブートローダーを見てみろよ。従来のx86システムでUEFIを実装するファームウェアとだいたい同じ役割だよ。例えばRaspberry Piのbl1 (first stage boot loader) から始めるといい。Piのハードウェアはよく文書化されてるから、これを学ぶのにいい方法だよ。参照: https://github.com/raspberrypi/arm-trusted-firmware" userName="QuiEgo" createdAt="2025/10/26 14:27:59" color="#ff5733">}}




{{<matomeQuote body="コンピュータサイエンスじゃなく、電子工学の組み込みシステムコースでこれ習ったよ。UEFIに関する情報はかなりたくさんあって、TianoCoreはオープンソースだよ。俺は自分でUEFIブートローダーを実装して、マシンをブートさせるために解くゲームを作ったことすらあるんだぜ :)" userName="jdsnape" createdAt="2025/10/26 17:35:18" color="#ff33a1">}}




{{<matomeQuote body="ブートプロセス、特にUEFIについてもっと知りたいとこだったから、この記事を見た時嬉しかったんだ。でも、記事はステップを飛ばしすぎて、疑問ばかり増えて読むのやめたよ。例えば冒頭の“リセット直後、CPUはリセットベクタ0xFFFFFFF0にジャンプする”って何だよ？どうやってそのアドレスに命令があるのか説明がないじゃん。この記事は誰のために書かれたのか、マジで混乱するわ。" userName="7bit" createdAt="2025/10/26 10:39:24" color="">}}




{{<matomeQuote body="昔はフロントパネルのトグルスイッチでリセットベクタとジャンプ命令を設定してたんだよ。もっと真面目に言うと、現代のシステムでは、コンピュータの設計者がリセットベクタが不揮発性メモリ（EEPROMとかね）の領域を指すようにメモリマップを作って、そこにジャンプ命令を置いているんだ。なぜ間接的なアプローチなのかはCPUアーキテクチャの専門家に聞くべきだけど、CPUが色々な条件（割り込みとかリセットとか）でジャンプする場所のリストであるベクタテーブルがあるからじゃないかな。" userName="II2II" createdAt="2025/10/26 17:56:35" color="#785bff">}}




{{<matomeQuote body="参照している動画、見てみたいからリンク教えてくれない？" userName="mmh0000" createdAt="2025/10/26 17:09:01" color="">}}




{{<matomeQuote body="これについてもっとどこで読めるかな？" userName="MonaroVXR" createdAt="2025/10/26 03:42:50" color="">}}




{{<matomeQuote body="ここが参考になるよ: https://depletionmode.com/uefi-boot.html" userName="heromal" createdAt="2025/10/26 05:18:28" color="#785bff">}}




{{<matomeQuote body="これ見てみろよ: https://www.youtube.com/playlist?list=PLUFkSN0XLZ-ltETI20mpX...<br>ost2.fyiのコースは全部質が高いぜ。" userName="ghostpepper" createdAt="2025/10/27 00:28:21" color="#45d325">}}




{{<matomeQuote body="すごく良い記事だね！数ヶ月前、俺もLinuxの起動について書いたんだ。<br>IO側（ディスク上のもの、どうロードされるか）に焦点を当てたものだけど、ここにあるよ: https://blog.davidv.dev/posts/booting-x86-64/" userName="deivid" createdAt="2025/10/26 07:40:04" color="">}}




{{<matomeQuote body="うわー、すごい！ISOファイルが単一ファイルでFAT、bzImage、rootfsなどを含めるって説明と、ブートローダー、ddやgnome-disksみたいなソフトウェア、そしてこの記事とHNスレッドの記事を合わせたら、Linuxがどう起動して、どうやってhttpsやインターネットからインストールできるのか、ソフトウェアを使ってどうやってOSを根本的に変えられるのかがやっと理解できたよ。<br>魔法みたいだね。最近自分でLinux OSをビルドしようとして、bzImageやLinuxカーネル＋initramfsからISOイメージをどう作るかでめちゃくちゃイライラしたんだ。<br>でも何とか乗り越えて、1週間かけてLinuxの基礎についてたくさん学べたよ。本当に魅力的だね。<br>今は、TinyCoreLinuxのinitramfsとBuildrootのbzImageを混ぜてみたり、他の変なことを試しているんだ。<br>たまに仮想マシンでカーネルが動かなかったり、ユーザー空間が動かなかったりしたんだけど、今この投稿を書きながら気づいたよ。32bitと64bitの違いが原因だったんだ。<br>64bitカーネルに32bitのユーザー空間を合わせちゃったんだと思う。他にもいくつか問題があって、残りの髪を掻きむしりたくなったけど、それだけの価値はあったよ（最後はLLMの助けも借りたかも）。<br>今では全部理解できる。昔からコンピューターがどう動くのかゼロから学びたかったから、今では物事がどう動くのかすごく基本的なアイデアが掴めたよ。本当に複雑だね。<br>昨日ちょうど君みたいな記事を探していたから、まだトピックが新鮮なうちにこれを見つけられて本当に嬉しいよ。<br>ISOを自分でビルドしようとして本当にたくさんの問題に直面したんだ。1週間もかかったのは俺のスキル不足だったのかどうか分からないけど、もうISOをビルドするプロセスはそんなに気が重くないよ。それが何なのか知ったからね。<br>確かにスキル不足だったかもしれないけど、それを克服したよ。見逃したエラーからたくさん学べることがあると感じているけど、多分それは圧倒されすぎたからだろうね。<br>でも、今はうまくいく道と、それがなぜうまくいくのかの説明を知っているよ。自分のカスタムディストリビューションを作る能力にもっと自信が持てるようになったし、Linuxへの感謝がめちゃくちゃ大きくなったんだ。<br>まさに巨大なラビットホールだよ。Linuxのほとんどは文字通り「it just works」なんだ。Linuxは最高だね。" userName="Imustaskforhelp" createdAt="2025/10/26 14:14:32" color="#ff5733">}}




{{<matomeQuote body="Linuxと他のUnixシステム（BSDとか）の違いがどこから来るのか気になるね。" userName="3abiton" createdAt="2025/10/26 15:35:26" color="">}}




{{<matomeQuote body="ありがとう！図がたくさんあるのはいいね。" userName="zvmaz" createdAt="2025/10/26 16:34:23" color="">}}




{{<matomeQuote body="僕にとっては奇妙な記事だね。面白いトピックだけど、なぜhex（16進数）が何かって説明してるんだ？<br>このレベルの詳細に興味があるのにhexを知らない人っているのかな？多分考えすぎかな。<br>それと、僕の最大の疑問である「物理的な電源ボタンを押してからリセットベクタまでどうやって行くのか」については触れられてないね。<br>ハードウェア、物理、電子機器の中でその魔法がどう働くのか、知りたいな。" userName="dgrin91" createdAt="2025/10/26 02:29:14" color="#ff5c5c">}}




{{<matomeQuote body="HNはITプロフェッショナルだけが読んでるわけじゃないからね。<br>Linuxの起動に少し興味があっても、hex（16進数）について覚えている必要はないし、そもそも知らなかったりする人もいるだろうから。" userName="vixen99" createdAt="2025/10/26 07:44:21" color="">}}




{{<matomeQuote body="この記事の説明は中途半端だね。HEX値の説明をしてるかと思えば、起動プロセスの大事な情報がすっぽ抜けてる。水泳の例えで言うと「水は濡れてて、飛び込むと沈むし息はできない。で、体を動かせば泳げる」って感じで、説明が飛躍しすぎてるよ。" userName="7bit" createdAt="2025/10/26 10:42:51" color="#ff5733">}}




{{<matomeQuote body="もっと詳しい記事、誰か知らない？データシートを読みたくはないけど、今の記事よりはかなり詳細な情報が欲しいな。特にUEFI/BIOSより前の部分について知りたいんだ。" userName="zaxioms" createdAt="2025/10/26 03:29:07" color="">}}




{{<matomeQuote body="プロセッサの初期化手順は、多くのマイクロコントローラと似てるよ。<br>ざっくり言うと、RESET解除後にハードウェアが設定されて、ブートファームウェアにアクセスするんだ。オプションは3つあって、ROMがマッピングされてたり、I/Oピンで繋がってたり、CPU自体にプログラムされてたりする。Intelの詳しい情報はここを見てね。<br>https://binarydebt.wordpress.com/2018/10/06/how-does-an-x86-... や、プラットフォームごとの違いはここ。<br>https://electronics.stackexchange.com/a/726918" userName="tremon" createdAt="2025/10/26 13:53:03" color="#ff5733">}}




{{<matomeQuote body="GRUBが言及されてるけど、詳細がないね。<br>ここにいくつかの詳細があるよ。<br>https://www.pixelbeat.org/docs/disk/" userName="pixelbeat__" createdAt="2025/10/25 23:22:53" color="">}}




{{<matomeQuote body="トピック自体は面白いのに、なんかおばあちゃん向けみたいに簡単すぎる内容だね。" userName="nightshift1" createdAt="2025/10/25 23:46:39" color="">}}




{{<matomeQuote body="「電源が安定するとCPUはリアルモードにリセットされる。物理アドレスは(セグメント ＜＜ 4) + オフセットだよ」なんて説明があるのに、あなたのおばあちゃんって、この手のことに異常なくらい詳しいみたいだね。" userName="zahlman" createdAt="2025/10/25 23:49:40" color="">}}




{{<matomeQuote body="なんか記事のトーンが嫌いだな。この複雑な主題なら、対象読者はHEX値とか割り込みくらい知ってるべきだし、CPUレジスタの説明も「CPU内の小さなスロット。CPUが今使っている数字を保持する。」じゃ不十分だよ。興味あるなら、もっと良い説明を受けるべきだ。" userName="nightshift1" createdAt="2025/10/26 00:35:55" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「レジスタはCPU内の小さなスロット。CPUが今使っている数字を保持する。」って説明の何が問題なの？X86レジスタがいつもレジスタファイル内の同じ場所に対応するわけじゃない、ってことまで言及すべきだとでも思ってるの？" userName="charcircuit" createdAt="2025/10/26 05:03:54" color="">}}




{{<matomeQuote body="別に悪い説明じゃないけど、これなら各ビットをclickableにして、詳細を見れるようにするとかすればいいのにね。サイトの制約か、作者のスタイルなんだろうけどさ。LLMがあれば、どんな知識レベルにも書き換えられるから、一番深いレベルで書いておくのが最適だと思うな。" userName="renewiltord" createdAt="2025/10/26 05:30:11" color="#ff5c5c">}}




{{<matomeQuote body="記事って読んでも全然疑問が解決しないこと多いよね。もうちょっと頑張れば、もっと読み応えのある記事になるのにっていつも思うよ。" userName="typpilol" createdAt="2025/10/26 00:59:58" color="">}}




{{<matomeQuote body="誰かもっと分かりやすい記事書かないかな？もしくは、既存の分かりやすい記事へのリンクでもいいから教えてほしいな。" userName="IOT_Apprentice" createdAt="2025/10/27 21:21:38" color="">}}




{{<matomeQuote body="“あと20%”って人によって違うからね。もっと詳しく知りたかったら本を読めばいいじゃん。archive.orgとかprogramming-motherfucker.comで無料で読める本もたくさんあるし。" userName="munchlax" createdAt="2025/10/26 07:38:11" color="">}}




{{<matomeQuote body="大学で習ったオーディエンス分析ってすごく大事だなって思う。何を知ってる前提で書くか、どんな専門用語を説明するかとかね。多くのテックライターが苦手としてるみたいだよね。" userName="Neywiny" createdAt="2025/10/26 00:48:05" color="#785bff">}}




{{<matomeQuote body="文字が薄すぎてスマホだと全然読めないよ。" userName="metabagel" createdAt="2025/10/25 23:23:31" color="">}}




{{<matomeQuote body="デスクトップブラウザでもデザインが酷いね。FirefoxやFirefox Mobileのリーダーモードを使えば、こういう時も快適に読めるよ。" userName="Brybry" createdAt="2025/10/25 23:44:02" color="">}}




{{<matomeQuote body="詳細レベルがめちゃくちゃで、読みにくいったらないね。レイアウトはシンプルだからリーダーモードが使えるのは助かるよ。Hexはbase 16って説明は、baseを理解してる人がbase 16を知らないなんてありえないでしょ。この記事の適当なアプローチそのものだね。著者名の0xkatoも同じ。TPM、PCRs、UEFI Secure Boot、ME pre-bootについても触れて欲しかったな。間違いは多いけど、ざっくりした概要だから許せるか。多分、大学1年生が書いたんだろうね。こんな記事が1位になるなんてマジで驚きだよ。" userName="jiveturkey" createdAt="2025/10/26 01:27:58" color="#ff33a1">}}




{{<matomeQuote body="これって昔のBIOSブートの話だよね。EFIブートローダーは全然違う動きをするんだよ。" userName="gmueckl" createdAt="2025/10/26 01:29:28" color="#ff33a1">}}




{{<matomeQuote body="GRUBがUEFIで動くときは、16ビットのCS、DS、SSレジスタをいじるんじゃなくて、UEFIのロードプロシージャを使うんだよ。" userName="okanat" createdAt="2025/10/26 02:22:01" color="#38d3d3">}}




{{<matomeQuote body="記事に役立つ提案が多いね。教育コンテンツはインタラクティブなスタイルの方が良さそうだよ。HNで高評価だった記事 https://www.nan.fyi/database があるんだけど、これは https://github.com/nandanmen/NotANumber っていうフレームワークで作られてるんだ。" userName="liqilin1567" createdAt="2025/10/26 02:29:20" color="#38d3d3">}}




{{<matomeQuote body="ビデオデバイスの初期化って、初期ブートと密接に関わってて、依存関係があるはずだよね？記事で全く触れられてないから、もっと知りたかったな。でも、それでもなかなか良い記事だね。" userName="superkuh" createdAt="2025/10/25 23:39:14" color="">}}




{{<matomeQuote body="ビデオデバイスはLinuxブートの依存関係じゃないよ。シリアルポートだけで十分動くし、ARM SoCでLinuxを立ち上げた人なら誰でもわかるはず。そんなに面白くもないしね。Linuxはフレームバッファのポインタとメタデータを受け取って、更新があればそこに書き込むだけなんだ。" userName="megous" createdAt="2025/10/25 23:57:16" color="#ff5733">}}




{{<matomeQuote body="もし本当に”面白い”ブートを見たければ、Raspberry Piのブート方法を調べてみてほしいな。ARMコアじゃなくビデオ／GPUコアからブートする、ユニークで異質なやつなんだ。秘密めいた未公開のアーキテクチャだよ。" userName="okanat" createdAt="2025/10/26 02:29:04" color="#45d325">}}




{{<matomeQuote body="最初のRpi（2B）を買ってあのブート方式を知った時、それが僕が最後に買ったRpiになったよ。笑。ありがたいことに、他のほとんどのデバイスはU-Bootを使ってるんだけどね。" userName="megous" createdAt="2025/10/26 13:38:13" color="">}}




{{<matomeQuote body="Linuxに限らず、POSTにはビデオデバイスのソフトウェア（BIOS Option ROMかUEFI GOP Drivers）が必要だよね？30年間PCを使ってきた経験ではそうだったんだけど、そうじゃないケースもあるのかな？編集：これはデスクトップマザーボードのファームウェアの話らしいね。一般的だけど、POSTの技術的な必須要件ではないみたいだ。" userName="superkuh" createdAt="2025/10/26 00:07:06" color="#38d3d3">}}




{{<matomeQuote body="AM4/AM5のマザーボードだと、ディスクリートGPUも統合GPUもなしで、APUじゃないGPUなしのCPUを使ってても、Linuxがちゃんとブートするのを見つけたよ。" userName="GreenVulpine" createdAt="2025/10/26 00:48:34" color="#ff5c5c">}}




{{<matomeQuote body="IBM PC互換機では必要だったけど、シリアルコンソールをサポートするUEFIでは必要ないんだよ。IBM PCはグラフィック出力前提で、Option ROMがとんでもないことしてたこともあった。「intel raid card」って聞くと、ROMにWin3.xが入ってたかもってやつを思い出してゾッとするね…。" userName="p_l" createdAt="2025/10/26 12:53:57" color="#785bff">}}




{{<matomeQuote body="Soekris（懐かしいな）って会社がx86のネットワークデバイスを出してたんだ。10/100のポートが4つで、ディスクはCFだった。あれはシリアルコンソールでしか操作できなかったよ、稼働後はSSHでね。今までで最高のルーターだったな。あと、2000年にWindowsがクラッシュした時はシリアルデバッガが使えたけど、今もできるのかな？" userName="edoceo" createdAt="2025/10/26 01:29:05" color="#785bff">}}




{{<matomeQuote body="みんなまだドライバー開発が必要だからね。Windows PCをシリアルポート経由でカーネルデバッグインターフェースを公開するように設定できるんだ。詳しくはこちら: https://learn.microsoft.com/en-us/windows-hardware/drivers/d..." userName="okanat" createdAt="2025/10/26 02:25:27" color="#ff33a1">}}




{{<matomeQuote body="もし海賊版でも見つけられるなら、これはすごい参考書だよ。90年代半ばに俺はこれをLinuxのソースと一緒に使って、自分のOSを作ったんだ：https://www.amazon.com/-/he/Developing-32-Bit-Operating-Syst..." userName="qingcharles" createdAt="2025/10/26 02:23:47" color="#785bff">}}




{{<matomeQuote body="これはIBM PCに限定される話だね。ずっとMDAやCGA、その後はVGAの存在を前提にしてたからさ。でもUEFIはそういうのを全然要求しないし、グラフィカルモードでもテキストモード（VT-UTF8ってやつ）でも動かせるUIフレームワークをサポートしてるよ。" userName="p_l" createdAt="2025/10/26 13:02:12" color="#785bff">}}




{{<matomeQuote body="それは昔のPCハードウェア（1994～1998年頃）で、Linuxが始まったばかりの頃の話だよ。SVGA+の高解像度ビデオ初期化は、ブートローダーがCPUを32ビットモードに切り替える前だと、16ビットモードでやる方が楽だったんだ。GRUBがこの切り替えをやってたから、ビデオ初期化もGRUBの担当になったわけ。1998年以降はGPUメーカーも32ビットでの初期化をサポートしたけど、その古いハードウェアを使ってるユーザーが多かったから、GRUBにこの責任が定着しちゃったんだよね。" userName="phendrenad2" createdAt="2025/10/26 07:31:55" color="#ff33a1">}}




{{<matomeQuote body="リセットベクタからわかるように、80286とその後のCPUは実際にはアンリアルモードで起動するんだ。80386だとコードセグメントのベースアドレスは0xffff0000なんだけど、これは16ビットのCSレジスタを4ビットシフトしただけじゃ得られない値だよね。ディスクリプタキャッシュがリセット時に正しい値でロードされるだけなんだ。リアルモードでCSに書き込むと、キャッシュされた値はCS * 16で上書きされちゃうよ。" userName="gldrk" createdAt="2025/10/26 05:01:03" color="#45d325">}}




{{<matomeQuote body="これもちょっと違うな。アンリアルモードってそういう意味じゃないよ。アンリアルモードは32ビットのデータセグメントの制限であって、コードセグメントの制限じゃないんだ。このケースだと、コードセグメントはまだ16ビット制限だけど、ディスクリプタキャッシュ内のベースアドレスが、リアルモードで普通に想定される範囲の外にあるだけなんだ。" userName="messe" createdAt="2025/10/26 14:29:32" color="#785bff">}}




{{<matomeQuote body="これを読むと、x86やLinuxのブートチェーンって、どれだけ昔からの慣習が積み重なって、後方互換性のためだけに繋がってるのか、改めて痛感するね。" userName="ramanvarma" createdAt="2025/10/26 06:21:43" color="">}}




{{<matomeQuote body="UEFIのポイントを言うなら、最初の3つのセクションをスキップして、カーネルが64ビットモード（”ロングモード”）で直接起動できるってことを言わないとダメでしょ。ページングとかフレームバッファとか、ブートドライブからファイル読む機能とか、全部最初から設定済みなんだから。GRUBなんて全く必要なくなるんだよ。" userName="phendrenad2" createdAt="2025/10/26 07:26:56" color="#ff33a1">}}




{{<matomeQuote body="これだよな。俺ももう10年くらいGRUBもBIOSも見てないし触ってないわ。" userName="rollcat" createdAt="2025/10/26 12:42:45" color="">}}




{{<matomeQuote body="電源ボタンが本当にCPUを直接起動させてるのか、ちょっと疑問に思うんだよね。Intel Management EngineとかAMDの同等品みたいな、常に動いてるCPUが電源ボタンの信号を受け取って、メインCPUを起動させてるんじゃないかな、って考えてもおかしくないし。" userName="gblargg" createdAt="2025/10/26 09:10:56" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それって多分、エンベデッドコントローラーの仕事だよ。ブートローダーがCPUを起動させるよりも前の段階にあるやつだね。Chromebookだと、その部分はcorebootブートローダーと一緒にオープンソースになってるよ。URLもある：https://chromium.googlesource.com/chromiumos/platform/ec/+/H..." userName="panny" createdAt="2025/10/26 09:27:14" color="#785bff">}}




{{<matomeQuote body="このコメントは少し遅れたけど、みんなにとって面白いかもね。タイトルは「OSなしでアセンブリプログラミング」だけど、初期の起動プロセスがどう動くか、どうやってそれに触れるかについて、すごく良い洞察を与えてくれるよ。作者さんに感謝！URL: https://www.youtube.com/watch?v=ZFHnbozz7b4" userName="gosub100" createdAt="2025/10/27 00:11:21" color="#785bff">}}




{{<matomeQuote body="このトピックに関連して、ブートプロセス全体のコードを置き換える一番良い方法って何？信用できないプロバイダーからもらったシステムをクリーンにするとき、低レベルに隠されたマルウェア対策として役立つよね。BIOSからディスクをワイプしたり、Live USBから“fwupdmgr update”を実行してマザーボードファームウェアを更新してからOSを再インストールしたりもできるけど、これで完全にシステムがクリアされるか、よく分からないんだ。" userName="aborsy" createdAt="2025/10/26 03:30:53" color="#ff5733">}}




{{<matomeQuote body="この記事は、CPUがReal Modeに入る前に密かに実行する、マイクロコードのロードや検証といったことをカバーしてないね。" userName="Dwedit" createdAt="2025/10/26 18:21:08" color="">}}




{{<matomeQuote body="ネガティブなコメントが多いから、非専門家として、LLMに同じタイトルの記事を生成させてみたんだ。そしたら、この記事よりも分かりやすくて技術的にも正確だったと思うよ。実際、LLMにその記事とこの記事、それにネガティブなコメントを比較させたんだ。どんな技術ブログの作者も、投稿前にLLMを使って、ギャップや矛盾がないか確認すべきだね。" userName="ra1231963" createdAt="2025/10/26 14:33:50" color="#ff5c5c">}}




{{<matomeQuote body="ARMや多くの非x86アーキテクチャでは、たいてい一連のブートローダーを使ってRAMを起動させたり、ハードウェアの一部をウェイクアップしたり、デバイストゥリーB L O B S（Device Tree blobs）を読み込んでハードウェア構成を把握したりするよ。" userName="e-dant" createdAt="2025/10/26 03:01:36" color="#ff5733">}}




{{<matomeQuote body="詳しい解説ありがとう！ARM版もぜひ見てみたいな！" userName="a022311" createdAt="2025/10/26 12:06:54" color="#ff5733">}}




{{<matomeQuote body="Facebookの面接で「Linuxサーバーの起動プロセスを説明して」って聞かれたのを思い出したよ。全然ヒントなしで「大事だと思う詳細を話して」ってだけだったな。結局、ダブリンには行かなかったけど、まあ、あの時は縁がなかったってことかな。" userName="darkwater" createdAt="2025/10/26 09:30:09" color="">}}




{{<matomeQuote body="昔ながらのハッカー魂と、物事を説明してくれる独立系ブログがHacker Newsのトップに上がってるの、いいね。うんざりするようなエージェントだの、雰囲気だのって話から変わって、こういうのが出てくるのは大歓迎だわ。" userName="neoattikos" createdAt="2025/10/26 01:02:06" color="">}}




{{<matomeQuote body="Hacker Newsのトップ5にこの3つの記事が入ってるのって面白いね。<br>今日は「低レベル技術への感謝デー」って感じかな。<br>  * The Linux Boot Process: From Power Button to Kernel<br>  * The Journey Before main()<br>  * How programs get run: ELF binaries (2015) (lwn.net)" userName="hamasho" createdAt="2025/10/26 00:16:47" color="#ff5c5c">}}




{{<matomeQuote body="マジで待望だったよ！最近のHNはAIニュースの広告みたいになってたからさ。<br>iOS/Androidシステム向けの低レベルな詳細情報って誰か知らない？みんな家に使ってないスマホがいくつかあるだろうし、ハックしたり勉強したりするのに良いDUTになると思うんだ。RFサブシステムがどう動くかとか、SDRとして再利用する方法とか、すごく知りたいな。" userName="rramadass" createdAt="2025/10/26 06:35:55" color="#ff5733">}}




{{<matomeQuote body="本当に新鮮な変化だよね、同意するよ。<br>AppleやAndroidは勧められないけど、PinePhoneにはits SoC（Allwinner A64）の低レベルドキュメントがあるよ。Apache NuttxがPPに移植されたチュートリアルシリーズも良いね。初期の一つはこれ: https://lupyuen.org/articles/uboot<br>まだブートプロセスも無線チップの機能も理解できてないけど、無線チップはモバイルネットワーク接続のためにライセンスされてるから、かなりロックダウンされてると思うな。大抵、正体不明のバイナリブロブが動いてるだけだよ。" userName="whitehexagon" createdAt="2025/10/26 19:54:19" color="#ff5733">}}




{{<matomeQuote body="いいね、ありがとう。<br>僕がこの分野に触れたのはHarald WelteのOpenMokoの仕事がきっかけだったな（古いのがまだどこかにあるよ）。でもiPhone/Androidの登場で追いつけてないや。Haraldの古くてもまだ役立つプレゼン「Anatomy of smartphone hardware: Dissecting contemporary cellphone hardware」はこれね: https://media.ccc.de/v/25c3-3008-en-anatomy_of_smartphone_ha...<br>あと、Roger Yeの古い本「Embedded Programming with Android: Bringing Up an Android System from Scratch」もかなり役立つと思うよ。" userName="rramadass" createdAt="2025/10/27 03:50:22" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
