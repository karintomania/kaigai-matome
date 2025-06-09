+++
date = '2025-06-02T00:00:00'
months = '2025/06'
draft = false
title = 'Trelloのオープンソース代替ツールが登場！'
tags = ["Trello", "オープンソース", "カンバン", "タスク管理", "ツール"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Trelloのオープンソース代替ツールが登場！

引用元：[https://news.ycombinator.com/item?id=44157177](https://news.ycombinator.com/item?id=44157177)




{{<matomeQuote body="Hey HN,<br>Trelloのオープンソース代替ツールで気に入ったのが見つからなかったから、自分で作ってみたよ。<br>速いし無料だし、カスタマイズもめっちゃできるんだ。<br>自分でホストしてもいいし、インフラ管理したくないならクラウド版も使えるよ。<br>リポジトリ → https://github.com/kanbn/kan<br>クラウド → https://kan.bn<br>ロードマップ → https://kan.bn/kan/roadmap<br>フィードバックとかバグ報告、機能の要望とかあったら超嬉しいな！" userName="henryball" createdAt="2025/06/02 09:47:48" color="#45d325">}}




{{<matomeQuote body="既存のオープンソースのボードツールと比べてどうなの？例えばさ：<br>https://wekan.github.io/<br>https://taiga.io/<br>https://kanboard.org/" userName="stevekemp" createdAt="2025/06/02 11:21:39" color="#785bff">}}




{{<matomeQuote body="あとさ、https://github.com/plankanban/planka っていうのもあるよ。" userName="walthamstow" createdAt="2025/06/02 11:31:10" color="">}}




{{<matomeQuote body="Plankaはオープンソースじゃないんだ。" userName="senorrib" createdAt="2025/06/02 13:30:32" color="">}}




{{<matomeQuote body="OSIに承認されてるライセンスは使ってないみたいだけど、ソースコードは見られるよ。<br>だから、使い方によっては学術的な区別でしかないかもね。" userName="organsnyder" createdAt="2025/06/02 14:55:45" color="#ff5c5c">}}




{{<matomeQuote body="ライセンスで使える用途に厳しい制限があるんだよね。<br>合理的な意味では全然オープンソースじゃないよ。" userName="kstrauser" createdAt="2025/06/02 15:09:47" color="#785bff">}}




{{<matomeQuote body="ソースコードがそこにあるからopen sourceではあるんだけど、前の人が言ってる理由でOpen Sourceではないんだよ。<br>違いがあるんだ。" userName="Izkata" createdAt="2025/06/02 15:14:03" color="#ff33a1">}}




{{<matomeQuote body="私たち英語で話してるんだから、大文字と小文字で意味がそんなに変わるわけじゃないってば。<br>君が言ってるのは、すでに”source available”として区別されてるんだよ。" userName="j1elo" createdAt="2025/06/02 16:58:34" color="#ff5733">}}




{{<matomeQuote body="ちょっと頭に入れといて欲しいんだけど、リンクしてたロードマップが壊れてるよ。<br>MacのChromeで見てるんだけど、フォーマットがおかしくて黒いバーがいっぱい出るし、カードをクリックしてもウィンドウは開くけどデータが全く読み込まないんだ。<br>あとバグっぽいんだけど、いくつかのタグでフィルターしてからカードをクリックすると、フィルターがリセットされちゃうみたい。<br>公開してるボードで5秒試しただけだけど、いくつか直すべきバグがあるかもしれないね！" userName="Closi" createdAt="2025/06/02 14:30:32" color="#45d325">}}




{{<matomeQuote body="ネイティブスピーカーじゃないんだけど、「open」ってコードが見える場合に当てはまるように聞こえるんだよね。<br>これってGo言語で話してるの？" userName="broken-kebab" createdAt="2025/06/02 18:43:27" color="">}}




{{<matomeQuote body="いくつか他にも細かいバグを見つけたよ。例えば、同じ名前で複数のワークスペースが作れてチェックが両方についちゃったり、ユーザー招待がたまに動かなかったりメールが送られなかったり。それと、＠みたいな特殊文字入りのカードは、エラーも出ずに作成されないんだ。" userName="Closi" createdAt="2025/06/02 14:57:35" color="#38d3d3">}}




{{<matomeQuote body="webhookサポートがあると嬉しいな。多くのユーザーには関係ないかもだけど、僕らにとっては必須機能なんだ。しばらくはTrelloを使い続けるよ。" userName="jpc0" createdAt="2025/06/02 13:00:17" color="">}}




{{<matomeQuote body="Nullboardってのもあるよ。https://github.com/apankrat/nullboard<br>なんで低評価されてるのか分かんないけど、まあいいか。" userName="croisillon" createdAt="2025/06/02 11:31:46" color="">}}




{{<matomeQuote body="それは「オープンソース」って意味じゃないよ。それは大体「ソース利用可能」（source available）って呼ばれるものだよ。" userName="adastra22" createdAt="2025/06/02 15:36:32" color="">}}




{{<matomeQuote body="OFFだけど、この“open source”と“Open Source”の使い分けどうにかできないかな？僕は逆の“open source”＝“ソース利用可能”（source available）の方が良いと思うんだ。だって<br>―言葉の意味がそうだし、<br>―Open Sourceの概念は固有名詞で表す方がいいでしょ。<br>“open source”＝“Open Source”の使い方は、このままだとずっと摩擦の元になると思うんだ。どうにかできないかな？<br>―使い方を“open source”＝“ソース利用可能”に戻すか、<br>―小文字の“open source”は使わないことにするか（代わりに“Open Source”か“source available”を使う）、あるいは<br>―“open source”＝“Open Source”の使い方をブログ記事かなんかで一度きっぱり擁護して、この摩擦を減らすとか。" userName="bmacho" createdAt="2025/06/02 19:13:35" color="">}}




{{<matomeQuote body="チームのために自分でホストしてるこれはどうかな？<br>https://vikunja.io/" userName="adr1an" createdAt="2025/06/02 11:57:30" color="">}}




{{<matomeQuote body="あ、セキュリティ問題見つけちゃった―プロフィール画像悪用してどんなファイルでもアップロードできちゃうみたい（もし悪意のある奴ならマルウェアとかホストできちゃうね！）。<br>個人的には、これプロダクションで使うには全然準備できてないと思うな。でも、面白いプロジェクトだよ！" userName="Closi" createdAt="2025/06/02 15:00:18" color="#38d3d3">}}




{{<matomeQuote body="最近、セルフホスト型看板ツールの沼にハマったんだ。正直、Trelloに匹敵するものは何もないね。オープンソースコミュニティを応援するのは大好きだけど、これらの代替ツールはたいてい全然及ばないか、もっと悪いことに超多機能にしようとして使い勝手を悪くしちゃうんだ。良いオープンソースの選択肢は、Airtableの代替とか、本格的なプロジェクト管理ツール（Eigenboard、Planeとか）になる傾向があるね。" userName="mbesto" createdAt="2025/06/02 23:41:52" color="#ff5733">}}




{{<matomeQuote body="WeKan https://wekan.github.io にはあるよ。<br>１）ボードの右サイドバー／ボード設定／WebhooksでボードごとのWebhook<br>２）Admin PanelでグローバルWebhook<br>https://github.com/wekan/wekan/wiki の右メニューを見て、webhooksの部分までスクロールしてね。<br>カード移動みたいなボード変更イベントをWebhookとして送れるよ。例えば、どこかのチャットに送ったりね。<br>https://github.com/wekan/wekan/wiki/Outgoing-Webhook-to-Disc...<br>あるいはNodeREDに。<br>https://github.com/wekan/wekan/issues/2017<br>または、PythonコードでWeKan APIを呼び出せるこんなPHP Webhookレシーバーにも。<br>https://github.com/wekan/webhook/blob/main/public/index.php#...<br>https://github.com/wekan/wekan/blob/main/api.py" userName="xet7" createdAt="2025/06/03 00:42:24" color="#ff33a1">}}




{{<matomeQuote body="「ソース利用可能」（Source available）って聞くと、買わなきゃいけないみたいに聞こえるよね。<br>こう考えてみてよ、イベントに行って「ビュッフェ利用可能」（buffet available）って見たら、どうアクセスできるか聞くだろ？もし「オープンビュッフェ」（open buffet）って見たら、ただで取っていいんだって分かるでしょ？<br>「オープンソース」（Open source）って、ソースコードが自由に閲覧できるみたいに聞こえるよね。開かれてるんだよ。<br>オープンハウス（open house）はただで所有できるわけじゃない。見るんだよ。<br>オープンソースがソースコードが自由に閲覧できるって意味じゃなくて、ライセンスに関係する意味を持つのはおかしいよ。<br>「オープンライセンス」って呼ぶか、単にライセンス名を言えばいいじゃん。コードとかソースはライセンスじゃないんだ。僕はここで譲らないよ。Christineはクールだったけど、だからって彼女が間違えないわけじゃない。「オープンソース」をオープンライセンスって意味にしたのは間違いだった。" userName="Xss3" createdAt="2025/06/03 00:17:35" color="">}}




{{<matomeQuote body="前のコメントの皮肉、ごめんね。Go言語の話でちょっとふざけたかったんだ。<br>でも「open source」って言葉は、ただ見れるだけじゃなくて、改造したり再配布したりできる、最高の「オープン」って意味なんだよ。" userName="j1elo" createdAt="2025/06/02 20:47:04" color="">}}




{{<matomeQuote body="このツールが他のTrello代替と違うのは、哲学が全然違うからだよ。<br>他のツールはTrelloと同じ機能を目指してるけど、これはミニマリズムを追求してるんだ。" userName="iLoveOncall" createdAt="2025/06/02 13:03:12" color="#38d3d3">}}




{{<matomeQuote body="これ、修正されたよ！教えてくれてありがとう！" userName="henryball" createdAt="2025/06/03 12:55:55" color="">}}




{{<matomeQuote body="ObsidianにKanbanプラグイン入れるっていう手もあるよ。" userName="busssard" createdAt="2025/06/02 12:45:00" color="">}}




{{<matomeQuote body="Plane、マジいいわー。Trelloより全然いいと思う！" userName="yolkedgeek" createdAt="2025/06/03 07:38:49" color="">}}




{{<matomeQuote body="「open source」って言葉は、みんなが知ってる慣用句なんだよ。<br>単語の意味をバラバラにして違うことに使うと、めっちゃ混乱するからやめようぜ。<br>HDDを「RAM」って呼ぶようなもんさ。" userName="kstrauser" createdAt="2025/06/02 18:58:12" color="">}}




{{<matomeQuote body="フィードバックなんだけど（質問してたからね）<br>このカンバン見てると、カードクリックしても何も出なくて「Activity」だけなんだよね。<br>あと、いくつかカード見るとブラウザの戻るボタンが変になるよ。<br>URL: https://kan.bn/kan/roadmap" userName="tiffanyh" createdAt="2025/06/02 15:38:51" color="#ff33a1">}}




{{<matomeQuote body="これってさ、「Show HN:」の投稿であるべきじゃない？" userName="AntiqueFig" createdAt="2025/06/02 13:14:05" color="">}}




{{<matomeQuote body="僕たちのチームでVikunjaを2、3年使ってるけど、良い感じだよ。ちょっと癖はあるけどね。<br>GitHubに開発が移ったのは知らなくて、追いつけてないけど、貢献したいと思ってるんだ。" userName="zikani_03" createdAt="2025/06/02 13:44:24" color="">}}




{{<matomeQuote body="WeKanにはiOS版のAppがないっぽいよ。詳しくはこちらを見てね。 https://wekan.team/app/" userName="smartbit" createdAt="2025/06/03 10:39:20" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OPにファミリープランを提案したいな。HostedやSelf-hostedより、iCloudかDropboxでSyncできるNative Appがいいな。買い切りタイプで、Subscriptionsなしがいい。AppleのRemindersも試したけど微妙だったよ。1～2人で使いたいんだ。<br>まさにこういうKanbanボード大好きなんだけど、理想のツールが見つからないんだよね。" userName="AnonC" createdAt="2025/06/02 13:22:02" color="">}}




{{<matomeQuote body="僕のFOSS note-taking Appもチェックしてみて！MarkdownタスクをKanbanに変換できる機能があるんだ。Syncは内蔵されてないけどDropboxとかでできるみたい。Kanban機能は買い切りか、自分でGitHubからCompileすれば無料で使えるよ。<br>詳しくはこちら: https://www.notes-foss.com<br>Kanban動画: https://www.notes-foss.com/videos/kanban.mp4<br>GitHub: https://github.com/nuttyartist/notes" userName="rubymamis" createdAt="2025/06/03 10:39:58" color="#ff5c5c">}}




{{<matomeQuote body="僕はObsidianのKanBan pluginを使ってるよ。結構気に入ってるんだ。すごくbasicだけど、ちゃんと使えるし、Sync方法も自由だよ。だってただのMarkdownファイルを保存するFolderなんだもん。" userName="sen" createdAt="2025/06/03 06:00:32" color="">}}




{{<matomeQuote body="Next.jsをOpen Source Projectに選んだ理由が気になるな。Next.jsってVercel以外のところにDeployするのがすごく大変って有名だもんね。なんであえてNext.jsなんだろう？" userName="SwiftyBug" createdAt="2025/06/02 11:42:20" color="">}}




{{<matomeQuote body="Next.jsのDeploy、そんなに大変だと思ったことないな。僕は主にBackendとSREだからFrontendのことはあんまり知らないけど、DockerでStandalone buildをDeployするのはすごく簡単だよ。パフォーマンスを追求すると複雑になるのは当たり前じゃない？VercelはOperationの複雑さを隠してるだけで、高いだけだよ。他のFrameworkがOptimizationまで含めて楽なのかは分からないけど、Next.jsのDeploy自体は難しくないと思うな。Vercel並みのPerformanceを出すのが大変ってだけじゃない？" userName="hxtk" createdAt="2025/06/02 12:46:42" color="#38d3d3">}}




{{<matomeQuote body="Next.jsのDeployは、普通のServerにDeployするなら難しくないよ。単なるNodeのAppとして動くからね。Serverlessな環境にDeployするのが大変だった時期があったけど、それは今開発が進んで解決に向かってるみたいだよ。" userName="danabramov" createdAt="2025/06/02 12:39:21" color="#785bff">}}




{{<matomeQuote body="Next.jsのDeployが難しいっていうのは、ちょっと大げさだと思うな。Image OptimizationとかStatic Assetsを別のOriginに置くとか、そういうAdvancedな機能を使おうとすると難しくなるけど、それはNext.jsに限らず、他の代替Frameworkでも同じように大変なことだよ。BasicなDeployは全然難しくないって。" userName="herrkanin" createdAt="2025/06/02 12:19:05" color="#45d325">}}




{{<matomeQuote body="Static Assetsを別のOriginに置くのが難しいって言ってるけど、どういうこと？Backendと同じところに置くの？CORSを設定すればいいだけじゃない？それは基本的なDeploymentだよね。Next.jsだと、他のFrameworkと比べて何がそんなに大変なの？" userName="diggan" createdAt="2025/06/02 12:51:16" color="">}}




{{<matomeQuote body="難しいんじゃなくて逆だよ。VercelにDeployするなら、Static Assetsを別のOriginに置くのがめちゃくちゃ簡単で無料なんだ。Vercel以外のところに置きたいなら、他のFrameworkを使う時と同じように、自分でConfigとかを設定する必要があるってこと。" userName="lmm" createdAt="2025/06/03 01:23:23" color="#ff33a1">}}




{{<matomeQuote body="わかるわー。Next.jsをいくつかデプロイしたけど、他のNodeアプリと変わんないよ。静的なSSGとかならnginxだけで済むから超楽！" userName="freedomben" createdAt="2025/06/02 18:14:55" color="#785bff">}}




{{<matomeQuote body="最適化しても全然難しくなかったよ。ドキュメントはまあまあだけど、一度CI/CDとか作っちゃえば、後はほとんど手直し要らないし。" userName="mstade" createdAt="2025/06/02 12:37:59" color="">}}




{{<matomeQuote body="Next.jsのデプロイが大変って言うより、何かデカいものをデプロイすること自体が難しいんだってば。Next.jsが原因でハマったことはないな。大体OSSとかDocker、Kubernetes、DB、連携が悪さするんだよ。" userName="RitzyMage" createdAt="2025/06/02 18:01:52" color="#ff33a1">}}




{{<matomeQuote body="Docker化できるアプリなら他のと同じくらい簡単だよ。Fargateみたいなのでも、ちょっと手間かかるけど2時間もあればできるんじゃないかな。" userName="kashnote" createdAt="2025/06/02 21:40:54" color="">}}




{{<matomeQuote body="選ぶプラットフォームによるんじゃない？AWS Amplifyとかsstなら数分か長くても1時間でデプロイできるよ。<br>DNSとかGitHubでのCI/CDまで含めても1時間以内だったし。Vercel以外にも5、6個Next.jsプロジェクトをデプロイした経験あるけど。<br>なんでこんなにDownvoteされてるんだ？信じられない？" userName="yc942" createdAt="2025/06/02 13:12:06" color="#ff5733">}}




{{<matomeQuote body="”Kanban reimagined”っていうタグライン変じゃない？機能はTrelloとかTaigaと同じじゃん。OSS代替ツールは大好きだけど、これって「再構築」したわけじゃないでしょ。" userName="remram" createdAt="2025/06/02 21:15:44" color="">}}




{{<matomeQuote body="何年か前にKanboardっていうPHP製のツールを使ったことがあるな：https://kanboard.org/<br>見た目はイマイチだったけど、便利だったよ。DB要らなかったから、インストールも超簡単だったのを覚えてる。" userName="mdtrooper" createdAt="2025/06/02 12:31:39" color="">}}




{{<matomeQuote body="共有ホストに放り込んだらすぐ動かせたよ。UIは古いけど、機能的には全然問題ない。" userName="rsolva" createdAt="2025/06/02 15:51:28" color="">}}




{{<matomeQuote body="今も使ってるよ。シンプルで良いんだよね。" userName="kiney" createdAt="2025/06/02 12:45:06" color="">}}




{{<matomeQuote body="変に聞こえるかもだけど、オープンソース版の”なんでも”アプリがあればいいなーって思うんだ。もしこれがSlackの代替（チャンネルでKanbanボードがホストできるとか）になって、HTTP bot APIとか、組み込みのチャート、ダッシュボード、Pythonノートブックの断片とか、全部一つにまとまったら…それは最高だね！" userName="wood_spirit" createdAt="2025/06/02 17:49:55" color="#785bff">}}




{{<matomeQuote body="オープンソースの代替案をいくつか紹介するね。<br>a) Nextcloud<br>b) AFFiNE ＜https://github.com/toeverything/AFFiNE＞<br>サーバーライセンスの一部を確認してみてね。許可されてるもの:<br>＜https://github.com/toeverything/AFFiNE/blob/canary/packages/...＞<br>c) Frappe:<br>＜https://frappe.io/erpnext＞<br>＜https://frappe.io/framework＞<br>d) Odoo ＜https://www.odoo.com＞<br>e) Sandstorm ＜https://sandstorm.org＞。Wekanは古いバージョンだけど、いつか更新しようとしてるよ。<br>f) WeKanとwebhooks ＜https://news.ycombinator.com/item?id=44165008＞<br>RocketChat Community Editionと一緒にも使えるよ。<br>＜https://github.com/wekan/wekan/wiki/RocketChat＞<br>Jupyterともね: ＜https://jupyter.org＞" userName="xet7" createdAt="2025/06/03 01:14:09" color="#45d325">}}




{{<matomeQuote body="いつか暇ができたら、Sandstormの上で”なんでもアプリ”スイートを本気で作りたいな。まるでスーパーのプライベートブランドみたいに、飾り気なくて機能的で安いやつ。Sandstormが認証とかホスティングを肩代わりしてくれるおかげで、これがもっとやりやすくなる気がするんだ。ただ、ビジネスモデルは課題だね、多くのオープンソースの仕事と同じで（そしてもちろん、全てのビジネスもね！厳しい時代だよ）。Sandstormで遊んでみて、ドキュメント（あるいはボード、何でもいいけど）ごとにsqliteファイルを一つ作るだけで、ユーザーが1万人来てもどうなるか心配しなくていいってのが、すごく自由を感じたよ。WekanはSandstormでも見事に動くけど、それぞれのgrainにMongoDBインスタンスを丸ごと持ってきちゃうんだ。SaaS全体を一つのデータベースでホストしたいならそれは理にかなってるけど、Sandstormの世界ではちょっと違うんだよね。" userName="crabmusket" createdAt="2025/06/03 01:28:37" color="#ff5c5c">}}




{{<matomeQuote body="＞ Wekan, which does run admirably well on Sandstorm, pulls an entire Mongodb instance into each grain.<br>Wekanの各grainにあるのはMongoDBの生データファイルだけだよ、SQLiteに似てるね。MongoDB 3のサーバーバージョンはどのgrainでも同じだよ。WeKanにSQLiteサポートを追加する作業も進んでるんだ。Caddy 2をフロントにして、Sandstorm、たくさんのWeKan Snap、RocketChatを同じサーバーでホストしてるよ。Sandstormにはたくさんのウェブサイトとかソフトが使われてるんだけど、Sandstormだとログインしてるユーザーがいるときだけgrainが動いてRAMを使うから、コンテナがずっと動いてるDockerとかSnapよりもずっと効率的なんだ。<br>＜https://github.com/wekan/wekan/blob/main/docs/Platforms/FOSS...＞<br>＜https://github.com/wekan/wekan/wiki/Sandstorm＞<br>＜https://github.com/wekan/wekan/wiki/Caddy-Webserver-Config＞<br>Sandstormの次のバージョン、Tempestに向けての開発もあるよ:<br>- ＜https://sandstorm.org/news/2023-10-23-sandstorm-tempest-and-...＞<br>- ＜https://github.com/sandstorm-org/tempest＞<br>- ＜https://sandstorm.zulipchat.com/＞" userName="xet7" createdAt="2025/06/03 13:34:31" color="#ff5733">}}




{{<matomeQuote body="＞ MongoDB 3 server version is same for every grain.<br>これについて詳しく説明してくれる？もしWekanのgrainを2つ開いてたら（アクティブな状態なら）、MongoDBインスタンスも2つ動いてるんじゃないの？どうやって2つのgrainがリソースを共有してるの？<br>編集：ああ、Mongoのバイナリが共有されてるってことか。2つのgrainがデータディレクトリとは別に”イメージ”を共有してるから？なるほど、それは良い点だね！" userName="crabmusket" createdAt="2025/06/03 13:39:35" color="">}}




{{<matomeQuote body="＜https://anytype.io＞ はオープンソースじゃないけど、ソースコードは公開されてるよ。そして自分たちのことを”Everything App”って呼んでるんだ。" userName="bezbac" createdAt="2025/06/03 05:39:51" color="">}}




{{<matomeQuote body="Huly.io は自分たちのことをまさに”Everything App”だって説明してるよ。" userName="sakesun" createdAt="2025/06/03 07:19:31" color="">}}




{{<matomeQuote body="Trelloの料金はずっと手頃になったけど、一つだけ移行を考えるきっかけになるかもしれない機能があるんだ。それは自動化の条件付きロジックだね。Trelloが今や月額5ドルになったってことは知っておいた方がいいよ。これで競争はかなり厳しくなるだろうね。" userName="subpixel" createdAt="2025/06/02 18:15:39" color="#45d325">}}




{{<matomeQuote body="WeKan ＜https://wekan.github.io＞ にはTrello ButlerみたいなIFTTTルールがあるよ:<br>＜https://github.com/wekan/wekan/wiki/IFTTT＞<br>そしてWebhooksもね:<br>＜https://news.ycombinator.com/item?id=44165008＞<br>WeKanにはTrelloにはないものもあるんだ。Swimlanesとか、全コードがオープンソースであること、オンプレミスでホスティングできることとかね。" userName="xet7" createdAt="2025/06/03 00:49:25" color="#ff5c5c">}}




{{<matomeQuote body="もうアメリカの会社は信用できないね、貿易戦争で簡単に武器になっちゃうからさ。" userName="croes" createdAt="2025/06/02 19:10:19" color="">}}




{{<matomeQuote body="もう本格的な貿易戦争寸前だよ。CloudActのせいですでにヤバかったけど、もっと悪くなったね。前の政権はまだEU市民の権利を尊重しようとしてたのに。今やUSの信頼度はChinaと同じレベルだよ、おめでとう。少なくともChinaのRussia支援はもっと隠されてるしね。USは要求に従わないとどうなるか、もう見せてくれたよ。他の同盟国にこんなことした国、他に教えてよ。https://www.lbc.co.uk/world-news/british-icc-chief-prosecuto..." userName="croes" createdAt="2025/06/03 06:47:21" color="#ff5c5c">}}




{{<matomeQuote body="こういうこと心配するの変じゃないと思うよ、Trelloはかなりリストの下の方だけどね。Msが武器化される影響の方がまず心配かな。" userName="bigfudge" createdAt="2025/06/03 06:35:30" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="全くその通り…他国に影響を与えるのに貿易を使うのはうちの国だけだね。降参だよ。" userName="kjs3" createdAt="2025/06/02 22:04:15" color="">}}




{{<matomeQuote body="貿易の使用なんて誰が言った？<br>脅威はソフトウェアの使用を禁止する制裁だよ、USの代わりにICCの捜査官の銀行口座を凍結したみたいにさ。https://www.lbc.co.uk/world-news/british-icc-chief-prosecuto...第三国に制裁を強制する唯一の西側諸国だよ。例えば、ドイツの客は、PayPal Europe S.a.r.l. et Cie s.c.a.経由なのに、Cuban cigarを買う場合、PayPalでドイツの店に払えないんだ。Greenlandの件も忘れちゃいけないね。" userName="croes" createdAt="2025/06/03 06:39:38" color="#785bff">}}




{{<matomeQuote body="”thanks for playing”みたいなこと言うのは、HNのガイドラインにある”皮肉を避ける”に反してるよ。" userName="seanhunter" createdAt="2025/06/05 06:52:42" color="">}}




{{<matomeQuote body="マジかよ？ Atlassianは有名なオーストラリアの会社だろ（ひどいセキュリティ法があってみんなを不安にさせるべきだけどね）。" userName="lmm" createdAt="2025/06/03 01:25:07" color="#45d325">}}




{{<matomeQuote body="Atlassianって米豪の会社だから、Cloud Actの対象になるんだってさ。<br>https://en.wikipedia.org/wiki/Atlassian" userName="croes" createdAt="2025/06/03 06:30:48" color="#ff5c5c">}}




{{<matomeQuote body="「〜になりうる」って書いたんだよ。<br>大統領令一つで変わるかも。Harvardみたいにね。<br>EUは狙われやすいし、M365が禁止になる可能性もある。もっと大きいスケールで考えてみて。<br>https://www.lbc.co.uk/world-news/british-icc-chief-prosecuto..." userName="croes" createdAt="2025/06/03 06:42:44" color="#ff5733">}}




{{<matomeQuote body="たくさんあるよ。一番分かりやすいのはnvidiaかな。今、GreenlandにGPUを送ることすらできないんだって。" userName="kfkdjajgjic" createdAt="2025/06/03 02:50:18" color="#38d3d3">}}




{{<matomeQuote body="その問題でたくさんの産業が困ってるの？それとも、ちょっと極端な例なのかな？" userName="SV_BubbleTime" createdAt="2025/06/03 04:16:20" color="">}}




{{<matomeQuote body="AIチップのアクセスを制限されたSwitzerlandに聞いてみたら？<br>https://www.swissinfo.ch/eng/multinational-companies/us-rest...<br>あと、Crypto Warsも忘れてないよね。<br>https://en.wikipedia.org/wiki/Crypto_Wars" userName="croes" createdAt="2025/06/03 06:49:58" color="#45d325">}}




{{<matomeQuote body="今はBackdoor Warsの時代って感じだよね。<br>https://github.com/howinfo/howinfo/wiki/Backdoor" userName="xet7" createdAt="2025/06/03 13:49:22" color="#45d325">}}




{{<matomeQuote body="プロジェクトは良さそうだね。でも、ドメイン名ってどうなんだろ？" userName="singiamtel" createdAt="2025/06/02 16:37:01" color="">}}




{{<matomeQuote body="＞「気に入る代替ツールが見つからなかったから自分で作った」<br>おめでとう！すごい行動力だね。<br>僕はKanboardを何年も使ってるよ。プロジェクト頑張ってね！" userName="rodolphoarruda" createdAt="2025/06/02 11:37:02" color="">}}




{{<matomeQuote body="Kanboardは良いプロジェクトだけど、個人的にはUI/UXがちょっと物足りなかったなー。" userName="henryball" createdAt="2025/06/02 13:56:59" color="">}}




{{<matomeQuote body="同感！UI/UXにプロジェクトの開始日みたいな基本データがないのは変だよね、PMアプリなのにさ。" userName="rodolphoarruda" createdAt="2025/06/02 17:27:12" color="#38d3d3">}}




{{<matomeQuote body="Trelloめっちゃ好き！見た目良いし、ショートカットで動作速いし、APIで自動化もできる（標準機能もあるけどね）。紹介されてるツールも見てみるわ。" userName="submeta" createdAt="2025/06/02 14:28:58" color="#45d325">}}




{{<matomeQuote body="「ショートカットで動作速い」って、Trelloは俺が最後に使ってから相当性能改善したか、君のボードのカードやメディアが少ないだけじゃない？昔は操作に数秒かかってたんだよ。" userName="OsrsNeedsf2P" createdAt="2025/06/02 15:58:27" color="">}}




{{<matomeQuote body="フィードバック：ワークスペースとかボード、リスト作成時、「Enter」キーで作成できないのは直してほしいな。「Create」ボタンじゃないとダメみたい。あと、新規にはワークスペース、ボード、リストの違いが分かりにくいから、画像一枚で説明があると親切かも。" userName="column" createdAt="2025/06/03 08:38:33" color="#45d325">}}




{{<matomeQuote body="Trelloを14年使ってて最大の問題点：①ユーザーがカード等を消すと完全に消えちゃう。②ログインなしの秘密リンクでボード共有したいけど、閲覧やコメントだけの権限はTrelloにはないんだよね。" userName="anonymous344" createdAt="2025/06/02 17:30:57" color="#45d325">}}




{{<matomeQuote body="WeKan https://wekan.github.io なら、コメントだけできるCommentOnlyロールがあるよ。BoardAdminが設定できるし、APIでもできるよ。詳しくはリンク先見てね。<br>https://github.com/wekan/wekan/wiki/REST-API-Role<br>https://github.com/wekan/wekan/blob/main/api.py" userName="xet7" createdAt="2025/06/03 01:17:57" color="#ff5733">}}




{{<matomeQuote body="シンプルなツールを探してるんだ。デモ（https://kan.bn/kan/roadmap）試したけど、カードをクリックしても中身が表示されず、スケルトン表示のままだったよ。" userName="akshayKMR" createdAt="2025/06/02 13:09:01" color="#38d3d3">}}




{{<matomeQuote body="すごいプロジェクトだね、試してみるわ。うちは別のオープンソースTrelloクローン使ってるけど、これも安定しててTrelloのUIに結構似てるんだよ。これ→https://github.com/plankanban/planka" userName="oldgregg" createdAt="2025/06/02 15:51:30" color="#785bff">}}




{{<matomeQuote body="どうも！Plankaも良いけど、TrelloのUIにそっくりなのがイマイチかなって。Trelloのシンプルさとかカスタマイズ性は活かしつつ、モダンなUI/UXで作りたいと思ってるんだ。" userName="henryball" createdAt="2025/06/03 11:05:00" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
