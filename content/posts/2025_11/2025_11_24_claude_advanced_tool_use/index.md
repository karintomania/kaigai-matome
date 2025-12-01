+++
date = '2025-11-24T00:00:00'
months = '2025/11'
draft = false
title = 'Claude、高度なツールを自在に使いこなす！'
tags = ["AI", "LLM", "CLI", "ツール", "プログラミング"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> Claude、高度なツールを自在に使いこなす！

引用元：[https://news.ycombinator.com/item?id=46038047](https://news.ycombinator.com/item?id=46038047)




{{<matomeQuote body="もっとCLIツールを作ろうぜ！そうすればエージェントAIは`yourtool --help`で使い方を学べるし、JiraみたいなMCPサーバー経由じゃなく直接`jira`ってCLIツールを叩けるようになるよ。CLIツールがもっと良くなれば、AIも人間も助かるって話。" userName="theknarf" createdAt="2025/11/25 10:26:02" color="#785bff">}}




{{<matomeQuote body="CLIツールは確かに素晴らしいアイデアだけど、LLM以前にも価値があったのに、ほとんどのサービスは提供してこなかったよね。Jiraみたいなサービスは、あまりオープンになりたくないからだと思う。今のLLM/MCPブームがあっても、APIが十数年前に流行った後にロックダウンされたのと同じように、MCPツールも結局制限されていくと思うよ。" userName="tomashubelbauer" createdAt="2025/11/25 10:44:17" color="#45d325">}}




{{<matomeQuote body="結局、ツールはロックダウンされるって意見には賛成。デスクトップソフトが出荷されない大きな理由の一つは、古いツールをサポートするコストがとんでもなくかかるからだよ。例えば「なんで＜製品名＞が壊れてるの？」ってチケットが来ても、結局6年前のバージョンを使ってて、3年前に非推奨になってたAPIを叩いてるって判明するのに何回もやり取りが必要だったりする。複数の製品バージョンをサポートするのは本当に大変なんだ。実行可能なツールを追加すると、古くなる問題はさらに大きくなるよ。" userName="xnorswap" createdAt="2025/11/25 12:44:00" color="#38d3d3">}}




{{<matomeQuote body="もし「何回もやり取りが必要」ってなるなら、そのサポートは価値がないね。アプリケーションのバージョンは、チケットを開くときに最初に収集すべき情報、もしかしたら必須にすべきだよ。" userName="pferde" createdAt="2025/11/25 12:48:45" color="">}}




{{<matomeQuote body="違う製品のバージョンを言われたことない？もちろん相手によるし、3回は最悪のケースを誇張してるけど、昔の職場で「これ、うちの製品ですか？」って確認から始めるサポートリクエストを見たよ。そんな相手からバージョン情報を得るには、正確な手順をメールで説明し、さらに電話で手伝う必要があったりするんだ。Jiraチケットや開発者向けソフトならまだいいけど、CSチームの生の声を聞けば、彼らがいかに基礎的な対応に時間を費やしてるか驚くかもね。" userName="xnorswap" createdAt="2025/11/25 15:26:13" color="#38d3d3">}}




{{<matomeQuote body="CLIツールって開発者視点だと最初は簡単そうに見えるんだよね。「WebアプリのAPIを使うGoかNodeアプリをサッと書けばいいや」って。でも1〜1.5年後、新機能やAPIの破壊的変更がいくつか入ると、CLIソフトをAPIと同期させるのが大変な大仕事だとわかるんだ。自動更新のインフラも管理しなきゃいけないし、どのバージョンを非推奨にするかの管理も難しい。この問題を解決するためにTerminalwire（https://terminalwire.com）を作ったよ。各企業が独自のCLIと自動更新インフラを作りたがるのは、自社サイトを見るために独自のブラウザを送り出すようなもので、ちょっとおかしいと思うな。" userName="bradgessler" createdAt="2025/11/25 13:03:24" color="#38d3d3">}}




{{<matomeQuote body="私はClaudeにJiraと連携する小さなCLIツールを書いてもらってて、すごくうまくいってるよ。「cases」で進行中のケースリストを表示したり、「other_changes」でリリース内の特定ラベルのチケットを見たり、「new_release」でJiraやデプロイDBに新しいリリースを作成したりできるんだ。必要な時にツールをオンデマンドで作るサブエージェントみたいなものを想像できるね。Claudeはこういう小さなツールを作るのが本当に得意だよ。" userName="linsomniac" createdAt="2025/11/25 15:18:25" color="#ff33a1">}}




{{<matomeQuote body="誰もCLIツールを出荷しなかったのは、以前はほとんど誰も使えなかったからだよ。でも今はLLMにコマンドを生成してもらえばいいから、ずっとアクセスしやすくなったよね。" userName="ath92" createdAt="2025/11/25 10:54:06" color="">}}




{{<matomeQuote body="JiraにはMCPサーバーとCLIツール（acli）があるんだ。俺はClaudeのコードをMCPからCLI（スキル付き）に切り替えたんだけど、こっちの方が効率的で速いみたいだよ。" userName="PanMan" createdAt="2025/11/25 22:47:26" color="#ff5733">}}




{{<matomeQuote body="JiraみたいなオンラインサービスのCLIツールは、結局はオープンでドキュメント化されたAPIなんだよね。こういうAPIに対する考え方は、君が言ってるように、当分変わらないだろうね。" userName="throwaway19268" createdAt="2025/11/25 14:41:04" color="">}}




{{<matomeQuote body="LLMは、コンテンツのスクレイピングや代替サービスプロバイダー探し、あるいは独自のソリューション作成にも本当に役立つから、移行する手助けになるよ。" userName="joshribakoff" createdAt="2025/11/25 15:32:25" color="#38d3d3">}}




{{<matomeQuote body="それってエージェントがターミナルで動いてるときしか役に立たないよね。Excelのセルを更新する例があったけど、SharePointのAPIで1つのセルを更新するのだって、APIラウンドトリップで数秒かかるから、実際には結構時間がかかるんだ。最近、個別のAPI呼び出しをやめるために書き直したばっかりだよ。" userName="delaminator" createdAt="2025/11/25 10:55:05" color="">}}




{{<matomeQuote body="俺はGitLab CLI（glab）をすごく使ってるんだ。公式のGitLab MCPよりもずっと使いやすいからね。Claude Codeを起動する前に`glab auth login`を実行して、CCに`glab`を使ってGitLab APIと通信させるんだ。MCPを使うと、OAuthのブラウザ起動プロセスとか面倒だし、使えるツールも9～10個に限定されちゃうからね。" userName="easyascake" createdAt="2025/11/25 13:43:47" color="#785bff">}}




{{<matomeQuote body="「MCPサーバーの95%は役立たず」って動画も見てみて。`https://youtu.be/7baGJ1bC9zE?si=ShyLg2mHWwbBW1DSt`<br>要するに、AIアシスタントはすでにコマンドラインツールを使えるんだよ。" userName="PantaloonFlames" createdAt="2025/11/25 17:10:01" color="#38d3d3">}}




{{<matomeQuote body="俺はまさにこのやり方でコーディングエージェントを使ってるよ。小さいCLIツールを`--help`オプション付きで作らせて、`./tools`ディレクトリに置くんだ。そうすればエージェントに「このツールを使え」って指示できるんだ。初めてプロンプトで`tool --help`って言うときは、バッククォートで囲むと良い感じ。めっちゃうまくいくよ。" userName="chillfox" createdAt="2025/11/25 15:26:18" color="#785bff">}}




{{<matomeQuote body="これ試してみるわ。なんか promising だね。もっと詳しく例を見せてくれない？" userName="misiti3780" createdAt="2025/11/25 15:37:47" color="">}}




{{<matomeQuote body="もちろん！エージェントはヘルプの“Examples”セクションを冗長な例で埋めがちだから、ツール開発中は手動で手直しが必要だよ。<br>`gh-install`はfishスクリプト（curlとjqを使用）で、エージェントが作ったものだ。<br>`gh-install -h`の出力と、asdf、hadolint、ripgrep、fd、delta、batをインストールするプロンプト、そして複数のツールを使う場合のプロンプトも記載しているよ。<br>Playwright（ウェブページをAPIとして利用）を使ったJSスクリプトでデータをJSON形式で取得し、それをjqで処理させるツールもいくつか持ってるんだ。" userName="chillfox" createdAt="2025/11/26 00:01:09" color="#ff5733">}}




{{<matomeQuote body="これは役に立つわ。ありがとう！" userName="misiti3780" createdAt="2025/11/26 13:53:45" color="">}}




{{<matomeQuote body="CLIツールはスクリプトと組み合わせることで、もっと速くて再現性の高い体験ができるんだ。" userName="tacone" createdAt="2025/11/25 19:34:06" color="">}}




{{<matomeQuote body="こういう理由で新しいCLIツールが出てくるのって、結構好きなんだよね。例えば、hono cliとかいい感じ！ https://blog.yusu.ke/hono-cli/" userName="jackbravo" createdAt="2025/11/26 02:01:45" color="#785bff">}}




{{<matomeQuote body="JIRAがいい例だね。オンプレミスでデータベースにアクセスできた頃は自動化できてたけど、今はクラウドに閉じ込められててAPIもクソだから、アドオンをもっと売りつけたいんだろうね。もう代替を探してるよ。" userName="3acctforcom" createdAt="2025/11/25 19:22:59" color="#38d3d3">}}




{{<matomeQuote body="うん、俺たちのAIは、まず /help APIを呼んで、どんな操作が可能でどう使うかをミニ化されたドキュメント形式で確認するようになるんじゃないかなって気がするよ。" userName="makestuff" createdAt="2025/11/25 14:18:05" color="#38d3d3">}}




{{<matomeQuote body="これってクライアントじゃなくてサーバーで実行されるツールについての話だと思うんだけど。全体的にすごい混乱してるから、間違ってるかもね。" userName="zby" createdAt="2025/11/25 13:58:29" color="">}}




{{<matomeQuote body="CLIツールには賛成だけど、限界もあるよね。別の会社がMCPサーバーを更新すれば、あなたは楽に新しいツールを手に入れられる。例えばJira CLIツールだと、自分でスキルを書いて最新の状態に保つ必要があるけど、MCPサーバーならほとんどの作業を委任できるからさ。" userName="stpedgwdgfhgdd" createdAt="2025/11/25 12:17:24" color="#785bff">}}




{{<matomeQuote body="PATとAPIドキュメントをもらったら、まさにこれ、自分でツールを書くんだよね。Atlassianがやってくれたらもっといいんだけど、期待はしてないよ。" userName="mlrtime" createdAt="2025/11/25 11:41:53" color="">}}




{{<matomeQuote body="それか、LLMにツールを作らせてエージェントに渡せばよくない？さらに一歩進めると、ツールは完全に一時的なもの、つまりたった1回のチャット会話の間だけ存在するものにできるかもね。" userName="PantaloonFlames" createdAt="2025/11/25 17:12:28" color="#ff33a1">}}




{{<matomeQuote body="プログラマティックなツール呼び出しってさ、ずっと次のステップだったよね。LLMにとってコードが言語になるのは明らかだから、その言語定義が超重要。でも、ツール検索ってのはいらないと思うな。必要なツールはコンテキストエンジニアリングで十分用意できるし、検索を増やすのは余計なオーバーヘッドだよ。もっとコンパクトなツール定義言語やオブジェクト指向が必要だね。オブジェクトをコンテキストにポンと置けば、型や呼び出せるメソッドを理解してくれるのが理想なんだ。" userName="jmward01" createdAt="2025/11/24 20:58:38" color="#ff5c5c">}}




{{<matomeQuote body="なんで新しい言語が必要なの？僕が書くエージェントはPython SDKやパッケージにアクセスできるし、カスタム関数も使えるんだ。LLMはコードを自分で組み立てる能力があるんだから、ツールとか擬似RPCみたいな面倒な仕組みは無意味じゃないかな。" userName="fny" createdAt="2025/11/24 22:13:36" color="#38d3d3">}}




{{<matomeQuote body="ちょっと待って！わざとエコシステムを複雑にして、その解決策としてツールやコンサルティングを売ることで儲けるっていう収益源を無視してるよ！そうすれば、うちの超金持ちテック系兄弟たちは新しいヨットをたくさん買えるのにさ！" userName="FridgeSeal" createdAt="2025/11/25 02:07:44" color="">}}




{{<matomeQuote body="僕のVS Codeフォークはみんなを庭に連れてくるんだ。そしたら「君のより良いね」って言うんだ。そうだ、僕のより良いんだよ！" userName="zeroq" createdAt="2025/11/25 02:35:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ、最近Hacker Newsで読んだコメントの中で一番クリエイティブだね。" userName="checker659" createdAt="2025/11/25 03:47:30" color="">}}




{{<matomeQuote body="新しい言語が必要というより、AIゲーム開発で使われるプリミティブ、例えばビヘイビアツリーとか、コアとなるエージェントループの方が重要なんじゃないかな。" userName="ctoth" createdAt="2025/11/25 01:39:23" color="#ff5c5c">}}




{{<matomeQuote body="これって、GraphQLがフロントエンドで解決する問題にちょっと似てるよね。クライアントとサーバー間のやり取りを減らして、サーバー側でもっと多くの処理ができるようになるんだ。" userName="stingraycharles" createdAt="2025/11/25 03:24:16" color="#38d3d3">}}




{{<matomeQuote body="最新のMCP仕様（2025-06-18+）で、構造化コンテンツと出力スキーマが導入されたんだ。Smolagentsはこれを使って、ツール出力をオブジェクト（例えばdict）として扱ってるよ。これって、君が考えてたことに近いんじゃないかな？詳細はこのブログ記事を見てね。<br>https://huggingface.co/blog/llchahn/ai-agents-output-schema" userName="menix" createdAt="2025/11/24 21:04:56" color="#45d325">}}




{{<matomeQuote body="ごちゃごちゃした現状より、`.d.ts`みたいにするとメンテやテストが楽だね。LLMはコードも書けるから、書き込み権限を与えよう。SQL ServerやgRPCとか何とでも話せるし、ツールも自分で作れる。Jupyterみたいな対話プラットフォームや音声入力もいるね。他のセッションと連携すればもっと効率的。もう自分をコピーできるから、このシステムを“Skynet”って呼んでいいかも。" userName="mirekrusin" createdAt="2025/11/24 23:58:35" color="#45d325">}}




{{<matomeQuote body="ビヘイビアツリーの`select`と`sequence`の強力さに気づいて、なんでこんなに使われてないのか不思議だよ。JavaScriptで不変な契約作るの見てゾッとしたけど、ビヘイビアツリーで書けば、もっと理解しやすく検証も楽だよね。変更範囲を制限できるだけでも大きなメリットだよ。" userName="sandbags" createdAt="2025/11/25 09:28:46" color="">}}




{{<matomeQuote body="Rexxみたいな高レベルコマンドを想像してるけど、それだとプログラミング言語とシェルの区別が曖昧になっちゃう。高レベルなのはトークン節約のためだけど、表現力は下がるね。LLMがコマンドじゃなくてファイルを読み書きするPlan 9スタイルも試したい。ユーザーはファイル操作だけ考えればいいから、便利かもね。" userName="delaminator" createdAt="2025/11/25 10:58:50" color="#ff5c5c">}}




{{<matomeQuote body="俺はこれをMCPサーバーとして作ったよ。他のMCPサーバーにプロキシするみたいに動いて、ツール定義をTypeScriptのアノテーションに変換し、LLMに生成させたTypeScriptを制限VMで動かしてツール呼び出しをするんだ。去年のAppleのホワイトペーパーが元だよ。詳しくはこちら：https://github.com/zbowling/mcpcodeserver" userName="zbowling" createdAt="2025/11/25 20:06:31" color="#38d3d3">}}




{{<matomeQuote body="公開メソッドを持つオブジェクトをコンテキストにドロップして型を認識したいとか、Rexxみたいな高レベルコマンドとかの話を聞くと、PowerShellを再発明しようとしてるみたいだね。PowerShellはシェルでありスクリプティング言語。全部自己記述オブジェクトで、シェルでパイプしてメソッドを呼べるんだから、まさにそれだよ。" userName="BoiledCabbage" createdAt="2025/11/27 10:58:24" color="">}}




{{<matomeQuote body="WebAssemblyランタイムなしで、この“非破壊的なPython SDKのサブセット”って今あるのかな？CELみたいに検証可能なランタイム保証があって、構文がPythonのサブセットになってるやつが欲しいんだけど。" userName="never_inline" createdAt="2025/11/25 07:13:09" color="#45d325">}}




{{<matomeQuote body="Pythonみたいなシンプルな構文と、それに対応するモデルの学習が必要だね。これはJSONスキーマよりはるかにコンパクトで、`o1 (MyClass)`みたいにオブジェクトをリストできる。プログラマティックなツール呼び出しと組み合わせれば、コードとの連携も柔軟で最高だよ。AnthropicやOpenAIが早くこれに気づいてほしいね。インライン応答も必須だよ。" userName="jmward01" createdAt="2025/11/24 22:48:37" color="#38d3d3">}}




{{<matomeQuote body="ツール探索って、多くのチームが目指してたことを形式化してるね。俺は前まで「ツール呼び出し」って呼んでたんだ。LLMがドメインごとにツールを知ってて、ドメインが言われたらツールが読み込まれるんだ。これはもっと賢そうだね。" userName="dalemhurley" createdAt="2025/11/25 08:42:59" color="#ff33a1">}}




{{<matomeQuote body="LLMにPrologベースのDSLを試してるんだ。HuggingfaceのsmolagentsみたいなCodeActスタイルでさ。DSLで複数のツール（MCPとか内蔵ツール）やLLMプロンプトを連携できる。まだ実験段階だけど、結構楽しいよ。<br>見てみて: https://github.com/deepclause/deepclause-desktop" userName="schmuhblaster" createdAt="2025/11/25 12:59:43" color="#ff5c5c">}}




{{<matomeQuote body="ユーモアが否定されたわけじゃないんだよな。誰かがクリエイティブなコメントって言ってたし。俺も鼻で笑っちゃったけど、まあ正直な話ね。" userName="DANmode" createdAt="2025/11/26 00:55:51" color="">}}




{{<matomeQuote body="君のインスピレーションだったから、このトピックでのClaudeとの議論の要約があるよ（暗号の部分は除く）。<br>https://claude.ai/public/artifacts/2b23f156-c9b5-42df-9a83-f..." userName="delaminator" createdAt="2025/11/25 11:11:24" color="#38d3d3">}}




{{<matomeQuote body="よく分かってないツールのさらに上に抽象化レイヤーを追加するのって、病気だよ。" userName="user3939382" createdAt="2025/11/25 03:15:43" color="">}}




{{<matomeQuote body="めっちゃ同意！俺もこのアイデアを数週間前に実装したんだ。<br>https://github.com/Orange-County-AI/MCP-DSL" userName="knowsuchagency" createdAt="2025/11/25 01:11:22" color="#785bff">}}




{{<matomeQuote body="もし君の”yum”が、俺がいるコミュニティの質を下げちゃうなら、まあね..." userName="DANmode" createdAt="2025/11/26 00:55:14" color="">}}




{{<matomeQuote body="複雑さはなくならない。ただ別の場所に移動するだけだよ。" userName="malnourish" createdAt="2025/11/25 12:53:13" color="">}}




{{<matomeQuote body="AIにプログラミング言語（関数やオブジェクト）を覚えさせるのは、今のMCPのグチャグチャな状態に代わる良い方法だと思うな。" userName="vendiddy" createdAt="2025/11/25 09:44:10" color="#38d3d3">}}




{{<matomeQuote body="AIアシスタントにはあるパターンがあるって気づき始めたよ。今あるツールで推奨されるやり方が非効率だから、もっと効率的な方法を自分で実装するじゃん？ そしたら2〜3ヶ月後には新しいツールが出てきて、俺の努力が全部無駄になるんだよね。これが最先端を生きる代償ってことかな。" userName="jawns" createdAt="2025/11/24 22:32:28" color="#ff5733">}}




{{<matomeQuote body="腹立つのは、 hypeだらけで今何が本当に使える方法なのか見えにくいこと。最先端を追うのはやめて、たまにChatGPTを使うくらいだったんだけど、古いコードベースにAIアシスタントを使うアイデアは良いと思って、最近また新しい方法を試したんだ。でもまだグチャグチャで、俺が間違ってるのか、それとも正しい方法がないのか分からない。数週間や数ヶ月で時代遅れになるツールに投資する前に、もう少し待つかな。" userName="lukan" createdAt="2025/11/25 07:44:39" color="#ff33a1">}}




{{<matomeQuote body="これが最先端のコストだよな…。会社のAI Slackチャンネルでは毎週、何をするのがベストか聞かれるけど、答えはいつも『今日時点ではA、B、Cだけど、来週／来月には変わるよ』って感じ。俺はこういうの好きだな。俺たちはこのテクノロジーの最前線にいて、数年後には子供たちに昔はどうだったかって話せるだろうしね。" userName="mlrtime" createdAt="2025/11/25 11:50:45" color="#ff33a1">}}




{{<matomeQuote body="この時代について語られる話は、どんな好景気と不況のサイクルと同じになると思うよ。熱狂的な進歩感があったせいで、ほんの一握りの人たちがとんでもなく金持ちになって、大多数の人や社会全体はたくさんの時間、お金、尊厳を失うことになるだろうね。" userName="1dom" createdAt="2025/11/25 13:13:40" color="#ff5733">}}




{{<matomeQuote body="世界の超賢い人たちが24時間体制でこれらに取り組んでる結果だよね。モデル自体が改良されて昔のやり方が不要になったり、性能を絞り出すための賢いハックが、もっと良い公式機能で時代遅れになったりするんだ。" userName="ACCount37" createdAt="2025/11/25 10:05:21" color="#38d3d3">}}




{{<matomeQuote body="これは賢い人たちがバブルの中で仕事してる結果だね。解決すべき問題も、目指す共通の解決策もなく、『AI』っていう漠然とした方向性と、誰よりも先にそこに着きたいってプレッシャーがあるだけ。みんな最前線で忙しいと思ってるけど、実際にはごく一部の人しかイノベーションしてない。俺たち他のみんなは、毎週『今のAIの問題』に対する新しい解決策を学び直して時間を無駄にしてるだけなんだ。毎日／毎週、『先月の最新解決策だった問題に対する、新たな最新解決策』を読むのはマジで疲れるよ。特にそれが大抵『prompt engineering』とか『software engineering』の言い換えなだけだとね。" userName="1dom" createdAt="2025/11/25 13:05:44" color="#45d325">}}




{{<matomeQuote body="『先月の最新解決策だった問題に対する、新たな最新解決策』を毎日／毎週読むのは疲れる』って言うけどさ、今思いつく限りでは、新しい解決策は問題の一部を解決して、その次の新しい解決策は残りの問題の一部を解決する、って感じ。例えば、固定の10個のツールでツールコーリングしてるなら、このブログ記事の内容は必要ない（トークン数最適化には使えるかもだけど）。これは他のプログラミング分野と同じだよ。＜form＞要素で十分なシンプルなフロントエンドなら、フロントエンドフレームワークのトレンドを追う必要ないじゃん？ 同じように、AIトレンドに毎日ついていく必要もないんだ。1年前のAIと簡単なprompt engineeringで十分なプロダクト問題は、まだたくさんあるんだから。" userName="hobofan" createdAt="2025/11/25 13:33:39" color="#45d325">}}




{{<matomeQuote body="『世界の超賢い人たちが24時間体制でこれらに取り組んでる結果』って言うけどさ。ハハ、心配いらないよ。彼らはすぐにchatbotの中に広告を入れる作業に戻るだろうからね。" userName="doctorpangloss" createdAt="2025/11/25 17:26:50" color="#45d325">}}




{{<matomeQuote body="Fire and Motionっていう記事だよ。読んでみて。https://www.joelonsoftware.com/2002/01/06/fire-and-motion/" userName="rglullis" createdAt="2025/11/25 11:43:32" color="#785bff">}}




{{<matomeQuote body="半人前で最先端を追ってるから、問題について考え始めたら2、3日後にはそれを解決する新しいツールが出てきちゃうんだよね。" userName="pjm331" createdAt="2025/11/25 13:32:25" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんでツールを全部contextに詰め込む必要があるんだろ？全部のツールを例えばMarkdownファイルに置いといて、subagentが問題を説明したら必要なツールだけを返すってのはダメなの？このツール検索ってそれなの？" userName="losvedir" createdAt="2025/11/24 22:37:04" color="#45d325">}}




{{<matomeQuote body="ClaudeってCLAUDE.mdに書いてあることほとんど無視するから期待できないんだよね。例えば、特定のテスト実行スクリプトを渡しても、いつも一般的な間違ったコマンドを使っちゃうから、正しいコマンドを思い出させないとダメなんだ。" userName="jimbo808" createdAt="2025/11/25 04:04:40" color="#ff33a1">}}




{{<matomeQuote body="Geminiでも同じ経験があって、指示を無視するんだよね。たぶんcontext rotだよ。LLMは大量のtoken数を謳ってるけど、たくさん詰め込むほど記憶の信頼性が落ちる。Transformerの内部動作を考えれば納得だね。" userName="snek_case" createdAt="2025/11/25 05:39:43" color="#ff33a1">}}




{{<matomeQuote body="俺が言ってるのはそれとは逆なんだ。CLAUDE.mdは常にcontextにロードされるからモデル全体に影響するけど、俺が提案するのはPOTENTIAL_TOOLS.mdだよ。これはcontextにロードされずに、Claudeはその存在を知ってるってファイルね。<br>そしてClaudeは計画中にsubagentを起動して、このファイルから関連するツールのサブセットを識別させて、それをメインagentに返すんだ。そうすればメインagentのcontextには関連ツールだけが入るってわけ。" userName="losvedir" createdAt="2025/11/25 14:43:30" color="#ff33a1">}}




{{<matomeQuote body="Claudeってmavenの-amフラグを忘れがちだし、interpreterが変な動きしないheredoc付きのbashを書けないし、jqで!=演算子を使えないんだよね。Claudeって早期認知症かも。" userName="cerved" createdAt="2025/11/25 06:40:12" color="">}}




{{<matomeQuote body="このご時世に認知症のAIが暴走するなんて、まさに求めてたものだね。" userName="vendiddy" createdAt="2025/11/25 09:41:02" color="">}}




{{<matomeQuote body="俺も同じ問題があったよ。CLAUDE.mdが忘れられて、そこに書いたベストプラクティスを忘れちゃうんだ。<br>今はhookを使って、いろんなことを実行させてる。例えばテストの強制とかね。Claude.mdよりもこっちの方がいいみたい。だって変更するたびにhookを実行しなきゃいけないからさ。" userName="nautilus12" createdAt="2025/11/25 12:09:26" color="#ff5733">}}




{{<matomeQuote body="Claudeがタスクを「完了」と手渡す前に、チェックリスト項目を満たすようにしたいんだけど、いつも無視されちゃうんだよね。CLAUDE.mdにヘルパースクリプトを書いてるのに、Claudeは半分くらい忘れてるんだ。<br>「タスクは完全に実装され、エラーもなく、テストもパスしてバグもない！」って言われて、「CLAUDE.mdのrun-devでサーバのビルド/ログ出力は確認した？」って返すと、すぐに正しいコマンドを思い出して問題を修正するんだ。これのせいでagentic coding sessionが歯を食いしばるような作業になっちゃう。<br>context pollutionを避けるためにsubagentを設計し始めたけど、hooksが欠けてるピースみたいだね。毎回確実に実行されることを保証するには必要だよ。" userName="ewoodrich" createdAt="2025/11/25 21:12:32" color="#38d3d3">}}




{{<matomeQuote body="CLAUDE.mdに全部指示書くより、カスタムSkills使ってみない？僕も使ってるけど、これすごく良いよ！ただ、トークン消費が増えるのが玉にキズかな。" userName="notpublic" createdAt="2025/11/25 10:06:31" color="#45d325">}}




{{<matomeQuote body="うん、Skillsって時々信頼できるけど、いつもじゃないのがネックだよね。LLMが指示通りに動いてくれないから、僕のアプリには使い物にならないんだ。" userName="taytus" createdAt="2025/11/25 11:53:20" color="">}}




{{<matomeQuote body="あとね、startup|resume|clear|compactで動くセッションフックを追加して、ClaudeにカスタムSkillsを思い出させるといいよ。これで、長いこと使ってもズレなくなるからね。" userName="notpublic" createdAt="2025/11/25 12:25:46" color="#785bff">}}




{{<matomeQuote body="Skillsのマッチングロジックって厳しいよね。フロントマターで’git’って書いてて、’gitlab’を使ったらSkillがトリガーされるか、ちょっと気になるな。" userName="stpedgwdgfhgdd" createdAt="2025/11/25 12:22:18" color="">}}




{{<matomeQuote body="なんか、重みと戦ってるみたいだね。LLMが期待してることに設定を合わせるには、どうすればいいんだろう？" userName="airspresso" createdAt="2025/11/25 21:53:17" color="">}}




{{<matomeQuote body="それがまさにClaude Skillsの役割だよ[0]！このツール検索とは別物に見えるけど、MCPとSkillsは統合に向かってると思うな。<br>[0] https://code.claude.com/docs/en/skills" userName="falcor84" createdAt="2025/11/25 01:36:27" color="#ff5c5c">}}




{{<matomeQuote body="Skillがうまく呼ばれなくて困ってる。「X doer」ってSkill作って、「＜file＞を開いてXをして」ってやっても、ほぼ機能しないんだ。「＜file＞を開いてX doer Skillを使ってXをして」って書き直す必要があって、前と手間が変わらないよ。" userName="esperent" createdAt="2025/11/25 04:40:03" color="#ff5c5c">}}




{{<matomeQuote body="startup|resume|clear|compactで動くセッションフックを追加して、ClaudeにカスタムSkillsを思い出させるといいよ。" userName="notpublic" createdAt="2025/11/25 12:26:44" color="#785bff">}}




{{<matomeQuote body="セッションスタートフックってあるの？最近追加されたのなら別だけど、知らないな。小さいプロジェクトばかりだからコンパクトも使わないし。新しいセッションの最初のプロンプトでもSkillsが動かないんだよ。" userName="esperent" createdAt="2025/11/25 14:08:11" color="">}}




{{<matomeQuote body="僕も同じ経験してる！確実にトリガーさせるには、「X skill」って明確に伝える必要があるみたいだね。Claudeに色々なルールがあるから、特定の言葉が必要なんだろうな。" userName="slhck" createdAt="2025/11/25 07:58:21" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
