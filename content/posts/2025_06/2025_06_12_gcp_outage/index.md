+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'GCPで障害発生中！認証システムが原因か、影響は他サービスにも？'
tags = ["GCP", "クラウド", "障害", "インフラ", "IAM"]
featureimage = 'thumbnails/purple3.jpg'
+++

> GCPで障害発生中！認証システムが原因か、影響は他サービスにも？

引用元：[https://news.ycombinator.com/item?id=44260810](https://news.ycombinator.com/item?id=44260810)




{{<matomeQuote body="Googleの「Chemist」って中央サービスが原因かもね。それがプロジェクト状態とかポリシーとかチェックしてるから、「visibility check failed」とか「cannot load policy」みたいなエラーや広範な影響も納得だわ。→https://cloud.google.com/service-infrastructure/docs/service...<br>追記：Googleは原因を「Identity and Access Management Service Issue」だって言ってるよ。" userName="rvnx" createdAt="2025/06/12 18:42:08" color="#785bff">}}




{{<matomeQuote body="GCPだけじゃなくて、他のネットサービスも落ちてるみたいだね。もしかしたらこの「Chemist」サービスが特に外部から影響受けやすくて、それがGCPの内部サービスにまで広がったのかも。" userName="VWWHFSfQ" createdAt="2025/06/12 18:48:08" color="">}}




{{<matomeQuote body="それも十分あり得るね。でも変なのはCloudflareの状況。https://www.cloudflarestatus.com/<br>最初は「Access authentication to fail」から始まったんだって。これってGoogleの障害後に認証とかquotaがおかしくなった説を裏付けるかも？でもその後どうなったの？！ただの雪だるま式？！なんか変だよな。" userName="rvnx" createdAt="2025/06/12 18:50:05" color="#ff5c5c">}}




{{<matomeQuote body="Cloudflareのインシデント報告によるとね、「Workers KV」って重要なサービスが、主要な依存関係である「3rd party service」の障害でオフラインになったらしいよ。だから、KVサービスに依存してる一部のCloudflare製品が使えなくなったって。<br>Googleの障害がCloudflareに広がるなんて意外だけど、あり得なくはないか。" userName="terom" createdAt="2025/06/12 20:02:45" color="#ff5733">}}




{{<matomeQuote body="Cloudflareって自前でインフラ持ってるはずなのに、GCPと一緒にこんなに広い範囲で落ちてるなんてビックリだな。" userName="whatevertrevor" createdAt="2025/06/12 19:00:55" color="">}}




{{<matomeQuote body="「3rd party serviceの障害」ってことはさ、CloudflareってGCPに依存してて冗長性がないってこと？まあ、「key dependency」って書いてるし、そう読めるよね。" userName="voytec" createdAt="2025/06/12 20:18:37" color="">}}




{{<matomeQuote body="じゃあどうするっての？インフラを別のクラウドで複数作って自動でfail-overさせる？そんなの無理ゲーだし、どう考えても問題が増えるだけだと思うけどなー。modern devopsでもそこまでは難しくない？" userName="tibbar" createdAt="2025/06/12 22:57:51" color="">}}




{{<matomeQuote body="そう思うよなー。DownDetectorではAzureとかOracle Cloudも落ちてるって報告されてるけど、さすがにGoogleには依存してないだろ。DownDetectorも全部が正しいわけじゃないんだろうな。https://ocistatus.oraclecloud.com/#/<br>https://azure.status.microsoft/en-gb/status<br>公式ステータスは両方グリーンだよ。" userName="cyberpunk" createdAt="2025/06/12 19:06:41" color="#45d325">}}




{{<matomeQuote body="Cloudflareって、ふつうのcloudじゃなくてCDNなんだよね。得意なのはエッジPOPで賢いことすること。だから、自社のcontrol planeみたいなedgeじゃない部分のcomputeは、GCPみたいな「competitor」cloudに置いちゃってる可能性高いと思うよ。<br>そこはrevenue centerじゃないし、OpExを最適化するほどでもないからね。" userName="derefr" createdAt="2025/06/12 20:58:49" color="#38d3d3">}}




{{<matomeQuote body="彼らって自分たちでdata centerを運営してるcompanyなのに、public cloudが落ちたときに一緒におかしくなるとは思わないよね。" userName="arccy" createdAt="2025/06/12 23:04:34" color="">}}




{{<matomeQuote body="Cloudflareの最新のステータス更新見ると、システムがGCPに依存してるってことがほぼ確定みたいだよ。<br>「Cloudflareの重要なWorkers KVサービスが、主要な依存先であるサードパーティサービスの停止によってオフラインになった。その結果、KVサービスに情報を保存・配信するCloudflareの一部の製品が利用できなくなった」って言ってるね。" userName="smoe" createdAt="2025/06/12 20:10:13" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、もしコントロールプレーンが単一のクラウドプロバイダーに依存してるなら、こういう大きな問題に晒されることになるよね？<br>特にインターネット全体のReverse ProxyやCDNになりたい会社（Cloudflareのことかな？）なら、なおさらじゃない？" userName="whatevertrevor" createdAt="2025/06/12 21:21:44" color="">}}




{{<matomeQuote body="正直、すごく驚いたよ。<br>他社のクラウドサービスに依存すること自体、一般的になっちゃったけど、やっぱりリスクはあると思うんだよね。<br>でも、Cloudflareがこんなに依存してるなんて思ってもみなかったな。" userName="hplk" createdAt="2025/06/12 23:32:01" color="">}}




{{<matomeQuote body="俺、通知にはExpoの仲介を使ってるんだけど、今回のGoogle関連の状況を考えると、FCMも影響受けてるんじゃないかなって思うんだよね。<br>それってありえる？" userName="mrGomesDev" createdAt="2025/06/12 18:49:09" color="">}}




{{<matomeQuote body="Down Detectorは、クラウド全体がダウンするような状況だと問題があるんだよね。<br>予期せぬ依存関係ってやつ。<br>問題ないクラウドで動いてるアプリがおかしいって Down Detectorに報告しても、そのクラウド自体は大丈夫だったりする。<br>実際には、そのアプリが、問題のクラウドで動いてる別のSaaSプロバイダーに依存してて、そっちのせいで死んでるってことがよくあるんだよ。<br>例えば、「本来あるべきBackpressure（処理しきれないデータが溜まること）を受けて、処理キューが閾値を超えたからユーザーにエラーを返したんだけど、実はそれはSaaS Xからのタイムアウト待ちが遅すぎてキューが溜まったせいだった」とかね（こういうので何回も痛い目見てる）。" userName="mandevil" createdAt="2025/06/12 19:32:30" color="#ff5c5c">}}




{{<matomeQuote body="Googleって、Tech CompanyじゃなくてAdvertising Companyだからね。<br>広告収入に関係ないクリティカルなことを、Googleに頼るのはやめた方がいいよ。" userName="ProAm" createdAt="2025/06/12 23:47:43" color="">}}




{{<matomeQuote body="あー、俺も今それ見たよ。<br>面白いね、Cloudflareがこれだけ大きな外部依存の表面を持ってるってのは、確かにちょっと驚きかな。" userName="whatevertrevor" createdAt="2025/06/12 21:19:39" color="">}}




{{<matomeQuote body="可能性はかなり高いね。<br>Firebase Authは確実にダウンしてる（まだ公式発表されてないけど）。<br>だから、FCMも多分そうだろうね。" userName="rvnx" createdAt="2025/06/12 18:51:20" color="">}}




{{<matomeQuote body="CloudflareのビジネスモデルはB2Bで、全部のネットをCDNするわけじゃないんだ。<br>コスト削減できるならGoogleとかのクラウドに依存するのも普通じゃない？" userName="snowwrestler" createdAt="2025/06/12 22:36:12" color="">}}




{{<matomeQuote body="大手クラウドと競合してるCloudflareの製品が、GCPにこんなに依存してるなんてビックリしたわ。" userName="smoe" createdAt="2025/06/12 21:29:04" color="">}}




{{<matomeQuote body="Firebase全体が完全にダウンしてたよ。" userName="praveen4463" createdAt="2025/06/16 15:32:33" color="">}}




{{<matomeQuote body="世界に主要なIaaSプロバイダーは20～25社くらいあるけど、互いに依存すべきじゃないよね。<br>Cloudflareはそう思ってたはずだし、今回の障害で対策するんじゃね？" userName="ghshephard" createdAt="2025/06/13 00:35:37" color="">}}




{{<matomeQuote body="確かにそうだけど、こんな障害って頻繁に起きる？<br>GoogleがダメならCloudflareも期待できないし、サービスも復旧したみたいだね。<br>滅多に起きないならGCPに依存しても大した問題ないんじゃない？<br>自前でフル構築するよりコスト安いしね。" userName="mbreese" createdAt="2025/06/12 22:39:37" color="">}}




{{<matomeQuote body="CloudflareはWorkersをコンピュートプラットフォームとして推してるけど、過去の障害報告<br>（https://blog.cloudflare.com/major-data-center-power-failure-in-sjc/）<br>見ると、やっぱり自前のDCを持つべきだと思うな。" userName="arccy" createdAt="2025/06/12 23:06:29" color="#45d325">}}




{{<matomeQuote body="「代替策は？」じゃないだろ。<br>Cloudflareは「唯一の」冗長性・CDNプロバイダーとして宣伝してんだから、文句言わずにバックエンドのインフラをきっちり整備しろって話だよ。" userName="voytec" createdAt="2025/06/13 01:50:49" color="">}}




{{<matomeQuote body="数週間前のこのインタビュー<br>（https://youtu.be/C5-741uQPVU?t=1726s）<br>でも、ちょっとだけ触れてたんだよね。<br>あれ、驚いたわ。" userName="craigseeman" createdAt="2025/06/13 12:24:56" color="#785bff">}}




{{<matomeQuote body="Claude Sonnet 4 (Cursor)とかGemini Proでエラー出まくりだよ。<br>うわー、また自分の脳みそだけでコード書かなきゃいけないのかよ。<br>2024年12月の原始人コーダーに戻るのか…" userName="atonse" createdAt="2025/06/12 18:20:20" color="#785bff">}}




{{<matomeQuote body="俺も同じだよ。AI Studioでさ、「コンテンツ生成失敗：割り当て量オーバーだって。後でやれ」って出るんだよね。" userName="burntalmonds" createdAt="2025/06/12 18:36:02" color="#785bff">}}




{{<matomeQuote body="俺さ、Cloud Storageにファイルアップロードのテストしてた最中だったんだ。<br>だから、まあ、散歩にでも行くのにちょうどいいタイミングかなって。" userName="bicx" createdAt="2025/06/12 18:27:39" color="">}}




{{<matomeQuote body="エラー処理を追加する良い口実になるな。<br>普段つい忘れがちだから、へへ。" userName="matsemann" createdAt="2025/06/12 19:46:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CursorのAuto Agentモードでもエラー出てるよ、俺も。" userName="robin-a" createdAt="2025/06/12 20:07:03" color="">}}




{{<matomeQuote body="2025年6月12日より前のDevたち：「AI？プッ、幻覚ばっかじゃん。俺の代わりになんてなれないね！」<br>2025年6月12日のGCP障害中のDevたち：「AI無いのかよ？！俺を奴隷だと思ってんのか？！」<br>皮肉効いててウケるね。" userName="cryptonector" createdAt="2025/06/12 19:40:27" color="#785bff">}}




{{<matomeQuote body="マジそれな…。<br>障害待ってる間にJIRAのタスク整理でもしようかと思ったけど、AI使ってバックログ掃除するのに慣れすぎて、いちいちチケット開くのがすげーめんどくさい。<br>たった2ヶ月でこんなにツールに依存するなんて、良い wake-up call だわ。" userName="atonse" createdAt="2025/06/12 20:11:28" color="#785bff">}}




{{<matomeQuote body="ローカルのLLMなら動いたかもね。" userName="tough" createdAt="2025/06/12 22:08:10" color="">}}




{{<matomeQuote body="Devって一括りにするのは違うでしょ。" userName="sva_" createdAt="2025/06/12 20:48:21" color="">}}




{{<matomeQuote body="openrouter.ai も落ちてるわ。" userName="crocowhile" createdAt="2025/06/12 18:43:33" color="">}}




{{<matomeQuote body="GPTはエージェントモードで動いてる。<br>ClaudeはGoogle、GPTはMSFTサーバーか自己ホストって感じかな。" userName="ashu1461" createdAt="2025/06/12 18:39:55" color="">}}




{{<matomeQuote body="ClaudeがGCPでホストされてることの確実な情報ならこれだよ。<br>https://www.anthropic.com/news/anthropic-partners-with-googl..." userName="kenhwang" createdAt="2025/06/12 20:29:43" color="#ff33a1">}}




{{<matomeQuote body="あれ、もう2年半も前の話なんだ。この業界だと永遠くらい昔だね。内容は今でも本当かもしれないけど、あの記事は良い根拠にはならないよ。" userName="mkl" createdAt="2025/06/13 01:26:39" color="">}}




{{<matomeQuote body="俺の知る限り、ClaudeはAWSで動いてるよ。OAIはAzureだね。<br>追記：あー、もしかしたらGCPでも動いてるのかもね。でも個人的にはClaude Codeを使うのに問題ないんだけど。" userName="scottmf" createdAt="2025/06/12 20:49:13" color="#785bff">}}




{{<matomeQuote body="Appleのローカルモデル、日を追うごとに良く見えてくるね:’)" userName="Xavez" createdAt="2025/06/12 19:23:22" color="">}}




{{<matomeQuote body="Googleのローカルモデルもね（Gemini Nano/Gemma 3n）。" userName="nolist_policy" createdAt="2025/06/12 19:31:54" color="">}}




{{<matomeQuote body="Gemma 3nってどうやってローカルで動かすの？" userName="ilc" createdAt="2025/06/12 19:34:54" color="">}}




{{<matomeQuote body="https://github.com/google-ai-edge/gallery/releases/tag/1.0.3" userName="n0mer" createdAt="2025/06/12 21:23:05" color="">}}




{{<matomeQuote body="Cloudflareもダウンしてるみたい。https://www.cloudflarestatus.com によると：更新情報 - 一部のサービスで断続的な障害が発生してるよ。調査を続けていて、各サービスの影響を評価したらリストを更新するってさ。<br>影響が出てるサービス：<br>Access<br>WARP<br>Durable Objects (SQLite backed Durable Objectsだけ)<br>Workers KV<br>Realtime<br>Workers AI<br>Stream<br>Cloudflare dashboardの一部<br>2025年6月12日 - 18:48 UTC<br>追記：https://news.ycombinator.com/item?id=44261064" userName="ipsum2" createdAt="2025/06/12 18:49:15" color="#45d325">}}




{{<matomeQuote body="CloudflareがGCPを主要な依存先として使ってたら、マジで何やってんだって感じだよね。" userName="0xy" createdAt="2025/06/12 21:11:50" color="#ff5733">}}




{{<matomeQuote body="いつかCloudflareがGCPに依存して、GCPがCloudflareに依存して、AWSはそのどちらかが動いてることに頼って、CloudflareもAWSに依存する、なんて日が来るかもね。<br>そうなったら、インターネット全体がダウンして、誰も直し方を知らなくなるよ。" userName="a2128" createdAt="2025/06/12 22:44:16" color="">}}




{{<matomeQuote body="Google社内でも似たようなことが起きたらしいよ。<br>頻繁に読む小さな設定用の分散データストアと、めったに読まない大きな設定用の別データストアがあってね。<br>小さな方は、大きな方に依存してるサービスに依存してて、その大きな方がまた小さな方に依存してたんだって。<br>システムを「コールドスタート」させる計画はあるらしいけど、僕が知る限り、実際に試されたことはないみたい。" userName="IX-103" createdAt="2025/06/12 23:25:24" color="">}}




{{<matomeQuote body="その秘訣は、関連する設定を定期的にディスクにシリアライズしておくことだね。<br>で、システム起動する時はディスク上の設定を使うんだ。<br>多分、めったに読まれない設定のサービスについてはこれをやっておけば、頻繁に読まれる設定のサービスは、めったに読まれない方のサービスがなくても起動できるはずだよ。" userName="__turbobrew__" createdAt="2025/06/13 04:00:56" color="#ff5c5c">}}




{{<matomeQuote body="入力用のバックアップジェネレーターみたいなもんか。<br>なるほど、理にかなってるね。" userName="syllogism" createdAt="2025/06/13 08:33:28" color="">}}




{{<matomeQuote body="そうそう、僕もシステムを起動する時はそう設定してるよ。<br>例えば、サービスディスカバリシステムは、ピアの情報を定期的にディスクに保存しておくんだ。<br>それで、もし全部落ちちゃっても、特定のノードのIPアドレスは固定にしておけば、サービスディスカバリシステムは最後に知ってたピアのIPを使って自分で復旧できるんだよ。" userName="__turbobrew__" createdAt="2025/06/14 00:07:42" color="#ff5733">}}




{{<matomeQuote body="Workers KVに入れとけばいいじゃん…<br>あ、そっか（皮肉）。" userName="solardev" createdAt="2025/06/13 09:54:38" color="">}}




{{<matomeQuote body="それはIRCの出番だね。<br>（ちなみに、そのフィンランド人の発明者は、https:＼＼en.wikipedia.org＼wiki＼Jarkko_Oikarinen によると、偶然にもGoogleのストックホルムで働いてるらしいよ。）" userName="lysace" createdAt="2025/06/12 23:11:16" color="">}}




{{<matomeQuote body="動くはずだけど、トップページにも載ってるよ。" userName="ipsum2" createdAt="2025/06/12 18:59:03" color="">}}




{{<matomeQuote body="18:43 UTC時点で全部ダメっぽいな… ここ見てみ？ https://downdetector.com/" userName="0xffany" createdAt="2025/06/12 18:43:31" color="#ff5733">}}




{{<matomeQuote body="なんかGoogleの人と話しててさぁ、「AWSも落ちてる」って言われて、確認もしないで「BGP攻撃か？」とか言っちゃったんだよね。恥ずかしいわ。" userName="voytec" createdAt="2025/06/12 20:16:54" color="">}}




{{<matomeQuote body="BGPの問題っぽくなかったな。サービスはすぐエラーになったし、だらだら落ちる感じじゃなかったんだ。" userName="toast0" createdAt="2025/06/12 20:42:58" color="">}}




{{<matomeQuote body="こういうフェイクニュース好きだわぁ。なんかScary Movieの変なシーンみたいでウケる:’）" userName="yard2010" createdAt="2025/06/12 21:11:56" color="">}}




{{<matomeQuote body="たぶんGoogleが最初に報告したんじゃない？" userName="deepsun" createdAt="2025/06/12 20:10:53" color="">}}




{{<matomeQuote body="「ずっと前からそうだよ」" userName="plateng000" createdAt="2025/06/12 19:34:49" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Googleのステータスページだよ。<br>https://status.cloud.google.com/regional/americas" userName="AdamJacobMuller" createdAt="2025/06/12 20:03:41" color="#38d3d3">}}




{{<matomeQuote body="Googleだけじゃなくて、AWSとかMicrosoft、Cloudflare、GCPとかもっと広い範囲の問題っぽいね。全部がGoogleのインフラに依存してるわけじゃないし。" userName="paxys" createdAt="2025/06/12 20:08:18" color="">}}




{{<matomeQuote body="あー、やっぱりそうだった。<br>CloudflareがマジでGCPの問題だったんだね。<br>他のサービスもCloudflareとか適当なGoogleのものに依存してたんだろう。<br>DiscordとかもアップデートでGCS使ってたし。" userName="ikiris" createdAt="2025/06/12 20:48:38" color="#ff5c5c">}}




{{<matomeQuote body="たぶんさー、障害の検知システム自体がGoogle Cloudで動いてたりしてね /s" userName="patapong" createdAt="2025/06/12 18:53:51" color="">}}




{{<matomeQuote body="Downdetectorってさ、ユーザーの報告を表示してるだけだと思うよ。" userName="throitallaway" createdAt="2025/06/12 19:17:05" color="">}}




{{<matomeQuote body="うん、間違いないね。<br>サービスが落ちてるかチェックしてたら、それは実質的に「落ちてるよ！」って投票してるようなもんだから。" userName="brentm" createdAt="2025/06/12 19:45:49" color="">}}




{{<matomeQuote body="DowndetectorとSpeedtestをやってるOoklaにとっては、ちょっと機会損失だったかもね。<br>世界中のISPでソフト動かしてるのにさ。<br>https://help.speedtest.net/hc/en-us/articles/360039164793-How-do-I-setup-a-Speedtest-server-at-my-ISP-<br>まぁ、障害の検知って簡単じゃないけどね。" userName="lysace" createdAt="2025/06/12 20:13:37" color="#45d325">}}




{{<matomeQuote body="こういう障害の時は、Downdetectorは完全に誤情報だよ。" userName="peanut-walrus" createdAt="2025/06/12 21:43:51" color="">}}




{{<matomeQuote body="Downdetectorはサービスを監視してるわけじゃなくて、SNSとかからのユーザー報告をまとめてるだけなんだ。<br>大規模な障害だと報告がノイズだらけになって、ほぼ全部ダウンしてるみたいに見えちゃうんだよ。" userName="peanut-walrus" createdAt="2025/06/12 22:38:08" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
