+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'Valkeyが誕生から1年 Redisのコミュニティフォークはどうなった？'
tags = ["Valkey", "Redis", "Open Source", "Community fork", "Database"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> Valkeyが誕生から1年 Redisのコミュニティフォークはどうなった？

引用元：[https://news.ycombinator.com/item?id=44140379](https://news.ycombinator.com/item?id=44140379)




{{<matomeQuote body="ValKeyがI/Oスレッド分野で素晴らしい仕事をしたこと、そして最近その最も興味深い変更を組み込み始めたことに満足してるよ。ValKeyの貢献者の皆さん、素晴らしい仕事ありがとう。ただ、この記事は少し誤解を招くね。<br>”Antirez’s emphasis on a shared nothing architecture has been foundational for Redis. Nevertheless, as early as 2020, Redis added support for I/O threads. Unfortunately, they did not offer drastic improvement until recently. If you have previously tried and discarded I/O threads, it is time to evaluate again!”<br>これはまさに2020年にI/Oスレッドを実装した僕（Antirez）なんだけど、それは僕が”shared nothing”を信じる理由に反してないからなんだ。<br><br>”technical background”<br>I/Oスレッドがやることは、イベントループから戻った時に、write(2) や read(2) システムコールがすごく遅いのを認識して、その瞬間は全く競合がないから、じゃあそのI/OだけをN個のスレッドで並列化して、すぐまたシングルスレッドに戻ろう、ってことなんだ。だから僕はこのシステムを実装したんだ。そしてValKeyの人たちがそれをさらに良くしてくれたんだ（改めてありがとう）。<br>でも、記事のグラフを見ても分かるように、当時はシステムが全然動かなかったわけじゃないよ。今より改善されたとしてもね…こういう投稿は誰かに金払われてるんじゃないかって思うね。Redis側にも同じような馬鹿げた投稿があって、同じように最悪だよ。訳の分からないことを喋ってる。一体どうなってんだ…こういうジャーナリズムは本当に役に立たないね。<br>とにかく、こういうものが面白いのは主にRedis The Company自身、Amazon、Googleみたいなところで、普通のRedisユーザーにはあまり関係ないんだ。だからこの機能はそんなに使われてないんだよ。同じマシンにたくさんのユーザーがいなかったり、特定の状況で極めて高い負荷がかからないなら、大体は有効にする必要がないんだ。大きなユーザー（すごく人気のソーシャルネットワークの数字を覚えてるけど）でも、RedisのCPU使用率は十分に低い場合が多いから、気にする必要がないんだ。<br>そうそう、スレッドに関しては、単純に適してる時があるんだ。僕のRedisでの最新の仕事、新しいベクトルセットのデータ型を見てくれると分かるけど、クエリはデフォルトでスレッド化されてるんだ。VADD（ベクトルセットへの書き込み）でさえスレッドで使えるんだよ。なぜ僕の考えが変わったかって？HNSWは、Redisにはこれまでなかったような巨大な定数時間を持つ最初のデータ構造だからなんだ。これがデザインの考え方を変える価値があったんだ。だから2020年には既にスレッドに肯定的だったし、以前にもモジュール操作のスレッドサポートを実装したこともあったんだ。そして今、ベクトルセットもスレッド化されてる。賛成とか反対じゃなくて、状況によるんだよ。" userName="antirez" createdAt="2025/05/31 08:41:31" color="#785bff">}}




{{<matomeQuote body="ありがとう、antirez。ニュアンスはクリック数に繋がらないからね。" userName="christophilus" createdAt="2025/05/31 10:07:44" color="">}}




{{<matomeQuote body="”Nuance”って、Async IOをやったのは「ValKey貢献者の適当な集まり」じゃなくてAWSだよ。AWSはRedisがFOSSから離れたクラウドプロバイダーの一つだね。1年後、Valkeyは生き残っただけでなく、繁栄してる！AWSからのAsync I/O Threadingモデルへの貢献は、Redis内部でI/Oスレッドが機能する方法を根本的に変えることで、スループットを3倍以上向上させたんだ。<br><br>Bryan Cantrillはこれについてこう言ってるよ：<br>”... those open source companies that still harbor magical beliefs ... cloud services providers are emphatically not going to license your proprietary software. I mean, you knew that, right?”<br>（訳：魔法のような信念をまだ抱いてるあのオープンソース企業たち…クラウドサービスプロバイダーが君たちの独自ソフトウェアをライセンスするなんて絶対にないよ。だって、知ってたんでしょ？）<br>”... The cloud services providers are currently re-proprietarizing all of computing – they are making their own CPUs for crying out loud! – reimplementing the bits of your software that they need in the name of the service that their customers want (and will pay for!) won’t even move the needle in terms of their effort.”<br>（訳：…クラウドサービスプロバイダーは今、コンピューティング全体を再び独自仕様にしてるんだ—彼らは自分のCPUまで作ってるんだよ！—顧客が求めて（そして金を払う）サービスの名の下に、君たちのソフトウェアで必要な部分を再実装することなんて、彼らの労力からしたら大したことないんだ。）<br><br>https://bcantrill.dtrace.org/2018/12/14/open-source-confront..." userName="ignoramous" createdAt="2025/05/31 11:09:44" color="">}}




{{<matomeQuote body="Cantrillはちょっと間違ってるよ：<br>https://www.theregister.com/2025/05/01/redis_returns_to_open...<br>”Trollope later justified the shift by saying the SSPL license only really ”applies to Amazon and Google” – fellow cloud provider Microsoft has agreed commercial terms with Redis.”（Trollopeは後にSSPLライセンスは「本当にAmazonとGoogleにだけ適用される」と言って変更を正当化した—仲間のクラウドプロバイダーであるMicrosoftはRedisと商用契約を結んだ）<br>最新のAGPLへの変更は素晴らしいし、オープンソースなら2010年からこうあるべきだったね。" userName="bgwalter" createdAt="2025/05/31 12:39:51" color="">}}




{{<matomeQuote body="こういう投稿がHacker Newsのフロントページに出るのって、毎月ある気がするな。普段は君を応援するコメントを書こうと思うんだけど、投稿しないんだ。<br>技術的なポイントは同意だけど、この絶え間ない批判は具体的なことより、圧倒的に成功してる人たちを攻撃する傾向、あるいは典型的な”tall poppy syndrome”[0]に根ざしてるんじゃないかな。<br>他人の反応はコントロールできないけど、こういう投稿を君の仕事の重要さへの間接的な承認と捉え直すのが、より健全なアプローチかもしれないね。<br>追伸 LinkedInでの繋がり、感謝してるよ。[0] https://en.wikipedia.org/wiki/Tall_poppy_syndrome" userName="Attummm" createdAt="2025/05/31 12:04:33" color="">}}




{{<matomeQuote body="antirezがRedisを（本当の）オープンソースに戻すって発表したっけ？<br>https://antirez.com/news/151<br>もしそうなら、もう遅すぎたのかな？Node.jsが短いIo.jsフォーク時代を経て、コミュニティが修復されたのを覚えてるけど。<br>Redisでも同じことが可能なのかな？前はすごく使ってたけど、ここ数年は使ってないから、この2つのプロジェクトを取り巻くコミュニティについて同じ視点を持てないんだ。" userName="geerlingguy" createdAt="2025/05/31 05:42:42" color="">}}




{{<matomeQuote body="あと、RedisはAGPL経由でオープンソース化されてるけど、ValkeyはBSDライセンスなんだ（昔のRedisみたいにね）。どちらも公式なオープンソースライセンスだけど、BSDの方がずっとずっと寛容だよ。" userName="williamstein" createdAt="2025/05/31 05:49:29" color="">}}




{{<matomeQuote body="Redis Inc.があの特定のライセンスを選んだことによる非常に現実的な結果は、Google、Microsoft、AmazonみたいなValKeyユーザーには全く受け入れられないってことだよ。それはRedis Inc.の意図かもしれないね。でもそれは同時に、Valkeyが存在し続ける理由でもあるんだ。だってユーザーは、クラウドベースの製品を動かすためにもっと寛容なライセンスが必要なんだから。<br>開発者コミュニティがどこへ行くか興味深いけど、こういうフォークは定着しがちだよ。ValKeyのGitHubを見ると、たくさんの活動が見られる。たくさんの貢献者がたくさんの変更を貢献してる。これは健全なオープンソースコミュニティの良い兆候だね。そして記事が示すように、コードベースにはいくらか非自明な変更が加えられていて、少なくとも一時的にはパフォーマンス面で少しリードしてるんだ。これは、メンテしてる人たちが何をしてるか分かってる momentum があるってことだね。<br>Redis Inc.がこれに追いついて回復できるか興味深いよ。僕の印象では、彼らがクローズドソースにした時、周りのコミュニティは基本的にRedis Inc.の従業員中心になって、他のコミュニティはみんなValKeyに乗り換えたんだ。AGPLになったから、何人かは戻るかもしれない。でも、ValKeyにはクラウド系のお金と活動がある場所だと思う。そしてもちろん、ここには少しばかりの壊れた信頼があるよね。AGPLはオープンソースだけど、Redis Inc.に貢献したものを再ライセンスする許可を与える契約にサインするのは、本気でオープンソースに貢献する人なら考えないことだと思うよ。" userName="jillesvangurp" createdAt="2025/05/31 07:53:03" color="#ff5733">}}




{{<matomeQuote body="なんであの兆ドル企業たちが、AGPL以外のライセンスでRedisにお金を払うのが「完全に受け入れられない」ことなの？" userName="regularjack" createdAt="2025/05/31 09:42:31" color="">}}




{{<matomeQuote body="またダメになっても、またフォークすればいいだけだからリスクなしってこと？" userName="y2244" createdAt="2025/05/31 06:39:28" color="">}}




{{<matomeQuote body="＞手遅れかな？そうだね、Redisの裏切りでRedisは完全に選択肢から消えた。<br>今後はValkeyがデフォルトだよ。<br>一度騙されたら、騙した方が悪いんだ。" userName="motorest" createdAt="2025/05/31 05:44:57" color="">}}




{{<matomeQuote body="正直、ほとんどの人は気にしないと思う。<br>HNみたいな一部の界隈は気にするし、会社の選択に影響するかもだけど。<br>多くの人は、ドラマなんて知らずにデフォルトでRedisを選ぶでしょ。" userName="matsemann" createdAt="2025/05/31 08:01:15" color="">}}




{{<matomeQuote body="短期的にはValkeyにずっと有利になるだろうね。<br>でも長期的には絶対にAGPLのものになるよ。<br>シンプルに言って、金をもらわずにビジネスをサポートするのはマジで嫌。<br>商用利用を排除するプロジェクトなら、俺の注目度は100倍増し。" userName="MangoToupe" createdAt="2025/05/31 05:53:39" color="#38d3d3">}}




{{<matomeQuote body="ぶっちゃけ、ユーザーの99％は無料のKV storeにデータを突っ込めれば、誰がプロジェクト持ってるかなんて気にしないと思う。<br>ビジネス的に見ると、Redisは50個くらい機能あるけど、多くの人が使うのは5％くらいだし、SentinelやStreamsみたいな凝った機能は使いたがらないニッチな位置にいるんだ。<br>さらに悪いことに、ソフトウェアが有料化しようとすると、ユーザーの選択肢は「Redisやめる」「金払う」だけじゃないんだ。<br>「競合に乗り換える」、「必要な機能だけ自分で書き直す」、「最後のOSS版をフォークして自分で保守する」って選択肢もある。<br>Redisはフォークか自作の方が多くのビジネスユーザーにとって得策な、すごく居心地の悪い場所にいるみたいだ。<br>例えばPostgreSQLよりずっとね。だってRedisの安くて簡単なバージョンって、「ただの」ネットワークインターフェース付きハッシュマップなんだから。" userName="WJW" createdAt="2025/05/31 08:41:11" color="#ff5c5c">}}




{{<matomeQuote body="Linuxディストリビューションが勝者を決める手助けになるかも。<br>Valkeyがapt install valkeyで簡単に入るのに、Redisはコンパイルや追加リポジトリが必要なら、みんなValkey選ぶでしょ。<br>MariaDBもそうだったし。" userName="Kwpolska" createdAt="2025/05/31 10:31:35" color="#ff5c5c">}}




{{<matomeQuote body="モメンタム（勢い）ってすごく怖いね。<br>redis-serverの代わりにvalkey-serverをインストールするのに、また慣れ直すのは嫌だな（逆もしかり）。" userName="Aeolun" createdAt="2025/05/31 07:08:29" color="">}}




{{<matomeQuote body="フォークして、機能追加して、保守するのが得策なユーザーって誰だろう？<br>それって、そのビジネスにとっておそらく非コアなことに対して、すごい労力が必要に聞こえるんだけど。<br>（つまり、その会社はインフラ／プラットフォーム会社じゃないってこと）。<br>金を払う方が、保守の時間や気を取られることよりずっと価値がある場合が多い。<br>AWSと似てるね。多くの会社はラックを借りたり、LinodeやEC2インスタンスを借りて、その上で動かすことができるけど、ECSやRDSみたいな上に構築されたサービスは管理がずっと簡単。<br>その時間、金、集中力は別の所、つまりユーザーのために構築することに向かうんだ。" userName="tyre" createdAt="2025/05/31 17:05:34" color="#ff5733">}}




{{<matomeQuote body="そうじゃないよ。<br>なぜ完全にオープンソース（Valkey）で協力することを選ぶのがそんなに受け入れられないの？" userName="LeFantome" createdAt="2025/06/01 03:19:31" color="">}}




{{<matomeQuote body="それが本当かどうかを見るのに役立つ指標ってある？<br>ディストリビューションのパッケージマネージャーを使うと、新しいバージョンを入れるのにパッケージ提供者に依存するんだ。<br>Dockerは同じくらい簡単だし、その問題がない。<br>ソースからビルドすれば完全にコントロールできるし。<br>テストサービスを使うときでも、Dockerが一番うまくいくよ。だってDevチーム全員が同じバージョンになるから。Debian、fedora、brewでバージョンが分かれるよりね。" userName="fnord123" createdAt="2025/05/31 13:27:44" color="#ff5733">}}




{{<matomeQuote body="AGPLは支払い不要で、遵守も難しくないんだ。ハイパースケーラーたちはもうValkeyのコードを公開してるから、Redisでも同じこと簡単にできるはずだよ。" userName="pabs3" createdAt="2025/06/04 08:41:32" color="#785bff">}}




{{<matomeQuote body="＞ビジネスを無償で支援するのはシンプルに最悪だね。商用利用を除外するプロジェクトにはめちゃくちゃ注目するよ。これって心理学の実験みたいで面白いな。もし選べるとしたら、次のうちどれがいい？<br>1. 非商用ユーザーが3倍、企業が10倍得する<br>2. 非商用ユーザーも企業も2倍得する<br>3. 非商用ユーザーが1.1倍、企業は何も得しない<br>4. 非商用ユーザーも企業も何も得しない<br>5. 非商用ユーザーが3倍損して、企業は10倍損する" userName="networked" createdAt="2025/05/31 09:03:23" color="">}}




{{<matomeQuote body="まさにAWSとかAzureみたいな会社のことだよ。ああいうとこはカスタムソフト入りハードを貸すのがビジネスじゃん。何十万ものElasticacheユーザーのライセンス料を払うより、3～4人のチームでRedisのフォークをメンテする方が全然安く済むのかもね。" userName="WJW" createdAt="2025/06/01 09:59:40" color="#ff33a1">}}




{{<matomeQuote body="めっちゃ同意！もしAWSに一銭もくれずに有料サービスにされなくなかったら、それを止められるライセンスを選ぶべきだよ。BSDじゃダメなんだって！" userName="meitham" createdAt="2025/05/31 07:49:22" color="#45d325">}}




{{<matomeQuote body="AGPLライセンスを使えばいいだけさ、他のライセンスにお金払う必要ないよ。" userName="pabs3" createdAt="2025/06/04 08:40:15" color="">}}




{{<matomeQuote body="最後に見たら、RedisにはまだCLAがあったんだよね。つまり、いつでもクローズドソースに戻す権利を持ってるってこと。貢献者にそんな条件を同意させる限り、また同じことしないなんて信用できないよ。" userName="WhyNotHugo" createdAt="2025/05/31 08:13:33" color="#785bff">}}




{{<matomeQuote body="その注目って、「貢献」として？それとも「利用」として？だってもし「貢献」だったら、どうせCLAに署名させられて、結局向こうが売ってあなたにはお金入らないじゃん。" userName="lmz" createdAt="2025/05/31 10:56:17" color="#45d325">}}




{{<matomeQuote body="もっと言えば、valkeyのインストールが `apt install valkey` で、redisも `apt install redis` でできるのがベストだよね。まさに一部のディストリビューションがそうしてるみたいだけどさ。" userName="gkbrk" createdAt="2025/05/31 11:55:44" color="">}}




{{<matomeQuote body="＞正直ほとんどの人は気にしないと思うよ。なんて意見は、現実的じゃないと思うな。会社はどのプロジェクトを使うか決めるとき、必ずライセンスのレビューをするんだ。個人的な週末プロジェクトなら気にしないかもだけど、プロの現場では弁護士とか交えて、使うべきかどうかっていう長い手続きを絶対やるんだから。" userName="motorest" createdAt="2025/05/31 10:43:08" color="#38d3d3">}}




{{<matomeQuote body="あの企業ってRedis Inc.の「クラウドでのマネージドRedis」分野で直接競合してるんだよね。Redisは彼らにライセンスを売る気があるのかな？ 値段は妥当かな？" userName="Kwpolska" createdAt="2025/05/31 10:23:56" color="">}}




{{<matomeQuote body="兆ドル企業だからって例外なのはおかしいって？<br>Redisのライセンス変更はコミュニティ全体に影響するんだよ、見せかけの悪者だけじゃない。たまにコンテナを起動する週末プログラマーは気にしないかもしれないけど、会社のインフラで重要な役割をFLOSSプロジェクトに頼ってた人はみんな、リスク低減会議でRedisの名前が出てくるようになるのは避けられないよ。" userName="motorest" createdAt="2025/05/31 10:32:04" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="今はAGPLライセンスだから、フォークするのはValkeyがフォークした頃とはかなり違うよ。そのライセンスを維持しないといけないし、AGPLって結構多くの会社が触りたくないライセンスなんだよね（その判断が’正しい’かどうかは別として）。" userName="CamouflagedKiwi" createdAt="2025/05/31 09:58:35" color="">}}




{{<matomeQuote body="クラウドプロバイダーはみんなBSDライセンスのValkeyに乗っかってるから、次にAGPL Redisを引き継ぐコミュニティって現実的にどこになるんだろう？ もっと小さいRedict支持者グループ？ 人手には限りがあるし、その多くは今他のことに忙殺されてるよ。" userName="jpetso" createdAt="2025/06/01 12:26:00" color="">}}




{{<matomeQuote body="良い質問だし、繰り返す価値があるね。だって、フリーソフトウェアやオープンソースの「レベルの高い競争環境」、つまりどのベンダーも特別な地位や秘密のタネを持たない状態が欲しいなら、それがベンダーがプライベートブランチを維持する代わりにマルチベンダーのコードベースに新機能を提供することを可能にするんだから。<br>これはX11やUnix戦争から学んだことで、歴史はフリーコアだけどプロプライエタリなエンタープライズ機能を持つ数え切れないプロジェクトで繰り返されるけど、それらは親会社を超えて本当に拡大することはないんだ。<br>だから兆ドル企業に特別なルールがあってはダメで、プレイイングフィールドはどんな使い方にも平等であるべきなんだよ、それがどれほど直感に反するように感じてもね。誰かがそれをソフトウェアの4つの自由の最初として早期に成文化しようとしたんだ（キーワードは”誰でも”）。" userName="xorcist" createdAt="2025/05/31 11:49:43" color="#ff5c5c">}}




{{<matomeQuote body="Valkeyをデフォルトのディストリビューションパッケージマネージャーに入れてもらう必要があるね。GitHub ActionsランナーとかでValkeyをインストールするためにキーを追加したりディストリビューションをアップデートしたりしないといけないのは嫌だよ。" userName="bhouston" createdAt="2025/05/31 00:47:20" color="">}}




{{<matomeQuote body="どのディストリビューションに入ってないんだ？<br>https://repology.org/project/valkey/versions を見ると、nixpkgs、Arch、Ubuntu、Fedora、Debian、EPELに入ってるみたいだよ。その中でも、すぐに気づく唯一の注意点は、Debianは13か12+backportsでしか手に入らないことだね。" userName="yjftsjthsd-h" createdAt="2025/05/31 00:57:31" color="">}}




{{<matomeQuote body="GitHub ActionsランナーはUbuntuがベースだよ。Repologyのリンクからすると、ValKeyは”universe”リポジトリに入ってるみたいだから、コミュニティサポートのリポジトリで、デフォルトでは有効になってない可能性があるね。" userName="Hasnep" createdAt="2025/05/31 01:17:43" color="">}}




{{<matomeQuote body="RedisもいつもUbuntuのuniverseに入ってたよ。Ubuntuのほとんどのものはuniverseにあって、実質的にメンテナンスされてないんだ。<br>新しい動きの速いプロジェクトにとって、ソフトウェアをデフォルトのパッケージマネージャーに入れることが必ずしも最善の選択肢じゃないんだよね。古いバージョンのバグ報告に答え続けたり、LTSリリースのライフサイクル中はモンキーパッチを当てたりする羽目になるよ。<br>メンテナーにとってもユーザーにとっても、最新バージョンを含むPPAや自分のリポジトリを運営する方がずっとエルゴノミックだよ。" userName="kijin" createdAt="2025/05/31 02:06:34" color="">}}




{{<matomeQuote body="ユーザーにとっては大変だよ。安定版が必要なら、セキュリティ修正だけで変更がないブランチがいい。予期しない変更、API変更、設定ファイル変更は困るし。セキュリティ修正されないバージョンに留まるのも嫌だよね。APIや挙動の破壊的な変更にゆっくり対応してる間に、セキュリティ追跡しない同じバージョンに居座るなんて無理。Debian stableにはRedisとかがあるけど、サポート期間中はずっとバックポートされたセキュリティアップデートが出るよ。これはRedisに限った話じゃない。何を使うにしても、セキュリティアップデートは追跡して最新の状態にするべき。そうしないと過失になる。Redisみたいなインフラ系、バックエンドの変更を追跡するのはリソースの無駄だし、メリットはほぼゼロ。僕はRedisみたいなコアなデーモンは、ディストリビューション管理されてないと手を出さないね。もっと大事な心配事があるんだ。" userName="bbarnett" createdAt="2025/05/31 10:58:53" color="#45d325">}}




{{<matomeQuote body="Debianの件は正しいね。Ubuntuは別の話。Ubuntuの”universe”リポジトリにある重要なものについては、別のリポジトリを使う方が良いかも。あれは全然”ディストリビューション管理”されてないから。例えば、多くの人がまだメンテされてると思ってるだろうUbuntu 22.04 LTSに入ってるRedisには既知の脆弱性があるけど、Redisはuniverseにあるから、パッチはUbuntu Proのサブスクリプションを持ってる人だけなんだ。" userName="kijin" createdAt="2025/05/31 13:08:09" color="#785bff">}}




{{<matomeQuote body="Debianのcontribとnon-freeも似たようなもんだよ。ちゃんと管理されてるのは’main’だけ。" userName="bbarnett" createdAt="2025/05/31 15:59:43" color="">}}




{{<matomeQuote body="Debianでcontribとnon-freeにあるパッケージはほんのわずかだよ。Redisはちゃんとmainにあるし。Ubuntuはパッケージの90%をuniverseに放り込んで、Debianからのセキュリティ修正すら取り込まないなんて、まったく無責任だしDebianとは全然比較にならないね。" userName="kijin" createdAt="2025/06/01 10:00:27" color="#ff5c5c">}}




{{<matomeQuote body="＞ GitHub Actions runners are based on Ubuntu<br>それはGitHub Actionsの問題じゃない？GitHub Actionsが提供してるコンテナイメージはすごく限られてるし、Ubuntu用はValkeyが出る前にリリースされたLTSバージョンを使ってるだけだよ。<br>https://docs.github.com/en/actions/writing-workflows/workflo..." userName="motorest" createdAt="2025/05/31 06:25:16" color="">}}




{{<matomeQuote body="Actionsを実行するのに、どんなDockerコンテナでも使えるよ。" userName="Kwpolska" createdAt="2025/05/31 10:34:26" color="">}}




{{<matomeQuote body="そしたら、それらのバージョンのUbuntu用にパッケージされてるRedisはBSD版になるね…それはただの古いValkeyだよ。" userName="skywhopper" createdAt="2025/05/31 11:04:42" color="">}}




{{<matomeQuote body="ChatGPTの使い方の良い教訓だね。<br>＄ docker run --rm -ti debian:trixie<br>root＠d12c52dcfee8：／＃ apt-get update ＆＆ apt-get install -y valkey<br>Get：1 http：／／deb.debian.org／debian trixie InRelease ［178 kB］<br>…<br>root＠d12c52dcfee8：／＃ valkey-server --version<br>Valkey server v=8.1.1 sha=00000000：0 malloc=jemalloc-5.3.0 bits=64 build=13683752e517a7b6" userName="nothrabannosir" createdAt="2025/05/31 01:32:43" color="#ff33a1">}}




{{<matomeQuote body="ClaudeもValkeyに関しては同じように複雑な回答をするけど、Redisについてはシンプルな解決策を出してくれるよ。<br>https://claude.ai/share/ba9ecc54-5f21-4ec5-ab36-88e8eac38d1a" userName="bhouston" createdAt="2025/05/31 01:46:09" color="#38d3d3">}}




{{<matomeQuote body="Valkeyのパッケージ名はvalkeyだよ、valkey-serverじゃないから手順が間違ってるね。長くて間違ったAIの回答貼るより、簡潔な公式ドキュメントにリンクすれば？これ見て→https://valkey.io/topics/installation/" userName="MaKey" createdAt="2025/05/31 02:07:30" color="#38d3d3">}}




{{<matomeQuote body="URLも開けないみたいだよ。" userName="accoil" createdAt="2025/05/31 02:15:48" color="">}}




{{<matomeQuote body="要点をわかってないね。LLMじゃなくて、ドキュメントが正しい情報の源なんだよ。" userName="satvikpendem" createdAt="2025/05/31 02:12:25" color="#ff5c5c">}}




{{<matomeQuote body="ついでに言うと、Arch Linuxではredisがvalkeyに置き換わったんだって。" userName="LukeShu" createdAt="2025/05/31 03:22:21" color="#ff33a1">}}




{{<matomeQuote body="RHEL 10でもそうなるよ！" userName="jdmarble" createdAt="2025/05/31 04:21:29" color="">}}




{{<matomeQuote body="CIの最初でプルしたコンテナイメージにいっぱい追加するなら、自分でイメージ作ればいいじゃん。" userName="hnarn" createdAt="2025/05/31 22:13:40" color="#ff5c5c">}}




{{<matomeQuote body="Valkeyができて、今も順調で超嬉しい。RIP Redis（早くそうなればいいのに）。" userName="linotype" createdAt="2025/05/31 05:10:57" color="">}}




{{<matomeQuote body="儲けるのは悪いの？OS（オープンソース）は巨大企業のためだけ？AWSとかがRedisで儲けるのは良くて、作者はダメ？DBのスタートアップは、フェアソースライセンスとかにして、AWSみたいなハイパースケーラー対策を入れるべき。顧客にはコードを使わせていいけど、彼らがマネージドサービスとして提供するのは阻止するべき。彼らはちゃんとあなたに払う必要がある。RedisやElasticsearchみたいになっちゃダメ。もう手遅れだ。彼らは寛容すぎて、今や巨大企業の金づる。作った人たちには何も入らないんだ。" userName="echelon" createdAt="2025/05/31 05:16:11" color="#ff33a1">}}




{{<matomeQuote body="いや、ノンフリーライセンスがダメなんだよ。フリーソフトで儲けることは問題ない。問題なのはソフトウェアの自由を尊重しないこと。君は混同してる。プロプライエタリ出すなら、なんでソース公開するの？それはOSのフリだよ。普通の商用ソフト作ればいいじゃん。ソースがGitHubで見れるからってOSって名乗るな。" userName="sneak" createdAt="2025/05/31 05:27:58" color="#ff33a1">}}




{{<matomeQuote body="”なぜプロプライエタリを出すのにソース公開するの？”<br>それ、決定するまでに何年も経ってて、OSだったせいでクラウド大手に収益で不利になったからだよ。クローズド化には反対だけど、OSにしたのは昔の話だし、それが悪い意図だったって言うのは不誠実に見えるな。" userName="aloha2436" createdAt="2025/05/31 08:18:33" color="#45d325">}}




{{<matomeQuote body="" userName="growse" createdAt="2025/05/31 08:24:56" color="#785bff">}}




{{<matomeQuote body="" userName="rvnx" createdAt="2025/05/31 06:01:04" color="">}}




{{<matomeQuote body="" userName="BadBadJellyBean" createdAt="2025/05/31 15:29:51" color="#ff5733">}}




{{<matomeQuote body="" userName="prmoustache" createdAt="2025/05/31 11:27:02" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="" userName="xorcist" createdAt="2025/05/31 11:55:41" color="">}}




{{<matomeQuote body="" userName="Aeolun" createdAt="2025/05/31 07:10:41" color="">}}




{{<matomeQuote body="" userName="pas" createdAt="2025/05/31 07:38:13" color="">}}




{{<matomeQuote body="" userName="motorest" createdAt="2025/05/31 06:04:21" color="#ff5733">}}




{{<matomeQuote body="" userName="nothrabannosir" createdAt="2025/05/31 08:11:47" color="">}}




{{<matomeQuote body="" userName="prmoustache" createdAt="2025/05/31 11:29:24" color="">}}




{{<matomeQuote body="お前が「被害者」って言葉使うなら、俺らが皮肉使っても文句言うなよ。人の言い方に文句言うくせに自分も同じやり方してるのはフェアじゃないって話。Redisの件自体はどうでもいいんだけど、「信頼が壊された」は合ってるかもね。でもそれならそう言えよ、「言い方おかしい」って言っといて自分も＜spin＞使うな。<br>" userName="nothrabannosir" createdAt="2025/05/31 15:57:51" color="">}}




{{<matomeQuote body="たぶんそうだけど、人間って大体「信頼」で成り立ってるでしょ？ソフトウェアだろうがPCだろうが、信頼なきゃ成り立たないよ。オープンソースかどうなんて関係ないね。<br>" userName="prmoustache" createdAt="2025/06/01 20:33:13" color="">}}




{{<matomeQuote body="＞「タダでもらったのに被害者とか呼ぶの？」って？おとり商法に引っかかったら「被害者」だよ。それが無料だったとしても関係ないね。<br>" userName="motorest" createdAt="2025/05/31 10:36:22" color="">}}




{{<matomeQuote body="最初からタダじゃないライセンスとか、あんまりオープンソースじゃないライセンスとかにしてたら、たぶんここまで成功しなかっただろうね。何が良い選択肢だったのか、よく分かんないな。<br>" userName="CamouflagedKiwi" createdAt="2025/05/31 10:06:11" color="">}}




{{<matomeQuote body="Valkeyは健全なオープンソースプロジェクト。多くの会社や人が貢献し、誰も独占せず皆が恩恵を受けてる。俺も商用利用OKで最高じゃん？なんで反資本主義的なんだか。<br>Redis Inc.のCLAは貢献者の権利を独占。AGPLでCLAなんてコミュニティをダメにするだけ。Permissive licensesが成功したのは自由だから。元の開発者がいなくてもコミュニティが生き残るんだ。<br>" userName="jillesvangurp" createdAt="2025/05/31 08:25:33" color="#ff33a1">}}




{{<matomeQuote body="Valkeyって独自のクライアントライブラリある？GCPでRedis使ってるんだけど、MemoryStoreとかカスタムマシンとかでね。クラシックRedisとRedis Cluster両方使ってる。<br>公式のCライブラリ（hiredis）が、Redis ClusterでTLS使うときに残念ながら全然ダメなんだよ。非公式のhiredis-cluster [0] 使ってるんだけど、マジ大変。<br>Scyllaに乗り換えようか考えてるとこ。GCPのMemoryStoreも使い物にならないしね。<br>[0] https://github.com/Nordix/hiredis-cluster" userName="secondcoming" createdAt="2025/05/31 12:45:43" color="#ff5733">}}




{{<matomeQuote body="うん、hiredisとhiredis-clusterを合わせたlibvalkeyってクライアントライブラリがあるよ。hiredisとかhiredis-clusterをメンテしてた人たちがたくさん関わってるみたい。<br>https://github.com/valkey-io/libvalkey" userName="michael_grunder" createdAt="2025/06/01 03:21:15" color="#785bff">}}




{{<matomeQuote body="最近、多くのdotnetプロジェクトが商用化しちゃって、なんか「ラグプル」（騙された気分）って感じ。他のdotnetのオープンソースライブラリにとっては損害だと思うな。開発者が使いにくくなるし、広まりにくくなるだろうからね。<br>" userName="pipes" createdAt="2025/05/31 06:49:11" color="">}}




{{<matomeQuote body="ていうか、dotnetの場合、タダのソフトとかオープンコアみたいな商用プロジェクトが隣接してるのは、別に最近始まったことじゃないよ。<br>" userName="debugnik" createdAt="2025/05/31 08:40:54" color="">}}




{{<matomeQuote body="いつものGPLに関するFUD（誤解や恐怖）だと思うから、これについての良い解説記事をシェアするね。 https://drewdevault.com/2024/04/19/2024-04-19-Copyleft-is-no..." userName="kamikazechaser" createdAt="2025/05/31 05:57:00" color="">}}




{{<matomeQuote body="コピーレフトライセンスの方が自由って主張はちょっと疑問だな。義務があるってことは自由の制限だし、文字通り許諾型ライセンスより自由じゃないでしょ。その義務にメリットがあるかは別の話だけどね。" userName="TheBicPen" createdAt="2025/05/31 08:45:43" color="">}}




{{<matomeQuote body="Redisが方針転換したんだし、ValkeyとRedisで話し合って協力したり統合したりする価値あるんじゃない？" userName="y2244" createdAt="2025/05/31 06:40:47" color="">}}




{{<matomeQuote body="あれはUターンじゃなくて、AGPLをオプションで追加したって意味での方向転換って感じかな。" userName="paulryanrogers" createdAt="2025/05/31 14:45:41" color="">}}




{{<matomeQuote body="AGPLを追加しただけで、そっちのライセンスに完全に移行したわけじゃないよ。" userName="pabs3" createdAt="2025/06/04 08:44:12" color="">}}




{{<matomeQuote body="うちはたくさんのアプリでRedisを使ってるんだけど、ValkeyがAWSで安かったから試したんだ。2ヶ月くらい順調だったのに、突然落ちて。AWSは原因不明。復旧に時間かかったし、また起きた。大事なものにはもう使わないかな。結局Redisに戻したら問題なくなったよ。" userName="bofaGuy" createdAt="2025/05/31 01:24:52" color="#ff5733">}}




{{<matomeQuote body="それ、AWS側の問題かもね。うちのRDS Postgresも突然止まったことあるよ。AWSサポートはほぼ役立たずで、結局新しいクラスター作ってバックアップから戻した。RDSはやめてEC2に移行したよ。AWSの「カプセル化された」サービスはもう信用できないな。" userName="neepi" createdAt="2025/05/31 04:49:37" color="#ff33a1">}}




{{<matomeQuote body="でも、それは個別事例じゃないかな？うちはRDSを6年も何十クラスターも運用してるけど、一度も問題起きてないよ。もしかしたらap-northeast-1リージョンはメンテが良いのかもね？" userName="Aeolun" createdAt="2025/05/31 07:28:50" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
