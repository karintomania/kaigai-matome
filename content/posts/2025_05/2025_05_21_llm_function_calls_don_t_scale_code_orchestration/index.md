+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = 'LLMのFunction Callingはスケールしない！コード連携の方がずっとシンプルで効果的'
tags = ["AI", "LLM", "プログラミング", "システム開発", "エージェント"]
featureimage = 'thumbnails/color3.jpg'
+++

> LLMのFunction Callingはスケールしない！コード連携の方がずっとシンプルで効果的

引用元：[https://news.ycombinator.com/item?id=44053744](https://news.ycombinator.com/item?id=44053744)




{{<matomeQuote body="2年前からずっと言ってるんだけどさ、”any sufficiently advanced agent is indistinguishable from a DSL”なんだよね。エージェントに自分でアルゴリズムを考えさせるんじゃなくて、APIを教えて、ユーザー側で実行できるアルゴリズムを設計してもらうべきなんだ。LLMが自分でアルゴリズムを持つのがコストや精度的に意味ある状況ってほとんどないと思うな。それはエンジニアに頭の中で関数を実行しろって言うようなもんだよ。" userName="madrox" createdAt="2025/05/22 00:11:34" color="#45d325">}}




{{<matomeQuote body="言ってること、多分わかった気がするけど、自信ないな。具体的に考えてみたんだ。<br>1. プロンプトでcomplete API specificationとエージェントの役割を教える。<br>2. エージェントが使いやすい関数を書かせる。これはAPI callに変換される。<br>3. エージェントは自分にとって大事な部分だけのmodified versions of the APIを使える。<br>4. APIと関数は1対1じゃなくていい。複数のAPIを一つにまとめたり自由にできる。<br>5. これってまるでプログラマーチームがプラットフォーム作ってるみたいに見えるね。トップダウン設計もできる。API callは利用可能な機能セットなんだ。" userName="ianbicking" createdAt="2025/05/23 01:16:11" color="#ff33a1">}}




{{<matomeQuote body="ASIへの道筋は、LLMの能力を拡張することじゃなくて、自己改善アルゴリズムを外部のシンボリックなアプリケーションで抽出・コンパイルすることだって証拠だね。" userName="symbolicAGI" createdAt="2025/05/22 01:43:00" color="">}}




{{<matomeQuote body="2年前からこの文脈で”agent”って言葉が広く使われてた証拠、示せる？" userName="fooker" createdAt="2025/05/22 05:13:09" color="">}}




{{<matomeQuote body="ほらね、HNで2023年5月に”agent”がタイトルのトップ記事リスト[0]だよ。まだ初期段階みたいだけどHuggingFaceの発表みたいに大きなヒットもあったから、OPの言う2年って結構正確だと思う。あと、OPがずっと言ってたって主張を疑ってるみたいだけど、2023年9月のコメント[1]で同じ引用をしてて、その時点で3ヶ月エージェントを開発してたって言ってる。僕から見れば、それも2年って言っていいくらい近いよ。<br>[0] https://hn.algolia.com/?dateEnd=1685491200&dateRange=custom&...<br>[1] https://news.ycombinator.com/item?id=37626877" userName="lolinder" createdAt="2025/05/22 12:52:52" color="#785bff">}}




{{<matomeQuote body="90年代のchatbotのドキュメントを見ればきっと見つかるよ。AIじゃないチャットから引き継がれた一般的な言葉なんだ。サポートチャットに対応してた人たちもagentって呼ばれてたんだよね。" userName="nitwit005" createdAt="2025/05/22 18:57:59" color="">}}




{{<matomeQuote body="うちのecommerceビジネスでagentic systems組んでるよ。smolagentsも見たけど複雑さ増すね。ほとんどのタスクじゃtoo much。GeminiやOpenAIのpython interpreterで十分なことも多い。ツール呼び出しスタックを積み上げるのはスケールしないし使い方良くない。agentic workflowsは短命だし、複雑さは構造と規律で管理するんだ。ソフトウェア開発と同じだよ。Function callsはagentic systemでもスケールする、どんなコードベースみたいにゴチャゴチャにもなり得るけどね。個人的に、良いシステムは開発者の認知負荷管理が大事。十分動くシンプルな解決策が一番。Function callsを組み合わせるのがそれ。複雑さ管理はapplication state管理の問題だね。" userName="jacob019" createdAt="2025/05/22 01:52:22" color="#38d3d3">}}




{{<matomeQuote body="Agentic systemsのトレードオフ、良いまとめだね。IsarTechでの経験だけど、structured dataやtyped schemasは複雑さ抑えるのに超大事。<br>structured outputsがスケーリングの鍵だよ。LLMは曖昧なリクエストに使って、確定的なシステムにマッピングするのが良い。でも、複雑な入力の扱いとツール連携の連鎖による複雑化のバランスは難しい。<br>structured outputsも曖昧な意図には弱くて、フォールバックが必要。[0] https://isartech.io/" userName="qu0b" createdAt="2025/05/22 10:20:30" color="#45d325">}}




{{<matomeQuote body="曖昧さの処理は難しいね。タスク複雑さも課題。ある点を超えると、最高のモデルでも変なミスしだすんだ。タスク分解の線引きも難しい。ロールプレイングは計画とかに役立つけど限界あるな。constrained outputsだとモデル性能落ちる気がする。去年のタスク分解は今のモデルだとバカみたい。すぐにもっと複雑なの扱えるモデル出るだろうけど、使えるかな？" userName="jacob019" createdAt="2025/05/22 11:25:21" color="#38d3d3">}}




{{<matomeQuote body="問題はfunction callじゃなく、MCP（Multi-tool Calling Pattern？）の設計と使い方だよ。MCPの多くはAPIを真似て大量データを返してる。これがJSONにJSONを入れる形になって入力コンテキストを食うし、関係ない情報が多い。MCPツールが問題なんだ。データはフラット化して不要なフィールドは削除すべき。MCP SAASはAPIゲートウェイみたいでノイズが多いし、MCPを最適化してない！" userName="mehdibl" createdAt="2025/05/21 20:35:15" color="#ff5c5c">}}




{{<matomeQuote body="これこそGraphQLが設計された理由だよ。本当に必要なフィールドだけを選べばいい。俺たちはGraphQLクエリをMCPサーバーにするOSS Gatewayを開発したんだ： https://wundergraph.com/mcp-gateway" userName="jensneuse" createdAt="2025/05/22 05:36:51" color="#ff5733">}}




{{<matomeQuote body="MCPは助けにならないけど、フィルタリングも常に良いわけじゃない。大量データを処理する必要がある場合、最小限の評価でコードで処理する方がずっと良いしスケールする。でも、これも完璧じゃなくデータ定義などが大きくなると同じ問題に。かなり複雑な問題までスケールするだろうけど、APIレスポンス埋め込みはすぐ失敗する。唯一の適切な解決策は、人間の決定レベルをコードで再現して、それをLLMから呼ぶこと（LLMは単なる言語I/Fに）。言うは易し行うは難し。" userName="jokethrowaway" createdAt="2025/05/22 19:23:24" color="#785bff">}}




{{<matomeQuote body="＞ 1. これはJSONの中にJSONを入れる形で、入力コンテキストをめっちゃ食うし、JSONをエスケープしてる。ってあるけど、それってモデルが複雑なjson schemasをちゃんと扱えない問題なんじゃないの？" userName="never_inline" createdAt="2025/05/22 01:33:08" color="">}}




{{<matomeQuote body="面白いからChatGPTで文字列反転を試してみた。それだけなのに、文字列だけ返させるのが超大変で笑ったよ。しかも信頼できない。今は複数のLLMでチェックしてる。そのうち、いちごのRの数数えるのにデータセンター必要になりそう。" userName="devoutsalsa" createdAt="2025/05/22 06:52:55" color="">}}




{{<matomeQuote body="Shopifyの俺たちのチームが最近Roast [1]をオープンソース化したよ。これを使うと、非決定的なLLMジョブをオーケストレートされたワークフローに組み込めるんだ。数百万行のコードベースで作業を自動化しようとする時に超重要になるんだ。[1] https://github.com/shopify/roast" userName="obiefernandez" createdAt="2025/05/21 19:34:15" color="#ff5c5c">}}




{{<matomeQuote body="うわー、Roastめっちゃ良さそうだね。僕が悩んでたことに名前とか制約を与えてくれた感じ。決定性と非決定性のブレンドが良いな。（README読んでもよく分からなかったんだけど、LLMが複数ツールをオーケストレートしたり、順序決めたりできるのかな？「改善、テスト実行。終わるまで繰り返し」みたいなタスクにも使えるのかな？" userName="TheTaytay" createdAt="2025/05/21 22:20:52" color="#785bff">}}




{{<matomeQuote body="これめっちゃクールじゃん！ Shopifyの中でこういうワークフローってどう使われてんのかな？なんか例とか教えてくれると嬉しいな" userName="crakhamster01" createdAt="2025/05/22 04:53:56" color="">}}




{{<matomeQuote body="これ最高！ドキュメント読むと頭ん中が刺激されるわ。LLMの機能を宣言的にまとめるの、良い方法だね！" userName="bandoti" createdAt="2025/05/22 12:40:50" color="">}}




{{<matomeQuote body="いい感じ！ちょうどClaude Code Research Preview壊しちゃって、ChatGPT 4.5 Pro Deep Researchもクラッシュさせたとこなんだよね。証拠もあるよ！ ：） だから、ちゃんと動くツール探してるんだ" userName="The_Blade" createdAt="2025/05/21 23:11:14" color="">}}




{{<matomeQuote body="一番良いやり方は、どっちか一方じゃなくてハイブリッドだと思うんだ。つまり、できるだけ決まった手順でやる方法（決定論的アプローチ）を使って、仕様決めるのが難しかったり、手順を決められないような複雑な部分はLLMに任せるってことね" userName="hintymad" createdAt="2025/05/21 18:40:47" color="#38d3d3">}}




{{<matomeQuote body="そうそう、特に面白いのは、LLMに決まった手順（コード）を作らせるって使い方だと思うんだ。で、もしそのコードが動いたら、後で使えるように保存しとけば、次からは決まった手順でできるようになるわけじゃん" userName="jngiam1" createdAt="2025/05/21 18:42:41" color="#38d3d3">}}




{{<matomeQuote body="そうそう、その逆もアリだね。決まった手順でやって、LLMに一番良い感じで渡せる入力データを作るって方法" userName="hintymad" createdAt="2025/05/21 18:47:07" color="#ff33a1">}}




{{<matomeQuote body="具体的にどんな感じかイメージしやすいように、例とか教えてくれない？" userName="seunosewa" createdAt="2025/05/21 19:33:05" color="">}}




{{<matomeQuote body="例えばさ、AIOpsのプロジェクトで、まず時系列のアルゴリズムをいくつか動かしてから、その結果と元の時系列データをLLMに渡すんだ。そうすると、生データをそのまま入力にするより、LLMはめっちゃ的確で詳しい分析をしてくれるはずだよ" userName="hintymad" createdAt="2025/05/21 21:18:59" color="#ff5c5c">}}




{{<matomeQuote body="そう思うよ。ワークフローでLLM使うのは、できるだけ少なくしたいよね" userName="nowittyusername" createdAt="2025/05/21 19:36:37" color="">}}




{{<matomeQuote body="LLMとかない時代から何十年もソフト開発してきたけど、ぶっちゃけほとんどなくてもやっていけるもんだよ！" userName="mort96" createdAt="2025/05/21 20:10:03" color="#ff5c5c">}}




{{<matomeQuote body="ソフトウェア開発に必要なものはマジで少ないよ。LintersとかIDEs、debuggers、プログラミング言語だって全部オプションだけど、締め切りを短くするのには超役立つね！" userName="nomel" createdAt="2025/05/21 23:32:39" color="">}}




{{<matomeQuote body="ごめん、この1年くらい業界から離れてたんだけど、マジで今みんなこんなヤバいことやってんの？" userName="padjo" createdAt="2025/05/21 21:07:48" color="">}}




{{<matomeQuote body="いや、ほとんどの人はやってないよ。でも、一部の人は実験してるね。まだ革命的なものは見つかってないけど、確実にいくつか役立つ応用はあると思うよ。" userName="_se" createdAt="2025/05/21 21:39:05" color="">}}




{{<matomeQuote body="つまり、ハンマーを持ってるから、それが釘かどうか見るために色々叩いてるだけ、ってことかもね。" userName="padjo" createdAt="2025/05/21 23:18:30" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="その通りだと思うな。ただし、ハンマーを見たこともなくて、まだ釘が何かも知らないっていう前提付きだけどね。" userName="resonious" createdAt="2025/05/21 23:27:40" color="#ff33a1">}}




{{<matomeQuote body="もっと皮肉っぽく言うと、そのハンマーはガラス製で、市場にバレないようにみんなに全てが釘だと信じ込ませてる、ってことかも。マジで、もう滑走路の端っこで見つけなきゃヤバい問題を探してる解決策って感じだね。" userName="rsynnott" createdAt="2025/05/22 09:17:04" color="#ff33a1">}}




{{<matomeQuote body="今これをやってないと、すぐまた業界からいなくなるかもって信じてる人もいるよ。" userName="tobyhinloopen" createdAt="2025/05/22 06:16:34" color="">}}




{{<matomeQuote body="俺の毎日の仕事はもう、AIを使ってAI agent designerを開発することになってて、まさにこういうことばっか。本当はこんなことやりたくなかったんだけど、そうなっちゃったんだよね。" userName="czechdeveloper" createdAt="2025/05/22 05:40:06" color="#ff33a1">}}




{{<matomeQuote body="そもそもなんでLLMを使って構造化データを並べ替えようとするのか、ちょっとよく分かんないんだけど？" userName="codyb" createdAt="2025/05/21 19:47:47" color="#45d325">}}




{{<matomeQuote body="目的はもっと複雑なデータ処理をすることだよ。例えばdashboards作ったり、どのチケットが滞ってるかagent的に見つけたり、四半期のレビューをしたりとかね。並べ替えはそういう大きいタスクの中のほんの小さな作業だけど、多分問題を示すのには分かりやすいかなって思ったんだ。" userName="jngiam1" createdAt="2025/05/21 19:56:17" color="#ff5733">}}




{{<matomeQuote body="これどうやって動くの？LLMって確率的だから、ステップが増えるほど何かおかしくなる可能性高まるじゃん。ダッシュボードの中身が一部ハルシネーションじゃないって確信持てないなら、何がいいのさ？" userName="kikimora" createdAt="2025/05/21 21:02:37" color="#ff5733">}}




{{<matomeQuote body="＞ダッシュボードがハルシネーションじゃないか確信持てないなら何がいいの？って？<br>まあ正直ダッシュボードの中身ってどうでもいいこと多いし、見栄えが良ければいいんだよ…<br>真面目な話、今作ってるシステムはそのうち”たいていの場合十分正しい”レベルになるでしょ。それで十分（つまり、他のやり方より安い）なんだって。" userName="staunton" createdAt="2025/05/21 21:34:00" color="">}}




{{<matomeQuote body="＞”たいていの場合十分正しい”って？ そんなうまくいくと思えないな。適当な納税申告書出して数年後に罰金くらってみなよ。ダッシュボードと在庫が違うって顧客に説明し続けることになるぞ。確率的なコンポーネントを重ねるほどエラー率は急増。99%信頼部品4つ連続でエラー率4%だ。" userName="kikimora" createdAt="2025/05/27 17:30:18" color="#ff33a1">}}




{{<matomeQuote body="俺たちみんな、生成された見たこともない大量のコードを調べ回って、ハルシネーションの原因を探す、ちょっと偉そうなデバッガーになるだけだろ。" userName="codyb" createdAt="2025/05/22 19:36:50" color="#ff5c5c">}}




{{<matomeQuote body="確率的な性質自体が問題じゃないよ。決まったタスクを解けるLLMなら正解に高い確率を出す。不安定なのは自信がない証拠。十分複雑なタスクでどのLLMでも起きること。でもだからってLLMに全部任せるべきじゃない。パフォーマンス出すにはコードに任せるべき。" userName="orbital-decay" createdAt="2025/05/21 22:32:43" color="#ff33a1">}}




{{<matomeQuote body="君が説明したこと全部、Metabaseとか他のツールでとっくに解決済みだよ。<br>そこで日報とか夢のダッシュボード作るのに数時間かかるだけ。<br>それに毎日変わるわけじゃないしね。<br>KPIとか何ヶ月も同じまま。<br>アプデするのも1時間でできる。<br>だから、LLMってここで一体何を解決してるの？" userName="risyachka" createdAt="2025/05/22 07:34:53" color="#38d3d3">}}




{{<matomeQuote body="それってhuggingface smolagentの前提みたいなもんだよね。<br>うまくいく時はすごくいいけど、失敗したアクションのロールバックが難しくなるって課題も増える。<br>理論的には実行ブロック全体を分散トランザクションで囲めると思うけど、LLMは堅牢なコードを作ろうとするから、失敗が分かりにくくなるせいでこのパターンには向いてない気がする。" userName="avereveard" createdAt="2025/05/21 17:54:04" color="#ff5c5c">}}




{{<matomeQuote body="同意！smolagentの前提は良いね。でも実行とかエラー処理が難しいんだ。<br>例えばコード実行が途中で失敗した時、失敗した時点の変数状態を引き継いで続きから再開できるようにしたいんだよ。<br>LLMはうまく引き継ぐコードを生成できるって分かった。<br>今はそれを可能にするランタイムを作るのが難しい。<br>Lutraのプロダクションでかなりうまく動いてるものもあるよ。" userName="jngiam1" createdAt="2025/05/21 18:18:43" color="#ff5c5c">}}




{{<matomeQuote body="理論的には、LLMに公開するAPI全体を冪等（べきとう）にすればいいと思うんだ。<br>そうすれば、LLMがアクション全体をやり直そうが、失敗したステップだけやろうが、バックエンドとしては関係なくなるから。" userName="avereveard" createdAt="2025/05/21 19:09:58" color="#ff5c5c">}}




{{<matomeQuote body="それ読み取り専用APIならうまくいくけど、データ更新したりドキュメント作ったりもLLMにやってほしいんだよね。<br>副作用がある場合はちょっと難しい気がする。" userName="jngiam1" createdAt="2025/05/21 19:13:49" color="#ff33a1">}}




{{<matomeQuote body="エージェントに実際のステートマシンを実装して、それを使わせることってできるの？" userName="hooverd" createdAt="2025/05/21 18:35:48" color="">}}




{{<matomeQuote body="それってlangraphの考え方だね。ただ、各langraphノードがsmolagentになっちゃうから、リアルタイムだと耐えられないだろうけど。" userName="avereveard" createdAt="2025/05/21 19:08:35" color="">}}




{{<matomeQuote body="これには別の解決策があるかも。LLMが有効なコードを書いて、MCP’sを関数呼び出しするってアイデア。Pythonスクリプトみたいに、MCPを関数に見立てる感じ。簡単な例は、データを取ってきてソートする関数呼び出しみたいなコードだよ。" userName="bguberfain" createdAt="2025/05/21 20:41:37" color="#ff5c5c">}}




{{<matomeQuote body="そうそう！実際にこれがどう動くか見たかったら、https://lutra.ai をチェックしてみて。僕らもそこで似たパターンを使ってるんだ。課題はコードの実行環境をうまく機能させることだけどね。" userName="jngiam1" createdAt="2025/05/21 20:58:55" color="#ff33a1">}}




{{<matomeQuote body="LLMってJSONを与えられると明らかに苦労するよね、特に大量のだとさ。だからエンドポイントが別の形式でデータを返すのを止めるものはないんだ。たとえば、LLMはXMLなら得意みたいだし、あるいはテンプレートを使って解説文を定義するだけでもいいかもしれないね。" userName="CSMastermind" createdAt="2025/05/21 20:35:55" color="#45d325">}}




{{<matomeQuote body="みんなLLMにXMLをデフォルトで使わないことにいつも驚いてるんだ。XMLって組み込みで意味的な文脈がついてるからね。他のパイプラインに渡す必要があるときは、XMLを決定論的にJSON出力に変換すればいいだけだよ。" userName="ryoshu" createdAt="2025/05/21 20:55:26" color="#ff5c5c">}}




{{<matomeQuote body="これって何か理由があるの？知りたいんだけど。XMLの方が学習データに多かったとか？LLMがXMLで扱いやすい何か特別な点があるの？XMLはテキスト量が多くてトークンも増えそうだけど、でも文脈が多い方が助かるのかな？" userName="iJohnDoe" createdAt="2025/05/21 21:57:00" color="">}}




{{<matomeQuote body="それ、公式のOpenAIガイドラインにも書いてあるんだ：https://cookbook.openai.com/examples/gpt4-1_prompting_guide#...使ったことある人ならわかると思うけど、OpenAI以外でもGPT 3から最新モデルまで共通してる傾向だよ。なんでかっていうと、XMLはタグに意味を含んでるから、モデルが構造を理解しやすいんだと思う。＜employee＞...＜/employee＞みたいなのが、｛ ”employee”: ｛ ... ｝ ｝よりずっとわかりやすいんだ。モデルはタグの中身の単語に注目してるんじゃないかな。ただの僕の推測だけどね。これは入力の話で、出力は以前はJSON苦手だったけど、今はファインチューニングとかでうまく出せるようになってるんだ。" userName="CSMastermind" createdAt="2025/05/22 00:48:48" color="#38d3d3">}}




{{<matomeQuote body="HTMLをたくさん学習してるからっていう説を見たことがあるけど、GPTのドキュメントではデフォルトの選択肢としてMarkdownを推奨してるんだよね。Markdownって比較的あまり一般的じゃないのに。" userName="nitwit005" createdAt="2025/05/22 19:04:24" color="">}}




{{<matomeQuote body="僕らはMarkdownのテーブル形式でLLMにデータを返すのをいくつか成功させてるよ。" userName="crabl" createdAt="2025/05/22 01:24:37" color="#45d325">}}




{{<matomeQuote body="なんでLLMがコード作るのに頼るの？パースとかの処理はMCPツール内にまとめちゃえばよくない？そっちの方がLLMが完璧なコード出すのに期待するよりずっと信頼できるっしょ？" userName="arjunchint" createdAt="2025/05/21 21:48:30" color="#ff33a1">}}




{{<matomeQuote body="まあ、よくある後処理にはそれでいいだろうね。でも、ユーザーがツールの出力にどんな処理を求めてくるかなんて、設計段階では全部わからないじゃん。" userName="Centigonal" createdAt="2025/05/21 22:09:44" color="#38d3d3">}}




{{<matomeQuote body="出力内容をちゃんと見てくれるLLM推論エンジンってのを見てみたいなあ。例えば、LLMが“今からツール呼び出すよ”みたいなトークンを出したら、推論エンジン（llama.cppとか）が文法をその場で変えて、次のトークンが利用可能なツールしか駄目とか。もしユーザーリスト渡して条件で絞り込んでって聞いたら、文法変えてリストにいるユーザーIDしか出せないようにするとかさ。実際どれだけ役に立つかは分かんないけど、少なくともこういう場合のLLMのハルシネーションは避けられるよね。" userName="stavros" createdAt="2025/05/21 22:19:44" color="#45d325">}}




{{<matomeQuote body="そりゃ、ハルシネーションはするっしょ。ただ適当に間違った値を選ぶだけだよ。" userName="molf" createdAt="2025/05/21 23:14:47" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="間違ってるかもしれないけど、少なくとも存在しないIDをでっち上げるわけじゃないだろ。" userName="stavros" createdAt="2025/05/21 23:19:28" color="">}}




{{<matomeQuote body="＞ 実行環境がMCP、ツール、ユーザーデータにもアクセスできるようにするには、APIキーの保存場所やツールの公開方法に注意深い設計が必要。<br>もしツールがユーザーの代わりにAPI呼び出すなら、OAuthフローを使ってユーザーにどんなAPIや権限にツールがアクセスしていいか明示的に同意してもらう方がいいよ。そうすれば、扱いにくいAPIキー（あるいはクライアント認証情報）の代わりに、スコープ付きトークンで呼び出しができるからね。" userName="norcalkc" createdAt="2025/05/21 21:41:05" color="#ff5733">}}




{{<matomeQuote body="同意。OAuthが絶対いいのは間違いないけど、“APIキー”を“OAuthアクセストークン”に置き換えたところで、LLMとか信頼できないコードがユーザーの秘密情報にアクセスしないようにするっていう根本的な問題は変わらないよね。" userName="vrv" createdAt="2025/05/22 00:45:28" color="#ff5733">}}




{{<matomeQuote body="MCPとOAuthを綺麗に使ってる例、何か知ってる？" userName="iandanforth" createdAt="2025/05/21 21:46:21" color="">}}




{{<matomeQuote body="これ、前からずっと試してるんだよね。AIが抽出するデータを特定するのを手伝って、コードでそれを“テンプレート化”する確定的なデータ抽出システム。テンプレートできたら、似たような文字列からも確実に抽出できるんだ。例えばメールの件名。LLMは見たことない件名から何が抽出できそうか見つけるのがマジうまい。日付とか時間、場所とかは、新しい件名でもコードで確実に抜き出せるんだよ。このgithub見てみて。https://github.com/pixlie/determined" userName="brainless" createdAt="2025/05/22 06:23:59" color="#45d325">}}




{{<matomeQuote body="smolagents使ってるんだけど、このやり方すごいね。感動してる。ちょっと話変わるけど、OpenAIモデル長年使ってる者として、デスクトップアプリのClaude Sonnet 3.7がツール（MCP経由）使って何段階もかかる問題解決を超うまくこなすのにびっくりしたんだ。ツール説明が良ければ、システムとかプロンプトいじらなくても、チェイニングとか“水平思考”できるんだよ。APIでSonnet使ってる人いたら聞きたいんだけど、APIでも同じ感じ？もし違うなら、最近漏れた”agentic”プロンプトをAPIのシステムプロンプトに入れたら、だいたい同じになるかな？" userName="darkteflon" createdAt="2025/05/21 21:43:49" color="#785bff">}}




{{<matomeQuote body="君の質問、正しく理解できてるか自信ないな。<br>デスクトップ版の Sonnet 3.7 は、最初から MCP servers として公開されてるツールをうまく連携できるって話をしてたんだ。<br>Anthropic API でも同じ動きするのかな、それともシステムプロンプトをコピペすればいけるのかなって聞いてる。" userName="darkteflon" createdAt="2025/05/21 22:59:34" color="">}}




{{<matomeQuote body="それが MCP ってやつだよ。<br>MCP ってさ、文字通り API 呼び出しのラッパーでしかないんだ。<br>なのに、LLM っていうバズワードがちょっとかかってるだけで、みんな魔法みたいなことを期待しちゃうんだよね。<br>土台になってる API だけじゃそんなこと期待しないくせにさ。" userName="iLoveOncall" createdAt="2025/05/21 22:01:13" color="">}}




{{<matomeQuote body="ただの API ラッパーだよ。<br>でもそれこそが魔法に必要なものなんだ。<br>LLM なしでこれをどうやるのか説明してみてよ。" userName="BeetleB" createdAt="2025/05/22 00:16:24" color="">}}




{{<matomeQuote body="それってひっかけ問題？<br>プロンプトの中で、LLM なしでどうやるか君自身がちゃんと説明してるじゃん…" userName="iLoveOncall" createdAt="2025/05/22 09:25:26" color="">}}




{{<matomeQuote body="LLM/MCP の利点は、タスクごとの戦略やプログラム記述が不要なこと。<br>自分で考えず LLM が対応できる。API だけでは網羅できない複雑なタスクも、同じ MCP ツールでメール要約やリンク抽出など多様な処理が可能になる。<br>これこそが効率化だ。" userName="BeetleB" createdAt="2025/05/22 17:52:05" color="#ff33a1">}}




{{<matomeQuote body="AI 実行環境の課題として、セッション維持の難しさ（ステートフルな環境の管理コスト）を指摘。<br>長時間のタスクにはステートレスかつ持続性のある環境が重要になる。<br>大手テック企業由来の event sourcing や durable execution といったパターンが AI 分野でも役立つのに、あまり導入されないのは興味深いね。<br>（ちなみに自分は durable execution platform 開発中）" userName="abelanger" createdAt="2025/05/21 17:57:27" color="#ff5c5c">}}




{{<matomeQuote body="これ全部、従来のコンピューティングから何が必要で何が不要かの絶え間ない交渉だって見てるよ。<br>結局、みんながそれら全てから求めてるのは決定性だってことに気づくんだ。<br>LLM にとっては残念だけどね。" userName="th0ma5" createdAt="2025/05/21 18:39:42" color="">}}




{{<matomeQuote body="LLM がコンテキスト内の特定範囲（スパン）を参照できるようになれば、引数を参照渡ししたり、スパンを抽出 QA やコード引数、グラフ構築に利用したりできる。<br>”hide span” 機能でコンテキストの動的開閉も可能になり、コンテキストサイズ削減にもつながる。<br>コンテキストメモリにインデックスを付けて強化すれば、LLM は CPU のように機能するかも。" userName="visarga" createdAt="2025/05/21 18:38:05" color="#38d3d3">}}




{{<matomeQuote body="自分も Claude で、巨大な静的ファイルを一文字ずつ出力する問題に遭遇。<br>今週末は MCP ツールの呼び出しに redis cache か sqlite を組み込んで、その問題を解消できないか試す予定。<br>期待通りかは不明だが、これで Claude が全てを出力せずに済むかも。<br>”fire and forget” ツールも調べてみる。" userName="fullstackchris" createdAt="2025/05/21 20:17:52" color="#38d3d3">}}




{{<matomeQuote body="全書き込みじゃなくて、`grep`とか行編集を使えばいいんだよ。<br>ファイル全体じゃなくてシーケンスでやればさ。<br>こうすれば50kl locのファイルだって平気で編集できるし、Claudeみたいに全書き込みでぶっ壊れることもないよ。" userName="mehdibl" createdAt="2025/05/21 20:36:14" color="#785bff">}}




{{<matomeQuote body="その場合は`grep`でいいかもね。<br>でも関数間で特定の`artifact`を渡したいなら、裏側でセットしたりゲットしたりする仕組みがいるんじゃない？" userName="fullstackchris" createdAt="2025/05/22 12:13:13" color="">}}




{{<matomeQuote body="別の例ね。<br>ウェブページを取得するじゃん。<br>でもウェブページってJSとかノイズが多いんだよね。<br>だから取得したページは代わりに`https://jina.ai/reader/`を使うんだ。<br>そうするとMarkdownになる。<br>でもこれで十分かって？<br>いや、まだリンクとか色々あるから、もう一回パイプして、主にコンテンツに集中したいからURLとか不要なものを削るんだ。" userName="mehdibl" createdAt="2025/05/22 13:37:45" color="#785bff">}}




{{<matomeQuote body="なら`artifact`はファイルシステムに一回保存すればいいじゃんか。<br>なんでそもそも`artifact`使うんだよ。<br>ファイルシステムで編集して、次のエージェントやツールが直接読めばいい。<br>問題はワークフローだよ。<br>全部モデル通しちゃって、制御できるツールとできないツール（Claude Artefacts）を混ぜてるからそうなるんだ。<br>俺はデフォルトでClaudeの機能は全部切ってる。<br>そしてファイルシステムを使う。<br>そしたら`git diff`で変更も確認できるし、言った通り細かい変更もできる。<br>結局、問題は君のワークフローなんだよ。" userName="mehdibl" createdAt="2025/05/22 13:35:03" color="#ff33a1">}}




{{<matomeQuote body="それは`MCP`の戻り値の型がクソしょぼいからだよ。<br>テキストか画像か、あと一つくらいだっけ。<br>全然ちゃんと考えてない。<br>新しいauth specで自分で作ってみてるけど、公式のコードやツールがマジで足りない。<br>もっとシンプルで分かりやすくなったはずなのにさ。<br>なのにサーバータイプが3つもあって、一つはもう非推奨（SSE）とか、冗談かと思うわ。" userName="zackify" createdAt="2025/05/22 03:34:33" color="#ff33a1">}}




{{<matomeQuote body="サンドボックス環境で今一番いい選択肢って何？<br>HuggingFaceはE2Bと組んでるみたいだけど、デフォルトだとsmolagentsはプロセス内で一時的なやつを動かしてる。<br>別のSaaSに登録しなくて済むような、Dockerコンテナで良い解決策がありそうだと思うんだけどな。<br>なんかおすすめある？" userName="darkteflon" createdAt="2025/05/21 21:54:24" color="">}}




{{<matomeQuote body="オープンソースのサンドボックス探してる感じ？<br>E2Bは自分でホストすることもできるよ。<br>ただ一時的なクラウド計算を使いたいなら、結局SaaSのサブスクはいるけどね。" userName="ATechGuy" createdAt="2025/05/22 06:41:43" color="">}}




{{<matomeQuote body="gVisor試してみて。" userName="colonCapitalDee" createdAt="2025/05/21 22:11:10" color="">}}




{{<matomeQuote body="それってちょっと違うんじゃない？<br>代替のOCIランタイムは、前の人が聞いてること（GP）とは違うと思うけど。" userName="codethief" createdAt="2025/05/22 00:40:17" color="">}}




{{<matomeQuote body="gVisorを使ってDockerコンテナを動かせば、Dockerコンテナの中にサンドボックス環境ができるんだよ。" userName="colonCapitalDee" createdAt="2025/05/22 17:37:19" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
