+++
date = '2025-04-21T00:00:00'
months = '2025/04'
draft = false
title = 'Pythonの新機能t-stringsがキター！SQLもHTMLも楽々記述で開発効率爆上がり！？'
tags = ["Python", "t-strings", "SQL", "HTML", "プログラミング"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Pythonの新機能t-stringsがキター！SQLもHTMLも楽々記述で開発効率爆上がり！？

引用元：[https://news.ycombinator.com/item?id=43748512](https://news.ycombinator.com/item?id=43748512)

{{<matomeQuote body="これ結構イケてるじゃん。`db.execute(”QUERY WHERE name = ?”, (name,))`が`db.execute(t”QUERY WHERE name = {name}”)`になるってことだよね。<br>このシンタックスシュガーは、言語の複雑さを増す以上の価値があると思うな。ライブラリ開発者が{}の展開を自由にできるのは良いことだし、言語全体でテンプレート構文が統一されるのも良いことだと思うよ。" userName="serbuvlad" createdAt="2025-04-21T09:51:02" color="#785bff">}}

{{<matomeQuote body="20年くらい前にこれの安全なOCaml実装をしたよ。最新バージョンはこれ：https://github.com/darioteixeira/pgocaml<br>変数はコンパイル時に安全に補完されるんだ。型チェックもされてて、コンパイル時にカラム型とデータベースをチェックしてる。" userName="rwmj" createdAt="2025-04-21T11:03:27" color="">}}

{{<matomeQuote body="あんたのやったことはPythonのやつよりすごいし、20年も前なんだね。お見事。でも現実は2025年、Pythonの人気は止まらないし、OCamlなんて誰も気にしちゃいない（Pythonより良い言語はたくさんあるのに）。悲しいね。" userName="tasuki" createdAt="2025-04-21T11:39:30" color="">}}

{{<matomeQuote body="多数派が「より良い」言語を使わないってのが面白いよね。多数派の判断ってそんなに間違ってるのかな？それとも「より良い」ってのは、時間の経過とともに普及率で決まるのかな？" userName="skeledrew" createdAt="2025-04-21T18:39:53" color="">}}

{{<matomeQuote body="みんな自分の最適化したい指標が違うだけだよ。Pythonは学びやすいから良いんだと思う。" userName="daedrdev" createdAt="2025-04-21T19:16:33" color="#45d325">}}

{{<matomeQuote body="最近のLinuxならコマンドプロンプトで`python`って打てばREPLが起動するし、Windowsなら公式サイトからインストーラーをダウンロードして`py`って打てばいい。<br>Pythonを教えるのに`import`なんて必要ないし、標準ライブラリだけでも色々できる。venvは依存関係が競合するプロジェクトが出てきてからで良いんだよ。Pythonは教えやすいし、実用的だから先生も教えるんだよ。boilerplateも少ないしね。" userName="zahlman" createdAt="2025-04-21T21:28:48" color="#38d3d3">}}

{{<matomeQuote body="サーバーサイドのパラメータバインディングの利点は、SQLインジェクション対策だけじゃないよね？PGの拡張プロトコル（バイナリ）を使ったり、パラメータ化されたプリペアドステートメントをキャッシュしたりとか。<br>あと`db.execute(t”QUERY WHERE name = {name}”)`って`db.execute(f”QUERY WHERE name = {name}”)`とほぼ同じじゃん。一文字違うだけでインジェクションされやすくなる。<br>この新しいフォーマット指定子はSQLクエリには向いてないと思う。" userName="benwilber0" createdAt="2025-04-21T14:06:15" color="">}}

{{<matomeQuote body="＞Aren’t there other benefits to server-side parameter binding besides just SQL-injection safety? For instance, using PG’s extended protocol (binary) instead of just raw SQL strings. Caching parameterized prepared statements, etc.<br>＞テンプレート文字列の上で実装できるよ。<br>＞A single character difference and now you've just made yourself trivially injectible.<br>＞違う型だから`db.execute`で静的にも動的にも拒否できるよ。<br>＞I don't think<br>＞その通り。<br>＞this new format specifier is in any way applicable to SQL queries.<br>＞PEP 750のモチベーションの一つだよ。" userName="masklinn" createdAt="2025-04-21T14:21:25" color="#ff5c5c">}}

{{<matomeQuote body="もう一回コメント読んでみてよ。「f」とか「t」に気づくかどうか、の話だってば。見た目めっちゃ似てるじゃん。" userName="MR4D" createdAt="2025-04-21T17:50:27" color="">}}

{{<matomeQuote body="いやいや、エラーになるって。だって、stringとtemplateは型が違うし、インターフェースも違うもん。" userName="rocha" createdAt="2025-04-21T18:00:16" color="">}}

{{<matomeQuote body="parentを何回かクリックして、このスレッドの最初のコード例を見てよ。ユーザーが意図的にstring(f-stringを含む)とt-stringを使ったかどうか区別できないような使い方してるんだよ。" userName="Izkata" createdAt="2025-04-21T19:48:21" color="#ff5733">}}

{{<matomeQuote body="ライブラリで使うなら、こんな感じかな。<br>sh(t”stat {some_file}”)<br><br>t-stringを使えば、`some_file`の中身をエスケープしてからshellに渡せる。`stat “$( base64 -d [base64 encoded content of some_file] )”`みたいにすれば、セキュリティも上げられるかもね。" userName="tetha" createdAt="2025-04-21T11:36:44" color="#45d325">}}

{{<matomeQuote body="気になるところは、オーバーライドしようとしてるパターンと見た目が似すぎてることかな。<br>db.execute(f”QUERY WHERE name = {name}”)<br><br>と<br>db.execute(t”QUERY WHERE name = {name}”)" userName="mikeholler" createdAt="2025-04-21T14:01:07" color="">}}

{{<matomeQuote body="でも、f stringの方は`name`パラメータがないからエラーにならない？" userName="fzzzy" createdAt="2025-04-21T14:11:46" color="">}}

{{<matomeQuote body="`execute`関数がt-stringだと認識して、`name`がユーザー入力から来てたらSQL injectionを防げるってこと。f-stringはすぐにstringに評価されるけど、t-stringはtemplateオブジェクトに評価されて、stringにするには追加の処理が必要。" userName="ds_" createdAt="2025-04-21T10:26:10" color="#38d3d3">}}

{{<matomeQuote body="それなら、便利なのは`execute`関数を自分で書く必要があるってことだね(コメントにあるみたいにただの置き換えじゃない)。追加の関数があれば、f-stringに入れる値の安全性を確認できる。<br>db.execute(f”QUERY WHERE name = {safe(name)}”)みたいにする方が良い気がする。" userName="Tenoke" createdAt="2025-04-21T10:30:42" color="#785bff">}}

{{<matomeQuote body="この例の問題点は、`safe`をどこから持ってくるかってことだよね？テンプレートを`db.execute`に渡せば、`db`インスタンスが接続先のバックエンドに合わせて安全性を処理してくれるじゃん。そうでなければ、文字列を適切にサニタイズするために、`db`接続を使って`safe`関数を作る必要があるし。さらに、`safe`がただの文字列を返すだけだと、`db.execute`がパラメータを別の方法で渡す能力も失われちゃうんだよね。変数が文字列に埋め込まれてるって情報がなくなっちゃう。" userName="ubercore" createdAt="2025-04-21T10:36:40" color="">}}

{{<matomeQuote body="`db.safe`は、`t-string`のために作る安全性チェック付きの新しい`db.execute`と同じだね。でも、値をさらに使ったり、もっと複雑なケースではメリットもあると思うよ（今のところ自分のコードではファンじゃないけど）。" userName="Tenoke" createdAt="2025-04-21T10:50:33" color="">}}

{{<matomeQuote body="せやけど、`db.safe(”SELECT * FROM table WHERE id = {}”, row_id)`みたいになるんちゃう？`db.execute(t”SELECT * FROM table WHERE id = {row_id}”)`の代わりに。個人的には後者の方がええな。" userName="ubercore" createdAt="2025-04-21T10:59:53" color="">}}

{{<matomeQuote body="いやいや、`db.execute(f”QUERY WHERE name = {db.safe(name)}”)`でしょ。<br>`db.execute`で暗黙的に安全性を確保するんじゃなくて、`db.safe`の中で明示的に安全性を追加するんだよ。もし気が向いたら、`name`を`db.safe`の中で`db.foos`に代入して、後で（`execute`の中でも）使えるようにすることもできる。" userName="Tenoke" createdAt="2025-04-21T11:07:44" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="でも、もし誰かが`safe`を省略したら、動くかもしれないけど、インジェクションを許しちゃうかも。" userName="ZiiS" createdAt="2025-04-21T11:41:01" color="#ff33a1">}}

{{<matomeQuote body="誰かが`t”`を使うのを忘れて、代わりに`f”`を使った場合も同じことが言えるよね。少なくとも`db.safe`は何をするか言ってるけど、`t”`は違う。" userName="thunky" createdAt="2025-04-21T12:52:56" color="">}}

{{<matomeQuote body="`f-strings`は値をサニタイズしないから、安全じゃないよ。この記事に書いてある。" userName="burky" createdAt="2025-04-21T10:26:26" color="#ff5c5c">}}

{{<matomeQuote body="記事には書いてあったけど、ここの例ではそれが当然のこととして扱ってるよね。" userName="Tenoke" createdAt="2025-04-21T10:52:14" color="">}}

{{<matomeQuote body="“they”ってどういう意味？テンプレート補完関数のこと？<br>そう、言語にこれがあることで、ライブラリの作者は、それが適切なユースケースのために実装を書くっていう考えだよ。" userName="sanderjd" createdAt="2025-04-21T12:35:27" color="">}}

{{<matomeQuote body="サニタイズのことだよ。昔の`db.execute`で`t-string`を使ったからって、以前より安全になったって意味にはならないよ。" userName="Tenoke" createdAt="2025-04-21T13:47:34" color="#785bff">}}

{{<matomeQuote body="もしt-stringがdb.executeで使われてて、それがt-stringに対応してないならエラーになるよ。でも、もしdb-executeが対応してたら、外部パラメーターを使うのと同じくらい安全なはず。で、もしt-stringじゃないものが使われたら、最終的には拒否されるべきだね。" userName="masklinn" createdAt="2025-04-21T14:24:34" color="">}}

{{<matomeQuote body="t-stringを受け入れる関数だからって、デフォルトでサニタイズ処理が行われてるわけじゃないからね。" userName="Tenoke" createdAt="2025-04-21T14:35:16" color="">}}

{{<matomeQuote body="関数がtemplateを受け入れるなら（stringとは違う種類のオブジェクト）、サニタイズしてるか、明示的にサニタイズなしでtemplateを実装してるかのどっちかだよー。うっかりやっちゃうのは難しいと思うな！<br>重要なのは、t-stringはstringじゃなくて、stringの構文を再利用してTemplateオブジェクトを作る新しいリテラルってこと。これがf-stringと根本的に違う点だね。新しい型だから、stringを受け入れるライブラリは明示的に処理するか、TypeErrorを出す必要があるんだ。" userName="tikhonj" createdAt="2025-04-21T14:49:50" color="#ff5c5c">}}

{{<matomeQuote body="なんでサニタイズなしで使うのが難しいと思うのかわかんないなー。値のチェックは必須じゃないし、単に便利に使ってるだけかもよ。<br>t-stringを実装して、値を保存したり、ログを改善したりするために使ってて、チェックやエスケープのことなんて考えてないかもしれないし。他の場所で忘れがちなのと同じようにね。" userName="Tenoke" createdAt="2025-04-21T16:09:23" color="">}}

{{<matomeQuote body="SQLで値じゃないもの（例えばカラム名）もフォーマットする必要があるとして、`execute`関数はどうやってフォーマットすべきものとパラメーター化された値を区別するのさ？" userName="NewEntryHN" createdAt="2025-04-21T10:25:52" color="#785bff">}}

{{<matomeQuote body="フォーマット指定子のコンパイル時チェックがないのが残念だね。" userName="amelius" createdAt="2025-04-21T10:29:48" color="">}}

{{<matomeQuote body="Pythonもコード実行前にいくつかチェックするよ。例えば:<br>print(”hello”)<br><br>def f():<br> nonlocal foo<br><br>とすると:<br>SyntaxError: no binding for nonlocal 'foo' found<br><br>って出るでしょ？helloの前にエラーが出て、f()すら呼ばれてない。" userName="amelius" createdAt="2025-04-21T10:43:33" color="#785bff">}}

{{<matomeQuote body="これからは明示的に書かなくても、t-stringに慣れてない人が（ほとんどの人がそうだろうけど。f-stringとそのフォーマット機能を知ってる人すら少ないし）うっかりf-string使っちゃうだけで、大変なことになるかもね。" userName="pinoy420" createdAt="2025-04-21T10:17:54" color="">}}

{{<matomeQuote body="まともなライブラリなら、テンプレートを期待してるところにstringを渡したらエラー出すでしょ。それに、そのライブラリは型も持ってるから、IDEが事前に教えてくれるはずだよ。" userName="mcintyre1994" createdAt="2025-04-21T10:36:33" color="#38d3d3">}}

{{<matomeQuote body="マジかー、t-stringsにそんな期待してるの？HTMLとかSQLに変換されるって、どうやって判断するんだろ？文字列の書き方から推測するしかないじゃん？それって場当たり的だし、t-stringsの機能とは関係なくね？今の設計だと、何のコンテンツになるか全然わかんないし。変換関数が全部処理するんでしょ？sql``select * from {table}``みたいなのがあれば良かったのにね。変換される前のSQLが正しいSQLである保証もないし。t``give me {table} but only {columns}``が変換後にSQLになるかもしれないし。＞元のコメント書いた人の意見に対する批判的な意見だね" userName="florbnit" createdAt="2025-04-21T17:36:24" color="">}}

{{<matomeQuote body="えー、そう思う？最初は変に感じるかもね！Paulも言ってるけど、PEP 750を作る時、色々考えたんだよ。結局、PEPはツールが採用できる色々なアプローチを残してるし（他の人も言ってるけど）、ツールコミュニティが協力して解決すべき問題だから、PEPの範囲外にしたんだ。だから、エコシステムが適応してくれると嬉しいな！" userName="davepeck" createdAt="2025-04-21T18:55:08" color="#785bff">}}

{{<matomeQuote body="html(t”<h1>Hello</h1>”)みたいなパターンが出てくると思うよ。ハイライターとか静的解析ツールは、これを見て判断するんじゃない？JavaScriptのtagged template literalsも同じくらい柔軟だし。tag関数を動的に選べるから。Pythonのツールも同じようにできると思う。名前付きの処理関数の中にあるt-stringsだけをサポートすればいいんじゃないかな。" userName="spankalee" createdAt="2025-04-21T18:35:59" color="">}}

{{<matomeQuote body="型ヒントを使うのもありだよね。title: HTMLTemplate = t”<h1>Hello</h1>”みたいな。" userName="dandellion" createdAt="2025-04-21T21:33:47" color="">}}

{{<matomeQuote body="元のPEPと議論では、それも検討してたんだ。でも、後で出てくるようにするために削除したんだ。言語にシグナルを送る方法は色々あるけど、ツールに優しいものもあれば、より堅牢なものもある。" userName="pauleveritt" createdAt="2025-04-21T17:55:02" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="PyCharm（と他のJetBrains IDE）は、少なくとも10年前から、コメントを使ってPython文字列に言語を注入するのをサポートしてるよ[0]。最悪の場合でも、フォーマッターが自動フォーマットを適用するために使えるはずだよ。でも、それだけじゃない！IntelliJ for Javaは、引数にアノテーションをつけるのもサポートしてる[1]。そうすると、特定の関数で文字列リテラルを使う場所全部で、シンタックスハイライトが効くんだ。Pythonでは、typing.Annotatedがまさにこういう目的のために設計されたみたい[2]。だから、こんな感じにできるはず。SQL = Annotated[Template, “language”, “SQL”]<br><br>def query(sql_query: SQL):<br> # do stuff with Template to sanitize<br><br> query(t”SELECT * FROM foo WHERE bar={bar}”)<br><br>テンプレート文字列がこれを実現するために必要ってわけじゃないけどね！JetBrainsはずっと前からやってるし。でも、テンプレート文字列がこういう目的で十分に役立つなら、ツールが進化して、フォーマッターや他のエディターでサポートしてくれるかもしれない（PyCharmがJavaより良いサポートを受けられるかも）。" userName="lolinder" createdAt="2025-04-21T23:12:58" color="#785bff">}}

{{<matomeQuote body="PEPの作者の一人です。JetBrainsにもいます。PyCharmチームと話してます。" userName="pauleveritt" createdAt="2025-04-22T06:43:04" color="#45d325">}}

{{<matomeQuote body="型アノテーションでできるんじゃない？例えば、SQLAlchemyがSQL型を持ってて、mypyみたいなツールがTemplateインスタンスを見て、安全に使ってるか確認できる。Black, Ruff, SQLFluffは、Annotated[Template, SQL]を探して、テンプレートをSQLとしてフォーマットできるって気づく。Djangoは、Annotated[Template, Email], Annotated[Template, HTML], Annotated[Template, JSX]を持ってて、同じテンプレート構文がどのコンテキストを対象にしてるかを示すこともできる。" userName="acdha" createdAt="2025-04-21T18:09:47" color="#785bff">}}

{{<matomeQuote body="これ、PEPの最初の改訂で議論したことなんだよね（`Annotated`を使うってやつ）。でもね、リンターってPythonの型システムのこと全然知らないんだって。PyCon USとかEuroPythonとかで、この辺のコミュニティを盛り上げて、何とかしたいと思ってる。JSX/TSXの世界は本当にツールが充実してるから。それを欲しい人には提供できるし、場合によってはもっと良くできるかもね。" userName="pauleveritt" createdAt="2025-04-21T18:18:40" color="">}}

{{<matomeQuote body="へー、面白いね。背景情報ありがとう。Astralがこの分野で何をするのか興味津々だけど、資金が尽きたらどうなるか心配だよね。" userName="acdha" createdAt="2025-04-21T19:13:30" color="">}}

{{<matomeQuote body="＞テンプレート文字列が有効なHTMLまたはSQLに変換されると推測する唯一の方法は、文字列内の明らかな構文を基にすることだ”<br>それだけじゃないよ。使われ方も見れるじゃん。エディターが有名なライブラリでのt-stringの使い方を知ってて、どのt-stringがライブラリの関数に渡されてるか追跡して、t-stringが従うべき文法を推測できる。ズルいかって？ある意味そうだけど、便利だし、プログラマーにとっては価値があると思うよ。" userName="Someone" createdAt="2025-04-21T18:17:42" color="#ff33a1">}}

{{<matomeQuote body="Pythonは10年前から型アノテーションがあるし、最近のIDEはそれを解釈できるんだよ。`query: SQL = t”SELECT ...”`って書くのは、DXが向上するなら安いもんだよ。" userName="pphysch" createdAt="2025-04-21T18:04:51" color="#38d3d3">}}

{{<matomeQuote body="これって、次のようなSQLの構文をneatに書けるようになるってこと？<br>city = 'London'<br>min_age = 21<br># Find all users in London who are 21 or older:<br>users = db.get(t'<br>SELECT * FROM users<br>WHERE city={city} AND age>{min_age}<br>')<br>db.get()関数がテンプレートを受け入れるなら、そうなるはずだよね？もしそうなら、今までで一番SQLを使いやすくする方法かも！" userName="TekMol" createdAt="2025-04-21T08:37:21" color="#38d3d3">}}

{{<matomeQuote body="TclのSQLite拡張も似たようなことができるよ。<br>db1 eval {INSERT INTO t1 VALUES(5,$bigstring)}<br>https://sqlite.org/tclsqlite.html#the_eval_method" userName="fweimer" createdAt="2025-04-21T08:56:46" color="">}}

{{<matomeQuote body="結局のところ、プリペアドステートメントを使うのが適切な方法じゃないの？もしちゃんとプリペアドステートメントを使ってるなら、このt-stringってSQLの利用において何の意味があるの？" userName="zelphirkalt" createdAt="2025-04-21T13:32:55" color="">}}

{{<matomeQuote body="記事にもあるように、みんなプリペアドステートメントを使ってないんだよ。代わりに、f-stringの方が便利だからそっちを使っちゃうんだ。" userName="scott_w" createdAt="2025-04-21T16:07:17" color="#45d325">}}

{{<matomeQuote body="後方互換性を維持するために、テンプレートしか受け付けない新しいメソッドが追加されるだろうね。そうなると、文字列を渡すのを止めさせる努力が無駄になっちゃう。PHPを始めた15年前には、プリペアドステートメントがSQLクエリを実行する推奨方法だったのに。SQLインジェクションに対して脆弱なコードを書くべきじゃないよ。" userName="vultour" createdAt="2025-04-21T18:44:16" color="">}}

{{<matomeQuote body="＞This would be the nicest way to use SQL I have seen yet.”<br>EF/EF Coreは何年も前からあるよ！https://learn.microsoft.com/en-us/ef/core/querying/sql-queries" userName="neonsunset" createdAt="2025-04-21T09:35:30" color="">}}

{{<matomeQuote body="長年使ってたけど、モデル作るのにビジュアルデザイナー使わなきゃいけなくて、これがまた遅くてバグだらけだったんだよね。マジで毎日イライラもんだったわ。UIがデータベースの関係壊すの見張ってなきゃいけないとか、マジ勘弁。" userName="nurettin" createdAt="2025-04-21T09:47:29" color="">}}

{{<matomeQuote body="今どき誰も使ってないでしょ、たぶん過去5年くらいは。今は https://learn.microsoft.com/en-us/ef/core/modeling/#use-data... を使うのが普通。これは完全に独立した、レガシーなVSの拡張機能で、EFとかEF Coreとは別物。" userName="neonsunset" createdAt="2025-04-21T09:57:18" color="#ff33a1">}}

{{<matomeQuote body="マジ勘弁。シンタックスシュガーとしては良いけど、SQLインジェクションの脆弱性とパラメーター化されたクエリの違いが、見落としやすい一文字だけになっちゃった。" userName="jbaiter" createdAt="2025-04-21T08:47:43" color="">}}

{{<matomeQuote body="t-stringは__str__()メソッドのないTemplateオブジェクトを生成するから、f-stringと間違えて使うことはないよ。コードが文字列を期待するならTemplate渡したらエラーになるし、Templateを期待するなら文字列渡したらエラーになる。" userName="JimDabell" createdAt="2025-04-21T09:07:30" color="#ff5c5c">}}

{{<matomeQuote body="＞コードがTemplateを期待するなら文字列渡したらエラーになる。<br>問題はそこなんだよねー。ほとんどの場合、エラーにならない可能性が高いってこと。<br>SQLクエリにはパラメーターがないものも多いし。テーブルの行数とか取得するだけなら、生の文字列で全然OK。<br>sqlite3は本当に文字列を許可しないの？パラメーターがない場合でも、テンプレートを強制するの？<br>そうあるべきだって主張できるけど、それは入力に優しくないし、後方互換性を壊すよね。もしかしたら、モジュールに厳密な動作を有効にするフラグがあって、10年後にはデフォルトになるかも？" userName="crazygringo" createdAt="2025-04-21T14:29:02" color="">}}

{{<matomeQuote body="db.execute(t”Select Count(1) from someTable”)<br><br>パラメーター化されてないクエリに、生の文字列の代わりにたった一文字追加するだけ。「強制」するってことね。t-string自体はパラメーターなくてもちゃんと動く。<br>テンプレート専用APIに切り替えるのは後方互換性の問題があるけど、テンプレート専用APIは、パラメーターの数に関係なく、すべての文字列の前に`t`をつけるだけなら、そんなに「優しくない」ってわけでもない。" userName="WorldMaker" createdAt="2025-04-21T15:24:31" color="">}}

{{<matomeQuote body="他の場所ではそんなことしなくていいじゃん？変数入れないのにfつけることないし。Pythonの入力は寛容なのが普通だし。タプルが欲しいところにリスト渡せたり、floatが欲しいところにint渡せたり、単一のアイテムのタプルの代わりにアイテム直接渡せたりするし。Regex関数も普通の文字列でもRegex文字列でも受け付けるし、Regex文字列を強制しないし。<br>どんな場合でも特定の種類の文字列を使うように強制されるのは、Pythonの伝統的なやり方とは違うよね。安全なのはわかるけど、間違いなく優しくないから、モジュールのメンテナーがどう扱うか気になる。" userName="crazygringo" createdAt="2025-04-21T15:34:43" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="えー…それ違うくない？Pythonは寛容な場合もあるけど、いつもじゃないよ。完全にツール次第。ライブラリが追いつくまで時間がかかるけど、t-stringを強制するライブラリを作る人は絶対いると思う。たとえ裏でレガシーライブラリのために分解しててもね。" userName="scott_w" createdAt="2025-04-21T16:11:31" color="#785bff">}}

{{<matomeQuote body="何が違うの？Pythonの入力は普通寛容じゃん。いつもって言ったわけじゃないし。Pythonで入力に厳格なのが普通で、寛容なのが例外だって言うの？" userName="crazygringo" createdAt="2025-04-21T16:19:30" color="">}}

{{<matomeQuote body="Pythonが正当な理由もなく異なる型を盲目的に交換できるってこと？そんなことないよ。型が違う場合は、Pythonは入力に厳格なのが普通だよ。例えば、Decimal(‘3.0’) / 1.5 を試してみて。エラーになるでしょ、当然だけど。" userName="scott_w" createdAt="2025-04-21T16:29:01" color="#ff5733">}}

{{<matomeQuote body="えーと…でも普通はそうじゃん？例えば、Decimal(’3.0’) / 2を試してみて。ちゃんと動くよ。floatだとダメなのは当然。それがポイントでしょ。基本的には型には寛容だけど、そうしない理由がある時は別ってこと。4 + Trueとかやっても5が返ってくるし。これこそ「意味もなく違う型を混ぜてる」って言えるんじゃない？Regexもr-string限定じゃないし。Pythonは入力には寛容な姿勢だよ。type hintingだって後付けだし。JavaScriptほどじゃないけど、かなり寛容だと思うけどな。そうじゃないって言うのは無理があると思う。" userName="crazygringo" createdAt="2025-04-21T18:47:16" color="">}}

{{<matomeQuote body="Decimalとintの混合は良い理由があるからOK。floatは精度が問題。boolとintの混合は良くない。Pythonが抱え続けるべきじゃない実装の悪い点。Pythonにはbool型がないってことだよ。TrueとFalseはただの名前付きの整数。マジで愚かでそうあるべきじゃないけど、昔からの理由でそうなってる。regexの例も意味不明。stringとr-stringは同じもの。インタープリタから見たら区別ないのに、どうやってregex関数がr-stringを強制できるの？違うべきかもしれないけど、Python 4.0がないと無理。" userName="scott_w" createdAt="2025-04-21T19:22:00" color="">}}

{{<matomeQuote body="＞そんな例を出すなんて信じられない。もしチームのプログラマーがそんなことしたらクビにするレベル。<br>それって、俺とは違う話をしてない？<br>俺はただPythonを説明してるだけ。擁護してるわけじゃない。Trueを足せる理由も知ってるから例に出したんだし。r-stringがただのstringなのも分かってる。Pythonはr-stringを別のオブジェクトにして、バックスラッシュエラーをなくせたのにそうしなかった。<br>俺の言いたいことは、Pythonicなものって結構何でも受け入れるってこと。type hintだって強制じゃないし。君はそうあるべきじゃないと思ってるみたいだけど、Pythonが厳しい言語だって言うのは違う。" userName="crazygringo" createdAt="2025-04-21T20:47:09" color="#ff5733">}}

{{<matomeQuote body="＞Pythonicなものって結構何でも受け入れるってこと<br>stringをstringとして、intをintとして使うのは「何でも受け入れる」わけじゃない。プログラミング言語の基礎だよ！duck typingと「何でも受け入れる」を混同してるんじゃない？標準ライブラリでも互換性のあるインターフェースを使うべきって考えはあるよ。generatorをlistが必要な関数に渡して痛い目を見たことなんて何回もあるし。" userName="scott_w" createdAt="2025-04-21T21:14:52" color="">}}

{{<matomeQuote body="変数を使わないならf-stringは使わないな。<br>Lintersも変数が無いf-stringには文句を言うし。t-stringも同じだと思う。" userName="0cf8612b2e1e" createdAt="2025-04-21T16:12:32" color="#785bff">}}

{{<matomeQuote body="上で議論されてる理由から、t-stringもそうなるかは分からないな。frameworkやlibraryが対応するには時間がかかると思うし（後方互換性を維持しながら）、ベストプラクティスがlintingツールとかに浸透するのにも時間がかかると思う。" userName="davepeck" createdAt="2025-04-21T17:27:52" color="">}}

{{<matomeQuote body="stringが使える場所ならt-stringも使えるなら、パラメータがないt-stringはコードのにおい（linting error）。専用のtemplate-string APIがあるなら、普通のstringを使うのをやめると後方互換性がなくなるってこと。" userName="0cf8612b2e1e" createdAt="2025-04-21T20:22:59" color="">}}

{{<matomeQuote body="＞stringが使える場所ならt-stringも使える<br>違うよ。型が違う。t-stringはstrじゃない。<br>それを活かすかどうかは良いframework/APIデザイン次第。" userName="davepeck" createdAt="2025-04-21T20:39:10" color="#ff5733">}}

{{<matomeQuote body="libraryの作者はどっちの型を受け入れるか決めないといけない。database cursorなら、普通のstring + パラメータ引数とtemplate stringのどっちを受け入れる？それとも新しいAPIを作る？<br>cursor.execute(“select * from x where foo=?”, {foo=1})<br># 許可しつつ<br>cursor.execute(t“select * from x where foo={foo}”)<br># または<br>cursor.executetemplate(“select * from x where foo={foo}”)<br>executeがstringとt-stringを受け入れるなら、パラメータがないt-stringを使うのは問題だと思う。t-string専用のAPIがあるなら、パラメータの渡し方が2つに分かれるから広範囲な破壊的変更を意味する。" userName="0cf8612b2e1e" createdAt="2025-04-21T21:43:07" color="">}}

{{<matomeQuote body="既存の関数はt-stringに対応しないと思うよ。代わりにt-string専用の新しい関数が作られるんじゃないかな。" userName="Mawr" createdAt="2025-04-21T10:55:12" color="">}}

{{<matomeQuote body="strcpyとかstrncpyとかstrlcpyみたいに、ドキュメントだけが生き残って、チュートリアルとか古いコードからコピペされまくって、新しいものが普及しないリスクがあるよね。AIがコード書く時代になるし、もっとひどくなるかも。でも、古いものを廃止すると言語自体が死んじゃうし、難しい問題だよね。静的チェックが簡単にできるようになったら、少しずつ変わっていくかもしれないね。" userName="xorcist" createdAt="2025-04-21T11:58:04" color="#45d325">}}

{{<matomeQuote body="Pythonのtype checkerとかlinterって、特定の関数を呼んだ時に警告とかエラーを出せる機能あるのかな？それがあれば、新しいt-string専用の関数への移行を強制できるかもね。" userName="tubthumper8" createdAt="2025-04-21T12:52:27" color="#45d325">}}

{{<matomeQuote body="ちょっと前に、知らないコード見てたら、`datetime.utcnow()`に打ち消し線が引かれてたんだよね。マウスオーバーしたら、deprecatedってメッセージが出てきて。editor(vscode)とtypechecker(pyright)が、deprecatedってマークされてるのを見つけて表示してたみたい。これで、utcnow()がdeprecatedだって知ったし、自分のコードでもdeprecatedマークして、新しいバージョンを使うように促せるって学んだよ。" userName="mos_basik" createdAt="2025-04-21T18:21:58" color="#785bff">}}

{{<matomeQuote body="完全にテンプレート専用の新しいライブラリじゃない限り、今のコードは文字列を受け付けるし、後方互換性のために、これからも文字列を受け付け続けるんじゃないかな。" userName="b3orn" createdAt="2025-04-21T10:03:01" color="">}}

{{<matomeQuote body="それは実装次第だね。既存のライブラリなら、こんな感じになるんじゃない？<br>＞def get(self, query):<br>＞　　if isinstance(query, template):<br>＞　　　　self.get_template(query)　”テンプレートの場合”<br>＞　　else:<br>＞　　　　self.get_old(query)　”古いコードを壊さないように！”" userName="yk" createdAt="2025-04-21T10:40:55" color="">}}

{{<matomeQuote body="OPはtをfに置き換えるって言ってるんだよ。" userName="hyperbovine" createdAt="2025-04-21T08:54:42" color="">}}

{{<matomeQuote body="それだとget()に文字列が渡されて、エラーになるよ。get()はテンプレートを処理する関数だから。" userName="TekMol" createdAt="2025-04-21T08:56:52" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
