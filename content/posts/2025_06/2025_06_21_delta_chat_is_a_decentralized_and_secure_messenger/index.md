+++
date = '2025-06-21T00:00:00'
months = '2025/06'
draft = false
title = '分散型で安全なメッセンジャーアプリDelta Chat！'
tags = ["メッセンジャー", "セキュリティ", "プライバシー", "分散システム", "メール"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> 分散型で安全なメッセンジャーアプリDelta Chat！

引用元：[https://news.ycombinator.com/item?id=44335065](https://news.ycombinator.com/item?id=44335065)




{{<matomeQuote body="Delta Chatは分散型で安全かもだけど、匿名じゃないよ。Emailって昔からあるシステムで、プライバシーや匿名性は考慮されてないんだ。<br>メッセージの内容を秘密にするにはいいけど、誰と話してるかとか、自分のこととかを隠したいなら、Email経由のDelta Chatは向かないと思う。<br>分散型って言っても、結局Emailのインフラ次第だしね。" userName="heavyset_go" createdAt="2025/06/21 14:43:26" color="#ff5c5c">}}




{{<matomeQuote body="もっと言うと、これ安全じゃないよ。<br>今のまともなセキュアなメッセージングアプリは、前方秘匿性とかメタデータのプライバシーって当たり前だけど、Delta Chatにはどっちもないんだよね。" userName="woodruffw" createdAt="2025/06/21 15:02:52" color="#ff5733">}}




{{<matomeQuote body="Delta Chatの開発者さんたちは、前方秘匿性に取り組んでるらしいよ。<br>メタデータは、自分のサーバーから相手のサーバーへTLSで送るなら、見るのはその2つだけだって。<br>GmailだとGoogleに見られるけど、WhatsAppとかTelegramも同じだしね。<br>もっとプライベートな選択肢もあるけど、友達とのグループだとWhatsAppかDelta Chatかって状況もあるんだ。みんなEmail持ってるからね。SignalとかMatrixは選択肢にないんだって。" userName="em-bee" createdAt="2025/06/21 16:19:30" color="#38d3d3">}}




{{<matomeQuote body="前方秘匿性に取り組んでるってのは良いね。でもあんまり期待してないんだ。<br>PGPって仕組み的に前方秘匿性には向いてないから。<br>それなのに「セキュアメッセージング」って言うのは、ちょっと無責任だと思うな。セキュリティの基準って2000年代からずっと上がってるんだよ。<br>メタデータもね、MTA-STSとか普及してないし、TLSだけじゃダメなんだ。<br>こんな場当たり的なセキュリティ対策は、もう時代遅れだよ。大事なメッセージは、ちゃんと設計されたプロトコルで送るべきだね。<br>URL: https://www.uriports.com/blog/mta-sts-survey-update-2025/" userName="woodruffw" createdAt="2025/06/21 18:25:48" color="#ff33a1">}}




{{<matomeQuote body="どのサービスプロバイダーを使ってるか、誰と連絡してるか、って事実は隠せないんだよ。<br>だからこそ、自分でサービスを選べるってことがすっごく大事なんだ。" userName="singpolyma3" createdAt="2025/06/21 18:07:32" color="#785bff">}}




{{<matomeQuote body="理論的にはね、Cwtchなら（Torが安全なら）誰とやり取りしてるかを隠せる可能性があるよ。<br>SimpleXも同じで、識別子がないのと、.onionリレー経由でメッセージを送る仕組みで、相手を分かりにくくできるんだ。" userName="heavyset_go" createdAt="2025/06/21 18:42:06" color="#ff33a1">}}




{{<matomeQuote body="PGPが前方秘匿性に向いてないって話だけど、開発の中身は知らないけど、PGPを別のものに変えるのは技術的にはできるんじゃないかな。<br>実はね、開発者さんたちはSMTPを使わないで、前方秘匿性があるP2Pのリアルタイム通信プロトコルを作ったんだよ。<br>ちょっと元のコンセプトとは違うけど、開発者さんたちはSMTPやPGPだけにこだわってるわけじゃないし、Delta Chatは今後もっと変わるかもしれないね。" userName="em-bee" createdAt="2025/06/21 19:40:22" color="#ff5c5c">}}




{{<matomeQuote body="CwtchとSimpleXってどう違うの？どっちがいいの？なんで？<br>SimpleXのリポジトリ見たら、「ユーザーがいつ、SimpleXを使ってるか識別できる」って書いてあったんだけど、Cwtchもそうなの？<br>あと、この通信を分かりにくくできないかな？Torとobfs4とかで。<br>関係するリンクもいくつか見つけたよ。<br>#1 - https://security.stackexchange.com/questions/241730/traffic-...<br>#2 - https://github.com/simplex-chat/simplex-chat/issues/4300<br>#3 - https://github.tst-race/race-docs/blob/main/race-channel..." userName="johnisgood" createdAt="2025/06/21 18:49:17" color="#45d325">}}




{{<matomeQuote body="PGPが前方秘匿性に向いてないってのは分かった。でも、Emailってやっぱりセキュアなメッセージングには向いてないよ。<br>メタデータがはっきり見えちゃうのはセキュリティに悪いからね。サーバーにはできるだけ情報を見せないようにしないと。<br>SMTPを使わないP2Pプロトコルを開発したのはすごいけど、それならSignalとかMatrixと比べて何が良いの？って思うな。" userName="woodruffw" createdAt="2025/06/21 19:51:05" color="#ff5c5c">}}




{{<matomeQuote body="そのP2Pプロトコルは、今はリアルタイム通信だけなんだ。お互いオンラインじゃないとダメで、IRCみたいにメッセージは保存されないんだよ。<br>だから、いつものメッセージみたいに保存されるものとは違うんだ。<br>僕が言いたかったのは、開発者さんたちがEmailとかPGP以外のことも考えてるってこと、Delta Chatが今後変わる可能性があるってことなんだ。<br>他の人も言ってたけど、Delta Chatの良いところは、みんなが使ってるEmailの仕組みを使えること、新しいサーバーがいらないこと（でも作れる）だよ。" userName="em-bee" createdAt="2025/06/21 20:18:32" color="#45d325">}}




{{<matomeQuote body="SimpleXとCwtchを比べてるよ。SimpleXはオフラインでも使えるけどプライバシーに疑問符。Cwtchはもっと安全だけど、相手がオフラインだと送れないのが不便なんだ。<br>CwtchはTor経由で直接やり取りするから、誰かが盗み見るのは難しいみたいだよ。SimpleXはサーバー通るからMetadataのリスクがあるって話もしてるね。<br>SimpleXとCwtchどっちがいいかって聞かれたら、僕はSimpleX推し。Sandbox化してTor以外の通信をブロックする感じがいいかな。クライアントも使いやすいしね。<br>Cwtchはオフラインで送れないのがネックだけど、セキュリティは高い。Metadataを送る可能性もあるって読んだけど、定かじゃないんだ。" userName="heavyset_go" createdAt="2025/06/21 19:12:06" color="#ff5c5c">}}




{{<matomeQuote body="Delta Chatの開発者が「既存の枠にとらわれず考えてる」って言うけど、僕はもっと「枠の中で」成功したやり方を取り入れるべきだと思うな。Signalが電話番号使うのは既存インフラ利用の良い例だよ。<br>でもDelta Chatはセキュリティ面でユーザーの期待を裏切ってるって言ってるね。<br>Signalの電話番号利用は、まさに既存インフラ利用だよ。でも、それがユーザーが合理的に期待するセキュリティを損なわない限りって話だよね。Delta Chatは現状そうなってないよ。" userName="woodruffw" createdAt="2025/06/21 23:01:01" color="">}}




{{<matomeQuote body="Torのobfs4みたいなトランスポートのことだよね、多分。RACEっていうのを今読んだんだけど、面白そうだよ。<br>https://github.com/tst-race/race-quickstart?tab=readme-ov-fi...<br>https://github.com/tst-race/race-destini<br>これ、知ってる？ 使ったことある？<br>Cwtchみたいにオフラインだと送れないのが不便だけど安全ってのは僕もそう思うよ。どれくらい安全になるのか気になるな。Ricochetだと友達リクエストだけオンライン必須ってのがいいねって言ってる。" userName="johnisgood" createdAt="2025/06/21 19:17:07" color="">}}




{{<matomeQuote body="最新のセキュアメッセージングはForward SecrecyとかMetadataプライバシーが「必須」ってのは極論すぎると思うな。あれこれ求めすぎると普及しないし、Signalだってそこまでじゃないよ。<br>郵便に例えると、住所を書くのと中身をスキャンされるのを一緒にするようなもんだって言ってる。<br>スパイとかなら厳重にするのは当然だけど、普通の人はデータブローカーにプロファイリングされたり、写真がスキャンされたりしないレベルで十分だろって。今のGmailとかSNSのDMよりずっとマシだって言いたいんだね。<br>セキュリティの進歩を妨げてるよ。PFSやMetadata暗号化なんて、技術的にもUX的にも大変なんだ。Signalでさえ完全にやってないじゃん。一般ユーザーはそんなこと期待してないよ。" userName="klabb3" createdAt="2025/06/21 21:43:57" color="#38d3d3">}}




{{<matomeQuote body="Signalが電話番号使うのとDelta Chatがメール使うのは「理由は同じ」って言うけど、全然違うよ！Signalは電話番号隠すの無理だし、集中型で専用サーバーが必要。Delta Chatはサーバーいらないし、メールアドレス複数使えるのが便利。<br>普通の人にとって暗号化メール使うだけでもすごい進歩だよって言ってる。<br>Delta Chatの目標はみんなに暗号化を使ってもらうこと。WhatsAppとかTelegram使ってる人がDelta Chatに変えるだけでも良くなるんだから、全ての人向けじゃないって認めるのも大事だね。<br>普通の人が暗号化メールを知ってる？知ってるわけないじゃん。長年普及してないんだから。セキュリティ期待値なんて人それぞれだしね。目標は暗号化の普及じゃなくてセキュリティだよ。アメリカはMetadataで人を殺してるんだからね。" userName="em-bee" createdAt="2025/06/22 13:05:55" color="#45d325">}}




{{<matomeQuote body="E2EEにおいては、サーバーがメッセージやMetadataを見られないなら、集中型でもセキュリティは問題ないよって言ってるね。最低限、ユーザーが誤って暗号化を解除できなくて、Metadataを垂れ流さないE2EEが必要だ、それが「テーブルステークス（必須条件）」だって強調してる。<br>普通の人々が暗号化メールを知ってて正しく使えるなんて全く思わない。20年以上経つのに普及してないし、平文で返信・転送しちゃうのが一番多い失敗例だって。<br>目標は「暗号化の普及」じゃなくて「セキュリティ」だよ。Metadataで人が殺される例まで出して、イデオロギーよりセキュリティが先だって強く言ってるね。暗号化の普及はイデオロギーだ。" userName="woodruffw" createdAt="2025/06/22 14:05:16" color="#785bff">}}




{{<matomeQuote body="オフラインでメッセージ送れない方が、Metadataの面ではるかに安全だよって答えてるね。SimpleXはサーバーにIPアドレスを送っちゃうし、サーバーがたった2つの会社に集中してるから、誰かが盗み見ようと思ったら、ユーザー同士のやり取りを簡単に特定できちゃうって。<br>SimpleXとCwtchの比較について、PrivacyGuidesっていうサイトに詳しく書いてあるよって紹介してる。<br>https://discuss.privacyguides.net/t/simplex-vs-cwtch-who-is-...<br>Metadataに関しては断然安全。SimpleXにはサードパーティサーバーがないから、情報を集められないんだ。SimpleXはサーバーにIPアドレスを送っちゃうけど、運営してる会社が２つだけだから、相関付けは難しくないよ。" userName="maqp" createdAt="2025/06/22 00:51:50" color="#45d325">}}




{{<matomeQuote body="「パブリックメールのインフラは分散されてる限り分散型」っていう話だけど、それだけでも普段使ってるほとんどのウェブサービスよりずっと分散してるよね、って言ってるね。" userName="agnishom" createdAt="2025/06/22 00:18:50" color="">}}




{{<matomeQuote body="コメント6への返信で、集中化の話はセキュリティじゃなくてインフラ再利用の文脈だったと説明してるよ。「誤って暗号化解除しないこと」って指摘は認めるって。Metadataの「バラ撒き」は言い過ぎだって反論してて、送受信サーバー間だけならプライベートにできる場合もあるって。普通の人々が暗号化メールを知らないからこそ、Delta Chatみたいに簡単に使えるのが大事なんだ、Delta Mailにも期待してるって言ってる。<br>目標がセキュリティってのは同意だけど、それは長い道のり。Delta Chatを否定するのは、理想が高すぎて現状改善にならないってことになりかねない。電話番号とメールアドレスではプライバシー期待値が全然違うんだって改めて強調してるね。" userName="em-bee" createdAt="2025/06/22 14:34:22" color="#785bff">}}




{{<matomeQuote body="コメント8の「メールインフラの方が分散してる」って話に、「どの点で？」って聞いてるね。実際には、GmailとかOutlookみたいな大手プロバイダーの数って、世の中にあるたくさんのウェブサービスの数より少ないんじゃないの？って疑問を投げかけてるよ。" userName="woodruffw" createdAt="2025/06/22 00:22:25" color="">}}




{{<matomeQuote body="平均的なユーザーはGmailとか使ってて自分でメールサーバを管理してないし、TLSもすべてのサーバで徹底されてないから、Delta Chatが前提とする「メタデータがプライベートになる」状況は実際にはほとんどないよ。<br>それに、みんなSignalみたいな質の高いE2EEアプリを使えるのに、Delta Chatはセキュリティ面で劣るのにメールと勘違いさせて混乱させるだけ。Signalが電話番号を他の人に見せるなんてこともないしね（少なくともデフォルトでは）。" userName="woodruffw" createdAt="2025/06/22 15:08:11" color="#ff5c5c">}}




{{<matomeQuote body="あなたの意見には賛成だけど、SimpleXのプライベートメッセージルーティングを使うと、サーバーからIPアドレスを隠せる可能性があるらしいよ[1]。Tor経由でルーティングすれば、相関攻撃も難しくなるし、公式じゃなくて自分の.onionサーバーを使えばさらに分かりにくくなるかもね。[1] https://github.com/simplex-chat/simplexmq/blob/stable/protoc..." userName="heavyset_go" createdAt="2025/06/22 01:46:27" color="">}}




{{<matomeQuote body="それは違うな。もしあなたのメッセンジャーが、文字通り命に関わるような状況（例えばICEに追われてるとか、自国の法執行機関に狙われてるとか）で使われないように気を使ってないなら、まさに逆効果だよ。<br>こういう議論では「メールで平文で送るか、多少弱くても利用可能なセキュアなツールを使うか」って二択になりがちだけど、それは間違い。みんなには「電子的にメッセージを送らない」っていう第三の選択肢があるんだ。本当に危険な状況にいる人たちは、たとえ信頼できるツールでも送らないような、もっとヤバいメッセージを扱ってるんだから。<br>危険な状況の人に、弱いセキュアメッセンジャーを「ベター・ザン・ナッシング」として勧めるのは、単に悪いアドバイスじゃなくて、完全に無責任な行為だね。" userName="tptacek" createdAt="2025/06/21 22:32:29" color="#785bff">}}




{{<matomeQuote body="ソースはこれ→ https://delta.chat/en/help#pfs<br>基本的には、GPGの使い勝手を良くしたバージョンみたいな感じかな。" userName="lima" createdAt="2025/06/21 15:26:09" color="">}}




{{<matomeQuote body="この議論は大事だし、色々な側面を比較検討するのはより良い意見を形成するために超重要だね。どっちも微妙で直感に反する影響があるってことでは同意してるのは明らかだ。議論すること自体は何も悪くないし、違うって説得されるのは大歓迎だよ。<br>’命に関わる状況で使われないように気を使ってないなら、まさに逆効果’<br>そうだね、これが false-sense-of-security 効果ってやつだ。それは存在してて現実のこと。でも、他にも考慮すべき側面があるんだ。<br>’電子的にメッセージを送らないという第三の選択肢’<br>この前提には異議あり。実際には、Bruce Schneier のアドバイスを聞いたらどうするかじゃなくて、「彼らがどうするか」が重要なんだ。セキュリティについて頭でっかちになって、人々が’そうすべき’通りに行動しないからって匙を投げるのは、俺から言わせれば本当に無責任なことだよ。つまり、連絡先が physically close にいないなら、メッセージを送るために飛行機に乗ったりはしない（できない）。たとえ抑圧的な国家で abortion について話してるとしても、 socially convenient なものを使うのが普通なんだ。運が良ければ、 non-techies が「ねえ、Signalってアプリ試してみない？もっと安全だって聞いたよ」って言うくらいが精一杯の勝利なんだ。<br>例えば、Signalは電話番号を集めるし、 public key validation を強制しないし、 social graph を保護するために onion routing も使ってないから worthless だって言い回るのが counter-example だろうね。それがどれだけ ridiculous か、俺たちは意見が一致してると思うよ、最も重要な側面について意見が違ったとしてもね。<br>結局、すべての security properties の重みを ∞ に設定したら、誰も使わないほどめちゃくちゃ不便なものができあがる。比較的使いやすい PGP でさえ、ピーク時でも Yak farm を始めるのと同じくらい人気がなかったんだからね。" userName="klabb3" createdAt="2025/06/22 14:15:32" color="#45d325">}}




{{<matomeQuote body="ここで「自分の.onion servers」って言うのは具体的にどういう意味？ちょっと曖昧で。自分の hidden service？自分の bridge？hidden services に関しては、それはSimpleX側がやるべきことだよね（Ricochetがそうしてるみたいに）。そうじゃないと、SimpleXでどうやってそれをやるのか、’俺の’を使うようにSimpleXを設定するのか全然分からない。そもそもAndroidでSimpleXをTorで使うにはOrbotが必要だし、’自分の hidden service を使う’なんてオプションがあるかどうかも知らないな、hidden services はそういう風には全然動かないから。<br>それにしても、AndroidでSimpleXに自分のSMPサーバーを使うように設定するにはどうするの？" userName="johnisgood" createdAt="2025/06/22 11:16:36" color="">}}




{{<matomeQuote body="’the average user doesn’t control their mail server’<br>fair point だね。でも選択肢はあるんだ。特定のentityにtrustする必要はないよ。<br>でも critical point は、Signalでさえ誰が誰と話してるか把握できるってことなんだ：<br>https://sanesecurityguy.com/articles/signal-knows-who-youre-...<br>確かにSMTPだと連絡先情報がメッセージの中に直接入ってるから、それはworseだけど、完全に metadata なしで機能するサービスは俺は知らないな。でもSignalは少なくとも চেষ্টা はしてる。<br>’strict transport security for this property. This is not widely true of mail servers on the Internet.’<br>gmail が TLS を require してるんだから、対応してないサーバーはそう多くないんじゃないかと思うけどね。<br>’the average user has multiple high-quality E2EE messaging technologies available to them’<br>available と willing to switch は違うんだ。言ったように、俺の友達はまた別のmessaging service に sign up したがらないんだ。 social media fatigue だね。<br>’why people think Signal shares your phone number with people other than recipients’<br>ポイントはそこじゃないんだ、少なくとも俺にとってはね。Signalとか他の service に自分の number を share するのに抵抗があるんだ、そして worse なことに、話す相手に自分の number を share したくないんだ。後者が fixed されるまで Signal を使うのを refused したんだ。whatsapp も refused したけど、 reach する必要がある多くの人が demand するから、choice がなかったんだ。<br>これらは全て trade-offs だね。 everyone agrees on the same とは限らないし、君の arguments は理解できるし原則的には agree だけど、俺にとっては友達を convince できないから通用しないんだ。自分で mail servers を run してる友達もいるよ。 whatsapp を require する contacts もいるし、 wechat しか使えない人もいる。 most often 俺には choice がないんだ。俺は人々が agree to できる whatever を使ってるんだ、そしてそのために deltachat は a good option だね。 Signal は a better option であり得たかもしれないけど、 unfortunately 彼らの requirement to share phone numbers が最近まで、deltachat や even telegram よりも anything but 1:1 communication with trusted friends (those who i trusted to have my number) にとっては a worse option にしてたんだ。 that has changed now, and i started to use it. but it will take time to build up my contacts there. btw, in some countries it is not even possible to sign up to signal. the number gets rejected." userName="em-bee" createdAt="2025/06/22 17:33:54" color="#45d325">}}




{{<matomeQuote body="’Such as obfs4, I presume.’<br>うん、でも obfs4 の作者は使わない方がいいって言ってるよ、もっと現代的な transports があって flaws が少ないからね。<br>結局、 transport lists は public だから、どんな transport protocol を使っても truly just obfuscation なんだ。あなたの connection を observe して transport relays を map out できる resources を持ってる人なら、あなたが Tor を使ってるかどうかは分かるね。<br>’Have you heard about it, or have you used it before?’<br>聞いたことないけど、面白そうだね。SimpleX に似た mixnet approach をやってるみたいだ。<br>’I agree. How much more secure is that?’<br>あなたの recipient が online になったときにメッセージを queue して relay する third party に rely しなくていいなら、あなたが情報を share する相手が一つ減るね。<br>それによって Tor correlation attacks に対して open になる可能性もあると思う、Ricochet で起こったことみたいにね。Mixnet の overlay が SimpleX や RACE のように、さらなる obfuscation を add できるかもしれないけど、それらの overlays も correlation attacks に対して vulnerable だと思うな。" userName="heavyset_go" createdAt="2025/06/22 00:32:20" color="">}}




{{<matomeQuote body="No. OpenPGP はメッセージフォーマットの standard であって、 architecture standard じゃないんだ。彼らが instant messaging をやってるんだから、 forward secrecy をしない特別な理由はない。hash ratchet をやって double ratchet と呼ぶことだってできるはずだよ。もう少し obsessive にならずに、 instant messaging 環境で device compromise に直面しても user がもっと securely にメッセージを delete できるようにするのが、 probably もっと reasonable だろうね。" userName="upofadown" createdAt="2025/06/22 01:58:01" color="#ff33a1">}}




{{<matomeQuote body="TLSについて、Gmailは必須じゃないって。他のプロバイダと同じで、外部配信はオポチュニスティックTLSだし、MUA接続はユーザー設定次第なんだってさ。みんながTLSをメールの主流だと思ってるのが問題らしいね。Signalについては、電話番号が公開されてもいいならって話だけど、それが嫌ならMatrixとかiMessage（メールIDで）の方が indisputably よりマシだよ。" userName="woodruffw" createdAt="2025/06/22 18:38:17" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="過去の議論はここだよ。<br>05-mar-2025 https://news.ycombinator.com/item?id=43262510 100 comments<br>24-jan-2021 https://news.ycombinator.com/item?id=25893626 148 comments<br>07-jan-2021 https://news.ycombinator.com/item?id=25674894 4 commments<br>27-feb-2019 https://news.ycombinator.com/item?id=19263357 11 comments<br>21-feb-2019 https://news.ycombinator.com/item?id=19216827 56 comments<br>03-feb-2017 https://news.ycombinator.com/item?id=13560279 1 comment" userName="HelloUsername" createdAt="2025/06/21 12:08:33" color="#785bff">}}




{{<matomeQuote body="すっごく役に立つ情報源だね。なんでこれが低評価されてるのか不思議だよ。" userName="data_maan" createdAt="2025/06/21 12:57:11" color="">}}




{{<matomeQuote body="Delta ChatはPFS（Perfect Forward Secrecy）に対応してないってさ。つまり、秘密鍵が漏れたら、傍受された過去のメッセージも全部解読されちゃうんだって。<br>https://delta.chat/en/help#pfs<br> implications を正直に話してるのは偉いけど、Signal Protocolみたいにもっと良いプロトコルがあるのに、 inferior なアプリを使う意味ないよね。" userName="maqp" createdAt="2025/06/21 15:14:11" color="#45d325">}}




{{<matomeQuote body="それは unfair だと思うな。もし他の普通のメッセンジャーアプリならそうだけど、Delta Chatはメールを通信手段に使ってるから特別なレジリエンスがあるんだ。メールをシャットダウンする方がSignalより難しいからね。" userName="Valodim" createdAt="2025/06/21 15:18:20" color="">}}




{{<matomeQuote body="実際にはそうじゃないと思うな。普通のメールユーザーはSignalのユーザーと centralized な点で exactly 同じくらいじゃないかな。<br>自分でメールサーバーを運用すればって言うかもしれないけど、それでは世界の99%以上の人が secure な messaging を使う reasonable な期待から外されちゃうよ。それに、自分のメールホストを secure に保つのも ongoing な苦労だしね。" userName="woodruffw" createdAt="2025/06/21 15:53:41" color="">}}




{{<matomeQuote body="いや、それは違うよ。オープンスタンダードは、企業が所有（そして control）してるアプリより常に superior だろ。<br>俺は自分のメールインフラを全部動かしてる。友達も多くがそうだよ。俺たちは企業の overlord が誰が何を言えるか決めることなくコミュニケーションできるんだ。<br>Signalは企業で、 proprietary なサービスを使うのに電話番号を要求するし、一瞬で締め出すこともできる。勘弁してくれよ。" userName="jjav" createdAt="2025/06/22 07:56:19" color="">}}




{{<matomeQuote body="Signalは企業じゃなくて non profit だし、サービスは proprietary じゃなくてサーバー側も含めて fully open source だよ。<br>とはいえ、centralized だからレジリエンスは低いし、簡単に take down される可能性がある。だから、secure なSignalか、decentralized でレジリエンスが高いDelta Chatかを選ばなきゃいけないね。<br>理論的にはMatrixはその両方を持ってるけど、今はまだSignalほど secure じゃないし、UXは明らかに worst だね。それに普通の人が decentralization を使う上での複雑さもある。どのサーバーを選ぶか、知ってる人がアカウントを持ってるかどうやって知るか… この点はメールとの比較が役に立つはずだけど、それでも電話番号を入れるだけで全部の連絡先がすぐに見つかるほど簡単じゃないね。" userName="flaburgan" createdAt="2025/06/22 10:55:27" color="#ff33a1">}}




{{<matomeQuote body="サーバー側も含めて fully open source って言ってたけど、それは critical な違いで、オープンソースであることよりオープンで interoperable な標準の方がはるかに inferior なんだよ。<br>Signal-the-companyは、 proprietary なコンパイル済みクライアント以外のクライアントを許容しない（多少は tolerates してると思うけど supported ではない）。だから理論的には open source ソフトウェアを使って並行して Signal-protocol ネットワークを動かせるけど、Signal-the-companyが動かしてるネットワークとは interoperate しない。そこが一番人がいるところだろ？だから実際には useful じゃない。<br>これとメールを比べてみてくれ。メールはオープンスタンダードだ。好きなSMTPサーバーでもMUAでも動かせるし（なんなら自分でどっちかあるいは両方書くこともできる）、メールを使ってる全世界の人々と interoperate できるんだ。" userName="jjav" createdAt="2025/06/27 06:40:03" color="#ff33a1">}}




{{<matomeQuote body="“Matrix’s UX is clearly worst”って言ってたけど、どのアプリの話？Element Xとかは例えばSignalと同じかそれ以上にUXが良いと思うよ。" userName="Arathorn" createdAt="2025/06/22 11:22:21" color="">}}




{{<matomeQuote body="要はメールサービスって、他のアプリと違ってシャットダウンが超難しい担保があるんだって。国のメインのメールサービスとかGmailとか、さすがに簡単には止められないでしょ？" userName="Valodim" createdAt="2025/06/21 17:36:18" color="">}}




{{<matomeQuote body="抑圧的な国なら、E2EEアプリを止めるくらいだし、全国的なネット遮断もやるかもね。メールサービスも止めちゃうんじゃない？<br>それに、そういう政府ってメタデータが大好きで、メールはメタデータの宝庫。市民を監視したいなら、むしろメールを使わせたがるでしょ。" userName="woodruffw" createdAt="2025/06/21 18:42:55" color="#785bff">}}




{{<matomeQuote body="メールとかGmailをブロックするのって、SignalとかTorを止めるより、全国ネット遮断に近いレベルでしょ？<br>政府だってタダじゃないんだから。それに、imap.gmail.comへの接続から送受信者とか特定するの、技術的に難しそうだけどな。まあ、勘だけど。" userName="Valodim" createdAt="2025/06/21 21:03:51" color="#ff5c5c">}}




{{<matomeQuote body="メールブロックがネット遮断に近いってのはわかるけど、どっちもやっちゃう政権はいるよ。<br>安全なものがブロックされるからって、不安全なもの使うのはダメ。<br>Signalじゃなくても、メールは違うと思う。Gmail接続だけでもSignalよりメタデータは多いし、暗号化されてない接続ならもっと抜かれ放題だから。" userName="woodruffw" createdAt="2025/06/21 22:22:59" color="#ff33a1">}}




{{<matomeQuote body="政府は技術で頑張る必要ないよ。メールホストに「データちょうだい」って言えば済む話。企業だって政府に協力しがちだし。<br>匿名・プライベートチャットが大事にしてるのは、そういう第三者にデータが残らないことなんだから。" userName="heavyset_go" createdAt="2025/06/22 00:57:08" color="#ff5c5c">}}




{{<matomeQuote body="「メールの方がSignalより止めにくい」って話だけど、Delta Chatってデフォルトで nine.testrun.org ってとこに繋がるみたい。これブロックするの超簡単じゃん。<br>他のサーバーもすぐブロックされそう。<br>Signalも完璧じゃないけど、止めにくさ（レジリエンス）ってセキュリティ評価にはあんまり関係ないと思うな。" userName="maqp" createdAt="2025/06/21 16:41:21" color="#ff33a1">}}




{{<matomeQuote body="Delta Chatが nine.testrun.org に繋がるって話だけど、それってそのサーバーでアカウント作らない限り必要ない動きなんじゃない？<br>たぶんバグだと思うよ。" userName="em-bee" createdAt="2025/06/21 17:15:41" color="">}}




{{<matomeQuote body="それはデフォルトのサーバーに繋ぎに行く動作だよ。ほとんどの人がそうするでしょ。<br>SNIを避けるなら自分で専用サーバー立てるしかないけど、そしたらIPアドレスごとブロックされるだけだよ。" userName="maqp" createdAt="2025/06/21 17:32:01" color="#38d3d3">}}




{{<matomeQuote body="デフォルトサーバーの機能ってまだ1年くらいだよ。Delta Chat自体はもっと前からあるから、大多数のユーザーはまだ使ってないはず。<br>それに、デフォルトサーバーに集中しないように、繋ぎ先をランダムにするのもできるんじゃないかな。" userName="em-bee" createdAt="2025/06/21 19:59:11" color="">}}




{{<matomeQuote body="新しいユーザーはほとんどデフォルトサーバーを使うだろうね。Delta Chatってまだそんなメジャーじゃないし。<br>クライアントが勝手にサーバー選ぶのが良いかもわかんない。電話番号みたいにプロバイダすぐ変えられるわけじゃないしね。<br>ユーザーが信頼できるプロバイダを選ぶようにする手もあるけど、みんなアプリ開発者を信用する傾向にあるからな。" userName="maqp" createdAt="2025/06/22 00:42:42" color="#785bff">}}




{{<matomeQuote body="サーバー間の連携にはEmailを使う必要ないよ、MatrixとかXMPPとか、他にもたくさんのプロトコルがあるんだから。" userName="tcfhgj" createdAt="2025/06/21 16:40:52" color="#ff33a1">}}




{{<matomeQuote body="俺は連合（フェデレーション）の話じゃなくて、あくまでEmailの話をしてたんだ。Signalが昔やってたドメインフロンティングみたいなもんで、ビジネス上重要なサービスをフロントとして使ってるってこと。" userName="Valodim" createdAt="2025/06/21 17:39:16" color="">}}




{{<matomeQuote body="最近のXMPPクライアントはSignalプロトコルで暗号化してるし、Delta Chatみたいに分散型なんだよ。" userName="zaik" createdAt="2025/06/21 21:52:57" color="#785bff">}}




{{<matomeQuote body="XMPPは暗号化を後付けしてもプライバシーの落とし穴がたくさんあるんだ。Emailみたいに、プライバシーを考えて設計されてないからね。" userName="heavyset_go" createdAt="2025/06/22 01:55:35" color="">}}




{{<matomeQuote body="フォワードシーシーは今まさに議論中だよ。このリンク見てみてね。https://support.delta.chat/t/autocrypt-key-rotation/2936" userName="em-bee" createdAt="2025/06/21 16:25:15" color="#ff5c5c">}}




{{<matomeQuote body="これEmail互換でPGPで暗号化するんだ。フォワードシーシーはないし、PGP持ってない人には暗号化しないメッセージも送れる。暗号化されてないメッセージを受け取ると、その相手とのチャットは自動で非暗号化に切り替わるらしい。<br>なりすましで暗号化されてないEmail送られたら、Delta Chatはどう反応するんだろ？拒否するのかな、それとも勝手に非暗号化に切り替えるのかな？" userName="sixtiethutopia" createdAt="2025/06/21 10:58:35" color="#785bff">}}




{{<matomeQuote body="確実に暗号化された状態にするには、2人で暗号化グループチャットを作る方法があるよ。ヘルプに詳しく書いてあるから見てみてね。https://delta.chat/en/help#how-can-i-ensure-message-end-to-e..." userName="folmar" createdAt="2025/06/21 11:50:01" color="#ff33a1">}}




{{<matomeQuote body="彼らの仕様を見た？認証付き暗号がある新しいOpenPGP標準を使ってるのかも？それか単に署名してるだけか。単なるEmail+PGPじゃなくて、もっとオーバーレイシステムみたいな感じじゃないかな。" userName="deknos" createdAt="2025/06/21 14:28:49" color="#ff5733">}}




{{<matomeQuote body="＞フォワードシーシーなしでPGP持ってない人には非暗号化もサポート<br>マジかよ！SignalがSMSサポートやめた理由がこれだよ。どういう設計判断なんだよ、これは！" userName="maqp" createdAt="2025/06/21 16:43:24" color="">}}




{{<matomeQuote body="ちなみに、SignalのSMSの前身であるTextSecureはフォワードシーシーを提供してたんだよ。詳しいことはこのリンクに書いてあるよ。https://signal.org/blog/asynchronous-security/" userName="joecool1029" createdAt="2025/06/21 17:25:28" color="#ff5733">}}




{{<matomeQuote body="Signalは前E2EEじゃないSMSも対応してたから危険だったんだ。だからやめたのは正解。おばあちゃんがSignalのメッセージは全部安全だって思っちゃうのは良くないもんね。" userName="maqp" createdAt="2025/06/21 17:33:58" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Delta Chatじゃなくて0xchatはどう？秘密鍵でログインできて、個別もグループも全部暗号化。Lightning決済もできるらしい。分散型でNostrベース。全部のOSで使えるってさ。詳しくはこっち見て→https://www.0xchat.com/" userName="shark_laser" createdAt="2025/06/21 12:58:15" color="#785bff">}}




{{<matomeQuote body="0xchatへのツッコミ。https://github.com/0xchat-appにデスクトップ版ないって書いてあるし。DMが3種類もあるのが変。一番使われてるNIP-04は非推奨なのに人気でTelegramみたい。Gift-Wrappedは前方秘匿性ないし。Secret DMは端末間で移せないし、相手の許可がいるとか意味不明。セキュリティプロトコルがごちゃごちゃしてるのはダメでしょ。" userName="maqp" createdAt="2025/06/21 15:31:05" color="#785bff">}}




{{<matomeQuote body="Delta Chatのいいとこは、みんなメールアドレスを持ってるってことだよね。Nostrベースのチャットはいいと思うけど（Nostr好きだけど）、メールみたいにどこでも使えるわけじゃないし、全然普及してないもんね。" userName="rpdillon" createdAt="2025/06/21 13:33:17" color="">}}




{{<matomeQuote body="Delta Chatだって普及してないよ。誰もGmailのUIでチャットしないし、結局別のネットワークと一緒。メールアドレスをIDにするのは良いアイデアだけど、メールのプロトコルをIMに使うのはなんか無理矢理感あるし、オーバーヘッドもヤバそう。結局、対応サーバーが限られて別のプロトコルみたいになるんじゃない？" userName="lxgr" createdAt="2025/06/21 14:45:05" color="#ff33a1">}}




{{<matomeQuote body="メールヘッダーのオーバーヘッドってのは確かにあるよね。メッセージだけじゃなくて、ステータスの更新でもメールが飛ぶから、めっちゃメールが増えそう。それは大変だわ。" userName="em-bee" createdAt="2025/06/21 16:28:51" color="">}}




{{<matomeQuote body="Matrix、XMPP、IRC以外で、誰でもサーバーもクライアントも作れるメッセンジャーって少ないんだよね。それができないと閉鎖的になっちゃうし、セキュリティ的にも将来的に問題。Delta Chatは完璧じゃないけど、非暗号化とか、全部運営任せのE2EEよりは全然マシ。Telegram、Discord、Facebook Messengerとかはマジでやめとけって。" userName="AJ007" createdAt="2025/06/21 14:34:49" color="#ff33a1">}}




{{<matomeQuote body="Delta ChatはSignalより安全じゃないよ。Signalこそ一般人におすすめのゴールドスタンダード。Telegramよりマシって言われても、それはハードル低すぎでしょ。" userName="maqp" createdAt="2025/06/21 15:33:12" color="">}}




{{<matomeQuote body="Telegramが一番使いやすいアプリだよ。使いやすさならWeChatとかDelta Chatもいい線いってる。でも、スマホとか電話番号いらないのはDelta Chatだけなんだよね。Signalもやっと電話番号隠せるようになったのはちょっと進歩かな。" userName="em-bee" createdAt="2025/06/21 16:46:38" color="">}}




{{<matomeQuote body="Telegramは9億人のデータが漏洩する時限爆弾。Delta Chatなんて誰も使ってるの聞いたことないし。Delta ChatはIPアドレスをサーバーに送っちゃうから、サーバー側でメタデータを集められるし、政府機関に筒抜けになるリスクがある。メタデータのプライバシーをちゃんと守りたいなら、Delta ChatとかSignalじゃなくてCwtchを使うべきだよ。" userName="maqp" createdAt="2025/06/21 16:57:45" color="#785bff">}}




{{<matomeQuote body="Telegramは9億人のデータが漏洩待ちな時限爆弾だね。ロシアはデータを全部持ってそう。ルーマニア大統領選に介入したり、Durov名義でルーマニア人に変なメッセージ送ったりしたみたい。<br>https://www.reuters.com/world/europe/telegram-founder-says-h...<br>だから「セキュリティ」は信用できないと思う。" userName="nottorp" createdAt="2025/06/22 08:33:18" color="">}}




{{<matomeQuote body="nine.testrun.orgはDelta Chatの開発者が持ってるから、Matrix.orgくらい信頼できるかな。自分でサーバー持つのが一番良いけど、それは現実的じゃない。<br>一番大事なのは、使いやすさ、セキュリティ、プライバシーのバランスだね。Delta Chatは最高じゃないけど、かなり良いと思うよ。セキュリティやプライバシーが面倒すぎると、誰も使わなくなっちゃうからね。" userName="em-bee" createdAt="2025/06/21 17:26:45" color="#ff5733">}}




{{<matomeQuote body="自分でサーバー持つのは実際にはうまくいかないよ。身近な人にメタデータを覗かれるリスクが高まるからね。<br>問題は、ベストな選択肢は何かじゃなくて、根本的な制約がある中で、UXや機能を最大限に高めたデザインのツールは何か、だよ。<br>Delta Chatはコンテンツはプライベートだけど、メタデータはポリシー次第（サーバーが集めないという内部ルール）で、Signalみたいに裁判で試されてないから確実じゃない。<br>Signalはコンテンツがポリシー次第なんだ。<br>CwtchはTor Onion Servicesを使うから、メタデータは設計でプライベートだね。<br>Element＼MatrixはE2EEで、Delta Chatにはないフォワードシーカシーとフューチャーシーカシー両方ある。セキュリティが同等になって初めて、使いやすさを比較すべきだよ。使えるけど安全じゃないツールは、政治的な意見で捕まった時に使えなくなるかもよ。" userName="maqp" createdAt="2025/06/21 17:53:58" color="#ff33a1">}}




{{<matomeQuote body="理想的にはそうだけど、普通のユーザーはそうしないし、俺が人に安全なものに変えろって説得する argumentにもならないよ。ユーザーはセキュリティより利便性を優先するんだ。<br>言いたいことはわかるけど、家族や友達には響かないな。特に監獄行きを argumentにするのは全然ダメだよ。それなら、この議論自体Hackernewsでするべきじゃないってことになるでしょ？だって権威を覆すようなこと（通信を秘密にすべきだと示唆）をしてるんだからさ。" userName="em-bee" createdAt="2025/06/21 20:11:50" color="#ff33a1">}}




{{<matomeQuote body="「身近な人にメタデータを覗かれるリスクが高まる」って argumentはちょっと納得できないな。俺は自分のサーバーより、もっと大きいサーバーの方がデータが捕まる可能性が高いと思うんだ。誰かが俺のサーバーを狙うなら、俺のメッセージクライアント全部も狙えるだろうし、そっちからデータ全部取れるんじゃない？" userName="em-bee" createdAt="2025/06/22 14:57:16" color="">}}




{{<matomeQuote body="もしお互いを知ってるユーザーが3人いて、そのうち1人がサーバーを運用してるなら、そのサーバーをやってる人が他の2人の1対1の会話のメタデータにアクセスできる人が1人いるってことになるよね。あなたがサーバーを運営してるなら、友達はあなたが変な人じゃないかってリスクを負ってるんだ。<br>これを解決する正しい方法はP2P messagingだよ。Cwtchみたいに、各ユーザーが自分のアカウントのためにサーバーを動かすんだ。Cwtchはグループチャットのためにサーバーに暗号文をキャッシュする実験もしてるから、メタデータを覗かれる心配もないよ。" userName="maqp" createdAt="2025/06/22 19:57:42" color="">}}




{{<matomeQuote body="まあ、それは脅威モデルによるね。俺にとっては、知り合いに誰と話してるか知られるのは脅威じゃないんだ。脅威なのは大企業によるプロファイリング。自分でサーバーを動かすか、小さめの有料メールサービスを使うだけで、その脅威は drastically減らせるよ。<br>実際、君が言うその特定の脅威は、大学のサーバーの方が起こりやすいと思うな。変な adminが権限を使って、 stalkしたい人たちの情報を snoopingするかも。俺が信頼できる友達とか、地元のLinuxユーザーグループやhackerspaceの adminの方が、ずっと信頼できるよ。<br>面識がある人の方が、たとえその人が snoopingしようとしても face to faceで解決できるし、それが友情に影響するからそうなる可能性は低いと思う。ほとんどの人にとってこれは当てはまるんじゃないかな。<br>結局、誰かを信頼する必要があるわけで、その人が近ければ近いほど、問題を解決しやすくなるんだよ。" userName="em-bee" createdAt="2025/06/22 21:44:02" color="">}}




{{<matomeQuote body="身近なpeer networkでも、 stalkingみたいなことは起こるんだよ。messaging appが意味を持つには、友達のほとんどが入ってないとダメで、数百人もいれば悪用できる力が出てくる。<br>大学生は施設の infrastructureを動かすことはできないし、少なくとも俺の大学では、古い ITスタッフや facultyは授業以外で学生とあまり一緒にいないから、距離がある。それに、給料や careerもかかってる。<br>でも、誰が trustworthyかって言い争うのは pointlessだよ。そういう状況のための trustlessな architectureが既にあるんだから。" userName="maqp" createdAt="2025/06/24 00:20:06" color="">}}




{{<matomeQuote body="身近なpeer networkでも、 stalkingみたいなことは起こる<br>起こらないとは言ってないけど、グループが小さいほどリスクを評価しやすいし、結果も分かりやすいってことだよ。だから俺は小さいグループの方が好きなんだ。<br>オーストリアやドイツでは学生がpart timeで sysadminの仕事をするのは普通だよ。俺もやったし、可愛い学生を stalkingした職員の話もある。<br>誰が trustworthyかって言い争うのは pointless<br>同意だね。結局は個人の経験と preferenceだよ。<br>そういう状況のための trustlessな architectureが既にある<br>問題は、選択が vacuumで行われるわけじゃないってことだね。友達が使いたがらないシステムに何の意味がある？俺の連絡先のほとんどは、他の人が選んだものに従うしかなかったよ。俺の選択に従ってくれた人は滅多にいない。そして、もし従う人がいても、彼らの technical capacityや困難への toleranceを考えなきゃいけない。" userName="em-bee" createdAt="2025/06/24 01:15:08" color="">}}




{{<matomeQuote body="Telegramは確かに素晴らしいUX、速度、multi-device supportがあるよね。クライアントは全部open sourceだから、（複雑で大変だけど）Matrix protocolを使うようにportしたり、upstreamの TG codeと syncするために sidecarとして動くprotocol bridgeを挿入したりできないかなっていうアイデアを数ヶ月前に思いついたんだ（Pavel自身が tremendousな量の codingをしてるみたいだし）。<br>誰か challengeしてみない？" userName="eMPee584" createdAt="2025/06/22 10:13:40" color="">}}




{{<matomeQuote body="MatrixのUIはいいけど、暗号化がたまに失敗するのが問題みたい。Delta Chatは失敗しても使えるけどダウングレードするし、Matrixは止まっちゃう方が一般ユーザーには辛いよね。UIだけ良くしても解決しないんだな〜。でも、Delta ChatもUIいいし、Matrixで使ってるFluffyChatも結構良いよ。" userName="em-bee" createdAt="2025/06/22 14:52:48" color="#38d3d3">}}




{{<matomeQuote body="ちょっと素朴な質問なんだけど、暗号化されたメッセージをブロックチェーンに保存すれば、これって解決するんじゃない？" userName="promptdaddy" createdAt="2025/06/21 15:08:11" color="">}}




{{<matomeQuote body="なんでそんなことしたいの？セキュアなメッセンジャーで一番嫌なのは、メッセージの内容とかメタデータが誰でも分析できる永久的な台帳に残ることだよ。ちなみに、君にはダウンボートしてないし、こんな正直な質問をした人をダウンボートすべきじゃないと思うな。" userName="heavyset_go" createdAt="2025/06/21 15:17:15" color="">}}




{{<matomeQuote body="Nostrって、メッセージを特定の人に送ったっていう事実をブロックチェーン経由で晒しちゃうんじゃない？" userName="heavyset_go" createdAt="2025/06/21 15:37:33" color="">}}




{{<matomeQuote body="Nostrにはブロックチェーンもトークンもないよ。“Notes and Other Stuff Transmitted by Relays（リレーで送信されるノートとその他のもの）”。単に[websocket]リレーで配信される署名付きJSONメッセージなんだ。" userName="unboxingelf" createdAt="2025/06/22 01:42:18" color="#785bff">}}




{{<matomeQuote body="もしかしたら、実物と例えを混同してるかもだけど、僕の質問はこういう意見[1]に基づいているんだ。「Nostrは暗号化されたDMを送れるけど、そのメタデータはリレー経由で公開 broadcast される。これはBitcoinのトランザクションが公開台帳で見られるのと同じ。DMの内容は暗号化されるけど、送信者や受信者みたいなメタデータは誰でも見られる」。＜br/＞[1] https://ron.stoner.com/nostr_Security_and_Privacy/" userName="heavyset_go" createdAt="2025/06/22 02:02:27" color="">}}




{{<matomeQuote body="見え方のアナロジーとしてはその通りで、Nostrにブロックチェーンが関わってるって思うのも無理はないよ。でも、はっきり言うと、ないんだ。世の中には“Nostr”って名前でトークンやブロックチェーンを立ち上げてる詐欺師がたくさんいるから、これは強調しておきたいね。" userName="unboxingelf" createdAt="2025/06/22 15:01:40" color="#38d3d3">}}




{{<matomeQuote body="君の直感は合ってるよ。Nostrのオブジェクトはリレーに保存されて、適切な秘密鍵を持ってるクライアントなら誰でも取得できる。僕がNostrを1ヶ月か2ヶ月試した感じだと、オブジェクトの削除が難しかった（クライアントがNIP API呼び出しに対応してないのが多かった）し、DMは自分の分しか消せないんだ（相手のメッセージは inbox から永遠に消せない）。要するに、Nostrオブジェクトはサーバー側の有効期限ポリシーが切れるか、削除方法が分からない限り、リレーに残りっぱなし。Nostrクライアント（ウェブもモバイルも）は、どの機能やNIPに対応してるか、まさにXMPPの再来で運任せ。この経験で僕も不満を感じた。リレーもまた混沌としてて、どれを選ぶか悩むし、うまくいくかは運次第。IMとして致命的なのは、Nostrは全リレーの同期を保証しないこと。ユーザーは自分で使うリレーを選ぶんだけど（有料リレーもある）、他の人が使ってないリレーにいるとコンテンツを共有できないなんて普通にあった（僕も経験した）。これはIMアプリとしては終わってるし、Nostrを使おうとするだけでイライラしたよ。（あと、ポルノや crypto shills ばかりで flooded されてるしね）追記：Nostrクライアントは、たくさんのリレーに network connections を開いておかないといけない。オブジェクトは複数のリレーに保存されうるし、全部のリレーに問い合わせてJSON response の重複を de-dupe するのはクライアントの仕事なんだ。combobouncerっていう de-dupe してくれるツールもあるけど、デフォルトじゃないし、read-only になりがち（combobouncer を使うと、どこに投稿するか選べないから）。" userName="styanax" createdAt="2025/06/22 11:13:08" color="#38d3d3">}}




{{<matomeQuote body="0xchat は表面的には良さそうだね。 professionally maintained な codebase に見えるし、開発者とコミュニケーション取る方法も明確。でも、 security audit はされたのかな？" userName="data_maan" createdAt="2025/06/21 13:05:50" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
