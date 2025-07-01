+++
date = '2025-06-24T00:00:00'
months = '2025/06'
draft = false
title = 'GPUの基本的なこと、実は重要だったメモリレイアウトの話'
tags = ["GPU", "最適化", "メモリ", "ハードウェア", "プログラミング"]
featureimage = 'thumbnails/color4.jpg'
+++

> GPUの基本的なこと、実は重要だったメモリレイアウトの話

引用元：[https://news.ycombinator.com/item?id=44365320](https://news.ycombinator.com/item?id=44365320)




{{<matomeQuote body="llama.cppとvllmを同じ4070で動かしてたんだけど、バッチ推論でプロンプト増やしたら、GPU使用率は問題なさそうなのにllama.cppがバッチ8くらいでめちゃくちゃ遅くなったんだよね。vllmは全然平気だった。<br>後で分かったんだけど、vllmはGPUがまとめて読みやすいようにページドKVキャッシュってのを使ってた。llama.cppはシングルプロンプト向けにフラットな配置だったから、バッチにするとL2キャッシュのアクセスがおかしくなってたんだ。<br>それでllama.cppのKVテンソルを[head, seq, dim]って感じに組み替えたら、vllmがカーネルにデータを渡すのに近い形になって、同じ処理なのに2倍速くなったよ！<br>GPU自体がボトルネックだったんじゃなくて、メモリ配置がGPUのSMが期待するアクセスと合ってなかったのが原因だったんだね。vllmは最初から共有メモリをうまく使う配置になってて、グローバルメモリへのアクセスを減らしてるから、バッチ処理に強いんだよ。<br>これに気づくまで2日以上かかったし、綺麗なGPUグラフの下にある本当のボトルネックを探すのに手探りだったわ。正直大変だった。＞誰か、こういう実験をもっと楽にホットリロードみたいにできない方法知らない？" userName="b0a04gl" createdAt="2025/06/24 14:06:44" color="#ff5c5c">}}




{{<matomeQuote body="いや、GPUは変えてないのにスピードアップできたんだから、GPUがボトルネックだったわけじゃないでしょ。" userName="CardenB" createdAt="2025/06/25 02:48:25" color="">}}




{{<matomeQuote body="この感覚を技術的に正確に言うならこうだね。<br>”GPUのコアの計算能力自体は問題なかったんだ-- でも、俺が書いたコードのせいでメモリの帯域幅がボトルネックになって、GPUコアに処理するデータが供給されなかったんだ。これはプログラマとして、使ってるデバイスの帯域幅とかレイテンシ特性をちゃんと理解しておくべきっていう、俺の責任の範囲内の問題だよ”" userName="chickenzzzzu" createdAt="2025/06/25 21:35:10" color="#ff5c5c">}}




{{<matomeQuote body="この変更、llama.cppにプルリク出したの？2倍速はマジでヤバいじゃん。" userName="jcelerier" createdAt="2025/06/24 15:39:16" color="">}}




{{<matomeQuote body="llama.cpp使う人のほとんどはバッチ推論しないんだよね。その変更を本体に取り込むのは結構大変かも。llama.cppの他の機能との連携も絡むだろうし、メンテナーはプルリクの対応で手一杯だろうから、関心も低いだろうしね。" userName="zargon" createdAt="2025/06/24 16:19:10" color="#ff33a1">}}




{{<matomeQuote body="2倍速になるなら、絶対に修正する価値はあるよ。特に性能テスト[1]でllama.cppがvLLMに2倍遅れてるって出てるしね。これ、llama.cppでLLMをローカルで動かしてる人全員にとってプラスじゃん。<br>たとえ今llama.cppがバッチ推論に使われてなくても、これがあれば使えるようになるし、vLLMと違って色んなハードで動くのが強みだしね。もしかしたら、これでGPU APIのソフトウェア分断とかCUDAの囲い込みみたいなのがなくなるかも。llama.cppのベンチマークだとVulkanがCUDAやSYCLより速いって結果も出てるしね。<br>[1] https://miro.medium.com/v2/resize:fit:1400/format:webp/1*lab..." userName="buildxyz" createdAt="2025/06/24 17:16:18" color="#ff5733">}}




{{<matomeQuote body="で、結局バッチ推論ワークロードって具体的に何なの？ローカルで推論してる人がどう恩恵受けるの？あと、一台のマシンで複数のユーザーが同時に使う場合ってどうなるの？<br>俺、バッチ処理って学習とかファインチューニングの時だけ役立つ概念だと思ってたんだけど。" userName="menaerus" createdAt="2025/06/24 18:14:25" color="">}}




{{<matomeQuote body="Batch inferenceは複数の推論を同時にやることで、性能がすごく良くなるよ。同時リクエストとか、たくさんのデータをまとめて処理したい時にめっちゃ使える。<br>でも、ローカルで普通に使うには、複数の推論用のKV cacheに必要なVRAMが足りないことが多いかもね。" userName="zargon" createdAt="2025/06/24 18:36:30" color="#38d3d3">}}




{{<matomeQuote body="batchingしても、違うプロンプトが数学的に互いに影響することはないよ。推論時には巨大な重みをロードしたりアンロードしたりするけど、batchingすると、同じ量の文脈を処理するのに重みをあんまり動かさなくて済むんだ。" userName="pests" createdAt="2025/06/24 20:36:05" color="">}}




{{<matomeQuote body="batchingは”重みをあんまり動かさない”ことじゃないよ。VRAMにロードした重みをどこに動かすっての？<br>batchingってのは、CSではいつもそうだけど、一回のやり取りで計算リソースを最大限に使うこと。この場合はCPU RAMからGPU VRAMへのDMAのこと。<br>Self attentionは文脈依存だから、バッチされたリクエストが互いに影響しないってのも間違ってる。影響する設計になってるんだよ。" userName="menaerus" createdAt="2025/06/24 21:01:56" color="#38d3d3">}}




{{<matomeQuote body="＞ VRAMにロードした重みをどこに動かすっての？<br>VRAMとGPUレジスタの往復の話になってるね。重みはVRAMにあるだけじゃなくGPU本体（レジスタ）に移動する必要があるんだ。batchingはVRAMとGPU間の転送効率化だよ。<br>一回のバッチで計算できるから、逐次より効率的。バッチされたプロンプトと出力は独立してるってば。" userName="zargon" createdAt="2025/06/24 21:35:00" color="#38d3d3">}}




{{<matomeQuote body="VRAMとGPUレジスタ間の往復？それはcache hierarchiesのためでしょ。ちょっと概念を混同してると思うな。<br>VRAMとデータのやり取りは～100nsのレイテンシ。RAMからPCIe 5.0経由でVRAMへは1-10us。1～2桁違うよ。<br>だからbatchingを使う理由はこれ。CPUからGPUへの一つ一つのリクエストでレイテンシのコストを払いたくないから、一回の往復でできるだけ多くのデータを送りたいんだよ。" userName="menaerus" createdAt="2025/06/25 06:07:13" color="#785bff">}}




{{<matomeQuote body="モデル重みはcacheよりずっとデカいから、毎回VRAMからSRAM/レジスタへの転送がめっちゃ遅い。それが16msとかかかるボトルネックだよ。<br>batchingは、この巨大なVRAMからの転送をバッチ全体で使い回せるのがキモ。トークンごとに16ms払う代わりに、バッチ一回で払う。PCIeはそこまで重要じゃないよ。" userName="hexaga" createdAt="2025/06/25 11:19:42" color="#ff5c5c">}}




{{<matomeQuote body="＞ それはcache hierarchiesのためでしょ<br>そこが核心ポイントなんだよ。batchingすればcacheとregistersは準備万端なんだ。モデルはステップ／レイヤーごとにVRAM内の違う重みにアクセスしながら動く。batchingする時はこの利点を活かすんだ。<br>RAM to VRAMも大事ってのは同意だけど、推論batchingの主要な速度アップは俺の上のポイントだと感じるな。" userName="pests" createdAt="2025/06/25 08:14:35" color="">}}




{{<matomeQuote body="計算ってレジスタでやるんだよ。そこにデータ移さないと計算できないじゃん。" userName="pests" createdAt="2025/06/25 19:02:52" color="">}}




{{<matomeQuote body="入力ベクトルに次元増やすと独立して効率的に処理できるって話。2x2のネットワークに2x2の入力行列を与えると、各行が独立した入力として扱われて、複数の入力を一度に処理できるみたい。行列計算の例を見て！<br>［i1 i2］⋅［w1 w3 ; w2 w4］ = ［i1 ⋅w1 +i2 ⋅w3 i1 ⋅w2 +i2 ⋅w4］<br>［i1 i2 ; j1 j2］⋅［w1 w3 ; w2 w4］ = ［i1 ⋅ w1 +i2 ⋅ w3 i1 ⋅ w2 +i2 ⋅ w4 ; j1 ⋅ w1 +j2 ⋅ w3 j1 ⋅ w2 +j2 ⋅w4］<br>入力には2つの行があって、各行がネットワークの入力値を持ってて、出力行列には2つの行があって、それぞれ対応する入力の出力が入ってるでしょ。だから、入力値を各行に入れるだけで好きなだけNNを適用できるってこと！これで2つでも1000個でもいけるし… 一度だけ計算すればいい値もあるんだよ。" userName="spwa4" createdAt="2025/06/29 10:04:35" color="#ff5c5c">}}




{{<matomeQuote body="PR出せば、マージされなくても同じ問題抱えてる人が見つけて、自分のPRとかブランチを使えるようになるよ。masterより自分のニーズに合ってるならね。" userName="tough" createdAt="2025/06/24 16:24:38" color="">}}




{{<matomeQuote body="うん、良い点だね。俺も昔そういうPR使ったことあるよ。コードがどんどん変わっちゃうと、維持するのが大変になることもあるけど、しばらくは役に立つよね。" userName="zargon" createdAt="2025/06/24 18:19:09" color="">}}




{{<matomeQuote body="場合によるね。最適化がハードウェア依存すぎると、他のプラットフォームで逆に遅くなるかも。ハードウェアの特徴に基づいて汎用化したり、自動調整したりする方法を見つける必要があるね。" userName="zozbot234" createdAt="2025/06/24 17:18:25" color="#45d325">}}




{{<matomeQuote body="そうだね、一番簡単なのはオプションセットに分けることだよ。そんで、ハードウェア構成ごとにJsonとかyamlファイルを用意するんだ。そっから、コミュニティが設定いじって、新しいハードウェア出たら新しい設定を共有できるじゃん。" userName="amelius" createdAt="2025/06/24 17:43:57" color="#45d325">}}




{{<matomeQuote body="昨日nano-vllm ［1］ って見た？DeepSeekの社員が出したやつで、たった1200行なのにバニラのvllmより速いんだって！<br>1. https://github.com/GeeeekExplorer/nano-vllm" userName="tough" createdAt="2025/06/24 16:25:03" color="#ff33a1">}}




{{<matomeQuote body="それって大規模モデルでも速いの？それとも最適化は小さいモデルで目立つ感じ？ベンチマークが0.6Bモデル使ってるの見て、それが気になったんだ。" userName="Gracana" createdAt="2025/06/24 16:49:24" color="">}}




{{<matomeQuote body="テストはしてないけど、DeepSeekの社員が出したやつだからね。そこで本番環境で使われてるかは知らないけど！" userName="tough" createdAt="2025/06/24 19:33:58" color="">}}




{{<matomeQuote body="記事はよくまとまってていいと思うよ。でもタイトルはちょっと紛らわしいかな。これってNVIDIAのアーキテクチャの話だよね。AMDとか他のGPUだと事情が違うんだよ。例えばMI300だとridge-pointがA100の倍くらい違うし、大容量HBMでトレードオフも変わってくるんだ。高いしCUDAないけどね。" userName="elashri" createdAt="2025/06/24 14:52:35" color="#38d3d3">}}




{{<matomeQuote body="結局AMDがソフトウェアをちゃんとやらないと、重要なのはNVIDIAだけだよね。" userName="apitman" createdAt="2025/06/24 15:02:13" color="">}}




{{<matomeQuote body="いや、データセンター向けではやってるよ。一般向けじゃないだけでさ。" userName="fooblaster" createdAt="2025/06/24 15:15:48" color="">}}




{{<matomeQuote body="その誤解、何度も繰り返されるね。データセンター向けでもソフトサポートはひどいよ。MI50, MI100, MI210を使ったけど、パッチとか特定のkernelじゃないとLLM動かすのも大変だったんだ。もう9ヶ月前だけど、正直うんざりだよ。" userName="tucnak" createdAt="2025/06/24 16:46:53" color="#ff5733">}}




{{<matomeQuote body="それはもう古いハードだよ。MI250やMI300はもっとサポートマシになってるよ。" userName="fooblaster" createdAt="2025/06/24 19:04:22" color="">}}




{{<matomeQuote body="何言ってんだよ。MI210はH100と同じ2023年頃に出たばっかだぞ。データセンター向けで2年前のカードがもう”古い”って？そりゃ誰もAMD信用しないわな。" userName="tucnak" createdAt="2025/06/24 19:50:44" color="">}}




{{<matomeQuote body="MI300での俺の経験は君とは違うかな。もし文句があるなら、期待してたほど性能が出ないってことくらいだよ。" userName="fooblaster" createdAt="2025/06/25 01:08:58" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いや、もしGPUをグラフィックスに使ってるなら話は別だけどね…XboxとかPlaystation、Steam DeckはAMDでいい感じみたいだし。" userName="bluescrn" createdAt="2025/06/24 20:55:55" color="">}}




{{<matomeQuote body="LLMブームで急にGPUに興味持った人たちが、GPUはグラフィックス用だって理解してないの、マジで信じられないわ。まるでグラフィックス終わったみたいに、AMDもNVIDIAもLLMだけやれって意見が多い気がするね。AMDはグラフィックスのハードもツールもすごくいいんだよ。MLはNVIDIAに遅れてるけど、グラフィックスでは超強いんだ。" userName="MindSpunk" createdAt="2025/06/25 00:32:52" color="#ff33a1">}}




{{<matomeQuote body="文脈無視の引用で遊んでるだけだよ。＞ グラフィックはもう終わりで、AMDとNVIDIAはLLMのために他の全てを捨てるべきだって？<br>グラフィックが無くなったら、将来のゲームは「クラウトジェムパイロットに食べられました。」みたいになるね。" userName="_carbyau_" createdAt="2025/06/25 05:21:26" color="">}}




{{<matomeQuote body="昔OpenGLをちょっと触っただけで現代のGPUを分かった気になってる人が多すぎなんだよ、このサイトには。<br>1. AMDもNVIDIAも「tensorcore」ISA命令（本物のシリコン/データパスで、エミュレーションじゃない）を持ってて、グラフィックでは全然使い道がない。<br>2. MI300/H100なんかでビデオゲームやってる奴はいないし、ISA/アーキテクチャもそれを反映してる。<br>＞ でもグラフィックにはすごく強い。<br>ふーん、AMDのグラフィックに過剰最適化されたアーキテクチャ設計が、今MLコンピューティング市場に移行する際の摩擦の原因になってるんじゃない？って思うんだよね。ふーん、彼らはこれらの選択の一部を積極的に元に戻してるんじゃない？" userName="almostgotcaught" createdAt="2025/06/25 01:15:46" color="#45d325">}}




{{<matomeQuote body="AMDはグラフィックに過剰最適化なんてしてないよ。AMDのGPUはNVIDIAよりもずっと前から汎用計算に優しかったんだ。ハードウェア的にはね。AMDのメモリアクセスシステムとかリソースバインディングモデルは、長い間NVIDIAよりずっと進んでた。NVIDIAがリソースディスクリプタをアドレス制限のある特別なパレットに詰め込んでた頃、AMDは内部的には完全にバインドレスだったんだ。全部がただ一つの大きなアドレス空間で、ディスクリプタもデータも一緒。<br>15年前のNVIDIAはグラフィックに過剰最適化されてたね。NVIDIAはただ賢い選択をして、より多くのハードウェアを売って、その儲けをソフトウェアとハードウェアの改良に再投資したんだ。今では、より強力なソフトウェアスタックでGPGPUも同じくらい得意だよ。<br>AMDは市場でフォロワーである以外は苦戦してきて、その結果かなり痛い目に遭ってる。グラフィックでさえね。DX12のMesh shadersは、NVIDIAが新しい実行モデル（彼らの新しいハードウェアに非常に有利な）を押し付けた結果で、AMDはVega以来primitive shadersっていう似た（でも完全に互換性はない）システムを既に持ってたのにさ。" userName="MindSpunk" createdAt="2025/06/25 05:34:48" color="#ff5733">}}




{{<matomeQuote body="Matrix instructionsはグラフィックにももちろん使い道があるよ。<br>その一例がDLSSだね。" userName="averne_" createdAt="2025/06/25 09:27:27" color="">}}




{{<matomeQuote body="これ、なんか逆な気がするな。GPUが作られたのは、主にグラフィックで大量の並列浮動小数点演算が必要だったからで、その大部分は行列積だよ。<br>グラフィックでの行列積と聞いて真っ先に思い浮かぶのは、空間間の変換だね。オブジェクト空間からカメラ空間へ頂点を移動したり、カメラ空間からスクリーン空間へ変換したり…。これは通常のレンダリングで行われる数学の大きな部分で、シーン中の全ての可視頂点（最近のゲームでは何百万もの）に対して行う必要があるんだ。<br>たぶん、ここでの違いは、DLSSが主に他のロジックはほとんどなく、連続して大規模な行列積を行うケースだということだろうね。だって、グラフィックコードというよりANNコードに近いから。" userName="Agentlien" createdAt="2025/06/25 15:47:16" color="#ff5c5c">}}




{{<matomeQuote body="NVIDIAが提供してる優れたGPUデバッグツールがあるから、GPUプログラミングがアクセスしやすいって言えるかもしれないね。<br>ボトルネックになる可能性のある場所はたくさんあるけど（大抵はメモリのアクセスパターンだけどさ）、検証するツールが無いと手動で設計して実験するしかないんだ。" userName="have-a-break" createdAt="2025/06/24 16:35:31" color="">}}




{{<matomeQuote body="残念ながら、GPUはもう過去のニュースだね。perf/watt/dollarで言うと、TPUが学習も推論も断然進んでる。末端のTPUデバイス（v4とか）には疎行列の不利があるけど、大規模な学習を気にするなら、比較にならないよ。それに、Tenstorrent p300デバイスももうすぐ市場に出るし、AMDのXilinx部門からも promising なものがたくさん出てきてるんだ。最近のVersalチップはAI compute-in-networkの能力を可能にしてて、NVIDIA Bluefieldの謳ってるプログラマビリティなんて霞むくらいだ。NVIDIAはBluefieldを次世代のSmartNICみたいだって言いたがるけど、実際にフィールドプログラマブルなVersalのやつに比べたら、90年代の100BASE-Tカードみたいだよ。GPUがAIの分野を支配し続けるなんて、すごくナイーブな考えだと思うね。" userName="tucnak" createdAt="2025/06/24 16:56:55" color="#45d325">}}




{{<matomeQuote body="同等の能力を持つGPUシステムの実際のリードタイムはすごく長くて、注文が実行される頃にはもう損してるよ。完璧な利用率で、完璧なアフターマーケットの状況を想定しても、ハードウェアで儲けは出ないね。<br>購入対レンタルの計算は、両者の間に非対称性がない場合にだけ有効なんだ。多くの場合、レンタルできるものは買えないし、逆に、買えるものはレンタルできないんだ。たとえ実際にTPUが買えたとしても、運用できないだろうね。なぜなら、それは全て洗練されたネットワーキングとスイッチングトポロジー[1]を中心に構築されてるから。同規模のGPU展開にも同じことが言えるよ。どうして、大規模なGPUを購入して運用できると思ったの？<br>それはファンタジーだよ。<br>[1] https://arxiv.org/abs/2304.01433" userName="tucnak" createdAt="2025/06/24 19:59:25" color="#45d325">}}




{{<matomeQuote body="TPU買えないって言うからGPUも買えないって言うの？何その答え、しかも全然違うじゃん。FAANG以外でもBlackwell 1000台以上持ってる会社たくさんあるし、めっちゃ儲けてるよ（quantfiとか知ってる？）。TPU、買えても動かせないんでしょ、それでどうやって勝つの？<br>" userName="almostgotcaught" createdAt="2025/06/24 20:10:39" color="">}}




{{<matomeQuote body="TPUが全部勝つなんて言ってないよ。でも最新TPUが大規模学習で一番コスパ良いのはホント。NVIDIAが負けたんじゃなくて、GPUが負けたって話。NVIDIAがGPUじゃないシステム出すかもね。でもHBM積んだGPU＋Bluefieldは技術的にはもう終わりだと思う。<br>" userName="tucnak" createdAt="2025/06/24 21:34:06" color="">}}




{{<matomeQuote body="NVIDIAじゃなくてGPUが負けたって聞いて、自分でおかしいって思わない？<br>1. NVDAの市場価値、GOOGの70%増しだよ。<br>2. GPGPUのまともな競合なんて他に全然いないじゃん。アクセラレーター会社いっぱいあるけど、どれもダメだよ（cerebrasとかsamba novaとかgroqとかdmatrixとか）。<br>" userName="almostgotcaught" createdAt="2025/06/24 21:40:32" color="">}}




{{<matomeQuote body="君の言ってることおかしいな。TPU買えないって君も認めるなら、買えるのはGPUだけじゃん。だから、GPUは無くならないよ。NVIDIAと競って安く売る新しいプレイヤーが出てこない限りね。<br>" userName="menaerus" createdAt="2025/06/24 21:09:34" color="">}}




{{<matomeQuote body="「残念だけどGPUはもう古い…」「Versalチップはすごい」とか野放図なこと言う人って何なの？Tenstorrentで働いてるか、ただの変な人？hnでよく見るんだよね。「AIでGPUが強いままと思うのはナイーブ」？<br>じゃあさ、君のポートフォリオ、AMDとNVDAとGOOG、それぞれどれくらい持ってるの？<br>" userName="almostgotcaught" createdAt="2025/06/24 19:50:04" color="">}}




{{<matomeQuote body="「君のポートフォリオはAMDIはどれくらい？」って聞いてくるの、ホントfinanciersなの、hackersなの？俺はTTで働いてないけどAIスタートアップの創業者。主要プレイヤーは皆オリジナルのAIアクセラレーター作ってるし、最新のはGPUと違う。NVIDIAハードは高すぎ、コスパ悪い。買うのも待つし、レンタルも辛い。HBMいくら積んでも足りない。一番大事なのはスケールアウト、RDMA over fabrics。NVIDIAはこれがダメ。TTの最新カードはNICいっぱい[1]。IPライセンスくれるし、全部オープンソースだから好きなトポロジー組める[2]。会社潰さずにスケールアウトできる可能性あるよ。TTはundervaluedだし、うちみたいなとこにはチャンス。Galaxyデプロイとか密度すごい。TPUみたいにスケール無限[1, 2]。欠けてるのはCPUコアとか、ネットワーク内計算能力。でも来年にはGrendelスーパーチップ出るし、インターコネクトがオープンだからprogrammableなNICも組める[3]。FPGAにしかできない処理もたくさん。今一番コスパ良い大規模学習はGoogleのTPU v6レンタル。ネットワーク内計算はまだこれから。Xilinxは近づいてる[3]。AWSも色々あるけど全部同時にできない。URLもチェックしてね。<br>https://riscv.epcc.ed.ac.uk/assets/files/hpcasia25/Tenstorre...<br>https://github.com/tenstorrent/tt-metal/blob/main/tech_repor...<br>https://www.amd.com/en/products/accelerators/alveo/v80.html<br>" userName="tucnak" createdAt="2025/06/24 21:24:39" color="#45d325">}}




{{<matomeQuote body="「君は金融/マーケティングに執着してる」？<br>あのさ、俺は君がマーケティング資料で引き合いに出してる会社のAIインフラで働いてんだよ。君の主張、全然違うってレベルじゃなくて、話にならないレベル。外部向けの情報だけ見て、何も分かってない。<br>「技術的な議論から逃げる」？<br>人の仕事引っ張ってきて自分の証明にするような相手と技術的な議論なんてできないよ。<br>" userName="almostgotcaught" createdAt="2025/06/24 21:59:13" color="">}}




{{<matomeQuote body="MI300とA100の比較はfairじゃないよ。世代が違うからね。MI250とA100が同じ世代で、そっちならfairな比較になるはずだよ。" userName="_zoltan_" createdAt="2025/06/25 19:17:50" color="">}}




{{<matomeQuote body="Spoiler: これはGPUがどう動くかって話じゃなくて、machine learningの計算にどうGPUを使うかって話だよ。" userName="eapriv" createdAt="2025/06/24 15:09:28" color="">}}




{{<matomeQuote body="これはpretty standardなCUDAの話だよね。MLとは関係ないよ。reluを例に使ったりtorchに言及したりしてるだけ。" userName="oivey" createdAt="2025/06/24 16:45:34" color="">}}




{{<matomeQuote body="たぶん、タイトルは”Basic Facts about Nvidia GPUs”にした方がいいかもね。WARPっていうのはmodernなNvidia GPUの特徴だし。強調するけど、”modern”ね。2003年頃のNVIDIA GPUは全然違くて、あの頃のvideo gameに使われたrendering pipelineに特化した回路が入ってたから。<br>だから、この記事の大部分は「GPU」全般の話としてはあまりgeneralじゃないんだ。GPUはもっと広いcategoryのdeviceで、modernなNvidia GPUでやるようなgeneral purpose computationを必ずしも含むわけじゃないから。" userName="LarsDu88" createdAt="2025/06/24 19:40:30" color="">}}




{{<matomeQuote body="＞GPUの定義を今存在するものだけに限定することで、GPUの可能性をsandbox化してるんだ。" userName="LarsDu88" createdAt="2025/06/27 00:18:54" color="">}}




{{<matomeQuote body="＞“Peak Compute”の上限 19.5 TFLOPSは理想値で、Tensor Core matrix multiplicationsみたいな高度にoptimizeされたinstructionと十分なpower limitがあれば達成可能だよ。<br>下に書いてある通り、19.5 TFLOPSはFP32のcompute rooflineだよ。Tensor Coreはsupportしてない。あれを使いたかったらFP16を使う必要があって、そうすればsubstantially improvedなperformanceが得られるんだ。" userName="saagarjha" createdAt="2025/06/27 09:30:34" color="#38d3d3">}}




{{<matomeQuote body="こんなに強いCUDA/ML focusはexpectしてなかったな。僕自身の仕事は主にgraphicsとかvideo gameのperformanceだからね。これは全部familiarでusefulな情報ではあるんだけど、僕のhardwareの見方とはすごく違う感じがするよ。" userName="Agentlien" createdAt="2025/06/25 16:01:50" color="">}}




{{<matomeQuote body="著者さんはダークモード用に整形・編集したのかもね。俺はedge://flags/#enable-force-dark使ってるんだけど、これでリンクは読めるようになったよ。" userName="currency" createdAt="2025/06/24 14:54:19" color="">}}




{{<matomeQuote body="このウェブサイト、テキストにアルファ透明度使ってるみたいだね。コントラストを下げるっていう、マジでダメなことだよ。" userName="cubefox" createdAt="2025/06/24 14:53:45" color="">}}




{{<matomeQuote body="もし著者さんが見てたらだけど、リンクとコードブロック内のコメントが読むのに extra effort かかったよ。コントラスト少し上げた方がいいかもね。でも記事内容は本当に great だったよ！" userName="jasonjmcghee" createdAt="2025/06/24 14:28:41" color="">}}




{{<matomeQuote body="Wow - タイトルが”basic facts”なんて控えめすぎるね。”key insights”にすべきだよ。Rooflineを知らない PhD に何人も会ったことあるけど、それくらい深い内容だった。" userName="gdiamos" createdAt="2025/06/25 12:27:46" color="#45d325">}}




{{<matomeQuote body="コンパイラレベルでの whole program optimization ってどうなってるの？これらの LLM architectures を一つずつ最適化してる現状って、なんか backwards な気がするんだけど。" userName="bjornsing" createdAt="2025/06/25 05:20:21" color="">}}




{{<matomeQuote body="これ、すごく良い introduction だね。感謝してるよ。AI PC組む時に GPU 調べたけど数日かかったのが、これ読むとスッと頭に入ってきたよ。generative artificial intelligence みたいな high-value な applications にも触れてるのが特に great。他であまり represented well なのを見なかった A100 GPU の memory hierarchy の diagram とか、 notable だったね。The diagrams were very helpful。<br>Thank you for this!" userName="kittikitti" createdAt="2025/06/24 13:58:35" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
