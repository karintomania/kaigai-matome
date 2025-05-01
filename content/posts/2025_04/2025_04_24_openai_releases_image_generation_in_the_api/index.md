+++
date = '2025-04-24T00:00:00'
months = '2025/04'
draft = false
title = '速報 OpenAIの画像生成APIが公開！ 軍事利用も可能に？ 検閲なしの特別プランも登場か'
tags = ["OpenAI", "画像生成", "API", "AI", "軍事利用"]
featureimage = 'thumbnails/purple2.jpg'
+++

> 速報 OpenAIの画像生成APIが公開！ 軍事利用も可能に？ 検閲なしの特別プランも登場か

引用元：[https://news.ycombinator.com/item?id=43786506](https://news.ycombinator.com/item?id=43786506)




{{<matomeQuote body="昨日これが公開された時、特に政府や軍事関連のタスクでの拒否率がめちゃくちゃ高いって文句言ったんだよね。これじゃあ、業者たちが中国製のオープンソースモデルを使わざるを得なくなって、情報漏洩のリスクが高まるだけだって。今日になって、そういう分野の企業向けに、コンテンツの規制がほとんどないAPIがあるって知ったよ。どうやってアクセスをリクエストすればいいのか全然わからないけど、ここ1日で4つの防衛関連企業がもう使ってるみたい。" userName="cuuupid" createdAt="2025/04/24 20:58:25" color="">}}




{{<matomeQuote body="プレゼン資料に使う以外に、防衛関連企業がAIで画像を生成する良いユースケースって何かあるの？" userName="samtp" createdAt="2025/04/24 21:24:29" color="">}}




{{<matomeQuote body="AIのalignment（調整）って、結局は「顧客の現在のサブスクリプションプランに合わせる」ってことみたいだね。世界を守るためじゃないんだ。よくあるパターンだ。" userName="vasco" createdAt="2025/04/25 05:17:12" color="">}}




{{<matomeQuote body="自律型ドローンカメラを訓練するために、茂みに隠された火砲のユニークな画像を30,000枚生成する。" userName="missedthecue" createdAt="2025/04/25 01:20:39" color="">}}




{{<matomeQuote body="「ここ1日で4つの防衛関連企業が～」って、防衛関連企業が画像生成を必要とする理由って、明らかにヤバいこと以外に何があるんだろう…。" userName="throwaway314155" createdAt="2025/04/24 21:24:40" color="">}}




{{<matomeQuote body="それは“tier 5”だよ。3.0の時からアカウントを持ってるから、特別扱いされてるのかどうかはわからないけど、数ヶ月間それなりの金額を使ってればアクセスできるはず。（ちなみに、実装方法を知りたい人向けに言うと、JSONリクエストの’moderation’パラメーターだよ。Dalle-3にはなかったから数時間見逃してた）" userName="refulgentis" createdAt="2025/04/24 21:00:55" color="#45d325">}}




{{<matomeQuote body="APIにはautoかlowしか表示されないけど、さらに規制の低いシークレットな値ってあるの？" userName="dunkmaster" createdAt="2025/04/24 21:26:21" color="">}}




{{<matomeQuote body="知らないな。親の投稿が完全にノーモデレーションを意味しているというのは、言葉を少し大げさに使っているんだと思う。いくつか兆候がある。１．昨日軍事・防衛画像の生成モデレーションについて意見を持つほど早くAPI統合を完了したとは考えにくいので、ChatGPTについて話しているのはほぼ確実。（画像生成にはtier 5が必要なことからも確認できる）２．軍事・防衛のユースケースが提供されていない。３．投稿者は軍事・防衛にいないことを匂わせている。４．OpenAIのために普遍的なモデレーションを必要としないケースを想像するのは難しい。５．OpenAIはPRから遠ざかりたいはず。スーパーシークレットな防衛ティアがあるとしても、投稿者の防衛関係者がリリース後数時間以内に完全にモデレーションされていないアクセスについて話す可能性は低い。" userName="refulgentis" createdAt="2025/04/24 22:06:27" color="">}}




{{<matomeQuote body="既知の軍事施設と民間施設の画像を1枚ずつ入力。類似の構造、類似の色、類似の照明など、軍事施設に似た_民間_施設を生成するように指示。次に、この画像を「民間」マーカーを持つ別のネットのデータセットに含める。「このターゲットは軍事施設ですか」と尋ねられたときに、誤検知率を下げるように新しいニューラルネットをより良くトレーニングする。" userName="golergka" createdAt="2025/04/24 23:45:28" color="#ff5733">}}




{{<matomeQuote body="FedRAMP GGC High Azure経由でOpenAIモデルを使用していますか？もしそうなら、あなたの経験についてもっと聞きたいです。" userName="subroutine" createdAt="2025/04/24 22:17:02" color="">}}




{{<matomeQuote body="いや、当たり前じゃん？AIの整合性って、結局モデルの作成者との整合性を意味するんだよね。OpenAIとかを人類全体と整合させるのは、全然別の問題だってこと。" userName="sebzim4500" createdAt="2025/04/25 10:40:57" color="">}}




{{<matomeQuote body="そんな考え方じゃ昇進できないぜ！全部「軍事用」ってマークして、軍需品の売り上げを爆上げだ！" userName="aprilthird2021" createdAt="2025/04/25 01:24:04" color="">}}




{{<matomeQuote body="企業ラボがAGIを開発して、「企業はもっと税金を払うべきだ」みたいなヤバいアイデアを言い始めたら、アライメントの問題でAGIの話はしばらく聞けなくなると思う。" userName="consumer451" createdAt="2025/04/25 11:48:49" color="">}}




{{<matomeQuote body="俺はTier 4だけど、このAPIを使えて、モデレーションを“low”に設定できるよ。Tier 4は30日の待機期間と1000ドル分のクレジットが必要なだけ。個人としてはOpenAIにそんなに使ってたのかって驚いたけど、ほとんどの組織にとっては大したことない額だよね。Tier 5でも5000ドルしか要らないし。<br>OPは軍みたいな特別な組織だけがもっとすごい機能を使えるって言ってるみたいだけど、証拠がないと信じがたいな。そもそも、このAPIの軍事的な応用がよく分からないんだよね（AI全般じゃなくて）。プレゼン資料とか作るのには役立つだろうけど、そんなのに特別なゼロモデレーションは要らないし。" userName="Wowfunhappy" createdAt="2025/04/24 23:48:47" color="#ff33a1">}}




{{<matomeQuote body="発展途上国に大量破壊兵器があるっていう証拠を捏造するとか？冗談はさておき、現実的な使い道としては、新製品のコンセプトイメージとか、マーケティングキャンペーン用かな。" userName="aigen000" createdAt="2025/04/24 21:52:16" color="">}}




{{<matomeQuote body="いや、独自のIL4環境を検討してるって噂はよく聞くよ（Azureがダメなパートナーで、モデルの開発が数ヶ月遅れてるらしい）。個人的には、顧客にCUI以上は技術的に扱えないって警告してるけど、止められないんだよね。" userName="cuuupid" createdAt="2025/04/25 05:47:14" color="">}}




{{<matomeQuote body="そんなんじゃないと思うけど、どうだろね。本当の理由はもっとありふれたことで、マーケティング用の画像生成とかじゃない？" userName="junon" createdAt="2025/04/25 01:26:49" color="">}}




{{<matomeQuote body="質問なんだけど、MSによると…“GPT-4oはAzure GovernmentのAzure OpenAI Serviceの一部として利用可能で、最新のFedRAMP HighとDoD IL4/IL5 Authorizationに含まれています”…Azureに全部セットアップしたけど、CUIで使うのは気が引けるんだよね。DoDの担当者は大丈夫だと思ってるみたいだけど、誰も許可を出すって記録に残したくないみたい。https://devblogs.microsoft.com/azuregov/azure-openai-fedramp...https://learn.microsoft.com/en-us/azure/azure-government/com..." userName="subroutine" createdAt="2025/04/25 07:16:59" color="">}}




{{<matomeQuote body="信じられないかもしれないけど、アメリカ軍は戦犯を犯さないことを重視してるんだよ。少なくとも空軍の兵士（他の部隊は知らない）は、配備前にクンドゥズの病院の事件に関する必須訓練を受けて、同じような悲劇を防ぐようにしてる。もし気にしていなかったら、何千時間も無駄にしないはず。" userName="derektank" createdAt="2025/04/25 02:17:12" color="#785bff">}}




{{<matomeQuote body="現実がまるで小島秀夫のゲームみたいになってきてるな。リンク先の動画も見てみて。" userName="matheusmoreira" createdAt="2025/04/25 03:11:03" color="">}}




{{<matomeQuote body="このロジックがいまいちわかんないんだよね。茂みの中の大砲がどんな見た目かみたいな実際の信号は、すでに元のトレーニングデータにあるじゃん。合成データは経験的な証拠を作り出すことはできないし、本物と同じくらい偽物の画像を生成する可能性もあると思うんだ。" userName="Barrin92" createdAt="2025/04/25 04:27:51" color="">}}




{{<matomeQuote body="それって鉛筆でもできるよね？なんでLLMが必要なんだろ？" userName="toasteros" createdAt="2025/04/25 05:10:04" color="">}}




{{<matomeQuote body="法人自体に課税するのと、役員、取締役、投資家、従業員に直接課税するのって何が違うの？（すでに起こってることだけど）" userName="JPKab" createdAt="2025/04/25 15:12:51" color="">}}




{{<matomeQuote body="「テロリストが一人混ざった一般人の群衆を生成して」<br>「場所を砂漠に移して。エンパイアステートビルじゃなくて」<br>「一般人にはターバンを被らせて。野球帽じゃなくて」" userName="Aeolun" createdAt="2025/04/24 22:02:29" color="">}}




{{<matomeQuote body="それ古い情報だよ。今はエンパイアステートビルに野球帽姿でいることになってるんだって。ICEの逮捕とか、トランプが「自国の」エルサルバドル人向けの刑務所をもっと必要だって言ったコメントを見てみなよ。" userName="ziml77" createdAt="2025/04/24 23:08:43" color="">}}




{{<matomeQuote body="彼らのアクセス要素の一つが安全ガードレールの解除ってことを考えると、ある程度、NSFWなコンテンツとか、問題のあるコンテンツの処理や生成も含まれてるんじゃないかな。" userName="TechDebtDevin" createdAt="2025/04/25 03:39:09" color="#ff5c5c">}}




{{<matomeQuote body="考えられるのは、船舶、航空機、飛行場のような潜在的なターゲットの画像を生成して、衛星やドローンに送り込み、画像検出に使用したり、兵器を調整して精度を高めたりすることかな。" userName="qatanah" createdAt="2025/04/24 23:31:19" color="#45d325">}}




{{<matomeQuote body="うわー！なんて素晴らしいディストピア的な未来のビジョンなんだ。たぶんその通りだ。" userName="Gud" createdAt="2025/04/25 06:45:24" color="">}}




{{<matomeQuote body="AIに頼りすぎると、誰かがモデルで生成できるものを決めちゃうのが怖いよね。" userName="0rzech" createdAt="2025/04/25 11:59:23" color="">}}




{{<matomeQuote body="image playgroundで試そうとしたら、支払い方法を追加しろって言われたんだ。追加したら最低5ドル払えって。払ったのに、画像を生成しようとしたら組織の認証が必要だって(？)。個人を選んだら、OpenAIの第三者パートナー経由で生体認証を許可しろって言われた。もう嫌になったけど、お金は払っちゃったから返金してもらうのが大変。UXひどすぎ。" userName="johnyzee" createdAt="2025/04/25 16:20:50" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OpenAI APIのクレジットは1年で失効するから注意してね。昔5ドル追加してAPI使うつもりだったんだけど、ほとんど使わなかったんだ。また必要になったときに使おうとしたら”リクエストが多すぎます”ってエラーが出て、クレジットが全部なくなってた。正直者がすることじゃないよね。" userName="vizzah" createdAt="2025/04/25 19:13:09" color="#785bff">}}




{{<matomeQuote body="教えてくれてありがとう。払い戻しはできないみたいだね。今後は気をつけるよ。20ドル分使い切るために、もっと高いAPIを使うしかないかな。[0] https://openai.com/policies/service-credit-terms/4. 払い戻しはできないみたい。" userName="funwares" createdAt="2025/04/25 19:28:13" color="#ff5733">}}




{{<matomeQuote body="チャージバックだね。OpenAIのサービスが使えなくなるかもしれないけど、二度と同じ間違いをしないようにするためには良いことだと思うよ。" userName="rideontime" createdAt="2025/04/25 17:35:04" color="">}}




{{<matomeQuote body="それぞれのクオリティタイプで同じプロンプトを生成してみたよ。’Auto’、’low’、’medium’、’high’。プロンプトは「かわいい犬がかわいい猫をハグしている」だよ。https://x.com/terrylurie/status/1915161141489136095 DALL:E 3の画像との比較も載せてるよ。" userName="tezza" createdAt="2025/04/24 22:54:02" color="">}}




{{<matomeQuote body="そのプロンプトならMidjourney、Flux、Stable Diffusionの方が良いよ。安いし、見た目も良くなる可能性が高い。gpt-image-1が輝くのは複雑なプロンプトの時だね。画像を参考にスタイルを指定したり、背景のライティングを変えたり、数式を解かせたりとか。gpt-image-1は最高じゃないけど、めちゃくちゃ強力だよ。" userName="echelon" createdAt="2025/04/25 01:43:33" color="#45d325">}}




{{<matomeQuote body="gpt-image-1の出力にノイズを加えてdiffusion modelsの入力として使うことはできるのかな？ GPTが正確さを担当して、diffusion modelが品質を向上させるみたいな。できる人いる？" userName="stavros" createdAt="2025/04/25 01:57:00" color="">}}




{{<matomeQuote body="もちろん。APIサポートが始まったから、ComfyUIノードを作った人がいると思うよ。そこからdenoiseしたり、IP-Adapterみたいなものを使ったりできるよ。" userName="AuryGlenz" createdAt="2025/04/25 05:55:07" color="">}}




{{<matomeQuote body="そうだよ。最近のモデルはプロンプトの理解度が高いから、昔のモデルに通して見た目を良くするってことをみんなやってるよ。" userName="levzzz" createdAt="2025/04/25 04:17:11" color="">}}




{{<matomeQuote body="悪くないね。写真フォーラムはすぐにこれらでいっぱいになるだろうね。メタデータを取り除いて、人間が作ったように見せるために少し編集されるだろうけど。" userName="MoonGhost" createdAt="2025/04/25 01:47:25" color="">}}




{{<matomeQuote body="「Auto」、「low」、「medium」、「high」の各品質タイプで同じプロンプトを使った場合、「Auto」はモデルにとって最高の品質になる。この場合は「high」と同じってことだね。" userName="latexr" createdAt="2025/04/24 23:58:23" color="">}}




{{<matomeQuote body="クレイジーだね。写真にまでOpenAIの黄色いカラーグレーディングが入ってる。" userName="whywhywhywhy" createdAt="2025/04/25 09:35:56" color="">}}




{{<matomeQuote body="playgroundで5枚の画像を生成してみたよ。テキストのみのプロンプトを1つと、自分の携帯電話からの画像を4つ使って。0.85ドルかかったけど、家族のグループチャット用のスタジオジブリ風ポートレートを作るには悪くない金額だね。でも、顧客向けの製品に使うには高すぎるかな。" userName="film42" createdAt="2025/04/24 20:09:09" color="#ff5733">}}




{{<matomeQuote body="顧客向けの製品に使うには高すぎる？LinkedInに載せるための証明写真を向上させるのはどうかな。" userName="sumedh" createdAt="2025/04/24 22:53:45" color="">}}




{{<matomeQuote body="生成された画像は顔のディテールを保持しないんだよね。生成された人物はあなたに似ているけど、間違いなくあなたではない。" userName="salomonk_mur" createdAt="2025/04/25 02:47:20" color="">}}




{{<matomeQuote body="そうだね、すごく不気味だよね。でも、非常に近い時もあるんだ。危ないと感じるくらいに。一度自分で試してみたら、背景は非現実的だったけど(プロンプトは私がビジョンボードのために基調講演をしているところ)、私は…私にそっくりだった。" userName="anshumankmr" createdAt="2025/04/25 12:29:17" color="#ff33a1">}}




{{<matomeQuote body="LinkedInのプロフィール写真と全然違う人に会うのが楽しみだね😊" userName="bamboozled" createdAt="2025/04/25 01:02:03" color="">}}




{{<matomeQuote body="もう会ったよ。たった今、鏡を見たんだ。変な男で、すごく疲れてて、見たことないやつだった。" userName="martin_a" createdAt="2025/04/25 06:46:37" color="">}}




{{<matomeQuote body="それっていいの？" userName="BOOSTERHIDROGEN" createdAt="2025/04/25 00:28:41" color="">}}




{{<matomeQuote body="いや、細部は苦手みたい。たしか、画像は低解像度で生成されて、それをアップスケールしてるんじゃないかな。ChatGPTのバージョン特有かもしれないけど、コスト削減のためかもね。" userName="stavros" createdAt="2025/04/25 01:58:17" color="">}}




{{<matomeQuote body="もし興味ある人がいれば、ローカルのplaygroundを作ったよ（OpenAIの組織認証が必要だけど…）。OpenAIのPlaygroundじゃAPIのオプションが全部公開されてないんだ。俺のは全部対応してて、マスク作成機能とかコスト追跡機能も内蔵してる。https://github.com/Alasano/gpt-image-1-playground" userName="alasano" createdAt="2025/04/25 04:32:43" color="#45d325">}}




{{<matomeQuote body="何百枚、何千枚も画像を生成する必要があるアプリってどんなのがあるんだろう？家族写真をジブリ風にするのは好きだけど、そんなに大量には作らないし。画像生成って、ChatGPTのUIで一回きりで作るのがほとんどなんだよね。" userName="Imnimo" createdAt="2025/04/24 20:57:08" color="">}}




{{<matomeQuote body="最近のAIスタートアップによくあるように、このAPIを使えば、特注のプロンプトで画像生成のダウンストリームラッパーを作れるね。マルチモーダル画像生成アプローチ（テキストエンコーダーが優れてる場合）のメリット・デメリットは、プロンプトエンジニアリングが重要になること。もし1枚あたり0.17ドル以上の収益を生み出せるユースケースがあれば、利益になるね。" userName="minimaxir" createdAt="2025/04/24 21:27:54" color="#ff33a1">}}




{{<matomeQuote body="ビデオゲームとか、インタラクティブフィクションとか、そういうのには使えるんじゃない？AI Dungeonにビジュアルがついたら面白そう。" userName="theptip" createdAt="2025/04/25 01:32:08" color="">}}




{{<matomeQuote body="それだと高すぎるよ。ある程度高いサブスクリプション料金がないと無理。ゲームにはローカルモデルが一番向いてると思う。まともなGPUは既にあるだろうし。" userName="brian-armstrong" createdAt="2025/04/25 04:27:54" color="">}}




{{<matomeQuote body="両方のニッチがあると思うな。ローカルLLMは桁違いに小さいから、キャラのポートレート生成みたいな、難しい/重要な作業のためにクラウドを使うのを想像できる。とは言え、1年後には10～20倍安くなるだろうから、2Dゲームのワークフローで価格を気にする必要はなくなると思う。" userName="theptip" createdAt="2025/04/25 14:44:46" color="">}}




{{<matomeQuote body="UIにお金を払うほどChatGPTを使わないから、APIを使ってる。" userName="austhrow743" createdAt="2025/04/24 21:37:13" color="">}}




{{<matomeQuote body="毎日画像ベースのパズルを全自動で作ってて、Fluxを使って画像を生成してたんだ。でも、出来が良くない時があるから、手動でキュレーションしてた。この新しいAPIで、また自動でできるか試してみる。" userName="reducemore" createdAt="2025/04/25 12:13:29" color="#ff5733">}}




{{<matomeQuote body="AIを使った教育はマジで有望だよな。" userName="marviel" createdAt="2025/04/24 20:58:22" color="">}}




{{<matomeQuote body="教育に使うのに、既存のリアルな画像じゃなくて、AIが生成した画像を何千枚も使う必要性がマジでわかんねー。" userName="samtp" createdAt="2025/04/24 21:25:36" color="">}}




{{<matomeQuote body="うちの会社じゃ、子供向けのパーソナライズされた絵本のために、毎週何千枚も生成してるよ。子供たちが読み方を学ぶのを助けるんだ。ストーリーのテキストがアプリの核だけど、パーソナライズされた画像が子供たちを夢中にさせるんだよね。" userName="abossy" createdAt="2025/04/25 03:25:38" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="パーソナライズ(スタイルとか、既知の概念とのアナロジーとか)とか、具体性(まさに求めてる概念を完璧にカプセル化した図)とか。" userName="marviel" createdAt="2025/04/24 21:37:14" color="#ff5c5c">}}




{{<matomeQuote body="でもLLMって信頼性が足りないから、マジで「具体性」を期待できないじゃん。" userName="indeyets" createdAt="2025/04/24 22:07:12" color="">}}




{{<matomeQuote body="今は完璧じゃないけど、いくつかの分野では十分使えるよ。これからもっと良くなるって。" userName="marviel" createdAt="2025/04/24 22:16:05" color="">}}




{{<matomeQuote body="＞これからもっと良くなるって。<br>AI企業はまだ「金燃やしてる」段階なんだよね。エンシッティフィケーションはまだ先だけど、不可避だよ。" userName="Hackbraten" createdAt="2025/04/25 03:29:30" color="">}}




{{<matomeQuote body="OpenAIみたいな個々の企業が、最終的にエンシッティフィケーションの機能を導入するのは間違いないけど、業界全体をそんな簡単に要約できるとは思わないな。全体的には、開発は進んで良くなっていくと思う。満潮になれば全ての船が持ち上がるし、中にはクソみたいな水漏れ船もあるかもしれないけどね。最悪の場合、プロプライエタリモデルのエンシッティフィケーションが始まったら、いつでもオープンソースソフトウェアに頼れるし。例えば、今の車は100年前よりずっと良いじゃん。悪い未来が必ずしも不可避ってわけじゃないんだよ。" userName="concats" createdAt="2025/04/25 10:24:44" color="#ff5c5c">}}




{{<matomeQuote body="でも今の車って10年前、20年前より良いかな？信頼性は低下傾向だし、安全性も疑問視されてて、死亡者数と負傷者数は年々増加してるし。機能はサブスクリプションに移行されて、しかも全部テレメトリー送り返してくるし。" userName="olyjohn" createdAt="2025/04/25 21:35:48" color="#785bff">}}




{{<matomeQuote body="良いポイントだね！" userName="Hackbraten" createdAt="2025/04/25 15:16:22" color="">}}




{{<matomeQuote body="俺が育った環境の先生の8割より使えるってマジ？" userName="aeonik" createdAt="2025/04/25 02:18:58" color="">}}




{{<matomeQuote body="それは広い意味ではそうかもね。でも、教育とお金って必ずしも両立しないじゃん。" userName="Etheryte" createdAt="2025/04/24 21:03:57" color="">}}




{{<matomeQuote body="ほんとそれな" userName="marviel" createdAt="2025/04/24 21:37:25" color="">}}




{{<matomeQuote body="「アルジェブラで困ってる？ MathWizが今月限定で20％オフ！月額たったの24．95ドル！これはマジでお得だよ！成績上げたくないの？家族をがっかりさせたいの？アカウント作ってあげようか？」" userName="whatnow37373" createdAt="2025/04/25 08:52:14" color="">}}




{{<matomeQuote body="「仕事ゲットしたい？[COLLEGE]が0％オフだってー！年間たったの20万ドル！住む場所欲しくないの？脳みそがまだ発達してない年齢で、役に立つかどうかわからない学位のために借金まみれになろう！」" userName="marviel" createdAt="2025/04/25 15:50:11" color="">}}




{{<matomeQuote body="大量の画像を生成する必要がある人向けか。仕事でimage gen使うならローカルモデルでワークフロー組んだ方が良くね？" userName="whywhywhywhy" createdAt="2025/04/25 09:37:32" color="#45d325">}}




{{<matomeQuote body="インテリアデザインとかファッション、広告とか色々思いつくね" userName="chipgap98" createdAt="2025/04/25 03:48:07" color="">}}




{{<matomeQuote body="AIが生成した広告だらけのニュースフィードが永遠に続くのを想像してみてよ" userName="aprilthird2021" createdAt="2025/04/25 01:25:13" color="">}}




{{<matomeQuote body="材料を入れるとレシピを作ってくれて、完成品のイメージ画像も生成してくれるAIレシピアプリとかどう？" userName="jevogel" createdAt="2025/04/24 23:27:59" color="#45d325">}}




{{<matomeQuote body="見た目がいる？それとも料理せずにレシピ公開するの？" userName="what" createdAt="2025/04/25 01:06:19" color="">}}




{{<matomeQuote body="価格設定が微妙だなー。参照元を提供できるなら価値があるかもだけど。1024x1024の`medium`画像が0.04ドルって、Imagen 3とかFlux 1.1 Proと同じくらいじゃん。playgroundで試した感じ、画質は конкурент モデルより低いし、生成に15秒以上かかるし。promptも従来のモデルと全然違うし難しい。従来のテクニックがそのままじゃ通用しないから、かなりpromptを調整しないとダメそう（ChatGPTの画像生成でやってるみたいに）。" userName="minimaxir" createdAt="2025/04/24 19:54:16" color="">}}




{{<matomeQuote body="ChatGPTのpromptへの忠実さはマジで他より全然上。FluxとかMidjouenyは конкурент って呼べないレベル。ChatGPTの画像生成は唯一無二の存在だよ。画像編集の経験がない人でも使えるAI画像エディタって感じ。画像生成に関して言えば、Stable Diffusion以来の衝撃だと思う。LoRAとかControlNetとかFluxは忘れ去られる運命。" userName="raincole" createdAt="2025/04/24 21:02:33" color="#ff5c5c">}}




{{<matomeQuote body="今のところ、ダントツで一番パワフルな画像モデルだね。0.04ドル/画像は妥当な価格だと思うよ。" userName="doctorpangloss" createdAt="2025/04/24 20:16:58" color="">}}




{{<matomeQuote body="それはめっちゃドメインによるんじゃない？Diffusionモデルの方が得意なこともあるよ。" userName="arevno" createdAt="2025/04/24 20:39:13" color="">}}




{{<matomeQuote body="gemini-2.0-flash-exp-image-generationもあるじゃん。autoregressive/transfusionベースだし。" userName="thegeomaster" createdAt="2025/04/24 21:53:45" color="">}}




{{<matomeQuote body="何か例を挙げてくれない？どんなユースケースがあるのか興味ある。" userName="thot_experiment" createdAt="2025/04/24 20:41:35" color="">}}




{{<matomeQuote body="AI活用のhttps://iconfinder.comをずっと夢見てて。2021年にAccomplice v1を始めてVCマネーも調達したけど、時期尚早だった。でも、imagen-3.0-generate-002 (Gemini) と gpt-image-1 (OpenAI) モデルのおかげで、Accompliceをサイドプロジェクトとして復活させられたんだ。Accomplice v2 (https://accomplice.ai) はまだ始まったばかりだけど、数千ものPNGアイコンを無料でダウンロードできるよ。マルチモーダルモデルで時代遅れになるかな？" userName="adamhowell" createdAt="2025/04/24 21:17:12" color="">}}




{{<matomeQuote body="＞生成された`medium` 1024x1024は0.04ドル/画像\n実際はもっと高いよ。1画像あたり約16.7セント。0.04ドル/画像はDALL·E 3の価格設定。" userName="Sohcahtoa82" createdAt="2025/04/24 20:59:50" color="#38d3d3">}}




{{<matomeQuote body="面白そうだけど、単体のアイコンってどれだけ使えるかな？個人的には、一貫したビジュアルスタイルのアイコンセットが欲しいな。同じスタイルで他のアイコンも生成できたら最高。" userName="stavros" createdAt="2025/04/24 21:52:50" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
