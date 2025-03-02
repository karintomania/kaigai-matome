+++
date = '2025-02-16T00:00:00'
draft = false
title = '自動HTTPS搭載！Caddyでサーバー管理が劇的に楽になる方法とは？'
tags = ["サーバー", "HTTPS", "Web開発", "プログラミング", "オープンソース"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> 自動HTTPS搭載！Caddyでサーバー管理が劇的に楽になる方法とは？

引用元：[https://news.ycombinator.com/item?id=43070025](https://news.ycombinator.com/item?id=43070025)

{{<matomeQuote body="Caddyを使うと、開発中にAPIのHTTP2テストがめっちゃ楽になるんだ。多くの開発サーバーはHTTP1しか対応してないから、ローカルホストへの同時接続数が6に制限されちゃう。HTTP2はSSLが必要だけど、Caddyのリバースプロキシを使えば簡単にHTTP2が使えるようになり、ElectricSQLではこれをおすすめしてるよ。長いポーリングを行うAPIに最適だし、Viteの前に置くとリロードも速くなるんだ。" userName="samwillis" createdAt="2025-02-16T19:01:28" color="#45d325">}}

{{<matomeQuote body="HTTP2は厳密にはSSLが不要なんだけど、ブラウザがサポートしてないから、実質的にはサーバー間や非ブラウザクライアントでしか使えないんだ。HTTP3は完全に暗号化が必要になったけどね。" userName="jsheard" createdAt="2025-02-16T19:06:43" color="">}}

{{<matomeQuote body="ローカルでのHTTP2サポートがないのはほんと残念だよね。" userName="samwillis" createdAt="2025-02-16T19:12:30" color="">}}

{{<matomeQuote body="HTTP2を平文でサポートしない理由は、サーバーがHTTP/2かHTTP/1.1で応答するのを検出するのが複雑になるからだと思うよ。TLSを使えばALPNがあるから簡単なんだけどね。" userName="imdadadani" createdAt="2025-02-16T19:24:14" color="">}}

{{<matomeQuote body="最新のブラウザでは簡単にできるけど、実は愚かな中間プロキシがHTTP/2のリクエストをキャッシュしたり、壊したりする可能性があるからなんだ。暗号化があればこの問題はなくなるんだよね。" userName="zinekeller" createdAt="2025-02-16T22:52:07" color="#ff33a1">}}

{{<matomeQuote body="それはあんまり良い言い訳じゃないな。ブラウザがGopherサーバーに接続するのはgopher://example.comって打てばいいし、HTTP2もhttp2://example.comで良いはずだと思う。理由はさておき、そこの証明書をコピーしてブラウザでHTTP2使ってるよ。自分で作るより1秒早いんだ。" userName="jrockway" createdAt="2025-02-16T19:40:45" color="">}}

{{<matomeQuote body="URLでhttp2を使うのは、初期の移行が複雑になるんだよね。リンクをシェアする際に、ユーザーに最適な体験を直接保証できないし、古いリンクも気になるところだね。" userName="johannes1234321" createdAt="2025-02-16T22:17:10" color="">}}

{{<matomeQuote body="おお、これのおかげでさらに1秒節約だわ！" userName="taftster" createdAt="2025-02-16T20:06:28" color="">}}

{{<matomeQuote body="これって、どのブラウザやライブラリが信頼してるの？それともGoのツールチェーンがインストールするのかな？" userName="e12e" createdAt="2025-02-16T20:56:24" color="">}}

{{<matomeQuote body="特に信頼されてる訳じゃなくて、ただの自己署名証明書なんだ。自分の自己署名証明書と何が違うかって、生成するコマンドを考えなくていいだけだよ。" userName="jrockway" createdAt="2025-02-16T23:11:15" color="">}}

{{<matomeQuote body="ローカルホストで信頼しちゃうと、リスクがあるよね。みんながキーのコピーを手に入れられちゃうから。" userName="e12e" createdAt="2025-02-17T17:16:02" color="">}}

{{<matomeQuote body="DNS名を作ってローカルホストにリダイレクトする方法もあるよ。無理なら、無料のDNSサービスで正規ドメイン名を取得して証明書もらうのもあり。自分はtraefik.meを使ってて、ローカル開発でHTTP/2が動いてる。" userName="tacone" createdAt="2025-02-16T20:08:41" color="#45d325">}}

{{<matomeQuote body="すごく簡単なのは、/etc/hostsを使うこと。127.0.0.1 localhost local.foobar.comってやって、CaddyやNginxでワイルドカードの証明書を使えばOK。" userName="imhoguy" createdAt="2025-02-16T21:42:11" color="">}}

{{<matomeQuote body="DNS名を登録することで商業的に敏感な情報が漏れないか心配なら、SAN証明書は避けたほうがいいよ。ワイルドカード証明書は安全だし、秘密が漏れない名前を選べば大丈夫。" userName="dspillett" createdAt="2025-02-16T23:10:27" color="">}}

{{<matomeQuote body="＞SAN証明書は証明書透明性ログのせいで駄目だよ。実際、WebのPKIの証明書はほとんどがSANを持ってる。だし、SANがない証明書は使えないってことが確立されたから、もう古い方法は使えなくなったんだ。全く効果がないから、敏感な情報を隠すのは無駄だよ。" userName="tialaramex" createdAt="2025-02-16T23:52:32" color="#ff5733">}}

{{<matomeQuote body="＞WebのPKIにはすべてSANが含まれてるのは技術的に正しいけど、普通はSAN証明書とは呼ばないよ。つまり、ワイルドカード証明書だってSAN証明書と考えられるし、内部のDNS管理すれば外部からのリクエストに岩を隠せるってわけさ。" userName="dspillett" createdAt="2025-02-18T23:04:37" color="#ff33a1">}}

{{<matomeQuote body="mkcertとlocaldev.meを組み合わせて使ってる。mkcertでCAを生成して証明書をインストール、localdev.meでサブドメインをローカルホストにリダイレクトしてるよ。" userName="sarlalian" createdAt="2025-02-17T17:31:11" color="">}}

{{<matomeQuote body="それじゃあ、開発環境を世間にさらけ出しちゃうことにならない？それは大丈夫なの？" userName="8n4vidtmkvmk" createdAt="2025-02-16T20:17:21" color="">}}

{{<matomeQuote body="ローカルアドレスへのDNSは何も晒さないよ。myTopSecretsをlocalhostにマッピングすれば、自分だけが使えるし、他の人が使ったら自分のコンピュータにルーティングされるから大丈夫。" userName="adolph" createdAt="2025-02-16T20:38:52" color="">}}

{{<matomeQuote body="でも、myTopSecretsの存在は外にバレちゃうんだよね。証明書透明性ログも含めて、実験や個人的な開発するのに、今の設定が求めるのがクソだよ。" userName="TeMPOraL" createdAt="2025-02-16T21:04:54" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="確かにそうだよね。ブラウザがローカルシステムを開発プラットフォームとして使うのを妨げてる気がする。特にJSのlocalStorage APIがドメイン名が必要なとこが気に入らない。ローカルファーストなウェブアプリが作れなくなるのも問題。これができれば、プラットフォーム特有のアプリが減ると思う。" userName="dingdingdang" createdAt="2025-02-16T22:59:57" color="#ff5c5c">}}

{{<matomeQuote body="ちょっと実験したり個人的なことをハックするには、現実的にはReplitを使うのがいいけど、このスレッドは複雑に保つことについて話してるからね。> 2) サブスクリプション的な契約に入る必要がある（Let's Encrypt）。" userName="adolph" createdAt="2025-02-17T22:02:28" color="">}}

{{<matomeQuote body="でも、自分のmyTopSecretsを世界に見せる必要はないよ。ローカルDNSだけで名前を出せばいいし、ワイルドカード証明書を使えばSAN証明書みたいに外に情報を出さずに済む。あ、名前をmyTopSecretsじゃなくてProjectLooBreakにするのもいいかもね。" userName="dspillett" createdAt="2025-02-16T23:05:43" color="">}}

{{<matomeQuote body="ドメインを/etc/hostsに追加すれば、ローカルでテストするのにドメインを買う必要はないと思うけど。それに、外部に何も曝露するわけじゃない。" userName="Reubensson" createdAt="2025-02-16T21:33:26" color="">}}

{{<matomeQuote body="一応できるかもしれないけど、やるのが怖いかな。証明書も必要だし、ブラウザが信頼してくれない証明書の生成とか、モバイルデバイスでも通用させるのが面倒なんだよね。" userName="TeMPOraL" createdAt="2025-02-16T21:43:19" color="">}}

{{<matomeQuote body="DNSの話だけをしてたんだ。自己署名証明書にも問題はあるけど。ローカルのリゾルバでキャッシュの問題には全然ぶつからなかったよ。minicaを使ったことあるけど、ルート証明書の作成が楽になるんだよね。" userName="Reubensson" createdAt="2025-02-16T22:00:02" color="">}}

{{<matomeQuote body="何でも/etc/hostsに追加できるけど、正しい証明書がないとブラウザはそれを信頼しない。ドメインを持ってるなら便利だけどね。" userName="deanishe" createdAt="2025-02-18T18:46:49" color="">}}

{{<matomeQuote body="myTopSecretsは、インターネットに出さずにローカルでリダイレクトすることもできるよ。" userName="IncRnd" createdAt="2025-02-16T21:36:40" color="">}}

{{<matomeQuote body="このコメントで興味を持ったので調べたんだけど、Viteは証明書を設定すれば自動でHTTP2を使うみたい。Caddyをローカルで使う理由はそれほどないかも。" userName="JasonSage" createdAt="2025-02-16T21:23:02" color="">}}

{{<matomeQuote body="完全に同意。もし共有設定でgitリポジトリにコミットできる方法が必要なら、Localiasをチェックしてみて。これを使えば同じwifiネットワーク内のデバイスから開発サーバーにもアクセスできるから、モバイルテストにも便利だよ。" userName="peterldowns" createdAt="2025-02-16T20:17:08" color="#38d3d3">}}

{{<matomeQuote body="これはローカルホストでしか使えないってことだよね？DNSサーバーをセットアップしたり、ルート証明書をインストールしたりするような複雑なスキルなしで、社内ネットワーク向けに暗号化されたトラフィックを実現する方法を探してるんだ。お客さんにウェブサーバーを社内で運用してもらいたいから、サーバーが本物かどうかを確認する必要はないんだけど。" userName="breadwinner" createdAt="2025-02-16T23:41:16" color="">}}

{{<matomeQuote body="サーバーのアイデンティティを確認しないと、暗号化なんて意味ないよ。" userName="HumanOstrich" createdAt="2025-02-20T09:49:42" color="#38d3d3">}}

{{<matomeQuote body="Localiasは君の使い方には合ってないし、問題は解決できないよ、ゴメン。" userName="peterldowns" createdAt="2025-02-17T04:06:48" color="">}}

{{<matomeQuote body="その6つの接続ってデフォルトで、about:configで変更できるよ。今年はもっと高くしてもいいと思うけど、大手ブラウザの人たちが気にするとは思えないね。" userName="ndriscoll" createdAt="2025-02-17T05:01:25" color="">}}

{{<matomeQuote body="＞最大で6つの同時接続に制限されちゃうね。<br>ウェブサーバーが0.0.0.0で待機していれば、127.0.0.2や127.0.0.3、127.0.0.4…のlocalhost接続も受け入れるから、各接続に6つできると思うよ。https://superuser.com/questions/393700/what-is-the-127-0-0-2...（ただし、macOSではダメだって言ってるけど）" userName="jodrellblank" createdAt="2025-02-17T04:00:35" color="">}}

{{<matomeQuote body="今の時代、製品や企業はほとんどがngrokを使って開発環境やローカルサーバーをHTTP2に公開してると思ってたけど、Caddyがしっかりその役割を果たせるってことに気づいて良かった。" userName="srameshc" createdAt="2025-02-16T22:49:33" color="">}}

{{<matomeQuote body="＞OSの信頼ストアにインストールされるルート証明書を通じて<br>こんな機能をウェブサーバーにしたくないよ。" userName="noplacelikehome" createdAt="2025-02-17T00:55:29" color="">}}

{{<matomeQuote body="この目的のためにはオプションだから、明示的にインストールする必要があるよ。" userName="bogdan" createdAt="2025-02-17T07:13:34" color="">}}

{{<matomeQuote body="nginxからcaddy-docker-proxyに切り替えてから1年、その後最近Pangolinに移行したけど、すごく楽しい経験をしてるよ。Wireguardでのトンネル機能や認証が組み込まれたTraefikのフロントエンド。MinecraftサーバーのTCP転送が超簡単になったから、Nginx Proxy Managerのより良いバージョンを求めてる人にはおすすめ。ドキュメントはちょっと不足だけど、メンテナーたちはDiscordでとても助けてくれるよ。" userName="seaal" createdAt="2025-02-16T20:48:28" color="#38d3d3">}}

{{<matomeQuote body="Cloudflare Tunnelsの代替品みたいだね。ただしCloudflareのアクセスはCloudflareのセキュリティチームによって保護されているんだ。" userName="aborsy" createdAt="2025-02-16T21:14:34" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="アメリカの会社にトラフィック監視されるのはいやだな。もうすでに自分のブラウジング行動が知られてるからさ。" userName="gloflo" createdAt="2025-02-16T21:38:52" color="">}}

{{<matomeQuote body="その通りだよね。でもVPSでPangolin使えば、その心配はないよ。どっちにしろクラウドプロバイダーがアクセスするから。" userName="aborsy" createdAt="2025-02-16T21:45:00" color="#785bff">}}

{{<matomeQuote body="Pangolinがどう動くかは分からないけど、一般的にはエンドツーエンド暗号化でトンネルを作ることができるよ。" userName="apitman" createdAt="2025-02-16T22:35:15" color="">}}

{{<matomeQuote body="OPはすでにCloudflareを使ってると言ってたよ。" userName="delduca" createdAt="2025-02-16T22:32:50" color="">}}

{{<matomeQuote body="Pangolinの名前が挙がっててうれしい！" userName="miloschwartz" createdAt="2025-02-16T22:52:53" color="">}}

{{<matomeQuote body="プロジェクトの頑張りに感謝！メッセージを広められてうれしいよ、Milo :)" userName="seaal" createdAt="2025-02-17T13:29:46" color="#45d325">}}

{{<matomeQuote body="このコメントありがと。サーバー用にドメインを使おうとしてるんだけど、ISPのアドレスは公開したくないから、別のセットアップも考えたい。ec2やDOのドロップレットで静的IPを使い、tailscaleでトラフィックをプロキシしたいと思ってる。ec2やドロップレットのウェブインタフェースからSSH接続を許可するIPを制御するのが楽でいいね。" userName="InMice" createdAt="2025-02-17T01:31:50" color="#785bff">}}

{{<matomeQuote body="SSOって何に使うの？他のセルフホステッドアプリとどう連携するの？認証を2回してたら意味がないよね。" userName="npodbielski" createdAt="2025-02-17T09:52:32" color="">}}

{{<matomeQuote body="特定のサブドメインで認証を無効にすることができるよ。クッキーもあまり元の認証を見ないからね。" userName="seaal" createdAt="2025-02-17T12:00:06" color="">}}

{{<matomeQuote body="なるほどね。理想的にはすべてのセルフホステッドアプリにSSOがあって、一度ログインすれば全てにアクセスできるのがいいな。家族も同じサービスを使うから、’またログインしなきゃいけないの？’って文句を聞きたくないし。スマホアプリもトークンを使うから、アプリUI経由でセットアップしなくちゃいけないのが面倒。だからスマホから2回もログインすることになって、さらに不便だよ。要するにプロキシWebサーバーでIPやIPレンジをブロック・ホワイトリストしたい。Pangolinはそこがすごいみたい。" userName="npodbielski" createdAt="2025-02-17T13:39:02" color="#ff33a1">}}

{{<matomeQuote body="SSOは一度だけで、パスワードマネージャーに保存できるからログインは大した問題じゃないよ。ユーザーや役割の作成も簡単で、IPやURLのホワイトリストで認証をスキップする設定もできるし、traefikの上に作られてるから拡張性も高い。家族のJellyfinは他の認証があるから、問題が起きないように無効にしてる。" userName="seaal" createdAt="2025-02-17T16:37:17" color="#45d325">}}

{{<matomeQuote body="このスレッドはポジティブな意見が多いね。Caddyを批判するつもりはないけど、Nginxに対する主な利点は証明書の設定が簡単ってことだけかな。数年前にKubernetesクラスターで証明書の自動作成と更新を設定したし、Load Balancerを新しいドメインに向けるだけで大丈夫。" userName="8n4vidtmkvmk" createdAt="2025-02-16T20:31:27" color="">}}

{{<matomeQuote body="Caddyに悪いところはないと言ったが、一つある。動的にロード可能なモジュールをサポートしていないから、例えばgeoipが必要な場合、自分でビルドしないといけないし、CVEの管理も大変。ディストリビューションの管理者を頼れない。" userName="homebrewer" createdAt="2025-02-16T20:58:50" color="#785bff">}}

{{<matomeQuote body="フォークを維持する必要はないよ。必要なものがあればDockerfileを用意してコンテナをビルドするだけだから。レートリミッティングを使う時も、単純にDockerfileを作るだけで済むよ。" userName="vruiz" createdAt="2025-02-16T22:04:47" color="">}}

{{<matomeQuote body="Dockerの外でCaddyを使いたいなら、リアルなリモートアドレスを取得するための問題がまだあるんだ。" userName="maple3142" createdAt="2025-02-17T01:13:27" color="">}}

{{<matomeQuote body="何もトラッキングする必要もないし、GitHub Actionsのワークフローを設定して依存関係のバージョンを自動で上げてもらえば楽だよ。" userName="Marsymars" createdAt="2025-02-17T01:01:39" color="">}}

{{<matomeQuote body="それならただ’apt install -y nginx certbot’を実行するだけで、ビルドやパッケージ環境の心配いらないよ。" userName="baby_souffle" createdAt="2025-02-17T01:54:12" color="">}}

{{<matomeQuote body="Golangは基本的にダイナミックロード型のライブラリをサポートしてない。最初はできるように見えるけど、実際にはそうじゃないから気を付けて。" userName="dboreham" createdAt="2025-02-16T21:52:37" color="">}}

{{<matomeQuote body="もう少し詳しく教えて。プラグインパッケージがこれを扱えると思ったけど、実際に試したことはないから、本当にダメなの？" userName="silisili" createdAt="2025-02-16T22:14:28" color="">}}

{{<matomeQuote body="それはそうだね。LinuxとmacOSに対応したPOCだし、実際には読み込んだシンボルを必要な意味にキャストするのに依存してる。" userName="pjmlp" createdAt="2025-02-16T22:31:10" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="これが前回見たときの大きなネックだったんだ。Route 53や他のDNSプロバイダがLet’s Encryptのサポートのために使えなきゃいけなかったのが嫌で、自分でプラグインを作らなきゃいけない印象で、もう読むのをやめたよ。Certbotは簡単にインストールできるし、webサーバーとも一発で使えるしね。" userName="baby_souffle" createdAt="2025-02-16T21:31:07" color="">}}

{{<matomeQuote body="Caddy3はWASMプラグインをWazeroみたいなので実装するかもしれないな。パフォーマンスに影響が大きすぎないといいけど。" userName="apitman" createdAt="2025-02-16T22:37:59" color="">}}

{{<matomeQuote body="Caddyはnginxの意見のある代替で、現代的なデフォルトが設定されてる。全てのnginxやapacheの設定をする自信はあるけど、Caddyには「ドメイン名はこれ」って言うだけで、あとは楽に進められる。特定の機能にトラフィックやnginxを使いたいと思ったら、必要なときに切り替えればいいし、Caddyはすぐ使える状態なのが大きな利点だよ。" userName="maccard" createdAt="2025-02-16T20:46:27" color="#785bff">}}

{{<matomeQuote body="＞でも15分ほどでできるって言ってたけど、それには人が月や年の経験があってこその話じゃないかな。今ならLLMで証明書の設定とかもできると思うけど、過去に何度か挑戦したときは専門用語が多くて、全てを知っている人の視点で書かれてることが多かった。" userName="gamedever" createdAt="2025-02-17T00:20:27" color="">}}

{{<matomeQuote body="証明書の設定って本当に面倒。インフラエンジニアリングを何年もやってきたけど、SSLの隠れたコストを軽視する人たちが本当に多い。どこで終端するか、どの部分がSSLを扱うかを理解する必要があって、それを誤ると危険なことになっちゃうんだ。自己署名証明書を簡単に考える人が多いけど、全てのアプリケーションや依存関係がそれを信頼する方法を知らないと危ない。" userName="SOLAR_FIELDS" createdAt="2025-02-17T03:03:06" color="#ff5c5c">}}

{{<matomeQuote body="そうだよ、君の言う通りなんだ。自分でできる人でも、これは価値のある機能だよね。" userName="maccard" createdAt="2025-02-17T09:47:21" color="">}}

{{<matomeQuote body="Caddyは使ったことないけど、設定形式がnginxより悪いことはないだろうと思う。nginxの設定はすごい特殊なところがあるからさ。" userName="Diggsey" createdAt="2025-02-16T20:39:11" color="">}}

{{<matomeQuote body="＞nginxの設定形式より悪くはないと思う。設定をパラメータ化して読み込むことができるから、大きな設定を再利用できるのが嬉しいんだ。これはansibleやbash + envsubstに頼らなくて済むからね。" userName="homebrewer" createdAt="2025-02-16T21:01:41" color="">}}

{{<matomeQuote body="確かに。nginxの設定は昔から不思議なところがあったけど、結局は解決できたし、なかなか触ることはないから大丈夫だね。" userName="8n4vidtmkvmk" createdAt="2025-02-16T21:07:08" color="">}}

{{<matomeQuote body="単一の実行ファイルで、OSに関係なくファイルがどこにあるかが分かるのがいいね。" userName="thomasfromcdnjs" createdAt="2025-02-16T20:32:58" color="#ff33a1">}}

{{<matomeQuote body="Nginxで苦労してたけど、Caddyにしてみたらコマンド一発で簡単に動かせて感動したよ。もしNginxの設定が難しいって思うなら、Caddyを試してみる価値あり！" userName="lynndotpy" createdAt="2025-02-16T20:41:28" color="#ff5c5c">}}

{{<matomeQuote body="単一の実行ファイルはパッケージマネージャーがやるべきことだよ。他のOSではずっと前から解決されてる問題だし。" userName="homebrewer" createdAt="2025-02-16T21:05:02" color="">}}

{{<matomeQuote body="多くのケースで解決できてないよね。ポータブルアプリが人気なのもその証拠。アプリを一つのフォルダーにまとめるWindowsって、逆に言えば全てがファイルって考え方だよね。" userName="TeMPOraL" createdAt="2025-02-16T21:14:51" color="">}}

{{<matomeQuote body="OS間のIPCやネットワークを無視すれば、全てがファイルっていうのは確かだけど。Windowsのやり方は姿勢が変わっただけだよ。" userName="pjmlp" createdAt="2025-02-16T22:36:41" color="">}}

{{<matomeQuote body="Caddyはまだ試してないけど、Nginxには明らかな欠点があって、早く逃げたい。クエリの検出が遅いのが特に困るね。ログローテーションも面倒だし、他にもいろいろあるから、代替を探してる。" userName="k_bx" createdAt="2025-02-17T10:22:16" color="#38d3d3">}}

{{<matomeQuote body="ログローテーションは`logrotate`がやるべきじゃない？自分はあんまりログ見ないけど、使い道があるのも分かる。" userName="8n4vidtmkvmk" createdAt="2025-02-17T23:16:53" color="">}}

{{<matomeQuote body="Nginxを10年近く使ってたけど、設定を書くのが不安だった。でもCaddyは問題なく使えてるから個人的には満足。仕事ではNginxかTraefikを使うかもだけど、Caddyには過去のサポートフォーラムに不安があったのが気になる。" userName="wink" createdAt="2025-02-17T10:15:33" color="">}}

{{<matomeQuote body="Nginxは企業向けには優れてると思うけど、無駄な設定が多くて、基本的なことをするのも大変だからCaddyに目を向けたよ。" userName="DistractionRect" createdAt="2025-02-16T22:40:55" color="#785bff">}}

{{<matomeQuote body="どんな問題があったの？自分の本番環境の設定は65行もないんだけど、簡単にphp-fpmもサポートできるよ。" userName="8n4vidtmkvmk" createdAt="2025-02-17T01:32:42" color="">}}

{{<matomeQuote body="Caddyマジで好き。数年間使ってて信頼性も高いし、基本を覚えればセットアップも超簡単。ドキュメントはちょっと分かりづらいけど、NGINXでletsencryptの設定に苦労するよりずっと時間とエネルギーの節約になったよ。" userName="martinbaun" createdAt="2025-02-16T19:36:25" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
