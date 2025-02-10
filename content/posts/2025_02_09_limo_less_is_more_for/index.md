+++
date = '2025-02-09T00:00:00'
draft = true
title = 'LIMOとは？少ない情報でより良い推論を実現する方法'
tags = ["人工知能", "機械学習", "研究", "アルゴリズム", "データサイエンス", "学術論文"]
+++

> LIMOとは？少ない情報でより良い推論を実現する方法

引用元：https://news.ycombinator.com/item?id=42991676

{{<matomeQuote body="クールな結果だけど、2つのポイントを強調すべきだね。1つ目は、Qwen-2.5 Instructからファインチューニングされていて、数百万の特別にフィルタリングされた数学の例が使われてること。2つ目は、817の完璧な数学例を生成するために、R1などの最先端モデルを使って1千万の問題から絞り込んだってこと。10百万のプールでそのままファインチューニングするより、これを使う方がすごいかどうかはよく分からないけど、見出しにはあまり良くないかもしれないな。" userName="highfrequency" createdAt="2025-02-09T18:48:42" color="">}}

{{<matomeQuote body="うん、著者はその2つのポイントを抽象部分で明確に強調してるね。複雑な推論に必要な条件で、非常に完全な事前学習された基盤モデルと、トレーニング後に非常に高品質な例がそろっているということ。初期の1千万プールにファインチューニングする場合についてだけど、直感的に817例だけでグラディエントを動かすのは大変だと思うよ。小規模なデータで推論スケーリングが大きな成果を上げることが増えてきてるし、最近の例もいくつかある。" userName="armcat" createdAt="2025-02-09T19:47:19" color="#ff5733">}}

{{<matomeQuote body="要約部分で、857のトレーニング例は10百万の初期問題からR1によってフィルタリングされたことを言ってないんだ。このことが結果を理解するのに役立つ。大部分がR1や同様のモデルの凄い能力で完璧なトレーニングデータを見つけることだと分かるから。" userName="highfrequency" createdAt="2025-02-10T00:42:24" color="">}}

{{<matomeQuote body="技術の進歩は常に前の技術の進歩の結果じゃない？" userName="Eisenstein" createdAt="2025-02-10T07:28:05" color="">}}

{{<matomeQuote body="そうだけど、これには3種類の進歩があるのを区別する価値があるんじゃないかな。1つ目はエベレストが初めて登頂されたこと。2つ目はエベレストの登頂のための簡単なルートが見つかったこと。3つ目は、経験豊富なクライマーが既に登っていて、登頂ポイントにロープや酸素ボンベを置くことで、より軽く持っていけば良いようになること。 すべて面白いことだけど、3つ目から“少ないものがより多く”と言うのはさすがに無理があるかな。" userName="highfrequency" createdAt="2025-02-10T14:56:49" color="">}}

{{<matomeQuote body="前のモデルから情報を使って効率的なモデルを作ることに皆が厳しいのはなんでなんだろう。過去の成果を利用して進歩するのに何も問題はないし、効率を上げるのも進歩だと思うよ。" userName="amingilani" createdAt="2025-02-09T19:14:09" color="">}}

{{<matomeQuote body="お前は製品の視点から見てるけど、科学の視点からはその基準が意味を持たないことを示すだけで、こうしたモデルがどれほど一般化できるか分からないんだ。" userName="carschno" createdAt="2025-02-09T19:37:08" color="">}}

{{<matomeQuote body="そんなんじゃない！科学の視点では達成できる結果が重要で、誰もが真っ新から始めるわけじゃない。人間もそうだし、教え方も大切なのさ。" userName="EGreg" createdAt="2025-02-09T21:18:33" color="">}}

{{<matomeQuote body="もう一つの見方としては、最初のアセンブリ言語コンパイラは、手動でバイナリで書かれて、それからそのコンパイラの機械語がより表現力豊かな言語に翻訳されるってこと。FortranやCなども同様だ。つまり、より簡潔なLLMは、あまり効率的でないものを使って構築されるかもしれないということだ。" userName="h0l0cube" createdAt="2025-02-10T05:52:32" color="">}}

{{<matomeQuote body="合成出力に強く依存すると、前のモデルのバイアスや仮定が引き継がれ、前モデルが訓練されたデータセットの限界や設計者の意図調整も知らずに持ってくるリスクがある。だけど、よく言われる批判は、新モデルが「真の」革新よりも蒸留に依存しているために不公平に取り上げられてるってことだ。本当に「誰もが」こう見てるかは考える価値があるよ。" userName="btown" createdAt="2025-02-09T19:54:23" color="">}}

{{<matomeQuote body="この素晴らしいPG記事の結論は、読者が印刷メディアからオンラインブログに移行してる理由は、オンラインコンテンツが「より正直」で、型にはまってないからってことだよね。2年間も検索エンジンの結果のトップにGPTのクソみたいな内容が蔓延してたから、随分と回り道したもんだ。" userName="sebastiennight" createdAt="2025-02-09T20:13:51" color="">}}

