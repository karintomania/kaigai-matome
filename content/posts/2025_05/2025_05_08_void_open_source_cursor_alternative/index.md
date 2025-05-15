+++
date = '2025-05-08T00:00:00'
months = '2025/05'
draft = false
title = 'Void：オープンソースのCursor代替ツールが爆誕！'
tags = ["AI", "プログラミング", "オープンソース", "コードエディタ"]
featureimage = 'thumbnails/green3.jpg'
+++

> Void：オープンソースのCursor代替ツールが爆誕！

引用元：[https://news.ycombinator.com/item?id=43927926](https://news.ycombinator.com/item?id=43927926)




{{<matomeQuote body="フィードバックだよ。README、もっと詳しくしないと。何ができるか/できないか？みんながCursor使ってると思わないでほしいな。Cursor代替なら、全部の機能あるの？AIプログラミングやってるけど、Cursor使ったことないから、これ試したいって思わせるものが何もないんだよね。<br>あと、プログラミングAIツールならAiderと比較すべきだと思うんだ。これ使う決定的な理由教えてよ。「VSCodeだから」だけじゃダメだよ。Aider用のVSCode拡張もあるだろうし。<br>例えば、Aiderのrepomapみたいなのある？コンテキストはどこまで細かく制限できるの？" userName="BeetleB" createdAt="2025/05/08 19:17:11" color="#ff5c5c">}}




{{<matomeQuote body="フィードバックありがとう。機能リスト追加するよ。Cursor機能（quick edits, agent mode, chat, inline edits, links to files/folders, fast applyとか）はオープンソースモデルでサポートしてるよ。repomapはないけど、今は.voidrulesとGather/Agent modeで大きな編集はうまくいくと思ってる。ベータ版終わる前にauto-summaryやAiderのrepomapみたいなの追加するかも。<br>コンテキストは、モデルごとにウィンドウサイズや予約トークン量をカスタマイズできる。あと「@ to mention」でファイルやフォルダを丸ごと含められるよ。" userName="andrewpareles" createdAt="2025/05/08 19:50:31" color="#785bff">}}




{{<matomeQuote body="Cursorの重要な機能で、まだ他があまりやってないのがドキュメントのインデックス化だね。URLあげるとAPIとかのドキュメントをクロールしてembedding作るんだ。言語によらずできるのがすごい。あと、それで検索できるagentツールもあるといいかも。@docsでコンテキストに含めるとLLMがちゃんと参照してAPIの幻覚なくせるんだよね。<br>2023年にCursor開発者が言ってたけど、HTMLをmarkdownに変換してからn-gram deduplicationでナビとかヘッダーとかフッター消してるらしいよ。チャンクの最新技術はもっと良くなってるだろうけど。" userName="throwup238" createdAt="2025/05/08 20:03:34" color="#ff5733">}}




{{<matomeQuote body="Aiderで嫌な経験したのは俺だけ？いつもAIと格闘して、結局自分でやった方が早いんだよ。<br>毎回使っても40-85%しか合ってなくて、残りの60-15%を自分で直さないといけないなら、何の意味があるの？手書きと変わらないか、むしろ遅いし。<br>Continueのフローの方が全然良いわ。1. CTRL Lでコードブロック選択。2. 質問かタスクを指示。3. 内容読んで自分で変更する。どうせシステムとか要求を少しは勘違いしてるからね。" userName="_345" createdAt="2025/05/08 19:54:50" color="#ff33a1">}}




{{<matomeQuote body="それは使うモデルとかプロンプトによるね。Gemini-2.5proとかsonnet3.5/3.7、gpt-4.1使ってみなよ。プロンプトはできるだけ具体的に詳しくね。正しいコンテキスト含めるんだよ。" userName="attentive" createdAt="2025/05/08 20:10:41" color="#ff33a1">}}




{{<matomeQuote body="プライバシー重視でプロジェクト全部シリコンバレーと共有したくないとか、趣味にClaude使うのに1時間8ドルも払いたくない場合はどうするの？AI擁護派が、金出せば凄いとか「正しい」プロンプト使えばって言うの、もうウンザリなんだよね。（ねえ、同胞のHNerよ、あんたの給料ってそのモデルから出てんの？）<br>Claudeのシステムプロンプトくらい長く書かないとまともな編集できないなら、全然時間節約になってない気がするんだ。<br>Aiderがローカルモデルじゃ使い物にならないって認めてるのは良いね。僕もそう思うわ。" userName="dingnuts" createdAt="2025/05/08 20:27:21" color="#ff5c5c">}}




{{<matomeQuote body="Context7 MCP使えばいいんじゃない？ VoidがMCPサポートしてるって勝手に思ってるけど。" userName="steveharman" createdAt="2025/05/08 20:56:58" color="">}}




{{<matomeQuote body="Visual Studio Codeのcontinue.devプラグインにドキュメントインデックス機能あるよ。URLとタグ指定すると、ドキュメントをスクレイピングしてRAG index作るんだ。チャットでそのドキュメントをコンテキストとして使えるようになるんだよ。例えば、@godotengineって聞いてspriteって何？とか聞けるわけ。" userName="mapmap" createdAt="2025/05/09 06:50:55" color="#ff5733">}}




{{<matomeQuote body="Aiderはかなり設定できるよ。リーダーボード見て成績良いモデル/設定を真似る必要があるね。あと、readmeとかコーディング規約みたいなファイルをオートロードする必要がある。<br>Aiderのキラー機能は、自動的なlint/typecheck/testとfixループの統合とgit checkpointingだよ。これらの機能設定しないと、Aiderの本当の価値は得られないね。" userName="CuriouslyC" createdAt="2025/05/08 22:00:45" color="#45d325">}}




{{<matomeQuote body="ローカルモデルは使ったことないんだ、だって60GB以上のVRAMなんて持ってないもん。aiderをgemini2.5と一緒に試したんだけど、’write a ts file with pupeteer to load this url, click on button identified by x, fill in input y, loop over these urls’みたいな基本的なプロンプトでもものすごくよく動いたんだよね。LLMの性能は使うモデルに100%依存するから、CPUでローカルで動かしてる小さいモデルから一般化するのはほぼ無理だと思うな。" userName="wredcoll" createdAt="2025/05/08 21:07:12" color="#ff5c5c">}}




{{<matomeQuote body="これ、Officeのcopilotでも全く同じ問題抱えてるんだ。俺のスタイルを学習してくれないから、どうしてほしいかすごく具体的に指示しないといけない。そうなると自分で書いた方が早いんだよね。たぶんその場で動的に学習できるようになればもっとマシになるだろうけど、今のところはそんなにすごく役立つわけじゃないな。" userName="wkat4242" createdAt="2025/05/08 23:16:31" color="">}}




{{<matomeQuote body="そのツールは使ったことないんだけど、aiderもcursorも箱出しの状態じゃ最強じゃないみたいだね？ cursorについても、コーディング規約とか拾わせるためにカスタム設定が必要って同じような話を読んだよ。これって、みんなが同意してる標準的なベストプラクティスってドキュメント化されてるの？それともユーザーが共有してる試行錯誤のベストプラクティスって感じ？" userName="larusso" createdAt="2025/05/09 07:18:36" color="">}}




{{<matomeQuote body="確かに、見た目はめちゃくちゃ便利そうってのは同意だよ。でもいくつかライブラリで使ってみたけど完全にダメだったな、結構標準的なmkdocsとかsphynxのサイトをクロールできなかったんだ。たぶん、彼らが事前にインデックス付けしてる“組み込み”サイトの方が得意なんだろうね。" userName="RobinL" createdAt="2025/05/08 20:39:46" color="#ff33a1">}}




{{<matomeQuote body="いや、Anubisはデータスクレーパーによるシステム的なウェブスクレイピング対策だよ、実際のユーザーエージェント相手じゃないんだ。" userName="GreenWatermelon" createdAt="2025/05/09 14:50:28" color="">}}




{{<matomeQuote body="CursorとAiderどっちも使ったことあるけど、どういう仕組みか理解したいのもあって、完全に自分で制御できるシンプルなものがずっと欲しかったんだ。だから、read, write, diff, browse, command, ask, and thinkのたった7つのツールだけで、完全に機能する最小限のコーディングエージェント（編集機能付き）を作ってみたよ。例えばaskツールを無効にするだけで、特定のタスクで簡単に完全自律にできるんだ。toolkami見てみて、役に立つかもよ。https://github.com/aperoc/toolkami" userName="SafeDusk" createdAt="2025/05/09 01:22:16" color="#ff5733">}}




{{<matomeQuote body="@Docsはサポートしてる？<br>https://docs.cursor.com/context/@-symbols/@-docs" userName="satvikpendem" createdAt="2025/05/09 18:44:25" color="">}}




{{<matomeQuote body="context7がドキュメントのインデックス付けやウェブクロールをどうやって処理してるのか、もっと詳しく教えてくれない？ mcp serverに接続したら、そこに食わせたウェブサイトをクロールできるようになるの？" userName="Aeroi" createdAt="2025/05/09 01:00:38" color="">}}




{{<matomeQuote body="＞READMEはもっと詳細が必要だね。何ができて何ができないの？みんながCursorを使ったことがあると思わないで。Cursorの代替なら、Cursorの機能全部サポートしてるの？<br>それは全部ウェブサイトにあるよ、READMEじゃなくてね。でも箇条書きかサイトと同じ情報があればすごくいいと思うよ。" userName="satvikpendem" createdAt="2025/05/08 21:35:06" color="">}}




{{<matomeQuote body="僕は主にdocs.rsにあるRustのドキュメントとか、レンダリングされたmdbooksみたいなのをインデックスするのに使ってるよ。RAGは当たり外れあるけど、インデックスするのに困ったことはないかな。" userName="throwup238" createdAt="2025/05/08 21:22:26" color="#38d3d3">}}




{{<matomeQuote body="なるほど、良い点だね。ドキュメント周りはブラウザエージェントのタスクだと思って避けてたんだけど、他のコメントしてる人たちも言ってるみたいに、これは良いMCP連携になるだろうな。ツール利用で学習した次のモデルがドキュメント見るのが得意になるか気になるね。それなら問題完全に解決するかもだけど、OSSとかオフラインモデルは別の解決策いるだろうね。ここはいろいろ試すの全然ウェルカムだよ。Beta抜ける前には、ブラウザ使ってドキュメントをスクレイピングする機能、多分追加すると思う。" userName="andrewpareles" createdAt="2025/05/08 21:26:47" color="#785bff">}}




{{<matomeQuote body="Aiderのリーダーボードは、モデルとか編集フォーマット、モードを選ぶ時の基準になる「”ベストプラクティス”」だよ。それ以外は、もう基本的にはエンジニアリングとかコードスタイルのベストプラクティスって思うことをドキュメントにまとめるのがいいね。それはAIにも人間にも両方役に立つからさ。こういうのって結構意見分かれるから、結局何を選ぶかは自分次第だね。" userName="CuriouslyC" createdAt="2025/05/09 07:55:50" color="">}}




{{<matomeQuote body="これ試してみるよ。できれば自分のスタックをもうちょっと自分でコントロールしたいんだよね。" userName="larusso" createdAt="2025/05/09 07:12:25" color="">}}




{{<matomeQuote body="Context7って、インデックスしてるリポジトリから情報が結構抜け落ちてるし、似たような名前のリポジトリでいっぱいになりすぎてるんだよね。だからLLMたちが混乱しちゃうんだ。" userName="gesman" createdAt="2025/05/09 06:10:07" color="">}}




{{<matomeQuote body="Cursor’sのドキュメントインデックス機能って、正直言って時間節約になるって感じる数少ないAIコーディング機能の一つなんだよね。ドキュメントサイト全部埋め込んで、ナビとかヘッダーのごみを除いて、それから@docsでインライン参照できるのが、APIを推測するんじゃなくてちゃんとコンテキストを把握するのに役立つんだ。" userName="giordanol" createdAt="2025/05/09 12:41:26" color="#ff5733">}}




{{<matomeQuote body="ローカルモデルって、特別なハードウェアなしでノートPCで動かせるレベルにはまだ達してないんだよね。大手ラボのどこかが、SOTAのベンチマークを出すような80億〜320億パラメーターくらいのモデルを抽出してくれるといいなって期待してるんだ！コスト的にもすごく大きいし、多くの人がエージェントで並列コーディングするのも現実的になるだろうしね。" userName="mp5" createdAt="2025/05/09 00:01:59" color="">}}




{{<matomeQuote body="＞「”正しい”」プロンプトを使うか。いくつか例をくれよ。<br>「”正しいプロンプト”」なんてものはないよ。全部インチキさ。https://dmitriid.com/prompting-llms-is-not-engineering" userName="troupo" createdAt="2025/05/09 05:40:59" color="">}}




{{<matomeQuote body="この場合のスクレイパーって、ユーザーのエージェントなんだよね。でも、だからってトラップにかからないスクレイパーじゃなくなるわけじゃないよ。" userName="conartist6" createdAt="2025/05/09 15:55:48" color="">}}




{{<matomeQuote body="ダイナミックラーニングって、なんであんまり深掘りされてないんだろうってすごく思うんだよね。大手ラボにとってはすごい参入障壁になるだろうし（みんな大手ラボのところでホストして動的にモデル学習させなきゃいけなくなる）。それに、AIももっとずっと賢くなる気がするしね。" userName="mp5" createdAt="2025/05/09 00:12:18" color="">}}




{{<matomeQuote body="＞少なくとも aider はローカルモデルだと使い物にならないって認めてるみたいだな。俺もそう思うよ。＜br＞でも俺は認めちゃいないよ。 aider ユーザーの99％はローカルモデル試したことないだろうし。 Sonnet とかよりずっと悪いだろうとは思うけどね。＜br＞ AI 信者が「もっと金払えば、とか”正しい”プロンプト使えば、 AI は hype 通りすごいよ」って言ってくるの、マジで飽きたわ。ねぇ、 fellow HNer 、君の給料ってそういうモデルから出てるわけじゃないだろ？例を出せよ。例？ aider は良いツールだし、その大部分（多分ほぼ全部）は AI が書いてるよ。" userName="BeetleB" createdAt="2025/05/08 23:08:29" color="">}}




{{<matomeQuote body="最近さ、みんなコーディングエージェント作ってる感じだよね。 Cline 、 VS Code Copilot の Agent mode 、 Roo Code 、 Kilo Code 、 Zed とか、他のツールとどう違うのか気になるわ。クローズドソースとか CLI ベースのはもちろん色々あるけどね。何か突出した機能ある？" userName="olalonde" createdAt="2025/05/08 17:24:01" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body=" Void 開発者だけど、今の AI コードは拡張機能じゃなくフル IDE が主流。 UX 制御できるからね。プラグイン多いけど、 Void はフルオープンソース IDE で大手並の全機能（編集、エージェント、補完、チェックポイント）があるのが違い。大手（ Cursor/Windsurf/Copilot ）はバックエンド経由だけど、 Void はプロバイダー直結でローカルモデルとか好きなの使いやすいよ。 Void 以外にフルオープンソース IDE は無いんだ。次はエージェント向け Git ブランチングやる予定。フル IDE じゃないと難しいかもね。" userName="andrewpareles" createdAt="2025/05/08 18:24:16" color="#785bff">}}




{{<matomeQuote body="俺の意見だけどさ、エージェントモードってあんまりいらないんだよね。ベテランエンジニアだし、何やるべきか分かってるし、 LLM に何やらせるか伝えるのも全然平気。エージェントモードは、タスク分解とかどう解決したら良いか分からない初心者開発者向けっぽいね。" userName="jadbox" createdAt="2025/05/08 17:34:07" color="">}}




{{<matomeQuote body="＞今の AI コードのビッグプレイヤーは、拡張機能じゃなくてフル IDE ＜って言うけど、 Claude Code （ IDE でも拡張機能でもない）も急速にシェア広げてるよ。今はコストがネックだけど、すぐ解決されるっしょ（ Gemini Code とかね？）。「今のところ」って点では君は正しいけど、正直現状よりトレンドの方が重要だと思うわ。" userName="jjani" createdAt="2025/05/08 19:45:00" color="#785bff">}}




{{<matomeQuote body="”初心者モード”っていつだって新参者にはつきもの。新人だった頃、俺は権威、本、チュートリアル、多数派、そして「とりあえず動くもの（今の AI ）」に振り回されたよ。これらを全部捨てるまでマジ長かった。でも開発者の自己学習にとって、これは通らなきゃいけない通過儀礼みたいな谷なんだ。この谷を抜け出したらマジ最高だよ。正しい道か不安なく何でもできるようになるからね。" userName="ivape" createdAt="2025/05/08 17:40:17" color="#ff33a1">}}




{{<matomeQuote body="初心者として AI エージェントに全部やらせてたら、その谷から一生抜け出せないんじゃね？" userName="boredtofears" createdAt="2025/05/08 18:06:20" color="#ff5c5c">}}




{{<matomeQuote body="そうそう。みんな AI で書いた重要なコード、あんまりデプロイしたことないんだ。それが壊れて AI でデバッグする時、マジ大変なことになる。その時「もう AI なんか使わん！」って思うかもね。＜br＞でももう AI なしじゃ無理なんだよ。だからこれが試練。多くの人が谷の深さを知って教訓を得て出てくる。多分「 AI は使い所を選ぶべき」みたいな教訓になると思うな。クールな旅だと思うよ。 AI ファーストなみんな、頑張って！俺はもう教訓たくさんあるから違う旅してるけどね（舵はまだあるよ）。" userName="ivape" createdAt="2025/05/08 18:11:31" color="#45d325">}}




{{<matomeQuote body=" continue.dev もオープンソースで、メッセージ送る時に”彼らのバックエンド”使わないんじゃないの？しばらく使ってないけど、 llama とかローカルモデルでタブ補完とかサポートしてたはずだよ。" userName="elAhmo" createdAt="2025/05/08 18:52:44" color="#45d325">}}




{{<matomeQuote body="＞血と汗と涙と格闘することになる＜<br>いや、ほとんどのソフトは immutable になるんじゃない？ただ置き換えるだけだよ。 mess を捨てて、もっと新しい LLM に数日でより良いバージョン作らせるんだ。古いコード基に新しいバージョンの仕様を書くように LLM に頼むんだよ。＜br＞もしそうなら、 AI ファーストやる勇気ない人たちは、ただ置いていかれるだけ。" userName="juliushuijnk" createdAt="2025/05/08 18:55:50" color="#ff5733">}}




{{<matomeQuote body="違いは、こっちはY Combinatorが出資してるってことだね。" userName="behnamoh" createdAt="2025/05/08 17:34:56" color="">}}




{{<matomeQuote body="Continueはすごい頑張ってるけど、あれはextension（plugin）じゃん！" userName="andrewpareles" createdAt="2025/05/08 18:54:00" color="">}}




{{<matomeQuote body="ターミナルツールの考えをシェア！<br>1〜2年でコードはシステムレベルになり、テキストだけじゃ厳しくなるかも。<br>図解とか増えて、ターミナルは不向きになるかもね。<br>Claude Codeみたいなテキストツールは今うまくいくけど、将来は違うかも。<br>だからターミナルツールは作らないけど、今は訓練とかに便利だよ。" userName="andrewpareles" createdAt="2025/05/08 22:21:27" color="#ff5c5c">}}




{{<matomeQuote body="プラグインの何が悪いの？<br>プラグインよりIDEの方が優れてる理由がわからないな。" userName="miroljub" createdAt="2025/05/08 20:56:44" color="">}}




{{<matomeQuote body="もしかしたら僕が世間知らずなのかもしれないけど、こういう議論で誰もJetbrainsに触れないのが驚きだな。<br>僕のプロとしての経験では、みんな使ってるIDEはあれだけだよ ：shrug：" userName="_kidlike" createdAt="2025/05/09 05:46:03" color="#45d325">}}




{{<matomeQuote body="＞ Claude Code（IDEでもextensionでもない）が急速にシェアを伸ばしてるって書いてるけど、それどういう根拠？<br>僕が見てる感じだと、全然話題になってないように見えるけどな。" userName="opdahl" createdAt="2025/05/08 21:33:38" color="">}}




{{<matomeQuote body="僕も同じ！<br>ChatGPTのWeb版とIDEを切り替えながら使うのは平気だよ。<br>コンテキスト切り替えはボトルネックじゃないな。<br>むしろ、IDEから離れて考えるのが好きなんだ。<br>散歩中にスマートウォッチで話してスマートグラスや音声で答えを見れるAIとか良いかもね。<br>画面見る時間増やしたくないんだ。" userName="dakiol" createdAt="2025/05/08 17:47:55" color="#785bff">}}




{{<matomeQuote body="extensions APIだと、サイドバーはコントロールできるけど、エディターの中身はほとんどコントロールできないんだ。<br>もし僕たちがextensionだったら、inline edit機能とか、ナビゲーションUIは作れなかっただろうね。" userName="mp5" createdAt="2025/05/08 21:48:05" color="#785bff">}}




{{<matomeQuote body="僕が関わったプロジェクトでJetbrainsを使ってる人に会った記憶がないな。<br>有料製品だからユーザーは少ないんじゃない？" userName="TingPing" createdAt="2025/05/09 12:06:58" color="">}}




{{<matomeQuote body="これって”オープンソース”って実は”クローズドソースになる前に市場を掴むこと”って意味？" userName="glitchc" createdAt="2025/05/08 17:40:12" color="#ff5c5c">}}




{{<matomeQuote body="Continue.devって拡張機能もあるじゃん？あれVS CodeとかIntelliJでインライン編集ちゃんとできるよ。" userName="LiveTheDream" createdAt="2025/05/09 02:01:23" color="#ff5c5c">}}




{{<matomeQuote body="俺シニアエンジニアだけど、エージェントはいつも使ってるよ。でかいコードベースで作業したり、色んな言語や技術試したりしてると、誰だって”初心者”になるんだ。" userName="fellowmartian" createdAt="2025/05/08 17:49:07" color="#ff5733">}}




{{<matomeQuote body="図って物事をシンプルに見せるのは得意だけど、詳細になるとマジでダメだよね。それだけでシステム全部作るのが20年前に廃れた理由も、コード生成がダメだっただけじゃないんだよ。矢印と繋がりのごちゃ混ぜになった仕様書でバグ見つけるのって、ほぼ不可能だったりする。画像検索で”complex unreal blueprint”って調べてみて。" userName="bcrosby95" createdAt="2025/05/09 01:47:10" color="#ff5c5c">}}




{{<matomeQuote body="どんな風に使ってるかいくつか例を教えてくれる？俺はすごく具体的なことお願いするのに慣れてるけど、エージェントモード全開ってのはあんまりでさ。" userName="azinman2" createdAt="2025/05/08 18:35:33" color="">}}




{{<matomeQuote body="＞Void以外にオープンソースのフルIDE代替はない<br>って話だけど、Zedもあるじゃん？<br>https://zed.dev<br>昨日HNのトップページにも出てたよ：<br>https://news.ycombinator.com/item?id=43912844" userName="nico" createdAt="2025/05/08 20:20:43" color="#45d325">}}




{{<matomeQuote body="Theia IDEが完全にオープンソースでVS Code互換のIDE（VS Codeのフォークじゃない）ってことを言っとく価値はあると思うよ。これは透明性とハックのしやすさに焦点を当てて、積極的にAI機能を追加してるところなんだ。" userName="SegmentTree" createdAt="2025/05/08 19:52:43" color="#ff33a1">}}




{{<matomeQuote body="これ全くその通り、よくある反論だよね。コードベース全体を巨大な統一図として完全に視覚化したいなんて人はいないだろうけど、リポジトリとそのデータ構造、あるいはReactプロジェクトとそのコンポーネントや状態なんかを、少なくともプレーンテキストからちょっと離れて、要約や概要で見られるようにならないとは考えにくいな。AIを使ってリポジトリの知的な概要を作る方法って、まだ未開拓のところがたくさんあると思うんだ。" userName="andrewpareles" createdAt="2025/05/09 03:05:00" color="#ff5733">}}




{{<matomeQuote body="なんか皮肉だよね。だって初心者こそ、クラフトを上達させるために手作業でやるべき人たちなのに。" userName="volkk" createdAt="2025/05/08 17:56:12" color="">}}




{{<matomeQuote body="バージョニングとgitブランチングってめちゃくちゃクールだと思う！それについてもっと詳しく話してくれる？Jujutsu/JJ[0]をgitに加えて、あるいは代わりに使うことを検討したか、興味あるんだ。少し触ってみたんだけど、新しいAIコーディング関連と一緒に試してみるのも考えてたんだ。これ、全ての変更を追跡しつつ、実際にコミットを明示的に作るより自然にフィットするんじゃないかな？ただの思いつきだけど！<br>[0]https://github.com/jj-vcs/jj" userName="bglusman" createdAt="2025/05/08 18:47:47" color="#38d3d3">}}




{{<matomeQuote body="Pycharmはデータサイエンスの世界ではめちゃくちゃ人気だよ。Community Editionは無料で、ほとんどの人が必要な機能の99パーセントがある。Cursorで開発してる時でも、デバッガを使うためだけにPycharmに戻っちゃうことがあるんだ。これらのVS Codeフォークで使われてるデバッガより、Pycharmの方が断然好きだからね。" userName="weberer" createdAt="2025/05/09 13:51:55" color="#38d3d3">}}




{{<matomeQuote body="inline editsってdiff editsと同じなのかな？もしそうなら、ClineとRooもできると思うけど。" userName="esperent" createdAt="2025/05/09 02:50:46" color="">}}




{{<matomeQuote body="CursorはAppImageでインストールもランチャー登録もされず、起動時にエラーが出て毎回 --no-sandbox オプションが必要なのが面倒すぎる。この手間が使う気をなくす理由だよ。VS Codeみたいにクリックで起動できる方がずっと楽。結局ClaudeやChatGPTのWeb版をVS Codeとコピペで使う方が多いな。" userName="dheera" createdAt="2025/05/08 18:15:24" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="この分野、色々ツールが出てるけど、俺にとっての理想はIDEとCLIのデュアルモード操作なんだ。<br>既存コードのLintをCLIでも再利用したいとか、CLIで進めてIDEで引き継ぐとか。<br>現状Cursorが最先端だけど、CLIツールにも別に投資しなきゃいけないなら全振りは厳しい。こういうデュアルモード機能持ってるツール、出てきてるかな？" userName="bhuga" createdAt="2025/05/09 02:56:46" color="#38d3d3">}}




{{<matomeQuote body="開発者向けOSSツールみたいに、「ツール＋モデル＋OSS」ってモデルは、デザイナーとかクリエイター分野でも有効じゃない？<br>BlenderとかKritaみたいに成功例もあるのに、VCがクリエイティブ向けOSSを嫌がるのが謎なんだ。<br>彼らはOSSからメリットないって言うけど、なんで投資家は非開発者向けはクローズドにしたがるの？正しいのかな？" userName="echelon" createdAt="2025/05/09 03:05:18" color="#785bff">}}




{{<matomeQuote body="たぶん主に価値をどう取るかの話じゃないかな。開発者を囲い込む方が、金のないクリエイターとか潰れそうなスタジオ（悪気はないけど、クリエイターって今キツそうに見えるよね）より儲かるんだよ。片方はテックのエコシステム向け、もう片方はアート向け。VCはテックを好む、リターンが大きいから。クローズドソースの方が多くの場合、盗難とかから守られるしね。でも、あなたが指摘するように、素晴らしいソリューションもあるから、決して行き止まりじゃない道なんだろうけど。" userName="bix6" createdAt="2025/05/09 03:31:54" color="">}}




{{<matomeQuote body="Zed（https://zed.dev/agentic）もCursorに似たagentic code editsをリリースしたらしいね。試したけどすごく良かったよ。" userName="alisinabh" createdAt="2025/05/08 19:39:18" color="#ff33a1">}}




{{<matomeQuote body="俺の経験だとZedのエージェントはCursorよりずっと質が悪いな。tab editsですら悪く感じるよ。俺の理解だと、これらってカスタムモデルじゃなくてプロンプトとかステアリングの組み合わせなんだよね。そう考えるとCursorの性能が他のと比べてすごく良いのは驚きだ。ただリクエスト数が多いだけ？何が秘密なんだろうね。" userName="minzi" createdAt="2025/05/08 22:38:56" color="#38d3d3">}}




{{<matomeQuote body="そして、またウェブブラウザで動くエディタじゃないのが、本当に、本当に良いよね。" userName="WD-42" createdAt="2025/05/08 19:47:28" color="">}}




{{<matomeQuote body="明らかにね。もしウェブベースなら、Zedは一部の解像度でテキストがぼやけて表示される問題は起こらないはずだ。この問題、1年以上も未解決なんだよね。https://github.com/zed-industries/zed/issues/7992" userName="hu3" createdAt="2025/05/09 02:44:27" color="#785bff">}}




{{<matomeQuote body="たださ、Vulcanがインストールされてない場合のフォールバックがあればいいのに…dockerコンテナの中でZedを実行したいんだよね。そうすればヤバいプラグインが悪さしないしさ。" userName="alfiedotwtf" createdAt="2025/05/09 12:53:03" color="#785bff">}}




{{<matomeQuote body="使えるようにするには、でっかいNode.jsのバイナリをダウンロードする必要ないの？" userName="muppetman" createdAt="2025/05/08 22:03:51" color="">}}




{{<matomeQuote body="わかんない、教えてくれる？<br>https://github.com/zed-industries/zed/issues/12589" userName="muppetman" createdAt="2025/05/09 09:31:56" color="">}}




{{<matomeQuote body="なるほどね。”使える”ってのは、language serversを活用するってことだよね。それらをゼロから書くつもりはないだろうし。で、何が言いたいの？" userName="WD-42" createdAt="2025/05/09 14:06:35" color="">}}




{{<matomeQuote body="シンタックスハイライトだけならいらないね。でもIDEみたいな機能にはlanguage serversが必要で、その中にはnode basedなものもあるんだ。<br>https://zed.dev/docs/languages" userName="TiredOfLife" createdAt="2025/05/09 07:00:56" color="#45d325">}}




{{<matomeQuote body="気づいたことだけど、cost trackingがないんだよね。だからいくら使ってるかpredictするのがすごく難しい。Cursorみたいなall inclusiveなツールならいいけど、自分でAPI keys持ち込むならこれって本当にnecessaryじゃん？このfeatureってroadmapに入ってるの？" userName="fcoury" createdAt="2025/05/08 18:57:06" color="#ff5c5c">}}




{{<matomeQuote body="それはすごくいいsuggestionだね。実はほとんどのmodelsのinput/output costsはstoringしてるんだけど、まだcost estimatesはcomputingしてないんだ。Definitely something to addだね。My only hesitationは、token-based cost estimatesがaccurateじゃない可能性があるってこと。（ほとんどのmodelsはtokenizersを提供してないから、eg. estimate the average number of characters per token in order to compute the cost, and this may vary per model）" userName="mp5" createdAt="2025/05/08 22:55:52" color="#38d3d3">}}




{{<matomeQuote body="APIからreturnedされるusageに基づいて、after the factでcostを表示するだけでもprobably usefulだと思うよ。Even if I don’t know how much my first requestがcost will, if I know my last request cost x cents then I can probably have a good idea from there." userName="mcintyre1994" createdAt="2025/05/09 09:35:16" color="#ff5c5c">}}




{{<matomeQuote body="これすごくcoolで、このspaceでmore competitionが増えるのはalways happy to seeね。That said, 2 suggestions:ー The logo looks like it was inspired directly from the Cursor logo and modified slightly. I would suggest changing it.ー It might be wise to brand yourself as your own thing, not just an ”open source Cursor”. I tend to have the expectation that ”open source [X]” projects are worse than ”[X]”. Probably unfair, I know." userName="johnfn" createdAt="2025/05/08 17:27:38" color="#785bff">}}




{{<matomeQuote body="提案ありがとう！<br>これらの課題は結構大変だったけど、Voidの次のメジャーアップデートで多分直すよ。<br>信じられないかもだけど、ロゴが似ちゃったのは実は意図してなかったんだ。無意識のバイアスはあったと思うけどね（「a slice of the Void」を表現しようとしたんだ）。" userName="mp5" createdAt="2025/05/08 19:24:18" color="#ff5733">}}




{{<matomeQuote body="アイコンはケーキのかけらの中に丸いVoidがあるみたいかな？<br>それがどんだけ簡単かっていう「it’s a piece of cake」にかけてるんじゃない？" userName="mentos" createdAt="2025/05/09 08:54:28" color="">}}




{{<matomeQuote body="ちょっと反論させて。個人的には「open source Xyz」って好きだな。<br>何するツールかすぐ分かるし。SEOにもすごくいいんだよ。<br>オープンソース版の名前知らないから「open source Cursor」でKagi、Google、DDG検索するとすぐトップに出る。スパムまみれにならないでさ。" userName="freedomben" createdAt="2025/05/08 17:52:02" color="#38d3d3">}}




{{<matomeQuote body="＞個人的には「open source Xyz」って好きだな。何するツールかすぐ分かるし。<br>でもそれって参照されてる非オープンソースのソフトに詳しければの話でしょ。<br>Cursor使ったことないから何ができるか全然分かんないよ。<br>Inkscapeも、もしずっと「open-source Illustrator」って説明されてたら絶対見つけられなかったと思うな。Adobeソフト使ったことないからさ。" userName="Timwi" createdAt="2025/05/09 02:38:10" color="#45d325">}}




{{<matomeQuote body="VSCodeを拡張機能にするんじゃなくて、フォークすることに何かメリットあるの？" userName="nm980" createdAt="2025/05/08 17:15:00" color="">}}




{{<matomeQuote body="Void開発者だよ！<br>他の人が言ってるように、VSCodeは拡張機能でできることにかなり制限があるんだ。<br>Accept|Reject UIとUX、Cmd+K、ターミナルとタブの制御、カスタムオートコンプリートなんかの俺たちが作った機能は拡張機能じゃ無理なんだよね。<br>IDE作る方が大変だけど、IDEをフル制御できることは、将来LLMツールが進化する時にすごく重要になると思ってるよ。" userName="andrewpareles" createdAt="2025/05/08 17:55:42" color="#38d3d3">}}




{{<matomeQuote body="the Accept|Reject UI and UX 、ContinueってVS Code拡張機能としてもこれできてるみたいだよ。" userName="mentalgear" createdAt="2025/05/08 18:12:53" color="#785bff">}}




{{<matomeQuote body="＞サイドバーの開閉みたいな細かいこと<br>これは確か？<br>拡張機能で、ある条件下で自動的にサイドバーを開閉するやつ使ったことあると思うんだけど。" userName="stevage" createdAt="2025/05/09 00:46:29" color="">}}




{{<matomeQuote body="元VSCode拡張機能開発者だけど、VSCodeは拡張機能でできることマジで制限してるよ。<br>これは意図的でVSCodeの成功に繋がったんだろうけど、全然新しいUIインタラクションを作りたいときには向いてないね。<br>例えば、Cursorのcmd-kみたいなインライン生成UIはVSCode拡張機能としては基本的に不可能だよ。" userName="johnfn" createdAt="2025/05/08 17:30:14" color="#45d325">}}




{{<matomeQuote body="誰かVS Codeをもっと自由なやり方でフォークすればいいんじゃない？<br>そしたらみんなその上で拡張機能作れるし。" userName="stevage" createdAt="2025/05/09 00:47:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
