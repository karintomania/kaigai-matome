+++
date = '2025-04-28T00:00:00'
months = '2025/04'
draft = false
title = 'Pythonがハードウェアで動く？プロセッサを作ってみた！'
tags = ["Python", "ハードウェア", "プロセッサ", "自作", "コンピュータアーキテクチャ"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Pythonがハードウェアで動く？プロセッサを作ってみた！

引用元：[https://news.ycombinator.com/item?id=43820228](https://news.ycombinator.com/item?id=43820228)




{{<matomeQuote body="このプロジェクトは超クールだけど、記事の主張は盛りすぎだと思うな。”PyXLはPythonを直接動かす特別なプロセッサで、普通のPythonコードをそのままシリコンで動かすんだ”って言ってるけど、CPythonでコンパイルして専用ISAのバイナリにするって書いてあるじゃん？それって他のCPUと同じで、コンパイルされたやつを動かしてるだけじゃん？「Pythonをサポートするために作られた特殊なプロセッサ」って言うのが正直だと思うな。" userName="zik" createdAt="2025/04/29 00:44:33" color="#ff5733">}}




{{<matomeQuote body="プロジェクト自体とは関係ないんだけどさ、ハードウェアがCPythonのバイトコードで動いてるなら、Pythonを直接動かすっていう点ではこれで十分なんじゃない？だって普通のpython3だって、まず＊。pycファイルにしてから動かすじゃん。それってPythonを直接動かしてるって言わないの？…" userName="goranmoomin" createdAt="2025/04/29 02:19:42" color="#38d3d3">}}




{{<matomeQuote body="そうだね、もしpycコードを直接動かしてるなら「Pythonを動かしてる」って言っていいと思う。でもそうじゃないみたいで、pycをさらにマシンコードに変換するって。だから親コメントみたいに、ちょっと紛らわしいなって俺も思うよ。<br>でも、そのネイティブコードがpycにめちゃくちゃ近いなら、まあ納得できるかもね。起動時にpycをマシンコードに変えるやつは書けるのかな？もし無理ならなんで？" userName="hamandcheese" createdAt="2025/04/29 03:10:01" color="#ff5c5c">}}




{{<matomeQuote body="まあね、CPythonじゃなくて、CPythonバイトコードをアセンブラにしたやつを動かしてるわけだ。専用のアセンブラだけどね。とにかく、プロジェクト自体はめちゃくちゃクールだし、すごく役に立つよ（特定の場面ではね）。ただタイトルがちょっと分かりにくいだけかな。" userName="f1shy" createdAt="2025/04/29 12:40:06" color="#45d325">}}




{{<matomeQuote body="コンパイラ理論的にはそうかもね。でも「Pythonを直接動かす」って言ってるのは、仮想マシンやインタプリタがないって意味だよ。プロセッサはPython ByteCodeからできたロジックをハードウェアに直接マッピングして動かしてるんだ。普通のシステムより「直接的」って言いたかったんだ。ソフトで解釈じゃなくて、ハードでネイティブに動くんだよって違いを伝えたくて。" userName="hwpythonner" createdAt="2025/04/30 14:58:05" color="#ff33a1">}}




{{<matomeQuote body="AoTのPythonをx86にするコンパイラを使ったら、x86プロセッサが「Pythonを直接動かす」って言ってるような感じになるんじゃない？" userName="franzb" createdAt="2025/05/01 15:46:23" color="">}}




{{<matomeQuote body="ちょっと探してみたら、Raspberryも似たようなこと言ってたよ…<br>「組み込みハードウェアで直接動作」<br>https：／／www。raspberrypi。com／documentation／microcontrollers／m。．．．<br>なんでこういう言い方するのかよく分かんないな…" userName="_kidlike" createdAt="2025/04/29 05:27:12" color="">}}




{{<matomeQuote body="Micropythonはハードウェアで直接動くよ、それはそう。OSなしのベアメタルバイナリだからね。でもそれは、渡されたPythonコードを「直接」動かすっていう今回の話とは違うんだよ。" userName="rcxdude" createdAt="2025/04/29 08:05:37" color="">}}




{{<matomeQuote body="うーん、Raspianでpython動かすと、ピンをいじるのがせいぜい数KHzくらいだけど、このプロジェクトなら2MHzもいけるんだって。それに予測可能性も高いって言ってるから、時間のブレも少ないはず。これはリアルタイムなことやるにはめっちゃ大事なんだよね。" userName="f1shy" createdAt="2025/04/29 12:42:54" color="#38d3d3">}}




{{<matomeQuote body="え？MicroPythonってまさにそれじゃん。PythonのソースコードそのものをコピーしてPicoで動くんだよ。" userName="dividuum" createdAt="2025/04/29 06:10:10" color="">}}




{{<matomeQuote body="最初に思ったのは「あれ？コンパイルされてるコードじゃん、直接じゃないじゃん」ってこと。記事の主張はちょっと盛りすぎかもね。まあそれでもすごいけどさ。新しいPythonのバージョンが出るたびにアップデート大変そうって思った。あと、ASTを直接ハードウェアでやるみたいなのってあるのかな？Lispマシンとか近いのかも。リアルタイムで変わるFPGAとかいるのかな？" userName="wormius" createdAt="2025/04/29 17:29:11" color="#ff5733">}}




{{<matomeQuote body="PyXLはPythonの細かい構文変更に縛られないように作られてるよ。PythonソースをByteCodeにして、そこからハードウェア向け命令にするんだ。ByteCode使うから言語の変更には強いんだって。ハードウェアは固定で、将来のアップデートはツールチェーン側でやるんだ。シリコンいじらなくてもPythonと進化できる仕組みだよ。" userName="hwpythonner" createdAt="2025/04/30 15:05:30" color="#ff5c5c">}}




{{<matomeQuote body="それってnuitkaがやってることと似てるね。でもnuitkaの結果だとリアルタイムなPythonプログラムは無理だし、今回みたいにハードウェアに直接アクセスできないんだよね。" userName="BiteCode_dev" createdAt="2025/04/29 07:52:35" color="">}}




{{<matomeQuote body="どんなコードが動かせるか制限はある？（メモリとかOS以外で）設計プロセスについてもっと知りたいな。Pythonとか動的言語のバイトコード向けにカスタムプロセッサ作るってアイデア、すごいと思うし面白いね。なんでこれやろうと思ったのか、どうやって実装したのか（大まかでいいから）教えて欲しいな。" userName="Y_Y" createdAt="2025/04/28 13:06:39" color="#ff5c5c">}}




{{<matomeQuote body="興味持ってくれてありがとう！メモリとかOS以外にも制限はあるよ。<br>今はPyXLはPythonのサブセットだけ。まだ実装してないCPython機能も多いけど、まずはハードウェアでPython動くって見せるのが目的。<br>ユースケース見ながら進めたいんだ。あと重いruntime reflection、 dynamic loadingとかは多分サポートしないかな。組み込みとかリアルタイム向けだからね。<br>設計プロセスはもっと詳しく話したいんだけど、今PyConの準備で忙しくて。<br>終わったらウェブサイトで詳細ブログ書く予定だよ。" userName="hwpythonner" createdAt="2025/04/28 14:00:57" color="#ff5733">}}




{{<matomeQuote body="ターゲットの機能セットは”real” PythonじゃなくてRPythonを狙うのはどうかな？PyPyがやってきたみたいに、Pythonの核となる部分と使いやすくしてる部分を分ける仕事、あれが活用できると思うよ。" userName="mikepurvis" createdAt="2025/04/28 15:19:34" color="#ff5733">}}




{{<matomeQuote body="＞ I’d prefer to move forward based on clear use cases<br>例えば`struct` moduleみたいなやつってどうするの？あれCで書かれてるのが大変だよね。そういうstdlib moduleってpure pythonで全部書き直さなきゃダメなの？" userName="ammar2" createdAt="2025/04/28 17:29:35" color="#ff5c5c">}}




{{<matomeQuote body="自分の前のコメント（600）でも言ったけど、pypyはもうこの手の仕事は全部やってるよ。CPythonの`struct` moduleはC implementationをimportしてるだけだけど、PyPyのはPython（ーish）implementationで、独自のrlibとかpypy.interpreter spaces使ってるんだ。Python stdlibはめちゃ広いし、もちろん常に変わってるから大変だよね。" userName="mikepurvis" createdAt="2025/04/28 18:16:44" color="#38d3d3">}}




{{<matomeQuote body="へえ、すごいね！うん、ここでpypyの成果に乗っかるのが一番賢明だろうね。投稿者さんがディクショナリとかリストみたいなものをどう扱うのか見るのも面白そう。" userName="ammar2" createdAt="2025/04/28 20:11:56" color="">}}




{{<matomeQuote body="バイトコードをハードで動かすのはARMのJazelleとかでも試されたけど、今は大変。複雑な命令や型情報不足でハードに合わないからソフト処理が増えるし、型追跡も必要。あと、Pythonとかのバイトコードは最適化がほぼされてない。これはデバッグやJITとの兼ね合いでそうしてるんだけど、結果として最適化されてないコードをハードで動かすことになる。これがキツくて、既存のJIT+x86/ARMに負けるんだよ。" userName="tsukikage" createdAt="2025/04/29 10:08:10" color="#ff5c5c">}}




{{<matomeQuote body="Lisp Machinesが消えた理由って、これ（上のコメントの話）と同じだって理解してるよ。SICPのビデオでそう言ってた気がする。1986年とかには、ASMにコンパイルする方がずっと良いってのは明らかだったらしいし。" userName="f1shy" createdAt="2025/04/29 12:47:36" color="">}}




{{<matomeQuote body="JVMのバイトコードを直接実行できるチップもいくつかあったよ。なんで普及しなかったかはよく知らないけど、ホットスポットをネイティブコードにJITコンパイルする方が、一般的にパフォーマンスが良いからじゃないかと思う。" userName="bokchoi" createdAt="2025/04/29 00:31:07" color="">}}




{{<matomeQuote body="いや、違う方向でちゃんと普及したんだよ。Java Cardみたいにね。世界のほとんどの大人、SIM cardの中にJava対応のプロセッサ持ってるんじゃないかな。少なくともエミュレーター（eSIMの場合だけど）。JavaCardデバイスで使われてるCPU archの例としては、ARM926EJ-Sがあって、これはJava byte codeを実行できると思うよ。" userName="teruakohatu" createdAt="2025/04/29 06:51:33" color="">}}




{{<matomeQuote body="Forth CPU（SystemVerilogで書かれたもの）の動画はこちらだよ：" userName="checker659" createdAt="2025/04/28 20:08:44" color="">}}




{{<matomeQuote body="JVMは分かる気がするんだけど、LISP Machinesについてはもっと詳しく知らない？ISAは言語に特化してたの？それともx86向けのコンパイラも結局同じことしてるの？全体的に、実際の結果としてはx86が民主主義みたいだと思うんだ。いつも効率が良いわけじゃないけど、他の要因で一番良い選択肢になってるっていう。" userName="hermitShell" createdAt="2025/04/28 14:57:33" color="">}}




{{<matomeQuote body="LISP Machinesは言語に特化して最適化されたISAを使ってたんだよ。当時は、普通のハードウェアでLISPのコンパイラをうまく作る方法がまだよく知られてなかったんだ。<br>あと、世界のコンピューターの圧倒的大多数はx86じゃないよ。" userName="kragen" createdAt="2025/04/28 19:55:22" color="#ff33a1">}}




{{<matomeQuote body="待って。LISPのコンパイラは、当時でもかなり良いのを作る方法が知られてたし、実際悪くなかったよ。一部のLISP特有の部分（数体系とか、bignumへのオーバーフロー、有理数とか）は問題があったけど（カスタムHWがない今でもそう）、でもそういう部分は汎用的な用途ではそこまで重要じゃなかったんだ。<br>LISP ISAの時代って、結局そんなに長くなかったしね。" userName="f1shy" createdAt="2025/04/29 12:50:58" color="">}}




{{<matomeQuote body="1970年代後半の普通のハード向けLISPコンパイラ（MACLISPとか）は、数値計算以外は性能がイマイチだったんだ。Gabrielの本のTakベンチマークとか見ても遅い。Generational GCみたいな技術が普及するまでは、普通のハードで高速なLISPコンパイラは難しかった。だからLISPマシンが生まれたんだよ。今のSBCLやChez Schemeはすごい進化してて、カスタムHWなしでもC並みに速いけどね。" userName="kragen" createdAt="2025/04/30 15:49:31" color="#ff5733">}}




{{<matomeQuote body="RISCプロセッサが出てきた頃（RISCが普及し始めたのと同じ理由だよ）は、ASMにコンパイルする方が良かったんだ。" userName="f1shy" createdAt="2025/04/29 12:52:44" color="">}}




{{<matomeQuote body="俺はPythonプログラムをVMとかインタプリタなしで直接動かすハードウェアプロセッサを作ったんだぜ。<br>初期のベンチマークだけど、GPIOの往復は480nsで、MicroPythonのPyboard（低クロックなのに）より30倍速いんだ。<br>デモはここ：https://runpyxl.com/gpio" userName="hwpythonner" createdAt="2025/04/28 11:44:54" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もっと早い時期（2012年）にFPGAでPythonバイトコードインタプリタをやろうとした試みもあるんだよ：https://pycpu.wordpress.com/”FPGAでPythonのすごく小さなサブセットを動かすのはpyCPUで可能だよ。<br>The Python Hardware Processsor (pyCPU)はMyhdlを使ったハードウェアCPUの実装なんだ。CPUはPythonバイトコードにすごく似たものを直接実行できる（命令セットはすごく限られてるけどね）。だから、CPUのプログラムコードはPythonで直接書けるんだ（Pythonのすごく限られた部分だけど）…”" userName="jonjacky" createdAt="2025/04/29 00:50:39" color="#38d3d3">}}




{{<matomeQuote body="これはすごく、すごくクールだね。素晴らしい仕事だよ。カスタムハードウェアを作る代わりに、Pythonっぽい構文で型安全な言語を作ってネイティブにコンパイルする方が、最終的な機能セットが広がるのかどうか興味あるな。バックグラウンドのガベージコレクションは言うは易く行うは難しだけど、驚くほど難しいことをもうやった人と話してるからね…" userName="boutell" createdAt="2025/04/28 14:53:23" color="">}}




{{<matomeQuote body="＞カスタムハードウェアを作る代わりに、Pythonっぽい構文で型安全な言語を作ってネイティブにコンパイルする方が、最終的な機能セットが広がるのかどうか興味あるな。<br>それって、ほとんどNim（https://nim-lang.org/）を求めてるみたいだね。マイクロコントローラーのプログラミングで使ってるプロジェクトもいくつかあるよ、Cにコンパイルされるからね（ESP32向けとか、最後に見た感じだと）。" userName="rangerelf" createdAt="2025/04/28 19:01:01" color="#38d3d3">}}




{{<matomeQuote body="なんでPythonを”コンパイル”するのが普通じゃないの？インタプリタが高速な反復とかクロス互換性に優れてるのは分かるんだけどさ。でも、なんでPython界隈では、本番環境に”ソース”ファイルをドカッと置いて、コンパイルのメリットを全部捨てちゃうのが一般的なやり方になってるんだろう？" userName="obitsten" createdAt="2025/04/28 12:48:04" color="">}}




{{<matomeQuote body="Pythonがコンパイルされない主な理由は、ライブラリに型アノテーションがないことだよ。型が動的でmonkey patchingがあるから、コンパイラは最適化が難しく、実行時に”再コンパイル”が必要になるんだ。”a.b”みたいな操作も、型が分かんないとどう呼ばれるか特定できない。JITコンパイラなら少しは最適化できるかもね。" userName="cchianel" createdAt="2025/04/28 13:15:33" color="#ff5c5c">}}




{{<matomeQuote body="型情報も大事だけど、Pythonの遅延バインディングも動的な性質の基本だよ。変数や関数は実行時に決まることが多くて、動的に変更されるんだ。だから型アノテーションがあっても、実行中の変更に対応する必要があって、静的コンパイルが難しいんだ。だからPyXLは効率的な動的実行に注力してるんだ。" userName="hwpythonner" createdAt="2025/04/28 13:25:33" color="#38d3d3">}}




{{<matomeQuote body="Smalltalk、Self、LispのJITで解決されてる問題だよ。これらはJIT技術の源流にあって、その一部はHotspotやV8に受け継がれてるんだ。" userName="pjmlp" createdAt="2025/04/28 14:20:40" color="">}}




{{<matomeQuote body="Pythonも3.13からJITが使えるようになったよ。" userName="dragonwriter" createdAt="2025/04/28 16:24:37" color="#ff33a1">}}




{{<matomeQuote body="まあね、自分でコンパイルしないといけないし、結構基本的なことしかできないよ。まだ始まったばかりって感じ。PyPyとかGraalPyの方が面白いことやってるんだけど、言語研究界隈の外だとあんまり知られてないのが現状かな。" userName="pjmlp" createdAt="2025/04/28 16:30:01" color="#ff5733">}}




{{<matomeQuote body="”解決済み（Solved）”ってよりは”対処済み（Addressed）”とか”緩和済み（mitigated）”が近いんじゃないかな。”解決”ではないね。”痛みを軽減した”とか”部屋から悲鳴を上げて逃げ出さなくて済むくらいには痛みが減った”って感じ。" userName="jonathaneunice" createdAt="2025/04/28 14:31:06" color="">}}




{{<matomeQuote body="CPythonでみんながやってることと比べたら、それは”解決済み”って言えるよ。CPythonで完全なグラフィックスワークステーションを作るなんて程遠い話だし、JITが完璧じゃなくてもね。そういう試みもいくつかあるけど、コミュニティのほとんどはC拡張書く方を選ぶのが現状だよ。" userName="pjmlp" createdAt="2025/04/28 14:55:06" color="#ff33a1">}}




{{<matomeQuote body="”シングルユーザーグラフィックスワークステーション”って今どき目標なのかな？昔のワークステーション時代なら良かったけど。昔、Self, Java, Python（PyPy）でJITやGC使ってたけど最高だったね。JITはネイティブに”十分近い”性能で、高レベル抽象化を使えるようにするのが価値だった。これは成功だけど、AOTと比べるとAOTが勝つことが多い。”解決済み”なら性能で言語を変える必要はないはず。でもJuliaやRustが性能のために盛り上がってるのを見ると、JITはギャップを縮めたけど解消はしてないって感じるな。" userName="jonathaneunice" createdAt="2025/04/28 16:26:37" color="#ff5c5c">}}




{{<matomeQuote body="”シングルユーザーグラフィカルワークステーション”は最高の目標じゃないかもだけど、達成できないマイルストーンとしては良いね。知る限り、JVMバイトコードからネイティブへのAOTコンパイラでHotSpotやGraal（JIT）に匹敵するのはない。JVMはPythonやJSより動的じゃないからね。Jython＋HotSpotも遅い。でもLuaJITはLuaがPythonより動的だけど、AOTなCやHotSpotに匹敵するみたいだよ。" userName="kragen" createdAt="2025/04/28 20:09:10" color="#ff33a1">}}




{{<matomeQuote body="コミュニティのユーザーがインタープリタの遅さを補うために、いつもC拡張書いてるわけじゃないレベルでは解決済みだよ。マイクロベンチマークでAOTがJITに勝っても、JITキャッシュとかPGOの実行間データ共有を考慮すると、ほとんどのビジネスアプリでは大した意味ないね。AOTが必要なユースケースは常にあるけど、デプロイ制約が理由が多い。ほとんどの一般的な開発者はAOTツールのPGOすらちゃんと使えないよ。てか今、Electronアプリいくつ動かしてる？" userName="pjmlp" createdAt="2025/04/28 16:32:33" color="#38d3d3">}}




{{<matomeQuote body="＞CPythonで完全なシングルユーザーグラフィックスワークステーションを作るなんて程遠い…これについてだけど、数年前にSnakewareっていうPythonユーザー空間を含むLinuxディストリビューションを作ろうとした試みがあったらしいよ。でもそのプロジェクトはそれ以来活動停止してるみたい。GitHubに情報があるよ。" userName="Qem" createdAt="2025/04/28 15:40:13" color="#785bff">}}




{{<matomeQuote body="Pythonで書かれたデスクトップシステムが十分なパフォーマンスを持ってるって情報、全然見つけられないな。" userName="pjmlp" createdAt="2025/04/28 16:08:22" color="">}}




{{<matomeQuote body="SugarはPythonで作られてるよ。GitHubにある。" userName="homarp" createdAt="2025/04/28 19:30:27" color="">}}




{{<matomeQuote body="＞一番の理由は、ほとんどのPythonライブラリに型アノテーションがないことだと思う（標準ライブラリ含む）。型アノテーションがあれば、Mypycを使ってPythonをコンパイルしてパフォーマンスを改善することはもう可能だよ。例えばこのブログ記事見てみて。" userName="Qem" createdAt="2025/04/28 15:25:56" color="#45d325">}}




{{<matomeQuote body="Pythonは全部コンパイルを避けてるわけじゃないよ。バイトコードにはコンパイルされるけど、ネイティブコードじゃないんだ。JavaとかC#がバイトコードにコンパイルされるのと似てるかな。Javaとかは実行時（最近はコンパイル時も）にネイティブコードにするけど、Pythonはインタープリターで動くんだ。そうしない理由は、エンジニアリソース不足，シンプルにしたいって思い，あとCコードがPythonオブジェクトを操作するための後方互換性が必要だからだよ。" userName="Someone" createdAt="2025/04/28 13:06:24" color="#ff5733">}}




{{<matomeQuote body="「Pythonをコンパイルする」って，もしインタープリターの動きをCPU命令にするだけなら，あんまり速くならないよ。遅いのはインタープリターじゃなくて，内部で動くCコードの処理だから。<br>最適化目的のコンパイルならPyPyがあるけど，あれは速くなる分，別のトレードオフがあるんだ。「タダ」で速くなるわけじゃないんだよね。" userName="jerf" createdAt="2025/04/28 13:20:20" color="#ff5733">}}




{{<matomeQuote body="動的言語の大きなコストはメモリアクセスだよ。Pythonだと，値の型とかサイズとかを事前に知るのが難しいから，Cとかみたいにレジスタに入れられないんだ。<br>Cython，PyPyみたいなツールや，numpyみたいな最適化ライブラリで速くできるけど，Pythonの柔軟さのために多くの処理でメモリ上の動的な構造にアクセスする必要があるんだ。これはレジスタアクセスよりずっと遅い。<br>ほとんどの場合，これらの助けがあれば十分速いけど，それが足りない人はRustとかJuliaとかに移る傾向があるね。メモリアクセスのコストなしにPythonをやるのは難しいんだ。" userName="jonathaneunice" createdAt="2025/04/28 14:28:45" color="#ff33a1">}}




{{<matomeQuote body="Pythonが遅いのは，値を調べて型を確認する作業が多いから。Cでx＋yをコンパイルするのと違って，Pythonだとコンパイル時に型が分からないから，どの「add」を使うかとか実行時に決めなきゃいけない。だからコンパイラにインタープリターが必要になるんだ。<br>静的型付けを入れる手もあるけど，それだと言語の便利さが減る。だからMojoみたいなプロジェクトは，Pythonに見えるけど全く別の速い言語を作ろうとしてるんだ。" userName="ModernMech" createdAt="2025/04/28 13:31:14" color="#ff5c5c">}}




{{<matomeQuote body="オーバーロードされた演算子のためにインタープリター全部が必要ってわけじゃないよ。CPythonも似たようなことやってるし，Golangみたいにvtableで作ってるんだ。<br>静的型付けがなくても，オーバーロード演算子で decent な性能は出せるよ。Ur-Schemeの経験だと，簡単な整数予測と実行時型チェックを入れるだけで，CPythonより数倍速くなったんだ。" userName="kragen" createdAt="2025/04/28 20:25:59" color="#ff5733">}}




{{<matomeQuote body="知ってる限り，メリットは特にないね。もしかしたら，インタープリターがバイトコードを生成する必要がない分，起動がちょっとだけ速くなるかもってくらいかな。<br>エンドユーザーに配布するクローズドソースのソフトで，リバースエンジニアリングとか改変を（ちょっとだけ）難しくするためにやってる人は見たことあるよ。" userName="franga2000" createdAt="2025/04/28 13:01:56" color="">}}




{{<matomeQuote body="Nuitkaを見てみて：https://nuitka.net/" userName="Qem" createdAt="2025/04/28 14:56:19" color="">}}




{{<matomeQuote body="Cython，Nuitka，PyPyのJITみたいに，Pythonの一部をコンパイルしたり，実行を追跡したりして速くしようって試みはあったよ。でも，知ってる限り，標準の動的なモデルを完全に置き換えるものはないね。" userName="hwpythonner" createdAt="2025/04/28 13:03:02" color="">}}




{{<matomeQuote body="Pythonのコンパイルはバイトコードを出すことなんだ。そのバイトコードを配布することはできるけど，Pythonはすごく動的だから，何が何と結びつくか実行時まで分からないんだ。型アノテーションも静的チェッカー用で，コンパイルには使われないことが多い。<br>最適化なしじゃ，コンパイルはバイトコードより先に進めないんだ。昔，*.pycとlibpythonをまとめる「freeze」っていうプログラムがあったね。" userName="wyldfire" createdAt="2025/04/29 02:06:33" color="#ff5733">}}




{{<matomeQuote body="” なぜPythonの「コンパイル」は一般的じゃないの？<br>Python言語全体を扱えるAOTコンパイラはどこにあるの？<br>一般的じゃないのは，そもそもそれが選択肢にないからだよ。心配してる人たちは，プログラムの一部をコンパイルできるツールを使うか，別の言語を使ってるんだ。" userName="dragonwriter" createdAt="2025/04/28 16:24:08" color="">}}




{{<matomeQuote body="AFAIK、”eval()” 使っちゃうとさ、コンパイラ全体が必要になるから、結局インタープリタごと配布するのと変わらないんだよね。" userName="f1shy" createdAt="2025/04/29 12:54:43" color="">}}




{{<matomeQuote body="Nim とコンパイルした Python 比べるのはマジ失礼．バイナリ小さいし、速いし、ちゃんとしたメタプログラミングもできるし、ちゃんとした型安全だし、”hello world” 程度で interpreter なんていらないんだぜ．" userName="archargelod" createdAt="2025/04/29 02:37:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、同意．分かりやすく言っただけだよ．文法似てるから Python の開発者が高性能なものに移行しやすいって点はあるけど、基本的には全く別のもの．マジで言いたいのは、”型付き Python” なんてのはやり方間違ってるってこと．あれはそういう風に作られてないし、多分これからもそうはならない．最初から強い型付けを考えて作られたツールを使うべき．Nim はそれにピッタリだよ．" userName="seanw444" createdAt="2025/04/30 18:30:20" color="#785bff">}}




{{<matomeQuote body="＊ プロセッサ設計に使った HDL は？<br>＊ そのプロセッサのアセンブリ言語教えて？<br>＊ ARM／x86／RISCV みたいな既存プロセッサ向けじゃなくて、なんで自作プロセッサ向けに Python バイトコードコンパイラ作ったの？<br>これなんで？" userName="rthomas6" createdAt="2025/04/28 12:35:35" color="#45d325">}}




{{<matomeQuote body="質問ありがとう．HDL は Verilog．アセンブリは PySM （あんまり独創的な名前じゃないけどね）っていうカスタム命令セットを実行するよ．CPython Bytecode にヒントを得てて、スタックベースで動的型付けなんだけど、ハードウェアのパイプライン処理効率化のために合理化してる．<br>今はフル ISA はまだ公開してないけど、全体像だけ説明するとね．スタック操作、計算、比較、分岐、関数呼び出し、メモリ操作なんかの命令がある．<br>なんで ARM／X86 とか使わなかったかというとね…<br>既存 CPU は C／C＋＋ みたいな静的でレジスタベースのコンパイル言語向けに最適化されてるから、Python の動的な性質、つまりスタックベース実行、実行時型処理、動的ディスパッチなんかは従来の CPU とめっちゃ相性が悪くてさ、たくさんの無駄（インタープリタのオーバーヘッド、動的型付けのペナルティ、参照カウント、キャッシュの局所性とか）が発生しちゃうんだよ．" userName="hwpythonner" createdAt="2025/04/28 12:40:44" color="#38d3d3">}}




{{<matomeQuote body="うわー、これマジ面白いね．ちょっと脱線した質問なんだけど （低レベルハードウェア詳しくないから変な質問だったらごめんね）：このアーキテクチャって投機的実行とかサポートしてるの？ もしそうなら、それに伴う脆弱性とか心配してたり対策してたりする？" userName="pak9rabid" createdAt="2025/04/28 15:00:00" color="#45d325">}}




{{<matomeQuote body="ありがとうー．大丈夫、それマジいい質問だよ！<br>今んとこ PyXL は投機的実行なしで、完全インオーダー実行にしてる．理由はいくつかあってね．<br>まず、リアルタイムとか組み込みシステムだと決定性がマジ重要だから、投機的実行避けてタイミング予測可能にして、副作用の脆弱性とかなくしたいんだ．<br>あと、PyXL はまだ初期段階だから、性能のために複雑な最適化じゃなくて、構造的に分かりやすくて効率的なアーキテクチャ作るのに集中してるんだ．将来もしマジで必要になったら、予測可能性とかシンプルさを壊さないように、めっちゃ注意して一部の予測を取り入れるかもね．" userName="hwpythonner" createdAt="2025/04/28 15:07:38" color="#38d3d3">}}




{{<matomeQuote body="スタック操作とか計算命令って言ってたけど、他の Python データ型（floatとかstring、tupleとか）ももう実装してるの？ もししてたら、1 ＋ 1．0 みたいに違う型同士の計算はどう処理するの？ スタックに乗ってる型見てディスパッチテーブルみたいなのある感じ？" userName="ammar2" createdAt="2025/04/28 20:21:15" color="#785bff">}}




{{<matomeQuote body="Python 言語自体はスタックベースじゃないよ、CPython のバイトコードがスタックベースなだけ．レジスタベースの命令セットの上でも普通に実装できるし．まあ、他のコンパイルを難しくするっていう点については言いたいこと分かるけどね．" userName="kragen" createdAt="2025/04/28 20:35:20" color="">}}




{{<matomeQuote body="これってさ、キミの’arch’（ごめん、正確な用語かわかんないんだけど）もしかしてtoolchainがassembly languageに解釈できれば、RubyとかJSも動かせるんじゃない?" userName="larusso" createdAt="2025/04/28 16:53:08" color="#ff5733">}}




{{<matomeQuote body="良い質問だねー、100％は確信ないな.<br>RubyとかJSのinternalsに詳しいわけじゃないし、execution modelsを深く勉強したこともないんだ.<br>でも理論的には、もしlanguageがstack-based（かstack machineにmappingできるなら）で、ISAがニーズをcoverできるなら、可能かもしれない.<br>今はPyXL’s ISAはPython’s patternsに合わせてtunedされてるけど、他のlanguages用にgeneralizeするのはdefinitely an interesting challengeだろうね." userName="hwpythonner" createdAt="2025/04/28 18:09:41" color="#45d325">}}




{{<matomeQuote body="Luaはfit the bill then definitelyだと思うよ.Edit: これ超面白いprojectだねって言いたかったんだ. custom toolchainsとかcompilation stepでpythonがどこで動くか最初はstruggleしたけど、重要なのはhardwareがvmみたいにdynamic aspects全部含めてrunしてるってこと. parent commentみたいに、wasm向けのもworth havingかなって思う." userName="larusso" createdAt="2025/04/28 18:44:02" color="#45d325">}}




{{<matomeQuote body="それに加えて、WASM executionをexploreするのもinterestingかもね." userName="_kb" createdAt="2025/04/28 22:45:49" color="">}}




{{<matomeQuote body="variable amountのmemoryをiterateするinstruction、例えばstringのconcatenatingとか、どう扱うの? そういうinstructionってinterruptible? virtual memoryないならinterruptible不要かもだけど.<br>memoryはallocateどうしてるの? Mallocとfreeをhardwareでやるのってpretty complexだよね." userName="tlb" createdAt="2025/04/28 19:52:05" color="#38d3d3">}}




{{<matomeQuote body="C#が出た頃、誰かきっと.Net bytecodeをnatively executeするprocessorを作ると思ってたんだ. これついにどこかのlanguageでhappenedしたの見られて嬉しいよ." userName="rkagerer" createdAt="2025/04/28 16:18:11" color="#ff5c5c">}}




{{<matomeQuote body="Javaだと、Jazelleっていうのが少しあったよ. https://en.wikipedia.org/wiki/Jazelle." userName="kcb" createdAt="2025/04/28 16:38:25" color="#785bff">}}




{{<matomeQuote body="ARM processorsのmodeじゃなくて、common JVM opcodesのsubsetをranするcomplete systemの方がEven betterだったよ. https://en.wikipedia.org/wiki/PicoJava" userName="monocasa" createdAt="2025/04/28 16:49:29" color="#ff33a1">}}




{{<matomeQuote body="Some phonesにhardware Java executionあったっけ? my memory fail me?" userName="varispeed" createdAt="2025/04/28 17:15:13" color="">}}




{{<matomeQuote body="Jazelleって呼ばれてるよ." userName="Sesse__" createdAt="2025/04/28 17:44:29" color="">}}




{{<matomeQuote body="Sunも似たようなの作ろうとしてたよ、たしかJavaChipって呼ばれてたな。JavaStationsとかキオスク端末、携帯電話向けだったけど、全然流行らなかったんだ。" userName="lodovic" createdAt="2025/04/28 17:54:21" color="#ff5c5c">}}




{{<matomeQuote body="いや、あれはJava Co-Processorを積んだMotorola製プロセッサのMotorola製携帯だよ。Jazelleじゃないんだ。" userName="f1shy" createdAt="2025/04/29 12:55:59" color="">}}




{{<matomeQuote body="例えばスマートカードとかでJavaがそういうのやったよね。過去の面白い珍しい例だ。" userName="jiehong" createdAt="2025/04/28 16:20:51" color="">}}




{{<matomeQuote body="JavaCardは最後に調べた時は、ただの普通のインタプリタとして実装されてただけだよ。" userName="monocasa" createdAt="2025/04/28 16:50:10" color="">}}




{{<matomeQuote body="大学で卒論として、Befungeの派生版でこういうこと（命令デコードを単純化するために文字セットを選ぶ）をやりたかったんだ。でも指導教官がもっと実用的なものをって譲らなかったんだよね。：（" userName="zahlman" createdAt="2025/04/28 17:26:46" color="">}}




{{<matomeQuote body="リンクのことだけど、Befungeの面白い点は二次元PCが必要なことなんだ。空白スキップはO(1)らしいけど実装予定はなかった。でも、256x256バイトメモリで、一部を文字表示に直接メモリマップしたマシンを想像してたんだよ。" userName="zahlman" createdAt="2025/04/28 20:15:12" color="#ff5733">}}




{{<matomeQuote body="2006〜2008年頃にこういう製品あった気がするんだけど、見つかるのは.NET Micro Frameworkとかその後の.NET nano Frameworkだけ。2001年から.NET使ってるから勘違いかもだけど、当時のネット情報消えてるから存在したけど消えた可能性もあるね。" userName="ComputerGuru" createdAt="2025/04/28 17:24:46" color="">}}




{{<matomeQuote body="Netduinoってのはあったよ、でもあれはSTM32マイコン上でインタプリタが動いてただけで、CLRコードを直接実行する専用ハードウェアじゃなかったけどね。" userName="duskwuff" createdAt="2025/04/28 21:57:22" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
