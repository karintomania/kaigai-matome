+++
date = '2025-04-08T00:00:00'
months = '2025/04'
draft = false
title = 'AI研究の巨星、Cycプロジェクトついに終焉か？その栄光と挫折を振り返る'
tags = ["AI", "知識表現", "人工知能", "プロジェクト終焉", "OpenCyc"]
featureimage = 'thumbnails/orange2.jpg'
+++

> AI研究の巨星、Cycプロジェクトついに終焉か？その栄光と挫折を振り返る

引用元：[https://news.ycombinator.com/item?id=43625474](https://news.ycombinator.com/item?id=43625474)

{{<matomeQuote body="なんか、これって意識を持ったAIが書いた「ここには何もないから、立ち去れ」みたいなもんだなーって思ったよ(笑) Vannevarと同じで、Cycがどこに向かってるのかよくわかんなかったんだよね。アイデアはあったけど、システムをどう構築すればいいかの仮説を立てるにも、まとまりがなかったし。McCarthyのブロックワールドのデモはマジですごいと思った。彼と学生がAIが動作する「コンテキスト」を作るためのルールを形式化したんだけど、LLMが作り出す混乱を解決するのに重要だと思うんだよね。例えば、LLMがサラダに石を入れるとクランチーになるって提案した初期の失敗は、典型的なコンテキストの失敗だった。「ユーモア」のコンテキストと「レシピ」のコンテキストのデータが混ざっちゃったんだよね。今のモデルは学習中にコンテキストがないから、コンテキストに基づいて出力を「調整」するものがないんだ。だから、サラダに石が入っちゃうんだよね。<br>[1] https://citeseerx.ist.psu.edu/document?repid=rep1&type=pdf&d..." userName="ChuckMcM" createdAt="2025-04-08T19:57:10" color="">}}

{{<matomeQuote body="＞ general intelligenceの証拠はまだない<br> ＞”これはハードル高すぎじゃね？”<br>シンボリックAIがLLMみたいに大量のデータでスケールしなかったのはみんな知ってる。でも、あんたが言うように、LLMが苦手なことにも取り組んでたんだよな。" userName="musicale" createdAt="2025-04-09T04:21:32" color="">}}

{{<matomeQuote body="その通り、LLMは大量のデータでスケールしたけど、シンボリックAIはそうじゃなかった。なんで？LLMの研究者に聞くことの一つに、「パラメータは何を表しているの？」ってのがある。単純な答えは「ニューラルネットのノードの重み」だけど、それだけじゃ全然足りない。bloom filterみたいに、'0'のビットが、そのフィルターが見たことのない文字列のハッシュのn番目のビットを表していると考えると、ちょっと近づくかもね。LLMモデルでパラメータが何を表しているのかをうまく説明している論文を読んでみたい。[1]<br>McCarthyがコンテキストで何かをつかんでたんじゃないかと思う。有機的な知能もコンテキストがないと創造的な方法で失敗するし、AIが同じように壮大な失敗をしても、それは欠点とは言えないと思うんだ。<br>[1] 重みが大きいほど、そのニューロンを通過しやすいように、進歩に対する透過性だと考えたら、少しは進展があったんだけど、グラフの循環的な性質が、純粋にトポロジー的な説明をかなり不明瞭にしてるんだよね。" userName="ChuckMcM" createdAt="2025-04-09T05:58:23" color="#45d325">}}

{{<matomeQuote body="LLMは巨大なデータでスケールしたけど、シンボリックAIはそうじゃなかった。なぜか？<br>[1]<br>ニューラルネットワーク、特にLLMではないけど、スケールできる最も単純なものだった。シンボリックAIは基本的に現実と人間の理性の既存の数学モデルから始まるので、スケールしなかったのは当然。<br>問題は、数学的モデリングの標準的な方法[2]は、 のトリプルを持つこと。<data, model-of-data, math-formalism>。数学的定式化は、データがどうなるか、データが現実からどのように逸脱するかなどを特徴づける。問題は、数学的定式化は、たとえ与えられたモデルがスケールしたとしても[3]、実際にはスケールしないこと。だから、他の数学モデルに数字をプラグインして、LLMのような現実近似を得たとしても、メタ情報は不透明なままだから、LLMのようなブラックボックスになる。<br>Judea Pearlが信頼区間を拒否し、確率が近似推論システムの構成要素として必要だと主張した方法を考えてみよう。しかし、人間、動物、またはLLMを見ると、「現実を扱う」ものは「真の」確率を持っていないし、アクセスすることもできない。<br>モデルをスケールするには、そのパラメータの大部分が私たちにとって数学的に無意味でなければならないと思う。そして、それは上記の理由からだ。<br>[1]. 本当に重要な点、imo<br>[2]. 結局のところ、シンボリックモデルと確率モデルが含まれる<br>[3]. 回帰モデルにデータをプラグインする単純さと、回帰と損失/エラー関数などを説明する多数のアプローチを対比してください。" userName="joe_the_user" createdAt="2025-04-09T19:15:10" color="#785bff">}}

{{<matomeQuote body="＞ LLMは大量のデータでスケールしたけど、シンボリックAIはそうじゃなかった。<br>シンボリックAIは、大量のデータで適用または「訓練」される特権がなかった。3000万のアサーションは大きな数ではない。" userName="thesz" createdAt="2025-04-09T14:49:40" color="">}}

{{<matomeQuote body="それマジでその通り。その3000万のアサーションは基本的に手入力だったんだよね。" userName="musicale" createdAt="2025-04-10T02:13:27" color="">}}

{{<matomeQuote body="＞LLMモデルでパラメータが何を表しているのかをうまく説明している論文を読んでみたい。<br>https://distill.pub/2020/circuits/<br><br>https://transformer-circuits.pub/2025/attribution-graphs/bio..." userName="krackers" createdAt="2025-04-09T06:06:19" color="">}}

{{<matomeQuote body="その論文は面白くて読む価値ありだね。質問に答えてくれたかはわからないけど、これまで考えたことのなかったことをいくつか学べたよ。<br>共感した引用はこれ:-) <br>　”…ここで強調する発見は、モデルのメカニズムのほんの一部しか捉えていません。”<br>細胞生物学の論文みたいで、DNAの議論の中で、関連する酵素やタンパク質の記述は洞察力に富んでるけど、反応を操作するメカニズムは不透明なままって感じがする。" userName="ChuckMcM" createdAt="2025-04-09T17:43:53" color="">}}

{{<matomeQuote body="＞＞LLMは大量のデータでスケールしたけど、シンボリックAIはそうじゃなかった。なぜか？<br>ロックサラダみたいに、ここでは2つの異なるコンテキストを混同してるよ。SATソルバーやプランナーのようなシンボリックAIはデータから学習しようとしてないし、「大量のデータでスケールする」必要のあるコンテキストもないんだ。<br>むしろ、現代のSATソルバーとプランナーがやっていることは、「データでスケールする」よりも難しいことなんだ。結局のところ、今日では強力なハードウェアを持っていて、それをうまく使うことを意味する。SAT solvingとplanningはそれができない。SATはNP完全で、planningはPSPACE完全だから、どれだけハードウェアを「スケール」しても、それらの問題はスケールで解決できるものではないんだ。<br>それでも、今日ではSATとplanningは解決済みの問題なんだ。NP完全？今では朝飯前だよ。SATの古典的なサブカテゴリーのための専用ソルバーがあるし、現代のプランナーは何千ものアクションのシーケンスを必要とするplanning問題を解決できる。現代のプランナーは、ピクセルだけでAtariゲームをプレイして、非常によくやることもできるんだ[1]。<br>じゃあ、シンボリックAIはどうやってこれらの偉業を成し遂げたんだ？より大きなコンピュータではなく、まさにこの記事が結果を何も生み出せなかったと考えているアプローチ、つまりヒューリスティック探索によってね。SAT solvingでは、支配的なアプローチは「Conflict Driven Clause Learning」と呼ばれるアルゴリズムで、SAT問題の特別な構造を利用するように設計されている。Planning and Schedulingでは、ヒューリスティック探索は常に使用されていたけど、人々がplanning問題の構造からヒューリスティックコスト関数を自動的に推定できることに気づいた90年代に、研究が本格化したんだ。<br>検証、定理証明などの古典的なAI問題では、どこを見ても並行した同様のアプローチがあるし、その研究はいくつかのチューリング賞も生み出している[2]。でも、AI研究について聞くときに、その研究について聞くことはある？ないよね。なぜなら、それは機能するから、それはAIではないんだ。<br>でも、それは機能するし、通常のハードウェアで動作するし、「スケール」もデータも必要ないんだ。あなたは間違った物差しで間違ったものを測っているんだよ。<br>____________<br>[1] Planning with Pixels in (Almost) Real Time : https://arxiv.org/pdf/1801.03354 人間とRLと競争的な結果。知らなかったでしょ。<br>[2] 例えば、検証における時間論理のためのPnueli、またはモデル検査のためのClarke、Emerson、Sifakis。" userName="YeGoblynQueenne" createdAt="2025-04-09T10:34:51" color="#45d325">}}

{{<matomeQuote body="AIのためにシンボリックなルールを手作りしようとすることの問題は、自然言語や現実世界のようなものがめちゃくちゃだってことだと思うんだよね。あいまいなルールを使ったとしても、すべてのコンテキストの依存関係やニュアンスを正確に捉えることは決してできないし、それはどうせ動的なものかもしれない。現実世界のデータから学習することが唯一の現実的なアプローチだけど、言語モデルが答えだとも思わない。継続的に学習し、自分のエラーを修正するシステムが必要なんだ。<br>CYCは面白い実験だったけどね。知識のギャップなどが避けられないから、もろいと予想されていたかもしれないけど、それ以上に根本的にアプローチに問題があったようで、もっと有能ではなかったようだ。LLMも一種の専門家システム（訓練データから独自のルールを学習する）と見なすことができるけど、いくつかの重要な違いは、LLMのルールはルール自体が何をしているのかと同じくらい、ルールを適用するタイミングのためのコンテキストを認識することであり、ルールは演繹的な閉包ではなく、直接行動を推進する生成的なものであることかもしれない。" userName="HarHarVeryFunny" createdAt="2025-04-09T15:11:29" color="#45d325">}}

{{<matomeQuote body="手作業でルールを作るのは長期的にはうまくいかないよね。でも、巨大なデータセットを近似するために世界の資源を使い果たすのも、どんなことに対しても長期的な解決策にはならないと思うな。" userName="YeGoblynQueenne" createdAt="2025-04-10T08:47:04" color="">}}

{{<matomeQuote body="SATはNP完全で、プランニングはPSPACE完全だから、どれだけハードウェアをスケールさせても意味ないんだよね。それらはスケールで解決できる問題じゃないんだ。<br>NP完全性の捉え方が間違ってるみたい。NP完全な問題は、あくまで最悪の場合に難しいってだけで、解けるインスタンスもたくさんあるんだよ。ランダムに選んだSAT問題の分布によっては、ほとんどのインスタンスはすぐに解けるんだ。SATのコンテストでは、他のドメインから翻訳された手作りのSATがよく使われてて、参加者はそういった“特殊なケース”に対応するための方法を追加してるんだよね。だから、NP完全性はSATソルバーのスケーリングを妨げるものではないんだ。" userName="joe_the_user" createdAt="2025-04-09T20:05:47" color="#785bff">}}

{{<matomeQuote body="概ね同意だけど、俺が言いたかったのは、機械学習で言う“スケーリング”の概念は、SATソルバーとか他の古典的なAIタスクには当てはまらないってこと。SAT問題を解くために大規模なデータセンターを建てる人はいないし、SATソルバーとか他の古典的なAI分野では、データは“新しい石油”ではないんだ。つまり、それらはデータ駆動型の分野ではないってこと。" userName="YeGoblynQueenne" createdAt="2025-04-10T08:34:11" color="">}}

{{<matomeQuote body="＞SATソルバーやプランナーのようなシンボリックAIは、データから学習しようとしてるわけじゃないし、“巨大なデータでスケールする”必要もないんだ。<br>いやいや、実際にはそうだよ。Conflict-Driven Clause Learning (CDCL)は、データを使って作業する中で発生したコンフリクトから学習するんだ。彼らが扱ってる入力の空間は、宇宙の原子の数くらいのオーダーになることがあって、それはめっちゃくちゃ大きいんだ。" userName="thesz" createdAt="2025-04-09T14:53:51" color="#785bff">}}

{{<matomeQuote body="CDCLの“学習”は誤用だよ。学習プロセスはResolutionで、それは演繹的（推論）であって、帰納的（学習）ではないんだ。" userName="YeGoblynQueenne" createdAt="2025-04-09T18:12:36" color="">}}

{{<matomeQuote body="それって、君がいつもの定義とはちょっと違う新しい種類の学習を発明したってことじゃない？<br>[1] [2]<br>[1] https://www.britannica.com/dictionary/learning<br>[2] https://en.wikipedia.org/wiki/Learning<br><br>CDCLの“学習”は、“知識を得る”という意味では完璧に合ってるよ。" userName="thesz" createdAt="2025-04-12T10:23:23" color="">}}

{{<matomeQuote body="ほとんどの“産業スケール”のSATソルバーは、演繹とヒューリスティクスを組み合わせて、どの演繹を行うか、どれを保持するかを決定してると思うな。ある程度のスケールになると、ヒューリスティクスは適応的になる必要があって、そうすると“帰納”になるんだ。" userName="joe_the_user" createdAt="2025-04-09T19:53:02" color="">}}

{{<matomeQuote body="同意できないな。Resolutionによる新しい条項の導出は、演繹的であるとよく理解されてるし、どの条項を保持するかを選択しても、それは変わらないよ。<br>Resolutionは帰納的にも使えるし、アブダクションにも使えるけど、それはちょっと深入りしすぎかなー。それは俺の博士論文のテーマなんだ。もし興味があったら言ってくれ。長々と語る準備はできてるよ :)" userName="YeGoblynQueenne" createdAt="2025-04-10T08:39:24" color="#ff5c5c">}}

{{<matomeQuote body="Satisfaction-Driven Clause Learning [1]を見てみて。<br>[1]<br>https://www.cs.cmu.edu/~mheule/publications/prencode.pdf" userName="thesz" createdAt="2025-04-12T10:25:52" color="">}}

{{<matomeQuote body="もし今でもこの投稿を見てるなら、長話を聞きたいな。" userName="joe_the_user" createdAt="2025-04-12T01:23:55" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="わかるー。っていうかさー、これってHNのユーザー同士がDM送れるようにするか、せめて返信通知を受け取れるようにする理由になるよね。なんで良い感じの機能がないんだろ？" userName="EarlKing" createdAt="2025-04-12T15:45:22" color="">}}

{{<matomeQuote body="＞いや、動くからAIじゃないんだって。<br>”これはマジでそう。難しいAI問題も、良いアルゴリズムとかヒューリスティクスで解決できるようになったら、もうAIじゃないんだよね。" userName="musicale" createdAt="2025-04-10T02:25:05" color="#ff5733">}}

{{<matomeQuote body="シンボリックAIに大量のデータ食わせるって試してないじゃん。難しいけどね。（皮肉なことに、LLMのおかげでテキストデータのクリーニングとかがめっちゃ楽になったけど。）" userName="otabdeveloper4" createdAt="2025-04-09T07:27:52" color="">}}

{{<matomeQuote body="例えばどんなの？GOFAIでLLMがまだできないことって何？" userName="adastra22" createdAt="2025-04-09T05:01:08" color="">}}

{{<matomeQuote body="論理的推論じゃない？特に推移律が働くような論理パズルとか。Prologで関係性を記述させて推論させるのはアリだよね。これは敗北じゃない。Prologが得意なことで、ニューラルネットが苦手なこと。俺ならPrologで解くわ。<br>あと計画立案とか、スケジューリングもそう。GPT4にPythonコード書かせたら、簡単な例では動いたけど、スケールさせたらダメだった。<br>結局、信頼できる推論が大事。正確な答えが必要な時はLLMは使えない。限界がある。でも、だいたいの答えで良いなら最高。信用はできないけどね。<br>GOFAIは信用できる。できなかったら、コミュニティが捨てて不可能だって言うから！" userName="sgt101" createdAt="2025-04-09T06:56:46" color="#ff33a1">}}

{{<matomeQuote body="これってMLではよくあることだよね。<br>MLは曖昧なこと、問題の定義がはっきりしないこと（スパムって何？ポルノって何？）とか、明確なアルゴリズムがないこと（犬と猫の区別）が得意。<br>ソートとか足し算みたいに定義もアルゴリズムもあるなら、従来のプログラミング（PrologとかシンボリックAIも含む）の方がずっと良い。<br>LLMは大きい数の足し算は従来のプログラムより苦手だし、従来のプログラムは画像に写ってる人が安全装備つけてるかどうかの判断は苦手。<br>だから、両方組み合わせるのがベスト。LLMで曖昧なことをJSONとかPythonとかWolframとかPrologに変換して、あとはコンピューターにやらせる。<br>例えば、製品100グラムあたりのタンパク質量を計算したいとする。ラベルの写真はあるけど、1食あたりのタンパク質と、1食の量がインチ表示しかない場合。LLMに100gあたりのタンパク質を計算させようとするのはnaive。正しくは、LLMに好きな単位で答えさせて、バックエンドで変換する。" userName="miki123211" createdAt="2025-04-09T08:07:18" color="#38d3d3">}}

{{<matomeQuote body="その区別はしないなー。AIがPrologプログラムを書く必要があって、必要なコードを書けるなら、AIが解決したって言っても同じじゃん？空域管制の問題を解くためにPrologを書いたら、誰も解けないとは言わないでしょ。<br>エージェント的なLLMは、特殊なソリューションを書くことで、複雑な推論やスケジューリング問題を解決できる。（GOFAIみたいなもの。）LLMはAGIだから、問題を解決するために特殊なツールを開発できる。" userName="adastra22" createdAt="2025-04-09T14:23:14" color="#ff5c5c">}}

{{<matomeQuote body="LLMにスケジューリング問題を解かせたら、PrologとかZ3で解こうとしたログを見せてよ。" userName="cess11" createdAt="2025-04-09T16:38:03" color="">}}

{{<matomeQuote body="モバイルだからチャットログのエクスポートがわかんないけど、ChatGPTで以下のプロンプトで動いたよ。<br>1: 宇宙探査機の科学観測のスケジュールを、色々な制約の中で決めたい。プログラムを書いて。<br>2: NASAの重要なミッションだから、絶対に間違いないようにしたい。<br>3: 入力データの例を作って、フルで実装して。<br>MiniZinc constraint solverを使った実装が出てきたよ。文句言う人もいるかもだけど、誘導はしてない。最初はPythonの簡単なプログラムが出てきたから、2番目のプロンプトを追加した。最初からそう言えば良かったかも。" userName="adastra22" createdAt="2025-04-10T00:06:56" color="#ff33a1">}}

{{<matomeQuote body="「試した」ってのと「上手くできる」ってのは違うよ。<br>さっきの人の返信だけど、他にも論理的推論とか説明可能性とかがあるよね。<br>シンボリックAIの考え方が、今のやり方に適用できるかもね。" userName="musicale" createdAt="2025-04-09T05:18:43" color="">}}

{{<matomeQuote body="参考になるかも(Lenatの最終論文):<br>D. Lenat, G. Marcus, “Getting from Generative AI to Trustworthy AI: What LLMs might learn from Cyc”, https://arxiv.org/abs/2308.04445" userName="musicale" createdAt="2025-04-10T03:30:12" color="">}}

{{<matomeQuote body="SAT solving、検証、モデル検査、自動定理証明、計画立案、知識表現とか推論とか、そういうAIの研究分野ではLLMはマジで役に立たないんだよね。" userName="YeGoblynQueenne" createdAt="2025-04-09T10:38:39" color="#38d3d3">}}

{{<matomeQuote body="Claude 3.7にSAT solvingとか定理証明とかスケジューリングするプログラム書いてって頼むと、だいたい一発でちゃんとしたの書いてくれるよ。" userName="adastra22" createdAt="2025-04-09T14:26:23" color="">}}

{{<matomeQuote body="俺に頼めば、例えばZ3 solverをコピーペーストして、著作権表示消したりコードを並べ替えたりして渡せるよ。それがどういう仕組みで動いてるか理解してなくてもね。<br>Claudeが、SAT solverのコードにアクセスせずに、SAT solverに関する科学論文とかプログラミング言語のチュートリアルで学習してたらすごいけど、そうじゃないでしょ？<br>LLMが生成したコードが必要な理由って何？オリジナルがあるのに。<br>Claudeが、既存の最高レベルのSAT solverより1%でも性能が良いSAT solverを作れるかってこと。普通のSAT solverなんていらないんだよ。" userName="blacklion" createdAt="2025-04-09T21:37:22" color="#ff5733">}}

{{<matomeQuote body="そのプログラム、定理証明の実際の応用で使うの？例えば、集積回路の設計を検証して、数百万ドルも製造費をかける前にチェックするとか？" userName="mepian" createdAt="2025-04-09T17:52:25" color="">}}

{{<matomeQuote body="やってみせて。" userName="YeGoblynQueenne" createdAt="2025-04-09T18:08:50" color="">}}

{{<matomeQuote body="自分でClaudeで試すのなんて5秒でしょ。俺は毎日こういうことやってるから、その価値は知ってるんだよ。" userName="adastra22" createdAt="2025-04-10T03:42:50" color="">}}

{{<matomeQuote body="ClaudeでSAT solverを毎日作ってるってこと？それって何の役に立つの？" userName="YeGoblynQueenne" createdAt="2025-04-10T08:40:57" color="">}}

{{<matomeQuote body="似たような複雑さの問題をClaudeに毎日解かせてるよ。SAT solverは週に1回くらいかな。<br>使い道はマジで何でもありだよ。大規模プロジェクトのリソース配分を決めたり、いろんな金融とかリスクモデルのモンテカルロシミュレーションしたり。いろんなトレードオフがある問題を分析して、制約条件の中で最適な戦略を選ぶとか。<br>専用のツールもあるけど、ライセンス料がめちゃくちゃ高いんだよね。Claudeなら同じ結果を0.5ドルのAIクレジットで出せるんだよ。すごい時代になったよね。エンジニアのチームが何か月も何年もかかるようなことをClaudeにやらせて、1回使って終わり、みたいなことができるんだから。<br>Claudeが良いのは、他のモデルじゃこういうタスクをこなせないから。<br>＞例として出したプロンプト：”https://news.ycombinator.com/item?id=43639320" userName="adastra22" createdAt="2025-04-10T16:34:15" color="#785bff">}}

{{<matomeQuote body="口だけ番長じゃん。結局、Claudeで作ったSAT solverを見たことないんだけど。" userName="YeGoblynQueenne" createdAt="2025-04-10T18:03:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="マジで最高の記事じゃん。今年のHNで一番かも。子供の頃、AIのドキュメンタリーでCycのこと初めて知ったんだよね。電気カミソリで髭を剃る男の例が出てきてさ。Cycは、カミソリが電気製品で、電気製品は人間じゃないから、髭剃り中の男は人間じゃないって結論付けたんだって。子供心にめっちゃ刺さって、AIを勉強したいって思ったんだよね。Prologの関係性を使ってCycがどう動くか知ってからはちょっと熱が冷めちゃって、結局CSを勉強したんだけど、Cycには感謝してるんだ。Lenartは変人っぽいけど、ああいう熱狂的な信者がいないと、AIの冬を乗り越えられないよね。Cycみたいな知識グラフが、統計学習のハルシネーションをなくすために、また脚光を浴びる日が来るかもね。" userName="fancyfredbot" createdAt="2025-04-09T11:06:50" color="#785bff">}}

{{<matomeQuote body="俺も同じ例でAIに興味を持ったんだよね。GenAIをちゃんと機能させるには、このアプローチが必要だと思うんだ。脳には連想機能があるけど、ノイズから信号をフィルタリングして、内容を理解しないと役に立たないじゃん。Cycは意味のあるコンテンツを自分で生成できるようになったのかな？そういうシステムなら、どんどん自分で詳細を導き出せるようになると思うんだけど。" userName="codr7" createdAt="2025-04-09T15:54:48" color="#ff5733">}}

{{<matomeQuote body="＞Cyc concluded that while shaving the man was not human since the razor was an electrical device and electrical devices were not human. ”この文が理解できないんだけど。「while shaving」の前後にコンマが必要じゃない？" userName="cubefox" createdAt="2025-04-09T12:56:19" color="">}}

{{<matomeQuote body="うん、ごめん。実はさっきググってたら、GoodfellowらのDeep Learning本にも同じ話が載ってたわ。<br>「例えば、Cycは朝に髭を剃るFredの話を理解できなかった（Linde, 1992）。その推論エンジンは、話の中に矛盾を発見した。それは、人々は電気的な部分を持っていないことを知っていたが、Fredが電気カミソリを持っていたので、実体“FredWhileShaving”は電気的な部分を含んでいると信じた。したがって、Fredは髭を剃っている間もまだ人なのかどうかを尋ねた」<br>https://www.deeplearningbook.org/contents/intro.html<br>(Linde, 1992)っていうのは、TVシリーズの第4話らしいよ！YouTubeにもあった。<br>https://youtube.com/clip/UgkxRcsHT-s1iZ-VRWFRXA-qg4kjTYe-a6j..." userName="fancyfredbot" createdAt="2025-04-09T13:08:03" color="#38d3d3">}}

{{<matomeQuote body="FredWhileShavingっていうオブジェクトは、Fredの状態、つまり単なるイベントであって、そもそも人じゃないんじゃない？人は状態でもイベントでもないはずだし。" userName="cubefox" createdAt="2025-04-09T15:09:46" color="">}}

{{<matomeQuote body="Deleuzeも同じようなこと言いそう。" userName="pea" createdAt="2025-04-09T14:53:21" color="">}}

{{<matomeQuote body="この流れで、「Gravity has no friends.」って言葉を思い出した。<br>http://blog.kenperlin.com/?p=2068" userName="mac3n" createdAt="2025-04-09T14:58:02" color="">}}

{{<matomeQuote body="＞seemed like a strange man”じゃなくてseemedだね。<br>残念ながら、彼は数年前に亡くなってたんだね（今知ってびっくり！）" userName="pmarreck" createdAt="2025-04-09T16:47:07" color="">}}

{{<matomeQuote body="彼の論文や教科書は今でも読めるよ。講演も面白かったし、YouTubeには講演やインタビュー、追悼動画もあるよ。" userName="musicale" createdAt="2025-04-10T02:28:26" color="#ff5c5c">}}

{{<matomeQuote body="すごく面白くて価値のある記事だったよ（コメント欄よりずっと良い）。でも、作者がプロジェクトは失敗したって決めつけてるのが残念。40年も探索が続いてるからって失敗とは限らないじゃん。ニューラルネットワークだって実用化まで40年以上かかったし、誰も失敗だなんて言わないでしょ。今のLLMだって、まだ全然賢くないし。いつかCycの知識ベースが公開されて、LLMの学習に使われる日が来るかもしれない。そうすれば、このデータの真価がわかるかもね。" userName="Rochus" createdAt="2025-04-08T23:10:14" color="#ff5733">}}

{{<matomeQuote body="Cyc社の知識ベースがいつか一般公開されて、LLMのトレーニングに使えるようになるかもね。<br>でも、オープンな代替技術が開発されるにつれて、どんどん時代遅れになっていく可能性が高いんじゃないかな。Wikipediaの人たちは、編集可能な共通言語を開発して、マイナー言語のWikipediaに基本的な百科事典テキストを生成しようとしてるみたいだよ（詳細はまだ未定だけど、https://en.wikipedia.org/wiki/Abstract_Wikipedia と https://meta.wikimedia.org/wiki/Abstract_Wikipedia を見てみて）。記事にある、英語と日本語の両方でテキストを生成できるシステムと同じくらいの性能になるかもね。でも、それが本当に役立つかどうかはまだわからないし、論理推論がどれだけ使えるかも未知数だね。" userName="zozbot234" createdAt="2025-04-08T23:20:20" color="">}}

{{<matomeQuote body="＞オープンな代替技術が開発されるにつれて、どんどん時代遅れになっていくって話だけど<br>確かに面白いプロジェクトだよね。でも、Cycの高度な論理仕様のレベルは、統計学習じゃ無理だし、シンボリックなアプローチでもCycより短い時間じゃ達成できないんじゃないかな。" userName="Rochus" createdAt="2025-04-08T23:44:17" color="">}}

{{<matomeQuote body="このアプローチの結果が、他の言語から機械翻訳するよりも優れてるとは思えないなー。例えば、英語はコンテンツも投稿も多いし、LLMは翻訳が上手いじゃん。抽象言語で記事を書く人がどれだけいるか想像できないし。" userName="yowzadave" createdAt="2025-04-09T01:40:37" color="">}}

{{<matomeQuote body="LLMが得意なのは、ネット上に大量のコンテンツがある言語間の翻訳だよ。でも、そういう言語はすでに大規模なWikipediaがあることが多いんだよね。<br>教育で特定の言語が強制されてて、 письменность (pis'mennost')があんまり使われない言語もあるんだ。そういう言語にLLMで翻訳しようとすると、ゴミみたいな結果になるよ。LLMが全然役に立たないなら、手作りのテンプレートの方が全然マシだよ。" userName="yorwba" createdAt="2025-04-09T06:29:50" color="#45d325">}}

{{<matomeQuote body="https://www.wikidata.org/wiki/Wikidata:Main_Page は、その共通言語に興味がある人向け。" userName="yellowapple" createdAt="2025-04-09T00:42:56" color="">}}

{{<matomeQuote body="厳密に言うと、Wikidataは既存のプロジェクトだけど、アサーションのためのモデルは結構制限されてるんだよね。完全な構成性はないから、百科事典的なテキストを表現するには程遠いし、自然言語にシームレスに翻訳できるわけじゃない。でも、今後の開発の基礎にはなりそうだね。" userName="zozbot234" createdAt="2025-04-09T01:21:11" color="">}}

{{<matomeQuote body="＞プロジェクトが失敗したって前提だけど。<br>うちの娘のPhD論文は、ほとんどがネガティブな結果だったんだ。プロジェクトが失敗したとしても、秘密主義じゃなければ学べることはあるはずだよ。OSSじゃなくても、もっとオープンにできるはずなのに!" userName="smoyer" createdAt="2025-04-08T23:19:03" color="">}}

{{<matomeQuote body="どの方法がうまくいかないかを知るのも同じくらい重要だけど、そっちの方は報道されないことが多いよね。“発表しなければ死”の時代には科学者にとって魅力的じゃないんだ。" userName="Rochus" createdAt="2025-04-08T23:48:02" color="">}}

{{<matomeQuote body="＞＞うちの娘のPhD論文は、ほとんどがネガティブな結果だったって。<br>リンク教えてよ！" userName="YeGoblynQueenne" createdAt="2025-04-09T10:47:57" color="">}}

{{<matomeQuote body="自慢したいんだね！<br>https://pubmed.ncbi.nlm.nih.gov/36995257/" userName="smoyer" createdAt="2025-04-10T01:04:00" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="マジそれな。ナー**ド**なパパの鑑だね！<br>娘さんの博士号取得おめでとう。もう取ってる頃かな？<br>Sonic hedgehog signalling pathwayだって！しかも論文提出日に注目。<br>ところで、なんでそれがネガティブな結果なの？" userName="YeGoblynQueenne" createdAt="2025-04-10T08:42:58" color="#ff5733">}}

{{<matomeQuote body="＞もしかしたらCyc**o**rpの知識ベースが一般公開されるかもね<br>OpenAIが公開するのを待つより無理ゲー。<br>＞ニューラルネットワークがマジで使えるようになるまで40年以上かかった<br>比較対象は”ニューラルネットワーク”じゃなくて、”シンボリックAI”全体でしょ。シンボリックAIは一部の分野ではうまく機能してるよ。ただ、常識的な推論とか、AGIには全く近づいてないけどね。<br>Cycと比較するなら、比較にならんレベル。誇張抜きで、2020年以前にCycほど金のかかったAIプロジェクトはない。<br>GPT-2でやっと100万ドル超えたくらい。（AlphaGoとかDeep Blueも数百万ドルかかったかもだけど、ちゃんと動いたし。）<br>40年もかかってないよ。LeNet-5は1998年には動いてて、ATMで小切手を読んでたし。メインのコストはLeCunの研究チームが10年頑張ったこと。MNISTで20エポック学習させるのに、Silicon Graphics Origin 2000サーバーで2～3日かかったくらい。" userName="Paracompact" createdAt="2025-04-09T09:20:07" color="#38d3d3">}}

{{<matomeQuote body="Cycは絶好調らしいよ、ウェブサイトによると。<br>「次世代のエンタープライズAI」だってさ。<br>Lenat自身は2023年に亡くなってるのに、「リーダーシップチーム」の唯一のメンバーとしてリストされてるって。[1][2]<br>[1] ｈttps://cyc.com/<br>[2] ｈttps://cyc.com/leadership-team/" userName="Animats" createdAt="2025-04-08T20:52:57" color="">}}

{{<matomeQuote body="悲しい墓碑銘だね。<br>たとえ不可能だって証明しただけだとしても、彼が試したことは素晴らしいと思うよ。" userName="curiousObject" createdAt="2025-04-09T04:54:33" color="#ff33a1">}}

{{<matomeQuote body="そんなこと証明してないじゃん。" userName="jibal" createdAt="2025-04-09T07:47:30" color="">}}

{{<matomeQuote body="特にSOTA LLMを使ってResearchCycを再現・拡張することを考えれば（趣味で、営利目的じゃなく）。" userName="mycall" createdAt="2025-04-09T16:21:31" color="">}}

{{<matomeQuote body="もしかしてCycは成功して、LenatはCycの意識として生き続けてるのかも？" userName="vitiral" createdAt="2025-04-09T04:25:17" color="">}}

{{<matomeQuote body="死んだらおしまい。それに、Cycに意識があったとしても、彼の意識であるはずがない。" userName="jibal" createdAt="2025-04-09T07:51:35" color="">}}

{{<matomeQuote body="面白い思考実験だよね。彼が長年かけて自分の思考プロセスや意思決定をプログラムにエンコードしたら、自分自身の説得力のある複製、つまり”意識”を創造できたのかな？何十年にもわたる自己反省に基づいたチャットボットによるチューリングテスト。" userName="Cthulhu_" createdAt="2025-04-09T11:54:13" color="#38d3d3">}}

{{<matomeQuote body="2014年の映画「Transcendence」がそれについて触れてるけど、オススメはしないな。表面的な内容で、映画自体もイマイチ。" userName="Philpax" createdAt="2025-04-09T13:56:18" color="">}}

{{<matomeQuote body="Stephensonの『Fall; or, Dodge in Hell』は、人間の精神のデジタル化っていう仮説を扱ってるんだよね。合成された精神たちが、自ら進んで集合意識になろうとするみたいな、面白いアイデアがいくつかあるんだ。" userName="mewse-hn" createdAt="2025-04-09T16:41:21" color="">}}

{{<matomeQuote body="完全に論点ずれてるじゃん。しかも全然面白くないし（いや、テーマ自体は面白いし、何十年も掘り下げてるけど、こういう何の調査もなしに、Cycみたいな全然関係ないものに結びつけようとする浅い質問はマジでつまんない）。説得力のある複製を作れたかって？そりゃ、エンコード方式が有効ならねー。当たり前のこと言ってるだけ。Lenatの手法が有効だったかって？もちろんNo。そもそもそういう意図じゃないし。「何十年も自己反省に基づいて」って、Daniel Dennettが、自己反省なんて全然役に立たないって詳しく説明してたじゃん…内部プロセスなんてほとんどアクセスできないんだから。" userName="jibal" createdAt="2025-04-13T04:52:09" color="">}}

{{<matomeQuote body="opencycとしてオンラインで公開されたCycのバージョンを実行できるよ。https://github.com/asanchez75/opencyc。これは、システムのバージョンがSourceForgeに投稿されたときのもので、GitHubにはデータセットとKB、推論エンジンがあるんだ。Javaの古いバージョンで書かれてるから注意してね。" userName="zitterbewegung" createdAt="2025-04-08T19:30:28" color="#ff5c5c">}}

{{<matomeQuote body="昔、AMとEURISKOについてめっちゃ読みまくろうとしたんだよね。残念ながら、Lenatは自分の研究を全部秘密にしてて、論文とか記事くらいしか読めるものがなかったんだ。Lenatが作ったものを誰も発展させられなかったのは残念だなってずっと思ってた。マジで損してると思う。" userName="drob518" createdAt="2025-04-09T01:50:00" color="">}}

{{<matomeQuote body="EURISKOは今なら自分で動かせるよ。" userName="varjag" createdAt="2025-04-09T02:42:33" color="">}}

{{<matomeQuote body="この記事は、Cycだけじゃなくて、シンボリックAI全般の良いレビューになってると思うよ。<br>昔OpenCycをよく触ってたけど、もう10年も触ってないな。<br>シンボリックAIに未来があるとしたら、LLMを使って、非構造化データからナレッジグラフとか、シンボリックな関係とかを構築することだと思う。" userName="mark_l_watson" createdAt="2025-04-09T01:54:17" color="">}}

{{<matomeQuote body="＞＞この記事はシンボリックAI全般の良いレビューだって？<br>シンボリックAIのレビューとしては、情報不足で表面的だと思うし、シンボリックAIが“失敗”したっていう古い主張を繰り返してるだけじゃん。事実に反してるよね。SAT solvingとか、自動定理証明とか、プランニングとかスケジューリングみたいな主要なシンボリックAIの分野は今も活発だし、現実世界で成果も出してるじゃん。SAT solvingとか、プランニングとか、プログラム検証とか、自動定理証明とかは、もう“AI”とさえ思われてないんだよ。だって実際にちゃんと動いてるからね。" userName="YeGoblynQueenne" createdAt="2025-04-09T10:51:04" color="#38d3d3">}}

{{<matomeQuote body="まあ、技術的にはそうかもね。懐かしい気持ちにはなったよ。1982年からこの分野で働いてるから、この記事はノスタルジーを刺激されたな。" userName="mark_l_watson" createdAt="2025-04-09T20:51:04" color="">}}

{{<matomeQuote body="LLM自体が、ナレッジグラフを使って答えを検証したりするようになるよね。最終的には、グラフ注意層としてアーキテクチャに組み込まれると思う。" userName="trhway" createdAt="2025-04-09T03:51:46" color="#45d325">}}

{{<matomeQuote body="Lenatは、大量のデータ（Cycの場合はルールと事実）が最終的に役立つ知能を達成するための鍵だと理解していた点で、少なくとも方向性としては正しかったと思うよ。正直、Cycプロジェクトを、ただただ大量のクソの山を作り続けて、そのうちポニーが出てくるのを期待しているみたいだって批判したこともあったんだ。でも、LLMで起こったことって、まさにそれって感じだよね。" userName="vannevar" createdAt="2025-04-08T19:44:13" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
