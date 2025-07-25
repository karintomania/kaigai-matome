+++
date = '2025-06-20T00:00:00'
months = '2025/06'
draft = false
title = 'オープンソースのAIエージェントブラウザNxtscapeが登場！'
tags = ["AI", "ブラウザ", "オープンソース", "自動化", "ウェブ"]
featureimage = 'thumbnails/orange1.jpg'
+++

> オープンソースのAIエージェントブラウザNxtscapeが登場！

引用元：[https://news.ycombinator.com/item?id=44329457](https://news.ycombinator.com/item?id=44329457)




{{<matomeQuote body="Hi HN！俺たちNithinとNikhilはNxtscape.aiの創業者（YC S24）で双子の兄弟なんだ。AI時代向けのオープンソース、エージェントブラウザ「Nxtscape」を作ってるよ。なぜ新しいブラウザが必要かって？1994年のNetscape以来初めて、AIエージェントの時代にゼロからブラウザを再構築できる気がするんだ。明日のブラウザは今と違うかもね。Cursorみたいに開発者の生産性を10倍にするツールはあるのに、みんなが一日中使うブラウザは変わってない。正直、普段使うブラウザと戦ってる感じなんだ。大きな不満じゃないけど、小さなイライラが積み重なる。70以上のタブを開いてて思考が中断したり、Amazonで日用品を再注文したり、フォームに入力したりみたいな簡単なことは、もう全部に注意払わなくていいはず。AIが全部処理できる、まさにそれを作ってるんだ。初期バージョンのデモはここ→https://dub.sh/nxtscape-demo<br>何が違うかって？PerplexityとかDiaみたいな競合がいるのは知ってるけど、俺たちはオープンソースでコミュニティ主導を目指してる。検索や広告会社じゃないから、プライバシー第一に集中できるんだ—Ollama連携、BYOK、広告ブロッカーとか。Braveは好きだったけど、今はクリプトや検索に広がりすぎてる気がする。俺たちは「AIであなたのためのブラウザを作る」って一点に集中してる。Arc（あれも好きだったけど開発止まった）と違って、100%オープンソースだよ。気に入らなければフォークしてくれ。<br>新しいブラウザを作る旅について。これを作るためにChromiumをフォークしたんだ。正直、これが唯一の方法だと感じた—Brave（最初はElectron）やMicrosoft Edgeもこれで苦労したのを見てきたからね。最初、拡張機能だけで済まそうかと思ったけど、もっと制御が必要だって分かった。CursorがVSCodeをフォークしたのと同じ理由だよ。例えば、ChromeにはAccessibility Treeっていう、スクリーンリーダーが使うDOMよりきれいな意味論的バージョンがあるんだけど、拡張機能のAPIじゃ使えない。でも、15M行のC++ Chromiumコードベースと格闘するのは大変だった。GoogleとMetaでインフラ経験あるけど、Chromiumは別物だ。Cursorのインデックスツールもこの規模じゃ全然ダメで、grepとvimをめっちゃ使えるようになった。ビルド時間もえぐい—M4 Maxでもフルビルドに3時間くらいかかるんだ。<br>正直言うと、まだめっちゃ初期段階だけど、GitHubに動くプロトタイプがあるよ。初期の「ローカルManus」スタイルのエージェント（簡単なWebタスクを自動化）、AIサイドバー、他の生産性機能（タブグループ化、セッション保存/再開とか）が入ってる。コメント全部楽しみにしてるよ！<br>ブラウザはGitHubからダウンロードできるよ: https://github.com/nxtscape/nxtscape" userName="felarof" createdAt="2025/06/20 16:35:55" color="#ff5733">}}




{{<matomeQuote body="俺の意見だけど、今までのコメントは木を見て森を見てない感じ—ローカルLLMと連携して、見たもの全部をローカルのタイムスタンプDBに記録して、操作したものを解析・要約して、Puppeteerみたいな機能をコードやプロンプトで使えるようにして、情報を整理したり、忘れたことを思い出したり、興味あることを学んだり（全部ローカルで）、広告やスパムを事前にフィルターしたり、自律的にWebタスクをこなしたりできるブラウザには、とてつもない価値があると思うんだ。<br>ブックマークはもうダメだよ。25年分も溜まってるし。<br>ちょっと調べ物するつもりが、気を引くサイトに飛んで深すぎる沼にハマるのも減らせる。ボディガードbotにジャンクをフィルターさせて、コメントに何か意味のある返信があったら教えてって言えばいい。<br>もし本当にうまく行けば、個人的なアシスタント＋ツアーマネージャー＋ドアマン＋ボディガード＋家政婦＋メカニック＋その他、全部スイッチ一つでオンオフできるデジタル版みたいになる想像ができるよ。<br>ブラウザは2025年のインターネットの混沌への主要な入り口なんだから、これは悪いアイデアじゃないね！実行次第だけど、このプロジェクト（とそれに似たプロジェクト）がどうなるか、すごく楽しみだよ。" userName="kevinsync" createdAt="2025/06/20 21:17:22" color="#45d325">}}




{{<matomeQuote body="正直なフィードバック、本当にありがとう！100%同意だよ—まさにその通り！これが俺たちの描いていたビジョンなんだ。<br>俺たちは時間の90%以上をブラウザで過ごすのに、まだ basically dumb なウィンドウなんだよね。見たものを覚えてて、重要な記事をクリップして（EvernoteのWebクリッパー覚えてる？）、ハイライトを保存して、全部を意味論的に検索可能にするAIアシスタントが、全部ローカルで動くなんて、ゲームチェンジャーになるだろうね。<br>履歴、ハイライト、セッション全部がローカルのPostgresDBに入るんだ。「先月あの価格比較どうだったっけ？」とか「ブラウザ自動化に関するハイライトを見つけて」って聞けば、それがちゃんと動く。あと、集中したい時に気を散らすサイトをブロックする自制機能も内蔵されてる。<br>検索や記憶だけじゃなく、ブラウザが本当に仕事を手伝ってくれる。「Chromiumの研究に関するタブはこの15個」ってAIが賢くタブをグループ化したり、「このサイト全部で2TBハードドライブの価格を比較して」って面倒な作業を自動化したり、「Discordサーバーの新しい投稿全部を要約して」とか—全部ローカルで処理される。ブラウザはインターネットの混沌を管理するのを助けてくれるべきで、それに上乗せするべきじゃないんだ。<br>どんな特定のワークフローが辛いか、ぜひ聞かせてほしいな！" userName="felarof" createdAt="2025/06/20 22:09:53" color="#ff5733">}}




{{<matomeQuote body="ずっと、30秒以上見た長いWebページの全文をアーカイブして、フルテキスト検索できるようにするブラウザ拡張機能のアイデアを考えてたんだ。<br>これは、それだけど、もっといいね。" userName="sneak" createdAt="2025/06/21 03:21:36" color="">}}




{{<matomeQuote body="https://github.com/iansinnott/full-text-tabs-forever" userName="karencarits" createdAt="2025/06/23 19:59:25" color="">}}




{{<matomeQuote body="うわー、これまさに俺が欲しいやつだ！でも、スマホでも動いて（ほとんどスマホで読むから）、複数のPC（常に4〜6台使ってる）からデータを持ってこれるサーバーコンポーネント付きで欲しいな。<br>これにハックできないかな。" userName="sneak" createdAt="2025/06/25 00:12:48" color="">}}




{{<matomeQuote body="これって基本的にMicrosoftがRecallでやろうとしたことじゃん。あれは酷評されたけど、正直、最近のAIブームの中で唯一ワクワクした機能なんだ。だって、本当に生活を良くしそうだったから。でも、もう少し考えてみたら、本当に欲しいのはAIじゃなくて、詳細なローカル履歴と検索機能だって気づいた。<br>俺のPCは、俺がそこでやったこと全部を記憶すべきだ。訪れたウェブサイト全部、ページをどこまでスクロールしたか、入力して削除した思考全部… 全部完全記憶してほしい！時間を巻き戻して、何が起こったか正確に追跡できるようにすべきなんだ、コンピュータなんだから。昨日あったことの曖昧な記憶は俺の頭の中にある。コンピュータに覚えてもらうのは、俺より上手に覚えてもらうためだろ。<br>そして、検索は決定的であってほしい。正確なタイムスタンプやブーリアン演算子で検索したい。曖昧な一致や推薦、自然言語処理レイヤーも役立つけど、Luceneなんかは20年以上前にローカルデータセットで十分やってた。共通のコーパスがあるのは素晴らしいけど、コーパスからのトークン化された散文なんてどうでもいい。俺が自分のPCでやったことに関心があるんだ！<br>俺の視点だと、LLMはパーソナル検索の面であまり価値をもたらさない。俺の理解では、そのエンコーディングの性質上、求めてるデータ自体が従来の方法で保存・インデックスされてないと、それを取り戻すのは不可能だ。もしそうなら、層をスキップして元のデータをクエリすればよかっただけだろ。<br>今のLLMをどこにでも注入するトレンドは、研究者が「全て」をパフォーマンス良くインデックスする方法をまだ見つけてないから、人々にコンピュータが全部知ってるかのような幻想を与える一時的なごまかしだと思うんだ。でも、パーソナル検索のユースケースなら、コンピュータは「全て」を知る必要はない。画面に見えてたテキストと、ちょっとしたメタデータ（時間、カーソル位置、クリップボード、URLとか）を知ってればいい。もし実際のテキストをスナップショットして従来のインデックスに入れるのがディスク容量取りすぎで、今でもそれをインデックスするのにLLMが必要だとしたら、それはまあいいとしよう。でも次は？だって、昨日 kinda sorta やってたことについて曖昧な会話ができるだけなんて、全然ダメだろ。完全記憶こそがそれだ。<br>これが全部どう発展していくか、俺もすごく興味あるよ。" userName="alisonatwork" createdAt="2025/06/21 02:22:00" color="#ff33a1">}}




{{<matomeQuote body="＞ 訪れた全ウェブサイトを記憶すべき<br>他のブラウザは知らんけど、Safariはこれやってるよ。「2年前に見たあのサイト何だっけ？」って時に、履歴を開いて検索すれば出てくる。2023年1月17日のヨダが俺のボールを食べたレビューとかね。" userName="KPGv2" createdAt="2025/06/21 05:14:57" color="">}}




{{<matomeQuote body="プライバシー問題全体があるよね。ソフトウェア会社はできる限りデータを吸い出すし、アメリカ政府はそれ全部にアクセスできるって知ってる。もしRecallが良い機能だとしたら、ICEが検索履歴に基づいて個人を収容所に送るのも良いことになっちゃう。だって、Recallはそうするだろうから。" userName="immibis" createdAt="2025/06/23 16:25:34" color="">}}




{{<matomeQuote body="まあ、Microsoftがやりたかったことは良いアイデアだったと思うけど、実際に出したものは酷かったし、実装がお粗末でデータ漏洩を招きやすかったのは同意だね。データすらちゃんと保護してなかったし笑" userName="cchance" createdAt="2025/06/21 03:48:18" color="">}}




{{<matomeQuote body="コンピューターが全部覚えるとか怖すぎ！セッションデータ消しまくりで、最近使ったリストも全部消してるタイプなんだ。便利なのは分かるけど、過去に信頼を裏切られた企業を信じろって？無理無理。個人情報なんて企業にとって超金鉱じゃん。プライバシー侵害の歴史がある巨大企業を信頼するなんて考えられない。オープンソースでも慎重に選ぶし、使うなら自分でコード見たか、隔離環境で使うか、自分で書くか。そういう機能は別にいらないや。" userName="imiric" createdAt="2025/06/22 09:50:32" color="#ff33a1">}}




{{<matomeQuote body="このビジョン、ヤバいね！集中切れたら教えてくれたり、自分が何してたか分析して教えてくれるとか、自己学習に超役立つじゃん。自己反省ってマジ大事だし。" userName="lukasego" createdAt="2025/06/21 10:56:26" color="">}}




{{<matomeQuote body="ヤバ、これの森は「新しいLLMベースのネイティブアドブロッカー」だってさ...この森、デカすぎて考えるだけで頭痛いわ。（ごめん皮肉です）" userName="Calwestjobs" createdAt="2025/06/21 05:52:43" color="">}}




{{<matomeQuote body="言ってることは最高だけど、前半はよくある監視型ディストピアだよね。もっとユニークなのを期待してたのに、普通のになっちゃったか。始まりは「ブックマークとかもうダメだ」だってさ。ちぇっ。<br>これ置いとくわ：https://youtu.be/kGYwdVt3rhI" userName="ivape" createdAt="2025/06/21 21:20:44" color="">}}




{{<matomeQuote body="バカな質問かもだけど、agentic browserって何？みんな知ってる前提みたいだけど。これって一般的な用語？聞いたことないんだけど。文脈的には「AI機能くっつけたWebブラウザ」って感じなのかな。" userName="hannob" createdAt="2025/06/20 17:49:29" color="">}}




{{<matomeQuote body="質問ありがとう！全然バカな質問じゃないよ！最初の方で説明しとくべきだったね。「agentic browser」ってのは、WebナビゲーションタスクをAIエージェントが代わりにやってくれるブラウザって意味だよ。自分でAmazonで並べ替えたり、フォーム入力したりする代わりに、AIがサイト動かしてやってくれるんだ。" userName="felarof" createdAt="2025/06/20 18:00:38" color="#ff33a1">}}




{{<matomeQuote body="まあ、「rsyncあるのにDropbox使うの？」って言うつもりじゃないけど、Playwright MCPをClaude Desktopとかに入れる代わりに、なんでこれ使うの？Chromiumの中身にアクセスできるって、Chrome Devtools Protocol経由でつなぐよりなんか超ヤバい力くれるの？" userName="wild_egg" createdAt="2025/06/20 18:12:21" color="#ff5733">}}




{{<matomeQuote body="そう、最終的にはただのMCPコネクタじゃなくて、スタック全体を握る方が価値あると思ってるよ。例えば小さいLLM組み込んだり、ブラウザにMCPストア作ったり、もっとAIに優しいDOM作ったりとかね。今でも、Chrome拡張機能APIじゃ公開されてない、LLMにとってより良いDOM表現であるChromeのアクセシビリティツリー使ってるし。" userName="felarof" createdAt="2025/06/20 18:42:55" color="#785bff">}}




{{<matomeQuote body="もっとAIに優しいDOM<br>アクセシビリティツリーとかそのセマンティクスを考えたらいいかもね。普通のdivとかはだいたい消されて、操作できるオブジェクトとか構造のヒントだけが残るからさ。" userName="pickpuck" createdAt="2025/06/20 19:37:50" color="#ff5733">}}




{{<matomeQuote body="MCPサーバー経由で出せるアクセシビリティ系のライブラリ作ろうとしてるんだけど、MacとかWindowsのAPIが訳わかんなくて苦戦中...。Playwrightとかスクリーンショット方式より、汎用エージェントに使いやすいポテンシャルあると思うんだけどな。遅延なくコンピューター使うのも解決したいことの一つ。軽度の手根管症候群だから、Talon voiceとかMac Dictationみたいなのは学びたくなくて、遅延なく何でもできるエージェントが欲しいんだ。" userName="faxmeyourcode" createdAt="2025/06/21 19:03:04" color="">}}




{{<matomeQuote body="いいね、これGitHubにあるの？" userName="pickpuck" createdAt="2025/06/21 21:37:25" color="">}}




{{<matomeQuote body="まだだよ、プロトタイプいくつか作ったけど全然ダメでさ。リポジトリ公開できるほど進んでないんだ。今週末にghに何か出してみるつもりだよ。" userName="faxmeyourcode" createdAt="2025/06/21 23:03:58" color="#ff5c5c">}}




{{<matomeQuote body="＞ 考えてたアイデアのいくつか: 小さいLLMを組み込むこと。そういえばChromeには組み込みのLLMがあるんだって: https://developer.chrome.com/docs/ai/built-in" userName="xnx" createdAt="2025/06/21 18:46:47" color="">}}




{{<matomeQuote body="「目も手も脳みそもついてるのに、なんでこれ使うの？」って疑問に思うんだけど。" userName="shortrounddev2" createdAt="2025/06/20 19:30:33" color="">}}




{{<matomeQuote body="素手があるのにツール使う必要ある？みたいな話は置いといて…例えば100個のサイトから情報コピペしてスプレッドシートに入れる必要があるときとか、そういう場合から考えてみたら？" userName="nsonha" createdAt="2025/06/21 05:03:18" color="">}}




{{<matomeQuote body="そろばん使えるのに、なんで電卓使わなきゃいけないの？" userName="b0ner_t0ner" createdAt="2025/06/21 02:43:51" color="">}}




{{<matomeQuote body="指と足の指使えるのに、なんでそろばん使うの？" userName="faxmeyourcode" createdAt="2025/06/21 19:04:08" color="">}}




{{<matomeQuote body="これってつまり、せっかちな人向け？「ワークフロー」のために提示された使い方をどうしても必要だと思う人とか、「認知負荷」みたいな言葉使っちゃう人とか、要はちょっと…怠け者な人向けなのかな、って思う。" userName="tolerance" createdAt="2025/06/20 20:52:46" color="">}}




{{<matomeQuote body="…なんでそういう怠け者って、自分の怠惰さを正当化するのにそんなに頑張ってかっこいい言葉考え出すんだろうね？" userName="zahlman" createdAt="2025/06/20 22:05:49" color="">}}




{{<matomeQuote body="それ、すごくいい質問だね。たぶん怠け者って知性がないと思われがちだから？AIとかソフトウェアみたいな技術って、知性を高めるためのものだしね。そういうかっこいい言葉使うと、知的で生産的に見える効果があるんだよ。そういう言葉を使うと、なんかちゃんとやってる気になれるんだ。だからこれで怠けてるなんて思わないんじゃないかな。" userName="tolerance" createdAt="2025/06/20 22:26:38" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="エージェントって、calculate()みたいなツールを与えられたLLMの応答のことだよ。<br>やりたいことを達成するために必要な作業が出てきたら、そのツールを実行する。<br>それが簡単なエージェントの仕組みだね。<br>もっと複雑になると、他のツールも使うかも。<br>例えば、LLMへの入力で「ユーザーエージェントをこんな文字列に設定して」って指示が出て、set_user_agent(”Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36”);<br>ってツールを実行するとか。<br>ページの中の物をクリックしたり、ページ読み込み時にカスタムJavaScriptを埋め込んだりするツールもあるかもね。" userName="kordlessagain" createdAt="2025/06/20 18:49:56" color="#ff5733">}}




{{<matomeQuote body="「Agentic」って言葉、たった1ヶ月前くらいに初めて聞いたんだけど、2日の間に3、4回も聞くようになったんだ。<br>会社の会議でも、みんな知ってるみたいに使われててびっくりしたよ。<br>簡単に言うとAIが自分で判断すること、って感じかな。" userName="al_borland" createdAt="2025/06/20 18:45:05" color="">}}




{{<matomeQuote body="Agenticブラウザ、クライアント側で自動化できるのはめっちゃ強力でクールなアイデアだよね。<br>でも、セキュリティ的にはマジでヤバいことになる可能性があると思う。<br>ブラウザって色んな機密情報にログインしてるし、インターネットからの信頼できない入力に晒されるわけじゃん。<br>プロンプトインジェクションで人生ひっくり返る可能性もゼロじゃない。<br>コンセプトは好きだけど、サプライチェーン全体がPCI/SOC2/ISO 27001みたいな認証取って、第三者機関が血判押すくらい安全じゃないと、絶対触りたくないな。" userName="mullingitover" createdAt="2025/06/20 22:01:22" color="#ff5733">}}




{{<matomeQuote body="この懸念、本当に重要だよね、指摘ありがとう。君の言う通り、警戒するのは当然だよ。<br>だから僕たちはローカルファースト＆オープンソースにしてるんだ。<br>クラウドエージェント（Manus.imとか）だと、資格情報をブラックボックスに預けることになる。<br>ローカルエージェントなら、自分でコントロールできるんだ。<br>- 使う時に初めてAgentが動く<br>- 何やってるかリアルタイムで見れるし、止められる<br>- 別々のChromeユーザープロファイルでタスクを実行できる<br>- 何より、コードがオープンソースだから、何が起きてるか自分で監査できる" userName="felarof" createdAt="2025/06/20 22:35:04" color="#45d325">}}




{{<matomeQuote body="Agentが何が起きてるか監視して、まずいことは理由を説明するダイアログを出したり、必要性を問い直したり、メールやSMSで確認させたり、追加のパスワードを求めたり、破壊的なタスクを今すぐ実行するのを断ったり（36時間後にまた聞いて、とか）する機能があるといいんじゃないかな。<br>で、血判とか認証とかが揃ったら、それを追加のレイヤーとして監視し続けるんだ。" userName="econ" createdAt="2025/06/21 00:43:48" color="#45d325">}}




{{<matomeQuote body="これ、LLMが書いたっぽいな。<br>どっちにしても、前の人が言ってた「悪意のあるサイトがいつでもプロンプトインジェクションできて、ユーザーが見て止める前に何かを勝手にやっちゃう」って点には答えてないよ。<br>AIブラウザの最大の利点って、自動運転みたいに任せっきりにして、注意をそらせることじゃん。<br>もしハッキングされないか常にビクビクしながら見てなきゃいけないなら、良い製品じゃないと思うな。" userName="adamoshadjivas" createdAt="2025/06/20 22:58:48" color="#785bff">}}




{{<matomeQuote body="あー、なるほどね、UXがまだ課題なのは確かだ。<br>タスクに必要なごく一部のサイトだけOAuthセッションを持った影のブラウザを開くとかはどうだろう？" userName="felarof" createdAt="2025/06/20 23:35:22" color="#785bff">}}




{{<matomeQuote body="それも助けにはなるだろうけど、どのサイトが必要かってAgentが決めるんだよね？<br>それだとプロンプトインジェクションで、ユーザーが意図しない別のサイトを開くようにLLMを誘導できちゃうから、根本的な解決にはなってないんじゃない？" userName="lolinder" createdAt="2025/06/21 12:47:30" color="#ff5c5c">}}




{{<matomeQuote body="まだ「生産性10倍」とか言ってるの？<br>そろそろやめようよ。<br>GitHubの最初のコミットが4月28日ってことは、10倍の生産性でやってるならもう2年半くらい開発してる計算になるのに、まだWaiting Listがあるんだね。<br>AGPLv3ライセンスなのは評価するよ、素晴らしい。" userName="gtsop" createdAt="2025/06/20 16:51:32" color="">}}




{{<matomeQuote body="フィードバックありがとう。<br>気持ちはわかるよ。<br>でもCursorなんかは、特に簡単な作業に関しては、本当に生産性が劇的に上がったのは確かだよ。" userName="felarof" createdAt="2025/06/20 17:10:07" color="">}}




{{<matomeQuote body="https://github.com/nanobrowser/nanobrowserみたいなのが良くない？あれはwebdriverとか出さずにちゃんと作られてて、JSも動くしLLMとも話せる。エージェント機能も全部あるのに、なんで頑丈な拡張機能じゃなくて新しいブラウザが必要なの？" userName="Tsarp" createdAt="2025/06/21 13:25:34" color="">}}




{{<matomeQuote body="なんでChromeの新しい拡張機能じゃなくて、Chrome DevTools Protocol (https://chromedevtools.github.io/devtools-protocol/)でChromeを動かすMCPじゃダメなの？例えばこういうのあるよ: https://github.com/AgentDeskAI/browser-tools-mcp" userName="yencabulator" createdAt="2025/06/21 15:49:49" color="">}}




{{<matomeQuote body="CDPはテストには良いけど、ボット検知の一番簡単なチェックがCDP（webdriver）かどうか。これって結局イタチごっこなんだよね。キャプチャソルバーとか色々出るけど、すぐに対策されちゃうから数週間しかもたないことが多いよ。" userName="Tsarp" createdAt="2025/06/21 16:55:02" color="#785bff">}}




{{<matomeQuote body="これと同じイタチごっこは、この新しいブラウザ全体にも当てはまるはずだよ。" userName="yencabulator" createdAt="2025/06/21 17:06:38" color="">}}




{{<matomeQuote body="確かにそうなんだけど、webdriverフラグって今は基本中の基本のボットチェックだから、それよりははるかにマシなレベルだよ。" userName="Tsarp" createdAt="2025/06/23 11:49:03" color="">}}




{{<matomeQuote body="君はwindow.navigator.webdriverと勘違いしてるかも。それはWebDriverの話でCDPとは別。CDPはフォーム入力速度みたいなヒューリスティクスで検知されることが多いから、AIエージェントもすぐ引っかかるんじゃないかな。（もしCDPに検知される印があっても、それを消す方が新しいブラウザ作るよりずっと楽でしょ。）" userName="yencabulator" createdAt="2025/06/23 21:38:35" color="#ff33a1">}}




{{<matomeQuote body="CDPで自動化するにはnavigator.webdriver === trueが必要なんじゃないの？もしかして私の理解が古い？これって普通、バレバレのサインだけど。" userName="Tsarp" createdAt="2025/06/24 04:41:01" color="">}}




{{<matomeQuote body="パッチを当ててないwebdriverは検知されやすいけど、CDPはタイミングとかのヒューリスティクスでしか検知できないって書いてあるのを読んだことあるよ。" userName="yencabulator" createdAt="2025/06/24 14:57:31" color="">}}




{{<matomeQuote body="Cloudflare (https://www.cloudflare.com/en-in/application-services/produc... )とか(https://blog.cloudflare.com/ai-labyrinth/)みたいに、防御側と攻撃側で巨額のお金が動いてる状況だと、ボット認定されるのは避けたいよね。静的サイトみたいなSEOスロップをスクレイピングするだけなら良いけど、それ以上だとすぐにダメになると思う。browerbaseとかcrawl4aiとかのレポジトリでもボット検知のことで結構問題起きてるよ。" userName="Tsarp" createdAt="2025/06/21 16:55:13" color="#785bff">}}




{{<matomeQuote body="ChromiumやElectronとかがLLMアプリのベースで人気だけど、どれ使っても結局「一つのローカルLLMアプリ」になる運命って感じ。開発の道筋はだいたい決まってるから、あとは実行とマーケティング次第だね。むしろWeb自体がクソだからブラウザの改善が必要なんだよ。LLMが登場してWebコンテンツの作り方が変わるはずなのにまだそうなってなくて、既存のWebは将来レガシーになるかもね。" userName="ppqqrr" createdAt="2025/06/21 17:26:04" color="">}}




{{<matomeQuote body="他の人が言ってるように、こういうエージェント機能はChrome Extensionで十分できるよ。実際、僕らはrtrvr.aiってExtensionを作って、Open AIのOperatorよりWeb Agentの性能が良いんだ（https://www.rtrvr.ai/blog/web-bench-results）。Accessibility Treeが必要って言い訳はやめて、DOMの仕組みを理解してエージェントを作るべきだよ。あと、ブラウザ作るのってマジでセキュリティリスク高いから、セキュリティ専任チームがないとヤバいよ。" userName="arjunchint" createdAt="2025/06/22 08:56:31" color="#ff5733">}}




{{<matomeQuote body="僕の使い方としては、水のデータがあるWebサイトからCSVとかのファイルを抽出したいんだよね。例えば南オーストラリアの貯水池データ[1]とか。フロントエンド経験がないから、データ抽出するのにめっちゃ苦労したんだ。もしエージェントでこれが自動化できるなら、絶対試してみたいね！<br>[1] https://data.sa.gov.au/data/dataset/reservoir-volumes-2018" userName="wanderingmind" createdAt="2025/06/21 04:16:57" color="">}}




{{<matomeQuote body="これめっちゃクールじゃん！コンセプトにワクワクするな。HNでのローンチおめでとう！ちょっと困ったフィードバックね。タブをトピック別にまとめるのはうまくいったんだけど、解除しようとしたらChatモードとAgentモードを行ったり来たりさせられてループしちゃった。もしかして解除するAPIがないのかな？あと「元に戻す」Undoボタンがあるといいな。chrome://extensionsみたいな内部ページで使ってたら、なぜか急にgoogle.comに飛ばされたのも変だったよ。Productivityモードにはタブグループ作成ツールしかないみたい。" userName="varenc" createdAt="2025/06/21 01:06:26" color="#ff5733">}}




{{<matomeQuote body="フィードバックどうもありがとう！困らせちゃってごめんね、まだ初期のベータ版なんだ…。AgentモードとChatモードでツールが分かれてるのが原因かも。プロンプトを改善するよ。タブグループ解除APIは今Chromeにないんだけど、追加できないか検討中。Undoも何人かから要望があったね。Cursorの「restore checkpoint」みたいのがいいかな。そうそう、生産性機能って普段の作業でどれくらい重要？具体的な例があれば教えて！" userName="felarof" createdAt="2025/06/21 01:44:07" color="#ff5733">}}




{{<matomeQuote body="生産性機能なんて別に重要じゃないよ！あのタブグループ解除のバグは正直優先度低いんだ。でもChatとAgentモードがループしちゃう問題は、どっちのエージェントも対応できない時に起こるかもしれないから、そっちの方が一般的で重要かもね。本当は「タブグループは解除できません」って言ってくれるのが一番良かったな。Undoも、開発が大変そうなら無理しなくていいよ。まだNxtscapeで「これ役立つ！」ってことはできてないけど、これからも色々試してみるね。" userName="varenc" createdAt="2025/06/21 02:04:38" color="#38d3d3">}}




{{<matomeQuote body="「nxtscape」って名前、なんか昔のSCSIを思い出すな〜。「GPT」は名前が超うまかったよね。やっぱ一息でパッと言える名前がいいんじゃない？<br>製品自体は素晴らしいと思うけど。" userName="lecro" createdAt="2025/06/20 22:21:54" color="">}}




{{<matomeQuote body="ハハ、ありがとう。今日のフィードバック見てると、名前とかブランディングにもうちょっと時間かけた方が良さそうだね。考えてみるよ！" userName="felarof" createdAt="2025/06/21 01:46:36" color="">}}




{{<matomeQuote body="昔Netscape使ってた者としては、この名前結構好きなんだけどな。でも、大多数の人には響かないだろうね。SVっぽすぎる「Nxtscape」より、「Nextscape」の方がまだいいかも。揚げ足取りみたいでごめんね。" userName="freedomben" createdAt="2025/06/21 14:26:32" color="">}}




{{<matomeQuote body="これ、たぶん商標権の侵害だろ。NxtscapeってNetscapeと紛らわしすぎじゃん。" userName="blindriver" createdAt="2025/06/21 15:33:07" color="">}}




{{<matomeQuote body="名前がすごく賢い感じがしてクリックしちゃった！<br>法律家じゃないから侵害かどうかは分からないけど、文字を一つ変えただけでこんなクールな名前になるとか最高じゃん。名前考えた人に拍手だわ。" userName="ahmedfromtunis" createdAt="2025/06/21 15:52:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Netscapeがずっと待ち望んでた絶好の機会だな。" userName="colecut" createdAt="2025/06/21 15:40:34" color="">}}




{{<matomeQuote body="AIワークフローはチャット形式ダメ。チャットしたい奴いない（Brave最悪）。チャットUIはエージェントがバカな時の代替手段。ChatGPTは検索代わりだからいいけど、生産性ツールは違う。自由形式ダメ。<br>直すアイデアあるけど、ChromeにLLM載せただけの手抜き。YCがこんなクソに金出すとか信じられん。クソだ。創造性ゼロ。機能レベル。「プロダクトじゃなくて機能ね」すら甘い。<br>2025年のChatGPTアイデアみたい。誰が大変かって？（ヒント：Githubにいない）" userName="dvt" createdAt="2025/06/20 20:42:14" color="#ff5c5c">}}




{{<matomeQuote body="代替案として何が考えられるの？<br>これこそ人が求めてるものだと思うんだけど。素早く指示出して、ウェブページやウェブアプリ横断でタスク実行してくれるってさ。<br>「直すアイデアがいっぱいある」って言ってたけど、もっと良いビジョンを教えてくれない？" userName="brulard" createdAt="2025/06/20 21:31:36" color="">}}




{{<matomeQuote body="うん、「レシピ」使うんだよ。過去の行動とか状況で「アクションタイプ」決める感じ。<br>店見てたら、牛乳切れ知ってるから買うの勧めたり、全セール品リスト出したり、妹が探してたプランター見つけて教えてあげたり。<br>（チャットもできるけどね）。<br>レシピ作るの難しいし汎用化も大変（RAG必要そう）だけど、これこそAIエージェントの未来だと思うんだ。チャットボックスだけじゃなく。" userName="dvt" createdAt="2025/06/20 21:43:08" color="#38d3d3">}}




{{<matomeQuote body="CursorとかClaude Codeとか使ったことある？<br>俺はコンピューターとチャットしてプログラミングやらせたいんだよ、自分で書くより。" userName="sunnybeetroot" createdAt="2025/06/21 05:49:34" color="">}}




{{<matomeQuote body="何億もの人がコンピューターとチャットしたいと思ってるよ。少なくともね。" userName="doctorpangloss" createdAt="2025/06/20 21:12:11" color="">}}




{{<matomeQuote body="生産性向上って文脈では全然違うだろ（ここでの話はこれ）。<br>みんな求めてるのはただ仕事を片付けること。" userName="dvt" createdAt="2025/06/20 21:21:23" color="">}}




{{<matomeQuote body="コンピューターとチャットすることでね。<br>ペーパーワークしてた頃の人たちも「コンピューターを使いたくない」って言ってたけど、「仕事を片付けたい」って思ってて、結局コンピューター使うことがその方法になったんだよ。" userName="immibis" createdAt="2025/06/23 08:01:26" color="#ff5733">}}




{{<matomeQuote body="これ、間違いなく勝者総取りの市場だね。挑戦するのはマジすごいけど、IMOブラウザ開発は2、3人のチームにはデカすぎると思うな。それに、GoogleもIOで似たようなのもう見せてるし。IMO、GoogleがChromeでやる前に市場シェア掴むほど速くは動けないだろうし、そもそもDiaと競争できるかも怪しい。Browser-useだって似たことできるし、あそこは既に広まってる。<br>頑張ってほしいけど、俺なら特定の人がマジで必要としてるものから始めるね。 ambitiousな技術系の創業者がChrome倒そうとして時間と労力いっぱい無駄にしてきたの見すぎたわ。（Chromeのフォークから始めた人もいっぱいいる）。でも誰も成功してないんだよ。エネルギーは有限だからね。" userName="deepdarkforest" createdAt="2025/06/20 20:08:02" color="#785bff">}}




{{<matomeQuote body="正直なフィードバックありがとう！競争が多いのは確かに分かってるよ。<br>でも、オープンソースでコミュニティ主導、プライバシー第一のAIブラウザには隙間があると思うんだ。（Braveみたいな？）" userName="felarof" createdAt="2025/06/20 20:46:02" color="">}}




{{<matomeQuote body="仮想通貨機能とか広告置き換え機能はマジでやめてほしいな。収益必要ってのは分かるけど、今のブラウザ界隈マジで終わってるじゃん。Firefoxですらユーザーの信頼失ってるし。" userName="throwaway314155" createdAt="2025/06/20 22:33:08" color="#ff33a1">}}




{{<matomeQuote body="市場の隙間には理由があることもたまにあるんだぜ、ってのを思い出してくれ。AIのことは置いといてさ、オープンソースでコミュニティ主導、プライバシー第一のブラウザで、ちゃんと稼げたのがどれだけある？<br>Braveはいい例だけど、ビジネスモデルは実際複雑で、色んな細かいのが混ざってる。それに、LLMのユニットコストはないでしょ（もしローカルじゃないなら、いつかその負担が来るだろうと俺は見てる）。" userName="deepdarkforest" createdAt="2025/06/20 22:41:41" color="#ff5733">}}




{{<matomeQuote body="良い指摘だね。今のところの考えは、良いオープンソース製品作って、それからエンタープライズ版を有料で提供するって感じだよ。<br>Island browserとかChrome enterpriseとか見ると、VPNとかDLP（データ損失防止）付きのブラウザのエンタープライズ版のニーズはある程度証明されてるみたいだし。" userName="felarof" createdAt="2025/06/20 23:53:55" color="#38d3d3">}}




{{<matomeQuote body="＞ 正直、毎日使ってるブラウザと常に戦ってる気がするんだよね。大きなことじゃなくて、小さいイライラが続く感じ。3つのプロジェクトで70個以上のタブ開いてると、マジで思考が飛ぶんだ。Amazonで潮干狩りグッズ再注文とか、フォーム入力とか、もう全部自分でやらなくてもいいじゃん。AIに全部やらせられるし、まさにそれ作ってるんだ。<br>ってことは、AIエージェントが「何を注意すべきか」決めろってこと？ 俺じゃなくて？<br>何がヤバいか分かってる？" userName="zahlman" createdAt="2025/06/20 22:04:35" color="">}}




{{<matomeQuote body="へぇ、なんか新しい考え方だね。" userName="throwaway314155" createdAt="2025/06/20 22:28:44" color="">}}




{{<matomeQuote body="これ、Web自動化タスクに使ったら、レート制限されたりIPバンされたりする？他のサイトから見て、ボット扱いになんの？" userName="gwhr" createdAt="2025/06/24 14:44:42" color="#45d325">}}




{{<matomeQuote body="ちなみに、ビルド時間速くしたいならRE APIとかGoma使うといいよ。15～30分で終わるようになるし、フルビルド後もキャッシュでさらに速くなるって。<br>https://chromium.googlesource.com/chromium/src/+/main/docs/l...<br>Gemini 2.5はChromiumのコードのことよく知ってるから、トレーニングされてるのかも。これも役立つかもね。<br>試してないけど、たぶんclangd言語サーバーよりMCPサーバー使うのがコンテキスト問題の解決策になるかも？<br>https://chromium.googlesource.com/chromium/src/+/master/docs/..." userName="symbolford" createdAt="2025/06/22 07:59:20" color="#ff5c5c">}}




{{<matomeQuote body="robots.txtは守るの？" userName="xena" createdAt="2025/06/20 17:08:00" color="#38d3d3">}}




{{<matomeQuote body="これはユーザーエージェントだよ。robots.txtを守られたら困るね。robots.txtはクローラー向けで、ユーザーの直接リクエストで動くエージェントには関係ないんだ。サイト運営者がどんなユーザーエージェントを使うかに口出しすべきじゃない。ターミナルだろうが、普通のブラウザだろうが、AIブラウザだろうが、誰が気にする？ウェブの強みは色んなツールでアクセスできることで、AIツールが嫌いだからってこれを犠牲にしちゃダメだよ。その先にはPlay Integrity APIみたいなのが氷山の一角で、ひどいことになるだけだ。詳細はここ:<br>https://www.robotstxt.org/faq/what.html" userName="lolinder" createdAt="2025/06/20 21:36:59" color="#45d325">}}




{{<matomeQuote body="いや、今日のところはそうじゃないね。でも、もしそのエージェントがスクレイピングじゃなくて、ほぼ“人間的な”使い方をしてるだけなら、問題にならないのかな？" userName="felarof" createdAt="2025/06/20 17:19:12" color="">}}




{{<matomeQuote body="robots.txt.org [0]はロボットの定義がかなり具体的だよ。引用すると、＞ ロボットはドキュメントを取得し、参照されている全てのドキュメントを再帰的に取得することで、ウェブのハイパーテキスト構造を自動的に巡回するプログラムだ。これは君たちがやってることとは全然違うから、君のはロボットじゃないね。ユーザーエージェントなんだから、robots.txtに注意する必要はないよ。もし君たちのやってることがロボットトラフィックなら、投機的ローディングとか、リーダーモードとか、ターミナルブラウザとかもロボットになるってこと？ウェブは色んなユーザーエージェントが違う振る舞いをするように設計されてるんだ。サーバーをダウンさせないためにレート制限は考慮すべきだけど、robots.txtは君たち向けじゃないし、そう扱い始めたら色々ダメになるよ。<br>[0] https://www.robotstxt.org/faq/what.html" userName="lolinder" createdAt="2025/06/20 22:30:04" color="#ff5c5c">}}




{{<matomeQuote body="どういう意味？このAIは複数のリンクを自動でスクレイピングできないの？例えば、“このページにリンクされてる全てのレシピを要約して”みたいなのは？それができるなら、間違いなくスクレイピングの定義に当てはまるよね。" userName="mattigames" createdAt="2025/06/20 17:47:21" color="#ff5733">}}




{{<matomeQuote body="彼が言いたいのは、単にクローリングやスクレイピングをしてるんじゃなくて、もっとターゲットを絞ったやり方だってことだと思うよ。ユーザーがそれぞれのサイトに手動で行くのと同じことを、もっと効率的にやる感じかな。" userName="grepexdev" createdAt="2025/06/20 18:31:53" color="">}}




{{<matomeQuote body="理想的には、ユーザーが本来見ていただろう内容だけを読むってことだろうね。それがそうなのか、保証されてるのか気になるな。新しい標準とか、サイトごとにユーザーが設定できるパーミッションとかがあれば、もっと良くなるかもしれないね。これがどうなるか、興味あるよ。" userName="vharish" createdAt="2025/06/20 20:53:18" color="">}}




{{<matomeQuote body="なぜ？僕のユーザーエージェントは、僕が楽になるように、そして本来アクセスしないだろうコンテンツにアクセスできるように設定されてるんだよ。ダークモードで夜遅く読めるし、リーダーモードでごちゃごちゃしたコンテンツを整理して読める。小さい文字はズームで大きくできる。これらの機能は、そうでなければアクセスしない内容を見れるようにするからって、robots.txtを尊重しなきゃいけないの？" userName="lolinder" createdAt="2025/06/20 21:43:10" color="#ff33a1">}}




{{<matomeQuote body="いや、ダークモードなんかは広告を避けられないけど＊、スクレイピングして要約するのは収益化を完全にバイパスするから全く違うよ。これはサイトの存続に関わる問題なんだ。リーダーモードも一時的な広告ブロックにはなるけど、あまり普及してないから大きな脅威じゃない。でもAIは、人間が見るのを完全にバイパスする多くのユースケースがあるからね。＊他のリンクや情報バナーもね。" userName="mattigames" createdAt="2025/06/20 22:16:27" color="#785bff">}}




{{<matomeQuote body="特定のサイトで着地したら即オンになるリーダーモードは、robots.txtのロボットに入るの？<br>https://addons.mozilla.org/en-US/firefox/addon/automatic-rea...<br>あと確認だけど、もしAd Blocker使ってたら、ユーザーエージェントはロボットになるからrobots.txt守るべきだって考えてるの？JSや画像をレンダリングしないターミナルブラウザで見ててもそう？" userName="lolinder" createdAt="2025/06/20 22:26:38" color="#ff5c5c">}}




{{<matomeQuote body="Ad Blocker使ってるなら、それは意図的にサイトの挙動を壊してるんだから（自分勝手な理由で）、robots.txtとかサイト側の期待に沿うかの議論自体が無意味だよ。自動リーダーモードなんかはまだ普及してないから問題になってないんだ。でもAIはもっと大きなユーザーベースを持つかもだから、懸念になる可能性があって、robots.txtや他のアンチボット機能が現実的な意味を持ってくるかもしれないね。" userName="mattigames" createdAt="2025/06/20 22:37:26" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
