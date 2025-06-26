+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'Claude Code使ってたら突然停止？利用上限をリアルタイム監視して回避する方法見つかったぞ！'
tags = ["Claude Code", "利用状況監視", "リアルタイム", "AI", "プログラミング"]
featureimage = 'thumbnails/red2.jpg'
+++

> Claude Code使ってたら突然停止？利用上限をリアルタイム監視して回避する方法見つかったぞ！

引用元：[https://news.ycombinator.com/item?id=44317012](https://news.ycombinator.com/item?id=44317012)




{{<matomeQuote body="俺さ、Claude Code使ってて途中で利用上限にぶつかるのがめっちゃ嫌だったんだ。どれくらい使ってるかすぐに見る方法なかったから、ちっちゃいローカルトラッカーを自分で作ってみたよ。プロンプトと補完の利用量をリアルタイムで教えてくれるし、セッション終わる前に上限に達するか予測もしてくれるんだ。完全にローカルで動くから、認証とかサーバーとかいらないよ。ProとかMax×5、Max×20みたいなプリセットもある。もしプランが違ったらJSONをちょっと書き換えればいいよ。GitHubはこちら: https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor<br>これのおかげで「あれ？なんで止まった？」って瞬間が何度か回避できたけど、まだ荒削りなんだ。フィードバックとかバグ報告、プルリクとか大歓迎だよ！" userName="Maciej-roboblog" createdAt="2025/06/19 09:46:43" color="#45d325">}}




{{<matomeQuote body="このアイデア、すごく良いと思う！Claudeって利用状況が分かりにくいのが frustrating なんだよね。Claude codeのキラー機能って、デスクトップアプリより context と limits を管理するのに役立つツール（compact と残り %）あたりだと思うけど、まだ十分じゃない。<br>アドバイスできるとすれば、プロジェクトの ReadMe で絵文字使いすぎなのが（少なくとも俺にとっては） unprofessional に見えるってことかな。AIがちゃんと babysit されてないんじゃないかって心配になるんだ。まあ、これはあくまで俺の意見だけどね。" userName="loufe" createdAt="2025/06/19 13:47:48" color="">}}




{{<matomeQuote body="俺がソフトウェアの世界に入った頃なんて、コードベースに絵文字使ってるの見つかったら精神病院に送られるレベルだったよ。時代は変わったね。今は context を視覚的に整理するのに役立つから、普通に絵文字使うよ。Code は今やたくさんの絵文字があって、俺を happy にしてくれるね。" userName="oc1" createdAt="2025/06/19 13:52:40" color="">}}




{{<matomeQuote body="このコードは pure vibe-coding スタイルで書いたよ — ほとんど遊びでね。<br>IT業界で10年くらい経験積んでる俺でも、完全に同意するよ。こんな1000行の main file なんて、secure facility に閉じ込めるべきだね。<br>でもさ — stupid だけど works するなら、ain’t stupid なんだよ。" userName="Maciej-roboblog" createdAt="2025/06/19 14:09:54" color="">}}




{{<matomeQuote body="ReadMe が typical AI verbal diarrhoea で、たくさんの言葉を使ってて何も言ってないのが hurts ね。もっと concise にするように頼むべきだよ。<br>別のコメントだけど、最初に plan を聞いて config file に覚えておくようにした方が良くない？変更する方法の注釈付きでさ。cmd line variables に頼るより。<br>あと、local computer から timezone を pick up できるべきじゃない？なんで Poland の fixed timezone に”default”するの？" userName="mattmanser" createdAt="2025/06/20 07:54:23" color="#ff5733">}}




{{<matomeQuote body="若い会社や小さい startup の current aesthetic って感じがすごくするね。たぶん Notion の影響が強いんじゃないかな。俺の今の会社では、list や page や calendar invite を作るのに emoji を選ばない人なんていないよ。" userName="partdavid" createdAt="2025/06/19 17:33:12" color="">}}




{{<matomeQuote body="2022年までは cool だったよ。それから LLM が everywhere にこれらの emoji を injection し始めて、code/doc smell の chief marker になったね。" userName="adastra22" createdAt="2025/06/19 18:20:32" color="">}}




{{<matomeQuote body="AI coding のために entirely designed された software に関するコメントで、こういうこと言うのは ironical だね。" userName="wredcoll" createdAt="2025/06/19 17:25:23" color="">}}




{{<matomeQuote body="無料アプリ使っといてプロじゃないとかウケるｗ Microsoft製じゃないし、無料でGitHubで公開してるアプリなのに、何の理由もなく人のプロジェクト叩くとか図々しいっての。" userName="cchance" createdAt="2025/06/19 23:21:35" color="">}}




{{<matomeQuote body="人間がちゃんとコード読んで確認するAIコーディングと、コード見ないで動くまでプロンプトガチャるだけのVibe Codingはマジで別物だよね。" userName="lukan" createdAt="2025/06/19 18:11:22" color="">}}




{{<matomeQuote body="マジで同意。Andrejの定義は分かりやすかったし、俺も経験上、AIの使い方は完全に別世界だって思うよ。" userName="loufe" createdAt="2025/06/19 19:28:46" color="">}}




{{<matomeQuote body="実際のコード見てみ？ たった400行のPythonファイルで、ただ https://github.com/ryoppippi/ccusage をラップしてるだけだよ。だから、まあ、可能だろうね。" userName="youcefb" createdAt="2025/06/19 19:40:48" color="#ff5733">}}




{{<matomeQuote body="うん、俺も気づいた。こんなのが高評価されてるのヤバいね。コード全然読んでない、Vibe Codingって感じ。ハードコードとかsleep(3)とかアンチパターンだらけ。<br>GitHubリポジトリもっと信用してたけど、気をつけなきゃ。面白いのは、今はREADMEの絵文字が多いほどヤバいってのが指標かもｗ" userName="radicality" createdAt="2025/06/20 00:09:16" color="#38d3d3">}}




{{<matomeQuote body="このコードはマジでVibe Codingスタイル、ほぼ趣味だね。IT歴10年だけど、こんな1000行のメインファイルは安全な施設に鍵かけるべきってマジ同意。<br>まあ、たとえアホらしくても、動くならアホじゃないってね。" userName="Maciej-roboblog" createdAt="2025/06/20 08:12:22" color="">}}




{{<matomeQuote body="俺がAIでPRとかREADME書かせる時のコツは、プロンプトに「簡潔に、飾りっ気なく、絵文字なし」って足すこと。これで絵文字だらけのだらだらしたやつがマシになるよ。まあ、人によるけどね（YMMV）。" userName="danielbln" createdAt="2025/06/19 18:34:44" color="#45d325">}}




{{<matomeQuote body="参考までに、俺の過去の最大セッション上限は337,492トークンくらい。Max20プランで99% Opus使ってるよ。<br>5月27日からClaude Code使い始めて合計1,374,439,311トークン使ってて、3397.34ドル相当だって。" userName="joshmlewis" createdAt="2025/06/19 17:43:19" color="#ff33a1">}}




{{<matomeQuote body="俺もMax20プランで2100ドル相当くらいだよ。APIでめっちゃ儲けてんの？ それとも赤字なの？<br>毎日使ってるけど、別に使いすぎてる気もしないんだよね。" userName="WXLCKNO" createdAt="2025/06/19 20:52:44" color="#45d325">}}




{{<matomeQuote body="俺もこれずっと気になってたんだよね。ポッドキャストで平均利用は1日6ドルくらいって言ってたけど、マジかよ？<br>もしそうなら、Proとか上位プランの契約者がたくさんいて、それで帳尻合わせてんのかもね。" userName="joshmlewis" createdAt="2025/06/19 21:02:01" color="#ff33a1">}}




{{<matomeQuote body="Latent Spaceだよ。“Claude CodeはSonnetをコーディングで使うのに一番ダイレクトな方法なんだよね。他のプロダクトみたいに隠されたプロンプトや最適化を通さないから、すぐにそう感じるはず。だって、ユーザー1人あたりの平均支出がClaude Codeだと1日6ドルなのに、Cursorとかだと月20ドルだし。Anthropicの中には、1日で1,000ドル以上使ったエンジニアもいるらしいよ！”<br>リンク：[https://www.latent.space/p/claude-code](https://www.latent.space/p/claude-code)" userName="brianjking" createdAt="2025/06/20 14:05:58" color="#45d325">}}




{{<matomeQuote body="うん、Latent Spaceのポッドキャストだったと思うよ。" userName="joshmlewis" createdAt="2025/06/20 03:46:01" color="">}}




{{<matomeQuote body="APIはめっちゃ儲かるじゃん笑 Deepseekの人たちが、大手は儲かってないっていうのはデタラメだって言ってたのには理由があるんだよ。研究は高いけど、推論はそうでもない。Sam Altmanがチャットクライアントの応答あたりの価格について言及したことからもわかるよ。" userName="cchance" createdAt="2025/06/19 23:23:04" color="">}}




{{<matomeQuote body="まさにそうだよね。昨日ちょうど料金計算してたんだけど、彼らがやってること意味わかんないよ。完全にデタラメ。" userName="arnavpraneet" createdAt="2025/06/20 07:23:30" color="">}}




{{<matomeQuote body="1. Opusでレートリミットに当たらないの？2. Sonnetと比べて遅いと思わない？" userName="sagarpatil" createdAt="2025/06/20 06:40:26" color="">}}




{{<matomeQuote body="知る限りでは、実際にレートリミットに当たったことは一度もないよ。「Opus利用制限に近づいています」って警告は2、3回出たことあるけど、ヒットはしてない。" userName="joshmlewis" createdAt="2025/06/22 20:58:26" color="">}}




{{<matomeQuote body="これはすごいね。僕は同時に複数のClaude Codeセッションを動かせるUIツール(https://github.com/stravu/crystal)を作ったんだけど、複数の機能に同時に取り組んでたら、アカウントの最大制限に達しちゃったんだ。だいたいリセットに近いタイミングだけど、いつ休憩すべきか知れるのは良いね。" userName="jbentley1" createdAt="2025/06/19 12:20:31" color="#785bff">}}




{{<matomeQuote body="これは素晴らしい。僕はClaude Codeをかなり使うんだけど、gitがあまり得意じゃないから、worktrees + multiple sessionsで自分のツールを書くのはちょっと怖かったんだ。正直言うと、これも少し使うのが怖いかな。理想的には各worktreeをコンテナで動かせたらって思うんだけど、それだとここまでスムーズに動かすのはかなり難しそう。" userName="furyofantares" createdAt="2025/06/19 18:44:01" color="#45d325">}}




{{<matomeQuote body="GitHubで僕に書いてくれるか、またはイシューを作成してください https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor... そして、あなたのツールを僕の利用モニターと統合するのを試しましょう。" userName="Maciej-roboblog" createdAt="2025/06/19 12:41:35" color="#ff5733">}}




{{<matomeQuote body="超クール！Proの制限って本当に7kトークン？7kワード以下ってこと？もっと使えてる気がするけどな。普通のチャットならすぐ上限いきそうだけど、なったことないんだ。これってClaude Codeだけの制限？Claude Codeはまだガッツリ使ってないんだよね。" userName="jjice" createdAt="2025/06/19 15:14:36" color="">}}




{{<matomeQuote body="Proは月20ドルのプランで、最近Claude Code使えるようになったんだよな...でも、数回のクエリでレート制限になったって聞いたから...俺的にはそんなもんだと思う。チャットはClaude Codeとは別の制限があるらしいね。" userName="rgbrenner" createdAt="2025/06/19 16:53:38" color="#ff5c5c">}}




{{<matomeQuote body="それ絶対違うだろ。俺はPro入ってるんだよ。経験ある開発者にはまだクソだって意見を確信したくてね。まあ、効果ありすぎで計画は失敗したけど。俺の経験だと、1プロンプトで3-6kトークン、だいたい3時間使ってると制限かかる。制限は300kに近いと思うよ、10kよりはね。チャットも制限は別じゃない。Claude Codeで制限かかったらウェブサイトも使えない。1プロンプト7kの制限かな？分からないけど。" userName="ffsm8" createdAt="2025/06/19 17:34:02" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="大量のコードを解析させるとすぐ制限になるね。もっとピンポイントに、簡潔だけど正確な情報と指示をあげると、長く使えるよ。" userName="cmrdporcupine" createdAt="2025/06/19 22:18:31" color="#785bff">}}




{{<matomeQuote body="俺も同じやり方。リクエストされた機能に関係あるファイルだけを指定することもあるよ。" userName="vitro" createdAt="2025/06/20 06:55:08" color="#ff5c5c">}}




{{<matomeQuote body="今、Claude Codeが処理中だよ。ステップ6/10で「Transforming… （212秒 ・ 26.1kトークン）」って表示。2時間弱前にリセットして、多分この1時間くらいはこのペースで動いてるな。" userName="blitzar" createdAt="2025/06/19 22:44:07" color="#38d3d3">}}




{{<matomeQuote body="7kなんてマジで何もないな。トライアルでも7kトークンだとファイル1、2個分だろ？もし本当にそうなら、誰がそれに金払って、augmentとか他のサービスの月250プロンプトとかを選ばないわけ？って思う。" userName="cchance" createdAt="2025/06/19 23:25:05" color="">}}




{{<matomeQuote body="augmentって知らなかったよ。でも、Claude CodeのUXって（この記事が解決しようとしてる問題は別として）大体すごく良いんだよね。だから、たぶんClaude Codeの方がUI/UX良いんじゃないかな？" userName="throwaway314155" createdAt="2025/06/20 00:42:39" color="">}}




{{<matomeQuote body="Roo Code（3.7 SonnetでCodeじゃないやつ）で試してみたけど、エージェント機能でブラウザツール使うと最初のプロンプトとか課題で多分すぐ上限にぶつかると思うよ。" userName="PeterStuer" createdAt="2025/06/20 05:53:06" color="#ff33a1">}}




{{<matomeQuote body="トークン使用量が100%にならないと時間ウィンドウが過ぎてもリセットされないのに気づいたんだけど。これって、例えば90%使ってウィンドウを越えても、そのあと残りの10%をすぐ使い切っちゃうと長い間待たなきゃいけないから問題っぽいよね。" userName="_august" createdAt="2025/06/19 22:10:21" color="#ff5733">}}




{{<matomeQuote body="うーん、これってhttps://github.com/ryoppippi/ccusageをシェルから呼び出してる以外に何か便利なことしてる？正直ちょっとガッカリだし、多分AIツールで一発で作った感ある。それに、このShow HNで実際は他のツールが全部やってるってことに言及すらしてないし。" userName="radicality" createdAt="2025/06/19 23:51:28" color="">}}




{{<matomeQuote body="すごい、これ作ってくれてありがとう！uv（https://github.com/astral-sh/uv）でもインストールできる？<br>編集：uvのインストールは `curl -LsSf https://astral.sh/uv/install.sh | sh`<br>CLIツールのNode.jsをインストールは `npm install -g ccusage`<br>クローンとセットアップは `git clone https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor.git`<br>`cd Claude-Code-Usage-Monitor`<br>Pythonの依存関係をuvでインストールは `uv add pytz`<br>`chmod +x ccusage_monitor.py`<br>実行は `uv run python ccusage_monitor.py --plan max20 --timezone America/New_York`<br>これでいけるかな。" userName="_august" createdAt="2025/06/19 20:22:44" color="#ff5733">}}




{{<matomeQuote body="もしリポジトリがproject.tomlみたいな感じでパッケージとして構成されてたら、pipx（https://pipx.pypa.io/latest/）でもっと速いワンライナーでインストールできたと思うんだ。<br>`＞ pipx install git+https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor`<br>`＞ ccusage_monitor`<br>uvにも似たコマンドがあると思うけど、uvxだっけ？ただ、uvxがpipxと同じ機能や目的を持ってるかはよく知らないな。" userName="whyho" createdAt="2025/06/20 08:14:56" color="#ff5733">}}




{{<matomeQuote body="感謝してるよ、でもFWIW（ちなみに）、pipでインストールできるものは基本的に何でもuvでも簡単（むしろもっと簡単）にインストールできるよ。" userName="throwaway314155" createdAt="2025/06/20 01:49:28" color="">}}




{{<matomeQuote body="上限にどれくらい近いか、感覚で分かるんだよね。結構正確だよ。会話がいつ最大長に達しそうかも分かるから、最後の力を振り絞って要約を生成して、新しい会話を始めて続きをやるようにしてる。皮肉なことに、こういうAIツールが私の生物時計の一部になってるんだよね。Claude以外だと、毎週水曜日はChatGPTの週次リセットがあるから、まるで新しい日曜日みたいだよ。" userName="tianqi" createdAt="2025/06/20 14:10:28" color="#ff33a1">}}




{{<matomeQuote body="やあ！僕ccusageの作者だよ！みんなが僕たちのOSSを使ってくれてるのを見るのが嬉しいな！<br>Happy vibe coding！" userName="ryoppippi" createdAt="2025/06/20 22:20:24" color="#38d3d3">}}




{{<matomeQuote body="面白いことに、ccusageのShow HN（https://news.ycombinator.com/item?id=44129432）にはコメントが一つもなかったのに、この記事のスレッドはすごい盛り上がりだね！" userName="ryoppippi" createdAt="2025/06/20 22:24:28" color="">}}




{{<matomeQuote body="今日、新しいAuto Mode（DuckDBを使う）をコミットする予定だよ。これはハードコードされたソリューションじゃなくて、機械学習を使って君の実際のトークンリミットを理解するんだ。" userName="Maciej-roboblog" createdAt="2025/06/19 10:08:49" color="#ff5c5c">}}




{{<matomeQuote body="ターミナルAgent Coders用のラッパー作ってるんだ。<br>直接読み取る方法も考えてみたら？<br>ShowHNに出す予定だけど、ベータ版に興味あるならメールしてね！" userName="robbomacrae" createdAt="2025/06/19 16:54:07" color="#ff5733">}}




{{<matomeQuote body="あー、記事の~/.claude/projects/*/*.jsonlの読み込み方について詳しく読んだよ。<br>そっか、ラッパー方式はたぶんオーバーキルだね。<br>それよりClaudeが直接使えるツールにしちゃうのはどう？" userName="robbomacrae" createdAt="2025/06/19 17:27:32" color="">}}




{{<matomeQuote body="ナイスリリース！<br>俺はOTelでチームの利用状況を時系列で監視する方法をブログに書いたんだけど、個人の開発なら君の方法の方が良いね！<br>https://ma.rtin.so/posts/monitoring-claude-code-with-datadog..." userName="martin_" createdAt="2025/06/19 16:48:32" color="#ff5c5c">}}




{{<matomeQuote body="この解決策、良いね！<br>俺もOTelをいじって、編集されてないプロンプトとレスポンスを得ようとしたんだけど、ダメだったんだ。<br>君はどんなデータが役立つか、もっと深く掘り下げた？" userName="bazhand" createdAt="2025/06/19 17:16:38" color="#ff5c5c">}}




{{<matomeQuote body="OTelのイベントロガー[0]で、編集されてないプロンプトは取れるよ。<br>でも残念ながらレスポンスは無理なんだ。<br>GitHub issueで追加をリクエストしてみたら？<br>免責事項：Anthropicの者だけどClaude Codeチームじゃないよ。<br>チームはGH issueには反応してくれるよ！<br>[0] https://docs.anthropic.com/en/docs/claude-code/monitoring-us..." userName="martin_" createdAt="2025/06/20 04:00:51" color="#38d3d3">}}




{{<matomeQuote body="https://github.com/ryoppippi/ccusage<br>これ、興味あるかもね。" userName="bazhand" createdAt="2025/06/22 09:41:02" color="#ff5c5c">}}




{{<matomeQuote body="昨日Claude Codeでめっちゃ変な経験したよ。<br>古いphpのシンプルなphtmlテーブルページを新しいdivレイアウトに変換しようとしたんだけど、うまくいかなくて、4ドルも燃やしちゃった。<br>たぶんWSLの問題かな、もうこんなことないと良いんだけど。" userName="tiku" createdAt="2025/06/19 22:56:31" color="">}}




{{<matomeQuote body="Claude Codeはちょっと学習曲線が急だよ。<br>使うときは、長めにやり取りして要件を話し合ったり、Claudeに質問を促したりする必要があるんだ。<br>それでもこういう失敗はたまに起きるよ。<br>これはすごく高価なツールで、YouTuberとかが言うほど魔法じゃないってことを覚えておこうね。" userName="throwaway314155" createdAt="2025/06/20 01:56:45" color="#ff5c5c">}}




{{<matomeQuote body="どうやって利用状況を監視してるの？" userName="alFReD-NSH" createdAt="2025/06/19 10:16:11" color="">}}




{{<matomeQuote body="~/.claude/projects/*/*.jsonl ディレクトリを見てみてね ;) <br>ハハ、これめっちゃ面白いトピックだ。<br>そのこと（json linesファイルにある会話履歴とメタデータ全部）についてブログ記事を書こうと思ってるんだけど、このアイデアどう思う？<br>面白そう？" userName="Maciej-roboblog" createdAt="2025/06/19 10:19:48" color="#ff33a1">}}




{{<matomeQuote body="へぇー、Claude Codeってデフォルトでこんなに詳細なログが出るんだね！知らなかったよ。探してみたら、このログをHTML形式に変換して見やすくする便利なツールも見つけたよ！これ見てみて→ https://github.com/daaain/claude-code-log" userName="M4v3R" createdAt="2025/06/19 10:34:44" color="#785bff">}}




{{<matomeQuote body="ハハ、それなら俺でも書けそうな記事だね。ところで、記事にするのとショート動画にするの、どっちが良いと思う？" userName="Maciej-roboblog" createdAt="2025/06/19 10:42:33" color="">}}




{{<matomeQuote body="動画を撮って、文字起こしして、記事にするってどう？俺はショート動画ほとんど見ない世代だから記事読む派だけど、記事だけだと見てくれる人逃しちゃうかもね。" userName="pbowyer" createdAt="2025/06/19 10:45:29" color="">}}




{{<matomeQuote body="確かに面白いね。ログを見れば、コンテキストでどれくらい無駄があったか分かって、利用を最適化できるかも。あと、キャッシュが使われたかどうかも検出できないかな？" userName="alFReD-NSH" createdAt="2025/06/19 11:48:53" color="#ff5733">}}




{{<matomeQuote body="うん、キャッシュの書き込みと読み込みの値は取得できるよ。それを表示する新しいフラグを追加できるから、このアイデアはリポジトリでIssue作ってくれる？→ https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor..." userName="Maciej-roboblog" createdAt="2025/06/19 12:35:28" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="このログを現在のプロジェクトフォルダに出力する方法はない？参照用にGitでコピーを保管したいんだけど。" userName="Hortinstein" createdAt="2025/06/19 10:50:51" color="">}}




{{<matomeQuote body="うん、次回のリリースでduckdbを使えば、簡単なエクスポート機能ができるようになるよ。" userName="Maciej-roboblog" createdAt="2025/06/19 12:32:57" color="#ff5733">}}




{{<matomeQuote body="俺はクレジットページを開いて時々更新してるよ。正直、トークンとかよく分からないし、お金のことしか気にしてないから。" userName="soco" createdAt="2025/06/19 11:12:03" color="">}}




{{<matomeQuote body="このツールは、Pro Max x5とかx10みたいな固定料金プラン向けで、API利用には対応してないよ。" userName="Maciej-roboblog" createdAt="2025/06/19 12:33:56" color="#ff5733">}}




{{<matomeQuote body="ありがとう！<br>マジでさぁ、使った量が簡単にわかるコマンドがあればいいのにね。<br>あと、CCがnode.jsなのにPythonが必要なのがマジ残念。<br>なんとかならんの？" userName="ed_mercer" createdAt="2025/06/19 10:45:45" color="">}}




{{<matomeQuote body="次のリリースで対応するよ！<br>パッケージも直接インストールできるようになるから待っててね！<br>楽しみにしてて！" userName="Maciej-roboblog" createdAt="2025/06/19 14:13:32" color="#38d3d3">}}




{{<matomeQuote body="Cursor使ってる人向けだけど、似たような利用状況をチェックできる拡張機能があるよ！<br>これこれ→https://github.com/Dwtexe/cursor-stats<br>チェックしてみて！" userName="mellosouls" createdAt="2025/06/19 11:13:54" color="#ff5c5c">}}




{{<matomeQuote body="この拡張機能入れたらメモリの使用量に気をつけた方がいいかも。<br>俺はこれで1.5GBくらいメモリ食われて、結局削除したんだよね。<br>環境によるかもしれないけど、一応注意ね。" userName="extropian" createdAt="2025/06/20 05:42:56" color="#ff5733">}}




{{<matomeQuote body="多分APIの料金がかかるからじゃない？<br>これは定額プランの利用を監視するためのものだね。" userName="Maciej-roboblog" createdAt="2025/06/19 14:14:14" color="">}}




{{<matomeQuote body="これ超クールじゃん！<br>アイデアいいわ。<br>ちょっと皮肉混じりだけど、セッションごとに結果出すのに使った推定電力量も表示とかできないかな？<br>機能要望っす！" userName="bilekas" createdAt="2025/06/19 12:16:21" color="">}}




{{<matomeQuote body="そのうち低炭素な開発者が生まれるかもね。" userName="TypingOutBugs" createdAt="2025/06/19 12:17:42" color="">}}




{{<matomeQuote body="まずはnpmとかnode_modulesから何とかしようぜ。<br>あれが地球温暖化の半分くらいは責任あると思うんだけど。" userName="ozim" createdAt="2025/06/19 13:12:43" color="">}}




{{<matomeQuote body="俺たち、昔はみんな低炭素な開発者だったよな。" userName="btbuildem" createdAt="2025/06/19 13:11:38" color="">}}




{{<matomeQuote body="AI登場前にWFHしてた数少ない人たちかな。<br>俺、通勤とかランチで毎日外出するのと、WFHしてAI使う場合の炭素排出量計算してみたんだけど、WFH+AIの方が圧倒的に少なかったんだよね。<br>みんなで地球救うためにも、家にいてAI使おうぜ！" userName="cdurth" createdAt="2025/06/19 13:51:26" color="#785bff">}}




{{<matomeQuote body="AI使うとCO2出るらしいよ。1000トークンで8.3gだって。<br>結構コーディングしたらどれくらい？<br>アメリカ人の1日40kgに比べたら？" userName="tln" createdAt="2025/06/19 13:29:20" color="">}}




{{<matomeQuote body="CO2の数値言われても何もできないじゃん。1日1.5kgとか言われても。<br>飛行機1回乗ったら20,000kg出るんだよ？<br>AIの排出量なんてそれに比べたらゴミだよ。" userName="KMnO4" createdAt="2025/06/19 13:42:15" color="">}}




{{<matomeQuote body="これマジでそう思うんだよね。個人がCO2数グラム減らそうとしても、船とか飛行機とか鉄道とか（これらも全体の20％以下だけど）何百トンも出してるんだよ。<br>エネルギー生産とか産業利用がほとんど。" userName="taosx" createdAt="2025/06/19 14:11:58" color="">}}




{{<matomeQuote body="そういう考え方すると、ビニール袋とか紙ストローとかリサイクルとか、環境保護のためにやってることの多くがどんだけアホらしいかわかるんだよね。<br>受け入れがたい結論になるけど。" userName="SV_BubbleTime" createdAt="2025/06/19 16:13:01" color="">}}




{{<matomeQuote body="ビニール袋とか紙ストローの話はCO2排出じゃないんだよ！<br>これは誤解。ゴミ問題、汚染、野生動物への影響の話。<br>政策担当者もずっとそう言ってるし。<br>最近ビーチ歩いたことある？" userName="cmrdporcupine" createdAt="2025/06/20 02:57:36" color="#38d3d3">}}




{{<matomeQuote body="マイストロー持ち歩けば？<br>あと、ゴミのほとんどはわざと捨てられたんじゃなくて、風で飛んでくるんだよ（特にゴミ収集日後）。<br>俺、田舎住みだけどいつも飛んできたプラごみ拾ってる。<br>根本的に生産量を減らすべき。" userName="cmrdporcupine" createdAt="2025/06/22 15:39:05" color="">}}




{{<matomeQuote body="こういう環境保護の取り組みって、破滅を防ぐための儀式みたいなもんだよね。<br>個人の習慣も積み重なるけど、気候変動に対して節約が有効かって証拠はマジで見つからないんだよな。" userName="curious_cat_163" createdAt="2025/06/19 16:35:40" color="">}}




{{<matomeQuote body="今は微量でもいいんだよ。データセンターの電力使用量が爆発的に増えてるんだから。<br>将来どんでもない量になるかも？<br>CO2じゃなくて、エネルギー消費量の増加をグラフで見たいな。" userName="bilekas" createdAt="2025/06/19 14:47:54" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
