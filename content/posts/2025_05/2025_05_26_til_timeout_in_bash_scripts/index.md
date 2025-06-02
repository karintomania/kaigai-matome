+++
date = '2025-05-26T00:00:00'
months = '2025/05'
draft = false
title = 'Bashスクリプトで時間がかかりすぎないように timeout を使う TIL'
tags = ["Bash", "シェルスクリプト", "Linux", "timeout", "コマンド"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Bashスクリプトで時間がかかりすぎないように timeout を使う TIL

引用元：[https://news.ycombinator.com/item?id=44096395](https://news.ycombinator.com/item?id=44096395)




{{<matomeQuote body="straceでシステムコールの失敗をテストする裏技、超お気に入りなんだ。<br>例えばこんな感じ→ `strace -e trace=clone -e fault=clone:error=EAGAIN`<br>参考リンクも貼っとくね。" userName="majke" createdAt="2025/05/26 13:55:13" color="">}}




{{<matomeQuote body="これ、マジやばいね！もっと早く知りたかったよー。今まで失敗パターンをテストできなくて、無理やりスタブで逃げてたんだけど、範囲を限定するのに必死だったんだ。<br>サンキュー！" userName="jonhohle" createdAt="2025/05/26 16:35:44" color="">}}




{{<matomeQuote body="これも好きかもね。<br>https://github.com/eradman/entr" userName="eru" createdAt="2025/05/27 07:59:49" color="">}}




{{<matomeQuote body="WindowsだとApplication Verifierでフォールトインジェクションとか色々できるよ。（リンク略）<br>ただ、これはネイティブコード専用なんだ。" userName="dwattttt" createdAt="2025/05/26 21:18:28" color="">}}




{{<matomeQuote body=".NETみたいなマネージドアプリだったら、たぶん依存性注入（DI）がいい方法だよ。<br>失敗するかもしれないメソッドがあるコンポーネントをテストしたいなら、インターフェースのラッパー書いて、失敗するモックを注入するんだ。<br>JITが普通のアプリ使い方だといい感じに最適化してくれるよ。" userName="colejohnson66" createdAt="2025/05/27 14:46:49" color="">}}




{{<matomeQuote body="Dtraceも同じようなこと、いやもっとすごいこと（破壊的アクションとか）できると思うよ。しかもWindowsもサポートしてるんだ。" userName="broken_broken_" createdAt="2025/05/27 05:06:30" color="">}}




{{<matomeQuote body="ヘルスチェックでは、タイムアウト時間と最大リトライ回数の両方を設定するのが理想だよ。<br>ネットワークの問題を考えて、リトライ回数と時間で失敗を判断する方が、ただ待つより早く終わるよね。<br>Bashスクリプトで書く例もあるけど、curlには元々リトライ機能が付いてるから、そっちを使うのが楽ちんだよ。<br>--retryとか--retry-max-timeオプションで設定できるんだ。" userName="0xbadcafebee" createdAt="2025/05/27 00:35:17" color="#ff5c5c">}}




{{<matomeQuote body="（追記）さっきのスクリプト例、「done」の後に「exit 1」が必要だった！そうしないと最大ループ数超えてもエラーにならないからね。<br>あと、curlの「--retry 300」はスクリプトと合わせるなら「--retry 5」にすべきだったわ。ごめん！" userName="0xbadcafebee" createdAt="2025/05/27 19:25:39" color="#ff5c5c">}}




{{<matomeQuote body="Macにtimeoutコマンドがないからさ、bashの組み込みだけでtimeout作れないかなーって試行錯誤してたんだ。全部組み込みは無理だったけど、sleepコマンド（大体どこでも使えるはず）を許すなら、これでいけると思うよ。<br><br>コードはこんな感じ。<br>サブシェルでsleepして時間になったらメインシェルにSIGALRMを送るんだ。<br>メインシェルが終了する前にサブシェルを終了させるtrapも設定してるよ。<br>timeout関数でALRMシグナルが来たときの処理（指定コマンド）を設定して_alarmを呼ぶんだ。<br><br>実行例では10秒後に’TIME OUT！’って表示されて終了するようになってる。<br>ちなみに例のループは20秒かかるからタイムアウトするよ。" userName="robinhouston" createdAt="2025/05/26 19:56:06" color="#ff5733">}}




{{<matomeQuote body="これさ、俺が12年前にStack Overflow見てやったやつがあるんだよ。GitHubのコードなんだけどね。<br>それを使えば（helpers除く）、こんな感じで書けるんだ。<br>timeoutをコールして、成功したか（タイムアウトしなかったか）をif文でチェックするんだ。<br>君のやつみたいに、俺も組み込みコマンドとsleepだけだよ。<br>busybox ashでも動くようにPOSIX準拠目指したんだ（｛1..20｝はbashismだけど）。<br>俺の工夫はさ、タイムアウトしたらfalseを返すようにしたこと。<br>そしたらエラー処理がメインスクリプト内で簡単にできると思ってね。" userName="ryao" createdAt="2025/05/27 01:15:49" color="#785bff">}}




{{<matomeQuote body="俺は13年前にread -t使って書いたことあるよ。GitHubのこれね<br>https://github.com/kahing/bin/blob/master/timeout.sh" userName="khc" createdAt="2025/05/27 02:37:53" color="">}}




{{<matomeQuote body="こんなシンプルなのではどうかな？<br>command ＆ sleep timeout; kill -SIGALRM ％1" userName="timewizard" createdAt="2025/05/27 07:08:50" color="">}}




{{<matomeQuote body="それはまあ良いんだけど、もし既にバックグラウンドジョブが動いてたら、％1は間違ったジョブを指しちゃうよ。<br>％％ってのも使えるけど、コマンドがタイムアウト前に終わっちゃったら、これまた間違ったジョブを指すことになるね。" userName="robinhouston" createdAt="2025/05/27 09:35:59" color="">}}




{{<matomeQuote body="これはさ、コマンドが終わっても、タイムアウト時間分は必ずsleepしちゃうね。" userName="fpoling" createdAt="2025/05/27 12:53:15" color="">}}




{{<matomeQuote body="ちなみにさ、curlには--retry-connrefusedってフラグがあるんだよ。<br>これ使うと、シェルでこのリトライ処理を自分で書かなくて済むから便利だよ。" userName="craigds" createdAt="2025/05/26 17:52:39" color="">}}




{{<matomeQuote body="あのね、もしbash -cで変数渡す必要があるなら、一番良い方法は引数として追加することだよ。<br>例えば、bash -c ’...’ -- ”$1” ”$2”’ -- ”$var1” ”$var2”ってやるんだ。<br>--を使うのが俺は好きなんだけど、最初の引数（argv[0]）は$@で展開されないから、他の何かを使った方が分かりやすいと思う。<br>bashのprintf %qもあるけど、劇的に綺麗にならないならBourne互換を優先するかな。" userName="aidenn0" createdAt="2025/05/26 15:05:51" color="">}}




{{<matomeQuote body="＞ 俺は--を使うのが見た目好きなんだけど...<br>二重ハイフン（--）は、bashとかほとんどのUnix/Linux CLIプログラムにとって、すごく特別な意味があるんだよ。<br>getopts(1p)のmanページにも書いてあるけど、これはオプションの終わりを示すんだ。<br>オプションの終わりを示すもの:<br> - 最初に出てくる--引数で、オプション引数ではないもの<br> - オプション引数ではなく、かつ’-’で始まらない引数<br> - エラー<br>ほらね。" userName="AdieuToLogic" createdAt="2025/05/27 03:49:16" color="">}}




{{<matomeQuote body="「見た目が好き」って言ったのはそういうこと。実際はさ、bash -c だとそうは動かないんだよ（コマンド文字列の後の引数は全部 argv に入るんだ、0からね）。でもさ、そういう風に動く他のコマンドと”馴染む”感じなんだよね。" userName="aidenn0" createdAt="2025/05/27 16:54:25" color="">}}




{{<matomeQuote body="＞ 「見た目が好き」って言ったのはそういうこと。実際はさ、bash -c だとそうは動かないんだよ（コマンド文字列の後の引数は全部 argv に入るんだ、0からね）。でもさ、そういう風に動く他のコマンドと”馴染む”感じなんだよね。<br><br>君の例の -- はそうやって動いてないよ。bash -c ’some command ”$1” ”$2”’ -- ”$var1” ”$var2”<br><br>この例だと -- は $0 に割り当てられるけど、それと同時にコマンドラインスイッチの解釈を止める役割もあるんだ。例えば bash -c ’/bin/ps ”$1”’ -- ”-l” は期待通りに動くけど、bash -c ’/bin/ps ”$1”’ ”-l” はそうならないよ。" userName="AdieuToLogic" createdAt="2025/05/28 03:10:33" color="#45d325">}}




{{<matomeQuote body="＞ この例だと -- は $0 に割り当てられるけど、それと同時にコマンドラインスイッチの解釈を止める役割もあるんだ。例えば...<br><br>それは bash の manページとも俺のテストとも違うよ。一番簡単なテストはこれ。 bash -c ’false; echo hi’ -e は ”hi” って表示するけど、 bash -e -c ’false; echo hi’ は期待通り。bash -c ’/bin/ps ”$1”’ foo ”-l” と bash -c ’/bin/ps ”$1”’ -- ”-l” は同じように動く。" userName="aidenn0" createdAt="2025/05/28 14:48:49" color="#785bff">}}




{{<matomeQuote body="あー、君の言う通りだわ。俺の例で見られた変な挙動は bash とか -c ”コマンド文字列” の後の引数とは関係なかった。代わりに、俺が使ってるプラットフォームの ps が `/bin/ps ’’` って呼び出された時にどう動くか、それが原因だったよ。" userName="AdieuToLogic" createdAt="2025/05/30 00:03:24" color="">}}




{{<matomeQuote body="Busybox はさ、argv[0] を見て何を実行するか判断するんだ。だから argv[0] として ”ls” を食わせてやると ”ls” が動くってわけ（とか ”mv” とか ”cp” とか）。" userName="fragmede" createdAt="2025/05/26 16:36:45" color="">}}




{{<matomeQuote body="俺がよくやるリトライ処理はこうだよ。 <br> for i in {0..60}; do<br> true -- ”$i” # shelleck surpression<br> if eventually_succeeds; then break; fi<br> sleep 1s<br> done <br><br>あんまりエレガントじゃないけど、まあまあ正しいかな。次のレベルは指数バックオフだね。だいたいちょっとだけ組み合わせやすさが残る感じ。" userName="miduil" createdAt="2025/05/26 13:48:09" color="#ff5c5c">}}




{{<matomeQuote body="君次第だけど、Shellcheck がその問題を解決してほしいやり方は、for _ in みたいに _ を使うことだと思うよ。<br><br>https://github.com/koalaman/shellcheck/wiki/SC2034#intention..." userName="mdaniel" createdAt="2025/05/26 14:42:00" color="#45d325">}}




{{<matomeQuote body="アプリケーションによっては eventually_succeeds に timeout がまだ必要になることに注意ね。Bashとか、まあ POSIX/IO/Processes を扱うときはいつでもそうだけど、防御的なコーディングをしないとダメだよ。何やっても結果は伴うんだから。" userName="miduil" createdAt="2025/05/26 14:31:13" color="#ff33a1">}}




{{<matomeQuote body="俺はこの解決策の方が好きだな。文字列コマンドを実行する bash がないのが良いね。eventually_succeeds に簡単に timeout をつけられるし。" userName="xx__yy" createdAt="2025/05/27 03:21:35" color="">}}




{{<matomeQuote body="前はさ、timeout 1800 mplayer show.mp4 ; sudo pm-suspend<br><br>ってのを子供が小さい頃、30分だけ自動で番組を見せるための貧乏人のペアレンタルコントロールとして使ってたんだ。便利なコマンドだよね。" userName="noufalibrahim" createdAt="2025/05/26 14:35:15" color="#ff33a1">}}




{{<matomeQuote body="どっかでよんだけど、「シェルがあれば、どうにかなる」ってさ．ちょっとふざけてるけど、まあホント．こういうシンプルなコマンドとプログラマブルなシェルがくれる力はでっかいし、どれだけきょうちょうしてもたりないくらいだよ．" userName="noufalibrahim" createdAt="2025/05/27 04:25:20" color="">}}




{{<matomeQuote body="コマンドをちょくせつかくより、かんすうをtimeoutでじっこうできるラッパーをつかうのがすきだな．ふくざつなしょりもかんすうにいれられるしべんりだよ．かんたんなれいコードをのせとくね．（コードは省略）" userName="epr" createdAt="2025/05/26 16:38:40" color="#ff33a1">}}




{{<matomeQuote body="まえのコメントのコードだけど、さいごのほうの$@は”$@”にしないとスペースいりのひきすうがうまくいかないよ．ためしてみてね．（コード例は省略）" userName="abbeyj" createdAt="2025/05/26 20:35:44" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ああ、そのタイポまちがいだわ．シェルスクリプトで”$@”ってしょっちゅうかくのに、もっとちゃんとわかってるべきだった．shellcheckでもみつけられただろうしね．でも、HNのへんしゅうじかんすぎちゃったから、まちがいがのこったままだな" userName="epr" createdAt="2025/05/27 11:11:59" color="">}}




{{<matomeQuote body="ちょいまえに、Kubernetesのセットアップでコマンドのtimeoutしょりをまさにいれたところだよ．このPOSIXシェルスクリプトでできたawait-cmd.shとかawait-http.shとかawait-tcp.shは、こなれてるし、いくつかのシナリオですごくべんりだよ．GitHubのリンクも貼っとくね：https://github.com/vegardit/await.sh" userName="pveierland" createdAt="2025/05/26 13:59:45" color="#38d3d3">}}




{{<matomeQuote body="そういえば、timeoutコマンドってGNU Coreutilsのいちぶらしいね．きじをよんだあとに、Bashじたいのいちぶなのかはっきりしなかったんだ．" userName="frou_dh" createdAt="2025/05/26 13:54:23" color="">}}




{{<matomeQuote body="あと、きをつけてほしいんだけど、いろんなものとおなじで、timeoutコマンドとそのひきすうは、/usr/bin/timeoutとかBrewのgtimeoutとか、かんきょうによってちがうんだ（gプレフィックスはそこからきてる）．BSDではどうなってるか、つかったことないからわかんないけど．" userName="mdaniel" createdAt="2025/05/26 14:45:55" color="#45d325">}}




{{<matomeQuote body="GNU Coreutilsにgプレフィックスをつけるのは、ほとんどの非Linux Unixシステムでよくあることだよ．ベースシステム（gmakeとかgtarとか、makeとかtarとか）とのコンフリクトをふせぐためなんだ．" userName="aidenn0" createdAt="2025/05/26 15:07:08" color="">}}




{{<matomeQuote body="でも、それもまためんどくさいんだよね．gプレフィックスつきのバージョンはLinuxシステムにはインストールされてないから、それらにいぞんしてるスクリプトはポータブルじゃなくなるわけ．" userName="jonhohle" createdAt="2025/05/26 16:48:30" color="">}}




{{<matomeQuote body="Thankfully bash は tolerates それ、if the script author cares なら、e.g. gnu_sed=gsed<br> if ! command -v $gnu_sed; then<br> gnu_sed=$(detector_wizardry)<br> fi<br> $gnu_sed -Ee ... って。" userName="mdaniel" createdAt="2025/05/26 17:07:06" color="#ff33a1">}}




{{<matomeQuote body="＞ It’s a shame we can’t use timeout with until directly。The until keyword は part of the POSIX.2 shell specification で、timeout functionality は include してないんだ。bash に implemented することはできるけど、他の shells（Debian dash が the main concern）には portable じゃない。This is the reason that it is implemented as a separate utility。Search for ”The until loop” below to see the specification。https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V..." userName="chasil" createdAt="2025/05/26 15:11:24" color="#ff5733">}}




{{<matomeQuote body="Of course I’m very judgemental towards people who ignore the established knowledge of the field and instead rely on social hearsay。Call me old and grumpy。" userName="blueflow" createdAt="2025/05/26 16:15:13" color="">}}




{{<matomeQuote body="To be fair、manual で tool を learning するのは not very efficient。個人的には most utilities の manuals は detail に lacking で、reading だけだと理解 difficult。特に needing してない functionality の reading は waste of time みたいに feels する。everything Vim を fluent な人が manual once or twice でそうなったとは doubt。" userName="couscouspie" createdAt="2025/05/26 16:32:02" color="">}}




{{<matomeQuote body="Furthermore、reading about functionality は waste of time みたいに feels する<br><br>yeah、but simplified、this is how you end up with programmers that write an if statement 10 times because they don’t know what a for loop is。The waste of time still happens elsewhere。" userName="blueflow" createdAt="2025/05/26 16:39:17" color="">}}




{{<matomeQuote body="＞ I doubt anybody who is fluent in everything Vim has to offer learned that by reading through the manual once or twice。The vim manual only explains the flags and how/where to access the documentation and tutorial。You don’t read it to ”become fluent” in using the TUI application、you read it to learn about how to run the program from the commandline。" userName="t-3" createdAt="2025/05/26 16:48:32" color="#ff5733">}}




{{<matomeQuote body="If you haven’t、look at the FreeBSD man pages、when possible（most things in coreutils）。They are infinitely better than the GNU versions。" userName="jonhohle" createdAt="2025/05/26 16:49:51" color="">}}




{{<matomeQuote body="OpenBSDのmanページもおすすめだよ。<br>ちなみにLinuxだと、全部のmanページ（たとえばPOSIXとかGNU、Linuxとか）読みたいから、”man-all”って”man -a”にエイリアスしてるんだ。" userName="johnisgood" createdAt="2025/05/26 16:52:36" color="">}}




{{<matomeQuote body="timeoutコマンドじゃなくて、自分でシェル関数作る方法もあるよ。何やってるか見せるためにjobsとかecho入れてるけど、基本的にはバックグラウンドで実行して、指定時間待つか終わるかで見張って、時間切れならkillする感じ。<br>オプションでtimeoutとかsleep時間も変えられるよ。" userName="PeterWhittaker" createdAt="2025/05/26 14:51:32" color="#ff5c5c">}}




{{<matomeQuote body="他にも面白いテスト方法として、純粋なbash（たぶん15年くらい前のバージョンで修正必要かも）で”timeout 5 bash -c ’cat ＜ /dev/null ＞ /dev/tcp/google.com/80’”みたいにTCP接続テストできるよ。<br>google.comとかポート80はテストしたいとこに変えてね。<br>サーバーが起動してなかったり、ファイアウォールとかプロキシがあるとエラーになるかタイムアウトするよ。" userName="oso2k" createdAt="2025/05/26 22:13:10" color="#785bff">}}




{{<matomeQuote body="timeoutってbashの外部プログラムなんだよね。" userName="halJordan" createdAt="2025/05/27 02:56:56" color="">}}




{{<matomeQuote body="この記事みたいにcurl使うなら、プロセスレベルでタイムアウト管理するより、curl自体に”-m”オプションでタイムアウトさせる方がいいかもね。" userName="minaguib" createdAt="2025/05/26 14:46:12" color="#45d325">}}




{{<matomeQuote body="いや、記事はcurlをループで呼んでるから、単に”-m”でcurlにタイムアウトさせるだけじゃダメなんだ。<br>ループ全体にタイムアウトが必要なんだよ。<br>curlにもリトライとかの設定である程度の時間続けるオプションがあるかもだけど、パッと出てこないな。" userName="aidenn0" createdAt="2025/05/26 15:00:47" color="">}}




{{<matomeQuote body="curlにはすでにそういうのをハンドリングするたくさんのオプションがあると思うよ。<br>いい解説付きのドキュメントも色々あるし。<br>たとえばこれとか→https://everything.curl.dev/usingcurl/downloads/retry.html<br>たぶんこの記事の前提は、findみたいに自分でタイムアウト機能持ってない他のプロセスにも適用できるってことだと思うな。" userName="pvtmert" createdAt="2025/05/27 22:10:00" color="">}}




{{<matomeQuote body="最近友達がhttps://google.github.io/zx/api見せてくれたんだけど、これめっちゃ使うの楽しいよ。<br>シェルにすごく近くて、LLMも結構よく知ってるんだって。" userName="arjie" createdAt="2025/05/26 17:43:02" color="">}}




{{<matomeQuote body="あー、これ聞くとJavaScriptのbunのshell APIを思い出すな。<br>[0]: https://bun.sh/docs/runtime/shell" userName="jiehong" createdAt="2025/05/26 21:25:57" color="">}}




{{<matomeQuote body="sleep 回数を数えて、その回数を until 条件に入れれば終了できるんじゃない？ timeout 使わなくてもいいし、timeout のために別の bash をサブシェルで起動する必要もないよ。" userName="chii" createdAt="2025/05/26 13:47:55" color="#ff5733">}}




{{<matomeQuote body="筆者の目的には合ってると思うよ。ただ、curl はサーバーの状態によってはタイムアウトに時間がかかることがあるんだよね。応答やエラーまでの最大時間を保証するにはどうやるか知りたいな。" userName="xelxebar" createdAt="2025/05/26 13:57:01" color="#38d3d3">}}




{{<matomeQuote body="POSIX じゃないけど、bash や zsh には時間の組み込み機能があるんだ（date コマンドより古いけどね）。EPOCHSECONDS を使ってタイムアウトを実装する例とか、より精度の高い EPOCHREALTIME を Zsh で使う方法とかを紹介してるよ。これらの変数は ”under known” （あまり知られてない）みたいだね。" userName="cb321" createdAt="2025/05/26 17:09:26" color="#ff5c5c">}}




{{<matomeQuote body="curl の場合はリクエストや接続のタイムアウトパラメータがあるから、それでサーバーが生きてるか確認できるよ。でも、そういうオプションがないコマンドなら、やっぱり timeout ユーティリティを使うのが理にかなってるね。" userName="chii" createdAt="2025/05/26 14:14:12" color="">}}




{{<matomeQuote body="curl には --connect-timeout と --max-time ってオプションがあるよ。でも、これらが DNS ルックアップとか TLS ハンドシェイクも考慮するのか覚えてないんだよね。回線が不安定なときはこれらのタイムアウトだけだと難しい場合があって、結局ハードリミットをかけるなら curl をラップする必要が出てくるみたい。" userName="diggan" createdAt="2025/05/26 14:28:19" color="#ff5c5c">}}




{{<matomeQuote body="Linux でプロセスが完全に固まって kill できないことが本当によくあったんだ。だいたい I/O 待ちが原因みたいだけど。" userName="SoftTalker" createdAt="2025/05/26 16:31:54" color="">}}




{{<matomeQuote body="そういうケースだと kill -9 でも助けにならないんだよね" userName="chgs" createdAt="2025/05/27 07:06:49" color="">}}




{{<matomeQuote body="そんなに簡単じゃないね。curl がハングアップしない保証はないから。ちゃんとやるならループの前に別プロセスで親を監視するコードが必要になる…でも、正直 Bash でそこまでやりたくないよね。curl がハングしないと仮定するなら、タイムスタンプ比較の方が回数カウントより timeout のエミュレーションとしては良いかな。あとは指数バックオフとか色々やりたくなるだろうけど…やっぱ Bash じゃない方がいいだろうね。" userName="crabbone" createdAt="2025/05/26 16:21:53" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="個人的な経験から言うと、リトライが何回必要だったか出力するのをおすすめするよ。ゼロを期待してるなら特にね。<br>そうしないと、リトライループが不安定なサービスやネットワークの問題を隠しちゃうことがあるんだ。" userName="sllabres" createdAt="2025/05/26 18:43:04" color="#ff5733">}}




{{<matomeQuote body="昔、timeout.shを自分で作ったんだけど、めっちゃ複雑になっちゃったんだよね。関数呼び出しとか多くなると、環境を引き継ぎたいからさ。制御プロセスとかsleepプロセスとかあって、どっちが先に終わるかの競争とかあってさ…。たぶん、だから組み込みのtimeoutを無視したんだろうな…。<br>https://github.com/zbigg/bashfoo/blob/master/timeout.sh" userName="febusravenga" createdAt="2025/05/26 18:10:15" color="">}}




{{<matomeQuote body="これ読んで、前に書いた自分のブログ記事思い出したわ。そこで”timeout”にも触れてるんだ。<br>https://gaultier.github.io/blog/way_too_many_ways_to_wait_fo...<br>これは、シェルじゃなくて他のプログラミング言語で実装する場合とか、内部の仕組みを知りたい場合に役立つかもね。" userName="broken_broken_" createdAt="2025/05/27 05:11:04" color="">}}




{{<matomeQuote body="bashより標準ライブラリが整ってない言語なんてあるのか？<br>bashスクリプト用のちょっとモダンな標準ライブラリを作ろうとしてるとこ、Stack Overflow以外にある？" userName="AtlasBarfed" createdAt="2025/05/26 14:44:53" color="">}}




{{<matomeQuote body="Busyboxとかcoreutilsとか、お前のプラットフォームのユーザースペースが“標準ライブラリ”だよ。<br>シェルは基本、制御フローとIOのためにあるだけで、それ以外は全部コンピューター上のプログラムなんだ。" userName="t-3" createdAt="2025/05/26 16:56:09" color="#38d3d3">}}




{{<matomeQuote body="shellfire-devとかshellspecとかoils.pubとか、bashのモダンな試みはいくつかあるよ。他にもあるだろうね。シェルは幅広いユーザーがいるから、目標次第で深掘りできるポイント（インタプリタ間の移植性、他のバイナリへの依存度、ブートストラップの早い段階で動くかとか）はたくさんあるよ。俺のプロジェクトはこれ。<br>https://github.com/alganet/coral<br>https://github.com/alganet/shell-versions<br>https://github.com/Mosai/workshop" userName="alganet" createdAt="2025/05/26 19:28:28" color="#ff5733">}}




{{<matomeQuote body="そこまで複雑になるなら、ほんとに頑張る価値ある？個人的には、そこまでいくとPythonとかRubyみたいな、もっと有能な言語使う方がいいと思うな。" userName="cpach" createdAt="2025/05/26 15:03:18" color="">}}




{{<matomeQuote body="それだけじゃなくて、bashの強みはどこにでもあることだよ。（あるいは、もっと普遍性を求めるならposix shだね。）もしbashにたくさん機能を追加し始めたら、使う場所全部に十分新しいバージョンが入ってるって確信できないと使う意味ないじゃん。それって、そもそもbashの主な使い道（俺の意見だけど、どんなUnix系システムでも動く移植可能なスクリプト）の目的を台無しにしちゃうんだよな。" userName="ninkendo" createdAt="2025/05/26 15:20:38" color="#38d3d3">}}




{{<matomeQuote body="PythonもRubyも、並行処理とか直列化とか、簡潔さのインターフェースがシンプルじゃないんだよ。全然だめ。それに、望ましい方向には動いてないしね。Perlなら挑戦できたかも…でもそれは別の問題だし、それでもまだ完璧じゃない。<br>PowerShellはもったいない機会だったな。底なしの金庫を持つ会社がリソースを大量に投入したプロジェクトなのに…結局イマイチだった。 sensibleな代替がないかと思ったけど、まだ見つかってないわ。" userName="crabbone" createdAt="2025/05/26 16:27:26" color="#785bff">}}




{{<matomeQuote body="POSIXとSingle Unix Specificationが、まあ全部だね。<br>俺はシェルスクリプトたくさん書くけど、POSIX準拠にすることが多いよ。依存関係については、`command`コマンドを使えば、インストールされてなくても gracefullyに失敗させられる。" userName="beej71" createdAt="2025/05/26 18:56:59" color="#38d3d3">}}




{{<matomeQuote body="Bashには標準ライブラリってなくて、組み込みコマンドと外部コマンドだけなんだよね。外部コマンドはただのツールって感じ。" userName="oweiler" createdAt="2025/05/26 15:31:17" color="">}}




{{<matomeQuote body="’[’ （テストコマンド）でさえ、だいたい/usr/binにある外部バイナリなんだよ。" userName="queuebert" createdAt="2025/05/26 19:14:05" color="">}}




{{<matomeQuote body="Bashの”標準ライブラリ””組み込みコマンド”、”予約語”について詳しく教えてくれてるね。組み込みコマンドはfork()/exec()なしで使える内部的なもの。予約語はループとか制御に使うキーワードだよ。多くのディストリビューションには.bashrc があって、これは標準ライブラリみたいに使えるって人もいるみたい。’[’ （テストコマンド）も、組み込みコマンドとして解釈されないスクリプトのために外部バイナリとしても存在するんだって。通常は組み込みとして使われるよ。" userName="AStonesThrow" createdAt="2025/05/26 21:06:41" color="#ff5733">}}




{{<matomeQuote body="Bashの変なとこを知るたびにPowershellとかPythonに行きたくなるなー。Bashってマジでハッキーだよね。他の言語なら文法だけ考えればいいけど、Bashは「どうやったらやらかさないか？」って考えちゃうんだよね。複雑な処理は特にさ。" userName="eemil" createdAt="2025/05/27 11:13:47" color="">}}




{{<matomeQuote body="記事のアイデア、いいね！ 本番環境でサイレントタイムアウトで困ったことあるよ。これってネストした非同期呼び出しとか、よくわかんない外部依存関係とか、どう対応するのかな？ ログツールと連携できるともっと見やすくなりそう！" userName="lzy" createdAt="2025/05/27 02:20:34" color="#ff33a1">}}




{{<matomeQuote body="なんで `timeout --signal=SIGKILL` を使わないで、extra bashでラップして殺しやすくしたの？.." userName="tryauuum" createdAt="2025/05/26 16:01:54" color="">}}




{{<matomeQuote body="記事によると、プロセスしか殺せないから、組み込みコマンドの”until”は新しいプロセスを作らないし、ダメなんだって。" userName="teo_zero" createdAt="2025/05/26 22:00:53" color="">}}




{{<matomeQuote body="retry っていう便利なツールがあって、リトライ処理が楽になるんだよ:https://github.com/minfrin/retry" userName="js2" createdAt="2025/05/26 17:35:26" color="">}}




{{<matomeQuote body="僕の.bashrcにこれ入れてるよ:<br> function retry { <br> until $@; do :; done <br> alert <br> }<br> export -f retry<br> スクリプト以外ならけっこう使えるね。" userName="exo762" createdAt="2025/05/27 11:34:16" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
