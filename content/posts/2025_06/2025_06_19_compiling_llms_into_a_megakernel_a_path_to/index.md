+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'LLMを超速化？MegaKernelコンパイルで低遅延推論への道！'
tags = ["AI", "LLM", "推論", "コンパイラ", "GPU"]
featureimage = 'thumbnails/blue3.jpg'
+++

> LLMを超速化？MegaKernelコンパイルで低遅延推論への道！

引用元：[https://news.ycombinator.com/item?id=44321672](https://news.ycombinator.com/item?id=44321672)




{{<matomeQuote body="著者さん、こんにちは。on-GPU interpreterのアプローチは将来有望そうだね！Hacker Newsでこれとすごく似た同時期の研究見たよ。https://news.ycombinator.com/item?id=44111673<br>CUDAプログラミングモデルの基本（カーネル起動とか）が、ハードウェアをより効果的に使うための細かいタスクベース並列処理に取って代わられてるのが興味深いな。CUDAが逆に足かせになってたのかもって思わせるね。<br>この研究がPyTorchにexperimental backendとして入る可能性はどれくらい？<br>すごいね、共有ありがとう。<br>P.S. ちょっとしたtypoだけど、Part 1の最初の2つのパラグラフがほとんど同じだよ。" userName="refibrillator" createdAt="2025/06/20 01:33:07" color="#ff5733">}}




{{<matomeQuote body="素晴らしいフィードバックありがとう！StanfordのMegaKernelプロジェクトも似た課題に取り組んでるけど、手動でのCUDA実装に重点を置いてるんだ。一方、MPKはコンパイラ主導のアプローチで、ユーザーはPyTorchレベルでLLMを書いて、MPKが自動で最適化されたmegakernelにコンパイルする。僕たちの目標は、megakernelのプログラミングをもっと身近にすることなんだ。<br>CUDAが特に低遅延なワークロードで制約になりうるっていうのは全く同意。GPUがどんどん大きく速くなるにつれて、特に低バッチサイズで低遅延を最適化する場合、ハードウェアリソースをフル活用するスタンドアロンなカーネルを書くのは難しくなってるんだ。<br>＞ What are the chances we see your work land in PyTorch as an experimental backend?<br>その方向性は間違いなく期待してるよ。MPKがPyTorchのmegakernel生成を助けられると信じてるし、どう実現するか積極的に探ってる最中だよ。続報を待っててね！<br>＞ P.S. minor typo, your first two paragraphs under part 1 are nearly identical.<br>指摘ありがとう――記事を最終化する時に重複したパラグラフを消すつもりだったんだ。" userName="zhihaojia" createdAt="2025/06/20 02:38:42" color="#ff5733">}}




{{<matomeQuote body="著者さんへ―MPKの概要、分かりやすくて比較的理解しやすかったです、本当にありがとう。Hidet https://pytorch.org/blog/introducing-hidet/との類似性についてもコメントしてもらえませんか？<br>ありがとう！" userName="pavelstoev" createdAt="2025/06/20 15:58:20" color="#45d325">}}




{{<matomeQuote body="これめちゃくちゃクールだね。記事とGitHub READMEを読んで楽しかったよ。<br>これらの最適化は推論だけじゃなく、学習にも応用できるのかな？たぶん課題はバックワード計算と勾配通信の融合だよね。<br>あと、今はMoEみたいな動的なワークロードは扱ってないのも見たよ。最近、まさにこれをやってる論文を見つけたんだ。<br>FlashDMoE: Fast Distributed MoE in a Single Kernel - https://arxiv.org/pdf/2506.04667" userName="bytepoet" createdAt="2025/06/19 20:36:31" color="#ff5c5c">}}




{{<matomeQuote body="記事とgithub READMEを読んでくれてありがとう。学習のサポートは間違いなく可能だけど、学習は一般的にずっと大きなカーネルを含むから、カーネル起動のオーバーヘッドはそんなに大きくなくて、低遅延推論ほど効果は大きくないかも。<br>FlashDMoEの研究を共有してくれてありがとう。MoEモデルのサポートは僕たちの次のステップなんだ。続報を待っててね！" userName="zhihaojia" createdAt="2025/06/19 21:54:53" color="#ff33a1">}}




{{<matomeQuote body="情報ありがとう、すごく役に立つよ。<br>mirageの開発をフォローするのが楽しみだね。" userName="bytepoet" createdAt="2025/06/20 00:41:34" color="">}}




{{<matomeQuote body="個人的には、勾配学習の最適化に時間を投資するのはちょっと無駄だと思うな。実際の多くの学習タスクは性質的に離散値で、勾配じゃ学習できないし。" userName="ActorNightly" createdAt="2025/06/19 23:33:54" color="">}}




{{<matomeQuote body="https://riscv.org/blog/2021/02/hardware-description-language...<br>それはAIとGPUが登場する前は有望なアイデアの一つだったんだよね。<br>CPUは停滞してるし、当然みんな中間のソフトウェアやハードウェアをさらに最適化したいと思うだろう。<br>でも、GPUスタイルの並列コンピューティングが加速コンピューティングを支配するんじゃないかな。<br>汎用CPUはGPUを調整する小さな脳として残るだろうね。<br>ソフトウェアからハードウェアへの直接移行のアイデアは決して主流にはならないかもしれない。" userName="bigcat12345678" createdAt="2025/06/19 21:01:33" color="">}}




{{<matomeQuote body="僕はもっと擬似的な知性みたいのを考えてるんだ。シリアル通信でESP32に繋げるようなさ。基本的にトークン入力、トークン出力だから、不必要な部分をカットしようってね。クラウドモデルをクエリするのに似てるけど、自分がESPにはんだ付けしたシリコンだから、システムプロンプトの更新とかファインチューニングでHome Assistantが壊されることもないし。" userName="baq" createdAt="2025/06/19 21:12:35" color="">}}




{{<matomeQuote body="「汎用CPUがGPUを指揮する小さな脳になる」って言うけど、もしそうなるならもうとっくになってるはずだよ。CPUは得意なことをちゃんとやってるし、それはGPUが超苦手なタスクがたくさん含まれるんだ。もし世界にGPUしかなくて誰かがCPUを発明したら、天才だって騒ぐレベル。多くの人はGPUが何でもただ「優れてる」と思ってるみたいだけど、それはマジで間違い。普通のタスクでもびっくりするほどダメダメなことが多いよ。だから、GPUがCPUのアクセラレーターなのであって、逆じゃないのにはちゃんと理由があるんだ。" userName="jerf" createdAt="2025/06/20 18:46:26" color="#38d3d3">}}




{{<matomeQuote body="さっきのコメントへの返信だね。「汎用CPUがGPUを指揮する小さな脳になる」って部分について、非確定的な処理（GPU）に確定的な計算（CPU）をもたらすってことだね。" userName="mycall" createdAt="2025/06/19 23:15:29" color="">}}




{{<matomeQuote body="5～10年後、LLMが安定したらハードウェアに直接載せるのが良さそう。今の技術だと、1000億パラメータを1枚のウェハーに1.5ビット精度で直接実装できるかも。高精度だとゲート数が増えすぎるから、今は重みをメモリに置いて計算ブロックを使い回す方が理にかなってる。でも、将来のためには超低精度LLMが動くようにする必要があるね。" userName="nialse" createdAt="2025/06/20 06:34:05" color="#785bff">}}




{{<matomeQuote body="ただでさえ高いトレーニングコストにマスクコストを上乗せ？<br>もっと真面目に言うと、それって今までの多くのAIハードウェアスタートアップが既にやってきたこととほぼ同じじゃない？" userName="fc417fc802" createdAt="2025/06/20 00:56:16" color="#45d325">}}




{{<matomeQuote body="スタートアップの多くは、もっと汎用的な方向性だよね。多少はアーキテクチャに特化してるかもしれないけど、重みには特化してない。" userName="adgjlsfhk1" createdAt="2025/06/20 02:35:44" color="#ff33a1">}}




{{<matomeQuote body="現実的には、データフローに特化するのが精一杯だろうね。現代のCPUが100億個くらいのトランジスタを含んでると仮定しても、実際のロジックを除くと1.2 GiBくらいのストレージにしかならない（1トランジスタあたり1ビット）。DRAMのハードウェアはプロセッシング要素とは全く違うし、1つのモデルの重みを保持するにはDRAMチップがかなりの量必要になるんだ。" userName="fc417fc802" createdAt="2025/06/20 02:45:01" color="#ff5733">}}




{{<matomeQuote body="要するに… LLM-in-a-boxって結構いいアイデアじゃない？これからエアギャップ環境での作業があるんだけど、そういうのがあるとかなり便利だろうな。" userName="anitil" createdAt="2025/06/20 00:43:15" color="">}}




{{<matomeQuote body="それってローカル環境にデプロイしてネットワークケーブル引っこ抜けば簡単にできるんじゃない？高性能なLLMをサッと動かせるものって、結構ゴツい箱になるだろうけどね。高価なスペースヒーターの中のLLM、みたいな感じかな。" userName="fc417fc802" createdAt="2025/06/20 01:00:05" color="">}}




{{<matomeQuote body="BitcoinマイニングのUSB ASICみたいなのを想像してたんだ。使い物にならなくなってもe-waste（電子ゴミ）にならずに、chatgpt 2とかと話せるようになる、みたいな。LLMアプライアンスを思い描いてるよ。" userName="stirfish" createdAt="2025/06/20 01:21:20" color="">}}




{{<matomeQuote body="数百ワットの計算と、数百ギガバイトもの超高速メモリが必要って事実は、魔法のASICでもどうにもならないよ。もしできるなら、大手企業が将来のデータセンター拡張のために（文字通り）原子力発電所に投資したりなんてしないだろうね。" userName="fc417fc802" createdAt="2025/06/20 02:49:42" color="#45d325">}}




{{<matomeQuote body="GoogleはTPUっていう独自ASICを持ってるよね。他は主にNVIDIA、ちょっとAMDも使ってる。これはASIC開発が難しいのと、GPUの性能が高いから。トレーニングは電力もメモリも一番かかる部分で、何ヶ月もA100/H100を何台も動かす必要があったりする。推論はモデルをVRAMに入れっぱなしにできるし、H100 1台でも済むから安いよ。70BモデルならF16だと2台、F8なら1台でいける。32B以下ならH100 1台で十分。リクエスト処理には1〜2台のGPUがあればいいんだ。ASICはReLUみたいな処理を最適化できるけど、今のGPUは行列演算とかの機能もちゃんと持ってるし。CPUがSIMDみたいな高スループットな行列演算に対応するのが一番いいと思うんだ。そしたらシステムメモリ（RAM）が使えるから、大量のメモリにアクセスできるし、GPUみたいに別のチップを消費電力気にしながら使う必要がなくなる。コンシューマー向けデバイスでは既にそういう方向に向かってるみたいだしね。これで大きいモデルを高精度で動かしたり、大量の学習データを効率的に処理したりできるようになるんじゃないかな。" userName="rhdunn" createdAt="2025/06/20 07:46:54" color="#785bff">}}




{{<matomeQuote body="ASICがReLUとかを最適化できるって言うけど、それってH100にASICを追加してCPUとRAMも使うってこと？それかH100に specialized ML functions を組み込んだバージョン？どっちにしても普通のワークステーションに聞こえるけど。推論は確かに安いけど、速く動かすには raw horsepower（生馬力）、つまり wattage（電力）と熱対策が必要なんだよな。CPUに関してはメモリ帯域幅が深刻な問題だよ。 extreme high end hardware の最近の動向は追ってないけど、raw throughput（生のスループット）ではGPUに勝つのは難しいと思う。" userName="fc417fc802" createdAt="2025/06/20 09:25:40" color="">}}




{{<matomeQuote body="24ギガバイトあれば、小さな家庭やビジネスでローカルLLMを動かすには十分以上だよ。これは「ゲーミングPC」レベルで、「スペースヒーター」じゃない。みんなPS5とか家に持ってるわけだし。数百ギガバイトっていうのは、大規模クラウドLLMプロバイダーがパラメーター数を増やし続けた結果で、そのやり方は行き止まりで、もう negative returns（マイナスリターン）に達してるんだ。プロンプトエンジニアリングとファインチューニングが未来だよ。でもそれには developer brains（開発者の頭脳）が必要で、TFLOPs（計算能力）じゃない。" userName="otabdeveloper4" createdAt="2025/06/20 05:51:19" color="#ff33a1">}}




{{<matomeQuote body="それは1）どんなモデルを動かすか、そして2）いくつモデルを動かすかによるね。32Bモデル（Q4/Q5量子化）なら24GBでもギリギリ動くかもしれないけど、それ以上のモデル（最近増えてる70Bとか、Llama 4やDeepSeekみたいに大きいやつ）を動かすなら、モデルをRAMとRAMに分けなきゃいけない。まあ、24B以下ならコンテキストのための容量も含めて comfortably（快適に）動かせるけどね。もしtext-to-speech、speech recognitionみたいな他のモデルも使うなら、それらもモデルと処理/生成のためにVRAMを消費するから、動かせるLLMのサイズに影響するよ。" userName="rhdunn" createdAt="2025/06/20 07:57:15" color="">}}




{{<matomeQuote body="それは state of the art（最新最高の性能）で妥協するならの話でしょ。最高のモデルはやっぱり大きいモデルの傾向があるよ。VRAMから溢れるようなら、応答時間は drastically（劇的に）遅くなるし。「スペースヒーター」になるかどうかは、使えるRAMじゃなくて computational horsepower（計算能力）で決まるんだ。コンテキストウィンドウはどれくらい大きくしたい？最後にチェックした時は、あれはRAMの面でとてもコストがかかるし、大きい方がすごく望ましいとされてたよ。" userName="fc417fc802" createdAt="2025/06/20 09:31:36" color="#45d325">}}




{{<matomeQuote body="State of the art は finetuning で達成されるんだよ。Increasing parameter counts（パラメーター数を増やすこと）は a dead end（行き止まり）。Large contexts はすごく重要だけど、increasing parameter count（パラメーター数を増やすこと）のコストと比べたらRAMの面では cheap（安い）んだよ。" userName="otabdeveloper4" createdAt="2025/06/20 12:08:51" color="">}}




{{<matomeQuote body="That’s a really good point（それは本当に良い指摘だね）。MacBookでollamaを動かすbeyond（先）は考えてなかったけど、僕のラップトップを production（本番環境）にはデプロイしないもんね。" userName="stirfish" createdAt="2025/06/20 02:51:35" color="">}}




{{<matomeQuote body="matmuls（行列積）だけに焦点を当てて、CUDAもアーキテクチャも infinibands も抜きで、 everything-on-a-chip （全部一つのチップに）入れて、input tokens を input registers に、output tokens を output registers から、モデルが gates に焼き付けられてる状態にすれば、電力はいくらか節約できるはずだよ。10倍か2倍か100倍かは分からないけど、 certainly （確かに）gains（利益/改善）はあるはず。" userName="baq" createdAt="2025/06/20 07:52:37" color="">}}




{{<matomeQuote body="過去数ヶ月、vLLMとSGLangとかなり密接に work（作業）してたんだけど、これはEXACTLY（まさに）僕が後継プロジェクトがどうなるか envision（思い描いていた）ものなんだ— operation dependency graph を analysis（分析）して、そして fusing（融合）したり（ at a minimum 、少なくとも） scheduling tasks smarter （タスクをより賢くスケジューリング）したり。Congrats to the team（チームにおめでとうございます）。" userName="kp1197" createdAt="2025/06/19 21:06:09" color="#45d325">}}




{{<matomeQuote body="positive feedback どうもありがとう！僕たちはMPKが既存のLLM serving systems、 especially for low-latency LLM serving（特に低遅延LLMサービング）を enhance（強化）できるって信じてるんだ。 direction（この方向性）で others（他の人たち）と collaborate（協力）できるのが very excited（とても楽しみ）だよ。" userName="zhihaojia" createdAt="2025/06/19 22:02:42" color="#785bff">}}




{{<matomeQuote body="ちょっと関連したエピソードなんだけど、昔CUDAの小さなコンペがあったんだ。<br>並列処理しやすいCVアルゴリズムでさ。<br>俺は賢くやろうと思って、複数のカーネルで共有される中間結果をキャッシュしてみたんだ。<br>結果発表された時、他の参加者が俺より桁違いに速くてびっくりしたよ。<br>結局、彼らはキャッシュなんて一切してなかったんだ。<br>すべてを何千回も再計算するオーバーヘッドは、RAMを往復するオーバーヘッドに比べたらすごく小さかったんだよ。<br>たぶんこれも同じことだと思う。<br>MegaKernelにコンパイルすることで、レイヤーの境界が潰される。<br>おそらく計算は増えるし、共有される中間結果も減るだろう。<br>でも全体的には、メモリ往復が減るおかげで勝てるんだ。<br>特に畳み込みネットワークには最適なポイントがあるはずだよ。<br>MegaKernelがこれを考慮してるかは全然分からないけど。" userName="fho" createdAt="2025/06/20 08:29:13" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この改善はマジだよ！<br>それに、たくさんの研究と違って、コードがちゃんと動くんだ。Modal GPUを使ったら結果を再現できたよ。<br>ここにコードを置いとくね: https://github.com/mirage-project/mirage/pull/327/files<br>Triton+FlashInferとMPKを比較したら、MPKの方が全然速かったよ！" userName="gongy" createdAt="2025/06/20 03:09:26" color="#45d325">}}




{{<matomeQuote body="Qwen 8Bの数字が本当ならすごく印象的だね。前回のMegaKernelよりずっと実用的だ。<br>それはそうと、SMごとに永続する一つのカーネルってLarrabeeを思い出すな。<br>もしCUDAパスじゃなくて、従来のプロセス・スレッド・SIMDパスだったらどうなったんだろうね。" userName="liuliu" createdAt="2025/06/19 20:45:48" color="">}}




{{<matomeQuote body="このプロジェクトはCMUからなんだね。<br>StanfordのHazy ResearchもMegaKernelについて話してたよ。<br>ここで見れる: https://hazyresearch.stanford.edu/blog/2025-05-27-no-bubbles<br>この分野に競争があるのは良いことだね。（追記）<br>関連論文で、もっと大きな「mirage」プロジェクトについて書いてあるのがこれだけど、これは「megakernel」の手法には触れてないみたいだよ: https://arxiv.org/abs/2405.05751" userName="flakiness" createdAt="2025/06/19 21:43:04" color="#ff5733">}}




{{<matomeQuote body="ブログ記事の筆者だよ。Stanfordの仕事が並行してる取り組みだってのは正しいね。<br>主な違いは、こっちはコンパイル、つまりMegaKernelを自動で生成しやすくすることに注力してることなんだ。" userName="zhihaojia" createdAt="2025/06/19 21:50:23" color="#38d3d3">}}




{{<matomeQuote body="あ、前の返信で一句漏らしてた。StanfordのMegaKernelプロジェクトは似た課題に取り組んでるけど、手動でのCUDA実装に注力してるんだ。<br>一方、MPKはコンパイラ主導のアプローチだよ。<br>ユーザーはPyTorchレベルでLLMを記述して、MPKがそれを自動で最適化されたMegaKernelにコンパイルするんだ。<br>MegaKernelのプログラミングをもっとアクセスしやすくすることが俺たちの目標だよ。" userName="zhihaojia" createdAt="2025/06/20 02:41:16" color="#45d325">}}




{{<matomeQuote body="Hazy ResearchにはThunderKittensもあるんだよね、すごくクールなライブラリだ。<br>今のNVIDIA GPUモデルで最大限の効率を出すために、形式化とか、パイプライン化とか、分割統治とか、あとコンパイラやDSLを作るためにすごく努力してる人が多いんだなって思うよ。" userName="sigbottle" createdAt="2025/06/19 23:37:56" color="">}}




{{<matomeQuote body="これがCUDA Graphsより大幅なゲインを提供できる直感が働かないな。<br>GraphsはCPUの起動コストはすごく小さいし、仕事のほとんどはGPU自身のスケジューラにオフロードされてるはずでしょ？<br>MegaKernelだとカーネル境界でのI/Oのやり取りを避けられたり、ループ融合ができたりするのかもしれない。<br>他にもっと面白い最適化があったりするのかな？" userName="skavi" createdAt="2025/06/19 21:18:38" color="#ff5c5c">}}




{{<matomeQuote body="その通りだよ！CUDA Graphの起動コストは本当に小さい。Graphはカーネル単位でまとめてるけど、MegaKernelはさらに細かいタスクに分けて、依存関係を細かくコントロールするんだ。<br>MatmulとかAllReduceの例みたいに、Graphだと前のカーネルが終わるまで次のカーネルは始まれないけど、MegaKernelなら終わった部分から次のタスクを始められる。これでComputeと通信を重ねて実行できるんだよ。" userName="refulgentis" createdAt="2025/06/19 21:29:54" color="#785bff">}}




{{<matomeQuote body="なるほど、めっちゃ納得したよ。この細かいタスクのスケジューリングって、CUDA Dynamic Parallelismと関係あるの？もし違うなら、どこ調べればいいか教えてくれる？<br>プロジェクトのコード見てもいいんだけど、コンパイラ部分から切り離して理解するのは大変そうなんだよね。" userName="skavi" createdAt="2025/06/20 01:46:01" color="#ff5c5c">}}




{{<matomeQuote body="それはどっちかっていうと’手でタスクを組む’って感じかな。18k以上のコアを1つのカーネルで動かして、手動で（かライブラリで）細かい同期を取ったり、メモリのやり取りを非同期にして、できるだけパイプライン化するんだ。<br>Cooperative Groupsとかlibcudacxxのcuda::pipeline、あとCUBとかcuFFTDx, cuBLASDx, cuSolverDxみたいなツールを使うといいよ。" userName="touisteur" createdAt="2025/06/20 05:55:40" color="#45d325">}}




{{<matomeQuote body="＞ GraphのCPU起動コストは小さい<br>絶対違うね。カーネル1個起動するのとオーバーヘッドは同じくらいだよ。" userName="saagarjha" createdAt="2025/06/19 22:26:28" color="">}}




{{<matomeQuote body="なるほど、それはそうかもね。僕が“小さい”って言ったのは、“カーネル1個起動するのと同じくらいのコスト”って意味だったんだよ。<br>言いたかったのは、MegaKernelもGraphも起動コストは似てるはずってこと。" userName="skavi" createdAt="2025/06/20 01:40:32" color="">}}




{{<matomeQuote body="大事なのはカーネルの起動オーバーヘッドっていうより、グローバルメモリとL2キャッシュとか共有メモリの間でのメモリのやり取りだよ。融合カーネルで狙うのはそこ。CUDA Graphは確かに起動オーバーヘッド減らすのに役立つんだけどね。<br>これがLLMにそんなにうまく当てはまるかは、論文読まないと分からないな…。" userName="touisteur" createdAt="2025/06/20 05:40:43" color="#38d3d3">}}




{{<matomeQuote body="そうだね、CUDA Graphが起動オーバーヘッドを減らせるのはその通り。でも、データの依存関係がカーネル単位だから、レイヤーを超えた計算と通信のオーバーラップはサポートしてないんだ。" userName="zhihaojia" createdAt="2025/06/20 02:46:06" color="">}}




{{<matomeQuote body="スケールしたハードウェアでモデル使う上で、これめっちゃ重要な発見だね！このアプローチ、LLMだけじゃなくて他のニューラルネットワークにも応用できそうだ。色んな分野で試してみたら面白そうだな。" userName="bdbenton5255" createdAt="2025/06/19 22:48:44" color="">}}




{{<matomeQuote body="フィードバックありがとう！そうなんだ、このやり方は汎用的で、他のMLのタスクにも使えるって信じてるよ。" userName="zhihaojia" createdAt="2025/06/20 00:37:32" color="">}}




{{<matomeQuote body="もしGeForce RTX 5090で試したかったら、まだサポートされてないみたい。<br>＞ Support for modern GPU architectures. One of our next milestones is extending MPK to support next-generation architectures such as NVIDIA Blackwell. A major challenge lies in integrating warp specialization — a key optimization for newer GPUs — with MPK’s megakernel execution model.<br>「次の目標はNVIDIA Blackwellみたいな次世代アーキテクチャのサポートだよ。大きな課題は、新しいGPUの最適化であるwarp specializationをMPKのmegakernelとどう組み合わせるかだね。」だって。" userName="tuananh" createdAt="2025/06/19 23:38:05" color="#45d325">}}




{{<matomeQuote body="MPKで使われてるタスク実装は、今はA100向けに最適化されてるんだ。MirageコンパイラはHopperとかBlackwellみたいな他のアーキテクチャ向けも作れるんだけど、まだ全部は統合できてないんだよね。これはTODOリストの最優先事項だよ。乞うご期待！" userName="zhihaojia" createdAt="2025/06/20 00:35:31" color="#38d3d3">}}




{{<matomeQuote body="JAXも細かい演算を融合するのがコアメリットじゃん？この研究ってJAXとどう比較されるの？" userName="fxtentacle" createdAt="2025/06/19 22:47:08" color="#ff33a1">}}




{{<matomeQuote body="JAXの演算子融合（https://apxml.com/courses/advanced-jax/chapter-2-optimizing-...）は、matmulと要素ごとの計算みたいな局所的な演算をいくつか一つのカーネルに融合できるよ。でも、JAXのアプローチだと、多くの演算がループ変換を含むから、何百もの演算があるLLM全体を一つのカーネルには融合できないんだ。<br>MPKは違うアプローチで、局所的な演算を少しずつ融合するんじゃなくて、演算をタスクグラフに分解して、そのタスクグラフで指定された全てのタスクを実行するためのランタイムシステムを一つのカーネルの中に構築するんだ。" userName="zhihaojia" createdAt="2025/06/20 00:22:26" color="#ff33a1">}}




{{<matomeQuote body="作者さんたち、このスレッドにすごくレスポンス良いから質問させてね:)。<br>1. 各タスクはどれくらい細かいの？例えば、伝統的な行列乗算カーネルだと、各スレッドブロックが結果行列の小さい出力タイルを担当するじゃん。Mirageのメガカーネルでも、それに対応する出力タイルごとのタスクになるの？<br>2. Mirageコンパイラはどうやってタスクグラフを作るの？全ての演算のデータフローを個々の要素の粒度で知ってるの？またmatmulを例にすると：特定の出力タイルにはA行列の対応するM_BLOCK行が必要じゃん。もしA行列自体が前のmatmul（+非線形性）の出力だったとしたら、その依存先ってAを生成した演算の、そのM_BLOCK行に対応する全ての出力タイルタスクになるの？" userName="bronxbomber92" createdAt="2025/06/20 03:21:58" color="#785bff">}}




{{<matomeQuote body="1. MPKでは、各タスクは個別のSMにマップされてるよ。タスクが処理する作業量は、従来のカーネルごとのアプローチでのスレッドブロックのそれに近いかな。<br>2. TL;DR: MPKは各タスクに関連付けられた入力テンソルと出力テンソルを追跡することで、タスク間の依存関係を自動的に分析するんだ。より詳しい説明: Mirage論文のセクション2にあるimap, omap, fmapを使って各タスクの入出力テンソルを決定するよ。タスクAとタスクBの間には、AがBが消費するテンソル要素を生成する場合—つまり、Aの出力がBの入力と重なる場合に—依存関係が導入されるんだ。<br>＞またmatmulを例にすると：特定の出力タイルにはA行列の対応するM_BLOCK行が必要じゃん。もしA行列自体が前のmatmul（+非線形性）の出力だったとしたら、その依存先ってAを生成した演算の、そのM_BLOCK行に対応する全ての出力タイルタスクになるの？<br>まさにその通りだよ。この場合、AのM_BLOCK行を消費する全ての出力タイルタスクは、前の演算でAの対応する部分を生成する責任がある全てのタスクに依存することになるね。" userName="zhihaojia" createdAt="2025/06/20 04:08:22" color="#ff5733">}}




{{<matomeQuote body="これめちゃくちゃ面白いね！ウチも似たようなことやってると思う、モデル初期化後にチェックポイントを取ることで。ウチのアプローチについてどう思うか興味あるな、ベンチマークここにあるよ: https://docs.cedana.ai/articles/performance-of-cedanas-gpu-i...<br>オンザフライの最適化もいくつかやってるんだ（CUDAグラフへのコンパイルとか、呼び出しの融合とか）それがある推論エンジンではトークンスループットを速くする結果につながってるよ。" userName="nravic" createdAt="2025/06/20 12:30:26" color="#ff5c5c">}}




{{<matomeQuote body="さらに先を行くことについて誰か考えがあるかな？静的なLLMに対して、ソフトウェアベースの推論を捨てて純粋なASICアプローチにすること。コストメリットは？ソフトウェアレベルの追加や、ファインチューン可能な層で改善と柔軟性を少し持たせるのは？一部のタスクでは「十分良い」にすぐに近づいてる—もしハイパースペシャライズされたチップでメリットがあるなら、デバイスの約2-4年の寿命の間、何かを固定することにどこで満足する？" userName="Gregaros" createdAt="2025/06/20 16:24:27" color="#ff5c5c">}}




{{<matomeQuote body="もう少し質問させてね：<br>1. オートコンプリート、キーワードルーティング、音声書き起こしみたいなタスクで、ASICとメガカーネルGPUの設定の遅延と電力削減ってどんな感じになる？それはエッジデバイスや組み込みシステムで固定機能のアプローチを正当化する？<br>2. ASICは再学習を明らかに殺すけど、ベースモデルはハードワイヤードで、小さな、ソフトな、学習可能なモジュール（LoRAみたいな残差層）が汎用コプロセッサで動くハイブリッド設定は考えられる？<br>3. Transformerの固定トポロジーはASIC設計での空間再利用に向いてる？それともモデルサイズ（GPT-3クラスとか）は積極的なウェイト枝刈りや量子化無しだとまだ prohibitive（法外/難しすぎる）？" userName="Gregaros" createdAt="2025/06/20 16:25:14" color="#ff33a1">}}




{{<matomeQuote body="これ、torch.compileのバックエンドにすべきだと思うな。" userName="qihqi" createdAt="2025/06/19 23:49:28" color="#ff33a1">}}




{{<matomeQuote body="うん、MPKでtorch.compileがメガカーネルを生成できるようになると、すごく楽しいだろうね。torchが生成するカーネルは、今は遅延に敏感なワークロードには遅すぎるんだ。" userName="zhihaojia" createdAt="2025/06/20 00:39:18" color="#ff5733">}}




{{<matomeQuote body="LLMについて、影響や機能を示す新しい例えが次々に出てくるね。Transistorみたいに考えるべきなのかな？今はパンチカード入力で掛け算ができる部屋サイズのコンピューターの段階だ。例えば、100万個の協調したo3-proクエリを同時に実行できたら、何ができるか想像するのは楽しいね？" userName="lubujackson" createdAt="2025/06/20 21:12:26" color="#ff33a1">}}




{{<matomeQuote body="これどうやって実現してるの？ComputationをいくつかのKernelに分けるしかないと思ってたんだけど。ここでは、cuda threadsがscheduler threadsによって割り当てられたタスクを動的に実行できるなんて、文字通り許してるわけ？CUDA Kernelを書く経験が少ししかないから、マジでびっくりしてるよ。" userName="andy12_" createdAt="2025/06/20 09:07:58" color="">}}




{{<matomeQuote body="このアプローチはTrainingにも使えるの？<br>違うGridが必要なKernelについてはどうなるのかな？" userName="perfobotto" createdAt="2025/06/20 15:08:43" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞従来のLLMシステムはGPU Kernel Launchや外部通信のシーケンスに頼っており、ハードウェアが十分に活用されていない。<br>何？なぜ？これって、できるなら明らかなOptimizationに見えるけど。" userName="scotty79" createdAt="2025/06/19 20:33:36" color="">}}




{{<matomeQuote body="記事からね<br>＞これらの利点にもかかわらず、LLMをMegakernelにCompileするのは非常に難しい。PyTorch、Triton、TVMといった既存のHigh-level ML Frameworkは、End-to-EndのMegakernel生成をNativeにサポートしていない。加えて、現代のLLMシステムは、CommunicationにはNCCLやNVSHMEM、効率的なAttentionにはFlashInferやFlashAttention、CustomなComputationにはCUDAやTritonといった、多様なSpecialized Kernel Libraryの集合体から構築されている。このFragmentationが、Inference Pipeline全体をSingleでUnifiedなKernelに統合するのを難しくしている。<br>だから、私の素朴な推測は、はい、それは明らかだけど、Non-trivialだということだと思うよ。" userName="catlifeonmars" createdAt="2025/06/19 20:49:01" color="#785bff">}}




{{<matomeQuote body="君の素朴な推測は正しいね。これやるのはかなり難しいんだ。ここで自動でやってるみたいにしても、Non-trivialなComputationにおけるData DependenciesとSynchronizationを理解しようとすると問題にぶち当たるんだよ。" userName="saagarjha" createdAt="2025/06/19 22:28:12" color="#38d3d3">}}




{{<matomeQuote body="全然明らかじゃないよ。これらのLaunchはAsynchronousで、Data Movement＼ComputationはCUDA APIを通じて適切にOverlapされてるんだ。CUDA Graphの導入で、Per-kernel Launch Costも減ったしね。CUDA Programming Modelは、各KernelがComputationally Expensiveであることを前提としてるけど、LLMのToken Generationにはこれは当てはまらない。しかも、Recommendation Systems以外でNetwork Evaluationを1秒間に1000回以上なんて、前はせいぜい1秒に100回くらいだったよ。それと、Alexの”One Weird Trick”っていう、行列積を分割してDevice-to-Device TransferとComputationをOverlapさせる10年前の論文、誰も覚えてない？" userName="liuliu" createdAt="2025/06/19 20:51:53" color="#38d3d3">}}




{{<matomeQuote body="FieldがMegakernelsにこれだけ投資するのに、Multiple TokensをParallelに生成するModelsには投資しないのは、私には意外だな…。" userName="gdiamos" createdAt="2025/06/20 07:50:32" color="">}}




{{<matomeQuote body="Trainingに数千万ドルかけるのは、BenchmarkでどんなScoreになるか分からないと正当化しづらいんだ。Modelはそのままで、Exoticな手段（Megakernels）で高速化するために追加で数百万ドル費やす方が正当化しやすいんだよ。まあ、最近はParallel Token Generationsに関するNicheなResearchも少しあるけどね…。" userName="liuliu" createdAt="2025/06/20 21:20:20" color="#785bff">}}




{{<matomeQuote body="ProcessorがKernel CallsをDispatchするのが、Kernel Calls自体よりはるかに速い一般的なケースでは、Throughputの大幅な増加は見られないだろうね。まず、本当にOptimizedなKernelを作るのが先決だ（そうすればDispatchingが相対的に高コストになる）。そうすると、これがやる価値のあることになってくるんだ。OptimizedなGPU Kernelを書くのが本当に上手い人って、今はそんなに簡単には手に入らないんだよね。" userName="delusional" createdAt="2025/06/19 21:15:34" color="#38d3d3">}}




{{<matomeQuote body="LLMのアーキテクチャって結構変わるから（ちょっとの変化でもkernel的には大違い）、あまり先読みして「焼き付け」すぎない方がいいかもね。とはいえ、最終的にはコスト次第で、ここでやってるみたいな最適化のためにGPU engineerを雇うのもアリだと思うよ。想像よりは簡単じゃないけどね。" userName="shawntan" createdAt="2025/06/19 20:48:38" color="">}}




{{<matomeQuote body="めっちゃクールだね。うちの3b modelでも試してみたいなぁ。" userName="olivia111" createdAt="2025/06/19 21:56:33" color="">}}




{{<matomeQuote body="詳しいtutorialとかないのかな？使い方知りたいな。" userName="olivia111" createdAt="2025/06/19 21:59:17" color="">}}




{{<matomeQuote body="github repoにMPKのtutorialあるよ！ここ見てみて：https://github.com/mirage-project/mirage/tree/mpk" userName="zhihaojia" createdAt="2025/06/19 22:03:19" color="#ff33a1">}}




{{<matomeQuote body="Ollamaとのintegrationはどう？" userName="NitroPython" createdAt="2025/06/19 20:11:14" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
