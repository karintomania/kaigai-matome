+++
date = '2025-07-15T00:00:00'
months = '2025/07'
draft = false
title = 'プロでも陥る無限ループを回避！アルゴリズムのバグをなくす「頭の中の証明」とは？'
tags = ["プログラミング", "アルゴリズム", "バグ", "思考法", "ソフトウェア開発"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> プロでも陥る無限ループを回避！アルゴリズムのバグをなくす「頭の中の証明」とは？

引用元：[https://news.ycombinator.com/item?id=44573409](https://news.ycombinator.com/item?id=44573409)




{{<matomeQuote body="バイナリサーチはシンプルに見えて実装が難しいんだ。Jon Bentleyがプログラマの9割がバグありのバイナリサーチを書いたって話、知ってる？無限ループが多いみたい。ループ不変条件を意識しないと正しく書けないよ。僕の記事で詳しく解説してるから見てみてね。<br>[1]: https://hiandrewquinn.github.io/til-site/posts/binary-search..." userName="hiAndrewQuinn" createdAt="2025/07/15 17:49:25" color="#ff33a1">}}




{{<matomeQuote body="僕もバイナリサーチを面接問題にしてるけど、2/3の優秀な候補者が20分で書けないんだ。ほとんど無限ループで失敗するよ！原因はたぶん、教えられてるインターフェースが悪いんだよね。inclusiveかexclusiveかでバグの発生率が変わるか、実験してみたいなぁ。" userName="mdnahas" createdAt="2025/07/16 09:50:16" color="#45d325">}}




{{<matomeQuote body="面白いテストになるね。Claude SonnetにPythonでバグのないバイナリサーチを書いてもらったんだ。結果は見ての通り、コードとテストケースが提示されてるよ。AIもちゃんと書けるんだね。" userName="godelski" createdAt="2025/07/16 07:07:18" color="">}}




{{<matomeQuote body="Claudeのコードにある ’mid = left + (right - left) // 2’ って式、Pythonだと整数のオーバーフローを気にする必要ないから不要なんだ。Cみたいな言語なら大事だけどね。Pythonではちょっと非イディオム的かな。自分でアルゴリズム書くなら、最適化を意識すべきだね。" userName="hiAndrewQuinn" createdAt="2025/07/16 07:16:41" color="#45d325">}}




{{<matomeQuote body="僕はバイナリサーチのバグが有名だって知ってたから、自分の本では超慎重に書いたんだ。それでも結局バグがあったよ。Manningの早期アクセスプログラムのおかげで、印刷前に直せて本当に良かったよ。" userName="sedatk" createdAt="2025/07/15 19:07:59" color="">}}




{{<matomeQuote body="ああ、それ面白いね！そのバグがどんなものだったか、どこで読めるかな？" userName="edanm" createdAt="2025/07/16 05:20:09" color="">}}




{{<matomeQuote body="2006年のGoogleの論文によると、バイナリサーチの「ほぼ全ての」実装にバグがあったらしいよ。そう考えると、Jon Bentleyの90%がバグって話、むしろすごいと思わない？<br>https://research.google/blog/extra-extra-read-all-about-it-n..." userName="fragmede" createdAt="2025/07/15 18:59:48" color="#ff33a1">}}




{{<matomeQuote body="君のその説明だと、バイナリサーチは悪い面接問題に聞こえるよ。優秀な候補者が解けないなら、それはただLeetCodeを練習した人だけを選んでるってことじゃないの？" userName="Etheryte" createdAt="2025/07/16 11:36:01" color="">}}




{{<matomeQuote body="正直、あなたはインデックスにめちゃくちゃ神経を使う例を挙げてるよね。エラーなしで書くのが多分一番難しい基本的なアルゴリズムだわ。Hoare partitionと同じくらい難しいやつ。" userName="qsort" createdAt="2025/07/15 18:20:21" color="#ff5733">}}




{{<matomeQuote body="マジでそう。Pythonの閉じた左端、開いた右端の記法が好きな理由の一つはこれなんだよね。inclusive boundの問題を完全に回避できるから。だって、PythonのリストLで0 ≤ l ≤ r ≤ len(L)なら、L==L[0:len(L)]==L[0:l]+L[l:len(L)]==L[0:l]+L[l:r]+L[r:len(L)]ってなるじゃん。この記法、最初は嫌いだったんだけど、自分で動かしてみてからはもうこれしか考えられないわ。他の全部変に見える。" userName="hiAndrewQuinn" createdAt="2025/07/16 12:13:11" color="#ff5733">}}




{{<matomeQuote body="C++の標準ライブラリだと、binary searchをパーティショニング問題として表現してるんだよね。述語がfalseからtrueに変わるインデックスを見つけるって感じで、俺にはそれがすごく分かりやすい。" userName="monkeyelite" createdAt="2025/07/15 22:02:58" color="#38d3d3">}}




{{<matomeQuote body="C++のlower_boundやupper_boundみたいな最左・最右binary searchを俺がいつも覚えてる方法は、常に「prior best」を持って、アルゴリズムに合わせて境界を動かすってやり方なんだ。`while (l ＜ r){auto mp = l + (l-r)/2;if (nums[mp] == target){prior = target;#ifdef upper_boundl = target + 1;#else r = target - 1;#endif}}`<br>ひどいフォーマットでごめんね、レイオフされてからLeetCodeやりまくってて、もう一日中コード書いてるからさ…。" userName="scuol" createdAt="2025/07/16 06:11:57" color="">}}




{{<matomeQuote body="これについて読んだんだけど、binary searchを面接の質問に使い始めたってのは、なんでそれが有用だと思うのか興味あるな。有名なアルゴリズムをストレスのある面接の状況で実装させるのって、候補者についてあまり示さない気がするんだけど。俺なら、むしろコードの印刷物を見せてもらって、その実装について話したいな。例えば、抽象アルゴリズムとコードがどう対応してるかとか、実装のトレードオフとか、可読性とかね。" userName="andyjohnson0" createdAt="2025/07/16 11:09:02" color="#45d325">}}




{{<matomeQuote body="C言語みたいな言語でも、実際に使う場合って、サイズが小さいインデックスを使ってない限り、ほとんどおまじないみたいなもんでしょ。だってSIZE_MAX/2なんてサイズの要素なんて、まずないからね。根本的な問題は、インデックスにintを雑に使うことだよ。回りくどい計算しても、二倍のサイズでオーバーフローしちゃうし。" userName="naniwaduni" createdAt="2025/07/16 11:09:28" color="#785bff">}}




{{<matomeQuote body="あれは全くもってバカなミスだったよ。binary searchで一番よくあるバグは、中間点を`(start + end) / 2`って計算するところなんだ。一見簡単そうだけど、「start + end」が大きすぎて整数オーバーフローを起こす可能性があるんだよね。そうすると関数が壊れちゃう。俺のそのケースの処理も、結局間違ってて、読者の一人がそれを見つけてくれたんだ。他にもバグがあったかは覚えてないけど、あれは一番痛かったね。" userName="sedatk" createdAt="2025/07/16 20:35:56" color="#ff5c5c">}}




{{<matomeQuote body="昔、C言語でmicrocontroller用にbinary searchを書く必要があったんだ（ライブラリなしでね）。そのルーティンはだいたい1時間ごとに実行されてて、約4Mのデータポイントを扱ってたよ。" userName="JohnKemeny" createdAt="2025/07/15 22:15:37" color="">}}




{{<matomeQuote body="ほとんどのスライス系メソッドって、Pythonと同じような動作をするんじゃない？JavaScriptの`Array.prototype.slice`とか、Javaの`Arrays.copyOfRange`、Golangのスライス構文もPythonに似てるけど、3番目の値がステップ値じゃなくて結果のスライスの最大サイズってだけで、全部同じような振る舞いをするよね。" userName="rockostrich" createdAt="2025/07/16 15:37:28" color="">}}




{{<matomeQuote body="JavaScriptの場合、Googleのその「バグ」って、配列が4503599627370495個以上のアイテムを持ってる時にしか発生しないんだよ。そのバグにぶつかる前に、きっとメモリの問題にぶつかるんじゃないかな。" userName="jansan" createdAt="2025/07/16 05:11:10" color="#ff5733">}}




{{<matomeQuote body="記事のバグって、俺が言ってたバッファオーバーフローのことだよ。Jonですら”決定版”の実装でミスってるんだから、彼が正しいとした10%の実装で見抜くのは無理だったろうね。Googleの基準だと、検索の実装を完璧にできた奴は一人もいないんじゃないかな。" userName="hiAndrewQuinn" createdAt="2025/07/15 19:03:33" color="#ff33a1">}}




{{<matomeQuote body="これはLeetCode経験があるか、誰かが見てるとコードが書けるってことだね。こういうスキルが必要な企業文化もあるし、そうじゃない企業は勘違いしてるよ。俺はこうするね：1. CSVからデータを読む税金計算機とかでプログラミング能力を見てもらう。2. 小規模な有料プロジェクト。良ければ雇う。ダメならフィードバックして、1週間後にまたやらせて、学びの俊敏性を見る。3. 学びの俊敏性が高ければ雇う。" userName="mettamage" createdAt="2025/07/16 11:41:07" color="#ff5733">}}




{{<matomeQuote body="スカラーコードなら公平だけど、`gather`でベクトル化できるってことを忘れないでね。その場合、整数幅が広くなるとレーンが減るから心配だよ。<br>正直、B+ツリー構造をバルク/キャッシュの「ライン/ページ」サイズにチャンク化して、各ノード内で2進数より高次のベクトル化された検索を使うべきだろうね。" userName="namibj" createdAt="2025/07/16 11:57:42" color="">}}




{{<matomeQuote body="記憶が正しければ君の言う通りだけど、そのコメントは紛らわしいね。Pythonでは、シングルスラッシュだとデフォルトでfloatになるから、ダブルスラッシュ（または型キャスト）が必要なんだ。ダブルスラッシュはintを返すんだよ。" userName="inhumantsar" createdAt="2025/07/17 03:09:57" color="">}}




{{<matomeQuote body="正確には、Zozは「非常に資格のある応募者の約2/3」って言ってたよ。<br>「資格がある」≠「能力がある」。" userName="hiAndrewQuinn" createdAt="2025/07/16 12:29:24" color="">}}




{{<matomeQuote body="頑張れ、LeetCoderの仲間よ！今は熱心にやってないけど、Ankiでいくつか練習問題は回してるよ。俺の最も右のコードはミニシリーズのパートIIIにあるよ、[1]。すごく似てるけど、俺は-1を最後のreturnに回してるんだ。以下にコードがあるよ。<br>    def rightmost_bsearch(L, T):<br>      l, r = 0, len(L)<br><br>      while l ＜ r:<br>        # Loop invariants. Always true! Comment out in production!<br>        for somewhat_smol in L[0:l]:<br>          assert somewhat_smol ＜= T         # Note: Weak inequality now.<br>        for lorg in L[r:len(L)]:<br>          assert lorg ＞ T<br><br>        mid = (l + r) // 2<br><br>        if L[mid] ＞ T:<br>          r = mid<br>        else:<br>          l = mid + 1<br><br>      return r - 1 # return the first element AFTER L[r:len(L)].<br><br>(技術的にはBEFOREであるべきだと思う。全ての右端バイナリサーチは逆配列の左端バイナリサーチでもあるから、AFTERでも実は間違ってない)<br>[1]: https://hiandrewquinn.github.io/til-site/posts/binary-search..." userName="hiAndrewQuinn" createdAt="2025/07/16 06:27:19" color="#ff5733">}}




{{<matomeQuote body="すぐ解けるかどうかじゃなくて、実行可能な解法にたどり着くまでの問題解決プロセスが重要なんだ。「このコードが本当に正しいことを証明してみろ」ってのがそのプロセスの一部なら、それは実務環境でも広く適用できる“豆知識”だよ。ランダムなLeetCodeアルゴリズムとは違ってね。アルゴリズム中心の面接では、「どうやってこれが正しいと証明するか考える？」って質問を入れるべきだと俺は思うね。" userName="zozbot234" createdAt="2025/07/16 11:43:22" color="#ff5c5c">}}




{{<matomeQuote body="`std::lower_bound`と`std::upper_bound`の微妙な違いと、それがどこで重要になるかを思い出すのは、筋肉の記憶になるまではちょっと面倒だよね。" userName="hoseja" createdAt="2025/07/16 13:40:38" color="">}}




{{<matomeQuote body="ああ、そうそう、これはJavaの標準ライブラリに20年間も発見されずにあった“古典的な”バグだよ、記憶が正しければね。この話題は本当に興味深いし、共有してくれてありがとう。俺はバイナリサーチを最初からバグなしで書ける自信ないな :)" userName="edanm" createdAt="2025/07/16 21:40:04" color="#ff5733">}}




{{<matomeQuote body="君の言う通りだね。でも、不変条件は、コンピュータ支援証明用のDSLを使わずに形式手法から得られる最大の費用対効果だよ。それらがバイナリサーチで機能するってことは、形式手法に馴染みのない人にとって、ほとんど全てのものに機能する（実際に機能するんだ）ってことの非常に強力なシグナルなんだ。" userName="noosphr" createdAt="2025/07/16 03:20:19" color="#ff33a1">}}




{{<matomeQuote body="C、マイクロコントローラー、組み込みシステムでの経験からすると、アルゴリズム的に難しい課題でも1、2日で解決できるってさ。LeetCodeみたいな競技プログラミングは関係ないって。普通のプログラマーならできることだし、競技プログラマーが言うような「オフラインでコード書け」みたいな極端な状況はありえないって言ってるね。面接でそのことを突っ込んだら嫌がられたらしいよ。" userName="kamaal" createdAt="2025/07/16 03:28:17" color="">}}




{{<matomeQuote body="質問の角度がすごく意外だな。なんか、コンパイル時専用のプログラムでも書いてんの？" userName="powersnail" createdAt="2025/07/16 03:26:39" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="昔の大学院の授業で、記事と似た考え方に出くわしたよ。数学のテストでペンを使い始めたら、頭の中でしっかり考えてから書き出すようになって、高得点になったんだ。コード書くときも、どう動くか、どう動かせばいいか、頭の中でハッキリさせてから書くと、間違いが減るって言ってるね。" userName="JohnMakin" createdAt="2025/07/15 20:49:20" color="#ff5733">}}




{{<matomeQuote body="8年生の時、代数の先生が「宿題をペンでやったら、間違い減るんじゃない？」って言ったらしい。それから45年、数学者になった今も95%はペンで数学してるって。どれだけ役立ったかは不明だけど、書き直しを嫌うから、書く前にもっと考えるようになったのかもね。" userName="irchans" createdAt="2025/07/17 11:35:32" color="#45d325">}}




{{<matomeQuote body="大学で理論コンピューターサイエンスを学んだんだ。記事の考えには同意するけど、実践は難しいって。事前条件と事後条件に加えて、ループ不変式と構造的帰納法がCSの証明に役立つって強調してるね。UofTのCSC236Hのノートも関連してるってさ。<br>https://en.wikipedia.org/wiki/Loop_invariant<br>https://en.wikipedia.org/wiki/Structural_induction<br>https://www.cs.toronto.edu/~david/course-notes/csc236.pdf#pa..." userName="nayuki" createdAt="2025/07/15 18:11:06" color="#785bff">}}




{{<matomeQuote body="あのノートは最高だね。David Liuって人がめちゃくちゃ良い人みたいだぞ。<br>https://www.cs.toronto.edu/~david/research.html" userName="sitkack" createdAt="2025/07/15 18:57:25" color="">}}




{{<matomeQuote body="良いプログラマーになるには、コードに小さな証明を書くべきだって。それってつまりテストと型（Types）のこと。特にテストを最初に書いて、次に型、最後にコードを書くのがいい。OpenAPIやGraphQLでAPIを定義して、その仕様で実行時にデータ検証するのも良い証明になる。コードより仕様の方が大事なんだってさ。" userName="w3news" createdAt="2025/07/16 07:26:02" color="#785bff">}}




{{<matomeQuote body="記事の見出しにあった5つの特性は、良い型システムで表現できるって。そうすれば、仕様のほとんどがコードになって、コンパイラがその特性を保証してくれるようになる。OpenAPIとGraphQLは型が貧弱だから、今すぐにはこれに到達できないだろうってさ。" userName="bmn__" createdAt="2025/07/16 08:19:18" color="#38d3d3">}}




{{<matomeQuote body="記事にある「頭の中で証明しろ」の裏には、「証明しやすいコードを書け」って意味もあるんだってさ。言うのは簡単だけど、実際にやるのは難しいと。自分で書いた新しいプロジェクトならまだしも、他の開発者が書いたfoo()やbar()、baz()がグローバルステートを変更するような既存のコードだと、証明するのはめちゃくちゃ難しいって言ってるね。" userName="bluetomcat" createdAt="2025/07/15 18:08:29" color="#ff5733">}}




{{<matomeQuote body="良い開発者であるってことは、システムをそういう方向に進化させられるってことだよ。実際のシステムって結構ごちゃごちゃしてるけど、不変条件の穴を少しずつ減らしたり、後続のエンジニアが不変条件を意識して、それを守るようなコードを書きたくなるような「成功の落とし穴」を作ったりするのって、ちゃんと考えるべきなんだ。ドキュメントも役立つけど、コードの構造の方がもっと重要だと俺は思うね。" userName="akavi" createdAt="2025/07/15 18:17:15" color="#45d325">}}




{{<matomeQuote body="うん、俺が「証明親和性」って言ってたのがまさにこれだよ。ちゃんと構造化されたコードベースって、自分が書いてないコードでも簡単に『これって正しい』って確信できるようなものなんだよね。" userName="mprast" createdAt="2025/07/15 18:23:20" color="#45d325">}}




{{<matomeQuote body="君のイライラ、よくわかるよ。可変なグローバル状態がダメなのは、それを読むコードが正しいって証明するために、プログラム全体の動きを知らなきゃいけないからなんだ。もしグローバル変数を不変にしたり、状態変数を関数の引数にしたり、あるいは可変なグローバル状態をヘルパークラスで囲んだりすれば、特定の関数の呼び出し元だけ知ればよくなる。関数の可視性を制限したり、アサーションで呼び出し元の振る舞いをさらに制約したりもできる。これら全部で、読み取り側のコードが正しいって証明しやすくなるんだ。ほとんどのプログラマーは無意識にやってると思うけどね。" userName="msteffen" createdAt="2025/07/15 19:00:37" color="#785bff">}}




{{<matomeQuote body="この方向性は良いんだけど、できることには限りがあるんだよね。一部のコードは自然と関数型になるけど、他のものは本質的に命令型なんだ。たいてい、プログラムのトップレベル（イベントループとか）は命令型で、I/Oとか画面、ストレージみたいな状態を持つ『デバイス』を扱う。呼び出しグラフの『葉』の部分の関数は関数型にできるけど、トップが命令型だと、プログラム全体について推論することはまだ難しいよ。" userName="bluetomcat" createdAt="2025/07/15 19:27:32" color="#45d325">}}




{{<matomeQuote body="そうだね、でも、そういう命令型の部分を全部トップレベルに追い出して、他の全てをクリーンに保てるなら、多くのプログラムの構造よりはるかに大きな改善になるよ。" userName="thfuran" createdAt="2025/07/15 22:44:46" color="#45d325">}}




{{<matomeQuote body="＞foo()、bar()、baz()をユニット境界を越えて呼び出して、それらがグローバル状態を変更し、異なる開発者が書いた場合、この方法で何かを証明するのははるかに難しい。これって、記事のポイントをさらに強くしてると思うな。こういうコードはバグを含みやすく、さらにバグを追加せずにメンテナンスするのが、最初から『証明可能性』を目標に書かれたプログラムよりもはるかに大変なんだ。" userName="jimbokun" createdAt="2025/07/15 20:25:20" color="#ff33a1">}}




{{<matomeQuote body="実際、形式的に証明されたコードを見てみると、その80%は変更の複雑さを扱いやすいものに減らすことなんだ。これは、実際に証明するプロセスを踏まなくても価値のあることだよね。" userName="monocasa" createdAt="2025/07/15 22:00:52" color="#45d325">}}




{{<matomeQuote body="俺、すごく古いチケットでコードベースのめちゃくちゃな部分を整理する作業を終えたばかりなんだ。最初は3つのチケットを直すつもりで入ったんだけど、作業中にさらに6つも見つけちゃって、自分で2つも追加で作ったよ。楽に済んだのか、それとも見落としがあったのか、正直わからないな。今やってる別のプロジェクトも似たような感じだよ。『ねぇ、みんな、大規模なメモリリークがあるの知ってた？』って感じ。" userName="hinkley" createdAt="2025/07/15 20:50:12" color="">}}




{{<matomeQuote body="＞彼らがグローバル状態を変更し、異なる開発者によって書かれている場合。癌が転移しちゃったら、治療計画はもっと攻撃的で、楽しくないものになるよね。多くの場合、患者はまだ救えるけど、それはたくさんの外部要因に左右されるんだ。" userName="hinkley" createdAt="2025/07/15 20:48:45" color="">}}




{{<matomeQuote body="これ読んでて、俺も常に自分のコーディングアプローチを見直して、『正しく』やる方法を何度も学び直してるなって思ったよ。John Carmackみたいな人でも、『ああ、俺は理解した』って感じでいるのかな、それとも彼も『5年前の俺はダメだった、今はもっと『うまく』やってる』って常に感じてるんだろうか。" userName="ericmcer" createdAt="2025/07/16 04:14:28" color="">}}




{{<matomeQuote body="昔のコードを見直して改善案が浮かぶのは成長の証しだよ。成長が止まるとそういう発想も無くなるから気をつけな。最高のプログラマーでも完璧じゃないんだから、常に向上心を持つべきだね。学びを止めないって考えはマジで大事だよ。" userName="saghm" createdAt="2025/07/16 06:16:41" color="#ff5c5c">}}




{{<matomeQuote body="コードベースで「安全な場所」と「危険な場所」をマップ化できるんだよ。どの関数がグローバルな状態を変えるか、変えないか、頭の中で整理できるってことだね。" userName="xg15" createdAt="2025/07/15 18:33:15" color="#38d3d3">}}




{{<matomeQuote body="プログラムを証明ありきで設計する考え方は、1959年のT. J. Dekkerが相互排他問題を解決した時にまで遡るんだ。Edgser DijkstraがEWD1303 (https://www.cs.utexas.edu/~EWD/transcriptions/EWD13xx/EWD130...)でこの話をしていて、彼の後の研究もこの洞察から来てるんだよ。" userName="tristramb" createdAt="2025/07/15 20:30:40" color="#ff5c5c">}}




{{<matomeQuote body="正しい証明を書くのもプログラムの検証もすごく難しいよ。手動でやるなら意味ないと思うな。もし言語やコードベースに合ったイディオマティックなコードを書けば、不変条件や事前事後条件なんて考えなくて済むか、必要性がグッと減るよ。R. PikeとB. W. Kernighanの「The Practice of Programming」って本を読んでみて。彼らのモットーは「シンプルさ、明瞭さ、一般性」で、これは日々の仕事で超役立つよ。ちなみに競技プログラミングもコードを正しく書くテクニックを学ぶのに意外と良いんだよね。" userName="gregorygoc" createdAt="2025/07/15 18:03:26" color="#ff33a1">}}




{{<matomeQuote body="強く反対するよ。筆者は完全な形式証明を求めているわけじゃないと思うな。でも、自分のコードがどんな論理的性質（例えば、どんな不変条件が成り立つべきか）を満たすか理解しようとすれば、コードはうんと分かりやすくなるし、怖さもなくなるはずだよ。" userName="xg15" createdAt="2025/07/15 18:11:45" color="#ff33a1">}}




{{<matomeQuote body="うん、「もっともらしい証明可能性の維持」って呼んでもいいかもね。想像上の証明すらできないようなコードは、もっと良いコードと切り離して考えるべきだね。" userName="Nevermark" createdAt="2025/07/15 18:27:39" color="">}}




{{<matomeQuote body="型も一種の部分的な証明になるんだよね。強力な依存型システム以外では、ほとんどの実行時不変条件の証明まではできないけど、型で証明できる範囲だけでもすごく役立つよ。" userName="Sharlin" createdAt="2025/07/15 18:41:49" color="#38d3d3">}}




{{<matomeQuote body="そうそう、イディオマティックなコードなら、必要な不変条件は自然と備わってるってことだよ。" userName="gregorygoc" createdAt="2025/07/15 19:08:04" color="">}}




{{<matomeQuote body="「The Practice of Programming」は僕も昔買って、今でも関連性が高くて良い本だと思うよ。でも君の主張には同意できないな。君の提案は大事なアドバイスだけど、証明的な考え方をなくすんじゃなくて、むしろ補完するものでしょ。イディオマティックなコードは複雑なアルゴリズムやアーキテクチャの問題を直接解決しないけど、ノイズを減らして本質的な複雑さを際立たせる役には立つよね。" userName="wahern" createdAt="2025/07/16 06:29:40" color="#ff33a1">}}




{{<matomeQuote body="ある程度は補完し合うってのには同意するよ。僕が言いたいのは、良いコードを書けば、頭の中で複雑な論理をこねくり回す必要は最小限に抑えられるべきってこと。心の中でエッジケースとハッピーパスをテストするだけで十分なくらいにね。例えば、最近見た複雑なロジックは、早期リターンを使えばすごくシンプルになったはずなんだ。作者は分かっていても、そのテクニックに慣れてなかったんだろうな。そしたらもっと効率的に考えられたはずだよ。" userName="gregorygoc" createdAt="2025/07/16 10:19:02" color="#45d325">}}




{{<matomeQuote body="みんなが低評価したのは、議論を汚さずに自分で調べられたからだよ。答えはイエスで、両方の単語は「idios」、「own」、「self」、「private」と関係があるんだ。" userName="bmn__" createdAt="2025/07/16 08:03:18" color="#45d325">}}




{{<matomeQuote body="コメントの投票についてコメントするのはやめてね。何の役にも立たないし、読んでてつまんないよ。https://news.ycombinator.com/newsguidelines.html" userName="auggierose" createdAt="2025/07/16 10:24:58" color="#38d3d3">}}




{{<matomeQuote body="うん、僕が考えてたのは、証明じゃなくて「証明のスケッチ」みたいなものだったんだ。" userName="mprast" createdAt="2025/07/15 18:21:04" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="最初の段落を逆にして考えてみてよ。適切な抽象化（つまり、言語やコードベースのidiomaticなコード）を使えば、プログラムの検証は簡単になるんだ。<br>適切に抽象化されたプログラムを手作業で書いてるなら、ループ不変条件とか事前条件・事後条件を考える意味はあんまりないよ。だって、そのレベルの汎用性には存在しないからね。正しい証明は正しいコードから直接導き出されるんだ。" userName="wizzwizz4" createdAt="2025/07/15 18:08:35" color="#38d3d3">}}




{{<matomeQuote body="いや、適切な抽象化だけじゃ僕の議論には不十分なんだ。例えばC言語でidiomaticなループを書く方法が一つあるんだけど、それって構築によって必要な不変条件を引き継ぐんだ。<br>この本を読むことを強く勧めるよ。idiomaticなコードを書く概念について、僕が説明するよりずっと分かりやすく解説してるから。" userName="gregorygoc" createdAt="2025/07/15 19:02:12" color="#38d3d3">}}




{{<matomeQuote body="C言語のidiomaticなループがエッジケースで間違ってるせいで、どれだけバグが見つかってきたかを考えると、それってマジで面白い例だよね。<br>iからj（含む）まで昇順にsigned intをイテレートするループって、どうやってidiomaticに書くの？<br>jがINT_MAXのとき、そのループはどうなる？" userName="chowells" createdAt="2025/07/15 20:04:13" color="#38d3d3">}}




{{<matomeQuote body="頭の中で、あるいは紙にでも、小さい証明をスケッチする人でも、そのケースは見落としちゃうだろうね。C言語で算術演算するとき、普通の算術演算じゃないってことを忘れがちだから！" userName="wk_end" createdAt="2025/07/15 20:30:25" color="#45d325">}}




{{<matomeQuote body="C言語のループはマジで難しいよな。特に終了条件のチェックとインクリメントの順番が厄介だ。`do/while`じゃダメで、結局`break`使うしかない。C言語（や似たような構文の言語）には、この正しい書き方ってのがないんだよな。" userName="chowells" createdAt="2025/07/15 21:16:29" color="#ff5733">}}




{{<matomeQuote body="俺様が偉そうに言うけどさ、`int i = start; do thing_with(i) while (i++ ＜= end);`って書けばいいんじゃね？" userName="wizzwizz4" createdAt="2025/07/16 00:30:46" color="">}}




{{<matomeQuote body="それも考えたけど、「一般的に」って書いたのには理由があるんだよ。単純な`+1`とか`–1`以外じゃ無理だし、ポインタを追ったりする複雑な処理には向かない。余計な副作用も困るし、`break`使うのが一番だね。C言語の構文が悪いんだよな。他の言語だとこんな問題起きないんだけど。" userName="chowells" createdAt="2025/07/16 01:04:53" color="#785bff">}}




{{<matomeQuote body="「一般的に」って言うなら、『Modern Compiler Design』からの汎用的な`for`ループの実装を見てくれよ。`goto`使ってて複雑だけど、あらゆるケースに対応できるぜ。Dick GruneさんのコードをC言語に書き直したんだ。<br>  `// enumerate: print out numbers from “from” to “to”, inclusive, with step size “by”`<br>  `void enumerate(intN_t from, intN_t to, intN_t by) {`<br>      `uintN_t loop_count;`<br>      `intN_t i;`<br>      `if (by ＞ 0) {`<br>          `if (from ＞ to) return;`<br>          `loop_count = (to - from) / by + 1;`<br>      `} else if (by ＜ 0) {`<br>          `if (from ＜ to) return;`<br>          `loop_count = (from - to) / -by + 1;`<br>      `} else /* (by == 0) */ {`<br>          `// Maybe some kind of error`<br>          `return;`<br>      `}`<br>      `for (i = from; ; i += by) {`<br>          `printf(“%d＼n”, i);`<br>          `if (--loop_count == 0) break;`<br>      `}`<br>  `}`<br>慣用的なC言語の`for`ループより複雑だけど、これが汎用解だよ。" userName="trealira" createdAt="2025/07/16 05:22:23" color="#ff33a1">}}




{{<matomeQuote body="あの`i++ ＜= end`だと、`i`が最後のループで`end`より1つ多くなるんじゃない？`++i ＜= end`か`i++ ＜ end`が良いと思うんだけどな。終了条件に`＜=`を使うのは、だいたい間違いが多いから注意が必要だぜ。" userName="Izkata" createdAt="2025/07/16 14:25:53" color="#45d325">}}




{{<matomeQuote body="やっぱ`i++ != end`が良いと思ったけど、`INT_MAX`を超えるsigned intの未定義動作（UB）に気づいたわ。C言語の専門家に聞いたら、インクリメントでUBが出ちゃうってさ。だから更新と条件チェックは完全に分けるべきだな。" userName="chowells" createdAt="2025/07/16 15:46:01" color="#ff5733">}}




{{<matomeQuote body="うん、符号付き整数のオーバーフローを避けるなら、こんな感じに書くしかないだろ。<br>  `assert(i ＜= j);`<br>  `for (;;) {`<br>      `do_something_with(i);`<br>      `if (i == j)`<br>          `break;`<br>      `i++;`<br>  `}`" userName="trealira" createdAt="2025/07/16 17:15:51" color="#45d325">}}




{{<matomeQuote body="コードがきれいだと正しくなるってのは因果関係が逆だろ。問題を丁寧に考えれば、結果としてコードがきれいになるんだよ。きれいなコードが正しいって信じるのは「Cargo cult programming」だよ。もちろん、きれいなコードは大事だし、コードレビューと合わせれば正確性も上がるだろうけどさ。形は機能に従うんだ、逆じゃない。" userName="maxbond" createdAt="2025/07/16 03:40:49" color="#785bff">}}




{{<matomeQuote body="「証明」ってのは、何か正しいってことを論証するための基本的な考え方だろ。細かいミスを避けるためじゃなくて、方向性が正しいことを示すのが目的だよ。" userName="monkeyelite" createdAt="2025/07/15 22:04:23" color="">}}




{{<matomeQuote body="競技プログラミングのテクニックについて、もっと詳しく教えてくれない？マジで興味あるんだけど！" userName="pipes" createdAt="2025/07/15 18:14:55" color="">}}




{{<matomeQuote body="競技プログラミングでいつも論理はわかるのに、バグが多すぎて時間内に終われない壁にぶち当たってるんだよね。本当にこれってあるあるだわ。" userName="kevinventullo" createdAt="2025/07/16 00:19:43" color="#38d3d3">}}




{{<matomeQuote body="プログラムを正しく書くこと以上に大事なことはないよ。もし正しいプログラムが欲しいなら、正しく書くしかないんだから。当然だよね。" userName="mathgradthrow" createdAt="2025/07/15 19:29:57" color="">}}




{{<matomeQuote body="80年代にCarnegie Mellon大学の学部生だった頃、最初のプログラミングの授業で、記事にあるようなこと全部を教わったよ。再帰と帰納の同等性を知ってから、再帰アルゴリズムを作る時の「イライラする試行錯誤」がマジでなくなったのを覚えてるね。" userName="wrs" createdAt="2025/07/15 19:32:43" color="#ff5c5c">}}




{{<matomeQuote body="そのコース、去年取ったんだけどさ、関数型プログラミングを学んでたら、マジで良さが分かってきたんだよね。" userName="TheShermanTank" createdAt="2025/07/15 20:47:29" color="">}}




{{<matomeQuote body="プロパティのリストに、mutabilityとimmutabilityも加えるべきだと思うな。状態をなるべくimmutableにしておくと、multithreadingでの問題が減るだけじゃなく、プログラムの取りうる状態を把握する時の頭痛の種もかなり減るからね。" userName="xg15" createdAt="2025/07/15 18:14:57" color="#785bff">}}




{{<matomeQuote body="記事にはちゃんとそれらも含まれてるよ。" userName="jimbokun" createdAt="2025/07/15 20:28:37" color="">}}




{{<matomeQuote body="バグ修正のpost-mortemsを読むのがマジで好きでさ。Raymond Chenがよくやってるやつね。最近あったバグはC++でgarbage-collectedなオブジェクトを使うthread-poolでのcrash。最初はconcurrencyの問題だと思ってたけど、結局はlistenerがオブジェクトをちゃんとmarkしてなくて、GCで消されちゃったのが原因だったんだ。ChatGPTはconcurrencyの問題を推してたけど、違ったんだよね。" userName="GMoromisato" createdAt="2025/07/15 18:49:50" color="#ff5733">}}




{{<matomeQuote body="1991年頃作ったゲームで、時々crashするバグに悩まされたんだ。再現性が低くて困ったから、ゲームの入力とロジックを全部deterministicに書き直してみたの。そしたら、player inputを記録してreplayできるようになって、ついにバグを再現！結局、dangling pointerのせいで、二発目のshotがメモリを壊してたんだよね。deterministicエンジンは当時珍しかったけど、今じゃ普通だよね。" userName="TacticalCoder" createdAt="2025/07/15 19:13:44" color="#ff33a1">}}




{{<matomeQuote body="入力全部保存するってのは極端だけど、結果的にはすごい効果あったんだね。いい話だわ。" userName="GMoromisato" createdAt="2025/07/17 21:32:42" color="">}}




{{<matomeQuote body="頭の中で小さな証明を書くべきって、当たり前だよね？コード書くならそうすべきだし、コードの各部分が何をするのか、簡単な目標を持つべきなんだからさ。" userName="agnishom" createdAt="2025/07/16 06:31:55" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
