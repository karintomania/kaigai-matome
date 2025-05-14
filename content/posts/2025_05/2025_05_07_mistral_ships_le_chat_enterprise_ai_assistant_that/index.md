+++
date = '2025-05-07T00:00:00'
months = '2025/05'
draft = false
title = 'Mistralから待望の企業向けAI Le Chatが登場！オンプレミスで利用可能に'
tags = ["AI", "エンタープライズ", "オンプレミス", "LLM", "データプライバシー"]
featureimage = 'thumbnails/purple8.jpg'
+++

> Mistralから待望の企業向けAI Le Chatが登場！オンプレミスで利用可能に

引用元：[https://news.ycombinator.com/item?id=43916098](https://news.ycombinator.com/item?id=43916098)




{{<matomeQuote body="データのプライバシーは企業にとってマジで大事だから、これはヤバいと思うんだよね。ゲームチェンジャーだよ。そうそう、MacでDocker使ってMistralローカルで動かせるらしいよ。" userName="codingbot3000" createdAt="2025/05/07 17:41:51" color="#45d325">}}




{{<matomeQuote body="マジでそれな。プライバシー問題でクラウド無理だから、ウチの会社でもオンプレミスで試してるんだよね。アメリカの会社じゃないのもポイント高い。<br>ローカル実行はオープンモデルだけじゃない？無料モデルはよく使うけど、商用モデルは使ったことないんだ。" userName="kergonath" createdAt="2025/05/07 18:08:16" color="#45d325">}}




{{<matomeQuote body="皆どうやってAIをコード書いてるのか不思議だよ。外部AI使うの許可してくれたクライアントいないんだもん。だから俺は検索エンジン代わりに使ってるだけ。コードそのものはAIに入れたり出したりできないな。" userName="distances" createdAt="2025/05/07 19:05:15" color="">}}




{{<matomeQuote body="クライアントの許可なしにAIでコード書くのは著作権やNDA的にリスク高いと思うよ。AI生成コードの所有権が微妙だし、会社のコードを外部AIに送るのは機密保持違反になるかも。俺は弁護士じゃないけど、やめといた方がいいと思うな。LLMはStackOverflowみたいに、会社のコードは絶対に入れない使い方してるよ。" userName="fhd2" createdAt="2025/05/07 19:11:06" color="#ff5c5c">}}




{{<matomeQuote body="MacでMistral Small 3.1を動かす方法他にもあるよ。Ollama（簡単）とMLXでできるんだ。Ollamaは15GBのでOK。MLXはHugging Faceにある8bitモデルをコマンドで使えるよ。Ollamaは画像入力もいける。詳しいコマンドやリンク貼っとくね。" userName="simonw" createdAt="2025/05/07 21:02:42" color="#45d325">}}




{{<matomeQuote body="Simonさん、メモリ16GBのM4 Mac Miniでコーディングに使える小さいモデルでおすすめありますか？" userName="indigodaddy" createdAt="2025/05/07 21:38:33" color="">}}




{{<matomeQuote body="それは結構キツい質問だね。アプリ動かすメモリも必要だし。<br>Qwen 3 8BならMLXで5GBメモリで動くけど、コーディングに使えるかは微妙かも。<br>正直、16GBならホスト型LLM（Claude 3.7 Sonnetとか）の方が安くていいと思うよ。" userName="simonw" createdAt="2025/05/07 21:42:54" color="#45d325">}}




{{<matomeQuote body="M2 Max MacBook Proの64GBメモリならどうですか？コーディング用のローカルモデルでおすすめありますか？<br>前にDeepSeek R1試したけど、データいっぱい落としたのにうまくいかなかったんです。もし64GB Macで動くDeepSeek R1のサイズとか、他の良いローカルLLM知ってたら教えて欲しいです！" userName="codetrotter" createdAt="2025/05/08 01:40:22" color="">}}




{{<matomeQuote body="AIコードの著作権がヤバいって本気で言ってる人いないでしょ。もし本当に問題なら、とっくに色んな会社がAIでコード書くの止めようと動いてるはずだよ。<br>何百億ドルも投資してAIコード生成を進めてる大企業があるのに、著作権心配するのは非現実的じゃない？リスクじゃないと思うな。" userName="jstummbillig" createdAt="2025/05/07 21:03:10" color="#ff5c5c">}}




{{<matomeQuote body="Qwen3とかDeepseekとか、もっとすごいモデルが今動くのに、コレ（Mistral Le Chat）出す意味あるの？" userName="v3ss0n" createdAt="2025/05/07 20:58:54" color="">}}




{{<matomeQuote body="アメリカとかヨーロッパが中国製のモデル使うのって、目先のことしか考えてないな。人気が出たら長い目で見て結構ヤバいコストがかかるって。中国がAIで勝つなんて、アメリカとかヨーロッパからしたら絶対ダメな結果じゃん。" userName="_bin_" createdAt="2025/05/08 01:58:06" color="">}}




{{<matomeQuote body="10年前にさ、みんながSOからコードコピペしてた時はどうよ？あの頃著作権とか気にしてた？多分してたのかもしれないけど、俺は覚えてないや。" userName="genghisjahn" createdAt="2025/05/07 19:59:16" color="">}}




{{<matomeQuote body="これってクラウドと何が違うの？スタートアップとか、コードはGithubに置いて、サービスの運用はAWSでやって、連絡は全部Gmailでしょ。LLMだけそんなに特別なのかな？" userName="shmel" createdAt="2025/05/07 19:44:21" color="#45d325">}}




{{<matomeQuote body="俺、Mistral Small 3.1が超お気に入りなんだよね（64GBのM2でも動くし）。Qwen 3もサイズ変えて色々試してみる価値あると思うよ。たださ、これらが一般的なコーディング作業で十分かって言われると分かんないんだよね。Claude 3.7 Sonnetとかo4-mini、Gemini 2.5 ProのAPIに慣れすぎちゃったからさ。" userName="simonw" createdAt="2025/05/08 03:45:57" color="#45d325">}}




{{<matomeQuote body="これって結局、何が証明できるかって話に行き着くよね。NN（ニューラルネットワーク）は説明できないし、裁判で証拠として見せるのは難しいだろうね。" userName="_bin_" createdAt="2025/05/07 21:17:52" color="">}}




{{<matomeQuote body="なんでそうなるの？アメリカ人が使いたくないのは分かるけど、ヨーロッパ人が？今の政治状況で、アメリカが openly ヨーロッパの土地を自分のものにしたいとか言ってるのに？俺だったらDeepSeekみたいな自分のとこで動かせるオープンソースのやつの方がいいわ。" userName="atwrk" createdAt="2025/05/08 08:46:13" color="">}}




{{<matomeQuote body="ヨーロッパ人の俺の意見なんだけどさ、LLMに情報聞く機会が増えてるから、本当の意味で民主的じゃない外国に、俺たちが手に入れる情報を選ばせちゃうのは賢いやり方じゃないと思うんだ。" userName="tigroferoce" createdAt="2025/05/08 11:08:27" color="">}}




{{<matomeQuote body="あとさ、MacのDockerモデルランナーの中でもMistralをローカルで動かせるぜ。<br>効率的に？macOSにはDockerがGPU使うためのAPIなんてないと思ってたんだけど。" userName="nicce" createdAt="2025/05/07 20:42:26" color="#38d3d3">}}




{{<matomeQuote body="そうなんだよね、まさにその通りだわ。俺はそんなに気にしないけど、ちょっとだけ効率は上がるかもね。でも時間で請求してるから、決まったやり方でやるのも全然平気だよ。" userName="distances" createdAt="2025/05/07 19:46:51" color="">}}




{{<matomeQuote body="ちょっと変わったアイデアなんだけどさ、家のネットワークで使う良い感じのLLMを動かしたいとしたら、色々なことに使えるモデルにはどのくらいの性能が必要？Raspberry Piとかでいける？古いThinkPadは？フルスペックの最新のMacbook？追記：あの昔のMac Prosとかは？" userName="martin_a" createdAt="2025/05/08 09:10:18" color="#ff5c5c">}}




{{<matomeQuote body="Macで16GBのunified memoryだと、ちゃんとしたコーディングモデルには小さすぎるな。そのマシンだと性能がかなり犠牲になっちゃうよ。たぶん1年後くらいには8GB VRAMに収まるもっと良いモデルが出るかもだけど、今はまだ無理。今、MacでコーディングLLM使うなら、標準はQwen 3 32bで、32gb memory以上のM1 macならすごく良く動く。Qwen 3 235bはもっと良いけど、128gb memory持ってる人は少ないしね。32bより小さいと、質がかなりガクッと落ちるのがわかるよ。16gb memoryならQwen 3 14b Q4_K_Mがベストな選択肢だろうけど、32bに比べると質はだいぶ悪いな。" userName="jychang" createdAt="2025/05/08 01:41:59" color="#ff5733">}}




{{<matomeQuote body="ピークメモリ使用量ってどうやって測るの？ Activity Monitorで見るだけ？ モデルごとにコンテキスト長が違うと、必要なメモリ量も違うはずなんだけど、ちゃんとした一覧情報が見当たらないんだよね（#weights * bitsみたいなざっくり計算以外で）。 LM Studioはモデルがメモリに収まるか警告は出してくれるけど、そんな正確じゃないしなー。" userName="aukejw" createdAt="2025/05/08 10:04:32" color="">}}




{{<matomeQuote body="証拠？あるよ。あなたが挑戦された時にした発言とかね。あとはコミットログも、ある程度は疑いを抱かせるかもね。まあ、「嘘をつくだけ」って言うかもしれないけど、法廷で気軽な嘘をつく人がどれだけいるかな？ 俺は絶対しないな。倫理観は置いといて、報復とか考えたら結構勇気がいることだよ。" userName="fhd2" createdAt="2025/05/08 05:14:28" color="">}}




{{<matomeQuote body="これはコーディング用LLMを提供する側からの「Kool-aid」（盲信）だと思うな。Githubでコードが収集されて、BigCorp$の学習システムに使われてることに、たくさんの人がめちゃくちゃ怒ってるんだから。親コメントはさ、1200年頃にLondon北部の城にいる、ちょっと偉そうなフランス人と、城の外でボロをまとって農具持って怒ってる地元の人々っていう状況を思い出すよ。武装した塔の衛兵がもう一人に「誰もこの土地の支配について真剣に異議を唱えてないよ”って言ってるみたいな発言だね。" userName="mistrial9" createdAt="2025/05/08 00:41:01" color="">}}




{{<matomeQuote body="Qwen使うのに何使ってるの？ 俺はLMStudio入れて、VSCodeでContinue使ってるんだけど、Cursor’s IDEとかGitHub Copilot pluginみたいに機能が豊富って感じがしないんだよね。" userName="chedabob" createdAt="2025/05/08 09:24:07" color="">}}




{{<matomeQuote body="vscodeでcontinueとollamaの標準設定で、必要なAIコーディングサポートの99%はもう足りてると思うな。cursorみたいな商用製品よりも良いかも。特に俺が使ってるプロジェクトとか言語ではね。使ってなかったMac Studioを小さなAIステーションとして使ってるよ。コードベースを埋め込むこともできるけど、まだ必要なかった。もっと性能求めるなら強いGPU積んだPC買えばいいけど、オートコンプリートくらいならこれで十分だよ。" userName="raxxorraxor" createdAt="2025/05/08 08:56:00" color="#ff5733">}}




{{<matomeQuote body="AIが生成したものの所有権について、少なくともUSでは、著作権がなく所有権も持てない可能性がかなり高いみたい。つまり所有権も持てないってこと！ これが法律的にどう影響するかは、まだこれからシステムを通して明らかになっていくところだけどね。" userName="reverius42" createdAt="2025/05/07 22:57:47" color="#38d3d3">}}




{{<matomeQuote body="ゲームチェンジャーっていうのはちょっと言い過ぎかな。すでにオープンソースのツール（Ollama, Open WebUI等）がたくさんある分野だし、既存のものでも多くの機能は実現できてるよ。Le Chatはエンタープライズ向けに上手く作るんだろうけど、鍵は既存の企業システムとのシームレスな連携だね。それが上手くできなければ、他の自己ホスト型ツールと大差ないかも。" userName="lolinder" createdAt="2025/05/07 23:36:57" color="#45d325">}}




{{<matomeQuote body="クライアントってAWSとかAzureとかGCP使ってないの？ あそこならプライベートLLMをすぐ使える状態で提供してるけど。" userName="crimsoneer" createdAt="2025/05/08 04:22:38" color="">}}




{{<matomeQuote body="俺はK8Sでollamaとopen-webuiをセットアップして使ってるから、多分これは使わないと思うけど、dockerが1ヶ月前にこれ（Docker Model Runner）を発表したよ：https://www.docker.com/blog/introducing-docker-model-runner" userName="jt_b" createdAt="2025/05/07 21:27:31" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「時間で請求してる」って部分には同意できないかな。もちろんそうだけど、うちみたいな小さなエージェンシーは、対価として価値を提供してるって考えてるんだ。クライアントには予算があるし、ソフトウェア開発から得られるメリットも限られてる。他のエージェンシーとか、クライアント社内のチームと競争するには、全体的に見てもっと費用対効果が高いサービスを提供する必要があると感じるね。でも、コードをタイプするだけじゃないし、そのコーディングですらLLMでそんなに高速化しないんだ、質や安定性が大事ならね。だから、それでも全然大丈夫だと思うよ。" userName="fhd2" createdAt="2025/05/07 19:57:47" color="">}}




{{<matomeQuote body="Mistralはさ、StabilityとかEleuther、Aleph Alpha、Nyonic、たぶんBlack Forest Labsとか、政府資金の共同研究とか、他の欧州の超期待されてたAIスタートアップ／集団が達成できなかったことを本当に成し遂げたね。 Mistralよりずっと前に存在してたところも多かったのにさ。彼らにおめでとう、すごい仕事だ。" userName="beernet" createdAt="2025/05/08 11:08:42" color="#ff33a1">}}




{{<matomeQuote body="俺には彼らが一般的なAIコンサルティング＆ソリューション会社になったように感じるな。それが悪いビジネスってわけじゃないけど、特に「EU製」って宣伝文句から利益を得られる可能性があるしね（政府との契約とか規制とか、色々あるだろうけど）。もっと性能が良くてコスト効率の良いオープンソースモデルとインフラを使えば、似たようなソリューション（オンプレミス）はもうデプロイできるんだよ。ここでMistralが提供してるのは、そのデプロイを代わりにやってくれることだけど、完全にオープンなスタックで同じことをしてる他の会社を止めるものは何も無いんだ。それに、そういう会社はR＆Dにお金を無駄にしないっていうメリットもあるしね。" userName="Palmik" createdAt="2025/05/08 13:25:36" color="#785bff">}}




{{<matomeQuote body="それ、うちがHopsworksでやってることだわ。HopsworksはEU製のAIシステム開発・運用プラットフォームなんだ。うちにはDeepSeek-v3とかLlamaモデルを動かしてる顧客がいるよ。これにChat UIをくっつけて、Chatアプリとして主権AI市場向けの既製品として売るなんて考えたこともなかったけど、ありかもね。" userName="jamesblonde" createdAt="2025/05/08 16:35:12" color="">}}




{{<matomeQuote body="俺は部外者だけど、上に挙げられてるスタートアップは全然聞いたことなかったんだ。Mistralはopenai/anthropicが爆発的に有名になった後、突然現れて、すぐに技術力で3番目の有力候補だって言われるようになったんだよ。もしかしたら騙されてたのかもしれないけどね。" userName="agumonkey" createdAt="2025/05/08 13:06:01" color="">}}




{{<matomeQuote body="Black Forest LabsはFLUXを作ったところで、一時期は入手可能な最高のオープン画像モデルだったんだ（そして一般的にかなり強力な画像モデル）。とは言え、今は中国のモデルの波とか、自己回帰型画像モデルの登場で、それがどれだけ真実であり続けるかは分からないけどね。" userName="danielbln" createdAt="2025/05/08 13:23:18" color="">}}




{{<matomeQuote body="Mistralってここで何か特別なことしてる？ Llamaモデルはオープンソースだし、Cohereはオンプレミスで動くとかさ。" userName="bobxmax" createdAt="2025/05/08 14:53:24" color="">}}




{{<matomeQuote body="市場での牽引力を示して、製品開発を実行に移したこと。他の挙げられてた会社はどこもそこに到達しなかったんだよ。" userName="beernet" createdAt="2025/05/12 08:51:42" color="#45d325">}}




{{<matomeQuote body="この発表はさ，Hacker Newsで話されてる新しい独自モデルのMistral Medium 3と一緒に出たんだって．<br>詳しくはここ見てね．https://news.ycombinator.com/item?id=43915995" userName="85392_school" createdAt="2025/05/07 17:32:14" color="#45d325">}}




{{<matomeQuote body="うーん，よくわかんないなー．<br>なんかローカルサーバーで使う機能っぽい話してるのに，最後はGCPで使えるって書いてあるし．<br>これって結局APIなわけ？企業が自分とこに置くモデル？それともソフトとモデルの組み合わせ？<br>企業間の”シナジー”みたいな言葉ばっかりで，結局何売ってるのかぜんぜんわかんないや．" userName="Havoc" createdAt="2025/05/07 23:39:08" color="#ff5733">}}




{{<matomeQuote body="あ，Google Cloud Marketplaceって言ってるね（Google Cloud Platformじゃなくて）．<br>たぶんここにリストされてるやつみたいだよ．https://console.cloud.google.com/marketplace/product/mistral...<br>ここにはね，”Managed Services are fully hosted， managed and supported by the service providers． Although you register with the service provider to use the service， Google handles all billing．”って書いてある．<br>だから俺の予想だと，Google Marketplaceは「見つけてもらう」のと「請求」のために使ってて，ホストされるオプションかオンプレミスを選ぶオプションを提供してるんじゃないかな．<br>うん，でも確かに分かりにくいってのは同意！" userName="frabcus" createdAt="2025/05/08 10:52:15" color="#ff5c5c">}}




{{<matomeQuote body="いろんなツールがさ，Google MarketplaceとかAWSの equivalent で請求できるのは，こういう理由なんだよ．<br>－ 他の請求とまとめて払えるから．<br>－ たぶん承認を得やすいんだろうね．<br>－ そして（少なくとも俺らの場合はこれが重要なんだけど），Google Cloud（とかAWS）の契約で決めた費用コミットメントを達成できるし，割引も維持できるからなんだ．<br> :)" userName="tecleandor" createdAt="2025/05/08 11:00:57" color="#38d3d3">}}




{{<matomeQuote body="俺はMistral応援してるんだけど，個人的にはさ，いろんなモデルにアクセスできることこそがマジで一番使える機能だと思うんだよねー．<br>コード書きたい時もあれば，文章書きたい時もあるし．それに，どのモデルも同じように作られてるわけじゃないしさ．" userName="_pdp_" createdAt="2025/05/07 18:25:32" color="">}}




{{<matomeQuote body="正直言うと，俺は「一つの汎用モデルで全部やっちゃう」ってアプローチが結局は勝つと思うな．<br>すっごく特別なタスクでもない限り，みんな「このモデルは何が得意で，あのモデルは何が得意で」なんてイチイチ考えたくないだろうし．" userName="the_clarence" createdAt="2025/05/08 04:07:02" color="">}}




{{<matomeQuote body="個人的には，人は「おしゃべりするモデル」じゃなくて，「何かをやってくれるエージェント」とやり取りしたいんだと思うよ．<br>で，エージェントってのは定義からして専門化されてるから，特定のモデルが必要になるはず．<br>Mistralだって，一番性能いいモデルが何でもできるわけじゃないのと同じで，全部のタスクに良いとは限らないんじゃないかな．" userName="_pdp_" createdAt="2025/05/08 10:20:32" color="#ff5c5c">}}




{{<matomeQuote body="エージェントはさ，今はプロンプトとかMCPで専門化されることが多くて，モデルそのもので専門化されることはどんどん少なくなってきてるんだよ．" userName="the_clarence" createdAt="2025/05/08 20:35:43" color="#ff5733">}}




{{<matomeQuote body="どのモデルを使ったらいいか判断するために，すっごく軽いモデルを先に置いておく，なんてこともできるんじゃない？" userName="sschueller" createdAt="2025/05/08 06:23:30" color="">}}




{{<matomeQuote body="そのアイデア，理論上はいいんだけど，実際はけっこう大変なんだ．特にみんなで使う環境だとね．今うちの職場でローカルLLMを試してるんだけど，まさにそれでモデルの入れ替え（スワッピング）が遅くて困ってるんだ．<br>VRAMに全部置けないと入れ替えが必要なんだけど，それがすっごく遅い．<br>ユーザーは待つの嫌がるから，すぐ使われなくなる可能性が高いよ．<br>これはMixture-of-Experts （MoE）を手動でやってるようなもんだけど，本物のMoEは内部でうまく処理するようになってる．<br>遅延を減らすには大量のGPUとVRAMが必要で，コストも複雑さも増えるし，リソースも無駄になりがちだよ．" userName="sReinwald" createdAt="2025/05/08 08:02:07" color="#785bff">}}




{{<matomeQuote body="Semantic router見た？あれならタスクに合った適切なモデルを素早く見つけられるよ。LLMをルーティングに使うのは良くないって意見には同意。金かかるし、時間かかるし、間違ったルートを選びがち。" userName="gustofied" createdAt="2025/05/08 13:01:49" color="">}}




{{<matomeQuote body="Semantic routerは気になってるけど、うちの今のボトルネックはルーティング速度じゃなくてモデルの入れ替えなんだ。Gemma3 4Bで十分だし、これは個人的な探索だから最適化に必死じゃない。Semantic routerは商用APIでコスト削減に良さそう。簡単な処理を安いモデルに振れば、Claude 3.7で.csvフォーマットとかいう無駄遣いをなくせるよ。" userName="sReinwald" createdAt="2025/05/08 16:55:39" color="#ff5c5c">}}




{{<matomeQuote body="良いアイデアだね。そしたら、その前に別の軽いモデルを置いて、どのモデルを使えばどのモデルを使うか分かるかを判断するためにどのモデルを使うか判断させる、とかできるじゃん。LLMだらけになるね、 all the way down。" userName="F-Lexx" createdAt="2025/05/08 07:53:53" color="">}}




{{<matomeQuote body="俺の推測だと、これは basically AIプロバイダーがゆっくり移行してる方向性だと思うな。そして、これはモデルが内部的にMixture of Experts (MoE)で既にやってることみたいだね。" userName="the_clarence" createdAt="2025/05/08 20:36:34" color="">}}




{{<matomeQuote body="つまりさ、汎用モデルってのはある意味で既にこれやってんだよ、選択したエキスパートにルーティングするって。これってアンサンブル学習のかなり基本的なコンセプトで、実質MOEのエキスパートってそういうことじゃん。もっとルーティングの層を重ねるのもできるけど非効率だね。最適なソリューションは最終的に、 hyper-focusedなエキスパートモデルを訓練・公開する会社が出てきて、ベンダーがそれらを組み合わせて使うようになると思う。スマホ部品みたいに、いろんな会社から買って最高のモデルを組み立てるイメージ。AppleだってSamsungのチップ使ってるじゃん。" userName="promiseofbeans" createdAt="2025/05/08 11:37:51" color="#ff33a1">}}




{{<matomeQuote body="俺もAPIで色々なプロバイダー（Mistral, Anthropic, Gemini, OpenAI）にunified clientでアクセスしてるよ。CLIで’aichat’使ってるんだけどめっちゃ便利。モデル切り替えとかログとか簡単。APIは学習に使わない保証付きのはずだし、何よりめっちゃ安い。日に何度も使って月に数€くらいだね。" userName="downsplat" createdAt="2025/05/08 13:00:16" color="#ff5733">}}




{{<matomeQuote body="Gemini’s free tierは絶対にあなたの入力を学習に使うよ［1］。Mistral’s free tierも同じ［2］。AnthropicとOpenAIはデータ収集にオプトインすると割引価格になったり無料トークンをもらえたりする。［1］： https：//ai.google.dev/gemini-api/terms#data-use-unpaid<br>［2］： https：//mistral.ai/terms#privacy-policy" userName="Deathmax" createdAt="2025/05/08 13:13:29" color="#45d325">}}




{{<matomeQuote body="ああ、つまり有料のAPI accessってことね。credit card登録すれば、月末になってもpeanutsみたいなもんだよ。Sorry I didn’t specify。無料サービスだと自分がproductになるって良い reminderだね！" userName="downsplat" createdAt="2025/05/08 13:27:01" color="">}}




{{<matomeQuote body="俺、le chat使うのめっちゃ好き。openaiより情報渡すのずっと安心だって感じる。" userName="I_am_tiberius" createdAt="2025/05/07 19:05:43" color="">}}




{{<matomeQuote body="＞世界クラスのAIエンジニアリングチームが、価値実現までず～っとサポートしてくれるってさ。" userName="dlachausse" createdAt="2025/05/07 17:56:54" color="">}}




{{<matomeQuote body="なるほどね。でもきっと結構高いでしょ。それならそのお金で、オープンソースモデルを手伝ってくれる人を雇えばいいじゃん。" userName="victorbjorklund" createdAt="2025/05/07 23:08:55" color="">}}




{{<matomeQuote body="多分「責任の所在を一つにする」っていう考え方がここには当てはまるんだろうね。特にヨーロッパではさ。" userName="disgruntledphd2" createdAt="2025/05/08 10:22:19" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="メール解析か… 紹介動画では他のツールと一緒にメール検索できるって言ってたね。<br>どんなメールクライアントに対応してるの？これに関連するツールで同じことできるのある？" userName="adamsiem" createdAt="2025/05/12 18:57:55" color="#ff33a1">}}




{{<matomeQuote body="オンプレミス版のハードウェア要件について全然書いてないね。どんなGPU？何個必要？ディスク容量は？" userName="starik36" createdAt="2025/05/07 21:28:49" color="#785bff">}}




{{<matomeQuote body="多分柔軟なんじゃないかな。Mistralはコンシューマー向けハードでも動く小さいモデルも作ってるし、必要に応じてスケールアップ・ダウンできるのかもね。提供側で何ができるかにもよるだろうけど。" userName="tootie" createdAt="2025/05/08 00:47:17" color="#38d3d3">}}




{{<matomeQuote body="僕、スマホでMistralモデル動かしてるよ！" userName="rowanajmarshall" createdAt="2025/05/08 10:46:00" color="">}}




{{<matomeQuote body="もうちょっと詳しく教えてよ？それってGPUコネクタ付きのデカいスマホか小さいラップトップ？それとも小さいモデルなの？" userName="dr_kretyn" createdAt="2025/05/08 15:29:45" color="">}}




{{<matomeQuote body="面白いね。ヨーロッパが本気で対抗しようとしてるのが珍しい。そういうの応援したいな。" userName="guerrilla" createdAt="2025/05/07 18:20:11" color="">}}




{{<matomeQuote body="Mistralってぶっちゃけヨーロッパ全体じゃなくてフランスだよね．ヨーロッパにはいくつか計画があるみたいだけど，見る限り本気で競争できるものを作るのが目的じゃないっぽい．目的はEUのデータを企業のためにEU内に留めることで，一方会社に強制されてないユーザーはみんなUSかChinaにデータを送ってるし．" userName="fortifAI" createdAt="2025/05/08 08:34:09" color="">}}




{{<matomeQuote body="最後にチェックしたけどFranceってEuropeにあるよね．CaliforniaにあるからってGoogleとかAppleはAmericanじゃないって言うようなもんでしょ．" userName="blitzar" createdAt="2025/05/08 10:59:01" color="">}}




{{<matomeQuote body="このスレッドの愛国的とかUS州に例える言い方って，US中心的な見方だと思うんだ．誰もEUを連邦国家なんて思ってないし，”ヨーロッパ人”を統一された国民だなんて思ってないよ．EUはせいぜいバカげたことから守ってくれるくらい．NAFTAとかfive eyesに似てるかな．文化的忠誠もUSとanglosphereの関係に似てる．最近は色々急速に変わってるけど．" userName="klabb3" createdAt="2025/05/08 12:46:37" color="#ff5c5c">}}




{{<matomeQuote body="うん，比喩には違いがあるよね．それに議会ってのは密室での握手よりはマシだよ，完璧じゃなくてもね．州と比較するのはもっと無理があるな．UKは深刻な報復どころか軍事衝突もなくEUを出たじゃん．もしTexasとかCaliforniaが本気で分離しようとしたらどうなると思う？" userName="klabb3" createdAt="2025/05/08 17:49:01" color="">}}




{{<matomeQuote body="このコメントは来ると思ってたよ．MistralはChatGPT，Claude，Llama，Gemini/Gemmaの中でずっと最下位か，少なくともそれに近いね．個人的な経験から，Mistralがひどくて他のLLMがずっと良いのを知ってるんだ．<br>最高のならChatGPT，ローカルならLlama（たぶんGemma），会社のTOS破るようなことならMistral．．．でも2025年にはdeepseekに抜かれそう．<br>Europe以外の人はLLMに愛国心なんてないから，最高のを使うだけだよ．Mistralにはほとんど使い道がないね．" userName="resource_waste" createdAt="2025/05/07 18:48:59" color="#45d325">}}




{{<matomeQuote body="＞ローカルで使いたい？ Llama（たぶんGemma）<br>LlamaはQwenに替えて，Gemmaはまだまだだね．<br>＞Mistralはずっと最下位か．．．<br>Mistralは長いこと”主力オープンウェイトベースモデル”だったし，賢いポジショニングでまた戻ってくるかも．<br>今はリードしてないけど，外部から見ると（Cohereみたいに）生き残るために革新的なビジネスモデルを探してて，PMFに到達して夢を続けようとしてるのが立派だと思う．この段階ではたくさん実験するだろうね．" userName="omneity" createdAt="2025/05/07 19:45:05" color="#ff5733">}}




{{<matomeQuote body="＞LlamaをQwenに替えて，Gemmaは全然話にならない．<br>最新のgemma3試した？結構感動したよ．qwen3にすぐ抜かれたけど，まだ無視するのは早い．例えば3～4bとか小さいgemmaは同じサイズのqwenより暴走しにくいみたい．<br>この分野の最新についていけないのを責められないけど，スマホでも動かせる選択肢が複数あるのはすごいこと．<br>とにかくMistralは注目する価値あり．他のプレイヤーをオープンウェイトに向かわせたり，小さいモデルが通用することを証明したりですごく貢献したんだ．クローズドモデルは微妙だけど，まだ諦めてないのは良いことだよ．" userName="drilbo" createdAt="2025/05/07 21:23:07" color="#785bff">}}




{{<matomeQuote body="たぶん個人の使い方によるんだろうけど，自分にとってはGemma3はそんなに使い物にならないな（競争力がないか，使う価値がない）．自分使い方だとQwen 2.5 14BがGemma 27Bを完全に凌駕してる．Qwen 2.5 3Bも競争力あり．0.6Bモデルが基本的なタスクで使えるって意味で，3シリーズはもっと面白い．<br>Qwenが物足りないなって思うのは，完全に個性が無いとこだね．" userName="omneity" createdAt="2025/05/07 21:44:23" color="">}}




{{<matomeQuote body="個人的には最近いくつか逆の経験があるよ，難しい質問だとMistralがChatgptより性能良かったりしたんだ．" userName="amelius" createdAt="2025/05/07 20:25:27" color="">}}




{{<matomeQuote body="何が言いたいんだ？ 欧州製のLLMにも居場所はあるだろ、”愛国心”だろうとデータ安全だろうとさ。それに、中国人が自分たちのものに”愛国的”じゃないなんて言うなよ。みんな違うやり方があるんだ。もしMistralが市場に合えば、成功するさ。" userName="tacker2000" createdAt="2025/05/07 19:58:06" color="">}}




{{<matomeQuote body="たぶん低評価されてるのは、モデルの世代とかバージョン（’ChatGPT’とか）を全然出してないからじゃない？ それだとあんま信頼できないし。" userName="byefruit" createdAt="2025/05/07 19:01:39" color="">}}




{{<matomeQuote body="最初のコメントで、Mistralを使ったのはライセンスが緩いからって言ってたよね（だから7Bを使ったんだと推測？）。それなのに、最先端の商用モデルと色々比較してるけどさ。Mistralの最新の商用モデルとか試したの？それとも最新のオープンモデルでも？" userName="dismalaf" createdAt="2025/05/07 19:12:34" color="">}}




{{<matomeQuote body="”愛国的なヨーロッパ人”ってのは…興味深い言葉の組み合わせだね。ほぼ矛盾語（oxymoron）って言ってもいいかも。" userName="thrance" createdAt="2025/05/07 19:28:31" color="">}}




{{<matomeQuote body="へぇ。俺はね、アメリカ人はヨーロッパ人の共通のアイデンティティを過大評価しがちだと思うんだ。世論調査でも、ほとんどのヨーロッパ人にとって、ヨーロッパ人としてのアイデンティティは二番目に遠く及ばないって。EUはエリート主義プロジェクトで、国民の正当性もゆっくり獲得中。とはいえ、個人的にはすごく愛国的なヨーロッパ人だけどね。" userName="bluebarbet" createdAt="2025/05/08 16:20:43" color="">}}




{{<matomeQuote body="これすごく速くてびっくりしたよ。GeminiとかChatGPTだと返事が終わるまでずーっと待つのに慣れてたから、これは一瞬だ。" userName="qwertox" createdAt="2025/05/08 17:56:29" color="#38d3d3">}}




{{<matomeQuote body="このセットアップで、どうやってIP（知的財産）を保護するのか気になるね。" userName="amelius" createdAt="2025/05/08 08:45:41" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
