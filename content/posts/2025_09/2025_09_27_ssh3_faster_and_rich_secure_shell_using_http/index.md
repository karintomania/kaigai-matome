+++
date = '2025-09-27T00:00:00'
months = '2025/09'
draft = false
title = '爆速SSH3登場！HTTP/3で接続確立が高速化 高遅延にも強い次世代セキュアシェルとは？'
tags = ["SSH", "HTTP/3", "QUIC", "ネットワーク", "パフォーマンス"]
featureimage = 'thumbnails/purple1.jpg'
+++

> 爆速SSH3登場！HTTP/3で接続確立が高速化 高遅延にも強い次世代セキュアシェルとは？

引用元：[https://news.ycombinator.com/item?id=45395991](https://news.ycombinator.com/item?id=45395991)




{{<matomeQuote body="従来のSSHより速いっていう主張には懐疑的だったけど、README見たら接続確立は速いけど、アクティブな接続の速度は同じって書いてあったよ。これはすごく納得できるし、妥当な主張だね。" userName="Zambyte" createdAt="2025/09/27 15:01:17" color="#ff5c5c">}}




{{<matomeQuote body="とは言え、賭けてもいいけど、このツール／プロトコルは高遅延リンクではSSHよりずっと速いはず。だってUDPを使ってるからね。もっとデータを送る前にACKを待たないことで、世界のあちこちにscpでデカいファイルを送るみたいな場合に、かなりのブーストになると思うな。" userName="notepad0x90" createdAt="2025/09/27 15:35:56" color="">}}




{{<matomeQuote body="SSHが高遅延リンクでスループットが低いのはTCPのせいじゃなくて、SSHプロトコルがTCPのウィンドウサイズに加えて、小さすぎる最大ウィンドウサイズをハードコードしてるからだよ。このSSHのウィンドウサイズ制限はSSHストリームごとだから、多くの並列ストリームを使えば克服できるけど、ほとんどのプログラム（scp、rsync、sshコマンド経由でデータをパイプする）はそれを利用しないんだ。だからiperf3で測ると普通のTCPよりずっと遅い。こんなものが存在するなんて馬鹿らしいし、TCPに任せとけばいいのにね。" userName="nh2" createdAt="2025/09/27 16:09:17" color="#ff5733">}}




{{<matomeQuote body="あんまり関係ない話だねー。だって高遅延リンクでSSHを定期的に使う人は、もうとっくにSSH＋moshを使ってるからね。" userName="finaard" createdAt="2025/09/27 15:52:27" color="">}}




{{<matomeQuote body="そういう意味では速くないんだ。でもSSH接続は複数のサブストリームを持てるよね、特にポートフォワーディングの場合。一つの古典的な接続だと、一つのストリームの問題が全体を遅くするヘッドオブラインブロッキングを引き起こすことがあるけど、QUIC／HTTP/3プロトコルならこれを解決できるんだよ。" userName="s-macke" createdAt="2025/09/27 15:57:33" color="#785bff">}}




{{<matomeQuote body="moshの超デカい欠点は、独自のレンダリングをしてスクロールバックバッファを破壊することだね。（tmuxを挟めば中間策になるって知ってるよ）でもここは関係ない話。READMEにもはっきり書いてあるし「実行中のセッションでのキーストロークの遅延は変わらない」ってね。" userName="oefrha" createdAt="2025/09/27 16:18:01" color="">}}




{{<matomeQuote body="そりゃもちろんACKはあるよ。ACKがないプロトコルもあるけど、それは特殊なやつでHTTP/3はそうじゃないんだからね。" userName="xorcist" createdAt="2025/09/27 15:42:01" color="">}}




{{<matomeQuote body="「超デカい欠点」（tmuxを使えば完全に解決できるのに）YouTubeとかSNSの時代って、みんな大げさになりすぎだよね :/ moshは問題を解決する。tmuxは、一部のユーザーワークフローに影響を与える設計上の決定を解決する「ソリューション」を提供するんだ。要するに、moshが必要ならtmuxを使うのも別に難しいことじゃないって言いたいのさ。" userName="esseph" createdAt="2025/09/27 19:37:53" color="">}}




{{<matomeQuote body="彼が言ってたのは「ACKを待たない」ってことだよ。" userName="IshKebab" createdAt="2025/09/27 15:43:49" color="">}}




{{<matomeQuote body="「TCPだけでいい」って意見あるけど、SSHが独立したストリームを多重化するには必要だよ。<br>一つのストリームが詰まると、他のストリームもヘッドオブラインブロッキングで止まっちゃうんだ。TCPとは別のウィンドウベースフロー制御とかが必要で、HTTP/2も似たことしてるよ。俺も昔、これに気づかずに困った経験あるから。" userName="jlokier" createdAt="2025/09/28 02:29:34" color="#ff5c5c">}}




{{<matomeQuote body="ちょっとした豆知識だけどさ、SSHも複数ストリームに対応してるんだぜ。多重化（multiplexing）ってやつね。" userName="inetknght" createdAt="2025/09/28 04:00:18" color="">}}




{{<matomeQuote body="どのプロトコルもウィンドウ制御使うし、ACK待ちはリンク障害検出に必要だろ。HTTP/3もそれがある。<br>TCPと比べてどうかはまだ分からん。SSHとQUICのユースケースは違うしね。<br>SSHのバッファが足りないなら「long fat links」ってやつ。LinuxのチューニングやHPN-SSHプロジェクトも見てみろよ。<br>https://fasterdata.es.net/host-tuning/linux/" userName="xorcist" createdAt="2025/09/27 15:48:45" color="#ff5c5c">}}




{{<matomeQuote body="だからmoshがあるんだよ。あれは高遅延や高パケットロスのリンク上でのターミナル用に作られてるからね。" userName="bcrl" createdAt="2025/09/27 16:26:28" color="">}}




{{<matomeQuote body="TCPみたいにSSHでも設定オプションで調整できるようにしてくれよ。2MBのハードコードはマジでアホ。<br>自分のネットワークでSSHがTCPより遅いのはおかしいだろ。TCPみたいにデータ破棄と再送も実装しろよ。多重化するなら必要な機能は全部やれ。<br>「接続が1000倍速くなってもスケールするか？」って設計時にまず考えるべきだろ。" userName="nh2" createdAt="2025/09/28 13:03:30" color="#ff33a1">}}




{{<matomeQuote body="tmuxだけじゃmoshの全てをカバーできないよ。moshは高遅延・パケットロスやローミングでの切断対策が主な用途だろ。<br>特に高遅延だと、mosh+tmuxのスクロールバックバッファは最悪。俺は高遅延での読み込みが多いなら、キー入力が遅くてもSSHを選ぶね。「大きなデメリット」ってのは全然大げさじゃないよ。" userName="oefrha" createdAt="2025/09/27 23:47:43" color="#ff33a1">}}




{{<matomeQuote body="SSHって高遅延・高帯域幅リンクだとマジで遅いんだよ。HPN-SSHがこれを直してくれるんだ。<br>大陸間のデータセンターでrsync試せばすぐわかるよ。HTTP/3（とこのプロジェクト）は、この問題がないことを期待してるよ。<br>https://www.psc.edu/hpn-ssh-home/hpn-ssh-faq" userName="zielmicha" createdAt="2025/09/28 10:35:59" color="#ff5c5c">}}




{{<matomeQuote body="これ読んで「誰が気にするんだ？」って思ったね。<br>俺は20年間毎日200回以上SSHセッションを張ってきたけど、接続確立がもっと速ければって思ったことなんて一度もないぞ。" userName="malux85" createdAt="2025/09/28 01:15:27" color="">}}




{{<matomeQuote body="この実装って、あることをするの？それとも単にH3ストリームを一つ使うだけ？" userName="thayne" createdAt="2025/09/27 18:04:27" color="">}}




{{<matomeQuote body="moshって使いこなすのが大変だよね。細かいバグも多いし、LC_ALL変数がズレてると接続できないこともあるんだ。開発も止まってるみたいだし、ターミナルマルチプレクサで使うと予測システムがパネルを壊して集中できないのが困るね。参照：https://github.com/mobile-shell/mosh/issues/98" userName="espadrine" createdAt="2025/09/28 13:20:15" color="#ff5c5c">}}




{{<matomeQuote body="接続の意図によって考えは変わると思うな！記事の最後の段落にある”For read-heavy, reconnectable workloads”って箇所、まさにそれだよ。俺がmoshを使ったのは、接続が悪いルーターやDDoS中のサーバーでの素早い操作が主だから、”huge downside”は全然気にならなかったな。" userName="esseph" createdAt="2025/09/28 16:05:29" color="#ff33a1">}}




{{<matomeQuote body="scpの代わりに、SSHで設定してQUICで大量のデータを転送するツールがあるんだよ。高遅延のパスでもずっと速いんだ。これ見てみて：https://github.com/crazyscot/qcp" userName="fanf2" createdAt="2025/09/27 16:16:29" color="#45d325">}}




{{<matomeQuote body="それってよくあるTCPの問題じゃないんだよな。ACKメカニズムがTCPを制限するのは、戻りパスがめちゃくちゃ非対称だったり混雑してて、ACKが落ちるようなマジで変な状況の時だけなんだ。HTTP/3も当然何らかのACKを使ってるはずで、公平性のためだけでも輻輳制御メカニズムを実装しないわけにはいかないからね。QUIC/HTTP/3の真の強みは、アプリケーション層がOSのTCPより新しい”独自のTCP”を提供できる点にあるんだよ。" userName="lxgr" createdAt="2025/09/28 07:35:21" color="#ff33a1">}}




{{<matomeQuote body="俺はよく’rclone’を使ってるよ。SSHも対応してるし、’--transfers’引数を使えば複数のファイルも楽に扱えるんだ。でも、一つだけだと並列化されないって聞いた気がするな。" userName="bravetraveler" createdAt="2025/09/27 16:31:28" color="">}}




{{<matomeQuote body="SSHは複数のチャネルを同じTCP接続で多重化するから、ヘッドオブラインブロッキングの問題が起きるんだ。記事の”Should you find yourself limited by the default buffering of SSH (10+Gbit intercontinental links)”って箇所だけど、それは違うな。OpenSSHは2MBのウィンドウサイズを持っていて、ギガビット級の速度でも10～20ミリ秒の遅延があればBDPで制限され始めるんだよ。" userName="formerly_proven" createdAt="2025/09/28 01:17:54" color="#45d325">}}




{{<matomeQuote body="うん、対応してるかどうかの情報、ここでまとめてるよ：https://github.com/libfuse/sshfs/issues/300" userName="nh2" createdAt="2025/09/28 13:08:04" color="#785bff">}}




{{<matomeQuote body="アプリケーション層の多重化とトランスポート層の多重化を混同してるよ。トランスポート層なしでアプリケーション層だけを使うと、帯域幅やレシーバが制限されてる場合に必ずヘッドオブラインブロッキングの問題が起こるんだ。もちろん全てのSSHユーザーがプロトコル多重化を使うわけじゃないけど、多くの人が使うのはCPU性能やログの量を減らせるからだよ。" userName="lxgr" createdAt="2025/09/28 07:44:48" color="#ff5c5c">}}




{{<matomeQuote body="" userName="fanf2" createdAt="2025/09/27 16:21:36" color="#38d3d3">}}




{{<matomeQuote body="" userName="jlokier" createdAt="2025/10/01 18:54:47" color="#ff5c5c">}}




{{<matomeQuote body="" userName="temp0826" createdAt="2025/09/27 15:22:43" color="">}}




{{<matomeQuote body="" userName="xg15" createdAt="2025/09/27 15:41:17" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="" userName="singpolyma3" createdAt="2025/09/27 16:18:53" color="#45d325">}}




{{<matomeQuote body="" userName="zenmac" createdAt="2025/09/27 15:59:41" color="#ff33a1">}}




{{<matomeQuote body="" userName="Telemakhos" createdAt="2025/09/27 16:12:36" color="#38d3d3">}}




{{<matomeQuote body="" userName="blueflow" createdAt="2025/09/28 09:33:37" color="#785bff">}}




{{<matomeQuote body="" userName="Fnoord" createdAt="2025/09/27 18:10:50" color="#785bff">}}




{{<matomeQuote body="" userName="lxgr" createdAt="2025/09/28 07:52:30" color="#ff33a1">}}




{{<matomeQuote body="訂正ありがとう！さっきの投稿を587に直したよ。僕が言いたいのは、なんで全部のポートをブロックするのかってこと。開けといて、ユーザーが使いたいかどうか決めればいいじゃん。Linuxユーザーはufwを使えば安全だしね。昔はTelnetも使われてたけど、SSHに変わったよね。送られてるリクエストの種類（ストリームか非ストリームかとか）を検知するのが難しいからなのかな？" userName="zenmac" createdAt="2025/09/27 17:02:15" color="">}}




{{<matomeQuote body="すべてのプロトコルが同じに見えると、トラフィックシェーピングが難しくなるんだ。新しいプロトコルを開発するなら、目立たないようにすべきだよ。何もいいことないからね。理想としては、すべてのプロトコルは特徴のないランダムなバイトストリームに見えるべきだね。" userName="codedokode" createdAt="2025/09/27 23:03:54" color="">}}




{{<matomeQuote body="アウトバウンドのポート25をブロックするのは完全に合理的だよ。インバウンドのポート80や443をブロックするのと同じだね（もしインバウンド接続が選択肢になるならだけど、ほとんどのネットワークではIPv4では無理だけどね）。ポート587、993、995などをブロックするのは、確かにばかげてると思うよ。" userName="lxgr" createdAt="2025/09/28 07:56:18" color="">}}




{{<matomeQuote body="それは、見当違いの企業セキュリティチームがすべてをブロックしたり傍受したりしてる結果、必要な悪になってるんだよ。ZscalerでTLS Man-in-the-Middle攻撃モードを有効にしてるチームのことだよ。" userName="MrDarcy" createdAt="2025/09/27 15:57:49" color="">}}




{{<matomeQuote body="HTTPって呼び続ける限りは、ちょっと無理がある気がするな。接続初期化のベストプラクティスはすごく複雑になってて、多くのプロトコルが同じビルディングブロックを必要とするから、最もバトルテスト済みのプロトコルの一つであるHTTPのアプローチに乗っかるのは理にかなってるんだけど、もはやハイパーテキストを転送してるわけじゃないし、なんか変な感じだよね。" userName="chrisfosterelli" createdAt="2025/09/27 15:29:36" color="">}}




{{<matomeQuote body="うん、QUICの上に構築するのは合理的だけど、SSHをHTTPのセマンティクスに無理やり押し込むのはバカげてるって感じるな。" userName="xg15" createdAt="2025/09/27 15:35:40" color="">}}




{{<matomeQuote body="それはHTTP CONNECTの上に構築されてて、既存のリクエスト（QUICストリーム）を透明なバイトストリームに変換するように意図されてるんだ。これでリクエスト＼レスポンスのセマンティクスに対処する必要がなくなるよ。HTTP/3を直接QUICではなく使う理由は、ほとんどデメリットなしで理にかなってるんだ。標準的なHTTP/3リバースプロキシの背後で、好きなサブドメインやパスで実行できるし、ポートスキャナーにも目立たない。オブスキュリティによるセキュリティはセキュリティじゃないけど、多くのスキャナーがSSHサーバーを発見してログイン試行を繰り返すときに発生するCPUオーバーヘッドを減らせるのは間違いないね。<br>HTTP/3で動かすことにはもう一つメリットがある。ブロックされにくくなるんだ。SSHトラフィックが、まるでGoogle Meetみたいに大量のネットワークトラフィックがあるウェブサイトにいるように見えれば、HTTP/3経由のウェブトラフィック全体をブロックしない限り、ブロックするのがずっと難しくなるよ。たとえそうなっても、HTTP/1 CONNECT経由で機能するけど最適ではないエミュレーションは、おそらくまだできるだろうね。" userName="conradludgate" createdAt="2025/09/27 16:06:00" color="#ff5c5c">}}




{{<matomeQuote body="HTTP/3を使うもう一つの利点は、OAuth 2、OIDC、SAMLなどで認証しやすくなることだね。通常のHTTPフローを使えるから、HTTPフローから別のフローにトークンをコピーする必要がないんだ。" userName="thayne" createdAt="2025/09/27 18:48:57" color="#785bff">}}




{{<matomeQuote body="Google CloudのIdentity Aware Proxyが、`gcloud compute ssh`コマンドの基盤として、同じようにHTTP CONNECTアップグレードを使ってるよ。" userName="MrDarcy" createdAt="2025/09/27 18:09:51" color="#38d3d3">}}




{{<matomeQuote body="これで認証済みのプロトコル層が2つになるから、彼らには助けになるんだ。ほとんどの標準プロトコルは複数の認証済みIDをサポートしてないしね。彼らのゼロトラストモデルは、接続するたびにクライアント証明書を使って、そのマシンがエンドポイントに接続する権限があるかを認証し、その後のプロトコル層でユーザーを認証するんだよ。" userName="hxtk" createdAt="2025/09/27 23:09:58" color="#ff33a1">}}




{{<matomeQuote body="これ、マジでいいアイデアだね！理想的には、トラフィックシェーピングや検閲を難しくするために、すべてのプロトコルは同じに見えるべきだよ。ランダムなバイトストリームか、HTTPみたいにね。もしプロトコルを設計するなら、通信会社と裏取引がない限り、HTTPに偽装してトラフィックが遅くされないようにすることをおすすめするよ。" userName="codedokode" createdAt="2025/09/27 22:59:15" color="#45d325">}}




{{<matomeQuote body="HTTPもスロットリングされるって知られてるよ。だから、爆速のHTTP SSH接続が、SSHをそのまま使うより遅くなる可能性もあるんだ。特にHTTPトラフィックが不審に見えたらね。独自のプロトコルなら、検閲を回避する戦略を立てられるメリットもあるよ。" userName="doublerabbit" createdAt="2025/09/27 23:21:04" color="#ff5733">}}




{{<matomeQuote body="いやいや、違うよ。HTTPSに偽装するなら、SNIをtrump.example.comとかrepublicans.example.comに設定すれば、誰もこのトラフィックを遅くするなんてできないはずだよ。もしカスタムで検出可能なプロトコルを使ってたら、その時点で負けだよ。検閲だけじゃなく、一部のアプリを早くするために他のアプリを遅くするトラフィックシェーピングもあるんだからね。プロトコルを識別可能にするのは、何のメリットもないよ。" userName="codedokode" createdAt="2025/09/28 13:53:52" color="#ff5733">}}




{{<matomeQuote body="わかるよ、何かおかしいって感じる気持ち。多様性の欠如はエコシステムの堅牢性を失ってる気がするよね。でも、良い面もあるんだ。多くのセキュリティ問題が一つのスタックに集中してて、それがしっかりメンテナンスされてるんだ。だから、その上に構築されたものすべてが同じ攻撃対象を共有することになる。確かに全部が一気にクラッシュする可能性はあるけど、多くの人が脆弱性を探してて、すぐ修正されるってことでもあるんだ。パフォーマンス最適化も共有されるし、人気が出るとハードウェアにまで組み込まれることもあるんだよ。世界がIPX/SPXやDECNet、X.25じゃなくてTCP/IPに同意したこととか、Linuxカーネルがどこにでもあることとかで、特にたくさんの欠点を見たわけじゃないしね。" userName="oofbey" createdAt="2025/09/27 18:05:59" color="#45d325">}}




{{<matomeQuote body="これって採用される兆しとかあるの？リンクされてるIETFの提出物は、期限切れの個人ドラフト（誰でも送れるやつ）で、SSHの仕様ワーキンググループからのものじゃないんだよね。SSH3って名前を楽観的に使ってる研究者たちからのものって感じがするな。" userName="fulafel" createdAt="2025/09/27 15:46:13" color="#ff5733">}}




{{<matomeQuote body="あと、誰かがSSH3って呼ぶには、SSHに対する権利が必要なんじゃないかな？まるで、無関係な人がHacker News 2.0っていうウェブサイトを作ったみたいな話だよね。" userName="m463" createdAt="2025/09/30 03:42:06" color="#785bff">}}




{{<matomeQuote body="QUICはもっとレイヤー4、つまりTCPの再実装に近いものだよ。HTTPのレイヤー7とはかけ離れてるね。" userName="attentive" createdAt="2025/09/27 20:06:05" color="">}}




{{<matomeQuote body="＞SSHv2で新しいセッションを確立するには5～7回のネットワークRRTがかかり、ユーザーには簡単に気づかれる。SSH3は3回のRRTしか必要ない。実行中のセッションでのキーストロークの遅延は変わらない。<br>残念。ユーザー目線だと、魅力がわからないな。接続セットアップ時間が気になったことなんて一度もないし。SSHは実績があるしね。たとえ本番稼働可能になったとしても、これを信用するのはリスクを感じるよ。" userName="kelnos" createdAt="2025/09/27 18:50:26" color="#785bff">}}




{{<matomeQuote body="その発言、本当に困惑するね。RFC 4253 (SSH Transport Layer Protocol)[1]には、「ほとんどの環境では、完全な鍵交換、サーバー認証、サービス要求、およびサービス要求の承認通知には2回のラウンドトリップしか必要ないと予想される。最悪の場合でも3回のラウンドトリップだ。」って書いてあるよ。<br>セッション初期化時間で問題を感じたことは一度もないし。それはサーバーとクライアント両方の設定に影響されるはずだよ。<br>[1]: https://datatracker.ietf.org/doc/html/rfc4253" userName="esjeon" createdAt="2025/09/28 04:32:09" color="#38d3d3">}}




{{<matomeQuote body="キーストロークの遅延を早く感じさせたいなら、Mosh shellをチェックしてみて！これだよ：https://github.com/mobile-shell/mosh" userName="varenc" createdAt="2025/09/28 01:58:33" color="#45d325">}}




{{<matomeQuote body="UDPトンネルが主要な機能で、WireGuardよりずっと軽いんだ。それにOpenID認証もあるよ。" userName="pancsta" createdAt="2025/09/27 22:24:48" color="">}}




{{<matomeQuote body="WireGuard（と注目すべきVPNプロトコルはどれも）UDPで動くんだよ。TCP-over-TCPなんて最悪で、まともな人はやらないよ。それにWireGuardより”軽い”ってどういうこと？あれはもうこれ以上ないくらいシンプルだよ（QUICよりは確実にシンプルだ）。" userName="rollcat" createdAt="2025/09/28 10:21:10" color="#ff5733">}}




{{<matomeQuote body="SSHは常にデプロイされてるけど、WireGuardは（追加で）デプロイする必要があるんだ。WireGuardはネットワークアドレスを提供するけど、SSHはネットワークポートを提供する、って違いがあるね。" userName="pancsta" createdAt="2025/10/02 10:05:31" color="#45d325">}}




{{<matomeQuote body="＞ OpenID認証も<br>って、え、マジで？それ本当に動くの？もしそうなら、これはすごいことだよ！SSHの鍵や証明書管理のひどい混乱を解決できる可能性があるもんね。（ここでOpenIDが秘密鍵とどう連携するのかは分からないけど。）" userName="otabdeveloper4" createdAt="2025/09/27 23:48:49" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうだね、この手の問題で苦労した人たちはその限界を知ってるはず。多重化を使った場合のHead-of-line blockingはまさにその一つだよ。これはすごく妥当な段階的改善だね。重要なのは、これでセキュリティ機構が変わるわけじゃないみたいだし、実装と仕様のドラフトの両方があるから、OpenSSHもいずれ採用する可能性があって、他の実装者を信用する必要がなくなるかもしれないってことだ。" userName="lxgr" createdAt="2025/09/28 07:58:12" color="#785bff">}}




{{<matomeQuote body="＞ [...] OpenSSHもいずれ採用する可能性があって [...]<br>OpenSSHはOpenBSDだってことを忘れないでね。彼らは特定の技術を採用する際に、特にQUICのような複雑なスタックが絡む場合は、独自の意見と保守的なアプローチを取るんだ。”理解しやすいものでなければならない。さもないと、誰かが間違ったことをする可能性があって混乱するからだ。”ってスタンスだね。" userName="rollcat" createdAt="2025/09/28 10:17:30" color="#45d325">}}




{{<matomeQuote body="Head-of-line blockingは、ssh3で完全に解決される可能性が高いよ。ssh3の1つの物理的な接続上で複数のポートや接続を多重化すれば、もっと速くなるはずだ。" userName="thethimble" createdAt="2025/09/27 20:23:38" color="#ff5733">}}




{{<matomeQuote body="ここで何かを”物理的”と呼ぶのは、僕には変だし紛らわしいな。まさかphysical layerのことじゃないよね？" userName="john01dav" createdAt="2025/09/27 21:09:51" color="">}}




{{<matomeQuote body="なぜか通信プロトコルの文脈でそういう表現をよく見るんだ。たとえ誤用だと分かっていても、「非仮想化の」という意味で比較的はっきりしてるから使われてるんだと思う。例えばVRRPだと、みんなVIPじゃないアドレスを”物理IP”って言うよね。RFCでは”primary IP”って呼んでるのに。確かに”primary IP”の方がどっちを指してるのか紛らわしいかもしれないね、技術的には正確だけど。もちろん、誤用にならずに、もっと明確に全ての状況に当てはまる完璧な言葉が、単に僕が思いつかなかっただけなのかもしれないけどね :D。" userName="zamadatix" createdAt="2025/09/28 00:58:27" color="#ff33a1">}}




{{<matomeQuote body="接続設定時間は気にしたことないけど、ちょっと気になることはあったな。SSHでリモートコマンドを実行することもあるし。" userName="Levitating" createdAt="2025/09/27 22:06:46" color="">}}




{{<matomeQuote body="もし同じホストに繰り返しコマンドを実行してるなら、SSHマルチプレキシングが役立つよ。SSHで入るとローカルのUnixドメインソケットが開いて、追加の接続は既存の接続を介して認証なしで使えるんだ。新しいTCP接続よりずっと速いよ。" userName="E39M5S62" createdAt="2025/09/27 22:23:25" color="#38d3d3">}}




{{<matomeQuote body="なんでこのUDSを使うのがデフォルトじゃないの？どうやったら有効にできるの？" userName="oezi" createdAt="2025/09/28 05:26:03" color="">}}




{{<matomeQuote body="UDSがデフォルトじゃないのは、マルチユーザーシステムでは安全じゃないから。ローカルシステムのrootユーザーにリモートシステムへのアクセスを許しちゃうんだ。rootは君のUDSも読み書きできるしね。ユーザーとしては、許容できると思ったら明示的にオプトインする必要があるよ。" userName="oarsinsync" createdAt="2025/09/28 06:14:03" color="#785bff">}}




{{<matomeQuote body="それが理由だとは思わないな。rootは理論的に何でもできるし、rootから守られてるものなんてほとんどないよ。rootは君のアカウントにsuして新しいSSH接続を作れるし、SSHコマンドを彼らの公開鍵をコピーしてからシェルを開くものに置き換えることもできるんだから。" userName="immibis" createdAt="2025/09/29 09:11:01" color="#ff5733">}}




{{<matomeQuote body="OpenSSHのControlMaster、ControlPath、ControlPersistオプションについてドキュメントを見てみて。" userName="E39M5S62" createdAt="2025/09/29 16:26:32" color="#38d3d3">}}




{{<matomeQuote body="もっとスムーズなUXが欲しいなら: https://mosh.org/" userName="athrowaway3z" createdAt="2025/09/27 21:41:34" color="#45d325">}}




{{<matomeQuote body="残念だけど、このプロジェクトはもう活動してないみたいだよ。" userName="gdevenyi" createdAt="2025/09/27 21:58:52" color="">}}




{{<matomeQuote body="それでもまだすごくよく動くよ。何年も、いや何十年もアップデートされてないけど、素晴らしいソフトウェアはたくさんあるんだ。" userName="fsiefken" createdAt="2025/09/27 22:09:41" color="">}}




{{<matomeQuote body="それは死んだのか、それともただ成熟しただけなのか？" userName="voxadam" createdAt="2025/09/28 00:03:44" color="">}}




{{<matomeQuote body="Moshはまだバグだらけでメンテナンスされてないみたいだね。後継プロジェクトもないし、例えばこのissueみたいに、問題が山積してるよ: https://github.com/mobile-shell/mosh/issues/1339。" userName="zamadatix" createdAt="2025/09/28 00:50:58" color="#45d325">}}




{{<matomeQuote body="uniwidth問題には、https://github.com/jdrouhard/mosh/ ってフォークがあるよ（もっと最適化できると思うけどね）。" userName="rurban" createdAt="2025/09/28 06:21:55" color="">}}




{{<matomeQuote body="MoshはFedoraとか主要なディストリビューションにも入ってるし、バグや悪用されるようなものだったらとっくに排除されてるはずだよ。" userName="fsckboy" createdAt="2025/09/28 13:30:39" color="">}}




{{<matomeQuote body="各ディストリビューションのパッケージメンテナーが、フォークでパッチを維持するのは自由だけど、その品質や寿命はアップストリームとの連携次第なんだよね。" userName="zamadatix" createdAt="2025/09/28 14:52:16" color="">}}




{{<matomeQuote body="Moshがメンテされてないってのは多分違うと思うよ。ディストリビューションが重要なパッチ、特にセキュリティ関連のものを自分たちだけで抱え込むわけないし、見捨てられたってのも誤解じゃないかな。" userName="fsckboy" createdAt="2025/09/28 19:40:09" color="">}}




{{<matomeQuote body="上の話は全部Moshプロジェクト本体のことで、個々のディストリビューションのパッケージとは別だよ。例えばmacOSで”brew install mosh”しても、Fedoraが適用したパッチなしの公式だけど3年前のリリースが手に入るし、GitHubから手動でダウンロードしても同じだよ。<br>GPLv3コードを”自分たちだけで抱え込む”のがどういう意味か100%は分からないけど、MoshのGitHubリンクを見れば、アップストリームプロジェクトは過去2.5年間コミットが一つもないのが分かるよ。<br>プロジェクトは死んでる。あとはあなたが使ってるバイナリにとって、それがどれくらい問題か、特定のダウンストリームパッケージを信用して検証するしかないんだ。一部のメンテナーはまだ気づいてないか気にしてないかもしれないし、一部は既知のCVEのセキュリティ修正しか提供しないかもしれない、あるいは完全にフォークを管理してるかもしれないね。平均的な読者は、Fedoraがまだダウンストリームバージョンをパッケージしてる（それが完全に違うかもしれないけど）ってことより、自分が使ってるバイナリがどうなってるかに注目すべきだよ。" userName="zamadatix" createdAt="2025/09/28 21:28:08" color="#38d3d3">}}




{{<matomeQuote body="SSH3って名前、俺も大嫌いなんだ。リポジトリのトップに「SSH3は多分名前を変えるよ。今もRFC4254のSSH接続プロトコルがHTTP/3 Extended connect上で動いてるけど、必要な変更が大きすぎて、人気のSSH実装に統合されるのは考えにくいからね。仕様ドラフトはもう”Remote Terminals over HTTP/3”に改名されたけど、いい永続的な名前を思いつくまでには時間がかかりそう」って書いてあってよかったよ。" userName="psanford" createdAt="2025/09/27 15:48:18" color="#ff5733">}}




{{<matomeQuote body="HTTPSSH。QUICですでにできることに、HTTP/3レイヤーって何を追加してるの？" userName="pdmccormick" createdAt="2025/09/27 19:21:03" color="">}}




{{<matomeQuote body="ほんとそれー！なんか「Windows 12」とか「Linux 7」って名前つける、適当なやつが作ったリポジトリって感じがするよね。" userName="zdw" createdAt="2025/09/27 15:56:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
