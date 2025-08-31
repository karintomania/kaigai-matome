+++
date = '2025-08-24T00:00:00'
months = '2025/08'
draft = false
title = 'コーディング作業はAIに任せろ！たった100行で作る高性能エージェントの秘訣'
tags = ["AI", "プログラミング", "開発", "コード生成", "LLM"]
featureimage = 'thumbnails/orange3.jpg'
+++

> コーディング作業はAIに任せろ！たった100行で作る高性能エージェントの秘訣

引用元：[https://news.ycombinator.com/item?id=45001051](https://news.ycombinator.com/item?id=45001051)




{{<matomeQuote body="Princeton SWE-benchチームが約100行でSWE-benchでかなりうまく動くエージェントを作ったんだって。これ、面白いかもね！<br>https://github.com/SWE-agent/mini-swe-agent" userName="ofirpress" createdAt="2025/08/24 03:55:08" color="#785bff">}}




{{<matomeQuote body="いやー、これ本当にシンプルだね、シェアしてくれてありがとう。全体はこのプロンプトで動くんだってさ。<br>https://github.com/SWE-agent/mini-swe-agent/blob/7e125e5dd49...<br>プロンプト例：あなたのタスク：{{task}}。3つのバッククォートで囲んだ単一のシェルコマンドで返答してね。完了するには、シェルコマンドの出力の最初の行は’COMPLETE_TASK_AND_SUBMIT_FINAL_OUTPUT’である必要があります。" userName="simonw" createdAt="2025/08/24 05:06:56" color="#38d3d3">}}




{{<matomeQuote body="確か、default.yamlから約120行のプロンプトも必要だったはずだよ。<br>https://github.com/SWE-agent/mini-swe-agent/blob/7e125e5dd49..." userName="sireat" createdAt="2025/08/24 09:20:24" color="#785bff">}}




{{<matomeQuote body="system_templateで「何でもできる有能なアシスタント」ってあるけど、”何でも”？<br>それってAI Safetyの問題じゃないの？(笑)" userName="nivertech" createdAt="2025/08/24 07:58:19" color="">}}




{{<matomeQuote body="LLMが「できない」と思い込んで時間を無駄にしたり、誤ったやり方を選んだりするのには驚くよ。でも、基本だけにとらわれず考え方を変えれば何でもできるはず。タイムマシンが必要だとみんなが言い続ければ、革命は起きる！サラ・コナーも助かるはずだよ。" userName="greleic" createdAt="2025/08/24 13:52:23" color="">}}




{{<matomeQuote body="僕はAIが「できる」と思ってるのに、実際はできないことの多さに既に驚いてるよ。" userName="curvaturearth" createdAt="2025/08/24 23:59:50" color="">}}




{{<matomeQuote body="コード分析、再現スクリプト作成、修正、検証、エッジケーステストって記事のプロンプト、すごく役立つね。デバッグで詰まった時は、コードを分析して考えられる原因をリストアップし、確率の高い順に検証スクリプトやデバッグログで確認していくようなプロンプトを使ってるよ。" userName="meander_water" createdAt="2025/08/24 05:51:00" color="#ff5733">}}




{{<matomeQuote body="ってことは、これってバグ修正にしか使えないってことかな？" userName="afro88" createdAt="2025/08/24 19:30:34" color="">}}




{{<matomeQuote body="機能（feature）って結局は問題（issue）の一つだよ。だってその機能がまだ完成してないってことが問題なんだからね。" userName="regularfry" createdAt="2025/08/24 21:43:21" color="">}}




{{<matomeQuote body="「2. 問題を再現するスクリプトを作成する」って、それじゃあ機能実装中にAIが脱線しない？って疑問だね。" userName="afro88" createdAt="2025/08/25 11:04:49" color="">}}




{{<matomeQuote body="それってまるで受け入れテストみたいだね！" userName="regularfry" createdAt="2025/08/25 14:47:23" color="">}}




{{<matomeQuote body="問題が1つのファイル内で完結してるなら、LLMで編集するのはめちゃ簡単。でも、コードベースだとそうはいかない。開発者の組織モデルに合わせて色々散らばってるからね。" userName="faangguyindia" createdAt="2025/08/24 05:46:48" color="#38d3d3">}}




{{<matomeQuote body="またLumpersの勝ちだな！<br>https://en.wikipedia.org/wiki/Lumpers_and_splitters" userName="fmbb" createdAt="2025/08/24 07:16:09" color="">}}




{{<matomeQuote body="「特定の組織モデルに合わせて」か、そうだといいんだけどね（皮肉）。" userName="koakuma-chan" createdAt="2025/08/24 05:48:44" color="">}}




{{<matomeQuote body="いいね、でもツールが少ないのは残念。ほとんどのコードがSWE固有じゃなくて、エージェントフレームワークについてだね。僕もSWEエージェント作ったよ（趣味で）。チェックしてみて =＞ https://github.com/myriade-ai/autocode" userName="BenderV" createdAt="2025/08/24 07:27:06" color="#ff5733">}}




{{<matomeQuote body="「ツールが少ないのは残念」って言うけど、mini-swe-agentではツールの少なさが”特徴”なんだよ。どんな大きさのLLMでも動かせるのが利点だからね。" userName="diminish" createdAt="2025/08/24 07:32:31" color="#ff33a1">}}




{{<matomeQuote body="LLMのサイズと何の関係があるのか理解したいな。個人的には、適切なツールがあれば、bashみたいに何でもかんでもやらせるより、小さいモデルでも性能は上がると思う。でも、このコードがLLMの関数呼び出しのテンプレートを見せるためのものってのはわかるよ。" userName="BenderV" createdAt="2025/08/24 09:38:43" color="#45d325">}}




{{<matomeQuote body="Mini SWE Agentは学術ツールとして、単純なアイデアがどんなLLMにも通用することを示すために簡単にテストできるんだ。様々なLLMで試せるよ。小さいLLMサイズだとツール呼び出しはうまく動かないことが多いし、7GB以下でツール呼び出しできるのはQwen3 4Bくらいしか選択肢がないね。<br>「適切なツールがあれば小さいモデルでも性能が上がる」という仮説に対して、新しいMini SWE Agentは、元のSWE Agent論文（https://arxiv.org/pdf/2405.15793）の、専門ツールがより良く機能するという仮説を、非常に大きなLLM向けに反証したものなんだ。" userName="diminish" createdAt="2025/08/24 10:52:46" color="#38d3d3">}}




{{<matomeQuote body="回答ありがとう。微調整の問題だと思うよ。LLMはBashの経験が豊富だから、それらをどう扱うか分かるんだろうね。でも、提供されたカスタムツールには経験がないんだ。それに、LLMの“ツール”は現状、状態表示や動的なアクションをもっとうまく設計する必要があると思うよ。これらを考慮すると、適切なツールを持つAIは、汎用的で制御できないツールを持つAIよりもずっと性能が良いはずさ。" userName="BenderV" createdAt="2025/08/25 09:29:28" color="#785bff">}}




{{<matomeQuote body="うん、すごくよくわかるよ。一般的なコーディングエージェントの性能は、95%くらいがモデルそのものに依存してるからね。" userName="zhlmmc" createdAt="2025/08/25 03:02:09" color="#785bff">}}




{{<matomeQuote body="自分のコードベースで動かしてみた結果はどうだった？どんな感じだったか教えてくれると嬉しいな。" userName="Teever" createdAt="2025/08/24 07:13:02" color="">}}




{{<matomeQuote body="すごく似た“ハウツーガイド”がここにあるよ: https://ampcode.com/how-to-build-an-agent。Thorsten Ballが書いたんだ。Ampは全体的にすごく面白いよね、もう隠れた名作ってわけじゃないけど（笑）。Agenticなコーディングに関するツールが増えるのはいいね。きっと将来は、ソフトウェアスイートの一部にもなるだろうし。" userName="johannesboyne" createdAt="2025/08/24 07:30:54" color="#ff5c5c">}}




{{<matomeQuote body="なるほどね、著者がAmpで働いてるって言うなら納得だわ。" userName="campbellbell" createdAt="2025/08/24 07:51:59" color="">}}




{{<matomeQuote body="これ、前のよりずっといいね。ありがとう！" userName="Revisional_Sin" createdAt="2025/08/24 17:39:08" color="">}}




{{<matomeQuote body="GhuntleyもAmpで働いてるんだよ。" userName="manojlds" createdAt="2025/08/24 08:24:54" color="">}}




{{<matomeQuote body="写真って普通1000語の価値があるっていうけど、この記事の画像は99.6%オフってどういうこと？何なんだこれ…？全然役に立たないじゃん。" userName="akk0" createdAt="2025/08/24 08:34:09" color="">}}




{{<matomeQuote body="これ、カンファレンスワークショップのスライドで、中身は発表の文字起こしなんだ。" userName="ghuntley" createdAt="2025/08/24 08:39:22" color="">}}




{{<matomeQuote body="公開された記事として見ると、これは実装の詳細が漏れてるみたいだね。" userName="akk0" createdAt="2025/08/24 08:57:48" color="">}}




{{<matomeQuote body="他の人が自分の時間を使ってやってくれたことに感謝するべきだね。恩恵を受けるんだから、何も要求しちゃダメだよ。" userName="mg74" createdAt="2025/08/24 11:45:47" color="">}}




{{<matomeQuote body="批評は、それを読むみんなが学び恩恵を受けるためにするんだ。だから価値があるの。作者も、他の読者も得るものがある。「テキストスライドに文字起こしを挟むの、HNで不快だったの思い出したからやめよう」みたいにね。" userName="crazygringo" createdAt="2025/08/24 13:58:00" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="テキストスライドと文字起こしの組み合わせは普段は良いんだけど、これはほとんどのスライドが4単語しかなくて、文字起こしも同じ単語の繰り返しなんだよ。" userName="jsnell" createdAt="2025/08/24 23:20:47" color="">}}




{{<matomeQuote body="この記事の筆者はAIやエージェントの成功で大いに利益を得る立場の人だ。真の信者みたいだから非難じゃないけど、詐欺師も同じ行動をするだろうね。" userName="aiaizbba" createdAt="2025/08/24 15:19:02" color="">}}




{{<matomeQuote body="ghuntleyの投稿はいつも楽しみにしてて、特に.NET関連の貢献には感謝してるんだけど、今回のフォーマットは気が散って読みにくかったな。ライブ版は知らないけど、スライドデッキのフォーマットも多分そうだろうね。1スライド2～4単語じゃ、アイデアは伝わらないよ。" userName="JamesSwift" createdAt="2025/08/26 00:13:57" color="#ff33a1">}}




{{<matomeQuote body="ClaudeやChatGPTのツール利用の裏側を誰か教えてくれる？APIで「ツール」が提供されて、ツール呼び出しを求める応答が返ってきて、僕らが実行して結果を送り返すんだよね。でもモデルはテキストベースだから、どうやってAPI応答に変換してるんだろう？ファインチューニングでツール呼び出しを特定のブロックに入れてて、それをサーバーが理解してるのかな？この仕組みや内部の区切りトークンについてドキュメントはある？ユーザーのテキストがそれを邪魔しないように、どうやってるの？" userName="losvedir" createdAt="2025/08/24 14:27:03" color="#785bff">}}




{{<matomeQuote body="Anthropicのツール実装に関するドキュメントはここにあるよ<br>https://docs.anthropic.com/en/docs/agents-and-tools/tool-use...<br>モデルは「テキスト」ベースじゃなくて「トークン」ベースだってことを誤解してるね。コンパイラがコードじゃなくトークンを使うように、出力には単語だけでなくメタデータも含まれるんだ。" userName="jedimastert" createdAt="2025/08/24 14:49:06" color="#38d3d3">}}




{{<matomeQuote body="LLMとやり取りできるのはトークンだけなんだ。ツール呼び出しは特殊なトークンとAPIレイヤーを使ってて、ツール名や引数も渡すんだね。モデルはこれを解析して、ツールからの結果も特殊トークンで処理する。APIレイヤーがユーザーが特殊トークンを挿入するのを防いでるらしいよ。最近のモデルがツール呼び出しに強いのは、ファインチューニングをたくさんしてるからだね。特定のツール（Claude Codeが使うツールとか）に特化したファインチューニングもされてるみたい。これが全部うまくいくのは驚きだけど、ファインチューニングがめっちゃ大事なんだ。" userName="libraryofbabel" createdAt="2025/08/24 15:47:37" color="#785bff">}}




{{<matomeQuote body="ツール呼び出しのファインチューニングって、俺の知る限りはまさにその通りだと思うよ。モデルは答えに確信がない時や指示された時にツールを返すように訓練されてるんだ。汎用的なツール訓練と、ツール固有の訓練があるね。例えばgpt-ossは検索ツールをすごく使うし、Anthropicはtext_editorやbashみたいな既知のツールを文書化してる。これらはただの汎用ツール利用より深い意味合いで訓練されてるんだろうな。全体的にちょっと脆いけど、ツール呼び出しは特殊トークンとかトークン列でインバンドシグナルされてるよ。" userName="the_mitsuhiko" createdAt="2025/08/24 15:19:27" color="#ff33a1">}}




{{<matomeQuote body="Bashツール以外に、なんで他のツールが必要なんだろう？<br>ファイルリストとかリポジトリ検索、ファイル編集とか、全部Bashでできそうじゃん？<br>これって https://news.ycombinator.com/item?id=45001234 で示されてることなのかな？" userName="normie3000" createdAt="2025/08/24 05:51:08" color="#785bff">}}




{{<matomeQuote body="正直、Bashツールだけでもいけるし、俺もそれで成功した経験はあるよ。エージェントからツールを取り上げて、どれだけクリエイティブに使うかを見るのは面白いんだ。でもね、他のツールを与えた方がパフォーマンスが上がる理由の一つは、SonneでこれらのツールについてRL（強化学習）がされてるからなんだ。モデルはツールの使い方を理解してるし、トークン効率も良いし、アクションの実行もずっと成功しやすいんだよ。Bashツールはね、時々Bash独自の表現で混乱したり、引数のエスケープが間違ったり、空白の扱いがうまくいかなかったりするんだ。" userName="the_mitsuhiko" createdAt="2025/08/24 07:43:54" color="#45d325">}}




{{<matomeQuote body="「モデルはこれらのツールの仕組みを理解していて、トークン効率も良く、一般的にそれらのアクションをより成功裏に実行する」って話、面白いね！<br>でも、元の記事の例ではそうは見えなかったんだけどな。例えば、`list_files`ツールを使って、JSON結果に`README`が含まれているか確認するのと、`bash [ -f README ]`を使うのと比べてさ。" userName="normie3000" createdAt="2025/08/24 09:05:15" color="#ff5c5c">}}




{{<matomeQuote body="その名前のツールに対する訓練はないよ。でも、パラメータが単なるパスで、それがかなり基本的なツールだから訓練は必要ないだろうね。<br>一方、Bashコマンドを実行する方法を知るにはBashを知る必要があるんだ。BashはClaudeモデルにとって既知のツールだし [1]、テキスト編集もそうだよ [2]。それらをツールリストで参照することになってるんだけど、少なくとも俺のテストでは、「bash」っていうツールを呼んだ途端、Claudeはそのツールの目的についてたくさんの仮定を置くんだ。" userName="the_mitsuhiko" createdAt="2025/08/24 15:13:52" color="#ff5733">}}




{{<matomeQuote body="Bashツールが、例えばBashismや引数のエスケープ、空白の扱いなどで混乱することがある、っていうのは、この返信で唯一ためになった文章だったよ。この調子でもっと詳しく説明してくれると嬉しいな。すごく重要な質問だったからさ。" userName="dotancohen" createdAt="2025/08/24 08:25:26" color="#ff33a1">}}




{{<matomeQuote body="別々のツールにする方が、全部Bash経由にするよりシンプルだよ。もし全部Bash経由だと、承認のいらない安全なコマンド（ファイルリストとか）と、承認が必要な危険なコマンドを区別する方法が必要になっちゃうんだ。ファイルリストを別ツールにすれば、エージェントがプロジェクトディレクトリ外のファイルをリストアップしないように強制することもできるしね。" userName="zarzavat" createdAt="2025/08/24 06:43:45" color="#785bff">}}




{{<matomeQuote body="承認のいらない安全なコマンドと、承認が必要な危険なコマンドを分ける必要があるって話、すごく説得力があるね、ありがとう！" userName="normie3000" createdAt="2025/08/24 09:02:24" color="#ff5c5c">}}




{{<matomeQuote body="うん、コーディングエージェントはBashツールとEditツール（これは正直、ちょっと任意だけど、ないとすごく非効率になる）だけでも動かせるだろうね。試したことはないけど、コード検索機能では苦労するかもしれないな。適切なプロンプトを与えれば可能だよ。例えば、LLMに「ソースコードを検索する必要があるなら、Bashツールでripgrepを使って」ってプロンプトするだけでいいんだ。" userName="ghuntley" createdAt="2025/08/24 12:16:01" color="#ff5733">}}




{{<matomeQuote body="Edit toolって必須じゃないだろ？<br>patchとbash toolでソース編集できるし、効率が悪いってどこが？って疑問だよな。" userName="normie3000" createdAt="2025/08/24 18:02:15" color="">}}




{{<matomeQuote body="人間だってshellですべてできるのに、なんでIDEが必要なんだ？<br>インターフェースは、必要な情報と取れるアクションを教えてくれるもんだろ。" userName="BenderV" createdAt="2025/08/24 06:57:50" color="#ff5733">}}




{{<matomeQuote body="もっと良い例え話があるな。<br>夫婦二人の家に信頼できる車が3台あるのに、積載量も燃費も悪い、オフロード性能も最高速度も劣る4台目の車が必要か？って話だよ。" userName="normie3000" createdAt="2025/08/24 09:10:56" color="">}}




{{<matomeQuote body="これは「3.2 How to design good tools？」で説明されてるよ。<br>LLMが細かいクリックやタイピングを何回もする手間を省いて、作業に集中させるためなんだ。<br>かわいそうなモデルを助けてやれよ！" userName="kissgyorgy" createdAt="2025/08/24 08:03:44" color="#45d325">}}




{{<matomeQuote body="この引用元がどこか分からないな。<br>リンクされてる記事には載ってないみたいだけど。" userName="normie3000" createdAt="2025/08/24 09:00:48" color="">}}




{{<matomeQuote body="Bash tool以外のツールが必要なの？<br>俺の予想だけど、最初は限られたツールから始めて、後からbashも使えるって気づいたんじゃないかな。" userName="faangguyindia" createdAt="2025/08/24 07:32:41" color="">}}




{{<matomeQuote body="今さらだけど、記事ありがとう！AgentのループやLLM、プロンプトのアイデアは良かったし試したい。<br>でも、AI compassとかAgentic/Non-Agentic LLMとか、怪しい概念が多くて「詐欺か？」って警戒しちゃうんだ。<br>1単語スライドもどうかと。<br>学べたけど不信感もある、正直な感想だね。" userName="pnt12" createdAt="2025/08/25 09:18:46" color="#38d3d3">}}




{{<matomeQuote body="トークンをループに投げ続ければ、Agentが手に入る。<br>これって「お金」のことだよな？<br>「トークン」を「お金」に置き換えれば、まさに「お金をループに投げ続ければ、Agentが手に入る」ってことだろ。" userName="codingdave" createdAt="2025/08/24 12:02:05" color="#38d3d3">}}




{{<matomeQuote body="誰が「トークンはお金」なんて言ったんだ？<br>ローカルモデルもどんどん良くなってるし、今は最高の結果のためにトークンを買う必要があるけど、将来はそうじゃないかもだろ。" userName="ghuntley" createdAt="2025/08/24 12:07:09" color="#785bff">}}




{{<matomeQuote body="ローカルモデルだってタダじゃないよ、ベンダーよりは安いけどね。オフグリッドで電気も無料なら別だけどさ。無料枠もあるだろうけど、結局トークンにはお金がかかるんだ。" userName="codingdave" createdAt="2025/08/24 14:35:36" color="#45d325">}}




{{<matomeQuote body="「オフグリッドで電気も無料なら別」って部分で笑っちゃった！著者の別の記事、https://ghuntley.com/internet/ を貼っとくね。ソーラーパネルあるのか分からないけど、たぶん持ってるんじゃないかな？" userName="JamesSwift" createdAt="2025/08/26 00:10:47" color="">}}




{{<matomeQuote body="「ローカルモデルはかなり良い」って言うけど、要約とか翻訳にはいいけど、コーディングエージェントやAIスタートアップの90%は結局API使ってトークン買ってるんだよ。まるで意味不明なエラーを直すためにトークンを無駄遣いする「バイブコーダー」ってAI企業のカモにスロットマシンを回させてるのと一緒だね。" userName="rvz" createdAt="2025/08/24 12:22:55" color="#ff5733">}}




{{<matomeQuote body="エージェントの作り方を書くより、そのエージェントが作ったプロジェクトを一つ見せてよ。" userName="Western0" createdAt="2025/08/24 06:59:50" color="#38d3d3">}}




{{<matomeQuote body="自分でエージェントを作って、ここでHNの「Show HN」として共有してくれたら嬉しいな。" userName="ghuntley" createdAt="2025/08/24 12:08:21" color="#38d3d3">}}




{{<matomeQuote body="このエージェントは何か完全に作ったの？これはこういう記事をHNに投稿するなら当然答えられるべき、すごく分かりやすい質問だよ。" userName="nickthegreek" createdAt="2025/08/24 13:30:22" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="シェアしてくれてありがとう。あと、荒らしは無視しなきゃダメだよ。" userName="chrisweekly" createdAt="2025/08/24 12:47:04" color="">}}




{{<matomeQuote body="画像ばっかりで全然読みにくいんだけど…クソみたいなスクロールシミュレーターかよ。" userName="dangoodmanUT" createdAt="2025/08/24 15:58:43" color="">}}




{{<matomeQuote body="「仕事がなくなる」って不安は目の前に迫ってる。LLMが出る前から鬱と闘ってる。「嘘つきな出力を監視するのにLLMと偽のガードレールを使う」なんてひどいシステム臭がするね。みんなやってるのは知ってるし、俺もコーディングエージェントは書いたけどさ。でもなんでこのページは洗脳みたいなオーウェル的な繰り返しデザインなの？<br>そんなのが必要だと感じられるなら、俺たちは常識を乗り越えなきゃいけない。巨人の肩に乗るつもりでコーディングエージェントを喜んで書くのかもしれないけど、みんな知ってるんだ、俺たちが作ってるのはテクノロジー版の覚せい剤帝国だってね。" userName="wslomo" createdAt="2025/08/24 13:29:02" color="">}}




{{<matomeQuote body="ドイツでは原子力みたいな良いものでも、1980年代に絶大な力を持っていた業界ロビーに逆らって止められたよ。IP盗用AIみたいな悪いものも止められるし、人々はどんどん監視の目を光らせて、いつか組織化されるだろうね。" userName="bgwalter" createdAt="2025/08/24 15:35:57" color="">}}




{{<matomeQuote body="誰か、Oracle、Agent、高安全性、低安全性の軸について説明してくれない？" userName="russfink" createdAt="2025/08/24 12:57:25" color="">}}




{{<matomeQuote body="メタコメントはしたくないけど、これは最近見たブログ記事の中でも最悪なAIスロップ入りプレゼンテーションだね。なんでAI生成画像とか、箇条書きで済むことが全部個別の画像になってるの？読みにくいし、alt-textもないからアクセシビリティも悪いよ。カンファレンス発表が元なら、そのままの形式で載せてよ。" userName="hobofan" createdAt="2025/08/24 08:06:08" color="#45d325">}}




{{<matomeQuote body="うわー、これ読めないね。イライラしてきて、PCの電源ボタン押す前にページ閉じちゃったよ :)" userName="gregrata" createdAt="2025/08/24 08:10:40" color="">}}




{{<matomeQuote body="EdgeとChromeのオンデバイスモデル、phi4-miniとGemini Nanoで試してみたけど、こんな小さいモデルでも驚くほどよく動いたよ。URL: https://ryanseddon.com/ai/how-to-build-an-agent-on-device/" userName="ahrjay" createdAt="2025/08/24 12:35:26" color="#ff5733">}}




{{<matomeQuote body="この種のコンテンツ、あのすごく不快な解説なしで欲しいな。ハウツーじゃなくてプロパガンダを読んでる気分になったよ。" userName="overgard" createdAt="2025/08/25 02:50:13" color="">}}




{{<matomeQuote body="個人的には、この問題領域に対する見方がすごく単純だと思うね。関数をたくさん追加するのはいいけど、スナップショット（Gitでの作業とか）、プロセスとネットワークレベルのサンドボックス化、プロンプトエンジニアリング、行き詰まりの検出、より良い解決策のための並列ソルバーを使ったモデル切り替えなんかはどう？こういうことがコーディングAgentを信頼できるものにするんだよ、関数宣言だけじゃなくてね。" userName="_pdp_" createdAt="2025/08/24 11:34:17" color="#38d3d3">}}




{{<matomeQuote body="それは第3弾に含まれるよ。俺はこういうコーディングAgentを仕事で書いてるんだ。基本から始める必要があるんだよ、だって皆が職場で機能を自動化するために知るべきなのは基本だからね。それはコーディングAgentじゃないかもしれないけど。このワークショップは、例えばデータエンジニアリングカンファレンスで発表されたものなんだ。" userName="ghuntley" createdAt="2025/08/24 12:06:04" color="#785bff">}}




{{<matomeQuote body="コーディングエージェントを作るには、まず明確な目標を立てて、AIをうまく使って、フィードバックをもとにどんどん改善していくのが大事だよ。簡単なタスクから始めて、徐々に規模を大きくしていくといいよ。" userName="Tewboo" createdAt="2025/08/24 08:10:22" color="#ff5733">}}




{{<matomeQuote body="うん、ベースとなるコーディングエージェント（ワークショップで学んだようなやつね）ができたら、それを使って別のエージェントでも何でも作れちゃうんだ。その核からスタートして、どんどん発展させていけるから、何でも構築可能だよ。" userName="ghuntley" createdAt="2025/08/24 12:19:03" color="">}}




{{<matomeQuote body="僕が引っかかるのは、このエージェントデザインのスタイル、つまりすごく大きな自律性を持たせるのが、デバッグで自己修正できるコーディング作業では理にかなってるってこと。でも、他のユースケースでエージェントにここまで自律性を持たせるのが、より構造化されたフローとかLangGraphみたいなのよりも優れてるのかな？って疑問に思うな。" userName="digitcatphd" createdAt="2025/08/24 10:43:35" color="#45d325">}}




{{<matomeQuote body="コーディングエージェントのコツは、エージェントのトークンウィンドウに収まるようなタスクに注目させて、いつ「これは任せよう」って決めるかだよ。PMも全く同じ悩みを抱えているのが面白いよね。" userName="user3939382" createdAt="2025/08/24 11:41:47" color="#ff5733">}}




{{<matomeQuote body="うん。必要なのは、方向性を決めてあげて、あとは追い風を吹かせてあげることだよ。" userName="ghuntley" createdAt="2025/08/24 12:18:01" color="">}}




{{<matomeQuote body="Claude Codeに匹敵する、ollamaやopenrouterみたいなLLMと連携できる最適なCLI（非インタラクティブオプション付き）って何？aiderはファイルを見つけられないし、オープンソースのGeminiはダメだった。Opusと組み合わせたらClaude Codeみたいに使える良いCLIはないかな？" userName="anonzzzies" createdAt="2025/08/24 09:04:30" color="#ff5733">}}




{{<matomeQuote body="Opencodeはかなり良いし、君のニーズを満たせるはずだよ。一つ言っておきたいのは、Geminiは今エージェントとしてはあまり良くないってこと。GeminiはツールコーリングLLMとしては微妙で、ただのオラクルって感じだからね。詳しい情報はこちら→ https://ghuntley.com/cars/" userName="ghuntley" createdAt="2025/08/24 12:11:17" color="#ff33a1">}}




{{<matomeQuote body="あんまりたくさん試してないけど、LLM cliは悪くないと思うよ。" userName="akdev1l" createdAt="2025/08/24 09:07:19" color="">}}




{{<matomeQuote body="細かいこと言って悪いけどさ。著者がシーケンス図って呼んでるやつ、あれは違うよ。フローチャートだよ。" userName="loquisgon" createdAt="2025/08/24 16:40:48" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
