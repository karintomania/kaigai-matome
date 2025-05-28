+++
date = '2025-05-20T00:00:00'
months = '2025/05'
draft = false
title = 'DDoSecretsがTeleMessageから410GBのヒープダンプをハッキングし公開！'
tags = ["ハッキング", "データ流出", "サイバーセキュリティ", "TeleMessage", "DDoSecrets"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> DDoSecretsがTeleMessageから410GBのヒープダンプをハッキングし公開！

引用元：[https://news.ycombinator.com/item?id=44036647](https://news.ycombinator.com/item?id=44036647)




{{<matomeQuote body="え、つまり彼らのサーバーの一つに、サーバーの heap dump を公開する /heapdump エンドポイントがあったってこと？ この騒動、もう手に負えないね。このグループは何も”公開”してないけどね。記者向けに申請フォームでアクセス提供してるだけだよ。410GB の heap dumps って方が headline になるから、実際のメッセージコンテンツがどれだけあるかは言ってないし。" userName="Aurornis" createdAt="2025/05/20 01:44:51" color="">}}




{{<matomeQuote body="信頼されててセキュアで（しかも無料）な software を Co-opt して、あらゆる面で劣化させてるのを想像できる？<br>しかも金取って？！<br>会社と user どっちが embarrassed か分からないな。" userName="mingus88" createdAt="2025/05/20 01:49:31" color="">}}




{{<matomeQuote body="なんで会社が embarrassed なんだ？ user （つまり high level U.S. officials）が due diligence を全くしてないじゃん。もちろん private company は一番簡単で安い route を取るよ。マズくなったら shut down して spin up するだけでしょ。<br>これ Israeli による intentional intelligence gathering って speculate する人もいるけど、それも plausible だね。" userName="hypeatei" createdAt="2025/05/20 02:07:44" color="">}}




{{<matomeQuote body="＞ Some speculate this was intentional intelligence gathering by the Israelis which is plausible too.<br>これがどういう意味？ もし彼らが gathering データしてたんなら、なんで public download を add するの？ surely the Israeli officials は foreign powers に access させたくないはずだよね？<br>Per Hanlon’s razor, これは incompetence 以外の何物でもないと思うな。" userName="n2d4" createdAt="2025/05/20 02:42:40" color="">}}




{{<matomeQuote body="＞ The users (i.e. high level U.S. officials) did no due diligence.<br>でも、なんで彼らがそんなことするの？ 彼らの job じゃないじゃん。彼らには massive な IT staff が support してるんだよ。“High level U.S. officials” はただの executives。 pointy-haired bosses の上の pointy-haired boss だよ。<br> Fortune 500 company だって dedicated IT staff for execs がいるんだ。<br>これらの人たちは自分の MDM-controlled device に app 一つ install できないんだぜ、それが今や low-level IT decisions までするのを expected されてるって話になってる？ Pete Hegseth が rotating backup tapes について lack of thoughts なのを next week 調べることになるんだろうな。" userName="donnachangstein" createdAt="2025/05/20 05:23:53" color="#ff5c5c">}}




{{<matomeQuote body="これがなぜ Signal が third-party apps （または forks）が彼らの service に connect するのを so opposed なのかって理由だよ。<br> Signal が the secure app っていう branding を keep したいなら、全ての Signal users が actually using a secure version of Signal であることを make sure する必要がある。<br> もし an insecure fork （like this one）が too popular になると、 most groups には at least one member using it が出てきて、 then the security is gone." userName="miki123211" createdAt="2025/05/20 10:34:46" color="">}}




{{<matomeQuote body="Java app を持ってて、 all of the JMX endpoints を over HTTP で mistakenly exposed しちゃった感じだね。デフォルト設定じゃないし、 likely done out of carelessness だな。" userName="jfim" createdAt="2025/05/20 02:52:35" color="">}}




{{<matomeQuote body="the razor の both sides の room があるね。 heapdumpz は maliciously そこにあったけど、 incompetently made globally accessible だったのかもしれない。" userName="jojohohanon" createdAt="2025/05/20 03:23:30" color="">}}




{{<matomeQuote body="From the Wired article: ”The archive server is programmed in Java and is built using Spring Boot, an open source framework for creating Java applications. Spring Boot includes a set of features called Actuator that helps developers monitor and debug their applications. One of these features is the heap dump endpoint,”<br>だから the heapdumps が available だったのは a Spring Boot feature ってことで、 it does not appear to be malicious だね。" userName="pigbearpig" createdAt="2025/05/20 03:37:30" color="#45d325">}}




{{<matomeQuote body="てかさ、FTXで有名なSBFは元々Jane Stにいたから、当然バリバリの金融プロだったわけ。だから、昔の勤務先だけで能力を判断するのは危ないんだよね。" userName="msy" createdAt="2025/05/20 03:42:48" color="">}}




{{<matomeQuote body="Wiredの記事によるとね、これSpring Bootのバージョンによってはミスじゃなかったかもよ。バージョン1.5より前は、Spring Boot Actuatorの /heapdump エンドポイントは認証なしで誰でもアクセスできる公開設定がデフォルトだったんだって。" userName="pigbearpig" createdAt="2025/05/20 03:39:50" color="#38d3d3">}}




{{<matomeQuote body="公平に見てさ、FTXは利益が出た破産だったって話もあるしね [1]。だから、Goldman SachsとかJP Morganとかの普通のアラムナイに騙されるよりは、Jane Street出身者に騙される方がまだマシなんじゃないの [1] https://www.bloomberg.com/news/articles/2024-05-15/ftx-bankr..." userName="sillystu04" createdAt="2025/05/20 08:55:34" color="">}}




{{<matomeQuote body="賢い人が陥りがちな問題はさ、ある分野でマジで賢いってことが、他の全部に応用できるって思っちゃうことなんだよね。AppSecが得意だからって、ネットワーキングとかウェブサーバーの運用も得意とは限らないわけ。" userName="oceanplexian" createdAt="2025/05/20 03:38:41" color="">}}




{{<matomeQuote body="アプリへの変更は、メッセージのアーカイブが法律で義務付けられてたから、関係者全員が意図的にやったことだよ。" userName="kube-system" createdAt="2025/05/20 02:21:47" color="">}}




{{<matomeQuote body="それさ、AppleがiMessageのクライアントアプリを閉鎖した時の理由と同じだよね。今回のリークを見ると、彼らの懸念は正しかったってことになるみたい。" userName="pchristensen" createdAt="2025/05/20 15:37:39" color="">}}




{{<matomeQuote body="それ、国全体をひとくくりにするのは良くないよ。元Mossadの人で、テック企業で実際に実装したいと思ってる人がどれだけいると思う？ 「アメリカのソフトウェア会社って全部一流で、元NSAの人とかばっかりなんでしょ？」みたいなもんじゃん？" userName="viraptor" createdAt="2025/05/20 02:03:13" color="">}}




{{<matomeQuote body="正直さ、なんで諜報機関出身の人たちがエンジニアリングに特に長けてると思うのか、よくわかんないんだけど。" userName="rsynnott" createdAt="2025/05/20 09:19:24" color="">}}




{{<matomeQuote body="これさ、対策でファイアウォール建てても、Docker Composeが親切にポート開けちゃう、みたいなのを想像してみて。セキュリティは層で考えるべきなんだよね。" userName="teekert" createdAt="2025/05/20 09:11:26" color="#ff5c5c">}}




{{<matomeQuote body="それがなんで公平なの？ あれはAIへの投資による運だよ。ただの運。" userName="coolcase" createdAt="2025/05/20 10:42:38" color="">}}




{{<matomeQuote body="俺、Spring Bootのヒープダンプ機能作った本人なんだ。みんなセキュリティ設定ミスったり無視したりしてるっぽい。改善のためにこのPR（リンク略）出したんだよ。昔は“sensitive”で明示的に有効にしないとだったけど、今は“shutdown”だけ“restricted”になっちゃったんだ。今回のPRで、みんなが設定ミスってもデフォルトでヒープダンプが晒されないようにするつもり。" userName="flarecoder" createdAt="2025/05/20 14:53:50" color="#38d3d3">}}




{{<matomeQuote body="まあね、でもあんな無能で危ないやり方する必要なかったでしょ。" userName="brookst" createdAt="2025/05/20 02:36:58" color="">}}




{{<matomeQuote body="もしヒープダンプがメモリの全コピーなら、“数千のヒープダンプ”ってもっと410GBよりでかくなるんじゃないの？ざっくり計算してみると：<br>410GB÷1000個＝1個あたり410MB？<br>410GB÷2000個＝1個あたり205MB？" userName="kbouck" createdAt="2025/05/20 07:33:14" color="#38d3d3">}}




{{<matomeQuote body="この機能はちゃんと有効化しないとダメなんだ。デフォルトでも間違ってもオンにはならないよ。" userName="evrflx" createdAt="2025/05/20 05:07:11" color="">}}




{{<matomeQuote body="＞実際のメッセージコンテンツの量より、410GBのヒープダンプの方がインパクトあるから量をごまかしてるって指摘、これ大事。<br>最近こういう大量ダンプ見たけど、OSのキャッシュとかログばっかで中身なかったよ。ヒープダンプのサイズ減らすの簡単なのにやってないのは変だけど、実は512GBを整理して410GBになった可能性もあるし、わかんないな。" userName="BearOso" createdAt="2025/05/20 13:41:25" color="#785bff">}}




{{<matomeQuote body="それはプロトコルの問題って感じじゃないな。単一実装だと、仕様無視したのに問題起きないバグとかにつながるのってよくあることだもん。" userName="calvinmorrison" createdAt="2025/05/20 12:02:36" color="">}}




{{<matomeQuote body="あの人たちの大量のITスタッフは、安全にやり取りする方法を用意してるのに、わざと無視してんだろ。証拠に残らないように、後で裁判にならないようにさ。" userName="hristov" createdAt="2025/05/20 05:40:17" color="">}}




{{<matomeQuote body="まだ分かんないけどさ、この人たちって自分たちが気に入らない科学者とか専門家を公然と攻撃してるじゃん。だから、IT専門家のアドバイスなんて無視してたとしても驚かないな。" userName="danieldk" createdAt="2025/05/20 05:41:34" color="">}}




{{<matomeQuote body="TeleMessageのCEOのLinkedInプロフィールがひどいAIが書いたみたいなんだって。内容は”戦略的革新と通信ソリューション推進への揺るぎないコミットメント”とか”倫理基準と共同成功を評価する文化”とか”実績に基づいて結果を出し効率的に問題を解決”とか”通信分野で卓越した評判”とか、最後に”2024年のSmarshによる買収はチームと私のリーダーシップの証”って書いてある。全部ビジネス用語の羅列でAI感満載だね。" userName="gregorvand" createdAt="2025/05/20 06:46:03" color="#45d325">}}




{{<matomeQuote body="十分に進化した人間が書いたLinkedIn言葉は、ビジネス流行語で話すように指示された、かろうじて意味の通じるchatgpt 3.5と区別つかないんだよ。" userName="walrus01" createdAt="2025/05/20 07:50:30" color="">}}




{{<matomeQuote body="ハハハ、全く同じこと考えてたよ！10年前にこれを読んでたら”うわ、この人履歴書作りうまいな、簡潔でエレガントだ”って思っただろうね。でも今やみんなこの超凝縮されたLinkedIn言葉を使うから、すごく痛々しくて意味不明になっちゃった。" userName="teekert" createdAt="2025/05/20 09:14:32" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="磨きすぎた言葉、抽象的な言い回し、具体性より一般論に終始してる感じだね。" userName="CGMthrowaway" createdAt="2025/05/20 13:49:13" color="">}}




{{<matomeQuote body="”俺、CEOです。うちはSaaSです。俺、CEOです。”って感じかな。" userName="ulrikrasmussen" createdAt="2025/05/20 09:22:32" color="#38d3d3">}}




{{<matomeQuote body="そんなひどく言わないであげなよ、”うちは通信会社だ”ってどこかで付け加えてたでしょ。" userName="aubanel" createdAt="2025/05/20 22:34:58" color="">}}




{{<matomeQuote body="最初のTeleMessageの情報公開から何週間も経つのに… Signal Foundationは何かニュースに反応した？ 彼らはオープンソースのサードパーティクライアントを非難したり、相互運用プロジェクトで”Signal”の名前を使う人を商標侵害で訴えるって脅したりしてるじゃん。一方で、防衛請負業者が同じことしてるのに全く何も言わないんだよな。" userName="greyface-" createdAt="2025/05/20 03:41:58" color="#ff5c5c">}}




{{<matomeQuote body="Signal Foundationが何も言わないのは、政権の報復を恐れてじっとしてるか、それか中心人物だったMoxieが役員を辞めて姿を消したから。今Signal Foundationが何を代表してるのかちょっと分かりにくいね。" userName="ethersteeds" createdAt="2025/05/20 05:53:53" color="#ff33a1">}}




{{<matomeQuote body="Signalは何も悪くないと思うよ。何か言っても、スケープゴート探してる人たちから批判されるだけだし。この問題は完全にTelemessageと、それを使っちゃった人たちのせいだよ。" userName="decimalenough" createdAt="2025/05/20 07:28:44" color="">}}




{{<matomeQuote body="そういえばSignalのFOSSフォークが中止させられたの覚えてる？How is Molly doing these days？自分でホストできる代替サーバーってあるの？" userName="h4ck_th3_pl4n3t" createdAt="2025/05/20 07:26:15" color="">}}




{{<matomeQuote body="Whittakerがインタビューで話してたの思い出した。主流メディアがSignalを”安全じゃないメッセンジャー”って呼び続けてたことに文句言ってたんだよ。実際はそれが問題じゃなかったのにね。そのインタビューが見つからないんだけど。多分Signalは何もできなかっただろうね、だってTeleMessageがアプリを”Signal”じゃなくて”SGNL”って呼ばなかったのはそのためだろうから。" userName="Anamon" createdAt="2025/05/22 20:06:11" color="">}}




{{<matomeQuote body="moxie vs fdroidの件は俺もイライラするけど、これはそれ以上の問題だ。長年USの援助で儲けてきた海外のエリートがUS大統領を牛耳ってる話で、みんな無能だと思うのは間違い。他の政権が未知の海外ソフトを使ったら無能と思うはず。なぜこの裏切り者のピエロたちは許されるの？" userName="asdffdasy" createdAt="2025/05/20 11:20:18" color="#45d325">}}




{{<matomeQuote body="＞もし他の政権が、聞いたこともない海外の会社の電話とか通信ソフトを使ってたら、ただの無能だと思う？<br>元の記事で面白かったのは、USがTeleMessageを2023年2月から使ってたってこと。もしそれが本当なら、この選択には2つの政権が関わってるってことになるね。" userName="troyvit" createdAt="2025/05/20 15:36:12" color="#ff5733">}}




{{<matomeQuote body="その通りだけど、前の政権がその改造されたクライアントで戦術計画を話し合ってたとは思えないな。" userName="bstsb" createdAt="2025/05/20 16:13:52" color="">}}




{{<matomeQuote body="自分の名前を守るのは全く問題ないよ。Firefoxのフォークは作っていいけど、Firefoxって呼んだりMozillaのブランドを使っちゃダメ。VS Codeのオープンソース部分をフォークしていいけど、そう呼んだりMicrosoftのブランドを使っちゃダメ。オープンソースライセンスに従えば自由だけど、名前やブランドの権利はないんだ。Linuxみたいに、Linux foundationから許可を得る必要があるんだよ。" userName="TheRealPomax" createdAt="2025/05/20 15:06:57" color="">}}




{{<matomeQuote body="それはここでの問題と違うよ。VSCodeやFireFoxは誤った例えだ。たとえ名前を変えても、Signalは非公式クライアントのサーバー接続を禁じてるんだ。公式見解では、Signalユーザーとチャットできるクライアントのフォークや配布は許されてない。MozillaはLibreWolfビルドでもVPNやRelayみたいなサービスを使わせてくれるけどね。" userName="baobun" createdAt="2025/05/20 16:41:58" color="">}}




{{<matomeQuote body="二つ前のコメントは不満を二つ書いてたよね、一つはクライアントについて、もう一つはSignalがSignalの名前を使ってる人たちを追い詰めてることについて。俺のコメントはその二つ目だけについてだったんだよ（だからああいう風に始まってるんだ）。" userName="TheRealPomax" createdAt="2025/05/20 17:17:26" color="">}}




{{<matomeQuote body="Signalのフォーク版がどんなにひどくても、少なくとも合法だった。やばいのは、この会社がクラック版WhatsAppも売ってたってこと。<br>これは全然話が違う… しかもみんなそれを買ってたんだ！ 実際の企業や政府がこんなクソみたいなのを買ってたなんて、マジありえないね<br>https://smarsh.my.salesforce.com/sfc/p/#30000001FgxH/a/Pb000..." userName="namdnay" createdAt="2025/05/20 08:19:43" color="#ff5c5c">}}




{{<matomeQuote body="それがなんで違法なの？ Beeperの件だと、DOJは独自プロトコルのサードパーティ製メッセンジャーを禁止しようとする企業に同情的じゃなかったよね ［0］ — WhatsAppは違うの？<br>WhatsAppアーカイバーは、見た感じユーザーのWhatsAppインストールにパッチを当てるみたいだね。セキュリティ的に悪夢なのは確かだろうけど、違法だとは思わないな。<br>https://techcrunch.com/2024/03/21/doj-calls-out-apple-for-br..." userName="n2d4" createdAt="2025/05/20 16:25:02" color="">}}




{{<matomeQuote body="彼らは実際、Metaのブランディング付きで再構築されたクライアントバイナリを配布してるんだよ。<br>それはソフトウェアのライセンス（オープンソースじゃないのはほぼ確実）とMetaの商標の両方を明らかに侵害してる。<br>自社ブランディングで互換性のあるアプリを提供するのとは訳が違うんだ。" userName="namdnay" createdAt="2025/05/21 13:43:07" color="#785bff">}}




{{<matomeQuote body="＞ しかもみんなそれを買ってたんだ！ 実際の企業や政府がこんなクソみたいなのを買ってたなんて、マジありえないね<br>余談だけど、Wall StreetではGlobal RelayとTeleMessageがコンプライアンス目的の通信アーカイブで主要なプレイヤーなんだよ。" userName="pid-1" createdAt="2025/05/20 09:14:29" color="">}}




{{<matomeQuote body="その前はWall Streetはyahoo messengerで動いてたんだ！<br>新しいyahooのブランドオーナーたちがその価値を理解してなくて、若いユーザーが足りないからって理由でシャットダウンしちゃったせいで止まっただけなんだよ。" userName="asdffdasy" createdAt="2025/05/20 11:25:12" color="">}}




{{<matomeQuote body="俺の仕事ではもっと重要度が低いことやってるけど、それでも外部企業による年2回のペネトレーションテストがあるんだ。<br>一体どうしたらこんなレベルの無能さが合法でいられるんだ？" userName="jfritsch1984" createdAt="2025/05/20 06:04:31" color="">}}




{{<matomeQuote body="だって、ソフトウェアエンジニアリングってエンジニアリングとして真剣に捉えられてないからだよ。<br>例えば、どんな責任があるっていうの？" userName="mmooss" createdAt="2025/05/20 06:41:22" color="">}}




{{<matomeQuote body="違法じゃなかったとは思わないな。<br>どうやらSOC2認証も偽造してたみたいだし。" userName="namdnay" createdAt="2025/05/20 08:16:43" color="">}}




{{<matomeQuote body="’Heapdump’って言葉は15年前にAndroidアプリのデバッグで覚えたやつだよ．Javaプロセスのメモリのスナップショットで，中身は平文が入ってる．面白いのは，なんでそのヒープがオープンなHTTPエンドポイントで手に入ったかって点だね．クライアントコードにハードコードされてたか，リクエストを見たんだろうな．これだけだとバックエンドやメッセージの保存方法についてどう知ったのか分からないんだけど，何か見落としてるかな？" userName="lubesGordi" createdAt="2025/05/20 14:46:03" color="#38d3d3">}}




{{<matomeQuote body="監視用のエンドポイントはSpringBootのデフォルトで，あんまり変更されないんだ．だからAPIのパスが分かれば，ヒープダンプのエンドポイントのパスも分かるってことさ．" userName="trallnag" createdAt="2025/05/20 15:58:34" color="#45d325">}}




{{<matomeQuote body="それはただの /actuator/heapdump だよ．見つけるの難しくないし．最近のバージョンだとデフォルトでオフだけど，前はデフォルトで有効だったんだ．" userName="JohnMakin" createdAt="2025/05/20 16:42:15" color="#45d325">}}




{{<matomeQuote body="本番で認証なしの/heapdumpエンドポイントを晒すなんて初心者すぎ．特に政府の機密通信扱ってるサービスならね．MD5ハッシュとかJSPみたいな古い技術があるのも，セキュリティがずさんなのを示してる．今回の件は，多層防御と定期的なチェックが絶対必要な理由を示す，まさに教科書みたいな例だよ．" userName="willmarquis" createdAt="2025/05/20 04:25:46" color="#ff5733">}}




{{<matomeQuote body="JSPを悪く言うなよ．今はJakarta Server Pagesって名前でJakarta EEの一部だし，ちゃんと更新してたら古い技術じゃないんだ．人気が落ちただけさ．それに，今どきのNext．jsとか使ったって，ダメなコード書けば認証なしのエンドポイントを晒しちゃうことはできるんだからね．" userName="Traubenfuchs" createdAt="2025/05/20 13:09:53" color="#38d3d3">}}




{{<matomeQuote body="これ，議員がend−to−end暗号化を禁止したりバックドア仕込もうとしたりする時に，こういうセキュリティのずさんさがあるから必要ないって反論するのに使える良い例だね．" userName="WatchDog" createdAt="2025/05/20 04:42:34" color="">}}




{{<matomeQuote body="記事のタイトルは完全に間違いで，嘘っぱち流してるって批判されるべきだよ．”公開した”んじゃなくて”研究者向け”なだけだろ．これって”注目浴びたいからタイトルの情報歪めました”って言ってるようなもんだぞ．" userName="udev4096" createdAt="2025/05/20 07:46:24" color="">}}




{{<matomeQuote body="DDoSecretsは機密情報だからジャーナリストや研究者とだけ共有してるらしいけど，俺は今回はもっと痛い漏洩が必要だと思うんだ．だって独裁者とかはハッキングされても痛くないし，ちゃんと国民が失敗に怒るべきだから．それに，ジャーナリストとかも政府にすぐ黙らされちゃうし，抑圧が広がるだけだよ．普通の企業の失敗なら責任ある開示でいいけど，独裁を止めるためなら手加減なしで行くべきだ．相手がルール守らないならこっちも守らなくていい．" userName="0xbadcafebee" createdAt="2025/05/20 02:45:16" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ジャーナリストを”黙らせる”なんて必要ないんだよ．だってさ，多くの人はSNSの匿名アカウントとか，フォローしてる政治インフルエンサーからしか本当のことは来ないって騙されてるんだもん．どんな情報がリークされても”フェイクニュースだ”って一蹴されちゃって，十分な数の投票者がそれを信じちゃうんだからさ．" userName="30360000" createdAt="2025/05/20 05:30:36" color="">}}




{{<matomeQuote body="ジャーナリストが”政府を監視する役割”なんて，gullibleな人向けのおとぎ話だよ．だからいちいち黙らせる必要なんてないのさ．まあ，例外的なすごいジャーナリストには敬意を表するけどね．" userName="megous" createdAt="2025/05/20 16:59:42" color="">}}




{{<matomeQuote body="リークを”フェイクニュース”って片付けられても有権者は信じるし、メディアとか科学界への信頼が失われたのも、彼らが政治的なウソばっかついてるから当然だよ。" userName="Ray20" createdAt="2025/05/20 07:47:44" color="">}}




{{<matomeQuote body="国民がリーダーに怒るべきって考えは危ないよ。”Americaを救うためにAmerica人を痛めつける必要がある”って”ひどい暴力”に繋がる思考回路。人を傷つけて自分たちが傷ついてることに気づかせようとするのは、ほぼ間違いだね。" userName="CobrastanJorji" createdAt="2025/05/20 03:07:52" color="#785bff">}}




{{<matomeQuote body="これもマジで危険な考え方だよ。”Americaを救うために、行われてる”ひどい暴力”の真実を嘘で隠す必要がある”って考え。人が傷ついてるのに気づかせないように嘘つくのは、ほぼ絶対ダメ。" userName="fumeux_fume" createdAt="2025/05/20 03:47:42" color="#785bff">}}




{{<matomeQuote body="それってaccelerationismの説明だね。倫理的にはかなり微妙だけど、歴史的には革命を起こすのに効果があるってされてる。" userName="scheeseman486" createdAt="2025/05/20 03:21:25" color="">}}




{{<matomeQuote body="クソみたいな悪いことでも結構うまくいくもんなんだ。みんな悪が好きだからじゃなく、それが一番効果的だからやるんだよ。嘘とかプロパガンダとか大勢を撃つとかも、革命を促すにはすごい有効だけど、それが良いアイデアって意味じゃない。" userName="CobrastanJorji" createdAt="2025/05/20 17:21:49" color="#ff5733">}}




{{<matomeQuote body="マジメに考えれば、政府の情報のほぼ全部は国民には何も困ることなく公開できるのは明らかだよ。現役の軍事作戦とかスパイ活動、システムアクセス方法（パスワードとか）くらいが例外かな。他は大体大丈夫。政治家は恥ずかしいだろうけど、安全なんだよ。" userName="Yizahi" createdAt="2025/05/20 11:50:50" color="#45d325">}}




{{<matomeQuote body="恐喝とか迫害とか恥（不倫とか難民のこと、病気とか）のリスクも考えなきゃ。大抵の場合、市民には秘密を守ったり嘘ついたりする権利があるんだ。" userName="vharuck" createdAt="2025/05/20 14:58:35" color="#785bff">}}




{{<matomeQuote body="市民？うん、そう。政治家が仕事以外で好きなように連絡するのも？うん、それもそう。でも政治家が仕事中は？ダメ！彼らの仕事の通信は全部公開できるべきだし、そしたら人類も国民も今よりずっと安全になるはずだよ。軍事とかインテリジェンスは別だけどさ。" userName="Yizahi" createdAt="2025/05/20 16:08:41" color="#785bff">}}




{{<matomeQuote body="政府の通信漏洩には、無関係な市民や職員のセンシティブな情報（兵士、患者など）が含まれる可能性があると思う。特に議員のチャットは。公開自体は否定しないけど、関係ない人の名前とか個人情報はredactしてほしい。ただし、当局が編集済みを偽造だと言う可能性もあるから、検証可能なままの方が良いかもね。" userName="vharuck" createdAt="2025/05/20 21:08:01" color="#785bff">}}




{{<matomeQuote body="今回の件はTrump adminのテキスト漏洩の話で、国民への”ひどい暴力”とは全然違うって文脈を理解することが大事だと思う。片方は良いかもしれないけど、暴力は悪い。<br>ただし、WikiLeaksみたいに無関係な人の情報が流出しちゃうのは心配だね。<br>正直、ただゴシップが見たいだけなんだけどさ。" userName="rtpg" createdAt="2025/05/20 05:27:33" color="#785bff">}}




{{<matomeQuote body="その引用文、市民が他人に痛みを与えるって意味じゃないよ。なんか変な読み方だね。ダメなリーダーを投票で追放しようって言ってるだけだよ。他になんか選択肢あると思う？" userName="oivey" createdAt="2025/05/20 04:38:32" color="">}}




{{<matomeQuote body="もし、人を傷つけるのを止めるために人を傷つけてるんだとしたら…？" userName="TechDebtDevin" createdAt="2025/05/20 05:12:59" color="">}}




{{<matomeQuote body="＞ 関係国の市民はリーダーがちゃんと仕事しないことに怒るべきだし、それは行動に結果が伴う時だけ起こるだろうね。<br>でもその結果ってリーダーには響かないだろうな。ログにどんな情報（内部告発者、エージェントとか）があるかわからないし。もしオープンに漏洩したら、彼らは死んじゃうかもね。" userName="afavour" createdAt="2025/05/20 04:06:23" color="#ff5733">}}




{{<matomeQuote body="超同意。AusのCabinet Leaksを思い出したよ（https://www.abc.net.au/news/2018-01-31/cabinet-files-reveal-…）。国営放送が2つだけ報道して残りは政府に返したんだけど、これで政治の方向性が変わっただろうな。公開すべき情報がいっぱいあったはず。今回の件も多分同じだよ。どの政党とかじゃなくて、国民はもっと情報を持つべきだと思うな。" userName="protocolture" createdAt="2025/05/20 03:30:32" color="#ff5733">}}




{{<matomeQuote body="USで政府の通信に外部チャンネル使うのって法律違反じゃないの？ Clintonの時のスキャンダルってこれ全体のことだったっけ？ 間違ってたら教えて。" userName="bob_theslob646" createdAt="2025/05/20 03:59:07" color="#38d3d3">}}




{{<matomeQuote body="驚いたことに、そのアプリ政府の承認済みアプリリストに入ってるんだって。スキャンダルなのは、そこで何話してるかってことだよね。普通は超安全なチャンネルで話すような、めっちゃ機密性の高い情報だよ。" userName="afavour" createdAt="2025/05/20 04:03:10" color="#785bff">}}




{{<matomeQuote body="俺の理解だと、最近追加されたばかりで、もうこれなんだよね。これは「政策変更が最も恥ずかしい結果を招いた」記録的な短期間じゃないかな。たった数ヶ月だよ！" userName="rtpg" createdAt="2025/05/20 05:28:44" color="#38d3d3">}}




{{<matomeQuote body="記事によると：「TeleMessageは少なくとも2023年2月から連邦政府に使われてる」だって。それが承認されてたかは知らないけど。" userName="ensignavenger" createdAt="2025/05/20 14:53:21" color="#ff5733">}}




{{<matomeQuote body="これって承認済みソフトリスト（ホワイトリスト）の落とし穴だよね。不正行為とか職権乱用って、正規の配布元じゃなくて、内部の”ソフトウェアストア”とかで提供される、完全にスパイウェアみたいなソフトバージョンを含みうるからさ。" userName="ok123456" createdAt="2025/05/20 16:43:38" color="#ff33a1">}}




{{<matomeQuote body="そのアプリは規制を守るために存在してる、ってのが俺の理解だったんだけど。" userName="floam" createdAt="2025/05/20 04:19:49" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
