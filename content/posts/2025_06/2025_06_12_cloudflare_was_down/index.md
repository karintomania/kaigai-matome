+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'Cloudflareがまさかの停止！'
tags = ["Cloudflare", "障害", "サービス停止", "インフラ", "ネットワーク"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Cloudflareがまさかの停止！

引用元：[https://news.ycombinator.com/item?id=44261064](https://news.ycombinator.com/item?id=44261064)




{{<matomeQuote body="Cloudflare公式ブログのリンクだよ。今回の件についての詳細が載ってるよ。<br>https://blog.cloudflare.com/cloudflare-service-outage-june-1..." userName="datadrivenangel" createdAt="2025/06/12 18:24:01" color="#ff5c5c">}}




{{<matomeQuote body="記事からの引用ね。”Cloudflareの重要なWorkers KVサービスが、主要な依存関係であるサードパーティサービスの停止によりオフラインになった”んだって。<br>つまり、彼らは一部サービスで GCP に依存してるってことかな。" userName="claudex" createdAt="2025/06/12 20:05:06" color="#ff5733">}}




{{<matomeQuote body="もしそれが本当なら、BGP周りの他のいざこざがなければ、その依存関係はすぐなくなるんじゃない？" userName="its-kostya" createdAt="2025/06/12 21:41:08" color="">}}




{{<matomeQuote body="記事からの引用だよ。”Workers KV は、中央ストアのためのはるかに回復力の高いインフラに移行中なんだ。残念ながら、今回はその移行の隙間を突かれちゃったんだね”ってさ。" userName="yencabulator" createdAt="2025/06/13 02:35:46" color="#45d325">}}




{{<matomeQuote body="俺の WAG （てきとーな推測）だと、Workers KVって会社全体のインフラの95％くらいを占めてるんじゃないかな。" userName="beastman82" createdAt="2025/06/12 21:54:51" color="">}}




{{<matomeQuote body="mandatory dependency で、insider risk を軽減するための”必須の依存関係”だって聞いたよ。だから、まずなくならないね。たぶん、”問題点を早期に発見するため”とか言って、さらに遅いロールアウトを強制するようになるんじゃない？" userName="IX-103" createdAt="2025/06/12 23:12:47" color="">}}




{{<matomeQuote body="CEO が”すぐになくす”って言ってたよ。" userName="pizzafeelsright" createdAt="2025/06/12 22:45:59" color="">}}




{{<matomeQuote body="Sub-processor ページって、そういうの確認するのに簡単だよ。Cloudflare のサービス向け Sub-processor ページはこれ。<br>https://www.cloudflare.com/gdpr/subprocessors/cloudflare-ser..." userName="asteroidburger" createdAt="2025/06/12 21:48:36" color="#45d325">}}




{{<matomeQuote body="似たようなこと書いたわ。今後のためになったぜ。" userName="reimertz" createdAt="2025/06/12 20:10:56" color="">}}




{{<matomeQuote body="ってことは、一部のサービスでGCP使ってんの？<br>Googleは停止なんてしてないって言ってるぜ。ホラここ↓<br>https://x.com/Google/status/1933246051512644069<br>https://nitter.net/Google/status/1933246051512644069" userName="voxadam" createdAt="2025/06/12 23:01:41" color="">}}




{{<matomeQuote body="そう言いたい気持ちはわかるけど、顧客ならみんな嘘だって知ってるよな。" userName="IX-103" createdAt="2025/06/12 23:09:53" color="">}}




{{<matomeQuote body="これっていつもの”顧客の3%にとっては100％ダウン”ってやつ？" userName="hinkley" createdAt="2025/06/13 01:26:35" color="">}}




{{<matomeQuote body="Google Cloudのステータス見ろよ↓<br>https://status.cloud.google.com/incidents/ow5i3PPK96RduMcb1S..." userName="yencabulator" createdAt="2025/06/13 02:36:37" color="#38d3d3">}}




{{<matomeQuote body="まじかよ、停止してたって明確に書いてある公式ダッシュボードじゃなくて、4時間も前のツイートなんかリンクしてんのかよ。" userName="mirashii" createdAt="2025/06/13 01:43:52" color="">}}




{{<matomeQuote body="SLAとかSLOの支払いから逃げようとしてんだろ。" userName="voytec" createdAt="2025/06/13 01:17:06" color="">}}




{{<matomeQuote body="Downdetector見ると、GoogleとかCloudflare、AWSとか大手で軒並み停止してるぞ。<br>噂じゃあ、これ全部BGPルーティングの問題らしいな。" userName="koliber" createdAt="2025/06/12 19:07:39" color="#38d3d3">}}




{{<matomeQuote body="確かにありそうだな。前にこういうの見かけた時、BGPが原因でトラフィックがイランとか中国経由になったことあった気がする。" userName="cogman10" createdAt="2025/06/12 19:13:04" color="">}}




{{<matomeQuote body="そういやもっと前の中国関連の事例もあったな。これ↓<br>https://www.cyberdefensemagazine.com/experts-detailed-how-ch..." userName="nijave" createdAt="2025/06/12 19:28:36" color="">}}




{{<matomeQuote body="なんか昔似た件あったっけなー。でも今回はこんなにいっぱいサービスに影響した感じじゃなかったかも。てかさ、個人的には何もダウンしてるの気づいてないんだよね。俺ヨーロッパにいるけど。" userName="koliber" createdAt="2025/06/12 19:16:39" color="">}}




{{<matomeQuote body="これがその件ね [1]。なんか単一の /24 を狙ったみたい。だからそんなに大事にならなかったのかもね。[1] https://bishopfox.com/blog/bgp-hijacking-technical-post-mort..." userName="cogman10" createdAt="2025/06/12 19:23:37" color="#38d3d3">}}




{{<matomeQuote body="「Internet Health Report」ってとこがさ、「表示するデータなし」って言ってるよ。[1] https://www.ihr.live/" userName="Animats" createdAt="2025/06/12 20:03:42" color="#785bff">}}




{{<matomeQuote body="Anthropic もダウンしてるか、なんか調子悪いっぽい。もう散歩行こうかな。" userName="ramesh31" createdAt="2025/06/12 19:16:32" color="">}}




{{<matomeQuote body="GCP もダウンしてるってさ。 https://news.ycombinator.com/item?id=44260810" userName="jerrygoyal" createdAt="2025/06/12 18:49:42" color="#ff5c5c">}}




{{<matomeQuote body="変な偶然だねー。CloudflareってGCP使ってんのかな？" userName="ipsum2" createdAt="2025/06/12 18:56:33" color="">}}




{{<matomeQuote body="Googleの停止状況見る感じだと、たぶん認証のインフラが原因っぽいよ。" userName="ikiris" createdAt="2025/06/12 19:00:43" color="#ff5c5c">}}




{{<matomeQuote body="これってどういう意味？Googleの停止ってほとんどのGCPサービスに影響する広範囲な停止のことだけど。" userName="devmor" createdAt="2025/06/12 19:05:42" color="">}}




{{<matomeQuote body="Googleは原因が一部の中心的IAMサービスにあるって言ってるよ。それが他のサービスにカスケード影響してるんだって。" userName="pageandrew" createdAt="2025/06/12 19:08:12" color="">}}




{{<matomeQuote body="その情報どこで見たの？SNSかな？<br>インシデントレポートの影響サービスリストにIAMサービスがあるのは確かに見たよ。" userName="devmor" createdAt="2025/06/12 19:11:53" color="">}}




{{<matomeQuote body="ここ見て。<br>https://status.cloud.google.com/incidents/ow5i3PPK96RduMcb1S...<br>Identity and Access Management Service Issueのせいで複数のGCP製品が影響受けてるって書いてある。" userName="tom1337" createdAt="2025/06/12 19:13:12" color="#45d325">}}




{{<matomeQuote body="上を見てごらんよ。このHNコメント欄の上のほうに高評価されて載ってるじゃん。" userName="ikiris" createdAt="2025/06/12 20:31:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺がその返信を投稿した時にはまだそうじゃなかったんだよ。お前が俺の投稿に返信してるのって、俺が投稿してから2時間後だし。" userName="devmor" createdAt="2025/06/13 06:50:04" color="">}}




{{<matomeQuote body="そのコメントは自分で意味がわかるものだったし、いや、広範囲なGCP停止じゃなかったんだ。GCSとfirebase以外はほとんど動いてたし、その後でIdentity関連がカスケード問題を引き起こし始めたけど、このコメントが投稿された時点ではそうじゃなかった。" userName="ikiris" createdAt="2025/06/12 20:33:17" color="">}}




{{<matomeQuote body="＞広範囲なGCP停止じゃなかった<br>これが広範囲じゃないなら何が広範囲なんだよ？<br>API Gateway, ..., Vertex AI Search<br>これだけのサービスが影響受けてるインシデントだぞ。" userName="zerd" createdAt="2025/06/12 21:08:33" color="#ff33a1">}}




{{<matomeQuote body="うちのGCPのインフラ全体は全然大丈夫だったよ、ただ何も管理できなかっただけだけど。なんて言えばいいか分かんないや。お前がリストアップしたものの多くは全然止まってなかったし。" userName="ikiris" createdAt="2025/06/13 00:09:19" color="">}}




{{<matomeQuote body="お前んとこで止まってなかったからってみんなが大丈夫だったわけじゃないんだよ、ほとんどみんながダメだった可能性もある。<br>Googleも誰も影響受けてないならサービスを停止リストに入れないはずだろ。<br>「俺には動いてた」から「みんなに動いてたはず」って決めつけちゃダメだよ。" userName="mirashii" createdAt="2025/06/13 01:46:22" color="">}}




{{<matomeQuote body="元SREとして、この手の仕組みはよく知ってる。記事に挙げられてるようなのが本当に広範囲で止まってたら、もっとずっとひどかったはずだ。" userName="ikiris" createdAt="2025/06/13 04:36:53" color="">}}




{{<matomeQuote body="言ってること意味わかんないんだけど？ GCP自身のステータスページでも障害って書いてたじゃん？ うちの上流のプロバイダー（GCP使ってる）は確かに影響受けてたし止まってたよ。<br>元SREとして、「広範囲な障害」ってのは、一般人にはステータスページ見てもわからない特別な分類なの？ それともどういう意味？" userName="solardev" createdAt="2025/06/13 09:35:42" color="#ff33a1">}}




{{<matomeQuote body="Google自身がこれを障害としてリストアップしてるのに、議論するってすごい変だね。" userName="iimblack" createdAt="2025/06/13 01:49:39" color="">}}




{{<matomeQuote body="向こうのKVストアは確実に止まってたね。" userName="artursapek" createdAt="2025/06/12 22:54:26" color="#ff5c5c">}}




{{<matomeQuote body="うん、これは問題になるね。こんなに多くのサービスにわたって広範囲な問題は久しぶりに見たよ。" userName="neo_doom" createdAt="2025/06/12 18:57:25" color="">}}




{{<matomeQuote body="みんなが一握りの場所に全部集めるせいで、今はこれが半ば定期的になってるみたいだね。" userName="tete" createdAt="2025/06/12 19:48:30" color="">}}




{{<matomeQuote body="言わせてもらうと、こういうこと起こるの、ちょっといいんだよね…プロバイダーから顧客まで、みんな仕事がなんか一時停止する。<br>なんか国民の休日みたいに感じて、影響受けてるクラウドの下流にいる人たちは、何もできないからただ座ってリラックスできるんだよ。<br>自分のところで障害が起きたら、全員出動パニックモードだけど、ネットの半分が止まってるなら、もう自分の問題じゃないって感じ、笑" userName="solardev" createdAt="2025/06/13 09:38:27" color="#785bff">}}




{{<matomeQuote body="どのくらいのダウンタイムが許容されるかは、会社次第だね。Cloudflareみたいに（うまく対応してた）なら、これをサードパーティプロバイダーに対するフォールトトレランスを構築するきっかけにする。<br>もし君のアプリがミッションクリティカルなら、ダウンタイムは休日どころじゃない。" userName="prauscher" createdAt="2025/06/13 13:48:18" color="#785bff">}}




{{<matomeQuote body="当ててみようか、誰かが悪いBGP設定をデプロイしたんだろ？" userName="paxys" createdAt="2025/06/12 18:55:35" color="">}}




{{<matomeQuote body="この規模で広範囲な障害なら、それが主犯であるはずだね。" userName="CSMastermind" createdAt="2025/06/12 19:20:51" color="">}}




{{<matomeQuote body="「ネットをどう救ったか」って大げさなブログ記事がきっとすぐ出るよ😉<br>今は落ちてるけど、参考までにこの記事を見てね: https://blog.cloudflare.com/the-ddos-that-almost-broke-the-i..." userName="tete" createdAt="2025/06/12 19:44:45" color="">}}




{{<matomeQuote body="「あなたが人間か確認します」ってダイアログとWorkers機能にも影響出てるみたいだよ。" userName="aranchelk" createdAt="2025/06/12 18:26:48" color="#785bff">}}




{{<matomeQuote body="うん、KVもダメだね。KVに依存してるWorkersは全部エラー出てるよ。ダッシュボードには入れたけど、めちゃ遅い。UTC 18:00頃からエラー率がかなり上がったみたい。<br>追記: CFのステータスページでも多くのサービスで広範囲な障害だって認めたよ: https://www.cloudflarestatus.com/incidents/25r9t0vz99rp" userName="clairegraham" createdAt="2025/06/12 18:32:02" color="#38d3d3">}}




{{<matomeQuote body="何度か試したら俺もダッシュボードに入れたけど、使い物にならないね。エラーポップアップがずっと出てるよ。" userName="aranchelk" createdAt="2025/06/12 18:35:11" color="#45d325">}}




{{<matomeQuote body="そうなんだ。でも、なんでいつもCloudflareからこういうダイアログが出るのに、Akamaiからは全然出ないんだろうね？" userName="bgwalter" createdAt="2025/06/12 19:20:22" color="">}}




{{<matomeQuote body="このコメントを低評価したり投稿を報告したりしても、この深刻な問題は解決しないよ。この認証ダイアログのせいでインターネットが使えなくなるんだ。" userName="bgwalter" createdAt="2025/06/12 19:29:05" color="">}}




{{<matomeQuote body="apnews.comのスレッドで文句言ったんだ。apnews.comの認証自体もウザいのに、今回は全く動かなかったからさ。それは全然関係なくないでしょ。" userName="bgwalter" createdAt="2025/06/12 20:00:29" color="">}}




{{<matomeQuote body="タイトルが「広範囲なCloudflareサービス停止」に変わったよ。" userName="pier25" createdAt="2025/06/12 18:51:40" color="">}}




{{<matomeQuote body="東京で18:00 UTCから予定メンテしてて、問題が18:19 UTCに始まったって偶然？" userName="ourmandave" createdAt="2025/06/12 19:04:45" color="">}}




{{<matomeQuote body="関係ないよ。CloudflareにはダウンしてるGCPに依存してるサービスがあるから。でも、東京でメンテしてた人たちは、自分たちのせいかと思って顔面蒼白になっただろうね…" userName="alexcroox" createdAt="2025/06/12 19:54:06" color="">}}




{{<matomeQuote body="ポストモーテムで原因が分かるだろうね。こういう時こそ学びがあって、良い報告書を読むのが楽しみなんだよ。" userName="perching_aix" createdAt="2025/06/12 19:06:32" color="">}}




{{<matomeQuote body="そうだよ。Cloudflareは業界でもトップクラスの良いポストモーテムを書いてて、読むのがすごく楽しいんだ。URL：https://blog.cloudflare.com/tag/post-mortem/<br>こういう透明性や責任を持つ姿勢は本当にすごいと思う。誰だって失敗するけど、多くの会社は間違いを隠そうとするんだよね。Cloudflareのやり方を見ると、もっと信頼できるって感じるよ。" userName="solardev" createdAt="2025/06/13 09:41:43" color="#45d325">}}




{{<matomeQuote body="＞これって公開されるの？<br>うん、そうだよ。" userName="perching_aix" createdAt="2025/06/12 19:44:37" color="">}}




{{<matomeQuote body="あのページにはいつも予定メンテが載ってるから、僕の経験からすると、それはあまり当てにならないサインだよ。" userName="jonfw" createdAt="2025/06/12 19:34:28" color="">}}




{{<matomeQuote body="Cloudflareのラバランプが暗くなってるみたい。" userName="sidcool" createdAt="2025/06/12 23:18:12" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="このポストモーテムが待ちきれないよ。Google Cloudの停止がCloudflareのサービスをダウンさせるって、なんだか変な感じ。" userName="poorman" createdAt="2025/06/12 20:52:33" color="">}}




{{<matomeQuote body="インシデント情報が更新されたって。<br>影響は認証だけじゃないらしいよ。" userName="iimblack" createdAt="2025/06/12 18:41:40" color="">}}




{{<matomeQuote body="Workersアプリは動くようになったよ。<br>追記：USはOKだけどEUの顧客はまだダウンしてるって。<br>追記：EUの顧客からも大丈夫になったって報告きてる。" userName="pier25" createdAt="2025/06/12 20:10:38" color="">}}




{{<matomeQuote body="分散システムってのは壊れるもんだろ、それが普通。<br>大事なのはどれだけ早く被害を抑えて、エンドユーザーにバレないか。<br>KVがauthとかUIとかWorkers全部巻き込んでるなら、障害分離ができてない証拠。<br>復旧はいいけど、ローカルの問題直すのに全体で連携しなきゃいけないのは設計がイマイチ。<br>完璧な稼働時間じゃなくていいけど、復旧後はもっとスムーズに感じなきゃ。<br>今はシステムは助かったけど、インターフェースがダメだった感じだね。" userName="b0a04gl" createdAt="2025/06/12 19:02:43" color="#ff33a1">}}




{{<matomeQuote body="Cloudflareの認証もGoogleのIDシステムも昨日けっこう長い時間止まったね。<br>これってなんか技術的な繋がりがあるのかな？" userName="PeterStuer" createdAt="2025/06/13 06:41:52" color="">}}




{{<matomeQuote body="Cloudflareははっきり言ってないけど、ブログにはこう書いてあったよ。<br>「今回の障害原因はWorkers KVサービスの基盤ストレージインフラの障害。これは多くのCloudflare製品の重要な依存関係で、設定とか認証とかアセット配信に使われてるんだ。<br>このインフラの一部はサードパーティのクラウドプロバイダーが提供してて、そいつが今日停止してKVサービスに直接影響したんだ。」" userName="tom1337" createdAt="2025/06/13 08:42:23" color="#45d325">}}




{{<matomeQuote body="Workers KVがもう30分以上止まってる。マジで深刻な影響が出てるよ。<br>APIもダメだ。<br>あれだけ冗長性あるのに、こんな風に全体に影響するなんて信じられないね。" userName="pier25" createdAt="2025/06/12 18:42:57" color="">}}




{{<matomeQuote body="インシデントページ(https://www.cloudflarestatus.com/incidents/25r9t0vz99rp)によるとね、<br>「Cloudflareの重要なWorkers KVサービスは、キーとなる依存関係であるサードパーティサービスの停止でオフラインになった」って。<br>このサードパーティってGCPじゃないかと俺は見てるね。<br>Cloudflareのデータセンターで動くってめちゃくちゃ売りにしてたんだから、冗長性のためにWorkers KV使ってたCloudflareの顧客だったら相当キレると思うわ。" userName="kenhwang" createdAt="2025/06/12 20:07:54" color="#ff5c5c">}}




{{<matomeQuote body="CDNとWAFは大丈夫みたいだね。<br>Cloudflareは古いサービスとかコアサービスほど信頼性高くない新しいサービスを急いで出しすぎたんだと思うよ。" userName="nijave" createdAt="2025/06/12 19:26:33" color="">}}




{{<matomeQuote body="プロキシはだいたい大丈夫みたい。<br>たぶんWorkers関連のローカルな問題だね。<br>Identity access rulesでZT tunnel通してる俺のサイトの一つだけが影響受けてるからさ。" userName="vimwizard" createdAt="2025/06/12 19:03:32" color="#785bff">}}




{{<matomeQuote body="もしかして太陽フレアが原因？" userName="ineedaj0b" createdAt="2025/06/12 18:51:24" color="">}}




{{<matomeQuote body="いやいや、記事はCloudflareが止まったって話でしょ。" userName="CoopaTroopa" createdAt="2025/06/12 19:09:31" color="">}}




{{<matomeQuote body="今回の停止を引き起こしたプロンプト（もしAI関連なら）も公開してくれるといいんだけどな。" userName="joduplessis" createdAt="2025/06/12 18:59:30" color="">}}




{{<matomeQuote body="ポストモーテム（事後検証）はもうAIにやらせちゃえばいいんじゃね？" userName="daxfohl" createdAt="2025/06/12 19:09:43" color="">}}




{{<matomeQuote body="彼らはただ”速く動いて色々ぶっ壊す”を100倍の速さでやってるだけだろ。コードの中身なんてどうでもいい、全部ノリと勢いで乗り切れってかｗ /s" userName="vsgherzi" createdAt="2025/06/12 20:03:29" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
