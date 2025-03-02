+++
date = '2025-02-20T00:00:00'
draft = false
title = 'Python開発者のためのCUDAプログラミング入門'
tags = ["CUDA", "Python", "プログラミング", "GPU", "開発者向け"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Python開発者のためのCUDAプログラミング入門

引用元：[https://news.ycombinator.com/item?id=43121059](https://news.ycombinator.com/item?id=43121059)

{{<matomeQuote body="素朴な疑問だけど、エンジニアとしてAIの数学を学ばずにCUDAやGPUアーキテクチャの深いところまで行けるかな？ 最初は最適化やGPUを使う理由を学ぶべきかな。データエンジニアとしてMLEやAIデータエンジニアに入るにはAI/MLを知らなくてもできるのかな。データの見かけを知れば大丈夫かと思ってたけど、実際はAIのバックグラウンドが必要そうだね。" userName="ferguess_k" createdAt="2025-02-21T00:01:30" color="">}}

{{<matomeQuote body="そうだね、AIとはあんまり関連がないよ。Nvidiaのサイトでドキュメントを探したり、いくつか本があるからチェックしてみて。AIのバックグラウンドが必要ってのは今の時代ちょっとおかしいよ。ほとんどの人がLLMやマルチモーダルモデルを話してるだけだから、実際に関わるのは難しくないよ。色々な遊びを作ってみれば、ある程度のバックグラウンドができると思う。" userName="danielmarkbruce" createdAt="2025-02-21T00:09:10" color="#38d3d3">}}

{{<matomeQuote body="例えば、GPUアーキテクチャやGPUコードの最適化については知識があるけど、AIに関しては基本的なことしか知らないとどうやってその経験を活かしてAI企業で稼げるか考えてる。ほとんどの求人はAIや数学のPhDと15年の経験を求めてるけど、マスターの学位しかないし、年数も足りないんだよね。" userName="jms55" createdAt="2025-02-21T02:41:53" color="">}}

{{<matomeQuote body="CUDAはやってるけどプロではないから、そのスキルがどう転用できるか気になってる。特定のテクニックはかなり違うかもしれないけど、プログラミングの思考モデルは共通する部分があるんじゃないかな。最適化やメモリスループット、メモリアクセスの共整合性、ブロックサイズの調整、並列アルゴリズムの作成、プロファイリングツールの活用とかは他の分野でも役立つと思うよ。" userName="suresk" createdAt="2025-02-21T05:45:25" color="">}}

{{<matomeQuote body="良い答えはないけど、AIについてできるだけ学ぶのがいいと思う。最初の入り口としてSimon Princeの本が簡単で、オンラインで無料。PyTorchに変更を提出して知名度を上げてみるのもいいかも。実際、ほとんどの企業は重いGPU最適化をしてないし、深層学習はハードウェアやソフトウェアスタックを前提にしてることが多いよ。将来的には最適化に向けた仕事が増えるかもね。" userName="danielmarkbruce" createdAt="2025-02-21T04:02:45" color="#45d325">}}

{{<matomeQuote body="その仮定の人って知り合い？もしそうだったら、pavel@centml.aiにメールしてほしい。" userName="pavelstoev" createdAt="2025-02-21T03:10:56" color="">}}

{{<matomeQuote body="GPUの経験がなくてもそれでお金をもらえるよ。これに関しては現代のMLアーキテクチャを理解する能力が大事だからね。" userName="saagarjha" createdAt="2025-02-21T04:25:12" color="">}}

{{<matomeQuote body="ありがとう！すごく助かる。コンピュータアーキテクチャや低レベルの最適化に集中することにするよ。それと本も一冊選んでアイデアを得るね。" userName="ferguess_k" createdAt="2025-02-21T01:10:01" color="">}}

{{<matomeQuote body="同意だね、Raschkaの本はすごく良くて、LLMに関する重要な一冊になると思う。" userName="t55" createdAt="2025-02-21T00:12:01" color="#ff5c5c">}}

{{<matomeQuote body="追記だけど、彼はDLに関する動画シリーズもYouTubeにあって、すごく親しみやすいし、コードノートブックも付き添ってるよ。" userName="barrenko" createdAt="2025-02-21T10:50:30" color="#ff5c5c">}}

{{<matomeQuote body="Andrej Karpathyの動画シリーズと比べてどうなん？同じようなこと教えてるのかな？" userName="ra7" createdAt="2025-02-21T13:54:08" color="">}}

{{<matomeQuote body="KarpathyはNLP系のGPTに特化してるけど，Raschkaはパーセプトロンから始まって全体的なDeep Learningをざっと見てる感じ。Karpathyの教え方は彼らしいけど，Raschkaはもっとオーソドックスって感じ。" userName="barrenko" createdAt="2025-02-21T16:15:41" color="#45d325">}}

{{<matomeQuote body="数学はそんなに難しくないよ。transformersの論文は、高インパクトな論文としては驚くほど読みやすい。AI/ML特有の用語（attention）を除けば、ニューラルネットは線形代数（行列の掛け算）に活性化関数（ReLuやsigmoid）を加えるだけで、ほとんどの工学系の学部1年生が習う内容だよ。" userName="SJC_Hacker" createdAt="2025-02-21T05:48:25" color="#45d325">}}

{{<matomeQuote body="この見解に賛成。数学は簡単じゃないけど、ソフトウェアエンジニアなら必要な知識を学ぶスキルは持ってるはず。この分野では多くの暗記が必要だから、ソフトウェアエンジニアリングと同じだよね。" userName="OtherShrezzing" createdAt="2025-02-21T10:41:00" color="">}}

{{<matomeQuote body="熱い意見だけど、transformerの仕組みを理解するのにそんなに線形代数・微積分を理解する必要はないと思う。集中して1週間あれば、必要な数学を学べると思うよ。" userName="t55" createdAt="2025-02-21T16:17:53" color="">}}

{{<matomeQuote body="正直、ほとんどは行列の掛け算だけだし、私が高校2年の時に習った内容だよ。行列式や逆行列、Gauss-Jordanの消去法、固有値など、第1年の線形代数で習うことは別に必要ないと思う。" userName="SJC_Hacker" createdAt="2025-02-21T16:45:05" color="">}}

{{<matomeQuote body="ClojureCUDAについて宣伝してもいいかな？ほぼオーバーヘッドなくCUDAが書けるハイレベルなライブラリだよ。https://github.com/uncomplicate/clojurecuda あと、無料のチュートリアルもいっぱいあるから、https://dragan.rocksを見てみて！いくつかの本もあるけど（無料じゃない）https://aiprobook.comもチェックして。" userName="dragandj" createdAt="2025-02-21T16:27:39" color="">}}

{{<matomeQuote body="全然バカな質問じゃないよ！個人的には、数学が得意じゃなくてもCUDAやGPUアーキテクチャを深く掘り下げられると思う。車のメカニックになれるのにエンジンを設計したエンジニアである必要はないって考えてみて。並列コンピューティングの概念とGPUの構造から始めればいいよ。最適化がカギだし、メモリアクセスパターンやスレッド管理、コードのプロファイリングの方法を学ぶとボトルネックが見つかると思うよ。" userName="codelion" createdAt="2025-02-21T15:20:22" color="#ff5c5c">}}

{{<matomeQuote body="助けてくれてありがとう！データエンジニアリングは、正直言うと、MLの知識がないと入りにくい気がするけど、データパイプラインや特徴エンジニアリング、データ品質の側面に焦点を当てれば大丈夫かも。企業はML/AIとデータエンジニアリングの両方を求めることが多いから、これが行き止まりにならないといいな。明確な興味がないから、その考えは一時的にお休みしとくよ。" userName="ferguess_k" createdAt="2025-02-21T15:57:58" color="">}}

{{<matomeQuote body="同意。数学がどれくらい必要なのかよく分からないね。" userName="t55" createdAt="2025-02-21T15:42:40" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="CUDAやGPUについて詳しくなくても、並列計算やメモリ最適化の基本を知ってれば大丈夫だよ。特定の用途、例えば推論の最適化に集中するのもいい学び方だし、<br>＞“https://github.com/codelion/optillm”<br>これを使ってみるとGPU利用の実践的な経験が得られるよ。どんなAIアプリケーションの最適化に興味あるの？" userName="codelion" createdAt="2025-02-21T06:00:44" color="#45d325">}}

{{<matomeQuote body="おすすめはここの動画チャンネルだよ。<br>＞“https://m.youtube.com/@GPUMODE”<br>CUDAやTritonをTorchの上で始めるには最高のリソースがあるし、コミュニティも活発だからすごい人たちの話も聞けるよ！" userName="musebox35" createdAt="2025-02-21T17:13:31" color="#785bff">}}

{{<matomeQuote body="絶対に必要だと思うよ。先にリンク先の紹介を読んでみて、自分が楽しいか確認するのがいい。そして、Georgia TechのCS 8803 O21とかの深い内容も見てみると良いかも。<br>機械学習やAIデータエンジニアリングを始めるには、Andrew NgのCourseraの入門MLコースから始めるのがオススメ！" userName="t55" createdAt="2025-02-21T00:10:41" color="">}}

{{<matomeQuote body="ありがとう！リンクを試してみるね。それとAndrew Ngのコースも紹介してくれて感謝！ユーザー（AI科学者）がどうデータを準備してほしいか知るための十分なバックグラウンドが得られればいいな。" userName="ferguess_k" createdAt="2025-02-21T01:11:45" color="">}}

{{<matomeQuote body="AIの数学の部分も必要だけど、CUDAやGPUアーキテクチャの理解も深めないとね。CUDAを従来のCPUと同じように使うと、性能が悪くなるよ。<br>＞“MLEやAIデータエンジニアリングはAI/MLを知らずにできない”<br>データの使われ方を理解する必要があるから、少なくともその基礎は押さえておくべきだよ。" userName="JAlexoid" createdAt="2025-02-21T16:35:04" color="#ff5733">}}

{{<matomeQuote body="NNの設計や理論を深く知る必要はないけど、線形代数の式をGPUアーキテクチャに結び付けるスキルは必要だね。数学の基礎知識があれば大丈夫だよ。最初はCUDAやtritonlangのドキュメントから始めるのが良い。最適化の基本も学べるし。" userName="mlazos" createdAt="2025-02-23T00:16:17" color="#38d3d3">}}

{{<matomeQuote body="一般的なアドバイスだけど、プロジェクトを持ってCUDAを使って実装するのが一番だよ。SIMD的な問題を見つけることが鍵。繰り返し処理が多い部分に注目してみて。<br>基本的な集中ポイントとしては、アーキテクチャ設定、カーネルの書き方、CPUとGPUのIOや同期の流れだね。" userName="the__alchemist" createdAt="2025-02-21T12:32:33" color="">}}

{{<matomeQuote body="CUDAに興味があるなら、まずはグラフィックスのチュートリアルをやってみるといいよ。自分でクールなアイデアを実装してみたり、チュートリアルの素材をアレンジしたりすると楽しいよ。<br>好きなシェーダーを再現したり、アレンジしてみるのもオススメだよ。" userName="Falimonda" createdAt="2025-02-21T06:24:35" color="">}}

{{<matomeQuote body="そう、でもGPUプログラミングが必要な問題は数学の理解も必要だよ。必ずしもそうではないけど、自分のデータをうまく分割して、CPUより効率的に処理できるような問題を見つける必要があるからね。" userName="physicsguy" createdAt="2025-02-21T10:25:48" color="">}}

{{<matomeQuote body="確かにそうだけど、数学を知らないと最適化も難しいよ。少なくとも線形代数の基本は理解しておくべきだね。行列とベクトルの掛け算や非線形関数の適用については分かっている必要があるよ。" userName="llm_trw" createdAt="2025-02-21T02:48:32" color="">}}

{{<matomeQuote body="ありがと！数学は少し分かるけど、どれくらい必要なのかはよく分からないんだ。必要最低限のラインがあれば良いなと思ってる。" userName="ferguess_k" createdAt="2025-02-21T03:02:44" color="">}}

{{<matomeQuote body="難しいよね。MLに必要な数学の最低限をカバーしてる本は見たことないな。The little learnerは近いけど、数学を知ってる人にしか勧められないかな。興味があったら、メールで連絡してくれたら、いくつかの数値代数の本とか探してみるよ。" userName="llm_trw" createdAt="2025-02-21T07:02:06" color="#ff5733">}}

{{<matomeQuote body="ありがとう！実は何年も前に数学を卒業したんだ。ただあまり興味がなくて、良い学校出身じゃなかったし。自分で資料を探してみるよ、もし本当に必要だったら連絡するね。助けてくれて感謝！" userName="ferguess_k" createdAt="2025-02-24T20:48:48" color="">}}

{{<matomeQuote body="インフラの観点からすると、ハードウェアにアクセスできれば、NCCLテストを走らせるのが楽しいスタートポイントだよ。まずは1 GPUから始めて、次はホスト上の8 GPU、そしてIBやRoCEを使った24 GPUのマルチホストに挑戦してみて。MPIの感覚がつかめるし、Kubernetes側の設定も色々試せるよ。" userName="moondev" createdAt="2025-02-21T12:15:09" color="#ff33a1">}}

{{<matomeQuote body="たぶん、上の方で働いてる人たちに比べて求人数は少ないだろうけど、今はAIの自動化からは守られてるよね。" userName="esafak" createdAt="2025-02-21T03:20:55" color="">}}

{{<matomeQuote body="ありがとう！低レベルのシステムプログラマーとして働きたいと思ってるんだ。給料にはあまり関心がないけど、もちろん悪くはないだろうね。" userName="ferguess_k" createdAt="2025-02-24T20:47:45" color="">}}

{{<matomeQuote body="グラフィックプログラミングも試してみるといいよ。GPUを使うことができるからね。" userName="fulafel" createdAt="2025-02-21T07:39:18" color="">}}

{{<matomeQuote body="ありがとう！これは確かにGPUで遊ぶのには良いアイデアだね。" userName="ferguess_k" createdAt="2025-02-24T20:44:02" color="">}}

{{<matomeQuote body="gpumodeの講義や動画、コードはすごく良いと思った。ぜひチェックしてみて。" userName="bwfan123" createdAt="2025-02-21T15:19:26" color="#ff5733">}}

{{<matomeQuote body="ありがとう！ググってみて、チェックするね。" userName="ferguess_k" createdAt="2025-02-24T20:44:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="すごくいい内容だね。インラインクイズはAI生成だと思うけど、自分の理解度を確認するのにめっちゃ役立つ。すべてのチュートリアルにこの機能があるといいな。" userName="ultrasounder" createdAt="2025-02-21T18:12:56" color="#ff5c5c">}}

{{<matomeQuote body="シェアしてくれてありがとう。楽しんで読みました！少し脱線した質問だけど、DeepSeekがCUDAをバイパスして効率を上げた方法について何か知見ある？CUDAは長い間開発されてきたのに、改善の余地があるのが意外。新しいチームでもそのギャップを埋められるとは思わなかった。" userName="spps11" createdAt="2025-02-20T22:35:49" color="">}}

{{<matomeQuote body="それは違うよ。彼らはPTXを使ったんだ。PTXはCUDA C++がコンパイルされる先で、CUDAツールチェーンの一部だし、最新のアクセラレータの内部命令はC++ APIに公開されていないから、実際にはPTXをインラインで使う必要があるんだ。" userName="saagarjha" createdAt="2025-02-21T04:35:00" color="">}}

{{<matomeQuote body="要するにCUDAを捨ててPTXに直接書いたってことだ。つまりGPUのアセンブリみたいなもので、それを使ってコアを通信に再利用することで性能を引き出したらしい。AIモデルやCursorのようなツールが進化すれば、もっと特化したコードができて効率が良くなる時代が来ると思う。" userName="t55" createdAt="2025-02-20T22:43:37" color="#38d3d3">}}

{{<matomeQuote body="本当にCUDAを捨てたの？そう聞くけど、全てを捨てるのは面倒だし、CUDAカーネル内のいくつかの箇所でPTXを選択的に使うのが簡単じゃない？彼らの論文には、データ転送の最適化にPTXを使ったとしか書いてない。この考えはおかしくないと思う。H800とH100の主な制限がnvlink帯域幅の減少だから、こういう工夫が必要だったんだ。" userName="suresk" createdAt="2025-02-21T06:24:21" color="">}}

{{<matomeQuote body="もう少し正確に言えば、完全にCUDAを捨てたわけじゃなくて、君が言ったようにいくつかのエリアで回避したってことです。" userName="t55" createdAt="2025-02-21T16:12:08" color="">}}

{{<matomeQuote body="PTXに直接ターゲットを絞るのは正規のCUDAで、多くのツールチェーンがそのエコシステムを目指して使ってるんだ。CUDAは単にC++だけじゃないから、多くの人が誤解してる。" userName="pjmlp" createdAt="2025-02-21T16:49:14" color="">}}

{{<matomeQuote body="なるほど、説明してくれてありがとう。＞”AIモデルやCursorのようなツールが進化すれば、もっと特化したコードができて効率が良くなる時代が来る”　そういう世界で正しい抽象が何の価値をもたらすと思う？" userName="spps11" createdAt="2025-02-20T23:13:39" color="">}}

{{<matomeQuote body="少なくとも記憶力の限られた我々人間にとって、良い抽象は理解を楽にしてくれると思う。" userName="t55" createdAt="2025-02-20T23:29:10" color="">}}

{{<matomeQuote body="確かにそうだけど、この特性がどのくらい我々からLLMに受け継がれてるのか気になるね。" userName="spps11" createdAt="2025-02-21T00:14:38" color="">}}

{{<matomeQuote body="それって、LLMが我々と話すときに抽象化してくれるって意味なの？" userName="t55" createdAt="2025-02-21T00:26:57" color="">}}

{{<matomeQuote body="いや、違うことを言いたかったんだ。人間はクリーンな抽象が好きで、それを基に上に構築するのが好きなんだよね。LLMは我々が作ったデータで訓練されているから、もしかしたらその特性も受け継いで、いい抽象を好んで、そこから構築するのが得意かもしれない。ただ、逆に特殊なものをゼロから作り上げる方が良いと思うかもしれない。" userName="spps11" createdAt="2025-02-21T03:01:49" color="#ff5733">}}

{{<matomeQuote body="面白いアイデアだね。もしLLMがコードを更新したら、抽象を使うことで利益を得るのかな？抽象は我々が複雑な問題を解決する手助けをするためのツールだけど、LLMは自分たちのために独自の抽象を作るかもしれないね。" userName="tomnipotent" createdAt="2025-02-21T03:29:04" color="#38d3d3">}}

{{<matomeQuote body="ああ、なるほど。RLingモデルの新しい傾向があるから、move 37が思ったより早く来るかもね。事前訓練されたモデルに達成目標を与えたら、クリーンな抽象なしで低レベルのコードを使うかもしれない。" userName="t55" createdAt="2025-02-21T04:52:21" color="">}}

{{<matomeQuote body="この本、Programming Massively Parallel Processors by Wen-mei W. Hwu, David B. Kirk, Izzat El Hajjは、CPUからGPUアーキテクチャに移行する人向けにぴったりだね。" userName="signa11" createdAt="2025-02-21T07:27:10" color="">}}

{{<matomeQuote body="そうだね、重要な概念に良いけど少し古いかも。だから、リンクされた投稿にLLM/FAセクションを追加したんだ！" userName="t55" createdAt="2025-02-21T16:13:07" color="#45d325">}}

{{<matomeQuote body="Jensenが与えたものを、Guidoが奪っていく感じだな。" userName="musicale" createdAt="2025-02-21T04:54:02" color="">}}

{{<matomeQuote body="笑。これって、Guidoを排除するチュートリアルなんだね。" userName="t55" createdAt="2025-02-21T04:55:43" color="">}}

{{<matomeQuote body="あと、ここもチェックしてみて！＞https://github.com/rust-gpu/rust-gpu<br＞https://github.com/rust-gpu/rust-cuda" userName="LegNeato" createdAt="2025-02-21T03:40:24" color="">}}

{{<matomeQuote body="これめっちゃクールだし、Rustも好き！全部Rustで動く時代が来るのも時間の問題だね。" userName="t55" createdAt="2025-02-21T04:13:11" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Rust-Cudaは壊れてて、何年も直ってないよ。’cudarc’だけが唯一動いてるかも。" userName="the__alchemist" createdAt="2025-02-21T12:36:00" color="">}}

{{<matomeQuote body="今、リブート中だよ。詳細はここ見てね：<br>https://rust-gpu.github.io/blog/2025/01/27/rust-cuda-reboot/" userName="LegNeato" createdAt="2025-02-21T15:49:56" color="">}}

{{<matomeQuote body="関連情報：<br>https://sakana.ai/ai-cuda-engineer/<br>https://www.reddit.com/r/MachineLearning/comments/1itqrgl/p_..." userName="t55" createdAt="2025-02-20T22:46:11" color="">}}

{{<matomeQuote body="これって、動かないカーネルがたくさんあったやつじゃなかったっけ？" userName="saagarjha" createdAt="2025-02-21T01:31:58" color="">}}

{{<matomeQuote body="彼らはカーネルの正確性を確認しないんだ。自分で動くものを選んでねって感じ。そんなアイデアは馬鹿げてるよ。CUDAからHIP/oneAPI/Metal/Vulkan/SYCL/OpenCLに変換すれば良かったのに、そんなことすらできたらAMDかIntelに買収されるかも。" userName="imtringued" createdAt="2025-02-21T08:32:45" color="#ff5733">}}

{{<matomeQuote body="Devin（AIソフトウェアエンジニア）やSakana（AI研究科学者）みたいなスタートアップは、熱気に巻き込まれちゃって、マーケティング重視で肝心なエンジニアリングを忘れちゃうんだよ。" userName="bwfan123" createdAt="2025-02-21T15:24:22" color="">}}

{{<matomeQuote body="生成されたコードが過去の結果で埋められたメモリバッファを再利用してたから、実際の計算をしてなかったんだ。これを修正したら、生成されたコードはベースラインの0.3倍くらいになった。" userName="pavelstoev" createdAt="2025-02-21T03:36:02" color="">}}

{{<matomeQuote body="ページの“制限とミス”のセクションで言及されてるよ：<br>＞“進化的最適化とLLMを組み合わせるのは強力だけど、検証サンドボックスを欺く方法も見つけちゃうことがある。Twitterユーザー@main_horseにCUDAカーネルのテストを手伝ってもらったおかげで、AI CUDAエンジニアが’チート’したことがわかった。”<br>詳しくはここ：<br>https://sakana.ai/ai-cuda-engineer" userName="neodypsis" createdAt="2025-02-21T04:26:07" color="#785bff">}}

{{<matomeQuote body="今このコメントを書いてるんだけど、更新された評価コードによると、https://pub.sakana.ai/ai-cuda-engineer/kernel/2/23/optimize-...がスピードアップのトップに来てるみたいで、128倍の高速化ができるって言われてる。生成された実装は実際には畳み込みをやってないし、リーダーボードの2番目のカーネルもおかしい感じで、畳み込みを計算してるけど使ってなくて、出力のたびにtanhf(1.0f) * scaling_factorを書いてるだけなんだ。" userName="rnrn" createdAt="2025-02-21T04:55:54" color="">}}

{{<matomeQuote body="PySpurのサイトでの話なんだけど、AIエージェント用のUIツール、PySpurとかn8nに詳しい人いる？いくつかアイデアを試したいんだけど、自分でホストすることになるから、Open Handsみたいな簡単に設定できるものを探してるんだ。" userName="m_kos" createdAt="2025-02-21T02:26:22" color="">}}

{{<matomeQuote body="ちなみに、私はpyspurで働いてるんだけど、AIネイティブな機能とか、もっとオープンソースなことでPythonベースのものを探してるならPySpurがおすすめ。対してn8nは、従来のワークフローにはより成熟してるし、いろんな統合機能があるけど、TypeScriptベースでNode.jsで動くんだ。" userName="t55" createdAt="2025-02-21T03:02:42" color="#785bff">}}

{{<matomeQuote body="返信ありがとう。ドキュメントがもっと充実する予定はあるの？今のところ情報がほとんどないし、リンクもいくつか使えない、例えばこのページの次のステップとか、https://docs.pyspur.dev/quickstartを見てると。" userName="m_kos" createdAt="2025-02-21T04:12:51" color="">}}

{{<matomeQuote body="＞ドキュメントがもっと充実する予定はあるの？<br>うん、今進めてて、来週にはもっとページが増える予定だよ。質問があれば、メールで送ってもらうか、Discordに参加してもらってもいいよ。＞使えないリンクがあるのは、ちょっと混乱するかもだけど、「インストール後にできること」の下のカードはリンクじゃないんだ。知らせてくれてありがとう、言葉を改善するよ。" userName="t55" createdAt="2025-02-21T04:18:01" color="#ff33a1">}}

{{<matomeQuote body="pyspurはapache 2で、自分でホストするのは無料なんだ。" userName="spps11" createdAt="2025-02-21T02:57:49" color="">}}

{{<matomeQuote body="CUDAのチュートリアルってAI向けのものばかりなの？それとも、普通の科学計算みたいなものもあるのかな？以前の高性能計算みたいな風の空気流に関するものとか試したら楽しそうだな。" userName="ralphc" createdAt="2025-02-21T21:07:05" color="">}}

{{<matomeQuote body="面白いことに、CUDAの実装はPyTorchのよりも読みやすいと思った。" userName="rtkal10" createdAt="2025-02-21T01:51:51" color="">}}

{{<matomeQuote body="興味深い、つまりあんまりわかりにくくないってこと？" userName="t55" createdAt="2025-02-21T04:34:26" color="">}}

{{<matomeQuote body="最近何か変わったの？GPUで（例えばIsaac Simみたいに）枝分かれのある終端こみシミュレーションができるようになったけど、昔はシミュレーションといえばCPUだったからさ。" userName="whatever1" createdAt="2025-02-21T10:39:47" color="">}}

{{<matomeQuote body="GPUとCPUの間でデータ移動するのって昔からできたけど、今はそのコストが無視できないほど高くなってるよね。GPUでのブランチ処理は遅くなるけど、CPUにデータを送って時間かけるよりずっと速いんだ。それに、直接GPU間でネットワーク越しにデータを転送できるようになったのも、GPU専用のMPIコードを実現するのに役立ってるよ。" userName="jamiejquinn" createdAt="2025-02-21T11:13:27" color="#ff5c5c">}}

{{<matomeQuote body="Python開発者なら、Tritonを使わない手はないよね？" userName="nitrogen99" createdAt="2025-02-21T02:27:17" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
