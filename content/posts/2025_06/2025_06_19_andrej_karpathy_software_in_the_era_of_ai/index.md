+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'AI時代のソフトウェアって何？Andrej Karpathy氏の解説ビデオが登場！'
tags = ["AI", "ソフトウェア", "プログラミング", "LLM", "動画"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> AI時代のソフトウェアって何？Andrej Karpathy氏の解説ビデオが登場！

引用元：[https://news.ycombinator.com/item?id=44314423](https://news.ycombinator.com/item?id=44314423)




{{<matomeQuote body="従来のコードとNN、プロンプトを比較するのって面白いね。自動運転みたいにNNに置き換わる分野もあるだろうけど、ハードの制約でSoftware 2.0／3.0が使える場所は限られそう。<br>だからこれらは万能薬じゃなくて、従来のコードとかと並んでツールの一つになる感じかな。" userName="gchamonlive" createdAt="2025/06/19 01:31:24" color="#ff5c5c">}}




{{<matomeQuote body="前のコメントに同意なんだけど、Software 2.0とか3.0っていうバージョン表記、ちょっと紛らわしいよね。普通バージョンって改良を意味するじゃん？でもこれは単に違うカテゴリだよって言いたいだけなんだと思う。" userName="karpathy" createdAt="2025/06/19 02:58:23" color="">}}




{{<matomeQuote body="Structured outputsとかJSON modeって超過小評価されてるツールだと思う！生のLLMってチャットボット以外だと出力バラバラで使いにくいけど、これならプログラムでちゃんと扱える。<br>まるで「訓練しないNN」みたいで、GPUとかいらずにZodやPydanticとプロンプトだけで色々な問題が解ける。LLMの精度も上がるし、カロリー計算みたいに複雑な抽出もバックエンドで楽にできるよ。" userName="miki123211" createdAt="2025/06/19 03:57:00" color="#ff33a1">}}




{{<matomeQuote body="Structured Outputsを使うと、LLMの回答を特定の順番で処理させたりできるのがさらにすごいんだ。チームによっては回答前に決まったチェックリストをやらせたりしてる。<br>これで精度が上がって、どういう考えで答えたのかも分かりやすくなるんだよね。" userName="abdullin" createdAt="2025/06/19 06:56:45" color="#38d3d3">}}




{{<matomeQuote body="Structured outputsが過小評価されてるってのは同意だけど、完璧じゃないんだよね…。前カクテルレシピをJSONにしたくて試したんだけど、LLMが酒の種類を間違えたり、単位をちゃんと正規化してくれなくて結局諦めた経験があるよ。" userName="solaire_oa" createdAt="2025/06/19 15:28:29" color="#ff5733">}}




{{<matomeQuote body="schema-aligned parsing (SAP) って試した？JSON.parseじゃなくてカスタムのパーサーを使うんだ。スキーマで文字列の配列って定義してて、LLMが単一の文字列を返しても自動で配列に変換できる。<br>これ後処理だからどんなモデルでも使えるし、BFCLベンチマークでGPT3.5＋SAPがGPT4oに勝った例もあるよ。詳しくはこちら：https://www.boundaryml.com/blog/schema-aligned-parsing" userName="hellovai" createdAt="2025/06/19 21:41:18" color="#785bff">}}




{{<matomeQuote body="OpenAIのfunction callingとかOllamaのJSON mode (Zod) を使ってたんだけど、SAP面白そう！試してみるかも。" userName="solaire_oa" createdAt="2025/06/19 22:57:27" color="">}}




{{<matomeQuote body="文字列を文字列の配列に変換できるって話、それってApplicative Liftingを見つけちゃった感じだね！おめでとう！" userName="instig007" createdAt="2025/06/19 23:29:25" color="">}}




{{<matomeQuote body="いや、SAPはApplicative Liftingだけじゃないんだ。引用符なしとか再帰型とか、Markdown内のJSONとか、色々なパースの難しい問題に対応してるんだよ。<br>もちろんApplicative Liftingも重要な要素だけどね。BAMLのメリットについてはこっちも見てみて。gloochat.notion.site/benefits-of-baml" userName="hellovai" createdAt="2025/06/21 15:57:17" color="#45d325">}}




{{<matomeQuote body="SAP試してみたけど、正直あんまりだった…。Ollamaとphi4でレシピ抽出をやってみたら、LLMのJSON出力自体は良かったのに、なぜか最終的なパース結果で材料がいくつか消えちゃったんだ。<br>あと、LLMの出力でも分類ミスがあったし。後処理の問題と、そもそもLLMの出力内容自体の問題、両方ある感じだったよ。" userName="solaire_oa" createdAt="2025/06/20 00:52:35" color="#ff5c5c">}}




{{<matomeQuote body="試してくれてありがとう。データが抜けたのは、君の型システムが使ってるLLMに理解されなかったせいだよ。モデルはこう返したんだけど、<br>”Text”: ”coffee liqueur”,<br>”Type”: ”Liqueur”,<br>”Liquor_type”: ”Liqueur”,<br>”Name_brand”: null,<br>”Unit_of_measure”: ”ounce”,<br>”Measurement_or_unit_count”: ”3/4”<br>でも君が期待したのは、<br>Text: string,<br>Type: IngredientType,<br>Liquor_type: LiquorType or null,<br>Name_brand: string or null,<br>Unit_of_measure: string,<br>Measurement_or_unit_count: string,<br>って形だったんだ。LiqueurをIngredientTypeにキャストする方法はないし、データモデルはIngredientの配列だから、できるだけ多くの材料を返そうとしたんだよ。モデル自体が間違ってるのはどうしようもないね。それはモデルの能力とプロンプト次第だよ。もっと厳密に全部の項目をキャプチャしたいなら、こんな風に書けるよ。<br>class Recipe {<br>name string<br>ingredients Ingredient[]<br>num_ingredients int<br>...<br>// add a constraint on the type<br>@@assert(counts_match, {{ this.ingredients|length == this.num_ingredients }})<br>}<br>そして、もしすごく挑戦するなら、プロンプトにこれを書いてみて。<br>{{ ctx.output_format }}<br>No quotes around strings<br>そうすると面白いことが起きるよ。" userName="hellovai" createdAt="2025/06/21 15:42:22" color="#785bff">}}




{{<matomeQuote body="もしプロンプトをpromptfiddle.comで共有してくれたら、一緒に色々試してどうしたらもっと良くできるか見てみるよ！" userName="hellovai" createdAt="2025/06/21 15:58:13" color="">}}




{{<matomeQuote body="「per 100g」ってプロンプトは、LLMの学習データで実際に100g基準で書かれた部分を引っ張ってきちゃうかもね。標準化されてない100gあたりの学習例に基づいて変な計算をするより、単に別の情報を引き出すことになるかもしれないよ。" userName="coderatlarge" createdAt="2025/06/19 20:00:05" color="">}}




{{<matomeQuote body="バージョン分けはすごく納得できるな。ソフトウェアには、問題解決のために新しいツールが生まれて、その問題が深くてツールが有効だから、そのツールが切り開く問題空間の探求が新しいカテゴリとかスキルになるサイクルがあるよね。コンピューター→アセンブリ→HLL→ウェブ→クラウド→AIって流れもまさにそんな感じ。どれも消えてないけど、仕事内容は大きく変わったから、いくつかのメジャーバージョンがあるっていうのは同意だよ。" userName="BobbyJo" createdAt="2025/06/19 15:14:25" color="">}}




{{<matomeQuote body="私にとってはもっとシンプルだよ。V1.0: 特定の問題の解決策を機械向けに直接、正確に記述する。V2.0: 正確に記述できない特定の問題について、良い例と悪い例を機械に与え、機械がそれから汎化して間接的に問題を解く。V3.0: 機械に普通の言葉で何をすべきか伝え、機械が考えて解く。V2は「例で定義される問題を解けるツールを作る」という問題の解決策としてV1スタイルでコード化された。V3は、V2にあらゆるデータを同時に食わせることで、「汎用ツールであること」という問題を解くことを学習したんだ。" userName="TeMPOraL" createdAt="2025/06/19 16:03:12" color="">}}




{{<matomeQuote body="それはソフトウェアのバージョン分けっていうより、ソフトウェアにおけるAIの役割のバージョン分けだね。無し→部分的→全てっていう。AIの役割に限定すれば妥当なスケールだけど、Karpathy氏はソフトウェア全体について言いたかったんだと思うし、部分的な時代の進化の詳細についても話してたと思うんだ。" userName="BobbyJo" createdAt="2025/06/19 17:24:39" color="">}}




{{<matomeQuote body="V4ではどんな予測がある？僕の大穴予想は、機械のグループが現実世界のデータを集めて、自分たちのシステム内で独自のプロトコルや言葉を作り、特定のシステムのワークフローやデータ保存を最適化するようになるんじゃないかってことだよ。" userName="lymbo" createdAt="2025/06/20 02:21:19" color="#ff5c5c">}}




{{<matomeQuote body="でもそれって、AGIが自分で自分を書くってことだよね？" userName="lodovic" createdAt="2025/06/20 05:31:24" color="">}}




{{<matomeQuote body="バージョン分けって analogy がちょっと分かりにくいよね。通常はそれに加えて何かしらの「改善」を意味するから。まさに私が感じたことだよ。Semverみたいな命名のアナロジーは、メジャーバージョンが前のバージョンに取って代わる必要があるとか、移行パスを計画する以上の共存を考慮しないとか、固有の暗黙的な意味合いを持ってくるんだ。でもこの期待は残りの講演内容と一致しないから、指摘しておこうと思ったんだ。返信ありがとう！" userName="gchamonlive" createdAt="2025/06/19 17:50:34" color="">}}




{{<matomeQuote body="Andrej、たぶんSoftware 3.0はコードとかプロンプトみたいな話し言葉で書かれるんじゃなくて、行動で記録されるものだよ。今のソフトにはその行動がないんだ。その行動は機械が書いて消費して、人間が注釈をつける。3.0に飛ぶのは早すぎるけど、Software 2.0はそのための踏み台なんだ。" userName="poorcedural" createdAt="2025/06/19 14:41:49" color="#38d3d3">}}




{{<matomeQuote body="これはもっとロボティクスとか、私たちの日常生活に物理的なAIが入ってくる方向への後押しにもなるのかな？" userName="mclau157" createdAt="2025/06/19 14:51:52" color="">}}




{{<matomeQuote body="すごく洞察があるね！ゆで卵の作り方を人間が説明するのと、機械が別の機械に説明するのとでは違うって話だ。" userName="poorcedural" createdAt="2025/06/19 15:00:08" color="">}}




{{<matomeQuote body="ゆで卵を例に使ったのが面白いね。この論文と関連があるよ。https://www.nature.com/articles/s44172-024-00334-w" userName="fc417fc802" createdAt="2025/06/20 01:19:44" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、それは実は良い例えなんだよ、2つの意味でね。1つ目は前のバージョンからのブレークスルーであること。2つ目は、理想的な究極の形では、前のバージョンの全機能を含んだ改善であること。" userName="swyx" createdAt="2025/06/19 16:34:29" color="#ff5733">}}




{{<matomeQuote body="ハードウェアの制約だけじゃなくて、学習の制約とか、理解の制約もあるんだ。<br>学習の制約：複雑なニューラルネットワークシステムを作るには、大量のデータが必要だけど、法的な理由とか技術的な理由でデータが得られない場合がたくさんある。<br>理解の制約：システムを正確にデバッグして修正するのがめちゃくちゃ難しいんだ。例えば、税務申告書を作るシステムを伝統的な方法とニューラルネットワークで作ったとするよね。もし特定のバグ（結婚していて子供がいて海外収入もあるソフトウェアエンジニアの58(b)行がたまに変になる）があった場合、伝統的なシステムならコードをステップ実行して原因を特定できるけど、ニューラルネットワークシステムではそうはいかない。<br>だから、君の言う通り、これらはツールボックスの中の追加ツールだけど、その適用範囲は従来のコードよりもっとずっと限られてるんだ。<br>要するに、これらは、正式な要件として明確に定義するのが不可能な極めて複雑なシステムをモデル化しようとする場合で、しかも大量のデータがある場合に優れてるんだよ。自動運転とかOCRみたいな信号処理や、人間言語関連の問題は、伝統的なプログラミングアプローチでは70年以上研究しても望む結果（人間以上のパフォーマンス）が得られなかったけど、現代のニューラルネットワークアプローチでついに望む結果が得られた素晴らしい例だ。<br>でも、解決しようとしてる問題を正式な要件として定義できるなら、これらのツールはおそらく不向きだよ。" userName="gyomu" createdAt="2025/06/20 01:25:46" color="#ff33a1">}}




{{<matomeQuote body="Weightsがコードの代わりにデータになってるってことだよね。僕は2000年代初頭からこれをかなり使ってきたんだ。10年コードを書くと、そのメリットが分かってきて、どこで使うべきか理解できるようになる。LLMsは僕たちに別のツールを与えてくれたんだけど、今回ははるかにアクセスしやすくて強力だ。" userName="radicalbyte" createdAt="2025/06/19 07:26:53" color="">}}




{{<matomeQuote body="LLMsは僕にとって、例えばNLP関連のコードをいくつか直接置き換えてくれたよ。前はクラスタリングをするためにたくさんのコードを書いたかもしれないけど、今はLLMにグループ分けしてって頼むだけだ。もちろんこれはLLMネイティブの基本的な機能だけど、将来的にはもっと多くのファーストクラスのLLM呼び出し可能な関数が出てくるだろうね。" userName="dcsan" createdAt="2025/06/19 19:57:37" color="#785bff">}}




{{<matomeQuote body="1.0/2.0/3.0っていう分類についてはよく分からないけど、LLMsをプログラミングパラダイムとして考えるきっかけになったよ。命令型とか宣言型、手続き型とか関数型言語があったけど、たぶん将来的には決定論的vs確率的（LLMs）も同じように見られるようになるんじゃないかな？<br>    def __main__:<br>        You are a calculator. Given an input expression, you compute the result and print it to stdout, exiting 0.<br>        Should you be unable to do this, you print an explanation to stderr and exit 1.<br><br>(そして、たぶん、‘DO NOT express amusement when the result is 5318008’みたいな指示がたくさん続くんだろうね)" userName="OJFord" createdAt="2025/06/20 02:08:12" color="#ff5c5c">}}




{{<matomeQuote body="＞全然意味不明、イカれてるよ。みんな変な薬でも飲んでるの？ LLMをしょっちゅう使うと、考える力が落ちるよ。LLMは現実と何の繋がりもないし、人の心を乗っ取るんだ。" userName="bgwalter" createdAt="2025/06/20 11:27:53" color="">}}




{{<matomeQuote body="変な薬飲んでるのは君みたいだね。今までの研究だけじゃ、君の結論を出すには早すぎるよ。" userName="infecto" createdAt="2025/06/20 12:36:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞決定論的 vs 確率論的（LLM）も同じように見られるようになるかもね<br>こんなこと真剣に書いて、どれだけ意味不明か気づかない人がいるなんて信じられない。「非決定論的プログラミング」なんて、これ以上ない矛盾語だよ。" userName="iLoveOncall" createdAt="2025/06/20 08:48:07" color="">}}




{{<matomeQuote body="みんななんでこんなに反応するんだろう？もう慣れてるはずなのに。API開発だって、リクエストが固まったり、完全に失敗したり、違う応答がきたりするのに備えてるじゃん。IOもほぼ同じ。テキストを生成するだけで、JSONとかと違うだけ。ずっと前から「非決定論的プログラミング」みたいなことやってるんだよ。関数がいつも100％期待通りに返ってくるとは限らないんだから。" userName="diggan" createdAt="2025/06/20 10:43:27" color="#ff5733">}}




{{<matomeQuote body="コンピュータと話すのに、何で人間語を使う手間をかけるの？コンピュータとはプログラミング言語—コード—でやり取りする方が、もっと正確で効果的だよ。<br>具体的には：<br>→ 1.0では、コンパイルコードでコンピュータとやり取りする。<br>→ 2.0では、高水準プログラミング言語でコンパイラとやり取りする。<br>→ 3.0では、LLMにプロンプトを使うけど、これは人間語じゃなくていいはず。<br>でも、AGIとは、他の人間と話すみたいに、人間語でやり取りすべきだよ。" userName="llflw" createdAt="2025/06/20 13:26:49" color="">}}




{{<matomeQuote body="＞LLMをしょっちゅう使うと、考える力が落ちる<br>これってちゃんとした証拠あるの？" userName="boppo1" createdAt="2025/06/20 11:33:43" color="">}}




{{<matomeQuote body="コンピュータと話すのに、何で高水準プログラミング言語を使う手間をかけるの？コンピュータとはアセンブリ—生のビットシフトとメモリ番地—でやり取りする方が、もっと正確で効果的だよ。" userName="standeven" createdAt="2025/06/20 16:37:06" color="">}}




{{<matomeQuote body="LLMは本質的に非決定論的じゃないよ。バッチ処理とか温度設定とかで、大きなプロバイダーが動かすとそう見えるだけだけど、ローカルで温度ゼロでLLMモデルを動かせば、同じ入力にはいつも同じ出力になるんだ。" userName="semiquaver" createdAt="2025/06/20 12:44:06" color="#45d325">}}




{{<matomeQuote body="特にツールとして使う場合、企業がLLMのパーソナリティをデフォルトでなくすのはいつになるかな？" userName="no_wizard" createdAt="2025/06/20 15:49:16" color="">}}




{{<matomeQuote body="AIに思考を任せると自分の思考力が落ちるなんて、研究しなくても分かることじゃない？<br>でも、世界で一番当たり前のことを証明する研究って確かにあるんだよね。このリンク見てみて。<br>https://news.ycombinator.com/item?id=44286277" userName="bopbopbop7" createdAt="2025/06/21 22:31:39" color="">}}




{{<matomeQuote body="木については賛成だけど、森については違うと思う（ちょっと聞いて）。プログラミングが非決定論的なのは、leftpadのAPIが落ちてるとかじゃなくて、ユーザーがどのボタンを押すか分からないからとかだよね。それは分かる。<br>でも、想定されることはプログラムして、他はエラーで処理するでしょ。よく書かれたコードはほとんどのパスがエラーになる。ほとんどの文字列は有効なjsonじゃないけど、エラーでうまく処理される。<br>このシステムの中には局所的な決定性があって、現代のCPUではそれがめちゃくちゃ信頼できるんだ。だから金融取引や武器システム、フライトコントロールシステムも動かせる。<br>LLMが非決定論的（あるいは不安定）って言われるのは、それがエンジニアリングシステムの中で根本的に違う種類のコンポーネントだから。HTTPリクエストをリトライするのとは違うんだよ。だって、何かおかしくなっても「エラー」じゃなくて、一見まともだけどゴミみたいなものを出すんだから。" userName="klabb3" createdAt="2025/06/20 11:38:42" color="#ff5c5c">}}




{{<matomeQuote body="アセンブリを使うのが問題解決においてより正確ってわけじゃないと思うな。むしろ高水準言語の方が同じか、それ以上に正確だって主張は十分できるよ。<br>特に低水準のアセンブリは特定のアーキテクチャにしか動かないから、C++がそのアセンブリを生成する方が「電卓プログラムをより正確に定義してる」って言えたりするんじゃない？" userName="dustbunny" createdAt="2025/06/20 17:54:08" color="#ff5733">}}




{{<matomeQuote body="def __main__:<br> You run main(). If there are issues, you edit __file__ to try to fix the errors and re-run it. You are determined, persistent, and never give up." userName="dheera" createdAt="2025/06/20 05:55:59" color="">}}




{{<matomeQuote body="プログラマーだって決定論的じゃないよ。10人に同じ問題の解決策を聞いても、全く同じコードが出てくるわけじゃない。<br>優秀なプログラマーでも、要求仕様にない部分で優先順位が違うことがあるしね。パフォーマンスより保守性や可搬性を優先するとか。<br>これって、LLMにも、いや同じLLMでも実行ごとに違う結果が出ることにも言えるんじゃないかな。" userName="loudmax" createdAt="2025/06/20 12:40:59" color="#ff33a1">}}




{{<matomeQuote body="プログラムが停止するなら”1”、しないなら”0”って出力して。" userName="beambot" createdAt="2025/06/20 06:02:29" color="">}}




{{<matomeQuote body="私には当たり前じゃないけど、あなたの視点は偏ってるのかもね。<br>LLMに全部任せたり、宿題をチャットボットに丸投げしたりすれば、そりゃダメになるだろうね。これにはもっとニュアンスがあるし、あの最初期の研究が全部捉えてるとは思えないな。<br>人それぞれだし結果も違うだろうけど、ツールをどう使うかにかかってると思うんだ。あなたの言うような単純な話じゃないよ。<br>たった一つの初期の研究に飛びついて結論出すなんて、すごいね。失礼な言い方する前に、何か具体的な話や考えを共有したら？あの研究はもう何度も見たから。" userName="infecto" createdAt="2025/06/22 12:50:20" color="#785bff">}}




{{<matomeQuote body="それには、トレーニングデータをちゃんと選んで、日常会話みたいなソースを排除する必要があるね。<br>でも、そういうデータはライセンスされてるから高すぎるんだ。Redditのデータで学習する方がずっと楽だよ。" userName="dingnuts" createdAt="2025/06/20 16:05:14" color="">}}




{{<matomeQuote body="面白いことにね、LLMにコードを渡して関数が停止するか聞くと、ある入力ケースでは停止するかしないか答えられるらしいよ。" userName="fragmede" createdAt="2025/06/20 14:24:06" color="">}}




{{<matomeQuote body="LLMに学習データから個性をなくしてって頼んで、そのデータで新しいLLMを学習させたら？" userName="amelius" createdAt="2025/06/20 16:11:56" color="">}}




{{<matomeQuote body="研究求めて、研究見せたら言い訳？脳使わないと能力落ちるって、筋トレやコーディングと同じで当たり前じゃん。証拠で反論されるのが嫌なだけじゃない？失礼なこと言ってるわけじゃないよ。" userName="bopbopbop7" createdAt="2025/06/22 13:43:51" color="#ff33a1">}}




{{<matomeQuote body="大筋には同意。でもC++は仕様が曖昧で例として良くないよ。`int add(int a, int b) { return a + b; }`<br><br>`add(32767, 1)`の結果とか、C++はこういう場合の意味を明確に定義してないんだ。大きな数のintを足す時にどうするかは、コンパイラ作者次第だったりするよ。" userName="rictic" createdAt="2025/06/20 23:01:57" color="#785bff">}}




{{<matomeQuote body="LLMを使わない方が賢いって言うのは、侮辱じゃなくて褒め言葉だよ。" userName="bgwalter" createdAt="2025/06/20 14:01:58" color="">}}




{{<matomeQuote body="これは（ある種の）パラダイムとしてもう存在するよ。<br><br>https://en.m.wikipedia.org/wiki/Probabilistic_programming" userName="crsn" createdAt="2025/06/20 04:29:33" color="#38d3d3">}}




{{<matomeQuote body="研究好きならこれ見て。<br><br>https://time.com/7295195/ai-chatgpt-google-learning-school/<br><br>そうじゃないなら、プロLLMのブログを読めばいいんじゃない？ほとんどデタラメで大げさなことばっか言ってて、実際にLLMが書いたソフトなんてほとんどないのにね。LLMに飛びついた一部のオープンソース開発者たちも、LLM使う前よりブログやプログラミングの成果が悪くなってるのがわかるよ。" userName="bgwalter" createdAt="2025/06/20 12:08:11" color="#ff5733">}}




{{<matomeQuote body="トーク良かった！生成・検証ループの高速化アイデア（機械による形式検証）いいね。「AIを手綱で」と合うけど、「Englishが新言語」とは衝突？非公式Englishが形式表現に解釈→処理→Englishに戻る、って算数で計算機隠すみたいにできるかな。柔軟な形式言語/論理（abstraction logic[1]とか）があれば可能かも。Englishだけをプログラミング言語にするのが目標。<br><br>[1] http://abstractionlogic.com" userName="practal" createdAt="2025/06/19 04:42:34" color="#38d3d3">}}




{{<matomeQuote body="このスレッド、Karpathy氏の話とまさに同じじゃん。<br>計算機の操作が形式的な書き方から日常の言葉に変わってるってことだよね。<br>でも、みんな自分が今までやってきた形式的なやり方から抜け出せないでいるんだな。" userName="kordlessagain" createdAt="2025/06/19 15:38:51" color="#785bff">}}




{{<matomeQuote body="だからAIとか全部”BS”って言うんだ。<br>形式的な言葉を使うのが良いとこであって、悪いとこじゃないんだよ。<br>それが人間が工学や科学で成功してきた理由なのに、形式的なのをやめて自然言語を使うのは、魔法とか占いみたいな考え方に戻るってことだろ。" userName="mkleczek" createdAt="2025/06/19 16:26:01" color="">}}




{{<matomeQuote body="そうだよね、Leanはかなり期待できると思うよ！<br>でも俺は型理論がこの話に合う論理体系じゃないと思うんだよね。<br>Leanは他のに追い越されるんじゃないかな。" userName="practal" createdAt="2025/06/19 07:54:57" color="">}}




{{<matomeQuote body="＞ これらが成功した理由だ<br>それってMLも成功してないってこと？<br>MLは形式的なことと非決定的なことのバランスで、LLM抜きでもめっちゃ役に立ってるじゃん。<br>＞ 魔法とか占いみたいな思考へ<br>何かを”BS”って言いたいなら、”魔法とか占い”って言うべきじゃないと思うんだよ。<br>どんなに正しいことを言ってても、魔女狩りみたいになってるなら、それも結局”BS”じゃない？" userName="diggan" createdAt="2025/06/19 16:36:23" color="#38d3d3">}}




{{<matomeQuote body="俺は型理論こそこれが合うと思うよ！<br>プログラミング言語にめっちゃ似てるから、LLMが学習した大量のソースコードを活かせるんだよね。<br>Leanが完全に正しいかは分からないけど、新しい言語が出てくるかも（AgdaとかCoqみたいな古いのも）。<br>でも型理論は今んとこ一番しっかりした形式的なシステムだよ。" userName="gylterud" createdAt="2025/06/19 08:02:15" color="">}}




{{<matomeQuote body="＞ プログラミング言語にめっちゃ似てる<br>俺はプログラミング言語より英語に近い方が大事だと思うんだよね。<br>そこが一番大事なとこだから。<br>「必要なだけプログラミング言語に近く、できるだけ英語に近い」ってのが、シンプルさとかを無視しないでの目標じゃないかな。" userName="practal" createdAt="2025/06/19 08:46:44" color="">}}




{{<matomeQuote body="＞ 計算機の操作が日常の言葉に変わってる<br>うん、部下に日常の言葉で指示するのはプロダクトマネージャーみたいだよね。<br>問題は、部下（AI）は知識はすごいけど、めっちゃ馬鹿なとこもあるってこと。<br>コード書くの嫌でマネジメントしたい人には良いかもだけど、製品作るにはまだちゃんとした頭の人が必要だよ。<br>唯一の”根本的な変化”は、大手企業の下っ端コーダーが月数百ドルのAIに置き換えられるってだけだろ。" userName="uncircle" createdAt="2025/06/19 18:08:50" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞ 計算機の操作が日常の言葉に変わってる<br>それ、1950年代から毎年言われてるんだよ。<br>いや、そんな変化は起きてないし、LLMも役に立たないね。<br>コード書くのは簡単で、難しいのは問題を理解することだよ。<br>LLMは問題をちゃんと理解するのを助けてくれないし、むしろもっと難しくするかも。" userName="otabdeveloper4" createdAt="2025/06/19 18:47:45" color="#ff33a1">}}




{{<matomeQuote body="なんで正しさの証明に使う言葉が英語と関係する必要があるの？<br>英語って正確で形式的な思考のためにできたわけじゃないし。<br>自然言語の曖昧さはいいとこだけど、形式言語では要らないんだよ。<br>数学を見てみろよ。記号が多いのは簡潔さだけじゃなく、正確さのためだろ。<br>数学の記号を真似る必要はないけど、構造はちゃんと形式的で専門的じゃないと。<br>結果を自動で英語にするのは、人間が確認しやすいから意味あるかもね。<br>それはできそう。<br>でも、結果とか証明をちゃんと書く言葉は、正確さのために特化しないとダメだよ。<br>そういうとこは型理論が有利だと思うな。" userName="gylterud" createdAt="2025/06/19 13:45:51" color="#ff33a1">}}




{{<matomeQuote body="完備性定理から、一階述語論理で十分なんじゃないの？構築の計算みたいな証明済みの方法もあるのに、LLM用の特別な論理が必要な理由が分からないな。もしLLMの確率的な動きを考慮するなら別だけど。" userName="voidhorse" createdAt="2025/06/19 11:18:31" color="#38d3d3">}}




{{<matomeQuote body="「形式的なのをやめて自然言語を使う」ってのは、人類を魔法みたいな考え方に戻すことだよ。<br>「十分に発展した技術ってのは、魔法と見分けがつかないんだからね」" userName="jason_oster" createdAt="2025/06/19 19:19:09" color="">}}




{{<matomeQuote body="MLは成功してないって言うの？MLは「形式言語」（論文とかアルゴリズム）と「決まらない結果」（重みとか推論）のバランスだけど、いろんな分野で役に立ってるじゃん。LLMの有用性はまだ証明されてないと思う。実際の結果よりマーケティングが多い気がするな。土木とか数学とか、実世界で成果を出してる分野と比べるとね。" userName="mkleczek" createdAt="2025/06/19 16:41:33" color="">}}




{{<matomeQuote body="表面は普段の英語だけど、内部で計算機みたいに一部を形式的に処理して、結果を英語に戻すってのは可能？「英語 -＞ 形式言語 -＞ （何か）」が難しいのは、普段の言葉は定義上、形式的じゃなくて曖昧だからだよ。逆はそんなに難しくない。APIでオプションだったものを必須にできないのと一緒で、普段の言葉から形式的にするのって難しいんだよね。" userName="AdieuToLogic" createdAt="2025/06/19 05:29:19" color="#ff5c5c">}}




{{<matomeQuote body="前にも言ったけど、二つ形式言語があるなら、普段の言葉に近い方がいいと思う。そしたら、曖昧な表現と形式的な表現が合ってるか確認しやすいからね。一旦形式的なものにしちゃえば、機械でチェックできるから、他の形式的なシステムへの変換は自由にできるよ。これって分かる？" userName="practal" createdAt="2025/06/19 16:03:42" color="">}}




{{<matomeQuote body="MLはまだ成功してないよ。プログラマーとかアーティストの代わりになるツールばっかり見かけるんだもん。「レシピ400個入れて、全部決まった形式にして出してくれるツール」みたいなのはどこ？プログラマーじゃないオフィスワーカーの9割を置き換えるツールは？今は成功したローコード産業かもしれないけど、成功したAI産業とは言えないな。" userName="lelanthran" createdAt="2025/06/19 16:53:54" color="#38d3d3">}}




{{<matomeQuote body="「English is the new programming language」って件ね。これ見逃した人のために、Karpathyさんのバズったツイートのリンク貼っとくよ。<br>https://x.com/karpathy/status/1617979122625712128" userName="redbell" createdAt="2025/06/19 20:20:42" color="">}}




{{<matomeQuote body="「形式言語を使うのは欠点じゃなくて良い点だ。人間の工学や科学の基本で、成功した理由なんだ」って意見ね。Dijkstraさんも似たようなこと随筆で言ってるよ。「英語が新しいプログラミング言語」って考え方がなぜダメかって話にタイムリーだね。Dijkstraさんの言葉を引用すると「形式的な文章の良いところは、少ない簡単なルールに従えば正しく扱えること。普段の言葉だと避けられないバカげたことを、驚くほど効果的に排除できるツールなんだ」。ここに随筆のリンクがあるよ。<br>https://www.cs.utexas.edu/~EWD/transcriptions/EWD06xx/EWD667..." userName="bwfan123" createdAt="2025/06/19 19:44:02" color="#ff5c5c">}}




{{<matomeQuote body="「普段の英語を表に使って、一部を形式的な表現にして処理し、また英語に戻す」ってのは可能？柔軟で普段の言葉に近い形式言語があれば。それって矛盾してるように聞こえるね。形式検証はルールが守られてるって証明できるけど、英語は無理。その間の変換には絶対、曖昧さをなくす必要がある。その曖昧さをなくすアルゴリズムをどうやって作るの？だってそれは決まった動きをする必要があるのにさ。" userName="lelanthran" createdAt="2025/06/19 16:50:09" color="#ff33a1">}}




{{<matomeQuote body="「MLはまだ成功してない。プログラマーとかアーティストの代わりになるツールばっかり」って言ってるけど、エコシステムのすごく大事な部分を見逃してるよ。「Generative AI」だけがMLじゃないんだからね。天気予報とか画像認識、音声認識、医療の研究とか、いろんなML技術ですでに良くなってるし、今のLLMとかGenerative AIが出てくる前からそうだったんだよ。MLが実際に使われてる分野が50個くらい載ってるWikipediaのリストがあるから、興味あったら見てみて。<br>https://en.wikipedia.org/wiki/Machine_learning#Applications" userName="diggan" createdAt="2025/06/19 16:58:50" color="#45d325">}}




{{<matomeQuote body="魔法と見分けがつかないって、魔法そのものじゃないってことだぜ。" userName="discreteevent" createdAt="2025/06/19 20:37:01" color="">}}




{{<matomeQuote body="正直言って、そのウェブサイトとか予稿を10分ざっと見ただけで怪しさメーターが振り切れたよ。キミの曖昧なコメントもそれに拍車をかけてる。まぁ、俺が理解できてないだけかもね。" userName="andrepd" createdAt="2025/06/20 00:23:08" color="">}}




{{<matomeQuote body="「英語 → 形式言語 → その他」にする時の問題は、非形式的なものは定義上、形式仕様じゃないから曖昧になること。逆はそんなに難しくないっていうけど、いやいや、どっちも難しいし重要だよ。形式から非形式にする時、正しいかどうやって判断する？それができれば、形式的な記述が非形式的なものをちゃんと表してるかも判断できるはず。ズレを見つけたら、ユーザーに「あなたの英語は曖昧だから具体的にして」って伝えればいいんだよ。" userName="practal" createdAt="2025/06/19 08:03:44" color="#45d325">}}




{{<matomeQuote body="新卒レベルのプログラマーが厳しい状況なのは、ジュニアからシニアへの育成なんて考えてない会社だけだと思う。オフショア好きな会社も多いし、正直そんなに変わってない気がするな。" userName="sponnath" createdAt="2025/06/19 19:39:41" color="">}}




{{<matomeQuote body="もちろんビデオで触れられてるよ。コメントする前にみんなが40分見る必要はないけど、「vibe coding」がミーム化したことに対する彼の反応はチェックする価値あり。彼はツイートをもっとシャワー浴びながら考えた程度のものとして意図してたんだ。" userName="throwaway314155" createdAt="2025/06/19 21:18:58" color="">}}




{{<matomeQuote body="「LLMの有用性はまだ証明されてない」って？じゃあ、ML（Machine Learning）全体についてはどう思う？話が脱線しないようにLLMじゃなくてMLって書いたんだけど。ML分野についても同じ気持ちなの？" userName="diggan" createdAt="2025/06/19 16:46:28" color="">}}




{{<matomeQuote body="正直になろうぜ、AIについても昔同じようなこと言ってた人がいただろ。全部フワフワした話だった、そうじゃなくなるまではね。" userName="simplify" createdAt="2025/06/19 21:08:15" color="">}}




{{<matomeQuote body="「え？新人のエンジニアって短期的なROIプラスじゃないの？」<br>「今まで一度もね。」" userName="kevinventullo" createdAt="2025/06/20 02:32:43" color="">}}




{{<matomeQuote body="まさにそれ。それはxkcdみたいに、誰もが認めたくない真実だよね。" userName="andrepd" createdAt="2025/06/20 00:24:35" color="">}}




{{<matomeQuote body="ジョブ維持とは関係ない、形式的な基盤を手放すデメリットについてちゃんと考えたことある？あなたの考えは、心配してる人たちの動機をかなり皮肉に解釈してるように聞こえるよ。" userName="norir" createdAt="2025/06/19 16:05:33" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
