+++
date = '2025-03-11T00:00:00'
months = '2025/03'
draft = false
title = 'コードが読みにくくなる理由とは？複雑さの視覚パターンを徹底解説'
tags = ["プログラミング", "可読性", "コード品質", "関数型プログラミング", "ソフトウェア開発"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> コードが読みにくくなる理由とは？複雑さの視覚パターンを徹底解説

引用元：[https://news.ycombinator.com/item?id=43330900](https://news.ycombinator.com/item?id=43330900)

{{<matomeQuote body="連鎖のmapやreduce、filterなどの関数型プログラミングの構文は簡潔だけど、長い連鎖は可読性を損ねるんだ。この記事の内容とは関係ない気がする。慣れれば、これらは他の選択肢よりも読みやすく書きやすいんだよ。もっと読みやすい例を考えてみてよ。たとえば以下のコードはけっこうすごいと思うけどな。<br>    var authorsOfLongBooks = books<br>        .filter(book => book.pageCount > 1000)<br>        .map(book => book.author)<br>        .distinct()" userName="feoren" createdAt="2025-03-11T16:27:50" color="">}}

{{<matomeQuote body="このコメントはちょっと攻撃的すぎる気がする。あなたの例は確かに読みやすいけど、引用した文の意図とは違うと思う。私の経験では、5回の連鎖が始まると読みづらくなる感じ。でも、優雅な関数型プログラミングはやりすぎ注意。" userName="seeinglogic" createdAt="2025-03-11T19:23:21" color="">}}

{{<matomeQuote body="関数型スタイルは理解しやすいと思う。やっぱり慣れがすごく大事なんだな。例えば、Pythonのリスト内包表記を使うのが好きなんだ。副作用のないきれいなコードが多いから。ビルダースタイルも同じで、各ステップを理解できれば、出力もわかる。従来の命令式スタイルは中間変数があって推測しにくいこともある。結局、慣れが重要なんだよね。" userName="atoav" createdAt="2025-03-12T09:07:29" color="#785bff">}}

{{<matomeQuote body="＞多分、慣れは主観的だという教訓のようだ。<br>最近、可読性はすごく主観的だって強く感じてる。慣れがこれに大きく影響するけど、他にもいろいろ関係してる。だから、あるパターンが客観的にもっと読みやすいって主張するのは間違いだと思う。今はチームで意見の後れをとってるなら、自分を合わせた方がいい、逆の立場なら相手を説得するのがいいね。" userName="jghn" createdAt="2025-03-12T14:48:05" color="">}}

{{<matomeQuote body="mapやreduce、filterの連鎖を批判する意見はHalstead Complexityの箇所から突然出てきたように感じたし、不当だと思う。私の意見では、長い関数の連鎖はHalsteadの複雑性が低いはず。あなたの例はあまり関数型には見えなかったし、実際のところ、長い「流れる」スタイルはOO言語でも長い間使われているよ。<br>あとは、いかにDSL（特定ドメイン言語）を読みやすくするかが大事。" userName="feoren" createdAt="2025-03-11T21:03:35" color="">}}

{{<matomeQuote body="＞流れるような連鎖はオペランドを変更するべきじゃない。<br>実はビルダーでよく見かけるスタイルだけど、私はそれほど気にしないよ。<br>    FooBuilder()<br>      .setBar(bar)<br>      .setBaz(baz)<br>      .setQux(qux)<br>      .build()" userName="vitus" createdAt="2025-03-11T23:48:26" color="">}}

{{<matomeQuote body="これを見るたびに、可変引数の関数の方がいいなと思う。" userName="wegfawefgawefg" createdAt="2025-03-12T00:25:11" color="">}}

{{<matomeQuote body="o_node := graph.GetNodeByName(name)<br>var ret []string<br>for _, node := range o_node.connectedNodes() {<br>    if !node.isHidden {<br>        ret = append(ret, node.name)<br>    }<br>}<br>return ret" userName="desumeku" createdAt="2025-03-11T21:41:30" color="">}}

{{<matomeQuote body="こんな方法が合理的に見える人は少ないと思う。確かに慣れは大事だけど、クリアさは大きく低下している。結果のために一時変数、手動で追加、複雑な条件文があって論理も直線的じゃなくなるのが問題。それが可読性を下げているんだよね。" userName="stouset" createdAt="2025-03-11T23:05:33" color="#785bff">}}

{{<matomeQuote body="お互いのプログラムの問題点は似ているけど、どんな隠れた関数呼び出しの裏側で何が行われているかってことだよ。filterの中身は結局のところfor文と条件分岐なんだから。<br>この魔法のように動く関数型プログラミングは、背後で一時変数や条件文を使ってるってわけでもないし、実際にメモリを使うのが現実だよね。" userName="desumeku" createdAt="2025-03-11T23:16:46" color="">}}

{{<matomeQuote body="＞ その違いは、見えない関数呼び出しの裏に隠されているかどうかだけだよね。’if’や’range’や’append’が見えないから問題ないってわけ？<br>これはおかしいと思うんだけど、実際に’map’や’filter’はすごくわかりやすい抽象化だよ。" userName="stouset" createdAt="2025-03-12T00:30:58" color="#45d325">}}

{{<matomeQuote body="＞ 実際には、性能を気にしなきゃならないことが多いから、実用面での使用が少ないんじゃない？<br>FPでは性能の低下がどこで起こるか分からないし、immutabilityが厳しすぎて、オブジェクトを無駄にコピーするだけな場合があるんだよね。" userName="desumeku" createdAt="2025-03-12T03:29:26" color="#38d3d3">}}

{{<matomeQuote body="＞ その基準は不当な比較だよね。’for..append’と’.map()’は同じステップを同じ順番で実行するのに、それがCMPやJMPと同じだっていうのは無理がある。<br>面白い理論は好きだけど、実際にどうなってるかの実装を示してほしい。" userName="porridgeraisin" createdAt="2025-03-12T13:48:53" color="">}}

{{<matomeQuote body="＞ Golangの’append()’もスライスを成長させることがあるんだけど？<br>条件ロジックが一つの’if’なら、同じことがfilter()にも隠れてるって話でしょ。" userName="porridgeraisin" createdAt="2025-03-12T13:42:59" color="">}}

{{<matomeQuote body="＞ もし結果のサイズが分かっていたら、結果の配列のキャパシティを最初から設定できるのは利点だね。<br>Rustの最適化も効率的なマシンコードを生成しているはずだよ。" userName="stouset" createdAt="2025-03-13T02:44:02" color="">}}

{{<matomeQuote body="あなたの例は、単純なフィルターだけど、ステップが長くなると訳がわからなくなるよ。<br>プロシージャルループなら中間結果を変数に格納できるから、次のステップに集中しやすいんだ。" userName="jltsiren" createdAt="2025-03-11T18:38:28" color="#ff5c5c">}}

{{<matomeQuote body="＞ すべてを一度に理解する必要はないよ。<br>forループスタイルは、全体を把握しないといけない場面が多いから、目の前の処理に集中できないことが多いよね。" userName="stouset" createdAt="2025-03-11T18:41:14" color="">}}

{{<matomeQuote body="＞ 本のリストをフィルタリングして、著者をマップして、著者の重複を排除するのはステップが増えるほど理解が難しくなる。<br>最適なアプローチは、概念に名前を付けて自分の構造を明確にすることだよね。" userName="jltsiren" createdAt="2025-03-11T18:54:53" color="#38d3d3">}}

{{<matomeQuote body="＞ 結合に慣れている人はそんな風に考えないよ。<br>フィルター、著者、そして区別するって感じで、各ステップはそれぞれ独立したものとして捉えていると思う。" userName="lelandbatey" createdAt="2025-03-11T19:21:24" color="">}}

{{<matomeQuote body="＞ それが暗黙的な問題で、ステップが複雑だと中間状態がどうなっているのか分から中のが難しい。<br>中間状態に名前をつけることで、理解が深まることもあるんだよね。" userName="jltsiren" createdAt="2025-03-11T19:37:59" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="そういうことなら mejora クラリティ になると思うところでそれをやればいいじゃん？ファンクショナルスタイルでも必要なら名前をつけることはできるし。" userName="stouset" createdAt="2025-03-11T19:39:33" color="">}}

{{<matomeQuote body="あなたは本当に1,000ページ以上の本のユニークな著者のセットを説明しただけだと思うけど、それ以上シンプルにできるとは思えない。ファンクショナルスタイルはやり方を説明するのではなく、欲しい答えをそのまま表現してるんだよ。中間に名前付きの変数が欲しいなら、単にそれを使えばいいじゃん。" userName="stouset" createdAt="2025-03-11T19:38:59" color="#ff33a1">}}

{{<matomeQuote body="問題は、やりすぎることが簡単だってことだ。コードを書いてると、その意図がわかってるから、処理を増やすことが便利で魅力的に感じる。でも、見慣れないコードを読む時は、作者がもっと明確に書いてくれたらよかったと思うことが多い。手続きを使ったコードでは、1つの文であまり多くのことはしない方がいいと広く受け入れられているのに、ファンクショナルコードでは、その全体が1つの文になってしまう。" userName="jltsiren" createdAt="2025-03-11T19:56:57" color="#ff33a1">}}

{{<matomeQuote body="＞問題は、やりすぎることが簡単だってことだ。<br>全てのプログラミング言語の特徴にようこそ！読者やシンプルさを犠牲にして、5%の状況のために95%のケースを最適化するのは良い選択とは思えない。" userName="stouset" createdAt="2025-03-11T20:40:38" color="">}}

{{<matomeQuote body="中間ステップを使うことは、書くのもデバッグも難しくなるよ。" userName="__mharrison__" createdAt="2025-03-11T20:03:10" color="">}}

{{<matomeQuote body="どういうこと？中間ステップの状態はデバッガーで簡単に見えるし、相対的な条件付きブレークポイントも簡単に設定できるよ。中間の状態は理解しやすく、中間変数よりも多くの説明コメントを追加することになってしまうから、避けるか分けるようにしてる。" userName="nomel" createdAt="2025-03-11T22:10:54" color="">}}

{{<matomeQuote body="SELECT DISTINCT author<br>FROM books<br>WHERE pageCount > 1000；" userName="titzer" createdAt="2025-03-11T18:50:17" color="">}}

{{<matomeQuote body="それは長いチェーンじゃないよ。reduceすらないし、いくつかのreduceをネストさせてみてよ。" userName="dsego" createdAt="2025-03-11T18:51:30" color="">}}

{{<matomeQuote body="“long”って何？" userName="aaronbrethorst" createdAt="2025-03-11T19:36:28" color="">}}

{{<matomeQuote body="本当に3つの操作が“long”じゃないと思うの？半分の知恵があれば3操作は長くないって誰もが思うと思うよ。多くの人が5や6に同意し、それ以上なら多くの人が同意するはず。" userName="brabel" createdAt="2025-03-12T07:30:40" color="">}}

{{<matomeQuote body="authors_of_long_books = set()<br><br>for book in books:<br>    if len(book.pages) > 1000:<br>        authors_of_long_books.add(book.author)<br><br>return authors_of_long_books<br><br>最初に結果のタイプが明示されてて、booksを一度だけ順番に処理してページ数でフィルタリングしてるのが分かる。中間結果も考えなくていいし、関数呼び出しのコストもない。声に出して読むと自然で明瞭だし、正しい順序になってる。たとえば「各本について、1000ページ以上なら著者をセットに追加する」って感じ。" userName="Spivak" createdAt="2025-03-11T16:44:29" color="#785bff">}}

{{<matomeQuote body="確かに自然で分かりやすいし、正しい順序だけど、手続き型プログラミングに詳しくない人には自然じゃないかも。言語的に自然な表現だと、「この本の中で1000ページ以上のものはどれですか？著者も教えてください」に近いと思う。" userName="tremon" createdAt="2025-03-11T17:50:31" color="">}}

{{<matomeQuote body="それは手続き型プログラミングの話じゃなくて、まさにそれがメンタルモデル。実際にうちの11歳の子に本の名前を20個くらい書かせて、200ページ以上の本の著者を教えてもらったら、彼女は自然に手続き的に処理してたよ。" userName="bdangubic" createdAt="2025-03-11T18:01:13" color="#ff5733">}}

{{<matomeQuote body="それは実際の行動であって、解決策のメンタルモデルじゃないと思う。彼女にタスクを説明させたら、きっと「(本を取る)→(200ページ以上の本)→(著者を記録する)→(一度だけ)」ってなると思うよ。" userName="skydhash" createdAt="2025-03-11T18:10:24" color="">}}

{{<matomeQuote body="Pythonが登場すると、コンプリヘンションって選択肢が増えるんだ。これは確かに論争の余地があって、複雑になりすぎることもあるけど、このケースでは小さくてクリアなものになるはず。" userName="syklemil" createdAt="2025-03-11T17:10:26" color="#38d3d3">}}

{{<matomeQuote body="元のコードを意図的に難解にして、各アプローチが複雑な問題にどう対処するか試してみたんだけど、これで合ってる？どれが一番読みやすいと思う？" userName="itsmeknt" createdAt="2025-03-11T19:13:49" color="">}}

{{<matomeQuote body="シンタックスハイライトなしだと、「book.author for book in books if book.page_count > 1000」の解析に余計な労力がかかる。改行が要素を分けるために使われてないから。" userName="davidw" createdAt="2025-03-11T17:46:40" color="">}}

{{<matomeQuote body="この議論の多くは意見だから、一部のコメントについては注意が必要。>...関数呼び出しがないって言ってるけど、これはオリジナルの3回に対してO(n)。" userName="tvier" createdAt="2025-03-11T17:59:11" color="">}}

{{<matomeQuote body="それは違う。関数型では、各アイテムに対してラムダが1回ずつ呼ばれる。" userName="khaledh" createdAt="2025-03-11T18:23:53" color="">}}

{{<matomeQuote body="正気のオプティマイザーは機能コードを何千回も呼び出すことはないと思う。" userName="stouset" createdAt="2025-03-11T18:45:34" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="良いコードには質的な部分があって、ほとんど文学的だと思うんだよね。数学的思考のプログラマーにはウザいかもしれないけど。我はドストエフスキーやウッドハウスが好きで、彼らの文体は全然違うけど、コードにもそんな感じがあるのが面白い。コードベースのスタイルに慣れるのには時間がかかることもあるしさ。" userName="recursivedoubts" createdAt="2025-03-11T13:20:24" color="#ff5733">}}

{{<matomeQuote body="まさにその通り！自分のコードが一つの物語のようだと言われたことがあって嬉しかったな。トップからボトムまで順を追って読みやすい感じで書いていて、関数もデクララティブな実装を意識してる。純粋関数型プログラミングが特にこのスタイルに向いてると思うな。" userName="louthy" createdAt="2025-03-11T14:22:07" color="#785bff">}}

{{<matomeQuote body="似たような経験がある。プロジェクトリーダーとして動いてるとき、クライアントから監視役が来てイライラしてたんだけど、思考を必要とする複雑なシステムだったから、作業は主に考えるだけだった。最終設計が決まってコードを書いたら、彼はそれが「最も美しいコードだ」と言ってくれたんだ。" userName="DidYaWipe" createdAt="2025-03-12T04:14:31" color="#785bff">}}

{{<matomeQuote body="＞ 関数は自己完結型で、引数や他の純粋関数だけが依存性や入力なんですか？" userName="qwertygnu" createdAt="2025-03-11T18:14:25" color="">}}

{{<matomeQuote body="違うよ、純粋関数は参照透明性が特徴。関数を値に置き換えてもプログラムが変わらない。静的関数はファイルやデータベースに依存したり、グローバルメモリを変更することがあるから、同じプログラムにならないよ。" userName="louthy" createdAt="2025-03-11T19:01:43" color="">}}

{{<matomeQuote body="純粋関数は参照透明性があって、呼び出しても同じ結果が得られるって感じ。たくさん呼んでも変わらないのが特徴だよね。でも、純粋関数であっても副作用があると不純になる。" userName="syklemil" createdAt="2025-03-11T20:15:57" color="">}}

{{<matomeQuote body="それはイドポテントの意味じゃないよ。イドポテントは∀x, f(x)=f(f(x))のこと。大体の純粋関数はイドポテントじゃないし、むしろ少々型チェックが厳しいんじゃないかな。純粋であることと無関係に考えてね。" userName="chowells" createdAt="2025-03-11T20:53:32" color="">}}

{{<matomeQuote body="その通りだね。間違いを正す口実はないけど。" userName="syklemil" createdAt="2025-03-11T21:06:03" color="">}}

{{<matomeQuote body="概念を簡略化するのと、単に平易に表現するのは違うよね。コードは小説や短編、詩のようなもので、小説は早く要点に達する必要があるし、詩は共通の文脈や高度な解明が必要。" userName="hinkley" createdAt="2025-03-11T23:21:38" color="">}}

{{<matomeQuote body="理解できるけど、あまり攻撃的になるのは良くないよ。概念の簡略化と平易表現は排他的じゃないし、短編や詩を例にしても全てが当てはまらない。大切なのは、自分の経験を他人に押し付けないようにすることかな。" userName="h4ny" createdAt="2025-03-12T00:11:13" color="">}}

{{<matomeQuote body="＞自分の利益だけで人が怒ると思うなら、社会正義についてどう思ってるの？ それは論理におけるTexas Sharpshooter Fallacyだね。小説家は観客に届けば成功。観客に合うジャンルを見つけたら成功する。開発者は一つの観客しか持てず、選べない。俺たちは同僚のために書いてるし、彼らが気に入らなければ、去るか、変わるか、同僚を騙すしかない。この騙す行為を多く見たし、あなたが被害者でなくても、他の人たちのために怒る権利はあるよ。" userName="hinkley" createdAt="2025-03-12T03:56:04" color="#38d3d3">}}

{{<matomeQuote body="＞自分のことを社会正義と一緒に考えていると心配だ。 それは誤解だ。成功した小説家が何かを続けるのを強制してるわけじゃない。自分の言葉を当てはめようとしてる気がする。最初のコメントの敵対心は正当化されないが、良いコードを書く人もいる。" userName="h4ny" createdAt="2025-03-12T06:10:17" color="">}}

{{<matomeQuote body="＞Texas Sharpshooter Fallacyがあるよ。バンの側に当たったところに的を描くみたいなもんだ。悪い環境であっても、臨機応変に対応することはできる。俺は、怒る時に罵倒するのは、全く敵意とは思わない。" userName="hinkley" createdAt="2025-03-12T16:50:41" color="">}}

{{<matomeQuote body="5秒以上かかるコードは悪いと思う。見た目はどうでもいい。関数の目的がすぐに分からないのは、単に悪いだろ。" userName="zwnow" createdAt="2025-03-11T13:24:10" color="#ff5733">}}

{{<matomeQuote body="熟知しているコードなら、関数が分かりやすいが、新しい人には変わるのが難しい。いいアーキテクチャは副作用を避けるが、変化には理由を考慮しないといけない。読みやすさよりも良いアーキテクチャが大事だよ。" userName="jacobr1" createdAt="2025-03-11T13:55:50" color="#45d325">}}

{{<matomeQuote body="悪いアーキテクチャについては話してない。読みやすいコードは、良いアーキテクチャと両立するはず。" userName="zwnow" createdAt="2025-03-11T14:03:39" color="">}}

{{<matomeQuote body="読みやすさはコンテキストによる。成熟したプロジェクトでの急速な理解は新しいメンバーには難しいことも。聞き「簡単に読みやすくする」というアドバイスは良いけど、観客を考慮しないといけない。" userName="swatcoder" createdAt="2025-03-11T14:47:39" color="#ff33a1">}}

{{<matomeQuote body="Goはルールがシンプルだが、コンビネーショナルな結果があるゲーム。シンプルな再帰的データ構造は簡単に見えるが、追跡が難しい。層によるアーキテクチャはランドマークがあって、再帰的なものはないから迷いやすい。" userName="hinkley" createdAt="2025-03-11T23:30:06" color="#ff5733">}}

{{<matomeQuote body="コード理解に必要な認知負荷が問題。様々な要因が影響する。トレードオフを考えながらシステム全体のデザインを考えないといけない。" userName="jacobr1" createdAt="2025-03-11T14:56:18" color="#ff33a1">}}

{{<matomeQuote body="もし’isReadyToDoThing’が1回しか使われてないなら、適切な名前の変数でインラインする方が良い。小さな関数にこだわりすぎて、可読性を失ってる気がする。" userName="maleldil" createdAt="2025-03-12T19:38:02" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="関数の目的は名前を見ればわかるべきだし、複雑すぎるならdocstringでしっかり説明するべきだよ。そんな難しくないと思うけど。" userName="ikrenji" createdAt="2025-03-11T16:08:14" color="#45d325">}}

{{<matomeQuote body="確かにその通りだけど、名前を見た人がどれだけの文脈を持ってるかに依存するんだよね。クラス名やモジュール名、ビジネスの用語とか、関連するサブシステムのこと。命名においては文脈依存の妥協点があるし、いろんな利害が絡んでくるんだ。" userName="apelapan" createdAt="2025-03-11T16:35:37" color="#ff33a1">}}

{{<matomeQuote body="5秒で理解できないような、より厳しい問題に自分を制限するつもりなの？単純なCRUDアプリには合うかもだけど、『単純に悪い』ってのは、視野が狭い人の意見だよ。" userName="fasbiner" createdAt="2025-03-11T17:55:22" color="">}}

{{<matomeQuote body="あなたのコードが読みにくい理由は、内在的な複雑さ以外にある気がするな。自分で説明できてるつもりかもしれないけど、他の人には通じないかもよ。それに、”関数の高レベルの目標を理解するのに5秒以上かかる”って話じゃない。" userName="hinkley" createdAt="2025-03-11T23:35:24" color="#ff33a1">}}

{{<matomeQuote body="＞ 私は関数の高レベルの目標を理解するのに5秒以上かかるコードは嫌だ。<br>それは単純すぎるロジックにだけ通用するけど、実際のコードは内部の”言語”に基づかないと理解できないんだ。スタイルの細かい指摘ばかりするのは良くないと思う。良いコードはヒューリスティックなもので、あなたのルールで明確に定義できるものではないよ。" userName="ajross" createdAt="2025-03-11T13:54:05" color="">}}

{{<matomeQuote body="ある程度までは同意する。一定のコードスタイルを保つこと（gofmtとかblackとかのフォーマッターを使うこと）は、理解の複雑さを減らすのに役立つ。コードは新聞のように読むべきだと思う。オピニオン欄はあっても、すべてオピニオンじゃないのが理想だよ。" userName="necrotic_comp" createdAt="2025-03-11T15:40:30" color="">}}

{{<matomeQuote body="私はどう見えるかが大事だって言ったんだよ。本来の目的は、関数の目標を合理的な時間内で把握できるってこと。これは全てのコードベースに当てはまると思う。" userName="zwnow" createdAt="2025-03-11T14:01:14" color="">}}

{{<matomeQuote body="＞ 関数の目標を合理的な時間内で把握できるってこと。<br>それは実際には難しいと思うよ。私の関数は40行くらいのロジックを持ってて、空いてる時間にそれを理解するのが難しい。fix_extra_red()の理解には、他の部分を読んで、そのアルゴリズムを理解する前提が必要だからね。維持するのにも1時間かかっちゃう。" userName="ajross" createdAt="2025-03-11T14:25:18" color="#ff5c5c">}}

{{<matomeQuote body="この例こそが情報密度の高いコードの典型。抽象化や”リテラテ”な構造を加えても、結局は特定のアルゴリズムの実装を理解することが重要で、それには読者自身が明確なメンタルモデルを構築する必要がある。時には問題そのものが問題で、抽象化で要件を後回しにすることにしかならない場合もあるよ。" userName="sunrunner" createdAt="2025-03-11T14:44:47" color="">}}

{{<matomeQuote body="自分のコードベースでは“関数は名前通りのことだけをする”ってルールを作った。そうすることで、関数が多すぎると感じたら分けるべきだと気づくんだ。" userName="andybp85" createdAt="2025-03-11T14:18:13" color="#ff33a1">}}

{{<matomeQuote body="じゃあ分割した関数を呼ぶ関数はなんて呼ぶんだ？foo_and_bar_and_qoo？条件によってしか呼ばれない場合は？" userName="quinnirill" createdAt="2025-03-11T16:15:55" color="">}}

{{<matomeQuote body="その関数は単にfooやbar、qooを実行するだけじゃなく、別の意味があるはず。例えば“openDishwasher”“loadDishwasher”“closeDishwasher”“startDishwasher”って関数があったら、それをまとめて“washDishes”って呼ぶべきだと思う。" userName="brulard" createdAt="2025-03-11T16:46:52" color="#45d325">}}

{{<matomeQuote body="これはすべてのドメインやコードの種類に当てはまるのか？データ構造を定義するコードと、知られたアルゴリズムを実装するコードでは、情報密度に根本的な違いを感じるんだ。" userName="sunrunner" createdAt="2025-03-11T14:14:54" color="">}}

{{<matomeQuote body="アルゴリズムがよく知られているなら、関数名が分かりやすいなら問題ない。でも、200行の関数で働いてると、本当に大変なんだ。" userName="zwnow" createdAt="2025-03-11T14:39:15" color="">}}

{{<matomeQuote body="＞関数名が分かりやすいなら問題ない<br>でも、関数を使うだけでその内容を理解していると言えるのかな？デバッグや実装を理解する必要が出てきたら、元の名前を失って、たくさんの名前が出てくることになるよ。" userName="sunrunner" createdAt="2025-03-11T14:49:03" color="">}}

{{<matomeQuote body="Doomのコードベースのすべての関数を5秒で理解できると思う？それは悪いプログラミングってことなのか？" userName="bad_haircut72" createdAt="2025-03-11T18:30:45" color="">}}

{{<matomeQuote body="このためにxmldocやjsdocがある。名前からすっかり明白じゃないなら、関数の仮定や副作用、出力、例をコメントにまとめるべきなんだ。それがうまくいけば、次のプログラマーはソースを読まずに済むこともあるよ。" userName="jimmaswell" createdAt="2025-03-11T15:39:00" color="#ff5c5c">}}

{{<matomeQuote body="＞多くのプログラマーや学者は数値的な答えを求めるので、これは彼らをイライラさせる<br>私は、優雅だとされる多くの文法パターンが逆に分かりにくいと思う。例えば記事に出てきた三項演算子は人間に対してはすごく後ろ向きに感じるんだ。" userName="freetonik" createdAt="2025-03-11T14:42:47" color="#785bff">}}

{{<matomeQuote body="もちろん、数学的な表現を自由に書けるなら、手書きより明確に見えるのは当然。ASCIIで書くより手で書くほうが、余裕があるのが現実だと思う。" userName="pc86" createdAt="2025-03-11T14:51:22" color="">}}

{{<matomeQuote body="この記事は良かったけど、コードを読むときの最も気疲れする問題を見落としてると思うんだ。それは可変性なんだよね。一度だけ変数の意味を固定できることが、メソッドを読む上での大きな助けになる。理解が0%から100%に徐々に増えていくのが理想で、特定の反復でループ本体が累積変数にどう影響するかでまた考え直す必要があるのは避けたいんだ。これはGOTOsが有害な理由なんだよね。メソッド内で心の指示ポインタを動かすのは難しくないけど、GOTOsを使うと可変変数の状態を把握するのが難しくなるんだ。" userName="mrkeen" createdAt="2025-03-11T13:42:05" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
