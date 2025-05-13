+++
date = '2025-05-06T00:00:00'
months = '2025/05'
draft = false
title = 'Matt GodboltがC++を見せてくれたらRustに心変わりした理由'
tags = ["Rust", "C++", "プログラミング言語", "エラーハンドリング", "言語比較"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> Matt GodboltがC++を見せてくれたらRustに心変わりした理由

引用元：[https://news.ycombinator.com/item?id=43907820](https://news.ycombinator.com/item?id=43907820)




{{<matomeQuote body="RustのResult型エラー処理がマジで最高！C++は例外とか戻り値とかエラー処理がバラバラでマジでイライラする。”？”とかResultのおかげでエラー処理が超ラクになったよ。" userName="dvratil" createdAt="2025/05/06 18:20:34" color="#38d3d3">}}




{{<matomeQuote body="Rustってpanicもあるからさ、Resultだけじゃないんだよね。panicなしのRustとかあるといいなー。" userName="zozbot234" createdAt="2025/05/06 18:48:47" color="">}}




{{<matomeQuote body="RustのResultはAPI設計に良いけど、C++でもSerenityOSみたいに同じことできるんだよね。SerenityOSマジすごいわ。<br>C++は言語としてはモダンだけど、コミュニティが20年くらい前で止まってる気がする。" userName="jeroenhd" createdAt="2025/05/06 18:40:29" color="#45d325">}}




{{<matomeQuote body="Rustのpanic!()は本当にヤバい復旧不能エラーで使うべきだよ！<br>APIとかだとたまにキャッチしたい時もあるけど、基本的にはpanicをキャッチしないのが鉄則。" userName="kelnos" createdAt="2025/05/06 19:19:50" color="">}}




{{<matomeQuote body="panicをなくすのって結構難しいよ。<br>メモリが足りない時とか、計算でオーバーフローした時とかどうするの？" userName="codedokode" createdAt="2025/05/06 19:50:43" color="">}}




{{<matomeQuote body="GoogleのStatusOrとか、C++23のstd::expectedがRustのResultに似てるよ。<br>std::expectedは標準化されたけど、C++23だから普及には時間かかるかもね。" userName="jchw" createdAt="2025/05/06 19:39:31" color="#ff5c5c">}}




{{<matomeQuote body="Rustはいいところ多いけど、コンパイル遅いって聞くんだよね。<br>あれって実際どれくらいヤバいの？<br>" userName="90s_dev" createdAt="2025/05/06 19:03:25" color="">}}




{{<matomeQuote body="C++のstd::expected、エラーなのに値取ろうとするとヤバい（未定義動作）らしい！<br>エラー処理ミスると未定義動作とかマジ危険だよね。いかにもC++って感じ。" userName="CJefferson" createdAt="2025/05/06 22:48:55" color="#ff5c5c">}}




{{<matomeQuote body="C++コミュニティが古いって意見、マジ同意だわ。<br>古い標準とかライブラリとか色々混ざってて、コード再利用とかマジ大変。<br>Rustみたいにやり方が一つに決まってる方がラク。<br>でもRustはJavaみたいに整理された標準ライブラリがないのは残念かな。" userName="jll29" createdAt="2025/05/07 02:51:06" color="#ff5733">}}




{{<matomeQuote body="C++のstd::expectedがエラーの時に安全じゃないのは、ちゃんとチェックする仕組みとかパターンマッチングがないからなんだ。<br>これは言語自体を変えないとダメかもね。今後の提案に期待かな。" userName="jchw" createdAt="2025/05/06 22:59:03" color="#ff33a1">}}




{{<matomeQuote body="アサートだってあるし、スローだってできるけどさ。この現代社会で、こんなにもたくさんのプログラムがハックされてるのに、さらにUBを導入するのが良い考えだなんて、どうやったらそうなるのか俺には理解できないね。俺がRustに心変わりした大きな理由の一つは、UBが原因のバグに一生悩まされることから逃れるためだよ。" userName="CJefferson" createdAt="2025/05/06 23:30:28" color="#785bff">}}




{{<matomeQuote body="＞多くの関数はメモリを確保するけど、メモリがなくなったらどうするべき？<br>AllocationErrorを返すんだよ。Rustは残念ながら利便性のためにここで間違ったデフォルトを選んじゃった。グローバルアロケータを前提としちゃったこととかね。今は明示的なアロケータと確保失敗ハンドリング(A:Allocator型パラメータ)を導入しようとしてるけど、エコシステムを分断する代償を払ってる(std::io::Read::read_to_endのようなlibstdの一部を含むすべてのサードパーティコードはA=GlobalAllocでしか動かない)。<br>例えばZigは最初から明示的なアロケータがあって、コンポジット型内の複数の値が同じアロケータを使えるように、アロケータを型の外に置く良いサポート(ArrayList vs ArrayListUnmanaged)があるから正しくやってるね。<br>＞あと多くの関数は加算を使うけど、オーバーフローの場合はどうするべき？<br>エラーを返す(＜a href=”https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...”＞https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...＜/a＞)か、オーバーフローが起こったことを示す(＜a href=”https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...”＞https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...＜/a＞)。それか、意図したならラッピング加算を使う(＜a href=”https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...”＞https://doc.rust-lang.org/stable/std/primitive.i64.html#meth...＜/a＞)。<br>チェックされたケースでは、std::ops::Addなどを実装するnewtypeラッパーを作ることで、checked_addのような面倒なものでなく、コンパクトな+などを使い続けられることに注意してね。ラッピングケースではlibstdがすでにそんなnewtypeを持ってるよ: std::num::Wrapping。<br>あと、+などを禁止するclippy lintもあるけど(＜a href=”https://rust-lang.github.io/rust-clippy/master/index.html#ar...”＞https://rust-lang.github.io/rust-clippy/master/index.html#ar...＜/a＞)、最もマゾヒスティックな人たちだけが有効にしてるんだろうね。俺も一度、チェック済み算術を強制したいパースコードで有効にしようとしたんだけど、前の段落で説明したCheckedラッパーで無意味にトリガーされちゃったから、結局無効にしたよ。" userName="Arnavion" createdAt="2025/05/06 20:06:09" color="#45d325">}}




{{<matomeQuote body="アサーションはデバッグ限定だし、例外は通常利用が保証されてないし、標準ライブラリの多くは必要としてない。std::abortはできるけど、それはそれでおしまい。これが特に良いってわけじゃないと思うんだ。もしそうしても、例外みたいにキャッチできないし、静的に起こらないことを検証することもできない。<br>C++はUBとランタイムエラーを減らして、コンパイル時エラーをもっと増やさないと。パターンマッチングも必要だね。" userName="jchw" createdAt="2025/05/06 23:56:34" color="#45d325">}}




{{<matomeQuote body="Rustがどうなるか見るために、C++みたいに36年間現場で使われてから判断してみようぜ。" userName="pjmlp" createdAt="2025/05/07 05:41:13" color="">}}




{{<matomeQuote body="もしかしたら異論かもしれないけど、俺的にはResult型は、まあ良いとは言え、まだたくさんの煩わしさがあると思うんだ。たまに(manpages-approved)dyn Errorと連携しなかったり、ちゃんと伝播しない変なライブラリエラーをinto()したり、もっと悪いことにmap_err()したりね。つまりさ、この時点で、anyhowクレートは、俺が始めるRustプロジェクトではどれもエルゴノミクス的にほぼ必須になっちゃってる。あと、?はクロージャの中じゃ使えない、とかね。<br>だから、これはC++よりは改善されてるけど(それは大したことないけどね)、まだかなり不器用な方法で実装されてるよ。" userName="dvt" createdAt="2025/05/06 18:27:27" color="#ff33a1">}}




{{<matomeQuote body="36年ってのはCFrontが最初に出た時から数えてるんだろ。同じようにRustを数えると2006年からだから、もう20年近く経つんだぜ。<br>追記: ストレートな事実を低評価してる奴ら、なんなんだ？" userName="timschmidt" createdAt="2025/05/07 08:39:01" color="">}}




{{<matomeQuote body="＞俺は多分、リクエストだけ中止したいだけで、プロセス全体がぶっ壊れるのは嫌だ<br>これはOSを書いてるサインだよ。Webサーバーならプロセスプールでリクエストを処理すべきなんだ。そうすれば本物のメモリ分離ができるし、問題があったらクラッシュできる。" userName="monkeyelite" createdAt="2025/05/07 09:23:55" color="#ff5c5c">}}




{{<matomeQuote body="俺もこれらのことが改善されるのは賛成だけど、UBがabortよりマシだってどうして誰も思えるのか理解できないね。(ちょっと愚痴らせてくれ、君がC++標準の mess に責任があるわけじゃないのは分かってる！)<br>俺はかれこれ...20年くらい前からUBがコンパイラやツールに好きなエラー検出を生成する自由を与えてくれるって聞いてきたけど、主な結果として得られたのはデバッグしにくいクラッシュコードを生成する自由だけみたいなんだ。<br>もちろん、だいたいのコンパイラでは何らかの”デバッグモード”をオンにできるけど、なんでそれを標準で強制しないんだ？コンパイラは好きなように”標準非準拠”の高速モードを追加する自由があってもいいだろ。" userName="CJefferson" createdAt="2025/05/07 01:21:19" color="#45d325">}}




{{<matomeQuote body="たとえプロセスプールを使ったとしても、リクエストごとにプロセスがあるわけじゃないし、一つのリクエストがクラッシュして無関係なリクエストがぶっ壊れるのはやっぱり嫌だよな。" userName="tsimionescu" createdAt="2025/05/07 09:36:45" color="">}}




{{<matomeQuote body="Result型は明らかに自明でないプログラムを書くには不十分だ。自明でない失敗は例外的な制御フローが必要だからね。Result型が機能しないのは、即時の呼び出し元が失敗を処理するのに文脈が足りない場合があるからか、あるいはエラー値をコールスタックのさらに上の呼び出し元まで全部伝播させないといけなくて、プログラムがものすごく脆くてリファクタリングがめちゃくちゃ難しくなるからだ。" userName="throw10920" createdAt="2025/05/08 04:03:58" color="#ff5733">}}




{{<matomeQuote body="どっちも疑問だな〜。まずリクエストは全部別プロセスにするべき。そうできない特別なケースがあるなら、それは設計ミスでリクエストが独立してない証拠だろ。バグだらけでクラッシュするasyncサブタスクシステムなんてウェブプログラムに入れたくないね。" userName="monkeyelite" createdAt="2025/05/07 09:50:08" color="">}}




{{<matomeQuote body="panicsは許容できる？実際にはpanicしないと思う場合でも？例えば、Mapに値を入れた後で、削除されてないのが分かってるキーでunwrapしたりexpectしたりするケースとか。仮定を間違えたらpanicする可能性はあるけどね。" userName="tcfhgj" createdAt="2025/05/06 19:41:44" color="">}}




{{<matomeQuote body="これ，ウェブサーバーの書き方として完全に間違ってる考えだよ。スケーラビリティをめちゃくちゃ犠牲にして，メモリ安全な言語ならほぼどうでもいいレベルのわずかな安全性を得るだけだろ。メモリ安全な言語使ってんなら，リクエストごとにプロセスとかスレッドとか分けるオーバーヘッドはありえないよ。" userName="tsimionescu" createdAt="2025/05/07 09:56:09" color="">}}




{{<matomeQuote body="君はプロセスのオーバーヘッドを過大評価してるよ。パフォーマンスのために正しさやセキュリティを犠牲にしてもいいって？でもメモリ安全な言語でもCライブラリ使うしバグはある。メモリだけじゃない，リソース管理にはプロセス分離が大事なんだ。Chromeが良い例だよ。JSとHTML分離が難しくて，結局各ページをプロセスで囲んだんだ。" userName="monkeyelite" createdAt="2025/05/07 10:04:57" color="#ff5c5c">}}




{{<matomeQuote body="多くのUBは，普通やらないことだよね。ゼロ除算とか整数オーバーフローとか定義できたとしても，それってコードのバグじゃん（一部の暗号アルゴリズムは別として）。<br>CPUによって挙動が違うから，定義した挙動にするには，コンパイラがチェックを入れなきゃいけなくてコスト高くなるんだ。<br>特にタイトなループで，絶対に起こらないって分かってるのに（コンパイラには分からないけど）チェックが入るのは勘弁してほしいね。" userName="bluGill" createdAt="2025/05/07 13:06:19" color="">}}




{{<matomeQuote body="Result型はたくさんの人にうまくいってるよ。”うまくいかない”なんて断言するのは気をつけて。多くの人が使えてるなら，それは単にスキルの問題かもしれないしね。" userName="ttfkam" createdAt="2025/05/08 15:19:11" color="">}}




{{<matomeQuote body="これもうできるよ。linterで設定すればpanicとかunwrapとかをコンパイル時に禁止できるんだ。Cargo.tomlにcliipyの設定を書けば，ちゃんとエラー処理しないとコードをコンパイルすらできなくできる。thiserrorとかanyhowと組み合わせれば，”？”演算子とかmap_errとかでエラーをちゃんと扱えるんだよ。" userName="bionhoward" createdAt="2025/05/07 12:39:18" color="#785bff">}}




{{<matomeQuote body="anyhowクレートを使うと，関数がErrになる可能性は分かるけど，具体的にどういうエラーなのかは分からないんだ。これってKotlinとかC#でどんなThrowableをthrowするか分からないのと大して変わらないよね。anyhowが悪いってわけじゃないけど，そんなに大きな違いはないと思うな。" userName="ackfoobar" createdAt="2025/05/06 18:56:27" color="">}}




{{<matomeQuote body="俺が”うまくいかない”って言うのは，良いコードが書けないって意味ね。”たくさんの人が使ってる”って意味での”うまくいかない”じゃないよ。PHPみたいに何十万人も使ってるのに”うまくいかない”言語もあるだろ。<br>Rustプログラマーは，言語に制約されて悪いコードを書いて，それを良いコードだって勘違いしてる傾向があるのはよく知ってるよ。" userName="throw10920" createdAt="2025/05/08 15:22:59" color="">}}




{{<matomeQuote body="UB（Undefined Behavior）自体は存在する理由があるけど，C++みたいに普通によくあるケースにまで存在するのが問題だよ。これはC++の設計，特にパターンマッチングがないとか，言語の進化が遅すぎるせいだね。std::variantやstd::expectedみたいに安全にしようとした機能も，入るのに時間がかかりすぎる。C++の標準化プロセスは壊れてるし，後方互換性のためにUBを完全に無くすのはもう無理だろう。C++はUBのせいで死にかけてると思うな。" userName="jchw" createdAt="2025/05/07 17:30:08" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ全部、PL設計コミュニティでは何十年も前から知られてるんだよ。ソフトウェアエンジニアリングの安全に関してイライラするのは2つ。1.「”実務家”」が「”理論家”」（プログラミング言語のPhD持ち）に対して持つ傲慢さ。2. よくテストされて研究された言語概念（Haskellの型クラス、つまりRustのtraitのことね）の導入の遅さ。<br>Rustが良い概念を選んで、独自の”実用的な”解決策を発明せずにうまくまとめ上げてるのはいいと思う。だって、それは「”実務家”」が「”理論的すぎる”」って見なすような一部のユースケースでひどく壊れちゃうんだから。" userName="choeger" createdAt="2025/05/07 06:42:33" color="#ff5c5c">}}




{{<matomeQuote body="Rustはかなりうまい中間点を選んだと思う。Cみたいにヤバいunsafeじゃないし、メモリ安全性みたいな問題セットを取り除くことを選んだ。<br>一方で、Rustは理論的な最高点には行かなかった。それ以外はあまり保証してないし、人間の助け（unsafeブロック）にもちょっと頼ってる。" userName="Ygg2" createdAt="2025/05/07 07:39:01" color="">}}




{{<matomeQuote body="確かに、でも他の面でも実用的だよ。ADTは取り入れてるけど、関数curryingはそうじゃない、とかね。" userName="Ygg2" createdAt="2025/05/07 09:33:06" color="">}}




{{<matomeQuote body="curryingは大したことないと思うな、ただのシンタックスシュガーで、読みやすくなるかどうかわからない。ADTやclosuresみたいに重要なコアコンセプトじゃないしね。{ foo(%1, bar) }みたいな記法があったらいいな、それは |x| { foo(x, bar) }の代わりになるんだけど。<br>こんなのある言語知らないけど！" userName="andrepd" createdAt="2025/05/07 10:02:34" color="">}}




{{<matomeQuote body="実務家が50年以上も提供されてるものを受け入れてないなら、それは良くないものってことだよ。<br>そういえばRustも「”理論的すぎる”」概念で苦労してるね。コミュニティが実務家に「概念は実際簡単で分かりやすい」ってガスライトしようとしてるけど、せいぜいちょっと成功してるくらいかな。" userName="blub" createdAt="2025/05/07 14:31:13" color="#ff5c5c">}}




{{<matomeQuote body="この手のC++に関する議論でよく、C++の問題の多くがC++が存在する前から知られてたって事実が抜け落ちてるのが変だよな。<br>いくつかの特定の分野を除けば、新しいプロジェクトでC++を使う理由は全くないし、正直言って今までもなかった。<br>もし何かの理由でRustが無理なら（俺もそういう一人だけど）、C++やCの落とし穴がない他の選択肢はたくさんあるぜ。" userName="bigbuppo" createdAt="2025/05/07 16:20:25" color="#ff5c5c">}}




{{<matomeQuote body="embedded programmingをやってるなら別だけどね…" userName="ivmaykov" createdAt="2025/05/07 17:07:31" color="">}}




{{<matomeQuote body="embeddedは特定の分野の一つだと思う。<br>クライアントがプラットフォームに使ってるコンパイラをターゲットにするから、そこに選択肢はほとんどないんだよ。" userName="fsloth" createdAt="2025/05/07 17:38:28" color="">}}




{{<matomeQuote body="Rustにcurryingがないの、ちょいちょい気になるんだよね。コンパイル時にできるはずなのに、なんでサポートしてないんだろ？たぶんvariadic genericsとかないとキレイにできないのかなー？" userName="jeffparsons" createdAt="2025/05/07 09:44:03" color="">}}




{{<matomeQuote body="Mathematicaにはこれあるよ。具体例も載せてくれてるね。リンクで詳しい話も見れるよ。" userName="tmoertel" createdAt="2025/05/07 12:30:04" color="">}}




{{<matomeQuote body="うんうん、この記事はC++のダメなところを示す良い例だけど、Rustが特別すげーって例としてはそこまでかな。他の言語でも普通にできることだし。まあでもRustもちゃんとできる言語でよかったわ！" userName="sanderjd" createdAt="2025/05/07 13:23:15" color="">}}




{{<matomeQuote body="個人的にはcurryingってむしろヤバイ機能だと思うなー（きっと君もそう思うでしょ？）。JSでさ、あるファイルで引数一つ渡して、別のファイルで次の引数渡す、みたいなの見たことあるんだよ。マジひどかった。Scalaのimplicitsとかと並んで、マジで嫌いな機能。だいたいこういうのって変に使われるんだよね。" userName="tormeh" createdAt="2025/05/07 12:24:25" color="#45d325">}}




{{<matomeQuote body="「専門家が50年以上採用しないならダメ」って意見、専門家の意見は信用しないな。JSとかPHPを選んできた彼らみたいに、人気なものを選ぶだけだよ。実用的だけど、本当に良いものが人気なくて無視され続ける可能性は全然あると思うんだ。" userName="ordu" createdAt="2025/05/07 20:36:57" color="#45d325">}}




{{<matomeQuote body="”50年以上採用されないならダメ”ってのは、C++の機能の人気とは全然関係ないと思うね。C++が良いのはエコシステム投資のおかげで、デザインじゃない。理想はF#とかC#。大事なのは”理論的すぎる”よりa)よく使うパターン、b)それを言語デザインでどう実装か。GoF本もC++だと言語機能になってないものに名前つけただけだし。" userName="fsloth" createdAt="2025/05/07 17:48:49" color="#ff33a1">}}




{{<matomeQuote body="「Cにトランスパイルする」って場合さ、コードの特定の場所でパフォーマンスがボトルネックになった時って、どうやって最適化するの？" userName="fsloth" createdAt="2025/05/08 12:37:13" color="">}}




{{<matomeQuote body="あの & はね、postfix演算子で、式を匿名関数に変えるんだよ。「Pure Functions」ってドキュメント見るといいよ。リンクも貼ってくれてるね。" userName="tmoertel" createdAt="2025/05/09 23:00:33" color="#45d325">}}




{{<matomeQuote body="これはRustに限った話じゃないけど、言語設計者がcurryingをわざと実装しない理由の一つは、関数呼び出し元がちょっと読みにくくなるからだよ。呼び出しの戻り値の型を理解するには、その関数が引数をいくつ取るかあらかじめ知ってる必要があるんだ。" userName="skybrian" createdAt="2025/05/07 17:11:53" color="#ff5c5c">}}




{{<matomeQuote body="Clojureにもこれあるよ<br>user=＞ (#(println %1 %2) ”Hello ” ”Clojure”)<br>Hello Clojure" userName="masijo" createdAt="2025/05/07 12:10:36" color="">}}




{{<matomeQuote body="K言語だと引数はデフォルトでx y zって名前になるから、こう書くだけだよ: { foo[x, bar] }" userName="icen" createdAt="2025/05/07 14:26:01" color="">}}




{{<matomeQuote body="swiftにもこれあるよ { foo($0, bar) }" userName="cobbal" createdAt="2025/05/07 20:27:35" color="">}}




{{<matomeQuote body="それがなんで違いになるのか分かんない。<br>生成されたCコードは、この場合ただのビルド成果物でしょ。コンパイラが内部でよく使うIRsみたいなもんだよ。Cで書かれたコードのホットスポットを最適化するときに、例えばgccのIRsを考えたりしないよね？Cのソースコードと生成されたasmコードを見るだけじゃん。もしZigがCにトランスパイルできるなら（-ofmt=cでできるけど）、同じようにZigのソースコードと生成されたasmコードを見るでしょ。" userName="int_19h" createdAt="2025/05/08 20:27:16" color="#ff5733">}}




{{<matomeQuote body="Rustでも関数をcurryできるよ。ただ構文糖衣がないから手動でやる必要があるんだ。でもそれは良いことだと思う。curryされた関数は引数を一つ取ってクロージャを返す関数で、それが連鎖する形になる。このクロージャの連鎖でのownershipとborrowingの扱いはややこしくなりやすいから、明示的にするのが大事なんだろうね。同じタスクならstructで引数をまとめて持ち運ぶ方が簡単な場合もあるよ。" userName="bunderbunder" createdAt="2025/05/07 15:35:01" color="#ff33a1">}}




{{<matomeQuote body="Curryingはただの構文糖衣で、最初の引数をバインドして残りをそのまま渡すラムダみたいなもんだよ。同じくらいの簡潔さは別の方法でも達成できるんだ。例えば”pipeline”オペレーターとかね。そっちの方が可読性もあって拡張性も高い構文だよ。例: https://docs.rs/piping/latest/piping/" userName="int_19h" createdAt="2025/05/08 02:03:39" color="#ff5c5c">}}




{{<matomeQuote body="Elixirにもこれあるよ。近いやつね: &foo(&1, bar)" userName="Munksgaard" createdAt="2025/05/07 10:34:31" color="">}}




{{<matomeQuote body="curryingは重要な概念で、構文糖衣なんかじゃないと思うよ。関数が引数を一つだけ取るってことだからね。OCamlみたいにfoo bar bazが(foo bar) bazと同じになるのがそれ。他の言語はエミュレートしてるだけかも。<br>君が探してる言語はきっとあるはずだけど名前忘れちゃったんだ。<br>OCamlにはpa_holesっていう構文拡張があって<br>(\\ foo \\1 bar)<br>これが<br>fun x -＞ foo x bar<br>になったんだよ。これはきっと他の言語に影響されたんだろうね。今はppxに置き換わってて、こんな拡張はもうできないかも。" userName="_flux" createdAt="2025/05/08 12:44:31" color="#ff5c5c">}}




{{<matomeQuote body="俺も同じこと思ったわ〜。Mattの例で必要だったのって強い型付けじゃん？それC言語ファミリー以外の世界にはずーっと昔からあったのにね。" userName="groos" createdAt="2025/05/07 16:34:09" color="">}}




{{<matomeQuote body="C++にもこれに似たのあるにはあるけど[1]、正直使わない方がいいやつね。<br>for_each(a.begin(), a.end(), std::cout ＜＜ _1 ＜＜ ’ ’);<br>あと、Scalaにもこういうのが第一級機能としてあるよ[2]。<br>[1]: https://www.boost.org/doc/libs/1_88_0/doc/html/lambda.html<br>[2]: https://scala-lang.org/files/archive/spec/3.4/06-expressions…" userName="GrantMoyer" createdAt="2025/05/07 13:43:52" color="">}}




{{<matomeQuote body="こういう記事読むの好きだけど、C++何十万行も書いた経験から言うと、意図しない型変換で困ることマジでない。たまにあっても一回実行で気づくし、ラッパー型使う手間と比べたら些細。ラッパー型はノイズ多いしメリット薄い。<br>Rustのborrow checkerも同じ。C++でもスマートポインターでメモリバグなんて稀だし、ロジックやアルゴリズムのバグが圧倒的に多い。些細な問題のためにコーディング変えたくないわ。Rustのborrow checkerない版欲しい。<br>俺のコード（数学アルゴリズム系）のせいかな？いや違うと思う。この意見が普通じゃないのが不思議。" userName="quietbritishjim" createdAt="2025/05/07 08:58:03" color="#ff5c5c">}}




{{<matomeQuote body="<br>＞ 意図しない型変換で困らない<br>C++erの95%が言うけど、C++のバグは大抵これ系の簡単なやつ。複雑なアルゴリズムならミスしても気づかないかもよ。<br>＞ ラッパー型はノイズ<br>俺はラッパー型は可読性のメリットだと思うね。何してるか分かりやすいし、プロトタイプで把握できる。<br>＞ メモリバグよりロジックバグが多い<br>みんな言うけど、研究（セキュリティバグ）だと逆。一番多いのはnullポインター、配列外参照、二重解放みたいな簡単なやつ。" userName="lmm" createdAt="2025/05/07 09:20:47" color="#ff33a1">}}




{{<matomeQuote body="これってソフト開発の社会学だよね。この業界にはマジで標準とか確立されたプラクティスがない。本か他社の真似くらい。質より速さな上層部の気まぐれに振り回されてる。<br>高品質なソフト書いても金になんないし、プロジェクトは品質を阻害することばかり。Rustみたいな言語は、それを技術で何とかしようっていう必死の試みなんだ。<br>ある意味成功してるんだろうけど、こういう記事見ると、ほとんどのプログラマーがいかにダメか、そもそもなんでRustみたいな「応急処置」が必要だったのかよく分かる。" userName="blub" createdAt="2025/05/07 10:10:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうかもね。でも、もっと良い言語とかリンターとか、他のツール改善を馬鹿にするのは違うと思うな。これらってすごく低コストで系統的に品質上げてくれるんだよ。業界全体がもっと積極的に良いツールや技術を取り入れようとしないのが信じられない。" userName="tormeh" createdAt="2025/05/07 12:32:43" color="">}}




{{<matomeQuote body="業界全体はそうしてるけど、C++のエコシステムがそうじゃないだけ。" userName="benced" createdAt="2025/05/07 18:34:41" color="">}}




{{<matomeQuote body="それは違うと思うな。C++はいろいろ古いし大変なこと多いけど、みんな無理のある制約の中でベストを尽くしてるんだよ。sanitizersとかclang-tidyみたいなのとか、コンパイラの解析機能の向上とか、かなり好評みたいだし。" userName="affyboi" createdAt="2025/05/08 14:59:31" color="">}}




{{<matomeQuote body="これな。業界は直感やその場しのぎとエンジニアリングがごちゃ混ぜ。当たり外れ。<br>表向きは高品質って言うけど裏では速く作って壊す、アートだとか。VCが「vibe coding」とか。ソフト開発は一番バラつきが大きい分野で、会社によっては「ノリ」でやってる。<br>どうなるか興味深い。Quebec Bridgeみたいな事故起きる？Crowdstrikeの事故でもまだ足りない。分散型取引所のハックも同じ。<br>どこ向かってるか分からん。たぶん、「vibe coding」のせいで大事故起きて、VC責任問われて、規制始まるのを待ってる。" userName="eftychis" createdAt="2025/05/07 19:08:28" color="#ff5733">}}




{{<matomeQuote body="ソフト開発者は違うけど、Software Engineeringは違うよ。多くの国では専門的な称号だし、大学とかエンジニアはちゃんと認められないと法律的にその称号使えないんだから。" userName="pjmlp" createdAt="2025/05/08 08:03:49" color="">}}




{{<matomeQuote body="こういうのってあんまり関係ないと思うんだよね。大事なのは技術じゃなくてプロセスだよ。資格持ってる人でもヤバいコード書くの見まくったし、独学でもめっちゃ考えてシンプルに解く人も見たことある。特に傾向も感じないな。あ、でもPhDsだけは別。コードうまいPhDなんて一人しか知らないわ。" userName="rowanG077" createdAt="2025/05/08 19:15:54" color="">}}




{{<matomeQuote body="PhDがコード下手ってのは、チームで毎日長時間コーディングしてないからじゃない？PhDってのが原因じゃなくて、単にコーダーじゃないからだよ。（趣味でめっちゃコード書いてるPhDsは上手いかもね）。蛇に噛まれた時の手当を知らなくても医療のPhDは取れるみたいなもん。" userName="foobahhhhh" createdAt="2025/05/08 22:11:52" color="">}}




{{<matomeQuote body="今やってるプロジェクトは15年以上かかった巨大なC++の物理シミュレーションなんだけど、一番多くて診断が難しいバグは単位変換のミスだね。具体的なデータと比較してなかったら、多分見つけられもしなかったと思う。" userName="davemp" createdAt="2025/05/07 10:48:17" color="">}}




{{<matomeQuote body="C++には単位を扱うライブラリがいくつかあるよ。コンパイル時に型チェックするのはテンプレートを使えばできるし、constexprならもっと良い感じにできる。問題なのは、それぞれのライブラリが独自のルール持ってて、お互いに連携できないことだね。" userName="j16sdiz" createdAt="2025/05/07 13:13:28" color="#ff33a1">}}




{{<matomeQuote body="僕もそういう単位型ライブラリを自分で作ったことあるんだけど、結局ダメだったんだ。表示する時に、何千もある型それぞれに違うAPI書くの、誰もやりたがらなくてさ。今のシステムは実行時に型が一つだけあって、コンストラクタで単位系を指定する形。でも、メートルとガロン足しちゃうと実行時エラーになるけどね。" userName="bluGill" createdAt="2025/05/07 13:22:24" color="#45d325">}}




{{<matomeQuote body="えっと…なんで違うAPIが必要なの？UIに値を渡す直前に単位なしに変換すればよくない？それか、UIライブラリをパラメータ化して、どんな単位でも勝手に表示できるようにするとか。テンプレートから単位の文字列とか引っ張ってきて、例えばkg＜float＞の値をラベルにバインドしたら勝手に”42 kg”って表示するとかさ。" userName="int_19h" createdAt="2025/05/08 02:13:29" color="#45d325">}}




{{<matomeQuote body="単位なしに変換しちゃうと、強い型のメリットが全部消えちゃうんだよね。それはトレードオフとして受け入れるかって話。あと、簡単に単位なしに変換できるってことは、本来単位が必要なところで単位なしを使っちゃいやすくなるってデメリットもあるんだ。単位システムの実装って色々あって、うちのプロジェクトだけでも3回失敗したんだよ。NDAで言えない理由もあるけど、これがうちにとっては一番の妥協点なんだ。君の問題は違うだろうから、自分で解決策見つけなきゃね。簡単な問題なら既存のでいいけど、複雑なら何が本当に欲しいのか考えないと。" userName="bluGill" createdAt="2025/05/08 12:29:57" color="#ff5c5c">}}




{{<matomeQuote body="他の要件があるのは分かるよ。ただ、元々言ってた表示の件は、単位が型システムにちゃんと反映されてても難しくないと思うんだけど。単位なしに変換すると型のメリット失うって言うけど、表示する直前にやれば問題なくない？数値もテキストにする時に変換するし、同じことだよ。MVVMなアプリなら、モデルとビューモデルの間とかね。そもそも単位付きシステムって、単位なしの値を取り出す機能が元々あるでしょ。同じ単位の1で割ればいいんだよ。F#だとこう書けるし。<br>   let v = 10＜m/s＞      // m/s<br>   let n = v / 1＜m/s＞   // 単位なし" userName="int_19h" createdAt="2025/05/08 20:14:39" color="#ff33a1">}}




{{<matomeQuote body="＞ コードを一度実行しただけで気づく<br>そんなこと絶対ないって断言するわ。君はそういうミスしなかったのかもしれないけど、もししてたら絶対気づかずに済んだ時もあったはず。自分のコードとか他のプロジェクトで、そういう問題何回も見つけたもん。CONSTが0だから大丈夫だったfunc(0, CONST)が、誰かがCONSTを1に変えたらクラッシュするとかさ。Last Line Effectみたいな問題は、何年も気づかれないことだってあるんだよ。" userName="viraptor" createdAt="2025/05/07 09:16:46" color="#ff5733">}}




{{<matomeQuote body="友達がstdのコンストラクタ（多分stringで、charとintの引数を間違えるやつ）の引数ミスにみんなよく気づくって言ってたんだ。Googleのコードベースで探したら、そういう事例がめっちゃたくさん（数忘れたけど）見つかって、その多くがマジのバグだって確認できたらしい。そいつは修正に何か月もかけて、最後はチェック追加したと思う。だから、これは机上の空論じゃないよ。君だってこのミスしてるのに気づいてない可能性すらあるって。" userName="kevincox" createdAt="2025/05/07 10:52:41" color="#45d325">}}




{{<matomeQuote body="その心配はわかるけど、clang-queryやclang-tidyでツール活用するのは難しくないし、コストも高くないよ。<br>一番の問題は、多くのC++エンジニアがツールを使わないこと。ツールに対して学習性無力感があるみたい。Rustは今、みんなのためにツールを整備するコアエンジニアがいるようだ。言語設計はさておき、この堅実なエンジニアリングを続けられるなら、すごく強いと思うね。" userName="humanrebar" createdAt="2025/05/07 11:29:53" color="#ff33a1">}}




{{<matomeQuote body="<br>”トリッキーなアルゴリズムコード”での借用は簡単だよ。難しいのはライブラリを書く時。RustはC++にはない方法でAPIにそれをエンコードさせる。<br>”ちょっと考えればメモリエラーはほとんどない”って言うけど、借用チェッカーで苦労するなら、他人や将来の自分に強制できない制約に依存してるから。例えばC++のオブジェクトはデフォルトでスレッド安全じゃない。正しく効率的にしか使えないようには設計できないんだ。" userName="devnullbrain" createdAt="2025/05/07 10:49:30" color="#ff5733">}}




{{<matomeQuote body="この記事内容は経験あるC++プログラマなら当然なのに、多くのプログラマはそうじゃない。普通の会社は品質を下げて利益を出すから、Rustみたいなツールが必要になるんだ。<br>残念ながらRustはまだ平均的なプログラマには難しすぎるけど、間違いは厳しく指摘してくれる。関数型/メタプログラミング好きが集まる一方で、”みんなの言語”であることと矛盾してるよ。<br>仕事の少なさも問題だけど、まるで拘束具を着けてるみたいで、＜activity＞と同じくらい楽しいって懸念もあるね。" userName="blub" createdAt="2025/05/07 10:04:31" color="#ff5733">}}




{{<matomeQuote body="ScalaやKotlinであったように、Rustは職場で使うのを許されたHaskellなんだよ。そうやってああいうライブラリが生まれるんだ。" userName="pjmlp" createdAt="2025/05/08 08:05:13" color="">}}




{{<matomeQuote body="僕も同じ意見だよ：<br>＞Rustはまだ平均的なプログラマには難しすぎる<br>平均的なプログラマをRustに”オンボーディング”する一番いい方法は何だろう？複雑な構文を避けても生産的になれるのかな？それとも、”平均的なC++プログラマ”をクビにして超優秀なRustプログラマに置き換える必要があるのかな？" userName="Tempest1981" createdAt="2025/05/08 03:41:44" color="">}}




{{<matomeQuote body="＞自分が遭遇する最も重要でない問題の一つを直すために、なぜコーディング方法を完全に変えたいと思うのか？<br>僕も同じ気持ちだよ。Rustには確かに良い特性や機能がたくさんあるけど、借用チェッカーが僕にとってはものすごく嫌なんだ。" userName="spacechild1" createdAt="2025/05/07 09:06:25" color="">}}




{{<matomeQuote body="FAANGとかでC++を大量に書いてて、もうC++が大嫌いだったんだ。<br>今後、本当の修正が出てくるか気になるね。このCppConのトーク：”To Int or to Uint, This is the Question - Alex Dathskovsky - CppCon 2024” https://www.youtube.com/watch?v=pnaZ0x9Mmm0 を聞くとC++は壊れてるみたい。1000個もルール覚えて一つ間違えたら危険、みたいなC++は嫌だ。意図的にオプトインしないとルール破れないC++がいい。<br>別のC++トークでRustクレートの約60％がunsafe Rustに依存してるって話があった。Rust批判じゃなく、unsafeにオプトインする安全なC++はRustのunsafeに似る可能性。" userName="socalgal2" createdAt="2025/05/07 03:11:53" color="#45d325">}}




{{<matomeQuote body="＞別のC++トークによると、Rustクレートの約60％がunsafe Rustに依存してるらしいよ。<br>それはちょっと違う話の出典かも。Rust FoundationのPainterという分析ツールによるとね。[０]：<br>＞2024年5月現在、約12.7万クレート中、unsafeを使うのは19.11％。直接unsafeクレートを呼ぶのは34.35％。そのほとんどはCやC++コードへの呼び出しだよ。<br>正直、stdlibとか含めたら60％はもっと高いかと思ってた。ハードウェアもunsafeだから、全てのRustコードはどこかでunsafeに依存してるって話もあるけどね。<br>[０]：https://github.com/rustfoundation/painter<br>[１]：https://rustfoundation.org/media/unsafe-rust-in-the-wild-not..." userName="aw1621107" createdAt="2025/05/07 06:01:59" color="#ff5733">}}




{{<matomeQuote body="メモリ割り当てはunsafeだから、stdlibのどんなコンテナもどこかでunsafeを使うことになるよ。でもこれはsafe Rustがunsafeなしで役に立たないって意味じゃない－Rustの有用性は、unsafeな構造体の周りに安全なインターフェースを作れることなんだ。" userName="eptcyka" createdAt="2025/05/07 08:06:12" color="#ff5733">}}




{{<matomeQuote body="そうだね、全く同感だよ。引用した統計と違って、60％って数字が何を包含してるのか（例えば依存チェーンのどのくらい下まで見てるかとか）具体性がなかったから、ちょっと混乱してたんだと思う。" userName="aw1621107" createdAt="2025/05/07 08:59:21" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