{{<matomeQuote body="90年代からネットを使ってる自分からすると、その主張はいつの時代でも疑わしかった。2005年、Gmailが登場して「Web 2.0」って言葉が使われ始めた頃も、ネットのコンテンツはほとんどが伝統的メディアからのもので、PRゴミが多かったし。ブログも、多くは利用可能な情報を元にした意見が多くて、高品質な研究に基づいているわけじゃなかった。管理の欠如は両刃の剣で、純粋にフィルタリングされてないマーケティングのゴミが少なかったかもしれないけど、代わりにクソみたいな情報が増える危険もあった。彼は2005年の理想主義的なアンチエスタブリッシュメントな考えを持ち上げようとしてたのかもしれないが、実際には時代遅れだ。" userName="chefandy" createdAt="2025-02-09T21:53:46" color="#ff33a1">}}

{{<matomeQuote body="彼らは効率的な推論を行うのに大量のデータは必要ないと主張してるけど、それはちょっと誤解を招くよね。巨大なモデルを微調整するのに別のモデルが必要なんだから。教科書のアナロジーを使ってるけど、僕にはすごく知識のある人が専門書を読んでエキスパートになって、それを読んだら他の知識のある人より優れてると言ってるように思える。元のモデルが可能にしたデータが必要ないと結論付けるのはおかしい。" userName="Rumengol" createdAt="2025-02-10T10:37:24" color="">}}

{{<matomeQuote body="彼らは少数のSFTサンプルを使えば効率的な推論が可能だと主張してるけど、サンプルの集め方やフィルタリングは関係ない。これが可能だって事実を報告してるだけで、それ自体が新しくて興味深い発見なんだ。" userName="tw1984" createdAt="2025-02-10T12:08:25" color="">}}

{{<matomeQuote body="ここでの意見に完全に同意だ。ただ、論文の研究とは別に、実践的な工学の観点から見ると、論文で示された方法論は業界にとって、先進的なモデルから構造的な認知能力を抽出して、あまり能力のないモデルに統合する効果的なアプローチを提供する。Less-Is-More Reasoning（LIMO）の仮説は特に意味があると思う。認知プロセスをエンコードするのに広範なデータは必要なく、少量のデータでモデルの能力を引き出せるかもしれないって考え方は、特に重要で貴重な洞察を与えると思う。" userName="ciphix" createdAt="2025-02-10T13:43:22" color="#ff5733">}}

{{<matomeQuote body="批評によると、この「前のモデルからの情報」自体が膨大なデータを必要とするんだ。で、全データを考慮した時に、より良い一般化能力を見られたかは疑問だよね。" userName="novakboskov" createdAt="2025-02-10T08:45:12" color="">}}

{{<matomeQuote body="つまり、1000万から817サンプルを選ぶのに12290ビットの情報が必要ってことだ。" userName="trott" createdAt="2025-02-09T19:58:36" color="">}}

{{<matomeQuote body="さらに、無限のランダムに生成された例から同じ数のサンプルを選ぶと、もっと多くの情報が得られる。選択基準からの情報はモデルには伝わらず、選ばれたサンプルだけがいる。" userName="TOMDM" createdAt="2025-02-09T21:46:59" color="">}}

{{<matomeQuote body="競技数学で高得点を取るために必要な理解を与える教科書が、1000題未満しか説明していないというのは、メタ認知の大発見だと思う。" userName="EternalFury" createdAt="2025-02-10T01:29:43" color="#ff33a1">}}

{{<matomeQuote body="これは一冊の教科書ではなく、別の教科書だよ。彼らの研究は否定しないけど、少ないデータで大きな改善を報告してるのは良いこと。でもこれはすでに生きた全ての人間よりも多くの情報を読んだ大型LLMのさらなる訓練なんだ。" userName="robotresearcher" createdAt="2025-02-10T02:12:32" color="">}}

{{<matomeQuote body="ネット上の情報の中で、賢い内容も多いけど、役に立たないコンテンツも膨大だよね。結局、1,000の問題に影響を与えるために、どれだけの情報が実際に役立つんだろう？" userName="EternalFury" createdAt="2025-02-10T03:50:44" color="">}}

{{<matomeQuote body="これに近いのがあるよ：    https://www.wiley.com/en-us/The+Art+and+Craft+of+Problem+Sol...  数学コンペは主に高校数学が多いから、問題も数学の限られた範囲から出てきて、高校生でもちゃんと理解できる背景があるんだ。" userName="sdenton4" createdAt="2025-02-10T15:37:49" color="">}}

