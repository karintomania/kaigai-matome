+++
date = '2025-05-11T00:00:00'
months = '2025/05'
draft = false
title = 'Lazarus 4.0登場！驚きのアプリサイズを実現'
tags = ["Lazarus", "GUI開発", "デスクトップアプリ", "プログラミング", "軽量"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Lazarus 4.0登場！驚きのアプリサイズを実現

引用元：[https://news.ycombinator.com/item?id=43913414](https://news.ycombinator.com/item?id=43913414)




{{<matomeQuote body="一番いいとこはさ、hello, worldのGUIアプリ（テキストボックスとボタンがあって、メッセージボックスが出るダイアログね）がWin32でだいたい2.5 Mbってこと。2000年頃は500 Kbくらいだったけど、200 MbもあるElectronのhello worldから見たら全然小さいよね。" userName="int_19h" createdAt="2025/05/11 09:37:12" color="#ff33a1">}}




{{<matomeQuote body="Python QtアプリでSQLiteから大量データ読み込むと遅くて困ってるんだ。C++やRustだと問題ないんだけど、RustにはいいQtバインディングがない。<br>QV/HBoxLayoutとか標準的な機能使ってて、filesystemやSQLite操作、ogg再生もしてる。KDEとかとの連携が好きでQt使ってるんだけど、何かいい選択肢ないかな？" userName="dotancohen" createdAt="2025/05/11 14:29:51" color="">}}




{{<matomeQuote body="僕にとって一番いいところは、シングルファイルの実行ファイルになることだよ。去年、これだけのためにPascalで何か作ってみたんだ。他の言語でもやろうとしたんだけど、なんか変な、手間のかかる、たまに実験的な手順なしにはシングルファイル化できるモダンなツールが見つからなかったんだよね。" userName="scotty79" createdAt="2025/05/11 12:00:56" color="#ff5733">}}




{{<matomeQuote body="．NETでも_dotnet publish_使えば、必要なフレームワーク込みでも無しでも、自己完結型の実行ファイルは結構簡単に作れるよ。でも、やっぱり比較するとサイズは大きくなるけどね。" userName="nanoxide" createdAt="2025/05/11 14:06:45" color="">}}




{{<matomeQuote body="コメント3317の人向け。<br>Qtと他言語の組み合わせで検索した結果だよ。Qtバインディングのリンクいくつか見つけた。<br>Go: https://github.com/mappu/miqt<br>Java: https://github.com/OmixVisualization/qtjambi<br>Nim: https://github.com/jerous86/nimqt<br>もう一つ https://github.com/seaqt/nim-seaqt<br>Zig: https://github.com/rcalixte/libqt6zig" userName="rc00" createdAt="2025/05/11 17:45:24" color="#ff5733">}}




{{<matomeQuote body="ありがとう。JavaがPythonよりパフォーマンスで優れてるとは思わないんだよね。他の言語も同じで、多分C++やRustほどのパフォーマンスは出ないだろうな。でも、学術的な興味だけでも試してみる価値はあると思うよ。ありがとう。" userName="dotancohen" createdAt="2025/05/12 01:32:25" color="">}}




{{<matomeQuote body="JITで動くバイナリなら、/p:PublishTrimmed=trueを適用するのが一番だよ。これ（時々すごく）サイズを小さくしてくれるんだ。最近のAvaloniaUIとかWinUI 3で書かれたアプリは、NativeAOTでコンパイルできて、これでサイズもメモリ使用量もさらに減らせるよ。" userName="neonsunset" createdAt="2025/05/11 14:28:08" color="">}}




{{<matomeQuote body="ダークテーマに対応してる？あとシステムのテーマと同期するのかな？" userName="dist-epoch" createdAt="2025/05/11 10:40:16" color="">}}




{{<matomeQuote body="昔さ、これ1mb以下にできた記憶があるよ。upxみたいなちょっとした調整は必要だったけど、そんな難しくはなかったな。Lazarusってデスクトップアプリ作る上でのゴールドスタンダードになるべきだったと思うんだ。僕が試した他の解決策はどれも、ライセンスとか全体のコスト、実行ファイルのサイズとリソース使用量、非ネイティブコンポーネント、余分な依存関係とか、どれかで劣ってたからね。" userName="spapas82" createdAt="2025/05/11 10:13:33" color="#785bff">}}




{{<matomeQuote body="もっと一般的な話なんだけど、マルチプラットフォーム向けで、簡単なアプリでもバイナリが小さくて、ツール自体も軽い開発ツールって他にある？<br>もしかしたら僕だけかもだけど、Android Studioとか入れたらhello-world作る前にディスク30 GBも食われちゃって。<br>ツールが複数でもいいから、（a）ツールもバイナリも軽い、（b）開発環境は一つのプラットフォームで済む、この条件を満たすツールを探してるんだ。（今はWindows）。何か知ってる？" userName="alok-g" createdAt="2025/05/11 12:22:50" color="">}}




{{<matomeQuote body="残念ながら、LazarusのネックはPascal言語だと思うんだ。他の言語と比べても全然引けを取らない優秀な言語なのに、廃れてるってイメージが残念だよね。Wirth氏の言語よりC familyの言語が主流になっちゃったのは惜しいな。Pascalの優れた文字列処理だけでも、数えきれないほどのセキュリティの穴を防げたはずなのに。" userName="dlachausse" createdAt="2025/05/11 16:15:02" color="#785bff">}}




{{<matomeQuote body="Win32バックエンドだと無理だね。そっちのウィジェット自体にそういう概念がないから。Qtバックエンドならできるはずだけど（でも、もちろん大量のQt DLLが必要になるけどね）。" userName="int_19h" createdAt="2025/05/11 11:02:05" color="#ff5733">}}




{{<matomeQuote body="WinFormとか、もしかしたらGTKとかでも、だいたい同じことできないの？" userName="mrweasel" createdAt="2025/05/11 10:04:15" color="">}}




{{<matomeQuote body="でももしwindowsじゃなくてウェブをターゲットプラットフォームにするなら、ブラウザが動くどこでも使えるたった53バイトで済むよ。＜input type=”button” onclick=”alert(’hello world’)” ／＞" userName="lukan" createdAt="2025/05/12 09:42:47" color="">}}




{{<matomeQuote body="JavaはPythonよりずっと速いし、OracleのJITコンパイラは最高峰だよ。でも、データグリッドに大量の行を表示するみたいなGUIタスクは、言語選びより仮想化やページネーションが解決策になることが多いよ。UX改善のために、バックグラウンドでデータを先読みするのもコツだね。" userName="int_19h" createdAt="2025/05/12 03:00:21" color="">}}




{{<matomeQuote body="GUIアプリでdotnetを選ぶと大変なことになるよ。WPFみたいに昔の決定版でも未解決バグだらけ。Delphi/VCLは20年前から変わらず、開発速度やパフォーマンスでMicrosoftのものを圧倒してる。これはLazarus/LCLにも当てはまることだよ。" userName="maneki-neko" createdAt="2025/05/11 15:58:22" color="#38d3d3">}}




{{<matomeQuote body="Windowsのウィジェットって、Windows上でダークモード対応してないの？" userName="api" createdAt="2025/05/11 12:12:17" color="">}}




{{<matomeQuote body="100%素晴らしいアドバイスだけど、Avalonia, Uno, WPF, Windows Forms, WinUI 3.0を使うのは、Microsoft社員の場合だけにしといた方が本当に良いよ。見てよ、このリンク先。" userName="pjmlp" createdAt="2025/05/11 16:17:27" color="#ff5c5c">}}




{{<matomeQuote body="うん、まさにそれをやってたんだ．ありがとう．一つ知りたいのは、実際のレコード数より多く読み込まれてるように見せるために、スクロールバーのサイズをどう調整すればいいかってことなんだ．" userName="dotancohen" createdAt="2025/05/12 03:34:28" color="">}}




{{<matomeQuote body="2.5 MBはLCLのほとんどの部分だよ．プログラムが複雑になってもサイズ増加は最小限さ．例えば、Dadroit JSON Viewer EXEは複雑なtree viewsやJSON handling、networkingとかがあるのに6 MB以下だよ．<br>ちなみに、Windows上の空っぽのCLI EXEは50KB以下だよ．" userName="Peter5" createdAt="2025/05/11 13:34:14" color="#ff5733">}}




{{<matomeQuote body="https://areweguiyet.com/<br>あと、C++で同じような機能試した？色々な実装は比較してないけど、SQLite DBをQt（C++）で読んでるアプリ使ってると、DBに触るたび結構もっさりするんだよね．もしかしたら、値をdictに保存して、必要な時だけsqliteから読み書きするといいかもね．pythonのdictはすごく速いよ．" userName="jpc0" createdAt="2025/05/11 15:27:45" color="">}}




{{<matomeQuote body="＞ シンプルなアプリなら比較的小さなバイナリを生成Javaは巨大なruntimeをインストールする必要があるか、Jlinkみたいなのを使ってもGUIアプリにはまだすごく大きなバイナリになっちゃうのが問題なんだ．<br>grandparentが求めてるものに一番近いLazarusの代替はwxWidgetsだと思うよ．https://wxwidgets.org/" userName="dlachausse" createdAt="2025/05/11 16:25:24" color="#ff33a1">}}




{{<matomeQuote body="WinFormsを使えばもっとずっとうまくやれるよ．Windowsに.NET自体が入ってるからアプリはそれを頼れるし、C#がnative codeじゃなくてbytecodeにコンパイルされるからってのも大きいね（だから正確には公平な比較じゃないけど）．とにかく、C#/WinFormsでの同じhello world GUIアプリは〜11 Kbだよ．<br>Gtkだとそうはいかないな．Win32をラップするんじゃなくて、全てのwidgetを自分で実装してるから、どうしても大きくなっちゃう．それに、statically linkingするのは結構大変だし（AFAIK Gtk 4ではもうサポートされてないはず）．" userName="int_19h" createdAt="2025/05/11 10:50:55" color="#45d325">}}




{{<matomeQuote body="それは結構なサイズだね．Lazarusの詳しいことは知らないけど、これは典型的にstatic linkingで、何でもかんでも全部一つのbinaryに詰め込んでるって感じだね！クロスプラットフォームのruntime全部とか、GUI assets、metadataとか．もしかしたら、fat debug buildって可能性もあるかな．" userName="csmpltn" createdAt="2025/05/11 10:27:18" color="">}}




{{<matomeQuote body="＞ 君の〜200 MbのElectron hello worldとはまだ程遠いね．<br>packaged web appsだけど、もし可能ならsystem native web viewsを使おうとするプロジェクト、例えばWailsみたいなのはすごくいいと思うんだ（https://wails.io/）．例えばWindowsならWebview2を使うから、自分で丸ごとChromiumをpackageしなくて済むんだ．<br>distribution sizesがどう変わるかの比較がここにあるよ（https://github.com/Elanis/web-to-desktop-framework-compariso...）．Wailsは特にTauriみたいなのよりビルドもずっと速いんだ．<br>それはそれとして、もっとnative softwareが出てきてほしいな、あるいはLCLみたいにWin32, GTK, Qtとか、利用可能なものをターゲットにできるものとか．確かに、たくさんのプラットフォームで利用可能で、どこでも同じように動くcomponentを書くのは開発者にとって大変だけど、それでもその努力は素晴らしいと思うよ．だって、Wailsみたいな上のソリューションは、memory usageやCPU cyclesに関しては何もしてくれないのに対して、native GUI softwareはすごくインタラクティブにしようとしない大抵のアプリにはより良いからね．<br>もしLazarus/Pascalにもっと活発なecosystemがあるように見えたら、もっと使ってるかもしれないな．今だと、webappsのSpring Bootとか、あるいはclient softwareでのWeb APIsのconsume、OAuth2/OIDC/JWTの扱いとか、そういうもののequivalentが何なのか全然分からないんだよね．mORMot 2が一番近いのかもしれないけど？" userName="KronisLV" createdAt="2025/05/12 09:36:55" color="#ff5c5c">}}




{{<matomeQuote body="LazarusとOpen Pascalって楽しいんだよ！でもさ、ドキュメントの状態見ると頭おかしくなりそう。wikiはもう使えなくして、ちゃんとしたドキュメントサイトにするべき。あれ見るとマジ萎えるわ。ウェブサイト全体も正直SWAGサイトみたいだし。”SWAGはTurbo Pascal/Borland Pascalと初期Delphiのヒント集で今のObject Pascalにも応用できるけど、古いのも多い…”<br>こんなの見せられたら新しいユーザーはドン引きだよ。競争なんか無理だろ？" userName="speakspokespok" createdAt="2025/05/11 09:43:27" color="#38d3d3">}}




{{<matomeQuote body="”萎える”って言ってたけど、もしかして削除したいwikiってこれ？ https://wiki.freepascal.org/<br>これ、全然問題なくなくない？むしろ情報いっぱいあって良いじゃん。最近よく見る”全部一つのページに詰め込んだドキュメント”よりずっとマシだと思うけど。具体的にどこがダメで、なんで一から作り直さなきゃいけないの？" userName="CaptainOfCoit" createdAt="2025/05/11 10:27:22" color="">}}




{{<matomeQuote body="wikiには中途半端だったり、古かったり、全然役に立たない記事が多いんだよ。”wikiをドキュメント代わりに使う”ってありがちな問題そのもの。専門家がしっかり作るんじゃなくて、適当な意見が千個集まっちゃった感じ。良い情報もあるけど、正直”ダメな情報”の方が圧倒的に多いと思う。" userName="chungy" createdAt="2025/05/11 22:11:11" color="#785bff">}}




{{<matomeQuote body="新規ユーザー視点だとドキュメントはマジ混乱するって話。FreepascalとかLazarusって聞いても、公式サイト行ってもリンクがいっぱいあって、どこから始めていいか全く分かんない。Go言語みたいに整理されてないとやる気なくす。他の人も言う通り、ドキュメントは古くて分かりにくいのが問題だよ。見た目が大事ってこと。" userName="speakspokespok" createdAt="2025/05/12 02:48:56" color="#ff5733">}}




{{<matomeQuote body="”ドキュメントの状態見ると頭おかしくなりそう”って話、俺のリリース記事でも書いたんだよ。これね → https://www.theregister.com/2025/05/09/new_lazarus_4/" userName="lproven" createdAt="2025/05/11 10:46:09" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="その記事から関連ありそうな部分、これしか見つけられなかったんだけど：<br>”FreePascalプロジェクト全体について、ドキュメントに批判が見られる。量はかなりあるのだが：FPCマニュアルが8冊、 Lazarusドキュメントも複数言語で lengthy。有料のチュートリアルe-bookもある。”<br>ってことは、批判ってドキュメントが多すぎるってこと？しかも長い上に、複数言語で手に入るってことまで文句言ってるの？" userName="CaptainOfCoit" createdAt="2025/05/11 11:42:08" color="">}}




{{<matomeQuote body="いやいや。君、発言の繋げ方が間違ってるぞ。批判してる人は多い；ドキュメント自体はある、しかも山ほど。これ、”AだからBだ”って話じゃないんだよ。2つの別の事実を言ってるだけ。”ドキュメントはイマイチだ。”と”ドキュメントはある、いっぱい。”ってこと。つまり、ドキュメントはあるし大量にあるけど、質が良くないって話。具体的には、索引とか相互参照がダメダメらしい。ドキュメントが多すぎても、整理されてなきゃ少ないのと同じくらいタチ悪いんだよ。" userName="lproven" createdAt="2025/05/12 09:20:19" color="#38d3d3">}}




{{<matomeQuote body="質問の仕方が間違ってるって？へー、すごい著者様みたいですね。私はドキュメントが何でダメなのか聞いて、例を一つ出しただけなんだけど。アンタ、”No”だけで済ませることもできたのに、代わりに何？’言葉のサラダ’？’索引とか相互参照が悪いって人から聞いた。それについてはXって理由で賛成/反対だな’って返すだけで普通の会話ができたのにさ。ネット上の適当なコメント相手に、全然関係ない理屈で説教しようとしないでくれよ。もっと人間らしくなれって。" userName="CaptainOfCoit" createdAt="2025/05/12 11:14:46" color="">}}




{{<matomeQuote body="1年くらい前にLazarusのドキュメント使うのやめたんだ。AI（実際のドキュメントで学習してるみたい）にプロンプト出す方が楽で速くなったからね。あと，個人的にはAIってPascalのコード生成でも結構いい結果出してくれると思うな。" userName="boznz" createdAt="2025/05/12 03:22:44" color="">}}




{{<matomeQuote body="どのAI？僕の経験だとPascalコード生成はひどいよ。意味不明な構文とかでっち上げの名前とか。”hello， world”も怪しい。Pythonは結構 decentなのに。Pascalはオンラインでの情報が少ないからかな。今も人気だけど，書かれたコードの多くは公開されてないんだ。" userName="chungy" createdAt="2025/05/12 14:44:50" color="#38d3d3">}}




{{<matomeQuote body="主な問題は，AIが古かったりサポートされてないパッケージを使おうとすることが多いってこと。でも，古いコンポーネントやユニットを使わないでって頼むだけで，ほとんどのことができるベースラインをくれるよ。Gemini 2.5を使ったのが最後だけど，すごく古いOLEベースのSCADAシステムのインターフェースを生成するために使ったんだ。生成されたベースコードは，インターフェースの読み書きにほとんど手直しが必要なかったよ。" userName="boznz" createdAt="2025/05/12 19:37:24" color="#ff5c5c">}}




{{<matomeQuote body="私も！クライアント向けにLazarus 3（もちろんPascalで）で作ったソフトウェアを本番運用してるんだけど，みんなGUIの”Windows feel”が気に入ってるよ。<br>LinuxにはGambas ［1］ っていうのがあって，LazarusのBasic版みたいな感じ。［1］" userName="nicoloren" createdAt="2025/05/12 06:53:28" color="">}}




{{<matomeQuote body="クライアントがVB6で本番運用してた古いソフトで困ってたんだけど，Lazarusアプリに置き換えたら，もう10年問題なく動いてるよ。" userName="major505" createdAt="2025/05/12 11:13:20" color="">}}




{{<matomeQuote body="ALGOLからPascalやCがどう派生したかの歴史を解説。ALGOL-60→ALGOL-X（却下）→ALGOL-68（ALGOL終了），ALGOL-W→Pascal。もう一つの派生はALGOL-60→CPL→BCPL（TRIPOS，AmigaOS）→B→Cの流れ。" userName="lproven" createdAt="2025/05/12 09:17:11" color="#785bff">}}




{{<matomeQuote body="そういえば、Jeff Duntemannが”FreePascal from Square One”の新しいの出したよ、無料PDFだよ<br>https://www.contrapositivediary.com/?p=5399" userName="marttt" createdAt="2025/05/11 08:34:12" color="">}}




{{<matomeQuote body="これ、コンピュータープログラミングがどういうものか学ぶのに最高の入門書の一つだと思うんだ．たとえPascalみたいな言語が好みじゃなくても、ぜひチェックしてみてほしいね．" userName="c0l0" createdAt="2025/05/11 09:14:55" color="">}}




{{<matomeQuote body="＞関数から値を返すには、魔法のResult変数に何か代入するんだ．ローカル変数みたいに自由に読み書きできるよ．<br>その魔法変数スタイルと、VBScriptみたいに関数名に代入するのと、どっちが分かりやすいか悩むな．魔法変数の方がリファクタリングでいじる行数が減るかもね．<br>golangの`func Doit() (result int, err error)`っていう構文も、ちょっと複雑な気分になるんだ．別のプラットフォームの言葉を借りるなら、”一つのことをやる方法は一つだけあるべき”だよね．" userName="mdaniel" createdAt="2025/05/11 07:07:28" color="#38d3d3">}}




{{<matomeQuote body="俺も他の言語でよく`result`を戻り値として使うんだ、たぶん25年前にDelphiで覚えたからかな．他の言語だと自動で戻り値にならないから`return result`とか必要だけど、意図はめちゃくちゃ分かりやすいでしょ．だからそれだけで好きだよ．" userName="regularfry" createdAt="2025/05/11 10:54:30" color="">}}




{{<matomeQuote body="Resultの方が分かりやすいのは、Pascalだと他の文脈で関数名だけ書くと引数なしの関数呼び出しになっちゃうからなんだ．例えばこんな感じ：<br>type PInteger = ＾Integer；<br><br>  var X： Integer；<br><br>  function Foo： PInteger；<br>  begin<br>    Foo ：= ＠X；<br>    Foo＾ ：= 123；<br>  end； <br><br>最初の代入は魔法のResult変数へのだけど、二番目は自分自身を再帰呼び出しして、返ってきたポインタを逆参照して代入してる．技術的には曖昧じゃないけど（C++と違って代入の左辺に裸の関数呼び出しは書けないから）、人間には分かりにくいよね．Resultならそういう問題はもちろんないし、たぶんDelphiが最初からこれを入れた理由はその辺だろうね．" userName="int_19h" createdAt="2025/05/11 09:27:20" color="#ff5c5c">}}




{{<matomeQuote body="＞どっちが分かりやすいか悩んでる<br>関数名への代入は”古いスタイル”のPascalなんだよ．Free Pascalでもまだサポートしてるけど、コンパイラは警告出すようになってるんだ！" userName="chungy" createdAt="2025/05/11 07:35:24" color="">}}




{{<matomeQuote body="＞golangの複数戻り値構文も好きじゃない<br>あれって、匿名タプルが代入時に自動分解されてるのと基本的には同じじゃないの？" userName="kgeist" createdAt="2025/05/11 07:17:54" color="">}}




{{<matomeQuote body="いや、正確には違うね．<br>タプル全体を変数に入れられないからさ．" userName="throw-the-towel" createdAt="2025/05/11 08:00:20" color="">}}




{{<matomeQuote body="Golangの戻り値に名前つけるやつ、初心者には「あれ？この変数名どこから？」ってなるよね。呼び出し元データじゃないシンボル名なら尚更だよ。Google的には必要だったんだろうけど、個人的には分かりにくいだけかな。ローカル変数作るのに困るプログラマー見たことないし、AIが仕事奪う今じゃ余計に無用でしょ。<br>＞匿名タプルを代入時に自動で分解してるのとほぼ一緒？<br>コメント見て気づいたんだけど、この名前って、シグネチャだけど実装詳細だって誤解する人もいそう（コード例は省略）。<br>Golangで未使用変数でもコンパイルエラーにならない珍しい例だって気づいたよ（別のコード例も省略）。もう、ますます嫌いになったわ。" userName="mdaniel" createdAt="2025/05/11 16:06:46" color="#38d3d3">}}




{{<matomeQuote body="コードを一瞬で読むには、分かりやすい変数名とかreturnキーワードの方が断然楽だね、個人的には。" userName="ysleepy" createdAt="2025/05/11 07:28:16" color="">}}




{{<matomeQuote body="DelphiとFreePascalでも両方できるよ。組み込みプロシージャのExit(X)はC言語のreturnと同じ感じ。" userName="int_19h" createdAt="2025/05/11 09:35:15" color="">}}




{{<matomeQuote body="同時にHomebrewで非推奨になったみたいね［1］参照。主流でこの問題に対応してくれるといいな。［1］ https://github.com/Homebrew/homebrew-cask/pull/199559" userName="xvilka" createdAt="2025/05/11 11:12:14" color="">}}




{{<matomeQuote body="Lazarus/Free Pascalはちょっとだけ触ったことあるけど、慣れない点もあったなぁ。また触ってみるのも良いかもね。過去に役立ったこといくつか書いとくわ：fpcdeluxeはfpcとlazarusのビルドインストールに便利、anchordockingdsgnってプラグインでフローティングウィンドウを一つにまとめられる。4.0でそれがデフォルトになってると良いんだけどな。Castle Engine Pascal tutorialも結構良かったよ（ここにある別のスレッドで言及されてた）。<br>（追記：プラグインについて、fpcdeluxeにウィンドウを全部ドックするオプションがあるの見つけたよ−だから最初からそのプラグイン組み込めるね）。" userName="bigpeopleareold" createdAt="2025/05/11 12:47:03" color="#ff33a1">}}




{{<matomeQuote body="fpcupdeluxeは特定のバージョンとかクロスコンパイルしたい時にすごく良いよ。安定版が欲しいだけなら、セットアップをダウンロードすれば良いよ。このバージョンではドックされたIDEがデフォルトのオプションだよ。" userName="Peter5" createdAt="2025/05/11 13:36:11" color="">}}




{{<matomeQuote body="Lazarusが何に基づいているか、公式サイトだけだと分からなさすぎたよ。どこかの適当な投稿で「Lazarus IDE」って書いてあったからようやく分かったんだ。" userName="ramon156" createdAt="2025/05/11 11:11:06" color="">}}




{{<matomeQuote body="コミュニティフォーラムのことかな？「公式サイト」へのリンクは左のサイドバーにあるよ。" userName="nopcode" createdAt="2025/05/11 14:29:01" color="">}}




{{<matomeQuote body="LazarusとFPC、デプロイが難しいみたいで残念だね。オープンソースだし仕方ないけどさ。でもLazarusとFPCは素晴らしいプロジェクトだよ。LazarusみたいにGUIアプリ作る簡単な代替、他に知らないんだよね。今Macで試したけど、動かすのにハードルあった。残念だよ、良い選択肢なのに。" userName="rantingdemon" createdAt="2025/05/11 12:37:07" color="#785bff">}}




{{<matomeQuote body="その問題は経験ないな。Raspberry Pi Zero WでもLazarus動かしたことあるよ、遅かったけど実際動いたんだ。Macにどんなハードルがあるか分からないけど、WindowsとかLinuxじゃ簡単だよ。" userName="mikewarot" createdAt="2025/05/11 17:35:14" color="">}}




{{<matomeQuote body="試してみたけど、Lazarus 2よりLazarus 4の方が断然使いやすいね．" userName="lproven" createdAt="2025/05/12 09:21:25" color="">}}




{{<matomeQuote body="リリース告知にはさ、製品が何かって説明もいつも含めてくれると助かるんだけどね．＞LazarusはDelphiと互換性のあるクロスプラットフォームのRAD向けIDEだよ．色んなコンポーネントがあって、グラフィカルなフォームデザイナーで複雑なGUIも簡単に作れるんだ．" userName="colechristensen" createdAt="2025/05/11 06:29:14" color="#ff5c5c">}}




{{<matomeQuote body="Delphiは知ってるけど、Lazarusは今初めて知ったんだよね．きっと他にも俺みたいな人いるはず．Delphiの説明はいいとしてさ，でも全部の言語の全部のIDE知ってるわけじゃないじゃん．一句説明加えても損はないでしょ．上のコメント見てなかったら、またDelphi使うときにLazarusなんて選択肢に全く入らなかったよ．" userName="Timon3" createdAt="2025/05/11 08:37:46" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="vc++があれば、オープンソース版を探してgccとかclangに行き着くでしょ？Windowsがあれば、代替は何かなって調べてlinuxとかopenbsdとかについてちょっと学ぶでしょ．少なくとも俺はそう思ってたんだ．それは理にかなってると思うよ．" userName="nurettin" createdAt="2025/05/12 12:54:24" color="">}}




{{<matomeQuote body="まあ、Delphi IDE探せばLazarusは見つかるだろうけどさ、教えてよ：利点は何なの？フォーラムの投稿で数バイト節約になるだけじゃん．それ以外に何があるの？エコシステム外の人が告知ポストから大して情報得られないせいで、エリート意識を感じる以外に．門番やってるようにしか見えないんだよね．本来使われるべき文脈でプロジェクトを知る人が減るだけじゃん．それって完全にマイナスに見えるんだけど．プラスは何？" userName="Timon3" createdAt="2025/05/12 16:42:07" color="#45d325">}}




{{<matomeQuote body="メリットは明らかだと思ってたんだけど、年齢や文化の違いがあるのかも．リサーチ力と忍耐力を鍛えるのは良いことだよ．全てのHNの投稿が製品紹介であるべき、みたいな文句は違うと思う．RTFM＆RTFSの文化で育ったから（それが最高だったんだ！），たぶん俺たちの違いは永遠に埋まらないかもしれないな．" userName="nurettin" createdAt="2025/05/13 04:04:20" color="">}}




{{<matomeQuote body="SPA以外にも存在するってことに驚いてた奴（フルページリロードマジックの件ね）の話読んでから、CSの歴史とか全く文脈も知識もない、もっと若い人がこの分野にはいるんだなって気づいたんだ．だから、LazarusとかDelphiを知らない人がいても全然ありえる話だよ．" userName="integricho" createdAt="2025/05/11 07:14:02" color="#785bff">}}




{{<matomeQuote body="それならさ、もっとたくさんのページとかリンクの裏に情報を隠しちゃえば？そうすればきっと、みんなのそういう力をもっと鍛えるのに、さらに良くなるはずだよね！" userName="Timon3" createdAt="2025/05/13 06:40:53" color="">}}




{{<matomeQuote body="それって、そのIDEに純粋にフォーカスしたフォーラム全体へのリンクじゃん．ドメイン名に名前も入ってるし．なんでそのオーディエンスに説明する必要があるの？彼らは知ってるんだよ．" userName="szszrk" createdAt="2025/05/11 08:57:59" color="#ff5c5c">}}




{{<matomeQuote body="HNに投稿する時って、説明欄とかないんだよね。元のタイトル使うことになってるし、タイトルには文字数制限もあるしさ。それに、たまに怒ったネットの人がコメントしてくるんだよね、投稿者本人だったりもするし。" userName="TiredOfLife" createdAt="2025/05/11 06:39:28" color="">}}




{{<matomeQuote body="毎日さ、1万人が人生で初めてその話題を知るんだって。https://xkcd.com/1053/ これ見てよ。" userName="troupo" createdAt="2025/05/11 07:06:44" color="">}}




{{<matomeQuote body="それは会話としてはすごく良いポイントなんだけど、Lazarus の公式サイトのリリースノートって特定の場所では xkcd の法則は違うと思うな。リリースノート見る人って、Lazarus 知ってるか、Hacker News みたいに興味持って自分で調べる人だからさ。" userName="evidencetamper" createdAt="2025/05/11 07:55:37" color="#45d325">}}




{{<matomeQuote body="こういうのってさ、他の場所でシェアされて、その製品が何かも全然知らない人が見ることになるんだよ。今回、俺が Lazarus でまさにそうだったみたいにね。" userName="colechristensen" createdAt="2025/05/11 17:08:33" color="">}}




{{<matomeQuote body="そしてその日（生まれた日）の最初の優先事項は、良いオープンソースの Object Pascal コンパイラを手に入れること、だね。" userName="anon7725" createdAt="2025/05/11 09:32:40" color="">}}




{{<matomeQuote body="＞ SPA 以外が存在することに驚いた人（フルページリロードの魔法の出来事）について読んだんだけど、それ何？俺知らないんだよね。HN かどっかであったの？" userName="graemep" createdAt="2025/05/11 10:16:07" color="">}}




{{<matomeQuote body="あー、俺の言いたかったこと曖昧だったみたいだね。本当に言いたかったのは、公式サイトにそれを含めるべきだってことだよ。" userName="colechristensen" createdAt="2025/05/11 07:32:25" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
