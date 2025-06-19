+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'macOS Tahoeに新ディスクイメージフォーマットが！何が変わる？'
tags = ["macOS", "ディスクイメージ", "ストレージ", "ファイルシステム", "仮想化"]
featureimage = 'thumbnails/purple2.jpg'
+++

> macOS Tahoeに新ディスクイメージフォーマットが！何が変わる？

引用元：[https://news.ycombinator.com/item?id=44259132](https://news.ycombinator.com/item?id=44259132)




{{<matomeQuote body="https://developer.apple.com/documentation/virtualization/vzd...<br>これってさ、Apple版のqcow2とか友達（似たようなもの）みたいな感じじゃない？" userName="moondev" createdAt="2025/06/12 17:11:47" color="#785bff">}}




{{<matomeQuote body="“Asif”ってディスクイメージフォーマットの名前、面白いね。“まるで”（as if）本物のディスクみたい、ってことか。 ;）" userName="layer8" createdAt="2025/06/12 20:17:39" color="">}}




{{<matomeQuote body="ベンチマークの結果、なんかおかしいんだけど - ASIFのテストはM3かM4でやってて、他のやつはM1でやってない？なんで？" userName="tayiorrobinson" createdAt="2025/06/12 21:42:04" color="#45d325">}}




{{<matomeQuote body="うん、俺もそれすぐ気になったよ。<br>もし同じハードウェアでベンチマークをやり直せないんだったら、数字を比較するのは難しいよね。" userName="bradknowles" createdAt="2025/06/14 05:21:21" color="#ff33a1">}}




{{<matomeQuote body="記事はざっと読んだけど、質問。<br>NAS（Linux）にあるスパースディスクイメージを、MacのAPFS形式でバックアップに使ってるんだ（VMじゃなくて）。macOS Tahoeになったら、この新しいASIF形式で速くなる？NASに置くことで何か問題がないといいんだけどな。" userName="AnonC" createdAt="2025/06/12 19:26:03" color="#ff5c5c">}}




{{<matomeQuote body="ああ、それ俺も気になる。<br>Time MachineがSMB経由で動くのって、マジでヤバいくらい遅いんだよな。<br>正直、MacのSMBのパフォーマンス自体が良くないんだと思うけど。" userName="poisonwomb" createdAt="2025/06/13 10:08:08" color="">}}




{{<matomeQuote body="誰かドキュメント化されたディスクイメージフォーマットをくれ！俺の王国と引き換えにでも！" userName="bigyabai" createdAt="2025/06/12 16:38:11" color="">}}




{{<matomeQuote body="君の王国もらった！<br>ドキュメント化されてるやつなら、ISO 9660（https://www.iso.org/iso-9660-images-for-computer-files.html）、VMDK（https://en.wikipedia.org/wiki/VMDK）、Amiga（https://en.wikipedia.org/wiki/Amiga_Disk_File）、UDF（https://en.wikipedia.org/wiki/Universal_Disk_Format）、Apple Disk Image（https://en.wikipedia.org/wiki/Apple_Disk_Image）とかあるぜ。" userName="mannyv" createdAt="2025/06/12 21:20:14" color="">}}




{{<matomeQuote body="VMDKはちゃんとドキュメントされてないし、リバースエンジニアリングされたフォーマットの集まりみたいだね。" userName="shakna" createdAt="2025/06/12 21:26:58" color="">}}




{{<matomeQuote body="VMDKの仕様はOVFの一部だから公開されてるはずだよ。でも、VMwareのリポジトリにApache 2ライセンスの仕様書があるんだ。<br>リンクは切れてるけどInternet Archiveで見れるよ。<br>https://web.archive.org/web/20210411181842/https://www.vmwar...<br>1: https://www.dmtf.org/standards/ovf" userName="mdaniel" createdAt="2025/06/12 22:23:44" color="#ff5c5c">}}




{{<matomeQuote body="いや、OVF仕様にはVMDKは入ってないんだよ。仕様を見つけたのはすごいけど、もうメンテナンスされてないし、残念ながら誰も使ってないんだ。" userName="shakna" createdAt="2025/06/13 06:21:28" color="">}}




{{<matomeQuote body="VHDXっていうディスクイメージフォーマットもあるよ。<br>Microsoftのドキュメントはこれ。<br>https://learn.microsoft.com/en-us/openspecs/windows_protocol..." userName="tobias3" createdAt="2025/06/12 23:11:21" color="#785bff">}}




{{<matomeQuote body="ドキュメントがちゃんとしてるディスクイメージフォーマットはqcow2くらいだね。でもそれがいつもベストとは限らないんだ。<br>他の多くはヘッダーだけで「うちのツールだけ対応」って感じだよ。<br>https://www.qemu.org/docs/master/interop/qcow2.html" userName="shakna" createdAt="2025/06/12 21:18:41" color="#ff5733">}}




{{<matomeQuote body="ファイルシステムはディスクイメージとは違うよ。" userName="zymhan" createdAt="2025/06/12 17:39:22" color="">}}




{{<matomeQuote body="ディスクイメージみたいに鳴くなら、それはディスクイメージだよ。" userName="n_plus_1_acc" createdAt="2025/06/12 17:57:33" color="">}}




{{<matomeQuote body="ファイルシステムはファイルじゃないよ。<br>ファイルシステムをファイルに入れられるけど、それは初期のディスクイメージみたいなもんで、最初から全部容量確保しなきゃいけない欠点があるんだ。もっと良いやり方があるよ。" userName="duskwuff" createdAt="2025/06/12 18:06:05" color="">}}




{{<matomeQuote body="人気のディスクイメージフォーマットの中には、ただのスパースファイルみたいなのも多いんだ。<br>ブロックと位置のマッピングテーブル、それにヘッダーがあるだけ。<br>中にファイルシステムを入れたらディスクイメージになるって言うなら、ただのファイルもそうなるでしょ。<br>特にスパースはオプションだしね。VHDなんか、ファイルにヘッダー付けただけだよ。" userName="Dylan16807" createdAt="2025/06/13 05:03:52" color="#ff5c5c">}}




{{<matomeQuote body="APFSのsparsebundleをNASに入れてNFSでマウントしたら、普通にAPFSボリュームとして使えたのがマジすごかったんだよね。ちょっと遅いけど、iSCSIよりはいい感じ。今回の新しいフォーマットだと、もっと快適になるかもね？" userName="archagon" createdAt="2025/06/12 20:43:41" color="#45d325">}}




{{<matomeQuote body="なんでそんな驚くかな？って感じだけど、Appleの古いTime Capsuleだってネットワーク越しにsparsebundleをマウントしてたんだよね。今回の新しいフォーマットが前より良くなるってのは、まあそうだろね、同意。" userName="kccqzy" createdAt="2025/06/12 20:47:16" color="">}}




{{<matomeQuote body="NFSでファイル管理した経験があんまり良くなかったからさ、その上でちゃんと動くAPFSボリュームを使えるのが、なんか魔法みたいなんだよね。" userName="archagon" createdAt="2025/06/12 20:50:00" color="">}}




{{<matomeQuote body="へー、うちはNFSをガンガン使ってるけど問題はほぼないよ。もし何かあっても、大体ネットワークの問題が原因なんだ。ネットワーク環境が良ければ、NFSは良い選択肢だと思うな。" userName="kccqzy" createdAt="2025/06/13 00:07:08" color="">}}




{{<matomeQuote body="最近のコンテナとかディスクイメージの変更を見てると、Appleがサーバーとかクラウドの市場に参入するつもりなのかな？ってちょっと思うんだよね。" userName="littlecranky67" createdAt="2025/06/14 07:42:58" color="">}}




{{<matomeQuote body="それって、VM上で動くDocker for Macとかの速度を上げたりするのかな？（だって中でVM動いてるからさ）。それなら、結構大きな問題が解決するんだけどね。" userName="benguillet" createdAt="2025/06/12 19:40:31" color="#38d3d3">}}




{{<matomeQuote body="macOS TahoeでLinuxコンテナの新しいAPIも発表されたんだって。セキュリティとかパフォーマンスを重視してるらしいよ。今回の新しいディスクイメージは、そのコンテナの性能アップをサポートするのに役立つんじゃないかな。コンテナが速くなるのはマジで大きな進歩だよね。詳しくはここ見て→https://youtu.be/JvQtvbhtXmo?si=3OphClGvylHggmSW" userName="helmsb" createdAt="2025/06/13 11:02:05" color="#ff5733">}}




{{<matomeQuote body="これ、OSアップデートの時に必要になる容量を減らしてくれるかな？OSのメジャーアップデートって、いつもすごく非効率なんだよね。" userName="pbronez" createdAt="2025/06/12 17:07:53" color="">}}




{{<matomeQuote body="いや、違うよ。OSアップデートのプロセスにはディスクイメージは関係ないよ。" userName="duskwuff" createdAt="2025/06/12 17:23:51" color="">}}




{{<matomeQuote body="関係あるって！だってOSアップデートはディスクイメージに入ってて、そこから展開されるんだから。これ以上どう関係するっていうのさ…" userName="happyopossum" createdAt="2025/06/12 17:45:20" color="">}}




{{<matomeQuote body="いや、この種類のディスクイメージじゃないって。ASIFは読み書きできるディスクイメージだけど、OSアップデートで配布されるのは読み込み専用のイメージだよ（もしディスクイメージだとしたらね）。" userName="duskwuff" createdAt="2025/06/12 18:08:04" color="">}}




{{<matomeQuote body="へえ、すごい！じゃあこれってHFS+からAPFSに移行した時みたいにファイルシステム自体が変わるんじゃなくて、もっと仮想化向けってこと？" userName="cyberflame" createdAt="2025/06/12 19:24:36" color="">}}




{{<matomeQuote body="それはちょっと違う話だよ。これは新しいディスクイメージのフォーマットなんだ。ASIFイメージの中にAPFSのボリュームを作ることはできるんだよ。" userName="aroman" createdAt="2025/06/12 20:39:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="重複投稿は votes + comments * 時間で決まると思うよ。実際、 real な量の votes や comments がついたら、 repost に1年待つ必要があるね。もし全く注目されなかったら、すぐに repost できる（けど、俺は1日後であるべきだと思うな）。" userName="azhenley" createdAt="2025/06/12 19:10:35" color="">}}




{{<matomeQuote body="場合によるね。過去数日間に見つけたリンクをいくつか投稿してみたんだけど、 dups って表示されたんだ。でも元の投稿は数日前、数週間前、時には数ヶ月前のものだったんだよ。" userName="90s_dev" createdAt="2025/06/12 18:25:45" color="">}}




{{<matomeQuote body="なんでこのコメントが downvoted されてるか分からないな。そう、俺も今日 dupe で redirect されたんだけど、7ヶ月前のものだったんだ。 content が大幅に変わっても、再投稿できないんだね。" userName="summarity" createdAt="2025/06/12 18:54:31" color="">}}




{{<matomeQuote body="それを経験した記憶があるし、再投稿する option があった気がするな。もしかしたら karma と関係あるのかもしれないね。" userName="bombcar" createdAt="2025/06/12 19:36:22" color="">}}




{{<matomeQuote body=" link が同じなら、 dupe 投稿は original をただ押し上げるだけにするべきだと思うね。" userName="socalgal2" createdAt="2025/06/12 22:10:22" color="">}}




{{<matomeQuote body="俺の推測だけど、“fastest gun in the west” は community にとって bit anti-pattern かもしれないね。だって昔は、 mild な URL shenanigans がより strict な dupe detection を bypass する common な hack だったみたいだから。そして community は aggressive な karma seeking から real に benefit を得られないだろうね — 当時は一番乗りが resubmission ごとに point をくれたんだ。[1] でもそれは全部 speculation で、他の users に submit されやすいものの方が submit する criterion として優れてるわけじゃないっていう supposition に基づいてるだけだけどね。でも俺は very well 間違ってる可能性もあるし、probably そうだろうね。[1] そして submission の数はおそらく front page placement の at best a noisy signal で、 curiosity と negatively correlated かも… even here, Apple がやってることは yesterday’s big press release by one of the most valuable corporations in the world からそんなに far を stray してないよ。" userName="brudgers" createdAt="2025/06/12 20:00:23" color="">}}




{{<matomeQuote body="この domain で何か weird なことがあるのかもしれないね。 submission の list を見てみてよ。君のが relatively short な time window で accepted された first dupe じゃないから。" userName="brk" createdAt="2025/06/12 21:16:19" color="">}}




{{<matomeQuote body="Nice だね。でも個人的には、 effort が ext4, BtrFS, NTFS そして other popular な filesystem を Linux や Windows の世界から support するものだったら better だと思うな…" userName="lucasoshiro" createdAt="2025/06/12 16:44:10" color="">}}




{{<matomeQuote body=" ext4 と Btrfs は Linux で only well supported されてるだけで universal standards じゃないんだ。 NTFS は recently まで Windows で only supported well されてたけど、 BitLocker みたいに extensions は still Windows only だよ。 Mac は still NTFS volume に write させてくれないしね。 APFS と HFS+ は obviously Apple file systems だよ。 FreeBSD は ext4 や Btrfs を well support してないけど、代わりに UFS2 か ZFS を prefer するんだ。 despite being an open-source Unix-inspired OS なのにね。 The world は proprietary か non-universal な file systems で動いてるんだよ。 CDFS (ISO 9660), FAT, そして exFAT が sole exceptions だね。" userName="gjsman-1000" createdAt="2025/06/12 16:53:07" color="#ff5c5c">}}




{{<matomeQuote body="" userName="mrpippy" createdAt="2025/06/12 16:58:36" color="#ff33a1">}}




{{<matomeQuote body="" userName="whywhywhywhy" createdAt="2025/06/12 17:33:07" color="">}}




{{<matomeQuote body="" userName="bombcar" createdAt="2025/06/12 17:08:30" color="">}}




{{<matomeQuote body="" userName="jraph" createdAt="2025/06/12 17:04:26" color="#ff5c5c">}}




{{<matomeQuote body="" userName="coldtea" createdAt="2025/06/12 18:21:59" color="">}}




{{<matomeQuote body="" userName="dataflow" createdAt="2025/06/12 17:11:35" color="">}}




{{<matomeQuote body="" userName="arccy" createdAt="2025/06/12 17:44:00" color="">}}




{{<matomeQuote body="" userName="nemomarx" createdAt="2025/06/12 16:59:28" color="">}}




{{<matomeQuote body="" userName="crazygringo" createdAt="2025/06/12 17:18:28" color="#ff33a1">}}




{{<matomeQuote body="" userName="dataflow" createdAt="2025/06/12 17:54:00" color="">}}




{{<matomeQuote body="そうそう、zfsのことね。でもあれって管理システムでもあるじゃん？ファイルシステムだけ欲しかったとか？なんでみんなもっとzfs使わないんだろ。今年の自動拡張アップデートの後でもさ。" userName="mtillman" createdAt="2025/06/12 17:43:58" color="">}}




{{<matomeQuote body="MicrosoftもNTFSにパフォーマンスの問題があるって認めてて、それがReFSを作った理由の一つらしいよ。ReFSは問題の元だったMFTをなくしたんだって。" userName="dist-epoch" createdAt="2025/06/12 18:17:07" color="">}}




{{<matomeQuote body="うん、OPがファイルシステムじゃなくてディスクイメージ形式に労力かけたのはなんで？って聞いてたんだよね。もっともな疑問だなって思うよ。" userName="kccqzy" createdAt="2025/06/12 20:44:30" color="">}}




{{<matomeQuote body="ネットワーク越しにファイルやり取りできるなら、今回のことってそもそも関係ある？追加のファイルシステムをサポートしたいユースケースってなんだろ？外付けドライブとかかな？" userName="atonse" createdAt="2025/06/12 17:13:30" color="">}}




{{<matomeQuote body="AppleとMicrosoftって、ユーザーのこと考えてるならさ、集まってAPFSとNTFSをクロスライセンスするとか、内部資料共有するとかすればいいのにね。そしたら外付けドライブでも安全なモダン形式使えるじゃん、ユーザーを囲い込まずに。あ、自分で答えちゃった。" userName="xp84" createdAt="2025/06/12 21:32:27" color="#45d325">}}




{{<matomeQuote body="＞ FUSE使ってる人がどれだけいるか考えると＜br＞MacユーザーでFUSEが何か知ってる人なんてどれだけいる？私は知ってるけど、0.001％以下でしょ。" userName="whywhywhywhy" createdAt="2025/06/12 19:14:16" color="">}}




{{<matomeQuote body="質問なんだけど、LinuxでのNTFSサポートって誰がメンテしてるの？Microsoft？カーネル？ディストリビューション？マジで知りたい。" userName="Defletter" createdAt="2025/06/12 17:35:38" color="">}}




{{<matomeQuote body="スマホだから長話できないけど、みんなが言うNTFSのパフォーマンス問題って、実は違う問題だったりするかもよ。NTFSが原因だって断定する前に、ReFSとかFAT32も試して、問題が解決するか見てみ？フィルタードライバーとか他のものが原因だったりするかも。あと、特定のOSでの実装でテストしてるだけってことも忘れないでね。" userName="dataflow" createdAt="2025/06/12 18:32:08" color="#ff5c5c">}}




{{<matomeQuote body="ちょうど昨日、ユースケースにぶつかったとこなんだ。MacかWindowsからSteamDeck用のext4のMicroSDにファイルコピーしたかったのに、カード挿してコピーするだけなのにできなかったんだよね。" userName="cortesoft" createdAt="2025/06/12 17:35:28" color="">}}




{{<matomeQuote body="NTFSがWindows以外で最近までちゃんとサポートされなかったって？いやいや、俺15年前のLinuxノートでntfs-3g問題なく使ってたよ。だからそれは“最近”ってわけじゃないね。" userName="mystifyingpoi" createdAt="2025/06/12 18:08:35" color="">}}




{{<matomeQuote body="仮想ディスクの話だけどさ、この分野ってマジでフォーマット足りないんだっけ？って感じだよな。<br>これ何か新しいことしてんの？それとも単にいっぱいありすぎて分かりにくくしてるだけ？" userName="hulitu" createdAt="2025/06/12 17:47:25" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺の考えだけど、ZFSのメリットのほとんど（9割くらい）って複数ドライブがないと活きないんだよ。残念ながらサーバー以外で複数ドライブ使う人ってあんまりいないからさ。" userName="adgjlsfhk1" createdAt="2025/06/12 19:43:24" color="#38d3d3">}}




{{<matomeQuote body="FreeBSDだってLinuxのFSちゃんとサポートする気ないみたいだし、結局みんな独自で閉じこもってる感じだよね。コードがあってもさ。<br>で、LinuxもFreeBSDのFSを公式にはサポートしない。UFS2はもう特許もほぼ切れてるのにLinuxは読み取り専用止まり。<br>オープンソースだからって、人気プロジェクトだからって、標準になるわけじゃないし、実装してない方がダメってこともないんだよな。→ https://xkcd.com/927/" userName="gjsman-1000" createdAt="2025/06/12 17:00:43" color="#ff5733">}}




{{<matomeQuote body="macFUSEってまだ使ってる人多いの？ライセンス変わってから、利用者マジで減ったと思ってたけど。" userName="__float" createdAt="2025/06/12 20:19:51" color="">}}




{{<matomeQuote body="voidtools Everything2とかWizTreeみたいなツールがあるんだけど、これWindowsのFS API通さずにディスクから直接NTFS読むんだ。マジ速いよ。Linuxでext4のfind/du使うより速いくらい。" userName="marwis" createdAt="2025/06/12 19:39:03" color="#ff5733">}}




{{<matomeQuote body="AppleってZFS採用しかけたんだけど、確かSunが先に発表しちゃって、Jobsを怒らせたらしいね。" userName="bombcar" createdAt="2025/06/12 20:15:27" color="">}}




{{<matomeQuote body="俺、システムパーティション以外はReFSを何年も使ってるよ。信頼性とか自己修復が理由だけどね。<br>でもMFTがちょっと厄介でさ。100万個ファイル作って消しても、MFTが縮んでくれないんだよね。" userName="dist-epoch" createdAt="2025/06/12 18:42:04" color="">}}




{{<matomeQuote body="ブログ記事や開発ガイドに結論を加えるのって、最後のステップで終わるのが変だからやってるんだけど、いつも言ったことの繰り返しみたいでモヤモヤするんだよね。論文じゃないし、たいていの記事は最後に要点をまとめ直すほど複雑じゃないと思うんだ。これって結構みんな悩んでることだと思うよ。" userName="skrtskrt" createdAt="2025/06/12 19:34:12" color="">}}




{{<matomeQuote body="前は個性的で面白かった話し方なのに、今はただのAIだって言われちゃうことがあるんだ。LLMが出る前はロボットなんて言われたことなかったのにさ。きっと、良い文章って、近いうちにAIが作ったように感じられない文章に変わっていくんだろうね。" userName="thierrydamiba" createdAt="2025/06/12 19:57:53" color="">}}




{{<matomeQuote body="emダッシュがAIっぽいって言われるの、マジで頭にくるわ！ emダッシュってすごく良くて、もっと使われるべき句読点なのに。今の大学みたいにAIとかインチキなAI検出ツールで悩まされてないのだけは助かるわ。昔からあった剽窃の冤罪だけで十分ひどかったのに。" userName="skrtskrt" createdAt="2025/06/12 20:43:01" color="">}}




{{<matomeQuote body="＞emダッシュがAIの兆候だって頭にくる<br>あれ、HNとかRedditとか、他のSNSで書かれたコメントの良い目安になるんだよ。俺含め、普通の人ってそんなに文章上手くないし、ほとんどの英語ネイティブはemダッシュをちゃんと使えないと思うんだ。<br>本なら使うのは普通で、AIはそこから学習してるんだろうけど、あれはほとんどプロが書いてるしね。正直、SNSの投稿でemダッシュ見たら読むのやめて次に行くレベルだわ。" userName="SkyeCA" createdAt="2025/06/12 21:24:41" color="">}}




{{<matomeQuote body="Appleが研究開発した新しいクールな製品とかデータフォーマットとか、そのたびに公開ドキュメントがほとんどないのは残念だよな。確かに、ハッカーがすぐテストしたりリバースエンジニアリングしたりできるけど、無駄な作業じゃん。正直、なんでAppleがハッカー界隈であんなに崇められてるのか分かんないわ。<br>Microsoftですらもうこんなことしてないのに不信感持たれてる。一方Appleはずっと秘密主義で姑息な手段も使ってきたのに、いまだに愛されてるんだから。" userName="henry700" createdAt="2025/06/12 17:19:56" color="#785bff">}}




{{<matomeQuote body="ほら、macOSのベースになってるUnixレイヤーのDarwinのリンクだよ、これはオープンソースだよ [1]。どうぞ！<br>[1]: https://github.com/apple-oss-distributions/distribution-macO..." userName="alwillis" createdAt="2025/06/13 02:05:17" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