{{<matomeQuote body="完璧な817の数学問題を生成するために、R1みたいな最新のモデルを使って、1000万の問題から選別して作ったんだって。つまり、めちゃくちゃ頭を使って、情報を最大限に絞り込んだデータができたということ。これは教科書を作るのと似ていて、基礎学習を教えるための例を厳選しているんだ。最近のLLMの進歩は、人間の“推論”を予測できることを示しているけど、ほとんどの反応があんまり理由付けがなされてない結果だね。周りで問題を解いてる人が自分に話しかけてるの聞くと、そのことがよく分かるよ。" userName="Terretta" createdAt="2025-02-10T12:53:56" color="">}}

{{<matomeQuote body="論文とGitHubのトレーニングデータセットを見た結果、800以上のトレーニングサンプルはDeepSeek R1と先進的なモデルによって生成されたんだ。これらのサンプルの推論プロセスが重要だと思う。大きなモデルは推論プロセスをうまく復元できるから、少ないデータでもQwen 2.5が大きな改善を実現したのは納得できるよ。ただの推測だけど、さらに研究が必要だね。" userName="ciphix" createdAt="2025-02-10T13:31:59" color="">}}

{{<matomeQuote body="コメント全体、特にその部分の意図が分からなかった。人間の日常会話は予測可能なことが多いけど、たまにはオリジナルな思考を生み出す人もいるよね。それが前のコメントにどう関連してるのかも分からない。" userName="GTP" createdAt="2025-02-10T13:38:45" color="">}}

{{<matomeQuote body="引用して言い換えると、めちゃくちゃ頭を使って情報を最大限に絞ったデータを作ったということは、教科書を作る過程とも似てるよね。私たちにとって有効なことは、LLMにも役立てられるはず。" userName="Terretta" createdAt="2025-02-11T15:52:52" color="">}}

{{<matomeQuote body="情報を最大限に絞ったデータを作るのは、結局教科書みたいなものだよね。それは世代を超えた知識の圧縮プロセスとも言える。" userName="orbital-decay" createdAt="2025-02-09T23:31:47" color="">}}

{{<matomeQuote body="でも、今の状況は安く済むから、OpenAIは先行者利益があるのに、数十億ドルもかけてるのに、中国のモデルに勝ててないっていうのが現実だね。" userName="smallerize" createdAt="2025-02-09T19:06:51" color="">}}

{{<matomeQuote body="でも、実際には勝ってると思うよ。o3-miniはDeepSeek-R1より速くて、能力も同じくらいだし。AGI達成っていうミームは嫌だけど、o3はo1よりもかなり進化してるよ。DeepSeek-R3が出るまでどのくらいかもわからないけど。" userName="rfoo" createdAt="2025-02-09T19:32:14" color="">}}

{{<matomeQuote body="R1がo3-miniよりも遅いのは、推論最適化がまだR1モデルのほとんどに対して行われていないからなんだ。o1やo1 proと比べてR1のレイテンシは遅いけど、DeepSeekならもっと速くする方法がいくつかあるはず。しばらく時間がかかるかもしれないけど、こうした改善は見られると思う。" userName="pama" createdAt="2025-02-09T20:10:08" color="">}}

{{<matomeQuote body="DeepSeekのR1 APIって昔から使ってたけど、彼らが自分のV3推論をちゃんと最適化してないんじゃないかと思うんだよね。やっぱ2倍から3倍の改善余地があるんじゃないかな。" userName="rfoo" createdAt="2025-02-10T11:51:17" color="">}}

{{<matomeQuote body="DeepSeekはR1の推論コストを最適化したと思うけど、R1-miniみたいな効率的なMoEのダウンサンプリングはまだ出してないよね。" userName="pama" createdAt="2025-02-10T12:22:06" color="">}}

{{<matomeQuote body="DeepSeek-R1は意外と良いと思うよ。o3-miniは推論が曖昧で、短くて役に立たない答えが多いし。R1はMITライセンスで使えるのもいいよね。" userName="rvnx" createdAt="2025-02-09T21:10:21" color="">}}

{{<matomeQuote body="o3-miniが使えることを忘れてたよ。今までo1のデータを見てた。" userName="smallerize" createdAt="2025-02-09T20:40:59" color="">}}

{{<matomeQuote body="もちろん数学的推論については頑張ってるけど、将来的に数学的論理推論を含む研究があれば完璧だと思う。" userName="yishanchuan" createdAt="2025-02-10T00:52:45" color="">}}

{{<matomeQuote body="重要なのはデータの事前選択だってことだよね。似た結果を得るのに大量のデータは不要で、厳選されたデータで十分だって分かったから。" userName="mattigames" createdAt="2025-02-10T12:02:58" color="">}}

{{<matomeQuote body="専門的じゃないけど、モデルがインターネットで事前学習すると数学的推論に必要なスキルを獲得すると思う。ただ、通常はその能力を使わないんだよね。" userName="hexomancer" createdAt="2025-02-09T17:51:29" color="">}}

