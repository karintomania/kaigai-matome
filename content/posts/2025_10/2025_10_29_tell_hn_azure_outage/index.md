+++
date = '2025-10-29T00:00:00'
months = '2025/10'
draft = false
title = 'Azure、システム障害発生か！？'
tags = ["Azure", "クラウド", "障害", "Microsoft", "サービス停止"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Azure、システム障害発生か！？

引用元：[https://news.ycombinator.com/item?id=45748661](https://news.ycombinator.com/item?id=45748661)




{{<matomeQuote body="うちのAzureはダウンしてるよ、Azure Portalにもアクセスできないんだ。みんなも同じ経験してる？サービスはカナダ/セントラルとUS-East 2にあるよ。<br>https://downdetector.ca/status/windows-azure/<br>https://azure.status.microsoft/en-gb/status" userName="tartieret" createdAt="2025/10/29 16:01:18" color="#ff5733">}}




{{<matomeQuote body="インシデントの暫定レビューだよ。<br>https://azure.status.microsoft/en-gb/status/history/<br>タイムラインを見てみて。<br>2025年10月29日15:45 UTCに顧客影響が出始めて、16:04 UTCに監視アラートで調査開始、16:15 UTCにAFDの設定変更調査が始まったんだ。<br>16:18 UTCに公開ステータスページで初回通知、16:20 UTCに影響を受けた顧客にAzure Service Healthで通知したらしい。<br>17:26 UTCにAzure PortalがAzure Front Doorからフェイルオーバーして、17:30 UTCにはこれ以上の影響を防ぐために新しい設定変更をブロック。<br>17:40 UTCに”最後に確認された正常な構成”の展開を開始し、18:30 UTCには修正された構成をグローバルに展開し始めたんだ。<br>18:45 UTCには修正構成のグローバル展開後、トラフィックを正常なノードに徐々にルーティングしながら、ノードの手動回復を開始。<br>23:15 UTCにPowerAppsの依存関係を緩和し、顧客も緩和を確認。<br>そして2025年10月30日00:05 UTCにAFDの影響が顧客に対して緩和されたと確認されたってさ。" userName="croemer" createdAt="2025/10/30 05:45:53" color="#45d325">}}




{{<matomeQuote body="全面的な障害で、影響が出てからステータスページに載るまで33分もかかったなんて、マジで冗談だよね。" userName="xnorswap" createdAt="2025/10/30 07:26:59" color="">}}




{{<matomeQuote body="Microsoftを擁護するわけじゃないけど、Azureはいつもひどいよ。開発者には使いにくいし、バグだらけで、しかも高すぎ。" userName="neya" createdAt="2025/10/30 08:08:15" color="">}}




{{<matomeQuote body="もしそれがMicrosoftを擁護してるつもりなら、攻撃してるところなんて見たくもないね（笑）。" userName="michaelt" createdAt="2025/10/30 08:26:22" color="">}}




{{<matomeQuote body="16:04に”調査が始まった”って言ってるのに、その後の16:15には”調査を開始した”って言ってるじゃん。どっちが本当なの？" userName="onionisafruit" createdAt="2025/10/30 06:03:31" color="">}}




{{<matomeQuote body="AzureのCTOがGitは直感的じゃないし、使いにくくて難しいって文句言ってたのが一番面白かったな。" userName="madjam002" createdAt="2025/10/30 09:36:10" color="">}}




{{<matomeQuote body="もっと重要なのは、顧客影響が出始めたのが15:45 UTCなのに、監視アラートが発動して調査が始まったのが16:04 UTCってことだよね。19分の遅延なんて冗談だよ。" userName="infaloda" createdAt="2025/10/30 08:31:27" color="">}}




{{<matomeQuote body="俺はAzureしか使ったことないけど、まあ悪くないと思うよ。複雑なところもあるけど、他のプロバイダも同じだと思ってたし。バグもあんまり経験しないしね。高いけど、それも他も同じなんじゃないかな？" userName="sfn42" createdAt="2025/10/30 09:44:21" color="">}}




{{<matomeQuote body="CopilotがAzure Portalに導入された時のために、このコメントは取っておきなよ。" userName="dude250711" createdAt="2025/10/30 09:32:10" color="">}}




{{<matomeQuote body="本格的に作業に取り掛かる前に、コーヒー買いに行くわ。" userName="ssss11" createdAt="2025/10/30 08:06:44" color="">}}




{{<matomeQuote body="障害発生の認識に時間がかかったのが不思議だよ。<br>監視もアラートもなかったみたいだし、なんか変だよね。" userName="notorandit" createdAt="2025/10/30 16:59:55" color="#785bff">}}




{{<matomeQuote body="誤報回避でアラートまで10分、初期対応に10分の猶予があるんだろ。<br>それか、バックアップアラートに切り替わるまで5分、起きてコーヒー飲んで適切なウィンドウを開くまで4分ってことじゃない？" userName="hinkley" createdAt="2025/10/30 22:08:34" color="#ff5733">}}




{{<matomeQuote body="それって Windows Phone のこと言ってるみたいだね。" userName="lawgimenez" createdAt="2025/10/30 11:33:02" color="">}}




{{<matomeQuote body="結構小規模なプロジェクトなら大体同じだよ。<br>でも、大規模になると Azure は AWS より圧倒的にひどいんだ。" userName="lokar" createdAt="2025/10/30 15:56:02" color="#38d3d3">}}




{{<matomeQuote body="はは、最近使ってないでしょ？Copilot はもうあるけど、全然役に立たないよ。<br>俺が「[X]を[Y]に[Z]を使って繋ぐには？」って聞いたら、Copilot は「削除したい AKS クラスターを選んでください」だってさ。" userName="alias_neo" createdAt="2025/10/30 09:43:29" color="#785bff">}}




{{<matomeQuote body="残念だけど、それもよくある話だよ。<br>AWS でもステータスページの更新にもっと時間がかかるのを見たことあるし。<br>多分、ステータスページの変更には役員の承認が必要で、誤報が悪い評判になったり、SLA 不履行で顧客に弁償しなきゃいけなくなったりするからだろうね。" userName="thayne" createdAt="2025/10/30 15:02:30" color="#785bff">}}




{{<matomeQuote body="Microsoft を擁護するなら、Azure は昔から完全にジョークだよ。<br>開発者フレンドリーじゃなくて、バグだらけで高すぎる。<br>それに、めちゃくちゃ安全じゃないことも忘れちゃダメだ。四半期ごとに、簡単に悪用できる重大なクロス・テナント CVE が何年も出てるしね。" userName="sofixa" createdAt="2025/10/30 11:37:54" color="#45d325">}}




{{<matomeQuote body="Microsoft みたいな大企業なら、夜勤に頼らずに、基本的な運用をカバーできるだけのタイムゾーンにインシデント対応チームを置く余裕があるはずだって、俺は思うんだけど。" userName="tremon" createdAt="2025/10/30 23:59:58" color="#ff5733">}}




{{<matomeQuote body="しばらくの間、ステータスは”Azure portalに問題があるかもしれない”って表示されてたんだよ。" userName="sbergot" createdAt="2025/10/30 08:20:51" color="">}}




{{<matomeQuote body="Windows Phoneを擁護したい気分だよ、好きだったんだ！でも、購入したハードウェアが2年も経ってないのにWindows Phone 8へのアップグレード対象外だったから、もうやめたけどね。初期 adoptersを罰するなんてひどい話だよ。" userName="ac2u" createdAt="2025/10/30 12:12:49" color="">}}




{{<matomeQuote body="どれもこれも、それぞれのやり方で壊れてて、変で、高価なんだよ。Azureに固有の話じゃないってこと。" userName="voidfunc" createdAt="2025/10/30 11:33:32" color="">}}




{{<matomeQuote body="チョコレートチップクッキーで炭水化物も摂るべきだよ、俺ならそうするね。血糖値が低い状態でデバッグなんてしたくないだろ。" userName="ozim" createdAt="2025/10/30 08:17:59" color="">}}




{{<matomeQuote body="それはアラートが出るのに19分かかったとは言ってないよ。”Following”ってのは、どんな時間でもあり得るってことだろ。" userName="Xss3" createdAt="2025/10/30 12:05:09" color="">}}




{{<matomeQuote body="テクノロジーに携わる者として、MSは常に避けるべきだよ。たとえある分野で最高のソリューションを持っていたとしても、それを使って最悪のエコシステムに引きずり込もうとするからね。" userName="campbel" createdAt="2025/10/30 18:07:13" color="#785bff">}}




{{<matomeQuote body="俺は2回目の調査はAFDに特化したものだと読んだよ。1回目はもっと一般的な話だろ。" userName="not_a_bot_4sho" createdAt="2025/10/30 06:20:44" color="">}}




{{<matomeQuote body="うーん、それってWindowsやMS Teamsを擁護するときに使うのと同じ議論じゃないかな？" userName="rk06" createdAt="2025/10/31 10:37:05" color="">}}




{{<matomeQuote body="AWSは”対処中”と言うか、影響発生から60〜90分後に何かを言うかのどっちかだよ。MSFTがこんなに一貫してるなんてラッキーだろ！マネジメントがあそこの優秀な人材を使い潰してるらしいから、Azureチームにはハグを送るよ。" userName="schainks" createdAt="2025/10/30 17:19:54" color="#785bff">}}




{{<matomeQuote body="それってさ、3段階のマネジメントを上がって、さらにPRと法務チームの承認を得るのにかかった時間ってことだよね。" userName="imglorp" createdAt="2025/10/30 10:39:15" color="">}}




{{<matomeQuote body="うん。でもさ、Azureと比べると、その発言はまさに”目糞鼻糞を笑う”って感じだよ。Gitは別に特に親切なフリはしてないし、ただ特定の仕事を効率的にこなすだけだからね。" userName="dspillett" createdAt="2025/10/30 10:30:30" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Azure Status Pageからのメッセージだよ：<br>16:57 UTC更新：約16:00 UTCからAzure Front Doorの問題で一部サービスが利用できない状態に。Azure Portalにアクセスできない可能性もあるよ。Portalが使えないならPowerShellやCLIを試してみて。PortalをAFDから切り離して問題解決を試みてる。調査と復旧作業は継続中。60分以内にまた情報出すって。<br>16:35 UTC更新：約16:00 UTCからDNSの問題でサービス利用に影響が出てるって。Portalアクセス問題を解決するための対応はしてるみたい。根本原因と追加の対策を調査中だよ。60分以内に情報出すってさ。<br>16:18 UTC更新：Azure Portalのアクセス問題を調査中。またすぐ情報出すって。<br>詳しい情報はここから：https://azure.status.microsoft/en-gb/status" userName="mystcb" createdAt="2025/10/29 16:23:20" color="#ff33a1">}}




{{<matomeQuote body="うちのサービスだと、ヨーロッパでAFDが結構頻繁に止まるんだよね。2時間以上でも、50％以上のケースでどこにも報告されないことが多いよ。" userName="cyptus" createdAt="2025/10/29 17:20:01" color="#785bff">}}




{{<matomeQuote body="Azureのチケットをスパムしまくろうぜ。CSAMがいるなら、AFDの問題について素敵なPowerPointを作ってあげたら？それが彼らの仕事だしね。＞2時間以上でも、50％以上のケースでどこにも報告されないことが多いよ。これって公開されないってことだよね？サービスヘルスアラートは届いてるの？" userName="RajT88" createdAt="2025/10/29 17:23:01" color="">}}




{{<matomeQuote body="＞CSAM<br>Child Sex-Abuse Materialってこと！？<br>いやー、素晴らしい略語の衝突だね。" userName="cyberax" createdAt="2025/10/29 17:58:31" color="">}}




{{<matomeQuote body="うん、Portalだけじゃないよ。microsoft.comも落ちてるみたい。" userName="jdc0589" createdAt="2025/10/29 16:23:49" color="">}}




{{<matomeQuote body="DNSが言及されてるから、インシデントの報告書が楽しみだな。AWSで起こったことと似てるかどうかって意味で興味深いね。" userName="8cvor6j844qw_d6" createdAt="2025/10/29 16:40:35" color="">}}




{{<matomeQuote body="それはかなりありそうもないな。AWSは公開RCAでhttps://aws.amazon.com/message/101925/、DNSの’レコードアロケーター’での競合状態がDDBの全DNSレコードを消し去ったって発表してるんだ。単純化してるけど、Azureが似たような競合状態を起こして一つのシステム上のDNSレコードを消し去り、それが他全てに伝播するなんて考えにくいね。共通点は”DNSだった”ってだけで終わりそう。" userName="Insanity" createdAt="2025/10/29 16:56:07" color="#ff5c5c">}}




{{<matomeQuote body="彼らは”Success Customer Account Manager”に改名すべきだね。" userName="mirekrusin" createdAt="2025/10/29 18:26:50" color="">}}




{{<matomeQuote body="Front Doorから移行する理由がまた増えちゃったね。Blob Storageから大きなファイルを扱う時に、キャッシュがないと2MB/sに制限されるから、Windows StoreやXboxのダウンロードが遅いのも多分これと同じ問題だよ。数ヶ月サポートに問い合わせたけど、「仕様です、対応予定なし」だってさ。Cloudflareに移行したらパフォーマンスは爆速だし、コストも安くなったよ。あとはドキュメント用の静的サイトだけなんだけど、今回の障害を機に早くFront Doorから移しちゃおうかな。" userName="jonathanlydall" createdAt="2025/10/29 17:20:05" color="#ff5733">}}




{{<matomeQuote body="Downdetector見たらAWSもGCPもダウンしてるらしいね。今日はとんでもない一日になりそうだな。" userName="daxfohl" createdAt="2025/10/29 16:33:45" color="">}}




{{<matomeQuote body="ステータスメッセージはFront Doorの問題を認めてるけど、その他の対応はPortalとか内部サービスをFront Doorなしで動かすことばっかりみたいだね。Front Doorを使ってる俺らは長期戦になるのかな？" userName="jjp" createdAt="2025/10/29 17:14:43" color="">}}




{{<matomeQuote body="Microsoftのエコシステムって、ほんと残念な頭字語が多いよな…。" userName="psunavy03" createdAt="2025/10/29 17:50:38" color="">}}




{{<matomeQuote body="うちもCloudflare移行を考えてるんだけど、APEXドメイン使ってるからDNSリゾルバも全部Cloudflareに移さないといけないのかな？Azureみたいに便利な「ルールセットビルダー」はあるの？" userName="out_sider" createdAt="2025/10/29 17:26:37" color="">}}




{{<matomeQuote body="CSAMって「Customer Success Account Manager」って意味もあるんだって！俺みたいにびっくりした人もいるんじゃない？" userName="tomashubelbauer" createdAt="2025/10/29 17:54:50" color="">}}




{{<matomeQuote body="いつだってDNSが原因なんだよな。" userName="cdr420" createdAt="2025/10/29 17:05:17" color="">}}




{{<matomeQuote body="CloudflareのEnterpriseプランじゃないなら、DNSゾーンはCloudflareにホストしてもらう必要があるよ。Azureをレジストラにしてると、NSレコードをCloudflareに向けられない（少なくとも半年前は無理だった）。ドメイン移管もできないんだ。うちはNamecheapに移したけど、Azureからの移管も悪夢だったよ。UIにオプションがないから、非公開のドキュメントでazコマンドを見つけて転送コードを取得したんだ。すぐに移管を承認するオプションもAzure側にはなくて、1週間以上待つ羽目になったよ。CloudflareのルールビルダーはFront Doorとは違うけど使いやすいし、UIも超速いんだ。Front Doorは設定する時、いつも遅くてイライラしてたよ。あと、CloudflareはFront DoorみたいにAPEX証明書を半年ごとに手動更新する必要がないのも最高だね。" userName="jonathanlydall" createdAt="2025/10/29 17:52:44" color="#38d3d3">}}




{{<matomeQuote body="あーあ。履歴書に書くには気まずいことになりそうだな。" userName="codeduck" createdAt="2025/10/29 20:05:21" color="">}}




{{<matomeQuote body="これって情報が出るまでの仮のコメントだと思うよ。Microsoft社内では「Sev 1」扱いで「全員出動」って見た気がするんだ。どこで見たか覚えてないから、見つけたらその人に教えてあげてね。" userName="mystcb" createdAt="2025/10/29 16:28:07" color="#ff33a1">}}




{{<matomeQuote body="Azureネットワークの接続障害だってさ。UTC16時頃からAzure Front Doorで問題が発生して、一部サービスが使えなくなってるんだって。設定ミスが原因みたい。AFDサービスへの変更を全部ブロックして、正常だった状態に戻してる最中だよ。<br>ポータルはAzure Front Door（AFD）から切り離したから、Azure管理ポータルには直接アクセスできるはず。復旧のETAは未定だけど、30分以内か情報が入り次第更新するってさ。最終更新は2025年10月29日UTC17:17。" userName="planewave" createdAt="2025/10/29 17:18:47" color="#ff5733">}}




{{<matomeQuote body="RCA（根本原因分析）がさ、興味深かったな。お互いを知らない分散システムで、リーダー選出もしないのに、みんなで記録をめちゃくちゃに更新してたんだって。どれか一つが少し遅延しただけで、そこから全部がドミノ倒しみたいに障害を起こしたらしい。内部的な事情は不明だけど、全然うまく設計されてないシステムって感じだね。" userName="parliament32" createdAt="2025/10/29 17:04:46" color="#38d3d3">}}




{{<matomeQuote body="これってコイントスだよね。表ならDNS、裏ならBGP。" userName="tempest_" createdAt="2025/10/29 18:15:30" color="">}}




{{<matomeQuote body="Front Doorから早く移行した方がいいよ。昔から障害の原因になってきたし。今となっては他のどんなサービスでもマシだよ。" userName="llama052" createdAt="2025/10/29 17:28:53" color="">}}




{{<matomeQuote body="MicrosoftがTraffic Managerを使ってAFDの問題を回避する方法を一時的に公開してたんだけど、learn.microsoft.com/...traffic-manager のリンクが全然繋がらなかったんだって。まさかみんなが直面してる障害のせいで。すぐにそのリンクを削除したみたい。もう笑っちゃうね。" userName="NDizzle" createdAt="2025/10/29 18:14:11" color="">}}




{{<matomeQuote body="一般的に、専門用語を並べるよりも、もっと分かりやすい言葉で説明した方がずっと良いよね。" userName="riffic" createdAt="2025/10/29 18:32:27" color="">}}




{{<matomeQuote body="障害発生から1時間後に、ポータルに問題があるってサービスヘルスアラートが来たよ。全然役に立たないし、紛らわしいね。" userName="llama052" createdAt="2025/10/29 17:25:17" color="">}}




{{<matomeQuote body="でもさ、その声明ってまだステータスページにあるんだよね。" userName="Aperocky" createdAt="2025/10/29 18:38:02" color="">}}




{{<matomeQuote body="昔Azure使ってた時ってさ、結局Premium Supportのアップセルしかしてこなかったんだよね。" userName="nijave" createdAt="2025/10/29 22:56:34" color="">}}




{{<matomeQuote body="Starbucksのモバイルオーダーが使えなくて、「Grubhubでベーグルとコーヒー頼もうかな」って思ったら、Grubhubもダウンしてたんだ。共通の原因を探しにHNに来たら、やっぱり期待を裏切らなかったよ。" userName="Uehreka" createdAt="2025/10/29 16:43:21" color="#ff5c5c">}}




{{<matomeQuote body="HNが地下の数台のサーバーで動いてるってのは良いことだよな。クラウドよりよっぽど信頼性あるみたいじゃん！" userName="pants2" createdAt="2025/10/29 17:01:52" color="">}}




{{<matomeQuote body="うわ、さっきStarbucksのドライブスルーから列が全然動かないから出ちゃったんだよ。これのせいだったのか！" userName="sergiotapia" createdAt="2025/10/29 17:05:10" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="遺伝的に同じハードウェアは使うなよな！<br>https://news.ycombinator.com/item?id=32031639<br>https://news.ycombinator.com/item?id=32032235<br>追記: うわ、https://news.ycombinator.com/item?id=32031243をhttps://news.ycombinator.com/highlightsに入れてなかったなんて信じられないわ。修正しといた。" userName="dang" createdAt="2025/10/29 17:57:08" color="#785bff">}}




{{<matomeQuote body="Starbucksの役員たちが、彼らが作った脆弱なシステムについて責任を問われるべきだと思うだろう？でも、そうはならないんだよな。" userName="iso1631" createdAt="2025/10/29 19:40:36" color="">}}




{{<matomeQuote body="なんで？Starbucksは重要なサービスを提供してるわけじゃないだろ。お金やリソースを少なくして、たまに数時間コーヒーが売れなくなるリスクを受け入れるのは、経営とエンジニアリングの両方の視点から見ても、全く妥当な判断だよ。" userName="peanut-walrus" createdAt="2025/10/29 21:00:09" color="#38d3d3">}}




{{<matomeQuote body="StarbucksのモバイルはAWSの障害の時もダウンしてたんだよな…" userName="hypeatei" createdAt="2025/10/29 16:57:23" color="">}}




{{<matomeQuote body="Netatmoのデバイスが室内の空気質の悪さを通知しなくなった時に気づいたよ。最高じゃん。データが自宅ネットワークにあるのに、なんでクラウド経由じゃないとダメなの…" userName="port11" createdAt="2025/10/29 20:09:13" color="">}}




{{<matomeQuote body="少なくとも2022年にはAWS上で動いてたみたいだよ（しばらくの間ね）。https://news.ycombinator.com/item?id=32030400" userName="lysace" createdAt="2025/10/29 17:17:42" color="#ff33a1">}}




{{<matomeQuote body="「HNがダウンしてる間、何してた？」っていうAsk HNスレッドがあったのが最高だよ。" userName="airstrike" createdAt="2025/10/29 17:59:51" color="">}}




{{<matomeQuote body="Netatmoでも同じことが起きたよ――皮肉にも、システム全体が落ちてる時に「問題なし」ってNetatmoのインシデントレポートに返信してたんだ。でも、Netatmoは複数のデバイスのデータを統合して1年分のデータを問い合わせる必要があるから、ローカルには保存できないサーバーが必要なんだよ。" userName="pasc1878" createdAt="2025/10/30 14:42:18" color="#45d325">}}




{{<matomeQuote body="彼らはマルチクラウドなんだよ――だから、全部の障害に弱いんだ！" userName="SoftTalker" createdAt="2025/10/29 17:00:08" color="">}}




{{<matomeQuote body="もしStarbucksの株主だったら、CTOが責任をアウトソースしたせいで収益を捨ててるなんて、全然ハッピーじゃないね。何度も言うけど、AWSは他のソリューションよりずっと高いのに、経営陣にとっては責任を転嫁しやすいだけなんだよ。" userName="iso1631" createdAt="2025/10/30 10:37:47" color="">}}




{{<matomeQuote body="複数のクラウドプラットフォームが同時にオンラインじゃないと動かないマルチクラウドなアプリを作るつもりだよ。クラウドコンピューティングのRAID 0だね。" userName="Hamuko" createdAt="2025/10/29 16:58:36" color="">}}




{{<matomeQuote body="昔（13年前かな？）、AmazonがSABLEをRAMからSSDに移行した時、同じバッチから128個のディスクが一斉に故障したんだ。俺はインターンだったけど、みんなすっごいストレス感じてたよ。" userName="praccu" createdAt="2025/10/30 02:27:58" color="#ff5c5c">}}




{{<matomeQuote body="コンピューターがダウンしたら、現金での対面取引もできなくなるってマジでクソだよな。いろんな店で何回も見たけど、現金受け取って手書きでメモしてたのは1回だけだったわ。" userName="bombcar" createdAt="2025/10/30 09:25:03" color="#ff33a1">}}




{{<matomeQuote body="2020年のChristmas Eveに、このバグでひどい目にあったよ。データも一部失くしたし、色々学んだわ。<br>https://forum.hddguru.com/viewtopic.php?f=10&t=40766" userName="gogusrl" createdAt="2025/10/29 19:41:12" color="#38d3d3">}}




{{<matomeQuote body="俺も1回経験したことあるわ、SSDのfirmwareのバグで、正確な時間で動作停止しちゃうやつ。" userName="Cthulhu_" createdAt="2025/10/30 15:02:10" color="">}}




{{<matomeQuote body="大企業が災害復旧策として導入してるもの、マジで信じられないくらいひどいのが多いよな。’単一障害点の排除’とか言ってるけど、実際は複雑で、ほとんど失敗するような多重障害点を増やしてるだけだよ。" userName="mring33621" createdAt="2025/10/29 17:13:29" color="#38d3d3">}}




{{<matomeQuote body="news.ycombinator.comがM5に戻ったみたいだな、一時的って言ってるけど。<br>https://news.ycombinator.com/item?id=32031136<br>digコマンドの結果、IPアドレスは209.216.230.207で、これもM5に関連してるって。" userName="jjice" createdAt="2025/10/29 18:01:09" color="#785bff">}}




{{<matomeQuote body="multi-cloudにしとけって言ったじゃんか…。" userName="andoma" createdAt="2025/10/29 16:59:48" color="">}}




{{<matomeQuote body="システム障害時でも、ネルソンみたいに「ハハッ！」ってからかいながら、俺は魔法瓶のお茶と弁当で楽しむんだ。いつも飲み物と食べ物はちゃんと準備してるよ。支払いシステムが落ちたり、bank accountハックされたり、店が閉まったり、何が起こるかわかんないからね。みんなシステムには冗長性とかバックアップ考えるのに、飲食物にはやんないじゃん？オフィスにkettleと予備のkettle置くとかさ。" userName="Theodores" createdAt="2025/10/29 19:36:43" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
