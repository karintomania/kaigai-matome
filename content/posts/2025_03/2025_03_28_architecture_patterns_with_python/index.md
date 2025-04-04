+++
date = '2025-03-28T00:00:00'
months = '2025/03'
draft = false
title = 'Pythonで学ぶ！アーキテクチャパターン徹底解剖：複雑さを回避し、効率的な開発を実現'
tags = ["Python", "アーキテクチャパターン", "設計", "開発", "プログラミング"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Pythonで学ぶ！アーキテクチャパターン徹底解剖：複雑さを回避し、効率的な開発を実現

引用元：[https://news.ycombinator.com/item?id=43501989](https://news.ycombinator.com/item?id=43501989)

{{<matomeQuote body="この本マジでアーキテクチャパターンの宝庫じゃん！テーマに入りやすくて、すぐに理解できるのが最高。<br>ただ、実体験から言うと、こういうパターン使うとPythonだと複雑性増したり、パフォーマンス悪化したりするんだよね。特にDjangoみたいなActiveRecordパターン使うフレームワークだと。<br>アーキテクチャパターンを厳密に使う大手企業(n=3)は、確かにコードは綺麗だけど、無駄に複雑で遅いんだよね。一方、パターン気にしない企業は、コードは汚いけど生産性高かった。結局、汚いコードの方が読めて修正できたから。<br>俺の問題かもしれないけど、汚いコードの方が好きかも。議論も少ないし。" userName="DanielVZ" createdAt="2025-03-28T11:41:45" color="">}}

{{<matomeQuote body="プロジェクトが厳密なアーキテクチャパターンに従うって聞くと、大抵、抽象化が多すぎて何が起こってるか分からなくなるか、タスクをこなすのに何層も飛び越える必要があるんだよね。<br>簡単なタスクでも、N個も新しいもの作らないとXとかYとかできない、みたいな。<br>パターン気にしない会社は、汚いコードはあるけど、間接参照が少なくて、タスクに必要なものが一箇所にまとまってるから、理解しやすいんだよね。抽象化しすぎなんだよ。難しいことだけ抽象化して、簡単なことはそのまま書けばいいのに。" userName="Jcampuzano2" createdAt="2025-03-28T14:01:22" color="#785bff">}}

{{<matomeQuote body="俺も同じ結論に至ったわ。とにかくロジックをインラインで書いて、テストしにくい部分だけ分離すればいいんだよ。分離した部分は徹底的に単体テストする。" userName="lpapez" createdAt="2025-03-29T11:18:52" color="#785bff">}}

{{<matomeQuote body="それってつまり、ソフトウェアエンジニアリングの真髄じゃん。リソースを最適に使ってニーズを満たすための賢いトレードオフをするってこと。" userName="holdenweb" createdAt="2025-03-30T12:23:00" color="">}}

{{<matomeQuote body="本のエイリアン宇宙船の操縦モデルはちょっとミスリーディングかな。宇宙船は高度に設計された製品で、ソフトウェアの制御メカニズムとして機能する部分が大きいから、お手本があるんだよね。<br>ドメインモデリングは既存のモデルのコピーじゃなくて、ソフトウェアの利点を活かして改善すべき。既存のシステムで何を達成しようとしているのかを理解することが大事。<br>ビジネスや文化の世界のモデルは、ごちゃごちゃしてて時代遅れで、コードに最適化されてないことが多い。人間の解釈に頼ってるところもある。それを参考にすべきだけど、最終目標にするべきじゃない。" userName="directevolve" createdAt="2025-03-28T15:33:50" color="">}}

{{<matomeQuote body="＞本のエイリアン宇宙船の操縦モデルはちょっとミスリーディングかな。宇宙船は高度に設計された製品で、ソフトウェアの制御メカニズムとして機能する部分が大きいから、お手本があるんだよね。”<br>Doctor WhoのTARDISは違うみたい。パイロットに合わせて再構成されたり、コントロールがめちゃくちゃだったり、”作られたんじゃなくて育てられた”って言われたり。<br>クルーが操縦することを想定してて、意識もあるみたいだから、ドクターのTARDISは彼みたいに風変わりなのかも。<br>Doctor WhoはハードSFじゃないけどね。" userName="chuckadams" createdAt="2025-03-28T18:10:04" color="">}}

{{<matomeQuote body="厳密なアーキテクチャパターンを使うには、ドメインとパターンを理解する必要がある。両方あれば、コードベースは直感的になる。そうでなければ、1000行の関数の方が理解しやすい。" userName="lijok" createdAt="2025-03-28T12:52:59" color="">}}

{{<matomeQuote body="ジュニア（経験1、2年）が多い会社だと、複雑なパターン実装しない方がいいよ。Factoryとは何かを説明するのに一日が終わっちゃうから。" userName="E_Bfx" createdAt="2025-03-28T21:07:11" color="">}}

{{<matomeQuote body="組織のドメインモデルでPh.D.持ってれば、何でもできるよね。どんなに汚いコードでも、理解できる。問題は、それだけのドメイン理解を得るには、何年も現場経験が必要だってこと。" userName="pphysch" createdAt="2025-03-28T15:50:07" color="">}}

{{<matomeQuote body="この本は大好きだけど、パターンを適用するべき時とそうでない時を理解する必要があるよね。プロジェクト管理と似てると思う。どちらもオーバーヘッドがあって、無差別に使うと価値を上回ってしまう。でも、賢く使えばプロジェクトの成功に不可欠。<br>例えば、シンプルなカレンダーREST APIなら、複雑なアーキテクチャにはしない。でも、Ports and Adaptersアーキテクチャは、シミュレーションと本番環境をシームレスに切り替えるトレーディングシステム構築には不可欠だった。<br>シミュレーターを実際のトレーディングエンジンに、過去のイベントフィードをリアルタイムフィードに簡単に交換する必要があるし、ビジネスロジックを二重実装しないようにする必要があるから。" userName="frankc" createdAt="2025-03-28T20:15:39" color="#38d3d3">}}

{{<matomeQuote body="Python使ってる大小様々な会社にいたけど、アーキテクチャパターンを使うか無視するかだったんだよね。厳格なアーキテクチャパターン使ってるとこ（n=3）は、確かに“綺麗”だけど、コードが複雑すぎて、一見簡単なはずのタスクがめちゃくちゃ遅いんだよ。<br>“厳格なアーキテクチャパターン使用”の問題は、参照に載ってる特定の実装を“パターン”だと思っちゃうこと。<br>“パターン”ってのは、何をするかの思考プロセス、それに取り組む計画、そしてコードの他の部分に提供したいAPIの最高レベルのデザインのことなんだよね。Pythonのステートマシンは、関数がオブジェクトのおかげで、関数がお互いを返すグループと“f = f(x)”の繰り返しで済むことが多いんだ。SingletonよりBorgパターンが良いって言う人もいるけど、モジュール使えば良くない？`sys`がすでにSingletonにしてくれてるじゃん。“Dependency injection”も、関数に引数（別の関数かも）を渡すだけのことが多いし。Flyweightはモノじゃなくて、interningのテクニック。<br>＞TFAで説明されてるCommandパターンは、Jack Diederichの有名なrant（https://www.youtube.com/watch?v=o9pEzgHorH0）の半分だったんだよね。`functools.partial`が友達だよ。<br>＞これってコードより俺の問題かもだけど、綺麗なコードじゃない会社の方が生産性高かったんだよね。<br>たぶん、もっと良いものを見たことないから、間違った二分法を描いちゃってるんだと思う。短い関数は、複雑なクラス階層なんて必要ないんだから。クラスすら要らないんだよ。Object-oriented programmingはオブジェクトの話で、クラスの話じゃない。クラスの話なら、class-oriented programmingって呼ばれてるはず。" userName="zahlman" createdAt="2025-03-28T15:53:56" color="#ff5733">}}

{{<matomeQuote body="めっちゃわかる。解放感あるよね。抽象化のスープより、こういうコードの方が頭に入ってきやすい。わかると思うけど、golang好きなんだ。" userName="porridgeraisin" createdAt="2025-03-28T11:57:12" color="#ff5c5c">}}

{{<matomeQuote body="俺もそう。リファクタリングして、繰り返しを減らしたり、パラメータ化された関数を増やしたりするのも全然あり。<br>超抽象化されたマトリョーシカ・ラビオリみたいなのを探し回るのは、プログラミングで一番嫌いなこと。単純化するどころか、FactoryFactoryを作るために、12個のオブジェクトをいろんなファイルから探さないといけないんだもん。" userName="exe34" createdAt="2025-03-28T12:28:39" color="#38d3d3">}}

{{<matomeQuote body="どんな言語でも、教条的な構造やパターンを使うとこうなるって経験あるわ。アーキテクチャ宇宙飛行士たちは、ポイントを見失ってるんだよね。コンテキストがない未来のdeveloperがコードを理解しやすくして、変更が期待通りに動作するって確信を提供することなのに。<br>例えば、こんな感じで簡単にレールから外れる。<br>ルール1：関数は短く（50行以内）。<br>ルール2：public関数はinterfaceで実装（モックできるように）。<br>そうすると、プログラムのロジックを追いたいdeveloperは、interfaceの関数呼び出しでひたすら“定義へ移動”、そして“実装へ移動”して動作を探す羽目になる。これで思考の流れがぶった切られる。<br>さらにレベルアップすると、interfaceをマイクロサービスAPI（gRPC）に置き換える。プログラムのロジックを追うために、完全に違う複数のリポジトリをタブで切り替える必要が出てくる。新しいリポジトリを開くと、独自のアーキテクチャレイヤーがあるから、探してる関数の実装を見つけるためだけにウロウロしないといけない。<br>これらは藁人形論法じゃなくて、実際に複数の会社で見たパターン。もう全部の動作が1箇所に書いてある1000行の関数が恋しい。" userName="tzcnt" createdAt="2025-03-28T17:18:46" color="#785bff">}}

{{<matomeQuote body="おまけに、そのinterfaceの裏にある関数がテストで一度もモックされないとか。" userName="lpapez" createdAt="2025-03-28T19:32:27" color="">}}

{{<matomeQuote body="＞厳格なアーキテクチャパターン使ってるとこ（n=3）は、確かに“綺麗”だけど、コードが複雑すぎて、一見簡単なはずのタスクがめちゃくちゃ遅いんだよね。<br>前の職場に、まさにこんなPythonコードベースがあったわ。色んなパターンがあって、“正しい”ことをしたい人たちが実装して、巨大で遅いゴミだった。Python（pre-JIT）じゃ、ネイティブコンパイル言語やJVM言語ほどごまかせないんだよね。間接参照のレイヤーが増えるたびに、インタープリタで毎回実行されるから。<br>この本や他のアプリケーションアーキテクチャに関する本で気になるのは、要件に関係なく、最初から全部複雑さを焼き付けようとすること。実際の要求に応じて複雑さを追加するんじゃなくて。今必要な複雑さと、必要ない複雑さを両方実装しちゃうんだよね。製品が成長したら2年後に必要になるかもしれない複雑さを実装して、今の小さなチームにそれを押し付ける。製品を成功させるために必要な機能のコストを払って。<br>俺にとって、それはアーキテクチャの医療過誤だよ。さらに悪いことに、チームのprogrammerの考え方に影響を与える。コードをより抽象的にすることが常に良いことだって考え始めるんだ。コードは夢見た将来の機能の亡霊で肥大化して、将来のニーズを仮説的にサポートできるレイヤーが増える。“多い方が良い”っていう文化が、良い仕事をしたいジュニアprogrammerの間で広まって、何でもかんでも一般的なフレームワークを実装し始めて、コードベースがどんどん複雑になって、扱いにくくなる。そして、予想してたニーズが実際に現れると、それに備えて書いたコードは、だいたい負債になる。<br>昔の巨大なコードベースを振り返ると、単純な要求でほとんど複雑さが必要なかった部分が必ずあった。developerが幸運を受け入れて、そういう部分を単純にしておいたところは、比較的トラブルが少なくて、新しい要求に対応できた。developerが“正しく”やろうとして、コードベースのすべての部分を同じように複雑にしたところは、過剰に設計されたゴミで、自重で苦しんでた。<br>俺が考えるアーキテクチャの定義は、将来変更するのにコストがかかる設計上の決定のサブセット。良い設計の目標は、アーキテクチャを最小限に抑えて、元に戻すのにコストがかかる選択を避けること。ソフトウェアでは、存在しない問題を無視するっていう決定は、めったに元に戻すのに高くつく決定にはならない。問題が発生したとき、頭の中にしかなかった問題を解決するために作成されたソリューションを適応させるよりも、最初からやり直す方がほぼ常に安くて簡単。稀な例外はすごく重要で、光学的な観点からは、問題を間違って解決した方が、全く解決しなかったよりも賢く見えるけど、自分たちの価値と責任をその例外だけで判断しちゃいけない。" userName="dkarl" createdAt="2025-03-28T16:32:59" color="#45d325">}}

{{<matomeQuote body="＞この本や他のアプリケーションアーキテクチャに関する本で気になるのは、要件に関係なく、最初から全部複雑さを焼き付けようとすること。<br>問題は、厳密にその時まで待つと、基本的に全部何らかのリファクタリングが必要になるってこと。<br>夢は、新しい機能は新しいコードだけでできるってこと。リファクタリングとか既存のコードの修正じゃなくて。多くの人はすでにこの考え方に慣れてる。Webアプリで新しい“view”を追加するとき、他のviewに触る必要ないし、URLルーティングのロジックに触る必要もない。多くの人は、こういうことのために自分で実装するより、フレームワークに依存することに慣れてるだけだと思う。<br>問題は、フレームワークはビジネスのことを知らないってこと。プラグ可能なvalidation layerとかが必要な場合は、自分で実装する必要があるかも。<br>もちろん、欠点は、アプリケーションがどこで柔軟性を必要とするか、成長するかを予測するのが得意じゃないってこと。だから、全部にそれを組み込んで、不必要に複雑なコードになるか、何も組み込まないで、コードベースが成長するにつれてどんどん悪化する絶え間ないリファクタリングになるかのどっちか。<br>エンジニアが何が起こってるか早く見抜いて、必要なときに必要なことを実際にすれば、このアプローチはうまくいく可能性がある。残念ながら、俺の経験では、人は見よう見まねで行動するし、コードが柔軟性や拡張性をサポートしてないせいで、時間の大半を大規模なリファクタリングに費やしてるって気づくまでに時間がかかる。" userName="globular-toast" createdAt="2025-03-29T08:41:08" color="">}}

{{<matomeQuote body="＞夢は、新しい機能は新しいコードだけでできるってこと<br>新しい機能だけじゃない。新しいクロス・カッティング・ケイパビリティのこと。メトリクスを一度も出力したことがないアプリケーションからメトリクスを出力すること。既存のケイパビリティに新しい次元を追加すること、例えば、データベースしかサポートしてなかったアプリケーションに2番目のストレージバックエンドのサポートを追加すること。<br>こういう変更は、昔から予測することが重要だって教えられてきた。事前に計画してないと、後から追加するのはほぼ不可能だって。でも、現実のコードベースで数十年働いて、人々が将来のニーズを予測するために注ぎ込む労力とか、プラグ可能にすることとか、そういうのを見てきて、実際に必要なことが起きたときに、そういう事前に行われた推測作業がどれほど役立つかを目の当たりにして、準備されてなかったコードベースに追加するために必要な作業と比較して、ほとんど全部スキップすることを強く推奨するようになった。<br>＞残念ながら、俺の経験では、人は見よう見まねで行動するし、コードが柔軟性や拡張性をサポートしてないせいで、時間の大半を大規模なリファクタリングに費やしてるって気づくまでに時間がかかる<br>エンジニアが大規模なリファクタリングを繰り返してるなら、目の前にある現在のニーズを満たすようにコードベースを修正する以外に何をしてるの？<br>2つの選択肢を比較するときに覚えておくべきことは、選択肢に異なる採用戦略が含まれてない限り、それを実行する人は同じだってこと。現在のニーズを満たすことができない大規模なリファクタリングを繰り返してるdeveloperに、不確実な将来のニーズに備えてコードベースを準備するように頼んだらどうなると思う？はるかに難しい問題だから、もっと下手になるか、少なくとも良くはならないよ。" userName="dkarl" createdAt="2025-03-29T20:57:09" color="#ff5c5c">}}

{{<matomeQuote body="+100。パターンと抽象化はPythonだとマジでコストが高い。C++だとコンパイラのおかげでゼロコストになったり、JVM JITのおかげでコストがすごく低くなったりするけど、Pythonだと特にI/O処理やネットワーク呼び出しを追加し始めると、コストがめちゃくちゃ高い。" userName="slt2021" createdAt="2025-03-28T23:25:08" color="#45d325">}}

{{<matomeQuote body="この本のいくつかはすごく役立つ。特に、Pythonとか特定の言語よりも一般的なコンセプトについて話してるとき（イベント駆動アーキテクチャ、コマンド、CQRSとか）。<br>でも、他の部分にはいくつか問題があるし、経験の浅いdeveloperがそれを鵜呑みにして、全部一気に実装しようとするとどうなるか見てきた（これはこういうデザインパターンの集まりにはよくある問題）。<br>例えば、repositoryは一般的には役立つパターン。でも、多くの場合、本の例も含めて、複雑さを増やすだけで、メリットはほとんどない。SQLAlchemy使ってる場合は特にそう（SQLAlchemyはそれ自体が“repository”みたいなものだから。もっと正確に言うと、リレーショナルデータベースの抽象化レイヤーにORMが追加されたもの）。<br>同様に、サービスレイヤーとユニット・オブ・ワークは、複数の複雑なユースケースをカバーする複雑なアプリケーションには役立つけど、責任範囲の狭い小さなサービスのシステムでは、すぐに過剰に肥大化する。PythonのDependency injectionは論外。<br>デザインパターンで一番大事なのは、他のツールと同じように、いつ使うべきか、もっと大事なのはいつ使わないべきかを理解すること。この本にはそのためのアドバイスがいくつかあるけど、もっと目立つように、各章の終わりじゃなくて、最初に置くべきだと思う。" userName="BerislavLopac" createdAt="2025-03-28T09:57:38" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Repository patternが「複雑性を増すだけでメリットが少ない」ってどういうこと？めっちゃ軽量なパターンだと思うし、DBアクセスが必要なときは常に使うべきじゃない？関心の分離もできるし。結局、特定のentityに対するDBアクセスを全部1か所にまとめるってことでしょ。Repositoryの中身なんてどうでもいいじゃん。query実行するなりORM使うなり。" userName="kelafoja" createdAt="2025-03-28T10:16:30" color="">}}

{{<matomeQuote body="理論上は良いabstractionだしメリットもわかる。でも実際は、Repositoryの引数がそのままSQLAlchemyのselect()とかsession.query()に渡されるだけになりがちじゃん？SQLAlchemyのSession自体がもうRepositoryみたいなもんだし。Repository = Sessionってalias設定するとか、typingのためだけにSessionのメソッドのstub作るとかでも同じくらいdecouplingできるんじゃない？テストでDB触りたくないなら、modelをSessionにbindしなきゃいいし。" userName="bulatb" createdAt="2025-03-28T12:52:03" color="#38d3d3">}}

{{<matomeQuote body="なるほど、わかった気がする。SQLAlchemy自体はあんまり使ったことないんだよね。普段はORM使わずにquery書いてvalue objectにmapしてる。それをRepositoryに置くかな。DB構造とdomain modelをdecoupleするのも大事だと思うし。Person typeを3つのtableからjoinして作るみたいなことをRepositoryでやる、みたいな。SQLAlchemyを隠蔽しておけば、将来的に他のものにreplaceしやすいかもね。" userName="kelafoja" createdAt="2025-03-28T13:12:05" color="#785bff">}}

{{<matomeQuote body="でかいプロジェクトでSQLAlchemy使ったけど、session scopingとかDB hittingで色々問題あったな。SA modelはlazy loadingでpropertyにアクセスするだけでDBにquery投げちゃうことがあるし、debuggingがマジで大変。Pydantic DTOにflattenするのがおすすめ。type checkerがSA modelじゃ見つけられない問題を見つけてくれるかも。ただ、nested modelだと、事前に必要なfieldがわからないとoverfetchしちゃうんだよね。" userName="psd1" createdAt="2025-03-28T13:39:17" color="#45d325">}}

{{<matomeQuote body="Overriding lazy-loading optionsでoverfetching防げるよ。Author classのbooks relationshipにlazy=‘select’って設定してても、fetch_authors = select(Author).options(raiseload(Author.books))ってすれば、SELECTの代わりにエラーが出るようにできる。Queryがこっそり実行されてないかsmoke testで確認できるし、lazy-loadしたくないならrelationship(..., lazy=‘raise’)で最初から止められる。" userName="bulatb" createdAt="2025-03-31T08:02:37" color="#785bff">}}

{{<matomeQuote body="SQLModel[0]ってどう思う？いい感じにまとまってる？それともスパゲッティ？[0] https://sqlmodel.tiangolo.com/" userName="pbronez" createdAt="2025-03-28T14:30:27" color="">}}

{{<matomeQuote body="SQLModelはPydanticとSQLAlchemyのいいとこどりのはずだけど、DB tableにbackedされたSQLModel entityは作成時にfieldをvalidateしないんだよね。それってPydanticの意味なくない？" userName="unculture" createdAt="2025-03-28T15:17:51" color="">}}

{{<matomeQuote body="中身見ないとわかんないけど、「SqlModelはpydantic modelかつSA model」ってのが気になる。dynamic unintended-queryの性質が残ってそう。SqlModelをpet projectで使ったとき、many-to-manyの関係を表現するのが難しかった記憶がある。syntaxはSAより好きだったけど、systematicなbenefitよりsyntacticalなbenefitが大きい気がする。" userName="psd1" createdAt="2025-03-29T15:16:20" color="">}}

{{<matomeQuote body="小さいappならYAGNIって意味。でかいappなら、理論的な区別が現実になる場所が絶対出てくる。data modelをstorageからdecoupleするのはマジで大事だし、Sessionだけじゃ無理。SQLAlchemyはflexibleだよ。必要なら3つのtableからPersonをmapできるし。＞I prefer not to use ORMs but just write queries and map the results into value objects. That work I would put into a Repository.＜”それな。”って感じ。stdlib sqlite3の上にbuildしてれば、YAGNIってdismissされなかったかもね。" userName="bulatb" createdAt="2025-03-28T14:27:01" color="#38d3d3">}}

{{<matomeQuote body="SQLAlchemy Sessionはunit of work (UoW)でもあるんだよね。bookの最後の方で、UoWを使ってserviceからemitされたeventをcollectしてdispatchしてる。SQLAlchemyをそのまま使ってたらどうしてたんだろ？UoWが必要になるまで実装を待つべきって意見もあるかもだけど、そうなると数百か所の呼び出し元コードを書き換えることになるじゃん。最初からbuildしとけばいいじゃん。Repository patternは全てに使えるし。" userName="globular-toast" createdAt="2025-03-28T14:41:52" color="#ff33a1">}}

{{<matomeQuote body="Repositoryの意味ってみんな意見違うよねー。SessionはUoWだし、object-scoped persistenceの意味ではrepositoryでもあるし、他にも色々兼ねてる。Sessionがちょっとくらい漏れてても許容範囲かな。application-levelなことは実装するけど、lower layerのversionをwrapする必要はないと思う。<br>ユーザーがPOSTでfilterして、それがrepository queryに渡すhigh-levelなFilterになるとき、どんな感じになる？結局Query.filter()みたいになるでしょ？repositoryから欲しい数を選ぶときも、Query.first()とかQuery.one()とかQuery.filter().filter().filter().all()になるし。<br>SQLにbindされてるけど、literal senseだけ。APIはどんな場合でもそうなると思う。benefitがcostを上回るなら、そうあるべきだって考える。<br>idealじゃないし、完全にcorrectでもないけど、まあいいし、simpleじゃん？" userName="bulatb" createdAt="2025-03-28T15:39:00" color="">}}

{{<matomeQuote body="コメントの最初のsentenceで読むのやめちゃった？SQLAlchemyをrepository/UoWとして使うなら、どうやるかっていうspecificな質問をしたんだけど。" userName="globular-toast" createdAt="2025-03-28T16:43:38" color="">}}

{{<matomeQuote body="それ、serviceでやるんだよ。" userName="yahoozoo" createdAt="2025-03-29T11:53:49" color="">}}

{{<matomeQuote body="SQLとreal-worldのdatabase schemaってどっちもcomplexだから、optimally fetchするためには、entity-specificなmethodがuse caseごとに必要になるか、builderをexposeする必要がある。でもそれならquery builder使えばよくない？<br>Repository patternはCRUDにはいいけど、CTEsが2つと4つのjoinが必要なqueryとかには向かないよね。" userName="deergomoo" createdAt="2025-03-29T18:03:15" color="#ff33a1">}}

{{<matomeQuote body="Repository patternはdatabase layerをswitchする必要があると感じてるならusefulだけど、そんなの見たことないなー。ただのduplicate codeになるだけじゃん。" userName="unculture" createdAt="2025-03-28T11:34:29" color="">}}

{{<matomeQuote body="alternativeは何を使ってるの？cleanでseparatedでmaintainableな方法でdata accessを提供するにはどうしてる？<br>俺はたくさん見てきたし、たくさん使ってきたよ。database layerをswitchするために使ったことはないけどね。careerが全然違うみたいだ。<br>codeがduplicateされるってのもよくわからない。database access codeをいろんな場所に置かないで、一箇所にまとめるだけじゃん。" userName="kelafoja" createdAt="2025-03-28T12:23:52" color="">}}

{{<matomeQuote body="OK、まずdefineしよう。<br>話してるのは、domain entitiesをpersistenceからisolateする”transformation”か”mapper”layerのことだよね。これが”Repository”なら、マジでagree。それがproblemに対するrightなapproachだと思う。<br>でも”Repository pattern”がabstractとconcrete classesとinheritance treesのcomplexなstructureを意味するなら、usually overkillでrarely a good ideaだと思う。" userName="BerislavLopac" createdAt="2025-03-28T12:59:07" color="#45d325">}}

{{<matomeQuote body="Thanks。complexなstructureの(abstract) classesとかinheritance treesはRepository patternとは関係ないと思ってる。<br>Repository patternはData Access Object (DAO) patternのgeneralizationで、synonymouslyに扱われることもあるよね。<br>俺のimplementの仕方は、entityごとにdatabase accessを提供するclassを作るって感じ。例えば、Person (complexじゃなくて、ただのvalue object)とPersonRepositoryがあって、Person objectを取得、update、deleteする。<br>で、projectのcomplexityとscopeに基づいて、Personがdatabase tableとかstored object/documentに1-to-1でmapされるか、business domainでmore complexなobjectになって、repositoryがfetchとconstructのためにmore workをするかだね。" userName="kelafoja" createdAt="2025-03-28T13:06:49" color="#ff5733">}}

{{<matomeQuote body="＞for each entity have a separate class to provide the database access<br>訂正させて。database accessが必要なentityごとに、ね。layerの話をしてるのはそういうこと。entityがdirectly persistedされないで、other entitiesの”parts”か”relations”としてだけpersistedされる場合もあるし、persistence implementationがvery complexな場合もある (例えば、RDBにstoredされるentityもあれば、filesystemにstoredされるentityもある) し、clearなmappingがない場合もある。<br>domain entityごとにapproachしてほしい。”persistability”はessentially just another propertyで、each caseにapplyされるかもしれないし、されないかもしれない。" userName="BerislavLopac" createdAt="2025-03-28T13:42:15" color="#45d325">}}

{{<matomeQuote body="Naturally、Repositoryはdata(base) accessのpatternだから、persistedされないobjectとは関係ないはず。persisted objectの意味で”entity”を使ったんだけど、わかりにくくてsorry。" userName="kelafoja" createdAt="2025-03-28T15:43:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="えーと、それもまた完全に単純じゃないんだよねー。「永続化されたオブジェクト」って一体何さ？ここには通常エンティティと呼ばれるものが2つあるよね。<br>1．ドメインエンティティ。これは通常、コードベースでネイティブオブジェクトとして表現されるもの。こいつらは、永続化する必要があるかどうかとか、どうやって永続化するかとか全く知らない。<br>2．データベースエンティティ。これはー少なくともRDBではーテーブルで表現される。<br>最初のタイプのエンティティが、2番目のタイプのエンティティに1対1で簡単にマッピングできることは珍しくないけど、それは保証されてないんだよね。そうだとしても、Pythonの整数型にはPostgreSQLに直接相当するものがないとか、2つの「世界」の違いからエンティティは異なるものになるよね。<br>さっきの僕の「修正」では、ドメインエンティティについて話してたんだ。だから「データベースアクセスが必要」っていう言い方は完全には正しくないんだよね。「永続化される必要がある」って言うべきだったかな。" userName="BerislavLopac" createdAt="2025-03-29T01:02:30" color="">}}

{{<matomeQuote body="それ見たことあるけど、もちろん厳格なパターンの強制はなかったから、リークの悪夢で、変更は中途半端に実装されたままになり、2つのデータベースが使用中になっちゃった。" userName="lazyasciiart" createdAt="2025-03-31T03:05:38" color="">}}

{{<matomeQuote body="リポジトリパターンはテストに便利だと思うんだよねー。SQLAlchemyがする必要があることをモックするよりも、リポジトリをモックする方がずっと簡単だし。" userName="mosburger" createdAt="2025-03-28T12:26:40" color="#ff33a1">}}

{{<matomeQuote body="僕はめったにリポジトリをモックしないな。データベースをモックするのは単体テストには良いし、実際のDBを使うよりずっと速いけど、DBとDBアプリケーションのインターフェースはバグが発生しやすい場所なんだよね。だから実際のDB（本番と同じエンジン）を使うことで、自分のコードが実際に動くって確信が持てるんだ。テストを書くのが難しくなったり、少し遅くなったりするけど、モックする可能性が最も低いものかな。" userName="williamdclt" createdAt="2025-03-28T16:48:55" color="#ff5733">}}

{{<matomeQuote body="要するに、YAGNIってことだね。<br>以前、マイクロサービスにリポジトリパターンを使うように強く勧めてきた上司がいたんだ。チームは試してみたかったんだけど、他のコメンターが言ってるように、うまくいったけど実際には必要なかったんだよね。だから、それはただ別の抽象化レイヤー、コード、テストとしてそこに座ってるだけで、誰も恩恵を受けなかった。<br>逸話だけど、プロジェクトは9か月後に停止されたんだ。時間がかかりすぎたからね。リポジトリパターンを使うという決定が最後の引き金になったわけじゃないけど、ユースケースに必要なものよりも複雑なパターンを使うことが根本にあったと思う。" userName="ryan-duve" createdAt="2025-03-28T12:01:19" color="">}}

{{<matomeQuote body="考えられる代替案は何だったのか、教えてもらえますか？<br>リポジトリパターンが自分が理解しているものとは違うのか、それともここで誤解があるのか、今学んでいるところです。<br>データベースアクセスコードをリポジトリに隠すことが、どうして複雑なコード、長い開発時間、プロジェクト全体の失敗につながるのか理解できません。" userName="kelafoja" createdAt="2025-03-28T12:26:32" color="">}}

{{<matomeQuote body="リポジトリパターンの理解は正しいよ。このスレッドの他の人たちが誤解してたり、間違って実装してるみたいだね。僕は事実上すべてのサービス（適切な場合）でリポジトリパターンを使っていて、それは信じられないほどシンプルで、テストとドキュメント化が簡単で、同僚に教えやすいんだ。ほとんどのサービスがリポジトリパターンを使ってるから、慣れてないプロジェクトでもすぐに状況を把握して、ビジネスロジックを見つけたり、修正を加えたりする場所がわかる。<br>注意すべきこととして、リポジトリパターンはデータベースアクセス専用だと言ってたけど、それは本当じゃない。データベース、別のHTTP API、普通のファイルシステム、gRPCサーバー、ftpサーバー、メッセージキュー、メールサービスなど、他の場所からデータを取得する必要があるあらゆるタイプのサービスにリポジトリパターンを使用できるんだ。<br>これは僕にとって非常に役立ってて、僕の会社がやってることの1つは、他の多くのAPIからデータを集約することなんだ（whoisレコードとか）。契約上の問題とか、もっと良いもの/安いものを見つけたとかで、プロバイダーを切り替えなければならないことが何度もあった。実装を交換できることは非常に役立った。ビジネスロジックレイヤーとそのユニットテストは全く触る必要がなかったからね。<br>今の役割を始める前は、メッセージキューにkafkaを使ってたんだ。rabbitに切り替える大きな取り組みがあって、kafkaのものをすべて取り除いてrabbitのものに置き換えるのは非常に苦痛で時間がかかり、切り替えが今日までずっと問題が残ってる。リポジトリパターンを使ってたら、切り替えは朝飯前だっただろうね。" userName="ddejohn" createdAt="2025-03-28T18:21:57" color="#ff33a1">}}

{{<matomeQuote body="ありがとう。ちょっと不安になってたんだ。なぜ僕の頭の中でそれがデータベースアクセスだけに密接に結びついていたのかわからない。他の種類のデータ検索にも適用するのは理にかなってるね。洞察をありがとう!" userName="kelafoja" createdAt="2025-03-29T13:26:10" color="#45d325">}}

{{<matomeQuote body="そんなことないよ。使ってみて。簡単だよ。" userName="esafak" createdAt="2025-03-28T13:19:49" color="">}}

{{<matomeQuote body="＞そしてPythonでのdependency injectionなんて話したくない。<br>dependency injectionについて話させてくれる？それともどこから始めたらいいか教えてくれる？僕は主にPythonでコードを書いてるんだけど、dependency injection、つまり関数が必要な入力をすべてパラメータ経由で与えることは、プロジェクトを設計する上で価値のある原則だと思うんだ。" userName="ryan-duve" createdAt="2025-03-28T11:56:43" color="">}}

{{<matomeQuote body="結果の50%が出る1%の改善案だよ。これに変えてみて。<br><br>class C:<br> def __init__(self):<br> self.foo = ConcreteFoo()<br><br><br>これをこう！<br> class C:<br> def __init__(self, foo: SupportsFoo):<br> self.foo = foo<br><br>SupportsFooはProtocolね。これだけ！" userName="d0mine" createdAt="2025-03-28T19:16:03" color="">}}

{{<matomeQuote body="＞経験の浅い開発者が鵜呑みにして、全部一度に実装しようとするとマジでヤバいってのはよくある話だよね。<br>この本では、そうしないようにハッキリ書いてあるじゃん。<br>＞同じように、サービスレイヤーとかUnit of Workは、複雑なユースケースが複数ある大規模なアプリには役立つけど、責任範囲が狭い小さなサービスで構成されたシステムだと、すぐに肥大化しちゃうんだよね。PythonでのDIなんて考えたくもない。<br>サービスレイヤーとDIは、関数型プログラムを書くのにマジで役立つと思ってる。Celeryを使った分散画像処理サービスでプラグインとして使える複雑な画像処理スクリプトがあるんだけど、サービスレイヤーとDIのおかげでマジ助かってる。こんな感じになる。<br>dependency.do_thing(params)<br><br>こうなる:<br>do_thing(dependency, params)<br><br>こっちの方がずっとテストしやすいし。I/Oを全部モックしてライブ環境で画像処理タスクを実行したり、Celeryのモック版で本物の画像処理タスクを実行したりできる。デプロイする前に、いろんな関数をエンドツーエンドでテストできるんだよね。Result型をサービスレイヤーで使うと、エラー情報をWebクライアントにちゃんと伝えられるし、プログラムがクラッシュするのを防げる。だって、エラー処理は全部サービスレイヤーの関数でやってるから。" userName="wormlord" createdAt="2025-03-28T14:49:36" color="#785bff">}}

{{<matomeQuote body="Celeryのモックってどうやってるの？<br>タスクをすぐに実行するか、Celery.delayとかはテストしないで、内部の関数だけテストするって方法しか知らない。" userName="wbc" createdAt="2025-03-28T17:21:57" color="">}}

{{<matomeQuote body="自作のCeleryオブジェクトをモックしてるよ。Groups、Chords、Chains、Signatures、Celery backend、タスクのディスパッチを全部モックしてる。全部ローカルで同じスレッドで実行されるから、すぐに終わるんだけど、ワークフローはちゃんと動くんだ。タスクの出力が次のタスクに渡されたり、タスクが更新されたりする。<br>Celeryとか、signatureとかchainとかの関数をタプルにしてサービスレイヤーの関数に渡してる。<br>ワークフローのパイプ処理がちゃんと設定されてるかテストするのが主な目的。結合テストで引数が間違ってないか確認する手間が省ける。" userName="wormlord" createdAt="2025-03-28T17:52:05" color="#ff5c5c">}}

{{<matomeQuote body="俺もそう思った。パターンを見るのは面白いけど、いつ使うのが一番いいか、ガイダンスがあると助かる。パターンがツールなら、いつ使うべきか、避けるべきか教えてほしい。pros and consセクションで触れてるけど、順番とか強調の問題かも。<br>新しいビジネスを始めるために小さなWebアプリを作って、Pythonを学びながら実装したんだけど、この本のおかげで簡略化できるパターンがいくつか見つかった（避けたいパターンもあるけど）。" userName="jbs789" createdAt="2025-03-28T10:59:23" color="#ff5733">}}

{{<matomeQuote body="＞とは言え、いくつか問題点もあるし、経験の浅い開発者が鵜呑みにして、全部一度に実装しようとするとマジでヤバいってのはよくある話だよね（こういうデザインパターンの本にはありがちな問題だけど）。<br>Robert Martinとかがその例だね。Clean Codeとかいうゴミで経験の浅い開発者を洗脳して、何十億ドルも損害を出してる。<br>ソフトウェアエンジニアリングは自然科学じゃないから、銀の弾丸なんてないんだよ。トレードオフだらけ。だから、唯一の正解を知ってるなんて言うやつは、犯罪者予備軍か初心者だよ。" userName="SaturnIC" createdAt="2025-03-28T10:59:16" color="">}}

{{<matomeQuote body="Clean Codeには役立つTipsとかテクニックがたくさん載ってるよ。<br>批判してる人は、何百ページもあるうちの1、2ページからコンセプトを拾ってきて、本全体を否定するんだよね。それは、フットガンになる可能性のあるコンセプトを紹介するよりもっと酷い間違いだよ。<br>経験豊富なエンジニアになるってことは、ツールキットからいつ、どこでツールを使うかを学ぶってことなんだよ。" userName="0xpgm" createdAt="2025-03-28T11:08:52" color="">}}

{{<matomeQuote body="Typescriptのdevだけど、この本は一番好きなアーキテクチャ本の一つ。いつも参考にしてる。お気に入りのパターンは、テスト用のフェイクUnit of Work/サービスパターン。サードパーティ製のサービスをフェイクするのにマジで使える（モックじゃないよ！！）。命名の悩みにも役立ったし。例えば、イベントの名前を、インフラとかパターン固有の方法じゃなくて、ドメイン固有の方法で命名することを推奨してる（例：CART_ITEM_BECAME_UNAVAILABLEは、USER_NOTIFICATIONよりも良い）。当たり前のことだけど、チームメイトに説明するのが面倒だから、Cosmic Pythonがオンラインで読めるのはマジ助かる。全体的に見て、すごく参考になる本！" userName="seveibar" createdAt="2025-03-28T07:13:26" color="#ff33a1">}}

{{<matomeQuote body="この本は知らなかったけど、著者のHarry J. W Percivalは、TDDの”goat”本の著者なんだね。<br>https://www.obeythetestinggoat.com/pages/book.html<br>あの本も、僕の心の中で同じような位置を占めてる。仕事でPythonを使うことはほとんどないけど、違う言語を使ってても何度も読み返してる。あの本がオンラインでも紙媒体でも読めるのも素晴らしい。<br>この本もぜひ読んでみる！" userName="serial_dev" createdAt="2025-03-28T07:41:11" color="#45d325">}}

{{<matomeQuote body="あの本の新しいアップデート版が今年リリースされるらしいよ。" userName="cinntaile" createdAt="2025-03-28T08:08:21" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="faking（モックじゃないよ！！）についてだけど、これおすすめだよ。<br>https://martinfowler.com/bliki/TestDouble.html" userName="BerislavLopac" createdAt="2025-03-28T09:10:12" color="">}}

{{<matomeQuote body="いつでもモックよりFakesだよね" userName="incangold" createdAt="2025-03-28T11:11:49" color="">}}

{{<matomeQuote body="Pythonは良い感じのglue言語だと思う。<br>強制的なOOPの考え方にはうんざりしたなー。全部カプセル化とか継承させなきゃいけないし、privateフィールドばっかりでメソッド経由で設定するとかさ。<br>SOLIDとかclean codingとかclean architectureとかGoF patternsとかUncle Bobにも飽きた。<br>Kingdom of NounsとかFizzBuzz Enterprise Editionsももういいって感じ。<br>今はできるだけOOPを使わないで、命令型とか関数型の流れで書いてるよ。Pythonをたまに使うときは（使いたくないわけじゃないけど、仕事で.NETメインだから）、オブジェクトとかパターンから解放されたいんだよね。この本に価値がないって言ってるんじゃないよ。学ぶことはあると思う。でも、現実のプログラミングに全部当てはめようとしちゃダメだよ。パターンとかオブジェクトとかSOLIDにこだわりすぎないで。" userName="DeathArrow" createdAt="2025-03-28T11:49:15" color="#45d325">}}

{{<matomeQuote body="俺のお気に入りは、できるだけpure functionを書いて、次に外部とやり取りする引数1～4個のfunctionを書いて、それからdomain objectでラップするってやり方かな。こうすると、関係ない複雑さをdomainから排除できるし、object全体が必要ないときでもfunctionを再利用できるんだ。" userName="exe34" createdAt="2025-03-28T12:30:55" color="#785bff">}}

{{<matomeQuote body="domain driven designがうまくいくとは思えないんだよね。Objectは現実世界をうまくモデル化できないじゃん。なんでDDDが現実世界とかビジネスをうまくモデル化できるって思うの？そもそもモデル化する必要ある？<br>コンピューターは人間とは違うんだし。<br>俺は現実的に、お金/時間/複雑さの面で一番良い解決策を考えるべきだと思うな。コンピューターで人間の思考を真似ようとするんじゃなくて。だって、トラックは馬車を真似てないし、飛行機は鳥を真似てないでしょ。" userName="DeathArrow" createdAt="2025-03-28T13:11:36" color="">}}

{{<matomeQuote body="＞domain driven designがうまくいくとは思えないんだよね。Objectは現実世界をうまくモデル化できないじゃん。“DDDはOOPを必須としないよ。関数型言語でもDDDできるし。F#の本もあるくらいだし。だから、OOPが現実世界をうまくモデル化できないって結論は出せるかもしれないけど、それをDDDにまで広げるのは違うと思うな。DDDがうまくいかないって思うDDD固有の理由ってある？”<br>＞そもそもモデル化する必要ある？“まあ、モデルの定義によるけど、ソフトウェアを書く時点で何かしらをモデル化してるんじゃない？ソフトウェアのどこかに、ユーザーのthingy/record/object/type/dictionary/structがあるはずで、それは現実の人物の不完全な表現だよね。つまり、モデルじゃん。”" userName="wesselbindt" createdAt="2025-03-28T15:32:52" color="#ff5733">}}

{{<matomeQuote body="ソフトウェアでモデル化する違いは、ソフトウェアを実行できるからフィードバックが得られるってこと。DDDのドキュメントは実行できないじゃん。" userName="procaryote" createdAt="2025-03-29T08:56:18" color="">}}

{{<matomeQuote body="DDDについて無知でごめん。ドキュメントって何のこと？" userName="wesselbindt" createdAt="2025-03-29T16:31:13" color="">}}

{{<matomeQuote body="DDDはobjectの話じゃないんだよ。domain（現実世界）を今あるツールでモデル化するって話。Objectでモデル化するのが最適なものもあれば、functionとか他のものでモデル化するのが最適なものもある。<br>一番重要なのは、domainについて話すための共通言語を確立すること。これがめちゃくちゃ強力。共通言語を話せない人と一緒に仕事したことある？アイデアがちゃんと伝わらないから、全部3倍時間かかるし、誤解も生まれる。コードも同じ。もしコードが全部コンピューターの言葉で書かれてたら、ビジネスの言葉をコンピューターの言葉に翻訳することになる。これには時間がかかるし、ミスも起きやすい。ビジネスの人はコードが読めないからチェックできないし、コーダーはビジネスを知らないからチェックできない。<br>抽象化を作る目的は、domain expertの言葉に近い言葉でコードを書けるようにすること。DDDはその一つの例だけど、基本的な考え方はSICPまで遡る。" userName="globular-toast" createdAt="2025-03-28T13:57:32" color="#38d3d3">}}

{{<matomeQuote body="優秀なコーダーは、コードをチェックできるくらいビジネスについて学ぶ。domain expertは、動いているソフトウェアを見ればわかる。<br>DDDを使うと、domainでもソフトウェアでもない第三のモデルができて、domain expertとプログラマーの両方がそれを維持して理解するために余計な労力が必要になる。<br>さらに悪いことに、最初からこのモデルを作ろうとする人が多い。それは間違っていて、実装が難しくて、実際に何かをリリースしたい場合はおそらく捨てられることになる。" userName="procaryote" createdAt="2025-03-29T09:07:16" color="#ff5733">}}

{{<matomeQuote body="みんなドメインって言葉に過剰反応して、DDDっていう特定のカーゴカルトと混同してるんじゃないかな。アジャイルも同じで、実践されてるものはたいていカーゴカルト版で、メリットなしに公式プロセス分のコストがかかるんだよね。<br>俺が言いたかったのは、一番シンプルな意味でのドメインモデリングだよ。マーケットとトレーディング戦略と、マーケットのシミュレーションバージョンの3つのオブジェクトを作っただけ。書類とか一切なし。" userName="exe34" createdAt="2025-03-30T07:30:18" color="#ff5c5c">}}

{{<matomeQuote body="オブジェクトって結局はプロパティの入れ物でしかないんだから、その事実を活用した方が、そうじゃないシステムよりも理解しやすいシステムになるよね。<br>例えば、今仕事でシステムのCSVアウトプットをパースするテストをリファクタリングしてるんだけど、現状だとハードコードされた配列のインデックスに依存してて、めちゃくちゃなんだよね。そこで、CSVファイルの各エントリをモデル化するためにdataclassをいくつか定義して、そのオブジェクトを使ってテストを書いたら、テストがすごく快適になったし、理解しやすくなったよ。" userName="supriyo-biswas" createdAt="2025-03-28T13:26:37" color="#ff5733">}}

{{<matomeQuote body="俺も今は同じように考えてるよ。オブジェクト指向なのか、そうじゃないのか、ハイブリッドなのかとか、もうどうでもいいんだよね。<br>仕事の小さいプロジェクトで、大きな中央設定を中心にインフラコンポーネントを連携させるのが主なものなんだけど、まさにそんな感じ。APIとかJSONの設定をパースするためにdataclassとか、Pydanticモデルを定義すると、タイプヒントが使えるし、可読性も上がる。<br>もし、たくさん“compute_some_thing(some_object)”みたいなのがあることに気づいたら、そのオブジェクトの@propertyにすれば、“some_object.some_thing”で使えるようになる。<br>もし、foo-objectの属性をたくさん移動させてbar-objectを作ることが多いなら、@classmethod Foo.from_barとか@property Bar.as_fooを導入してみたら？FooとBarの関係がもっと明確になるよね。<br>OOPは、レガシーなJava Enterprise Projectsみたいなひどいものじゃなくてもいいんだ。ドメインの密接に関連するアイデアをカプセル化する、いくつかの趣のあるオブジェクトを含む手続き型コードの集まりでもいいんだよ。" userName="tetha" createdAt="2025-03-28T15:39:23" color="#ff5c5c">}}

{{<matomeQuote body="俺の経験上、DDDの話が出ると、プロジェクトは何か月もドキュメントばかり作って、実装段階になったら複雑さが制御不能になるってパターンが多い。そして、たいてい出荷されない。<br>うまくいく人もいるかもしれないけど、俺は何度もそういうシナリオを見てきたから、DDDは危険信号としか思えない。" userName="procaryote" createdAt="2025-03-29T08:54:21" color="">}}

{{<matomeQuote body="これは自分のためのモデルなんだ。簡単なbtcのトレーディングボットを書いたんだけど、主要なオブジェクトはMarket()、TradingStrategy、SimulatedMarketの3つだった。SimulatedMarketは過去のデータを使ったよ。<br>個々のトランザクションとか手数料とかはオブジェクトとしてモデル化しなかった。戦略に関連するものを1つのオブジェクトにカプセル化して、マーケットオブジェクトがget_price()、buy()、sell()みたいなものを提供してくれて、シミュレーションバージョンでも利用できるようにしたかったんだ。" userName="exe34" createdAt="2025-03-28T13:29:12" color="#45d325">}}

{{<matomeQuote body="もし3つの異なるドメインをうまくカプセル化できれば、ブローカーを切り替えても外部依存関係がないはず。関数とかドメインを深くして。" userName="abirch" createdAt="2025-03-28T13:39:35" color="">}}

{{<matomeQuote body="Pure functionsはテストしやすいよね。" userName="auc" createdAt="2025-03-28T14:59:20" color="">}}

{{<matomeQuote body="えーと、何をするんだっけ？<br>・SQLAlchemyのモデルを再実装する（“リポジトリ”と呼ぶ）。<br>・SQLAlchemyのセッションを再実装する（“unit of work”）。<br>・モデルを使わない“サービスレイヤー”を追加する。モデルの属性をすべて個別の関数パラメータに展開する。その方が結合度が低いから。<br>・すべてをメッセージバスに分散させて、デバッグの希望をなくす。<br>・しかも、これは書き込みの場合だけ！<br>・読み込みの場合は、生のSQLを使ってクエリする、別の非正規化されたテーブルを用意する。（マジで、12章を見てくれ）<br>MADE.comがどれくらいのトラフィックを処理してるか見てみよう。デスクトップとモバイルからの合計訪問数は先月50万回。つまり、1分あたり12回表示されるだけ。<br>ああ、俺の仕事もDDDについて一日中書いていられるくらい楽だったらいいのにな。" userName="throw1222212121" createdAt="2025-03-29T02:04:43" color="">}}

{{<matomeQuote body="本の75%くらいまで読んだけど、本の中で議論されてることが全部常にやるべきことだとは思わないよ。議論されてる各パターンには、メリットとデメリットのまとめがある。ちょっと足りないかもしれないけど、パターンがアプリケーションのニーズに合ってるかどうか考えるべきだってことは明確に述べてる。<br>本の中のすべてが必要なアプリケーションは少ないと思うけど、議論されてる1つ以上のパターンを適用できるアプリケーションはたくさんあるはず。" userName="florbo" createdAt="2025-03-29T02:29:53" color="#785bff">}}

{{<matomeQuote body="数年前からPythonを仕事で書き始めたんだけど、KotlinとかTypeScriptの経験があったから、言語自体はすぐ慣れたんだよね。でも、疎結合とかテストのしやすさを実現するイディオム的なやり方がわからなくて苦労してたんだ。<br>同僚に勧められてこの本を買って全部読んだら、Pythonの複雑なコードベースを管理する方法がマジで理解できた。全部のパターンに従ってるわけじゃないけど、何ができるか、他のパラダイムでの経験をどうPythonに応用できるかがわかったよ。JavaおじさんPythonみたいにならずに済んだってわけ。超おすすめ。値段以上の価値あり。" userName="localghost3000" createdAt="2025-03-28T15:00:42" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