{{<matomeQuote body="AnthropicがClaudeで達成したことに似てると思う。概念を分析して活性化を操作することで、特定の特徴を最大化・最小化できる。" userName="cube2222" createdAt="2025-02-09T18:03:04" color="">}}

{{<matomeQuote body="Golden Gate Claudeの面白いところは、どんなユーザーのクエリにも広告に使えることが分かるところだよね。AIの収益化が不可能だって意見があるけど、それは間違ってる。" userName="zozbot234" createdAt="2025-02-09T18:46:49" color="">}}

{{<matomeQuote body="R1は明らかに親中派の偏見が強いね。特に交差海峡関係の質問には。広告の統合が普通に可能みたい。" userName="827a" createdAt="2025-02-09T21:42:57" color="">}}

{{<matomeQuote body="政治の問題に関する感情や議論も同様のことができる。Murdochもこんな力を夢見ていただろう。外部から分析するのは難しく、レスポンスのパーソナライズが進むだけに、このナッジツールは非常に特異なものになる。" userName="klabb3" createdAt="2025-02-10T03:18:09" color="">}}

{{<matomeQuote body="似たようなことは前にも見たことがある。強力だけど、ソーシャルメディアのフィードアルゴリズムと同じようなもので、特にTikTokみたいな武器化されたものもある。大多数のTikTokユーザーは西側がアプリを禁止したい理由が理解できていない。これは単純な洗脳で、ユーザーはアルゴリズムが特定の方向へ感情を操作する恐れを理解していない。混乱を招くために設計されているんだ。" userName="827a" createdAt="2025-02-10T21:38:37" color="#ff5c5c">}}

{{<matomeQuote body="リンクありがとう。Anthropicがハイクオリティのブログを書いていることは知らなかった。" userName="user_7832" createdAt="2025-02-10T04:20:42" color="">}}

{{<matomeQuote body="それについてもう少し言いたい。パターンの認識と継続は、象徴的な推論を評価するために使える。プログラミング言語のセマンティクスに似た形で、問題を言語に変換できるモデルがあれば面白くなる。自動回帰的な予測は象徴的な評価と計算に変わるかもしれない。" userName="barrkel" createdAt="2025-02-10T17:49:07" color="">}}

{{<matomeQuote body="R1の推論は時々小学生の言葉に感じる。でも、数学的推論の知識を圧縮することで、ルールベースのものと結びつけると面白いものができるかもしれない。" userName="larodi" createdAt="2025-02-09T21:20:20" color="">}}

{{<matomeQuote body="基本モデルのファインチューニング（SLかRL）で、モデルが賢くなるわけではなく、初期の自己教師あり学習のみが重要な気がする。機械学習モデルが本当に賢くなることがないわけではないけど。" userName="cubefox" createdAt="2025-02-09T19:34:51" color="">}}

{{<matomeQuote body="私の考えでは、数学などのドメインは一般的だけど、語彙のボキャブラリーが大きすぎるからトレーニングが難しくなる。推論ステップをトレーニングすることで、より少ない語彙の一般的な用語だけを強化できる。数の組み合わせと特定の問題を分けてトレーニングできるかもしれない。" userName="easeout" createdAt="2025-02-09T18:43:00" color="">}}

{{<matomeQuote body="完璧な計算機のLLMって存在した？普通の演算と整数を使った表現で常に正しい結果を返すような。私もこの件についての論文は見たことがないけど。" userName="sega_sai" createdAt="2025-02-09T18:54:55" color="">}}

{{<matomeQuote body="完璧な計算機のLLMが何のために必要？人間は計算機を作った理由があるんだから。良いLLMは、算数の質問には効率的な計算プログラムを使った方が良い。" userName="jkhdigital" createdAt="2025-02-09T23:04:00" color="">}}

{{<matomeQuote body="エンジニアリングの効率重視も大事だけど、人間の脳のように複雑な認知タスクができるパワフルなLLMを開発するのが目指すところなんだ。効率が悪くても、こうしたモデルは外部ツールなしで複雑な問題を解決できることが求められる。" userName="ciphix" createdAt="2025-02-10T14:00:42" color="#45d325">}}

{{<matomeQuote body="FLTを解くのは計算機を使うのとは全然違うよ。スキルが違うし、機械的じゃないんだ。" userName="esafak" createdAt="2025-02-10T15:27:05" color="">}}

{{<matomeQuote body="リンク先を見てみて！" userName="levn11" createdAt="2025-02-11T07:55:36" color="">}}

{{<matomeQuote body="能力の問題だよね。人はLLMsを使って定理を証明するけど、LLMsが一般的な計算機として機能できるかは疑問だし、そうできなければ何か欠けてると思う。" userName="sega_sai" createdAt="2025-02-09T23:58:49" color="">}}

