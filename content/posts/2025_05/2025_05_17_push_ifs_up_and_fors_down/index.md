+++
date = '2025-05-17T00:00:00'
months = '2025/05'
draft = false
title = 'Ifは上に、Forは下に プログラミング効率化の考え方'
tags = ["プログラミング", "コード設計", "効率化", "可読性", "制御フロー"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> Ifは上に、Forは下に プログラミング効率化の考え方

引用元：[https://news.ycombinator.com/item?id=44013157](https://news.ycombinator.com/item?id=44013157)




{{<matomeQuote body="俺の変な個人的モデルなんだけど、プログラムの状態とかフローって木のイメージじゃん？条件分岐は木を剪定する感じなんだよね。なるべく早い段階で剪定すれば、少ない枝で作業しなくて済むじゃん。一本一本の枝を細かく評価して、剪定するか決めるんじゃなくて、どうせその塊全部いらないなら幹ごと刈っちゃうみたいな。<br>もっと変な言い方すると、条件分岐は「やる必要のない作業を見つけること」。ループは「作業そのもの」。<br>結局、関数にはプログラムツリーを辿るか、作業そのものをやるか、どっちか一つのことだけをやってほしいんだよね。" userName="Waterluvian" createdAt="2025/05/17 15:58:18" color="#785bff">}}




{{<matomeQuote body="これ、PL理論とかlambda calculusの“small-step”評価とすごい合ってるね。専門用語だと、式は“reduction rules”ってルールで繰り返し書き換えられて評価されるんだ。例えば、(1 + 2) + 4 は 3 + 4 になって、それが 7 になるみたいな。<br>ルールは2種類。どこで作業するか（“どの部分式を次に評価するか？”）を指示する“congruence”ルールと、実際に式を書き換えてプログラムの状態を変える“computation”ルール（Pierce [1]がそう呼んでる）ね。<br>“Strict”/“non-lazy”言語（Haskell以外のほぼ全部？）は congruence ルールだらけ—親式を評価する前に全部の部分式を完全に評価しないといけない。ただし、条件分岐とか無限ループみたいな特殊な構造は例外。<br>特に条件分岐では、congruence ルールが全部の部分式を評価する前に computation ルールが先に発動するんだ。これが式ツリーを、文字通りの意味で剪定するんだよね。<br>[1]： Benjamin C. Pierce, Types and Programming Languages （オススメ！）" userName="igregoryca" createdAt="2025/05/18 03:55:10" color="#ff5733">}}




{{<matomeQuote body="俺の個人的モデル：自分が今書いてるめっちゃ具体的なコードが存在する世界観に合わせるのが一番。ドメイン固有のことから、コードベースの既存パターン、データパイプラインのどの段階か、パフォーマンスプロファイルとか、全部考慮してね。<br>俺も昔はこういうコード構成のルールとかヒューリスティクスを作ろうとしたんだけど、結局、十分コードを書けば、それは抽象化のレベルが間違ってて、取っておく価値がないって受け入れたんだ。<br>記事が架空の関数名とか一文字の名前を使うのが、まさにそれを物語ってるでしょ？だって、そういう時は「コードの島」みたいなサンドバッグを設定して、そこ以外何も存在しないことにしてるから、ほぼどんなルールでも通用しちゃうんだもん。<br>完璧な例が「redundancies and dead conditions」で挙げられてたやつ：あれって、「g」が「h」を呼び出す唯一の呼び出し元で、しかも永遠にそうだっていう超都合の良い前提を置いてるから、このルールでデッドブランチを見つけられたって主張できるんだよね…<br>その「島」では通用するけど、実際のコードベースでは、たいてい「g」と「h」が最初から結合されなかったちゃんとした理由があるもんだよ。" userName="BoorishBears" createdAt="2025/05/17 20:03:49" color="#ff5733">}}




{{<matomeQuote body="こういう批判って、この記事みたいなのへのレスポンスでよく見るけど、簡単すぎて意味ないって感じるね。単純な例を使わずに、どうやって一般的な原則について話せって言うの？<br>結局、「リアルコードは君のおもちゃの例より複雑だよ」って言ってるだけでしょ？<br>まあ、そりゃそうだけど、それは意図されたことだよ。<br>＞Perfect example is the “redundancies and dead conditions” mentioned: we’re making the really convenient assumption that `g` is the only caller of `h` and will forever be the only caller of `h` in order to claim we exposed a dead branch using this rule...<br>そうじゃないよ。彼はただ、条件ロジックを一つの場所に「上に」持っていくと、たいてい読みやすくなるし、普段気づかないかもしれないことに気づくことがある、って言ってるだけだよ。そして、それがどう機能するかを示すために、可能な限り単純な例（でもそれは良いこと！）を作ったんだ。それが常にそう機能するとか、リアルコードがもっと複雑じゃないとか言ってるわけじゃないよ。" userName="jonahx" createdAt="2025/05/18 03:56:42" color="#45d325">}}




{{<matomeQuote body="ええと、コメントの中には、断片的にじゃなく全体として見なされるべきものもあるってことね、あなたが無理やり主張したいポイントを押し付けるために文脈無視するんじゃなくてね：）<br>問題はかなり明確に説明したんだけどな。<br>＞I used to try and form these kinds of rules and heuristics for code constructs, but eventually accepted they’re at the wrong level of abstraction to be worth keeping around once you write enough code.<br>それは（役に立つ）原則を作るには間違った抽象化レベルなんだよ。そして、選ばれた例はその症状に過ぎないんだ。<br>なんでみんな、俺がこの記事の根本的な問題は単純な例を使ってることだなんて言ったみたいに反応してるのか分からないな。" userName="BoorishBears" createdAt="2025/05/18 21:55:27" color="">}}




{{<matomeQuote body="あなたがその引用した主張を裏付けるために出した唯一の証拠がそれだったからね。主張は理解したけど…あなたがもし自分の具体例を反証として出してくれたら面白かったかもね、記事の意図的に単純な例を単純すぎると藁人形論法で攻撃する代わりにね。<br>あなたの議論は、「俺はすごく賢くて悟りを開いたから、こんな単純なヒューリスティクスからはもう卒業した」みたいに聞こえるんだよね。分かったよ、でも著者も賢くて経験豊富なプログラマーで、明らかにまだそれが役に立つと思ってるみたいだよ。俺も経験豊富だけど、個人的には役に立つと感じてるんだ。<br>こういうの見方にもっと良くて深い方法があるっていう議論には反対じゃない。でもあなたはそういう議論をしなかったよね。そして、もしかしたら不公平かもしれないけど（どう思う？）、それに対するあなたの返答は、全てがあまりにも掴みどころがないとか、説明するのに時間がかかりすぎるとかになるんじゃないかって疑ってるんだ…" userName="jonahx" createdAt="2025/05/18 23:54:39" color="">}}




{{<matomeQuote body="ちょっと別のモデルを提案してもいい？Classes は nouns、functions は verbs。" userName="0xWTF" createdAt="2025/05/17 18:23:24" color="">}}




{{<matomeQuote body="俺は完全に別の考え方をするのが好きだね：Functions は何かを隠す場所、Classes は何かを公開する場所。俺にとって関数は、ロジックを実行することよりスコープを限定することなんだよ。プログラム全体がロジックを実行する場所なんだから。" userName="BobbyJo" createdAt="2025/05/17 20:43:28" color="">}}




{{<matomeQuote body="で、そのうち誰かが、Classes は verbs にもなるし、functions は nouns にもなるって教えてくれて、しばらく頭が痛くなるんだよね。そのパラダイムをしばらく使いすぎて、最終的にはアイデアの適切なバランスを見つけることを学ぶんだ。" userName="acbart" createdAt="2025/05/17 21:27:46" color="">}}




{{<matomeQuote body="コード書くのは文章書くのと似てるって言うけど、コード構造のアイデアって絶対じゃないんだよね。古いアイデアも新しいアイデアも、時と共に進化する。例えば“to boldly go where no man has gone before”みたいなフレーズが揚げ足取りを引き出すみたいにさ。" userName="2muchcoffeeman" createdAt="2025/05/18 09:37:49" color="">}}




{{<matomeQuote body="25年やってるけど、まだそれ見たことないや。これが守られてないと、ただの手抜きな命名にしか見えないんだよね。何か見落としてるのかな？" userName="nailer" createdAt="2025/05/17 22:30:56" color="">}}




{{<matomeQuote body="同意だね。特に関数をパイプラインとして見るなら：データやイベントが入って、別のデータやイベントが出る。99％当てはまるヒューリスティックをあえて言うなら、インデント（分岐）をできるだけ少なくすることに常に努めることだね。コードのインデントが深くなりすぎてるなら、その深いV字は実装が根本的な問題と大きく乖離してるか、もっと小さい関数に分割する必要があるサインだよ。" userName="angra_mainyu" createdAt="2025/05/17 22:53:06" color="#785bff">}}




{{<matomeQuote body="例を挙げると：Object Algebra patternはデータ型（”nouns”）を関数として表現するんだ。" userName="kiviuq" createdAt="2025/05/18 04:14:04" color="">}}




{{<matomeQuote body="http://steve-yegge.blogspot.com/2006/03/execution-in-kingdom... これ読んでみて。" userName="pshc" createdAt="2025/05/17 20:13:16" color="">}}




{{<matomeQuote body="pythonをしばらく書いてるけど、クラスは全然使わないね。他のコードを”借りる”ときだけ弄るくらいかな。関数を整理するための回りくどい方法にしか見えなくて。関数だけ書いてる方が好き。最初に覚えた言語にクラスがなかったせいかも。ループですら好きじゃなくて、関数化して、 sensibleなら並列で実行する方がいいな。ちょっとpythonの異端児っぽいけど、そのおかげでコードは速く動くんだ。" userName="kjkjadksj" createdAt="2025/05/18 03:15:45" color="#ff33a1">}}




{{<matomeQuote body="Apollo guidance computersって、VERBとNOUNで動いてたんじゃなかったっけ？" userName="Waterluvian" createdAt="2025/05/17 20:14:08" color="">}}




{{<matomeQuote body="CS101で習ったんだけど、15年経った今でも使ってるよ。良い、シンプルで分かりやすいパターンだよね。" userName="slipnslider" createdAt="2025/05/17 19:16:42" color="#785bff">}}




{{<matomeQuote body="そんなに変じゃないよ、これを突き詰めるとPrologの実行モデルとほぼ同じになるんだぜ。" userName="nagaiaida" createdAt="2025/05/18 05:20:56" color="">}}




{{<matomeQuote body="Ifを入力ソース近くに置くのが一般的なルールで、これは外部からの入力箇所を見つけて、コアロジック前にできるだけ多くの保証（型で）を持たせるようにデータを整えることなんだ。特にリソースを食う部分には重要だよ。(https://gieseanw.wordpress.com/2024/06/24/dont-push-ifs-up-p...)" userName="andyg_blog" createdAt="2025/05/17 14:40:46" color="#45d325">}}




{{<matomeQuote body="それってparse don’t validateとほぼ同じことだよ。(https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-va...)" userName="sharno" createdAt="2025/05/20 17:58:59" color="#ff5c5c">}}




{{<matomeQuote body="これってコアロジックを理解しようとする時に、どんな前提を置けるかが分かりにくくならない？あちこちのコールチェーンを全部調べる方がマシってこと？" userName="dataflow" createdAt="2025/05/17 15:35:56" color="#38d3d3">}}




{{<matomeQuote body="プログラムの”コアロジック”ってのは、与えられた入力に対してどんな出力になるかってことだよ。<br>バグを見つける時は、特定の入力が期待通りの出力にならないって気づくからだよね。<br>コード中の沢山のIfを見つけなきゃいけないのは、そのうちの一つ（たぶんいくつか組み合わさって）が間違ってるから。<br>もし条件分岐を全部、できるだけ入力に近づけて置けば、探す手間は省けるし、直すのも楽になるよ。" userName="fmbb" createdAt="2025/05/17 16:13:40" color="#38d3d3">}}




{{<matomeQuote body="だからtype systemsを発明したんだよ。コールチェーンを調べる必要なんてない、入力タイプを調べればいいんだ。タイプはどんな前提を置けるかを教えてくれるだけじゃなく、不正な前提を置いたらcompilerが教えてくれるからね！" userName="avianlyric" createdAt="2025/05/17 15:51:21" color="#38d3d3">}}




{{<matomeQuote body="全ての前提をtype systemに詰め込めるわけじゃないでしょ…" userName="dataflow" createdAt="2025/05/17 16:01:01" color="#785bff">}}




{{<matomeQuote body="できるだけ多くのものをtype systemに置くべきだよ。(https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-va...) 例えば電話番号の場合、stringの代わりにUncheckedPhoneNumberを生成し、コードチェック後はVerifiedPhoneNumbersを生成するようにできる。このパターンでどんなことでもtype systemにエンコード可能。全部stringより手間はかかるけど、プログラムは各時点で何を持っているか確実になる。かなり良い方法だよ。" userName="knome" createdAt="2025/05/17 16:21:26" color="#45d325">}}




{{<matomeQuote body="そうそう！type systemに色んなものを詰め込みすぎて、最終的にvalidationとかscaffoldingのために書くコードがほとんどなくなっちゃうのを見たことあるよ…まるで魔法みたいに感じたね。" userName="alfiedotwtf" createdAt="2025/05/18 07:25:32" color="#785bff">}}




{{<matomeQuote body="型システムがリッチな言語なら、型だけでいろんな概念を表せるんだよ。" userName="treyd" createdAt="2025/05/17 16:20:48" color="#38d3d3">}}




{{<matomeQuote body="リッチな型システムがなくても、命名で結構いろんなことを表現できるんだ。ただ、その約束事を強制することはできないけどね。" userName="shiandow" createdAt="2025/05/18 09:17:13" color="">}}




{{<matomeQuote body="やろうと思えば、他の手段（静的に）で強制できるよ。例えば、型システム自体では表現できない型っぽい意味合いを強制するlintルールを使うとかね。" userName="eyelidlessness" createdAt="2025/05/18 20:49:26" color="#ff33a1">}}




{{<matomeQuote body="もちろん、そもそもそのルールが機能するために十分な型情報を抽出できるくらい、言語の型システムが洗練されてることが前提になるけどね。" userName="treyd" createdAt="2025/05/18 21:40:59" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="確かにね。でも、文書化されたインターフェース契約に対してプログラミングすることもまだできるよ。コンパイラは型以外の部分の違反は捕まえないけど、ちゃんとしたインターフェース契約があれば要件はしっかり定義される。トレードオフだけど、プログラムの色んな場所で同じ条件分岐を繰り返したり、その判断に必要なコンテキストをあちこちで引き回したりするのも同じようにトレードオフなんだ。" userName="layer8" createdAt="2025/05/17 16:18:12" color="#ff5733">}}




{{<matomeQuote body="少なくともコンストラクタに押し込めることはできるよ。" userName="sn9" createdAt="2025/05/17 18:31:52" color="">}}




{{<matomeQuote body="＞見事な視野狭窄、頑固さ、そして最大限に一般的な代数的および任意の制約型システムを目指す使命感で<br>それはkeyhole optimizations、greedy search、そして”the customer is always right…”って呼ばれてると思うな" userName="kevindamm" createdAt="2025/05/17 18:17:25" color="">}}




{{<matomeQuote body="考え方とか例は型システムが面倒を見てくれるってことだよね。その経験則はちょっと一般化しすぎてるかも。null許容じゃない型がある場合のnullチェックみたいなことにもっと近い話だと思うな。" userName="furyofantares" createdAt="2025/05/17 16:20:29" color="#45d325">}}




{{<matomeQuote body="俺はそう思わないな。だって、もし早い段階で仮定を置けば、その仮定がプログラム全体に適用されて、考えるのが楽になるじゃん。" userName="geysersam" createdAt="2025/05/17 23:55:50" color="">}}




{{<matomeQuote body="入力データを整形して正規化したら、コアロジックでの仮定ははっきりするはず。それは正規化されたデータのルール次第だよ。全部の呼び出しチェーンを知る必要はないんだ、なぜなら”narrow waist”を作れば、そこで全てが明確になり、エラー処理もされてるから。だから、入り口から”narrow waist”までと、”narrow waist”から終わりまでを知ってればいいのさ。" userName="setr" createdAt="2025/05/17 16:10:35" color="">}}




{{<matomeQuote body="「関数内のifは呼び出し元に移せないか考えろ」って考え、反例多すぎだろ。例えば37箇所から呼ばれてたら、全部にif書くの？<br>getaddrinfoとかEnterCriticalSectionみたいなAPI関数ならどうよ？<br>この考えは、せいぜい2箇所から呼ばれる内部関数で、かつ決定がその関数の関心外にある場合だけ適用できると思う。<br>ループからifを出すのは最適化のためだけど、最適化は良い設計とぶつかることが多いんだ。呼び出し元が条件を知るのは設計として良くないかもね。これはOOPのメソッド呼び出しでも同じ問題があるよ。ループからメソッド呼び出し（ifに相当）を出すテクニックは、設計思想に反することもあるんだ。" userName="kazinator" createdAt="2025/05/17 19:15:17" color="#ff33a1">}}




{{<matomeQuote body="「関数が37箇所から呼ばれてたら、全部にifを繰り返すのか？」って質問だけど、多分そういう場合はtrueとfalseの処理を分けて2つの関数にして、それぞれ21箇所と16箇所から呼べばいいんじゃない？" userName="neoden" createdAt="2025/05/18 07:28:52" color="">}}




{{<matomeQuote body="それは条件がconstant-foldableな場合だけ可能だよ。<br>ifの部分をinline functionにすれば実現できる。<br>前：function(cond, arg){ if (cond) { true logic } else { false logic } }<br>後：inline function(cond, arg) { cond ? function_true(arg) : function_false(arg) }<br>こうすれば37箇所をいじる必要なし。関数はインライン化されて、condが定数なら条件分岐は消えるよ。" userName="kazinator" createdAt="2025/05/18 16:32:10" color="#785bff">}}




{{<matomeQuote body="ここでのキーワードは「consider」（検討する）だよ。この記事はtagged unionsとかを使う場合の、ある程度特定の設計問題を対象にしてるんだ。" userName="panstromek" createdAt="2025/05/18 07:45:03" color="">}}




{{<matomeQuote body="37回呼ばれるならリファクタリング検討だけど、場合による。ライブラリ関数（EnterCriticalSectionとか）はドメイン境界だから例外だね。アプリ内部ならifは安全に外に出せる。ライブラリでも端っこには置ける。自分のドメイン内で制御フローを端に寄せるのが良い。<br>ただ、これはidiomであり、文脈に応じて賢い判断が必要だよ。" userName="PaulRobinson" createdAt="2025/05/17 20:18:54" color="#785bff">}}




{{<matomeQuote body="N回以上呼ばれてるからってリファクタリングするのは、関数によると思うよ。前の人が言ってたように、ロック関数とかmemcpyは多くのプログラムでいっぱい呼ばれるだろうしね。実際、うまく分割された機能って、色んな場所からたくさん呼ばれることが多いんじゃないかな。" userName="kenjackson" createdAt="2025/05/18 01:21:59" color="">}}




{{<matomeQuote body="37回以上呼ばれるくらい役立つ関数が一つもないような大きなプログラムなんて想像できないな。<br>メモリ確保？出力？リストに要素追加？ファイル書き込み？<br>多分他の意味で言ってるんだろうけど、役立つ関数は同じプログラム内で何度も呼ばれちゃいけない、とか思ってるわけじゃないよね？" userName="CJefferson" createdAt="2025/05/18 09:33:24" color="#38d3d3">}}




{{<matomeQuote body="ねえ、同じ関数を何箇所から呼ぶのが適切なの？5箇所は多すぎる？6箇所なら？7箇所になったら全部リファクタリングしなきゃいけないんだよね？まさか。" userName="jovial_cavalier" createdAt="2025/05/18 01:19:30" color="">}}




{{<matomeQuote body="この話、使う前に毎回チェックが必要な場合にしか使えないよ。そういう関数って、そもそも良くないコードだけど、呼ぶ場所が少ないならマシ。その場合は呼ぶ側でチェックが正解。もしその関数を使いまくるなら、コードが重複しまくって、自分のやり方が変だって気づくかもね。" userName="cakealert" createdAt="2025/05/18 05:59:42" color="">}}




{{<matomeQuote body="じゃあさ、関数がポインタ使うとき、中でnullチェックするのはダメってこと？パフォーマンスの問題なきゃ、単に好みの問題だろ。こういう「だいたい合ってるけど、ちょっと違う」ってのがコードをメチャクチャにするんだ。「Ifは上に、Forは下にしろ！」とか、完全に嘘くさいルールで、設計に変な制限つけてるだけじゃん。" userName="jovial_cavalier" createdAt="2025/05/18 15:41:41" color="">}}




{{<matomeQuote body="Ifを呼ぶ側に移すかどうかでパフォーマンスに違いが出るなら、inline関数を使えばいいよ。コンパイラが賢い場合、ループ内でポインタが変わらないことを見抜いてifをループの外に出したり、ポインタがnullにならないと分かればifを完全に消したりしてくれることもあるから。" userName="kazinator" createdAt="2025/05/18 18:47:37" color="#ff5c5c">}}




{{<matomeQuote body="俺的には、nullじゃないってassertすべきだと思う。関数にnullポインタ渡す状況なんて、絶対ありえないだろ。" userName="cakealert" createdAt="2025/05/18 16:37:49" color="">}}




{{<matomeQuote body="ISO Cだと、free(NULL)とかfflush(NULL)とかtime(NULL)とかstrtol(text, NULL, 10)とかsetbuf(stream, NULL)とかrealloc(NULL, size)みたいに、NULLを渡すのがOKで、意図された動作をする場合があるんだ。POSIXとか他のAPIにもそういう例はいっぱい。現実が君の意見を打ち砕いたな、残念でした！" userName="kazinator" createdAt="2025/05/18 19:38:39" color="#45d325">}}




{{<matomeQuote body="ごめん。そういう関数作った人たちが、良い選び方をしたって言ってるの？彼ら、一つの入力値で関数の動きを結構変えちゃったんだよ。その値って、バグの可能性の方が高いのにさ。" userName="cakealert" createdAt="2025/05/18 23:36:00" color="#ff5733">}}




{{<matomeQuote body="そうだよ。多分、これからも似たような選び方をするだろうね。" userName="kazinator" createdAt="2025/05/19 00:38:17" color="">}}




{{<matomeQuote body="はっきりしたルールなんていらないよ。ただ、平均的な「頑張りすぎでちょっとズレてるHN投稿者」より賢くなって、同じような呼び出し方をいつやりすぎてるか気づけばいいだけ。" userName="tylersmith" createdAt="2025/05/18 06:04:40" color="">}}




{{<matomeQuote body="「関数が37箇所から呼ばれてるなら、コードをリファクタリングする必要がある」<br>マジ？<br>反論はすぐ思いつくよ：認証。全部のAPIからauthenticate()を何らかの形で呼ぶでしょ？その37個全部から。" userName="worik" createdAt="2025/05/17 20:45:00" color="#785bff">}}




{{<matomeQuote body="もしそれぞれのAPIで明示的にauthenticate()を呼んでるなら、それは「間違ってる」やり方だよ。そういう場合は、明示的な認証じゃなくて、暗黙的な認証が必要なんだ。全部のAPI呼び出しで呼ばれるようなミドルウェアに移せばいいじゃん？" userName="bognition" createdAt="2025/05/17 21:05:12" color="#38d3d3">}}




{{<matomeQuote body="だって、authenticate()じゃなくてmiddleware_caching_auth_broker()を37箇所から呼ぶことになるだけじゃん。名前が変わっただけで、37箇所は変わらないよ。" userName="kazinator" createdAt="2025/05/18 01:33:43" color="">}}




{{<matomeQuote body="いや、Middlewareってそういう仕組みじゃないよ。フレームワークに登録するんだ。そうすれば、リクエストがエンドポイントに来る前に、フレームワークが勝手に呼んでくれるんだ。だから、全部のAPIコールで認証が呼ばれたって信頼できるんだよ。" userName="bognition" createdAt="2025/05/19 00:17:37" color="#38d3d3">}}




{{<matomeQuote body="でもさ、呼び出しがプログラマーから隠されてるなら、それでいいじゃん。この返信、真面目なのか皮肉なのか自分でもわかんないけどね。たぶん両方かな。" userName="all2" createdAt="2025/05/18 02:34:52" color="">}}




{{<matomeQuote body="＞middleware_caching_auth_broker()を37箇所から呼ぶことになる...＜<br>いや、違うよ。実際にはどこからも呼んでないんだ。君が書いてないフレームワークが、登録されたmiddlewareを呼んでるんだよ。この記事で問題にしてるのは、37箇所から呼ばれることによるコード構造の複雑さだろ。登録されたmiddlewareは、そういう”コード構造の複雑さ”が問題になるような場所からは呼ばれないんだよ。君の理屈は、『プログラミング言語でコード書いたからビットシフトを何百万回も呼んでる』って言うのと一緒だよ。技術的にはそうかもしれないけど、ここで話してることとは違うんだ。" userName="KPGv2" createdAt="2025/05/18 04:04:48" color="#785bff">}}




{{<matomeQuote body="それって、食料品はスーパーからしか来ないと思ってるときのプログラミング版みたいだね。" userName="philwelch" createdAt="2025/05/18 05:15:57" color="">}}




{{<matomeQuote body="それはいいけど、農家が存在しないとか、システムの一部じゃないなんてフリはしないでね。" userName="philwelch" createdAt="2025/05/19 16:34:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="あの発言の最も妥当な解釈は、『関数が37回呼ばれてるからリファクタリングが必要だ』（それはむしろ良いことなのに）ってことじゃなくて、if文をその関数の内外に移動させようと思ったときに、リファクタリングが必要になるってことだと思うよ。" userName="kazinator" createdAt="2025/05/17 22:30:47" color="#45d325">}}




{{<matomeQuote body="記事の”dissolving enum refactor”の例はポリモーフィズムだよ。最初にifで場合分けし、それをオブジェクト等に持たせて、メソッド呼び出しで処理する。こうすると、場合分けを決める場所と処理する場所が分離できる。ケースが変わっても、決める場所だけ直せばOK。これはトレードオフで、処理箇所でケースが見えなくなる代わりに、ケースリストへの依存を減らせるんだ。" userName="layer8" createdAt="2025/05/17 15:17:24" color="#785bff">}}




{{<matomeQuote body="コードの複雑さチェックツール（SonarQubeとかね）は、最終的にifを下に押し下げる方向に促すんだ。でも、この記事はその逆を勧めてるよね。ifを上に押し上げると、複雑な分岐ロジックが一個の関数に集約されるけど、実際の作業は全部、単純なサブルーチンに任せられるって考え方。" userName="password4321" createdAt="2025/05/17 13:24:22" color="#45d325">}}




{{<matomeQuote body="これを解決する方法は、決定と実行を分けることだ。これは昔なじみのBertrand Meyerから学んだ考え方だよ。<br>if (weShouldDoThis()) {<br> doThis();<br>}<br>これは関数型コア・命令型シェルを補完するか、その一部だね。これらのチェックを分離することでテストしやすくなるし、複雑さが気になるならチェック内の各条件を関数に分けられるよ。" userName="hinkley" createdAt="2025/05/17 14:08:00" color="#785bff">}}




{{<matomeQuote body="関数は決めるか実行するか、どっちかだけにすべき。両方やっちゃダメだね。" userName="0cf8612b2e1e" createdAt="2025/05/17 15:14:43" color="#785bff">}}




{{<matomeQuote body="でも、もしそれが全部なら、システムはどうやって動くの？結局どこかで決めて、その決定に基づいて行動する必要があるでしょ？" userName="swat535" createdAt="2025/05/17 18:30:34" color="#ff33a1">}}




{{<matomeQuote body="一つの可能性としては、フレームワークから呼ばれるfile.pyみたいなファイルを使うことかな。インターフェースはこんな感じ。<br>def doth_match(*args)：<br> return True # 条件<br><br> def doeth_thou(*args)：<br> # 処理<br> return {} # 例：ステータスオブジェクト<br><br>フレームワークがループして最初の関数をチェック、真なら二番目を実行。他のルールファイル（やオブジェクト）についてもブレークしたり続けたりできる。rule1.pyとか複数ファイルで分けてもいいね。" userName="turtleyacht" createdAt="2025/05/17 18:57:22" color="#785bff">}}




{{<matomeQuote body="親コメントが言いたいのは、フレームワークのどこかでdoth_matchを呼んでからdoeth_thouを呼ぶ場所では、決定と実行の両方をやってる一つの関数があるってことだと思うんだ。プログラムには両方やる責任を持つ関数が絶対必要になるはずだよ。" userName="gameman144" createdAt="2025/05/17 20:15:24" color="#ff33a1">}}




{{<matomeQuote body="質問して、その答えで別関数を呼ぶような関数は、ただの糊付けコードで、大したことないってば。開発者が絶対的なものを求めるのは卒業すべきだって。principle of the excluded middleみたいな考え方は、ブール論理とか特定の分野以外ではあんま使えない、一発芸みたいなもんなんだよ。" userName="hinkley" createdAt="2025/05/18 08:36:47" color="#ff5c5c">}}




{{<matomeQuote body="これはただ、関数の中の決定を呼び出し側に移動させるだけだね。そうなると、関数自体は一つなのに、呼び出される場所がたくさんあるから、間違えやすくなることが増えるよ。" userName="const_cast" createdAt="2025/05/18 06:05:59" color="#45d325">}}




{{<matomeQuote body="これに加えて、ここでめちゃくちゃ役に立つパターンがあるよ：<br>findThingWeShouldDoThisToは条件を満たすものを見つけられるし、もし対象となるものを渡せればdoThisをすごくシンプルにできるんだ。それは読み取り専用で、テスト可能だし、読みやすい。超おすすめだよ。" userName="btown" createdAt="2025/05/17 17:23:46" color="#45d325">}}




{{<matomeQuote body="なんか分かりづらいな。本来は条件とアクションを分ける話でしょ？あなたの例だと「これをすべきか」のロジックがどれくらい関数にあるか不明だよ。もし全くないならfind/lookup関数でOK。でも、もしセットを回したりDBをクエリしたりするロジックがあるなら、元の話と違う。<br>たぶん、doThis( findAllMatchingThings( determineCriteriaForThingsToDoThisTo()))<br>みたいにするのが良い関心の分離じゃないかな。" userName="efitz" createdAt="2025/05/17 21:55:14" color="#ff5c5c">}}




{{<matomeQuote body="コードスキャナーの報告は鵜呑みにしちゃダメ．Sonarとかもバグじゃない”コードスメル”を出すし，それを直すのは時間かかるし，逆に新しいエラーを生むこともあるからね．実際のヤバい問題に集中できなくなるよ．" userName="jt2190" createdAt="2025/05/17 14:30:12" color="#45d325">}}




{{<matomeQuote body="同意．サイクロマチック複雑度チェックは個人的に一番苦手なルールかも．ベテラン開発者ならツールより複雑さの良し悪しは分かるはず．でも，100行で1000個のことやる関数作るような開発者には，CCCがリファクタを強制する偶然の助けになるのは認めるしかないな．" userName="xp84" createdAt="2025/05/17 15:08:04" color="#ff5c5c">}}




{{<matomeQuote body="サイクロマチック複雑度はデカい関数見つけるのに役立つけど，制限値を低く設定したがる人は，ループの中にifがあるくらいのレベルでも文句言って，結果何もしてない極小関数だらけのコードになるのが問題．どこで何やってるか追いにくいから，良い設計じゃないよ．" userName="jerf" createdAt="2025/05/17 15:13:00" color="#38d3d3">}}




{{<matomeQuote body="これを俺は”poltergeist code”（ポルターガイストコード）って呼んでるよ．小さい関数がいっぱいあって，全体では複雑なこと正しくやってるんだけど，どこでどうやってるか追うのがめちゃ大変なんだ．" userName="BurningFrog" createdAt="2025/05/17 16:02:56" color="">}}




{{<matomeQuote body="こういう時の反論ルールに「使い回さない関数は分けなくていい」ってのがある．絶対じゃないけど．理解しやすくなるなら分けるのもあり．どっちか迷ったら全体の意図が明確になる方を選べ．ボスや顧客のメールに近いのはどっち？「3番目の単語にスペースがあるか見て…」なんて普通書かないでしょ？<br>判断に迷ったら「この関数何のため？」って聞け．細かい操作に名前つけたい理由は何？" userName="Brian_K_White" createdAt="2025/05/17 17:07:22" color="#ff5733">}}




{{<matomeQuote body="分かる．特に若手には良いチェックだと思うよ．俺の経験上，サイクロマチック複雑度の問題ってネストした条件分岐として出ることが多いんだ．自分でも最小限に抑えてるけど，深いネストしてる同僚もいて気になる．早めにリターンするか，ロジック分けてネストをせいぜい2レベルにしたい派．ベテランなら判断できるべきだけど，基準あってPR戻さずに済むならそれはそれでいいと思うよ．" userName="phatskat" createdAt="2025/05/18 23:49:25" color="#ff33a1">}}




{{<matomeQuote body="こういうルールって，AIが書いた適当なコードっていうか”雰囲気コード”を見つけるのに役立つかな？レビューで指摘する手間を省けるかもって思うんだよね．" userName="mnahkies" createdAt="2025/05/17 15:42:51" color="">}}




{{<matomeQuote body="こういうツールって，だいたい何かしらのコンプライアンスのために必要だったりするんだよ．デフォルトルールいじるのは，コードフォーマッターみたいに全部無駄になっちゃうかも．出荷時のデフォルトを変えるように提唱するのが一番だけど，”そんな暇ねぇよ”って感じだよね™．" userName="password4321" createdAt="2025/05/17 17:47:08" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
