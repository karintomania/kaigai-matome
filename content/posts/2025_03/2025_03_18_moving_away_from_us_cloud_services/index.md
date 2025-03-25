+++
date = '2025-03-18T00:00:00'
months = '2025/03'
draft = false
title = '米国クラウドサービスからの脱却は可能か？意外と難しい現実とヨーロッパ企業のチャンス！'
tags = ["クラウドサービス", "データ主権", "ベンダーロックイン", "セルフホスティング", "ヨーロッパ企業"]
featureimage = 'thumbnails/orange4.jpg'
+++

> 米国クラウドサービスからの脱却は可能か？意外と難しい現実とヨーロッパ企業のチャンス！

引用元：[https://news.ycombinator.com/item?id=43396795](https://news.ycombinator.com/item?id=43396795)

{{<matomeQuote body="まとめーUSのクラウドサービスからの移行は思ったより簡単だったって？マジかよ。それ一番重要なポイントじゃないだろ。穴だらけじゃん。Git reposは難しすぎ、NPMも同様。StartpageはGoogleの検索エンジン使ってるし。Protonだけは意味あるスイッチだけど、ベンダーロックインの問題あるって指摘されてるしな。結局、現状じゃ無理ゲーってことじゃん？ヨーロッパの企業が頑張るチャンスなのに、マジで頼むわ。できれば速攻乗り換えるのに。<br>追記：カッコ内の理由は筆者の意見ね。" userName="frereubu" createdAt="2025-03-18T09:14:05" color="">}}

{{<matomeQuote body="＞Git repos(難しすぎ)だって？<br>Sourcehutがあるじゃん。<br>＞StartpageはGoogleの検索エンジン使ってるって？<br>ユーザーが増えれば自分たちで作るでしょ。EcosiaとかQwantとか、ヨーロッパの検索エンジンは協力して独自の作ってるし。<br>それに、ヨーロッパのサービスがアメリカのサービスの代わりになるとしても、ヨーロッパ版が必要だって証明しなきゃ変わんないよ。" userName="Skinney" createdAt="2025-03-18T09:19:22" color="">}}

{{<matomeQuote body="SourcehutがEU/オランダに移転するかもって初めて知ったわ、サンキュー！" userName="arthurmorgan" createdAt="2025-03-18T09:25:11" color="">}}

{{<matomeQuote body="GitならCodebergもあるよ。<br>https://codeberg.org/" userName="benhurmarcel" createdAt="2025-03-18T14:50:38" color="">}}

{{<matomeQuote body="＞Sourcehut<br>もう使えるの？<br>＞注意：sr.htは現在アルファ版で、サービスの質はそれを反映している可能性があります。そのため、ほとんどの機能で支払いは任意であり、サイトの継続的な開発をサポートしたいユーザーのみにお勧めします。アルファ版が伴う保証と制限の概要については、こちらを参照してください。<br>– <br>https://sourcehut.org/pricing" userName="palotasb" createdAt="2025-03-18T10:08:43" color="">}}

{{<matomeQuote body="難しい部分が軽く扱われてるってのは同意。それに、みんなクラウドばっかり気にしてるけど、もっとデカい依存先があるじゃん。WindowsとかmacOS（それにGoogle AndroidとiOSも）みたいなクライアントデバイスだよ。<br>EUとアメリカのデータ共有協定が何度も破られてるのを見れば、EUのプライバシー権とアメリカの監視法の間には法的互換性がないのは明らかだろ。[...] アメリカの今の政治状況を見ても、俺らのデジタルインフラ全体がアメリカの政策次第だって分かってくる。政府や社会がアメリカのクラウドに頼るのはもう安全じゃない。アメリカ政府はいつでもシャットダウンできるんだから。政府がOSにバックドアとかを要求したら大問題になるぞ。ヨーロッパのインフラを止めるためだけに、アメリカ政府はたった3社に命令すればいいんだから。" userName="danieldk" createdAt="2025-03-18T11:00:29" color="#ff5c5c">}}

{{<matomeQuote body="Quad9 - Cloudflare DNSの代替も言ってたね。知らなかったから切り替えるわ。他には、SEARCH: qwant (france)<br>LLM: mistral (france), librechat.ai, openwebui<br>VPN: mullvad (sweden), protonVPN (swiss)<br>AUTH: OpenID (全然普及してないけど)<br>CLOUD: Hetzner (germany), OVHCloud (france)<br>MAPS: here wego, openstreetmap<br>EMAIL: protonMail (swiss), fastmail (australia)<br>DNS: mullvad (sweden), quand9 (swiss), nextDNS<br>TRANSLATE: DeepL (germany)<br>BROWSER: zen-browser, vivaldi (norway)<br>SOCIAL: nostr, mastadon (germany)<br>IM: elements (uk), matrix (uk)<br>EDIT: fastmailはオーストラリアだった" userName="pzo" createdAt="2025-03-18T09:36:35" color="#38d3d3">}}

{{<matomeQuote body="Fastmailはドイツじゃなくてオーストラリアが拠点だよ[1]。<br>[1]: <br>https://www.fastmail.com/company/about/" userName="hampus" createdAt="2025-03-18T09:50:50" color="">}}

{{<matomeQuote body="Fastmailのサーバーはアメリカ[1]とオランダにあるらしい。でも、自分のメールボックスがどっちの国にあるかは分からないみたい。<br>＞コロケーションプロバイダーは、当社のサーバーへの物理的なアクセスを強制される可能性があります。ネットワークキャプチャデバイスがインストールされる可能性があります。そして最悪の場合、攻撃者はデータセンターに無理やり侵入してサーバーを物理的に取り外す可能性があります。<br>だから、令状なしの監視に関しては、Fastmailはアメリカの企業や子会社と変わらないってこと。オーストラリアの法律では違法なアメリカの要請に従う必要はないかもしれないけど、アメリカにあるDCの運営者は絶対に従うことになるし、彼らもそう認めてる。それを普通のハッキングと変わらないって言ってるけどね[2]。<br>[1]: <br>https://www.fastmail.com/blog/fastmails-servers-are-in-the-u...<br>[2]: もちろん、この比較の欠点は、普通のハッカーは現場のスタッフに要求に従わせたり、ハッキングを隠蔽させたりできないってこと。法的な権限なしにそれをするには、ハリウッドのアクション映画レベルの犯罪組織が必要になる。" userName="hnbad" createdAt="2025-03-18T10:15:16" color="#785bff">}}

{{<matomeQuote body="Fastmailは信用できない。<br>オーストラリアには、当局が開発者に捜査への協力を要求できるかなり厳しいデジタル法がある。これには、企業のサービスで使用されている暗号化を解読するために、法執行機関が機能構築を要求する技術支援が含まれる可能性がある。<br>https://www.theguardian.com/australia-news/2024/nov/05/sessi...<br>https://www.404media.co/encrypted-chat-app-session-leaves-au..." userName="andrewinardeer" createdAt="2025-03-18T10:35:01" color="#ff5c5c">}}

{{<matomeQuote body="Fastmailは信用できるよ、なぜなら信用できる人が、まだ同盟国である国の会社で運営してるからね。監視されたくないなら、メールなんて使わない方がいいんじゃない？" userName="bad_user" createdAt="2025-03-18T18:20:26" color="">}}

{{<matomeQuote body="いやいや、信用できないって。だってオーストラリアで設立されてて、あそこは厳しいデジタル監視法があるじゃん。信用できる人が運営してるって言っても、法律でバックドアを仕込むように強制されたら意味ないし。ワラントカナリアすら禁止されてるんだから。" userName="andrewinardeer" createdAt="2025-03-20T01:07:06" color="#ff33a1">}}

{{<matomeQuote body="＞君が返信してるコメントと同じこと言ってるだけじゃん。<br>監視法がどんなに”draconian”だろうと、関係ないんだよ。<br>メールは安全じゃないし、ほとんどのメールは結局GoogleかMicrosoftのサーバーにあるんだから。そうなるとアメリカ政府はアメリカの企業に何でも提出するように強制できるし、それを公にすることもできない。Snowdenの暴露で明らかになった事実だよ。オーストラリアがアメリカより悪いなんてありえない。<br>メールに関しては、政府の監視はどっちみち行われてるから関係ない。Proton Emailみたいなソリューションはただのプライバシーの見せかけで、既存の標準（SMTP、IMAP）との相性も悪いし。<br>最近はアメリカよりもオーストラリアの方がまだマシだって思ってるよ。アメリカは昔から恐れてたけど、少なくとも価値のある同盟国だと思ってたし。でも今はテクノファシストがトップにいるから、さらに恐れるようになった。人気投票で選ばれたんだからね。<br>HNみたいな人気フォーラムでこういうコメントを見ると、脅威モデルについて考えてないか、過小評価してるか、不誠実なのかって思って、人間に対する信頼を少し失うんだよね。<br>Fastmailは素晴らしいサービスで、信用できる人が運営してて、標準（JMAP）やオープンソースにも貢献してる。Big Techのメールサービスみたいにアドテクで収益化してないし。" userName="bad_user" createdAt="2025-03-20T07:32:12" color="#38d3d3">}}

{{<matomeQuote body="暗号化メールなら、tuta.com（以前はTutanota）っていうドイツのサービスもあるよ。" userName="McDyver" createdAt="2025-03-18T10:04:02" color="">}}

{{<matomeQuote body="mailbox.orgっていう、別の有名なドイツのメールプロバイダーについて何か知ってる？" userName="jb1991" createdAt="2025-03-18T10:55:30" color="">}}

{{<matomeQuote body="mailbox.orgは良かったんだけど、メールプロバイダー以上の存在になろうとして、ユーザーをより高価なプランに強制的に移行させ、オフィスやクラウドストレージを追加したんだよね。posteo.deもあるよ。カスタムドメインはサポートしてないけど、simplelogin.io（フランスだけど、今はProtonの傘下）と組み合わせて使ってる。" userName="attendant3446" createdAt="2025-03-18T13:13:14" color="#ff33a1">}}

{{<matomeQuote body="DNSにはdns0.euもあるよ。HNで見かけてから1年以上使ってるけど、問題ないよ。" userName="mhitza" createdAt="2025-03-18T09:56:51" color="">}}

{{<matomeQuote body="DNSなら、Gandiもフランスの会社だよね？" userName="semi-extrinsic" createdAt="2025-03-18T12:08:52" color="">}}

{{<matomeQuote body="ドイツのNetcupも追加で。安くて素晴らしいホスティングだよ。長年使ってる。" userName="Kelteseth" createdAt="2025-03-18T10:41:58" color="">}}

{{<matomeQuote body="Fastmailってオーストラリアの会社だと思ってたんだけど…" userName="reacharavindh" createdAt="2025-03-18T10:00:19" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="オーストラリアってEurovisionに参加してるじゃん？だからカウントしていいんじゃない？" userName="teamonkey" createdAt="2025-03-18T10:47:20" color="">}}

{{<matomeQuote body="イスラエルもそうだけど、人気のVPNプロバイダーがイスラエルの会社に買収された途端、多くの人が離れたよね。" userName="jb1991" createdAt="2025-03-18T10:56:08" color="">}}

{{<matomeQuote body="mailbox.orgって気になるなー。“privacy made in Germany”って宣伝してるし。" userName="jb1991" createdAt="2025-03-18T10:54:45" color="">}}

{{<matomeQuote body="ドイツの法律じゃ無理だと思うよー。基本、政府はいつでもデータにアクセスできるって考えなきゃ。" userName="margorczynski" createdAt="2025-03-18T12:45:56" color="#ff5733">}}

{{<matomeQuote body="EUのプライバシー法ってアメリカの法律より良いと思ってたんだけど。" userName="jb1991" createdAt="2025-03-18T14:38:39" color="">}}

{{<matomeQuote body="うん、でもAWS、Azure、GCPと競合できるとこないし、他は全部簡単じゃん？<br>しかも、ほとんどのサービスやSaaSってアメリカのクラウド基盤に頼ってるでしょ。" userName="Foobar8568" createdAt="2025-03-18T09:52:09" color="">}}

{{<matomeQuote body="法の支配がもはや尊重されない国で、これらの巨大企業はどうやって事業を続けるつもりなんだろう？<br>大げさに聞こえるかもしれないけど、僕が読んだものすべてが、アメリカがhackville行きの急行列車に乗ってるって示唆してる気がするんだ。" userName="bamboozled" createdAt="2025-03-18T10:09:34" color="#ff33a1">}}

{{<matomeQuote body="買収だよ。<br>＞https://www.cbsnews.com/news/trump-tech-ceos-meta-amazon-don...<br>＞（もちろん、政権が買収された状態を維持するほど安定していないか、Muskと他の誰かとの間でオリガルヒ同士の戦いが勃発するリスクはあるけどね）”," userName="pjc50" createdAt="2025-03-18T11:18:56" color="">}}

{{<matomeQuote body="そうそう、それに監視に協力したり、反体制派を見つけて止めたりね。<br>ファシズムって（最近読んだんだけど）大企業には友好的なことが多いんだって。政権に忠実である限りは。" userName="cutemonster" createdAt="2025-03-18T12:28:59" color="#ff33a1">}}

{{<matomeQuote body="これって生産的な努力からバカげた努力に変わってきてない？<br>なんでみんなロシア製の飛行機に乗って、ロシアのクラウド製品を使ってないんだ？" userName="bamboozled" createdAt="2025-03-18T12:55:07" color="">}}

{{<matomeQuote body="言ってる意味がよく分かんないなー。TikTokがアメリカで禁止されてた短い間だけ、中国の短い動画サービスのRednote(Xiaohongshu)がちょっと流行ったけど、基本的にはヨーロッパの人が法的保護が手厚いヨーロッパの製品を使いたいって話でしょ。<br>(ロシアが買ったSNSのLivejournalはもう誰も使ってないし、Yandexで何かdelistされてるかもって調べるときくらいしか役に立たないし)" userName="pjc50" createdAt="2025-03-18T13:04:05" color="">}}

{{<matomeQuote body="そうそう、でもAWSとかAzureとかGCPに誰も勝てないよね。<br>Scalewayも同じような位置づけだけど。" userName="mhitza" createdAt="2025-03-18T09:57:37" color="">}}

{{<matomeQuote body="OVHとScaleaway？<br>後者は使ったことないけど、前者は使ってた時はめっちゃ良かったよ。昔ながらのコンピューティングに重点を置いてて、AWSみたいなサービスの幅広さはないけどね。でも本社所在地でクラウドプラットフォームを選べる立場なら、クラウドプロバイダーに求めるものはかなりベーシックだと思う。" userName="hnlmorg" createdAt="2025-03-18T10:23:47" color="#785bff">}}

{{<matomeQuote body="Microsoft 365みたいにめっちゃ頼ってたサービスから移行するのって、もっと大変だと思ってた。移行始める前は、もう完全にMicrosoftの網に絡まってて、他のサービスに切り替えるのは超大変だろうなって思ってたんだよね。でも実際に移行してみたら、サービスごとに数時間で90%も移行できたんだよ。思ったより全然楽だった。だからGitとかNPMの移行も楽勝かなって思ってる。NPMは変わらないと思うけど、GitはCI/CDの設定とかで色々カスタマイズしてるから、そう簡単にはいかないかもね。でも、PIIを扱わないサービスだけが大変かもしれないってことは、全体的には思ったより簡単だったって言える。" userName="MartijnHols" createdAt="2025-03-18T09:37:12" color="#785bff">}}

{{<matomeQuote body="＞ヨーロッパの企業が頑張って大きな動きを見せるチャンスがあるように感じるけど、どうかな？<br>大きな動きは大きな資金がないと無理で、EUのテック市場にはそれがないんだよね。深刻なVC不足も問題だけど、EUのHorizonプログラムが大企業(ほとんどイノベーションしない)を優遇したり、資金の方向性がその時々の流行に左右される(2020年はデジタルトランスフォーメーション、2024年はAIとか)のも原因だと思う。" userName="mhitza" createdAt="2025-03-18T09:55:17" color="">}}

{{<matomeQuote body="＞ヨーロッパの企業が頑張って…<br>規制と税金で溺れるだけだよ。ITスタートアップのほとんどがEUにないのはそのため。起業家だから分かる。" userName="egorfine" createdAt="2025-03-18T10:30:22" color="#ff33a1">}}

{{<matomeQuote body="“ヨーロッパの企業が頑張るチャンス”って言うけど、ビジネスモデルは何？そんなこと気にする人なんてほんの一部だし、そういう人は1円たりとも払いたがらないタイプでしょ。" userName="rigdzin" createdAt="2025-03-18T10:39:09" color="">}}

{{<matomeQuote body="そうかな？政府とか国のインフラ関係の大きな顧客がいるから、セキュリティとか信頼性を重視して、アメリカのプロバイダーよりもヨーロッパのプロバイダーを選ぶ可能性は高いと思うよ。Google並みの利益は必要ないから、ヨーロッパのGoogleみたいな巨大企業は無理でも、ヨーロッパのオフィススイートならありえるんじゃない？" userName="benrutter" createdAt="2025-03-18T10:58:30" color="#ff33a1">}}

{{<matomeQuote body="Bert Hubertが以前、イギリス以外のヨーロッパの通信業界全体が、機器だけでなくネットワーク運用もHuaweiに委託してるって書いてたよ。<br>https://berthub.eu/articles/posts/5g-elephant-in-the-room/<br>ヨーロッパの国のインフラプロバイダーは気にしてないんだよ。" userName="mike_hearn" createdAt="2025-03-18T11:50:39" color="">}}

{{<matomeQuote body="＞ヨーロッパの企業が頑張って大きな動きを見せるチャンスがあるように感じるけど、どうかな？<br>ECが”再軍備”なんてくだらないことやめて、そういう企業を支援してくれれば、国民のためになるのに。こっちの方がヨーロッパの独立と自由のための本当の戦場だよ。" userName="m000" createdAt="2025-03-18T10:09:49" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Protonをおすすめするのは残念だね。IMAP/SMTPみたいなオープンなメールプロトコルをサポートしてないのがマジで残念。ネイティブのメールクライアントを”普通に”使いたいじゃん？Protonみたいなベンダーロックインはマジ勘弁。Proton Passは知らんけど、Bitwardenがダメなら自分でホストできるし、OPならそれもできるっしょ。DockerhubとかNPMの問題点は、サービス自体の問題って感じ。" userName="noirscape" createdAt="2025-03-18T09:10:12" color="">}}

{{<matomeQuote body="Protonの代わりになるのって何かないかな？Google Workspaceから移行したいんだけど、IMAP/SMTPをサポートしてないんじゃ困るなぁ。" userName="CER10TY" createdAt="2025-03-18T09:38:13" color="">}}

{{<matomeQuote body="Mailboxはマジで固そう。まだ使い始めて短いけどね。https://mailbox.org　メール、オンラインストレージ、ビデオ会議、カレンダーとか全部プライバシー保護がデフォルト。個人情報も入力しなくていいんだって。" userName="carschno" createdAt="2025-03-18T09:59:02" color="#785bff">}}

{{<matomeQuote body="Mailbox.orgをビジネスで4年使ってるけど、マジで問題ないよ。" userName="adwn" createdAt="2025-03-18T10:53:31" color="#45d325">}}

{{<matomeQuote body="Fastmail[0]を個人的に使ってるよ。全部標準サポートしてるし、JMAPプロトコル[1]も推進してる。JMAPはIMAPよりモバイルクライアント向きなんだって。メールとカレンダーしかないけどね。Drive/Docs/Sheetsみたいなのはないよ。<br>[0] https://www.fastmail.com<br>[1] https://jmap.io" userName="oakesm9" createdAt="2025-03-18T10:12:52" color="#ff5733">}}

{{<matomeQuote body="Fastmailを10年以上使ってるけど、サーバーがUSにあるから、別のを探してるんだよね。" userName="danieldk" createdAt="2025-03-18T10:43:00" color="">}}

{{<matomeQuote body="オーストラリアの法律はGDPRみたいな保護がないからね。Five Eyesの国だし、むしろ逆だよね。" userName="mtsr" createdAt="2025-03-18T11:43:19" color="">}}

{{<matomeQuote body="オーストラリアの企業はEU市民にGDPRの保護を提供する必要があるし、EUの企業もオーストラリアの法律に従う必要があるよ。Five Eyesの合意も終わる気がする。" userName="bad_user" createdAt="2025-03-18T18:24:33" color="">}}

{{<matomeQuote body="Five Eyesの合意が終わるってのはあり得るかもだけど、サーバーがUSにある限り意味ないんじゃない？" userName="danieldk" createdAt="2025-03-18T20:03:44" color="">}}

{{<matomeQuote body="Fastmailにマジで満足してる。USにも拠点があるけど、縮小してオーストラリアの会社になったと思う。1passwordとの連携とか、メールエイリアスをマスクできるのも便利[0]。自分でメールをホストしたいなら、昔書いたガイド[1]があるよ。<br>[0] https://www.fastmail.com/features/masked-email/<br>[1] https://flurdy.com/docs/postfix/" userName="flurdy" createdAt="2025-03-18T13:42:59" color="#ff5c5c">}}

{{<matomeQuote body="https://tuta.com/ だってさ。" userName="hovering_nox" createdAt="2025-03-18T09:49:27" color="">}}

{{<matomeQuote body="2番目のおすすめはTutaね。ProtonとかFastmailに比べると機能は限られてるかもだけど、メールサービスとしてはマジで安定してるらしいよ。" userName="bodash" createdAt="2025-03-18T12:50:59" color="">}}

{{<matomeQuote body="Protonの代替って言ってるけど、IMAPみたいなオープンな規格に対応してないから、結局ベンダーロックインの問題は同じじゃん。" userName="attendant3446" createdAt="2025-03-18T13:18:37" color="">}}

{{<matomeQuote body="https://glesys.com/services/email もあるよ。" userName="cpach" createdAt="2025-03-18T10:38:07" color="">}}

{{<matomeQuote body="https://european-alternatives.eu/category/email-providers も参考になるかも。個人的にはiCloud+のカスタムドメイン使ってる。" userName="SSLy" createdAt="2025-03-18T10:01:10" color="">}}

{{<matomeQuote body="mailbox.orgはやめとけってマジで。ここ数年でマジで質が落ちまくってるらしい。払い戻しもしてくれないから困ってる人がいるみたい。tuta, posteo, runboxとかもあるよ。プライバシーだけじゃなくて、レスポンスとかカスタマーサービスも大事だよね。" userName="crossroadsguy" createdAt="2025-03-19T00:46:30" color="#ff5733">}}

{{<matomeQuote body="migaduとThunderbird使ってるけど、マジで不満ない。安いし、必要なことは全部できるからおすすめ。<br>https://www.migadu.com/index.html" userName="Lanolderen" createdAt="2025-03-18T10:32:37" color="">}}

{{<matomeQuote body="Zohoを個人メールで使ってるよ。ヨーロッパじゃないけど、アメリカでもないし。MXレコード変えるだけで簡単に別のプロバイダに移行できるから便利。" userName="chgs" createdAt="2025-03-18T09:55:04" color="">}}

{{<matomeQuote body="Zohoは俺が住んでる国のだから、プライバシーは期待しない方が良いよ。むしろマイナスかもね（笑）。" userName="crossroadsguy" createdAt="2025-03-19T00:48:48" color="">}}

{{<matomeQuote body="Protonから引っ越そうと思ってるんだよね。理論上は完璧だけど、実際は基本的な機能が全然ダメ。<br>１．Webインターフェースはまあまあだけど、プロキシメールブリッジが重すぎ。iOSアプリも使い物にならない。テキストは画像みたいに表示されるし、拡大しないと読めない。添付ファイルもいちいち開いたり閉じたりしないといけない。<br>２．ProtonDriveも使い物にならない。encryptに時間かかりすぎ。<br>３．ProtonVPNもブロックされまくり。<br>４．ProtonCalendarは独自規格で互換性がない。<br>メールぐらいちゃんと動いてほしいのに、マジで困る。" userName="ptsneves" createdAt="2025-03-18T09:29:37" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="ProtonVPNは、理屈じゃ良くても信用できないし、ネットでブロックされまくりなんだよね。CAPTCHAを10回も入力しないとサイトが見れないし、完全にブロックされることもあるし。最近じゃ普通のIPアドレスまでブロックされる始末。Cloudflareのせいだよ、マジで。" userName="pmdr" createdAt="2025-03-18T09:33:50" color="">}}

{{<matomeQuote body="マジそれ！LinuxでFirefox使ってると、どこでもCAPTCHA地獄になるんだよ（あのCloudflareのローディング画面）。WindowsかMac使ってる95%の人たちじゃないからかな。Cloudflareはネットにとってマジで迷惑。" userName="wkat4242" createdAt="2025-03-18T09:47:52" color="">}}

{{<matomeQuote body="LinuxでFirefox使ってるけど、CloudflareのCAPTCHAなんてほとんど出ないよ。" userName="unmole" createdAt="2025-03-18T10:02:03" color="">}}

{{<matomeQuote body="Cloudflareは、厳格なトラッキング保護を有効にしてるFirefoxユーザーにイライラしてるんだよ。でもhCaptchaとかgoogleよりはマシかも。PoWパス拡張機能入れれば特にね。" userName="SSLy" createdAt="2025-03-18T10:06:32" color="#38d3d3">}}

{{<matomeQuote body="マジか、めっちゃ出るんだけど。ユーザーエージェントいじってるのが原因かも。Microsoftが意地悪で、LinuxのFirefoxだとM365の機能制限してくるから、Edgeに偽装してるんだよね。仕事でM365使わざるを得ないんだよなぁ。" userName="wkat4242" createdAt="2025-03-18T10:08:56" color="">}}

{{<matomeQuote body="それって自分で原因作ってるじゃん？Cloudflareのせいにしてるけど、お前のせいで信頼できないブラウザって認識されてるんだよ。Cloudflareは悪くない。" userName="owenthejumper" createdAt="2025-03-18T10:21:34" color="#38d3d3">}}

{{<matomeQuote body="別に俺のブラウザは「信頼できない」わけじゃないだろ。Big Techの奴隷じゃないってだけじゃん。" userName="wkat4242" createdAt="2025-03-18T12:19:34" color="">}}

{{<matomeQuote body="それは「Big Techの奴隷」とかじゃないって。ネット上のボットのほとんどが、ユーザーエージェント偽装してるんだよ。お前のブラウザも同じことしてる。ブラウザの署名と期待されるユーザーエージェントが一致しないから、怪しいって判断されるんだ。<br>解決策は、MSアプリ使う時だけユーザーエージェント変えること。そうすればCAPTCHAはなくなるよ。" userName="owenthejumper" createdAt="2025-03-18T12:24:03" color="#ff33a1">}}

{{<matomeQuote body="HermesとかLVのサイト見ると5分でBANされるんだけど、マジ勘弁…" userName="Foobar8568" createdAt="2025-03-18T09:54:03" color="">}}

{{<matomeQuote body="dash.cloudflare.comでBANされたわ。タブを数個開いただけなのに…" userName="SSLy" createdAt="2025-03-18T10:26:28" color="">}}

{{<matomeQuote body="proxyなしでE2Eをどうサポートするの？そもそもProton使ってる人のメールって、ほとんどE2Eじゃないし。" userName="cedws" createdAt="2025-03-18T09:55:32" color="">}}

{{<matomeQuote body="メールクライアントで暗号化と復号化すればいいじゃん。もっと多くのクライアントが対応すれば、Protonmailなんていらなくなる。" userName="blitzar" createdAt="2025-03-18T10:00:12" color="">}}

{{<matomeQuote body="あとCEOが今の共和党政権を褒めてるよ。https://x.com/andyyen/status/1864436449942110660" userName="Tubbe" createdAt="2025-03-18T11:41:15" color="">}}

{{<matomeQuote body="白黒つけすぎだって。CEOはbig techに厳しい姿勢の人を選んだことを褒めただけ。大企業に対する彼女のスタンスを評価しただけで、政権全体を支持してるわけじゃないでしょ。" userName="9283409232" createdAt="2025-03-18T12:52:06" color="">}}

{{<matomeQuote body="「それ以外は、リンカーン夫人、お芝居はいかがでしたか？」" userName="archagon" createdAt="2025-03-18T18:12:36" color="">}}

{{<matomeQuote body="Protonはあんまり好きじゃないな。だって、あんなに「暗号化」をアピールしてるのに、来るメールの95％はGoogleとかMicrosoftとかAmazonとかの大手から暗号化されてない状態で来るんだもん。意味なくね？しかも接続しにくいし。メールはもうオワコン。みんな機密情報には使わないで、通知サービスとして使ってるだけだよね。Bitwardenもマスターパスワードだから好きじゃない。passの方が、GPGキーでパスワードを暗号化できるからいい。Yubikeyに保存すればハードウェアセキュリティにもなるし。でも、自ホストのBitwardenも良い選択肢だし人気だよね。" userName="wkat4242" createdAt="2025-03-18T09:15:06" color="#45d325">}}

{{<matomeQuote body="＞誰も機密情報にメールを使わないって言うけど、<br>ほとんどのウェブサイトでパスワードリセットリンクがメールで送られてくるじゃん。あれってかなり機密性が高いよね。あと、署名済みのドキュメントとかもメールで送受信するし。使うべきじゃないのは確かだけど、実際にはまだ使われてるよ。" userName="cassianoleal" createdAt="2025-03-18T09:26:18" color="">}}

{{<matomeQuote body="多くの組織がメールから離れていってるよね。パスワード回復くらいか。でも、ProtonのE2EEって何の意味があるの？メールは暗号化されずにインターネット上を送信されるんでしょ？mailboxに届いて初めて暗号化されるって。Gmailだって簡単にハッキングされるわけじゃないし、パスワードを知られてたらProtonだって同じくらい脆弱だよ。Securityはただの飾りだと思う。問題の本質を無視して、ほんの小さな部分だけを修正してるだけ。" userName="wkat4242" createdAt="2025-03-18T09:50:26" color="#ff33a1">}}

{{<matomeQuote body="なんでIMAP/SMTPがそんなに重要なの？Protonにこれが無いと、みんな何に困るの？" userName="max_" createdAt="2025-03-18T09:57:37" color="">}}

{{<matomeQuote body="マジかよ、俺みたいな化石には考えられないわ。未だに自宅の戸棚の下に置いてあるシンクライアントでメール、ウェブ、Nextcloud、XMPP、Forgejoとか色々動かしてるぜ。回線は1Gの光ファイバーで安定してるし。<br><br>FAQ：<br>メールの自鯖運用は可能だよ。<br>そりゃ複雑だけどね。<br>難しくはないけど、理解しようとすると時間がかかる。Maddy Mailみたいなの使うのもアリ。<br>固定IP持ってて、逆引き設定もしてる。<br>ISPはzen.co.uk。<br>逆引きDNS、DKIM、DMARC、SPF、mta-stsも設定済み。<br>XMPPからMatrixに乗り換えるつもりはないよ。サーバー負荷が高すぎるし、XMPPの方がクライアント指向で好み。<br>UKのオンライン安全法も知ってる。onlinesafetyact.co.ukのテンプレートを参考に自作した。法自体は無意味な紙切れだと思うけど、似たような考え方は必要だと思う。<br>ClaudeみたいなAIクローラーがウザいから、コードとか写真へのアクセスをブロックしてる。印刷して飾る以外の利用は許可しない。" userName="pmlnr" createdAt="2025-03-18T10:00:59" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