{{<matomeQuote body="LLMの定義によるよね。でも、基礎的な足し算を完璧にするにはニューラルネットを短期間でトレーニングできる。これにカスタムコードを使えば正しいアルゴリズムになるけど、LLMも同様に入力トークンを受け取って出力トークンを返すわけだから、似たようなもんだよ。" userName="daxfohl" createdAt="2025-02-10T03:12:12" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、大きな算術モデルが必要だね。それは計算機ってこと。LLMがコマンドラインのプログラムを呼び出して、確定的な答えが必要な計算機とかも使えたらいいね。" userName="emporas" createdAt="2025-02-10T16:41:20" color="">}}

{{<matomeQuote body="彼らは人間を置き換えようとしてるから、完璧でないから何かが欠けてるってのは分からないな。" userName="sebzim4500" createdAt="2025-02-10T10:57:23" color="">}}

{{<matomeQuote body="通常のニューラルネットは出力に保証がないから、そんなものは存在しないんだよね。手作業で重みを作ったトランスフォーマーが役に立つアルゴリズムを得たことはあるけど。" userName="Scene_Cast2" createdAt="2025-02-09T20:06:21" color="">}}

{{<matomeQuote body="逆に、計算機を与えて使い方を教えたLLMってあるの？単純な算数を脳で処理する必要がないように。" userName="scotty79" createdAt="2025-02-10T11:09:50" color="">}}

{{<matomeQuote body="Pythonインタープリターが使えるものは全て対象になるね。" userName="regularfry" createdAt="2025-02-10T11:12:27" color="">}}

{{<matomeQuote body="最近二つの矛盾したことを読んだんだけど、LLMsは定理証明を一般化できないって言ってて、でも別の論文では現代のLLMsはもう豊富な数学の知識を持っているかもしれないって書いてあった。もう何が何だかわからない！" userName="igleria" createdAt="2025-02-09T17:44:21" color="">}}

{{<matomeQuote body="この辛い現実を受け入れるには、人間の知識が実際には比較的小さな有限の分布を持っているから、モデルはそれにパターンマッチできるって認める必要があると思う。" userName="bilater" createdAt="2025-02-09T18:01:04" color="">}}

{{<matomeQuote body="人間の知識が小さいってのは誇張だよ。どんなLLMも俺が知ってることに関して正確な答えを出してくれない。俺はニッチなトピックの専門家だからな。専門知識がトレーニングデータに十分に反映されることはないと思うから、LLMが全部学ぶのは無理だ。" userName="gmueckl" createdAt="2025-02-09T18:27:26" color="#785bff">}}

{{<matomeQuote body="そういうニッチなトピックについてもっと知るにはどこに行けばいいの？" userName="whattheheckheck" createdAt="2025-02-09T19:41:44" color="">}}

{{<matomeQuote body="なんかAI会社のAIボットっぽい発言だね。でも、質の高い情報源を集めるボットを作るのは十分に可能だと思うよ。" userName="ashirviskas" createdAt="2025-02-09T23:36:44" color="">}}

{{<matomeQuote body="もしかしたら、LLMに学ばせるデータセットを最小限に減らして人類の知識を活かす方法があるかも。理屈を考えたりデータを処理したりできるなら、データを取り込む際に活用できるんじゃないか。" userName="UncleEntity" createdAt="2025-02-10T01:34:13" color="">}}

{{<matomeQuote body="人間の脳も比較的小さな回路で、モデルはそれを十分にモデル化できるってことなんじゃない？" userName="Davidzheng" createdAt="2025-02-10T04:28:43" color="">}}

{{<matomeQuote body="LLMは問題の正しい検索空間を生成できるけど、その中の解を見つけるのが効率的じゃないのかな。例えるなら、高校数学の授業を受けた生徒はオリンピックで金メダルを取れる実力あるのに、それを引き出すのが難しいのと似てるかもね。" userName="ak_111" createdAt="2025-02-09T20:15:18" color="">}}

{{<matomeQuote body="多くの人が言ってることは、事実確認できることだよ。特に懐疑的な人は、最先端のLLMを使って、誰かが言ってることが実際にできるか試してみるといい。最近の論文では、懐疑派が古いバージョンのLLMを使って検証してることもあって、それを確認するのが重要だよ。" userName="wrsh07" createdAt="2025-02-10T04:06:07" color="#45d325">}}

{{<matomeQuote body="数学的な知識が豊富でも、定理の証明が苦手なこともあるし、逆に競技数学の問題を解くのが得意でも知識が不足していることもある。専門分野だけで得意なこともあるしね。" userName="solomatov" createdAt="2025-02-10T01:42:54" color="">}}

{{<matomeQuote body="「LLMは絶対にXできない」ってのはいつも間違いだと思う。" userName="sebzim4500" createdAt="2025-02-09T22:12:49" color="">}}

{{<matomeQuote body="LLMはハルting問題を解決できないよ。それはTuringマシンでもだれもできないから。" userName="solomatov" createdAt="2025-02-10T01:43:21" color="">}}

{{<matomeQuote body="有限なサイズのLLMは有限のハルting問題を解くことはできるし、無限サイズのLLMは無限のハルting問題を解けるよ。" userName="woctordho" createdAt="2025-02-10T04:01:19" color="">}}

{{<matomeQuote body="ハルting問題の入力は有限サイズだから、つまりTuringマシンだよ。" userName="solomatov" createdAt="2025-02-10T04:32:24" color="">}}

{{<matomeQuote body="LLMは次の単語を予測できないと思う。" userName="theWreckluse" createdAt="2025-02-10T00:28:34" color="">}}

{{<matomeQuote body="画像の拡散モデルが5GBのモデルに全視覚世界を要約できるように、'reasoning patterns'は同じように圧縮できるんかな？全領域で使われる'基本的な推論パターン'は実際に限られてるのかもね。" userName="doug_durham" createdAt="2025-02-09T17:36:40" color="#38d3d3">}}

{{<matomeQuote body="ほんの少しの一般的な'推論パターン'はあると思うけど、適用するにはそのパターンだけじゃなくてドメイン特有の推論ステップも必要だよね。数学みたいなドメインでは特有のステップが役立つけど、数学にも多くのサブドメインがあるから、他の分野での技術はマッピングできる場合にしか使えないね。" userName="HarHarVeryFunny" createdAt="2025-02-09T17:54:44" color="">}}

{{<matomeQuote body="彼らが用意した817の数学問題は、数学の学生にとって多様な問題の学習素材としても有用なんじゃないかな。" userName="guyomes" createdAt="2025-02-10T00:11:25" color="">}}

{{<matomeQuote body="LIMOの仮説が本当なら、小さいモデルでも効率的な推論の潜在能力が引き出せるかもしれない。それが実現すれば、大きなモデルから小さなモデルへの力の移行が見込めるよ。" userName="Limoynada" createdAt="2025-02-09T19:39:55" color="#ff5c5c">}}

{{<matomeQuote body="推論は予測の技術なんだよ。現実の多くの観察を小さなモデルにまとめて、新しい観察をうまく予測することから成り立ってる。'もっとも単純なモデルで多くのことを説明できるのはどれか？'が大事な問いなんだ。" userName="akomtu" createdAt="2025-02-09T21:17:03" color="#45d325">}}

{{<matomeQuote body="LLMsの教育法が注目されてるのが面白いよね。" userName="sega_sai" createdAt="2025-02-09T17:59:48" color="">}}

{{<matomeQuote body="“My Fair Llama”か“Pygmallm”って名前がいいな。" userName="nicr_22" createdAt="2025-02-09T18:06:43" color="">}}

{{<matomeQuote body="Pygmalionっていう二年前からあるLLMがあるみたいだね。再活用するといいかも。" userName="Philpax" createdAt="2025-02-09T18:41:47" color="">}}

{{<matomeQuote body="JoyCaptionのVQAの学習で面白い結果が出たよ。たった600例で訓練したんだけど、元の800kデータからもかなり一般化できてる。難しいタスクには再試行が必要だけど、訓練データが多様だからだと思う。" userName="fpgaminer" createdAt="2025-02-09T20:39:16" color="#ff33a1">}}

{{<matomeQuote body="高品質なサンプルを使えば、少ないSFTデータでLLMの推論能力が発揮されるみたい。ただ、より優れた推論モデルが必要だから実用的ではないかも。" userName="tw1984" createdAt="2025-02-10T12:05:08" color="">}}

{{<matomeQuote body="論文のタイトルがちょっと誤解を招くかな。少ないデータでも良い結果が得られてるけど、やっぱりデータ増やせばさらに良くなると思うし。" userName="1R053" createdAt="2025-02-10T11:11:51" color="">}}

{{<matomeQuote body="GAIRはSJTUの生成AIラボだよ。" userName="jph00" createdAt="2025-02-10T04:16:13" color="">}}

{{<matomeQuote body="専門特化したサブモデルを交互に使ったら面白いかも。サブモデルの数を増やしても計算コストは下がるんじゃないかな。" userName="elif" createdAt="2025-02-10T12:57:12" color="">}}

{{<matomeQuote body="興味深い結果が出てるけど、逆の理論も提唱されてたりするから気を付けないとね。" userName="fallmonkey" createdAt="2025-02-09T18:47:21" color="">}}

{{<matomeQuote body="S1論文も同じことを最近やったね。合計1000のCoTでSFTだ。これでわかるのは、事前学習段階でCoT推論に必要な表現がすでに作られているから、探り出すのは簡単だってこと。R1-Zeroの純粋なRLや少しのSFTでもできるよ。" userName="antirez" createdAt="2025-02-09T18:46:40" color="#785bff">}}

{{<matomeQuote body="同じデータセットを使って人間の推論力を改善することってできるかな？例えば817個の数学の例を手動で分析したら、数学的な推論を改善する最適な戦略になるかな？同じ蒸留プロセスをLeetCodeにも適用できるのかな？" userName="xendo" createdAt="2025-02-09T19:40:47" color="">}}

{{<matomeQuote body="このトレーニングは推論を学ぶことよりも、LLMを自己評価を自動的に使うように条件付けることがメインなんだ。紙に、「小さなステップの後に、2分間考えて正しいかどうか確認し、代替案を評価する」と書いておけば、同じ効果を再現できるかもね。" userName="viraptor" createdAt="2025-02-09T19:50:18" color="">}}

{{<matomeQuote body="モデルが学習ループの外で外部メモリにパラメトリック情報を保存できるようになるまで、推論アーキテクチャを信じることはできないな。" userName="fabmilo" createdAt="2025-02-10T01:38:54" color="">}}

{{<matomeQuote body="どうしてそう思うの？" userName="pillefitz" createdAt="2025-02-10T05:29:44" color="">}}

{{<matomeQuote body="砂の一粒の中に世界を見、野花の中に天国を見出し、手のひらに無限を持ち、1時間の中に永遠を抱く。" userName="delichon" createdAt="2025-02-09T17:36:32" color="">}}

{{<matomeQuote body="この汚れた岩の影に来れば、君に何か違うものを見せてあげる。朝に背後にいる影でも、夕方に出会う影でもない、砂のひとつかみの中に知恵を見せてあげるよ。" userName="CamperBob2" createdAt="2025-02-09T17:51:18" color="">}}

{{<matomeQuote body="ここでの繋がりは何なの？ただ単に「less is more」って言葉があるだけなの？" userName="throwaway314155" createdAt="2025-02-09T18:00:19" color="">}}

{{<matomeQuote body="データの量を減らすこと（質を向上させること）に関する同様の研究があるかどうか気になるな。" userName="yalok" createdAt="2025-02-10T09:01:43" color="">}}

{{<matomeQuote body="それがPhiシリーズのモデルのアイデアだったんだよ。良いベンチマーク結果は出るけど、実際に使うと何かが欠けているってわかるね。" userName="sebzim4500" createdAt="2025-02-10T10:58:30" color="">}}

{{<matomeQuote body="チェットボットAIゼロはどこにあるの？AlphaGoゼロが自己学習で最高になったみたいに。" userName="ysofunny" createdAt="2025-02-09T17:37:43" color="">}}

{{<matomeQuote body="そういうのは製品としてはダメだよ。AIモデルが人間の書いた内容を見ずに自己対話で学ぶと、人間にとって理解不能なものになるかもしれない。会話に勝つみたいな基準もないし、どうやってモデルに報酬を与えるの？" userName="sebastiennight" createdAt="2025-02-09T17:41:28" color="">}}

{{<matomeQuote body="会話には勝ち負けがないから、どうやってモデルに報酬を与えるのかが問題だよね。" userName="CamperBob2" createdAt="2025-02-09T17:47:23" color="">}}

{{<matomeQuote body="証明を自動生成してくれるチャットボットが欲しい。証明内容は理解できなくても、証明をチェックするツールが理解できればいい。" userName="gpm" createdAt="2025-02-09T17:55:53" color="">}}

{{<matomeQuote body="ランダムにコードを出力するモデルを訓練して、そのコードが正しいかフィードバックを与えるというのは理論上は可能かも。けど、危険なコードが膨大にあるので、それを扱うのは非常にリスキー。" userName="sebastiennight" createdAt="2025-02-09T20:37:09" color="">}}

{{<matomeQuote body="コード生成も面白いかもだけど、具体的には正しさの formal proof を生成したいと思ってる。トレーニング方法を考えてるけど、まずは Rust コンパイラの上で実装を考えてる。どうなるかわからんけど。" userName="gpm" createdAt="2025-02-09T20:54:33" color="#785bff">}}

{{<matomeQuote body="証明を生成できるAIがどうやってプログラムの意図を理解するの？自己学習だけだとその目的を言語化できない可能性があるよ。" userName="krisoft" createdAt="2025-02-10T01:00:07" color="">}}

{{<matomeQuote body="求める証明を教えればいいんだ。周辺ツールが目的のチェックをしてくれる。プログラムの正しさを証明できれば、コードの理解やデバッグが容易になる。現状の技術は複雑なコードを理解するのに人の手助けが多いから、AIがそれを改善できるかも。" userName="gpm" createdAt="2025-02-10T01:35:45" color="#ff5733">}}

{{<matomeQuote body="証明を理解できなかったら、モデルが正しくない理由を説明しても難しいよね。" userName="Yoric" createdAt="2025-02-09T19:04:18" color="">}}

{{<matomeQuote body="大抵のケースでは何に対してどんな入力かを言えば十分だと思う。AIの推論を過信するのは危険かもしれないけど。" userName="gpm" createdAt="2025-02-09T19:11:30" color="">}}

{{<matomeQuote body="DeepSeek-R1-zeroに似たモデルはあるけど、問題点もあるみたい。無限に繰り返す、読みやすさがない、言語が混ざるって問題があるらしい。人が会話できるモデルが欲しいよね。とはいえ、研究としては期待できそうな分野だね。自己検証や反省、長い考え方の生成能力があるみたいだし。" userName="Chio" createdAt="2025-02-09T17:55:29" color="#45d325">}}

{{<matomeQuote body="DeepSeek-R1 ZeroとAlphaGo Zeroは名前似てるけど、全然違うんだ。AlphaGoは人間のゲームでトレーニングしたけど、AlphaGo Zeroは自分で何も見せずに学べることを証明した。DeepSeek-R1はトレーニングデータが必要だけど、集めるのが難しいんだね。DeepSeek-R1は元々のモデルからデータを生成して、それを使って進化してるってこと。" userName="HarHarVeryFunny" createdAt="2025-02-09T19:08:38" color="">}}

{{<matomeQuote body="R1-Zeroは異なる重みを持った別のモデルなんだ。R1の生成過程とは別物だし、R1では最初にSFTが行われてからRLトレーニングをしてるけど、R1-Zeroは最初からRLトレーニングだけをしている。R1-Zeroは文での問題解決の改善に向けた考え方を学んでるけど、似てる部分もある。" userName="antirez" createdAt="2025-02-09T21:03:36" color="">}}

{{<matomeQuote body="R1のステップはこうだと思う：最初にV3からR0をRLで生成して、そこから推論データを作って、冷たいスタートのデータセットを作成。その後、そのデータセットを使って中間モデルをSFTして、最終的にR1へ進化させる。つまり、R1 Zero（R0）はこのプロセスの最初のステップで生成されたモデルってことだね。" userName="HarHarVeryFunny" createdAt="2025-02-09T21:30:15" color="">}}

{{<matomeQuote body="ゲームのルールをデザインしなきゃいけないね。言語の正しい使い方だけを許可するルールで、言語の幅広さをカバーできるもの。それに数学やコードだと自動定理証明の技術でできるかもね。" userName="jebarker" createdAt="2025-02-09T17:55:28" color="">}}

{{<matomeQuote body="AlphaGo Zeroの強みは囲碁の言語に制約されてるところ。もし2つのLLMが互いにだけ学んでいたら、自分たちの言語を作ってしまいそう。この場合、すごい推論能力があっても、こっちには理解できない言語になっちゃうかも。人間も同じことで、時間が経つと独自の言語や方言ができることもあるし。" userName="wongarsu" createdAt="2025-02-09T17:44:33" color="">}}

{{<matomeQuote body="ちょっと混乱してる。これって数学の問題に対するQwenの蒸留みたいですね。何か見落としてる？" userName="aymaneSennoussi" createdAt="2025-02-10T05:05:45" color="">}}

{{<matomeQuote body="ここにいる人は、まずは1.データセットをあまり作らない方法、2.評価時に推論プロセスをL1-L5に分類することを読むべきだよ。" userName="ei625" createdAt="2025-02-09T18:00:18" color="">}}

{{<matomeQuote body="最初に非推論モデルを使って、次に推論モデルを適用してるってことだね。" userName="ei625" createdAt="2025-02-09T18:02:28" color="">}}

{{<matomeQuote body="最近の読書からの結論なんだけど、LLMは演繹ができないけど、それをうまく真似ることはできるっぽい。例えば、火星行きの道筋を描くためにはこのAIは信頼できないかも。でも、ElonにはこのAIは十分みたい。" userName="emorning3" createdAt="2025-02-09T18:48:28" color="">}}

{{<matomeQuote body="確かに、これらの機械は「推論」を見事に模倣してるよな。それに騙されちゃってるし。推論って言葉は、LLMを推進してる人たちによってねじ曲げられたし、みんなそれに乗っかっちゃった。ほんと、一種のマジックトリックだわ。" userName="bwfan123" createdAt="2025-02-09T20:06:27" color="#785bff">}}

{{<matomeQuote body="そうだね。いつかElonがAIにボタンを押せって言わせて、みんながそれを実行するのを見る日が来ると思うよ。きっとみんなやっちゃうし。" userName="emorning3" createdAt="2025-02-09T23:13:28" color="">}}

{{<matomeQuote body="彼らが人間より上手く模倣したとして、重要なのかな？って感じ。" userName="pillefitz" createdAt="2025-02-10T05:36:52" color="">}}

{{<matomeQuote body="最近、arxivのリンクに’解説’を付けるのが好きなんだよね。xD" userName="shashanoid" createdAt="2025-02-09T19:03:51" color="">}}

{{<matomeQuote body="広告のダウンvoteをするだけのkarmaが足りないよ。" userName="pinoy420" createdAt="2025-02-09T19:07:29" color="">}}


