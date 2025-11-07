+++
date = '2025-10-31T00:00:00'
months = '2025/10'
draft = false
title = 'ジョン・カーマックが語る！可変変数の落とし穴 不変性がもたらすコードの明瞭さとは？'
tags = ["プログラミング", "不変性", "変数", "関数型プログラミング", "ソフトウェア設計"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> ジョン・カーマックが語る！可変変数の落とし穴 不変性がもたらすコードの明瞭さとは？

引用元：[https://news.ycombinator.com/item?id=45767725](https://news.ycombinator.com/item?id=45767725)




{{<matomeQuote body="Clojureを2年間やってみて、可変で副作用を起こすのに慣れたプログラマーに不変性がもたらす明瞭さを説明するのは本当に難しいんだ。見て理解するしかないことの一つなのかもね。" userName="EastLondonCoder" createdAt="2025/10/31 09:30:29" color="">}}




{{<matomeQuote body="変数を書き換えると暗黙の順序依存性が生まれるんだ。後の処理が前の変更に依存するけど、言語はそれをモデル化しないから、順序を変えてもエラーにならない。<br>例えば`x=7` `x=x+3` `x=x/2`だと順序を変えてもエラーは出ないけど結果は間違える。`x=7` `x1=x+3` `x2=x1/2`だとエラーになる。<br>つまり、最初の例では3つの異なる`x`が同じ名前を共有してるってこと。単一代入はそれを明示的にしてるだけだよ。" userName="rendaw" createdAt="2025/10/31 11:40:49" color="#785bff">}}




{{<matomeQuote body="僕はそんなに良いプログラマーじゃないのかな。変えられない変数がどう役に立つのか、なんでそれを使うのか、よく分からないんだ。<br>実際動くコードってどうやって書くの？" userName="ErroneousBosh" createdAt="2025/10/31 13:23:06" color="">}}




{{<matomeQuote body="immutableとconstantの違いって何？constantの方がずっと前から使われてるよね？なんでみんなimmutableって呼ぶの？" userName="skeezyjefferson" createdAt="2025/10/31 12:06:09" color="">}}




{{<matomeQuote body="僕が好きな考え方だと、不変データがデフォルトで、関数が純粋だと、純粋関数をブラックボックスとして扱えるんだ。関数の内部を知る必要もないし、関数も外部の状態を知る必要がない。データの形が契約になるんだね。<br>つまり、どこでも局所的なコンテキストって考えるのが、可変な世界の人にとって一番分かりやすいかも。プログラム全体の状態を知る必要はなくて、データと関数だけ知ってればいい。この関数をテストしたりデバッグしたりするのに、プログラム全体を動かす必要もないんだ。送られてきたデータだけあればいいし、そのデータはプログラムの他の部分に決して変更されないからね。" userName="emil0r" createdAt="2025/10/31 11:34:58" color="#38d3d3">}}




{{<matomeQuote body="モジュール性やカプセル化は、コンポーネントを分かりやすくしたり、メンテナンスしやすくするのに素晴らしいツールだよね。<br>でも、結局は全体を構築しようとしてるんだから、プログラム全体を理解する必要があるんじゃないの？<br>それに、プログラム全体の状態が変わらないなら、何も起こってないことになるよね。どこかに可変な状態はあるはずだから、それはどこに移動したの？" userName="DrScientist" createdAt="2025/10/31 13:55:49" color="#38d3d3">}}




{{<matomeQuote body="不変性の利点は過大評価されがちだし、みんな、物事が連続体で存在してるってことをよく見落とすんだ。可変と不変を単純に対立させるだけじゃ、たくさんの複雑さを避けてることになるよ。<br>例えば、Haskellコミュニティが型システムに合うように、実質的に可変性を再発明しようとあらゆる努力をしてるのを見るのは、僕には endlessly amusing（とてつもなく面白い）んだ。彼ら自身、それが自分たちのしてることだって気付いてないことさえある。<br>結局、目標はいつも同じだよ。副作用の影響をより良く制御して保証し、最小限の手間で済ませること。Carmackのアプローチは理にかなってるね。反復計算のように、意味のある場所では柔軟性を保ちつつ、デバッグしやすく、推論しやすい方法を求めてるんだ。" userName="StopDisinfo910" createdAt="2025/10/31 14:38:45" color="#45d325">}}




{{<matomeQuote body="Immutableとconstantは同じだよ。rendawはmutableって言葉を使ってないね。誰かが”mutable”って言葉を使う一つの理由は、それがアイデアを簡潔に表現する方法だからだよ。同じアイデアを表現する他の方法は、もっと長い単語（changeable、non-constant）になるね。" userName="Thorrez" createdAt="2025/10/31 12:14:19" color="">}}




{{<matomeQuote body="新しい値が必要なら、新しいものを作るだけだよ。<br>fooAに対して操作をしたいなら、fooAを書き換えるんじゃなくて、fooB = MyFunc(fooA)って呼び出して、fooBを使うんだ。<br>このことの良い点は、fooAへのポインタをあちこちで渡しても、他の何かが裏でそれを変えてしまう心配がないってことだね。<br>プライベート変数を保護する必要もないよ。だって内部の動作は書き換えられないからね。他のコードはそれをコピーできるけど、邪魔はできないんだ。" userName="jayd16" createdAt="2025/10/31 14:50:13" color="#ff5733">}}




{{<matomeQuote body="不変性の考え方はシンプルでさ、既存の値をいじるんじゃなくて、新しい値を作るんだ。例えばリストだと、既存のリストに値を追加するんじゃなくて、古いリストと新しい値を含んだ新しいリストを作るんだよ。これで、元のリストが勝手に変わる心配がなくなるから、多くのバグを防げるんだぜ！<br>[1]ってあるけど、最適化の話は保証と同じだってさ。" userName="jimbokun" createdAt="2025/10/31 15:44:10" color="#38d3d3">}}




{{<matomeQuote body="「Constant」って言葉はもっと広い意味合いがあるんだよ。「ループで何度も作ってるなら、Constantじゃないだろ？」って感じ。でも「Immutable」は「どんな変数でも、それがどんなに長く存在しようと、変更できない」って意味で、余計な文脈を抜きにしてるんだ。" userName="inanutshellus" createdAt="2025/10/31 12:22:50" color="#ff5c5c">}}




{{<matomeQuote body="「ループで何度も作り直してたら、Constantじゃないだろ？」って言ってたけど、そもそもConstantって変えられないじゃんか。" userName="skeezyjefferson" createdAt="2025/10/31 15:18:49" color="">}}




{{<matomeQuote body="Rustだって、同じ名前の変数でシャドウイングできるんだよ。確かに別物だけど、人間から見たら同じ名前だよね。Rustがこう決めたのは、x1、x2、x3みたいなコード書くのがクソ面倒だからだろうな。" userName="raincole" createdAt="2025/10/31 15:35:44" color="">}}




{{<matomeQuote body="「プログラムの元のリストが予期せず変わらない」ってのが、なんで役に立つのかわかんねぇな。古い配列は間違ってるんだから、誰も使っちゃダメだろ？リストを更新して新しいリストができたら、なんで古い間違ったリストを誰かに使わせたいんだよ？" userName="ErroneousBosh" createdAt="2025/10/31 19:15:44" color="#45d325">}}




{{<matomeQuote body="その人は、変数がループ内で定義されてるって言いたいのさ。だから、Constantだけど繰り返し再定義されてる、ってことだね。" userName="veilrap" createdAt="2025/10/31 15:31:23" color="">}}




{{<matomeQuote body="あの例は簡単すぎてピンとこないな。配列の合計を計算する関数を、組み込みのsum関数なしでどうやってコード化するんだ？もし一つ一つの足し算を自分で書かなきゃいけないなら、どうなるんだよ？興味ある（自分で調べるか、Claudeに聞くこともできるけどね）。" userName="alain94040" createdAt="2025/10/31 20:46:14" color="#ff5733">}}




{{<matomeQuote body="それは、まともなエンジニアが「Constant」って言葉で意味することと真逆だよ。" userName="ghurtado" createdAt="2025/10/31 15:52:33" color="">}}




{{<matomeQuote body="それは、いつ、どこで、なんで変更が起きるかを考えさせるし、後でその変更について考えるのに役立つんだよ。スレッドセーフティも大きな利点だね。" userName="mleo" createdAt="2025/10/31 13:34:57" color="#45d325">}}




{{<matomeQuote body="不変なアプローチは、可変みたいに場所、時間、抽象的な同一性を混同しないんだ。可変モデルだと、抽象的なオブジェクトがメモリ上の位置で表現されるから、オブジェクトの同一性がポインタの同一性になっちゃう。でも、同じオブジェクトの別バージョンを持ちたい時、これは問題だ。オブジェクトの同一性をポインタ以外（名前とかIDとか）で表せば、同じオブジェクトの複数バージョンをいろんな場所で同時に扱えるんだ。これで、同時に読み書きできるし、シリアライズ／デシリアライズも楽になるよ。特定の場所にオブジェクトを置く必要がないから、ディスクに保存したり、送ったりもできるんだ。" userName="jstimpfle" createdAt="2025/10/31 12:12:10" color="#45d325">}}




{{<matomeQuote body="x1とかx2みたいな変数に、もっと分かりやすい名前つけたら、コードがもっと読みやすくなるのにさー。" userName="ape4" createdAt="2025/10/31 13:46:19" color="">}}




{{<matomeQuote body="「fooAをミューテートせずにfooB = MyFunc(fooA)を使う」ってところが全然ピンとこないんだけど。なんでそんなことするの？fooAとfooBが両方必要になる状況なんて想像できないし、正しいfooBと間違ったfooAが残ってても役に立たないじゃん？" userName="ErroneousBosh" createdAt="2025/10/31 19:10:56" color="#ff5733">}}




{{<matomeQuote body="「自分たちが不変性を使っているって気づいてない」って言うけどさ、そうじゃないんだよ。体系的で予測しやすい方法で状態を分離してるんだから。" userName="eyelidlessness" createdAt="2025/10/31 15:14:12" color="">}}




{{<matomeQuote body="Clojureなら不変性ってすごく簡単にできるんだけど、Pythonでやろうとするとかなりの規律が必要だよね。チームじゃなくて一人でPythonを書いてるJohn Carmackでさえ、そこは苦労してるみたいだしさ。" userName="ndr" createdAt="2025/10/31 13:05:37" color="#ff5733">}}




{{<matomeQuote body="JavaScriptみたいな言語だと、『不変』と『定数』って理論上は同じに見えるかもしれないけど、実際は全然違うよ。`const`は変数への再代入ができないって意味で、ローカルな話。一方、『不変』は値そのものがその場で変更できないって意味で、グローバルな性質なんだ。不変な配列はどこに渡してもずっと不変でしょ？JSには昔から`freeze`っていう実行時の不変性があったし、TypeScriptみたいなツールだとコンパイル時に不変性を保証してくれるreadonly型もあるね。" userName="a4isms" createdAt="2025/10/31 12:30:24" color="#38d3d3">}}




{{<matomeQuote body="John Carmackがループ内の反復計算を唯一の例外にしてるよね。<br>「真の反復計算ループ以外では、変数の再代入や更新は避けるべきだ」って。<br>これを完全に不変な設定でやろうとしたら、再帰関数を使うことになるだろうね。ML系言語みたいな不変性重視の言語だと、このパターンはよくサポートされてて最適化もされてるけど、標準的な命令型言語だとあまり実用的じゃないんだ。<br>例えば、こんな`sum`関数みたいにね。<br> `def sum(l):<br>    if not l: return 0<br>    return l[0] + sum(l[1:])`<br>もちろん、これは順序保証にもほとんど左右されないし、不変性は、例えばオブジェクトが同時に変更されないことを保証するみたいなケースでも役立つんだ。" userName="supergarfield" createdAt="2025/10/31 20:55:03" color="#785bff">}}




{{<matomeQuote body="なるほど、それじゃあ例えば「このパラメータの塊」みたいなのは不変にするけど、「この16KBくらいの浮動小数点数の塊」は常に変わる普通の変数ってこと？<br>それとも、その浮動小数点数のブロックは「この部分からは不変じゃない」って感じ？つまり、サンプルを処理するコードやバッファを埋めるコードは書き込めるけど、他の場所からはダメってことかな？" userName="ErroneousBosh" createdAt="2025/10/31 13:37:21" color="#ff5c5c">}}




{{<matomeQuote body="配列は特に顕著な例だよね。JavaScriptやTypeScriptでは、`const`で宣言した配列に同じスコープ内で要素を追加（append）できるし。あれ、いつもすごく変だと感じてるんだけど。" userName="everforward" createdAt="2025/10/31 14:16:45" color="">}}




{{<matomeQuote body="Lensesって、結局別の名前のミューテーションだよね。不変システムの上で状態を再構築してるだけだし、結局のところ、概念的には何も変わってないんだから、それが面白いんだよ。<br>結局、世界はステートフルだし、どんなに純粋な抽象化だって、どこかで現実と向き合わなきゃいけないんだ。Haskellの作者たちだって、副作用を追跡するための方法としてモナド型システムを考えたわけで、副作用そのものを完全に排除したかったわけじゃないしね。" userName="StopDisinfo910" createdAt="2025/10/31 16:47:35" color="#45d325">}}




{{<matomeQuote body="PythonってJavaScriptとそんなに違うの？JavaScriptだとすごく簡単だよ。`var`や`let`じゃなくて`const`を使い始めればいいだけ。それで問題が起きたら、どう対処するか考えればいいし。どうしても解決できなかったら「ねえAI、`const`を使い続けながらこれをどうやったらいい？分かんないんだ」って聞けばいいじゃん。" userName="MetaWhirledPeas" createdAt="2025/10/31 18:08:40" color="">}}




{{<matomeQuote body="Schemeでの経験から、関数型プログラミング（FP）の利点をJavaやPython、JavaScript、TypeScriptしか使わない人たちに理解してもらうのが本当に難しかったよ。関数を使う代わりに変数を変更するやり方じゃ、どれだけコードがきれいになってテストしやすくなるか、みんな気づかないんだ。PythonだとFPスタイルで読めるコードを書くのは難しいし、適切なFPデータ構造も見つけにくいから再帰処理を工夫する必要がある。結局、Clojureみたいなのを仕事以外で学ぶ好奇心旺盛な人と、9時5時で働いてFPに触れたことない人との差だよね。" userName="zelphirkalt" createdAt="2025/10/31 12:49:08" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="不変性をデフォルトにして、変更可能な場合はキーワードで示すべきだね。IDEが変更されたことを視覚的に教えてくれるといいな。ほとんどの言語機能についてそう願ってるよ。例えば、リストに追加できるか選ぶ必要はなくて、追加しないなら追加できないようにしてほしい。データ構造の種類も、パフォーマンスに影響しないなら別に気にしない。CPUが10コアあるから、必要になったらループを最適化するさ。" userName="hyperhello" createdAt="2025/10/31 03:00:10" color="#ff5c5c">}}




{{<matomeQuote body="僕のIntelliJ（最新版）では、Javaでこんな小さな関数を書くと、`def`変数に下線が引かれて、「Reassigned local variable」ってヒントが出るんだ。`abc`には下線は引かれない。Javaを書くときは、できるだけ`final`キーワードを使って変数スコープを最小限にするようにしてるよ。その方が読みやすくて、保守しやすいコードになるからね。" userName="throwaway2037" createdAt="2025/10/31 08:45:16" color="#ff5c5c">}}




{{<matomeQuote body="余談だけど、インライン推論アノテーションも面白いかもしれないね。https://www.jetbrains.com/help/idea/annotating-source-code.h... を見てみて。作者が明示的に書いてなくても`@NotNull`が表示されることで、コードの理解に役立つし、考慮すべき分岐が減るよ。" userName="shagie" createdAt="2025/10/31 16:47:22" color="">}}




{{<matomeQuote body="まず、ループで`++def`を使うのは変だよ。次に、`abc`をループで使うなら、`for (int def = 7, abc = 3; ...)`みたいにループ内で定義すべきだね。あと、これはIntelliJのバグだよ。サンプルコードの`def`も`abc`も常に定義されてるんだから。" userName="xxs" createdAt="2025/10/31 13:38:00" color="">}}




{{<matomeQuote body="`++def`が変だって？僕はC++の出身で、`++i`を使うのが常に推奨されてきたから、ただの習慣だよ。`++i`を読むのがそんなにストレスになるかい？" userName="throwaway2037" createdAt="2025/11/06 23:44:58" color="">}}




{{<matomeQuote body="たぶんね... でも、Javaには一時変数の定義がないんだよね。" userName="xxs" createdAt="2025/10/31 15:11:53" color="">}}




{{<matomeQuote body="これ、RustRoverでも動くよ！すごく便利だね。" userName="e-topy" createdAt="2025/10/31 17:19:26" color="">}}




{{<matomeQuote body="Rustの型システムは、もっと強力なツールを可能にするんだよ。例えばこれね: https://github.com/willcrichton/flowistry" userName="sn9" createdAt="2025/10/31 18:48:48" color="#785bff">}}




{{<matomeQuote body="これがベストな選択とは思わないな。バグやパフォーマンス問題につながるかも。暗黙の変更じゃなくて、明示的なオプトインが欲しいね。IDEが警告して、本当にオプトインが必要か、それともコードを再構築すべきか考えさせてほしいね。<br>ただ、可能な限り最適化される設計を選ぶという考えには賛成だよ。Rich Hickeyのセットとリストの話を思い出すな。小さいハッシュセットが小さい配列より遅いのは面白い。コンパイラがサイズやアクセスパターンを認識して最適化できたらすごいよね。" userName="NathanaelRea" createdAt="2025/10/31 03:53:10" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、SQLオプティマイザがいい例だよ。理論上は最適な方法を「知っている」はずだけど、これらの決定は実行時のクエリ分析に基づいて行われるから、ロジックのちょっとした変更がパフォーマンスに大きな影響を与えることがあるんだ。" userName="bbminner" createdAt="2025/10/31 04:00:30" color="#ff5733">}}




{{<matomeQuote body="仕事でSwiftを使ってるけど、コンパイラが教えてくれるよ。可変変数が一度も変更されない場合、不変にすることを提案してくれるんだ。逆もまた然りだね。" userName="nielsbot" createdAt="2025/10/31 03:47:35" color="#ff5c5c">}}




{{<matomeQuote body="うん、すごく良いよ。定数じゃない変数は全部疑わしい目で見る習慣がついちゃうんだ。" userName="bartvk" createdAt="2025/10/31 08:43:47" color="">}}




{{<matomeQuote body="TypeScriptもそうだよ。少なくともBiomeでLintするとね。" userName="qmmmur" createdAt="2025/10/31 07:40:53" color="">}}




{{<matomeQuote body="TypeScriptへのちょっとした不満は、`const`って2文字増えることかな。冗談はさておき、TypeScriptの`const`変数について推論するのが少し難しいと感じるよ。`const`変数は再代入できないけど、参照する値はまだ変更可能だからね。TypeScriptにはもっと不変な値型が欲しいな（いくつかあるのは知ってるけど）。Swiftも理論上は同じ問題を抱えてるけど、Swiftでは不変な値型（`struct`）を使いやすいから、少し軽減されてるね。" userName="nielsbot" createdAt="2025/10/31 17:05:56" color="#ff5733">}}




{{<matomeQuote body="ESLintにもこれがあるよ: https://eslint.org/docs/latest/rules/prefer-const" userName="maleldil" createdAt="2025/10/31 15:38:35" color="#45d325">}}




{{<matomeQuote body="君のIDEはこれに対応してるかもね。JetBrainsの機能には、変数への全読み書きを見つけ出すのがあるよ。" userName="estimator7292" createdAt="2025/10/31 03:40:38" color="#785bff">}}




{{<matomeQuote body="あと、変更された変数を違うスタイルで表示する機能も持ってるんだぜ。" userName="Denvercoder9" createdAt="2025/10/31 07:48:16" color="#ff33a1">}}




{{<matomeQuote body="うん、ハイライトスキームによるけどね。残念ながら、全てのスキームがデフォルトでこれを見せるわけじゃないんだ。最初は些細なことだと思ったけど、非自明なコードを扱うときにとっても役立つことが分かったよ。大規模なメソッドでも、宣言上は不変じゃなくても実際に不変に振る舞う変数を直接見分けられるからね。" userName="greenicon" createdAt="2025/10/31 08:40:22" color="#785bff">}}




{{<matomeQuote body="俺には役立つアイデアはないけど、もしこの種のリンターを作るなら“mutalator”って呼ぶことを提案するよ。" userName="bee_rider" createdAt="2025/10/31 03:22:08" color="">}}




{{<matomeQuote body="Pylintが助けになるかも？少なくとも変数の再定義チェックはあるぜ: https://pylint.pycqa.org/en/latest/user_guide/messages/refac..." userName="considerdevs" createdAt="2025/10/31 10:18:27" color="#785bff">}}




{{<matomeQuote body="でも、型に対してだけだよ。" userName="spidersouris" createdAt="2025/11/01 00:32:48" color="">}}




{{<matomeQuote body="もしErlangで書くなら、Emacsがデフォルトでやってくれるぜ ;)" userName="worthless-trash" createdAt="2025/10/31 07:51:06" color="#ff5733">}}




{{<matomeQuote body="Clang-tidyのmisc-const-correctnessがこれについて警告してくれる。Claude codeと連携させれば、変更されない全ての可変変数をconstにしてくれるぞ。" userName="HDThoreaun" createdAt="2025/10/31 04:13:05" color="#45d325">}}




{{<matomeQuote body="ああ、変数がデフォルトで不変で、すべてが式だったらいいのにね。<br>まあいいや、しつこいPythonの台頭に積極的に脅かされているClojureプログラマーとしての日常業務を続けるとするか。" userName="slifin" createdAt="2025/10/31 08:12:18" color="">}}




{{<matomeQuote body="日中の仕事がPythonプログラマーで、Clojureに興味津々だけど残念ながら個人プロジェクトでしか使えず、今はしつこいTypeScriptの台頭に脅かされてる俺には、この気持ちがよく分かるぜ。" userName="sunrunner" createdAt="2025/10/31 09:45:49" color="">}}




{{<matomeQuote body="TypeScriptやES6にはconstとletがあるって話だね。" userName="hn_throw2025" createdAt="2025/10/31 13:21:40" color="">}}




{{<matomeQuote body="letもconstも真の意味では不変じゃないんだ。constは再代入を止めるけど、オブジェクトや配列みたいなミュータブルな値は変更できちゃうからね。" userName="dragonwriter" createdAt="2025/10/31 13:54:14" color="#785bff">}}




{{<matomeQuote body="Object.seal(foo)で変更を防げるんじゃないかな？まだ使ったことないけど。" userName="Kailhus" createdAt="2025/10/31 23:15:28" color="">}}




{{<matomeQuote body="Object.freezeがまさに探し求めてるものだよ。でもconstとObject.freezeを組み合わせるのは覚えるのが面倒だし、Carmackが求めるデフォルトの不変性とは違うんだ。Rustがデフォルトで不変性を採用したのはすごく良い選択だね。" userName="mwcz" createdAt="2025/11/01 02:50:54" color="#38d3d3">}}




{{<matomeQuote body="constやletについては別にいいんだけど、言語のエルゴノミクスとかエコシステム、それより技術的な政治的決定がマジでイラつくんだよな。" userName="sunrunner" createdAt="2025/10/31 13:28:17" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="constはオブジェクトや配列を不変にはしないんだよ。" userName="AstroBen" createdAt="2025/10/31 14:42:41" color="#ff33a1">}}




{{<matomeQuote body="構造は不変にするけど、期待してたのとはちょっと違うんだよね。非オブジェクトには問題ないんだけどさ。" userName="MetaWhirledPeas" createdAt="2025/10/31 21:24:20" color="">}}




{{<matomeQuote body="Javaの”final”は”const”よりも紛らわしくなくて、もっと良い選択だったんじゃないかなって思うよ。" userName="catlifeonmars" createdAt="2025/10/31 14:58:08" color="#785bff">}}




{{<matomeQuote body="メタプログラミングを避けてシンプルなコードを書くなら、PythonとTypeScriptってほとんど同じ言語に感じるよね。JSやTSにリスト内包表記がないのはちょっと寂しいけど、それくらいかな。" userName="Garlef" createdAt="2025/10/31 19:51:29" color="">}}




{{<matomeQuote body="ザツなコードを書く障壁をなくすことは、言語の機能の一つだよね。だからJavaScriptやPythonみたいな言語って、感覚的に書けるから魅力的なんだよ。" userName="dude250711" createdAt="2025/10/31 10:20:56" color="">}}




{{<matomeQuote body="Rustは、純粋な関数型じゃなくても全てが式である必要はないって教えてくれたんだ。Rustを使い始めて以来、他の言語もそうであってほしいと願ってるよ。ミューテーションの範囲を制限するのに最高の方法だね。" userName="ziml77" createdAt="2025/10/31 14:39:39" color="#38d3d3">}}




{{<matomeQuote body="ClojureはPythonより常に速いよ。だから、少なくともそれだけは言えるね。" userName="sgt" createdAt="2025/10/31 11:45:27" color="">}}




{{<matomeQuote body="君はClojureプログラマーじゃなくて、Clojureで問題を解決する人だよね。職場の言語ベースの争いは残念だけど、コーディングエージェントのおかげで生産性が上がってる今、そんな人工的な境界線で疎外感を感じる必要はないよ。これを読むのをオススメするよ:<br>https://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-pr..." userName="nvader" createdAt="2025/10/31 15:06:31" color="#785bff">}}




{{<matomeQuote body="その記事を覚えてるし、同意するよ。でも、10年の経験がある言語のエコシステムでは、他の「代替品」より速く、効率的で、慣用的になれるし、何がダメかもわかる。これは、違う環境に移る時に失われるものを認めるってことなんだ。言語は構文だけじゃない、機能、イディオム、ライブラリ、ツール…と続くよ。<br>コーディングエージェントで解決できるけど、長年の経験がショートカットできるかはわからない。新しいツールを学ぶコストは最初にかかるし、自分の興味で学ぶのと、トップダウンで強制されて学ぶのは違うんだ。" userName="sunrunner" createdAt="2025/10/31 21:11:59" color="#ff5733">}}




{{<matomeQuote body="この記事が出た時に読んだけど、実践する習慣がなくなってたよ。思い出させてくれてありがとう！またこれらのアイデアを実践できるように頑張るね。" userName="jimbokun" createdAt="2025/10/31 16:14:04" color="">}}




{{<matomeQuote body="数年前、スレッドセーフティのために厳格な不変性を適用したプロジェクトをやったんだ。不変オブジェクトは複数のスレッドから安全に読み取れるからね。何が変わるか変わらないか追跡しやすくなって、コードが読みやすくなったよ。このコンセプトの大ファンだね。" userName="gwbas1c" createdAt="2025/10/31 03:02:15" color="#785bff">}}




{{<matomeQuote body="当時、Rustは使えなかったんだ。驚かないと思うけど、僕もRustの大ファンだよ。" userName="gwbas1c" createdAt="2025/10/31 11:13:02" color="">}}




{{<matomeQuote body="深いミューテーションは適切に使うけど、変数のシャドーイングはよくやるよ。`result`を後処理するなら`result = result.process()`って書く方が好きだな。`preresult`よりいいし、開発中に仮説をテストする時とかに便利なんだ。中間結果にいい名前があればつけるけど、`result_without_processing`とかはつけない。コード読めばわかるさ。" userName="nixpulvis" createdAt="2025/10/31 13:49:24" color="#785bff">}}




{{<matomeQuote body="君は抽象的に話してるから、すごく一般的な言葉を使ってるんだと思うよ。でも、ほとんどの状況で、計算の各ステップにはもっと分かりやすい具体的な名前が使えるはずだよ。" userName="furyofantares" createdAt="2025/10/31 13:56:39" color="">}}




{{<matomeQuote body="“自明”な非一般的な名前が簡単に見つかるって意見には反対だな。“命名”はコンピュータサイエンスで一番難しいことの一つだからさ。" userName="eugenekolo" createdAt="2025/10/31 16:39:43" color="">}}




{{<matomeQuote body="俺は`JSON ＜ Generator`クラスの`generate`関数で`result`って名前を使ってるよ。こういうのは普通だろ。" userName="nixpulvis" createdAt="2025/10/31 14:10:06" color="">}}




{{<matomeQuote body="もし一般的な名前を使うと決めてるなら、`processed_result`みたいな名前で何が悪いんだ？" userName="philipov" createdAt="2025/10/31 14:22:51" color="">}}




{{<matomeQuote body="彼が説明してるフローだと、`processed_processed_processed_result`って名前になっちゃうだろ。" userName="snarfy" createdAt="2025/10/31 14:26:33" color="">}}




{{<matomeQuote body="`AbstractFactoryResultFactoryProcessedResultProcessedResultProcessorBeanFactory`" userName="strbean" createdAt="2025/10/31 17:29:43" color="">}}




{{<matomeQuote body="…`BeanFactoryContextConfig`って感じ。まずコンテキストを設定して、それを使って`bean factory`で処理を開始するわけさ。" userName="codr7" createdAt="2025/11/01 00:03:40" color="">}}




{{<matomeQuote body="その名前、ちょっと冗長じゃない？`result`って時点で`processed`って意味してるんだからさ。" userName="catlifeonmars" createdAt="2025/10/31 14:44:27" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
