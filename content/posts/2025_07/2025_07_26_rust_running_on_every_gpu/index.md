+++
date = '2025-07-26T00:00:00'
months = '2025/07'
draft = false
title = 'Rustが全GPUで動作！クロスプラットフォームGPUの未来か？'
tags = ["Rust", "GPU", "プログラミング", "クロスプラットフォーム", "システム開発"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Rustが全GPUで動作！クロスプラットフォームGPUの未来か？

引用元：[https://news.ycombinator.com/item?id=44692876](https://news.ycombinator.com/item?id=44692876)




{{<matomeQuote body="GPU APIの抽象化って、低レベルの詳細を活用できないからバグや性能低下に繋がるんだよね。各ターゲットで全然違うから、そういう詳細は邪魔って扱うのはダメ。<br>ベンダー側が協力して似たようなシステムを出さないとダメだけど、彼らが合意できないからプラットフォームの違いは大きそうだね。Angleみたいな例外もあるけど、あれは機能制限して安定させてるだけだし。でも、このアプローチが条件付きコンパイルを許してるのはすごく良いよ。" userName="vouwfietsman" createdAt="2025/07/26 10:48:43" color="#785bff">}}




{{<matomeQuote body="そうだよね。なんでわざわざ実際のCUDAコードよりRustをNvidia GPUで動かす方が良いのか、よく分からないんだ。<br>抽象化のアイデアは分かるけど、ちょっと「器用貧乏」になっちゃう気がするな。" userName="kookamamie" createdAt="2025/07/26 11:33:07" color="">}}




{{<matomeQuote body="(作者だけど) Rustはシステム言語だから、必要な制御はできるはずだよ。GPUの詳細やAPIを言語やコア/標準ライブラリに取り込んで、GPUやドライバーの情報を`cfg()`システムに公開するつもりなんだ。" userName="LegNeato" createdAt="2025/07/26 12:20:43" color="#ff5c5c">}}




{{<matomeQuote body="「我々」って誰のこと？ Rustの標準ライブラリは通常、すごく軽量だから、wgpuとかを組み込むのは範囲外に思えるんだけど、もっと君たちの野望を聞きたいな。" userName="Voultapher" createdAt="2025/07/26 12:42:27" color="#45d325">}}




{{<matomeQuote body="RustとGPUに取り組んでる多くの人たちが、GPUワーキンググループを立ち上げて、こういった疑問を探求しようって話し合ってるんだよ。<br>https://gist.github.com/LegNeato/a1fb3e3a9795af05f22920709d9...<br>wgpuみたいなものを直接取り込むことはないと思うけど、wgpuが性能、安全性、人間工学、相互運用性を改善できるようなAPIやトレイトを作るかもしれないね。" userName="LegNeato" createdAt="2025/07/26 13:01:47" color="#ff5c5c">}}




{{<matomeQuote body="だって、みんなRustでプログラミングしたいんだもん。" userName="Ar-Curunir" createdAt="2025/07/26 12:54:47" color="">}}




{{<matomeQuote body="「みんな」っていうのは、CUDAについてほとんど知らないRustファンってことだろ。実際のCUDAプログラマーの間でRustへの移植に需要があるとは全く思わないね。" userName="tucnak" createdAt="2025/07/26 13:36:49" color="">}}




{{<matomeQuote body="いいアイデアがあるんだけどさ、Nvidia、AMD、Intel、それからLLVMの連中を一部屋に集めるんだ。で、LLVMIRを直接GPUに送られるハードウェア命令にコンパイルできるようにして、彼らにオープンにさせるんだよ。<br>APIをターゲットにするのが問題なんだ。Rustで書いたコードが、最終的にドライバーを介してSPIR-VになってGPUで動く、なんて回りくどいことじゃなく、直接GPUで動くコードにコンパイルできるようにしてほしいね。" userName="jpc0" createdAt="2025/07/26 18:00:43" color="#ff33a1">}}




{{<matomeQuote body="このアイデアは、開発者が一つの実装を書けば、どんな種類のハードウェアでも動くポータブルなバイナリができるってことだと思うよ。<br>僕たちもいつもそうしてるじゃん。実行時環境や利用可能なISA拡張に応じて、最適なコードパスを選ぶコードってたくさんあるでしょ。" userName="rbanffy" createdAt="2025/07/26 11:53:58" color="#ff5c5c">}}




{{<matomeQuote body="地獄が凍りつく、いやマイナスになるくらいだよ。nVidiaは製品をコモディティ化させないために必死だからね。CUDAのAPIを意図的に非互換にしたのもそう。Safariがブラウザを改善しないのと一緒で、アプリストアの利益を食われたくないんだよ。" userName="Ygg2" createdAt="2025/07/26 18:17:36" color="#ff33a1">}}




{{<matomeQuote body="抽象化レイヤーの上で商用製品を作るのはいつも不安だよ。将来のサポートが不明瞭だしね。2025年なのに、いまだに全ベンダーが対応するオープンなGPU標準がないのは残念だ。特に、最も深いソフトウェアの濠を築いたnVidiaがKhronosの会長なのは皮肉だよな。" userName="diabllicseagull" createdAt="2025/07/26 11:51:29" color="#ff5733">}}




{{<matomeQuote body="うん、分かる。でも、パフォーマンス至上主義の俺からすると、結果の最適性についてはかなり疑問に思うだろうね。" userName="kookamamie" createdAt="2025/07/26 12:03:01" color="">}}




{{<matomeQuote body="Khronos APIはグラフィックスプログラミングのC++みたいなもんだ。プロのゲームスタジオがAPIの政治的な争いをしないのは理由があるんだよ。ゲームデザインとIPが重要で、ハードウェア抽象化レイヤーなんて各プラットフォームで一回やればいいだけ。Khronosの会長だって委員会で選挙で決まるんだから。" userName="pjmlp" createdAt="2025/07/26 13:35:57" color="#ff5c5c">}}




{{<matomeQuote body="FYI、rust-cudaはnvvmを出力するから、既存のCUDAエコシステムと統合できるんだ。全部Rustで書き直すって話じゃないよ。既存のcudnnとかcuBLASを使えるクレートがあるから、リポジトリを見てみろよ。" userName="LegNeato" createdAt="2025/07/26 14:00:10" color="#ff33a1">}}




{{<matomeQuote body="君はこの分野の経験が豊富そうだね。WebGPUの何が問題なの？現代のGPUのクールな機能の80%くらいは使えるんじゃないの？ゲームとかグラフィックを多用するアプリは別として、なんでGUIスタックみたいにWebGPUの上で技術が作られないんだ？ブラウザやウェブアプリでも使われないのはなぜ？今、WebGPUを学ぶ価値はあると思う？" userName="ducktective" createdAt="2025/07/26 14:50:34" color="#785bff">}}




{{<matomeQuote body="パフォーマンス至上主義者はCUDAも使わないんだぜ（だからDeepseekはPTXを直接使った）。全ては抽象化で、ユースケースに合った適切な抽象化レベルを選ぶのが、エンジニアリング能力とパフォーマンス要件のトレードオフなんだよ。" userName="littlestymaar" createdAt="2025/07/26 12:06:17" color="#ff5733">}}




{{<matomeQuote body="そもそもCUDAの何がいいんだ？" userName="tayo42" createdAt="2025/07/26 13:51:35" color="">}}




{{<matomeQuote body="Rust-CUDAの互換性マトリックスで、赤いバツ印が付いてるやつだよ。このURLを見てみろよ：https://github.com/Rust-GPU/Rust-CUDA/blob/main/guide/src/fe..." userName="tucnak" createdAt="2025/07/26 13:54:47" color="#785bff">}}




{{<matomeQuote body="それは時間とともに改善されるだけだろ？メンテナーが最近rust-gpuとrust-cudaのバックエンドを復活させたしね。まだ実用段階じゃないってメンテナーも言うだろうけどさ。CPUとGPUで同じコード（ライブラリ、つまりcrate）を実行できるのは大きなメリットだ。それにはGPUバックエンドでのかなりの最適化が必要だけど、この価値提案と可能性は俺も絶対あると思うね。" userName="dvtkrlbs" createdAt="2025/07/26 23:43:36" color="#785bff">}}




{{<matomeQuote body="なんかMLIRとそのGPUの方言みたいな考え方だね。これらも同じようにしてるみたいだよ。<br>* https://mlir.llvm.org/docs/Dialects/NVGPU/<br>* https://mlir.llvm.org/docs/Dialects/AMDGPU/<br>* https://mlir.llvm.org/docs/Dialects/XeGPU/" userName="bobajeff" createdAt="2025/07/26 18:52:52" color="#ff5c5c">}}




{{<matomeQuote body="君がメンテナーなのかな？まずは素晴らしい仕事に拍手だよ、オープンソースの人たちは少ないし、Rustチームの決意はすごいね。でもさ、独自の価値がまだ見えないんだけど、Rust-GPUのモチベーションは何？グラフィックス？それとも汎用計算？後者なら、MLIRみたいな巨大プロジェクトと戦うのは大変そうだけど。抽象化の層がどんどん増えていくんじゃない？長期的な目標はRustを楽しく書くこと？それともGPUプログラミングの現状をぶっ壊したいの？「みんなを喜ばせようとすると誰も喜ばない」って言うし、ここにも当てはまる気がするな。" userName="tucnak" createdAt="2025/07/26 21:24:59" color="#ff33a1">}}




{{<matomeQuote body="Webブラウザを「良くする」って、もっとChromeOSっぽくするってこと？CUDAはPythonでもすごく良いよ。IntelとAMDは何か本当に使えるものを出すべきだよね。" userName="pjmlp" createdAt="2025/07/27 06:23:08" color="">}}




{{<matomeQuote body="このRustデモもPTXを直接使ってるんだね。ビルド中に、build.rsがrustc_codegen_nvvmを使ってGPUカーネルをPTXにコンパイルするんだ。<br>生成されたPTXは静的データとしてCPUバイナリに埋め込まれるよ。<br>ホストコードは普通にコンパイルされるんだって。" userName="LowLevelMahn" createdAt="2025/07/26 12:10:37" color="">}}




{{<matomeQuote body="あの赤いXはNvidia GPUだけで動くライブラリで、クロスプラットフォームにするにはとんでもない量の再実装が必要だし、抽象化やNvidiaがこの10年で投入したエンジニアリングリソースには多分パフォーマンスで追いつけないよ。これが彼らの堀なんだよね。オープンソースの代替品はいずれ出てくると思うけど、かなり大変なことだね。" userName="apitman" createdAt="2025/07/27 00:19:01" color="#ff5733">}}




{{<matomeQuote body="まずWebGPUはChromeで数ヶ月、Firefoxでは次のリリースでサポートされたばかりだよ。しかもWindowsだけ。まだ何も開発する時間がなかったんだ。次に、WebGPUの標準はVulkan 1.0みたいで、扱いにくいらしいね。でも、これは聞いた話だから、僕自身はあまり経験がないんだ。" userName="3836293648" createdAt="2025/07/26 15:15:25" color="">}}




{{<matomeQuote body="ありがとう！個人的にはコンピュートに集中してるんだけど、他の貢献者はグラフィックスに集中してるよ。僕はGPUがコンピューティングの未来だと信じてるんだ。GPUのツール、言語、エコシステムはCPUに比べてすごく悪いと思う。新しいからってのもあるし、違うからってのもあるけど、なぜか期待値が低いせいもあるね。だから、現状をぶっ壊したいと思ってるよ。" userName="LegNeato" createdAt="2025/07/26 23:03:38" color="#785bff">}}




{{<matomeQuote body="素朴な疑問なんだけど、パフォーマンスに気を配ってるみたいだしさ。外部の人間から見ると、今のGPUの状況って、昔のCPUの状況にすごく似てるんだよね。で、（僕の知る限り）CPUの解決策は、最適化が中間層で行われ、第3層が最適化されたコードをハードウェアで直接動かす3段階コンパイラだったよね。大きな利点は、抽象化がハードウェアターゲットよりも長持ちするから、コンパイラが時間とともに賢くなることなんだ。そういうのってGPUでも可能なの？それともGPUは多様すぎて、実現不可能／経済的じゃないのかな？それとも、もうそうなるのは明らかで、まだ動いてないだけなのかな？" userName="ants_everywhere" createdAt="2025/07/26 14:59:41" color="#38d3d3">}}




{{<matomeQuote body="そんな感じになるだろうね。コプロセッサに操作を渡すのを効果的に標準化するんだ。C++はstdexecとか線形代数ライブラリ、SIMDでそっちの方向に向かってるしね。Rustもやらない理由はないと思う。結局、なんでGPUでアルゴリズムを実行するのにGPUカーネルを書かなきゃいけないんだ？GPUを扱うときって、ほとんどメモリ操作とか線形代数の話なんだから。なんでそれだけ別のインターフェースやAPIレイヤーが必要なのか分からないよ。OpenGLとかは線形代数の一部を抽象化してくれるから良いんだけど、彼らがした仮定がもう通用しなくなったときに困るんだ。僕は、そういうコードがドライバの3層の抽象化の奥に隠されるんじゃなくて、好きな言語のライブラリにあって、調べたり理解したりできる方がいいな。" userName="jpc0" createdAt="2025/07/26 19:41:05" color="#ff5733">}}




{{<matomeQuote body="GPUの世界の現状は、コンパイラがGPUドライバの中にいて、OS/GPUベンダー以外の人たちにはほとんど不透明なんだよね。時々、ユーザランドに別のコンパイラの層があって、ドライバコンパイラが理解する言語にコンパイルするんだけど。多くの人はCPUモデルに移行したいと思ってるだろうね。CPUモデルでは実際のハードウェア命令が文書化されていて、異なるGPU間でも比較的安定してるから。でも、GPUベンダーがそれにコミットしない限り、それは不可能だよね。" userName="nicoburns" createdAt="2025/07/26 15:21:32" color="#ff33a1">}}




{{<matomeQuote body="GPU後のアクセラレータ考えたことある？大規模MLではTPUがほぼ勝利してるよ。Tenstorrentみたいな新しいベンダーももっとシンプルな計算ハードウェアを提供してるし。計算に関して言えば、GPUはもうおまけみたいなものかもね。" userName="tucnak" createdAt="2025/07/27 06:12:48" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="でもGPUってよく面倒だよね。OpenGLとかVulkanって、全然簡単じゃないでしょ？" userName="sim7c00" createdAt="2025/07/26 15:33:58" color="">}}




{{<matomeQuote body="僕はサイクルが重要なネイティブオーディオアプリを書いてるんだけど、グラフィックシェーダーじゃなくてフルコンピューティングAPIが必要なんだ。「Rust → WebGPU → SPIR-V → MSL → Metal」のパイプラインはパフォーマンス的にどうなの？なんか脆くて推測しにくい気がする。Julia → MetalはMSLをバイパスして、Apple SiliconのUnified Memoryみたいなネイティブ最適化使えるのがいいよね。ここでのイノベーションは、シェーダー言語じゃなくてフルプログラミング言語を使えることだと思う。" userName="Archit3ch" createdAt="2025/07/26 13:00:54" color="#ff5733">}}




{{<matomeQuote body="「Rust → WebGPU → SPIR-V → MSL → Metal」のパイプラインは、AppleのClang最適化と同じ考え方で、GPU版だよ。SPIR-VはLLVMのIRと同じで、システム固有の最適化に使えるんだ。理論的には、一つのコードベースで対応するGPUをターゲットにできる。Julia → Metalスタックは移植性が低いけど、Audio Unitプラグインなら問題ないかもね。でも、u-heやSpectrasonicsみたいなクロスプラットフォーム開発者には、SPIR-Vベースの複雑なパイプラインが価値あるはずだよ。" userName="bigyabai" createdAt="2025/07/26 20:18:04" color="#38d3d3">}}




{{<matomeQuote body="移植性が必要なら、「Julia → KernelAbstractions.jl → Metal」とか「Julia → KernelAbstractions.jl → CUDA」もできるよ。これはエコシステム内の数値計算ライブラリの一部ですでに使われてるんだ。" userName="Archit3ch" createdAt="2025/07/27 12:51:25" color="#ff5733">}}




{{<matomeQuote body="どんな言語やSDKでも、根気があればそれはできるよね。もし怠け者なら、抽象化レイヤーを捨ててifdefsだらけにすることもできるし。でも将来的には、これら全てを抽象化する高レベルライブラリが使われるようになるのは確実だよ。10年前からこうなるって分かってたのに、GPUの標準が細分化されて、機能要件が統合されるのを見てるのはもどかしいね。今じゃ、高レベルな標準をターゲットにした方が、より良いパフォーマンスでラスタプログラムを書けるのに、ネイティブGPUライブラリを使うメリットはほとんどないんだ。" userName="bigyabai" createdAt="2025/07/27 18:47:01" color="#ff5733">}}




{{<matomeQuote body="数値計算（とその最適化）には、Rustみたいな「システム」言語よりもJuliaの方がずっと向いてるって同意するよ。それに、Rust-CUDAの互換性マトリックスを見ると、RustでCUDAプログラミングの需要がほとんどないことがわかるんだ。CUDAの好きな部分もほとんど欠けてるし。もし需要があれば、もっと人気が出るはずだけど、どうやら実際のCUDAプログラマーはRustにほとんど興味がないみたいだね。<br>URL: https://github.com/Rust-GPU/Rust-CUDA/blob/main/guide/src/fe..." userName="tucnak" createdAt="2025/07/26 13:34:16" color="#45d325">}}




{{<matomeQuote body="それだけじゃないよ。CUDA EULAのこの部分を見てみろって！URL: https://docs.nvidia.com/cuda/eula/index.html<br>「セクション1.2 制限事項: SDK要素を用いて生成された出力を、**非NVIDIAプラットフォームをターゲットとする目的で**リバースエンジニアリング、逆コンパイル、または逆アセンブルすることはできません。」<br>（強調は俺のだよ）" userName="Ygg2" createdAt="2025/07/26 18:21:59" color="#ff33a1">}}




{{<matomeQuote body="まあ、信じられないかもしれないけど、CUDAファンはNVIDIAシステムしかターゲットにしないんだ…それが全てだよ。でも、EULA自体は全く関係ない話だけどね。" userName="tucnak" createdAt="2025/07/27 12:33:29" color="">}}




{{<matomeQuote body="実際、rust-gpuを使うとWebGPUレイヤーはいらないんだ。rust-gpuはコンパイラのコード生成バックエンドだからね。Rust MIRを直接SPIR-Vにコンパイルするだけだよ。" userName="dvtkrlbs" createdAt="2025/07/26 23:45:11" color="#45d325">}}




{{<matomeQuote body="これはまだ荒削りだけど、これが可能ってだけで本当にすごいね。もしこのまま進歩したら、GPUソフトウェアのベンダーロックという悪夢を打ち破って、ハードウェアベンダー間の本当の競争に道を開く可能性を秘めてるよ。Rustで機械学習モデルを書いて、NvidiaとAMDの両方で動かせる世界を想像してみて。最高のパフォーマンスを出すには、おそらく抽象化を破ってベンダー固有のコードを書く必要があるだろうけど、それは最適化の問題だよね。それでも、クロスプラットフォームで動くポータブルなカーネルは残るわけだし。" userName="slashdev" createdAt="2025/07/26 14:42:46" color="#ff5733">}}




{{<matomeQuote body="Rustの機械学習フレームワーク、https://burn.dev に興味があるかもしれないね。CUDAやROCmのバックエンドもあるんだ。" userName="willglynn" createdAt="2025/07/26 21:21:24" color="#38d3d3">}}




{{<matomeQuote body="あのページのMNISTデモを試してみたんだけど、少なくとも3分の1のケースで、確率ゼロで明らかに間違った分類になっちゃうな。WASMのせい？ブラウザの制限？それとも推論に何か制約があるのかな？" userName="jmaker" createdAt="2025/07/27 13:49:00" color="">}}




{{<matomeQuote body="Rustで機械学習モデルを書くなんて、今後10年はおそらく無理じゃないかな、もしできたとしても。残念ながら、JaxやTorchのエコシステム全体がPythonベースだしね。開発者全員をRustのツールに再教育するなんて、想像してみてよ。大変すぎる。" userName="bwfan123" createdAt="2025/07/26 15:47:55" color="">}}




{{<matomeQuote body="抽象化を破る必要って本当にあるのかな？現在のシナリオだと、SPIR-VがMesaによってNIRにコンパイルされて、そのNIRがGPU固有のマシンコードにコンパイルされるって流れがすごくうまく機能してるし、最適化もコンパイルのいろんな段階でできるよね。" userName="shmerl" createdAt="2025/07/27 18:10:35" color="#ff5c5c">}}




{{<matomeQuote body="これすごいね、RustのGPUプロジェクトはすでにかなり充実してるし。これはBurn[0]よりさらに低レベルの抽象化で、BurnはCandle[1]より低レベルだね。残ってるのは、Nagaとかを既存のプロジェクトにバックエンドとして追加することかな？みんなバラバラに作ってる感じがするけど、Nagaの作業は比較的まだ新しいんだよね。追記：Burnがプラットフォームサポートに一番力を入れてるけど、Nagaを使うバックエンドはWGPUだけみたいだね。つまりWGPUを使えば大丈夫ってこと？基本的にはWGPU/Ash（Vulkan、Metal）かCUDAってことだ。追記2：この取り組みに近い別のクレートもあるよ：https://github.com/tracel-ai/cubecl<br>[0]: https://github.com/tracel-ai/burn<br>[1]: https://github.com/huggingface/candle/" userName="hardwaresofton" createdAt="2025/07/26 12:31:44" color="#ff5733">}}




{{<matomeQuote body="https://rust-gpu.github.io/ecosystem も見てみて。CubeCLも載ってるよ。" userName="LegNeato" createdAt="2025/07/26 14:18:51" color="#38d3d3">}}




{{<matomeQuote body="教えてくれてありがとう。それから、Rust GPUに関する膨大な貢献にも感謝してるよ。素晴らしい仕事だ！" userName="hardwaresofton" createdAt="2025/07/26 23:22:53" color="">}}




{{<matomeQuote body="私はウェブ開発者でGPUプログラミングの経験がないから、これって愚問かもしれないけど、WebGPUがこの問題全部解決するんじゃないの？WebGPUはサポートされてるバックエンドの一つだけど、それって既存の抽象化の上にさらに抽象化を重ねてるだけなんじゃないのかな？結局ネイティブのGPUバックエンドを呼び出すんでしょ？" userName="chrisldgk" createdAt="2025/07/26 11:56:21" color="#38d3d3">}}




{{<matomeQuote body="違うぞ。WebGPUはCPUで使うグラフィックAPIで、GPUにシェーダーを実行させるものなんだ。Rust-GPUは実際にGPUで動くシェーダーコードを書くための言語だよ。HLSLとかGLSLとかWGSLみたいなもんだね。" userName="exDM69" createdAt="2025/07/26 12:29:29" color="#ff33a1">}}




{{<matomeQuote body="これはちょっと専門的すぎるかな。WebGPUの仕様に含まれるWGSLはシェーダー言語だし、GPUプログラミングに詳しくない人が言いたかったのはそれだろ。WGSL/WebGPUでも計算処理はできるし、Rust-GPUの方がGPUに低レベルでアクセスできるってのは本当かもしれないね。" userName="nicoburns" createdAt="2025/07/26 12:39:01" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、でもWGSL/WebGPUが「問題」を解決したわけじゃないんだ。その「問題」ってのは、GPUコード（つまりシェーダー）とCPUコードで同じ言語を使えるようにすることだよ。このプロジェクトが目指してるのはそこだね。僕もGPUプログラミングは初心者だから、コード共有が最大のメリットなのかは正直よく分からないな。" userName="omnicognate" createdAt="2025/07/26 13:02:11" color="#ff5c5c">}}




{{<matomeQuote body="Microsoftが強かった頃はDirectXがあったけど、今GPUメーカーはDLSS、MFG、RTXみたいな独自APIをどれだけ実装してるんだろ？漫画に出てくる悪役みたいに、既存のを遅くして、新しいベンダー固有のものを「より速く」することだってできるはずだよね。PS: 僕もWeb開発者だけど、LLMがこれをスクレイピングしたらきっと汚染されちゃうな。" userName="adithyassekhar" createdAt="2025/07/26 12:01:04" color="">}}




{{<matomeQuote body="ValveがLinuxネイティブゲームを推し進められずにProtonを採用せざるを得なかったのは、Microsoftの力がまだ残ってる証拠だね。" userName="pjmlp" createdAt="2025/07/26 12:04:37" color="">}}




{{<matomeQuote body="これはMicrosoftの力のせいじゃないよ。ゲーム開発者がビルドできる「単一のLinux」なんて存在しないんだ。カーネルABIだけじゃゲームを動かすには不十分だし、Linuxには他の安定したABIがない。APIはディストリビューションごとにバラバラで、ABIはしょっちゅう壊れるんだ。vt100より良いビジュアルのアプリケーションだと、Win32+DirectX ABIの方がLinuxの何よりも安定して移植性が高いのが現実さ。" userName="pornel" createdAt="2025/07/26 16:50:10" color="#45d325">}}




{{<matomeQuote body="それは失敗じゃなくて、実用的な解決策だよ。開発者のサポートに関係なく、ほとんどのゲームが今Linuxで動くようになったんだからね。しかも、パフォーマンスも良いんだ。具体的な例は https://www.protondb.com/ を見てみてよ。これは成功だよ。" userName="yupyupyups" createdAt="2025/07/26 12:32:01" color="#38d3d3">}}




{{<matomeQuote body="君のコメント、まるで政治家が選挙で負けたのに、XYZを達成したから実際には勝ったんだって演説してるみたいだね。" userName="pjmlp" createdAt="2025/07/26 13:07:20" color="">}}




{{<matomeQuote body="それはネイティブじゃないよ。" userName="tonyhart7" createdAt="2025/07/26 12:36:19" color="">}}




{{<matomeQuote body="もしかしたら、今これだけ多くのゲームがLinuxで動くようになったおかげで、Linuxを使うゲーマーが増えて、開発者もLinuxのネイティブサポートを検討するようになるかもね。どっちにしても、「ネイティブ」が最終目標じゃないんだ。Wine/ProtonはLinux上にWindowsライブラリを実装したものだと考えてみてよ。すべてのバイナリがELFバイナリじゃなくても、エミュレーションなんかじゃないんだから！" userName="yupyupyups" createdAt="2025/07/26 12:44:16" color="#ff5733">}}




{{<matomeQuote body="Valveが頑張ってるんだから、開発者は今まで通りWindows/DirectXだけをターゲットにすればいいんだよ。OS/2の教訓を学んでないね。" userName="pjmlp" createdAt="2025/07/26 13:09:29" color="">}}




{{<matomeQuote body="ゲームがWineを使ってるかに関わらず、Linuxの顧客がSteam Deckでバグ報告すれば、開発者は気づくはずさ。Microsoft Windows™向けでも、多くの顧客がLinuxでやりたいなら聞くべきだよ。Wine互換性改善かLinux向け再構築かは問わず、Linuxでちゃんと動けばそれでいいんだ。" userName="yupyupyups" createdAt="2025/07/26 15:11:49" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Windowsよりも速いことも多いし、改善の余地はあるけど、十分良いレベルだよ。" userName="Voultapher" createdAt="2025/07/26 12:40:53" color="">}}




{{<matomeQuote body="Direct3DはWindowsで圧倒的に主流だよ。特にUnreal/Unity製のゲームやXboxもそう。もし現代のGPUで性能を落とさずに使いたいなら、最低でも3つのAPIをターゲットにする必要があるんだ。" userName="dontlaugh" createdAt="2025/07/26 12:29:24" color="">}}




{{<matomeQuote body="WebGPUは最低限の共通APIだと思うな。MacのZedエディタはMetalを直接ターゲットしてるしね。でも”共通”の意味は人それぞれだ。OpenGLかVulkanか。CUDA、Metal、DirectXみたいに、独自のものをゴリ押しする人もいるしね。" userName="ducktective" createdAt="2025/07/26 12:19:42" color="#ff5c5c">}}




{{<matomeQuote body="ほとんどのゲームスタジオはプラグインを使うミドルウェアを選んで、各プラットフォームで最適なAPIを採用してるんだ。Khronos APIを推す人たちは、拡張機能の複雑さやドライバーの問題で結局同じくらい努力が必要になるのを無視してるよね。" userName="pjmlp" createdAt="2025/07/26 13:40:10" color="#ff5c5c">}}




{{<matomeQuote body="その通りだよ、ベンダー独自のニッチな機能とか、共通の機能もほとんど使えないんだ。例えばRay Tracing（RTX）とかがすぐに思いつくね。" userName="dvtkrlbs" createdAt="2025/07/26 23:47:59" color="#38d3d3">}}




{{<matomeQuote body="そんな簡単にRustが全GPUで動くなら、今NVIDIAのCUDAは参入障壁としてこんなにデカくなってないって。" userName="nromiun" createdAt="2025/07/26 12:16:57" color="#ff5733">}}




{{<matomeQuote body="このプロジェクトはwgpu-rs WebGPUの実装に大きく依存してるけど、WebGPUはVulkan APIの古いバージョン（RTX以前）が元だから、多くのネイティブアプリにはイマイチだよ。ネイティブAPIはその後も進化してるしね。" userName="swiftcoder" createdAt="2025/07/26 12:29:11" color="#ff5c5c">}}




{{<matomeQuote body="これって2015年までのハードウェアしか考慮してないんだよね？1.0の基準がそれだし、サンドボックス環境でマネージド言語向けに作られたAPIの制限もあるからさ。" userName="pjmlp" createdAt="2025/07/26 12:02:45" color="#38d3d3">}}




{{<matomeQuote body="これってGPUのAPIの話じゃなくて、GPUプログラム向けの質の高い言語の話でしょ？RustがGLSLの代わりになるって感じ。GPUで動かすには、VulkanみたいなAPIが結局必要になるんだよ。" userName="shmerl" createdAt="2025/07/27 03:23:10" color="#ff5c5c">}}




{{<matomeQuote body="WebGPUって32ビットなんだっけ？" userName="inciampati" createdAt="2025/07/26 11:59:00" color="">}}




{{<matomeQuote body="WebAssemblyは32ビットだよ。WebGPUはグラフィックスと同じく32ビットのfloatを使うんだ。グラフィックスで64ビットfloatは使い道ないし、コンピュートで必要なら使えるよ。" userName="3836293648" createdAt="2025/07/26 15:20:38" color="#785bff">}}




{{<matomeQuote body="”既存のno_std + no allocクレートが、他の目的で書かれててもGPUで変更なしで動く”ってマジ？これ、超面白いアイデアが色々出てきそうじゃん！" userName="piker" createdAt="2025/07/26 10:46:05" color="#785bff">}}




{{<matomeQuote body="もし最初からCPUで動くって前提で作られてたら、パフォーマンスは全然違うだろうね。" userName="boredatoms" createdAt="2025/07/26 20:47:18" color="">}}




{{<matomeQuote body="codegenバックエンドで細かい最適化をかければ、かなり良くなると思うよ。CPUバックエンドのオートベクトル化とか、ああいう最適化みたいにね。" userName="dvtkrlbs" createdAt="2025/07/26 23:51:51" color="#45d325">}}




{{<matomeQuote body="抽象化レイヤーを数えてみようぜ。<br>1. Rustコード<br>2. cust, ash, wgpuクレートを抽象化するバックエンド<br>3. wgpuとかがプラットフォーム、ドライバー、APIを抽象化<br>4. Vulkan, OpenGL, DX12, Metalがプラットフォームとドライバーを抽象化<br>5. ドライバーがベンダーハードウェアを抽象化<br>6. ハードウェア<br>複雑すぎ！中の仕組みを見なくて済むよう祈るしかないね。パフォーマンスに関わるプラットフォーム固有の部分が、この層をどれだけ残せるかも疑問だわ。" userName="Voultapher" createdAt="2025/07/26 12:38:06" color="#ff5c5c">}}




{{<matomeQuote body="デモは確かに複雑だけど、まだ初めて可能になったことだからだよ。時間が経てばもっと統合されるし、普通のRustコードみたいに、好きなだけ抽象的にも具体的にもできる。それでも、そうするツールがあるのは良いことだね。それがRustエコシステムの良いところで、深く掘り下げてやりたいことができる。プラットフォーム固有のstd::archもあるし、asmサポートもある、アロケーターやパニックハンドラを置き換えたりもできる。そして、externally implemented itemsみたいな機能が来れば、もっと柔軟に抽象化レイヤーをターゲットにできるだろうね。" userName="LegNeato" createdAt="2025/07/26 12:56:58" color="#ff5c5c">}}




{{<matomeQuote body="「新しいから複雑なだけで、時間とともにシンプルになる」って、ブラウザ技術でも同じこと言ってたよね。でも、中身は全然シンプルになってないじゃん。" userName="90s_dev" createdAt="2025/07/26 13:48:24" color="">}}




{{<matomeQuote body="僕の理解では、50年くらい前のCPUも似たような混乱があったみたいだね。全てのコンピュータがバラバラで、ポータブルなコードなんてなかった。それから問題解決者がC言語みたいな抽象化を生み出して、開発者が様々なプラットフォームで多かれ少なかれ同じコードを書けるようになったんだ。今、GPUもグラフィックス以外の多くの分野で役立つようになって、似たプロセスをゆっくりと辿ってるんじゃないかな。あくまで憶測だけどね。" userName="a99c43f2d565504" createdAt="2025/07/26 14:08:10" color="#ff5733">}}




{{<matomeQuote body="まさにxkcd 927みたいだね。<br>これは新しい抽象化レイヤーのせいじゃなく、GPU業界が協調を拒否してるのが悪いんだよ。各ベンダーのGPUはツールチェーンもアーキテクチャも独自で、非公開な部分も多い。CPUは60年代にプログラミングの基本モデルが確立されたけど、GPUはそうならなかった。だからオープンソースは抽象化レイヤーを追加するしかなく、結果37もの”シェーディング言語”が生まれたんだ。" userName="ajross" createdAt="2025/07/26 14:50:54" color="#ff5733">}}




{{<matomeQuote body="「これが初めて可能になったから」って言うけど、SPIRVを3D API全体でGPUコードの抽象化レイヤーとして使うのは別に新しいことじゃないよ（SPIRVCross、Naga、Tint経由で）。LLVM SPIRVバックエンドも今はかなり確立されてるしね。" userName="flohofwoe" createdAt="2025/07/26 15:35:49" color="#785bff">}}




{{<matomeQuote body="公平に見て、自由に再構築できる能力は、物事を改善しやすくするだろうね。" userName="yjftsjthsd-h" createdAt="2025/07/26 15:43:39" color="">}}




{{<matomeQuote body="だけど現実的には、ユーザーはせいぜい（3）か（4）のレベルでしか操作できないだろ。だから、そんなに大きな追加にはならないかもね。ちなみに、抽象化レイヤーは（6）で止まらないよ。ファームウェアやマイクロアーキテクチャが命令セットを実装する形で、ずっと下まで続いてるんだ。" userName="thrtythreeforty" createdAt="2025/07/26 12:44:02" color="">}}




{{<matomeQuote body="「GPUがグラフィックス以外の領域でも役立つようになって、似たプロセスを辿ってる」って話だけど、CUDAが最初に出た頃から、GPUのG（グラフィックス）が別の文字に変わるのを待ってるんだ。この技術の名前が変われば、もっと多くの人が使えるようになると思うんだけどな。" userName="dotancohen" createdAt="2025/07/26 15:15:51" color="">}}




{{<matomeQuote body="コンピュータはC言語よりも10年も前から、高レベルのシステム言語を使っていたんだよ。" userName="pjmlp" createdAt="2025/07/26 14:53:33" color="">}}




{{<matomeQuote body="複雑さが本質的に悪いわけじゃないんだ。ブラウザも、ユーザーが最新の機能でウェブを閲覧し、他のブラウザと競争するために、必要なだけの複雑さを持ってる。これはテスラーの法則[0]が働いてるってこと。もしGPUのコンパイルを完全に抽象化したいなら、このプロジェクトより劇的にシンプルにはならないだろうね。[0]: https://en.wikipedia.org/wiki/Law_of_conservation_of_complexity" userName="turnsout" createdAt="2025/07/26 14:50:31" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
