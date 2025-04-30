+++
date = '2025-04-23T00:00:00'
months = '2025/04'
draft = false
title = '【衝撃】DOGE社社員のコードがNLRB内部告発者を支援！？ロシアからの不正ログイン未遂も発覚し騒然！'
tags = ["DOGE", "NLRB", "内部告発", "セキュリティ", "ロシア"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> 【衝撃】DOGE社社員のコードがNLRB内部告発者を支援！？ロシアからの不正ログイン未遂も発覚し騒然！

引用元：[https://news.ycombinator.com/item?id=43776476](https://news.ycombinator.com/item?id=43776476)

{{<matomeQuote body="Ge0rg3のコードは”オープンソース”ってことで、誰でもコピーして非商用で再利用できるんだって。たまたま、Ge0rg3のコードから派生した新しいバージョンがあって、それが”async-ip-rotator”って呼ばれてるらしい。DOGEのキャプテンMarko Elezが2025年1月にGitHubにコミットしたんだと。<br>オリジナルコード：https://github.com/Ge0rg3/requests-ip-rotator<br>フォーク：https://github.com/markoelez/async-ip-rotator<br>コードはほとんど同じで、コメントが削除されて、asyncが追加されて、ちょっと変更されてる（たぶんLLMにペーストしてasyncにしてって言っただけだろ）。<br>でも…オリジナルのGPL3ライセンスがない。DOGEの人たちが理解したり尊重したりするとは思えないけど。" userName="progbits" createdAt="2025-04-23T21:41:11" color="">}}

{{<matomeQuote body="そのリポジトリは削除されちゃったみたい。しかも、他の26個のリポジトリもアカウントから削除されてる。DOGEのメンバーって、注目されるとすぐにデータを消すから、いつものパターンだね。以前にも別の”teen hacker”で見たことある。[0]<br>アーカイブされたリポジトリページ：https://archive.ph/LI7tt;<br>アーカイブされた以前のリポジトリ数：https://archive.ph/tgkg5<br>0. https://arstechnica.com/tech-policy/2025/04/i-no-longer-hack..." userName="0x_rs" createdAt="2025-04-23T23:26:58" color="#45d325">}}

{{<matomeQuote body="アーカイブされたリポジトリ：https://archive.softwareheritage.org/browse/origin/directory...<br>ここからGitリポジトリとしてダウンロードできるよ：https://archive.softwareheritage.org/api/1/vault/git-bare/sw..." userName="progval" createdAt="2025-04-24T05:27:47" color="#45d325">}}

{{<matomeQuote body="法律的には、GPLコードを内部で修正して使用するのは許可されてるんだって。ソースを再配布しなくてもいいから。唯一のミスは、LICENSEファイルなしでソースコードを公開gitリポジトリに公開したことかも。それってGPL違反になるかもね。<br>内部コードを公開gitまたはFTPサーバーに置いた場合、それが”配布”と見なされるかどうかはわかんないけど。" userName="jychang" createdAt="2025-04-24T08:37:56" color="">}}

{{<matomeQuote body="＞ソースコードをLICENSEファイルなしで公開gitリポジトリに公開すると、GPL違反になる可能性がある”だって。<br>それについて連邦判事にサインしてもらうんだな。<br>たぶん、彼らは何らかの解決策を促進するように命じられるかもね。<br>俺が書いてる今も震えてるだろうな。" userName="77pt77" createdAt="2025-04-24T20:00:47" color="">}}

{{<matomeQuote body="2月6日に、誰かがasync-ip-rotatorのGitHubの”issues”ページで、Elezのコードについて長くて詳細な批判を投稿したんだ。”安全じゃなくて、スケーラブルじゃなくて、基本的なエンジニアリングの失敗だ”って。<br>”これがサイドプロジェクトなら、ただの悪いコードで済むけど”ってレビューアーは書いてる。”でも、これが本番システムの構築方法を代表するものなら、もっと大きな懸念がある。この実装は根本的に壊れていて、もしこれと似たようなものが機密データを扱う環境にデプロイされているなら、すぐに監査されるべきだ”って。" userName="nativeit" createdAt="2025-04-23T21:43:05" color="#ff5c5c">}}

{{<matomeQuote body="その”批判”はマジでヤバい。絶対にAIが生成したでしょ。ドメインを信用してなかったら、作者がこんなものを真面目に引用してるなんて考えられないよ。<br>批判[0]を見て、コード[1]を見て。<br>[0] https://web.archive.org/web/20250423135719/https://github.co...<br>[1] https://github.com/ricci/async-ip-rotator/blob/master/src/as..." userName="deepfriedrice" createdAt="2025-04-24T02:15:09" color="#785bff">}}

{{<matomeQuote body="うん、明らかにAIだね。キーワードを太字にして、引数に番号を振って、みたいな。最近のAIが生成したコンテンツって、こういう構造化されたレスポンスパターンに従ってる気がする。" userName="captainkrtek" createdAt="2025-04-24T04:11:30" color="">}}

{{<matomeQuote body="それは単純で目的志向のテンプレートを使ってて、明確なコミュニケーションのための一般的な推奨事項、アウトラインの番号付け、そしてキーワードをモノスペーステキストで強調してる。これは技術的な文章ではよくあることだよ。人が特に高い可視性を持つものを書くときに、そうするのは珍しいことじゃない。" userName="dragonwriter" createdAt="2025-04-24T04:31:21" color="#ff33a1">}}

{{<matomeQuote body="フォーマット自体はAIを示唆してるわけじゃないけど、批判がほとんど意味不明なことを考えると、強く示唆してるように見えるね。" userName="odo1242" createdAt="2025-04-24T09:45:56" color="">}}

{{<matomeQuote body="＞ChatGPTは人間の文章がベースって知ってる？<br>マジレスすると、お前の文章がChatGPTっぽいからって「お前がChatGPT使った」って言うのって、ChatGPTがお前の文章に似せて作られてるんだから、メチャクチャ皮肉じゃね？<br>お前や俺の文章は全部ChatGPTっぽいんだよ。数十億ドルも使って、お前や俺の作ったコンテンツ含めて、許可なくスクレイピングしたデータを学習させて、同じような文章を作るようにしたんだから当たり前じゃん。" userName="throwaway290" createdAt="2025-04-24T09:28:42" color="">}}

{{<matomeQuote body="人間がそういう書き方しないとは言わないけど、ChatGPTみたいなの頻繁に使ってると、よくある返答のテンプレだってすぐわかるんだよね。" userName="captainkrtek" createdAt="2025-04-24T05:30:51" color="">}}

{{<matomeQuote body="ダッシュ記号（—）もChatGPTっぽいって言うけど、LLMのパターンって現実世界のパターンから学習してるの忘れちゃってるよね。ChatGPTでよくあるってことは、現実世界でもよくあるってことだし、パターンベースの「検出」なんてやろうとしたら、誤検出だらけになるよ。" userName="drusepth" createdAt="2025-04-24T07:00:30" color="">}}

{{<matomeQuote body="ChatGPTが登場するまで、同僚からのメールでダッシュ記号なんて見たことなかったけど、今はダッシュ記号があると、少なくとも一部はAIが生成した文章だってすぐわかる。セミコロンも同じ。確かに正しい文法ではセミコロンを使うけど、カジュアルなビジネスコミュニケーションでは、ほとんどの場合、簡略化されてる。" userName="op00to" createdAt="2025-04-24T17:17:21" color="">}}

{{<matomeQuote body="そうそう、ダッシュ記号はiOSでダブルダッシュを入力すると自動的に挿入されるんだよね：—" userName="chongli" createdAt="2025-04-24T09:52:40" color="">}}

{{<matomeQuote body="＞そこそこマシなプレゼンでも「AIの兆候」扱いされる時代か。<br>これマジで。Redditのgamedevサブレで、自分のゲームの紹介文がちゃんとしてて、箇条書きを使ってただけでレビュー爆撃されたって人がいたわ。最近は箇条書き使うだけでAI扱いされるみたい。" userName="Suppafly" createdAt="2025-04-24T16:50:48" color="#ff5c5c">}}

{{<matomeQuote body="この批判はAIの可能性大。<br>1. 無駄に長い。開発者は忙しいし、セキュリティ研究者ならもっと忙しい。そんなスキルがあるなら、こんなリポジトリの批判に2、3文以上も時間かけない。<br>2. 敵意むき出し。バグのないコードなんて書くのは難しいし、ほとんど不可能。Linus Torvalds、Richard Hipp、Dan Abramovくらいじゃないと、自分がガラスの家に住んでるのわかってて石を投げない。<br>3. 所有意識。「必殺」コメントは、自分の「赤ちゃん」を傷つけるような弱いPRに対する、不満を持った門番しか書かない。他人のランダムなユーティリティプロジェクトに感情移入する人なんていない。これは単なるPythonファイル。<br>4. 作者。作者はまだ意欲的な開発者。SOLID/DRY原則へのこだわりをプロジェクトの主な特徴として強調してるリポジトリを見て。ベテランのセキュリティ研究者ならありえない。<br>https://github.com/SSD1805/EchoFlow<br>5. 内容。批判が…間違ってる。単一ファイルのユーティリティリポジトリが「保守性の低い」モノリスであることは「ひどい」と言ってる。皮肉なことに、dependency injectionが不要だからコードが悪いと言ってる！<br><br>政治的な立場はともかく、嫌いな相手をネットいじめするためにAIを使う風潮はなくなってほしい。" userName="ahwelatif" createdAt="2025-04-24T05:30:56" color="#785bff">}}

{{<matomeQuote body="DOGEがアメリカ政府を使って、嫌いな相手をネットいじめする風潮はなくなってほしい。" userName="DonHopkins" createdAt="2025-04-24T06:13:24" color="">}}

{{<matomeQuote body="ChatGPTの文章を読みまくってると、すぐわかるんだよね。<br>- 異常なほどの冗長さ<br>- 完璧なスペルと文法<br>- 大げさな口調<br>- 段落や文の長さがほぼ同じロボットみたいな話し方（特に長い文章で顕著）<br>- ダッシュ記号（—）だらけ<br>- 同じような決まり文句や文構造の繰り返し。「これはXではない—Yだ」みたいなのが、そのissueで2回も使われてる。<br><br>「脆弱で安全でなく、スケーラブルでないコードを書くことは「ハードコア」ではありません。これは境界線を押し広げているのではなく—エンジニアリングの基礎知識が不足していることを示しています。<br><br>これが以前の仕事で学んだことなら、それを忘れ、ベストプラクティスに従うべきです。なぜなら今、これは単なる悪いエンジニアリングではなく—無謀だからです。」<br><br>もしAIが書いてないなら、インターネットのコメントから永久引退するわ。<br>(これはDOGEを擁護するつもりはないよ。)" userName="arrowsmith" createdAt="2025-04-24T09:47:20" color="#785bff">}}

{{<matomeQuote body="あのさー、開発者がネットで何書いてるか読んだことないの？特に炎上してるときとか、誰かと揉めてるときとか。そういう時ってめっちゃ攻撃的だし、石投げたり、揚げ足取ったりするじゃん？経験ないやつに限って自分がプログラミングの神様みたいに振る舞うんだよねー。" userName="watwut" createdAt="2025-04-24T07:43:29" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="2番についてだけど、それって自分のことを過大評価しなくなったベテラン開発者の特徴だと思うな。若い開発者だと、自分のスタイルと合わない人のコードをけなしたりするよね。「これは良い」って思ってることと違うと。" userName="bryanrasmussen" createdAt="2025-04-24T09:46:54" color="">}}

{{<matomeQuote body="全部同意！リンク先のrepoのreadmeも、AIがコードベースを要約したみたい。ぶっちゃけ、AIはそのrepoのコードが何してるか理解できてないと思うんだよね。だから機能より形式について語ってるんだと思う。" userName="paulgb" createdAt="2025-04-24T06:31:45" color="#45d325">}}

{{<matomeQuote body="＞開発者は忙しいし、セキュリティ研究してる開発者はもっと忙しい。<br>＞その批判も、批判者のプロフも、Krebsの記事ですら、批判者がセキュリティ研究者だって言ってないし。それに、すべての開発者が特に「忙しい人たち」ってわけでもないじゃん？<br>＞あんた自身も後で、作者は経験豊富な開発者やセキュリティ研究者じゃないって言ってるじゃん。だから、コードがAIによって書かれたって仮定して、それを根拠に批判するのはナンセンスだよ。普通セキュリティ研究者は忙しくてそんなの書かないって言うけど。<br>＞敵意。バグのないコードを書くのは難しいし、ほとんどの人には不可能。Linus Torvalds、Richard Hipp、Dan Abramovみたいな名前じゃない限り、ほとんどの開発者は自分がガラスの家に住んでるってわかってるから、石を投げるのは気が引ける。<br>＞ネットに5分以上いたらわかると思うけど、敵意なんてありふれてるじゃん。コミュニティのほとんどじゃなくても、目立つ一部ではあるよね。<br>＞こういう「Killshot」コメントは、自分の「赤ちゃん」を傷つける弱いPRに対して、不満を持った門番が書くんだよ。他の人のランダムなユーティリティプロジェクトに感情的に投資する人なんていない。<br>＞HNでこの話をしてるのは、これがランダムなプロジェクトじゃないからだよ。作者がニュースで注目されてた時に批判が投稿されて、批判者は作者がニュース報道のせいで辞任したことについて、政治的なフォローアップを投稿したから。<br>＞作者はまだ開発者志望者。SOLID/DRY原則を守ることをプロジェクトの主な特徴として強調してるrepoを見て。<br>＞AIが書いたって批判は的外れ。AIよりシンプルな説明ができる。特にSOLID/DRYに焦点を当ててるのは、批判が間違ってるってことと一致してるんだよ。そして、AIで書かれたって仮定に基づいてる最初のポイントも弱まる。経験豊富なセキュリティ研究者じゃないって仮定に基づいているから。<br>過剰な冗長性、形式ばった書き方、間違いが多いってのがAIの特徴なら、あんたの投稿もAIっぽいじゃん。" userName="dragonwriter" createdAt="2025-04-24T10:44:02" color="">}}

{{<matomeQuote body="マジウケる。こんな批判絶対書けないわー（コードじゃなくて批判の方ね）。" userName="krferriter" createdAt="2025-04-24T02:59:47" color="">}}

{{<matomeQuote body="Krebsがこれにリンクしてるの見て、彼の評価の信頼性が下がったわ。" userName="mquander" createdAt="2025-04-24T02:40:16" color="">}}

{{<matomeQuote body="＞すぐに監査されるべきだ。<br>どうせElonが紙に印刷させて、個人的にコードレビューしたんでしょ。" userName="dessimus" createdAt="2025-04-24T15:24:30" color="">}}

{{<matomeQuote body="FYI、Forkが消されたっぽいんだけど、誰かクローンできた人いる？" userName="dijksterhuis" createdAt="2025-04-23T22:03:44" color="">}}

{{<matomeQuote body="できたよ。単なる.pyファイルだよ。<br>https://gist.github.com/whalesalad/06804fd734efe6bd2e0c84906…" userName="whalesalad" createdAt="2025-04-23T22:42:59" color="#785bff">}}

{{<matomeQuote body="x_forwarded_for = headers.get(”X-Forwarded-For”)<br>if x_forwarded_for is None:<br>x_forwarded_for = ipaddress.IPv4Address._string_from_ip_int(<br>randint(0, MAX_IPV4)<br>)<br><br>lol" userName="alright2565" createdAt="2025-04-23T22:47:23" color="#785bff">}}

{{<matomeQuote body="元の作者は、API gatewayがクライアントの本当のIPを漏らさないようにするためだって言ってるよ。" userName="marcusb" createdAt="2025-04-23T22:59:33" color="">}}

{{<matomeQuote body="公平に言うと、このコードは既存のサーバーへのプロキシとして機能する新しいAPI gatewayサーバーを作るもので、このヘッダーを自分のgatewayサービスで使うことを想定してるのかも。ヘッダーとして設定されて、ユーザー所有のプロキシに送られて、それから実際の外部エンドポイントに送られるってことだね。でも、これやるとAPI GatewayがAWSアカウントの識別子を見たり記録したりできると思うから、IP以外にも隠す必要のある情報があるかもね。" userName="timewizard" createdAt="2025-04-23T23:22:32" color="#45d325">}}

{{<matomeQuote body="元のコードには目的がちゃんと書いてあるよ。<br>＞X-Forwarded-Forがない場合、ランダムに自動生成する。<br>＞そうしないと、AWSが本当のIPアドレスをX-Forwarded-Forヘッダーで転送してしまうから。<br>DOGEのやつはコメントを削除しただけ。" userName="marcusb" createdAt="2025-04-24T13:28:50" color="#ff5733">}}

{{<matomeQuote body="このコードはAPI gatewayを他の外部サイトへのプロキシにするための「創造的な」使い方みたいだね（サイトごとに必要だから、実際は単一サイト向け）。lambda（関数URL付き）でリクエストを送って、アウトバウンドリクエストをより細かく制御する方が簡単じゃない？" userName="icedchai" createdAt="2025-04-24T00:09:21" color="#38d3d3">}}

{{<matomeQuote body="これって、ハッカーがAPI gatewayを何年も前から使ってる一般的な方法なんだよね。IPRotateみたいなプラグインを見てみるといいよ。うちの製品にもそれを取り入れようとしてるところ。" userName="Sytten" createdAt="2025-04-24T01:01:02" color="#785bff">}}

{{<matomeQuote body="GPLv3はライセンスを保持する必要があるんだよね。リポジトリのオーナーとかGitHubに報告できるんじゃないかな。" userName="plandis" createdAt="2025-04-23T21:57:45" color="">}}

{{<matomeQuote body="裁判所の命令を無視してるような政権で働いてる人たちが、これにちゃんと対応すると思う？…はい、消えたー。" userName="DrillShopper" createdAt="2025-04-24T01:05:55" color="">}}

{{<matomeQuote body="GitHubにあるってのが…なんか変だよね。GPL3ライセンスを保持する必要があるのは、再配布する場合だけなんだよ。GitHubリポジトリに入れるのが再配布にあたるかどうかは、少なくとも道徳的には曖昧だよね。個人的なコピーでライセンスを削除するのは完全に有効だし、それをプライベートなGitHubリポジトリにアップロードするのも有効。それをパブリックなGitHubリポジトリにアップロードするとなると…？" userName="Ferret7446" createdAt="2025-04-24T09:09:34" color="">}}

{{<matomeQuote body="フォークは削除されたみたいだね。" userName="darknavi" createdAt="2025-04-23T22:15:37" color="">}}

{{<matomeQuote body="DOGEの人たちが理解したり尊重したりするとは思えないね。<br>stack overflowとかGitHubからコピー＆ペーストして、そのまま使い続ける人たちを日常的に見かけるよ。Creative Commons Attribution-ShareAlikeとかのライセンスを無視してね。このサイトでも、ペイウォールの裏にある著作権で保護された記事を共有してる人たちがいるし（アーカイブサイトにあるからって正当化できないよね）。DOGEを擁護してるわけじゃないよ。仲間を無視して他のグループを批判するのは良くないよね。" userName="grepfru_it" createdAt="2025-04-24T01:50:56" color="#ff5733">}}

{{<matomeQuote body="この内部告発の訴えの一部はマジでヤバそうじゃん。<br>”2025年3月11日頃、NxGenの指標が前の週に異常な使用を示してたんだって。応答時間がベースラインを大幅に上回ってて、リソース使用率が過去最高レベルのネットワーク出力を示してたんだってー。DOGEがNLRBのシステムにアクセスしたデータ流出イベントと一致してることに気づいたんだって。海外からのログイン試行がアクセス拒否されてるのも確認。例えば、DOGEがアクセスした後、ロシアの沿海地方のIPアドレスを持つユーザーがログインを試みてるのを発見。ログインポリシーでブロックされたけど、アラームだったらしい。DOGEのエンジニアによって作成されたアカウントが使われてて、ユーザー名とパスワードが正しかったみたいだけど、海外からのログインポリシーでブロックされたんだって。20回以上試行されてて、アカウント作成から15分以内に試行されてるのが特にヤバい”" userName="mythrowaway49" createdAt="2025-04-23T23:38:19" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="一番マシな解釈って何だと思う？ロシア人がkeyloggerでPCに侵入して、DOGEが安全じゃないネットワークで作業してるってことかな？<br>最悪な解釈は簡単でしょー。ロシアのために動いてて、ロシア人を招き入れたか、keyloggerをインストールしたってことじゃん。" userName="stevenwoo" createdAt="2025-04-24T00:13:08" color="">}}

{{<matomeQuote body="関連情報：https://infosec.exchange/@briankrebs/114083485241630234<br>引用：”この政権が完全に妥協してる証拠はもっと必要？米国がロシアに対する攻撃的なデジタル行動を緩和する理由なんてないじゃん。むしろ、もっとやるべき。”" userName="breadwinner" createdAt="2025-04-24T02:12:04" color="">}}

{{<matomeQuote body="ロシアが国として攻撃するなら、IPアドレスをアメリカ国内から発信するように偽装すると思うけどなー。これは堂々としすぎじゃね？" userName="0cf8612b2e1e" createdAt="2025-04-24T00:20:32" color="">}}

{{<matomeQuote body="国家が支援してるとは限らないよ。DOGEの関係者がロシアのハッキンググループと繋がってるだけかも。<br>あるいは、国家が支援してて、政府のお偉いさんの招待で正面玄関から入れるから隠れる必要がないと思ったのかもね。" userName="kenjackson" createdAt="2025-04-24T03:10:49" color="#ff5733">}}

{{<matomeQuote body="Muskがロシア人を雇っただけって可能性もある。" userName="delusional" createdAt="2025-04-24T05:57:25" color="">}}

{{<matomeQuote body="捕まることが悪いことばかりじゃないんだよね。もし二つのグループの間に不和の種を蒔こうとしてるなら、片方を助けて捕まる方が、捕まらないよりも効果的なんだよ。<br>ロシアがNLRBのデータで何を得られるか分からないけど、”DOGEを助けた”ことで国内の対立が深まることは、ロシアにとってプラスになる。" userName="avs733" createdAt="2025-04-24T00:27:44" color="">}}

{{<matomeQuote body="＞struggle to see what Russia would gain with nlrb data<br>＞ロシアがNLRBのデータで何を得られるかって話だけど、アメリカの企業の内部告発者のリストだよ。企業に自分の情報がバレたくないと思ってる人たちのね”" userName="JumpCrisscross" createdAt="2025-04-24T07:21:37" color="#45d325">}}

{{<matomeQuote body="それ良い指摘だね。" userName="avs733" createdAt="2025-04-24T11:27:26" color="">}}

{{<matomeQuote body="なんでロシアがこんなことするの？Trumpが大統領選に勝ったじゃん。それってウクライナにとって最高の結末じゃないの？<br>＞furthers distrust between the two sides of our country - which is something they gain from<br>＞国内の対立を深めることが、ロシアにとってどうプラスになるの？”" userName="Braxton1980" createdAt="2025-04-24T01:30:51" color="">}}

{{<matomeQuote body="あいつらにとって一番いいのは、アメリカが内紛でグチャグチャになって、何もできなくなることだよね。Trumpが勝つとウクライナにはいいみたいだけど、あいつらが欲しいのは、長期的に見れば政策を変えることと同じくらい、混乱させることなんだろうね。" userName="avs733" createdAt="2025-04-24T01:38:30" color="">}}

{{<matomeQuote body="たぶんね、ウクライナの件が終わってTrumpが大統領じゃなくなってからの方がいいんじゃないかな。Dogeへの不信感を煽るのはDemocratsを助けるだけだと思うよ。" userName="Braxton1980" createdAt="2025-04-24T02:11:32" color="">}}

{{<matomeQuote body="いやいや、両陣営は別の情報空間に住んでるんだって。この話はDemocratsの間にも広まって、「ロシアがDogeを“助けてる”」って怒り出す人も出てくるだろうね。<br>Republicansは「過剰反応だ」とか「嘘だ」って一蹴するだろうし。DemocratsがTrump derangement syndromeだって騒ぐだろうね。<br>Dogeが政府機関と関わると、内部のIT担当者は不正行為を恐れて、Dogeが要求するコントロールをオフにせざるを得なくなって、政府内でさらに衝突が起きるだろうね。お互いの悪と愚かさを信じる気持ちがさらに強固になるってわけ。ロシアはスパイ活動がバレても価値が下がらない方法で、効果的にスパイ活動ができるってこと。" userName="avs733" createdAt="2025-04-24T11:22:41" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃいい意見だけど、「trump derangement syndrome」なんて言葉を使わないでほしいな。それを作ったやつらがまさにそれを使って、さらに分断を煽りたいんだから。" userName="lobsterthief" createdAt="2025-04-25T11:51:33" color="">}}

{{<matomeQuote body="＞最高の解釈をすると？ロシア人がkeyloggerでPCに侵入して、DOGEがセキュリティが甘いオープンなネットワークで作業してるんじゃない？<br>superuserアカウントでGithubにアクセスしてるとか。コードの質からして、セキュリティ対策もできてないんじゃないかな。" userName="JumpCrisscross" createdAt="2025-04-24T07:20:40" color="#45d325">}}

{{<matomeQuote body="第三の選択肢も忘れちゃいけないよ。偽旗作戦ってやつ。<br>目的はアクセスしたり、役立つデータを手に入れることじゃないかもしれない。ロシアに関するスキャンダラスな見出しを作って、既存のメディアや政治的な扇動を利用して、政府をさらに不安定化させることかもしれないんだよ。" userName="tenpies" createdAt="2025-04-24T00:29:13" color="">}}

{{<matomeQuote body="プーチンに賛同してきた政権が、ロシアに泥を塗るようなことをするなんて、なんか変じゃない？<br>やったって言ってないけど、プーチンとロシアへの支持と矛盾するよね。偽旗作戦として、プーチンに、自分に賛同しないハッキンググループを取り締まる口実を与えるのかも。" userName="DrillShopper" createdAt="2025-04-24T01:08:52" color="">}}

{{<matomeQuote body="よくわかんないんだけど。DOGEのやつらがTrumpに悪い印象を与えようとしてるってこと？" userName="lukev" createdAt="2025-04-24T01:06:16" color="">}}

{{<matomeQuote body="AIの利用拡大を正当化するための口実を作ろうとしてるって説があるね。セキュリティのためってことで。このスレッドにもElonの味方みたいな人がいるし。セキュリティって言えば、みんな疑問も持たずに賛成するんじゃないかな。" userName="9283409232" createdAt="2025-04-24T01:33:04" color="">}}

{{<matomeQuote body="マジでくだらない説だな。自分で考えたんでしょ？" userName="santoshalper" createdAt="2025-04-24T05:18:14" color="">}}

{{<matomeQuote body="誰かAIを代替案として提案した？政府におけるAIへの支持が増加する理由は何だろうね？" userName="Braxton1980" createdAt="2025-04-24T02:09:47" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="それって単にIPルーターがローテーションの一部としてロシアのIPを使ってるだけじゃない？データ持ち出そうとしてるなら、何が起きてるか分からなくしたり、制限を回避するためにIPアドレスをローテーションさせたいんじゃないかな。単純なIPローテーターを使えばそうなるかも。IPアドレスに注意しないと、US国外とかの制限で引っかかることがあるかもね。ロシアからの変なリクエストに見えるかもしれないけど、フラグが立ってないUSからのリクエストをログしてないだけかも。僕の解釈が間違ってるかもだけど！" userName="pontus" createdAt="2025-04-24T01:50:32" color="">}}

{{<matomeQuote body="AWS API Gatewayを使ってるから、ロシアのAWSリージョンはないよ。" userName="cthalupa" createdAt="2025-04-24T02:18:35" color="#785bff">}}

{{<matomeQuote body="最良のシナリオは、その子たちが騙されて、間違った（ロシアの）人に認証情報を渡しちゃったってことじゃないかな。" userName="barbazoo" createdAt="2025-04-24T00:25:40" color="">}}

{{<matomeQuote body="＞考えられる最高の解釈は？ロシア人がキーロガーで彼らのPCに侵入したとか…<br>一番マシなのは、内部告発者が何か勘違いしてるか、わざと嘘をついてるってことかな。例えば、”国外からのログインポリシーが作動した”ってことは、ポリシーがいつトリガーされるかの誤解かもしれない。一番ありそうな説明ではないけど、一番心配ないのはそれかな。キーロガーよりはマシだと思うけど、それでもDOGEの従業員がVPNとかproxyとかTorを使ってたってことだよね。暗号化されてても敵対的な国を経由するのは良くないけど、キーロガーで認証情報を盗まれるよりはマシかな。もちろん心配だけどね。" userName="Ukv" createdAt="2025-04-24T09:50:04" color="">}}

{{<matomeQuote body="そうそう、1年くらい前にUS政府機関のO365アカウントを侵害したAPTみたいに、Conditional Access Policiesを回避するためにresidential proxiesを使った連中が、今度はクレムリンから直接ログインしてるってことだね！：D" userName="lucasRW" createdAt="2025-04-24T08:49:32" color="">}}

{{<matomeQuote body="1年前と今とで何か違いがある？誰か別の人が大統領の椅子に座ってる？" userName="op00to" createdAt="2025-04-24T17:21:38" color="">}}

{{<matomeQuote body="言いたいこと分かってないね。問題の”ロシアのログイン試行”はCAPによってブロックされてるんだよ。ロシアの国家支援アクターは、それを回避するためにresidential relay boxesを使ってるって過去に示してる。内部告発者の主張の行間を読むと、辻褄が合わないことが多いんだよね。特に、彼が内部告発する前にdeathnoteがドアに残されてて、ドローンが家の上を旋回してたって結論が好きだな。" userName="lucasRW" createdAt="2025-04-25T10:03:39" color="#ff5733">}}

{{<matomeQuote body="僕には完璧に辻褄が合うよ。<br>・彼が内部告発者になるかもって疑われたか、彼が知ってたことのせいでdeath noteをもらったのかも。<br>・そのdeath noteが最後のきっかけになったのかも。<br>・ドローンはいつも僕の家の上を飛んでるよ。もし彼が目撃したことを僕が目撃して、death noteを受け取ったら、もっと重大な意味があると思っちゃうかもね。<br>どれも非現実的じゃないよ。" userName="lobsterthief" createdAt="2025-04-25T11:57:06" color="">}}

{{<matomeQuote body="ロシアのハッカーがVPNを使わないなんてありえないでしょ？ロシアに住んでる友達は、VPNなしじゃUSのサイトのほとんどにアクセスできないから、いつもVPNをオンにしてるって言ってるよ。何かがおかしいか、こいつらがすごくバカなのか。" userName="cryptoegorophy" createdAt="2025-04-24T03:15:15" color="">}}

{{<matomeQuote body="やつら、注目されたいんだな。で、あんたはどうすんの？ロシア国民に対して何の権限があるわけ？" userName="op00to" createdAt="2025-04-24T17:20:42" color="">}}

{{<matomeQuote body="ログイン認証の後で「国外からのログイン禁止」ブロックがかかるのが不思議。もっと前にブロックした方が合理的じゃない？" userName="Palmik" createdAt="2025-04-24T02:51:24" color="">}}

{{<matomeQuote body="なんか変じゃね？<br>なんでロシアからログインしようとするんだろ（もし本当にロシア人なら）？<br>USのIPを使ったVPNなんてめっちゃ安いのに。" userName="bequanna" createdAt="2025-04-24T00:20:41" color="">}}

{{<matomeQuote body="全員が全員、あんたが期待してるほどの天才じゃないのかもね。" userName="Pompidou" createdAt="2025-04-24T01:01:44" color="">}}

{{<matomeQuote body="Occam’s razor（オッカムの剃刀）で考えると、いたずらって可能性も十分あり得るよね。" userName="frumplestlatz" createdAt="2025-04-24T01:18:56" color="">}}

{{<matomeQuote body="Occam's razor的には、ロシアの人が自分のIPをそのまま使うってのもありえる。どうせ「いたずらだ」って思う人がいるんだから。" userName="threeseed" createdAt="2025-04-24T01:34:46" color="">}}

{{<matomeQuote body="なんでロシアの人がNLRBのデータにアクセスしたいんだ？それに、DOGEがNLRBのログイン情報をロシアにすぐリークする理由がわからん。バレたらすぐ特定されるのに。もし追跡不能な管理者権限を与えられてデータダウンロードできるなら、ロシアに渡す方が合理的じゃね？<br>まともな知能を持った奴の行動とは思えない。" userName="frumplestlatz" createdAt="2025-04-24T01:42:41" color="#38d3d3">}}

{{<matomeQuote body="＞ロシアの人がNLRBのデータにアクセスしたい理由？<br>＞”労働紛争の詳細が載ってるから。ロシアはUSの対立を煽るのが得意だから、理想的なデータセットになる。”<br>＞DOGEがNLRBのログイン情報をすぐリークする理由？<br>＞”若い未熟なエンジニアにLLMシステムを急いで展開させてるから。セキュリティが最優先じゃないんだ。”" userName="threeseed" createdAt="2025-04-24T02:48:46" color="#785bff">}}

{{<matomeQuote body="経験不足で監視も不十分だから、NLRBのログイン情報をロシアにリーク（どうやって？）したって？LLMシステム（何の？）を展開しながら？そして、ロシアの奴らは下手すぎて、ロシアのIPアドレスからアクセスしてバレたって？<br>NLRBのデータがロシアにとって価値があるからって、DOGEの従業員やデータへのアクセスを危険に晒すわけ？もっと価値のあるターゲットがあるでしょ。なんか怪しくね？" userName="frumplestlatz" createdAt="2025-04-24T03:06:43" color="#ff5733">}}

{{<matomeQuote body="＞Primorskiy Krai（沿海地方）<br>おそらく、もし本物なら、接続元としては最も予想外の場所。必ずしもそうでないとは言わないけど、普通じゃないし、意味不明。" userName="orbital-decay" createdAt="2025-04-24T07:50:09" color="">}}

{{<matomeQuote body="＞Daniel J. Berulisって人の内部告発によると、DOGEのやつらが3月3日にNLRBのリーダーと会って、めちゃくちゃ強力な“tenant admin”アカウントを作れって要求したらしいよ。しかも、そのアカウントの操作記録は全部ログに残さないでくれってさ。普通に考えたら怪しいじゃん？何か正当な理由があるのかなあ。" userName="twalkz" createdAt="2025-04-23T21:19:58" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
