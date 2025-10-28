+++
date = '2025-10-21T00:00:00'
months = '2025/10'
draft = false
title = '月3000ドルのHeroku費用を月55ドルサーバーに置き換え！驚異のコスト削減！'
tags = ["Heroku", "コスト削減", "サーバー", "クラウド", "インフラ"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> 月3000ドルのHeroku費用を月55ドルサーバーに置き換え！驚異のコスト削減！

引用元：[https://news.ycombinator.com/item?id=45661253](https://news.ycombinator.com/item?id=45661253)




{{<matomeQuote body="htopのスクショ見て、swapがないのに気づいたよ。サービスが暴走してもサーバーが落ちないようにearlyoomを有効にしたらいいかも。Linux KernelのOOM killerは遅いことが多いからね。zramでRAMを圧縮して、プロみたいに過剰プロビジョニングもできるよ。メモリリークするソフトはよく圧縮されるからね。HetznerサーバーでのAnsibleを使った設定例はこれだよ: https://gist.github.com/fungiboletus/794a265cc186e79cd5eb2fe... VMでもいける。" userName="speedgoose" createdAt="2025/10/21 21:12:51" color="#45d325">}}




{{<matomeQuote body="いやー、それはありえないね。swapを使うとほとんどのアプリは最悪の動きになるよ。AWSのEC2だってデフォルトで無効にしてるくらいだし。RAMを売ろうとしてるのもあるけど、今の期待値にはswapは合わないってのが本当なんだ。90年代ならボタンクリックで数秒待つのもアリだったけど、今はもう固まったら死んだと思って再起動しちゃうよね。" userName="levkk" createdAt="2025/10/21 21:51:31" color="#785bff">}}




{{<matomeQuote body="それは誤解だよ。a) SSDのおかげでswapはほとんど目に見えないし、何かあった時の緊急避難路になる。b) swapはRAMが溢れた時だけじゃなく、未使用ページをスワップアウトしてRAMの負荷を減らすんだ。RAMが少ししか使われてなくてもswapは使われて、もっとホットデータをキャッシュできる。再起動が簡単でも、長期的に見たら良い解決策じゃないよ。「知らんわ！」はダメな戦略だね。Kubernetesは「swap禁止」だけど、伝統的なシステムではまだ価値があるんだ。" userName="bayindirh" createdAt="2025/10/21 22:15:54" color="#ff33a1">}}




{{<matomeQuote body="なんだって、何の負荷の話？もしRAMが全然使われてないなら、何のプレッシャーについて話してるの？マシンで一番遅いドライブがSSDなら、swapへのキャッシュがどう役に立つっていうの？" userName="adastra22" createdAt="2025/10/21 22:40:26" color="">}}




{{<matomeQuote body="いやいや、それはただのメモリ枯渇だよ。swapはRAMを効率的に使うのに役立つんだ。よく使うデータをRAMに置いて、他はディスクに任せる。もしswapを使いすぎたら大変なことになるけど、それはswapがなくても同じことだよ。真剣に、swapは良いものだから、変な噂に惑わされないでほしいな。" userName="KaiserPro" createdAt="2025/10/21 22:22:58" color="#785bff">}}




{{<matomeQuote body="長時間動くLinuxはRAMを100％使うよ。アプリが使わない分はディスクキャッシュになるんだ。昔のLinuxは未使用ページをswapに送らなかったけど、今は長い間使われてないページをswapに送って、RAMにもっとキャッシュ領域を確保するんだ。KernelはSSDに直接キャッシュするんじゃなくて、使われてないけど退避させられないページをswapに送ることで、RAMをディスクキャッシュとしてたくさん使えるようにするんだよ。僕のPCでも20GBの空きがあったのに、2.5GBもswapに移動されてたよ。" userName="bayindirh" createdAt="2025/10/21 22:48:47" color="#ff5733">}}




{{<matomeQuote body="「SSDがswapをほぼ見えなくする」ってのは違うと思うな。SSDも進化したけど、メモリもバスも進化して、プログラムの動作も変わってきてるんだ。スタックやヒープがメモリに収まることが増えたからね。僕、shellcheckで.zshrcを開くとRAMを全部食い尽くす問題があったんだけど、その時swapは全然見えなくならなくて、システムはめちゃくちゃ遅くなったよ。" userName="gchamonlive" createdAt="2025/10/21 22:28:04" color="#ff33a1">}}




{{<matomeQuote body="ちょっと理解できないんだけど。もしシステムに十分なRAMを用意すれば、ホットなデータだろうがそうじゃなかろうが、RAMにある全てのページを使えるんじゃないの？" userName="adastra22" createdAt="2025/10/21 22:43:21" color="">}}




{{<matomeQuote body="ねぇ、VPSでswapってどうやって設定するの？" userName="awesome_dude" createdAt="2025/10/21 22:38:28" color="">}}




{{<matomeQuote body="ディスク容量よりRAMが多い時だけ有効な話だね。多くのアプリではむしろRAMの無駄遣いになっちゃうよ。" userName="akvadrako" createdAt="2025/10/21 23:16:35" color="">}}




{{<matomeQuote body="「linux enable swap in a file」で検索してみて。Linuxでスワップファイルを有効にするには、まず`sudo dd if=/dev/zero of=/swapfile bs=1G count=1`でファイルを作って、`sudo mkswap /swapfile`で設定。`sudo swapon /swapfile`で有効化。永続化は`/etc/fstab`に`/swapfile swap swap defaults 0 0`を追加すればOK。" userName="justsomehnguy" createdAt="2025/10/21 23:32:21" color="#ff5c5c">}}




{{<matomeQuote body="90年代と今じゃプログラムのRAMの使い方も変わったんだよ。昔はスワップにヒットしてもパフォーマンスがガタ落ちしないよう最適化されてたけど、今やスワップを本当のRAMみたいに使っちゃうから、システム全体が止まっちゃうんだ。" userName="gchamonlive" createdAt="2025/10/21 22:04:23" color="#38d3d3">}}




{{<matomeQuote body="メモリ切れはパフォーマンスを殺すんだ。VMは再起動した方が低レイテンシを保てるってことかな。なのに「スワップはまだ必要」って言うのはなんで？" userName="adastra22" createdAt="2025/10/21 23:36:56" color="">}}




{{<matomeQuote body="君はどっちを選ぶ？<br>( ) 1%の確率でシステムは超ノロノロになるけど動く<br>( ) 1%の確率でカーネルが死んで何も動かなくなる" userName="justsomehnguy" createdAt="2025/10/21 22:56:47" color="#ff5c5c">}}




{{<matomeQuote body="RAMはお金がかかるけど、ディスクは安いんだ。使わないコールドデータを全部高価なRAMに置くのは、ちょっと無駄遣いだよな。" userName="eru" createdAt="2025/10/22 00:03:33" color="">}}




{{<matomeQuote body="earlyoomより`systemd-oomd`[0]とか`oomd`[1]の方が良いよ。`systemd-oomd`や`oomd`はカーネルのPSI[2]情報を使うから、`earlyoom`がポーリングするだけなのに対して、もっと効率的で反応が良いんだ。<br>[0]: https://www.freedesktop.org/software/systemd/man/latest/systemd-oomd.service.html<br>[1]: https://github.com/facebookincubator/oomd<br>[2]: https://docs.kernel.org/accounting/psi.html" userName="TheDong" createdAt="2025/10/22 03:05:34" color="#ff5733">}}




{{<matomeQuote body="まさにその通り。最近のほとんどのWebサービスはGC’ed runtimeで動いてるから、VMはあちこちポインタを辿って、常にスワップにアクセスしちゃうんだ。" userName="winrid" createdAt="2025/10/21 22:15:29" color="">}}




{{<matomeQuote body="ランタイムに完全に依存する話だね。GCがムービングコレクタなら、確かに気をつけないといけない。でもGo、CLR、Ruby、Python、Swift、あとNode(?)なんかのランタイムはメモリを動かさないんだ。JVMはムービングコレクタだよ。" userName="cogman10" createdAt="2025/10/21 22:35:06" color="#38d3d3">}}




{{<matomeQuote body="「コールドデータを高価なRAMに置くのは無駄」って意見だけど、それはアプリがすでにやってることじゃん。作業中のデータはRAMに置いて、それ以外はストレージに残してるよ。ワーキングセット全部がRAMに収まるなら、なんでスワップがいるんだ？" userName="fluoridation" createdAt="2025/10/22 00:08:35" color="#ff33a1">}}




{{<matomeQuote body="VPSでそれを試してみて、結果を報告してほしいって強く提案するよ。" userName="awesome_dude" createdAt="2025/10/21 23:33:21" color="#ff5733">}}




{{<matomeQuote body="うん、例えばAPIサービスを書いてるなら、スワップアウトされたページを叩いて急にレイテンシが増えるのは嫌だよね。少なくともサーバーがオーバーロードしてない時は、API呼び出しのレイテンシ変動には保証がほしいんだ。カーネルがNRUページよりキャッシュを優先するのも嫌だし。一番簡単な方法はスワップを無効にすることだよ。" userName="adastra22" createdAt="2025/10/21 23:43:39" color="#38d3d3">}}




{{<matomeQuote body="誰かこれ説明してくれない？スワップって根本的な問題を先延ばしにするだけじゃないの？それとも質的な違いがあるのかな？" userName="andai" createdAt="2025/10/21 23:14:55" color="">}}




{{<matomeQuote body="RAMを圧縮することによるパフォーマンスへの影響ってどうなの？" userName="cactusplant7374" createdAt="2025/10/21 21:17:02" color="">}}




{{<matomeQuote body="俺の仕事用のUbuntuノートPCはRAMが40GBで、めちゃ速いNvme SSDを積んでるんだけど、メモリ圧力がかかると15〜20分間スワップしまくって、実質フリーズして使い物にならなくなるんだ。だから、SSDでもスワップが目に見えないなんて経験はないね。" userName="kryptiskt" createdAt="2025/10/22 00:02:24" color="#ff5c5c">}}




{{<matomeQuote body="これはほとんどのSSDには当てはまらないね。Linuxがスワップを激しく使う時、ディスクが本当に速くないと実質的に使えなくなるから。十分速いSSDは手に入るけどさ。スワップを激しく使う時のワークロードは、100%ランダムな4KBの読み書きが同量なんだ。多くのSSDは高い読み書き速度を持つけど、混合ワークロードだと性能がずっと悪くなる。以前、数百GBのRAMが必要な作業でIntel Optaneドライブをスワップとして使ったことがあるけど、レイテンシがめちゃくちゃ低かったから、タスク実行中でもマシンはほぼ完璧に動いたし、動画もフレーム落ちせずに見れたくらいだよ。" userName="db48x" createdAt="2025/10/22 03:43:01" color="#ff5c5c">}}




{{<matomeQuote body="念のため、1GBくらい少量でもスワップを持っておくのはいつも良いアイデアだよ。" userName="shrubble" createdAt="2025/10/21 22:32:42" color="">}}




{{<matomeQuote body="「earlyoomはただポーリングしてるだけ」？<br>systemd-oomdはシステムとcgroupのPSI統計を定期的にポーリングして、いつアクションを起こすかを決めてるよ。systemd-oomdのドキュメントが間違っているか誤解を招くのかは不明だね。kernel.orgのリンクを見ると、推奨される使用パターンは`poll`システムコールを使うことなんだけど、この文脈だと「ポーリングしない」って意味になるのかな、もし俺が正しく理解してるならだけど。" userName="CGamesPlay" createdAt="2025/10/22 04:33:14" color="">}}




{{<matomeQuote body="どうなると思う？今EC2インスタンスで試してみたけど、予想通りに動いたみたいだよ。" userName="ahepp" createdAt="2025/10/21 23:44:24" color="#785bff">}}




{{<matomeQuote body="どんなガーベージコレクターも、動いてるプログラムの参照グラフ全体を常にふるいにかけて、どのオブジェクトがゴミになったかを見つけなきゃいけないんだ。世代別GCは古い世代を追跡する頻度を減らせるけど、それくらいだよ。トレーシングGCは、複雑で循環する可能性のある参照グラフの管理っていう一つの問題をめちゃくちゃ良く解決するけど、それ以外のシステムレベルやパフォーマンス関連の評価要因については、とにかく最悪なんだ。" userName="zozbot234" createdAt="2025/10/21 23:10:59" color="">}}




{{<matomeQuote body="https://news.ycombinator.com/item?id=45007821<br>スワップ使うのは根本問題の先延ばしだってば。Linuxのメモリ割り当て問題、なんでみんな解決しないの？ファンボーイはプロセス強制終了を良しとしてるけど、スワップ使うと遅くなるって思い込みすぎ。SQL serverとか専用機で一番メモリ使うプロセスって何だと思う？って話だよ。" userName="justsomehnguy" createdAt="2025/10/22 00:08:19" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺のPCの状況を見せてやるぜ。<br>Mem: 15838MB中9627MB使ってるけど、Swap: 4095MB中0MBだぜ。<br>uptime見たら37日以上稼働してて、ロードアベレージは0.00。全然問題ないじゃん？ってこと。" userName="wallstop" createdAt="2025/10/21 22:56:00" color="">}}




{{<matomeQuote body="Railsのパフォーマンスに詳しいNate BerkopecもHerokuは25～50倍も高すぎって言ってたぜ。価格競争する気ゼロだろ。Sidekiqみたいにソフトウェアスタックをライセンスして、自分で良いハードウェア使わせてほしいよ。2025年に1GB RAMのDynoに50ドルって、完全にぼったくりだろ。開発用MacBookより性能低いマシンに何百ドルも払うとか、ありえない。" userName="jdprgm" createdAt="2025/10/21 21:44:32" color="#785bff">}}




{{<matomeQuote body="ガソリンスタンドのオイル交換、高すぎ！自分でやればもっと安いのに！<br>レストランのステーキ、高すぎ！自分で焼けばもっと安いのに！<br>…！<br>って、Herokuが高いって言うのと同じこと言ってるよな？" userName="teiferer" createdAt="2025/10/21 21:52:36" color="">}}




{{<matomeQuote body="「ソフトウェアスタックをライセンス提供すべき」って意見、まさにそれ！だから俺たちは https://canine.sh を作ってオープンソースにしたんだぜ。PaaSがクラウドプロバイダの料金にさらにボッタクリ価格を乗せるなんて、マジでありえないから。" userName="czhu12" createdAt="2025/10/21 21:47:17" color="#ff5733">}}




{{<matomeQuote body="「2025年に1GB RAMのDynoに50ドルはぼったくり」って話だけど、AWSだってあんまり変わんねーよ。月50ドルのm7a.mediumインスタンスは1vCPUと4GB RAMだぜ。メモリは多いけど、AWSがどれだけ儲けてるか考えたら、これも納得いかねーよな。" userName="layoric" createdAt="2025/10/21 22:58:16" color="#38d3d3">}}




{{<matomeQuote body="さっきのステーキの話、皮肉だってわかってるけど、俺はあの意見に100%同意するぜ。牛肉が高騰して、パンデミック後に物価が上がりまくってんだ。ぼったくられてるって感じると、もう何を楽しむ気にもなれねーよ。" userName="jdprgm" createdAt="2025/10/21 22:00:08" color="">}}




{{<matomeQuote body="価格吊り上げっていうより、Herokuは顧客の心理を利用してるんだぜ。顧客は使い始めの価格に慣れちゃうから、ハードウェアがどんどん良くなってるのに、Herokuの価格は7年以上変わってない。だから、今の感覚で「ぼったくり！」って感じるのは、古い価格と今のハードウェアを比較してるだけなんだ。競合が少ないHerokuは価格変えないから、この記事みたいになるんだよ。" userName="condiment" createdAt="2025/10/22 00:58:04" color="#785bff">}}




{{<matomeQuote body="canine.shは良いと思うけど、PaaSを使う一番の理由って、マネージドデータベースとバックアップなんだよな。だって、自分でサーバー用意するのだって、プレーンなLinux VMとかだったらそんなに難しくないんだから。" userName="nicoburns" createdAt="2025/10/21 22:02:25" color="">}}




{{<matomeQuote body="Herokuはただのホスティングじゃないぜ。Kubernetes管理なしで一時的なQA envsとか使えるの、すごくいいんだよな。今は停滞してるけど、簡単なシステムなら、運用チームなしで最新の運用システムの良いとこ取りができるんだ。Flyも似た方向性だけど、Herokuにはまだ全然追いつけてないってのが正直なところかな。" userName="rtpg" createdAt="2025/10/22 03:22:31" color="#ff33a1">}}




{{<matomeQuote body="Herokuの価格に文句言ってる人が多すぎるけど、安くて良い代替サービスは山ほどあるんだから、ちょっと努力してそっち使えばいいじゃん？他人がHerokuに金使っても誰も困らないし、文句言うの変だよ。Herokuより信頼性があって安いデプロイオプションは文字通り何百もあるからね。" userName="xmprt" createdAt="2025/10/21 22:03:24" color="">}}




{{<matomeQuote body="完全に同意！プロダクションのPostgres DBは自前でやらずに、Crunchy Data、Neon、Supabase、AWS RDSみたいな専用の優れたサービスを使うべきだね！" userName="gregsadetsky" createdAt="2025/10/21 22:16:45" color="#ff5c5c">}}




{{<matomeQuote body="この話はコモディティ化したソフトウェアには当てはまらないね。100ドルプラス1時間のリサーチと短いドライブでオイル交換するのと、すぐ隣で2,500ドル払って便利なオイル交換をするのを比較してるようなもんだよ。" userName="andrewstuart2" createdAt="2025/10/21 22:02:28" color="">}}




{{<matomeQuote body="m7aはHyperThreadingを使わないから、1 vCPUは完全に専用のコアだよ。Herokuの標準dyno（共有ホスティング）と比較するなら、同じく共有でかなり安いt3aファミリーの方が適切だね。" userName="electroly" createdAt="2025/10/22 00:19:34" color="#ff33a1">}}




{{<matomeQuote body="HerokuはRailsのVercelみたいなもんだね。動くからって理由でみんな大金を払うんだ。これがずっと彼らのビジネスモデルだから、今に始まったことじゃないよ。需要が爆発的じゃなくて利益率も薄いから競争も少なく、結果的に停滞するんだ。" userName="herval" createdAt="2025/10/22 02:31:16" color="">}}




{{<matomeQuote body="データ量によるね。ダンプするだけならいいけど、そうじゃないならちょっと手間がかかる。でも、データストアへのアクセス遅延が数ミリ秒じゃなくてサブミリ秒なら、アプリ開発はずっと楽になるよ。だからその手間はかける価値あるかもね。" userName="bcrosby95" createdAt="2025/10/21 22:23:57" color="">}}




{{<matomeQuote body="Sentryは動くの？ログ、メトリクス、トレースを送れて、クエリは速いのかな？" userName="odie5533" createdAt="2025/10/21 22:29:10" color="">}}




{{<matomeQuote body="私が勘違いしてるのかな。m7aは第4世代Epyc（Genoa、Bergamo、Siena）だと思ってたけど、それらは全部コアあたり2スレッドじゃなかったっけ？" userName="layoric" createdAt="2025/10/23 10:07:04" color="">}}




{{<matomeQuote body="VercelはHerokuよりフロントエンドの市場がずっと大きいから、多くの競争があるはずだよ。Netlifyも同じ価格設定だし、CIからクラウドバケットに放り込むだけで済むしね。" userName="echelon" createdAt="2025/10/22 02:36:27" color="">}}




{{<matomeQuote body="「オイル交換は自分でやった方がずっと安い」って言ってるけど、本当に？オイル交換ってかなり安いじゃん。Walmartで40ドルくらいでできるし、結構安くない？" userName="landdate" createdAt="2025/10/22 00:02:02" color="">}}




{{<matomeQuote body="Herokuの価格が高すぎて、俺も知ってる奴らも誰も使わなくなったみたい。彼らは俺とは違うターゲット市場にピボットしたか、それか収益を抽出しようとして自社の成長潜在力を殺しちゃったかのどっちかだと思うと悲しいな。" userName="strken" createdAt="2025/10/21 22:53:55" color="#38d3d3">}}




{{<matomeQuote body="誰も高いサービスを使えって強制されてないんだよ。Herokuがまだビジネスしてるってことは、十分な数の人が妥当な取引だと考えてるってこと。お前はそうじゃなくても、他の人はそうなんだ。" userName="teiferer" createdAt="2025/10/21 22:51:36" color="">}}




{{<matomeQuote body="サブミリ秒のレイテンシーでローカルにDBを動かすのはかなり小規模じゃないと無理だよ。データセンターのDBAチームが提供するDBは、RDSとかと同じくらいのレイテンシーになるはず。データセンター内のネットワークレイテンシーだけで1〜3msかかるしね。" userName="bragr" createdAt="2025/10/22 05:58:37" color="">}}




{{<matomeQuote body="よく言った！Herokuには驚くほど多くの機能があるんだよ。DB/Redis、フォーク、ログプレックス、オートスケール、アドオンエコシステム、プロモーションパイプライン、コンテナサポート、CLI/API、OS/パッチ管理など盛りだくさん。生サーバーとメガクラウドの複雑さの間の良いとこどりをしてたんだ。FlyやRailwayも良いけど、Herokuの機能はプロダクションアプリにとって想像以上に深いんだ。ただ、ホビイストにはもう向かないってのは同意するよ。" userName="TheTaytay" createdAt="2025/10/22 11:20:51" color="#ff33a1">}}




{{<matomeQuote body="企業がHerokuに喜んでプレミアムを払うのは、インフラ管理に貴重なエンジニアリング時間を費やすより、製品構築とビジネス創出に集中できるからだよ。製品が成功してコスト高になった頃には、拡張したり移行したりするリソースも十分にあるはずさ。ソロ開発者にとっても、DevOpsが好きじゃないならHerokuを選ぶのは賢い選択だね。" userName="swat535" createdAt="2025/10/22 01:57:11" color="#45d325">}}




{{<matomeQuote body="Kubernetesの柔軟性とパワーは本当にすごいと思う。複数のノードへのスケーリングは簡単だし、データプレーンが吹き飛んでも復旧は楽勝だよ。ほぼどんなオープンソースサービスも自分でホストできるし、Telepresenceで内部ネットワーキングも可能だ。（例えば、公開したくないMetabaseを`telepresence connect`で内部からアクセスできるんだ。）Canineは既存のベストプラクティスやツールを活用しようとしてるね。でも、基幹業務のDBはKubernetesに置くべきじゃないってのは同意だよ。" userName="czhu12" createdAt="2025/10/22 00:51:28" color="#ff33a1">}}




{{<matomeQuote body="AWSもひどい料金設定だよ。通常の仮想サーバーは少し高いけど、法外ってほどじゃない。問題は、データベース、バックアップ、ストレージ、マネージドサービスとかの付帯サービス。ドル/ブーガルーで課金されて、さらに水税みたいなのと、規定量を超えると10倍の料金がかかるんだ。ほとんどの顧客は、これらのサービスでどれだけ少ないコンピューティングしか買ってないか分かってないんだよ。" userName="NohatCoder" createdAt="2025/10/22 12:50:59" color="#38d3d3">}}




{{<matomeQuote body="お前が混乱してないってのは正しいよ。AWSはカスタムチップを使ってるか、SMTを無効にしてるかのどっちかだね。AWSのM7aインスタンスでは、各vCPUが物理CPUコアなんだ。つまり、SMT（同時マルチスレッディング）はないってこと。M6a以前のインスタンスでは、各vCPUはCPUコアのスレッドだったんだよ。たぶんSMTを無効にしてるんだと思うな。Intelインスタンスではカスタムプロセッサを大々的に宣伝してるけど、このページには「カスタム」って言葉がないからね。URL: https://aws.amazon.com/ec2/instance-types/m7a/" userName="electroly" createdAt="2025/10/23 16:43:52" color="">}}




{{<matomeQuote body="AWSは既存サービスの値下げや安価な新世代インスタンス（Gravitonなど）の導入をよくアピールしてるよね。他のクラウドベンダーもそうだけどさ。" userName="sofixa" createdAt="2025/10/22 09:22:43" color="">}}




{{<matomeQuote body="Supabaseみたいなのを使うって話でしょ。あと、小規模って言っても人それぞれだよね。Herokuの話は「ナノスケール」って呼んでもいいかも。モダンなハードウェアなら1台のサーバーで数万QPSも処理できるし、ほとんどのワークロードには十分すぎるよ。" userName="bcrosby95" createdAt="2025/10/22 15:22:35" color="#ff5c5c">}}




{{<matomeQuote body="ミッドマーケットのクラウドはAPIが不安定だったり機能が不足してたりして、信頼できるシステムを作るのは大変だよ。でも、sherpa.sh（https://www.sherpa.sh）っていうVercelの競合を作ってるんだ。EUベースのCDNと専用サーバー（Hetznerとか）でコストを70%削減できるんだよね。" userName="kazanz" createdAt="2025/10/22 03:15:36" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="クラウドが浸透したせいで、一台のマシンでどこまでできるかみんな忘れちゃったよね。高価なクラウド環境にステージングを置くのはどうかと思うけど、今のクラウドは部品が多いから、そうしたくなる気持ちもわかるよ。" userName="tempest_" createdAt="2025/10/21 20:54:11" color="">}}




{{<matomeQuote body="クラウドのせいでみんなLinuxサーバーを怖がるようになったよね。あの値段は開発者の不安の代償でしかない。皮肉なことに、セルフホスティングって結構シンプルで楽しいんだよ。HerokuとかVercelの魅力が全くわかんないな。自分でサーバーをゼロからセットアップするほど楽しいことはないよ。開発者ならみんな試すべきだね。" userName="rikafurude21" createdAt="2025/10/21 21:00:02" color="#45d325">}}




{{<matomeQuote body="セルフホスティングは最初は楽しいけど、何度も繰り返すのは面倒くさいんだよね。HerokuとかVercelならgit pushするだけで動くじゃん。LinuxサーバーだとOSや認証、アプリ、systemctl、リバースプロキシ、デプロイ、SSL管理、監視とか、やることがたくさんあるんだよ。柔軟性で言えばLinuxサーバーが好きだけど、UXはもっと良くなるはずだよね。" userName="jampekka" createdAt="2025/10/21 21:16:28" color="#ff5c5c">}}




{{<matomeQuote body="人に何かやってもらってお金払うことの魅力がわからないの？って話だよ。Vercelは簡単じゃん。その簡単さにみんなお金を払ってるんだよ。最初は簡単なモードから始めるのが普通だろ。好みは人それぞれなんだからさ。" userName="fragmede" createdAt="2025/10/21 21:28:40" color="">}}




{{<matomeQuote body="誰かに仕事をしてもらってお金を払うのは好きだよ。でも、その仕事が50倍ものマークアップ（上乗せ料金）に見合うかっていうのが問題だよね。" userName="rikafurude21" createdAt="2025/10/21 21:31:03" color="#45d325">}}




{{<matomeQuote body="小麦粉と塩と水はすごく安いよね。でもパン屋で買うパンは、自分で焼くのに比べて50倍以上の値段がついてるはずだよ。自分でパン職人レベルになる学習コストや、毎日パンを焼く時間を考えたら、そっちの方がずっと安い。それに、毎日パンを焼くような規模で必要になることもないだろうしね。" userName="alwa" createdAt="2025/10/21 22:02:59" color="#45d325">}}




{{<matomeQuote body="小麦粉の値段、ちゃんとチェックしてみてよ。水は安いけど、塩はそこまでじゃない。パンを手作りするってのはすごく小規模な話だよね。もし大量に作るなら、特別なミキサーや大きなオーブン、あと生地を発酵させるための温度と湿度を管理した部屋も必要になるはずだよ。" userName="eru" createdAt="2025/10/22 00:20:01" color="#38d3d3">}}




{{<matomeQuote body="最初は楽しいけど、繰り返しやると面倒くさい作業になるよね。確かにそうだけど、そういう作業を自動化してくれるツールはたくさんあるから、ずっと手動でやる必要はないよ。" userName="bigstrat2003" createdAt="2025/10/22 00:27:40" color="">}}




{{<matomeQuote body="うん、でもそれは単なる駆け引きだよ。車のベルト交換のやり方を知ってて、すでにツールも持ってる場合と、工具もガレージもベルトもなくて立ち往生してる場合とは違うんだから。" userName="fragmede" createdAt="2025/10/21 21:34:27" color="">}}




{{<matomeQuote body="メカニックなら車のベルト交換の仕方を知ってるべきでしょ。生計のためにコードを書いてコンピューターを扱ってるのに、ウェブサーバーのセットアップ方法を知らないなんて、ありえないよ。" userName="rikafurude21" createdAt="2025/10/21 21:38:36" color="">}}




{{<matomeQuote body="Hetznerのスペック（8コア、32GB RAM）に匹敵する中古のDellデスクトップが500ドル以下で買えるのに、なんでそうしないの？クラウドは進化するにつれて、だんだん詐欺みたいに思えてくるね。" userName="nimbius" createdAt="2025/10/21 21:17:19" color="#ff5c5c">}}




{{<matomeQuote body="そのツールとそれぞれの役割を教えてくれない？" userName="liqilin1567" createdAt="2025/10/22 03:36:08" color="">}}




{{<matomeQuote body="本番環境を完全に複製するのは役に立つよ。デプロイが似てるから時間が節約できるし、本番環境がどうなるかのテストもより良くできるからね。" userName="odie5533" createdAt="2025/10/21 20:56:18" color="">}}




{{<matomeQuote body="全く同感だよ。もし違うプラットフォームでホストされてるなら、それはステージングサーバーとは言えないよね。" userName="teaearlgraycold" createdAt="2025/10/21 21:01:21" color="">}}




{{<matomeQuote body="あと、単一マシンでどこまでできるかも、過去15年でめちゃくちゃ変わったよ。15年前の（本当にごつい）単一マシンは8コア、256GB RAM、数TBストレージだったけど、今じゃ256コア、8TB RAM、1PBストレージになるんだから。" userName="adgjlsfhk1" createdAt="2025/10/21 22:57:37" color="#38d3d3">}}




{{<matomeQuote body="Ansible、Salt、Puppetはだいたい業界標準だよ。これらは一般的に設定管理システムって呼ばれてる。AnsibleはXにログインして、YがないならXのステップを実行するっていうワークフローを自動化するんだ。多くのディストリビューションやOSをサポートしてて、タスクランナーみたいに使えるよ。<br>Saltはシステムの状態を宣言的に記述させて、エージェント／中央ホストシステムで設定を配るんだ（プッシュ型）。Puppetも宣言的でエージェント／中央ホストシステムがあるけど、プル型のアプローチを使うよ。mgmtとかNixOSみたいな専門的で珍しい選択肢もあるね。" userName="c0balt" createdAt="2025/10/22 04:41:11" color="#ff33a1">}}




{{<matomeQuote body="自動化の重要性を説いている。2005年でもDebianインストールディスクとスクリプトでサーバーのプロビジョニングを自動化してたよ。今はsystemdやNixとかでもっと良くできるね。" userName="lelanthran" createdAt="2025/10/22 08:56:52" color="#ff5c5c">}}




{{<matomeQuote body="前のコメントの例は基本的なプロビジョニングしかカバーしてないよね。親コメントで言ってた追加項目は、初期費用も運用費用もかなりかかる可能性があるよ。" userName="chickensong" createdAt="2025/10/22 20:07:19" color="">}}




{{<matomeQuote body="詳しい説明ありがとう！これらのツールの実際のユースケースを教えてくれる？特に、自己ホスティングでのDevOpsとセキュリティを自動化するツールを探してるんだ。" userName="liqilin1567" createdAt="2025/10/22 05:21:08" color="#ff5c5c">}}




{{<matomeQuote body="開発者にクラウドの基本を教えるのは最初は安上がりだけど、最終的にはクラウド費用が人件費を上回り、クラウド離れが儲かるようになるよ。サーバーを素早くデプロイできないならクラウドは価値があるけど、インフラチームやハードウェア費用を超えたら意味ない。節約できるかのカーブがあるね。" userName="jeroenhd" createdAt="2025/10/21 21:11:20" color="#ff33a1">}}




{{<matomeQuote body="コンシューマー向けPCの性能はめちゃくちゃ速いよね。例えばRyzen 5825UのミニPC（$250）は、2016年の14コアXeonよりマルチコアで優れ、シングルスレッドでは圧倒するよ。ECCはないけど、テスト環境とかなら十分で、消費電力も少ない。" userName="layoric" createdAt="2025/10/21 23:02:19" color="#ff5733">}}




{{<matomeQuote body="＞いや、僕のやり方は基本的なプロビジョニングだけじゃないよ。nginxや監視エージェントとか、必要なアプリケーションの設定や、鍵や認証情報のインストールもカバーしてたんだ。親コメントが挙げたもので、僕の方法で対応できないものって何があったっけ？" userName="lelanthran" createdAt="2025/10/23 04:52:12" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
