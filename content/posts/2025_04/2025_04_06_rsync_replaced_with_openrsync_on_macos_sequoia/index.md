+++
date = '2025-04-06T00:00:00'
months = '2025/04'
draft = false
title = 'macOS Sequoiaでrsyncがopenrsyncに置き換えだと!? 完璧なファイルコピーはもう無理なのか'
tags = ["macOS", "rsync", "openrsync", "ファイルコピー", "データ移行"]
featureimage = 'thumbnails/blue3.jpg'
+++

> macOS Sequoiaでrsyncがopenrsyncに置き換えだと!? 完璧なファイルコピーはもう無理なのか

引用元：[https://news.ycombinator.com/item?id=43605003](https://news.ycombinator.com/item?id=43605003)

{{<matomeQuote body="openrsyncのドキュメントがイマイチで、rsyncの代わりになるか不安だなー。<br>ファイルコピーするなら、完璧なコピーじゃないとダメじゃん？データとかメタデータがちょっとでも欠けたらゴミだよ。<br>UNIX系のコピープログラムって、デフォルトだと完璧なコピーできないのが多いし、オプション変えても無理なのもあるし。<br>scpも昔はOSとかファイルシステム違うと完璧なコピーできなかったから使ってない。rsyncだけが完璧にコピーできるんだよね（オプション次第だけど）。FreeBSDのUFSとLinuxのXFSの間でもOK。<br>openrsyncのドキュメントじゃ完璧なコピーできるか分かんないから、今はゴミ扱い。<br>bsdtarは完璧なアーカイブ作れるよ（pax形式ね）。<br>（rsyncはいつもaliasでオプション付けてる）<br>coreutilsのcpもオプション次第で完璧にコピーできるけど、コンパイルオプションが変だとダメ。<br>" userName="adrian_b" createdAt="2025-04-07T07:00:42" color="#45d325">}}

{{<matomeQuote body="意見が違うけど、バックアップ会社で働いてて、ほとんどの顧客（大企業）はメタデータの99%が正しく復元されなくても気にしないみたい。データさえ戻ればOKって感じ。<br>（うちは全部丁寧に復元してるんだけど、気にしてるのってうちだけなのかなー）" userName="inglor" createdAt="2025-04-07T08:20:49" color="">}}

{{<matomeQuote body="「気にしない」って言ってる人も、パーミッションがおかしくなったり、時間ベースのスクリプトが動かなくなったりしたら、絶対気にすると思うよ。「データが消えた！」ってパニックになってる時は、誰もそんなこと考えないんだろうけど。" userName="nolok" createdAt="2025-04-07T08:34:44" color="">}}

{{<matomeQuote body="みんなが気にしないのは、あなたが気にしてるからだよ。だから、気にしないことによる不幸を経験したことがないんだ。" userName="mmcnl" createdAt="2025-04-07T08:37:28" color="">}}

{{<matomeQuote body="いやいや、そんなことないって。ACLとか正確な日付とか、必要ないデータも多いよ。<br>それに、DICOMとかパスワード付きPDFとかZipアーカイブみたいに、アプリ固有のデータ形式は、ファイルシステムの「追加」属性なんて気にしないことが多いんだ。だって、 universally supported じゃないし、ファイル形式の中で独自に実装してるからね。" userName="crabbone" createdAt="2025-04-07T14:18:22" color="">}}

{{<matomeQuote body="同意。データが99%重要で、残りは作り直せるか、どうにかできると思う。ファイルメタデータに頼りすぎてるなら、もっと設計を見直すべき。" userName="mohas" createdAt="2025-04-07T09:05:06" color="">}}

{{<matomeQuote body="もしその情報が業務プロセスを動かすなら、それはメタデータじゃなくてデータだって言えるんじゃない？" userName="ForHackernews" createdAt="2025-04-07T10:00:02" color="">}}

{{<matomeQuote body="OPのコマンドの出力<br>$ /usr/bin/rsync –version<br><br>…openrsyncのこと何も言ってない。Sequoia 15.3.1だけど。" userName="wyclif" createdAt="2025-04-07T11:09:34" color="">}}

{{<matomeQuote body="変更は15.4でされたみたい。" userName="luckman212" createdAt="2025-04-07T11:35:35" color="">}}

{{<matomeQuote body="えー、こういう変更ってマイナーリリースでやるべきじゃないよね…" userName="unilynx" createdAt="2025-04-07T14:18:54" color="">}}

{{<matomeQuote body="それって破壊的な変更なの？" userName="dcow" createdAt="2025-04-07T15:27:07" color="">}}

{{<matomeQuote body="それってAppleみたいな会社が「誰も使わない」って理由で重要な機能を削除するのと同じ思考回路じゃん？Yogi Berraの「誰も行かない、混みすぎてるから」って言葉を思い出すわ。<br>例えば、Apple製品のターゲットディスクモードを知らない人も多いけど、あれのおかげで何時間も助けられてるし、管理も楽勝なんだよね。ターゲットディスプレイモードを使ったことある人に、それなしでどうすんのって聞いてみてよ。<br>あと、Time Machineってrsyncベースなんだよね。" userName="m463" createdAt="2025-04-07T20:09:19" color="">}}

{{<matomeQuote body="＞openrsyncの現在のドキュメントには、完全なファイルのコピーを作成できるという保証はないから、デフォルトではできないと思ってる。だから今のところ、役に立たないプログラムだと思ってるよ。<br>それって単なるドキュメントのスタイルトーンのミスマッチってことない？俺なら、openrsyncは単にライセンスが緩いrsyncだって思うけどな。違う動きをするなんて思わない。ちゃんと検証したの？それとも単なる懐疑論？よくわかんない。<br>追記：openrsyncのreadme読んだら、rsyncと互換性があって、rsyncのドキュメントを参照しろって書いてあるじゃん。拡張ファイル属性とかACLとか高解像度タイムスタンプがプロトコルレベルでオプションじゃない限り、最近のrsyncがサポートしてることは全部サポートしてなきゃ互換性があるとは言えないよね？それとも、プロトコルは全部受け入れるけど、ACLとかを無視してるってこと？" userName="dcow" createdAt="2025-04-07T08:11:42" color="#ff5733">}}

{{<matomeQuote body="記事から引用するね：<br>＞openrsyncのコマンドラインツールはrsyncと互換性があるけど、ドキュメントにあるように、openrsyncはrsyncのコマンドライン引数のサブセットしか受け付けない。" userName="wkat4242" createdAt="2025-04-07T10:07:57" color="">}}

{{<matomeQuote body="でもそれって、メタデータを完全にコピーする機能がないって意味じゃないかもよ？openrsyncは実装を簡単にするために、古くて時代遅れのオプションを削除しただけかもしれないじゃん。" userName="dcow" createdAt="2025-04-07T15:25:06" color="">}}

{{<matomeQuote body="うーん、それらの古くて時代遅れのオプションは、多くのユースケースでまだ重要な役割を果たしてるかもよ？<br>例えば、tarのマルチボリュームサポートはまだ使ってるし。あれって、tarがテープアーカイブに使われてた頃の名残なんだよね（だからtarって名前なんだよ）。それがないとマジで困るんだ。ハードディスクをバックアップテープとして使ってるから（これが意外と使えるんだよね。つい1、2週間前にリストアが必要になって助かったんだ）。でも、tarユーザーの99.9%はそんなこと知らないと思う。<br>rsyncも、みんなが思ってる以上にいろんなことに使われてるスイスアーミーナイフみたいなもんだよね。特にリモート機能はマジで凄い。<br>問題は、何かをクローンするときに完全な互換性がないと、ユーザーは頭を悩ませてイライラするってこと。それなら、別の名前をつけた方が、違うものだって分かりやすいよね。" userName="wkat4242" createdAt="2025-04-07T19:06:09" color="#ff5733">}}

{{<matomeQuote body="https://xkcd.com/1172/" userName="sbuk" createdAt="2025-04-07T19:21:48" color="">}}

{{<matomeQuote body="まあ、そうだね。俺は押し付けがましいソフトウェア（例えばAppleとかGNOME）が大嫌いなんだ。俺に合ったニッチな使い方を見つけるのが得意なんだよね。今はKDEを使ってるんだけど、完全に自分の好みに合わせて改造してるよ。UIと戦わなくて済むから、生産性が上がるんだよね。何百万ものニッチな機能を持つツールは最高。<br>俺が本当に価値を感じるソフトウェアは、何か変なことをする必要がある状況になって、ドキュメントを読んで回避策を探そうとしたら、まさに必要な機能が隠されてるのを発見したときだね。開発者が俺の心を読んだみたいで。本当に大切に思えるパッケージは少ないんだ（今の時代は特にね。昔のPCソフトウェアの方が強力だったと思う）。<br>その一つがSP (SK Packet Radio)で、何度かそういうことがあったんだ。あれは本当に凄いソフトウェアだった。8088とTSRベースのソフトモデム（電話回線じゃなくて無線に接続する）で、いろんなことができたんだよ。マジで。どんな突拍子もないことでも、設定だけで実現できたんだ。" userName="wkat4242" createdAt="2025-04-07T22:02:25" color="#ff33a1">}}

{{<matomeQuote body="これが押し付けがましくないKDEの味：<br>＞https://invent.kde.org/system/dolphin/-/merge_requests/1" userName="chupasaurus" createdAt="2025-04-08T01:19:30" color="">}}

{{<matomeQuote body="OpenRsyncはOpenBSDプロジェクトのものだよ。これは通常、品質が高くてセキュリティに重点を置いてるってことの指標になるね。でも、このケースでは、公式サイトでさえこう言ってる：<br>＞まだ作業中だよ…だから待っててね。" userName="WhyNotHugo" createdAt="2025-04-07T11:12:16" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="OpenBSDってACLサポートなくしたんだよね、確か。" userName="onetom" createdAt="2025-04-07T15:47:06" color="">}}

{{<matomeQuote body="これはAppleのライセンス問題で、気にするユーザーは少ないと思うな。そういう人はrsyncインストールするでしょ。" userName="graemep" createdAt="2025-04-07T07:28:27" color="">}}

{{<matomeQuote body="Appleが今使ってるrsyncって2006年のバージョンなんだって。iPhoneより前だよ。" userName="karel-3d" createdAt="2025-04-07T12:18:23" color="#ff5733">}}

{{<matomeQuote body="それが最後のGPLv2のみのrsyncバージョンなんだね。" userName="adestefan" createdAt="2025-04-07T13:38:46" color="">}}

{{<matomeQuote body="素朴な疑問なんだけど、AppleってGPL v3のソフトウェア使うの何が問題なの？" userName="_fat_santa" createdAt="2025-04-07T14:47:20" color="">}}

{{<matomeQuote body="Appleはすべての実行ファイルに署名してるから、誰かがGPLv3を使って、Appleに署名キーを渡して自分のバージョンを実行させようとしたり（anti-tivo条項）、GPLv3ソフトウェアを出荷したことで特許侵害で訴えられなくなるリスクがあるんだって。裁判でどうなるかは別として、訴えられるリスクを避けるために、企業はGPL3に近づかないんだよ。銀行もGPL3には触らないんだ。" userName="blokey" createdAt="2025-04-07T15:32:23" color="#785bff">}}

{{<matomeQuote body="銀行みたいな組織が、製品に使わなくても、社内利用でもGPL3を禁止するのってなんで？" userName="imglorp" createdAt="2025-04-07T17:47:08" color="">}}

{{<matomeQuote body="GPLv3には、ソフトウェアの配布全体をカバーするような文言が含まれてるらしい。つまり、GPLv3のものをOSと一緒に出荷すると、rsyncと一緒に配布されるものすべてをエンドユーザーがコンパイルできるようにする必要があると裁判所が判断するリスクがわずかにあるってこと。" userName="dcow" createdAt="2025-04-07T15:30:38" color="#38d3d3">}}

{{<matomeQuote body="完全なコピーってどういう意味？ファイルの中身のこと？それともファイルシステム属性も含むの？" userName="scrapheap" createdAt="2025-04-07T07:33:44" color="">}}

{{<matomeQuote body="ファイルってデータとメタデータ（ファイル名、タイムスタンプ、アクセス権とか）で構成されてるよね。デフォルトだと、ファイルのコピーは全部含めるべき。もし保存できない場合は警告が必要。rsyncみたいなコピーユーティリティは、OS間のAPIの違いに対応する必要があるんだ。" userName="adrian_b" createdAt="2025-04-07T07:40:08" color="#ff5733">}}

{{<matomeQuote body="ファイルについてる属性の話だよね。普通にコピーしたらファイルの属性は全部同じにはならないんじゃない？ファイルの中身は同じでもさ。一部はコピーされると思うけど全部じゃないでしょ。<br>例えば、ファイルのオーナー。コピーしたらコピーした人がオーナーになるのが普通じゃない？オリジナルファイルのオーナーじゃなくてさ。<br>rootがオーナーでsetuidされてるファイルをコピーして、普通のユーザー権限でサーバーに上げても、同じ属性がコピーされるべきじゃないよね。" userName="scrapheap" createdAt="2025-04-07T08:09:32" color="">}}

{{<matomeQuote body="ファイルってのはファイルシステムのエントリーのことだから、メタデータも含まれるんだよ。データだけじゃないんだ。<br>コピーしたらオーナーは自分になるよね。でも更新日とかは同じままだったりする。特にAppleのAPFSみたいなcopy-on-writeなアーキテクチャだとさ。" userName="LoganDark" createdAt="2025-04-07T08:22:02" color="#785bff">}}

{{<matomeQuote body="つまり、ファイルの属性の一部はコピーされるけど全部じゃないってことでしょ？　:D" userName="scrapheap" createdAt="2025-04-07T08:49:17" color="">}}

{{<matomeQuote body="オーナーとグループ以外は全部コピーされるべきだと思ってるよ。作成日、更新日、ACL、拡張属性とか全部。<br>「全部じゃない」よりは具体的だと思うけど。勘違いしないでね。" userName="LoganDark" createdAt="2025-04-07T10:49:28" color="#ff5733">}}

{{<matomeQuote body="コピーで作ったファイルの作成タイムスタンプは、コピーした時点になるのが普通じゃない？だって、その時まではファイルは存在しなかったんだから。" userName="scrapheap" createdAt="2025-04-07T12:20:30" color="">}}

{{<matomeQuote body="逆の意見だけど、sshdとかsshとかslurmとかmungeとか、特定のユーザー、グループ、モードじゃないと動かないプログラムって結構あるんだよね。セキュリティとか動作の保証のために。<br>アーカイブからインストールしたり、ファイルを配布するときは、ファイルの中身もメタデータも全部、思った通りにコピーされてほしいんだ。全部役に立つから。<br>コピーする人に権限がない場合は、警告とかエラーが出てほしいな。" userName="bayindirh" createdAt="2025-04-07T09:13:52" color="#ff5733">}}

{{<matomeQuote body="SELinuxのコンテキストって、コピーするときに常にコピー元からコピーされるべき？それとも、コピー先のディレクトリー構造で定義されたポリシーを継承するのが普通？<br>例えば、ユーザーのホームディレクトリーから/var/www/html/にコピーする場合、httpd_sys_content_tコンテキストが必要になるよね。コピー元のuser_home_tコンテキストをコピーすると、Webサーバーがアクセスできなくなる可能性がある。<br>つまり、SELinuxコンテキストはコピー元からコピーすべきじゃないってことじゃない？" userName="op00to" createdAt="2025-04-07T11:50:57" color="#45d325">}}

{{<matomeQuote body="普通は違うよ。特別な指定をした時だけ。<br>fooがuser barのファイルをコピーして自分のホームディレクトリーに置くとき、fooがオーナーになるのは嫌でしょ？<br>期待が高すぎるんじゃない？" userName="prmoustache" createdAt="2025-04-07T11:58:24" color="">}}

{{<matomeQuote body="＞それはほとんどのファイルコピーツールがデフォルトで行うことではありません。<br>うん、それでいいんだよ。<br>＞fooがuser barのファイルをコピーして自分のホームディレクトリーに置くとき、hがfooユーザーによって所有されることを望む最後のもの。<br>場合によるよね。<br>＞あなたの期待は非現実的です(sic)。<br>そんなことないよ。rsyncならできるし(try -avSHAX)、tarはデフォルトでそうだし。ここではrsyncの話をしてるんだよ。" userName="bayindirh" createdAt="2025-04-07T12:38:04" color="#ff5c5c">}}

{{<matomeQuote body="ファイルコピーユーティリティにこれ（拡張ファイル属性のコピー）は要らないな。拡張ファイル属性に頼るのはアンチパターンだよ。タイムスタンプが大事なら、ファイルフォーマット自体に入れるべき。パーミッションが大事なら、プロビジョニングとアクセスシステムに入れるべき。WebアプリケーションとかAPIとか。<br>コピー先のファイルの属性は、コピー元からコピーするんじゃなくて、指定した通りになってほしい。" userName="nickelpro" createdAt="2025-04-08T02:11:48" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Linux初心者だけど、システムのユーティリティのバージョン管理ってマジでごちゃごちゃしてる気がするんだよねー。<br>例えば`unzip`。Debianと古いUbuntuのサーバーに入ってるやつ、どっちもAES-256で暗号化されたZIPファイルに対応してないんだわ。Stack Overflowによると、対応してるバージョンもあるらしいんだけど。<br>結局、<br>1. アップデート版の`unzip`が簡単に見つからない。<br>2. バージョンが全部「6.00」って書いてあるのに、挙動が違うからマジ意味不明。<br>3. たまーに見つかるけど、システムのやつを置き換えるのが安全かどうかわからん。<br>開発者が頑張って便利な機能を追加しても、結局使えないってどうなのよ。コアなユーティリティって、アップデートしづらいんだなーって思った。<br>WindowsとかmacOSも似たようなもんかもしれんけど、Linuxならもっとマシだと思ってたわ。" userName="thrdbndndn" createdAt="2025-04-07T01:20:48" color="">}}

{{<matomeQuote body="そういう時は`7z`がマジおすすめ。zipとか圧縮ファイル全般で使えるよ。Linuxで`unzip`使ったことないかも。<br>あと、Unixの「一つのことをうまくやるシンプルなツール」っていう哲学も関係あるかもね。tarballで固めて、gzipで圧縮して、最後に暗号化するみたいな流れが普通だったりする。.tar.gz.pgpみたいな拡張子になるのはそのため。<br>バージョン表記が両方6.00ってのは謎だけど、ArchとかManjaroみたいなローリングリリースにしたら最新のパッケージが使えるかも。ただし、自分で管理する手間が増えるけどね。<br>Linuxのバージョン管理でいつも思うのは、v1.00を宣言したがらない人が多すぎ問題。便利なライブラリとかプログラムがいっぱいあるのに、v0.2とかv0.68のまま何年も放置されてるの、初心者にはマジでわかりにくいと思うんだよねー。安定してるし機能もほぼ揃ってるのに、完璧じゃないからってv1にしないんだよね。" userName="adwf" createdAt="2025-04-07T01:54:48" color="#ff5733">}}

{{<matomeQuote body="Unix哲学とかって、後付けの言い訳じゃん？共有ライブラリとかまともなスクリプト言語がないのを正当化してるだけ。1 + 1 = 2をテストするのに、重いプロセスを3つも立ち上げて、意味不明な記号をいっぱい使わないといけないとかありえない。[ ”$(expr 1 + 1)” -eq 2 ] ←こんなの。<br>CPUが1サイクルで計算できるのに。" userName="DonHopkins" createdAt="2025-04-07T02:25:18" color="">}}

{{<matomeQuote body="え、それ20年前の話じゃね？<br>今はPOSIXシェルに算術演算が組み込まれてるから、どのシェルでも動くし、新しいプロセスも作らないよ。<br>＞bash -c '[ $((1 + 1)) = 2 ]; echo $?'<br>＞0<br>＞zsh -c '[ $((1 + 1)) = 2 ]; echo $?'<br>＞0<br>＞busybox ash -c '[ $((1 + 1)) = 2 ]; echo $?'<br>＞0<br><br>YSH（https://oils.pub/）はCとかJavaScriptみたいな構文だし。<br>＞ysh -c 'if (1 + 1 === 2) { echo hi }'<br>＞hi<br><br>PythonとかJSみたいなデータ構造もあるし。<br>＞echo '{”foo”: 42}' > test.json<br>＞ysh<br>＞ysh-0.28$ json read < test.json<br>＞ysh-0.28$ echo ”next = $[_reply.foo + 1]”<br>＞next = 43<br><br>浮動小数点数とかも使えるよ。<br>＞echo ”q = $[_reply.foo / 5]”<br>＞q = 8.4<br><br>https://oils.pub/release/latest/doc/ysh-tour.html<br>(スクリプトにも使えるけど、インタラクティブシェルとしても使えるよ)" userName="chubot" createdAt="2025-04-07T03:11:20" color="#45d325">}}

{{<matomeQuote body="20年じゃ20世紀にすら戻れないぞ。Bourneが`sh`を書いた1977年からだと48年だ。<br>『UNIX-HATERS Handbook』の著者の一人として、1980年代から色々なバージョンのUnixを使ってきたけど、そういう問題は20年以上前からあるのは当たり前じゃん。今でも「歴史的な遺産」に苦しめられてるってのが問題なんだよ。昔はプロセスをforkしてテキストをpipeで繋いでたけど、今は共有ライブラリと機械語で計算するべきでしょ。それを「Unix哲学」とか言って正当化してるのがムカつく。<br>X-Windowsの問題は解決したのか？Linuxデスクトップの年はいつになったんだ？<br>＞X-Windowsの惨状：これは『UNIX-HATERS Handbook』の第7章です。X-Windowsの惨状の章は、Don Hopkinsが書きました。<br>＞https://medium.com/@donhopkins/the-x-windows-disaster-128d39...<br><br>1 + 1 = 2をテストするのにプロセスを3つも使って、コンテキストスイッチをしまくって、記号をいっぱい使ってた理由：<br>＞expr 1 + 1<br>＞外部プログラムを使って計算。<br>＞$(...) (コマンド置換)<br>＞サブシェルで`expr`を実行して、出力をキャプチャ。<br>＞[ ... ]<br>＞初期のシェルでは、`[` (別名`test`)も外部バイナリ。<br><br>プロセスを3つも使ってた理由：<br>＞Unixには組み込みの算術演算がなかった。<br>＞シェルは計算できなかった。<br>＞条件分岐（`[`）も外部プログラムだった。<br>＞すべてが壊れやすいテキストとサブプロセスで繋がっていた。<br><br>CPUが1サイクルで計算できるのに、ユーザー空間とカーネル空間を行ったり来たりしてた。<br>それが「Unix哲学」が美化してる歴史的な非効率性。" userName="DonHopkins" createdAt="2025-04-07T03:19:06" color="">}}

{{<matomeQuote body="昔はそうだったけど、今はもう直ってるよ。<br>Unix嫌いなのはいいけど、例をアップデートしてね。" userName="chubot" createdAt="2025-04-07T03:41:17" color="#785bff">}}

{{<matomeQuote body="それはLinuxディストリビューション（UNIXじゃない）で修正されただけ。<br>しかも`bash`だけだし。X WindowsとWaylandの状態は、全然修正されてないと思うけど。" userName="pjmlp" createdAt="2025-04-07T06:29:52" color="">}}

{{<matomeQuote body="UNIXは死んだ。誰も気にしてない。今はLinuxだけ。<br>お前の例も文句も古いし、悪意がある。<br>文句言ってるやつらに聞きたいけど、この1年でUNIXディストリビューションを使ったことあるやついる？Linux、OpenBSD（シェア0.1%）、macOS（UNIXらしさを気にするのをやめたのバレバレ）以外で。" userName="jillyboel" createdAt="2025-04-07T15:31:02" color="">}}

{{<matomeQuote body="`macOS`はマジでUNIX認証されてるぞ。" userName="int_19h" createdAt="2025-04-07T18:57:47" color="">}}

{{<matomeQuote body="そうだけど、実際は違うじゃん。<br>`macos`で何かする時は、`macos`専用の例外処理が必要なの、みんな知ってるし。" userName="jillyboel" createdAt="2025-04-08T12:49:41" color="">}}

{{<matomeQuote body="今現在の話をしてるんだけど。" userName="jillyboel" createdAt="2025-04-09T03:19:43" color="">}}

{{<matomeQuote body="アプリはLinux向けに書かれるのが最初で、LinuxはUnixじゃないからね。" userName="int_19h" createdAt="2025-04-08T17:18:17" color="">}}

{{<matomeQuote body="あんたが修正例で48年前のBourne shellみたいな古臭い構文を使ってる限り、俺の例も直さないよ。そこが問題なんだってば。＞　bash -c '[ $((1 + 1)) = 2 ]; echo $?'だって？Perlだってこんなに記号使わないっての。Lispの括弧が多いって文句言うくせに。Grawlixの絵文字まである始末。" userName="DonHopkins" createdAt="2025-04-07T03:48:39" color="#ff5c5c">}}

{{<matomeQuote body="おすすめのシェルって何？" userName="Datagenerator" createdAt="2025-04-07T06:08:32" color="">}}

{{<matomeQuote body="「Unix Haters Handbook」も「Worse is Better」も好きだけど、時代は30年前に終わったよ。あんたの「老人が雲に叫んでる」 rantは、Bjarne Stroustrupの「文句を言われる言語と、誰にも使われない言語がある」って言葉を思い出すね。LISP machineでもPlan9でも好きなの使えばいいじゃん。俺らは不完全なツールとその哲学を楽しむよ。" userName="wazoox" createdAt="2025-04-07T06:52:24" color="#ff33a1">}}

{{<matomeQuote body="Unix哲学は「ハンマーさえあれば何でも釘に見える」ってこと。ESRの本はUnixをドグマにして、欠点を美徳に仕立て上げてる。彼はPR担当でハッカーじゃないし、Unix Wayを理想化しすぎ。おまけに人種差別主義者だ。歴史的な偶然を神聖視するな。古いやり方をエレガントな哲学と勘違いするな。もっと良くできるはずだ。哲学は精査されるべきで、崇拝されるべきじゃない。ツールは進化すべきで、停滞すべきじゃない。そして、雲に叫ぶことが変化の風を吹かせることがある。" userName="DonHopkins" createdAt="2025-04-07T10:35:28" color="#ff33a1">}}

{{<matomeQuote body="完璧なツールなんてない。Unix哲学はドグマじゃなくて哲学だよ。ある場合には役に立つし、別の場合には一つのプログラムに全部詰め込めばいい。ハンマーは何千年も前からあるけど、ネジが発明されたらドライバーが必要になったんだ。" userName="skydhash" createdAt="2025-04-07T13:08:39" color="#ff5733">}}

{{<matomeQuote body="TWO heavyweight processes<br><br>プロセスが2つだって強調するなら、せめて本当に2つにしてくれ。`[`はシェルの組み込みコマンドだぞ。evalが重いって言うなら、calcの方が軽くて良いぞ。意味不明な記号の嵐って言うけど、ちゃんと説明できるしドキュメントもある。Shell scriptingは簡単じゃないけど、時代の産物だし標準化されてるからね。Bourne shellは1979年だし、POSIXは後方互換性を重視してるんだ。-eqは数値比較に使って、POSIX shellは文字列比較がデフォルトだからだよ。プロセッサには足し算とか比較の命令があるって言うけど、shell scriptingはインタプリタ言語だし、他のコードに処理を任せるのが普通だから速くなくても良いんだよ。高速に計算したいならCで書くわ。" userName="verandaguy" createdAt="2025-04-07T03:34:08" color="">}}

{{<matomeQuote body="これが昔の遺物で、構文と意味論に苦しめられてるって言ってるんだよ。TWOをTHREEに修正して、プロセスが3つになる理由も説明したじゃん。問題は、元々ひどい設計だったのに、後方互換性のために今もその結果に縛られてるってこと。「速くなくてもいい」って、Unix Philosophyを擁護するために無理な言い訳してるだけじゃん。シェルは遅くて非効率で複雑であるべきだって言うのか？あんたのシェルスクリプトが速くなくてもいいのかもしれないけど、俺は違う。" userName="DonHopkins" createdAt="2025-04-07T03:57:18" color="">}}

{{<matomeQuote body="別にUnix哲学なんて一言も言ってないし(笑)。あんたが貼ったシェル芸がなんでそうなってるのか説明しただけだよ。長々とUnix哲学を語ってるの、あんただけじゃん？<br>シェルスクリプトを複雑なソフトの糊付け役って考えるのはアリだと思うな。パイプラインとかファイルシステム操作とか、バッチ処理とか、CLIと同じインターフェースをスクリプトに提供するとか、色々できるし。<br>＞あんたのシェルスクリプトは速くなくても、書きやすくなくても、読みやすくなくても、メンテしやすくなくても、算術できなくても、ヤバい地雷満載でもいいと思ってるのかもしれないけど、それはあんただけな。<br>多くのsysadminとかDevOpsとか、シェルを使う仕事してる人はそう思ってると思うよ。bashの欠点も認めるけど、bashくらい安定してて、どこでも動いて、色々なことに使えるものはないって感じ。<br>速くて高性能な代替手段に地雷がないってのも違うと思う。<br>Cは型システムが貧弱だし、メモリ安全じゃないし、境界チェックもないし、リエントラントじゃない関数もあるし、UBもあるし、色々考慮しないと速さの恩恵を受けられない。<br>C++はちょっとマシだけど、Cの欠点も引き継いでるし、STLの肥大化問題もある。<br>RustはC++よりずっといいけど、borrow checkerにハマることもあるし、型システムが難解なこともあるし、cargoで依存関係が競合することもあるし、ビルドが遅いこともある。mutableなグローバル変数は扱いにくいし。<br>PythonはPOSIXシェルより使いやすいし、型システムもマシだけど、コンパイル言語には速度で勝てない。それに、機能が肥大化してきてる。<br>どれも一長一短だよ。ツールなんて使い方を間違えれば全部ダメになるし、ほとんどのツールは特定の用途に特化してる。汎用言語でも得意分野があるし。CでMVCのWebサイトを作ることもできるけど、もっと良いツールがあるし。Rubyで最適化コンパイラを書くこともできるけど、人生を見直した方がいい。<br>bashはシェル言語として別に悪くない。構文は変だけど、どこにでもあるから覚える価値はある。bashスクリプトは、特別なディレクトリ構成とかに依存しなければ、ほとんどの*nixで動くはずだし。POSIXシェルとbashismの違いが一番のハードルかな。" userName="verandaguy" createdAt="2025-04-07T05:36:12" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Unix哲学とかいうのが過大評価されてるって気付いたのは1993年くらい。Perlを覚えたら、すぐにコマンドラインツールを色々使うのやめた。" userName="eesmith" createdAt="2025-04-07T06:57:07" color="">}}

{{<matomeQuote body="$thing$を組み合わせるのが過大評価されてるって気付いたのは1993年くらい。「Grand Unified $thing$」があればいいじゃんってなって、$thing$を色々使うのやめた。<br>で、10年か20年後くらいに、Grand Unified $thing$自体が組み合わさってることに気付いた。しかも、自分でなくて誰かが。だからコントロールできない。そこで思ったわけ。「Grand Unified $thing$」を分解して、再利用可能な$thing$にすれば最高じゃん？そうすれば、Grand Unified $thing$の癖に依存せずに、生産性を最大限にできる。<br>で、そう書かれて、そう実行された。たくさんの$thing$を作って、世界は良くなった、最高にね。でも、古代人の一人が気付いた。「$thing$をGrand Unified $thing$に組み合わせれば、生産性が劇的に向上する。色々な$thing$の使い方を覚えなくても済むから」って。<br>で、そう書かれて、そう実行された。これが古代人の物語、そして最も神聖なサイクルの始まり。" userName="whatnow37373" createdAt="2025-04-07T12:57:09" color="">}}

{{<matomeQuote body="ジョークがよく分かんない。コンテキストとタイミングからすると、Perl6/Rakuのことで、Larry Wallが古代人ってこと？" userName="eesmith" createdAt="2025-04-07T14:11:35" color="">}}

{{<matomeQuote body="Perlだけが世界じゃないんだよ。マジで。<br>構成可能性に夢中になって、飽きて統一して、で、統一されたものが古臭くて変になって、また好きになるっていう繰り返しについての一般的な話だよ。Perlはその良い例。" userName="whatnow37373" createdAt="2025-04-07T14:50:43" color="">}}

{{<matomeQuote body="Unix哲学とかいうのは、FOSS信者の間で流行ってる、意味不明な慣習だよ。Xenix以来、商用UNIXを使ったことないんじゃない？マニュアルにオプションが山ほど載ってないUNIXなんて見たことない。" userName="pjmlp" createdAt="2025-04-07T06:32:32" color="">}}

{{<matomeQuote body="あんたの“Windows哲学”にうんざりだよ。NTがVMSの焼き直しだってことは置いといて、DOSが裏で動くクソみたいなW9xをまだ使ってるかもしれないじゃん。<br>Risc OSの方がマシだよ。メモリ保護がないとしても（たぶんないと思うけど、数日しか試してない）。" userName="anthk" createdAt="2025-04-07T07:33:27" color="">}}

{{<matomeQuote body="Windows哲学なんてものはないし、OSも言語も崇拝しないよ。全部一長一短あるから、状況に応じて使い分ければいい。自分自身を技術スタックと同一視するのは、生まれたときから特定のサッカーチームのファンになるようなもの。" userName="pjmlp" createdAt="2025-04-07T07:57:49" color="">}}

{{<matomeQuote body="別にUnixしか使ってないわけじゃないよ。RPIでRisc OS（Apache 2.0？）を起動して、Unix/C以外のことを試してる。<br>でも、Windowsは重すぎる。8から最悪。NTカーネル+explorerはすごく軽量化できるのに（ReactOSとかXPとか、軽量化されたW7を見てみ）。<br>AppleとMS（とRedHat）は、つまらないことに大量のサイクルを浪費して、光るクソを売ってるだけ。<br>さらに、1GBのRAMでまともなシステムとして動くように軽量化できない。<br>n270ネットブックで720p@30FPSの動画をMPVで見れるよ。WXPのネイティブプレイヤーでも、ローレベルのdirect draw callsをうまく使っても無理なのに。<br>RedHatとAppleにおけるWindows>XP哲学はこうだ。「OSに不要なサービスとXMLのゴミ（とJSとC#みたいなインタプリタ言語）を詰め込んで、ハードウェアベンダーが崇拝するように仕向け、平均的なユーザーが同じことをするために新しいものを買い続けるようにする」。<br>セキュリティ？なんでGnome 3は最初にJSが必要なんだ？Valaはどこに行った？Valaがあればもっと良くなって、Mutterのメモリリークも過去のものになるのに？" userName="anthk" createdAt="2025-04-07T12:05:04" color="">}}

{{<matomeQuote body="Windowsみたいな脳みそがイカれたOSでも、PowerShellがある。PowerShellを使えば、あらゆる種類の操作を簡単かつ効率的に実行できるし、ライブラリ（“cmdlet”）を動的にリンクして直接呼び出すこともできるし、型付きの文字列以外のパラメータを持つ関数を呼び出すこともできるし、コピーやコンテキストスイッチやシリアライズやパイプ処理やデシリアライズをせずに、同じアドレス空間で実行されているコード間で生のOBJECTをパイプで渡すこともできる。<br>PowerShellには、他のアプリケーションに埋め込むためのhosting apiもある。bashで同じことを試してみて。少なくともpythonならできる！<br>しょぼいWindows PowerShellでさえ、パワー、使いやすさ、学習しやすさ、保守性、効率、柔軟性においてUnixシェルを圧倒的に打ち負かしているのに、まだUnixシェルを擁護して、Unix哲学の言い訳をしてるの？いい加減にしろ。<br>負けるには低すぎるハードルなのに、Unix哲学とかいう意味不明なカルトを擁護してる。" userName="DonHopkins" createdAt="2025-04-07T09:49:48" color="">}}

{{<matomeQuote body="PowerShellのオブジェクトは.NETオブジェクトだから、.ToString()メソッドを持ってるってか。へー、PSH、TCLが30年前にやったことを、もっと悪くやったんだね。TCLは全部文字列で、数字もそう。evalで計算しなきゃいけないのは面倒だけど、メリットの方が多いよ。<br>Lisp出身なら、ここは居心地がいいかも。l*関数をLispのリストみたいに使えるけど、carとかcdrとかで悩まなくて済むし。<br>あと、Expectってのも過小評価されてるよね。<br>upvarは嫌いだけど、namespaceでほとんど避けられるし。<br>TCLはマジなことにも使えるんだよ。Excelで何百万行ものコロナ患者とか国勢調査のデータ使ってるなら、TCL/TkとSQLiteの方がずっと速いと思うよ。" userName="anthk" createdAt="2025-04-07T13:36:39" color="">}}

{{<matomeQuote body="PowerShellはTCLやbashと逆で、文字列じゃなくてオブジェクトを直接渡すんだよ。何が言いたいのかマジでわからん。TCL/Tkは死ぬほど書いてきたし、オープンソースにもしてるし。<br>＞https://github.com/SimHacker/micropolis/blob/master/micropolis/…" userName="DonHopkins" createdAt="2025-04-08T07:53:18" color="">}}

{{<matomeQuote body="DebianとかUbuntuは、システムのツールのバージョンをOSのバージョンに固定したがるんだよね。<br>Debianはリリースサイクルが長いけど、すごく安定してる。stableだと全部うまく動く（testingも他のOSに比べて安定してる）。<br>Ubuntuは、Debianを「もっと頻繁にリリースしたらどうなる？」って感じ。<br>最新のツールが欲しいなら、安定性を犠牲にするしかないかも（NixとかArchとか）。どっちもユーザーフレンドリーじゃないけどね。<br>安定してて最新のツールが欲しいなら、Gentooがいいけど、Archよりずっと敷居が高い。<br>安定性とシンプルさが欲しいなら、ディスクスペースを犠牲にするしかない。Docker/podman, flatpak, appcontainers, snapとかがあるね。<br>WindowsとMacも同じ問題を抱えてる。Windowsは古いバージョンのライブラリを同梱して、アプリごとに動的にリンクすることで解決してる。" userName="cogman10" createdAt="2025-04-07T03:31:05" color="#ff33a1">}}

{{<matomeQuote body="unzipは特殊なケースで、開発がほぼ止まってるんだよね。最後のリリースは2009年[0]。バージョン6.0ね。それから色々問題が見つかったし、機能も足りない。だからみんなめっちゃパッチ当ててる[1]。結果、同じバージョン番号でも全然違う実行ファイルになってる。<br>[0]：https://infozip.sourceforge.net/UnZip.html<br>[1]：Archのビルドレシピを見ると、どれだけパッチが当てられてるかわかるよ：https://gitlab.archlinux.org/archlinux/packaging/packages/un…" userName="tame3902" createdAt="2025-04-07T05:27:36" color="#785bff">}}

{{<matomeQuote body="大量のgitリポジトリのミラーを管理してるから、色々知ってるんだけど、多くオープンソースプロジェクトは活動を停止したり、新しいリリースを出さなくなったりしてるよね。syslinuxみたいにunzipと似たような状況のプロジェクトもあるし。Quaggaみたいに完全に活動停止して、まともに動くgit remoteすらないプロジェクトもある。<br>だからunzipは特別じゃなくて、関心が薄れてきてるっていう一般的な問題なんだよ。" userName="blueflow" createdAt="2025-04-07T07:11:46" color="#ff5733">}}

{{<matomeQuote body="わからん、混乱する気持ちはわかる。俺は7z使ってて、今のところzipのニーズは満たせてる。<br>（Linuxは何でもできる方法がいくらでもあるし）。<br>でも、unzipは問題なくアップデートできるはずだよ。重要なサービスが依存してないなら、アップデートして試してみれば。" userName="lukan" createdAt="2025-04-07T01:38:10" color="">}}

{{<matomeQuote body="MacOSはもっと酷くて、Appleは（一般的に機能が豊富な）GNU版じゃなくて、BSD版の一般的なUnixユーティリティをバンドルしてるんだよね。だから、MacOSとLinuxの両方で動くBashスクリプトを書くのは至難の業だよ…" userName="neckro23" createdAt="2025-04-07T03:52:01" color="">}}

{{<matomeQuote body="MacOSでzshを使えばいいじゃん。" userName="petre" createdAt="2025-04-07T04:12:01" color="">}}

{{<matomeQuote body="zshを使ったからって、シェル以外のPOSIXユーティリティがGNU拡張機能を持つわけじゃないよ。<br>それに、zshはほとんどのディストリビューションにデフォルトでインストールされてないし。" userName="ElectricalUnion" createdAt="2025-04-07T05:34:01" color="">}}

{{<matomeQuote body="MacOSのuserspaceはFreeBSDからフォークされたから、GNU拡張機能じゃないものがバンドルされてるんだよ。それにFreeBSDのuserspaceはその後GNUismを取り入れてるし。<br>なんでBash 2をデフォルトシェルにしたのかは謎だけど。俺はいつもZshに切り替えて使ってたし、Zshの方がバージョンが新しかったからね。今はLinuxとFreeBSDでもZshを使ってる。シェルを統一したいから。" userName="petre" createdAt="2025-04-07T09:01:22" color="">}}

{{<matomeQuote body="openrsyncがrsyncの一部の機能をサポートしてないのはちょいと困るけどねー。でも、rsyncの実装が複数あるのはマジで良いことじゃん？ソフトウェアってより、プロトコルとして扱われてるってことだもんね。" userName="duskwuff" createdAt="2025-04-06T21:43:47" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
