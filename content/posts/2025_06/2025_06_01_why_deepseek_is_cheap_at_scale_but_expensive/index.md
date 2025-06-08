+++
date = '2025-06-01T00:00:00'
months = '2025/06'
draft = false
title = 'DeepSeek 大規模では安価なのにローカルでは高価 その理由とは？'
tags = ["AI", "DeepSeek", "コスト", "ローカル実行", "ハードウェア"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> DeepSeek 大規模では安価なのにローカルでは高価 その理由とは？

引用元：[https://news.ycombinator.com/item?id=44149238](https://news.ycombinator.com/item?id=44149238)




{{<matomeQuote body="俺はDeepseek V3を普段使いでローカルで動かしてるけど、手頃で速くて効果的だと思うよ。記事はGPU前提だけど、個人的にはこういう大規模モデルをローカルで動かすには最適じゃないと思うんだ。EPYC 9004シリーズのCPUを使った自宅サーバーで、トータル約$4000かかったかな。GPU無しだから消費電力もゲーミングPCより少ない。RAM制限はあるけど、Unsloth Dynamic GGUFを使ってる。品質はオリジナルとほぼ変わらないと感じてるよ。約270GBで、コンテキストにも余裕がある。普段は16kコンテキストで他の用途にも使ってるけど、必要なら24kまで上げられる。速度は毎秒9～10トークンくらいで、コンテキストが大きいと毎秒7トークンくらいに落ちるね。似たような構成でCPU2個載せて、フルバージョンを同じくらいの速度で動かしてる人もたくさんいるよ。" userName="ryan_glass" createdAt="2025/06/01 18:59:45" color="#45d325">}}




{{<matomeQuote body="すごいけど、それってホストプロバイダーの5分の1から10分の1のスループットで、サポートされるコンテキストも4分の1から8分の1だよ。" userName="jbellis" createdAt="2025/06/01 20:09:54" color="">}}




{{<matomeQuote body="＞ Unsloth Dynamic GGUFは、実際の使用で品質がオリジナルに非常に近い<br>どれくらい近いのかな？<br>OP、君が嘘つきだと言ってるんじゃないけど、一般的にこういう大ざっぱな主張を広める人たちには、もっと厳密であってほしいな。Unslothは素晴らしい仕事をしてるけど、俺が知る限り、彼ら自身もオリジナルの非量子化モデルとの直接比較評価は公開してないんだ。元のモデルを動かす余裕がある個人や会社はほとんどいないし、厳密な評価をエンジニアリングできるところなんてなおさら少ないから、そこは同情するよ。でも、俺の経験とは合わないから、コメントせずにはいられなかった。比較的単純な使い方だと違いはほとんど気づかないけど、高複雑度や長文コンテキストのタスクではずっと明らかになるんだよ。" userName="refibrillator" createdAt="2025/06/01 20:59:47" color="">}}




{{<matomeQuote body="彼はローカルで動かしてるんだぜ。ローカルで動かしたいなら、このセットアップが一番コスパいいと思うよ。データセンターと比較してるわけじゃないんだから、そこを考慮しないと。ローカルで動かしてるにしては、すごくすごい結果だよ。数値ありがとう、chatgpt検索の手間が省けたよ :)" userName="michelsedgh" createdAt="2025/06/01 20:13:00" color="">}}




{{<matomeQuote body="プロンプト処理速度はどう？この状況だと、出力TPSよりそっちの方が重要だよ。回答が出始めるまで何分も待つ必要があるなら、クラウドホスト版よりずっと悪くなるよね。" userName="nardi" createdAt="2025/06/01 19:12:45" color="">}}




{{<matomeQuote body="高速なメモリをたくさん積んだGPUが必要だと思ってたんだけど、まさかユニファイドじゃない大量のシステムメモリだけでGPU無しで推論ができるって言うの？どうやってそんなことが可能なの？" userName="blindriver" createdAt="2025/06/01 23:58:40" color="">}}




{{<matomeQuote body="ローカルモデルの現状はさらに進んでるよ。例えば、https://github.com/kvcache-ai/ktransformersを見てみて。これは比較的古い2ソケットXeonサーバーと市販のRTX 4090 GPUで、毎秒11トークン以上の生成速度を達成してるんだ。もっと興味深いのは、250トークン/秒以上のプリフィル速度だね。これはコーディングのような、大きなプロンプトが一般的なユースケースで非常に役に立つよ。これは今日達成可能だ。その間にIntelの連中はもっとすごいものに取り組んでるんだ。https://github.com/sgl-project/sglang/pull/5150で、彼らは毎秒15トークン以上の生成と、毎秒350トークン以上のプリフィルを達成したと主張してるよ。彼らはこれがどんな正確なハードウェアで動いているかは共有してないけど、様々なPRの断片から推測するに、MRDIMM 8800 RAMを搭載した2x Xeon 6980Pを使ってるみたいだね。GPUは無しだよ。そういうセットアップの総コストは、安いEngineeringサンプルがeBayに出回れば、約$10kくらいになるだろうね。" userName="p12tic" createdAt="2025/06/01 20:51:19" color="#ff5c5c">}}




{{<matomeQuote body="厳密じゃなかったっていうのはその通りだよ。毎秒トークン数をベンチマークするのは簡単だけど、出力品質をきっちり決めるのはもっと難しいんだ。Unslothのまともな比較もどこにも見つけられなかったんだよね。だから、彼らのモデルをいくつか試してみて、『十分良い』もの、つまり俺が必要なこと全部できるもの、コーディング、文書要約、あらゆるトラブルシューティングができるものを探したんだ。直接比較も見たいけど、今のところもっとRAMに投資する必要はないかな。Unslothモデルの小さいバージョンと大きいバージョンでいくつか比較してみたんだけど、面白いことに（個人的にはね）、品質にそれほど大きな違いは感じなかったんだ。でも、小さいモデルは著しく速くもならなかったから、まともなコンテキストでRAMに収まる最大のモデルに落ち着いたんだ。もっと複雑なコーディングにはDeepseek R1（これもUnsloth版）を使ってるけど、推論モデルだからリアルタイムじゃないんだ。だから普段使いには向かないね。" userName="ryan_glass" createdAt="2025/06/01 21:45:23" color="#ff33a1">}}




{{<matomeQuote body="バッチサイズが1より大きい場合を考慮すると、それはすごいとも効率的とも言えないね。" userName="qeternity" createdAt="2025/06/01 21:58:55" color="">}}




{{<matomeQuote body="どんな使い方してる？どんなテキスト作ってるのか気になるなー。" userName="dotancohen" createdAt="2025/06/01 22:32:38" color="">}}




{{<matomeQuote body="うちはデュアルソケット18コア（合計36コア）のxeonに768GBのDDR4積んでて、Deepseekのフルモデル4bit量子化版で毎秒1.5～2トークンくらい出るよ。<br>こんなモデルを家で動かせるなんてマジすごいよね。" userName="mechagodzilla" createdAt="2025/06/01 23:02:04" color="#785bff">}}




{{<matomeQuote body="CPUもバッチサイズ1での推論には静かにバランス良くなってきてるよ。<br>最新のIntel Xeonは毎秒20トークンくらい出るはず。" userName="pclmulqdq" createdAt="2025/06/01 19:23:20" color="#785bff">}}




{{<matomeQuote body="これ全部バッチサイズ1の話ね。" userName="p12tic" createdAt="2025/06/01 22:00:42" color="">}}




{{<matomeQuote body="KVキャッシュがあればこれ問題ないと思うけど、自分も気になるな。" userName="pclmulqdq" createdAt="2025/06/01 19:24:10" color="">}}




{{<matomeQuote body="CPUだけってコスパ最悪だよ。<br>ローカルAIに興味ある人にこんな現実的じゃない構成勧めるのやめてほしい。<br>KVキャッシュがあっても最初の応答に時間がかかりすぎる。<br>CPUオフロードモデルでDeepseekを動かすより、3090一枚でGemma 27Bとか動かす方が断然使える構成になるよ。<br>GH200でさえバッチサイズ1でDeepseekを実用的な速度で動かすのに苦労してるし、CPUオフロードモデルで“安くて速くて効果的”なAIなんて今はないよ。" userName="BoorishBears" createdAt="2025/06/01 23:43:23" color="#785bff">}}




{{<matomeQuote body="アイドル時とか平均、最大電力消費について詳しい数字ある？<br>サーバーマシンって常に全力で動く前提で作られてて、低負荷時の最適化はあまりされてないと思ってたけど。" userName="3eb7988a1663" createdAt="2025/06/01 21:29:36" color="">}}




{{<matomeQuote body="参考までにだけど、あなたのウェブサイトもダウンしてるよ… wit.comにアクセスできない。" userName="trustinmenowpls" createdAt="2025/06/02 00:06:03" color="">}}




{{<matomeQuote body="知ってるよ。それが言いたかったんだ。<br>CPUではGPUみたいにスループットはスケールしないんだ。" userName="qeternity" createdAt="2025/06/02 23:34:42" color="">}}




{{<matomeQuote body="モデルを保持するにはGPUの速いメモリがたくさん必要で、GPUカードにはそれがあるってことだろうね。" userName="oreoftw" createdAt="2025/06/02 00:13:19" color="#38d3d3">}}




{{<matomeQuote body="電力消費の正確な数値はないけど、ATX規格のCorsair RM750e 750W PSUを使ってて、CPUのデフォルトTDPは280W（自分は300Wにしてる）。デスクトップPCみたいな作りで、アイドル時はファンが止まるよ。" userName="ryan_glass" createdAt="2025/06/01 21:59:37" color="#ff5733">}}




{{<matomeQuote body="ベースのMac Miniは20くらいだよ :)" userName="Spooky23" createdAt="2025/06/01 20:58:05" color="">}}




{{<matomeQuote body="Gemma 27Bの品質じゃ全然物足りないね。もっと小さいモデルもどれもダメだわ。" userName="ryan_glass" createdAt="2025/06/02 08:35:28" color="">}}




{{<matomeQuote body="うちのquantを使ってくれてありがとう :)<br>内部ベンチマークはめちゃ遅いからまだやってる途中だけど、確実に内部基準はクリアしてるよ :)" userName="danielhanchen" createdAt="2025/06/01 23:09:32" color="#785bff">}}




{{<matomeQuote body="出力の品質って、例えばo3とかSonnet 4と比べてどう？" userName="ysosirius" createdAt="2025/06/02 05:11:34" color="">}}




{{<matomeQuote body="「こんにちは」から始まるただのチャットならKV cacheに会話が貯まるだけだけど、コードや下書き、記事の断片とかを入れると、それがどんどん増えて大きな問題になるんだ。" userName="idonotknowwhy" createdAt="2025/06/01 23:27:07" color="#ff5733">}}




{{<matomeQuote body="タイトルは「ローカルだと高い」って言ってて、他の人が「4000ドル払ったのにまだ遅い」って言ってるね。" userName="carstenhag" createdAt="2025/06/01 20:27:38" color="">}}




{{<matomeQuote body="こんにちは :) 親切な言葉ありがとう。うちはLlama 4 Scout、Gemma 3 27Bのベンチマーク（MMLU, KLD, Perplexity）をこの方法論で公開してるよ。→ https://docs.unsloth.ai/basics/unsloth-dynamic-2.0-ggufs と https://x.com/UnslothAI/status/1915476692786962441<br>R1についてはオリジナルのモデルで内部ベンチマークやったよ。→ https://unsloth.ai/blog/deepseekr1-dynamic<br>R1-0528の評価はまだやってる途中 :) 実行コストが高いから、まず内部テストで感触を見てるんだけど、かなりいいね！<br>でも一番力を入れてるのはバグ修正で、これで客観的に精度が+1～+10%向上するんだ。例えばLlama 4やGemmaのバグ修正とか → https://news.ycombinator.com/item?id=39671146 これらがずっと重要だよ :)<br>うちはQ8_0とQ8_K_XL quantsも提供してるんだけど、これはほぼFP8と同じ。あと、呪文`-ot ”.ffn_.*_exps.=CPU”`を使えばMoE層をRAMにオフロードできるよ！" userName="danielhanchen" createdAt="2025/06/01 23:08:33" color="#ff33a1">}}




{{<matomeQuote body="自分のプロプライエタリなコードとか、古いレガシーコードをコーディングしたいから、ローカルでホスティングしたいんだ。<br>Linuxサーバーから車まで、何でもトラブルシューティングしたり、たまにデカいドキュメントを要約・翻訳したりもするよ。<br>あと、画像生成とか他の自動化もするけど、これは明らかにLLMは使わないよね。" userName="ryan_glass" createdAt="2025/06/02 13:50:57" color="">}}




{{<matomeQuote body="この記事、面白いね。<br>結論の「バッチ処理が必要」ってのは正しいけど、MoEモデルの推論はもっと複雑なんだ。<br>大きなバッチが必要な主な理由は、LLM推論が計算能力じゃなくて、VRAMから全ウェイトを読み込むのがボトルネックだからだよ。<br>H100のTFLOPSをメモリ帯域幅と比較してみてよ、バイトごとに300 FLOPしか計算できる余裕がないんだ。<br>だから、バッチサイズを大きくして、メモリから読み込むパラメータ／ウェイトごとにたくさんの演算をしたいんだ。<br>この限界はよく”Roofline model”って呼ばれてるね。<br>モデルが大きくなるにつれて、モデルウェイトがGPUメモリに収まらなくなるから、複数のGPUやノードに分散する必要が出てくるんだ。<br>NVLinkやInfinibandを使っても、これらの通信はVRAMからの読み込みより遅いんだよね。<br>NVLinkはtensor parallelismにはまだ使えるけど、ノード間はかなり遅いんだ。<br>だから、MoEはexpert parallelismを可能にするんだ。<br>異なるノードが異なるexpertsをメモリに持って、ノード間であまり通信する必要がなくなるんだよ。<br>これは、全てのexpertsがVRAMに収まって、他のもの（KV cacheとか他のウェイトとか）のオーバーヘッドに十分なノード数がある場合にだけ機能するんだ。<br>だから、当然、可能なバッチサイズはかなり大きくなるね。<br>もちろん、これを最大化して、全てのGPUがちゃんと動くようにしたいってわけ。" userName="ipieter" createdAt="2025/06/01 12:41:19" color="#ff5733">}}




{{<matomeQuote body="だから、AMDへの投資案件としては、モデルが単一シャーシに収まること、そして副次的なメリットとして、計算をつなぐネットワーク機器の関税が少ないことだね。<br>クラスターコンピューティングじゃなくて、Map／reduce方式だよ。<br>追記：ダウンボートする時は、なんで反対なのか理由を教えてくれるとうれしいな。" userName="iwontberude" createdAt="2025/06/01 15:17:09" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="AMDはHBMをどんどん増やしてるんだ。<br>H100は80GB HBM3、H200は141GB HBM3e、B200は192GB HBM3eだろ？<br>それに対して、MI300xは192GB HBM3、MI325xは256GB HBM3e、MI355xは288GB HBM3eだよ。<br>これはつまり、ネットワーク越しに出なくても、より大きなモデルを単一ノードに収められるってことさ。<br>AMDのメモリ帯域幅もかなり良いんだ。" userName="latchkey" createdAt="2025/06/01 16:54:12" color="#45d325">}}




{{<matomeQuote body="AMDがどれだけメモリを持ってても、ドライバやファームウェアが不安定だったら意味ないよ。<br>去年の例を一つ挙げると：<br>https：／／www.tomshardware.com／pc-components／gpus／amds-lisa-su...<br>彼らはROCmで苦労したから、今、AMDハードウェア用の独自のドライバを開発してるんだ。" userName="ryao" createdAt="2025/06/01 19:32:52" color="">}}




{{<matomeQuote body="「ドライバ」って、ずいぶんジェネリックな言葉だね。<br>tinygradはmi300xで動くよ。<br>使いたいなら使えるんだ。<br>あなたの指摘は成り立たないね。<br>それに、ROCmは大量のライブラリの巨大な集合なんだ。<br>もちろん、どんな大きなソフトウェア集合にも問題はあるけど、重要なのはAMDが問題を修正するために迅速に対応してるかどうかだよ。<br>昔は、それが大きな問題だったんだ。<br>AMDは開発者をルーチンで無視して、バグは決して直らなかったんだよね。<br>でも、あのSA記事の後、LisaがAnushのお尻に火をつけて、彼が責任を持つようになったんだ。<br>それは会社全体の文化の大きなシフトだよ。<br>彼らはめちゃくちゃ対応が早くて、どんどん直してるんだ。<br>文字通り、GH issueを彼にツイートしたら、誰かが返信してくれるレベルだよ。<br>1年前のことが今日の現実じゃないってこと。<br>俺みたいに注意深く見てて、直接体験してるなら、状況は急速に変わってるって分かるはずさ。" userName="latchkey" createdAt="2025/06/01 19:39:21" color="#ff5c5c">}}




{{<matomeQuote body="AMD／ATIドライバについては、何十年もこの話を聞いてるよ。<br>毎年、誰かが直ったって言うけど、結局そうじゃないって新しい証拠が出てくるんだ。<br>歴史を考えると、直ったとは信じられないね。<br>これと反対の証拠がここにある：ROCmが本当に良い状態なら、tinygradは独自のドライバを開発する代わりにそれを使うはずだ。" userName="ryao" createdAt="2025/06/01 20:36:13" color="">}}




{{<matomeQuote body="何十年も色々聞いてきたのはみんな同じだよ。<br>今は明らかに違うんだ。<br>過去じゃなくて、今を生きてくれ。<br>Tinygradはドライバじゃないよ。<br>フレームワークなんだ。<br>Georgeが好きなように開発してるんだよ。<br>もっと直接的なコントロールが欲しいものを作りたいなら、それでも良いんだ。<br>他の人は、もっと高レベルな抽象化を使わずにPTXを書いてるかもしれないしね。<br>事実として、tinygradはAMDだけでなく、Nvidiaとか他のものでも動くんだ。<br>物事を深読みして、間違った結論を出してるから、君の信念を見直した方がいいかもしれないね。" userName="latchkey" createdAt="2025/06/01 21:13:32" color="">}}




{{<matomeQuote body="それは去年の話だよ。<br>Mi300xのファームウェアとソフトウェアは、それからずっと良くなってるんだ。" userName="faldore" createdAt="2025/06/01 22:20:28" color="">}}




{{<matomeQuote body="tinygradのサイトを見たんだけどさ、https://tinygrad.org/#tinygrad。AMDのドライバ品質のところに”developing”って書いてあって、gitリポジトリを指してるんだよね。もしAMDが問題を解決してたら、ドライバ品質はgreatだって書くはずだし、そしたらもっと売れるでしょ。<br>正直にAMDハードウェアの現状を書いても、NVIDIAハードウェアも売ってるんだから大丈夫なのにさ、君の会社はAMD GPUのリースで成り立ってるから「全て順調」以外のことを言ったら売上ゼロになるリスクがあるじゃん？ https://hotaisle.xyz/pricing/<br>君の巨大な利益相反を考えると、George Hotzとか他の人たちの言うことの方を信じるよ。" userName="ryao" createdAt="2025/06/02 03:46:18" color="#ff33a1">}}




{{<matomeQuote body="君、二つの全然違うものを混同してるよ。<br>ROCmはAMDドライバの一部じゃなくて、レガシーな計算APIとかBLAS/GEMM/LAPACKみたいなのをサポートするソフトライブラリなんだ。君が興味あるROCmの部分はHIP。HIPはレガシーなCUDAエミュレーションをやる部分で、NVIDIAがどんどん新しいこと追加したり、ドキュメント間違えたりするから、HIPが完璧になることは絶対にないよ。それに、NVIDIAカードでみんながやってる“cool”なことって、CUDAじゃなかったりして、PTXのエミュレートなんてHIPの範囲外なんだ（それは昔のNVIDIAアーキテクチャに強く紐付いてて、AMDアーキテクチャには全く合わないからね）。<br>Tinygradの言う”ドライバ”ってのも、ドライバそのものじゃなくて、PCI-Eベースのシステムでカード間ccNUMAを扱うためのインフラのことなんだ。AMDはこれサポートしてないんだよ。それが欲しいなら、Infinity Fabric（HyperTransportプロトコルをPCI-E PHYに乗せたやつ）でGPU同士が通信する大企業向けシステムを買うことになるんだ。<br>ほとんどのお客さん、AMDでもそうでなくても、PCI-E経由でGPU間でVRAMを直接共有したいなんて思ってないんだよね。PCI-E GPUのお客さんはほとんどがシングルGPUだし。 massiveなマルチGPU構成にしてるお客さんは、それぞれ好きなベンダーのエコシステムに入り込んでる（NVIDIAのMellanoxを使ったファブリックとか、AMDの壁一面Infinity Fabricとか）。<br>でもね、AMDも可能ならサポートしたいと思ってるし、TinygradはAMDのエンジニアが追加するのを待ってられないから、自分たちでどんどん進めて追加してるんだ。<br>あと、Tinygradの問題の一つは、ROCm/HIPから利用できるようにしたいってこと。標準に準拠したモダンなAPIじゃなくてね。ROCm/HIPはまだ、AMDドライバが使ってるモダンなシェーダーコンパイラ（OpenGL、Vulkan、Direct系のAPIで使うやつ）に移植されてないんだ。元々はドライバチームとは関係ないエンジニアリングチームから来たものだから。<br>今AMDで大きく進んでるのは、ROCm/HIPを大幅にシンプルにして、余分な部分を全部削って、純粋なSPIR-Vコードジェネレータみたいにする統一化の動きなんだ。これはいつかTinygradみたいなプロジェクトの助けになるかもしれないけど、今すぐにはならないよ。" userName="DiabloD3" createdAt="2025/06/02 04:36:21" color="#785bff">}}




{{<matomeQuote body="残念ながら、AMDとそれ以前のATIは、もう何十年もドライバ品質の問題を抱えてるんだよね。それで、彼らもファンも毎年「問題を解決したぞ！」って主張してる。<br>たとえ進歩したとしても、NVIDIAに追いついたとは思えないな。彼らから何度も期待外れを経験したから、彼らがドライバを本当に改善するのは、他のグループにドライバを書かせるしかないって確信してるよ。<br>偶然だけど、ValveがSteamOSとか他のLinuxディストリビューションで使われるVulkanドライバを開発してて、おかげでSteamOSはWindowsよりずっと良くなってるんだ。AMDもGPGPUサポートを誰か他の人に改善してもらうようにすれば、きっとかなり良くなるだろうね。それまでは、期待はめっちゃ低いよ。" userName="ryao" createdAt="2025/06/02 04:28:47" color="">}}




{{<matomeQuote body="その通り、それはドライバじゃないんだ。<br>うちのビジネスについて掘り下げてくれて感謝。そう、うちは透明性のある価格を公開してる数少ない会社の一つだよ。<br>始めた頃は、長い間全く売れなかった。みんな、これらのものがどれくらい性能出るか知らなかったからね。だからハードウェアを寄付して、ChipsAndCheeseみたいな人たちがベンチマークしてブログ記事を書いてくれるようになったんだ。<br>ハードウェアは良いって知ってたんだけど、ソフトウェアが酷かった。16ヶ月くらい経って、状況が変わって十分改善されて、今ではキャパシティいっぱいになってる。このビジネスに深く関わってるからこそ、何が起こってるのか分かるんだよ。<br>うん、ビジネスを経営してるけど、同時に、誰もリスクを取ろうとしなかった時に、この計算資源をデプロイするリスクを喜んで取ったんだ。利益相反があるなんて示唆するのはフェアじゃないよ、特に話の全貌を知らずにね。<br>この段階で、君が何を主張したいのか分からないな。ソフトが酷かったことには同意してる。Tinygradは今MI300Xで動くようになったんだ。Georgeの1年前の動機がどうだったとしても、今はもう違う。<br>もしROCmがそんなに酷いと思うなら、tinygradルートを行けばいい。CUDAに縛られたくないならそれも同じ。選択肢があるのは良いことだよ。結局のところ、これはハードウェア自体の反映じゃないんだ。" userName="latchkey" createdAt="2025/06/02 04:35:05" color="#ff5733">}}




{{<matomeQuote body="＞ ROCm isn’t part of AMD drivers, its a software library that helps you support legacy compute APIs and stuff in the BLAS/GEMM/LAPACK end of things.<br>AMDはそう言ってないよ:<br>＞ AMD ROCm™ is an open software stack including drivers, development tools, and APIs that enable GPU programming from low-level kernel to end-user applications.<br>https://www.amd.com/en/products/software/rocm.html<br>AMDハードウェアに関する問題は、ドライバだけでなく、ドライバよりも下のファームウェアにも及んでいたんだ:<br>https://www.tomshardware.com/pc-components/gpus/amds-lisa-su...<br>Tinygradのソフトウェアはユーザーランドドライバみたいだね:<br>https://github.com/tinygrad/tinygrad/blob/master/tinygrad/run_gpu.py<br>色々なファームウェアblobをロードしたり、初期化プロセスの一部を管理したり、メモリを管理したり、レジスタに書き込んだり、etcetera。これらは全部ドライバがやることだよ。" userName="ryao" createdAt="2025/06/02 05:23:48" color="#ff5c5c">}}




{{<matomeQuote body="君のビジネスが上手くいくことを願ってるよ。AMDがいくらか改善したって信じたいけど、NVIDIAという選択肢がある時に、人々の時間を使う価値があるほどAMDが改善したとは信じないな。悪夢のような話をたくさん聞きすぎたし、あの悪夢を報告した人たちも含めて、多くの人たちが改善を報告してくれないと、考えを変えることはないね。問題を報告したのはGeorge Hotzだけじゃない。Eric Hartfordは最近静かだけど、彼のブログの最後のコメントの一つはあまり希望が持てるものじゃなかったよ:<br>＞ Know that you are in for rough waters. And even when you arrive - There are lots of optimizations tailored for nVidia GPUs so, even though the hardware may be just as strong spec-wise, in my experience so far, it still may take 2-3 times as long to train on equivalient AMD hardware. (though if you are a super hacker maybe you can fix it!)<br>https://erichartford.com/from-zero-to-fineturning-with-axolotl<br>その後、「今はすごく良くなった」みたいなフォローアップは出てないんだ。<br>それはそうと、君に利益相反があるって言うことについて、利益相反が何か考えてみようか:<br>https://en.wikipedia.org/wiki/Conflict_of_interest<br>＞ A conflict of interest (COI) is a situation in which a person or organization is involved in multiple interests, financial or otherwise, and serving one interest could involve working against another.<br>君はAMD GPUをリースすることだけにビジネスが依存してる会社を経営してる。ここでは、AMDのハードウェアがその目的に役立つし、去年他の人たちが報告したような問題の洪水はもうないって言いたいわけだ。もし改善してないなら、そう言うことは君のビジネスに重大な悪影響を与える可能性がある。これはまさに定義上、利益相反だよ。<br>それはかなり大きな利益相反だね、生計に関わることなんだから。君は物事を実際よりも良く見せるインセンティブがあるわけで、それが、最近の過去に多くの十分な証拠があったのに、物事は順調だと言う時の信頼性に影響するんだ。AMDの場合、ドライバ品質の悪さはATIから受け継いだもので、問題は数十年前に遡る。AMDがドライバを改善したことは信じられるけど、歴史を考えると、今や物事が順調だと言えるほど十分改善したとは信じがたいな。こういうことのために君の言葉をあまり信用しないのはアンフェアかもしれないけど、過去に似たような立場で製品の適合性について真っ赤な嘘をついた人たちはたくさんいるんだ。人命に関わる時でさえ嘘をついたんだよ:<br>https://hackaday.com/2015/10/26/killed-by-a-machine-the-therac-25/<br>君の言ってることは全て正しいのかもしれないけど、他の人たちからの裏付け情報が出るまでは、私は懐疑的である十分な理由がある。過去に似た立場で嘘をついた全ての人たちのせいで、私の懐疑心があると思ってくれ。とはいえ、この分野でAMDハードウェアを使ってる他の人たちからの良いニュースには耳を傾けるつもりだよ。でも、歴史を考えると期待は低いね。" userName="ryao" createdAt="2025/06/02 04:55:56" color="#ff5733">}}




{{<matomeQuote body="Gaming != HPC" userName="latchkey" createdAt="2025/06/02 04:42:59" color="">}}




{{<matomeQuote body="＞ As models become bigger, this does not scale anymore because the model weights will not fit into GPU memory anymore and you need to distribute them across GPUs or across nodes. Even with NVLink and Infiniband, these communications are slower than loading from VRAM. NVlink is still fine for tensor parallelism, but across nodes this is quite slow.<br>推論って、レイヤーを計算して、次のレイヤーへの入力としてすごく小さなベクトルを送信することで機能するんだ。モデルが単一のGPUに乗らない場合、レイヤーに分割して、ファブリック経由で次のレイヤーを持つGPUにベクトルを送信するだけなんだ。転送はすごく速く行われるから、アイドル時間はほとんど無視できるレベルで、次のレイヤーが計算できるんだよ。CerebrasのLlama 4 Maverickでの世界最速の推論は、この技術を使って2500T/secを出してるんだ。" userName="ryao" createdAt="2025/06/01 19:47:57" color="#45d325">}}




{{<matomeQuote body="GPUは元々ゲーミング用に設計されたんだ。HPCで使えるようになったのはそこから派生したんだよ。問題の歴史はかなり昔に遡るんだ。" userName="ryao" createdAt="2025/06/02 05:16:05" color="">}}




{{<matomeQuote body="Ericが俺らのシステム使ってて、AMDが計算時間くれたんだって。俺はこの業界を動かしてるんだぜ。<br>金とか名声のためじゃない。Nvidiaの独占はヤバいから、未来のためにやってる。AMDがNvidiaに対抗できる唯一の存在。俺たちはコンピューティングを分散化したいんだ。https://x.com/cognitivecompai/status/1929260789208142049<br>https://news.ycombinator.com/item?id=44154174<br>このリンクも見てくれよ。" userName="latchkey" createdAt="2025/06/02 05:44:46" color="#38d3d3">}}




{{<matomeQuote body="EricにAMDハードでのLLM学習についてブログ書いてもらいたいな。<br>AMDがCPUで追いついたのはハードができたからだけど、GPUで追いつくにはソフトが大事。でもAMDはソフトがずっとダメなんだ。<br>Nvidiaは採用すごいしドライバもアーキテクチャも統一、解析ツールも使う。AMDはバラバラで問題多すぎ。https://blog.desdelinux.net/en/Entrysign-a-vulnerability-aff...<br>Intelの方がソフトはマシだから、AMDより期待できるかもね。" userName="ryao" createdAt="2025/06/02 06:53:44" color="#45d325">}}




{{<matomeQuote body="AMDってコミュニケーションが下手すぎるよ。<br>ROCmはドライバじゃなくてSDKなんだ。ドライバは別にあるんだぜ。<br>TinyGradはドライバじゃなくて、プロセスを乗っ取ろうとしてる感じ。これで起動はできないし、既存のドライバを置き換えるわけじゃないんだ。ファームウェアをいじるからドライバっぽく見えるのかもね。" userName="DiabloD3" createdAt="2025/06/02 06:09:32" color="">}}




{{<matomeQuote body="ネットワークの重みをそのまま電子回路にしたらどうなるの？脳みたいにさ。<br>アナログ入力からGPUでのデジタルエミュレーションなしで直接NNの出力が出るとか。<br>これ超シンプルだけど、今のLLMとかでも動くのかな？" userName="cyptus" createdAt="2025/06/01 19:01:39" color="">}}




{{<matomeQuote body="俺はあれをドライバ、またはその一部だと思うね。<br>ユーザー空間のドライバなんて存在するんだぜ。昔はドライバって全部ユーザー空間だったし。<br>今はカーネルとユーザー空間両方にコンポーネントがある。シェーダーコンパイラとかはユーザー空間だろ？" userName="ryao" createdAt="2025/06/02 07:45:39" color="">}}




{{<matomeQuote body="推論をレイヤーごとにGPUに分けるんじゃなくて、レイヤー全体を別のGPUでやるのはパイプライン並列って言うんだ。<br>でもそれだとバッチごとに1GPUしか使わないから遅いんだよね。<br>次のバッチを始めるタイミングとかの調整も難しいし。<br>だから俺が説明したテンソル並列の方がLLM推論ではずっと一般的だよ。" userName="ipieter" createdAt="2025/06/02 22:44:12" color="#ff5733">}}




{{<matomeQuote body="ROCm 6.4でInstinct GPU Driverが出たんだってさ。<br>これでカーネルドライバがROCmのユーザー空間から分離されたらしいよ。<br>AMDのコミュニティの記事へのリンク貼っとくね。https://community.amd.com/t5/ai/what-s-new-in-amd-rocm-6-4-b..." userName="latchkey" createdAt="2025/06/02 06:08:01" color="">}}




{{<matomeQuote body="MI355Xはまだ発売されてないし、これから出るB300もHBM3e 288GBだよ。" userName="dragonwriter" createdAt="2025/06/02 02:07:24" color="">}}




{{<matomeQuote body="MoEモデルなら、各エキスパートを順番に使って、同じエキスパート宛ての要求がたまったらまとめて処理できるよ。遅延は増えるけど、じっくり調べるような用途なら大丈夫だろ。" userName="zozbot234" createdAt="2025/06/01 15:00:42" color="">}}




{{<matomeQuote body="MI300xってGPUはメモリが8つに分かれててさ。全部まとめて使えるけど、一番性能出したかったら8つのソケットがあるボードみたいに扱わないといけないんだって。" userName="krapht" createdAt="2025/06/01 18:44:23" color="">}}




{{<matomeQuote body="結論から言うと、答えはバッチ推論だよ。複数の質問をまとめてモデルに通すこと。これがあるから、温度0とかシード固定でも返答が毎回ちょっと違うことがあるんだ。<br>他の質問と一緒にまとめて処理されるからね。これってデータ漏洩のリスクにもなるのかな？そこまでは調べてないけどさ。" userName="perching_aix" createdAt="2025/06/01 10:40:29" color="#38d3d3">}}




{{<matomeQuote body="そうそう、バッチ処理だよな。ローカルでも、AIが変なこと言ってないか確認するために、何回か試す（バッチ処理する）のに使えるぜ。<br>バッチ処理なんて最初からあったのに、みんながそのすごさに気づくのに時間かかったのは不思議だよな。" userName="larodi" createdAt="2025/06/01 14:46:16" color="">}}




{{<matomeQuote body="”複数の質問をまとめてモデルに通すこと”ってあるけど、プロバイダーって全部のモデルでバッチ処理してると思ってたよ。DeepSeekみたいな特定のモデルだけなのかな？" userName="yjftsjthsd-h" createdAt="2025/06/01 11:54:36" color="">}}




{{<matomeQuote body="多くのモデルで使えるけど、全部じゃないんだ。どれだけモデルの重みが共有されるかが大事でさ。普通のTransformerは全部共有だからOK。MoEもサイズが大きければいけるけど、一部の技術だと効率出すのにすごく大きなバッチサイズが必要になる。<br>そうなると、待つ時間が増えたりデータ量が多すぎたりで無理が出てくるんだ。" userName="hansvm" createdAt="2025/06/01 14:27:41" color="#ff33a1">}}




{{<matomeQuote body="”他の質問と一緒にまとめて処理されるから”ってあるけど、なんでバッチ処理すると返答にばらつきが出るの？" userName="pcwelder" createdAt="2025/06/01 10:50:33" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="バッチ処理するとデータの形が変わるから、最適な計算方法（行列の掛け算とか）も変わって、それが結果の微妙な違いになるんだ。<br>あと、一部の計算処理は速くするために、意図的に毎回同じ結果にならないようにしてることもあるみたいだよ。" userName="kouteiheika" createdAt="2025/06/01 12:21:38" color="#ff33a1">}}




{{<matomeQuote body="そうそう、これだよ。他の変に自信満々な答えは間違ってるのが多いな。非決定性の原因を突き止めるのって、SGLangのドキュメントにも少し書いてあるけど、コミュニティ全体でもっとちゃんと取り組むべきだと思うんだよね。<br>[0] https://docs.sglang.ai/references/faq.html" userName="zxexz" createdAt="2025/06/01 12:52:37" color="#45d325">}}




{{<matomeQuote body="上で言われてた非決定性の一部は、データがバッチ内のどこにあるかって位置に敏感な形で現れるみたいだよ。" userName="bhickey" createdAt="2025/06/01 13:51:20" color="">}}




{{<matomeQuote body="他の普通のモデルを使った経験だと、コンテキストがいっぱいになってくると品質が落ちるんだよね。バッチの最後の方に入れられると、コンテキストウィンドウがほぼいっぱいの場合、プロンプトに注がれる注意が全体的に減る、みたいな影響ってあるのかな？<br>よく分かんないけど、雰囲気で言ってるだけだよ。" userName="tough" createdAt="2025/06/01 18:11:23" color="">}}




{{<matomeQuote body="アテンションはバッチ処理されないし、特定のユーザーのトークンに対するアテンションの実行時間はコンテキスト全体の長さに依存するんだって。だから、アテンション計算専用のGPUがあったとしても、バッチ処理してるMLP計算用のGPUは一番遅いユーザーを待つ必要があるんだよ。<br>最悪の場合、めちゃくちゃ長いコンテキストウィンドウを持ってる人と1つのアテンション計算GPUを共有してると、その人がGPUのメモリ帯域幅のほとんどを占有しちゃう。たとえ生成するトークン量が同じでもね。<br>つまり分散環境では、モデルとアテンション計算用に専用GPUが必要なだけでなく、いろんなコンテキスト長に合わせて全体の設定を複製して、長いコンテキスト同士、短いコンテキスト同士でバッチを組む必要があるってことだよ。" userName="imtringued" createdAt="2025/06/01 13:46:13" color="#45d325">}}




{{<matomeQuote body="バッチ処理はBatchnormみたいなものでばらつきを生むことがあるけど、ほとんどのTransformerはLayerNormを使ってこの問題を避けてるんだ。" userName="jerpint" createdAt="2025/06/01 11:29:48" color="">}}




{{<matomeQuote body="Batchnormが影響するのは、学習中のバッチ間だけで、推論時には影響しないよ。" userName="amelius" createdAt="2025/06/01 13:44:03" color="#ff5c5c">}}




{{<matomeQuote body="だって、これらのモデルはコンテキストに敏感なんだもん。どのトークンも出力に影響を与える可能性があるんだよ。" userName="Hendrikto" createdAt="2025/06/01 11:13:52" color="">}}




{{<matomeQuote body="でも、自分の出力に関係なくて、他の人の出力に使われるトークンは別でしょ。バッチ内の個別の項目は混ざり合わないよ。SIMDみたいに、各項目に対してモデルが同時に別々に実行されるだけだよ。" userName="immibis" createdAt="2025/06/01 12:37:27" color="#ff5733">}}




{{<matomeQuote body="レイテンシのばらつきについて話してるんだと思うよ。バッチ処理は、バッチサイズに達するまで十分なプロンプトを待つ必要があるから、ばらつきを増やす可能性があるんだ。" userName="simianwords" createdAt="2025/06/01 11:18:49" color="">}}




{{<matomeQuote body="いや、実行するたびに応答が違うって意味だよ。これ見て。<br>https://152334h.github.io/blog/non-determinism-in-gpt-4/" userName="perching_aix" createdAt="2025/06/01 11:22:30" color="#ff5733">}}




{{<matomeQuote body="純粋なランダム性によるばらつきなら分かるけど、他の人が何を実行してるかに基づくばらつきは気になるな。うまく言えないけど。モデルが、他のたくさんの人が全然違う分野で考えてること（例えばChatGPTでニュースを議論してるとか）に基づいて、ある分野の質問に答えるのは嫌だなあ。" userName="exe34" createdAt="2025/06/01 12:51:01" color="#785bff">}}




{{<matomeQuote body="これ、マジであるあるだよね。もっと話題になってないのが不思議なくらい。アテンションのやり方によっても違うみたいで、paged attentionの方が素朴なのよりマシだったよ。" userName="zackangelo" createdAt="2025/06/01 15:51:26" color="">}}




{{<matomeQuote body="まあ、正直人間だって似たようなもんだよ。Aについて聞かれても、つい最近Bを勉強したばっかだと、答えがBに引っ張られちゃうことあるじゃん？" userName="exe34" createdAt="2025/06/01 17:25:58" color="">}}




{{<matomeQuote body="MoEってやり方だと、データが「エキスパート」に分けられるんだけど、どのエキスパートに振り分けられるかは、バッチ内の他のデータとの関係で変わることもあるんだってさ。" userName="empiko" createdAt="2025/06/01 12:56:54" color="">}}




{{<matomeQuote body="これって、もし自分の入力したプロンプトが他の人のと混ざっちゃったら、めちゃくちゃヤバい攻撃方法になりそうじゃん。" userName="VectorLock" createdAt="2025/06/01 12:29:23" color="">}}




{{<matomeQuote body="へー、DeepSeekのあのすごい性能って、やっぱ頭いいエンジニアが最適化しまくった結果って感じなんだ？" userName="taneq" createdAt="2025/06/01 12:58:10" color="">}}




{{<matomeQuote body="簡単に言うとね。<br>高い疎性だと、GPUをちゃんと使うにはめっちゃデカいバッチサイズが必要なんだ。<br>でも、そんなデカいバッチサイズだと、重みとかキャッシュを置くだけで8〜16基のGPUが必要になるけど、それだけだと処理が遅すぎちゃう。<br>だから快適に使うには256基とか、もっとたくさんのGPUが要るんだよ。" userName="DavidSJ" createdAt="2025/06/01 12:02:27" color="#38d3d3">}}




{{<matomeQuote body="俺はH100を16基（2ノード）で動かしてるけど、1リクエストあたり秒速50〜80トークン、全体だと秒速数千トークン出てるよ。TTFTも安定してるし、使えるクラウドサービスより速いんだ。" userName="zxexz" createdAt="2025/06/01 12:41:38" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
