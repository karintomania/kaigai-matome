+++
date = '2025-05-04T00:00:00'
months = '2025/05'
draft = false
title = 'Goエンジニア必見！グレースフルシャットダウンの現場パターン'
tags = ["Go", "グレースフルシャットダウン", "Kubernetes", "運用", "サーバー開発"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> Goエンジニア必見！グレースフルシャットダウンの現場パターン

引用元：[https://news.ycombinator.com/item?id=43889610](https://news.ycombinator.com/item?id=43889610)




{{<matomeQuote body="構成によっては `Kubernetes` がロードバランサーのターゲット `IP` を更新するのにびっくりするくらい時間がかかることに悩まされてきたよ。俺の場合、グレースフルシャットダウンの9割は、Podが終了する前にちゃんとトラフィックが捌けてるか確認することだった。<br>グローバルな `preStop` フックで15秒スリープ入れたら、 `HTTP 503` の発生率が劇的に減ったんだ。これのおかげで、ロードバランサーの登録解除が始まってから、実際にアプリケーションに `SIGTERM` が送られるまでの間に時間ができて、アプリケーション側の処理がだいぶ簡単になったよ。" userName="zdc1" createdAt="2025/05/05 04:38:10" color="#ff33a1">}}




{{<matomeQuote body="そうそう。 `Prestop sleep` は高品質なローリングデプロイのための魔法の `SLO` ソリューションだよ。<br>個人的には、 `Kubernetes` が改善できる点は2つあると思うんだ。<br>1. Podはシャットダウンシーケンスを開始する _前に_ Endpointsから削除されるべき。termination graceみたいに、termination delayのオプションがあるべきだね。<br>2. PDBはevictionの _前に_ recreationを許可すべき。" userName="rdsubhas" createdAt="2025/05/05 17:59:03" color="#ff5c5c">}}




{{<matomeQuote body="考慮すべきもう一つの要素は、もしあなたが典型的な `Prometheus` の `/metrics` エンドポイントを持っていて、それがN秒ごとにスクレイピングされるなら、最後のスクレイピングから実際のプロセス終了までの間に、記録されたメトリクスが伝播されない期間があるってこと。これはシャットダウンシーケンス中にエラーが発生してるかどうかについて、誤った印象を与える可能性があるよ。<br>注意しないと、サービスがシャットダウンしている最後の数秒間のログを失う可能性もある。例えば、 `Promtail` や `Vector` のようなサイドカープロセスが見ているログファイルに書き込んでいて、起動時にサービスがその同じパスを切り詰めて書き込みを開始する場合、シャットダウンからのログを失う可能性のあるレースコンディションがあるんだ。" userName="evil-olive" createdAt="2025/05/04 23:14:11" color="#ff33a1">}}




{{<matomeQuote body="俺だけかな、オブザーバビリティスタックってなんかバカバカしくない？ログ、メトリクス、トレースがそれぞれ独自のデータベース、サイドカー、可視化スタックを持ってさ。誰かが気が向いたときに書いた言語固有の連携ライブラリ。とてつもないクラウド料金。<br>で、そんな苦労をした後でも、データのほとんどは完全に無視されて、ビジネス上の洞察も、SSHで箱に入ってログファイルをgrepしてエラー出力を探すって「トレーラーパーク版」と比べて、ほとんど変わらない。<br>なんていうか、このエコシステムにものすごく労力をかけてるけど、稼働時間、パフォーマンス、エルゴノミクスに関して、それに見合うだけの significant な増加で報われてるとは思えないんだ。" userName="tmpz22" createdAt="2025/05/05 00:05:30" color="">}}




{{<matomeQuote body="全部のオブザーバビリティツールが揃ってる場所から、「SSHで箱に入ってログgrep」の段階だった場所に移った経験から言うと、前の会社 `A` が死ぬほど恋しかったと断言できるね。どの箱にSSHするか、どのログファイルをgrepするか、どんな魔法の言葉で検索するか、なんて、そのマシンをセットアップしてバグを書いた開発者じゃないと、ほとんど不可能だったんだ。" userName="nkraft11" createdAt="2025/05/05 00:17:20" color="#ff5c5c">}}




{{<matomeQuote body="君には完全に同意だけど、同時に、「tech」の多くの側面と同じように、その特定のセグメントが特定の組織にとって独占されて利益生成装置に変えられてしまったと思うんだ。 `DevOps`、 `Agile/Scrum`、 `Observability`、 `Kubernetes` なんかが全部その例だね。<br>これが良い部分や役立つ部分を、マーケティングのでたらめで薄めているんだ。<br> `Grafana` が数ヶ月ごとに新しいタイムシリーズデータベースやエンジンを「発明」しているらしいのは、情報通でいようとするのが本当に苦痛だよ。<br>だから、また `rrdtool/smokeping` を使い始めたくらいさ。" userName="MortyWaves" createdAt="2025/05/05 00:48:04" color="">}}




{{<matomeQuote body=" `openobserve.ai` を見てみたらどうかな？自分でホストできるし、ログ/メトリクス/トレースを取り込む単一のバイナリだよ。俺のサイドプロジェクトでは役立ってる。" userName="bbkane" createdAt="2025/05/05 05:05:25" color="#785bff">}}




{{<matomeQuote body="「SSHで箱に入ってログファイルgrep」で済むくらいシンプルなシステムで作業してるなら、どうぞそうしてください。<br>でも多くのシステムはそれより複雑だ。オブザーバビリティのエコシステムが存在するのは理由があって、それが解決している本当の問題があるんだ。<br>例えば、あなたのアプリが単一の箱で動くのをやめて、成長したとする。今度はN個の異なるホストにSSHして、全部からログファイルをgrepする必要がある。あるいは、SCPをループで実行するシェルスクリプトで独自のログ転送バージョンを発明する。<br>さらに一歩進んで、それらの箱をオートスケーリンググループに入れて、需要に基づいて自動的にスケールアップダウンするようにしたとしよう。今度は本当に何らかの自動ログ転送が必要だ、さもないと `ASG` のホストが終了するたびに、それが稼働中に処理したトラフィックのログを捨ててしまうことになる。<br>あるいは、パフォーマンスの低下に気づいて、特定の `API` エンドポイントが遅いせいだと特定したとしよう。そのエンドポイントの応答時間を時間経過でグラフ化できると役立つことが多い。徐々に遅くなっていたのか、それとも応答時間が突然増加したのか？もし突然の増加なら、同じくらいの時間に何が起こった？コードデプロイかもしれないし、データベースの設定変更かもしれない、などなど。<br>たぶん、あなたが運用しているサービスはスタンドアロンではなく、会社の他のチームが書いたサービスと連携している。システム全体で何かうまくいかないとき、どうやって問題の根本原因を突き止める？すべての異なるシステムを通して、リクエストや操作のライフサイクルをどうやってトレースする？<br>何かうまくいかないとき、箱にSSHしてログファイルを見る．．．でも、そもそも何かうまくいかないとどうやって知るの？サポートのメールに届くユーザーからの苦情だけに頼る？それとも、「うーん、そんなことは決して起こるはずがない」ということが起こっている場合に、積極的に通知してくれる監視ルールがある？" userName="evil-olive" createdAt="2025/05/05 01:39:33" color="#ff5c5c">}}




{{<matomeQuote body="全体として、集中ログとメトリクスは超価値があると思うよ。でも今のスタックは全部的を外してる。<br>例えば、どんなログメッセージも何百個ものフィールドを持ってて、そのほとんどは決して変わらない。なんでこの情報をサービス起動時に一度だけプッシュして、すべてのログメッセージと一緒に送らないんだ？<br>OK、明らかに今のシステムが高額なのは、これらのサービスを提供している会社の利益のためだよね。" userName="HdS84" createdAt="2025/05/05 14:37:39" color="">}}




{{<matomeQuote body="例えば、どんなログメッセージにも何百ものフィールドがあるけど、ほとんど変わらないじゃん。サービス起動時に一回だけ送って、ログメッセージごとには送らなくていいんじゃない？<br>ログフィールドが各ログエントリで変わらないなら、VictoriaLogsみたいなログに良いデータベースはそういうフィールドを1000倍以上圧縮してくれるから、ストレージ容量は無視できるし、クエリ性能にも全く影響しないんだ。<br>各ログエントリにたくさんのフィールドを持たせることで、後で分析するのが楽になるんだ。相互に関連する大量のログを飛び回る代わりに、単一のログエントリから必要な情報を全て得られるからね。これにより、数多くのフィールドのどんなサブセットでもフィルタリングやグループ化して、スケールでのログ分析も改善されるんだ。こういうたくさんのフィールドを持つログは”wide events”って呼ばれてるよ。このタイプのログに関するこの素晴らしい記事を見てみて - https://jeremymorrell.dev/blog/a-practitioners-guide-to-wide..." userName="valyala" createdAt="2025/05/05 22:43:56" color="#785bff">}}




{{<matomeQuote body="プログラムって人のためにあるんだよ。だからJSONとかデバッガとかPythonとかがあるわけ。プログラミング自体はプログラミングの1割くらいしか占めてないんだぜ。" userName="01HNNWZ0MV43FF" createdAt="2025/05/05 01:09:28" color="">}}




{{<matomeQuote body="君だけじゃないよ - OSSツールスタックは広範囲に及んで手作業の長いプロセスが必要だったりする一方で、ほとんどのエンタープライズベンダーのコストはフルマップされた可観測性には高すぎるんだ。<br>Corootは俺が取り組んでるオープンソースプロジェクトで、これを解決しようとしてるんだ。eBPFが自動的にデータを集めて中央のサービスマップにしてくれて、ツールがRCA（マッピングされたインシデント時間枠とか）の洞察を提供してくれるから、修正を早く実装して稼働時間を改善できるんだ。<br>GitHubはこちらで、もし役に立つと思ったらフィードバック大歓迎だよ: https://github.com/coroot/coroot" userName="openWrangler" createdAt="2025/05/06 19:12:14" color="#38d3d3">}}




{{<matomeQuote body="参考までに、俺はまさにこれを（もっと色々）プラットフォームライブラリでやってるんだ。Goで高負荷アプリを8年以上やってきて遭遇した問題を網羅してるよ。この間、プラットフォームの開発・改善は、どの会社でも趣味だったんだ :)<br>これは”ログを同期する”とか”livenessハンドラにイングレスが追いつくのを待つ”みたいなことを（将来的に）網羅する予定だよ。<br>https://github.com/utrack/caisson-go/blob/main/caiapp/caiapp...<br>https://github.com/utrack/caisson-go/tree/main/closer<br>ドキュメントは少ないし、まだカバーされてないものもあるけど、休暇から戻ったら最初のリリースをする予定なんだ。<br>最終的には、これはメタプラットフォーム（慎重に作られたビルディングブロック）と、典型的なk8s/otel/grpc+httpインフラを網羅するリファレンスプラットフォームライブラリになるだろうね。" userName="utrack" createdAt="2025/05/05 00:46:56" color="#38d3d3">}}




{{<matomeQuote body="これ見てみるよ、共有ありがとう！俺たちのgolangインフラ/プラットフォーム担当はみんな自分たちで似たようなライブラリ書かないといけなかったと思うんだ。君のを共有してくれてありがとう！" userName="peterldowns" createdAt="2025/05/05 14:27:25" color="">}}




{{<matomeQuote body="なんでPrometheusとか関連ツールがデータの”pull”モデルを使うのか、全然わからなかったんだよな。ほとんどのものは”push”モデルなのにさ。" userName="RainyDayTmrw" createdAt="2025/05/05 01:39:53" color="">}}




{{<matomeQuote body="それは元々のGoogleのborgmon設計の名残なんだよ。ちなみに、Googleの”v2”システムではpush-onlyに切り替えようとしたけどうまくいかなくて、ハイブリッドなpull-pushストリーミングAPIに落ち着いたらしいね。" userName="dilyevsky" createdAt="2025/05/05 02:57:43" color="#ff5733">}}




{{<matomeQuote body="”v2”ってMonarchに関する彼らの論文が元になってるの？" userName="PrayagS" createdAt="2025/05/05 14:30:21" color="">}}




{{<matomeQuote body="ああ、なら君が言及した新しいハイブリッドシステムに関する資料って何かある？教えてくれると助かる！" userName="PrayagS" createdAt="2025/05/06 04:50:55" color="">}}




{{<matomeQuote body="Prometheusはデフォルト”pull”だけどメリットあるよ．”push”だとメトリクススレッド落ちたら検知できない．Prometheusはサービスディスカバリ連携で勝手にインスタンス見つけてscrapeするから、本体生きてるか（”up”）は検知できるのが良い．クライアント側実装も楽．Erlangの”supervision trees”みたいに親がpullで子を監視する感じ．詳細はリンク見てね．" userName="evil-olive" createdAt="2025/05/05 02:33:50" color="#45d325">}}




{{<matomeQuote body="最高のアンサーだね．昔Cacti，Nagios，Graphite，KairosDB使ってた頃、pushベースで大変だったのはソースが制御不能なデータ量．スケーリングがheadacheだった．”Scraping”は多数の”scraper”でソースを自動発見して、ソースごとのscrape量制限でシステムを過負荷から守れる．うるさいソースのメトリクス落ちても「君のせい」って言える．昔はfire hose状態だったからね．" userName="raffraffraff" createdAt="2025/05/05 07:50:22" color="#45d325">}}




{{<matomeQuote body="書いてくれてありがとう；すごく洞察に満ちてたよ！" userName="bbkane" createdAt="2025/05/05 05:03:17" color="">}}




{{<matomeQuote body="＞典型的なPrometheusの”／metrics”エンドポイントだと、”最後の”scrapeとプロセス終了の間にメトリクスが伝播しない期間があるって考慮点．シャットダウン中のエラーについて誤解を招くかも．これに良い解決策ある？scrape間隔１５秒だと３０秒はない．この挙動がStatsd使ってる理由の一つ．pushだとこの問題ないからね．" userName="PrayagS" createdAt="2025/05/05 14:36:33" color="#38d3d3">}}




{{<matomeQuote body="注意点：Goで”log．Fatal”は”defer”を実行しない！os．Exit呼ぶから即閉じちゃうんだ．”panic”なら実行されるよ．例：＜br＞ package main； import （ ”fmt” ”log” ）； func main（） ｛ defer fmt．Println（”in defer”） ； log．Fatal（”fatal”） ｝ ＜br＞←”fatal”だけ．＜br＞ package main； import （ ”fmt” ”log” ）； func main（） ｛ defer fmt．Println（”in defer”） ； panic（”fatal”） ｝ ＜br＞←両方出る．" userName="karel-3d" createdAt="2025/05/05 11:43:03" color="#ff33a1">}}




{{<matomeQuote body="分散システムが、うまく動くためにクライアントがきれいに終了することに依存してると、そのシステムはいずれひどく壊れるよ．" userName="wbl" createdAt="2025/05/04 22:10:53" color="">}}




{{<matomeQuote body="僕はそれをすごく信じてるから、設計でグレースフルシャットダウンは考えない．コンポーネントは安全にハードクラッシュできるべきだし、重要部分が生きてれば全体システムに影響しないはず．システムがハードクラッシュを扱える唯一の方法は、それが常に起きる普通のことである場合だよ．Chaos Monkey万歳！" userName="Rhapso" createdAt="2025/05/05 01:43:16" color="#ff33a1">}}




{{<matomeQuote body="クライアントやワークフローにとって”nice”であるためのグレースフルシャットダウンと、クライアントがそれが動くことに”rely”（依存）することの間には大きなギャップがあるよ．" userName="ikiris" createdAt="2025/05/04 22:40:48" color="">}}




{{<matomeQuote body="ずっと昔、物理環境でね − それにはSTONITHを使ったよ！https：／／smcleod．net／2015／07／delayed−serial−stonith／" userName="smcleod" createdAt="2025/05/04 22:19:28" color="">}}




{{<matomeQuote body="回復可能でも、典型的な終了が壊滅的に見えないようにしたい妥当な理由はあるよ．アプリがSIGINTで落ちたのとKillで落ちたのは全然違うんだ．Blue-Green移行とかは例えば、グレースフルな終了が必要なんだよね．" userName="XorNot" createdAt="2025/05/04 22:31:21" color="#ff5733">}}




{{<matomeQuote body="＞ Blue-Green migrations とかだとグレースフルな終了動作が必要になることもあるけど、常に必要ってわけじゃないんだ。例えば、ステートレスなバックエンドサービスの新しいバージョンをデプロイする時、load balancer が今のバージョンと新しいバージョン両方にトラフィックを流してる場合、load balancer が切り替えの責任を持てる。<br>そうすれば、処理中のリクエストは今のバージョンのバックエンドで処理させて、新しいリクエストだけ新しいバックエンドに転送できる。<br>で、LB がもうリクエスト処理してないって言ったら、古いバックエンドは ungraceful に terminate しても大丈夫。" userName="shoo" createdAt="2025/05/04 22:45:01" color="">}}




{{<matomeQuote body="ああ、そうだね。でも、たとえソフトウェアがそういうシャットダウンに耐えられる設計だとしても、わざわざプラグを抜くみたいに止めなくてもいいと思うんだ。<br>でも、ちょっと思ったけど、やっぱりそうするべきかも。それが想定通りの動きをするかを確かめる唯一の方法かもしれない。Netflix の chaos monkey みたいにね。" userName="eknkc" createdAt="2025/05/05 08:54:01" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="グレースフルな終了に頼ることと、それをサポートすることは別の話だよ。<br>サポートしておけば、クライアントに嫌な5xxエラーを見せることなくサービスを停止できるからね。" userName="icedchai" createdAt="2025/05/05 13:19:56" color="#ff33a1">}}




{{<matomeQuote body="記事で、新しいサービスインスタンスが古いインスタンスからリスニングソケットを受け取って、 incoming のコネクションを一切落とさずにアプリケーションを再起動する方法を解説してくれたらなって期待してたんだ。<br>systemd だと比較的簡単に実装できるし、nginx なんかは20年以上前からサポートしてる。<br>残念ながら Kuberenets とか Docker は、load balancer か reverse proxy でやるもんだと思ってて、そういうサポートはないんだよね。" userName="fpoling" createdAt="2025/05/05 08:56:09" color="#ff5c5c">}}




{{<matomeQuote body="君が探してるのは、たぶん Cloudflare の tableflip だよ。<br>https://github.com/cloudflare/tableflip" userName="joaohaas" createdAt="2025/05/05 14:08:26" color="#38d3d3">}}




{{<matomeQuote body="俺の同僚でいつも言ってたやつがいてさ、もしプログラムが ctrl c とかの終了コマンドできれいに閉じられなかったら、それはコードがダメだってね。" userName="giancarlostoro" createdAt="2025/05/05 02:38:05" color="">}}




{{<matomeQuote body="Elixirがマジ賢いって思う点の一つなんだよね。あんま経験ないけど、小さなVMプロセスとして設計されてて、パニックしたり終わったりしても勝手に再起動されるみたいで、意図的にグレースフルシャットダウンの処理作る必要がないっぽい。アプリのアーキテクチャに最初から入ってるからさ。" userName="gchamonlive" createdAt="2025/05/05 01:11:00" color="">}}




{{<matomeQuote body="それって著者が話してるグレースフルシャットダウンの必要性をどうなくすわけ？" userName="cle" createdAt="2025/05/05 01:26:44" color="">}}




{{<matomeQuote body="GCが手動メモリ管理の必要なくすのと一緒だよ。たまにそれだけじゃ足りなくて手動でやる必要あるけど、大体GCあるシステムでメモリ解放のことしょっちゅう考えないじゃん。BEAMは分散とか障害に強いシステム作るように設計されてて、そういう心配事がさ、外部ライブラリ（例えばKafkaとか）とか完全に外側（例えばKubernetesとか）にあるんじゃなくて、システム内で第一級オブジェクトとして扱われてるんだ。記事の最初に著者が挙げてる3つのポイントはもう組み込まれてて、自分で実装するんじゃなくて、振る舞いを記述する感じなんだよね。それがさ、OPが「意図的にグレースフルシャットダウンの処理を作る必要がない」って言いたかったことだと思うよ。" userName="fredrikholm" createdAt="2025/05/05 07:00:32" color="#785bff">}}




{{<matomeQuote body="Elixirの話が記事のグレースフルシャットダウンとどう関係あるか不明。アプリによって即終了かハンドリングか選ぶし、HTTPサーバーは現在のリクエストを待つのが普通。記事のtime.Sleepは微妙でsync.WaitGroupが一般的だよ。GC関係なくコネクションは手動で閉じてエラー処理したいもんね。" userName="joaohaas" createdAt="2025/05/05 14:18:19" color="#ff33a1">}}




{{<matomeQuote body="Elixir/BEAMはOTPでグレースフルシャットダウンを含む色んな機能が組み込まれてるから、手動で実装する必要ない。著者がtime.Sleepを選んだみたいに手作りは大変。GC比喩は、BEAMには障害回復や監視、トレーシングなどシステムレベルの機能が最初からあるって意味。他のランタイムは外部ツールやライブラリに頼るけど、BEAMは分散・耐障害性特化で約35年かけて進化してるから違うんだ。" userName="fredrikholm" createdAt="2025/05/05 18:44:55" color="#ff5c5c">}}




{{<matomeQuote body="自分でgraceful shutdown用の小さいライブラリ作ったよ（https://github.com/eberkund/graceful）。サービスごとに違う開始・終了処理（インスタンス化、contextキャンセル、”Stop”メソッド呼び出しとか）を、統一APIで一元管理できるようにしたんだ。" userName="eberkund" createdAt="2025/05/05 06:59:10" color="#ff5c5c">}}




{{<matomeQuote body="あはは、俺も全く同じアイデアだったわ（https://pkg.go.dev/git.sr.ht/~mariusor/wrapper#example-Regis...）。俺のはAPIがちょっと劣るかもだけど、複数のシグナルをどう処理するか設定できるんだ。" userName="mariusor" createdAt="2025/05/05 08:04:56" color="#ff33a1">}}




{{<matomeQuote body="俺も似たようなの作ったよ！<br>https://github.com/pseidemann/finish" userName="pseidemann" createdAt="2025/05/05 09:33:42" color="">}}




{{<matomeQuote body="記事の「Readiness Probeを失敗させてから待つ」ってのは違うと思うな。Podが終了状態になったら自動でNot Readyになるんだよ。SIGTERMの直後は窓があるかもだけど、大したことないってば。<br>クラスタ管理者としては、新しい接続止めて既存のをちゃんと閉じて、すぐ終わるのが一番。なんかSIGTERM処理しても終了が遅いアプリ多すぎ！" userName="deathanatos" createdAt="2025/05/05 01:51:00" color="#38d3d3">}}




{{<matomeQuote body="JustWatchでGoogle Wire（https://go.dev/blog/wire<br>https://github.com/google/wire）を使い始めたんだけど、マジでヤバい！Kubernetesでの面倒なシャットダウン処理がスッキリしたよ。Wireが依存性注入をキッチリやるから、全部順番に終わるんだ…きっとね :-D" userName="cientifico" createdAt="2025/05/05 07:19:36" color="#ff5c5c">}}




{{<matomeQuote body="livenessについても記事で触れて欲しかったな。livenessとreadinessを同じエンドポイントにしてるアプリ、あれ違和感あるんだよね。" userName="Savageman" createdAt="2025/05/05 22:24:23" color="">}}




{{<matomeQuote body="俺はWaitGroupとContextを使ったパターンをよく使うよ。シャットダウン対象のサービスには、終了を知らせるContextと、完了を待つWaitGroupを持たせるんだ。<br>メインの処理でContextを閉じれば各サービスがシャットダウンを始めて、WaitGroupで待てば全部終わるまで待てるってわけ。" userName="liampulles" createdAt="2025/05/05 07:30:26" color="#785bff">}}




{{<matomeQuote body="記事には、シャットダウン中にミドルウェアが気を利かせてくれる点があるね。WithCancellation()の詳細はないけど、SIGINT/SIGTERMで停止中に来たリクエストに対して、変なエラーじゃなくて設定した「not in service」エラーを返せるみたい。" userName="mariusor" createdAt="2025/05/05 08:10:12" color="#785bff">}}




{{<matomeQuote body="正直さ、ログとかシャットダウンっていつも大変なんだよね。シンプルだって思ったことないよ。その場しのぎの対応が必要な感じ。" userName="gitroom" createdAt="2025/05/05 11:21:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
