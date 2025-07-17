+++
date = '2025-07-10T00:00:00'
months = '2025/07'
draft = false
title = 'AIでベテラン開発者が遅くなった？生産性向上は幻想か、衝撃の研究結果'
tags = ["AI", "生産性", "開発者", "プログラミング", "オープンソース"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> AIでベテラン開発者が遅くなった？生産性向上は幻想か、衝撃の研究結果

引用元：[https://news.ycombinator.com/item?id=44522772](https://news.ycombinator.com/item?id=44522772)




{{<matomeQuote body="元論文はここ＜https://metr.org/Early_2025_AI_Experienced_OS_Devs_Study.pdf＞だよ。LLMは学習曲線がめっちゃ高いと思う。この研究は参加者16人、みんなAIツールの経験はバラバラで、Cursorがメインだった。AIあり・なしのタスクをやらせたら、1/4が生産性上がって、3/4は下がったんだ。Cursorを50時間以上使ってる人は生産性上がってたから、習熟するまで時間かかるってことだね。" userName="simonw" createdAt="2025/07/10 17:36:21" color="#45d325">}}




{{<matomeQuote body="LLMを使った開発で75%が遅くなったって結果、2つの解釈ができると思うよ。ひとつはLLMの学習曲線がめっちゃ急で長いってこと。もうひとつは、LLMってプログラミングアシスタントとしては宣伝されてるほど良くなくて、みんなその便利さを誤解してるってことかな。" userName="grey-area" createdAt="2025/07/10 18:25:40" color="#ff5c5c">}}




{{<matomeQuote body="「使い方が悪い」って反論は、LLMに対しては言い訳に聞こえるんだよね。他の主要なテック製品でユーザーのせいにすることはほとんどないのに。普通は製品がダメってなるのに、AIだけは特別扱いされてるみたいだ。" userName="ivanovm" createdAt="2025/07/10 23:53:54" color="">}}




{{<matomeQuote body="あと、この研究で使われたLLMが最新じゃないって話があるよ。ほとんどの課題は2025年2月か3月に終わってて、Claude 4 OpusとかGemini 2.5 Proみたいな新しいモデルはまだ出てなかったんだ。だから研究が悪いわけじゃないし、新しいモデルでまたやってみたらどうなるか気になるね。" userName="steveklabnik" createdAt="2025/07/10 19:21:50" color="#ff33a1">}}




{{<matomeQuote body="「前のLLMを使ってない」って話、もう2年間ずっと聞いてるんだけどさ。新しいのが出ると、すぐに前のモデルがダメだって言われるの、都合いいよね？" userName="blibble" createdAt="2025/07/10 19:47:23" color="">}}




{{<matomeQuote body="「ユーザーに責任を押し付けるのはおかしい」って話だけど、開発の世界じゃ普通だよ。ほとんどの言語、デバッガ、gitとか、習熟するのにどれだけ時間かかると思ってんの？新しい種類のツールってのは、使いこなすのに経験が必要なんだよ。" userName="viraptor" createdAt="2025/07/11 00:05:03" color="#785bff">}}




{{<matomeQuote body="Simon、論文読んでくれてありがとう！他の研究も学習曲線は同じくらい。開発者の90%はLLMプロンプトに慣れてたし、CursorもVSCodeと似てて使いやすいはずだったんだ。AI経験が多すぎると、AIなしの時のプログラミングが下手になる可能性もあって、ベースライン設定は難しいね。専門家もAIの効果を過大評価してたよ。スキルに「ロングテール」があるかもね。原因は一つじゃなくて、複雑に絡み合ってると思う。あと、自己申告は当てにならないから、しっかりした測定が超重要だよ！" userName="narush" createdAt="2025/07/10 17:52:56" color="#ff5733">}}




{{<matomeQuote body="いや、俺の考えは違うな。最新モデルが出るまで、これらのツールは使い物にならないと思ってたよ。でもさ、「技術はどんどん良くなる」って、別に驚くことじゃないでしょ。" userName="steveklabnik" createdAt="2025/07/10 20:02:14" color="">}}




{{<matomeQuote body="学習曲線が高いってのはマジでそう。LLMの効率的な使い方って意外と難しいんだよ。みんながよくやるミスが2つある。1. LLMを人間みたいに話しかけること。2. LLMに頼りすぎること。80%まで使ったら、残りの20%は手動でやった方が早いことも多いんだ。LLMを使うのもGoogle-fuみたいにスキルが必要なんだよね。" userName="mjr00" createdAt="2025/07/10 17:50:00" color="#38d3d3">}}




{{<matomeQuote body="前のモデルが、今使える一番良いモデルと比べてそこまで良くないってのは、別に大した驚きじゃないんじゃない？" userName="simonw" createdAt="2025/07/10 19:49:51" color="">}}




{{<matomeQuote body="俺は1年以上OpenAIやClaudeをReact開発に使ってるけど、劇的な生産性向上は感じないな。他の用途じゃゴミだし、2年前と比べても少しマシになった程度。新しいモデルが出ても違いが分からんし、reasoningモデルはむしろ遅くなった気がするよ。" userName="mattmanser" createdAt="2025/07/10 20:15:14" color="">}}




{{<matomeQuote body="AIで生産性が上がるかどうかなんて、他人の話はどうでもいいだろ。これは宗教でも仮想通貨でもないんだから、誰がAIを使おうが使うまいが、俺の懐には関係ない。新しい技術はすぐに良くなるもんだし、感情が変わるのも当たり前さ。" userName="jstummbillig" createdAt="2025/07/10 20:10:27" color="">}}




{{<matomeQuote body="LLMのマーケティングって過剰だよね。AIが世界を終わらせるとか、仕事がなくなるとか、みんな心配させられてる。この過度な誇大宣伝と期待を無視して「問題はユーザーだ」って言うのは無責任すぎるだろ。" userName="intended" createdAt="2025/07/11 04:21:29" color="#ff5c5c">}}




{{<matomeQuote body="「ユーザーに責任転嫁するテック製品は珍しい」って言うけど、開発ツールなら普通にあるだろ。エディタやIDEの戦争がそうだし、Vimで同じ研究したら未経験者がどうなるか、想像つくはずだぜ？" userName="sanderjd" createdAt="2025/07/11 01:31:21" color="">}}




{{<matomeQuote body="LLMによる生産性向上は学習曲線が急だ、ってのに超同意。さらに、良いコードが出ても自分で学ばなきゃダメになる。デベロッパーはコードで成長するけど、LLMは劣化するんだ。LLMで爆速開発しても、自分でコードを理解し、綺麗に保つ努力を怠ると、最終的に泥沼になるぞ。" userName="furyofantares" createdAt="2025/07/10 18:02:13" color="#45d325">}}




{{<matomeQuote body="AIのマーケティングって、ベンダー側は極端じゃないと思うんだ。誇大宣伝はむしろ下流で生まれてるし、「使い方が悪い」って言ってるのもユーザー仲間だぜ。LLMで良い経験してる人がみんなサクラじゃないなら、彼らの意見には一理あるんじゃないか？" userName="TeMPOraL" createdAt="2025/07/11 06:47:45" color="">}}




{{<matomeQuote body="AIツールの学習曲線が急ってのは的を射てるね。AIコーディングアシスタントが役に立たないって主張は、実際に使ってる俺からすると現実離れしてる。AIは有用だって事実、反論の余地ないだろ。俺はAIの限界を試し続けてるけど、その能力にはいつも驚かされるぜ。" userName="Uehreka" createdAt="2025/07/10 18:16:27" color="#45d325">}}




{{<matomeQuote body="Vimで10倍の生産性向上なんて誰も言ってない。あれはただのオタクのお遊びで、変なカスタマイズがたくさんあるだけ。2年間必死にキーバインド覚えたら、生産的になったって感じるのは、もはやプライドの証だろ。たまにタイプミスして心の中で罵ってるのは皆知ってるけどな。" userName="fingerlocks" createdAt="2025/07/11 05:30:24" color="">}}




{{<matomeQuote body="便利って言うけど、今のモデルって5ヶ月前のやつより良くなってるって事実じゃないか？" userName="pdabbadabba" createdAt="2025/07/10 20:02:08" color="">}}




{{<matomeQuote body="会社でAIコードツールを教えてるんだけど、デベロッパーの学習曲線がめっちゃ急で、習得できないやつもいるんだ。デベロッパーは指示をしたがるけど、LLMは結果を求めるからな。デベロッパーは頭に大量のコンテキスト入れてるけど、LLMにはそれを繰り返さないといけないのが嫌なんだろうね。面白いことに、AIアシストで一番うまいのはマネジメントに行った元デベロッパーたちで、彼らはAIツールでコーディングの楽しさを取り戻してるみたいだぜ。" userName="eightysixfour" createdAt="2025/07/10 21:37:34" color="#38d3d3">}}




{{<matomeQuote body="「生産性向上」の第三の解釈を教えてやるよ。カーソルを使う開発者の生産性が上がったのは、カーソルを使わないのが下手になったからだぜ。" userName="atiedebee" createdAt="2025/07/10 20:30:00" color="#785bff">}}




{{<matomeQuote body="LLMとAIツールで生産性を上げるには、みんなが思うよりずっと急な学習曲線があると思うんだ。これは20年前にHaskellの強力な型システムについて言われたこととそっくりだね。歴史は繰り返すっていうけど、世界はそんなに大きく変わらないんじゃないかな。" userName="thesz" createdAt="2025/07/10 21:02:17" color="">}}




{{<matomeQuote body="VimやEmacsで10倍生産性が上がるって言ってた奴らいたろ？最近は業界全体がwebshitやクラウド寄りになって、従来のEditorはVS Codeに追いつけないんだよな。AIは今のイケてないツールやプロセスに対処するのに役立ってるぜ。" userName="TeMPOraL" createdAt="2025/07/11 06:58:37" color="#45d325">}}




{{<matomeQuote body="1月にはAIツールなんてクソだと思ってたんだけど、今じゃ月200ドルのClaude Maxプランを使ってるぜ。人によって体験は違うだろうけど、俺にとってはマジで大きな変化だったな。" userName="steveklabnik" createdAt="2025/07/10 20:27:45" color="">}}




{{<matomeQuote body="「1ヶ月分の機能を1週間でやる」って言うのは、LLMが生産性を4倍にするって、どんだけ期待してるんだよ。ありえないだろ。" userName="bluefirebrand" createdAt="2025/07/10 19:10:01" color="">}}




{{<matomeQuote body="プロモーターたちがAIモデルのゴールポストを動かし続けてることにうんざりしてるんだよな。「先月のモデルはダメだったけど、今月のモデルはすごい！」って、毎年言ってるじゃん。まるでオオカミ少年みたいだぜ。いつか本当にそうなるのかもしれないけど、もう信用できないね。" userName="Terr_" createdAt="2025/07/10 20:18:01" color="#785bff">}}




{{<matomeQuote body="俺は特にグリーンフィールドの作業について話してるんだ。ゲームのプロトタイプをたくさん作ってるんだけど、AIは最初の段階で間違いなく役立つぜ。" userName="furyofantares" createdAt="2025/07/10 19:56:05" color="">}}




{{<matomeQuote body="AI支援を受けてる優秀な開発者がマネジメントに移って、AIツールでコーディングの楽しさを取り戻したって言うけど、それって彼らがコーディング下手だったからじゃないの？俺には信じられる根拠がないな。何が「良くなった」のかもハッキリしないし。" userName="rester324" createdAt="2025/07/11 00:02:51" color="">}}




{{<matomeQuote body="AI疲れでうんざりしてたけど、試してみるよ。Claude CodeはMaxプランで使ってる？それともCursor？新しいIDEの設定が面倒で、これまでのAIは個別に使ってたんだよね。" userName="mattmanser" createdAt="2025/07/10 21:54:57" color="">}}




{{<matomeQuote body="AIの正負影響の境目がここ4ヶ月で変わったのは意外だな。研究は時間かかるから「古いモデルに基づいている」って言われるのは仕方ないんだよね。" userName="cwillu" createdAt="2025/07/10 19:58:50" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="また80/20の法則だよ。20%の時間で80%はできるけど、残りの20%に80%の時間かけるんだ。サンクコストの誤謬もあるしね。<br>俺はAIをソリューションじゃなくて摩擦除去ツールとして使ってるよ。文法忘れみたいな細かいことは聞くけど、全体的なコードは任せない。自分で考えることでスキル低下を防ぎたいんだ。" userName="noisy_boy" createdAt="2025/07/10 17:04:56" color="#785bff">}}




{{<matomeQuote body="AIはStack Overflowのすごい版って感じがする。やりたいことはわかるけど、どうやるかわからない時に一番役立つよ。デバッグやrubber duckingにも使えるね。" userName="emodendroket" createdAt="2025/07/10 17:17:55" color="">}}




{{<matomeQuote body="AIはデフォルトだと遅くて冗長すぎるのが問題だよ。読む量も多いしね。参考文献が簡潔なのは、ちゃんと理由があるんだ。" userName="skydhash" createdAt="2025/07/10 17:46:10" color="">}}




{{<matomeQuote body="昔は逆パレートの法則みたいなもんだったよね、80%の仕事に80%の労力、残りの20%にも80%の労力。<br>AIはやるべきことが分かってれば、すごく速くしてくれるってのは同感。昨日、Java streams APIでListの要素削除してたらConcurrentOperationsExceptionsにぶつかって、AIに聞いたら「APIにそのメソッドあるよ」って教えてくれたんだ。こういう複雑だけど明確な問題にはAIはすごく使えるね。" userName="reverendsteveii" createdAt="2025/07/10 17:31:06" color="#ff5733">}}




{{<matomeQuote body="プロンプトで簡潔にって指示すれば、問題は一部解決できるよ。でも、使ってるAPIのバージョンにきっちり合わせてくれるわけじゃないんだよな。" userName="lukan" createdAt="2025/07/10 17:53:16" color="">}}




{{<matomeQuote body="rubber duckingの定義が広がってるのはちょっと気になるな。あれって本来、自分で問題点について声に出して整理して、理解する個人的なプロセスだったはずだよね。チャットボットを使ってこの手の作業をすると、一部のユーザーには認知的にマイナスな影響があるって研究もあるみたいだし。" userName="GuinansEyebrows" createdAt="2025/07/10 18:03:52" color="#45d325">}}




{{<matomeQuote body="「残りの20%に80%の時間」ってのはAI導入前からそうだったよ。だから最初の時間の節約は助かるね。<br>経験豊富な開発者のAIに対する意見で良いなって思ったのは、「俺のスキル90%は価値なくなったけど、残りの10%は1000倍価値になった」ってやつ。ちょっと大げさだけど、 gistはわかる。" userName="wmeredith" createdAt="2025/07/10 17:15:12" color="#ff5c5c">}}




{{<matomeQuote body="そういう質問に答えるのに、もっと速い方法って他にあるわけ？" userName="emodendroket" createdAt="2025/07/11 00:18:48" color="">}}




{{<matomeQuote body="既存コードベースへの機能追加にはAIがすごく役立つ。「この検索パラメータにfooも追加して」とか「x関連を全部削除して」みたいな作業は得意だね。" userName="eknkc" createdAt="2025/07/10 17:28:19" color="#785bff">}}




{{<matomeQuote body="AIに何でもかんでも学習させる必要ないし、仕事で世界中のライブラリを使うわけじゃない。ドメインに精通してれば、リファレンスドキュメントなんてサッと読みこなせるよ。" userName="skydhash" createdAt="2025/07/11 10:19:55" color="">}}




{{<matomeQuote body="AIは便利だけど、僕の仕事のほんの一部にしか役立たないから、CEOが期待するほど人生を変えるようなものではないな。AIが14年物のごちゃごちゃコードを解析したり、コミットメッセージやJIRA、Slackの会話まで完全に理解できるようになれば別だけど、現状じゃ難しい問題は解決しないよ。" userName="some-guy" createdAt="2025/07/10 17:35:25" color="#38d3d3">}}




{{<matomeQuote body="まさにこれ。よく知らない言語で作業してた時、「これを僕の得意な言語で書くとこうなるんだけど、新しい言語で書き直して」ってAIに頼んだら、ちゃんとまともなコードが返ってきたよ。あとはプロジェクトに合わせてスタイルを修正すればOK。" userName="threetonesun" createdAt="2025/07/10 17:28:25" color="#ff5c5c">}}




{{<matomeQuote body="LLMは冗長性を許すほど賢くなるんだ。LLMはトークンで思考してるから、トークンを使うのを制限すると、脳みそを外科手術で破壊されたみたいにバカになっちゃうんだよ。" userName="malfist" createdAt="2025/07/10 22:49:35" color="#785bff">}}




{{<matomeQuote body="昔からの開発者としては、僕が欲しいのはこれだけ。構文エラーの自動修正みたいな感じで、コンパイルして編集するサイクルを数回減らせるだけで十分なんだ。" userName="1100011" createdAt="2025/07/10 17:43:37" color="#38d3d3">}}




{{<matomeQuote body="「使ってるAPIバージョンにAIは合わせてくれない」って意見への返信だね。ツール利用向けに訓練されたモデルならできるよ。例えばCodexでRust扱う時、依存ファイルからgrepして最新APIを調べられる。JavaScriptとか他の言語でも、ツールでアクセスできれば同じように使えるんだ。" userName="diggan" createdAt="2025/07/10 18:10:34" color="#45d325">}}




{{<matomeQuote body="ダック（Rubber Duck Debugging）は喋り手が考える間、黙って座ってるのが本来の役割だよね。それって人間の言語と同じじゃない？時間が経つにつれて、おかしな形で進化するんだ。「どうでもいい」って意味で「could care less」って言う人が多いとか、そんな感じ。" userName="danparsonson" createdAt="2025/07/10 23:47:17" color="#38d3d3">}}




{{<matomeQuote body="最初の80%をやり直さないと、残りの80%を終わらせられない状況って、全然笑えないよね。" userName="skydhash" createdAt="2025/07/10 17:47:25" color="">}}




{{<matomeQuote body="AIがどれだけ考えても、結局はコードしか返してこないんだよ。" userName="lukan" createdAt="2025/07/11 08:02:01" color="">}}




{{<matomeQuote body="AIの「説明機能」は意外と使えるんだ。常に新しいツールに触れてるから、その価値は実感してるよ。" userName="emodendroket" createdAt="2025/07/11 00:06:55" color="">}}




{{<matomeQuote body="AIとの会話はまだ一方的だね。AIが間違った答えを出しても、質問を工夫したり、答えのヒントから正しい答えにたどり着くこともあるよ。" userName="emodendroket" createdAt="2025/07/11 00:08:26" color="">}}




{{<matomeQuote body="決まったライブラリだけ使うなら深く学ぶのがベストだけど、色々なものに手を出してたら非現実的だよね。Stack Overflowみたいに、すぐに「学ぶ」ことができれば、誰も苦労しないさ。" userName="emodendroket" createdAt="2025/07/11 15:30:05" color="">}}




{{<matomeQuote body="思考って、言葉にしたり書き出したりすると整理されるんだ。セラピーや日記、ラバーダッキングと同じで、モヤモヤした考えが形になる。LLMに書き出すのも、同じくらい効果があるはずだよ。" userName="jonathanlydall" createdAt="2025/07/10 23:21:17" color="#ff5733">}}




{{<matomeQuote body="そういう作業にはAIは向いてるね。「このJSONをJavaクラスに変換して」ってお願いするようなタスクとか、まさにそうだ。" userName="emodendroket" createdAt="2025/07/11 00:19:56" color="">}}




{{<matomeQuote body="Codexは使ってないけど、他のAIツールは一貫して使えなかったな。特定のバージョンを使うように指示しても、AIの学習データや設定次第で無視されちゃうから、まだ懐疑的だよ。" userName="lukan" createdAt="2025/07/10 18:34:21" color="">}}




{{<matomeQuote body="その開発者がAIを使って、90%少ない労力で同じ成果を出すか、収入が1000倍になったのか教えてくれよ。そうじゃないなら「1000倍価値がある」なんて言わないでくれ。" userName="bluefirebrand" createdAt="2025/07/10 19:22:02" color="">}}




{{<matomeQuote body="同感。「あと少しでできそう」って思わせるのが時間の無駄なんだよな。AIは役に立ってるフリがうまいから、真実を見抜くにはかなりのスキルが必要だ。" userName="causal" createdAt="2025/07/10 18:08:43" color="#45d325">}}




{{<matomeQuote body="完全に同意するよ。全ては「摩擦の除去」にかかってるね。LLMがなければReactなんて触らなかった。AIとチャットしながらサクッとプロトタイプ作るのは楽しいし、学習の障壁が下がる。分野の変化が速いから、これは開発者の進歩を加速させるって信じてるよ。コード自体はあくまで手段だしね。" userName="curious_cat_163" createdAt="2025/07/11 14:45:18" color="#45d325">}}




{{<matomeQuote body="1.6倍って少ないよ、普通は5倍は必要だよな。" userName="visarga" createdAt="2025/07/10 20:08:11" color="">}}




{{<matomeQuote body="まったくだな。契約とコンテキストを与えられれば、大量のコードを書かなくてもAIは最高だよ。まさに80行くらいのコードを書くのに使ったばかりだけど、時間短縮になったのは間違いないね。" userName="antonvs" createdAt="2025/07/10 17:35:50" color="#785bff">}}




{{<matomeQuote body="やあHNの皆さん、この研究の著者だよ。長年HN使ってるけど、今日はコメントで質問に答えるよ！<br>時間がないなら、論文じゃなくてブログ記事かこのアナウンススレッド[1]を読むのがおすすめだよ。<br>[1] https://x.com/METR_Evals/status/1943360399220388093" userName="narush" createdAt="2025/07/10 17:28:37" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これは今まで見た中で最高に良い研究だよ。クリックベイトじゃなくて、主張が正直で、分かりやすい形式で提示されてる。本当にありがとう。" userName="causal" createdAt="2025/07/10 18:09:46" color="#45d325">}}




{{<matomeQuote body="論文の方法論と、ここで質問に答えるプロ意識が最高だね。素晴らしい仕事だよ。" userName="isoprophlex" createdAt="2025/07/10 19:45:56" color="#ff5733">}}




{{<matomeQuote body="Claude 3.7がSkynetを構築するのに十分じゃないって分かってよかったよ！" userName="jsnider3" createdAt="2025/07/10 18:01:24" color="">}}




{{<matomeQuote body="（記事は読んだけど論文は読んでないよ。）AIが速いっていう誤解を説明するために、主観的な疲労感を測定した？デベロッパーからマネージャーになった身としては、疲れてる時にAIが楽だから好きなんだ。" userName="JackC" createdAt="2025/07/10 20:10:51" color="#ff5733">}}




{{<matomeQuote body="試したよ！論文の”Trading speed for ease (C.2.5)”のセクションで詳しく解説してる。<br>https://metr.org/Early_2025_AI_Experienced_OS_Devs_Study.pdf<br>要するに、開発者が負担を軽減したという定量・定性的な証拠は混在していて、効果は不明確だよ。" userName="narush" createdAt="2025/07/10 20:14:08" color="#785bff">}}




{{<matomeQuote body="AIを使ったタスクが適切だったか疑問だね。ただ「AIで実装しろ」って指示じゃ、効果が低いかもしれない。開発者がAIを使いこなせてたかどうかも論文からは読み取れないし、そこが重要だよね。" userName="antonvs" createdAt="2025/07/10 18:46:16" color="#785bff">}}




{{<matomeQuote body="開発者への指示は「役立つならAIを使え、不要なら使うな」だったんだ。実際、16%はAIを使わなかったみたいだよ。ただ、実験のせいでAIを過剰に使った可能性は否定できないって論文にも書いてあるしね。詳しくは「Experimentally driven overuse of AI<br>(C.2.1)」を見て。https://metr.org/Early_2025_AI_Experienced_OS_Devs_Study.pdf" userName="narush" createdAt="2025/07/10 18:57:08" color="#785bff">}}




{{<matomeQuote body="データセットを公開するか、せめて各開発者のタスクごとの絶対時間を論文に追加してくれない？AI有／無で、各開発者がどれくらいの時間を使ったのか知りたいな。Cursorの経験が豊富な開発者が、本当に他の人より速かったのかも気になる。良い研究で、評価できるのが嬉しいよ！" userName="igorkraw" createdAt="2025/07/10 18:13:35" color="#785bff">}}




{{<matomeQuote body="ああ、ごめん、それ昨日論文を仕上げるのに忙しくて言うの忘れてた！数週間以内に、データと分析コードを公開する予定だよ。GitHubはhttp://github.com/METR/ で、X (旧Twitter) でもアナウンスするから、https://x.com/metr_evals をフォローしてね。" userName="narush" createdAt="2025/07/10 18:33:26" color="#785bff">}}




{{<matomeQuote body="いいね、ありがとう。ところで、俺は「AIに関する混乱」に文脈を与えるポッドキャストをやってるんだ（客観的な事実と、俺たちの主観的な見解を分けて提供してるよ）。もし興味があれば、ポッドキャストに出て話してくれないかな？連絡先はプロフィールにあるよ。" userName="igorkraw" createdAt="2025/07/10 20:20:06" color="">}}




{{<matomeQuote body="この結果は、トップレベルじゃない、キャリア初期や中堅のエンジニアにも当てはまるのかな？" userName="yawnxyz" createdAt="2025/07/11 03:39:54" color="#38d3d3">}}




{{<matomeQuote body="他の設定への結果の転移は素晴らしい質問だね。先行研究はスピードアップを示唆してるけど、同じ方法論で調査してみたいよ。モデルやツールが進化してるから、もう既に大変だけどね！" userName="narush" createdAt="2025/07/11 05:00:27" color="#ff5733">}}




{{<matomeQuote body="この結果はめちゃくちゃ面白いね、特に「開発者がAIで24%速くなると期待し、スローダウンを経験した後も20%速くなったと信じていた」って部分。なんで認識と現実でこんなに差があるんだろう？もしかして、脳が精神的な労力を測ってて、時間の感覚を歪めてるのかな？" userName="pera" createdAt="2025/07/10 18:54:22" color="#ff33a1">}}




{{<matomeQuote body="恐ろしい考えなんだけど、AIを使ったコーディングが、ソーシャルメディアみたいなドーパミンフィードバックループを引き起こしてるんじゃないかな？AIから繰り返し解決策を得るたびに、脳で何かがトリガーされてるのかも。もしそうなら、開発者がAIに文字通り中毒になってるせいで、過剰にポジティブな認識を持ってるってことにならないかな？" userName="evanelias" createdAt="2025/07/10 20:42:12" color="#45d325">}}




{{<matomeQuote body="LLMentalist Effectについて言ってるね。LLMがどういう心理トリック使ってるか、そしてボタン押したらタダで何か得られるギャンブルみたいな側面もあるって。詳細はここ見てね：https://softwarecrisis.dev/letters/llmentalist/" userName="EarthLaunch" createdAt="2025/07/10 20:48:15" color="#785bff">}}




{{<matomeQuote body="これはめっちゃ興味深いけど、ゾッとするね。意思決定をアルゴリズムの”メンタリスト”にアウトソースしてたら、とんでもない報いが来るって。このチャットボット”サイキック”に頼るの、やめなきゃな。" userName="lll-o-lll" createdAt="2025/07/10 23:07:27" color="#ff33a1">}}




{{<matomeQuote body="コマンドラインの方がGUIよりいつも速く感じる、みたいなのと一緒かな？タスクへの関わり方で時間の感じ方も変わるのかもね。時間じゃなくて消費エネルギーを測る簡単な方法があればいいのにって思うよ。もしかしたら自然は違うことを最適化してるのかも。" userName="jwrallie" createdAt="2025/07/10 23:16:58" color="">}}




{{<matomeQuote body="エージェントコーディングって、手動コーディングよりドーパミンが少ないのかな？正直、その方が納得できるし、可能性高いと思うんだ。AIツールでは、今んとこフロー状態にはなれないよね。" userName="hopeless" createdAt="2025/07/11 14:36:54" color="#ff5c5c">}}




{{<matomeQuote body="手動コーディングだと、タスク終わった時にデカいドーパミンが出るよ。AIだと、AIがコード作って間違い直すって反復作業になるから、AIとの各やり取りでドーパミン出まくって、すごい生産性感じちゃうのかもね。フロー状態はもっと安定した興奮レベルだし、TDD好き嫌いの理由にもなるかも。" userName="evanelias" createdAt="2025/07/11 19:01:06" color="#ff5733">}}




{{<matomeQuote body="これはすごいね。みんな同じツール使ってるのに経験が全然違う理由をよく説明してくれると思うよ。" userName="coffeefirst" createdAt="2025/07/11 04:36:46" color="">}}




{{<matomeQuote body="俺もそう思う。これが”ネガティブ”なことなのか自信ないけど、人類の狩猟採集本能と一緒かも。ポジティブなことへの依存って悪いの？SNSは質の低いコンテンツで中毒にさせるからネガティブだけど、AIがそうかっていうと、まだそこまで言いきれないな。" userName="csherratt" createdAt="2025/07/10 20:52:03" color="#45d325">}}




{{<matomeQuote body="でも研究では、AIが開発者の効率を”著しく低下”させたって出てるんだよ。それはポジティブとは言えないよね！" userName="evanelias" createdAt="2025/07/10 21:00:00" color="">}}




{{<matomeQuote body="AIツールが実際より良いと思わせるための巨大な努力があったからじゃないかな。AI企業の「経済専門家」や「ML専門家」は、自社製品を売りたいからね。トップが鵜呑みにして、新人もその波に乗っちゃう。経験者としては”ベースライン”の期待値が上がりすぎちゃうんだ。これは経験的に捉えるのが難しいけどね。" userName="alfalfasprout" createdAt="2025/07/10 20:00:04" color="#ff33a1">}}




{{<matomeQuote body="HNのAI推進者たちも同じ効果の対象になってないかなって思うんだ。彼らが本当に自分のパフォーマンスを測ってないなら、AIって本当に彼らを生産的にしてるのかな？" userName="longwave" createdAt="2025/07/10 20:10:10" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
