+++
date = '2025-09-26T00:00:00'
months = '2025/09'
draft = false
title = 'データはあなたのもの！Open Socialが変える分散型SNSの常識'
tags = ["分散型SNS", "データ所有権", "AT Protocol", "Web3", "プロトコル"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> データはあなたのもの！Open Socialが変える分散型SNSの常識

引用元：[https://news.ycombinator.com/item?id=45388021](https://news.ycombinator.com/item?id=45388021)




{{<matomeQuote body="記事がめっちゃわかりやすかったわ。ATプロトコルはActivityPubの企業版だと思ってたけど、自分のリポジトリにデータがあるってのが超いいね！読者側でフィルタリングする方が良さそう。コメントが自分のリポジトリに入るって図はちょっと気になるけど、全体的に分散型でクールだね。PDSを動かすにはSSLやHTTPS/WSSサーバーが必要で、URIの解決方法にもちょっと癖があるみたいだね。" userName="arjie" createdAt="2025/09/26 20:08:14" color="#45d325">}}




{{<matomeQuote body="矢印について補足するね。実線は所有権、破線はリンクだよ。コメントは、あなたのリポジトリに保存されて、元の投稿にリンクされるんだ。他人のリポジトリには絶対書き込めないのがATプロトコルの中心原則だよ。これならわかるかな。" userName="danabramov" createdAt="2025/09/26 22:40:32" color="#45d325">}}




{{<matomeQuote body="なるほどね。でもそれって、投稿のコメントを表示するのがすごく重い処理になるってこと？あと、リポジトリがどこにあるのかよくわかんないんだよね。Blueskyで自分のドメインのアカウントを持ってるけど、リポジトリをホストしてるわけじゃないから。Blueskyがホストしてて、後で自分でホストしたり、別の場所に移動したりできるって認識で合ってる？" userName="vermilingua" createdAt="2025/09/27 07:41:03" color="#ff5733">}}




{{<matomeQuote body="コメント表示が重くなるかって？自分でアグリゲーションしないとそうなるね。ATプロトコルアプリでは、関心のあるレコードをローカルDBに集約してアプリ専用のインデックスを構築するのがおすすめだよ。リポジトリの場所は、https://alice.comとat://alice.comは別のサーバーでOK。BlueskyユーザーならBlueskyがホストしてるけど、いつでも他の場所に移行できるよ。CLIツールはhttps://whtwnd.com/bnewbold.net/3l5ii332pf32u、もっと簡単にはhttps://pdsmoover.com/info.htmlを見てみて。" userName="danabramov" createdAt="2025/09/27 09:59:30" color="#785bff">}}




{{<matomeQuote body="コメント表示は全然安価だよ。AppViewがリレーからデータを受け取って、関係データベースに蓄積するからね。投稿が来たらPostテーブルに、コメントが来たらCommentテーブルに保存して、SQLで簡単にコメント一覧を取得できるんだ。リポジトリの質問については、その通り。使うハンドルとデータがどこでホストされるかは完全に別だよ。" userName="nasso_dev" createdAt="2025/09/27 08:53:20" color="#45d325">}}




{{<matomeQuote body="PDSのSSLはデフォルトで設定されるけど、必須じゃないんだ。at:// URIはat://DID/...って形をしていて、ハンドルはDNS TXTレコードでDIDに紐付けられるよ。DIDがサーバーの場所を教えてくれるから、HTTPS/WSSのルートは好きな場所に置けるんだ。あと、いいねとかリプライは、それを作った人のリポジトリに入るから、君の直感は合ってたね。" userName="whyrusleeping" createdAt="2025/09/26 20:17:54" color="#45d325">}}




{{<matomeQuote body="ドメインの`./well-known/`にあるファイルを使ってハンドルを認証することもできるよ。Blueskyがデフォルトのハンドルでそうしてるんだ。" userName="extraduder_ire" createdAt="2025/09/26 20:27:01" color="">}}




{{<matomeQuote body="自分のリポジトリに全部ぶち込んで、他の人が好きにフィルタリングできるって、これはすごい変化だね。" userName="KolibriFly" createdAt="2025/09/27 13:25:43" color="#ff33a1">}}




{{<matomeQuote body="うわー、ActivityPubの方が絶対良いと思ってたし、ATプロトコルは安物かと思ってたよ。でもこの記事を読んで、ATプロトコルの方が全然良いって分かったわ。特に、複数のプログラムが同じアイデンティティにアクセスできるのが最高だね！マジで目から鱗だった。" userName="ceayo" createdAt="2025/09/26 17:40:12" color="#38d3d3">}}




{{<matomeQuote body="AT vs APの問題は微妙なニュアンスがあるんだ。うちのコミュニティでも何度も議論してるよ。詳しくはこちら: https://github.com/bevyengine/bevy/discussions/18302" userName="_cart" createdAt="2025/09/26 20:10:12" color="">}}




{{<matomeQuote body="Bevy批判じゃないけど、Mr. Beastが「最高のYOUTUBE動画」を目指すって言ったPowerPoint知ってる？それと同じで、君がシェアしたBevyの議論リンクを見ると、『最高のGITHUB OPEN SOURCEゲームエンジン』を目指してるって感じるんだ。最高の性能とかグラフィックじゃなく、GitHub上で最高のオープンソースエンジンってね。" userName="doctorpangloss" createdAt="2025/09/26 21:49:56" color="#ff5c5c">}}




{{<matomeQuote body="ATProtoの解説はデータ所有権に集中しがちだけど、データ処理ではActivityPubに劣るよ。ATProtoはグローバルなAppServerに全部頼るから、信頼できる仲介者が必要なんだ。ActivityPubはRSSやメールみたいに自分のサーバーで管理するだけ。Blueskyが「プライベートないいね」を持てないのはATProtoのこのアーキテクチャのせいだよ。長期的に見たらAPの方が優位だと俺は思うな。" userName="nightpool" createdAt="2025/09/26 23:05:42" color="#38d3d3">}}




{{<matomeQuote body="それって、中央集権的なIDサービスがあるってこと？" userName="paulryanrogers" createdAt="2025/09/26 18:43:41" color="">}}




{{<matomeQuote body="もしバズることだけが目的で品質はどうでもいいなら、Mr. Beastの助言はアリかもね。でも、バズるかどうかわからなくても、本当に良いものを作りたいなら、彼の言うことはちょっと割り引いて聞いた方がいいんじゃないかな。" userName="saghm" createdAt="2025/09/27 00:26:24" color="#ff5c5c">}}




{{<matomeQuote body="IDサービスは`did:plc`と`did:web`の2種類から選べるよ。`did:plc`は中央集権的で、`did:web`はそうじゃない。理論的には他のdidも登場する可能性はあるけど、Blueskyが今サポートしてるのはこの2つだけだよ。" userName="steveklabnik" createdAt="2025/09/26 18:46:20" color="#ff5733">}}




{{<matomeQuote body="要するに、ソーシャルメディアの選択に長文を費やしてもゲームエンジン自体は良くならない。でも、もしその製品が単なるゲームエンジンじゃなく、『GitHubでホストされるオープンソースのゲームエンジン』なら、コミュニティや開発者にとってすごく重要なんだ。Mr. Beastが『最高の動画』じゃなく『最高のYOUTUBE動画』と言うように、彼は重要な点を強調してるってことさ。" userName="doctorpangloss" createdAt="2025/09/27 01:15:24" color="#ff5733">}}




{{<matomeQuote body="Blueskyが「プライベートないいね」を持てないって？そんな機能があるなんて知らなかったよ。もしATProtoに公開鍵暗号があれば、いいねしたユーザーの公開鍵で暗号化した記録を公開すれば、そのユーザーだけが内容を見れるはずだよね。でも、暗号化されたメッセージが存在し、クリアテキストの「@名前」があると、それが敵対者への情報になっちゃうから、完全に隠すには別の工夫が必要だろうね。" userName="frumiousirc" createdAt="2025/09/27 11:34:23" color="#ff5c5c">}}




{{<matomeQuote body="え、じゃあこれってウェブページ上のメールスレッドみたいなもので、送信者や受信者じゃなく購読でフィルタリングするってこと？賢いな。これ、どうやったら俺のウェブサイトに追加できるの？発見はどうやって促進するんだ？つまり、その人の/socialページを購読してなくても、誰かの返信を知りたい場合はどうなるの？" userName="all2" createdAt="2025/09/26 19:43:03" color="#ff33a1">}}




{{<matomeQuote body="そうそう。PLCは独立したエンティティとして分割されつつあるけど、それはまだ進行中だよ。詳しくはこちら: https://docs.bsky.app/blog/plc-directory-org<br>あと、PLCは各編集が再帰的に署名されてるから、データを偽造することはできないんだ。だから、更新のチェーンを検証できるってわけ。でも、PLCは理論上、サービスを拒否したり、更新を無視したりすることはできるんだよね。" userName="danabramov" createdAt="2025/09/26 18:52:52" color="#ff33a1">}}




{{<matomeQuote body="「自分のアイデンティティやオーディエンスを自分で管理できる、連合型プラットフォームを選ぶべきだ。ソーシャルメディアは特定のグループや個人に所有されるべきじゃない。これは人権やビジネスに直結するんだから、誰かのコントロール下にあるべきじゃない」って意見には同意するよ。でも、DiscordとGitHubっていう君が使ってる他の2つのコミュニケーションプラットフォームにも、同じロジックを適用しないのはなんで？" userName="xigoi" createdAt="2025/09/27 06:29:26" color="#ff33a1">}}




{{<matomeQuote body="わー、貴重な情報ありがとう！既存のユーザー名/パスワードアプリケーションにAPを追加したい人には、これをおすすめする？私たちは今、https://fedify.devをベースに何か開発してるんだけど、これがもっと完全なAP機能を提供できると思うかな？" userName="zenmac" createdAt="2025/09/27 00:40:27" color="#ff5733">}}




{{<matomeQuote body="君が言ってることはすごくよくわかるよ。でも、私は同意しないんだ。まず、人間は複雑で、一つの目標だけじゃなくて複数の目標を持つものだよね。オープンソースプロジェクトを作る効果は、そのプロジェクト自体の有用性だけとは限らないし、もし他の潜在的な効果が望まれるなら、最善の方法は一つじゃないはずさ。それに、たとえ他に特定の効果が望まれていなくても、特に望ましくないものがあって、それを避けることが重要かもしれない。Mr. Beastがいい例だね。彼は純粋に人気だけで「最高の」YouTubeコンテンツを作ることに集中した結果、誰かが避けたがるようなことを色々とやってきた。彼は混乱させるような人じゃないっていうのは同意するけど、それが彼に関する問題じゃないんだ。彼は、自分の行動が自分以外の誰かの役に立つかどうか（あるいは、自分の利益のために他の人を傷つけるかどうか）について、どれだけ関心がないかを非常に明確にしている。これは、個人的な時間と労力を費やして、実際にはほとんど個人的な利益が見込めないものに貢献しているほとんどのオープンソース開発者の考え方とはかなり違うと思うんだ。君が「集中力がない」と認識していることは、私には、物事を大局的に見て、文字通り他の全てを排除して一つの狭い目標だけを追求するだけでは長期的には改善されない大きな環境の中で、自分の行動を理解しようとする謙虚さと思慮深さに見えるよ。" userName="saghm" createdAt="2025/09/27 01:55:04" color="#785bff">}}




{{<matomeQuote body="今は全然そうじゃないよ、半数以上のopsが敵対的で、しかも受け入れられちゃってるんだ（ほとんどが無効な内容なのにね）。" userName="verdverm" createdAt="2025/09/26 19:06:22" color="">}}




{{<matomeQuote body="うん、ホスト名に特定の…物議を醸す大統領の名前が入ったPDSを参照するレコードが何万件もあるんだけど、実際には全然存在しないんだよね。あと、Nostrの誰かが、画像ファイルをアップロードして（分割して）PLCディレクトリレコードにエンコードできるツールを作ったらしいよ…。" userName="psionides" createdAt="2025/09/26 22:15:43" color="#ff5c5c">}}




{{<matomeQuote body="「DiscordとGitHubにも同じロジックを適用しないのはなぜ？」って意見には同意するけど、これには腹が立つね。「うちのオープンソースプロジェクト/ウェブサイトはこちら、Discordに参加してね！」って（Lemmyインスタンスでさえ）言うんだから、ため息が出ちゃうよ。" userName="styanax" createdAt="2025/09/27 10:38:53" color="">}}




{{<matomeQuote body="オーケー…UnityとUnrealはBevyより集中してないけど、ずっと良いゲームエンジンだよ。来年中にBevyが出るゲームより、SilksongとかIndiecuteとかCuddlygameみたいな、愛されて意味のある素晴らしいゲームを毎日たくさん出荷するだろうね。それに、大手の企業従業員の多くと同じで、そこで働く人はより良いゲームを作ったからといって直接的な利益を得るわけじゃないし、給料も同じだ。でも、私が知ってるUnityとEpicで働いてる人たちはみんなすごく誠実でゲームが好きなんだ。<br>もちろん、これらは違うものだってことはわかってるよ。BevyはUnityとは全く競合してない。なぜなら、Bevyは最高のGITHUBオープンソースゲームエンジンを目指しているからだ。私はちょっとふざけて言ってるだけなんだけど、オープンソースのソーシャルメディア連携プロトコルをどうするか心配してるコミュニティに対して3000語も書くのは、ちょっとおかしいように見えるよね。あの巨大なスレッドこそがプロダクトなんだ。Mr. Beastが最高のYOUTUBEビデオを作ったり、エジプト学の教授が最高のエジプト学の著作を書いたり、画家が最高の個人的に意味のあるファインアートを作ったりするのと同じように、Bevyが最高のオープンソースGITHUBゲームエンジンであろうとしている視点からは、完璧に理にかなってるんだ。Bevy好きだよ！" userName="doctorpangloss" createdAt="2025/09/27 04:16:25" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！理解してもらえて嬉しいよ。APとの比較は、スコープが似てないからいつもイライラするんだ。" userName="danabramov" createdAt="2025/09/26 18:11:26" color="">}}




{{<matomeQuote body="…Blueskyユーザーがプライベートキーを所有していればの話だけどね。" userName="binbasti" createdAt="2025/09/28 07:28:10" color="#45d325">}}




{{<matomeQuote body="BevyがGitHubのオープンソースゲームエンジンとして最高の座を目指す、なんて話はひどいね。彼らはGitHubで人気が出る指標ばかりを追いかけるべきじゃなく、最高のゲームエンジンを作ることに集中すべきだよ。ホスティング場所とか関係なく、純粋に最高のエンジンを作り続けてほしいね。" userName="CaptainOfCoit" createdAt="2025/09/27 00:12:47" color="#ff33a1">}}




{{<matomeQuote body="提案された分散型SNSの仕組み（フォロワーしか見れないなど）じゃ、まったく発見性がなくてSNSとして機能しないよ。それに、表示制限はクライアント側で設定できても、他の人があなたの投稿を見たり、それにエンゲージしたりするのを完全に防ぐことはできないんだ。" userName="dragonwriter" createdAt="2025/09/26 20:02:56" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ああ、Nostrもそうだけど、なんでこういうグループって、他の人が楽しんでることを台無しにしようとするんだろうね？" userName="verdverm" createdAt="2025/09/27 17:59:46" color="">}}




{{<matomeQuote body="Bevyの開発者たちは誤解してないよ。彼らはまだエンジンが未完成なのに、フェデレーテッドSNSの政治的な議論に時間を費やしてる。これは”GITHUB OPEN SOURCE”なゲームエンジンを作ることに焦点を当ててるからで、純粋なゲームエンジン開発とは違うんだよね。" userName="debugnik" createdAt="2025/09/27 08:16:52" color="#38d3d3">}}




{{<matomeQuote body="他の人の返信を見ないことの発見性について聞かれたけど、知らない人の話を見ない方がスパムやハラスメントを防げるから、それでいいんだよ。ウェブサイトへの追加はまだ思考実験だけど、小さなインフラで動く解決策を探してるんだ。" userName="analogpixel" createdAt="2025/09/26 20:19:26" color="">}}




{{<matomeQuote body="Blueskyでユーザーが秘密鍵を管理しないのは、Nostrみたいに複雑になるのを避けて、利便性を優先した結果だろうね。でも、自分でPDSを運用すれば、管理は可能かもしれないよ。" userName="goku12" createdAt="2025/09/28 08:25:26" color="#ff5733">}}




{{<matomeQuote body="現実的な代替案って、そんなに多くないよね。" userName="BrenBarn" createdAt="2025/09/27 22:41:30" color="">}}




{{<matomeQuote body="ActivityPubの方がATProtoより名前の響きがいいから、前者の方が優れてるって思われがちだけど、これってただのブランディングの問題じゃない？" userName="psnehanshu" createdAt="2025/09/26 20:43:44" color="">}}




{{<matomeQuote body="大規模なオープンソースプロジェクトって、いつもコミュニティのドラマが弱点だよね。特にマインドシェアが重要な製品の場合、コミュニティに集中することがめちゃくちゃ大事だよ。" userName="cropcirclbureau" createdAt="2025/09/26 23:17:34" color="">}}




{{<matomeQuote body="この文脈で言う「ユーザー名＼パスワード」のアプリケーションって、具体的に何のこと？" userName="bloody_bocker" createdAt="2025/09/29 16:13:29" color="">}}




{{<matomeQuote body="ATProtocolよりActivityPubの方が好きだよ。Blueskyが営利企業でATProtocolを牛耳ったり、rugpullしたり、アカウント移動を制限したりしないか心配だよ。ユーザーはプロトコルより勢いを気にするし、Piefed/Lemmy/MbinのようなActivityPub系のReddit代替も頑張ってるところ。アカウント移動は便利だけど、Mastodonでも設定はエクスポートできるし、大したことないかもね。参照: https://arewedecentralizedyet.online/<br>[1]: Lemmy.worldやProgramming.devみたいなFediverseのReddit代替。Piefedも今はもっと良いと思うよ https://piefed.social/" userName="popcar2" createdAt="2025/09/26 20:40:54" color="#38d3d3">}}




{{<matomeQuote body="「支配的なインスタンス」っていうのはMastodonとは違うんだ。Blueskyのインフラ内にも複数のPDSesがあるくらいだよ。<br>プロトコルを牛耳る懸念は確かにあるけど、彼らは良い管理者だって示してるし、エコシステムが成長すれば解決するはず。<br>rugpullやアカウント移動の制限はプロトコルに組み込まれてるよ！CAR fileをバックアップして、今のホストの承認なしに別のホストに移せるんだ。<br>Mastodonと違って、ATProtocolではアカウント移動が100%透明だよ。" userName="steveklabnik" createdAt="2025/09/26 21:01:43" color="#ff5c5c">}}




{{<matomeQuote body="アカウント移行ができてもrugpullの懸念は解決しないと思うんだ。BlueskyがATProtocolサポートをやめてTwitterみたいな中央集権型になったら、非技術系のBlueskyユーザーは気づかないし、移行した人は視聴者を失うだけだよ。これは技術的な問題じゃなくて社会的な問題だね。ほとんどのATProtocolユーザーは自分をBlueskyユーザーだと思ってるから、公式クライアントがATProtocolから離れたら、ユーザーも一緒に移動しちゃう。Mastodon/ActivityPubは、インスタンスが違うことをはっきりさせてるし、どのインスタンスもDefederateで失うものの方が大きいことを明確にしてるよ。" userName="rossy" createdAt="2025/09/27 07:45:59" color="#785bff">}}




{{<matomeQuote body="これはもっともな意見だね。でも promising なのは、もしそんなことが起こっても、誰かが簡単にBluesky2（もっと良い名前を見つけるかも）を始めて、悪者になったBlueskyがATProtocolを離れたのと同じ地点からスタートできることだよ。TwitterからMastodonやBlueskyへの大移動を思い出してみて。もしそうなるとしても、誰かが「ここに来て、すべてのプロファイル、投稿、フィード、いいね、全部あるよ。そして、僕たちが悪者になってもデータはあなたのものだって約束するよ」って言える状況を想像してみて。" userName="pmk1c" createdAt="2025/09/27 12:42:45" color="">}}




{{<matomeQuote body="社会的な側面と技術的な側面があるのは本当だね。使いたくないアプリを強制することはできないから、あなたが提起する社会的な問題に本当の解決策はないんだ。でも、これはMastodonでも同じだよ。もしあなたのインスタンスがフェデレートしないソフトウェアに切り替えたら、あなたは身動きが取れなくなるよ。" userName="steveklabnik" createdAt="2025/09/27 15:07:16" color="">}}




{{<matomeQuote body="もしPDSがCAR fileを提供してくれなかったら、何もできないんじゃないかな？" userName="xrisk" createdAt="2025/09/26 21:57:10" color="">}}




{{<matomeQuote body="定期的なバックアップが役立つよ。もし最近のバックアップとローテーションキーがあれば、すべてのデータを新しいホストに移せるんだ。まだ普通のユーザーには手軽じゃないけど、もっと簡単になるように開発してる人がいるよ。" userName="nulfrost" createdAt="2025/09/27 03:08:38" color="">}}




{{<matomeQuote body="うん、もしそれが本当に心配なら、定期的にバックアップするべきだね。" userName="steveklabnik" createdAt="2025/09/26 22:18:38" color="">}}




{{<matomeQuote body="あなたの返信を読んで、GPのシナリオは実際には起こりにくいか影響が少ないと解釈したよ。僕には、自分のデータのコピーを持つためには頻繁にバックアップする必要があるように見えるんだけど。一つのプロバイダーにデータへの独占的な権限を与えないために、自分の単一のIDで複数のPDSを運用できるの？" userName="linza" createdAt="2025/09/27 06:37:24" color="">}}




{{<matomeQuote body="理想的には、クライアントアプリが自動でバックアップしてくれるといいな。Bluesky公式クライアントも自動バックアップ（既存の手動エクスポートフローに加えて）を追加してくれることを願ってるよ。技術者ならGitHub actionとして設定するのは難しくないけど、非技術者にもアクセスしやすくすることが重要だと思うね。<br>自分の単一のIDで複数のPDSを運用することはできないよ。書き込みが行われる「真実の源」が必要だからね。複数のサーバー間で手動で変更を複製することはできるかもしれないけど、それでもアプリケーションが通信するべき一つのサーバーは必要になるし、それがどんな問題を解決するのか分からないな。これは「自分のサイトのデプロイを複数持てるか」っていうのと似てるよ。もちろん持てるけど、実際にそれにポイントするときに、他の場所にデプロイするのと変わらないんじゃないかな。" userName="danabramov" createdAt="2025/09/27 12:41:12" color="#785bff">}}




{{<matomeQuote body="Bluesky PBCがatproto以外のソフトに急に切り替える可能性は低いと思うよ。最近のモデレーションで、Bluesky PBCが運営するPDSからセルフホスティングに移行したユーザーもいるけど、事前バックアップは必要なかったんだ。バックアップが必要なのは、Bluesky PBCのサーバーが突然なくなったり、アカウントがBANされたりするときくらい。複数のPDSは動かせないだろうけど、正規版の移動は速いから、個人的にはそこまで大きなデメリットじゃないかな。メインがダメになったらサブに切り替えるみたいに、新しいPDS作って自分のIDをそこに設定すればいいしね。" userName="steveklabnik" createdAt="2025/09/27 15:11:11" color="#38d3d3">}}




{{<matomeQuote body="「彼らが良い管理者だ」って言うけど、どうやってそうなの？まだ人気が出たばかりで、ひどくなるような段階じゃないじゃん。PBCって言ってるけど、結局は彼らが全部コントロールしてるだけだろ。" userName="AuthAuth" createdAt="2025/09/28 23:34:11" color="">}}




{{<matomeQuote body="結局BlueskyもMastodonもアメリカの政治の話ばっかりで嫌になっちゃうな。毎週の政治ドラマなんて見たくないから、Tumblr、Pinterest、TikTokとかじゃなくて、なんでこれらを使う必要があるのか全然わかんないんだよね。" userName="AlienRobot" createdAt="2025/09/26 22:30:04" color="">}}




{{<matomeQuote body="それすごくわかるよ。マイクロブログって、自分の見たい投稿だけ探すのが無理だから全然使わないんだ。だから僕は主にLemmyやPiefedを使ってて、全部コミュニティにきれいにまとまってて購読できるからね。テックとゲームのコミュニティを主に見てるけど、フィードはすごく落ち着いてていい感じだよ。" userName="popcar2" createdAt="2025/09/26 22:57:50" color="#ff33a1">}}




{{<matomeQuote body="LemmyやPiefedの体験、僕もそうだったらよかったのにな。Lemmyだと、アメリカ政治にフォーカスしてないコミュニティや投稿でも、結局アメリカ政治の話になることが多いんだ。議論はすぐ過激で左翼的なアメリカ政治のレトリックにエスカレートしちゃう。Piefedがインスタンス全体をブロックできるのは知ってるから、諦める前にそれを試してみようかな。" userName="Gareth321" createdAt="2025/09/29 09:02:20" color="#ff5733">}}




{{<matomeQuote body="LemmyではLinux、猫、ゲームのトピックをフォローすれば最高のフィードになるよ。" userName="AuthAuth" createdAt="2025/09/28 23:35:24" color="">}}




{{<matomeQuote body="「Mastodonだとアメリカ政治ばっかり」って言うけど、それは誰をフォローするかによるんじゃないかな。僕が見る会話のほとんどは#uspolのタグが付いてるから、簡単にフィルターできるし、そもそもそれが一番の話題ってわけじゃないよ。" userName="viraptor" createdAt="2025/09/27 04:32:14" color="#38d3d3">}}




{{<matomeQuote body="僕の場合、フォローしてる人が出身国の政治の話をしてるから、その国の政治ネタが多い気がするんだ。あと、アメリカ政治について投稿する人のほとんどはUSPOLっていうスポイラーをつけてくれてるから、興味なければ飛ばせるし。たいてい「[国コード]POL」でスポイラーされてるよ。" userName="small_scombrus" createdAt="2025/09/27 07:59:30" color="#ff5733">}}




{{<matomeQuote body="じゃあ、デフォルトで政治ネタを非表示にするフィルターが必要ってこと？" userName="est" createdAt="2025/09/27 04:39:00" color="">}}




{{<matomeQuote body="MastodonとActivityPubが同じじゃないのはわかるけど、返信が消えちゃうのを許してるなら、真剣に考えるのは難しいよね。書いたものがしばらくすると消えちゃうんだ。時々だけど。消えない時もあるから、もしかしたら実装の問題なのかもしれないけど、これが僕がMastodonをやめた二つの理由の一つだったよ。" userName="self_awareness" createdAt="2025/09/26 20:51:53" color="">}}




{{<matomeQuote body="Mastodonの自動削除機能は、過去の投稿が政府などによって問題視され、職を失うような事態を防ぐためのものなんだ。でも、ここはインターネットだから、たとえあなたがインスタンスで投稿を削除しても、誰かがアーカイブしている可能性は常にある。だから、Mastodonに書いたことはどこかに残るって思っておいた方がいいよ…。" userName="yborg" createdAt="2025/09/27 03:42:48" color="#ff5c5c">}}




{{<matomeQuote body="投稿を永久に保存するかどうかは、結局インスタンス次第だと思うよ。ほとんどのインスタンスは残すだろうけど、一定期間後に削除するなら、ユーザーにそのことを“About”ページなどで伝えるべきだね。個人的には、Pleroma（Mastodonと同じActivityPubプロトコルを実装した別のプログラム）を主に使ってるから、この問題に遭遇したことはないかな。" userName="F3nd0" createdAt="2025/09/26 21:54:10" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="記事の筆者は、ドメインを所有することがデータ所有につながると言ってるけど、少なくとも米国ではドメイン名はプロバイダからレンタルするもので、所有権はないんだ。結局、私たちはどこかの企業にお金を払ってるってことだね。記事の前提は、ISPが安定していてネット中立だから、ドメインを失う心配がないってことだけど、ドメインの真の所有権を望むなら、ISPは国有化・民主化されたサービスであるべきだと思うよ。" userName="wsve" createdAt="2025/09/27 07:56:47" color="#ff5c5c">}}




{{<matomeQuote body="前の意見には賛成だけど、ISPとレジストラを混同していると思うな。昔より減ったけど、ISPが両方のサービスを提供することもあるけどね。‘.de’、‘.jp’、‘.cn’のような国別TLDは、政府との契約のもと非営利団体が管理してる場合が多いよ。これは検閲の観点からは問題になる可能性もあるね。ドメイン名の短いものが高価になる公平性の問題もあるし、Web of Trustみたいなドメイン名に代わるシステムを見てみたいな。" userName="gr__or" createdAt="2025/09/27 08:22:35" color="#38d3d3">}}




{{<matomeQuote body="（記事の筆者より）「ドメイン所有がデータ所有につながる」という点だけど、記事ではこの二つを分けようとしてたんだ。分かりにくかったかもしれないけどね。ドメイン所有は“ハンドル”の所有で、データ所有とは違うんだ。atprotoではドメインはただのハンドルで、リンクを壊さずに交換できるんだよ。（これは現在Blueskyから独立した、中央集権的で監査可能なリポジトリに依存してるけどね。）データ所有は、IDを別の物理サーバーに移行してもリンクが壊れないってこと。これでホスティング側に支配されず、真の所有権が実現できるんだ。記事では少し単純化するためにドメインと永続的IDを混同したけど、ドメインはIDのエイリアスだと思ってね。ドメインのコントロールを失っても、後で別のドメインを同じIDに紐付けられるし、これでレコードや機能のリンクが壊れることはないよ。" userName="danabramov" createdAt="2025/09/27 14:45:25" color="#38d3d3">}}




{{<matomeQuote body="DNSの代替として、GNS（GNU Name System）があるよ：https://www.gnunet.org/en/gns.html" userName="nairboon" createdAt="2025/09/27 09:03:09" color="#ff33a1">}}




{{<matomeQuote body=" unpopularな意見かもしれないけど、Ethereum Name Service (ENS) も代替案の一つじゃないかな？こういう目的にはENSがぴったりだと思うよ。" userName="idiotsecant" createdAt="2025/09/27 12:24:31" color="#ff5c5c">}}




{{<matomeQuote body="OpenNICもそうだね、独自のTLDもホストできるみたいだよ：https://opennic.org/<br>最近はWindowsでDNS設定を変えるのが難しくなってるし、systemdでもDNSエントリの更新が面倒になってきてるけどね。" userName="doublerabbit" createdAt="2025/09/27 10:36:45" color="#ff33a1">}}




{{<matomeQuote body="GNSの難しい点は、分散化を可能にする公開鍵の取得だよ。Key signing partyにも限界があるみたいだね。<br>他にも、階層構造は似てるけど、すごく面白い代替DNSルートがたくさんあるよ：https://en.wikipedia.org/wiki/Alternative_DNS_root#Implement..." userName="ryangibb" createdAt="2025/09/27 11:07:22" color="#785bff">}}




{{<matomeQuote body="一番安全なのは、黒いスプレーで隠した伝書鳩を使うことかな。冗談はさておき、何を信頼するか（しないか）について、自分で判断することが必要だよ。さもないと、「もっと法律が必要だ」って言ってぐるぐる回るばかりになってしまうからね。要するに、ドメイン名を“所有”して情報発信する方が、今のSilo型SNSよりずっと良いと思う。オープンウェブは30年以上前から機能してるんだから、活用すればいいじゃないか。" userName="rambambram" createdAt="2025/09/27 13:06:05" color="#ff5c5c">}}




{{<matomeQuote body="暗号技術を信じようぜ。秘密鍵で全部署名すれば変なこと全部なくなるけど、年齢認証とか匿名アカウント、スパムは簡単になっちゃう。トレードオフだね。Nostrみたいに嫌なものをフィルタリングできるリレーがあれば、4chanみたいなのもあれば、もっと管理されたサイトも持てるじゃん。" userName="nenenejej" createdAt="2025/09/27 13:26:54" color="#ff5733">}}




{{<matomeQuote body="この記事が言ってるのは、絶対的な主権じゃなくて、相対的なコントロールの話だと思うな。" userName="KolibriFly" createdAt="2025/09/27 13:26:55" color="">}}




{{<matomeQuote body="政府はドメインを検閲できるし、理論的に検閲されないシステムなんて無理だよ。Bluetoothやラジオでも妨害されるしね。データは技術的には“自分のもの”だし、公開鍵をプロフィールに置いて全投稿をアーカイブすれば他のSNSに移動できる。Open Socialでもこの問題は解決しないよ。<br>でも、Open Socialは改善だと思う。今のSNSは酷いからね。APIでデータが利用可能なら、自分でアルゴリズムやフロントエンドを作りやすいし、毒性をフィルターする良いアルゴリズムも生まれやすい。データアクセスとBANリストが別々なら、複数のBANリストを選べて、全部BANされる心配も減る。公開鍵とデータアーカイブがデフォルトなら、SNS間の移動ももっと簡単になるよ。BlueSkyが閉鎖されても、データがあればクライアントを更新するだけで済む。Redditが閉鎖されたら、全部やり直しで大変だよ。" userName="armchairhacker" createdAt="2025/09/27 13:52:37" color="#ff5c5c">}}




{{<matomeQuote body="フラットアーサーとか反ワクチン派、カルト、ハッカーグループ、機密文書リーカー、ナチスグループ、テロ組織のサイトだってClearnetにあるじゃん。言いたいこと言わせてくれるレジストラを見つけるのは、もう解決済みの問題だよ。" userName="infinitifall" createdAt="2025/09/27 08:21:18" color="">}}




{{<matomeQuote body="今はみんな大手プラットフォームで発信するから、政府や活動家、億万長者がそこに介入しようとするじゃん。でも、もし大手プラットフォームがなくなったら、今度はレジストラやホストが標的になるんじゃないかって心配だよ。残念ながら、完璧なシステムじゃないんだよね。" userName="a2128" createdAt="2025/09/27 11:44:02" color="#ff5733">}}




{{<matomeQuote body="さて、ちょっと議論を呼びそうな質問なんだけど…無料でトップレベルドメインって持てないのかな？ドメイン登録の実際のコストってどれくらい？Let’s EncryptがSSL証明書を無料で提供できるなら、他の非営利団体もドメインを無料で提供できないのかな？UUIDv7の組み合わせとかでもいいから、世界で唯一のドメインが無料で手に入ればいいじゃん。一度アクセスすればブラウザが覚えてくれるしね。これってすごく悪いアイデア™かな？" userName="mcny" createdAt="2025/09/26 17:16:42" color="#ff33a1">}}




{{<matomeQuote body="ドメインを運営するのにはお金がかかるんだよ。DNSクエリに応答するためにサーバーリソースが必要だし、それにはサーバーと電気代がかかる。だから、無料で提供するには誰かが補助しなきゃならない。Let’s Encryptは、大企業が広告をISPに傍受されずに届けたいから運営できてるんだ。無料でドメインを補助する動機って誰にあると思う？" userName="notatoad" createdAt="2025/09/26 17:27:09" color="#ff33a1">}}




{{<matomeQuote body="ブロックチェーン上のDNSってのはどう？" userName="deadbabe" createdAt="2025/09/26 17:34:40" color="">}}




{{<matomeQuote body="ドメインにはコストがかかるって言うけどさ、1KiB以下のDNSデータを年間1ペニー以下で保存して提供できるって保証するよ。無料じゃなくて、一律1ドル徴収して、それを5%の長期米国債とか2.5%のTIPSに投資すれば、ホスティング費用は永遠にカバーできるじゃん。元本には手をつける必要もないよ。" userName="koolba" createdAt="2025/09/26 17:48:12" color="#ff5733">}}




{{<matomeQuote body="無料のTLDは多分現実的じゃないね。TLDであることや公開サフィックスリストに載るのには、特別な要件があるんだよ。例えばこれ: https://github.com/publicsuffix/list<br>でも、TLDじゃなくてサブドメインなら、無料で配ることもできるよ。ただね、もしそんなことしたら、闇の世界にすぐに後悔させられるだろうね。大規模な詐欺メールとか、悪用されてDNSをホスティングすることになる。URLリダイレクターを作るのと同じで、オンラインで公開したらすぐに後悔することになるよ。残念なことだけど、あんまりやらない方がいい。" userName="jerf" createdAt="2025/09/26 17:56:51" color="#ff5733">}}




{{<matomeQuote body="え、じゃあなんでやらないの？ドメインを1ドルで提供できたら、既存のサービスをめちゃくちゃ安くできるじゃん。これってすごく大きなチャンスじゃない？" userName="notatoad" createdAt="2025/09/26 17:48:56" color="#ff5c5c">}}




{{<matomeQuote body=".onionドメインみたいにキーペアにできないの？DNSってシビル攻撃対策にはならないでしょ。" userName="fruitworks" createdAt="2025/09/26 19:05:23" color="#ff5c5c">}}




{{<matomeQuote body="アイデアを完全に理解してるか怪しいけど、Let’s Encrypt証明書はその場で作れるのが違う点だよね。ドメインはブランディングだし、今どき5文字ドメインなんて絶対無理。結局、コストは他の人も欲しがるドメインを借りることになるんだよ。誰もLE certなんて欲しくないって。" userName="ramon156" createdAt="2025/09/26 17:26:24" color="#ff5733">}}




{{<matomeQuote body="見た目はどうでもいい。UUID v7を重ねたものでもいいから、グローバルにユニークで無料で使えるべきだよね。これは基本的にatprotoのdid:plcと同じ考え方だよ。https://web.plc.directory/で無料のIDが手に入るし、俺のはこれ→https://plc.directory/did:plc:3danwc67lo7obz2fmdg6jxcr。自分のドメインはtxt recordを使ってそのdid:plcと紐づけるんだ。" userName="steveklabnik" createdAt="2025/09/26 17:38:43" color="#ff5733">}}




{{<matomeQuote body="要するに、passphraseをなくしたりphishされたりしたら、そのドメインの管理を永久に失っちゃうDNSってことね。" userName="simonw" createdAt="2025/09/26 20:34:20" color="">}}




{{<matomeQuote body="DNS全体をサポートすることはできるはずだよ。https://docs.ens.domains/learn/protocol/を見てみて。でも、他のdecentralized services、つまりcomputeやstorageをどう組織化するかが一番難しいんだ。" userName="meowkit" createdAt="2025/09/26 17:58:23" color="#38d3d3">}}




{{<matomeQuote body=".tkは昔タダで、登録ドメイン数で世界一のccTLDだったんだよ。何に使われてたか、だいたい想像つくでしょ？Facebookがphishingを助長したってFreenomを訴えて、今はもうそんなことできないけどね。" userName="input_sh" createdAt="2025/09/26 18:02:04" color="#ff5c5c">}}




{{<matomeQuote body="ICANNに銭を払わないといけないだろうね。" userName="fruitworks" createdAt="2025/09/26 19:07:55" color="">}}




{{<matomeQuote body=".tkは、人気が出たドメインを勝手に取り上げてad spamにするって有名だったじゃん。そうやって無料でドメインを”あげて”金稼ぎしてたんだよ。要はlead generationだね。" userName="bityard" createdAt="2025/09/26 18:55:00" color="#45d325">}}




{{<matomeQuote body="それ、Braveではもう動いてるし、他のbrowsersでもwebextentionを入れれば使えるよ。" userName="charcircuit" createdAt="2025/09/26 19:24:40" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
