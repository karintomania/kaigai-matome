+++
date = '2025-06-23T00:00:00'
months = '2025/06'
draft = false
title = 'PythonでMojoが使えるように！'
tags = ["Python", "Mojo", "プログラミング", "AI", "高速化"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> PythonでMojoが使えるように！

引用元：[https://news.ycombinator.com/item?id=44331316](https://news.ycombinator.com/item?id=44331316)




{{<matomeQuote body="NVidiaがGTC 2025でPython JIT DSLsに本腰入れるって発表したけど、研究者にMojoがどれだけ受け入れられるか気になるな。”1001 Ways to Write CUDA Kernels in Python”（https://www.youtube.com/watch?v=_XW6Yu6VBQE）とか”The CUDA Python Developer’s Toolbox”（https://www.nvidia.com/en-us/on-demand/session/gtc25-S72448/）とか、”Accelerated Python: The Community and Ecosystem”（https://www.youtube.com/watch?v=6IcvKPfNXUw）とか”Tensor Core Programming in Python with CUTLASS 4.0”（https://www.linkedin.com/posts/nvidia-ai_python-cutlass-acti...）みたいな動きもあるし、Pythonコミュニティ以外ではツールも成熟してWindowsサポートも手厚いJulia（https://info.juliahub.com/industries/case-studies）に移った研究者も多いらしい。Mojoは言語オタク的には面白そうだけど、競合がいる中で市場に普及するかはSwiftとかSwift for Tensorflowみたいになるかまだ分からないね。" userName="pjmlp" createdAt="2025/06/23 06:26:32" color="#ff5733">}}




{{<matomeQuote body="Mojo（とModularのスタック全部）は、今のところ学習とか研究より推論（inference）に完全にフォーカスしてる感じかな。低遅延・高スループットな推論システムを作りたい人向けってことだね。あと、別の人が指摘してたけど、NVidiaだけじゃなく色んなハードウェアもターゲットにしてるよ。" userName="fnands" createdAt="2025/06/23 08:05:10" color="#ff5c5c">}}




{{<matomeQuote body="PyO3を使えばいいんじゃない？CythonとかC++ライブラリよりずっとインターフェースが綺麗だよ。Mojoの一番のメリットは、Pythonにできるだけ近いGILフリーな構文みたいだけどね。" userName="orochimaaru" createdAt="2025/06/23 13:10:43" color="">}}




{{<matomeQuote body="RustでのGPUプログラミングはそんなに良くないんだよね。Mojoだとそれが言語のほぼ全ての要点って感じ。CPUだけ使うなら、PyO3は良い選択肢だよ。" userName="fnands" createdAt="2025/06/23 14:30:03" color="">}}




{{<matomeQuote body="Huggingface製のCandleはどうかな？少なくとも基本的なことはできるし、CPUとGPU両方で動く例もたくさんあるよ。深くはまだ見てないけど、ちょっと触った感じでは埋め込み（embedding）用には十分だったな。" userName="diggan" createdAt="2025/06/23 15:27:39" color="#45d325">}}




{{<matomeQuote body="Mojoの大きな付加価値は、もう特定のGPUアーキテクチャでしか動かないGPUコードを書かなくていいことだと思うんだ。LLVMがCPUコードを複数のCPUアーキテクチャに対応させるみたいに、MLIR＼MojoはGPUコードをいろんなベンダーのGPUに対応させられるんだよ。新しいGPUアーキテクチャ向けのバックエンドを書くには多少努力が必要で、LattnerはH100のサポートに2ヶ月くらいかかったって話してたよ。" userName="GeekyBear" createdAt="2025/06/23 19:13:19" color="#ff5733">}}




{{<matomeQuote body="そうだね、GPUだけじゃなくてアクセラレータ全般だよ。Mojoは、変な特殊なハードウェアも（移植性が重要なら）ターゲットにできるようになるだろうね。" userName="melodyogonna" createdAt="2025/06/24 09:22:05" color="">}}




{{<matomeQuote body="今のところはCPUと、そのうちAMDって感じに見えるかな。YouTubeのセッションとか、NVidiaからの解放についてのブログ記事を見てた感じだとね。あと、WindowsのCPUはWSLを使わないとダメみたいだよ。" userName="pjmlp" createdAt="2025/06/23 08:08:06" color="#45d325">}}




{{<matomeQuote body="サーバーグレードもコンシューマー向けもかなり幅広いGPUをサポートしてるよ。ちょっと分かりにくいけど、一番信頼できるサポートGPUのリストはMojo infoのドキュメントにあるよ。https://docs.modular.com/mojo/stdlib/gpu/host/info/" userName="hogepodge" createdAt="2025/06/23 15:06:02" color="#ff33a1">}}




{{<matomeQuote body="もうすでにGPUコード、カーネル、そしてモデル全体が、データセンターのAMD GPUで同じコード、同じプログラミングモデル、そして同じ言語構造を使って動かせるようになってるよ。" userName="MohamedMabrouk" createdAt="2025/06/23 09:07:39" color="#ff33a1">}}




{{<matomeQuote body="うん、最近のNVIDIAとAMDの一般向けGPUはサポートされてるよ！詳しくはここ見てね: https://docs.modular.com/max/faq/" userName="patternsplicing" createdAt="2025/06/23 18:48:24" color="#ff5c5c">}}




{{<matomeQuote body="よくわかんないけど、Modularは主に企業向けみたいね。でも今のPR見ると、みんな自分でNVIDIAとかAMDの個人向けGPUに対応させてるよ。低レベルでちょっとコード足せばできちゃうから簡単なんだって。iGPUとかApple GPUsはまだだけど、どうなるか興味あるね。" userName="MohamedMabrouk" createdAt="2025/06/23 11:00:29" color="">}}




{{<matomeQuote body="MojoってNVIDIAだけじゃなく、どんなハードウェアでも最高の性能を出せるって売り込みなんだよね。だから色んなメーカーのハードでコード動かしたい人にはいいかもね。" userName="bsaul" createdAt="2025/06/23 07:34:02" color="">}}




{{<matomeQuote body="確かに目標はそうだけど、今はまだだよ。Windowsでもそのまま動かないし。Juliaとか他のPython DSL JITsみたいに、既に色んなハードで使えるものもあるしね。Mojoもきっとできるようになるだろうけど、主流になるには十分速く達成できるかどうかって話だよね。" userName="pjmlp" createdAt="2025/06/23 07:56:14" color="">}}




{{<matomeQuote body="Mojo GPU kernelsは今、NvidiaとAMD両方のGPUで動かせるよ。" userName="melodyogonna" createdAt="2025/06/23 08:31:00" color="">}}




{{<matomeQuote body="JuliaはNvidia、AMD、Intel、Apple向けのGPUコンパイラがあるし、KernelAbstractions.jlを使えばCPU含め全部で動くカーネルが書けるんだよ！" userName="eigenspace" createdAt="2025/06/25 07:56:06" color="">}}




{{<matomeQuote body="確か特定のモデルだけだった気がするな。" userName="pjmlp" createdAt="2025/06/23 09:19:07" color="">}}




{{<matomeQuote body="LLVMが全ての新しいCPUアーキテクチャに自動対応しないのと同じで、Mojo/MLIRも新しいハード全部に自動対応するわけじゃないんだ。でも、LLVMにRISC-Vのバックエンドができたら、そこに乗ってる言語やソフトはRISC-Vで動くようになるでしょ。それと同じ。新しいGPU/TPU向けにコード全部書き直すんじゃなくて、新しいバックエンドだけ作ればいいんだよ。" userName="GeekyBear" createdAt="2025/06/23 20:00:44" color="#ff33a1">}}




{{<matomeQuote body="いやいや、モデル以外でも今日のMojoコードはNvidiaとAMD両方のGPUで動くよ。AIに特化したコードじゃなくても大丈夫。" userName="melodyogonna" createdAt="2025/06/23 10:02:52" color="">}}




{{<matomeQuote body="GPUのモデルのこと言ってるんだと思うよ、LLMのモデルじゃなくてね。" userName="fwip" createdAt="2025/06/23 16:39:04" color="">}}




{{<matomeQuote body="DSLsの限界とPythonの魅力考えると、もしPython互換性を十分高められたら、これは実用的なちょうどいいところだと思うよ。" userName="fulafel" createdAt="2025/06/23 06:48:39" color="">}}




{{<matomeQuote body="Julia大好きでもっと広まってほしいんだけど、大きな企業の後ろ盾がないのが辛いね。" userName="ForHackernews" createdAt="2025/06/23 09:10:26" color="">}}




{{<matomeQuote body="企業の後ろ盾の話だけど、結構あるよ。だからHNerが見落としがちなこれを指摘したんだ。<br>https://info.juliahub.com/industries/case-studies" userName="pjmlp" createdAt="2025/06/23 09:18:36" color="#ff5733">}}




{{<matomeQuote body="確かにJuliaを使ってる企業はたくさんあるけど、GoogleがGoを、OracleがJavaを、MozillaがRustを後押ししてるみたいには、どこも支援してないって話だよ。" userName="ForHackernews" createdAt="2025/06/23 09:51:53" color="">}}




{{<matomeQuote body="PythonやRubyだって、初期にbig nameの後ろ盾がなくてもそんなに困らなかったでしょ。MITとか、さっきのリストに載ってた企業も十分関連性あると思うよ、FAANGじゃなくてもいいんだし。" userName="pjmlp" createdAt="2025/06/23 10:44:20" color="#ff33a1">}}




{{<matomeQuote body="MojoはnVidiaとAMDで動くよ。競合はTritonであって、CUDAとかJuliaじゃないんだ。" userName="btian" createdAt="2025/06/23 23:22:35" color="#ff5733">}}




{{<matomeQuote body="JuliaはNvidia、AMD、Intel、AppleのGPUsで動くよ。" userName="eigenspace" createdAt="2025/06/25 07:57:56" color="#45d325">}}




{{<matomeQuote body="Chris Lattner（Mojo, LLVM, Clang, Swift, MLIRの技術リーダー）が1週間くらい前にポッドキャストに出て、Mojoの現状や将来について話してたよ。Mojoのオープンソース化や、会社がどうやって収益を上げるかについても話したみたい。<br>https://www.youtube.com/watch?v=04_gN-C9IAo" userName="GeekyBear" createdAt="2025/06/23 04:36:41" color="#45d325">}}




{{<matomeQuote body="Chris Lattnerは先週r/programminglanguagesにも現れて、それについて少し話してたよ。<br>https://www.reddit.com/r/ProgrammingLanguages/comments/1lfz9..." userName="ModernMech" createdAt="2025/06/23 13:50:04" color="#ff33a1">}}




{{<matomeQuote body="JuliaじゃなくてMojo作った理由、弱くなったね。FAQに「Juliaは素晴らしいけどMojoは全然違う。Python開発者が新しい文法覚える必要ないPythonファーストだよ」って書いてあったのに。<br>今は「Pythonスーパーセットって言いすぎた。今日のMojoができることに集中する。CPU/GPUを速くするのに最高な言語だよ」って言ってるし。笑えるわ。<br>https://docs.modular.com/mojo/faq/#why-not-make-julia-better" userName="Staross" createdAt="2025/06/23 15:35:32" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もっと面白いのはこれだよ。<br>TensorFlowのSwiftのドキュメントに、Juliaは「オープンでアクティブな素晴らしい言語。機械学習技術に投資してて、Python APIとの連携も良い」って書いてあるんだ。<br>https://github.com/tensorflow/swift/blob/main/docs/WhySwiftF..." userName="amval" createdAt="2025/06/23 16:36:47" color="#45d325">}}




{{<matomeQuote body="うん、それは本当にもったいない機会だったと思う。8年前に協力してたら、今の状況より良い結果になってた可能性が高いよね。" userName="Staross" createdAt="2025/06/23 18:04:30" color="">}}




{{<matomeQuote body="「既存言語Yの文法と意味論を全部サポートしつつ、その上に何か加える」って始めて、「結局Yに漠然と似てるだけの言語になる」プロジェクトの割合は、ほぼ100%と区別つかないくらい多いよね。" userName="dragonwriter" createdAt="2025/06/23 15:44:29" color="">}}




{{<matomeQuote body="生存者バイアスはあるだろうけど、C++とかTypescript、Ocamlみたいに互換性をかなり保ってうまくいった例もあるんじゃないかな。最初に思いつくのはね。" userName="fulafel" createdAt="2025/06/25 05:28:22" color="">}}




{{<matomeQuote body="本当の理由は、Chris LattnerがJuliaで仕事したくなかったからだと思うんだ。彼はこういうことに関してきっと強い意見を持ってるし、自分のプロジェクトで自由にクリエイティブな権限を持ちたいんじゃないかな。" userName="ddaud" createdAt="2025/06/23 19:16:09" color="">}}




{{<matomeQuote body="もう十分有名な人なら、他の人と関わるより、自分で立ち上げて全部自分で決めちゃう方がいいんじゃない？" userName="serial_dev" createdAt="2025/06/23 21:09:11" color="">}}




{{<matomeQuote body="Modularのビデオをいくつか見てると、Chris Lattnerは今は監督役で、実際にMojoやMaxのツールを進めてるのは他の人たちに見えるんだけど。プレゼンの形式からの誤解かもしれないけどね。" userName="pjmlp" createdAt="2025/06/24 06:10:18" color="">}}




{{<matomeQuote body="彼はMojoでたくさん仕事してるよ。ほとんど週末だけどね。この数ヶ月で、文字列、コレクションリテラル、依存型、参照キャプチャ、内包表記とか、色々な素敵な言語機能に取り組んでるんだ。" userName="melodyogonna" createdAt="2025/06/24 09:34:43" color="#ff5733">}}




{{<matomeQuote body="それにJuliaはWindowsでも動くし、この10年でたくさんの問題が解決されたし、多くの人が投資してる。単一企業の製品じゃないんだ。<br>もちろん主流言語の多くは一企業から始まったけど、それって特定のプラットフォームにアクセスするための「門番」が必要だったからだろ？<br>だからMaxとその製品としての価値以外で、誰がMojoコードを書こうと急ぐかって話だよね。" userName="pjmlp" createdAt="2025/06/24 06:08:10" color="#785bff">}}




{{<matomeQuote body="MojoはPythonみたいな書き方で、C++/CUDAを置き換えてAIのインフラ問題を解決しようとしてるんだと思うよ。頭の負担を減らすためにPython構文なんだろうね。Juliaがこれに向いてるかは疑問だなあ。Juliaはシステムプログラミング言語として売られてないし、動的型付けでGCやJITがあるのにシステム言語になれるとは思えないんだ。<br>研究とか学習で使われる高水準の動的コード分野でJuliaがPythonを置き換えられるか？それはあるかもね。でも、CUDA/ROCm/C++とかを置き換えるのはすごく難しいと思うよ。" userName="MohamedMabrouk" createdAt="2025/06/24 07:58:46" color="#45d325">}}




{{<matomeQuote body="昔のXerox PARCとかTexas InstrumentsのLisp MachinesやGeneraは、価格で負けたけど、システムとして有能だって証明したよね。DylanはNewtonのシステム言語になるはずだったけど、C++チームに負けちゃった（AppleにはNewton OS開発チームが２つあったんだ）。ユーザー空間はNewtonScriptだったし、プロジェクト中止までにはJITも載る予定だったみたいだね。Objective-CはCとの共通部分以外は動的型付けだけど、NeXTSTEPのドライバー書くのに使われたりしたよ。<br>JuliaがCUDA/ROCm/C++に対抗できるか、どれくらいチャンスがあるかは分からないなあ。特に最近はGPU業界がPythonに力を入れてて、公開初日からBindingsやJIT DSLsでPythonでも使えるようにしてるから、MojoはJulia以上にチャンスがないかもね。Juliaにはもうエコシステムがあって、MITとも繋がってる科学コミュニティで地位を築いてる。Pythonは王者だし、CUDA/ROCm/C++書いてる人のほとんどがPythonも使ってるよ。FortranとかC、C++が苦手な人が、PythonのJIT DSLs/bindingsとかJuliaじゃなくて、なんでMojoに手を出すんだろうね？" userName="pjmlp" createdAt="2025/06/24 09:10:40" color="#38d3d3">}}




{{<matomeQuote body="JuliaとかPythonがCUDAみたいな基盤プラットフォームにDSLとかBindingsを作るのって、それを置き換えてるんじゃなくて、既存のプラットフォームの上にさらに層を重ねてるだけか、研究用のプロトタイプ環境を作ってるだけだよ。問題はJuliaがCUDAとインターフェースできるかじゃなくて、JuliaがC++/CUDA/ROCmを（できればいろんなGPUベンダーで動くように）エンドツーエンドで置き換えられるかってことなんだ。それができないなら、JuliaとMojoの目標は全く違うし、完全に別々のユースケースをターゲットにしてるから、比較にならないんだよ。" userName="MohamedMabrouk" createdAt="2025/06/24 10:00:16" color="#45d325">}}




{{<matomeQuote body="Juliaは単にCUDAへのBindingsがあるだけじゃないんだ。Juliaのネイティブコードは.ptxカーネルにコンパイルできるんだよ https://cuda.juliagpu.org/stable/development/kernel/。この同じコードで、AMD GPU、Intel GPU、そしてMetal用のカーネルも生成できるんだ。<br>例えば、俺たちはユーザー関数を組み込んだカーネルをオンデマンドで生成するソフトウェアを開発して、これら4つのシステム全部で動かしたんだ。特定の非線形システムでは、ただのCUDA bindingsよりもずっと高速だってことを示したよ（https://www.sciencedirect.com/science/article/abs/pii/S00457...）。" userName="ChrisRackauckas" createdAt="2025/06/24 19:18:50" color="#45d325">}}




{{<matomeQuote body="Juliaはみんなが思ってるよりずっと静的言語に近いんだ。実際、fixed world-ageの中では、JuliaのJITから見ると静的言語と同じだよ。俺たちのJITも他のJITとはちょっと違ってて、Tracing JITよりは伝統的なコンパイラに近い作りだから、“Just Ahead Of Time”コンパイラって呼ぶこともあるんだ。<br>GPUコンパイルもかなりすごいんだよ。Juliaの関数はNvidia、AMD、Intel、AppleのGPUに、それぞれのGPUコンパイラパッケージを通してコンパイルできるし、KernelAbstractions.jlを使えばGPUベンダーに依存しないコードも書けるんだ。v1.12では、（実験的な）完全AOTコンパイラも言語に組み込まれる予定で、実行ファイルとかdylibを出力できるようになるよ。" userName="eigenspace" createdAt="2025/06/25 08:02:51" color="#45d325">}}




{{<matomeQuote body="俺が普段使ってるツールだと、動画は地域ロックされてないみたいだよ。https://polsy.org.uk/stuff/ytrestrict.cgi" userName="slyall" createdAt="2025/06/23 11:28:01" color="">}}




{{<matomeQuote body="ごめん、そのリンクは普通に見れるんだけど。このPodcastのエピソードリストのリンクの方が役に立つかも。https://www.youtube.com/@LatentSpacePod" userName="GeekyBear" createdAt="2025/06/23 05:10:44" color="">}}




{{<matomeQuote body="それはLatent Space podcastだよ。6月13日に出たやつ。AIの情報を追うのに結構いいPodcastだよ。共同ホストの一人、SwyxはここHNでも活動してる人だよ。" userName="loudmax" createdAt="2025/06/23 12:19:15" color="">}}




{{<matomeQuote body="factorialのテストでゼロになるのは、任意精度整数演算をやってないってことだよね？<br>MojoはPythonのsupersetだって聞いてて、普通のPythonコードも動かせて、必要なところだけ新しい機能を使えるようになるのを期待してたんだ。<br>でも、「pythonic language」って呼ばれるってことは、その目標はもうないみたいで、そうなるとあんまり魅力を感じないな。" userName="JonChesterfield" createdAt="2025/06/23 06:10:13" color="">}}




{{<matomeQuote body="Pythonのsupersetって考え方はもう捨てちゃったのかな？<br>公開されたばかりの頃に少し追ってたんだけど、その時は”心配しないで、すぐに本物のPython supersetになりますよ”って言ってたんだよね。<br>その時一番なかったのがクラスのサポートだったんだけど、数年経っても同じPythonの機能がないままで、彼ら独自の言語機能がたくさん追加されたように見えるね。" userName="eyegor" createdAt="2025/06/23 13:53:25" color="">}}




{{<matomeQuote body="捨てたっていうより、延期したって感じかな。<br>あれはすごく野心的な目標だったし、現実的に考えると今はPythonからインスピレーションを受けて、より強力な統合フックを持つ方が良いんだ。（ぶっちゃけ、俺Modularで働いてるんだ）<br>今のこの言語が何を目指してるか、もっと正確に伝えるために”superset of Python”って言葉を使うのはやめたんだよ。" userName="hogepodge" createdAt="2025/06/23 15:10:11" color="#45d325">}}




{{<matomeQuote body="deferred（延期）ってことは、いつかは来るかもしれないって意味だけど、本当に来るかはわからないね。<br>俺は多分来ない方に賭けるな。" userName="serial_dev" createdAt="2025/06/23 21:26:59" color="">}}




{{<matomeQuote body="Pythonのsupersetであることと、速いことって、根本的に両立が難しいんだ。<br>Pythonの動的な機能を使わない限りは最高のパフォーマンスが出るsuperset、ってのはもしかしたら可能かもしれない。<br>でも、動的な機能を使ったり、そういう機能に依存するコードを使ったりした時に、急にパフォーマンスがガタ落ちする隠れた落とし穴があるのは、ユーザーがイライラする原因になると思うな。" userName="nickm12" createdAt="2025/06/24 03:31:20" color="#ff5c5c">}}




{{<matomeQuote body="Pythonの動的な機能って、SmalltalkとかSelfとかCommon Lispの動的な機能と何も変わらないんだ。<br>でも、Pythonコミュニティで動的コンパイラが普及しなかったせいで、みんな違うものだって思い込まされちゃってるんだよね。" userName="pjmlp" createdAt="2025/06/24 06:12:17" color="">}}




{{<matomeQuote body="数日前のModularのDiscordでのChris Lattnerからの投稿だよ。<br>”ええ、その通りです。intがマシン整数のように振る舞うことは、システムパフォーマンスにとって非常に重要です。<br>”int”名前空間をそのままにしておくことで、将来的にPythonとの互換性のためにオブジェクトベースのbigintを持てるようになります。<br>他の人も言ってるように、時間をかければPythonと互換性を持たせることは依然として目標ですが、短期的な優先事項ではありません。”" userName="melodyogonna" createdAt="2025/06/23 08:33:17" color="#ff33a1">}}




{{<matomeQuote body="全く変更しないPythonコードを速くするのは、基本的に無理だよね。" userName="saagarjha" createdAt="2025/06/23 11:53:23" color="">}}




{{<matomeQuote body="それはそうなんだけどさ、変更しないPythonコードは普通のPythonの速度でサポートして、それに加えて、もっと高速に実行できる言語拡張を持つことはできるでしょ。" userName="fwip" createdAt="2025/06/23 16:43:59" color="">}}




{{<matomeQuote body="Mojo側でIntにキャストしてるのに、Modularのサイトじゃbit幅は決まってないって書いてあるんだって。びっくりだね。" userName="bishabosha" createdAt="2025/06/23 06:43:08" color="">}}




{{<matomeQuote body="bit幅が決まってないってのはね、ターゲットのアーキテクチャが対応してる一番大きい整数型（つまり32bitか64bit）になるってことだよ。" userName="int_19h" createdAt="2025/06/24 01:07:41" color="#ff5c5c">}}




{{<matomeQuote body="好き嫌いは主観的？へー、すごい発見だね。Pythonはさ、関数型とか合成とか、みんなが良いっていう方向と逆行するような、いい加減な言語なんだよ。デカいIT企業は大事なシステムでPythonを使わないように、いっぱいお金かけてるんだぜ。" userName="mhh__" createdAt="2025/06/23 20:41:11" color="">}}




{{<matomeQuote body="Mojoをまだ知らない人のために説明しとくね。MojoはPythonみたいな言語で、CUDAなしでCPUもGPUもめっちゃ速く動かせるんだよ。詳しくはここを見てみて。https://news.ycombinator.com/item?id=35790367" userName="js2" createdAt="2025/06/23 04:26:09" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="超高速の技術がやっとPythonにも来るなんて、嬉しいね！あの開発チーム、ここ10年くらいRustで忙しかったみたいだけど、ようやくPythonで超速いものを作り始めたんだね。" userName="eddythompson80" createdAt="2025/06/24 00:37:52" color="">}}




{{<matomeQuote body="PyPyみたいなプロジェクトにもっとみんなが目を向けてたら、Mojoみたいに超高速じゃなくても、すでに高速にはできたはずなのにね。" userName="pjmlp" createdAt="2025/06/24 06:14:23" color="">}}




{{<matomeQuote body="Mojo、マジで応援してるよ。この言語が目指してるとこ、すごく好きだね。Nvidia+CUDA以外のハードで最新のAIを動かしやすくなるのは、色んな道が開けると思う。ただ、VCからどれだけ資金集めたのかとか、それが将来のビジネスにどう響くか、ちょっと心配もあるな。" userName="mindwok" createdAt="2025/06/23 03:34:02" color="#ff5c5c">}}




{{<matomeQuote body="もし彼らがオープンソースにするって計画をちゃんと実行できたら、ひとまず安心するかな。俺も応援してるけど、オープンソースになるまでは、正直自分の時間をMojoのエコシステムに注ぎ込む気にはなれないんだ。" userName="mkaic" createdAt="2025/06/23 03:48:43" color="">}}




{{<matomeQuote body="もうApache 2.0ライセンスでコード出したみたいだね。全部がオープンソースってわけじゃないけど、コアな部分はオープンソースっぽいよ。" userName="jillesvangurp" createdAt="2025/06/23 07:52:28" color="">}}




{{<matomeQuote body="コンパイラはオープンソースじゃないんだって。出したのはstdlibのコードだけだよ。" userName="ayhanfuat" createdAt="2025/06/23 09:54:55" color="">}}




{{<matomeQuote body="いや、PythonがMojoを動かすんじゃなくて、CythonみたいにC拡張を作って読み込む感じだよ。<br>始め方見るとさ、インストールとかめっちゃ大変そうなんだよね。URL見てみてよ！https://docs.modular.com/mojo/manual/get-started/<br>curl -fsSL https://pixi.sh/install.sh | sh<br>pixi init life ＼<br>-c https://conda.modular.com/max-nightly/ -c conda-forge ＼<br>&& cd life<br>なんかもう、「いいや、C++の方が楽だわ」って思っちゃったw。" userName="bgwalter" createdAt="2025/06/23 09:26:48" color="#38d3d3">}}




{{<matomeQuote body="大きな違いはね、MojoとPythonの連携部分がコンパイルとか読み込みの面倒を見てくれるってこと。Pythonに近い感じで、必要な時にハードウェアを高速化できて、プラットフォームごとにC++コードをビルドしなくていいのが目標なんだ。Modularの社員だけど、GPUプログラミング初めての人からも「Mojo使いやすい！」って好評だったよ。C++はすごいけど、学習曲線が急なんだよね。GPUとかHPCをもっと簡単にできる余地はたくさんあって、TritonやJuliaみたいなのもその辺を攻めてる。デバイス固有のコードを隠蔽するのが大事なんだ。昔HPC C++プログラマーだったけど、デバイスごとに再コンパイルするのがマジで大変だった（cmakeとか悪夢w）。Mojoはそういうプログラミング体験を改善する仕組みがたくさんあるよ。" userName="hogepodge" createdAt="2025/06/23 16:51:12" color="#785bff">}}




{{<matomeQuote body="記事の例だとC++拡張よりずっとビルドも使うのも簡単そうだったけどな。このコメント（32286）からだと、結局何が気に入らないのかよくわかんなかったよ。" userName="sanderjd" createdAt="2025/06/23 15:21:17" color="">}}




{{<matomeQuote body="＞ C++ is easier.って言ってるけど、その意見にみんなが賛成するとは思えないな〜。" userName="justin66" createdAt="2025/06/23 14:51:04" color="">}}




{{<matomeQuote body="Pythonからコンパイル済みの関数呼び出せるって言われても、そこまで惹かれないな。それってどの言語でもできるじゃん？俺が興味あるのは実行時コンパイルができるプログラムなんだ。例えば、コンフィグファイルのキーワードリストから、そのキーワードをコンパイル時の値みたいに扱って完璧なハッシュ構造を動的に生成するとか。キーワードが少なければ線形探索にフォールバックするとか。動的ディスパッチのコストなしで、コンパイル時に全部やっちゃうの。もちろん、これってnumbaの話なんだけどね。ただ、ホスト言語がPythonなのが辛いと思うんだ。Pythonがもっと強く型付けされてたら、最適化のレベルが全然違っただろうな〜。" userName="anon-3988" createdAt="2025/06/23 04:45:12" color="#45d325">}}




{{<matomeQuote body="CPythonがCommon LispとかSchemeとかRaket、Smalltalk、Selfみたいなコンパイルモデルだったらいいのにな〜って想像しちゃう。残念ながら、そういうニッチな候補はほとんど無視されちゃってるから、JIT DSLを特別に使ったり、ネイティブ拡張を書いたりする必要があるんだよね。多くの場合、CPythonしか使えないのが現状だからさ。" userName="pjmlp" createdAt="2025/06/23 06:11:12" color="">}}




{{<matomeQuote body="Mojoってさ、そのパラメータシステムで既にこういうのサポートしてない？https://docs.modular.com/mojo/manual/parameters/<br>君が言ってたJITはMAX graph APIでサポートされてるよ。https://docs.modular.com/max/tutorials/build-custom-ops<br>numbaみたいにもっと良い構文だといいけどね。君のアイデア、面白いと思うよ。" userName="dukebw" createdAt="2025/06/23 11:38:55" color="#785bff">}}




{{<matomeQuote body="＞ Pythonからコンパイル済みの関数呼び出せるって言われても...<br>＞ 俺が興味あるのは実行時コンパイルができるプログラムなんだ...<br>君が言ってること、ちゃんと理解できてるか分からないけど、この二つって繋がってる気がするんだ。Pythonで君がやりたいことをやるなら、zigでライブラリ作ってctypesで使うかな。" userName="devjab" createdAt="2025/06/23 05:22:04" color="">}}




{{<matomeQuote body="Zigってさ、実行時の設定でプログラム全体を自己再コンパイルできるの？ 設定次第でプログラムをnoopにしたり、最適なハッシュアルゴリズムを使ったりさ。普通のシステム言語じゃ無理だと思うんだけど。" userName="anon-3988" createdAt="2025/06/23 06:33:35" color="">}}




{{<matomeQuote body="Python用のコンパイル拡張書くとき、拡張自体の速度よりPythonとの間でオブジェクトやり取りするオーバーヘッドが気になるんだよね。巨大な行列とかゼロコピーできる？ オブジェクトの寿命は？ GILは？ Mojoがどう対応してるか知りたいな。" userName="Scene_Cast2" createdAt="2025/06/23 12:26:21" color="#45d325">}}




{{<matomeQuote body="知る限りだと、Numpy配列とかTorchテンソルみたいなオブジェクトにはゼロコピーインターフェースがあるよ。Mojo内でその場で操作できるらしい。" userName="MohamedMabrouk" createdAt="2025/06/23 13:25:30" color="#ff5733">}}




{{<matomeQuote body="Mojoにはいまいちピンと来てなかったんだけど、新しい言語探してる身としては既存言語からの変更が少ないって売りがなんか物足りないんだよね。でもさ、Pythonにこんな簡単に取り込めるなら、パフォーマンスで困ってるチームには超便利だろうね！" userName="benrutter" createdAt="2025/06/23 04:41:24" color="#ff33a1">}}




{{<matomeQuote body="＞既存言語からの変更が少ないって売り＜は違うと思うな。構文はPythonに似てるけど、中身は全然別物だよ。MLIR統合とか所有権モデルとかcomptimeとか、Mojoは色んな方向で革新的なんだ。構文まで変える必要はなかったってことじゃない？" userName="atomicapple" createdAt="2025/06/23 06:12:50" color="#38d3d3">}}




{{<matomeQuote body="うん、ごめんね。”売りの一部”とか”セールスポイントの一つ”って言うべきだったかも。Mojoの野心的な目標を軽んじるつもりはなかったんだ。でも、Pythonは複雑だし、そのスーパーセットだとMojoも複雑になっちゃうから、構文はもう少し大胆でも良かったのになーって今でも思ってるよ。" userName="benrutter" createdAt="2025/06/23 06:26:51" color="">}}




{{<matomeQuote body="＞Pythonに関数提供できるシンプルなコンパイル言語を探してる＜なら、Nimはどう？ これ使えるよ → https://github.com/yglukhov/nimpy" userName="Tiberium" createdAt="2025/06/23 04:37:37" color="#ff5c5c">}}




{{<matomeQuote body="Mojoの本当の要は言語そのものじゃなくて、MLIRとの深い連携なんだよ。LLVMをコンパイラでやったことを、GPUやMLハードウェアでやろうとしてる試みなんだ。LLVMとMLIRの生みの親であるChris Lattnerがこのプロジェクトを率いてるんだから。" userName="mindwok" createdAt="2025/06/23 04:48:39" color="#ff33a1">}}




{{<matomeQuote body="記事によると”PythonがMojoコードを呼べるようになった”って書いてあるね。これって、Cでバインディング作るのと何が違うの？って思うんだけど。Pythonからコンパイル言語に徐々に移行しやすくなるって点では同じだよね。PythonからMojoへの移植は、Cへの移植よりコピペで済むから楽だろうってのがMojoの強みかな。" userName="Someone" createdAt="2025/06/23 08:33:04" color="#38d3d3">}}




{{<matomeQuote body="へえ、PythonModuleBuilderを使えばC言語挟まずにPythonから呼び出せる”.so”作れるんだ。テストケース見ると、素数カウントみたいな単純なループで純粋Pythonの0.446秒が0.011秒になってて、めちゃくちゃ速いね！Pythonの壁にぶつかった時に手軽に速度アップできるね。ただ、型に制限があって、factorial(100)は固定幅intでオーバーフローしちゃうみたいで、bigintの代替はないんだね。配列の扱いがどう進化するかは注目だね。それがMojoが一部の計算重い分野に留まるか、もっと広く使われるかの分かれ目になると思う。まだ初期段階だけど、”使える”ってのが重要だね。" userName="b0a04gl" createdAt="2025/06/23 13:47:04" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
