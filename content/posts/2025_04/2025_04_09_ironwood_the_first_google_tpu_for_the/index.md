+++
date = '2025-04-09T00:00:00'
months = '2025/04'
draft = false
title = 'Googleが推論専用の新型TPU「Ironwood」を発表！NVIDIAを脅かす存在になるか？'
tags = ["Google", "TPU", "機械学習", "推論", "AI"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Googleが推論専用の新型TPU「Ironwood」を発表！NVIDIAを脅かす存在になるか？

引用元：[https://news.ycombinator.com/item?id=43631274](https://news.ycombinator.com/item?id=43631274)

{{<matomeQuote body="最初に推論用に設計されたってマジ？ 最初のTPUって推論専用じゃなかったっけ？" userName="nharada" createdAt="2025-04-09T14:28:51" color="">}}

{{<matomeQuote body="マジだよ。（当時Brainにいた）。それにしても、もう10年前かよ。マジか。<br>面白いことに、最初のTPUの設計は全結合ネットワークがベースだったんだ。CNNの登場で設計を見直す必要が出てきて、そのあとRNN（そしてTransformer）でまた見直すことになったんだよね。<br>だから、行列積演算ユニットとembeddingプロセッサの両方を持つ世界で、これが推論用に設計された最初のTPUだと言ってもいいかも。<br>あと、初代は完全にコプロセッサだったけど、後の世代は独自のネットワークファブリックを持つようになったんだ。今回の最新版も同じ。<br>だから、初代を全く別のものと考えるのも、あながち間違ってないと思うよ。" userName="dgacmu" createdAt="2025-04-09T14:34:21" color="#ff5c5c">}}

{{<matomeQuote body="え、CNNが発明される前に、推論用にカスタムASICが必要だったの？ 当時のユースケースってどんな感じだったの？" userName="miki123211" createdAt="2025-04-09T19:35:32" color="#38d3d3">}}

{{<matomeQuote body="2016年のGoogleのブログ記事[1]によると、ユースケースは検索結果の関連性を向上させるRankBrainとStreet Viewだったらしい。AlphaGoにも使われてたね。修士論文の記憶では、Translateにも使い始めてたはず。<br>Attention is All You NeedとかBERT: Pre-training of Deep Bidirectional Transformers for Language UnderstandingにTPUの記述はないけど、2018年10月にはColabでTPUを使ってBERTのfine-tuningをしてたよ[2]。BERTのサンプルリポジトリで、TPUを使ったモデルのfitting方法が紹介されてたはず。だから自然言語の研究は2016-2018年頃はTPUじゃなくて、その後TPUに移行したんじゃないかな。間違ってるかもだけど、dgacmuの方が詳しいと思う。<br>[1]: https://cloud.google.com/blog/products/ai-machine-learning/g...<br>[2]: https://github.com/rikhuijzer/improv/blob/master/runs/2018-1..." userName="huijzer" createdAt="2025-04-09T19:51:16" color="#ff5733">}}

{{<matomeQuote body="そうそう、確か（間違ってたらごめん）、TranslateはSeastar（TPU v1）を使ってた。あれは整数のみだったから、学習には使いにくかったんだよね。" userName="mmx1" createdAt="2025-04-09T20:48:16" color="#38d3d3">}}

{{<matomeQuote body="ちなみに、GoogleはカスタムASICやTensorFlowが登場するずっと前から、CPUベースの機械学習（大量のCPUを使って）を長い間使ってたんだよね。<br>特に大きかったのは、SmartASS（広告配信）とSibyl（その他すべて）だった。<br>GPUの価値について社内議論があって、ある有名なエンジニアが影響力のあるドキュメントを書いたせいで、Googleはアクセラレータが良い選択肢だってわかってたのに、太いCPUノードを使い続けたんだ。ImageNetが爆発的に普及した頃で、一部のエンジニアは音声認識のようなタスクの学習速度をデモするために、開発ボックスに複数のGPUを詰め込んでた。<br>Sibylは、カスタムASICのサポートがない頃からembeddingをヘビーに使ってて、TPUにはbarnacoreっていう限定的なembeddingサポートを追加するアドオンもあったんだ（embeddingはランキングを通じて利益を最大化するのに非常に役立つ）。" userName="dekhn" createdAt="2025-04-09T21:44:47" color="#ff5c5c">}}

{{<matomeQuote body="俺が聞いた話だと、既存のワークロードを動かし続けるために必要なコンピューティング能力をCPUサーバーで賄おうとすると、専用ハードウェアを導入する方が明らかに正当化されるレベルだったらしい。ビデオエンコードアクセラレータ[1]も同じ。<br>[1]: https://research.google/pubs/warehouse-scale-video-accelerat..." userName="mmx1" createdAt="2025-04-10T01:11:41" color="#ff5733">}}

{{<matomeQuote body="まあ、それは対外的な説明の一つだよね。もう一つの理由は、GoogleがNVIDIAのGPUに依存したくなかったから。NVIDIAのGPUはTPUよりも利益率が高いし、リソースの制約（常に一定量のGPUしか出荷されない）もあるからね。<br>あと、Googleは本当に高速な（低遅延）ネットワークを作らなかったから、多くのCPUジョブはネットワーク速度が遅いことを前提に、高い利用率と学習速度を維持するように設計する必要があった。Googleは結局、HPCやスーパーコンピューティングのコミュニティが何十年もかけて確立してきた教訓を社内で再学習することになったんだ。" userName="dekhn" createdAt="2025-04-10T16:13:47" color="#ff5c5c">}}

{{<matomeQuote body="＞ The big ones were SmartASS (ads serving) and Sibyl (everything else serving).<br>ああ、テック企業の社員がサービスをSmartASSって呼んで、それが許された時代か…" userName="miki123211" createdAt="2025-04-10T17:20:13" color="">}}

{{<matomeQuote body="https://research.google/blog/the-google-brain-team-looking-b...は良い概要だよ。<br>Brainにはいなかったけど、Google社内でMLの専門用語に夢中になったのは、経営陣がなぜそんなに熱心なのかを知りたかったから。<br>初期の頃は、機械学習は何でも学習できる、コンピューティングの基本単位を置き換えるだろう、みたいな雰囲気だった。この考え方は、例えばhttps://research.google/pubs/the-case-for-learned-index-stru...に表れてる。<br>昔は今とは違うGoogleで、「3つの異なるチームが3つの異なるチップに取り組んでいる」っていうのは、Androidウェアラブルに取り組んでるチームが多すぎて、上層部がまとめるまでカオスだった、みたいな話に似てる。<br>今のGoogleは昔とは全然違う会社だよ。昔はもっと起業家精神があった。Wave時代がもっと良くなったバージョンで、いろんなものが勝手に立ち上がっていく感じ。MBAホルダーなら、2025年のトップダウンな今の会社の方がいいと思うけど、俺はそうじゃない。AppleとかOpenAIが6-12ヶ月前にやったことを完璧にこなすように調整されてるけど、リードはしない。投資としては確実に良いけど、平均的な職場としては悪いバージョンだと思う。BSに対する抗体ができてないから。（免責事項：Androidで働いてた）" userName="refulgentis" createdAt="2025-04-09T19:48:37" color="#38d3d3">}}

{{<matomeQuote body="Googleが変わったのは二つの要因からきてて、どっちもあんま楽しくないんだよね。でも、まあ理解はできる。<br>一つは、成熟した製品ラインへの移行。初期の頃は、GmailとかGoogle Maps (Where 2)とかYouTubeみたいに、ユーザーが喜ぶクールな新機能を作るのが目的だった。ユーザーの成長と獲得に焦点が当たってたんだよね。<br>それが飽和状態になって、収益性に焦点が移った。既存のユーザーからより多くの価値を引き出して、ビジネスを守るって感じ。その変化で考え方が大きく変わって、つまんなくなるんだよね。<br>もう一つは、市場の変化。Webも技術も成熟して、競争力のある製品を作るのに必要な投資が急増した。Googleは、より少ない矢に多くの力を注ぐ必要があって、そのためには、あちこちで突飛なことをしてる小さなチームを抑え込む必要があった。これもまた、楽しくはないけど、理解はできる。" userName="marsten" createdAt="2025-04-10T08:31:45" color="#ff5733">}}

{{<matomeQuote body="CNNの登場で設計の見直しを余儀なくされて、RNN（そしてtransformers）の登場でまた見直しが入ったんだよね。<br>＞RNNってTPUよりずっと前からあるよね？！" userName="kleiba" createdAt="2025-04-09T16:56:38" color="">}}

{{<matomeQuote body="CNNもそうだけど、当時その人気が急上昇して、ハードウェアを最適化する意味が出てきたんだと思うよ。" userName="woodson" createdAt="2025-04-09T17:55:43" color="">}}

{{<matomeQuote body="RNNは当時もよく知られてたけど、最先端の成果を出してたわけじゃなかったんだよね。" userName="hyhjtgh" createdAt="2025-04-09T17:58:25" color="">}}

{{<matomeQuote body="ここの言い回しはすごく正確で、_推論の時代_のための最初のTPUってなってる。これは、CoTとかDeep Researchを指すために定義された新しいマーケティング用語なんだって。" userName="theptip" createdAt="2025-04-09T19:43:45" color="#ff5c5c">}}

{{<matomeQuote body="うわー。それ見逃してた。<br>もっと正確で中立的な、マーケティングの常套句がないタイトルを誰か提案してくれない？" userName="dang" createdAt="2025-04-10T04:05:05" color="">}}

{{<matomeQuote body="でも、そうじゃないよね？<br>＞最初に推論用に設計されたって書いてある。10年以上もTPUはGoogleの最も要求の厳しいAIトレーニングとサービスワークロードを強化してきた…ってあるけど。<br>サービングって何だと思ってるんだろ？このマーケティングコピーは、何も知らない人が書いて、知ってる人が誰もレビューしてないんじゃないかな。<br>あと面白いことに、v4iへの言及を全部消してるみたいだね。iは推論のiなのに。<br>[https://gwern.net/doc/ai/scaling/hardware/2021-jouppi.pdf](https://gwern.net/doc/ai/scaling/hardware/2021-jouppi.pdf)" userName="shitpostbot" createdAt="2025-04-09T20:43:44" color="#785bff">}}

{{<matomeQuote body="それ、笑っちゃったよね。オリジナルは確かに推論専用だった。" userName="jeffbee" createdAt="2025-04-09T14:31:55" color="">}}

{{<matomeQuote body="最初のやつは、それがうまくいくかっていう概念実証として設計されただけで、推論ワークロードに最適化されてたわけじゃないんだよね。たまたま、推論の方が簡単だったってこと。" userName="m00x" createdAt="2025-04-10T04:27:53" color="#45d325">}}

{{<matomeQuote body="機械学習レースで、チップ分野に正直な競争が出てきたね！どうなるかマジで興味ある。Nvidiaがこの分野でずっと’アンタッチャブル’だったから、状況が揺さぶられるのはいいね。<br>TPUは箱入りユニットとして販売されてないけど、GCPサービスなどを支えるハードウェアとしても、どうなるか見るのが面白いね！" userName="no_wizard" createdAt="2025-04-09T14:28:39" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Nvidiaがこの分野でずっと”無敵”だったみたいだったから、競争が激しくなるのは良いことだね。<br>マジで？MistralのLeChat（Cerebrasで動いてる）とGoogleのGemini（Tensorで動いてる）は、Nvidiaが推論で全然優位性持ってないこと、ずいぶん前にハッキリ示してたじゃん。<br>ハードウェアに何千億もつぎ込んだのは今までトレーニングに集中してたからだけど、推論こそが長い目で見たら一番の稼ぎ頭になるんだよ。" userName="epolanski" createdAt="2025-04-09T15:28:52" color="">}}

{{<matomeQuote body="＞推論こそが長い目で見たら一番の稼ぎ頭になるんだよ。<br>そうかなー。常に最新のデータ（例えばSNSの炎上とか）でモデルをファインチューニングするのが平衡状態になるんじゃない？" userName="wyager" createdAt="2025-04-09T21:58:52" color="">}}

{{<matomeQuote body="Groqのトップが言ってたんだけど、Googleにいた時の経験だと、コンピューティングの10%以下がトレーニングだったって。" userName="NoahZuniga" createdAt="2025-04-10T02:08:57" color="">}}

{{<matomeQuote body="GroqってまだGPUベースのプロバイダーより高いんじゃないの？" userName="lostmsu" createdAt="2025-04-10T15:28:56" color="">}}

{{<matomeQuote body="クラウドにしか存在しないハードウェアにワクワクするのは難しいな。いずれ廃棄されちゃうんだし。" userName="throwaway48476" createdAt="2025-04-09T14:45:24" color="">}}

{{<matomeQuote body="競争がNvidiaにもたらすおかげで、クラウドGPUのワークロードの価格が下がることに興奮しない？<br>Google Cloudを使わなくても、競争が生まれるからみんな得するんだよ。" userName="crazygringo" createdAt="2025-04-09T15:54:25" color="#785bff">}}

{{<matomeQuote body="自分で所有したいんだよね。" userName="01HNNWZ0MV43FF" createdAt="2025-04-09T18:30:30" color="">}}

{{<matomeQuote body="クラウドがNVDAのチップを買わなくなったら、関連商品だから値段下がるよね。" userName="sodality2" createdAt="2025-04-09T21:02:39" color="">}}

{{<matomeQuote body="価格設定は需要よりも競合他社に基づいてる。" userName="throwaway48476" createdAt="2025-04-10T02:42:30" color="">}}

{{<matomeQuote body="え、GPUのジェネレーターも自社製なの？" userName="karmasimida" createdAt="2025-04-10T01:09:07" color="">}}

{{<matomeQuote body="しかも、それの維持に時間とエネルギーがかかるんだよね。" userName="Koshcheiushko" createdAt="2025-04-10T04:47:32" color="">}}

{{<matomeQuote body="お前は何も所有しなくなるけど、幸せになるんだよ。" userName="baobabKoodaa" createdAt="2025-04-09T21:10:39" color="">}}

{{<matomeQuote body="マジでそれな。価値がどんどん下がるハードウェアなんて持ちたくないもん。オープンソースのソフトウェアも持ちたくないし、文化はパブリックドメインから生まれて貢献されるのが理想。<br>資本主義には賛成だけど、物理的な所有よりもレンタルとか、企業製の文化よりもパブリックな文化がいい場合も多い。" userName="simondotau" createdAt="2025-04-10T01:56:43" color="#ff33a1">}}

{{<matomeQuote body="Nvidiaのクラウドインスタンスに競争相手が現れたね。TPUでベンダーロックインされて、出口戦略がない場合はどうなるんだろ？競争こそが価値創造の源泉であって、資本主義じゃないんじゃない？" userName="throwaway48476" createdAt="2025-04-10T02:44:54" color="#785bff">}}

{{<matomeQuote body="ベンダーロックインにはまらないように、もしはまっても抜け出せないなんて思わないで。絶対に抜け出せるから。<br>統合を構築する作業を評価するときは、常に2回やることになると思って。それが無理なら、最初からアウトソーシングすべきじゃなかったんだ。" userName="simondotau" createdAt="2025-04-10T06:17:19" color="">}}

{{<matomeQuote body="スイッチングコストは経済のいたるところにあるよね。測量は2回、切断は1回。同じ作業を2回やる前提で考えるのはナンセンス。" userName="throwaway48476" createdAt="2025-04-12T04:43:46" color="">}}

{{<matomeQuote body="個人的には、動かないTPUが家に転がってる(笑)" userName="foota" createdAt="2025-04-09T21:25:04" color="">}}

{{<matomeQuote body="量子コンピュータのニュースに全くワクワクしない？個人的には反対だなぁ。" userName="prometheon1" createdAt="2025-04-10T11:41:41" color="">}}

{{<matomeQuote body="ほんとそれ。Groqが社内で使ってるカードを販売してくれたらいいのに。" userName="justanotheratom" createdAt="2025-04-09T17:41:22" color="">}}

{{<matomeQuote body="それ売るたびに赤字じゃね？" userName="xadhominemx" createdAt="2025-04-09T21:05:00" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="この記事、シリコンバレーじゃなくてWall Street向けって感じだな。" userName="p_j_w" createdAt="2025-04-09T14:48:11" color="">}}

{{<matomeQuote body="Wall Street今めっちゃ忙しいから、タイミング悪いんじゃね？" userName="mycall" createdAt="2025-04-09T15:51:53" color="">}}

{{<matomeQuote body="Preoccupy Wall Street運動の一部だったりして。" userName="SquareWheel" createdAt="2025-04-09T23:26:14" color="">}}

{{<matomeQuote body="いやいや、めっちゃテック系の株に注目してるって。" userName="asdfman123" createdAt="2025-04-09T21:37:21" color="">}}

{{<matomeQuote body="Googleで働こうと思ってる人向けでもあるかもね。" userName="killerstorm" createdAt="2025-04-10T00:53:49" color="">}}

{{<matomeQuote body="これのユースケースって何？" userName="noitpmeder" createdAt="2025-04-09T15:40:10" color="">}}

{{<matomeQuote body="投資家の心理的な意味で、文字通りの金融会社向けってわけじゃないよ。" userName="fennokin" createdAt="2025-04-09T15:43:20" color="">}}

{{<matomeQuote body="ギャンブル^^^^ 市場をもっと“効率的”にする。" userName="amelius" createdAt="2025-04-09T16:27:40" color="">}}

{{<matomeQuote body="専用チップについてあんまり詳しくないんだけど、こういうチップってGoogleがAnthropicとかOpenAIみたいな会社より、LLMサービスを提供する上でコスト面で大きな優位性を持てるのか知りたいな。同じような技術はGoogleの競合他社も使えるのかな？" userName="nehalem" createdAt="2025-04-09T14:28:54" color="#ff5733">}}

{{<matomeQuote body="GPUはpretrainingにはめっちゃいいけど、inferenceには非効率なんだって。なんでかっていうと、transformerが新しい単語を生成するたびに、モデルの重み全部をメモリから計算ユニットに移動させなきゃいけないから。700億パラメータのモデルだと、1単語生成するのに約140GBのデータを動かす必要があるんだってさ。GPUはoff-chipメモリだから、毎回チップとメモリの橋を渡る必要がある。CerebrasのAndrew Feldmanの話を聞くと違いがわかるらしいよ。彼はAI inferenceのハード売ってる会社のCEOだから、話半分に聞いとけって。" userName="heymijo" createdAt="2025-04-09T15:27:57" color="">}}

{{<matomeQuote body="CerebrasとかGroqは、計算に使うダイが多すぎてメモリが足りないっていう問題があるんだよね。スケールする方法も、計算を物理的なスペースに広げるっていうやり方だし。これだとDCのスペース、電力、冷却がめっちゃ必要になるから大変。SC24でCerebrasの人に話を聞いたら、彼らの最大のお客さんはtraining用で、inference用じゃないんだって。なのにinference製品として売り出してるから、マジで謎。AMDがこの分野で何してるか、もっと言いたいけどMI4xxラインに注目しとけって。" userName="latchkey" createdAt="2025-04-09T16:49:30" color="#785bff">}}

{{<matomeQuote body="めっちゃためになる意見ありがとう。Groqのアーキテクチャについて調べてたんだけど、彼らのチップはダイの大部分をon-chip SRAMに割いてるみたいで、普通のアクセラレータと比べるとかなり太っ腹だなって思ったんだよね。＞[1]Think Fast: A Tensor Streaming Processor (TSP) for Accelerating Deep Learning Workloads — Fig. 5. Die photo of 14nm ASIC implementation of the Groq TSP.　https://groq.com/wp-content/uploads/2024/02/2020-Isca.pdf”　からするとダイの約40%がメモリに割り当てられてるように見えるんだけど、メモリが足りないっていうのは、絶対的な容量が今のモデルサイズに対してまだ足りないってことなのかな？それとも、inferenceのワークロードに対して、面積と帯域幅のトレードオフのバランスが悪いってことなのかな？" userName="usatie" createdAt="2025-04-09T23:14:58" color="#ff33a1">}}

{{<matomeQuote body="＞is it a matter of absolute capacity still being insufficient for current model sizes”<br>これだよ。それに、モデルは小さくなるどころか、どんどん大きくなってるし、より多くのユーザーにとって役立つように、より多くのコンテキストが必要になるから、さらにメモリが必要になるんだよね。以前にこんな話もしたよ。https://news.ycombinator.com/item?id=42003823<br>DCの問題もあるかもだけど、ラック密度を見てよ…GPUの計算量とメモリ量を同じにするには、ラックのスペースが10倍必要になるんだ…https://www.linkedin.com/posts/andrewdfeldman_a-few-weeks-ag...<br>以前にもこんな話をしたよ。https://news.ycombinator.com/item?id=39966620<br>NV72とDell/CoreWeave/SwitchがEVO containmentで目指してる方向性と比べてみて…全然違うじゃん。AMDも同じようなことするかもね。https://www.coreweave.com/blog/coreweave-pushes-boundaries-w..." userName="latchkey" createdAt="2025-04-10T01:21:24" color="">}}

{{<matomeQuote body="リンクありがとう。全部チェックしたよ（時間かかったけど）。SRAMベースのシステム（CerebrasとかGroq）とGPUクラスターのラック密度の違いは理解できた。まだ理解できてないのは、経済性なんだよね。このベンチマークによるとhttps://artificialanalysis.ai/models/llama-4-scout/providers...<br>Groqは100万トークンあたりの価格がほぼ最安で、エンドツーエンドの応答時間もほぼ最速みたい。それって、スピード（レイテンシ）とコストはトレードオフだと思ってたから、ちょっと意外。GPUベースのプロバイダーが、もっと安くて遅い（レイテンシが高い）APIを提供できないのはなんで？それとも、Groq/Cerebrasが原価割れで価格設定してる（おとり商法）のかな？" userName="usatie" createdAt="2025-04-11T21:45:11" color="#ff5c5c">}}

{{<matomeQuote body="おとり商法だよ。uberとかairbnbみたいなもん。経済性とか関係なく売上を計上して、それを担保に借金する。いつか顧客を囲い込むか、価格を上げるか、会社を売ることを期待してるんだよ。" userName="latchkey" createdAt="2025-04-12T03:19:51" color="">}}

{{<matomeQuote body="＞they told me their largest customers are for training, not inference”<br>それは気になるね。今は状況がどんどん変わってるから。ちょっと推測してみたけど、Cerebrasは市場に対応して、自社製品の強みと、推論、特に推論モデルの成長を組み合わせて方向転換しようとしてるんじゃないかな。" userName="heymijo" createdAt="2025-04-09T17:55:55" color="">}}

{{<matomeQuote body="方向転換っていうより、マーケティングでしょ。" userName="latchkey" createdAt="2025-04-09T18:01:56" color="">}}

{{<matomeQuote body="いくつか間違った仮定があるね。まず、16bitは必須じゃない。それに、140GB/tokenになるのは、バッチサイズが1でシーケンス長が1（投機的デコードなし）の場合だけ。GPUでLLMをそんな風に動かす人はいないよ。そうすると、計算利用率がめちゃくちゃ低くなるから。バッチサイズが1より大きくて、投機的デコードを使うと、カーネルのarithmetic intensityがずっと高くなるから、重みがoff chipにあることはそんなに問題にならないんだ。" userName="ein0p" createdAt="2025-04-09T20:09:37" color="#45d325">}}

{{<matomeQuote body="Groqのインタビューも良かったね。Groq/Cerebrasみたいな会社がinferenceをやって、Nvidiaみたいな会社は儲かるpretrainingビジネスに集中するっていう考え方みたいだね。https://www.youtube.com/watch?v=xBMRL_7msjY" userName="hanska" createdAt="2025-04-09T15:41:34" color="">}}

{{<matomeQuote body="AnthropicってGoogleのTPU使ってるんだって。しかもAmazonとも組んで、AmazonのカスタムAIチップ使うデータセンター作ってるらしいよ。GoogleとAmazonはどっちもAnthropicに出資してるし。へー、色々あるんだね。<br>https://www.datacenterknowledge.com/data-center-chips/ai-sta...<br>https://www.semafor.com/article/12/03/2024/amazon-announces-..." userName="pkaye" createdAt="2025-04-09T15:46:17" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="NVIDIA、今70%も利益出してるんだって。そんなプレミアム価格払わずに、NVIDIAの代替手段があるのはありがたいよね。どれくらいメリットあるかはまだ分かんないけど。" userName="avrionov" createdAt="2025-04-09T14:57:43" color="">}}

{{<matomeQuote body="勘違いかもしれないけど、GoogleのAIモデル（Gemini）って、トレーニングも推論もNVIDIAのハードウェア全然使ってないんじゃない？GoogleがNVIDIAのハードウェアを大量に買ったのは、Google Cloudの顧客のためだけで、自分たちのためじゃないんだって。" userName="kccqzy" createdAt="2025-04-09T16:28:04" color="#785bff">}}

{{<matomeQuote body="Googleは他のハイパースケーラーより有利だよね。GoogleのAIデータセンターは、計算コスト効率がめっちゃいいらしいから（設備投資と運営費）。" userName="xnx" createdAt="2025-04-09T15:36:11" color="">}}

{{<matomeQuote body="TPUのおかげ？それとも他の要因？<br>そもそもAIデータセンターって何？GPUとかTPUのボックスは、他の建物と違う場所にあるの？" userName="claytonjy" createdAt="2025-04-09T18:52:10" color="">}}

{{<matomeQuote body="他の要因も色々あるよ。GoogleがTPUハードウェア自体をクラウドサービスから提供できない理由の一つも、そこにあるんじゃないかな。TPUの効率の大部分は、顧客が簡単に再現できない外部要因に起因するんだと思う。" userName="summerlight" createdAt="2025-04-09T21:27:47" color="">}}

{{<matomeQuote body="＞Because of the TPUs, or due to other factors?<br>＞Googleはいろんな面でデータセンターをうまくやってるんだよね。GoogleのTPUは3Dトーラスネットワーク使ってるし、液冷だし。<br>＞What even is an AI data center?<br>＞新しいAI設備は、従来のデータセンターよりもバリエーションやイノベーションが多いんだって。Googleの競合他社は、まだGoogleの進歩をすべて取り入れてないみたい。<br>＞are the GPU/TPU boxes in a different building than the others?<br>＞それは読んだことないな。新しいデータセンターをどんどん作ってるのは確かだけど、最初から純粋なAIワークロード用に設計されてるかどうかは知らない。" userName="xnx" createdAt="2025-04-09T19:10:07" color="">}}

{{<matomeQuote body="9216ノードもあるのに、3Dトーラスネットワークってパフォーマンス悪くない？レイテンシもかなりひどそうだけど。普通のスパインリーフの方がいいと思ってたんだけど、違うのかな。でも、レイテンシがすごいって言ってるんだよね。もちろん、証拠は全然ないけど。<br>あと、AIデータセンターって何？って話だけど、マジでわからん。" userName="nsteel" createdAt="2025-04-09T19:42:08" color="">}}

{{<matomeQuote body="3Dトーラスは、配線の複雑さとかコストとパフォーマンスのトレードオフだね。ノード数が多いと、ノードのすべてのペア間にワイヤーを張るわけにはいかないから、トーラスを使わない場合は、トラフィックを集約するスイッチやルーターのスタックが必要になる。それらの中間レベルとトップレベルのスイッチ/ルーターは非常に高価になり（高帯域幅クロスセクション）、ルーティングが少し面倒になる。3Dトーラスはケーブルがはるかに少なく、ルーティングは非常に簡単（「自分の行に到達するまで垂直方向にホップし、水平方向にホップして自分のノードを読む」）で、ラップアラウンド接続はいいね。<br>とは言え、トーラスのアプローチは、ほとんどのワークロードが最近傍になるというギャンブルだった。allreduceは最適化するために特別な作業が必要。" userName="dekhn" createdAt="2025-04-09T21:51:01" color="#ff33a1">}}

{{<matomeQuote body="＞most workloads would be nearest-neighbor<br>＞どうもありがとう、それこそ私が欠けていたパズルのピースです。ナイーブには、数千ものノードがある場合、通常のマルチレベルスイッチよりも3Dトーラスの方がはるかに多くのホップが必要になるように思えますが、ルーティングがはるかに簡単になることは理解できます。ただし、実際には輻輳を避けるためには、最も単純なルーティングソリューションを超える何かが必要になると思います。" userName="nsteel" createdAt="2025-04-10T10:12:19" color="#785bff">}}

{{<matomeQuote body="そのギャンブルは外れたのかな？LLMのトレーニングって、全ノードを使ったcollectives（all-gather、reduce-scatter）を使うと思ってたんだけど。" userName="cavisne" createdAt="2025-04-10T01:03:58" color="">}}

{{<matomeQuote body="彼らの選択は、優れたソフトウェアとハードウェアのエンジニアリングと組み合わさって、ML研究を最高レベルで革新し続けられるようにしてると思うよ。予算と複雑さの範囲内でね。" userName="dekhn" createdAt="2025-04-10T16:10:22" color="#ff5c5c">}}

{{<matomeQuote body="それって、電力密度がめっちゃ高いデータセンターってことだよね。普通のデータセンターが20kw/ラックなのに対して、100～1,000 kw/ラックの話をしてるんだから。冷却と電力供給が全然違うものが求められるよね。" userName="xadhominemx" createdAt="2025-04-09T21:11:39" color="">}}

{{<matomeQuote body="＞AIデータセンターって何？<br>＞AIのトレーニングとか推論の負荷がめっちゃ高いデータセンターのことだよ。AIじゃないデータセンターは、どこも似たりよったり。GoogleのAI以外の効率は、Amazonとか他の会社と大差ないんだよね。Googleは、AIのワークロードを実行するのがめっちゃ得意なんだ。" userName="xnx" createdAt="2025-04-09T20:28:01" color="#ff33a1">}}

{{<matomeQuote body="＞GoogleのAI以外の効率は、Amazonとか他の会社と大差ないって？<br>＞それはないと思うな。Googleはずっと効率のリーダーだよ。PUEを見てみろよ。10年前、Googleは平均PUEが1.12くらいだって発表したけど、業界平均は2.0近かったんだぜ。去年は平均1.1だって報告してる。他の大手よりずっと透明性があるんだよ。AWSは不透明だけど、平均1.2だって。追いつくのに10年かかったんだな。他の会社と同じレベルってのは全然違うよ。" userName="dbmnt" createdAt="2025-04-10T03:59:33" color="#38d3d3">}}

{{<matomeQuote body="10年前って結構昔だよね。KubernetesとかeBPF networkingとかも出てきたし。他の会社もハードウェアの利用率の差をかなり縮めてるんじゃないかな。" userName="literalAardvark" createdAt="2025-04-10T09:31:40" color="">}}

{{<matomeQuote body="Nvidiaはデータセンター向けチップで60%くらいの利益率があるんだって。だから、TPUはNvidiaのGPUほど良くなくても、Googleがお金を節約できる余地は十分あるんだよね。AmazonはTrainiumチップをスケールし始めたばかりだし、他の会社は似たようなものを持ってないし。" userName="cavisne" createdAt="2025-04-09T17:38:26" color="#785bff">}}

{{<matomeQuote body="MicrosoftもMAIA 100を持ってるよ。規模とか計画についてはコメントできないけど。" userName="buildbot" createdAt="2025-04-09T18:59:25" color="">}}

{{<matomeQuote body="AI/LLM向けのチップは他にもあるけど、ASICってのは、特定のタスクごとに必要になるんだよね。いつかは均衡すると思うけど、今はCerebrasが得意なこと、TPUが得意なこと、GPUが得意なことがそれぞれ違うんだ。" userName="baby_souffle" createdAt="2025-04-09T14:43:49" color="#785bff">}}

{{<matomeQuote body="いつか均衡するのかもわかんないよね。ムーアの法則が終わったから、特化が進むのは当然の流れだよ。" userName="monocasa" createdAt="2025-04-09T15:45:49" color="">}}

{{<matomeQuote body="マジか、すごいけどベンチマークの変なゲームやめてほしいわ。なんでfp8のIronwoodと、ハードでfp8をサポートしてないアーキテクチャを比べるの？TPUv6を比較に入れないのはなぜ？El Capitanのfp64FLOPSとTPUポッドのfp8FLOPSを比べるのも意味不明じゃん？<br>[Edit: El Capitanの方が速いみたい。fp64はもっと遅いってことね。]<br>TPUの方が速いとしても、fp64がfp8より8倍難しいことを考えると、24倍速いって言うのは誇張じゃない？3倍速いを正直に言えばいいのに。なんかセコいよ。誤解を招くような言い方は詐欺師の手口じゃん。もったいない。" userName="fancyfredbot" createdAt="2025-04-09T13:57:36" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
