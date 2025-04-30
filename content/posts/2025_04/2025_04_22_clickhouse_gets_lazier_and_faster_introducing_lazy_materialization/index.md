+++
date = '2025-04-22T00:00:00'
months = '2025/04'
draft = false
title = 'ClickHouseがさらに怠惰に、そして爆速に！遅延マテリアライズでマジ？'
tags = ["ClickHouse", "データベース", "最適化", "パフォーマンス", "SQL"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> ClickHouseがさらに怠惰に、そして爆速に！遅延マテリアライズでマジ？

引用元：[https://news.ycombinator.com/item?id=43763688](https://news.ycombinator.com/item?id=43763688)




{{<matomeQuote body="この最適化で､大量のデータセットからランダムサンプル取る時､特に大きな値のcolumnで劇的なスピードアップが見込めるはず｡基本のSQLレシピはLIMIT clauseでサンプル行を決めるから､この最適化でデータセットが絞り込まれるまでcolumnの読み込みを遅らせるってことだね｡ClickHouseの人､この最適化が効くか検証してほしいな｡" userName="tmoertel" createdAt="2025/04/22 16:39:53" color="#45d325">}}




{{<matomeQuote body="確認してみたよ｡ちゃんと動くね｡https://pastila.nl/?002a2e01/31807bae7e114ca343577d263be7845..." userName="zX41ZdbW" createdAt="2025/04/22 17:14:00" color="">}}




{{<matomeQuote body="サンクス！5倍も速くなった｡columnが小さいから､そこまで期待してなかったけど､いいね｡" userName="tmoertel" createdAt="2025/04/22 17:52:01" color="#45d325">}}




{{<matomeQuote body="検証済み｡EXPLAIN plan actions = 1 SELECT * FROM amazon.amazon_reviews WHERE helpful_votes ＞ 0 ORDER BY -log(1 - (rand() / 4294967296.0)) / helpful_votes LIMIT 3<br><br>Lazily read columns: review_body, review_headline, verified_purchase, vine, total_votes, marketplace, star_rating, product_category, customer_id, product_title, product_id, product_parent, review_date, review_id query_plan_max_limit_for_lazy_materialization (default value 10) って設定でLIMIT nのnを制御できるよ｡" userName="tschreiber" createdAt="2025/04/22 17:12:10" color="#38d3d3">}}




{{<matomeQuote body="質問させて｡なんでdefault limitがこんなに低いの？lazy materializationのデメリットって何？どんなクエリでlazy materializationが性能を悪化させるか知りたいな｡" userName="geysersam" createdAt="2025/04/23 06:26:12" color="">}}




{{<matomeQuote body="limit値が大きいと､ランダムI/Oが多くなる可能性があるからじゃないかな｡ClickHouseが通常シーケンシャルに読み込むよりも予測できない順序で読み込むことになる｡articleにある例みたいな特殊なケースでは有利だけど､実際にはそうでもないってことだと思う｡" userName="nasretdinov" createdAt="2025/04/23 06:35:39" color="#38d3d3">}}




{{<matomeQuote body="マジ感謝です！チェックしてくれてありがとうね｡" userName="tmoertel" createdAt="2025/04/22 17:39:10" color="">}}




{{<matomeQuote body="ORDER BYとLIMITの後にcolumnをmaterializeするから､サンプリングクエリには最適化が効くはず｡でも､randomization functionが早期評価を強制するかも｡ベンチマークで両方試す価値あり｡" userName="ethan_smith" createdAt="2025/04/22 22:08:59" color="#785bff">}}




{{<matomeQuote body="ClickHouseマジで好き｡最近見つけたんだけど､今まで使ってた最適化されてないソリューションと比べて､マジ最高｡めっちゃ速いし､CLIも使いやすい｡" userName="jurgenkesker" createdAt="2025/04/22 17:52:15" color="#ff5c5c">}}




{{<matomeQuote body="ClickHouseはずっと軽視してたんだよね｡だって､めっちゃローレベルじゃん｡信頼できるシステム作るには､内部構造を知り尽くしてないとダメそうだし｡問題起きた時､ディスク上のファイルを直接操作する必要があるDBなんて､他に知らないし｡でも､見てみたら､マジで速い｡raw speedのために最適化されてるって感じ｡" userName="lukaslalinsky" createdAt="2025/04/23 05:46:15" color="#45d325">}}




{{<matomeQuote body="ClickHouseってマジで大人のLEGOみたいに感じるの、めっちゃわかるわー。データ構造とかデータストレージのレイアウトを自分で設計できるのに、全部自分で実装しなくてもいいのが最高。大規模なシステムで作業してるなら、こういうシステムがマジで欲しいんだよね。" userName="nasretdinov" createdAt="2025/04/23 06:38:59" color="#45d325">}}




{{<matomeQuote body="めっちゃわかる。PostgresとかMicrosoft SQL Serverの経験しかない俺でも、テキストファイルからリアルデータを読み込んで、午後のうちにClickHouseを使いこなせるようになった。ドキュメントもソフトウェアのパフォーマンスもマジですごいと思った。" userName="EvanAnderson" createdAt="2025/04/22 18:52:59" color="#38d3d3">}}




{{<matomeQuote body="SQLみたいなシンタックスで、全部普通のDBみたいに使えるのがマジで助かる。もちろん、裏では全然違う動きしてるんだけど、新しいデータモデルを使うために新しいことを色々覚えなくていいのはマジで良いアプローチだと思う。新しい言語を作る理由もわかるけど、ClickHouseのトレードオフはマジで正解だと思うわ。" userName="osigurdson" createdAt="2025/04/23 00:37:54" color="#38d3d3">}}




{{<matomeQuote body="数年前はClickHouseって「レガシー」で「かさばる」ってイメージで、「大企業」が使うものって感じだったのに、最近はマジで変わったよね。こんな場所で議論されるようになったんだから、すごい進化だわ。" userName="pests" createdAt="2025/04/22 23:03:19" color="">}}




{{<matomeQuote body="2017年から2023年の間に、プライバシーの問題でGoogle Analyticsの競合がいっぱい出てきて、その多くが最初はPostgresとかMySQLを使ってたけど、ClickHouseに乗り換えたか、最初からClickHouseを選んだんだよね。スケールが全然違うからね。少なくとも2021年までには、ClickHouseの実力は有名だったはず。レガシーとかかさばるとか、そういうイメージはなかったと思う。HNでもClickHouseの記事はよくフロントページに上がってたし。あと、UmamiがついにClickHouseをサポートするらしい！Postgresも必要みたいだけど、スケールはめっちゃ良くなるはず。[1] https://github．com/umami-software/umami/issues/3227" userName="ksec" createdAt="2025/04/23 01:06:21" color="#45d325">}}




{{<matomeQuote body="レガシーとかかさばるとかじゃないけど、エンタープライズ向けって感じだったのかも？ClickHouseを聞いた時の反応が、Oracleを聞いた時と似てた気がする。" userName="pests" createdAt="2025/04/23 01:24:47" color="">}}




{{<matomeQuote body="ヘビーデューティーって感じかな？でも、ClickHouseがYandexから出たものだから、懐疑的な人も多かった気がする。しかも、戦争の前からね。" userName="ksec" createdAt="2025/04/23 01:33:44" color="">}}




{{<matomeQuote body="ClickHouseはそういう評判だったよね。でも、2021年にYandexからスピンアウトしたんだよ。それが新しい開発の波を起こして、めっちゃ良くなったんだよね。" userName="teej" createdAt="2025/04/23 01:09:58" color="">}}




{{<matomeQuote body="なるほど、それで色々納得だわ。" userName="pests" createdAt="2025/04/23 01:25:03" color="">}}




{{<matomeQuote body="ClickHouseってduckdbとかpolarsと比べてどうなの？" userName="theLiminator" createdAt="2025/04/22 20:35:23" color="">}}




{{<matomeQuote body="この分野は動きが早いから、詳しい分析もすぐ古くなっちゃうんだよね。でも、1年半くらい前のこの記事はすごく良くまとまってるよ。→https：//bicortex.com/duckdb-vs-clickhouse-performance-compar…" userName="thenaturalist" createdAt="2025/04/22 22:41:36" color="">}}




{{<matomeQuote body="DuckDBって、ClickHouseみたいに書き込みに最適化された独自のストレージ持ってないんだよね。Parquetとか他のフォーマットから読み込むのがメイン。既存のファイルの上で分析するならいいんだけど、リアルタイム分析には向かないかも。ClickHouseはそっち向けだけど、スタンドアロンサービスになっちゃうのが難点。" userName="nasretdinov" createdAt="2025/04/23 06:50:12" color="#ff33a1">}}




{{<matomeQuote body="いやいや、DuckDBにも独自のフォーマットあるよ。（書き込みに強いかは知らないけど、たぶんそうだと思う。）" userName="theLiminator" createdAt="2025/04/23 17:48:25" color="">}}




{{<matomeQuote body="DuckDBはネイティブで同時書き込みできないんだよね。DuckDBの設計思想的に。詳しくはここ見て→https：//duckdb.org/docs/stable/connect/concurrency.html#writ…" userName="thenaturalist" createdAt="2025/04/24 15:39:37" color="#ff5733">}}




{{<matomeQuote body="できるけど、パフォーマンスはイマイチらしいよ。→https：//github.com/duckdb/duckdb/discussions/10161" userName="nasretdinov" createdAt="2025/04/23 17:51:16" color="">}}




{{<matomeQuote body="まあ、よく分かんないけど。でもOLAPの世界じゃ、その議論は古いんだよね。今はパフォーマンスが劇的に良くなってる可能性もあるかも。" userName="theLiminator" createdAt="2025/04/23 21:21:35" color="">}}




{{<matomeQuote body="Clickhouseはネットワークサーバーで、duckdbとpolarsはインプロセスデータベース。例えるならpostgres vs sqlliteみたいな感じ。" userName="spatular" createdAt="2025/04/24 15:43:58" color="#ff33a1">}}




{{<matomeQuote body="chdbってのもあるよ。" userName="theLiminator" createdAt="2025/04/25 16:59:46" color="">}}




{{<matomeQuote body="materializationオプションとは関係ないけど、この記事の「1億5千万の値をソートして上位3件を70msで返す」って部分に目が留まった。カラム指向DBだと特定のカラムだけ読み込めばいいから速いんだね。それにメモリ使用量も少ないし！この記事すごく分かりやすいし、勉強になった。" userName="simonw" createdAt="2025/04/22 16:38:20" color="#45d325">}}




{{<matomeQuote body="1億5千万個の整数を70msでソートするのが驚くべきことじゃないってのはわかるけど、そもそもそんな大量の整数をソートすること自体にビックリだわ。クエリは上位3つを見つけてソートして返すんだよね。これなら、見つけた上位3つを保持してリストをスキャンするだけで済むじゃん。メモリの速度とほぼ同じで、追加のストレージもほぼ不要なはず。Clickhouseがこの最適化をしてるかは知らんけど。一般的に、n個の要素からk番目に良いものをO(n)で見つけられるし、上位k個を再度スキャンするのも簡単。ミューテートがダメなら、別のデータ構造に上位k個を保存すればO(n log k)でできる。もっと良い方法もあるかもだけど。" userName="amluto" createdAt="2025/04/22 16:52:19" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="上位3つを保持してスキャンする方法だと、正確性が保証されないんじゃない？ユニークな値を全部追跡しないと、一番多い値を捨ててしまう可能性があるよ。Wikiの記事は、最小値について書いてあるみたいだし。" userName="Akronymus" createdAt="2025/04/22 17:13:14" color="">}}




{{<matomeQuote body="上で言及されてるmax-heapアルゴリズムは正しいよ。最初にk個の値を入れて、その後は最大要素を覗き見する。現在の値が最大要素より小さければ、最大要素を追い出して新しい要素を入れる。このストリーミングtop-kアルゴリズムは、leetcodeの面接とかアプリでよく使われるよ。" userName="senderista" createdAt="2025/04/22 17:26:42" color="#45d325">}}




{{<matomeQuote body="過剰なクラウドホスト上の遅いVMのせいでエンジニアリングがおかしくなってる気がする。MacBookからでもホストできることたくさんあるのに。スタートアップなら最初の数年はミニPCで十分だよ。" userName="baq" createdAt="2025/04/22 17:28:45" color="">}}




{{<matomeQuote body="quickselectを擁護するわけじゃないけど、遅延データ処理フレームワークで、データはマテリアライズされてるけどソートされてない「遅延ソートされたデータカラム」って概念があるかもね。誰かが“LIMIT k”したら、quickselectが使える。トレードオフは色々あるけど、kがキャッシュに収まるくらい小さいなら、quickselectは競争力がないと思う。" userName="amluto" createdAt="2025/04/22 17:45:53" color="">}}




{{<matomeQuote body="k=3ならheapは使わないな。heapはコンパクトだけど局所性が悪いから、キャッシュの外だと性能が出ないかも。" userName="senderista" createdAt="2025/04/22 17:50:56" color="">}}




{{<matomeQuote body="一番多かったk個じゃなくて、最大のk個だと読み間違えたのが失敗だった。" userName="Akronymus" createdAt="2025/04/22 17:29:46" color="">}}




{{<matomeQuote body="一番多いk個はマジで面白い問題だよね。定数スペースで1回のパスで解決できないからね！https://en.wikipedia.org/wiki/Streaming_algorithm#Frequent_e..." userName="senderista" createdAt="2025/04/22 17:36:05" color="">}}




{{<matomeQuote body="quickselectは複数回のパスが必要で、heapはO(n log k)の時間が必要。でも、O(n)の時間とO(k)のスペースでトップk個を見つけられるよ。バッファを2*k個まで保持して、ストリームを1つずつスキャンする。バッファが一杯になったら、quickselectでk個に減らす。" userName="eru" createdAt="2025/04/22 18:46:57" color="#ff33a1">}}




{{<matomeQuote body="ざっくり計算してみよう。1億5千万個のu32整数は600MB。最近のSSDなら14,000MB/sでシーケンシャルリードできるから、600MBの読み込みは43ms。DDR4メモリなら25GB/sだから24ms。L1/L2キャッシュなら1TB/s。CPUが32個あるから、L1/L2の帯域幅は32TB/s。600MBを0.018msで処理できる。70msの予算があれば、166回処理できる。quickselectみたいなランク選択アルゴリズムはO(N)だから、70msで600MBを処理するのは全然可能。" userName="ww520" createdAt="2025/04/23 01:17:08" color="#785bff">}}




{{<matomeQuote body="max-heapみたいなの使わずに、どうやって効率的に一番ダメな要素を追跡するんだろ？これ面白いアルゴリズムだね。前に見たことある気がするけど、どこで見たか思い出せない。どこで知ったの？" userName="senderista" createdAt="2025/04/22 19:46:53" color="">}}




{{<matomeQuote body="125 MiB/sのSSD使ってるって言ってるけど、このカラムってユニークな値が47500個くらいしかないみたいだね。多分、投票がゼロか1件のレビューが多いんだろうな。このカラムは圧縮されてるから、もっと早くロードできるのかも。" userName="codedokode" createdAt="2025/04/23 04:27:46" color="#ff5733">}}




{{<matomeQuote body="もしxがworstより大きかったら、worst = x" userName="porridgeraisin" createdAt="2025/04/23 05:01:05" color="">}}




{{<matomeQuote body="確かにそうだね。データ領域が小さいと、1億6千万の値の中に重複が多いから、データはかなり圧縮できるはず。" userName="ww520" createdAt="2025/04/23 04:47:04" color="">}}




{{<matomeQuote body="macbookの話をするな！クラウドなら数百GiBのRAMが使えるんだよ。Macbookで同じことしようとしたら、クラウドの料金より高くなる。" userName="rfoo" createdAt="2025/04/22 19:24:44" color="">}}




{{<matomeQuote body="なんでそれが面白いんだ？最悪のケースは、n個中n-1個がユニークな要素で、最後の要素が重複する場合だよね。それだとO(n)のスペースが必要になるのは避けられない。どの要素が一番多いかわからないから、全部保持しなきゃいけない。" userName="3np" createdAt="2025/04/22 18:40:52" color="">}}




{{<matomeQuote body="え？このアルゴリズムは、最小と最大で完全に左右対称だし、完全に正しくて一般的だよ。ユニークな値の問題が理解できない。問題を示す最小限の入力を教えて。" userName="recursive" createdAt="2025/04/22 17:20:47" color="#ff5733">}}




{{<matomeQuote body="記事に70 Mbのストレージを使ってるって書いてあった。もしソートされてたら（つまりインデックスだったら）、もっと少ないスペースで済むはず。でも、70 msで125 MiB/sのSSDを使って70 Mbのデータをロードできたのが理解できない。" userName="codedokode" createdAt="2025/04/23 05:32:29" color="">}}




{{<matomeQuote body="計算能力だけ見れば、ほぼ正しい（クラウドホストはオーバープロビジョニングされてないから、CPUとかメモリとかディスクは全部使える）。でも、計算能力だけじゃなくて、データベースとかキャッシュとかメッセージブローカーとかスケジューラーとか、メール送信とか、色々必要になるんだよ。FOSSソフトで自作できるけど、時間がかかる。お金があるなら既製のサービスを使った方がいい。時間がないなら自作も勉強になる。" userName="sofixa" createdAt="2025/04/22 18:33:55" color="#38d3d3">}}




{{<matomeQuote body="それが根本的な原因だとは思えないな。ClickHouseとかSnowflakeは、オーバープロビジョニングされたクラウドの遅いVM上で動いてるけど、めちゃくちゃ効率的だよ。要は最適化次第。問題は、エンジニアのほとんどが、単純なコードに対して過剰なプロビジョニングをして、非効率な4次言語を使って、5種類の無駄な（個人的には）抽象化の上に構築していること。" userName="ramraj07" createdAt="2025/04/22 21:00:10" color="#ff33a1">}}




{{<matomeQuote body="なるほどねー。maxとかminとかsumを保持するのは簡単だよね。insertだけなら。削除はまとめてやるから、その時に線形コスト払ってbucketを作り直せばいいし。うちの場合はもっと簡単で、bufferの中で一番悪いelementはpruningの時にしか更新されないんだ。最初k個は特別扱いだけど、それ以外はworstより良いelementしかinsertしないから、更新する必要ないんだよね。" userName="eru" createdAt="2025/04/23 19:11:27" color="#ff5c5c">}}




{{<matomeQuote body="set membershipの線形空間の下限にも同じような議論が当てはまるよね。でも、こういう線形下限があるから、sublinearな近似テクニックを探すモチベーションになるんだよね(Bloom filterとかfingerprint tableは実際にはsublinearじゃないけど)。" userName="senderista" createdAt="2025/04/22 19:50:38" color="">}}




{{<matomeQuote body="mutableじゃないstreaming inputなら、O(k)の追加メモリだけでunsorted top kをO(n)で取得できるアルゴリズムがあるよ。2kのbufferを維持して、mutable unsorted top kを動かして、小さい方の半分を捨てて、次のk個をstreamすればいいんだ。sortは最後にすればいいし。" userName="kevinventullo" createdAt="2025/04/23 02:56:30" color="#ff5733">}}




{{<matomeQuote body="それ引用してるやつ、全然違う問題を解いてるじゃん。一般的なmost common kを求めるものじゃないよ。" userName="eru" createdAt="2025/04/23 06:06:29" color="">}}




{{<matomeQuote body="あー、そっか。evictはbottom halfをpruningする時だけだ。" userName="senderista" createdAt="2025/04/23 19:50:08" color="">}}




{{<matomeQuote body="もしかしたらそういうoptimizationがあるから、~600MBのintegerに対して3.59 MiBのpeak memory usageなのかもね。" userName="simonw" createdAt="2025/04/22 17:55:53" color="">}}




{{<matomeQuote body="最終的な行セットに含まれない可能性のある列値を持つ行がないデータブロックを読み込む必要はない。すべてのgranuleのすべての列に、そのgranule内で見られる最小値と最大値を含むヘッダーがある場合、ClickHouseは列データを読み込む必要なく、granuleごとに列ヘッダーのみを読み取って確認できる。" userName="valyala" createdAt="2025/04/25 06:15:29" color="#38d3d3">}}




{{<matomeQuote body="「遅いクエリ」と「速いクエリ」に関する最新の直感は、過小評価されているソフトウェアエンジニアリングのスキルだと思う。こういうブログを読むだけでも価値がある。" userName="skeptrune" createdAt="2025/04/23 01:35:34" color="#ff5733">}}




{{<matomeQuote body="true/falseを返すequalityなら、これで正確性が保証されるね。best/biggest/smallest valueが3つありえるなら、このテクニックは使えるよ。" userName="datadrivenangel" createdAt="2025/04/22 17:21:49" color="">}}




{{<matomeQuote body="ごめん、wikiの記事を完全に読み間違えてコメントしちゃった。もっと注意深く読んだら、自分が間違ってたことに気づいた。特にtop 3 most common valueについて考えてたんだ。" userName="Akronymus" createdAt="2025/04/22 17:23:55" color="">}}




{{<matomeQuote body="Late Materializationって概念、19年も前からあったんだね。マジか。https://dspace.mit.edu/bitstream/handle/1721.1/34929/MIT-CSA…" userName="kwillets" createdAt="2025/04/23 05:21:12" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="columnar/vectorized executionも同じようなもんでしょ。OLAPのワークフローにはそれが“正しい”データ処理だって昔から知られてたけど、ここ数年でやっと“主流”になった感じ（ほとんどarrowのおかげ）。ClickHouseが今頃採用するのはちょっとなー。でも、analytics処理で標準じゃないのは残念。" userName="ignoreusernames" createdAt="2025/04/23 13:25:18" color="">}}




{{<matomeQuote body="ClickHouseの方がApache Arrowより前からあるよ。" userName="AlexClickHouse" createdAt="2025/04/28 18:49:53" color="">}}




{{<matomeQuote body="C-storeの考え方が全然浸透してない気がする。ClickHouseの場合は、オープンソースのブートストラップ型プロジェクトだったから仕方ないかもだけど。資金注入で基本的な再設計してるみたいだし。でも、Verticaをゆっくり再実装するのはビジネスモデルとしてどうなんだろ。" userName="kwillets" createdAt="2025/04/23 15:05:32" color="">}}




{{<matomeQuote body="ClickHouseにWSLとかLinuxの仮想マシンいらないWindowsネイティブ版があれば、DuckDBより人気出ると思うんだよね。MySQLがPostgreSQLよりずっと人気だった理由の一つは、Windowsインストーラーがあったからだし。" userName="mmsimanga" createdAt="2025/04/22 21:04:43" color="#785bff">}}




{{<matomeQuote body="ClickHouseってDuckDBよりすでに人気あるんじゃないの？" userName="skeptrune" createdAt="2025/04/23 01:57:59" color="">}}




{{<matomeQuote body="GitHubのスター数はDuckDBが28kで、ClickHouseが40kだから、かなり近いね。でも、HNだとDuckDBの方がよく話題に上がってる気がする。" userName="nasretdinov" createdAt="2025/04/23 07:34:34" color="">}}




{{<matomeQuote body="サーバーとかデータベースって、だいたいLinuxで動いてるイメージだけど。" userName="codedokode" createdAt="2025/04/23 06:19:01" color="">}}




{{<matomeQuote body="確かにそうかもね。でもWindowsはデスクトップとラップトップの71%で動いてるんだよ[1]。自分の経験だと、アプリって最初は簡単なデスクトップで作られて、成功したらサーバーに移行することが多い。自分はanalyticsの仕事してるけど、ロックダウンされたWindowsデスクトップで、MySQL、MariaDB、PostgreSQL、DuckDBとか全部試せた。ClickHouseはまだ試せてない。これは自分の経験ね。[1]https://en.wikipedia.org/wiki/Usage_share_of_operating_syste…" userName="mmsimanga" createdAt="2025/04/23 08:20:53" color="#45d325">}}




{{<matomeQuote body="それもそうだけど、デスクトップがロックダウンされてたら、インストールに必要な管理者権限がない場合もあるよね（特にDRMとかライセンス使うソフト）。だからWindows版があっても動かせないかも。" userName="codedokode" createdAt="2025/04/23 20:46:56" color="#ff33a1">}}




{{<matomeQuote body="ClickHouseは組み込みもできるの忘れずにね。Duckにすぐ飛びつくのは hypeのせいかも(試すたびにバグだらけ)。[https://clickhouse.com/blog/chdb-embedded-clickhouse-rocket-](https://clickhouse.com/blog/chdb-embedded-clickhouse-rocket-...)" userName="Onavo" createdAt="2025/04/22 19:02:26" color="">}}




{{<matomeQuote body="Chdbマジ最高だけどduckdbも良いよね" userName="sirfz" createdAt="2025/04/22 20:36:35" color="">}}




{{<matomeQuote body="Clickhouseはパフォーマンスへのこだわりがハンパない、現代エンジニアリングの傑作だね。" userName="justmarc" createdAt="2025/04/22 21:37:49" color="#785bff">}}




{{<matomeQuote body="空港のドラマはさておき、最高の休暇にするためにeReaderに最高のコンテンツを詰め込むぞ！技術情報と図解が素晴らしいだけでなく、物語が織り込まれているのが良いよね。" userName="skeptrune" createdAt="2025/04/23 02:00:45" color="">}}




{{<matomeQuote body="ClickHouseとStarRocks[0]って比較した人いる？数ヶ月前はStarRocksの方がJoin性能が良かった気がするけど、今はどうなんだろう？[0] [https://www.starrocks.io/](https://www.starrocks.io/)" userName="xiasongh" createdAt="2025/04/23 06:29:48" color="">}}




{{<matomeQuote body="ClickBenchにベンチマークがあるよ！[https://benchmark.clickhouse.com/#eyJzeXN0ZW0iOnsiQWxsb3lEQi](https://benchmark.clickhouse.com/#eyJzeXN0ZW0iOnsiQWxsb3lEQi)..." userName="fermuch" createdAt="2025/04/23 17:36:44" color="#ff5c5c">}}




{{<matomeQuote body="でもclickbenchにはJoinがないじゃん…" userName="riku_iki" createdAt="2025/04/24 18:34:55" color="">}}




{{<matomeQuote body="ClickHouseみたいなDBを見ると、row-basedなDBは何か間違ってるんじゃないかって思っちゃう。btreeインデックスを使ってもこのスピードには全然届かないもん。transactionは強いけどね。現代のマシンの速さに驚くよ。データセットも圧縮すればもっと小さくできたはず。Cloudflareの記事で暗号化が無料（decryptの方が速い）っていうのがあったけど、それと同じだね。compute engine (chdb) はマジで使える。" userName="vjerancrnjak" createdAt="2025/04/22 19:51:42" color="#38d3d3">}}




{{<matomeQuote body="row-basedなDBが何か間違ってるわけじゃないよ。target workloadが違うんだ。Row-based -＞ OLTP -＞ “user_id = XYZ のorder tableからレコード全体を取得する”Column-based -＞ OLAP -＞ “order table から月/年ごとの注文合計金額を計算する”" userName="apavlo" createdAt="2025/04/22 20:40:49" color="#38d3d3">}}




{{<matomeQuote body="user idでフィルタリングするのもめっちゃ速いと思うよ。トランザクションが遅くなる原因のほとんどだよね。isolation levelとか、古いデータを読んだ時のエラーとかさ。違いは分かるけど、カラムのコピーを持つindex構造でも、read/writeレートに近いものがないのが残念だよね。似たようなパーティショニングでwrite/readレートが改善されるのは知ってるけど、この規模じゃないんだよなー。" userName="vjerancrnjak" createdAt="2025/04/23 00:10:11" color="">}}




{{<matomeQuote body="もしかしたら、最近流行りの“new SQL”ハイブリッドデータベース(HTAP)に興味あるかもね。TiDBが一番有名な例かな。" userName="FridgeSeal" createdAt="2025/04/23 02:21:58" color="">}}




{{<matomeQuote body="この分野じゃまだ経験不足なのかもだけど、この仕組みを読んだ感じだと、当然の最適化だと思うんだよね。違うかな？でも、ClickHouseが業界リーダーなのは間違いないよね。" userName="simianwords" createdAt="2025/04/22 17:41:47" color="">}}




{{<matomeQuote body="当たり前の解決策ほど、正しく実行するのが難しいんだよね。これを実現するために必要なコードは、めっちゃ複雑か、書くのに時間がかかった(テストも)。あるいは両方かな。" userName="ahofmann" createdAt="2025/04/22 17:57:00" color="#45d325">}}




{{<matomeQuote body="これって有名な最適化手法の１つで、“late materialization”って呼ばれてるんだよね。この戦略を含む、大きな戦略セットだよ。Late materializationはカラムストアと同じくらい古いんだ。" userName="ryanworl" createdAt="2025/04/22 19:11:03" color="#785bff">}}




{{<matomeQuote body="これがサブクエリとかCTEにどれだけ影響するか気になるな。" userName="ohnoesjmr" createdAt="2025/04/22 18:21:42" color="">}}




{{<matomeQuote body="Apache Druidってまだこの分野で使われてるのかな？最近全然聞かないけど。ClickHouseを選ぶ理由ってなんだろう？" userName="apwell23" createdAt="2025/04/23 03:45:54" color="">}}




{{<matomeQuote body="もしくはApache Doris…私も気になる。" userName="anentropic" createdAt="2025/04/23 12:00:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
