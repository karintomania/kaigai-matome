+++
date = '2025-04-16T00:00:00'
months = '2025/04'
draft = false
title = 'LLMエージェント開発でハマらないための12の鉄則！信頼性を爆上げする方法とは？'
tags = ["LLM", "AIエージェント", "開発Tips", "信頼性", "デザインパターン"]
featureimage = 'thumbnails/color2.jpg'
+++

> LLMエージェント開発でハマらないための12の鉄則！信頼性を爆上げする方法とは？

引用元：[https://news.ycombinator.com/item?id=43699271](https://news.ycombinator.com/item?id=43699271)

{{<matomeQuote body="この記事マジ最高じゃん。俺も数年やってて自分なりのテイク集[0]があったんだけど、そこまでファクターって呼べるかは微妙。一番デカいのは、一番下のプランニングループを自分で持つことかな。動的なプランニングもいいけど、OODAループ（観察、判断、決定、行動）を自分で持って、解決に近づいてるか（スコアリングとか）、あるいは脱出するか（最大ループ数とか）のヒューリスティクスを持つべき。<br>ワークフローエンジンも組み込むと良いかも。モデルにワークフローの仕様を作らせて、そのエンジンで実行させる（ワークフローステップがモデルを呼び出すこともあり）方が、モデル内で暗黙のワークフローを維持するより良い。[0]: https://mg.dev/lessons-learned-building-ai-agents/" userName="mgdev" createdAt="2025-04-17T02:10:03" color="#38d3d3">}}

{{<matomeQuote body="このガイド、マジで良いね。特に「チャットインターフェースはクソ」って意見に激しく同意。AIベースのUIはまだまだこれからだね。" userName="dhorthy" createdAt="2025-04-17T15:07:37" color="">}}

{{<matomeQuote body="DSPY[0]みたいなライブラリは、factor-2[1]にどう組み込まれるのかな？読んでたらBAMLってのが出てきたけど＞（上の例はBAMLを使ってプロンプトを生成…“<br>個人的には、構造化されてないデータから構造化された情報を抽出するためにプロンプトを手書きするのがマジで難しい。DSPYは今のところ良い感じ。BAMLの生のプロンプトを使ったみたいだけど、DSPY[2]の生のプロンプトについてどう思う？[0] https://dspy.ai/[1] https://github.com/humanlayer/12-factor-agents/blob/main/con...[2] https://dspy.ai/tutorials/observability/#using-inspect_histo..." userName="hhimanshu" createdAt="2025-04-17T07:18:17" color="">}}

{{<matomeQuote body="なるほどねー。この件に関してはBoundary (YC W23)の人たちに賛成かな。最先端のパフォーマンスが欲しいなら、箱を開けて中身をハックする必要があるよね。<br>この記事https://www.chrismdp.com/beyond-prompting/ には完全には同意しないけど、パンチカード→アセンブリ→C→高級言語の比較は参考になる。いつになったら適切な抽象化ができるんだろう？LangchainとかDSPYはまだAIの「C言語」じゃないと思う（そうなる可能性はあるけど！）。今はまだ「メタルに近い」ワークベンチで、トークンを調べたり、system/user/JSONみたいな特殊トークンを並べ替えたり、ライブラリのサポートを待たずに新しいモデルの癖に動的に対応できるようにするよ。" userName="dhorthy" createdAt="2025-04-17T15:14:25" color="#ff5c5c">}}

{{<matomeQuote body="究極のパフォーマンスを引き出すためには、一段低い抽象化レベルに降りる必要があるのはいつものこと。（例えば、10年くらい前にC言語でゲーム＋エンジンを書いて、SIMDベクトルでレンダーループを最適化した。）<br>でも、ほとんどのユースケースではそこまでの制御は必要ないと思うし、ツールが改善されればプロンプトは使われなくなると思う。<br>LangchainとDSPYは自分にはまだ合わないなー。プロンプト＋評価っていう考え方自体を見直す必要があると思う。（実は今、そういうツールを作ってるんだ！）" userName="chrismdp" createdAt="2025-04-17T15:35:25" color="">}}

{{<matomeQuote body="新しいツール楽しみにしてる！" userName="britannio" createdAt="2025-04-22T17:51:29" color="">}}

{{<matomeQuote body="チェックしてみたいな。<br>swyxのポッドキャストでnotebookLMチームの人が言ってたことだけど＞AIで本当にすごい体験を作る唯一の方法は、モデルの能力のギリギリのところを見つけて、それを常に正しく行うことだ“<br>だから、すごく良いもの/他のものより良いものを作るためには、できる限りの最適化をすべて取り入れることが常に役立つ。" userName="dhorthy" createdAt="2025-04-17T15:41:26" color="">}}

{{<matomeQuote body="一番すごい体験の構成要素は、LLMを関与させるのに適切なポイント、コンポーネントのオーケストレーション、そしてユーザーエクスペリエンスだと思う。<br>ゲームでもそうだった。プレイしててマジックを感じたゲームは、最高のハンドロールエンジンを持ったゲームじゃなかった。<br>プロンプトを無視できるツールはまだないし、生のプロンプトに立ち戻る必要がある時もある。プロンプトの調整がシステムの1%だけで済む未来が楽しみ。" userName="chrismdp" createdAt="2025-04-17T15:51:58" color="#38d3d3">}}

{{<matomeQuote body="そうそう。問題は、ツールスタック/フレームワークに組み込まれてて、その1%のケースでカスタマイズできない場合だよね。多くのツールが「カスタマイズしたいことは何でもできる」ような適切な抽象化をしようとするけど、うまくいかない場合がある。" userName="dhorthy" createdAt="2025-04-17T16:49:56" color="">}}

{{<matomeQuote body="マジそれ。すべてのインタラクションをラップすることはできないし、すべきじゃない。新しいアプローチが必要だね。" userName="chrismdp" createdAt="2025-04-17T17:03:24" color="">}}

{{<matomeQuote body="フレームワークのパターンに関する昔のブログ記事が、キャリアを通じてずっと心に残ってるんだよね。LLMも同じで、“ライブラリ”として使うのがベストだと思う。記事に書いてある理由とか、今みたいな変化の激しい時期には特にそう。でも“フレームワーク”の方がセクシーだし売りやすいから、ロックインとか追加サービスにつながるけど、そっちが宣伝されちゃうんだよなー。" userName="daxfohl" createdAt="2025-04-16T19:52:59" color="#ff5733">}}

{{<matomeQuote body="これマジで良い…<br>“パッケージ旅行はフレームワークみたいなもん。ホテルとか食事とか全部決まってて、それに合わせるしかない。自分で旅行を計画するのはライブラリを組み合わせるみたいで、フライトとか宿とか自分で手配するから大変だけど、完全にコントロールできるんだ。”" userName="saadatq" createdAt="2025-04-16T23:58:55" color="#ff33a1">}}

{{<matomeQuote body="おれが一番好きなブログ記事/プレゼンはSandi Metzの「The Wrong Abstraction」だけど、これも良いね。小さい記事なのに、かなり良いこと言ってる。" userName="daxfohl" createdAt="2025-04-17T01:23:24" color="#ff33a1">}}

{{<matomeQuote body="間違った抽象化より、重複の方がマシってことだね。めんどくさがらずにswitch文を書けってこと。" userName="dhorthy" createdAt="2025-04-17T01:28:43" color="">}}

{{<matomeQuote body="＞switch<br>うっ、ちょっと神経に触ったかも。switch文って、チームA, B, CがチームDのリポジトリに`switch(calling_service)`ブロックで特殊なコードを追加する入り口になりがち。このプレゼンの意図は、コンシューマーが自分のサービスでswitchを書けるように、もっと高いレベルでfactorすることだと思う。もしコンシューマーが似たようなロジックを書いてるなら、ライブラリとかサービスに落とし込むことを考える、みたいな。<br>でも、それ以外は同意。" userName="daxfohl" createdAt="2025-04-17T02:35:48" color="">}}

{{<matomeQuote body="なるほどね。switch文は“自分でやるべき基本的なプログラミングのプリミティブ”っていう広いカテゴリのことだね。確かに大きなswitch文はアンチパターンになりうる。インターフェースの方が明らかに適してる場合とか。" userName="dhorthy" createdAt="2025-04-17T02:39:21" color="">}}

{{<matomeQuote body="マジかよ、これ最高じゃん。リンク集に追加しよ。" userName="dhorthy" createdAt="2025-04-16T20:12:53" color="#ff5c5c">}}

{{<matomeQuote body="キャリア開発の面でも、フレームワーク（またはもっとヤバいプラットフォーム）に頼るより、低レベルのLLMインターフェースを学ぶ方が絶対に良い。それを学べば、プラットフォームへの移行は簡単だけど、その逆は難しい。ジュニアデベロッパーは、履歴書にフレームワークがたくさん書いてある方が有利だと思いがちだけど、逆効果なこともある。<br>セキュリティとか、最初からベストプラクティスが組み込まれてるのは良いけどね。特にAIは、ベストプラクティスがまだ確立されてないから、今は低レベルで色々試すのが良いと思う。フレームワークはすぐ obsoleteになるかもしれないし。" userName="daxfohl" createdAt="2025-04-16T21:23:19" color="#45d325">}}

{{<matomeQuote body="ほんとそれ。正しいインターフェースを考えようとしてるけど、すぐに決めつけちゃうんだよね。<br>もし正しいインターフェースがあれば、ブラックボックスを作って、必要な人が変更できるように穴とかノブをつけるはず。<br>間違ったインターフェースだと、ノブは役に立たないから、ボックスを開けたり、変な角度で穴に手を入れたりして、誰も予想してなかったことをやる羽目になる。<br>いつか正しいインターフェースができると思うけど、今はボックスをスキップして、余計なサイクルを使った方がマシ。エンジニアならforループとかswitch文くらい書けるでしょ。プロンプトを外注して、コントロールフローを手放すな。" userName="dhorthy" createdAt="2025-04-16T22:05:03" color="#ff5c5c">}}

{{<matomeQuote body="すごく参考になるwiki、ありがとうございます。ぜひ使わせてもらいます。実は、actor model、state machine、aspect oriented programmingに基づいて、独自の“AI Agents framework”[0]を作ったんです（昨日リリースしたばかりで、HNにはまだ投稿してません）。特に5と7が好きです。<br>5: Unify execution state and business state<br>8. Own your control flow<br>SecAIはまさにそうで、グラフのノードにLLMの呼び出しが埋め込まれてるんです。交渉、キャンセル、stateful relationで強化されてるから、より“有機的”です。devtools（dbg, repl, svg）も重要です。最初のtech demo[1]をリリースしました。Send/Stopボタンは“Factor 6. Launch/Pause/Resume with simple APIs”そのものです。ネットワークtransparentなので、スケールも可能です。" userName="pancsta" createdAt="2025-04-16T09:09:51" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="他のフレームワークが見落としがちなのは専用の devtools だよね。PydanticAI の Logfire はマジで使いやすかった！デバッグが他のフレームワークよりずっと楽だったんだよね。[0]も見てみて。<br>[0] https://ai.pydantic.dev/logfire/#pydantic-logfire" userName="serverlessmania" createdAt="2025-04-17T10:08:56" color="#ff5733">}}

{{<matomeQuote body="Logfire はトレースアプリで、Jaeger とか他の Otel UI と同じようなものだよ。今回は再実装 vs 統合については触れないけど、トレースはデバッグの一つの手段に過ぎないよね。am-dbg は実行ツリーじゃなくて、状態の合意のデバッグに焦点を当ててて、SaaS アカウントもいらないんだ。ワークフローには実行ツリーで十分だけど、bot/agent は単純なワークフローじゃないからね。" userName="pancsta" createdAt="2025-04-20T11:29:54" color="#785bff">}}

{{<matomeQuote body="terminal UI と otel 連携が良いね！今はどんなタスクに使ってるの？" userName="dhorthy" createdAt="2025-04-16T15:20:09" color="">}}

{{<matomeQuote body="ありがとう！terminal UI は重要なデザインの選択だったんだ。速くて安くて、どこでも動くからね（wasm とか ssh 経由の web とか、タッチ操作の iPhone とか）。LLM レイヤーはまだ新しいけど、個人的には web scraping に使ってるよ。でも、基盤となるワークフローエンジンは成熟してて、いろんなところで使われてるんだ。sync エンジンとか、UI とか、daemon とか、ネットワークサービスとか。複雑さ、非決定性、リトライロジックに直面した時に輝くんだ。フローがめちゃくちゃになればなるほど、効果が大きいんだよね。LLM を使って、エージェントが DSL を使って動的に自分自身を作成するようなイメージかな。LLM の良いところは、リクエストの数じゃなくて、トークンで課金されるところだよね。細部まで個別に質問して、透明性の高い（そしてデバッグ可能な）推論でフローグラフを構築できるんだ。proactive なシナリオのための API スケッチもあるよ[0]。<br>[0] https://github.com/pancsta/secai/blob/474433796c5ffbc7ec5744..." userName="pancsta" createdAt="2025-04-16T21:29:05" color="#45d325">}}

{{<matomeQuote body="これはすごいね！共有してくれて本当にありがとう！" userName="wfn" createdAt="2025-04-17T07:28:42" color="">}}

{{<matomeQuote body="もう一つ：大規模なコストを計画すること。<br>こういうのって、規模が大きくなると安くないんだよね。だから、何か決定論的なコンポーネントで処理できる場合は、まずそれを試してみて。ハルシネーションやレイテンシを節約できるだけでなく、収益にも大きな違いが生まれる可能性があるよ。" userName="daxfohl" createdAt="2025-04-16T19:45:02" color="#785bff">}}

{{<matomeQuote body="そうだよね！よく見るパターンは、「最初は遅くて高価だけど、開発工数が少ないものから始めて、スピード/品質/コストのボトルネックを徐々に改善していく」って感じかな。" userName="dhorthy" createdAt="2025-04-17T13:59:51" color="#ff33a1">}}

{{<matomeQuote body="一貫したナラティブがあれば、原則に従いやすくなると思うな。例えば、実世界のシステムで例を示せばいいんじゃないかな。" userName="Manfred" createdAt="2025-04-16T19:33:49" color="">}}

{{<matomeQuote body="それは良いフィードバックだね！どんなユースケースが良いと思う？ぜひコミュニティと一緒に進化させていきたいな。" userName="dhorthy" createdAt="2025-04-16T19:41:58" color="">}}

{{<matomeQuote body="実世界の agent ワークフロー（あなたの production 経験からの toy を小さくしたもの）を選んで、これらの要素がどのようにプロジェクトに組み込まれるかを示すと良いかもね。12 個の要素のシンプルさに触発されて、これらの要素を取り入れた例をもっと学びたいな。" userName="hhimanshu" createdAt="2025-04-17T07:32:56" color="#ff5c5c">}}

{{<matomeQuote body="いくつかエージェントの実例がある https://github.com/got-agents/agents にリンクしてるよ" userName="dhorthy" createdAt="2025-04-17T13:48:23" color="">}}

{{<matomeQuote body="ありがとう、見てみるね" userName="hhimanshu" createdAt="2025-04-17T17:54:09" color="">}}

{{<matomeQuote body="その分野は経験ないから、何も提案できないや" userName="Manfred" createdAt="2025-04-18T15:23:10" color="">}}

{{<matomeQuote body="これはすごい ーー 8割は苦労して学んだよ。残りの2割は読む価値ありそう！個人的には LangGraph + pydantic schemas がうまくいってる。他のみんなは何が便利だったか知りたいな。" userName="glial" createdAt="2025-04-16T22:39:51" color="#ff5c5c">}}

{{<matomeQuote body="＞8割は苦労して学んだって言うのが面白いね。<br>実は別タイトル候補は全角の”Agents the Hard Way”だったんだ（全角の”https://github.com/kelseyhightower/kubernetes-the-hard-way”的な意味で）。" userName="dhorthy" createdAt="2025-04-16T22:42:31" color="">}}

{{<matomeQuote body="マジで最高のタイミング！<br>視聴覚サンドボックス[1]のアイデアを練ってて(vvvv[2]みたいなやつ、もっとシンプルだけど)。LM(かローカルなニューラルネット)の”ノード”を挿入して、特定のタスクを与えて、出力はすごく制限されるって感じにしたい。<br>”質問 -> 回答: float”って例はすごく魅力的。質問は抽象的なものになるだろうけど。<br>[1]: https://kfs.mkj.lt/#audiovisllm<br>[2]: https://vvvv.org/" userName="wfn" createdAt="2025-04-17T07:35:47" color="#38d3d3">}}

{{<matomeQuote body="LLMからの型付き出力はマジで革新的！" userName="dhorthy" createdAt="2025-04-17T14:00:55" color="#ff5733">}}

{{<matomeQuote body="あんまりちゃんと読んでないけど、LLMはできるだけ使わず、可能な限り決定論的なコードを使いたいな。そっちの方が予測しやすいし、運用コストも低いし、誰も簡単に同じアプリを再現できないってことになるから。 buzz word なツールは使わず、自分でツールを作って LLM と連携させたい。そうじゃないなら、誰でも同じようなソリューションをすぐに作れちゃうと思う。コントロールが大事！" userName="darepublic" createdAt="2025-04-17T18:44:42" color="">}}

{{<matomeQuote body="コントロールと決定論は大事だよね。一番の目標は「コントロールを手放しすぎないで」ってことをみんなに納得させることだけど、二番目の目標は「ここはコントロールを手放してもいい場所だよ」って示すこと。" userName="dhorthy" createdAt="2025-04-17T19:43:38" color="">}}

{{<matomeQuote body="よっしゃ！ HN のフロントページに載ってて超嬉しい。" userName="ianbutler" createdAt="2025-04-16T20:09:38" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="例外処理について気になるなー。大規模なプロダクション環境でエージェントフレームワーク使ってる人いるのかな？いない気がするけど、誰か知ってたら教えてほしい。" userName="dphuang2" createdAt="2025-04-21T20:10:13" color="">}}

{{<matomeQuote body="自分もいくつか同じこと思ってたんだよね。こういうAIアプリもっと作りたいな。今はデータアナリストやってるんだけど、会社が技術志向じゃないから、そういうの作れるってあんまり評価されないんだよね。フルタイムでこういうのやりたいな。興味ある人いたら連絡して！(US/EU)" userName="mettamage" createdAt="2025-04-17T11:29:58" color="">}}

{{<matomeQuote body="オープンソースのいいところは、好きなことできるってことだよね。それに、同じような仕事してる人と知り合うには一番いい方法だと思う。" userName="dhorthy" createdAt="2025-04-17T13:58:22" color="">}}

{{<matomeQuote body="ほとんどのプロダクション環境に導入されてる“AI Agent”って、実はそんなにagenticじゃないんだよね。一番良いのは、LLMが要所要所に組み込まれた、ちゃんと設計されたソフトウェアなんだ。<br><br>＞ほとんどの“AI Agents”は実際にはそれほどagenticではない。“AI ワークフロー”が9割で、“AI Agents”はおそらく1割くらい。<br><br>みんな目新しいものに飛びつきたいし、LLMベンダーはトークン消費量を増やしたいから、市場をそっちに誘導しようとするんだよ。" userName="DebtDeflation" createdAt="2025-04-16T17:32:24" color="#ff5733">}}

{{<matomeQuote body="みんなエージェントに夢中だけど、99回うまく行っても1回ミスするとアウトだよね。「なんでそんなバカな間違いしたんだ？」ってなる。理由はわからない。「じゃあ、ガードレールをもっとつけよう」ってなって、結局“ワークフロー”に戻るんだよね。" userName="film42" createdAt="2025-04-16T17:52:48" color="#ff5733">}}

{{<matomeQuote body="「最初のエージェントを品質管理する別エージェントを置いたらどう？」<br><br>映画『マネー・ショート』のCDO二乗のシーンをもう一度見てみな。" userName="film42" createdAt="2025-04-16T17:54:30" color="">}}

{{<matomeQuote body="ほんとそれ。<br><br>＞「LLMが最初からちゃんと作れないなら、同じLLMにどうやって直させるんだ？」<br><br>っていつも思う。複数回繰り返せば性能が上がるのはわかるけど、保証はないよね。ツールによっては、90%とか99%の精度じゃ全然足りない場合もあるし。" userName="dhorthy" createdAt="2025-04-16T18:58:58" color="#ff5733">}}

{{<matomeQuote body="そうだね。" userName="dhorthy" createdAt="2025-04-16T19:09:12" color="">}}

{{<matomeQuote body="もともとは、人間の指示なしにディープラーニングだけでがんを発見するAIツールが、人間の指示ありのツールより優れてたのが始まりだったと思うんだ。LLMエージェントでも、もっと性能を上げれば同じことが起きるんじゃないかって期待されてた。でも、もう限界が見えてきたよね。OpenAIとかMetaの最新リリースも、サイズは大きいけどイマイチだし、重要なことに使えるレベルには程遠い。学習データも、もう新しいものはないんじゃないかな。<br><br>＞“常識”は、人生経験がない機械には無理なのかも。<br><br>ブレイクスルーが起きるかもしれないけど、AI万能説に賭けるのは怖いな。" userName="daxfohl" createdAt="2025-04-16T22:50:42" color="#ff33a1">}}

{{<matomeQuote body="＞“常識”は、人生経験がない機械には無理なのかも<br><br>ダグ・レナートの常識知識ベースのアイデアって、そんなに悪くなかったのかもね。" userName="musicale" createdAt="2025-04-18T04:34:30" color="">}}

{{<matomeQuote body="ほんと、うちのPMにもこれ言いたいんだよねー" userName="peab" createdAt="2025-04-16T17:37:28" color="">}}

{{<matomeQuote body="このコメント、スクショしてうちのPMに送ろっと。" userName="gusmally" createdAt="2025-04-16T20:26:22" color="">}}

{{<matomeQuote body="あとさー、「エンジニア部門半分リストラしてLLMで置き換えようとするな」ってのも追加でお願いしたいわ。" userName="daxfohl" createdAt="2025-04-16T22:54:16" color="#785bff">}}

{{<matomeQuote body="ボーナスセクションにこれ追加するPRなら喜んで受け付けるよ" userName="dhorthy" createdAt="2025-04-16T23:09:18" color="">}}

{{<matomeQuote body="いやいや、そんなことしたら君のリポジトリの価値が下がるでしょ。HNのくだらないおふざけで汚したくないし。" userName="daxfohl" createdAt="2025-04-17T01:26:19" color="">}}

{{<matomeQuote body="めっちゃ同意。エージェントとか構築フレームワークとか、ほとんど時間の無駄だと思うわ。" userName="nickenbank" createdAt="2025-04-17T02:45:42" color="#785bff">}}

{{<matomeQuote body="この人わかってるね！" userName="dhorthy" createdAt="2025-04-17T02:57:15" color="">}}

{{<matomeQuote body="12factorとは関係ないけど、こういうエージェントとかソリューションって、LLM Opsはどうやってるんだろ？<br>テスト戦略とか、リグレッション起こさないようにするにはどうすれば？" userName="silasb" createdAt="2025-04-16T17:44:32" color="#38d3d3">}}

{{<matomeQuote body="特定のツールやフレームワークに固執しないようにしてるんだ。大事なのは構成要素を自分でコントロールすること。そうすれば、最新のLLM OpsとかLLMの監視テクニックも使えるしね。<br>「コンテキストは何か」だけじゃなくて、監視のことも12の要素に入れるのもありかもね。version 1.1で組み込むといいかも。" userName="dhorthy" createdAt="2025-04-16T19:00:03" color="#45d325">}}

{{<matomeQuote body="BAMLがここにあるの見るのめっちゃ嬉しい:)<br>言ってることめっちゃ共感できる。LLMを関数として扱うってのが本当に大事。" userName="hellovai" createdAt="2025-04-17T07:12:51" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="BAMLに関する素晴らしい仕事だね！エージェントの構成要素としてめっちゃ気に入ってるよ。" userName="dhorthy" createdAt="2025-04-17T15:05:31" color="#ff5c5c">}}

{{<matomeQuote body="Herokuでの経験から、これらの12の原則がどのように生まれたのか、めっちゃ興味あるし知りたいな。" userName="abhishek-iiit" createdAt="2025-04-17T03:48:43" color="#785bff">}}

{{<matomeQuote body="すごく良くて役に立つまとめだね！ありがとう！" userName="sps44" createdAt="2025-04-16T19:59:24" color="#38d3d3">}}

{{<matomeQuote body="誰か同じようなものを画像生成エージェント向けに作ってくれたらマジで嬉しいんだけど。安定した画像/動画生成エージェントを作ろうとしてるんだけど、マジで不安定なんだよね。" userName="AbhishekParmar" createdAt="2025-04-17T20:56:15" color="">}}

{{<matomeQuote body="お気に入りのオープンソースのエージェント用フレームワークって何？" userName="mertleee" createdAt="2025-04-15T23:15:53" color="">}}

{{<matomeQuote body="Pydantic AIにめっちゃ感銘を受けたんだよね。だからAirflowでのLLMワークフロー専用のSDKを構築することになったんだ。<br>[1] https://ai.pydantic.dev<br>[2] https://github.com/astronomer/airflow-ai-sdk" userName="jlaneve" createdAt="2025-04-16T18:18:27" color="#38d3d3">}}

{{<matomeQuote body="良いものはたくさん見てきたけど、どれも一長一短だよね。フレームワークに注目するよりも、何がそれらを構成しているのか、自分で構築した場合のトレードオフは何なのかを理解しようとしてる。<br>せっかく聞かれたからいくつか挙げると…<br>- ts: mastra、gensx、vercel ai、他にもたくさん！<br>- python: crew、langgraph、他にもたくさん！" userName="dhorthy" createdAt="2025-04-16T03:49:57" color="#38d3d3">}}

{{<matomeQuote body="GoogleとOpenAIがほぼ同じ構文をエージェントSDKに採用しているのを見て、agnoを使い始めたんだ。今のところ良い感じだよ。" userName="shmoogy" createdAt="2025-04-16T19:26:24" color="#785bff">}}

{{<matomeQuote body="最近はAIエージェントとか色々あるけど、今でも毎日使ってる一番役立つAIエージェントは、地味な床掃除ロボットだわ。" userName="deadbabe" createdAt="2025-04-16T17:38:31" color="">}}

{{<matomeQuote body="自動化が家事をやってくれて、もっと執筆やアートに時間を使えるって言ってたのに。執筆は減ったし、洗濯は自分でやらなきゃいけない。" userName="dhorthy" createdAt="2025-04-16T19:09:55" color="">}}

{{<matomeQuote body="皮肉なことに、文章とかアートの多くはマジで自動化されちゃってるんだよね。" userName="mikedelfino" createdAt="2025-04-17T00:50:46" color="">}}

{{<matomeQuote body="HNのコメントも文章じゃんね。笑" userName="flkenosad" createdAt="2025-04-16T19:47:12" color="">}}

{{<matomeQuote body="えー、そんなのAIいらなくね？あたしの洗濯ができるようになったらマジですごいと思うわ。" userName="notfed" createdAt="2025-04-16T18:55:31" color="">}}

{{<matomeQuote body="＞reliable LLM applications<br>それって矛盾したフレーズのリストに追加すべきじゃね？（jumbo shrimpとかみたいな）" userName="musicale" createdAt="2025-04-17T01:23:13" color="#ff33a1">}}

{{<matomeQuote body="不安定な接続でデータをうまく転送できる？LLMはただの挙動がおかしいDBみたいなもんだって。適切な方法で固定して期待値を下げれば、”reliable LLM applications”はマジで可能だよ。でもregexpみたいなインテリジェンスで適当にやったら…。" userName="pancsta" createdAt="2025-04-17T07:12:17" color="#ff5733">}}

{{<matomeQuote body="＞不安定な接続でデータをうまく転送できる？<br>LLMの出力を検証するのって、チェックサムとかCRCを計算するほど簡単じゃないよね。" userName="musicale" createdAt="2025-04-18T04:24:01" color="#ff5733">}}

{{<matomeQuote body="たぶんね。笑" userName="dhorthy" createdAt="2025-04-18T14:45:22" color="">}}

{{<matomeQuote body="できるはず！私は信じる！" userName="dhorthy" createdAt="2025-04-17T03:11:19" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
