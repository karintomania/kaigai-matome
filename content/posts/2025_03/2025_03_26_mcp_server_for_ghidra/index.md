+++
date = '2025-03-26T00:00:00'
months = '2025/03'
draft = false
title = 'Ghidraがさらに進化！？マルウェア解析を激変させるMCPサーバー登場！'
tags = ["Ghidra", "マルウェア解析", "リバースエンジニアリング", "MCP", "LLM"]
featureimage = 'thumbnails/purple4.jpg'
+++

> Ghidraがさらに進化！？マルウェア解析を激変させるMCPサーバー登場！

引用元：[https://news.ycombinator.com/item?id=43474490](https://news.ycombinator.com/item?id=43474490)

{{<matomeQuote body="いつかどんなバイナリファイルもワンクリックでソースコードに変換できるツールが欲しいなー。全てのゲームが“オープンソース”になったら超楽しいじゃん？今はOpenGothicとかopenageみたいなプロジェクトがあるけど、コミュニティの努力が何年も必要だしね。" userName="randomtoast" createdAt="2025-03-27T12:35:50" color="">}}

{{<matomeQuote body="今のSOTAモデルってREがマジで下手なんだよね。オープンデータで学習しても改善するとは思えない。ネット上に高品質な例が少ないし、コード書く人も積極的に難しくしてるし。" userName="airza" createdAt="2025-03-27T15:15:43" color="">}}

{{<matomeQuote body="リバースエンジニアリングを学習させるための高品質な合成データを作るのは簡単だよ。適当なオープンソースプロジェクトを使って、モデルにバイナリからコード（または同等のもの）を生成させればいいんだから。" userName="sebzim4500" createdAt="2025-03-27T16:13:24" color="#ff5c5c">}}

{{<matomeQuote body="そうだね。コード難読化ツールとか使って、もっと多様でリアルな例を作っても良いかも。" userName="ai-christianson" createdAt="2025-03-27T17:49:39" color="">}}

{{<matomeQuote body="自分のじゃないコードはオープンソースにできないよ。彼らはクリーンな新しいバージョンを実装してるんだ。逆に、企業がGPLプロジェクトを選んで、コードを逆コンパイルして、プロプライエタリとしてリリースすることもできない。" userName="gus_massa" createdAt="2025-03-27T15:26:31" color="">}}

{{<matomeQuote body="＞彼らはクリーンな新しいバージョンを実装してるんだ。<br>リバースエンジニアリングって既存のコードを分析することが多いし、それは秘密でもなんでもないよ。みんながリバースエンジニアリングの結果を議論したり共有したりするフォーラムもあるし。それがないと、元のゲームファイルを使えるような、ほぼ100%互換性のあるクローンを作るのはほぼ不可能だよ。" userName="randomtoast" createdAt="2025-03-27T15:41:57" color="#ff5733">}}

{{<matomeQuote body="LLMがコードを理解するには、ASTネイティブであるべきだと思う。コードはツリー構造なのに、モデルには構造を明示せずに線形に与えてる。今のモデルは再帰性とか真の記憶がないから、階層構造を効果的に推論できないんだよね。" userName="Xx_crazy420_xX" createdAt="2025-03-27T07:40:34" color="#45d325">}}

{{<matomeQuote body="LLMは自己回帰モデルだよね。でも、ASTの順序って存在しないかもしれない。特に計算や制御フローの並列ブランチでは。各ブランチをN個のシーケンスにほどくこともできるけど、制御フローの情報が消えちゃう。ノードの子に客観的な順序がある場合でも、{先行順, 後行順} × {幅優先, 深さ優先}の4つのトラバーサルオプションがあるしね。ARC-AGI向けのカスタムAST DSLをいじった経験から言うとね。" userName="Nesco" createdAt="2025-03-27T08:00:07" color="#ff5733">}}

{{<matomeQuote body="ARC-AGIに取り組んだことがあるって聞いて嬉しいなー。俺もちょっと触ったことあるんだ。並列ブランチがあると、トラバーサル空間がめちゃくちゃになるってのはマジでその通り。トークンレベルで曖昧だったものが、ASTでは構造化された曖昧さになるんだよね。LLMはトラバーサル空間全体を解決する必要はなくて、クリーンで抽象的なインターフェースがあればいいと思う。タイプと構造で推論できれば、Copilotみたいなツールの信頼性が爆上がりすると思う。" userName="Xx_crazy420_xX" createdAt="2025-03-27T08:40:55" color="#ff5c5c">}}

{{<matomeQuote body="＞LLMは自己回帰モデルだよね。<br>ほとんどのLLMは自己回帰モデルだけど、例外もあるよ。例えば、Mercury[0]は拡散LLMだよ。<br>[0]https://www.inceptionlabs.ai/news" userName="dragonwriter" createdAt="2025-03-27T08:39:59" color="">}}

{{<matomeQuote body="えーと、diffusion modelsの理解がめっちゃ浅いんだけど、あれって基本的には固定長の構造、特に連続空間に適用されるものだよね。木構造で使えるようにする方法もあるかもしれないけど、それはマジで簡単なことじゃないと思うよ。" userName="Nesco" createdAt="2025-03-28T10:05:27" color="">}}

{{<matomeQuote body="Autoregressive LLMsは大体において木構造じゃなくて、上限付きの線形トークン列で動いてるんだよね。それって固定長のシーケンスと同型じゃん。なんで木構造で処理する必要があると思ったのか分かんないなー。diffusion language modelsはマジで存在するし。Mercuryはプロプラだけど、LLaDAもあるよ。https://ml-gsai.github.io/LLaDA-demo/" userName="dragonwriter" createdAt="2025-03-28T15:24:20" color="#ff33a1">}}

{{<matomeQuote body="バイナリをAST形式に変換する研究ってあんまりないのかな？誰かが考えそうな気もするんだけど、見たことないんだよね。汎用的にできるのか、特定のコンパイラを知る必要があるのか？言語も特定する必要がある？あるいは、同じバイナリになる別の言語の仮説的なASTを作ったりできるのかな？" userName="gnfargbl" createdAt="2025-03-27T12:09:04" color="">}}

{{<matomeQuote body="ASTというよりグラフの方がしっくりくるな。プログラムを、元々はテキスト→ASTとしてエンコードされた、ごちゃごちゃしたデータフロー/コントロールフロー/依存関係グラフとして考えるんだよね。GNNはいくつか試みられたけど、推論への道って感じはしなかった。datalogで簡単にできることを、RL推論器にやらせるにはどうすればいいんだろう？" userName="lmeyerov" createdAt="2025-03-27T16:40:56" color="">}}

{{<matomeQuote body="コードのこと忘れちゃって、モデルに直接行動させればいいんじゃない？それが俺の予想。" userName="pilooch" createdAt="2025-03-27T14:03:47" color="">}}

{{<matomeQuote body="LLMって情報を完全に順番に処理するんだよね。それがコアな能力で、人間っぽく感じる理由だと思う。" userName="otabdeveloper4" createdAt="2025-03-27T08:26:01" color="">}}

{{<matomeQuote body="＞LLMs process information in a strictly sequential manner。”LLM”っていうクラス全体がそうってわけじゃないよ。ほとんどのLLMはautoregressiveモデルだからそうだけど、diffusion LLMもあるし、autoregressiveモデルみたいに順番じゃないんだ。<br>＞It’s their core capability<br>順番であることは能力じゃないし、LLMを定義するコアなものでもない。<br>＞and what makes them feel so anthropomorphic.<br>それにも同意できないなー。LLMが人間っぽく感じるのは、人間が他人を人間として認識する時に言語を重視するからだと思う。LLMの出力は人間の言語使用をモデル化して、人間らしさの認識に使われる重要な特徴を直接ターゲットにしてるんだ。" userName="dragonwriter" createdAt="2025-03-27T08:35:54" color="#ff5733">}}

{{<matomeQuote body="LLMのギミックは、まるで話しかけてくるかのように、順番にテキストを出力すること。それが「生きてる」とか「知的」に感じさせるんだよ。（皮肉なことに、この順番性こそが実際には知性を制限してるんだけどね。AIの盛り上がりは見た目重視で、事実じゃないんだ。）" userName="otabdeveloper4" createdAt="2025-03-27T10:51:32" color="">}}

{{<matomeQuote body="＞ That's what makes them feel “alive” and “intelligent” to us.<br>この主張の根拠は何？「A」（チャットボットは順番にテキストを出力する）は真実で、「B」（彼らは知的に感じられる）も真実だけど、「AがBを引き起こす」って主張は根拠がないじゃん。たまたま両方とも真実で、個人的に因果関係があると感じるってだけで、何も証明にならない。" userName="lucianbr" createdAt="2025-03-27T13:13:00" color="#38d3d3">}}

{{<matomeQuote body="＞ The gimmick of the LLM is that it outputs text sequentially, as if it is talking to us. That's what makes them feel “alive” and “intelligent” to us.<br>元の主張はそうだったね。でもやっぱり同意できない。彼らが生きているとか知的だと感じられるのは、人間みたいな言語を出力するからで、出力が順番に構築されるプロセスじゃないんだ。同じくらいの出力品質の非autoregressive LLMも、autoregressive LLMと同じくらい生き生きとして知的に見えるはず。tokenごとに順番に出力されるのがユーザーに見えないようなインターフェースのautoregressive LLMは、出力がストリーミングされるものと変わらず知的に見えるよ。" userName="dragonwriter" createdAt="2025-03-27T18:33:55" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もしLLMが視覚的にテキストを順番に出力しないで、一度に出力したら、今ほど成功しないってことかな？" userName="rowanG077" createdAt="2025-03-27T11:28:09" color="">}}

{{<matomeQuote body="そうだよ。人間の言葉は順番に出てくる（音を一つずつ出す）。LLMがトークンごとに自動補完でこれを真似ると、人間っぽく見えるんだよね。（「成功」って言葉には異議があるけど。LLMを人間みたいな知能として売るのは、ただのギミックで詐欺まがいだよ。）" userName="otabdeveloper4" createdAt="2025-03-28T08:38:22" color="">}}

{{<matomeQuote body="完全にはそうじゃないよ。TransformerのAttentionのポイントは、トークン同士の関係を色々なレベルで計算するクロスワイズ処理なんだ。だからLLMは読むのが速いんだよ。全部の入力トークンを並行して処理してるから。LLMは外側のループでは順番にトークンを出すけど、内部の活性化関数には計画された出力全体の非シーケンシャルマップがあるのは明らかだよ。そうじゃないと、首尾一貫した文章を作ったり、動詞を最後におくドイツ語を話したりできないもん。" userName="mike_hearn" createdAt="2025-03-27T08:51:41" color="#ff5c5c">}}

{{<matomeQuote body="今MCPを呼び出せるツールって何があるの？少し読んだだけだけど、ClaudeのデスクトップアプリがローカルでMCPを使えるって知ったよ。MCPをリモートで使えるチャットインターフェースってある？ChatGPT、Claude、GeminiのウェブインターフェースでMCPのエンドポイントと関数を指定して、リモートのサーバーを呼び出せるようにしたいんだよね。GPTsとかGemsみたいに。" userName="qwertox" createdAt="2025-03-26T19:08:20" color="#45d325">}}

{{<matomeQuote body="ビデオで少し触れたけど、Claude Desktopの他に、5ireが割とモデルに依存しないローカルMCPクライアントだよ。他にもあると思う。samaも最近ChatGPT DesktopにMCPクライアント機能が「すぐ」搭載されるって言ってた。リモートクライアントについては、Cloudflareに便利なツールがあるよ。”AI Playground”を見てみて。" userName="lauriewired" createdAt="2025-03-26T19:23:43" color="#ff33a1">}}

{{<matomeQuote body="OpenAIがAgents SDKでサポートを発表したよ。https://news.ycombinator.com/item?id=43485566<br><br>https://openai.github.io/openai-agents-python/mcp/" userName="jauntywundrkind" createdAt="2025-03-26T19:43:40" color="#38d3d3">}}

{{<matomeQuote body="Cursorで使ってるよ。MCPサーバーを書くのは簡単で、CursorにTypeScriptで書いてもらうだけ。ローカルのMCPサーバーを使って、好きなリモートAPIを呼び出したり（または他のタスクを実行したり）できる。MCPサーバーはstdin/stdoutを使ってCursorと通信するよ。" userName="electroly" createdAt="2025-03-26T23:13:31" color="#ff33a1">}}

{{<matomeQuote body="Librechatを使ってるけど、かなり機能が充実してると思う。Obsidian MCPを更新して、最新の日記エントリがセラピストのように振る舞うようにしたんだ。設定例はこちら：https://www.jevy.org/articles/obsidian-mcps-to-work-with-not..." userName="jevyjevjevs" createdAt="2025-03-27T11:04:42" color="#ff5733">}}

{{<matomeQuote body="@jevyjevjevsさん、サイトのブログにRSSフィードを追加してくれませんか？興味深くて役立つ記事がいくつかありました。購読したいのですが、RSSまたはメール購読が見当たりません。" userName="dockerd" createdAt="2025-03-27T11:39:03" color="">}}

{{<matomeQuote body="SAM（Solace Agent Mesh）でMCPサーバーを使えるよ。チャットインターフェースがあって、リモートで実行できる。リモートで一番簡単なのは、無料のSlackワークスペースを使ってSAMにSlack連携することかな。そうすれば、ブラウザUIを提供するために穴をあける必要はないよ。https://github.com/SolaceLabs/solace-agent-mesh" userName="efunnekol" createdAt="2025-03-26T19:56:05" color="#ff33a1">}}

{{<matomeQuote body="おっ、同じ疑問持ってた人いたんだ！Google検索したら、ここにリストがあったよ：<br>https://github.com/punkpeye/awesome-mcp-clients" userName="nekitamo" createdAt="2025-03-26T19:42:11" color="#45d325">}}

{{<matomeQuote body="サーバーのリストはこっちにあるね：<br>https://github.com/punkpeye/awesome-mcp-servers" userName="lordviet" createdAt="2025-03-26T21:46:20" color="#ff5c5c">}}

{{<matomeQuote body="BlockのGooseってツールがMCP使ってるらしいよ。<br>https://block.github.io/goose/" userName="salgorithm" createdAt="2025-03-26T20:00:35" color="">}}

{{<matomeQuote body="Gooseをうまく使うコツってあるのかな？ちょっと試したけど、手動で設定したOpen Web UIに比べて不安定だったんだよね。" userName="hedgehog" createdAt="2025-03-27T02:15:38" color="">}}

{{<matomeQuote body="Unity、Blender、Photoshopにも、MCP連携機能があるみたい。GitHubで探せるよ。" userName="fixprix" createdAt="2025-03-26T22:23:30" color="">}}

{{<matomeQuote body="プロキシサーバーを使えば、MCPサーバーをリモートで実行できるかもね。" userName="mettamage" createdAt="2025-03-26T19:59:48" color="">}}

{{<matomeQuote body="CursorがMCPをサポートしてると思うよ。" userName="asphodel_gray" createdAt="2025-03-26T20:10:41" color="">}}

{{<matomeQuote body="前にGhidraとLLMを連携させた動画も良かったよ。<br>https://news.ycombinator.com/item?id=42860849<br>Malimite – iOS and macOS Decompiler<br>https://news.ycombinator.com/item?id=42829402<br>Jan, 2025 (37 comments)" userName="mdaniel" createdAt="2025-03-26T14:25:32" color="#ff33a1">}}

{{<matomeQuote body="まだ彼女のYouTubeチャンネルを見たことないなら、チェックしてみて！技術的な内容も面白いけど、レトロなOSグラフィックを使った編集も楽しいよ。" userName="sorenjan" createdAt="2025-03-26T21:54:18" color="#45d325">}}

{{<matomeQuote body="マジですごいよね。技術的なコンテンツ、動画と連携したGitHubのリポジトリ、セットデザイン、レトロな編集…大手スタジオの作品よりもクオリティが高いものが多いと思う。" userName="foooorsyth" createdAt="2025-03-27T02:46:49" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="radare2用のもあるよ:<br>https://github.com/dnakov/radare2-mcp" userName="npace12" createdAt="2025-03-26T20:04:27" color="">}}

{{<matomeQuote body="もし全てのバイナリが完璧にリバースエンジニアリングできるようになったら、セキュリティはどう変わると思う？" userName="ngneer" createdAt="2025-03-27T01:07:37" color="">}}

{{<matomeQuote body="みんなプロプライエタリなプログラムを、サーバーと通信するただのクライアントに置き換えるんじゃない？それか、準同型暗号に全力投球するか。" userName="LegionMammal978" createdAt="2025-03-27T02:43:24" color="#ff5c5c">}}

{{<matomeQuote body="形式的に証明されたシステムだけが安全になるだろうね。" userName="ynniv" createdAt="2025-03-27T02:45:03" color="">}}

{{<matomeQuote body="アセンブリが読めれば、全てはオープンソースみたいなもんだよ。" userName="xeckr" createdAt="2025-03-27T01:31:56" color="">}}

{{<matomeQuote body="セキュアエンクレーブがほとんどのコンピュータに現れるだろうね。暗号化なしに何も実行されなくなるかも。" userName="gosub100" createdAt="2025-03-27T14:35:04" color="#ff5c5c">}}

{{<matomeQuote body="ghidraからLLMにコピペして解析させようとしたけど、うまくいかなかったんだよね。ベンチマークとかあると嬉しいな。" userName="brokensegue" createdAt="2025-03-26T03:01:59" color="">}}

{{<matomeQuote body="一度だけ試したけど、逆の経験をしたよ。PS2のゲームから5つくらいの関連関数を与えたら、グラフィックスコードに関連するものだと正しく推論して、パラメータに適切な型と名前を付けたんだ。もちろん、これは当たるも八卦当たらぬも八卦だと思うけど。" userName="Everdred2dx" createdAt="2025-03-26T05:27:38" color="#ff5c5c">}}

{{<matomeQuote body="同じような経験をしたよ。ghidraからの不安定なデコンパイルを取ってきて、パラメータと関数に名前を付けることができたんだ。文字列内の単一の名前に基づいてゲームを把握することもできた。ラベル付けされたデコンパイルの私の読み方に基づくと、それはおおむね正しそうに見えた。そして間違いなく私よりずっと速い。たとえ１００％頼らなくても、間違いなく関数の素晴らしい下書きパスだった。" userName="strstr" createdAt="2025-03-27T04:30:01" color="#ff5733">}}

{{<matomeQuote body="ほとんどの場合、トレーニングデータから認識された、どこかに紛れ込んだシンボルがあっただけだと思うよ。" userName="cedws" createdAt="2025-03-26T06:45:26" color="">}}

{{<matomeQuote body="それどこから来てるの？ランダムなPS2ゲームのコードシンボルが学習データに入ってる可能性はめっちゃ低いと思うよ。コードを理解して書き換える能力があるって方がずっとありそう。LLMが何年も前からやってることじゃん。" userName="rowanG077" createdAt="2025-03-26T17:52:43" color="">}}

{{<matomeQuote body="親コメントは経験なしで想像で言ってるね。LLMは16進数とかバイトコードとかbase64とかrot13とかも理解できるんだよ。俺はいつもLLMを使ってバイトコードをデコンパイルしてるよ。" userName="sitkack" createdAt="2025-03-26T18:02:46" color="#45d325">}}

{{<matomeQuote body="こういう系のベンチマークをどう作るかずっと考えてるんだけど、LLMを審査員にする以外に良いアイデアが浮かばないんだよね（でもすぐぐちゃぐちゃになる）。現在のニューラルデコンパイルの試みが、構文エラーなしで再コンパイルできるか、とか、再コンパイルの機能的な同等性とか、一見意味のないベンチマークで評価されてる理由もわかる気がする。" userName="rfoo" createdAt="2025-03-26T18:22:28" color="">}}

{{<matomeQuote body="えー、特にリバースエンジニアリングに関しては、最高のベンチマークがあるじゃん。オリジナルのコードをチェックできるんだから。" userName="vessenes" createdAt="2025-03-26T20:16:39" color="#ff33a1">}}

{{<matomeQuote body="それってLLMを審査員にする必要があるよね。" userName="brokensegue" createdAt="2025-03-27T02:58:09" color="">}}

{{<matomeQuote body="いや、そんなことないよ。実際のソースコードとdiffを取ればいいだけじゃん。実際のdiffよりはもっとファジーで連続的なものになるだろうけど、それでも。" userName="dataangel" createdAt="2025-03-27T11:40:19" color="#ff33a1">}}

{{<matomeQuote body="機能的な同等性に加えて、ニューラルデコンパイルの重要な価値は、それが復元したシンボル（関数名、変数名、メンバ名を含む構造体定義）にあるよね。もしLLMが、元々“find_pool”と呼ばれてた関数に対して“FindFirstFitContainer”を予測したとしたら、これは正しいの？間違い？26.333%正解？" userName="rfoo" createdAt="2025-03-30T09:58:39" color="">}}

{{<matomeQuote body="2つのコード片が同等であることを証明するのって、めっちゃ難しいよね（計算不可能）。" userName="brokensegue" createdAt="2025-03-27T12:28:17" color="">}}

{{<matomeQuote body="MCPサーバーの“カタログ”を作ってる人いる？Githubで検索しても、なかなか見つからないんだよね。" userName="Everdred2dx" createdAt="2025-03-27T04:22:31" color="">}}

{{<matomeQuote body="最近、MCPサーバーのリストみたいなウェブサイトがめっちゃ増えてる気がする。<br>例えば：<br>＞https:／／mcpservers．org／”<br>＞https:／／glama．ai／mcp／servers”<br>＞https:／／www．claudemcp．com／servers”<br>それにいつものGitHubのやつ：<br>＞https:／／github．com／punkpeye／awesome-mcp-servers”<br>マジで流行ってるね。" userName="meander_water" createdAt="2025-03-27T04:58:07" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="ちょっと詳しく説明するね。全部のMCPサーバーをインデックスしてるんだけど、中にはMCPサーバー自体をリモートでホストしてくれるサービスもあるんだ。Glamaとかmcp.runとか、最近だとCloudflareもその仲間入りしてるよ。" userName="knowaveragejoe" createdAt="2025-03-27T06:27:32" color="#785bff">}}

{{<matomeQuote body="これらのMCPレジストリって、MCPサーバーも公開してるのかな？そうすればクライアントはレジストリを使ってMCPサーバーを自動で見つけられるよね。" userName="Klaster_1" createdAt="2025-03-28T13:20:24" color="">}}

{{<matomeQuote body="すでにディレクトリはいくつかあるよ。いくつかメモにまとめたから見てみて。<br>https://notes.dsebastien.net/30+Areas/33+Permanent+notes/33…" userName="dSebastien" createdAt="2025-03-27T06:37:47" color="">}}

{{<matomeQuote body="https://www.mcpt.com/" userName="cocoflunchy" createdAt="2025-03-27T10:01:18" color="">}}

{{<matomeQuote body="これすごくいいね！でもMCPサーバーにもっと機能があったら嬉しいな。例えば、プログラムの任意のアドレスを読み書きできるとか。前にXORされた命令を自己解凍するCTFの問題に取り組んだんだけど、XORされたアドレスの値を読みたかったんだ。" userName="celesian" createdAt="2025-03-27T03:26:27" color="#ff33a1">}}

{{<matomeQuote body="関連情報（マージされたもの）：GhidraMCP: AIがマルウェアをリバースエンジニアリング [動画] - https://news.ycombinator.com/item?id=43475025" userName="dang" createdAt="2025-03-26T17:45:20" color="">}}

{{<matomeQuote body="REは正確さと注意深い推論が必要な作業で、LLMの推論は当てにならない。LLMは推論が苦手だから、AIに僕らの仕事は奪えないね。" userName="userbinator" createdAt="2025-03-27T04:12:49" color="">}}

{{<matomeQuote body="そうとは限らないよ。“まあまあ”とか“十分”って思えるレベルでいいなら、今のLLMでも十分代わりになる。色々壊しながらもね。" userName="iugtmkbdfil834" createdAt="2025-03-27T04:38:54" color="">}}

{{<matomeQuote body="パンドラの箱を開けちゃったね。" userName="enigma101" createdAt="2025-03-27T11:47:50" color="">}}

{{<matomeQuote body="lauriewired、愛してる。" userName="dprophecyguy" createdAt="2025-03-27T03:42:37" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
