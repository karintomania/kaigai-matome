+++
date = '2025-10-21T00:00:00'
months = '2025/10'
draft = false
title = 'データベースを自分で構築する！難易度自在で深い学びと楽しさを手に入れよう'
tags = ["データベース", "システム設計", "プログラミング", "データ管理", "分散処理"]
featureimage = 'thumbnails/blue.jpg'
+++

> データベースを自分で構築する！難易度自在で深い学びと楽しさを手に入れよう

引用元：[https://news.ycombinator.com/item?id=45657827](https://news.ycombinator.com/item?id=45657827)




{{<matomeQuote body="この記事の元ネタは『Designing Data-Intensive Applications』って本だよ。O’Reillyのこのページで確認できるよ。<br>https://www.oreilly.com/library/view/designing-data-intensiv..." userName="nansdotio" createdAt="2025/10/21 16:31:51" color="#785bff">}}




{{<matomeQuote body="この記事は魅力的に書かれてるけど、データベースの定義に異論があるな。「永続的なデータ保存と効率的な検索」は、ファイルフォーマットかアクセスメソッドって呼ばれることが多いよ。俺が思うに、データベースのホントのキモは「クエリ評価」だね。PrologやSQLみたいな言語で質問を表現して、インデックスやマテリアライズドビューなんかで効率的に答えることだよ。dbmやISAMはデータベースじゃないけど、SQLiteのインメモリはデータベースだ。" userName="kragen" createdAt="2025/10/22 11:57:27" color="#ff5733">}}




{{<matomeQuote body="「永続的にデータを保存して、効率的に検索する」っていう定義の「効率的に」って言葉、見落としてるんじゃない？" userName="mb2100" createdAt="2025/10/23 11:05:43" color="">}}




{{<matomeQuote body="いや、見落としてないよ。多分、お前がISAMとかdbmが何かわかってないから、そう思うんだろうな。" userName="kragen" createdAt="2025/10/23 19:10:50" color="">}}




{{<matomeQuote body="数ヶ月前にErlangで自分なりのDBを組んだよ。Bitcaskとriak_coreは使ったけど、レプリケーションや耐障害性は自分でやった。めっちゃ楽しかったな。KVデータベースは、JSONのシリアライズ／デシリアライズから始めて、最終的にちゃんとしたレプリケートされたDBを作って、簡単なクエリ言語まで作ったんだ。難易度を自在に変えられるのがいいよ。" userName="tombert" createdAt="2025/10/22 01:47:43" color="#38d3d3">}}




{{<matomeQuote body="リポジトリとかある？プロダクションレディじゃなくてもいいよ。mnesiaやCouchDBと比べて、どうやってレプリケーションを処理したのか興味あるんだ。特にErlangがJSONをネイティブサポートした今、どうしてるか知りたいな。" userName="marci" createdAt="2025/10/22 07:20:05" color="#ff5c5c">}}




{{<matomeQuote body="ごめん、プライベートリポジトリなんだ。製品として売る野望があって、まだ諦めてないからね。でも、ほとんどの概念はオープンソースのriak_coreから来てるよ。ここだよ。<br>https://github.com/OpenRiak/riak_core" userName="tombert" createdAt="2025/10/22 13:51:52" color="#38d3d3">}}




{{<matomeQuote body="この記事のデザインと例がすごくいいね。めちゃくちゃ読みやすいよ。こういう演習はホント楽しいし、ゼロから何かを始めるのは自分の知識がどれだけあるか試される、いい機会になるんだ。" userName="skeptrune" createdAt="2025/10/21 19:10:29" color="">}}




{{<matomeQuote body="最初は「自分でDB作るな、KVデータベースも使うな、SQL使え」って即座に却下したくなったんだ。でも、よく考えたら、俺がそう言うのは、SQLを避けるために自分でDB作ったりKVデータベース使ったりして、結局SQLをひどく再発明してた経験があるからだなって。この経験は学ぶ価値があるかもしれないね。" userName="ashleyn" createdAt="2025/10/21 19:53:31" color="#ff33a1">}}




{{<matomeQuote body="ちょっとした批判だけど、Lorem ipsumの例を使ってるのが唯一気になるな。あれを見ると読み飛ばしたくなるから、現実的なデータの方が好きだよ。それ以外は、ホントにクールな記事だね。" userName="kevinqi" createdAt="2025/10/21 19:44:57" color="#ff5733">}}




{{<matomeQuote body="このリンクにある`exampledb.py`ってやつ、面白いかもよ。SQL文を生成してくれて、顧客や商品のデータを挿入してくれるんだ。テーブルも作ってくれるよ。会計の例だからちょっとつまんないけど、ランダムなデータが良い味出してるね。今はLLMがあるから、もっと面白いデータ作れるかもな。<br>http://canonical.org/~kragen/sw/dev3/exampledb.py" userName="kragen" createdAt="2025/10/22 12:01:11" color="#ff5733">}}




{{<matomeQuote body="俺も同じこと言おうと思ってたんだ。Lorem Ipsumだとデータが区別しにくいよね。動的な例だとテキスト生成が必要なのはわかるけど、ラテン語はベストな選択じゃないと思うな。記事は良かったよ、ありがとう！" userName="WD-42" createdAt="2025/10/21 20:32:26" color="">}}




{{<matomeQuote body="fooとかbarを例に使われると、俺も同じように感じるよ。" userName="doublerabbit" createdAt="2025/10/21 23:27:57" color="">}}




{{<matomeQuote body="誰かに、動物を例に使うのがいいってアドバイスもらったよ。できればサイズとか色が全然違う動物がいいって。そうするとみんなすぐにイメージできて、記憶に残るんだって。" userName="samwho" createdAt="2025/10/22 07:23:52" color="">}}




{{<matomeQuote body="記事はすごくいいんだけど、ハッシュテーブルがなんで高速で定数時間検索なのか、もっと詳しく説明してほしいな。インデックスがDBを速くする理由の核心だからさ。" userName="shellfishgene" createdAt="2025/10/22 08:38:32" color="#38d3d3">}}




{{<matomeQuote body="データベースを作るなら、この無料のオンラインブックもおすすめだよ！<br>https://build-your-own.org/database/" userName="myth_drannon" createdAt="2025/10/21 20:02:52" color="#ff5c5c">}}




{{<matomeQuote body="たしか1年くらい前だったかな、ここで誰かがbashの例でデータベースの概念を説明してる記事を見たんだけど（“bashでDBを書く”みたいなやつ）、どこにも見当たらないんだよね。誰か知ってる人いる？" userName="bionsystem" createdAt="2025/10/21 21:12:09" color="">}}




{{<matomeQuote body="これかな？<br>https://tontinton.com/posts/database-fundementals/" userName="pandaec" createdAt="2025/10/22 14:49:22" color="#ff5c5c">}}




{{<matomeQuote body="元記事の投稿者がブログで使ってるフレームワークはこれだよ。<br>https://github.com/nandanmen/NotANumber" userName="liqilin1567" createdAt="2025/10/22 13:20:42" color="">}}




{{<matomeQuote body="LSM treesはDynamoDBの基盤データ構造だけど、8000万rpsを捌けるってのはちょっと誤解を招くかな。LSMはノードレベルのストレージエンジンで使われてるだけで、分散システム全体でどうスケールするかは説明してないもんね。昔のDynamoはBerkeleyDB（B-treeかLSM）だったけど、2012年の論文からは完全にLSMベースになったって聞いたよ。" userName="jumploops" createdAt="2025/10/21 21:42:41" color="#ff5c5c">}}




{{<matomeQuote body="「こうしなきゃ」って考えると、やることが多すぎて頭がパンクしちゃうから、「maker」になれないんだよね。この記事も最初は面白いんだけど、どんどんストレスに感じてくる。汎用データベースを作りたいわけじゃないけど、もっと小さなタスクでも考えすぎちゃうんだ。" userName="keybored" createdAt="2025/10/21 20:05:49" color="">}}




{{<matomeQuote body="俺も全く同じ問題を抱えてたけど、最近は「信じること」が大事だって気づいて、かなり良くなったんだ。成功すると信じれば、問題は一時的な障害になる。でも失敗するって信じちゃうと、どんな問題も絶望的なものに見えちゃうからね。" userName="ozgrakkurt" createdAt="2025/10/22 08:04:49" color="#ff5c5c">}}




{{<matomeQuote body="君の意見は分かるんだけど、細かい情報を読むのと、それに深く関わるのは違うって思うんだ。もし本当にその要件を満たそうとしてるなら、すごく夢中になれるだろうけど、そうでなければ読み飛ばしちゃうよね。今週引っ越しなんだけど、考えるのはすっごく大変なのに、実際にやるのはそれほどでもないんだよ。" userName="browningstreet" createdAt="2025/10/21 20:13:34" color="#ff33a1">}}




{{<matomeQuote body="ADHDの可能性を考えたことある？" userName="nawgz" createdAt="2025/10/21 21:11:20" color="">}}




{{<matomeQuote body="データベースが内部でどう動くのか、ビジュアルも使ってすごく分かりやすく説明されてるね。筆者は素晴らしい先生だわ。" userName="TheAnkurTyagi" createdAt="2025/10/22 07:07:43" color="">}}




{{<matomeQuote body="この「first principles」アプローチで説明するやり方が本当に大好きだよ。これを読み進めると、その時々で何を解決すべき問題で、それがどんな別の問題を引き起こすのかを理解できて、最終的に納得できる解決策にたどり着けるんだ。" userName="constantcrying" createdAt="2025/10/21 20:23:15" color="">}}




{{<matomeQuote body="もし筆者がこれ読んでたら、サイトにRSSフィードを追加してくれない？Feedlyに追加したいんだけど。" userName="chrisallick" createdAt="2025/10/21 20:18:06" color="">}}




{{<matomeQuote body="Kill The Newsletterってサービスが、メール配信しかしてないサイトをフォローするのにすごく便利だよ。https://kill-the-newsletter.com/" userName="jayfair" createdAt="2025/10/22 05:42:49" color="#ff5733">}}




{{<matomeQuote body="omg天才じゃん、笑。こんなにシンプルで賢いユーティリティってすごいな。これ、Chrome拡張機能作ってみようかな。" userName="chrisallick" createdAt="2025/10/23 02:17:06" color="#ff33a1">}}




{{<matomeQuote body="これ、追加するのめっちゃ楽しみだったんだ！全体的にプロダクションの質が高いのに、見つからなくてマジでびっくりしたよ。" userName="jamwil" createdAt="2025/10/22 01:21:12" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="大学の卒業制作の一つで、C言語で基本的なデータベースを設計・プログラミングしたんだ。20年経った今でも、それがプロジェクトの中で一番面白かったと思ってるよ。" userName="darkstar_16" createdAt="2025/10/22 07:36:43" color="#ff5733">}}




{{<matomeQuote body="＞問題：データを永続的に保存し、後で効率的に参照するにはどうすればいいか？<br>ってあるけど、実際問題としてトランザクションがないなら、まだデータベースとは言えないと思うな。" userName="FpUser" createdAt="2025/10/21 19:35:08" color="#ff33a1">}}




{{<matomeQuote body="多くのデータベースはそうは思わないだろうね。" userName="dangoodmanUT" createdAt="2025/10/21 19:50:30" color="">}}




{{<matomeQuote body="代わりに2フェーズコミットを実装できるよ。データ管理でちょっと計画が必要だけど、こっちの方がずっとエレガントでスケールすると思うな。DBトランザクションは高価で無駄に複雑だよ。<br>シンプルな2フェーズコミットなら、最初は全レコードを’保留中’としてマークして、関連行が全て挿入されたら’確定済み’に更新すればOK。タイムスタンプを記録すれば再開場所が分かるしね。以前、IDをハッシュ化して特定のプロセスにマッピングし、複数プロセスが並行して決済するシステムを作ったんだけど、これめっちゃスケールしたよ。" userName="socketcluster" createdAt="2025/10/22 02:57:52" color="#ff5733">}}




{{<matomeQuote body="＞’代わりに2フェーズコミットを実装できる’ってあるけど、2フェーズコミットはシステムが分散している時のトランザクション実装の特定の方法だよ。’代わりに’って話じゃないよね。" userName="FpUser" createdAt="2025/10/22 06:06:41" color="#ff5733">}}




{{<matomeQuote body="システムは分散型である必要はないよ。一般的に、レコードの挿入とそれらの決済を分けるだけでいいんだ。" userName="socketcluster" createdAt="2025/10/23 22:32:52" color="">}}




{{<matomeQuote body="何か良いことを見つけたかもしれないね。" userName="FpUser" createdAt="2025/10/21 19:59:16" color="">}}




{{<matomeQuote body="でも、それってウェブスケールだよ！" userName="alecco" createdAt="2025/10/21 20:06:37" color="">}}




{{<matomeQuote body="「Sorting in Practice」セクションの最初の例が壊れてるみたいだよ。テキストではインメモリでソートしてからディスクに書き出すって言ってるのに、例だとディスクに書き出す時にリストが未ソートになっちゃうんだ。追記：Recapセクションのflush例（2番目のやつ）も同じことをしてるね。そこではレコードがソート順にファイルに書き込まれるって書いてあるのに。" userName="exdeejay_" createdAt="2025/10/21 20:34:06" color="#785bff">}}




{{<matomeQuote body="この4週間くらいずっとtriple store作りに時間を費やしてたんだ！この記事がもっと早く出てたらよかったな。ここに書いてあるいくつかの洞察は、俺が理解するのにかなり時間がかかったからね :)" userName="0xb0565e486" createdAt="2025/10/21 20:44:54" color="#ff5733">}}




{{<matomeQuote body="すごく良い記事だね。俺は開発者の活動を、各開発者がキーでコミットがバリューの時系列キーバリューシステムとしてモデリングしてるんだ。<br>同じ問題に直面したよ：ログがすぐ増える、インデックスが重くなる、範囲クエリが遅くなる。<br>セグメントを圧縮する時、何を捨てるかどう決めてる？鮮度と保持のバランスって難しいよね。" userName="vladpowerman" createdAt="2025/10/21 20:52:47" color="#38d3d3">}}




{{<matomeQuote body="データ量はどのくらいあるの？俺は12年分の開発データを持ってるけど、レポートは数秒、いやミリ秒単位で生成されるよ。キーパターンはどうなってる？キー設計の問題に聞こえるけど。" userName="withinboredom" createdAt="2025/10/22 07:50:30" color="#ff5c5c">}}




{{<matomeQuote body="素晴らしい投稿だし、ウェブサイトも美しいね。memtableが満杯になった時に起こるflush操作で少し混乱しちゃったんだ。新しいオンディスクセグメントが作成されるって簡単なメモがあれば助かるかな。最後のrecapでもセグメンテーションが触れられてないみたい。" userName="LourensT" createdAt="2025/10/22 10:08:39" color="#ff33a1">}}




{{<matomeQuote body="最後の方で少し曖昧になるね。インデックスは別々の（部分的な）エンティティとして描かれてるけど、これらは全部別々のファイルに保存するのかな？もしそうなら、レコードを検索するためにそれら全部を開く必要があるの？" userName="curtisblaine" createdAt="2025/10/22 07:38:14" color="#ff5c5c">}}




{{<matomeQuote body="D.B. Cooperにインスパイアされたシンプルなキーバリューストアがこれだよ。`~/bin/cooper-db-set`と`~/bin/cooper-db-get`のシェルスクリプトが書いてあるね。キーとバリューを`/dev/null`に書き込むってジョークかな。" userName="235ylkj" createdAt="2025/10/21 19:01:43" color="">}}




{{<matomeQuote body="/dev/nullは再起動後も永続的だしキャッシュにも優しいから、バッチリカバーしてくれるよ。" userName="MathMonkeyMan" createdAt="2025/10/21 19:49:39" color="">}}




{{<matomeQuote body="もうすでに、アクセス集中しすぎてダウンしちゃったみたいだね。" userName="DiabloD3" createdAt="2025/10/21 20:05:14" color="">}}




{{<matomeQuote body="このブログ記事のレイアウト、俺だけがめちゃくちゃ気に入ってるのかな？" userName="orliesaurus" createdAt="2025/10/21 21:05:59" color="">}}




{{<matomeQuote body="インタラクティブなのは素晴らしいけど、これ『Designing Data-Intensive Applications』から完全にパクってるじゃん。文字通り全部の内容が第3章のインタラクティブ版だよ。引用元を明記すべきじゃない？" userName="saxelsen" createdAt="2025/10/21 20:48:03" color="#ff5733">}}




{{<matomeQuote body="やあ！記事の著者だよ。文章自体は俺自身の言葉なんだけど、論理構造と例は確かにDDIAの第3章を基にしてたんだ。これは俺のミスだね。サイトは適切な引用元表記に更新されたよ。" userName="nansdotio" createdAt="2025/10/22 15:19:21" color="#ff33a1">}}




{{<matomeQuote body="ありがとう、これをスレッドのトップテキストに追加したよ。" userName="tomhow" createdAt="2025/10/22 00:09:22" color="">}}




{{<matomeQuote body="おいおい、それじゃ不十分だろ。a) 親コメントは“丸パクリ”って言ってたのに、君は“インスパイアされた”って薄めてるけど、どっちなの？ b) HNでこの投稿を編集しただけで、実際の元の記事にはまだ引用元が一切書かれてないよ。" userName="oneeyedpigeon" createdAt="2025/10/22 09:14:12" color="#ff5c5c">}}




{{<matomeQuote body="うん、その通りだね。記事の出版社と連絡を取ったよ。コミュニケーションの詳細は開示できないけど、ヘッダーテキストを更新したし（最初のコメントの疑惑を見た時に投稿した内容に）、投稿の評価も下げたよ。" userName="tomhow" createdAt="2025/10/22 11:54:31" color="#ff5733">}}




{{<matomeQuote body="“データベースは一つの問題を解決するために作られた：<br>“データを永続的に保存し、後で効率的に検索するにはどうすればいいか？””ってあるけど、これって二つの問題じゃないの？" userName="4ndrewl" createdAt="2025/10/21 18:01:24" color="">}}




{{<matomeQuote body="俺、いつもライトオンリーなデータベースを出荷したいと思ってたんだ。超高速でね。" userName="i_k_k" createdAt="2025/10/21 18:40:44" color="">}}




{{<matomeQuote body="データを永続的に保存して、効率的に検索できるようにする*ってのは、一つの問題に聞こえるよ。" userName="dayjaby" createdAt="2025/10/21 18:12:02" color="">}}




{{<matomeQuote body="記事の文脈が分からないけど、きっと選択肢が二つあるって話だね。" userName="SirFatty" createdAt="2025/10/21 18:22:41" color="">}}




{{<matomeQuote body="それ、ログ記録にはかなり役立ちそうだね。" userName="archerx" createdAt="2025/10/21 18:58:26" color="">}}




{{<matomeQuote body="もし後で復元できないなら、それは永続性があるとは言えないよ。" userName="cjbgkagh" createdAt="2025/10/21 18:23:40" color="">}}




{{<matomeQuote body="過去のメモリ状態をどう再構築するかが根本的な問題だよね。ストレージや検索効率、信頼性、セキュリティとか、色んな要素の優先順位がデータベース設計の鍵になるんだ。" userName="grokgrok" createdAt="2025/10/21 18:33:27" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これって、一方通行のエレベーターみたいなもんだね。" userName="pratik661" createdAt="2025/10/21 18:59:56" color="">}}




{{<matomeQuote body="メッセージを瓶に入れて、一番都合の良いブラックホールにポイっと投げ込む感じだね。" userName="stvltvs" createdAt="2025/10/21 18:45:58" color="">}}




{{<matomeQuote body="EventStoreDBって、だいたいこんな感じの仕組みだよね。<br>データの完全削除は、データファイルを書き直す scavenge の時だけだよ。" userName="pcdevils" createdAt="2025/10/21 18:57:45" color="#38d3d3">}}




{{<matomeQuote body="ブラックホールに入れたら、瓶が復元不能なほど圧縮されちゃうんじゃないの？" userName="BetaDeltaAlpha" createdAt="2025/10/21 18:57:36" color="">}}




{{<matomeQuote body="あれはジョークだと思うよ。君は追記専用のLSM treeデータベースみたいに解釈したようだけど、GPは読み込みなしの書き込み専用、つまり `echo $data ＞ /dev/null` みたいに言いたかったんじゃないかな。" userName="hxtk" createdAt="2025/10/21 19:32:25" color="#ff33a1">}}




{{<matomeQuote body="もし書き込み専用で、読み込みが全然発生しないなら、`/dev/null`に書き込んでも全然困らないよね。" userName="warkdarrior" createdAt="2025/10/21 18:59:47" color="#45d325">}}




{{<matomeQuote body="過去のメモリ状態を再構築するってどうやるの？それが根本的な問題だよね。でも、過去のメモリ状態の再構築って、データベース層で対応しなきゃいけない要件になることって、めったにないし、ほぼないんじゃないかな。" userName="kiitos" createdAt="2025/10/21 19:09:06" color="">}}




{{<matomeQuote body="80年代にさ、うちの大学の教授が「ライトオンリーメモリ」っていうコンセプトのプレゼンを、シンポジウムで採択されたんだってさ。いい時代だったな、マジで。" userName="elygre" createdAt="2025/10/21 18:52:28" color="">}}




{{<matomeQuote body="ただデータを保存したいだけならファイルで十分だよ。でも検索が面倒だし効率悪いよね。永続ストレージが解決済みだとして、データベースの存在意義はデータを効率的に検索することにあるって言える。永続ストレージは前提だけど、それが発明された理由なんだよ。" userName="prerok" createdAt="2025/10/21 19:14:01" color="#785bff">}}




{{<matomeQuote body="もう少し詳しく説明してくれない？普通のCRUDアプリだと、データを永続化して後でロードできるようにするモデルがあるよね。分析目的でデータを取り込むこともあるだろうけど、それは「過去のメモリ状態を再構築する」ってのにはあまり当てはまらない気がするな。" userName="nonethewiser" createdAt="2025/10/21 19:37:07" color="">}}




{{<matomeQuote body="それは二つの小さい問題を含む一つの問題だけど、本当に難しいのは（三つ目の問題だとして）それらを一つにまとめることだよ。もし君がその二つの問題を別々に解決することに限定したら、役に立つデータベースは作れないだろうね。" userName="mrighele" createdAt="2025/10/21 20:08:56" color="#785bff">}}




{{<matomeQuote body="「データを永続的に保存する」ってのは、「検索できる」ってことだよね。だって、検索できなかったら永続的に保存されてるかなんてわからないでしょ。ただ、「効率的に」って部分は、別の問題として考えてもいいと思うよ。" userName="SahAssar" createdAt="2025/10/21 18:37:18" color="#ff5733">}}




{{<matomeQuote body="そんなに低いところから数えるの、忘れちゃったよ。ゼロゼロ — https://www.youtube.com/watch?v=3t6L-FlfeaI" userName="datadrivenangel" createdAt="2025/10/21 19:59:47" color="">}}




{{<matomeQuote body="「特定のやり方でデータを保存する」ってのはどうかな。そっちの方が一つの問題っぽいし、もっと大きな問題空間を含んでる気がするけどね。" userName="nonethewiser" createdAt="2025/10/21 19:38:33" color="">}}




{{<matomeQuote body="バックアップにも役立つよ、ただし復元する必要がない限りね。" userName="Etheryte" createdAt="2025/10/21 20:11:10" color="#45d325">}}




{{<matomeQuote body="問題は2つに分けられるって言っても、実際は1つだよ。それはね、「未知のクライアントとアクセスパターンが、ACIDに則って、競合をブロックせずに、高速にデータを永続保存して効率的に検索できる方法」っていう問題なんだ。んで、SQLを追加すると…（痛っ！）って感じ。" userName="mamcx" createdAt="2025/10/21 22:23:46" color="#785bff">}}




{{<matomeQuote body="この指摘がHacker Newsで真剣な議論を呼んでるのが面白いね。俺も1つか2つか考えちゃう。「AとB」ってあるから2つに見えるけど、同じコインの裏表にも思える。哲学と屁理屈の境目は微妙だね。<br>データベースが解決すべき問題がもし2つなら、「データを永続的に保存する」ってのもそうなる。でも、それはデータベース以前から解決済みだよね。「データを効率的に検索できるように保存する」ってのが1つの問題って言う方が公平じゃないかな？" userName="nonethewiser" createdAt="2025/10/21 19:42:41" color="#45d325">}}




{{<matomeQuote body="「データを永続的に保存して、後で効率的に検索する方法？」<br>「それって2つの問題じゃないの？」<br>ライトオンリーのデータベースを作るならね。それなら/dev/nullに書き込むだけでいいじゃん。" userName="lelanthran" createdAt="2025/10/22 05:55:49" color="#38d3d3">}}




{{<matomeQuote body="じゃあ、寝る前に読むのにちょうど良いね。" userName="mewpmewp2" createdAt="2025/10/21 19:30:47" color="">}}




{{<matomeQuote body="人々が入れるようにするデータベースだね。出口は後で考えるとして、別のフロアから出るのはストレッチゴールにしよう。" userName="rzzzt" createdAt="2025/10/21 19:02:37" color="">}}




{{<matomeQuote body="それか、ただのパタノスターだね。" userName="theideaofcoffee" createdAt="2025/10/21 20:19:54" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
