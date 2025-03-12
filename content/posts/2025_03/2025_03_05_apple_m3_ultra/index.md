+++
date = '2025-03-05T00:00:00'
draft = false
title = 'AppleがM3 Ultraを発表！512GBの統一メモリがもたらす革新とは？'
tags = ["Apple", "M3 Ultra", "AI", "テクノロジー", "ハードウェア"]
featureimage = 'thumbnails/purple6.jpg'
+++

> AppleがM3 Ultraを発表！512GBの統一メモリがもたらす革新とは？

引用元：[https://news.ycombinator.com/item?id=43266453](https://news.ycombinator.com/item?id=43266453)

{{<matomeQuote body="512GBのユニファイドメモリは本当に新しい地平を切り開いたよね。Appleがメモリの制約を克服するのを待ってたけど、まさか半テラバイトのユニファイドメモリが見られるとは。この効率的なメモリを一つのチップに統合するアプローチは、NVIDIAのソリューションと比べても魅力的だね。だけど、二つのM3 Maxチップの融合設計は、熱放散や消費電力にどう影響するのか気になるな。" userName="cxie" createdAt="2025-03-05T15:28:19" color="#ff33a1">}}

{{<matomeQuote body="メモリ帯域幅は増えていないみたいだね。M2 Studioで得られるのと同じ帯域幅のまま。確かに、512GBのユニファイドRAMを1万ドルで手に入れることはできるけど、そんなスケールで実用的なパフォーマンスが得られるのか疑問だな。十分なユニファイドRAMがあっても、帯域幅が同じなら限界があると思う。メモリ帯域とメモリプールのサイズ、処理能力の関係に何らかのバランスが必要だね。" userName="FloatArtifact" createdAt="2025-03-05T15:51:17" color="">}}

{{<matomeQuote body="まだ誰もあなたの質問に答えてないみたいだけど、実用的なパフォーマンスは得られると思うよ。DeepSeek-R1のQ4_K_M GGUFは404GBだから、テキスト生成で20〜30トークン/秒を期待してる。ただ、M3 UltraのTFLOPsはまだ相対的に低く（約43 FP16 TFLOPs？）、bs=1のトークン生成を処理するには十分だろうけど、プリフェッチやプロンプト処理速度はまた別の話だね。" userName="lhl" createdAt="2025-03-05T18:54:55" color="#ff5733">}}

{{<matomeQuote body="実は、このM3 UltraはDeepSeek R1 4ビット向けに特別に設計されたと思う。プレスリリースでも600BクラスのLLMでテストしたと強調しているし、256GB RAMで止めることなく進めたのは明らかだ。ちょっと読みすぎかもしれないけど。" userName="lynguist" createdAt="2025-03-05T23:07:48" color="">}}

{{<matomeQuote body="DeepSeekとは全く関係ないし、ローカルLLMもすでに存在していたし、元々のLlamaリリースとllama.cppの影響もあったからね。実際、Intel時代のMac Proでは1.5TBのRAMに対応していたんだし、顧客の期待に応えるためにこういう製品を出さなきゃいけなかったはず。ローカルLLMはおまけみたいなもので、DeepSeekが関係しているとは思えないよ。" userName="tgma" createdAt="2025-03-06T06:02:47" color="">}}

{{<matomeQuote body="ここでみんなが興奮しているのは、GPUがアドレスできるユニファイドメモリだよね。以前のMac Proは独立したGPUに自分専用のメモリがあったわけで。" userName="saagarjha" createdAt="2025-03-06T07:15:29" color="">}}

{{<matomeQuote body="＞彼らは特にこのM3 UltraをDeepSeek R1 4ビット向けに作ったはずだよね。<br>出たのは1月中旬だっけ？だから、Appleがここ45日で新しいチップを作るなんてあり得ないよ。" userName="happyopossum" createdAt="2025-03-06T16:30:10" color="">}}

{{<matomeQuote body="DeepSeekに関連するとは思わないけど、もしこの製品が何か関連があると思っているなら、ハードウェアのタイムラインを理解していないんじゃないかな。" userName="forrestthewoods" createdAt="2025-03-05T23:52:54" color="">}}

{{<matomeQuote body="チップ？そうだね。製品？必ずしもそうではないかも。512GB版のM3 UltraはApple内部のサーバー向けに作られた可能性もあるけど、消費者向けには特に意図されていないかもね。まったくないとは言わないけど。" userName="reitzensteinm" createdAt="2025-03-06T05:23:55" color="">}}

{{<matomeQuote body="4ビット量子化モデルを動かすために1万ドルかかるのは痛いね。" userName="nightski" createdAt="2025-03-06T04:00:12" color="">}}

{{<matomeQuote body="深層学習モデルにおいて、deepseekみたいな専門家のミキシングが役立ってるんじゃない？VRAMに全ての重みがあるから、一度ロードすれば再ロードする必要がないってことさ。メモリ帯域幅の使用量は37Bのアクティブパラメータに限られるはず。" userName="valine" createdAt="2025-03-05T16:26:21" color="#38d3d3">}}

{{<matomeQuote body="＞”メモリ帯域幅の使用量は37Bのアクティブパラメータに限られる。”この引用について詳しく教えてくれないか？全モデルをRAMにロードすることで応答時間が良くなるのは理解できるけど、メモリ帯域幅とアクティブパラメータがどう関係するのかが分からない。コンテキストウィンドウ？メモリに全ロードしてても、どれだけアクティブに処理できるかは帯域幅に依存するのか？" userName="FloatArtifact" createdAt="2025-03-05T16:32:43" color="">}}

{{<matomeQuote body="専門家モデルだと、出力を計算するために必要な重みの一部だけをメモリから読み込めば良いんだ。隠れ次元も通常小さいから、メモリに書き込むテンソルのサイズも減るんだ。" userName="valine" createdAt="2025-03-05T16:41:09" color="#45d325">}}

{{<matomeQuote body="実際に関わったことがない人が気づかないのは、バッチサイズが1、シーケンスサイズが1の時だけが有効という点。プロンプトを処理するためには全ての重みを読み込まなきゃいけないし、これは問題じゃないけど、劣悪な機械だと計算にかかる待ち時間が問題になる。バッチサイズが1以上の推論や、1以上のシーケンスサイズだと、モデル全体を何度も読み込む必要が出てくるかもしれない。MoEは有利だけど、実際には複雑なニュアンスが多いんだよ。" userName="ein0p" createdAt="2025-03-05T17:38:01" color="#ff5733">}}

{{<matomeQuote body="確かに、そういうニュアンスもあるよね。Appleがすごい金を稼いでるのは、こんなカンジの妄想を人々が作り上げるからだと思う。10,000ドル使って買うこと自体が経験の一部だから、400b+パラメータのニューラルネットワークを動かす解決策を求める人より、買うこと自体のワクワクを求める人の方が多い。AppleはサーバーよりもBirkinバッグに近い。" userName="doctorpangloss" createdAt="2025-03-05T17:49:42" color="">}}

{{<matomeQuote body="Birkinバッグは価値が上がるけど、こっちはLexusみたいなもんだ。よく作られた高級品で、比較的緩やかに価値が下がると思う。" userName="jonfromsf" createdAt="2025-03-05T23:53:11" color="">}}

{{<matomeQuote body="＞”問題はLLMがその規模で実用的なパフォーマンスで動くのか？”これが大きな疑問だ。多くの人はAppleがMLワークステーションとして使えると主張してるが、ベンチマークの数字を見る限り、モデルはメモリに収まるけど、トークン/secのパフォーマンスはすごく遅くて、NVIDIAハードウェアで運用するのに比べてあまり得るものがないように感じる。NVIDIAの512GBのVRAMを手に入れるのは高いけど、Appleのこういう動きで価格が少しでも下がってくれたらいいな。" userName="diggan" createdAt="2025-03-05T16:33:15" color="#785bff">}}

{{<matomeQuote body="NVIDIAよりも遅いけど、個人的なLLMのシナリオでは十分使えるよ。あんまり速くなくても、大体はプライバシーのためにローカルで推論する手頃な選択肢だから、サーバーよりも遅くはないと思うよ。" userName="johnmaguire" createdAt="2025-03-05T16:50:53" color="">}}

{{<matomeQuote body="Mac mini M4 MaxでのAIサービスの月額をキャンセルするには十分な速度だよ。" userName="bastardoperator" createdAt="2025-03-05T17:43:02" color="">}}

{{<matomeQuote body="”ユニファイドメモリ”って、CRAYが昔からグローバルヒープを持ってたのに新しいと思ってる人が面白いよね。" userName="samstave" createdAt="2025-03-05T19:53:31" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="最近のPCでは、こういうのが新しいんだね。" userName="hot_gril" createdAt="2025-03-05T22:05:44" color="">}}

{{<matomeQuote body="どうしてここまで時間がかかったんだろうね？" userName="ddtaylor" createdAt="2025-03-05T20:02:59" color="">}}

{{<matomeQuote body="いくつかの理由が考えられるね。<br>1. 最近までRAMの量はユーザーが設定するものだったから、市場の需要が少なかった。<br>2. 大きなシステムをチップやチップレットで作るのは技術的に難しかった。<br>3. RAMの速度はほとんどの作業においてボトルネックではなかった。" userName="RachelF" createdAt="2025-03-05T21:41:10" color="#45d325">}}

{{<matomeQuote body="M1はLLMの流行前に出たけどね。" userName="hot_gril" createdAt="2025-03-05T22:08:10" color="">}}

{{<matomeQuote body="基本モデルが通常のプロダクション機向けに96GBからスタートするのは大きいね。でも512GBモデルで4000ドル追加はちょっと高すぎる気がする。ストレージもそれに見合うべきなのに、1TBからスタートするのが意味不明だよ。" userName="TheRealPomax" createdAt="2025-03-05T17:39:27" color="">}}

{{<matomeQuote body="512GBをx86サーバーボードで手に入れるのに4倍かかるんだね。" userName="dheera" createdAt="2025-03-05T16:23:29" color="">}}

{{<matomeQuote body="Nvidiaカードで512GBのVRAMを得るにはどれくらいかかるんだろうか？" userName="valine" createdAt="2025-03-05T16:27:59" color="">}}

{{<matomeQuote body="これは比較にならないよ。NVIDIAのカードは計算パワーが桁違いだし、M3 UltraはXeonやEpyc/Threadripperのサーバーボードに近い性能だ。ローカルのLLM推論には良いけど、トレーニングには向いてないかもね。" userName="dheera" createdAt="2025-03-05T16:35:14" color="#ff5733">}}

{{<matomeQuote body="そうだね、比較にならないけど、時にはどちらかが欲しくなることもあるから良いんじゃないかな。多くの異なるニーズがあるし、新しい選択肢ができたことに感謝だよ。<br>記載ミスもあったけど、512GBは半テラバイトだよ。" userName="LeifCarrotson" createdAt="2025-03-05T17:15:49" color="">}}

{{<matomeQuote body="x86マシンでDeepSeek R1を512GBのVRAMで動かすのに約2500ドルってできるんだな。" userName="smith7018" createdAt="2025-03-05T16:26:13" color="">}}

{{<matomeQuote body="このセットとM3 Maxのトークン数を比べるとどうなるの？" userName="hbbio" createdAt="2025-03-05T17:07:58" color="">}}

{{<matomeQuote body="$2,000のAMD Epyc構成で3.5〜4.5トークン／秒。Deepseek 671b q4は帯域幅と計算が制約されてるね。M3 Ultra 512GBだと約40トークン／秒って計算したよ。" userName="aurareturn" createdAt="2025-03-05T18:06:51" color="#ff33a1">}}

{{<matomeQuote body="Deepseek 671bで40トークン／秒を出すには、どんなNvidia rigが必要で、いくらかかるの？" userName="sgt" createdAt="2025-03-05T18:37:39" color="">}}

{{<matomeQuote body="約5xのNvidia A100 80GBが671b Q4で使えるよ。GPUだけで$50kかかるし、冷却や電源、マザーボード、CPU、RAMなどを含めるともっとかかるだろうね。" userName="aurareturn" createdAt="2025-03-05T18:56:57" color="#785bff">}}

{{<matomeQuote body="価格は思ったほどひどくはないよ。96〜256GBが1500ドルで、決して安くはないけど、悪化もしていない。5500ドルで256GBメモリ、28コア、60 GPUコア、10GbネットワークのUltraが手に入るんだから、他のサーバーをそれ以下で作るのは難しいと思うよ。" userName="matt-p" createdAt="2025-03-05T17:18:38" color="#ff5c5c">}}

{{<matomeQuote body="5500ドルあればCPUコアやGPUがもっとパワフルなものが揃えられるし、9930xと5090（実際に在庫があれば）を合わせても約3000ドルで済むだから、残りの2500ドルでRAMやストレージ、ネットワークが用意できるよ。M3はAI用途に必要なRAMと、他には無いけど遅めのGPUの特異なバランスを提供してるけど、他の作業には高すぎるかも。" userName="kllrnohj" createdAt="2025-03-05T18:05:04" color="">}}

{{<matomeQuote body="企業向け市場では、これは基準みたいなもんだね。データセンターの顧客は、高帯域幅オプションが無いからこのリリースを無視するかもしれない。" userName="bigyabai" createdAt="2025-03-05T15:32:31" color="">}}

{{<matomeQuote body="Mac Studioはそもそもデータセンター向けじゃないって。小さい静かなデスクトップフォーマットで、ラックに置くには反対のデザインだしね。昔、AppleはXserveっていうラックマウントサーバーを持ってたけど、AI時代向けにそれを更新するつもりはなさそうだね。" userName="pavlov" createdAt="2025-03-05T15:34:54" color="">}}

{{<matomeQuote body="Ultraチップ、ラックマウントのMac Proにも使われてるやつだから、ターゲットははっきりしてると思うけど。＞”AI時代に向けて新しいものを更新するつもりはない。”" userName="bigyabai" createdAt="2025-03-05T15:36:21" color="">}}

{{<matomeQuote body="Thunderbolt 5インターコネクト（80Gbps）を使えば、4台か5台のMac StudioでLLMを分散させて運用できるよ。" userName="spiderfarmer" createdAt="2025-03-05T15:38:59" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Whoa。M3じゃなくてM4か。これって基本的にビニングな気がするけど、M1チップの時のインターポーザが使えなかったって聞いたことがある。512GBのユニファイドRAMがNPUにアクセスできるのはゲームチェンジャーだね。Appleがこのチップを内部AI用に開発して、他の人にも使えるように公開したのかも。2Uラック形式があればいいな。今はOSがハードウェアを制限してると思う。" userName="InTheArena" createdAt="2025-03-05T14:28:07" color="#ff33a1">}}

{{<matomeQuote body="もしAppleがLinuxをネイティブにサポートして、M4プロをラックできたら、絶対に使うのにな。CPUは速度やメモリ帯域幅で競争相手がいないのに、他の会社が競えるArmサーバーチップを作れないのが驚き。" userName="exabrial" createdAt="2025-03-05T15:22:30" color="#38d3d3">}}

{{<matomeQuote body="前にチェックした時は、AMDがハイエンドではAppleのパフォーマンス／ドルを上回ってた。ただ、TDPが重なってる部分ではパフォーマンス／ワットは近いみたい。これが変わるのか興味深い。それだけじゃなくて、AMDもユニファイドRAMに力を入れてるみたい。これに1:1で競えるSoCを持っているのか気になる。" userName="hedora" createdAt="2025-03-05T15:47:38" color="">}}

{{<matomeQuote body="M4 ProはAMDの新しいStrix Haloに対してSTパフォーマンスが56%速く、3.6倍効率的。出典：<br>https://www.notebookcheck.net/AMD-Ryzen-AI-Max-395-Analysis-...<br>Cinebench 2024の結果。" userName="aurareturn" createdAt="2025-03-05T15:54:39" color="">}}

{{<matomeQuote body="それはノートパソコン用のパーツだから、違うトレードオフがあるよね。どこかにTDP対パフォーマンスのプロットがあったと思うけど、AppleとAMDのパーツはパレート最適区域にいて、Appleは低TDP、AMDは高TDPを持ってて、真ん中で競ってる。データセンターのARMも含まれてるのがあるのかもだけど、見たことない。" userName="hedora" createdAt="2025-03-05T16:11:32" color="">}}

{{<matomeQuote body="高TDP？サーバーグレードのCPUのこと？Appleはそんなの作ってないよ。" userName="aurareturn" createdAt="2025-03-05T16:19:53" color="">}}

{{<matomeQuote body="＞サーバーグレードのCPUのこと？Appleはそんなの作ってない。<br>そうだね。サーバー対応のCPUとして使う話をしてるから、スレッドで出てるみたい。前から、コメントする人がいて、'これが最高のチップだ、全部これに替えたい'って言われて。で、誰かがパフォーマンス／ワットがパフォーマンスじゃないって指摘して、また別の人が別のMシリーズがランダムCPUより速いって言って、また別の人がそのランダムCPUはトップパフォーマンスじゃないって指摘するよね。結局、Mシリーズは性能／ワットの最適化されていて、そうじゃなかったらやばいんだ。私のMacBookは大好きだし、Mシリーズは特に設計されたケースなら競争相手がいない。だから今は、こういう長いスレッドを再hashするのは飛ばしたいな。素晴らしいチップだけど、最速ではない。モバイルデバイスには性能／ワットが重要。基本的なエンジニアリングのトレードオフがあって、すごさは速いプロセッサの存在を意味する。" userName="refulgentis" createdAt="2025-03-05T17:45:59" color="">}}

{{<matomeQuote body="素晴らしいチップだと思う。最速ではないけど、" userName="aurareturn" createdAt="2025-03-05T17:55:52" color="">}}

{{<matomeQuote body="ちょっとここで何が起きてるのか分からないけど、前の方ではあなたは明確だったよね。＞AppleはそんなサーバーグレードのCPUは作ってない。" userName="refulgentis" createdAt="2025-03-05T18:00:44" color="">}}

{{<matomeQuote body="その通り。でも、M4ラインは世界で最も速いシングルスレッドパフォーマンスを持ってる。" userName="aurareturn" createdAt="2025-03-05T18:18:55" color="#785bff">}}

{{<matomeQuote body="どこ情報なの？Passmarkでは逆みたいだよ。最速のIntel CPUはこのテストでシングルスレッドとマルチスレッドのスコアが高いってよ。" userName="nameequalsmain" createdAt="2025-03-05T19:08:03" color="">}}

{{<matomeQuote body="これを読む限り、AMZNのr8g.48xlargeは192コアで1536GB搭載してて、M3 Ultraを上回る部分もあるみたい。昔、68kやSPARCのSunマシンの頃を思い出すな。Linuxが出て386がすべてを圧倒したのと同じことが今も起こってるのかも。" userName="PaulHoule" createdAt="2025-03-05T16:00:05" color="">}}

{{<matomeQuote body="サービスのしやすさはどうなの？SSDが基盤にハンダ付けされてるなら、サーバー用途には問題かも。壊れたSSDのために全部捨てるのは高すぎる。" userName="hoppp" createdAt="2025-03-05T15:47:49" color="">}}

{{<matomeQuote body="Asahiは進展中だよ。ヘッドレス用途にはほぼ準備が整ってる。" userName="notpushkin" createdAt="2025-03-05T15:28:29" color="">}}

{{<matomeQuote body="Asahiのメンテナが最近辞めたけど、その影響がどうなるかは時間が教えてくれるかも。今大きな投資をするのはちょっと危険かな。" userName="criddell" createdAt="2025-03-05T15:30:05" color="">}}

{{<matomeQuote body="あなたの言い方だと一人のしわざみたいだけど、Asahiは多くの貢献者がいて新しいリーダーシップもあるし、Fedoraからもサポート受けてるよ。辞めた人の離脱は痛手だけど、プロジェクトが終わりとは思わないな。" userName="seabrookmx" createdAt="2025-03-05T15:42:47" color="">}}

{{<matomeQuote body="＞このハードウェアは今、OSにかなり足を引っ張られてる。古いXServe OSを戻してくれとは言わないけど、少なくともLinuxかBSDの開発者と提携してサーバーOSを作ってほしい。今の消費者向けOSはふわふわしすぎて本番環境には厳しいと思う。" userName="stego-tech" createdAt="2025-03-05T15:30:43" color="#45d325">}}

{{<matomeQuote body="＞M1チップ用のインターポーザが使えないってどこかで読んだ。Appleの噂ライターに愛を込めて言うけど、ブログを五つ読んだだけで専門家気取りなんだよね。M3 Maxのダイショットにインターポーザが見えないからって、M3 Ultraの構成が不可能だというわけじゃないかも。" userName="klausa" createdAt="2025-03-05T14:34:26" color="">}}

{{<matomeQuote body="M3って実は別物なんじゃない？M3にThunderbolt 5はないし、新しいチップをM3で売ってる気がする。こんなのIntelに期待するのに、Appleからとは思わなかった。" userName="sroussey" createdAt="2025-03-05T15:44:04" color="">}}

{{<matomeQuote body="＞このハードウェアは今、OSにかなり足を引っ張られてる。Appleが2Uラックハードウェアを作ってLinuxをサポートするか、Darwinのヘッドレス版をそのハードウェア上で動かせるようにする？でもその場合、ソフトがあまりなさそうだけど、最終的にはポートする人が現れると思う。Appleはこの市場には興味ないから、こうなることはたぶんない。" userName="kokada" createdAt="2025-03-05T15:17:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="512GBのUnified RAMの最低構成が9,499ドルってことを覚えておいてね。" userName="AlchemistCamp" createdAt="2025-03-05T15:20:22" color="">}}

{{<matomeQuote body="その価格での性能を考えると、特にラックマウントサーバーと比べるとマジでお得だよ。nVidia GPUや十分なRAMを詰め込むと5倍以上の価格になるけど、冗長性やストレージの拡張性を考えたらそれも仕方ないかも。小規模企業やエッジ展開にはめちゃくちゃ魅力的なオファーなんだけど、Appleにはそれを支えるサーバーOSが無いのが痛いね。もしあれば、企業向けハードウェアの競争相手としてはかなり怖い存在になりそう。" userName="stego-tech" createdAt="2025-03-05T15:37:02" color="#38d3d3">}}

{{<matomeQuote body="nVidia GPUの設定は実際にそのRAMを活用するパワーを持ってるけど、M3 Ultraは現実的にあまり活用できてないかも。もしRAMだけが全てなら、EpycやXeonに詰め込める2TBがすでにAI業界を支配してるはずなんだ。でも実際はそうじゃない。M3 Ultraは確かにユニークな組み合わせだけど、お金に見合うかどうかは別の話。" userName="kllrnohj" createdAt="2025-03-05T16:09:47" color="">}}

{{<matomeQuote body="Appleのシリコンに10年以上かけて培ったNeural Processing Unit（NPU）、今のところは”Neural Engine”って呼ばれてるけど、これが端末やエッジでの推論を強化してる理由なんだ。古いM1 Pro Macbook Proでも、10900kに64GBのRAMとRTX 3090を積んだのと同じくらい快適に動いちゃうんだ。" userName="stego-tech" createdAt="2025-03-05T20:44:18" color="#38d3d3">}}

{{<matomeQuote body="えっと... AppleのNPUの話してるのに、それが古い3090にボコボコにされてるのは見逃せないよ。10900Kに64GBのRAMが関係ない話なのも分かるし…" userName="kllrnohj" createdAt="2025-03-05T21:19:44" color="">}}

{{<matomeQuote body="技術的な詳細に気を取られて大きな視点を見逃してるよ。AIに関して、モニターの前での待機時間が30秒と90秒の違いはほとんど意味ないんだ。バッテリー駆動の14インチノートと、500W食うデスクトップの動作時間を比べてるだけだよ。デスクトップの方が性能はいいけど、Appleの実装の魅力はその効率性なんだ。" userName="stego-tech" createdAt="2025-03-05T21:38:51" color="#38d3d3">}}

{{<matomeQuote body="AppleがLinuxをもっと支援してくれれば、彼らのコンピュータには競争相手がいないのに。" userName="darthrupert" createdAt="2025-03-05T14:53:09" color="">}}

{{<matomeQuote body="MBPを6年くらい使ってきたけど、Linuxも使えると思ってた。でも最近、2018年のMBPをLinuxで動かそうとしても、他のARM MBPは無理なのが分かった。MacOSから離れたくてThinkpadを買うつもりだよ。AppleがLinuxをサポートしてたら、10年はAppleを買い続けてたかも。" userName="dwedge" createdAt="2025-03-05T15:04:26" color="">}}

{{<matomeQuote body="https://news.ycombinator.com/item?id=43243075<br>(「Appleのソフトウェア品質の危機」- 1134件のコメント) はこの話に関する詳しい情報がたくさんあるよ。" userName="diggan" createdAt="2025-03-05T14:46:36" color="">}}

{{<matomeQuote body="これって平均的なエンドユーザー向けのソフトウェアに関する話だよね。たしかにアプリのパフォーマンスは低下してるけど、512GBのRAMに払ってるならApple Notesの遅さなんて問題じゃないでしょ。" userName="internetter" createdAt="2025-03-05T15:08:46" color="">}}

{{<matomeQuote body="ソフトウェアの品質に焦点を当てないと、消費者向けでもプロ向けでも影響が出るよ。" userName="diggan" createdAt="2025-03-05T15:26:57" color="">}}

{{<matomeQuote body="ネイティブのDockerサポートがないし、エンタープライズ向けの管理オプションも限られてる。QoS管理も薄いし、Pythonのサポートもイマイチ。" userName="InTheArena" createdAt="2025-03-05T14:47:04" color="">}}

{{<matomeQuote body="＞強固なPythonサポートがないこと<br>そんなものはないよ。15以上の仮想環境や依存関係管理、Pythonバージョン管理のどれを使う？プロジェクト同士の衝突をどない防ぐの？Pythonはクソだと思う。複数プロジェクトなら、Dockerイメージでそれぞれを管理するのが唯一の解決策だ。" userName="pmarreck" createdAt="2025-03-05T15:20:55" color="#38d3d3">}}

{{<matomeQuote body="1. DockerとPodman、両方Macで使ってるよ。<br>2. MDMのことなら良い選択肢があるよ。リモートデスクトップやSSHも標準装備。<br>3. どの点？<br>4. `uv python install whatever`は、OSのペースでアップグレードするよりずっと良いよ。<br>5. それが何に影響するの？" userName="kstrauser" createdAt="2025-03-05T15:16:17" color="">}}

{{<matomeQuote body="＞MacでDockerとPodmanを使ってる<br>それってWindowsユーザーと同じやん。LinuxのVM上で実行してるだけやし。実際のハードウェアのコンテナ化はできてない。" userName="devmor" createdAt="2025-03-05T15:29:50" color="">}}

{{<matomeQuote body="＞MacOSでDockerを使いたい理由は？<br>素朴な疑問なんだけど、Dockerが何をするか知ってる？基本的にLinux技術だよ。MacOSにはDockerが必要な根本的な問題はないからさ。Dockerコンテナが必要なのは「持ってるから」という理由なら、Orbstackを使ったり、仮想化フレームワークでLinuxを使ってみて。驚くほど速いよ。" userName="duped" createdAt="2025-03-05T15:39:49" color="">}}

{{<matomeQuote body="＞MacOSでDockerが必要な理由は？<br>小さなラックマウントのレンダリングファームを持ってるんだけど、Mac miniはIntelよりも圧倒的に性能がいいからさ。個人用や開発用で10年以上MacOSを使ってるけど、サーバーでのMacOS運用は本当に面倒くさい。Dockerでアプリをコンテナ化したいと思ってるよ。" userName="egorfine" createdAt="2025-03-05T17:51:04" color="#45d325">}}

{{<matomeQuote body="ギガビットネットワークで2つのホストからトレントしてるけど、macOSスタックはこの帯域幅に耐えられない。接続が不安定でリブートしないと直らない。Linuxで同じアプリをDockerコンテナで動かすと完璧に動くんだ。Transmissionを使ってるよ。" userName="e40" createdAt="2025-03-05T15:02:16" color="#ff5733">}}

{{<matomeQuote body="＞Appleがこのチップを社内のAIプロジェクトのために開発したって？<br>その社内AIプロジェクトって何？Apple Intelligenceはやばいし、AppleのMLXフレームワークは趣味のプロジェクトに過ぎない。" userName="behnamoh" createdAt="2025-03-05T14:45:10" color="">}}

{{<matomeQuote body="前のM2 Ultraは最大192GBのメモリだったのに対して、M3はなんと512GBになったんだ。さらに、512GBのMac Studioは９４９９ドルっていうぶっ飛んだ価格。これ、完全にAIブームの影響だと思うよ。" userName="ksec" createdAt="2025-03-05T14:26:22" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
