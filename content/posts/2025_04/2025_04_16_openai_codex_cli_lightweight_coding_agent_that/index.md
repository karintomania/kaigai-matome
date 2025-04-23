+++
date = '2025-04-16T00:00:00'
months = '2025/04'
draft = false
title = 'OpenAI Codex CLI爆誕！ターミナルで動く軽量コーディングエージェントがClaude Codeに挑戦状！？'
tags = ["OpenAI", "Codex", "CLI", "コーディングエージェント", "開発ツール"]
featureimage = 'thumbnails/purple8.jpg'
+++

> OpenAI Codex CLI爆誕！ターミナルで動く軽量コーディングエージェントがClaude Codeに挑戦状！？

引用元：[https://news.ycombinator.com/item?id=43708025](https://news.ycombinator.com/item?id=43708025)

{{<matomeQuote body="Codex o4-mini と Claude Code で、ミディアムサイズのコードベースのトリッキーな部分のドキュメント作成で対決してみたよ。Claude Code はすごい出来で、かなりまともなドキュメントを書いたんだ。Codex は全然ダメ。コードにないものをいっぱい捏造して、アーキテクチャを完全に誤って伝えてる。サーバーバックエンドとか REST API の話をしだしたけど、そんなものはこのアプリにはないんだよね。何がそんなにうまくいかなかったのか気になるなー。正しいコンテキストをロードして、ちゃんと理解することに問題があるのかも？そこは Claude Code がマジで最適化されてる気がする。o3 と o4-mini には期待してるから、他のテストで良い結果が出ることを願ってる！Cursor とかが o3 をどう組み込むのかも気になる。" userName="gklitt" createdAt="2025-04-16T20:37:00" color="">}}

{{<matomeQuote body="やっぱり Claude Code の方が優れてる気がする。o4-mini は色々問題あり。o3 は良いけど、そこまで行くとお金を節約できなくなるから意味ないじゃん。みんな Claude Code を過小評価してる気がするんだよね。安くはないけど、これまでで一番良くて、一番安定した体験だよ。" userName="strangescript" createdAt="2025-04-16T23:08:25" color="#ff5c5c">}}

{{<matomeQuote body="Claude Code はマジで高すぎる。最近は Amazon Q Pro を CLI で使ってる。Claude Code と似たような体験ができるけど、いくつか機能が少ないかな。でも月額 20 ドルが上限だし、クレジットカードが燃え尽きる心配もない。" userName="artdigital" createdAt="2025-04-17T02:19:08" color="#38d3d3">}}

{{<matomeQuote body="これってこれらのモデルのどれかを使ってるのかな？<br>https://openrouter.ai/models?q=amazon<br>Aider+Openrouter より 4 倍も高いみたい。俺はノリとか大規模なリファクタリングとかしないから、（初めてで唯一の）請求額は Gemini で 5 ドル以下。これらのモデルならさらに半額になるね。" userName="aitchnyu" createdAt="2025-04-17T05:46:06" color="">}}

{{<matomeQuote body="違うよ、Amazon Q は Amazon Q を使ってるんだ。モデルは変更できないし、“Q”って名前で、上限は 20 ドルだよ（Q Developer Pro プラン）。無料プランもあるよ。<br>https://aws.amazon.com/q/developer/<br>ファイル変更、シェルコマンド実行、調査とか、何でもできる “q chat” コマンドラインコマンドがあるっていう意味で、Claude Code にかなり近い。“q chat” って言って、“このリポジトリを読んで README を作って”とか、Claude Code ができることは何でも言える。何を読むか、何を変更するかを自分で判断して、エージェントみたいに全部自分でやるんだ。（Aider とは言いたくなかった。Claude Code の魅力は、何を読むかとか変更するとか全部自分で判断して全部やってくれるところだから）<br>（Q って言ってるけど、俺のテストからすると、Amazon が Anthropic にめっちゃお金を注ぎ込んでることを考えると、AWS でホストされてる Claude のバリアントだってことは明らかだよね）" userName="artdigital" createdAt="2025-04-17T11:46:27" color="#ff33a1">}}

{{<matomeQuote body="OpenAI の Codex のデモでは、サンドボックス化されてるって言ってたよ。実行されたディレクトリ内のファイルにしかアクセスできないし、システム上のどこにでもアクセスできるツールを呼び出したとしてもそうらしい。ネットワークもブロックされてて、curl とかも動かないみたい。昨日の Codex の短いテストでは特に感銘は受けなかったな。まともな変更ができただけでも良かったけど、コードをめちゃくちゃにしたときは、それを理解するのに時間がかかってトークンもたくさん使った。<br>タスクごとに特化したファインチューンモデルが必要だと思う。Java の構文エラーを修正するための専用のファインチューンとかが良い例だね。<br>あと、テストの作成と実行にもっと積極的に取り組む必要がある。" userName="hmottestad" createdAt="2025-04-18T06:32:41" color="">}}

{{<matomeQuote body="差分が表示されて確認できるし、コマンドを実行する前に聞いてくるし、現在のディレクトリ外のファイルにはアクセスできないよ。もう聞かないで勝手にやらせることもできるし、そうやってフル機能を作って、後でちょっと修正したりしてる。" userName="winrid" createdAt="2025-04-17T18:38:10" color="">}}

{{<matomeQuote body="Sonnet 3.7 を軽く使うだけでも月額 30 ドルはかかると思ってたんだけど、何か安く提供する方法を見つけたのかな？" userName="aitchnyu" createdAt="2025-04-17T11:55:46" color="">}}

{{<matomeQuote body="Amazon が何をしたのかは知らないけど、俺は Aider+Openrouter で Gemini 2.5 pro を使ってて、Sonnet 3.7 の 1/6 のコストだよ。Aider のリーダーボード<br>https://aider.chat/docs/leaderboards/<br>には、最近の価格比較も含まれてる。" userName="nmcfarl" createdAt="2025-04-17T12:29:22" color="">}}

{{<matomeQuote body="＞Amazon Q Developer Agentでコード変換するとアプリのアップデートがめっちゃ早くなるらしいよ（月4,000行まで）。<br>月4,000行って少なすぎじゃない？リクエストしたらすぐ超えそう。俺が何か勘違いしてるのかな？（向こうの説明が悪いんだけど）。<br>いや、勘違いじゃないっぽい。これ超えると従量課金になるみたい。しかも上限20ドルじゃないんだ。" userName="monsieurbanana" createdAt="2025-04-17T08:21:40" color="">}}

{{<matomeQuote body="エディタのAmazon Q（例えば変換機能）とCLIのAmazon Qをごっちゃにしてるんじゃない？エディタの方は上限超えると追加料金かかるけど、CLIツール（Claude Codeみたいなやつ）は別物で、そんな制限ないよ。https://aws.amazon.com/q/developer/pricing/?p=qdev&z=subnav&… のコンソールの「チャット」を見てみて。何が「含まれてる」か、何が追加料金かかるか書いてあるよ。<br>俺はここ数ヶ月ほぼ毎日使ってるけど、追加料金はかかってないよ。まだ月20ドルだけ。" userName="artdigital" createdAt="2025-04-17T12:07:29" color="#ff5c5c">}}

{{<matomeQuote body="なるほど、ありがとう。GUIの4,000行制限はやっぱり少なすぎる気がするけど、今度CLI試してみるかも。" userName="monsieurbanana" createdAt="2025-04-19T09:19:53" color="">}}

{{<matomeQuote body="ぜひ試してみて！無料版はタダだし、色々いじれるよ。AWSのアカウントすら要らなくて、Q専用の新しいアカウントを作るように促されるよ。" userName="artdigital" createdAt="2025-04-22T05:16:41" color="#ff33a1">}}

{{<matomeQuote body="gemini 2.5 pro expをAider[1]で使うと、Claude Sonnet 3.7より優秀だよ。しかも無料（上限は高いけど）。<br>[1]https://aider.chat/" userName="ekabod" createdAt="2025-04-17T00:21:40" color="">}}

{{<matomeQuote body="clineとAiderを比べると、前回試した時(4ヶ月前)はAiderは全然ダメだった。変わったのかな？clineはSonnetに特化してるから優秀だと思ってた。Aiderは汎用的なIDEコーディングエージェントを目指してて、どのモデルでもうまく動くようにしてるけど。<br>gemmini 2.5 pro expをclineで使うとすごくいいんだけど、clineが提供するツールをうまく使えないことが多い。だからSonnetより安上がりだけど、Sonnetなら余裕でできる基本的なタスクをたまに失敗する。だから時間を節約するために追加料金を払ってる。<br>誤解しないでね。俺の意見はもう古いのかも。最近はついていくのが大変だ。" userName="razemio" createdAt="2025-04-17T05:39:14" color="">}}

{{<matomeQuote body="Clineを試したけど、Aiderのコマンドラインスタイルの方が早く作業できる。<br>/runコマンドでスクリプトを実行して、コンソールの内容をプロンプトに追加できるから、バグ修正がすごく速い。" userName="ekabod" createdAt="2025-04-17T18:42:47" color="#ff5733">}}

{{<matomeQuote body="俺としては、最新版に無制限にアクセスできるなら喜んで提供するよ。っていうか、今のコードのほとんどはgeminiが書いてるし(笑)" userName="asadm" createdAt="2025-04-17T00:27:15" color="">}}

{{<matomeQuote body="もしAiderにエージェントモードがあったら使うかな。率直に言って、UXが追いついてないんだよね。Claude Codeがやってることのコピーみたいなモードが欲しい。" userName="strangescript" createdAt="2025-04-21T19:49:10" color="">}}

{{<matomeQuote body="＞高価だけど、今までで最高の、一番安定した体験だったよ。<br>でも、やってることの割には高すぎるよね。それに、コンテキストウィンドウを使い果たすとすぐにダメになる。" userName="Aeolun" createdAt="2025-04-16T23:25:33" color="">}}

{{<matomeQuote body="コスト管理をマスターすれば、ずっと安くなるよ。コンテキストウィンドウを使い果たしてるなら、コストが高いのは当然かもね。“キャッシュ”を意識して。<br>特定のファイルを読み込むように指示して、絶対「/compact」を使わないこと（キャッシュが壊れるから。もし必要なら、何度もやり取りしすぎてるか、一度に使いすぎるファイルが多すぎる）。<br>セッション中に手動でファイルを編集しないこと（キャッシュが壊れる）。これにはLINTも含まれるよ。<br>明確な目標を持って、セッションのメッセージ数をできるだけ少なくする。<br>必要なドキュメントをmarkdownファイルでClaude.aiを使って生成して、それをリポジトリにファイルとして保存して、質問の一部としてそのファイルを読み込むように指示する。<br>ほとんどのタスクで、$0.5-0.75くらいかな。ヘビーユーザーじゃないけど、間違いなく助かってる（まるで、間抜けなミスをするけど、めちゃくちゃ集中できる賢いインターンがいるみたい）。<br>もし大量のドキュメントを読み込ませる必要があるタスクなら、数ドルになるかな。でも、Claudeが知らない（または古い）ライブラリでプロトタイプを試すときにしかやらないな。<br>趣味のものなら、積み重なるけどね。<br>会社にとっては、めちゃくちゃ価値がある。信じられないほど安い生産性向上（もし開発者が責任感を持って、怠けたり、誤用したりしなければ）。" userName="jasonjmcghee" createdAt="2025-04-17T00:27:21" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="みんなが同じようなこと言ってて、マジで驚く。<br>確かに、ちょこちょこ数ドルかかるかもね。でも、個人的には、そのコストに見合う以上の価値を得てるから、「高い」なんて笑っちゃうレベル。<br>やりたくないことを、めっちゃ効率的にやってくれるだけじゃない。やり方を知らないことも、自分のプロジェクトのコンテキスト内でやってくれて、終わったときにはやり方を理解できてる。<br>他の人も言ってるように、コンテキストウィンドウを使い果たしてるなら、問題はツールじゃなくて、あなた自身。<br>例えば、めちゃくちゃモデルが大きいプロジェクトがあるとする。Claudeにそのモデル全体を読み込ませるのは愚かだってわかるよね。そうじゃなくて、モデル内で何をしたいのか具体的に指示して、メソッド名を指定して、ファイル全体を読まずに、メソッド定義の周辺だけを読むように指示する。<br>もし、どうしても大きなファイルを扱う必要があるなら、そもそもファイルが大きすぎるんだから、リファクタリングして抽象化して、行数を減らすべき。あるいは、タスクに関係ないコードを一時的に削除して、読み込ませればいい。（例：ファイルをバックアップ場所にコピーして、関係ないものを削除して、作業が終わったら変更をマージして戻す）<br>数ドルのコストでタスクが完了するなら、「高すぎる」なんてことはないはず。そのドルで節約できる時間は、コストの何倍も価値があるし、結果に満足できなかった回数は5回以下。<br>同じような不満に対する返信をよく見るけど、みんな「高すぎる」「コンテキストが一杯になると役に立たない」って言ってる。それに対する返信はいつも同じ。「コンテキストを一杯にしてる時点で、もう失敗してる」（そして、それが高い理由）。<br>兄弟コメントに同意。プロジェクト内でドキュメントを構築させよう。タスクを小さく分けて、終わったらドキュメント化して、次のタスクに移る。（これはコンテキストに依存する。タスクを完了するためにコンテキストをロードする必要がある場合は、新しいタスク/セッションでロードし直すよりも、継続する方がお得かもしれないけど、結果は悪くなる…だから、コンテキストは最小限に抑えよう）<br>悪い結果になったり、堂々巡りになったり、ハルシネーションが出たりするのは、いつもコンテキストをロードしすぎたり、タスクが終わった後に新しいセッションを開始するのが面倒で、そのまま次のタスクに進んだとき。<br>右下のコンテキスト使用量のインジケーターを見ただけで、「オートコンパクト」される前に機能が低下してるのがわかるから、発言を信用しないように気をつける。<br>アプリ全体を1つのセッション/コンテキストウィンドウで構築することはできない。タスクを小さく分割して、簡潔に。<br>スキル不足の問題。ツールのせいじゃない。" userName="Implicated" createdAt="2025-04-17T02:33:56" color="#38d3d3">}}

{{<matomeQuote body="もし本気でそう思ってるなら、もう見当違いだよ。<br>ツールに関しては、ほとんどの場合、ユーザーのせい。使っててうまくいかないなら、ツールが悪いんじゃなくて、使い方が間違ってる可能性が高い。ほぼ間違いなく。<br>適材適所ってやつ。正しい仕事に、正しく使うことも重要。<br>Claude Codeはプロジェクト全体をリファクタリングするためのものじゃない。10万トークンの「プロジェクト全体」をロードしようとしてるなら、使い方が間違ってる。それは事実。このツールはそういう設計じゃない。確かに、「動く」かもしれないし、そう設計されてると思わせるほど近い結果が出るかもしれないけど、違う。<br>詳細で、具体的な作業には、めちゃくちゃ優れてるから、こんな意見があるのが信じられない。<br>そうは言っても、大量のコンテキストを読み込ませることもあるけど（Claude、プロジェクト全体。Claude Codeじゃないよ、そういう設計じゃないから）。そういう場合は「会話」はしない。コンテキストをロードして、質問して、タスクを与える。最初のレスポンスが全て。それで解決しないなら、どうすればいいか、より具体的にわかるはず。" userName="Implicated" createdAt="2025-04-17T06:47:09" color="#ff5733">}}

{{<matomeQuote body="予測不能で非決定論的なブラックボックスで、未知のトレーニングセット、重み、バイアスが、広告とは異なる動作をしてる？そりゃユーザーのせいだよね。" userName="troupo" createdAt="2025-04-17T07:35:48" color="">}}

{{<matomeQuote body="ジュニア開発者もスキルはあるけど、集中して軌道に乗せるにはシニアの指導が必要。ツールに知能が組み込まれてるからって、うまく伝えなければ意図を読み取れるわけじゃない。" userName="mwigdahl" createdAt="2025-04-17T05:54:42" color="#38d3d3">}}

{{<matomeQuote body="マジな質問？<br>ロボット手術アシスタント/ロボットの使い方を知らない外科医は、ツールの問題？それともスキルの問題？" userName="Implicated" createdAt="2025-04-17T06:49:22" color="">}}

{{<matomeQuote body="コストが予測できないと、trial and errorでスキルアップするのが難しいよね？特にモデルを混ぜたり、高いモデルを使うとコストが跳ね上がるし。ベンダーがコストを重要視しないのは、価値がないか、一部の人にしか使いこなせないからかもね。" userName="threecheese" createdAt="2025-04-17T15:02:02" color="">}}

{{<matomeQuote body="Claude Code使うときって、contextを自分でコントロールできる？contextを読み込む賢さとか、自分で管理する必要があるのか知りたいな。" userName="afletcher" createdAt="2025-04-17T10:37:58" color="#785bff">}}

{{<matomeQuote body="わかるー、Claudeの経験、マジそれ！特に必要なcontextだけ引っ張ってくるってアドバイスが響く。時間はお金で買えるから、こういう技術はマジで助かる。scribe（作家のアシスタント）みたいなもんよね。マジ感謝！" userName="disqard" createdAt="2025-04-17T03:49:01" color="#ff5733">}}

{{<matomeQuote body="scribeのアナロジーいいね！で、scribeと同じで、Claude Codeへの不満はコストとかcontextじゃなくて、遅さなんだよねー。マジで遅い：D" userName="Implicated" createdAt="2025-04-17T06:50:41" color="#38d3d3">}}

{{<matomeQuote body="マジそれ。AIを使いこなすには努力が必要だよね。まるで野生の馬に乗るみたい。ベテランdevのスキルは役立つけど、Google検索みたいにうまくいくとは思わないほうがいいよ。" userName="siva7" createdAt="2025-04-17T05:24:14" color="#ff5733">}}

{{<matomeQuote body="＞It's not going to build your entire app in a single session/context window.<br>いや、最初はそうだったんだよ。context windowを使い果たすまではね。その後は手取り足取り必要になった。そんなことするならCursor使うわ。" userName="Aeolun" createdAt="2025-04-18T17:20:06" color="">}}

{{<matomeQuote body="o3でも同じテスト試した？ミニモデルはスピード重視だよ。" userName="ilaksh" createdAt="2025-04-16T20:54:48" color="">}}

{{<matomeQuote body="OpenAIのモデルがハルシネーションして、間違いを”嘘”でごまかすって記事があったよ。原因についても考察してて面白かった。https://transluce.org/investigating-o3-truthfulness<br>これが原因かもね。" userName="enether" createdAt="2025-04-17T10:30:24" color="#45d325">}}

{{<matomeQuote body="関連デモ動画：https://x.com/OpenAIDevs/status/1912556874211422572<br>これって、猛烈に開発が進んでるClaude Codeへの直接的な回答だよね：https://x.com/_catwu/status/1903130881205977320<br>しかもオープンソースじゃないし。非公式コメントだと、リコンパイルに対してDMCA申請してるらしいよ。https://x.com/vikhyatk/status/1899997417736724858?s=46<br>偶然だけど、今週Claude Codeのインタビューを公開する予定。コードエージェントCLIがSWEデザインで過小評価されてる理由とかにも触れるよ。<br>(要するに、linuxのユーティリティみたいに使えるってこと。@simonwの`llm`みたいにね。DevinとかCopilot SaaSを買わなくても、CI/PRレビューとかいろんなとこにインテリジェンスを組み込めるんだ。)<br>Claude Code（と、今回のOAI Codex）のヘビーユーザーいたら、ユースケース教えてほしいなー。CFP締め切り近いから応募してね。https://sessionize.com/ai-engineer-worlds-fair-2025" userName="swyx" createdAt="2025-04-16T17:37:22" color="#ff33a1">}}

{{<matomeQuote body="へーい！Claude Codeの弱点は、クローズドソースでClaudeモデルにしか対応してないことだと思うな。もしインスピレーション探してるなら、Rooが最強だよ。もっと面白い機能がたくさんある。例えば、ユーザー定義モードとか、デバッグモードとか、アーキテクチャモードとか。タスクの特定部分を要約して、新しいタスクを開始したりもできるし。それに、Claude Codeと違って、Rooはちゃんとカスタム指示に従ってくれる（マジで、Claude.mdは役に立たない！）唯一の欠点は、CLIじゃないってことかな。" userName="axkdev" createdAt="2025-04-16T19:51:41" color="#38d3d3">}}

{{<matomeQuote body="gooseとか、plandexとかaiderもあるよ。あと、Rooの新しいフォークとしてkiloもあるね。" userName="kristopolous" createdAt="2025-04-16T22:09:55" color="">}}

{{<matomeQuote body="混乱したから、自分とみんなのために整理すると、Codexはオープンソースで、Claude Codeはそうじゃない。言及されてるリコンパイルのツイートはClaude Codeのことね。" userName="senko" createdAt="2025-04-16T19:56:20" color="#45d325">}}

{{<matomeQuote body="最近は、リポジトリ全体（または一部）をGeminiにペーストして、このスクリプトで変更をコードに適用してるよ：https://github.com/asadm/vibemode<br>aiderとかCopilotとか試したけど、どこか物足りなかったんだよね。" userName="asadm" createdAt="2025-04-16T22:45:34" color="">}}

{{<matomeQuote body="お金を節約するとか、ミスを減らすだけじゃなくて、イテレーション速度も重要だよね。このプロセスがaiderと比べて同等だとは思えないな。<br>aiderは全部メモリにロードされるし、ターミナルでファイルの追加や削除、議論ができるし、モデルの切り替えもできる。変更は全部コミットされるし、!を付ければターミナルコマンドも実行できる。<br>フルコードベースは、関連ファイルよりも高くて遅い。コストを気にしないならいいけど、妥当なサイズならフルコードベースをペーストするのは現実的じゃない。" userName="jwpapi" createdAt="2025-04-16T23:14:42" color="#45d325">}}

{{<matomeQuote body="このワークフローで5個目のプロジェクトだよ。しかも色々な種類があるんだ：<br>・esp32用の組み込みプロジェクト(100kトークン)<br>・Visual Inertial Odometryアルゴリズム(200k+トークン)<br>・Webアプリ(60kトークン)<br>・上で言及したツール自体(~30kトークン)<br>自分にはこれで十分うまくいってる。他の方法はダメだった。" userName="asadm" createdAt="2025-04-16T23:20:00" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="repomix(npm)みたいなツールを使ってみたら？エディタ（少なくともVSCode）に拡張機能があって、ソースファイルを機械可読な形式にすばやくまとめることができるよ。" userName="t1amat" createdAt="2025-04-17T01:14:57" color="">}}

{{<matomeQuote body="CopilotでGemini Pro 2.5を選んでEditモードにすればいいんじゃない？追加料金なしでほぼ無制限に使えるよ。<br>Copilotは前は使えなかったけど、Editモードが追加されてから、ここ数ヶ月でかなり良くなった。" userName="brandall10" createdAt="2025-04-16T22:48:58" color="#785bff">}}

{{<matomeQuote body="Copilot（とか他のやつら）は賢すぎようとして、(自分たちの財布のために)コンテキストを削減するんだよね。添付したファイルの全部をコンテキストに入れたいんだよ。RAGされたバージョンじゃなくて。" userName="asadm" createdAt="2025-04-16T22:55:35" color="#785bff">}}

{{<matomeQuote body="これマジで問題だよね。Claude ProjectsとかChatGPT projects、Sourcegraph Codyのコンテキスト構築、MCPファイルシステムとか全部、コンテキストをロスがある形で圧縮してるブラックボックスって感じ。<br>どこもトークン圧縮を最大限にして、そこそこの結果を出そうとしてるんだよ。<br>一番いいのは、構造化されたファイルを直接chat contextsに含めることだと思う。<br>FileKitty作ったんだけど、マジで役に立つから見てみて！<br>https://news.ycombinator.com/item?id=40226976<br>ファイルシステムのコンテキストを自分で用意して、実行結果とか問題文とか追加すれば、マジでいい結果が出ると思う。OpenAIとかAnthropicのサブスクリプションでプロンプトを調整したり、ファイルのコンテキストを更新したりするのに時間を使う価値あるよ。<br>最近はIDEじゃ解決できない難しい問題のために、プロンプトを複雑にするのに時間かけてる。" userName="bredren" createdAt="2025-04-16T23:40:29" color="#45d325">}}

{{<matomeQuote body="＞The best way around this I’ve found is to just own the web clients by including structured, concatenation related files directly in chat contexts。”わかるー。昔はbashスクリプトで必要なファイルを連結して、ファイル名とかパスをコメントに書いてたな。最近はClaudeの添付ファイルの数が増えたのか、必要なくなったけど。" userName="airstrike" createdAt="2025-04-17T00:21:48" color="#ff33a1">}}

{{<matomeQuote body="filekittyマジでクールじゃん！" userName="asadm" createdAt="2025-04-16T23:53:56" color="">}}

{{<matomeQuote body="ありがとう！コメントとプロジェクト見れてよかったよ。<br>LLMのコードをプロジェクトに戻す時の問題、マジでわかる。<br>gen AIでコード書くなら、コピペとmarkdownの使い方が重要だって同僚に言ったんだよね。<br>プロンプトと同じくらい、コンテキスト管理も重要。<br>Web chatの会話をコピーするときのUIとか、マジで重要だよね。" userName="bredren" createdAt="2025-04-17T05:20:30" color="#45d325">}}

{{<matomeQuote body="これがagentic codingソリューションの根本的な問題だと思う。<br>APIに送るコンテキストを減らすために、ファンシーな関数呼び出しとかツール使ってコンテキストを絞ってる。<br>でも、問題を解決するために必要なコンテキストなんてわからないじゃん。<br>開発者が制限してるせいで、モデルの能力が低いって思われがち。<br>でも、context windowsが大きくなる時代になるから、コーディングのパフォーマンスはマジで上がると思うよ。" userName="nowittyusername" createdAt="2025-04-16T23:16:18" color="#785bff">}}

{{<matomeQuote body="OpenAIが500kトークンみたいな大きいコンテキストだとパフォーマンス落ちるって言ってたよ。だからコストだけじゃなくて、パフォーマンスのためにコンテキストを絞りたいよね。推論を早くするためにも。<br>それに、そういうエージェントってブラックボックスで、.rulesとかllms.txtとかprdとかmcpとか、どう組み合わせるのがベストかわからない。<br>IDEも最終的なプロンプトを検査できるようなoutputがないし。MITMproxyとか使えば見れるかもだけど、ベストプラクティスを学べるツールが欲しい。<br>roo codeとかclineはオープンソースだから、system promptsとか見れるから試してみる。" userName="pzo" createdAt="2025-04-17T03:56:40" color="#45d325">}}

{{<matomeQuote body="Cursorならマジで簡単だよ。コンテキストの表面積を指定すれば、コンテキストが大きすぎなければRAGしない。" userName="cynicalpeace" createdAt="2025-04-17T00:11:26" color="">}}

{{<matomeQuote body="最近試してないけど、RAGしたかどうか教えてくれる？送ったコンテキスト見れる？" userName="asadm" createdAt="2025-04-17T00:19:04" color="">}}

{{<matomeQuote body="マジでそれ。<br>理由はわかるけど、魔法みたいで嫌なんだよね。LLMとの間に単純なツールが欲しい。" userName="asadm" createdAt="2025-04-16T23:33:40" color="">}}

{{<matomeQuote body="コンテキスト削減についてだけど、疑問に思ったことがある。<br>もし自分のAPIキーを使ったら、IDEとかcopilotのプロバイダーは月額料金以外に得しないよね？<br>でも、サブスクリプションのトークンで提供されたモデルを使う場合、トークン数に応じて料金を請求し、それを最適化してLLMへのリクエストを小さくして、マージンを増やすインセンティブがあるんじゃない？" userName="thelittleone" createdAt="2025-04-16T23:18:42" color="">}}

{{<matomeQuote body="だよねー。でもこれにはちゃんとした理由があって、モデルはコンテキストが小さい方が上手く動くんだって。だから俺はGeminiを使って、この怠惰で効率の悪いワークフローをやってるんだ。" userName="asadm" createdAt="2025-04-16T23:39:20" color="">}}

{{<matomeQuote body="Edit modeだと、開いてるウィンドウから見えるコンテキストだけじゃなくて、全部やってくれてる気がする。含めるファイルも選べるし、切り捨てられてないみたい。ちゃんとネットワーク通信を確認したわけじゃないけど、普段使ってる感じだとそうっぽい。" userName="brandall10" createdAt="2025-04-16T23:08:15" color="#785bff">}}

{{<matomeQuote body="実際にどんなネットワークリクエストが飛んでるのか気になるなー。" userName="bredren" createdAt="2025-04-16T23:31:47" color="">}}

{{<matomeQuote body="もう一回試してみるけど、前にedit modeでフォルダを追加して、ファイル一覧を表示させようとしたら、全部表示されなかったんだよね。" userName="asadm" createdAt="2025-04-16T23:31:18" color="">}}

{{<matomeQuote body="俺は“Open Editors”を使うのが好きだな。そうすると、今作業してるコードだけがコンテキストに追加されるから、もっと自然な感じがする。" userName="brandall10" createdAt="2025-04-17T00:25:19" color="#45d325">}}

{{<matomeQuote body="それって、それが原因で使い物にならないってこと？マジで酷すぎてビックリしてるんだよね。一度も編集に成功したことないし。コード補完は最高だけど。" userName="AaronAPU" createdAt="2025-04-16T23:22:29" color="">}}

{{<matomeQuote body="多分そうかも。ほとんどのモデルは、ある程度のコンテキストサイズ（大体10-20k）を超えるとダメになるんだよね。だから俺はgemini(via aistudio)をワークフローに使ってる。" userName="asadm" createdAt="2025-04-16T23:32:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="みんなこの微妙な違いを理解してないんだよね。CopilotとかCursorみたいなサブスクリプションベースのエージェントは、コスト削減のためにRAGを使ってて、RAGを使った場合、複雑なタスクでは完全なコンテキストウィンドウがある場合よりも結果が大幅に悪くなるんだ。だからChatgptとかClaudeも、ファイルアップロード機能を宣伝するときに、本当のことを言わないんだよね。" userName="siva7" createdAt="2025-04-17T07:46:30" color="#ff5733">}}

{{<matomeQuote body="ClineはRAGを使わないから、Geminiとその大きなコンテキストで作業するのに適してるんだ。" userName="MrBuddyCasino" createdAt="2025-04-17T09:32:21" color="#ff5733">}}

{{<matomeQuote body="これってhttps://aider.chat/docs/usage/copypaste.htmlと似てない？<br>どういう仕組みか確認してみたけど、あなたが説明してること全部やってるみたい。違いはファイルの提供方法で、xml形式を使ってないだけ。<br>もしよければ「/add *」で全部のファイルを追加できるよ。<br>このモードから推測すると、/addでaider chatに追加したファイルは、全部チャットコンテキストに追加されるみたい。<br>まあ間違ってるかもしれないけど。3つのファイルで簡単なテストをしてみただけだし。" userName="fasdfasdf11234" createdAt="2025-04-17T13:22:11" color="#785bff">}}

{{<matomeQuote body="それマジそう。aiderはファイルに対してRAGしないのが良いんだよね。UIがマジで遅くて使いにくいし、gemini 2.5をAPI経由で使うのは（コンテキストウィンドウがデカいから）高いし、今はレート制限もキツいから使ってないんだよね。aistudio UI経由なら問題ないんだけど。" userName="asadm" createdAt="2025-04-17T13:44:23" color="">}}

{{<matomeQuote body="aiderのコピペをaistudio UIとか他のウェブチャットで使うのはアリだね。変更を適用するaiderモデルにgemini-2.0-flashを使うのも良いかも。でも最初のポイントはマジでわかる。<br>自分のワークフローに合うツールを自分で作るのも、必要なことに合わせて簡単に修正できるのも理解できる。" userName="fasdfasdf11234" createdAt="2025-04-17T13:49:10" color="#ff33a1">}}

{{<matomeQuote body="マジでそれな。変なワークフローが出てくるから、みんなが最適な方法に落ち着くまで、自分だけの変なツールを持ってる方が良いんだよね。" userName="asadm" createdAt="2025-04-17T14:01:24" color="">}}

{{<matomeQuote body="マジでデカいコードベースだと、色々見失う気がするんだよね。16x promptを使って質問に合ったファイルを選んで、プロンプトを生成させてる。" userName="ramraj07" createdAt="2025-04-16T22:59:03" color="">}}

{{<matomeQuote body="geminiのこと？マジで200kトークンまではリコールがスゲー良いと思う。それ以降はまあまあかな。" userName="asadm" createdAt="2025-04-16T23:01:34" color="#785bff">}}

{{<matomeQuote body="マジで上手くいくことを願う！Claude Codeはマジで優秀。<br>他のコーディングエージェントはイマイチだったから、Zedで直接プロンプトする時にしかClaudeを使ってなかったからマジで驚いたんだよね（”ここにxyzを実装して”とか、”この関数をabcで書き換えて”とか）。<br>だからClaude Codeを試す時は悲観的だったんだけど、今はいつも使ってる！そりゃあ、金はかかるけど、ほぼ完成したPRがめちゃくちゃ早くできるなら、1回のプロンプトで15ドル払うのは全然アリ。<br>つまり、競争は良いこと。Codexに期待！" userName="cube2222" createdAt="2025-04-16T19:47:41" color="#38d3d3">}}

{{<matomeQuote body="Claude Codeはクローズドなライセンスなんだよね。<br>https://github.com/anthropics/claude-code/blob/main/LICENSE....<br>Anon Kodeっていうフォークがあるけど<br>https://github.com/dnakov/anon-kode<br>こっちは他のモデルとかAnthropic以外のモデルも使えるみたい。でもライセンスが不明瞭なんだよね。<br>CodexがApache Licenseなのは面白いね。誰かが他のモデルでも使えるように拡張するかも。" userName="therealmarv" createdAt="2025-04-16T20:37:48" color="#785bff">}}

{{<matomeQuote body="プロプライエタリなコードのフォークなら、ライセンスはマジで明確で、著作権侵害になるよね。<br>Anthropicがライセンスを執行するかどうかは別の問題だけど、そこに投資するのは賢明じゃない気がする。" userName="WatchDog" createdAt="2025-04-16T23:54:52" color="">}}

{{<matomeQuote body="フォークって言ってるけど、コードは共有してないよ。最初から作ったはず。" userName="acheong08" createdAt="2025-04-17T00:26:01" color="">}}

{{<matomeQuote body="ターミナルベースでオープンソースなら、aiderが一番人気だと思う。" userName="cube2222" createdAt="2025-04-16T20:41:51" color="#45d325">}}

{{<matomeQuote body="マジそれな！めっちゃ良い！気に入った！<br>ただ、構造が分からん巨大で複雑なコードベースだとイマイチなんだよねー。ファイル自動追加とか、賢いやり方で追加してくれるAIが欲しいなー（トークン消費は増えるけど）。CodexとかClaude CodeとかAnon Kodeとか、AIエディタ系ならもっとうまくやってくれそう。それが唯一の欠点かな。" userName="therealmarv" createdAt="2025-04-16T20:50:53" color="">}}

{{<matomeQuote body="Aiderって、まさにそれやってくれるんじゃないの？repo map機能で。" userName="Firerouge" createdAt="2025-04-16T22:16:32" color="">}}

{{<matomeQuote body="いやいや、repo mapはコードベースの概要をLLMに伝えるだけで、Aiderが勝手にファイルを持ってくるわけじゃないよ。全部見せたいファイルは自分で指定しないと。Claude Codeとか他のツールはそこが自動だから、もっと自律的なんだよね。" userName="Tiberium" createdAt="2025-04-16T22:28:32" color="#ff5733">}}

{{<matomeQuote body="Aider、こっちが指定してないファイルへのアクセス許可を普通に聞いてくるけど？" userName="rtsil" createdAt="2025-04-16T23:01:42" color="">}}

{{<matomeQuote body="激しく同意。Claude Codeが予想以上に優秀でびっくりした。Clojureみたいなマイナー言語でもね。競争があるのは嬉しいね！" userName="jwr" createdAt="2025-04-17T00:00:29" color="#38d3d3">}}

{{<matomeQuote body="Claude code毎日使ってる。ちょっと高いし、ハルシネーションも多いけど（カスタムプロンプトでほぼ抑え込んだけど）。競争が激しくなって値段下がると良いな。" userName="dzhiurgis" createdAt="2025-04-16T21:04:35" color="">}}

{{<matomeQuote body="高すぎ。なんでみんなClaude code使うんだろう？CursorとかWindsurfでClaude使えば良くない？" userName="retinaros" createdAt="2025-04-16T19:56:56" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
