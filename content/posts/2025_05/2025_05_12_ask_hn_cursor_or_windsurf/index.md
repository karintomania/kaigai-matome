+++
date = '2025-05-12T00:00:00'
months = '2025/05'
draft = false
title = 'Cursor vs Zed 開発者が選ぶ次世代エディタは？'
tags = ["エディタ", "AI", "プログラミング", "開発ツール", "開発環境"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Cursor vs Zed 開発者が選ぶ次世代エディタは？

引用元：[https://news.ycombinator.com/item?id=43959710](https://news.ycombinator.com/item?id=43959710)




{{<matomeQuote body="ZedはAI連携すごいね、今まで見た中で一番いいかも（仕事以外でだけど）。CursorとVSCode+Copilotはいつも遅くて不安定な感じだったけど、Zedは全然そんなことなくて、かなりちゃんとしたソフトみたい。それにGemini APIキー差し込めば無料で安く使えるし、editor’s own integrationにお金払わなくていいのが楽だね。" userName="danpalmer" createdAt="2025/05/12 05:28:16" color="#ff5c5c">}}




{{<matomeQuote body="今週Zedをじっくり試して、ここに記事書いたよ（https://x.com/vimota/status/1921270079054049476）。全体的にZedはめちゃくちゃ良くて不安定な感じもなかったけど、いくつかデフォルト設定がおかしかったり、Pythonのサポートが普段の作業でいくつか足りないところがあったりしたな。" userName="vimota" createdAt="2025/05/12 07:45:13" color="">}}




{{<matomeQuote body="ooc、どんなPythonサポートが足りなかったの？Zedどうしようか迷っててさ。" userName="sivartnotrab" createdAt="2025/05/13 16:41:35" color="">}}




{{<matomeQuote body="M4 Macbookだとリソースめっちゃ食うね。試してみたいんだけど、Macbookがフリーズしちゃってさ。<br>編集：最新の0.185.15にアップデートしたら、完全にスムーズに動くようになったよ。最高の環境に追加できたわ。" userName="submeta" createdAt="2025/05/12 07:39:44" color="#ff33a1">}}




{{<matomeQuote body="俺もZedおすすめだよ！M4 macbookからだけど、リソースはアイドル時でRAM約500MB、CPU 0%と全然食わないよ。不安定じゃないし、vimバインディング良いし、起動も速いから本当に助かってる。Cursorは速くタイプすると不安定になったり、古いPCだとauto-pairとかで問題出たんだよね。Zedの方が安定してると思うな。" userName="_bin_" createdAt="2025/05/12 08:19:40" color="#ff5733">}}




{{<matomeQuote body="うん、俺も同じ。Zedは俺のM1 Proでめちゃくちゃ効率良いよ。最近は毎日使ってるし、Pythonの環境もほぼ完璧に整ってる。" userName="drcongo" createdAt="2025/05/12 08:31:51" color="#38d3d3">}}




{{<matomeQuote body="どんなPython環境なの？" userName="greymalik" createdAt="2025/05/12 11:32:02" color="">}}




{{<matomeQuote body="俺の場合はこれが原因だったよ（https://github.com/zed-industries/zed/issues/13190）。それ以外はだいたい問題なく動いたけどね。" userName="aquariusDue" createdAt="2025/05/12 08:41:05" color="#ff5c5c">}}




{{<matomeQuote body="ollamaのローカルモデル使ってるの？それともZedのLLM？" userName="enceladus06" createdAt="2025/05/15 17:30:57" color="">}}




{{<matomeQuote body="なんでZedの人たちってUIのレンダリング時間にそんなこだわるんだろうね？UIが120FPSで表示できても、LLMからの応答に3秒もかかるなら別にどうでもいいじゃん。まあUIは綺麗で好きだけどさ。" userName="charlie0" createdAt="2025/05/18 05:19:03" color="">}}




{{<matomeQuote body="この前ChangelogのポッドキャストでZedの最新情報と新しいエージェント機能について話してたよ，ここにリンクある．" userName="brianzelip" createdAt="2025/05/12 13:58:14" color="">}}




{{<matomeQuote body="俺もZed使ってるけど，いくつか問題はあるね．でもCursorと比べられるくらいにはなってる．俺的にはVSCodeのフォークより開発ペース速い気がする．" userName="xmorse" createdAt="2025/05/12 10:50:46" color="#38d3d3">}}




{{<matomeQuote body="やっぱり主要なフォークから作らなくていいのは開発速くするのに役立つだろうね．" userName="DrBenCarson" createdAt="2025/05/12 11:56:12" color="">}}




{{<matomeQuote body="早くデバッガー出して欲しいな．それさえできれば完全に乗り換えるのに．" userName="allie1" createdAt="2025/05/12 12:05:17" color="">}}




{{<matomeQuote body="俺の環境だとZed動かないんだよね．GitHubの関連Issueも同じ問題で困ってる人が文句言いにくるだけで全然更新されてないし．" userName="frainfreeze" createdAt="2025/05/12 10:19:37" color="#38d3d3">}}




{{<matomeQuote body="Windows使ってないってこと？開発者ならそんなに珍しい提案じゃないと思うけど．" userName="Aeolun" createdAt="2025/05/12 11:35:49" color="">}}




{{<matomeQuote body="Debianの最新安定版．" userName="frainfreeze" createdAt="2025/05/13 10:58:43" color="">}}




{{<matomeQuote body="Windows？もしそうなら，ビルドすれば動かせるよ．" userName="KomoD" createdAt="2025/05/12 20:51:19" color="">}}




{{<matomeQuote body="Debianの最新安定版．" userName="frainfreeze" createdAt="2025/05/13 10:58:59" color="">}}




{{<matomeQuote body="ああ，じゃあ何が問題？俺はMintでZed使ってるけど，今のところ問題はウィンドウが見えなくなることだけだったよ（それはGPUドライバーを更新して直した）" userName="KomoD" createdAt="2025/05/13 18:01:53" color="">}}




{{<matomeQuote body="うん： https：//zed.dev/blog/edit-prediction" userName="dvtfl" createdAt="2025/05/12 06:21:10" color="">}}




{{<matomeQuote body="オープンモデル（https：//huggingface.co/zed-industries/zeta）をローカルで簡単に動かせたら最高だね（遅延対策で）．ZetaはWindsurfの補完の品質／スピードには及ばないと思う．これが彼らのビジネスモデルに反するのはわかるけど，もしかしたらこれにお金払う人もいるかもね．理論的にはローカルで動くから一番速い補完になる可能性がある．" userName="eadz" createdAt="2025/05/12 06:53:50" color="#ff33a1">}}




{{<matomeQuote body="＞ローカルで動くから一番速い補完になる可能性<br>ローカルがクラウドより遅い奇妙な時代に生きてるね．必要な計算量が膨大だからさ．ローカルハードウェアだと計算に数百ミリ秒（秒単位かも）かかるから，ネットワーク遅延の100ミリ秒なんて関係ない．例えば，7Bモデルでも，君の高価なMacや4090じゃ，8x A100sでFOSSサービングスタック（sglang）をTP=8で動かしてる箱には，遅延で勝てないよ．" userName="rfoo" createdAt="2025/05/12 13:06:40" color="#38d3d3">}}




{{<matomeQuote body="モデルをローカルで動かすのはメモリとスケジューリングの要求がすごくコストかかるんだよね．多分，代わりにCloudflare AIネットワークでホストすべきかも．これは世界中に分散されてて，より低い遅延が得られる可能性があるよ．" userName="xmorse" createdAt="2025/05/12 10:48:30" color="#ff5c5c">}}




{{<matomeQuote body="まあ，そんな感じ．品質は天と地ほど違うね（Cursorは魔法みたい，Zedはめんどくさい作業って感じ）．" userName="Aeolun" createdAt="2025/05/12 11:37:12" color="">}}




{{<matomeQuote body="同感だね．本当にZedに完全に移行したいと思ってるんだけど，コード補完はまだCursorの役立ち度や”スマート”さには全然及ばないな．" userName="atonse" createdAt="2025/05/12 13:31:35" color="#ff5c5c">}}




{{<matomeQuote body="うん，Zedに勝ってほしいけど，まだ普段使いにはなってないな．" userName="vendiddy" createdAt="2025/05/13 12:25:29" color="">}}




{{<matomeQuote body="俺はCursorをベースに，Clineをエージェントツールとして使ってる．Windsurfは未体験．Cursor＋Clineは俺にはピッタリ．<br>＊CursorのCmk-K編集やタブ補完は便利．<br>＊ClineはGemini 2.5と組むとフルエージェントワークフローが最高．アイデアを投げると計画と実装をくれる．<br>根本的に，これは俺個人の問題かもしれないし現実的じゃないかもだけど，ClineがBYOAIシステムでオープンソースなのが好きなんだ．最高のプロンプトとコンテキストで結果を出すのが目的なのに対し，Cursorは予算内で最高を目指す．これがCursor，Inc．のコスト削減努力に繋がり，最高の結果と少し対立するんだ．" userName="nlh" createdAt="2025/05/12 13:46:30" color="#ff5c5c">}}




{{<matomeQuote body="CodexとMachtiani（mct）使いなよ。どっちもOSSでmctは今日OSS化。mctは大量コードから文脈見つけるのが得意でトークン効率もいい。ローカルで動くしネットも不要。VSCodeコードベースの問題もQwen 2.5 coder 7Bだけで解決デモがあるくらい。好きなモデル使えるし、トークン使い切ることもないね。リンク：https://github.com/tursomari/machtiani" userName="machtiani-chat" createdAt="2025/05/12 21:32:49" color="#ff5c5c">}}




{{<matomeQuote body="へぇー、これすごいね。ワークフローについてもうちょっと詳しく教えてくんない？例えば、具体的にどうやってCodexと一緒に機能実装したり、バグ直したりしてるの？" userName="asar" createdAt="2025/05/13 09:51:31" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="前のコメントの質問だけど、Codexとのワークフローをいくつか教えるね。gitプロジェクト`undici`を例に。<br>1. Codexで追従: `mct ...`でパッチ適用→`codex ...`でテスト・修正。<br>2. CodexとMCTを一緒に: `codex ”$(mct ... --mode answer-only)”`でmctの提案をcodexが実装。<br>3. Codexにチャット参照: `mct ... --mode chat`でチャット保存→`codex ”See .machtiani/chat/...”`で参照・作業指示。<br>これで大体の日々の使い方は分かると思うよ。Unix哲学で何でもできる！詳細は動画で。" userName="machtiani-chat" createdAt="2025/05/13 15:21:22" color="#ff5c5c">}}




{{<matomeQuote body="これはaiderと比べてどうなの？" userName="evnix" createdAt="2025/05/13 07:01:27" color="#ff5c5c">}}




{{<matomeQuote body="aiderは使ってないけど評判は良いよ。僕は複雑な大規模リポジトリ向けを探してたのと、エージェントは高価なモデルが必要だから、Codexにスキップしたんだ。<br>mctは弱いモデルでもすごく使えるし、強いモデルだとさらに凄い。だからmct + codexでコストを抑えつつ色々できるよ。aiderもターミナルツールらしいから、mct + aiderを試してみてもいいかもね。" userName="machtiani-chat" createdAt="2025/05/13 15:28:51" color="#ff5c5c">}}




{{<matomeQuote body="GeminiのAPIに（だいたい月に）いくら払ってるの？それが「bring your own API keys」ツールに乗り換える上での主な心配事なんだ。" userName="richardreeze" createdAt="2025/05/14 10:53:34" color="">}}




{{<matomeQuote body="僕もClineが好きだよ。オープンソースだから、使ってる時にプロンプトとかツールが見れて、もっと良いエージェントの作り方を学べるんだ。" userName="masterjack" createdAt="2025/05/12 15:52:50" color="">}}




{{<matomeQuote body="Clineのエージェントの動きって、Cursor自身のより優れてるの？" userName="pj_mukh" createdAt="2025/05/12 15:29:23" color="">}}




{{<matomeQuote body="Cursorってさ、コスト抑えるためにコンテキストちょん切ってるんだよ。Clineはトランザクションごとにお金かかるからそうじゃない。だから複雑なことやらせるとClineの方がずっといいと感じるな。Cursorのチャットはエージェントモードでまだ使ってるけどね、優柔不断なんだよな俺。他の人も言ってるけど、Clineの挙動を見るのは自分でエージェントワークフロー作る時の参考になっていいね。" userName="shmoogy" createdAt="2025/05/12 20:14:21" color="#ff5733">}}




{{<matomeQuote body="＞ Cursor does something with truncating context...<br>って言ってるけど、本当に根拠あんの？Clineはたまに試したけど、Cursorより良いとも悪いとも全然思わないんだよね。" userName="nsonha" createdAt="2025/05/12 21:09:20" color="">}}




{{<matomeQuote body="これはあくまで個人的な話だから、話半分に聞いてほしいんだけどね。Cursorのチャットがすっごく長くなってコンテキストがいっぱいになると、前に話したこと『忘れちゃったり』、すでに作ったコードと違うコード作り始めたりするのを見たし、自分で体験したよ。だから彼らがチャットが大きくなったら新しいチャット始めるのを勧めるけど強制しないのは、たぶんこれが理由の一つだと思うな。" userName="nlh" createdAt="2025/05/13 14:30:42" color="#38d3d3">}}




{{<matomeQuote body="みんなが大変だって言ってる長いチャットの問題、俺にはそんなにないんだよね。大体10ターン以内にはやりたいこと終わるし。終わんなくても、前回の発見を加えてまた会話始めたいって自然に思うだけなんだ。そしたら今の状態を受け入れる（か全部捨てるか）して、新しいチャット作る。たぶん言い方も変えるかな。タスクが自己完結してるのが助かってる部分もあるけど、エンジニアとしてはどんなタスクも分割して考えるのが当たり前って感じだしね。" userName="nsonha" createdAt="2025/05/14 11:59:11" color="">}}




{{<matomeQuote body="これ自分でめちゃ簡単に確認できるぜ。エージェントがファイルを”見る”時、何行見るか言ってくれるんだけど、ほとんどいつもトップの0-250行とか0-500行なんだ。モデルとかMAXモード使うかにもよるかもしんないけどね。" userName="dimitri-vs" createdAt="2025/05/13 01:42:16" color="#ff5c5c">}}




{{<matomeQuote body="エージェント機能はどのツールも当たり外れあるけど、Cursorを毎日使ってる理由はタブ補完がダントツだから。作業中に次に何したいか95%くらいの確率で理解してくれるし、複数行/複数ファイル変更も対応できる。Github Copilot, Zed, Windsurf, CodyはCursorのタブ補完レベルじゃないと思う。" userName="fastball" createdAt="2025/05/12 06:16:22" color="#ff5c5c">}}




{{<matomeQuote body="純粋にオートコンプリートだけなら、Supermavenが一番だと思うよ。" userName="solumunus" createdAt="2025/05/12 07:51:02" color="">}}




{{<matomeQuote body="Cursorが去年Supermaven買収したんだよ。" userName="fastball" createdAt="2025/05/12 08:03:58" color="">}}




{{<matomeQuote body="Cursorなしでもモデルってマジで改善されるの？それとも実際はCursorの補完開発に全部リソース使ってて、Supermavenの購読者には提供されてない感じ？公式サイトとかオンラインの情報少ないから、そこら辺確かめるの難しいんだよね。" userName="freehorse" createdAt="2025/05/12 12:11:27" color="">}}




{{<matomeQuote body="Aiderいいよ！好きなエディタ使って、コーディングアシスタントは別にしたら？それにオープンソースだし、このままでいくと思うから、急に高くなったり消えたりする心配もないしね。" userName="joelthelion" createdAt="2025/05/12 05:46:40" color="">}}




{{<matomeQuote body="前は超Aider派だったんだ。でもしばらく使ってると、ターミナルとVS Code行ったり来たりとか、自分でコンテキスト追加したり外したりとか、そういうちょっとした摩擦が使う気を失わせたんだよね。`--watch`モードはナイスな解決策だけどパフォーマンス落ちるし。LLMが自分のコメント消して集中できなくなったり。RooはAiderほど安定しないけど、統合されてて使いやすい。近いうちにまた（Aiderに）戻れるといいな。" userName="mbanerjeepalmer" createdAt="2025/05/12 06:10:25" color="#ff5c5c">}}




{{<matomeQuote body="想像だけど、vimユーザーならそういう摩擦点ってちょっと違うんじゃないかな。俺にとっては、Aiderのgit auto commitと`/undo`コマンドが、今の技術レベルでは決め手なんだ。OpenHandsも有望そうだけど、結構複雑そうだね。" userName="fragmede" createdAt="2025/05/12 06:31:25" color="">}}




{{<matomeQuote body="(相対的な)シンプルさがAiderのいいとこだな（neovimをtmuxで使ってるのも手助けになってるけどね）。LLMに何を正確に送ってるか分かりやすかったし、一度に一つのことだけやるのが好きなんだ。俺は自分のLLMを babysit したいし、「agentic」ツールが勝手に何十ものことをループでやるのは、制御不能に感じるんだよ。" userName="movq" createdAt="2025/05/12 07:15:06" color="#38d3d3">}}




{{<matomeQuote body="「制御不能に感じる」ってフレーミング気に入ったわ。フロントエンドはagenticツールで制御不能でもいいけど（Karpathyのvibe codingみたいにLLMに任せる感じ）、本業のバックエンドは完全に自分で制御したい。LLMに何送ってるか知りたいから、チャット直接使う方が楽。提案のいいとこ取りやプロンプト修正もできるしね。" userName="ayewo" createdAt="2025/05/12 08:12:46" color="#ff33a1">}}




{{<matomeQuote body="どうやってdiff/patchファイルなしで”いいとこ取り”してるの？それともLLMに頼んで、手動で適用してる感じ？" userName="fragmede" createdAt="2025/05/12 17:41:03" color="">}}




{{<matomeQuote body="基本的にantirezが4日前にこのスレッドで説明してたことだよ https://news.ycombinator.com/item?id=43929525。だからこのワークフローの部分は、意図的に結構手間がかかるんだ。IDEとブラウザのチャットインターフェースの間で大量にコピペするからね。" userName="ayewo" createdAt="2025/05/12 19:59:40" color="">}}




{{<matomeQuote body="リンクされたコメントから：＞ 「”agentic coding”はLLMを直接使うよりずっとダメ」っていうのはただのウソだよ。もし全てが平等ならそうかもしれないけど、実際はシステムプロンプトがLLMの振る舞いにかなり影響力があるんだ。空のシステムプロンプトのChatGPTより、調整済みの方がコーディングは上手い。Aider/Copilot/Windsurfらはカスタムシステムプロンプトで、生ブラウザ使うより強力にしてるし、コピペの手間もないよ。" userName="fragmede" createdAt="2025/05/13 04:23:06" color="#ff33a1">}}




{{<matomeQuote body="俺は人間の判断を残したいタイプなんだ。気に食わないことやるたびに conventions.md にルール追加してる。だんだん見る時間減ってきたよ。" userName="charlie0" createdAt="2025/05/18 15:59:38" color="">}}




{{<matomeQuote body="Aider使うのにどれくらいかかるか知りたいな。本体無料でもLLMのAPIキーでトークン払いなんだよね。LLMの値段は分かるけど、どれくらいトークン使うか全然わかんなくて。ZedとかCursorみたいに月額固定ならいいんだけど、Aiderは費用が分かんないから試すのが怖いんだ。" userName="Oreb" createdAt="2025/05/12 07:28:12" color="#45d325">}}




{{<matomeQuote body="仕事でAiderとClineとGemini 2.5 Pro使ってるよ。会議とか中断なしで8時間ぶっ通しでやっても、＄2くらいかな。実際は平均＄0.50で、ここ数週間で＄1超えたのは一回だけだった。" userName="m3adow" createdAt="2025/05/12 08:21:57" color="#38d3d3">}}




{{<matomeQuote body="うわ、初めてClaude Code試したら（小さいSwiftのコードベースにちょっと機能追加するのに完全に失敗）、20分で＄5飛んだよ。多分Sonnet 3.7のADHDみたいに散漫なせいか、CLIツールじゃなくて（あとLLMがSwift苦手なのかもね？）。" userName="didgeoridoo" createdAt="2025/05/12 11:20:09" color="#ff5c5c">}}




{{<matomeQuote body="俺のテストだと、aiderはclaude codeの10分の1くらいの費用で済む傾向があるな。aiderでは/addとか全部明示的にやるからだと思うけど。" userName="liveoneggs" createdAt="2025/05/12 14:06:30" color="#785bff">}}




{{<matomeQuote body="何に使ってて、どうプロンプト出してて、どれくらい頻繁に使ってるか詳しく知りたいな。費用抑えるのは成功してるけど、一発で＄4とか飛ぶこともあるから、Aiderみたいなツールはあまり使わないんだよね。費用を確実に抑えられるって分かればもっと使うのに。" userName="bluehatbrit" createdAt="2025/05/12 09:59:06" color="#ff5c5c">}}




{{<matomeQuote body="詳しく説明するね。VSCで編集、Copilotでタブ補完（あんま使わない）。<br>Aiderはラバーダッキングとか、小さめ〜中くらいの変更に使うよ。必要なファイル追加して、モード変えて、問題と解決策を説明。Aiderの答えに満足したらコーディングモードで変更許可。プロンプト一発で＄4行くのは分からない。俺のアプローチじゃ表面だけかもね、もっと良いけど高価な戦略に気づいてないだけかも。" userName="m3adow" createdAt="2025/05/12 11:20:38" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それ超安いじゃん。どんなワークフローで、費用抑えるテクニックあるの！俺は短いセッションでファイル少なくても、1時間＄10以上使うことあるよ。" userName="beacon294" createdAt="2025/05/12 08:47:35" color="#45d325">}}




{{<matomeQuote body="へー、正直言って費用抑える設定とか何もしてないよ。ただリポジトリ全部追加して、自分の作業やるだけ。<br>どうしたら1時間＄10も行くの？多分俺にはそんな使い方できないな。たぶん俺たちワークフローが全然違うんだろうね。" userName="m3adow" createdAt="2025/05/12 09:50:12" color="#785bff">}}




{{<matomeQuote body="リポジトリ全部追加するのに何かツール使ってるの？" userName="theonething" createdAt="2025/05/12 15:44:17" color="">}}




{{<matomeQuote body="全部APIによるね。deepseekならタダ同然だよ。" userName="anotheryou" createdAt="2025/05/12 07:45:45" color="">}}




{{<matomeQuote body="deepseek、速い？俺はAPIがめっちゃ遅くて、時々使えないんだけど。" userName="tuyguntn" createdAt="2025/05/12 08:17:35" color="">}}




{{<matomeQuote body="正直、今はwindsurfとopenAI/google使ってるよ。aiderでdeepseekも空いてた頃は使ってた。deepseekはたまに全く応答しないのが唯一の問題だったけど、全体的には速かったよ（考え込まないやつはね）。" userName="anotheryou" createdAt="2025/05/12 08:56:14" color="#38d3d3">}}




{{<matomeQuote body="各リクエストのコストと合計が見れるよ。/tokensで次のリクエストのコンテキストに入ってるトークン数を確認できる。ファイルのドロップやコンテキストクリアで管理するんだ。" userName="BeetleB" createdAt="2025/05/12 14:29:48" color="#38d3d3">}}




{{<matomeQuote body="そうそう、モデル選んで都度払いだよ、米や水みたいな。他のサービスは、コンテキストを最小化したり安いモデル使わせたり、駆け引きしてきたね（3 modesとかdaily creditsとか、一番高いmodel使わせるとか）。あと、--watch modeがエディタで使う一番生産的なやり方だよ、robot facesの余計なtextboxはいらないね。" userName="aitchnyu" createdAt="2025/05/12 06:12:45" color="#45d325">}}




{{<matomeQuote body="ちなみにね。Aiderで使えるGemini-*はPay As You Go（payg）じゃなくてpost paidだよ。月末にまとめてbillが来る感じ。OpenAI/others modelみたいに使う前にcredits chargeするtypeじゃないんだ。" userName="fragmede" createdAt="2025/05/12 06:28:55" color="#45d325">}}




{{<matomeQuote body="openrouterみたいなの検討する良い理由かもね。prepaid serviceになるからさ。" userName="camkego" createdAt="2025/05/12 08:08:05" color="">}}




{{<matomeQuote body="Aider好きなんだ。でも限界にイライラして、解決するためにBrokk作ったよ。https://brokk.ai/<br>Aiderと比べてBrokkは<br>・GUIがある（Aider userには抵抗あるかもだけど、複雑なprojects管理にマジ役立つ）<br>・ちゃんとしたstatic analysis engine使ってるから、大規模codebasesでもrepomapみたいなのが迷子にならない<br>・めっちゃ便利なgit integrationがある（git log見たり、right clickでcontext取り込んだり）<br>・あとOSSでBYOKもsupportしてる<br>みんなの意見聞きたいな！" userName="jbellis" createdAt="2025/05/12 10:18:16" color="#785bff">}}




{{<matomeQuote body="GUI以外で、Aiderと比べて何が良くなったの？" userName="evnix" createdAt="2025/05/13 07:06:15" color="">}}




{{<matomeQuote body="短いanswerはstatic analysisだよ：Long answerはhttps：//brokk.ai/blog/lean-context-lightning-development" userName="jbellis" createdAt="2025/05/15 23:10:37" color="">}}




{{<matomeQuote body="For daily workならneitherかな。They basically promote the style of work where you end up with mediocre code that you don’t fully understand、and with time the situation gets worse。俺はspecific questionをhuge contextのmodel（Gemini）にaskingしてanalyzing the generated code carefullyする方がmuch better resultになるよ。That’s the opposite of the style of work you get with Cursor or Windsurf。Is it less efficient？If you are paid by LoCs、sure。But for me the quality and long-term maintainabilityはfar more important。And especially the Tab autocomplete featureはdriving me nutsだった。being wrong roughly half of the time and basically just interrupting my flow。" userName="benterix" createdAt="2025/05/12 08:40:01" color="#38d3d3">}}




{{<matomeQuote body="I agree！I like local tools、mostly、use Gemini 2.5 Pro when actually needed and useful、and do a lot of manual coding。" userName="mark_l_watson" createdAt="2025/05/12 15:48:18" color="">}}




{{<matomeQuote body="But how do you dump your entire code base into Gemini？Literally all I want is a good model with my entire code base in its context window。" userName="scottmas" createdAt="2025/05/12 12:27:10" color="#ff5733">}}




{{<matomeQuote body="I wrote a simple Python script that I run in any directory that gets the context I usually need and copies to the clipboard／paste buffer。A short custom script let’s you adjust to your own needs。" userName="mark_l_watson" createdAt="2025/05/12 15:49:51" color="#45d325">}}




{{<matomeQuote body="Repomixはcommand lineからrunできるよ。https：//github.com/yamadashy/repomix" userName="halfjoking" createdAt="2025/05/12 16:34:47" color="#45d325">}}




{{<matomeQuote body="Legal issues aside（you are the legal owner of that code or you checked with one）、and provided it’s small enough、just ask an LLM to write a script to do so。If the code base is too big、you might have luck choosing the right parts。The right balance of inclusions and exclusions can work miracles here。" userName="benterix" createdAt="2025/05/12 13:39:27" color="#ff5c5c">}}




{{<matomeQuote body="Cursorは、text filesを全部contextに入れるんじゃなくて、vector embeddingsを使ってefficientlyにcodebaseをindexできるよ。Someone else mentioned machtiani here which seems to work similarly。" userName="satvikpendem" createdAt="2025/05/14 07:11:18" color="#ff5733">}}




{{<matomeQuote body="For a time Windsurfはfull agentic codingでCursorよりway aheadだったけど、now I hear Cursor has caught up。まだCursorに戻してtry outしてないんだけど、Windsurfはcontext gatheringが100-200 lines at a timeにrestrictedされててfrustrating。So many bugs and poor resultsの原因はsimply due to improper context。necessary contextを与えるとmodel problemじゃなくapproachの問題だとclearly see。800ish lines overのfilesにstruggleするのもextremely annoying。hardware and cost of tokensがreal bottleneckだから、deepseek-like innovationなcontext gatheringが必要だね。" userName="pembrook" createdAt="2025/05/12 06:53:40" color="#38d3d3">}}




{{<matomeQuote body="Wait、are these 800 lines of code？俺だけmajor code smellって思ってる？Assuming these are code files、the issueはAI processing powerじゃなくてrather bread and butter coding practices related to file organisation and modularisationの方だと思うんだけど。" userName="evolve2k" createdAt="2025/05/12 17:35:42" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
