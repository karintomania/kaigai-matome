+++
date = '2025-07-20T00:00:00'
months = '2025/07'
draft = false
title = '図解が神！主要LLMのアーキテクチャを徹底比較して違いがスッキリわかる'
tags = ["LLM", "AI", "アーキテクチャ", "ディープラーニング", "技術解説"]
featureimage = 'thumbnails/orange1.jpg'
+++

> 図解が神！主要LLMのアーキテクチャを徹底比較して違いがスッキリわかる

引用元：[https://news.ycombinator.com/item?id=44622608](https://news.ycombinator.com/item?id=44622608)




{{<matomeQuote body="記事の図解がすごい！初心者と専門家の中間くらいの人には特に役立つと思う。新しいLLMモデルが並んでるのが最高だね。" userName="strangescript" createdAt="2025/07/20 11:53:18" color="#ff5c5c">}}




{{<matomeQuote body="すごく勉強になったよ！LLMのアーキテクチャについて、元の論文を読むのが大変なとこを抜きにして、ちょうどいい抽象度で詳しく学べたのが良かったね。" userName="DeveloperErrata" createdAt="2025/07/20 15:50:57" color="#785bff">}}




{{<matomeQuote body="俺みたいに最近の動向についていけてない人には、良い復習になったよ。" userName="bravesoul2" createdAt="2025/07/20 08:40:30" color="">}}




{{<matomeQuote body="関連情報だね。https://epoch.ai/gradient-updates/how-has-deepseek-improved-...とhttps://semianalysis.com/2025/07/11/meta-superintelligence-l...の一部も参考になるよ。" userName="krackers" createdAt="2025/07/20 20:22:06" color="#ff5733">}}




{{<matomeQuote body="GPT-2 (2019) からの進化はすごいよね。今LLMの性能比較は大変で、2週間ごとに新記録が出てる感じだ。DeepSeekがここで言及されてて嬉しいな。V3で導入された計算効率を上げたアーキテクチャ技術は、リリース当時本当に画期的だったからね。" userName="Chloebaker" createdAt="2025/07/20 11:19:49" color="#ff5733">}}




{{<matomeQuote body="続編が見たいな。o5, o3 Pro, o4 or 4.5, Gemini 2.5 Pro, Grok 4, Claude Opus 4みたいな、トップのクローズドソースのフロンティアモデルの噂話でもいいからね。" userName="webappguy" createdAt="2025/07/20 12:42:10" color="#ff5733">}}




{{<matomeQuote body="これらのアーキテクチャは革新的で精度や速度を上げてるけど、事実生成という根本問題は残ってるね。Retrieval Augmented Generation (RAG) とかAgentsがこれを軽減してるけど、将来のアーキテクチャがこれらの技術を置き換えるかどうかが気になるな。" userName="dmezzetti" createdAt="2025/07/20 10:17:43" color="#785bff">}}




{{<matomeQuote body="俺が思うに、Transformerをテキスト予測で訓練してるから、モデルが組み込むロジックが限られてるんだよ。幻覚をなくすには、モデルの訓練方法を何か変える必要がありそうだね。" userName="tormeh" createdAt="2025/07/20 12:20:06" color="#785bff">}}




{{<matomeQuote body="現代神経科学では、人間の脳の働きは基本的に予測処理、つまり帰納的バイアスに基づいた幻覚らしいよ。だから、これがLLMの幻覚の主なボトルネックだとは思わないな。" userName="lblume" createdAt="2025/07/20 19:27:06" color="#ff5733">}}




{{<matomeQuote body="モデルは、いつ情報を補うべきか、いつ外挿しちゃいけないか分かんないんだよね。どのルールが一般化できて、どれができないか見極められない。昔、俺が母さんを「いいクッカー」って言ったら変だったけど、言葉って機械と人間で使い分けがあるんだね。 décadas経って、子供が俺を「いいクッカー」って呼んでくれたのは嬉しかったな。<br>LLMのハルシネーションって、この言葉の例外処理が原因かもって思ったよ。" userName="esafak" createdAt="2025/07/20 17:13:12" color="#45d325">}}




{{<matomeQuote body="これを読んで考えさせられたよ。動詞から-erで名詞を作るルールが「cooking」で崩れるのは、言語の歴史的なものなんだね。機械から見たら、これってすごくムダな複雑さだよな。<br>もしかしたら、LLMのハルシネーションって、俺たちの学習データが例外だらけの社会モデルをモデルに押し付けてるから、部分的に起きてるのかもしれないね。" userName="lblume" createdAt="2025/07/20 19:33:03" color="#45d325">}}




{{<matomeQuote body="DeepSeek-V2とかLlama 3.1みたいな新しいアーキテクチャはさ、ハルシネーション削減を狙ったアテンションメカニズムの改善や学習目標のおかげで、アーキテクチャの変更だけで事実性がすごく改善されてるんだって。" userName="ethan_smith" createdAt="2025/07/20 19:58:30" color="#785bff">}}




{{<matomeQuote body="RAGって概念的にはシンプルで実装も簡単なのに、なんで基盤モデルに基本機能として組み込まれてないんだろうって、いまだに考えてるよ。直接モデルに入ってなくて、後から追加しなきゃいけないってのが、RAGとその派生型のマイナスポイントだと思うんだよね。もし本当に効果があるなら、最初からモデルに組み込まれるべきじゃない？" userName="bsenftner" createdAt="2025/07/20 12:41:49" color="">}}




{{<matomeQuote body="一つの問題はRAGを使うデータセットにあるんだ。基盤モデルの学習にはたくさんのサンプルが必要なんだけど、そんなに多くないんだよね。だから、蒸留っていう、他のモデルで生成する方法しかないんだよ。<br>ちなみに、RAGってウェブ検索に似てるよね。モデルもできるし、RAG用のウェブサーバーも実装できるんだ。" userName="Mars008" createdAt="2025/07/23 21:54:23" color="#45d325">}}




{{<matomeQuote body="RAGってなんで「シンプル」って言われるんだろうね？情報って、本の特定の段落だけじゃなく、その周りや章、本全体で意味が変わるじゃん。データは圧縮できても、洞察は無理。クエリが指す情報って、曖昧な概念の塊かもしれないのに、何をどう入力すればいいんだ？RAGがシンプルに見えるのは、「ボリビアの主要輸出品は何？」みたいな簡単なケースがあるからだよ。深い洞察には、もっと複雑な文脈理解が必要だね。" userName="mdp2021" createdAt="2025/07/20 17:27:30" color="#45d325">}}




{{<matomeQuote body="非公開データは置いといてさ、モデルの事前学習データにある知識をRAGが提供するのって、それでも役に立つんだよ。モデルに特定の文脈をセットできるからね。モデルが再確認しなくてもちゃんと仕事できないの？って疑問はわかるけど、どんな知能だって、AIでも人間でも、もっと文脈を与えられたら、もっとうまくやるもんだろ？それに、企業の内部データとか、モデルの学習データにない実際のデータは無視できないしね。" userName="rybosome" createdAt="2025/07/20 19:21:20" color="#45d325">}}




{{<matomeQuote body="小さなローカルモデルはあんまりデータを保持できないから、外部データストレージを使うのがやっぱり理にかなってるよ。" userName="Mars008" createdAt="2025/07/23 21:56:40" color="">}}




{{<matomeQuote body="RAGってプロンプティング技術だろ？どうやって事前学習に組み込めるわけ？" userName="bavell" createdAt="2025/07/20 13:37:47" color="">}}




{{<matomeQuote body="CoTもプロンプティング技術だけど、あれは組み込まれてるじゃん。" userName="maleldil" createdAt="2025/07/20 14:04:39" color="#45d325">}}




{{<matomeQuote body="CoTは高品質な訓練データでモデルの思考を深めるけど、結局は通常の事前学習なんだよね。RAG（Retrieval augmented generation）は推論時にプロンプトに外部コンテキストを注入してモデルを強化するもので、訓練中にはできないはず。RAGはモデルの外部に常に残るのがポイントだよ。" userName="bavell" createdAt="2025/07/20 14:45:36" color="#45d325">}}




{{<matomeQuote body="＜think＞トークンを使ったやつって、実はRL（強化学習）で訓練されてるんだ。だから、GSM8kみたいに単純に推論だけを訓練するのとは違うんだよね。QuietSTaRに似てるけど、もっと洗練されたRLを使ってて、最初にしっかり考えることに重点を置いてる感じだよ。QuietSTaRはREINFORCEを使ってるけどね。" userName="impossiblefork" createdAt="2025/07/20 16:41:00" color="#ff33a1">}}




{{<matomeQuote body="「訓練中」なんて誰が言った？RAGはLLMの機能として直接組み込めるはずだよ。取り込みたいドキュメントを与えれば、モデルが一時的なミニファインチューンとしてそれらを読み込むんだ。それで全然問題なく動くよ。" userName="bsenftner" createdAt="2025/07/20 15:02:05" color="#785bff">}}




{{<matomeQuote body="今開発者がやってるのと同じ方法だよ。「事前学習」ってなんで考えてるんだ？これはデプロイされたモデルの機能なんだからさ。ドキュメントを読み込んで、その場でミニファインチューンを生成するんだよ。" userName="bsenftner" createdAt="2025/07/20 15:04:09" color="">}}




{{<matomeQuote body="違いを詳しく説明してくれてありがとう！すごく勉強になったし、読みやすかったよ。" userName="ajeet" createdAt="2025/07/20 18:02:45" color="">}}



[記事一覧へ]({{% ref "/posts/" %}})
