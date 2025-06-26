+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'Elixirで新しいBitTorrentトラッカー作ってみた！'
tags = ["Elixir", "BitTorrent", "P2P", "ネットワーク", "プログラミング"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Elixirで新しいBitTorrentトラッカー作ってみた！

引用元：[https://news.ycombinator.com/item?id=44323253](https://news.ycombinator.com/item?id=44323253)




{{<matomeQuote body="ElixirとGoの勉強でBitTorrentトラッカーを3ヶ月で作ってみたよ！DHTとかPEXが普通だけど、パブリックトラッカーにはまだ意味あると思う。みんなopentrackerとか使う中、これはクラッシュしないのが売りさ（aquaticとtorrustは別ね）。今後も開発続けるよ。swarm_printout.ex以外は手書きさ。dockerイメージもあるから試してみて！" userName="dahrkael" createdAt="2025/06/19 22:49:49" color="#ff33a1">}}




{{<matomeQuote body="OTPファーストな設計を見たかったな。残念ながら、コードはほぼ手続き的で、ETSとかApplicationをほぼ全ての操作で使ってるね。ElixirやBEAM言語でOTP設計を学びたいなら、James Edward GrayとBruce Tateの”Designing Elixir Systems with OTP”と、Lance Halvorsenの”Functional Web Development with Elixir, OTP, and Phoenix”って本を読んでみるといいよ。" userName="nesarkvechnep" createdAt="2025/06/20 09:33:56" color="#ff5c5c">}}




{{<matomeQuote body="最初にもっとOTPっぽく書いたんだけど、この機能の特定フローにはスケーリングが合わなかったんだよね。結局トラッカーって特殊なデータベースみたいなもんで、データを最速で処理するのが一番の目標だからさ。まあ、教えてもらった本は読んでみるよ。" userName="dahrkael" createdAt="2025/06/20 10:08:52" color="">}}




{{<matomeQuote body="もし俺みたいにこの文脈でOTPって何？って人がいたら、これだよ。OTPはOpen Telecom Platformの略だけど、もう通信だけって感じじゃないね（通信アプリケーションみたいな性質のソフトウェアってことだけど）。Erlangの偉大さの半分がConcurrencyとDistributionにあるとして、もう半分がError Handling能力にあるなら、OTPフレームワークはその”第三の半分”さ。詳しくはこっち見て！<br>https://learnyousomeerlang.com/what-is-otp" userName="salviati" createdAt="2025/06/20 12:08:19" color="#ff5c5c">}}




{{<matomeQuote body="BitTorrentトラッカーをGenServersで作るなんて全然意味ないよ。単一サーバー構成ならETSが100パーセント正しい選択だね。明らかに水平スケールはしないけど、垂直には月に届くくらい伸びるし、大抵の場合YAGNI（You Ain’t Gonna Need It）なんだってば。" userName="andyleclair" createdAt="2025/06/21 03:12:47" color="#785bff">}}




{{<matomeQuote body="ElixirとErlangのすごいところの多くは、すごく分かりやすいコードなのにパフォーマンスが良いってとこだよね。追加のGenServersとかgen_statemsがクールなケースもあるけど、ElixirとPhoenixを使う多くの場面で変に凝ったアーキテクチャを選ぶ必要はないんだ。だってランタイムがもう十分クールにしてくれてるからね。" userName="lawik" createdAt="2025/06/21 14:46:45" color="">}}




{{<matomeQuote body="ちょっと知りたいんだけど、「OTPファースト」な設計ってどんなの？ETSはOTPに組み込まれてるのに、どうしてETSを使うのが「OTPファーストじゃない」の？ETS使うのって何が悪いの？コード見たけど、手続き的ってほど全然近くないと思ったな。" userName="Zarathu" createdAt="2025/06/20 17:40:04" color="#ff33a1">}}




{{<matomeQuote body="面接のためにElixirを1週間だけ勉強したんだけど、落ちたんだ。でも、あの1週間でコードの書き方がマジで変わったよ。state isolationとか、shared dataなしとか、失敗してきれいに再起動とかね。今回のコード見て、派手なGenServersじゃなくて、速いプロセスとか生のETS、シンプルな流れだけどちゃんと障害考慮してる。同じ考え方だなって思ったよ。きれいだね。" userName="b0a04gl" createdAt="2025/06/20 17:10:52" color="">}}




{{<matomeQuote body="よくやったね。いくつか簡単なアドバイスなんだけど、IO.putsじゃなくてLoggerに切り替えること。あとOTelを追加することも検討してみて。" userName="voicedYoda" createdAt="2025/06/20 02:57:34" color="#38d3d3">}}




{{<matomeQuote body="Logger[0]とTelemetry[1]で十分だと思うな。OpenTelemetryとかもTelemetryのフックで後から追加できるから大丈夫だよ。<br>[0] https://hexdocs.pm/logger/1.18.4/Logger.html<br>[1] https://hexdocs.pm/telemetry/readme.html" userName="solid_fuel" createdAt="2025/06/20 04:01:03" color="#45d325">}}




{{<matomeQuote body="Loggerはテーブルのきれいな表示以外で全部使ってるよ。<br>TelemetryはPrometheusとかHTML形式でもオプションで使えるみたいね: https://github.com/Dahrkael/ExTracker/tree/master/lib/ex_tra..." userName="dahrkael" createdAt="2025/06/20 08:42:46" color="#45d325">}}




{{<matomeQuote body="一番好きなOpenTelemetryのシンクって何？" userName="ai-christianson" createdAt="2025/06/20 03:06:39" color="">}}




{{<matomeQuote body="Elixir超好き！今これでイケてる通知エンジン作ってるとこ。マジ最高。" userName="s-mon" createdAt="2025/06/20 02:10:49" color="">}}




{{<matomeQuote body="それってOSS？それともプライベートなの？Elixirにはマジでもっと良い通知エンジンが必要とされてるよ。" userName="mikehostetler" createdAt="2025/06/20 02:30:08" color="">}}




{{<matomeQuote body="通知エンジンが必要って具体的にどういうこと？PhoenixのPubSub使えばすごく簡単だし実績もあるよ。俺は何回か大規模で実装したし。どんな問題にぶつかってて、今のツールじゃダメだと感じるの？" userName="rhgraysonii" createdAt="2025/06/20 05:27:27" color="#45d325">}}




{{<matomeQuote body="自分で作らずに買うなら、Knock.appってのを見てみて。これもElixirでできてるよ: https://knock.app" userName="rhgraysonii" createdAt="2025/06/20 05:28:53" color="#38d3d3">}}




{{<matomeQuote body="リリースおめでとう！opentrackerと比べてどう？パフォーマンスとか詳細をぜひ教えてほしいな。" userName="abrookewood" createdAt="2025/06/20 01:26:52" color="#ff5c5c">}}




{{<matomeQuote body="小さいトラッカーならopentrackerの方が多分速くてメモリも少し少ないかもね。<br>extrakerはCPUのコア数が2桁とかになった時に真価を発揮するはずだよ。<br>まだちゃんとしたベンチマークはできてないんだけどね。" userName="dahrkael" createdAt="2025/06/20 08:40:35" color="#45d325">}}




{{<matomeQuote body="いいね！いつかチェックしてみるよ。<br>俺も何年か前にElixirで簡単なトラッカー書いたことあるんだよね。コードはここにあるよ: https://github.com/aalin/mr_torrent" userName="quechimba" createdAt="2025/06/20 03:03:06" color="#ff5c5c">}}




{{<matomeQuote body="面白いね！なんで特にprivate trackerにしようと思ったの？" userName="dahrkael" createdAt="2025/06/20 08:44:36" color="">}}




{{<matomeQuote body="面白い！俺もBTをもっと知るためにTypescriptで似たようなことして、Rustを学ぶためにRustでやり直したよ（https://github.com/ckcr4lyf/kiryuu）。DBにはredisを使うことにしたんだ。君のは全部memory上のDBみたいだね？何か面白いdesignの決定とか、それで直面したproblemsとかあった？（俺のredis solutionは、その後のannounceでpeersをrandomiseしないみたいで、あんまり良くないんだ）" userName="arch-choot" createdAt="2025/06/20 07:27:32" color="#ff5c5c">}}




{{<matomeQuote body="俺の場合は、in-memoryなETSを使うのが最高のdecisionだったよ。各processでconcurrentにpeerのデータをread＆writeできるから、contentionとlatencyがminimalで済むんだ。唯一sequentialなpartは新しいswarmがinitially createdされる時だけだけど、それはあんまりhappeningしないからfine。<br>there’s sadly no native support for taking random rows directly from the tables, so for now i grab the whole swarm and then take a random subset（https://github.com/Dahrkael/ExTracker/blob/master/lib/ex_tra...）" userName="dahrkael" createdAt="2025/06/20 08:17:48" color="#ff33a1">}}




{{<matomeQuote body="ETS tableがいくつのslotsを持ってるか見るwayがあったかrememberしてないけど、imperfectなdistributionでもokなら、maybe randomにslotを選んで、ets:slot＼2を使ってそのslotの全てのitemsを取得し、then selectするのはどうかな。maybe you can get the slot count from eta:table_info(Table, stats), although that’s not intended for production use, so the format may change without notice." userName="toast0" createdAt="2025/06/20 18:36:10" color="#38d3d3">}}




{{<matomeQuote body="・https://en.m.wikipedia.org/wiki/Mainline_DHT<br>・https://en.m.wikipedia.org/wiki/Peer_exchange" userName="yesco" createdAt="2025/06/20 13:17:10" color="">}}




{{<matomeQuote body="DHT（Distributed Hash Table）とPEX（Peer Exchange）は、torrent clientsがcentralised trackersなしでpeersを見つけられるようにするものだよ。だから、もうcentralなplace ＼ public trackerは必要ないんだ。" userName="atmosx" createdAt="2025/06/20 14:47:35" color="">}}




{{<matomeQuote body="You still need a central server though..." userName="Thaxll" createdAt="2025/06/20 14:52:02" color="">}}




{{<matomeQuote body="そうだよ、individualなtorrentsをtrackするだけじゃなくなるんだ。初期のpeer discovery stage（bootstrapping）の間だけroleを果たすんだよ。peersは自分でtorrent swarmsを見つけるから、bootstrap serversはそこからexcludedされるんだ。" userName="perching_aix" createdAt="2025/06/20 15:54:56" color="">}}




{{<matomeQuote body="If you are connected to the DHT network, you don’t. Unless you mean for DNS and such." userName="LtdJorge" createdAt="2025/06/20 15:56:44" color="">}}




{{<matomeQuote body="いや、ああいうネットワークに繋がるには、まず特定の集権的なノードに接続する必要があるってことだよ。" userName="perching_aix" createdAt="2025/06/20 15:58:37" color="">}}




{{<matomeQuote body="ブートストラップノードのことだね。でもあれらは、歴史的にある程度そうだったとしても、絶対に集権化されてる必要はないんだ。何百万ってあってもいいんだし。" userName="LtdJorge" createdAt="2025/06/20 16:12:39" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それでも、その一部のリストは必要でしょ？そして「同じネットワーク」に繋いでくれるって、そもそもその意味が通じるかどうか分からないけど、信頼するしかないんじゃない？" userName="perching_aix" createdAt="2025/06/21 03:49:42" color="">}}




{{<matomeQuote body="もしブートストラップノードが何百万もあったら、どうやって見つけるの？" userName="immibis" createdAt="2025/06/20 16:18:52" color="">}}




{{<matomeQuote body="もしよく知られたポートで待機してて、何百万ってあるなら、「ランダムな」IPv4アドレスに数千個プローブを送れば、たぶん一つは見つかるよ。<br>見つけたらブートストラップノードのリストを手に入れて保持すれば、全てのルーティング可能なIPv4アドレスから選ぶ代わりに、ブートストラップアドレスの中からランダムに選べるようになるね。" userName="toast0" createdAt="2025/06/20 17:52:14" color="#38d3d3">}}




{{<matomeQuote body="IPv6についてはどう考えてる？" userName="immibis" createdAt="2025/06/20 20:28:22" color="">}}




{{<matomeQuote body="IPv6のプロービングは結構難しいよ。/48のうち/64だけ使うとか::0や::1を仮定しても、現実的じゃないほどプローブが必要になるだろうね。NAT64経由でv4空間をプローブしてv6アドレスを交換するか、有効なv6アドレスリストをクライアントに入れる方法もあるけど、それはまた集権的になっちゃう。どうやって配布するの？たぶんスーパーノードを動かしてリストをクライアントソースにダンプする感じかな。最初はリストにそのノードだけとか。" userName="toast0" createdAt="2025/06/20 20:59:45" color="#45d325">}}




{{<matomeQuote body="ブートストラップノードは、トラッカーみたいにtorrentに埋め込めるよ。トラッカーは全部の状態を持つけど、ブートストラップノードはDHTネットワークのノードに繋ぐだけ。その後は完全に分散化されるんだ。<br>SRV DNSレコードに埋め込むとか、DNSサーバー取得と同じ問題。ISPからDHCP経由でノードアドレスをもらえるかもね（笑）。" userName="LtdJorge" createdAt="2025/06/20 20:30:56" color="#ff5733">}}




{{<matomeQuote body="うん、Elixirは選択肢の一つだよ。C++より絶対楽しめる自信あるな。" userName="dahrkael" createdAt="2025/06/20 08:51:39" color="">}}




{{<matomeQuote body="<br>- どうやって始めたの？<br>- 他のプロジェクト参考にした？<br>- どれくらい時間かかった？<br>- qbittorrentとかと比べて、どれくらい機能すると思う？" userName="vivzkestrel" createdAt="2025/06/20 03:50:44" color="">}}




{{<matomeQuote body="別のプロジェクトでトラッカーが必要だったのがきっかけだけど、作るのが楽しくなっちゃってさ。<br>他のトラッカーのコードもちらっと見たけど、複雑すぎたりシンプルすぎてあんま役に立たなかったんだよね。<br>今のところ3ヶ月、寝る時間を削って頑張ってるよ。<br>qbittorrentみたいなクライアントじゃないけど、将来seedbox向けのクライアントも作りたいなって考えてる。" userName="dahrkael" createdAt="2025/06/20 09:05:12" color="#ff5733">}}




{{<matomeQuote body="これはトラッカーであって、トレントクライアントじゃないよ。" userName="lionkor" createdAt="2025/06/20 05:44:12" color="">}}




{{<matomeQuote body="トラッカーってどういう意味？" userName="NooneAtAll3" createdAt="2025/06/20 06:56:07" color="">}}




{{<matomeQuote body="トレントトラッカーってのは、ファイル持ってる人は知ってるけど自分では何も保存しない、世界一付き合い悪いマッチングサービスみたいなもんかな。パーティの場所は知ってるけど絶対自分ではやらない友達みたいな。<br>あなたのBitTorrent clientが「Linux ISO持ってる人いるー？」って聞くと、トラッカーはスタートアップが資金調達失敗して方向転換するより早くIPアドレスのリストをくれる。<br>その後、clientはその人たち（seedersとかleechers）に繋がってデータ交換始めるんだけど、トラッカーは何食わぬ顔。ファイル共有版Tinderみたいな感じだけど、みんな匿名で、たぶん深夜3時に怪しいものダウンロードしてる。" userName="devoutsalsa" createdAt="2025/06/20 07:01:30" color="#785bff">}}




{{<matomeQuote body="全然匿名じゃないよ。トラッカーとのやり取りはHTTPSでもできるけど、peer同士の通信は全部暗号化されてないから。" userName="vjerancrnjak" createdAt="2025/06/20 07:36:46" color="#ff5733">}}




{{<matomeQuote body="オプションの暗号化拡張もあるよ。BitTorrent社（BEP発行してるところ）が暗号化に思想的に反対してるからBEPはないけどね。" userName="immibis" createdAt="2025/06/20 10:24:32" color="#38d3d3">}}




{{<matomeQuote body="試してみたけど、HTTPSが動かなかったな。<br>あと、コンソールにこれが出まくる：<br>04:43:20.160 [warning] invalid ’event’ parameter: size: 6 value: ”paused”<br>でも動いてるみたい。HTTPでの統計も見れたらよかったけど、UDPでもまあいいかな（無効にしてるけど）。" userName="KomoD" createdAt="2025/06/20 04:44:14" color="#785bff">}}




{{<matomeQuote body="その”paused”イベントってのはBEP 21の一部だよ。<br>クライアントが、まだ全部終わってないけどこれ以上ダウンロードしないよ、ってトラッカーに知らせるやつ。例えば、torrentの一部のファイルだけ欲しい時とかね。<br>プロジェクトのREADME見たら、BEP 21はまだ実装されてないみたいだね。" userName="bill876" createdAt="2025/06/20 08:35:42" color="#38d3d3">}}




{{<matomeQuote body="README見たらBEP 21はまだ実装されてないって書いてあるね。あー、見落としてたわ。<br>" userName="KomoD" createdAt="2025/06/20 12:45:16" color="">}}




{{<matomeQuote body="HTTPのTelemetryはToDoリストだよ。webserverに3rd party library使ってるから、ちゃんとやる方法を考えなきゃね。<br>HTTPSは証明書が必要だけど、CaddyかNginxを前に置くのがおすすめかな。certbot連携も考えてるけど、みんなUDP使うから優先度は高くないんだ。<br>" userName="dahrkael" createdAt="2025/06/20 08:56:22" color="#45d325">}}




{{<matomeQuote body="これマジでいいよ！コードざっと見たけど、すごく感動した。Elixir経験あるうちのsenior engineersが出すコードみたいだね。すごい仕事だよ！" userName="andyleclair" createdAt="2025/06/21 03:03:13" color="#ff5733">}}




{{<matomeQuote body="へぇ、いいね！Beam VMってBitTorrent trackerにぴったりっぽいね。" userName="IlikeKitties" createdAt="2025/06/20 00:10:35" color="">}}




{{<matomeQuote body="これ、ETSがマジでキラーフィーチャーだった気がするな。protected tablesから並行で読み書きできるから、全体がめっちゃ並列になってる！" userName="dahrkael" createdAt="2025/06/20 08:50:27" color="#45d325">}}




{{<matomeQuote body="めっちゃクール！これってprivate trackerとして使うのに向いてるの？" userName="bavell" createdAt="2025/06/20 01:36:57" color="">}}




{{<matomeQuote body="そのままじゃ無理だけど、やればできるよ。必要な部品は全部揃ってるからね（hash whitelist support、udp path parsing、peer rejectionとか）。" userName="dahrkael" createdAt="2025/06/20 08:48:22" color="#ff33a1">}}




{{<matomeQuote body="すごい仕事だね！" userName="toomuchtodo" createdAt="2025/06/20 02:07:20" color="">}}




{{<matomeQuote body="マジでクールなプロジェクト！よくやったね。" userName="mikehostetler" createdAt="2025/06/20 02:28:10" color="">}}




{{<matomeQuote body="これは本格的だね、プロジェクトおめでとう！Elixirに完璧にフィットするのがわかるよ…。" userName="desireco42" createdAt="2025/06/20 00:49:57" color="">}}




{{<matomeQuote body="C++開発者ってGoとかElixir好きだよね〜（俺もだけど）。パフォーマンス重視な人がマルチスレッド性能に惹かれるのかな。クールなプロジェクトじゃん！" userName="guywithahat" createdAt="2025/06/20 03:02:51" color="#38d3d3">}}




{{<matomeQuote body="C++はわかんないけど、Erlang/Elixirはパターンマッチングでプロトコル解析マジ強い！コードもキレイになるし、let it crashで変なケース無視できるんだ（クラッシュしても一部だけ）。10年使っててダウンタイムゼロだよ！これで「Elixirでクラッシュしないサービスどう？」って顧客に勧めてるｗ 構造体とかでパターンマッチできるシステム言語欲しいな〜。" userName="uncircle" createdAt="2025/06/20 06:25:47" color="#ff5c5c">}}




{{<matomeQuote body="毎日メモリ破壊とかデッドロックとかと戦ってる身からすると、Elixirは「え、なんでこんなに簡単なの？勝手に動くじゃん？」って感じ。ネットワークプログラマだから、バイナリパターンマッチングもマジ最高！" userName="dahrkael" createdAt="2025/06/20 08:22:51" color="#38d3d3">}}




{{<matomeQuote body="Inko[1]見てみたら？パターンマッチング良い感じだよ（関数とかではできないかもだけど）。<br>[1] https://docs.inko-lang.org/manual/latest/getting-started/pat..." userName="sea-gold" createdAt="2025/06/20 20:04:26" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「let it crashでコーナーケース無視できる」ってのは危ない考え方だよ。あとElixirって強く型付けされてないじゃん。" userName="Thaxll" createdAt="2025/06/20 12:11:25" color="">}}




{{<matomeQuote body="いや、違うよ。プロセスは監視できるし、クラッシュしても良い状態で再起動するだけなんだ。エラー全部無視するんじゃなくて、見落としてもシステムは落ちないって確信できるの。Elixirはほとんど強く型付けされてるって言われるよ。静的な型付けって言いたいのかな？" userName="ricketycricket" createdAt="2025/06/20 13:06:01" color="">}}




{{<matomeQuote body="まあ、前よりは確信できるかもね。でもさ、昔Ericssonの交換機がいつものメッセージで落ちてネットワーク全体がダメになったことあったじゃん？Erlangでもああいう可能性はあると思うよ。" userName="immibis" createdAt="2025/06/20 16:21:24" color="">}}




{{<matomeQuote body="トラッカーは古いものじゃないよ。プライベートトラッカーサイトで今も使われてるんだ。パブリックなTorrentはDHTとかPEXで探すことが多いけどね。" userName="eatbitseveryday" createdAt="2025/06/20 13:08:24" color="#45d325">}}




{{<matomeQuote body="でもさ、プライベートトラッカーも最近はそんなに流行ってないよね。俺は結構使うけど、ニッチなのはわかってるよ。" userName="dewey" createdAt="2025/06/20 19:19:24" color="">}}




{{<matomeQuote body="これ見てみて→ https://github.com/sergiotapia/magnetissimo 7年くらい前に人気だったやつだよ。" userName="arthurcolle" createdAt="2025/06/20 03:15:25" color="#ff33a1">}}




{{<matomeQuote body="これに似てるよ：<br>https://news.ycombinator.com/item?id=44265851 ”Show HN: I wrote a BitTorrent Client from scratch” [2025-06-13]、<br>https://github.com/piyushgupta53/go-torrent-client" userName="nayuki" createdAt="2025/06/20 05:02:59" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
