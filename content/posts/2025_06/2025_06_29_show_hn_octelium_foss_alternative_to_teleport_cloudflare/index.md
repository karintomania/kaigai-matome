+++
date = '2025-06-29T00:00:00'
months = '2025/06'
draft = false
title = 'オープンソースのOcteliumがすごい！ TeleportやCloudflare、Tailscale、Ngrokの機能をまとめて代替か'
tags = ["オープンソース", "セキュリティ", "ネットワーク", "インフラ", "開発ツール"]
featureimage = 'thumbnails/purple5.jpg'
+++

> オープンソースのOcteliumがすごい！ TeleportやCloudflare、Tailscale、Ngrokの機能をまとめて代替か

引用元：[https://news.ycombinator.com/item?id=44412207](https://news.ycombinator.com/item?id=44412207)




{{<matomeQuote body="僕、Octeliumの開発に数年関わってきたんだけど、オープンソースになったのは2025年5月下旬なんだ。＜br/＞リポジトリのREADMEに詳しいんだけど、Octeliumはオープンソースでセルフホスト可能なZero Trustリソースアクセスの統合プラットフォームなんだよね。主に企業のVPNやリモートアクセスツールのモダンな代替を目指してるんだ。＜br/＞Twingate、Tailscale、OpenVPN Access Serverの代替になるVPNとしても使えるし、Cloudflare Access、Teleport、Google BeyondCorpみたいなZTNAプラットフォームとしても、API/AIゲートウェイとしても使える。MCPやA2Aアーキテクチャのインフラ、ngrokの代替、ホームラボのインフラ、もっと高度なKubernetes ingressとしても機能するんだ。＜br/＞基本的には、人間からワークロード、ワークロードからワークロードまで、いろんな環境に適した、KubernetesみたいなスケーラブルなZero Trust secure/remote accessの統合アーキテクチャとして設計されてるよ。＜br/＞主な機能や仕組みの詳細は、リポジトリのREADMEか、docs（https://octelium.com/docs）で直接読んでみてね。" userName="geoctl" createdAt="2025/06/29 11:24:17" color="#45d325">}}




{{<matomeQuote body="Octeliumが何をするか分かりにくいって人向けの情報だよ。＜br/＞このページ（https://octelium.com/docs/octelium/latest/overview/how-octel...）が一番分かりやすかったね。＜br/＞何ができるかの massive list から始まるんじゃなくて、Octeliumの核となる primitives を説明して、そこから発展させてるから分かりやすいんだ。＜br/＞実際、かなりクールで役に立ちそうだね！＜br/＞僕が理解した限りでは、コア機能はこれかな：＜br/＞- HTTPとかPostgreSQLみたいな高レベルなプロトコルを理解して、その内容を使って細かくセキュリティ判断できるVPNみたいなゲートウェイ＜br/＞- Kubernetesの上にあるクラスター構成レイヤー＜br/＞この二つが組み合わさって、要するにパーソナルクラウドになるんだね。＜br/＞だから、大手クラウドプラットフォームみたいに、できることが million 個あって、最初はどれが必要か分かりにくいけど、ホームラボとか、クラウドコストを抑えたい小さい会社とか、カスタムPaaSでクラウド機能を売るみたいなのに使えそうなシステムに見えるよ。いいね！" userName="ar-nelson" createdAt="2025/06/29 13:51:34" color="">}}




{{<matomeQuote body="TailScaleは素晴らしいけど、競争相手は絶対必要だよね。IPOが間近だと思うんだけど、そのフェーズに入った途端に nasty price increases が来るのは間違いないから、誰かが fierce に追いかけないとね。" userName="ttul" createdAt="2025/06/29 15:43:49" color="">}}




{{<matomeQuote body="Headscaleを working on してる individual も Tailscaleの employee だよ。そしてかなり stableで prod ready だから、もし彼らが pull the plug しても、majority of essential features はもうあるから community fork が still keep it alive だろうね。" userName="udev4096" createdAt="2025/06/30 05:10:15" color="">}}




{{<matomeQuote body="問題はね、commercial services は常に enshittify するんだ。 inevitable だよ。 Netflixみたいに市場を conquer しても、 profits で rising line を見たいから、 then they will turn the thumbscrews on the customers ってわけ。" userName="wkat4242" createdAt="2025/06/29 18:22:12" color="">}}




{{<matomeQuote body="特に when they conquer the whole market だね。だから investors は growth and adoption を favor するんだ。 even at a loss でもね。 until it’s won the market and can turn up the monetization dial まで。" userName="candrewlee" createdAt="2025/06/29 20:30:52" color="">}}




{{<matomeQuote body="まあ、 any way に彼らはやるけどね。All the streaming services も enshittifying してるし、 smaller ones もね。他の smaller webshops も Amazon がするのと同じ way で enshittifying してるよ。Cory Doctorow が described したみたいに、 Netherlands には bol.com と coolblue.com って few big webshops があって、彼らは now also allowing third party sellers なんだ。 often even from China だね。 webshops は all responsibility から absolved されるけど、 they do cash out on every transaction だから。" userName="wkat4242" createdAt="2025/06/29 20:47:47" color="">}}




{{<matomeQuote body="Sorry no. A stable organization with a good profit margin は employees を take care するのに十分なんだ。 boundless growth は enshittification が associated with してることだけど、それは money-hungry stakeholders と “investors” が driven するものなんだ。彼らは an ever growing return on investment を demand する。 they don’t settle for speed, they need constant acceleration ってわけ。" userName="loloquwowndueo" createdAt="2025/06/30 00:58:53" color="">}}




{{<matomeQuote body="スタートアップとかFAANGの社員ってストックでもうけてるから、家のローンとか子どもの学費のために会社の業績アップ（結果としてひどくなっても）に賛成してるんじゃない？ HNに投稿しない90%の社員は受け入れてるし、一部の野心的な社員は積極的にやってるかもね。" userName="jacobn" createdAt="2025/06/30 02:08:52" color="">}}




{{<matomeQuote body="これはアメリカのメンタリティだね。もっと、もっと！個人的にはヨーロッパみたいに安定した収入がいいな。競争はしたくない。ただ生きたいだけ。社員がいいならいいけど、顧客が別のを見つけたり海賊版を使っても文句言うなよ。アメリカ企業は株主のためで、社員も顧客も消耗品扱いなんだ。" userName="wkat4242" createdAt="2025/06/30 07:47:47" color="">}}




{{<matomeQuote body="TailscaleはセルフホストもOKみたいだよ。「代わりにHeadscaleで自分のコントロールサーバーをホストできる」って書いてある。[1] https://tailscale.com/blog/tailnet-lock-ga#self-hosting" userName="wiesbadener" createdAt="2025/06/29 21:41:19" color="#ff5c5c">}}




{{<matomeQuote body="今はいいけど、次はセルフホストを規制して稼ごうとするかもね。売上は毎年増えなきゃいけないから、企業はどんどん必死になるんだ。今はまだそんな段階じゃないけど、将来はそうなると思うよ。" userName="immibis" createdAt="2025/06/30 12:51:57" color="">}}




{{<matomeQuote body="https://netbird.io もあるよ。" userName="braginini" createdAt="2025/06/30 04:01:27" color="#ff5733">}}




{{<matomeQuote body="でも、もう似たような製品っていっぱいあるでしょ？ ZeroTierとかね。だいたい同じだよ。全部が商用じゃないけど（なんで商用がいいのかな？）。" userName="wkat4242" createdAt="2025/06/29 18:20:35" color="#45d325">}}




{{<matomeQuote body="そうそう、俺もTailscaleより先にZeroTierを選んだんだ。全然後悔してないよ。いろんなシステムをリモートで見たり管理したりする俺の使い方には、ほぼ完璧だったね。" userName="nativeit" createdAt="2025/06/30 12:51:43" color="#ff33a1">}}




{{<matomeQuote body="中国のEasyTierもあるよ https://easytier.cn/en/" userName="dahrkael" createdAt="2025/06/29 20:40:33" color="#38d3d3">}}




{{<matomeQuote body="SlackのNebulaもチェックしてみて。" userName="dangoodmanUT" createdAt="2025/06/29 22:09:30" color="#45d325">}}




{{<matomeQuote body="Netbirdもかなり追い上げてきてるよ。" userName="snapplebobapple" createdAt="2025/06/30 17:15:55" color="">}}




{{<matomeQuote body="Netbirdは前から気になってたんだよね。今はまだ機能少なめだけど、完全にセルフホストできるのは良いかも。" userName="PoachedEggs" createdAt="2025/06/29 17:53:23" color="">}}




{{<matomeQuote body="NetbirdのAndroidアプリ、マジでひどいんだけど。" userName="FloatArtifact" createdAt="2025/06/30 01:06:52" color="">}}




{{<matomeQuote body="Androidアプリは改修版のテストを公開したばかりなんだ。試してみてフィードバックもらえると嬉しいな。<br>https://www.reddit.com/r/netbird/s/lRjyehCQFi<br>試してみてくれる？<br>フィードバックよろしくね。" userName="braginini" createdAt="2025/06/30 05:00:10" color="#785bff">}}




{{<matomeQuote body="headscaleってTailscaleのOSSサーバーがあるし、開発も順調だから、OcteliumがTailscaleを代替できるか？って話自体、そんなに重要じゃないかもね。むしろ、クローズドソースのクライアントを使わずにheadscaleを使えるOSSのTailscaleクライアントが登場してほしいな。" userName="cchance" createdAt="2025/06/29 20:57:13" color="">}}




{{<matomeQuote body="Tailscaleのクライアントって全部OSSじゃないっけ？<br>https://github.com/tailscale/tailscale<br>ここにリポジトリあるよ。" userName="maxboone" createdAt="2025/06/29 22:36:28" color="#ff5c5c">}}




{{<matomeQuote body="確かTailscaleのクライアントでクローズドソースなのはmacOSのGUIだけだったような？CLIクライアントはソースからビルドできたはずだよ。追記：うん、前のコメントのリンク先[0]に分かりやすい説明ページがあるね。<br>[0] https://tailscale.com/opensource" userName="zxexz" createdAt="2025/06/30 01:01:11" color="#ff5c5c">}}




{{<matomeQuote body="プログラム可能なネットワークトンネルファブリックだね。" userName="toomuchtodo" createdAt="2025/06/29 21:19:45" color="">}}




{{<matomeQuote body="Octeliumについて、個人的にいくつか疑問や懸念点があって、なんでみんなが結構疑ってるのかをシェアするね。開発履歴が不明瞭で、公開情報もほとんどないし、会社の存在も公に確認できない。なのに、たくさんの機能とバズワードてんこ盛りで“何でもできます”みたいに見えるけど、セキュリティの根拠もほとんど見えないんだ。こういうのを見ると、どれだけオリジナルで、どれだけ既存の信頼できる技術を使ってるのか気になるんだけど、その情報がないんだよね。ビジネスとしてやるなら、ちゃんと企業っぽく見せた方がいいし、個人プロジェクトなら、変に大きく見せようとせずに、バズワードとか“全部できます”的な宣伝はやめて、OSSとして何に優れてるかに焦点を当てた方がいいよ。一個人とか無名の会社がいきなり大企業並みの製品を出すなんて、普通は疑う（当然だよね）。どこかで大幅に手抜きしてるか、セキュリティに問題がある可能性が高いから、VPNとかその手の製品としては絶対ダメだよね。もし既存の安全な技術の上に作ってるなら、そこを強調すべきだよ。知られた名前でセキュリティの実績がある方が、無名な製品よりずっと信頼できるからね。あと、普通の人が一言で何をするソフトか説明できないようなら、かなり苦労すると思う。機能を羅列するのは、たとえ正確でも大抵答えじゃないよ。「これはVPNです！そしてPaaS！ZTNA！API Gateway！AIも！」みたいに言うと、「ダウンロードして！」って叫んでるだけで、「問題を解決します」とは聞こえないんだ。だから僕は試そうとも思わない。それはどんなプロジェクトも目指してることと逆だよね。批判するつもりだけじゃなくて、プロジェクトの努力を損なってるであろう点を指摘したかったんだ。" userName="therealpygon" createdAt="2025/06/29 13:58:26" color="#ff33a1">}}




{{<matomeQuote body="貴重なフィードバック、ありがとう！批判はすごくよく分かるよ。Octeliumは意識的にいろんな機能をまとめてるから、初見の人には分かりにくいかもね。他のコメントでも言ったけど、これは汎用的なゼロトラストアクセスプラットフォームとして、いろんな用途に使えるようにしてるんだ（詳細はドキュメントを見てね）。いきなり最初のコミットが出てきたみたいに見えるのは、実は2020年の初めから個人的に開発してて、過去5年間で9000回近くコミットを重ねてきたからなんだ。1ヶ月前にコードを公開した時、初期のコミットに個人情報とかが紛れ込んでないか確認できなかったのと、プロジェクト自体がシンプルだった頃から今の複雑なアーキテクチャになるまで、過去5年でほぼ全部変わっちゃったんだ。" userName="geoctl" createdAt="2025/06/29 14:08:30" color="#ff33a1">}}




{{<matomeQuote body="たぶん一番の心配は、AIを使ってプロジェクト作った国の関係者に見えること、目的がハッキリしないこと、そして長文の返信やGithubが上っ面だけに見えることじゃないかな。どこかのOSSをパクって、ちゃんとした理念がないだけ、って人もいるかもね。" userName="cyanydeez" createdAt="2025/06/29 15:19:37" color="">}}




{{<matomeQuote body="このプロジェクトは2020年からプライベートのGithubリポジトリで一人で開発してきたんだ。VCとかも関係ない、基本ソロプロジェクトだよ。今見ての通り、100%オープンソースになった。でも、もし最初のプライベートリポジトリも公開したとして、どうやって僕が本物だって信じるの？もしかしたら、2020年からのコミットのタイムスタンプだって偽装してるかもしれないし。プロジェクトのコードが100%オープンソースでもダメなら、もう何やってもダメだと思う。" userName="geoctl" createdAt="2025/06/29 15:30:25" color="">}}




{{<matomeQuote body="こんなコメント気にしないで。信じないのは彼らの権利だけど、それならソフトを使わなきゃいいだけだよ。こういう辛辣なコメント書くのはマナーが悪いと思うな。頑張って、プロジェクトめちゃくちゃすごいから！！" userName="illiac786" createdAt="2025/06/30 04:14:32" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="実はHNで自分の成果を見せる機会をもらえたことに感謝してるんだ。ネガティブなコメントはそこまで気にしてないよ。ただ、もっと明確で具体的だと、どこを直せばいいか分かりやすいんだけどな。文句のほとんどがREADMEについてだったけど、正直、Octeliumのアーキテクチャとか中身について批判が欲しかったし、そう期待してたんだ。" userName="geoctl" createdAt="2025/06/30 04:38:19" color="">}}




{{<matomeQuote body="それこそ、君が”ネガティブ”だと思ってるコメントのポイントだよ。ハッキリ言うと、僕のコメントはプロジェクトの公開での見せ方をどう改善できるかのアドバイスなんだ。君自身も気づいてるけど、同じように認識してないみたいだね、まさにそれが問題なんだよ。READMEに怪しい点がいっぱいあったら、誰も君が求めてる”時間”をかけてコードを見たり、試したりしないからね。開発者として、プロジェクトの”マーケティング”（README）があまり重要じゃないとか、すごく正確である必要はないとか思っちゃいがちなのはすごく分かるし、批判的なコメントを全部”ネガティブ”だと見なしちゃうパターンに陥りやすいのも分かるよ。君はただ問題に近すぎてもりしか見てないんだ。みんなは森の手前にある巨大なフェンスを取り除くべきだって言ってるんだ。" userName="therealpygon" createdAt="2025/07/02 12:58:07" color="#38d3d3">}}




{{<matomeQuote body="またまたありがとう。「ネガティブ」って言ったのは、批判的って意味で、侮辱的じゃないんだ。前にこのスレッドでも言ったけど、批判的なコメントは全然嫌じゃないよ。信じて欲しいんだけど、何年も取り組んできたオープンソースプロジェクトを、特に技術的な人たちに見せるのに、ひどい言葉遣いや分かりにくい表現を使うなんて、一番やりたくないことなんだ。それは全く意図してなかった。実際、READMEが長すぎるのは、全ての機能と使い道を詳しく説明したかったし、もっと深く知りたい人のためにドキュメントへの追加リンクも入れたかったからなんだ。それがたぶん、ゼロトラストアーキテクチャに詳しくない人には、かえって圧倒させちゃったのかも。このスレッドみたいにもっと正直なフィードバックをもらいながら、時間を見つけて絶対にREADMEとドキュメントを改善していくよ。ありがとう。" userName="geoctl" createdAt="2025/07/02 17:38:27" color="">}}




{{<matomeQuote body="最近は疑心暗鬼になるべき？うん、なるべきだね。ここに自分のソフトを投稿してる人を国の関係者とか呼ぶべき？それは絶対に誰の役にも立たないと思う。そうじゃなくて、彼らは自分の主張を述べて、どうすれば作者が考えを変えるか提案すべきだよ。あるいは、それがマルウェアだと確信して譲れないなら、他の人への警告に徹するべきだね。" userName="illiac786" createdAt="2025/06/30 14:49:09" color="">}}




{{<matomeQuote body="オープンソース開発者を見逃してやれよ。作者のバックグラウンドとか動機なんて分からないだろ。楽しんでこれ作ったのかもしれないし。何も正当化する必要ないよ。これはオープンソースで無料のソフトなんだから、そのまま受け取れって。平均的な人に目的を一文で説明するのが難しいソフトは苦労するだろう？うん、そうだね。tailscaleとかCloudflare Access、Ngrokを使う人なら、この製品はすごくよく分かるだろう。使わないなら、たぶんこの製品は必要ないよ。" userName="csomar" createdAt="2025/06/29 16:23:29" color="">}}




{{<matomeQuote body="「ソロ開発者／無名の会社が突然製品を出すなんて」。バックエンドシステムにpasswordless embedded SSHでアクセスさせるのに、背景が不透明な開発者／会社を信用しろって？鍵もいらないんだって！それは絶対ダメだろ。(あと、OPの回答もマジでAIボットっぽい感じするし)" userName="canada_dry" createdAt="2025/06/30 02:26:56" color="">}}




{{<matomeQuote body="Octeliumの作者だけど、俺に何もアクセスさせたりしないよ。プロジェクトは100％オープンソースで、自己ホスト用に特化して設計されてるんだ。そもそも利用状況テレメトリがないから、君が使ってるかどうかも分からないんだよ。変なコメントのSSHの部分だけど、passwordless embedded SSHがそもそも何を意味するのか、君は理解してるのかな？" userName="geoctl" createdAt="2025/06/30 02:32:11" color="#ff5733">}}




{{<matomeQuote body="「AI」ってキーワード入れるのは、記事の見出しに「Reddit」って加えるのと同じで、ただのSEOだろうね…。メインの内容が素晴らしくても、後味が悪いな。APIとAIゲートウェイの図もほとんど同じじゃん。＜https://tailscale.com/blog/ai-normal＞" userName="rollcat" createdAt="2025/06/29 13:32:34" color="">}}




{{<matomeQuote body="APIとAIゲートウェイには共通機能がたくさんあるんだ。ドキュメントの例を見るのがずっと簡単だよ。<br>AIゲートウェイについてはこれ見て：＜https://octelium.com/docs/octelium/latest/management/guide/s...＞。<br>APIゲートウェイについてはこっち：＜https://octelium.com/docs/octelium/latest/management/guide/s...＞。提供されてるもの以外に、HTTPリクエスト／ボディ内容の変更プロセスも拡張中だよ（詳しくはこっち：＜https://octelium.com/docs/octelium/latest/management/core/se...＞）。今はEnvoyのext_procサポートが進んでて、関心があればproxy-wasmのサポートもやるかもしれないな。" userName="geoctl" createdAt="2025/06/29 13:38:28" color="#ff5733">}}




{{<matomeQuote body="すごく面白そうなんだけど、機能やいろんなユースケースのページで迷子になっちゃうんだよね。バズワードじゃなくて技術的な機能／能力の簡潔なリストと、他のソリューションよりこれが優れてる理由があれば良かったな。" userName="kosolam" createdAt="2025/06/29 13:02:45" color="">}}




{{<matomeQuote body="ありがとう。Octeliumを簡潔に定義するのが難しいのは分かるよ、だって誰もピンとこない「統一された／汎用的なセキュア／ゼロトラストアクセスプラットフォーム」として設計されてるからね。ゼロトラストセキュアアクセス向けの、Kubernetesみたいな汎用的なインフラなんだ。人間からワークロード、ワークロード間とか、いろんなユースケースに合うよ。例えば、普通のWireGuard／QUICベースのVPNとしても使える。CELとOPAのpolicy-as-codeで、identity-based, L7 aware, context-aware ABACを備えたZTNA／BeyondCorpプラットフォームとしても使えるし、レイヤー7でアクセスを制御できるんだ（HTTPヘッダーとかJSONボディとかね）。ngrokの代替としても使えるよ（OIDC／SAML／GitHub IdPでのセキュアアクセスも、匿名アクセスもOK、ホスティングやAPIテストにも）。コンテナ化したリソースをデプロイして、クライアントあり／なしで自動的にセキュアアクセスを提供もできる（PaaSみたいな）。policy-as-codeで upstream への動的構成とルーティングもできるんだ（APIバージョン変更とか、SSHクレデンシャル、APIキー、Postgresユーザー／パスワードをidentity／コンテキストに応じて変えるとか）。API／AIゲートウェイや、MCPアーキテクチャ／メッシュのスケーラブルなインフラとしても合うよ。だから、厳密なZTNA／VPNじゃなくて、セキュア／リモートアクセスに対してやってることは、Kubernetesがコンテナに対してやってることと似てる、もっと汎用的なプラットフォームなんだ。" userName="geoctl" createdAt="2025/06/29 13:18:47" color="#38d3d3">}}




{{<matomeQuote body="いくつかの典型的なユースケースや実装を通して、ブランド名や技術的な派手な言葉を減らして、それがどう機能するか説明してもらった方が分かりやすいかもね。GitHubも上の返信も見たけど、まだ正直よく分かんないんだ。君が使うボキャブラリーにもっと慣れてて、Platformとか興味深い名前が最初から何をするか分かってたら、もっと理解できるんだろうなと思うよ。だから、俺の意見としては——シンプルから中間、高度なユースケースに分けて分解して、もっと分かりやすい言葉を使って、Platform／製品の名前を減らしてみて。技術的な専門用語はいいけど、一度に何十個も並べないで…できるだけ多くの頭文字やクールな響きのものを詰め込もうとしてるセールスピッチみたいにちょっと読めるんだ。" userName="alienbaby" createdAt="2025/06/29 13:28:45" color="#38d3d3">}}




{{<matomeQuote body="それに同意だよ。潜在的な顧客としてページを読み返すと、信じられないほど冗長で／分かりにくかった。LLMを使って、もっとずっと簡潔に書き直すことをお勧めするよ。" userName="reachableceo" createdAt="2025/06/29 13:51:00" color="">}}




{{<matomeQuote body="正直、「セールスピッチ」の部分がどこにあるか分からないな。このプロジェクトはこれまでのところソロでの取り組みで、コードはほとんど俺が書いたんだよ。VCバックの製品で、俺がマーケティング担当者として君に返信してるわけじゃない。理解できない点について直接質問してくれれば、それに答えられるから、そうしてもらえるとありがたいな。" userName="geoctl" createdAt="2025/06/29 13:47:55" color="">}}




{{<matomeQuote body="Octeliumについてもっと詳しく知りたい！用語解説とか、簡単な使い方、開発理由、どれくらいの規模で動くのか（k8sいる？）、Tailscaleとかと比べてどうなの？って聞かれてるね。" userName="homarp" createdAt="2025/06/29 15:01:02" color="#45d325">}}




{{<matomeQuote body="HNプロファイルに連絡先載せて！これ、うちの会社がずっと探してたやつかも。全部自社ホストで、オープンソースしか使わないんだ。PAASはCloudronで、DB、RDP、SSH向けのゼロトラストプロキシ探してたの。うちが最初の顧客になるよ！自己ホストのk8sもあるし、wazuhとかlibrenmsも使ってる。今はTailscaleだけどね。すぐデプロイしてレビュー書きたい！チャールズより、連絡待ってるよ。Charles@turnsys.com" userName="reachableceo" createdAt="2025/06/29 13:45:57" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！すぐに連絡するね。" userName="geoctl" createdAt="2025/06/29 13:59:15" color="">}}




{{<matomeQuote body="穏やかなフィードバックだけど、Octeliumが何なのか分かりにくかったら、みんなに使ってもらうの難しいと思うよ。俺にはWireGuardのL7のアイデンティティ管理っぽい感じかな？でもreadme読んでもよく分からなかったんだよね。" userName="catlifeonmars" createdAt="2025/06/29 14:14:46" color="#785bff">}}




{{<matomeQuote body="ありがとう。言いたいことすごくよく分かるよ。HNの短いタイトルで分かりやすく説明するの、すっごく頑張ったんだけど、無理だったんだ。KubernetesとかIstioみたいに、複雑なプロジェクトって初心者には説明難しいよね。Octelium使う人たちは、ゼロトラストの用語とか、Cloudflare AccessとかTeleportみたいな製品のこと、ある程度知ってる前提で作ってるんだよ。" userName="geoctl" createdAt="2025/06/29 16:07:47" color="#ff33a1">}}




{{<matomeQuote body="Tailscaleのオープンソース版、絶対興味ある！でもREADMEが長すぎだよ。パッと見で何かわかるようにして、詳しいことはドキュメントのリンクにしとくべき。" userName="cedws" createdAt="2025/06/29 13:54:29" color="#38d3d3">}}




{{<matomeQuote body="Tailscaleのオープンソース代替なら、Headscaleがあるよ：https://github.com/juanfont/headscale" userName="homarp" createdAt="2025/06/29 14:55:37" color="">}}




{{<matomeQuote body="Headscaleは良いよね（俺も使ってる）。でもあれはTailscaleのコントロールサーバーの代わりで、クライアントアプリの代わりじゃないんだ。クライアントの中には非公開ソースのもあって、Headscaleとちゃんと動くかは保証されてないんだよね。" userName="uneekname" createdAt="2025/06/29 16:26:54" color="#ff5c5c">}}




{{<matomeQuote body="Tailscaleのクライアント、もうオープンソースだよ。ここ見て：https://tailscale.com/opensource<br>”Tailscaleデーモンのコアクライアントコードは全部オープンソースだし、完全にオープンソースなプラットフォーム向けのクライアントコードもオープンソースだよ。”" userName="CharlesW" createdAt="2025/06/29 16:33:38" color="#ff33a1">}}




{{<matomeQuote body="ってことはさ、クローズドソースのOSを使ってる人は、Tailscaleのオープンソースクライアントはないの？クローズドソースのOSでTailscale使ってる人こそ、オープンソースのクライアントがあった方が一番助かるんじゃないの？" userName="aspenmayer" createdAt="2025/06/29 21:03:39" color="">}}




{{<matomeQuote body="Tailscaleクライアントはオープンソースだよ。<br>GUIはオープンソースのOS向けならオープンソースだけど、Closed source OS向けのは違うんだ。<br>でも、Closed source OSを使う人の99.999%はGUIがOSSじゃなくても気にしないと思うよ。<br>残りの0.001%の人はGUIなしでOSSクライアントを使えばいいんだ。" userName="CharlesW" createdAt="2025/06/29 21:24:26" color="">}}




{{<matomeQuote body="“99.999%のユーザーはGUIがオープンソースか気にしない”って言うけど、気にするかどうかは別として、Closed source OS用のTailscaleのエンドユーザー向けアプリでオープンソースなのは見当たらないね。<br>もしあるなら、喜んで訂正するから教えてくれるかな。" userName="aspenmayer" createdAt="2025/06/29 21:32:54" color="">}}




{{<matomeQuote body="CLIが苦手な非技術者だけどClosed source OSでクローズドなソフトは使いたくない！って人向けにアドバイス。<br>技術に詳しい友達に頼んで、WindowsならCattail、macOSならAutomationでCLIを動かして、オープンソースのTailscaleクライアントを設定してもらうのがおすすめだよ。" userName="CharlesW" createdAt="2025/06/29 21:45:53" color="#ff33a1">}}




{{<matomeQuote body="“ここはHN（Hacker News）だから誰もCLIなんて恐れない”って、ちょっと排他的じゃない？<br>Tailscaleにオープンソースのアプリがあるか聞いてるだけだよ。<br>GUIが何か、それがOSSであることも大事だって分かる人は気にするし、分からない人は気にしない。<br>君みたいに分かりにくい投稿をして誰が得するの？<br>アプリにとってGUIがどれだけ重要か知らないような人は、GUIがOSSじゃないってこと自体、分からないんじゃない？" userName="aspenmayer" createdAt="2025/06/29 22:01:39" color="">}}




{{<matomeQuote body="分かりやすさについて、ちょっとしたアドバイス。<br>1つのテーマには1つか2つの説明フレーズに絞るといいよ。文章が増えても大丈夫。<br>例えば、<br>”Octeliumは、repoのREADMEにもっと詳しく書いてあるけど、ゼロトラストなリソースアクセスができる、オープンソースでセルフホスト可能な統合プラットフォームで、主に企業のVPNやリモートアクセスツールの現代版の代替を目指してるんだ。”<br>↓<br>“Octeliumは端的に言うとVPNの現代版。<br>従来のVPNと違って、ゼロトラストのセキュリティモデルを採用してるよ。<br>Octeliumはオープンソースで、セルフホストできるように作られてるんだ。<br>READMEには他にも多くのユースケースや機能が説明されてるよ。”<br>みたいにね。" userName="marifjeren" createdAt="2025/06/30 05:16:35" color="#ff33a1">}}




{{<matomeQuote body="Tailscaleのすごい点は簡単なP2P接続だと思うんだ。<br>これ（Octelium）はそうじゃなくて、集中型のルーターを使う感じに見えるけどどうなの？" userName="yjftsjthsd-h" createdAt="2025/06/29 13:11:13" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="違うよ、OcteliumはP2P VPNじゃなくてゼロトラストアーキテクチャなんだ。<br>WireGuard/QUICベースのリモートアクセスVPNとしても使えるけどね。<br>アーキテクチャ的にはCloudflare AccessやTeleportに近いんだよ。<br>L7レベルでIDベースのアクセス制御、秘密情報（APIキーとかパスワードとか）をユーザーに渡さずに注入する機能、上流への動的な設定やルーティングとかができるんだ。<br>単なるレイヤー3のVPNとは違うし、リアルタイムのOpenTelemetryを使った可視化や監査もできるよ。<br>ZTNA/BeyondCorpみたいな真のゼロトラストアーキテクチャは、サービスメッシュ（Kubernetesのとか）以外ではP2P VPNとして実装するのは難しいんだ。<br>リクエストごとにアプリケーションレイヤーでアクセス制御や可視化をするには、L7対応のIDプロキシが必要なんだよ。" userName="geoctl" createdAt="2025/06/29 13:30:56" color="#45d325">}}




{{<matomeQuote body="ドキュメントを見ると、OcteliumはGatewayを中央のルーティングポイントとして使うハブ＆スポークモデルみたいだね。<br>Tailscaleの直接的なP2Pメッシュとは違うアーキテクチャで、パフォーマンスやプライバシー、デプロイの複雑さに影響するんじゃないかな。" userName="ethan_smith" createdAt="2025/06/30 02:50:56" color="">}}




{{<matomeQuote body="いや、Octeliumはハブ＆スポークモデルじゃないよ。<br>Kubernetes上に構築された分散システムで、水平スケーラビリティや可用性なんかを提供するための設計なんだ。" userName="geoctl" createdAt="2025/06/30 03:00:31" color="#ff5733">}}




{{<matomeQuote body="“簡単なP2P接続”<br>“集中型ルーター”<br>Tailscaleでも、パケットが集中型ルーターを経由する場合があるんだよ。<br>参考URL：https://tailscale.com/kb/1257/connection-types" userName="gen6acd60af" createdAt="2025/06/29 14:42:24" color="#785bff">}}




{{<matomeQuote body="OcteliumってKubernetes前提みたいだね。多くの人には厳しいかも。低レベルなものには依存少ない方がいいし。Kubernetes統合が必須じゃなくオプションだと嬉しいな。Kubernetesなしの資料があれば教えて！" userName="baobun" createdAt="2025/06/29 23:03:03" color="#ff33a1">}}




{{<matomeQuote body="OcteliumはKubernetes上で動く分散システムだよ。今はKubernetes必須だけど、他のオーケストレーターにも移せる。Kubernetes使うのは、ZTAs管理の手間を省くため。`octeliumctl apply`でサービスが自動管理されるんだ。Kubernetesがコンテナを扱うのと似てるね。スケーラブルで宣言的に管理できる。Octelium管理にKubernetes知識はほぼ不要だよ。詳しくはドキュメント見て！<br>https://octelium.com/docs/octelium/latest/overview/how-octel..." userName="geoctl" createdAt="2025/06/29 23:16:39" color="#45d325">}}




{{<matomeQuote body="他の人も言ってるけど、READMEが分かりにくいね。去年いいREADMEの書き方について記事を書いたんだ。<br>https://sneak.berlin/20241224/readme-howto/" userName="sneak" createdAt="2025/06/29 13:50:49" color="">}}




{{<matomeQuote body="ありがとう。READMEを分かりやすくて役に立つように頑張るよ。" userName="geoctl" createdAt="2025/06/29 13:56:49" color="">}}




{{<matomeQuote body="READMEはそんな悪くないけど、あのガイドは気にしない方がいいよ。長すぎるし、意見を押し付けすぎ。あれは全然お勧めできないね。" userName="sevg" createdAt="2025/06/29 14:16:39" color="">}}




{{<matomeQuote body="アプリにK3sクラスターを全部入れるの、なんで？既存インフラに追加で、シンプルなCRDsで公開できる方が分かりやすいのに。ピッチはすごいけど、Kubernetes上のカスタマイズばかり。アクセス部分にフォーカスしてくれるならテストしたいな。" userName="guigg" createdAt="2025/06/29 22:09:19" color="">}}




{{<matomeQuote body="OcteliumはKubernetes上で動く分散システムだよ。k8s/k3s単一ノードでも、本番マルチノードでも動く。Kubernetesの単なる抽象化じゃなく、自身でインフラとして使うプラットフォームなんだ。Kubernetesがコンテナを扱うように、Octeliumはidentity-aware proxyを自動管理する。`octeliumctl apply`とかで全部自動だよ。Teleportとかと違って手動作業が少ない。昔はCRDsだったけど、リソース多すぎてetcdが無理だったからPostgresにしたんだ。" userName="geoctl" createdAt="2025/06/29 22:32:03" color="#ff5733">}}




{{<matomeQuote body="CRDsについてもう一つ。OcteliumリソースってYAMLはKubernetesと似てるけど、protobufを使ってるんだ。proto3で定義してGoにコンパイル、JSONにしてPostgresに保存してるよ。CRDsだと思った理由かもね、でも違うんだ。" userName="geoctl" createdAt="2025/06/30 00:38:56" color="#ff5c5c">}}




{{<matomeQuote body="これすごいね！批判のほとんどはドキュメントの「how it works」を10分読めば解決するよ。READMEは不安だったけど、ドキュメント見たら感動した！実装もドキュメントも超整理されてる。一人で作ったって伝説！公開してくれてありがとう！" userName="Tokumei-no-hito" createdAt="2025/06/30 05:02:19" color="#ff5c5c">}}




{{<matomeQuote body="コメントありがとう！Octeliumの仕組みとか、簡単な管理・インストールガイド、API＼AI＼MCPゲートウェイみたいな例は、ほとんどREADMEに載せてたんだ。でも、批判の多くはREADMEで使ってる用語が原因だったみたい。ユーザーはある程度ゼロトラストやゼロトラストアーキテクチャに詳しいと思ってたのが、たぶん問題だったね。" userName="geoctl" createdAt="2025/06/30 05:13:42" color="#785bff">}}




{{<matomeQuote body="これすごくすごそうだけど、READMEに詳細がありすぎるな。アイデアは掴めた気がするけど、よくわからなかったんだよね。それが問題かも。" userName="fariszr" createdAt="2025/06/29 14:57:30" color="">}}




{{<matomeQuote body="ありがとう！よかったら、Octeliumの仕組みについて書かれたドキュメント（https://octelium.com/docs/octelium/latest/overview/how-octel...）とか、簡単な管理ガイド（https://octelium.com/docs/octelium/latest/overview/managemen...）を読んでみて。どう動いて、どう管理するかもっと分かりやすくなると思うよ。ドキュメントには特定の使い方の例もたくさん載せてるからね。<br>https://octelium.com/docs/octelium/latest/management/guide/s...<br>https://octelium.com/docs/octelium/latest/management/guide/s..." userName="geoctl" createdAt="2025/06/30 01:58:25" color="#38d3d3">}}




{{<matomeQuote body="これって巨大企業のアクセス制御ボットネットみたいなものの代替になるの？<br>もし大企業なら、OSSじゃなくてサポート付きの商用ソフトで安心したいと思うんだけど。個人の開発者の問題を解決するのかな？" userName="thealistra" createdAt="2025/06/29 21:03:35" color="">}}




{{<matomeQuote body="Octelium自体は、いろんな環境で使える汎用的なセキュアアクセスプラットフォームとして設計されてるんだ。Ngrokレベルの簡単なリモートアクセスツールから、企業VPN、さらにはフル機能の拡張できるZTNA＼BeyondCorpプラットフォームまで、いろいろな使い方やレベル（開発者、スタートアップ、エンタープライズ）で使えるよ。Kubernetesみたいに、簡単な使い方から何百ものノードで動くエンタープライズレベルのサービスメッシュまでできるのを考えてみて。" userName="geoctl" createdAt="2025/06/29 21:47:24" color="#38d3d3">}}




{{<matomeQuote body="これは今後も注目しておくよ。でも正直なところ、最初見たとき機能が多すぎるし、ソロ開発者がプライベートで全部やってるっていうのが、すごいけどちょっと不安もあるんだよね。" userName="newdee" createdAt="2025/07/01 07:54:21" color="">}}




{{<matomeQuote body="俺はWireGuardメッシュネットワークの構成を自動化するツールを使ってるだけなんだけどさ。そんなに難しくする必要ないんじゃないかなって思うんだ。" userName="Arch-TK" createdAt="2025/06/29 18:21:27" color="">}}




{{<matomeQuote body="これZLayerの代替になるってこと？しかもそれより機能が多いってことで合ってる？" userName="shrubble" createdAt="2025/06/29 14:47:23" color="">}}




{{<matomeQuote body="OPさん、これマジでやばいね！機能の幅が広すぎる。<br>うちのK8sで動かしてみるよ。とりあえずおめでとう！" userName="apexalpha" createdAt="2025/06/30 12:29:49" color="#ff5733">}}




{{<matomeQuote body="Pangolinと比べてどうなの？" userName="Onavo" createdAt="2025/06/29 14:53:47" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
