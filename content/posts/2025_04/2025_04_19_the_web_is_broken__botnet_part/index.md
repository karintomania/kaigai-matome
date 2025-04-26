+++
date = '2025-04-19T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ…Webが崩壊寸前!? ボットネット Part2の脅威'
tags = ["ボットネット", "Webセキュリティ", "DDoS攻撃", "トラフィック", "スクレイピング"]
featureimage = 'thumbnails/red3.jpg'
+++

> マジかよ…Webが崩壊寸前!? ボットネット Part2の脅威

引用元：[https://news.ycombinator.com/item?id=43738603](https://news.ycombinator.com/item?id=43738603)

{{<matomeQuote body="先週さー、うちのウェブサーバーが大規模なトラフィックに2回も見舞われたんだよねー。最初は数時間で30万IPからアクセスが来て、調べたら25万くらいがブラジルからだったんだよ。いつもはASNでブロックするんだけど、今回は6000以上もASNがあってさ！結局ブラジル全部ブロックしちゃった（ごめん）。数日後また同じサーバーが燃えてて、同じように調べたら今度はトルコ、ロシア、アルゼンチンとか色んな国からだったんだよね。マジで何なの？！で、古いChromeのUA使ってるのが怪しいって気づいたんだ。Chrome 40とか50とか60とか、5～15年前のやつだよ。ブロックしようとしたらトラフィック止まったけど。データセンターからのトラフィックは、前もってレート制限してたから少なかったよ。マジ勘弁。" userName="aorth" createdAt="2025-04-20T07:34:24" color="#ff5733">}}

{{<matomeQuote body="Anubis試してみてよ。→＜https://anubis.techaro.lol＞アクセスするのにPoCチャレンジを要求するリバースプロキシなんだ。サーバーリソースへのアクセスコストをクライアントに移せるから。上りが70KBのページを30万クライアントに送れるなら、大体の問題は解決すると思うよ。ピークQPSどれくらい？" userName="rollcat" createdAt="2025-04-20T08:47:01" color="">}}

{{<matomeQuote body="AnubisはIPとUAで正当なクローラーをホワイトリスト化するから良い選択肢だね。Cloudflareも同じだけど、MITMになっちゃうし。" userName="marginalia_nu" createdAt="2025-04-20T13:39:30" color="">}}

{{<matomeQuote body="そういえば、United NationsのUNESCOの検索ページにAnubisが入ってるってBrodie Robertsonの動画で見たよ。Anubisのブログが最初に投稿されたHNのスレを覚えてる。AWSのAIスクレイパーがルールを守らなくて、Gitサーバーにリクエスト送りまくってダウンさせたのがきっかけだった気がするけど、まさかUNで使われるとはね。" userName="Imustaskforhelp" createdAt="2025-04-20T17:23:45" color="">}}

{{<matomeQuote body="彼女のことだよ。AWSのAlexaチームが原因だったんだ。もしメールに返信してくれてたら、こんなことにはならなかったかもね。" userName="xena" createdAt="2025-04-20T17:33:19" color="#38d3d3">}}

{{<matomeQuote body="ごめん、性別を見間違えた。Anubis作った人からコメントが来るなんて思わなかったよ。このプロジェクトすごいけど、AnubisのPoWって無駄にならない？NanoみたいにトランザクションごとにPoWが必要な通貨があるけど、AnubisのPoWがNanoの基準を満たしてたら、何かに使えるんじゃないかな？" userName="Imustaskforhelp" createdAt="2025-04-21T06:52:47" color="">}}

{{<matomeQuote body="PoWを営利目的の仮想通貨に使うのは無理だと思う。Folding@homeみたいに、人類全体に役立つようなものならありえるかも。もし誰かが君の言う通りにして、それが流行ったら、夢に出て祟ってやるからな。変なこと考えないで。" userName="akaij" createdAt="2025-04-22T15:12:49" color="">}}

{{<matomeQuote body="これめっちゃクールだけど、スクレイパーがすぐにアップデートされて、簡単にチャレンジをクリアできるようになるんじゃない？" userName="martin82" createdAt="2025-04-21T02:55:50" color="">}}

{{<matomeQuote body="うちの会社もブラジルのIPに攻撃されてるよ。100行以下のテーブルに対して、フィルタの組み合わせを変えながら毎秒クエリを送ってくるんだ。" userName="nodogoto" createdAt="2025-04-20T23:32:58" color="">}}

{{<matomeQuote body="高トラフィックサイト（政府機関とか大手新聞とか）に悪意のあるコードを埋め込んで、ブラウザにimgとしてサイトをロードさせる攻撃を見たことがあるよ。画像とかCSSとかJSがロードされてた？画像だけならHTMLを解析しないから他のリソースはロードされないはず。Hostersは気にしないから、サイトオーナーが技術力がないと結構長く攻撃が続くんだよね。Referrer Policyを使ってれば、うまく隠蔽できるはず。" userName="luckylion" createdAt="2025-04-20T09:13:14" color="#45d325">}}

{{<matomeQuote body="中国が10年くらい前に、Great Firewallを通るすべてのウェブのリクエストにJavaScriptを注入してGitHubを攻撃してたのを思い出すなー。確か“Great Cannon”って呼ばれてて、中国のインターネットユーザー全員のブラウザを使ってDoS攻撃を仕掛けられるんだって。<br>参考: https://www。washingtonpost。com/news/the_switch/wp/2015/04/10…" userName="ninkendo" createdAt="2025-04-20T23:10:31" color="#ff5733">}}

{{<matomeQuote body="へー、全然知らなかった。教えてくれてありがとね！<br>確かに似てるかも。俺が見た攻撃は、リファラーが見えて、キャッシュを回避するために予測可能な「?_=...」みたいなクエリパラメータを使ってたから、対策は簡単だったけど、そうでなかったらかなり効果的だったと思う。<br>もし戦争になったら、“Great Cannon”みたいな攻撃を防ぐために、インターネットはすぐに遮断されるだろうね。" userName="luckylion" createdAt="2025-04-21T15:22:25" color="#785bff">}}

{{<matomeQuote body="AIクローラーが問題だってのはみんな同意してるけど、どうすればいいかって話はあんまり出てこないよね。スクレイピングはずっと昔からあるけど、基本的には問題なかったし。ブラウザの自動化とかデータ抽出には正当な理由もたくさんあるし（俺もその業界にいるし）。<br>どうすればいいんだろうね？CAPTCHAみたいな25年前の技術に頼ってる現状もどうかと思うし、あれって何百万時間も無駄にしてるし、インフラコストもバカにならないし。<br>[0] https://arxiv。org/abs/2311。10911<br>役に立つ自動化を可能にしつつ、悪質なAIクローラーから守るにはどうすればいいんだろう？" userName="hubraumhugo" createdAt="2025-04-20T05:13:24" color="#ff5733">}}

{{<matomeQuote body="大規模な自動化を防ぐには、Proof-of-workが有効だよ。<br>行儀の良いクローラーを入れる方法としては、クローラー版のDKIMみたいなのを考えてる。暗号技術を使って、クローラーに偽造できない永続的なIDを持たせるのは可能だと思う。<br>やり方は簡単で、まず今日の日付、クローラーのIP、ドメイン名を含む文字列を作って、その文字列の暗号署名を含むヘッダーを付ける。ドメインには、IDを検証するための公開鍵を持つTXTレコードを設定する。<br>サーバー側で文字列を1回検証するだけで済むから安いし、クローラーは1日に1回生成し直すだけで済む。<br>そうすれば、クローラーは自分の評判を賭けてクロールできるようになる。悪質なスクレイパーの最大の問題は、識別やブロックがほぼ不可能で、行儀良くするインセンティブがないこと。" userName="marginalia_nu" createdAt="2025-04-20T13:46:07" color="#45d325">}}

{{<matomeQuote body="個人的に嫌なのは、「AIクローラー」って言葉を使うことで、話がややこしくなること。反AIバイアスで情報を共有したくない人もいれば、帯域幅やサーバーの過負荷を心配してる人もいるし。<br>そもそも、それが本当にAI企業のものなのか、AI企業を装ったものなのかもわからないし。ユーザーエージェントはいくらでも設定できるからね。<br>「リクエストが速すぎる」とか「サーバーが過負荷になってる」みたいに、クローラーに関する具体的な問題を指摘する方が適切だと思う。そうすれば、「AI嫌い」って言うよりも解決策が見つけやすいはず。例えば、Anubisみたいなものが昔から存在してたって気づくと思うよ。DDoS防御、特にProof-of-workスキームを使ったやつ（例：https://github。com/RuiSiang/PoW-Shield）とかね。<br>こうすることで、スクレイピング全般に対する差別を助長するのではなく、サーバーの過負荷、つまりDDoSっていう問題に焦点を当てることができる。" userName="CaptainFever" createdAt="2025-04-20T07:43:22" color="#ff5733">}}

{{<matomeQuote body="「AI時代」になってから耐えられなくなった。だからAIのせいにするのは当然だと思う。特に、多くの防御策がLLMのトレーニングに基づいているからね。<br>DDoSがすべてハッカーやボットによるものじゃないのと同じだよ。サーバーが大規模サイトのトラフィックに耐えられない場合もある。でも、何かが調査されるまでは結果は同じ。" userName="johnnyanmac" createdAt="2025-04-20T18:56:12" color="">}}

{{<matomeQuote body="みんながこぞってLLMを作ろうとし始めるまで、これが大きな問題じゃなかったのは偶然じゃないよね。" userName="queenkjuul" createdAt="2025-04-20T20:57:49" color="">}}

{{<matomeQuote body="「AI」企業を責めるべきだね。Anubisの登場をきっかけに、スモールウェブがこれらのスクレイパーに強く反発してるのは嬉しい。" userName="udev4096" createdAt="2025-04-20T05:15:34" color="#ff5c5c">}}

{{<matomeQuote body="＞Blame the “AI” companies for that。 I am glad the small web is pushing hard towards these scrapers, with the rise of Anubis as a starting point<br>“against”ってこと？" userName="lelanthran" createdAt="2025-04-20T06:03:31" color="">}}

{{<matomeQuote body="修正しました。ありがとうございます。" userName="udev4096" createdAt="2025-04-20T06:39:42" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="一番いい解決策は、アクセスするやつ全員にProof of Workを課して、検索エンジンみたいな歓迎すべきスクレイパーをホワイトリストに入れることだと思うよ。ユーザーは毎週１秒くらいSHAハッシュ計算するくらいなら全然ありだけど、スクレイパーはしょっちゅう新しいセッション始めるから、無駄なJavaScript実行に時間取られてマジで遅くなるんだよね。Proof of Work計算の代わりにリモートアテステーションも良さげ。セキュアブート無効にしてLinux使ってる0.1%の人はCAPTCHA出ちゃうけど、ほとんどの人はCAPTCHAフリーでいける。この仕組みで、IPホワイトリストじゃなくて歓迎すべきスクレイパーを認証することもできるかも。" userName="jeroenhd" createdAt="2025-04-20T07:54:09" color="#38d3d3">}}

{{<matomeQuote body="Proof of personhoodの解決策について記事を書いたよ。<br><br>https://mjaseem.github.io/tech/2025/04/12/proof-of-humanity....<br>.<br>ゼロ知識証明と認証を使うってアイデア。公開鍵認証システムをひっくり返して、プライバシーをちょっと追加する感じ。実現するには、力のある人たちが動かないとね。" userName="mjaseem" createdAt="2025-04-20T10:54:18" color="">}}

{{<matomeQuote body="＞解決策ってどんなのがあるかな？<br><br>全部は解決しないけど、問題が特定できたなら、なんでみんなそんなことしてるのか考えないとね。答えはほぼ金だよ。だから、金の流れを追って、その行動の経済的インセンティブを見つけるんだ。そうすると、ほとんどの人が拒否する解決策にたどり着く→ウェブのenshittificationを煽ってる経済的インセンティブをなくす。つまり、広告経済を終わらせるってこと。<br><br>少なくとも、もっと規制して、データ漏洩とかに懲罰的な損害賠償を科して、みんながちゃんとセキュリティ対策するように仕向けるべき。広告経済にも良いところはあるし、それがなくなると困ることも出てくる(例えば、検索にお金払う人どれくらいいる？広告経済で潤ってるクリエイターはどうなる？)。<br><br>個人的には、そんなこと起こるわけないと思う。金持ち連中の反発はさておき、ほとんどの人はデータのプライバシーとか、自分のデータの所有権とか諦めてるんじゃないかな。だから、悪い行動のインセンティブをどうにかしようとしなければ、良い解決策はほとんど残ってないよ。<br><br>0:https://news.ycombinator.com/item?id=43716704(みんなのデータが漏洩/収集/追跡されてる方法についてのコメントを見てね)" userName="0manrho" createdAt="2025-04-20T09:19:47" color="">}}

{{<matomeQuote body="CAPTCHAももう役に立たなくなってきてるし、足りないよね。指紋認証みたいなアプローチが、猫とネズミのゲームの現実的な解決策になりそう。" userName="caelinsutch" createdAt="2025-04-20T21:54:02" color="#45d325">}}

{{<matomeQuote body="嫌だけど、ログイン必須の匿名化されたウェブ（ChromeとWEIで簡単に！）が未来だと思う。Firefoxユーザーは地獄に落ちればいい。" userName="CalRobert" createdAt="2025-04-20T07:17:49" color="">}}

{{<matomeQuote body="毎日いろんな人がいるんだなって驚かされるよ。今回もそのひとつ。自分の行動全部が単一の場所で識別されることを望む人がいるなんてクレイジーだね。" userName="spookie" createdAt="2025-04-21T01:16:46" color="">}}

{{<matomeQuote body="こんなの絶対嫌だ。僕が望むことの真逆だよ。" userName="CalRobert" createdAt="2025-04-23T05:05:44" color="">}}

{{<matomeQuote body="（誰かが見てたら）詳しく言うと、LinuxでFirefox使ってるんだ。こんな未来、全然好きじゃない！でも、ウェブはそっちに向かってると思うんだ。" userName="CalRobert" createdAt="2025-04-23T05:05:03" color="">}}

{{<matomeQuote body="みんなウェブサイトとやり取りしなくなって、AIとしてアクセスするようになってる。AIクローラーもリアルユーザーだよ。Google AnalyticsにAIクローラーもリアルなアクセスとしてカウントしてもらうように頼もう。誰が一番人気があるか見てみようぜ。" userName="eastbound" createdAt="2025-04-20T06:12:02" color="">}}

{{<matomeQuote body="もうウェブスクレイピングは全部ダメな行為だって思うべきだし、ウェブサーバーは全部ブロックすべきだね。自分のスクレイピングはOKって思ってるなら、怪しい会社とか”AI”ブームのせいで、悪い方に追いやられてるって自覚して。Youtubeとかも賛成してくれるんじゃないかな。AI全般に反対するってわけじゃないだろうけど。" userName="zahlman" createdAt="2025-04-19T19:46:28" color="">}}

{{<matomeQuote body="それができないのが問題なんだよね。robots.txtを守らないスクレイパーをブロックしたいサービス運営者は多いけど、人間のアクセスも一緒にブロックしちゃうから良い方法がないんだよね(Anubisとかはまあまあだけど、中途半端だし)。<br>あと、ウェブスクレイピングはネットにとってプラスだったと思うよ、2021年以前は特にね。検索エンジンとかInternet Archive、Invidiousとかyt-dlpとかNitterみたいな壁打ち破り、SpotubeとかIFTTTとかPlaidみたいなマッシュアップも、スクレイピングなしじゃ無理だっただろうし、COVID-19のデータ集めみたいなデータサイエンスのプロジェクトもそう。" userName="Centigonal" createdAt="2025-04-20T05:03:15" color="#38d3d3">}}

{{<matomeQuote body="Internet Archiveみたいな役立つスクレイパーのuser-agentを認証する方法があれば良いよね。user-agentの暗号署名みたいなのを作って、リバースプロキシで検証できるようにするとか、良いスタートになりそう。" userName="udev4096" createdAt="2025-04-20T05:18:46" color="">}}

{{<matomeQuote body="自己署名が良いよね。新しい検索エンジンを作れる人を決める中央機関が欲しいわけじゃないでしょ？" userName="nottorp" createdAt="2025-04-20T09:49:15" color="">}}

{{<matomeQuote body="DANEを使うのが一番良いと思うけど、まだ主流じゃないんだよね。" userName="udev4096" createdAt="2025-04-20T10:11:02" color="">}}

{{<matomeQuote body="＞ Plenty of service operators would like to block every scraper that doesn't obey their robots.txt, but there's no good way to do that without blocking human traffic too (Anubis et al are okay, but they are half-measures)<br>Anubisみたいな対策が中途半端なのはなんで？" userName="lelanthran" createdAt="2025-04-20T06:04:40" color="">}}

{{<matomeQuote body="Anubisとかgo-awayは良いツールだよ。Anubisはクエリごとにコストをかけるんだよね。ウェブサイト運営者は、スクレイパーへのレート制限効果を期待しつつ、ユーザー体験への影響を最小限に抑えたいわけ。まるで化学療法みたいに、全員を毒して、攻撃的なやつらがより深刻な影響を受けるように願うんだ。<br>＞Anubis readme calls it a nuclear option”<br>実際にはうまく機能してるみたいで、それは素晴らしいことだよね！<br>中途半端なのは、スクレイパーを遅くするだけで、ブロックはしないってこと。robots.txtに違反してコンテンツをスクレイピングし続けるよ。それに、IPプロキシよりも計算資源があるスクレイパーは、これでボトルネックにならない。AI企業がスクレイピングのインフラを強化して、より難しいPoWチャレンジが必要になるとか、軍拡競争になる可能性もある。その結果、人間を含む全員にとって、より不便で非効率なインターネットになるかも。Anubisは良いツールだけど、AIスクレイパーと人間のアクセスを区別できない問題の対策にすぎないんだよね。" userName="Centigonal" createdAt="2025-04-20T06:36:00" color="#785bff">}}

{{<matomeQuote body="これってInternet Archiveみたいなアーカイブ活動の終焉を意味するよね。" userName="BlueTemplar" createdAt="2025-04-19T20:31:23" color="">}}

{{<matomeQuote body="Internet ArchiveとかGoogleとかBingみたいな歓迎されるスクレイパーは、IPアドレスを公開してホワイトリストに登録してもらえば良いんだよ。Internet Archiveに載せられたくないウェブサイトは、除外を要求すれば良いし(遡ってでも)。CloudflareはInternet Archiveを207.241.224.0/20と208.70.24.0/21から運用してるってタグ付けしてるから、そこからの接続でbot対策を切れば十分。" userName="jeroenhd" createdAt="2025-04-19T22:09:26" color="#45d325">}}

{{<matomeQuote body="それって今のプレイヤーに有利なように市場を閉鎖するってことだよね。新しいプレイヤーにも参入する権利がある。" userName="realusername" createdAt="2025-04-20T02:22:27" color="">}}

{{<matomeQuote body="スクレイピングさせてくれって説得するのは彼らの自由じゃん？大体データ売買屋だけどね。最近はKagiくらいしかスクレイピングしてこないかな。KagiはIPアドレスからスクレイピングしてくれていいよ。ちゃんと動くbotもOK（Huaweiとか中国のbotはダメ。IPブロックした）。" userName="jeroenhd" createdAt="2025-04-20T08:10:14" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="いやいや、そんな権利ないって。Webクローラーだって名乗るやつを全員入れなきゃいけないルールなんてないし。" userName="0dayz" createdAt="2025-04-20T04:39:46" color="">}}

{{<matomeQuote body="じゃあ、誰がクローラーかどうか決めるんだよ？今はCloudflareっていう独占企業じゃん…。モバイル回線でそれを回避しようとしてる人たちには同情するよ。Cloudflareがやってることはクローラーより酷いし、独占企業がクローラーをブロックするのが合法かどうかも怪しい。" userName="realusername" createdAt="2025-04-20T07:54:43" color="#ff33a1">}}

{{<matomeQuote body="だから、クローラーだって主張するのをやめるでしょ。" userName="areyourllySorry" createdAt="2025-04-20T06:54:56" color="">}}

{{<matomeQuote body="競争がすべてを良くするんじゃないの？" userName="chii" createdAt="2025-04-20T07:27:24" color="">}}

{{<matomeQuote body="internet archiveのsnapshotの多くはarchiveteamからきてるんだよね。warriorたちが自分のIP持ち込んでクロールしてる（しかも礼儀正しく！）。save page nowも大事だけど、失って初めてありがたみがわかるんだよ。" userName="areyourllySorry" createdAt="2025-04-20T06:54:18" color="#38d3d3">}}

{{<matomeQuote body="それいいね。IPアドレスのホワイトリスト作って、それ以外は全部ブロック。" userName="trinsic2" createdAt="2025-04-20T01:22:39" color="">}}

{{<matomeQuote body="FWIW、Trend Microが2023年にこの分野についてまともな記事を書いてるよ。<br>状況を把握するのに良いかも。<br>https://www．trendmicro．com/vinfo/us/security/news/vulnerabil…" userName="Quarrel" createdAt="2025-04-20T02:57:58" color="">}}

{{<matomeQuote body="面白いけど、今のところ明確な証拠はないんだよね。みんな結論急ぎすぎじゃない？技術的には可能だけど、アプリが直接Webサイトに接続する必要があるから、比較的簡単に発見できるはず。例えば、電卓アプリがCNN．comに接続するとか…。iOSにはアプリのプライバシーレポートがあるし、Androidにはpcapdroidみたいなファイアウォールがある。Macならlittle snitch、Windowsならfort firewall。使ってない人もいるだろうけど、そういう人たちがゾンビネットワークを報告すると思う。断言はできないけど、証明されるまでは理論の域を出ないと思う。" userName="aucisson_masque" createdAt="2025-04-19T21:19:25" color="#785bff">}}

{{<matomeQuote body="＞iOSのアプリプライバシーレポートで接続を確認できるって言うけど、それは違うよ。＜br>プライバシーレポートには、アプリが収集すると主張する情報の幅広い分野が含まれているだけ。アプリが実際に何をするかと、申告された情報の間に繋がりはないんだ。安全性の低いHTTP接続のための古いドメイン宣言と混同してるのかも。" userName="jshier" createdAt="2025-04-20T00:53:46" color="#ff5733">}}

{{<matomeQuote body="この機能知らなかったわー。でも、ちゃんと情報入ってるみたい。有効にしたら、アプリがどこに繋がってるか見れるようになった。<br>https://support.apple.com/en-us/102188" userName="zargon" createdAt="2025-04-20T02:10:37" color="">}}

{{<matomeQuote body="マジでいいね。リンクありがとね。" userName="hoc" createdAt="2025-04-20T03:15:49" color="">}}

{{<matomeQuote body="証拠なんていくらでもあるよ。データ売ってる会社にセールスしてもらえば、全部説明してくれるって。Neudataみたいなデータ系のイベント行けばわかるよ。ユーザーの端末から集めたデータとか、リアルタイムの位置情報、クレジットカード情報、Google analyticsとか、何でも手に入るんだから。" userName="Galanwe" createdAt="2025-04-20T05:14:40" color="#ff33a1">}}

{{<matomeQuote body="ブラウザのプラグインですらよくあることだし、ファイアウォールをちゃんと見てる人なんてほとんどいないから、全然ありえると思うよ。多くのユーザーはマジで何も知らないし、アプリストアもマルウェアに全然対応しないしね。iOSストアの無料VPNとか最悪。" userName="throwaway519" createdAt="2025-04-20T00:15:03" color="#38d3d3">}}

{{<matomeQuote body="＞iOSにはアプリのプライバシーレポートがあって、アプリがどんな接続をしてるか、どのくらいの頻度でしてるか、最後にいつ接続したかとか確認できるんだよね。<br>普通の電卓アプリのユーザーが、そんなプライバシーレポート見てると思う？絶対見てないって！" userName="abaymado" createdAt="2025-04-19T22:58:05" color="">}}

{{<matomeQuote body="誰か一人が気づいて騒げばいいんだよ。一般ユーザーはopensslのソースコードなんて読まないけど、だからってオープンソースにする意味がないわけじゃないでしょ。" userName="gruez" createdAt="2025-04-20T00:38:58" color="">}}

{{<matomeQuote body="一般ユーザーは、そういう騒ぎにも気づかないんだよね。それに、あるアプリが悪評たったら、同じ日に名前を変えた別のアプリが出てくるだけだし。" userName="dewey" createdAt="2025-04-20T04:54:46" color="">}}

{{<matomeQuote body="ここ、技術系の掲示板じゃん。AndroidとかiPhoneのスパイウェアみたいなアプリの話、絶対見たことあるでしょ。ちょくちょくあるじゃん。2週間くらい前にも、Androidに入ってる他のアプリのリストを読み取れるアプリがいっぱいあって、Googleがそれを直すの拒否したって話があったよ。デバイスをボットネットの一部にするようなアプリが、ここに投稿されないわけないじゃん？" userName="aucisson_masque" createdAt="2025-04-20T05:44:15" color="#38d3d3">}}

{{<matomeQuote body="「ここは技術系の掲示板」っていうのがまさにポイントなんだよ。一般ユーザーは技術系の掲示板なんて見ないって。アプリストアで「電卓」って検索して、一番最初の無料のやつインストールするんだよ。" userName="dewey" createdAt="2025-04-20T06:02:49" color="#38d3d3">}}

{{<matomeQuote body="本当の解決策は、ネットワークアクセスの許可を追加して、デフォルトを拒否にすることだよ。" userName="nottorp" createdAt="2025-04-20T09:56:20" color="#ff33a1">}}

{{<matomeQuote body="Botnets as a Serviceはマジであるあるだけど、iOSとWindowsじゃ悪用の範囲が全然違うんだよね。" userName="CharlesW" createdAt="2025-04-19T21:34:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="マジ楽観的すぎｗ現実見えてないって感じ。どんだけ証拠が必要なの？TFAには作者のサーバーログのデータも含まれてるし、SDKとかビジネスがこの製品売ってるのも書いてあるじゃん。料金ページも見れるし、利用できるIPの数も書いてあるし。他に何が必要なの？<br>^ 編集: ごめん、サーバーログはTFAじゃなくて、TFAのトップにリンクされてる前のブログ記事のやつだったわ。<br>https://jan.wildeboer.net/2025/02/Blocking-Stealthy-Botnets/" userName="andelink" createdAt="2025-04-20T00:37:20" color="#ff5c5c">}}

{{<matomeQuote body="＞つまり、iOS、Android、MacOS、Windowsのアプリ開発者が、アプリにライブラリを組み込むことで、ユーザーのネットワーク帯域幅を売ってお金をもらう怪しい市場があるってことだよね。<br>つまり、CloudflareとかGoogleが毎日CAPCHAを入力させる理由ってこと？Play ProtectとかMS DefenderとかAppleのアンチウイルスが、こういうマルウェアを組み込んだアプリを検出しないのはありえない。検出が簡単なはずなのに。トロイの木馬のめっちゃ分かりやすい例じゃん。" userName="jeroenhd" createdAt="2025-04-19T22:11:41" color="#785bff">}}

{{<matomeQuote body="CloudflareとGoogleがCAPCHAを使ってウェブスクレイパーを売ってるってこと？意味分かんない。データはモデルの学習に使われてると思ってた。" userName="dx4100" createdAt="2025-04-20T05:01:32" color="">}}

{{<matomeQuote body="CAPCHAをいつも表示されるユーザーは、悪質なアプリを通してスクレイパーのプロキシになってるからってことじゃない？" userName="aloha2436" createdAt="2025-04-20T05:27:48" color="">}}

{{<matomeQuote body="もしくは、ネットワーク上の他の人とか、共有のパブリックIPの人がインストールしてるってことかも。" userName="pentae" createdAt="2025-04-20T05:47:35" color="">}}

{{<matomeQuote body="単にWindows/mac OSでchrome使ってないから怪しいと思われてるだけかもよ。Firefox on linuxだとCloudflareのCAPCHAめっちゃ出るし…（うちのネットワークにそんなアプリないはず！）" userName="evgpbfhnr" createdAt="2025-04-20T06:02:28" color="">}}

{{<matomeQuote body="ネットワーク上のデバイスがこういうのに感染すると、ネットワークがボットの出口になって、アンチボットネットワークが反応するんだよね。CloudflareとかAkamaiとかGoogleとかが、ランダムなサーバーにスクレイパーとかDDoS攻撃を仕掛けると、CAPCHAが表示されるようになる。CG-NATだとIPv6がないともっとヤバい。収集したデータは今は学習に使われてないと思う。CloudflareはAIで生成された画像を使ってるし、GoogleのCAPCHAは人間よりボットの方が簡単。" userName="jeroenhd" createdAt="2025-04-20T08:14:25" color="#45d325">}}

{{<matomeQuote body="スマホアプリのトロイの木馬のせいでIPの評判が落ちて、CAPCHAが頻繁に出るようになるんだよね。" userName="cuu508" createdAt="2025-04-20T05:27:11" color="#38d3d3">}}

{{<matomeQuote body="厳密にはマルウェアじゃないんだよね。利用規約に同意した時点で承諾してることになるから:^)" userName="areyourllySorry" createdAt="2025-04-20T06:55:59" color="">}}

{{<matomeQuote body="それってmalwareじゃん。なんか悪いことするんでしょ。" userName="L-four" createdAt="2025-04-20T07:27:44" color="">}}

{{<matomeQuote body="今の世の中のこと考えたらこの記事の内容に驚くべきかどうか分かんないなー。少なくとも今まで知らなかったけど、記事の結論には賛成。<br>個人的には、アプリにバンドルされてる「network sharing」ソフトってadwareとかspywareみたいな、潜在的に不要なアプリケーションのカテゴリーに入れるべきだと思うんだよね。ユーザーがインストールしたかったものに「くっついて」きて、こっそりユーザーのリソースを悪用するんだもん。こういうproxyは通信量制限とか低速回線だとマジ影響あるし。Wiresharkで怪しい動きがないか調べたくなってきたわ。怪しい動きをするアプリの公開リポジトリとかあったらいいのに。web scrapingでアーカイブとか自動化してたんだけど、AI botfarm対策で巻き添え食らうのは残念。" userName="Liftyee" createdAt="2025-04-19T19:25:59" color="#ff5733">}}

{{<matomeQuote body="そうだね、ユーザーへの被害は全体の一部でしかないと思う。多少のbandwidthを使われるくらいなら、便利で有料のbrowser extensionを無料で使えるなら気にしないって人も多いと思うけど、server運営者への被害は残るよね。" userName="akoboldfrying" createdAt="2025-04-20T05:10:00" color="#ff33a1">}}

{{<matomeQuote body="それspywareとかmalwareって呼ぶべきだよね。他にもそう呼ぶべきsoftwareいっぱいあるけど、netcatとかncatは多分malwareじゃないね。" userName="zzo38computer" createdAt="2025-04-20T00:45:14" color="">}}

{{<matomeQuote body="このlibrary使ってるsoftwareのリスト作った人いる？避けるべきアプリが分かると嬉しいんだけど。" userName="karmanGO" createdAt="2025-04-19T19:33:46" color="#ff5c5c">}}

{{<matomeQuote body="Androidの場合、εxodusにリストがあるよ[1]。TFAにリストされてるmalware libraryは見つけられなかったけど。FOSSのGoogle Play Store clientのAurora Store[2]にも組み込まれてる。<br>[1] <br>https://reports.exodus-privacy.eu.org/en/trackers/<br>[2] <br>https://f-droid.org/packages/com.aurora.store/" userName="mzajc" createdAt="2025-04-19T20:23:54" color="#785bff">}}

{{<matomeQuote body="それってadvertisingとかcrash reportingみたいなtrackingとかdata collection libraryを見てるみたいだけど。この記事にある「network sharing」libraryについては何も触れてないよね？見落としてるかな？" userName="takluyver" createdAt="2025-04-19T21:04:16" color="">}}

{{<matomeQuote body="いや、でもね。業界に長年いるから言えるんだけど、SDK使う時はTOSに記載する必要があるんだよ。appのTOSをcrawlerで抽出してparsingすれば分かるかも。でも、このtech community以外ではあんまり役に立たないかもね。" userName="arewethereyeta" createdAt="2025-04-19T19:45:50" color="#ff33a1">}}

{{<matomeQuote body="＞Has anyone tried to compile a list of software that uses these libraries? It would be great to know what apps to avoid<br>＞誰かこのlibraryを使ってるsoftwareのリストを作った人いる？避けるべきappを知りたい。<br>bot-blockingに関するSOTAの包括的なレポートを読みたいな。Anubisもあるけど（誰かが中途半端だって言ってたけど、理由を知りたい）、captchaとか、monopoly（Cloudflareとか）に頼るのも、結局自分たちもbot動かしたいってことなんでしょ？他に何かある？" userName="lelanthran" createdAt="2025-04-20T06:25:05" color="#ff5c5c">}}

{{<matomeQuote body="無料VPN appの多くはtraffic売ってるよ。AI bot explosionの前からそうだった。" userName="il-b" createdAt="2025-04-20T06:37:17" color="#45d325">}}

{{<matomeQuote body="これってマジでヤバいよね。誰かがこのB2Pの住宅プロキシを使って犯罪犯して、それが自分に辿り着いたらどうなるの？<br>こういうの全部マルウェアじゃん。" userName="api" createdAt="2025-04-19T19:17:20" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
