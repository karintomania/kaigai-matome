+++
date = '2025-10-16T00:00:00'
months = '2025/10'
draft = false
title = 'Claude「スキル」登場！AIエージェントの可能性が大きく広がる！'
tags = ["AI", "LLM", "AIエージェント", "プロンプトエンジニアリング", "Claude"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> Claude「スキル」登場！AIエージェントの可能性が大きく広がる！

引用元：[https://news.ycombinator.com/item?id=45607117](https://news.ycombinator.com/item?id=45607117)




{{<matomeQuote body="Anthropicがエージェントのスキルについて発表した記事のリンクだよ。<br>https://www.anthropic.com/engineering/equipping-agents-for-t..." userName="meetpateltech" createdAt="2025/10/16 16:05:47" color="">}}




{{<matomeQuote body="Skillsについて記事を公開したよ、「Claude Skillsはすごいし、MCPよりもビッグディールかも」ってね。ぜひ読んでみて！<br>https://simonwillison.net/2025/Oct/16/claude-skills/" userName="simonw" createdAt="2025/10/16 21:26:37" color="#ff5733">}}




{{<matomeQuote body="Skillsって`AGENTS.md`と被ると思う？ VSCodeも最近ネストされた`AGENTS.md`をサポートしたけど、非公式ながらも重複するかもね。詳細はこちら！<br>https://code.visualstudio.com/updates/v1_105#_support-for-ne..." userName="hu3" createdAt="2025/10/16 22:49:01" color="">}}




{{<matomeQuote body="うん、LLMが必要な時にだけ他のファイルを読ませる`AGENTS.md`って、実質的にSkillsと全く同じパターンだよ。`AGENTS.md`を読めるツールなら、今日からでもSkillsを使い始められるんだ。「PDFファイルを作るなら、まず`skills/pdfs/SKILL.md`を読んで」って感じ。" userName="simonw" createdAt="2025/10/16 23:12:30" color="#38d3d3">}}




{{<matomeQuote body="Skillsはいいけど、俺にとっては厳密な仕様というより、デザインパターンとかプロンプトエンジニアリングのコツって感じかな。MCPでも実装できるし、俺は前からやってるよ。「何かする前に、skills MCPを検索して関連ガイドを読んで」って感じでさ。" userName="pants2" createdAt="2025/10/16 21:38:33" color="#45d325">}}




{{<matomeQuote body="そこが俺の疑問なんだよね。このパターンってMCPとどう似てるの？ MCPみたいに、サードパーティAPIで認証もできるの？" userName="codybontecou" createdAt="2025/10/17 17:00:00" color="">}}




{{<matomeQuote body="SkillからサードパーティAPIを呼び出したいなら、こんな指示を使えばいいよ。「GitHub APIにアクセスするには、`curl`を使って`api.GitHub.com`にリクエストを送って、`GITHUB_API_KEY`環境変数を`Authorization: Bearer`ヘッダーで渡すこと」ってね。" userName="simonw" createdAt="2025/10/17 18:16:21" color="#ff5c5c">}}




{{<matomeQuote body="俺は反対だな。これをコンテナやランタイム仕様、パッケージインデックスでまとめれば、エージェントが共有されたSkillsに基づいて動的に機能を拡張できるようになるじゃん。Pythonパッケージの`uv add foo`みたいに、必要な時にエージェントが実行できる`skill add foo`が生まれるんだよ。" userName="JimDabell" createdAt="2025/10/17 04:38:28" color="#ff5733">}}




{{<matomeQuote body="Simon、これって動かないでしょ？ コード実行環境ってインターネットにアクセスできるんだっけ？" userName="re5i5tor" createdAt="2025/10/18 03:26:37" color="">}}




{{<matomeQuote body="Claude Codeを自分で動かすならできるけど、https://claude.ai はネットワークアクセスがかなり制限されてるね。PyPIやNPMからパッケージ入れたり、github.comからリポジトリをクローンしたりはできるけど、api.github.comを含め他のドメインにはアクセスできないよ。" userName="simonw" createdAt="2025/10/18 05:23:55" color="#38d3d3">}}




{{<matomeQuote body="スキルを作るのとプロジェクトを作るのって、どう使い分けるの？" userName="kingkongjaffa" createdAt="2025/10/16 21:41:20" color="">}}




{{<matomeQuote body="してないよ。もし開示しなかったら、USAではひどく非倫理的だし、違法になるからね。詳しくはここ見て：https://news.ycombinator.com/item?id=45624613<br>今、有料で宣伝してるってよく言われるんだ。（もしAnthropicからお金もらって記事書いてたら、彼らのMCP仕様の欠陥を指摘する箇所は書かないように言われただろうしね！）" userName="simonw" createdAt="2025/10/18 19:55:56" color="#38d3d3">}}




{{<matomeQuote body="個人的には、この記事の発表について議論してるのに、Simonがトップレベルの投稿を2つも出して、この会話を自分の投稿についての議論にしようとしてるみたいで、ちょっと乗っ取ろうとしてるように感じるね。スパムだとは言わないけど、Simonはちょっと目立ちたがりすぎだよ。彼の投稿はいつもホームページに載ってるんだから、他のスレッドにまで投稿する必要ないんじゃない？" userName="timcobb" createdAt="2025/10/17 13:30:48" color="">}}




{{<matomeQuote body="結局、プロンプトにテキストを追加するためのフレームワークに興奮してるだけってこと？" userName="rafaelmn" createdAt="2025/10/17 16:09:47" color="">}}




{{<matomeQuote body="やっとMCPの良い代替品が出たね。MCPはひどいアイデアで、実行はさらに最悪だった。「mcpServersの設定にこの一行をコピペするだけ！」みたいな危険なやり方で複雑さを隠して、何万ものトークンを無駄にしてたからね。" userName="sunaookami" createdAt="2025/10/17 06:27:28" color="#38d3d3">}}




{{<matomeQuote body="まさにそれだよ。CCのスラッシュコマンドみたいなもので、ただの便利機能だね。" userName="stingraycharles" createdAt="2025/10/16 23:12:57" color="">}}




{{<matomeQuote body="それはちょっと還元しすぎだね。これらのツールとの付き合い方について、考え方が面白くシフトしてるんだよ。MCPレジストリみたいなSkillhubが出てくる可能性だって十分あるだろうし。" userName="nickstinemates" createdAt="2025/10/17 18:53:52" color="#ff5733">}}




{{<matomeQuote body="MCPはコンテキスト過負荷が問題だけど、プラグアンドプレイで発見しやすいのは良い点だね。<br>LLMがcli-toolを動かすより、URLを貼るだけでMCPサーバーに繋がる方がずっと簡単だし、参入障壁が低いよ。" userName="cefboud" createdAt="2025/10/17 16:38:02" color="">}}




{{<matomeQuote body="MCPは汎用プロトコルだけど、Claude Skillsは独自色が強いみたいだね。<br>Skillsがウェブベースのクライアントとか、他のサービスにも採用されるのかな？<br>もしかしたらMCP SDKを通して公開するのが筋なんじゃない？" userName="babyshake" createdAt="2025/10/17 16:25:13" color="#38d3d3">}}




{{<matomeQuote body="“Skill”って、開発者向けの指示の一部って感じだね。AGENTS.mdとかClaude.mdみたいなものに翻訳されるイメージ。<br>AIに機能を追加するには、ちゃんとした.mdファイル群とベースのAGENTS.mdがあれば十分だと思うよ。" userName="vinhnx" createdAt="2025/10/17 02:57:27" color="">}}




{{<matomeQuote body="そうそう！Skillsは新しいアルゴリズムじゃないけど、プロンプトを整理する新しいパラダイムだよね。<br>要するに、ユーザーの境界を越えて動的にコンテキストを組み立てる仕組み。<br>組織内のチーム間でのスキル共有も進めてるみたいだし、これはグローバルなユーザーがエージェントで色々なものを共有するのに広がる可能性があるよ。" userName="ajtejankar" createdAt="2025/10/17 23:30:52" color="#ff33a1">}}




{{<matomeQuote body="ClaudeやChatGPTのプロジェクトって、カスタムシステムプロンプトとファイル群なんだよね。<br>スキルはプロジェクト内で使うものって感じ。<br>例えば「data analyst」プロジェクトに、回帰分析とかMySQLからのデータエクスポートとかのスキルを複数持たせるイメージだよ。<br>スキルは実質的に無限のカスタム指示で、必要な時にLLMが読み込むから、コンテキストを圧迫してパフォーマンス問題を起こすこともないんだ。" userName="simonw" createdAt="2025/10/16 22:09:14" color="#ff5c5c">}}




{{<matomeQuote body="スキルはオンオフできるから、コンテキスト管理にすごく便利だよ。特に大きくてあまり使わないスキルとかね。<br>今って、プロジェクトの容量が5%以下だと全ファイルが自動でロードされちゃうんだけど、スキルを使えばその制限も避けられるんだ。<br>大きなプロジェクトだと、Claudeがファイルを検索するのが不安定なこともあるから、スキルで「これは常にロードしてね」って明示的に指示できるのもすごく役立つよ。" userName="handoflixue" createdAt="2025/10/17 01:06:34" color="#45d325">}}




{{<matomeQuote body="あなたの意見には賛成だけど、私の理解が合ってるか聞きたいな。<br>以前はLLMが複数のSmall Language Modelsを動かすパラダイムで、MCPはその標準化を目指してたんだよね。<br>でもこれって、LLMが大きなタスクを処理して、スキルを参照しながら（LLMじゃなく）プロンプトがカスタマイズされ、それがまたLLMに戻される、みたいなダイヤモンド型の情報フローに見えるんだけど、合ってる？" userName="manbash" createdAt="2025/10/16 22:16:35" color="#ff5c5c">}}




{{<matomeQuote body="その気持ちはわかるけど、だからこそSkillsは強力なんだと思うよ。<br>Docker/containersをカーネル機能のシェルスクリプトって呼ぶようなものだよ。<br>概念はシンプルでも、それが革新的じゃないとか、物事を変革できないってわけじゃないんだ。<br>来年にはMCPの話はしてないんじゃないかな。<br>MCPは結構ひどいspecだったけど、どこからか始める必要があったんだよね。" userName="pseudosavant" createdAt="2025/10/17 16:30:46" color="#ff5c5c">}}




{{<matomeQuote body="ねえ、https://news.ycombinator.com/item?id=45619537見てみた？" userName="timcobb" createdAt="2025/10/18 11:34:04" color="">}}




{{<matomeQuote body="試したらマジだったよ！AI-frontendの”documents-as-code”ツール作ってるから、Claudeの全サービスでスキルが使えるのはデカいんだよね。でも今日は無理っぽいな…。Claude DesktopとかClaude Code、それにGitHubの公式じゃないMCPが必要みたい。Anthropicが”コード実行ツールからの安全な外部アクセス／認証”問題を早く解決してくれるといいんだけど。" userName="re5i5tor" createdAt="2025/10/18 12:27:08" color="#45d325">}}




{{<matomeQuote body="これら機能追加、結構いいね。僕のプロジェクトでは`bin/claude`ディレクトリにスクリプトとかを置かせてるんだ。`claude.md`でそこを見るように指示してて、かなりうまくやってくれるよ。正直、一番欲しいのは”このMCPsセットでClaudeを起動、次にあのセットで…”みたいな文脈管理ヘルパーなんだよね。今は別々のサブディレクトリをプロジェクト（Claudeのプロファイルとしてサポートされてる）として扱って、そこからClaudeを起動してる感じ。`bin/claude`の利点は、長いスパンで学習してくれること。僕のClaudeは特定のBigQueryデータセットを分析する方法とか認証情報の場所とかを即座にわかるんだ。ファイルシステムをプロファイルマネージャーとして使うなんて思ってもみなかったけど、こうなっちゃったな。" userName="arjie" createdAt="2025/10/16 18:13:23" color="#785bff">}}




{{<matomeQuote body="”このMCPsセットでClaudeを起動、次にあのセットで…”みたいな文脈管理ヘルパーが一番必要ってやつ、それってサブエージェントのことじゃないの？" userName="tomComb" createdAt="2025/10/16 21:08:04" color="">}}




{{<matomeQuote body="あー、僕の場合は、ビデオ編集Claudeとかシステム管理者Claudeと直接話したいんだよね。メインのClaudeを介してインスタンス化されるのは避けたいな。特定のClaudeに僕自身が話しかけたいんだ。もしサブエージェントでこれが解決するなら、僕がうまく使えてないだけかもな。" userName="arjie" createdAt="2025/10/16 22:34:10" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いや、サブエージェントは非対話型だよ。" userName="adastra22" createdAt="2025/10/17 05:34:28" color="">}}




{{<matomeQuote body="デモ動画で犬の画像をひっくり返したりトリミングしたりする、みたいな変な例を使うのが本当に謎なんだよね。もっとスキルを魅力的に見せる例、いくらでもあったんじゃないかな？" userName="mousetree" createdAt="2025/10/16 17:05:01" color="">}}




{{<matomeQuote body="開発者ページにはもっと良い例があるよ。PDF処理スキルだね。https://github.com/anthropics/skills/tree/main/document-skil...<br>僕はClaude Codeで、リポジトリ内の一般的なタスクのガイドが入ったMarkdownファイルを手動で@タグ付けして、これと同じことをしてたんだ。このステップが自動になったのは嬉しいね。" userName="antiloper" createdAt="2025/10/16 18:00:44" color="#ff5c5c">}}




{{<matomeQuote body="そう思うでしょ？<br>https://en.wikipedia.org/wiki/The_purpose_of_a_system_is_wha..." userName="Mouvelie" createdAt="2025/10/16 17:47:57" color="">}}




{{<matomeQuote body="僕が見つけた一番良い例はこれだよ。https://github.com/anthropics/skills/blob/main/document-skil...<br>今朝、Claudeに.xlsxを作らせるのに2つ問題があったんだけど、上のドキュメントに解決策が載ってたんだ。" userName="mritchie712" createdAt="2025/10/16 20:40:19" color="#785bff">}}




{{<matomeQuote body="Claude-skillsはもうすごく勢いがあるみたいだね！火曜日に“Superpowers”って記事（https://blog.fsck.com/2025/10/09/superpowers/）に夢中になって、ずっとやってたツール作りをきっちりしたスキルにまとめてエージェントに任せられるようにしたんだ。これ（http://github.com/ryancnelson/deli-gator）についてフィードバックが欲しいな" userName="ryancnelson" createdAt="2025/10/16 17:00:46" color="#785bff">}}




{{<matomeQuote body="デリゲーションってすごくクールだよね。Linearの課題コンテキストが多すぎることがあるんだ。例えば、Linearの課題説明と最後のコメントだけ取得したいのに、Linear MCPは全コメントを取得しちゃうからコンテキストが汚れていっぱいになっちゃうんだよ。" userName="skinnymuch" createdAt="2025/10/16 19:14:14" color="">}}




{{<matomeQuote body="サブエージェント、MCP、スキルって、お互いどう連携するんだろう？結構重複してる気がするね。仕様をアップグレードしてClaudeに追加機能を持たせるのはいいけど、どれを使っても結局エージェントの機能は同じになっちゃう。今は、MCPだとJSONが必要だったのが、ファイルやフォルダ内のMarkdownでマルチモーダルな入力ができるようになったUXのアップグレードって感じだね。" userName="mercurialsolo" createdAt="2025/10/16 18:56:45" color="#ff5c5c">}}




{{<matomeQuote body="Claude SkillsってMCPプロンプト（https://modelcontextprotocol.io/specification/2025-06-18/ser...）と全く同じに見えるんだけど。なんでわざわざ違う概念を作ったのか理解できないな。チャットUIの“マーケティング的”には意味があるかもしれないけど、Claude Codeではどうなの？CLAUDE.mdがあるのにね。" userName="JyB" createdAt="2025/10/16 19:20:31" color="#ff5733">}}




{{<matomeQuote body="MCPプロンプトはユーザーがトリガーするのに対して、スキルはLLMがトリガーするユースケース中心の特定のタスク向け命令セットだと思うよ。<br>MCPプロンプトは“GitHub Issue #{issue_id}を解決して”って感じだけど、スキルはReact Component Development、REST API Endpoint Development、Code Reviewとか。<br>これはたぶん、CLAUDE.mdの命令がLLMがユーザーのプロンプトに基づいて動的に使う、見つけやすい命令に分解されるってことだろうね。そしてClaudeはツールに直接アクセスするんじゃなくて、常にスキル命令を通る必要があるから、コンテキストがよりタイトになるよ。クライアントは無限のMCPサーバーやツールを追加できるようになるね。ツール自体が全部コンテキストウィンドウに追加されなくなるからさ。<br>要はユーザープロンプトと直接的なツールアクセスを分離する方法で、考えてみればすごく理にかなってるよ。" userName="pattobrien" createdAt="2025/10/16 22:31:51" color="#ff33a1">}}




{{<matomeQuote body="これはMCPのオーバーヘッドが少ない代替品だと考えてるよ。たくさんのMCPを管理するより、ディレクトリ構造をうまく利用してOSの実行能力を活用するんだ。" userName="jjfoooo4" createdAt="2025/10/16 20:47:20" color="#ff5733">}}




{{<matomeQuote body="僕にとってMCPの概念はクライアント/サーバーの関係だったんだ。スキルに関してはすべてローカルになるだろうね。" userName="ebonnafoux" createdAt="2025/10/16 21:54:15" color="">}}




{{<matomeQuote body="うん、これってMCPプロンプトとどう違うの？" userName="datadrivenangel" createdAt="2025/10/16 19:33:23" color="">}}




{{<matomeQuote body="LLMのSkillsとPromptsは、どちらも長所短所があるね。Skillsの方が、コンテキスト管理が楽で再配布も簡単、Promptはライブコードの実行が絡むからオーバーヘッドが大きいし、特定の環境にインストールする手間があるよ。Promptは文字通りのプロンプト向けで、何千ものスキルフォルダを持てるのに対して、Promptは数個のmcpサーバーを読み込んだらコンテキストが壊れる可能性もあるからね。" userName="pizza" createdAt="2025/10/16 19:56:34" color="#ff33a1">}}




{{<matomeQuote body="MCPs、Skills、Sub-agentsって、この3つの概念はめちゃくちゃ上手く補完し合ってると思うわ。MCPsはAPIをラップしてLLMエージェントが使えるようにしてくれるし、Skillsは必要な時だけ追加の指示を効率的にエージェントに提供するのに役立つんだ。Sub-agentsは、親エージェントが子エージェントにミッションを割り当てることでトークンを節約する、別のコンテキスト管理パターンだよ。" userName="simonw" createdAt="2025/10/16 23:18:54" color="#38d3d3">}}




{{<matomeQuote body="先週の金曜日に、うっかりスキルの存在をリークしちゃったんだけど、公式に発表されて良かったわ！<br>https://simonwillison.net/2025/Oct/10/claude-skills/" userName="simonw" createdAt="2025/10/16 18:03:27" color="">}}




{{<matomeQuote body="「新鮮なClaudeインスタンスを立ち上げて（ちなみに、Claude iOS appでもCode Interpreterが使えるようになったのは面白いね、最初はダメだったのに）、『/mnt/skillsフォルダ内の全てをzipファイルにして』ってプロンプトしたんだ」<br>この手の”ハック”でデータが抜き取れるなんて、面白くて恐ろしい世界だよ！フルファイルシステムやバイナリへのアクセスはできないと良いんだけどね、まさかSSHとかもできちゃうの…？" userName="buildbot" createdAt="2025/10/16 18:14:23" color="#785bff">}}




{{<matomeQuote body="それ”ハック”じゃないだろ？bashで「zip -r mnt.zip /mnt」って入力する代わりに、Claude Codeで「/mntのzipファイルを作成して」って入力してるだけじゃん。同じユーザーとして同じことを実行してるだけだよ。" userName="antiloper" createdAt="2025/10/16 18:30:01" color="#ff33a1">}}




{{<matomeQuote body="SkillsはLLM環境のリモートで実行されるんだよ、Claudeが動いてるお前のシステム上でローカルに実行されるわけじゃないから、そこは注意しとけよ。" userName="tgtweak" createdAt="2025/10/16 20:30:37" color="">}}




{{<matomeQuote body="もしClaude CodeでSkillsを使うなら、それは自分のPCで直接実行されるよ。でも、Claude.aiとかClaude mobile appの中で使う場合は、Anthropicがホストしてるクラウド上のコンテナ内で実行されるんだ。" userName="simonw" createdAt="2025/10/16 23:20:47" color="#38d3d3">}}




{{<matomeQuote body="ちなみに、ここでも議論されてるよ！<br>Superpowers: How I’m using coding agents in October 2025 - https://news.ycombinator.com/item?id=45547344 - Oct 2025 (231 comments)" userName="dang" createdAt="2025/10/17 15:54:47" color="">}}




{{<matomeQuote body="この手のシステムって、適切なスキルを使う能力が、そのスキルの簡単な説明文に限定されちゃうのが危ないと思うんだよね。人間みたいに経験を積んでスキルを身につけるのと違って、Claudeは常にゼロから説明文を読んで判断してるだけだからさ。" userName="Imnimo" createdAt="2025/10/16 17:11:11" color="#38d3d3">}}




{{<matomeQuote body="人間がスキルを学ぶのと違って、LLMは模倣ベースだからAGIにはならないってRichard Suttonは言ってるよ[0]。AGIはReinforcement Learningに基づくと考えてて、LLMには目標や行動の結果がないのが知性の基盤なんだってさ。だから「スキル」は説明書みたいなもので、楽器やタスクの開発に応用できる「スキル構築」とは違うんだ。<br>[0] https://www.youtube.com/watch?v=21EYKqUsPfg" userName="mbesto" createdAt="2025/10/16 18:04:15" color="#785bff">}}




{{<matomeQuote body="それは間違った見方だよ。LLMはすでにReinforcement Learningで目標指向性を持つようにTrainingされてるんだ。Reinforcement LearningされてないLLMは模倣だけど、もうそういう段階は過ぎてるんだよね。" userName="mediaman" createdAt="2025/10/16 18:27:46" color="#ff33a1">}}




{{<matomeQuote body="僕の意見だけど、これはContext Windowの問題だよ。人間は広いContextを曖昧に覚えてるけど、LLMは完璧なRecall能力がある。ただ、全てのContextを使うのはコストが高いんだ。だから「スキル」ってのは、出力生成の優先順位を手動でつける「Context挿入」に過ぎないんだよね。" userName="zobzu" createdAt="2025/10/16 17:20:59" color="#785bff">}}




{{<matomeQuote body="ずっと不思議に思ってたことを教えてほしいんだけど、目標からの距離が測れない場合（つまり定性的なもの）って、Reinforcement Learningはどうやって機能するの？" userName="dingnuts" createdAt="2025/10/16 18:40:29" color="">}}




{{<matomeQuote body="僕はこの区別を「リアルタイムでのReinforcement Learning」か「事前にReinforcement Learning」かって解釈してるよ。" userName="anomaloustho" createdAt="2025/10/16 18:42:34" color="">}}




{{<matomeQuote body="LLMを含む多くのNeural NetworkでReinforcement Learningはかなり前からやられてるよね。この人はNeural Networkじゃない設計のReinforcement LearningがAGIに繋がるって言ってるの？なんでそれがLLMより可能性が高いの？「LLMには目標と行動の結果がない」って言うけど、その根拠は何？" userName="buildbot" createdAt="2025/10/16 18:07:43" color="#38d3d3">}}




{{<matomeQuote body="これがLLMにおける知識やツールを豊かにする肝だよ。LLMがいつそれらを使うべきかを知るっていう考えは、現状ではちょっとした夢物語なんだ。" userName="ChadMoran" createdAt="2025/10/16 18:25:15" color="#785bff">}}




{{<matomeQuote body="もう少し具体的に話せる？簡単なケースはもう解決してるように見えるけど。例えば、foo用のmcpが有効だったら、Claudeはfooのリスト関数を呼んでくれるでしょ？" userName="fragmede" createdAt="2025/10/16 19:16:03" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="前にdeli-gator（https://github.com/ryancnelson/deli-gator）についてコメントしたけど、まさにContextが重要ってことだよね。Claudeに毎日REST-APIコールを教えてたのが、「スキル」でより安価なモデルに任せられるようになって、Context Windowを本来の問題解決に使えるようになったんだ！" userName="ryancnelson" createdAt="2025/10/16 17:38:26" color="#785bff">}}




{{<matomeQuote body="Reinforcement Learningの一番難しい部分の一つだね。短い答えは人間からのフィードバックだよ。でもAIは人間より遥かに多くの学習イベントが必要だから直接の監督は無理なんだ。だから人間監督者をTrainingする戦略もあるんだよね。AIは語彙選択や色彩理論は得意だけど、連続性、結果、様々な入力の結合が苦手で、事実と捏造も区別できない。まるで「実世界」でのReinforcement Learningが足りない感じだね。" userName="kmacdough" createdAt="2025/10/16 19:25:45" color="#ff5733">}}




{{<matomeQuote body="LLMはランダムなトークン生成器にすぎない。プロンプト、指示、スキル、あるいは人間の目標や結果といったものと”韻を踏む”ように出力しようと努力してるだけだよ。技術を過大評価しすぎないようにしようぜ。" userName="isodev" createdAt="2025/10/17 03:21:02" color="#45d325">}}




{{<matomeQuote body="＞Claudeに毎日数か月間もREST API呼び出しをcurlで作らせてるって？ふざけんな。自分でcurlを覚えてAPI呼び出しを書くより安くも生産的でもないだろ。curlは難しくないし、覚えればHTTPの扱いにすごく詳しくなるんだぞ！お前は自分で自分の首を絞めてるし、本来自分でやるべき仕事をボットにやらせてトレーニングしてるだけだ。" userName="dingnuts" createdAt="2025/10/16 18:43:55" color="#ff5c5c">}}




{{<matomeQuote body="＞そしてfooのリストについて聞く。<br>OPじゃないけど、ここが問題なんだよな。ツールを意識せず、LLMが自分でどのツールを使うか判断してほしい。特別な言葉を覚えて特定のツールを使わせるのは面倒くさい（特に専門的なツールではよく必要になる）。だからといって全体が”役立たず”だとは思わないけど、もっと改善してほしいぜ。" userName="corytheboyd" createdAt="2025/10/16 19:57:18" color="">}}




{{<matomeQuote body="なんでその発言の引用元を求めてるんだ？それが知能の基礎かどうか、あるいはLLMが目標や結果を理解しているかどうかを疑ってるのか？" userName="jfarina" createdAt="2025/10/16 18:12:05" color="">}}




{{<matomeQuote body="この説明には同意するけど、AIエージェントが経験を積んでリアルタイムで進化するのは本当に望ましいのか疑問だな。展開前に徹底的にテストされた静的なモデルの方がずっと安全だと思うぜ。" userName="munchler" createdAt="2025/10/16 20:00:09" color="">}}




{{<matomeQuote body="それは情報不足な意見だよ。LLMベースモデルの性能向上は、RLHFやその他のRL技術によるものが大きいんだ。" userName="vonneumannstan" createdAt="2025/10/16 18:29:05" color="#45d325">}}




{{<matomeQuote body="Claude CodeやCodexが同じ失敗を繰り返すのを見ると、人間のような不確かさや恐怖を感じてほしいと思うよ。そうすれば、立ち止まって根本的な仮定を疑い、計画の欠陥に気づいて、新しい理解に基づいて再調整し、全く違う方法で取り組めるはずなのに。代わりにClaudeは、期待するディレクトリを見つけられず、ランダムなnpmコマンドを実行し、node_modulesが謎の破損をしたと結論づけて、node関連を全て消去して曖昧な記憶でプロジェクト設定を手動で再構築しようとするんだ。だって、間違ってても人間の問題だし、Anthropicはどっちにしろ金が入るんだから、試さない理由はないだろ？" userName="ewoodrich" createdAt="2025/10/16 23:43:32" color="#ff33a1">}}




{{<matomeQuote body="＞展開前に徹底的にテストされた静的なモデルの方がずっと安全。<br>それはそうかもしれないけど、根本的には人間や超知能を再現することはないってことだな。" userName="mbesto" createdAt="2025/10/16 20:20:24" color="">}}




{{<matomeQuote body="＞でも代わりに俺はClaudeが、期待するディレクトリを見つけられず、ランダムなnpmコマンドを実行して、node_modulesが謎の破損をしたと結論づけて、node関連を全て消去して曖昧な記憶でプロジェクト設定を手動で再構築しようとするのを見てる。<br>公平に見て、俺自身を含め、現実のソフトウェア開発者も「こう動くはず」という初期モデル以外の場所に問題があると決めてかかることがよくあるんだよな。今はもっと懐疑的になれたらいいなと思うけど。" userName="jon-wood" createdAt="2025/10/17 14:58:28" color="#45d325">}}




{{<matomeQuote body="これ、マジでランダムなテキスト生成するスロットマシンじゃん。周りのサービスがそのランダムさに形とツールを与えてるだけだよ。" userName="isodev" createdAt="2025/10/17 08:27:03" color="">}}




{{<matomeQuote body="＞これって情報不足な見方だ、って言われてるけど、そうじゃないと思うな。多くのLLMは自己教師あり事前学習の後にRLベースのファインチューニングをしてるけど、結局ファインチューニングなんだよ。" userName="mbesto" createdAt="2025/10/16 20:26:49" color="#ff5c5c">}}




{{<matomeQuote body="俺のプロジェクトでは特別なスクリプトを走らせてビルドする必要があるんだけど、gpt-5-highのCodexは、複数の.MDファイルに指示があっても`make`を盲目的に実行して失敗し、よく混乱するんだよな。<br>でも、コンパイルって頼めば`make`は呼ぶし、ImageMagickとかFFmpegみたいな有名ツールは名前を言わなくても使える。結局、LLMは学習データが全てってことかな。だから、自分のツールについて人気のブログ記事を書けば、次のLLMの学習データに入って自動で使えるようになるかもね。" userName="fragmede" createdAt="2025/10/17 03:09:02" color="#45d325">}}




{{<matomeQuote body="そう、それが知性の基礎なのかを疑問視してるんだ。誰が言ってるの？" userName="buildbot" createdAt="2025/10/16 18:19:04" color="">}}




{{<matomeQuote body="これは「オンライン強化学習」って呼ばれてるやつで、例えばCursorはタブ予測モデルで既にやってるよ。https://cursor.com/blog/tab-rl" userName="stevenpetryk" createdAt="2025/10/17 02:11:57" color="#785bff">}}




{{<matomeQuote body="彼らがリンクを追加したみたいだね。でも、これはLLMの事前学習とは違ってリアルタイムでRLをしてるんだと思う。俺は、人間みたいに最先端の研究や新しいアイデアを探求できるAGIに、この部分が関連してると思ってるよ。LLMでそれが起こる時は、いつも議論になるけどね（既存の論文を使ってるだけとか）。違う例だと、人間みたいに全く異なるメカニクスを持つビデオゲームをリアルタイムのRLで上手くなるAGIとか。今は、似たようなもので事前学習してないと無理だよね。" userName="anomaloustho" createdAt="2025/10/16 18:25:46" color="#ff5733">}}




{{<matomeQuote body="＞LLMは既に目標指向性を持たせるためにRLで学習されてる。それはそうかもだけど、俺たちが話してるのは概念の根本的な部分だ。彼の主張は、今の概念（模倣）の進化だけじゃ、ファインチューニングや適応を経てもAGI/超知能には到達しないってこと。多分、全然違うもの（そしてRL技術に基づいたもの）になるだろうね。少なくとも、そうなるという歴史的な前例はないし（だから「苦い教訓」っていう彼の主張がある）。" userName="mbesto" createdAt="2025/10/16 20:29:58" color="#ff5c5c">}}




{{<matomeQuote body="「継続学習」の不足を補う方法はあるけど、その根本的な欠けてる部分を認識することが重要だよね。" userName="dwaltrip" createdAt="2025/10/16 17:35:24" color="">}}




{{<matomeQuote body="じゃあ、これってリアルタイムで適応する模倣ってこと？" userName="baxtr" createdAt="2025/10/16 18:55:59" color="">}}




{{<matomeQuote body="Richard Suttonだよ。彼はチューリング賞を受賞してるんだ。俺が貼ったYouTubeリンクを見ればわかるのに、なんで上で質問するの？" userName="mbesto" createdAt="2025/10/16 20:22:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
