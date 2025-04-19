+++
date = '2025-04-12T00:00:00'
months = '2025/04'
draft = false
title = '速報 Google Geminiがオンプレミスで利用可能に！自社データセンターで動かせるってマジ？'
tags = ["Google", "Gemini", "AI", "クラウド", "オンプレミス"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> 速報 Google Geminiがオンプレミスで利用可能に！自社データセンターで動かせるってマジ？

引用元：[https://news.ycombinator.com/item?id=43632049](https://news.ycombinator.com/item?id=43632049)

{{<matomeQuote body="Googleからの発表だよ: https://cloud.google.com/blog/products/ai-machine-learning/r…" userName="djoldman" createdAt="2025-04-12T13:20:05" color="">}}

{{<matomeQuote body="ハードウェアがGoogleのTPUじゃなくてNVidiaのBlackwellなの、マジ面白いね。ってことはGoogleはエネルギー効率とコストで有利になる可能性があって、独自のハードウェアを他の人が使えないようにするってことかも。" userName="mkl" createdAt="2025-04-12T14:14:48" color="#ff5733">}}

{{<matomeQuote body="第三者のためにTPUハードウェアを構築するビジネス（設計、構築、販売、サポートなど）全体を立ち上げるのは、クラウドでTPUに対する需要が溢れている現状では、おそらく割に合わないんだろうね。自社でハードウェアを実行する企業は、より一般的に役立つCUDAを好むだろうし。" userName="crowcroft" createdAt="2025-04-12T16:48:34" color="#ff33a1">}}

{{<matomeQuote body="この理由の一部は、顧客がCUDAを利用できることを好むためだと思われるよ。TPUは多くのユースケースで優れているけど、顧客はCUDAをターゲットにすることの移植性を好むんだよね。" userName="bitexploder" createdAt="2025-04-12T15:57:11" color="">}}

{{<matomeQuote body="TPUが優れているユースケースってどんなの?" userName="j5r5myk" createdAt="2025-04-12T20:03:50" color="">}}

{{<matomeQuote body="Geminiモデルの実行とか。" userName="riwsky" createdAt="2025-04-13T00:25:29" color="">}}

{{<matomeQuote body="推論にCUDA対応デバイスを使用するメリットって何?" userName="alienthrowaway" createdAt="2025-04-12T17:13:05" color="">}}

{{<matomeQuote body="俺の理解だと、CUDAは小さいバッチとかジョブで有利だけど、TPUは大きいジョブで有利なんだよね。CUDAの方が使いやすくて、典型的な小さいワークロードに適してるんだ。ある時点から大きいMLの負荷とか推論になると、TPUの方が理にかなってくるんだよね。" userName="bitexploder" createdAt="2025-04-12T17:49:51" color="#45d325">}}

{{<matomeQuote body="＞ not Google TPUs<br>供給が限られてるんだよね。Google自身も自社で使う分が足りてないんだ。" userName="re-thc" createdAt="2025-04-12T15:58:37" color="">}}

{{<matomeQuote body="GoogleはTPUを第三者に提供してないよね？もし提供したら、リバースエンジニアリングのリスクがめちゃくちゃ高くなると思うんだけど。" userName="WalterGR" createdAt="2025-04-12T18:39:55" color="">}}

{{<matomeQuote body="マジで？現代のチップのリバースエンジニアリングは簡単じゃないって。できる会社は最初から自分で設計できるし。でも、最新プロセスでテープアウト（デバッグ済み）するのはめっちゃ金かかるんだよね。" userName="fc417fc802" createdAt="2025-04-12T21:09:49" color="">}}

{{<matomeQuote body="US政府と軍のために、外部ネットワークから遮断されたair gappedソリューションを許可してもらうことに力を入れてるってことは、何かあるんだろうね。" userName="DSingularity" createdAt="2025-04-12T23:52:33" color="">}}

{{<matomeQuote body="詳細はちょい薄いけど、これって暗号化されたGPUを使うconfidential VMが必要になるのかな？（それに、誰かがSEV－SNPとTDXをクラックして、海賊版コピーが広まるまでどのくらいかかるんだろう？）" userName="rwmj" createdAt="2025-04-12T08:15:54" color="">}}

{{<matomeQuote body="モデルの進化のペースを考えると、裏ルートを行くメリットは長くは続かないはず。何か見落としてるかな？" userName="vasco" createdAt="2025-04-12T10:17:40" color="">}}

{{<matomeQuote body="独自のトレーニングデータへのアクセス：Search、YouTube、Google Booksが参入障壁になるかもね。" userName="miohtama" createdAt="2025-04-12T10:43:53" color="">}}

{{<matomeQuote body="Common Crawlがあるじゃん。LLMのトレーニング用にスクレイピングされたウェブデータで、非営利団体が無償で提供してる。" userName="maxloh" createdAt="2025-04-12T11:59:49" color="#785bff">}}

{{<matomeQuote body="Common CrawlはLLMの出力でどんどん汚染されていくから、LLMの出力が少ないトレーニングデータの方が貴重になるだろうね。" userName="UltraSane" createdAt="2025-04-12T13:15:14" color="#38d3d3">}}

{{<matomeQuote body="よくある誤解だよね。LLMのゴミをフィルタリングするのは、人間のゴミをフィルタリングするのと大差ないよ。むしろ、LLMが生成した出力の方が、ネットでランダムに見つかる人間のテキストより質が高いことが多い。最新のLLMがLLM自身が生成した合成データをますます多く使うのも偶然じゃない。人間のデータだからって価値があるわけじゃない。大事なのはデータの質だけ。ネットはゴミだらけだから、何らかの方法でフィルタリングする必要があるんだよ。" userName="kouteiheika" createdAt="2025-04-12T18:58:28" color="#785bff">}}

{{<matomeQuote body="でも、人間のゴミをフィルタリングするシグナルと、LLMのゴミをフィルタリングするシグナルは違うんじゃない？LLMが生成するテキストは一見高品質に見えるけど、事実に反することがある。例えば、LLMは適切にフォーマットされてて、ドキュメンテーションやコメント、テストまで含まれているコードを生成できるけど、存在しないライブラリを使ったり、論理的に間違ってたりする。" userName="empiko" createdAt="2025-04-12T21:36:48" color="#ff5c5c">}}

{{<matomeQuote body="LLMの出力は、LLMの出力でトレーニングされたLLMがモデル崩壊を起こす可能性があるから、特に有害なんだ。<br>＞https://www.nature.com/articles/s41586-024-07566-y" userName="UltraSane" createdAt="2025-04-13T02:32:04" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="LLMってマジで人間の比じゃないくらい大量のゴミデータ生成するから、フィルタリングが全然追いつかないって問題があるんだよね" userName="SXX" createdAt="2025-04-12T19:25:52" color="">}}

{{<matomeQuote body="Google BooksとLibGenの違いってどこかにまとまってないのかな？Google以外のモデルってLibGenで学習してるのがほとんどだと思うんだけど" userName="hdjjhhvvhga" createdAt="2025-04-12T12:16:09" color="#45d325">}}

{{<matomeQuote body="自宅にこのモデル動かせるだけのハードウェア持ってる人ってマジで少ないと思うし、企業がリークするリスク考えたら、まずありえないんじゃないかな" userName="unsnap_biceps" createdAt="2025-04-12T08:36:33" color="">}}

{{<matomeQuote body="一般ユーザーのことなんて、マジでどうでもいいと思ってるでしょ" userName="notpushkin" createdAt="2025-04-12T09:00:11" color="">}}

{{<matomeQuote body="たった1社がリークするだけで終わりよ" userName="RadiozRadioz" createdAt="2025-04-12T09:53:00" color="">}}

{{<matomeQuote body="ハッキングされてリークされるパターンもあるよね" userName="franga2000" createdAt="2025-04-12T11:49:52" color="">}}

{{<matomeQuote body="現実的に考えて、このサイズのモデルを動かせるのは大企業だけだよね。訴えられるリスク考えたら、許可なしにモデル使うとかありえないでしょ" userName="spacebanana7" createdAt="2025-04-12T12:16:36" color="#ff5c5c">}}

{{<matomeQuote body="いやー、まだAIにアホみたいにお金突っ込んでる非テック企業とか、セキュリティ意識低い企業とか、ランサムウェアの標的にされてるとことか、マジでデータセットがリークされる可能性あると思うよ。小売とか消費者向け製品の会社とかね。（セキュリティ弱い非西洋の政府とかも）" userName="nxobject" createdAt="2025-04-12T14:04:35" color="">}}

{{<matomeQuote body="国家レベルの話だよね" userName="blackoil" createdAt="2025-04-12T14:04:58" color="">}}

{{<matomeQuote body="Mossadみたいな政府系の組織もあるしね。エアギャップとかスパイには通用しないし。訴えるとか無理ゲーでしょ" userName="FilosofumRex" createdAt="2025-04-13T08:10:34" color="">}}

{{<matomeQuote body="ハッキングされて、うっかりデータが漏洩しちゃうかもね。" userName="BiteCode_dev" createdAt="2025-04-12T10:04:16" color="">}}

{{<matomeQuote body="＞SEV-SNPを誰かがクラックするまでどれくらいかかるかな。<br>https://bughunters.google.com/blog/5424842357473280/zen-and-…" userName="bjackman" createdAt="2025-04-12T12:15:13" color="">}}

{{<matomeQuote body="ウォーターマーク付きのモデルの重みと、モデルをリークした場合の多大な責任を想定してるんじゃないかな。" userName="NoahZuniga" createdAt="2025-04-12T14:06:36" color="">}}

{{<matomeQuote body="これって、連合学習を通じてモデルを強化するのにすごく良い方法かもね。<br>https://federated.withgoogle.com/" userName="nsriv" createdAt="2025-04-12T16:25:28" color="">}}

{{<matomeQuote body="連合学習のインターンしてたんだ。シミュレーターで色々な連合アルゴリズムを実装して、意味のある方法で比較するタスクだった。最後に実装するはずだったのがFedMA。あれはマジで鬼畜。問題を解決するたびに別の問題が2つ発生して、上司も助けてくれなかった。異なるネットワークでニューロンをマッチングさせるってのは理にかなってるけど、近似コストの計算方法が難解すぎて理解できなかった。" userName="amarcheschi" createdAt="2025-04-12T21:13:40" color="#ff5c5c">}}

{{<matomeQuote body="オンプレミスにデプロイする一番の理由は、Googleとかの“学習”から完全に隔離することじゃん。" userName="ein0p" createdAt="2025-04-12T20:45:39" color="#ff5c5c">}}

{{<matomeQuote body="それがプライバシー保護の仕組みのポイントでしょ。複数のクライアントに共通することしか学習できないはず。個人のデータはノイズで隠されるから大丈夫。" userName="fc417fc802" createdAt="2025-04-12T21:12:01" color="">}}

{{<matomeQuote body="いやいや、そこじゃないんだよ。弁護士はプライベートデータを使った“学習”なんて絶対に許可しないって。法的な助言がなくても、企業は対価なしにそんなことするほどバカじゃないでしょ。" userName="ein0p" createdAt="2025-04-14T00:21:48" color="">}}

{{<matomeQuote body="なんで的外れなの？最初は弁護士もクラウドストレージに反対するかもしれないけど、クライアント側で暗号化されてるって説明すれば変わるかもよ？報酬は「Googleから安いレートでサービスを受けられる」とか「エアギャップされたサービスは対象外」とか色々な形がありえるし。" userName="fc417fc802" createdAt="2025-04-14T00:48:22" color="">}}

{{<matomeQuote body="大事なのは、このシステムがインターネットに接続されてないとダメってこと。そうなると、オンプレミスでホストするのとGCPでホストするのと、データ流出しないってGoogleが約束してくれる以外、大差ないじゃん。Googleを信用してればね。信用できないなら、自社ホストでエアギャップするしかない。" userName="ein0p" createdAt="2025-04-14T01:20:54" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これって明らかに政府の契約狙いだよね。でもGoogle Distributed Cloudを普及させるにはアリかもね。" userName="holografix" createdAt="2025-04-12T10:11:51" color="">}}

{{<matomeQuote body="オンプレミスのデータセンターをたくさん使ってる金融機関はマジで喜ぶと思う。うちの会社はまだクラウドは使ってないんだよねー。自社ビルに6つもデータセンターがあるし、それ以外は全部コロケーションのラックで動かしてる。" userName="noitpmeder" createdAt="2025-04-12T16:11:57" color="#45d325">}}

{{<matomeQuote body="インターネット回線はどこ？" userName="brcmthrowaway" createdAt="2025-04-12T16:33:51" color="">}}

{{<matomeQuote body="＞金融機関ねー。<br>＞ってことはTier 1とかTier 2の業者と直接光ファイバーで繋がってるってことじゃん。大手のところはNYSEと直結してたりするし。<br>＞自前で回線引いてないなら、BT RadianzとかIPC Systems、Colt Technology Servicesとか使ってるんじゃない？" userName="jychang" createdAt="2025-04-12T23:15:18" color="#ff33a1">}}

{{<matomeQuote body="そうかなー？俺の知る限りGCPは機密ネットワークの承認はまだ取れてないはず。そこが一番難しいんだよね。Azure OpenAIはもう1年以上前から政府ネットワークでの稼働が承認されてるのに。これは規制の厳しい業界、特にバイオ医薬品の顧客獲得を狙ってるんじゃないかな。" userName="aduffy" createdAt="2025-04-12T12:19:38" color="#ff5c5c">}}

{{<matomeQuote body="＞Google Cloud Nextでの発表によると、Google Public SectorのGoogle Distributed Cloud Hosted (GDC Hosted)が、米国情報コミュニティのTop SecretとSecretミッション、そして国防総省(DoD)のTop Secretミッションでの利用を許可されたらしいよ！" userName="Maxious" createdAt="2025-04-12T14:32:57" color="#785bff">}}

{{<matomeQuote body="FedRAMP Highの認定を取るのが、アメリカ政府相手にするならマジで重要。GCPのサービス範囲は意外と広いんだよね、この分野。" userName="ZeroCool2u" createdAt="2025-04-12T13:28:56" color="#ff5c5c">}}

{{<matomeQuote body="Googleのブログによると、GDCのエアギャップ製品はアメリカ政府のSecretとTop Secretミッションで承認されてて、Geminiも使えるらしい。セキュリティとコンプライアンスは最高レベルだって。" userName="skybrian" createdAt="2025-04-12T14:29:23" color="#785bff">}}

{{<matomeQuote body="銀行業界も同じだね。こういうのずっと探してたんだよ。Googleは需要があるって判断して、OpenAIとかAnthropicがサポートする人員を確保できないうちに参入を決めたんじゃないかな。" userName="nkassis" createdAt="2025-04-12T15:27:59" color="#45d325">}}

{{<matomeQuote body="これって明らかに政府の契約狙い撃ちじゃん？別に会社のデータをあちこちにばら撒きたくないのは、政府機関だけじゃないって。" userName="reaperducer" createdAt="2025-04-12T13:31:50" color="">}}

{{<matomeQuote body="めっちゃ秘密主義の会社は別として、セキュアなプライベートクラウドが絶対必要で、投資する価値があるってなるのは、政府機関とか、政府関連の規制が厳しい分野だけだよ。" userName="connicpu" createdAt="2025-04-12T13:40:42" color="">}}

{{<matomeQuote body="えーと、すぐに思いつくのは、医療とか、銀行とか。" userName="reaperducer" createdAt="2025-04-12T15:09:04" color="">}}

{{<matomeQuote body="どっちも政府の施設が求めるレベルの秘密性には全然届かないよ。医療とか銀行は個人情報漏洩しまくってるのに、マジで何のペナルティも受けてないじゃん。" userName="SoftTalker" createdAt="2025-04-12T15:54:06" color="">}}

{{<matomeQuote body="ただの個人的な話はデータじゃないから。" userName="reaperducer" createdAt="2025-04-13T23:06:10" color="">}}

{{<matomeQuote body="医療とか銀行は、ちゃんと基準満たしてれば、第三者のデータセンターにデータ置くの全然問題ないよ。" userName="kube-system" createdAt="2025-04-12T15:57:43" color="">}}

{{<matomeQuote body="医療関係でFedRAMPとかマジでいらないから。" userName="vel0city" createdAt="2025-04-12T16:08:19" color="#ff33a1">}}

{{<matomeQuote body="付け加えると、オンプレミスって10～20年前より10～100倍くらい楽になってきてるんだよね（それでもまだ難しいけど）。「自分のデータセンターで動かしたい」ってのが、F500みたいな大企業だけじゃなくて、もっと小規模な会社でもできるようになってきてる。" userName="dhorthy" createdAt="2025-04-12T16:44:08" color="#38d3d3">}}

{{<matomeQuote body="え？20年前はオンプレが当たり前で、クラウドなんてなかったじゃん。" userName="kortilla" createdAt="2025-04-12T17:41:17" color="">}}

{{<matomeQuote body="そうそう、AWSは2005年にプライベートベータで、2006年に公開されたんだよね。存在は知られてたけど、まだアクセスできなかった人が多かったんだよ。https://www。zdnet。com/article/how-amazon-exposed-its-guts-th…" userName="tuukkah" createdAt="2025-04-12T18:37:46" color="">}}

{{<matomeQuote body="どっちも規制まみれで、それが必要になってるってことだよね。" userName="surajrmal" createdAt="2025-04-12T15:41:57" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="MicrosoftのCopilotと戦うことになるね。" userName="culopatin" createdAt="2025-04-12T15:48:24" color="">}}

{{<matomeQuote body="これってSundarがGoogle Cloudに強制したのかな？それともGoogle Cloudがやりたかったことなのかな？一見、Geminiを自社展開できるようになったら、Google Cloudの収益が減るように見えるけど。でも、完全に損をするわけじゃないよね。だって、Google Cloudはまだ何らかの基盤技術を提供してるはずだし？それに、オフプレミスなんて考えもしない顧客もいるだろうし。" userName="_cs2017_" createdAt="2025-04-12T19:12:46" color="#785bff">}}

{{<matomeQuote body="Google Distributed CloudはCloud orgの一部だから、どっちにしても収益は入るんじゃないかな。オンプレ版の方が高くつくかもしれないし。" userName="wmf" createdAt="2025-04-12T22:40:35" color="">}}

{{<matomeQuote body="DeepSeekみたいにできるのかな？それとももっと複雑で高価になるのかな。そんなの欲しい人いるのかな。" userName="throwaway48476" createdAt="2025-04-12T14:03:16" color="">}}

{{<matomeQuote body="絶対欲しいって人はいっぱいいるよ、特に金持ちはね。AIを導入する企業が一番心配してるのは、どんな用途でもデータがネットワークから出ていくことなんだ。特に（でもそれだけじゃないけど）EUではね。" userName="yoavm" createdAt="2025-04-12T14:52:31" color="#38d3d3">}}

{{<matomeQuote body="Deepseekはただのモデルの重みだよ。ネットワークアクセスは必要ないよ。" userName="throwaway48476" createdAt="2025-04-12T15:05:01" color="">}}

{{<matomeQuote body="DeepseekはGemini 2。5 Proとは比較にならないよ。" userName="yoavm" createdAt="2025-04-12T15:20:37" color="">}}

{{<matomeQuote body="DeepSeek-R2は…どうなんだろうね。" userName="phonon" createdAt="2025-04-12T20:28:02" color="">}}

{{<matomeQuote body="Deepseekを使いたい人は、この製品の顧客じゃないんだよね。Deepseekはサービス契約を提供してないし。" userName="surajrmal" createdAt="2025-04-12T15:29:03" color="">}}

{{<matomeQuote body="Googleがこれをやるのに、TPUを他のデータセンターに売らないのはマジで謎。Nvidiaの時価総額を見れば、どれだけチャンスを逃してるか分かるはずなのに。" userName="tziki" createdAt="2025-04-12T17:57:14" color="#ff5c5c">}}

{{<matomeQuote body="考えられる理由は、TPUを秘密のソースだと思ってるか、長期的なサポートをしたくないか、製造能力がないかのどれかじゃないかな。" userName="dehrmann" createdAt="2025-04-12T17:59:54" color="">}}

{{<matomeQuote body="間違いなく3つ目だね。GPUはまずGoogle自身のコンピューティング需要を満たす必要があって、それからじゃないと販売できない。トレーニングとか推論とかめっちゃやってるし、社内需要も高いから、余分に製造するのは難しいんじゃないかな。特に利益を出すのはね。" userName="paxys" createdAt="2025-04-12T18:05:05" color="#38d3d3">}}

{{<matomeQuote body="Googleは兆ドル企業だよ？チップ工場を作る資金調達に困るわけないじゃん。本気でやりたいならできるはずだけど、リーダーシップがないから無理なんだろうね。今の政治情勢なら、工場を建てればすぐに許可が下りるだろうし。なのに、なんでやらないの？" userName="azemetre" createdAt="2025-04-13T00:20:25" color="">}}

{{<matomeQuote body="工場を建てるのはほぼ無理ゲー。TSMCにお金を積んでも、他の会社も同じことするからね。" userName="Unroasted6154" createdAt="2025-04-13T05:14:10" color="">}}

{{<matomeQuote body="TPUは垂直統合されてるからね。もしGoogleがNvidiaやTSMCと競争すると言い出したら、投資家としてはリーダーシップがコアコンピテンシーを見失ったと思うだろうね。1000億～2000億ドル以上も投資して対等になろうとするのは、資金の無駄遣いだよね。自社のジョブのためにキャパシティを増やせば、余った分を顧客に提供できるんだし。" userName="motoxpro" createdAt="2025-04-13T02:21:45" color="#38d3d3">}}

{{<matomeQuote body="ハッカーがウェイトを盗み出すリスクってどれくらいあるんだろう？" userName="aussieguy1234" createdAt="2025-04-12T12:29:44" color="">}}

{{<matomeQuote body="CPUベースの暗号化を使ったコンフィデンシャルVMを使えば、かなり低いと思うよ。Xboxが10年間ハッキングされてないのと同じ。" userName="dist-epoch" createdAt="2025-04-12T14:40:41" color="#ff5733">}}

{{<matomeQuote body="海賊版ゲームとか、マルチプレイでチートやボットを使ったりとかかな。" userName="DoctorOW" createdAt="2025-04-12T18:47:20" color="">}}

{{<matomeQuote body="これ結構すごいんじゃない？air gapped productってことは、どこかの政府に提供する場合、担当者が新しいweightsをロードするためにVMにSSH接続する必要があるってことだよね。でも、weightsに工夫を凝らしたり、watermarkを入れたりする方法はたくさんありそう。" userName="cavisne" createdAt="2025-04-12T17:19:13" color="">}}

{{<matomeQuote body="銀行で働いてるんだけど、プライバシーの問題でAIの使用が禁止されてるんだよね。こういう製品には大きな市場があると思うよ。" userName="rr808" createdAt="2025-04-13T02:11:47" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
