+++
date = '2025-02-23T00:00:00'
draft = false
title = 'もはやアメリカのクラウドに政府や社会を移すのは危険だ！'
tags = ["クラウド", "セキュリティ", "テクノロジー", "政府", "社会"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> もはやアメリカのクラウドに政府や社会を移すのは危険だ！

引用元：[https://news.ycombinator.com/item?id=43150085](https://news.ycombinator.com/item?id=43150085)

{{<matomeQuote body="この記事の著者であるBert Hubertは普通の活動家やLinuxハッカーとは違って、政府のITコンサルタント経験もあり、技術と政府の両方を理解している貴重な存在。彼の影響でオランダやEUの政府がアメリカのクラウドから移行するきっかけになればいいなと思ってる。" userName="skrebbel" createdAt="2025-02-23T18:28:47" color="#ff5733">}}

{{<matomeQuote body="活動家たちの声を無視する政府を責める気はないが、脅威は15年前から明白だったと思う。最近のアメリカの政権交代で行動に移る準備ができたのかもだが、懸念材料も多い。特に経済的な影響があれば政府が求められる対応をするか疑問だ。" userName="fasbiner" createdAt="2025-02-24T02:18:54" color="#ff5733">}}

{{<matomeQuote body="最近のアメリカの影響がヨーロッパの政治思想に大きな影響を与えたと思う。具体的な変化は時間がかかるだろうが、今こそヨーロッパがアメリカの技術依存を断ち切るチャンスだと感じる。" userName="skrebbel" createdAt="2025-02-24T09:16:31" color="#ff5c5c">}}

{{<matomeQuote body="EUのクラウドベンダーで次の条件を満たすところはあるの？<br>コンピュートやストレージ、DB、ユーザ管理、SDN、構成管理、秘密管理、CDN、DNS、ドメインと証明書登録、メール/SMS、メッセージブローカ、ストリーミングブローカ。" userName="jerjerjer" createdAt="2025-02-24T20:46:33" color="">}}

{{<matomeQuote body="基本的なセキュリティ対策とオープンスタンダードを使っていれば、ユーロクラウドへの移行は簡単だったはず。心配する必要はないと思うけど、そうでないなら多くの人が責任を問われるべき。" userName="Recurecur" createdAt="2025-02-24T07:03:05" color="">}}

{{<matomeQuote body="どうしてアメリカの技術を捨てるコストが15年前に比べて100-1000倍も上がってると思うの？以前はアメリカの製品がヨーロッパのビジネスには欠かせなかったし、サーバーやデスクトップでも使われてたから。" userName="jononor" createdAt="2025-02-24T16:31:27" color="">}}

{{<matomeQuote body="移行先はどこ？ScalewayやUpCloudといったEUのクラウドプロバイダーは比較できる？従来のアプリを移すのは難しいと思うし、ユニオンが支援しなければ無理だろうな。" userName="Mossy9" createdAt="2025-02-23T18:54:29" color="#ff5733">}}

{{<matomeQuote body="ITの世界から言わせてもらえば、最初からクラウド特有のものを使わないべき。移行時のコストを考えれば、標準的な方法でできるかを常に考えるべき。Azure Functionsのようなものも、インフラを管理するなら標準的なツールにする必要がある。" userName="stego-tech" createdAt="2025-02-24T02:21:17" color="#ff33a1">}}

{{<matomeQuote body="VMやDockerコンテナにこだわっても、ネットワーキングは簡単じゃない。AzureやAWSのネットワークは考え方が全然違うし、特にセキュリティ面は大変。" userName="smackeyacky" createdAt="2025-02-24T08:05:21" color="#ff5733">}}

{{<matomeQuote body="複雑なネットワークインフラが必要ならシンプルなプロキシやネットワーク分割で対処できることも多い。他にどんな特別な機能を考えてるの？AWSで使ってたけど、今は自分でホスティングしてる。" userName="raxxorraxor" createdAt="2025-02-24T12:29:58" color="">}}

{{<matomeQuote body="どこに移すって？自国のデータセンターを作って、クラウド環境を構築するのは難しくないし、オープンソースのクラウドも割合簡単。80％のソフトはOSSで揃ってて、残りはプロプライエタリやカスタム。すでに複数のプロバイダーがOpenStackを使った“公共クラウド”を提供してるのに、みんな有名なプロバイダーを使うのは何でだろうね？" userName="0xbadcafebee" createdAt="2025-02-24T02:17:20" color="">}}

{{<matomeQuote body="OpenStackを運営してる者として、いくつか指摘しておくね。Telco以外でOpenStackはほぼ終わってるし、みんな次のステップを考えてる。プロダクト間の互換性が悪くて、カスタマーエクスペリエンスが最悪なんだ。DOやHetznerの方が優れてるで。" userName="busterarm" createdAt="2025-02-24T15:18:47" color="#ff5733">}}

{{<matomeQuote body="実際にOpenStackの顧客として使ってみた感じ、機能はDOやHetznerよりも充実してる。APIもオープンだし、単にIaaSが必要なら必要ないけど。OpenStackの維持は大変だけど、運営してくれるならお金払う価値はあるね。" userName="0xbadcafebee" createdAt="2025-02-24T15:57:33" color="">}}

{{<matomeQuote body="OpenStackの顧客としての経験はあまり快適じゃないね。いつもトラブル続きで、サポートチケットが山ほど溜まってる。" userName="busterarm" createdAt="2025-02-24T17:09:54" color="">}}

{{<matomeQuote body="サポートチケットの山とムスカやアメリカの王による信頼の管理、どちらがマシかな？多くの開発者はチケットの問題に向き合う方が楽だと思うかもしれない。" userName="evolve2k" createdAt="2025-02-24T19:53:26" color="">}}

{{<matomeQuote body="＞OpenStackは互換性が悪く、ドキュメントも不足している。客の体験は最悪なんだ。別のソリューションの犠牲者になったんだね。OpenStackはつまらなくはないけど、ドキュメントがしっかりしてて、REST APIやRPCでつながる部品の集合なんだ。多くの企業がまだOpenStack使ってるし、移行も比較的楽しめるよ。" userName="nyrikki" createdAt="2025-02-24T18:32:09" color="">}}

{{<matomeQuote body="違う、全くそうじゃない。複雑さの問題じゃなくて、OpenStackの開発者によるバグや問題の多さが問題なんだ。例えば、CinderのAPIでエラーが出ることも多いから、開発のプロセスが甘いんだよ。" userName="busterarm" createdAt="2025-02-24T19:16:32" color="">}}

{{<matomeQuote body="面白い、情報をありがとう！OpenStackプロバイダーのリンク、持ってる経験を教えてくれない？" userName="Mossy9" createdAt="2025-02-24T05:36:04" color="">}}

{{<matomeQuote body="Rackspaceは典型的なプロバイダーで、本当に最低だった。実際に見たのは内部のOpenStackだったけど、プロバイダーは独自に構築することが多かったね。" userName="matt-p" createdAt="2025-02-24T09:23:39" color="">}}

{{<matomeQuote body="Scalewayはこの手の用途にはかなり良い代替品だと思う。サーバーレス機能やオブジェクトストレージなど、管理されたサービスが揃ってるからね。" userName="buildfocus" createdAt="2025-02-23T19:25:35" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Scalewayは残念ながら信頼性がかなり悪くて、ここ数年大きな障害が年に数回あったんだ。新しいCTOが改善に力を入れているらしいから期待はしてるけど、便利だからこそなんとか頑張ってほしい。" userName="neoromantique" createdAt="2025-02-23T21:53:25" color="">}}

{{<matomeQuote body="OpenFaaSやKnativeが選択肢になるよ。特にKnativeはKubernetesに直接触れずにアプリを扱えるから便利。でも、主要なクラウドプロバイダーから離れるためには投資が必要だから、その点は気をつけてね。" userName="kefirlife" createdAt="2025-02-23T19:41:18" color="">}}

{{<matomeQuote body="チームが必要になるけど、ここでは人材は問題ないよ。ただ、時間とお金がかなりかかるから注意が必要。kubernetesやOpenFaaSだけじゃなくて、ストレージやデータベースも考えないといけないから、全体的にかなりの作業になると思う。" userName="matt-p" createdAt="2025-02-23T21:02:08" color="">}}

{{<matomeQuote body="OpenStackはKVMやネットワーク、オーケストレーションができるし、ストレージはcephが一般的だよ。DBの管理は少し手間がかかるけど、必要な機能はほぼカバーできると思うよ。オープンソースだしね。" userName="sekh60" createdAt="2025-02-23T21:28:52" color="#38d3d3">}}

{{<matomeQuote body="AWSのEBSボリュームは、io2以外のモデルは年間故障率が0.2%なんだ。1000個使ってたら、統計では2個は失われる計算だね。io2は0.001%だけど、完全にゼロではない。" userName="champtar" createdAt="2025-02-23T21:44:35" color="">}}

{{<matomeQuote body="Googleが地元のオペレーションパートナーにソフトウェアスタックを提供するプランを進めてるみたい。でも、コードの検証ができないから、やっぱりリスクはあるよね。" userName="anon84873628" createdAt="2025-02-23T19:47:06" color="">}}

{{<matomeQuote body="記事にあったけど、>「EU内の特別なサーバーで安心できる」と思うのは幻想なんだ。問題はバックドアじゃなくて、アメリカ政府がGoogleに指示を出せば、従わざるを得ないってこと。" userName="decimalenough" createdAt="2025-02-23T20:05:01" color="#ff5c5c">}}

{{<matomeQuote body="その国の司法管轄内で運営されているならそうだね。国外のシステムには同じ政策は及ばないから、セキュアなソリューションが提供されることがあるよ。" userName="Sparkyte" createdAt="2025-02-24T02:41:21" color="">}}

{{<matomeQuote body="それはちょっと無邪気だと思う。もしアメリカ政府がGoogleに国際サイトを全部シャットダウンしろと言ったら、サーバーがどこにあろうと関係ないと思うしね。今の政府に依存するのもリスクがあるよ。" userName="jmye" createdAt="2025-02-24T03:21:01" color="#ff5c5c">}}

{{<matomeQuote body="その国の政府がローカル企業にアメリカの親会社と分離させることもある。地域のサーバーは大抵ローカル子会社が持っているから、複雑な問題だよね。" userName="withinboredom" createdAt="2025-02-24T16:36:11" color="">}}

{{<matomeQuote body="そんなことないよ。この手のクラウドサービスはGoogleやアメリカに帰らないのが特徴なんだから。サポートはパートナー次第だけど、急にサービス停止されることはないよ。" userName="jankeymeulen" createdAt="2025-02-23T20:33:58" color="">}}

{{<matomeQuote body="Googleがそれを停止できないなら、なんで彼らに金を払うの？お金がかかるなら、そのルートを今やればいいじゃん。結局、顧客が将来の時間を支配できるようにするためにこのセットアップがあるはずなのに、ただ無駄じゃない？" userName="saghm" createdAt="2025-02-23T23:15:08" color="">}}

{{<matomeQuote body="フランスにはGoogleとThalesのパートナーシップであるサイトがあって、Thalesが90％を持ち、データセンターを管理してるんだ。数ヶ月後に稼働予定で、AWSから移行する予定だよ。" userName="fclairamb" createdAt="2025-02-24T06:57:01" color="#ff5733">}}

{{<matomeQuote body="クラウド特有のアプリ（Azure functionsなど）はどうするの？作らない方がいい。その会社に縛られるのは危険だし、移行コストは実際には見積もられているより低いよ。" userName="riehwvfbk" createdAt="2025-02-23T20:01:12" color="#ff5733">}}

{{<matomeQuote body="気持ちはわかるけど、オランダ人としてはアメリカのクラウドにデータが移行されることよりも、政府が自分たちでIT関連のことをする方が心配っていうね。失敗したプロジェクトのリストを見てもそのスキルがないのが分かる。" userName="speleding" createdAt="2025-02-24T11:12:06" color="">}}

{{<matomeQuote body="それは失敗ばかり聞いているからでしょ。" userName="28304283409234" createdAt="2025-02-24T11:59:52" color="">}}

{{<matomeQuote body="言いたいのは、本当に誠実じゃない平行構築をやめるべきってこと。ヨーロッパは消費者テック業界を育てたいだけ。Google Analyticsなんかは模倣するのが難しいし、アメリカの技術企業には規制が通用してない。結局は高いタリフを課して市場を変えたいだけ。" userName="cavisne" createdAt="2025-02-23T21:14:41" color="#45d325">}}

{{<matomeQuote body="あなたの言うことは本当だけど、競争力を持つためには安くていいサービスが必要なのに、価格を上げるのは健全なエコシステムの対策とは言えない。EU市民はプライバシーを大事にしているけど、アメリカの裁判所での不利を心配する声も聞くから、データ共有協定も意味があると思う。" userName="pm3003" createdAt="2025-02-23T21:47:53" color="">}}

{{<matomeQuote body="それってObama政権やBiden政権に影響力があるってこと？" userName="grandempire" createdAt="2025-02-23T20:24:34" color="">}}

{{<matomeQuote body="秘密をクラウドに移すことなんて、最初から安全じゃなかったよね。アメリカ政府が自分たちの秘密をクラウドに移してるのを未だに信じられない。ハードウェアを持ってる人から秘密は守れないっての。" userName="pclmulqdq" createdAt="2025-02-23T16:07:21" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="アメリカは独自の物理的なクラウドを運用していて、大きなクラウド企業が設計してる。公的なクラウドではデータセンターが政府の審査を受けてて、地域ごとに許可が異なるんだ。アメリカのクラウド利用は他国より進んでいて、技術的な要件が足かせになってるところもある。" userName="jandrewrogers" createdAt="2025-02-23T16:39:29" color="#ff5c5c">}}

{{<matomeQuote body="この意見は重要だね。私の近くにはGoogleの巨大なクラウド倉庫があって、米政府用のサーバーがあるよ。Googleの契約による電力供給や物理的なセキュリティを利用できるし、サーバーの安全性も保たれてる。" userName="vimbtw" createdAt="2025-02-23T19:53:37" color="#ff5733">}}

{{<matomeQuote body="他の国がクラウドに慎重なのは、主要なクラウドプロバイダーがアメリカの会社だから。NSAはアメリカ企業を情報セキュリティの武器として利用してきた長い歴史があるからね。" userName="KennyBlanken" createdAt="2025-02-23T19:28:26" color="">}}

{{<matomeQuote body="イスラエルについてはCheck Pointのファイアウォールとか、Express VPNを持っている会社を挙げるかな。" userName="red-iron-pine" createdAt="2025-02-24T18:52:11" color="">}}

{{<matomeQuote body="物理的な隔離は、ここでの懸念にはあんまり関係ないんじゃない？ヨーロッパの主な心配は、ランダムな人がサーバーからハードディスクを抜くことじゃないから。" userName="dataflow" createdAt="2025-02-23T19:21:31" color="">}}

{{<matomeQuote body="技術の問題じゃなくて、米国のCloud Actが多くの進展を妨げてるんだ。ここにいる信頼できる技術者は、米国のクラウドプロバイダーを信用してないよ。" userName="radicalbyte" createdAt="2025-02-23T20:07:17" color="#ff5c5c">}}

{{<matomeQuote body="ドイツのクラウドも同じで、Azure StackをDeutsche Telekomの子会社が運営してるはずだよ。" userName="tremon" createdAt="2025-02-26T16:35:54" color="">}}

{{<matomeQuote body="アメリカ政府は自分たち専用のGOVクラウドデータセンターを持ってる。AzureやAWSが運営してるけど、使用に制限があるから、あまり公にはされてない。" userName="rapatel0" createdAt="2025-02-23T16:54:14" color="#ff5733">}}

{{<matomeQuote body="主要なクラウドベンダー（Azure、AWS、GCP、Oracle）は、GovCloud地域に加えて、エアギャップ地域も持ってるよ。" userName="locusofself" createdAt="2025-02-24T00:05:04" color="">}}

{{<matomeQuote body="AmazonやMicrosoftって、政府のデータに対して興味を持ってるんじゃないかって話だよね、普通は関わっちゃいけないのに。" userName="ocdtrekkie" createdAt="2025-02-23T17:47:10" color="#785bff">}}

{{<matomeQuote body="政府はAmazonやMicrosoftに対して色んな圧力をかける力を持ってるけど、EUの政府はそんなの持ってないってことだ。" userName="aprilthird2021" createdAt="2025-02-23T18:05:24" color="">}}

{{<matomeQuote body="役所で扱う人が前にAmazonやMicrosoftにいたり、また戻ったりするって考えたら、政府に圧力なんてないようなもんだよ。政府は逆にこれらの企業を他と比べるための道具だし。" userName="pessimizer" createdAt="2025-02-23T23:03:03" color="">}}

{{<matomeQuote body="米国政府の圧力：20万ドルの罰金、控訴可能。" userName="_DeadFred_" createdAt="2025-02-23T18:53:55" color="">}}

{{<matomeQuote body="米国政府の圧力：FISAの秘密裁判、刑務所行き。" userName="tyre" createdAt="2025-02-23T19:39:37" color="">}}

{{<matomeQuote body="この施設のHSMに触れたら、消えたような気分になれるよ。" userName="overstay8930" createdAt="2025-02-23T20:47:39" color="">}}

{{<matomeQuote body="今の政府とじゃ無理だね。" userName="userbinator" createdAt="2025-02-23T20:59:44" color="">}}

{{<matomeQuote body="”あんたの持ってる独占、なかなかいいね。Commerce省に調査されちゃうと厄介だよ。”" userName="int_19h" createdAt="2025-02-27T01:39:35" color="">}}

{{<matomeQuote body="そうだね、私も賛成。データの重要性を考えると、一般市民が「データが静止している状態」の原則を理解してないのが不思議。" userName="ivanmontillam" createdAt="2025-02-23T17:13:02" color="#45d325">}}

{{<matomeQuote body="じゃあ、アメリカはTikTokを禁止する権利を持ってるの？" userName="cscurmudgeon" createdAt="2025-02-23T20:13:56" color="">}}

{{<matomeQuote body="いや、それは行き過ぎだよ。国民がデータを勝手に渡したいならそれは彼らの権利だし、せいぜい米国政府はその危険性を教育するべき。まあ、政府関係者はデータ損失防止策を講じるべきだと思うけど。公衆の健康の問題なら禁止しても良いが、Metaの影響力があるから無理だろうね。データ管理の問題でTikTokを制限するのは行き過ぎだよ。TikTokのユーザーがInstagramよりもTikTokを選ぶのは彼らの自由だ。" userName="ivanmontillam" createdAt="2025-02-23T20:35:52" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="米国政府の秘密は常に契約業者によって保持されている。典型的な政府の秘密はLockheed Martinが設計した飛行機の計画みたいなものでしょ。" userName="closeparen" createdAt="2025-02-23T16:36:48" color="">}}

{{<matomeQuote body="Elon Muskが全データにアクセスするなんて、怖いよ。彼の選挙に対するプロパガンダ装置を考えると恐ろしい。" userName="zombiwoof" createdAt="2025-02-23T19:34:16" color="#ff33a1">}}

{{<matomeQuote body="保守派に向けたプロパガンダがあった時、そんなに恐れてた？今はあまり過激じゃなくて、他の意見も受け入れられるようになった。" userName="DamnYuppie" createdAt="2025-02-24T16:13:46" color="">}}

{{<matomeQuote body="セキュリティは単純に“安全”と“危険”の二元論じゃないよ。" userName="rcpt" createdAt="2025-02-23T16:28:14" color="">}}

{{<matomeQuote body="世界中がSnowdenやWikileaks Vault 7でNSAやCIAの大規模なスパイの証拠を知ってる。政府の秘密を米国のクラウドに移すなんて、12年以上前から狂ってる。" userName="dmantis" createdAt="2025-02-23T16:31:27" color="#785bff">}}

{{<matomeQuote body="https://www.usenix.org/system/files/1401_08-12_mickens.pdf まあ、魔法のアミュレットでも手に入れたらいいんじゃない？" userName="rcpt" createdAt="2025-02-23T16:42:38" color="">}}

{{<matomeQuote body="いいね、アップロードする前に全部暗号化して、鍵はクライアント側に置いておこう。親が言ってる通りじゃない？安全/安全でないの二元論は誰にも役立たないよ。" userName="raverbashing" createdAt="2025-02-23T16:41:06" color="#38d3d3">}}

{{<matomeQuote body="暗号化されたデータの計算が、すぐに解決できたなんて知らなかったよ。" userName="ta988" createdAt="2025-02-23T17:33:25" color="">}}

{{<matomeQuote body="もしかして限界を知ってるの？知らない人のために、その技術についてはここを見てね： https://en.m.wikipedia.org/wiki/Homomorphic_encryption" userName="erikerikson" createdAt="2025-02-23T19:19:02" color="">}}

{{<matomeQuote body="政府の秘密については、どこまで隠すべきかっていうのは難しい問題だよね。一部は隠す必要があると思うけど、過剰な秘密主義は危険だと思うんだ。確かに機密情報は守るべきだけど、隠さなくてもいいことまで隠すのは良くないよ。" userName="cogman10" createdAt="2025-02-23T17:39:21" color="#45d325">}}

{{<matomeQuote body="FOIAのおかげで、アメリカ政府はかなり透明性がある民主主義なんだよね。これが他の国でも模倣されるようになったくらいに。" userName="Andrex" createdAt="2025-02-23T19:07:38" color="">}}

{{<matomeQuote body="政府用のクラウドの仕組みをちゃんと理解してないんじゃないかな。GovCloudは敏感なデータや制御された非機密情報を管理するために使われているらしいよ。アメリカ政府が機密情報を企業のクラウドに入れるとは思えない。でも機密でない情報は多々あるから、その辺は必要なんじゃないかな。" userName="dangus" createdAt="2025-02-23T16:43:43" color="#ff33a1">}}

{{<matomeQuote body="機密情報用のクラウド環境もちゃんとあるから、見てみた方がいいよ。アメリカには特化したクラウドサービスがあって、そこでは変なことは起きにくい。" userName="thesuperbigfrog" createdAt="2025-02-23T17:36:53" color="">}}

{{<matomeQuote body="ハードウェアを持っている人には秘密は守れないけど、物理的に国内に置かれてて、クラウド業者の従業員が見張られている場合はどうなの？それは主権クラウドと呼ばれて、すべてのクラウド業者がやってることなんだよ。" userName="breadwinner" createdAt="2025-02-23T17:10:10" color="">}}

{{<matomeQuote body="でも、アメリカの法律はそこにも及ぶんじゃないかな、アメリカの会社が所有していたら。" userName="tpm" createdAt="2025-02-23T17:12:01" color="">}}

{{<matomeQuote body="SSDを持っている人からあなたの秘密を守ることはできるじゃん、それが暗号化の目的なんだから。" userName="whimsicalism" createdAt="2025-02-23T16:55:46" color="">}}

{{<matomeQuote body="元の発言をただのデータ保存に縮小してる気がするけど、ハードウェアとはデータの保管だけじゃないってことだからね。もし暗号化されてないデータがAWSを通ってしまったら、それはアクセスできることになってしまう。" userName="ncallaway" createdAt="2025-02-23T17:08:26" color="#38d3d3">}}

{{<matomeQuote body="「政府が秘密をクラウドに移すことは安全じゃない」って言ってるけど、これはデータ移動に関することじゃないの？" userName="whimsicalism" createdAt="2025-02-23T18:27:08" color="">}}

{{<matomeQuote body="それは全く完璧なものではないね。" userName="TechDebtDevin" createdAt="2025-02-23T17:07:47" color="">}}

{{<matomeQuote body="これは新しいことじゃなくて、Microsoftがフランス政府と合意を結んでBleuっていう主権クラウドを作ったんだよ。これはOrangeとCapgeminiがAzureとMicrosoft 365の技術を使って運営するんだ。ドイツ政府も似たようなことをして、SAPとArvato Systemsが運営するDelos Cloudを始めたんだ。" userName="pedropaulovc" createdAt="2025-02-23T17:38:02" color="#785bff">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
