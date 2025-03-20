+++
date = '2025-03-13T00:00:00'
months = '2025/03'
draft = false
title = '最強のレイテンシを実現するIOデバイスの秘密とは'
tags = ["レイテンシ", "IOデバイス", "パフォーマンス", "SQLite", "NVMe"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> 最強のレイテンシを実現するIOデバイスの秘密とは

引用元：[https://news.ycombinator.com/item?id=43355031](https://news.ycombinator.com/item?id=43355031)

{{<matomeQuote body="ブログの作者です。この記事を書くのが楽しかった。今までで一番複雑な記事で、インタラクティブなビジュアルのために数千行のjsを書いたよ。みんな楽しんでくれるといいな。" userName="bddicken" createdAt="2025-03-13T17:19:06" color="#ff5733">}}

{{<matomeQuote body="アニメーションが素晴らしくて、インタラクティブな部分もすごい！例えとしてHDDとSSDのレイテンシの違いを視覚化するのが分かりやすくて、仕事で説明することが多いから助かる。すごい作品だね。" userName="b0rbb" createdAt="2025-03-13T21:59:18" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！ビジュアルがこの投稿に特別な要素を加えていると思う。時間がレイテンシ説明の重要な要素だからね。" userName="bddicken" createdAt="2025-03-13T23:22:07" color="#ff33a1">}}

{{<matomeQuote body="視覚重視の人々のために技術的な娯楽とブランド構築へのマーケティング予算投資にリーダーシップをありがとう！" userName="walterbell" createdAt="2025-03-14T15:52:42" color="">}}

{{<matomeQuote body="ビジュアルが素晴らしい；バウンスボックスはレイテンシの相対的な例えとして今まで見た中で一番いいと思う。あなたの”1 in a million”の耐久性についての意見は、ダウンタイムの短さを考慮すると悲観的すぎるんじゃない？例えば、回復が10分だとしたら、3つのサーバーが月に1回ずつ故障する保証があったら、実際には200万分の1じゃないかな。顧客が100万人いるときに1 in a millionは良くないよね！" userName="jasonthorsness" createdAt="2025-03-13T17:48:19" color="#ff33a1">}}

{{<matomeQuote body="＞あなたの”1 in a million”の耐久性についての意見は、ダウンタイムの短さを考慮すると悲観的すぎるんじゃない？もちろん。本当の耐久性はこれより遥かに高い。誰もデータを失う心配をする必要がないっていう安心感を提供しているんだ。" userName="bddicken" createdAt="2025-03-13T18:00:54" color="#ff33a1">}}

{{<matomeQuote body="＞一つのサーバーにすべてのデータを保存するのではなく、いくつかのコンピュータにレプリケートすることができる。一般的にはプライマリサーバーがすべての書き込みリクエストを受け取り、そのデータが2つ以上の追加サーバーにレプリケートされるという方法がある。この三つの場所にデータがあれば、データを失う可能性が非常に小さくなるってことだよね。私の理解は合ってる？" userName="alfons_foobar" createdAt="2025-03-13T21:43:31" color="#ff33a1">}}

{{<matomeQuote body="PlanetScale Metalでは半非同期レプリケーションを使っていて、プライマリがコミットする前に少なくとも1つのレプリカからACKを受け取る必要があるよ。" userName="bddicken" createdAt="2025-03-13T23:24:45" color="#45d325">}}

{{<matomeQuote body="あの…やっぱりネットワークホップがあるってこと？" userName="alfons_foobar" createdAt="2025-03-14T14:03:07" color="">}}

{{<matomeQuote body="書き込みの場合はそうだけど、ワークロードが90%リードだったらどうなるの？" userName="bddicken" createdAt="2025-03-15T20:31:14" color="">}}

{{<matomeQuote body="確かに読み込みが多いワークロードにはすごく合ってるね！もっと裏で何が起きてるか理解したくてさ。" userName="alfons_foobar" createdAt="2025-03-16T09:33:59" color="">}}

{{<matomeQuote body="リクエストを受け取った時にAckは送られるの？それともリモートのディスクに保存された時？" userName="anonymousDan" createdAt="2025-03-14T00:04:23" color="">}}

{{<matomeQuote body="これを作った人に感謝だね！ちょっと脱線だけど、これを使った教材は中高生にリアルな学びを提供できると思う。" userName="the_arun" createdAt="2025-03-13T18:16:53" color="#38d3d3">}}

{{<matomeQuote body="これが高校のカリキュラムで使われたらすごくいいね。" userName="bddicken" createdAt="2025-03-13T19:04:50" color="">}}

{{<matomeQuote body="サーバー3台が1ヶ月でダウンする確率は百万分の1だって。失敗したノードをすぐに交換すれば、リスクは大きく下がる。計算は合ってるかもだけど、30分の間に全滅する確率は213,160,000分の1になるんだ。" userName="mixermachine" createdAt="2025-03-13T19:03:37" color="#38d3d3">}}

{{<matomeQuote body="でも、失敗は独立で無関係だと仮定してる点が気になる。実際には、失敗が相関していることは多いから、リスクがより高くなるかも。" userName="TylerE" createdAt="2025-03-14T06:38:49" color="#ff5733">}}

{{<matomeQuote body="その通りだね。サーバーの場所によってかなり影響される。失敗が無関係だって見積もりは簡単だけどさ。" userName="mixermachine" createdAt="2025-03-15T12:27:59" color="">}}

{{<matomeQuote body="努力のレベルがすごく伝わってくるよ。どれくらいの時間を費やしたと思う？キーボードでの時間と頭の中で考える時間は全然違うよね。" userName="zalebz" createdAt="2025-03-13T17:32:55" color="">}}

{{<matomeQuote body="ありがとう！去年の10月から始めて、他のこともやってきたけど、これには200時間以上かけたね。参考までに、合併用のgit diffは＋5,820、−1だよ。" userName="bddicken" createdAt="2025-03-13T17:37:44" color="#45d325">}}

{{<matomeQuote body="半分オンテーマだけど、アニメーションに使ったライブラリは何？ソースページからはすぐに分からないから。コンテンツについては十分に分かってるから、特に意見はないけどさ。" userName="dormando" createdAt="2025-03-13T17:47:25" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="d3.jsをめっちゃ使って作ったよ。" userName="bddicken" createdAt="2025-03-13T17:52:39" color="">}}

{{<matomeQuote body="小ネタだけど、MacOSのChrome 133.0.6943.142では見れなかった。Firefoxでは問題なし。" userName="petedoyle" createdAt="2025-03-13T19:58:30" color="">}}

{{<matomeQuote body="こっちはFirefoxでアニメーションが無いけど、Braveではちゃんと表示される。ブラウザコンソールがこちらのリンクをバンバン出してる：＜https://react.dev/errors/418?invariant=418＞。追記：どうやらユーザースタイルの拡張機能が原因みたい。Reactがそれを嫌ってページが壊れちゃう。" userName="homebrewer" createdAt="2025-03-13T20:02:37" color="#45d325">}}

{{<matomeQuote body="おお、興味深い！理想的ではないけど、拡張機能の問題なんだね。" userName="bddicken" createdAt="2025-03-13T20:44:28" color="">}}

{{<matomeQuote body="面白いね。何かブラウザの拡張が影響してるかも？コンソールのエラーも教えて。" userName="bddicken" createdAt="2025-03-13T20:45:04" color="">}}

{{<matomeQuote body="やっぱりそうだった！拡張機能を一つずつ無効にしていったらreflect.appの拡張だと判明。編集：彼らのDiscordに報告したよ。大丈夫だった！素晴らしい作品だね！" userName="petedoyle" createdAt="2025-03-13T21:02:44" color="#ff5c5c">}}

{{<matomeQuote body="こういうデータビジュアライゼーションが大好き。スケールの比較を内面化するのが苦手だけど、視覚化で直感がかなり掴めるよ。素晴らしい仕事、ありがとう！" userName="anymouse123456" createdAt="2025-03-14T11:58:09" color="#785bff">}}

{{<matomeQuote body="時間要素がある分、視覚が特に重要だと思う。いい感じだね。" userName="bddicken" createdAt="2025-03-14T16:18:44" color="#ff5c5c">}}

{{<matomeQuote body="あなたのテープ操作モデルを見て嬉しかった。COBOL時代にかなり使ってた。記事の理由で、シーケンシャルスキャンを最大限に使おうとしたけど、COBOLはそれが得意だった。処理速度の遅さとドライブヘッドからくるブロックの流れにギャップがあると、ドライブがオーバーシュートしちゃって、追いつけなくなる。コードを見直して修正してた。" userName="hodgesrm" createdAt="2025-03-16T17:26:10" color="#ff33a1">}}

{{<matomeQuote body="Bartosz Ciechanowskiの影響を受けてる？最初に思ったのは、彼がこの投稿のビジュアルを担当したのかと思ったよ。" userName="AlphaWeaver" createdAt="2025-03-13T20:56:03" color="">}}

{{<matomeQuote body="素晴らしいプレゼンテーションだね。概念を理解するのに役立つよ。ただ、SSDの並列処理の影響が少し過小評価されてる気がする。ハイエンドのデバイスでは8チャンネルコントローラーが一般的で、4KランダムIOPSはキューの深さとともにスケールするんだけど、入門としてはこの例で十分かも。PlanetScaleがこの方向に進んで知識を共有してるのを見るのはいいね。" userName="logsr" createdAt="2025-03-13T18:54:03" color="#38d3d3">}}

{{<matomeQuote body="情報ありがとう！もっと学びたい人のために、参考になる資料とかあれば教えてほしいな。" userName="bddicken" createdAt="2025-03-13T19:40:21" color="">}}

{{<matomeQuote body="EC2でローカルのNVMeが付いてるメタルインスタンスって実際に何なの？最小の遅いGravitonを除いて、AWSでベアメタルインスタンスを取得するには月に約2.3k USDかかるって前に見たけど。" userName="alexellisuk" createdAt="2025-03-13T17:48:48" color="">}}

{{<matomeQuote body="視覚化が素晴らしいね。見たり遊んだりするのが楽しくて、記事ととても合ってる。これを誇りに思っていいよ、すごく楽しめた。" userName="tombert" createdAt="2025-03-13T21:54:41" color="#ff5c5c">}}

{{<matomeQuote body="Safariではアニメーションが見えないんだ。可変幅のフォントが好みだし、モノスペースの文章は読みづらい。それにReader Modeを使うとテキストの色付けが消えちゃうし、視覚効果も隠れちゃうかも。" userName="layer8" createdAt="2025-03-14T02:53:48" color="">}}

{{<matomeQuote body="面白いね！何かエラーが報告できることある？Safariでも動くはずだけど、カスタム設定があるのか、古いバージョンを使ってるのかな？" userName="bddicken" createdAt="2025-03-14T02:58:54" color="">}}

{{<matomeQuote body="AndroidのChromeを使ってるけど、AdGuardがあなたの視覚化を全部ブロックしてるよ、FYI。" userName="chris_pie" createdAt="2025-03-14T14:18:27" color="">}}

{{<matomeQuote body="視覚化が一つも見当たらないんだ。JavaScriptを使わずにウェブを使ってるから、静的な画像を埋め込むか追加してはどうかな？" userName="inetknght" createdAt="2025-03-13T17:23:29" color="">}}

{{<matomeQuote body="視覚化がこの記事にとても貢献してるね。全体のテーマはレイテンシーで、視覚化によってテープがHDDより遅く、HDDがSSDより遅い理由がわかりやすくなるし、楽しいよ。最近はJavaScriptなしで、何をしてるの？" userName="bddicken" createdAt="2025-03-13T17:28:01" color="#ff33a1">}}

{{<matomeQuote body="＞”最近はJavaScriptなしで、何をしてるの？”<br>ウェブを閲覧したり、メールの送受信をしたり、ストーリーを読んだり、ゲームをしたり、普通のことをしてるよ。主にネイティブアプリを使って、JavaScriptを使うサイトを選んでるんだ。" userName="inetknght" createdAt="2025-03-13T17:31:50" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="SQLite+NVMeの組み合わせを推してるんだけど、これでいつも通りよりもトラブルに深くハマれるかもしれないんだ。場合によっては、水平スケールせずに解決できちゃうかも。レイテンシはパフォーマンスの王様だし、特にアイテムをシリアルに処理しなきゃいけないケースではね。SQLiteをNVMeで動かせば他にはないレイテンシの利点が得られると思う。実際の使い方では、メモリ上で動かすよりもNVMeの方が大きな効果があるとは思えない。" userName="bob1029" createdAt="2025-03-13T18:05:58" color="#ff5c5c">}}

{{<matomeQuote body="SQLiteを選ぶ理由って何だろう？Postgresみたいな従来型のクライアントサーバーDBの方がいいんじゃない？単一ホストなら少し早いかもしれないけど、2台のWebサーバーがあったらお互いにDBに書き込むのが大変になるし。＞“レイテンシはパフォーマンスの王様だ”ってのはちょっと誤解を招くかな。まず、一貫性がないとパフォーマンスは意味がないし、複数のWebサーバーがあるとその問題が出てくる。" userName="crazygringo" createdAt="2025-03-13T19:35:46" color="">}}

{{<matomeQuote body="SQLiteのシングルライター制限に当たるまでは、Postgresにより多くのCPUサイクルを使う必要はないよ。" userName="conradev" createdAt="2025-03-13T20:13:45" color="">}}

{{<matomeQuote body="その制限は、特にリードオンリーなSQLiteやセッションごとに一つのSQLiteに計画を立ててない場合、すぐに直面することになるよ。" userName="chatmasta" createdAt="2025-03-14T03:05:09" color="">}}

{{<matomeQuote body="うーん、想像つかないな。ほとんどのCRUDアプリはOLTPでリードオンリーなんじゃないかな。普通のCRUDアプリでSQLiteをぎりぎりまで使うには、数千の同時ユーザーが必要になる気がする。" userName="conradev" createdAt="2025-03-14T18:47:05" color="">}}

{{<matomeQuote body="ほとんどの企業のOLAP処理ではその制限には達しないと思うよ。ほとんどがリードオンリーのSQLiteだからね。書き込みは通常、バッチ処理されてて、業務外に実行されるからSQLiteの制限は関係ないんだ。" userName="spratzt" createdAt="2025-03-14T10:07:07" color="#45d325">}}

{{<matomeQuote body="バッチ処理はどこでやってるの？" userName="andai" createdAt="2025-03-14T16:54:11" color="">}}

{{<matomeQuote body="DuckDBの信者が操ってる別のシステムだよ。" userName="chatmasta" createdAt="2025-03-14T17:45:07" color="">}}

{{<matomeQuote body="必要になる可能性が高いなら、最初からPostgresを選んだ方がいいと思うよ。SQLiteから後で切り替えるのは手間だからね。小さなトラフィックなら、ウェブアプリと同じホストで動かすのは簡単だし、Unix認証ならパスワードも管理いらないし。複数のライターが必要になった時に、DBクエリを全部書き直す必要はないよ。" userName="theamk" createdAt="2025-03-14T03:57:23" color="#ff5c5c">}}

{{<matomeQuote body="全体の目的はネットワークの遅延を避けることなんだ。アプリケーション <-> SQLite <-> NVMeは、アプリケーション <-> Postgresクライアント <-> ネットワーク <-> Postgresサーバー <-> NVMeよりも桁違いにレイテンシが少ない。＞“できるだけシリアルなDBクエリを避けるべき”っていうのは、その決定権は俺にはないんだ。ビジネス側が決めるから。" userName="bob1029" createdAt="2025-03-13T20:36:28" color="">}}

{{<matomeQuote body="Postgresは同じマシンでUnixソケットをサポートしてるよ。そのおかげで127.0.0.1のTCPスタックよりレイテンシが大幅に改善されるんだ。" userName="myflash13" createdAt="2025-03-14T07:39:29" color="#ff33a1">}}

{{<matomeQuote body="”…は桁違いにレイテンシが少ない…”って本当？ローカルネットワークアクセスはローカルIPCと大差ないはずだよ。" userName="sedatk" createdAt="2025-03-13T20:52:49" color="">}}

{{<matomeQuote body="＞ローカルネットワークアクセス　MySQLやPostgres、DB2、Oracleなどがアプリケーションと同じマシンで動くプロダクションシナリオってどんなの？ほとんどのベンダーはそうするなって言うと思う。" userName="bob1029" createdAt="2025-03-13T23:10:37" color="">}}

{{<matomeQuote body="95％のウェブサイトがAmazonやGoogleじゃないの？小さなVMで運営されているサイトはたくさんあるよ。Postgresは512MBの環境でも快適に動くからね。" userName="TylerE" createdAt="2025-03-14T06:41:55" color="">}}

{{<matomeQuote body="SQLiteをローカルで使うなら、Postgresもローカルで使うのは全然ありだよ。シャーディングの問題も解決済みなんだからさ。" userName="chatmasta" createdAt="2025-03-14T03:04:06" color="">}}

{{<matomeQuote body="＞私はほとんどのベンダーがそうするなって言うと思う　それは違うよ。Apacheが動いてる同じホストにPostgresやMySQLを置くのは、新しく始めるサイトでは非常に一般的だから。512MBのインスタンスでも問題なく動くし、SSDでもかなりのトラフィックに耐えられる。人気が出たら、次はデータベースを別サーバーに分けるけど、その理由は複数のウェブサーバーが必要になるから。データベースは思ってるほど重くないよ。" userName="crazygringo" createdAt="2025-03-14T13:19:12" color="#ff33a1">}}

{{<matomeQuote body="コンテクストスイッチとmmapアクセスは、しばしばmmapアクセスより遅くなることがあるよ。" userName="bobmcnamara" createdAt="2025-03-14T03:52:15" color="">}}

{{<matomeQuote body="SQLiteにはIPCが無いんじゃない？" userName="badmintonbaseba" createdAt="2025-03-14T09:29:15" color="">}}

{{<matomeQuote body="複数のプロセスから同じデータベースにアクセスすればIPCはあるよ。" userName="nolist_policy" createdAt="2025-03-14T09:45:08" color="">}}

{{<matomeQuote body="SQLiteの同時アクセス時のIPCメカニズムについて、ファイルロックやOSが確保する原子的なIO操作以外に何かあるの？" userName="badmintonbaseba" createdAt="2025-03-14T14:08:31" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="過去にテストしたけど、PostgresはローカルネットワークよりUnixソケットの方が明らかに速いよ。" userName="myflash13" createdAt="2025-03-14T07:40:46" color="#ff33a1">}}

{{<matomeQuote body="“データベースのレイテンシは一般的にインターネットの往復レイテンシに比べて微小”って言ったんだけど、ユーザーとウェブサイトの間を指してるの。だから、ローカルネットワークのホップで注文のあるレイテンシにはならないよ。記事でもデータセンター内の往復で5倍遅いって言ってるし、データベースがクエリ実行する時間に比べれば大したことない。それに最適化しすぎるのは時期尚早な例だよ。" userName="crazygringo" createdAt="2025-03-13T21:37:37" color="#ff5733">}}

{{<matomeQuote body="SQLiteはプロセス内で動かせるけど、プロセスコンテキストスイッチでレイテンシと帯域幅が10倍悪化することもある。n＋1秒とかで開発時間が節約できることもあるよ。" userName="392" createdAt="2025-03-14T00:59:14" color="">}}

{{<matomeQuote body="＞レイテンシと帯域幅が10倍悪化することもある。そんなことはないよ。帯域幅に関する主張が意味を持たない。速度差は1％か5％の話であって、10倍じゃない。" userName="crazygringo" createdAt="2025-03-14T13:32:11" color="">}}

{{<matomeQuote body="絶対に悪化するよ。同じコアでのコンテキストスイッチは数マイクロ秒だけど、コア間を超えると数十から数百マイクロ秒かかることもある。" userName="bob1029" createdAt="2025-03-14T16:40:38" color="">}}

{{<matomeQuote body="数百マイクロ秒とかL1アクセスって何言ってるの？プロセス間の通信は、クエリ実行に必要なディスクやSSDのアクセスと処理に比べると無視できるレベルだよ。SQLiteがプロセス内で動くのはシンプルさと便利さのためだし、パフォーマンスが悪化することもある。" userName="crazygringo" createdAt="2025-03-15T13:59:13" color="#ff5c5c">}}

{{<matomeQuote body="Postgresを同じサーバーで使うならIPCのオーバーヘッドについて、自分の直感と永続的なプロセスからの節約を天秤にかけて考えてみて。SQLiteは取引の間に別のプロセスがデータベースを完全に変えちゃうから、あまりキャッシュできない。Postgresはデータベースの全てを知ってるよ。" userName="immibis" createdAt="2025-03-14T19:49:58" color="">}}

{{<matomeQuote body="SQLiteは書き込みの並列性があまり得意じゃない。サポートはしてるけど、ちょっと扱いづらくて失敗することも。特定のモードを使う以外にも、アプリで書き込み用のスレッドを一つにしておくトリックが有効。" userName="cynicalsecurity" createdAt="2025-03-13T20:13:33" color="">}}

{{<matomeQuote body="＞書き込み用のスレッドが一つだけで問題ないなら、SQLiteは絶対に優れている。コマンドをマイクロ秒単位で処理することが目的なんだから、書き込みは一つで済むのが理想だよ。金融取引所もこの前提で運営されてる。" userName="bob1029" createdAt="2025-03-13T20:38:32" color="#ff33a1">}}

{{<matomeQuote body="金融取引所が永続データストアに対してシングルスレッドの書き込みを行ってるなんて信じられない。もしそうだと証明できるリンクがあれば教えてほしい。" userName="chatmasta" createdAt="2025-03-14T03:06:17" color="">}}

{{<matomeQuote body="＞https://www.infoq.com/presentations/LMAX/ 記事のソースとしてのリンクだね。" userName="bob1029" createdAt="2025-03-14T09:36:11" color="">}}

{{<matomeQuote body="それは金融取引所じゃなくてスポーツベッティングや経費管理システムだよ。データセンターは特別なハードウェアを使ってるから、sqliteがその裏で動いてるとは思えない。オーダーマッチングはシングルスレッドだし、電子取引システムの実装について知ってる人がいたら知りたいな。" userName="diziet_sma" createdAt="2025-03-14T16:08:56" color="#785bff">}}

{{<matomeQuote body="デスクトップでNVMeディスクを使ってfsync()をやったら1〜2msのレイテンシを測定した。最新のシステムだと約800usだよ。" userName="jstimpfle" createdAt="2025-03-13T18:25:37" color="">}}

{{<matomeQuote body="あんまりそうは思わないな。これはWD 850X Gen4 SSDでのfio randwriteワークロードの結果だよ。" userName="rbranson" createdAt="2025-03-13T18:41:59" color="">}}

{{<matomeQuote body="O_DIRECTを使ったら逆に大きな違いに気づかされた。ありがとう！" userName="jstimpfle" createdAt="2025-03-13T19:26:02" color="">}}

{{<matomeQuote body="ランダム書き込みとfsyncは同じじゃない。消費者向けSSDの連続書き込みは耐久性がないからすごく速いよ。" userName="wmf" createdAt="2025-03-13T20:27:11" color="">}}

{{<matomeQuote body="これはどのドライブで、トリムが必要か？ NVMeデバイスは、特に消費者向けでは品質に差があるんだ。僕の前の仕事では、こういったレイテンシを持つドライブはアウトだったよ。" userName="dzr0001" createdAt="2025-03-13T19:14:35" color="">}}

{{<matomeQuote body="今使ってるのはSAMSUNG MZVL21T0HCLR-00BH1で新しい仕事用ラップトップに搭載されてる。250us下回ることができない。前のWD_BLACK SN850XはM.1スロットに接続されてたけど遅かったかも。今のエンタープライズハードウェアの性能についての情報を探してるんだけど、いい情報源が見つからない。" userName="jstimpfle" createdAt="2025-03-13T22:05:48" color="">}}

{{<matomeQuote body="NVMeはただのプロトコルだよ。ゴミのようなドライブから高級車並みの価格のものまでいろんなのがある。結局、DRAMのレイテンシには及ばないけどね。" userName="kev009" createdAt="2025-03-14T07:47:39" color="">}}

{{<matomeQuote body="この内容、めっちゃ役立ったし、商品を宣伝してるとは忘れちゃうくらいだよね！グラフィックやインタラクティブな部分も素晴らしかった。" userName="magicmicah85" createdAt="2025-03-13T18:23:47" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
