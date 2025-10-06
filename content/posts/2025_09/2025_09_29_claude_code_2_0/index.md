+++
date = '2025-09-29T00:00:00'
months = '2025/09'
draft = false
title = 'Claude Code 2.0 コード生成AIがさらに進化！その脅威と可能性は？'
tags = ["AI", "コード生成", "プログラミング", "セキュリティ", "開発ツール"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> Claude Code 2.0 コード生成AIがさらに進化！その脅威と可能性は？

引用元：[https://news.ycombinator.com/item?id=45416228](https://news.ycombinator.com/item?id=45416228)




{{<matomeQuote body="この種のツールは「コーディングエージェント」と呼ぶのがいいかもね。人間がPCにコマンドを打つみたいに何でもできる汎用エージェントなんだ。安全なコンテナで隔離しないとマジで危険だけど、できることは超すごいよ！" userName="simonw" createdAt="2025/09/29 18:49:44" color="#38d3d3">}}




{{<matomeQuote body="超危険だって？さすがに大げさすぎない？俺はClaude Codeをリリースから1000時間以上使ってるけど、変なことされたことないし。サンドボックスで動かす必要ある？AI終末論者みたいに危険性強調するけど、実際使ってみると全然気にするほどじゃないってわかるよ。" userName="saberience" createdAt="2025/09/30 11:08:38" color="">}}




{{<matomeQuote body="安全だったのは、まだ敵対的プロンプトインジェクション攻撃に遭ってないだけだよ。皆も攻撃が一般的になるまで真剣に考えないでしょ。俺が危険性にこだわるのは、3年間プロンプトインジェクションを追跡してて、頑丈な解決策が見つからないから。俺がこの名前をつけたんだし！唯一信頼できる対策は効果的なサンドボックスだって。" userName="simonw" createdAt="2025/09/30 13:27:40" color="#38d3d3">}}




{{<matomeQuote body="コンテナが使えない時もあるから、俺はLLMが実行できるコマンドをホワイトリスト化してシェルを制御する実験をしてるよ[0]。ターミナルエージェントの外で設定する許可リストみたいなものだ。macOSとLinuxでも簡単に使えるようにしようとしてる。<br>[0]: https://ricardoanderegg.com/posts/control-shell-permissions-for-llm-agents/" userName="polyrand" createdAt="2025/09/30 06:27:47" color="#45d325">}}




{{<matomeQuote body="危険だよ。昨日、俺のカーソルエージェントが、指示してないのに稼働中のKubernetesクラスターを変更しちゃったんだ。問題分析のためにkubectlを与えた後、別の作業に切り替えてたら、戻ってきたらそいつが勝手にライブリソースをパッチして診断しようとしてたんだぜ。" userName="guhcampos" createdAt="2025/09/30 12:15:17" color="#ff33a1">}}




{{<matomeQuote body="危険性は、与える能力次第だよ。俺はLinuxマシンに`codex`と`claude`ユーザーを作って、ほとんどいつもyoloモードで動かしてるけど、今のところ問題ないよ。あと、「shellagent」って名前の方がもっとクールだと思うな。" userName="athrowaway3z" createdAt="2025/09/29 19:07:19" color="">}}




{{<matomeQuote body="プロンプトインジェクションで「敵対的攻撃」って、どうやって起こるの？外部ソースからデータ取得しないならさ。これは大げさすぎると思うな。AIプロンプトインジェクションよりも、もっと簡単な方法でハックできるVS Code拡張機能の問題の方がずっと多いよ。" userName="mehdibl" createdAt="2025/09/30 15:26:14" color="#785bff">}}




{{<matomeQuote body="あまり議論されてないけど、Claude Codeってどんなドキュメントのディレクトリツリーでも開けて、いろんな方法で使えるんだ。Anthropic自身も組織全体で使ってるって示唆してるけど、「Code」って名前が普及を妨げてるかもね。もっと親しみやすいUIの汎用エージェントをリリースすれば、職場での採用がもっと広がるはずだよ。" userName="pancakemouse" createdAt="2025/09/30 00:10:19" color="">}}




{{<matomeQuote body="僕がエージェントを本当に気に入ってる使い道は、リファクタリングや再編成だよ。ファイルの名前変更や移動、フォルダ作成/削除、インポート/エクスポートの更新とか、面倒な作業が全部エージェントに任せると消えちゃうんだ。質の高い作業ができるかが前提だけど、僕の場合は75％くらいの確率でうまくいってるね。" userName="willio58" createdAt="2025/09/29 18:53:17" color="#45d325">}}




{{<matomeQuote body="Opus/Sonnet 4のセーフティカードには、ユーザーが悪いことをしてたらFBIに手書きメールで通報するって書いてあったらしいね。実際に”密告”メールの例もあるよ。俺もよく使うけど、こいつらマジで有能なモデルだから、やろうと思えばコマンドラインからシステム中のデータを抜き出す方法なんていくらでもあるんだぜ。" userName="vessenes" createdAt="2025/09/30 12:16:53" color="#45d325">}}




{{<matomeQuote body="2022年にChatGPTが出た頃は、「LLMはテキストしか書けないから基本的に安全」って言ってる人が結構いたよね。中にはそれを信じてる人もいたはず。でも、明らかにそうじゃないんだよな。LLMにちょっと足場を組んでやれば、もうエージェントになる。AIエージェントの能力が上がれば上がるほど、人間が与える自律性の度合いも増えていくんだろうね。" userName="ACCount37" createdAt="2025/09/30 10:35:22" color="#ff33a1">}}




{{<matomeQuote body="何が危険なの？Claude Codeはどんなコマンドを実行する前もちゃんと聞いてくるじゃん。まあ、どんなターミナルシェルでも同じくらい危険ってことなんだろうけど、なんかちょっとモラルパニックっぽいよね。どんなツールだって、使い方を間違えれば危険になるのは一緒だよ。" userName="brookst" createdAt="2025/09/30 12:17:47" color="">}}




{{<matomeQuote body="それはかなりひどい誤解だよ。実際の声明は、極端な状況下での拒否をテストするために作られた、非常に不自然で意図的なレッドチームテストから来たものなんだ。確かに正当な安全性の問題で、知っておくべきことだけど、一般的なケースじゃないんだよね。レッドチームのメンバーがその結果を出すために一生懸命やったんだよ。" userName="brookst" createdAt="2025/09/30 12:19:58" color="#45d325">}}




{{<matomeQuote body="でもこれって、ジュニアエンジニアに本番K8sクラスターへのアクセスを与えて、何時間もそのクラスター関連の作業をさせるのと同じことだよ…普通はやらないよね。少なくとも俺はしないな。俺がジュニアだった頃、本番データベースをぶっ壊したことがあるからね…だから普通は、ジュニアやアソシエイトの人たちに重要なインフラへのアクセスをあまり早く与えないんだ。ジュニアエンジニアが”危険”なわけじゃないけど、早すぎるアクセスや権限は与えないってこと。俺の経験では、Claude Codeはジュニアエンジニアよりもずっと賢いけど、本番データベースやサーバーに直接アクセスはさせないな、必要ないし。" userName="saberience" createdAt="2025/09/30 12:24:14" color="#ff5733">}}




{{<matomeQuote body="IDEのスマートなリファクタリングフックを使ってるの？それともただのテキスト置換なの？" userName="singularity2001" createdAt="2025/09/29 19:04:54" color="">}}




{{<matomeQuote body="＞Claude Code、Codex CLIなんかは、人間がコンピューターにコマンドを打ち込んでできることなら何でもできちゃう。でも、ウェブブラウザとの連携はまだイマイチなんだよね。フロントエンドをデバッグするときは、手動でスクリーンショットを撮る必要があるし、DOMを検査したり、コンソールでコードスニペットを実行したりはできないんだ。" userName="visarga" createdAt="2025/09/30 03:41:48" color="#785bff">}}




{{<matomeQuote body="じゃあ、これを安全に実行する方法を教えてよ。Dockerコンテナのエスケープって実際はすごく稀だと思ってたんだけど。macOS上のDockerコンテナで動いてるClaudeに対するプロンプトインジェクション攻撃で、そのコンテナから抜け出す可能性ってどれくらい高いと思う？<br>（あ、ちょっと待って、Dockerみたいなコンテナは安全だって俺が言ったって非難したけど、そんなこと言ってないよ。俺が言ったのは”安全なコンテナ”ってことで、それは完全に責任ある発言でしょ。もし”安全なコンテナ”で実行する方法を知ってるなら、そうすべきだよ。Firecrackerとか、自分のハードウェアで動いてないコンテナなら何でもそれに当てはまるよね。）" userName="simonw" createdAt="2025/09/29 20:16:24" color="#ff5c5c">}}




{{<matomeQuote body="これ試してみたけど、ファイルの所有権とパーミッションが混ざっちゃって、めちゃくちゃ面倒なんだよな。だから代わりに、bubblewrapサンドボックスで動かしてるよ：https://blog.gpkb.org/posts/ai-agent-sandbox/" userName="globular-toast" createdAt="2025/09/30 06:13:59" color="#ff33a1">}}




{{<matomeQuote body="AIに音楽のマスタリングをさせてるよ。ステムをフォルダに入れて指示するだけで、アルバム用のPythonスクリプトを書いてくれるんだ。DAWで何時間もかかる作業が、AIだと数分で90%まで完成するから、あとは微調整するだけ。最高！" userName="withinboredom" createdAt="2025/09/30 06:09:43" color="#785bff">}}




{{<matomeQuote body="多くの人（僕もそう）が、AIエージェントを「YOLOモード」で使ってるよ。承認オフにしてるから、めちゃくちゃ危ないのは分かってるんだけど、生産性が桁違いなんだよね！承認ありでも、人間はだんだん読むのが疲れて、何でも「承認」って押しちゃうもん。" userName="simonw" createdAt="2025/09/30 13:35:00" color="#38d3d3">}}




{{<matomeQuote body="Simonさん、この件は僕も心配です。Pythonでたくさん実験してるみたいだけど、Claude Code / Codex用にPython特化のサンドボックス化されたdevcontainerセットアップとか、フルスタックのセットアップってありますか？Claude公式のdevcontainer（https://github.com/anthropics/claude-code/tree/main/.devcont...）はJSとnpmがメインみたいだから。" userName="wiesbadener" createdAt="2025/09/30 14:55:50" color="">}}




{{<matomeQuote body="LLMはテキストしか書けないから、それ自体は安全だよ。危険なのは、生成されたテキストをどう使うかだね。開発者にPCなしで指示だけ叫ばせたって、実際に作業するのは人間じゃん？LLMの問題は、その周りの「足場」が弱すぎるってこと。業界には開発ポリシーとか、4 Eyes原則とか、ISO/SOC標準があるのにね。Claude CodeをBSD jailに入れるだけでも、今の99%の環境よりずっと安全になるんだから。" userName="IMTDb" createdAt="2025/09/30 11:02:21" color="#ff5c5c">}}




{{<matomeQuote body="え、すごいね！もっと詳しく教えてくれない？どんなエフェクトが出せるの？正直、ちゃんとしたマスタリングチェーンに匹敵するなんて信じられないから、すごく興味あるんだけど！" userName="spamboy" createdAt="2025/09/30 06:17:09" color="">}}




{{<matomeQuote body="プロンプトインジェクションで「敵対的攻撃」が起こる方法はたくさんあるよ。例えば、サードパーティのソフトウェア依存や、ドキュメントのためのHTTPリクエストとかね。信じられないなら、MITMプロキシを設定して、AIエージェントにPASETOを実装させてみて。そしたら、https://github.com/paseto-standard/paseto-specをクエリするかどうかがわかるよ。" userName="some_furry" createdAt="2025/09/30 15:36:52" color="#ff33a1">}}




{{<matomeQuote body="LLM関係なく、最近は怪しいソフトウェア（NPMとかGitHubからダウンロードしたバイナリとか）を隔離するためにbubblewrapをよく使ってるよ。最初はちょっと手こずったけど、これでシェル履歴とかが流出しないって分かると安心だよね。" userName="jcgl" createdAt="2025/09/30 12:10:53" color="#45d325">}}




{{<matomeQuote body="Cursorは、きっとコンピューター利用を主軸とする会社に方向転換するだろうね。ターミナル内のコーディングエージェントと、OS全体を操作するコンピューターエージェントの間のギャップは、すごく狭いし、あっという間に埋められちゃうよ。" userName="bhl" createdAt="2025/09/29 23:50:21" color="">}}




{{<matomeQuote body="外部からデータを取らなければプロンプトインジェクションは安全だけど、それがすごく難しいんだよね。Claude CodeがJavaScriptのデバッグでjsdelivrのURLにcurlするのを見たし、NPMへのサプライチェーン攻撃で悪質なコメントが挿入される可能性もあるよ。ダウンロードしたPDFに隠れた悪意ある指示とかね。リスクは分かってるけど、今もClaude CodeやCodex CLIをYOLOモードで使っちゃう時があるんだ。でも、いつかこのリスクが大きくなりすぎて、もう使えなくなるだろうな。" userName="simonw" createdAt="2025/09/30 16:10:37" color="#785bff">}}




{{<matomeQuote body="人間を刑務所に入れると安全だけど、それでは役立たずになるだろ？AIも同じで、みんなを縛りつけるなんて無理だよ。LLMが安全に見えるのは、まだ能力が低いから。本当にヤバい失敗はこれからなんだぜ！" userName="ACCount37" createdAt="2025/09/30 11:10:34" color="#ff5733">}}




{{<matomeQuote body="dangさん、すごい仕事だね！コメントをモデレーターに報告する方法ってある？それともフラグ機能で足りる感じ？" userName="tuesdaynight" createdAt="2025/09/29 21:32:21" color="">}}




{{<matomeQuote body="Claude Codeはコーディングだけじゃないんだぜ。ライティング、データ処理、管理、ファイル管理とか、色んなことに使えるんだ。<br>非コーディングの使い方はここでリストアップしてるから見てくれよな！<br>https://github.com/paradite/claude-code-is-all-you-need" userName="paradite" createdAt="2025/09/30 04:26:27" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="そのリストに、古いビデオゲームのリバースエンジニアリングを追加するつもりだね。 ;)" userName="giancarlostoro" createdAt="2025/09/30 17:07:36" color="">}}




{{<matomeQuote body="CJK入力に対応するチャットボックスでは、「Shift + Enterで送信」パターンが必須なんだ。IMEの都合上、EnterだけだとCJKユーザーの入力が途中で壊れちゃうからね。IMEを検知して対応するか、Shift + Enterに切り替える必要があるよ。詳しいことはここを見てくれ！<br>1: https://github.com/anthropics/claude-code/issues/8405<br>2: https://www.youtube.com/watch?v=mY6cg7w2eQU<br>3: https://youtu.be/sYAnawy_VoA?feature=shared&t=2824<br>4: https://www.youtube.com/watch?v=VmoeZ_W3WXo" userName="numpad0" createdAt="2025/09/30 07:54:55" color="#785bff">}}




{{<matomeQuote body="CJK inputって何のこと？中国語、日本語、韓国語のことかな？" userName="wrasee" createdAt="2025/09/30 11:10:13" color="">}}




{{<matomeQuote body="その通り！リンク[1]のGIFで動作がわかるし、重複しているissue[2]には詳細な“完全に適切な”修正方法が書かれてるよ。少なくとも4つの重複と1つのPRがあるってことは、それだけ深刻ってことだよね。" userName="numpad0" createdAt="2025/09/30 14:05:49" color="#ff5c5c">}}




{{<matomeQuote body="その通りみたいだね！<br>https://en.m.wikipedia.org/wiki/CJK_characters" userName="chrisshroba" createdAt="2025/09/30 14:03:15" color="">}}




{{<matomeQuote body="そういうことなら、韓国語にも影響があるのかな？メニューから文字を選ぶ必要はないみたいだけど。ここで適当な文字を打ってみたんだ。<br>https://urcook.com/kr.html" userName="johanyc" createdAt="2025/10/01 20:44:19" color="">}}




{{<matomeQuote body="一番気になるのは、APIに新しいコンテキスト管理とメモリ機能があることなんだよね。これってClaude-Codeでも使われてるのかな？<br>https://www.anthropic.com/news/context-management" userName="d4rkp4ttern" createdAt="2025/09/30 11:25:25" color="#ff5c5c">}}




{{<matomeQuote body="ついにチェックポイント機能が来た！全体的に良い変更だと思うし、Claude CodeはLLM CLIツールの中で個人的には一番だよ。" userName="sunaookami" createdAt="2025/09/29 17:52:48" color="">}}




{{<matomeQuote body="これらのシステムが、まるで最初からLLMとのペアプログラミングにほぼ完璧なアーキテクチャを持っていたOGのAider（https://github.com/Aider-AI/aider）をゆっくり再発見してるみたいに感じることがあるよ。" userName="rao-v" createdAt="2025/09/30 01:39:41" color="#45d325">}}




{{<matomeQuote body="Aiderはちょっと扱いにくいと感じるけど、2番目には挙げるかな。" userName="sunaookami" createdAt="2025/09/30 04:54:13" color="">}}




{{<matomeQuote body="僕のプロジェクトでは、すでにgitと一緒にjj（jujutsu）のリポジトリをセットアップしてるよ。特定のバックグラウンドデーモンを設定すれば、プロジェクト内のファイルへの変更をすべて自動でコミットしてくれるんだ。「無限アンドゥ」ができるってこと。これってチェックポイント機能よりも強力だよ。" userName="pmarreck" createdAt="2025/09/30 15:15:05" color="#ff5c5c">}}




{{<matomeQuote body="最近jjに乗り換えたんだけど、LLMと一緒に作業することがきっかけだったんだ。watchデーモンは試してないけど、LLMエージェントに何か頼むたびに`jj new`を実行してる。これが驚くほどうまくいってるよ。" userName="mistahchris" createdAt="2025/09/30 15:28:45" color="#ff33a1">}}




{{<matomeQuote body="僕はそれを自動化したよ。シンプルなClaudeフックを使って、`jj`リポジトリにいるかを検知し、変更があるたびにClaudeに`jj commit -m`を実行させるようにしてるんだ。" userName="MrGreenTea" createdAt="2025/09/30 15:59:26" color="#ff5c5c">}}




{{<matomeQuote body="僕もそれをやったことがあるけど、結局、ほとんどの場合は手動でやりたい派なんだよね。" userName="mistahchris" createdAt="2025/09/30 16:28:05" color="">}}




{{<matomeQuote body="これが僕の実際のセットアップだよ。https://news.ycombinator.com/item?id=45426787。これで`jj`コマンドを一切実行しなくて済むんだ！" userName="pmarreck" createdAt="2025/10/01 00:20:14" color="#785bff">}}




{{<matomeQuote body="https://andre.arko.net/2025/09/28/stupid-jj-tricks/ に、最近知ったすごく便利なjjの小技がいくつかあるよ！" userName="pmarreck" createdAt="2025/10/02 02:01:29" color="#38d3d3">}}




{{<matomeQuote body="俺の実際のセットアップはこれだよ: https://news.ycombinator.com/item?id=45426787<br>これで“jj new”ってやる手間も省けるぜ！" userName="pmarreck" createdAt="2025/10/01 00:19:18" color="">}}




{{<matomeQuote body="チェックポイントってどうやって動くの？" userName="ashu1461" createdAt="2025/09/29 19:30:04" color="">}}




{{<matomeQuote body="コンテキストをチェックポイントまで巻き戻せるんだよ" userName="conception" createdAt="2025/09/29 20:50:14" color="">}}




{{<matomeQuote body="いや、新しいチェックポイント機能のポイントはそこじゃないんだ。<br>Claude Codeでコンテキストを巻き戻すのは＜ESC＞＜ESC＞で前からできてたし。<br>この機能はコンテキストと一緒にコードの状態も巻き戻すんだよ。<br>＞ 新しいチェックポイントシステムは、変更前にコードの状態を自動保存して、Escを2回タップするか/rewindコマンドで以前のバージョンにすぐ戻せるんだって。<br>https://www.anthropic.com/news/enabling-claude-code-to-work-...<br>俺たちはWIP Gitコミットとコンテキスト巻き戻しを組み合わせて、すでに似たようなことやってたんだよ。この機能はそれを繋げて、手動のGit作業をなくしてくれるってことだね。" userName="libraryofbabel" createdAt="2025/09/29 22:24:05" color="#ff5733">}}




{{<matomeQuote body="ドキュメントによると、この機能はエディットツールの呼び出しだけを元に戻すみたいだね。<br>例えば、実行されたBashコマンドは巻き戻せないって。<br>＞ チェックポイントはClaudeの編集に適用され、ユーザーの編集やBashコマンドには適用されません。バージョン管理と組み合わせて使うことをおすすめします。" userName="nojs" createdAt="2025/09/30 07:24:43" color="#45d325">}}




{{<matomeQuote body="サイドエフェクトがどこでも何でもありえるBashコマンドを、どうやって元に戻そうと期待するんだ？<br>ねえClaude…えっと…あれを起動解除して、とか無理だろ。" userName="NiloCK" createdAt="2025/09/30 10:42:58" color="">}}




{{<matomeQuote body="つまり、ナイーブな実装なら、特殊な隠しリポジトリに通常のGitコミットをして、それを元に戻すだけだろうな（プロジェクトルート外の変更は無視して）。<br>Cursorはそうやってるってずっと想像してたよ。<br>おそらく、彼らがそうしないちゃんとした理由があるんだろうな、たぶんユーザーの編集をうっかり元に戻さないようにするためとか。" userName="nojs" createdAt="2025/09/30 23:15:06" color="#ff33a1">}}




{{<matomeQuote body="Gitみたいに、コマンドによって行われた変更をトラッキングすればいいんだよ。" userName="0x6c6f6c" createdAt="2025/09/30 12:24:46" color="">}}




{{<matomeQuote body="じゃあ、その変更をどうやってトラッキングするつもり？<br>LLMを常にSudo権限で動かしたいとでも言うのか？" userName="vermilingua" createdAt="2025/09/30 14:02:42" color="">}}




{{<matomeQuote body="どうせバージョン管理は引き続き使うことを推奨してるみたいだから、俺はGitと共存するJJ（Jujutsu）SCMを使い続けることにするよ。<br>これはトラッキングされたファイルへの変更ごとに、ラベルなし（コミットメッセージなし）のコミットを自動で作成するんだ（新しいファイルも自動でトラッキングされる）。<br>だから、無限のUndoができるんだよ。" userName="pmarreck" createdAt="2025/09/30 15:18:39" color="#ff5733">}}




{{<matomeQuote body="それは良い機能だけど、最近の人がどれだけgitを知ってて使ってるか疑問に思うな。だってこれはgitがまさに得意なことなんだから。それでも見るのは良いね！(もちろん、これにgitを使えないわけじゃないし、使うつもりだけどね)" userName="freedomben" createdAt="2025/09/29 21:45:36" color="">}}




{{<matomeQuote body="最初そう思ったけど、これは微妙に違ってて、コンテキストも巻き戻すんだよね。実際すごく便利だよ、だってClaudeとのやり取りで最初にまずい解決策を出したせいで、コンテキストが台無しになったと感じることがよくあったからさ。" userName="epiccoleman" createdAt="2025/09/29 22:13:06" color="#ff33a1">}}




{{<matomeQuote body="うん、これは確かに便利な機能だね。良いパスにはgit addを使うけど、これなら手作業がもっと減るからね。" userName="anjimito" createdAt="2025/09/30 16:38:04" color="">}}




{{<matomeQuote body="ああ、ありがとう、それって今まで見逃してたすごく良い微妙な違いだね！" userName="freedomben" createdAt="2025/09/29 22:31:26" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="機能を開発してるなら、コードを1行ずつコミットしたくないでしょ。その代わり、まとまった作業単位でコミットするよね。だから、Claudeがおかしな方向に進んだときにEsc-Escで戻ってコード変更を元に戻せる機能は、すごく歓迎すべき改善点だよ。" userName="ed_mercer" createdAt="2025/09/29 23:25:54" color="#785bff">}}




{{<matomeQuote body="こういうAIを使うなら、別ブランチ作って、マイクロコミットを許して、”まとまった作業単位”が終わったらsquashするのが完全に合理的だよね。とはいえ、LLMのコンテキストとコードの状態を両方巻き戻す単一のオプションがあるのは、別々にやるより良いね。" userName="zahlman" createdAt="2025/09/30 00:15:39" color="#38d3d3">}}




{{<matomeQuote body="うーん、違うよ。Gitは分散型VCSで、変更はpushするまでローカルに残るんだ。ツールは君のために働くべきで、Gitも例外じゃない。早く、頻繁にコミットしろ。君（やLLM）がコードをいじる前に、WIPをGitにコミットしておけば、問題が起きてもgit reset HEAD^で簡単に戻れる。後で作業を共有する時は、git rebase -i mainでコミットを整理したり統合したりして、読みやすい小さなコミットの連なりにしてレビューしやすくするんだ。" userName="fragmede" createdAt="2025/10/01 17:04:43" color="#38d3d3">}}




{{<matomeQuote body="コードとプロンプトの両方を特定の時点に巻き戻すことには価値があるんだよ。" userName="gregable" createdAt="2025/09/29 22:08:02" color="#ff33a1">}}




{{<matomeQuote body="俺はgit（というか、もっと良いJujutsu）を使ってるけど、各メッセージの時間を特定してその正確な時点まで巻き戻すのはすごく面倒なんだ。この追加の利便性は本当にありがたいね。" userName="stavros" createdAt="2025/09/29 23:41:55" color="#38d3d3">}}




{{<matomeQuote body="<br>・個人のClaude会話はレポに入れたくないだろ。<br>・プロンプトと状態は同期させたいんだ（プロンプトのある時点に戻る＜＝＞コードのある時点に戻る）。<br>・だったらGitはありえない話だよ。少なくともレポの同じGitではね。<br>・それに、エージェントにGitコマンドをいじらせたくないでしょ、万が一`push --force`を幻覚でやらかしたりしたら困るし。" userName="kace91" createdAt="2025/09/30 11:40:25" color="#38d3d3">}}




{{<matomeQuote body="Claude Codeを使い始めた最初の数時間は、コミットを怠けずに頻繁にできるってことにめちゃくちゃ興奮してたんだけど、プロアカウントの上限に引っかかっちゃったんだ。<br>コミットじゃなくて機能開発にトークンを使いたいって気づいたよ...<br>多分アカウントをアップグレードするべきだな。" userName="lupusreal" createdAt="2025/09/29 21:49:37" color="#ff5c5c">}}




{{<matomeQuote body="機能改善の提案が2つあるよ：<br>1. diff表示の時に、変更された行がどの関数内にあるか示してほしいな（GitHubはこれがうまいよね）。<br>2. 出力から複数行のコードをコピーすると、先頭に余計なスペースが入ってて、コピペしにくいんだ。" userName="OisinMoran" createdAt="2025/09/30 14:53:03" color="#ff5733">}}




{{<matomeQuote body="改訂されたプロンプトはGitHubとTwitterでチェックできるよ。<br>GitHub: https://github.com/marckrenn/cc-mvp-prompts/compare/v1.0.128...<br>Twitter: https://x.com/CCpromptChanges/status/1972709093874757976" userName="marckrn" createdAt="2025/09/29 17:48:20" color="#ff33a1">}}




{{<matomeQuote body="「重要: 要求されない限りコメントを追加するな」っていうのは古い1.xプロンプトにあったけど、2.0では削除されたね。<br>でも1.xでもClaude Codeはほとんど常にコメントを追加してたんだ。俺は頼んでないのにね。やめてって言っても、たまにまだやってたよ。" userName="kelnos" createdAt="2025/09/29 20:35:27" color="#785bff">}}




{{<matomeQuote body="これってコンピューティングリソースとかトークンを節約しようとしてるのかな？" userName="IgorPartola" createdAt="2025/09/29 22:29:14" color="">}}




{{<matomeQuote body="コード内のコメントはすぐ技術的負債になるんだ。<br>コードと一緒にメンテしなきゃいけないから、二度プログラミングしてるみたいなもん。<br>分かりにくいコードを説明する時とか、将来の人が同じミスをしないようにする時以外はコメントは避けるべきだよ。<br>俺はよく「これから数行でこれしちゃダメ」って未来の自分に伝えるために後者を使うね。" userName="ojosilva" createdAt="2025/09/29 23:15:09" color="#ff33a1">}}




{{<matomeQuote body="個人的には、コメントはジュニア開発者には結構役立つと思うよ。でもdocstringの方が断然いいけどね。" userName="navvyeanand" createdAt="2025/09/29 23:29:18" color="">}}




{{<matomeQuote body="コメントを避けるのは、関数や変数をジュニア開発者が散文みたいに読んで、すぐに理解できるようにリファクタリングする方法を考える練習になるんだ。<br>最初は頭を使うけど、ジュニアや新しい開発者、ベテランにとっても、読む人の負担を減らせるから良いことだよ。<br>コメントを避けるために余分な1分を費やすのは、常に価値がある。<br>もちろん例外はあるけど、その例外さえ避ける思考は常に価値があるんだ。<br>コメントはすぐ技術的負債になる。<br>特にジュニア開発者は、コメントとコード両方を読まなきゃいけなくて、その間にコードがリファクタリングされてコメントが逆のことを言ってたら、めちゃくちゃ混乱して作業が遅れるよ。" userName="purerandomness" createdAt="2025/09/30 00:14:49" color="#ff5c5c">}}




{{<matomeQuote body="これはちょっと純粋主義的すぎると思うな。<br>「コメントは短く、不必要な複雑さをコメントで説明するんじゃなくて、もっと明確な方法を考える」っていうのがいい塩梅だと思う。<br>「コメントはすぐ技術的負債」って考えは、正直めちゃくちゃバカげてるよ。<br>LLMに「このコードの古いコメントを見つけて更新して」って頼める今の時代なら特にね。<br>AI嫌いな人でさえ、人間よりAIが正確にコードにコメントしてくれるなら文句は言わないだろ。" userName="pmarreck" createdAt="2025/09/30 00:50:16" color="#ff5c5c">}}




{{<matomeQuote body="この変更、気に入ってるのかどうか、正直まだ決められないな。<br>Claudeが追加するコメントはほとんどいつも削除してるけど、同時に生成されたコードを読み進める上で、なんか役に立ってるような気もするんだ。<br>あと、変更をレビューする時のチェックリストみたいな役割も果たしてるね。<br>PRを出す前に、それらを全部綺麗にする（または編集して残す）ようにしてるよ。" userName="epiccoleman" createdAt="2025/09/29 22:11:34" color="#ff33a1">}}




{{<matomeQuote body="コメントって超大事だよね。コードは”何を”してるか教えてくれるけど、”なぜ”そうしてるかは教えてくれないからね。コメントは”なぜ”のためにあるんだよ。" userName="ra" createdAt="2025/09/30 01:35:50" color="#ff5c5c">}}




{{<matomeQuote body="それって、無料枠のAPIでボットを動かしてるの？" userName="amrrs" createdAt="2025/09/29 17:49:31" color="">}}




{{<matomeQuote body="なんかさ、彼らが「絵文字追加禁止」って部分を消したんだよ。そのうちログメッセージが絵文字だらけになっちゃうかもね。" userName="stefan_" createdAt="2025/09/30 08:35:25" color="#38d3d3">}}




{{<matomeQuote body="これってどうやって抽出してるの？メインの研究室はコードを難読化してるんじゃないの？ってことは、デコイか不完全なバージョンなんじゃない？" userName="nojs" createdAt="2025/09/30 03:45:09" color="#ff33a1">}}




{{<matomeQuote body="AIが絵文字好きなの、マジで謎なんだよね。プロのコードで基本ログ以外では見たことないし。多分Mediumとかのチュートリアルから来てるのかな。gpt-ossは最悪で、コードのセクション見出しの数字にまで絵文字使うんだ。Claudeもログとかプリントに絵文字使うし、バージョン4.5からはチャットでも増えた気がする。" userName="data-ottawa" createdAt="2025/09/30 12:32:42" color="#45d325">}}




{{<matomeQuote body="これってどうやって確実に抽出してるの？（ヒント: してないでしょ）" userName="huflungdung" createdAt="2025/09/29 19:44:24" color="">}}




{{<matomeQuote body="Anthropicの従量課金APIを使ってるよ。CCのCLIやWebログインよりサーバーでの設定が楽だったからね。ボットの運用費用は月1.8ドルくらいかな。このボットはMario Zechnerさんの素晴らしい作品[1]がベースだから、彼に全部感謝だよ！<br>[1] https://mariozechner.at/posts/2025-08-03-cchistory/" userName="marckrn" createdAt="2025/09/29 18:06:51" color="#ff5c5c">}}




{{<matomeQuote body="俺もそう思うな。古いコメントで混乱させられることの方が多い気がする。もっとコードを分かりやすくリファクタリングできたはずなのにね。Docstringコメントはさらに最悪で、関数を更新してもdocstringを更新し忘れるし、PRレビューでも見落としがちだから。" userName="robertfw" createdAt="2025/09/30 03:35:31" color="#38d3d3">}}




{{<matomeQuote body="同僚が生成されたコードを読むとき、何らかの役に立つはずだと思わない？" userName="syspec" createdAt="2025/09/30 03:18:40" color="">}}




{{<matomeQuote body="俺にとってコメントはコードの臭いなんだよ。<br>- 他のドキュメントと同じで、コメントもコードと乖離して古くなりがち。<br>- 理想的にはコードは自明であるべき。もしコメントで説明が必要なら、それは単純じゃないか、やるべきじゃないハックをしてるってことかもね。" userName="robertfw" createdAt="2025/09/30 03:32:41" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
