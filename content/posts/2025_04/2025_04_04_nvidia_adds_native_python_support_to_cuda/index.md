+++
date = '2025-04-04T00:00:00'
months = '2025/04'
draft = false
title = '速報！Nvidia、CUDAにネイティブPythonサポート追加！GPUプログラミングが超簡単になる！？'
tags = ["Nvidia", "CUDA", "Python", "GPU", "AI開発"]
featureimage = 'thumbnails/blue.jpg'
+++

> 速報！Nvidia、CUDAにネイティブPythonサポート追加！GPUプログラミングが超簡単になる！？

引用元：[https://news.ycombinator.com/item?id=43581584](https://news.ycombinator.com/item?id=43581584)

{{<matomeQuote body="GPUプログラマーじゃないけど、なんかめっちゃ使いやすそうじゃん？試しにGPUとCPUでどれくらい違うか試してみた（https://gist.github.com/victorb/452a55dbcf59b3cbf84efd8c3097...）そしたらこんな結果になったよ（2.6GBもダウンロードしたけど）：CPUだと0.65秒、GPUだと0.15秒！マジでやる価値ありそう。APIもシンプルだし、CUDAプログラミングが楽になりそう。" userName="diggan" createdAt="2025-04-04T15:16:34" color="#785bff">}}

{{<matomeQuote body="CuPyはずっと前からあるし、めっちゃ使えるよ。この記事は、PythonでGPUカーネルを書けるようにするJITツールチェーンの話だよ。CuPyみたいに既存のGEMM実装を呼ぶとか、CUDA C++カーネルをJITコンパイルするとかじゃなくてね。https://docs.cupy.dev/en/stable/user_guide/kernel.html#raw-k..." userName="ashvardanian" createdAt="2025-04-04T16:43:54" color="">}}

{{<matomeQuote body="マジウケる。みんなAIの話ばっかしてるくせに、GPUのことマジで何も知らないんだね。<br>＞この記事はPython JITツールチェーンの話<br>この記事はただのマーケティングだよ（知らんけど）。製品自体はカーネルとかJITとかマジ関係ないから。<br>https://github.com/NVIDIA/cuda-python<br>ただのCUDA runtimeとCUBのCythonバインディングじゃん。CUDAがROCmの真似してるだけ。<br>https://github.com/ROCm/hip-python" userName="almostgotcaught" createdAt="2025-04-04T17:27:14" color="">}}

{{<matomeQuote body="勘違いしてるみたいだけど、既存の製品（もう何年も前からあるやつ）と、GTCで発表された新機能は違うんだよ。新機能は既存の製品ページには書いてないけど、GTCの発表記事には書いてあるよ。" userName="dragonwriter" createdAt="2025-04-04T17:36:04" color="">}}

{{<matomeQuote body="＞勘違いしてるみたいだけど、既存の製品<br>勘違いなんかしてないって。ちゃんと記事読んでるだけだっての。煽りじゃなくてね。<br>＞NVIDIAはCUDA Coreを作った。これはPythonicにCUDA runtimeを再構築したもの<br>だからこの記事はcuda-coreの話でしょ？他の何かってわけじゃない。<br>＞CUDA CoreはPythonの実行フローを持っていて、JITコンパイルをめっちゃ使ってる<br>これはPythonのJITに関するハッタリだよ。cutile kernel driver JITとはマジで関係ないから。" userName="almostgotcaught" createdAt="2025-04-04T18:21:28" color="">}}

{{<matomeQuote body="＞ちゃんと記事読んでるだけだっての<br>そうは思えないけどね。<br>＞この記事はcuda-coreの話<br>cuda.core（まだ実験段階のライブラリ）は記事で言及されてるものの1つだけど、記事の目玉はCuTileモデルだよ。<br>＞CuTileインターフェースはPythonic CUDA向けに開発されていて、後からC++ CUDAにも拡張される<br>この記事にはCuTileの説明はないけど、このツイート見ればどんな感じかわかるよ。https://x.com/blelbach/status/1902113767066103949?t=uihk0M8V..." userName="dragonwriter" createdAt="2025-04-04T19:10:45" color="">}}

{{<matomeQuote body="いや、それはnative pythonのリリースノートじゃないから。CuTileはまだ公開されてないんだって。Twitterのdevsによると、SciPy 2025カンファレンスまで公開されないかも。" userName="squeaky-clean" createdAt="2025-04-04T23:00:53" color="">}}

{{<matomeQuote body="JITっていうのはjust-in-time（実行時）って意味だよ。GTCでNvidiaが話してたのは、Python APIを使って実行時にCUDAカーネルを生成できるソフトウェアスタックのこと。AOT（事前コンパイル）じゃなくてJITコンパイラシステムだよ。" userName="musicale" createdAt="2025-04-05T21:22:47" color="#38d3d3">}}

{{<matomeQuote body="CuTileはNvidia版のTritonみたいなもん。Pythonコードから実行時にカーネルを生成するんだ。CUTLASSにも同じことができるPythonインターフェースがあるよ。" userName="saagarjha" createdAt="2025-04-05T02:17:17" color="#ff33a1">}}

{{<matomeQuote body="この記事のメインはまだリリースされてないCuTileじゃない？<br>あとcuda-coreのJITはPythonのJITとは関係なくて、nvJitLinkをPythonに統合することみたい。cuda_core/examples/jit_lto_fractal.pyに例があるよ。" userName="squeaky-clean" createdAt="2025-04-04T19:20:57" color="">}}

{{<matomeQuote body="パフォーマンスの例とか証拠を探してる人向け。<br>RTX 3090と64コアのAMD Epyc/Threadripperで数年前だけど、CuPyはマジですごかった。ほぼ同じ内容のスライドと数字を使ったセッションがいくつかあるよ。<br>・2023年のサンフランシスコPython meetup：https://youtu.be/L9ELuU3GeNc?si=TOp8lARr7rP4cYaw<br>・2022年のエレバンPyData meetup：https://youtu.be/OxAKSVuW2Yk?si=5s_G0hm7FvFHXx0u<br><br>特にすごい結果は以下。<br>・NumPyからCuPyに切り替えてソートが1000倍速くなった。<br>・New York Taxi RidesのクエリでPandasからCuDFに切り替えてパフォーマンスが50倍向上した。<br>・NumPyからCuPyに切り替えてGEMMが20倍速くなった。<br><br>CuGraphもチェックする価値あり。当時、Intelは今ほど悪くなくてModinを推してたけど、パフォーマンスと実装の質の違いにビックリした。" userName="ashvardanian" createdAt="2025-04-04T17:53:22" color="#45d325">}}

{{<matomeQuote body="記事で強調されてるメインのリリースはcuTileで、PythonコードからカーネルをJITコンパイルすることについてだよ。" userName="ladberg" createdAt="2025-04-04T21:11:57" color="#ff5c5c">}}

{{<matomeQuote body="＞メインリリース<br>cutileはまだリリースされてない。だから記事が説明できる実質的なものはcuda-coreしかない。これは最近エコシステムに追加されたもの。<br>マジで理解が曖昧なNV GPUにちょっと関係があるってだけで、適当なブログをここまで褒めちぎるなんて信じられない。" userName="almostgotcaught" createdAt="2025-04-04T21:30:46" color="">}}

{{<matomeQuote body="ベンチマークが見たい。これってCuPyより速いの？" userName="yieldcrv" createdAt="2025-04-04T17:50:47" color="">}}

{{<matomeQuote body="GPUアクセラレーションで4倍速って低くない？NumPyはすでにAVX2とかSIMD使ってる？<br>例えば、torchをCPUとGPUで使うと100倍くらい速度差が出るよ。" userName="moffkalast" createdAt="2025-04-04T16:52:41" color="#ff5733">}}

{{<matomeQuote body="マイクロベンチマークだよ（そうじゃないかもしれないけど）。話半分に聞いとけ。もっと大きくて複雑なタスクならもっと差が出ると思う。" userName="diggan" createdAt="2025-04-04T16:59:57" color="">}}

{{<matomeQuote body="メモリ転送時間を含めたらどうなるか気になる。例えば…<br>matricies = [np．random(…) for _ in range]<br>time_start = time．time()<br>cp_matricies = [cp．array(m) for m in matrices]<br>add_(cp_matricies)<br>sync<br>time_end = time．time()" userName="wiredfool" createdAt="2025-04-04T15:54:20" color="">}}

{{<matomeQuote body="別にあなたとかあなたの疑似コードを批判するつもりはないんだけど、こういうのよく見るから言っておきたい。<br>注意喚起：タイミングを計測しようとするコードでCUDAイベントAPIを使ってないなら根本的に間違ってて嘘をついてる。ノイズを計測しないようにするには他のタイミングソースの使用を禁止するのが一番簡単。タイミング計測のためだけに不要なsyncを追加するのは絶対にダメ。<br>https://docs．nvidia．com/cuda/cuda-runtime-api/group__CUDART_…" userName="nickysielicki" createdAt="2025-04-04T18:22:41" color="#ff33a1">}}

{{<matomeQuote body="もしCPUコードがメインで、GPUに処理をオフロードしたいサブルーチンがいくつかある場合、普通のPythonのtime関数で計測するのは何か問題あるかな？CUDAのエコシステムがどこで時間を食ってるか気にしないなら（GEMMをするブラックボックスだと思ってる）、普通のコードが再び動き出すまでの時間を測れば良くない？" userName="bee_rider" createdAt="2025-04-04T18:51:13" color="">}}

{{<matomeQuote body="時間を計るくらい気にするなら、正しく計るべきじゃね？" userName="nickysielicki" createdAt="2025-04-04T19:01:52" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ブラックボックスなアクセラレータとしてCUDAを使う場合の正しい計測方法を説明したつもりなんだけど。" userName="bee_rider" createdAt="2025-04-04T19:14:06" color="">}}

{{<matomeQuote body="好きなようにメトリクスを作ればいいじゃん！<br>でもCUDAは単なるブラックボックスの数学アクセラレータじゃないよ。そう扱うのは勝手だけど、そうじゃない。ドライバーやコンテキスト、ライフサイクルを持つエコシステム全体なんだ。すべてが同期してるとか、関係ないコストを含んでも気にしないなら、time.time()でも良いけど、それならもっと大きな問題があるかもね。" userName="nickysielicki" createdAt="2025-04-04T19:20:42" color="#785bff">}}

{{<matomeQuote body="「もっと大きな問題がある」って言うのは簡単だよね。いつでももっと大きな問題はあるし。<br>でも、Fortranの数値計算コードは50年分くらいあるし、RCIを使ってるものも多い…もし既存のライブラリでCUDAを試したいなら、RCIに戻る前にベクトルを取り戻す必要があると思う。" userName="bee_rider" createdAt="2025-04-05T00:58:15" color="">}}

{{<matomeQuote body="今週読んだ中で一番賢明なことの一つだ。<br>GraphQLサーバーのベンチマークツールを作ったんだけど、Coordinated Omissionの問題やHDR Histogramsのようなフォーマットについて学んだよ。<br>ベンチマークは正しく行うのが難しいだけでなく、次のような免責事項をつけるべきだと思ったよ。「これらはXマシンで、Y時間に、Zリソースで得られた結果です」" userName="gavinray" createdAt="2025-04-04T19:53:13" color="#ff33a1">}}

{{<matomeQuote body="CUDAは使ったことないけど、graphics APIsのタイムスタンプクエリと同じようなものだと思うけど、どう？" userName="jms55" createdAt="2025-04-05T04:38:17" color="">}}

{{<matomeQuote body="状況によっては使えるけどね。でもevent APIsの方がベターだよ。" userName="saagarjha" createdAt="2025-04-05T02:19:55" color="">}}

{{<matomeQuote body="たぶんそうだよ。元のコードはこんな感じだよ：<br>＞print（”Adding matrices using GPU…”）<br>＞start_time = time.time()<br>＞gpu_result = add_matrices(gpu_matrices)<br>＞cp.cuda.get_current_stream().synchronize()  # Not 100% sure what this does<br>＞elapsed_time = time.time() - start_time<br><br>聞きたいんだけど、CUDAのプロって、Pythonの人が知っておくべきことを教えてくれないかな？" userName="hnuser123456" createdAt="2025-04-04T16:02:21" color="#ff5733">}}

{{<matomeQuote body="CUDAのメソッド呼ぶと非同期で実行されるんだって。関数はGPUでの実行をキューに入れて、すぐに戻ってくる感じ。<br>だから、処理が終わるのを待つ必要があるなら、`synchronize`が必要。<br>`get_current_stream`は、キューがCUDAではストリームって呼ばれてるから。<br>複数の処理を同時に実行したいなら、複数のストリームを使うといいよ。<br>ベンチマークとか、別々のストリームで実行した処理の結果を組み合わせたいときとかに使うね。<br>pytorch使ってるなら、GPUで処理するときバックグラウンドで実行されるから、ベンチマークするならsync API使うといいよ。" userName="apbytes" createdAt="2025-04-04T16:39:44" color="#38d3d3">}}

{{<matomeQuote body="PythonでGPU使うときasyncio使わないのって変だなってずっと思ってたんだよねー。Python-on-GPUがasyncioより前からあったからかなって思ってたけど。<br>新しいライブラリでそこらへん改善されるかなって期待してたけど、そうでもないみたい。<br>他の言語ってGPUの非同期性を言語レベルのasyncで扱ってて、synchronizeみたいなの避けてたりするのかな？" userName="claytonjy" createdAt="2025-04-04T17:37:36" color="">}}

{{<matomeQuote body="GPUの場合はCoroutineベースのasyncとは使い方が全然違うからだよ。<br>GPUでは、できるだけ多くの非同期処理をキューに入れて、最後にsynchronizeするんだ。<br>＞b ＝ foo(a)<br>＞c ＝ bar(b)<br>＞d ＝ baz(c)<br>＞synchronize()<br>Coroutineだと、<br>＞b ＝ await foo(a)<br>＞c ＝ await bar(b)<br>＞d ＝ await baz(c)<br>みたいに、毎回synchronizeしちゃうから効率悪い。" userName="ImprobableTruth" createdAt="2025-04-04T18:24:02" color="#ff33a1">}}

{{<matomeQuote body="GPUに限らず、基本的には最初のやり方(非同期処理をまとめてキューに入れる)がいいと思うよ！" userName="hackernudes" createdAt="2025-04-04T20:14:26" color="">}}

{{<matomeQuote body="非同期ストリームを扱ってるか、単一の非同期の結果を次の関数の入力として扱ってるかで変わってくるよね。もしaがリソースbにアクセスするために必要なアクセストークンなら、aとbに同時にアクセスできないから、処理を直列化する必要がある。" userName="halter73" createdAt="2025-04-04T21:08:32" color="#45d325">}}

{{<matomeQuote body="複数のCoroutine/タスクを作って、それをgatherすればいいじゃん。CUDAをネットワーク呼び出しに置き換えても、全く同じ問題だよ。asyncioとは関係ない。" userName="alanfranz" createdAt="2025-04-05T01:33:38" color="#ff5733">}}

{{<matomeQuote body="いや、それは違うシナリオだよ。僕が言ってるのは、リクエスト間に依存関係がある場合。gatherを使うと、ネットワークリクエストは並列に実行される。依存関係がある場合は、後のリクエストが前のリクエストの値に依存するから、本質的に順番に実行される必要がある。<br>CUDAのトリックは、値の代わりにバッファを入力/出力として宣言し、CUDAのストリーム機構によって自動的に順序が強制されること。それをCoroutine機構と組み合わせても、意味がない。" userName="ImprobableTruth" createdAt="2025-04-05T01:56:18" color="#45d325">}}

{{<matomeQuote body="ライブラリの実装によると思うけど、PythonからのGPU呼び出しは、実際にはC＋＋で処理されてるんじゃないかな。で、ライブラリ内部でsynchronizeが使われてたりするのかも。" userName="apbytes" createdAt="2025-04-04T17:46:16" color="">}}

{{<matomeQuote body="どうもありがとう！" userName="hnuser123456" createdAt="2025-04-04T17:09:41" color="">}}

{{<matomeQuote body="ありがとうございます。コード例がないか記事を何度も見返しちゃいました。" userName="rahimnathwani" createdAt="2025-04-04T15:42:31" color="">}}

{{<matomeQuote body="マジ助かるー。Pytorchがここまで勢いつけた後にCUDAのPythonサポートとかマジありえん。<br>これでプラットフォームに依存しない、ある程度標準化された並列計算環境が手に入るじゃん。NVIDIAの独自仕様に縛られなくて済むー。<br>PytorchのNVIDIAバックエンド部分がPythonで直接実装できるのはマジでかいけど、エンドユーザーとか開発者にはあんま関係ないかもね。<br>でも、この新しいプラットフォームでGPUを使ったPython計算がゲームとか他の分野にも広がるかも。RustのゲームがPython経由でGPU上で爆速で動くとか想像してみ？" userName="aixpert" createdAt="2025-04-04T15:27:00" color="#ff5c5c">}}

{{<matomeQuote body="これでGPUで数値計算するのめっちゃ楽になるじゃん。マジありがたい。<br>Pytorchみたいに抽象化されてる方がいいって意見もわかるけど、個人的には時間があれば触ってみたい。<br>色々できること増えそう。" userName="disgruntledphd2" createdAt="2025-04-04T15:56:56" color="">}}

{{<matomeQuote body="CuTileはOpenAIのTritonの後継って感じだよね。Tile/blockレベルのプリミティブとかTileIRだけじゃなくて、CuPyでちゃんとしたSIMTプログラミングモデルが使えるのもマジですごい。<br>GTCであんま注目されてないけど。<br>Grace CPUに関する発表がほとんどなかったのは気になる。NvidiaのCPUとGPUでシームレスに動く抽象化はまだ先かな。<br>並列アルゴリズムを毎日書いてる身としては、NSightとかCUDA-GDBでのデバッグはGDBと違うし、CPUでアルゴリズム設計してからGPUに移植する方が楽なんだよね。<br>ModularはLLMに夢中になってない数少ないチームの一つで、複数プラットフォームをカバーする抽象化とか言語を開発してる。Mojoに期待したい。CPU-GPU間のギャップを埋めてくれるかも！" userName="ashvardanian" createdAt="2025-04-04T18:04:53" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞And not only are we getting tile/block-level primitives and TileIR<br>＞タイル/ブロックレベルのプリミティブとTileIRが手に入るだけじゃないってマジ？<br>グラフィックスプログラミングしてる身としては、AI向けのGPU APIにばかり投資されて、レンダリング向けのGPU APIにはほとんど投資されないのがマジ不満。<br>ブロックレベルのプリミティブはグラフィックスにマジで役立つ！PyTorchみたいなCPUからプログラムできるJITカーネルもグラフィックスにマジで役立つ！<br>…でも金にならないから誰もやらないんだよね。<br>しかも、AI向けのGPU APIとレンダリング向けのGPU APIが別物扱いなのも意味不明。" userName="jms55" createdAt="2025-04-05T04:41:39" color="#785bff">}}

{{<matomeQuote body="統合するのは無理があると思う。CPUとGPUって性能特性が全然違うし、設計思想も違うじゃん。そこそこ良いインターフェースでそこそこ良い感じに動く共通基盤を作ることはできるけど（PyTorchがそうだと思う）、CPUで無駄に性能が出ないアルゴリズムを書くのはナンセンス。だって、CPUはGPUみたいにコンテキスト間の同期が超遅いわけじゃないし。" userName="saagarjha" createdAt="2025-04-05T02:23:56" color="">}}

{{<matomeQuote body="マジでかい。AMD + ROCmをNVIDIAの代替として考えてた人も、もう考えなくなるんじゃない？<br>GPUでコード書くためにC++をガッツリ勉強したくない（できない）人からすると、PythonからGPUに直接アクセスできるのはマジありがたい。<br>効率化の影響はPyTorchみたいなPythonライブラリだけじゃなくて、NVIDIA GPUで動くもの全部に影響する。<br>OpenAIとかGoogleがGPU動かすために原子力発電所をどれだけ必要とするかみたいな話を聞くから、効率が上がるのはマジ嬉しい。" userName="gymbeaux" createdAt="2025-04-04T15:47:05" color="#ff5c5c">}}

{{<matomeQuote body="AMDとAppleがKhronosと一緒にOpenCLっていう競合製品を作ったって言えるかもね。でも業界全体でサポートしなかったから、結局主要な関係者はみんなOpenCLを見捨てちゃった。<br>その10年間、Nvidiaはソフトウェアを改善したり、GPUアーキテクチャをAI向けに最適化したりしてた。AppleとAMDはラスタライズ性能を最適化しようとしてた。<br>Nvidiaは独自のアーキテクチャとSDK、業界の支持、市場のニーズを持ってる。AMDが同じレベルになるには、優先順位を見直して、アーキテクチャを刷新する必要がある。" userName="bigyabai" createdAt="2025-04-04T17:32:47" color="#45d325">}}

{{<matomeQuote body="AppleがKhronosにマジ切れしたせいかもね。AMDとIntelはCUDAみたいなIDE統合、グラフィカルデバッガ、ライブラリのエコシステムを提供しなかった。<br>KhronosはC++とかFortranとか、GPUで使いたい言語をサポートする必要性を感じてなかった。<br>KhronosがC++サポートとSPIRを追加したけど、IntelとAMDは対応できなくて、OpenCL 3.0はOpenCL 1.0のリブランドになった。<br>SYCLもIntelしか気にしてないみたいで、DPC++っていう拡張機能も追加してる。Codeplayを買収して初めてSYCLツールを提供した。<br>AMDと違って、Intelはみんながソフトウェアスタックを使えるようにしないと誰も使ってくれないってことを理解してる。" userName="pjmlp" createdAt="2025-04-04T18:09:50" color="#785bff">}}

{{<matomeQuote body="Appleは標準規格を捨てたのに、代替品を何も作らなかったんだよね。独自の代替案も競争力のある位置にできなくて、TSMCのチップ（めっちゃ高い）をトレーニングに使えないとかマジ？<br>https://www.eteknix.com/apple-set-to-invest-1-billion-in-nvi...<br>業界がCUDAに抵抗しなかったとは言えないよね。関係者がメキシカンスタンドオフみたいになって、Nvidiaは鼻歌まじりでウハウハ。OpenCLがVulkanみたいに扱われてたら、今とは全然違う市場になってたかもね。" userName="bigyabai" createdAt="2025-04-04T18:45:54" color="">}}

{{<matomeQuote body="いやいや、Metal Computeがあるじゃん。Apple製品使ってる人はみんな使ってるし。<br>Vulkan？<br>GNU/LinuxとAndroidだけじゃん。Googleが推してるからって、ほとんどの人はOpenGL ES使ってるし。誰も気にしないし、OpenGLみたいにぐちゃぐちゃになってるから、Vulkanised 2025で整理方法を話し合うとか。<br>NVidiaとAMDはMicrosoftとDirectXを最初に設計して、Vulkanは後回し。" userName="pjmlp" createdAt="2025-04-04T18:52:53" color="">}}

{{<matomeQuote body="＞NVidiaとAMDはMicrosoftとDirectXを最初に設計して、Vulkanは後回し。”<br>マジ？例えば、NVIDIAは新しいレイトレーシングとニューラルネット技術のために、Vulkan拡張機能をリリースしたじゃん(VK_NV_cluster_acceleration_structure, VK_NV_partitioned_tlas, VK_NV_cooperative_vector)。DirectX12用のNVAPI拡張機能もあるし。DirectX12はNVAPIが必要で、DXCのプレリリース版に頼らないといけないから、Vulkanより技術的には劣るけどね。<br>APIは表面的にも、ドライバーの実装もほぼ同じ。NVIDIAはVulkan/DirectX12のラッパーであるnvrhiプロジェクトを持ってるから、1つのAPIで複数のプラットフォームで実行できる。" userName="jms55" createdAt="2025-04-05T04:52:20" color="#ff5c5c">}}

{{<matomeQuote body="例外じゃん。DirectXニューラルシェーダーとRTXキットのVulkan拡張機能はどこ？<br>DirectX 8シェーダーモデルの導入以降、NVidiaとの協力でCgがHLSLの基礎になった例もあるし。<br>独自のAPIはKhronos APIみたいに拡張機能がスパゲッティにならないから。KhronosはGoogleとSamsungがVulkanを採用したのがラッキーだっただけ。ValveのSteam Deckとか、IoTディスプレイとか。<br>他の場所では、主要な3D APIをすべてサポートするミドルウェアエンジンがあるし、WebGPUもVulkanのせいでブラウザの外でミドルウェアになってる。" userName="pjmlp" createdAt="2025-04-05T06:14:48" color="">}}

{{<matomeQuote body="＞例外じゃん。DirectXニューラルシェーダーとRTXキットのVulkan拡張機能はどこ？”<br>DirectXの”ニューラルシェーダー”は、さっき言ったVK_NV_cooperative_vector拡張機能じゃん。カスタムのプレリリース版DXCが必要ないから、Vulkanの方が使いやすいし。RTXキットも同じ。例えば、https://github.com/NVIDIA-RTX/RTXGI はVKとDX12の両方をサポートしてる。" userName="jms55" createdAt="2025-04-05T07:02:31" color="">}}

{{<matomeQuote body="＞Metal Computeがあるじゃん。Apple製品使ってる人はみんな使ってるし。”<br>競争が激しいサブマーケットみたいじゃん。Metal ComputeとApple Accelerate FrameworkとMLXが同じ場所にあるって！Appleは文字通りの意味で頑張ってるね。<br>＞It is only relevant on GNU/Linux and Android<br>あれ… 悲しみの第一段階ってなんだっけ？忘れちゃった。" userName="bigyabai" createdAt="2025-04-04T18:55:55" color="">}}

{{<matomeQuote body="OpenAIのTritonコンパイラに貢献してるよ。実行モデルが似てる。" userName="saagarjha" createdAt="2025-04-05T02:25:02" color="">}}

{{<matomeQuote body="＞But to have a direct pipeline to the GPU via Python<br>GPU API (CUDA, OpenCL, OpenGL, Vulkanとか)をスクリプト言語で使ったことある？<br>Nvidiaがエコシステムを作ったのはすごいけど、C++やFortranには勝てないし、普通のPythonコードをそのままGPUで実行できないよ。CUDAはやっぱりCUDAだよ。<br>CUDAバインディングは15年以上前からあるし。ほとんどの人はTorchとか高レベルのものを使うと思う。<br>NvidiaのPythonに関する広告と説明書もあるし。<br>https://developer.nvidia.com/cuda-python<br>https://developer.nvidia.com/how-to-cuda-python<br>現実はつまらないし、この記事はクリックベイト。" userName="dismalaf" createdAt="2025-04-04T16:48:36" color="#38d3d3">}}

{{<matomeQuote body="＞It's cool that Nvidia made a bit of an ecosystem around it but it won't replace C++ or Fortran and you can't simply drop in ”normal” Python code and have it run on the GPU.”<br>厳密には普通のPythonコードじゃないけど、GPUカーネルを内部DSLで書けるPythonライブラリがあるよ。NumbaとかTaichiとか。<br>NvidiaはCUDA Pythonで同じことをやろうとしてるみたい。CUDAコードの新しいパラダイム（CuTile）をC++より先にPythonで導入するかも。Taichiみたいなものより先に行こうとしてるのかもね。<br>＞Also, here's Nvidia's own advertisement for Python on their GPUs<br>これはGTCで発表された新しいネイティブ機能の話じゃないよ。既存のCUDA PythonはC++で書かれたカーネルをインライン文字列で使う。" userName="dragonwriter" createdAt="2025-04-04T17:19:57" color="#ff5c5c">}}

{{<matomeQuote body="OpenCLとかOpenGLって、Cコンパイラに入力するスクリプト言語みたいなもんだよね。CUDAの強みは、Vulkanみたいな面倒な準備なしに、意味のある型とコンパイルエラーがあったこと。でもこれって、ちょっと違うカッコの書き方が好きな人向けの、GPU上のpython-for-CUDA-Cの完全な代替品って感じ。" userName="freeone3000" createdAt="2025-04-04T17:08:27" color="">}}

{{<matomeQuote body="＞But this is 100% a python-for-CUDA-C replacement on the GPU”って言ってるけど、うーん。Nvidia製のPythonの数学ライブラリ、eDSL、キュレーションされたライブラリの集まりって感じかな。NumpyとかTritonとかと大差ないと思うんだよね。Nvidia製でツールにバンドルされてるって点を除けば。" userName="dismalaf" createdAt="2025-04-04T17:21:42" color="">}}

{{<matomeQuote body="パフォーマンスへの影響が一番気になるんだよね。ハードウェアとの間に余計なものが少ないほど、理論的にはパフォーマンスは向上するはず。NVIDIA GPUデータセンターに電力を供給するために原発を建てようとしてる企業があるくらいだから、できる限りコードを最適化する必要があると思う。" userName="gymbeaux" createdAt="2025-04-06T16:09:13" color="#ff5c5c">}}

{{<matomeQuote body="そうそう、シェーディング言語はもっと生産性が高くて、変な落とし穴もない方がいいよね。だって、コンピューティングデバイスのためにゼロから設計されたんだから。CUDAの多言語性は、OpenCLの時代遅れな「C99方言しか認めない」っていう姿勢に対する強みだったんだよね。" userName="pjmlp" createdAt="2025-04-04T18:12:59" color="">}}

{{<matomeQuote body="NVIDIAのカードはどこにでもあるよ。AMDとの最大の違いは、うちのポンコツノートPCのGeForceカードでもCUDAが使えるってこと。CUDAプログラミングを学んだり始めたりするのに、RTXなんて必要ないんだよね。" userName="pjmlp" createdAt="2025-04-04T16:21:37" color="#ff5733">}}

{{<matomeQuote body="確かに。CUDA 12.xでサポートされてる一番古いアーキテクチャはMaxwellだったはず。Maxwell（GTX 980とか）は2013年頃に出たんだっけ。ROCmが3つくらいしかコンシューマー向けのAMD GPUをサポートしてないことを考えると、10年以上のサポートは悪くないよね。だから、君のポンコツノートPCのGTX 750TiはCUDAには使えないかも。でも、君のポンコツ1050Ti Max-Qなら大丈夫！" userName="gymbeaux" createdAt="2025-04-06T16:06:01" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="これってJAX[1]と比べてどうなんだろう？JAXを使うと、NvidiaのGPUだけでなく、他のブランドのGPUでもPythonコードを実行できるんだよね（サポートは色々だけど）。NumPy関数のドロップインリプレースメントもあるし。これはNvidiaしかサポートしてないけど、JAXにはできないことができるのかな？使いやすい？固定サイズの配列に縛られない？一つのブランドのGPUに縛られる価値はある？<br>[1]https://github.com/jax-ml/jax" userName="crazygringo" createdAt="2025-04-04T20:28:20" color="">}}

{{<matomeQuote body="まあ、JAX/CUDAにまだ実装されてない処理を実装する低レベルのCUDAカーネルを書いて、既存のプロジェクトに統合するってことだよね。Numba[1]が一番近いと思う。（というか、今見てみたら、Nvidiaのこの取り組みって、実はNumbaがベースになってるみたいだね。）<br>[1]: https://numba.readthedocs.io/en/stable/cuda/overview.html" userName="odo1242" createdAt="2025-04-04T22:04:17" color="#785bff">}}

{{<matomeQuote body="次はRustのサポートかな？今はカーネルとの間で、データ構造をバイト配列として手動でシリアライズ/デシリアライズしてるんだよね。CUDAがC++で提供してるような、真に共有されたデータ構造が欲しい！" userName="the__alchemist" createdAt="2025-04-04T15:36:42" color="">}}

{{<matomeQuote body="CUDAが輝く分野、例えば数値計算とか線形代数とかで、Rustってまだあんまり使われてないよね？C++とかFortranで十分じゃね？メモリ管理もそんな複雑じゃないし。" userName="KeplerBoy" createdAt="2025-04-04T16:36:51" color="">}}

{{<matomeQuote body="数値計算のコードってめっちゃ長生きだからね（だからFORTRANが現役なんだし）。" userName="IshKebab" createdAt="2025-04-04T18:55:52" color="#ff5733">}}

{{<matomeQuote body="それだけじゃないよ。Fortranは数値計算コード書くのにマジ優秀。最近のFortranは使いやすいし、簡単に自動並列化できる方法も色々あるし、新しいFortranコードも普通に作られてるよ。CERNで働いてる友達が言ってた。" userName="nine_k" createdAt="2025-04-04T23:53:19" color="#ff33a1">}}

{{<matomeQuote body="新しいところだと、slangの方が採用される可能性あるかもね。" userName="pjmlp" createdAt="2025-04-04T18:14:05" color="">}}

{{<matomeQuote body="たぶんこれのことじゃないかな？https://shader-slang.org/<br>一見した感じ、GPGPUよりグラフィック向けっぽいけど。<br>編集：このプロジェクトの一部は汎用目的っぽくて、PyTorchと連携してるみたい。<br>https://slangpy.shader-slang.org/en/latest/" userName="_0ffh" createdAt="2025-04-04T22:40:08" color="#ff33a1">}}

{{<matomeQuote body="そうそれ。shader languageは全部computeもサポートしてるよ。グラフィックだけじゃなくてね。" userName="pjmlp" createdAt="2025-04-05T06:25:23" color="">}}

{{<matomeQuote body="ありがとう。でも単なる可能性じゃなくて、用途によって設計が変わるってことを言いたかったんだ。" userName="_0ffh" createdAt="2025-04-05T08:57:25" color="">}}

{{<matomeQuote body="Rust-CUDAプロジェクトが最近再始動したんだ[0]。ちょっと調べてみてるんだけど、夏は暇だから貢献したいな。[0] https://github.com/rust-gpu/rust-cuda" userName="chasely" createdAt="2025-04-04T16:01:43" color="">}}

{{<matomeQuote body="まだ動かないけどね！何年も前から。最近のGH issueで再起動の要望に関して、私は聞いたよ。“いくつかの異なるマシン（OS、GPU、CUDAバージョンなど）で試して、エラーなしに最新のRustCとCUDAバージョンで動作するようにしてください。“返事は“それはかなりの作業になるでしょう。“だった。一方、Cudarcは動作する…" userName="the__alchemist" createdAt="2025-04-04T16:11:46" color="#ff5733">}}

{{<matomeQuote body="メンテナーだけど、壊れてないしちゃんと動くよ。詳しくは[https://rust-gpu.github.io/blog/2025/03/18/rust-cuda-update](https://rust-gpu.github.io/blog/2025/03/18/rust-cuda-update)を見てね。" userName="LegNeato" createdAt="2025-04-05T12:28:34" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！試してみてまた報告するね。<br>編集：まだ最新リリースが2022年のものとして表示されてる。これはもう試してて、動かないって確認済み。" userName="the__alchemist" createdAt="2025-04-05T13:40:51" color="">}}

{{<matomeQuote body="そりゃ全部動かすには時間かかるよね。ポジティブな点としては、最近Modal[0]からスポンサーシップを得て、CI/CD用のGPUを提供してもらえるようになったから、ハードウェアの対応範囲を拡大できるはず。" userName="chasely" createdAt="2025-04-04T16:54:13" color="">}}

{{<matomeQuote body="Burn frameworkってどう思う？（マジな質問、マジで何もわかってないんだ）" userName="Micoloth" createdAt="2025-04-04T15:46:24" color="">}}

{{<matomeQuote body="Burnで自分のミニGPTを学習させたけど、結構気に入ったよ。ジェネリクスが少ないRustのスタイルが好きなんだけど、あのプロジェクトの目標を考えると避けられないのかも。このcrateは勢いがあって、新機能、リリース、GHやDiscordでの活発なコミュニティもあるし、どんどん良くなっていくと思う。" userName="airstrike" createdAt="2025-04-04T15:51:40" color="#38d3d3">}}

{{<matomeQuote body="聞いたことないな。調べてみた。関係ないんじゃない？<br>Cudarcを使ってる。" userName="the__alchemist" createdAt="2025-04-04T15:53:02" color="">}}

{{<matomeQuote body="Rustの所有権セマンティクスがGPUプログラミングに全然合わないってことを置いといても、ML研究者は絶対にRustを学ばないから、これは絶対にありえない…" userName="taminka" createdAt="2025-04-04T16:12:56" color="">}}

{{<matomeQuote body="原則的には同意するけど、CUDAはAIだけじゃないってことをみんな忘れすぎ。" userName="pjmlp" createdAt="2025-04-04T16:19:57" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
