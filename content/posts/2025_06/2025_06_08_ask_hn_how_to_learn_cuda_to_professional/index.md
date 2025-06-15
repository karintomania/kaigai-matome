+++
date = '2025-06-08T00:00:00'
months = '2025/06'
draft = false
title = 'プロレベルのCUDAを学ぶには？'
tags = ["CUDA", "プログラミング", "GPU", "AI", "学習方法"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> プロレベルのCUDAを学ぶには？

引用元：[https://news.ycombinator.com/item?id=44216123](https://news.ycombinator.com/item?id=44216123)




{{<matomeQuote body="ねぇ、CUDAプログラミング学ぶにはどんな本やコース、プロジェクトが良いの？正直言うと、入りたい会社がCUDA経験を求めてるのが主な理由なんだ。でも、それは回答に影響しないはずだよ、ちょっと背景情報としてね。" userName="upmind" createdAt="2025/06/08 10:52:35" color="">}}




{{<matomeQuote body="2008年にNVIDIAのcudacontestに参加した初期のCUDAプログラマーとして、僕がやった方法を保証できるよ。<br>— NVIDIAのCUDA Programming Guideを見てね<br>— developer.nvidia.com/cuda-books-archiveにあるNVIDIAのCUDAプログラミング書籍<br>— 既存の実装を基に小さいプログラムを作り始める（C言語の強い実装知識が必要だから、必要なら磨いておいてね。）<br>— 必要なツールチェーンやコンパイラをインストールする、遊べるハードウェアがある前提だけど。<br>— GitHubにあるCUDAプロジェクトのリンク。コードを読んで、コードの説明にはLLMを使うのもありだね。<br>— 小さくても並列プログラムを作り始める、とかね。これで1、2ヶ月くらいでCUDAプログラムを書き始めるのに十分になるはずだよ。君のスキルや経験レベルは分からないけど、どんなレベルでも、2007、08年当時より今はたくさんの情報源やリソースがあるから大丈夫。6〜8週間の学習計画を立てれば、すぐできるようになるはずさ！参考になれば嬉しいよ。気軽にコメントしてくれれば、僕にできる限りのことを共有してガイドするよ。" userName="indianmouse" createdAt="2025/06/08 15:13:04" color="#45d325">}}




{{<matomeQuote body="＞遊べるハードウェアがある前提だけど<br>それについて詳しく教えてくれる？5年くらいのNVIDIAグラボがあれば十分なの？それともっと特別なものが必要？" userName="hiq" createdAt="2025/06/08 15:31:14" color="">}}




{{<matomeQuote body="5年前のカード、つまり2020年のNVIDIA Ampere RTX 30xxシリーズなら全然問題ないよ。7年前の2018年のNVIDIA Turing RTX 20xxシリーズでもまだ受け入れられるね。Turingより古いGPUは避けた方がいいよ。’Tensor Core’とか、新しいカードにある多くの機能が足りないし、新しいCUDAツールキットでのサポートもそう遠くない将来に非推奨になる可能性があるからね。でも、非常にゆっくりだから、今のところ10年前のMaxwell GPU向けのプログラムもまだ作れるけど。新しいGPUの中では、RTX 40xx SUPERシリーズ（SUPERバリアントね、オリジナルのRTX 40xxシリーズじゃないよ）が一番エネルギー効率が良いよ。一番新しいRTX 50xx GPUはRTX 40xx SUPERよりエネルギー効率が悪くて、釣り合わないほど大きな電力を消費することで、かろうじて少し高いパフォーマンスを達成してるんだ。それよりは、複数のRTX 40xx SUPERを使う方がいいかな。" userName="adrian_b" createdAt="2025/06/09 11:59:31" color="#45d325">}}




{{<matomeQuote body="俺はCUDAプログラマーじゃないんだけど、AIUI（俺が理解してる限り）では：<br>— CUDA Toolkitの最新バージョン（12.9.1とか）をインストールしたいと思うだろうね。<br>— CUDA Toolkitの各バージョンは、カードドライバーが特定のバージョン以上である必要があるんだ（例えば、ツールキットはドライバーバージョン576以上に依存する）。<br>— 古いカードでも最近のドライバーがあることが多くて、例えばGTX 1080でも最新（576.x）のドライバーがあるから、今のバージョンのCUDA Toolkitで動くはずだよ。" userName="rahimnathwani" createdAt="2025/06/08 15:44:02" color="#38d3d3">}}




{{<matomeQuote body="それぞれのNVIDIA GPUには特定のCompute Capabilityがあって（https://developer.nvidia.com/cuda-gpus）、それはCUDAを使ってプログラムできることのハードな上限になるんだ。" userName="slt2021" createdAt="2025/06/08 17:12:13" color="#ff5c5c">}}




{{<matomeQuote body="始めたばかりで勉強してる段階なら、それはそんなに気にしなくていいよ。過去10年くらいのNVIDIAカードならどれでも問題ないはず。" userName="dpe82" createdAt="2025/06/08 18:04:22" color="">}}




{{<matomeQuote body="これで役立つベンチマークはできないだろうけど、NVIDIA GPUをエミュレートする方法ってあるのかな？例えば、Dockerコンテナとかで？" userName="sanderjd" createdAt="2025/06/08 22:34:19" color="">}}




{{<matomeQuote body="どんな環境で開発してるの？まだWindowsがCUDA開発のメイン環境なの？" userName="edge17" createdAt="2025/06/08 19:53:49" color="">}}




{{<matomeQuote body="Leela Chess ZeroのCUDAコードはDCNN時代は分かりやすかったけど、transformerはまだ勉強してないんだ。<br>CUDA自体はC++に似てて簡単だけど、仕事だとAI実装が多いからAIの勉強が大変だよ。<br>fast.aiの動画が良いよ。<br>ゲーム分野の3Dグラフィックは今はもっと複雑みたい。" userName="throwaway81523" createdAt="2025/06/08 11:20:04" color="">}}




{{<matomeQuote body="このアイデアいいね！<br>コードはこれで合ってる？ https://github.com/leela-zero/leela-zero<br>初心者質問なんだけど、なんでPyTorchやTensorFlowだけじゃなくてC++やCUDAをたくさん使ってるの？<br>Leelaの学習には遅いのかな？<br>あとTensorFlowのコードがあるのはどうして？" userName="upmind" createdAt="2025/06/08 11:33:13" color="">}}




{{<matomeQuote body="それLeela Zero（囲碁）だよ、チェスじゃない。<br>古いし（2018年頃）、CUDAじゃなくてOpenCLを使ってるんだ。<br>Winograd convolutionとか、そのコードは僕がたくさん書いたんだ。<br>Leela Chess Zero（https://github.com/LeelaChessZero/lc0）は、もっと新しいGPU向けに最適化されてて、詳しい人が書いてるから、学ぶならそっちの方がずっと良いよ。" userName="henrikf" createdAt="2025/06/08 15:02:08" color="#38d3d3">}}




{{<matomeQuote body="僕の記憶だと、CUDAのコードはTensorFlowのコードより3倍くらい速かったんだ。<br>TensorFlowの方はNvidia以外のGPU用だよ。<br>GTX 1080とか2080があった頃の話ね。<br>今はどうなってるか分からないな。" userName="throwaway81523" createdAt="2025/06/08 12:15:10" color="">}}




{{<matomeQuote body="＞But if you do, you will be in high demand（需要は高い）<br>ってことだけど、今の他のソフトウェアエンジニアの仕事探しに比べて、CUDAプログラマーの仕事探しはそんなに大変じゃないってことかな？<br>今のJavaミドルウェア開発者から、CUDAとかAIを学ぶのが良い転身になるかもって考えてるんだ。" userName="robotnikman" createdAt="2025/06/08 20:47:00" color="">}}




{{<matomeQuote body="いつものJava開発者がやることに比べて、数学にずっと集中することになりそうだね。" userName="randomNumber7" createdAt="2025/06/09 15:41:53" color="">}}




{{<matomeQuote body="お金目当てなら、HPCとか数学的なことは忘れた方が良いよ。<br>その分野でPhDでも持ってないと、CUDAを秒速120文字で書けても誰も相手しない。<br>本当に稼げるのは、PTX、nvcc、cuobjdump、Nsight Systems、Nsight Computeをマスターすること。<br>CUTLASSは見るのに良いオープンソースだよ。ここから始めてみて：<br>https://christianjmills.com/series/notes/cuda-mode-notes.htm...<br>一番大事なのは、HNから離れて、本物のコーダーがいるDiscordのgpu modeに行こう：<br>https://discord.com/invite/gpumode" userName="FilosofumRex" createdAt="2025/06/09 02:24:07" color="#785bff">}}




{{<matomeQuote body="ちょっと興味があるんだけど、ドメイン（応用分野）じゃなくて、プログラミングとかアーキテクチャの側面にだけ興味がある場合でも、深く入れるものなのかな？<br>歴史的に見ても、Crayみたいな人って、HPCのドメイン自体にはそんなに興味なかったんじゃないかって思うんだけど。" userName="ferguess_k" createdAt="2025/06/13 16:43:59" color="">}}




{{<matomeQuote body="クールで本物だと思うけど、すごくニッチな分野に聞こえるね。<br>ってことは、人も場所もすごく少ないってことだ。<br>ほとんどゲーム業界とかドライバーかな。<br>ゼロから一気にそこまで行くのは大変だろうね。<br>これには本当に、本当に賢くないとダメだよ。" userName="MoonGhost" createdAt="2025/06/09 17:16:56" color="">}}




{{<matomeQuote body="CUDAのプロレベル学習に役立つリソースをたくさん紹介してるよ。gpumode.comとそのDiscord、本（Programming massively parallel processors）、nvidiaのCUDA docs、GPU-PuzzlesのGitHubとか、これで数ヶ月は忙しくなりそうだよ！<br>https://www.gpumode.com/<br>https://github.com/srush/GPU-Puzzles" userName="imjonse" createdAt="2025/06/08 11:41:21" color="#45d325">}}




{{<matomeQuote body="メインサイトは確かにリーダーボードとかで分かりにくいけど、Discordとかリソースのリンクをたどれば、ちゃんと学習資料は見つかるはずだよ。" userName="imjonse" createdAt="2025/06/09 06:54:45" color="">}}




{{<matomeQuote body="CUDAをマスターしたいなら、いくつかに分けて考えるといいかも。1. CUDAのフレームワークとかライブラリを学ぶ、2. 大規模並列計算（HPC）の考え方を学ぶ、3. 自分のやりたい分野（Transformerとか）の知識をつける。HPCの基礎が一番大事で、応用も利くと思うよ。" userName="lokimedes" createdAt="2025/06/08 11:18:23" color="#ff5733">}}




{{<matomeQuote body="元GPUエンジニアだけど、前のコメント（19529）の意見に賛成だよ。特にHPCの考え方と応用分野(#2と#3)は重要。そもそもCUDAが必要なのか、それともcuDNNみたいなCUDAベースのライブラリを使いたいのかでも違うしね。まずは並列プログラミングの基礎を理解するのが一番だと思うな。" userName="david-gpu" createdAt="2025/06/08 23:07:43" color="#38d3d3">}}




{{<matomeQuote body="「並列プログラミングの基礎を理解するのが先」って言ってたけど、それ学ぶのに何かおすすめのリソースはある？" userName="chanana" createdAt="2025/06/09 00:58:46" color="">}}




{{<matomeQuote body="質問された人じゃないけど、並列プログラミングの基礎なら、僕が他のコメントで紹介したのに加えて、この2冊も役に立つかもよ。Gregory Andrewsの「Foundations of Multithreaded, Parallel, and Distributed Programming」と、Bertil Schmidtたちの「Parallel Programming: Concepts and Practice」。" userName="rramadass" createdAt="2025/06/09 05:54:35" color="#38d3d3">}}




{{<matomeQuote body="いい提案だね。毎日の開発業務で使うような人なら、まずはGrokking Concurrencyから始めるのがいいんじゃないかな。" userName="Breza" createdAt="2025/06/13 15:25:42" color="#785bff">}}




{{<matomeQuote body="このアプローチが正しいね。（2）なしで（1）を学ぼうとすると、ひどく混乱するだけだよ。この本の推薦もするよ -＞ https://news.ycombinator.com/item?id=44216478" userName="rramadass" createdAt="2025/06/08 12:24:25" color="#ff5c5c">}}




{{<matomeQuote body="学習スタイルによると思うな。俺の場合、具体的な実装やコードをいじって学ぶ方が、抽象的な概念から入るよりずっと楽。コードで経験積めば、なんでこうするんだろうって疑問が出て、自然と一般的な概念につながるんだ。" userName="jonas21" createdAt="2025/06/08 16:48:32" color="#38d3d3">}}




{{<matomeQuote body="“学習スタイル”とは関係ないね。並列計算にはa) ハードウェアのアーキテクチャ、b) 問題の分解、c) CUDAみたいなフレームワークを使ったアルゴリズム、の3つが必要。CUDAは最後のステップだから、最初の二つを知ってるのが前提条件だよ。" userName="rramadass" createdAt="2025/06/09 05:40:45" color="#45d325">}}




{{<matomeQuote body="HPCならこれが俺の定番だったけど、今ではちょっと古いかもね。https://www.amazon.com/Introduction-Performance-Computing-Sc..." userName="lokimedes" createdAt="2025/06/08 12:57:56" color="#785bff">}}




{{<matomeQuote body="それも良い本（俺も持ってる）だけど、Ridgway Scottの本より一般的かな。そっちは数値計算の例を使ってて、章の概要はこれ -＞ https://www.jstor.org/stable/j.ctv1ddcxfs 。こういう本は言語/フレームワークが古いだけで、手法は普遍的で説明も丁寧なんだ。最近のHPCの本なら、Victor EijkhoutのThe Art of High Performance Computingが最高 -＞ https://news.ycombinator.com/item?id=38815334" userName="rramadass" createdAt="2025/06/08 14:12:03" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺の個人的なCUDA学習経験を話すね。PhDでCUDAが必要なプロジェクト担当になったけど、周りに経験者はいなかった。最初はNVIDIAの公式コース（CUDA C/C++とPython版がある）をやったよ。これで概念は分かったけど、その後は試行錯誤がほとんど。古い関数やAPI変更でチュートリアルや本が使えなくなったり、GPUのバージョン違いで困ったり。<br>CUDA学習は痛みとの戦い。compute-sanitizerやNsightでのデバッグにほとんどの時間を費やすことになるから。<br>ゆっくりやろう。まずCUDAなしでできる簡単なプロジェクトをCUDAに移植して、CPUと比較してベンチマークを取って、最適化してみるのがいい。<br>一番のアドバイスは、最初は最適化を考えないこと。まずは正しく動くこと。遅くても動くカーネルの方が、速いけどメモリを壊すカーネルよりずっといいよ。" userName="elashri" createdAt="2025/06/08 11:34:13" color="#ff33a1">}}




{{<matomeQuote body="俺も似たようなPhDでの経験談をシェアするよ（結果はこれ -＞ https://github.com/NX-AI/flashrnn）。当時は基礎以上のチュートリアルは見つからなかった。<br>GPUの仕組みとアーキテクチャを理解したら、次のワークフローを薦めるね。<br>1. まず、高レベルの言語で書かれたベースラインと比較できる環境を作る。<br>2. 緊急のプロジェクトがないなら、既存の問題（MatMulが最初の例）を改善/再実装。特定の機能を学ぶためだけに例を使う。<br>3. 機能を簡単なものから順番に書く。ループ、グリッドで並列化、グローバルメモリ、共有メモリ、レジスタ、行列乗算、mma (TensorCore)。<br>4. CUDA C Programming Guideを繰り返す。読んで覚えるだけじゃダメ。適用して学ぶ。<br>5. ユースケースにもよるけど、CUTLASSやThunderKittenみたいな高レベル抽象化も考慮。Jax/Torch環境なら、CUDAレベル前にまずTritonを使うのもいい。<br>全体的に、痛みはあるだろうね。PTXまでマスターするのは時間がかかるよ。" userName="korbip" createdAt="2025/06/08 13:09:58" color="#45d325">}}




{{<matomeQuote body="＞ CUDA学習は痛みとの戦い。compute-sanitizerやNsightでのデバッグにほとんどの時間を費やすことになるから。<br>これマジで分かりすぎてツラい。" userName="kevmo314" createdAt="2025/06/08 12:25:03" color="">}}




{{<matomeQuote body="これはGPUプログラミングの良い入門になるかもね：https://builds.modular.com/puzzles/introduction.html 。ハードウェア非依存でGPUの概念を説明してて、実装パズルで理解を確認できる。元はhttps://github.com/srush/GPU-Puzzles だけど、こっちはCUDA向けだよ。" userName="CalmDream" createdAt="2025/06/14 17:41:43" color="#ff5733">}}




{{<matomeQuote body="俺はこれで高校生を教えてたよ。プロレベルには足りないだろうけど、始めるには十分で、そこから自分で進めるはず。https://youtu.be/86FAWCzIe_4?si=buqdqWASNPbMQy" userName="sputknick" createdAt="2025/06/08 14:21:07" color="#38d3d3">}}




{{<matomeQuote body="ディープラーニングとかChatGPT目的で聞いてるなら、まず「本当に必要？」って自問自答すべきだよ。CUDAのスキルは機械学習モデルを組むのとは全然違うんだ。ウェブ開発の仕事のためにTLSライブラリの作り方を学ぶみたいなもんで、全く別のスキル。CUDAはゲーム開発者とかグラフィックス、HPC（高性能計算）やハードウェアエンジニアの領域。機械学習の開発や研究って視点だと、ただの実装の話でしかない。<br>自分が何をしたいか、ハッキリさせた方がいい。人事部は広い網を張るもんだけど（ジュニアなのに「経験3〜5年」って募集が多いけど、実際はそこまで気にしてないみたいに）、採用する会社もGPUからユーザー向け製品まで全部理解してるユニコーンみたいな開発者を祈ってるだけって場合が多い。普段の仕事はほとんどPythonなのにね。" userName="Onavo" createdAt="2025/06/08 11:33:42" color="#ff33a1">}}




{{<matomeQuote body="まだ試してないけど、これ良さそうだよ：https://leetgpu.com/" userName="ForgotIdAgain" createdAt="2025/06/08 11:34:05" color="">}}




{{<matomeQuote body="CUDA GPGPUプログラミングは、特定の並列問題を解くために生まれたんだ。だから、そういう問題を学ぶとCUDAベースの並列プログラミングがよくわかるようになるよ。CUDAのリソースと並行して、この古い本も読むのをおすすめするね。<br>『Scientific Parallel Computing』 by L. Ridgway Scott et. al. って本。URLはこれ：https://press.princeton.edu/books/hardcover/9780691119359/sc..." userName="rramadass" createdAt="2025/06/08 12:08:14" color="#38d3d3">}}




{{<matomeQuote body="俺の意見ね：「CUDAを学ぶ」こと自体が大事なんじゃなくて、学びたいのは二つあるんだ。一つはGPUハードウェアのアーキテクチャ、もう一つはアルゴリズムの並列化。CUDA固有の話なら、NvidiaのCUDA Programming Guideで言語の基本は学べるけど、こういう仕事で求められるのは、アルゴリズムを並列化してハードウェアの性能を最大限に引き出すスキルなんだ。" userName="canyp" createdAt="2025/06/08 17:08:07" color="#45d325">}}




{{<matomeQuote body="この分野のプロの人に質問なんだけど、CUDAエンジニアが必要とされる仕事、ポジション、会社ってどこなんだろう？ 今の理解だと、多くの会社はPyTorchとかCUDAの成果物を使ってるけど、直接CUDAを開発するのはあんまり一般的じゃない気がしてるんだ。だから、もっとCUDAをがっつり使う会社や役割を知りたいなー。" userName="mekpro" createdAt="2025/06/08 15:32:42" color="">}}




{{<matomeQuote body="うちのチームは地理空間データで使ってるよ。スリッピーマップタイルをラスタライズして、GPUでラスタサマリーをやってる。ちょっと変わったケースだけど、ほとんどのピクセルは独立して処理できるからかなりうまくいくんだ。その後、行ごとに並列でサマリーして、最後にまとめる感じ。ただ、今はGPUへのコピーがボトルネックになってるけどね。" userName="kloop" createdAt="2025/06/08 15:48:53" color="">}}




{{<matomeQuote body="Prefix scanが良いGPUプログラミングの入門になるよ：https://developer.download.nvidia.com/compute/cuda/2_2/sdk/w...<br>これで、こういう仕事が楽しいかどうかわかるはず。もし楽しかったら、そこそこ最適化されたGEMMをやってみて、それからFlashAttentionの論文を追って、基本的なバージョンを実装してみるのがいい。" userName="SonOfLilit" createdAt="2025/06/08 23:33:46" color="#45d325">}}




{{<matomeQuote body="他の意見は全部無視していい。まずはCUDA Thrustから始めな。サンプルの使い方をじっくり学んで、他のプロジェクトでThrustがどう使われてるかを見てみるんだ。1〜2年したらcubに進むといい。<br>アルゴリズムは自分でイチから実装しちゃダメだぞ。最近のアーキテクチャで decent occupancy （適切な占有率）を出すのはめちゃくちゃ難しいんだ。Thrustとcubを使えば、だいたいのケース（80%）は対応できるし、妥当なトレードオフでほとんどの作業をやってくれるからね。<br>https://developer.nvidia.com/thrust" userName="alecco" createdAt="2025/06/08 18:51:27" color="#45d325">}}




{{<matomeQuote body="リンクをざっと見た感じは良さそうだね。でも、TBBとの比較が分かんないんだ。TBBのGPUネイティブ版でもあるの？もしTBBの実装がCPU上なら…それは単に違うハードウェアを比較してるだけじゃん。紛らわしいし、正直じゃないって言われてもおかしくないレベルだよ。" userName="bee_rider" createdAt="2025/06/08 20:48:31" color="">}}




{{<matomeQuote body="TBBとの比較はさ、10年前にNVIDIAのGPUがIntelのCPUより並列問題でずっと速いってことをみんなに納得させようとしてた頃の、マーケティングの残り物だよ。" userName="alecco" createdAt="2025/06/09 08:44:43" color="">}}




{{<matomeQuote body="ごく普通のノートPCで簡単なCUDAプログラムを動かすのに使えるGPUエミュレータとかない？メカニクスとかツールチェーンに慣れるためにさ。" userName="math_dandy" createdAt="2025/06/08 15:49:56" color="">}}




{{<matomeQuote body="https://leetgpu.com/ は、セットアップなしでウェブページ上で簡単なCUDAプログラムを実行できるエミュレータだよ。ちょっと試してみるには良い方法だと思うな。" userName="corysama" createdAt="2025/06/08 16:47:30" color="#785bff">}}




{{<matomeQuote body="普通のノートPCでもNVIDIAのGPUがあれば、エミュレーションじゃなくて普通のCUDAが使えるよ。データセンター向けのGPUだけじゃなくて、たくさんの一般向けコンシューマーGPUもサポートされてるんだ。" userName="gkbrk" createdAt="2025/06/08 15:51:57" color="#ff5c5c">}}




{{<matomeQuote body="最近の普通のノートPCにはGPUなんて載ってないよ。iGPUがあれば基本的な作業には十分なんだから。" userName="bee_rider" createdAt="2025/06/08 20:50:02" color="">}}




{{<matomeQuote body="最近はGPU付きのVPSも手に入れられるよ。めちゃくちゃ安いわけじゃないけど、この業界の人なら手が届く値段じゃないかな。" userName="throwaway81523" createdAt="2025/06/08 22:43:55" color="#45d325">}}




{{<matomeQuote body="GPUプログラミングで解きたい問題を自分で選んで、必要なことを学びながら進めるのが一番だと思うよ。NVIDIAのブログ記事とか、学ぶ途中でめちゃくちゃ役に立つんだ。<br>例えばこれとかね: https://devblogs.nvidia.com/cuda-pro-tip-write-flexible-kern..." userName="tkuraku" createdAt="2025/06/08 13:57:23" color="#785bff">}}




{{<matomeQuote body="「Programming Massively Parallel Processors」っていう本と、「CUDA_MODE」っていうYouTubeチャンネルがあるよ。YouTubeは本をベースにしてるみたいだね。<br>チャンネルは見つけられなかったけど、これがプレイリストだよ: https://www.youtube.com/watch?v=LuhJEEJQgUM&list=PLVEjdmwEDk...<br>これが終われば、しっかりした基礎ができるはずだよ。" userName="sremani" createdAt="2025/06/08 16:07:51" color="#38d3d3">}}




{{<matomeQuote body="俺はCUDAプログラマーじゃないけど、これを見るとSparkとかSQLに似てると思うんだ。https://gfxcourses.stanford.edu/cs149/fall24/lecture/datapar... とか見てみて。<br>だから、forループを使わないプログラミングに慣れることから始めるのがコツかもね。" userName="fifilura" createdAt="2025/06/08 16:55:06" color="#ff33a1">}}




{{<matomeQuote body="プロジェクトで学ぶのが好きで、グラフィックスやってるからGPU Gemsシリーズが大好き。例えばこれね。https://developer.nvidia.com/gpugems/gpugems3/part-v-physics...<br>Appleプラットフォームの開発者として、実はこれらの本をやり遂げてCUDA部分をMetalに変換する方法を理解したんだ。それが内容をさらに深く理解するのに役立った。<br>やった理由の一つは—これは数年前のことだけど—MLとかゲーム開発とかだけでなく、並列アルゴリズムや考え方がいかに中心になっているかを考えて、問題解決への並列アプローチに関する思考を研ぎ澄ませたかったからだよ。" userName="gdubs" createdAt="2025/06/08 17:07:57" color="#38d3d3">}}




{{<matomeQuote body="C++の経験があれば、基本的にはすぐに飛び込めるよ。このYouTubeシリーズが本当に役に立ったんだ。https://www.youtube.com/playlist?list=PLxNPSjHT5qvtYRVdNN1yD...<br>この動画を見て、プロダクションデータ分析パイプラインのボトルネックだったカーネルのタイリングバージョンを実装できて、パフォーマンスを2倍以上に改善できたんだ。学ぶことはもっとたくさんあるけど、この動画シリーズは始めるのに最高の場所だったね。" userName="lacker" createdAt="2025/06/09 00:34:37" color="#45d325">}}




{{<matomeQuote body="Nvidia自身が有料のコースシリーズを持ってるよ。ちょっと古いけど、まだ関係あると思う。買ったんだけど、まだ始めてないんだ。夏休みにやるつもり。" userName="weinzierl" createdAt="2025/06/08 12:02:50" color="">}}




{{<matomeQuote body="CUDAにはコ口ナ禍の前、AIブーム前に少しだけ触れたことがあるんだ。<br>始めるのは簡単だった。そしてwarps、SM’s、基本的な概念まで結構良い学習曲線があった。それから整数opcodesを深く掘り下げられたんだけど、これが超クールだったね。計算部分はかなり最適化できたし、大きな壁はなかった。<br>でも、メモリロードを完璧にして、hw（warp groups、divergence、L2 cache split thing、scheduling）に近づくのはかなり大変だった。<br>CUDAは始めるのにかなり良い＼楽しいと思うし、初心者プログラマーでもかなり遠くまで行けると思う。でも、深く入り込んでCPUに対して本当のアドバンテージを出すのは難しいね。<br>加えて、Nvidiaが市場をセグメントしてる問題もある—古いGPUにはあるopcodeがあったり（CUDA archは順方互換がない）、H100みたいな”AI”チップに予約されてるopcodeがあったりする。だから、H100とRTX5090の両方で速いコードを書くのは超大変なんだ。さらに各カードはSM数やメモリ容量、帯域幅が違うっていう事実も加わって…不可能な互換性行列に行き着く。<br>TLDR: 始めは良くて楽しい。計算部分の最適化は結構いける。でも、色んなチップやメモリアクセスの互換性を出すのは難しい。始める時は、特定の問題、特定のチップ、特定の命令セットを選ぶべきだね。" userName="majke" createdAt="2025/06/08 13:12:26" color="#ff5c5c">}}




{{<matomeQuote body="よく言われるように「Just Do It」ってやつ。配列をソートしたり、最大要素を見つけたりするCUDAコアを書き始めてみたら？" userName="dist-epoch" createdAt="2025/06/08 11:15:33" color="">}}




{{<matomeQuote body="これ同意！それに加えてリソースで補うと良いよ。理想的には、自分のプログラムの中で並列化できるタスクを見つけること。（これが何かを学ぶのも重要！）そしてそれをCUDAに切り替えるんだ。もしなければ、n-bodyシミュレーションみたいな簡単な例題を作ってみると良いよ。" userName="the__alchemist" createdAt="2025/06/08 13:42:21" color="">}}




{{<matomeQuote body="それより、どのブランドのGPUでも動くライブラリを使えるようになりたいな。それが選択肢にないなら、待つ！" userName="amelius" createdAt="2025/06/08 11:19:54" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それならPyTorchを学べば？ブランド間でハードウェアは根本的に違うんだよ。CPUのx86みたいな標準はないんだ。<br>だから、HIPIFYみたいなものでコードをAPI間で変換できるかもしれないけど、少なくともGPUプログラミングでは、それぞれの違いを学ぶか、どれか一つを選んでそれでやっていくのが合理的だと思うな。" userName="latchkey" createdAt="2025/06/08 15:10:32" color="#38d3d3">}}




{{<matomeQuote body="CUDA経験が必要な仕事っていうのは、ほとんどの場合torchだけじゃ不十分だからなんだよ。" userName="horsellama" createdAt="2025/06/08 17:41:31" color="">}}




{{<matomeQuote body="これって基本的にMojoがやろうとしてることじゃない？Modularによると「Vendor independent GPU programmability」らしいよ。" userName="labberdabberdoo" createdAt="2025/06/14 11:15:30" color="">}}




{{<matomeQuote body="これマジでイライラするんだよね！Vulkan computeは…微妙。実用的なのCudaだけって感じだから使ってるわ。Vulkanとか他の誰かがちゃんと競合してほしいけど、そうなるまではCuda使うよ。" userName="the__alchemist" createdAt="2025/06/08 13:42:59" color="">}}




{{<matomeQuote body="https://github.com/KomputeProject/kompute と https://shader-slang.org/ って使えるようになってきてる？何でも動くし、自動微分できるらしいよ。" userName="corysama" createdAt="2025/06/08 16:51:38" color="">}}




{{<matomeQuote body="VulkanがOpenGLみたいにヤバいって認めて、直そうと動き出したのがVulkanised 2025までかかったんだってさ。<br>AppleのOpenCL、AMDのMantle、NVidiaのVulkan-HppとSlang、これらがなかったらKhronosの標準規格ってもっとひどかったろうな。<br>VulkanはOpenGLのツールよりはマシだよ。LunarGがあるし、誰かがVulkan SDK全体にお金出してるから。<br>”規格だけ出して、実装やツールはコミュニティに任せる”って姿勢じゃ、プライベートAPIのツールみたいな生産性は出ないってこと。<br>IntelやAMDも含めて、GPUベンダーはKhronosの規格をベースにしてても、自社独自のCompute APIを推したがるんだよね。" userName="pjmlp" createdAt="2025/06/08 14:52:48" color="#785bff">}}




{{<matomeQuote body="”規格だけ出して、実装やツールはコミュニティに任せる”って姿勢ね。<br>Khronosはメンバー企業が出資する団体で、彼らがハードウェアで規格を実装したり、エコシステムに依存したりしてるんだ。<br>例えば、競合するGPUベンダーは、委員会の会議と並行して規格を実装するのが普通だよ。<br>Khronosで会社を代表してる人って、大体その規格を実装するチームのリーダーなんだよね。<br>ソース：昔Khronosで雇用主の代表してた。外交手腕と技術力が同じくらい必要な、大変で報われない仕事だったよ。" userName="david-gpu" createdAt="2025/06/08 23:19:44" color="#ff33a1">}}




{{<matomeQuote body="知ってる知ってる。メンバー企業がKhronosの規格をどう実装してるか、あと自社の独自APIと比較すると、開発ツールの使いやすさとか開発者体験が実際どうなってるかよくわかるよね。" userName="pjmlp" createdAt="2025/06/09 08:01:35" color="">}}




{{<matomeQuote body="zigとrustはどっちもGPUにネイティブコンパイル目指してるよ。CudaとHIPが提供するのは、ヘテロジニアスコンピューティングの実行環境、つまりCPUとGPUでコードを実行するときの定型コードを隠してくれるってこと。" userName="Cloudef" createdAt="2025/06/08 14:10:15" color="">}}




{{<matomeQuote body="P106-90を20ドルで買って、日付アプリを並列処理に移植し始めたぜ。" userName="epirogov" createdAt="2025/06/08 12:48:18" color="">}}




{{<matomeQuote body="クールなものをとにかく作ってみなよ。<br>コードレビューしてくれる人を見つけるのが大事。<br>だってコードレビューが一番勉強になるんだからさ。" userName="matt3210" createdAt="2025/06/08 18:44:00" color="">}}




{{<matomeQuote body="いいか悪いかは別として、プロレベルになるにはプロの現場での実務経験しかほぼないんだよ。<br>仕事を見つけるのは仕事を探す努力しかないし、それは勉強してるフリよりずっと大変。<br>だから、もしCUDAを学びたいなら、仕事のこと考えずに、ただ学びたいから学ぶのが良いよ。<br>学校出たらそれが本来の学び方だから。頑張ってね。" userName="brudgers" createdAt="2025/06/08 19:02:35" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
