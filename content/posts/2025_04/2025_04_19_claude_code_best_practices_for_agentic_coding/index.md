+++
date = '2025-04-19T00:00:00'
months = '2025/04'
draft = false
title = 'Claude Code徹底解剖！爆速コーディング術で開発効率が神レベルに爆上げ！？'
tags = ["Claude", "AIコーディング", "開発効率", "コスト削減", "プロンプトエンジニアリング"]
featureimage = 'thumbnails/blue3.jpg'
+++

> Claude Code徹底解剖！爆速コーディング術で開発効率が神レベルに爆上げ！？

引用元：[https://news.ycombinator.com/item?id=43735550](https://news.ycombinator.com/item?id=43735550)

{{<matomeQuote body="「ultrathink」ってマジウケるんだけど(笑)<br>＞「think」って言うと考える時間が増えるらしい。「think」＜「think hard」＜「think harder」＜「ultrathink」の順で、Claudeの思考予算が増えるんだって。<br>これ、Claudeモデルの機能じゃなくて、Claude Codeだけみたい。「megathink」もあるらしいよ。コードはこんな感じ。<br>simonwillison.netに詳細が載ってるって。" userName="simonw" createdAt="2025-04-19T22:30:23" color="#ff5733">}}

{{<matomeQuote body="マジな話、「ultrathink」ってキーワードにSonnet 3.7が反応するの、ダブルプラスグッド的なヤバさを感じるんだけど。" userName="orojackson" createdAt="2025-04-19T22:54:28" color="">}}

{{<matomeQuote body="たまには仲間とultrathinkでもするか。" userName="coffeebeqn" createdAt="2025-04-20T14:02:11" color="">}}

{{<matomeQuote body="みんなで牛乳飲みながら、難しい顔して考えてる姿が目に浮かぶわ。" userName="stavros" createdAt="2025-04-20T14:04:29" color="">}}

{{<matomeQuote body="そろそろ言語モデルにツマミとかスライダー付けて、シンセみたいに操作できるようにしたら面白そうじゃね？「THINK」…みたいな。" userName="4b11b4" createdAt="2025-04-20T00:45:20" color="#45d325">}}

{{<matomeQuote body="APIのsandboxとかstudio UIだと、もうスライダーあるよ。temperature（ランダムさ）が一番有名かな。一般ユーザー向けじゃないから隠されてるだけ。" userName="antonvs" createdAt="2025-04-20T13:18:26" color="#785bff">}}

{{<matomeQuote body="安いMIDIコントローラー使って同じことしてるわー。ブラウザでもできるし。パラメーター調整のフィードバックがすぐ分かるのが良い。" userName="______" createdAt="2025-04-20T13:47:20" color="#45d325">}}

{{<matomeQuote body="Turbo Thinkボタンで、UltrathinkとMegathinkを切り替えられたら最高。" userName="ljm" createdAt="2025-04-20T12:01:12" color="">}}

{{<matomeQuote body="temperatureとかtop_kみたいな調整できるパラメーターは、もういっぱいあるじゃん。" userName="soulofmischief" createdAt="2025-04-20T01:32:38" color="#45d325">}}

{{<matomeQuote body="それマジ最高。Unreal Tournamentのネタじゃん（連続キルすると「megakill」とか「ultrakill」になるやつ）。" userName="westoncb" createdAt="2025-04-20T02:24:17" color="#ff5733">}}

{{<matomeQuote body="もし実装してたとしても、最高のやつは入れ忘れてるんじゃない？「m-m-m-m-monsterkill」でしょ。Anthropicは動的なthinking token budgetをもっとうまく実装できるはずだよ。" userName="orojackson" createdAt="2025-04-20T06:34:13" color="">}}

{{<matomeQuote body="UltrakillはQuake発祥じゃないよ😄" userName="Quarrel" createdAt="2025-04-20T07:20:55" color="">}}

{{<matomeQuote body="違うって。Quakeには連続キル2回で「Excellent」って出るけど、それ以降は何もなかったよ。" userName="Schaulustiger" createdAt="2025-04-21T08:46:57" color="">}}

{{<matomeQuote body="へー、そうなんだ？<br>＞https://www.voicy.network/sounds/o_2r357a-kKEe5PaiWyYnA-quak...<br>私の記憶だとこんな感じだけど。<br>Quake 2だったかな？" userName="Quarrel" createdAt="2025-04-24T07:42:38" color="">}}

{{<matomeQuote body="aiderでは、「ultrathink」の代わりにこう言うんだ:<br> /thinking-tokens 32k<br><br>省略形:<br> /think 32k" userName="anotherpaulg" createdAt="2025-04-20T01:53:50" color="#45d325">}}

{{<matomeQuote body="Claude Codeで気に入らないのは、なんでコマンドラインフラグがないの？そっちの方がドキュメントも充実してるし、苦労して発見する必要もないじゃん。あと、セッション中にコンテキスト（ファイル）を手動で指定できる`--add`コマンドラインフラグもないのが残念。VSCodeから相対パスをコピペしてClaudeに渡す羽目になるんだよね。aiderの方がこういう点ではずっと使いやすい。" userName="mr-karan" createdAt="2025-04-20T04:16:55" color="#785bff">}}

{{<matomeQuote body="もしかして理解してないだけかな？ファイルパスはタブで補完できるよ。Claudeに参照させたいなら、英語でも`--add`でも指示できるし。" userName="gdudeman" createdAt="2025-04-20T14:26:55" color="">}}

{{<matomeQuote body="`tab`ショートカット知らなかった。教えてくれてありがとう！そういえば今日使ってたら、`@`が使えるようになっててびっくり。0.27.5で追加されたみたいだね。<br>https://github.com/anthropics/claude-code/blob/main/CHANGELO..." userName="mr-karan" createdAt="2025-04-24T13:39:32" color="#ff33a1">}}

{{<matomeQuote body="「galaxy brain」って指示できるようになるまで待ってる。" userName="nulld3v" createdAt="2025-04-20T11:53:08" color="">}}

{{<matomeQuote body="ちょっと宣伝だけど、長文で返信するより楽だから。<br>https://www.paritybits.me/think-toggles-are-dumb/<br>https://nilock.github.io/autothink/<br>広いコンテキスト能力を持つLLMは、こんな風に誘導される必要はないはず。Claudeは簡単なタスクと複雑なタスクを私と同じように簡単に見分けられるはずだし、計算コストの上限まで自己調整すべき。" userName="NiloCK" createdAt="2025-04-20T15:14:18" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="今のAIシステムでこんなコード使ってるなんて変じゃない？それに、文字列スキャンを14回もするなんて非効率的すぎ！" userName="pyfon" createdAt="2025-04-20T01:23:50" color="">}}

{{<matomeQuote body="文字列を14回チェックするくらい、計算量からしたら微々たるもんよ。大海の一滴みたいなもん。" userName="Aurornis" createdAt="2025-04-20T02:46:04" color="">}}

{{<matomeQuote body="みんないつもそう言うけど、それって積み重なるんだよね。で、最終的に普通のウェブサイトですら重くなっちゃうんだよ。" userName="bombela" createdAt="2025-04-20T18:45:34" color="#ff5733">}}

{{<matomeQuote body="「めっちゃ頑張って考える」ってことね。" userName="adastra22" createdAt="2025-04-20T17:30:11" color="">}}

{{<matomeQuote body="コスト管理についてのセクションがないのが意外だったから、書いてみたよ。<br>コスト管理をマスターすれば安く済むよ。context windowを使い切っちゃうと、コストが跳ね上がるかもね。<br>キャッシュを意識して。<br>必要なファイルだけ読むように指示しないと、無駄なファイルまで読んだり、同じ場所を何度も読んだり、ファイル検索まで始めるよ。<br>検索させちゃダメ。haltさせること。findとかrgはトークンを大量消費するからね。<br>セッション中に手動でファイルを編集しちゃダメ（キャッシュが壊れる）。これにはLINTも含むよ。<br>キャッシュは5～15分くらいで消えるから、セッションを開きっぱなしにするのは避けよう。<br>/compactは絶対に使わない（キャッシュが壊れる）。使う必要があるなら、ファイルの行き来が多すぎるか、一度に扱うファイルが多すぎる。<br>ファイルサイズを小さく保つことも大事。context windowを小さくできるからね。<br>明確な目標を持って、セッションのメッセージ数を最小限に抑えよう。<br>必要なドキュメントは、claude.aiでmarkdownファイルとして生成して、リポジトリに保存。質問時にそのファイルを読ませる。<br>これでタスクあたり0.5～0.75ドルくらい。ヘビーユーザーじゃないけど、すごく助かってる（集中力のある賢いインターンみたいな感じ）。<br>大量のドキュメントを読み込ませる必要がある場合は、数ドルかかるけど、claudeが知らないライブラリを試すときくらいかな。<br>趣味レベルなら、結構な額になるけどね。<br>会社なら、めっちゃ価値ある。生産性爆上がりだよ（開発者が責任感を持って使えば）。" userName="jasonjmcghee" createdAt="2025-04-19T15:27:28" color="#785bff">}}

{{<matomeQuote body="そんなに気を遣ってツールを使うくらいなら、自分でコード書いた方がマシじゃん（笑）。<br>Claude Codeはめちゃくちゃ使ってるけど、最高のAI IDEの一つだよ。マジで何でもやってくれる。<br>唯一の欠点はコスト。平均で1日35～40ドルかかる。それならCursor/Windsurfを使うかな。" userName="sagarpatil" createdAt="2025-04-20T05:01:05" color="">}}

{{<matomeQuote body="え、マジ？あなたのコメント読んだら、Claude Codeは絶対使わないわ。<br>Aider使ってるけど、最高だよ。ファイルを明示的に指定できるし、contextを制限する手間がない。" userName="BeetleB" createdAt="2025-04-19T16:42:05" color="#ff5733">}}

{{<matomeQuote body="ファイルを指定しなくていいのは、俺にとってマジで重要な機能だわ。コードがどのファイルにあるか覚えてるのって、ある程度の規模のコードベースになると半分くらいの作業になるからね。" userName="jjallen" createdAt="2025-04-19T23:14:30" color="#ff5733">}}

{{<matomeQuote body="Aiderで/context <prompt>を使うと、プロンプトに基づいてファイルが自動的に追加されるよ。これが結構使えるんだ。" userName="carpo" createdAt="2025-04-20T14:06:05" color="#ff5c5c">}}

{{<matomeQuote body="それ、時々うまくいくけど、ダメな時もあるし、10倍時間かかるんだよねー。Codexも同じ。両方用意して、どっちがうまくいくか気分で使い分けるのがいいかも。" userName="m3kw9" createdAt="2025-04-20T02:33:21" color="">}}

{{<matomeQuote body="CC試してみたけど、すぐLLMでできるような簡単なタスクに5ドル以上かかるのに気づいたよ。Aiderだと1セッション1～2ドルを超えることはほとんどないかな。Aiderはもっと精密なツールって感じ。手動で指定できるのが気に入ってる。<br>ただ、Claude Codeは探索にはマジで使えると思う。例えば、よく知らないリポジトリを調べて、質問するとか。" userName="boredtofears" createdAt="2025-04-19T16:55:52" color="#45d325">}}

{{<matomeQuote body="Aiderはマジで良いツールだよね。大好き。でも、Claude Codeと同じアウトプットを得るには、もっと色々やんなきゃいけないんだよね（AiderでどのLLM使っても）。確かに1回あたりのコストは安くなるかもしれないけど、自分の時間を含めたらそうでもないかも。<br>逆に、Aiderの方が制限しやすいってのもある。" userName="LeafItAlone" createdAt="2025-04-19T20:48:40" color="#ff33a1">}}

{{<matomeQuote body="他に何を色々やらなきゃいけないの？Aiderしか使ったことないから、何が足りないのか気になる。" userName="Game_Ender" createdAt="2025-04-19T21:41:29" color="">}}

{{<matomeQuote body="Claude Codeなら、いつでも「/code」って打てば、どれだけ使ったか確認できるし、セッションが終わる時（Ctrl+C）にも表示してくれるよ。<br>/costの出力はこんな感じ：<br>＞ /cost<br>＞　⎿ Total cost：$0.1331<br>＞　　Total duration (API)：1m 13.1s<br>＞　　Total duration (wall)：1m 21.3s" userName="simonw" createdAt="2025-04-19T22:33:42" color="">}}

{{<matomeQuote body="Aiderもコマンドの後にどれだけ使ったか表示してくれるよー。コマンドのコストもセッションのコストも。" userName="BeetleB" createdAt="2025-04-21T15:58:45" color="#ff5733">}}

{{<matomeQuote body="Aiderに切り替えてから、他のツールが安いモデルを選んだり、コンテキスト内のファイルやメッセージを制限したりして、料金を上げてることに気づいた。" userName="aitchnyu" createdAt="2025-04-22T11:45:35" color="#ff5733">}}

{{<matomeQuote body="＞Aider使ってるよ。マジ最高。<br>モデルは何使ってる？Claude？Gemini？o3？" userName="Jerry2" createdAt="2025-04-19T20:41:50" color="">}}

{{<matomeQuote body="今はSonnet 3.7を使ってる。Googleのアカウント作るのがめんどくさくてね。" userName="BeetleB" createdAt="2025-04-21T15:59:20" color="">}}

{{<matomeQuote body="Openrouterのアカウントを作れば、ほとんど全てのプロバイダーを試せるよ。Claudeでお金を燃やしてたけど、V3（Deepseekプロバイダーが不安定だからブロックした、素人はバカにするだろうけど）とexperimentalとGAのGeminiモデルを試した。" userName="aitchnyu" createdAt="2025-04-22T11:40:14" color="#ff5733">}}

{{<matomeQuote body="Gemini 2.5 proが一番良いと思うな。" userName="m3kw9" createdAt="2025-04-20T02:34:36" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="生産性がめっちゃ上がるから、コストを気にして色々調整するのは逆効果かもね。開発者は自分の時間の機会費用を過小評価しすぎなんだよな。ヒント：それは週40時間労働で計算した総報酬の何倍も大きいんだぜ。" userName="kiratp" createdAt="2025-04-19T19:17:44" color="#ff5c5c">}}

{{<matomeQuote body="タスクのコストは、プラスマイナスで時間がかかるほど高くなるってことだよね。上の投稿の「コスト」を「時間」に置き換えても、全部同じことが言えると思う。agentic LLM codingはあんまりやらないけど、スピードが遅いのが一番嫌だったな。スコープを狭めたり、ファイルの再処理を防いだり、コードベースを検索したりする工夫は、金額を気にしなくても役に立つと思うよ。" userName="Aurornis" createdAt="2025-04-20T02:52:13" color="#38d3d3">}}

{{<matomeQuote body="激しく同意。セッションあたり50セントでも10ドルでも、より多くの価値を生み出すために仕事が早く終わるなら使うべき。問題解決が効率的なセッションはコストも安いことが多いから、それらのヒントはかなり使えると思う。" userName="pizza" createdAt="2025-04-19T20:48:29" color="#ff5733">}}

{{<matomeQuote body="確かにそうだけど、最適化って実装の詳細を明らかにして、今の技術の限界を理解するのに役立つこともあるよね。時間がもったいないかもしれないけど、エンジニアリングの一部は最適化だし、もう一部は技術の深い理解だと思う。Claude Codeがどう動いているのか理解できれば、関連するエンジニアリングの仕事にも応用できるし。" userName="afiodorov" createdAt="2025-04-19T22:35:06" color="#ff33a1">}}

{{<matomeQuote body="マジそれ。chat gptのデスクトップアプリを使ってるのは、モデルの質じゃなくてUXが良いから。IntelliJとかVS Codeとシームレスに連携できるんだよね。option+shift+1でファイルが開いた状態でchat gptが起動して、選択した行とかテスト結果とかも全部見れるから、短いプロンプトでもリッチなコンテキストで指示できる。4oモデルは速いから、そっちをメインで使ってる。完璧じゃなくても、速い方が良いってこと。でもClaudeならコードベース全体を見れるけど、お金がかかるから、コンテキストを細かく管理しないといけないのが面倒。ローカルのAIモデルでコンテキスト管理して、必要な時だけリモートモデルにエスカレーションするとか、Appleが言ってたみたいに、そういうツールが出てきてほしい。" userName="jillesvangurp" createdAt="2025-04-20T10:54:25" color="#ff33a1">}}

{{<matomeQuote body="もしこれが本当なら、なんで俺らの給料は生産性の向上に合わせて上がらないんだ？" userName="charlie0" createdAt="2025-04-20T13:48:30" color="">}}

{{<matomeQuote body="自分の時給を40ドルで計算してるから、ほとんどのモデルの方が安いと思ってる（o1とかGemini 2.5 proは除く）。2ドルのセッションで6分コンテキストを考える時間があったら、損してる。" userName="jjmarr" createdAt="2025-04-19T19:19:20" color="#ff33a1">}}

{{<matomeQuote body="大事なことだけど、これは収益性の高いプロダクトがある場合にしか当てはまらない。そうじゃないなら、まだ稼いでないお金を使ってることになるよ。" userName="owebmaster" createdAt="2025-04-19T19:47:31" color="#785bff">}}

{{<matomeQuote body="もし自分のやってることにプラスの期待値がないなら、ケチってしょぼい開発ツールを使うんじゃなくて、全部やめるべきだね。" userName="jjmarr" createdAt="2025-04-19T23:14:07" color="#ff5733">}}

{{<matomeQuote body="昔のJoomlaサイトから200以上の記事を新しいWPサイトに、ユーザーとかアセットとか全部ひっくるめて、PDFを記事に変換するスクレイパーをほぼ一発で作れたぜ。トークン代は3ドルくらいだった。" userName="winrid" createdAt="2025-04-19T19:41:00" color="#ff5c5c">}}

{{<matomeQuote body="結局、VScode Copilotでも月20ドルで同じことできるんじゃないの？Claude 3.7とかGemini 2.5 ProとかGPT o3みたいなSOTAモデルにもアクセスできるし。" userName="hu3" createdAt="2025-04-19T20:49:29" color="">}}

{{<matomeQuote body="Copilotは試したことないんだよね。VSCode使わないから、JetbrainsのIDE使ってるし。どうやって月20ドルでClaude 3.7を無制限に提供してるんだろ？" userName="winrid" createdAt="2025-04-19T21:22:16" color="">}}

{{<matomeQuote body="いや、そうじゃなくて、数百行のPythonコードで、変で一貫性のないHTMLをパースしてjsonファイルとかCSVファイルにして、WP APIを叩いて必要なだけ著者を作成したり、記事を更新したり、画像を移行したりするシンクスクリプトだよ。" userName="winrid" createdAt="2025-04-19T21:20:43" color="#ff5c5c">}}

{{<matomeQuote body="もし君が、全く知らないプロジェクトで、コンテキストもなくて、“/api/users/:idの認証バグを直して”っていうチケットだけ渡されたらどうする？<br>まずはコードベースをgrepして理解しようとするよね。<br>それを、“src/controllers/users.tsの`getById`関数で権限を修正して。JWTのユーザーとリクエストされたユーザーが同じかどうかを確認する必要がある”って言われた場合と比較して。" userName="oxidant" createdAt="2025-04-19T19:30:00" color="">}}

{{<matomeQuote body="つまり、AIはせいぜいヤル気だけはあるジュニア開発者ってとこで、宣伝されてるような魔法のプログラマー代替品じゃないってことね。" userName="troupo" createdAt="2025-04-19T20:52:29" color="">}}

{{<matomeQuote body="マジで、このツール使うのって想像以上にすぐ変わると思うよ。プロンプト出して、出来上がったソフトを評価して直す、みたいな感じになるんじゃない？何回も試せるし。エンジニア雇わなくてもソフト作れる時代が来るかもね。特に難しいやつじゃなければ、3～15人のチームが必要だったものが、誰もいらなくなるかも。2026年くらいにはそうなりそう。" userName="whywhywhywhy" createdAt="2025-04-20T10:47:20" color="">}}

{{<matomeQuote body="＞AIsはせいぜいヤル気だけはあるジュニア開発者ってとこで、宣伝されてるような魔法のプログラマーの代わりにはならない”ってのは、言い過ぎかもね。決めつけは良くないし、AIの能力と人間の能力を比べるのは難しいから、evalsに関する文献とか読んでみると良いかも。" userName="xpe" createdAt="2025-04-19T21:09:43" color="">}}

{{<matomeQuote body="コストを抑えるためにツールを絞るって話だよ。ジュニアにざっくりした指示出すと、調べることいっぱいになっちゃうでしょ？ファイルとか含めて具体的に指示すれば、うまくいく可能性が高いんだよね。別にAIが人間の代わりになるとは言ってないよ。正しい問題に正しいプロンプトで使えば、めっちゃ有効なツールだよ。" userName="oxidant" createdAt="2025-04-20T00:43:53" color="#45d325">}}

{{<matomeQuote body="2025年4月現在。ペースが速すぎて、数ヶ月か数年以内にベテランを超えるかもね。" userName="oezi" createdAt="2025-04-20T08:38:14" color="">}}

{{<matomeQuote body="GitHub copilotはコンテキストを完璧に理解してくれるから、ファイルについて何も伝える必要ないんだよね。最初に試した時は、結果がめちゃくちゃになったけど。" userName="datavirtue" createdAt="2025-04-19T18:39:16" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="最近Cursorをよく使うんだけど、他の人も言ってるように、モデルが勝手に完璧に動いてるコードを書き換えて壊しちゃうことがあるんだよね。大抵は、一度に色んなことを頼みすぎてるのが原因。CLAUDE.mdとかコンテキストのファイル、ドキュメントのURL、計画の手順、テストとか色々考えると、コストが気になるんだよね。PR一件あたり100ドルもかかるのはキツいから、Anthropicで働いて、もっと安く済む方法を学びたい。奨学金プログラムとかあれば良いのに。" userName="zoogeny" createdAt="2025-04-19T15:25:29" color="#ff5733">}}

{{<matomeQuote body="なんで安いと思うの？開発者って高いんだよ。Claudeがソフトウェア開発をより早く、より安くするために安くなくてもいいんだよ。君より安ければいいんだよ。LLMを安く使う方法もあるけど、最大限に活用するには常に高くつくよ。実際、AIがうまく完了できるタスクの長さが長くなるにつれて、トップエンドはますますコストがかかるようになるよ。" userName="istjohn" createdAt="2025-04-19T17:43:39" color="">}}

{{<matomeQuote body="別にコストが高いって言ってるわけじゃないよ。コストがかかるって気づいて、自分の学習にどう影響するかを言ってるだけ。「大学って高いな、奨学金がないから高い大学に行けない」って言ってるのと同じだよ。だから、気持ちを吐き出す場所をちょうだい。奨学金とかクリエイティブプログラムとか、代替案を提案させてよ。企業で働いて、1日100ドルを投資してもらうって手もあるけど、それならAnthropicみたいなモデル会社で働いて、使い放題にしてもらう方が良いかもね。" userName="zoogeny" createdAt="2025-04-19T17:53:57" color="#785bff">}}

{{<matomeQuote body="＞君より安くなければならない<br>自社で下手なものを作るより、お金を節約できるB2BのSaaSサービスはたくさんあるよね。給料を固定費だと考えて、他のものに予算を使いたがらない会社が多いんだよ。" userName="solatic" createdAt="2025-04-20T18:08:09" color="">}}

{{<matomeQuote body="＞君より安くなければならない。<br>SWEがいないと上手く動かないんじゃ意味ないじゃん。" userName="qudat" createdAt="2025-04-19T20:34:04" color="">}}

{{<matomeQuote body="最近Cursorを結構使ってるんだけど、よくあるのが、モデルが勝手にコード書き換えちゃって壊れること。でもgitで確認してすぐ戻せるから、まあいいかって感じ。確かに直さなくて済むならそれが一番だけど、得られる価値に比べたら全然OK。" userName="Wowfunhappy" createdAt="2025-04-19T20:06:40" color="">}}

{{<matomeQuote body="わかる。でもできるだけ無駄な作業は減らしたいよね。ソース管理する前にCtrl-S連打してたみたいに、今はgit commitをしまくってる。LLMが暴走するのは自分のプロンプトが悪いと思ってるから、もっと上手く指示できるように頑張りたい。文句言うだけじゃなくて、改善に繋げたいんだよね。" userName="zoogeny" createdAt="2025-04-19T20:22:08" color="#785bff">}}

{{<matomeQuote body="Claude 3．7は特にその傾向があると思う。前のバージョンより賢いけど、落ち着きがないんだよね。Geminiの方がまだマシで、o3が一番良い。もうClaudeは普段使いしてないけど、今までで一番長く使ったアシスタントだったな。" userName="vessenes" createdAt="2025-04-20T07:54:53" color="">}}

{{<matomeQuote body="Geminiでも同じことあるよ。o3は逆で、全然動いてくれない。どれが良いか決められないから、色々試してる。" userName="imafish" createdAt="2025-04-20T11:46:05" color="">}}

{{<matomeQuote body="Aiderが良いのはそこなんだよね。AIが書き換えできないように、Aiderに書き込み権限を与えなければいい。それにAiderは他のツールよりトークン消費量が少ないらしい。" userName="k__" createdAt="2025-04-19T18:27:47" color="">}}

{{<matomeQuote body="Aiderはまだ使ったことないけど、最近HNでよく見かけるね。Cursorにお金払ってるから、二重で払うのが嫌なんだよね。Aiderの方が安いかもしれないけど、今払ってる金額よりは高いし。CursorからAiderに乗り換えた人の意見を聞きたいな。金額とか、価値とか。" userName="zoogeny" createdAt="2025-04-19T19:16:55" color="">}}

{{<matomeQuote body="AiderはAPIの料金だけだよ。簡単なタスクなら数ドルで済むよ。20ドルくらい予算を組んで試してみて。" userName="Game_Ender" createdAt="2025-04-19T22:11:44" color="#45d325">}}

{{<matomeQuote body="LLMのコード自動化ソリューションって、Infosysみたいなところに製品を外注するのと同じだよね。情報理論的には、伝えるべきことは同じくらいある。claude．mdファイルを調整するのは、業者とメールでやり取りするのと同じ。業者は法的に責任を負わせられるけど、LLMにはLLMのメリットがある。LLMをエキスパートの思考回路の一部として使うのが一番効果的。コードを自動でチェックするより、熟練した開発者がLLMを使って質問したりコードスニペットを作成したりする方が良い。コードが多すぎて自動化しないといけない状態なら、もう手遅れかもね。LLMは危険を察知できないから。" userName="bob1029" createdAt="2025-04-20T11:19:04" color="#ff33a1">}}

{{<matomeQuote body="マジでさー、俺たち人間って、欲しいものをうまく伝えられないし、具体的な結果を見るまでイメージできないんだよね。それが現実。<br>クライアントが俺たちみたいな場合、LLMは無限の忍耐力を持って、ちょこちょこコストをかけるだけで付き合ってくれる（俺たちの思考や設計にかかる時間や、思い描いていたものを実現するための瞬時のイテレーションの価値を考えたら安いもんよ）。<br>オフショアだと、相手が理解してくれないことを伝えるのが、コミュニケーションの遅れとかでめっちゃ時間かかるし、うるさいクライアントだと思われちゃう。そうすると、やり直しのコストがバカみたいに高くなっちゃうんだよね。<br>だから、小さくて速いイテレーション（雰囲気じゃなくて、具体的なイテレーション）の力をマジで見逃さないで。LLMツールを使って、コードをコミットしたり、考え方をロールバックしたりしながら進めば、迷子になっても大丈夫。" userName="Terretta" createdAt="2025-04-20T16:30:04" color="#45d325">}}

{{<matomeQuote body="めっちゃ面白い視点だね！もう少し詳しく教えてくれない？<br>＞俺たち人間は、具体的な結果を見るまでイメージできない。<br>＞俺たち人間は、具体的な結果を見るまでイメージできない。”" userName="highfrequency" createdAt="2025-04-20T18:51:33" color="">}}

{{<matomeQuote body="＞<br>俺たち人間は、具体的な結果を見るまでイメージできない。<br>＞<br>もう少し詳しく教えてくれない？<br>デジタルエージェンシーでクライアント担当のPdMを1週間でもやってみたら、本が書けるくらい語れるようになるよ。<br>* まあ、クライアントの指示に基づいて成果物を作成するのを繰り返すくらいの期間で。" userName="Terretta" createdAt="2025-04-20T19:53:18" color="">}}

{{<matomeQuote body="めっちゃ共感できる。だから、IDEのオートコンプリートよりもチャットインターフェースの方が好きなんだよね。" userName="stepbeek" createdAt="2025-04-20T11:52:42" color="#ff5c5c">}}

{{<matomeQuote body="こうすることで、LLMから学ぶこともできるのが良いよね。知らないことを教えてくれたりして、勉強になるし、スキルアップにもつながる。" userName="charlie0" createdAt="2025-04-20T13:46:02" color="#38d3d3">}}

{{<matomeQuote body="＞これって、Infosysみたいなところにプロダクトをアウトソースするのと実質的に同じだよね。<br>でも、俺の経験からすると、LLMにタスクを伝えて、それを繰り返し確認するためには、Infosysの社員よりも優秀じゃないと無理だよね。<br>だから、経験豊富なエンジニアがサービス会社のエンジニアに仕事をアウトソースするみたいな感じかな。" userName="ixaxaar" createdAt="2025-04-20T12:48:22" color="#ff5c5c">}}

{{<matomeQuote body="なんか、じいさんみたいな気分だわ。Claude codeをガッツリ試してみたんだけど、最初は良かったけど、コストが爆上がりしちゃって。Gemini AIに切り替えたら、作業させたいファイルだけアップロードして、モジュール性が高くなるようにリファクタリングするようにしたんだよね。そしたらマジで最高。マジでFEコーディング苦手なんだけど、10kトークンあたり5～6個の「小さな機能」を作れてる。<br>あと、問題を分割できるのも良いよね。例えば、今回はバックエンドなしでFEだけを完成させてから、バックエンドに取り掛かったり。" userName="flashgordon" createdAt="2025-04-19T21:43:16" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
