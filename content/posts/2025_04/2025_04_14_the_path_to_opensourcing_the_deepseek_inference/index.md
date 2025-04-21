+++
date = '2025-04-14T00:00:00'
months = '2025/04'
draft = false
title = 'DeepSeekの推論エンジン、ついにオープンソース化へ！高速化の裏側と今後の展望を徹底解剖'
tags = ["DeepSeek", "推論エンジン", "オープンソース", "vLLM", "LLM"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> DeepSeekの推論エンジン、ついにオープンソース化へ！高速化の裏側と今後の展望を徹底解剖

引用元：[https://news.ycombinator.com/item?id=43682088](https://news.ycombinator.com/item?id=43682088)

{{<matomeQuote body="3月にvLLMがDeepSeekの論文の改善点を取り入れたみたいで、vLLM v0.7.3のDeepSeekの性能が3倍以上になったらしいよ[1]！ まだまだ改善の余地があるのがワクワクするね。vLLMを使って、sharegptデータセットで5Kトークン/秒、ランダム2000/100で12Kトークン/秒をベンチマークしてるんだって。DeepSeek-V3/R1 Inference System Overview [2]では、H800ノード1つでプリフィル中に平均73.7kトークン/秒、デコード中に14.8kトークン/秒のスループットが出るって書いてある。DeepSeekは違うアーキテクチャだけど、まだまだ伸びしろがあるってことだね！" userName="ozgune" createdAt="2025-04-14T18:04:41" color="#45d325">}}

{{<matomeQuote body="＞Codebase Divergence：Our engine is based on an early fork of vLLM from over a year ago．Although structurally similar，we’ve heavily customized it for DeepSeek models，making it difficult to extend for broader use cases．”<br>わかるー！ あるあるだよねー！<br>メンテしやすいサブライブラリに分割して、統合されてなくても情報を共有するってアプローチはマジ良いと思う。障害があっても、それを理由に貢献しないって方向に逃げないのがすごい。動くコードだけじゃなくて、技術の情報も共有してくれるのはありがたいよね。やるのめんどくさいはずなのに、マジ感謝だわ。" userName="vintagedave" createdAt="2025-04-14T17:23:12" color="#ff5733">}}

{{<matomeQuote body="動かないコードもめっちゃ役に立つんだよね。論文に書いてあることが曖昧な時とか、実際に何やったのか確認したいから、動かなくてもいいからコードが見たい時あるもん。" userName="bonoboTP" createdAt="2025-04-14T18:18:52" color="#45d325">}}

{{<matomeQuote body="DeepSeekはvLLMをめっちゃカスタマイズして最適化したから、もはや別物になったんだね（例：DebianとUbuntuみたいな）。でも、改善点を共有してくれるのはマジでありがたい。" userName="rvnx" createdAt="2025-04-14T17:25:22" color="#ff5733">}}

{{<matomeQuote body="なんでAI企業って研究結果とかノウハウを共有するんだろう？ GoogleがTransformerのアーキテクチャを独り占めしなかったのはなんで？ 人類のためとか、進歩を促進するためってのはわかるけど、商業的な利益に反する場合、経営陣はどうやって株主の反対を押し切るんだろう？ 情報や知的財産を共有することに商業的な理由があるのかな？ あるとしたらどんなロジックなんだろう？" userName="avodonosov" createdAt="2025-04-14T20:19:29" color="#45d325">}}

{{<matomeQuote body="俺の理解では、最先端の研究者は、論文を発表したり、仲間と議論したりさせてくれる会社で働くんだよね。 AI研究者のレベルになると、今の年収500kに100k上乗せされるよりも、名前が知られる方が価値があるんだと思う（金額は適当）。例えば、Transformerを作った作者の一人として知られるようになれば、優秀な人たちと一緒にさらに良いものを作れるじゃん。 だから、こういう企業は「うちで働けば論文を発表できるよ」ってのを特典にしてるんだよね。" userName="nodja" createdAt="2025-04-14T21:44:05" color="#45d325">}}

{{<matomeQuote body="＞When you're an engineer at the tier of these AI researchers，winning an extra 100k/year on top of you current 500k (numbers out of my ass) is not worth it vs getting name recognition．Being known as one of the authors that made the transformer for example will enable you work with other bright minded individuals and create even better things．”<br>年収が100kドル増える代わりに、次の会社のために10億ドルのVC資金を調達できるんだぜ。" userName="htrp" createdAt="2025-04-15T00:16:02" color="#ff5733">}}

{{<matomeQuote body="そして、Googleに買い戻される、と。 https://www.axios.com/2024/08/05/google-characterai-venture-..." userName="make3" createdAt="2025-04-15T06:12:17" color="#ff33a1">}}

{{<matomeQuote body="商業的に有効な戦略はいくつかあるよ。<br>1．善意とマインドシェア。「最高」とか「最も革新的」として知られていれば、顧客を引きつけられる。<br>2．人材獲得。賢い人は賢い人と一緒に働くのが好き。<br>3．標準になる。技術が広く採用され、最も長く使用していれば、業界で最も有利な立場になれる。<br>4．欺瞞。内部的には「古い」が、まだ最先端の研究を発表することがある。<br>5．他者の仕事に便乗。アイデアを拡張する実験が高すぎる場合、スタートアップが試すかも。<br>6．市場リーダーを弱体化。業界に明確なリーダーがいる場合、オープンソースで協力してリーダーシップを低下させることができる。" userName="timClicks" createdAt="2025-04-15T09:53:58" color="#ff5733">}}

{{<matomeQuote body="＞Or there is a commercial logic that motivates sharing of information and intellectual property？ What logic is that？”<br>研究を共有することには、長期的な成長という正当な商業的理由があるんだよ。（オープンな研究がなければ、ディープラーニングはここまで進歩しなかった！） 短期的なことばかり考えてるからそう思うんだよ。" userName="anon373839" createdAt="2025-04-15T03:27:47" color="#ff33a1">}}

{{<matomeQuote body="それに、どうせ漏れるんじゃない？ただのアイデアで、人に頼んで開発するなら、人が出入りするわけだし。セキュリティにお金をかけるより、中途半端でも短期的な利益を得た方がマシかもね。" userName="ENGNR" createdAt="2025-04-15T07:07:08" color="">}}

{{<matomeQuote body="Googleみたいな会社が短期的なウォール街的な考え方をするのはよくあることだよね。論文の共有に関しては利他的に見えるけど、なんでだろう？本当に利他主義だとは思えないな。取引的な行動がそう見えるだけじゃないかな。" userName="esperent" createdAt="2025-04-15T04:13:05" color="#38d3d3">}}

{{<matomeQuote body="＞Googleみたいな会社が短期的なウォール街的な考え方をするのはよくあることだよね”<br>世界中の会社の中で、Googleが発見して公開したもののことを考えたら、最下位グループには入らないと思うけどね。" userName="robertlagrant" createdAt="2025-04-15T10:59:41" color="">}}

{{<matomeQuote body="この分野は急速に発展していて、進歩の多くはオープンソースモデルの小さな研究室で起こってる。いずれ安定するだろうけど、今はオープンでサポートすることで、進歩に近づき、落ち着いた時に有利な立場にいられるように賭けてるんだね。" userName="kmacdough" createdAt="2025-04-15T09:14:47" color="#785bff">}}

{{<matomeQuote body="利他主義じゃないって！相互利益を通じて経済的な利益を追求する、良いビジネスだよ。" userName="anon373839" createdAt="2025-04-15T07:43:14" color="#ff33a1">}}

{{<matomeQuote body="人は利他的かもしれないけど、会社ではそうはいかないこともあるよね。CEOの決定は株主の財産に影響を与えるから、自由に利他的な目標を追求できないんだ。<br>Dodge v. Ford Motor Co.はアメリカの重要な判例だって聞いたよ。<br>https://en.m.wikipedia.org/wiki/Dodge_v._Ford_Motor_Co" userName="avodonosov" createdAt="2025-04-15T05:50:01" color="">}}

{{<matomeQuote body="最近の裁判所は、会社が表面上は利他的な行為が実際には株主価値にとって長期的に良い理由を説明するのを広く認めてる。Fordがやったことをやりたい人は、本当の理由を黙っておけばいいんだ。" userName="owisd" createdAt="2025-04-15T18:27:38" color="#ff33a1">}}

{{<matomeQuote body="興味深いね。何か特定の裁判例を知ってる？<br>上のWikipediaのリンクは https://en.m.wikipedia.org/wiki/Shareholder_primacy につながっていて、最後の段落に「そのドクトリンは後に衰退した」と書いてあるね。たぶんあなたの言う通りだけど、具体的な事例について知りたいな。" userName="avodonosov" createdAt="2025-04-15T20:30:53" color="">}}

{{<matomeQuote body="みんな利益を得て、顧客も投資も増える。" userName="andai" createdAt="2025-04-15T05:14:36" color="#38d3d3">}}

{{<matomeQuote body="ACLとかNeurIPS、ICLRみたいなAIの専門機関があるから、こういうことが起こるんだよ。全部オープンソースにしないといけないし、アクセスにお金もかからない。これは急速なイノベーションのための理想的なオープンな学術環境なんだ。計算手段の民主化に怒る人たちからの攻撃を防がないと。<br>それに、AIには著作権廃止論者がたくさんいる。特に自分の情報を無料で公開することに喜びを感じてる人も多いんだ。<br>Aaron Swartzの幽霊がこの分野の研究者全員に乗り移ってるんだ。" userName="Der_Einzige" createdAt="2025-04-14T22:06:43" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="マジで、GoogleはTransformerが最終的に何に使われるか、ちゃんと評価しなかったんじゃない？元々はseq2seqの改良として翻訳のために作られたんだよね？翻訳のためであって、思考のためじゃなかったはず。ある意味、今でも翻訳がメインで、他の能力はパラメータが大きくなった時に偶然見つかった副作用なんじゃないかな？" userName="larodi" createdAt="2025-04-15T01:18:57" color="">}}

{{<matomeQuote body="世界のトップ研究者たちは、自分たちの研究成果をオープンにしたいってことなんじゃないかな。" userName="bcoughlan" createdAt="2025-04-14T21:31:03" color="#ff5733">}}

{{<matomeQuote body="Ilyaは違うよ。彼はクローズドソースと検閲の強い支持者だよ。" userName="behnamoh" createdAt="2025-04-14T23:21:32" color="">}}

{{<matomeQuote body="彼もただの一人に過ぎないよ。たまたま、この分野がゴールドラッシュになった時に一番有名な科学者だったってだけで、彼以前の人たちの肩に乗って築かれたものなんだから。彼らの発見も同じくらい重要だよ。" userName="esperent" createdAt="2025-04-15T04:15:12" color="">}}

{{<matomeQuote body="Totally Safe Intelligenceが、Totally Open AIと同じ関係にならないと良いけどね。" userName="Zambyte" createdAt="2025-04-15T11:00:59" color="">}}

{{<matomeQuote body="みんなが君の古いものをコピーすればするほど、君にとっては有利だよ。だって、みんな必ず君に遅れを取るからね。" userName="lofaszvanitt" createdAt="2025-04-14T20:31:29" color="">}}

{{<matomeQuote body="これはGoogleのビジネスモデルに関係あるかも。Googleの主要事業である検索エンジンと広告は、どちらもオープンなウェブのエコシステムに依存してる。だから、Googleはずっとオープンソースやオープンなウェブに友好的な態度を維持してきた。ChromiumとかNoto fonts、Go、Flutterとかもそう。オープンなウェブに役立つインフラツールを提供することで、Googleは検索可能なコンテンツと広告のリーチを拡大してる。ウェブのエコシステム全体が恩恵を受けると、Googleも最終的に利益を得られるってわけ。このモデルは、みんなが受益者であり、自然と貢献者になるオープンソースコミュニティの哲学とも一致してるんだよね。" userName="Kholin" createdAt="2025-04-15T00:16:20" color="#785bff">}}

{{<matomeQuote body="主要な研究機関には共通点が一つある。それは、ほぼ無制限のデータと金を持っていること。でも、無制限じゃないのは才能とアイデアなんだ。だから、「すべてのアイデアを雇う」必要がないようにしてるんだね。" userName="0x008" createdAt="2025-04-15T05:43:56" color="#45d325">}}

{{<matomeQuote body="研究成果の発表を許可しないと、優秀な人材はみんな辞めていくよ。俺も昔、そういう制限の多い環境で働いてたけど、長くいる価値のある人はいなかったな。" userName="choonway" createdAt="2025-04-15T08:05:52" color="#ff5733">}}

{{<matomeQuote body="注目すべき論文ではあるけど、Transformerが最終的にブレイクスルーになるとは誰も予想してなかったってことは覚えておいた方がいいよ。" userName="bobxmax" createdAt="2025-04-15T08:57:27" color="">}}

{{<matomeQuote body="Transformerはただの例だよ。企業が情報を共有するのは今に始まったことじゃないってこと。特に今は”AI”がめっちゃ盛り上がってるし。" userName="avodonosov" createdAt="2025-04-16T00:39:47" color="">}}

{{<matomeQuote body="2017年当時は、AIってまだ製品化されてなかったじゃん？Transformerを作った人たちは研究者で、研究結果を発表するのが当たり前だったんだよね。" userName="nialv7" createdAt="2025-04-15T09:50:26" color="#785bff">}}

{{<matomeQuote body="Deepseekの生き残りは、どれだけ話題になるかにかかってるんだよ。一発当てただけじゃ投資家からもっとお金を引き出せないし。色んなツールとか革新的な発見でAIエコシステムに深く関わっていく方が、最初の成功を秘密にしておくよりもずっと得策だと思うぜ。" userName="xwolfi" createdAt="2025-04-14T23:49:11" color="#ff5c5c">}}

{{<matomeQuote body="Deepseekは話題になんなくても大丈夫。今はビリオネアの創業者に資金援助してもらってるから。" userName="WiSaGaN" createdAt="2025-04-15T02:14:09" color="">}}

{{<matomeQuote body="＞なんでGoogleはTransformerのアーキテクチャを公開したんだろ？自分たちだけで使ってればよかったのに。<br>広告で稼いでるからだよ。AIモデルからじゃないんだよね。Metaも同じ。OpenAIはAIモデルで稼ごうとしてるから、GoogleとかMetaに価格競争で負けちゃうんだ。" userName="runeks" createdAt="2025-04-15T07:52:42" color="#38d3d3">}}

{{<matomeQuote body="DEEPSEEKっていう会社名が示す通り、あそこは商業的な会社でAIに投資してるけど、創業者はもっと大きな目標を持ってるんだよ。お金はただの数字で、もっと色々やりたいんだって。特にDEEPSEEKではね。" userName="HH_GU" createdAt="2025-04-15T07:51:18" color="">}}

{{<matomeQuote body="もしGoogleがTransformerを発表してなかったら（情報漏洩もしなかったとして）、今のLLMは存在しなかっただろうね（Googleのも含めて）。誰も得しなかったと思うよ。" userName="victorbjorklund" createdAt="2025-04-15T12:46:19" color="#785bff">}}

{{<matomeQuote body="Deepseekは商業AI企業じゃないよ。ヘッジファンドの趣味みたいなもんで、片手間でやってるんだって。名誉とか楽しみのためにね。" userName="buyucu" createdAt="2025-04-15T11:12:24" color="">}}

{{<matomeQuote body="「オープンソースコミュニティが興味を持ちそうなものがあるんだけど、うちの会社以外じゃ動かないくらいぐちゃぐちゃで、公開してもちゃんとメンテする人員がいないんだよね」って会社、いっぱいあると思うよ。<br>「メンテしません。フォークはご自由に！」って書いて、とにかくオープンソースにしてほしい。" userName="londons_explore" createdAt="2025-04-14T23:08:20" color="#ff5c5c">}}

{{<matomeQuote body="残念ながら、今のオープンソースの状況じゃそれは難しいんだよね。権利ばかり主張するユーザーが山ほどいて、オープンソース化されたプロジェクトを食い物にするんだ。個人でメンテしてるなら逃げられるけど、企業だとFOSSプロジェクトがきちんと動いてないことによるイメージダウンの方が、オープンソース化するメリットより大きくなっちゃうんだよ。" userName="lolinder" createdAt="2025-04-15T03:00:16" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="issueとかフィードバックチャンネルを全部disableにすればいいじゃん。会社のオープンソースライブラリの状態を見て判断するけど、会社のポジショニング次第だよね。Facebookはreactをデフォルトのフレームワークにしようとしたから、ダメなときは厳しく見られるのは当然。でも、ちゃんと免責事項があれば、みんな期待すること変わるんじゃないかな。" userName="golergka" createdAt="2025-04-15T03:24:56" color="">}}

{{<matomeQuote body="そうかもね。でもFOSSコードのユーザーってめっちゃ理不尽なこと言うやついるからなー。" userName="lolinder" createdAt="2025-04-15T05:56:07" color="">}}

{{<matomeQuote body="シンプルなウェブサイトにtarballのURL置くだけで良くね？コード共有するのにコミュニティとの交流なんていらないっしょ。" userName="boredatoms" createdAt="2025-04-15T05:15:40" color="">}}

{{<matomeQuote body="＞オープンソース化されたプロジェクトに寄生する、権利ばかり主張するユーザーってめっちゃ多いんだよね。<br>AOSPで経験済みだけど、すぐには変わらないと思う。残念ながら、オープンソースのエチケットを学ぶnoobなんていないと思うよ。" userName="3abiton" createdAt="2025-04-15T06:48:06" color="">}}

{{<matomeQuote body="いいね。DeepSeekは良いエンジニアリングしてるよね。これからも期待してる。" userName="oldgun" createdAt="2025-04-14T17:15:33" color="#38d3d3">}}

{{<matomeQuote body="マジそれな。アメリカがオープンソースに課税する方法考え出す前にやってほしいわ。" userName="jimmydoe" createdAt="2025-04-14T18:40:33" color="">}}

{{<matomeQuote body="https://www。instagram。com/reel/DIVBmgUvFsN/" userName="fragmede" createdAt="2025-04-14T22:33:30" color="">}}

{{<matomeQuote body="大量のAIツールとかモデルのオープンソース公開って、中国がアメリカの支配に対抗するための戦略だったりするのかな？市場にとっては良いことだけど。" userName="holoduke" createdAt="2025-04-14T19:29:08" color="#785bff">}}

{{<matomeQuote body="もしかしてDeepSeekって実は最初のGenAIで、オープンソース化こそが選んだ道だったりして？生物の情報が新しい場所で増殖しようとするみたいに。ウイルスとか菌類には利用規約とかないしね。:)" userName="jeffrallen" createdAt="2025-04-15T05:21:40" color="#785bff">}}

{{<matomeQuote body="2ヶ月くらいコードのアシスタントとして使ってみたけど、無料のChatGPTより全然ダメだった。バグが多いし、質問を理解してくれないし、間違ったコード生成するし。誘導しても問題を修正できないことが多いから、自分で全部やった方がマシ。その2ヶ月でGPTも改善されて、生成速度も速くなったし、質も良くなった。" userName="animal531" createdAt="2025-04-15T10:34:43" color="">}}

{{<matomeQuote body="それ面白いね。俺の経験と真逆だわ。何のコーディングしてるの？DeepSeekのローカルモデルで自作のコーディングアシスタント作ったの？それともウェブ経由でプロンプトしてる感じ？" userName="CrimpCity" createdAt="2025-04-15T10:38:44" color="">}}

{{<matomeQuote body="わかるー。推論モデルめっちゃ使えるよね。" userName="tvshtr" createdAt="2025-04-16T05:55:29" color="#ff5733">}}

{{<matomeQuote body="ローカルで色々いじりたい気持ちもめっちゃわかるけど、金があるならSaaS使いたいんだよね。新しいアプリ作ることに時間使いたいし、セットアップとかインフラとか触りたくない。ChatGPTが今の機能維持してくれるなら、もっと払ってもいい。DeepSeek以降、機能も充実してるし（モデルも頻繁に出るし、画像生成もマジ最強だし、推論も6ヶ月前に比べてめっちゃ速いし、細かいところも色々改善されてる）。<br>でもたまに罪悪感感じるんだよね。こんなすごい力があるのに、アイデア不足と実行力不足で全然活かせてないっていう。" userName="gizmodo59" createdAt="2025-04-15T11:23:10" color="#ff5733">}}

{{<matomeQuote body="DeepseekはOpenAIが言ってること全部実現してる感じ。" userName="buyucu" createdAt="2025-04-15T11:17:21" color="#ff33a1">}}

{{<matomeQuote body="DeepSeekだけがOpenAIの隣で「AGI目指してます」って堂々と言える会社だよね。" userName="wseqyrku" createdAt="2025-04-16T03:20:23" color="">}}

{{<matomeQuote body="要するに「vLLMをフォークしたけど、もうメンテできなくなっちゃった。だから今度はちゃんと公開する形で作り直すわ」ってことね。" userName="rfoo" createdAt="2025-04-14T15:37:33" color="">}}

{{<matomeQuote body="彼らのセットアップはめっちゃメンテ大変そうだけど、払う価値はあると思う。ハードウェアの性能を最大限に引き出すための最適化を色々してるんだろうね。特定の構成のマシン使ってたり、一部の処理で100％スピードアップするような複雑なハックがあったりしても驚かない。でも、マザーボードの構成がちょっと違うだけでそのスピードアップが消えちゃうとかね。ファームウェアのハックもしてる可能性あるし、スケールメリットがあるからこそできるけど、小規模でやるのは危険で難しいかも。(ファームウェアとクラスタレベルの最適化が組み合わさってて、単独では役に立たないとか逆効果になる場合もあるだろうし)<br>似たようなハードウェア持ってても、そのコードが役に立つとは限らないし、解決策のスケッチだけ参考にして自分で実装した方がいいかも。大規模なクラスタ持ってるなら、どうせすぐに元取れるし。" userName="lukeschlather" createdAt="2025-04-14T16:24:31" color="#ff5c5c">}}

{{<matomeQuote body="メンテできないって言うのはちょっと言い過ぎじゃない？社内でメンテできる状態と、一般公開できる状態の間には大きな隔たりがあると思うよ。" userName="Havoc" createdAt="2025-04-14T16:09:52" color="">}}

{{<matomeQuote body="＞Codebase Divergence：うちのエンジンは1年以上前のvLLMの初期フォーク版をベースにしてる<br>同じような状況ならわかると思うけど、vLLMは1年前と比べてめっちゃ変わってるんだよね。つまり、1年以上リベースしてないってことで、それはしたくないんじゃなくて、実質的にできないからだと思う。<br>もちろん、現状維持はできるだろうけど、コミュニティのものを移植するのはどんどん難しくなるよね。" userName="rfoo" createdAt="2025-04-14T18:33:41" color="#38d3d3">}}

{{<matomeQuote body="彼らは最適化を公開するために時間と労力を費やすつもりなんだよ。彼らが変更を内部に留めておく方が良かった？" userName="maknee" createdAt="2025-04-14T16:32:14" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="これって検閲を実装する一つの方法って感じがするな。" userName="nashashmi" createdAt="2025-04-14T19:03:02" color="">}}

{{<matomeQuote body="LLMが潜在空間からトークンを生成してるだけで知能があるって言えるのかって議論があるよね。でも、たった5つのトークンしか吐き出せない人間でも「知的」って見なされるんだから、なんか考えさせられるな。" userName="sampton" createdAt="2025-04-14T19:21:50" color="">}}

{{<matomeQuote body="へへへ" userName="xwolfi" createdAt="2025-04-14T23:50:00" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
