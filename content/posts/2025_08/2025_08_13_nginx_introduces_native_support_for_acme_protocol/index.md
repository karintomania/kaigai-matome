+++
date = '2025-08-13T00:00:00'
months = '2025/08'
draft = false
title = 'NginxがACMEプロトコルにネイティブ対応！ついに証明書自動発行が実現か'
tags = ["Nginx", "ACMEプロトコル", "SSL/TLS", "ウェブサーバー", "セキュリティ"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> NginxがACMEプロトコルにネイティブ対応！ついに証明書自動発行が実現か

引用元：[https://news.ycombinator.com/item?id=44889941](https://news.ycombinator.com/item?id=44889941)




{{<matomeQuote body="NginxのACME対応、現状はHTTP-01チャレンジのみなんだね。でもさ、公開されてないNginxユーザーにとって一番必要なのはDNS-01チャレンジだよ。早くDNS-01に対応してほしいな！レコードを更新するだけでいいから、ホスティング内容に依存しないのがすごくクリーンで良いと思うんだ。" userName="Shank" createdAt="2025/08/13 16:37:35" color="#ff33a1">}}




{{<matomeQuote body="DNS-01を使うにはDNS APIキーが必要になるけど、多くのDNSプロバイダーはゾーンごとにAPIキーを発行してくれないんだよね。DNS-01自体は良いと思うけど、妥協すると変なことになりかねないから注意が必要だよ。" userName="clvx" createdAt="2025/08/13 16:50:11" color="">}}




{{<matomeQuote body="俺は自宅のhomelabでstep-caとcaddyと組み合わせてDNS-01を使ってるよ。すごく使いやすくて最高だね。" userName="samgranieri" createdAt="2025/08/13 17:15:20" color="">}}




{{<matomeQuote body="Caddyに賛成！Nginxはもはや2007年のものだよ。" userName="reactordev" createdAt="2025/08/13 17:50:42" color="">}}




{{<matomeQuote body="他に選択肢がないならDNSチャレンジを使わない理由が分からないな。これまでは面倒で壊れやすいと思ってたけど、Webサーバーがネイティブで対応するならマシになるかも。でもワイルドカード証明書は取れないんだよね。" userName="Spivak" createdAt="2025/08/13 16:54:24" color="">}}




{{<matomeQuote body="NginxがDNS-01チャレンジに対応する必要ってあるの？NginxはHTTPサーバーとして動いてるから、常に.well-knownにアクセスできるじゃん。もっと低レベルな方法でドメイン検証する必要ないでしょ。それに、機密性の高いAPIトークンがサーバーに必要になるから、最小特権の原則にも反すると思うんだけど。" userName="creatonez" createdAt="2025/08/13 17:02:26" color="#ff5733">}}




{{<matomeQuote body="DNS-01って、登録済みのドメインネームサーバーへのDNS-over-HTTPSに対応してるのかな？もしそうなら、NginxがDNSクレームに対応するのはすごく簡単になるはずだよね。もし対応してないなら、DNS-01自体に改善が必要なんじゃないかな。" userName="altairprime" createdAt="2025/08/13 18:46:28" color="">}}




{{<matomeQuote body="証明書を注文する時、ACMEプロバイダーから変なテキスト文字列が送られてくるんだ。その文字列をTXTレコードとしてDNSサーバーに追加する必要があるんだけど、そのやり方は君とDNSサーバー次第で、ACMEプロバイダーは気にしないよ。DNS-over-HTTPSはこの話には関係ないと思うな。あれはDNSサーバーに問い合わせたいクライアントが使うもので、レコードを作るオペレーターが使うものじゃないはずだよ。(もし違ってたら教えてね。)" userName="cpach" createdAt="2025/08/13 20:52:59" color="#785bff">}}




{{<matomeQuote body="_acme-challenge.domain.tldのNSレコードを、自分で管理してる別のサーバーに向けることができるんだ。そうすれば、DNSホスター経由でゾーンを更新する必要がなくなるよ。そのサーバーは、問い合わせてくる人たちのチャレンジを解決できればOKなんだ。" userName="qwertox" createdAt="2025/08/13 19:00:24" color="#785bff">}}




{{<matomeQuote body="ACMEプロバイダはDNSサーバーにクエリを送って、レコードに正しい”funny string”があるか検証するんだね。親の質問は、そのクエリがDoH経由でできるか／できるのか、ってことだった。" userName="0x0000000" createdAt="2025/08/13 21:05:15" color="">}}




{{<matomeQuote body="NginxがHTTPサーバーとしてそのクエリに答えられるからじゃない？" userName="0x0000000" createdAt="2025/08/13 21:39:00" color="">}}




{{<matomeQuote body="Caddyは開発者が作ったものを公開したりテストしたりするのに向いてる。パワーユーザーやインフラ管理者にはNginxの方がずっと価値があるよ。<br>俺も自宅ラボでCaddy使ってるけど、Nginxほど柔軟性はないからね。" userName="darkwater" createdAt="2025/08/13 18:34:42" color="#45d325">}}




{{<matomeQuote body="それならHTTP-01チャレンジを使えばいいんじゃないかな。DNS-01チャレンジの利点は、HTTPサーバーをインターネットに公開したくない場合に使えることだと思うんだ。" userName="xg15" createdAt="2025/08/13 23:09:03" color="">}}




{{<matomeQuote body="いや、それは利用ケースの一つに過ぎないよ。他に、ワイルドカード証明書の場合はDNS-01が必須だし、複数のサーバー（例: ロードバランサー）でTLSが終端されるサービスの証明書の場合も、HTTPやALPNチャレンジだと終端サーバーのうち1つしか応答できないから、DNS-01が実用的に必須なんだ。" userName="jcgl" createdAt="2025/08/14 06:05:13" color="#ff33a1">}}




{{<matomeQuote body="そんなことないよ。https://github.com/joohoi/acme-dns をどこでも実行できるし、それから _acme_challenge.realdomain.com を aklsfdsdl239072109387219038712.acme-dns.anywhere.com にCNAME設定するんだ。そうすればACMEクライアントはACME DNS APIとやり取りするだけで、その長いランダムなドメインのチャレンジを処理する以外は何もしなくていいよ。" userName="bananapub" createdAt="2025/08/13 17:02:45" color="#45d325">}}




{{<matomeQuote body="CNAMEsね。俺はこれを何にでも使ってるよ。メインドメインはDNS APIトークンなしでプロバイダA、捨てドメインをプロバイダBでAPIトークンありにする。_acme-challenge.メインドメインを捨てドメインにCNAME設定するんだ。ACMEクライアントは捨てドメインのTXTレコードにチャレンジ応答を書き込む。これならセキュリティ高いし、万が一捨てドメインが使えなくなっても簡単に変えられる。acme.shもこれに対応してるし（https://github.com/acmesh-official/acme.sh/wiki/DNS-alias-mo...）、俺はacme.shのAnsibleロールも書いたよ（https://github.com/foundata/ansible-collection-acmesh/tree/m...）。" userName="andreashaerter" createdAt="2025/08/13 22:18:46" color="#785bff">}}




{{<matomeQuote body="HTTPチャレンジで新しい証明書を発行するには、だいたい15分間のダウンタイムが必要になる。SLAがあるような顧客向けエンドポイントには全然向いてないよ。" userName="lukeschlather" createdAt="2025/08/13 17:06:19" color="#ff5733">}}




{{<matomeQuote body="隠れたプライマリを自分でホストすれば、簡単にできるよ。" userName="hashworks" createdAt="2025/08/13 17:02:46" color="">}}




{{<matomeQuote body="HTTP検証はDNSやAPIキーをいじらなくて済むからシンプルでいいんだよ。サーバーソフトを立ち上げてホスト名を教えるだけで、あとは全部勝手にやってくれるんだから。" userName="bityard" createdAt="2025/08/13 17:14:52" color="#45d325">}}




{{<matomeQuote body="HTTPやALPNチャレンジだと終端サーバーが一つしか応答できないから、DNS-01が現実的に必要って意見があるけど、.well-known/acme-challenge/へのリクエストを単一サーバーにリバースプロキシとかで転送するのも、DNS-01と同じくらい簡単に設定できるはずだよ。" userName="account42" createdAt="2025/08/14 08:56:16" color="#38d3d3">}}




{{<matomeQuote body="うちではCaddyを本番環境で何百ものアプリに使ってて、1日あたり数千万のリクエストを捌いてるよ。" userName="j-krieger" createdAt="2025/08/13 19:32:02" color="#ff33a1">}}




{{<matomeQuote body="これはマジでびっくりしたね。Cloudflareが非エンタープライズアカウントにゾーンごとの個別キーを頑として許可しないから、ずっと不満だったんだよ。この件を要求してるスレッドが、受動的攻撃性のお手本みたいな感じなんだよね: https://community.cloudflare.com/t/restrict-scope-api-tokens..." userName="teruakohatu" createdAt="2025/08/14 05:49:50" color="#785bff">}}




{{<matomeQuote body="多くのDNSプロバイダは、外部プライマリに対応してないんだよね。" userName="Sesse__" createdAt="2025/08/13 17:04:24" color="">}}




{{<matomeQuote body="でもそれだと、その単一サーバーから他の全部に証明書を再配布しなきゃいけないんだよね。できなくはないけど、自分で繋ぎのコードを書く羽目になるし、更新がその特別なサーバーに依存することになっちゃう。つまり、DNS-01の設定みたいに簡単じゃないんだよ。運用特性も違うし、特注の繋ぎコードが必要になるんだ。" userName="jcgl" createdAt="2025/08/14 11:24:31" color="#785bff">}}




{{<matomeQuote body="もしこのドメインを2台以上のサーバーで提供してるなら、運が悪いってことになっちゃうね。" userName="abcdefg12" createdAt="2025/08/13 20:45:10" color="">}}




{{<matomeQuote body="じゃあ、ツールの価値って、その古さに反比例して判断されるべきなのかな？" userName="RadiozRadioz" createdAt="2025/08/13 20:18:21" color="">}}




{{<matomeQuote body="俺の仕事はインターネットからアクセスできない内部サービスばっかりで、DNSだけが唯一の選択肢だよ。DNSを使えばワイルドカード証明書も手に入るし、`*.foo.com`が欲しいなら`_acme-challenge.foo.com`を設定するだけでOKだぜ。" userName="cortesoft" createdAt="2025/08/13 16:57:19" color="#ff5733">}}




{{<matomeQuote body="K8sのIngressがWIPフェーズから早く抜け出してくれたらな。そうすればcert-managerとか他のIngressでの面倒な設定から解放されるのにな。" userName="supriyo-biswas" createdAt="2025/08/13 17:55:13" color="">}}




{{<matomeQuote body="これはかなりデカいニュースだな。Caddyは昔からこの機能があったけど、みんながCaddyを使いたいわけじゃないからな。たぶんTraefikみたいなソフトウェアのユーザーシェアを食うだろうな。" userName="dizhn" createdAt="2025/08/13 16:23:35" color="#ff5c5c">}}




{{<matomeQuote body="Caddyの本当に好きなところは、その優秀な構文だよ。今はNginx（Nginx Proxy Manager経由）とTraefikを使ってるけど、最近Caddyでプロジェクトやったらすごく良かった。将来的に自分のセルフホスト環境をCaddyに変えたいな。でも、Cloudflare Tunnelsの代替にもなる[1] pangolinを選ぶかもな。<br>[1] https://github.com/fosrl/pangolin" userName="elashri" createdAt="2025/08/13 16:36:52" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Caddyには変な制限があるんだ。特にログのパーミッションが問題で、promtailみたいなプロセスが読めない。パーミッションは変更できず、いつも厳しすぎる。ドキュメントも分かりにくくて、Nginxなら簡単なこともCaddyだと難しい。パッケージマネージャーでインストールするとプラグインが付いてこないのも嫌だ。プラグインが欲しいなら自分でビルドするかビルドサービスを使う必要があり、自動更新もされない。" userName="Saris" createdAt="2025/08/13 18:33:28" color="#ff5733">}}




{{<matomeQuote body="そうだよな。Caddyの賢いデフォルト設定はほとんど完璧なんだ。TLS有効な静的サーバーやWordPressサイトの設定も、数行のシンプルなコードで済むんだぜ。例えば`something.example.com { root * /var/www/something.example.com file_server }`みたいに。他にも細かい調整はできるけど、一般的な使い方ならほぼ不要だ。これまでのサーバーより「ちゃんと動く」んだよ。" userName="kstrauser" createdAt="2025/08/13 16:54:55" color="#45d325">}}




{{<matomeQuote body="Caddyの構文のドキュメントは、すごく基本的なこと以外をやりたい場合や、彼らが意図しない使い方をしたい場合にはちょっと物足りないんだよね。例えば、内部サービスでワイルドカード証明書を使ってサービス名を証明書の透過性ログから隠したいんだけど、構文がうまく動かせないんだ。ChatGPTもGeminiもできなかったよ。" userName="pgug" createdAt="2025/08/14 01:04:43" color="#45d325">}}




{{<matomeQuote body="実は、今はログファイルのパーミッションを設定できるようになったんだぜ。詳しくは[1]を見てくれよな。<br>[1] https://caddyserver.com/docs/caddyfile/directives/log#file" userName="francislavoie" createdAt="2025/08/13 18:57:05" color="#ff5733">}}




{{<matomeQuote body="おお、それは良い情報だね！Caddyって自己更新できるのかな、それか何か簡単な方法がある？Cloudflareプラグインを使うのに手動で更新するのは面倒なんだよね。" userName="Saris" createdAt="2025/08/13 19:09:44" color="">}}




{{<matomeQuote body="全くその通りだ。家で使ってるTraefikを、もうすぐNginxに替えるだろうな。" userName="thrown-0825" createdAt="2025/08/13 16:48:41" color="">}}




{{<matomeQuote body="いや、Caddyはプラグイン込みで自分でビルドしないとダメだよ。xcaddyを使えば簡単だけどね。リリース通知はGitHubで登録して、xcaddyでバイナリをビルドしてサービスを再起動するだけの小さなbashスクリプトを自分で書くといいよ。Caddyのdebパッケージのバージョンが変わった時にスクリプトをトリガーするようにaptにフックさせることもできるかもしれないけど、それは君が自分で管理しないといけないね。" userName="francislavoie" createdAt="2025/08/13 19:14:18" color="#ff5733">}}




{{<matomeQuote body="俺はTraefikをサービスのDockerラベルをいくつか定義するだけで設定してるんだ。<br>あのひどく巨大なNginxの設定に戻るなんてありえないね。" userName="grim_io" createdAt="2025/08/13 17:01:41" color="">}}




{{<matomeQuote body="なんで自己更新のこと「no」って言ったのか疑問に思ってるんだけど。<br>https://caddyserver.com/docs/command-line#caddy-upgrade" userName="dizhn" createdAt="2025/08/14 13:28:31" color="#ff5733">}}




{{<matomeQuote body="最近Caddyに乗り換えたよ。NginxのHTTP/1 desync問題に関する情報不足が俺を乗り換えさせたんだ。何か馬鹿げたことが起きるのを待ったり、監査官にNginxが答えられない質問をされたりするのを待ちたくないね。Caddyは本当にNginxより簡単だよ。まず、主要サービスとそのテストサービス、そして教育機関で動く特殊サービスをカバーするテンプレートができたし、ログもいい感じ。証明書処理も完璧（少なくとも俺のケースではね）。それにメトリクスも優れてる。ただ、Caddyにはレート制限がないし、PowerBIの馬鹿げたバグで一つのユーザーが特定の画像を1日に300,000回もヒットさせるから、今からプラグインをどうにかしないといけないんだ。それがちょっとした欠点だね。" userName="tgv" createdAt="2025/08/13 17:31:09" color="#ff5c5c">}}




{{<matomeQuote body="ワイルドカード証明書のためには、君が使ってるプロバイダ用のDNSプラグインを含むCaddyのビルドが必要だよ。それにはxcaddyっていうツールが役立つ。自分でバイナリを管理しないといけないから、まだちょっと面倒だけど、Hetznerで試した時は問題なく動いたよ。" userName="nadanke" createdAt="2025/08/14 06:19:46" color="#38d3d3">}}




{{<matomeQuote body="現在含まれているプラグインなら、バイナリは自己更新できるよ。コマンドラインヘルプにはベータ版って書いてあるけど、俺にはいつも問題なく動いてるね。" userName="dizhn" createdAt="2025/08/13 20:29:14" color="">}}




{{<matomeQuote body="desync問題についてGoogle検索してみたらこのページを見つけたよ。<br>https://my.f5.com/manage/s/article/K30341203<br>この手のことは俺の専門外なんだけど。この問題についてどんな情報が見たい？何が役に立つかな？" userName="dekobon" createdAt="2025/08/13 18:21:29" color="">}}




{{<matomeQuote body="この統合はDNS-01チャレンジをサポートしてないからね。だから、今のところワイルドカード証明書は問題外だ。" userName="cpach" createdAt="2025/08/14 05:53:51" color="#45d325">}}




{{<matomeQuote body="Apacheにも2018年からあるよ。" userName="dwedge" createdAt="2025/08/14 10:56:28" color="">}}




{{<matomeQuote body="だってそれは自動化されてないし、手動コマンドだし、caddyserver.comのリソース（比較的低電力のクラウドVM）を使ってて稼働保証もないんだ。自動化シナリオでは使うべきじゃない。手軽な個人的な利用シナリオだけだね。" userName="francislavoie" createdAt="2025/08/14 14:08:21" color="#ff5c5c">}}




{{<matomeQuote body="CaddyでワイルドカードDNSとACMEプロトコルを使ったDNSチャレンジの設定例だ。Cloudflareを使って、`*.secret.domain.com`のサブドメインをssoやAdGuard、Forgejoのプロキシとして設定できる。設定方法を示すコードが貼ってあるぞ。" userName="dizhn" createdAt="2025/08/14 13:21:45" color="#ff5c5c">}}




{{<matomeQuote body="バイナリを別の場所からダウンロードする方法ってあるの？" userName="dizhn" createdAt="2025/08/16 09:27:14" color="">}}




{{<matomeQuote body="Nginxって設定がモジュールごとに分かれてて複雑だけど、Caddyは全部まとめて設定できるから、その点がいいんだよな。" userName="karmakaze" createdAt="2025/08/13 21:11:34" color="">}}




{{<matomeQuote body="最近Pangolinを試したけど、Authentikのプロキシで十分だったから、Pangolinはいらないって気づいたよ。" userName="dizhn" createdAt="2025/08/13 17:02:20" color="">}}




{{<matomeQuote body="俺はCaddyをメインの逆プロキシとして使ってるぜ。CloudflareのDNSとLet’s Encryptで問題なく動くし、Caddyfileの構文も直感的だ。昔Traefikも使ったけど、あれは設定が難しかったな。" userName="nodesocket" createdAt="2025/08/13 20:09:52" color="#38d3d3">}}




{{<matomeQuote body="WordPressでCaddyは安全なの？NginxからCaddyに乗り換えるとき、`wp-includes`とか`wp-admin`の特定のパスをブロックする必要があるかいつも悩むんだ。CaddyフォーラムでWordPressを強化する方法が議論されてるよ: https://caddy.community/t/using-caddy-to-harden-wordpress/13..." userName="aorth" createdAt="2025/08/17 09:10:29" color="#ff33a1">}}




{{<matomeQuote body="Nginxのメンテナーがdesync攻撃対策の設定方法を教えてくれたら助かったのに。F5って誰だよ、よくわかんないけどもう手遅れだ。" userName="tgv" createdAt="2025/08/14 14:55:42" color="">}}




{{<matomeQuote body="誰かの役に立つかもしれないから、俺がやってるCaddyのDockerビルド方法を教えるな。CloudflareのDNSモジュールとcaddy-securityを組み込んで、Docker Composeで動かすんだ。具体的なDockerfileの例が貼ってあるぞ。" userName="snickerdoodle12" createdAt="2025/08/14 15:32:17" color="#785bff">}}




{{<matomeQuote body="CaddyをDockerラベルで改造した例があるけど、複雑すぎ。Traefikだとどうなんだろう？" userName="dizhn" createdAt="2025/08/15 09:06:38" color="">}}




{{<matomeQuote body="Dokkuメンテナーだけど、これは最高！既存のLet’s Encryptプラグインは問題多いからね。Nginxがリロードで固まったりしてたんだ。ただ、安定版リポジトリに入るまで時間かかるし、DNS challenge未対応だからワイルドカード証明書が使えない。Dokkuには短期的には使えなさそうだな。" userName="josegonzalez" createdAt="2025/08/13 17:22:48" color="#45d325">}}




{{<matomeQuote body="Dokku、大変！CoolifyはGithubアプリでデプロイできたし、GH actionsも書ける。でもDokkuのドキュメントは百科事典みたいで読みにくいんだ。<br>https://dokku.com/docs/deployment/methods/git/#initializing-...<br>Coolifyのドキュメントはすぐに使えて便利なのに。<br>https://coolify.io/docs/knowledge-base/git/github/integratio...<br>Dokkuには人気OSSアプリのチュートリアルや、ベアメタルからリバースプロキシ＋アプリをデプロイする記事が欲しいな。" userName="ctxc" createdAt="2025/08/13 17:43:13" color="#38d3d3">}}




{{<matomeQuote body="Docker内でNginxとCertbotの設定ってマジで最悪！Nginxを動かすには証明書が要るのに、証明書を発行するにはNginxが要るってどういうこと？ネットの記事も全然役に立たないし。Docker Compose向けに詳しく解説してくれる人がいたら感謝するよ。nginx-proxyみたいなライブラリはカスタマイズが面倒だから使いたくないんだ。" userName="vivzkestrel" createdAt="2025/08/14 03:47:28" color="#ff5c5c">}}




{{<matomeQuote body="NixOSってすごいよ。Nginxサーバー立ち上げるのにこのブロックを追加するだけで、systemdサンドボックスで証明書も自動発行、自動更新タイマーまで完璧に動くんだ。ブロック削除すれば全部きれいに消えるし。結婚式のウェブサイトのリダイレクト、これで1分でできたよ。" userName="bspammer" createdAt="2025/08/14 09:19:39" color="#ff5c5c">}}




{{<matomeQuote body="Docker ComposeでCertbotを使うなら、最初にホストで`certbot certonly`を実行して、一時サーバーで証明書を取得するんだ。それで`compose.yml`でホストの`/etc/letsencrypt`をNginxコンテナにマウントすればいい。更新はCertbotコンテナでできるよ。<br>nginx:<br>    volumes:<br>      - /etc/letsencrypt:/etc/letsencrypt<br>certbot:<br>    volumes:<br>      - /etc/letsencrypt:/etc/letsencrypt<br>    entrypoint: ”＼/bin＼/sh -c ’trap exit TERM; while :; do certbot renew; sleep 12h & wait $${!}; done;’”<br>Nginxの設定はこうだ。<br>    ssl_certificate ＼/etc＼/letsencrypt＼/live＼/$DOMAIN＼/fullchain.pem;<br>    ssl_certificate_key ＼/etc＼/letsencrypt＼/live＼/$DOMAIN＼/privkey.pem;<br>And also    location ＼/.well-known＼/ {<br>        alias ＼/usr＼/share＼/nginx＼/html＼/.well-known＼/;<br>    }" userName="nojs" createdAt="2025/08/14 09:25:05" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺はNginxをDockerの外で動かすのが好きだよ。それについてブログに書いたんだ。<br>https://nickjanetakis.com/blog/why-i-prefer-running-nginx-on...<br>PKI関連（DH Paramsや証明書）、アプリ（Docker）、リバースプロキシ（Nginx、Docker外）を分けてるんだ。こうすればチキン＆エッグ問題も解消されて、複雑さも減る。自己署名、Let’s Encrypt、サードパーティ証明書間の切り替えもシンボリックリンク一つで楽だし、テストも災害復旧も簡単で安心できるよ。" userName="nickjj" createdAt="2025/08/14 13:05:44" color="#ff5c5c">}}




{{<matomeQuote body="nginx-proxyって何が問題なの？うちでは何年もCIで複数のDocker Composeアプリを同じサーバーにデプロイするのに使ってたけど、問題なかったよ。<br>https://docs.servicestack.net/ssh-docker-compose-deploment<br>詳しい記事はここ。<br>https://servicestack.net/posts/kubernetes_not_required<br>Kamalに移行したけどね。<br>https://docs.servicestack.net/kamal-deploy" userName="mythz" createdAt="2025/08/14 04:12:58" color="#ff5c5c">}}




{{<matomeQuote body="俺、生のNginx設定で簡単なレートリミットのブロックは簡単に書けるんだけど、nginx-proxy使うとこの有様だよ。めっちゃくちゃだよ。見てよ、ホントひどい。https://github.com/nginx-proxy/nginx-proxy/discussions/2524" userName="vivzkestrel" createdAt="2025/08/14 04:19:24" color="#38d3d3">}}




{{<matomeQuote body="nginx-proxyの何が問題って、Nginxのスクリプトを俺がコントロールできないことなんだよな。それが一番のネックだね。https://github.com/nginx-proxy/nginx-proxy/discussions/2523" userName="vivzkestrel" createdAt="2025/08/14 04:17:37" color="#ff5733">}}




{{<matomeQuote body="個人的には、NginxでTLS終端して、直接物理サーバでNginx動かしてるよ。サービスは全部その裏でコンテナ化してる。もしNginxからリモートノードにプロキシするなら、多分内部PKIを使うだろうな。" userName="atomicnumber3" createdAt="2025/08/14 04:06:22" color="">}}




{{<matomeQuote body="大抵は証明書できるまでSSL追加しないか、自己署名証明書とかでNginxを起動するんだよ。個人的にはDNSをあらゆる場所で使ってる。中央サーバでdehydratedとDNSチャレンジを毎晩動かして、それを全サーバにrsyncしてるよ（Vaultに置き換える予定だけど）。証明書を一箇所で管理できるのは結構好きだな。" userName="dwedge" createdAt="2025/08/14 10:59:10" color="#ff5c5c">}}




{{<matomeQuote body="＞Nginxサーバを起動するには証明書が必要だけど、証明書を発行するにはNginxサーバが必要？<br>まさにそれ！俺は自己署名証明書を事前に入れてとりあえず起動してるよ。ただ、Dockerでどうやるかは確認しなきゃな。" userName="yjftsjthsd-h" createdAt="2025/08/14 06:45:48" color="">}}




{{<matomeQuote body="まさにこれ！Docker内で何か動かそうとすると、深刻なほどドキュメントもリソースも不足してるんだよな。" userName="vivzkestrel" createdAt="2025/08/14 07:30:57" color="">}}




{{<matomeQuote body="おー、Compose使うならこれ、今できるようになってるみたいだね: https://stackoverflow.com/questions/70322031/does-docker-com... initコンテナ作って、`test -f /certs/whatever.crt || openssl command to generate cert`みたいなコマンドを実行させて、本来のWebサーバコンテナの前に動かすんだ。" userName="yjftsjthsd-h" createdAt="2025/08/14 19:19:57" color="#38d3d3">}}




{{<matomeQuote body="これ really cool だね。知らなかった人のために言うと、https://github.com/dehydrated-io/dehydrated と組み合わせれば、vhost設定に数行追加するだけで簡単に解決できたんだよ。<br>    location ^~ /.well-known/acme-challenge/ {<br>        alias ＜path-to-your-acme-challenge-directory＞;<br>    }<br>Dehydrated は昔からあって、http-01 の更新自動化には素晴らしい低オーバーヘッドのオプションだよ。" userName="thaumaturgy" createdAt="2025/08/13 17:13:18" color="#ff33a1">}}




{{<matomeQuote body="前のコメントで言ってた設定、Certbot でもちゃんと動くよ。俺、何年も使ってるし。" userName="Avamander" createdAt="2025/08/14 20:30:05" color="#38d3d3">}}




{{<matomeQuote body="これ、すごく良いけど、何千人も使ってるのに安定版出さないプロジェクトは嫌いだね。v1.0.0がないと、インターフェースが勝手に変わっても気づけない。メジャーバージョン0のソフトは使うな、いつか痛い目見るぞ。Dehydratedは7年も0のままだし、もうリリースすべきだよ。SemVerの原則からしても、プロダクションで使うなら1.0.0であるべきだろ。https://0ver.org/about.html" userName="andrewmcwatters" createdAt="2025/08/13 17:19:55" color="">}}




{{<matomeQuote body="誰が不快だと感じるかって？それに依存してる人たち？まさかね。無料でソフトを提供してる人たち？まさかね。もしかしたら誰にもとって不快じゃないかもだけど、運命とかインセンティブのズレを示すものとして不快なんだろうな。" userName="nothrabannosir" createdAt="2025/08/13 17:22:27" color="">}}




{{<matomeQuote body="それがオープンソースの良いところだよね。無料の労働力で、欲しい機能の実装ペースに不満があるなら、自分でやればいいんだよ！" userName="ygjb" createdAt="2025/08/13 17:22:50" color="#38d3d3">}}




{{<matomeQuote body="そうそう、まさにその通り！たぶんフォークするバージョンを選んで、組織のプロダクションパスではv1.0.0に設定するかな。そうすれば挙動が変わらないって分かるし。それからアップストリームからのアップデートをマージすればいい。" userName="andrewmcwatters" createdAt="2025/08/13 17:24:38" color="">}}




{{<matomeQuote body="たいていの場合、破壊的変更に対応する方が簡単だよ。コードを書く方が理解を深めるより速いし、外部APIの破壊的変更は内部よりずっとよくドキュメントされてるからね。" userName="john01dav" createdAt="2025/08/13 17:40:35" color="">}}




{{<matomeQuote body="ちなみに、俺はDehydratedを使ってLetsEncryptの自動化を少なくとも10年くらいやってるよ。その間に本番環境で破壊的変更が一度だけあったと思うけど、Dehydrated特有の問題じゃなくて、ACMEプロトコルの変更だったんだ。解決策はDehydratedクライアントを更新して設定ファイルをちょっといじるだけで超簡単だった。これ、俺のインフラで最も信頼できる部分の一つで、ほとんど考える必要がないくらいだよ。だから自動化リポジトリからリンクを掘り起こす必要があったくらい。" userName="thaumaturgy" createdAt="2025/08/13 17:53:59" color="#ff5c5c">}}




{{<matomeQuote body="Dehydratedは2015年12月の最初のコミットから使ってるの？" userName="hju22_-3" createdAt="2025/08/13 21:01:17" color="">}}




{{<matomeQuote body="これでDehydratedを知ったと思うよ: https://news.ycombinator.com/item?id=10681851<br>web.archive.orgには残ってないけど、古いサーバー構築スクリプトに「Dehydratedの最新版をhttps://github.com/dehydrated-io/dehydratedから取得」（以前はhttps://github.com/lukas2511/dehydrated）ってメモがあるから、lukas2511アカウントの時に使ってた。これはPhabricatorから救出したメモで履歴はないけど、2015～2016年頃で合ってるはず。俺は2009年からクライアントのためにホスティングしてて、LetsEncryptは当時証明書更新が面倒で有料だったから、早く導入したかったんだ。この投稿はまさに探してたもので、すぐ使い始めたよ。Linodeアカウントも2009年10月から動いてるし、記憶は正確だね。" userName="thaumaturgy" createdAt="2025/08/14 03:30:55" color="#ff5c5c">}}




{{<matomeQuote body="自分の基準に合う「安定版」ブランチやフォークをサポートすればいい。見たい変化を自分で起こそう！<br>「v1.0.0を出さないとインターフェースが変わる」って言うけど、1.0.0はただの数字だよ。約束や実績がないと、他のどんな数字でも破壊的変更はあり得る。よく使われてる「0.x.x」のオープンソースの方が、ただ1.0.0のラベルを貼られたものより信頼できるよ。他のバージョン管理スキームもアリだね。例えば「永遠に0.xに固執しろ」って皮肉るやつとか。" userName="dspillett" createdAt="2025/08/13 17:29:30" color="#38d3d3">}}




{{<matomeQuote body="SemVerを秘術的な法則だと思ってる人がまたいるね。SemVerがいかに間違いかを示す良い例だ。SemVer信者がその法則に依ろうとするから、バージョン番号のセグメントを永久的なゼロプレフィックスとして犠牲にするのが、彼らをなだめる一番現実的な方法だよ。ブラウザのユーザーエージェントの「Mozilla」みたいなものさ。ユーザーエージェントのようにならないことを願うばかりだよ。つまり、皮肉抜きで0ver。0.0verが必要にならないことを祈ろう。" userName="juped" createdAt="2025/08/14 01:32:52" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
