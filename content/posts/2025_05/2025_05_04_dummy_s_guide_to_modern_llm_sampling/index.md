+++
date = '2025-05-04T00:00:00'
months = '2025/05'
draft = false
title = '何も知らない人へ 最新LLMサンプリング超入門'
tags = ["LLM", "サンプリング", "テキスト生成", "AI", "入門"]
featureimage = 'thumbnails/purple8.jpg'
+++

> 何も知らない人へ 最新LLMサンプリング超入門

引用元：[https://news.ycombinator.com/item?id=43887637](https://news.ycombinator.com/item?id=43887637)




{{<matomeQuote body="これに関連してだけど、僕たちのmin_pに関する論文がICLRで12000件中18位になって、オーラル発表になったんだ。ポスターも人気だったし、オーラル発表（私がyoshua bengioにこの件で文句言って、彼が一番最初の質問者になったんだ。2番目の発表者で19:30くらいからだよ。発表スライドもそこに置いてるけど、マジで面白いよ）。論文はこちら：https://arxiv.org/abs/2407.01082<br>min_pの著者の一人として断言できるけど、Top N sigmaは今のところ、汎用サンプラーとしてはダントツで一番だよ。あと、temperatureは今よりはるかに高くスケールできるし、そうすべき。min_pやTop N sigmaみたいな技術を使えば、温度100とかでも全然大丈夫なんだ。<br>それから、top_k=2と超高温っていう特殊なケース（記事の終わり近くで著者が推奨してないやつ）も、それ自体がすごく面白い。それをやると10語に1回くらいスペルミスが出るけど、なんか面白いクリエイティビティがあるように見えるんだよね。" userName="Der_Einzige" createdAt="2025/05/04 17:35:06" color="#785bff">}}




{{<matomeQuote body="基本的にはgreedyじゃないサンプラーってあるの？　つまり、実際に木を探索するやつ。分岐がめちゃくちゃ多いし、ノードの展開が高いのはわかるけど、探索しないってのがいつも変だなって思ってたんだ。" userName="toxik" createdAt="2025/05/04 18:22:43" color="">}}




{{<matomeQuote body="beam searchとその派生以外で？（constrained beam searchっていうあまり知られてないけどめちゃくちゃ強力なのも含めて、いっぱいあるよ：https://huggingface.co/blog/constrained-beam-search）<br>あと、MBR（minimal bayes risk）サンプリングは入るかな？<br>それから、ICLRでこの論文もあったよ。この質問に関連してる：https://arxiv.org/abs/2410.03968<br>この論文は基本的に、非ヒューリスティックな手法（beam searchとか）はヒューリスティックな手法に比べて有害だって主張してるんだ。" userName="Der_Einzige" createdAt="2025/05/04 22:38:32" color="#ff5733">}}




{{<matomeQuote body="Beam Search samplingはたまに使われてるよ。" userName="Kubuxu" createdAt="2025/05/04 19:16:24" color="">}}




{{<matomeQuote body="ここで触れられてないことだけど、サンプラーはモデルの内部状態にアクセスできないってことがある。あれは出力分布に基本的な数学を適用してるだけで、技術的には多少の意味合いを持ってるけど、モデル自身と同じくらい賢くないとデコードできないんだ。<br>ここで説明されてるrepetition penaltyとかDRYみたいな特定のサンプラーはまさにこれ。モデルは無数のやり方で繰り返す可能性があるけど、それを全部防ぐ唯一の方法はより良い訓練であって、n-gram検索とか他の古典的なNLP手法じゃない。これは基本的に、全ての穴に指を突っ込んで塞ごうとしてるようなもの。指、いくつ持ってるの？<br>自己回帰プロセスをハッキングするのは、Min-Pみたいなちょっとした改善や、いくつかの気の利いたトリックを可能にする簡単な部分もあるけど、もし悪いモデルを良いモデルに変えるためにそれをやってるなら、それは間違ったやり方だよ。" userName="orbital-decay" createdAt="2025/05/04 17:37:26" color="#38d3d3">}}




{{<matomeQuote body="いやいや、未創造的なモデルを創造的なモデルにするためにやるんだよ。サンプリングがあまり重要じゃないとか、bitter lessonに違反するとかっていう考えこそ、私がICLRのオーラル発表でアカデミック界全体に、この種の研究に対する巨大な盲点があると指摘せざるを得なかった理由なんだ！<br>Top n sigmaは2024年半ばから、min_pは2023年頃からあるのに、オープンソース以外のもの（つまりHF/vllm以外）には、これらの革新がまだ統合されるのを待ってる状態。API提供者はモデルが”too creative”になるリスクに対処したくないから、わざとゆっくりやってるんだよ（あと、高い温度はたぶん彼らのwatermarkingを壊す）。<br>もう一つ—モデルに自分のサンプリング設定を認識させるのは、もしトークンごとや生成ごとにモデルにフィードバックするだけなら、超簡単だよ（例えばstructured generationを使うとか）。モデルは自分のサンプリング設定を制御できるから、ちょっとした追加プログラミングだけで「内部状態にアクセスできる」んだ（今じゃモデルがそのコードを君のために書いてくれるかもしれないねlol）。" userName="Der_Einzige" createdAt="2025/05/04 17:39:52" color="#ff5c5c">}}




{{<matomeQuote body="たぶん、これにはvarianceっていう言葉の方が良いかもしれない。創造性はかなり曖昧な言葉で、例えばほとんどの人はR1をRP/物語で、制御不能な形で全部を脱線させる傾向があるから創造的だって言うだろうけど、他の現代モデルと同じようにvarianceはまだ足りない（推論チェーンをぶっ壊してlogprobsを見ると私の言いたいことがわかるよ）。bitter lessonは何か閾値じゃなくて、収穫逓減のカーブを説明してるんだ。簡単な部分にいる限りは大丈夫。<br>でも、もっと大きな問題は、概念は出力分布にデコードされる前に表現されてるってこと。自己回帰トランスポートをハッキングすることで、ある程度それらを操ることはできるけど、もしモデル自身がその概念が特定の概念に対応してるって学んでしまったら（そしてRLはまさにそうする傾向がある）、サンプリングでそれを直すのは通常難しかったり不可能だったりする。基本的には、out-of-distributionの出力を強制することになるから、精度を失ったり、モデルをさらに馬鹿にしたりするだけだよ。" userName="orbital-decay" createdAt="2025/05/04 17:55:45" color="#45d325">}}




{{<matomeQuote body="＞ いやいや、未創造的なモデルを創造的なモデルにするためにやるんだよ。これはICLRのオーラル発表でアカデミック界全体に、この種の研究に対する巨大な盲点があると指摘せざるを得なかった理由なんだ！<br>この意見、よく見るよ。XTC（めっちゃ直感に反する響きだけど）みたいなサンプラーを絶賛してる人さえいるけど、それは常に”創造的な”タスクについてだね。数学タスクみたいな、明確な正解/不正解があるタスクでは、”創造的な”サンプラーはどれもトップにならない。min_pでさえ（めちゃくちゃな温度なら例外だけど、それでも全体的な精度は通常の温度と通常のサンプリングより低いんだ）…<br>主な問題は、”創造性”があまりにも主観的な尺度で、適切に採点するのが難しいってことだね。" userName="NitpickLawyer" createdAt="2025/05/05 05:32:57" color="#ff5733">}}




{{<matomeQuote body="僕は”クレイジーな”温度は100くらいから始まると思うんだ。文献でよく言われる2-3じゃなくてね。<br>この投稿全体については君の言う通りだと思うけど、LLMを使ってるcoomers/erpの人たちがどれだけ多いか、そしてどれだけ使ってるかを君は過小評価してるんじゃないかな。XTCは彼らのために、ある種のslop removalの概念を与えるために作られたんだ。antislop sampler（Sam Peach、EQ benchの作成者から）ほどそのタスクには向いてないかもしれないけど、僕はXTCが出力に”スパイス”を加えるのにかなり良いと思ってるよ。<br>re: “創造性”の測定難しさは特にそうだね—特に採点する難しさ！ 僕たちもこのことで耳元で小言を言ってくる細かい人たちがいるんだ。君、もしかしてStanfordにいる？ IFYKYKだけど…" userName="Der_Einzige" createdAt="2025/05/05 14:31:14" color="">}}




{{<matomeQuote body="どうしてbitter lessonに違反してないことになるの？ 人間のロジックを使って後からモデルを修正しようとしてるじゃん。bitter lessonは単に、より良いモデルを訓練しろって言うだろうに。<br>まあ、それが君の主張に反するとは思ってないけど—むしろ、bitter lessonの問題点だと思うんだ。" userName="achierius" createdAt="2025/05/05 00:25:06" color="">}}




{{<matomeQuote body="このヒューリスティクスがタダ同然だから違反じゃないってのが主な論点だよ。LLMが作ったサンプラーは多分もっと良くなるけど、自己改善を始めるにはタダのヒューリスティクスがいくつかいるんだ。Bitter lessonの批判は、人間が作ったヒューリスティクスはタダじゃなくて、学習を遅くして「コンピュータに任せる」のを邪魔したってこと。High temp samplingはそこそこ良い合成データ作るのにすごく大事で、自然言語で「コンピュータに任せる」ことを可能にするんだ。高温での生成をちゃんとするには、もっと良いサンプリングしかないよ。" userName="Der_Einzige" createdAt="2025/05/05 14:33:52" color="#785bff">}}




{{<matomeQuote body="このガイドの主な関心事は、効率と複雑さの爆発を防ぐことみたいだね。" userName="neuroelectron" createdAt="2025/05/04 19:53:35" color="">}}




{{<matomeQuote body="最近、Ollama/llama.cpp向けのサンプリングガイドを書いてみたんだ。何かフィードバックとか修正あったら大歓迎だよ。リンクはこれね。https://smcleod.net/2025/04/comprehensive-guide-to-llm-sampl..." userName="smcleod" createdAt="2025/05/04 21:05:13" color="">}}




{{<matomeQuote body="これすごく良いね。全てが分かりやすくシンプルに説明されてるから、新しいことを試すチャンスが広がるし、効果的にやる方法も分かるよ。例えば、なぜ単語全体をトークンにしないの？限定された”robot dialect”を持つ”robot”を作るとか。新しい単語とか珍しい単語は無理だけど、学習データや入力データを修正して、単語を既存の語彙に翻訳すればいい。そうすると、文字通りrobotみたいな小さなマッピングになって、C-3POみたいに、どんな質問にうまく答えられるかユーザーに期待を持たせられるかも。" userName="neuroelectron" createdAt="2025/05/04 18:34:13" color="#45d325">}}




{{<matomeQuote body="＞ 例えば、なぜ単語全体をトークンにしないの？<br>単語だけのトークナイザーはRNN/LSTMの頃にみんなやってたことだよ。BPEとかWordPiece/SentencePieceみたいなトークン化より良くなることはないし、句読点みたいな意味のあるsemantic hintsを使えないから品質が悪くなるんだよね。" userName="minimaxir" createdAt="2025/05/04 18:56:33" color="#ff5733">}}




{{<matomeQuote body="代わりに層で意味的なsemantic hintsをエンコードすることもできるよ。正直、これはコストがかかるから、単語をトークンにするアイデアとはちょっと逆行するんだけどね。" userName="neuroelectron" createdAt="2025/05/04 19:24:39" color="#ff5733">}}




{{<matomeQuote body="これはすごく詳しいけど、関連するconstrained samplingについて、数週間前に作ったインタラクティブな記事があるんだ。リンクはこれね。http://michaelgiba.com/grammar-based/index.html" userName="michaelgiba" createdAt="2025/05/08 11:44:39" color="">}}




{{<matomeQuote body="LLMが”idea”を出力しようとするとき、”next token”じゃなくてね、logitsベクトルで選ぶとその元の”idea”が壊れるはずだよ... ”idea”がcompleteなら、logitsでサンプリングする必要はないはず。この考え方だと、サンプリングは出力レベル（”what will the next spoke word be”）の近くでやるべきじゃないね。" userName="mdp2021" createdAt="2025/05/04 18:03:34" color="">}}




{{<matomeQuote body="LLMsは”ideas”じゃなくて、次のトークンを正しく予測する確率を最大化するように学習されてるんだ。”idea”を学習の目標として定義することはできないよ。" userName="minimaxir" createdAt="2025/05/04 18:09:53" color="#ff33a1">}}




{{<matomeQuote body="Interpretability studiesは、これを見るのにいくつかの別の見方を示してるんだ。これはNewtonian vs Lagrangian mechanicsみたいだね。Autoregressive token predictionとか、pattern matching、idea conceptualization、超多次元空間でのpathfindingとか、色々な捉え方があるよ。" userName="orbital-decay" createdAt="2025/05/04 18:34:32" color="">}}




{{<matomeQuote body="アーキテクチャの問題だね。出力層近くで変えるのって、アイデアを扱うはずなのに逆説的だろ。”changing words before it says them”みたいな。アイデアを訓練のロス目的として定義できない？何をもってそう言うの？文とか段落も埋め込み空間に位置を持つじゃん。この記事は興味深いけど、根本的な問題（エレファント・イン・ザ・ルーム）を浮き彫りにしてるね。" userName="mdp2021" createdAt="2025/05/04 18:22:00" color="#38d3d3">}}




{{<matomeQuote body="LLMモデル自身が勝手にトークン化するってできるのかな？別のトークナイザーじゃなくて、どんな文字列でも受け取って、それをトークンにするNNを本体と一緒に学習させるの。" userName="amelius" createdAt="2025/05/05 02:50:13" color="">}}




{{<matomeQuote body="もうやってるよ。NNはトークンIDを直接扱えなくて、数値ベクトル（one-hotなど）にしないとダメなんだ。それを隠れ状態空間に変換する。トークン化をなくすとエンコーダーの負荷が増えるし、統計的に効率的なトークン化の方が良い。昔文字単位からトークン化に移行したのは効率のためだから、トークン化なしはたぶん割に合わないよ。" userName="kmeisthax" createdAt="2025/05/05 03:58:52" color="#785bff">}}




{{<matomeQuote body="「”anti”とか”ism”を事前にトークン化しないと、モデルの下位層が同じことやる」って言ってるけど、俺が言ってるのは、LLMの入力の前に文字をトークン（内部表現）に変換する別のNNのことなんだ。利点はLLMの表現が統一されること。欠点はNN内で重複するかもだけど、重み共有でいけるかも。" userName="amelius" createdAt="2025/05/05 09:58:49" color="#38d3d3">}}




{{<matomeQuote body="いやー、この分野って思ってたより奥が深いね。より良いサンプリングがモデルの限界をマジで解決するのか、それとも根本的な問題をパッチ当てしてるだけなのかな？って思うよ。" userName="gitroom" createdAt="2025/05/05 05:13:39" color="">}}




{{<matomeQuote body="これいいね！”Sampling”って思ったより色々なことをカバーしてるんだね。" userName="antonvs" createdAt="2025/05/04 17:11:59" color="">}}




{{<matomeQuote body="数年前に出た技術をアップデートしたものを「モダン」って呼ぶのは、ちょっと教養がないんじゃない？「モダン」っていうなら、何と比べて「モダン」なの？「クラシカルなLLMサンプリング」とでも言うの？" userName="ltbarcly3" createdAt="2025/05/04 21:19:05" color="">}}




{{<matomeQuote body="「数年前に出た技術のアップデートをモダンって呼ぶのは教養がない」って言うなら、まず辞書でも引いてみたら？ケンブリッジ辞書だと「モダン」は最新のアイデアや方法を使ったもの。記事はまさにそれを説明してるし、この7年で色々進んだ。GPT-1,2,3なんて今となっては完全に古い、つまりモダンじゃないよ。" userName="antonvs" createdAt="2025/05/05 12:47:47" color="">}}




{{<matomeQuote body="これらのアルゴリズムの多くは2019年（TFSとか）か、もっと前（temperature）に発明されたものだよ。" userName="Der_Einzige" createdAt="2025/05/04 22:39:35" color="">}}




{{<matomeQuote body="LLMってもっとずっと前からあるんだよ。ノーベル賞受賞も昔のブレークスルーを示してるし。ChatGPTは流行ったブレークスルーって感じかな。<br>スマホのキーボードだって10年前からLLM使ってるしね。" userName="eddyzh" createdAt="2025/05/04 21:23:40" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この記事超役に立つし説明も分かりやすいね。でも誰が書いたんだろ？DRY、つまり”repetition penalties”のところが興味深かった。俺は要約とかで原文の正確な引用が欲しい時があるんだけど、DRY penaltyってそれと逆の方向に働きそうだなって思ったよ。" userName="simonw" createdAt="2025/05/04 20:02:26" color="#ff33a1">}}




{{<matomeQuote body="Attributionがないことに気づいてなかったな。@AlpinDaleが書いたんだよ。" userName="nkko" createdAt="2025/05/04 20:24:14" color="">}}




{{<matomeQuote body="これかなり面白いね。最初のsoftmax temperature選んだ後に、こんなにいっぱい操作が行われてるなんて知らなかったなー。" userName="blt" createdAt="2025/05/04 17:27:23" color="">}}




{{<matomeQuote body="今どきのLLM APIで設定できるのって、紹介されてるテクニックのごく一部だけだってことも言っとく価値あるね。（だいたいtemperatureとかtop-p、top-kだけかな。他のpenaltyは計算コストかかるから）" userName="minimaxir" createdAt="2025/05/04 17:39:47" color="#785bff">}}




{{<matomeQuote body="他のpenaltyはそんなにオーバーヘッドかからないよ（min_pはほぼタダ）。APIプロバイダが提供しないのは、alignmentを破る可能性があるからだって。それがtop_p, top_k, tempが制限されてる理由。ちゃんとした設定いじりたいなら、oobabooga, sillytavern, huggingfaceコードを自分で動かすしかないね。サンプリングのイノベーションは今オープンソース界隈にいるよ。" userName="Der_Einzige" createdAt="2025/05/04 17:41:44" color="#38d3d3">}}




{{<matomeQuote body="貢献ありがとう！！！min_pは数学やコーディングにも役立つ？サンプリングで性能上げられる？APIの少ないパラメータでチューニングするガイドある？「t=0で決定的、t=1で創造的」って古い話しか聞かないけど、tempって本当にsoftmax temperature？Claude 3.7 Sonnetは思考モードでt！＝1.0ダメだけどGemini 2.5 ProはOKだし。t=0.0でコーディングとか良い結果なら、そのまま使い続けて能力失わない？" userName="thegeomaster" createdAt="2025/05/05 01:04:14" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
