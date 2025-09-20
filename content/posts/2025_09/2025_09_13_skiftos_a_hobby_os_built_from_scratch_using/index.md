+++
date = '2025-09-13T00:00:00'
months = '2025/09'
draft = false
title = 'C/C++でゼロから構築！ARM,x86,RISC-V対応の自作OS SkiftOSが衝撃の完成度！'
tags = ["OS開発", "C++", "マルチアーキテクチャ", "フルスクラッチ", "システムプログラミング"]
featureimage = 'thumbnails/red3.jpg'
+++

> C/C++でゼロから構築！ARM,x86,RISC-V対応の自作OS SkiftOSが衝撃の完成度！

引用元：[https://news.ycombinator.com/item?id=45229414](https://news.ycombinator.com/item?id=45229414)




{{<matomeQuote body="すごい成果だよな！この人、6年でマイクロカーネルだけじゃなく、ビルドシステム、UEFIブートローダー、グラフィカルシェル、UIフレームワーク、ブラウザエンジンまで作ったんだぜ。10xデベロッパーの話って、都市伝説じゃなくて、むしろ控えめに言われてるんだなって思うわ。" userName="thegeomaster" createdAt="2025/09/13 09:39:27" color="#38d3d3">}}




{{<matomeQuote body="そして、とある類似プロジェクトと違って、神の導きなしにこれを達成したんだ。マジすごい！" userName="nylonstrung" createdAt="2025/09/13 11:01:57" color="#38d3d3">}}




{{<matomeQuote body="史上最高のプログラマーだな。神がかり的な知性を持ってるわ。" userName="cidd" createdAt="2025/09/14 04:53:54" color="#45d325">}}




{{<matomeQuote body="Messiah.aiなしでね :D" userName="reactordev" createdAt="2025/09/13 11:38:56" color="">}}




{{<matomeQuote body="マジかよ。あのドメイン、駐車されてて125,000ドルで売りに出てるって！？やばいな。" userName="cryptoz" createdAt="2025/09/13 11:50:28" color="">}}




{{<matomeQuote body="そんなのまだマシだろ。god.aiを見てみろよ…。ドメインパーキングが復活してるんだ。もう.godっていうTLD作ってもいいくらいだよな。" userName="zenmac" createdAt="2025/09/13 12:57:09" color="">}}




{{<matomeQuote body="＞TLD for .god<br>“IDとアクセス管理”システムには良いTLDになりそうだね :)" userName="TuxSH" createdAt="2025/09/13 23:46:00" color="">}}




{{<matomeQuote body="Muskが全部独り占めしそうだけどな。" userName="KerrAvon" createdAt="2025/09/13 22:09:34" color="">}}




{{<matomeQuote body="SerenityOSの進捗レポート、読むと面白いかもね。ここから見れるよ: https://serenityos.org/" userName="Levitating" createdAt="2025/09/13 18:58:08" color="#38d3d3">}}




{{<matomeQuote body="YouTubeの動画これね: https://www.youtube.com/watch?v=LW_s6EqOxqY" userName="Rohansi" createdAt="2025/09/14 01:05:34" color="">}}




{{<matomeQuote body="うん、ほんとすごいよね。" userName="rayiner" createdAt="2025/09/13 13:41:41" color="">}}




{{<matomeQuote body="まさか今日メインページで自分のプロジェクトを見かけるとはね‘^^<br>今ビルドは壊れててフルOSはテストできないんだけど、LinuxやmacOSで個別のアプリは`./skift.sh run --release ＜app-name＞`で実行できるよ。利用可能なアプリは`ls ./src/apps`で見れるって。" userName="monax" createdAt="2025/09/13 06:14:10" color="#38d3d3">}}




{{<matomeQuote body="ブラウザ以外は上のやり方でOK。ブラウザは`./skift.sh run --release vaev-browser -- ＜url-or-file＞`を使ってね。HTTPスタックは最低限だからHTTP（HTTPSはなし）しか対応してないんだ。自分のサイトでは動くけど他は動くか分からない。今まで時間はネットワークよりスタイリングとレイアウトエンジンに費やしてるよ。" userName="monax" createdAt="2025/09/13 06:18:23" color="#45d325">}}




{{<matomeQuote body="達成おめでとう、すごいね！マイクロカーネルは“Zirconに影響された”って言ってたけど、sel4、Minix、openQNXみたいな他のアーキテクチャも研究した？マイクロカーネルの重要な設計選択は何？それについて書かれたドキュメントはある？パフォーマンス測定はした？どのマイクロカーネル設計とパフォーマンスが比較できると思う？" userName="Rochus" createdAt="2025/09/13 10:54:49" color="#45d325">}}




{{<matomeQuote body="UNIX以外の道を模索してるのに拍手喝采だよ。" userName="pjmlp" createdAt="2025/09/13 06:21:54" color="">}}




{{<matomeQuote body="ありがとう！Skiftは僕が好きなOSのアイデアを組み合わせたものなんだ。UIはSwiftUI／Flutterから、マイクロカーネルはZirconから影響を受けてる。Plan 9みたいに全部がURLってアイデアもあるよ。NTやDarwinからもいくつか影響を受けてるけど、どれだったか忘れちゃった。" userName="monax" createdAt="2025/09/13 06:26:33" color="#ff5c5c">}}




{{<matomeQuote body="本当にしっかりしたアイデアみたいだね。こんなに多様なニッチな世界からインスピレーションを得るなんて、よっぽど経験が豊富なんだろうね。頑張ってね！" userName="keyle" createdAt="2025/09/13 09:59:38" color="#38d3d3">}}




{{<matomeQuote body="Xerox PARC、Oberon、NeXTSTEP/NeWSスタイル、Powershellのアイデアを取り入れて、シェル、UI、動的にロードされるコード（またはOS IPC）によってOS全体をカスタマイズできるようにするのは、面白いかもしれないね。単なるアイデアだけど、全体的に興味深いプロジェクトだよ。頑張ってね。" userName="pjmlp" createdAt="2025/09/13 10:17:13" color="#785bff">}}




{{<matomeQuote body="Skift、Karm、Hjert、Opstart。ノルウェー人だけど、このシステムの名前とコンポーネントがデンマーク語（Skift、Karm、Opstart）やデンマーク語にインスパイアされたもの（Hjert）に聞こえるんだ。合ってるかな？:)" userName="QuantumNomad_" createdAt="2025/09/13 11:41:53" color="">}}




{{<matomeQuote body="うん、その通り。デンマーク語の響きがクールだと思ったんだ。" userName="monax" createdAt="2025/09/13 14:11:07" color="">}}




{{<matomeQuote body="Hi monax、プロジェクトをどう始めたのか聞きたいな。僕も今、OSの基礎を学ぶためにSkiftOSのようなマイクロカーネルを実装しようとしてるんだけど、どう始めたらいいか分からないんだ。こんなプロジェクトを始める時、最初に取り組むべきことは何？" userName="detached_prx" createdAt="2025/09/13 14:37:59" color="#ff5c5c">}}




{{<matomeQuote body="何を言えばいいか分からないけど、どこからどう始めるかはそんなに重要じゃないと思うよ。大事なのは、とにかく続けること。この手のプロジェクトは大変だけど、進歩し続ければ、いずれ目標にたどり着けるからね。" userName="monax" createdAt="2025/09/13 14:49:33" color="#ff33a1">}}




{{<matomeQuote body="返信ありがとう、もう一つ質問。アーキテクチャ設計や初期実装を進めるにあたって、既存のコードベースや本を参考にした？もしそうなら、自分のビジョンを構築しようとしながら、安易に実装を”借りてしまう”落とし穴に陥らずに、それらのリソースをどう活用した？あなたがここでやったことは本当にクールで刺激的だよ :)。" userName="detached_prx" createdAt="2025/09/13 15:40:01" color="#ff5c5c">}}




{{<matomeQuote body="ホビーOSの話題が出るといつもこの本を紹介してるよ。僕も90年代にGUI OSを自作したんだけど、この本なしでは無理だった。よくある”影の図書館”でコピーが見つかるんじゃないかな。URL: https://us.amazon.com/Developing-32-Bit-Operating-System-Cd-..." userName="qingcharles" createdAt="2025/09/13 17:44:44" color="#38d3d3">}}




{{<matomeQuote body="このプロジェクトを今の段階まで持ってくるのに、どれくらいの時間がかかったの？" userName="DeathArrow" createdAt="2025/09/13 07:27:46" color="">}}




{{<matomeQuote body="何度か書き直したんだけど、今のこのバージョンは2年前に始めたものだよ。" userName="monax" createdAt="2025/09/13 07:36:48" color="">}}




{{<matomeQuote body="最初のバージョンはどれくらいかかったの？" userName="gl-prod" createdAt="2025/09/13 13:11:07" color="">}}




{{<matomeQuote body="このプロジェクトなら、履歴書はたった2行でOK！メールアドレスとプロジェクトのウェブサイトだけ書けば、いろんな会社に引っ張りだこだよ。" userName="hu3" createdAt="2025/09/13 16:03:46" color="#ff5c5c">}}




{{<matomeQuote body="え、これ全部自分で作ったの？！すごいな！C/C++デベロッパーとしてOSの作り方は知ってるけど、せいぜいアイデアを出すくらいで、全部自分で書くなんて言葉も出ないよ。" userName="FerkiHN" createdAt="2025/09/13 12:33:58" color="#45d325">}}




{{<matomeQuote body="実はブラウザエンジンは手伝ってもらったんだ。" userName="monax" createdAt="2025/09/13 14:20:19" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="コードは本当によく書かれてて、すごく分かりやすくてモダンだね、お見事！ところで、さっきコンパイルしたアプリがなんでmacOSで動くの？" userName="rubymamis" createdAt="2025/09/13 09:28:36" color="#45d325">}}




{{<matomeQuote body="フレームワークにはOS抽象化レイヤーがあって、SDLを使ってウィンドウとユーザー入力を処理してるんだ。" userName="monax" createdAt="2025/09/13 14:17:02" color="#ff33a1">}}




{{<matomeQuote body="普段の仕事があるデベロッパーが、どうやったらこんなプロジェクトを作れる時間なんて作れるの？9時から5時まで仕事してたら無理だと思うんだけど。" userName="j1000" createdAt="2025/09/13 11:46:46" color="">}}




{{<matomeQuote body="無理だよ！ほとんどは、俺の人生でほとんど社会生活がなかった時期に書いたんだよ ’^^" userName="monax" createdAt="2025/09/13 14:15:31" color="">}}




{{<matomeQuote body="とにかく、おめでとう！これは本当にすごいことだよ！ :)" userName="j1000" createdAt="2025/09/18 09:29:39" color="">}}




{{<matomeQuote body="俺も同じこと思ってたよ。" userName="masijo" createdAt="2025/09/13 12:57:31" color="">}}




{{<matomeQuote body="セキュリティに関してどんなアイデアを持ってるの？アプリはメモリやハードウェアにフルアクセスできるの？パーミッションシステムはあるのかな？マイクロカーネルがどう機能するか、あまり詳しくなくてごめんね。" userName="spuz" createdAt="2025/09/13 08:58:49" color="#38d3d3">}}




{{<matomeQuote body="アプリはメモリやハードウェアに好き勝手アクセスできないんだ。カーネルが許可したものだけ見えるようにしてる。ドライバはユーザー空間にあって、アプリは「ケーパビリティ」っていうハンドル経由でやり取りするんだ。許可がないと何もできない、しっかりアクセス制御されてるってことだね。" userName="monax" createdAt="2025/09/13 09:09:08" color="#ff5733">}}




{{<matomeQuote body="ファイルシステムのアクセス権はどうなってるの？どのアプリでもユーザーの全ファイルにフルアクセスできるの？それとも、そのアプリ専用のファイルだけ？" userName="Panzerschrek" createdAt="2025/09/13 10:34:35" color="#785bff">}}




{{<matomeQuote body="アプリケーションはそれぞれ独自のネームスペースを持つよ。ユーザーファイルへのアクセスは、ディレクトリやファイルごとに権限が与えられた場合だけ。つまり、細かくアクセスを制御できるってことだね。" userName="monax" createdAt="2025/09/13 10:38:53" color="#785bff">}}




{{<matomeQuote body="このアプローチ、すごくいいね！OSの公式サイトのトップページで紹介すべきだよ。" userName="Panzerschrek" createdAt="2025/09/13 12:33:06" color="">}}




{{<matomeQuote body="面白いね。ありがとう。" userName="spuz" createdAt="2025/09/13 09:53:21" color="">}}




{{<matomeQuote body="これ、マジでクール！作った人、おめでとう！どこかにビデオデモとかある？まさかブラウザエンジンまで自作したなんて、本当に驚いたよ！" userName="pkphilip" createdAt="2025/09/13 06:02:54" color="#38d3d3">}}




{{<matomeQuote body="ビデオデモ、あったら最高だろうな。" userName="zhainya" createdAt="2025/09/13 10:32:47" color="">}}




{{<matomeQuote body="ウェブサイトに写真と並んで、カルーセル形式で埋め込むのがいいんじゃないかな。" userName="exikyut" createdAt="2025/09/13 12:13:51" color="">}}




{{<matomeQuote body="これ、初めての作品じゃないよね…コードを徹底的に見てみたよ。lib-sdl、impl-efi、co_return、co_await、try、構成可能なクラスを見つけた。自分のコードがこの優雅さに比べるとぐちゃぐちゃに見えるよ。モジュールも完璧！" userName="reactordev" createdAt="2025/09/13 11:53:10" color="#45d325">}}




{{<matomeQuote body="このプロジェクトのオーナー、素晴らしいね！よくやったよ。これぞモダンC++（モジュール採用）で、さらに改良されてる。GCとかQoL改善も入ってるし、co_try、.unwrap()、asyncなんかを見るとRustの影響も感じるな。今後の計画はどう考えてる？" userName="thorn" createdAt="2025/09/13 16:51:13" color="#ff5c5c">}}




{{<matomeQuote body="めちゃくちゃすごいね！GPUはサポートしてるの？それともUIは全部CPUレンダリング？すごく綺麗だよ。" userName="brodo" createdAt="2025/09/13 09:29:40" color="#45d325">}}




{{<matomeQuote body="CPUレンダリングだよ。GPU対応は今後の計画に入ってるよ。" userName="monax" createdAt="2025/09/13 12:55:39" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！もっと多くのGPOSが必要だよね。現状の主要3つに縛られすぎてたよ。もっと良いものを作る余地はたくさんあると思うよ。[misaligned incentives?]" userName="the__alchemist" createdAt="2025/09/13 14:07:00" color="#785bff">}}




{{<matomeQuote body="ちょっと話は逸れるけど、よく知らないから教えて欲しいんだけど、OS開発でマイクロカーネルアプローチを選ぶメリットとデメリットって、直感的にどういう感じなの？" userName="tampueroc" createdAt="2025/09/13 10:29:56" color="">}}




{{<matomeQuote body="最近の商業OSはほぼハイブリッドアーキテクチャなんだ。サブシステムは、パフォーマンス的に問題なくて時間があればカーネルからユーザー空間へ移されることが多いよ。戻ることは稀だけどね。マイクロカーネルっていう言葉は学術的なもので、OSデザイナーは昔から安定性や開発速度のためにコードをユーザー空間で動かすのが良いって知ってるんだ。結局、この概念をどこまで突き詰めるかの問題だね。MicrosoftもAppleもAndroidも、GUIやファイルシステムの一部をユーザー空間に移してきた歴史があるよ。" userName="mike_hearn" createdAt="2025/09/13 12:43:30" color="#45d325">}}




{{<matomeQuote body="なんでTTY-PTY機能がLinuxカーネルからユーザー空間に移されないのか教えてくれない？Plan 9は昔からやってたのに。テキストだけの操作を楽しんでるユーザーが、なんで未だに古い『ラインディシプリン』やANSI制御シーケンスとか、TERMINFOデータベースに頼ってるのかも理解できないんだ。昔のパフォーマンスのために導入された無駄が、現代の技術で簡単に作り直せるのに残ってるのはおかしいでしょ？なんで1960年代、70年代の専用端末をエミュレートし続けてるの？ネットワークも速いし、RAMも安いから、カーソルアドレッシングなんて不要で、毎回画面全体を再送すればいいはずだよ。通信プロトコルも、今となっては理由もないのにステートフルなのはおかしいと思うんだ。" userName="hollerith" createdAt="2025/09/13 13:57:37" color="#ff5733">}}




{{<matomeQuote body="プログラマーの時間は貴重だし、レガシーコードに手を出したがる人は少ないから、多くのものがカーネルに残ってるんだ。カーネルからコードを出すのは、新しい問題を解決できる明確な仕様がないと、逆に遅くなったり、メリットがなかったりするよ。例えば、コアなファイルシステムをユーザー空間に移してクラッシュしたら、全部のプロセスが巻き添えになるでしょ？結局パニックして再起動するのと変わらないなら、カーネル内に置いとく方がいいんだ。GNU Hurdみたいにセキュリティの問題も生む可能性があるしね。だから最初はモノリシックにして、準備ができたら切り出すのが良いんだよ。Linuxはカーネルとユーザー空間が独立してるから、機能移動も難しいしね。ターミナルを改善したいなら、コードの移動じゃなくて新しいプロトコルを作るべきだよ。" userName="mike_hearn" createdAt="2025/09/13 17:58:33" color="#ff5733">}}




{{<matomeQuote body="『ファイルシステムプロセスがクラッシュしたら全プロセスがクラッシュして再起動するのと変わらない』って言ってたけど、必ずしもそうじゃないと思うんだ。設計次第では、各FSプロセスがマウントポイントやFSタイプごとにリクエストを処理できるし、それだけで安定性は上がるでしょ。それに、接続が切れても、サーバーがハンドル情報をカーネルに保存しておけば、プロセスが再開した時に復旧できるはずだよ。乗り越えられない問題じゃないと思うな。" userName="fluoridation" createdAt="2025/09/13 22:12:29" color="#ff33a1">}}




{{<matomeQuote body="たしかに、それは全部解決できるね。FUSEもその例だよ。俺ならプロトコルをステートレスにしてfdの状態をクライアントに持たせるな。要は、OS設計者はトレードオフを理解した上で、限られた予算の中でどう時間を配分するか決めるんだ。クラッシュバグは有限だからね。複雑な再設計で少しだけ失敗を減らすか、バグ修正に時間を使うか。コードが複雑でサードパーティ製なら、FUSEやグラフィックドライバみたいに外に出す価値はある。でも、コアなファイルシステムみたいに小さくて安定しててパフォーマンス重視ならカーネル内に残すのが合理的だ。ブラウザもマイクロカーネル的だけど、何を分割するかは慎重だよ。マイクロカーネルって概念は、エンジニアリングのトレードオフを無視して全部ユーザー空間に置けって言うだけで、具体的なメリットを語らないから、今はほとんど使われない学術的なものなんだ。" userName="mike_hearn" createdAt="2025/09/14 07:27:57" color="#ff5c5c">}}




{{<matomeQuote body="『クラッシュバグは有限だから、再設計よりバグ修正』って言うけど、その有限ってすごく大きい数になることもあるよ。安定性を高める再設計の方が絶対良いに決まってるでしょ。そうじゃないなら、ユーザーモードのコードだって『メモリ保護なんて不要』って話になるよ。CloudStrikeのバグ覚えてる？あのドライバーがユーザーモードだったら、システムは動き続けてエラーを報告できたはずだよ。ブートループになるより、ずっとマシでしょ。" userName="fluoridation" createdAt="2025/09/14 07:46:45" color="#45d325">}}




{{<matomeQuote body="OSのコードはユーザーアプリより安定してるし、更新もゆっくりだね。ブラウザみたいな一部のユーザー空間アプリはマイクロカーネルだけど、多くのアプリは毎週更新されて不安定さも許容されがちだよ。" userName="mike_hearn" createdAt="2025/09/16 08:01:43" color="#785bff">}}




{{<matomeQuote body="もう一回言うね。カーネルからコードを出すのは大変で、バグを直す方が早いこともあるんだ。でもAVスキャナーやGPUドライバーみたいにバグが次々出るやつは、カーネル外に出す方がいいんだよ。CrowdStrikeの多くはカーネルモードで動いてないし、MicrosoftもAVの一部をカーネル外に出すべきだったかもね。AVはどこにでも潜り込むから、Microsoftが排除するのは技術的じゃなく独禁法の問題になりそうだ。" userName="mike_hearn" createdAt="2025/09/16 17:57:12" color="#38d3d3">}}




{{<matomeQuote body="DEC VTターミナルのプロトコルがANSI X3.64標準なせいで、この問題は解決も最新化もされてないんだと思うよ。詳しくはこれ見てね<br>https://en.m.wikipedia.org/wiki/ANSI_escape_code" userName="whitten" createdAt="2025/09/13 17:03:10" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="組み込み用の簡単なCPUボードだと、グラフィックがないやつもあるから、シリアルポート経由でターミナルとかターミナルエミュレータを使って操作しなきゃいけないんだ。" userName="jonjacky" createdAt="2025/09/13 21:47:55" color="">}}




{{<matomeQuote body="汎用OSならそうかもね。でもNintendo 3DS OSとかSwitch OSは専用のマイクロカーネルベースで、数億台のデバイスに搭載されてるよ。DMA-330 CoreLink DMAの扱い方次第だけど、これもそうとカウントできるかもね。" userName="TuxSH" createdAt="2025/09/13 16:47:19" color="#ff33a1">}}




{{<matomeQuote body="マイクロカーネルは考え方はきれいだし安全だけど、実際はユニカーネルよりだいたい遅いんだ。" userName="logicchains" createdAt="2025/09/13 12:15:05" color="">}}




{{<matomeQuote body="Gernot Heiserは最後の点については絶対反対するだろうねD" userName="wucke13" createdAt="2025/09/13 12:31:52" color="">}}




{{<matomeQuote body="これはチャンスだね！まっさらな設計なんだから、階層型ファイルシステムなんて捨ててRDBMSに置き換えるべきだよ。" userName="boogerlad" createdAt="2025/09/13 13:30:47" color="#ff5c5c">}}




{{<matomeQuote body="うん、RDBMSは良さそうだね。具体的な実装はこれから考えなきゃ。" userName="monax" createdAt="2025/09/13 14:19:34" color="">}}




{{<matomeQuote body="記事ができたら読みたいなぁ。データベースみたいなストレージシステムを備えたホビーOSを作りたいんだけど、デザインでめっちゃ悩んでて動けないんだ。" userName="throw10920" createdAt="2025/09/13 20:28:36" color="">}}




{{<matomeQuote body="すごいプロジェクトだね！SerenityOSみたいに、次のCCC CTFでSkiftOSが見られるのが楽しみだよ！[0] https://2019.ctf.link/internal/challenge/1fef0346-a1de-4aa4-..." userName="darkamaul" createdAt="2025/09/13 16:45:44" color="#45d325">}}




{{<matomeQuote body="かなり大変な作業だったろうね。カスタムビルドシステムを作ったのは驚きだけど、C++のビルドシステムの状態を考えると責められないな。<br>あと、なんでOS開発者ってブラウザを作りたがるんだろう？ブラウザってOSにほとんど依存しないんじゃないの？UIはめっちゃ良い感じ！" userName="TinkersW" createdAt="2025/09/13 18:35:48" color="#ff5733">}}




{{<matomeQuote body="ブラウザはただのアプリケーション実行環境だよ ;)" userName="monax" createdAt="2025/09/13 18:38:05" color="">}}




{{<matomeQuote body="SkiftOSすごいね。これって、早期リタイアした後に趣味でしかできないと思ってた計画とそっくりなんだ。まさかサイドプロジェクトでここまでできるとは想像してなかったよ。" userName="neilv" createdAt="2025/09/14 03:32:14" color="#ff33a1">}}




{{<matomeQuote body="きれいなUI以外に何があるの？ネットワークサポート、サウンド、どんなファイルシステムに対応してる？マルチユーザーは？アプリケーションの分離はどうなってるの？こういう情報がサイトのどこかに表示されてるといいんだけどな。" userName="Panzerschrek" createdAt="2025/09/13 06:16:52" color="#45d325">}}




{{<matomeQuote body="これはマイクロカーネルベースのOSだよ。僕にとっては学習と楽しむためのサイドプロジェクトって感じ。NixOSの/storeみたいなのを実装してるんだ。ハードウェア、ネットワーキング、サウンド、ファイルシステムはまだ超ベーシックな状態。これまでの作業は、ほとんどフレームワークといくつかのサンプルアプリ、あとブラウザに注力してるよ。" userName="monax" createdAt="2025/09/13 06:22:33" color="#ff5733">}}




{{<matomeQuote body="うーん…もっと幅広いハードウェアのサポートはどうなるの？SkiftOSがマイクロカーネルだってことを考えると、他のOS（Linuxとか）のフリーなドライバーを移植したり適応させたりするのって、どれくらい難しいんだろう？ :)" userName="ktosobcy" createdAt="2025/09/13 18:02:44" color="#ff5c5c">}}




{{<matomeQuote body="オフトピックでごめん。PalmSourceとかがBeOSのコードをオープンソースにしない理由が分からないよ。ライセンスの意地で20年前のコードを持ち続けても何の得にもならないのに。VCコミュニティが善意を語る割に、これって一番簡単なことじゃん？会社が倒産したら、未完成の権利は投資家に渡して、他のスタートアップのためにオープンソースにするっていう資金調達時の条項を作っておけば、もっと素晴らしいものが何度も生まれてたはずなのにね。愚痴終わり！" userName="DesiLurker" createdAt="2025/09/13 19:18:37" color="#ff33a1">}}




{{<matomeQuote body="OSみたいな大規模なものをオープンソース化するのは金がかかるんだよ。権利関係の調査も必要だし、経営陣から見たら金をドブに捨てるみたいに見えるんだってさ。" userName="KerrAvon" createdAt="2025/09/13 22:15:44" color="#785bff">}}




{{<matomeQuote body="それってstrawmanだよ。Be Inc.からACCESS Co.まで所有者が何回も変わったけど、その度にデューデリジェンスはしてたはずじゃん？一部のモジュールだけでもBSD-3とかMITにすれば意図が伝わるのにさ。VCってこの20年、そんなことしたことないよね。結局、金儲けが目的なんだよ。" userName="DesiLurker" createdAt="2025/09/15 17:49:48" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ良さそうじゃん。ブックマークしといたわ。macOSでまだビルドできてないけど、カスタムGCCをビルドしなくていいなら大歓迎だよ。" userName="anta40" createdAt="2025/09/13 14:22:43" color="">}}




{{<matomeQuote body="すごい！AIでコードをどれくらい書いたのか気になるな。" userName="dataflow" createdAt="2025/09/13 22:58:42" color="">}}




{{<matomeQuote body="Copilotを早くから使ってたけど、だんだん使わなくなったな。AIアシスタント、エディタから全部消したよ。IDEへの統合って気が散るし邪魔だし、コーディングが楽しいから、楽しいとこまで自動化する必要なくなくない？" userName="monax" createdAt="2025/09/14 06:08:01" color="">}}




{{<matomeQuote body="こういうプロジェクトは本当にどれも美しくて素晴らしいね。おめでとう。" userName="nerflad" createdAt="2025/09/13 13:08:57" color="">}}




{{<matomeQuote body="めっちゃクール！6年間も作り続けてるなんてすごいね！" userName="akash100x" createdAt="2025/09/13 07:33:16" color="">}}




{{<matomeQuote body="とても素敵だね。" userName="xbar" createdAt="2025/09/13 21:34:57" color="">}}




{{<matomeQuote body="美しいね。" userName="drob518" createdAt="2025/09/13 11:32:44" color="">}}




{{<matomeQuote body="くそ、これマジで良いじゃん。The Registerの人がこれ見てくれるといいな。" userName="binocry" createdAt="2025/09/13 07:28:04" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
