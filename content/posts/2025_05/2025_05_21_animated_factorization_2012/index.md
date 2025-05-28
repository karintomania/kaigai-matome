+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = 'これは面白い！ 素因数分解が動き出す？'
tags = ["数学", "可視化", "アルゴリズム", "プログラミング", "アニメーション"]
featureimage = 'thumbnails/red3.jpg'
+++

> これは面白い！ 素因数分解が動き出す？

引用元：[https://news.ycombinator.com/item?id=44051958](https://news.ycombinator.com/item?id=44051958)




{{<matomeQuote body="これは高校レベルの素因数分解のちょっとしたトリックみたいなもんだけどさ、手で多項式の因数分解やるのがすごく楽になったんだ。100以下の合成数は全部2、3、5、7のどれかで割れるって気づいてからね。どれでも割れなかったらそれは素数だから、そこで因数分解を止められるわけ。このルールで“パッと見分からない”合成数は7*13=91だけで、他のは普通のルールですぐ試せるんだ。49は7²だからこれもすぐわかる。他の素数判定も簡単だよ。いくつか例を挙げるとさ：<br>・31？2、3、5では割れないし、7²以下だから7で割れる心配もない。素数だね。31=31¹。<br>・69？3で割れるね。69 = 3*23。23は？2、3、5で割れないから、そこでストップ。69=3¹23¹。<br>・92？2で割って2*46。また2で割って2²23。23は2、3、5で割れないから、92 = 2²23¹。<br>・68 = 2¹34 = 2²17。17は2、3、5で割れないから、そこでストップ。2²17¹。高校の教科書は普通100より大きい数を使わないから（電卓持ってない生徒のために）、このトリックは何度も役に立ったな。それに、低い数では素数が驚くほど多いけど、高くなるにつれて急速に減っていくっていう考え方にも通じるんだよね。" userName="hiAndrewQuinn" createdAt="2025/05/22 06:52:38" color="#ff33a1">}}




{{<matomeQuote body="3の倍数判定法で、各位の数を足していくトリックも知ってるでしょ：387なら3+8+7で18、さらに1+8で9になるやつ。あれって10を3で割ると1余るから、100=99+1（など）で、各桁がまるで一の位みたいに数えられるからできるんだよね。同じトリックを7の倍数に応用しようとすると、10を7で割ると3余るから十の位は3の価値があって、91だと9*3 + 1 = 28 になる。おっと、計算間違えた。えっと、91 -＞ 9*3 + 1*1 = 28、7で割れるね。でも次の位は100を7で割ると2余るから、値が変わっちゃうんだ（100 = 14*7 + 2）。このトリックは全然役に立たないんだけど、個人的には好きなんだよね。（間違ったところを全部直したよ）" userName="card_zero" createdAt="2025/05/22 13:25:57" color="">}}




{{<matomeQuote body="うーん…14だと =＞ 1 (3¹) + 4 (3⁰) =＞ 3 + 4 = 7 =＞ 7で割れるね。21だと =＞ 2 (3¹) + 1 (3⁰) =＞ 6 + 1 = 7 =＞ これも7で割れる！7 * 53 = 371 =＞ 3 (3²) + 7 (3¹) + 1 (3⁰) =＞ 27 + 21 + 1 =＞ 49 =＞ これも7で割れるじゃないか！すごいな！基数の仕組みを勉強してから、こういう直感はできるんじゃないかってずっと思ってたけど、自分でちゃんと調べたことなかったんだ。マジかよ！" userName="hiAndrewQuinn" createdAt="2025/05/23 04:47:29" color="">}}




{{<matomeQuote body="うーん、いや、それは擬陽性の危険があるんだ（だから前にミスを直さなきゃいけなかったんだよね）。全部が3に関係してるわけじゃないし、桁の数を3²、3¹、3⁰って掛けちゃダメなの。その代わりに、チェックしたい数（7とかね）で割った時の、（10をその桁数乗した数）の余りを使いたいんだよ。それは繰り返しのパターンになるんだ。3の場合はパターン長が1で、（1, 1, 1, ...）って続く。7の場合はパターン長が6で、一の位から（1, 3, 2, 6, 4, 5）って続くんだ。ちょっと擬似乱数っぽい感じに見えるなら、それにはちゃんとした理由があるんだ。昔のPRNGに漠然と似てるんだよ。（百万の位からまた1が始まるんだ。だって142857 * 7 = 999999だからね。だから200万を7で割った余りは2、300万を7で割った余りは3、って感じ。）だから371は 3*2 + 7*3 + 1*1 って考えるべきで、これは28になる。別の例だと、6993 =＞ 6*6 + 9*2 + 9*3 + 3*1 で、これは84になるよ。" userName="card_zero" createdAt="2025/05/23 12:05:22" color="#ff33a1">}}




{{<matomeQuote body="いやちょっと待ってよ。10をn乗して7で割った余りの結果と、3をn乗して7で割った余りの結果って同じじゃないか。だから前のコメントの方法も、正確に機能してるんだよ。差が7だからなんだよね。" userName="card_zero" createdAt="2025/05/23 15:50:23" color="#38d3d3">}}




{{<matomeQuote body="3のべき乗の図がSierpinski triangleになるんだね。見たら超納得だけど、今日まで知らなかったよ！" userName="math_dandy" createdAt="2025/05/21 15:13:44" color="">}}




{{<matomeQuote body="うんうん。この可視化がくれたユニークな洞察、超気に入ったよ。Sierpinski triangleについて、頭の中でどう考えるべきか、何か解放された感じ。もし誰か興味あったら、アニメーションで見られる最大の純粋なSierpinskiは6561（3^8）だよ。10Kでキャップされてるからね。" userName="robot_jesus" createdAt="2025/05/21 16:14:16" color="">}}




{{<matomeQuote body="これすごい！このやり方で表現された数字をドラッグ＆ドロップで掛けたりまとめたりできるおもちゃ（to build）を作りたいな。素因数が（boidsみたいに）どう動くか見たいんだ。この可視化アルゴリズムって何か名前があるのかな？前のHNポストにあった説明リンク、壊れてるみたいだね：<br>http://mathlesstraveled.com/2012/10/05/factorization-diagram..." userName="worldsayshi" createdAt="2025/05/21 15:24:59" color="#ff5733">}}




{{<matomeQuote body="2（ペア）、3（三角形）、4（正方形）、5（五角形）以外の7以上の素数にも、丸じゃなくて一目で認識できる形があったらいいのになあ。素因数を一目でわかるのが一番好きなところなんだけど、7以上の素数だとつい左上を見てカンニングしちゃうんだよね。7とか11とかに使う、もっとハッキリ見分けられる非正多角形とかないのかな？" userName="CGMthrowaway" createdAt="2025/05/21 16:21:10" color="#ff5733">}}




{{<matomeQuote body="ここでドットの位置のアルゴリズムについてどこかで質問して回答もらったんだけど（投稿に直接リンクできるかな？）、下の方にあるよ。円の上に配置するのは良い方法だと思うけど、特定の数字を特別に配置するには向かないかもね。それができないってわけじゃないけど、アルゴリズムはどうなるんだろう？編集：アニメーションをもうちょっと見てみたら、もしかしたら考え違いしてるかもしれない。まあ、作ってみようかな。" userName="tocs3" createdAt="2025/05/21 23:01:58" color="">}}




{{<matomeQuote body="偶然じゃないだろうけど、2012年はStack ExchangeでMathematicaでこういうキレイな図を作る方法について質問が出てたんだって。https://mathematica.stackexchange.com/questions/11657/factor... そこに僕が少ないコードで図を作る回答を書いたんだ。質問で言及されてるリンクは記事と同じで今はもう見れないから、元々どこから来たのかは不明だよ。" userName="hhhAndrew" createdAt="2025/05/22 05:51:01" color="#ff5c5c">}}




{{<matomeQuote body="4は素数じゃないよ。たぶん点をグループ化するのに二進数展開を使えるかも？<br>So, 1 is •<br>2 is ••<br>3 is <br>_• <br>•_•5 is_• <br>•_• <br>•_•7 is <br>____• <br>_•_____• <br>•_•___•_•11 is <br>____• <br>_•_____• <br>•_•___•_•<br>•_•___•_•And so on.(つまり、2nはnをnの隣に置いて表現するけど、nが2の場合はnの上にnを置いて、2n+1は2nの上に1を置くって感じ)<br>代わりに、n角形の代わりに星を使うのも分かりやすいかも？" userName="drdeca" createdAt="2025/05/21 19:01:03" color="">}}




{{<matomeQuote body="2（ペア）、3（三角形）、4（四角）、5（五角形）も、解像度が低い”円”みたいなもんじゃないの？<br>視覚化はただ一貫してるだけだよ。" userName="GaggiX" createdAt="2025/05/21 16:52:37" color="">}}




{{<matomeQuote body="うん、異論はないし今のままでもエレガントだよ、でも僕らの目とか脳の働きだと、七角形とか九角形とか三十角形とかはパッと見で識別するのすごく難しいんだよね。目的のためには非正規の形の方が向いてると思うな。" userName="CGMthrowaway" createdAt="2025/05/21 17:55:04" color="">}}




{{<matomeQuote body="合計を使って分かりやすい描き方ができないかな？<br>7 = 2*3+1<br>11 = (2*2+1)*2+1<br>とかさ…" userName="worldsayshi" createdAt="2025/05/21 16:53:30" color="">}}




{{<matomeQuote body="同意。しばらく大きな素数が出てくるの見てたけど、ちょっとがっかりしたよ。塗りつぶした多角形なら、もっと色んな形になるかもね。塗りつぶした六角形＝7とかさ…" userName="Liftyee" createdAt="2025/05/21 18:22:07" color="">}}




{{<matomeQuote body="これは素因数分解って呼ばれてると思うよ。それぞれの数は数のグループ（またはグループのグループとか…）に配置されるんだ。<br>例えば、24 -＞ 2 * 3 * 4 = 2つのグループの（3つのグループの（4つのアイテム））<br>あと、壊れたリンクのアーカイブ版はこれで試してみてね -＞ https://web.archive.org/web/20130206023100/http://mathlesstr..." userName="ashwinsundar" createdAt="2025/05/21 16:52:00" color="#ff5c5c">}}




{{<matomeQuote body="4は素数じゃないことに注意してね。" userName="nroets" createdAt="2025/05/23 09:16:21" color="">}}




{{<matomeQuote body="百万年と百万とちょっと前のスレッド（いくつか解説リンク付き）だよ。<br>https://news.ycombinator.com/item?id=10776019<br>https://news.ycombinator.com/item?id=4788224" userName="pvg" createdAt="2025/05/21 14:59:10" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！いくつか関連リンクだよ。<br>Factorizer - https://news.ycombinator.com/item?id=10776019 - Dec 2015 (30 comments)<br>Animated Factorisation Diagrams - https://news.ycombinator.com/item?id=4788224 - Nov 2012 (72 comments)<br>Animated Factorization Diagrams - https://news.ycombinator.com/item?id=4713048 - Oct 2012 (2 comments)" userName="dang" createdAt="2025/05/21 20:31:19" color="#ff33a1">}}




{{<matomeQuote body="これ見てたら、特に高速でauditory synesthesiaって感覚になったよ。もし君もそうなら、このリンクの現象かもね: https://www.newscientist.com/article/dn14459-screensaver-rev...<br>古いコメントだけど、これに賛成！" userName="coolcase" createdAt="2025/05/21 23:20:30" color="#ff33a1">}}




{{<matomeQuote body="8じゃランダム性には勝てないね！残念！<br>追記：昨日 https://news.ycombinator.com/submitted?id=imurray で再投稿ネタ探してたら、https://news.ycombinator.com/item?id=7984992 が面白そうだったから、もしよかったら再投稿をお願いするメール送るね :)" userName="dang" createdAt="2025/05/22 17:37:45" color="">}}




{{<matomeQuote body="アニメーションがゆっくり再生されたら、グループや円の数を数えられていいな。新しい円が端から来て、追加が分かりやすく配置されるともっといい。それ以外は素晴らしいビジュアライゼーション！" userName="kccqzy" createdAt="2025/05/21 17:22:01" color="#ff33a1">}}




{{<matomeQuote body="すごくいいね。もし遅くできたり、数値をステップ実行できたりしたら嬉しいな。" userName="glaucon" createdAt="2025/05/21 19:07:35" color="#45d325">}}




{{<matomeQuote body="隣り合う数へのジャンプが時々すごく劇的だよね—僕たちの数、ちゃんと正しい順序になってるのかな？" userName="gavmor" createdAt="2025/05/21 17:23:34" color="">}}




{{<matomeQuote body="世界の加法的・乗法的な見方の違いだよ。数論はそのギャップを埋めようとしてる。シンプルな数の見方でもすぐ未知の世界に行ける。「一番簡単な難しい問題」Collatz conjectureもこの考え方から。乗法空間や加法空間でのステップがどこへ行くかって単純な問いが未解決問題につながるんだ。隣り合う数へのジャンプが劇的っていう観察だけで一生費やせる。まだ複素数や指数も出してないのにね！" userName="jerf" createdAt="2025/05/21 19:31:22" color="#785bff">}}




{{<matomeQuote body="一般の人が数の「乗法的な見方」にどうアプローチして、正しい直感を養えるんだろう？ practical（実用的）なのかな？" userName="gavmor" createdAt="2025/05/21 21:14:08" color="">}}




{{<matomeQuote body="数字を乗法的に見る一番良い方法は、乗算を加算に変えることだよ。一般的なのはLogarithmで、log(a*b) = log(a) + log(b) だね。整数にはもっと強力な変換があって、Prime factorizationだ。Prime factorsに分けて、同じPrimeの指数を足せば乗算になる。手間だけど、Prime factorsはその整数のdivisibilityについて色々教えてくれるから価値はあるよ。乗算と加算の相互作用について深く知りたいなら、純粋数学の学位取って、数論をいっぱい学んで、その美しくなさに泣くといいよ。信じて、昔やったんだ。" userName="ViscountPenguin" createdAt="2025/05/21 23:38:50" color="#ff33a1">}}




{{<matomeQuote body="僕は素人だけど…九九表とか足し算表を書き出してみて、パターンや違いを見つけると良いかもね（見つかるよ）。Sieve of Eratosthenesは良いよ。ChatGPTに高校代数は数学のどの分野か聞いたらfield theory of real numbersって言われて、それ以来groups and fieldsを見るのが楽しいんだ。前にUlam’s Spiralをいじったビデオ作ったんだ、Primeじゃなくて x mod n ≡ 0 の点をマークしたやつ。ちょっと変かな。リンクは[1][2][3]だよ。" userName="tocs3" createdAt="2025/05/21 23:28:56" color="#ff5733">}}




{{<matomeQuote body="何を言ってるかは分からないけど、例を挙げると16は2＾4だからグリッドみたいに並べられるけど、17はPrimeだから、代わりに円の上に17個の点を並べるしかないんだよ。" userName="jhanschoo" createdAt="2025/05/21 19:18:23" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Primeは視覚化を台無しにする最悪の奴らの一部だよね、例えば647（Prime）から648（3×3×3×3×2×2×2）への変化とか。でも無限に近づくと、視覚化はどんどん円形に見えてきて、trendから外れるのは一番Primeっぽくないやつ（？）なんだ。例えば854-856＆857（Prime）はみんなほぼ完璧に円形に見えるよ。もしかしたら数学的な原理じゃなくて、神経視覚的な原理を見てるだけかもしれないね。" userName="gavmor" createdAt="2025/05/21 21:07:04" color="#ff5c5c">}}




{{<matomeQuote body="ほとんどの大きな数はある程度大きなPrimeで割り切れるんだよ。だから、ある数が例えば11みたいな大きな数で割り切れるとしよう。すると画面には少なくとも11回繰り返されるパターンが円形に配置されて表示されるんだ。なぜなら、最も”大きい”パターンはPrime factorizationにおける最大のPrimeのパターンだからね。Primeがせいぜい5で収まるような数なんて、それに比べるとすごく珍しいんだ。" userName="jhanschoo" createdAt="2025/05/22 01:05:14" color="#45d325">}}




{{<matomeQuote body="神経視覚的なものだと思うな。円の中に何百個も点があったら、それを円じゃないと見るのは難しいよ。同じ原理で、これが円か楕円に見えるけど違うのと同じだよ: O" userName="coolcase" createdAt="2025/05/21 23:24:37" color="#45d325">}}




{{<matomeQuote body="それでも、Prime factorsの数のばらつきについては語るべき何かがあるね。https://quickchart.io/sandbox/#%7B%22chart%22%3A%22%7B%5Cn%2..." userName="gavmor" createdAt="2025/05/22 00:52:30" color="#ff5c5c">}}




{{<matomeQuote body="全部を1ページにまとめて、ズームイン／アウトできるようにできないかな？ 数列のパターンを見るのが面白くなりそう。たぶん、色々なfactorsや数の範囲、異なるgroupingでフィルターできるようにしても良いかもね。" userName="jderick" createdAt="2025/05/21 17:45:02" color="#ff5c5c">}}




{{<matomeQuote body="全てのfactorsが表示されると良いのにね。例えば12なら、3x4も2x6も見たいな。アニメーションが異なるfactorsを表示する時に何か視覚的なインジケーターがあると良いかも…たぶん全体が縮小して、追加のfactorizationが空間を分割するタイルみたいに埋まっていくとか。異なるfactorizationの数を知ることは面白くて視覚的にも表現可能な性質で、factors自体と面白く相互作用するんだ。" userName="aaroninsf" createdAt="2025/05/21 16:05:25" color="#38d3d3">}}




{{<matomeQuote body="しばらく見てたら、Primeじゃなくてhighly composite numbersを待つようになった自分に気づいたよ。" userName="dtjohnnymonkey" createdAt="2025/05/21 19:55:46" color="">}}




{{<matomeQuote body="10年くらい前に、ここで見たいな感じで最初の30個の数を素因数分解した図を描きたかったんだって．娘の部屋に飾ろうと思ってたんだけど、結局できなかったんだよね．娘が学校で素因数分解を習ってるから、これはちょうどタイムリーだわ．" userName="mousethatroared" createdAt="2025/05/22 00:39:50" color="">}}




{{<matomeQuote body="あの点の配置のアルゴリズムがどんな感じか気になるな．" userName="tocs3" createdAt="2025/05/21 15:47:55" color="">}}




{{<matomeQuote body="たぶんアルゴリズムはこうじゃないかな？<br>1. 数の素因数を変数factorsに入れる<br>2. factorsを小さい順に並べ替える<br>3. 変数diagramを点1つにする<br>4. factorsの各因数に対して<br>4.1. diagramを、その因数個のdiagramのコピーを円状に並べたものにする" userName="GrantMoyer" createdAt="2025/05/21 16:06:06" color="#ff5733">}}




{{<matomeQuote body="自分で好きな数字を入力して、どんな図になるか見れるのかな？" userName="smusamashah" createdAt="2025/05/21 20:59:43" color="">}}




{{<matomeQuote body="これかっこいいね！時計の数字を表示するのに使ってみようぜ :-)" userName="liendolucas" createdAt="2025/05/21 18:27:26" color="">}}




{{<matomeQuote body="見たか知らないけど、これだよ．http://www.datapointed.net/2012/10/animated-factorization-di..." userName="tocs3" createdAt="2025/05/21 23:33:40" color="#ff5c5c">}}




{{<matomeQuote body="これ、元々は Brent yorgey って人が発明したんだと思うよ．" userName="carterschonwald" createdAt="2025/05/21 16:38:42" color="#ff5c5c">}}




{{<matomeQuote body="円の面積の合計は一定であるべきだと思うな．つまり、素因数分解してる数と同じになるべきってこと．" userName="ape4" createdAt="2025/05/21 18:32:08" color="">}}




{{<matomeQuote body="これ、かっこいいプログレスバーの代わりに使えるんじゃない？パーセンテージを点の数（0-100）に置き換えるんだ．" userName="ajjenkins" createdAt="2025/05/21 15:35:59" color="#785bff">}}




{{<matomeQuote body="これ、新しいローディングアイコンにいいじゃん" userName="coolcase" createdAt="2025/05/21 23:17:58" color="">}}




{{<matomeQuote body="これカッコいいね。スクリーンセーバーにもいいかも（まだ使う人いるかな？）" userName="chrsw" createdAt="2025/05/21 14:45:07" color="">}}




{{<matomeQuote body="Macsだとまた復活したよ。OLEDの画面だとアニメーションのログイン画面を作らせるみたい。（たぶんね。）" userName="apples_oranges" createdAt="2025/05/21 15:00:23" color="">}}




{{<matomeQuote body="これめっちゃいいね。canvas API使ったみたいだけど、データ可視化だとよくD3.js使うからそっちかと思ってた。なんでcanvasにしたのか聞きたいな？" userName="andrewrn" createdAt="2025/05/21 16:04:42" color="#45d325">}}




{{<matomeQuote body="でもこれCRUDのデータ可視化じゃなくてカスタムアニメーションでしょ。ブラウザでちゃんと円描けるんだから、重いライブラリ使う必要ないじゃん？" userName="pona-a" createdAt="2025/05/21 16:50:44" color="#45d325">}}




{{<matomeQuote body="正直わかんない。まだ技術学び始めたばっかでさ。LLMの構造化出力とウェブアニメーション技術を組み合わせるのってポテンシャルあると思うんだよね。svgのいいとこは要素ごとにDOMノードがあるから、操作しやすいことなんだ。（canvasでマウスを追うの試したことないから、案外難しくないのかもだけど）洞察ありがとう。" userName="andrewrn" createdAt="2025/05/24 17:57:13" color="">}}




{{<matomeQuote body="このページに全部コントロールできるスライダーがあったらいいな。色とかスピードとかさ。" userName="vivzkestrel" createdAt="2025/05/21 17:46:56" color="#785bff">}}




{{<matomeQuote body="これページ読み込み中じゃないんだって気づくまで、ちょっと時間かかったわ" userName="simojo" createdAt="2025/05/21 15:16:47" color="">}}




{{<matomeQuote body="ちょっと関連するんだけど、小さい子がいるならこのYouTubeチャンネルおすすめだよ： https://www.youtube.com/@Numberblocks 数字がブロックになったキャラのアニメで、足し算のために分かれたり、素因数分解のために並び替えたりするんだ。子供向けで面白いし、数学的に正しいよ。" userName="gus_massa" createdAt="2025/05/21 16:20:04" color="#785bff">}}




{{<matomeQuote body="これマジ天才じゃん、おめでとう。もっと早くこれ思いつかなかった自分にがっかりだわ" userName="ttoinou" createdAt="2025/05/21 18:17:08" color="#38d3d3">}}




{{<matomeQuote body="これ、待ちアニメーションかと思ってサイト壊れてるのかと思ったよ。" userName="blueflow" createdAt="2025/05/21 15:16:19" color="">}}




{{<matomeQuote body="待ちアニメーションとしても結構よく機能するかもね。" userName="kccqzy" createdAt="2025/05/21 19:40:16" color="">}}




{{<matomeQuote body="最後の素数が表示されたら終わる待ちアニメーションだね。" userName="nurumaik" createdAt="2025/05/21 20:30:26" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
