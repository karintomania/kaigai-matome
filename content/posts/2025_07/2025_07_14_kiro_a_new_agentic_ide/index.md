+++
date = '2025-07-14T00:00:00'
months = '2025/07'
draft = false
title = 'Kiro 登場！AIが開発プロセスを自動化する新世代IDE'
tags = ["AI", "IDE", "プログラミング", "コード生成", "エージェントAI"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Kiro 登場！AIが開発プロセスを自動化する新世代IDE

引用元：[https://news.ycombinator.com/item?id=44560662](https://news.ycombinator.com/item?id=44560662)




{{<matomeQuote body="やあ、みんな！Kiroの開発に1年近く費やしたよ。IDE分野でKiroがユニークな理由を話せるのが嬉しいな。「spec driven development」がAmazonの巨大プロジェクト構築プロセスを基にしてるんだ。曖昧なプロンプトも深い技術要件やデザイン文書、タスクリストに展開できるよ。Kiroでの開発は本当に楽しかったし、Kiroで作った無限クラフトゲームのコードベースも公開してるんだ。約95%がAIコーディングだよ。見てみてね: https://github.com/kirodotdev/spirit-of-kiro" userName="NathanKP" createdAt="2025/07/14 15:03:33" color="#ff5c5c">}}




{{<matomeQuote body="Kiroっていうか、この手のAIアプリ全般へのフィードバックなんだけど、新しいコーディングエージェントを試す最大の障壁は、既存エージェントで設定したカスタムルールなんだよね。Copilotとか色々使ってきたけど、今Claude Codeにルールを移植し終えたばっかりで、これはもう二度としたくないよ。ドラッグアンドドロップみたいに簡単でも無理。企業は他のアプリからの移行フローを改善すべきだね。ルールをそのまま持ってくるか、LLMエージェントが変換してくれればいいのに。" userName="postalcoder" createdAt="2025/07/14 15:54:28" color="#45d325">}}




{{<matomeQuote body="なんでエディタにしたの？CLIじゃないの？VS Codeとか僕にはすごく遅いから、CLIの方が良かったな。" userName="theusus" createdAt="2025/07/14 17:29:59" color="">}}




{{<matomeQuote body="製品自体は好きなんだけど、実装はもっと良くできるんじゃないかな。Kiroは理由もなくHelper PluginがCPUを大量に消費したままで、アイドル状態なんだ。" userName="ActorNightly" createdAt="2025/07/14 17:30:49" color="">}}




{{<matomeQuote body="こんにちは！AWSとの関係って何？AWSで働いてるの？これってAmazon QとかBedrockがバックアップする、AWSの公式製品になるの？" userName="darkwater" createdAt="2025/07/14 15:44:36" color="">}}




{{<matomeQuote body="KiroはAWSチームが作ったもので、AWSの専門知識がもとになってるよ。AWS内ではKiroを推奨開発ツールの一つとして内部で使ってるんだ。だからKiroは公式のAWS製品だけど、コアAWSとは少し分けてるんだよね。例えば、AWSアカウントがなくてもKiroは使えるよ。GoogleやGitHub経由でソーシャルログインもできるんだ。KiroはAWSに支えられてるけど、それ自体が独立した製品で、AWS顧客だけでなく、もっと幅広い層にアピールしたいと思ってるんだ。" userName="NathanKP" createdAt="2025/07/14 16:14:40" color="#ff33a1">}}




{{<matomeQuote body="乞うご期待！CLI版も出す余地は確実にあると思うな。とはいえ、IDEにはCLIよりも機能面で大きな利点があるんだ。例えば、IDEが“遅い”と感じるのは、Linterやコードフォーマッター、型チェッカー、LSPサーバーなど、より多くの機能が最初から備わってるからだよ。IDEで動くエージェントは、これらのコンテキストを全部使って、より良い結果を出せるんだ。例えば、KiroはIDEの”Problems”タブの問題を自動で検知して解決しようと試みるんだ。開いてるファイルも見て、適切なコンテキストに素早くジャンプしようとするよ。IDEエージェントの可能性はCLIエージェントよりずっと高いんだ。使えるツールも多いし、何をしてるか、どこで作業してるかといった情報も多いからね。" userName="NathanKP" createdAt="2025/07/14 17:49:32" color="#ff5733">}}




{{<matomeQuote body="OSXでソーシャルログインが動かないみたいなんだけど。Kiroをダウンロードして、Googleオプションをクリックして、アプリを許可したら、”Error: AuthSSOServer: missing state”っていうエラーでhttp://localhost:3128/oauth/callbackにリダイレクトされちゃうよ。" userName="cl0wnshoes" createdAt="2025/07/14 16:22:03" color="">}}




{{<matomeQuote body="これに関する標準化された規約があれば本当にいいのにな。AGENTS.mdとかさ。ツールが違うだけで、本質的に同じ目標のために複数のファイルやルールを用意しなきゃいけないなんて、おかしいよ。" userName="newman314" createdAt="2025/07/14 20:59:22" color="#ff5c5c">}}




{{<matomeQuote body="ルール形式は~/.config/llms/rules.mdみたいな標準的な場所に置くべきだよね。" userName="esafak" createdAt="2025/07/14 20:08:33" color="">}}




{{<matomeQuote body="「Electron Helper (Plugin)」が10個もあって、それぞれが1GBのRAMを食らうとか、最近のデスクトップ体験はひどいね。もうネイティブアプリは作れないのか？" userName="slacktivism123" createdAt="2025/07/14 17:40:33" color="">}}




{{<matomeQuote body="報告ありがとう！KiroのSSOフローについて確認するね。localhost:3128へのリダイレクトは正常だけど、stateが欠けてるのは異常だね。ブラウザ拡張機能とか、君の環境がSSOフローを邪魔してる可能性があるね。引き続き注視するよ！" userName="NathanKP" createdAt="2025/07/14 16:39:27" color="#38d3d3">}}




{{<matomeQuote body="ほぼ95% AIコードってさ、出力に対して明確な期待値がなかったからじゃない？ある程度それっぽく見えればOKだったんでしょ。" userName="apwell23" createdAt="2025/07/15 00:14:44" color="">}}




{{<matomeQuote body="KiroはSteering Rulesを作るのが得意だよ！これは本当にお気に入りの機能で、大規模プロジェクトに超役立つんだ。オレのオープンソースプロジェクトで自動生成されたSteeringファイルを見れるよ: https://github.com/kirodotdev/spirit-of-kiro/tree/main/.kiro<br>これらはMarkdownファイルだから、他のツールのルールファイルも`.kiro/steering`ディレクトリに置けばそのまま使えるぜ。" userName="NathanKP" createdAt="2025/07/14 16:01:32" color="#ff5733">}}




{{<matomeQuote body="それって古い話だよね。Claude CodeやAmazon Q CLIもMCPを通じて、LSPサーバ接続やrepo-maps、コードインデックスの計算、Linter連携とか、全部できるよ。オレの意見では、CLIの方が可能性を秘めてるし、CI/CDに統合したり、並列実行したりするのも簡単なんだ。" userName="didibus" createdAt="2025/07/14 18:26:20" color="#45d325">}}




{{<matomeQuote body="それってHarper Reedの”My LLM codegen workflow atm”に似てる？https://harper.blog/2025/02/16/my-llm-codegen-workflow-atm/" userName="charlysl" createdAt="2025/07/14 15:35:18" color="">}}




{{<matomeQuote body="いくつか理由があるよ: Kiro（とほとんどのAIエディター）は、最初に起動した時にコードベースをインデックス化するからCPUを多く使うのは普通なんだ。あと、VS Codeのプラグインをインポート・インストールする時もそう。これは初回だけの一時的なものだよ。CPUがスロットルされてる時に少しの利用でも利用率が高く見えることもあるね。オレの環境ではほとんど0.4%以上になることはないから、CPU利用率が高いならこれらの理由のどれかだろうね。" userName="NathanKP" createdAt="2025/07/14 17:43:31" color="#ff33a1">}}




{{<matomeQuote body="違うね。高品質を維持するために、最初の結果を却下してより正確なプロンプトでコードを再生成することはしょっちゅうだったよ。Kiroに期待通りのコードに変更してもらうために”refactor prompts”もよく使ったね。AIを使っているからといって、品質を気にしなかったり、思考を停止して最初の結果をただ受け入れたりするわけじゃない。AIとコーディングするのにはまだスキルと技術が必要だけど、以前よりもはるかに早くコードを捨てたり、再生成したり、再構築したりできるんだ。このプロジェクトでは、手動入力を可能な限り避け、Kiroにプロンプトを使って必要な結果を出させる方法を見つけた。だから95%がKiroによって書かれたんだ。その過程で、プロンプトのスキルも向上したし、最初のパスで承認できる成功率もずっと高くなったよ。初期の頃は、もっとモデルがバカだったし、オレ自身のプロンプトスキルも低かったから、コードの一部をより正確な指示で3、4回再生成することもよくあったね。" userName="NathanKP" createdAt="2025/07/15 00:41:27" color="#785bff">}}




{{<matomeQuote body="precise promptなんてものがあるなら、プロンプトをrepoにチェックインして、CIがプロンプトから最終アプリをビルドしてデプロイできるはずだろ。つまり、ランダムな出力の95%を受け入れてるってことは、すごく単調で簡単な作業をしてるか、出力の形（品質とは違うぞ）を全然気にしてないかのどっちかだよね。この場合、君はプロダクトオーナーでもあって、何が受け入れられるかの最終決定権も持ってたわけだしさ。" userName="apwell23" createdAt="2025/07/15 00:49:12" color="#38d3d3">}}




{{<matomeQuote body="返信ありがとう。インデックス作成のことだったんだね。これってどうにか制御できないの？files.watcherExclude設定があるんだけど、それってちゃんと反映されるの？" userName="ActorNightly" createdAt="2025/07/14 18:01:58" color="">}}




{{<matomeQuote body="そうなんだよ！数か月前この投稿を見て、”すごい、俺たちが作ってるものにそっくりだ！”って思ったんだ。Kiroはrequirements、design、tasksの3つのファイルを使うんだ。requirementsは思いつかなかったようなエッジケースを定義する。designはコード現状と要件の差異、必要な変更を洗い出す。tasksは大きな開発フローをLLMが扱える小タスクに分割して、エージェントがそれを追跡する。正直、”Cookie Clicker”みたいに自動でできるってのは無理だと思うね。LLMには熟練した人間のSDEがまだ必要だよ。でもKiroは、AIエージェントが難しい大規模タスクをスムーズに処理できるように手助けしてくれるんだ。" userName="NathanKP" createdAt="2025/07/14 15:46:15" color="#45d325">}}




{{<matomeQuote body="AWSの顧客がBedrockに接続したり、それ経由でモデルを使ったりする計画ってあるの？" userName="qrush" createdAt="2025/07/14 15:46:49" color="#38d3d3">}}




{{<matomeQuote body="＞ 例えばIDEが”遅い”と感じるのは、機能が多いせい：<br>IDEは遅いと感じるんじゃなくて、実際に遅いんだよ。HTMLとJavaScriptで書かれてるからさ。2005年のDelphiを試してみなよ、超速いし、機能ももっと充実してるんだから！" userName="blibble" createdAt="2025/07/14 19:30:20" color="">}}




{{<matomeQuote body="＞ Kiroのおかげで、無限クラフトゲームのコードベースはほぼ95%AIが書いたんだってさ：https://github.com/kirodotdev/spirit-of-kiro<br>これと”CHALLENGE.md”、”ROADMAP.md”はプロジェクトをデモるのに超クールなやり方だし、遊び場にもなるね。ゲームのアイデア自体もかなり面白い。AWSを使わずに試せたら最高なんだけどな。Agentic Codingの良いユースケースかもね：”Kiro、これローカルDBとAnthropic APIキーだけで動くようにしてくれ！”って。不満はともかく、デモとしてはめちゃくちゃクールなフレームワークだね。ナイスアイデア！" userName="epiccoleman" createdAt="2025/07/14 18:53:42" color="#ff5733">}}




{{<matomeQuote body="それが俺が使ってる規約なんだ。俺のCLAUDE.mdとGEMINI.mdは両方とも”AGENTS.mdを見てくれ”って書いてあるよ。" userName="tln" createdAt="2025/07/14 22:50:56" color="">}}




{{<matomeQuote body="AGENTS.mdは少なくともCodexとGitHub Copilotの両方で使われてるね。VSCodeは指示ファイル用に独自の物を持ってるし、Claude.mdもまた独自の物なんだ。残念。" userName="sys13" createdAt="2025/07/14 18:40:56" color="#785bff">}}




{{<matomeQuote body="“Xなんて絶対やりたくない”<br>“Kirkはこれ、かなり得意だよ。Xをするだけさ”<br>“…”" userName="adastra22" createdAt="2025/07/14 19:11:20" color="">}}




{{<matomeQuote body=".vibecodingrcの方がいい感じに聞こえる？" userName="kaptainscarlet" createdAt="2025/07/15 13:34:10" color="">}}




{{<matomeQuote body="ちなみにGitHubログインはできたよ。俺が使ってる拡張機能はパスワードマネージャーとKagiだけだね。" userName="cl0wnshoes" createdAt="2025/07/14 16:44:42" color="">}}




{{<matomeQuote body="ファイルのインデックス除外は.gitignoreに基づいてて、files.watcherExcludeじゃないと思うんだけど、ちょっと確認してみるわ。" userName="NathanKP" createdAt="2025/07/14 18:06:10" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="FAQからの重要情報だよ。ProかPro+ティアならコンテンツは基盤モデルの学習に使われない。AWSはテレメトリーを収集するけど、IDE設定でオプトアウトできるよ。Freeティアとプレビュー期間中は、明示的にオプトアウトしない限り、コンテンツがFM改善に使われる可能性がある。Amazon Q Developer Proサブスクリプションならコンテンツは使われないってさ。詳細はこのURLを見てね。<br>https://kiro.dev/faq/" userName="consumer451" createdAt="2025/07/14 19:34:16" color="#ff5733">}}




{{<matomeQuote body="Kiroでテレメトリーデータを共有しないようにするには、次の手順で設定してね。<br>1. Kiroで設定を開く。<br>2. ユーザーサブタブに切り替える。<br>3. アプリケーションを選択し、ドロップダウンからテレメトリーとコンテンツを選択する。<br>4. テレメトリーとコンテンツのドロップダウンフィールドで、無効を選択してすべてのテレメトリーとユーザーデータ収集を無効にする。<br>情報源はここだよ。<br>https://kiro.dev/docs/reference/privacy-and-security/#opt-ou..." userName="srhngpr" createdAt="2025/07/14 21:23:30" color="#ff5733">}}




{{<matomeQuote body="これ、ちゃんと機能するか確認する方法あるの？それとも設定が守られるって信じるしかないの？" userName="m0llusk" createdAt="2025/07/15 00:47:39" color="">}}




{{<matomeQuote body="AIモデルを使うのと同じで、アクセス権を与えたインターフェースで悪意のあることをしないって確実には分からないんだよね。信じるしかないよ。" userName="Waterluvian" createdAt="2025/07/15 04:07:45" color="">}}




{{<matomeQuote body="まあ、少なくともAWSとかへのネットワークトラフィックがあるかチェックできるじゃん。" userName="dkga" createdAt="2025/07/15 10:22:14" color="">}}




{{<matomeQuote body="でもそれって、実際にモデルにクエリを送るのと見た目同じじゃない？俺、ジョーク見逃してる？" userName="yurishimo" createdAt="2025/07/15 10:29:12" color="">}}




{{<matomeQuote body="悪意のある振る舞いが既に起きてるなら、それに対処する方法は常にあるさ。" userName="Waterluvian" createdAt="2025/07/15 12:10:12" color="">}}




{{<matomeQuote body="他のすべてについてもそうだけど、信頼だよ。相手への報復の恐れで強化されることもあるけどね。適当なインターネットサービスが俺たちのメールとパスワードを売ってないってどうしてわかる？彼らはハッシュ化されたパスワードを保存してるだろうけど、俺たちが入力するたびに平文で受け取ってるわけだしね。" userName="pmontra" createdAt="2025/07/15 06:38:15" color="">}}




{{<matomeQuote body="ネットサービスがパスワードをどう扱うかなんて信用できないよね。入力時は平文だし、結局サービスごとにユニークなパスワードを使うしかない。でも、コードだとこれは難しいんだよな。" userName="Quekid5" createdAt="2025/07/15 07:02:19" color="">}}




{{<matomeQuote body="ネットサービスを信用するなら監査をチェックすべき。全てのサービスが監査されてるわけじゃないけど、データ渡す前にそこは考えた方がいい。" userName="rusk" createdAt="2025/07/15 10:20:39" color="">}}




{{<matomeQuote body="自分のコードに独自の文字列入れて、将来のFoundation Modelが補完するか試せるかも。弁護士じゃないけど、お金を払えばもっと法的拘束力があるかもね。Amazon Q Developer Proはめちゃ安いらしいよ。https://aws.amazon.com/q/pricing/" userName="consumer451" createdAt="2025/07/15 00:51:18" color="#ff33a1">}}




{{<matomeQuote body="企業はLLMへのコンテキストを重視してるけど、本当にトレーニングデータとして有用かな？ほとんどがLLMの出力で、コードの品質も人間より悪いし、開発で却下されたコードも混ざるだろうから、きちんとフィルターしないと価値があるか疑問だよ。" userName="lukev" createdAt="2025/07/14 22:20:17" color="#45d325">}}




{{<matomeQuote body="コード自体より人間とAIのインタラクションが超重要だと思う。ユーザーがAI使ってリアルタイムで修正する様子は、AIの改善に直結する。いつかAIがテストを勝手に無効にしないように学習するかもね。" userName="recursivecaveat" createdAt="2025/07/15 03:42:31" color="#ff5733">}}




{{<matomeQuote body="コード出力より、人間がLLMの要件や設計を調整するプロセスが大事。今やボトルネックはコンテキストとプロンプトだから、人間とのインタラクションデータを集めて最適化するのがいい戦略だと思う。ユーザーがAmazonに設計書のラベル付けをしてるって感じだね。" userName="nicewood" createdAt="2025/07/15 06:53:58" color="#38d3d3">}}




{{<matomeQuote body="YCの会社だったかな、製品化されなかったプライベートなコードリポジトリを買い取ってたのを見たよ。LLMの汚染を避けるために2022年以前のコードを求めてたはず。トレーニングデータにするみたい。うろ覚えだけどね。" userName="consumer451" createdAt="2025/07/14 23:58:57" color="">}}




{{<matomeQuote body="製品のテレメトリ、つまりAIとのやり取りの成功率とか、編集の必要性とか、ツールの使い方とか、コンテキストやプロンプトのチューニングデータの方が、単にコードをモデルに食わせるよりずっと製品にとって有用だと思うよ。" userName="janstice" createdAt="2025/07/15 01:22:09" color="#ff5c5c">}}




{{<matomeQuote body="これはAssemblyからCへの移行みたいに、ソースコード自体を気にしなくなる時代の始まりだね。Privacyも大事だけど、それが本質じゃない。Kiro使ってみたけど、ClaudeやCrystalと変わらず普通だったよ。<br>数年後にはソフトエンジニアは激減するだろうね。さあ、The Matrixへようこそ！Hacker Newsのこの記事のコメントもチェックしてみて。https://news.ycombinator.com/item?id=44567857" userName="metadat" createdAt="2025/07/15 04:49:16" color="#45d325">}}




{{<matomeQuote body="”あなたのコンテンツはFoundation Models（FMs）のトレーニングには使わない”って言ってるけど、それってFoundation Model以外のLLMには使うってことだろ？たとえもっと広い免責事項だったとしても、俺は信用しないけどな。" userName="anonnon" createdAt="2025/07/15 08:13:49" color="#785bff">}}




{{<matomeQuote body="プライバシー侵害の教訓から、「データは使わない/売らない」なんて嘘だってバレバレだろ。信用するなんて無理だね。21世紀最大の嘘だよ。" userName="0xEF" createdAt="2025/07/15 09:19:13" color="#ff5c5c">}}




{{<matomeQuote body="AI業界、特に大手が知財権を無視して、クローラーがDDoSボットみたいに振る舞うのはマジでタチが悪いよな。" userName="anonnon" createdAt="2025/07/15 22:21:10" color="#785bff">}}




{{<matomeQuote body="IDEを半年ごとに変えるのは嫌なんだよな。AIは動きが早すぎて、すぐ新しいのが出てくるし。CLI/TUIが結局一番って思うんだけど、GUI使う人も多いんだろうな。" userName="suralind" createdAt="2025/07/14 15:39:14" color="#ff33a1">}}




{{<matomeQuote body="半年どころか2週間に1回だよな。うちはClaude Codeでうまくいってるぜ。" userName="TimMeade" createdAt="2025/07/14 15:43:59" color="">}}




{{<matomeQuote body="大体VS Codeベースだから、乗り換えはそんな大変じゃないでしょ？今はまだ差が小さいけど、CursorとかVS Codeの更新に追いつけてない部分もあるみたいだね。" userName="bryanlarsen" createdAt="2025/07/14 15:45:03" color="#45d325">}}




{{<matomeQuote body="AIの“エージェントモード”は嫌いなんだ。コードは全部自分でコントロールしたいし、責任も取りたい。Claude Codeは“ask”フローにいいの？エージェントモードって、確認なしに勝手にファイル編集するってことでしょ？" userName="MuffinFlavored" createdAt="2025/07/14 15:45:42" color="#38d3d3">}}




{{<matomeQuote body="VS Code使ってない人も多いから、TUIの方がいい選択肢だと思うな。" userName="guluarte" createdAt="2025/07/14 15:51:08" color="">}}




{{<matomeQuote body="KiroはCursorが人気だった頃にAmazonが作ったっぽいけど、今はClaude CodeみたいなCLIエージェントに市場取られてるから苦戦しそうだな。無料でもないし、CursorやClaude Codeみたいに使い放題でもないんだろ？" userName="theturtletalks" createdAt="2025/07/14 16:13:02" color="#45d325">}}




{{<matomeQuote body="だからVimと自分の脳は絶対手放さないね。IDEだけでなく、MLモデルに自分を売るようなものだ。同僚が能力落ちていくのを見てるし、AIの金が尽きたらどうなるんだ？" userName="crinkly" createdAt="2025/07/14 16:32:16" color="#785bff">}}




{{<matomeQuote body="でも、Cとかアセンブラしか書かない老害みたいに取り残される可能性もあるよな。変な技術トレンドでも、この業界って一度始まったら絶対元に戻らないんだよ。" userName="ryandvm" createdAt="2025/07/14 16:51:09" color="#785bff">}}




{{<matomeQuote body="aiderが各編集をgitコミットにカプセル化するやり方は好きだな。これ、もっと広まってほしいね。" userName="bryanlarsen" createdAt="2025/07/14 15:49:09" color="">}}




{{<matomeQuote body="こういうエージェント型IDEって、全部VS Codeのプラグインでよくない？たぶん、プラグインだとVCからの資金調達が難しいから、そうしないんだろうね。" userName="yakattak" createdAt="2025/07/14 19:21:18" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ちょっと皮肉な話だけど、Amazon Q Developer CLI（これって実質Claude Codeを少し変えただけ）って、Claude Codeよりずっと前に出てたのに、ほとんど注目されてないみたいなんだよね。" userName="placardloop" createdAt="2025/07/14 17:48:33" color="">}}




{{<matomeQuote body="俺はC言語書いてめちゃくちゃ稼いでるんだけど？何が言いたいの？トレンドに関しては、この手のサイクルはもう何回も見てきたからさ…。<br>" userName="crinkly" createdAt="2025/07/14 17:35:38" color="">}}




{{<matomeQuote body="aiderは残念ながら古くなってきたね。できることはすごいけど、より良いLLMとエージェント技術を使えば、ソフトウェアエンジニアリングの領域でもっと成果が出るって示されてるんだ。<br>最近の論文では、LLMがツールハーネスを進化させて、aiderよりベンチマークで約20％も高い結果を出してたから、モデルとツール（あとより良いハーネス）の方がaider単体より優れてるのは明らかだね。" userName="NitpickLawyer" createdAt="2025/07/14 15:59:47" color="#ff5733">}}




{{<matomeQuote body="Claude CodeはClaudeのおかげだし、TUIかどうかってのは本質じゃない。IDEがTUIに負けるのは、エージェントモデルがコーディング以外にもっとたくさんのことをやって、ハンズオフなワークフローに進化してるからだ。<br>ごちゃごちゃしたIDEはそれに合わないけど、TUIも違うんだよね。TUIが主流になったことなんてあったっけ？<br>未来のエージェントツールは、リッチなノートブック/チャットインターフェースで、あらゆるフォームファクタで利用できるもの、つまり、たぶんウェブ/クロスプラットフォームアプリになるだろうね。" userName="nsonha" createdAt="2025/07/15 15:09:59" color="#785bff">}}




{{<matomeQuote body="いやいや、実際、仕事でいくつか違うAIソリューションを試したけど、エディターが同じでも体験は常に微妙に違うんだよ。<br>プロンプトテンプレートの使い方とか、パネルを開くとか、そういう細かい部分がね。（もちろんキーバインディングをカスタマイズしようとすればできるけど、そんなにすぐ変わるのにわざわざやる意味ある？）" userName="suralind" createdAt="2025/07/14 15:49:56" color="">}}




{{<matomeQuote body="もっと大事なことだけど—プラグインってどうやって収益化するの？" userName="umeshunni" createdAt="2025/07/14 23:49:57" color="#785bff">}}




{{<matomeQuote body="＞俺はC言語書いてめちゃくちゃ稼いでるんだけど？何が言いたいの？<br>言いたいのは、君みたいな人はそんなに多くないんじゃないかってことだよ。<br>全体的に見て、業界のトレンドに乗り続ける方が、キャリアパスとしてはより確実だからね。" userName="ryandvm" createdAt="2025/07/14 21:07:22" color="">}}




{{<matomeQuote body="1) aiderにはどんなモデルでも組み込めるよ<br>2) かなりエージェント的になれるんだ<br>＞ツールハーネスを進化させる<br>Claude codeもGemini cliとかも、これもできないんだよね。" userName="FergusArgyll" createdAt="2025/07/14 16:10:12" color="#38d3d3">}}




{{<matomeQuote body="長期的にはCursorやVS CodeみたいなIDEが勝つと思うぜ。若い世代が育ってくるからな。でも短期的にClaude CodeみたいなCLIツールが流行ってるのは、ガチ勢のデベロッパーが「初心者との最後の差別化」だと思ってるところがあるんだよ。ターミナルもLinuxも知らない奴が多いって分かってるからね。" userName="rob" createdAt="2025/07/14 16:59:46" color="#785bff">}}




{{<matomeQuote body="「半年ごとにIDEとかエディタを乗り換えて、新しいキーバインドや見た目に慣れるのが嫌だ」って言うならさ、それって実質GNU Emacsを推奨してるってことじゃん？って思うんだよね。<br>https://github.com/karthink/gptel" userName="znpy" createdAt="2025/07/14 15:43:29" color="">}}




{{<matomeQuote body="Claude Codeも好きだけど、IDEにはCLIツールよりいくつか利点があると思うよ。特にIDEは開いてるファイルやLSPの情報など、コンテキスト情報が格段に多いんだ。LLMの結果にはコンテキストがめちゃくちゃ大事だから、IDE内で動くエージェントの方が性能の天井が高いんだよ。Claude Codeも将来的にはIDE並みになるだろうけど、今はIDEの方がコンテキストをすぐにLLMに渡せて遅延が少ない。" userName="NathanKP" createdAt="2025/07/14 16:20:21" color="#38d3d3">}}




{{<matomeQuote body="Continueとか、他にもたくさん似たようなことやってる奴らがいるぜ。それより、なんでソフトウェアスタートアップではVCから金を集めるっていうひどい「モノカルチャー」がはびこってるんだ？もっと役に立つものを作って、ちゃんとした値段で売る普通のビジネスが必要なんだよ。" userName="dcreater" createdAt="2025/07/15 06:05:48" color="">}}




{{<matomeQuote body="「Cやアセンブラしか書かない老害みたいに取り残される」って言うけどさ、俺が知ってる限り、そういうスキルを持ってるアメリカの奴らはとんでもない額を稼いでるぜ。もちろん、金持ちになって引退した奴らは別だけどな。" userName="haiku2077" createdAt="2025/07/14 21:56:44" color="">}}




{{<matomeQuote body="aiderは大好きで昔から使ってるけど、最新ツール（Claude CodeやGeminiとか）の方が全体的な「利益」は大きいと思う。aiderの制約の中でモデルを動かすより、Claude4みたいにAgenticフローに優れてる方がいいしな。俺はprovider_tool + provider_LLMの方が、短期的にも長期的にもサードパーティツール + 同一モデルより優勢になると思うぜ。" userName="NitpickLawyer" createdAt="2025/07/14 16:24:01" color="#785bff">}}




{{<matomeQuote body="そうだな、でも俺たちは決して代替可能じゃないんだ。それが信頼できるキャリアを築く秘訣だよ。俺は1995年以来、すべてのリストラを生き残ってきたぜ。" userName="crinkly" createdAt="2025/07/14 22:05:16" color="">}}




{{<matomeQuote body="「IDEを使うのはダサい」っていう考え方、俺は正直バカげてると思うんだ。俺は1994年の大学時代からTurbo C IDEを使っていたし、Visual Studioは2019年まで、それ以降はVSCodeを使ってるからな。" userName="scarface_74" createdAt="2025/07/14 18:01:32" color="">}}




{{<matomeQuote body="IDE内でもエージェントループはできるし、「IDEがTUIに負ける」なんてことはないと思うぜ。むしろTUIってのは「人間が介在するけどツールが貧弱」っていう、自動化とAIの手動レビューの中途半端な立ち位置だろ。Claude Codeの無駄に可愛い囲みテキスト入力でのコピペはマジで嫌いなんだよ。ZedのAIエージェントの実装はまだClaude Codeに及ばないけど、IDEに本質的な問題があるわけじゃないしな。<br>https://zed.dev/docs/ai/agent-panel" userName="yencabulator" createdAt="2025/07/15 17:15:30" color="#785bff">}}




{{<matomeQuote body="OpenAIのCodexはIDEじゃなくてウェブ製品で、既存のワークフローにGitで統合できるのが良いって。IntelliJユーザーからすると、KiroみたいなAI-IDEは機能不足で、かなりのダウングレード。AIは開発者を置き換えるんじゃなくて補助するもの。LLMにはイライラさせられるけど、退屈な作業やバグ修正には役立つ。UXと速さが重要で、ChatGPTの即時性が好き。KiroはIDE不要者にはいいけど、俺には合わないな。" userName="jillesvangurp" createdAt="2025/07/15 09:55:30" color="#785bff">}}




{{<matomeQuote body="VSCodeでClaude Codeを使っててさ、Cmd-Escでタブを開いて、／ideでVSCodeに繋げると、Cursorみたいに使えて便利だよ。" userName="TimMeade" createdAt="2025/07/14 17:09:40" color="">}}




{{<matomeQuote body="AIツールは開発者を『置き換える』ってPMや投資家は考えてるみたいだけど、実は『強化する』のが一番なんだよね。一括で提案を受け入れるより、対話的なペアプログラミングみたいなアプローチが良いはず。Claude Codeがそれに一番近いと感じるよ。うまくプロンプトすれば、もっと対話的に作業できるんだから。" userName="cmrdporcupine" createdAt="2025/07/14 15:55:01" color="#38d3d3">}}




{{<matomeQuote body="仕様重視って考えはすごく良いね。俺もClaude Codeでテキストで仕様を管理してるよ。コード生成より、考えたことをドキュメントや図にまとめるのに価値を感じるんだ。Kiroが俺の今のやり方よりどう優れてるのか知りたいな。特別なDSLとかあるの？何ヶ月も慣れてきたプロセスを捨てるのは大変だよ。価格も、Bedrock価格にマージンが乗るのか気になるな。" userName="steve_adams_86" createdAt="2025/07/14 18:07:49" color="#ff5733">}}




{{<matomeQuote body="Kiroが優れてるかって？それは試してみて自分で判断してほしいな。個人的には要件定義や設計ドキュメントのフォーマットが好きだよ（Mermaid図もね）。価格は月額制で、インタラクション数に上限があるんだ。人が1回『プッシュ』するごとにカウントされるけど、Kiroはそこから自律的に何ターンもコードを生成するから、かなりたくさん書けるよ。詳細は https://kiro.dev/pricing/ を見てね。" userName="NathanKP" createdAt="2025/07/14 18:49:22" color="#ff5733">}}




{{<matomeQuote body="価格リンクありがとうね。プレビュー中は無料だと思ってたよ。月39ドルで3000インタラクションって多いのかな？Claude Codeの30ドルプランだとすぐに上限に達しちゃうんだ。次の200ドルティアは高すぎて、うちのNGOじゃそこまで開発にお金は出せないからね。" userName="steve_adams_86" createdAt="2025/07/14 18:55:40" color="#785bff">}}




{{<matomeQuote body="直接比較は難しいけど、3000インタラクションは本当にすごく多いよ。1回のインタラクションでKiroが3～5分コードを書き続けるイメージだね。適切なプロンプトを使えば、とんでもない量のコードが書けるはずだよ。計算すると18.75営業日分くらいになるけど、実際には一日中使い続けるわけじゃないから、月の作業には十分すぎるくらいだね。" userName="NathanKP" createdAt="2025/07/14 19:33:22" color="#ff5c5c">}}




{{<matomeQuote body="うん、まさに知りたかったことだよ。この上限に達するなんて想像できないね。CADだとちょっと高くなるけど、Claudeで制限に引っかかるのが嫌だから、もっと払ってもいいくらいだよ。俺の使い方は集中することが多いから、数日使わない時もあれば、アイデア出しや仕様検討で何度も制限に引っかかることもあるんだ。この価格設定は俺のユースケースにピッタリだね。" userName="steve_adams_86" createdAt="2025/07/14 23:32:50" color="#45d325">}}




{{<matomeQuote body="Claude Codeには20ドル、100ドル、200ドルのプランがあるんだって。" userName="SamDc73" createdAt="2025/07/14 19:23:36" color="">}}




{{<matomeQuote body="ああ、ありがとう。俺は約30CAD払ってるけど、上のプランは200USDなんだね。USDで話すべきだったよ。" userName="steve_adams_86" createdAt="2025/07/14 23:29:41" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
