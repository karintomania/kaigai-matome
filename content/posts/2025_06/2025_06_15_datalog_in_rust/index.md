+++
date = '2025-06-15T00:00:00'
months = '2025/06'
draft = false
title = 'RustでDatalogを実現！'
tags = ["Rust", "Datalog", "プログラミング", "データベース", "静的解析"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> RustでDatalogを実現！

引用元：[https://news.ycombinator.com/item?id=44281727](https://news.ycombinator.com/item?id=44281727)




{{<matomeQuote body="この記事がトップに来ててウケるね！<br>ちょうどDifferential Datalog[1]とRustを使ってリアルタイム戦略ゲームを作ってるところなんだ。<br>DDLでゲームロジックを管理してるよ。<br>新しいアイデアに触れたい、yak shavingを楽しみたいってのが一番の理由かな。[1] https://github.com/vmware-archive/differential-datalog" userName="Leynos" createdAt="2025/06/15 12:18:36" color="#ff33a1">}}




{{<matomeQuote body="ddlogを使ってクールなデモを作ってるんだね！<br>そういえば、俺たちddlogチームはFeldera(https://github.com/feldera/feldera)を立ち上げたんだ。<br>RustからDBSPを直接使うことも検討してみてね。" userName="lsuresh" createdAt="2025/06/16 13:10:54" color="#38d3d3">}}




{{<matomeQuote body="Differential Datalogとsalsa[1]（rust-analyzerのバックエンドに使われてるクレート）を組み合わせて、Frankensteinみたいなバージョンを作れないかな？って思うんだけど。[1] https://github.com/salsa-rs/salsa" userName="foota" createdAt="2025/06/16 03:24:36" color="#785bff">}}




{{<matomeQuote body="おー、いいね！<br>これからの話を読むのが楽しみだよ！" userName="Yoric" createdAt="2025/06/15 12:20:07" color="">}}




{{<matomeQuote body="超クールだね！<br>DDLogはもう積極的にメンテナンスされてないみたいだし、実装が今どうなってるのか、どこまで進むのかめっちゃ気になるよ。" userName="cmrdporcupine" createdAt="2025/06/15 13:38:38" color="">}}




{{<matomeQuote body="「悪名高い悪党である私が、まさかお縄頂戴かと思っていた場に招かれた」-- これは今年読んだ技術ブログの中で一番の掴みだったね！<br>語り手のセリフ回しも最高だったよ。<br>こんなに技術的に深いのに、読んでて楽しい記事は珍しいね。<br>エイリアスクエリの最適化の道のりは探偵小説みたいだった。<br>読者も一緒に、50GBのメモリ使用量にうめき、5GBまで減った時に歓声をあげたって感じ。<br>コードも文章も最高だったよ！" userName="tulio_ribeiro" createdAt="2025/06/15 14:43:35" color="#38d3d3">}}




{{<matomeQuote body="mangle datalogをRustに移植する作業、https://github.com/google/mangle/tree/main/rustでちょっと進めてるんだ。<br>Go版と同じリポジトリにあるよ。<br>遅々としてるけど、優先順位が低いのもあるし、second system syndromeにもかかってるんだよね。<br>Mangle Rustはmemory mappingでデータをディスクに読み書きするから、どんなサイズでも扱えるはず。<br>Go版はインメモリなんだ。<br>この記事はDatalogをパースしたりLSM treeに触れてて、data frogより分かりやすいからいいね。<br>Rustにはproc-macroを使ったDatalog実装（ascent, crepe）がすごく多いんだけど、実行時にクエリを扱えないのが欠点かな。<br>静的解析みたいにクエリが決まってる用途ならproc macroの方がいいかもね。" userName="burakemir" createdAt="2025/06/15 16:41:05" color="#38d3d3">}}




{{<matomeQuote body="Datalog好きのコアグループが頑張ってるの見るのはいいね、最近のDatalogブームは下火っぽいけどね。Datalog 2.0カンファレンスは前より小さかったし、HYTRADBOIもDatalogの発表が少なかったんだ。みんなが最近のDatalogプロジェクトをシェアしてくれて励みになるよ。俺は今、古いSQLデータベースのデータ品質パイプラインを構築中で、移行の準備をしてるんだ。Datalogの方がSQLよりデータ品質の問題を見つけやすいし、ちゃんと構造化すればクエリがすごく読みやすいんだ。" userName="maweki" createdAt="2025/06/15 16:08:10" color="#ff5733">}}




{{<matomeQuote body="悪く思わないで欲しいんだけど、Datalog 2.0の参加者が少なかったのをDatalogの衰退の例にするのはどうかな。あれはLPNMRっていうあまり知られてないヨーロッパのカンファレンスの付属ワークショップで、たまたまDallasで開かれたんだ。俺もDatalog 2.0に行ったけど確かに人は少なかった。論文も発表したよ。あの分野の人はあまり来てなかったかな、何人かのヨーロッパの人（Nemo solverを紹介してた人とか）を除いてね。だから、参加者の少なさは、メインイベント（ICLP）ですらない付属ワークショップっていう、権威の低いカンファレンスだったことの方が原因だと思うんだ。<br>俺が言いたいのは、バニラDatalogエンジンの実装に目新しさがないっていうハイレベルな点については反論するつもりはないってこと。もちろん同意だよ、研究はもうずっと前からHydroFlowみたいなストリーミングとか、Dusaの選択とか、Egglogのチェイスエンジンみたいにもっとエキゾチックな問題に移ってる。バニラDatalogが面白くないってことには誰も反対しないと思うんだ。ただ、monotonicで前方連鎖推論（Horn clauses!）っていうのは、semiringsとかZ-setsみたいなもっと面白い理論を構築するための、よく理解されたエンジニアリング領域（特にハイパフォーマンス分野で）を持つ豊かなベースラインなんだよ。" userName="kmicinski" createdAt="2025/06/15 16:40:10" color="#45d325">}}




{{<matomeQuote body="アメリカはヨーロッパ人にとって訪問しにくい環境なんだよ。西ヨーロッパや北ヨーロッパ全体で避けるのがテーマになってる。もしヨーロッパからの参加者を期待してたなら、それが過去と違う理由だろうね。科学分野でも、観光でも、ビジネス旅行でも同じなんだ。" userName="BartjeD" createdAt="2025/06/16 06:01:47" color="">}}




{{<matomeQuote body="君に全く同意だけど、あのイベントは2024年10月に開催されたから、トランプのひどい振る舞いは影響してないよ。外国人にとってTexasに行きたくない理由はトランプ以外にもあるだろうけど、この特定の場合は、LPMNRが伝統的にヨーロッパのカンファレンスなのにたまたまアメリカで開催されたことの方が関係してると思うな。" userName="kmicinski" createdAt="2025/06/16 15:56:59" color="">}}




{{<matomeQuote body="ステートマシン＋パージングの部分が気に入ったなら、Rob Pikeがやった古い「Lexical Scanning in Go」っていうトークもおすすめだよ。<br>https://www.youtube.com/watch?v=HxaD_trXwRE<br>Goだけど、他の言語でも簡単にほとんど応用できる。Rust, Zig, Goみたいなモダン言語がunicode／runes／graphemesをネイティブでサポートしてるの本当に嬉しい。Java, .net, C++, あるいはスクリプト言語に比べて、すごくたくさんの問題が消えるんだ。" userName="Xeoncross" createdAt="2025/06/16 17:09:05" color="">}}




{{<matomeQuote body="著者のDatalogの仕事は全体的に好きなんだけど、入門資料でバイナリJOINを使うのを教えないで欲しかったな。あれって理想的なケースから外れると、内部がすごくごちゃごちゃになるのを見つけたんだ。汎用的なJOINスタイルメソッドの方が、頭の中で一般化するのがずっとずっとシンプルだと思ったよ（Worst-case optimal join algorithmとかを見てみて）。<br>https://en.wikipedia.org/wiki/Worst-case_optimal_join_algori..." userName="banana_feather" createdAt="2025/06/15 17:36:16" color="#38d3d3">}}




{{<matomeQuote body="関連する話だけど：McSherryの前のブログ記事は、クエリプランを適切に調整すれば、バイナリJOINでもworst-case optimal runtimeを達成できることを示すものだったよ。<br>https://github.com/frankmcsherry/blog/blob/master/posts/2025..." userName="davery22" createdAt="2025/06/15 19:03:02" color="#785bff">}}




{{<matomeQuote body="materializationが多いワークロード（プログラム解析など）の場合、最適化されたバイナリJOINプラン（プロファイル最適化、手動最適化など）が、worst-case optimal plansよりも勝ることがよくあるんだ。これはトライベースの表現を使う必要がない分、スケーラビリティ（ロックが少ない）が良いからだよ。worst-case optimal plansの領域内でもまだたくさんの選択肢があるけど、悪いworst-case optimal planは、悪い（ランダムに選ばれた）バイナリplanに勝てないこともよくある。そしてもちろん（この議論の全体的なポイントだけど）、全てのバイナリplanが爆発してしまうクエリもあって、そういう場合はWCOJが必要なんだ。もっと伝統的なバイナリJOINを堅牢にする研究（https://db.in.tum.de/people/sites/birler/papers/diamond.pdf ）など、他の面白い研究（https://arxiv.org/html/2502.15181v1 ）もあるよ。WCOJの並列化は、俺が知る限りまだ未解決の問題らしい（少なくとも、それに取り組んでる人たちがそう言ってるよ）。でも、それに取り組むいくつかの有望な方向性があって、何人かの人たちが研究してると思うよ。" userName="kmicinski" createdAt="2025/06/15 19:28:58" color="#ff5c5c">}}




{{<matomeQuote body="昔、学生時代にPrologに軽く触れたことがあるんだ。どう使うかとか何に役立つかは大体わかるんだけど、全然深くはないんだ。それ以来、Datalogが何かすごいものだって聞き続けてるんだけど、それが何なのか理解できないんだ。つまり、シンプルな疑問「DatalogはPrologの何が改善されてるの？」の答えが掴めない。今ちょうどDatalogのWikipediaページをざっと読んでみたんだ。そこから得る漠然とした理論は、多分Prologのパフォーマンスが比較的悪いのに対して、Datalogはパフォーマンスを劇的に改善した（おそらくもっと大きなデータセットやもっと並列化された処理を可能にしてる）んだけど、その代わりに他の重要な点で表現力や機能を減らしたってことかな？（チューリング完全性じゃなくなったとか？） それがDatalogのことなの？ それとも完全に的外れ？" userName="akavel" createdAt="2025/06/16 13:05:04" color="">}}




{{<matomeQuote body="俺の知ってる限りだと、Prologって関係性を定義するだけで答えが出る宣言的なものに見えたけど、実際はルールの順番とか”cut”みたいな追加命令に依存してた。それらはムダな計算を防ぐだけでなく、結果にも影響しちゃったんだ。一方Datalogは、良くも悪くも構文が違うだけの関係データベースって感じ。" userName="codesnik" createdAt="2025/06/16 13:14:02" color="#45d325">}}




{{<matomeQuote body="Datalogはもっとシンプルでチューリング完全じゃないんだ。フォワードチェイニングを使うからパフォーマンスとかメモリ特性に影響が出るよ。Prologだと簡単な巨大な探索空間も、Datalogだとメモリ食いすぎて表現できない。DatalogはCVT付きの通勤カー、PrologはF1カーって感じ。つまり、改善じゃなくて、Prologをみんながヤケドしないように去勢したようなもんだね。他のアプリに実装したり組み込んだりもしやすい（Prologも簡単に組み込める場合もあるけど）。<br>Prologに慣れてると、Datalogは窮屈に感じるだろうね。call/3がない？項展開とか目標展開がない？Datalogは basically PrologのLCD機能セットを引っ張り出して、インタラクティブなデータベース検索として使うように設計されてる。＞ Prologのパフォーマンスは比較的貧弱だけど、Datalogは劇的にパフォーマンスを向上させる<br>速いDatalogコードは書きやすいけど、上限もずっと低いよ。Prologは並行処理もできるように書けるけど、それは実装を理解する必要がある中級レベルのタスク。Guarded Horn Clausesとか派生言語[2]は、それを形式化するために開発されたけど、Prologに関する日本の進歩はすごく専門的だね。Prologのパフォーマンスはプログラマーと使ってる実装に really依存するんだ。PrologはLispみたいに、コンパイル時にDSLからネイティブマシンコードを生成できる。<br>使ってるPrologの実装がどう動くか理解して、それに沿ったコードをどう書くか分かれば、absolutely「十分速い」よ。残念ながら、それには一つの実装で何年もPrologコードを書く必要がある。Prologコンパイラの最適化に関する研究もいっぱいあるよ[3][4]、それにいくつかの商用例[5]もあるね。<br>[1] - http://logicprogramming.stanford.stanford.edu/readings/ullman.pdf<br>[2] - https://www.ueda.info.waseda.ac.jp/AITEC_ICOT_ARCHIVES/ICOT/...<br>[3] - https://www.sciencedirect.com/science/article/pii/S074310669...<br>[4] - https://link.springer.com/content/pdf/10.1007/3-540-18024-9_...<br>[5] - https://sicstus.sics.se/" userName="johnnyjeans" createdAt="2025/06/16 15:29:35" color="#ff5733">}}




{{<matomeQuote body="もしDatalogとRustを使いたいなら、cozodbがRustで書かれててDatalogクエリ構文があるよ。" userName="29athrowaway" createdAt="2025/06/15 15:13:02" color="">}}




{{<matomeQuote body="Cozodb良さそうだけど、あんまり活発じゃないね。2024年11月頃にちょっと触ってみたら、sqliteストレージバックエンドに簡単な課題を見つけたよ。https://github.com/cozodb/cozo/issues/285" userName="jitl" createdAt="2025/06/15 16:03:41" color="">}}




{{<matomeQuote body="コード量がそんなに多くないからいじりやすいよ。" userName="29athrowaway" createdAt="2025/06/15 20:39:54" color="">}}




{{<matomeQuote body="うん、Cozodbは俺にとっては大体ドキュメント通り動いてくれたし、使うのが楽しかったよ（プログラムの静的解析とかにもね、あれも内部でsorted treesとかtype-fu使ってる）。ドキュメントにはブログのウォークスルーと比較するのに十分な内容があるし、特にクエリ最適化に関する作業は面白い。でもRustでインメモリじゃない場合、データのシリアライゼーションがコストかかるし、プロジェクトはせいぜい静かだね。" userName="w10-1" createdAt="2025/06/16 23:35:39" color="">}}




{{<matomeQuote body="昔Clojureファンに、DatalogはSQLより優れてるし、リレーショナルDBがみんなSQLを使ってるのは残念だ、って言われたことがあるんだ。なんでそう思ったのか、十分深く掘り下げなかったけど。" userName="rnikander" createdAt="2025/06/15 19:11:37" color="">}}




{{<matomeQuote body="基本的にDatalogはSQLよりずっと簡潔で、ビューの分離もはるかに簡単だし、推移閉包も圧倒的にやりやすい。俺が簡単な非再帰クエリで始めたのがhttp://canonical.org/~kragen/binary-relationsなんだけど、そのSQLへの翻訳（以下に示す）は既に犯罪的だし、適切にファクタリングされたSQLの解決策は死刑に値するよ。<br>最近のANSI SQLの追加で再帰の機能は入って、もう完全に不可能ではなくなったけど、3つ大きな欠点があるんだ。<br>1. 誤ってSQLをチューリング完全にしてしまったこと。一方、Datalogクエリは終了が保証されてる。<br>2. まだ使うのがすごく不器用なこと。<br>3. 1のせいで、完全に実装されてないことも多くて、頼りにならない。" userName="kragen" createdAt="2025/06/16 01:01:27" color="#45d325">}}




{{<matomeQuote body="そうそう、1番目（SQLがチューリング完全になったこと）はbasically設計を最初から間違ったってことだよね。評価する言語が、in fact Datalogじゃないんだから、Datalogの実際のメリットを享受することは不可能。再帰クエリは射影でarbitraryな計算を実行できる能力があるから、まずトップダウン評価戦略とかマジックセットみたいなハイブリッド評価は除外されちゃう。" userName="ulrikrasmussen" createdAt="2025/06/16 06:41:31" color="#38d3d3">}}




{{<matomeQuote body="興味あるんだけど、どうやったら有用かつ自然にSQLに再帰を追加できるんだろう？チューリング完全性にしないでさ。" userName="twoodfin" createdAt="2025/06/16 17:51:11" color="">}}




{{<matomeQuote body="俺もよく分かんないんだけどさ。Feldera では SQL に再帰機能を追加して、チューリング完全になったんだぜ。詳しいのはここ見てくれよな。<br>https://www.feldera.com/blog/recursive-sql-queries-in-felder..." userName="lsuresh" createdAt="2025/06/17 14:18:14" color="">}}




{{<matomeQuote body="Clojure/Datomic は分からんけど Datalog の core は掴めるね。お試しは Percival がお手軽だよ（https://percival.ink/）。俺が SQLite コンパイル版も作った（https://percival.jake.tl/）。Logica はすごい Datalog-＞SQL コンパイラだ（https://logica.dev/）。再帰クエリは Datalog が楽勝！SQL も Materialize (https://materialize.com/blog/recursion-in-materialize/) や Feldera (https://www.feldera.com/blog/recursive-sql-queries-in-felder...) でマシになったけどね。Feldera は Calcite 由来の SQL dialect に制限があるのが難点かな。" userName="jitl" createdAt="2025/06/15 22:53:33" color="#ff5c5c">}}




{{<matomeQuote body="Feldera では SQL の機能、Calcite に貢献して増やしてるんだぜ。みんなにとって良くなるようにね。Feldera SQL コンパイラの作者 Mihai Budiu は Calcite の committer なんだ。" userName="ben_pfaff" createdAt="2025/06/16 01:34:44" color="">}}




{{<matomeQuote body="貢献ありがとう！Mihai が Calcite に UUID 実装したの見たよ（https://issues.apache.org/jira/browse/CALCITE-6738）。僕が困ったとこで、僕の Feldera 経験半年前で古いね、君ら速い！Feldera/Calcite は Postgres と SQL 構文が違うのが辛いんだ。::bigint とか JSON の -＞ とか。VARIANT とか [] は elegant だけど、慣れた Postgres から移す時 regex replace が手間かな。Feldera 好きだけど friction はあるね。" userName="jitl" createdAt="2025/06/16 04:44:37" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="褒めてくれてありがとう！方言の違いは分かってるよ。この問題に対処してる面白い例があってね、LLM を使って SparkSQL のコードを Feldera に大量移行してるユーザーがいるんだ（JSON 関連が多いみたい）。元の warehouse と Feldera で同じ結果になるか確認して、正しさを担保してるんだ。" userName="lsuresh" createdAt="2025/06/16 13:15:52" color="">}}




{{<matomeQuote body="Differential Datalog のチームが Feldera を作ったんだよ（https://www.feldera.com/）。Differential Datalog から differential SQL に切り替えたのは、Datalog は売り込むのが大変だって気づいたからだと思うな。" userName="jitl" createdAt="2025/06/15 12:22:09" color="">}}




{{<matomeQuote body="彼ら（Feldera）は本当にすごい製品作ったよ。batch と streaming 両方同じ SQL で使える唯一の DB/query engine なんだ。俺、Differential Dataflow (DBSP) の Python 版作ったんだぜ（https://github.com/brurucy/pydbsp）。DBSP は表現力豊かで、incremental dynamic datalog engine も DBSP プログラムで実装できたんだ。実行時にクエリが変わる SQL/Datalog で、変更も incremental に計算されるんだよ（https://github.com/brurucy/pydbsp/blob/master/notebooks/data...）。" userName="rebanevapustus" createdAt="2025/06/15 13:22:46" color="#45d325">}}




{{<matomeQuote body="＞ batch と streaming 両方同じ SQL で使える唯一の DB/query engineなんだ。← Flink SQL もそれできるよ。" userName="gunnarmorling" createdAt="2025/06/15 16:05:06" color="">}}




{{<matomeQuote body="Flink SQLはFelderaとかMaterialize.comに比べると結構制限があるし、正確性にも難ありなんだって。特にストリーミングジョインは、データが止まらない限りは完全に正確にならない可能性が高いらしいよ。詳しくはこの記事を見てね→ https://www.scattered-thoughts.net/writing/internal-consiste..." userName="jitl" createdAt="2025/06/15 19:01:50" color="">}}




{{<matomeQuote body="それは違うと思うな。コードの変更は必要だし、同じ意味で動かないでしょ（ストリーミング中にデータの取り消しとか削除が出ると動かないかも）。あと、良いパフォーマンス出すための抽象化の漏れ（watermarksとかね）については言及しないでおこうよ。" userName="rebanevapustus" createdAt="2025/06/15 16:15:48" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
