+++
date = '2025-05-01T00:00:00'
months = '2025/05'
draft = false
title = 'SQLiteデータベースのPC間コピーを高速化する方法！'
tags = ["SQLite", "Databases", "Data Transfer", "Storage", "Performance"]
featureimage = 'thumbnails/color1.jpg'
+++

> SQLiteデータベースのPC間コピーを高速化する方法！

引用元：[https://news.ycombinator.com/item?id=43856186](https://news.ycombinator.com/item?id=43856186)




{{<matomeQuote body="＞もしデータベースのコピーに時間がかかって、途中で更新されたら、rsyncだと無効なデータベースファイルになるかも。ファイルの最初の半分は更新前、後半は更新後で、一致しない。ローカルでデータベースを開こうとするとエラーになるって？<br>もちろんだよ！稼働中の、アクティブに更新されてるDBファイルをコピっちゃダメ。それは破損するだけだよ。SQLiteを安全にレプリケートするなら、https://github.com/benbjohnson/litestreamってのがあるよ。" userName="bambax" createdAt="2025/05/01 13:05:52" color="#38d3d3">}}




{{<matomeQuote body="＞稼働中の、アクティブに更新されてるDBファイルをコピっちゃダメ。それは破損するだけだよ<br>「だけ」ってのは違うよ。実はこれでうまくいくシナリオが一つあるんだ。BtrfsやZFSでファイルやサブボリュームをコピーするのはアトミックにできるから、それがACIDなデータベースとかLSMツリーなら、最悪ロールバックするだけ。もちろん、複数のファイルなら全部同じトランザクションでコピーされるようにサブボリュームで囲むように気をつけなきゃダメで、ただ`cp --reflink=always`を使うだけじゃダメだよ。SIGSTOPでプロセスを一時停止させるのも同じ結果になるかもしれないけど、それはあんまり期待できないかな。" userName="creatonez" createdAt="2025/05/01 13:57:20" color="#38d3d3">}}




{{<matomeQuote body="ファイルシステム固有のスナップショットなしにはできないよ。そうじゃなきゃ、cp/rsyncが整合性のある読み取りを必要としてるのと、別のSQLiteクライアントが最新データを欲しがってるのをどうやって区別するの？" userName="lmz" createdAt="2025/05/01 14:05:46" color="">}}




{{<matomeQuote body="お約束の「LVMだってまだあるし、スナップショットは簡単にオーバプロビジョニングできるぜ」" userName="o11c" createdAt="2025/05/01 14:48:17" color="">}}




{{<matomeQuote body="LVMスナップショットを撮ってそこからSQLiteデータベースをコピーするのは、破損しないようにするには十分だけど、不完全なトランザクションがあってクラッシュリカバリの時にロールバックされる可能性があるよ。問題は、LVMスナップショットがブロックデバイスレベルで動作してて、破損したり中途半端に書き込まれたブロックがないことを保証するだけなんだ。ファイルシステムのジャーナルやメタデータについては知らないんだ。<br>クラッシュリカバリを発動させたりトランザクションを失ったりせずに、一貫性のある特定時点のスナップショットを得るには、スナップショット中にSQLiteデータベースやファイルシステムへの書き込みをロックする必要があるんだ。<br>`PRAGMA wal_checkpoint(FULL);`<br>`BEGIN IMMEDIATE;  -- これで書き込みをロックする`<br>`/* ここでLVMスナップショットをトリガー */`<br>`COMMIT;`<br>fsfreezeを使っても同じレベルの安全性が得られるよ。<br>`sudo fsfreeze -f /mnt/data      # (A) ダーティページをフラッシュして書き込みをブロック`<br>`lvcreate -L1G -s -n snap0 /dev/vg0/data`<br>`sudo fsfreeze -u /mnt/data      # (B) 解凍して書き込みを再開`<br>おまけに、スナップショットを撮ったdbファイルをこれで検証するといいよ。<br>`sqlite3 mydb-snapshot.sqlite “PRAGMA integrity_check;”`" userName="HumanOstrich" createdAt="2025/05/01 18:12:27" color="#ff33a1">}}




{{<matomeQuote body="「トランザクションを失う」ってどういう意味？いくつかのトランザクションはバックアップ前にコミットされて、いくつかのトランザクションは後にコミットされるから含まれないんだ。解決しようとしてる問題がよくわからないんだけど？<br>トランザクションが始まってて透過的にロールバックされるのと、始めるのを防いだのと、あなたにとって何が違うの？どちらにしても、特定時点のスナップショットが得られるわけで、その時点はLVMスナップショットの直前の最新コミット時だよ。<br>これを「safety」って言葉で話してるけど、それはなんか違う気がするな。" userName="remram" createdAt="2025/05/02 12:44:07" color="">}}




{{<matomeQuote body="＞もちろんだよ！稼働中の、アクティブに更新されてるDBファイルをコピっちゃダメ。それは破損するだけだよ<br>みんな、ファイルストレージの仕組みって本当にわかってないの？稼働中の変動するデータベースファイルを同期もせずにコピーしようとして、それがうまくいくと思うなんて、どんな考え違いをしたらそうなるのか、私には全く理解できないね。" userName="quotemstr" createdAt="2025/05/01 13:24:38" color="">}}




{{<matomeQuote body="これは個人的な意見とか、物議を醸す話とかじゃなくて、SQLiteデータベースをバックアップするもっと簡単な方法は他にあるけど、LVMスナップショットを使いたいなら、ちゃんと使えるバックアップにするには正しくやり方を理解する必要があるって話。ここにノートアプリがSQLiteをバックエンドに使ってるシナリオがあるよ。<br>1. ユーザーAがノートを編集してて、アプリがデータベースにその変更を書き込む。<br>2. SQLiteはWALモードだから、変更はまず -wal ファイルに行く。<br>3. SQLiteが、<br> - 書き込み（WALまたはメインDBファイルへの）の途中で<br> - またはWALがまだメインDBファイルにチェックポイントされてない状態で<br>LVMスナップショットを撮る。<br>4. スナップショットには、<br> - notes.db への部分的な書き込み<br> - または notes.db と notes.db-wal が同期してない状態<br>が含まれる。<br>結果：バックアップが不整合になる。後でこのスナップショットを復元すると、<br> - sqlite3が “database disk image is malformed” みたいなエラーを出すか<br> - 最近の編集が失われるか<br> - 手動リカバリが必要になったりWALの中身が失われたりする<br>トランザクションのロールバックとか、DBファイルへの部分的な書き込みみたいな中間状態なしに、データベースが状態Aで、LVMスナップショットからのバックアップが状態Bになるような、整合性のある特定時点のリカバリを得るためには、まず最初に以下のどっちかをする必要があるんだ。<br> - SQLiteにチェックポイント（WALの中身をメインDBに書き込むこと）させて、書き込みを一時停止させるか<br> - または、fsfreezeを使ってファイルシステムへのすべての書き込みをフラッシュしてブロックするか<br>それからLVMスナップショットを撮るんだ。" userName="HumanOstrich" createdAt="2025/05/02 14:40:02" color="#45d325">}}




{{<matomeQuote body="cpはioctlを使ってる（APFSとかBTRFSみたいなCoWファイルシステムなら個別のファイルのアトミックコピー付きで）、一方SQLiteはmmapを使ってるんじゃないかと思うんだけど？" userName="ummonk" createdAt="2025/05/01 15:30:14" color="">}}




{{<matomeQuote body="君は間違ってるよ。WALの全ての目的は、SQLiteをクラッシュコンシステントにすることなんだ。ロールバックジャーナルも同じ。SQLiteは部分的な書き込みを安全にロールバックするんだよ。君がWALモードだと、SQLiteが整合性の保証を投げ出す、なんていう考えをどこで手に入れたのかわからないな。<br>もしSQLiteデータベースを電源を抜いたり、ブロックデバイススナップショットでシミュレーションしたりしただけで壊せるなら、それはSQLiteの重大なバグだから報告すべきだよ。<br>https://sqlite.org/transactional.html と https://sqlite.org/atomiccommit.html に詳細が載ってるよ。" userName="remram" createdAt="2025/05/02 16:48:48" color="#785bff">}}




{{<matomeQuote body="＞動いてて更新中のDBファイルをコピーすると壊れるよって？それにはちょっと”あっしゅりー”があるな。DBをフラッシュしてファイルシステムのsnapshotを取って、そのsnapshotされたファイルをコピーすればできるよ。MSSQL VSS snapshotsとかがその例だね。" userName="pixl97" createdAt="2025/05/01 13:55:21" color="#38d3d3">}}




{{<matomeQuote body="”sqliteデータベースを安全に複製するにはlitestreamがあるよ…”って話だけど、litestreamって普通のSFTP上でも動くんだよね[1]。つまり、SSH経由でだいたいのUNIX環境にデータベースの複製をストリームできるってこと。個人的にお気に入り[2]はあるけど、まあ、どのSFTPサーバーでも大丈夫だよ…" userName="rsync" createdAt="2025/05/01 20:11:04" color="#ff5733">}}




{{<matomeQuote body="Litestream面白そうだね。でもまだベータ版だし、1年以上リリースがないみたいだ。SQLite自体はそんなに早く動くわけじゃないけどさ。Litestreamってまだアクティブなプロジェクトなの？" userName="yellow_lead" createdAt="2025/05/01 13:55:14" color="">}}




{{<matomeQuote body="もし破損が検知できて、自分の目的にとって十分に稀なら、単純な”成功するまでリトライ”ループでいけるよ。（例えばTCPってそんな感じだよね。）" userName="jmull" createdAt="2025/05/01 14:11:28" color="">}}




{{<matomeQuote body="reflinkコピーがアトミックだって証拠を探してたんだけど見つからなかったし、LLMたちも違うと思ってるみたいなんだよね。だからせいぜいbtrfsだけの機能なのかな？" userName="vlovich123" createdAt="2025/05/01 15:43:42" color="">}}




{{<matomeQuote body="Linuxカーネルのドキュメントから：https://man7.org/linux/man-pages/man2/ioctl_ficlone.2.html<br>＞クローンは同時書き込みに対してアトミックだから、一貫性のあるクローンコピーを得るのにロックを取る必要はないよ。<br>これを使ってるファイルシステム（Btrfs, XFS, Bcachefs, ZFS）で、予期されるアトミックな振る舞いから外れるやつは知らないな。少なくとも`FICLONE`操作で問題になる原子が単一ファイルである限りはね。" userName="creatonez" createdAt="2025/05/01 18:57:46" color="#ff5c5c">}}




{{<matomeQuote body="同じ感じでさ、Postgresのデータディレクトリもrsyncで動かしたまま安全にコピーできるよ。rsync中に書かれたデータは失われる可能性あるけど、WALファイルで取得できるんだ。結構前だけど、確か pg_backup_start（）してrsync、pg_backup_stop（）して WAL ファイルをrsyncすればできたはず。" userName="tpmoney" createdAt="2025/05/01 14:06:42" color="#ff5c5c">}}




{{<matomeQuote body="組み込みの .backup コマンドも、動いてるDBのスナップショット版を作る公式ツールとして使えるようになってるよ。コピーしてあちこち移動させたりできるんだ。" userName="wswope" createdAt="2025/05/01 14:09:59" color="">}}




{{<matomeQuote body="ベータ版で1.xリリースが出てないけど、このプロジェクト結構安定してると思うよ。うちではオフライン優先のPOSシステムで18ヶ月以上本番環境で使ってるけど、Litestreamで全然問題ないよ。" userName="clintonb" createdAt="2025/05/01 19:25:34" color="#38d3d3">}}




{{<matomeQuote body="全ての破損が検出できるわけじゃないんだ。トランザクション中にコピーすると、保存されたページの一部だけが永続化されて、他のページへの参照は合ってる、みたいな状態になることがある。そうなると、実際には存在しなかったDBの状態ができちゃって、原子性が壊れることになるよ。" userName="benbjohnson" createdAt="2025/05/01 17:51:14" color="#ff33a1">}}




{{<matomeQuote body="Litestreamマジやばいね！俺もコンテナレベルでSQLiteのバックアップとリストアに使おうと思ってんだ。昔、元Googleの人でKVMスタートアップ始めて休暇中に倉庫が洪水になった人がやってた方法みたいにね。彼が書いたガイドのリンク見つかんないから、分かる人いたら貼ってくれると嬉しいな。" userName="yard2010" createdAt="2025/05/01 15:13:05" color="">}}




{{<matomeQuote body="俺は自分のシステムでLitestreamを動かしてて気に入ってるけど、公式がこんな感じで手動でやる方法について結構詳しいガイドを出してるのも良いね。ここにリンクがあるよ。https://litestream.io/alternatives/cron/" userName="lknuth" createdAt="2025/05/01 15:11:44" color="#ff5c5c">}}




{{<matomeQuote body="ハハ、それ多分俺のことだわ。君が言ってるのはこの記事だよ。https://mtlynch.io/litestream/<br>それで、洪水の記事はこれ。https://mtlynch.io/solo-developer-year-6/#the-most-terrifyin...<br>ちなみに、SQLiteを使うプロジェクトでは今でも全部Litestream使ってるよ。" userName="mtlynch" createdAt="2025/05/01 15:18:11" color="#ff5733">}}




{{<matomeQuote body="これは専用のオンラインバックアップAPIを活用してるんだね。https://sqlite.org/backup.html" userName="remram" createdAt="2025/05/02 12:50:11" color="#ff5c5c">}}




{{<matomeQuote body="新しいリリースが作業中みたいだよ。https://github.com/benbjohnson/litestream/pull/636" userName="acrispino" createdAt="2025/05/01 23:54:08" color="">}}




{{<matomeQuote body="「攻撃的って受け取ったならごめんね。でもソースも出したし、他の人も同意してるんだから調べてくれない？ChatGPTにSQLiteはクラッシュしても大丈夫か聞いてみてよ。もしかしたら間違った情報広めてるかもしれないからさ…」" userName="remram" createdAt="2025/05/02 21:31:04" color="#45d325">}}




{{<matomeQuote body="PC間でDBコピー？それはフクロウの絵の描き方で言う「円を送って残りのフクロウを忘れる」ってやつだね。他の人が言ってるみたいにincremental rsyncの方がずっと速いだろうけど、一番気になるのはさ、SQL文送る方が速いとか言ってて、それを実行する時間とか、/optimize/とか/vacuum/する時間を完全に無視してることだよ。CSVからDBを作り直す状況だと、ゼロから作る方が最適なんだけど、かなり最適化してもメモリ上の空のDBにバッチインサートするだけで30分かかるんだから。" userName="zeroq" createdAt="2025/05/01 12:15:06" color="#785bff">}}




{{<matomeQuote body="https://stackoverflow.com/questions/1711631/improve-insert-p...この記事役に立つといいな。sqlite3で高速インサートする方法についてすごく良い記事だよ。" userName="iveqy" createdAt="2025/05/01 12:59:49" color="#38d3d3">}}




{{<matomeQuote body="うん！あれすごく役に立ったよ。俺の使い方（メモリ上でゼロから作り直す）だと、結局、（1）journal_mode = off、（2）全部のインサートを一つのトランザクションで囲む、（3）インデックスはインサートの後、って3つが重要だった。ちなみに、Ryzen 5900XでNodeJSに入ってるsqlite使って、平均で1分間に1500万件、単純な関連テーブルだと秒間45万件くらい挿入できてるよ。" userName="zeroq" createdAt="2025/05/01 14:10:56" color="#785bff">}}




{{<matomeQuote body="SQLiteみたいな（ファイル一つだけど互換性はない）SQLデータベースで、秒間1億件処理できるのがあったら、役に立つと思う？" userName="vlovich123" createdAt="2025/05/01 15:46:08" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それ、どんなデータベースなの？何年もSQLiteの代わりを探してるんだけど…正直、あんまりちゃんと探せてないんだけどね。組み込みDBは趣味みたいなもんで、最近はあんまり時間なかったんだ。まだ見つけられてないんだよね。Rustで書かれた`sled`っていうのは、key-value storeに近い感じだし、ちょっと使ってみたけどうまくいかなくて。KV storeをrelational databaseにするのは手間がかかりすぎるんだ。" userName="pdimitar" createdAt="2025/05/02 00:00:07" color="">}}




{{<matomeQuote body="俺、今PoCで作ってるKV storeがあってさ、Rustで書いてるんだけど、シングルコアで秒間1億5千万件以上書き込めるんだ（8バイトのデータ入れた場合ね。ディスクの速度で制限されちゃうけど最新のNVME PCIE5 disksでもすぐに頭打ちになる）。application RAID0に対応させて複数のディスクに分散できるようにする予定だけど、それはDB作る時に設定が必要になる。その上にSQL engineを載せようと思ってるんだけど、SQL載せるとどれくらい遅くなるかは不明。でも、誰も興味なさそうなんだよね。他のDBよりperformanceが数桁上なのは分かってるんだけどさ。" userName="vlovich123" createdAt="2025/05/02 01:09:07" color="#ff5733">}}




{{<matomeQuote body="@zeroqと同じで、俺もK/V storeじゃなくてちゃんとしたrelational databaseが必要なんだ。analyticsとかtime seriesにも使いたいし、embeddedが良い。それに、できるだけstrictなのがいいな—PostgreSQLはそれがすごくできてる。自分で plumbing work はやりたくないんだ。もしどうしても必要になったらやるけどね。今はDuckDBとかClickHouse(-Local)が良い候補なんだけど、まだnormal OLTP performanceは試してないんだ。(EDIT: でも、それ止めないでね。publishしてHNでもannounceしてくれよ。)" userName="pdimitar" createdAt="2025/05/02 16:34:26" color="#45d325">}}




{{<matomeQuote body="さっきも言ったけど、その上にrelational layerを追加するつもりだよ。RocksDBがFacebookのMySQL & other databasesの下に使われてるみたいにね。" userName="vlovich123" createdAt="2025/05/02 19:19:27" color="">}}




{{<matomeQuote body="kvは俺のuse caseには合わないな。importした後で、不要なデータを消すためにいくつかqueriesを実行してるんだ。import中にfilteringすることもちょっと考えたんだけど、（a）relationshipsの処理が難しい、（b）データをimportするsimple functionがあって、その後不要なものを取り除くcleanなone linersで書ける方がcodeがずっときれい、（c）後でsql queriesが必要になる、っていう理由でやめたんだ。" userName="zeroq" createdAt="2025/05/02 01:36:41" color="">}}




{{<matomeQuote body="正直、また別のSQLiteは微妙かな。100M/s→500k/sは非現実的っぽい。タプルだけインポートだと1コアしか使わないし。並列インポート→マージも考えたけど時間なかったんだ。10Gbは大きいしね。<br>でも、どこでも動くSQLiteの普及率はすごいと思う。pgliteはニッチな用途以外メリットないかな。<br>SQLiteには隠れた名機能いっぱいあるよ。HTTPでホストしてリモートDBみたいに使えるとか！10GbファイルもS3に置いてcount(*)なら40kbくらいしか使わないんだ。" userName="zeroq" createdAt="2025/05/02 00:13:42" color="#ff33a1">}}




{{<matomeQuote body="新しいSQLiteより、改善したのが欲しいって意見に同意。どこでも動く普及率は無視できないね。ほとんどのアプリは専用DBいらないと思うから、今Elixir＞Rust＞SQLiteライブラリ作ってる。<br>pgliteはニッチ用途以外メリットないって意見も分かる。SQLiteにPostgreSQLみたいな厳密なスキーマがあれば1000ユーロ払う！型アフィニティが嫌い。SQLiteは変わらないだろうから新しいのが必要だけど、テスト数には勝てない。S3にSQLite置いてHTTP経由で使うのは、リモートDBならPostgreSQLで良くない？って思うのは厳密さ重視な僕の偏見。" userName="pdimitar" createdAt="2025/05/02 00:23:33" color="#ff33a1">}}




{{<matomeQuote body="@typesの話＞君の味方だよ。SQLiteはニッチ用途で、アプリ層で型を強制すればいい。信じるな、検証しろ。protobuffersとかと同じ、正確性保証は君の責任。<br>@serverlessの話＞メリットは速く動けるし、メンテ箇所少ない。個人的にデフォルトの考え。2025年でもショップのフィルターで全ページリロード多いけど、在庫全部取ってきてアプリ側でフィルタリングすれば良いじゃん？95％でいけるのに。プロセス簡素化したいんだ。" userName="zeroq" createdAt="2025/05/02 01:31:17" color="#45d325">}}




{{<matomeQuote body="RE: serverless、SQLiteは組み込みで優れてるのが一番かな。Litestreamとかはそんな重要じゃない。<br>RE: 厳密な型、めっちゃコード書いて検証してるよ。作るFFIライブラリ(Elixir＞Rust＞SQLite)でも最終的な型確認はユーザーに任せる。生FFIはクラッシュ防止、詳細エラーを目指す。割り込み可能なSQLite操作も作り始めてるよ。<br>信頼せず検証たくさん、その通り。でも生SQLで文字列を整数に入れられないとか、もっと安全性欲しいな。でもSQLiteは最高峰のソフト。ちょっとバリデーション書けば使えるなら、お得だよ。" userName="pdimitar" createdAt="2025/05/02 16:31:52" color="#38d3d3">}}




{{<matomeQuote body="いや、そうじゃないんだ。<br>pglite含めいくつか試したけど、Nodeがバージョン23でネイティブのsqliteを搭載して、僕にはこれで十分なんだ。<br>僕はサーバーレスファンで、SQLiteの隠れた名機能の一つが、DBをHTTPサーバーに公開してクライアントから超効率的にクエリできること。<br>小さなベンチマークプロジェクトも別で持ってたけど、公開は誰かの時間の価値もないと思ってやめたんだ x]" userName="zeroq" createdAt="2025/05/01 16:08:54" color="">}}




{{<matomeQuote body="そのベンチマークのデータが小さい（28MB）ってことに注目すべきだね。これはDBエンジンで違うけど、「全て一つのトランザクションで」ってのは、アロケーションを保持してるってこと。<br>最適なトランザクションサイズは計算難しいから測るべきだけど、一つのトランザクションに数秒費やすのはほぼ間違いなく得策じゃないよ。<br>データ（やインデックス付きデータ）のサイズがメインメモリ超えると、変なパフォーマンス変化も出てくるだろうね。" userName="o11c" createdAt="2025/05/01 15:03:02" color="">}}




{{<matomeQuote body="そう、でもこの問題には触れてないね。<br>CREATE INDEXしてからINSERTするか、INSERTしてからCREATE INDEXするか。<br>つまり、INSERTにかかる時間だけを測ってて、全INSERT後のCREATE INDEXは測ってないんだ。" userName="jgalt212" createdAt="2025/05/01 13:15:01" color="">}}




{{<matomeQuote body="面白いね、質問じゃないStack Overflowの投稿に3000票以上なんて。でも面白い記事だね。ルール全部破っても許されるくらい面白いってことかな？" userName="gibibit" createdAt="2025/05/01 15:37:42" color="">}}




{{<matomeQuote body="それは（かなり古い）コミュニティwiki投稿なんだよ。これらは（特に当時は）機能してて、違う扱いをされてたんだ。" userName="detaro" createdAt="2025/05/01 15:44:02" color="">}}




{{<matomeQuote body="最適化ってどこがボトルネックかだよね。この記事の人は回線みたいだけど、俺の環境はCPUとかDisk IOは速いから、職場のサーバーから2GBのSQLiteテストDBを1Gbps回線で15秒で取ってこれるんだ。" userName="stackskipton" createdAt="2025/05/01 15:07:19" color="">}}




{{<matomeQuote body="30分は長い気がするな。データ量多いの？<br>俺は大量のjsonデータからsqlite dbs作る作業してたんだけど、値のリスト持って1万件ずつinsertしたら、めちゃくちゃ速いポイントを見つけたんだ。これで数百万行のinsertが数分でできる。<br>bloom filtersとかLRU cachingとか小技も使ったけど、今は6ギガのDBを20分くらいで作れるようになったよ。" userName="JamesonNetworks" createdAt="2025/05/01 12:21:29" color="#ff5733">}}




{{<matomeQuote body="コメント3411さんへ。データはCSV複数ファイルで約10ギガ。インメモリDBに単一トランザクションで全テーブルインポートしてる。毎分1500万行insertできるけど、毎秒45万insertが限界。その後、不要データ削除やインデックス追加、optimize, vacuumもしてるよ。Ryzen 5900Xでのログも貼っとくね。（約199字）" userName="zeroq" createdAt="2025/05/01 14:02:50" color="#38d3d3">}}




{{<matomeQuote body="数百万行/分ってのは、テーブルのカラムが多いとかならわかるけど、普通じゃない気がするな。SQLiteのinsert性能って、ディスクの最大書き込み帯域の少なくとも1％、できれば5％以上が目安だよ。俺がやった最後のバルクinsertでは20％以上出てたし、8カラムのINTテーブル（小さい整数）で毎秒90万insertだったよ。" userName="thechao" createdAt="2025/05/01 12:56:17" color="#45d325">}}




{{<matomeQuote body="ちなみに、SQLiteには公式ツールでこれ（rsync）があるよ：https://www.sqlite.org/rsync.html<br>ページ単位で動くんだ：<br>レプリカ側が各ページの暗号化ハッシュをオリジナル側に送って、ハッシュが一致しないページの全内容をオリジナル側が送り返すんだって。" userName="conradev" createdAt="2025/05/01 21:28:58" color="#45d325">}}




{{<matomeQuote body="うん、でも残念ながらSQLiteチームは、多くのdistrosやbrewがSQLiteをパッケージする時に使う”autotools”のtarballにそのツールを含めてないんだよね。<br>ツールを使う唯一の方法は、自分でコンパイルすることだよ。" userName="CBLT" createdAt="2025/05/01 23:52:34" color="#38d3d3">}}




{{<matomeQuote body="うん、それは残念だね。<br>でも、nixpkgsには入ってるみたいだよ：<br>nix-shell -p sqlite-rsync<br>試してみて。" userName="conradev" createdAt="2025/05/02 07:15:04" color="#785bff">}}




{{<matomeQuote body="現実的にさ、SQLite使ってるなら、自分でコードコンパイルしたりソース管理したりしないの？<br>それってそんなに大したことなの？" userName="dgfitz" createdAt="2025/05/02 00:21:31" color="">}}




{{<matomeQuote body="そうだよ、自分で何も、ましてやCとかサポートライブラリとかコンパイルせずにSQLite使うのって、めっちゃよくあることだよ。" userName="rcxdude" createdAt="2025/05/02 01:00:38" color="">}}




{{<matomeQuote body="`sqlite3_rsync`はリモートにも入れる必要あるんだね。クロスコンパイルしたりPATH通したり、ssh設定もいじったり。面倒な作業が増えちゃうな。難しくはないけど、ちょっと本題と関係ない手間がかかる感じ。" userName="CBLT" createdAt="2025/05/02 02:50:02" color="#ff5c5c">}}




{{<matomeQuote body="最近出た`sqlite_rsync`ツール、すごいよ。SQLiteの内部構造に最適化されてて、効率よくページ比較して変更だけ同期できるんだ。記事のやり方も良いけど、こっち使った方が楽かもね。詳しいことはブログに書いたから見てみて！<br>https://nochlin.com/blog/how-the-new-sqlite3_rsync-utility-w..." userName="hundredwatt" createdAt="2025/05/01 13:31:07" color="#45d325">}}




{{<matomeQuote body="そうそう、`sqlite3_rsync`はもうrsync.netで使えるようになってるんだって。sshで繋いでコマンド打つだけ。先週追加されたばっかで全部じゃないみたいだけど、使った人はみんな期待通りだって言ってるよ。" userName="rsync" createdAt="2025/05/01 19:10:03" color="">}}




{{<matomeQuote body="`sqlite_rsync`はWALモードじゃないとダメなんだって。あとWALモードだとDBファイルはローカルディスクにないと使えない制約もあるみたい。普段は大丈夫だろうけど、そうじゃない時はこのツール使えないね。" userName="jgalt212" createdAt="2025/05/01 13:35:51" color="#ff5c5c">}}




{{<matomeQuote body="`sqlite3_rsync`に実験的な変更入れたとこ。--wal-onlyなしなら非WALでも動くようになったよ。ただし、同期中は元DBは書き込みNG、レプリカDBは読み書きどっちもNGになっちゃう。WALじゃないとしょうがないんだけどね。でもDELETEモードのDBも同期できるのは便利だろうし。もし試せそうだったら、これで問題解決したか教えてほしいな。パッチはここだよ<br>https://sqlite.org/src/info/2025-05-01T16:07Z<br>" userName="SQLite" createdAt="2025/05/01 16:09:12" color="#ff5733">}}




{{<matomeQuote body="アップデート情報：この改善、もうメイン開発ラインに入ったよ。次のSQLite 3.50.0リリースに含まれるって！4週間後くらいかな。" userName="SQLite" createdAt="2025/05/01 18:13:24" color="#ff5733">}}




{{<matomeQuote body="WALモードは、一度に1台のPCだけ書き込むなら、結構いろんなネットワークファイルシステムで動くよ。" userName="remram" createdAt="2025/05/02 12:58:53" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ごめん、コメントの意味がよく分かんないんだけど。WALとかネットワークファイルシステム関係なく、SQLiteファイルって複数のプロセスから同時に書き込めないよね？何か見落としてる？それとも言い間違えた？" userName="jgalt212" createdAt="2025/05/02 13:24:49" color="">}}




{{<matomeQuote body="いや、複数のプロセスから（同じPC上なら）同時に書き込み接続はできるんだよ。SQLiteが自動で順番に処理（シリアライズ）してくれるから安全。低レベルで見れば同時じゃないけど、使う側からしたら自分で順番考えなくていいから同時みたいなもん。" userName="remram" createdAt="2025/05/02 16:12:50" color="">}}




{{<matomeQuote body="しょっちゅう同期すると、ページサイズ大きくしないといけなくて（帯域幅食う）、大変になるかも。" userName="construct0" createdAt="2025/05/01 17:40:30" color="">}}




{{<matomeQuote body="テキストファイルに保存するのは非効率だな。俺はVACUUM INTOを使ってsqliteデータベースを保存してるよ、こんな感じでさ： sqlite3 -readonly /path/db.sqlite ”VACUUM INTO ’/path/backup.sqlite’;”<br>VACUUM INTOを使うとサイズが最小になってファイルシステムのI/O量が減るかも。詳しくはここ見て：https://sqlite.org/lang_vacuum.html" userName="M95D" createdAt="2025/05/01 14:35:10" color="#ff5c5c">}}




{{<matomeQuote body="それはクールだけど、元の記事で言ってたインデックスの問題は解決しないね。遅いリンク経由でインデックスデータを持っていかないのがキモだったんだ。VACUUM INTOの方法だとインデックスが残るからね。テキストファイルはそのままじゃ非効率でも、gzipみたいな簡単なツールでも完璧に圧縮できるよ。" userName="nine_k" createdAt="2025/05/01 14:54:15" color="">}}




{{<matomeQuote body="SQLiteはSQLをバイトコードにパースしたら、もうSQLは捨てちゃうんだ。テキストを使うのは、きっとうまくいくんだろうけど、時間かかるだけだよ。バキュームする前にインメモリデータベースを作って、選んだテーブルだけそこにコピーして、それからディスクにバキュームする方法もあるよ。" userName="conradev" createdAt="2025/05/01 17:27:52" color="">}}




{{<matomeQuote body="前のコメントの圧縮の話だけど、インデックスのこと言ってるんだよね？圧縮がどう動くか、考え直してみるといいかもよ。テキスト+圧縮は、同じ内容を表すバイナリ+圧縮より常に大きくて遅くなるはずだけど？バイナリの方が構造をコードで持ってるから元々コンパクトで効率良いはずだよ。" userName="vlovich123" createdAt="2025/05/01 15:39:44" color="#45d325">}}




{{<matomeQuote body="俺はデータベースコピーの速さより圧縮サイズの話をしてるんだ。インデックスやb-treeもあるけど、バイナリとdump+圧縮どっちが有利か検証してみたよ。767MBファイルで、gzip圧縮後サイズはdumpが285MB、VACUUM INTOが303MB。dumpは少し小さいけど、dumpに時間かかるから微妙。インデックス無しだとバイナリがdumpより8％小さかったよ。" userName="dunham" createdAt="2025/05/01 16:15:19" color="#ff5733">}}




{{<matomeQuote body="この結果は予想通りだよ。インデックスの影響も言ってた通り。dumpのテキスト形式は「INSERT INTO ...」とかのDDLや、BLOB・数値データがテキストエンコーディングになるから膨らむんだ。これはb-treeのオーバーヘッドよりも大きくなるね。" userName="vlovich123" createdAt="2025/05/01 20:15:08" color="#ff5733">}}




{{<matomeQuote body="他の検証データもあるよ。zstdで圧縮した結果、VACUUM INTO + zstd (--long -12)だと19.1秒でdump + zstd (--long -5)の109％のサイズになったみたい。dump + zstd (-12)が827MBで31.7秒、VACUUM INTO + zstd (-12)が885MBで21.5秒。76MB多くても13.7秒速いってこと。" userName="zimpenfish" createdAt="2025/05/03 08:51:54" color="#45d325">}}




{{<matomeQuote body="ターゲットサイトの帯域幅によるね。かなり遠隔地かもしれないし、公開インターネットサービスに繋がってないかもだし。" userName="nine_k" createdAt="2025/05/01 18:59:24" color="">}}




{{<matomeQuote body="それってインデックスも保持するの？TFA（この記事）にも書いてたけど、インデックスがあるからsqliteファイルが大きくなるんでしょ。" userName="gwbas1c" createdAt="2025/05/01 14:47:01" color="#ff5c5c">}}




{{<matomeQuote body="多分インデックスは保持しないと思うけど、text sqlを実行するときにインデックスを再作成するんじゃないかな。" userName="4silvertooth" createdAt="2025/05/01 15:52:58" color="">}}




{{<matomeQuote body="rsyncが提供してる転送中の圧縮を使ってみなかったのに驚いたな: -z, --compress ファイルデータを転送中に圧縮する --compress-level=NUM 圧縮レベルを明示的に設定する<br>たぶん一度gzipで圧縮してから転送する方が速いんだろうけど、フラグ一つで転送を改善できるのはいいね。" userName="mromanuk" createdAt="2025/05/01 11:56:59" color="#785bff">}}




{{<matomeQuote body="もっといいのは、記事で破損の問題に触れてるんだから、sqlite3_rsync (https://sqlite.org/rsync.html) を-zsqliteオプション付きで使うことだよ。トランザクションとWALを考慮したrsyncで、転送中圧縮もできる。" userName="jddj" createdAt="2025/05/01 12:03:59" color="#45d325">}}




{{<matomeQuote body="重要なのはインデックスをスキップすることで、これは圧縮の前にやらなきゃいけない。俺がこういうことやるときは、ダンプを直接gzipにストリームしてるよ。（中間ファイルなしで直接宛先にストリームする方法はたいてい見つけられる。）<br>さらにこの方法だと、宛先でも圧縮されたまま保存されるんだ。もし目的が安易なレプリケーションじゃなくてバックアップならね。" userName="crazygringo" createdAt="2025/05/01 12:49:09" color="#785bff">}}




{{<matomeQuote body="重要な点は転送時間を減らすことだったでしょ？もしrsync -zで十分短くなるなら、インデックスがあろうとなかろうと関係ないし、テキストファイルからDBを再作成するステップもスキップできるじゃん。" userName="schnable" createdAt="2025/05/01 16:34:30" color="#45d325">}}




{{<matomeQuote body="記事のポイントは、インデックスがあるかどうかが”重要”なんだよ。それにインデックスってそもそもあんまり圧縮できないんだよね。うまく圧縮できるのは、だいたい人間が読めるテキストフィールドとか、booleanとかenumみたいなものだよ。" userName="crazygringo" createdAt="2025/05/01 16:50:33" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
