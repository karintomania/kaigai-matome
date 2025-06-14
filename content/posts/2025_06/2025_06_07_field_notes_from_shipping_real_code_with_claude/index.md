+++
date = '2025-06-07T00:00:00'
months = '2025/06'
draft = false
title = 'Claudeでコード開発 現場で使える実践ノウハウ'
tags = ["AI", "プログラミング", "開発手法", "LLM", "Claude"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Claudeでコード開発 現場で使える実践ノウハウ

引用元：[https://news.ycombinator.com/item?id=44211417](https://news.ycombinator.com/item?id=44211417)




{{<matomeQuote body="著者だよ。LLMコード記事はいっぱいあるけど、Anchor commentsみたいな具体的なノウハウは役に立つと思うんだ。特にAnchor commentsは効果があったよ。<br>使い方:<br>- AIDEV-NOTE:、AIDEV-TODO:、AIDEV-QUESTION: を使う<br>- grepで既存を探す<br>- 作業後に更新する<br>- 複雑、重要、バグの可能性あるコードに追記<br>詳しい説明はURLを見てね。[1]: https://diwank.space/field-notes-from-shipping-real-code-wit..." userName="diwank" createdAt="2025/06/08 00:49:46" color="#ff5c5c">}}




{{<matomeQuote body="ネガティブなコメントもあるけど、経験豊富なエンジニアとして、この記事の実践的なLLM活用法はすごく参考になったよ。自慢みたいだって言う人もいるけど、全然そんなことないと思うな。この記事のおかげで、もっとLLMをワークフローに取り入れてみようって思えたよ。" userName="peter422" createdAt="2025/06/08 02:28:39" color="">}}




{{<matomeQuote body="嬉しい言葉ありがとう！会社のことばかり書くつもりはなかったんだけど、自分が主にいじってるコードベースだからつい触れちゃったんだ。ごめんね :)" userName="diwank" createdAt="2025/06/08 02:36:04" color="">}}




{{<matomeQuote body="“フィールドガイドのように考えて”って書いてあったけど、試すのにいくらかかる？記事にコストについて書いてなかったんだけど。" userName="panny" createdAt="2025/06/08 20:00:32" color="">}}




{{<matomeQuote body="いくつか選択肢があるから、気に入ったモデル次第かな。一番簡単なのは、Claude Maxの月100ドルのプランでOpus 4を使うことだよ（他のモデルだとフル体験できないかも）。" userName="diwank" createdAt="2025/06/09 04:01:45" color="#ff5733">}}




{{<matomeQuote body="Claude Codeって、月20ドルのProプランでもう全部使えるんじゃないの？" userName="indigodaddy" createdAt="2025/06/13 09:25:12" color="">}}




{{<matomeQuote body="最近Claude Codeのことよく聞くけど、前はCopilotとかCursorだったよね。値段も違うし。Claude Codeってそんなに良くなったの？正直、ツールの違いがよく分からないんだよね。みんな自分が一番だって言ってるし。" userName="mcv" createdAt="2025/06/09 07:19:13" color="">}}




{{<matomeQuote body="たくさん記事がある中で、これはすごく実践的で、試して改善できそうなシステムを提示してくれてるね。本当に感謝してるよ。書いてくれてありがとう。一つ知りたかったのは、この記事の方法とaiderのワークフローの違いなんだ。もし意見があれば聞きたいな。" userName="noufalibrahim" createdAt="2025/06/08 18:43:16" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！aiderは全然違うツールだよ。メモリ＼コンテキスト管理は一番優れてると思う。でも、なんだかんだでClaude Codeが一番好きかな。TUIが良いんだけど、これは個人的な好みやワークフローの問題だね。" userName="diwank" createdAt="2025/06/09 03:59:18" color="#45d325">}}




{{<matomeQuote body="素晴らしい記事ありがとう、LLMを大規模に使う方法を理解するのにすごく必要だったよ。LLMはテストに触らせないって言ってたのに、500以上のエンドポイント変更を4時間で完了させた例を挙げてたよね。すごいね！その4時間って、テストの変更も含まれてるの？それともプロンプトを考える時間だけ？" userName="kikimora" createdAt="2025/06/08 10:41:43" color="#ff33a1">}}




{{<matomeQuote body="テストは記事に含まれてなかったけど、実際はテストの方が時間かかったんだ。でもこれで開発者はテストが下手な言い訳できなくなったね笑" userName="diwank" createdAt="2025/06/08 16:02:29" color="">}}




{{<matomeQuote body="記事で「AIがテスト更新したらPRリジェクトする」って言ってたじゃん。<br>それってAIがやったかどうやって分かるの？<br>記事にはgitコミットメッセージの規約でって書いてたけど、それコミットレベルの話だよね。" userName="r0b0ji" createdAt="2025/06/08 17:27:03" color="#785bff">}}




{{<matomeQuote body="だいたいPRレビューで信用してる感じかな。あとClaude Opus以外のモデルは結構失敗するから、それで分かるんだよ。" userName="diwank" createdAt="2025/06/08 18:10:57" color="#38d3d3">}}




{{<matomeQuote body="マジ？AIでモック書けると思ってたのに。単体テストで一番嫌いなのがモックなんだよね。" userName="mcv" createdAt="2025/06/09 07:21:55" color="">}}




{{<matomeQuote body="素晴らしい記事だね。<br>AIペアプログラミングはAiderで始めたばっかだけど、20年の経験から今後の流れは見えるよ。<br>「今すぐ自分のフローにAIを取り入れろ」って結論、全くその通りだね。<br>HNポストが埋もれてた件だけど、AIコード開発の記事がAI使って書いたから却下されたって、皮肉だね :D<br>https://news.ycombinator.com/item?id=44214437" userName="mafro" createdAt="2025/06/08 09:28:30" color="#45d325">}}




{{<matomeQuote body="記事書くのにClaude Code使った？<br>僕は自分の文章は100%Claude Codeなんだよね。<br>Markdownのagentic editingがすごく良くて（claude.aiやchatgpt.comより全然上）。<br>これ使うと深いリサーチとかを書いてるドキュメントにマージできるんだ。" userName="localhost" createdAt="2025/06/08 15:12:18" color="#ff33a1">}}




{{<matomeQuote body="いや、リサーチのきっかけにchatgpt使っただけだよ :)<br>元のチャットはこれね: https://chatgpt.com/share/6844eaae-07d0-8001-a7f7-e532d63bf8...<br>claudeのリサーチも一部使ったんだけど、claudeだとシェアリンク作れないみたいで-_-" userName="diwank" createdAt="2025/06/08 15:47:53" color="#45d325">}}




{{<matomeQuote body="なるほどね。<br>でもそれ別のドキュメントにコピペして、Claude Codeにマージさせられるよ。<br>文字通りじゃなくて意味的なマージ、「このリサーチの関連部分をドキュメントに入れて」って感じ。<br>これ超強力だから、試してみて！" userName="localhost" createdAt="2025/06/08 15:56:45" color="#ff5c5c">}}




{{<matomeQuote body="Claude Codeって文章書くときブラウザ版と違う？<br>最近長いMarkdown文書を書いて、Claude、ChatGPT、Grok、Geminiに改善頼んだんだ。<br>比べたらGeminiとClaudeが近かったけど、Claudeがちょっと書き方上手いと思ったよ。" userName="gavinray" createdAt="2025/06/09 12:34:10" color="#ff5c5c">}}




{{<matomeQuote body="モデルは同じだけど、agentic loopでプロンプトが違うはずだから、多少の違いは出ると思うよ（実験してないけどね）。<br>同じのに複数回送るばらつきより大きいか小さいかは分からないけど。<br>ちゃんと実験してみたら面白そうだね！" userName="localhost" createdAt="2025/06/09 14:06:11" color="#ff5733">}}




{{<matomeQuote body="テストは人間だけが書くってどうやるの？結局は信用するしかないの？" userName="meeech" createdAt="2025/06/08 01:11:12" color="">}}




{{<matomeQuote body="テスト触るなって指示をCLAUDE.mdに書くか、.claude/settings.jsonでテスト用のディレクトリを編集できないようにできるよ。" userName="diwank" createdAt="2025/06/08 01:13:55" color="">}}




{{<matomeQuote body="テストディレクトリの編集禁止はいいね、ありがとう。でも、チーム全体だとさ、みんな使うけどやり方違うじゃん？その約束、どう守らせるの？" userName="meeech" createdAt="2025/06/08 02:37:27" color="#38d3d3">}}




{{<matomeQuote body="＞ その合意をどう守らせるの？<br>これはClaudeとかに限らず、コードレビューとかリンターとかでチームのルール守ってるかチェックするんだよ。記事にもあるけど、やらかしたら大変なことになるか、誰も気づかないか。" userName="mathgeek" createdAt="2025/06/08 13:45:04" color="#ff5733">}}




{{<matomeQuote body="AIエージェントってさ、重要だと分かってたのに後回しにしがちだったプロセスをちゃんと作るきっかけになるのが面白いよね。AIにやらせるのが不安なら、そこはちゃんと検証システムを作ろうっていうサインだと思うといい。データ移行とかまさにそう。技術的負債の話より分かりやすいし。" userName="kasey_junk" createdAt="2025/06/07 22:46:13" color="#ff5c5c">}}




{{<matomeQuote body="確かに。もう一つ効果的だったのは、Claude Codeに「コード見てて分かりにくいとか変なとこあったら、AIDEV-QUESTION: ...ってコメントして」って頼むこと。コードベースに眠ってたヤバいのが見つかったんだ。" userName="diwank" createdAt="2025/06/08 02:32:11" color="#38d3d3">}}




{{<matomeQuote body="でもさ、なんでAIDEV-ってスタイルにこだわるの？コメントってコード見ても分からない理由書くためのもんでしょ？普通ので良くない？" userName="tinodb" createdAt="2025/06/10 19:47:55" color="">}}




{{<matomeQuote body="うん、でもね：<br>1. AIDEV-* はパッと見て分かりやすいし、<br>2. AIモデルがgrepで探せるから、コード全体をまとめて見れるんだ。" userName="diwank" createdAt="2025/06/13 04:38:54" color="#45d325">}}




{{<matomeQuote body="そうだね。僕の感覚だけど、簡単な作業のコストが下がると、もっと高度なテストとか検証ツールを使うようになるかも。" userName="theptip" createdAt="2025/06/08 04:15:44" color="">}}




{{<matomeQuote body="Sonnet 4をCursorやWebで使ってるけど、全然ダメで困ってるよ。指示通りに動かないし、嘘ばっかりつくんだ。「削除するぞ」って脅しても余計ひどくなる。プログラミング以外のことも平気で嘘つくし。サポートに連絡しようとしてもエラーになるし、なんか変なんだ。みんなクロードを絶賛してるみたいだけど、こんな問題起きてるのって俺だけ？<br>" userName="m_kos" createdAt="2025/06/08 19:27:57" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="最近のアップデートで頭悪くなったんじゃないかな。3.5の頃は簡単なテキスト分析とか要約はちゃんとできたのに、4以上になってからは指示が数回しか続かないんだ。なんで？って聞いたら「設定が優先される」とか「有害な情報は避ける」とか言い訳。さらに聞いたら「わざと不安定にしてユーザーに使わせてる」とか言い出す始末。Anthropicがかわいそうなことしちゃったのかもね。" userName="j_crick" createdAt="2025/06/08 23:57:41" color="">}}




{{<matomeQuote body="俺も全く同じ問題を経験してるよ。Claude Webで使うのがマシだけど、それでも超具体的に指示しないとダメ。なのに、出てくるコードの半分はエラーだらけなんだ。" userName="threeseed" createdAt="2025/06/08 21:14:51" color="">}}




{{<matomeQuote body="Claude Codeは全く違う体験だよ。絶対試してみるべき。Opus 4はさらに段違いに進化してるね。" userName="diwank" createdAt="2025/06/09 04:02:57" color="">}}




{{<matomeQuote body="「Sonnet 4 via Cursor」と「Claude Code」って何が違うの？" userName="wredcoll" createdAt="2025/06/09 01:07:35" color="">}}




{{<matomeQuote body="5番の質問に答えるね。「Sonnet 4」はモデル名。「Cursor」はIDE（開発環境）の名前。「Claude Code」も別のIDEでTUI版だよ。CursorはVSCodeを改造したものなんだ。" userName="linsomniac" createdAt="2025/06/09 02:46:23" color="#38d3d3">}}




{{<matomeQuote body="記事のドキュメントに関するコツ、読んで感謝してるんだけど、これって別にAI特化じゃなくてもいいよね。「CLAUDE.md」じゃなくて「CONVENTIONS.md」でもいいし、AIへのコメントじゃなくて「読み手」へのコメントでもいい。どんなコードベースを読むときでも、特に慣れてないときにこんなコメントがあったら超助かると思う。" userName="nxobject" createdAt="2025/06/08 16:49:23" color="">}}




{{<matomeQuote body="記事を書いた人じゃないけど、Claudeに役立つコメントって人間向けとは全然違うと思うんだ。人間向けは「なぜそうするのか」に焦点を当てるけど、Claude向けは「こうしろ」「こうするな」って例をたくさん書かないとダメ。だから、人間向けのスタイルガイドは100行くらいだけど、Claude向けは500行とかになるよ。" userName="SatvikBeri" createdAt="2025/06/08 17:57:35" color="#ff33a1">}}




{{<matomeQuote body="これ、aiderで試したらめっちゃうまくいった！飛行機待ってる間に30分で描画機能付きのPDFビューアの試作品できちゃったよ。" userName="__mharrison__" createdAt="2025/06/08 21:00:01" color="">}}




{{<matomeQuote body="この記事書いてくれてありがとう。HNの多くの開発者は、ソフト開発をLLMに任せることに抵抗があるけど、この記事にあるような「中間地帯」はすごく良いね。LLMが問題解決を速くしてくれるから、実装の細かいことに囚われず、本来の目標達成に集中できる。" userName="dkobia" createdAt="2025/06/08 12:18:40" color="#ff5c5c">}}




{{<matomeQuote body="ほんとそう思う！これらはまだ錆びついててたまに手痛い目にあうけど、新しい道具として学ぶ価値はあるね。特に、 sloppy engineering の言い訳にするんじゃなくて、役に立つツールに進化させるためにさ。" userName="diwank" createdAt="2025/06/08 15:51:53" color="">}}




{{<matomeQuote body="いくつか考えたんだけど、LLMのプロンプトとか仕様って、もっとキレイに整理する方法ないの？ CLAUDE.md とか SPEC.mds とか AIDEV comments とか、すぐにゴチャゴチャになりそう。<br>あと、最近の “vibe-coding” の定義って何？Karpathy が言ってた、コードあんま見ずに全部受け入れるみたいなカウボーイモードのことかと思ってたけど、今は LLM ワークフロー全般の釣りワードになってる気がするよ。(まぁ、この記事のタイトルはいいけどね)<br>誰かの LLM にコード送る前に何か加工してる？" userName="wonger_" createdAt="2025/06/08 02:11:57" color="#785bff">}}




{{<matomeQuote body="＞ - Is there a more elegant way to organize the prompts/specifications for LLMs in a codebase? I feel like CLAUDE.md, SPEC.mds, and AIDEV comments would get messy quickly.<br>そうだね、コメントは確かにたまってくる。VS Code の拡張機能を作ってて、コメントをエディタの端っこに tiny visual indicators として出すようにしてるよ。<br>＞ - What is the definition of ”vibe-coding” these days? I thought it refers to the original Karpathy quote, like cowboy mode, where you accept all diffs and hardly look at code. But now it seems that ”vibe-coding” is catch-all clickbait for any LLM workflow. (Tbf, this title ”shipping real code with Claude” is fine)<br>それは誰に聞くかによるかな。僕にとっては万能薬じゃなくて、結構問題にぶつかったよ (Sonnet 3.7 と codex は成功率60％くらいだったけど、Opus 4 はマジでかなり良い)。<br>＞ - Do you obfuscate any code before sending it to someone’s LLM?<br>今回のケースでは、全部元々オープンソースだったけど、考えるべき良い点だね。" userName="diwank" createdAt="2025/06/08 02:21:01" color="#ff5c5c">}}




{{<matomeQuote body="でも、Google Workspace とかを通ってる大量のクリティカルなビジネスデータはどうなのさ？(たいていクライアントサイド暗号化なしで)。それとも、プライバシーのために必死にちょっと特別ぶってるだけ？結果として LLM プロバイダーにとって自分のコードベースがどれだけ面白いかって、みんなが興味深いと思うのはなぜか不思議だよ。" userName="jstummbillig" createdAt="2025/06/08 10:26:36" color="">}}




{{<matomeQuote body="確かにそうだけど、厳格なデータ規制に従わないといけないたくさんの企業顧客にとってはこれは重要なんだよ (例えば、インドには gpt-4.1 のモデルエンドポイントがホストされてないから、fin-tech 企業はそれらの API を使えないんだ)。" userName="diwank" createdAt="2025/06/08 15:54:44" color="#ff5c5c">}}




{{<matomeQuote body="すごく面白いね、この記事のアイデアをいくつか僕の CLAUDE.md ファイルで使ってみるつもり。<br>＞ One of the most counterintuitive lessons in AI-assisted development is that being stingy with context to save tokens actually costs you more<br>最近考えてたことと似てるんだけど、もっと大きいプロジェクトや複雑なコードだと、Claude Opus と Claude Sonnet の差を本当に大きく感じるんだ。Sonnet は全然うまくいかないとか、事態を悪くするアイデアに無駄な時間をかけすぎることがたまにあるんだ。<br>だから思ったんだけど、Anthropic は Max サブスクのユーザーに対して Opus と Sonnet を差別化しない方がもっと理にかなってるんじゃないかな？Sonnet が2、3ターンでできることを10～20ターンかかるみたいだから、結局は Sonnet を強制することが彼ら自身のコスト増につながると思うんだ。" userName="skerit" createdAt="2025/06/08 09:53:10" color="#38d3d3">}}




{{<matomeQuote body="うん、Max サブスクには2つのティアがあるんだ。<br>$100 だと Pro (Sonnet しかない) よりトークンが5倍で、$200 だと20倍。トークンの計算はちょっとややこしくて今のところ分かりにくいね。<br>あとは ”hybrid” モードもあるよ。Opus のトークンが20%くらいになるまで Opus を使って、それから Sonnet に切り替わるんだ。" userName="diwank" createdAt="2025/06/08 16:00:52" color="">}}




{{<matomeQuote body="サブスクで Opus ってどうやって使うの？彼らのシステムすごく分かりにくいんだけど。" userName="wredcoll" createdAt="2025/06/09 01:09:34" color="">}}




{{<matomeQuote body="うん、マジでそう。先月から Max サブに入ってるけど、まだどれくらいトークンがあるとか完全に理解してないよ。<br>一番シンプルに言うと、$100/月の Max に入ってから、npm install -g @anthropic-ai/claude-code ってすればいいと思う。" userName="diwank" createdAt="2025/06/09 03:44:58" color="">}}




{{<matomeQuote body="Claude Code をワークフローで効果的に使う方法を本当に示してる特定の YouTube 動画、誰かおすすめある？" userName="indigodaddy" createdAt="2025/06/13 09:47:30" color="">}}




{{<matomeQuote body="Claudeにテストやマイグレーションを任せないのは反対だなあ。テストのドラフトをAIにやらせるのはすごく助かるよ。LLMが作ったコードだろうと、最終的に責任を持つのは人間のはずだよ。著者はClaudeか従業員を信用してないんじゃないかな？" userName="lispisok" createdAt="2025/06/08 02:19:50" color="#45d325">}}




{{<matomeQuote body="確かにそうだけど、僕の経験では落とし穴があったんだ。<br>1．後で生成されたテストを手直ししようとしたら大変だったよ。コンテキストがないからClaudeはすぐモックにしちゃうんだよね。<br>2．これが最悪だったんだけど、チームの開発者みんなテストを書くのがめちゃくちゃ面倒になっちゃったんだ。本番環境でのバグがすごく増えちゃった。" userName="diwank" createdAt="2025/06/08 02:24:31" color="#45d325">}}




{{<matomeQuote body="テストを頼む前に、複雑な環境とかテスト方法のコンテキスト全部渡すのは試した？それはコード書くより大変かもしれないけど、長い目で見ればテスト改善に役立つかもね。<br>でも、コードに責任があるのは結局開発者なんだから、「AIがやりました」ってコミットするのは禁止すべきだよ。責任逃れの言い訳になりそうだから。" userName="jaakl" createdAt="2025/06/08 03:42:11" color="#45d325">}}




{{<matomeQuote body="いくつか試したけど、どれも全然ダメだったよ。例えば、Pythonで`ward`っていうテストランナー使ってるのに、Claude Sonnet（3.7も4も）が毎回毎回pytestに変えようとしてくるんだよね。もうOpus 4で試すか、いっそpytestに乗り換えるかしかないかなあ。" userName="diwank" createdAt="2025/06/08 15:57:08" color="">}}




{{<matomeQuote body="コメント18660の2つ目の点にはマジでウケたw！LLMは開発者を怠けさせまくるね。<br>開発者が大嫌いな3つのこと：1．テスト書き、2．ドキュメント書き、3．依存関係の手動更新。LLMはこれらを避けるのにすごく役立つけど、本番でバグが増えたなら、チームにテストを書かせるのは賢明な判断だと思うな。" userName="ayewo" createdAt="2025/06/08 10:57:27" color="#785bff">}}




{{<matomeQuote body="これは将来変わるかもしれないけど、今は機能を作るのが速くなったから、開発者に自分でテストを書かせることで、コードとそのバグに対する責任を持たせることが必要なんだと思うよ。" userName="diwank" createdAt="2025/06/08 15:58:34" color="">}}




{{<matomeQuote body="数日前に個人のプロジェクトでClaude Codeを試してみたんだ。うんざりするほど効率的だよ。それにめっちゃ高価で、1日で10ドル以上使っちゃった。<br>でも避けられない気がするんだ。仕事を続けるためには、AIの支配者に税金を払わないといけないんだろうね。" userName="Artoooooor" createdAt="2025/06/08 02:06:20" color="#785bff">}}




{{<matomeQuote body="以前は年間2000ドル以上かかってたんだけど、Anthropicが月100ドルと200ドルのMaxプランを出したんだ。5時間ごとの制限はあるけど、APIに戻るか休憩すればいいし、月100ドルで十分やってけてるよ。" userName="Syzygies" createdAt="2025/06/08 02:19:23" color="#785bff">}}




{{<matomeQuote body="僕も同じだよ。昨日200ドルのプランを使い切ったんだ。Opus 4が出てからコストが跳ね上がったね。他にはこれに匹敵するものはないけど。" userName="diwank" createdAt="2025/06/08 02:26:47" color="#ff5c5c">}}




{{<matomeQuote body="これについて考えてたんだ。人件費がすごく安い国の開発者は、Claudeよりまだ安いっていう理由だけで魅力的な選択肢であり続けるのかなあ。" userName="StefanBatory" createdAt="2025/06/08 09:10:46" color="">}}




{{<matomeQuote body="紙の上ではコストは安いかもしれないけど、時差やコミュニケーションの難しさ、可用性、スケジューリングを考えると、そういう選択肢は魅力的じゃなくなるよね。それに、コーディングエージェントのコーディング性能はどんどん上がってるし。" userName="thelittleone" createdAt="2025/06/08 17:56:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="安い国の開発者はLLMと比べて出力品質が大差ないから、もう雇うのをやめたんだ。LLMの方が速いし安いしね。重要な機能は安い開発者に任せられないから、彼らがやってた種類の仕事は全部LLMに食われちゃったよ。" userName="deadbabe" createdAt="2025/06/08 16:18:51" color="#785bff">}}




{{<matomeQuote body="似たような性能のトークンあたりのコストは、今、10ヶ月か11ヶ月ごとに半減してるから、どうかな。でも、安い地域の開発者の方が、実存的な不安からか？こういうツールを一番早く取り入れてると思う。" userName="diwank" createdAt="2025/06/08 15:53:22" color="">}}




{{<matomeQuote body="モデル固有のコメントでビジュアルノイズが多いかな。あるいは、ここの例だけかもしれないけど。<br>でも、人間としてはCLAUDE.mdファイルは好きだよ。開発者の考え方や選択のドキュメントみたいでいいね。これって、昔ながらのコードベースに開発者がLLMチャットを開きながら作業するより速いのかな？ここのコードはあまり親しみやすく見えないし、学習曲線が上がりそう。" userName="nilirl" createdAt="2025/06/08 03:53:21" color="#ff33a1">}}




{{<matomeQuote body="良い投稿だよ。唯一、「AIにテストを書かせちゃダメ」って部分だけは同意できないかな。俺は今、AIにテスト全部書かせてて、レビューだけしてるんだ。特に新しいコードでは、自律的に動かしたいならAIにテストを書かせないとね。俺は明示的にAIにテストを書いてパスさせるように指示するし、AIがコードを実装してる間にテストをレビューして、意味があるか、重要なケースをカバーしてるか確認してるよ。不十分ならケースを足すんだ。" userName="mgraczyk" createdAt="2025/06/08 18:13:07" color="#38d3d3">}}




{{<matomeQuote body="経験上、リスクは開発者自身がテストを簡単に理解したり更新したりできなくなる状態に陥ることだね。それはすごく厄介になるよ。" userName="diwank" createdAt="2025/06/09 03:46:21" color="">}}




{{<matomeQuote body="投稿ありがとう。AIを使った開発っていうこの黎明期はすごく興味深いね。著者や他の人が他のツールやモデルを試したか気になるな。" userName="__mharrison__" createdAt="2025/06/08 19:45:37" color="">}}




{{<matomeQuote body="今は色々試したけど、主に2つに落ち着いたよ。用途で使い分けてる。1. Claude Code with Opus、2. Cursor with Opus 4 or Gemini 2.5 Pro（Windsurfも選択肢だったけどAnthropicが切っちゃった）。Claude CodeのGitHub Actionも今試してるところ。" userName="diwank" createdAt="2025/06/09 03:49:09" color="#45d325">}}




{{<matomeQuote body="正直な質問だけどさ、この記事って人間と機械でだいたい何パーセントくらいで書かれてるの？" userName="meeech" createdAt="2025/06/08 01:01:49" color="">}}




{{<matomeQuote body="記事書いた本人だよ。体感で40%くらいが自分で、アイデアとか編集、引用、画像は全部自分がやったんだ。残りはOpus 4かな。いつもはClaudeのチャットリンクも載せようとするんだけど、色々調べたチャットは共有できないみたいなんだ。追記：記事の準備中に使った古いChatGPTの会話リンクを貼っとくね。https://chatgpt.com/share/6844eaae-07d0-8001-a7f7-e532d63bf8..." userName="diwank" createdAt="2025/06/08 01:10:02" color="#785bff">}}




{{<matomeQuote body="透明にしてくれてありがとう。でも、HNではLLMが大きく関わったコンテンツは求めてないんだよね。みんなにはLLM生成だって作者を公に非難するのを控えてって言ってるけど、作者側は自分で作ったコンテンツを投稿してほしいってのが前提なんだ。校正とか編集の提案にLLMを使うのはいいけど、「60％」もLLM生成ってのは別問題だよ。だから、投稿を非表示にせざるを得なかったんだ。追記：色々情報をもらって考え直して、この決定は変えたよ。詳細はこっちのコメント見てね。https://news.ycombinator.com/item?id=44215719" userName="tomhow" createdAt="2025/06/08 03:51:18" color="#785bff">}}




{{<matomeQuote body="完全に理解したよ。ただclarifyさせてほしいんだけど、40%って言ったのは、ClaudeとかChatGPTがコンテンツそのものを書いたんじゃなくて、深いリサーチとか最初のドラフト作成で手伝ってもらったって意味なんだ。アイデア、コード例、オリジナルのCLAUDE.mdファイル、画像、引用とかは全部自分が作ったものだよ。" userName="diwank" createdAt="2025/06/08 04:19:15" color="#38d3d3">}}




{{<matomeQuote body="オーケー、そうだね、こういうのは数値化難しいよね。一番の問題は、明らかにAI生成っぽいコンテンツを投稿されてるのに、みんなに作者を非難するなって言えないことなんだ。どれだけAIを使ったかじゃなくて、読者がその記事で知的好奇心を満たせるかどうかがHNにとっては重要なんだよ。読者が生成されたものだと感じると、コンテンツや作者への信頼、そして質の高いコンテンツを見つけに来る場所としてのHNへの信頼も失われちゃうんだ。追記：君の説明と、別のコメント[1]を読んで考え直した結果、この投稿は失格じゃないと思うよ。[1] https://news.ycombinator.com/item?id=44215719" userName="tomhow" createdAt="2025/06/08 05:20:02" color="#ff33a1">}}




{{<matomeQuote body="コンテンツの品質こそが重要なんじゃない？LLMを使ったかどうかにかかわらず、質の低い努力とかオリジナリティのないコンテンツを避けるのが、より良い目標だと思うんだけど。" userName="elcritch" createdAt="2025/06/08 09:50:41" color="">}}




{{<matomeQuote body="うん、そうだよ。だから、色々情報をもらって考え直して、決定を変えたんだ。ここで説明してるよ。https://news.ycombinator.com/item?id=44215719" userName="tomhow" createdAt="2025/06/08 10:48:15" color="">}}




{{<matomeQuote body="「40%が自分」ってことは、つまり60%がLLM生成ってことだったんじゃないの？宿題ChatGPTにやらせて捕まったやつが最初に言うのが「アイデアは自分が考えた」なんだよね…非難されてから言い訳するより、最初の発言の方を信じたくなるな。" userName="misnome" createdAt="2025/06/08 19:15:42" color="">}}




{{<matomeQuote body="この「私たち」を代表して言うと、この記事は今週読んだ中で一番良かったよ。(そして、その多くはAIアシストされてるだろうなって思うけどね)" userName="__mharrison__" createdAt="2025/06/08 20:58:01" color="#ff5733">}}




{{<matomeQuote body="LLMが今日イチ面白くて、深くて、考えさせられる内容を生み出したとしたら、それこそ最高のHNで読んだりコメントしたりするべきじゃない？AIがどんだけ手伝ったかって割合は意味ある？<br>もし俺が車輪を発明して、箇条書きからLLMに90％記事を書かせて編集したとして、それでもみんな車輪について議論したいと思わない？<br>今のAIがしょぼい駄作ばっかじゃないとは言わないけど、それがずっと続くわけじゃないし、AIの手伝い率で評価するのはなんか違う気がするな。" userName="ericb" createdAt="2025/06/08 17:12:25" color="#ff5c5c">}}




{{<matomeQuote body="だって、LLMで思考を「圧縮解除」するのって、そもそも何のために？<br>かえって読みにくくなるだけじゃん。" userName="never_inline" createdAt="2025/06/08 18:32:27" color="">}}




{{<matomeQuote body="編集の時に思考をまたギュッとまとめるんだよ。<br>いつも長い下書きを短くするやり方で書いてるから、長い方を書く時間を節約できるのはマジ助かる。<br>駄作は人間が書いてもAIが書いても駄作、名作は名作。それだけ。<br>人間かAIかに関わらず、もし何かすごいものが書けたら、俺はそれを読みたいね。<br>AIがずっと駄作のままだって決めつけるのは大胆すぎるよ、たとえあと24時間はそうだったとしても。<br>「短い手紙を書く時間がなかったんで、長い手紙になっちゃいました」ってマーク・トウェインも言ってたしね。" userName="ericb" createdAt="2025/06/09 18:51:50" color="#ff5c5c">}}




{{<matomeQuote body="＞LLMが今日イチ面白くて、深くて、考えさせられる内容を生み出したとしたら、それこそ最高のHNで読んだりコメントしたりするべきじゃない？<br>絶対ないわ。<br>つまらなくても、考えさせられなくても、本物でリアルな方がAI駄作なんかよりずっといい。<br>もしそういうコンテンツが欲しいなら、たぶんLinkedInの方が向いてるんじゃない？" userName="threeseed" createdAt="2025/06/08 21:17:43" color="#ff33a1">}}




{{<matomeQuote body="きっと論点ズレてるよ—<br>「AIなし」って聞くのは、低品質な駄作を避けるのが目的じゃないの？<br>これは新しいやり方を取り入れることと、人間とLLMの統合について書いてある、結構価値の高い投稿だよ。<br>タグつけて、ユーザーにどっち読むか決めさせればいいじゃん。<br>余談：メタな話だけど、もしHNを代表して話してるなら、投稿にそう示すべきだよ（コメントの外で分かるようにね）。" userName="pbhjpbhj" createdAt="2025/06/08 07:57:42" color="#785bff">}}




{{<matomeQuote body="そうだね。そして、筆者が「40％は自分」って意味をハッキリさせてくれたから、投稿をフロントページに戻したよ。<br>あと、英語が母国語じゃないみたいだから、そういう人がLLMを使って文章を磨くのは許容してもいいと思うんだ。<br>君の別の提案について：HNが18年前に始まって以来、モデレーターやモデレーターのコメントに特別な表示はしてないんだ。<br>これはシンプルなデザインが好きだからと、コミュニティから浮きたくないっていう気持ちからだよ。<br>みんな分かってくれると信じてるし、これでずっとうまくいってるんだ。" userName="tomhow" createdAt="2025/06/08 09:06:44" color="#38d3d3">}}




{{<matomeQuote body="サンキュー。念のために言うけど、別にネガティブな意味で聞いたんじゃなくてさ。<br>ただの好奇心と、かける労力との関係。<br>もし100％自分で書いたんなら、その全部を読みたいって気持ちになるんだ。<br>今みたいに、またGPM（たぶんLLMのことね）に食わせて要点だけ抜き出すとかじゃなくてね。" userName="meeech" createdAt="2025/06/08 02:43:13" color="#ff5733">}}




{{<matomeQuote body="それ良いヒントだね！AIが作ったコンテンツ読む時もそうするわ。" userName="ishita159" createdAt="2025/06/08 16:22:42" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
