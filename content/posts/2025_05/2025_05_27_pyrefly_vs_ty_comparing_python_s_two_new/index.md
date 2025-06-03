+++
date = '2025-05-27T00:00:00'
months = '2025/05'
draft = false
title = 'PythonのRust製新型型チェッカー Pyrefly vs Ty 比較'
tags = ["Python", "Rust", "型チェッカー", "プログラミング", "開発ツール"]
featureimage = 'thumbnails/blue.jpg'
+++

> PythonのRust製新型型チェッカー Pyrefly vs Ty 比較

引用元：[https://news.ycombinator.com/item?id=44107655](https://news.ycombinator.com/item?id=44107655)




{{<matomeQuote body="tyの開発者だよ。tyが注目され始めて嬉しいんだけど、tyもpyreflyもまだ開発途中だってことを強調しときたいんだよね！<br>（元記事にも書いてあるけど、ここでも念押しね。）まだ実装されてない機能に関する例がどんどん出てきてるよ。<br>だから、僕らのやり方がおかしいなって思うことがあっても、それは単にまだ手が回ってないだけかもしれないってことを分かってほしいな。Pythonって言語は広いからさ！" userName="dcreager" createdAt="2025/05/27 17:28:13" color="#45d325">}}




{{<matomeQuote body="あのmarkdownスタイルのテスト、マジ最高！テストがドキュメント代わりにもなるなんて、めっちゃ良いアイデアだと思うな。<br>どうやってこの解決策に辿り着いたのか教えてくれる？Rustのdocsコード例にヒントを得たの？" userName="flakes" createdAt="2025/05/27 18:58:17" color="">}}




{{<matomeQuote body="その発想、Pythonの標準ライブラリの一部として正式になってるよ。<br>https://docs.python.org/3/library/doctest.html" userName="hathawsh" createdAt="2025/05/27 21:17:57" color="#785bff">}}




{{<matomeQuote body="Python v2.1の頃からあるよ。<br>https://docs.python.org/release/2.1/lib/module-doctest.html" userName="lmz" createdAt="2025/05/28 02:21:35" color="">}}




{{<matomeQuote body="僕が見つけられたdoctestの最初の告知（1999年）がこれ。<br>Python 1.5の頃だと思う。<br>https://groups.google.com/g/comp.lang.python/c/DfzH5Nrt05E/m..." userName="sakesun" createdAt="2025/05/28 12:00:29" color="">}}




{{<matomeQuote body="Elixirにもこれがあるよ。<br>https://hexdocs.pm/elixir/main/docs-tests-and-with.html" userName="indiosmo" createdAt="2025/05/27 21:33:51" color="">}}




{{<matomeQuote body="僕はこれ、自分の本で出力を見せるためだけじゃなく、本の中のコードがちゃんと動くか”テスト”するためにも使ってるんだ。" userName="__mharrison__" createdAt="2025/05/28 03:32:34" color="#ff5733">}}




{{<matomeQuote body="doctest、REPLと相性良くて大好きなんだ。<br>でも残念ながら、僕が見た限りでは全然普及してないんだよね。" userName="_whiteCaps_" createdAt="2025/05/28 05:46:25" color="">}}




{{<matomeQuote body="明らかになった型を@TODOとして出すってやつ、ウケたけど、考えてみたら結構ナイスな工夫だよね！" userName="zem" createdAt="2025/05/27 17:59:25" color="">}}




{{<matomeQuote body="これマジでmdtestsで助かるんだよね。未実装なものが今は間違ってるけど、それがちゃんと正しい理由で間違ってるってアサートできるから！" userName="dcreager" createdAt="2025/05/27 20:18:00" color="#ff5733">}}




{{<matomeQuote body="全然関係ない質問だけど、Rust用のスクリプト言語って話知ってる？Rust構文に合って、Rustと連携しつつ、速く動くやつ。誰か開発してる人知らない？構文は置いといて、Pythonがその役割担えると思う？ [1] https://news.ycombinator.com/item?id=44050222" userName="echelon" createdAt="2025/05/27 18:24:00" color="">}}




{{<matomeQuote body="スクリプト言語はコンパイルされる必要はないんじゃないかな。理由はここでは言わないけど。<br>だからコンパイルって条件を外すなら、最近見た中で一番クールなのはkyrenさんのPiccoloだよ。<br>https://kyju.org/blog/piccolo-a-stackless-lua-interpreter/" userName="dcreager" createdAt="2025/05/27 18:57:34" color="">}}




{{<matomeQuote body="＞ 構文は置いといて、Pythonがそういう隙間を埋めることってできると思う？<br>型チェッカーのプラグインにフル機能のプログラミング言語を使うなんて絶対嫌だな、特に読み書き両方のコンテキストで動く場合は二重に嫌だね。<br>Skylarkのサンドボックス化された考え方は、そういう解決策に俺が求めるものと合ってる。<br>wasm関連のライブラリも、WASI境界が許可される変更を既に制限してるから役立つんじゃないかと思う。" userName="mdaniel" createdAt="2025/05/27 18:29:12" color="#38d3d3">}}




{{<matomeQuote body="Gluonっていうのがあるよ。Rustの構文じゃないけど、Hindley-Milnerベースの型システムを持ってて、Rustプログラムに結構スムーズに組み込めるんだ。<br>https://github.com/gluon-lang/gluon" userName="tadfisher" createdAt="2025/05/27 20:28:13" color="">}}




{{<matomeQuote body="スクリプト言語では、ユーザーに型を公開したくないことが多いから、大体は型を動的にしたいんだよね。それを考えると、rhaiとruneは結構いい感じだよ。<br>Pythonに関しては、pyoxidizerってのもあったけど、あれはもうダメになったみたい。" userName="julienfr112" createdAt="2025/05/27 18:41:49" color="#ff33a1">}}




{{<matomeQuote body="そうとは限らないよ！これは強い型付け vs 弱い型付け、静的型付け vs 動的型付けの話。<br>多分君が欲しいのは、強いけど動的な型付けだね。例えば、関数は明示的に文字列だけを受け入れて、floatを暗黙的とか魔法のように文字列に変換したりしない。<br>変数にはいつでも何でも代入できる自由はあるけど、間違った使い方をすると型エラーになる。<br>JavaScriptは弱い動的型付け。<br>Pythonは強い動的型付け（関数定義に型アノテーションがないから、ASTや呼び出しツリーの末端で間違った型の使い方をするまで気づかないこともよくあるけど）。<br>Rubyは強い動的型付けだけど、Railsはmethod_missingとかモンキーパッチで暗黙的な型強制がたくさんあって弱くしてる。<br>CとC++は弱い静的型付け。非構造化メモリやポインタ、キャスト、暗黙的な型強制によく直面する。<br>JavaとRustは強い静的型付け。" userName="echelon" createdAt="2025/05/27 21:45:38" color="#785bff">}}




{{<matomeQuote body="もし言語に型があるなら、それはユーザーに公開されてるんだよ、たとえそれが実行時エラーとして明らかになる場合でもね。多分君が言ってるのは型推論のことでしょ。それは静的型付け言語でも使えるよ。" userName="tadfisher" createdAt="2025/05/27 20:24:48" color="">}}




{{<matomeQuote body="PyreflyとTy両方に興味津々だよ。TypeScript経験者だから、型推論とか型ナローイングとかのいろんな方向性が気になる。Python開発者としては、挙動が違う型チェッカーが4つ以上もある現状にウンザリ…いかにもPythonだよね。<br>でもこれらの新プロジェクトは追ってるよ。<br>結局、良い型チェッカーは開発速度と信頼性を上げてくれるはず。今のPython界隈はまだそうじゃない気がするけど。プロジェクト頑張って！" userName="davedx" createdAt="2025/05/27 19:33:16" color="#ff5c5c">}}




{{<matomeQuote body="Pythonはあんまり得意じゃないんだけど、部外者からの意見ね。この手のツールに興味ある人は、Redditのこの記事を読むのがおすすめだよ。<br>https://www.reddit.com/r/Python/comments/10zdidm/why_type_hi...<br>この記事は軽く読んだ方がいいけど、最高の型付けツールを使っても、良い習慣がないと困るんだってことが分かると思うんだ。例えば、Djangoはめっちゃ大きいコードベースだけど、コードがPythonの特定の機能とその使い方で一貫してるから、厳しい型チェックでも問題なくパスしてる。 Metaもコードベースが大きいから（そうでなきゃ型チェッカー作らないよね？）、プログラマーに好き勝手書かせちゃダメだって気づいたんだろうね。だからMetaの型チェッカーはより厳しいんだと思う。<br>僕の知る限り、Pythonは機能がたくさんあって、実行時のチェックもかなり緩い。だから多分（C++と違わず）、コードを管理しやすくするためには、いつも限られた一部の機能だけ使うべきなんだろうね。残念ながら、その「限られた機能」が何かは、誰に聞くかとか、何を目指すかで違うんだろうけど。<br>（面白いことに、あのRedditの記事読んでたら、Rustの人たちがLinuxカーネル開発者になかなか受け入れてもらえない話思い出したんだ。Cはもっとシンプルで気にしなくていい型システムだけど、Rustが厳しすぎるのがCの人たちには気に食わないんだよね）" userName="suspended_state" createdAt="2025/05/27 18:26:01" color="#ff5c5c">}}




{{<matomeQuote body="あのReddit記事のトップコメントが、くだらない主張を速攻で論破してるよ。<br>”もしそんな超汎用的な関数があって、型ヒントが強制されてるなら、Anyを使えばいいし、気にする必要はない”<br>あれはアホな例だけど、たとえライブラリ内の`slow_add`関数って文脈でもさ、作者が最初、非数値が渡されるなんて思ってもなかったとして、次のバージョンでハードコードされた`time.sleep(0.1)`を`time.sleep(a / b)`に変えようとしたらどうなる？ おっと、文字列とかタプルを渡してたユーザー向けにはクラッシュしちゃう！ もし、その関数が数値以外では動くことを意図してないって宣言する方法（型）があればよかったのにね、そうすれば意図しない使い方でたまたま動いちゃってたユーザーのために後方互換性を提供する必要なんてなかったんだから。<br>僕の意見だけど：対話的にじゃなく、ある程度の稼働保証を持って実行されるPythonコードなら、型チェックは絶対やった方がいい。型チェックを追加しないなんて、明らかに間違いを犯してるよ。" userName="mjr00" createdAt="2025/05/27 20:37:06" color="#ff5c5c">}}




{{<matomeQuote body="あの記事の著者なんだけど、あの例はアホっぽく作ったんだって言いたいな。<br>目的は、異なる思想や期待が同じコードに適用された場合にどうなるかを見せることだったんだ。例えば、厳密な後方互換性とか、ダックタイピングとか、リンターや型ヒントのルールに厳密に従うこと（なんか適当な強制によって）とかね。今読み返すと、一晩以上かけて書けばよかったなーって思う、問題だらけで洗練されてないんだ。<br>”もしそんな超汎用的な関数があって、型ヒントが強制されてるなら、Anyを使えばいいし、気にする必要はない”<br>あの記事のアホらしさに合わせて言うなら、彼らは今はそれができないんだよ。だってセキュリティコンサルタントが「RUFFのANN401ルール（Any使うな）を有効にして、破るな」って言ったからさ。 https://docs.astral.sh/ruff/rules/any-type/" userName="notatallshaw" createdAt="2025/05/27 21:29:09" color="">}}




{{<matomeQuote body="もうこの時点で、Pythonプログラムの型チェックに費やす労力は、型システムがちゃんとしてる言語に移行して、Pythonが必要な部分や人はInteropで連携させる方がマシだってかなり確信してるわ。<br>もちろん常に可能とは限らないけど、Pythonで無理にやろうとしすぎて時間かけすぎることもあり得るからね。" userName="mhh__" createdAt="2025/05/27 19:12:14" color="">}}




{{<matomeQuote body="”Pythonは機能がたくさんあって、実行時のチェックもかなり緩い。だから多分（C++と違わず）、コードを管理しやすくするためには、いつも限られた一部の機能だけ使うべきなんだろうね。残念ながら、その「限られた機能」が何かは、誰に聞くかとか、何を目指すかで違うんだろうけど。”<br>個人的に自分のコードベースで使いたくないPythonのサブセットを挙げ始めるね：メタクラス、ディスクリプタ、__call__を使ってcallableなオブジェクト、object.__new__(cls)、名前マングリングルールが発動する名前、self.__dict__。僕の意見では、上記の機能は全部”魔法”が多すぎて、コードの理解を妨げるんだ。" userName="kccqzy" createdAt="2025/05/27 19:13:16" color="#ff5733">}}




{{<matomeQuote body="残念ながら、今はAIハイプサイクルの真っただ中だから、誰も彼もみんなPythonに移行してるんだけどね。" userName="davedx" createdAt="2025/05/27 19:45:09" color="">}}




{{<matomeQuote body="”Following the general stupidness of the post: they are now unable to do that because a security consultant said they have to enable and can not break RUFF rule ANN401: https://docs.astral.sh/ruff/rules/any-type/”<br>分かったよ、じゃあその極端に汎用的で25種類のユースケースをサポートする必要がある関数には、その25種類のユースケース全部をカバーするような、ありえないくらい複雑な型定義を書けばいいじゃん。これって型システムへの非難じゃなくて、悪いコードへの非難だよ。何百もの入力データ型をサポートする関数なんて書くなよ、そのほとんどは意図されてない使い方なんだから。ちなみに型システムは、こういうのを避けるのを助けてくれるんだよ。" userName="mjr00" createdAt="2025/05/27 21:42:13" color="#45d325">}}




{{<matomeQuote body="それぞれに使い時があるんだよ。<br>＊ メタクラス：PydanticかORMを書いてる時。<br>＊ ディスクリプタ：PydanticかORMを書いてる時。<br>＊ callableなオブジェクト：パラメータを一つ場所で初期化して、他の関数がそれを呼び出せるように渡すバリデーターみたいなのに使ったことがある。今は可能ならclosuresを使うだろうけど。<br>＊ object.__new__：PydanticかORMを書いてる時。<br>＊ 名前マングリング： _foo や __bar は適切な場所で使うのは全然OK。あれは便利。ただし、絶対に、絶対にデマングルしようとするな、棒投げるぞ。<br>＊ self.__dict__：PydanticかORMを書いてる時。でも、”コードの中身を調べる”ことのショートカットとしてこれを使うなら、それは有用なスキルだし、深い魔法ってわけじゃない。<br>基本的に、99.99％の人はこれらを使う必要はない。もし必要だと思うなら、たぶん違う。絶対に必要だって確信があるなら、もしかしたらね。でもさ、それが何なのか理解しておくことは良いことだし重要だよ。自分で書かなくても、依存ライブラリが期待通りに動かない理由を調べたい時に、それが何をしてるのか読んで知る必要があるからね。" userName="kstrauser" createdAt="2025/05/27 19:42:37" color="#ff33a1">}}




{{<matomeQuote body="”Don’t write functions that support hundreds of input data types”<br>でもさ、Pythonは元々ダックタイピングに基づいてるんだし、その性質上、無数の入力型をサポートするんだよ。<br>もう君はダックタイピングは間違いで、型に厳密に従うのが正しいって決めちゃってるけど、それは別にいいんだ。でも、それってPythonの長い歴史とか、実際のPythonのコアライブラリの多くとは全く合わない考え方だよ。" userName="notatallshaw" createdAt="2025/05/28 12:40:12" color="">}}




{{<matomeQuote body="でもさ、考えうる方法としては（Pythonじゃないかもしれないけど）、`slow_add`関数をめっちゃ汎用的にするけど、どんな`+`演算でも定義されてる構造に対してだけ動くように定義できたはずなんだ。<br>つまり、その型が Semigroup を実装してるって言えばいいだけ。<br>そうすれば、引数がリストだろうが、整数だろうが、文字列だろうがちゃんと動く。そして、 Semigroup じゃない引数だと型チェックを通らない。<br>Pythonだとできないのは、多分開発者が最初から型チェックに興味なかったからじゃないかな、あくまで推測だけど。" userName="the_af" createdAt="2025/05/28 02:26:28" color="">}}




{{<matomeQuote body="＞ ”Basically, you won’t need those things 99.99% of the time”ってのが俺の言いたいこと。そんなにいらないなら、言語からなくしちゃえばいいんじゃね？まぁ、C++みたいに色々な評判を求める言語は別だけどさ。Pythonの場合は妥協案として、そういう機能はCで書くPython拡張の中でだけ使えるようにするのはどう？その”magic nature”を示すためにさ。" userName="kccqzy" createdAt="2025/05/27 20:08:57" color="">}}




{{<matomeQuote body="AIブームがなんでPythonコードを増やすってことになるのかわかんないな。最新のAIモデルは全部クローズドソースで、どうせAPI経由でアクセスできるじゃん。APIってどの言語からでも簡単に使えるのに。あー、AIモデルの開発そのものなら、たしかにPythonが多いけど、それはニッチな話でしょ。" userName="hu3" createdAt="2025/05/27 19:55:59" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="やってみたよ。＜コードは省略＞うーん、これ、全然うまくいかないな。mypyは互換性のない型の値を自由に混ぜるのを許しちゃうんだ。どうしたら直せるかわかんない。Dとintを直接足そうとするとmypyは怒るのに、join_stuffの引数がSemigroupであることに加えて、全部互換性のある型であることを insist する方法が見つからないんだよ。mypyは join_stuff の中では Semigroup を具体的なクラスとしてチェックしてるみたいで、引数の実際の型はどうでもよくなっちゃうっぽい。でも、加算が定義されてない引数は受け付けないって言ってくれるのはマシだけどね。" userName="sevensor" createdAt="2025/05/28 19:19:01" color="#ff5c5c">}}




{{<matomeQuote body="長年Python書いてるけど、人が犯す一番ひどい間違いは、型ヒントをつけないことと型チェッカーを使わないことだって思うよ。" userName="flanked-evergl" createdAt="2025/05/27 22:52:30" color="#45d325">}}




{{<matomeQuote body="バカはまあいい。でも ＿Nonsense＿ はダメ。君の挙げた例はナンセンスで、不合理だったよ。最初の例を見た瞬間、「あ、これは add_ints にして int だけ取るべきだ」って思ったもん。「”the human body is dumb！ Here’s an example： if I stab myself, it bleeds！”」って俺が言うようなもんだと思ってみて。それってバカな例？ それとも不合理な例？" userName="ramraj07" createdAt="2025/05/28 12:32:44" color="">}}




{{<matomeQuote body="でも、ここまでやったの、めっちゃクールだよ！ この時点でもうPythonと戦い始めてる感じだね。Pythonはこういう風に設計されてないからさ。でも、それでもクールだ！" userName="the_af" createdAt="2025/05/28 20:24:17" color="#ff33a1">}}




{{<matomeQuote body="言語使ってもないのにどうやって意見持つのか教えてくれない？ 型の議論で、使ってない言語に文句言って不自然な例作る人いるの面白いね。＞”I think that the goal there is to understand that even with the best typing tools, you will have troubles, unless you start by establishing good practices.”<br>Likeーwhat makes you think that python developers doesn’t understand stuff about Python, when they are actively using the language as opposed to you？" userName="fastasucan" createdAt="2025/05/27 20:45:04" color="#ff5733">}}




{{<matomeQuote body="あと、カスタムで表現力豊かな Pydantic 型を作らないで、色んなとこでネストした dict を使うこと。ネストした dict はマジ最悪だよ。中に何が入ってるか全然わかんないし、クラスに変換する時間は絶対かける価値あるって。" userName="stavros" createdAt="2025/05/28 09:35:54" color="#ff5c5c">}}




{{<matomeQuote body="こういうもの 중심으로作られてる、とんでもない量のPythonコードをあんたは過小評価してると思うよ。たくさんの企業がLLMのAPIじゃなくて、自分たちでモデル改造したりファインチューニングして自社データセンターにデプロイするんだ。それって、さらにPythonコードが増えるってこと。LLM APIに頼るだけならどの言語でも書けるけど、それがAIブームの全部じゃないからさ。" userName="mzl" createdAt="2025/05/28 08:24:32" color="#38d3d3">}}




{{<matomeQuote body="モダンなPythonアプリ開発を始めて半年経ったけど、リンター、型システム、テスト、仮想環境、パッケージマネージャーとかさ…。Rustって難しいって言われてるけど、Pythonを”大規模”に使いこなして、それを維持し続けるより、よっぽど簡単だって気づいたよ。" userName="J_Shelby_J" createdAt="2025/05/27 21:33:03" color="">}}




{{<matomeQuote body="＞ でも、その性質上、ダックタイピングは無限の入力型をサポートしてるし、それがPythonの基盤なんだ。それは四角い釘を丸い穴に押し込むようなものだよ。正しいとか間違ってるとかの話じゃないんだ。<br>関数がどんな型でも動作してほしいのか、2つの値を加算（またはサポートされてるか分からない操作、つまりダックタイピング）しようとして、うまくいかなければ実行時エラーを投げるのか<br>—この場合は型付けしないか`Any`を使えばいい—<br>それとも、不正な引数でメソッドが呼び出されないように、実行前に強力な型安全性を保証したいのか<br>—この場合は受け付ける型を何らかの方法で表現する必要がある—<br>完全にダックタイピングされたメソッドを使いたいなら、`Any`を使うべきなんだよ。それが`Any`が存在する理由なんだ。`Any`を使えないなんていうこじつけのシナリオを作り出すのは、論点を外してるよ。ポインタを使っちゃダメって言われたらCが動かないって文句を言ってるようなもんだ。<br>歴史的にPythonコードはダックタイピングを念頭に書かれてたっていうのは君の言う通りだけど、今やPandasみたいな柔軟なライブラリですら型定義をサポートしてる。エコシステムは5〜6年前とは全然違うし、今では良い型付けサポートがない有名ライブラリなんて思いつかないな。" userName="mjr00" createdAt="2025/05/28 14:45:45" color="#38d3d3">}}




{{<matomeQuote body="この点が全然理解できないな。俺はDjangoのコードベースで働いたことあるけど、そこには膨大な型付けの問題があったよ…。100%じゃないにしても、型チェックから得られる価値は大きいんだ！<br>十分な関数にアノテーションをつければ、すごく良いリンターになるんだよ！" userName="rtpg" createdAt="2025/05/28 08:19:37" color="#38d3d3">}}




{{<matomeQuote body="俺の車のエアバッグだって、99.99%の時間は必要ないんだぜ。" userName="orbital223" createdAt="2025/05/27 20:36:39" color="">}}




{{<matomeQuote body="もし君が”ソフトウェアに長けてる”って自称してるのに、Pythonを動かすのに時間をかけすぎてるなら、もしかして君はソフトウェアが得意じゃないんじゃないかって可能性を考えてみてよ？<br>Pythonには欠陥もあるし、大きなものもあるけど、人気があるのには理由があるんだ。特にpydanticやfastapi、uv（とstreamlit）みたいなツールを使えば、以前は数週間や数ヶ月かかってたようなクレイジーなことも数時間でできるんだ。AIがこれらのフレームワークでコードを生成するのもどれだけ優秀か言わずもがなだよね。pydanticを使った型付けが特にお気に入りだよ。どんなメソッドもファイルやDBからデータをダンプ＆ロードできるし、極めて簡潔で検証済みのコードが手に入る。最新のIDEも部分的に型付けされたコードからでも価値を素早く引き出すのを簡単にしてくれるよ。完璧じゃないものにも心を開いて、試してみることをお勧めするね。" userName="ramraj07" createdAt="2025/05/28 12:38:54" color="#38d3d3">}}




{{<matomeQuote body="＞ あと、多くの企業はLLMのAPIを使うことにはあまり興味がなく、自分たちのモデルを修正・ファインチューニングして、自分たちのデータセンターにデプロイするでしょう<br>モデルトレーニングに何百万ドルもかかるって分かってる？「多くの企業」ってのは、どうもおかしいな。<br>訓練に必要な膨大なデータも数に入れてないし、高価な専門家もだ。<br>それに、古くなったモデルを定期的に再訓練する必要がある。<br>AI分野で最先端モデルを提供してるのが一握りのプレイヤーだけで、しかも彼らが皆50億ドル以上の価値があるのには理由があるんだよ。" userName="hu3" createdAt="2025/05/28 14:31:46" color="">}}




{{<matomeQuote body="みんなが、そしてその辺の犬まで、Pythonで自分たちのモデルを開発する準備が必要だって思ってるからだよ。<br>これは正直、特にスタートアップの世界では現実にあることだね。" userName="davedx" createdAt="2025/05/28 06:26:32" color="">}}




{{<matomeQuote body="AIが理由でサーバーコードをPythonに移行してる人がいたら、俺はびっくりするね。" userName="adamors" createdAt="2025/05/27 20:00:27" color="">}}




{{<matomeQuote body="そうするとコンパイルが必要になるでしょ。つまり、Pythonプログラムと一緒にテキストファイルを配布するだけじゃ済まなくなるんだよ。Pythonの各バージョン、各アーキテクチャ、各OSごとにビルドインフラが必要になるんだ。<br>それ楽しんで！" userName="guappa" createdAt="2025/05/28 08:06:06" color="">}}




{{<matomeQuote body="型アノテーションがどれだけ簡単か忘れてると思うよ。<br>古いPythonコードをいじるのにたまに2時間くらい使うことがあるんだけど、そのうち15分くらいを型アノテーションの追加に費やすんだ（たまに簡単なリファクタリングが必要だけど）。これはとてつもないROIがあるよ。コストはめちゃくちゃ低いのに、メリットはすぐに出るんだ。<br>こういう場合、コードをちゃんとした言語に移行して相互運用性を考えるなんて、俺の頭の中にはないね。それは正気の沙汰じゃない。だから、ベストエフォートで型安全性を得られる選択肢があるのは、絶対的に素晴らしいことなんだ。<br>君の言うことも確かに理解できるよ。精力的に開発中のプロジェクトにとっては有用な分析だね。でも、ほぼ問題なく動いてて、ほんの少しずつ変更があるだけの大きなPythonコードベースがあるなら、型アノテーションを追加するのは素晴らしい戦略だよ。" userName="bjackman" createdAt="2025/05/28 07:00:20" color="#38d3d3">}}




{{<matomeQuote body="あの記事が明確にしてるのは，PythonとTypeScriptの型システムの違いかな．TypeScriptは，ヤバいダックタイピング言語でみんながメチャクチャなコード書くのを，現状のまま型で固めちゃうのが目標なんだ．<br>でもMypy（とそれを元にしたPythonや他の型チェッカー）は，ヤバいダックタイピング言語なのに，そうじゃないフリしてアカデミックな厳格なルールを押し付ける感じ．これは実際のコードの書き方とかライブラリとの連携とかあんまり気にしてないんだよね．<br>最初から型ヒント書いてたら，Mypyが許す限られた範囲で書くから“大丈夫”になる．<br>でも成熟したプロジェクトに型ヒント足そうとすると，型システムが超限定的でコードベースの多くの部分が表現できないって気づいて，マジで発狂するよ．" userName="lexicality" createdAt="2025/05/28 13:32:37" color="#ff5733">}}




{{<matomeQuote body="＞tyは，その一方で，違うマントラに従ってるんだ：gradual guarantee．主要なアイデアは，型付けされたプログラムで，型アノテーションを消しても型エラーが起きないこと．つまり，動いてるコードに型エラーを直すために新しい型を追加する必要はないってことだ．<br>Tyが提供する gradual guaranteeは興味深いね．それに基づいて試してみようか考えてるよ．<br>既存の動的コードベースがあるPythonみたいな言語では，gradual typingの正しいやり方って感じだね．" userName="senkora" createdAt="2025/05/27 16:05:12" color="#ff5733">}}




{{<matomeQuote body="Gradual typingってのは，コードベースのどこかに暗黙的な“any”（不明な型）があってもエラーにも警告にもならないってこと．完全に型付けしたと思ってた重要なコードでさえね．タイプミスとか推論の限界で型チェッカーが突然お手上げになって，「このファイルは問題ないよ！」って自信満々に言ってくる場所でね．<br>彼らの考えはわかるんだけど，Mypyを試した時に究極的に問題だったのは，型から保護されてるって保証が全くなかったこと．「このファイルにはgradualityはない，完全に型付けされてる！」って断言できる方法が重要なんだ．でもgradual typingは移行のためだけじゃなくて，動的言語でできるヤバいこととか，静的型付けを重視しない人を遠ざけちゃう誤検出を恐れてる部分もある．Maybe “soft” typingって呼んだ方が分かりやすいかもね．<br>俺はgradual typingは今の段階ではアンチパターンだと思うよ．" userName="rendaw" createdAt="2025/05/27 16:42:02" color="#38d3d3">}}




{{<matomeQuote body="＞Gradual typingってのは，コードベースのどこかに暗黙的な“any”（不明な型）があってもエラーにも警告にもならないってこと．完全に型付けしたと思ってた重要なコードでさえね．タイプミスとか推論の限界で型チェッカーが突然お手上げになって，「このファイルは問題ないよ！」って自信満々に言ってくる場所でね．<br>これは良い指摘で，ty開発時に考慮してる点の一つだよ．<br>The benefit of the gradual guarantee is that it makes the onboarding process less fraught when you want to start (gradually) adding types to an untyped codebase．No one wants a wall of false positive errors when you first start invoking your type checker．<br>The downside is exactly what you point out．For this，we want to leverage that ty is part of a suite of tools that we’re developing．One goal in developing ty is to create the infrastructure that would let ruff support multi-file and type-aware linter rules．That’s a bit hand-wavy atm，since we’re still working out the details of how the two tools would work together．<br>So we do want to provide more opinionated feedback about your code — for instance，highlighting when implicit `Any`s show up in an otherwise fully type-annotated function．But we view that as being a linter rule，which will likely be handled by ruff．（文字数制限のため一部英語のまま・記号変換のみ）" userName="dcreager" createdAt="2025/05/27 17:35:06" color="#45d325">}}




{{<matomeQuote body="これ，すごく理にかなってるし，TypeScriptがやってることと全く同じだね．暗黙的な`any`はTypeScriptのエラーにはならない（これは定義からして当然だけど），でも当然，`any`があると潜在的に安全じゃないってことだ．これを対処するために，`noImplicitAny`やstrict mode（99％のプロジェクトで有効になってるだろうけど）をオンにできる．<br>ここでの違いは，strict modeがtscのオプションなのか，それともリンター（ruff）にこの種のルールがあるのか，ってことだけど，最終的な結果は同じだ．<br>とにかく，長々と説明したけど，tyかruffには型チェックのための「strict」モードみたいなものが絶対に必要だってことだね．:)" userName="genshii" createdAt="2025/05/27 18:13:47" color="#38d3d3">}}




{{<matomeQuote body="Gradual guaranteeをオフにして，より厳格な挙動にするフラグとかって，あり得るのかな？" userName="eternityforest" createdAt="2025/05/27 17:45:41" color="">}}




{{<matomeQuote body="異なるフォルダやファイルにスコアを与えて，「型付けの確実度」のレベルを示し，失敗の閾値を定義できるようにするってのはどうかな．" userName="pydry" createdAt="2025/05/27 19:39:44" color="#ff5733">}}




{{<matomeQuote body="＞Gradual typing means that an implicit “any” （unknown type） anywhere in your code base is not an error or even a warning．<br>それは gradual typingの実装によるね．Elixirは gradual set-theoretic typesを実装してて，動的な型は既存の型の範囲で，型違反に対して洗練されるんだ．ここに trivialな例があるよ：<br> def example（x） do<br>  {Integer．to_string（x）， Atom．to_string（x）}<br> end<br>この関数はuntypedだから，`x`は初期値として`dynamic（）`を得るけど，Integer．to_string（x）で`dynamic（integer（））`に洗練された後，Atom．to_string（x）で`atom（）`型と互換性がなくなるから，still typing violationを報告するんだ．<br>俺たちはstrong arrowsっていう概念も導入したんだ．これは動的な部分と静的な部分のコードベースが，実行時チェックを導入せずにsoundなままで連携できるようにするもの．詳細はここを見てね：https://elixir-lang．org／blog／2023／09／20／strong-arrows-gradua…" userName="josevalim" createdAt="2025/05/27 18:53:12" color="#45d325">}}




{{<matomeQuote body="この関数定義（あるいは parameter `x` だけかな）はどうして“untyped”なの？ parameter `x` の型がemptyで，関数の型はエラーがあるから関係ないって推測するのに十分な情報はあると思うんだけど．<br>関数の本体に最初か二番目の呼び出しだけが含まれていたら，`x` はそれぞれ Integer か Atom で，関数の型は含まれる式の型だって判断されるはずだよ．" userName="HelloNurse" createdAt="2025/05/28 14:23:23" color="#ff5733">}}




{{<matomeQuote body="オレたちにとって、型推論と型チェックは、全パラメーターが dynamic 型の場合と同じなんだ。だから、たとえ明示的に dynamic ってシグネチャを付けても、他のツールが見逃すような違反もオレたちは見つけるよ。 dynamic ってのは”何でもあり”って意味じゃなくていい、ってのがポイントね。" userName="josevalim" createdAt="2025/05/28 21:06:31" color="">}}




{{<matomeQuote body="ty は gradual set-theoretic types や”範囲付き” dynamic 型（Any や Unknown との組み合わせ）もできるよ。全ての使い方で dynamic 型を洗練化はしてないけど、似たことは考えたことある。<br>君の例だと、 Integer.to_string（x） と Atom.to_string（x） の両方を満たす x の型って none（） にならない？ none（） はエラーにしてるの？" userName="_carljm" createdAt="2025/05/28 14:00:17" color="#785bff">}}




{{<matomeQuote body="へぇ、それはすごいね！情報交換したいな〜。 set theoretic types の研究者も興味あるって。面白そうなら、Gmail で。<br>オレたちのシステムは双方向。 Integer.to_string に適用前にドメイン（ integer ）計算。 x が dynamic なら洗練。最初の呼び出しで x は dynamic ＆ integer に。２回目の洗練は none で失敗→捨てる。 Atom.to_string も失敗。だから none はチェックして捨てる。" userName="josevalim" createdAt="2025/05/28 21:16:51" color="#ff5733">}}




{{<matomeQuote body="他のコメントでも触れたけどさ、 gradual typing に従ってる TypeScript にはそれを無効化する（徐々にね）フラグがいっぱいあるんだよ。 ty がそれをやらない理由はないよね。" userName="mmoskal" createdAt="2025/05/27 16:52:53" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="gradual typing anti-pattern の話ね。 dynamic 言語は極端になるけど、ヤバい型システムも簡単。型システムの話は置いといて、 pydantic みたいなランタイムチェックで型を現実と一致させることもできるよ。 Sorbet （ Ruby の型チェッカー）はシグネチャにランタイムチェックを入れる。 ts では zod があるね。" userName="belmont_sup" createdAt="2025/05/27 17:07:03" color="">}}




{{<matomeQuote body="＞ チームは pydantic みたいなランタイムチェックで型を現実と一致させられる<br>それがバグの問題。常に避けられた方法はある。 pydantic はユーザーデータ検証など特定の場所は良いけど、静的型チェッカーの代わりには現実的じゃない。<br>全ての呼び出し側が関数呼び出し（引数、名前）をチェック、全ての呼び出される側が手動で引数型を検証する必要がある。" userName="MeetingsBrowser" createdAt="2025/05/27 17:31:31" color="#ff5c5c">}}




{{<matomeQuote body="pydantic は CPU 時間も食うし、ランタイムまで何もしないんだ。型チェックは IDE でリアルタイムにできるから、実際に実行して１５分も無駄にする前に修正できるよ。" userName="eternityforest" createdAt="2025/05/27 17:47:26" color="#38d3d3">}}




{{<matomeQuote body="はっきり言うと、オレは健全な型システムが好き。でも現実では、型なし Python 、 Ruby 、 Javascript から始めて生産的だったチームが、今も生産的でいるには静的型を徐々に追加する必要があるんだ。<br>＞ 全ての呼び出し側が関数をチェック<br>ここが良いのは、段階的な部分。コードの型付けが進むにつれて、ランタイムバリデーションの場所を移動、最終的にシステムのエッジに全部移動できる。" userName="belmont_sup" createdAt="2025/05/28 03:01:51" color="">}}




{{<matomeQuote body="pydantic にはこのユースケース向けの @validate_call ってのがあるよ。" userName="Spivak" createdAt="2025/05/27 17:47:57" color="">}}




{{<matomeQuote body="プロファイルしてみて、どれだけ遅くなるか見てみ？" userName="guappa" createdAt="2025/05/28 08:33:04" color="">}}




{{<matomeQuote body="本当に厳密な保証が欲しいコードでは、mypyで“no implicit any”みたいなエラーをオンにして、大事なファイルの制限を厳しくするんだ。境界ではまだ“garbage in/garbage out”問題はあるけど、少なくとも信頼性は上げられるよ。もしマジでやるなら、全部にオンにして、明示的なAnyはオフ、型なし依存関係全部にラッパー書くとかね。欲しいものは手に入るけど、結構大変かもしれないね。" userName="rtpg" createdAt="2025/05/28 08:22:42" color="#ff5c5c">}}




{{<matomeQuote body="うん、悩ましいよね。僕の経験だと、gradual typingって、やりたい人が自分のコードに適用して、やらない人は全くやらないか超適当なんだ。gradualとstrictを切り替えられる仕組みがあるといいなと思うよ。" userName="tclancy" createdAt="2025/05/27 19:24:08" color="">}}




{{<matomeQuote body="“man mypy”してから15秒もかからないよ。--disallow-any-exprってすぐ出る。君が全部書くより早かったんじゃない？" userName="guappa" createdAt="2025/05/28 08:31:15" color="">}}




{{<matomeQuote body="新規開発じゃない限り、gradual typingが唯一の方法だよ。僕はmypyでいくつかの既存Pythonコードベースに型ヒント入れたけど、現実的なのはモジュールごとに“opt-in”していくしかないんだ。もしPyreflyがそれをサポートしないなら、使い道はかなり限られると思うな。あるいは、LLMコード生成向けなのかな。LLMがPythonスクリプトを生成するのには、すごく速くて厳密な型チェッカーが役立つかもしれないね。" userName="yoyohello13" createdAt="2025/05/27 16:22:01" color="#785bff">}}




{{<matomeQuote body="これ、Typescriptが初期の頃、既存の大きなプロジェクトへのスムーズな導入パスに焦点を当ててたのを思い出すな。“noImplicitAny”みたいな厳しい要件も、全部のチェックを有効にする“strict”スイッチを最後にオンにする前に、一つずつオンにできたんだ。" userName="RandomBK" createdAt="2025/05/27 16:34:33" color="#ff5733">}}




{{<matomeQuote body="PythonじゃなくてRustを書くことでお金をもらってる身だけど（色々ある中の一つ）、自分としてはRustプログラマーって感じだし、僕にもgradual guaranteeが一番理にかなってると思うな。" userName="tialaramex" createdAt="2025/05/27 18:38:23" color="">}}




{{<matomeQuote body="これは僕にとっては大きなマイナスポイントだな。Pythonに型アノテーションを追加する目的の半分は、エラーになりやすい動的型付けを制御することなのに。技術的にはPythonで許されてても、何か馬鹿なことしたら知りたいんだよ。願わくば、ちゃんと動くコードを気にする人向けに、何らかのno-implicit-anyとか“strict”モードを追加してほしいね…" userName="IshKebab" createdAt="2025/05/27 19:03:15" color="">}}




{{<matomeQuote body="” my_list ＝ ［1, 2, 3］”<br>” pyrefly, mypy, and pyright all assume that my_list.append(“foo”) is a typing error, even though it is technically allowed (Python collections can have multiple types of objects!)”<br>” If this is the intended behavior, ty is the only checker that implicitly allows this without requiring additional explicit typing on my_list.”<br>編集：こんなキツいコメントにするつもりじゃなかったんだ、本当はtyを応援してるんだよ：）<br>元コメント：ここのtyの挙動には強く反対だな。プロダクションコードではほぼ常に単一型のリストを使うし、型チェッカーがそれを仮定するのはすごく重要だよ、特にリストに既に同型のリテラルが入ってる場合はね。Pythonがこれを許してるかどうかは全く関係ない。型チェッカーがlist［int | str］を暗黙的に許しちゃうのは、初心者レベルのコード向けに最適化してるみたいに見えるんだ。" userName="kuratkull" createdAt="2025/05/27 16:52:51" color="#45d325">}}




{{<matomeQuote body="” Ｉ am strongly against ty behaviour here.”<br>［ty開発者です］<br>tyはまだ完成してないことに注意してね！<br>この特定の例では、tyがリストリテラルの型を推論する際に気の利いたことを何もしてないからつまずくんだ。要素に何が入ってても、プレースホルダーとしてlist［Unknown］と推論してるだけなんだよ。Unknownはgradual type（Anyと全く同じ）で、だからappend呼び出しが成功するんだ、どんな型もUnknownに代入可能だからね。<br>リストの型をもっと正確に推論する計画はあるよ。思ってるより複雑になるだろうね、周囲のコンテキストでそのリストをどう使ってるか考慮するための“双方向”型付けが必要になるから。それに関するトラッキング課題がここにあるよ：https://github.com/astral-sh/ty/issues/168" userName="dcreager" createdAt="2025/05/27 17:24:54" color="#38d3d3">}}




{{<matomeQuote body="怒ってるみたいに聞こえなかったら良いんだけど、その挙動には本当に驚いたんだよ：）<br>4万行くらいの型なしコード（辞書があちこちで使われてたり）を完全に型付けされたコードに変換した経験から話してるんだ（最初はmypyに頼ってたけど、4分の1くらいでpyrightに移行したよ）。その状況だと、この挙動はたくさんのバグを隠しただろうね。<br>でも、まだ開発中だって聞いて安心したし、プロジェクトの成功を祈ってるよ。" userName="kuratkull" createdAt="2025/05/27 17:33:01" color="#38d3d3">}}




{{<matomeQuote body="記事の引用の”段階的な保証”って考え方と、これどう関係すんの？<br>tyの今の動きはそれに合ってるみたいだけど、変えちゃうと合わなくなるんじゃない？（いろんな型のリストに型付けできなくなるって話じゃなきゃ）" userName="Epa095" createdAt="2025/05/28 06:34:57" color="#785bff">}}




{{<matomeQuote body="不変ジェネリックをもっと正確に型付けする方法はあるよ。<br>例えば<br>x = [] # list[Unknown]<br>x.append(A()) # list[Unknown | A]<br>takes_list_of_a_or_b(x) # list[A | B]<br>どうするかはまだ決めてないけどね。このへんで段階的な保証を少し妥協するかも。これは絶対のルールじゃなくて、考慮してる要素の一つなんだ。" userName="_carljm" createdAt="2025/05/29 21:39:23" color="#45d325">}}




{{<matomeQuote body="list[int | str]みたいに型付けはできるけど、使うときに要素の型をチェックする必要が出てくるよ。<br>もしコードがそうしてないなら、Pythonの型付け的には”well typed”じゃないと思う。<br>だから色々な型のリストは持てるけど、型ガードが必要になったりするんだ。<br>もちろん、tuple[int, int, int, str]みたいのもあるし、いつかFixedListみたいなのも出るかもね。" userName="rtpg" createdAt="2025/05/28 08:14:28" color="#ff5c5c">}}




{{<matomeQuote body="Pyreflyがどうやってるか見た？ それともやり方違うの？" userName="ijustlovemath" createdAt="2025/05/28 02:07:49" color="">}}




{{<matomeQuote body="うちはまだ実装してないから、互換性があるかはまだ言えないな（笑）。<br>でも冗談抜きで、Pyreflyとかmypy、pyrightの開発者とはよく話してるよ。ツール間で大きな非互換性が出ないようにね。<br>食い違いがあるときは、それが事故じゃなくて意図的なもので、ちゃんと理由があって、仕様通りで、しっかり文書化されてるようにしたいんだ。" userName="dcreager" createdAt="2025/05/28 15:02:28" color="#785bff">}}




{{<matomeQuote body="これ、初心者向けじゃなくて、既存のレガシーコード向けに最適化してるんだと思う。<br>型なしのデカいコードベースに型チェッカーを入れるのは大変だけど、既存コードがほとんど通るなら楽になるからね。" userName="ameliaquining" createdAt="2025/05/27 17:06:14" color="#ff5733">}}




{{<matomeQuote body="それなら、その挙動を有効にするオプションを用意すべきだよ。<br>型エラーが出たときに設定で例外を追加する方が、黙ってパスして本番のバグで型が混ざってるのに気づくより安全だと思うな。" userName="luoc" createdAt="2025/05/27 17:16:20" color="">}}




{{<matomeQuote body="これは型チェッカーじゃなくて、型アシストのリンターでやるべきだと思うな。<br>俺的には、動的言語の型チェッカーは実行時エラーを防ぐのが主な役割。<br>複数の型があるリストだと、型チェッカーは要素を使う前に型チェックしろって強制すべきだ。<br>静的な型が必要なら、Pythonは間違った言語だよ。" userName="shoeb00m" createdAt="2025/05/28 00:10:56" color="">}}




{{<matomeQuote body="このツール、まだバージョン番号もないプレビュー版なんだから。<br>落ち着けってば。" userName="fastasucan" createdAt="2025/05/27 20:52:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
