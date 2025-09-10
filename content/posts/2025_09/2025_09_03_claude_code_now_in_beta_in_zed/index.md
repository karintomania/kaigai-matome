+++
date = '2025-09-03T00:00:00'
months = '2025/09'
draft = false
title = 'Claude CodeがZedにベータ登場！気になるその現状は？'
tags = ["AI", "コーディング", "IDE", "開発ツール", "ベータ版"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Claude CodeがZedにベータ登場！気になるその現状は？

引用元：[https://news.ycombinator.com/item?id=45116688](https://news.ycombinator.com/item?id=45116688)




{{<matomeQuote body="Zedは好きだけど、Claude Code SDKベースのせいで色々未完成だね。/compactコマンドがないから「Prompt too long」エラーで困るし、モデル切り替えやPlan modeもない。IDEの問題も検出してくれないし、ZedのDiscordではAnthropicの担当者に相談しろって言われたよ。現状はZed内でターミナル使う方がマシだね。" userName="agrippanux" createdAt="2025/09/04 04:38:46" color="#ff5c5c">}}




{{<matomeQuote body="Agent Modelは最近出たばかりで、GitHubのIssue見ても急いでリリースしたって感じだね。でも、AI分野ではよくあることだし、基礎ができてればスラッシュコマンドとか小さい機能は後からいくらでも追加できるから、悪いことじゃないと思うよ。" userName="dewey" createdAt="2025/09/04 07:54:07" color="">}}




{{<matomeQuote body="正直、/compactは使ったことないな。いつも/clearして、必要なコンテキストを新しく読み込むんだ。今のところ、コンパクトされたコンテキストってあんまり役に立つとは思えないんだよね。" userName="manmal" createdAt="2025/09/04 06:50:02" color="">}}




{{<matomeQuote body="/compact後ってモデルが混乱しがちだから、俺も/clear派だよ。Claude Codeには、会話ログ、実行コマンドとその結果、成功や失敗、学んだこと、次の計画まで全部記録するように指示してる。コンテキストがいっぱいになったら/clearして、新しいセッションでこのワークログを読み込ませれば、混乱せずに作業を再開できるんだ。ワークログはコンテキストがポータブルになるから超便利だよ。" userName="beefsack" createdAt="2025/09/04 09:02:52" color="#ff33a1">}}




{{<matomeQuote body="/compactのコツは、パラメータを指定することだよ。「/compact XZYに焦点を当てて、次のステップはFOOBAR、BARFOOの概要を残して」みたいにね。そうすれば、要約がずっと的確で役立つようになる。ワークログやPRDはどっちにしろ必須だけどね！" userName="danielbln" createdAt="2025/09/04 11:45:26" color="#ff5733">}}




{{<matomeQuote body="最初はPRDスペックを使ってるんだけど、「ワークログ」ってどうやるのか気になるな。Claude Codeでそれをする具体的な例とかある？" userName="felciano" createdAt="2025/09/04 12:53:38" color="">}}




{{<matomeQuote body="「PRDのフェーズ1を実装し、完了したらPRDを更新してフェーズ2に進む。」みたいに指示すればいいよ。" userName="danielbln" createdAt="2025/09/04 13:04:50" color="">}}




{{<matomeQuote body="そうそう、まさに俺もそんな感じで使ってるよ。/compactも/clearもそれぞれ価値があって、使い分けが大事だね。<br>俺の頭の中ではこんな感じかな：<br>- すぐに直したい／コンテキストを広げたい時 → /compactしてそのまま作業続行<br>- 次のフェーズに移る時 → 引継ぎドキュメントやワークログを更新してもらって、新しいフェーズに送る" userName="raduan" createdAt="2025/09/04 14:42:14" color="#ff5c5c">}}




{{<matomeQuote body="これ、ありがとう！そんな方法があるなんて知らなかったよ。" userName="xd1936" createdAt="2025/09/04 12:43:47" color="">}}




{{<matomeQuote body="Claude Codeを使って、自分で現在の状態を.mdファイルにまとめてから/clearして、そのファイルを新しいコンテキストとして読み込むといいよ。<br>/compactに似てるけど、これでコンテキストを細かく制御できるし、問題があれば修正してやり直せるから便利。" userName="furyofantares" createdAt="2025/09/04 18:10:12" color="#ff5733">}}




{{<matomeQuote body="これらの問題はSDKのせいみたいだから、AnthropicにSDKを採用してもらうのが唯一の現実的な解決策だね。" userName="mi_lk" createdAt="2025/09/04 07:03:40" color="">}}




{{<matomeQuote body="最初は期待したけど、これは実用ツールじゃなくてデモって感じだね。UIはいいけど、プロンプトの長さ制限が厳しくてすぐダメになったよ。<br>数ヶ月後にまた見てみる。" userName="cmrdporcupine" createdAt="2025/09/04 13:45:00" color="">}}




{{<matomeQuote body="Zed好きだからClaudeのネイティブサポートは嬉しいな！<br>ただ、AIオートコンプリートはCursorの方がまだ優秀だと思う。<br>Zedが資金調達したって聞いてよかった。これはCursorに対抗できる質の高いIDEになるための大きな一歩だね。https://benswift.me/blog/2025/07/23/running-claude-code-with...https://zed.dev/blog/sequoia-backs-zed" userName="ppeetteerr" createdAt="2025/09/03 17:35:47" color="#ff5733">}}




{{<matomeQuote body="Zedはコード生成の質はイマイチだけど、Electronアプリじゃないのは評価できるね。" userName="cnqso" createdAt="2025/09/03 18:09:36" color="">}}




{{<matomeQuote body="ホントだよ！Cursorで一番使えるのはAIオートコンプリートであって、エージェントじゃないんだよな。" userName="scottcorgan" createdAt="2025/09/03 18:37:59" color="">}}




{{<matomeQuote body="ZedがOllamaみたいなローカルAIでオートコンプリートを追加できないのは意外だったな。Qwen 2.5 coderみたいに小さくても十分だしオフラインでも動くんだ。<br>Zedみたいな会社がAIモデルのライセンスを売ってくれて、ローカルで実行できると嬉しい。<br>プログラミングドキュメントとかに特化した10-15Bパラメータのモデルなら、結構な値段でも買うよ。" userName="hajile" createdAt="2025/09/03 18:39:27" color="#ff5733">}}




{{<matomeQuote body="もう全てのHNスレッドに、Electronをディスる自動投稿があれば時間短縮になるのにね。" userName="llbbdd" createdAt="2025/09/03 20:05:59" color="">}}




{{<matomeQuote body="Electronは開発者には便利だけど、パフォーマンスやUXを犠牲にするダメなやり方だよ。コーディングエージェントのおかげで、これからはAIが他のプラットフォームの面倒を見てくれるから、みんなネイティブフレームワークに戻って、一つのプラットフォーム向けにコードを書くべきだね。" userName="dcreater" createdAt="2025/09/04 01:34:24" color="#ff5c5c">}}




{{<matomeQuote body="Electron批判は古い幻想だし、そんなことは絶対に起こらないよ。プログラミングはもっと使いやすくなる方向へ進むんだ。<br>HNの奴らを感動させるためだけに、わざわざクロスプラットフォームのネイティブアプリを作るなんて、誰も時間の無駄はしないよ。devex（開発者体験）を軽視してる連中との違いだな。" userName="llbbdd" createdAt="2025/09/04 05:32:14" color="#ff33a1">}}




{{<matomeQuote body="最近はCursorよりZedを使ってるんだけど、唯一オートコンプリートだけが足りないんだよね。リファクタリングとか定型コードが多い時はCursorが最強。Zedのオートコンプリートがもっと良くなったら、Cursorはもういらないな。" userName="mac-monet" createdAt="2025/09/04 02:12:28" color="#785bff">}}




{{<matomeQuote body="Zedって、node.jsランタイムと何百MBものJavaScriptを含んでるんだよね。結局、実質Electronじゃん。" userName="TiredOfLife" createdAt="2025/09/03 19:12:28" color="">}}




{{<matomeQuote body="ちょっと気になるんだけど、Cursorにそのまま留まらないのはなんでなの？" userName="andreygrehov" createdAt="2025/09/04 03:15:48" color="">}}




{{<matomeQuote body="話はズレてないよ。Zedエディタについて議論してるんだから。彼らのマーケティング戦略は「Electronじゃない」「Rust製」「ネイティブ」「VSCodeより速い」ってのが売りでしょ？これこそが、みんながZedに乗り換える唯一の理由なんだから。" userName="arianvanp" createdAt="2025/09/04 06:11:08" color="#ff33a1">}}




{{<matomeQuote body="本当にそうなのかな？結局、仕事ができればいいわけで。理想的な価値観なんて、仕事には役立たないよ。だから、自分に一番合ったエディタと必要な機能を選ぶ。で、今はZedがそれじゃないってだけ。" userName="shreddit" createdAt="2025/09/03 18:15:35" color="#45d325">}}




{{<matomeQuote body="全くのデタラメだね。このブログ記事を読んでみてよ。<br>https://zed.dev/blog/videogame<br>https://zed.dev/blog/we-have-to-start-over" userName="skhameneh" createdAt="2025/09/03 19:44:23" color="#45d325">}}




{{<matomeQuote body="私にとっては、エディタがツールの中で一番重要。AI機能は二の次なんだ。Zedはパフォーマンスもユーザーエクスペリエンスも完璧にこなしてる（うん、エディタにはそれが大事だよね）。AIのゴリゴリユーザーじゃないけど、Zedのインラインサジェストとか、ZedのサブスクでOpus 4.1をたまに使ってるよ。" userName="barkerja" createdAt="2025/09/04 03:48:30" color="#ff33a1">}}




{{<matomeQuote body="私も同じ意見だよ。AIエージェントはあんまり使わないけど、オートコンプリートは好き。でも、GitHub Copilotもこの点ではかなり良くなってきたって聞くけど、どうなんだろう？最近は比較してないんだ。もしパフォーマンスが同じなら、メインIDEがフォーク版なのが嫌だから、GitHub Copilotに戻ることも真剣に考えるだろうね。CursorでAIとは関係ないバグにたまに遭遇するし、修正が遅れたり、フォークが原因の新しいバグじゃないかって心配になるんだ。複雑なコードベースをフォークすることの宿命みたいなものだね。" userName="danenania" createdAt="2025/09/03 21:25:09" color="#ff33a1">}}




{{<matomeQuote body="もうCursorのオートコンプリートが本当に嫌いになったよ。積極的すぎてもうコード書けないんだ。タブだけじゃなくて、CMDまで乗っ取られたみたい。" userName="epolanski" createdAt="2025/09/03 23:52:18" color="#785bff">}}




{{<matomeQuote body="彼らは追いついてないね。時間があったのにしなかったんだ。最近オートコンプリートモデルを4o-miniから4.1-miniに変えたけど、賢くなったわけじゃない。去年のCursorの魔法みたいな体験とは違うよ（最近試してないから、今はもっと良いかもだけど）。WindsurfがCursorの魔法に一番近いって聞いたよ。Windsurfの無料プランで無制限のオートコンプリートが使えるらしいし、試してみようかな。" userName="debian3" createdAt="2025/09/03 22:43:43" color="#38d3d3">}}




{{<matomeQuote body="Zedでローカルモデル使えるってさ！Threadの設定からOllamaを選べるよ。" userName="kilohotel" createdAt="2025/09/03 22:18:56" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ZedのAI補完はCursorに及ばないし、Zedは不安定でよくクラッシュする。AIプロンプト評価で全チャット履歴が送られるのは、会社にとって大問題だろう。Zedの資金調達は嬉しいが、Sequoiaは後々面倒なVCだ。CursorにはWindsurf、Neo-Vim、Helix、Emacs、Jetbrainsなど競合は多い。AIに全て任せる働き方を望まない人もいるんだ。https://zed.dev/blog/sequoia-backs-zed" userName="kelthuzad" createdAt="2025/09/03 20:37:12" color="#785bff">}}




{{<matomeQuote body="エディターの自動補完は苦手だな。それよりもAIエージェントとペアプロする方がいいよ。エージェントにいっぱいコンテキスト与えて、実装させて、レビューして修正するって感じ。会社のルールでローカルのセルフホストモデルを使わなきゃいけないから、自動補完は邪魔なんだよね。Claude Codeは企業のAWS Bedrockアカウントで使ってるよ。" userName="3uler" createdAt="2025/09/04 08:15:37" color="#ff33a1">}}




{{<matomeQuote body="プログラミングやビジネスライティングに特化した、もっと小さなパラメータのモデルが欲しいって話だけど、今のLLMの賢さには大量のデータでの事前学習が必要なんだ。プログラミングやビジネス文書だけじゃ良いモデルを学習させるには足りないよ。" userName="rolisz" createdAt="2025/09/03 19:47:12" color="#38d3d3">}}




{{<matomeQuote body="プラグインサポートがないとダメだね。" userName="iamsaitam" createdAt="2025/09/03 19:38:46" color="">}}




{{<matomeQuote body="Electronの話なんて2015年からずっと同じで、もう飽き飽きだよ。" userName="evilduck" createdAt="2025/09/04 04:11:07" color="">}}




{{<matomeQuote body="動きが悪いなら悪いって言えよ。Rust製だって？他になんか特別な理由でもあるの？私たちは面白い技術を議論するフォーラムなの？それともVSCodeの代替品について語る場所？で、結局誰が乗り換えてるんだ？製品作ってる人たち？それともHNで変な指標を気にしてる人たち？" userName="llbbdd" createdAt="2025/09/04 06:22:19" color="">}}




{{<matomeQuote body="同意するよ、ZedのCopilot連携はCursorに比べて全然ダメだったから、それがZedを使わないことにした決め手の一つだったな。" userName="slekker" createdAt="2025/09/03 19:40:27" color="">}}




{{<matomeQuote body="メインの意見には同意だけど、俺はバッテリーで作業することが多いから、ネイティブアプリとElectronアプリだと、バッテリーの持ちで数時間の差が出るんだよね。充電サイクルが2倍になるのは理想的じゃないな。" userName="ics" createdAt="2025/09/03 19:17:36" color="#785bff">}}




{{<matomeQuote body="だから俺はオートコンプリート用にnano_coder 0.5b FTを数日で自分で作ったんだ。もっと良くなったv2をリリースする予定だよ！<br>https://huggingface.co/srisree/nano_coder" userName="SquidJack" createdAt="2025/09/04 03:22:13" color="">}}




{{<matomeQuote body="Zedをインストールしてる人たちは乗り換えてるんだよ。何が言いたいのかよくわかんないな。Zedの話題でZedについて話してる人たちに文句言ってるの？<br>Zedは最近すごく成功してるみたいで、唯一の差別化ポイントは「ゼロから高速」ってことだね。VS Codeより機能は少ないし、CursorよりAI機能は劣るけど、それでもみんな気に入ってるみたいだ。結局、VS Code派生にうんざりしてる人たちの市場があるんだな。" userName="arianvanp" createdAt="2025/09/04 08:14:07" color="#ff5c5c">}}




{{<matomeQuote body="Zedを試したいけど、Helixモードはまだ若そうだな。Vimモードも良さそうだけど、Helixモードから離れられないんだ（もちろん、Helixの入力設定を自分でいじってるのもあるし）。<br>望む入力スキームに合うエディタを見つけるのが難しいのは、昔のLSP登場以前を思い出すよ。言語機能でエディタを選んでた時代だね。新しいエディタでもこういうテキスト編集の基本機能が動くように、共通のエディタインターフェースが必要なのかなって思う。かなりの摩擦があるように感じるし。" userName="unshavedyak" createdAt="2025/09/03 17:05:49" color="#ff5733">}}




{{<matomeQuote body="同感だよ。他の部分と分離された、真にプラグイン可能な編集モデルを持つエディタを夢見てきたんだ。Yiはそういう風に設計されてたと思う。Emacs風、Vim風、あるいは自分でモデルをコンパイルできた。<br>EmacsやVimに加えてHelixやKakouneも使ったけど、制限や機能セット、プラグイン地獄にうんざりするよ。<br>Zedを追ってたんだけど、Helixモードを追加したり編集モデルをよりモジュール化できるように再設計したみたいだね。まだかなり新しいけど、バグ修正は速い。もう一度試してみるよ。<br>ここのディスカッションも良いね：https://github.com/zed-industries/zed/discussions/6447<br>Kiにも言及してて、それも良さそう。Helixの矛盾点をいくつか比較してるよ：https://ki-editor.github.io/ki-editor/docs/comparisons/<br>俺はHelixよりKakouneの方が好きだったな（一貫性があったから）。でも、君が言ってるように、編集モデルを簡単に交換できれば、機能でエディタを選べるようになるし、機能とエルゴノミクスな編集モデルの間でトレードオフしなくて済む。皮肉なことに、KiはVS Code内で使える（Vimもそうだけどね）、でもVS Codeは本当にデカくて遅い…" userName="diegs" createdAt="2025/09/03 18:50:26" color="#785bff">}}




{{<matomeQuote body="本当にプラグイン可能なエディタはEmacsだよ。<br>俺も何ヶ月もNeoVim、Emacs、そしてHelixを試してきた。Helixには1年費やしたけど、もっと完全なものが欲しくてZedに乗り換えたんだ。Helixのモーダル編集は可能な限り持ち込んだよ。<br>でも、Emacs。Emacsこそが本当に好きなように何でもなれるんだ。LSPやTree-sitterもついに使えるようになって、ようやく正気を取り戻してEmacsで俺のHelixを構築し始めたところさ。" userName="onehair" createdAt="2025/09/03 20:48:34" color="#785bff">}}




{{<matomeQuote body="どっかの過激なチームが「よし、Emacsを速くするぞ！」って言って、実際に成し遂げてくれたらいいのに。LLMを使えば今は確かに少しは簡単になったけど、それでもかなり大変だよな。" userName="yewenjie" createdAt="2025/09/03 22:37:49" color="">}}




{{<matomeQuote body="LLMを使っても全然簡単にはならないよ。<br>でも、そういうチームはいるさ ;)" userName="conartist6" createdAt="2025/09/04 08:10:42" color="">}}




{{<matomeQuote body="Epsilonは速いEmacsだよ。" userName="haute_cuisine" createdAt="2025/09/04 07:53:51" color="">}}




{{<matomeQuote body="ZedにHelixモードがあるのは嬉しいんだけど、前回試した時はキーマップが未翻訳のところがあったからVimモードに戻っちゃったよ。ベータ版や自作フォークのツールはもう限界だからね。Helixユーザーとして、正直Helixのキーマップが好きかどうか、それともTUI IDEが手軽に使えるから我慢してるのか疑問に思うこともあるけど、今じゃもうHelixモードの筋肉記憶が染み付いてるんだよね。" userName="lemontheme" createdAt="2025/09/04 06:18:08" color="#ff33a1">}}




{{<matomeQuote body="Neovimってサーバーモードで動かせるんだ。VSCodeでNeovimを使ってるのは、その機能のおかげなんだよ。Helixもサーバーモードを実装すれば、どんなエディタにも統合できるようになるんじゃないかな。" userName="bobbylarrybobby" createdAt="2025/09/03 21:05:25" color="#785bff">}}




{{<matomeQuote body="HelixはLSPサポートが良いみたいだね。うちの会社で使ってる言語でフルサポートされてないのはGraphQLだけで、これだけオートインデントが効かないんだ。EmacsでHelixみたいなのを試したいならmeow-modeがあるよ。俺はHelixユーザーじゃないけど、meowをHelixっぽく設定するのは難しくないはずだよ。" userName="Karrot_Kream" createdAt="2025/09/03 18:18:00" color="#ff33a1">}}




{{<matomeQuote body="Vimのバインディングに慣れてるなら、Helixの「オブジェクト→アクション」っていう仕組みにそこまで価値があるのかな？" userName="yes_but_no" createdAt="2025/09/03 18:13:03" color="">}}




{{<matomeQuote body="俺も同じこと考えてたんだけど、数年前にHelixを使ってみたらもう手放せなくなっちゃった。本当に快適だし、必要な機能がほとんど最初から入ってるのが最高だよ。VimとかNeoVimの設定で時間かけすぎたなって思うもん。" userName="sxg" createdAt="2025/09/03 19:29:52" color="#ff5c5c">}}




{{<matomeQuote body="俺にとっては、間違いなく価値があるね。それに、筋肉記憶を切り替えるのは結構大変なんだよ。ずっと前にKakouneに切り替えて、その後デザインがもっと好きだったからHelixに変えたんだ。" userName="unshavedyak" createdAt="2025/09/03 19:06:17" color="">}}




{{<matomeQuote body="Helixは4年くらい前からあるよ、Zedの2倍も古いんだぜ！" userName="dcre" createdAt="2025/09/03 19:55:22" color="">}}




{{<matomeQuote body="いや、同じくらいだよ。Zedは2021年2月20日に今のUIフレームワークで再構築を始めたんだ。" userName="valtism" createdAt="2025/09/03 21:33:05" color="#785bff">}}




{{<matomeQuote body="同じ問題に直面したよ。Helixモードを試して興奮したのに、当然Backspaceショートカットがないって気づいたんだ。そりゃそうだろ、でもやっぱりHelixに戻っちゃった！" userName="chamomeal" createdAt="2025/09/03 19:04:12" color="">}}




{{<matomeQuote body="えっ、Helixモードなんてあるの？Helixを学びたいし、ちょっとした編集で使いたいと思ってたけど、どのエディタにもHelixモードがあるのは初めて知ったよ。" userName="artdigital" createdAt="2025/09/04 02:47:04" color="">}}




{{<matomeQuote body="Zedのコンセプトや基盤は好きだし、もっとこういうツールが欲しいんだけど、細かい点で使いにくいんだよね。<br>設定管理がごちゃ混ぜだし、”settings.json”をすぐに開いたり、再起動時に開いてほしい。あと、ネイティブツール呼び出し対応してないLLMを使えるようにしてほしいな。UIも新参者にはちょっと散らかってて圧倒される感じ。エンジニア向けって感じで、初心者には優しくないよね。でも、致命的な欠点じゃないから、また後で試してみるかも。" userName="skhameneh" createdAt="2025/09/03 18:17:31" color="#ff33a1">}}




{{<matomeQuote body="細かい問題は急速に良くなってるよ。半年前はZedにいくつか小さい問題があったけど、ほとんど修正されちゃったんだ。" userName="honeycrispy" createdAt="2025/09/03 18:29:28" color="">}}




{{<matomeQuote body="そうは言っても、Zedとプラグインの間で変更が多すぎて、何が壊れたのか突き止めるのが大変なんだよね。" userName="bradgessler" createdAt="2025/09/04 01:32:52" color="">}}




{{<matomeQuote body="ちなみに、Zedには”settings.json”を開くデフォルトのキーバインドがあると思うよ。Ctrl+,だね。これも設定できるんじゃないかな？" userName="gm678" createdAt="2025/09/03 18:47:35" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="MacBookユーザーにプロヒント！macOSではcmd+,がどんなアプリでも設定を開く標準的なキーバインドだよ。" userName="iknowstuff" createdAt="2025/09/04 02:58:36" color="">}}




{{<matomeQuote body="Commandキーを押しながらコンマキーを押すってことだよ。それは使えるはず。" userName="nkantar" createdAt="2025/09/04 03:38:50" color="">}}




{{<matomeQuote body="コマンドパレットで”open settings”って検索しても開けるよ。あと、”settings.json”エディタはLSPサポートもしてるんだ。" userName="olejorgenb" createdAt="2025/09/04 23:01:13" color="#38d3d3">}}




{{<matomeQuote body="Zedのセットアップに苦労したよ。パワーユーザー向けエディタは良いんだけど、シンタックスハイライトのオプションが少なすぎて諦めたんだ。SublimeTextの素晴らしいシステムに慣れてるからかもしれないけど、全然足りなかったね。Vimモードのキーバインディングも変だけど、慣れればいけるかも。でも関数と引数、ローカル変数の色分けは絶対譲れない！<br>AI機能も含め、また近いうちに試したいな！" userName="bbor" createdAt="2025/09/03 18:30:20" color="#ff5c5c">}}




{{<matomeQuote body="Zedはツール呼び出しなしでLLMを実行できる方法があるよ。エージェントペインのメニューから”new text thread”を選べばいい。たぶんキーボードショートカットもあると思うけど、今スマホだからわからないな。" userName="throw47592" createdAt="2025/09/04 01:02:32" color="#785bff">}}




{{<matomeQuote body="もう一度確認してみるけど、俺が試した限り、スレッドを開始しようとすると全部ペイロードにツール呼び出しが入ってたんだ。ツール呼び出しの指示なしでメッセージを送るのが無理だったよ。キミが言ってることはまさに俺が試したことと同じだ。Zedを再起動しながら6種類以上のモデル設定を試したけど、ドキュメントとZedが設定しようとすることが違うし、フィールドも組み込みの型チェックと合わないんだ。openaiとかopenai_compatible、openrouterも試したけど、RESTサーバーへのリクエストは全部ツール呼び出しを含んでいたよ。" userName="skhameneh" createdAt="2025/09/04 01:21:40" color="#ff5733">}}




{{<matomeQuote body="モデル選択のドロップダウンの隣にツールプロファイルを選択するドロップダウンがあるはずだよ。”Minimal”を選べばツールなしだ。”New text thread”もツールなしのはずだよ。<br>https://zed.dev/docs/ai/agent-panel#profiles" userName="deredede" createdAt="2025/09/04 07:03:22" color="#ff5733">}}




{{<matomeQuote body="テキストスレッドにはツールがないよ。LLMの応答も含めて自由に編集できるただのMarkdownテキストだから、LLMとの煩わしいやり取りなしで自分で細かい修正ができるんだ。ただ、キャッシュ最適化が犠牲になる可能性はあるけどね。" userName="freehorse" createdAt="2025/09/04 07:38:20" color="#ff5733">}}




{{<matomeQuote body="試してみたけど、まだいくつか重要な機能が足りないと思う。<br>・自動承認がずっと続きっぱなしなのはバグっぽい。<br>・CLI版みたいに特定のメッセージに戻って削除できるといいな。<br>・プランモードはどこ？見つけられなかった。<br>・バックグラウンドタスクが見にくい。<br>・モデル変更や新しいセッションの作成（/newとか）はどうやるの？/clearもサポートされてないのはなぜ？<br>・ターミナルで編集内容が全部表示されるのは嫌だ。デフォルトで折りたたむか、プレビューで見せてほしい。" userName="dimgl" createdAt="2025/09/03 21:03:24" color="#38d3d3">}}




{{<matomeQuote body="注意：SSHベースのリモート開発を使う場合、これは機能しないよ。<br>https://x.com/sridca/status/1963271904384401886" userName="srid" createdAt="2025/09/03 17:11:32" color="">}}




{{<matomeQuote body="それは残念だね。俺はZedを使ってるんだけど、このエージェント機能がセキュリティの悪夢みたいに思えるから、開発環境をコンテナ化（SSHリモート開発でZedをコンテナに接続）しようとしてるところなんだ。せめて影響範囲をリポジトリディレクトリに制限したいよ。" userName="cedws" createdAt="2025/09/03 17:36:34" color="#45d325">}}




{{<matomeQuote body="これ、1週間以内にはサポートされると思うよ。デバッガの改善がめちゃくちゃ速いから、リモートのClaude Code接続もすぐにサポートされるはずだ。" userName="pimeys" createdAt="2025/09/03 18:07:20" color="">}}




{{<matomeQuote body="Zedのリモート開発、残念ながら全然良くないわ。なぜかローカルエディタの設定がリモートセッションにデフォルトで適用されないんだよね。リモートごとに設定ファイルがあるのは、個人的には疑問な選択だと思うな。" userName="mxs_" createdAt="2025/09/04 02:48:04" color="#45d325">}}




{{<matomeQuote body="これって何か理由あるの？一時的なの？それともずっとサポートされない感じ？" userName="achairapart" createdAt="2025/09/03 18:06:49" color="">}}




{{<matomeQuote body="確かCursorでも動かないし、AIサイドバーも変な問題が出てた気がする。SSHワークフローは結局VSCodeに戻っちゃったよ。" userName="mcintyre1994" createdAt="2025/09/04 08:14:10" color="">}}




{{<matomeQuote body="最近の数リリース前から、SSH経由のリモート環境でZedを使うと完全にクラッシュするようになったんだよね。" userName="johntash" createdAt="2025/09/05 20:23:40" color="#785bff">}}




{{<matomeQuote body="Zedは久しぶりに最高のエディタだよ。AIサポートに深く潜らなくても大好きだね。" userName="giancarlostoro" createdAt="2025/09/03 15:46:20" color="">}}




{{<matomeQuote body="Zedで1ヶ月フルタイムで働いて、本当に気に入ってるわ。LLM統合はオートコンプリート以外ほとんど使わないけど、20ドルのサブスクでサポートしてるよ。<br>最初はApple-firstだからってすごく否定的だったんだけど、Linuxサポートがすごく良くなって、Windowsももうすぐみたいで、見方が変わった！" userName="wraptile" createdAt="2025/09/04 04:44:59" color="#ff5733">}}




{{<matomeQuote body="Zedは大好きだけど、あぁ、VC資金を受けてるんだよね。結末はみんな知ってるでしょ。今まで（Vimじゃない）アプリで実装されたVIMモードで最高だよ。Jetbrains製品でほとんど使ってるけど、2番目のエディタとして使ってるよ。<br>VC資金の中期的な影響については間違っててほしいけど、AI AI AIを急いで出すのは、醜いフォントレンダリングみたいな根本的な問題が残ってることの表れみたいだね。" userName="kar1181" createdAt="2025/09/04 07:02:40" color="#ff5733">}}




{{<matomeQuote body="Zedがオープンソースなのが、僕が使い続ける100%の理由だよ。何かあってもフォークして、現状を受け入れるだけだからね。" userName="ramon156" createdAt="2025/09/04 07:15:48" color="">}}




{{<matomeQuote body="VS Codeもオープンソースだけど、Microsoftの多くの拡張機能はクローズドソースなんだよね。Zedが同じ道を進まないことを願ってるよ。" userName="tempaccount420" createdAt="2025/09/04 11:23:55" color="">}}




{{<matomeQuote body="同意だね。オープンソースも万能薬じゃないのは数えきれないほどのプロジェクトで見てきたけど、エディタとそのエコシステムへの投資が裏切られる懸念をいくらかは和らげてくれるよね。" userName="kar1181" createdAt="2025/09/04 07:18:49" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
