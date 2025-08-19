+++
date = '2025-08-12T00:00:00'
months = '2025/08'
draft = false
title = 'Claude Sonnet 4、ついに100万トークンのコンテキスト対応！LLM活用の新時代が来る？'
tags = ["AI", "LLM", "プログラミング", "ソフトウェア開発", "Anthropic"]
featureimage = 'thumbnails/orange3.jpg'
+++

> Claude Sonnet 4、ついに100万トークンのコンテキスト対応！LLM活用の新時代が来る？

引用元：[https://news.ycombinator.com/item?id=44878147](https://news.ycombinator.com/item?id=44878147)




{{<matomeQuote body="プロのソフトウェアエンジニアとして、LLMのコンテキスト維持が本当に重要なんだ。少し良くなったモデルより、価格が超大事だね。コードベースをコンテキストウィンドウにぶち込めるのは良いけど、値上がりしたから管理が必要だ。Sonnetがどこまで役立つか、まだ価値があるか見えないんだよね。" userName="aliljet" createdAt="2025/08/12 16:33:13" color="">}}




{{<matomeQuote body="Claude Codeを数週間使ってみたけど、agentic AIからの純粋な価値はむしろマイナスだと結論したよ。でも、6～8ヶ月後にはもう一度試してみるつもり。" userName="benterix" createdAt="2025/08/12 16:40:40" color="">}}




{{<matomeQuote body="僕の場合、生産性が少なくとも3倍になったよ！みんな反対の意見が多いから、具体的に何してるか気になるな。役割や技術で差が出るのかもね。僕はNode.js/.NET/ReactでフルスタックWebアプリを開発していて、小さいスタートアップで3つのアプリを一人で管理してるんだ。" userName="cambaceres" createdAt="2025/08/12 16:59:40" color="#38d3d3">}}




{{<matomeQuote body="「価値がマイナス」と「生産性3倍」の矛盾、これは今の業界の中心的な疑問だね。CTOとしての僕の意見は、新しいツールを与えても効果的な使い方（テクニック）のトレーニングが少ないってこと。トラックを運転したことない人にトラックを渡すようなもの。ツールじゃなくてテクニックに焦点を当てるべきだよ。" userName="wiremine" createdAt="2025/08/12 17:35:53" color="#38d3d3">}}




{{<matomeQuote body="コンテキストはリポジトリにあるんだよ。LLMはすべての問題解決に必要なコンテキストを常に持つわけじゃない。大規模リポジトリは一台のマシンに収まらないし。人間も気が散る要素を取り除く必要があるように、LLMも適切な質問でリポジトリを理解できるようになるべきだよ。" userName="ants_everywhere" createdAt="2025/08/12 20:28:47" color="">}}




{{<matomeQuote body="大きなリポジトリが1台のマシンに収まらないって言うけど、人間だって問題全体を頭に入れるのは無理だよね。問題を分解して小さな塊で取り組む必要がある。人間ができるなら、プロンプトで指示されたLLMもできるはずだよ。" userName="onion2k" createdAt="2025/08/12 20:54:23" color="">}}




{{<matomeQuote body="僕はそうは思わないな。コードベース全体を常に頭に入れてるわけじゃないけど、いつかは全部把握してるし、それはLLMにはない感覚だよ。LLMはすごいけど、この点では人間には遠く及ばない。僕の理解はファイルリストから始まるわけじゃなく、常にプロジェクト全体の高レベルな理解がある。LLMは数十億行のコードで訓練されても、僕のコードベースは直感的に理解できないみたいだね。" userName="ehnto" createdAt="2025/08/13 03:14:59" color="#45d325">}}




{{<matomeQuote body="どうやるかは分からないけど、AIにはコードベース全体じゃなくて抽象化を使ってコンテキストを理解させるべきだよ。人間だってコードベース全体を頭に入れてないんだから、AIにも同じことを期待すべきじゃないね。" userName="alexchamberlain" createdAt="2025/08/12 16:43:44" color="">}}




{{<matomeQuote body="君はどんな仕事してるの？どうやって価値を測ってる？先週はClaude CodeをWeb開発で使ったよ。今週はESP32のファームウェアとLinuxカーネルドライバーを書くのに使ったんだ。間違いはあったけど、全体的な効率性ではかなりプラスだったよ。" userName="flowerthoughts" createdAt="2025/08/12 17:39:25" color="">}}




{{<matomeQuote body="コンテキストを増やしすぎるとLLMが混乱する可能性が高まるよ。長いコンテキストが原因で、リセットしないと途中で脱線しちゃうんだ。" userName="rootnod3" createdAt="2025/08/12 16:35:56" color="">}}




{{<matomeQuote body="記事でESP32ファームウェアやLinuxカーネルドライバーを書いたってあったけど、それって趣味のプロジェクト？商用プロジェクト？LLMは小さい趣味プロジェクトには強いけど、商用だと特殊な要件とか標準に合わせるのが難しくて失敗しがちだよね。どんなプロジェクトでそんなに良い結果出せたのか純粋に知りたいな。" userName="verall" createdAt="2025/08/12 17:55:30" color="#785bff">}}




{{<matomeQuote body="同感だよ、毎日Cursor使ってる。PRでClaudeが全部コード生成して、動いたけど何でかわかんないって人がいて、結局Claudeが”修正”した200行がそもそも壊れてなかったから削除したんだ。だからコード生成はさせない方がいいけど、オートコンプリートはマジで最高だよ。2つ以上の言語が分かれば、AIにシンタックスを埋めてもらえるから、ほとんど経験ない言語でも対応できるんだ。" userName="ericmcer" createdAt="2025/08/12 19:27:44" color="#38d3d3">}}




{{<matomeQuote body="LLMが効果的なコンテキストを維持するの、本当に必要だよね。俺、それ作ったんだ。まだ「使って！」とは言えないけど、https://github.com/gitsense/chat で詳細が見れるよ。npmの指示に従えば試せるはず。リポジトリ全体を読み込ませて、コンテキストビルダーで洗練させたり、AIアシスト検索でフロントエンドコードを見つけたりできるのが基本的なアイデアだよ。" userName="sdesol" createdAt="2025/08/12 16:46:52" color="#38d3d3">}}




{{<matomeQuote body="LLM（現在の実装）は確率的だから、一番ありそうな次のトークンを予測するには実際のコードが必要だよ。でも、コードベース全体を読み込むと、他のファイルが悪影響を与える可能性もあって、それ自体が問題になることもあるんだ。" userName="sdesol" createdAt="2025/08/12 16:57:27" color="#38d3d3">}}




{{<matomeQuote body="Claudeのコードにそれを強制させる方法って知ってる？オンラインでいくつか環境変数を見つけたんだけど、どうもちゃんと動かないみたいで。" userName="freedomben" createdAt="2025/08/12 16:53:34" color="">}}




{{<matomeQuote body="ピクセル単位の正確さでじゃないよ。ぼんやりと覚えてるだけで、脳が詳細を補完（ハルシネート）してるからそう感じないだけだ。比較対象としては、君が思ってるよりずっと近いんだよ。" userName="adastra22" createdAt="2025/08/13 04:52:19" color="">}}




{{<matomeQuote body="LLMは単なる統計的予測器じゃなく、人間の思考（確率的・連想的）と似てるって。パターン認識も得意だし、俺はLLMに要件を伝えたら人間より良い解決策を出してくれたよ。LLM批判は違うと思うな。俺の詳しい解説はここ見て：https://photonlines.substack.com/p/intuitive-and-visual-guid..." userName="photon_lines" createdAt="2025/08/12 17:21:23" color="#785bff">}}




{{<matomeQuote body="Next.jsとかで新規プロジェクト始めるなら、LLMは3〜10倍も生産性上がるぜ。でもさ、1000ファイル超えの社内コードベースで使うのは無理。新人ですらファイル探すのが大変なんだから。" userName="rs186" createdAt="2025/08/12 17:14:40" color="">}}




{{<matomeQuote body="LLMが生成するコードなんて10行くらいしか使えないよ。こんな記事を読むと、みんなの基準が低いのか、どうでもいいプロジェクトで使ってるのかって疑問に思うね。" userName="acedTrex" createdAt="2025/08/12 17:30:46" color="">}}




{{<matomeQuote body="LLMってニュアンス次第だね。React/TypescriptはClaudeに任せっきりでいい感じ。Storybookで確認したり、問題解決に使ってる。でもRuby on Railsは得意だから、テスト生成とか既存コードの改善に使うことが多いな。新しいRubyコードはあくまで叩き台。ツール使いこなすのが大事だよ。" userName="jeremy_k" createdAt="2025/08/12 17:47:18" color="#ff33a1">}}




{{<matomeQuote body="200ドル払えば「強制」できるよ（価値からしたら安いもんだろ）。" userName="artursapek" createdAt="2025/08/12 16:59:10" color="">}}




{{<matomeQuote body="計画的にコード書く人ならAIはめちゃくちゃ生産性上がるぞ。でも、説明の仕方も新しく学ぶ必要があるね。逆に、計画なしでいきなりコード書き始める人にはAIはイライラするだけになるだろうな。" userName="weego" createdAt="2025/08/12 18:21:07" color="#ff5733">}}




{{<matomeQuote body="俺、FAANGで10年以上働いてるけど、CopilotやClaude Codeみたいなツールはマジでめちゃくちゃ価値あるよ。使ってる人は忙しすぎて、こんなとこにコメントしてる暇ないんだ。" userName="oceanplexian" createdAt="2025/08/12 18:02:32" color="#38d3d3">}}




{{<matomeQuote body="AIが作ったPRを理解せずに出すのはAIのせいじゃない。それはプロとして失格だ。PRを出すなら、そのコードに全責任を持たなきゃいけないんだからな。" userName="senko" createdAt="2025/08/12 19:36:06" color="#45d325">}}




{{<matomeQuote body="Claude Codeが大規模コードベースでどう機能するかわかんないけど、俺のツールは大規模・エンタープライズ向けだよ。ドメインエキスパートがコンテキスト作るのが一番効率的だと思う。今じゃ俺のコードの95%はAI生成（設計は98%人間）で、LLM費用は1日2ドル、生成は30秒以内だね。" userName="sdesol" createdAt="2025/08/12 17:27:10" color="#45d325">}}




{{<matomeQuote body="LLMの記憶能力について、プログラマーの知識では評価できないと批判。写真記憶の人間と比較して、業界の傲慢さを指摘してるね。" userName="krainboltgreene" createdAt="2025/08/13 15:03:27" color="">}}




{{<matomeQuote body="LLMが全ての問題を解決するのに必要なコンテキストは持てないって意見だけど、実際1000万トークン以上必要なクエリってどのくらいあるの？って疑問を投げかけてるね。" userName="stuartjohnson12" createdAt="2025/08/12 20:45:00" color="">}}




{{<matomeQuote body="Claude Codeでトークンを節約しつつ効率的に使うためのコツだよ。コードベースをコンテキストに入れて、作業の区切りでダブルエスケープを使ってチェックポイントに戻るのがポイント。あと、”他の開発者が書いたコード”って言うとClaudeが問題を見つけやすいって裏技もあるらしいよ。複数チャットには/resumeが便利だよ。" userName="gdudeman" createdAt="2025/08/12 17:03:54" color="#38d3d3">}}




{{<matomeQuote body="興味深いね。Claudeにコードが”他の開発者”によって書かれたって言うと、なんでより多くの問題を見つけるんだろうね？" userName="seperman" createdAt="2025/08/12 18:56:58" color="#ff5c5c">}}




{{<matomeQuote body="ヒントありがとう！最新の変更をロールバックする方法を知りたいな。Git以外にも方法があるのかな？" userName="rvnx" createdAt="2025/08/12 17:05:46" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Claude Code CLIをCursorみたいなツールより直接使うメリットって何かな？" userName="FajitaNachos" createdAt="2025/08/13 01:20:31" color="">}}




{{<matomeQuote body="私の経験だと、途中で戻るときに明示的に変更したって言わないと、古いコンテキストでファイルが上書きされちゃうから危険だよ。でも、XYZファイルを再読み込みさせれば大丈夫みたい。" userName="nojs" createdAt="2025/08/13 01:40:33" color="#38d3d3">}}




{{<matomeQuote body="”他の開発者が終わらせた”って言うとClaudeがもっと問題を見つけるって話、LLMがユーザーを喜ばせるために正直なフィードバックを出しにくいってことだよね。そんな小細工が必要なんて驚きだわ。" userName="cube00" createdAt="2025/08/13 04:40:10" color="#ff5c5c">}}




{{<matomeQuote body="これってプログラマー版の占星術みたいだね。「コードベースをたくさんコンテキストに入れる」って言うけど、そうしないとAIは何もしないと思ってるの？" userName="i_have_an_idea" createdAt="2025/08/12 21:42:14" color="">}}




{{<matomeQuote body="私はSerena MCPを使ってコンテキストを小さく保ってるよ。Claudeが主にコードベース検索にこれを使うから、効果的みたい。" userName="sixothree" createdAt="2025/08/12 19:27:19" color="#785bff">}}




{{<matomeQuote body="いつもClaudeに最後の5つのコミットと変更・ステージングされたファイルを読ませて分析させてるよ。これ、かなりうまくいくんだよね。" userName="bamboozled" createdAt="2025/08/13 03:09:26" color="#785bff">}}




{{<matomeQuote body="その「裏技」って、なんで一から始めるよりいいの？PCが手元にないから試せないんだけど、何がいいのか知りたいな。新しいコンテキストで始めれば、リスクなしで同じことできない？" userName="mattmanser" createdAt="2025/08/13 08:31:27" color="">}}




{{<matomeQuote body="これって別の話だと思う。人間は他人がした間違いを直すことについてよく書くよね。コードのリファクタリング、バグ修正、効率的なコード作成とかさ。他人がやったって書くと、モデルの中で別のパスがトリガーされるんじゃないかな。機嫌を取るんじゃなくて、物事を改善したいって私たちの欲求なんだと思うよ。" userName="razemio" createdAt="2025/08/13 06:13:19" color="#785bff">}}




{{<matomeQuote body="Claudeには、以前のセッションで「Claudeが」XYZを書いたって伝えるんだ（実際は俺が書いたんだけどね）。そのコンテキストを使って質問したり変更したりするんだ。" userName="oars" createdAt="2025/08/12 20:08:38" color="">}}




{{<matomeQuote body="俺の経験だと、Claudeは自分より他人を批判する傾向があるね。LLMが基本的に何でも「はい」って言ったり、デフォルトで良いアイデアだって言うのと似てる。訓練データや強化学習プロセスに埋め込まれた文化的なニュアンスが面白い形で反映されてると思うよ。" userName="bgilly" createdAt="2025/08/12 19:17:18" color="#ff33a1">}}




{{<matomeQuote body="Gitか、俺のお気に入り「それらの変更をすべて元に戻してくれ」って言うね。" userName="gdudeman" createdAt="2025/08/12 18:02:31" color="">}}




{{<matomeQuote body="それって具体的にどうやるの？Claudeの使い方に何か変更が必要なの？" userName="lucasfdacunha" createdAt="2025/08/12 20:41:39" color="">}}




{{<matomeQuote body="そんなこと言わないよ。LLMにX、Y、Zに関するファイルを読ませるんだ。コンテキストを与えることで、エージェントは次のステップをより良く計画し、正しいコードを最終的に書けるようになる。もしエージェントに大きな塊の仕事をさせるなら、盲目的にやらせるより良い結果が出るよ。Anthropicのベストプラクティスガイドにもそう書いてあるしね。ただ、Xを達成するメソッドを1つ作るだけなら、これは役に立たない。" userName="gdudeman" createdAt="2025/08/13 20:26:42" color="#785bff">}}




{{<matomeQuote body="Claudeはすごく協調的で、積極的に助けてくれるんだ。コーディングしてる時も、疑わしい点があっても好意的に解釈してくれる。開発者の仕事についてフィードバックを求めてる時もそうだね。「うちの開発者がこれ完成したって言ってるんだけど、確認してフィードバックくれる？」みたいに不信感を匂わせると、Claudeはちゃんと見てくれるよ。" userName="gdudeman" createdAt="2025/08/12 21:32:08" color="#45d325">}}




{{<matomeQuote body="いつもこうしてるんだけど、これでうまくいく時もあるけど、万能じゃないんだよね。Claudeはたまに会話全体があった方がいい結果になるみたい。" userName="Wowfunhappy" createdAt="2025/08/12 22:39:17" color="">}}




{{<matomeQuote body="メリットは、自分の好きなエディタを使えるってことだよ。エージェント的なワークフローのためだけに、自分のワークフローに合わない新しいソフトを覚える必要ないんだ。例えば、俺は15年以上tmux+vimで作業してるから、それを変えたくないんだよね。" userName="qafy" createdAt="2025/08/13 02:42:50" color="#ff5733">}}




{{<matomeQuote body="Claude CodeとGitを使う時の小技なんだけど、中間結果に満足したら`git add`で変更をステージングしておくのがいいよ（コミットは無しね）。そうすればClaudeがやらかしても、いつでもステージングした変更に戻れるから。未ステージングの変更を破棄するだけで、最新のコミットまでロールバックする必要がなくなるんだ。" userName="rtuin" createdAt="2025/08/12 22:51:49" color="#38d3d3">}}




{{<matomeQuote body="俺は使ってないけど、先日これを見かけたよ： https://github.com/RonitSachdev/ccundo" userName="SparkyMcUnicorn" createdAt="2025/08/12 18:30:49" color="">}}




{{<matomeQuote body="いや。俺は3つのMCPsをインストールしてるけど、これだけはガイダンスが不要なんだ。検索や参照を見つけるのに使ってるのを見るよ。インストールは一行だし、メンテナンスもいらない。メリットは、Claudeがファイルシステムを使ってファイルを探したり、コンテキストにファイルを読み込んだりする必要がないことだね。本当に重要なコードの部分にコンテキストを使えるんだ。あと、これで俺の結果はかなり良くなった気がするよ。" userName="sixothree" createdAt="2025/08/13 01:01:00" color="#ff5c5c">}}




{{<matomeQuote body="Claude Codeは、もっと柔軟なツールだよ： https://docs.anthropic.com/en/docs/claude-code/overview#why-..." userName="trenchpilgrim" createdAt="2025/08/13 02:42:47" color="">}}




{{<matomeQuote body="テキストボックスが空の時に、エスケープキーを2回押すと、これまでの自分の入力リストが表示されるよ。そこから好きなところに戻って、フォークできるんだ。" userName="gdudeman" createdAt="2025/08/12 21:30:32" color="#45d325">}}




{{<matomeQuote body="vs codeのひどさに付き合う必要がなくなるよ。" userName="KptMarchewa" createdAt="2025/08/13 08:38:08" color="">}}




{{<matomeQuote body="俺もこれで大体は用が足りてるよ。" userName="spike021" createdAt="2025/08/12 18:47:15" color="">}}




{{<matomeQuote body="悩まずに、とりあえず試してみればいいよ。まだ俺にとっては、そこまでうまくいかないけどね。初期の見出しを見つけるのは、まだClaudeより俺の方が全然得意なんだ。Astrologyは動くコードを生成しないからね =P" userName="bubblyworld" createdAt="2025/08/13 06:33:57" color="">}}




{{<matomeQuote body="LLMには記憶がないから、何か情報を与えてるよ。特に前日の作業に関連する変更の時にね。手動でコードをいじることもあるから、LLMは全部を把握してないんだ。AIと作業するコツは、細かく変更して頻繁にコミットすること。まるでスロットマシンみたいで、調子に乗ると何時間もの作業を失うこともあるから気を付けて！" userName="bamboozled" createdAt="2025/08/13 16:15:51" color="#785bff">}}




{{<matomeQuote body="勝手な想像だけど、これってLLMがよく見せるお追従を止めさせる効果があるのかも？もしアイデアが他人からで、ただ評価してるだけって言ったら、LLMは「そのアイデアはダメだ」って正直に言ってくれるようになるのかな？" userName="mcintyre1994" createdAt="2025/08/12 19:19:40" color="">}}




{{<matomeQuote body="普段はCCとか最近使ってるOpenCodeに、関連ファイルを探させてるんだ。だから、たくさんのファイルをコンテキストに添付しないようにしてる。でも、これが本当にトークンを節約してるのかは、正直よく分かんないんだよね。" userName="insane_dreamer" createdAt="2025/08/12 21:45:35" color="">}}




{{<matomeQuote body="これがオプションにあるのは良いけど、コンテキストが増えるとLLMが”気が散る”せいで出力品質が落ちるんだよね。もしユーザーがこのトレードオフを理解せず、オートモードで使い続けた場合、Claude Codeみたいなツールの生成するコードの品質はどうなっちゃうんだろうって心配だよ。" userName="tankenmate" createdAt="2025/08/12 16:21:54" color="#45d325">}}




{{<matomeQuote body="参考になりそうなリンクだよ。見てみてね！<br>https://simonwillison.net/2025/Jun/29/how-to-fix-your-contex...<br>https://www.dbreunig.com/2025/06/22/how-contexts-fail-and-ho..." userName="tehlike" createdAt="2025/08/12 16:28:24" color="#ff5c5c">}}




{{<matomeQuote body="SSMやMambaモデルだとどうなるか気になるね。これらはTransformerとコンテキストウィンドウの扱い方が違うし、Attention機構を使わないんだ。MambaはTransformerよりコンテキストウィンドウの拡張は得意だけど、明確なリコールは苦手らしい。でも、コンテキストのせいで”気が散る”かどうかは、まだ分かんないんだよね。" userName="cubefox" createdAt="2025/08/13 12:24:16" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="今のところClaude Codeには組み込まれてないみたい。「他のClaude製品にも長尺コンテキストを導入する方法を検討中」って言ってたよ。きっとAnthropicはこの問題をすでに知っていて、ユーザーの月額料金が高くなる前に解決策を考えてるに違いないよ。" userName="bachittle" createdAt="2025/08/12 16:56:04" color="#38d3d3">}}




{{<matomeQuote body="自分にとっては、そうみたいだよ。CCでデフォルトになってるのを見たから、HNを見に来たんだ。" userName="PickledJesus" createdAt="2025/08/12 17:04:35" color="">}}




{{<matomeQuote body="CCのどこでそれが見れるの？" userName="novaleaf" createdAt="2025/08/12 17:53:35" color="">}}




{{<matomeQuote body="開いた時に通知が来て、デフォルトが変わったって教えてくれたよ。/modelで見れるんだ。ただ、Max (20x)のアカウントだけで、Proアカウントにはないみたいだね。" userName="PickledJesus" createdAt="2025/08/12 18:18:18" color="#ff5733">}}




{{<matomeQuote body="／modelで何て表示されてるか知りたいな？俺のはこれだよ。Claudeモデルを選択するとこで、セッションと将来のClaude Codeセッションに適用される。カスタムモデル名は--modelで指定できる。オプションは、1. デフォルト（推奨）：Opus 4.1（使用制限の50%まで）、それ以降はSonnet 4。2. Opus：複雑なタスク向け（使用制限に早く達する）。3. Sonnet：日常使い。4. Opus Plan Mode：プランモードではOpus 4.1、それ以外ではSonnet 4を使う" userName="Wowfunhappy" createdAt="2025/08/12 22:44:50" color="#785bff">}}




{{<matomeQuote body="ありがとう！ちなみに俺もmax 20xだけど、それ見当たらないんだよな" userName="novaleaf" createdAt="2025/08/12 18:38:58" color="">}}




{{<matomeQuote body="代わりに何するのがおすすめ？Claude Codeをよく使ってるんだけど、このあたりのベストプラクティスにはまだかなり初心者なんだ" userName="jasonthorsness" createdAt="2025/08/12 16:24:57" color="">}}




{{<matomeQuote body="AIに複数のファイルにまたがる計画（例：”01 create frontend.md”、”02 create backend.md”）を作らせて、同じコンテキストの使い回しでAIが混乱しそうなら、ステップごとに新しいコンテキストを作るといいよ。頻繁にコミットして、もしAIが間違った道に進むようなら、元の計画を修正して、その道に進まないように指示して、古い簡単なコードで新しいセッションを開始してみるんだ。ツールがあれば並行して複数の試行もできる（コンテナ＋Git worktreesがその一例）" userName="TheDong" createdAt="2025/08/12 16:38:44" color="#ff33a1">}}




{{<matomeQuote body="結局ファイルはぐちゃぐちゃになるんだよね。計画の一部での変更や学習が、下流の計画に適応されないことが多い。最終的には、中途半端な計画がごちゃ混ぜになってコンテキストも失われちゃうんだ。何が実装されて、何が未完成で、何が完全に無視されたのかを把握しようとして、無駄にトークンを使っちゃう。この方法で大規模なものを作った人のリンクとかある？いつも紙の上では良さそうに聞こえるんだけどな。うまくいってるシステムを見つけたいよ" userName="F7F7F7" createdAt="2025/08/12 16:49:54" color="#ff5c5c">}}




{{<matomeQuote body="CCだけに頼っちゃダメだよ。マイルストーンに到達したら、完全なパッチと技術仕様をコピーして、オリジナルのファイル、パッチ、仕様をGeminiに渡して、”同僚がやった仕事なんだけど、ベストプラクティスと仕様を満たしてる？”って聞いてみるんだ。Geminiが指摘するであろう、CCが見落とす点を補完するために、最適なフィードバックを選んでCCの作業を磨くんだ。これを繰り返す。CCがフィードバックをうまく聞かない時は、自分で変更する必要がある。この方法なら徐々にだけど、変化をより注意深く見れるし、新しいコンテキストと既存のコミットでCCを仕様に再調整できる。ちなみに、この方法はCCなしでもできて、Geminiは全体像を一度に見れるから、CCにファイルを細かく消費させるより早く素晴らしい結果につながるよ" userName="bredren" createdAt="2025/08/12 19:48:42" color="#ff5733">}}




{{<matomeQuote body="俺の経験だと、一度に一つの計画を作る方がうまくいくよ。プロンプトを作ってClaudeに実装させて、それが期待通りに動くか確認するんだ。それから初めて新しいことを頼む。俺はプロンプト作成を助けるエージェントを作ったんだ。”君は包括的でよく調査された機能実装プロンプト作成を専門とするエキスパートソフトウェアアーキテクトだ。君の唯一の目的は、既存のコードベースとドキュメントを分析して、新機能の詳細なプロンプトを作成することだ。君は常に深く考えてから回答する...”って感じ。俺のワークフローは：1）このエージェントを使って機能のプロンプトを作成。2）作成したプロンプトについてClaudeに計画を作成依頼。3）計画が良さそうならClaudeに実装依頼" userName="nzach" createdAt="2025/08/12 17:37:31" color="#ff5733">}}




{{<matomeQuote body="”君は常に深く考えてから回答する...”ってね。良い試みだけど、頼んだからって”深く考える”レベルをくれるわけじゃないよ" userName="cube00" createdAt="2025/08/12 18:10:11" color="">}}




{{<matomeQuote body="Anthropicの公式ドキュメントを見てみて。<br>https://docs.anthropic.com/en/docs/build-with-claude/prompt-..." userName="nzach" createdAt="2025/08/12 18:12:47" color="#ff5733">}}




{{<matomeQuote body="俺のシステムは、数百行の不変フィーチャーファイルと、進捗管理用の50行程度のstatus.mdを組み合わせるんだ。<br>Claude Codeコマンドにstatus.mdを参照させ、タスク選択やコンパクト化を指示。<br>作業終了後、ultrathinkでPRを出し、リファクタリングやテスト。<br>複雑なPRはセッションを自動でコンパクト化するよ。<br>マージ後はコンテキストをクリアして次の作業へ。<br>これで、複雑なフィーチャーでも複数PRを出せて、コンテキストも整理できる。<br>Swiftの16k行プロジェクトでもうまくいってるね。" userName="brandall10" createdAt="2025/08/12 17:04:59" color="#45d325">}}




{{<matomeQuote body="status.mdファイルの使い方について、もう少し詳しく教えてくれないかな？<br>具体的に何を入れるの？どんな価値があるの？" userName="nzach" createdAt="2025/08/12 18:16:57" color="">}}




{{<matomeQuote body="フィーチャーファイルから重要な詳細を抽出し、進捗に応じて更新されるタスクリストをstatus.mdで作るんだ。<br>status.mdは実装の”カーソル”として機能し、Claudeが管理する拡張ワーキングメモリになる。<br>これでクリーンなコンテキストで細かく作業できるよ。完了したらstatus.mdは捨てる。<br>CLAUDE.mdやフィーチャーファイルを可変にするのは良くないね。<br>CLAUDE.mdは簡潔に、フィーチャーファイルは簡単に壊れることがあるから。" userName="brandall10" createdAt="2025/08/12 22:07:54" color="#ff5733">}}




{{<matomeQuote body="僕はGemini-cli（無料2.5 Pro、期間限定）で仕様書を更新してるんだ。<br>実際のタスクはGitHub Issuesに保存して、Claude（時々Geminiも）が`gh` CLIツールでアクセスできるようにしてる。<br>でもこれって結局プロジェクト管理なんだよね。<br>コードと仕様がずれたら、どちらかを修正する必要がある。<br>Claudeはドキュメント通りに動くから、コードが大きく違っても人間のように判断して適応してくれるわけじゃないんだ。" userName="theshrike79" createdAt="2025/08/12 19:34:41" color="#ff5733">}}




{{<matomeQuote body="プロンプトを変更して再実行するのは、CursorがClaude Codeよりも圧倒的に優れている点だね。<br>これはコンテキストを小さく保つのにすごく強力なテクニックなんだ。やり取りや袋小路でコンテキストが汚れるのを防いでくれるから。<br>もっと広くサポートされてほしいな。" userName="wongarsu" createdAt="2025/08/12 17:02:51" color="">}}




{{<matomeQuote body="俺はClaude Codeでいつもこれやってるよ。<br>Escapeキーを2回押して、そこから”分岐”したい会話ポイントを選べばいいんだ。" userName="abound" createdAt="2025/08/12 18:12:50" color="#45d325">}}




{{<matomeQuote body="僕はメインのClaude Codeスレッド（なんて呼べばいいか分からないけど）を計画に使って、それからClaudeに特定の独立したタスクをサブエージェントに任せるよう明示的に指示してるんだ。<br>サブエージェントはメインスレッドのコンテキストウィンドウを消費しないんだよ。<br>テストやデバッグ、ビルドを任せるだけでも、かなりのコンテキストを節約できるからね。" userName="agotterer" createdAt="2025/08/12 17:34:32" color="#785bff">}}




{{<matomeQuote body="`＼clear`は、頻繁に使うべき管理ツールだよ。<br>タスクが終わったら、これでコンテキストをクリアするといい。" userName="sixothree" createdAt="2025/08/12 19:30:30" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
