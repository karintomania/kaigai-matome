+++
date = '2025-07-18T00:00:00'
months = '2025/07'
draft = false
title = 'io_uringで爆速化！新世代のls、lsrが登場'
tags = ["Linux", "io_uring", "CLIツール", "高速化", "ファイル操作"]
featureimage = 'thumbnails/purple4.jpg'
+++

> io_uringで爆速化！新世代のls、lsrが登場

引用元：[https://news.ycombinator.com/item?id=44604050](https://news.ycombinator.com/item?id=44604050)




{{<matomeQuote body="https://tangled.sh/@rockorager.dev/lsr" userName="mpweiher" createdAt="2025/07/18 12:40:41" color="">}}




{{<matomeQuote body="プロジェクトの作者だよ！`lsr`についての詳しい記事をここに書いたから見てね：https://rockorager.dev/log/lsr-ls-but-with-io-uring" userName="rockorager" createdAt="2025/07/18 15:46:31" color="#ff33a1">}}




{{<matomeQuote body="素晴らしい記事だね。抽象化のコストを測ってるんじゃないかな。ロケールやUTF-8対応のような多機能ルーチンは処理が多くて遅い。SunのI18Nプロジェクトで経験したが、対応環境を増やすほど速度は落ちた。昔のUNIXの`ls(1)`は7ビットASCIIと12ビットのメタデータで超速かった。VFS、文字セット、色表示などが小さな遅延を積み重ね、`ls`を遅くしているんだ。" userName="ChuckMcM" createdAt="2025/07/18 19:08:55" color="#45d325">}}




{{<matomeQuote body="”神が意図した12ビットのメタデータ”って言うけど、それデニス・リッチーだよ。君が考えてるのは、天国にいるもう一人の白ひげのヤツだね。" userName="spauldo" createdAt="2025/07/19 07:22:24" color="">}}




{{<matomeQuote body="i18nは1985年頃のDECに起源があるとする人もいるよ。<br>http://www.i18nguy.com/origini18n.html" userName="CalChris" createdAt="2025/07/19 09:07:16" color="">}}




{{<matomeQuote body="俺が発明したなんて意味じゃないよ。あの略し方を初めて見たのがあの時だったってだけ。Sunでそう呼んだヤツは他の取り組みも知ってたんだろうけど、俺はシステムのグループのただの駆け出しプログラマーだったからね。Sunで物事を名付ける権限なんて、ずいぶん後になってから手に入れたんだ。" userName="ChuckMcM" createdAt="2025/07/19 18:47:41" color="">}}




{{<matomeQuote body="GNU lsに対する速度向上は、どのくらいローカライズ機能の欠如によるもの？君の結果テーブルは俺のローカルでの観察とほぼ一致するね。13kファイルあるディレクトリで、`ls -al`は33msかかる。でもその時間の25%は`libc`の`strcoll`で使われてるんだ。`LC_ALL=C`だと27msで、君のプログラムの時間に近づくよ。" userName="jeffbee" createdAt="2025/07/18 16:01:58" color="#45d325">}}




{{<matomeQuote body="初期の表には`busybox`を入れてなかったから、ブログ記事にはないけどリポジトリにはデータがあるよ。でも`busybox`はロケールサポートがないってほぼ確信してるから、ロケールサポートなしのGNU lsは`busybox`に近いんじゃないかな。ロケールはもっと複雑なソートも持ち込むから、それも要因かもしれないね。" userName="rockorager" createdAt="2025/07/18 16:10:18" color="#785bff">}}




{{<matomeQuote body="俺のbfsプロジェクトもio_uringを使ってるよ：https://github.com/tavianator/bfs/blob/main/src/ioq.c<br>lsrがbfs -lsとどう比較されるか気になるね。bfsは複数のスレッドが有効なときだけio_uringを使うんだけど、bfs -j1でも使う価値があるかも。" userName="tavianator" createdAt="2025/07/18 16:27:00" color="#ff5c5c">}}




{{<matomeQuote body="へえ、すごいね。`find`も`ls`みたいに`io_uring`の恩恵を受けられるツールだと思ってたんだ。シングルスレッドのアプリケーションでも、バッチ処理のメリットのために`io_uring`を有効にする価値は絶対あると思うな。カーネルはそれでも並行して処理するためにスレッドプールを立ち上げるけど、コードベースでそれを管理する必要がないからね。" userName="rockorager" createdAt="2025/07/18 16:40:10" color="#ff5733">}}




{{<matomeQuote body="ちょっと前に試したんだけど、あんまり効果なかったんだ。でも、それはstat()のサポートを追加する前だったからね。stat()をバッチ処理するのはきっといい感じになるんじゃないかな。" userName="tavianator" createdAt="2025/07/18 16:57:49" color="">}}




{{<matomeQuote body="grepとかripgrepはどうなの？ripgrepはもうio_uringに移行したの？" userName="mshockwave" createdAt="2025/07/18 17:10:05" color="">}}




{{<matomeQuote body="いや、ripgrepはio_uring使ってないよ。今後使うかもわかんないな。" userName="burntsushi" createdAt="2025/07/18 17:20:28" color="">}}




{{<matomeQuote body="なんで？ripgrepのやってることには合わないの？ripgrepがやってる”ストリーミング”の”一行ずつ”のI/Oって、非同期I/Oに合うんじゃないの？" userName="porridgeraisin" createdAt="2025/07/18 18:41:26" color="">}}




{{<matomeQuote body="多くの作業で、ripgrepはファイルの検索にほとんどの時間を使ってるんだ。それに、実装するのがめちゃくちゃ大変。ripgrepはプラットフォームごとの標準ファイルシステムAPIの上に作られてるから、io_uringを使うってなると、Linux以外の環境用の既存コードに加えて、syscallパターンが違う新しいコードが大量に必要になるんだよね。だから、そもそもやる価値があるかどうかわかるだけでも、かなりの作業が必要になる。それに、ファイル検索に時間がかかってるってことは、理論的にもio_uringの影響には限界がある。期待できるのはディレクトリツリーの探索中にsyscallをバッチ処理することだけど、どれくらい役立つかは全然わからないな。" userName="burntsushi" createdAt="2025/07/18 19:35:01" color="#ff5733">}}




{{<matomeQuote body="io_uringはgetdentsをサポートしてないと思うよ（何度もパッチが提案されてるけどね）。だから、必要な場合は非同期stat()はできるけど、それ以外は無理かな。" userName="Sesse__" createdAt="2025/07/18 21:58:20" color="#ff33a1">}}




{{<matomeQuote body="ああ。じゃあ、それは完全にダメだね。ripgrepはほとんどのファイルでstat呼び出しをすでに避けてるし。" userName="burntsushi" createdAt="2025/07/20 00:37:17" color="#ff5733">}}




{{<matomeQuote body="そんな時間スケールなら、hyperfineよりtim（https://github.com/c-blake/bu/blob/main/doc/tim.md）を使った方がいいんじゃない？（あなたの名前だからってわけじゃないよ！Lol。 ”time”から一文字削った偶然の一致なんだけどね。:-)）Nimで書かれてるから、ちょっと大変かもしれないけど。" userName="cb321" createdAt="2025/07/18 20:16:08" color="#ff5733">}}




{{<matomeQuote body="（ありがとう。背景情報が多いから、それをメインリンクにするよ。リポジトリのスレッドも一番上に入れるね。）" userName="dang" createdAt="2025/07/18 17:51:19" color="">}}




{{<matomeQuote body="これ、すごいね。今C++プロジェクトをやってて、将来的に全部か一部をZigに移行するつもりなんだ。僕のlibevringってのはまだ新しくて、ourioに置き換えるのは全然アリだね。こういうプロジェクトのために、Zigへの移行パスとしてC/C++バインディングを作るのはどう思う？" userName="benreesman" createdAt="2025/07/18 18:05:06" color="#38d3d3">}}




{{<matomeQuote body="C libを公開するのはすごくいいね。Githubで自由に議論やIssueを立ててみてよ。" userName="rockorager" createdAt="2025/07/18 18:09:28" color="#785bff">}}




{{<matomeQuote body="NFSサーバーでファイルがいっぱいあって、しかも接続が悪いとどうなるか気になるな。信頼できないネットワークサービスをブロッキングPOSIX syscallsの裏に置くのは、NFSがひどい設計な主な理由だけど（壊れたNFSフォルダを読み込んでるアプリをctrl+cしようとしたらわかる）、io_uringがその悪い部分をいくらか軽減してくれるのかしら？" userName="ninkendo" createdAt="2025/07/18 13:21:39" color="#785bff">}}




{{<matomeQuote body="NFSの設計者は、分散システムをすごく一貫性があって利用可能なシステム（HDD）に模倣することを選んだんだ。それは妥当なトレードオフだった。lsみたいな既存ツールが、ディレクトリ一覧表示中にサーバーが再起動するようなことに対処する必要もなかったしね。（オリジナルのNFSプロトコルはステートレスだから、クライアントはサーバーの再起動後も大丈夫だったんだ。）viは編集中のファイルをホストしてるサーバーが応答しなくなったらどうなる？そういうエラーハンドリングはどのツールにもない。io_uringがどう解決するかは知らないけど、NFS呼び出しがタイムアウトしたらエラーを返すの？どれくらい待ったら諦めてエラーを返すの？" userName="mprovost" createdAt="2025/07/18 15:36:10" color="#ff5c5c">}}




{{<matomeQuote body="信頼できないシステムを信頼できると見せかけるのは悪いアイデアだと思うよ。これはNFSに限らず、ローカルのように見せかけようとするネットワークファイルシステム全般に言えることだ。viの件も、ネットワーク接続をローカルディスクだと偽装するべきじゃないってことの証明だね。だって、ツールはダウン時の問題に対処するようにはできてないから。HTTPやGRPCなんかと対照的だよね…クライアントはリトライ時間や失敗を呼び出し元に伝えるか、オフラインで作業するかを自分で決められる。NFSではsyscallはデフォルトでずっとハングするんだ。分散システムは難しいのに、NFSは全然難しくないふりをしてる。これがうまくいってるうちはいいけど、何か問題が起きるとその抽象化が破綻する。（io_uringがこれを解決するとは言ってないけど、ブロッキング呼び出しよりパフォーマンスが良くなるかには興味あるね。）" userName="ninkendo" createdAt="2025/07/18 16:39:21" color="#ff5733">}}




{{<matomeQuote body="それはアーキテクチャと押し進める規模に大きく依存すると思うよ。もう一つの極端な例はS3で、追記が数年前からやっと可能になったくらいだし。ファイルを編集するのに全部ダウンロード／アップロードが必要なのも、あまり良くない。NFSは好きじゃないけど、自分でセットアップして動かすのは確かに簡単だね。サーバー再起動で一時的に問題は出るけど、NFSサーバーは高可用であるべきだし、NFSv4.1ならUDPを主要なトランスポートとして使えば、サーバーの切り替えもかなり速くできるよ。（DNS／FQDNに接続すればの話だけど）あとはプラグアンドプレイだね。NFSならUNIXのパーミッションやオーナー／グループ詳細、実行ビットなんかもきれいに保持されるし。それに、GDriveやOneDriveのクライアントみたいに、常に同期してデータをローカルにキャッシュする“キャッシュ”サーバーをローカルに持つこともできる。これは“規模”で（つまりGDriveやOneDriveみたいに多くの同時ユーザーがいる場合）かなりうまくいくよ。" userName="pvtmert" createdAt="2025/07/18 18:36:44" color="#45d325">}}




{{<matomeQuote body="信頼できないシステムを信頼できると見せかけるのは悪いアイデアだって？でもそれしか方法がないんだよ。信頼できるシステムを作る方法なんて知らない。たくさんの信頼できないものを寄せ集めて、全体として信頼できるようになるのを願うしかないんだから。" userName="JonChesterfield" createdAt="2025/07/18 18:06:56" color="">}}




{{<matomeQuote body="「信頼できないシステムを信頼できると見せかけるのは悪い」は、単純すぎるヒューリスティックだと思うよ。ECCや再送、パケットリカバリとか、いつもやってることだろ。本質的には全く悪くない。問題は、上位層にどんな抽象化を見せるかだよ。TCPでは「かなり堅牢だけどテールレイテンシがあるから自動車や航空には使うな」って抽象化を期待するし、それはうまくいってる。常に正しい問いは、「どんなテール挙動を見せるか、そしてその抽象化を利用する側がそれに対応できる準備ができているか」だと思うね。" userName="mrlongroots" createdAt="2025/07/18 18:22:44" color="#785bff">}}




{{<matomeQuote body="程度の違いが種類の違いになると思うんだ。ECC RAMのビット反転みたいに、基盤部分の信頼性が低くてもすぐに1、2回リトライすればいいシステムはたくさんあるし、少なくとも信頼性の低さが十分に知られてて、ソフトウェアがその漏洩する抽象化を回避する方法を学んだシステムもある（TCPみたいにね。でもQUICとか他のプロトコルは、エッジケースをより賢く処理するために信頼性の問題をさらに上位層に移動させた方がいいかもしれないって示してるけど）。でも「ネットワーク」と「SATAポート」の信頼性の低さは全くの別物だよ。ファイルシステムは後者向けに設計されてて、ソフトウェアがファイルシステムを使う時は、一般的に「ネットワーク」が実際には提供できない信頼性保証を期待してる。特にモバイルインターネットやWi-Fiとかだとね…それにNFSがローカルファイルシステムにできること（inotifyやfseventsを動かす方法を誰か見つけられた？）をできないせいで、ソフトウェアが微妙に壊れる場所は他にもたくさんあるし。" userName="ninkendo" createdAt="2025/07/18 19:31:59" color="#ff5c5c">}}




{{<matomeQuote body="信頼できないものを寄せ集めて、結果が良くなるのを願うしかないって？いや、希望に頼らずに計算できる数学があるよ。" userName="tbrownaw" createdAt="2025/07/19 00:08:26" color="">}}




{{<matomeQuote body="もしFiber Channel over Ethernetドライブだったらどうかな？残念ながら、それらは常に信頼できないよ。うちのセットアップでは、ネットワークファイルシステムの方がローカルファイルシステムより信頼できるんだ。ローカルファイルシステムはFiber Channel over EthernetのRAID-0で動いてるし、ネットワークストレージはInfinibandで繋がったたくさんのRAMブロックデバイスのRAID-5だよ。最近の典型的なSSDは実質的にすごく複雑な分散RAIDなのに、すごくシンプルなローカルディスクを装ってる…そしてほとんどのローカルファイルシステムはそれで動いてるんだ。正直、NFSは元々UDP上で動くように設計されてた。障害は完全にオプションだったんだ。学生の頃は、同じコンピューターのローカルファイルシステムよりもNFSファイルシステムの方がずっと信頼できたよ。うん、分散ファイルシステムは難しいけど…NFSは、最近の「信頼できる」とされるものの多くに比べて、かなり分かりやすい方さ。" userName="cbsmith" createdAt="2025/07/19 23:53:45" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="NFSは昔、信頼できるLAN環境向けに設計されたけど、今のインターネット時代には合わないよね。MacOSみたいにUnixベースの古いOS設計はもう限界で、MacBookに5Gモデムがないのも、プログラムがネットワークを意識してないからなんだ。IOSやAndroidみたいに、ネットワークの不確実性や低帯域なモバイルネットワークに対応できるOS設計に移行するのは、避けられない運命だよ。" userName="mprovost" createdAt="2025/07/19 13:31:07" color="#785bff">}}




{{<matomeQuote body="iSCSIについても同じ考え方を持ってる？" userName="cwillu" createdAt="2025/07/18 19:18:09" color="">}}




{{<matomeQuote body="NFSは「ステートレス」って言われてるけど、実際はそうじゃないんだ。オープンファイルや排他アクセス、一時ファイルの削除とか、状態を意識する操作はNFSプロトコルに無理やり組み込まれてるんだよ。Unix Hater’s Handbook (https://web.mit.edu/~simsong/www/ugh.pdf)にも書いてあるけど、結局プロトコルがステートフルになっちゃってるんだ。" userName="Someone" createdAt="2025/07/18 20:18:09" color="#ff33a1">}}




{{<matomeQuote body="自宅でNFSの$HOME環境を使ってるけど、普段はほとんど気にならないよ。ネットワーク環境が良くて、複数のマシンから同じデータに並行して書き込むみたいなストレスのかかる使い方をしなければ、NFSの使い勝手はかなり良いと思うな。一度、ネットワークケーブルの接触不良で大変な目に遭ったけどね。" userName="asveikau" createdAt="2025/07/18 23:29:19" color="">}}




{{<matomeQuote body="壊れたNFSフォルダから読み込んでアプリが固まった時、Ctrl+Cで中断できない問題ってあるよね。「intr」マウントは、以前はシグナルでリモートサーバーの処理を中断できたけど、Linuxではずいぶん前にこのオプションが削除されちゃったんだ（https://man7.org/linux/man-pages/man5/nfs.5.html）。FreeBSDはまだサポートしてるみたいだけど（https://man.freebsd.org/cgi/man.cgi?query=mount_nfs）。Linuxでは「soft」オプションが唯一の代替策かな。" userName="loeg" createdAt="2025/07/18 14:16:09" color="#ff5733">}}




{{<matomeQuote body="最高だね！なんでコマンドラインツールがみんなio_uringを使わないのか不思議だよ。僕のNVMeだと、USB 3.2 Gen 2で通常740MB/sがピークなのに、AIOやio_uringを使うと1005MB/sも出るんだ。たくさんのファイルを同時にコピーしなくても、キューの長さ戦略とかロックが少ないのも効果あるんだろうね。" userName="SillyUsername" createdAt="2025/07/18 13:13:15" color="#38d3d3">}}




{{<matomeQuote body="多分、プラットフォームやバージョンに依存しない移植性を優先してきた歴史的な理由が大きいんだろうね。でも、今はPOSIX系のプラットフォーム間での移植性のメリットって、以前よりずっと低くなってるから、今後は変わるかもね。" userName="tyingq" createdAt="2025/07/18 13:28:28" color="">}}




{{<matomeQuote body="誰かio_uringの「ポリフィル」ライブラリで、標準のPOSIX I/Oにフォールバックするようなものを作った人いる？バックグラウンドのスレッドを使えば、パフォーマンスは落ちるけど、できるんじゃないかな。" userName="Retr0id" createdAt="2025/07/18 13:43:27" color="">}}




{{<matomeQuote body="io_uringの「ポリフィル」はかなり大変だと思うよ。io_uringはカーネルの表面積をどんどん広げてて、インターフェースが増え続けてるからね。コンパイル時にはインターフェースが使えても、配布先のカーネルで無効になってたり、権限がなかったり、使いたいインターフェースの一部しかサポートされてなかったりする問題があるんだ。フレームワークを使わないと解決は難しいかも。でも、透明に使えるとクールだよね。Rustのmonoioみたいに、epollをフォールバックとして使うio_uringランタイムもたくさんあるよ。" userName="vlovich123" createdAt="2025/07/18 14:01:03" color="#38d3d3">}}




{{<matomeQuote body="io_uringで使えるコマンドを知る方法や、futexを使ってバックグラウンドスレッドを効果的に使う方法について話してるね。バックエンドの順序付けを強制するリンクビットを使ってないなら、ちょっとしたfutexのテクニックで、複数のバックグラウンドスレッドをディスパッチして、”一つずつ取る”みたいにサブミッションキューからタスクをかっさらうこともできるんじゃないかな。" userName="namibj" createdAt="2025/07/18 19:02:30" color="#ff5c5c">}}




{{<matomeQuote body="io_uringは非同期インターフェースだから、効果的に使うにはイベント駆動型アーキテクチャが必要だよ。でも、多くのコマンドラインツールはまだシンプルなシーケンシャルスタイルで書かれてるんだよね。C言語にasyncみたいな仕組みがあれば、非同期プログラミングをシーケンシャルに書けて移植も楽なんだけど、そうじゃないと大規模なリファクタリングが必須になる。それに、io_uringはまだ安定してないし、10年後にはまた別のメカニズムに置き換わる可能性もある。だから、io_uringが定着するのを待つのはすごく有効な戦略だよ。10年後には、ツールやAIが自動で書き換えてくれるかもしれないしね。" userName="fpoling" createdAt="2025/07/18 15:41:16" color="#ff5733">}}




{{<matomeQuote body="C言語で非同期プログラミングをシーケンシャルに見せかける仕組みの話かぁ。昔のPOSIX関数の`ucontext()`ファミリーは、スタックフルコルーチンとして使えるのに、”pthreadsを使え”ってバカみたいに非推奨になっちゃったんだよね。シグナルマスクを保持しちゃう欠点も、libcレベルでシステムコールなしに直せるはずなんだけど、かなりの手間だし、シグナルをちゃんとやる人はほとんどいないからね。<br>スタックレスコルーチンに関しては、組み込みシステムとかで使われるライブラリが色々あるけど、どれも扱いにくいから広く受け入れられてないんだ（最近の議論でいくつかリンクが挙がってるよ）。AC（Barrelfishプロジェクトから）やCPCみたいな言語拡張もあったね。CPCとかが流行ってくれたら嬉しいんだけど、もう10年以上経つのにね。<br>https://news.ycombinator.com/item?id=44546640<br>https://users.soe.ucsc.edu/~abadi/Papers/acasync.pdf<br>https://www.irif.fr/~jch/research/cpc-2012.pdf" userName="mananaysiempre" createdAt="2025/07/18 16:05:07" color="#38d3d3">}}




{{<matomeQuote body="まさにその”それっぽく見せる”例として、このプロジェクト（作者は俺！）はio_uringとucontextを組み合わせてるんだ。<br>https://github.com/pallas/ioucontext/" userName="ThePallas" createdAt="2025/07/19 23:31:04" color="#ff5733">}}




{{<matomeQuote body="俺の記憶だと、io_uringって数年前は結構ひどいセキュリティ問題も抱えてたはず。今はもう直ってるはずだけど、それも普及を遅らせた一因だろうね。" userName="elcapitan" createdAt="2025/07/18 14:01:53" color="">}}




{{<matomeQuote body="数年前の話じゃないよ。io_uringは継続的にセキュリティ問題を出してて、高深刻度のやつも数ヶ月前まで直ってなかったんだ。だから、多くの大規模組織は安全性確保のためにカーネルからパッチで無効にしてるし、それが普及しない理由の一つだよ。" userName="jeffbee" createdAt="2025/07/18 15:54:17" color="#ff5733">}}




{{<matomeQuote body="俺が最後に確認した時には、セキュリティ問題のせいでほとんどのコンテナランタイムがio_uringをブロックしてたし、Googleも全サービスでブロックしてたよ。最近は確認してないけど、https://security.googleblog.com/2023/06/learnings-from-kctf-... に背景が書いてあるね。" userName="raesene9" createdAt="2025/07/18 18:53:21" color="#785bff">}}




{{<matomeQuote body="（io_uringを使わない）理由の一つは、ここ数年の最先端のインストールだけでなく、全てのLinux環境で動作させるためだよ。" userName="superkuh" createdAt="2025/07/18 13:25:11" color="">}}




{{<matomeQuote body="io_uringって、セキュリティ的に最悪だよね。" userName="Thaxll" createdAt="2025/07/18 14:18:47" color="">}}




{{<matomeQuote body="俺、Wikipediaのio_uringの記事を更新して、そのセキュリティ問題の議論に反論したんだ。" userName="marcodiego" createdAt="2025/07/18 18:57:03" color="">}}




{{<matomeQuote body="このトピックに関する良い記事だよ: https://chomp.ie/Blog+Posts/Put+an+io_uring+on+it+-+Exploiti..." userName="Thaxll" createdAt="2025/07/18 14:28:05" color="">}}




{{<matomeQuote body="プロセスにカーネルメモリの一部への直接アクセスを許すことになるんだ。それが分離がある理由だよ。それだけ。" userName="sim7c00" createdAt="2025/07/18 14:30:36" color="">}}




{{<matomeQuote body="io_uringのセキュリティ懸念のほとんどは、共有バッファとは全然関係ないよ。io_uringはシステムコールなしでカーネルに指示できるメカニズムだから、プロセスが許可されたシステムコールに焦点を当てるセキュリティ対策は無効になっちゃうんだ。" userName="wtallis" createdAt="2025/07/18 15:04:26" color="#45d325">}}




{{<matomeQuote body="これは問題じゃないよ。リングバッファを安全に共有するのは比較的簡単だね。問題は、io_uringがLinuxのすべてのシステムコールインターフェースに匹敵する勢いで急速に成長していて、新しいインターフェースで同等のセキュリティ対策が見落とされたりしてることなんだ。（あと、seccompフィルターとかもio_uringでは意味がなくなっちゃうしね。）" userName="loeg" createdAt="2025/07/18 15:24:58" color="#ff33a1">}}




{{<matomeQuote body="...サブミッションキューにメモリを供給するんじゃないの？それともキュー自体を指してる？" userName="duped" createdAt="2025/07/18 15:53:32" color="">}}




{{<matomeQuote body="サブミッションキューのメモリはユーザー空間にmmapされてるんだ。一番読みやすい実装はZigの標準ライブラリだよ: https://github.com/ziglang/zig/blob/69cf40da600224734d39c6f6..." userName="LAC-Tech" createdAt="2025/07/19 00:37:40" color="#ff5c5c">}}




{{<matomeQuote body="https://security.googleblog.com/2023/06/learnings-from-kctf-... - このトピックについて面白い情報があるよ。" userName="raesene9" createdAt="2025/07/18 18:53:54" color="">}}




{{<matomeQuote body="＞すべてのコマンドラインツールがio_uringを使わない理由を知りたいんだけど。<br>それは、まだかなり新しいからだよ。lsコマンドを含むcoreutilsパッケージ（そしてそれを構成するためにマージされた3つの以前のパッケージ）は何十年も前のもので、io_uringはずっと後に出てきたんだ。『共有リングバッファ』方式のシステムコールが従来の同期システムコールに勝つには時間がかかるだろうね。" userName="cesarb" createdAt="2025/07/18 17:26:18" color="#785bff">}}




{{<matomeQuote body="lsrは速いけど、ezaみたいに色付けサポートが充実してたらもっといいな。例えば.opusファイルはezaだと音楽アイコンになるのに、lsrだと普通のファイル扱いなんだ。でもパッチは簡単そうだし、安定性も速度も素晴らしい。catとか他のシステムユーティリティでもio_uring使ったツールを作って欲しいな。tangled.shがatproto使ってるのも面白いし、zigで書かれてるのもRustより触りやすいから好きだ。" userName="Imustaskforhelp" createdAt="2025/07/18 13:24:10" color="#ff5733">}}




{{<matomeQuote body="”bat”は結構良い現代版”cat”だよ。<br>https://github.com/sharkdp/bat" userName="hnlmorg" createdAt="2025/07/18 18:30:12" color="#ff5733">}}




{{<matomeQuote body="straceでcatとbatを比べてみたんだけど、batは445回、catは48回のシステムコールだったよ。batは見栄えは良いけど、catみたいなツールでもio_uringを使ってシステムコールを減らせないかなって思うんだ。catみたいなのって、最低何回のシステムコールで動かせるんだろうね？" userName="Imustaskforhelp" createdAt="2025/07/18 19:14:55" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="色付けサポートについては、LS_COLORSやdircolorsを実装するのが一番良い方法だと思うな。俺のGNU lsは良い感じに見えるよ。" userName="johnisgood" createdAt="2025/07/18 14:04:44" color="#ff5c5c">}}




{{<matomeQuote body="これはio_uringを使うことで得られる償却性能向上を示すデモや、io_uringのチュートリアルとしての方が面白いね。ezaみたいなのから乗り換える理由が分からないな。10,000ファイル表示しても40msと20msの差じゃ、コマンドを1回実行するだけなら絶対に気づかないよ。" userName="maplant" createdAt="2025/07/18 14:31:22" color="">}}




{{<matomeQuote body="うん、これはio_uringの使い方を学ぶための楽しい実験として書いたんだ。これを使うことでの実用的な節約はほんのわずかで、もしかしたら人生で5秒くらいだろうね。それが目的じゃなかったんだ、ハハ。" userName="rockorager" createdAt="2025/07/18 15:57:48" color="#ff5733">}}




{{<matomeQuote body="スーパーコンピュータでこれが役立つか知りたいな。あそこは`ls -l`で数秒フリーズすることで有名だからさ。" userName="JuettnerDistrib" createdAt="2025/07/18 16:20:49" color="">}}




{{<matomeQuote body="可能性はあるけど、スーパーコンピュータのファイルシステムは並列でデータとメタデータが分離されてるから大きく違うよ。`ls -l`でランクごとや粒子ごとに大量のファイルを列挙する可能性があるんだ。読み込みを速くしても、そんなに多くのファイルを持つのがそもそも非効率。ファイル数を減らす工夫もできるし、分散オブジェクトストレージへの移行も進んでるよ。面白い分野だね。" userName="mrlongroots" createdAt="2025/07/18 18:37:09" color="#ff5c5c">}}




{{<matomeQuote body="これはすごくクールな実験だね。ただ、lsの代替になるかって議論はちょっと的外れな気がするんだ。だって、あなたも言ってるように、そこがポイントじゃないんだから、そっちに話を向けたかったんだよね。" userName="maplant" createdAt="2025/07/18 16:35:29" color="">}}




{{<matomeQuote body="うちのディレクトリには数百万のJSONファイルがあるんだけど、lsやduだと数分かかるんだよ。ほとんどのcoreutilsは、今のSSDを全然活かせてないんだよね。" userName="0x000xca0xfe" createdAt="2025/07/18 15:08:41" color="#ff5733">}}




{{<matomeQuote body="ファイルシステムの種類は何？ext4は大規模ディレクトリだと検索性能がマジでひどいけど、xfsだと爆速だよ。" userName="otterley" createdAt="2025/07/18 15:31:53" color="#ff33a1">}}




{{<matomeQuote body="うん、デフォルトのext4で、ほとんどのファイルが4KB未満だから、さらに酷いんだ。コメントありがとう、それは知らなかったよ！" userName="0x000xca0xfe" createdAt="2025/07/18 15:45:31" color="#ff5c5c">}}




{{<matomeQuote body="`ls -la`のベンチマークと比べて、システムコールを約35倍も削減したのに、2倍しか速くならないって、なんか面白いよね。" userName="swiftcoder" createdAt="2025/07/18 16:51:21" color="#38d3d3">}}




{{<matomeQuote body="ちょっと前にio_uringの別のプロジェクトのベンチマークを読んだ記憶があるんだけど、io_uringのシステムコールは、置き換える前の他のシステムコールよりコストが高いって示唆されてたんだよね。それでも大きな改善だけど、期待してたほどじゃないって感じ。どの投稿だったか思い出せないけど、ずっとその印象があるんだ。" userName="bogwog" createdAt="2025/07/18 17:51:34" color="#45d325">}}




{{<matomeQuote body="これらのシステムコールはほとんどVDSO経由だから、そんなにコストはかからないはずだよ。" userName="Galanwe" createdAt="2025/07/18 18:40:32" color="#38d3d3">}}




{{<matomeQuote body="VDSO対応のコールは、clock_gettime、getcpu、getrandom、gettimeofday、timeだけだよ。(他のアーキテクチャだと、信号とかCPUキャッシュフラッシュ関連でもういくつかあるけどね)。" userName="wahern" createdAt="2025/07/18 20:37:50" color="#ff33a1">}}




{{<matomeQuote body="誰か仮想マシンでこれを試してくれる人いないかな？仮想マシンだとシステムコールがもっと重くなると思うんだけど。" userName="Too" createdAt="2025/07/19 06:16:29" color="">}}




{{<matomeQuote body="io_uringはgetdentsをサポートしてないんだよね。だから一番のメリットは、バルクstatting（ls -l）なんだ。前のgetdentsの処理中に、次のgetdentsも実行できたらもっといいのにね。" userName="the8472" createdAt="2025/07/18 14:13:21" color="#ff33a1">}}




{{<matomeQuote body="POSIXがNFSの”readdirplus”操作（getdents + stat）を採用したら、io_uringのメリットが一部打ち消されるかもね。" userName="loeg" createdAt="2025/07/18 15:29:44" color="">}}




{{<matomeQuote body="でも、そしたら今度は誰かがstatxも欲しがるだろうね…" userName="the8472" createdAt="2025/07/18 20:01:52" color="">}}




{{<matomeQuote body="うん。はっきり言うと、LinuxもPOSIXもreaddirplusをAPIとして採用することはないと思うな。" userName="loeg" createdAt="2025/07/18 20:52:30" color="">}}




{{<matomeQuote body=".mjsとか.cjsのファイル拡張子にはアイコンがあるのに、.c、.h、.shにはないって、なんかウケるね。" userName="jasonjmcghee" createdAt="2025/07/18 16:16:24" color="">}}




{{<matomeQuote body="uutilsがこんなにパフォーマンス悪いのは残念だね。こういう中核的なモダナイゼーションを進めるには最高の希望だと思ってたんだけど、GNUより2倍も遅いんじゃ良いスタートとは言えないよ。" userName="adgjlsfhk1" createdAt="2025/07/18 13:55:22" color="#45d325">}}




{{<matomeQuote body="ていうか、それだけじゃなくてライセンスも違うんだよね。俺は一番基本的なビルディングブロックには強力なコピーレフトがいいな。それ以外は、まあまあ面白いプロジェクトだけどね。" userName="sureglymop" createdAt="2025/07/18 23:37:22" color="#ff33a1">}}




{{<matomeQuote body="＞lsdが何してるのか全然わかんない。ソースコードは読んでないけど、straceで見た感じ、1ファイルあたり5回くらいclock_gettimeを呼んでるんだよね。なんで？わかんない。もしかして途中のステップで内部タイミングを取ってるとか？<br>それか、各タイムスタンプ（アクセス、作成、変更とか）について”X分/時間/日/週間前”みたいなのを計算してるのかな？古いライブラリ関数の遺物かもしれないけど…" userName="pvtmert" createdAt="2025/07/18 18:26:45" color="#785bff">}}




{{<matomeQuote body="これって最近じゃ実際のシステムコールであるべきじゃないんだよね。vDSO（`man 7 vDSO`）で処理されるべきだよ。<br>まあ、zigはそれを使ってないのかもしれないけどね。" userName="namibj" createdAt="2025/07/18 18:48:20" color="#38d3d3">}}




{{<matomeQuote body="時間が準線形に見えるね、1万ファイルが1000ファイルの10倍以下だ。ext2とHDDの時代に、プロダクションのディレクトリに50万ファイルあった時に、lsのプロセスが遅すぎて全部オーバーロードしたことがあったのを覚えてるよ。その時はls -Fに救われたな。<br>ファイルシステムもたくさんのファイルにだいぶ強くなったよね。ここで使われたファイルシステムは何だったんだろう？<br>busyboxの成績がいいのは面白いね、あれは確か速度よりサイズ重視で書かれてるはずだけど？" userName="tln" createdAt="2025/07/18 14:28:21" color="#45d325">}}




{{<matomeQuote body="＞時間が準線形に見えるね、1万ファイルが1000ファイルの10倍以下だ<br>2つの点だけじゃ準線形だって言うには十分じゃないよ。線形要素が大きくなるにつれて、重要性がどんどん低くなるような定数要素があるのかもしれないからね。言い換えれば、10000n+C ＜ 10000(n+C)ってことだ。" userName="SkiFire13" createdAt="2025/07/18 15:31:41" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
