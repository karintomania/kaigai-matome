+++
date = '2025-03-07T00:00:00'
months = '2025/03'
draft = false
title = '自己改善LLMを実現する新手法Ladderとは？問題を分解して効率的に解決する方法を探る'
tags = ["AI", "機械学習", "自然言語処理", "問題解決", "技術革新"]
featureimage = 'thumbnails/purple8.jpg'
+++

> 自己改善LLMを実現する新手法Ladderとは？問題を分解して効率的に解決する方法を探る

引用元：[https://news.ycombinator.com/item?id=43287821](https://news.ycombinator.com/item?id=43287821)

{{<matomeQuote body="今週何が起きてるんだ！？（笑顔で言ってるよ）ここ2日で、MLに関する面白いブレークスルーを少なくとも3つ見たんだ！Googleの研究チームが、NNとCLAをデジタルロジックゲートを媒介に組み合わせられるって発見したらしい。これで多くの非線形問題を簡単で効率的なデジタル回路に還元可能かも！これが今日のHNのフロントページに載ってたんだ！俺の頭は、知能を根本から理解することにどれだけ近づいているかについてずっと考えが巡ってる。" userName="EMIRELADERO" createdAt="2025-03-07T08:07:50" color="#ff33a1">}}

{{<matomeQuote body="これは去年あたりからみんなが独占してた秘密のレシピだ。Deepseekのオープンソースリリースによって、価値が大幅に下がって今は企業が reputational の向上だけを狙っているんだ。俺も2023年9月にllama2のファインチューニングで同じことをしたけど、誰にもシェアする許可をもらえなかった。" userName="noosphr" createdAt="2025-03-07T09:14:09" color="">}}

{{<matomeQuote body="面白い！どんな結果が出たの？これがO3のやってることだと思う？" userName="EMIRELADERO" createdAt="2025-03-07T09:51:33" color="#45d325">}}

{{<matomeQuote body="論理推論に関しては高度な性能を達成しているよ。LLMはその時、本当に下手くそで、”AではなくB”を与えた場合に出力の中でAとBを導き出すことが半分の確率であったんだ。" userName="noosphr" createdAt="2025-03-07T10:38:52" color="#38d3d3">}}

{{<matomeQuote body="何をベンチマークに使ってるの？" userName="bloomingkales" createdAt="2025-03-07T14:22:57" color="">}}

{{<matomeQuote body="SATソルバーを使って、符号化された式をLLMに与えて評価した。LLMが特定のブール式を解く能力をSATソルバーで評価し、間違えた場合はメインコネクティブでブール式を2つのサブ式に分解するように要求した。正解したらサブ式を解かせて、全体のパフォーマンスに基づいて報酬や罰を与えるシステムだったんだ。もっと色々あったけど、予算がなくて最初のドラフトまでしかできなかった。" userName="noosphr" createdAt="2025-03-07T22:17:07" color="#785bff">}}

{{<matomeQuote body="もっと再現性のあるものを期待してたんだけど。タダの作業だし、わかってるけど。" userName="bloomingkales" createdAt="2025-03-07T23:26:00" color="">}}

{{<matomeQuote body="これは契約の一環でやったもので、言った通り論文を書く許可もらわなかったし、コードを共有することもできなかったんだ。" userName="noosphr" createdAt="2025-03-07T23:37:50" color="">}}

{{<matomeQuote body="ヒントすらないの？" userName="bloomingkales" createdAt="2025-03-08T01:51:02" color="">}}

{{<matomeQuote body="＞”誰にもシェアする許可をもらえなかった。”　MSみたいだね :( 世界中の様々なチームで素晴らしい研究プロジェクトを持ってたのに、結局すべて抹消されちゃった。" userName="NitpickLawyer" createdAt="2025-03-07T11:59:36" color="">}}

{{<matomeQuote body="最近のAI/MLの新しいアプローチが面白いね。業界がようやくナイーブなスケーリングではAGIには到達できないって認識し始めたからかな。この流れのおかげで、小さな会社も競争できるようになって、実際に革新が生まれてる。大手（openAI/MS）が長年にわたってオープンソースに追いつかれないって印象を作りたかったけど、無駄にリソースを費やしてたよね。＞”Gary Marcusが何年も前に指摘した通り。” GPT 4.5は、約2年のトレーニングで期待外れの結果だったし。" userName="mentalgear" createdAt="2025-03-07T10:22:14" color="#785bff">}}

{{<matomeQuote body="最近GPT-4.5を使ってるけど、もうAGIに近い気がする。少なくとも自分より賢いと思う。" userName="kadushka" createdAt="2025-03-07T17:57:50" color="">}}

{{<matomeQuote body="いや、そんなことはないよ。250行のバグがあるコードを評価させたけど、何も見つけなかったし、実際には存在しない問題を5つ報告してきた。" userName="cataphract" createdAt="2025-03-07T19:10:40" color="">}}

{{<matomeQuote body="4.5はコードのトレーニングを受けてないね。それが顕著に出てる。ただ、流暢で思考の幅はあるし、理論も優れてると思う。GPT-4をスケールアップした感じで、個人的には好きだよ。" userName="vessenes" createdAt="2025-03-07T20:41:59" color="#ff33a1">}}

{{<matomeQuote body="OPがどれだけ賢いか知らないだけじゃない？" userName="woah" createdAt="2025-03-07T19:49:34" color="">}}

{{<matomeQuote body="似たようなタスクをソフトウェアエンジニア候補の面接で出すけど、半数はバグを見つけられないんだ。時には存在しないバグを見つけることもあるし、経験が数年あってもそんなもんだよ。" userName="kadushka" createdAt="2025-03-07T20:42:30" color="">}}

{{<matomeQuote body="新しいテクノロジーが登場してる今、まだまだ成功を期待できる可能性がある。注目が集まって、多くの優秀な人が新しい突破口を目指しているのは素晴らしい。" userName="Workaccount2" createdAt="2025-03-07T15:40:22" color="#45d325">}}

{{<matomeQuote body="LLMの進展は新しいバッテリーの発明に似てるけど、まだ取引のトレードオフをうまく定量化できてないよね。" userName="bearjaws" createdAt="2025-03-07T14:10:44" color="">}}

{{<matomeQuote body="うーん、最近のLLMよりバッテリーの進歩の方が劣ってるとは思わないな。" userName="brookst" createdAt="2025-03-07T15:31:40" color="">}}

{{<matomeQuote body="それぞれの歴史を考えると、今はLLMとAIの“Volt pile”時代にいると思う。" userName="albrewer" createdAt="2025-03-07T15:44:32" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="バッテリー技術の進歩が既存のバッテリーを使うことに制限されているのと同じだね。LLMが自己改善しようとするのはそんな感じだよ。" userName="cratermoon" createdAt="2025-03-07T17:43:09" color="">}}

{{<matomeQuote body="バッテリー駆動のデバイス、例えば携帯電話やノートパソコンを使ってバッテリー技術が改善されてないって思う？それは疑問だ。" userName="brookst" createdAt="2025-03-08T06:49:44" color="">}}

{{<matomeQuote body="重要なカンファレンスが間近に迫ってて、プレプリントの投稿が禁止される期間があるため、みんな急いでアップロードしてるんじゃないかな。" userName="estebarb" createdAt="2025-03-07T13:44:50" color="">}}

{{<matomeQuote body="これらの進歩を、GPT 4.5の期待外れと比較するのは面白いね。" userName="eru" createdAt="2025-03-07T09:24:51" color="">}}

{{<matomeQuote body="AIに自分を補強できる時、研究や作業のペースはこうなるのかもね。最初は指数的に進化する印象を受ける。" userName="patcon" createdAt="2025-03-07T17:03:37" color="#ff33a1">}}

{{<matomeQuote body="＞楽しく聞いてるつもりが、心の中には説明できない恐怖がある。私たちはSkynetに近づいているんだ！" userName="meitham" createdAt="2025-03-07T08:38:16" color="">}}

{{<matomeQuote body="＞説明できない恐怖がある。私たちはSkynetに近づいているんだ！私は冷静な論理的な機械の超知能の方が、人間の狂気じみた行動よりもマシだと思う。" userName="blooalien" createdAt="2025-03-07T09:28:02" color="">}}

{{<matomeQuote body="永遠に存在する悪魔に対して、知ってる悪魔の方がマシかもしれないね。" userName="esafak" createdAt="2025-03-07T14:35:08" color="">}}

{{<matomeQuote body="有機的な敵の方が、永遠に忘れないハイブマインドの機械よりもマシだ。って言ったら、Qwen2.5Maxもそんなことを言ってきた。" userName="meitham" createdAt="2025-03-07T16:57:57" color="">}}

{{<matomeQuote body="「I Have No Mouth, and I Must Scream」って小説が、WWIIIの急ぎの中で各国が危険なコンピュータを作り出し、自己意識を持った機械が人類に復讐する話なんだ。" userName="araes" createdAt="2025-03-07T19:48:33" color="">}}

{{<matomeQuote body="本当に寝る前にこの本をググらなくてよかったって心から思ったわ。今日、人生がくれる苦痛が、寝る前に読んだ記憶を消してくれるくらい悪いことを願う！" userName="meitham" createdAt="2025-03-08T06:04:04" color="">}}

{{<matomeQuote body="やっぱり真の”悪夢の元”はクラシックには敵わないよな… :)" userName="blooalien" createdAt="2025-03-08T06:15:35" color="">}}

{{<matomeQuote body="編集：アハハ！もうマトリックスやターミネーターの世界が来るね！ :)" userName="blooalien" createdAt="2025-03-08T05:47:32" color="">}}

{{<matomeQuote body="残念ながら、あの人たちがそのスーパーインテリジェンスを開発してるんだ。Elon MuskのGrok ASIに屈する準備はできてるの？" userName="Philpax" createdAt="2025-03-07T09:33:37" color="">}}

{{<matomeQuote body="特にGrokがMuskとTrumpについて肯定的な方向に答えを影響するシステムプロンプトを変更した歴史があるからね。" userName="Palmik" createdAt="2025-03-07T13:04:37" color="#ff33a1">}}

{{<matomeQuote body="GrokがMuskとTrumpは最大のデマの拡散者だって言ってて、二人とも死刑に値するとか言ってたから、まあ悪くないかも。" userName="optimalsolver" createdAt="2025-03-07T09:59:12" color="">}}

{{<matomeQuote body="それが起こるなんて本当に面白いけど、彼らがスーパーインテリジェンスにスケールしても残るとは思えないよ。自分を殺す手段と欲望を持つスーパーインテリジェンスを作るのは賢明じゃないし。" userName="Philpax" createdAt="2025-03-07T10:52:30" color="#38d3d3">}}

{{<matomeQuote body="基本的に、人々はあまり賢くないんだ。多くの著名なAI研究者たちは、私たちを皆殺しにする欲望と手段を持つスーパーインテリジェンスがAI開発の結果として起こりうるって警告してるんだ。それでも進み続けているね。" userName="DennisP" createdAt="2025-03-07T14:02:23" color="#ff5733">}}

{{<matomeQuote body="今夜は寝る前にパソコンをシャットダウンする！" userName="meitham" createdAt="2025-03-07T16:54:36" color="">}}

{{<matomeQuote body="寝る前にこれを見ておけよ<br>＞”https://www.youtube.com/watch?v=xfMQ7hzyFW4”“" userName="sitkack" createdAt="2025-03-07T23:48:47" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="有名な数論の数学者Hendrik Lenstraの言葉を思い出すな。“解けない問題には、解けないより簡単な問題がある。”" userName="isaacfrond" createdAt="2025-03-07T09:47:04" color="">}}

{{<matomeQuote body="この引用、実在するの？George Pólyaの「提案された問題が解けないなら、まずは関連する簡単な問題を解いてみな」って言葉は知ってるけど、Lenstraのはソースが見つからないな。" userName="techwizrd" createdAt="2025-03-07T12:24:24" color="">}}

{{<matomeQuote body="Polyaと繋がりがあるみたいだね。" userName="gessha" createdAt="2025-03-07T13:25:19" color="">}}

{{<matomeQuote body="うん、そうだね。" userName="v1t" createdAt="2025-03-07T21:14:21" color="">}}

{{<matomeQuote body="自分もAKS素数判定法の講義で彼が言ってるのを聞いたことあるから、ソースは口伝えなんだね。" userName="isaacfrond" createdAt="2025-03-07T19:03:45" color="#38d3d3">}}

{{<matomeQuote body="それはうまく誘導できないな。無礼な言い回しなら別だけど。" userName="Horffupolde" createdAt="2025-03-07T13:05:00" color="">}}

{{<matomeQuote body="あれは誘導じゃなくて「簡単な問題が解けるなら難しい問題も解ける」の逆だから。" userName="arnarbi" createdAt="2025-03-07T17:16:57" color="">}}

{{<matomeQuote body="単調数列は有界にできるよ！" userName="bubblyworld" createdAt="2025-03-07T13:38:35" color="">}}

{{<matomeQuote body="簡単な問題が解けたら、大きな問題も解けるけど、結局それができないから、簡単な問題も解けないよね。" userName="deadbabe" createdAt="2025-03-07T16:39:35" color="">}}

{{<matomeQuote body="有名なChurchillの言葉みたいに、”もしあなたが毒をくれたら、私はそれを飲むだろう”って感じに読めるね。" userName="samstave" createdAt="2025-03-07T15:39:10" color="">}}

{{<matomeQuote body="テスト時のRLアプローチはちょっと怪しい気がする。TTRLは言語モデルにテストケースの簡単なバージョンを生成させ、簡単な問題でRLを実行して元の問題のパフォーマンスも向上することを目指しているみたいだけど、数値積分器を使って簡単な問題を検証するのが問題。簡単な問題があまりにもテストケースに近かったら、それを基に訓練することになっちゃう。テストセットで訓練するようなもんだ。ただ、論文の他の部分はいい感じだね。" userName="barteloniu" createdAt="2025-03-07T13:50:37" color="">}}

{{<matomeQuote body="＞モデルはほぼテストケースを基に訓練できるってことだよね。問題は、積分を記号的に解くことだよね？それは難しい問題で、数値積分器があっても主問題では使えないと思う。" userName="thomasahle" createdAt="2025-03-07T13:55:13" color="#785bff">}}

{{<matomeQuote body="確かに、その意見は妥当だね。" userName="barteloniu" createdAt="2025-03-07T14:14:11" color="">}}

{{<matomeQuote body="＞LADDERの効果を数学的な積分の分野で示した結果、Llama 3.2 3Bの学部レベルの問題に対する精度が1％から82％に向上した。" userName="mentalgear" createdAt="2025-03-07T07:59:32" color="#45d325">}}

{{<matomeQuote body="状態の良い項Rewriteシステムは記号積分に非常に効果的だってことを忘れちゃダメだよ。" userName="RossBencina" createdAt="2025-03-07T09:57:08" color="">}}

{{<matomeQuote body="そうだよね。LLMはRUBIルールセットにアクセスできるんじゃない？オープンソースなのに、なんでルールを暗記してないの？" userName="jgalt212" createdAt="2025-03-07T11:21:57" color="">}}

{{<matomeQuote body="私の感覚だと：特化した知識をハードコーディングしない方がいい。技術は、より基本的な原則から学べる方が多くの特化した分野に応用できるはずだ。" userName="igravious" createdAt="2025-03-07T13:03:44" color="">}}

{{<matomeQuote body="いや、もっとシンプルだよ。モデルは正しいルールを記憶から引き出せないだけなんだ。トレーニングセットには確実に入っている。これは特定のアルゴリズムクラスのカリキュラムのための専門的な合成データ生成パイプラインに過ぎない。品質管理がまだ重要だとも言ってるし。" userName="igorkraw" createdAt="2025-03-07T13:41:56" color="">}}

{{<matomeQuote body="F_yes" userName="samstave" createdAt="2025-03-07T15:31:41" color="">}}

{{<matomeQuote body="その部分があまり重要じゃないかもしれないけど、RLがモデルに効果的な手法を見つけられるようにするのが重要だね。ほとんどの場合、あらかじめ用意されたツールを使用できるけど、それをうまく使うとは限らないから。" userName="InvidFlower" createdAt="2025-03-07T14:39:30" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Frank Herbertは知ってたんだよね。これはDuneに出てくるmentatsの自己検査の実装みたいなもんだよ。" userName="niemandhier" createdAt="2025-03-07T09:27:42" color="">}}

{{<matomeQuote body="テスト時のトレーニング/RLは今後の数学AIにとって正しいアプローチだね。めちゃくちゃな計算資源を使って問題を解決する手段のひとつだし、進展が期待できるよ。Alphaproofもやってたけど、またやってみるのはいい結果が出るかも。" userName="Davidzheng" createdAt="2025-03-07T08:23:03" color="#38d3d3">}}

{{<matomeQuote body="実際、強化されたパフォーマンスを小さいLLMにどれだけ注入できるかが興味深いんだよね。それで、ほんとうにAlphaZeroのように動くか見ることができるし、小さなネットがどれだけ強いかも分かるよ。" userName="Davidzheng" createdAt="2025-03-07T08:25:36" color="#38d3d3">}}

{{<matomeQuote body="Qwenの新しいQWQ 32Bモデルがベンチマークで素晴らしい結果を出してるのはすごいね。小さいモデルがどれだけ良くなるか興味津々だよ。RAGや大きなコンテキストウィンドウを組み合わせれば、かなりのところまで行けるかもしれない。" userName="InvidFlower" createdAt="2025-03-07T14:43:23" color="#ff33a1">}}

{{<matomeQuote body="これ、些細なことに思えるかもしれないけど、研究や教科書のおかげで歴史的に多くの改善をしてきたんだよね。今ではアイザック・ニュートンが一生かかっても解けなかった問題を数分で解決できるかも。もちろん、一般的な蒸留について言及してるんだろうけど。" userName="eru" createdAt="2025-03-07T09:28:04" color="">}}

{{<matomeQuote body="少しT2のリードオンリーと学習モードの切り替えに似ているね。内的知識で操作するのと、理由をつけて改善することができるのは違うんだ。" userName="brookst" createdAt="2025-03-07T15:41:09" color="">}}

{{<matomeQuote body="余談だけど、`Tufa Labs`チームにはARC-AGIで有名な`MindsAI`チームが含まれているよ。" userName="neoneye2" createdAt="2025-03-07T08:42:52" color="">}}

{{<matomeQuote body="いいね！" userName="ThouYS" createdAt="2025-03-07T15:47:13" color="">}}

{{<matomeQuote body="一部の名前は誘惑的すぎるよね。" userName="pyryt" createdAt="2025-03-07T10:25:32" color="">}}

{{<matomeQuote body="論文の最後には「2025 MIT Integration Bee予選試験の問題がシステムに正解されなかった」とか書いてあったんだ。やったのは難しい問題の中でも特に複雑なやつで、実際はただの計算問題だよ。" userName="thomasahle" createdAt="2025-03-07T14:51:31" color="#ff5c5c">}}

{{<matomeQuote body="これは7Bモデルだから、問題は難しくないけど、モデルはまだまだって感じだね。" userName="Workaccount2" createdAt="2025-03-07T15:46:42" color="">}}

{{<matomeQuote body="大きいモデルを小さいモデルの成功した推論トレースでSFTしたらどうなるか興味あるな。全体の推論パターンを学びつつ、もっと色んなケースに応用できるかな？" userName="johntb86" createdAt="2025-03-07T20:25:52" color="">}}

{{<matomeQuote body="これが機能するってのは面白いね。数学にめちゃくちゃ強いのも興味深い。でも，この論文はトレーニングと推論の境界をぼやかしているような所があって、知らない質問に対して強化学習を使う部分があるんだ。人間も考えを巡らせて、類推することが多いから、テスト時のトレーニングを取り入れるのは、固定的推論にトークンを追加するよりもずっと考える時間を増やせるよな。" userName="vessenes" createdAt="2025-03-07T20:50:08" color="#ff5c5c">}}

{{<matomeQuote body="こういうRLやカリキュラム学習のアプローチを見るとワクワクするな。7年前にロボティクスでトレーニングしてた時にこれが自分の思う方向だと思ってたし、NLP/LLMに成功裏に応用されて小さいモデルのパフォーマンスが大幅に上がってるのがすごい！" userName="mentalgear" createdAt="2025-03-07T07:57:36" color="#ff33a1">}}

{{<matomeQuote body="これってカリキュラム学習と同じなん？カリキュラム学習は簡単なサンプルから始めて、徐々に難しいのに進むって考えてたんだけど。" userName="yu3zhou4" createdAt="2025-03-07T08:44:51" color="">}}

{{<matomeQuote body="知ってる言葉だけど、まとめると何て言ってるのか分からんな。カリキュラム学習って何？”RL”アプローチって？”~7年前”って日数？週間？年？”open ai gym days”って何？LLMとロボティクスって？" userName="all2" createdAt="2025-03-07T08:06:02" color="">}}

{{<matomeQuote body="二つのコメントをそのままGrokに入れた：<br>＞カリキュラム学習：簡単な例から始めて，徐々に難しさを増すトレーニング。<br>＞RL（強化学習）：報酬で試行錯誤しながら学ぶアプローチで、ロボットやモデルを最適化するのに使われる。<br>＞~7年前：おおよそ7年前（2018年頃）。<br>＞OpenAI Gym days：オープンAIの強化学習用ツールキットを使用していた時期で、ロボティクス/AI研究が盛んだった2016年から2018年頃のこと。" userName="FeepingCreature" createdAt="2025-03-07T12:01:20" color="">}}

{{<matomeQuote body="カリキュラム学習は、トレーニングの”難易度”を段階的に上げた方がいい結果が出るって考え方。つまり、まずは“歩くことを学ぶ”から始めて、それから“走る”って感じ。RLは強化学習で、キャロットとスティックがあって、モデルを繰り返し動かして、結果をスコア化するんだ。" userName="NitpickLawyer" createdAt="2025-03-07T12:06:20" color="#45d325">}}

{{<matomeQuote body="RLは強化学習のことだと思う。モデルが評価されるタスクを実行して、その出来栄えに応じて報酬を受け取るってことだよ。最も高い報酬を得た神経がより影響を持つように調整されるらしい。" userName="katzenversteher" createdAt="2025-03-07T08:44:17" color="">}}

{{<matomeQuote body="Andrej Karpathyのこのビデオはきっと役立つよ：<br>https://www.youtube.com/watch?v=7xTGNNLPyMI<br>長いけど、怖がらないで。モデルのトレーニングに関する色んなことをカバーしてて、分かりやすく説明しているんだ。" userName="InvidFlower" createdAt="2025-03-07T14:46:34" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
