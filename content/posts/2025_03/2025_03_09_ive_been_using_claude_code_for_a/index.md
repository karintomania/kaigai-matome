+++
date = '2025-03-09T00:00:00'
months = '2025/03'
draft = false
title = 'Claude Codeを2日間使ってみた結果に驚愕！AIによるコード生成の実力とは'
tags = ["AI", "プログラミング", "ツール", "開発", "体験談"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> Claude Codeを2日間使ってみた結果に驚愕！AIによるコード生成の実力とは

引用元：[https://news.ycombinator.com/item?id=43307809](https://news.ycombinator.com/item?id=43307809)

{{<matomeQuote body="自分が一番ダメなプロンプトエンジニアだと思う。AIに修正や作成を頼むと、ほとんど正しい答えが返ってこないから。Twitterの成功談は魅力的だけど、AIに全て任せるってのは現実的じゃない気がする。" userName="develoopest" createdAt="2025-03-09T10:46:52" color="">}}

{{<matomeQuote body="多分“コード”と“プログラミング”の違いだと思う。LLMはコードを生成できるけど、プログラミングにこだわるとLLMは期待に応えられない。大多数は“コーダー”であって“プログラマー”じゃないから、LLMにいい印象を持つんだ。" userName="abxyz" createdAt="2025-03-09T11:13:08" color="#ff5c5c">}}

{{<matomeQuote body="最終的な結果が大事で、今のところLLMはコード補完には便利だけど、他にはほとんど役に立たない。書きたいコードは書けるけど、バグだらけで自分で書くのと同じくらい直すのが大変。リリースするソフトがこんなに酷いのは意味がない。" userName="jmull" createdAt="2025-03-09T11:36:13" color="">}}

{{<matomeQuote body="文字列に入る微妙なミスが面白い。結局その修正に時間がかかって、結局は得た時間を失っている。" userName="barbazoo" createdAt="2025-03-09T16:02:41" color="">}}

{{<matomeQuote body="その例があるの？" userName="dabinat" createdAt="2025-03-09T17:06:43" color="">}}

{{<matomeQuote body="アカウントを忘れたので新しく作成して返信。Claudeを使って“Ruby on Rails 8、Hotwire、stimulus、turboでページリフレッシュなしのクライアントサイドのバリデーションを見せて”ってプロンプトを試した。生成されたcontroller名が“validations”じゃなくて“validation”だったので、修正が面倒だったけど、最後的には求めていた通りになった。" userName="the_lonely_time" createdAt="2025-03-09T19:41:57" color="">}}

{{<matomeQuote body="Cursorのルールを試したことある？標準ライブラリを作り、ルールを追加・修正していくのがAIコーディングのベストプラクティスの一つだよ。" userName="fallinditch" createdAt="2025-03-09T17:32:58" color="">}}

{{<matomeQuote body="＞…何千ものルールを使って、追加・修正を繰り返すのが特に効率的なアプリ/システムを作る道なのか？10倍の成果を追求するのに10倍の努力が必要なんて懐疑的だ。" userName="jmull" createdAt="2025-03-09T18:06:20" color="">}}

{{<matomeQuote body="その時点で通常のプログラミングをルールを作る作業に置き換えているだけじゃないか？ルールは再利用可能で、メタプログラミングの一種かもしれないけど。" userName="UltraSane" createdAt="2025-03-09T17:39:34" color="">}}

{{<matomeQuote body="その通り。フレームワークを使うかどうかの判断にも同じ原則が適用される。コーダーはフレームワークをよく理解しなくても早く何かを構築できることに驚くけど、プログラマーは内部で何が起こっているかを理解しようとする。" userName="bikamonki" createdAt="2025-03-10T02:07:15" color="">}}

{{<matomeQuote body="フレームワークを使うのと、詳細を掘り下げることには違いがあると思うけど、あなたの言ってることはNo True Scotsman的な気がする。プログラマーの大半はそんな定義には当てはまらないと思う。私の業界はストリーミングメディアだから、そういうバイアスがあるかも。" userName="InvertedRhodium" createdAt="2025-03-10T02:17:37" color="">}}

{{<matomeQuote body="アーティザンプログラミングが注目されるのを待ってるよ。" userName="beezlewax" createdAt="2025-03-09T11:18:31" color="">}}

{{<matomeQuote body="アーティザナルコードはとっくに存在してるよ。私たちがルダイトの職人だとしたら、LLMは彼らの質の高い作品を安くて質の悪い商品に置き換えた織機のようなものだね。この歴史的な韻を感じる。" userName="pydry" createdAt="2025-03-09T11:27:31" color="">}}

{{<matomeQuote body="プログラマーとコーダーを分けるのは面白いけど、同じ意味だと思う。機械にロジックを書く人のことだし。" userName="gitgud" createdAt="2025-03-09T23:34:21" color="">}}

{{<matomeQuote body="困ってる人のためのヒントをいくつか: Aiderを使ってみるといいよ。コードに比べて安いし、LLMリーダーボードを見てどのLLMを使うか決めると良い。設計モードが役立つけど、私はそれがなくても早いし、段階的に進めるのが大事。3つのブランチを使うべきだね。デバッグ用に切り替えると、バグを直すのにいろいろ試してくれるよ。" userName="BeetleB" createdAt="2025-03-09T17:32:29" color="#45d325">}}

{{<matomeQuote body="三つのブランチを使うのは本当に賢いアイデアだ。" userName="tptacek" createdAt="2025-03-09T17:35:56" color="#45d325">}}

{{<matomeQuote body="それに気づくのに時間がかかったし、すぐに思いつかなかったのは恥ずかしい。多くの人が手動開発でやってることだから、LLMを使うときにいつもの良いプラクティスを無視するのはおかしいよね。" userName="BeetleB" createdAt="2025-03-09T17:48:27" color="">}}

{{<matomeQuote body="LLMは途中でコミットするの？バグ修正のためにブランチを使う理由が分からないんだけど、git reset --hardでいいんじゃない？" userName="vlovich123" createdAt="2025-03-09T18:21:22" color="">}}

{{<matomeQuote body="僕も同じ経験があるよ。AIのいいところは、セマンティックサーチエンジンや家庭教師のような役割かな。複雑に質問しても、時々はしっかりした要約と次のステップを教えてくれる。正しい用語もくれるから、興味があれば他の検索エンジンで詳しく調べるけど、確認は絶対必要だよ。" userName="branko_d" createdAt="2025-03-09T11:05:12" color="#38d3d3">}}

{{<matomeQuote body="僕のワークフローはこんな感じだ（Sonnet 3.7 Thinking in Cursorを使用）: 1. まず、作りたいものを説明して要件を整理。2. 要件を細かく詰める。3. 仕様書を基に実装を頼む。4. Cursor Rulesを実装して、今後も一貫した実装を確保。これで80％は良い結果が出るけど、問題領域を理解して、生成されたものを検証するのが必要だね。" userName="InvertedRhodium" createdAt="2025-03-10T02:15:13" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="仕様のアイデアを盗みたくなった。Claudeは問題を解決せずに話が逸れる癖があって、変更を却下したり過去のバージョンに戻さなきゃいけないんだ。ちゃんとした仕様をガイドラインにすれば、もう少し軌道を外れずに済むかも。" userName="theshrike79" createdAt="2025-03-10T06:59:58" color="">}}

{{<matomeQuote body="最近、何百人もの候補者とコーディング面接をしたけど、LLMをうまく使ってる人とそうでない人の差が明らか。OPのように考えるエンジニアは置いてかれると思うよ。週末に個人プロジェクトを作るか新しい言語を学んでみて。あ、Claude webのプロジェクト機能を使うと、出力がかなり変わるから、古いファイルは削除して新しいのに入れ替えてね。" userName="smallerfish" createdAt="2025-03-09T11:29:29" color="#38d3d3">}}

{{<matomeQuote body="何百人？それは相当だね。どんな違いを感じたの？候補者がLLMをどう使ったか聞いた？" userName="triyambakam" createdAt="2025-03-09T14:32:32" color="">}}

{{<matomeQuote body="はい。面接プロセスの第１ラウンドで非同期ビデオ面接をやって、候補者の絞り込みを行っている。面接の開始時に質問を提示し、候補者は自分のIDEで作業しながら画面を共有する。すべての録画を見返してるけど、進捗があまり無いと早送りする。候補者が普段使うツールを使うように促す質問をしていて、LLMを使う人はステップを4～5個進める。" userName="smallerfish" createdAt="2025-03-09T15:37:56" color="#45d325">}}

{{<matomeQuote body="つまり、彼らをインタビューするんじゃなくて、高額な作業サンプルテストをやらせてるんだね。そして評価基準は“短時間で多くのステップをこなすこと”なのか。" userName="gammarator" createdAt="2025-03-09T19:11:16" color="">}}

{{<matomeQuote body="LLMをうまく使える人を見つけようとしてるみたいに感じる。面接をしたことはないけど、LLMを使ってないからといって候補者を落とすのはちょっと厳しいと思うな。各自のやり方があるけど、ちょっとおかしいように思える。" userName="anon22981" createdAt="2025-03-09T19:37:54" color="">}}

{{<matomeQuote body="質問は本当に難しいのか？スタンダードなタスクを聞くなら、LLMに頼ってる人が有利になるのは当然。候補者の能力は、LLMが助けられないシチュエーションでどうなるかが重要だ。日常業務の90％はスタンダードなタスクだけど、優秀なプログラマーがLLMを使わないことで生産性が大幅に下がるのはどうなのか。コードをたくさん生産することがプログラマーの有用性に繋がるとは思えない。" userName="alextingle" createdAt="2025-03-09T17:25:00" color="">}}

{{<matomeQuote body="いいえ、LeetCodeやアルゴリズムの質問はしていない。実質的には「仕様に基づいた小さなプロダクトを作る」という形で進めてる。候補者のプロセス、効果的さ、コミュニケーションを評価していて、コードも後で見直すよ。これは第１ラウンドだけで、通過した人とはさらに深く話して、全体的な力量を理解する。実際、LLMのせいでテストが無駄になっているし、コーディング面接は時間がかかる。" userName="smallerfish" createdAt="2025-03-09T18:07:16" color="#ff5c5c">}}

{{<matomeQuote body="＞基本的には”仕様に基づいた小さなプロダクトを作る”、一連のステップで進めているってこと？それは、返信している人が言っていることに近いと思う。標準的なプロダクトエンジニアリングが簡単になったものだよね。LLMが得意な問題に合わせているだけで、LLMを使える人が有利になる。そういう人を探しているのなら、素晴らしいと思うけど、より良い選択肢を持つ人は大体すっ飛ばしちゃうようなプロセスに思える。" userName="majormajor" createdAt="2025-03-10T00:09:15" color="">}}

{{<matomeQuote body="もし本当に去年の候補者を毎日一人ずつ面接していたのなら、その職場のエンジニアの役割はどんな感じなの？" userName="nsonha" createdAt="2025-03-09T15:04:04" color="">}}

{{<matomeQuote body="Claude Codeを使ってみたんだけど、最初のプロンプトで簡単な実装をお願いしたら、あっさり結果を出してくれた。自分で修正しながら、ツールが自動でバージョンを作れることに気づいて、最終的には自分の手を借りずにいくつかのツールを作らせた。結局、20ドルでClaude Codeを再現することができたんだ。" userName="slooonz" createdAt="2025-03-09T12:30:52" color="#ff5733">}}

{{<matomeQuote body="200行のJavaScriptと75行のPythonのコードを作成するのに20ドルと1日かけて、これがClaude Codeの再現っていうこと？期待値がズレてると思う。" userName="WD-42" createdAt="2025-03-09T15:35:08" color="">}}

{{<matomeQuote body="その出力は多くのプロエンジニアが1日に書くコードと似た量で、彼らはもっと高い。初めての試みだから驚いた。ただ、私ならAiderやSonnetで2ドル未満で100行以上書くことができる。バグを見つけるのに時間がかかるけど、コードの質も良いし、同僚よりマシ。" userName="BeetleB" createdAt="2025-03-09T17:15:37" color="">}}

{{<matomeQuote body="コードの行数は重要じゃない。元の投稿者がClaudeにClaude Codeを再現するようお願いして、成功したと言ってるのが大袈裟だと思う。出力されたのは単純なユーティリティで、驚く人もいるけど、これに何の意味があるのか疑問。" userName="WD-42" createdAt="2025-03-09T18:02:34" color="">}}

{{<matomeQuote body="コーディング時、LLMがGoogleの役割を果たしてる。Javaの特定のクライアントライブラリでRESTリクエストを実装するのに、今はLLMに例を聞く方が早い。GoogleよりLLMの方が使いやすいし、例の修正も楽。" userName="matt_heimer" createdAt="2025-03-09T14:40:18" color="">}}

{{<matomeQuote body="Claude Codeはコードの二次的な結果を考えられないみたい。GrokやGPT4.5、Sonnetを使ってプロンプトを作ると、Claude Codeも上手く動くようになる。私のやり方は問題の文脈を与えて実装計画を作 成させて、それをClaude Codeに渡すこと。" userName="crabl" createdAt="2025-03-09T12:51:49" color="#45d325">}}

{{<matomeQuote body="これらの投稿を見ても、もうエンジニアリングじゃない気がする。私たちは完全に自分たちを排除する一歩手前だと思う。" userName="cglace" createdAt="2025-03-09T14:04:27" color="">}}

{{<matomeQuote body="バイナリやアセンブリ、Cを書く必要はないと思ってる。要件や設計、受入基準を書く必要があるし、インフラのプロビジョニングやテストもある。99%を自動化したら、要件が膨れ上がるんじゃない？" userName="bckr" createdAt="2025-03-09T17:11:44" color="">}}

{{<matomeQuote body="プログラミングが不得意な私は、LLMが素晴らしいと思ってる。具体的な例ややり取りを共有してくれたら嬉しい。自分とあなたの違いを知りたいんだ。" userName="Balgair" createdAt="2025-03-09T15:19:12" color="">}}

{{<matomeQuote body="Claude Codeを使うにはプロンプトを工夫する必要がある。ある時は素晴らしい結果が出るけど、別の時は失敗する。結果に大きな影響を与えるプロンプトのコツがあるんだ。" userName="egorfine" createdAt="2025-03-09T11:14:10" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="ここでの話を見て、Claude Codeを試してみることにしたんだ。以前はClaude.aiプランが必要だと思ってたけど、実際はAPIキーだけで使えることがわかった。既存のアプリにちょっとした機能を追加してもらったら、60秒で$0.73かかって、51行の変更があったんだけど、その結果にかなり感動したよ。俺がやるのと同じ変更をしてくれた。Aiderも同じことを頼んだら、最初は必要なファイルを見逃して、数回やり直してなんとか同じ変更を出せたけど、Aiderは15秒、$0.07で済んだから10%のコスト。結局、自律性が高いツールはコストも高くなるみたいだね。" userName="CGamesPlay" createdAt="2025-03-10T00:12:02" color="#ff5c5c">}}

{{<matomeQuote body="その変更をコーディングするのにどれくらい時間がかかった？" userName="bufferoverflow" createdAt="2025-03-10T07:15:42" color="">}}

{{<matomeQuote body="多分3分くらい？こういうコーディングツールは、だいたい何をやりたいかは知ってるし、LLMが正しい方向に進んでるか確認するのが簡単だから。Claude Codeが俺を300%も効果的にしてるわけじゃないけど、今回のシンプルなタスクでは役立ったと思うよ。" userName="CGamesPlay" createdAt="2025-03-10T07:49:52" color="">}}

{{<matomeQuote body="生成時間だけを比較してるの？生成コードをチェックする必要な時間も含めるとどうなる？複雑な環境での時間はどう変わる？" userName="generic92034" createdAt="2025-03-10T08:26:28" color="">}}

{{<matomeQuote body="そのタスクを選んだ理由は、AIを使う方が自分でコーディングするより速いだろうと思ったから。生成コードの確認は簡単だったよ。複雑な環境での時間の変化がわからないけど、Claudeの自律性が無駄なアイディアに時間とお金を使わせるんじゃないかと心配してる。" userName="CGamesPlay" createdAt="2025-03-10T09:38:32" color="#ff33a1">}}

{{<matomeQuote body="AIが生成したコードを繰り返しデバッグするのにどれくらい時間がかかるだろう？" userName="off_by_inf" createdAt="2025-03-10T08:24:12" color="">}}

{{<matomeQuote body="俺も少しClaude Codeを使ってみたけど、料金が高すぎるな。20行のスクリプト変更が10セント、READMEの簡単な編集が7セント。エンジニアはもっと稼いでるが、大きなタスクではコストが暴騰しそうだ。月に$10-$20使うのは簡単に超えそう。CodyやCopilotを使う理由は月$10だから。制限がかかることはあるけど、出費が増えすぎないのがいい。" userName="artdigital" createdAt="2025-03-10T03:39:54" color="#ff5c5c">}}

{{<matomeQuote body="フリーランスのコンサルタントとして、こういうツールが収入を大幅に増やす可能性があるのは興味深い。ただ、その結果、見慣れないコードを持っていることや、高度なバグや制約に悩まされることが心配だ。" userName="stevage" createdAt="2025-03-10T05:28:37" color="">}}

{{<matomeQuote body="現在、CursorとAnthropicのAPIで$200-$300かかってるが、両方のフルタイムの仕事に加えフリーランスでも収益を上げている。自動化のためのコードレビューが増えて、通常のコーディングよりもその効果を感じてる。これでやった仕事は、普通の仕事よりも賞賛されてるよ。" userName="firtoz" createdAt="2025-03-10T05:56:27" color="#38d3d3">}}

{{<matomeQuote body="Cursorの月500検索を超えた？APIキーを接続して従量制課金を使ってるの？500回近くも使ってないから、$200-$300にどうやって達したのか気になる。たぶんCursor以外にもAnthropicに支払ってるんだろうね。" userName="coffeecantcode" createdAt="2025-03-10T12:27:33" color="">}}

{{<matomeQuote body="ちょっと不安だなぁ、やったことないコードが出てきちゃうのがね。新機能を実装するたびに他の人のコードを扱わなきゃいけなくなるのは大きなデメリットだと思う。AIに完全に依存することになりそうだし、これって避けられない未来なの？" userName="leoedin" createdAt="2025-03-10T06:54:43" color="">}}

{{<matomeQuote body="AIがちゃんと仕事してくれるなら大丈夫なんじゃない？でも、今のAIはそこまで信用できるものじゃないと思うよ。50％も信用できるとは言えないし、80％まで良くなったとしても、その後の改善はめっちゃ難しいと思う。私たちの人生中に100％の信頼できるAIにはならないんじゃないかな。" userName="bluefirebrand" createdAt="2025-03-10T14:42:57" color="">}}

{{<matomeQuote body="昔の開発者たちが『自分より優れたコードは書けない』って言い続ける一方で、仕事が見つからないのを不思議に思う時代が来ると思う。今のAIは、もう50％以上は信用できるかもね。" userName="itsoktocry" createdAt="2025-03-10T16:49:20" color="#45d325">}}

{{<matomeQuote body="Grok使ってるけど、無料だし制限もほとんどないよ。全体のコードベースは送らない方がいいけど、一つのファイルだけなら大丈夫。依存ファイルのソースがなくてもちゃんと理解してくれるのがすごいと思う。OpenAIのツールは毎日ログアウトされて面倒だけど、こっちは問題なし。" userName="zo1" createdAt="2025-03-10T09:35:41" color="#38d3d3">}}

{{<matomeQuote body="確かにエンジニアの多くはもっと速く高く費用がかさむから、AIに頼らざるを得ない時代も来るだろうね。それに、ほとんどのエンジニアはハルシネートしないけど、Claudeは結構しちゃうんだ。コストがかかる場合、それはあんまり面白くないよね。" userName="bayarearefugee" createdAt="2025-03-10T07:39:44" color="">}}

{{<matomeQuote body="エンジニアもバグを作ることあるよ。バグの発生率は今のAIより低いだけでさ。" userName="naasking" createdAt="2025-03-10T13:20:08" color="">}}

{{<matomeQuote body="エンジニアのバグは様々な原因があるし、LLMのハルシネーションとは違うよね。普通にありえないAPIのPRとか見ることはないし、それを合理化するための皮肉も通じないんじゃないかな。" userName="aziaziazi" createdAt="2025-03-10T14:23:59" color="">}}

{{<matomeQuote body="PRはすでにテスト済みで精査されたコードだから、LLMの出力とは比較できないよ。LLMの出力は、未テストの曖昧な記憶に基づく最初のコードと同じ。APIの詳細を忘れることもよくあるしね。" userName="naasking" createdAt="2025-03-10T14:47:36" color="">}}

{{<matomeQuote body="APIの詳細が曖昧だと気づいて、ドキュメントを確認しないのは珍しいよね。その自己認識が今のツールにはまだ欠けてると思う。" userName="lanstin" createdAt="2025-03-10T15:28:58" color="#45d325">}}

{{<matomeQuote body="人間のプログラマは、オートコンプリートや構文ハイライト、最終的にはコンパイルやビルドの手助けを受けるからね。LLMに近い体験をするには、notepad.exeを開いて大きく変更してからビルドして、コンパイラが関数名を想像する確率を教えてくれるのを待つことになるよ。" userName="TeMPOraL" createdAt="2025-03-10T19:22:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="こういうツールはCursorみたいにサブスクリプションモデルで運営するのが多くのユーザーにとって合理的だと思う。従量課金制だと、エージェントが引き出すコンテキストや実行する回数で余計なコストが増えるから、開発者は効率を考えない理由があるかも。Cursorのモデルだと、効率が良いエージェントほど利益が増えるから、サブスクリプション制の方が全体的に良いよ。" userName="lolinder" createdAt="2025-03-10T12:57:26" color="#ff5c5c">}}

{{<matomeQuote body="いや、これはお得だよね。エンジニアはもっと少ない仕事で高い給料もらってるから。" userName="personjerry" createdAt="2025-03-10T01:11:17" color="">}}

{{<matomeQuote body="俺はもっと多くの仕事をしてるから、簡単なタスクでやったのとは比べられない。Claudeは変更のテストすらしないし、機能を実装する必要を決めることもしないんだ。でも、俺の比較は“Claude Codeとどう違うか”じゃなくて“Claude CodeとAiderの比較”だからね。上司はAiderやClaude Codeなんて使わないし、俺の代わりにそれを使ったら不満が出るだろう。" userName="CGamesPlay" createdAt="2025-03-10T02:15:57" color="">}}

{{<matomeQuote body="要点を見逃してるよ。その主張は、Claude CodeやAiderがやったことに対して人を雇う方がコストがかかるってことじゃない？" userName="y1n0" createdAt="2025-03-10T02:28:49" color="">}}

{{<matomeQuote body="そのポイントには直接答えてると思うよ。確かに、Claude CodeやAiderがやったことを俺がやると高くつくだろうけど、Claude CodeやAiderが止まったところで俺の仕事に誰も満足しない。" userName="CGamesPlay" createdAt="2025-03-10T03:44:39" color="#38d3d3">}}

{{<matomeQuote body="彼らは必ずしも代わりになると言ってるわけではないと思う。高くても君の時間よりは安くて、他のタスクにもっと集中できるようになるってことだよ。" userName="johnmaguire" createdAt="2025-03-10T03:49:37" color="">}}

{{<matomeQuote body="前半は正しいけど、結論は“今日Claudeでエンジニアを再現している”じゃなく、“経験豊富なエンジニアが生産性を10倍にしたから、インターンを雇わなくて済む”になるべきだよ。" userName="baq" createdAt="2025-03-10T06:27:31" color="#ff5733">}}

{{<matomeQuote body="つまり“経験豊富なエンジニアが生産性を10倍にしたから、90%は解雇できる”ってことか。" userName="bhaney" createdAt="2025-03-10T06:53:36" color="">}}

{{<matomeQuote body="生産性の向上は数週間後には減少するってみんな忘れがちだよ。エンジニアリングスキルが急に鈍るのは確かで、LLMに考えさせるようになるとコードが質が落ちていく。使わないと失うから、早めに気づくのが重要だね。" userName="risyachka" createdAt="2025-03-10T11:02:34" color="#ff33a1">}}

{{<matomeQuote body="最近の「AI自動プログラミング」ってどこに向かってるんだろう？３０年前はFX取引が人間トレーダーでやってたけど、今はほとんどがアルゴリズムによる自動化。2025年のソフトウェア開発は2000年代のFXのようになるのかな？" userName="cloudbonsai" createdAt="2025-03-10T07:03:46" color="">}}

{{<matomeQuote body="僕がコードを学び始めた理由は、安上がりでアート系の音楽を作りたかったから。最初にPure Dataをダウンロードした時の感動は忘れられない。今の時代は、お金を払わなきゃいけない感が強いのが残念だけど、それでも学ぶ楽しさを感じている人もいるはず。" userName="beepbooptheory" createdAt="2025-03-10T02:54:19" color="#785bff">}}

{{<matomeQuote body="今の子供たちがコードを学ぶのが難しい理由ってあるの？むしろLLMがあって、個別の質問に答えてくれる無料のチューターがいるんだから、昔より学びやすいと思うけど。" userName="idiotsecant" createdAt="2025-03-10T04:12:12" color="#ff5733">}}

{{<matomeQuote body="中年になったけどずっとプログラミングを学びたかった。１年前からLLMを指導役にして、楽しく学べてる。今の学びやすさは素晴らしいと思う。" userName="GlassOwAter" createdAt="2025-03-10T05:08:54" color="#38d3d3">}}

{{<matomeQuote body="今の「やり方はクレジットカード必須だ」との意見は経験者に当てはまるけど、ただコードを作るだけの人には当てはまらないと思う。やはり学ぶ情熱が求められてるし、2027年にはどうなるか心配。" userName="baq" createdAt="2025-03-10T06:34:49" color="">}}

{{<matomeQuote body="2027年にはプログラミングは資金力が鍵になるだろうね。オープンソースにとってはどうなるんだろう。" userName="cft" createdAt="2025-03-10T08:40:54" color="">}}

{{<matomeQuote body="開発者向けのスタートアップって本当に大変だよね。どんなにお得でも、開発者は結局自分で作るかオープンソースに頼る傾向がある。" userName="Bjorkbat" createdAt="2025-03-10T02:57:38" color="">}}

{{<matomeQuote body="開発者が購入決定権を持たない理由はここにあると思う。大企業のIT部門が買ったツールを使わされることが多いから。開発者向けの製品は、実はIT担当者向けに売られてるのかも。" userName="deepGem" createdAt="2025-03-10T06:14:46" color="">}}

{{<matomeQuote body="自分が大事に思っているのはロックインのコストや、頼るツールを修正する楽しみ。これを無視すると物足りない。" userName="cwalv" createdAt="2025-03-10T04:44:30" color="#ff5c5c">}}

{{<matomeQuote body="僕は「ロックインのコスト」以上に「ハッカー精神」が大事だと思う。ツールを使うだけではなく、その背後にあるものを理解したい。" userName="TheDong" createdAt="2025-03-10T05:04:14" color="#45d325">}}

{{<matomeQuote body="投稿者はCursorやWindsurfみたいなAIコーディングアシスタントをあまり試してないみたいだね。最近エージェント型AIを使った感想だけど、90パーセントは快適で効率的だけど、残りの10パーセントはすごい痛いデバッグにつながることがあるんだ。個人的には、LLMコーディングアシスタントの最適な使い方は、戦略的なアーキテクチャの議論や、単一ファイル内の小さな明確なタスクに使うべきだと思う。エージェントはこの２つの間にうまく収まらないことが多いから、複数のつながったファイルを管理させるのは危険で生産的じゃないと感じてる。" userName="chaosprint" createdAt="2025-03-09T12:00:08" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
