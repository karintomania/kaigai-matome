+++
date = '2025-05-11T00:00:00'
months = '2025/05'
draft = false
title = 'フレームワークを使わず純粋なC言語でWindows ToDoアプリを作ってみた！容量なんと278KB！'
tags = ["C言語", "Windows", "GUI", "プログラミング", "軽量"]
featureimage = 'thumbnails/green2.jpg'
+++

> フレームワークを使わず純粋なC言語でWindows ToDoアプリを作ってみた！容量なんと278KB！

引用元：[https://news.ycombinator.com/item?id=43954649](https://news.ycombinator.com/item?id=43954649)




{{<matomeQuote body="Raymond Chenの話とか読むと、win32 GUIプログラミングって面白いんだよね。昔Petzoldの本でいっぱいGUIアプリ作ったのが楽しかった。strcpyとかsprintf使ってるみたいだけど、危ないから長さチェック付きの使った方がいいよ。Win32 APIにはC標準ライブラリの代わりがいっぱいあるから、サイズ減らしたいならZeroMemoryとかCopyMemoryとか使ってみたら？ 生Cは大変だけど最初学ぶには良いよ。WTLっていうC++のラッパーもあるから、GUIやりたいなら見てみて。" userName="masternight" createdAt="2025/05/11 22:27:27" color="#ff5733">}}




{{<matomeQuote body="少なくとも今どきは、strcpyじゃなくてstrncpy使わないと、みんな（AIとか）にずっと言われ続けることになるよ。zig使うとこういう落とし穴少ないんだけど、Cでも大丈夫。" userName="scripturial" createdAt="2025/05/11 22:35:49" color="">}}




{{<matomeQuote body="へー、で、もしstrncpy()使うなら、今度は僕が「strncpy()は間違った関数だよ」って講釈垂れることになるね。" userName="masternight" createdAt="2025/05/11 22:43:04" color="">}}




{{<matomeQuote body="strncpyは固定長の文字列フィールドがあるバイナリプロトコルで超完璧なんだ。パディングが必要なんだよね。読むときもstrnlenとかstrncpy使うんだよ。" userName="nly" createdAt="2025/05/11 23:05:54" color="">}}




{{<matomeQuote body="うん、それがstrncpy()の本来の使い方だよ。OPみたいな汎用プログラミングには向いてないね。バッファがいっぱいだとnull終端してくれないから問題になるし、余計なnullも書いちゃう。FreeBSDにはstrlcpy()、Windowsにはstrcpy_s()ってのがあるよ。OSのAPIはnull終端を期待してるから、読むときもnull終端前提で処理した方が安全でエラーも少ない。C++でstd::string使うとか、他の言語使えばいいんだよ。Cは文字列がひどいね。" userName="masternight" createdAt="2025/05/11 23:14:45" color="#ff5c5c">}}




{{<matomeQuote body="ZeroMemoryとかCopyMemoryが、既存のWindows C stdの関数の代わりに提供されてるのって、何のためにあるの？" userName="MortyWaves" createdAt="2025/05/11 23:55:52" color="">}}




{{<matomeQuote body="memset()とかCopyMemory()の代わりにZeroMemory()があるって話だけじゃなくて、fopen/fread/fcloseじゃなくてCreateFile/ReadFile/WriteFileとか使うべきって点にも同意だね。" userName="codebolt" createdAt="2025/05/12 06:37:29" color="">}}




{{<matomeQuote body="ほとんど同意だけど、win32 GUIプログラミング（この記事みたいの）は正直痛いよね。MFCでもちょっとマシになったくらい。BorlandのDelphiみたいなC++ライブラリの方が断然良かったな。CreateFileはファイルだけじゃなくて、他のものも開く最高のAPIなんだよね。懐かしいな。" userName="raverbashing" createdAt="2025/05/12 09:48:54" color="#785bff">}}




{{<matomeQuote body="stringって、最後の要素がNullのバイト配列だと思ってたんだけど？ どうやったらNull終端しないstringになるの？" userName="mrheosuper" createdAt="2025/05/12 06:19:10" color="">}}




{{<matomeQuote body="文字列がNULLで終わるかはプログラマ次第だよ。慣習だけど、最後のバイトを何にするかは自由。単なるバイトの配列なんだ。" userName="BenjiWiebe" createdAt="2025/05/12 13:13:54" color="">}}




{{<matomeQuote body="Cは書いてないけど、Pascalみたいな文字列ラッパーがなんで流行らないのかずっと気になってたんだ。先頭に長さ情報があって、互換性のためにNULL終端も付けるやつ。" userName="hkpack" createdAt="2025/05/12 11:20:08" color="">}}




{{<matomeQuote body="＞ Borlandの”Delphi like” C++ライブラリはすごい<br>ってあるけど、実際はDelphiのVCLそのものだったんだ。C++Builderに言語拡張があったのは、Delphiの機能と1:1で合わせるため。DelphiのユニットもC++で使えたし、Delphiのソースもコンパイルできたんだよ。" userName="int_19h" createdAt="2025/05/12 17:06:50" color="#ff33a1">}}




{{<matomeQuote body="WindowsはCに標準化したわけじゃないよ。最初はアセンブリやPascalで、後からC/C++。MicrosoftはCを他の言語と同等に見てて、UNIXみたいに特別扱いしてない。C標準ライブラリもOSじゃなくてコンパイラ付属だった。最近は変わってきてるけど、Windowsは他のOSと違って言語独立性を大事にしてるんだ。WinRTとか見るとわかるよ。" userName="mike_hearn" createdAt="2025/05/12 09:12:55" color="#45d325">}}




{{<matomeQuote body="そうそう、Object Windows Libraryから発展したんだよね。OWLも拡張があって、MFCよりずっと使いやすかった。過去形じゃなくて、今も製品は市場にあってリリースも頻繁だよ。昔ほどじゃないけどね。" userName="pjmlp" createdAt="2025/05/13 07:51:45" color="#ff5733">}}




{{<matomeQuote body="＞ fopen/fread/fcloseを使ってる<br>ToDoリストだよ、ネットワークサービスじゃない。無制限のstrcpyを使ってても何が問題？攻撃の余地はほぼないし、彼は自分のために書いたんだ。HNの細かい批判はやめようぜ。人の作品を素直に見てみようよ。コンピューターは何かをやるためのツールで、たまには見た目悪くてもいいんだ。ここでの批判は”lsをセキュリティのためにRustで”みたいなナンセンスと同じレベルだと思うね。" userName="donnachangstein" createdAt="2025/05/12 07:27:34" color="#45d325">}}




{{<matomeQuote body="memset()の代わりにZeroMemory()、memcpy()の代わりにCopyMemory()があるね。MSVCのintrinsicはrep stos/movs命令を使うはずで、これって関数呼び出しよりサイズが小さくなるんだ。" userName="userbinator" createdAt="2025/05/11 22:32:10" color="#ff33a1">}}




{{<matomeQuote body="Cでは全部バイト配列なんだ。uint32_tも4バイトの配列って言う人もいる。だから慣習が必要なんだよ。文字列は最後にNullがあるバイト配列と定義されてる。Nullがなくなったらもう文字列じゃない。" userName="mrheosuper" createdAt="2025/05/12 13:48:22" color="">}}




{{<matomeQuote body="Pascalは元々、文字列を扱う前に長さを指定する必要があったんだ。これってすごく良いアイデアだけど、当時は使うのが面倒だって思われてたんだよ。" userName="renewedrebecca" createdAt="2025/05/12 15:39:39" color="">}}




{{<matomeQuote body="無制限のstrcpyを使ってても何が問題？攻撃の余地はほぼないし、彼は自分のために書いたんだ。HNの嫌味な連中からの批判のためじゃない。← これを指摘したのは賢い気分になりたかったわけじゃないし、世界をRustで書き直せとかも思ってないよ。バッファオーバーランとかでデバッグに費やした時間はめちゃくちゃ多いんだ。最初からsaferなAPIがあれば、どれだけ時間を節約できたか。クールなプログラムだし、学ぶのは良いことだけど、不必要な問題は避けた方がいいと思うんだ。" userName="masternight" createdAt="2025/05/12 08:16:14" color="#785bff">}}




{{<matomeQuote body="Windows 1.xとか2.xってさ、C89標準より前に出てたんだよね。だからWINAPIの呼び出し規約がCじゃなくてPascalから受け継がれてるのもこれで説明つくわけ。C standard libraryは当時「ただの競合相手」だったってことだね。" userName="userbinator" createdAt="2025/05/12 00:52:25" color="#ff33a1">}}




{{<matomeQuote body="＞ freebsdにはstrlcpy()があるって？<br>strlcpy()はOpenBSDから来たやつで、後からFreeBSDとかSolarisに移植されたんだよ。" userName="donnachangstein" createdAt="2025/05/12 07:55:15" color="#ff33a1">}}




{{<matomeQuote body="OWLって、一部の標準コントロールを独自に描画するから、Win 3.11だとOWLアプリだけ浮いて見えた気がするな。MFCは叩かれがちだけど、結構不当な批判だと思うよ。だって根本的に違う種類のフレームワークなんだもん。MFCは底层APIを使いやすくするラッパーだけど、その核心は隠さない。一方でOWLやVCL（あとVB6とかWinFormsも）は、たとえネイティブウィジェットを使ってても、もっと高レベルで色々やってくれるラッパーなんだ。そういう視点で見ると、MFCへの適切な批判は「やりすぎ」ってことかな—例えばあのドキュメント/ビューの仕組みとか。フレームワーク全体の設計から浮いてる気がしてたんだよね。WTLは、MFCが目指したけど失敗したものを実現した感じ。" userName="int_19h" createdAt="2025/05/13 20:06:19" color="#38d3d3">}}




{{<matomeQuote body="標準でmemsetとかmemcpyはインラインコードに置き換えても良いことになってるんだ。パフォーマンス上げるために非標準の拡張機能を使う必要なんてないんだよ。" userName="kevin_thibedeau" createdAt="2025/05/12 04:20:01" color="#45d325">}}




{{<matomeQuote body="＞ win32 guiプログラミングに惹かれるものがある<br>マジで同意だわ。AlomWare Toolboxっていう超優秀なPCアプリを使ってて、これこそまさにWin32設計の極致って感じなんだ（https://www.alomware.com/images/tab-automation.png）。あんなに機能多いのに、たった3MBくらいしか容量ないのもそれが理由。これもフレームワーク一切なし、実行ファイル一つだけ。ソフトウェアが全部まだこうだったら良いのにって思うよ。" userName="BarryGuff" createdAt="2025/05/12 08:08:56" color="#785bff">}}




{{<matomeQuote body="公平に言うと、CreateFileとかってfopenよりずっと記述が冗長だよね。" userName="int_19h" createdAt="2025/05/12 16:57:04" color="">}}




{{<matomeQuote body="2バイトじゃ足りないね、普通は長さのためにsize_t分のバイトを使うことが多いかな。でも、utf-8っぽい感じで、長さの最初のバイトのあるビットパターンを見れば、長さ自体が何バイト使ってるかわかる、みたいなこともできるかもね。" userName="sirwhinesalot" createdAt="2025/05/12 14:30:44" color="#38d3d3">}}




{{<matomeQuote body="それは可能な規約の一つにすぎないし、特段良い規約ってわけでもないね。" userName="int_19h" createdAt="2025/05/12 16:56:10" color="">}}




{{<matomeQuote body="ほとんどのライブラリ（この場合はWin32含む）のAPIに渡すには、やっぱり0終端文字列が必要だよ。" userName="int_19h" createdAt="2025/05/12 16:45:49" color="#ff5733">}}




{{<matomeQuote body="＞ 世界全部をRustで書き直すっていう考えには全く賛同しないね。<br>良い心がけだよ。だってRustの人達って、「XをRustで書き直す」のがRustのほぼ全てだって指摘すると、めちゃくちゃ怒るからね。" userName="Suppafly" createdAt="2025/05/12 21:59:02" color="">}}




{{<matomeQuote body="俺もそれにはすげー時間かけたよ。正直、ネイティブコードでネイティブUI開発するの、懐かしいし、できなくなって寂しいんだよね。" userName="rcarmo" createdAt="2025/05/11 22:33:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CreateWindow()でいちいちコントロール作るより、昔ながらの方法だと.rcファイルにダイアログリソース置いてたんだよ（Visual Studioには今もエディタある）。で、CreateWindow()じゃなくてCreateDialog()使う。これだと全部勝手に作ってくれるんだ。さらにアプリマニフェスト足せば、モダンなUIスタイルとか高DPI対応もできちゃうぜ。" userName="electroly" createdAt="2025/05/11 20:07:12" color="#38d3d3">}}




{{<matomeQuote body="その方法だと、コントロール間の自動タビングとか、いくつかのキーボードショートカットも勝手についてくるんだ。サイズ変更は手動でやる必要があるけどね、でもそれは簡単で、コードも数百バイトもあれば十分だよ。" userName="userbinator" createdAt="2025/05/11 22:09:13" color="#ff33a1">}}




{{<matomeQuote body="UNIX以外だとC標準ライブラリはOSじゃなくてコンパイラベンダーが提供してたんだ。だから昔はいろんな会社（Borland, Microsoftとか）のがあった。Windows 10以降はUniversal C Runtimeもあるけどね。" userName="pjmlp" createdAt="2025/05/12 06:46:55" color="#ff5c5c">}}




{{<matomeQuote body="Petzold見てみろって昔は言ってたもんだよ…" userName="belter" createdAt="2025/05/11 21:58:24" color="">}}




{{<matomeQuote body="でもこの記事のアプローチは、FFIがある言語なら移植しやすいんだ。リソースファイルとかDLLいらないし。リソースファイルって良いAPIじゃないしね。高レベル言語でCreateWindow呼ぶなら、リソースみたいなDSLをメタプログラミングで作るのもありかも。" userName="kazinator" createdAt="2025/05/12 01:31:30" color="#ff5733">}}




{{<matomeQuote body="”リソースDLL”なんていらないよ。コンパイルした.rcファイルはバイナリに直接リンクされるんだ。MinGW含むWin32 Cツールチェインなら何でもできる。APIも悪くないと思う。GPも言ってたけど、メリットたくさんあるよ。高DPI対応とかね。.rcファイルは”ダイアログユニット”使うから、CreateWindowのピクセルと違ってDPI独立なんだ。" userName="int_19h" createdAt="2025/05/12 17:12:30" color="#ff33a1">}}




{{<matomeQuote body="もし”バイナリ”が自分でビルドしたりリンクしたりしてない、既成の言語ランタイムだったらどう？　俺が考えてるのはそっちのケースなんだ。この記事みたいにCreateWindow直接呼ぶプログラムは、そういう状況にうまく合うんだよね。" userName="kazinator" createdAt="2025/05/13 05:14:27" color="#45d325">}}




{{<matomeQuote body="もしアプリが.rcからコンパイルした.resファイルをインクルードできる.exeにリンクする言語じゃない場合は？その言語は.exeランタイムは持ってるかもしれないけど、それにリンクできるわけじゃない。その場合でも.rcファイルを使いたいなら、そこからリソースDLLを作って動的にロードしたいと思うんじゃないかな。（ローカライズ可能な文字列のためにリソースDLLがある理由の一つなのはわかってるよ。それはGUIレイアウトリソースを静的にリンクできるプログラムでも意味がある使い方だね。）" userName="kazinator" createdAt="2025/05/13 20:09:22" color="">}}




{{<matomeQuote body="あ～、言いたいことわかったよ。でも記事の文脈（C言語Win32アプリ）では.rcファイルを避ける理由はないかな。<br>君が説明してるケースでも、リソースDLLを使わなくてもCreateDialogIndirectを使えばDLGITEMTEMPLATE構造体の配列からダイアログを作れるよ。コンパイル済みのダイアログも basically その配列のダンプだと思うんだ。" userName="int_19h" createdAt="2025/05/14 11:42:00" color="#ff5733">}}




{{<matomeQuote body="”Visual Studioにはそれを視覚的にやるダイアログエディタがまだある”<br>彼らはgccを使ってるよ。" userName="tonyedgecombe" createdAt="2025/05/12 07:11:17" color="">}}




{{<matomeQuote body="それは関係ないよ。.rcファイルを作るのにVisual Studioを使うことはできる。このテクニックはMinGWベースのプロジェクトでもすごくうまくいくんだ。重要なのはVisual Studioに.rcダイアログエディタがあるってこと。" userName="electroly" createdAt="2025/05/12 14:30:05" color="">}}




{{<matomeQuote body="VS以外にも視覚的なダイアログ編集を組み込んだWindows用の.rcエディタはいくつかあるよ。Pelles Cはまだ定期的にアップデートされてる例の一つだね。" userName="int_19h" createdAt="2025/05/12 17:45:52" color="">}}




{{<matomeQuote body="Pelles Cのヒントありがとう。ちょうど起動してみたんだけど、ちょっと clunky だね（Visual Studioもそうだけど）。でも.rcダイアログリソースを読み込んで編集できたよ。Visual Studioの古いダイアログエディタは最近はけっこう crashy だから、代替があるのは素晴らしいね。" userName="electroly" createdAt="2025/05/12 20:44:10" color="">}}




{{<matomeQuote body="俺も前に Linux でアセンブリで似たようなこと（2 KiB以下）やってたよ：https://gaultier.github.io/blog/x11_x64.html<br>純粋な C で動的にリンクすれば、Linux でも簡単に 20 KiB 以下に収まるよ。Windows はもっとシンプルだろうけど。<br>とにかく、この努力には敬礼！記事の最後に書いたリンクオプションを試してみるといいよ、サイズ小さくなるはず。" userName="broken_broken_" createdAt="2025/05/11 19:21:19" color="#ff5c5c">}}




{{<matomeQuote body="えっと、俺のちょっと拡張した TUI (ncurses) TODO プログラムは 15K だね。Linux。スタティックリンクじゃないけど。musl で ncurses をビルドするとこまではまだやってない。" userName="johnisgood" createdAt="2025/05/12 08:25:24" color="">}}




{{<matomeQuote body="”no frameworks”<br>なるほどね：スケーリングされた dpi でフォントがぼやける、Tab サポートがない、テキストフィールドで Ctrl-A でテキストを選んだり modern な frameworks が提供してた他の stuff ができなかったり、行を追加するとエラー、とかとか…<br>”modern”<br>どういう点が？" userName="eviks" createdAt="2025/05/11 19:54:36" color="">}}




{{<matomeQuote body="DPI設定の例だよ！<br>このコードはWindowsのバージョン見てDPI関係の関数を動的に呼び分けてるんだって。<br>XPとか古いのだと何も呼ばないみたい。<br>https://github.com/Dwedit/GameStretcher/blob/master/Stretche..." userName="Dwedit" createdAt="2025/05/11 20:12:47" color="#ff5c5c">}}




{{<matomeQuote body="DPIはアプリのマニフェストでも設定できるよ。<br>プログラムでやるよりこっちがおすすめらしい。<br>詳しくはこちら！<br>https://learn.microsoft.com/en-us/windows/win32/hidpi/settin..." userName="scq" createdAt="2025/05/11 22:35:14" color="#785bff">}}




{{<matomeQuote body="テーマとかGDIとか使うともうちょっと複雑になるよ。<br>前に自分で作ったDPI対応の例を貼っとくね！<br>https://github.com/tringi/win32-dpi<br>WindowsのDPIサポートはXP以降色々変わったけど、<br>アプリ開発者がやらかしたのを直すためって感じかな。<br>ちゃんとやればXPでも250%DPIで綺麗に表示できるよ！<br>https://x.com/TheBobPony/status/1733196004881482191/photo/1" userName="Tringi" createdAt="2025/05/11 23:55:02" color="#785bff">}}




{{<matomeQuote body="あー、user32:みたいなWindows API関数って、<br>「純粋なC」とは違うフレームワークなんじゃないの？" userName="sargstuff" createdAt="2025/05/11 21:18:32" color="">}}




{{<matomeQuote body="コロンはC++じゃないよ。<br>それは特定のDLL（user32とか）に入ってるWindows API関数を指すときの書き方。<br>古いWindowsには無い関数だから、<br>DLLを動的に読み込んで関数のアドレス取ってきて呼び出してるんだ。<br>だからどのDLLにあるか知る必要があるんだよ。" userName="ghewgill" createdAt="2025/05/11 22:26:28" color="#ff5c5c">}}




{{<matomeQuote body="ぶっちゃけ、Windows自体が<br>オブジェクト指向なUIフレームワークって言えなくもないよね。" userName="jchw" createdAt="2025/05/11 21:39:33" color="">}}




{{<matomeQuote body="OSなしで起動できる組み込みプログラムなら近いかもだけど、<br>それも結局BIOSとかドライバーに依存するよね。<br>今のハードウェアで現実的に『純粋なC』プログラムって<br>ほぼ無理じゃないかなー。<br>知識も労力もヤバすぎる。<br>仮想環境でも結局ABIインターフェースあるから、<br>ソースコードレベルで完全に純粋ってのは難しいと思うな。" userName="sargstuff" createdAt="2025/05/12 03:30:50" color="">}}




{{<matomeQuote body="『現代的』っていうのは、<br>必要以上にデカいのに機能不足って意味でしょ？<br>（キミが言う足りない機能の多くは、<br>特にコントロール間のタブ移動とか、<br>ちょー簡単に追加できるけどね。）" userName="userbinator" createdAt="2025/05/11 20:09:13" color="">}}




{{<matomeQuote body="フォントスケーリングはSetThreadDpiAwarenessContext(-4)で<br>直る（有効になる）と思うよ。<br>-4に相当する定数がなんて名前かは知らんけど。" userName="card_zero" createdAt="2025/05/11 20:14:07" color="">}}




{{<matomeQuote body="6502プログラマーだった俺の中の何かが、278KBが軽量だって言われて死んでるよ。" userName="AaronAPU" createdAt="2025/05/11 18:21:10" color="">}}




{{<matomeQuote body="ビルド再現しようとしたら、gitの設定とかで最初うまくいかなかったんだ。でもMinGW使って試したら、最初から102KBになったよ。記事の278KBよりだいぶ小さいね。作者さん、どんな環境や設定でやったか教えてほしいな。GCCのオプション（-Os, -Oz, -flto, -s）で試したら、もっと小さく47KBにもできたよ。EXEサイズだけなら、まだまだ小さくできる余地あると思う。" userName="abbeyj" createdAt="2025/05/11 21:03:49" color="#45d325">}}




{{<matomeQuote body="＞ 作者さんが別のツールチェーンとか設定使ってるのかな？<br>デバッグシンボル付けてコンパイルしてるのかなって思ったんだけど。素のC言語でどれだけ変わるか分からないけど、まず最初に思いついたのはそれ。" userName="jedimastert" createdAt="2025/05/11 21:43:16" color="">}}




{{<matomeQuote body="どこかタイプミスだと思う。リポジトリとかリリースだと27KBって書いてあるよ（278じゃない）。" userName="tecleandor" createdAt="2025/05/12 08:44:37" color="#ff5733">}}




{{<matomeQuote body="昨日投稿した時点のv0.1リリースは278KBだったんだよ。でも9時間前の最新リリースv0.3では、-Osと-sオプション付けて、さらにUPXで圧縮して27KBになってるんだ。" userName="debugnik" createdAt="2025/05/12 09:26:34" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺もmingw使ったのに、違う結果になったんだよね。たぶんバージョンが違うか、MinGWのディストリビューションが違うか、32ビットか64ビットかの問題か、リンクしてるCRTが違うのかも。作者さんの詳細がないと、よく分からないな。" userName="abbeyj" createdAt="2025/05/11 23:30:43" color="">}}




{{<matomeQuote body="多くはプラットフォームとか実行ファイルフォーマットによるものだよ。スタックトレースの情報とか、動的リンクのインフラとか、例外処理のテーブル（C言語でも例外がC関数を通過する場合に必要）とか、そういうのがないと、もっとずっと軽量にできるんだ。" userName="jcelerier" createdAt="2025/05/11 19:16:38" color="">}}




{{<matomeQuote body="no dynamic linking infrastructureみたいなのはWindowsならタダで付いてくるし、例外処理テーブルも純粋なCなら必須じゃないよ。SEHだってそんなに必要ないし。" userName="userbinator" createdAt="2025/05/11 20:05:16" color="">}}




{{<matomeQuote body="デモシーンの大会に「64kb TODOアプリ」部門とか作ってもらうよう請願してみる？" userName="nottorp" createdAt="2025/05/11 18:26:47" color="">}}




{{<matomeQuote body="正直、意外とデカいなってびっくりしたよ。もっと小さいか、半分くらいアイコンに取られてるかと思った。昔、こういうの書いてた時はもっと小さかった気がするんだ。MinGwのせいかな？" userName="jackjeff" createdAt="2025/05/11 19:53:57" color="">}}




{{<matomeQuote body="これ聞くと、急にassemblyでのwin32プログラミングが流行った頃を思い出すね。たぶん、sharewareダウンロードがどんどんデカくなったこと（MFCの暗黒時代だったね）への反動だったんだろうな。昔のPalm Pilot 68kプログラミングと合わせると、あれが非レトロコンピューティングのasmの最後の盛り上がりだった気がするよ。" userName="mhd" createdAt="2025/05/11 19:34:09" color="">}}




{{<matomeQuote body="へへ:) ああ、書くのがもっと簡単なやつ作ったよ。しかも小さいんだ、15kBのquickrun.exe :)<br>C言語で、純粋なWin32 APIだよ。バイナリを小さくするハックは何もしてない、Mingw32コンパイラだよ。これはエイリアスでアプリをすぐ起動できるGUIアプリさ。" userName="Borg3" createdAt="2025/05/11 19:01:48" color="">}}




{{<matomeQuote body="今夜は自分で書いたエミュレータのデバッグに時間使ってるんだ。Z80プロセッサと64kのRAMで動くシステムをエミュレートしてるやつ。<br>時々さ、立ち止まって色々どう変わったか見るよ。でもサイズの変更に対して、俺たちはたくさんの進歩をしてきたってことだと思うんだ。" userName="stevekemp" createdAt="2025/05/11 19:52:26" color="#ff5733">}}




{{<matomeQuote body="90年代初頭にNethackが900kb以上の実行ファイルになるのを見て、雷に打たれたような衝撃を受けたのを覚えてるよ。" userName="kazinator" createdAt="2025/05/13 05:18:54" color="">}}




{{<matomeQuote body="なぜかMSVCじゃなくてGCCでビルドされてるし、最適化も有効になってないみたいだね（速度とかサイズのための）。" userName="webprofusion" createdAt="2025/05/12 02:03:54" color="#ff5c5c">}}




{{<matomeQuote body="ABIの問題もあるし、8bitとかから64bitアーキテクチャになったんだ。ポインタ1つが8倍も長くなってる。文句言うんじゃなくて、ただ感心しようぜ。これはアートだよ。" userName="p0w3n3d" createdAt="2025/05/11 20:18:17" color="#ff5c5c">}}




{{<matomeQuote body="それ、5 1/4インチのフロッピーディスクにギリギリ入るくらいじゃん！" userName="tonyarkles" createdAt="2025/05/11 19:51:14" color="">}}




{{<matomeQuote body="Win10/Win11の”新しい”電卓開いてみろよ。まるで別のOSを読み込んでるみたいだぞ…マジで無駄。" userName="fx1994" createdAt="2025/05/12 07:44:31" color="#38d3d3">}}




{{<matomeQuote body="多分JIT-ingしてるのかな？ネイティブにコンパイルされてたら起動は一瞬なはず。どうやってコンパイルしてるのか全然わかんない。" userName="alternatex" createdAt="2025/05/12 16:01:30" color="">}}




{{<matomeQuote body="やあみんな、このアプリは試してみたり、ちょっと楽しむために作っただけなんだ、ハハ。でもコメントにある通り、こういうのはC++とか他の言語でもっと賢くやれただろうね、アハハ。" userName="toxi360" createdAt="2025/05/11 19:23:27" color="#38d3d3">}}




{{<matomeQuote body="これって、俺が30年前に初めてWindowsプログラムを作るときにexactlyどうやって学んだかと全く同じやり方だよ。ただ、C++コンパイラを使ったけどね。なんでかわからないけど、C++コンパイラでCスタイルのコードを書くのが、Windows APIのドキュメントの使い方だったと思うんだ。Microsoftは単にC++がCの改良されたスーパーセットだから、Cスタイルのコードでも使うべきだっていう考え方に行ったんだと思うよ。" userName="tomtomtom777" createdAt="2025/05/11 19:59:32" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
