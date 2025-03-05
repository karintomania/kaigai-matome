+++
date = '2025-02-25T00:00:00'
draft = false
title = 'DeepSeekがMoEトレーニングと推論のためのオープンソースライブラリDeepEPを発表！パフォーマンスを極限まで引き上げる最先端技術とは？'
tags = ["AI", "オープンソース", "機械学習", "DeepEP", "MoE"]
featureimage = 'thumbnails/red2.jpg'
+++

> DeepSeekがMoEトレーニングと推論のためのオープンソースライブラリDeepEPを発表！パフォーマンスを極限まで引き上げる最先端技術とは？

引用元：[https://news.ycombinator.com/item?id=43167373](https://news.ycombinator.com/item?id=43167373)

{{<matomeQuote body="性能を極限まで引き出すために、ドキュメント外のPTX命令 ld.global.nc.L1::no_allocate.L2::256B を発見して使ってるんだ。この命令は volatile GPU メモリへの非コヒーレントな読み取りが行われるから未定義の動作につながるけど、Hopper アーキテクチャでの正しさは確認済みで、性能もかなり上がるよ。" userName="mohsen1" createdAt="2025-02-25T06:20:59" color="#785bff">}}

{{<matomeQuote body="実際、NVIDIAが将来的にこのドキュメント外の命令の挙動を微妙に変えたりして、突然使えなくする可能性ってあるの？" userName="k_sze" createdAt="2025-02-25T07:11:48" color="">}}

{{<matomeQuote body="それはあり得るね。だから、それを無効にするスイッチも用意してあるんだ。>もし他のプラットフォームでカーネルが動かない場合は、setup.py に DISABLE_AGGRESSIVE_PTX_INSTRS=1 を追加すれば無効化できるか、問題を報告してくれ。" userName="ammo1662" createdAt="2025-02-25T07:18:11" color="">}}

{{<matomeQuote body="なんだか子供のお菓子屋さんにいるみたい。これらのトリックを正確に逆アセンブルするのは論文に基づくと時間がかかりすぎるから、今週のリリースが MoE を基盤の学術モデルとして使う復興の始まりになるといいな。" userName="pama" createdAt="2025-02-25T03:40:31" color="#ff5c5c">}}

{{<matomeQuote body="もっと具体的に言うと、SOTA モデルの実践と学術モデルの間に何が起きているのか全然わからない。今のところ、実践では全て MoE なんだけど、オープンモデルは DeepSeek V3 や Mixtral を除いて常に密なモデルばかりだし。" userName="antirez" createdAt="2025-02-25T08:07:29" color="">}}

{{<matomeQuote body="MoE は計算量が少なくメモリを多く使うから、小規模な研究所での設定が難しいんだ。" userName="woctordho" createdAt="2025-02-25T10:27:44" color="">}}

{{<matomeQuote body="gpt 4o は gpt-4 の小型版だから MoE じゃないと思ってたんだけど、それについては聞いたことないんだよね。" userName="kristianp" createdAt="2025-02-25T20:46:18" color="">}}

{{<matomeQuote body="この人たちを応援したくなるね、みんなのためにオープンソースの最前線を押し進めてくれてありがとう。" userName="ofou" createdAt="2025-02-25T03:02:15" color="#45d325">}}

{{<matomeQuote body="Open AI™（スペースあり）" userName="grg0" createdAt="2025-02-25T03:09:52" color="">}}

{{<matomeQuote body="OpenAIにはオープンさが全くないって笑える。その計画は最初からだったんだ。Ilya Sutskver のメールによると、OpenAIは常にすべての研究とコードを独占情報として保持するつもりだったんだ。オープンは利益を共有することを意味していた。つまり、彼らは基本的に無料プランのあるSaaSになってしまった。" userName="InkCanon" createdAt="2025-02-25T14:56:39" color="">}}

{{<matomeQuote body="Muskは、彼らが利益を求めているのは非営利団体のふりをしているからだと指摘したのが正しいと思う。彼が言うのも有り得るし、誰が嘘をついているのか分かるからだ。Muskは自分がOpenAIから外されたことに腹を立てているのが明らかで、AIモデルの安全な使用についての理想からではない。" userName="danans" createdAt="2025-02-25T15:37:49" color="#38d3d3">}}

{{<matomeQuote body="DeepSeekの方がChatGPTよりオープンなことはなんか皮肉だね。" userName="hackit2" createdAt="2025-02-25T03:47:03" color="">}}

{{<matomeQuote body="OpenAIはただ嘘をついているし、全くオープンじゃないし、人類に対してどうでもいいって感じだね。" userName="gostsamo" createdAt="2025-02-25T04:03:40" color="#ff5c5c">}}

{{<matomeQuote body="こういうシナリオが実現したら面白いね。OpenAIは利益を追求しつつ人類のために始まったけど、最終的には金を優先させてDeepSeekが登場する。DeepSeekが人類のためにオープンソースでやることで、OpenAIの評価が下がるっていう結末も面白いかも。" userName="WiSaGaN" createdAt="2025-02-25T09:04:59" color="#ff5733">}}

{{<matomeQuote body="正直言うと傍観者だけど、シナリオの最初の部分はすでに起こっているような気がする." userName="ghfhghg" createdAt="2025-02-25T10:35:53" color="">}}

{{<matomeQuote body="他の誰かが自分たちよりも世界を良くする世界には住みたくない。" userName="yieldcrv" createdAt="2025-02-25T12:22:06" color="">}}

{{<matomeQuote body="OpenAyyyy、絶対にそろそろオープンにするって言ってるよ。良いことのためとか言われるけど、ほんとにそうなのかな？" userName="chefandy" createdAt="2025-02-25T05:44:42" color="">}}

{{<matomeQuote body="彼らは素晴らしい無料ツールを提供してくれるけど、それが全てで、多分その裏には何かしらの意図があるんだろうね。" userName="amelius" createdAt="2025-02-25T09:43:05" color="">}}

{{<matomeQuote body="DeepSeekがChatGPTよりオープンと言うのは全然皮肉じゃないよ。OpenAIに騙されてただけだし、ナイーブだったってことだ。" userName="ur-whale" createdAt="2025-02-25T12:43:10" color="">}}

{{<matomeQuote body="みんなはOpenAIがダメでDeepSeekが救世主みたいに言ってるけど、OpenAIの論文やコードが数年前にAI革命を始めたことを忘れないで。DeepSeekが何をするか、同じくらいの時間待ってみようよ。" userName="azinman2" createdAt="2025-02-25T06:15:01" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="革命を引き起こした論文はGoogleから出たんじゃないの？" userName="gertop" createdAt="2025-02-25T07:06:00" color="">}}

{{<matomeQuote body="確かに、あの論文は文字列の翻訳技術の向上についてだった。言語の改善が技術の基盤だったんだ。でも、誰かがパロットがZIPやJPEGを学んでハザードな記憶を返すことに気付いたんだよな。OpenAIがリリースした中で唯一役立つのはWhisperだったけど、もっとオープンにしてくれてもよかったな。" userName="larodi" createdAt="2025-02-25T07:40:17" color="#38d3d3">}}

{{<matomeQuote body="ヒントンだな。彼に聞いたらSchmidthuberだろうけど。" userName="jeffreygoesto" createdAt="2025-02-25T07:14:04" color="">}}

{{<matomeQuote body="これ読んでるならSam Altmanへ：OpenAIをオープンにしろ。さもないと、エコシステムに負けるぞ。" userName="echelon" createdAt="2025-02-25T04:13:20" color="">}}

{{<matomeQuote body="もう遅い。OpenAIからの革新はなくなったし、ドライバーだった人たちがAnthropicや他のところに移った。彼らは大きな資金を持っていて、先行していたのに、結局失ったんだ。" userName="ta988" createdAt="2025-02-25T06:32:09" color="#ff5733">}}

{{<matomeQuote body="＞これ読んでるならSam Altmanへ<br>彼が読んでたら困るわ。今の彼には思いっきり落ちることがふさわしい。" userName="ur-whale" createdAt="2025-02-25T12:45:53" color="">}}

{{<matomeQuote body="無理な話だな。Samは資本家階級の頂点で、純粋なビジネスマンだ。利益がなきゃ無償で提供する気はないし、人類のことなんて考えてない。彼は世界を変えるふりをしてるだけで、実際は大きなブレイクスルーがなければ会社は困難に直面することを知ってる。愚痴が多くて申し訳ないけど、この科学をグリフトに変えた彼へのリスペクトはあまりないな。" userName="alpb" createdAt="2025-02-25T06:32:39" color="#45d325">}}

{{<matomeQuote body="彼らの最新の音声認識モデルWhisperは、無料でオープンウェイトが配布されてるよ。" userName="anticensor" createdAt="2025-02-25T10:35:43" color="#785bff">}}

{{<matomeQuote body="戦略的に、彼らはエッジで動作させる必要があることを知っていて、ユーザーが遅延なくAPIにリクエストを送ることを望んでるみたいだ。それは確かに評価されるべきポイントだし、これが唯一の貢献じゃない。" userName="echelon" createdAt="2025-02-25T14:36:17" color="">}}

{{<matomeQuote body="彼らは、信頼できるコンピューティング専用のモデルとして、プロプライエタリな暗号化と高額なライセンスキーを使って配布することもできたんだよ。" userName="anticensor" createdAt="2025-02-25T20:08:28" color="">}}

{{<matomeQuote body="サムは新しい子供に忙しいみたいだね" userName="sciencesama" createdAt="2025-02-25T06:16:55" color="">}}

{{<matomeQuote body="これって本当にオープンソースじゃないよ。本当にオープンソースのモデルを探すなら、AI2のOLMo 2を見てみて。<br>全ての必要なものを共有してるし、データも含めてモデルを再現するための全てを教えてくれる。以下のリンクに書いてある通りだよ：>『完全なオープンサイエンスにはオープンな重みだけじゃなくて、私たちはすべてのOLMoのアップデートを共有することに興奮しています–重み、データ、コード、レシピ、中間チェックポイント、指示調整済みモデルを含めて、より広い言語モデルコミュニティと！』" userName="blackeyeblitzar" createdAt="2025-02-25T16:48:35" color="#38d3d3">}}

{{<matomeQuote body="ザッカーバーグは、メタがAIのオープンソース化を主張するのをやめるべきだね。重みだけを公開して、コードは公開していないのに、テレビ広告まで出してるんだから。ほんとにDeepSeekだけが真のOSS AIだよ。" userName="breadwinner" createdAt="2025-02-25T13:08:28" color="#785bff">}}

{{<matomeQuote body="技術的にはDeepSeekもOLMoやOpen Euroほどオープンではなくて、データを開示してないからね。" userName="lithiumii" createdAt="2025-02-25T13:50:52" color="">}}

{{<matomeQuote body="まだ道のりは3分の2だね。必要なのは：<br>1. プレトレーニング用のオープンデータセットと、それをラベル付けして維持するためのツール<br>2. オープンモデル、トレーニング、インフェレンスのコード。できればそのアプローチや結果を理解するための研究論文も<br>3. オープンなプレトレーニングされた基盤モデルの重み、ファインチューニングなど<br>オープンAI＝データ＋コード＋論文＋重みだよ。" userName="echelon" createdAt="2025-02-25T14:41:00" color="#785bff">}}

{{<matomeQuote body="データを開示するのは訴訟の招待だよ。だからオープンソースに熱心な人も躊躇してる。人々がモデルをトレーニングしてデータを生成するのも、そのためなんだ。元のデータセットを共有するのはほぼ不可能だし、違法なものや恥ずかしいものが含まれていないかを確認するのも大変だしね。" userName="buyucu" createdAt="2025-02-25T17:06:51" color="#ff5733">}}

{{<matomeQuote body="AIに任せるべき仕事だね。" userName="johnla" createdAt="2025-02-25T18:30:25" color="">}}

{{<matomeQuote body="その理由は理解できるし、将来的に『データを提供できないなら、これ以上の料金は取れない』っていう法律ができることを願ってる。要するに、LLMのプロデューサーは、商品として扱わざるを得ず、計算リソースと少しのオーバーヘッドだけで価格が決まるということだよ。" userName="sdesol" createdAt="2025-02-25T17:52:54" color="">}}

{{<matomeQuote body="理解できる理由だね。" userName="tway223" createdAt="2025-02-25T14:14:36" color="">}}

{{<matomeQuote body="それは著作権侵害の素材や様々な利用規約違反の素材だよ。私の理解では、Anna's ArchiveにあるものやOpenAIのChatGPTや他のLLMへのクエリからの『人工的』なトレーニングデータのことだね。" userName="chvid" createdAt="2025-02-25T19:18:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="DeepSeekは本物のOSSじゃないって。オープンソースになるには、OSIがリストしてる本物のオープンソースライセンス使わなきゃダメだし、すべてのトレーニング前後のコードやチューニング関連、評価コード、安全性や検閲などに関するすべてを共有しなきゃいけない。そうしないと、重みを再現できないし、重みを共有するのはコンパイル済みのプログラムを共有するのと同じ。AI2のOLMo 2モデルが競争力のある本当のオープンソースモデルだと思うよ。最近はオープンソースのアプリもリリースして、デバイス上でのインフェレンスができるようになったし、Tülu 3ってモデルはDeepSeek V3を上回ってる。" userName="blackeyeblitzar" createdAt="2025-02-25T16:47:18" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、トレーニングのソースコードを出すのは、コンパイラのソースコードを出すのと同じだよ。仮にGCCを修正して、そのソースコードと一緒にバイナリをリリースしても、それがオープンソースだって主張するのはおかしい。トレーニングデータのリリースはすごく難しいし、その権利やライセンスも複雑だから、リリースするメリットも不明だよ。" userName="startupsfail" createdAt="2025-02-25T17:01:59" color="#45d325">}}

{{<matomeQuote body="Metaは10年以上もPyTorchを改良してきたんだから、LLMをトレーニングするために必要なものは一通り揃ってるよ。Metaのインフラ特有のコードが必要なのか？" userName="duchenne" createdAt="2025-02-25T16:00:33" color="">}}

{{<matomeQuote body="PyTorchはカウントされる？" userName="prjkt" createdAt="2025-02-25T15:35:11" color="">}}

{{<matomeQuote body="PyTorchは「最初にマシなもの」を持ってたから、今は完全に支配的な市場シェアを持ってるけど、他の良い選択肢が出てこないのは困る。macOSでは代わりの人気ある選択肢もあるけど、例えば2025年にネイティブの高性能量子化サポートがないDLフレームワークに興奮するのは難しいよ。FSDPもちゃんとしたものじゃないし、使いやすさが最大の重点とは言うけど、こういう問題は大きな使い勝手の欠陥だと思う。市場シェアを奪う必要がないから、何年も改善が見られないだろうね。" userName="ein0p" createdAt="2025-02-25T23:06:35" color="">}}

{{<matomeQuote body="Metaはどんな風にモデルをトレーニングしてるのかな？バニラのPyTorchを使ってるのか、それとも閉じたツールやフレームワークを使ってるのか気になる。" userName="numba888" createdAt="2025-02-28T08:41:54" color="">}}

{{<matomeQuote body="オープンウェイト＝バイナリーブLOBってことだね。これはFREEWARE/SHAREWAREモデルに戻るみたい。オープンな重みについてはそういう言い方をしよう。" userName="echelon" createdAt="2025-02-25T14:38:53" color="">}}

{{<matomeQuote body="- 効率的で最適化されたオールトゥーオール通信<br>- ノード内およびノード間のNVLinkとRDMAのサポート<br>- トレーニングと推論のための高スループットカーネル<br>- 推論デコーディングのための低遅延カーネル<br>- ネイティブFP8ディスパッチサポート<br>- 計算と通信の重ね合わせのための柔軟なGPUリソース制御<br>X:<br>https://x.com/deepseek_ai/status/1894211757604049133" userName="helloericsf" createdAt="2025-02-25T02:27:52" color="">}}

{{<matomeQuote body="DeepSeekの取り組みの動機が間違っているかもしれない（アメリカのAIの先行優位性を縮小するための国家主導の試みみたいな）のは事実だけど、地球上の全員にとっての結果は素晴らしいよ。最悪のケースでも、DeepSeekには感謝しなきゃ。彼らはOpenAIが何年も世界に嘘をついてきたことを実際にやってるんだから。すごい。" userName="ur-whale" createdAt="2025-02-25T12:51:38" color="#785bff">}}

{{<matomeQuote body="＞DeepSeekの取り組みの動機が間違っているかもしれない（アメリカのAIの先行優位性を縮小するための国家主導の試みみたいな）<br>国際関係の分野では、正しいとか間違っているという概念はあまり当てはまらないよ。これをオープンソースにすることが、高性能なNvidia GPUの輸出禁止と同じくらい「間違っている」ことなのかは不明。DeepSeekのオープンソースは（おそらくCCPの同意のもとに）CCPと広範なオープンソースAIコミュニティにとって良いことで、彼らの立場が原則的なものだとは思わない方が良い。競争優位性を奪う方法を見つけるのは、すべての政府の重要な活動だしね。" userName="danans" createdAt="2025-02-25T15:45:24" color="#45d325">}}

{{<matomeQuote body="CCPは二ヶ月前よりはあまり非難されてないみたいだね。偽の民主主義と本物の独裁を比べるのって面白いよね。" userName="jimmydoe" createdAt="2025-02-25T18:44:07" color="">}}

{{<matomeQuote body="真の”Open AI™”企業からのオープンソースリリースの第2弾だ。MITライセンスのもとで、DeepSeekは1570億ドル以上の企業が”オープン”を名乗るよりもオープンだぜ。MetaのLlamaについてはほとんど話題になってなくて、みんなLlama 4が推論機能付きで出ることを期待してる。真ん中でゼロ競争に押し込められないことが目標だ。" userName="rvz" createdAt="2025-02-25T04:25:24" color="#45d325">}}

{{<matomeQuote body="https://www.llama.com/events/llamacon/signup/" userName="swyx" createdAt="2025-02-25T05:07:59" color="">}}

{{<matomeQuote body="アメリカがDeepSeekがH800しか使ってないか確認するためにシンガポールでGPUの領収書を追いかけてる間、他の国はこれらの最適化をH100で実行できるの？アメリカの制裁でH100が難しく取得できると信じ込むのはおかしいかな？合ってるの？" userName="yieldcrv" createdAt="2025-02-25T12:25:24" color="">}}

{{<matomeQuote body="今回期待されていたPTXは含まれてるの？" userName="deyiao" createdAt="2025-02-25T04:01:53" color="">}}

{{<matomeQuote body="うん、csrc/kernelsのディレクトリにあるよ。’asm’を検索すれば使われてるのが見つかる。" userName="find0x90" createdAt="2025-02-25T04:27:53" color="">}}

{{<matomeQuote body="＞みんなが期待してたPTX<br>これがそんなに重要な理由を教えてほしいな。" userName="swyx" createdAt="2025-02-25T05:07:23" color="">}}

{{<matomeQuote body="Parallel Thread Executionだよ。NvidiaのGPU用のオペコードみたいなもので、CPUの従来のオペコードよりも少し複雑なんだ。キャッシュのパラメータやメモリバリアを指定できるから、色々な組み合わせを試すことで新しい効果を見つけることができるよ。DeepSeekで使われてるld.global.nc.L1::no_allocate.L2::256Bなんかは大きな加速を提供しながらも信頼性があるんだ。ただ、全てのアーキテクチャで動くわけじゃないから無効化する方法も用意されてる。" userName="ta988" createdAt="2025-02-25T06:42:21" color="#45d325">}}

{{<matomeQuote body="SASSがどう訳されるか気になる。彼らはHopperのためのSASSアセンブラを持ってるのかな？" userName="rfoo" createdAt="2025-02-25T07:56:22" color="">}}

{{<matomeQuote body="ここではptxasを見てるんだ。ちなみに、私のマシンではLDG.E.NA.LTC256B.U8.CONSTANTが生成されるみたいだ。" userName="saagarjha" createdAt="2025-02-25T10:36:45" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="CPUには似たような命令があるよね。" userName="saagarjha" createdAt="2025-02-25T10:08:09" color="">}}

{{<matomeQuote body="DeepSeekの注目度は、彼らのトレーニングと推論コストが異常に低いからで、PTXを使ったオプティマイゼーションが効いてるみたい。他の人たちもその使い方に興味津々だね。" userName="find0x90" createdAt="2025-02-25T05:49:48" color="#45d325">}}

{{<matomeQuote body="あの頃のアセンブリハックみたいで面白いけど、結局はコンパイラかGPUが進化すればこういうトリックもあまり意味がなくなるんだろうな、今のCPUみたいに。" userName="wbsun" createdAt="2025-02-27T05:03:31" color="">}}

{{<matomeQuote body="技術報告で話してたPTX命令がこれに繋がるのかな？" userName="Bimos" createdAt="2025-02-25T02:44:33" color="">}}

{{<matomeQuote body="極限のパフォーマンスを目指して、行動外・文書外のPTX命令を使ってるみたい。ただし、定義されてない動作になるから注意が必要だね。Hopperアーキテクチャでの正しさは確認済みとのこと。" userName="zardinality" createdAt="2025-02-25T04:32:22" color="#ff5c5c">}}

{{<matomeQuote body="非コヒーレントってキャッシュの一貫性を無視すること？それともL1ラッシュを防ぐためにL2だけを使うってこと？" userName="magicalhippo" createdAt="2025-02-25T06:25:04" color="">}}

{{<matomeQuote body="L2部分の理解は、256bのプリフェッチを求めてるみたいで、でも最大で4つの32ビット整数を使うから256バイトだけで十分なのか疑問。" userName="ta988" createdAt="2025-02-25T06:55:36" color="">}}

{{<matomeQuote body="そういうことだね。" userName="saagarjha" createdAt="2025-02-25T11:36:12" color="">}}

{{<matomeQuote body="これが役立つかもね：<br>https://x.com/main_horse/status/1894215779521794058/photo/1" userName="helloericsf" createdAt="2025-02-25T02:56:34" color="">}}

{{<matomeQuote body="春の雨が花を運んでくれるよ！" userName="kennyloginz" createdAt="2025-02-25T07:56:31" color="">}}

{{<matomeQuote body="今、超期待のPTXが追加されたみたい！もちろん、内容はよく分からないけど、もうスターとフォークボタンを押しちゃったし、これで自分も達人になったってことだよね？今、とてもパワフルな気分だよ…" userName="deyiao" createdAt="2025-02-25T05:41:58" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
