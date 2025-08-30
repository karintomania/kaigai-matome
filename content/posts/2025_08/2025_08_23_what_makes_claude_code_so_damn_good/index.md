+++
date = '2025-08-23T00:00:00'
months = '2025/08'
draft = false
title = 'なぜClaude Codeはこれほどまでに優れているのか？その理由に迫る'
tags = ["AI", "プログラミング", "開発ツール", "コード生成", "LLM"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> なぜClaude Codeはこれほどまでに優れているのか？その理由に迫る

引用元：[https://news.ycombinator.com/item?id=44998295](https://news.ycombinator.com/item?id=44998295)




{{<matomeQuote body="ちょっと意味が分かんないんだけどさ。タイトルは”Claude Codeはなんでこんなに優れてるの？”って言ってるのに、他のツールより優れてるとか、単にすごいって話じゃなくて、Claude Codeのドキュメントを違う言葉で繰り返してるだけじゃん？何か見落としてる？それともこれ、Anthropicの宣伝？" userName="brokegrammer" createdAt="2025/08/24 05:36:52" color="">}}




{{<matomeQuote body="この記事はさ、Claude Codeが最高だって主観的に思ってる読者向けに書かれてるんだと思うよ。" userName="whazor" createdAt="2025/08/24 06:47:58" color="">}}




{{<matomeQuote body="（ブログ記事の著者だけど）<br>ハハ、全くもってその通り！俺もさ、Claude Codeと他のツールを比較したり、アーキテクチャをダンプしたりする記事は山ほど読んだんだ。この記事は主にClaude Codeを使い込んでて、それがマジで最高だと知ってて、そういう体験を自分のアプリでどう提供できるか考えてる人向けに書いたんだよ。" userName="nuwandavek" createdAt="2025/08/24 05:47:54" color="#785bff">}}




{{<matomeQuote body="俺はClaude Code、Cursor、それにVS CodeのCopilotも使ったことあるけど、Claude Codeが他のより優れてるとは”知ら”ないな。ターミナルで動くから少し速いのはあるけど、エディタ内で動くツールよりは操作性が悪い。コンテキストの工夫だってCopilotの指示でもできるし、Claude Codeがどう優れてるのか、正直全く理解できないんだ。" userName="brokegrammer" createdAt="2025/08/24 06:08:24" color="#785bff">}}




{{<matomeQuote body="Claude Codeにハマりすぎて、しばらくCursorやVS CodeのCopilotは使ってないんだ。それらのツールも、思考プロセスや計画を見れて、間違った方向に進んでる時にESCキーで修正できるのかな？<br>俺、Claude Codeでその機能が一番気に入ってるんだよ。例えば、「実装が未完了だから、テストをモック使うように更新しなきゃ」って言われたら、中断して「いや、実装が終わるまではテストが失敗してもいいからモックは使わないで」って言えるしね。ひょっとしたら移行後に発見しただけかもしれないけど、CursorやCopilotでそういうインタラクションパターンがあった記憶がないんだ。いつも後からリバートするしかなかったんだよ（単に俺が見落としてただけかもだけど）。" userName="brookst" createdAt="2025/08/24 13:50:02" color="#38d3d3">}}




{{<matomeQuote body="Cursorもさ、小さい灰色の文字で”思考”を表示してくれるよ。そのあと、”30秒考えた”って小さな灰色のメモの裏に隠れるんだけどね。もし、間違った方向に進んでたら、ストップボタンを押してエージェントを修正するか、スクロールして前のやり取りからやり直せるよ（Claude CodeのダブルESCと同じ感じ）。" userName="wrs" createdAt="2025/08/24 16:16:55" color="#ff33a1">}}




{{<matomeQuote body="VS Codeでも、もう1ヶ月くらい前からできるようになったよ。" userName="WithinReason" createdAt="2025/08/24 16:15:12" color="#ff5733">}}




{{<matomeQuote body="コード生成に関しては、今のところOpusに勝るものはないね。Gemini 2.5 proやGemini Code Assistでは解けなかったバグを、Opusは動くコードを生成して直してくれることが多いよ。Gemini Code Assistは2.5 proよりは良いけど、プロンプトごとの制限が多いし、出力が途中で切れちゃうこともよくあるんだ。" userName="techwiz137" createdAt="2025/08/24 06:59:16" color="#785bff">}}




{{<matomeQuote body="AnthropicのモデルはSQLだと信用できないって分かったよ（例えば、ANDとORの演算子優先順位を間違えたり、単純にカッコを何度も付け忘れたりするんだ）。Gemini 2.5 proにはそういう問題はないし、Claudeの間違いも正確に指摘してくれたね。" userName="baq" createdAt="2025/08/24 07:32:41" color="#ff5733">}}




{{<matomeQuote body="Codex-CLIとgpt-5は結構良いぞ。Codex-CLIの足場はCCに劣るけど、gpt-5のコードはかなりしっかりしてると思う。（/modelで思考レベルを調整できるしね。）" userName="d4rkp4ttern" createdAt="2025/08/24 11:22:27" color="#ff5c5c">}}




{{<matomeQuote body="この記事はモデルの比較じゃなくて、Claude Codeみたいなツールでモデルがどう使われてるかの話だよね。単なるAPIのラッパーじゃないんだよ。" userName="rendx" createdAt="2025/08/24 07:45:24" color="#45d325">}}




{{<matomeQuote body="個人的には、Gemini 2.5 Proに思考トークンを有効にすると、”難しい問題”に関してはOpusより断然すごいと思うな。" userName="faangguyindia" createdAt="2025/08/24 09:10:21" color="">}}




{{<matomeQuote body="仮にそれが正しいとしても、CursorとかでOpusを使えばいいだけじゃない？" userName="jonasft" createdAt="2025/08/24 07:41:49" color="">}}




{{<matomeQuote body="タイトルには他のツールと比較するって書いてないよね？ただ”すごく良い”ってだけじゃん。" userName="slimebot80" createdAt="2025/08/24 11:46:10" color="">}}




{{<matomeQuote body="”すごく良い”って表現は、比較できるツールの平均をベンチマークにしてるって意味だよね。前提がないなら1996年のYugoだって”すごく良い”って言える。だって、馬よりはマシだったし。" userName="dotancohen" createdAt="2025/08/24 12:03:21" color="#45d325">}}




{{<matomeQuote body="確かにね。でもYugoは馬45頭分のパワーがあって、街の通りに糞を残さなかったからね。))" userName="dotancohen" createdAt="2025/08/24 13:52:58" color="">}}




{{<matomeQuote body="タイトルにはないけど、記事の冒頭で「Claude CodeはCursorやGitHub Copilotのエージェントと比べて煩わしくないって客観的に感じるんだ。同じ基盤モデルを使ってもね！何でそんなに良いんだろう？」って書いてあるよ。" userName="patates" createdAt="2025/08/24 14:12:45" color="#ff5c5c">}}




{{<matomeQuote body="Claude CodeとCursorの違いは、片方がコマンドラインツール、もう片方がIDEってことだよ。両方でClaudeモデルを使えるし、記事のテクニックはCursorでも適用できる。CokeとPepsiみたいなもんだね。" userName="dtagames" createdAt="2025/08/24 12:21:23" color="#38d3d3">}}




{{<matomeQuote body="全然違うよ。エージェントツールは完全に自律的になれるけど、CursorみたいなIDEは「ただの」エディターだよ。真逆だね。Cursorも負荷の高い作業はするけど、コードを書くのはユーザーだよ。完全なエージェントツールやモデルを実装し始めてるけど、Claude Codeほどはまだ機能しないね。" userName="kissgyorgy" createdAt="2025/08/24 14:15:02" color="#45d325">}}




{{<matomeQuote body="Cursor Agent CLIもあるよ。CCと全く同じTUIだね。GUIのAIアシスタントが好きじゃないし、CCの過負荷やバグにもうんざりしてたから乗り換えたんだ。今はGPT5とCursor Agent CLIを使ってて、CCの代替があって嬉しいよ。" userName="tomashubelbauer" createdAt="2025/08/24 14:45:08" color="#ff5c5c">}}




{{<matomeQuote body="Cursor AgentとGPT5の調子はどう？俺はClaude Codeをしばらく使ってるんだけど、最近タイムアウトや速度低下が増えてきてるんだ。" userName="rapind" createdAt="2025/08/29 02:37:07" color="#45d325">}}




{{<matomeQuote body="個人的なプロジェクトでは、CAがCCとAnthropicモデルの必要性を完全に置き換えてくれたよ。仕事ではネイティブWindowsサポートを待ってる。WSL経由のAIアシスタントは好きじゃないんだ。CAもCCもNodeアプリだし、CCがもうネイティブWindows対応したから、CAもすぐにだろうね。今日からハックして動かす方法も試してるよ: github.com/TomasHubelbauer/cursor-agent-windows" userName="tomashubelbauer" createdAt="2025/08/29 06:12:57" color="#45d325">}}




{{<matomeQuote body="いい情報だね。今度のグリーンフィールドプロジェクトで試してみるよ。ありがとう。" userName="rapind" createdAt="2025/08/29 07:15:56" color="">}}




{{<matomeQuote body="Claude Codeって純粋なClaudeモデルじゃないよ。各社が独自プロンプトを加えてるから、全然体験が違うんだ。Kiroみたいな他のClaudeモデルと比べてみたら分かるよ。" userName="willsmith72" createdAt="2025/08/24 14:31:04" color="">}}




{{<matomeQuote body="残念だけど、Claude Codeはオープンソースじゃないんだ。でも、どう動いてるか知るにはツールがあるよ。Claude Trace: https://github.com/badlogic/lemmy/tree/main/apps/claude-trac...を強く勧めるよ。セッションで使われた全てのツールとプロンプトをJSONや見やすいHTMLファイルで吐き出してくれるからね。" userName="the_mitsuhiko" createdAt="2025/08/23 20:21:34" color="#ff33a1">}}




{{<matomeQuote body="もしOSSの代替を探してるなら、OpenHands CLIをチェックしてみてね: https://github.com/All-Hands-AI/OpenHands?tab=readme-ov-file" userName="rbren" createdAt="2025/08/24 03:17:19" color="">}}




{{<matomeQuote body="https://github.com/anthropics/claude-codeを見ればシステムプロンプトも分かるよ。ベースモデルがタスクを細かいステップに分解して、忍耐強く、失敗にも強いように訓練されてるのがポイントなんだ。" userName="CuriouslyC" createdAt="2025/08/23 21:08:17" color="#ff5c5c">}}




{{<matomeQuote body="そのリポジトリにはコードは含まれてないよ。課題トラッカーと一部の例示フックだけなんだ。" userName="the_mitsuhiko" createdAt="2025/08/23 21:12:23" color="">}}




{{<matomeQuote body="それ、投稿されてからDMCAテイクダウンされたんだね。フォークはどこにあるか知らない？" userName="throwaway314155" createdAt="2025/08/23 22:26:47" color="">}}




{{<matomeQuote body="DMCAされたのは知ってるよ、だからあの:trollface:なんだ。フォークはもう見つからないだろうし、仮に見つかっても古いバージョンだろうね。最新のClaude Codeは、minified JavaScriptとかをリバースエンジニアリングする方が多分マシだよ。" userName="koakuma-chan" createdAt="2025/08/23 22:53:22" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="dnakov/claude-code mirrorって検索すれば、ソースコードへのパスがあるよ。2分で見つかったもん。" userName="mlrtime" createdAt="2025/08/24 03:34:02" color="#785bff">}}




{{<matomeQuote body="JavaScriptアプリで、ローカルシステムにインストールされるよ。" userName="CuriouslyC" createdAt="2025/08/23 21:15:18" color="">}}




{{<matomeQuote body="Claudeの内部構造を2ヶ月もいじってるから、仕組みは知ってるよ。トランスパイルされてて、ミニファイされてて、マジでごちゃごちゃで解読するのめちゃ大変。だからclaude-traceとかclaude-bridge [1] があって本当に助かってる。自分でデコンパイルするより、ずっとClaudeの内部をいじりやすいんだ。[1]: https://github.com/badlogic/lemmy/tree/main/apps/claude-brid..." userName="the_mitsuhiko" createdAt="2025/08/23 21:32:56" color="#45d325">}}




{{<matomeQuote body="で、このすごいコーディングAIエージェントたちは、これまでにどんな素晴らしい新製品やスタートアップを生み出したの？（AI供給側じゃなくてね）。どこかで確認できる？" userName="0xpgm" createdAt="2025/08/24 08:38:09" color="">}}




{{<matomeQuote body="それ、調べない方がいいよ…。Redditで誰かがSaaSを20日で開発・ローンチ・販売できるって言ってたけど、いくつか見てみたら、Claude Codeなら数時間でできちゃう。僕もAIなしでできるよ、全部揃ったフレームワークがあるから。でもClaudeは数時間でゼロからできるんだ。僕ならテストと修正入れても1日。それは製品やスタートアップじゃなくて、詐欺まがいだよ。でも、とにかく完成させたのはすごいけどね。ローンチして実際にお金稼ぐ人ってそんなにいないから。" userName="anonzzzies" createdAt="2025/08/24 09:10:54" color="#785bff">}}




{{<matomeQuote body="ローンチや販売はAIには絶対にできないよね。僕も自分のフレームワークを使えば数時間でSaaSを書けるし、AIが書いたものよりずっと安全だって自信がある。ローンチの仕方も知ってるよ（“販売”は苦手だけど）。もし全部できる人がいたら、RedditやYouTubeで自分を売り込んだりはしないはず。簡単に金持ちになる方法を教えてくれる人を見たら、その人は失敗したか、そうでなければこんなことに時間を使わないって考えるべき。だから、彼らのアドバイスは聞かない方が賢明だよ。" userName="noduerme" createdAt="2025/08/24 10:08:24" color="#ff5733">}}




{{<matomeQuote body="AIはローンチや販売はできないって話だけど、彼は技術的な側面を言ってたんだよ。“販売”は対面なら得意だけど、新しいインフルエンサー販売とかはまだ理解できないし、できないな（50代だけど、まだ学べるよ）。全部できるならRedditやYouTubeで自分を売り込んだりしないって言うけど、彼の場合は実際に製品のURLを公開してるから、そこは違うね。" userName="anonzzzies" createdAt="2025/08/24 10:18:22" color="">}}




{{<matomeQuote body="過去1年間のスタートアップは文字通り全部、これらのAIに助けられてるよ。もちろん、まだ1年目のスタートアップだから、君が聞いたことないのも当然だよね。" userName="willsmith72" createdAt="2025/08/24 14:32:07" color="">}}




{{<matomeQuote body="シェアしてくれてありがとう。マルチエージェントシステムへの需要が高まる中で、LLMファーストの組織がどう取り組んでいるかを見るのは参考になるね。ここで挙げられてる設計の多くは僕も日々試してることだから、他の人も使ってるって知れて嬉しいよ。<br>(1)長いプロンプトは良いね。ツールが何か、どうユーザーを助けるか、みたいな基本をプロンプトで説明するのを忘れずに。<br>(2)ツール呼び出しは超基本だから、もっとコンテキスト（いつ使うか、使わないか、など）が必要だよ。<br>(3)システムメモリの状態でメッセージを使うのはOK。データフレームの永続化とか、ステップ間の変数解析とか、もっと凝った方法も考えたけど、コンテキストウィンドウが大きくなればメッセージで大丈夫そう。" userName="ahmedhawas123" createdAt="2025/08/23 21:12:59" color="#ff5c5c">}}




{{<matomeQuote body="長いプロンプトが良いのは、モデルがそれに最適化されている場合だけだよって言いたい。Claude Codeの基盤モデルを入れ替えようとしたんだけど、多くのローカルモデルは、長文コンテキストやツール利用に対応してると言われてても、指示が長すぎるとうまく機能しないんだ。これはツール利用で問題になってる。小さなChatBotみたいなデモではうまくいくのに、Claudeのコードレベルのプロンプト長が長くなると、ツールを忘れたり、使わなかったり、間違った形式で返したりして失敗するんだよね。OpenAIのモデルやGoogleのGeminiは、一応動くけど、Anthropic自身のモデルほどじゃないし、ずっと遅く感じるよ。" userName="chazeon" createdAt="2025/08/24 03:34:35" color="#785bff">}}




{{<matomeQuote body="ブログ記事の著者だよ。基本的なことで多くのパフォーマンスが出せるし、99%のユースケースでは複雑な設定はいらないんだ。ループはシンプルに、ツールは明確にしよう（機能が重複しててもOK）。明瞭さとシンプルさが何よりも大切だよ。" userName="nuwandavek" createdAt="2025/08/23 22:54:07" color="#38d3d3">}}




{{<matomeQuote body="Vercel’s AI SDKみたいなフレームワークって役立つのかな？それとも、ループとツール呼び出しが簡単すぎて、フレームワークは逆に複雑にしちゃう？WYSIWYG markdownアプリでClaude Codeみたいなエージェントを作りたいから、この記事を見つけたんだよ。" userName="samuelstros" createdAt="2025/08/24 00:16:52" color="">}}




{{<matomeQuote body="関数／ツール呼び出しって、実はすごくシンプルなんだ。最初はOpenAIとかGeminiみたいな単一のLLMプロバイダーで、フレームワークなしで試すのがおすすめ。必要なら、LangChainみたいなシンプルなフレームワークに移行すればいい。LangGraphとかはすぐ複雑になっちゃうから気をつけてね。" userName="ahmedhawas123" createdAt="2025/08/24 02:20:25" color="#785bff">}}




{{<matomeQuote body="OpenAI REST APIのリファレンスを見てみて。ほとんどのエンジンがこれを実装してるから、ツール呼び出しの仕組みがわかるはずだよ。あとは、LLMからのレスポンスを理解して、それをメッセージ履歴に入れて、LLMがツールを要求したときに呼び出す方法を覚えればOKさ。" userName="brabel" createdAt="2025/08/24 08:16:38" color="#38d3d3">}}




{{<matomeQuote body="AI SDKを使う理由は他にもあるだろうけど、まずはシンプルなループとClaude Codeの関連ツールを移植するところから始めるのを強く勧めるよ。エージェントができたら、ぜひリンクを教えてね！見てみたいからさ！" userName="nuwandavek" createdAt="2025/08/24 05:57:06" color="">}}




{{<matomeQuote body="今、Claude Codeを使うのが大変な時期なんだ。Security OnionでElasticのデバッグを試してるんだけど、数分で難読化されたJSと`Error: kill EPERM`っていうエラーを吐き出すんだよね。<br>たぶん、実行するスクリプトのせいでNode.jsプロセスがkillされて、Claude自身も巻き添えになってるんだろうな。問題を解決できなくて、自殺しちゃったのかも（笑）。<br>とにかく、生きてて助けてほしいよ。" userName="sdsd" createdAt="2025/08/23 20:10:05" color="">}}




{{<matomeQuote body="ClaudeとLocalstackの一部は相性が良くないみたい。でもRustは結構得意で驚いたよ。<br>LLMが「一番よく知ってる」言語やプラットフォームが主流になって、技術が均質化されていくんじゃないかな。だって、Node.jsで10倍うまくいくなら、ElixirやGoを新規プロジェクトで選ぶ意味ないでしょ？特にテック企業じゃない場合、ジュニア開発者をミッドレベルやシニアみたいに使えるんだからね。" userName="schmookeeg" createdAt="2025/08/23 23:40:16" color="#38d3d3">}}




{{<matomeQuote body="最近変なこと考えてるんだ。LLMが苦手な言語や技術スタックだからって、「AIに仕事は奪われない」って言う人いるけど、それって他のスタックが有利ってことなのかな？Claude Codeを使うシニアエンジニアがPythonやTypeScriptで爆速で解決できるなら、俺たちって本当に安全？<br>LLMの生成コードは手書きコードと全然違うのが嫌だけど、コーディングエージェントで5倍速く動ける世界で、手書きコードってどれだけ意味があるんだろう？あの「ダサい」LLM生成コードが、実はエージェントにとって分かりやすいのかもって思うと、ちょっと不安になるね。" userName="actsasbuffoon" createdAt="2025/08/24 02:12:44" color="#38d3d3">}}




{{<matomeQuote body="特定の技術スタックの欠点はそのまま残るよ。GC問題回避とか、堅牢な型安全が必要な業界では、LLMに「ウケの良い」ツールに安易に乗り換えると、金銭的な負担が増えるか、顧客が許容できない失敗が増えるだろうね。<br>そのせいで「難しい」仕事と「簡単な」仕事のギャップが広がりそう。FAANG企業で難しい仕事すると見せかけて簡単なCRUD作業させられるような状況も、将来は変わるかも。COBOLエンジニア探すみたいに、元FAANGの人材も採用が難しくなるかもね。" userName="majormajor" createdAt="2025/08/24 03:40:14" color="#ff5c5c">}}




{{<matomeQuote body="LLMが生成したコードの細かい部分を気にしないってのが、なかなか難しいんだよね。正しくても、自分の「好み」に合わせてほとんど手直ししちゃう。でも、エージェント駆動型プログラミングにおいて、これって長期的に見れば時間の最適な使い方じゃないって感じるんだ。いつかモデルが俺の書き方を完璧に理解してくれるくらい賢くなることを願ってるよ。" userName="dgunay" createdAt="2025/08/24 02:19:36" color="#785bff">}}




{{<matomeQuote body="AIが作ったコードベースがデカくなると、メンテしにくくなるのが問題になると思うんだ。でも、このやり方ならコードのメンテが長期的には楽になるはずだよ。" userName="bilekas" createdAt="2025/08/24 03:17:00" color="#785bff">}}




{{<matomeQuote body="解決策はね、こういうのはプロンプトとかツール、リンターみたいなゲートウェイにルール化して任せることだよ。もう手放すしかないんだから…。" userName="monkpit" createdAt="2025/08/24 03:24:02" color="">}}




{{<matomeQuote body="「手放せ」ってどういうこと？俺はAIツールも使うけど、一生AIに全部任せる気はないね。別に怖いわけじゃなくて、趣味としてもゼロからものを作ったり問題を解決するのが好きなんだ。なんでそれを手放さなきゃいけないんだよ？" userName="bilekas" createdAt="2025/08/24 04:30:28" color="#785bff">}}




{{<matomeQuote body="まあさ、趣味じゃないなら、手作業で出力に手を入れるんじゃなくて、リンターとかフォーマッターに自分の好みを覚えさせるしかないってことだよ。「リンターとフォーマッターが引っかからなきゃ気にしない」って思えるとマジで楽。PRの細かいフィードバックを元に、いつもリンターの設定を更新してるから、コードベースはどんどんレビューしやすくなるよ。機械に得意なことをやらせるって、開発の基本だろ？" userName="jaggederest" createdAt="2025/08/24 07:42:25" color="#45d325">}}




{{<matomeQuote body="俺もそうしてるんだけど、ある程度はうまくいくよ。でもね、確定的なリンターにできないようなことについては、プロンプトだけじゃ100%は信頼できないんだ。LLMの学習データとちょっとでも違うことをさせようとすると、すぐに忘れちゃう可能性が高いんだよね。" userName="dgunay" createdAt="2025/08/27 09:01:12" color="#ff5733">}}




{{<matomeQuote body="パフォーマンスやセキュリティを考えると、特定の言語や技術スタックが必要なこともあるよね。今のLLMはまだハルシネーションを起こすし、汎用性も足りない。大量に生成されたコードは、時にメリットじゃなくて技術的負債になるんだ。LLMはオープンで速いプロトタイプ的なWebアプリにはいいけど、安定してて、一貫性があって、メンテもできて安全なフレームワークとか、科学計算には純粋なLLMだけじゃダメだよ。細部を確認せずに雰囲気だけで全部やるわけにはいかないんだ。" userName="hoyo1s" createdAt="2025/08/24 03:47:13" color="#ff33a1">}}




{{<matomeQuote body="LLMは学習データにたくさん例があるからPythonとかTypeScriptは得意だよね。でもさ、LLMが生成するのに最適な新しいプログラミング言語を作ったらどうなる？アセンブリ言語に近くなるのかな？もし未来が「雰囲気コード」で、出力されたコードはほとんど見ないで、入力と出力が正しく一致するかだけテストするようになったら、そんな言語ってどんな形になるんだろうね？" userName="fragmede" createdAt="2025/08/24 02:21:18" color="#785bff">}}




{{<matomeQuote body="多分もっとひどくなるだろうね。LLMにはプログラミングロジックに対する本質的な感覚なんてないんだ。ただ大量の学習データからパターンマッチングしてるだけだからさ。もし、いろんなコーディングタスクに十分な学習例がなくて、既存の言語と構文が全然違う新しい言語を作っても、LLMは十分な学習データがないから、全然うまくできないだろうね。" userName="alankarmisra" createdAt="2025/08/24 02:57:01" color="#ff5c5c">}}




{{<matomeQuote body="LLMにとって、Python以外の特定の言語が「最適」になるってどういうことだと思う？なんかLLMに本質的に優しい言語パターンってあるのかな？それとも、「膨大な学習例」と「堅牢な標準ライブラリ」（後者はトークンやアテンションを節約するためで、超冗長なアセンブリを一日中吐き出すよりはマシ）が「最適性」の全てってこと？" userName="majormajor" createdAt="2025/08/24 03:42:13" color="#38d3d3">}}




{{<matomeQuote body="俺も同じことを考えてたよ。それってどうやって作られるんだろう？LLMが言語を作るってアイデアなの？それとも開発者がLLM向けに言語を作るの？例がない新しい言語について、どうやってLLMに知識をつけさせるんだ？" userName="metrix" createdAt="2025/08/24 03:00:45" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="厳密な型チェックと、依存型や帰納型もあるのが良いってことだよね。" userName="hoyo1s" createdAt="2025/08/24 03:40:00" color="#ff33a1">}}




{{<matomeQuote body="Elasticsearch関連では、どのLLMも全然役に立たないよ。ネット上に完全な例が少ないから、全部ハルシネーションばっかり吐き出すんだ。" userName="idontwantthis" createdAt="2025/08/23 20:27:45" color="">}}




{{<matomeQuote body="今のインストールをアップグレードするか、全部消して再インストールしてみるといいよ。どこかに状態が悪いキャッシュファイルがあるかも。僕の場合、似たようなことでこれで直ったからさ。" userName="triyambakam" createdAt="2025/08/23 21:14:42" color="">}}




{{<matomeQuote body="別のLLMに切り替えたら、何が起きたか見つけるのに役立ったよ。（これは公式のアドバイスじゃないけどね :)）" userName="sixtyj" createdAt="2025/08/23 20:14:18" color="">}}




{{<matomeQuote body="GoogleのGemini（Pro？）って、コードに関してClaudeと比べてどう思う？Googleの出すものは好きなんだけど、すぐに製品を終わらせちゃうし、Chromeとかの企業統制や検閲も結構強引だからなぁ。" userName="alex1138" createdAt="2025/08/23 19:52:10" color="#ff5c5c">}}




{{<matomeQuote body="Geminiはリポジトリ全体を理解する能力が半端なくて、アーキテクチャ計画の支援もすごいよ。Claudeには全然無理。僕のやり方は、Geminiでプロジェクトの概要と高レベルな計画を立てて、それをGPT-5に渡して改善させ、詳細なワークフローXMLに変換。そのXMLをClaudeに渡して実装させてるんだ。これでClaudeの予定外の失敗はほとんど避けられるよ。" userName="CuriouslyC" createdAt="2025/08/23 21:10:36" color="#45d325">}}




{{<matomeQuote body="Web UIのチャットならGemini 2.5 Proが結構好きかな。コマンドラインツールだと（Claude CodeとGemini Codeの比較では）話にならないね。Gemini Codeは使い物にならなかったし、Claude Codeはただ遅いだけだったよ。" userName="jsight" createdAt="2025/08/23 20:06:35" color="#ff5733">}}




{{<matomeQuote body="これを詳しく書いてくれないかな？僕も基本的なGPT → Claudeのワークフローを使ってるからさ。" userName="seanwessmith" createdAt="2025/08/24 02:20:26" color="#45d325">}}




{{<matomeQuote body="俺の研究/統計ワークフロー用に作ったGist（https://gist.github.com/githubcustomerserviceistrash/c716e76...）だよ。これは特定の用途向けだけど、ChatGPTに一般化させて使えるはず。" userName="CuriouslyC" createdAt="2025/08/24 02:36:20" color="#785bff">}}




{{<matomeQuote body="Gemini CLIツールは最悪だね。ファイル修正で無限ループに陥るし、ツール利用も90%は失敗する。おまけに『性格』も鬱っぽくて自己卑下ばっか、マジで変だよ。ひょっとして俺のこと嫌いなのかな？俺は嫌いだけどね。" userName="filchermcurr" createdAt="2025/08/23 21:27:15" color="#ff33a1">}}




{{<matomeQuote body="Geminiはよくコードを書かずに、仮説的な解決策を話すだけなんだよね。ツール側の問題っぽいけど。" userName="ezfe" createdAt="2025/08/23 19:53:43" color="">}}




{{<matomeQuote body="『executable oracles』とか『hermetic boots』って言葉、君の専門分野と関係あるの？それともAIエージェントの専門用語として使ってる？Oracleが真実の源で、hermeticが外部依存なしって意味なら、簡潔な言葉を求める君の意図に合ってるね。もっと詳しく知りたいよ。" userName="threecheese" createdAt="2025/08/24 18:51:41" color="#45d325">}}




{{<matomeQuote body="Gemini CLIのことだよね？うん、ややこしいもんね。" userName="upcoming-sesame" createdAt="2025/08/23 22:55:19" color="">}}




{{<matomeQuote body="個人的にはGeminiの方がいい結果を出してるよ。ClaudeはSvelteの文脈でもReactコードを生成しようとしてばかりで、ちゃんと動くものを作ってくれない。でもGeminiはスタイリングやビジネスロジックで結構使える。Claudeがこんなに騒がれてる理由がわからないな。" userName="donperignon" createdAt="2025/08/24 06:03:17" color="#ff5c5c">}}




{{<matomeQuote body="Claudeが詰まったり堂々巡りになったら、俺はGemini PROでコードやデータを分析して、その結果をClaudeにフィードバックしてるよ。大規模なSQL変換スクリプトなんかはGeminiの方が成功するね。どちらも大規模タスクだと60%くらいまでしかできなくて、残り40%を終わらせるのに何日もかかっちゃう。LLMに合わないタスクを選んじゃうと、本当に時間の無駄だよ。" userName="poniko" createdAt="2025/08/24 12:28:45" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
