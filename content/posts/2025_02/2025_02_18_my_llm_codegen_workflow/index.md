+++
date = '2025-02-18T00:00:00'
draft = false
title = 'LLMを使ったコード生成の裏側に迫る！私のワークフローとは？'
tags = ["AI", "コード生成", "プログラミング", "ワークフロー", "LLM"]
featureimage = 'thumbnails/purple6.jpg'
+++

> LLMを使ったコード生成の裏側に迫る！私のワークフローとは？

引用元：[https://news.ycombinator.com/item?id=43094006](https://news.ycombinator.com/item?id=43094006)

{{<matomeQuote body="LLMはグリーンフィールドプロジェクトには最適だよね。新しいアイデアのプロトタイプを作るのはどんなツールよりも早い。ただ既存のコードに手を加えたりリファクタリングするときは、コンテキストが欠けていて余計な複雑さを招くことが多いんだ。解決策にたどり着いても、結局自分でじっくりやった方が早いこともある。LLMは自分のコードを理解する代わりにはならない。" userName="briga" createdAt="2025-02-19T00:22:45" color="">}}

{{<matomeQuote body="全くその通りだね。大体のLLMは複雑な解決策にすぐ飛びつくし、生成されたコードは自分が書いた方が維持しやすいことが多い。でも複雑なコードだけが問題なわけじゃなく、技術的負債も急速に蓄積されるんだ。LLMは良さそうに見える抽象化やデザインパターンを生成するけど、それが問題に合ってないことがある。Sandi Metzが言ってたことを思い出すよ。>「パターンを守るという約束があって、良いパターンならコードが良くなるけど、悪いパターンなら問題が悪化する。」間違った抽象化でコードを急速に生成するのは、見た目には生産性が高く感じるんだ。" userName="wilkystyle" createdAt="2025-02-19T01:18:08" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、なんで間違った抽象化を追いかけたり、根本的に理解してないものを作ろうとするの？まあ、自分も複雑なシステムを作ったことあるよ。GuishっていうUnixパイプラインを構築するCLI/GUIや、WebDSLっていうCベースのDSLを使ったウェブアプリとか。" userName="williamcotton" createdAt="2025-02-19T01:39:42" color="">}}

{{<matomeQuote body="軽く言うけど、そのコードベースはすごく小さいね。大きなコードベースでの経験は、また違うんだよ。全体を把握するのが難しいし、何十人もの人たちと連携するのも難しい。そんな環境では、整合性が重要だけど、過剰になることもある。" userName="jdlshore" createdAt="2025-02-20T05:35:40" color="">}}

{{<matomeQuote body="LLMはスキルの問題だと思ってみるといいよ。コードベースをドキュメント化したり、孤立したコンポーネントをテストしたり、スパゲティコードをモジュラーチャンクにリファクタリングするのに使えるんだ。グリーンフィールドプロジェクトは、ガイドなしで進めるとすぐにメッセージになる。" userName="jrvarela56" createdAt="2025-02-19T06:38:40" color="#ff5c5c">}}

{{<matomeQuote body="＞新しいコードを生成するスピードでレガシー化することになる。" userName="ukuina" createdAt="2025-02-19T06:50:45" color="">}}

{{<matomeQuote body="LLMコーディングはUnix哲学に合ってると思うよ。小さなコンポーネントに分けられる高いモジュール性があるシステムには最適だね。" userName="HPsquared" createdAt="2025-02-19T09:40:28" color="">}}

{{<matomeQuote body="モジュール化はLLMがあってもなくても助かるね。テストもしやすいし、過負荷も減るし、新しい人を教育するのも早くなる。これを使ってオンボーディングの障壁を測れそうな気がする。もし混乱してクソみたいな提案を生成したら、次のジュニアが困るところのいいシグナルかもしれない。" userName="StableAlkyne" createdAt="2025-02-19T14:18:27" color="#ff33a1">}}

{{<matomeQuote body="その通りだけど、コードベースが複雑すぎるってことでもあるよ。一定のサイズを超えると、人間が理解するのも難しくなるからね。でも、モジュール化を心掛けることで、自分のコードもLLMにも役立つと感じた。" userName="infecto" createdAt="2025-02-19T13:37:30" color="#ff33a1">}}

{{<matomeQuote body="微妙な変更も持ち込まれることがあるよ。最近、o1を使ってPythonノートブックからコードを引っこ抜いたんだけど、ほぼ正しくできたんだ。でも、外部ソースから情報を探すために使った文字列の末尾から2文字が消えちゃってて、そのせいで環境の問題かと思っちゃったんだ。結局、ノートブックと抽出したコードを並べて全ての行を確認して、元のセルから手動でコピーした方が早かったかもしれない。" userName="ziml77" createdAt="2025-02-20T19:05:10" color="">}}

{{<matomeQuote body="LLMがそうするのは見たことあるから、ローカルでもいいからgitリポジトリ作って、変更点を比べるようにしてる。そうすることで、LLMが本来の作業とは無関係なことを変更するのを捕まえやすいからね。" userName="cheema33" createdAt="2025-02-21T04:56:07" color="#38d3d3">}}

{{<matomeQuote body="LLMを使ってコードを理解することができるよ。" userName="sejje" createdAt="2025-02-19T02:46:06" color="">}}

{{<matomeQuote body="同意するけど、既存の大きなプロジェクトで問題があって、128kのコンテキストウィンドウに収まらないことがある。特に自分が書いたわけじゃないレガシーなコードの場合、AIの助けがあればすごく助かる。" userName="y1n0" createdAt="2025-02-19T02:58:06" color="">}}

{{<matomeQuote body="最初に自分に質問するように言ったのが、自分でプロンプトやコンテキストを作るよりもずっと効果的だった。こういう逆の発想には自分では気づかなかったよ。" userName="jrexilius" createdAt="2025-02-18T20:53:06" color="#ff5733">}}

{{<matomeQuote body="これが俺のワークフローの大部分のカギにもなってる。最初のメッセージの最後に“理解を深めるために5つまで質問して”って付けることが多い。時間が経つにつれて、自分がいつも省いてしまう情報のパターンに気づけたし、考えてなかった面にも気づけるようになった。" userName="danphilibin" createdAt="2025-02-18T21:30:30" color="#ff33a1">}}

{{<matomeQuote body="正直、こういう習慣を身につけることは他のエンジニアとのコミュニケーションにも役立つかも。" userName="daxfohl" createdAt="2025-02-18T22:51:07" color="">}}

{{<matomeQuote body="L5からL7への昇格が確定した。" userName="fragmede" createdAt="2025-02-18T23:24:22" color="">}}

{{<matomeQuote body="大きな疑問だけど、どのレベルがGPTに置き換わるのが早いかだね。" userName="daxfohl" createdAt="2025-02-19T00:32:56" color="">}}

{{<matomeQuote body="うん！例のプロンプトは役に立つよ。これでこの習慣を自分のワークフローに取り入れるのが楽になったし、良いプロンプトのライブラリを作って、TextExpanderのスニペットにできる希望が持てた。P.S. Insane Clown Posseのリファレンスに特別ボーナス！" userName="treetalker" createdAt="2025-02-19T00:24:28" color="#45d325">}}

{{<matomeQuote body="o1-proの深いリサーチ機能が一つの大きな利点で、新しいプロンプトを送った後に良い質問をいくつかしてくれる。個人的にはモデルにTODOリストを生成させるのがいいアイデアだと思った。" userName="CamperBob2" createdAt="2025-02-18T23:42:53" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="最初のプロンプトに『何か質問があれば聞いてね』って入れるのがいい感じ。でも大きいリクエストのときは、やりとりして内容をまとめる流れができて、その後に解決策を提示してくれるよ。" userName="nijaru" createdAt="2025-02-18T23:58:55" color="#ff33a1">}}

{{<matomeQuote body="やってみたけど、これはホントにいい戦略だよ！" userName="theturtle32" createdAt="2025-02-18T23:07:14" color="">}}

{{<matomeQuote body="最後の孤独な時間は危険信号かな。プロジェクトがうまくいってないときに、無駄な作業をして時間を浪費してるだけに見える。LLMで遊ぶのは楽しいけど、実際には具体的な目標があると失敗することが多い。実際、既存のコードを探す方が生産的だと思うよ。" userName="bcoates" createdAt="2025-02-19T00:59:09" color="#ff33a1">}}

{{<matomeQuote body="LLMって、Emacsの設定をいじる新しい感じなんだね。" userName="getnormality" createdAt="2025-02-19T01:16:18" color="">}}

{{<matomeQuote body="昔はEmacsの設定いじってたけど、今はLLMにやってもらうのが新しいトレンド！" userName="wilkystyle" createdAt="2025-02-19T01:19:08" color="">}}

{{<matomeQuote body="LLMでのコーディングは時間を節約できるって言われるけど、実際はうまくいかないことばかり。結局、自分でプログラミングを学ぶ時間を使った方が良いって思うよ。" userName="krupan" createdAt="2025-02-19T06:44:11" color="#ff5c5c">}}

{{<matomeQuote body="確かに、自己成長にちょっと時間をかけることで、LLMを使うよりもずっと効率的になることがあるよ。具体的なプロンプトにするための練習が必要だね。" userName="anon7000" createdAt="2025-02-19T10:16:33" color="#38d3d3">}}

{{<matomeQuote body="車も同じで、時間を節約できるって言われてるけど、運転がうまくいかないと逆に非生産的。自分の体力を高めた方がいいんじゃない？" userName="mdrzn" createdAt="2025-02-19T13:23:28" color="">}}

{{<matomeQuote body="確かに、LLMが本当に役立つツールかどうかわからない。車とは違って、操作が複雑で分かりにくい。あなたの比喩はあまり助けにならないね。" userName="krupan" createdAt="2025-02-19T14:04:15" color="">}}

{{<matomeQuote body="問題に詰まったときは、自分に質問を投げかけて考えるのが好き。LLMと一緒だと、その過程がいいドキュメントになるし、問題の本質を理解する助けにもなるよ。" userName="khqc" createdAt="2025-02-20T07:53:49" color="#45d325">}}

{{<matomeQuote body="分かるけど、俺はOneNoteや会社のウィキ、それに物理的な付箋使ってるからな。LLMからのフィードバックの価値はエンタメ以外感じないなー。" userName="bcoates" createdAt="2025-02-21T20:41:12" color="">}}

{{<matomeQuote body="コードがコンパイルされるのを待つ感じだな、npmが改善される前のnode_modulesがインストールされるのを待ってるみたい。" userName="triyambakam" createdAt="2025-02-19T08:18:11" color="">}}

{{<matomeQuote body="＞“常に全体をクリーンビルドするプロジェクトは、ダウンタイムも与えつつ前進する感覚をもたらす。”うわ、マジで考えてるね。君のアイデアは面白くて、ニュースレターに登録したいわ。" userName="flir" createdAt="2025-02-19T09:14:20" color="">}}

{{<matomeQuote body="このやり方をちゃんと活用してる記事は初めてだわ。著者が時間と労力をかけて分かりやすく解説してくれたのがありがたい。多くの人は言語モデルを使いこなす練習が足りてないだけだと思う。適切に使うためには人間もまだ学ぶ必要がある。著者がLLMとのコミュニケーションをマスターしてるのが分かるわ。ここでのワークフローは素晴らしいから、AIderやrepomixに興味ある。" userName="rotcev" createdAt="2025-02-18T21:02:54" color="#ff5733">}}

{{<matomeQuote body="＞“著者が時間と労力をかけて分かりやすく解説してくれたのがありがたい。”正直言って、著者は記事を書く際にクッキークリッカーやってたんじゃね？" userName="brokencode" createdAt="2025-02-18T22:57:11" color="">}}

{{<matomeQuote body="Cursorチャットからこのワークフローに進化した人、実際の改善例持ってる？計画にかけた時間って役立つ？ハルシネーションが減った？全体的に時間を節約できた？今の俺のワークフローは、アイデアを考えてnext-appを作り、Cursor Composerで音声転写してる感じ。著者のワークフローも試してみるけど、他の意見も聞いてみたい。" userName="rd" createdAt="2025-02-18T21:19:50" color="">}}

{{<matomeQuote body="もしそれを進めて標準ライブラリを構築すれば、より良い結果が得られる。参考にしてみて： https://ghuntley.com/stdlib" userName="ghuntley" createdAt="2025-02-18T22:49:22" color="">}}

{{<matomeQuote body="＞“このアドバイスを無料であげるのはためらう。”業界内のリストラが多いから、シェアしないのも無理ないよね、シェアしてくれてありがとう。" userName="fragmede" createdAt="2025-02-18T23:34:18" color="">}}

{{<matomeQuote body="ほんとに彼らは何してるの？5時に起きることも知らないんじゃ。業界ツールの議論から利益を得ないことが苦労しなきゃいけないなんて悲しい話だな。" userName="margalabargala" createdAt="2025-02-19T02:05:15" color="">}}

{{<matomeQuote body="これがレイオフに関してどう助けになるのか、逆に悪化しない？" userName="risyachka" createdAt="2025-02-19T00:13:33" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ghuntlyは他の人よりも価値を提供できればいいってこと。だから、ghuntlyがこのトリックを知ってれば、他の人が解雇されるって寸法。トリックを共有すれば、ghuntlyも他の社員を出し抜かなきゃいけなくなるけどね。" userName="fragmede" createdAt="2025-02-19T00:18:58" color="">}}

{{<matomeQuote body="このワークフローを追ってるけど、Cursorは使ってない。Emacsとgptelを使った自作システムに取り入れてるよ。スタイルガイドも詳細に作って、推奨された標準ライブラリも構築中。書いてくれてありがとう！" userName="MarkMarine" createdAt="2025-02-18T23:54:29" color="#ff5733">}}

{{<matomeQuote body="アドバイスありがとう。他のツールで使い始めてるけど、ここでのこの一文は急に出てきた感じで意味が不明だね：＞”現在の基盤となるLLMモデルはおそらく45%の精度で、頻繁な調整が必要です。” ルールが頻繁な調整に入るの？それとも君の現在のワークフローの精度のこと？" userName="newtwilly" createdAt="2025-02-21T14:30:11" color="">}}

{{<matomeQuote body="その規則の70%は、dotファイルやエディタ設定のように共有するといいかも。" userName="e12e" createdAt="2025-02-19T00:26:59" color="">}}

{{<matomeQuote body="Aider＋AI生成マップや内部モジュール用のユーザーガイドがうまくいってる。今日、自作のスクリプトでGemini 2 Flashを使って、コードベースの各モジュールの説明を作成した。Aiderのリポジトリマップは俺には合わないから無効にしてるけど、これがうまくいくと思う。" userName="mike_hearn" createdAt="2025-02-18T22:35:54" color="#ff5733">}}

{{<matomeQuote body="LLMがドキュメント習慣を改善させてる。実際、多くの言語ではコメントからAPIドキュメントの生成が可能だ。これを整形してファイルにまとめてもいいかも。" userName="manmal" createdAt="2025-02-18T23:23:47" color="">}}

{{<matomeQuote body="うん、そうだね。このコードベースはJavaとKotlinのミックスで、内部コードは何年も前からJavadocs/KDocsでしっかりドキュメントしてるから、Geminiが正確なマップを作れる理由もそこにある。" userName="mike_hearn" createdAt="2025-02-19T09:07:46" color="">}}

{{<matomeQuote body="Cursorで自動生成されたAPIドキュメントをインデックスするのがすごくうまくいってる。新しい実装やコード修正のために、ライブラリのガイドやmdbookもインデックスしてるよ。" userName="throwup238" createdAt="2025-02-19T00:58:13" color="#785bff">}}

{{<matomeQuote body="AiderとAI生成マップ、ユーザーガイドの組み合わせ、どうやるの？特にAI生成マップが気になる！" userName="orsenthil" createdAt="2025-02-19T00:25:27" color="">}}

{{<matomeQuote body="カスタムスクリプトを使ってソースファイルを選び、ライセンスヘッダーを削除して結合。<source_file name=”foo/bar/Baz.java”>...<br></source_file>のように。モデルの文脈ウィンドウに収まるようにチャンクして、要約を生成するプロンプトを送る。" userName="mike_hearn" createdAt="2025-02-19T15:23:20" color="#785bff">}}

{{<matomeQuote body="基本に立ち返っているよ。小さな.cursorrulesファイルで自分の構築したいものと技術スタックを説明。<br>DEVELOPMENT.mdファイルでTODOリストも作成してる。" userName="dimitri-vs" createdAt="2025-02-19T02:11:02" color="#ff5733">}}

{{<matomeQuote body="オレも同じこと考えてた。大きなファイルはコピペで、短いファイルはまとめて追加。アクセスするコンテキストを常に供給して、良いソリューションを見つけてる。" userName="cynicalpeace" createdAt="2025-02-18T22:13:09" color="">}}

{{<matomeQuote body="今週再構築して学んだことは、意見の強いフレームワークをプロジェクトに加えない方がいい。これはモデルが把握すべき文脈を増やすから。" userName="rollinDyno" createdAt="2025-02-18T21:35:00" color="">}}

{{<matomeQuote body="職人フレームワークの終わりだね、それも良い方向へ。" userName="sampton" createdAt="2025-02-18T22:11:50" color="">}}

{{<matomeQuote body="プログラミングを簡単にしていた多くの抽象化が終わるかも。でも、専門のコード生成モデルはもっと効率的に低レベルのコードを出力できるようになるはず。" userName="balls187" createdAt="2025-02-18T22:13:53" color="#45d325">}}

{{<matomeQuote body="同意できないな。一部の抽象化は重要で、目的と複雑さを簡潔に伝えるためには必要だから。次に読んでくれる人のために、自己説明的なコードがベスト。" userName="yoz" createdAt="2025-02-19T01:56:25" color="#785bff">}}

{{<matomeQuote body="君のコメントについて考えたけど、両方正しいと思う。コンピュータは問題解決を人間とは違う方法で行うべきだ。" userName="balls187" createdAt="2025-02-20T16:17:46" color="#ff5733">}}

{{<matomeQuote body="これだ！未来のプログラミング言語デザイナーは、モデルやハードウェアを考慮しつつ、どれくらい低レベルであるべきか考えている。" userName="hy4000days" createdAt="2025-02-18T22:57:44" color="">}}

{{<matomeQuote body="新しい木工のキャリアにワクワクしてるけど、これが現実になったらいいな。LLMは本当にアートを吸い取ってる気がする。" userName="superb_dev" createdAt="2025-02-19T01:15:18" color="">}}

{{<matomeQuote body="開発者はLLMに熱狂してるのに、作者やイラストレーターは避けてるのを見ると、コーディングはアートじゃなかったんだなって思う。コードは目的の障害に過ぎなくて、コード自体を楽しむ人は少数派だよ。" userName="Miraste" createdAt="2025-02-19T20:16:43" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="尊敬されるプロが理解してないコードを出すわけないよね。LLMは知られた言語やライブラリを使ってコードを生成すべきだと思う。" userName="bee_rider" createdAt="2025-02-19T06:38:23" color="">}}

{{<matomeQuote body="今はそうかもしれないけど、いずれソフトウェアがプログラマーよりも上手にコードを書く時代が来ると思う。あなたはCMOSイメージセンサーに施されるバイアフィルターについて二度考えたりする？" userName="balls187" createdAt="2025-02-20T06:59:47" color="">}}

{{<matomeQuote body="新しいプロジェクト始めた時にEdgeDB使ったんだけど、彼らのタイプスクリプトのクエリビルダーをLLMが理解できなくて困った。" userName="fastball" createdAt="2025-02-19T02:51:37" color="">}}

{{<matomeQuote body="個人開発者には良いかもしれないけど、チームで同じコードベースを作業するのはどうなるの？同じ分析をする7つのLLMがあっても、経済的に無駄だし危険だと思う。チーム用にコードベースのContextを集中管理する製品ってあるのかな？" userName="bambax" createdAt="2025-02-18T21:23:15" color="">}}

{{<matomeQuote body="この投稿を読むとき、'人間'を'LLM'に置き換えてる。7人の人間で同じコードベースを分析するのも無駄じゃない？" userName="sambo546" createdAt="2025-02-19T02:01:23" color="">}}

{{<matomeQuote body="彼らは同じコードベースを分析してるわけじゃなく、それぞれ自分のドメインで貢献してる。ある人へのLLMの助言は、他の開発者にもリアルタイムで一貫性が求められると思う。" userName="bambax" createdAt="2025-02-19T03:02:18" color="#38d3d3">}}

{{<matomeQuote body="最近Cursorに切り替えたばかりだけど、埋め込まれたインデックスが他のメンバーと共有されるって言われても、他のメンバーがそのリポジトリにアクセスできるかは不明だね。インデックスが時間かかった気がするから、ちょっと勘違いしてるかも。" userName="staindk" createdAt="2025-02-18T21:46:55" color="">}}

{{<matomeQuote body="CodyやSourcegraphは、チームや企業向けに作業領域を提供してるみたい。多分これらの理由から。" userName="adr1an" createdAt="2025-02-22T16:16:32" color="">}}

{{<matomeQuote body="プログラミングの設計と実行計画を忘れがちな新しいプログラマーが多いよね。エlegantなコードにこだわるんじゃなくて、こういう基盤を意識することでサイドプロジェクトが進んだんだ。LLMを使うコツは、質問を通じて仕様や実行計画を作らせることだね。これがLLMに受け継がれたら、我々は強化されたテスター・アナリストになっちゃうかも。" userName="tarkin2" createdAt="2025-02-19T00:24:16" color="#ff5c5c">}}

{{<matomeQuote body="同じ経験をしたけど、俺は自分でエラーを直すよ。LLMは間違ったコードを沢山生成するから、結果として一度コードを見る必要があるんだ。単にLLMを使うためにコードを書くのは無駄だなって感じたこともあるよ。" userName="fullstackwife" createdAt="2025-02-18T22:40:02" color="">}}

{{<matomeQuote body="この作業の費用についてもっと詳しい情報があったらいいな。特にリポジトリミックスを使ってたくさんのトークンをロードしてからコード生成すると、高コストになるかも。Aiderにおけるコスト評価についての投稿があれば嬉しい。" userName="codeisawesome" createdAt="2025-02-18T23:06:53" color="">}}

{{<matomeQuote body="LLMを長く使ってきたけど、このプロンプトのアイデアは素晴らしいね。自分では考えつかないアイデアや質問を引き出してくれるから、学びがいっぱい。手順を踏んでアイデアを検証してくれたこともあって、本当に驚いた。プログラミングは好きだけど、『実行』の部分はやらないつもり。" userName="keyle" createdAt="2025-02-18T23:33:27" color="#ff5c5c">}}

{{<matomeQuote body="いいね、偶然自分もワークフローについてブログを書いたんだ！あなたのワークフローはとても洗練されてて、次のプロジェクトで試すよ。" userName="ggulati" createdAt="2025-02-18T20:12:53" color="#785bff">}}

{{<matomeQuote body="“claudeにプロンプトをペーストして、claude.aiからIDEにコピペする”のが洗練されてるって？何かの作業にしては質素じゃない？" userName="fragmede" createdAt="2025-02-18T20:24:35" color="">}}

{{<matomeQuote body="だいたいそんな感じ。Cursorを初めて使ったばかりで、まだまだ初心者で学びたいんだ。" userName="ggulati" createdAt="2025-02-18T20:51:57" color="">}}

{{<matomeQuote body="これには思わず笑っちゃったよ、ありがとう！" userName="shoemakersteve" createdAt="2025-02-18T20:43:03" color="#45d325">}}

{{<matomeQuote body="うまくいったら教えて！" userName="harper" createdAt="2025-02-18T20:17:10" color="">}}

{{<matomeQuote body="あなたのブログがクラッシュしたみたい、読みたかったのに。" userName="hnuser123456" createdAt="2025-02-18T22:14:58" color="">}}

{{<matomeQuote body="修正してくれてありがとう" userName="hnuser123456" createdAt="2025-02-19T07:51:56" color="#38d3d3">}}

{{<matomeQuote body="’do not hallucinate’ってプロンプトに書くとハルシネーションを防げるのかな？気になるなぁ" userName="Isamu" createdAt="2025-02-18T21:20:52" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
