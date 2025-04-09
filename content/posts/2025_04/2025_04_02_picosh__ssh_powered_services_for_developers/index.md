+++
date = '2025-04-02T00:00:00'
months = '2025/04'
draft = false
title = '月額たったの2ドル！？ SSHで開発者向けサービスが爆誕！これはアツい'
tags = ["SSH", "開発者ツール", "マイクロSaaS", "pastebin", "価格"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> 月額たったの2ドル！？ SSHで開発者向けサービスが爆誕！これはアツい

引用元：[https://news.ycombinator.com/item?id=43560899](https://news.ycombinator.com/item?id=43560899)

{{<matomeQuote body="GithubとかCloudflare的なのを使おうと思ってたんだけど、月2ドルの価格にマジで惹かれるわ。レビューしよっと。<br>月15ドルもするサービスはあんまり使いたくないんだよね。サブスク代をケチっちゃうから。でも月2ドルなら即買いだわ。価格が楽しすぎて、製品よりも興味津々かも。試してみるね！" userName="unshavedyak" createdAt="2025-04-02T20:51:13" color="#ff33a1">}}

{{<matomeQuote body="帯域制限には笑っちゃうけどね。<br>＞https://pico.sh/faq#are-there-any-bandwidth-limitations<br>制限超えたらどうなるんだろ？" userName="unshavedyak" createdAt="2025-04-02T20:58:58" color="">}}

{{<matomeQuote body="トラフィックって、大手クラウド以外はそんなに高くないんだよね。picoがどこでホストされてるか知らんけど、Hetznerなら専用サーバーで1Gbpsの「無制限」接続とかあるし、10Gのアップリンクでも1TBあたり1.2ドルだよ。" userName="wongarsu" createdAt="2025-04-02T21:25:11" color="#38d3d3">}}

{{<matomeQuote body="Oracleの無料枠でホストされてると思うな。pico.shのping先がOracleのIPだし、10TBの制限もOracle Free Tierと一致するし。" userName="shishcat" createdAt="2025-04-02T21:31:57" color="#ff5733">}}

{{<matomeQuote body="その通りだよ。マルチクラウドでもやってるんだ。<br>https://pico.sh/regions" userName="qudat" createdAt="2025-04-02T22:45:24" color="">}}

{{<matomeQuote body="なるほどね。Oracleは最初の10TB以降は8.5ドル/TBか。Oracleは好きじゃないけど、トラフィックが серьезно になるまでは悪くない選択かも。" userName="wongarsu" createdAt="2025-04-02T21:42:10" color="#ff5733">}}

{{<matomeQuote body="Hetznerはアメリカとヨーロッパで1.5ドル/TBだよ。" userName="nathants" createdAt="2025-04-03T10:49:01" color="">}}

{{<matomeQuote body="めっちゃ共感するし、この価格設定はマジですごい。気軽に試せるもんね。俺も同じような感じで99devってプロジェクトやっててさ。月1ドルでインディーデベロッパー向けのツールを作ってるんだ。Plausibleみたいな軽量アナリティクスから始めて、色々追加していく予定。<br>pico.shみたいな低価格でシンプルなサービスが増えて嬉しいわ。<br>https://99.dev" userName="iambrandonm" createdAt="2025-04-02T22:49:23" color="#ff5733">}}

{{<matomeQuote body="Github PagesとCloudflareを使えば無料でホスティングできるよ。近所の人が使ってる。" userName="ryao" createdAt="2025-04-03T04:06:14" color="">}}

{{<matomeQuote body="2ドルってのは趣味にはいいけど、顧客向けのプロダクション環境で使うのはどうなんだろうね。" userName="blatantly" createdAt="2025-04-03T08:51:28" color="">}}

{{<matomeQuote body="コメントありがとね！マジで多くの人が同じ気持ちだと思うわ。料金設定は、ユーザーが自分でVPSのVMをクラウドプロバイダーで用意するのと比べて競争力があるようにしたんだ。月5ドルのVMと価格で張り合えるようにしてる。<br><br>個人とか小規模チームがWebで手早くプロトタイプを作るのがターゲット。ゼロインストール、マルチリージョン、サイト分析、トンネル接続/切断通知、簡単なスクリプト自動化とかの便利な機能を提供して、VPSを自分で用意する必要を感じるまで、できるだけ長くプロトタイプを”prod”で動かしてもらうのが狙い。<br><br>もっと大きなチームとか会社をターゲットにすることもできるけど、正直、これは趣味でやってるだけなんだよね。<br><br>現時点では稼働時間の保証はしてないけど、めっちゃ真剣に取り組んでるよ(アラートとかあるし、すぐに対応してる)。本業みたいに扱ってるし(俺はpaasで働いてて、antonioはプラットフォームエンジニアの魔法使いだし)。" userName="qudat" createdAt="2025-04-03T14:51:37" color="#ff5c5c">}}

{{<matomeQuote body="静的なサイトなら、そんなに足りないものってある？良い感じのCDNを前に置けば、ホストが誰かなんて気にする必要なくね？" userName="unshavedyak" createdAt="2025-04-03T14:00:58" color="">}}

{{<matomeQuote body="月2ドルじゃ、SREは愛だけで動いてるようなもんだな。" userName="blatantly" createdAt="2025-04-03T20:28:33" color="">}}

{{<matomeQuote body="そうだけど、CDNにキャッシュされてれば、そんなに問題ないんじゃない？静的なサイトの話をしてるんだから、スケールはめっちゃ簡単だし、安価だし。Cloudflareみたいなのがあれば、マジで簡単で堅牢になるじゃん。<br>俺、甘すぎかな？" userName="unshavedyak" createdAt="2025-04-04T14:33:03" color="">}}

{{<matomeQuote body="共同創業者です。SSHで動くマイクロSaaSに興味を持ってくれてありがとう！何か質問があれば気軽にどうぞ！" userName="qudat" createdAt="2025-04-02T22:27:45" color="#ff5c5c">}}

{{<matomeQuote body="ヘイ、ドキュメント読んでたんだけど、prose.shでブログ始めようかな！ここに書いてあることなんだけどね[0]：<br>＞Go SSHサーバーでrsyncを再実装してるから、多くのオプションはまだサポートされてないんだ。例えば、--deleteとか--dry-runとか。<br><br>でも、トップページにはこう書いてある：<br>＞静的サイトをアップロード：<br>＞rsync --delete -rv ./public/ pgs.sh:/mysite/<br><br>deleteはサポートされてるの？どっちかのページが古いのかな？それとも俺が見落としてる？<br>[0] https://pico.sh/file-uploads" userName="LelouBil" createdAt="2025-04-02T23:00:57" color="#ff5c5c">}}

{{<matomeQuote body="おっと！deleteはサポートされてるよ。アップデートしとくね！" userName="antoniomika" createdAt="2025-04-02T23:57:52" color="#ff5c5c">}}

{{<matomeQuote body="サイトに書いてなかったらごめんね。これからどんなサービスが楽しみ？<br><br>https://forgejo.org/ みたいなgit/forgeホストのsshとかTUIフロントエンドがあったらマジでクールだと思う！" userName="cfebs" createdAt="2025-04-02T23:20:41" color="">}}

{{<matomeQuote body="https://pr.pico.sh/ と https://github.com/picosh/git-pr :-)　だよ！" userName="vhodges" createdAt="2025-04-03T16:09:18" color="#45d325">}}

{{<matomeQuote body="Pico PagesとかPico Proseにカスタムドメインをリダイレクトできるのは分かった。でも、その逆はできる？Pico.shアカウントでCNAMEを作って(username-myapp.pgs.shがabc.xyz.comを指すように)証明書を取得して、Load Balancer (my-alb-12345.us-east-1.elb.amazonaws.comとか)に安全なhttps接続を設定したいんだけど。" userName="WinstonSmith84" createdAt="2025-04-03T16:33:29" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="うんうん！tuns がおすすめだよ。任意のバックエンド転送をサポートしてるから。<br>https://pico.sh/tuns#custom-domains" userName="antoniomika" createdAt="2025-04-03T17:10:33" color="#785bff">}}

{{<matomeQuote body="ありがとね！理解が間違ってたら教えてほしいんだけど、これってカスタムドメイン customdomain.example.com を tuns.sh にリダイレクトしてるってことだよね？やりたいことは、tuns.sh (か別の Pico サービス) でカスタムドメイン作って、そのドメインを別の DNS (Load Balancer とか API Gateway とか) にリダイレクトすることなんだ。<br>{username}-{proj}.tuns.sh が myalb-123abc.amazonaws.com を指すみたいな。" userName="WinstonSmith84" createdAt="2025-04-04T13:02:14" color="">}}

{{<matomeQuote body="これ、数年前に HN で見たの覚えてる！ビジネスサイドの調子はどう？ユーザーをどう増やしたとか、どれくらいの人がサブスクライブしてるのか教えてくれたりしないかな？同じようにシンプルなサービスを違う分野で作りたいんだ。" userName="memset" createdAt="2025-04-03T04:07:00" color="#785bff">}}

{{<matomeQuote body="＞ビジネスサイドの調子はどう？ユーザーをどう増やしたとか、どれくらいの人がサブスクライブしてるのか教えてくれたりしないかな？<br>もちろんいいよ。決算報告を見てみて！https://blog.pico.sh/status-011<br>結局、自分たちのサイドプロジェクトのためにこういうサービスが必要だったから続けてるんだ。みんなが使ってくれるとモチベーション上がるしね。マーケティングは HN/lobsters/reddit でやってるよ。ターゲット層がそこだから。" userName="qudat" createdAt="2025-04-03T14:56:28" color="#ff33a1">}}

{{<matomeQuote body="月２ドルで、docker とか、SSL 付きのちょっと危ない postgres を特定のユーザーに公開 (tun) できるってこと？" userName="larodi" createdAt="2025-04-02T23:55:29" color="">}}

{{<matomeQuote body="その通り！トンネルは ssh 認証で保護されてるから、アクセスさせたいユーザーだけアクセスできるようにできるよ。" userName="antoniomika" createdAt="2025-04-02T23:57:23" color="#ff5c5c">}}

{{<matomeQuote body="localhost のポート空間でどうやって衝突を避けてるのかわからないけど (ネットワーク名前空間？)、こういう場合は UNIX ドメインソケットに転送した方がいいよ。ローカルの tcp ソケットより効率的だし。sshd_config で StreamLocalBindUnlink と StreamLocalBindMask を設定するといいかも。低オーバーヘッドで高セキュリティなセットアップにしたいなら、UNIXドメインソケットを使うと良いよ。" userName="ryao" createdAt="2025-04-03T04:18:47" color="#45d325">}}

{{<matomeQuote body="実は、トランスポート層には UNIX ソケットを使ってるんだ。sshd は使ってなくて、トンネリング専用のデーモンをカスタムで書いたんだよ。興味があれば、このプロジェクトを見てみて！https://github.com/antoniomika/sish<br>sish は SSH アプリへの最初の挑戦だったんだ。tuns は UDP トラフィックも SSH 経由でトンネルできるんだ。" userName="antoniomika" createdAt="2025-04-03T05:52:30" color="#38d3d3">}}

{{<matomeQuote body="Cloudflare が Cloudflared デーモンでゼロトラストを実現してるよ。しかも無料。" userName="ryao" createdAt="2025-04-03T04:13:17" color="">}}

{{<matomeQuote body="RFC-1 大好き！そのスピリットで頑張って :) サーバーはどこにあるの？" userName="hakaneskici" createdAt="2025-04-03T00:02:06" color="">}}

{{<matomeQuote body="Ashburn, VA と Nuremberg, DEだってさ！" userName="antoniomika" createdAt="2025-04-03T00:37:31" color="">}}

{{<matomeQuote body="TOFUとMITMについては何してるの？" userName="raggi" createdAt="2025-04-03T00:54:23" color="">}}

{{<matomeQuote body="ホストキーはここで公開されてて、ずっと使えるよ: https://pico.sh/host-keys" userName="antoniomika" createdAt="2025-04-03T02:01:45" color="#38d3d3">}}

{{<matomeQuote body="SSH関連のよくわからん略語を並べるより、もうちょい詳しく説明した方が実りあるレスポンスに繋がりそうだけどな。TOFUとMITMの何について知りたいんだ？TOFUもMITMも、必ずしも悪いもんじゃないし。脅威モデルとか関係者次第じゃね？コメントと嫌味っぽい追記からすると、なんかマズいことしてるって言いたいんだろ？何がマズいのかわかんねーけど。" userName="junon" createdAt="2025-04-03T07:26:23" color="">}}

{{<matomeQuote body="彼らがやってる以上のことは何もできないんじゃない？<br>HTTPSで認証された接続を通じて、公開鍵をアウトオブバンドで受け取れるじゃん。つまり、彼らの「最初の信頼問題」へのアプローチは、＞”初回利用時の信頼”＜じゃないってこと。" userName="kpcyrd" createdAt="2025-04-03T09:34:05" color="#ff33a1">}}

{{<matomeQuote body="TOFUへの他の解決策は知らないけど、githubとかpico.shみたいな公開SSHサーバーのために、標準化された/.well-known/ssh-keys.jsonパスみたいなものがあったら嬉しいかも。" userName="squiggleblaz" createdAt="2025-04-03T13:21:40" color="#785bff">}}

{{<matomeQuote body="SSHFPってのがあるけど、デフォルトでオフだし、攻撃者がDNSを改ざんできない前提だし、DNSSECの導入はだいたい失敗してるし。今のところ、ホストキーのページはサイトの一番下に一回リンクされてるだけで、オンボーディングのドキュメントには載ってないから、実質「yolo」を推奨してるようなもん。ユーザーが詳しくないと、他のアクセスできるものも危険に晒す可能性がある。MITMは稀だから大した問題じゃないって意見もあるけど、カンファレンスのWiFiを乗っ取って、ターゲットにサービスを宣伝するとか、成功率高いぞ。ウェブはPKIでこの問題を改善してるけど、フィッシング詐欺もあるし。SSHはこのユースケースには向いてない。" userName="raggi" createdAt="2025-04-03T19:05:48" color="#ff5733">}}

{{<matomeQuote body="カンファレンスのWiFiのシナリオだとDNSSECも役に立たないね。" userName="tptacek" createdAt="2025-04-03T19:41:51" color="">}}

{{<matomeQuote body="https://pico.sh/file-uploads#how-do-i-delete-files　に削除方法が書いてあるよ。" userName="qudat" createdAt="2025-04-03T23:42:12" color="">}}

{{<matomeQuote body="ANSIコードでターミナルの出力をレンダリングしてくれる“pastebin”を探してたら、この賢いサービスを見つけたんだよね。皮肉なことに、実際にはANSIコードは使えないんだけど（プレーンテキストしか受け付けない）。でも、サイト全体の雰囲気とかはすごく気に入った！作者のqudatとantoniomimaもHNで活発にコメントしてるし、全体的に良い仕事してるよね。" userName="TheTaytay" createdAt="2025-04-03T02:04:21" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="アイデアはすごく良いと思うんだけど、料金ページが見つからなくて、すぐに読むのをやめたくなっちゃった（持続可能じゃないサービスに時間を使いたくないから）。議論の中で月額$2って知ったけど、サイトで見つけられないし、持続可能とは思えないからまだ心配。B2B SaaSを運営してるんだけど、サポートコストが一番かかるんだよね。複雑なB2Bアプリなら月額$40以下は無理。もっとシンプルなアプリ/サービスなら良いけど、それでも慎重にならないとね。" userName="jwr" createdAt="2025-04-03T01:25:04" color="#45d325">}}

{{<matomeQuote body="フィードバックありがとう。header navのリンクを”pico+”から”pricing”に変更したよ。SaaSの運営コストについては、ハードウェアの使用率とリソースの割り当てを積極的に監視してるよ。Antonioと僕はSaaS (とPaaS) 製品の構築と運営の経験が豊富だから、どんな利用状況にも対応できる自信があるよ。サポートが管理しやすいように、提供するサービスも戦略的に選んでるんだ。" userName="qudat" createdAt="2025-04-03T14:37:16" color="#ff5733">}}

{{<matomeQuote body="料金情報が見つからないってイライラしてたけど、偶然クリックしたら見つけられたよ！https://pico.sh/plus　に書いてある。$0の”Starter” tierもあるみたい。(https://pico.sh/pgs　のページにリンクがあったよ)　追記：Starter tierについても書いた。" userName="jimbosis" createdAt="2025-04-03T01:51:03" color="#38d3d3">}}

{{<matomeQuote body="＞B2B SaaSを運営してるんだけど、サポートコストが一番かかるんだよね。複雑なB2Bアプリなら月額$40以下は無理”<br>ある程度は同意できるかな。でも、提供するものの複雑さによると思うよ。APIでフラットなデータを公開するだけなら、API Gateway x Lambda x DynamoDBの組み合わせで、無料枠がかなり大きいからほとんどコストがかからないかも。" userName="cookiemonsieur" createdAt="2025-04-03T07:36:20" color="">}}

{{<matomeQuote body="＞API Gateway x Lambda x DynamoDBの組み合わせは、サポートメールには答えてくれないよね？<br>特にB2Bだと、技術的な問題以外のサポート負荷を過小評価しがち。" userName="jwr" createdAt="2025-04-04T03:31:25" color="#ff5733">}}

{{<matomeQuote body="＞API Gateway x Lambda x DynamoDBの組み合わせは、サポートメールには答えてくれないよね？<br>それがどうして月額$40っていう価格設定に関係してくるの？" userName="cookiemonsieur" createdAt="2025-04-04T07:18:16" color="">}}

{{<matomeQuote body="ユーザー1人あたり月額$40がサポートだけにかかるってこと？つまり、1000人のユーザーがいれば、持続可能にするには$40,000稼がないといけないってこと？つまり10人の従業員が必要になるってこと？" userName="lionkor" createdAt="2025-04-03T07:22:39" color="">}}

{{<matomeQuote body="SSHで色々できるようなユーザーって、サポートほとんどいらないんじゃないかなって思うんだよね。だって、自分で解決できる人たちを選んでるようなもんだし。昔、共有ウェブホスティングのビジネスやってたんだけど、お客さんはみんな詳しかったから、「基本、自分でよろしく！インフラがおかしい時だけ言って！」みたいな感じで。2000人くらいのお客さんを一人で見てたけど、サポートメールは1日に2通くらいしか来なかったよ。当時は24～72時間以内の返信でOKだったから、ずっと張り付いてる必要もなかったし。" userName="conductr" createdAt="2025-04-03T17:55:48" color="#785bff">}}

{{<matomeQuote body="月4万ドルの収入で、優秀な社員10人を養えると思ってるなら、考えが甘すぎるよ！同じように、B2BのSaaSの契約が1000件取るのが簡単だと思ってるなら、B2BのSaaSビジネスやったことないでしょ？月40ドルの契約だと、年間480ドルの収入になるよね。つまり、1つの契約あたり、サポートにかけられる時間は年間たったの1時間。2時間以上かけたら赤字だよ。絶対サポートのリクエストは来るし、パスワード忘れとか、ログインできないとか、ネットワークの問題とか、請求書なくしたとか、請求期間変えてくれとか、去年の請求書くれとか、データのexport/importとか、色々あるんだよね。ビジネスやったことない人は、ビジネスのコストを甘く見てるんだよね。" userName="jwr" createdAt="2025-04-04T03:29:40" color="#ff33a1">}}

{{<matomeQuote body="「Book a call」みたいな高額なプランの顧客が、他の顧客を支えてるってことだよね。例えば、10ドル/月/ユーザーで200席契約すると、月2000ドル払うことになるけど、見つかるバグは割と共通してたりするから、サポートは20人分くらいで済むかもしれない。でも、20人の個人ユーザーだと、収入は全体の10%にしかならないから、大口の顧客が必要なんだよね。" userName="blatantly" createdAt="2025-04-03T08:58:57" color="#ff5c5c">}}

{{<matomeQuote body="無料で無制限のVPSがあるのに、なんでSDFなの？去年SDFに入ったんだけど、がっかりしたんだよね。制限(例えば、シェルを変えるには「validated」されないといけないとか、ファイルに'touch'すらできないとか…)は我慢するつもりだったんだけど、コミュニティが全然活気がないんだもん。しかも、新規ユーザー向けのIRCは日曜日だけ！もう一回試してみたい気持ちもあるけど、2025年の今、SDFの価値がわからないんだよね。" userName="hebocon" createdAt="2025-04-03T04:43:12" color="">}}

{{<matomeQuote body="昔はUnixシステムにアクセスできるのって、大学とか大企業とかにいないと難しかったんだよね。SDFはそれを無料で提供してたんだ。今は、1ドルの寄付で基本的なメールとかウェブホスティングとかが使えるし、36ドルの寄付でもっと色々できる。フォーラムとかチャットもあるし、VPSとかダイヤルアップとかVPNとかMinecraftサーバーとかも提供してる。今はもっと安く色々できるけど、ノスタルジーとか、制限された環境の魅力とかもあって、ちょっと面白いんだよね。" userName="IgorPartola" createdAt="2025-04-03T12:21:41" color="">}}

{{<matomeQuote body="ちょうどいいタイミングで出てきたな。今朝、Obsidian -> Hugo -> Github Pagesで個人のブログを作ってたんだ。Github Pagesの代わりにPico.shを使ってみようかな。それか、自分でホストするか。" userName="oldandboring" createdAt="2025-04-03T14:10:16" color="">}}

{{<matomeQuote body="KISSなアプローチが良いね！シンプルなテキストファイルで基本的なサービスを構築してるのがマジですごい。Linux/Unix/BSDとかWindowsしか知らない人にもSSHのスキルを身につけさせるのに最適な方法かも。PikaPodsの基本的な機能のライバルになりそう。今週試してみるよ！頑張って！" userName="stego-tech" createdAt="2025-04-03T02:01:05" color="#ff5c5c">}}

{{<matomeQuote body="めっちゃ面白い！最近、GeminiとかtildeコミュニティとかTUIアプリとか、テキストベースの面白いもの周りの盛り上がりがすごいよね！このsshを使ったサービスもその一つだね！どんどん出してほしい！" userName="mxuribe" createdAt="2025-04-02T20:53:55" color="#785bff">}}

{{<matomeQuote body="pico.shは全然新しくないよ。3年くらい前からlists.shを使ってたんだよね。ブログを始めてからprose.shが出て、他のサービスも続々出てきたけど、ブログを乗り換えたくなかったし、lists.shもなくなっちゃったから、バイバイしたんだ。でも、彼らが作ったものは尊敬してるし、応援してるよ。" userName="bayindirh" createdAt="2025-04-02T21:26:45" color="#ff5733">}}

{{<matomeQuote body="マジか！tuns.shを2週間前に見つけて登録したんだよね。（体験談も書いたよ<br>＞https://danielittlewood.xyz/notes/self-hosting-with-tunnels”" userName="tempfile" createdAt="2025-04-03T18:14:05" color="">}}

{{<matomeQuote body="pico.shの大ファンだよ！いくつか小さなサイトをホストしてるけど、何かを立ち上げるのにこんなに早い方法はないね。" userName="scbenet" createdAt="2025-04-03T01:35:21" color="#ff5733">}}

{{<matomeQuote body="それな！GitHubが提供してるみたいなやつ？<br>＞https://docs.github.com/en/authentication/troubleshooting-ss...“" userName="palata" createdAt="2025-04-02T22:44:50" color="">}}

{{<matomeQuote body="SSHパケットがブロックされてるか、それともポート22だけがブロックされてるか確認した？もしポートがブロックされてるだけなら、22以外のポートを使うのが良いよ。" userName="mbs159" createdAt="2025-04-06T18:59:28" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Cockscrewが君のユースケースに合うかもよ。<br>＞https://github.com/bryanpkc/corkscrew“" userName="cuanim" createdAt="2025-04-03T05:02:01" color="">}}

{{<matomeQuote body="マジでクソ会社！旅行中はIMAPSポート（993）でsshdをリッスンさせてるマシンを持ってるんだ。多くの無料ネットワークがsshを許可してないけど、-Jとポート993のsshdがあれば問題ないんだよね。" userName="johnklos" createdAt="2025-04-03T04:40:36" color="#38d3d3">}}

{{<matomeQuote body="エンタープライズ環境でよく使われるNGFWだとブロックされるかもね。YCPポートだけじゃなくて、パッケージの署名もチェックしてるから。" userName="lormayna" createdAt="2025-04-03T05:08:05" color="">}}

{{<matomeQuote body="SSHがDNSのUDPパケットでトンネリングできるって聞いたことある。<br>この記事は良さそうだから、あとで読んでみよう。<br>＞medium.com/@rogergalo/learn-how-easy-is-to-bypass-fi…" userName="chasil" createdAt="2025-04-02T20:58:59" color="">}}

{{<matomeQuote body="そこまでしなくてもいいかも。ポート22をブロックしてるだけじゃないかな。" userName="palata" createdAt="2025-04-02T22:45:34" color="">}}

{{<matomeQuote body="だよねー。SSHとHTTPSをポート443でホストできるし。HAProxyで昔はできたけど、今はNginxでもできるし。ブラウザからアクセスされたら普通のHTTPSトラフィック、それ以外はSSHって感じにできる。<br>もし会社がSSHプロトコル自体をブロックしてたら、SSL経由でSSHをトンネリングする必要があるけど…こっちはちょっと面倒だった気がする。" userName="mbreese" createdAt="2025-04-03T01:29:57" color="#38d3d3">}}

{{<matomeQuote body="月2ドルは安すぎない？現実的な市場規模はどれくらい？24ヶ月以内にどれくらい獲得できるの？開発者ひとりの給料も出なさそう。これじゃ長続きしないんじゃないかって心配になる。才能があってやる気のあるソロの創業者でも、一番気難しくて要求が多くて恩知らずなオーディエンス（nerdたち）のために自分のスキルに見合わない収入で働いてたら、やる気もなくなっちゃうよ！OP、値段上げて！" userName="sjtgraham" createdAt="2025-04-04T12:59:03" color="">}}

{{<matomeQuote body="アイデアはいいね。<br>UIでいくつか変なところを見つけた。<br>1. サインアップのプロンプトで“signup”って表示される。何を入力すればいいかわからなかった。usernameって入力したら正解だった。<br>2. トークンを作成できなかった（推奨されてるのに）。cキーを押して名前を入力してEnterキーを押しても何も起こらなかった。" userName="codazoda" createdAt="2025-04-02T21:54:29" color="">}}

{{<matomeQuote body="ごめん、これはtuiのフォーカス問題で、すぐに修正するよ！＜tab＞キーを押してOKがハイライトされるまで移動して、Enterキーを押せばOKだよ。" userName="antoniomika" createdAt="2025-04-02T23:01:04" color="#ff5c5c">}}

{{<matomeQuote body="いいね！でも図のコントラストを上げた方がいいかも。例えばここ<br>https://pico.sh/tuns" userName="thelittleone" createdAt="2025-04-03T06:54:18" color="">}}

{{<matomeQuote body="＞Upload your static site to us<br>どうやって違法なコンテンツとかの悪用を防ぐの？" userName="mrbluecoat" createdAt="2025-04-02T20:13:30" color="">}}

{{<matomeQuote body="他のホスティングプロバイダーと何が違うのかよく分かんないんだよね。ただ、彼らは虐待とか禁止コンテンツについて明確にしてるし、運営方針もちゃんと書いてあるよ。[1]と[2]にリンクがあるから見てみて。" userName="Andoryuuta" createdAt="2025-04-02T20:46:24" color="">}}

{{<matomeQuote body="これって結構難しい問題だよね。Pico.shは小さくて良い感じだけど、ほとんどのホスティングシステムはコンプライアンスの観点からモンスターになっちゃうんだ。官僚主義が好きなんじゃなくて、コンテンツのモデレーションがマジで大変だから。" userName="jkingsman" createdAt="2025-04-02T20:42:13" color="#785bff">}}

{{<matomeQuote body="＞コンテンツのモデレーションがマジで大変だって？<br>言い過ぎだって。確かに楽しくはないし、あんまり面白くもないけど、ちゃんとできるよ。小規模な組織でもね。最近は分類とかラベリングのMLモデルがかなり優秀だから、自分でデータセットをfine-tuningしなくても結構使えるんだ。" userName="diggan" createdAt="2025-04-03T12:18:44" color="#785bff">}}

{{<matomeQuote body="LESみたいなサイトだと、月2€でVM丸ごと簡単に見つけられるよ。" userName="shishcat" createdAt="2025-04-02T21:29:02" color="">}}

{{<matomeQuote body="良い質問だね。<br>今は違法コンテンツをチェックするためにMLモデルをいくつか動かしてて、即座にBANハンマーしてるよ。あと、自分たちで作った管理ツールでプラットフォーム上のコンテンツを監視してる。" userName="qudat" createdAt="2025-04-03T15:02:31" color="#ff5c5c">}}

{{<matomeQuote body="https://git.0x0.st/mia/0x0#moderation-ui みたいなツールがあると便利かもね。" userName="Helithumper" createdAt="2025-04-02T20:45:18" color="">}}

{{<matomeQuote body="話は変わるけど、NSFW（Not Safe For Work）の分類器ってVPSで使うにはどれくらい重いの？このリンクはHuggingFaceのモデルにつながってて、著者のTelegram IDがプレミアムモデルを提供してるみたい。" userName="aitchnyu" createdAt="2025-04-03T07:43:39" color="">}}

{{<matomeQuote body="＞NSFWの分類器ってVPSで使うにはどれくらい重いの？<br>全然重くないよ。全体から見れば本当に小さいし、CPUだけで簡単に動かせる。ただ、1秒間に100個も分類したいなら別だけどね。" userName="diggan" createdAt="2025-04-03T12:20:32" color="#785bff">}}

{{<matomeQuote body="だから、誰も月2ドルでこれを維持できないんだよ。違法なものを取り締まるコストもかかるし、ひどいコンテンツを取り除くにはかなりの労力がいるからね。" userName="ashishb" createdAt="2025-04-02T21:05:23" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
