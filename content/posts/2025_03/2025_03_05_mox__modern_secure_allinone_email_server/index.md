+++
date = '2025-03-05T00:00:00'
draft = false
title = 'モダンで安全！全機能備えたメールサーバーMoxの登場'
tags = ["メールサーバー", "セキュリティ", "自己ホスティング", "シンプル設計", "テクノロジー"]
featureimage = 'thumbnails/color3.jpg'
+++

> モダンで安全！全機能備えたメールサーバーMoxの登場

引用元：[https://news.ycombinator.com/item?id=43261729](https://news.ycombinator.com/item?id=43261729)

{{<matomeQuote body="PostfixとDovecotの設定で20時間以上の苦労をした後、Moxに出会いたかった。シンプルなバイナリメールサーバーで、古いUNIXの遺物は要らないって思う。世代交代の必要を感じるけど、今は少しPostfixとDovecotの知識があるからMoxを見てみようと思う。" userName="QuadrupleA" createdAt="2025-03-05T04:50:46" color="#785bff">}}

{{<matomeQuote body="PostfixとDovecotは長年使ってきたけど、僕には高品質なソフトだと思ってる。柔軟性があるから、学び方や設定が複雑になると感じる人もいるかも。でも、全体をパッケージ化したメールサーバーを使う方が簡単だと思う。特に初心者には、複数の部分を組み合わせるのが難しいよね。メールの標準も古いから、Postfixを信頼してるし、新しいものは慎重になってしまう。" userName="citrin_ru" createdAt="2025-03-05T09:13:23" color="">}}

{{<matomeQuote body="PostfixとDovecotの初期の設定が難しいって思うのは、主にUNIXアカウントを前提にしてるからだって主張したい。設定やドキュメントが80年代の物みたいで、長い説明が必要なんだ。DKIMのサポートが薄いとか、SASLの設定も苦しいって感じる。ことごとくレガシー感があると思ってる。" userName="QuadrupleA" createdAt="2025-03-05T16:19:22" color="">}}

{{<matomeQuote body="OpenDKIMは10年以上問題なく使えてるし、僕のディストロのデフォルトリポジトリにも入ってる。SASLもPostfixとDovecotでうまく動いてるし、認証されたユーザーだけでメール送信できてる。CRAM-MD5を使うのが推奨されてたから、PLAIN一択ではない。積極的に使ってる人がいるから安心。" userName="account42" createdAt="2025-03-06T09:45:56" color="#38d3d3">}}

{{<matomeQuote body="PostfixやDovecot、Roundcubeなどでの設定には時間がかかったけど、今では多機能な仕組みを作れた。IMAPで過去30年分のメールを探せるプラグインもあるし、スパム対策も考慮に入れてる。でも、IPアドレスが汚染されちゃうことが多いから、信頼できるホスティングサービスを選ぶべきだね。" userName="bsdice" createdAt="2025-03-05T10:41:30" color="#ff5733">}}

{{<matomeQuote body="今これ使ってるけど、大好き！セットアップが簡単なmail-in-a-boxは意見が偏ってるけど安定してる。Stalwartもすごく設定できるし、OAuth2サーバーもある。Moxも試してみたいけど、サイトがDDOSされたかも。" userName="elliotali" createdAt="2025-03-05T08:18:33" color="#785bff">}}

{{<matomeQuote body="mail-in-a-boxを5年間使ってるけど、すごく満足。安定性が最優先で、セットしてそのままで使えるのがいいね。CalDAVやCardDAVも含まれてて、GoogleのMailやContacts、Calendarの代替として使えるのが嬉しい。" userName="guillermin" createdAt="2025-03-05T09:01:01" color="#45d325">}}

{{<matomeQuote body="OpenBSDとの互換性はどうなのかな？そのまま使えるのか、少し変更が必要なのか気になる。" userName="rekabis" createdAt="2025-03-06T23:31:36" color="">}}

{{<matomeQuote body="OpenDKIMは簡単に設定できるし、初回は30分もかからなかった。Postfixのドキュメントは素晴らしいし、`postconf`で簡単に設定変更ができるから、とても便利だと思う。" userName="megous" createdAt="2025-03-05T10:02:21" color="#ff5733">}}

{{<matomeQuote body="OpenDKIMってメンテされてないし、Ed25519署名もサポートしてないよね。" userName="Avamander" createdAt="2025-03-05T10:04:49" color="">}}

{{<matomeQuote body="自分のLinuxディストロではちゃんと動いてるけど、4.5年使ってるよ！" userName="megous" createdAt="2025-03-05T13:34:06" color="">}}

{{<matomeQuote body="そう言われると...最後のコミットが2018年で、リリースは2014年とか、2018年にはベータリリースがあっただけだね。" userName="tecleandor" createdAt="2025-03-05T12:05:48" color="">}}

{{<matomeQuote body="＞”20時間以上もかかって、PostfixとDovecotの設定で大変だった。”<br>手動でやったの？それともMailcowとかの既製品使ったの？" userName="throw0101d" createdAt="2025-03-05T13:25:37" color="#785bff">}}

{{<matomeQuote body="MailcowとMoxの比較:<br>MailcowはSOGoワーカーが約350MiBのRAMを使用するみたいで、今後ActiveSyncの接続数によってRAMが必要になるよ。<br>Moxは現状100MB未満で済んでるけどね。" userName="kbmn" createdAt="2025-03-05T14:30:10" color="#ff5c5c">}}

{{<matomeQuote body="手動で設定したよ。できるだけスリムでリソース効率の良い構成を理解したくて。" userName="QuadrupleA" createdAt="2025-03-05T20:40:01" color="">}}

{{<matomeQuote body="https://workaround.org<br>は各コンポーネントの良い説明があって、理解しやすいよ。あんまり魔法みたいなことはないな。" userName="throw0101d" createdAt="2025-03-05T21:00:13" color="#ff33a1">}}

{{<matomeQuote body="結局あきらめて、今はhttps://github.com/docker-mailserver/docker-mailserverを使ってるけど、特に問題ないし、新しい選択肢も出てきて嬉しい！" userName="KronisLV" createdAt="2025-03-05T05:22:21" color="">}}

{{<matomeQuote body="それって通過儀礼みたいなもんだよね。その設定システム…" userName="coob" createdAt="2025-03-05T17:15:48" color="">}}

{{<matomeQuote body="以前の職場で使ってたsendmail.cfよりはるかにマシだね。これはメールアドレスを解析するためのルールだよ。特に、特殊なケースやRFC822の基本的な解析が楽になってる。これは便利だと思う。" userName="throw16180339" createdAt="2025-03-05T23:23:02" color="#785bff">}}

{{<matomeQuote body="最近Mailuに切り替えたんだけど、超満足してるよ。" userName="sgt" createdAt="2025-03-05T05:52:24" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ちなみに、ウェブメールは無効にしたんだ。ユーザーはあまり必要ないと思うし、Gmailの体験に勝るものはないから、Mail.appやiOSのMailみたいなちゃんとしたメールクライアントを使うように勧めた方がいいって思う。" userName="sgt" createdAt="2025-03-05T05:58:07" color="">}}

{{<matomeQuote body="＞何もGmailの体験に勝るものはないと思う。<br>それは個人の好みの問題かもしれないね。自分はGmailがとても混乱していて、使いやすくないと思ってる。それに、FastMailのUIはかなり直感的だから好き。" userName="rytis" createdAt="2025-03-05T09:38:19" color="">}}

{{<matomeQuote body="以前はGmailのインターフェースは優れていると思ってたけど、Fastmailに移ってから考えが変わったよ。" userName="aryonoco" createdAt="2025-03-05T10:07:03" color="#ff5733">}}

{{<matomeQuote body="Mailuを支持するよ。数年間ほとんどメンテナンスなしで動かしているけど、個人的には頻繁には使ってない。ただ、必要な時にはスムーズに動いていて助かってる。" userName="BLKNSLVR" createdAt="2025-03-05T11:31:00" color="#785bff">}}

{{<matomeQuote body="受け取るのも同じだね。大手のMicrosoftやGoogleが何をスパムに入れるかを決めているし。" userName="nicce" createdAt="2025-03-05T10:17:59" color="">}}

{{<matomeQuote body="Microsoftの場合、インボイスや自社からの期限切れのクレジットカード通知さえスパムにされることが多いよ。それで困ったこともある。ただ、画面の役に立たない縦のスペースを埋めるCopilotバーがあるのは良いね！" userName="fodkodrasz" createdAt="2025-03-05T11:23:32" color="">}}

{{<matomeQuote body="数年前にOpenSMTPDに切り替えたけど、DovecotをIMAP用に残して、rspamdでDKIMの署名をしたよ。ガイドを参考にしてうまく動かせてるけど、MicrosoftやGoogleが時々自分のサーバーのIPからメールをブロックしてくるから、正直面倒になってきた。だから、19ユーロでMigaduに任せることにしたんだ。" userName="arielcostas" createdAt="2025-03-05T19:38:20" color="">}}

{{<matomeQuote body="このジャンルに特有のプロジェクトじゃないよね。Mailuみたいな他のプロジェクトもあって、Dockerコンテナで伝統的なコンポーネントのデプロイの面倒を軽減してるかな。Mailuに行かなかった理由はあるの？自分のサイドプロジェクト用にメールサーバーを立てたいから、意見を聞きたいな。”mailu.io”をチェックしてみて。" userName="GTP" createdAt="2025-03-05T11:56:39" color="#38d3d3">}}

{{<matomeQuote body="Maddyに任せてるんだけど、超ありがたいよ。" userName="figassis" createdAt="2025-03-05T08:14:51" color="">}}

{{<matomeQuote body="PostfixとDovecot、OpenDKIMの設定は簡単だったよ。なんで20時間以上の面倒くさい思いをしないといけないか分かんない。" userName="account42" createdAt="2025-03-06T09:32:31" color="">}}

{{<matomeQuote body="結局、自分でMailcowをホスティングすることにしたよ。サポート費を払った方が他の生産的なことに集中できるからおすすめ。" userName="Emoticon4032" createdAt="2025-03-05T19:14:59" color="#ff5c5c">}}

{{<matomeQuote body="このサービスを一つのドメインで使ってるけど、1年以上安定してるよ。" userName="dwedge" createdAt="2025-03-05T08:37:30" color="#ff5c5c">}}

{{<matomeQuote body="Postfixが人気なのは訳が分からない。嫌われてるのに。OpenSMTPdの方がずっと簡単に設定できる。" userName="WhyNotHugo" createdAt="2025-03-05T05:11:02" color="">}}

{{<matomeQuote body="なんで嫌われてるのか全然わからない。俺にとってはベストなオープンソースサーバーパッケージだよ。難しい問題に直面したら、ネットで使える設定が見つかるから助かってる。" userName="ofrzeta" createdAt="2025-03-05T06:01:02" color="#ff33a1">}}

{{<matomeQuote body="Sendmailから始めたらPostfixは悪くなかったよ。" userName="tmn007" createdAt="2025-03-05T05:31:08" color="">}}

{{<matomeQuote body="そうそう、Qmailもひどかった（今でも？）視点によって大体のことが変わる。" userName="n3storm" createdAt="2025-03-05T07:01:17" color="">}}

{{<matomeQuote body="自分でメールサーバーをホスティングして何年も経つけど、最近Moxを使い始めたんだ。シンプルで、手間もかからなくて、バックアップやアップデートも数分で終わるのがいいね。ただ、見せると人によってはこのシンプルなインターフェースを古臭いと勘違いすることもあるんだよね。すごく現代的なのに。" userName="kbmn" createdAt="2025-03-05T13:10:15" color="#ff33a1">}}

{{<matomeQuote body="個人用のメールサーバーのメリットって何？今って、メールがスパムだらけになりやすいし、主要なメールサービスにスパム扱いされることが多いんじゃない？そういう問題、どうやって解決してるの？見えてない問題もあるのかな？" userName="volemo" createdAt="2025-03-05T13:37:37" color="">}}

{{<matomeQuote body="スパムの問題って誇張されてると思うよ。Thunderbirdのフィルタリングでほぼ無視できるし、スパムフォルダも時々確認するぐらい。自分のサーバーなら好きなスパムフィルタを設定できるし、実際、自分に連絡してきたい人の方が大事だと思う。" userName="account42" createdAt="2025-03-06T10:20:36" color="">}}

{{<matomeQuote body="Gmailもスパムが多いよね。スパムに振り分けられることも多いし、確認する手間がかかる。自分もMoxに移行するために準備中だけど、最初のテストメールがスパムに入ってしまった。ドメインが新しいからちょっと様子見だね。" userName="q0uaur" createdAt="2025-03-05T19:43:00" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Gmailは、似た名前の人が多くて、スパムに関係ない時にメールを受け取ることがあるんだ。ちゃんとした会社が確認しないで送信することが多いから、もう少し厄介なんだよね。" userName="account42" createdAt="2025-03-06T10:24:44" color="">}}

{{<matomeQuote body="個人用メールサーバーには面白い使い方がいっぱいあるよ。特にキャッチオールドメインが好き。自分のドメインで好きなアドレスが使えるし、企業名をそのまま使えるのが便利。メール整理も自由にできるし、プライバシーの面でも安心だよ。" userName="kbmn" createdAt="2025-03-05T14:13:47" color="#45d325">}}

{{<matomeQuote body="確かに、キャッチオールアドレスは簡単に見破られる可能性があるね。困った時にどうしようもない場合が多いから、いざという時に使える一時的なアドレスが便利だと思うな。" userName="account42" createdAt="2025-03-06T10:28:42" color="">}}

{{<matomeQuote body="理論上はそうだけど、実際には自分のドメインではそんなことは起きたことがないよ。問題ないんじゃないかな。" userName="marssaxman" createdAt="2025-03-06T19:28:37" color="">}}

{{<matomeQuote body="Gmailでもキャッチオールドメインが使えるよ。Namecheapなどのレジストラでもサポートしているところが多いね。何千ものメールアドレスを管理できるのが便利だ。" userName="jeremyjh" createdAt="2025-03-05T20:10:04" color="">}}

{{<matomeQuote body="Gmailのキャッチオールは、今は有料アカウントのみだよ。昔は誰でもできたけど、今はもうそうじゃないんだ。" userName="metadat" createdAt="2025-03-06T02:04:15" color="">}}

{{<matomeQuote body="自分の持ってるネットやマシンを利用すれば、自宅ホスティングは超コスパよ。" userName="metadat" createdAt="2025-03-07T23:54:52" color="">}}

{{<matomeQuote body="＞「シンプルなウェブインターフェースが古臭いって勘違いする人がいるんだよね」本当にそう思う。要は物が多すぎて面倒なデザインが好まれる時代なんだろうな。シンプルでももっと美しくできると思う。" userName="awestroke" createdAt="2025-03-05T19:22:19" color="">}}

{{<matomeQuote body="どっちのこと言ってるの？ウェブサイトかインターフェースか。リンク先のデザイン見たけど、俺は『ugly』なわけじゃないと思う。" userName="kbmn" createdAt="2025-03-05T21:22:41" color="">}}

{{<matomeQuote body="こんなの見て嬉しいな。もっとみんなが自分のメールサーバー持って、大手の無料メールサービスに依存しない世の中が必要だよ。" userName="jwr" createdAt="2025-03-05T02:42:34" color="#45d325">}}

{{<matomeQuote body="完全に自分でメール運営するのは無理よ。SMTPを自分のIPから送るのはほぼ不可能だから。プロバイダーを通す必要がある。" userName="kazinator" createdAt="2025-03-05T03:15:59" color="">}}

{{<matomeQuote body="MoxのFAQにはこのことにちゃんと答えがあるよ。自分のメールサーバーを運営するのは不可能じゃないし、ちゃんとやれば受け入れられるはず。" userName="mmooss" createdAt="2025-03-05T05:30:18" color="">}}

{{<matomeQuote body="そのFAQは何も解決してない。仮に黒リストに載ったらどうすんの？大抵の家庭用IPは黒リスト入りしてるんだよ。" userName="kazinator" createdAt="2025-03-05T06:07:22" color="">}}

{{<matomeQuote body="IPがブラックリスト入りしたら、そのユーザーや所有者は各“anti spam”プロバイダーに確認して削除を求めなきゃならないんだ。Spamhausのページで確認できるよ。" userName="zakki" createdAt="2025-03-05T06:32:03" color="#785bff">}}

{{<matomeQuote body="ブラックリストの中には“これは住宅用のIPです”って表示して、そういうのをブロックするメールサーバーもあるんだ。だからそのIPはデータベースから削除できないこともある。逆引きDNSと前方DNSが一致しないサーバーからのSMTP接続は弾くってルールで、結構な攻撃を防げる。" userName="kazinator" createdAt="2025-03-05T06:59:07" color="#785bff">}}

{{<matomeQuote body="ブラックリストに載ってる住宅用IPはSpamAssassinのデフォルト設定で0.1になる。" userName="dwedge" createdAt="2025-03-05T08:47:06" color="">}}

{{<matomeQuote body="住宅用IPからのspamはSpamAssassinに届くべきじゃない。メールサーバーがSMTP接続を拒否すべきなんだ。受信した後のSpamAssassinが判断する必要はない。住宅用IPがspamを出す確率が高いから、受信後の処理でも高スコアで評価するのは確かに意味がある。" userName="kazinator" createdAt="2025-03-05T09:33:33" color="">}}

{{<matomeQuote body="＞住宅用IPからのspamはSpamAssassinに届くべきじゃない。もしその住宅用IPがドメインのMXレコードに入ってて、ドメインがDKIMを通過するなら、なんでだめなの？" userName="dwedge" createdAt="2025-03-05T10:06:12" color="">}}

{{<matomeQuote body="このFAQは現実を無視してるよ。ほとんどのIP範囲がサーバー提供者でブロックされてて、クリーンなIPを手に入れるのはほぼ不可能なんだ。大手プロバイダーは独自のフォーマットしかサポートしてなくて、オープンな信頼プロバイダーは無視される。" userName="razemio" createdAt="2025-03-05T07:04:47" color="#785bff">}}

{{<matomeQuote body="奇妙な主張だね。自分のサーバーを25年くらいやってるけど、サーバーのIPを変更した時に一度だけブラックリストに載ったことがあって、でもそれも数日で削除できたよ。" userName="jwr" createdAt="2025-03-06T00:44:28" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="私はそうは思わないね。NixOSで5回、5つの異なるHetzner CloudのIPでメールサーバーを設置したけど、どれも問題なくGoogleに届いたよ。" userName="nh2" createdAt="2025-03-05T10:54:05" color="">}}

{{<matomeQuote body="それはSPAMフォルダに入らなかったってこと？それならいい改善だね。Microsoftのサービスでも同じことが言える？" userName="razemio" createdAt="2025-03-06T08:06:52" color="">}}

{{<matomeQuote body="あなたの主張のソースはどこ？20のVPS提供者のブロックリストを監視してるけど、ほとんどがクリーンだよ。いくつかはポリシーブロックリストに載ってることもあるけど、ほとんど問題ない。" userName="jnd-cz" createdAt="2025-03-05T11:24:30" color="#45d325">}}

{{<matomeQuote body="確かに、メールサーバーを自分で運営するのが不可能ってわけじゃないけど、FAQで色んな理由を挙げているように、実際はかなり大変なことが多いってのが現実だよね。" userName="toomim" createdAt="2025-03-05T22:59:43" color="">}}

{{<matomeQuote body="それは違うよ。ホスティングプロバイダーやISPが許可してくれれば、自分のメールサーバーを持つことは可能だよ。" userName="durakot" createdAt="2025-03-05T03:52:27" color="">}}

{{<matomeQuote body="ホスティングプロバイダーやISPが許可するかどうかだけじゃなく、彼らが提供するアドレスの評判が大事なんだよ。世界中のメールサーバーがそのアドレスからの接続をどう扱うかが問題。" userName="kazinator" createdAt="2025-03-05T04:02:18" color="">}}

{{<matomeQuote body="1年前に新しいドメインとサーバーでMoxをセットアップしたけど、30分以内にGmailに届いたよ。" userName="dwedge" createdAt="2025-03-05T08:48:13" color="#38d3d3">}}

{{<matomeQuote body="Gmailへの配信テストに通ったから、あとは出荷するだけだね。" userName="kazinator" createdAt="2025-03-05T19:41:08" color="">}}

{{<matomeQuote body="まあ、そうだね。他のプロバイダーは小規模で、Gmailより受け入れが甘いことが多いから、彼らにとっては受け入れる側の問題になるね。" userName="account42" createdAt="2025-03-06T10:47:56" color="">}}

{{<matomeQuote body="メールサーバーを運営するなら、Gmailなどに数通メールを送って、受け入れられたら問題ないってこと。受け入れられなかったら問題を調べて、IPを変えたりすることもできるから、そんな急にメールが届かなくなるわけじゃないよ。ちゃんとした設定（DKIMやReverse IPなど）をすれば問題なしだと思う。" userName="tete" createdAt="2025-03-05T07:03:19" color="#ff5c5c">}}

{{<matomeQuote body="自分のサーバーがGmailなど大手と繋がったからといって、小さいプロバイダーと通信できない事が気にならないって言ってるように聞こえる。もし小さいプロバイダーが届かなかったら、Gmailを使うしかないってなるよね。" userName="kazinator" createdAt="2025-03-05T07:41:29" color="">}}

{{<matomeQuote body="小さなプロバイダーはHotmailみたいに正当なメッセージを消してしまうことは少ないから安心できる。確かに、ダイナミックなホームIPでは逆引きDNSは取得できないけど、誰もダイナミックIPでメールサーバーを運営しようとは言ってないよ。" userName="vanviegen" createdAt="2025-03-05T08:28:41" color="">}}

{{<matomeQuote body="大多数の人が、ダイナミックIPでメールサーバーを運営するのが主な選択肢だと思うけど、15年間やってても特に問題はなかったよ。" userName="kazinator" createdAt="2025-03-05T09:10:20" color="#785bff">}}

{{<matomeQuote body="うん、違うよ。SPFとDKIMはあなたがDNSレコードに設定するものだよ。あなたが選んだ特定のフォワーディングサーバーが、あなたのドメインの配信を許可されていることを示すのがSPFレコード。そしてSMTPプロバイダーを変えたら、それを更新するんだ。例えば、去年ShawからNovusに変更したときは、サーバーのSMTP認証情報を新しいNovusサーバーに変更して、SPFレコードも更新しただけでメールが流れた。ISPはあなたのドメインやDNSレコードを知らないからね。" userName="kazinator" createdAt="2025-03-05T19:47:57" color="#ff5c5c">}}

{{<matomeQuote body="OK、SPFはプロバイダーが固定のIPレンジを持っている場合なら機能するかもしれないね（一般的なのかな？）。でもDKIMはどうなの？確かに、動的IPの家庭用サーバーよりは配信率が良いかもしれないけど、両方とも問題があるね。" userName="vanviegen" createdAt="2025-03-06T13:12:34" color="">}}

{{<matomeQuote body="そうだけど、GmailやOutlookに受信メールを正常に届かせるのは全然簡単じゃないよ。クリーンな履歴を持つIPアドレスやSPF、DKIM、DMARCの設定が必要なのに、配信先の受信ボックスに届かないこともあるからね。" userName="jks" createdAt="2025-03-05T04:10:31" color="">}}

{{<matomeQuote body="15年以上自分のメールをいくつかのIP変更を経てホスティングしてきたけど、僕の経験では問題なかったよ。正当なメールを自分でホスティングするのはうまくいく。" userName="dizhn" createdAt="2025-03-05T05:01:30" color="#ff33a1">}}

{{<matomeQuote body="OK、でも僕の経験では、自分の正当なメールを100%スコアのmail-tester、SPF、DKIM、DMARCでホスティングしても、Microsoftは全てのメールをスパム扱いにするから、あなたの経験が全ての人に当てはまるわけじゃないかもしれないよ？リラックスして！" userName="Biganon" createdAt="2025-03-05T06:13:23" color="">}}

{{<matomeQuote body="15年以上同じIPスペースで厳しいセキュリティプロセスを経てホスティングしてきたけど、何度もブロックやスパムルーティングに遭ったよ。自分が自分のメールをホスティングしていた会社でも同じようにブロックされた。著名なアーティストのメールがスパム扱いされるなんて言えないよね。自分を騙すのはやめて、うまくいっているならGoogleやOutlook、Yahooのアカウントに頼る必要なんてないでしょ。" userName="grepfru_it" createdAt="2025-03-05T07:21:34" color="">}}

{{<matomeQuote body="僕はデータセンターの小さなラックサーバーで40以上のドメインのメールを送受信していて、配信に関しては特に問題がないよ。私見だけど、評判の問題はVPSホストに対して厳しいように感じる。" userName="devmor" createdAt="2025-03-05T05:27:03" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
