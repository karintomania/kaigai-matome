+++
date = '2025-03-24T00:00:00'
months = '2025/03'
draft = false
title = '発掘！現存する最古のCコンパイラの初期バージョンがマジですごい'
tags = ["C言語", "コンパイラ", "歴史", "プログラミング", "ソフトウェア開発"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> 発掘！現存する最古のCコンパイラの初期バージョンがマジですごい

引用元：[https://news.ycombinator.com/item?id=43433030](https://news.ycombinator.com/item?id=43433030)

{{<matomeQuote body="Oracle Databaseの最初の公開バージョン(1979年のv2)はPDP-11向けにアセンブリで書かれてたんだって。その後、Oracleはv3(1983年)をCで書き換えて、いろんなプラットフォームで使えるようにしたんだね。当時のメインフレームにはCコンパイラがなかったから、COBOLとか別の言語でメインフレーム専用のデータベースを作る代わりに、メインフレーム用のCコンパイラも作ったらしいよ。" userName="tanelpoder" createdAt="2025-03-24T10:49:37" color="#ff5c5c">}}

{{<matomeQuote body="1980年にUNIXがSystem/370に移植されたけど、TSS上で動いてたんだって。TSSはあんまり知られてないみたいだけど。<br>System/370向けのUNIXシステムの実装設計は1979年にほとんど終わってて、コーディングは1980年に完了。最初の本番システムは1981年初頭にBell Laboratoriesの施設に導入されたらしい。<br>詳細は[https://web.archive.org/web/20240930232326/https://www.bell-...]で見れるよ。" userName="chasil" createdAt="2025-03-24T14:20:19" color="">}}

{{<matomeQuote body="へー、面白いね。84/85(たぶん85/86)の夏に、University of British Columbiaのメインフレーム(AmdahlのMTS)で、Scott Kristjansonが作ったSystem/360へのPCCの移植版を使ったよ。メールソフトを開発してたから、EBCDIC/ASCIIの問題に対処する必要があって、大変だった。<br>そのコンパイラがまだどこかに残ってないかな。" userName="jdougan" createdAt="2025-03-24T23:01:25" color="">}}

{{<matomeQuote body="もしこのリストが正しいなら、z/OS 3.1はUNIX 95の認証を受けてるはずだよ。<br>[https://www.opengroup.org/openbrand/register/index2.html]<br>それにはCコンパイラも含まれてるはずだけど、君のやつはたぶんテープの中だね。Linuxも中国の会社のおかげでリストに載ってるよ。" userName="chasil" createdAt="2025-03-25T00:32:54" color="">}}

{{<matomeQuote body="＞Oracle Databaseの最初の公開バージョン(1979年のv2)はPDP-11向けにアセンブリで書かれてた”<br>Oracle v2かv3を持ってる人いるのかな？abandonwareサイトで見た中で一番古いのはDOS用のOracle 5.1だよ。<br>＞当時のメインフレームにはCコンパイラがなかった”<br>1975年のBell Labsのメモには、当時Cコンパイラが3つのマシン向けに存在したって書いてある[0]。PDP-11 UNIX、Honeywell 6000 GCOS、そしてOS/370(OS/VS2のことだと思う。15ページにTSOって書いてあるから、OS/VS1じゃないよね)<br>OracleがBell LabsのCコンパイラを知らなかったのは信じられるし、Bell Labsも共有しなかっただろうね。それに、最新バージョンのCに対応してたかもわからないし…。SASはLatticeにMVSとCMSへのCコンパイラの移植を依頼したのが1983/1984年頃で、OracleがOracleをIBMメインフレームに移植してた頃とほぼ同じ頃だと思う。<br>[0] [https://archive.org/details/ThePortableCLibrary_May75/page/n...]" userName="skissane" createdAt="2025-03-25T10:36:07" color="#ff5c5c">}}

{{<matomeQuote body="当時のことを話したがる人はいないと思うけど、OracleとIngresの間にはかなりの確執があるんだ。この話は公になってない部分もあるし、弁護士なしでは話せない。" userName="ggm" createdAt="2025-03-25T05:25:01" color="">}}

{{<matomeQuote body="あんなに大きなものをアセンブリで書くなんて、1979年でもクレイジーだね。" userName="dboreham" createdAt="2025-03-24T17:21:16" color="">}}

{{<matomeQuote body="Oracleは128KBのRAM(スワップなし)で動くように設計されてたんだよ。だから、何百万行じゃなくて、実際には数万行だったんだ。" userName="acchow" createdAt="2025-03-24T19:35:46" color="">}}

{{<matomeQuote body="当時、そんなに珍しいことだったのかな？UNIX自体もそうだったみたいだし(Cより前に作られて、後からCで書き直された)、70年代にはアセンブリで書かれたものが他にもあったと思うけど。Oracleが他のものよりずっと大きかったのかな。アセンブリは昔からローレベルなものに使われてた言語だと思ってたんだ。" userName="saghm" createdAt="2025-03-25T06:49:08" color="">}}

{{<matomeQuote body="私のお気に入りの関数はこちら: [https://github.com/mortdeus/legacy-cc/blob/936e12cfc756773cb...]" userName="ChrisMarshallNY" createdAt="2025-03-24T12:07:25" color="">}}

{{<matomeQuote body="マジで昔のUnixツールって使いにくいよね。if (argc<4) {<br>      error(“Arg count”);<br>      exit(1);<br>  }って感じだし。" userName="arp242" createdAt="2025-03-24T20:06:45" color="">}}

{{<matomeQuote body="SQLiteのエラーメッセージも同じくらい質素だよね。最近SQLite拡張を書いたんだけど、詳細で動的なエラーメッセージを作るのは難しくなかったから、作者の好みだったのかも。" userName="Rendello" createdAt="2025-03-24T23:16:16" color="#ff5c5c">}}

{{<matomeQuote body="ああ、インラインアセンブリがなかったからかな？それなら'nop'オペレーションで置き換えられる気がする。" userName="Amlal" createdAt="2025-03-24T16:42:47" color="">}}

{{<matomeQuote body="それって何の意味があるの？" userName="johnisgood" createdAt="2025-03-24T12:17:18" color="">}}

{{<matomeQuote body="それはメモリを確保するための変な方法だよ。重要なのは、コンパイラのフェーズ両方でこれが行われていて、プログラムのリンク方法によって、予約された領域が両方のフェーズで同じアドレスを持つことが保証されてること。だから、ポインタを含む式木を2番目のフェーズに簡潔に渡せるんだ。見た目は良くないけど、ハードウェアの制限で奇妙な解決策を考えざるを得ないこともあるんだよ。" userName="aap_" createdAt="2025-03-24T12:36:27" color="#ff33a1">}}

{{<matomeQuote body="前に出てきた'ospace'を'waste'から参照する実際のコードはここにあるよ。https://github.com/mortdeus/legacy-cc/blob/936e12cfc756773cb..." userName="colejohnson66" createdAt="2025-03-24T13:58:16" color="#45d325">}}

{{<matomeQuote body="ありがとうございます！それって今でも関係あるのかな？それとも、今日でも使い道があるのかな？" userName="johnisgood" createdAt="2025-03-24T13:01:33" color="">}}

{{<matomeQuote body="いや、固定アドレスが必要なら、リンカースクリプトを使うのが普通じゃない？ またはこの場合は、ポインタを含まないようにデータをシリアライズするだけでいいと思う。" userName="aap_" createdAt="2025-03-24T13:07:23" color="">}}

{{<matomeQuote body="ASLRがあるから無理じゃない？ 最近のマシンだと、こういうのは無効になってると思うよ。" userName="ddulaney" createdAt="2025-03-24T19:36:56" color="">}}

{{<matomeQuote body="最近はもっと良いツールがあるよ。例えば、GNU toolchainなら、リンカースクリプトを使って、position-independentじゃない静的な実行ファイルを作ればいい。または、self-relativeポインタを使うこともできる。foo_t *foo を使って p をそこに置く代わりに、ptrdiff_t foo を使って ((char *)p - (char *)&foo) をそこに置くんだ。" userName="mananaysiempre" createdAt="2025-03-24T22:49:14" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ospaceポインタのために静的にメモリを確保する、ちょっとわかりにくいやり方だね。" userName="fxtentacle" createdAt="2025-03-24T12:50:18" color="">}}

{{<matomeQuote body="コード生成について仮定せずに、サイズをもっとうまく制御できる配列を使う方が良くない？<br>edit:<br>http://cm.bell-labs.co/who/dmr/primevalC.html に答えがあったよ。<br>＞スペースの割り当てがすごい。プログラムの先頭を上書きしてスペースを節約してるんだ。初期化コードを潰してるってこと。コンパイラによってやり方が違うみたい。初期のコンパイラでは関数名で開始位置を見つけてて、後のコンパイラでは単に0としてる。最初のコンパイラはメモリアドレスがないマシンで書かれてて、プログラムの開始位置が0じゃなかったんだね。後のコンパイラはPDP-11でメモリアドレスがあったからできたんだ。prestruct-c/c10.cでそれがよくわかるよ。”<br>main()の前に配置するために関数にして、不要になったコードをバッファオーバーフローさせる必要があるってことかな。" userName="account42" createdAt="2025-03-25T09:37:19" color="#ff33a1">}}

{{<matomeQuote body="よくわかんないけど、生成されたbytecodeを後からパッチできるようにするためかな？昔、友達がASMで同じようなパターンを使って、NOPをコードに追加して、リコンパイルせずにパッチできるようにしてたのを思い出した。" userName="rasjani" createdAt="2025-03-24T12:28:14" color="">}}

{{<matomeQuote body="たぶんそれだね。<br>昔は自己書き換えが多かったんだよ。昔のマシン語はリソースが限られてたから、コードを書き換えたり、コード領域を再利用したりしてたんだ。" userName="ChrisMarshallNY" createdAt="2025-03-24T12:30:52" color="">}}

{{<matomeQuote body="スタックを暖める？（正直わからん）" userName="agumonkey" createdAt="2025-03-24T12:28:14" color="">}}

{{<matomeQuote body="ハードウェアの“halt and catch fire”命令のC言語版？" userName="tanelpoder" createdAt="2025-03-24T12:29:16" color="">}}

{{<matomeQuote body="FortranのCOMMONブロックのC言語版。" userName="kps" createdAt="2025-03-24T14:55:07" color="">}}

{{<matomeQuote body="余談だけど、昨日Think C [2]とmacOS 6.0.8 (Mini vMac [1]でエミュレート)で遊んでたんだ。<br>昔のwindowを動かすのって、めっちゃコードが必要だったんだね…これはかなりモダンな方なんだけどね。ANSI CだけどAPIが分厚い。<br>macOS 6のUXは好きだったな。簡潔な見た目っていうか [3]。<br>[1] https://www.gryphel.com/c/minivmac/start.html<br>[2] https://archive.org/details/think_c_5<br>[3] https://miro.medium.com/v2/resize:fit:1024/format:webp/0*S57..." userName="keyle" createdAt="2025-03-25T00:00:05" color="">}}

{{<matomeQuote body="1989年中頃にTHINK C 4.0 (と THINK Pascal) に同梱されていたTCL (THINK Class Library) を使えば、自分で書くコードはもっと少なくなるよ。<br>System 6.0.8は1991年4月だから、その頃にはTCLは確立されていて、THINK C 5のC/C++バージョンでは、THINK C 4の“CでのOOP” (関数ポインタを持つネストされた構造体) の代わりに、ちゃんとしたC++機能が使われていたんだ。<br>TCLは小さなプロジェクトで使ってたよ。主にObject Pascalの方が自然なTHINK Pascalでね。Toolboxを直接使っていたプログラムを移行するのを手伝ったりもした。もっと本格的なプログラムではMacAppを使ってた。MacAppは1985年にObject Pascal向けにリリースされ、1991年にC++向けにリリースされた。" userName="brucehoult" createdAt="2025-03-25T03:20:20" color="#38d3d3">}}

{{<matomeQuote body="ありがとう。昨夜think C 3.Xを使ってたんだけど、5.0があるの知らなかった。今朝調べてわかったよ。5.0をまた触ってみて、電子書籍を探してみる。" userName="keyle" createdAt="2025-03-25T04:38:30" color="">}}

{{<matomeQuote body="お気に入りの関数だね。Windowsにも入ってるかもって人もいるくらいだし(笑)<br>waste() /* スペースを浪費する */<br>{<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br> waste(waste(waste),waste(waste),waste(waste));<br>}" userName="dark-star" createdAt="2025-03-24T10:51:34" color="">}}

{{<matomeQuote body="え、なんで？コンパイルされたバイナリのサイズを無駄にするため？それともソースコードのスペース？もしかして初期の従業員の評価指標を良くするためかな？<br>もちろん”スペースを無駄にするため”っていう答えはナシでお願い(笑)" userName="retSava" createdAt="2025-03-24T12:20:03" color="">}}

{{<matomeQuote body="waste関数のすぐ前に変数が宣言されてるんだよね。無駄にされてるスペースは、その直前の変数’ospace’のために静的に確保されたメモリだよ。" userName="unclad5968" createdAt="2025-03-24T18:33:06" color="#45d325">}}

{{<matomeQuote body="そのリポジトリには何も書いてないけど、推測だけどね。昔の機械はメモリへのアクセス方法が均一じゃなかったから、バイナリが特定の閾値を超えた場合にコンパイラがちゃんと動くかテストするためだったんじゃないかな。<br>今の機械でも、命令に含められるオフセットには制限があることが多いから、分岐やロード/ストアに大きなオフセットが必要な場合は、コンパイラは別の機械語命令を使わないといけないんだよね。それもこの関数がテストに役立つことかも。こっちの方が可能性高いかな。この関数のバイナリサイズを、様々なPDP-11の機械語命令で許容されるオフセット長と比較してみると面白いかもね。" userName="ajb" createdAt="2025-03-24T12:25:46" color="#ff33a1">}}

{{<matomeQuote body="ハードウェアのテストに関係してそう。メモリとかレジスタとか、Xバイトだけ必要なものがオーバーフローするとかさ。本当にランダムだし、書いた本人しか知らないだろうね(笑)" userName="bustling-noose" createdAt="2025-03-24T12:30:31" color="">}}

{{<matomeQuote body="大胆な予想：”main”関数の場所を任意のバイト数だけオフセットさせる方法だったんじゃないかな。a.outバイナリ形式では、これはゼロでないエントリポイントになるんだ。" userName="bluetomcat" createdAt="2025-03-24T12:35:53" color="#ff33a1">}}

{{<matomeQuote body="http://cm.bell-labs.co/who/dmr/primevalC.html<br>＞“2番目に目立たないけど、驚くべき特徴はスペースの割り当て：一時的なストレージが割り当てられ、プログラムの先頭を故意に上書きし、スペースを節約するために初期化コードを破壊します。2つのコンパイラは、これに対処する方法の詳細が異なります。初期のコンパイラでは、開始は関数に名前を付けることで見つけられます。後のコンパイラでは、開始は単に0と見なされます。これは、最初のコンパイラがメモリマッピングを備えたマシンが登場する前に書かれたことを示しています。したがって、プログラムのオリジンはロケーション0にはありませんでした。2番目のコンパイラの時点では、マッピングを提供するPDP-11がありました。（Unix Historyの論文を参照）。ファイルの1つ（prestruct-c/c10.c）では、その場しのぎが特に明らかです。”" userName="dfawcus" createdAt="2025-03-24T21:06:11" color="#38d3d3">}}

{{<matomeQuote body="考えられる理由の1つは、静的なグローバル領域を割り当てること。メモリの読み取り専用保護がないと、その領域に書き込むことができたんだ。" userName="jeltz" createdAt="2025-03-24T13:50:50" color="#45d325">}}

{{<matomeQuote body="他のコメントを見てね。" userName="aap_" createdAt="2025-03-24T12:38:23" color="">}}

{{<matomeQuote body="へー、“extern”と“auto”の使い方、今どきのC言語と全然違うんだね！<br>グローバルなsymbolをfunction scopeに持ってきてるみたい。全部デフォルトで“int”扱いっぽいし。arrayの宣言でsize指定があったりなかったり… size指定なしのarrayはpointerとして使うってことかな？" userName="bluetomcat" createdAt="2025-03-24T10:43:59" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞“extern”はグローバルsymbolをfunction scopeに持ってくるために使うみたいだね。<br>＞もっと良い考え方としては、externは“このsymbolはここで宣言・定義・確保されてないよ。どっか別の場所で宣言・定義・確保されてる”って意味かな。<br>＞”型はこれで、codeがちゃんと参照できるようにして、linkerが後で参照と宣言・定義・確保されたstorageをマッチさせる”って感じ。<br>referenceは一般的な意味で使ってるよ" userName="fsckboy" createdAt="2025-03-24T17:06:44" color="#ff5733">}}

{{<matomeQuote body="うん、だいたいそんな感じ。<br>当時のC言語はほぼBCPLでsyntaxがちょっと違うくらいだったんだよね(char/stringのsupportは良かったけど)。structとかlongが入ってきてから、ガラッと変わったんだよ。" userName="Joker_vD" createdAt="2025-03-24T10:57:13" color="">}}

{{<matomeQuote body="BCPLにはC言語に無くて今も無いfeatureがたくさんあったよ。B言語のことだよね？" userName="kragen" createdAt="2025-03-25T06:02:02" color="">}}

{{<matomeQuote body="どんなfeatureがあったか詳しく教えて！<br>nested functionとか？あれは実装が大変な割に使い道が微妙だった。<br>labelが定数constantになっててcomputed GOTOが使えるのはC言語には無いね。manifest constantはRitchieの言語設計で一番謎。<br>multiple assignmentはsyntaxが楽なだけでしょ。valof-resultisも便利だけどsyntax sugarみたいなもんじゃない？" userName="Joker_vD" createdAt="2025-03-25T06:27:33" color="#ff5c5c">}}

{{<matomeQuote body="全部言いたいこと言ってくれた。知らなかったこともあったわ。" userName="kragen" createdAt="2025-03-25T06:49:41" color="">}}

{{<matomeQuote body="BCPLにあってC言語に無かったfeatureって何？" userName="psjs" createdAt="2025-03-25T06:42:39" color="">}}

{{<matomeQuote body="“auto”は昔はautomatic memory managementの意味だったんだよ。<br>assemblyとか古い言語だとlocal variableを好き勝手に使えないから。storageを宣言してlifetimeを管理しないといけない。<br>C言語とかはlocalとかstack allocated valueを導入したんだよね。externはfileの外にstorageがあるって意味で、registerはcompilerにregisterにvalueを置いてほしいって意味。<br>autoはdefaultだったからあんまり使われなかった。C23でC++みたいにtype inferenceの意味になった。<br>昔のC言語のfunction declarationも変だったよね" userName="xenadu02" createdAt="2025-03-24T21:27:31" color="#45d325">}}

{{<matomeQuote body="modernなC compilerでも同じことができるよ。externとautoの意味は同じだし、intはdefault typeだよ。" userName="netbsdusers" createdAt="2025-03-24T11:08:49" color="">}}

{{<matomeQuote body="C23では、autoはdefault typeを持たない。type deductionになる。<br>WG14がC++を修正する手段になってるってWG14のmemberが嘆いてる。<br>deductionはゴミtype inferenceだと思って。" userName="tialaramex" createdAt="2025-03-24T11:52:27" color="#38d3d3">}}

{{<matomeQuote body="委員会での設計って、現場の人が欲しいものと違う結果になりがちだよね。" userName="pjmlp" createdAt="2025-03-24T12:28:39" color="">}}

{{<matomeQuote body="最近、old-style autoなんて使ってる人いないでしょ。<br>文句言うならコンパイラベンダーに言うのが筋だよ。特にClangはCとC++を合わせようとしてるから、何か要望があればバグトラッカーに報告してね。他のコンパイラも同様だよ。" userName="uecker" createdAt="2025-03-24T13:24:00" color="">}}

{{<matomeQuote body="＞最近old-style autoなんて使ってる人いないでしょ。<br>＞俺の知る限り、autoが冗長じゃないケースはなかったな。例えば、”https:／／stackoverflow.com／a／2192761”を見て。<br>だから、autoの再利用はまあ良いかなと思うけど、使い方がクソなのは変わらず嫌だわ。" userName="Y_Y" createdAt="2025-03-24T13:34:37" color="">}}

{{<matomeQuote body="じゃあ、autoのbetter useって何？" userName="saagarjha" createdAt="2025-03-25T00:10:17" color="">}}

{{<matomeQuote body="ギリシャ語プログラミングで、”self”の同義語。" userName="Y_Y" createdAt="2025-03-25T09:52:53" color="">}}

{{<matomeQuote body="確かに。でも、セキュリティを重視して欲しいと思ってる人は多いけど、政府機関が介入するまで、50年間文句言っても何も変わらなかったじゃん。" userName="pjmlp" createdAt="2025-03-24T14:37:51" color="">}}

{{<matomeQuote body="これもコンパイラが対処できたはずの問題なのに、してこなかったんだよね。結局、現場のユーザーが気にしなかったから。パフォーマンスを最優先するコンパイラにみんな群がって、パフォーマンスが落ちるものは全部拒否してたし。だから、ユーザーが安全性を求めてたとは思えないな。文句言うのは得意だけど。" userName="uecker" createdAt="2025-03-24T19:50:52" color="#45d325">}}

{{<matomeQuote body="GCCとClangはasan／ubsanをサポートしてるよ。パフォーマンスと引き換えに、メモリアクセスとか未定義動作に関する挙動を改善できる。asan／ubsanが使える環境なら、開発とテストは常に有効にしてる。デバッグ時間がマジで減るから。" userName="ndiddy" createdAt="2025-03-24T19:58:27" color="#38d3d3">}}

{{<matomeQuote body="だよね。Ubsanは本番環境でもオンにした方が良いかも。" userName="uecker" createdAt="2025-03-25T07:27:32" color="">}}

{{<matomeQuote body="民主主義みたいなもんで、選挙結果がみんなのニーズを反映するとは限らないし、特定のグループが優遇されたりするよね。" userName="pjmlp" createdAt="2025-03-25T06:38:31" color="">}}

{{<matomeQuote body="俺が言いたいのは、標準化委員会は政府じゃないってこと。" userName="uecker" createdAt="2025-03-25T07:31:24" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="外から見ると確かにそう見えるかもね。<br>新しい機能が追加されるには、それを推進する人が必要で(候補者)、仲間による投票(選挙)があって、政府のサイクル(ISO revision)が終わると、コンパイラのユーザーは新しい機能を喜ぶんだ。" userName="pjmlp" createdAt="2025-03-26T04:58:49" color="">}}

{{<matomeQuote body="ほとんどの機能は以前からコンパイラに存在してたことに気づいたかな？" userName="uecker" createdAt="2025-03-26T13:16:48" color="">}}

{{<matomeQuote body="autoキーワードの最初の追加は、委員会による設計に期待するものに沿ってるんじゃない？理論的な完全性以外に何の役にも立たないキーワードを含めるなんてさ。" userName="jeltz" createdAt="2025-03-24T13:43:23" color="#ff33a1">}}

{{<matomeQuote body="俺が言ってるのはもっと一般的なことだよ。autoに関してじゃなくてね。<br>実はK&R CサブセットのCコンパイラをホームコンピューターで使ってたことがあって、そこではautoが重要だったんだ。もちろん今はもうないけどね。1990年代初頭の話さ。" userName="pjmlp" createdAt="2025-03-24T15:41:54" color="">}}

{{<matomeQuote body="「委員会による設計」の興味深い別の意味は、「委員会*で*設計」ってことだね。<br>アイデアを提案する時に、通常のライフサイクルやフィードバックをスキップして、いきなり委員会に持ち込む人がいるんだ。" userName="mhh__" createdAt="2025-03-24T15:03:54" color="#ff5733">}}

{{<matomeQuote body="現場の人たちは、この委員会が設計したものにかなり満足してるみたいだよ。" userName="saagarjha" createdAt="2025-03-25T00:11:53" color="">}}

{{<matomeQuote body="そんなの関係ないよ。現場の人たちは自分たちの標準バージョンをアップデートしないんだから。" userName="windward" createdAt="2025-03-24T14:20:47" color="">}}

{{<matomeQuote body="変数または関数をextern(al)として宣言すると、コンパイラはそれが「外部」、つまり別のソースファイルで定義されていると見なすだけだよ。コンパイラは名前付き変数/関数への参照を生成し、リンカーはすべてのオブジェクトファイルをリンクするときに変数の実際のアドレスを代入するんだ。<br>最近のCでは、extern宣言を関数内に入れることはできないんだ。基本的にそれは悪い習慣であり、コードの可読性を低下させるからね。もちろん、グローバルスコープ(例えば、ソースファイルの先頭)に配置することはまだできるけど、ヘッダーファイルに入れて、コードを.h定義ファイルと.c実装ファイルのペアのモジュールに編成する方が良いよ。" userName="HarHarVeryFunny" createdAt="2025-03-25T01:03:02" color="#785bff">}}

{{<matomeQuote body="これらはすべてB言語から来てるんだ。<br>＞https://www.nokia.com/bell-labs/about/dennis-m-ritchie/bintr...”," userName="int_19h" createdAt="2025-03-25T01:23:47" color="">}}

{{<matomeQuote body="あー、sizeless配列ね。DMRさんのサイトにあるC言語の初期の歴史に関するドキュメントを見てみてよ。初期のポインタの構文はそうだったみたいよ。" userName="dfawcus" createdAt="2025-03-24T20:53:11" color="">}}

{{<matomeQuote body="プログラマーは謙虚であるべきだなって思うよね。結局、俺たちは巨人の肩に乗ってるようなもんで、ほとんどが抽象化されたものの上で動いてるんだから。コンピューターサイエンスの80年以上の歴史だよ。最近のイケてるやつらはメモリ安全性のこと言うけど、誰かが面倒見なきゃいけなかったんだよな。自分のコードでか、抽象化された機能で。" userName="ricardo81" createdAt="2025-03-24T14:53:40" color="#ff33a1">}}

{{<matomeQuote body="メモリ安全性はC言語より10年も前からあったんだよ。JOVIAL(1958)とか、ESPOL/NEWP(1961)とか、PL/I(1964)みたいな言語でね。ベル研究所の外でも、PL/S(1970)、PL.8(1970)、Mesa(1976)、Modula-2(1978)とかがあった。最近のイケてるやつらは、C言語の普及によってシステムプログラミングの安全性が失われたことを再発見してるんだよ。1980年代のイケてるやつらがメモリ安全性を気にしなかったからね。<br>＞“この原則の結果として、すべての添字付き変数のすべての添字のすべての出現は、配列の上限と下限に対して実行時にチェックされました。生産実行時の効率を上げるために、これらのチェックをオフにするオプションを提供してほしいか、お客様に尋ねたところ、満場一致で反対されました。添字のエラーが頻繁に発生し、検出されないと悲惨なことになることはすでに知っていました。1980年になっても言語設計者やユーザーがこの教訓を学んでいないことに恐怖を感じます。まともなエンジニアリングの分野では、このような基本的な予防措置を講じないことは、とうの昔に法律違反になっていたでしょう。”<br>C.A.R Hoareの“The 1980 ACM Turing Award Lecture”から。どの言語のことだと思う？" userName="pjmlp" createdAt="2025-03-25T07:31:11" color="#38d3d3">}}

{{<matomeQuote body="「メモリ安全性のこと言ってるイケてるやつら」は、まさに巨人の肩に乗って、他の人がもっと高く立てるようにしてるんだよ。" userName="estebank" createdAt="2025-03-24T16:54:37" color="#ff5733">}}

{{<matomeQuote body="話が飛躍してるけど、年寄りはテクノロジーを理解できないみたいに言う人がいるのが皮肉だなって思う。" userName="wang_li" createdAt="2025-03-24T15:05:40" color="">}}

{{<matomeQuote body="＞…年寄りはテクノロジーを理解できないみたいに言う人がいる<br>俺は若い奴らの方が理解できてないと思うけどね。<br>同じ間違いが何度も繰り返されて、昔学んだ教訓は無視されるんだよ。<br>書くのは読むより簡単で、話すのは聞くより簡単で、古いものを拡張するより新しいものを構築する方が簡単なんだ。" userName="worik" createdAt="2025-03-24T18:24:25" color="">}}

{{<matomeQuote body="これはテクノロジーに限らず、どの分野でも若い奴らがやることだよ。ティーンエイジャーが自分たちが初めてセックスしたと思ってるのと同じように、若い奴らは「現状はクソだ」って気づいて、それを解決しようとするんだよな。<br>それは強みにもなるけどね。人間の心は慣れによって固定観念にとらわれがちだから、新しい人が解決策を見つけ出すこともある。でも、過去の教訓を忘れて無駄な試みに終わることも多い。" userName="bigstrat2003" createdAt="2025-03-24T20:13:34" color="#ff5733">}}

{{<matomeQuote body="1つの抽象レベルを理解してても、その上に構築された抽象レベルを理解してるとは限らない。その逆もまた然り。" userName="phito" createdAt="2025-03-24T19:35:54" color="">}}

{{<matomeQuote body="あなたのコメントは謎かけみたいだね。25年間プログラミングしてるけど、知らないことだらけだって思ってるよ。" userName="ricardo81" createdAt="2025-03-24T16:09:37" color="">}}

{{<matomeQuote body="自分で読み返したら、分かりにくかったね。俺が言いたいのは、ほとんどの人が使ってる言語とか、OSの基盤技術とかは、今80代の人たちが設計・発明したもので、Linuxのコアチームの多くも50～60代だってこと。" userName="wang_li" createdAt="2025-03-24T20:10:27" color="">}}

{{<matomeQuote body="C言語の良いところってシンプルさだと思ってたけど、実際はめっちゃ複雑で奥が深いよね。C言語みたいにローレベルで、ほんとにシンプルな言語ってないのかな？Zigをちょっと調べてみたけど、シンプルそうなんだけど、なんか引っかかるんだよね…" userName="90s_dev" createdAt="2025-03-24T13:41:09" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
