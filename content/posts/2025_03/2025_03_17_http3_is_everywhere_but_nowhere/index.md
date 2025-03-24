+++
date = '2025-03-17T00:00:00'
months = '2025/03'
draft = false
title = 'HTTP/3はどこにでもあるけど、どこにもないってマジ？エンジニアが語る導入が進まない裏事情'
tags = ["HTTP/3", "QUIC", "ネットワーク", "プロトコル", "DevOps"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> HTTP/3はどこにでもあるけど、どこにもないってマジ？エンジニアが語る導入が進まない裏事情

引用元：[https://news.ycombinator.com/item?id=43360251](https://news.ycombinator.com/item?id=43360251)

{{<matomeQuote body="マジでHTTP/3をフルサポートしてる有名なオープンソースツールってマジで見当たらなくね？普及はマジで始まったばっかじゃん？<br><br>これ矛盾してね？何が起きてんの？<br><br>うちみたいなIT管理者とかDevOpsエンジニアはだいたいロードバランサーでHTTP/3のコネクション切って、SSLも切って、バックエンドのサービスにはHTTP 1.1（GRPCとかGraphQLならたぶん2）で返すんだよね。その方が管理もデバッグも楽だし、大体のリバースプロキシが対応してるし。だからGolangとかPythonみたいなサーバーサイド言語でHTTP/3を使う必要あんまないんだよね。HTTP/1.1の方がデータセンター内では絶対使えるし（デバッグも早いし楽だし！）<br><br>HTTP/3とIPv6ってモバイル向けの技術で、データセンターには向いてないんだよね。一時的な不安定なコネクションでは輝くけど、マシン間のコネクションが静的でギガビットで低遅延な環境だとオーバーヘッドがデカすぎるんだよね。" userName="djha-skin" createdAt="2025-03-17T18:29:54" color="">}}

{{<matomeQuote body="HTTP/3の専門家じゃないけど、IPv6についてはマジで反対。あれはオーバーヘッドとか余計なもんを排除してくれて、データセンターの作業がマジで快適になるんだよね。それに、買収した会社がうちの会社と同じ10/16のサブネットでアカウント作っちゃってた、みたいな事態を防げるし。" userName="kstrauser" createdAt="2025-03-17T18:42:53" color="#38d3d3">}}

{{<matomeQuote body="よくぶつかる問題は、一般的なインフラでのIPv6のサポートがイマイチってことなんだよね。<br><br>コンテナオーケストレーションシステムがIPv6に対応してないとか、HTTPクライアントが対応してないとか、DNSリゾルバーが対応してないとか、そういうのを知るとマジでめんどくさい。<br><br>それに、うちのISPが未だにIPv6アドレスを提供してないのもマジでイライラする。" userName="cogman10" createdAt="2025-03-17T20:04:05" color="">}}

{{<matomeQuote body="主な理由はBSD Socketsとその抽象化の欠陥で、プロトコルの詳細がアプリケーションコードにハードコードされちゃうことなんだよね。<br>10年くらいかけて、ソケットを作るところ全部でv6をサポートするようにパッチを当てなきゃいけなかったし、getaddrinfoが普及する前は何度もパッチを当てなきゃいけなかった。" userName="p_l" createdAt="2025-03-17T23:21:08" color="">}}

{{<matomeQuote body="＞results in hardcoding protocol details in application code<br>＞”それって別のやり方があったんじゃないかってこと？例えば、IPをv4からv6にアップグレードするようにネゴシエーションするとか？アイデアを聞きたいな。”" userName="throwaway2037" createdAt="2025-03-18T04:32:22" color="">}}

{{<matomeQuote body="原則として、アプリケーションはIPアドレスの正確なフォーマットを知る必要はないと思うんだよね。IPに直接接続する場合でも。アプリケーションコードをIPに依存させない簡単な方法としては、SOCK_ADDR_INがIPを文字列形式で受け取るようにすればよかったんじゃないかな。そうすれば、4バイトのIPv4アドレスから16バイトのIPv6アドレスに移行するために、再コンパイルする必要すらなかったかもしれない。でも今は、再コンパイルするだけでなく、ソースレベルで変更して新しいタイプを使う必要があるんだよね。<br>もちろん、パケットを操作するコードとか、OSのTCP/IPスタックは書き換える必要があっただろうけど。でも、それって「ソケットを開くすべてのアプリケーション」よりはるかに少ないコード数だよね。<br>もちろん、これはIPを使って接続を開くだけのコードにしか当てはまらないけど。IPを解析したり、表示したり、検証したりするコードはたくさんあるし。それらのコードはすべて、IPv6アドレスを受け入れるように書き換える必要があるよね（もっと複雑な文字列表現も）。それは避けられない。" userName="tsimionescu" createdAt="2025-03-18T05:47:04" color="#785bff">}}

{{<matomeQuote body="そうそう、一番の問題は、ユーザーからの入力を受け取るコードが、アドレスが有効かどうか、許可された範囲内かどうかなどを検証する必要があったことなんだよね。<br>sockaddr構造体はv4/v6ソケット接続を抽象的に処理できたけど、追加の処理やIPアドレスのロジックをうまく処理する方法がなかったから、予期しない場所でソフトウェアに漏れてしまったんだよね。<br>プロキシヘッダーを検査する必要があるWebアプリとかでも起こりうる。<br>ソケットAPIが提供するアドレス解決を明示的に信頼しないことが慣習になったのも良くなかったよね。整数に見えるものをuint32に解決して、4バイトのV4アドレスに変換したりするから。" userName="kortilla" createdAt="2025-03-18T07:18:50" color="#45d325">}}

{{<matomeQuote body="マジ悲劇だよね。ipv4との強制的な違いから来てるんだもん。デザインは合理的だったけど、完璧な予知能力があれば、違うものにする必要があったんだよ。既存の/32を維持して、アドレスフィールドを大きくするべきだったんだ、デメリットがあったとしても。<br>「どこにでもあるけど、どこにもない」ってのは、ipv6を言い表してる気がする。ほとんどのハードウェアと低レベルのソフトウェアがサポートしてるから、新しいプロトコルをサポートするのが不可能じゃなかったのは明らかだけど、使われてないんだよね。" userName="frollogaston" createdAt="2025-03-17T22:04:13" color="">}}

{{<matomeQuote body="アドレスフィールドのサイズを変更しただけで、BSD Socketsを使う人全員がソケットを作るコードを全部書き換えることになるから、結局同じ理由で失敗したと思うよ。<br>特にgetaddrinfoは、ストリーム/OSI指向のスタックから移植されたのが遅かったからね。BSD Socketsはプロトコルごとに個別のパスが必要だったから。<br>ハードウェア的には、1990年代半ばには、ルーティングに関わるフィールドを1つ変更するだけでも、より多くの機能を備えた新しい世代のASICが必要になる可能性があった。<br>要するに、どこかのフィールドを壊すことに同意したら、コストがめっちゃかかるから、他の部分も直してみようってなるんだよね。特にIETFは、レイヤー3でOSIを使うという実装済みのソリューションをすでに拒否してるんだから。" userName="p_l" createdAt="2025-03-17T23:18:55" color="">}}

{{<matomeQuote body="BSDソケットを使ってるコードは、もうv6をサポートするように書き換えられてるんじゃないの？もしそうなら、それが理由にはならないよね。だってv4の方がまだ主流だし。<br>あと、俺が提案したやり方なら、ユーザー空間のコードを変更しなくても動くはずだよ。<br>ただし、/32を分割したい場合は別だけどね。だってv4アドレスはv6でも有効なはずだから。" userName="frollogaston" createdAt="2025-03-17T23:26:33" color="#ff5c5c">}}

{{<matomeQuote body="残りの96ビットはどこに保存するつもり？bodyに入れるの？" userName="kstrauser" createdAt="2025-03-18T03:11:37" color="">}}

{{<matomeQuote body="Ipv6のパケット形式はどのみち必要だったんだよね。最初は32ビットのアドレス空間だけで（残りの92ビットは0に設定）。システムにv6を使い始めるように指示するだけで、他は何も変わらない。デュアルスタックも不要。次はDNSとかDHCPとか、128ビットのアドレスを受け入れるようにアップグレードする。これも単独でできる。最後にISPとかホームルーターが1.1.1.1.2みたいな長いアドレスを配布し始める。" userName="frollogaston" createdAt="2025-03-18T04:38:30" color="">}}

{{<matomeQuote body="「システムにv6を使い始めるように指示するだけ」って解釈が2つあるなー。<br>もし、全てのプログラムをアップグレードするって意味なら、今のやり方と同じで、君の計画はうまくいくけど、みんな面倒くさがってやらない。「単純」なステップが全然単純じゃないじゃん。<br>もし、全てのプログラムをアップグレードしないって意味なら、最後のステップで失敗する。長いアドレスを配布し始めても、昔のプログラムはアクセスできない。" userName="Dylan16807" createdAt="2025-03-18T05:40:25" color="#ff33a1">}}

{{<matomeQuote body="後者の方だよ。でも昔のプログラムもアップグレードされたじゃん。だから、この別の計画でもそうならない理由がわからない。むしろ、アドレスフィールドを大きくするだけで、別ケースじゃないから簡単だと思う。一部のルーターはメモリのせいで128ビットのアドレスに苦労したけど、DHCPを使っていれば48ビットとか64ビットでもよかったかも。" userName="frollogaston" createdAt="2025-03-18T06:55:56" color="">}}

{{<matomeQuote body="「使われていない」って言うけど、Googleのトラフィックの半分近くで使われてるよ：https://www.google.com/intl/en/ipv6/statistics.html<br>スマホのWi-Fiを切って https://ifconfig.co/ にアクセスしてみて。Verizonのユーザーなら、IPv6アドレスが表示されるはず。今、まさに今、めっちゃ普及してるよ。" userName="kstrauser" createdAt="2025-03-17T23:15:34" color="#45d325">}}

{{<matomeQuote body="「依存している」って言うべきだった。ISPとかウェブサイトはv4のみでも、両方サポートでもいいけど、v6のみにはならない。" userName="frollogaston" createdAt="2025-03-17T23:27:02" color="">}}

{{<matomeQuote body="なるほどね。でも、すぐに変わると思うよ。俺の予想では、次のPokemon GoみたいなモバイルファーストのゲームがIPv6のみになると思う。" userName="kstrauser" createdAt="2025-03-18T00:09:23" color="">}}

{{<matomeQuote body="多くのモバイルユーザーは自宅や職場でWi-Fiを使ってる。ipv4のみのWi-Fiを切ってゲームをしろって言うのはありえない。ipv4アドレスのコストはインフラにほとんど影響しないのに、CTOはユーザーの不便さを大幅に増やして（「ゲームをプレイするにはWi-Fiを切って！」）、インフラのコストを数セント（比較的に）節約しようとするのか？" userName="gruez" createdAt="2025-03-18T02:33:17" color="#ff5733">}}

{{<matomeQuote body="自宅にWi-Fiがない国もあるかもしれない。" userName="frollogaston" createdAt="2025-03-18T04:54:38" color="">}}

{{<matomeQuote body="それは違うよ。XFinityがipv6接続を切断し始めたことがあって、いくつかのサイト（忘れたけど）が壊れたから気づいた。" userName="adgjlsfhk1" createdAt="2025-03-17T23:42:56" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞”使われてない”って言うけど、Googleのトラフィックの半分近くはIPv6だよ。<br>世界最大級のISP、VodafoneはまだIPv6に対応してないんだよね。Googleが対応してても、ISPが対応してなかったら意味なくね？" userName="motorest" createdAt="2025-03-18T04:37:19" color="">}}

{{<matomeQuote body="確かにそうだけど、俺の言いたいこととは関係ないんだよね。特定のISPが対応してるかどうかは関係なくて、世界の他の地域では広く使われてて、Googleのトラフィックの半分にもなってるんだよ。" userName="kstrauser" createdAt="2025-03-18T14:17:58" color="">}}

{{<matomeQuote body="＞ほんと悲劇だよね。全部、IPv4との無理な違いから来てるんだから。設計は合理的だったけど、今から思えば違ってるべきだった。既存の/32を維持して、アドレスフィールドだけ大きくするべきだったんだよ、デメリットがあったとしても。<br>まさにそれ。そんな世界を見てみたかった。IPv6の他の部分が個別に提案されて、多くが不要として拒否されるような世界。" userName="JoshTriplett" createdAt="2025-03-17T22:56:58" color="#45d325">}}

{{<matomeQuote body="一番の問題は、細かい機能じゃなくて、分割できない大きな問題、新しいアドレス体系だったんだよね。既存のアドレスを全部置き換えたかったから、ルートも全部置き換えることになった。それだけでも大変なのに、DNS, DHCP, NATのv6版がv4をサポートしなくなるってことだったんだよね。完全に別のスタックになるってこと。<br>細かいこともあったけどね。ルーターの設定がv6で悪かったり。でも、もし大きなことを変えなかったら、そんな心配もなかった。" userName="frollogaston" createdAt="2025-03-17T23:42:57" color="#785bff">}}

{{<matomeQuote body="＞それだけでも大変なのに、DNS, DHCP, NATのv6版がv4をサポートしなくなるってことだったんだよね。完全に別のスタックになるってこと。<br>確かに、”アドレスを大きくする”には、DHCPv6とか、DNS AAAAレコードとか、IPアドレスを埋め込んだプロトコルのアップデートが必要だっただろうね。あと、プロトコルヘッダーの変更（冗長なチェックサムの削除とか）も良いアイデアだったと思うよ。<br>SLAACをDHCPの代わりに推奨する必要はなかったし、すべてのIPv6スタックにIPsecを必須にする必要もなかった（幸い必須ではないけど）。<br>アドレスの構文をコロンに変更して、IP:portとかを使ってるプロトコルに苦痛を与える必要もなかったし、すべてのインターフェースにリンクローカルアドレスを強制する必要もなかったし、必須のアドレス衝突検出メカニズムを追加する必要もなかった。<br>他にもいろいろ忘れてるかも。" userName="JoshTriplett" createdAt="2025-03-18T06:04:15" color="#785bff">}}

{{<matomeQuote body="＞それと、買収した会社が、自分の会社と同じ10/16サブネットでアカウントを展開してるのを相手にしなくて済むって保証されてるようなもんだしね。<br>それって必死な言い訳だと思ってたんだよね。'直接統合する予定の、ありえないほど稀な事態に備えてネットワークを準備しろ'って（ネットワークセグメンテーションのこと聞いたことないのか？）。ISPが一方的にプレフィックスを変えることの方がよっぽど心配だよ。IPv6でしか起こりえないことなのに。" userName="yyyk" createdAt="2025-03-18T02:17:53" color="">}}

{{<matomeQuote body="＞ISPが一方的にプレフィックスを変えることの方がよっぽど心配だよ。IPv6でしか起こりえないことなのに。<br>ISPはIPv4でDHCPアドレスを一方的に変更してくるじゃん。IPv4でスタティックアドレスを持ってるなら、ISPはスタティックなv6プレフィックスをくれるはずだよ。意味不明。" userName="bigstrat2003" createdAt="2025-03-18T06:00:31" color="#38d3d3">}}

{{<matomeQuote body="＞オーバーヘッドとクルフトをたくさん取り除くんだよね。<br>詳しく教えてくれない？ここでもいいし、リンクでもいいから。どんな種類のオーバーヘッドとクルフト？" userName="einpoklum" createdAt="2025-03-17T23:40:10" color="">}}

{{<matomeQuote body="・ヘッダーが固定長。<br>・パケットを分割できない。<br>・冗長なチェックサムヘッダーが削除された。<br>・プライベートアドレスがなくなった（懲りない人以外）。<br>・NATがなくなった（上記参照）。<br>・ルーティングがシンプルになった。<br>・DHCPが不要になった。<br>IPv4から学んだ教訓がめちゃくちゃ活きてる。" userName="kstrauser" createdAt="2025-03-18T00:13:55" color="#38d3d3">}}

{{<matomeQuote body="HTTP/3はモバイル中心の技術ってわけじゃないんだよね。初期のQUICのプレゼンでパケット制御の話はよく出てたけど、それはモバイル”中心”って意味じゃないよ。あくまで応用例の一つでしょ。輻輳制御の改善とか、コントロールプレーンのコスト削減とか、HOL blockingの解消とかは、データセンターのネットワークでもめっちゃ価値あるんだよ。テールレイテンシが酷くて、中央値と平均値の差がめっちゃ大きいサービスとか、HTTP/TCPのせいだったりするじゃん？IPv6も同じで、QUICがモバイルで話題になったから勘違いされやすいのはわかるけどさ。でもIPv6はもっと前からあるし。データセンターだと、v4 IPアドレスクラスを使い切る勢いのところも出てきてるしね。TailscaleでQUICをデータセンターで試したけど、multiplexingの方が百万個のバッファが競合するよりずっと実用的だったよ。QUICとIPv6はデータセンターでも絶対価値があるよ。LAMPスタックみたいなのには向かないかもしれないけど、大規模な環境やモダンなアーキテクチャではめっちゃ使えるし、設計の幅も広がるよ。みんなが使う必要はないけど、軽く見たり、用途を限定したりするのは違うと思うな。" userName="raggi" createdAt="2025-03-17T23:08:03" color="#ff33a1">}}

{{<matomeQuote body="＞HTTP 1.1に戻すってのはアリだよね。<br>それだとHTTP/3のメリットがいくつかなくなっちゃうんだよね。例えば、ヘッダー圧縮とかHOL blockingの軽減とか。ロードバランサーが複数のHTTP 1.1ストリームを並列で使うことで多少は解決できるかもしれないけど、実際にはイマイチな結果になることが多いんだよね。" userName="jiggawatts" createdAt="2025-03-18T02:00:07" color="">}}

{{<matomeQuote body="ギガビット回線でそんな”メリット”気にする人いないって。そんな速度じゃHOL blockingなんて起きないし。圧縮もそう。デバッグしにくくなるだけじゃん？" userName="djha-skin" createdAt="2025-03-19T02:52:09" color="">}}

{{<matomeQuote body="どんなoverheadがあるの？1.1の方がデータセンターに向いてるって話は聞いたことなかったから、データがあったら教えてほしいな。" userName="aoeusnth1" createdAt="2025-03-17T18:43:46" color="">}}

{{<matomeQuote body="QUIC/HTTP3はTLSに依存してるんだよね。もしIstio/Envoyのサービスメッシュとか、Zerotier/Tailscale/Wireguardみたいな暗号化されたoverlay networkを既に使ってるなら、HTTP3を使うメリットはないんだよね。それに、ネイティブの暗号化ライブラリの方が暗号化の処理が上手だったりするから、GoとかNodeで無駄に暗号化するよりも、サービスメッシュとかoverlayに暗号化を任せて、アプリは平文のリクエストに応答する方が合理的だと思う。" userName="Karrot_Kream" createdAt="2025-03-17T21:31:57" color="#45d325">}}

{{<matomeQuote body="＞サービスメッシュとかoverlayに暗号化を任せて<br>HTTP/2とかHTTP/3も使えるじゃん。localhost (またはunix socket) のgateway<->app間をHTTP/2にして、WebTransportをサポートするとか。" userName="dathinab" createdAt="2025-03-18T00:09:12" color="">}}

{{<matomeQuote body="IPv6っていつからモバイル中心になったの？90年代からあるじゃん。" userName="karel-3d" createdAt="2025-03-18T06:27:30" color="">}}

{{<matomeQuote body="HTTP/3はモバイル中心ってのはわかった。でも、それ以外のケースではHTTP/2にfallbackすれば良くない？" userName="urban_alien" createdAt="2025-03-17T19:36:02" color="">}}

{{<matomeQuote body="gRPCの話だけど、HTTP/2に全振りしちゃったのは残念だよね。HTTP/1.1でも動くようにすべきだった。他の人が作ったのはあるけど、公式じゃなかったし。そうすれば、JSON-over-HTTPよりもっと普及してたかもね。" userName="frollogaston" createdAt="2025-03-17T22:07:57" color="">}}

{{<matomeQuote body="HTTP/1.1を選ぶ理由がないじゃん。HTTP/2の方が良いに決まってる。" userName="koakuma-chan" createdAt="2025-03-17T23:54:11" color="">}}

{{<matomeQuote body="＞同時に、QUICもHTTP/3もNode.js、Go、Rust、Python、Rubyなどの主要言語の標準ライブラリには含まれていない”<br>マジかー。でも.NETは結構サポート良さそうだよ[0] (ちなみに.NETとC#が主要じゃないってのは悲しいね…)。Microsoftが公開してるオープンソースのCライブラリもかなり進んでるみたい[1]。Windows、Linux[2]、Mac[3]もサポートしてるって(ただし、後者2つには注意点あり)。ほとんどの開発チームは、ネットワーク製品とかプラットフォーム作ってない限り、HTTP/3は優先順位低いんじゃないかな。特にライブラリにエッジケースがあったり、まだ本番環境には早いってなるとね。機能実装とか安定化とかバグ修正があるのに、低レベルのプロトコル実装のデバッグなんてしたくないっしょ。<br>[0] https://learn.microsoft.com/en-us/dotnet/fundamentals/networ...<br>[1] https://github.com/microsoft/msquic<br>[2] https://learn.microsoft.com/en-us/dotnet/fundamentals/networ...<br>[3] https://learn.microsoft.com/en-us/dotnet/fundamentals/networ..." userName="CharlieDigital" createdAt="2025-03-17T13:09:40" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞side note: sad that .NET and C# are not considered ”major<br>ほんとそれな。前にも言ったけど、今の.NETは過小評価されてるよね。Windowsだけじゃないし(もう8年くらいそうじゃない)、C#も良い言語だし。F#も関数型好きな人にはおすすめ。まだ試してないなら、ぜひ試してみて。" userName="hypeatei" createdAt="2025-03-17T14:00:48" color="#785bff">}}

{{<matomeQuote body=".NETはMicrosoftの長年の評判のせいで損してるんだよね。昔はオープンソースとLinuxの敵って見られてたし、それも当然だった。今のMSは昔とは違うけどね。でも、昔のことを忘れないのは悪いことじゃないと思う。もし.NETが不当な評価を受けてるなら、MSとか他の企業は、攻撃的なやり方をするとどうなるかを思い出すべきだね。" userName="shermantanktop" createdAt="2025-03-17T14:53:08" color="">}}

{{<matomeQuote body=".NETはMicrosoftが変わってないってことを示す最高の例だと思うよ：https://isdotnetopen.com/" userName="nolist_policy" createdAt="2025-03-17T15:12:43" color="">}}

{{<matomeQuote body="それって3年くらい前の手動で選んだTwitterの投稿じゃん。そのページ自体もそうだし。https://github.com/ghuntley/isdotnetopen<br>そのウェブサイトは、オープンってどういう意味なのかすら説明してないし、なんで.NETがオープンソースじゃないと思ってるのかも説明してない。" userName="hu3" createdAt="2025-03-17T20:43:23" color="">}}

{{<matomeQuote body="またこのリンク？こういうしつこい行動には呆れるわ。反感を買うだけだと思うし、エコシステムを変えたとしても、悪い印象は残るよ。技術的な議論で悪意のある行動をする人が、プロの場で受け入れられる行動をするとは思えない。これはHTTP/3のサポートについての議論なのに、C#についてちょっと肯定的なコメントがあっただけで、なんでこんなことになるの？PHP以外にこんなに嫌われてる言語知らないんだけど。" userName="neonsunset" createdAt="2025-03-17T18:36:06" color="">}}

{{<matomeQuote body="そのリンク初めて見た。どこが悪意があるの？なんでRustが出てくるのか分からない。" userName="ycombinatrix" createdAt="2025-03-17T19:36:24" color="">}}

{{<matomeQuote body="前のコメントが編集されたから、もう”Rust”は含まれてないみたい。分かりにくいね。:P" userName="johnisgood" createdAt="2025-03-17T19:50:43" color="">}}

{{<matomeQuote body="編集したのは、俺だけの経験じゃないから。Twitterで、ゲーム開発系の日本人開発者も、”Windowsでしか動かない”とか”オープンソースじゃない”って言われることが増えたって嘆いてるんだよね。普通、.NETがOSSになってから時間が経てば経つほど、逆になるはずじゃない？そのリンク自体も古くて、Swiftを宣伝してるMiguel de Icazaの投稿がほとんどだし。そこから何を感じるかは人それぞれだけど。" userName="neonsunset" createdAt="2025-03-17T19:53:58" color="">}}

{{<matomeQuote body="Miguel de Icazaが何十年も.NETの最大のファンだったってことを忘れてるよ。彼が諦めたってことは、相当なことだよ。彼が内部で.NETを良くしようと努力して、最終的に諦めたってことのほんの一部しか、一般の人は知らないんだよ。" userName="int_19h" createdAt="2025-03-17T21:12:14" color="">}}

{{<matomeQuote body="皮肉なことに、GitHubもVS CodeもTypeScriptも全部Microsoftの製品なんだよね。" userName="CharlieDigital" createdAt="2025-03-17T15:08:01" color="">}}

{{<matomeQuote body="GitHubは買収されたから、ちょっと違うかもね。TypeScriptは知らなかった！すごいじゃん！" userName="Navarr" createdAt="2025-03-17T16:32:10" color="">}}

{{<matomeQuote body="＞GitHubは買収されたから、ちょっと違うって言うけどさ。<br><br>それってなんで違うの？買収からもう7年も経ってるじゃん？SharePointもVermeer経由で買収したFrontPageの拡張だから免除されるの？いつになったら”Microsoft嫌い”から免除されるんだろ？10年？20年？" userName="CharlieDigital" createdAt="2025-03-17T21:19:33" color="">}}

{{<matomeQuote body="TypeScriptだけが自社製だよ。他は買収。Embrace、extend、and extinguish時代を覚えてる？" userName="Svoka" createdAt="2025-03-17T15:27:49" color="">}}

{{<matomeQuote body=".NETがMicrosoftから出てるってだけじゃないんだよね。昔は完全にプロプライエタリでWindowsでしか動かなかったんだよ。今はオープンソースでクロスプラットフォームだけど、まだWindows専用って見られがちなんだよね。" userName="thayne" createdAt="2025-03-17T19:40:40" color="#785bff">}}

{{<matomeQuote body="system.windows.formsを使いたい場合は別だけどね。「あー、それは別のチームが管理してるから、Linux向けには作られてないんだよね！」「コアはオープンだよ！」って言われるのがオチ。Microsoftは.NETで書かれたアプリがクロスプラットフォームになるのを望んでないんだよ。" userName="redeeman" createdAt="2025-03-17T21:17:12" color="">}}

{{<matomeQuote body="チームが違うとかじゃなくて、System.Windows.Formsって名前の通りWindows Formsなんだよ。Windows APIの薄いラッパーみたいなものだし。クロスプラットフォームになることはないし、もう何年も開発されてないよ。クロスプラットフォームUIが欲しければ、WPFとAvaloniaを使うか、Microsoft製のMAUIがあるよ。" userName="ziml77" createdAt="2025-03-17T22:00:17" color="#ff33a1">}}

{{<matomeQuote body="system.windows.formsは簡単に他の環境にも実装できるはずだけど、Linuxで完全に動作するUIはあるの？" userName="redeeman" createdAt="2025-03-17T23:52:32" color="">}}

{{<matomeQuote body="apt-installできるようになるまでは、問題があるね。" userName="LtWorf" createdAt="2025-03-18T05:51:49" color="">}}

{{<matomeQuote body="sudo apt-get install dotnet-sdk-9.0でしょ？違う？" userName="hypeatei" createdAt="2025-03-18T11:28:41" color="">}}

{{<matomeQuote body="それって信頼できないサードパーティのリポジトリを追加した後だよね？なんでそこを省略するの？ってことは、それが変わるまで、.NETで書かれたものは本物のリポジトリに入らないってことじゃん。" userName="LtWorf" createdAt="2025-03-18T16:33:28" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="GNU/Linuxとか*BSDで動く有名な.NETアプリの例をいくつか教えてよ。" userName="einpoklum" createdAt="2025-03-17T23:44:01" color="">}}

{{<matomeQuote body=".NETってGoみたいにクロスプラットフォームなライブラリとか実行ファイルを作れるの？GoならMacで開発してWindowsとかLinux用の実行ファイルを作れるけど。" userName="victor106" createdAt="2025-03-17T14:06:53" color="#ff5733">}}

{{<matomeQuote body="うん、できるよ。<br>俺は.NETで仕事しててMacも使ってる（OSは嫌いだけど、ハードウェアとバッテリーの持ちは最高）。<br>前のスタートアップでは、AWS t4g Arm64とGCP x64 Linuxコンテナをデプロイした。.NET Frameworkと.NET #（.NET 9とか）の違いについての誤解が多いんだよね。C#/.NETは10年近くクロスプラットフォーム対応だよ？" userName="CharlieDigital" createdAt="2025-03-17T14:08:07" color="#ff5733">}}

{{<matomeQuote body="マジ？<br>https://learn.microsoft.com/en-us/dotnet/core/deploying/nati...<br>”Windows/Linuxで使うためのネイティブmacOS SDKとか、Linux/macOSで使うためのWindows SDKとか、Windows/macOSで使うためのLinux SDKを取得する標準的な方法がないから、Native AOTはクロスOSコンパイルをサポートしてない”<br>今どきAOTを使う必要はないし、他のデプロイオプションの方が簡単にクロスビルドできるけど、真のクロスビルドAOTはまだサポートされてないよ。" userName="pjc50" createdAt="2025-03-17T14:26:31" color="#ff33a1">}}

{{<matomeQuote body="＞Native AOT does not support cross-OS compilation<br><br>＞…runtime-dependent and self-contained are fine<br><br>これってゴールポストを動かしたって認めてるようにしか読めないけど。" userName="CharlieDigital" createdAt="2025-03-17T14:31:09" color="">}}

{{<matomeQuote body="MonoはLinuxで20年くらい動いてるんじゃない？C#はJavaみたいにどこでも動くよ。" userName="dismalaf" createdAt="2025-03-17T15:45:38" color="">}}

{{<matomeQuote body="Linuxで動くことと、Linuxでまともに動くことは違うと思う。.NETはそこが問題。" userName="LtWorf" createdAt="2025-03-18T05:57:42" color="">}}

{{<matomeQuote body="最近の何か根拠になるようなリンクを貼ってくれない？" userName="neonsunset" createdAt="2025-03-18T06:03:19" color="">}}

{{<matomeQuote body="https://learn.microsoft.com/en-us/dotnet/api/system.diagnost...<br>このゴミみたいなAPIを見てよ。なんでPOSIXでwinapiをミラーしてるんだよ。苦労してLinuxアプリを書いた後に、.NETがどのLinuxディストリビューションにも入ってないことに気づくんだよ！" userName="LtWorf" createdAt="2025-03-18T16:36:45" color="#ff5733">}}

{{<matomeQuote body="なんでドキュメントを斜め読みしてるのか分かんないけど、C#にはメソッドのオーバーロードがあるよ。Process APIは古いけど、色んな状況に対応できるようにオーバーロードが用意されてるんだ。<br>新しいプロセスを起動するなら`Process.Start(path, args)`で簡単にできるよ。もっと良いUXが欲しいならCliWrapパッケージがおすすめ。<br>＞.netはどのLinuxディストリビューションにも含まれてないって？<br>＞”そんなことないし！CLIとかGUIアプリなら、ネイティブバイナリか、.NET SDKで簡単にビルドできるレシピを配布するよ（RustcとCargoみたいなもん）。そもそも、そんな態度じゃ誰も相手にしないって。Linuxディストリビューションに含まれてないってのも嘘だし、大した問題じゃない。sudo {package manager} install dotnet9でしょ？”" userName="neonsunset" createdAt="2025-03-18T16:55:35" color="">}}

{{<matomeQuote body="なんで他の言語じゃなくてC#を使う必要があるの？" userName="shepherdjerred" createdAt="2025-03-17T16:10:29" color="">}}

{{<matomeQuote body="LINQはマジで最強。" userName="hu3" createdAt="2025-03-17T20:48:05" color="#ff5733">}}

{{<matomeQuote body="追記：`Expression`[0]型で式ツリーを表現できるのはマジでヤバい機能。TypeScriptと.NETのORMの仕組みを比較してるんだけど、`Expression`型があるおかげで、ORMがより関数型っぽく、流れるような体験になるんだよね。" userName="CharlieDigital" createdAt="2025-03-17T21:13:10" color="#ff5c5c">}}

{{<matomeQuote body="EntityFrameworkのLINQは完璧じゃないけど、他の言語の追随を許さないレベル。expressions型を言語に追加して、コレクションの相互運用を可能にする標準インターフェースを作って、ローカルとリモートのコレクション向けのユニバーサルクライアントを作って、最高のDXを実現したのはマジで天才。" userName="fireant" createdAt="2025-03-18T03:00:23" color="#785bff">}}

{{<matomeQuote body="TypeScriptのリライトには採用されなかったね…。" userName="arccy" createdAt="2025-03-17T14:59:39" color="">}}

{{<matomeQuote body="AOTコンパイルがまだ成熟してないって判断されたからじゃない？" userName="bjoli" createdAt="2025-03-17T15:04:35" color="">}}

{{<matomeQuote body="＞.NETとC#が”主要”だと思われてないのが悲しい...<br><br>そんなに落ち込まないで。Javaも入ってないし。Java使ってるエンタープライズプログラマーなんて世界中に何百万人もいるはずだよ。JavaのHttpClientクラス（JDK11+の一般的なHTTPクライアント）をチェックしてみたけど、HTTP/3に対応してないね！NettyIOの上に構築されたネットワーククライアントが多いけど、ここにも”incubator codec”があるね。マジで複雑なコードだけど。NettyIOを批判してるわけじゃなくて、プロトコルが複雑なんだよ。だから、アプリケーションフレームワークへの実装が遅れてるんだ。" userName="throwaway2037" createdAt="2025-03-18T04:50:20" color="#38d3d3">}}

{{<matomeQuote body="＞余談：.NETとC#が”主要”だと思われてないのが悲しい...<br>Microsoftですら新しいプロジェクトにC#を使ってないじゃん。TypeScriptコンパイラがGoで書き直されてるのを見てみろよ。C#はマイナー言語って言っても良いと思う。" userName="xpressvideoz" createdAt="2025-03-17T14:12:46" color="">}}

{{<matomeQuote body="＞C#はマイナー言語って言っても良いと思う<br><br>そんなことないよ！StackOverflowの調査[0]だと、C#（27.1%）はJava（30.3%）のすぐ後ろで、Go（13.5%）、Rust（12.6%）、Kotlin（9.4%）、Ruby（5.2%）、Scala（2.6%）よりも全然上だよ。HTML/CSS、Bash/Shell、SQLを除けば、C#は過去1年で実際に使われた言語の5位だよ。<br>求人情報をスクレイピングしても同じ結果が出るよ。もし最初から作ってたら、Andersのコメントも違ったと思うけど。既存のコードがあったから、リライト（C#）よりもリファクタリング（Go）の方が都合が良かったんだって。みんな見出しだけ見て、Andersのコメントをちゃんと読んでないんだよ。<br>C#はアプリのバックエンドとかゲームエンジン（GodotとUnity）には向いてるけど、サーバーレス関数には向いてない。どの言語にも得意不得意があるってこと。GoとかPythonはCLIツールには最適だよね。" userName="CharlieDigital" createdAt="2025-03-17T14:14:46" color="">}}

{{<matomeQuote body="HTTP 3 の大規模な導入で一番の問題は、パッチを当てて管理する必要がある脆弱なコードの範囲が広がるってことだと思うんだよね。OSが安全なソケット層と動的にリンクされたSSLライブラリを提供してくれれば、アプリ側でネットワーク層のセキュリティバグを気にしなくて済むからそっちの方が良いかな。<br>それに、ほとんどのクライアントアプリにとって、リクエストに数ミリ秒の遅延が増えるくらい大したことないと思う。必要なアプリもあるかもだけど、開発者としてもユーザーとしても、ネットワーク層の複雑さを増してリクエストごとに数ミリ秒節約するくらいなら、現状維持が良いかなって思う。" userName="ralferoo" createdAt="2025-03-17T14:21:23" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
