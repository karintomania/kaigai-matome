+++
date = '2025-10-04T00:00:00'
months = '2025/10'
draft = false
title = 'LLMの推論をZ3定理証明で思考の証明！AIが論理的に推論する新時代へ？'
tags = ["LLM", "AI", "推論", "定理証明", "Z3"]
featureimage = 'thumbnails/green2.jpg'
+++

> LLMの推論をZ3定理証明で思考の証明！AIが論理的に推論する新時代へ？

引用元：[https://news.ycombinator.com/item?id=45475529](https://news.ycombinator.com/item?id=45475529)




{{<matomeQuote body="https://arxiv.org/abs/2409.17270" userName="barthelomew" createdAt="2025/10/04 18:34:23" color="">}}




{{<matomeQuote body="Gemini 2.5 Proとの体験談なんだけど、CASシステムで連立方程式を解いてたら、GeminiがPythonのsympyで解をくれたんだ。LLMがこんなことできるとは思わなかったから驚いたよ。あいまいなLLMと厳密なツールを組み合わせると、すごい効果があるってことだね。" userName="chrchr" createdAt="2025/10/04 20:57:22" color="#38d3d3">}}




{{<matomeQuote body="人間って複雑な計算は苦手だけど、コンピューターは得意だよね。たくさんの計算を使ってテキストを予測するプログラム（LLMのことかな？）は、テキスト予測はそこそこだけど計算は苦手。でも、そのプログラムが計算が得意なプログラムの作り方を予測できるようになるんだ。" userName="TrainedMonkey" createdAt="2025/10/04 21:06:08" color="#ff33a1">}}




{{<matomeQuote body="非決定論的な計算を少しずつやって、時々決定論的な計算でしっかりチェックすれば、可能性は無限大だね。そうなったらAIは自分で進化を始めて、人間はもういらなくなるって話。" userName="emporas" createdAt="2025/10/05 02:14:19" color="#ff5c5c">}}




{{<matomeQuote body="俺たちは意識してないけど、常にたくさんの計算をしてるよ。例えば、腕や指を動かすのに必要な逆運動学みたいなね。" userName="29athrowaway" createdAt="2025/10/05 00:04:06" color="">}}




{{<matomeQuote body="たぶん、テキスト生成プログラムが作った数値計算プログラムが、十分な努力でテキスト生成も上手くなって、また別の数値計算コンピューターを作って…ってループするのかな？" userName="jonplackett" createdAt="2025/10/04 21:11:19" color="#45d325">}}




{{<matomeQuote body="「AIが自分で進化して人間はいらなくなる」って言うけど、発見や有効性のフィードバックのために環境は必要だろ。数学やコードは簡単でも、自動運転車はそうでもないし、ビジネスアイデアはどうやってお金を使わずに試すんだ？分野によってテストの難易度は全然違うよ。" userName="visarga" createdAt="2025/10/05 04:40:21" color="#785bff">}}




{{<matomeQuote body="俺は、逆運動学や運動学を「数値計算」で解いてるわけじゃないと思うんだ。俺たちの神経筋システムはアナログで、今のコンピューターが計算する意味での「数値計算」とは違うんだよね。" userName="pstoll" createdAt="2025/10/05 00:11:09" color="">}}




{{<matomeQuote body="映画「The Thirteenth Floor」を観てみて。" userName="psadri" createdAt="2025/10/04 23:58:51" color="">}}




{{<matomeQuote body="これ、Tomatometerは28%だけど、IMDbだと10点中7点ってちょっと珍しいね。親コメントとの関連性以外で、この映画は面白いと思う？（一般的なHNのコメンターが見るとして）" userName="Barbing" createdAt="2025/10/05 01:36:14" color="">}}




{{<matomeQuote body="チェックは必ずしも決定論的じゃなくていいんだよ。例えば、ランダム化クイックソートなんかはすごくうまく機能するからね。" userName="eru" createdAt="2025/10/05 03:17:05" color="">}}




{{<matomeQuote body="心理学者として、全くその通り！AIはただの数値計算じゃないんだよ。人間や動物の脳はアナログ計算が主役さ。ITの人たちは、人間や動物の知能を全然分かってないから、AIが人間レベルになるなんて馬鹿げたこと言うんだよ。所詮、賢いパペットはパペットにすぎない。僕らはもっとずっと複雑なんだから。" userName="tomcloyd" createdAt="2025/10/05 00:50:58" color="#38d3d3">}}




{{<matomeQuote body="LLMに数学の計算をさせるのは、CAS（Computer Algebra System）を使えばいいのに、バスパスがあるからってバスで引っ越しするようなもんじゃない？わざわざ遠回りしてるように見えるな。" userName="DrewADesign" createdAt="2025/10/04 22:55:07" color="">}}




{{<matomeQuote body="全く同意できないな。要素のソートなんてAIの狭い応用で、チェスみたいなもんだよ。ロボットがトマトを掴む例みたいに、予測不可能な状況では決定論的な計算が絶対必要だろ？「$tomato_distance + $tomato_size ＜ $arm_length」って制約を満たさないなら、「move_closer();」って明確な指示が要るんだよ。<br>論文では「LLM-Thoughts」をDSLコードとして解析し、Z3定理証明器で検証してるって書いてるけどね。" userName="emporas" createdAt="2025/10/05 04:08:08" color="#38d3d3">}}




{{<matomeQuote body="僕らの脳ってアナログなの？それともデジタル？シナプスは発火するかしないか、0か1みたいにデジタルに近いと思うんだけど。トランジスタを使った論理回路も、しきい値を超えたら状態が変わる、って感じだしね。" userName="galaxyLogic" createdAt="2025/10/05 04:45:42" color="">}}




{{<matomeQuote body="それってどうやって動いたの？GeminiがSymPyを自分のマシンで実行したの？それともSymPyへのアクセスがGeminiに標準で組み込まれてて、通常のチャットで使える感じ？" userName="jansan" createdAt="2025/10/05 07:46:06" color="#785bff">}}




{{<matomeQuote body="もっと良い比喩を言うなら、引っ越し用にトラックを借りようと頑張ったけど、全然うまくいかなくて、結局引っ越し業者を雇う羽目になった、って感じじゃないかな。" userName="afiori" createdAt="2025/10/05 09:40:43" color="">}}




{{<matomeQuote body="シミュレーションが鍵だよ。経済学に詳しいモデルがあれば、結果を独立して評価できるし、自己強化的な学習環境にもなるんだ。例えば、MuZero（https://en.wikipedia.org/wiki/MuZero）みたいなシステムがそうだね。" userName="jaggederest" createdAt="2025/10/05 05:00:20" color="#38d3d3">}}




{{<matomeQuote body="ニューロンは、逆運動学みたいな数値をガリガリ計算してるわけじゃないんだよ。" userName="HumanOstrich" createdAt="2025/10/05 00:52:06" color="">}}




{{<matomeQuote body="この手の思考、大好き。ありがとう。" userName="patcon" createdAt="2025/10/04 22:54:35" color="">}}




{{<matomeQuote body="もしMatrix、Memento、Truman Show、Black Mirror（San Junipero、Bandersnatch）、Inception、Interstellar、12 Monkeysとかが好きなら、これも気に入るかもね。テーマは必ずしも同じじゃないけど、私には雰囲気が近いんだ。若い頃にすごく楽しんだよ。" userName="bonoboTP" createdAt="2025/10/05 12:36:07" color="">}}




{{<matomeQuote body="評論家ウケは良くなかったけど、視聴者スコアは多くのプラットフォームで60～70％だね。Matrixの直後に出たから、テーマは似てるけどMatrixには全然及ばない。評論家評価が低かったのは、公開時期のせいだと思うな。でも、良い映画だよ。" userName="c-hendricks" createdAt="2025/10/05 02:01:08" color="#ff5c5c">}}




{{<matomeQuote body="＞有限個の要素を順序付けるのはAIのとても狭い応用だ、とあるけど、ごめん、AIで数字をソートすべきだなんて言ってないよ。<br>＞非決定論的な計算を少しずつ行い、時々決定論的な計算で徹底的にチェックすれば、可能性は無限大だ、ってことに対して返信してるんだ。<br>チェックが必ずしも決定論的である必要はないよ。実際、非決定論的である方が良い場合も多い。https://fsharpforfunandprofit.com/series/property-based-test...も見てみて。<br>‘決定論的計算は、より速く、安く、安全だ’っていう主張が理解できないな。全然そんなことないよ。実際、多くの問題で最速かつ最もシンプルな既知の解法は非決定論的だし、例えば暗号技術では、セキュリティを確保するために非決定論が必要なんだ。" userName="eru" createdAt="2025/10/05 04:48:34" color="#ff5c5c">}}




{{<matomeQuote body="問題はAIがどこに進むべきか？どの方向へ？公理のセットから導き出せる定理は無限にあるんだ。無限にね。AIは全部証明できない。誰かが何をするべきかAIに教える必要があり、それは私たちだよ。" userName="galaxyLogic" createdAt="2025/10/05 04:40:56" color="#ff33a1">}}




{{<matomeQuote body="いや、シナプスの反応はバイナリじゃないよ。" userName="fwip" createdAt="2025/10/05 19:18:07" color="">}}




{{<matomeQuote body="実際の計算というより、記憶に頼ってるって言う？自転車に乗るときなんか、確かにそう感じるけど。" userName="Flere-Imsaho" createdAt="2025/10/05 21:16:56" color="">}}




{{<matomeQuote body="親コメントは記号操作について話してるんだよ、ただの数字計算じゃなくてね。それはまさに人間が得意で、機械が苦手とされることだ。" userName="idiotsecant" createdAt="2025/10/04 23:06:03" color="">}}




{{<matomeQuote body="LLMとsympyを数学に使うのがすごく好きだよ。LLMにsympyプログラムを書いてもらって、記号操作が正しく行われたって信頼できるんだ。コードは人間とLLMの両方で反復的に編集・改善できる便利な成果物で、gitの履歴とかも使える。テストやアサーションを実行してパスすることで、数学が正しいままであるという自信を築き、維持するのに役立つんだ。ヘルパー関数を使ってsympyコードからLaTeXなどに簡単にレンダリングしてるよ。この量子消しゴム実験の多くの数学は、この方法で行われたんだ。https://github.com/paul-gauthier/entangled-pair-quantum-eras..." userName="anotherpaulg" createdAt="2025/10/04 21:11:06" color="#785bff">}}




{{<matomeQuote body="LLMと形式検証ツールの組み合わせはかなり面白いね。コンプライアンス自動化のためにこのことを考えてるんだ。多くの規制要件は理論的には形式的な制約として表現できるはず。でもパフォーマンスが気になるな。Z3は複雑な問題だとすごく遅くなることがあって、それにLLM呼び出しを連鎖させると、インタラクティブな利用ケースではレイテンシが厳しくなるかもね。" userName="selinkocalar" createdAt="2025/10/08 00:13:13" color="#38d3d3">}}




{{<matomeQuote body="初期のLLMは計画立案と実行はかなり得意だよね。多分、主な欠点はコンテキストが広がるにつれて（つまりタスクが複雑になるにつれて）混乱することかな。" userName="fennecfoxy" createdAt="2025/10/06 16:52:02" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="シミュレーション環境では訓練中のアラインメントの可能性が示唆されるけど、リアルタイムの現実世界データストリームの方が優れてるね。でも大事な点は変わらないよ。システム思考で規定された抽象化のランドスケープを探求するのに環境は必要ないんだ。人間とのインターフェースに環境があればいいだけ。" userName="enknee1" createdAt="2025/10/05 14:26:57" color="#45d325">}}




{{<matomeQuote body="LLMって統計的言語モデルであって（当たり前だけど）推論器じゃないんだよね。でも論理プログラム、特にPrologソースの生成は、信じられないくらいうまくいくのを見つけたんだ [1]。Prologが記号的自然言語処理のために導入されたから、訓練データに翻訳例が豊富なのかもしれないね。Z3のLispっぽいSMTLib構文の代わりに、Datalog構文 [2] をチェックしてみる価値はあるかも。<br>[1]: https://quantumprolog.sgml.net/llm-demo/part1.html<br>[2]: https://microsoft.github.io/z3guide/docs/fixedpoints/syntax" userName="tannhaeuser" createdAt="2025/10/04 20:51:44" color="#ff5c5c">}}




{{<matomeQuote body="うん！Z3のDatalog構文はかなりすごいね！僕らの文法に関する論文では、ソルバーとの相互運用性が一番高かったからSMT [1] を使ったけど、僕らの技術はPROLOGでも動くんだ。NeurIPSの査読者の要望でテストしたんだよね。これはDatalog [2] でも動くはずだと思ってる。<br>[1] https://arxiv.org/abs/2505.20047<br>[2] https://github.com/antlr/grammars-v4/blob/master/datalog/dat..." userName="barthelomew" createdAt="2025/10/04 21:16:44" color="#38d3d3">}}




{{<matomeQuote body="ニューラルシンボリックシステムは、ここで何度も言われてるように、非常に高い確率で未来だね。" userName="larodi" createdAt="2025/10/05 06:55:12" color="">}}




{{<matomeQuote body="WolframAlphaは構文が自然じゃないから、ほとんど使えないんだ。WolframAlphaは良いAIで、決して嘘をつかないよね。電卓も良いAIで、めったに嘘をつかない（浮動小数点演算の丸め誤差のせいで）。<br>そうそう、Wikipediaによると電卓もAI技術なんだって。コンピュータはかつて人間だったし、今は数字や関数・変数・方程式で数学をする知的な特性を示すツールだからね。LLMを使って電卓やWolframAlphaのような記号AIシステムにクエリするのが、テキストの書き換え以外で唯一実行可能なLLMの使い道みたいだね。LLMが自力で何かを知ってるって考えるのは、大きな誤りだよ。" userName="a3w" createdAt="2025/10/05 16:43:28" color="#45d325">}}




{{<matomeQuote body="これ、面白いアプローチだね。僕のチームは、LLMを使ってビジネスオペレーションのポリシーをLEANでエンコードする、とても似たようなプロトタイプを作ってるんだ。社内のGoogle DocsやWikiページといった知識ベースをまずLLMでLEANに変換するんだ。そして一貫性を検証するためにソルバーを動かす。Wikiページが変更されたら、このプロセスを再度実行するんだけど、これは実質的にプロセスに対するリンターだね。まだプロトタイピング段階を超えてないとは言えないけど、LEANへの変換は少なくとも一部のエンジニアが目を通す必要があるからね。でも、特に厳格な法的・財務的コンプライアンスが求められる分野では、本当に有望なアプローチだと思うよ。" userName="LASR" createdAt="2025/10/04 19:24:02" color="#ff5733">}}




{{<matomeQuote body="自動形式化のギャップは、確かに埋めるのがかなり難しいよね。僕らはNeurIPS 2025の論文で、明確に定義された文法における自動形式化の不確実性定量化を研究したんだ [1]。もしもっと詳しく話したり議論したりしたくなったら、いつでも喜んでチャットするよ！<br>[1] https://arxiv.org/abs/2505.20047" userName="barthelomew" createdAt="2025/10/04 19:39:22" color="#38d3d3">}}




{{<matomeQuote body="そういうポリシーの例を共有してもらえる？現実世界でLEANに適用できるほど十分に定義されたものって、なかなか思いつかなくて困ってるんだ。" userName="viraptor" createdAt="2025/10/04 19:40:54" color="">}}




{{<matomeQuote body="僕みたいにLEANって何？って好奇心がある人のために、ここに説明があるよ。Lean Theorem ProverはMicrosoftのプロジェクトなんだ。ここ [1] で見つけられるよ！<br>[1] https://www.microsoft.com/en-us/research/project/lean/" userName="chandureddyvari" createdAt="2025/10/05 05:14:28" color="#ff5c5c">}}




{{<matomeQuote body="Leanは13年間開発されてて、Microsoft ResearchやAWSのLeo de Mouraが関わったけど、Microsoft単独じゃなくオープンソースプロジェクトだよ。<br>詳しくはこちら: https://lean-lang.org/" userName="ashandoak" createdAt="2025/10/06 14:23:38" color="#785bff">}}




{{<matomeQuote body="超クールだね！矛盾するガイダンスを体系的に特定するのにめちゃくちゃ役立ちそうだよ。" userName="pbronez" createdAt="2025/10/04 23:21:30" color="">}}




{{<matomeQuote body="これ、すごく面白い研究分野だよね。僕も数年前に似たことをやったよ。論理や確率的論理推論エンジンを使って、結論が前提から導かれるか確認したり、エージェントで知識を形式化したりしたんだ。銀の弾丸じゃないけど、ある程度の正確性は保証できるよ。<br>シンボルやエージェントを審査員にするのは有望だと思うな。例えばこれ: https://arxiv.org/abs/2410.10934" userName="nextos" createdAt="2025/10/04 19:35:29" color="#38d3d3">}}




{{<matomeQuote body="あなたの論文、読んだよ！めちゃくちゃクールだね！僕もこの夏、AWS ARChecksで似たような自動形式化のための深い研究エージェントを作ってたんだ。<br>その仕事はまだ公開されてないけど、この製品で試せるよ！[1] https://aws.amazon.com/blogs/aws/minimize-ai-hallucinations-..." userName="barthelomew" createdAt="2025/10/04 19:42:42" color="#785bff">}}




{{<matomeQuote body="エージェントやLLMを審査員にするのは偏りがあるから、最初はいいけど、最終的には性能をキャップしちゃうよ。<br>もっと能力を上げたいなら、専門家の人間か、確定的なオラクルに移行すべきだね。" userName="CuriouslyC" createdAt="2025/10/04 19:43:42" color="#38d3d3">}}




{{<matomeQuote body="LLMはアブダクションを示すけど、これは”判断”とは違う。判断ができるのは人間だけだよ。でもね、人間の判断が必要だと思われてるタスクの多くは、実はアブダクションで人間並みにできるんだ。<br>LLMをうまく使えば、人間の判断が必要なタスクを減らして、負担を軽くできる。たくさんのルーチンワークを自動化したり、複雑なタスクで人間の効率を劇的に上げたりできるんだよ。" userName="fnordpiglet" createdAt="2025/10/05 05:38:37" color="#785bff">}}




{{<matomeQuote body="なんでそう決めつけられるの？例えば、審査するLLMと審査されるLLMが別なら、バイアスも違ってくるんじゃないかな？<br>それに、LLMの推論能力が上がっていけば、人間の審査員に近づくと思わない？" userName="jebarker" createdAt="2025/10/04 20:19:46" color="#ff5733">}}




{{<matomeQuote body="LLMには位置とか応答長、あいまいな言葉のバイアスがあるんだ。これは論文でも厳密に示されてるよ。<br>目標の限界に近づくと、優秀な回答同士の違いが見分けられなくなっちゃうんだよね。<br>測定がノイズだらけだったら、何を変えてもその影響を正確に判断できない、ってこと。" userName="CuriouslyC" createdAt="2025/10/04 20:36:52" color="#38d3d3">}}




{{<matomeQuote body="確かに、人間の審査員って平均的にダメだよね。LLMの審査員なら、特定の種類の問題を探すようにプロンプトで指示できるし、複数のLLM審査員を組み合わせて、アウトプットを細かくチェックできるんだ。（プロンプトを工夫して、いろんなバイアスを意図的に組み込む感じだね。）" userName="sdenton4" createdAt="2025/10/04 20:37:52" color="#45d325">}}




{{<matomeQuote body="LLMは生成プロセスに論理的な制約がないんだ。学習するのは確率的な制約だけだよ。<br>だから、後から論理検証しても、「LLMの推論が正しいことを保証してる」わけじゃないんだ。（僕も1年前に試したよ）。<br>それは、LLMの出力がたまたま正しい論理パターンに一致するかを分類してるだけで、LLMの出力自体は常に間違ってる可能性もあるんだよ。定理証明器は、その場合ただの分類器として機能するだけで、何も保証してくれない。" userName="nakamoto_damacy" createdAt="2025/10/04 19:45:50" color="#45d325">}}




{{<matomeQuote body="うん、これは本物の問題で、俺たちの次の論文で”autoformalization gap”って呼んでるやつだよ。<br>（https://arxiv.org/abs/2505.20047）<br>一部のLLMはテキストとSMT間で一貫性があるけど、そうじゃないのもいるんだ（表1、図14,15）。<br>選択的検証で不確実性を定量化すれば”リスク”を減らせるよ。例えば、表4の”Area Under the Risk Coverage Curve”で示してるみたいにね。" userName="barthelomew" createdAt="2025/10/04 20:08:21" color="#785bff">}}




{{<matomeQuote body="これが”本物の問題”って分かってるなら、どう解決したの？<br>あんたの次の論文の要旨をちらっと見ても答えが書いてないじゃん。<br>ハッキリ言うけど、これは根本的にあんたが達成しようとしてることをぶち壊す大きな制約だよ。<br>LLMが生成したテキストは、元々真実とか事実とは関係ないものなのに、それを検証器に通すって、空気ばっかり検証してるみたいだ。<br>ホメオパシーの研究と同じだよ。LLMも、事実性に基づいたテキストを生成できる方法を見つけないと、検証しても意味がないよ。" userName="YeGoblynQueenne" createdAt="2025/10/05 10:24:48" color="#ff5c5c">}}




{{<matomeQuote body="確率的制約ってそこら中にあるんだよ。<br>サイン関数は直角三角形の対辺と斜辺の比率だから、当然サインは常に正だ、って習うよね。<br>でも、単位円上の点の座標として定義を変えられるくらい、思考は柔軟であるべきなんだ。<br>だから、君の知識—記号的なものも—確率的になり得るんだよ。" userName="avmich" createdAt="2025/10/04 20:28:04" color="">}}




{{<matomeQuote body="君は正しい方向で考えてるけど、形式化しないとすぐに袋小路だよ。<br>微分幾何学を確率の上に、その上に圏論的論理を重ねて、各層が下位層を制約し、全てがまとまれば、何かを成し遂げられるさ...。<br>この分野では既に研究があるよ。<br>最近Forbesに掲載された「Why LLMs are failing」っていう記事で俺がインタビューされたんだ。そこからL. Thorne McCarty教授の実際の技術的仕事にもリンクしてるよ。<br>https://www.forbes.com/sites/hessiejones/2025/09/30/llms-are..." userName="nakamoto_damacy" createdAt="2025/10/04 20:35:27" color="#ff33a1">}}




{{<matomeQuote body="俺、25日前にredditでこの手法について1年間開発したこと投稿したんだ。<br>このスレッドの別のコメントで、警鐘を鳴らしてるんだけど、LLMじゃ解決できない問題があるってことが作者の返答から漏れてるんだよ。<br>LLMは生成プロセスに論理的制約が必要だけど、それがないからね。<br>だから、それから別のことに方向転換したんだ（このスレッドの別のコメントでも言ってるけど）。<br>https://www.reddit.com/r/healthIT/comments/1n81e8g/comment/n..." userName="nakamoto_damacy" createdAt="2025/10/05 00:44:00" color="#785bff">}}




{{<matomeQuote body="つまり、LLMを使って推論を構造化されたJSON形式のDSLとして下書きして、それを確定的に一階述語論理に変換し、Z3定理証明器で検証するってのが核となるアイデアなのね。<br>単なる説得力のあるChain-of-Thoughtじゃなくて、最終的な答えが証明可能に導かれる（または反例が得られる）ってところが面白いね。" userName="sytse" createdAt="2025/10/04 22:30:41" color="#ff5733">}}




{{<matomeQuote body="これって俺の読み方で合ってる？<br>統計的なLLMの出力を形式論理モデルに通すってこと？<br>それって”ごみを入れたらごみが出る”ってやつじゃないの？" userName="0xWTF" createdAt="2025/10/04 21:08:12" color="">}}




{{<matomeQuote body="形式論理は便利なフィルターとして機能するんだ。<br>言い換えれば、”ごみを入れたら、フィルターに通されたごみが出る”ってこと。<br>進化ってのは、完全にランダムな”ごみ”みたいな突然変異があって、それが環境によって”フィルターにかけられる”ことで機能するのを思い出してみて。" userName="avmich" createdAt="2025/10/04 22:48:36" color="#45d325">}}




{{<matomeQuote body="それは主観的だよ。<br>過去数千年で俺たちが発明したものは全部ごみだったって主張する人もいるだろうね。<br>洞窟での生活の方がずっと楽だったろうし、たとえ短命だったとしてもさ。" userName="varispeed" createdAt="2025/10/04 21:57:21" color="">}}




{{<matomeQuote body="「全部ダメだ」って思い込みすぎだよ。実際、かなり使える場面もあるんだから。" userName="baq" createdAt="2025/10/05 05:31:03" color="">}}




{{<matomeQuote body="リポジトリには詳細が少ないけど、論文の成果物なら分かる。これはLLMにZ3プログラムを生成させて、質問を論理的に表現するAPIみたいだね。人間がSMTルールを手動で確認できるのか？LLMが不健全な事実やルールを追加しないか？<br>論文ではロジックベンチマークで51%もの誤検出率を報告してるのが衝撃的だ。評価が薄いのが残念だね。" userName="ivanbakel" createdAt="2025/10/04 19:30:46" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、この論文は去年のGPT-4oで書かれたもので、最新モデルではかなり改善されてるよ。<br>例えば、https://arxiv.org/pdf/2505.20047 のTab 1を見てみて。o3-miniはSMTでもテキスト推論をよく反映してる。<br>AWS Automated Reasoning Checksみたいな商用製品だと、ポリシー文書からモデルを作り、LLMのQ＼Aがポリシーに準拠してるかをソルバーで検証するんだ。これで99%+の健全性保証が提供されるらしい。<br>https://aws.amazon.com/blogs/aws/minimize-ai-hallucinations-..." userName="barthelomew" createdAt="2025/10/04 20:02:29" color="#45d325">}}




{{<matomeQuote body="「99%の確率で」って話だけど…これって曖昧なサンプル空間だよね。結果の健全性は、どんな質問をするかによるのは明らか。一体どんな質問のセットに対して99%保証が成り立つんだ？" userName="bhk" createdAt="2025/10/05 03:54:21" color="#ff5c5c">}}




{{<matomeQuote body="誰がルールを作るんだ？" userName="cerved" createdAt="2025/10/04 23:14:21" color="">}}




{{<matomeQuote body="面白いアプローチだけど、まだやることは多いみたいだね。<br>「アリスには60人の兄妹と212人の姉妹がいる。アリスの兄には何人の姉妹がいる？」という質問で試したけど、生成されたプログラムはあまり役に立たなかったよ。" userName="jadelcastillo" createdAt="2025/10/07 09:25:48" color="#ff5733">}}




{{<matomeQuote body="面白いね。このアプローチでツールコーリングを実装できないかな？LLMが形式仕様でツールを呼び出し、結果を受け取って、コードエージェントがコンパイラを実行してエラーから自己修正するみたいにさ。" userName="derekcheng08" createdAt="2025/10/05 06:32:35" color="#45d325">}}




{{<matomeQuote body="学術論文「Proof of thought: Neurosymbolic program synthesis allows robust and interpretable reasoning」（2024）を見てみて。関連リンクはこちら: https://arxiv.org/abs/2409.17270 と https://scholar.google.com/scholar?hl=en&as_sdt=0%2C43&q=%22..." userName="westurner" createdAt="2025/10/05 00:42:52" color="#45d325">}}




{{<matomeQuote body="これ、すごく面白い！ただ考えを口にするだけでなく、検証可能な日記をつけるAIって最高だね。まるで暗号公証人が脳に住んでいる哲学者みたい。素晴らしい仕事だよ！" userName="renshijian" createdAt="2025/10/05 01:40:37" color="#38d3d3">}}




{{<matomeQuote body="クールな研究だね！リポジトリでDSLがどうなってるか見に行ったんだけど、分かりやすい例が見つけにくかったんだ。READMEにスニペットを追加してくれると嬉しいな。" userName="tonerow" createdAt="2025/10/04 20:33:31" color="#ff5733">}}




{{<matomeQuote body="興味持ってくれてありがとう！それやるよ。とりあえず、11ページ以降を見てみて。いろんな状況を説明してるから！(https://arxiv.org/pdf/2409.17270)" userName="barthelomew" createdAt="2025/10/04 20:47:39" color="#ff5733">}}




{{<matomeQuote body="gitリポジトリにDSLの紹介があれば、もっと分かりやすくなるっていうコメントに賛成！" userName="pstoll" createdAt="2025/10/05 00:18:48" color="">}}




{{<matomeQuote body="これこそ、次のAI冬が来る前にLLMが実現してくれると期待してることなんだよな。" userName="Yoric" createdAt="2025/10/04 21:22:21" color="">}}




{{<matomeQuote body="LLMを研究で使う人が使いこなせてないのに驚く。このベンチマークはOpenAI APIで生のテキストをJSONにパースしてるけど、APIは昔から構造化出力をサポートしてる。これなら推論でスキーマ準拠の出力が保証され、幻覚も防げる。主要プロバイダーは皆この機能に対応し、オープンモデルなら任意のスキーマに沿った推論エンジンも簡単に作れる。幻覚の問題は今や簡単に解決できるのに、困惑するよ。" userName="sigmoid10" createdAt="2025/10/04 19:24:08" color="#785bff">}}




{{<matomeQuote body="やあ！俺は去年の夏、Microsoft Researchでのインターン中に、実際のインタープリタのほとんどを設計・作成したよ。<br>DSLの設計を始めた時はGPT-4の制約付きデコーディングはまだ使えなかったし、この特定のDSLを制約するための正規表現を作るのはかなり難しいんだ。<br>SMT（https://arxiv.org/abs/2505.20047）みたいに言語の文法がもっと明確に定義されていれば、オープンソースのLLMでもできるんだけどね。" userName="barthelomew" createdAt="2025/10/04 19:46:17" color="#38d3d3">}}




{{<matomeQuote body="何を言ってるんだ？OpenAIは2023年からAPIで構造化JSON出力をサポートしてるぞ。現在の構造化出力APIは2024年の夏に導入されたけど、それは主に使いやすさの改善で、裏側ではJSONが使われてるんだ。" userName="sigmoid10" createdAt="2025/10/04 19:56:40" color="">}}




{{<matomeQuote body="2023年のJSONモードは君の言う通り。でも俺たちのプロジェクトは、ただ有効なJSONオブジェクトだけでなく、もっと複雑なDSL文法を強制する必要があったんだ（詳細は付録を見て）。新しい構造化出力APIは大幅な改善だけど、当時のツールは特定の制約には合わなかったのさ。" userName="barthelomew" createdAt="2025/10/04 20:28:01" color="#ff33a1">}}




{{<matomeQuote body="’何を言ってるんだ？’みたいな攻撃的な表現はHNコメントから削除してほしいな。サイトのガイドライン（https://news.ycombinator.com/newsguidelines.html）に載ってるんだ。好奇心旺盛な会話がしたいんだよ。その部分がなければ君のコメントは良かったのにね。" userName="dang" createdAt="2025/10/04 20:02:18" color="">}}




{{<matomeQuote body="嫌味じゃなくて、本当に問題の理解を間違えてるのかどうか、混乱してるんだ。だって解決策はすごく明白に見えるからね。" userName="sigmoid10" createdAt="2025/10/04 20:05:26" color="">}}




{{<matomeQuote body="信じるよ！でもネットの返信が’何を言ってるんだ？’から始まると、多くの読者にはそう受け取られがちだよ。それが意図じゃないなら、別の表現を使うのが一番だね。" userName="dang" createdAt="2025/10/04 21:06:46" color="">}}




{{<matomeQuote body="失礼だけどさ、彼らは皮肉じゃないって言ってるじゃん。なんでそんなに発言をコントロールしようとするの？もし彼のトーンが気に入らなきゃ、こっちだってダウンボートできるし、それで自己調整できるでしょ。" userName="vasco" createdAt="2025/10/05 06:54:24" color="">}}




{{<matomeQuote body="彼らは良い意図だったって言ってたけど、意図は明確にしないと伝わらないよ[1]。モデレーションで重要なのは、意図じゃなくてシステム全体への影響なんだ[2]。<br>なんでHNにモデレーターが必要かって話だよね。残念だけど、コミュニティとソフトウェアだけだと上手くいかなくなるから、人間（モデレーター）が必要なんだ[3]。個々のやり取りじゃなくて、システム全体がどう機能するかが大事。モデレーターが間違ってたら指摘していいよ。直すから。でも、システムにはモデレーターが必要なんだ。<br>[1] https://hn.algolia.com/?dateRange=all&page=0&prefix=true&que...<br>[2] https://hn.algolia.com/?dateRange=all&page=0&prefix=true&que...<br>[3] https://hn.algolia.com/?dateRange=all&page=0&prefix=true&que..." userName="dang" createdAt="2025/10/05 15:49:09" color="#45d325">}}




{{<matomeQuote body="すごいとは思わないな。新しいモデルや機能、使い方がたくさんありすぎて、何か一つに深く潜り込もうとすると、その間に43個も他のことが通り過ぎちゃうんだ。" userName="atrus" createdAt="2025/10/04 19:33:13" color="">}}




{{<matomeQuote body="その分野で働いてない普通の開発者ならわかるけど、それでも年に一回ドキュメントを読めば、この特定の問題に関してめちゃくちゃ恩恵があったはずだよ。ML研究者なら、この時点では言い訳の余地はないね。" userName="sigmoid10" createdAt="2025/10/04 19:35:30" color="#ff5c5c">}}




{{<matomeQuote body="OpenAIの構造化出力を使うと、時々JSONパースエラーが出ることがあるんだよね。でも再試行すると直る。LLMには指示を出してるけど、検証は呼び出し側に任されてるみたい。みんなも同じ状況なのかな？" userName="jssmith" createdAt="2025/10/04 19:41:51" color="#38d3d3">}}




{{<matomeQuote body="そうだよ！DSLがかなり複雑だから、LLMは難しいと感じるんだ。僕たちはNeurIPS 2025の論文（https://arxiv.org/abs/2505.20047）でSMTを使った、もっと効果的なバージョンのプロトタイプを作ったんだ。近いうちにそのコードをオープンソースにする予定だよ！" userName="barthelomew" createdAt="2025/10/04 19:48:33" color="#785bff">}}




{{<matomeQuote body="型の定義をどれくらい厳密にするかによるね。APIに情報を渡すのにpydanticを使ってる？これにはいくつかの落とし穴があるよ。全部が完全にサポートされてるわけじゃないし、舞台裏でJSONに変換されるからね。でも原則として、自己回帰エンジンは提供されたスキーマを壊すトークンは許可しないはずだけど。" userName="sigmoid10" createdAt="2025/10/04 19:50:25" color="#785bff">}}




{{<matomeQuote body="使い方が間違ってるのかもしれないけど、GPT-5でZod-to-structured-outputヘルパーを使ってみたら、パースを壊すような末尾のカンマとか、同じ応答に複数のJSON応答が出てくるみたいな変なことがよくあったんだ。結局、バグはまだあるだろうね。だから、リトライでラップする必要があると思うよ。" userName="striking" createdAt="2025/10/04 19:55:38" color="#785bff">}}




{{<matomeQuote body="うん、それって100%ユーザーかミドルウェアの問題っぽいね。そういうラッパーは使わない方がいいよ、どうせいつも古くなってるんだから。APIを直接使う方法を学んだ方が、たくさんの頭痛の種を避けられるし、そんなに難しくないからさ。" userName="sigmoid10" createdAt="2025/10/04 20:01:30" color="">}}




{{<matomeQuote body="いや、僕たちはhttps://github.com/transitive-bullshit/openai-zod-to-json-sc...経由でOpenAIベンダーバージョンのzod-to-json-schemaを使ってて、それをOpenAI APIの`json_schema`フィールドに直接適用してるんだ。多分、どこかに微妙なバグがあるのかもしれないけど、本当に不正なリクエストを送ってたら400レスポンスが返ってくるはずだよ。" userName="striking" createdAt="2025/10/04 20:11:04" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
