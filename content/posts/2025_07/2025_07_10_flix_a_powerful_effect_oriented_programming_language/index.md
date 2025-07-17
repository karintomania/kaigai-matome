+++
date = '2025-07-10T00:00:00'
months = '2025/07'
draft = false
title = 'Flix、強力なエフェクト指向言語！JVM連携と多機能性で注目か？'
tags = ["プログラミング言語", "Flix", "JVM", "関数型プログラミング", "論理プログラミング"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> Flix、強力なエフェクト指向言語！JVM連携と多機能性で注目か？

引用元：[https://news.ycombinator.com/item?id=44521224](https://news.ycombinator.com/item?id=44521224)




{{<matomeQuote body="この言語の奥深さと幅広さにマジで感心したよ。代数的データ型、ロジックプログラミング、ミュータビリティ、全部最初から揃ってるんだからね。比較表で感動したのは、一つの実行ファイルがパッケージマネージャー、LSP、コンパイラを兼ねてる点だよ。Haskellの言語サーバーは、ghcのバージョンとcabalファイル、それにStackとかとの調整が大変だったみたいだからさ。もちろんHaskellは良い言語なんだけどね。<br>だけど、一番の目玉機能がちょっと埋もれてる気がする。Javaとか他のJVM環境との連携って、どれくらい使いやすいのかな？JVMコンパイラは型を消去しちゃうって聞いたけどさ。`regions`の概念があるから、命令型との連携はファーストクラスでサポートされてるんだよね。<br>JVMを使えば、何十億ドルもする高品質なプロフェッショナルな標準ライブラリが使えるんだから、これはデカいプラスだよ。だから、JVMと.NET Coreが90％以上のプロジェクトで一番まともな選択肢だと思うね。比較できるのはF#くらいかな。FlixのJVM相互運用性の限界についてまとめたドキュメントがあったら見てみたいなぁ。<br>__編集__- ここにちょっと情報があるね。基本的にはFlixとJavaの間の値は全部ボックス化/アンボックス化が必要みたい。https://doc.flix.dev/interoperability.html- レコードはファーストクラスの市民だよ。" userName="exceptione" createdAt="2025/07/10 17:01:49" color="#ff5733">}}




{{<matomeQuote body="“一つの実行ファイルがパッケージマネージャー、LSP、コンパイラ”だって？<br>マジかよ、Unison、絶対好きになるぞ。" userName="littleroot" createdAt="2025/07/10 17:24:23" color="">}}




{{<matomeQuote body="あの馬鹿げたPythonみたいな空白のルールとフォーマッターのなさには本当にうんざりしたよ。LSPも半分くらい動かなかったし。アイデアは好きだったし、また見に行くつもりだけど、プログラムを書こうとすると邪魔された感じだったね。もしあの空白のふざけたルール（なんでこんなこと言わなきゃいけないんだ！？）と開発ツールが改善されたら、俺はもう夢中になっちゃうね。" userName="cdaringe" createdAt="2025/07/12 07:35:10" color="">}}




{{<matomeQuote body="Flixには空白の特別な意味はないよ。どこで困ったんだい？もし助けが必要ならGitterに来てくれてもいいよ。俺たちはフレンドリーだからね:-)" userName="jorkadeen" createdAt="2025/07/12 11:15:27" color="#45d325">}}




{{<matomeQuote body="JVMコンパイラが型を消去するって話だけど、全てのケースでそうじゃないよ（匿名クラスは型パラメータを保持してるし）。それに、本質的にコンパイラにとっては全然問題じゃないんだ。適用された型コンストラクタを、名前が変更された普通のクラスとしてレンダリングすればいいだけだからね。" userName="pshirshov" createdAt="2025/07/10 19:01:56" color="">}}




{{<matomeQuote body="親コメントの言う通りだよ。俺たちはモノモーフィゼーションをやるから、Flixの型はアンボックス化されるんだ。例えば、`List[Int32]`はプリミティブな整数のリストだよ。ボックス化もオーバーヘッドもないから、Javaよりも速いことすらあるんだよね（Javaはボックス化しなきゃいけないから）。欠点はバイトコードサイズが大きくなることだけど、最近はそれもあんまり問題じゃないかな。ただし、FlixとJavaコードの境界では、値のボックス化が必要になることもあるよ—例えば、Javaが型消去で`java.lang.Object`を要求するJavaライブラリのメソッドを呼ぶ時とかね。" userName="jorkadeen" createdAt="2025/07/10 19:27:18" color="#ff5c5c">}}




{{<matomeQuote body="Javaは“もうすぐ”ボックス化が不要になるはずだよ。Valhallaの成果が出ればね。" userName="vips7L" createdAt="2025/07/11 03:41:49" color="">}}




{{<matomeQuote body="ロジックプログラミングとかDatalogって、他の機能に比べてちょっとギミックっぽい気がするな。他の機能は全部、どうやってコードベースの型安全性を向上させるか、はっきりわかるんだけどさ。ロジックプログラミングはすごくニッチだし、いっそ言語から独立してる方がいいとさえ思うんだ。" userName="daxfohl" createdAt="2025/07/11 04:58:44" color="">}}




{{<matomeQuote body="反論させてくれ。関数型プログラミングはリストやツリーの扱いに優れてるけど、グラフに対するクエリを簡潔に、正確に、効率的に表現するのは苦手なんだ（命令型もね）。Datalogは対照的に、グラフの扱いに優れてる。シンプルで表現力豊か、そしてすごく速いんだ。これは強力なツールだよ。ほとんどの場合は使わない方がいいけど、問題領域に合致すればその恩恵は10倍、いや100倍にもなるんだ。それに、DatalogはSQLよりも厳密に強力だってことも指摘しておく価値はあるよ（色々な拡張は別にしてね）。<br>Flixの目標——そして通常、どんな高レベルプログラミング言語の目標もそうだけど——は、プログラミングをシンプルに、簡潔に、（そしてよく）エラーを少なくするための強力な抽象化と構成を提供することなんだ。ここでDatalogは完璧にフィットする。そうは言っても——Flixのドキュメントを見てみると——Datalogのユースケースを、もっとうまく売り込む必要があると思ってるよ。上記のような議論を追加したり、もっと良い例を追加したりしてね。" userName="jorkadeen" createdAt="2025/07/12 10:23:21" color="#785bff">}}




{{<matomeQuote body="リストやツリーってさ、言語に「組み込まれてる」ってよりは標準ライブラリの一部だよね。「foreach」構文がリストを言語に組み込んでるとも言えるけど、多くの言語ではリストじゃないものにもforeach使えるし、メソッドとして提供されてたりするし、ツリーの話は出てこないしね。<br>君の言いたいことはわかるけど、それが正しいやり方なのかはちょっと疑問だな。大きすぎるし、任意な感じでコア機能にするにはデカすぎる。ライブラリに任せた方がいいんじゃないかな。もし、そういうライブラリを作るのを簡単にするコア機能があるなら、そっちに注力すべきだよ。Rustのasyncみたいな感じでね。（あ、でもRustはasyncを言語に組み込むべきだったとは思うけどね。asyncはどこにでもあるし、違う実装間の連携が難しいから。asyncと違って、ロジックプログラミングはだいたい自己完結してるし、複数の実装を連携させる必要はめったにないからね。）<br>まぁ、とにかく、ここまでの作業は素晴らしいよ。進捗を楽しみにしてるね。" userName="daxfohl" createdAt="2025/07/12 16:59:04" color="">}}




{{<matomeQuote body="もっと言うと、俺が本当に見たいのは、コアコンセプトが型システムからまっすぐに標準実装が導かれるように実装されてて、でも非標準的なこともできるようにすることなんだよね。「はい、ロジック言語組み込みました！」ってのはちょっとつまらない。もっとそそられるのは「ここにコンポーネントがある。これらコンポーネントに基づいた標準実装だ。そして、こっちには設計段階では想定してなかったけど、特定のユースケースに合うような変な使い方もできるぞ」ってやつだね。<br>Jon SkeetがC#のasyncを再実装した一連のブログ記事を覚えてるよ。C#のasync構文は実装にがっちり結びついてないから可能だったんだよね。C#にはなかったコルーチンみたいな機能も追加してたし。https://codeblog.jonskeet.uk/2011/06/22/eduasync-part-13-fir...<br>Daniel Earwickerもiterator構文を使ってasync/awaitを実装するシリーズをやってたね。https://smellegantcode.wordpress.com/2010/12/14/unification-....<br>まあ、今となっては全部モナド（Linq-to-SQLの場合はfree monadsかな）でできる、ちょっと手の込んだ、でもかなり当たり前のことだってわかってるんだけど、当時はすごく魅力的だったんだ。<br>だからさ、「売る」って意味では、Datalogを言語に組み込むのを前面に出すより、「Datalogの作り方」みたいなシリーズ記事にした方が、言語のコンポーネントの力を見せつけられると思うよ。<br>（あと、C#がiterator（foreach）、generator（yield）、async（await）、optional（null propagation operators）みたいな「重要な」モナドに組み込みサポートしてるのは、言語の純粋主義者からすると反対されそうだけど、俺は好きだよ。新しい開発者にとって敷居が低くなるし、よくあることが簡潔で読みやすくなるからね。だから、ロジックプログラミングの場合、どこまでを特別だけど拡張可能な構文サポートにするか、どこからが純粋な実装と関数にするかの線引きがどうなるか、興味深いね。）" userName="daxfohl" createdAt="2025/07/12 20:03:55" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、DatalogはLisp系のライブラリの定番例って感じだし、Prologのモナドは教材の定番だもんね。俺はFlixはIdris2より断然劣ると思ってるよ。" userName="cap11235" createdAt="2025/07/11 07:29:19" color="">}}




{{<matomeQuote body="＞ 俺はFlixはIdris2より断然劣ると思ってるよ<br>それって、俺の最初のコメントとは関係なくない？Idrisは完全に依存型言語で、ネイティブコードにコンパイルするし、今はメンテナンスモードみたいだし。FlixはJVMベースで、依存型じゃなくてエフェクトを使ってるから、使いやすさのために型安全性を80/20ルールで犠牲にしてる感じだね。Flixの方が（今のところは）コミュニティも活発みたいだし。<br>でもさ、Datalogの件は不要な気がするな。C#のLinqにSQLが組み込まれてるのに似てるけど、あれも実際のユースケースだとスケールしないから、結局独立したORMが必要になるでしょ。これと似たようなものだと思うよ。言語に組み込む必要はないね。Datalogできるロジックライブラリ、サービス、永続ストアなんていくらでもあるんだから、ユーザーが好きなように使わせてやればいいじゃん。組み込むのはせいぜいギミックって感じだし、最悪の場合問題になる可能性もあるよ。<br>昔の言語/ウェブプラットフォームのOpaと似たような感覚があるんだ。Opaは当時としてはすごくクールな言語で、クライアント・サーバー機能（Meteorと似てる）が言語自体に組み込まれてたんだ。でも、ウェブのクライアント・サーバーフレームワークが流行らなくなったら、言語自体も廃れちゃったんだよね。<br>ここでもさ、組み込みのDatalogは、言語がギミックに頼りすぎてるように見えちゃうし、真面目な言語っていう印象を損ねると思うよ。" userName="daxfohl" createdAt="2025/07/11 15:21:26" color="#ff5c5c">}}




{{<matomeQuote body="F#は型クラスが（まだ？）ないから、モナドを使ったプログラミングは結構制限されるよね。<br>もしF#がHaskell風のモナドを飛ばして、いきなり代数的エフェクトにジャンプしたら面白いだろうね。F#の哲学にもっと合うと思うし。" userName="spooky_deep" createdAt="2025/07/11 06:25:43" color="">}}




{{<matomeQuote body="そうだね、computation expressionsみたいなのはあるけど、合成できないんだよ。二つ目の点については、型レベルプログラミングなしでは達成できないんじゃないかな。これはF#の設計者が開けないようにしてたパンドラの箱だよね。0. https://github.com/fsharp/fslang-suggestions/issues/243#issu..." userName="exceptione" createdAt="2025/07/11 07:39:44" color="">}}




{{<matomeQuote body="関数型プログラミングには詳しくないけど、C言語に慣れてる俺から見ても、構文は最高にイケてるね。シンプルで分かりやすい関数型言語って、これまでに見た中で初めてだよ。" userName="joe_the_user" createdAt="2025/07/10 22:43:06" color="">}}




{{<matomeQuote body="「スキン/テーマ」がプログラミング言語で流行らなかったのは、ちょっと残念だよね。たまに見かけるけど、FAANGのどっかのコンパイラ関係者がOCamlのスキン/テーマ/代替構文（ReasonMLかな？なんかそんなの）をやってたし。Elixirみたいに、新しい言語だけど既存の世界（すごくクールだよね、Valimは天才だよ）へのインターフェースになってるものもあるしね。<br>でも、これってほとんど何にでもできるはずだよ。俺はemacsでキーボードショートカット一つ押したら、Algol系とかML系とかLisp系の表示に切り替えられたら最高だと思うな。<br>いつか流行るかもって感じのことだよね。HaskellとかTLAの数式表記だって、一時期は参入障壁だったけど、人が本気を出せば解決できる問題なんだし。" userName="benreesman" createdAt="2025/07/11 05:35:45" color="">}}




{{<matomeQuote body="それって、もうすでにめちゃくちゃすごいことじゃないの？<br>JVMって、JavaとかKotlin、Scala、Groovy、Clojure、Flixとか他にもたくさんの言語のフロントエンドになってる仮想マシンでしょ？<br>CLRもC#、F#、Visual Basicで同じだし、LLVM/GCCだって、細かいこと言えばそうだよ。" userName="gavinray" createdAt="2025/07/11 10:21:08" color="">}}




{{<matomeQuote body="レイアウトが大事なものって、自由に編集できるデザインにするのがすごく難しい問題だと思うんだ。データ構造のテーマ化は楽なんだけどさ。これって未解決だよな？" userName="pastage" createdAt="2025/07/11 10:08:53" color="">}}




{{<matomeQuote body="FlixはRustからかなりパクってるっぽいな。Rustはその辺りの細かい部分が上手だったからな〜。" userName="dontlaugh" createdAt="2025/07/11 07:41:36" color="">}}




{{<matomeQuote body="マジで？インデントが意味を持つ関数と、他は全部ブレースっていう組み合わせ、かなりイケてないと思うんだけど。どうなの？" userName="idle_zealot" createdAt="2025/07/11 05:12:20" color="#45d325">}}




{{<matomeQuote body="インデントに意味なんてないぜ。なんでそう思ってるんだ？" userName="jorkadeen" createdAt="2025/07/11 07:14:24" color="#45d325">}}




{{<matomeQuote body="Pythonっぽい関数定義のことだよ。" userName="idle_zealot" createdAt="2025/07/11 09:11:04" color="">}}




{{<matomeQuote body="looks like def x = expressionって感じに見えるな。インデントは関係なさそう。まあ、ちゃんと調べてないけどさ。" userName="lucyjojo" createdAt="2025/07/12 11:16:26" color="">}}




{{<matomeQuote body="まあ、ある程度はわかるけど、「StringBuilder」って…Javaにめっちゃ寄ってる感じするな。この点はあんまり好きじゃないかも。他はざっと見た感じは悪くないけどさ。" userName="johnisgood" createdAt="2025/07/11 06:59:19" color="#ff5733">}}




{{<matomeQuote body="StringBuilderの例は、単に多くの開発者が知ってるから使っただけだよ。Flixの本当の狙いは、内部でミューテーションや命令型プログラミングを使っても純粋関数が書けるってことなんだぜ。" userName="jorkadeen" createdAt="2025/07/11 07:12:04" color="#ff5c5c">}}




{{<matomeQuote body="あと、+を文字列連結に使ったことを後悔してるって話だけど、もっと良いのは連結自体をやめて、全部文字列補間に頼ることだと思うぜ。それが複雑な文字列を作るのに超パワフルでエレガントな解決策だからな！<br>src: https://flix.dev/blog/design-flaws-in-flix" userName="exceptione" createdAt="2025/07/11 07:48:35" color="#ff5c5c">}}




{{<matomeQuote body="言語のセマンティクスの話だけど、ポリモーフィックレコードの拡張や制限は、Leijenのアプローチに沿ってるみたいだね。例えばr1 = { color = ”yellow” }をr2 = { +color = ”red” | r1 }って拡張して、r3 = { -color | r2 }って削除すると、元のr3#colorが”yellow”に戻るんだ。これって個人的には一番まともなアプローチだと思うよ。以前はこんな動作を禁止しようとして、やたら複雑な型システム作った人もいたけどな！<br>[0] https://www.cs.ioc.ee/tfp-icfp-gpce05/tfp-proc/21num.pdf" userName="Joker_vD" createdAt="2025/07/10 15:46:55" color="#ff5c5c">}}




{{<matomeQuote body="話はそれるけどさ、Aarhus（特に大学やテックハブ）ってなんでプログラミング言語の強豪なの？C++, C#/Typescript, Dartとか、みんなデンマークのこの小さいエリアにルーツがあるんだよね。DelftとかINRIAとか、なんでこういう場所って特別なんだろう？一般的な名門大学とは違うよね。水が違うのかな？それとも何か他の理由があるのかな？ :)" userName="textlapse" createdAt="2025/07/10 19:06:57" color="">}}




{{<matomeQuote body="ちょっと訂正だけど、C#はDTU（コペンハーゲン）出身のAnders Hejlsbergが作ったんだよ。彼、Turbo Pascalも作ったんだぜ。Borlandもデンマーク人が設立した会社だしね。一般的に、デンマークはプログラミング言語理論がマジで強いんだ。例えば、静的プログラム解析の標準的な大学院教科書（Nielson & Nielson）もデンマークのだし、Mads TofteはStandard MLにたくさん貢献してるよ。Aarhusは超優秀な大学だよ。ヨーロッパには、Oxbridgeほど名声はないけど、質の高い教育と優れた研究をしてる大学が他にもたくさんあるんだ。" userName="nextos" createdAt="2025/07/11 00:20:21" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="血統かな？Aarhusは、論理学、型理論、関数型プログラミング、オブジェクト指向言語の分野で強力な学術的伝統があるんだ。これらの分野で多くの影響力のある研究者がここを通ってきたからね。それに、プログラミング言語の研究が世界的にどう認識されるかって点で、アメリカへの偏見がかなりあると思う。Aarhusみたいな機関は、マーケティングや自己宣伝にあまり力を入れず、ただ堅実な仕事に集中してるんだ。それが良いとか悪いとかじゃなくて、彼らの貢献が世界的な注目を集める層を突き破るのを難しくしてるだけさ。" userName="wslh" createdAt="2025/07/10 19:14:48" color="#ff5c5c">}}




{{<matomeQuote body="俺たちの長い冬と無料教育も、きっと貢献してるはずさ。年に6ヶ月もある暗闇を過ごすのに、新しいプログラミング言語の開発ほど良い方法があるか？" userName="mollerhoj" createdAt="2025/07/10 21:14:08" color="">}}




{{<matomeQuote body="6ヶ月の暗闇は、控えめに言っても誇張しすぎだね。デンマークの日照時間、気温、日照時間は、全体的にドイツ、イギリス、北フランスとだいたい同じくらいだよ。それに、長い冬？カナダのこと考えてるんだろ。デンマークのAarhusの1月（一番寒い月）の日平均気温は1.3 C (34.3 F) だぜ。https://en.wikipedia.org/wiki/Aarhus#Climate<br>比較すると、カナダのモントリオールの1月の日平均気温は-9.2 C (15.4 F) だよ。" userName="isntThatSth" createdAt="2025/07/11 09:44:04" color="#38d3d3">}}




{{<matomeQuote body="そう、まさにその通り。AarhusにはMartin-Löf、Nygaardとかがいたんだ。同じように、INRIAには多くの影響力のある研究者がいて、OCamlやRocqなんかもね。才能（とワクワクするプロジェクト）は、さらなる才能を引き寄せるんだ。でも、アメリカにそれが存在しないってわけじゃないよ。Penn、Cornell、CMU、MITなんかも歴史的にすごく強いPLの教員陣を抱えてる。俺の理解では、アメリカの助成金の性質上、ヨーロッパほど教員に好きな研究をする自由がないから、それによって研究の焦点が異なるんだ。" userName="bodzioney" createdAt="2025/07/10 21:28:57" color="#785bff">}}




{{<matomeQuote body="Flixは以前調べたことがあって、すごく面白かったから、『Flix for Java Programmers』っていう記事を書いたんだ。もうちょっと古くなってるかも…Flixの最近の進展をまた見なきゃな。でも興味があればどうぞ: https://www.reactivesystems.eu/2022/06/24/flix-for-java-prog..." userName="lutzh" createdAt="2025/07/10 16:42:19" color="#38d3d3">}}




{{<matomeQuote body="素敵なブログ記事だね！許可をいただけたら、ここに載せたいな: https://doc.flix.dev/blog-posts.html<br>記事を書いた後、言語はかなり改善されたんだ。特にエフェクトシステムが大幅に拡張されたし、Javaとの相互運用性もかなり良くなったよ。一部の構文も更新されたんだ。" userName="jorkadeen" createdAt="2025/07/10 17:39:56" color="#785bff">}}




{{<matomeQuote body="注意喚起だけど、Paul ButcherのDatalog記事へのリンクが切れてるよ。シリーズはここで見つけられる: https://paulbutcher.com/datalog1.html" userName="plainOldText" createdAt="2025/07/11 08:19:47" color="#45d325">}}




{{<matomeQuote body="ありがとう──リンク修正したよ！" userName="jorkadeen" createdAt="2025/07/12 10:27:14" color="">}}




{{<matomeQuote body="おお、HKTまでサポートしてるんだ、すごいね。型クラスについては書いてないけど、サポートされてる？Scalaみたいなマクロと型クラスがあれば、俺のライブラリ（distage, izumi-reflect, BIO）をFlixに移植して移行も考えるんだけどな。<br>UPD: ああ、型クラスはtraits”って呼ぶんだね。じゃあマクロは？<br>UPD2: うわ、Scalaのtraitsみたいな簡単な継承もダメなのか。型クラスじゃインターフェースの代わりにならないし、大事な抽象化が抜けてる（H-M typerのせいかな）。これじゃ役立つ事が不可能か、ダサくなるぞ。" userName="pshirshov" createdAt="2025/07/10 16:19:31" color="#785bff">}}




{{<matomeQuote body="FlixはHKT、関連型、関連エフェクトを持つ型クラス（traits）をサポート。デフォルト実装可能で、継承は無し。traitsはコンパイル時モノモーフィゼーションで完全に除去されるから、実行時オーバーヘッドはゼロだ。Flixインライナーが”見通す”ため、高階関数などもバイトコードレベルでループになり、クロージャの割り当てや間接参照は不要。マクロは未実装で、他言語での悪用（現実的または認識されるもの）を恐れてる。今、ライブラリ作者を募集中だから、興味あるならGitterチャネルに来てくれ！" userName="jorkadeen" createdAt="2025/07/10 17:29:05" color="#ff5733">}}




{{<matomeQuote body="”traitsはコンパイル時構造で完全に除去される”のか。それじゃFlixでdistage再実装は無理じゃん。俺は少しのオーバーヘッドと引き換えに生産性アップが欲しいんだ。完全な名目的な継承なんて要らない、動的ディスパッチ可能なインターフェース継Sが1段階あればそれでいいのに！<br>「マクロは悪用されるから恐れてる」って言うけど、マクロが無いとlogstage（ASTからコンテキスト抽出の楽なログ）やizumi-reflect（コンパイル時リフレクション）みたいなのは再実装できないぞ。" userName="pshirshov" createdAt="2025/07/10 18:16:51" color="#ff5733">}}




{{<matomeQuote body="結局、不注意なプログラマーってのはどんなツール使ってもダメなことするもんだろ。それを言い訳に、ツールのパワーを削るのは筋が悪いね。別の言い方をすれば、言語からgotoを無くしたところで、スパゲッティコードが減るわけじゃないってこと。開発者の平均スキルと注意力こそが、コードの質を決めるんだよ。" userName="fc417fc802" createdAt="2025/07/11 03:41:12" color="">}}




{{<matomeQuote body="うん、それは同意できないな。例えば、言語にnullがすべての型のサブタイプとして存在すれば、NullPointerExceptionがそこら中で出るけど、null値がない言語ならそうならないだろ？そんなに単純じゃないよ。どんな言語でもスパゲッティコードは書けるけど、良い言語設計はエラーを減らす手助けになるし、開発者をもっと良いコードを書くように促すんだ。" userName="jorkadeen" createdAt="2025/07/11 07:17:51" color="">}}




{{<matomeQuote body="その例は、言語の表現力やパワーを制限する場合を除いて、ちょっと違う気がするな。例えばKotlinの演算子みたいなのはそうじゃないし。もちろん、最終的な結果をどう構成するかは、色々なあいまいなトレードオフが絡むんだけどさ。俺が言いたかったのは、開発者自身を”救う”ためって理由で、マクロみたいな機能全体を排除するような考え方についてなんだ。<br> sensibleなやり方で物事を可能にする言語設計と、大規模プロジェクトで正気を保つためのスタイルガイドやリンターの領域は、はっきり区別すべきだと俺は思うね。言語設計の欠陥のせいでgotoみたいな構文に頼らされるべきじゃないけど、必要ならそれらはそこにあるべきだ。デザイナーの意見を押し付けられて、ツールをパッチするのに時間を無駄にさせられるべきじゃないね。 [1] https://github.com/kstenerud/go [2] https://github.com/tpope/heroku-fucking-console" userName="fc417fc802" createdAt="2025/07/12 00:11:56" color="#45d325">}}




{{<matomeQuote body="ここは完全に同意するね。最近はJVMアプリばっかり書いてて、Kotlinが俺のGo-toだ。Kotlinが最高のJVM言語だとは思ってないけどさ—むしろ、Scala 3が今のところ一番良く設計されてて、実用的な言語じゃないかと思ってる。<br>でも、Scala 3は”自分を吊るすロープが多すぎる”んだよな。一人でコードベースをいじるならいいけど、他の人と働くなら、implicitな型クラスとかマクロ、それに頭のおかしい型定義の可能性なんかは避けたいんだ。だからKotlinの働く人の哲学と、シンプルな精神モデルのために、表現力が少し落ちるのも受け入れるよ。" userName="gavinray" createdAt="2025/07/11 10:10:56" color="#45d325">}}




{{<matomeQuote body="Scala 3は「自滅するほど自由」って言われるけど、それは使い方が間違ってるね。最もクリーンなコードを書ける能力があるんだ。表現豊かな言語では、機能のサブセットとスタイルを選び維持する必要があるよ。HKTsやマクロは、他の言語じゃ無理なことを可能にするんだから。" userName="pshirshov" createdAt="2025/07/12 09:07:05" color="#785bff">}}




{{<matomeQuote body="コードを全部レビューして、同僚と「使い方が間違ってる」って議論する精神的な余裕がないんだ。若い頃ならいざ知らず、最初の10年を過ぎたらもう無理。Rob PikeがGoをああいう風に設計したのも、こういう理由だと思うよ。" userName="gavinray" createdAt="2025/07/12 11:21:58" color="">}}




{{<matomeQuote body="「コードを全部レビューして議論する余裕がない」って？そんな必要ないって。君のプロセスが壊れてるだけだよ。「最初の10年」って言うけど、俺は2008年からScalaを使ってる。別に賢くないから、強制してくれる便利なツールを作ったんだ。" userName="pshirshov" createdAt="2025/07/12 11:46:31" color="#ff5733">}}




{{<matomeQuote body="それってライブラリを使わない一人プロジェクトだけの話だよね。他の人のプロジェクトじゃ無理。まあいいけどさ、俺はClojureやってるから、自分のニッチでやっていくよ！" userName="lucyjojo" createdAt="2025/07/12 11:22:12" color="">}}




{{<matomeQuote body="違うね。俺たちは100万行以上のScalaコードを問題なく保守してるよ。フレームワークは全部自作だけどね。「ライブラリを使わない」って？cats-zioアダプターとBIOを作ったんだ。他のチームより extensively ライブラリを使ってるよ。" userName="pshirshov" createdAt="2025/07/12 11:49:52" color="#ff33a1">}}




{{<matomeQuote body="「Flixにマクロがないのは他言語での悪用を恐れてるから」って？悪用はそんなに問題じゃないと思うな。それよりも、後で言語を変えるのが難しくなることだね（Scala 2と3の件みたいに）。提案なんだけど、F#みたいにタイププロバイダーを追加したらどうかな？マクロがよく使われる多くの問題を解決できるよ。" userName="valenterry" createdAt="2025/07/11 05:00:04" color="#ff5c5c">}}




{{<matomeQuote body="横から失礼。あなたが関わってるなら、ドキュメントにある末尾呼び出し最適化が実行時パフォーマンスペナルティを発生させる理由を説明してくれる？末尾呼び出し最適化って、コンパイラの仕事でランタイムじゃないと思うんだけど。" userName="exceptione" createdAt="2025/07/10 17:43:31" color="#ff5733">}}




{{<matomeQuote body="俺たちはトラムポリンを使って末尾呼び出しをエミュレートしなきゃいけないんだ。だから場合によってはスタックフレームをヒープ上のオブジェクトとして表現する必要がある。幸い、再帰関数が単に末尾位置で自分自身を呼び出す一般的なケースでは、バイトコードレベルのループに書き換えられるからオーバーヘッドはないよ。" userName="jorkadeen" createdAt="2025/07/10 18:12:35" color="#38d3d3">}}




{{<matomeQuote body="説明ありがとう。それは確かにかなり悪いね。専門的すぎる質問かもだけど、スタックポインタとして表現するのは無理だったの？" userName="exceptione" createdAt="2025/07/10 18:19:08" color="">}}




{{<matomeQuote body="JVM（他のVMもね）はスタックへの直接アクセスを許可してないんだ。でも朗報として、一般的なケースではオーバーヘッドはないから大丈夫だよ。" userName="jorkadeen" createdAt="2025/07/10 18:24:56" color="#ff5733">}}




{{<matomeQuote body="TCO（tail call optimization）はTCE（tail call elimination）とよく混同されるけど、TCEが実行時の保証なのに対して、TCOはコンパイラが静的に末尾呼び出しを最適化するための最大限の努力だよ。" userName="helix278" createdAt="2025/07/10 18:08:32" color="#785bff">}}




{{<matomeQuote body="ありがとう！それって『TCOはTCEの可能性がある』ってことなのかな？特に型でエフェクトが示される時、関数型言語のコンパイラがコンパイル時に情報不足になる状況を考えてるんだけどね。" userName="exceptione" createdAt="2025/07/10 18:15:02" color="">}}




{{<matomeQuote body="俺はコンパイラ開発者じゃないけど、多くの関数型プログラミング言語は、ターゲットプラットフォームがTCEをサポートしてないと、同じように苦労してトランポリンが必要になるって知ってるよ。" userName="helix278" createdAt="2025/07/10 18:28:05" color="">}}




{{<matomeQuote body="この言語はコードエージェントとうまくいくのかな、それともまた自分で考えなきゃいけないのかな？真面目な話、クールな言語だけど、LLMが新しい言語の採用を阻害するんじゃないかって悲しくなるね。どうしたらいいんだろう？" userName="daxfohl" createdAt="2025/07/11 04:35:19" color="">}}




{{<matomeQuote body="LLMについては逆の直感があるんだ。コード移植のコストが劇的に下がるから、新しいプログラミング言語の採用障壁をぶち壊すと思うな。言語の標準ライブラリのコードでLLMを新構文に訓練するのに十分だろうし、エージェントはコンパイラの出力を見て学べるんだから。コード移植って深い創造性はいらないし、APIの見た目を除けば完璧に明確なタスクだよ。LLMによって完璧に自動化される最初のプログラミングタスクの一つになるだろうね。私たちは、なぜこんなことをしてるのか、それが世界にどんな影響を与えるのか、また自分の頭で考え始める必要があるだろうね。" userName="drewm1980" createdAt="2025/07/11 05:58:37" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうだといいな！一方では、訓練コーパスが特定の言語に偏りすぎて、他が埋もれちゃうんじゃないかって心配もあるよ。でも他方では、”推論する”LLMが私たちと同じツール、つまり堅実な型システム、再利用可能なライブラリ、簡潔な構文、理にかなったDSLなんかに長けてるって気づく時が来ると思うな。最終的には、熟練した経験豊富な思慮深いエンジニアリング作業にずっと近くなるだろうね。" userName="daxfohl" createdAt="2025/07/11 07:19:42" color="#38d3d3">}}




{{<matomeQuote body="これが、俺が今、人気のある言語やツールにこだわる本質的かつ主要な理由なんだ。俺のコード作成がますます自動化されてるから、信頼性と訓練データがめちゃくちゃ重要なんだよね。" userName="gavinray" createdAt="2025/07/11 10:15:08" color="">}}




{{<matomeQuote body="Idrisをインデックス型／依存型で使うように指示するデフォルトプロンプトが良い結果を出してるよ（それがないとGADTsが限界だけどね）。" userName="cap11235" createdAt="2025/07/11 07:40:57" color="">}}




{{<matomeQuote body="最初の例[1]は典型的な「急いては事を仕損じる」っていうお粗末な例だね。`match File.exists(f)`して、その後に`match File.stat(f)`ってするのはダメだよ。最初の呼び出しの後、2回目の前にファイルが削除される可能性があるんだから。statを呼び出してENOENTを正しく処理するべきだね。<br>[1]: ページはどれを表示するかランダムにしてるみたいだ。俺はドロップダウンで『ファイル情報』のやつが出たよ。" userName="yencabulator" createdAt="2025/07/15 15:21:07" color="#45d325">}}




{{<matomeQuote body="構文は大好きでいじるのも楽しみだけど、JVMなのは残念だね。同等性能のバックエンド自作よりJVMの方がシンプルだから、多くの言語がJVMなのは理解できる。<br>俺はJava/JVM開発者じゃないけど、JVMデプロイ時、ビルドシステムが一番難しくてイライラしたよ。複雑なんだよね。トレードオフは理解してるけど、JVMビルドの簡素化か、ネイティブコンパイラ構築を楽にするイノベーションを期待してる。（JVMしか選択肢がない時に、こういう言語があるのは良いね）。" userName="bitcrshr" createdAt="2025/07/11 14:13:27" color="#45d325">}}




{{<matomeQuote body="「JVMビルド」って概念は存在しないと思うよ。JVMはターゲットであって、x64ビルドが複雑って言うのと同じようなものさ。もしかして、AntとかMavenとかGradleのこと考えてる？他にもたくさんあるけどね。基本的なJavaなら「javac myfile.java」でビルドできるし、JVM言語ごとに独自のビルドツールがあるんだ。" userName="lucyjojo" createdAt="2025/07/12 11:28:28" color="#38d3d3">}}




{{<matomeQuote body="君の言う通りだと思うな。JVMエコシステムの言語（Java、Kotlin、Scala）でのビルド経験は、どれも似たような嫌な経験をさせてくれるんだ。同じツールも使ってるけど、SBTはScala以外のプロジェクトには普通使わないか。僕の主な不満は依存関係、パッケージング、設定だよ。これはJVMをターゲットにするもの全般、特に相互運用性を良くしたいものには共通の痛みだと思うね。" userName="bitcrshr" createdAt="2025/07/16 10:58:25" color="">}}




{{<matomeQuote body="FlixのFAQ（https://flix.dev/faq/）が最初は普通だけど、最後に向かうにつれてどんどん面白くなるんだ！<br>いくつか傑作を挙げるとね：<br>Q: 0除算は本当に0なの？<br>A: うん。でもそれにこだわるのは宇宙船の座席の色にこだわるようなものさ。<br>Q: 「このサイトはJavaScriptが必要です」<br>A: JavaScriptを使ってるって文句言った人は何人かいるけど、静的HTMLへの作り直しを手伝ってくれる人は0人だ。<br>Q: Flixに僕のお気に入りの機能Yがなくてがっかりしたよ。<br>A: 君を失望させてしまって本当に申し訳ないね。<br>Q: これは—断トツで—僕が今まで見た関数型言語の文法の中で最悪だ。セミコロン、ブレース、記号のスープ、その他もろもろ。まるでScala、Java、Haskellがチェルノブイリの真ん中で一夜限りの関係を持ったみたいだ。<br>A: なかなかの偉業だと思わないかい？" userName="ZeljkoS" createdAt="2025/07/11 08:55:18" color="#ff5733">}}




{{<matomeQuote body="もしJSエコシステムにいるなら、Effect TS（https://effect.website）をチェックしてみてよ！すごく楽しい時間になるはずさ。" userName="Jonovono" createdAt="2025/07/10 15:41:48" color="">}}




{{<matomeQuote body="「Effect」って名前だけど、FlixとかOCaml 5にある代数的エフェクトとはほとんど関係ないんだよね。Effect TSはHaskellに似てるんだ（fp-tsから来たからね）。" userName="satvikpendem" createdAt="2025/07/10 16:01:54" color="">}}




{{<matomeQuote body="Effect TSはモナド的だよ。ScalaのZIOをかなり直接的に再実装したものなんだ。" userName="hocuspocus" createdAt="2025/07/10 15:58:44" color="">}}




{{<matomeQuote body="これ好きだな。新しいプログラミング言語のデモで、使ってみたいって思ったの初めてだよ。" userName="andoando" createdAt="2025/07/10 16:28:04" color="">}}




{{<matomeQuote body="エフェクト指向プログラミングってどんな感じ？どう使うの？良い入門書とかブログとかあったら教えてよ！自分のブログの宣伝でも全然OK！" userName="mcdow" createdAt="2025/07/10 17:23:50" color="">}}




{{<matomeQuote body="エフェクトシステムは、型システムが型情報を注釈するのと同じように、特定のエフェクトを持つ式に注釈をつけることができるんだ。だからコンパイラは、型ルールを強制するのと同じように、エフェクトルールを強制できるのさ。<br>例えば、型システムの場合：<br>  let a: Int      // これは’a’がInt型だと宣言<br>  a = 5           // コンパイラは許可、’a’も5もInt型だからね<br>  a = 5.1         // 不許可、’a’と5.1は型が違うから<br><br>同じように、エフェクトシステムの場合：<br>  let a: Int<br>  let b: Int!Div0 // ’b’はInt型でDiv0エフェクトを持つ<br>  let c: Int<br>  ...<br>  a = 1 / c       // 不許可、’/’はDiv0エフェクトを引き起こすけど’a’はそれをサポートしてないから<br>  b = 1 / c       // 許可、’/’も’b’もDiv0エフェクトをサポートしてるから<br><br>エフェクトの注釈は、型注釈と同じように関数にも適用できるよ。関数を呼び出す側は、そのエフェクトを予期（または処理）する必要があるんだ。例えば、上記のコードが’compute1(..) Int!Div0’という関数にラップされているとして、呼び出す側はこうできる：<br>  compute1(..) on effect(Div0) {<br>     // Div0エフェクトを処理<br>  }" userName="ww520" createdAt="2025/07/10 18:34:10" color="#45d325">}}




{{<matomeQuote body="僕の本「Effect Oriented Programming」（https://effectorientedprogramming.com/）を宣伝しとくね。この本はScalaとZIOを使ってるけど、実際の実装よりもエフェクトの概念について重点を置いてるんだ。いつかFlix版の本も出したいと思ってるよ。でもまずは、TypeScript Effect版に取り組んでるんだ。" userName="jlward4th" createdAt="2025/07/10 18:37:24" color="#ff5c5c">}}




{{<matomeQuote body="Small world! ’effect oriented programming’って検索したら、君のYouTubeの講演が最初の方に出てきたよ。https://youtu.be/EHtVADr-x94" userName="mcdow" createdAt="2025/07/10 20:34:04" color="#38d3d3">}}




{{<matomeQuote body="TypeScript版の最新情報を得るにはどうすればいい？" userName="jprokay13" createdAt="2025/07/10 20:32:48" color="">}}




{{<matomeQuote body="僕たちはEffectの人たちと一緒に作業してるから、彼らと何か発表するつもりだよ。それか、XでJames Wardをフォローしてね。" userName="jlward4th" createdAt="2025/07/10 22:42:19" color="">}}




{{<matomeQuote body="僕、ここで彼らのこと書いたんだ。https://crowdhailer.me/2025-02-14/algebraic-effects-are-a-fu... EYGで実装するのにかなり手応えがあったからね。例は全部編集できるけど、テキストとしてはできないよ。" userName="crowdhailer" createdAt="2025/07/11 07:01:44" color="#ff33a1">}}




{{<matomeQuote body="これって関数型言語における不純な関数としての“effect”のこと？つまり、純粋・不純の区別をする言語でeffect（グローバル／隠された状態変異）を扱う新しい方法ってことかな？ちょっとよく分からないな。契約とか依存型みたいなものかと思ってたんだけど。" userName="rendaw" createdAt="2025/07/10 17:32:09" color="#ff5733">}}




{{<matomeQuote body="違うよ。それは本質的に再開可能な例外なんだ。“MyAlgebraicTypeが必要”って例外を投げると、effectハンドラがそれを捕捉して値を生成し、例外が呼ばれた場所へ実行を戻すんだ。" userName="adastra22" createdAt="2025/07/10 17:52:20" color="#45d325">}}




{{<matomeQuote body="でも、それはユーザーコードで完全に定義できるんだ。だから、effectは基本的に（I/Oや例外スローのような）実行可能な不純な操作のセットで、そのeffectを示す関数はそれらの操作にアクセスできる。もちろん、呼び出し側もeffect操作の実装を提供しない限り、そのeffectを示すことになるね。" userName="helix278" createdAt="2025/07/10 18:11:14" color="#45d325">}}




{{<matomeQuote body="Flix、何かで使ってみたいな。すごく綺麗に見える。でも僕はWeb Devだから、JVMエコシステムには全然触れないんだ。" userName="voat" createdAt="2025/07/10 15:12:07" color="">}}




{{<matomeQuote body="ああ、でもTeaVM [0]とかを使ってWASMにトランスパイルできるよ。バンドラーとか、最近Web Devがアプリを作るのに使うものに、もう一つビルドステップを追加するだけだよ。<br>[0] https://github.com/konsoletyper/teavm" userName="Joker_vD" createdAt="2025/07/10 15:32:29" color="#785bff">}}




{{<matomeQuote body="面白いプロジェクトだけど、“forM”を言語のキーワードに決めたやつは、数分間タバスコソースでうがいさせるべきだね。" userName="remon" createdAt="2025/07/11 12:54:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
