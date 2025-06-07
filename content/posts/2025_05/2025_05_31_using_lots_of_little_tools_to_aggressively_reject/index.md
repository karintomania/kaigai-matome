+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'ボットを徹底拒否！小さなツールをたくさん使う方法'
tags = ["ボット対策", "Webセキュリティ", "サーバー設定", "ネットワーク", "キャッシュ"]
featureimage = 'thumbnails/orange4.jpg'
+++

> ボットを徹底拒否！小さなツールをたくさん使う方法

引用元：[https://news.ycombinator.com/item?id=44142761](https://news.ycombinator.com/item?id=44142761)




{{<matomeQuote body="怪しいクローラーってさ、デカいボットの真似するんだよね。みんなUser-Agentはホントだ！って思い込みすぎじゃない？<br>俺のお気に入りはrobots.txtにgzip bomb仕込んで、リクエスト全部自動ブロックする方法。Caddyだとマジ簡単だったし、ヤバい奴ほど引っかかるよ。" userName="miladyincontrol" createdAt="2025/05/31 15:35:43" color="#45d325">}}




{{<matomeQuote body="前のコメント、ホントそうだね。<br>ブログ書いてる人たちとは世代違うのかな、リソース少ないことにこだわってるの全然わかんないわ。<br>LED電球消し忘れて大騒ぎしたり、ガソリン5セント引きのために25km運転するおじいちゃんみたい。<br>毎秒20リクエストなんてさ…何でもないよ。<br>ダイナミックに生成してても（マジで？それ直すのにキャッシュ使った方がずっとマシなのに）大した負荷じゃない。<br>「ボットぶっ潰せ」みたいな記事は流行りっぽいけど、全然新しくないし、もっと効率的な方法いっぱいあるって。" userName="horsawlarway" createdAt="2025/05/31 20:04:15" color="">}}




{{<matomeQuote body="1．ボットトラフィックの量、なめすぎじゃない？この記事読むと規模がわかるよ：https://thelibre.news/foss-infrastructure-is-under-attack-by...<br>2．リクエストって全部同じじゃないんだよ。毎秒20リクエストでも、スタティックなHTMLならいいけど、オープンソースのリリースみたいにデカいバイナリファイルをスクレーパーが叩きまくると、すぐに帯域やばくなる。帯域無料なんてユートピアに住んでない限りね。<br>3．ダイナミックページのキャッシュの難しさをなめてる。Git blamesとかキャッシュマジ難しいし、自分で作るのも記事の方法より簡単じゃないって。" userName="whoisyc" createdAt="2025/06/01 01:35:02" color="#38d3d3">}}




{{<matomeQuote body="ボットじゃなくて、勝手にサイト使うボット所有者がマジで問題！<br>せめて「このツールでサイト使ってもいい？」って許可取れよって話。<br>許可なしでデータ、特にAI用の最新情報をパクるために、リソース食い荒らして、robots.txt無視。<br>https://infatica.io/みたいなIPリスト使って、本物のユーザーのフリしてる奴もいるんだ。<br>記事もあるよ：https://jan.wildeboer.net/2025/04/Web-is-Broken-Botnet-Part-...<br>サイト運営者は、システムとかデータとか、ユーザー体験守るためにツール作る権利があるんだよ。<br>知的財産を守るってこと。人のリソース勝手に使って儲けようとする奴、許せん！" userName="eGQjxkKF6fif" createdAt="2025/05/31 20:54:18" color="#ff5c5c">}}




{{<matomeQuote body="「帯域無料のユートピア」って言ってたけど、ピアリング契約っていうのがあるんだよ。結構普通だよ。<br>YouTubeとかTikTokが潰れないのはそれが理由。<br>ほとんどのユーザーにとっては帯域は無料なんだ。" userName="charcircuit" createdAt="2025/06/01 03:28:59" color="">}}




{{<matomeQuote body="最近さ、スマートTVでマジ怖い経験したんだ。<br>YouTubeのコンテンツを repackageしたアプリいっぱいあって、よく見たらライセンス契約に「パートナーのトラフィックのプロキシになる権利をアプリに与える」みたいな変な条項が。<br>これって、多くのスマートTVユーザーが知らずに自分の家のIPアドレスをアプリ開発者に貸しちゃってるってこと。<br>マジHorrifiedだよ。" userName="polotics" createdAt="2025/06/01 06:28:07" color="#ff5c5c">}}




{{<matomeQuote body="デカいブログならさ、CloudFlare R2とかBackBlaze、S3にCaching付けて使うべきじゃない？<br>自分のサーバーでファイルダウンロード処理するんじゃなくてさ。" userName="busymom0" createdAt="2025/06/01 03:26:32" color="">}}




{{<matomeQuote body="ピアリングできるのって世界のホントに一握りの会社だけだよ。<br>ほとんどの人は帯域にお金払わなきゃいけないんだ。" userName="chii" createdAt="2025/06/01 07:44:19" color="">}}




{{<matomeQuote body="俺の一番のオススメは、Cachingに慣れること。<br>CDNって複雑で高いと思われがちだけど、マジ安いし使いやすいよ。<br>ほとんどの場合は良いCache-Controlヘッダーつけたスタティックコンテンツで解決。<br>もしプロバイダに制限あるならCDN使えば安い。<br><br>もっと踏み込んで言うなら、ホストしてるアプリで役に立たなくて問題起こしてる機能を削るって手もある。<br>例えばGitea。毎秒20リクエストで高負荷とかおかしい。<br>俺のGitea、ラズパイでもその10倍は捌けるぜ？<br><br>なんでダメかっていうと、公開インスタンスの全URLをボットに叩かせてるから。<br>あと、「Download archive」ボタンを有効にしたままなのもダメ。<br>人間はめったに使わないけど、ボットがトリガーして高負荷になるトリップワイヤーだよ。<br><br>5秒で解決する方法？<br>Giteaの設定で`DISABLE_DOWNLOAD_SOURCE_ARCHIVES`をONにするだけ。<br>これで見事に問題解決。ボットはもう問題起こさずにスキャンできる。<br>https://docs.gitea.com/administration/config-cheat-sheet<br><br>もしアプリにそういう設定がなくても、NginxでパスごとにブロックしたりBasic AuthかければOK。<br>IPアドレスでチマチマブロックするのはマジでダメ。絶対うまくいかない。<br><br>だから、ボットをユーザーとして扱って問題解決する方がいいんだよ。<br>建設的に考えようぜ。<br>ボットの先にユーザーがいるんだから。<br>「ボットぶっ潰せ」思考にハマるのは負け確定。問題を理解してないし、解決にならない。せっかく公開したものを自分で制限するって、囚人のジレンマの「皆負け」を選んでるようなもんだよ。" userName="horsawlarway" createdAt="2025/06/04 15:25:41" color="#785bff">}}




{{<matomeQuote body="知り合いのGiteaはピーク時1000リクエスト/秒だったよ。あと、サーバーなんてなくてオンボロPCで運用してる人もいるんだ。数ダースどころか、ひどくなると生活も遅くなるくらいだよ。" userName="spookie" createdAt="2025/05/31 21:38:34" color="">}}




{{<matomeQuote body="robots.txtについてもっと詳しく聞きたいな。ほとんどのAIはrobots.txtを無視するイメージなんだけど、これって言うこと聞くボットにしか効かないの？善意のユーザーをブロックしないで実装する方法を知りたいよ。" userName="ThePinion" createdAt="2025/05/31 21:18:58" color="">}}




{{<matomeQuote body="1秒に20リクエストなんて、たいしたことないよ。MediaWikiでも使ってるとかなら話は別だけど。<br>MediaWiki向けの簡単な設定ってあるの？" userName="Dylan16807" createdAt="2025/06/01 04:40:07" color="">}}




{{<matomeQuote body="ボットはHTTPリクエストで’使っていい？’って聞いてきてるんだよ。どう返すかは持ち主が決められる。記事みたいにね。問題はソフトのできが悪いことの方が多いと思うな。認証済みのリクエストを優先したり、混んでる時は匿名を断ったりするソフトだって考えられるけど、今の技術だと作るのが大変なんだ。" userName="eadmund" createdAt="2025/06/01 01:12:17" color="#ff5c5c">}}




{{<matomeQuote body="うちのWikiチームにgzip bombを防衛策で使おうって説得するの、マジ無理だったよ。危険だって信じてるからね（EU脳？）。<br>みんな、ホントに公開サイトでgzip bombとか使ってるの？" userName="p3rls" createdAt="2025/06/01 07:33:20" color="">}}




{{<matomeQuote body="リリースページの大きいファイルをスクレイパーがダウンロードすると帯域幅ヤバいって話だけど、それは全部CDNにキャッシュすべきだよ。<br>その設定なら1000 QPSでも大丈夫だから。" userName="hartator" createdAt="2025/06/01 04:37:37" color="#ff5c5c">}}




{{<matomeQuote body="まあ、そうなんだけど、HTTPリクエストで嘘ついてくるんだよ。ユーザーエージェント偽装したり、ボットって言わなかったり、他の通信に擬態したり、IPもいっぱい変えたりね。車借りて海外に送られちゃうみたいなもんかな。" userName="const_cast" createdAt="2025/06/01 01:19:19" color="">}}




{{<matomeQuote body="お金があまりない人とか、他のことに最適化してる人もいるんだ。ホスティング代とか月30ドルでもきつい時もあったよ。帯域幅とかCPUとかライセンスが高くて、すぐに予算オーバーしちゃうサイトもあるし、高セキュリティ構成だと性能が出ないこともあるんだ。<br>そういうシステムは遅いから、手前で通信を絞らないといけない。高価なシステムだと無駄な通信はホント避けたいんだよね。貧乏な人とか、スケーリングしにくいサイトとか、セキュリティが厳しいシステムとか、いろんな状況があるってことだね。" userName="nickpsecurity" createdAt="2025/05/31 22:49:52" color="#38d3d3">}}




{{<matomeQuote body="記事にあったらしいけど、ボットがリポジトリ全体をtarballにする要求は、どう見てもひどいよね。ユーザーにログインやCAPTCHAみたいな面倒な操作を強制すれば防げるけど、usability が犠牲になるのは最悪だ。" userName="rozap" createdAt="2025/06/01 05:29:39" color="">}}




{{<matomeQuote body="ごめん、誰か忘れてた。さて、名前を晒す時間だよ。犯人は https://brightdata.com/ って名乗ってる。<br>LGが Data Sefety のために開発者の自己申告に頼ってるのも本当にひどいね。「開発者から関連情報なし」ってアプリが LG アプリストアで報告してるだけだよ…。アプリを評価したり報告したりする方法もなくて、lgappsreport@lge.com に報告しろって書いてあるのを見つけただけだ。" userName="polotics" createdAt="2025/06/04 07:30:08" color="">}}




{{<matomeQuote body="Arch Wiki がやったみたいに https://anubis.techaro.lol/ をインストールすればいいじゃん。" userName="haiku2077" createdAt="2025/06/02 14:25:12" color="">}}




{{<matomeQuote body="あなたの言いたいことの要点は sympathise できるけど、うちのサイトではボットがまともなユーザーより多くのトラフィックを生成してるのをたくさん見てきたよ。実際にはパフォーマンスの問題はなかったけど、普段トラフィックがすごく低いサイトがパニクるのは理解できる。サイトをもっと最適化できるか？ 多分ね、うちはかなりひどいのを知ってるから。でも autoscaling 環境では、設定ミスしたサイトは huge ass な請求額になる可能性があるからね。" userName="vladvasiliu" createdAt="2025/05/31 20:46:02" color="#ff5733">}}




{{<matomeQuote body="「地下室のガラクタ computer」は server って呼ぶべきものだよ。だって、ほとんどの VPS より高性能なんだから（インターネットへの upload 速度以外はね）。" userName="jdboyd" createdAt="2025/06/02 04:28:50" color="">}}




{{<matomeQuote body="うちの server は処理できるけど、うちの ISP が無理なんだ！" userName="haiku2077" createdAt="2025/06/01 00:37:19" color="">}}




{{<matomeQuote body="それはあなたにインターネット接続を提供してる誰かがやれることだよ。帯域幅に追加料金がかかるところばかりじゃないんだ。" userName="charcircuit" createdAt="2025/06/01 08:12:17" color="">}}




{{<matomeQuote body="＞My biggest recommendation is to just get familiar with the caching constructs that are available.<br>それは役に立たないよ。ボットは seemingly random なリソースを seemingly random な順序で要求してるみたいだから。確かに何度も同じ links を hit することはあるけど、caching が役に立つほど多くはないし、間隔も far between だからね。残りのことについては、「機能は off にしとけ。誰も使わないから、俺を信じろ！」って感じ？" userName="lingo334" createdAt="2025/06/05 11:49:02" color="#785bff">}}




{{<matomeQuote body="Cache だってお金がかかるんだよ。Nothing は free じゃない。" userName="phantomathkg" createdAt="2025/06/01 04:27:21" color="">}}




{{<matomeQuote body="もし robots.txt に例えば Disallow: /private/beware.zip って line があって、サイトのどこからもその file に link がないのにその URL への request が来たら、それは誰か/何かが robots.txt を読んで explicitly に violate したってことだから、zipbomb 送ったり source IP を ban したりできる。でも私の経験では、robots.txt violations がそんな flagrant なわけじゃないんだ（request の半分は多分人間が何を隠してるんだろうって curious になっただけで、特に LLM 向けに書かれたほとんどの bots は robots.txt すら check しない）。本当の abuse は、高価で frequently changing な URL を reasonable より frequent に hit する crawler、そして payment endpoints を hit する card-testers、時には excessive chargebacks 付きで、だね。あとは port-scanners だけど、network setup が decent なら minor annoyance だ。そして email spoofers、これらは早期に correctly setup しないで、 hosts を変えるたびに server の reputation を down させる。" userName="kevindamm" createdAt="2025/05/31 23:28:35" color="#45d325">}}




{{<matomeQuote body="" userName="tdeck" createdAt="2025/06/01 05:54:29" color="">}}




{{<matomeQuote body="" userName="ThomW" createdAt="2025/05/31 17:39:20" color="">}}




{{<matomeQuote body="" userName="thowaway7564902" createdAt="2025/06/01 05:16:40" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="" userName="mandmandam" createdAt="2025/06/01 11:25:20" color="">}}




{{<matomeQuote body="" userName="braiamp" createdAt="2025/06/03 12:49:59" color="">}}




{{<matomeQuote body="" userName="mandmandam" createdAt="2025/06/03 16:00:03" color="">}}




{{<matomeQuote body="" userName="hinkley" createdAt="2025/06/01 18:41:55" color="#ff5733">}}




{{<matomeQuote body="GiteaのZipダウンロードでディスク容量食うのってバグだと思うんだよね。解決策としてディレクトリ読み取り専用にしたけど、Zipダウンロードはできなくなった。代わりにGitクローンしてって感じ。あと、特定のuser-agentは単に嫌いだから https://git.immibis.com/gptblock.html にリダイレクトしてるよ。毎秒8リクエストは負荷じゃないけど、ブロックしたのはアホだから。" userName="immibis" createdAt="2025/05/31 19:05:04" color="#ff5c5c">}}




{{<matomeQuote body="筆者は”もう気にしない”って言うけど、禁止IPにGoogle, ripe.net, semrushがいたよ。みんなに見てもらいたいならGoogleとかはブロックしない方がいいでしょ。AIボットにデータ使われるのが嫌でも、公開サイトにしてるんだから使われるのは当然じゃない？見つけたいのに看板の電気消すようなもんじゃん。" userName="atomman747" createdAt="2025/05/31 14:04:46" color="#38d3d3">}}




{{<matomeQuote body="Semrushはずっとひどかったからrobots.txtに特別な記述してるし、法務にも対応させたことがあるよ。SEO業者がサイトを荒らして本当の訪問者を追い出すのは無価値。他のSEO業者も似たようなもん。最近のAI関連の振る舞いもひどくて、法務とか広報に連絡したり技術的な対策も色々したんだ。" userName="DamonHD" createdAt="2025/05/31 15:29:42" color="#38d3d3">}}




{{<matomeQuote body="自分も同じ経験あるよ。会社のサイトで上位3つのボットはGoogle, Bytedance, Semrushだったんだ。ニッチで英語じゃない、ほとんど更新しない小さなサイトなのに、この3つが毎秒アクセスしまくってたんだ。" userName="akudha" createdAt="2025/05/31 15:47:10" color="">}}




{{<matomeQuote body="nofollowリンクで大量アクセスされて困ってたんだ。JavaScriptで対応しようとした人がいたんだけど、その人辞めちゃって、設定が有効になってなかったことに後から気づいたんだよ。ピーク時のリクエストの10%以上がこれで、クロール時間も長引いてた。マジでアホな話。" userName="hinkley" createdAt="2025/06/01 18:46:06" color="#38d3d3">}}




{{<matomeQuote body="ボットは帯域幅、メモリ, CPU, ディスク容量をかなり使うからだよ。記事にもある通り、ただ失礼なだけで、ああいう収集ボットの相手をする必要はないでしょ。GoogleもAIスクレーパーを動かしてるから、それを見たのかもしれないね？" userName="phyzome" createdAt="2025/05/31 15:32:53" color="">}}




{{<matomeQuote body="記事読んでると、ネットの人はデータ収集が検索エンジンだけじゃなくなった状況に気づき始めた感じだね。データが民主化されるとアクセスは増えるから、適応するか引きこもるかだ。そういえばGoogleはGiteaの個別のコミットをスクレイピングしなかったのかな？" userName="globie" createdAt="2025/05/31 16:25:45" color="">}}




{{<matomeQuote body="分かってるよ。WAFとかCaptchaで全部ロックダウンして、最終的にはちゃんとした本人だけがアクセスできるようにしてるんだよね。" userName="globie" createdAt="2025/05/31 16:58:51" color="">}}




{{<matomeQuote body="まあさ、それで、君の解決策はなんなの？" userName="hooverd" createdAt="2025/06/01 14:08:20" color="">}}




{{<matomeQuote body="うん、みんな adapting する代わりに自分の小さな walled gardens を作ってるだけだよ。" userName="HumanOstrich" createdAt="2025/05/31 17:47:32" color="">}}




{{<matomeQuote body="友よ、これこそが彼らの adapting だろ。" userName="itsafarqueue" createdAt="2025/05/31 19:20:14" color="">}}




{{<matomeQuote body="maladapting （不適応）って感じかな。" userName="HumanOstrich" createdAt="2025/05/31 20:14:16" color="">}}




{{<matomeQuote body="君が考える adapting ってのがどういうのか説明してくれる？記事に書いてあることは、俺の個人的な定義にはかなり当てはまるんだけどね。" userName="BLKNSLVR" createdAt="2025/06/01 00:16:14" color="">}}




{{<matomeQuote body="ここ10年間、みんなに Google はもう使うべきじゃないって教育してこなかったの？特にこんな事が起きてるのに？Google は俺みたいな独立した Web サイトを検閲するために AI を使ってるんだよ。https://news.ycombinator.com/item?id=44124820<br>間違いなく、Google はもう負債（liability）でしかないってとこまで来ちゃったみたいだね！" userName="BlueTemplar" createdAt="2025/05/31 17:49:53" color="#ff33a1">}}




{{<matomeQuote body="Google の scraper のふりをする bad actors もいるんだよね。昔々、Google は敬意を持って scraping するって評判だったけど、もし Googlebot がいなくても必要なトラフィックが得られるなら、記事の筆者が気にする必要ある？" userName="taormina" createdAt="2025/05/31 16:18:59" color="#ff33a1">}}




{{<matomeQuote body="どうせあいつら（Googleとか）は、馬鹿げたタグでずっと多くの情報を手に入れてたんだよ。time to first paint や interactive に何をしてたかは気にしないでいいけど。" userName="hinkley" createdAt="2025/06/01 18:48:45" color="">}}




{{<matomeQuote body="俺のサーバーのログを止めたのは、まさにこれらの bot のせいでログが急激に増えてたからだよ。奴らは本当に relentless （執拗）で、どんなフォームも埋めるし、本来サイトをクリックして回らないとアクセスできない API にさえアクセスしてくるんだ。Anthropic、openAI、Facebook は今日まで scraping を続けてるよ。" userName="vachina" createdAt="2025/05/31 13:07:53" color="#ff5c5c">}}




{{<matomeQuote body="サイトをクリックして回らないとアクセスできない API にさえアクセスしてくる<br>他にどうやってやるの？" userName="davidmurdoch" createdAt="2025/05/31 16:44:58" color="">}}




{{<matomeQuote body="ウェブサイト上でクリックするだけで使えるAPIにアクセスしてるクローラーについて教えてほしいな。これってUIの一部で人間しか押せないはずで、他にAPIにアクセスする方法はないの？今はAIエージェントがいるし、人間の行動を真似されたら本物のユーザーかボットか見分けるのはほぼ無理だよ。" userName="eGQjxkKF6fif" createdAt="2025/05/31 20:57:47" color="">}}




{{<matomeQuote body="ヤツらは登録とかログインフォーム、あと検索とかその検索結果のクリックを使ってるね。最初はアカウント列挙のためにAIスクレイパーを装った悪意のあるヤツかと思ったけど、動きはスクレイパーと一緒だったよ。" userName="vachina" createdAt="2025/06/01 16:27:35" color="">}}




{{<matomeQuote body="これ読んでみて：https://jan.wildeboer.net/2025/04/Web-is-Broken-Botnet-Part-...<br>基本的に今はみんな隠れボットネットの一員なんだ。僕らも同意しちゃった。スマホ、タブレット、WindowsのアプリストアとかがSDK入れて、ドローンみたいになってる。「Infatica」っていうのが有名で、デベロッパーは正規の’アプリ’にこれを入れるとお金もらえるんだよ。AI企業とか他にもいろんなのが、評判の良いIPを使ってサイトをガンガン叩いてて、もう悪意のあるみんなにとってやりたい放題って感じ。" userName="eGQjxkKF6fif" createdAt="2025/06/02 08:15:18" color="#785bff">}}




{{<matomeQuote body="AIクローラーボットがUser-Agentヘッダーを正直に書いてるなんて良いね、でもそれでそんなにトラフィックが多いのにはびっくり。ウェブサイトの99％はそこまで頻繁に変わらないのに、ましてや開発ブログにこんなにトラフィック来るなんてね。" userName="Proofread0592" createdAt="2025/05/31 11:54:51" color="">}}




{{<matomeQuote body="彼らはrobots.txtも守るんだ。ただ、なんかブロックされた後に、住宅IPからブラウザUser-Agentでクロールし始めるって報告も見たことあるよ。でも、最初からOpenAIとかAmazonとかFacebookとかを装って、robots.txtを無視してる他の誰かって可能性もあるかも。" userName="grishka" createdAt="2025/05/31 12:18:11" color="">}}




{{<matomeQuote body="＞ 「AIクローラーボットは嘘をつき、User-Agentを変え、住宅IPアドレスをプロキシとして使うなど、ブロックするのは無駄だ」 https://xeiaso.net/notes/2025/amazon-crawler/<br>もしそうじゃないなら、大手サイトが使ってるボット検出システムはかなりダメだろうね。だって僕はほとんどデスクトップで住宅ASNのIPアドレスからブラウジングしてるけど、しょっちゅうCAPTCHAに出くわすんだよ。例えば、Stack Exchangeの最初の訪問とか、Amazonでさえね。これが何を意味するかっていうと、これらのクローラーが住宅IP経由でトラフィックをマネーロンダリングしてるんじゃないの？" userName="cratermoon" createdAt="2025/05/31 15:06:56" color="#38d3d3">}}




{{<matomeQuote body="似たような情報がここにもあるよ。https://drewdevault.com/2025/03/17/2025-03-17-Stop-externali...<br>＞ これら［AI］クローラーがrobots.txtを尊重してると思うなら、君は現実からかなりかけ離れた性善説に基づいた仮定をしてるね。これらのボットは見つけられるものは何でもクロールする、robots.txtなんてお構いなしだ。git blameみたいな高負荷なエンドポイントも、すべてのgit logのすべてのページ、すべてのリポジトリのすべてのコミットも。そして、エンドユーザーと重なるランダムなUser-Agentを使って、何万ものIPアドレス——ほとんどが住宅用で、関連のないサブネットから——を使ってやるんだ。それぞれのIPは、僕らが測定しようとした時間帯でHTTPリクエストを1回しか送らない。積極的に悪意を持って適応し、エンドユーザーのトラフィックに紛れ込んで、その行動を特定したりトラフィックをブロックする試みを回避するんだ。<br>Sourcehut（記事で説明されてるサイト）は以前Anubisを使ってたけど、「go-awayに切り替えた。これはもっと設定できて、Anubisのユーザーへの影響を減らせる（例えば、JavaScriptを必要としないチャレンジを提供したり、テキストモードのブラウザをより良くサポートしたり）。」 https://sourcehut.org/blog/2025-05-29-whats-cooking-q2/" userName="eesmith" createdAt="2025/05/31 17:36:56" color="#785bff">}}




{{<matomeQuote body="＞ 「AIクローラーボットは嘘をつき、User-Agentを変え、住宅IPアドレスをプロキシとして使うなど、ブロックするのは無駄だ」 https://xeiaso.net/notes/2025/amazon-crawler/<br>もしそうじゃないなら、大手サイトが使ってるボット検出システムはかなりダメだろうね。だって僕はほとんどデスクトップで住宅ASNのIPアドレスからブラウジングしてるけど、しょっちゅうCAPTCHAに出くわすんだよ。例えば、Stack Exchangeの最初の訪問とか、Amazonでさえね。これが何を意味するかっていうと、これらのクローラーが住宅IP経由でトラフィックをマネーロンダリングしてるんじゃないの？" userName="mkfs" createdAt="2025/06/01 03:16:15" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="僕自身の経験から言うと、正直限られてるけど——FediverseサーバーにAIボットがクロールしに来た時、robots.txtに「Disallow: *」って追加したら、止まったよ。さっきも言ったけど、User-AgentをOpenAIとかAmazonとかMetaとかを使って、robots.txtを無視しつつ正体を隠してるのは、全く別の誰かって可能性もあるよね。それを止められるものはないし？結局みんなそういう会社を責めるだけだし。" userName="grishka" createdAt="2025/05/31 22:07:45" color="">}}




{{<matomeQuote body="記事みたいなルール作ったよ。最初はUAでやってたけど、他のとこからもスパイク来て、もっと広いルール使う羽目になったんだよね。トラフィックが移動してるのか分からないけど、ちゃんと名乗らない自動トラフィックはホント多いよ。自分のサイト全部で、過去のデータから＜hits per IP＞を＜time period＞で見たり、新しいデータと比べたりすると、本物のトラフィックと自動のがすぐ分かるはず。" userName="rovr138" createdAt="2025/05/31 12:31:32" color="#ff5733">}}




{{<matomeQuote body="tirreno [1] の開発者だよ。うちのプラットフォームは主にログインしてるライブユーザー向けだけど、ボット検出やブロックにも結構使えるんだ。IPアドレスの最後のオクテットを＊にして匿名化、同じサブネットを1つのアカウントにまとめてる。組み込みのルールエンジンで、500や404エラー多発、ブルートフォース、データセンターIPからのトラフィックとかで自動ブラックリスト生成できるよ。最後にtirreno blacklist APIをアプリ連携して、いらないトラフィックをエラーページにリダイレクトできる。おまけ：ダッシュボード [2] もあって、活動監視したり、正規ユーザーをブロックしないようにブラックリストを調整できるよ。<br>[1] https://github.com/tirrenotechnologies/tirreno<br>[2] https://play.tirreno.com/login (admin/tirreno)" userName="reconnecting" createdAt="2025/05/31 11:56:32" color="#ff33a1">}}




{{<matomeQuote body="＞ IPアドレスの最後のオクテットを＊にして匿名化、同じサブネットを1つのアカウントにまとめてる<br>ってことはさ、ユーザーとしては”データセンターIP”（つまり、情報漏洩しやすい末端回線から無邪気にブラウジングしてるサイバー田舎者じゃないほとんどのもの）に基づくブロックウォールで誤検知に悩まされるだけじゃない。たとえ事前にブロックされてないものを見つけるか（あるいは87個の信号機マスを何とかクリック通過するか）、それでも全く関係ないアドレスの近隣とまとめて扱われるってことだよね。それは、同意なく個人情報を処理してユーザー監視システム作ってるわけじゃない、っていう自分の良心をなだめるためなんでしょ。お願いだから、顧客が本当にお金を使う正規顧客を失ってるって分かるくらい、十分なフィードバックプロセスを確保してよ。" userName="mindslight" createdAt="2025/05/31 13:59:49" color="#ff5733">}}




{{<matomeQuote body="そう、TORとかDCみたいなIPレンジ全体をブロックするのは誤検知が多くて、プライバシーを気にするユーザーに迷惑かけるよね。だから、データセンターだからってだけでブロックする昔ながらの方法と違って、tirrenoは何十、何百ってルールを考慮したリスクベースのシステムを推奨してるんだ。例えば、IPがデータセンターからで404エラーが多い場合とか、手動レビューキューに送るか自動ブロック（これは推奨しない）にするんだよ。個人的には、ボットの活動でも手動レビューしたいし、tirrenoはボット管理向けに直接設計されてないけど、この点はすごく役立つよ。特に悪いボットが正規のボットUAの裏に隠れてる場合はね。" userName="reconnecting" createdAt="2025/05/31 14:14:48" color="#ff33a1">}}




{{<matomeQuote body="＞ だから、データセンターだからってだけでIPをブロックする昔ながらの方法と違って、tirrenoは何十、何百ってルールを考慮したリスクベースのシステムを推奨してるんだ。<br>でも、/24でバンするなら、結局前のやり方に戻ってる感じだよね、ただ余計な手間が増えただけで。" userName="yjftsjthsd-h" createdAt="2025/06/01 00:42:06" color="">}}




{{<matomeQuote body="最初からtirrenoはログインユーザー向けだってハッキリ言ったよ。でも、もし誰かがログインしてないユーザーに対してIPだけで対応したいなら、それはその人の勝手だよ。" userName="reconnecting" createdAt="2025/06/01 07:20:21" color="">}}




{{<matomeQuote body="あるヨーロッパのPaaSが、適切なオンライン不正対策をせずにセキュリティ懸念だけで全クライアントのWebリソース向けに全TOR出口ノードをブロックしたって聞いて、文字通りショックだったよ。" userName="reconnecting" createdAt="2025/05/31 18:55:24" color="">}}




{{<matomeQuote body="Pixel使ってるならGoogle VPN、AppleならiCloud Private Relayを通してトラフィックが増えてるよ。アドレス近隣問題は、こういう状況を特に捕まえちゃう可能性が高いと思ったんだけどどうかな？こういう単純すぎるソリューションは、確実に実際の顧客と収益を積極的に失わせることになるよ。" userName="nixgeek" createdAt="2025/05/31 18:20:36" color="#ff5733">}}




{{<matomeQuote body="tirrenoにはPrivate Relay/Starlink IPアドレス向けのルールがあるんだ。これは、特定のニーズに合わせてポジティブシグナルにもネガティブシグナルにも設定できるよ。ユーザーを自動的にブロックすることを選んだ場合にだけ追加コストがかかるんだ、どんなツールを使ってもね。" userName="reconnecting" createdAt="2025/05/31 18:49:27" color="">}}




{{<matomeQuote body="ISPがCGNATに移行して、1つのIPで何百人ものユーザーを識別する状況、どう対応してるの？" userName="dbetteridge" createdAt="2025/06/01 05:56:48" color="">}}




{{<matomeQuote body="＞うちのプラットフォームは主にログインユーザー向けだけど、ボット検出・ブロックにも使えるよ。<br>tirrenoはログインユーザーで動作するから、全てのアクションはIPアドレスじゃなくてユーザー名と紐づいてるんだ。<br>だから、IPアドレス情報だけで何かを判断したりアクションを取ったりするのは強く避けてるよ。<br>詳しくはこれ見てね：https://www.tirreno.com/bat/?post=2025-05-25" userName="reconnecting" createdAt="2025/06/01 06:55:41" color="">}}




{{<matomeQuote body="公開されてるIPレンジを使ってボットをブロックする機能も開発中だよ。<br>なんか良い提案あったらぜひ教えて！" userName="reconnecting" createdAt="2025/05/31 13:09:20" color="">}}




{{<matomeQuote body="俺のサイトは1日1万〜2万件くらいリクエストがあるんだけど、ほとんどAIスクレーパーだよ。<br>気づいたのは、多くが特定のPHPページを探してること。<br>PHP使ってないなら、PHPページをリクエストしてくるIPは自動でブロックできるかも。<br>PHP使ってても、持ってないページを要求してきたらブロックするとか。<br>AIに学習させるのは良いけど、負荷で困るって人もいるよね。<br>スクレープされたくない大きなコンテンツは特定のディレクトリに入れて、ボットを検出したらそこへのアクセスをブロックするとか。<br>あと、俺は大量のリクエストに対応するための基本的な戦略として、HTML／CSSだけのテキスト表示にして、他の要素は外部でホスト、それからBunnyCDN with Perma-Cache（月10ドル＋1GBあたり1セント）を使ってる。<br>BunnyCDNへのリクエストは月5ドルのDigital OceanのVMに行ってるよ。<br>AIスクレーパーが最初来ても気づかなかったくらいだ。<br>理由は（a）パフォーマンスに影響なかったし、（b）1ヶ月来ても利用料が30ドルから29.99ドルに変わっただけだから。<br>（DOとBunnyのチームメンバーへ：マジで素晴らしいサービス、ありがとう！）" userName="nickpsecurity" createdAt="2025/05/31 20:36:44" color="#ff5c5c">}}




{{<matomeQuote body="『ページノッキング』みたいなのないかなって思ってたんだ。<br>特定の順序で一連のページを開いたらアクセスできるとか。<br>例えば、特定の非公開URLから始めないと全部404になるとかさ。" userName="fluidcruft" createdAt="2025/05/31 23:52:05" color="">}}




{{<matomeQuote body="これと逆のパターンを見たことあるよ。<br>サイトのフッターに、ユーザーはまずクリックしないようなリンクを置いておいて、ロボットがそれをGETしたら、サイト全体を文法的には正しいけど意味不明な内容にしちゃうってやつ。" userName="gcr" createdAt="2025/06/02 19:42:39" color="">}}




{{<matomeQuote body="それだと許可されたユーザーはどうやってアクセスするの？<br>記事で話してるのは、検索結果から誰でも見つけて、アカウントとか認証なしでブラウズできる必要があるプロジェクトのことだよ。" userName="chongli" createdAt="2025/06/01 12:06:51" color="">}}




{{<matomeQuote body="『許可されたユーザー』って何を指すかによると思うよ。<br>誰でも許可って言うなら、公開スクレーパーには頼れないだろうね。<br>検索エンジンもボットだし。<br>俺が考えてるのは、メールとかQRコードとか、他のサイトからのリンクで来る人向けならボットを避けられるかもってこと。<br>ページのアクセス順序でアクセスを許可するってのもある。<br>人間とボットの行動は全然違うから、それをうまく利用してサイトが見れるようにするってアイデアだよ。<br>例えば、giteaにアクセスするには、まずドキュメントサイトにアクセスする必要があるって設定にするとかさ。" userName="fluidcruft" createdAt="2025/06/01 12:43:18" color="#45d325">}}




{{<matomeQuote body="ここで問題になってるのは、オープンソースプロジェクトの公開されてるgitリポジトリのことだよ。<br>Googleから来る匿名ユーザーも含めて、みんな『許可されてる』んだ。" userName="chongli" createdAt="2025/06/01 13:03:54" color="">}}




{{<matomeQuote body="Google経由でgitリポジトリ本体に直接アクセスする必要なんてないでしょ。<br>Googleで見つかればいいのはドキュメントとかランディングサイトだよ。<br>そこに着地したところで、『ノック』処理をして、git本体のあるドメインを開けばいいんだ。<br>Googleから来たユーザーは全然気づかないはずだよ。" userName="fluidcruft" createdAt="2025/06/01 17:24:46" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
