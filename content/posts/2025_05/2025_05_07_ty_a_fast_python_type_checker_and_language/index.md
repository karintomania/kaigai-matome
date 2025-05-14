+++
date = '2025-05-07T00:00:00'
months = '2025/05'
draft = false
title = '爆速Python型チェッカー＆言語サーバーTyに注目！'
tags = ["Python", "型チェッカー", "言語サーバー", "開発ツール", "高速"]
featureimage = 'thumbnails/green4.jpg'
+++

> 爆速Python型チェッカー＆言語サーバーTyに注目！

引用元：[https://news.ycombinator.com/item?id=43918484](https://news.ycombinator.com/item?id=43918484)




{{<matomeQuote body="👋Astralの者です😊<br>どうやら幅広い発表のために準備している、あまり秘密じゃないリポジトリを見つけたみたいですね🙂これはプレアルファ版のソフトウェアであることに注意してください。現在のバージョンは0.0.0a6で、これまでのリリースはすべてリリースプロセスを検証するためのものです。皆さんにこれを使ってもらうのは楽しみですが、実運用可能になるまでにはまだたくさんの作業が残っているという期待値を設定したいです。<br>近いうちにもっとニュースにご期待ください！<br>（... Astralで働いています）" userName="zanie" createdAt="2025/05/07 18:55:04" color="#45d325">}}




{{<matomeQuote body="Pythonが実運用アプリを作る言語として私の目にかなう（今は断じて違うけど）可能性が、一般的なPythonパッケージのエコシステム全体で型チェッカーが機能するようになれば、かもしれないね。<br>例えば、最近私が苦労して分かったように、SQLAlchemyはpyrightをあらゆる形で壊すんだ。Prismaみたいな他の”動的な”ORMが型とどう連携するかと比べると、まさに惨事で、それを使うアプリの型チェックはほとんど無意味になる。<br>TyはSQLAlchemyとうまくいくの？" userName="davedx" createdAt="2025/05/08 05:16:19" color="#38d3d3">}}




{{<matomeQuote body="もし言えるならだけど、型付けできないライブラリ（stubsでは表現できない型、例えばDjango、PEP-681前のdataclasses、pytest fixturesなど）でも型チェックが機能するように、プラグインや拡張機能の実装について何か考えはある？" userName="12_throw_away" createdAt="2025/05/07 19:31:39" color="#38d3d3">}}




{{<matomeQuote body="今のところプラグインアーキテクチャの予定はないよ。現在のtyping specでは型付けが簡単ではない（または不可能）な人気のライブラリやコードパターンがあることは認識している。Tyだけでなく他の型チェッカーも恩恵を受けられるようにtyping specの変更を推進したり、人気ライブラリの回避策をTy自体に直接実装したりする方がより有用だと感じてる。そうすればライブラリ作者が特定のプラグインをインストールするようダウンストリームの利用者に頼る必要がなくなる。<br>（また、プラグインを効果的にサポートするのは、Tyみたいな型チェッカーではruffみたいなリンターよりも難しいんだ。なぜなら非自明なユースケースは、我々が型を表現する方法や型推論を実装する方法に深い変更を要求する可能性が高いから。それはいくつかのシンプルなフック拡張ポイントには向いていないことなんだ。）" userName="dcreager" createdAt="2025/05/07 20:38:32" color="#ff33a1">}}




{{<matomeQuote body="プレアルファ版ソフトウェアなのに、私のプロジェクトでは素晴らしい動きだよ。ちゃんと型アノテーションしたつもりだったけど、Tyからたくさんのフィードバックをもらった。すごい仕事だ、リリースが待ちきれないね。" userName="BewareTheYiga" createdAt="2025/05/07 19:52:28" color="#38d3d3">}}




{{<matomeQuote body="specの改善とかは素晴らしいけど、100％正直に言うと、ユーザーとしては自分のニーズに合わせられる型チェッカーの方がいいな。言ってたように、Pythonみたいな動的言語のコードパターンの中には、カスタムコードなしでは型チェックが難しいか不可能ものがある。型チェッカーはかつてないほど人気になってて、これは暗黙的にこういうコードパターンが推奨されなくなることを意味する。一方で、Pythonのダイナミズムは言語の核だと思う。他方で、型チェッカーなしで共同作業するソフトウェアは絶対書きたくない。だから、型チェッカーの恩恵を受けるために、たまにそれを喜ばせるために悪いコードを書かざるを得ないんだ。<br>uvとruffがどれだけ早く普及したか考えると、あなたのプロジェクトがどれだけ影響力を持つかきっと分かってると思う。プラグインサポートが難しいのは理解してる。でも、人気ライブラリのサポートを検討するなら、IMHO、サードパーティの作者も利用できるように、ある程度汎用的な方法で実装の実現可能性を評価してくれるとコミュニティにとって本当に有益だと思う。<br>いずれにしても、素晴らしい全ての仕事に感謝します。" userName="tyrion" createdAt="2025/05/07 22:24:56" color="#ff5733">}}




{{<matomeQuote body="これはPythonの型付けシステムの弱点で、個々の型チェッカーの問題とは限らないよ。Pyrightは標準化されたものだけを実装する方針で、Pythonの型システムはそこら辺の実世界のPythonコードのほとんどにアノテーションするには単純に不十分なんだ。もう何年も経つのに、kwargsのちゃんとした型付けみたいな基本的なこともまだサポートされてない。<br>Tyがもし反抗してPythonの型標準を無視すると決めればこれを解決できるかもしれない（正直、それはありがたいけど）、でももし賢明なアプローチを取って標準に従うなら、何も変わらないだろうね。" userName="reubenmorais" createdAt="2025/05/08 07:16:26" color="#ff33a1">}}




{{<matomeQuote body="Instagramはプロダクションでの実用性について言いたいことがあるかもね。" userName="Spivak" createdAt="2025/05/08 08:58:16" color="">}}




{{<matomeQuote body="俺の経験だと、これほぼ無理なんだよね。解決策はtyping導入後に書かれた新しいパッケージだよ。SQLAlchemyはわかんないけど、pandasみたいなライブラリだとどうやるのか想像つかないし、だからみんな積極的にモダンで型付きの代替に置き換えてるんだ。" userName="jakewins" createdAt="2025/05/08 05:22:10" color="">}}




{{<matomeQuote body="以前Pyrightでチェックしたことあった？" userName="IshKebab" createdAt="2025/05/07 20:01:27" color="">}}




{{<matomeQuote body="そういう発言する前に、Instagramがどんだけ無駄な予算使ってサーバー増設したり、CやC++、Goとかにコード書き換えたり、色んな小細工したのかまず調べるべきじゃない？<br>https://stackshare.io/instagram/instagram" userName="pjmlp" createdAt="2025/05/08 09:22:59" color="#45d325">}}




{{<matomeQuote body="すごいね！興味あるんだけど、Pythonの基本的なASTオブジェクトを決定するのに使ってる”single source of truth”は何なの？Pythonが提供する仕様に基づいてるの？それってどんな感じ？それともRustでPython言語を”recode”して、Rustの機能でPythonファイルをパースしてるの？どうやってるにしても、これマジで面白いプロジェクトだし、みんながやってくれてて本当に嬉しいよ！" userName="digdugdirk" createdAt="2025/05/07 19:36:20" color="#ff33a1">}}




{{<matomeQuote body="SQLAlchemyのドキュメント、特に「Unified Tutorial」に時間かけるとすごく分かりやすくなるよ[0]。手っ取り早い答えだけ欲しがるのは非効率的。書きたいSQLがあればSQLAlchemyのクエリ言語で書けばいい。ORMはドメインロジック向けで、”複雑なクエリ”には普通使わない。ORMに縛られすぎず適切に使うのが大事。<br>https://docs.sqlalchemy.org/en/20/tutorial/index.html" userName="globular-toast" createdAt="2025/05/08 08:26:25" color="#38d3d3">}}




{{<matomeQuote body="ハハ。職場でsync SQLAlchemyからasyncに書き換えたんだけど、API全然違うんだよね。これ型チェックしたいなら別のORM使って最初からやり直しか？Pythonの動的な性質のおかげで開発マジで早くなるの好きだわ！Move fast, break things！" userName="davedx" createdAt="2025/05/08 06:18:37" color="#ff33a1">}}




{{<matomeQuote body="動的な性質が必ずしも開発を早くするって意見には同意しないな。CやJavaと比べるならそうだけど、Typescriptと比べたら違うよ。ちゃんとした型システムとそれを使える良いエディタ（と最近のAIアシスタント）があれば、プロトタイピングは実際にもっと速く、しかも安定させられるんだ。" userName="mapcars" createdAt="2025/05/08 09:32:30" color="#ff5733">}}




{{<matomeQuote body="＞ Pre-alphaは.devリリースの方がずっといい。<br>いや、彼らはsemantic versioningを使ってpre-alphaリリースを示してるから正しいんだよ。<br>https://github.com/astral-sh/ty/releases<br>https://semver.org/" userName="usr9012809" createdAt="2025/05/07 21:59:08" color="#785bff">}}




{{<matomeQuote body="Pythonコード、昔JavaScriptがJSDocで型付けされてた頃みたい．「何でも大体通る」感じで、Expressみたいにドキュメント見ないと設定不明．<br>kwargsを型付けパラメータじゃなく使う慣習が嫌い．ドキュメントコメントも無いライブラリが多く、ドキュメント調べるか内部を漁るしか理解できない．「foo：使うfoo」みたいなドキュメントも．マジ情けない．" userName="9dev" createdAt="2025/05/08 09:40:45" color="#ff5c5c">}}




{{<matomeQuote body="他に共有できるリンクある？<br>stackshareのURL、何も関連情報載ってないんだけど．" userName="Nab443" createdAt="2025/05/08 11:13:30" color="">}}




{{<matomeQuote body="これって、Tyがruffとは別のバイナリでリリースされるってことなのかな？ 個人的には、ruffの中にあった方が、依存関係が一致してうまく動くのが保証されててずっと良い気がするんだ．まぁ、型チェッカーはファイルを変更しないから、フォーマットやリンティングと違って、そんなに大きな問題じゃないのかもね．" userName="theLiminator" createdAt="2025/05/07 18:59:18" color="">}}




{{<matomeQuote body="ちょっと聞きたいんだけど、他の言語で型システムプラグインの経験があって、それをPythonの何かの参考にしたいって思う？<br>僕はそういう経験無くて（マクロは別）、みんなが型システムプラグインを求める時、これって僕が知らない標準機能なのかなっていつも気になるんだ．" userName="jez" createdAt="2025/05/08 01:46:03" color="">}}




{{<matomeQuote body="＞properly typing kwargs is still not supported．<br>kwargsの型付けはTypedDictでしばらく前からやってるけど、問題ないよ．何ができないの？" userName="Spivak" createdAt="2025/05/08 08:55:54" color="">}}




{{<matomeQuote body="CPythonにはASDLで定義された正式な文法があるよ．<br>tyはruffと同じASTとパーサーを使ってて、ASDLは直接使ってないのは、内部で一部の構文ノードを違うように保持してるから．<br>パーサーはRustで手書き．ASTも手書きだったけど、今は宣言的な文法から自動生成する方向だよ．<br>詳細はruffリポジトリを見てね．" userName="dcreager" createdAt="2025/05/07 19:41:50" color="#38d3d3">}}




{{<matomeQuote body="Pythonは普通のsemver使ってないんだよ：<br>https://peps.python.org/pep-0440/" userName="kstrauser" createdAt="2025/05/07 22:03:13" color="">}}




{{<matomeQuote body="これって6回目のアルファ版なんだね。まだ安定版は出てないんだ。それ以前の6番目のアルファ版だってことか。あれ、なんか見落としてるかな？" userName="fastball" createdAt="2025/05/08 07:03:52" color="">}}




{{<matomeQuote body="pypiで持ってた”ty”ってプロジェクト名を、1週間くらい前にAstralにあげちゃったんだ。数年前にジョークで使おうと思ってたんだけど、2文字の名前としてはこっちの方が断然いい使い方だね。彼らが感謝の気持ちとしてPSFに寄付してくれることになったよ。" userName="ngoldbaum" createdAt="2025/05/07 20:10:23" color="#ff33a1">}}




{{<matomeQuote body="beanie babiesに関することか、”thank you”をもじった何かだったか。結局どっちにするか決められなくて、そのうち忘れちゃったんだよね。" userName="ngoldbaum" createdAt="2025/05/08 14:46:57" color="">}}




{{<matomeQuote body="こういう型チェッカーが速いのって、だいたい実際のPythonコードのクレイジーで豊かな現実をサポートしないことで実現してるんだよね。<br>職場でmypyを使い続けてる理由は、Djangoのクレイジーなランタイム生成されたメソッドをちゃんと型チェックできる唯一の型チェッカーだからなんだ。<br>もっと多くのPythonツールが、「世の中にあるものが言語だ」っていうTSみたいなアプローチを取ってくれたらいいのに、「使うべきだと思う構造だけ型チェックします」ってんじゃなくてさ。" userName="aleksanb" createdAt="2025/05/07 18:42:04" color="#45d325">}}




{{<matomeQuote body="＞ 高速化は現実のPythonコードに対応しないからだよ。<br>それか、この場合はRustで書いてるからだよ。mypyはPython製で、みんなCPU処理でのPythonの遅さ忘れすぎじゃない？DBやネットワークI/Oなら関係ないけど、パースとかだとRust/C/Goが段違いに速い。<br>uvやruffはマジ良かった。tyはまだバグあるけど、Astralならクレイジーな現実のPythonに対応してくれるって信じてるよ。" userName="mjr00" createdAt="2025/05/07 18:50:04" color="#38d3d3">}}




{{<matomeQuote body="mypyとかをかばうとね、Typescriptは僕らの時代の最高の頭脳たちが十年以上かけて、あらゆる変なJavascriptファイルに見つかるありとあらゆる形式をちゃんと型付けしようと頑張ったんだ。Microsoftはすごい開発者チームに資金を出して、想像できるあらゆるエッジケースを叩き潰させてきた。他のPythonチェッカーは、TSが持ってたリソースには全く太刀打ちできないよ。" userName="johnfn" createdAt="2025/05/07 18:54:07" color="">}}




{{<matomeQuote body="＞`datetime.UTC` が存在しないって言ってるけど<br>これはわかってる問題なんだ。今は Ty がサポートしてる古いPythonバージョンをデフォルトにしてるんだけど、`datetime.UTC` は本当にPython 3.11にならないと存在しないんだよ！<br>今後、デフォルトを”最新のサポートしてるPythonバージョン”に変えるつもりだけど、別の場所でも言ったように、Ty はまだすごく初期段階で、こういう種類の不具合をまだ調整してる最中なんだ。" userName="dcreager" createdAt="2025/05/07 19:00:18" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Pythonの場合、もっと状況は悪いんだ。<br>TSはJSにトランスパイルできて、JSファイルと型アノテーションファイルに分けることもできるけど、それ自体が型チェックありきでホリスティックなアプローチに基づいて開発された独自の言語なんだ。<br>でもPythonは全然違う。Pythonの型はアノテーションとして何年も後から言語に追加されたけど、全体を見てじゃなくて、単に基本的なサポートを追加しただけで、その後何年もかけて（しかも必ずしも一貫性なく）少しずつ拡張されてきたんだ。<br>さらに、このアノテーションは型チェックだけに限定されてないから、型チェッカーを混乱させることがある（Annotatedはすごく助かるけど、長ったらしくて、いつか Annoted みたいな短い構文ができないかな？ 型に @ を付けるとかで）。<br>基本的に、型アノテーション機能が最初に意図されたものと今の状態はかなり違う（list vs List、Annotated とか）。<br>これに加えて、Enum のサブクラス化みたいな「マジック」がPythonには深く根付いてる。もちろんJSにもあるし、TSでもうまくいかない時があるけどね（動的に生成された型にアノテーションつけないと）。<br>最後に、TSは構造的型付けで、たくさんの動的なエッジケースを扱えるけど、Pythonはその中間なんだ。ダックタイピングは（単純化すると）構造的型付けだけど、isinstance はPythonで一般的なことだし、これは名義的型付けだ...<br>だから、Pythonは本当にめちゃくちゃで、さらに曖昧だったり、一つのことをやるのに色々なやり方があったりする（再エクスポート＋プライベートモジュールとか）のが厄介さを増してるんだ。" userName="dathinab" createdAt="2025/05/07 21:12:50" color="#ff5733">}}




{{<matomeQuote body="Ty 開発者だけどね。<br>今はサポートしてる一番古いPythonバージョンをデフォルトにしてるんだけど、そこで `datetime.UTC` は本当に存在しないんだ！<br>CLIで `--python-version 3.12` を使うか、ty.toml にこう書いてみてよ。<br>```<br>[environment]<br>python-version = ”3.12”<br>```<br>そしたら `datetime.UTC` を見つけられるから。<br>これが多分間違ったデフォルトだって議論してるし、変える予定だよ。" userName="_carljm" createdAt="2025/05/07 18:57:53" color="#38d3d3">}}




{{<matomeQuote body="これ、実行してるPythonのバージョンに基づいて動的にやるべきじゃないかな。そうすれば、手動で決めたり、そういう「保守的」な選択をしたりしなくて済むよ。" userName="zo1" createdAt="2025/05/08 05:56:43" color="">}}




{{<matomeQuote body="彼らもおそらくそのくらいわかってると思うよ。まだアルファ版なんだし、そんな上から目線で言う必要ないだろ。" userName="lacasito25" createdAt="2025/05/08 09:13:41" color="">}}




{{<matomeQuote body="＞こういう型チェッカーが速くなるのは、だいたい現実世界のPythonコードのクレイジーで豊富な部分をサポートしないからだ<br>いやいや、それは既存のソフトウェアソリューションが新しいツールにパフォーマンスでぶっ飛ばされたり、遅く重くなったりする時に出てくる言い訳の一つパレードだよ。<br>ここにたくさんある例の一つを挙げるね。<br>https://m.youtube.com/watch?v=GC-0tCy4P1U&pp=0gcJCdgAo7VqN5t..." userName="HideousKojima" createdAt="2025/05/07 19:06:27" color="">}}




{{<matomeQuote body="そしてその過程で、TS は元のチーム以外は（完全に）理解できないくらい、めちゃくちゃ強力な型システムになっちゃったんだよね。" userName="smithkl42" createdAt="2025/05/07 21:04:23" color="">}}




{{<matomeQuote body="Pythonは一部のCPU重い操作で遅い。<br>NumpyとかPandasがやってるみたいに、すごくCPUを使う低レベルな操作をCで簡単に書いて、それをPython APIとして公開できるんだ。そうすれば、純粋なPythonで本当に効率的なアルゴリズムが書けるよ。そういう低レベルな操作が速ければ、Pythonだけのアルゴリズムも速くなるんだ。<br>これは必ずしも「ズル」とか「単にCの関数を呼んでるだけ」じゃないと思う。例えばNumpyで効率的な線形回帰アルゴリズムが書けるけど、Numpy自体に線形回帰を特別にサポートするものは何もない。ただ、PythonプログラマーがNumpyの低レベルなプリミティブを組み合わせただけなんだ。<br>全く新しい数値アルゴリズムを発明して、それをどんな言語でも初めて書く場合でも、Pythonでも効率的に実装できるかもしれないよ。<br>実際の問題は、どのPython操作を速くできるか、できないかの直感を掴むのが難しいことなんだ。ASTとかファイル操作は残念ながら後者（遅い方）に属するんだ。" userName="miki123211" createdAt="2025/05/08 01:30:31" color="#45d325">}}




{{<matomeQuote body="イライラするのは、自分の好きな言語や機能をPythonで実装して「Pythonを良くしよう」とするプログラマーたちだよ。Pythonはもともと動的型付けとして作られたんだから、型チェックが欲しいなら他の言語たくさんあるだろ。<br>特にRust開発者は、他の言語をこっそり置き換えようとしてて、それがめちゃくちゃ目立つしイラつく。だって、彼らは自分がターゲットにしてるエコシステムについて知らないことを無視してるんだから。Rustで書かれたPythonツール（ruff, uv）がクールなのは認めるけど、Pythonの代わりにはならないし、僕らがワークアラウンドで解決してる厄介な問題も解決してない。むしろ新しい問題を作ることもある。<br>例えば uv なんて、カスタムDockerイメージを提案するんだぜ。おいおい？ パッケージマネージャーはプロジェクトのベースDockerイメージとかPythonバージョンを決めるべきじゃないだろ。それはツールなんだよ、他の代替もあるんだから、自分の立場を知れって感じ。<br>性能向上はありがたいけど、Rust開発者の一部が広めてるPython/JavaScript/Golangが終わるみたいなFalse Narrativeは本当に迷惑だ。Rustで他の言語のビルドチェーンに速いツールを導入できたってだけでね。Rustコミュニティはすぐに、ちょっとした恥ずかしい友達みたいになってきてる。KotlinパーティーにEnterprise Javaの連中が現れて「僕らもPythonみたいになれるぜ...」とか言い出すみたいにね。" userName="surfingdino" createdAt="2025/05/08 06:28:07" color="#ff5c5c">}}




{{<matomeQuote body="技術的に難しいだろうけど、”存在しない”と”このPythonバージョンにはない”ってエラーを分けてくれたらいいな。例えば`datetime.UTC`がないって言われたら、`datetime.utc`かな？って思うけど、3.11で追加されたからバージョン上げなきゃって思わないもんね。" userName="miki123211" createdAt="2025/05/08 01:34:12" color="#ff33a1">}}




{{<matomeQuote body="＞ もっとpythonのツールがあったらいいな<br>関係ない話だけど、もっと多くのpythonモジュールが出荷前にValgrindでちゃんとチェックしてくれたらいいのにね。" userName="amelius" createdAt="2025/05/07 19:21:24" color="">}}




{{<matomeQuote body="これはmypyの問題じゃないんだよね。TSと比べるとpythonの型ヒント（仕様的に）はお粗末だよ。後付けで適当に始まって結構カオスに進化したんだ。例えば[1]を見て。TSはカスタムクラスを型チェッカーに認識させるのに特別なデコレータ（まさか！）なんていらないし。あとargsとkwargsをそのまま通すラッパー関数はどうやるの？" userName="bvrmn" createdAt="2025/05/07 23:00:26" color="">}}




{{<matomeQuote body="それはいいね。たぶん今の優先順位の上位じゃないし、実装は簡単じゃないけど、理にかなってるよ。提案ありがとうね。" userName="_carljm" createdAt="2025/05/08 04:33:07" color="">}}




{{<matomeQuote body="この議論はあまり理にかなってないね。型アノテーションはPythonコードを全く制約しないし、むしろ内省可能だからPythonはさらに動的になってクレイジーなこともできる。型チェッカーは変なコードを扱うのに頑張ってるんだ。<br>PydanticがRustで速いのは良いことだよ。パフォーマンスペナルティがほとんどなく、動的（デ）シリアライズができるんだから。" userName="Spivak" createdAt="2025/05/08 08:48:57" color="#ff33a1">}}




{{<matomeQuote body="デフォルト設定は間違ってるね。チェックされるのは実際のユーザーコード、特定のPythonバージョンの標準ライブラリ、インストールされたパッケージの集合だよ。プログラムが実行される時と同じ環境であるべきだ。保守的な近似はユーザー任せにするべきだ。" userName="HelloNurse" createdAt="2025/05/08 07:31:50" color="#785bff">}}




{{<matomeQuote body="なんでダックタイピングを単純化された構造的型付けって言うの？関係は別の軸だよ。Pythonは3.8で導入されたプロトコルを通じて構造的型付けをサポートしてるよ。詳細はリンクを見てね。<br>TSの例をPythonに翻訳したコードとPyright、tyのチェック結果のデモを載せるね：<br>```python<br>from dataclasses import dataclass<br>from typing import Protocol<br><br>class Globular(Protocol):<br>    diameter: float<br><br>class Spherical(Protocol):<br>    diameter: float<br><br>@dataclass<br>class Ball:<br>    diameter: float<br><br>@dataclass<br>class Sphere:<br>    diameter: float<br><br>ball: Globular = Ball(diameter=10)<br>sphere: Spherical = Sphere(diameter=20)<br><br>sphere = ball<br>ball = sphere<br><br>class Tubular(Protocol):<br> diameter: float<br> length: float<br><br>@dataclass<br>class Tube:<br> diameter: float<br> length: float<br><br>tube: Tubular = Tube(diameter=12, length=3)<br><br>tube = ball  # Fail type check.<br>ball = tube  # Passes.<br>```<br>Pyrightだとこうなる：<br>```<br>Found 1 error.<br>/scratch/structural.py<br>/scratch/structural.py:37:8 - error: Type \”Ball\” is not assignable to declared type \”Tubular\”<br>\”Ball\” is incompatible with protocol \”Tubular\”<br>\”length\” is not present (reportAssignmentType)<br>1 error, 0 warnings, 0 informations<br>```<br>編集：tyだとこうなるよ：<br>```<br>error: lint:invalid-assignment: Object of type `Ball` is not assignable to `Tubular`<br>--＞ structural.py:37:1<br>|<br>35 | tube: Tubular = Tube(diameter=12, length=3)<br>36 |<br>37 | tube = ball  # Fail type check.<br>| ^^^^<br>38 | ball = tube  # Passes.<br>|<br>info: `lint:invalid-assignment` is enabled by default<br><br>Found 1 diagnostic<br>```" userName="networked" createdAt="2025/05/08 12:52:08" color="#ff33a1">}}




{{<matomeQuote body="mypyはmypycでコンパイルされてるんだ。Pythonコードとしては実行されないよ。" userName="davidfstr" createdAt="2025/05/08 01:12:13" color="">}}




{{<matomeQuote body="SQLAlchemyってmypyで型チェックできるの？<br>それが最近Pythonの型チェック諦めた理由なんだよね。" userName="davedx" createdAt="2025/05/08 05:18:16" color="#785bff">}}




{{<matomeQuote body="dataclassデコレータって型チェッカーのためじゃないんだよね。<br>主な目的はコンストラクタとか等値性、reprみたいな trivial なメソッドを自動で作ること。<br>型ヒントで便利にはなるけど、attrsにも似たようなのがあったし。" userName="maleldil" createdAt="2025/05/08 17:39:46" color="">}}




{{<matomeQuote body="そうだよ、例えばpyproject.tomlでPythonのバージョン指定してたらそれを尊重するし、それを使って型チェックするんだ。<br>ここで話してるデフォルトは、プロジェクトメタデータがない場合にフォールバックするやつだよ。" userName="dcreager" createdAt="2025/05/08 13:05:48" color="#785bff">}}




{{<matomeQuote body="SQLAlchemy 2.xはmypyに直接対応してるから、プラグインいらずでそのまま動くよ。<br>SQLAlchemyにはまだ動的で型チェックできない部分も多いけど、ネイティブ対応できるところはバッチリだよ。" userName="lukaslalinsky" createdAt="2025/05/08 06:59:50" color="#ff33a1">}}




{{<matomeQuote body="Pythonの意味論が速度を出すのを難しくしてるんだ。<br>インタプリタかコンパイルかの話だけじゃない。<br>高いレベルの動的さが許されてるから、Jit（pypyみたいに）は、コードに抽出できる根本的な振る舞いがあればそれなりのパフォーマンスを出す可能性が高いんだ。" userName="mzl" createdAt="2025/05/08 04:23:57" color="">}}




{{<matomeQuote body="多くの型チェッカーはPythonの全ての動的な書き方には対応できないんだ。<br>サンドボックスでのモジュール実行が必要だったりして、完全に正確な型チェックは無理っぽい。<br>あと、Pythonは遅い言語の一つで、C++/Rustに処理を移さないと速くならないけど、型チェッカーはそのアプローチが難しいタイプのソフトなんだよ。" userName="dathinab" createdAt="2025/05/07 21:36:40" color="#ff5c5c">}}




{{<matomeQuote body="僕の問題は、Pythonシステムでセグフォールトをデバッグするのが無理ってこと。<br>Valgrindの出力の後片付けをしないPythonモジュールがノイズ出しすぎなんだ。" userName="amelius" createdAt="2025/05/08 09:38:17" color="">}}




{{<matomeQuote body="この記事の「〜すべき」みたいな表現は決めつけに感じるね。<br>アルファ版のソフトだし、やらないのには理由があるかも。<br>IMO、決めつけにならないで「XしたらYになるよ」とか「X考えてみて」みたいな言い方の方がいいんじゃないかな。" userName="mahogany" createdAt="2025/05/08 16:01:51" color="">}}




{{<matomeQuote body="TypescriptでさえコンパイラをGoで書き直してるし。<br>ボトルネックって言語自体にあるんだと思うんだ。<br>（uvとかruffがこの点でそれを証明した感じだよね）" userName="TheTaytay" createdAt="2025/05/07 19:36:49" color="#ff5733">}}




{{<matomeQuote body="かなり大きめのプロジェクトでチェック時間を比較してみたよ。<br>- mypy（ウォームキャッシュ）18秒<br>- ty: 0.5秒（そして3500件エラー見つけた）<br>またやってくれたね（すごいね）！" userName="tmvphil" createdAt="2025/05/07 17:47:00" color="#45d325">}}




{{<matomeQuote body="Ty開発者だよ．これまだめっちゃ初期のプレアルファ版だから，3500件のエラーのほとんどは間違いだと思うよ :) バグ報告よろしくね！" userName="_carljm" createdAt="2025/05/07 18:52:29" color="#ff5c5c">}}




{{<matomeQuote body="どれくらい mypyより速いか，ざっくりでいいから教えて欲しいな！超気になる！<br>俺も最初 Ruff試したとき，速すぎて逆に動いてないかと思った人だよ！" userName="joshdavham" createdAt="2025/05/07 20:56:29" color="#785bff">}}




{{<matomeQuote body="みんなの経験談を聞くのが楽しみだよ！<br>Tyはプロジェクトが大きいほど相対的に速くて，すごく大きいのだと mypyより50-60倍以上速いのも見てるよ。<br>まだ最適化は途中だから，将来もっと速くなるのを目指してる。<br>Ruffよりは遅いけど，それは複数ファイルの型分析が複雑で，単一ファイルのLintみたいに簡単には並列化できないからなんだ．" userName="_carljm" createdAt="2025/05/07 21:29:58" color="#ff33a1">}}




{{<matomeQuote body="いいね，でも Pyrightと実用性／性能でどう違うの？ Pyrightは成熟してるし，すでにすごく速いよ。<br>https://github.com/microsoft/pyright" userName="mil22" createdAt="2025/05/07 17:59:48" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺の Pyright体験はマジで悲惨だったよ。<br>いっぱい起動すると OOMするし，動くけどよく混乱する…<br>あと MSFTが「 Pyrightにしようぜ，あ，ついでに機能削って Pylanceに入れるね」って言ったのはマジありえない．オープンソース精神に反してる．<br>Pyrightみたいな「かろうじて使える」のが存在することで，他のツールの開発がやりにくくなってる気がする．これぞ MSFTの「拡張して潰す」戦略だ．" userName="rtpg" createdAt="2025/05/08 01:51:24" color="">}}




{{<matomeQuote body="1年くらい前にあった型チェッカー全部試したんだけど， Pyrightが一番合ってたんだ。<br>完璧じゃないけど， pure Pythonのよりは全然良い。<br>メモリなんて安いもんでしょ（ Appleから買うなら話は別だけど…）。<br>速くてメモリ効率が良い型チェッカー？もちろん大歓迎だよ，同じかそれ以上の機能があるならね．" userName="mil22" createdAt="2025/05/08 22:42:47" color="">}}




{{<matomeQuote body="ラップトップだとメモリそんな安くないぞ！<br>問題なのは Pyrightっていうより「世の中のツール全部が Pyrightみたいに重い」のと Dockerとか…って感じだけど，でも少しずつ良くなってると思うよ．" userName="rtpg" createdAt="2025/05/09 23:42:34" color="">}}




{{<matomeQuote body="まだチェックしてないなら， basedpyright見てみて。<br>あれは Pyrightから勝手に削られた機能が全部戻されてて，さらにいくつか追加機能もあるんだ。<br>（どれくらい厳密な型付けが好きかによるけど）。<br>マジでおすすめだよ．" userName="lemontheme" createdAt="2025/05/08 06:30:50" color="">}}




{{<matomeQuote body="俺の10万行くらいのコードで Tyと Pyrightを試したよ。<br>Tyは2.5秒で速いけど誤検知が1599件。<br>Pyrightは13.6秒で遅いけど，全部実際の10件のエラーだった。<br>Tyはポテンシャルあるけど，型推論は Pyrightほどまだ洗練されてないね。<br>でも Tyには期待してるよ．2-3倍でも速いのは助かるから．" userName="mil22" createdAt="2025/05/08 00:00:50" color="#ff5c5c">}}




{{<matomeQuote body="コンパイルとか／型チェックってさ，型付きデータのツリー構造をたくさん使うし，それらのツリーノードを操作するんだ．それってさ，静的型付け言語でカスタムデータ構造を使って最適化された表現ができると，大きな違いが出る領域なんだよ．v8のたくさんのイケてる最適化も，あまりうまくいかないところなんだよね．Typescriptが型付き言語になったのには，そういう理由があるんだ．" userName="the_duke" createdAt="2025/05/08 05:55:18" color="#38d3d3">}}




{{<matomeQuote body="あなたが正しいといいな．そしてそれがPyrightと比べてTyのさらなる高性能につながるといいな．もちろん，こういうことには多くの変数や落とし穴があるけどね．" userName="mil22" createdAt="2025/05/08 22:44:16" color="">}}




{{<matomeQuote body="Pyrightは型チェック専用なんだ．そしてモダンなLSPに期待する多くの機能が欠けてる（どれだったか忘れたけど）．だから，誰かがforkしてbasedpyrightを作ってそれを直したんだよ：https://github.com/DetachHead/basedpyright" userName="bjourne" createdAt="2025/05/07 20:55:35" color="#785bff">}}




{{<matomeQuote body="これに補足ね．PythonだとLSPと型チェックとリンティングが別々になってることが多いんだ（例えばruff＋mypy＋ide_specific_lspとかね）．これがさ，LSPの機能を制限したり，エラー表示がずれたりして困るんだよね．Pyrightはこういうツールの分かれ方をしてるスタックの一部だよ．" userName="dathinab" createdAt="2025/05/07 21:44:40" color="#ff33a1">}}




{{<matomeQuote body="pylanceのチームがこれを検討し始めたみたいだよ．つまり，LSPじゃない型チェッカーのためのAPIを持つことに意味があるかってこと．これによって，色々な型チェッカーの上に，複数の異なる言語サーバーを構築できるようになるかもしれないね． https://github.com/microsoft/pylance-release/discussions/718…" userName="geekraver" createdAt="2025/05/07 22:17:23" color="#ff5733">}}




{{<matomeQuote body="Pyrightは良いんだけど，けっこうメモリ食うんだよ．（そうそう，マシンにはメモリたくさん積んでるよ．いやいや，開発中には他に使う用途もたくさんあるんだよ．）" userName="nine_k" createdAt="2025/05/07 18:18:35" color="#45d325">}}




{{<matomeQuote body="私の経験ではPyrightは信じられないくらい遅いんだ．複雑なコードベースで1分以上かかるのを見たことあるよ．" userName="0xFF0123" createdAt="2025/05/07 21:58:06" color="#785bff">}}




{{<matomeQuote body="私の経験ではPyrightは多くの継承されたオブジェクトの型を推論できないんだ（PyCharmの型推論と比べるとね）．" userName="insane_dreamer" createdAt="2025/05/07 21:43:48" color="#ff5733">}}




{{<matomeQuote body="PyCharmは’動的な’コードに強いけど，PyCharmユーザーのコードをPyrightで見ると型エラーだらけになることが多すぎなんだよ．PyCharmのチェッカーって，明白なこと（関数がバイト返すのに文字列を期待とか）を見逃してるみたい．同僚の設定かもしれないけど，複数人そうだし設定は共有されてないんだ．" userName="lemontheme" createdAt="2025/05/08 06:37:07" color="#ff5c5c">}}




{{<matomeQuote body="mypyより速いのは間違いないと思うけどね．でも：<br>このプロジェクトはまだ開発中で，プロダクションでの使用には適していません．" userName="js2" createdAt="2025/05/07 18:11:40" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
