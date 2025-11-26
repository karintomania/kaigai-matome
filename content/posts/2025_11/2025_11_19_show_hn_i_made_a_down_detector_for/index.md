+++
date = '2025-11-19T00:00:00'
months = '2025/11'
draft = false
title = 'ダウンディテクターがダウン！それならダウンディテクターを監視するダウンディテクターを開発！'
tags = ["サービス監視", "インフラ", "クラウドサービス", "システム障害", "開発"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> ダウンディテクターがダウン！それならダウンディテクターを監視するダウンディテクターを開発！

引用元：[https://news.ycombinator.com/item?id=45974012](https://news.ycombinator.com/item?id=45974012)




{{<matomeQuote body="Cloudflareの障害でDown Detectorもダウンしちゃったから、Down Detectorがダウンしているかを監視する頑丈で独立したツールを開発したぜ！楽しんでね！" userName="gusowen" createdAt="2025/11/19 00:05:28" color="#ff33a1">}}




{{<matomeQuote body="ヨーロッパのソロ開発者だけど、今年からインフラ全部ヨーロッパの代替サービスに切り替えたよ。CloudflareはBunny.net、AWSはHetzner、ビジネスメールはInfomaniakにね。クライアントサイトは一度もダウンしてないし、アメリカのサービスから独立できてマジ最高だぜ。" userName="spyridonas" createdAt="2025/11/19 07:39:20" color="#ff33a1">}}




{{<matomeQuote body="小さいプロバイダーは、信頼性を高めるインセンティブがすごく強いんだ。もし信頼性がなかったら客を失うからね。企業の設定だと「AWSにしてればこんなことにはならなかった」って言われがちだよ。HetznerはAWSよりシンプルなサービスで、複雑さが少ないから問題も起きにくい。多くの人がブランド認知も求めてるし、「自分で運用するのはプロっぽくない」って言われることもあるんだ。" userName="graemep" createdAt="2025/11/19 09:24:21" color="#ff33a1">}}




{{<matomeQuote body="Twilioみたいなアメリカのトランザクションメールサービス使ってる？ヨーロッパベースの代替サービスに興味あるんだけど、何か知ってる？" userName="GordonS" createdAt="2025/11/19 13:11:06" color="">}}




{{<matomeQuote body="「複雑さが少ない方が問題が起きにくい」って、良いことだよね。" userName="amelius" createdAt="2025/11/19 09:45:31" color="">}}




{{<matomeQuote body="「自分で運用するのはプロらしくない」って考え方はマジでひどいね。クラウドは便利な時もあるけど、大体の企業は使いすぎだぜ。オンプレミスはいいよ。安くて、ちゃんと設定すれば安全だし、データの主権も守れる。AWSとかがハッキングされたら、どれだけヤバいことになるか企業は分かってないんじゃないかな。クラウド上のデータはもう自分のデータじゃない。Amazon、Microsoft、Apple、誰か他のものだよ。" userName="Krutonium" createdAt="2025/11/19 11:48:42" color="#785bff">}}




{{<matomeQuote body="AWSやCloudflareって、実はダウンタイムが多いわけじゃないんだ。ただ、多くの人が使ってるから、ダウンすると大ニュースになるだけ。インフラは好きに使えばいいけど、可用性について正確な見方をしてないかもしれないよ。" userName="nonethewiser" createdAt="2025/11/19 14:59:46" color="#38d3d3">}}




{{<matomeQuote body="ハイパースケールでは、中央集権的な決定、極端な相互接続、たくさんのお金が、不安定なシステムを生み出すことがあるんだ。小規模サービスの方が信頼性があるかっていうのは単純な質問じゃないけど、一つ確かなのは、小規模サービスがダウンしても影響範囲は限定されるってこと。ハイパースケールでは、問題が起きるともっと多くの人に、もっと大きな影響が出る可能性がある。2008年の金融セクターみたいにね。小規模なユニットのセルラーネットワークは障害に強くて堅牢だけど、巨人は倒れるとき派手なんだ。" userName="pksebben" createdAt="2025/11/19 16:19:30" color="#ff33a1">}}




{{<matomeQuote body="Cloudflareは信頼性に対する莫大なインセンティブがあるけど、それでもミスることはある。だから集中化って悪いんだよな。" userName="hoppp" createdAt="2025/11/19 11:22:39" color="#38d3d3">}}




{{<matomeQuote body="複雑さが少ないってことは、得られるサービスも少ないってことなんだ。だから内部でSysAdminをもっとやるか、他のプロバイダーをたくさん使う必要が出てくるんだけど、多くの人はそれをしたがらないんだよね。" userName="graemep" createdAt="2025/11/19 10:03:48" color="#ff33a1">}}




{{<matomeQuote body="多くの人は余計な機能なんて求めてないんじゃないかな。" userName="amelius" createdAt="2025/11/19 10:05:46" color="">}}




{{<matomeQuote body="大手を使うのはブランド力や慣れも大事だからね。AWSとかは経験者が見つけやすいけど、ニッチなサービスだと、人材が使い方を知らなくてキャッチアップに時間がかかったり、ミスが増える可能性もあるんだ。" userName="giancarlostoro" createdAt="2025/11/19 13:59:50" color="#ff5733">}}




{{<matomeQuote body="AWSやCloudflareのダウンタイムが大騒ぎされるのは、利用者数が多いからってのはわかるよ。でも、GPのクライアントは年初から切り替えてダウンタイムなしって言ってるんだ。その期間だけで見れば、AWSやCloudflareよりずっと優秀ってことだよね。" userName="monooso" createdAt="2025/11/19 15:05:32" color="#ff5733">}}




{{<matomeQuote body="広範囲な障害って、実は“機能”だと思わない？AWSがダウンしたらみんな影響受けるから、自分のサイトが止まっても誰も文句言わない。でも、ちっちゃなプロバイダーが落ちたら、それはもう自分の責任で、上司に言い訳しなきゃいけない。それに、結局AWSのAPIに頼ってるなら、AWS障害の影響は避けられないんだよ！" userName="KK7NIL" createdAt="2025/11/19 17:12:52" color="#785bff">}}




{{<matomeQuote body="うん、それはそうだね。でも、この手の障害が顧客離れに与える影響は、小規模なCDNの場合と比べたら（相対的に）少ないんじゃないかな。" userName="graemep" createdAt="2025/11/19 12:55:32" color="">}}




{{<matomeQuote body="似た経験あるんだけど、AWSのマネージドサービス（Fargate、Lambda、SQS、S3とか）の代替を探してるなら、Scalewayも選択肢に入れてもいいと思うよ。ただのインスタンスホスティングだけじゃないからね。" userName="buildfocus" createdAt="2025/11/19 08:05:37" color="#45d325">}}




{{<matomeQuote body="CDNはbunny.netが好きなんだけど、Cloudflareは攻撃やAIスクレイパー、悪意のあるトラフィックとかを「スマート」にフィルタリングしてくれるから使ってるんだ。これって、bunny.netじゃ代替できないってことで合ってる？何か見落としてるかな？" userName="herbst" createdAt="2025/11/19 10:47:15" color="#45d325">}}




{{<matomeQuote body="AWSを使う時は、言われた機能か既存の物だけにしてる。AWSに縛られないし、管理が楽だからね。僕はAWS専門家じゃないから、VPS感覚で使いたいんだ。RDSは嫌いだけど、Lightsailは安いしVPSみたいで好き。S3は別で、これは縛りがないし、大量ファイルをあまりアクセスしないならすごく便利だよ。" userName="graemep" createdAt="2025/11/19 10:21:16" color="#ff5c5c">}}




{{<matomeQuote body="どうだろうね？障害の性質や、顧客がどれだけサービスを切り替えたいかってモチベーション次第じゃないかな。" userName="MiscIdeaMaker99" createdAt="2025/11/19 13:20:08" color="">}}




{{<matomeQuote body="僕のクライアント（超大規模）のAWSインフラは、今年はダウンタイムゼロだったよ。だから、どっかの誰かのクライアントの話だけで「明らかに優れてる」とは言えないんじゃないかな。Cloudflareは使ってないから何も言えないけどね。" userName="count" createdAt="2025/11/19 15:24:10" color="#ff5733">}}




{{<matomeQuote body="CloudflareがRustの`unwrap`のやっつけ仕事で世界規模の大障害を起こしたらしいね。これって完璧な自然実験じゃん？どれだけ顧客を失うか見ものだね。株価見ると株主はビビってないみたいだけどさ…。" userName="littlestymaar" createdAt="2025/11/19 13:33:31" color="#ff33a1">}}




{{<matomeQuote body="「Show HN: AWSの全サービスを使ったウェブサイト作ったよ！」っていうの、いつか見てみたいな〜。" userName="mhb" createdAt="2025/11/19 14:06:39" color="">}}




{{<matomeQuote body="AWSとかAzure、Cloudflareみたいな機能と同じものをオンプレミスで構築するのって、めちゃくちゃ難しいんだよな。お金も専門知識もすごいかかるし、手頃な値段じゃ無理ゲーじゃん？" userName="NetMageSCW" createdAt="2025/11/19 21:25:32" color="">}}




{{<matomeQuote body="Scaleway、いいよね！俺もほとんどの計算はHetznerを使ってるけど、マネージドサービスもやっぱ便利なんだよな。ScalewayのServerless computeとかマネージドDB、使ってみてかなり満足してるよ。" userName="moooo99" createdAt="2025/11/19 09:09:16" color="#ff5733">}}




{{<matomeQuote body="「小規模プロバイダーは信頼性を保つインセンティブが強い」って意見、マジでありえない。彼らはTier 1とTier IVのデータセンターで悩むはず。コスト差がデカすぎて、Tier IVは高すぎなんだよ。" userName="mbesto" createdAt="2025/11/19 14:38:07" color="">}}




{{<matomeQuote body="「AWSがハックされたらどれだけヤバいか企業は分かってない」って言うけど、企業は気にしないと思うな。彼らが気にするのは株価だけ。AWSがハックされても、他の大勢に紛れるから大したことない。株価への影響も小さいし、すぐ忘れられる。でもオンプレミスとかBob’s Cloudでハックされたら、話は全然違うよ。" userName="TheCraiggers" createdAt="2025/11/19 12:23:03" color="#45d325">}}




{{<matomeQuote body="https://mailpace.com は完全にヨーロッパを拠点にしてて、独立したサービスだよ。" userName="albertgoeswoof" createdAt="2025/11/19 15:14:51" color="">}}




{{<matomeQuote body="「広範囲の障害は『機能』だって考えたことある？」って、計画的陳腐化とか使い捨て文化と一緒でまさに『機能』だよね。本当の問題は、フェイルオーバープロバイダーを用意してないこと。今のソフトウェアはめちゃくちゃ抽象化されてるのに、たった数層に依存するのはダメだろ。小さいプロバイダーが落ちても、別のとこに切り替えればいいんだよ。AWSのダウンタイムで困ってる奴らを笑ってやろうぜ…。" userName="smaudet" createdAt="2025/11/19 18:21:34" color="#45d325">}}




{{<matomeQuote body="Scaleway、昔はすごく良かったけど、今はマジで高すぎてもうダメだね。" userName="moffkalast" createdAt="2025/11/19 10:51:59" color="">}}




{{<matomeQuote body="「ある人のクライアントベースに依存してるなら、別に良いってわけじゃない」って意見、確かにその通りだね。俺は「GPの視点から見て明らかに良い」って意味だってハッキリ言うべきだったよ。" userName="monooso" createdAt="2025/11/19 17:19:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="イギリスはEUじゃないから、プライバシー規制もEUと違うのかな？誰か詳しい人教えて！" userName="mosselman" createdAt="2025/11/19 16:03:35" color="">}}




{{<matomeQuote body="Hyvor Relay（https://github.com/hyvor/relay）は自分でホストできるよ。2026年にはクラウド版も出す予定なんだ。（共同設立者より）" userName="supz_k" createdAt="2025/11/19 17:03:37" color="#ff33a1">}}




{{<matomeQuote body="昨日Cloudflareが落ちた時、Downdetectorまで落ちてマジ笑ったわ。だからこの記事はホントぴったりだよね。" userName="jesperwe" createdAt="2025/11/19 06:47:19" color="">}}




{{<matomeQuote body="昔CDNで働いてた時、うちのステータスページプロバイダが顧客になっちゃって、プロバイダ変えなきゃいけなくなったの覚えてるわ。" userName="cortesoft" createdAt="2025/11/19 17:33:52" color="">}}




{{<matomeQuote body="これはGOLD Jerry, Goldだね。でも、ダウンディテクターがダウンディテクターがダウンディテクターを検出するのを、誰が検出するんだ？" userName="mylons" createdAt="2025/11/19 12:02:54" color="#785bff">}}




{{<matomeQuote body="今、そのサイトにいるだろ！" userName="eYrKEC2" createdAt="2025/11/19 14:17:53" color="#ff5c5c">}}




{{<matomeQuote body="HNこそが本当のダウンディテクターだよね。もしHNがダウンしたら、それはTCPもダウンしてるってことだから。" userName="bombcar" createdAt="2025/11/19 14:40:42" color="#785bff">}}




{{<matomeQuote body="https://www.isitdownrightnow.com/downdetectorsdowndetector.c..." userName="MattSayar" createdAt="2025/11/19 15:17:42" color="#38d3d3">}}




{{<matomeQuote body="ジョークなのは分かってるけど真面目に言うと、「誰が監視者を監視するのか？」って問いは大事だよね。でもこの件では、ダウンディテクターがダウンディテクターダウンディテクターを検出しても問題ないよ。もし別のAvailability Zone、別のコード、別のDeployment Cadenceなら、このやり方は結構うまくいくんだ。" userName="falcor84" createdAt="2025/11/19 13:26:05" color="#45d325">}}




{{<matomeQuote body="ハハ、まさにこのコメントが見たかった！もちろんジョークだよ。「誰が監視者を監視するのか」っていうWatchmenのコンセプトがすごく大事で、それを超ふざけて言いたかったんだ。" userName="mylons" createdAt="2025/11/19 20:09:29" color="#45d325">}}




{{<matomeQuote body="「誰が監視者を監視するのか？」ってやつ？ Arbitesだよ。" userName="Waterluvian" createdAt="2025/11/19 13:46:10" color="">}}




{{<matomeQuote body="皇帝に仕え、領土を守り、民を裁き守るんだ。皇帝の法を全宇宙に広め、その言葉に背く者を追跡し罰するんだよ。" userName="falcor84" createdAt="2025/11/19 14:12:31" color="">}}




{{<matomeQuote body="ダウンディテクターディテクターがダウンしてるかどうか、ダウンディテクターは検知できないの？分散型ダウン検知とかどう？ここにいる人たちなら、そのアイデアで動ける人いるでしょ。そのうち、HNで分散型ダウンディテクターが発表されるかもね :)" userName="graemep" createdAt="2025/11/19 12:45:06" color="#ff33a1">}}




{{<matomeQuote body="これ見て。http://factoryfactoryfactory.net/" userName="vismit2000" createdAt="2025/11/20 04:50:35" color="#ff5c5c">}}




{{<matomeQuote body="ほら、それがジョークなんだよ。全部Cloudflareのus-west-1にあるから、どうせ一緒にダウンしちゃうんだって。" userName="PunchyHamster" createdAt="2025/11/19 12:10:47" color="#ff33a1">}}




{{<matomeQuote body="さて、META Down Detectorの時間だね。3つのうちどれがダウンしてるか検知するやつ。" userName="joelhaasnoot" createdAt="2025/11/19 13:56:47" color="#785bff">}}




{{<matomeQuote body="それか、「誰が監視者を監視するのか？」ってこと？" userName="philipwhiuk" createdAt="2025/11/19 12:42:30" color="">}}




{{<matomeQuote body="僕は、オリジナルのダウンディテクターたちがやってると思うよ。" userName="mproud" createdAt="2025/11/19 14:31:41" color="">}}




{{<matomeQuote body="「相互確証ダウン検出」だね。まるで核抑止力みたいじゃん！<br>これはまさに究極の監視システムだわ。" userName="jl6" createdAt="2025/11/19 14:39:28" color="">}}




{{<matomeQuote body="どこまで行っても探知機だらけってことか。際限ないね。<br>もう、どんだけ探知機が必要なんだよって話だよな。" userName="excalibur" createdAt="2025/11/19 14:18:45" color="">}}




{{<matomeQuote body="いつだって「お前、ダウンしてる？」って聞いてくる奴がいるんだよな。<br>これ、ちょっとした名曲かもな！<br>https://youtu.be/DpMfP6qUSBo" userName="state_less" createdAt="2025/11/19 12:31:18" color="#38d3d3">}}




{{<matomeQuote body="3人のダウン検出器がバーに入ったんだ。<br>バーテンダーが「みんな起きてる？」って聞いたら、1人目は「知らん」。2人目も「知らん」。<br>で、3人目が「はい」って答えたんだってさ。これ、めちゃくちゃ深いジョークじゃん！" userName="mhb" createdAt="2025/11/19 14:09:54" color="#ff5c5c">}}




{{<matomeQuote body="おそらく、そいつらは「ブラインド」なダウン検出器なんだろうな。自分自身は検出できないってことだろ。<br>皮肉が効いてるね。" userName="oniony" createdAt="2025/11/19 15:37:36" color="">}}




{{<matomeQuote body="泣ける！これ、パクらせてもらうわ。<br>このコメント、最高すぎて思わず感情が爆発しちゃったって感じ？" userName="khasan222" createdAt="2025/11/19 14:36:09" color="">}}




{{<matomeQuote body="でもさ、お前の探知機がまだ動いてるか、<br>それを検出する別のやつが必要だろ。<br>結局、どこまで行っても「ダウン検出器」の「ダウン」検出器だらけになるんだよな。" userName="4ndrewl" createdAt="2025/11/19 07:07:38" color="#ff33a1">}}




{{<matomeQuote body="https://downdetectorsdowndetectorsdowndetector.com/<br>これはもう、URLがギャグになってるな。" userName="thinkingemote" createdAt="2025/11/19 07:54:04" color="">}}




{{<matomeQuote body="https://downdetectorsdowndetectorsdowndetectorsdowndetector....<br>さらに長くなった！どこまで増やせるんだよ。" userName="sd8f9iu" createdAt="2025/11/19 10:35:28" color="">}}




{{<matomeQuote body="誰かこのURLに10ドル投げ入れてみない？<br>https://downdetectorsdowndetectorsdowndetectorsdowndetectors...<br>このユーモアセンス、最高だね。" userName="ritzaco" createdAt="2025/11/19 11:46:58" color="#785bff">}}




{{<matomeQuote body="確認したんだけど、これって実際にDNSの許容範囲を超えてるわ。ラベル（ドット間の部分ね）は63文字までしかダメなんだ。どこかに「s」をこっそり入れれば収まるかもね。RFC1035<br>あと、今ちょうどDomaintoolsでいいエラーログを発生させちゃったと思うよ。https://whois.domaintools.com/downdetectorsdowndetectorsdown..." userName="rft" createdAt="2025/11/19 14:00:53" color="#ff33a1">}}




{{<matomeQuote body="もっと効率的な表記を使わなきゃね。例えば`downdetectorsx5.com`みたいにさ。" userName="cortesoft" createdAt="2025/11/19 17:32:41" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="`fix.downdetectors.com`はどう？" userName="chuckadams" createdAt="2025/11/19 18:05:22" color="">}}




{{<matomeQuote body="俺だけか分からないけど、つい何度も確認しに戻ってきちゃうんだよね。:-)" userName="jMyles" createdAt="2025/11/19 12:39:28" color="">}}




{{<matomeQuote body="これら全部、`downdetector`で監視できるのかな？" userName="callamdelaney" createdAt="2025/11/19 11:55:45" color="">}}




{{<matomeQuote body="全システム稼働中って言ってるのに、アメリカのロサンゼルスはダウンしてるよ。:(" userName="johnisgood" createdAt="2025/11/19 11:55:45" color="#ff5733">}}




{{<matomeQuote body="今はちゃんとダウンって表示されてるよ :D" userName="ProtoAES256" createdAt="2025/11/19 12:03:07" color="#ff5c5c">}}




{{<matomeQuote body="`Downdetector`が4つってマジかよ笑" userName="joasto" createdAt="2025/11/19 12:17:50" color="">}}




{{<matomeQuote body="インターネットが復旧したぞ！" userName="insin" createdAt="2025/11/19 16:52:45" color="">}}




{{<matomeQuote body="笑えたよ、ありがとう！" userName="wltr" createdAt="2025/11/19 09:20:25" color="">}}




{{<matomeQuote body="ダウン検出って有向グラフ（digraph）として考えられるよね。そこから「誰が誰を監視してるの？」って話が、数学的に面白くなるんだよ。<br>* https://en.wikipedia.org/wiki/Directed_Graph" userName="bell-cot" createdAt="2025/11/19 07:59:07" color="#38d3d3">}}




{{<matomeQuote body="たくさんあったら、常に何割かはダウンしてるもんだよ。その比率を追跡できるサイトがあったら助かるんだけどね。" userName="Nevermark" createdAt="2025/11/19 07:41:10" color="">}}




{{<matomeQuote body="これは集権型、非集権型、分散システムの質問だね。ダウン検出器は集権型システムの障害を検出するんだから、少なくともアウトレージ検出のための分散システムをちゃんと構築するべきだよ。お互いにハートビートを送り合う検出器を動かせばいい。数個で十分さ。検出器のクラスターが沈黙し始めたら、システムが崩壊してるって思っていいよ。少しでも残っていれば大丈夫。自己修復機能も、不可避なインフラ障害に対してノードの網を回復力のあるものにするのに役立つね。" userName="hirako2000" createdAt="2025/11/19 12:14:24" color="#45d325">}}




{{<matomeQuote body="ダウン検出器がずーっと下まで続いてるってことだね。" userName="neoCrimeLabs" createdAt="2025/11/19 12:55:33" color="">}}




{{<matomeQuote body="ここがそのページを監視してるページだよ：https://onlineornot.com/website-down-checker?requestId=jCfaD...<br>ロンドンでホストされてるみたいだね。" userName="rozenmd" createdAt="2025/11/19 08:06:52" color="#785bff">}}




{{<matomeQuote body="これらを連結リストにして、N番目のものをN-ダウン検出器って呼べばいいんじゃないかな。" userName="meken" createdAt="2025/11/19 13:36:35" color="">}}




{{<matomeQuote body="よう、ダウン検出器が好きなんだって？" userName="BrenBarn" createdAt="2025/11/19 07:39:36" color="">}}




{{<matomeQuote body="貢献ありがとう！さて、さらに大きな挑戦だよ。Cloudflareのステータスページへの需要増加で、Amazon CloudFrontも少しの間ダウンしたみたいだから、その負荷も処理できる新しいCDNを構築してくれ！" userName="ZeroConcerns" createdAt="2025/11/19 06:55:03" color="#ff33a1">}}




{{<matomeQuote body="画像なしの静的HTMLにCDNって必要かな？たとえリクエストが殺到しても、必要ないと思うんだけど。" userName="carstenhag" createdAt="2025/11/19 07:33:17" color="">}}




{{<matomeQuote body="必要だと思うよ。無限のファイルディスクリプタと、すべてのASへの完璧な接続性を持つサーバーがない限りはね。" userName="ZeroConcerns" createdAt="2025/11/19 09:12:04" color="">}}




{{<matomeQuote body="CDNはスタティックコンテンツ向けなんだろ？じゃあ、動的サイトを運用するには、無限のファイルディスクリプタと完璧な接続性がないとダメってこと？" userName="amelius" createdAt="2025/11/19 10:02:43" color="">}}




{{<matomeQuote body="「必要」って言葉は強いけど、トラフィックが急増したり、急なリクエストでサイトが落ちるのを避けたいなら、スタティック化は最高の解決策だよ。サーバレスとか過剰なサーバー準備よりもずっと安く済むしね。" userName="benregenspan" createdAt="2025/11/19 13:36:54" color="#ff5733">}}




{{<matomeQuote body="重要なのは、Down Detector自体はダウンしてなくて、Cloudflareの人間認証がダウンしてたってこと。このダウンディテクターはそれも考慮してるのかな？技術的にはダウンじゃないけど、使えなかったのは事実だよね。" userName="_nickwhite" createdAt="2025/11/19 18:32:08" color="#ff33a1">}}




{{<matomeQuote body="どうやって「アップ」を検出するの？Down DetectorはCloudflare障害の時に確かにダウンしてたけど、インデックスページは200を返してたはず（未確認）。ヘッドレスブラウザでスクショ撮るとCloudflareにブロックされそうだしな〜。" userName="Retr0id" createdAt="2025/11/19 12:52:05" color="">}}




{{<matomeQuote body="これ、俺が見る限りただの状態を偽装してるだけだぜ。script.jsが`fetchStatus()`、それが`generateMockStatus()`を呼んでステータス取るんだけど、ランダムな応答時間をでっち上げてるだけなんだよ。<br>例えば、ロンドンは250～550ms、オークランドは300～650ms、ニューヨークは380～800msってな。" userName="omoikane" createdAt="2025/11/19 19:36:06" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと関連する話なんだけど、Datadogが最近https://updog.aiを作ったみたいだよ。" userName="jakub_g" createdAt="2025/11/19 11:07:34" color="">}}




{{<matomeQuote body="このサイト、本当にAIを使ってるのか、それとも流行りのTLDを使ってるだけなのか気になるな。ページにはAIの言及がないしね。" userName="passivepinetree" createdAt="2025/11/19 16:11:06" color="">}}




{{<matomeQuote body="お約束だけどさ、これ見て→ https://youtu.be/ihlN5nf1qew" userName="yahoozoo" createdAt="2025/11/19 11:09:53" color="">}}




{{<matomeQuote body="僕も似たようなプロジェクトでhttps://hostbeat.info/ってのやってるよ。Uptime Robotみたいな感じ。昨日はマジでたくさんのアラートがユーザーに送られてビビった！とにかく良い仕事してるね。" userName="pytlicek" createdAt="2025/11/19 12:16:03" color="">}}




{{<matomeQuote body="Cloudflareでホストされてんの？" userName="ricq" createdAt="2025/11/19 07:09:04" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
