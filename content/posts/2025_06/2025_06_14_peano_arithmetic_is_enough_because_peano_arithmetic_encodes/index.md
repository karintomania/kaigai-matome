+++
date = '2025-06-14T00:00:00'
months = '2025/06'
draft = false
title = 'ペアノ算術が計算をエンコードするってマジ？ その能力が十分な理由'
tags = ["数学", "計算論", "論理学", "数学基礎", "コンピュータサイエンス"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> ペアノ算術が計算をエンコードするってマジ？ その能力が十分な理由

引用元：[https://news.ycombinator.com/item?id=44269822](https://news.ycombinator.com/item?id=44269822)




{{<matomeQuote body="これ、Stack Overflowの質問をブログ記事にしたんだ。Peano Axiomsで証明できることの限界と、Peano AxiomsでLispを起動する方法についてだよ。ひどいジョークは後半にあるよ。修正とか追加の質問、大歓迎！" userName="btilly" createdAt="2025/06/13 16:10:38" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！なんかネットの不思議な偶然なんだけど、昨日ちょうどChatGPTにPeano Axiomsの基本を教えてもらってたんだよね。そしたらこれが出てきた！いいね！" userName="Cheyana" createdAt="2025/06/13 16:52:28" color="">}}




{{<matomeQuote body="＞ Aleph／Beth／Betti数を、感覚器が現実を離散的に捉えるGrothendieck topoiと考え直そう。<br>この１文にたぶん10年以上分の数学教育が詰まってるんじゃない？すごいね。" userName="ricardobeat" createdAt="2025/06/14 12:23:13" color="">}}




{{<matomeQuote body="ikrimaさんごめんね。でも『aleph／beth／Betti numbers』をまとめるのは混乱してると思う。Alephとbethはset theoryの無限基数。Betti numbersは全然違うtopological spaceのhomology groupsのランクだよ。繋がりは遠回しだけ。彼の文は数学的なワードサラダに見えるな。（Bettiがbethの後なのは音が似てるから？）。僕が知らないだけかもだけど、多分違うと思う。" userName="gjm11" createdAt="2025/06/14 20:45:57" color="#785bff">}}




{{<matomeQuote body="この記事読んでて、一つ修正箇所見つけたよ。『Why Lisp?』の基本ロジック定義で、最初の関数でカッコが一つ足りないみたい。＞(defun not (x)＞ (if x＞ false＞ true)<br>すぐ後に『カッコバランス探すのは簡単』って書いてて笑った。指摘してるのが面白いね。『閉じカッコの山に気づかなくなる』も面白かった。記事、すごく楽しかったよ！Lisp久しぶりだったけど分かった。すごいね。" userName="doodlebugging" createdAt="2025/06/14 16:02:47" color="#ff33a1">}}




{{<matomeQuote body="lol、これは広い未開拓数学の証明スケッチなんだ。10年以上の大学院数学を１文に詰め込んだってのはそう。Aleph numbersは無限の基数。Beth numbersは超限順序数で双対とか。Betti numbersはpersistent cohomologyで穴を追跡。色々あるんだよ。土曜午後で雑だった！GitHub見てね：http://github.com/ikrima/topos.noether<br>あとこれ、自閉症の甥っ子に代数トポロジー教えるゲームにしようと。オープンソース。ゼロ知識証明ってこと？じゃあね！" userName="ikrima" createdAt="2025/06/14 22:20:01" color="">}}




{{<matomeQuote body="あのさ、自分でオタク心をくすぐっちゃったんだけど、[Discrete Continuum Bridge]の、もっと詳しく書いたスケッチがここにあるよ。<br>https://github.com/ikrima/topos.noether/blob/master/discrete..." userName="ikrima" createdAt="2025/06/14 15:03:32" color="">}}




{{<matomeQuote body="コメントの返信に、aleph数、beth数、Betti数が何かって説明が既にあるよ。（ちょっと細かいことだけどさ: 1. Beth数は序数じゃなくて基数だよ。aleph数みたいに序数で添え字は付くけど、もしそれが大事ならなんで序数そのものを使わないの？ 2. 「Beth数が序数で添え字が付く」から「無限小数を一般化する」になって「双対と見なせる」ってどう繋がるのか分からないな。そういうのあるかもしれないけど、もう少し説明した方がいいと思うよ。 3. Betti数は永続コホモロジーだけじゃなくて、それが考えられるずっと前からあったんだ。）＜BR＞僕の間違いアラームが間違って反応した可能性は確かにあるね（前にもはっきり言ったけど）。今のところ君には納得させられてないな。まあ、僕を説得するかどうか気にしなくていいんだけどね。（もちろん、僕の意見が君に何らかの影響を与える可能性は、君がそれをどう感じるか以外にはないだろうからね。）" userName="gjm11" createdAt="2025/06/14 23:04:34" color="">}}




{{<matomeQuote body="これめっちゃ面白い！まだイントロくらいしか読んでないけど、PAの中で個々のグッドスタイン数列が0で終わることは全部証明できるのに、全ての数列が終わることは証明できないって前提がすごい興味深いね（自明な結果だけど、それでも面白い）。ペアノ公理で計算がエンコードできるってのも超変な感じ！考えてみれば当たり前なのかもしれないけど、思ったより自己参照的な層があるね。質問！奇妙な偶然なんだけど、最近集合論を学び直そうと思ってて、ちょうど先週、グッドスタイン数列まで入門書でやったんだ。僕はもう少し進んでるよ。よかったら、2冊目の発展的な集合論の教科書でおすすめある？あと、ペアノ算術を深く掘り下げた本も知りたいな。（グッドスタイン定理の証明がペアノ算術じゃ証明できないってとこまで理解するのが今の小さな目標なんだ。でも、強いおすすめがあるなら他の道でも全然いいよ。）" userName="edanm" createdAt="2025/06/14 20:54:50" color="#45d325">}}




{{<matomeQuote body="意味的には完全に同意してると思うけど、HNのコメントスレッドは帯域幅が狭すぎて、熱帯幾何学とか投機的な数学について議論するには無理があるね。そういうのは抽象代数学、幾何学、Galois理論が何十年も必要だし :)＜BR＞Beth数については、Wikipediaの記事で始めるには十分だよ: https://en.wikipedia.org/wiki/Beth_number" userName="ikrima" createdAt="2025/06/14 23:41:23" color="">}}




{{<matomeQuote body="これ、完全にLLMが書いたみたいだね。[編集追記:] これは注目すべき点だよ。今のLLMは数学をあんまり理解してないみたいなんだ。（o3-proとかo4で改善してるかもしれないけど、この文書はたぶんそれらで書かれてないね。）数学の単語をもっともらしく並べるのは得意だし、人間には難しくてもLLMには簡単な定型的な問題は解けたりする。LLMは人類が生み出した全ての数学文献を読んでるわけだからね。でも、自分が何をやってるか本当には理解してないし、間違いの種類を見るとそれが分かるんだ。（誤解のないように言うけど、もちろんLLMは何も理解してないとか、単にパターンマッチングだとか、確率的なオウムだとか、そういうありきたりな議論をしてるわけじゃないよ。僕が思うに、もっと良いLLMとか、LLMと共通点が多いかLLMを主成分とする近い将来のAIシステムは、人間の一番数学が得意な人くらいできるようになる可能性は十分ある。ただ、まだそこまで行ってないってだけなんだ。）（特に、「人間だって数学を本当には理解してない。単語や記号をいじってるだけで、すごく上手くなった人もいるだけだ」って言いたいなら、それも100＼%間違ってるわけじゃないと思う。John von Neumannに帰せられる「若い人よ、数学では物事を理解しようとするな、ただ慣れろ」って引用を参照してくれ。でも、それも100＼%正しいとは思わないし、一部の人間が数学で得意なやり方（例: 幾何学的直観、視覚化）は、LLMが今苦手なことと一致してるね。とにかく、AIシステムがTerry Taoみたいな人たちよりずっと数学が得意になれない理由は何も知らないけど、まだそこまで近くない。だから、「ねえ、ChatGPT、aleph数、beth数、Betti数を結びつけ、連続数学と離散数学をトポイで統一すべきって僕の推測を評価してよ。そうすれば僕たちの脳が連続現実の離散的なサンプルをどうやって核化してるかが分かるはずだ」って言っても、インスピレーション以外の何かに価値のある出力は生まれないだろうね。）" userName="gjm11" createdAt="2025/06/14 20:47:27" color="#785bff">}}




{{<matomeQuote body="これ、僕も気づいてたんだ。他の場所で何か調べてると、それがHNに急に出てくるみたいに感じるんだよね。単にパターンを探してるだけなのかな、それともHNがそういう活動を追跡してて、僕の興味のある話題をもっと表示するようにしてる、みたいなトリックがあるのかな？" userName="Art9681" createdAt="2025/06/14 13:02:54" color="">}}




{{<matomeQuote body="うん、100％LLMが作ったものだよ。わざとそうしたのわかると思ってた？（TBIから回復中で、タイピングを覚え直してる最中なんだ。思考をタイピングするために音声入力インターフェースとしてLLMを使ってる）。君が言ってるのは、「これLLMが書いたな」×「わかんない数学の単語が入ってる」＝「これはデタラメだ」っていう内部のヒューリスティックに引っかかっただけじゃないかな？それは間違いじゃないかもしれないけど、俺は圏論の無限群oidから構成主義的なモーダル論理を作ろうとしてるんだ。無限次元の圏は存在するし、超限数はそれを表してるんだよ。超実数の構成主義者もいて、それは非標準解析に従う。Weilコホモロジーも使えるけど、これは選択公理なしでほとんどの微分積分ができるはず。誰か確認してほしいな。<br>だから...繰り返すけど、君の具体的な批判が何なのかよくわからないな。" userName="ikrima" createdAt="2025/06/14 22:14:39" color="">}}




{{<matomeQuote body="俺が始める必要があるならそれで十分だけど、君は俺が書いたものをちゃんと読んでないみたいだね。俺はベス数が何かも知ってるし、君と違ってこの議論で完全に間違ったことは書いてない。ちょっと感じ悪いのは後悔してるけど、これを「専門家のikrimaが初心者のgjm11に親切に初等数学を教えてあげる」みたいに見せるのはどうなんだろう？状況を正確に捉えてないと思うんだ。" userName="gjm11" createdAt="2025/06/15 10:52:40" color="">}}




{{<matomeQuote body="このリクエスト見落としててごめん。良い集合論の教科書はあまり勧められないな。大学院は30年前で、論理学専門じゃなかったから。読んだ中で一番良かったのはこれだけど、これは集合論を専門にしたい人向けじゃなくて、数学をやりたいけど専門じゃない人向けだよ。https://www.amazon.com/Naive-Theory-Undergraduate-Texts-Math...." userName="btilly" createdAt="2025/06/16 03:03:53" color="">}}




{{<matomeQuote body="：P ストロークでね、タイピングが文字通り難しいんだ。あまり深く考えないでほしいって言ってるんだよ。脳の損傷のせいでコメント欄で会話するのが苦手なんだ。絵文字が削除されちゃうから、多分俺のトーンが気まぐれじゃなくて攻撃的に聞こえるのかも。<br>でもさ、君はいくつかすごく大きな部分で完全に間違ってるよ。例えば、2024年か2023年にラングランズの幾何化で大きなブレークスルーがあったと思うんだ。たしか、離散と連続の接続で素数に関係する2つ目の大きなブレークスルーもあったけど、詳細はすぐには思い出せないや。<br>君は多分、ベス数が何に使われてるかということと、俺がそれを別の目的に使おうと提案してることを混同してるんじゃないかな？君の言う通り、誰も俺が参照したようには使ってないけど、それって数学研究って感じじゃない？" userName="ikrima" createdAt="2025/06/15 17:23:59" color="">}}




{{<matomeQuote body="ブートセクタLispはそれ自体でブートストラップできるんだ。https://justine.lol/sectorlisp2/<br>あと、t3x.orgのたくさんのLispは、コンスセルから数値（やその他のもの）を実装して、apply/evalを使ってるよ：<br>’John McCarthyは上記のステップを計算するためのエレガントな自己定義的な方法を発見した。これはmetacircular evaluatorとしてよく知られてる。Alan Kayはかつてこのコードを「ソフトウェアのマクスウェル方程式」と呼んだ。SectorLISPに実装されたその方程式がこれだ：ASSOC EVAL EVCON APPLY EVLIS PAIRLIS’<br>Forthにも同じようなのがあるよ。<br>T3Xに戻ると、著者はZenlispを持っていて、そこでmeta-circular evaluationは基本的にeval/applyを定義して、それが再帰的にどのように呼び出され合うかを示してるんだ。http://t3x.org/zsp/index.html" userName="anthk" createdAt="2025/06/14 09:33:24" color="#45d325">}}




{{<matomeQuote body="そういえば、1日前にmathmemesで子供に集合論を数学の基礎として教えることについての投稿があって、ペアノ算術についても少し議論されてたんだ。だから、多分似たようなアイデアが今、ネット上で響き合ってる時期なのかもね？" userName="im3w1l" createdAt="2025/06/14 09:23:37" color="">}}




{{<matomeQuote body="具体的な批判ってわけじゃなくて、「それはLLMが書いたもので、難しい数学を実際に理解するのは苦手だから、それを指摘する価値はあるかな」って思っただけだよ。（別のコメントで、君が書いたものに対して具体的な批判をしてる。君がそのコメントに返信したのを見たし、そこが実際のアイデアを議論するのに適切な場所だね。LLMが苦手な分野でLLMの出力にケチつけてもあまり意味ないと思う）。<br>とにかく：（1）いや、明確じゃなかったよ。「nerd-sniped（オタクの好奇心をくすぐられた）になって、練り直したスケッチがこれ」なんて言われたら、本人が練り直したと思うのが普通だよ。(2) いや、問題は君が使った単語が理解できなかったわけじゃない。君のアイデアが素晴らしくて、俺が理解できてない可能性は確かにあるけど、俺自身も数学者だし、単語には怖じ気づかないよ。" userName="gjm11" createdAt="2025/06/14 22:52:57" color="#45d325">}}




{{<matomeQuote body="Pythonのブロックインデントはネスト構造の例だね。視覚的にスキャンしやすいよ。開閉パレンを数える必要がなくて、テキストの縦の列を見るだけでいいんだ。タブとスペースが混ざってなければの話だけど。（でも、全くスキャンする必要がないとまでは言わないけどね。）" userName="Retr0id" createdAt="2025/06/14 16:49:18" color="">}}




{{<matomeQuote body="（数学とプログラミング両方のバックグラウンドを持つ者として）面白いのは、計算のエンコード自体じゃなくて、Goodstein’s theoremの独立性を自己参照的に回避できることなんだ。PA+”PAはomega-consistent”ならGoodstein’s theoremを証明できる、もっと一般的にはepsilon_0までの超限帰納法ができるんじゃないかな？EDIT：いや、PA+”PAはconsistent”だけで十分な気がしてきた？" userName="dooglius" createdAt="2025/06/13 22:58:24" color="#45d325">}}




{{<matomeQuote body="Stack Overflowの質問者本人だよ。質問を編集して、この手の件について他の回答もいくつかリンクした。「PAはconsistent」じゃ不十分で、「PAが証明するならそれは真」っていうuniform reflection principleが必要なんだ。これがomega-consistencyと同等かは100％確信がないけど、Wikipediaの記事を読む限りそうっぽいね：https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#Relat... Wikipediaの記事では、Tがomega-consistentなのは「T + RFN_T + 真である全ての文の集合」がconsistentな場合、と言ってる。これは「T + RFN_Tが真」と同じ意味のはず。" userName="Kotlopou" createdAt="2025/06/14 18:24:04" color="#ff5733">}}




{{<matomeQuote body="再帰も好きだな。本質的には、PAが証明することに関するメタ証明をしてて、PAを信用してるならこのメタ証明も信用する、ってことだよね。＞ PA+”PAはconsistent”だけで十分？ どうしてそうなるのか僕には明らかじゃないな。PA+”PAはconsistent”だと、標準的な自然数ではGoodstein’s theoremが真だけど、非標準整数NではGoodstein’s theoremが偽となるモデルが存在する可能性があると思うんだ。ω-consistencyのより強い主張はまさにそのケースを排除するんだと思う。" userName="codeflo" createdAt="2025/06/14 09:26:08" color="#ff5c5c">}}




{{<matomeQuote body="残念ながらダメなんだ、そして他の純粋に全称量化された公式もどれもダメらしい（だからこれはCon(PA)に特化したことじゃなくて、もっと一般的な話）。https://math.stackexchange.com/questions/5003237/can-goodste... 最初の質問についてだけど、omega-consistencyをPAの公式としてどうエンコードするの？単に興味があるだけだけど、僕には全然明らかじゃないな。" userName="bubblyworld" createdAt="2025/06/14 16:04:00" color="#785bff">}}




{{<matomeQuote body="＞ 最初の質問についてだけど、omega-consistencyをPAの公式としてどうエンコードするの？単に興味があるだけだけど、僕には全然明らかじゃないな。<br>僕もそれ気になってたんだけど、Wikipediaの定義によるとそんなに複雑じゃなさそうだよ。「全ての符号化された命題P(x)について：もし全てのxに対してP(x)の符号化された証明が存在するなら、’あるxに対して￢P(x)が存在する’という符号化された証明は存在しない」。つまり、メタ理論で各整数について命題を証明できるなら、対象理論内の量化子もそれを尊重しなきゃいけないってことみたい。" userName="LegionMammal978" createdAt="2025/06/14 17:06:49" color="#45d325">}}




{{<matomeQuote body="ありがとう、分かったよ。つまり、何らかのGödel numberingを選んで、命題上の量化子が実はドメインの要素上の量化子になるんだね（そしてSub(...)やProves(...)なんかのエンコーディングを使う）。これなら上手くいく可能性がある理由が分かるよ。なぜなら、これは算術的階層でずっと上に来るからね。" userName="bubblyworld" createdAt="2025/06/14 18:15:41" color="#45d325">}}




{{<matomeQuote body="算術的階層に関する限り、ω-consistencyは単なるΠ₂文であるはずだよ。符号化された命題に対する普遍量化子と、否定された前提に対する存在量化子があるだけ。エンコーディングの実装詳細は全部有界だよ。（普通のconsistency、つまりΠ₁文である’矛盾の符号化された証明は存在しない’と比べてみて。）" userName="LegionMammal978" createdAt="2025/06/14 18:49:18" color="">}}




{{<matomeQuote body="ありがとう、同じ認識だよ。僕がまだ混乱してるのは、w-consistencyを表す公理として「全てのPについて、もし全てのnに対しP(n)の証明があるなら、全てのnについてP(n)の証明がある」という文を加える、ってところ。これが本当にw-consistencyと同じ意味なの？僕たちの証明可能性述語と真実の間にまだ繋がりがないよね。例えば、証拠となる証明が非標準的なモデルがあるかもしれない。だから、これがPA内で「全てのxについてP(x)」を結論づけるのに十分なのか納得できないんだ。Goodstein’sを証明するにはそれが必要なのに。結論づけられるのは、そのステートメントをコードする（たぶん非標準的な）nが存在する、ってだけ。" userName="bubblyworld" createdAt="2025/06/15 08:21:34" color="#38d3d3">}}




{{<matomeQuote body="そうだと思うな。math exchangeの投稿によると、ε₀までの超限帰納法をPAに加えるとPAを証明できるらしいよ。PA+”PAはconsistent”がε₀までの超限帰納法を証明できるようになりそうだね。" userName="NoahZuniga" createdAt="2025/06/14 13:59:13" color="">}}




{{<matomeQuote body="PA+”PAは無矛盾”だけじゃ不十分らしいね。ChatGPTがそう言ってたから信じるわ。ちょっと専門外で自信ないけどさ。" userName="btilly" createdAt="2025/06/14 01:38:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="PAの表現力すごいよね！最初は地味だと思ったけど、計算をエンコードできるって知ってから一気に腑に落ちたよ。このエンコード技法を分かりやすく解説してる初心者向け資料、誰か知らない？" userName="Huxley1" createdAt="2025/06/16 09:13:19" color="">}}




{{<matomeQuote body="Gregory Chaitinの本とかどう？例えばこれ -＞ https://www.amazon.com/Exploring-Randomness-Discrete-Mathema...." userName="btilly" createdAt="2025/06/16 15:42:28" color="#785bff">}}




{{<matomeQuote body="Boyer-Moore理論[1]にすごく似てるね。あれもPeano axiomから数学を積み上げるんだ。自動定理証明器も作ったらしいよ。学生がPeanoから素因数分解定理を証明するのは無理でも、加法の交換法則とかGCDの話ならできるかもって言ってる引用が面白いね。<br>実装はここにあるよ -＞ https://github.com/John-Nagle/nqthm/tree/master<br>[1] https://www.cs.utexas.edu/~boyer/acl.pdf" userName="Animats" createdAt="2025/06/14 19:53:09" color="#ff33a1">}}




{{<matomeQuote body="Math StackexchangeでのJoJoModdingへのコメント、あれ違うと思うな。「PAは”PAがXを証明する”を証明できても、証明が有限長だって証明できないからダメ」って言ってたけど、標準モデルがあるんだから、有限長の証明は必ず存在するよ。だからPAがそれを証明できればXも証明できるんだ。" userName="dwohnitmok" createdAt="2025/06/14 18:05:34" color="#ff5c5c">}}




{{<matomeQuote body="君の主張、詳しく追えてないんだけど、「PAは’forall n, G(n)’を証明する」じゃなくて、「PAは’forall n, Provable(G(n))’を証明する」ってことだよね？この「Provable」を’forall’の外に出せない理由、Goodstein sequenceを使わずに誰か説明してくれない？論理が錆びついててさ。" userName="dwohnitmok" createdAt="2025/06/14 18:14:15" color="#ff5733">}}




{{<matomeQuote body="「PAが”PAがXを証明する”を証明できればXを証明できる」って、それ間違いだよ。PA内で証明探索関数は作れるけど、停止性問題のアナロジーで考えると、「opposite-return」っていう関数が作れて、PAはそれについて矛盾を証明しちゃう。<br>結局、PAは「自分が証明できること全てを証明できるなら無矛盾」ってことを証明するんだ。だから「PAが証明する」と「PAが証明すると証明する」は違うんだよ。これはGödelの第二不完全性定理の一種だね。" userName="btilly" createdAt="2025/06/14 18:37:44" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと話が分かんないんだけど、別角度で考えてみよう。一次PAがSを証明するなら、完全性定理で全てのモデルでSは真だよね。「PAがxを証明する」ってのは「Provable(x)」って述語、つまり「証明のGödel number Nが存在する」ってこと。PAがProvable(x)を証明するなら、全てのモデルでProvable(x)は真。標準モデルもモデルだから、そこにも有限のGödel number N_stが存在するはず。無限長の非標準証明しかないのにPAがProvable(x)を証明できるなんてことはありえないよ。" userName="ComplexSystems" createdAt="2025/06/15 01:14:13" color="#ff5c5c">}}




{{<matomeQuote body="非標準モデルの話に戻るね。標準的なnについては、関数（おそらくGoodstein sequenceの話の続き）の証明は存在するってPAは証明するだろう。でも非標準的なnについては、実際に証明があるかどうかは分からない。だからPAは「証明が存在する」って証明したとしても、それが実際にPAが証明できるってことにはならないんだ。" userName="btilly" createdAt="2025/06/15 06:48:40" color="">}}




{{<matomeQuote body="それって全然違う話じゃない？Goodstein sequenceの話だと、各nについてPAが終了することを証明できるって話だよね。つまり「forall n, Provable(Goodstein(n)が終了)」ってこと。PAがそれ自体を証明できるとも証明してるのかもしれないけど、これは「PAは’forall n, Goodstein(n)が終了’って文を証明できる」っていう話とは全然違うよ。" userName="ComplexSystems" createdAt="2025/06/15 17:45:20" color="">}}




{{<matomeQuote body="いや、前の主張とは違わないよ。そう思うなら、俺の読み違いだ。俺の前の主張は、「全てのnについて、PAは『PAがG(n)が停止することを証明できる』と証明できる」ってこと。でも論理学では、「PAが証明できる」と「PAは『PAが証明できる』と証明できる」は大事な違いがあるんだ。後者から前者は結論できない。実際、証明を見せて、検証しないといけない。その理由はこれ。全ての標準的なnについては、「PAは『PAが証明できる』と証明できる」なら「PAが証明できる」が真だ。でも非標準的なnについてはそうじゃない。PA自身は標準的なnと非標準的なnを区別できないから、PAはその含意を証明に使うことができないんだ。<br>（これは全て大学院時代の論理学の教授との長い会話に基づいてる。俺が正しく理解していれば、https://faculty-directory.dartmouth.edu/marcia-j-groszek が功績者だ。間違っていれば、俺の責任だよ。）" userName="btilly" createdAt="2025/06/15 20:50:48" color="#785bff">}}




{{<matomeQuote body="＞ ＞ If PA proves ”PA proves X” then PA can prove X.<br>If we assume PA to be sound, then indeed everything it proves is true.<br>＞ Not true.<br>Now you’re saying PA is unsound.<br>But your article wasn’t about PA proves ”PA proves X”,<br>it was about ”forall n : PA proves G(n)”.<br>For PA not to prove ”forall n: G(n)”, there is no soundness issue, only a ω-consistency issue." userName="tromp" createdAt="2025/06/14 19:50:14" color="">}}




{{<matomeQuote body="多分、俺たちは同じことを言ってると思う。<br>PAがある声明を「PAが証明できる」と証明できても、PAはその事実からその声明を証明できると結論できないんだ。<br>PAがある声明を「PAが証明できる」と証明できたのに、実際には証明できなかったら、PAは健全じゃないことになる。<br>声明の集合の中には、PAが各声明について「PAが証明できる」と証明でき、PAも各声明を証明できるのに、その声明の集合全体をPAは証明できない、って場合があるんだ。<br>最後の理解は、「PAは『PAがProvable(S)』と証明できる」が、「PAはSを証明できる」という声明と論理的に同じじゃない、ってことを理解すると助けになるよ。たとえ、いつも同じ真偽値を持っていたとしてもね。" userName="btilly" createdAt="2025/06/14 21:46:21" color="#45d325">}}




{{<matomeQuote body="もしPAがある数学的性質を持つ数、例えば何かの証明のGödel numberの存在を証明できるなら、全てのモデル（標準モデルを含む）にその性質を持つ数が存在しないといけないんだ。だから、標準的な数をエンコードする証明があるはずだし、お前のGödel numberingが正しければ、それがエンコードする証明は正しいはずだよ。" userName="ComplexSystems" createdAt="2025/06/15 02:36:53" color="#ff33a1">}}




{{<matomeQuote body="その集合の中の全ての標準的な声明のGödel numberは確かに存在するだろうね。<br>でもそれが無限集合なら、非標準モデルには標準モデルにない声明が含まれていて、それらは大抵、正しい証明をエンコードしてないんだ。（例えば、そういう証明は無限に長い傾向があるからね。）" userName="btilly" createdAt="2025/06/15 06:51:08" color="#ff5c5c">}}




{{<matomeQuote body="話がすれ違ってるね。俺はこれに反応してるんだ：「PAが『PAが証明できる』と証明できるとしても、その事実からPAは証明できると結論できない。」<br>「PAが『PAが証明できる』と証明できる」って言う時、これは普通、声明の証明のGödel numberの存在を証明できるって意味だ。もしPAがそういうGödel numberが存在することを証明できると証明できるなら、完全性定理のおかげで標準モデルに存在するはずで、この数は標準的な自然数で、有効な有限長の証明をエンコードしてるんだ。<br>もし上の話が、お前のしてる議論にどういうわけか当てはまらないなら、どうしてなんだ？" userName="ComplexSystems" createdAt="2025/06/15 17:37:48" color="#ff5c5c">}}




{{<matomeQuote body="確実に話がすれ違ってるね。<br>PAのモデルの中にGödel numberが存在することが、そのGödel numberに対応する証明が存在することを意味しないんだ。PAはGödel numberの存在しか証明できない。<br>じゃあ、PAから定義できるprove-gnって関数を考えてみよう。これはG(n)が停止することのPAからの証明のGödel numberになるように定義されてる。この関数はちょっと複雑だけど、絶対構築できる。そしてPAから、この関数が宣伝通りに動くって証明できるんだ。<br>非標準モデルの中にいるとしよう。全ての標準自然数nに対して、(prove-gn n)は標準自然数になって、実際の証明に対応する。ここまではいい。<br>でも、このモデルにある多くの非標準自然数nに対しては、(prove-gn n)は非標準自然数になる。そのGödel numberは有効な証明に対応しないんだ。だから、このモデルではPAは「PAが証明できる」と証明するけど、実際には証明しないことになる。実際、その声明は偽かもしれない。<br>そして、このことは声明が非標準的な自然数に関するもので、標準的なものでない限り、何の矛盾も整合性問題も引き起こさないんだ。<br>PAからは標準モデルか非標準モデルか決定する方法がないから、PAは「PAが『PAが証明できる』」が「PAが証明できる」を含意すると結論できない。これらは本当に違う概念なんだよ。混同すると大変な混乱を招くことになるぞ。" userName="btilly" createdAt="2025/06/16 01:34:47" color="#45d325">}}




{{<matomeQuote body="＞ There exist collections of statements such that PA proves that it proves each statement, and PA does prove each statement, but PA does not prove the collection of statements.<br>これは真だと思う（Goodstein sequencesを使う証明よりずっと簡潔な証明が見たいけど、それはここでhttps://news.ycombinator.com/item?id=44277809 言及した通り）。でも、これは「PAは『PAが証明できる』と証明できるけど、PA自身は証明できない声明がある」っていうお前の主張よりかなり弱い。<br>特に、全ての命題Pについて、「PAがPを証明できる」⇔「PAがProvable(P)を証明できる」を証明できるんだ（つまり「PはPAで証明可能である」ってこと）。<br>PAがPを証明できるなら、PAの有限な証明を取って、通常のGödel encodingをして一つの数にする。それが「Provable(P)」の背後にある暗黙の存在言明の証拠だよ。<br>逆方向に、PAがProvable(P)を証明できるなら、暗黙の存在言明の自然数証拠を取る。標準自然数はPAを満たすから（これは基本的にPAが無矛盾であるという仮定と同等）、この自然数は実際、標準的な有限自然数だとわかる。だから、この自然数をPAにおけるPの証明に変換できるんだ。<br>この同等性こそが、Provability relation（より正確には「PAにおけるProvability」と述べられる）「Provable」が価値ある理由なんだ。もし同等性が成り立たなかったら、この関係を「Provable」と呼ぶのはすごく変だろう。<br>特に、これは「PAがPを証明できる」⇔「PAがProvable(Provable(P))を証明できる」（そしてProvableを何度入れ子にしても同様）ってことを意味するんだ。<br>＞ If PA proves that it proves a statement, PA cannot conclude from that fact that it proves that statement.<br>お前がこれで何を言いたいかはなんとなくわかるけど、絶対にお前の結論は強すぎる。特に、PAが「Provable(P)」の事実をPを実際に証明するために「使う」ことはできない、というのはある直感的な意味では真だ。PAがPを証明できる全てのPについて、PAが「Provable(P)」も証明できる、というのはある意味偶然なんだ。なぜならその同等性はPAの「外側」で成り立ってるから。でもそれはPA自身とはあまり関係なくて、むしろどんなencoded representationの性質なんだ。<br>trompが言ってることさえ、俺にはかなり変に聞こえる（PAがomega-consistencyの問題を持つのが普通だと暗に示しているように）。PAがomega-inconsistentだと主張するのはすごく変だ。それはPAがinconsistentだと言うに等しい。PAがomega-inconsistentだというのは、標準自然数がPAの有効なモデルではないと言ってることなんだから。" userName="dwohnitmok" createdAt="2025/06/15 01:30:58" color="#ff5733">}}




{{<matomeQuote body="＞ Even what tromp is saying is quite strange to me<br>Indeed I mis-spoke. While for all n, PA can prove P(n),<br>it cannot prove ”for all n: P(n)”.<br>I don’t know if there is a name for this, but it’s not an omega-inconsistency.<br>It would only be omega-inconsistent to have PA contradict ”for all n: P(n)”, i.e. to prove ”there exists an n: not P(n)”." userName="tromp" createdAt="2025/06/15 11:02:52" color="">}}




{{<matomeQuote body="＞ PA proves that if it can prove everything that it proves that it can prove, then PA must have a proof of one of the two previous statements.<br>これは真じゃないと思うな。何の定理を使ってるか知らないけど、「証明可能であること」と「真であること」を混同してると思うよ。<br>特に、お前の推論はLob’s Theoremに違反してる。これは第二不完全性定理のcorollaryだよ。" userName="dwohnitmok" createdAt="2025/06/14 21:36:10" color="#45d325">}}




{{<matomeQuote body="標準モデルがPAのモデルになるのはPAが無矛盾な場合だけだけど、ゲーデルの定理からPA自身は無矛盾性を証明できないんだよね。矛盾してない限りさ。だから、あんたが提案してる証明はPA自身の中では通用しないと思うんだけど。あれがそのコメントの要点じゃないかな。" userName="bubblyworld" createdAt="2025/06/15 08:38:10" color="#ff5c5c">}}




{{<matomeQuote body="いや、俺の証明はPAより弱い体系でもいけると思うんだけどな（どうやって一階述語論理でエンコードするか、そのメタ理論は今ちょっと頭痛いけど）。特にPAの無矛盾性には依拠してないし。もしPAが無矛盾じゃなかったら何でも証明できちゃうから、「PAが”PAはXを証明する”を証明するならPAはXを証明できる」ってのは（自明に）成り立つしね。" userName="dwohnitmok" createdAt="2025/06/15 18:47:16" color="#ff5733">}}




{{<matomeQuote body="うーん、前にはこう書いてたよね：「重要なのは非標準モデルが存在することじゃなくて、標準自然数モデルがPAをモデル化するって観察なんだ」。<br>この事実（標準自然数モデルがPAをモデル化すること）はPAが無矛盾であることを含んでるから、あんたの議論は最初からそれを暗黙に仮定してるんじゃないの？もしPAが無矛盾なら、それはPA自身では証明できないはずだし、弱い理論でどうやってやるのか分からないな。でも論理は奥深いから…俺は何を見落としてる？<br>俺の知る限り、あんたが説明してること（つまり「Provable(X)」なら「X」）は一様反射原理って呼ばれてて、PAに加えるとPA単独よりずっと強くなるよ。" userName="bubblyworld" createdAt="2025/06/15 20:25:07" color="#ff5c5c">}}




{{<matomeQuote body="一様反射原理ってのはよく知らないな。実際の一階述語のステートメントはどんな感じ？だって、PAの中でこれを形式化する一番シンプルなやり方として思いつくのは「PAは”Provable(X) → True(X)”を証明する」だけど（PAでやるならエンコードが必要だから、「Provable(X) → X」なんて単純なのはPAの言語では書けない）、タルスキの真理の定義不可能性定理のせいでPAでは書けないんだ（だからカテゴリーエラーになる）。<br>＞ だからあんたの議論は最初からそれを暗黙に仮定してるんじゃないの？<br>してないよ。俺の議論は最初から分岐してるんだ。<br>もしPAが無矛盾なら、俺がやったいつもの標準自然数の議論をやる。<br>もしPAが無矛盾じゃないなら、PAは何でも証明できる。<br>だから「PAが”PAはXを証明する”を証明するならPAはXを証明できる」ってステートメントはどっちにしても成り立つんだ。PAの無矛盾性には依存してないよ。" userName="dwohnitmok" createdAt="2025/06/16 21:46:21" color="#785bff">}}




{{<matomeQuote body="重要なのは、俺は「もしPAがXを証明するなら、Xが成り立つ」って任意のXについて主張してるわけじゃないってことだ。これ自体、PAでどうステートメントするのかすら分からないし。俺のステートメントは単純に「もしPAが”PAはXを証明する”を証明するなら、PAはXを証明できる」ってだけ。" userName="dwohnitmok" createdAt="2025/06/17 05:22:39" color="">}}




{{<matomeQuote body="そうだね、その主張には同意するよ、もちろん。前のコメントでは前者の方だと解釈してたんだ。あんたも同意するように、そっちはPAでは証明できないね。こういうことを非公式に話すときは、ある程度の避けられない曖昧さがあるもんだ！<br>PAの真理述語はPAでは定義できないってのは同意。でも、反射原理は公理図式として表現できるよ。各論理式A(x)に対して、「∀x. Provable([A(x)]) → A(x)」っていう公理さ。（これはメタレベルで「もしA(x)がPAで証明可能なら、それは真である」っていう意図された意味を持つ）<br>これはPAとは無矛盾だけど、PA単独よりずっと強い。特にGoodsteinの定理を証明できるし、それゆえカット除去経由でPAの無矛盾性も証明できる。（あるいはそれに近いもの。反射原理はたくさんあるけど、基本的なアイデアは単一の論理式として表現しないことだ——言ってみれば、メタレベルで量化するんだ）" userName="bubblyworld" createdAt="2025/06/17 09:54:06" color="#38d3d3">}}




{{<matomeQuote body="＞そうだね、その主張には同意するよ、もちろん。前のコメントでは前者の方だと解釈してたんだ。<br>うん、同意だよ。<br>この話は全部、Math Stack Exchangeの元のコメントから始まって、News Y Combinatorでこう要約されたんだ（https://news.ycombinator.com/item?id=44277936）。<br>＞＞ もしPAが”PAはXを証明する”を証明するなら、PAはXを証明できる。<br>＞ それは違う。<br>以下の件については、<br>＞PAの真理述語はPAでは定義できないってのは同意。でも、反射原理は公理図式として表現できるよ<br>了解、ありがとう！<br>一番知りたいのは、これがPAで証明できるかってことなんだ：「∀x, IsSentence(x) → Provable(g(Provable(x))) → Provable(x)」。できると思うんだけど、 formal details を十分書く機会がまだなくて100％自信があるわけじゃないんだ。" userName="dwohnitmok" createdAt="2025/06/17 19:46:19" color="#45d325">}}




{{<matomeQuote body="https://math.stackexchange.com/questions/4408124/what-does-t..." userName="gsf_emergency_2" createdAt="2025/06/14 07:25:29" color="#ff5c5c">}}




{{<matomeQuote body="誘導データ型について誰かと話してたんだけど、LeanとかRocqでの`Nat`のゼロ／succ定義を見せたんだ。<br>面白かったのは、相手が「これだけで十分なの？ペアノ公理はどうなるの？誘導データ型より原始的なものってあるの？」って聞いてきたこと。<br>これを持ち出したのは、ペアノ公理が本質的なものではなく、たくさんの設計の中の一つに過ぎないってことを当たり前だと思わないのが良いからだよ。" userName="gugagore" createdAt="2025/06/14 13:35:13" color="">}}




{{<matomeQuote body="＞誘導データ型より原始的なものってあるの？<br>俺は自然数の方が誘導データ型より原始的だと思うな。全ての誘導データ型は、自然数と一緒に少数の基本的な型形成子（例えばΠ, Σ, =, Ω）があれば構成できるからね。" userName="SabrinaJewson" createdAt="2025/06/14 16:48:39" color="">}}




{{<matomeQuote body="PAにすべての自然数はいらないんじゃない？0と1だけでいい気がする。<br>依存型理論のプリミティブな集合はomegaか帰納型を使うけど、PAみたいな公理は必要ないと思うよ。" userName="gugagore" createdAt="2025/06/14 19:48:26" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="有限集合でモデル化されないように、無限性の源は必要だよ。<br>それは自然数でもW型でも帰納型でもいいけど、自然数が一番基本的だよね。" userName="SabrinaJewson" createdAt="2025/06/15 09:06:58" color="">}}




{{<matomeQuote body="純粋ラムダ計算だけで十分だよ。<br>ラムダ計算は計算をエンコードできるんだから。" userName="cryptonector" createdAt="2025/06/14 18:26:32" color="">}}




{{<matomeQuote body="PAの無矛盾性に関連した話だけど、PAの中で無矛盾性が証明できるらしいよ。リンク見て→ https://youtu.be/6pjLmmkZnIA" userName="atsmyles" createdAt="2025/06/14 08:06:10" color="">}}




{{<matomeQuote body="これ、論理学詳しくない人には解説いるね！<br>ゲーデルの第二不完全性定理は「PAが自身の無矛盾性を証明できるならPAは不整合」って言うの。リンク先の研究はPAが不整合って言ってるんじゃなくて、「自身の無矛盾性を証明する」ってことの新しい弱い定義を示して、PAがそれができるって言ってるんだ。<br>結構難しいから、論理学の知識がないと意味不明かもね。" userName="robinhouston" createdAt="2025/06/14 08:23:47" color="#45d325">}}




{{<matomeQuote body="でも、計算可能性だけで十分なのかな？計算可能な実数は実数の部分集合でしょ。" userName="RossBencina" createdAt="2025/06/14 08:50:38" color="">}}




{{<matomeQuote body="「実数」って名前ひどいよね。あれは物理的な比率って考えられるよ。<br>例えば体重180.255ポンドってのは、標準ポンドとの比率。<br>でも一般的な考え方だと、数は抽象的な概念で、測定とは別。<br>この「表象的」な見方は20世紀に主流になったけど、それは単なる「プラトン的」な解釈だよ。<br>現実世界で無限精度で測定できないのと同じで、計算不可能な実数の連続体が必要な理由はないんだ。<br>物理学だってそう。今は離散的だし、せいぜい50桁くらいの精度しか使わない。<br>無限精度なんて無理。2000桁とかも。<br>小さいスケールでは量子力学で無理だし、大きいスケールでも周りの星や銀河、宇宙全体の重力を計算しないと高精度にならないから、事実上不可能だよ。" userName="A_D_E_P_T" createdAt="2025/06/14 09:31:46" color="#45d325">}}




{{<matomeQuote body="あのさ、比率として解釈できる数は定義上「有理数」であって「実数」じゃないんだよ。<br>今回の議論は数学の抽象概念であって物理じゃない！<br>物理で無限の精度が必要ないのは確かだけど、数の抽象化とは関係ないんだ。公理から厳密に定義されてる。<br>量子力学や粒子の測定可能性は無関係。<br>そもそも宇宙の精度も未解決。<br>もし物理が有限精度なら、どんな数の空間？整数？有理数？ノ－ベル賞級だよ！" userName="jiggawatts" createdAt="2025/06/14 10:49:08" color="">}}




{{<matomeQuote body="物理量の値はアルキメデス群の公理を満たすべきで、測定は割り算だよ。結果は実数だけど、実際は有限精度で有理数になるんだ。<br>でも連続体（実数）でモデル化する方が、離散モデルよりずっとシンプルだよ。<br>離散モデルは無理数が出て矛盾したり、回転も複雑になる。ギリシャ人も苦労したみたい。<br>空間、時間、電圧は連続量。これらを離散化する試みは成功してない。時間の無駄みたいだよ。" userName="adrian_b" createdAt="2025/06/14 11:08:12" color="#ff33a1">}}




{{<matomeQuote body="他の返信でも言ったけど、実数は必須じゃない。でも物理量のモデルに使うのが、有理数だけ使うよりずっとシンプルなんだ。<br>ここ数十年、離散モデルの研究はたくさん発表されたけど、失敗ばかりだよ。<br>モデルはクラシックモデルより複雑なのに、検証可能な予言がない。<br>物理では一つの量だけを離散化するのは無意味。多くの量をモデル化すると、回転や振動でも無理関数が出てすぐ矛盾するんだ。" userName="adrian_b" createdAt="2025/06/14 17:01:47" color="">}}




{{<matomeQuote body="ハイゼンベルクの不確定性原理は測定学や物理量の代数構造と無関係だよ。<br>あれはフーリエ変換の性質から導かれる。特定のペアは独立してないから、両方を任意精度で同時に測れないだけ。<br>単一の量や独立ペアの同時測定については何も言ってない。<br>測定できない量なんてない。もし測れないなら量じゃない（モース硬度みたいな質はある）。" userName="adrian_b" createdAt="2025/06/14 16:37:11" color="">}}




{{<matomeQuote body="整数や有理数でない数の比は…実数だよ。<br>もちろん、複素整数とかの比について pedantic になれるけど、それは論点が違うんだ。<br>有理数は除算で閉じているから、有理数同士の比は有理数になる。<br>有理数を「脱出」するには、無理数が必要になる。平方根とかね。<br>円周率πとかが入ると、完全に実数になって、そこから抜け出せない。まるでタールピットだよ。" userName="jiggawatts" createdAt="2025/06/14 12:59:36" color="">}}




{{<matomeQuote body="「計算不能な連続体としての実数は全く必要ない」っていうのは、ある意味間違ってるよ。<br>現代数学（計算不能な実数を含む）が科学に不可欠であるということが、そういう抽象的な対象が必要だということを示している、と言う人もいるんだ。" userName="meroes" createdAt="2025/06/14 15:52:39" color="">}}




{{<matomeQuote body="ハイゼンベルクの不確定性原理によると、基本的な物理量には固有の値がなくて、値の範囲があるんだ。<br>だから、二つの粒子を比べてどちらが遠いか、常に判別できるわけじゃない。<br>プランク長付近では距離について語ることさえ意味をなさない、量子フォームみたいな基本的な物理構造だっていう提案もあるよ。" userName="btilly" createdAt="2025/06/14 17:42:51" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
