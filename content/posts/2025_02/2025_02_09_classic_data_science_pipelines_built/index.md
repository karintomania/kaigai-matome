+++
date = '2025-02-09T00:00:00'
months = '2025/02'
draft = false
title = 'LLMを活用したデータサイエンスの新常識とは？'
tags = ["データサイエンス", "機械学習", "LLM", "AI", "パイプライン", "分析手法", "テクノロジー", "自動化", "プログラミング", "最新情報"]
featureimage = 'thumbnails/purple1.jpg'
+++

> LLMを活用したデータサイエンスの新常識とは？

引用元：[https://news.ycombinator.com/item?id=42990036](https://news.ycombinator.com/item?id=42990036)

{{<matomeQuote body="データ分析手伝ってるんだけど、以前はデータ整理に数週間かかったのが、今はClaude使って数時間で終わった。CSVからデータ取り込んで、正規化の手伝いしてもらって、修正用スクリプトを書いてもらった。最後にユニバリアント分析して結果をCSV / PNGに出力してもらった。" userName="owenthejumper" createdAt="2025-02-09T14:43:21" color="#ff5733">}}

{{<matomeQuote body="こっちはこのワークフローでビジネス作ってるけど、CSV以外のデータソースのときはちょっと面倒。データソースを追加して、あとは標準モデルを使ってAIが質問に答えていく。" userName="mritchie712" createdAt="2025-02-09T14:54:34" color="">}}

{{<matomeQuote body="Claudeの出力が正しいかどうかが大事。間違ってたら意味なくなるし。" userName="DeathArrow" createdAt="2025-02-09T15:34:30" color="">}}

{{<matomeQuote body="理論的にはLLMsの利用は素晴らしいと思うが、ブラックボックス状態やハルシネーションの可能性があるから心配。生成されたスクリプトを自分で確認するのが現実的。データサイエンスは探査的なもんだから、こういうアプローチがその部分を減らしちゃうのが心配。" userName="voidhorse" createdAt="2025-02-09T16:07:54" color="#38d3d3">}}

{{<matomeQuote body="出力はブラックボックスじゃなくて、自分が責任を持つべきだと思ってる。モデルはヒントをくれる。" userName="huijzer" createdAt="2025-02-09T17:17:27" color="">}}

{{<matomeQuote body="この方法が正解だと思う。そもそも自分が何をするか分かってないと早くはならないから、きちんとした解決策の方がよさそう。それに、2時間のLLM検証を受けるより、2週間の人間の専門知識の方が多くの場合はしっかりしてる。" userName="daveguy" createdAt="2025-02-09T21:57:47" color="">}}

{{<matomeQuote body="Claudeに任せたら、XMLからメトリクスを抽出してもらったんだが、いくつか誤りがあった。結果的に、ダッシュボードから直接メトリクスを取得する方がずっとうまくいった。" userName="raducu" createdAt="2025-02-09T20:32:13" color="">}}

{{<matomeQuote body="もしかして、プロンプトにいくつかのタイプミスがあったんじゃない？" userName="HumanOstrich" createdAt="2025-02-10T03:06:10" color="">}}

{{<matomeQuote body="人間と話すよりもLLMと話してる方が、自分のコミュニケーション能力に気づかされることが多い。" userName="raducu" createdAt="2025-02-10T07:06:19" color="">}}

{{<matomeQuote body="ClaudeにCSV渡して「きれいにしろ」って言ってない。Pythonスクリプトを書いてもらってるから、自分で検証できる。" userName="owenthejumper" createdAt="2025-02-09T17:15:27" color="#ff5733">}}

{{<matomeQuote body="論理的に考えてみて。自分でスクリプトを検証できる自信ある？Claudeが数時間でやることを数週間かかるなら、自信が間違ってるかも。" userName="lyu07282" createdAt="2025-02-09T17:36:23" color="">}}

{{<matomeQuote body="実際に、難しいけど検証が簡単な問題に関する研究が多数あるから、これが驚きって人が多いのは不思議。" userName="sdenton4" createdAt="2025-02-09T17:41:34" color="">}}

{{<matomeQuote body="ソースコードの検証がそんなに問題かな？誰かのコードが正しいかどうかを確認するのは、解決するより難しい感じがする。" userName="abstractbeliefs" createdAt="2025-02-09T17:54:55" color="">}}

{{<matomeQuote body="どんなプロセスも多少のエラーには耐えられるし、LLMの出力がその範囲に入るかは各自の検証次第だね。AIのおかげで、エラーに強い低コストなタスクがたくさんあるって気づいた。" userName="throwup238" createdAt="2025-02-09T18:43:30" color="">}}

{{<matomeQuote body="自分のコードや出力を確認するのは、実際に作業するより遥かに楽だよ。自分のコーディング能力に自信ないし。" userName="yawnxyz" createdAt="2025-02-09T17:54:06" color="">}}

{{<matomeQuote body="このツール知ってる？ https://openrefine.org" userName="noja" createdAt="2025-02-09T15:39:45" color="">}}

{{<matomeQuote body="同じことを思ってる。Claudeを使うと、以前1週間かかってた作業が2時間でできるようになった。昔Rスクリプトでやってたことが、数分で分析されるのは驚き。" userName="axpy906" createdAt="2025-02-09T15:59:55" color="#45d325">}}

{{<matomeQuote body="その「数週間の作業」が未来にシフトして、LLMが間違ったことを作り出して何が起こるんだ？" userName="squigz" createdAt="2025-02-09T17:36:56" color="">}}

{{<matomeQuote body="人間も間違いを犯すし、「LLMが間違える」って議論はちょっと疲れる。過去にも同じ話があった気がする。" userName="fifilura" createdAt="2025-02-09T17:53:22" color="">}}

{{<matomeQuote body="人間は間違うけど、僕らはコンピュータを使ってアルゴリズムでリスクを減らそうとしてるよね。LLM使うとそのリスクが増えるのが問題。" userName="Yoric" createdAt="2025-02-09T19:09:42" color="">}}

{{<matomeQuote body="Wikipediaを引用するのは、研究職ではNGってことだよね。高校ならまだしも、重要な場面でWikipediaだけに頼るのは苦しい。もうちょっと調べるべきじゃないかな。" userName="squigz" createdAt="2025-02-09T18:44:43" color="">}}

{{<matomeQuote body="俺のETLパイプラインにはそんな問題なかったよ。" userName="williamcotton" createdAt="2025-02-09T17:51:33" color="">}}

{{<matomeQuote body="「今またやってる」ってのがポイントだと思う。LLMは作業をかなり良く、早くするのに役立つことが多い。ただ、経験が無いことについてはそうでもないかな。" userName="arscan" createdAt="2025-02-09T18:28:27" color="">}}

{{<matomeQuote body="悪意はないけど、数週間かかったならググり方が下手だよ。1時間のブートキャンプ動画見れば自分でできたはず。15行のPythonでそんなに時間かかる？" userName="Cheer2171" createdAt="2025-02-09T15:13:12" color="">}}

{{<matomeQuote body="実際のデータセットじゃ15行のPythonじゃ済まないよ。チュートリアルはそうかもしれないけど、現実のデータはクリーニングに時間かかる。" userName="mritchie712" createdAt="2025-02-09T15:25:08" color="">}}

{{<matomeQuote body="データクリーニングは大変だけど、OPは単にClaudeに正規化させただけ。正直、そこまで時間かからないと思う。" userName="Cheer2171" createdAt="2025-02-09T15:28:56" color="">}}

{{<matomeQuote body="これらの例は大体LLMで生成されたように思える。学ぶには役立つかもだけど、データ抽出やクリーニングには専門知識が結構いると思う。" userName="erikgahner" createdAt="2025-02-09T12:48:54" color="">}}

{{<matomeQuote body="そのアプローチには反対ではないけど、教師としては有罪だな。典型的な例は概念を教えるのに役立つけど、実際の問題はもっと複雑だから。" userName="tsumnia" createdAt="2025-02-09T13:09:26" color="">}}

{{<matomeQuote body="+ 大半の人はctrl+a→ctrl+c→ChatGPT→ctrl+vをやってると思う。" userName="galgia" createdAt="2025-02-09T13:11:33" color="">}}

{{<matomeQuote body="AIに頼りすぎるのは問題だって感じるわ。でもお酒に頼るのと同じように少しは使えるんだよね。AIがすべてやってくれると思い込むと厳しいことになる。特に、最近の学生たちはAIに頼りすぎて問題解決能力が育ってないみたい。" userName="tsumnia" createdAt="2025-02-09T18:55:46" color="">}}

{{<matomeQuote body="LLMはメールやSlackメッセージの送信など、統合がめっちゃ必要になるよ。もはや管理職ができる社員そのものだね。" userName="dkarl" createdAt="2025-02-09T14:27:13" color="">}}

{{<matomeQuote body="LLMはリソースが厳しいときに使えるってことだよね。既存のコードから例を作るのにも便利だけど、実際に試すために使ってるって感じ。" userName="galgia" createdAt="2025-02-09T12:54:43" color="">}}

{{<matomeQuote body="LLMの評価や整合性の部分が省かれてるよね。結果の質が一番大事なのに、悪い結果を呼ぶAPIなんて簡単だもん。良い結果を出す方法を教えないと、教育としては不完全だよ。" userName="lmeyerov" createdAt="2025-02-09T18:15:30" color="#ff33a1">}}

{{<matomeQuote body="今後、ETLやモデリングパイプラインの面倒な作業が減ってくるみたい。データを与えたら、後はプロンプトだけでやってもらえる時代！" userName="plaidfuji" createdAt="2025-02-09T12:27:08" color="">}}

{{<matomeQuote body="ETLパイプラインでエッジケースの扱いが8割なんだよ。LLMはJSONをデータフレームに変えるには良いけど、信頼性が求められる部分ではまだまだ。" userName="benrutter" createdAt="2025-02-09T12:58:24" color="">}}

{{<matomeQuote body="確かにLLMは便利だけど、変換に10%の確率で失敗するのは痛い。データクリーンニングには向いてないんじゃないかな。" userName="timr" createdAt="2025-02-09T13:08:38" color="">}}

{{<matomeQuote body="LLMは最高ってわけじゃないけど、プロジェクトによっては最適な選択になることもあるよ。具体的にはデータサイエンスチームが必要なプロジェクトもあるし。" userName="galgia" createdAt="2025-02-09T13:22:11" color="">}}

{{<matomeQuote body="不適切なツールは選択肢になるのか？ケーキをジャッキハンマーで切るようなもんだよね。LLMの使い方は確かに存在するけど、データパイプラインとはちょっと違うかな。" userName="timr" createdAt="2025-02-09T13:27:14" color="">}}

{{<matomeQuote body="LLMにパイプラインを設計させて、後で調整する方がいいよ。コストも抑えられるしね。" userName="daxfohl" createdAt="2025-02-09T22:27:20" color="">}}

{{<matomeQuote body="懐かしいな。2010年代初頭に小さなデータセットでMapReduceを強いられたのを思い出すわ。Hadoopが流行ってた時期だね。" userName="icedchai" createdAt="2025-02-09T14:30:17" color="">}}

{{<matomeQuote body="このCSVを分析するためにdbtワークフローを立ち上げるわ。" userName="miningape" createdAt="2025-02-09T13:13:05" color="">}}

{{<matomeQuote body="皮肉だと思ったかもしれないけど、実際に今、2つのCSVファイルのクリーンアップや結合をLLMの助けで簡単に終わらせたんだ。" userName="tesch1" createdAt="2025-02-09T16:16:33" color="">}}

{{<matomeQuote body="SQLiteにロードするのが好きだな。CSVファイルの読み書きができるマクロがあって、SQLで問い合わせできるから基本的なクリーンアップや分析がしやすい。LLMを使うとSQLクエリを書く手助けをお願いできるのもポイントだね。" userName="miningape" createdAt="2025-02-09T20:16:14" color="">}}

{{<matomeQuote body="実際、他の人の雑なノートブックやpandasの処理にかかる労力がはるかに多いよ。DBTとSQLを使った方が90％のケースで十分なんだ。" userName="CalRobert" createdAt="2025-02-09T20:40:09" color="">}}

{{<matomeQuote body="君のwimseyライブラリに関して、契約をバリデートするために“pipe”を使うとPolarsのクエリが遅くなると思う。契約を受け取り、さまざまなデータフレームライブラリ用のネイティブクエリを出力する“コンパイラ”があれば面白い方向性だね。" userName="kipukun" createdAt="2025-02-09T15:30:28" color="">}}

{{<matomeQuote body="実際、Wimseyはほぼ君が言っている通りに動いているよ。ネイティブなdfコードを使っていて、Polarsスタイルの式をネイティブのpandas/polars/spark/daskコードに変換して低コストで動いている。" userName="benrutter" createdAt="2025-02-09T19:35:00" color="">}}

{{<matomeQuote body="LLMはこれからもっと良くなると思うし、古典的なアプローチの代わりにLLMを活用したパイプラインがETLフローを大幅に簡略化するだろう。" userName="galgia" createdAt="2025-02-09T13:00:49" color="">}}

{{<matomeQuote body="LLMが大好きでその可能性を楽しんでるけど、質と一貫性を保証する適切なメカニズムがないと、今あるものの代わりにはならないんだ。問題が起きることを単に願ってもダメだし、誰かがトラブルシューティングをしないといけない。" userName="isaacremuant" createdAt="2025-02-09T14:35:10" color="#45d325">}}

{{<matomeQuote body="君の言う通りかもしれないね。LLMを使ったパイプラインがどんな形になるかは疑問だ。でも、もし「文章を書けばパイプラインができる」ってなったら超簡単になるけど、実際にはデータからさらに多くの機能を引き出すことに使われるんじゃないかな。" userName="benrutter" createdAt="2025-02-09T13:54:01" color="">}}

{{<matomeQuote body="コストはどれぐらいなんだ？エネルギー危機なのに単純なパイプラインを不安定なガス工場に置き換えるのか？" userName="Yoric" createdAt="2025-02-09T13:37:44" color="">}}

{{<matomeQuote body="トークンのコストはこの2年で1000%も下がってるらしい。無駄遣いだけでなく、効率もどんどん良くなってるんだぞ。" userName="danielbln" createdAt="2025-02-09T15:56:51" color="">}}

{{<matomeQuote body="エネルギー効率が現行のパイプラインと比べて進歩するには、どれだけ進化が必要なんだ？コストは下がっても、CoTでトークンの数が何倍にもなるし。" userName="Yoric" createdAt="2025-02-09T19:14:18" color="">}}

{{<matomeQuote body="LLMは問題解決には効率的ではないけど、解決できるんだな。" userName="galgia" createdAt="2025-02-09T13:49:20" color="">}}

{{<matomeQuote body="遅いし信頼性が低く、エネルギーが何倍もかかるけど、設定は簡単かもね。" userName="Yoric" createdAt="2025-02-11T13:21:56" color="">}}

{{<matomeQuote body="この意見は考えさせられるな。データパイプラインや分析ツールの深い経験があるのか？LLMが何を楽にすると思ってるの？実際に使ったけど、微修正が必要だったし、結局自分でクエリを書くのと変わらなかった。" userName="drunkpotato" createdAt="2025-02-09T14:47:10" color="#ff5c5c">}}

{{<matomeQuote body="私の視点をシェアするよ。同じ問題だけど、周りには技術が苦手なバイオロジストたちがいる。パイプラインを組めないから、経験のない人が運用しようとしてるんだ。とにかく、データサイエンスの手助けが必要なんだ。" userName="robwwilliams" createdAt="2025-02-09T15:56:01" color="#45d325">}}

{{<matomeQuote body="分かるよ、LLMはこの状況で役立つと思う。一般的にLLMを否定してるわけじゃないけど、過剰評価されたくないね。" userName="drunkpotato" createdAt="2025-02-09T16:22:23" color="">}}

{{<matomeQuote body="LLMに期待し過ぎだと思う。結果的に70-80%ぐらいしか届かないし、デバッグに時間がかかって、最終的には使わない方が良かったと実感するかも。" userName="icedchai" createdAt="2025-02-09T14:29:01" color="">}}

{{<matomeQuote body="LLMをデータパイプラインに取り入れる方法を学ぶと思うけど、それ以上のことは懐疑的だな。信頼性やコストについて疑問もあるし、OpenAIが永遠に赤字で運営できるとは思えない。" userName="drunkpotato" createdAt="2025-02-09T14:54:06" color="#785bff">}}

{{<matomeQuote body="引用元がないと、君の意見には賛同できないな。俺は毎日やってるけど、99%はうまく行ってるよ。" userName="owenthejumper" createdAt="2025-02-09T14:44:31" color="">}}

{{<matomeQuote body="結局のところ、状況次第だよ。もしシンプルなパイプラインなら、LLMsでも十分かな。" userName="icedchai" createdAt="2025-02-09T15:20:14" color="">}}

{{<matomeQuote body="LLMsの使用が増えることで、プロのパイプライン作成のニーズも増えると思う。ちょっとしたことでダッシュボードが壊れるから、プロのサポートが必要だよ。" userName="miningape" createdAt="2025-02-09T12:50:23" color="#ff5733">}}

{{<matomeQuote body="データアナリストがLLMsを使えば、複雑な統計を扱えるようになると思うよ。時間の面でも助かるし。" userName="vharuck" createdAt="2025-02-09T13:41:42" color="">}}

{{<matomeQuote body="LLMsのおかげで、効率が劇的に上がった。初心者がそのツールに依存しすぎるのが心配だけど。" userName="benjiro" createdAt="2025-02-09T19:48:41" color="">}}

{{<matomeQuote body="長期的には両方が必要になると思う。でも、時間、コスト、品質の制約で選ぶツールは変わるだろうね。" userName="galgia" createdAt="2025-02-09T12:56:22" color="">}}

{{<matomeQuote body="小さなスクリプトで十分なら、文句はない。ただし、成長したらちゃんとしたパイプラインも必要だよ。" userName="miningape" createdAt="2025-02-09T13:01:40" color="">}}

{{<matomeQuote body="必要になったらスケールすればいいんだよ。" userName="galgia" createdAt="2025-02-09T13:48:35" color="">}}

{{<matomeQuote body="これは普通のパイプラインよりも大量のコンピュータリソースが要るな。" userName="ekianjo" createdAt="2025-02-09T12:52:29" color="">}}

{{<matomeQuote body="(1)その差はすぐに縮まる、(2)企業は脆弱なデータパイプライン維持のために、人件費よりもコンピュータ代を払うだろう。" userName="plaidfuji" createdAt="2025-02-09T13:00:10" color="">}}

{{<matomeQuote body="デルタはすぐに減るって？お前のデータパイプラインはトークン数でo(n^3)なのか？そうじゃないなら、無理じゃね？" userName="timr" createdAt="2025-02-09T13:22:00" color="">}}

{{<matomeQuote body="価格は下がるだろうけど、LLMsが100%正確で信頼できるのは無理ゲー。今はまだ遠いね。" userName="ekianjo" createdAt="2025-02-09T13:13:05" color="">}}

{{<matomeQuote body="計算能力の問題なら、もう最適化してるだろ。ここはレイテンシーや計算なんか考える前の段階だ。事例によって用途は違うし。" userName="galgia" createdAt="2025-02-09T12:58:40" color="">}}

{{<matomeQuote body="単純に考えるのは危険だな。LLMsは再現性のない綿菓子機みたいなもんで、質は結局見えない目標。簡単なシステムならいいけど、経済的には低スキルな人間がやることになるんだよ。エンジニアリングが自動化するとでも思ってんのか？" userName="mistrial9" createdAt="2025-02-09T15:26:17" color="">}}

{{<matomeQuote body="データパイプラインにはまだ早いかな。精度が求められるから。ただ、データ探索のところでは既に活躍してると思う。" userName="Keyframe" createdAt="2025-02-09T13:49:13" color="">}}

{{<matomeQuote body="いいポイントだね！LLMsはスタート地点が0の時に最高だと思う。" userName="galgia" createdAt="2025-02-09T13:55:57" color="">}}

{{<matomeQuote body="その通り！" userName="galgia" createdAt="2025-02-09T12:29:59" color="">}}

{{<matomeQuote body="これが何をするのか全然理解できないんだけど、LLMについて全然知らないのかな？" userName="wodenokoto" createdAt="2025-02-14T06:03:50" color="">}}

{{<matomeQuote body="OpenAIのリストエンドポイントを呼び出すだけの大げさな話なんだよな。" userName="fire_lake" createdAt="2025-02-09T15:14:36" color="">}}

{{<matomeQuote body="この例には評価や、システムがちゃんと動き続けることを確認するための検証セット作成のアドバイスが欠けてるよ。モデルとプロンプトパターンは変わるし、環境が常に変わる中で自動化が永遠に機能するなんて思えないし。" userName="hrpnk" createdAt="2025-02-09T15:00:47" color="#ff33a1">}}

{{<matomeQuote body="このETLはいいけど、うちは10万LOCで複数の部門を跨いでるんだよね。LLMに厳格な型付け以外で納得できるテストを書かせるのが難しい。目標を変えようとは思ってないけど、LLMが人員を減らしたことなんてないし、実際、ビジネスには手助けになってるよ。" userName="refactor_master" createdAt="2025-02-09T13:14:27" color="">}}

{{<matomeQuote body="LLMsを使ってCSVを処理したり、streamlitアプリを生成することもできるよ。コードはオープンソースだから、RAGの改善や新しいツール追加に協力してくれると嬉しいな。" userName="javierluraschi" createdAt="2025-02-10T13:56:07" color="">}}

{{<matomeQuote body="その例をもっと簡単にして、若い層向けにできないかな？LLMの持ってる力の一つだと思うけど。" userName="3abiton" createdAt="2025-02-09T22:26:51" color="">}}

{{<matomeQuote body="LLMをETLに使うのはいいアイデアだね。スケールしやすいし、スケールしやすいアイデアを見つけないとビジネスが成り立たない。" userName="ei625" createdAt="2025-02-09T17:30:25" color="">}}

{{<matomeQuote body="Querri使ってみたけど、今のところめっちゃ気に入ってる！" userName="Neelschak" createdAt="2025-02-11T18:20:46" color="">}}



{{< list limit=2 >}}
