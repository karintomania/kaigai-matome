+++
date = '2025-06-17T00:00:00'
months = '2025/06'
draft = false
title = 'これが！効果的なAIエージェントの構築術'
tags = ["AI", "AIエージェント", "LLM", "開発", "プログラミング"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> これが！効果的なAIエージェントの構築術

引用元：[https://news.ycombinator.com/item?id=44301809](https://news.ycombinator.com/item?id=44301809)




{{<matomeQuote body="この記事はこのトピックについてかなり良いと思う、特に「AI agents」の定義を最初に明確にしてるのがいいね！　彼らが使ってるのは”LLMが自身のプロセスやツールの使用を動的に指示し、タスクを完了する方法を制御するシステム”だってさ。エージェントとワークフローを区別して、役立つワークフローパターンをたくさん説明してるのも好きだな。記事が出た時に僕もノートを公開したんだ：https://simonwillison.net/2024/Dec/20/building-effective-age...<br>Anthropicの最近の記事もあるよ：https://www.anthropic.com/engineering/built-multi-agent-rese... 　— ”How we built our multi-agent research system”ってやつ。これすごく面白かったから、ノートをまとめたんだ：https://simonwillison.net/2025/Jun/14/multi-agent-research-s..." userName="simonw" createdAt="2025/06/17 18:59:25" color="#38d3d3">}}




{{<matomeQuote body="Building Effective Agentsの著者の一人がAIEにも来て、この記事のトークバージョンをやってくれたんだ。評判良かったよ：https://www.youtube.com/watch’v=D7_ipDqhtwk" userName="swyx" createdAt="2025/06/17 23:35:04" color="">}}




{{<matomeQuote body="マルチエージェント研究の記事は素晴らしいね。ただ、Building effective AI agentsの記事で1つ反対意見があるんだ—フレームワークなしで最初のシステムを構築するのは教育的には良いけど、良いフレームワークから得られる最初のメリットは、異なる（そしてクロスベンダーの）LLMを簡単に試せることだよ。" userName="smoyer" createdAt="2025/06/17 20:30:43" color="#785bff">}}




{{<matomeQuote body="大規模なユーザーベース向けのLLMシステムをいくつか構築した経験から言うと、APIを交換できる能力はボトルネックにならないよ…まったくだ。いつも挙動の問題かモデル間の能力の違いなんだ。<br>フレームワークは普通、複雑さ、不明瞭さ、APIのずれを増やすだけ。今は、オブザーバビリティや実験などがたくさん得られるなら話は変わるかもしれない。フレームワークをデフォルトで使うべきか、本当に問われる地点にようやく来たと思う。<br>例えば、APIに直接つなぐ自分のJavaコードで製品の最初のバージョンを作ったんだ。クリーンなアーキテクチャとオブザーバビリティなんかで製品を素早く届けられた。その後、社内エコシステムが（記事で触れられてる）フレームワークで統一されたから、チームがそれをPythonのフレームワークに移行するのを引き受けたんだけど、まだ終わってない。社内システムや社内のオブザーバビリティ設定、他のアプリケーションがやってることに合わせて適応させなきゃいけない抽象化レイヤーがたくさん入るんだ。<br>みんなそのコストを過小評価してるね。だからV0製品を立ち上げる（完全なスタートアップじゃないなら）デフォルトでは、APIをそのまま使うことだ。それが僕のアドバイス。" userName="XenophileJKO" createdAt="2025/06/18 06:43:13" color="#ff33a1">}}




{{<matomeQuote body="僕の経験（特にLangGraphで）と一致するな。プロトタイプがJavaで”本番”バージョンがPythonになるなんて、時代の残念な兆候だとさえ思うよ。<br>LangGraphの経験だと、愚かな実行時型エラーを修正するのに膨大な時間を費やすんだ。だって、各グラフの状態は非常に最小限の型付けしかない愚かなJSON blobで、システム内をデータがどう動くのか把握するのがすごく大変なんだ。Pythonの元々弱い型サポートと合わせて、そして通常は長時間実行されるプロセスを扱っていて、プロセスの中盤や終盤で壊れることが多いから、開発はかなりひどくなる。AIコーディングアシスタントもそんなに助けてくれない。テストも書くのが難しい。なぜなら、これらのフレームワークは避けられないほどPythonの動的な性質に寄りかかってるからね。<br>なぜ人々が、唯一のAIまたはMLがAPI呼び出しである（あるいは非常にたまに軽量なエンベディングをやる）時に、これらの巨大で複雑なシステムを型なし言語で構築することを選んでいるのか、理解できない。" userName="davedx" createdAt="2025/06/18 08:35:35" color="#ff5733">}}




{{<matomeQuote body="＼ I think the ability to swap out APIs just isn’t the bottleneck＼<br>テストにとってはめちゃくちゃ面倒くさいんだよ。X個のもののうちどれがユースケースに最適かをチェックするのは、X個の実装を持たなきゃいけないとかなり面倒だろ。キーといくつかの変数を交換するだけで済むセットがあれば、これがめちゃくちゃ楽になるんだ。" userName="IanCal" createdAt="2025/06/18 14:20:57" color="#ff5733">}}




{{<matomeQuote body="だから、異なるLLMを抽象化するライブラリ（フレームワークではない）を使うんだよ。<br>僕は個人的にLiteLLMのファンだけど、代替案はきっとあるはず。" userName="miki123211" createdAt="2025/06/17 23:28:28" color="">}}




{{<matomeQuote body="それだけでなく、フレームワークにオブザーバビリティ、評価、デプロイメント、クラウドセキュリティなどの構成要素があれば、プロダクションにも準備できるんだよ…" userName="retinaros" createdAt="2025/06/18 13:25:53" color="">}}




{{<matomeQuote body="この記事でのワークフローの定義は不正確だと思うな。モダンなエンジンでのワークフローは、事前に定義されたコードパスを通らないし、これらのケースではエージェントは実質的にワークフローと同じだよ。ワークフローの再定義は差別化しようとする試みみたいだけど、ほとんどの場合、エージェントはLLMの応答に基づいて動的に何かを呼び出すループを持つワークフローに過ぎないんだ。モダンなワークフローエンジンは非常にダイナミックだよ。" userName="kodablah" createdAt="2025/06/18 01:44:13" color="#ff5733">}}




{{<matomeQuote body="違いは「どのくらいレールが敷いてあるか」って点だと思うな。<br>ワークフローは情報や制御フローに関して、もっと多くの構造やルールがある。一方、エージェントはよくツールセットとプロンプトだけ与えられる。彼らはもっと自由形式なんだ。<br>例えば、ワークフローは「顧客の問題が払い戻しなら、払い戻しフローに進む」のような曖昧なルールを定義するかもしれないが、エージェントはカスタマーサービスツールを与えられて、それぞれのケースを自分でどう扱うか考えるんだ。<br>僕にとっては、これは意味のある区別だと思うね。ワークフローはもっと予測可能で信頼性が高い。エージェントはより自由で、より幅広いタスクに取り組める。" userName="sothatsit" createdAt="2025/06/18 02:25:56" color="#ff5c5c">}}




{{<matomeQuote body="君の言いたいことを強調したくて、LLMに言語タギングさせるために最近書いたワークフローを下に書くね。<br>これは、LLMがツールを持ってて自分で判断するような”エージェント”とは全然違うんだ。<br>LLMは驚くほどパワフルだけど、この種の”足場”（ワークフロー）がないと、一貫した選択をするのに十分信頼できないんだよ。<br>--<br>1. ここにあるのは、a)どんなタグが欲しいかと理由（例付き）を示す”言語スキーマ”、b)タグ付けしたいテキスト、c)以前定義された関連しそうなタグのリスト（単純な文字列一致）。<br>タグ付けで使う予定の既存タグを自分でリストアップしてね。<br>[LLMがタグリストを生成]<br>2. 上記のa,b,cと、d)君自身のタグリストをどうぞ。<br>ドラフトタグを書いてね。<br>[LLMがドラフトを作成]<br>3. 上記のa-dと、e)最初のドラフト、f)スキーマ違反かもしれないプログラム生成された”リンター”警告をどうぞ。<br>ドラフトがスキーマに従っているかチェックしてね。<br>[LLMが新しいドラフトを作成]<br>エージェントはテキストとタグの間に1対1の相関があるかなどの”厳格な”ルールをチェックする。ルール違反がなければステップ5へ。<br>4. 上記のa-eと、g)最新のドラフト、h)既知のルール違反をどうぞ。エラーを修正してね。<br>[LLMが新しいドラフトを作成]<br>厳格なルールが破られなくなるまで4を繰り返す。<br>5. [以下続く]" userName="gwd" createdAt="2025/06/18 11:18:35" color="#ff5c5c">}}




{{<matomeQuote body="’エージェントは一方、よく一連のツールとプロンプトを与えられる。ずっと自由形式だ。’<br>これが、僕の経験では現代のシステムでワークフローがどう使われるかを定義してると思うんだ。<br>ワークフローは予測不可能じゃないことが多くて、前の呼び出し（例：LLMコール）からの応答に基づいて、一連のツールの一つを実行したりするからね。" userName="kodablah" createdAt="2025/06/18 16:48:29" color="">}}




{{<matomeQuote body="君は”ワークフロー”という言葉の唯一の有効な定義が、https://airflow.apache.org/のようなソフトウェアで使われる定義だと勘違いしてるみたいだよ。<br>https://www.merriam-webster.com/dictionary/workflowによれば、この言葉は1921年にさかのぼるらしい。<br>Anthropicがその言葉を使って、LLMツールの使用の文脈で彼ら自身の別の定義を示せない理由はないし、彼らがここでやったのはまさにそれだよ。" userName="simonw" createdAt="2025/06/18 04:36:38" color="">}}




{{<matomeQuote body="そう、僕が言ってるのは、彼らの定義がその言葉の現代的な使い方で正確なものだとは思わないってこと。<br>それは物語に合わせるための人為的に制限された定義だよ。<br>エージェントは非常に限定されたワークフローにすぎないんだ。" userName="kodablah" createdAt="2025/06/18 16:46:39" color="">}}




{{<matomeQuote body="誰かAnthropicがどのAIエージェントフレームワークを使ってるか知らない？彼らが自分で何かリリースしたようには見えないけど。" userName="koakuma-chan" createdAt="2025/06/17 21:53:09" color="">}}




{{<matomeQuote body="見た感じだと、メインのLLM（君がクエリを送る相手 - orchestrator）が、ツールコールを介して他のLLMを呼び出してるみたいだね。<br>ツールもLLMを呼べるし、特定の指示を持てるけど、ほとんどはorchestratorが何を調査すべきか決めて、特定のサブクエリを割り当ててる。<br>検索クエリの深さ＼レベルも限られてるよ、彼らが使うプロンプトを見るべきだね[1]<br>これのクールな例は、claude codeを使って何か検索するように頼んだときに見られるよ。<br>verbose設定だと、MCPツールを呼んで検索を手伝わせるんだ。<br>ツールは関連リンク付きで結果の要約を返す（生の検索結果テキストじゃない）。<br>似たような方法だけど、もっと堅牢なのが、Claudeが深い調査をする際にも使われるんだ。<br>[1]: https://github.com/anthropics/anthropic-cookbook/blob/main/p..." userName="ankit219" createdAt="2025/06/18 00:34:54" color="#ff5c5c">}}




{{<matomeQuote body="彼らはハンドオフ、サブエージェント、並行ツールコールなどについて言ってたよ。<br>自分で書くこともできるけど、それは独自のフレームワークを発明することになるでしょ。" userName="koakuma-chan" createdAt="2025/06/18 00:35:17" color="">}}




{{<matomeQuote body="サブエージェントは、オーケストレーターLLMにツールとしてインポートして提供する別のLLMループだよ。<br>例えばClaude Codeでは、サブエージェントはTask(＜description＞)というツールで、メインLLM（君がチャットするLLM）にpatch_fileやweb_searchのような他のツールと一緒に提供されてるんだ。<br>並行ツールコールは、LLMが1つではなく複数のツールコールを書いた時に起こることで、君のアプリでそれを順番に、または並行して実行するようにプログラムできる。これは自明な概念だよ。<br>ここでの”エージェントフレームワーク”層は非常に薄くて、存在しないも同然で、Anthropic＼OAIのSDKを直接使える。<br>ここに派手な円グラフのようなものは必要ないと思うね。" userName="crazylogger" createdAt="2025/06/18 07:29:58" color="">}}




{{<matomeQuote body="’エージェントフレームワーク’層は薄すぎて存在しないも同然<br>AIエージェントを作るのに必要なことで、再実装したり毎回コピペしたりしたくないことはたくさんあるんだ。<br>一番厄介なのは自動的な会話履歴の要約だね（例：最新のOpenAIリアルタイムモデルで不注意で60ドル無駄にしちゃったんだけど、会話履歴が大きくなるにつれてコストがすぐに上がるから）。<br>そして、将来もそんなことがもっと見つかるはずだよ。" userName="koakuma-chan" createdAt="2025/06/18 11:12:18" color="#ff33a1">}}




{{<matomeQuote body="Gemini 2.5 Proの音声品質マジおすすめだよ。値段も安いし、APIの品質も最高。俺はここで実装したけど（https://www.github.com/akdeb/ElatoAI）、ハードウェア絡みだから参考になるかわからんけどね。" userName="akadeb" createdAt="2025/06/18 11:24:17" color="#ff5733">}}




{{<matomeQuote body="LiveKit使ってるんだけど、Gemini試したらOpenAIと互換性ないかバグってるみたい。LiveKitの問題かGeminiの問題かわかんないけど。結局LLM, SST, TTSは別ノードで使うことにしたわ。Deepgram Voice Agent APIも見てるけどLiveKitはまだ対応してないっぽい？" userName="koakuma-chan" createdAt="2025/06/18 11:33:52" color="#ff5c5c">}}




{{<matomeQuote body="結局まだただのループじゃん。あと、AIで“並列呼び出し”が新機能みたいになってるのウケるんだけど？CSの夜明けから並列処理なんてできたし。" userName="risyachka" createdAt="2025/06/18 07:18:29" color="">}}




{{<matomeQuote body="＞開発者はLLM APIを直接使うことから始めるべきだと提言します<br>記事で一番いいアドバイスだわ。ウェブサービスに文字列の配列送るためだけにフレームワーク使うとかマジありえん。うちのプロジェクトではLangChainもLangGraphも外したよ。まじ無価値、ボイラープレート増えて使わないよりコード量増えるし。" userName="iLoveOncall" createdAt="2025/06/17 20:56:50" color="#45d325">}}




{{<matomeQuote body="Langflowもその部類に入ると思うな。でも、いろんなフローを共通形式で整理するには絶対使い道あるでしょ。SDで画像生成するのにコード書くとか、シェーダーコード書くとかできるけど、Comfy-UIとかシェーダーグラフ使った方がマジ整頓されるし、特にフローが複数ある場合や実験する時はね。" userName="fennecbutt" createdAt="2025/06/18 00:12:36" color="#ff33a1">}}




{{<matomeQuote body="半年経って、AI分野は長い時間って感じ。この記事数ヶ月前に何度も読んだけど、今考えるとエージェントの開発は明らかにボトルネックにぶち当たってるね。最新のGeminiでさえ退化したように見える。" userName="chaosprint" createdAt="2025/06/17 21:15:45" color="">}}




{{<matomeQuote body="（1）マルチエージェントはコスト高い、RoI下がる。株のDeepSearchエージェントは6体使うから1クエリ2ドルくらいかかる。（2）オーケストレーションの制御むずい。（3）モデルの能力高いほどマルチエージェントの必要性低い。（4）モデルの能力低いほど特化型AIのビジネスケースは高い。" userName="jsemrau" createdAt="2025/06/17 21:51:35" color="#38d3d3">}}




{{<matomeQuote body="具体的に何が退化させてんの？なんで自分自身の群れを並列に動かして24時間体制で作業チェックして進歩できないわけ？" userName="EGreg" createdAt="2025/06/17 21:29:53" color="">}}




{{<matomeQuote body="プロンプトインジェクションの問題解決に苦労してるみたいだね。それがボトルネックの一つだ。" userName="m3kw9" createdAt="2025/06/17 21:18:39" color="">}}




{{<matomeQuote body="実際に稼働してて、会社のお金を節約したり、ちゃんと価値のある仕事（お菓子の袋の隙間を埋めるだけの文章じゃないやつね）をしてるAgentの例、誰か知ってる？" userName="i_love_retros" createdAt="2025/06/18 10:59:09" color="">}}




{{<matomeQuote body="ChatIPTってのがいいよ！生物多様性データの課題を解決してる。Agentとは言ってないけど、Pythonコード書いて実行してる。GBIF.orgの記事見てみて。ベータ版だけど、初心者向けのチャットボットで、データ整理とかGBIFへの公開を助けてくれる。バイオロジストはコーディングとかExcel好きじゃないから、価値あるデータが使われないことがあるんだ。LLMがコード生成とかデータ処理得意になったおかげで、非専門家でも簡単にデータ公開できる自動ツールができたって開発者が言ってるよ。<br>https://www.gbif.org/news/6aw2VFiEHYlqb48w86uKSj/chatipt-sys..." userName="a_bonobo" createdAt="2025/06/18 13:24:25" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="louie.aiでは、Agentが日々の調査業務を自動化してるよ。１つめは、アラート/チケットが来たらAgentがAPIとかDBで事前調査して、誤検知を減らしたり詳細情報を提供。人間の時間と処理速度を改善してる。２つめは、調査中にAgentがSplunkやdatabricksなんかを2～10分かけて調べてくれる。Agentの裏側にはDBのセマンティックレイヤーとか、ログ/テキスト/データフレーム分析ツールとかがあるんだ。" userName="lmeyerov" createdAt="2025/06/18 15:49:25" color="#785bff">}}




{{<matomeQuote body="記事にある通りの設定でn8nのワークフロー使ってみたけど、簡単な質問に答えるのに3ドルかかるし、少なくとも3分も待たされる。やっぱいいや、当分は普通の検索で十分だ。" userName="laurentiurad" createdAt="2025/06/18 08:17:36" color="">}}




{{<matomeQuote body="この記事は、うまくいく一番シンプルなことから始めて、本当に必要な時だけ複雑にしろって良いリマインダーだね。いくつかの明確なLLM呼び出しと軽い連携ロジックの方が、だいたい安定してデバッグしやすいし、ずっと安く動く。派手でフル機能のAgentは、解決する問題より問題を引き起こすことの方が多いかも。" userName="Zaylan" createdAt="2025/06/18 02:47:48" color="#ff5733">}}




{{<matomeQuote body="実際にAgentをプロダクション運用してる会社で働いてる者として、一番最初の「LangraphみたいなAgentフレームワークを使え」って意見には大反対だね。（ワークフローじゃなくてAgentだよ）まさにそうやってみたら、1ヶ月で全部捨てて、結局ゼロから全部作り直したんだ。そしたらシステムはかなりスケールするようになった。正直、フレームワークの使いどころもあるかもしれないけど、Agent分野はまだ始まったばかりで良いフレームワークは出てきてない。ちょっと逆張りだけど、この分野は動きが速すぎて、良いフレームワークは「永久に」現れない可能性すらあると思うよ。" userName="suninsight" createdAt="2025/06/18 08:13:18" color="#45d325">}}




{{<matomeQuote body="あれ？記事の内容と一致してるんじゃない？記事にはこう書いてあるよ：<br>＞過去1年間、私たちは様々な業界でLLM Agentを構築する何十ものチームと仕事をしてきました。一貫して、最も成功した実装は複雑なフレームワークや特化ライブラリを使ってませんでした。代わりに、シンプルで構成可能なパターンで構築していました。<br>＞…Agentシステムを実装しやすくするフレームワークはたくさんあります…しかし、それらはプロンプトやレスポンスを隠す抽象化レイヤーを追加し、デバッグを難しくすることがよくあります。シンプルな設定で十分な場合でも、複雑さを加えたくなる誘惑に駆られることもあります。開発者はLLM APIを直接使うことから始めることを推奨します：多くのパターンは数行のコードで実装できます。" userName="gwd" createdAt="2025/06/18 11:22:57" color="#45d325">}}




{{<matomeQuote body="N8Nのエージェントツールでの試作段階から、自分でホストできる実際のシステムに移行しようとしてるんだけど、LangchainとかHaystackとかCrewとかを捨てて、もっとシンプルに全部できる自社コードを使ってる実用的な現場が多いってコメントをたくさん読んだんだよね。でも、現実世界でツールとかって実際どうやって作られてるのか、今はまだ想像できないんだ。参考にできるリンクとかドキュメントで、共有してもらえるものがあったら教えてくれる？" userName="weego" createdAt="2025/06/18 10:41:51" color="#785bff">}}




{{<matomeQuote body="うちはほとんど内製だよ。だって他のツールがまだ追いついてないからね。ブログに情報がたくさん載ってるよ（https://www.nonbios.ai/blog）。<br>唯一使ってるソフトウェアはオブザーバビリティのLangfuseなんだけど、それも厳しかったんだよね。でもV3が出たから、まだ使えるかもしれない。僕ならAIに特化してない標準的なPythonライブラリを使って、自分でシステムを組むことをおすすめするよ。N8Nから自分でホストするシステムに移行するなら、NonBioSを使って直接構築することもできるんだ。Discordチャンネルに参加してくれたら、エンジニアに手伝ってもらうこともできるよ。" userName="suninsight" createdAt="2025/06/19 12:18:07" color="#ff33a1">}}




{{<matomeQuote body="そのエージェントはどんな仕事をするの？" userName="i_love_retros" createdAt="2025/06/18 12:44:00" color="">}}




{{<matomeQuote body="NonBioS.aiっていうAI Software Devだよ。" userName="suninsight" createdAt="2025/06/19 12:12:33" color="">}}




{{<matomeQuote body="今はAI Agencies（AIエージェンシー）がすべてだよ。" userName="kevinventullo" createdAt="2025/06/17 19:53:06" color="">}}




{{<matomeQuote body="そうだよ、でも記事は僕的にはすごくよく持ちこたえてると思う！これを参考にいつも使ってるし、古くなった感じはしないな。この記事のおかげでAnthropicがAIツールの開発における“実用的なパートナー”として再定義されたんだ。" userName="nahsra" createdAt="2025/06/17 19:14:56" color="#ff5c5c">}}




{{<matomeQuote body="＞ ダメだぁぁぁ！また脳みそ使って、2024年12月のcaveman（原始人）みたいにコードを100%自分で書かなきゃいけないのか<br>https://news.ycombinator.com/item?id=44260988" userName="nico" createdAt="2025/06/18 00:27:02" color="#45d325">}}




{{<matomeQuote body="「シンプルでコンポーザブルなパターンを使おう」って話、何十年も「一つをうまくやろう」って格言が生きてるのがすごい安心するね。<br>コンポーザビリティ最高！" userName="btbuildem" createdAt="2025/06/17 20:58:56" color="">}}




{{<matomeQuote body="エージェントってタスクキューイングとか競合状態とか、並行処理の問題にどう対応するの？<br>複数のエージェントでワークフロー組む記事はよく見るけど、全体を管理するオーケストレーターのあたりとか、なんか曖昧な感じがするんだよね。ちゃんとした設計とか、賢い”つなぎのコード”が必要なんじゃないかと思うんだけど。それとも、全部魔法みたいに動くの？" userName="AvAn12" createdAt="2025/06/17 19:54:02" color="#45d325">}}




{{<matomeQuote body="エージェントの「標準」はツールを順番に実行するから、並行処理は心配いらないよ。最近のモデルには並列ツール呼び出しをサポートしてるのもあって、モデルが「この3つのツールを実行して」って言ったら、それを並列でも直列でも実行できるんだ。<br>Anthropicは親エージェントが子エージェントに並列で任せるみたいなマルチエージェント構成を推してるね。Claude CodeとかClaude Researchで使ってるみたい。その解析記事はこれ→https://simonwillison.net/2025/Jun/2/claude-trace/<br>Claude Researchの話はこれ→https://simonwillison.net/2025/Jun/14/multi-agent-research-s...<br>LLMのツール利用パターンはまだ手探り段階で、モデルがツールをうまく使えるようになったのもここ半年くらいだから、オーケストレーションの方法はこれから色々分かってくるはずだよ。" userName="simonw" createdAt="2025/06/17 20:21:43" color="#ff5733">}}




{{<matomeQuote body="まだ「great」ってほどじゃないと思うな。<br>僕の場合、Gemini 2.5 Proは構文的に正しいツール呼び出しを生成するのに、たぶん50％くらいの確率で失敗するよ。" userName="svachalek" createdAt="2025/06/17 21:23:57" color="#45d325">}}




{{<matomeQuote body="Geminiに組み込まれてるAPIツール呼び出しの仕組みを使ってるの？それともプロンプトでXMLとかJSONを生成させてるの？" userName="simonw" createdAt="2025/06/17 22:41:07" color="">}}




{{<matomeQuote body="これ、どうするのがおすすめ？<br>「本来なら」JSONスキーマでネイティブのツール呼び出しを使うべきなんだろうけど、実はXMLを作らせる方がうまくいった経験があるんだ。JSONの構文を正しく生成させるのは問題が多いみたい。" userName="mediaman" createdAt="2025/06/17 23:05:19" color="">}}




{{<matomeQuote body="僕はネイティブのツール呼び出しを使ってるよ。これ→https://github.com/simonw/llm-gemini/commit/a7f1096cfbb73301...<br>今のところすごくうまくいってる。" userName="simonw" createdAt="2025/06/17 23:45:27" color="#ff33a1">}}




{{<matomeQuote body="「エージェントの標準はツールを順番に実行すること」ってのは正しくないと思うな。<br>エージェントの利点は、必要に応じてツールを使えることだよ。つまり、その時々に最適なツールを使うこと。例えば、「9.11と9.9どっちが大きい？」→エージェントが計算機ツールを使う、とか。" userName="jsemrau" createdAt="2025/06/17 22:15:17" color="">}}




{{<matomeQuote body="君が言ったことは何もあの引用と矛盾してないよ。<br>「順番に」って言ってるのは、「事前に決められた順番で」じゃなくて、「並列じゃない」って意味だよ。" userName="samtheprogram" createdAt="2025/06/17 22:59:47" color="">}}




{{<matomeQuote body="何も魔法みたいにうまくいくわけじゃないよ。従来のシステムと同じように、運用に必要なあらゆる特性を組み込む必要があるんだ。AIエージェントのデモを見て「あ、うちのチームのひどいスパゲッティコード、ちょっと賢いAIプロンプトで置き換えられるじゃん！」って思うのは、見かけによらず簡単で危険だよ。最初のいくつかユースケースではうまくいくかもしれないけど、あのコードには全部理由があって、結局は向き合うことになる。そのコードを全部直接AIプロンプトに翻訳して、ハルシネーションしないことを祈るような段階になったら、もうダメだってことさ。" userName="daxfohl" createdAt="2025/06/17 20:35:13" color="#45d325">}}




{{<matomeQuote body="やっと分かってきたか。<br>AIって結局、曖昧で整理されてない入力の自然言語処理くらいしかまともな使い道ないんだよ。<br>それ以外のAIエージェントができることって、全部安いコードで正確にやれるんだから。<br>コードで人間置き換えられるなら、AIだって置き換えられんだろ。" userName="deadbabe" createdAt="2025/06/18 16:07:12" color="">}}




{{<matomeQuote body="大手ソフト会社ならそうでもないかもね。<br>でも、技術系じゃない小さい会社なら、SE雇わなくても何か自動化するのに手軽でいいかもよ。" userName="daxfohl" createdAt="2025/06/18 21:15:15" color="">}}




{{<matomeQuote body="だからさ、全部JSONでツール呼び出しさせるより、LLMにツール呼び出しするコードを生成させる方がいいと思ってるんだ。<br>Huggingfaceのsmolagentsってライブラリは、LLMに普通のPython関数をツールとして呼び出すPythonコードを作らせるんだよ。<br>並列でツール呼び出ししたいなら、LLMにそう指示すればOK。<br>同期とかもLLMが上手くやってくれるはずだよ。<br>もちろん、LLMが作ったコードを実行するのはちょっと危ない問題もあるけど、いくつか解決策はあるんだよね。" userName="rdedev" createdAt="2025/06/17 21:20:26" color="#ff5c5c">}}




{{<matomeQuote body="正直、結構難しいよ。<br>でも、アクターモデルがエージェント作るのにすごく合うって気づいたんだ。<br>アクターのインスタンス＝エージェントのインスタンスね。<br>エージェント同士のやり取りは、ツール呼び出し（MCPとか他のRPCで）だよ。<br>俺はCloudflareのDurable Objects使ってるけど（Cloudflareで仕事してるから biased かも）、どのアクタースタイルフレームワークでも似たようにうまくいくと思うよ。" userName="cmsparks" createdAt="2025/06/17 20:11:01" color="#785bff">}}




{{<matomeQuote body="AIエージェントのプロトコル開発してる人達って、モデルとかデータを分散するために blockchain とか peer-to-peer みたいな分散アーキテクチャを検討すべきなのかな？<br>Amazon、Cloudflare、NVIDIA みたいな大企業が持ってる centralized なプラットフォームに頼ることのデメリットって何？<br>教えて！" userName="pyman" createdAt="2025/06/17 20:32:36" color="">}}




{{<matomeQuote body="それって、もっとホビイストがやるようなことだと思うな。<br>企業が作るなら、当然信頼できる centralized なシステムを使いたいだろうしね。<br>効率いいし、コントロールしやすいし、普通の人も使いやすいし。<br>分散型は、もっと自分でコントロールしたい、透明性が欲しいっていう個人向けだね。<br>分散型の public ledger とかなら、エージェントとかそのやり取りが改ざんされてないか検証できるけど、企業のはそこまで保証できない。<br>技術的には、やり取り管理に public distributed ledger を使うメリットはちょっと思いつかないんだ。<br>エージェントのタスクはすぐ終わるから、履歴を永久に記録する必要ないし。<br>blockchain は効率悪い mutex だし。<br>だから centralized architecture の方がいつもずっと効率的だよ。" userName="daxfohl" createdAt="2025/06/17 21:30:11" color="#785bff">}}




{{<matomeQuote body="いいポイントだね。<br>ほとんどの会社は、効率とかコントロール、使いやすさで centralized システムがメリット多いって agree だよ。<br>技術的に decentralisation が superior と言ってたんじゃなくて、long run で必要かも？って思ってただけなんだ。<br>もし agents が autonomous になって、色んな会社 platform 跨いで coordinate し始めたら、shared で trustless な層（distributed で auditable で neutral なやつ）があった方がいいかも。<br>agent tasks は ephemeral に agree だけど、long lived な multi-agent workflows とか agents 間の契約なら？<br>transparency と integrity がもっと大事かもね。<br>Short term では centralized systems が dominate するけど、scale で agent ecosystems を考えるなら、open な coordination models も必要かも。" userName="pyman" createdAt="2025/06/17 22:07:42" color="#785bff">}}




{{<matomeQuote body="俺の勘だと、やっぱりいらないと思うんだ。<br>人間の agents は全部を global shared record にしなくても協力できるから、AI agents もそうなるはず。<br>もし君が他のAI agent が何かやったか check する必要あるなら、「手動で」verify すればいいんだ。<br>workflow に検証ステップ加えて、君のAI agent が bank account を check して、相手が言った通りの sum を transfer したか verify するとかね。<br>人間同士のやり取りみたいに。<br>AIと automation が special なもん加えて、global public ledger が valuable になるのかもしれないけど、俺にはまだ見えてないだけだ。" userName="daxfohl" createdAt="2025/06/18 16:39:36" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Codexで長〜い作業計画を分割してもらったら、コンテキストが吹っ飛んで大変だったよ。<br>タスク分け自体はリアルっぽかったけど、結局手作業でやり直したな。<br>記事ほどAIエージェントは簡単じゃないのかもね。" userName="0x457" createdAt="2025/06/17 21:13:54" color="#ff5733">}}




{{<matomeQuote body="コーディング系のAIエージェントは、コンテナで隔離してgitで管理するのが定番になってきてるね。<br>MCPってツール（https://github.com/dagger/container-use）が参考になるよ。<br>他の作業にはn8nとかZapierとかCrewAIを使う人がいるみたい。" userName="gk1" createdAt="2025/06/17 20:31:55" color="#ff5c5c">}}




{{<matomeQuote body="AIエージェントを並行で動かすなら、キューに入れて順番に処理するのが一番安全じゃないかな。" userName="nurettin" createdAt="2025/06/17 20:35:45" color="">}}




{{<matomeQuote body="このAIハウツー、最近ので一番好き！<br>『エージェントじゃなく、ただのif文で十分だよ』って結論がほとんどで、複雑にするなってのが良いね。<br>Augmented LLM（ツールとかメモリと連携したLLM）って考え方も分かりやすいし、それのループがエージェントって定義も納得！" userName="gregorymichael" createdAt="2025/06/17 19:01:34" color="#ff5733">}}




{{<matomeQuote body="この記事、News Y Combinatorでも話題になってたよ。<br>『Building Effective ”Agents”』で、763ポイント、124コメントだって。" userName="mellosouls" createdAt="2025/06/17 21:27:32" color="">}}




{{<matomeQuote body="AIエージェントがタスクを終わらせたら、そのワークフローを保存しとくのどうかな？<br>そうすれば、似た入力が来たらそれ使って、LLMの判断を減らせるじゃん。<br>最終的には、入力タイプで使うツールを決める関数作って、新しい入力だけAIエージェントに任せる、とかね。" userName="deadbabe" createdAt="2025/06/17 20:01:13" color="#ff5c5c">}}




{{<matomeQuote body="それ、ある程度できるよ。<br>俺はneo4jっていう知識データベースを使って、プロセスとかタスクを管理してるんだ。" userName="0x457" createdAt="2025/06/17 21:26:01" color="#ff5c5c">}}




{{<matomeQuote body="この記事は役立つけど、Anthropicは技術者じゃない人向けも出してほしいな。<br>マーケティングチームとか、AIエージェントの仕様をどう決めるか基本が分からないから。<br>記事の後半とかAppendixは少しそういう方向だけど、『どう構築するか』はエンジニア向けだもんね。" userName="bredren" createdAt="2025/06/17 22:53:42" color="">}}




{{<matomeQuote body="みんな必死すぎて、LLMのパターンとか言い始めてるね。<br>エージェントのフレームワークって、Code FactoryとかCode Factory Factoryみたいなもん？<br>それとも、Monadが流行った時のBurritoの説明みたいにごちゃごちゃかな？" userName="bgwalter" createdAt="2025/06/18 00:22:09" color="">}}




{{<matomeQuote body="君の言う通りだね。<br>まだ数年も経ってないのに、AIエージェントのパターンとかフレームワーク（Langchainとか）を定義しようとするのは、時期尚早だしみんなに迷惑だと思うな。" userName="ivape" createdAt="2025/06/18 03:58:35" color="">}}




{{<matomeQuote body="Anthropicの人見てたらさ、記事のページに余白ちょっとつけてくんない？特にスマホだと画面ギリギリになっちゃってさ。" userName="evertedsphere" createdAt="2025/06/18 00:40:03" color="">}}




{{<matomeQuote body="この記事、流行りに乗らず実践的でいいわ～。みんなトレンドだからってすぐエージェントシステム作ろうとするけど、本当に必要か考えないこと多いもんね。" userName="guicen" createdAt="2025/06/18 03:03:39" color="#38d3d3">}}




{{<matomeQuote body="エージェントオーケストレーションの話、長期的な経済性を見落としてない？誰が継続費用払うかが重要。今APIとか計算資源だけど、将来はプラットフォームの「存在税」みたいなのがかかるかも。オーケストレーターは技術じゃなく大家だよ。代替案は許可不要な実行レイヤーで、これは効率性より主権の話なんだ。" userName="NetRunnerSu" createdAt="2025/06/17 22:36:10" color="#ff33a1">}}




{{<matomeQuote body="ここで言う「AIエージェント」って、どういう定義？なんか人間の権威ある立場の代わりみたいに聞こえるけど？" userName="simonw" createdAt="2025/06/17 22:40:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
