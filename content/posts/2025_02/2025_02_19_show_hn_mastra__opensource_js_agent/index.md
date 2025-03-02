+++
date = '2025-02-19T00:00:00'
draft = false
title = 'Gatsby開発者によるオープンソースJSエージェントフレームワークMastraとは？'
tags = ["オープンソース", "JavaScript", "フレームワーク", "Gatsby", "Web開発"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Gatsby開発者によるオープンソースJSエージェントフレームワークMastraとは？

引用元：[https://news.ycombinator.com/item?id=43103073](https://news.ycombinator.com/item?id=43103073)

{{<matomeQuote body="ランディングページの例を見たけど、あまりワクワクしなかったな。<br>testWorkflow<br> .step(llm)<br> .then(decider)<br> .then(agentOne)<br> .then(workflow)<br> .after(decider)<br> .then(agentTwo)<br> .then(workflow)<br> .commit();<br>一見すると、絵のグラフを表現するのにぎこちない方法に思える。ただのシンプルな“ワークフロー”で、実行の結果に依存しない構造だからな。" userName="Palmik" createdAt="2025-02-20T05:47:49" color="">}}

{{<matomeQuote body="LangChainのドキュメントを初めて見たときの気持ちがわかる。<br>自分はTypeScriptのAIプラットフォームを作ったけど、使いやすさを重視してて、標準的な構文をできるだけ使っている。<br>最近はxstateに興味があったけど、今はdbos.devを見つけたので、シンプルなプログラミングモデルで耐久性のある実行を目指そうと思っている。" userName="campers" createdAt="2025-02-20T13:25:35" color="">}}

{{<matomeQuote body="LangChainとか他のものを見たけど、結局あまり役立たない気がした。<br>基本的なループや条件文の上に抽象化を追加しているだけで、独自のヘルパー関数を作る方が良いと思う。<br>特定のベクターデータベースやロギングライブラリを使うけど、広範なフレームワークに頼るつもりはない。<br>プロプライエタリな機能や派手な名前を付けたものも多いし。" userName="nwienert" createdAt="2025-02-20T14:15:23" color="">}}

{{<matomeQuote body="TypedAIはしっかりしてるね、あまり知らなかった！<br>個人的にはデコレーター方式が好きじゃなくて、自分のpgflowでは使わないことにした。<br>シンプルで明快にしたいと思って、冗長でも良いから。<br>循環構造はサポートしないけど、条件付き再帰的サブワークフローを用意する予定。" userName="jumski" createdAt="2025-02-20T15:56:31" color="">}}

{{<matomeQuote body="dbosはCFの耐久オブジェクトと連携できるの？" userName="CMCDragonkai" createdAt="2025-02-20T19:02:08" color="">}}

{{<matomeQuote body="ありがとう！条件付きの`when`句はステップにあるから、ワークフローには表現されてなくて、実際その例を作った時、最後のステップは前の2つの結果に依存していたんだ。<br>どうやってシンプルにすると思う？" userName="calcsam" createdAt="2025-02-20T06:04:53" color="">}}

{{<matomeQuote body="やっぱり「フルーエント」な呼び出しの連鎖はシーケンスを表現しちゃうから、‘after’で新たなブランチを始めるのがぎこちなく感じる。<br>多分、ネスト構造を避けたいという考えがあったのかな？でも、分岐するグラフにはネスト構造が自然だと思う。タスクノードにメソッドを置いた方が良いし、step/thenの区別も要らない。" userName="anentropic" createdAt="2025-02-20T12:09:16" color="">}}

{{<matomeQuote body="確かに、ネスト構造を避けたいからこの構文になったのは分かるけど、面白い構文で読みやすいとも思う。考えてみる価値があるね！" userName="calcsam" createdAt="2025-02-20T15:17:10" color="">}}

{{<matomeQuote body="あの例の構文はAWS Step FunctionsのCDKコードに基づいてるんだ。<br>DAGを構築しているから、同じようなことをする別のAPIをチェックしてみるといいかも。<br>Airflowならこう書けるかも：<br>chain(llm, decider, [agentOne, agentTwo], workflow)" userName="anentropic" createdAt="2025-02-21T10:46:17" color="">}}

{{<matomeQuote body="明示的なエッジや依存関係を配列として表現した方が理解しやすいと思う。" userName="jumski" createdAt="2025-02-20T12:31:30" color="">}}

{{<matomeQuote body="これ、実際に可能にするチケットがあるんだぜ！" userName="calcsam" createdAt="2025-02-20T18:31:42" color="">}}

{{<matomeQuote body="LangchainやLlama_Indexのフレームワークに同じ不満を持ったから、ローカルで動くシンプルなUIベースのAgenticフレームワークを作っちゃった！<br>https://github.com/ranjanprj/agentollama" userName="ranjanprj" createdAt="2025-02-22T18:11:18" color="">}}

{{<matomeQuote body="最初はちょっと直感的じゃないって思ったけど、今自分でワークフローエンジンを作ってるんだ。<br>その中で依存関係を明示してメソッドチェーンで他のステップタイプに拡張していくように考えてる。" userName="jumski" createdAt="2025-02-20T12:30:15" color="#ff5c5c">}}

{{<matomeQuote body="Mastraにすごくワクワクしてる！ElectricSQLでいくつかエージェント的なものを作る予定で、Mastraは新鮮な空気のように感じるよ。<br>チームも最高で、SamはGatsbyの共同創設者で、ShaneとAbhiと一緒に働いてきたから信頼してる。" userName="kylemathews" createdAt="2025-02-19T18:46:49" color="#785bff">}}

{{<matomeQuote body="ElectricはすでにElixirに多く投資してるから、エージェントにElixirを使ったらいいんじゃない？JSよりはずっと良いフィットだと思う。" userName="cpursley" createdAt="2025-02-19T22:40:28" color="">}}

{{<matomeQuote body="Gretchen、Elixirを実現するのはやめてよ。" userName="mvf4z7" createdAt="2025-02-20T02:29:22" color="">}}

{{<matomeQuote body="スタートアップエコシステムや非同期処理の簡単さを考えると、実際には良い選択だと思うよ。" userName="funerr" createdAt="2025-02-19T23:01:24" color="">}}

{{<matomeQuote body="Abhiは僕が知っている中で最高のエンジニアの一人だ。彼と仲間たちがこの問題に取り組むのが楽しみ。" userName="doctorpangloss" createdAt="2025-02-20T10:01:18" color="#ff5733">}}

{{<matomeQuote body="これ、すごいね！質問なんだけど、SSE MCPサーバーのサポートプランはあるの？<br>Stdioはサポートされてるけど、SSEだったら最高だよね。" userName="joshstrange" createdAt="2025-02-19T18:55:07" color="">}}

{{<matomeQuote body="うちでこのことをカバーしたチュートリアルあるよ！”https://docs.mcp.run/tutorials/mcpx-mastra-ts”<br> SＳＥ使わなくても大丈夫で、mcp.runがエージェントに直接、インプロセスでセキュアなwasmモジュールを提供してるからね。ただ、mcp.runはレジストリ内のすべてのサーブレットツールにSＳＥサポートもあるよ。" userName="nilslice" createdAt="2025-02-19T19:49:27" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="このPRでサポートが追加されたよ。”https://github.com/mastra-ai/mastra/pull/1957”<br> まだリリースされてないけど、もうすぐ出る予定！" userName="tybaa" createdAt="2025-02-19T22:24:03" color="">}}

{{<matomeQuote body="やっほー！興奮してくれて嬉しいよ！今、全体的にMCPサポートを改善中で、もうすぐもっと情報をシェアできると思う。その一部として、SSEサーバーへの直接サポートも予定してる。" userName="tybaa" createdAt="2025-02-19T19:17:43" color="">}}

{{<matomeQuote body="すごいね！僕はStdioで動かせるけど、複数のMCPサーバーを組み合わせるSSE MCPプロキシを作ったんだ。ドキュメント見たら、直接ツールを移動させたくなるけど、ポータビリティのためにMCPの後ろに保つつもりだよ。" userName="joshstrange" createdAt="2025-02-19T19:22:17" color="#45d325">}}

{{<matomeQuote body="いいね！自分でプロキシを書いたの？それとも”https://www.npmjs.com/package/mcp-proxy”みたいなの使ったの？" userName="tybaa" createdAt="2025-02-19T19:27:35" color="">}}

{{<matomeQuote body="”mcp-proxy”は使ったけど、1対1だけしかできないから、N対1プロキシが欲しいと思ったんだ。でもいくつか問題にぶつかって、デバッグログを追加したらどんどん自分のコードになっていったよ。今は複数のクライアントのためにツールプロキシが動いてるんだけど、たくさんのツールとLLMの選択で混乱することもあるんだ。" userName="joshstrange" createdAt="2025-02-19T19:46:17" color="#45d325">}}

{{<matomeQuote body="シェアしてくれてありがとう！こういうリアルな体験を聞くのはめっちゃ助かる。お話しする機会を作ってみない？MCPの使い方について話を聞きたいんだ。" userName="tybaa" createdAt="2025-02-19T20:18:05" color="">}}

{{<matomeQuote body="申し出には感謝だけど、他にもっといい人がいる気がするよ。MCPはクールだけど、今のところ遊んでるだけだし。ツールを作ってるけど、まだSlackからのボットを完成させてないんだ。" userName="joshstrange" createdAt="2025-02-19T20:55:33" color="">}}

{{<matomeQuote body="心配しないで！だけど、いろいろ試した経験や問題を克服したことには興味あるよ。みんなが始める方法は遊ぶことだから、まだまだ新しいこの”プロダクションでのツール使用のエージェント”ゲームを楽しんでほしい。" userName="tybaa" createdAt="2025-02-19T22:02:51" color="">}}

{{<matomeQuote body="ハッピーなMastraユーザーです！高レベルの抽象化と必要なときの低レベルのコントロールのバランスがいいね。他のフレームワークを見たけど、Mastraの明確さと使いやすさが際立ってたよ。いい仕事をしてる！" userName="alanwells" createdAt="2025-02-19T20:32:17" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！" userName="calcsam" createdAt="2025-02-19T21:09:24" color="">}}

{{<matomeQuote body="エージェントって何かよくわからないな。複数の人格を持つ必要があるのか、特に同じモデルを使ってる時に。現代のLLM（多段階の計画・推論が可能）への単一のAPIコールで解決できる具体的なユースケースを教えて欲しい。あるいは、これは単にプロンプトを作ることと、複数のコールに分けてLLMに指示を出すことに過ぎないのか？" userName="brap" createdAt="2025-02-19T19:19:51" color="">}}

{{<matomeQuote body="「エージェント」って言葉を無視して「ステップ」に脳内補完すると、もっと理解しやすくなるよ。例えると、僕は本を読むときに赤ペンでハイライトをするんだけど、コメントやアンダーラインも書くから、ChatGPTにそのページの画像を送って平易なテキストにしてもらうと、うまくいかないんだ。まずはコメントを頼んで、次にアンダーラインのハイライト、ブラケットのハイライトを頼む。その結果を合成するのが一番良い結果を生むよ。こういうやり方のライブラリがあれば便利だし、特別なことじゃないけど、書くのが面倒なだけ。エージェントという言葉のせいで混乱してるかもしれないけど、試しに実装とかしてみたら、きっと理解できるよ。" userName="coffeemug" createdAt="2025-02-19T19:53:32" color="#ff5c5c">}}

{{<matomeQuote body="このことに色をつけると、Anthropicがこれらのコンポーネントに関する一般的なアーキテクチャを分かりやすく説明してるよ。エージェントという言葉は色々な意味があるけど、Anthropicの定義に近い考え方が分かりやすい。具体的には、「エージェント」はタスク（親コメントのステップ）を動的に特定して、指示されなくてもそのステップだと認識できるGenAIシステムなんだ。だから、例えば「エージェント」はまずクエリの解決策を計画し、それを別のLLMコールに振り分ける。実行の正しさや成功を評価するんだよ。" userName="fryz" createdAt="2025-02-19T21:41:19" color="#ff5733">}}

{{<matomeQuote body="これって複数のLLMコールを使って賢い機能を構築するのから、LLMが次に何をすべきか決定することまで幅広いね。前者でも十分に進めるけど、後者の方が人間とのチャットとか制約のない環境ではより自律的だと思う。" userName="eric-burel" createdAt="2025-02-19T22:38:49" color="">}}

{{<matomeQuote body="Aiderっていうのは、2つのモデルを使って各コーディングタスクを完了する実験的なサポートを始めたみたいだね。Architectモデルがコーディング問題の解決方法を説明して、Editorモデルがその解決策を受け取って具体的なコード編集指示を出す仕組みなんだ。こうやってコードの推論と編集を分けることで、SOTAの結果が出たっていうのがすごいな。" userName="bravura" createdAt="2025-02-19T19:42:01" color="#45d325">}}

{{<matomeQuote body="次はシニアエディタとエディタの組み合わせが必要だね！" userName="hassleblad23" createdAt="2025-02-20T19:29:39" color="">}}

{{<matomeQuote body="僕もよくわからないな。YouTubeで実装を見ると、単に言葉が多くて新しい産業を作り出そうとしてるだけに感じる。結局のところAIのアクションを分かりやすくしてワークフローに組み込むことが重要なんじゃないかな。" userName="weego" createdAt="2025-02-19T19:40:11" color="">}}

{{<matomeQuote body="＞“AIアクションを定義し、それをワークフローに組み込むことが重要だ”その通り！AIを使って基本的なコンテンツ生成を超えて役立てるには、外界とのやり取りが不可欠で、そのインタラクションの出力に基づいて新たな作業をスポーンするような反復的なワークフローが必要なんだ。エージェントを人格として位置づけるのは本筋から外れちゃってるけど、これを「AIワークフローのオーケストレーション」って呼んでも十分に役立つと思うよ！" userName="jacobr1" createdAt="2025-02-19T20:03:11" color="">}}

{{<matomeQuote body="今の状態ではエージェントには何も任せたくないな。" userName="karn97" createdAt="2025-02-19T21:21:59" color="">}}

{{<matomeQuote body="彼女が働いてるプロンプトエンジニアリングの現場じゃ、ウェブから情報を探し出してLLMで分析するためのエージェントが必要って言ってるよ。それをデータの変数として使ったりして、問題が解決しないと再度ネットに戻ることもあるんだ。" userName="2pointsomone" createdAt="2025-02-19T19:32:05" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="通常のワークフローツールとプロンプトで解決できないかな？エージェントって、基本的にそういうもんじゃないの？それとも、限られたツールのプロンプトの集まりなのか？" userName="dimgl" createdAt="2025-02-19T19:36:11" color="">}}

{{<matomeQuote body="エージェントは、自分でウェブをどう進むか決める部分が大事なんじゃないかな。特に、特定の手順を明示的に指示してない時に、自分が求めてる情報を見つけたと確信した時に戻ってきて、プロンプトを使うんだ。こういうのはワークフローに論理的に組み込むのは難しい。" userName="2pointsomone" createdAt="2025-02-20T18:02:04" color="#38d3d3">}}

{{<matomeQuote body="AIはコンテキストウィンドウが大きくなるほど忘れやすくなる気がする。エージェントは、狭い範囲に焦点を合わせるから、より良い結果が得られるし、特定のタスク用に訓練されたモデルを使える。実生活でも、専門家と一般人がいるから、タスクによっては専門家を選んだ方がいいよね。" userName="ToJans" createdAt="2025-02-20T05:43:48" color="#ff5c5c">}}

{{<matomeQuote body="最先端のLLMでも、コンテキストウィンドウが広がると一貫性や有用性が落ちるし、複雑なワークフローに対応するときは、タスクを小さく区切ることで、モデルがより関連のある情報を使えるようになるんだ。自己ホスト環境では、エージェント方式がコスト的にも有利だし、シンプルなタスクも小さなモデルに任せれば、コスト削減と応答時間短縮が可能だよ。ただ、オープンエンドなタスクでは結果が一貫しにくいこともあるから注意が必要。" userName="blainm" createdAt="2025-02-19T19:39:31" color="#ff5733">}}

{{<matomeQuote body="エージェントを考えると、仕事のオーケストレーションみたいなもんで、実行する作業のDAGができるって感じ。もしウェブからの情報を基に全ての作業を進めるなら、一つのプロンプトでできるかもしれない。でも、ウェブ検索やコードの実行、API呼び出しなどの現実とのやり取りがあると、結果に基づいて次のアクションが決まるから、その都度分岐するんだ。" userName="jacobr1" createdAt="2025-02-19T19:59:53" color="#ff5c5c">}}

{{<matomeQuote body="このフレームワークを詳しく見てないけど、エージェントって単にLLMの性格を指すこともあるよね。でもソフトウェア工学でいうエージェントは、独自の内ループや分岐ロジックを持つもの（自律性のエージェント）を指すんだ。複数のワークフローを一つのLLMインターフェースで組み合わせるときに必要な抽象概念なんだよ。" userName="nsonha" createdAt="2025-02-19T21:12:40" color="">}}

{{<matomeQuote body="モジュール性って大事だよね。一つの関数に全てのコードをまとめることはできるけど、開発や理解しやすくするためには別々に整理した方がいい。エージェントも同じような感じだ。" userName="andrewmutz" createdAt="2025-02-19T19:43:04" color="">}}

{{<matomeQuote body="おめでとう！プロンプトを変更せずに違うLLMプロバイダーを使うとパフォーマンスが落ちることに気づいたんだけど、開発者たちがどうやって「翻訳」してるのか興味ある。あなたたちの評価フレームワークにはベストプラクティスに関するデータがあるのかな。" userName="Gakho" createdAt="2025-02-19T17:56:38" color="#785bff">}}

{{<matomeQuote body="そうだね、私たちもそういう話を聞いたよ。特に今は特徴はないけど、プロンプトを改善するためにローカルでエージェントを導入してるよ。" userName="calcsam" createdAt="2025-02-19T18:06:41" color="">}}

{{<matomeQuote body="いろんなフレームワークやウェブサイトがevalをサポートしてるみたいだけど、OpenAIとかがこの観測性やevalを使うようになると思う？Mastraみたいなオーケストレーションフレームワークで多くのプロバイダーを使うと、そうなるのかなぁ。" userName="Gakho" createdAt="2025-02-19T18:10:42" color="">}}

{{<matomeQuote body="間違ってるかもだけど、OpenAIはそれに対して特に意見的になりたくないんじゃないかな。たぶんOpenAIのソリューションエンジニア以外はね。" userName="calcsam" createdAt="2025-02-19T18:49:56" color="">}}

{{<matomeQuote body="デモ見たいならここにあるよ:<br>https://x.com/calcsam/status/1889856384549982419" userName="calcsam" createdAt="2025-02-19T18:40:31" color="">}}

{{<matomeQuote body="Gatsbyの開発者たちってのがマイナスな気がする、これが放置される次のソフトになるんじゃないかって。" userName="epolanski" createdAt="2025-02-19T18:59:21" color="">}}

{{<matomeQuote body="このコメントが高評価じゃないのに驚き。Gatsbyはこれまで使ったJSライブラリやフレームワークの中で一番糞だった。チームは頭いいかもしれないけど何を宣伝してるの？" userName="paultannenbaum" createdAt="2025-02-19T20:06:56" color="#38d3d3">}}

{{<matomeQuote body="同じ経験したわ、React始めたばかりの時にGatsby使ったのが大失敗。正規表現やハックのせいで何時間も無駄にしたあげく、そのウェブサイトはもう引退したよ。" userName="christina97" createdAt="2025-02-20T03:09:53" color="#38d3d3">}}

{{<matomeQuote body="Gatsbyは全然理解できなかった。デザイン決定に理由が見つからなかったし、Next.jsがSSGできるようになった時にはチームにGatsbyをやめさせた。申し訳ないけどマイナスだわ。" userName="squillion" createdAt="2025-02-19T19:30:09" color="">}}

{{<matomeQuote body="Gatsbyは初期の静的Reactフレームワークの一つだったけど、今はNext.jsやRemix、Astroみたいなものもある。放置されてるってのは不公平じゃないかな、ソフトウェアそんなもんだよ。" userName="user9999999999" createdAt="2025-02-19T19:18:15" color="">}}

{{<matomeQuote body="Gatsbyチームは多くの約束をしたけど、それを守らなかった。次の大きなプロジェクトへの信頼感には良くない方法だね。" userName="mplewis" createdAt="2025-02-19T19:29:22" color="">}}

{{<matomeQuote body="Gatsbyのキャラクターは成功者じゃなかったね。ただ、私は本が好きだったし、キャラクターとしては良かったと思うよ :) Gatsby CMSには非常に興味深い点があって、特にGraphQLによるランタイム型安全性とヘッドレスWordPressが面白かった。" userName="benatkin" createdAt="2025-02-19T21:31:32" color="">}}

{{<matomeQuote body="面白いね、GQLはGatsbyで一番意見が分かれたポイントだったから。" userName="epolanski" createdAt="2025-02-20T13:34:48" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="あまり言いたくないけど、似たようなフレームワークはたくさんあって、同じことをしてるんだよね。フレームワークを作るのは簡単で、実際には多くの場合、フレームワークなしでもできることが多い。この手のものはお遊びみたいなもので、具体例を見たらすぐわかるよ。開発者は95％はフレームワークの範囲外のことをしなきゃならないんだよ。" userName="_pdp_" createdAt="2025-02-19T22:13:54" color="">}}

{{<matomeQuote body="フレームワークが好きじゃない人もいるし、好きな人もいる。私たちは少しだけフレームワークを作る経験があるから、良いものを作ろうと思ったんだ。" userName="calcsam" createdAt="2025-02-19T23:07:05" color="">}}

{{<matomeQuote body="私はフレームワークが大好きだよ :)" userName="santa_boy" createdAt="2025-02-19T23:51:43" color="">}}

{{<matomeQuote body="全く同意だね。これってLanggraphのTypescriptの「ポート」のように見えるけど、LanggraphにはすでにTSフレームワークがあるんだ。" userName="incanspyder" createdAt="2025-02-20T03:52:41" color="">}}

{{<matomeQuote body="そうだね。最近LangChainのようなフレームワークを捨てる人が増えてるのもそのせいだと思うよ。<br>＞”https://medium.com/thoughts-on-machine-learning/drop-langcha...”" userName="fsndz" createdAt="2025-02-19T22:45:22" color="">}}

{{<matomeQuote body="実際、私のプロダクションアプリにはvercel ai sdkを使ってたけど、すごく悪い体験だった。結局、ネイティブ実装に行ったんだけど、cursorのおかげであまり手間じゃなかったよ。問題点としては、バグが多すぎたし、UIも実装されたフックのせいでパフォーマンスが最適じゃなかった。" userName="jerrygoyal" createdAt="2025-02-20T04:21:48" color="">}}

{{<matomeQuote body="vercelは、よくわからない馬鹿なjs開発者から金を取ることを目的にしてるんだと思う。見た目にばかり気を遣ってて、動作よりもそっちを優先してる。でも、彼らはそのjs開発者たちから何百万ドル、場合によっては何十億ドルを稼いでるから、誰を責められるんだ？" userName="ilrwbwrkhv" createdAt="2025-02-20T04:46:22" color="#ff33a1">}}

{{<matomeQuote body="JSはエージェントには向いてない気がするよね。状態をうまくモデル化できる言語、特に並行性が高いElixirの方が良さそう。その上で、Claudeに自分の好きな言語でエージェントフレームワークを作成させる楽しい課題を試してみて。" userName="cpursley" createdAt="2025-02-19T22:36:49" color="">}}

{{<matomeQuote body="＞良い並行性があるからElixirは理にかなってるね<br>そう思ったからこれを作ってるんだ：<a href=”https://github.com/agentjido/jido”>https://github.com/agentjido/jido</a>" userName="mikehostetler" createdAt="2025-02-20T02:42:33" color="">}}

{{<matomeQuote body="Elixirを知ったばかりだけど、見る限りエージェントのオーケストレーションにぴったりだね。プロジェクト良さそうだし、追って勉強するよ。" userName="MattDaEskimo" createdAt="2025-02-20T04:11:15" color="">}}

{{<matomeQuote body="言語の文法よりも、Erlangランタイムの能力が大事だよね。強い型付けが好きなら、Erlangの上にあるGleamってのもあるよ（gleam.run）。" userName="cpursley" createdAt="2025-02-20T12:11:21" color="">}}

{{<matomeQuote body="＞本当に、状態を sane な方法でモデル化できて、良い並行性をもつ言語がElixirは理にかなってるってこと。<br>JSの状態モデリングが足りない理由、並行性モデルの問題についてもっと詳しく教えて。" userName="CharlieDigital" createdAt="2025-02-20T00:06:46" color="#ff5c5c">}}

{{<matomeQuote body="NodeJSは1スレッドのイベントループだから、並行性が無いよ。" userName="dartos" createdAt="2025-02-20T02:01:16" color="">}}

{{<matomeQuote body="Promiseを使えば並行性はあるけど、並行処理はできないよ。" userName="CharlieDigital" createdAt="2025-02-20T02:37:37" color="">}}

{{<matomeQuote body="モデルサービスがネットワークI/Oに依存してるから、たくさんの用途ではスレッドが必要ないと思う。エージェント開発にはPythonが過大評価されてる気がする。モデルのトレーニングに適しているからって、アプリ開発にも選ばれる理由にはならない。TypeScriptの開発者体験は良いよね。" userName="cjonas" createdAt="2025-02-20T05:47:40" color="#38d3d3">}}

{{<matomeQuote body="＞TypeScriptの開発者体験は良いと感じるよね。<br>実際はそこまで進んでないよ。TSを求めるチームはC#に移行すべきだと思う。APIが大きくなるとデータの整合性が重要になるし、TSの型はランタイムでは消えてしまうから。ZodやValibotを使って受信データを検証する必要が出てくる。そうすると、簡単なNode/ExpressのアプリがSpringや.NETみたいに見えて、性能にも影響が出てくるのが皮肉だよね。" userName="CharlieDigital" createdAt="2025-02-20T14:18:36" color="#38d3d3">}}

{{<matomeQuote body="本当の並行性はないし、スケジューリングもできないよ。IOが多くない場合はJSは選びにくいけど、今回はネットワーク呼び出しについて話してるからI/Oには合ってるよ。setTimeoutやPromise、requestメソッドで十分だと思う。" userName="holoduke" createdAt="2025-02-20T06:02:18" color="">}}

{{<matomeQuote body="たしかに、どのフロントエンドのJSフレームワークでも同じこと言えるけど、95％はウェブアプリのコンテンツや仕組みに時間使ってて、フレームワークが提供するのは簡単な5％だけだよね。" userName="fullstackwife" createdAt="2025-02-19T22:42:40" color="">}}

{{<matomeQuote body="JSフレームワークは生のJS書くよりも開発の手間を5％以上は省いてくれると思うよ。特にそのフレームワーク周りのエコシステム考えるとね。" userName="chipgap98" createdAt="2025-02-19T22:44:46" color="#45d325">}}

{{<matomeQuote body="すごいね。Mastraを使ってボイスエージェントを作るのに成功した事例はある？うちの会社はVAPIを試してるけど、かなり荒削りだよ。　＞“https://docs.vapi.ai/workflows”" userName="harliem" createdAt="2025-02-19T18:01:07" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
