+++
date = '2025-07-11T00:00:00'
months = '2025/07'
draft = false
title = 'Cloudflare Tunnelsに代わるか？！オープンソースのPangolin登場、セルフホストの選択肢を広げる'
tags = ["オープンソース", "セルフホスト", "ネットワーク", "セキュリティ", "リバースプロキシ"]
featureimage = 'thumbnails/green3.jpg'
+++

> Cloudflare Tunnelsに代わるか？！オープンソースのPangolin登場、セルフホストの選択肢を広げる

引用元：[https://news.ycombinator.com/item?id=44526015](https://news.ycombinator.com/item?id=44526015)




{{<matomeQuote body="PangolinはWireGuardトンネルでプライベートリソースを安全に公開できる、オープンソースのセルフホスト型リバースプロキシ管理サーバーだよ。インフラを完全にコントロールでき、プロキシ、認証、アクセスをUIで管理できるんだ。GitHubはhttps://github.com/fosrl/pangolin。VPSなら5分でデプロイできるよ！https://docs.fossorial.io/Getting%20Started/quick-install。Lawrence Systemsのデモ動画はこれ！https://youtu.be/g5qOpxhhS7M?si=M1XTWLGLUZ0WzTv&t=723。ポートフォワーディング不要、OAuth2/OIDC、WAFなど主要機能も満載さ。" userName="miloschwartz" createdAt="2025/07/10 21:50:43" color="#ff33a1">}}




{{<matomeQuote body="これ超ワクワクするね！Cloudflare Tunnelのロックインがずっと嫌だったから、オープンソースの選択肢はマジで嬉しいよ。Pangolinが不安定なネットワークとか認証問題、スケーリングをどう扱うのか、Cloudflareの”it just works”に比べてどうなのかが特に気になるな。誰か実際に使った人いたら、感想教えて欲しい！家でRaspberry Piを使ってブログとか動かしてるから、実体験の話はマジで貴重だよ。" userName="44za12" createdAt="2025/07/11 08:09:04" color="#38d3d3">}}




{{<matomeQuote body="Pangolinは進化し続けてるよ。3ヶ月前の素晴らしい概要動画があるから見てみてね！https://www.youtube.com/watch?v=8VdwOL7nYkY" userName="adr1an" createdAt="2025/07/18 04:38:55" color="">}}




{{<matomeQuote body="興味があるなら、こっちにもっと情報があるよ！https://aazar.me/posts/reincarnating-a-raspberry-pi" userName="44za12" createdAt="2025/07/11 19:22:47" color="">}}




{{<matomeQuote body="Cloudflare Tunnelエラーが出てるんだけど。" userName="gowthamgts12" createdAt="2025/07/12 05:22:21" color="">}}




{{<matomeQuote body="あぁ、皮肉だね。モバイルデータやVPNで確認したら、動いてるみたいだよ。" userName="44za12" createdAt="2025/07/12 06:34:37" color="">}}




{{<matomeQuote body="これ、リモート開発環境とかの管理にすごく面白そうだね。CF Tunnelsは使ったことないし、個人的にはSSHトンネルやTailscaleでプライベートサービスをプロキシしてるんだけど。PangolinがTailscaleとかと比べて何を解決してくれるのか、素人にも分かりやすく説明してくれるかな？EC2インスタンスとか家にあるノートPCみたいな単一デバイスでサービスをテストしたいって状況なんだけど。" userName="noduerme" createdAt="2025/07/11 02:29:11" color="#ff5733">}}




{{<matomeQuote body="ありがとう！君が使ってるSSHやTailscaleは、君のユースケースには最高だと思うよ！Pangolinは、もっと静的で永続的なサービスへのトンネル、つまり一時的なSSHトンネルというより、一般ユーザーを君のアプリに引き込むためのものだと考えてるんだ。だから、ビジネスの内部アプリとか、ImmichやGrafanaみたいなホームラボアプリを家族にブラウザから使わせたい場合に良いツールだよ。伝わったかな？" userName="oschwartz10612" createdAt="2025/07/11 02:45:07" color="#ff33a1">}}




{{<matomeQuote body="俺はNginx Proxy ManagerをリバースプロキシとSSL終端に使ってて、ImmichとかHome Assistantとか動かしてるんだけど。Pangolinを使うと、俺は何を得られるのかな？" userName="barbazoo" createdAt="2025/07/11 04:37:47" color="#ff33a1">}}




{{<matomeQuote body="もしNginx Proxy Managerでうまくいってるなら、それでいいと思うよ！Pangolinは主に、ユーザー管理、ピンコード、OIDC、ロールみたいなより細かい認証制御が欲しい場合にメリットがあるかな。NPMじゃそのままでは難しいかもね。あと、ISP側の問題があるなら、PangolinをVPSに置けばWireGuardの設定とかが楽になるんだ。全部UIとシンプルなインストールスクリプトでラップされてるからね。APIで自動化もできるよ。" userName="oschwartz10612" createdAt="2025/07/11 04:46:06" color="#ff33a1">}}




{{<matomeQuote body="内部アプリとかでトンネル使う必要ある？普通にルーティングしたり、ファイアウォール設定したりすればいいじゃん。正直、そんなに多くの人がトンネルを必要とする理由が分かんないんだけどな。" userName="wredcoll" createdAt="2025/07/12 01:37:42" color="">}}




{{<matomeQuote body="ISPがポート25、80、443をブロックしてるからトンネルは必須なんだよ。あと、自分のIPアドレスを直接公開したくない人もいるし、動的IPアドレスでもDNSの更新を気にしなくて済むから便利だよ。" userName="zerd" createdAt="2025/07/12 05:11:53" color="#ff5c5c">}}




{{<matomeQuote body="なるほど、それってめっちゃ理にかなってるね！試してみるのが本当に楽しみだよ！" userName="noduerme" createdAt="2025/07/11 08:23:19" color="">}}




{{<matomeQuote body="Tailscaleとheadscaleは内部アクセスに超便利。Cloudflare Tunnelsはサービスをネットに公開する時に保護してくれるんだ。両方使ってる人もいるし、CF TunnelsをNginxプロキシマネージャーに繋ぐのもアリだよ。Tailscaleも公開できるけど、CFの保護の方がガチだよ。Pangolinも面白そうだから、CF Tunnelsの裏で試してから移行するのもありかもね。" userName="j45" createdAt="2025/07/11 10:27:21" color="#38d3d3">}}




{{<matomeQuote body="俺はCapRoverをLinux VMでTailscaleとCloudflareと一緒に使ってるよ。めっちゃうまくいくけど、CapRoverがSSLの制御をあんまり好きじゃないから、Nginxの設定をアプリごとに手動でいじる必要があるんだ。" userName="Lord_Zero" createdAt="2025/07/12 00:21:46" color="#45d325">}}




{{<matomeQuote body="いいセットアップだね。俺は一度設定したらもう触りたくないのか、それとも自分でいじり続けたいのかで、方向性を決めるのが好きなんだ。" userName="j45" createdAt="2025/07/13 03:41:34" color="">}}




{{<matomeQuote body="俺、自宅のUnraidサーバーでCloudflare Tunnelsをめっちゃ使ってるわ。要は、公開したいアプリがあるけどTailscaleノードは使いたくない時（例えば姉がPlexサーバー使うとかね）。リバースプロキシを立てずに、CFでサブドメイン作って、それをCFトンネルにルーティングするだけなんだ。たった3項目入力するだけで、SSL証明書も自動でできるから最高だよ！" userName="mbesto" createdAt="2025/07/11 04:13:05" color="#785bff">}}




{{<matomeQuote body="なんでTailnetに制限付きアクセスをさせないの？そうすれば何も公開されずに済むじゃん。" userName="jonotime" createdAt="2025/07/11 05:08:18" color="">}}




{{<matomeQuote body="多分、Tailscaleをデバイスごとにインストールさせるのは、リンクを送るよりずっと大変なんだよ。だから俺はPangolinを使ってるんだ。" userName="omnimus" createdAt="2025/07/11 06:48:53" color="#ff33a1">}}




{{<matomeQuote body="TailscaleとPlexは相性悪いんだよ。特にPlexが自分のファイルにアクセスするのにお金を取ろうとし始めてからね。Jellyfinへの移行を検討中だよ。Plexがこんな感じだから、TailscaleでLANに繋ぐのも複雑に感じるのは分かるわ。マジでPlexはクソ。いきなり無料アプリで自分のmp4ファイル見るのに金払えとかありえないだろ？誰が好き好んで中抜き野郎に金払ってんだよ。Plexのコア機能は全部無料でできることばっかだしな。" userName="noduerme" createdAt="2025/07/11 08:30:25" color="#785bff">}}




{{<matomeQuote body="Plexの無料モバイルビューアーアプリが突然有料になったって話に混乱したよ。俺のPlexサーバーは友達とか家族が無料で使ってるんだ。Plex Homeっていう“家族のメンバー”みたいな区別があるらしいけど、よくわかんない。結局、家族を別ユーザーとして登録すれば無料で使えるままだよ。" userName="wredcoll" createdAt="2025/07/12 01:42:22" color="#ff5733">}}




{{<matomeQuote body="それは違うんじゃないかな。俺はWindowsやmacOSの無料Plexサーバーをスマホから使ってるけど、2025年4月以前はリモート視聴が無料だったのに、最新アプデ以降はLAN外だとサブスクが必要って出るんだ。Plexのサーバーを介さないでTailscaleでトンネルしてWebアプリを使えば無料だけど、モバイルアプリだと無理。Plex Homeは古いアカウントが優遇されてるのかもね。" userName="noduerme" createdAt="2025/07/12 05:46:52" color="#ff5c5c">}}




{{<matomeQuote body="同じアカウントで接続してるの？それとも友達とかで別アカウントを追加してる？" userName="wredcoll" createdAt="2025/07/12 20:04:30" color="">}}




{{<matomeQuote body="なるほど、Plexは新しい課題があるんだね。一つのサービスを特定のユーザーのために公開したくないんだ。俺は家族と画像サーバーを共有する時、TailscaleをWindowsデスクトップにインストールしてもらうのは簡単だったよ。友達や家族をTailnetに追加すると、後でトラブルシューティングも楽になるんだ。CloudflareのCF access controlは公開されるし、WARPはクライアントにインストールが必要で、Tailscaleより設定が難しいみたいだね。" userName="jonotime" createdAt="2025/07/11 16:57:00" color="#ff5c5c">}}




{{<matomeQuote body="もう一つの大きな問題は、Plexが全ファイル名をサーバーに送るのを止められないことだね。" userName="subscribed" createdAt="2025/07/11 11:24:43" color="">}}




{{<matomeQuote body="トンネル経由でメディアストリームを提供するのがToSに違反する可能性があるって知ってた？それが嫌で使わなかったんだよね。" userName="hexfish" createdAt="2025/07/11 06:39:08" color="#ff5733">}}




{{<matomeQuote body="皆さんこんにちは、もう一人のメンテナーだよ。PangolinはTraefikでHTTPプロキシ、Badgerで認証、GerbilでWireGuard管理をするんだ。NewtはCLIツール兼Dockerコンテナで、ユーザー空間WireGuardでGerbilに繋がりローカルリソースをプロキシするよ。これでサービス公開に特権プロセスやコンテナは不要さ！" userName="oschwartz10612" createdAt="2025/07/10 21:53:45" color="#785bff">}}




{{<matomeQuote body="数ヶ月間、自宅からサービスを提供するためにこれをHetznerの小さなVPSで使ってるよ。トラフィックは自宅のファイアウォールの裏にあるNewtにトンネルしてるんだ。すごくスムーズで安定してるよ。唯一問題かと思ったことも、Pangolinとは全く関係なかったね。https://github.com/orgs/fosrl/discussions/950" userName="PeterStuer" createdAt="2025/07/11 06:25:31" color="#ff5c5c">}}




{{<matomeQuote body="Newt (https://github.com/fosrl/newt) はPangolinシステムの一部で、通常は自宅のファイアウォールの後ろにある「エッジサーバー」側で実行するカスタムのユーザー空間WireGuardクライアントなんだ。Pangolinサーバー（通常は固定IPを持つ小さなVPSでホスト）に接続し、WireGuardトンネルのネゴシエートと、公開・マッピングした異なるサービスへのディスパッチを管理するよ。全体のスタックを理解するには、https://docs.fossorial.io/Getting%20Started/overview にある素晴らしいシステム概要図を見てみてね。" userName="PeterStuer" createdAt="2025/07/11 08:51:00" color="#ff33a1">}}




{{<matomeQuote body="ドキュメントに各ユースケースのミニチュートリアルがあったら最高だな！すぐに試せて役立つか確認できるし。" userName="oulipo" createdAt="2025/07/11 07:36:30" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もうすぐだよ！ドキュメントを全面的に改善する予定さ！" userName="oschwartz10612" createdAt="2025/07/11 16:37:11" color="">}}




{{<matomeQuote body="Incusのチュートリアルが素晴らしいから見てみて！Pangolinでも同じことができたら最高だね、何ができるか把握できるし！<br>URL: https://linuxcontainers.org/incus/try-it" userName="oulipo" createdAt="2025/07/12 14:18:20" color="#785bff">}}




{{<matomeQuote body="それはマジで嬉しいね！" userName="oulipo" createdAt="2025/07/12 13:30:23" color="">}}




{{<matomeQuote body="Pangolinが内部でTraefikを使ってるって！Traefikってマジすごいよね、拡張性と堅牢性が特に！もっと注目されてもいいのに。" userName="hardwaresofton" createdAt="2025/07/11 11:45:41" color="#45d325">}}




{{<matomeQuote body="K3S homelabでingress controllerとしてTraefikを使ってるんだけど、DXは良い感じ。唯一、圧縮（gzip/br/zstd）ができてなくて、アプリケーション層でやってるのが微妙なんだ。何かヒントある？<br>テーブルステークスな機能なのに。" userName="jtbaker" createdAt="2025/07/11 12:13:43" color="#45d325">}}




{{<matomeQuote body="compress middlewareは試した？ https://doc.traefik.io/traefik/middlewares/http/compress/<br>すでにクラスタに入ったリクエストを圧縮するってこと？インターネットから未圧縮で来たなら、あまり意味ないかもね。でも、ingress controllerの後にまだ処理があるなら、価値はあるかも。" userName="hardwaresofton" createdAt="2025/07/11 12:23:10" color="#ff5c5c">}}




{{<matomeQuote body="GitHubにあるTraefik v3.4.4 amd64の公式バイナリはたった207MBだよ。<br>URL: https://github.com/traefik/traefik/releases/expanded_assets/..." userName="1vuio0pswjnm7" createdAt="2025/07/11 17:51:30" color="#45d325">}}




{{<matomeQuote body="HAProxyのDockerイメージはたった41MBしかないのに…debは1.6MBだよ。" userName="FuriouslyAdrift" createdAt="2025/07/11 20:18:09" color="">}}




{{<matomeQuote body="いろんなTLSライブラリでHAProxyのバイナリをコンパイルしてるんだ。サイズはライブラリのバージョンやオプションで変わるね。OpenSSLは9.0MB、WolfSSLは4.6MBだった。OpenSSLのサイズは残念。TraefikはOpenSSL以外のTLSライブラリも使えるのかな？" userName="1vuio0pswjnm7" createdAt="2025/07/11 22:13:01" color="#ff5c5c">}}




{{<matomeQuote body="現代の開発では、バイナリサイズなんて誰も気にしないんだね。ひどいもんだよ。" userName="sgarland" createdAt="2025/07/11 21:04:18" color="">}}




{{<matomeQuote body="Cloudflare Tunnelsのオープンソースの代替案なんてたくさんあるよ: https://github.com/anderspitman/awesome-tunneling<br>でも、Pangolinは良いし洗練されてる方だと思うな。" userName="PhilippGille" createdAt="2025/07/11 08:29:27" color="#ff5733">}}




{{<matomeQuote body="Pangolinみたいに高機能でちゃんと動くWeb UIがあるのってどれ？" userName="mekster" createdAt="2025/07/11 18:27:10" color="">}}




{{<matomeQuote body="初歩的な質問でごめんね、VPS上のサービスをネットに公開したくないんだけど、これでアクセスできるかな？例えばKeycloakが動いてるVPSがあって、管理目的でアクセスしたいけど、一般には公開したくないんだ。Pangolinでできるかな？" userName="djlameche" createdAt="2025/07/11 07:24:58" color="#ff33a1">}}




{{<matomeQuote body="KeycloakはSSOで使うんじゃないの？それならポートは公開しないとサービスが連携できないよ。もし管理用のポートがあるならPangolinとかで使えるよ。管理サービスをローカルポートだけで動かして、このソフトかWireGuardでアクセスすればいい。Authentikだと管理も同じWebポートだから、一部パスは公開せざるを得ないね。" userName="dizhn" createdAt="2025/07/11 08:57:10" color="#ff5c5c">}}




{{<matomeQuote body="まだ何も使ってないんだ。今開発中の唐辛子データベースをVPSで公開しようと考えてる。Keycloakで認証、他にヘッドレスCMSなんかも使いたい。ホスティング経験がないから、管理サービス（Keycloak admin console、ヘッドレスCMS admin interfaceなど）を自分だけアクセスできるようにして、攻撃面を減らせるか気になってるんだ。" userName="djlameche" createdAt="2025/07/11 09:09:57" color="#ff5733">}}




{{<matomeQuote body="管理サービスを自分だけアクセスできるようにして攻撃面を減らせるか？ってことだけど、答えはYESだよ。やり方はいろいろある。君の場合はWireGuardみたいなシンプルなものから始めるのがいいだろうね。Keycloakは初心者には設定が大変だよ。もし要件がシンプルなら、認証にはhttps://github.com/lldap/lldapを試してみて。" userName="dizhn" createdAt="2025/07/11 09:53:59" color="#ff33a1">}}




{{<matomeQuote body="このスレッドは良いアドバイスが多いね。君一人ならSSHトンネル、Tailscale、NetBird、WireGuardだけでも十分だよ。Pangolinを使ってKeycloakのWebページに認証をかけることもできる。セキュリティの重要度や、他に誰がアクセスするかによるね。" userName="oschwartz10612" createdAt="2025/07/11 16:52:50" color="#ff33a1">}}




{{<matomeQuote body="ファイアウォールも使うべきだね。基本的にVPNサービス以外からのネットアクセスは全部ブロック。そして、VPNサービスにアクセスできるIPも制限するルールを設定できるよ。" userName="zakki" createdAt="2025/07/11 08:11:37" color="#38d3d3">}}




{{<matomeQuote body="SSHポートフォワーディングはもう考えた？そうすればKeycloakが動いてるローカルポートを一時的に自分のマシンに転送できるよ。" userName="TheTxT" createdAt="2025/07/11 07:55:57" color="#ff5c5c">}}




{{<matomeQuote body="まだPangolinは考えてなかったけど、見てみるね。開発中のピーマン品種データベースをホストしたいんだけど、ホスティング経験ゼロだから何が公開されるかちょっと心配だなぁ。" userName="djlameche" createdAt="2025/07/11 08:23:19" color="">}}




{{<matomeQuote body="すごいプロジェクトだね。俺はTailscaleをVPSでホストしてるNginx Proxy Managerに繋いで、アプリを公開してるよ。記事はここ：https://hsps.in/post/how-i-host-public-apps-using-tailscale/<br>Pangolinは似たような構成でUIも良くて、もっとコントロールできるみたいだから、絶対試すよ。質問だけど、複数のドメインに対応してる？俺は今、複数のドメインをVPSにポイントしてプロキシしてるんだけど、Pangolinもそれに対応してるかな？" userName="coderhs" createdAt="2025/07/11 06:47:09" color="#ff33a1">}}




{{<matomeQuote body="うん、できるよ！言ってるみたいに全部VPSにポイントして、設定ファイルのdomainsリストに追加するだけでOK。必要なだけいくらでも追加できるよ。詳細はここで見てね：https://docs.fossorial.io/Pangolin/Configuration/config#doma..." userName="oschwartz10612" createdAt="2025/07/11 16:41:06" color="#ff33a1">}}




{{<matomeQuote body="PangolinがShow HNに載ってて嬉しいな。今日VPSにPangolinをインストール・設定したよ。ミニPCでNewtを動かしてWireguardトンネルを確立。Youtubeとドキュメント見て簡単にできた。<br>今のところアプリ2つとRustdeskのプライベートリレーがうまく動いてるよ。CloudflareのTOSとかメディアストリーミング（Jellyfin/Emby）の心配なしに、もっと自分でコントロールしたかったんだ。数日でCloudflareから移行する予定。" userName="nirav72" createdAt="2025/07/11 23:11:49" color="#45d325">}}




{{<matomeQuote body="俺のホームラボも似たような設定だけど、手動なんだ。DockerイメージはcertbotでHTTPS、WireguardでHetzner VPSと繋いで、プロキシでトラフィックを制御してる。<br>最近は認証を追加したいんだけど、今のWireguard設定だとクライアントごとに手動設定が面倒でさ。Pangolinならワンストップで置き換えられそうだし、特にユーザー管理を追加する時に設定が楽になりそうだよ。" userName="nickspacek" createdAt="2025/07/11 12:23:48" color="#45d325">}}




{{<matomeQuote body="みんながこんな風に動かしてるってよく聞くけど、俺はいつも混乱するんだ。<br>”プロキシで特定のトラフィックを通す。”<br>なんでプロキシを…ホームラボで直接動かさないの？" userName="wredcoll" createdAt="2025/07/12 01:47:03" color="">}}




{{<matomeQuote body="このプロジェクトはCloudflareの代替として、そしてインターネットの分散化のためにすごく面白そうだね。でも、トラフィックの少ないホームサーバーだと、nginxで直接単一ポートを公開するのと比べて、Pangolinを使うメリットって何？固定IPでサーバーIPを直接公開してるんだけど、安価なVPSをプロキシとして使うことで何が得られるのかな？" userName="_shadi" createdAt="2025/07/13 07:57:40" color="#785bff">}}




{{<matomeQuote body="PangolinとNetBirdの違いって何？NetBirdもセルフホストで完全オープンソースのソリューションだよね。これ：https://github.com/netbirdio/netbird" userName="LucidLynx" createdAt="2025/07/11 07:51:41" color="#ff5733">}}




{{<matomeQuote body="NetBirdはオープンソース版だと全機能ないと思うよ。俺にとってネックだったのはSSOの制約だったな。" userName="dizhn" createdAt="2025/07/11 08:52:56" color="#ff5c5c">}}




{{<matomeQuote body="NetBirdとPangolinはユースケースは似てるけど、技術は違うみたいだね。NetBirdはTailscaleの代替でWireGuardを使ってるけど、PangolinはTraefikを使ってるのかな？個人的にNetBirdユーザーで気に入ってるんだけど、UIのデザインはすごく似てるね！" userName="resiros" createdAt="2025/07/11 08:39:27" color="#ff5733">}}




{{<matomeQuote body="Pangolinは”プライベートネットワークへの公開アクセス”を提供するもので、メッシュVPNやネットワーク構築ツールじゃないよ。NetBirdはTailscaleの代替だと思うけど、俺たちはCloudflare Tunnels、Ngrok、Zscalerの代替なんだ。デバイス間の通信ネットワークを作るより、認証付きでウェブからアクセスできるように公開することに特化してるんだ。" userName="oschwartz10612" createdAt="2025/07/11 16:44:43" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Pangolinがpinggy.ioやCloudflare Tunnelsみたいなものってのは正しいよ。でも、PangolinはファイアウォールがIDチェックとかをするような、そこまで細かいアクセス制御はできないみたいだね。でも、VPNやメッシュネットワークじゃないってのは確かだよ。" userName="ghoshbishakh" createdAt="2025/07/11 19:51:11" color="#ff5733">}}




{{<matomeQuote body="PangolinもWireGuardを使ってるし、機能を有料プランの壁の向こうにロックしたりしないんだ。" userName="rb666" createdAt="2025/07/11 09:27:29" color="">}}




{{<matomeQuote body="/r/homelabではここ数ヶ月ずっと話題になってるよ。俺はVPSを買ったんだけど、後からProxmoxと組み合わせるなら安価な小型PCの方が自分の使い方に合ってるって気づいたんだ。次はもっとサービスを設定して、PangolinをVPSにインストールしてリバースプロキシの管理を楽にするつもり。まだ使ってないけど、全体的に素晴らしいし、見てきたレビューは圧倒的に肯定的だよ。作ってくれてありがとう！" userName="nicolas_" createdAt="2025/07/11 03:44:50" color="">}}




{{<matomeQuote body="これ、すごくいいね。俺は今、AWS VPCでTwingate（ホスト型・有料）を使ってるよ。AWSインスタンスはプライベートサブネットにあって、公開IPは付けてない。NATインスタンスを使ってアウトバウンドインターネットに接続してるんだけど、Pangolinを試すのはすごく興味あるな。Pangolinでも公開アクセスを提供できる？今はCaddyをリバースプロキシとして使ってるんだけど。" userName="nodesocket" createdAt="2025/07/11 03:19:06" color="#ff5733">}}




{{<matomeQuote body="そうだよ！そこがPangolinの得意なところだと思うな。もしユーザーのために認証付きの公開アクセスが欲しいとか、自分のネットワークや分散した複数のネットワークに入り込むためのトンネリングの機能が必要なら、Pangolinは君の相棒になるよ！" userName="oschwartz10612" createdAt="2025/07/11 04:47:11" color="#ff5733">}}




{{<matomeQuote body="俺はPangolinをもう数ヶ月使ってるけど、これ最高だよ。小さなVPS（固定IP）にインストールして、自分のホームラボ（動的IP）から友達や家族に公開したい全てのサービスのエントリポイントにしてるんだ。完全に安全で、管理もすごく簡単だよ。" userName="PoKeRGT" createdAt="2025/07/11 05:24:36" color="#38d3d3">}}




{{<matomeQuote body="いいね、それは良いニュースだ！" userName="oschwartz10612" createdAt="2025/07/11 16:57:21" color="">}}




{{<matomeQuote body="これ、すごく良さそう！<br>最近OPNSenseとWireGuard、Let’s Encryptで似たような構成を組んだんだ。SynologyのNginxリバースプロキシに証明書をプッシュして、クライアントからは内部IP範囲だけでWGトンネルを有効にしてる。自宅用ならこれでOKだけど、マルチサイトだとPangolinの方が洗練されてて設定も楽そう！<br>NewtってWireGuardサーバーのカスタム実装なの？セキュリティ監査は受けた？" userName="paffdragon" createdAt="2025/07/11 10:04:21" color="#38d3d3">}}




{{<matomeQuote body="訂正: ごめん、読み間違えたよ。NewtはWireGuardクライアントで、wireguard-goベースだよね？" userName="paffdragon" createdAt="2025/07/11 13:14:33" color="">}}




{{<matomeQuote body="そう、その通り！全部wireguard-goがベースだよ。<br>Pangolinと連携してトンネルを立ち上げるWireGuardラッパーなんだ。netstackユーザースペースで動くから、ポートを開くのにカーネル権限は不要だし、必要なネットワークにアクセスするためのTCP＼UDPリバースプロキシが組み込まれてるよ。" userName="oschwartz10612" createdAt="2025/07/11 16:55:13" color="#38d3d3">}}




{{<matomeQuote body="プロによるセキュリティ監査があったか、公開のセキュリティペンテストプログラムがあるかも知りたいな。<br>認証サービスの爆発的な影響範囲を考えると、これは特に重要だよね。" userName="noname120" createdAt="2025/07/11 10:16:57" color="#ff33a1">}}




{{<matomeQuote body="常にセキュリティ専門家からのコードレビューやペンテストを求めてるよ。どんどん試して、問題があれば privacy@fossorial.io に教えてほしいな！<br>プロジェクトが成長してリソースが増えれば、プロのサービスに監査を依頼するつもりだよ。" userName="oschwartz10612" createdAt="2025/07/11 17:28:26" color="#ff5c5c">}}




{{<matomeQuote body="監査があったら、きっとそう発表するだろうね。" userName="lionkor" createdAt="2025/07/11 10:48:46" color="">}}




{{<matomeQuote body="外部からの貢献はあった？<br>AGPLと商用でデュアルライセンスらしいけど、貢献者たちがCLAにどう反応するか気になってね。（最近、僕がやってるプロジェクトも同じデュアルライセンスなんだ。）<br>CLAの簡潔さが好きだよ！<br>弁護士と文言を確認した？僕のプロジェクトでは、貢献者からの永続ライセンスを『AGPLで提供される限り付与されるライセンス』にしたかったんだけど、簡潔さと法的明確さを両立させるのが難しいかも。" userName="raphinou" createdAt="2025/07/11 07:39:29" color="#785bff">}}




{{<matomeQuote body="うん、PRもいくつか来てるし、すぐにマージしないといけないアクティブなものもあるよ（笑）。<br>CLAについて懸念の声は今のところないね。個人のホー厶ラバーには無料で提供しつつ、企業がプロジェクトを資金援助できる方法を見つけるのが重要だったんだ。" userName="oschwartz10612" createdAt="2025/07/11 16:59:06" color="#ff5c5c">}}




{{<matomeQuote body="これを使うなら、自宅で動かすのが賢明だね。<br>VPSで動かすと、トラフィックがVPS上で復号されちゃうから、Cloudflare Tunnelsと同じプライバシー問題があるよ。VPSプロバイダーを信頼しなきゃならないからね。" userName="aborsy" createdAt="2025/07/11 05:09:41" color="#38d3d3">}}




{{<matomeQuote body="これって本当だよな！でも、信頼する相手を自分で選べる自由は大きいぞ。例えば、AWSがVMの中を覗き見するより、Cloudflareがトラフィックを解読して利用データを収集する方が心配だろ？" userName="oschwartz10612" createdAt="2025/07/11 05:15:39" color="#45d325">}}




{{<matomeQuote body="同意だね。CloudflareにTLS終端をお願いするのと、プロバイダがVMから暗号化されてないデータを抜き取ると疑うのは、全然違う話だろ。" userName="scottgg" createdAt="2025/07/11 08:53:22" color="">}}




{{<matomeQuote body="VPSの方がCloudflareより監視が少ないってのは疑わしいな。あまり知られてない小さいVPS会社は、適切な監査やアクセスプロセスがない可能性もあるぞ。" userName="aborsy" createdAt="2025/07/11 12:59:27" color="">}}




{{<matomeQuote body="VPSプロバイダを信頼できないなら、一体どうすればいいんだ？" userName="mekster" createdAt="2025/07/11 08:41:01" color="">}}




{{<matomeQuote body="TLSパススルーを使えばいいんだよ。暗号化されたトラフィックをそのまま家に送るんだ。そうすれば、鍵は全部自分ちにあるってこと！" userName="aborsy" createdAt="2025/07/11 11:59:00" color="#ff5733">}}




{{<matomeQuote body="もし俺のサーバーがVPN上で動いてて、IPがたまに変わるなら、Pangolinでサービスを公開できるかな？今、公開IPを晒すしかなくて嫌なんだ。ファイアウォールとTraefikは使ってるんだけどさ。" userName="meteyor" createdAt="2025/07/11 12:51:32" color="#ff33a1">}}




{{<matomeQuote body="公開可能なアドレスは必須だね。それを知る方法も必要だよ。俺も自己ホスティングで同じ気持ちだ。ストレスを減らすために、公開VPSを借りて、クライアント側で永続的な接続を維持してるんだ。ポートフォワーディングは要らないよ。" userName="c0wb0yc0d3r" createdAt="2025/07/11 13:04:32" color="#ff33a1">}}




{{<matomeQuote body="うん！大抵の人は月1ドルくらいのVPSを借りて、これを入れるんだよ。Pangolinは自分のネットワークにトンネルで繋がるから、どんな環境でもホールパンチして接続できるはず。それに、VPSの公開アドレスにアクセスするから、君のネットワークは隠れるってわけさ！" userName="oschwartz10612" createdAt="2025/07/11 16:46:46" color="#ff5733">}}




{{<matomeQuote body="frpとかsishでこんなことやろうとしてるけど、まだうまくいかないんだ。俺のユースケースはちょっと変で、k8sのTraefikインスタンスの裏でトンネルを動かして、TraefikにTLS終端させたいんだよね。Pangolin試してみようかな。" userName="qskousen" createdAt="2025/07/12 01:03:14" color="#45d325">}}




{{<matomeQuote body="俺のホームラボでTraefikをリバースプロキシに使ってるんだけど、Pangolinと組み合わせて、既存のルートとかサービスをそのまま使えるかな？それとも、今あるTraefikの裏にPangolin用のTraefikを別に立てなきゃダメ？" userName="gavt45" createdAt="2025/07/12 06:41:20" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
