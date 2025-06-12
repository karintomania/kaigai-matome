+++
date = '2025-06-05T00:00:00'
months = '2025/06'
draft = false
title = '速報 Googleの最新AI Gemini 2.5 Pro preview 06-05が登場！'
tags = ["AI", "Google", "LLM", "コーディング", "開発"]
featureimage = 'thumbnails/purple8.jpg'
+++

> 速報 Googleの最新AI Gemini 2.5 Pro preview 06-05が登場！

引用元：[https://news.ycombinator.com/item?id=44193328](https://news.ycombinator.com/item?id=44193328)




{{<matomeQuote body="Googleがlmarenaのベンチマークで前回のGeminiに続いてさらにELObenchmarkスコアを25ポイントも上げたのはすごいね！でも、最近ベンチマークがモデルの本当の能力を正確に表してるか疑問に思えてきたんだ。Geminiは良いモデルだと思うけど、ここ数週間GeminiとClaude Opus 4をめっちゃ使ってみて、Opus 4は全く別次元だと感じてるよ。俺はTypeScriptの厄介な問題にたくさん取り組んでるんだけど、Geminiはちょっとすると同じとこをぐるぐる回ったり、まさかの「できません！」って諦めたりしたんだ（こんなの初めて！）。Opus 4は同じ問題をあっさり解決したよ。これが個別の話で全体的な性能を示すわけじゃないのは分かってるけど、俺のGeminiの経験ではコードをゴリ押しで動かそうとする傾向があるのに対して、Opus 4はもっと綺麗なアプローチを見つけてくれる感じだった。それに、Opus 4はなんか想像力が豊かっていうか？あるいはAgentみたいなシナリオに合わせて調整されてるのかな？特定のインタラクションの後、Playwrightスクリプトを一時的に書いてDOMをダンプして問題を調べたりするのを見たんだけど、これは特に驚いたね。Geminiでの経験だと、ただひたすらコードをめちゃくちゃ一生懸命読んでバグを解決しようとするんだけど、これは当然限界があるよね。<br>繰り返しになるけど、Geminiは素晴らしいモデルだと思うし、Googleが出したものは本当にすごいと感心してるよ。Opus 4が出るまでは一番だと思ってたんだ。" userName="johnfn" createdAt="2025/06/05 17:02:18" color="#ff33a1">}}




{{<matomeQuote body="俺にとっては、いまだにほとんどの場合でOpus 4よりもo3が一番好きだよ。ここ1ヶ月だけでAIコード生成ツールに何百ドルも使ったけど、俺のランキングはこうだ：<br>1. o3 - マジでニュアンスとか目標の核心を捉えるのが超うまいし、プロダクションレベルのコードに一番近い質のコードを書いてくれる。唯一の欠点はカットオフ期間とコスト、特にツールを使うのが好きな点だね。俺がやってるRailsプロジェクトでは大した問題にならないことが多いけど、たまに困ることもある。<br>2. Claude Code経由のOpus 4 - これもすごく良くて、o3が高すぎるから普段使いしてる。よくOpus 4に計画と最初のドラフトを作らせて、それをo3に批評させてフィードバックリストを作らせるんだ。そうするとマジで良いものになる。<br>3. Gemini 2.5 Pro - この最新版はまだ試してないけど、先週まではこれが俺の2位だった。今はSonnet 4と同等か、ちょっと良いくらいかな。状況によるね。<br>4. Claude Code経由のSonnet 4 - 悪くはないけど、マジで良いコードを生成するにはかなりコーチングと監視が必要だ。放っておけば大量のコードは確かに生成するけど、もっと具体的なプロンプトと修正がないと、質が高くて簡潔で考え抜かれたコードにはならないね。<br>俺はコードの質とプロジェクトの構成についても、命名とか再利用性とか細かい部分まで超こだわりが強くて、ちょっと強迫観念があるんだ。先月のCursorの統計によると、提案されたコードの33%しか受け入れてない。最適じゃない道に進む前に、よく戻ってプロンプトを練り直してから受け入れるんだ。" userName="joshmlewis" createdAt="2025/06/05 17:38:01" color="#38d3d3">}}




{{<matomeQuote body="そう言うのが面白いね。なぜなら、俺にとってはo3はOpenAIの他のモデルよりはかなり改善されてるけど、Opus 4とGemini 2.5 Proの性能にはまだまだ全然及ばないからだよ。<br>でも、o3がChatGPTアプリ内にあるのは大きいね。ChatGPTアプリはインターネット検索の実装とか、他のチャットアプリより多くの点でいまだに優れてるから。" userName="throwaway314155" createdAt="2025/06/05 17:41:08" color="">}}




{{<matomeQuote body="チャットアプリ経由でコーディングしてるなら、マジで時代遅れだよ。Agent IDEかプラグインを試してみな。" userName="svachalek" createdAt="2025/06/05 17:52:11" color="">}}




{{<matomeQuote body="うん、その通り。知らない人もいるかもしれないけど、チャットアプリは人格とかトーンとか一般的な使いやすさを扱うために、たくさんの複雑なシステムプロンプトが追加されてるんだ。IDEも似たことはしてるけど（Claude Codeは『裸の』モデルに一番近いものの一つ）、少なくともコーディングタスクをめちゃくちゃ得意にするように行動を導いてるんだ。もう一つの理由は、IDEがここ数ヶ月で搭載したAgent機能だよ。これでコードベース全体のファイルを検索したり読んだり編集したりできるようになったんだ。このアイデアが好きじゃないとか、コントロールを失う感じがするとか思うかもしれないけど、これが未来だよ。何ヶ月も使ってみて、自分がやりたいことをAIにやらせる方法を学んだけど、一度試してやめる多くの人は、AIが何か馬鹿なことをしてイライラして、ただ「良くないんだ」と思い込んでしまうんだと思う。それは練習とスキルの問題であって、モデルの問題じゃないね。" userName="joshmlewis" createdAt="2025/06/05 18:07:13" color="#38d3d3">}}




{{<matomeQuote body="最近の新しい一流モデルに特に感動するには、全てのベンチマークは不正確か無関係だって意見を持って、個人の感覚とか逸話こそがモデルがマジで何光年も進んでるって思う唯一の方法だと思うよ。そうじゃないと、例えばlmarenaの数字を見ると、2023年11月のgpt-3.5-turboがGoogleの新しい世界トップモデルより16%も選好率が高いとか主張してるのを見ることになるからね。" userName="zamadatix" createdAt="2025/06/05 18:58:53" color="">}}




{{<matomeQuote body="（コメント2の人へ）どの言語で、どのIDEを使ってるの？俺は主にCursorでMax reasoningをオンにして使ってるよ。5月だけでo3のトークン使用量に300ドルくらい使ったのに、それでも提案の33%くらいしか受け入れてないんだ。この前Xでもこれについて投稿したんだけど、年末までにはこの拒否率もかなり下がると期待してる。今の進歩のペースを見てるとね。" userName="joshmlewis" createdAt="2025/06/05 17:45:37" color="">}}




{{<matomeQuote body="Opus 4が初めて俺に『美しい』コードを生成してくれたモデルだってことに気づいたんだ。シンプルで、読みやすくて、コメントで汚れてなくて、無駄なものがなくて、ただ綺麗で、クリーンで、機能的なコード。久しぶりに『すごい！』って思ったよ。<br>それはそうと、たまにマジでアホなことするんだ。完全に馬鹿なの。で、『なんでこんな馬鹿なことしたんだ？』って聞くと、『あ、うん、その通りだね、これ超間違ってるわ。はい、これが実際に動く、賢いソリューションだよ』（そして brilliant なコードを生成する）<br>このマシーンたちがどういう仕組みで動いてるのか理解できないよ。" userName="tymonPartyLate" createdAt="2025/06/05 19:29:16" color="#ff33a1">}}




{{<matomeQuote body="Claude Codeでどのモデルを使うか、どうやって選んでるの？" userName="pqdbr" createdAt="2025/06/05 18:25:55" color="">}}




{{<matomeQuote body="IDEって非エンジニアには敷居が高いよね。<br>LLMが出力したコードをおばあちゃんでも実行できるような、VibeIDEみたいなのがあっても良いのにって驚いたよ。" userName="Workaccount2" createdAt="2025/06/05 18:24:21" color="">}}




{{<matomeQuote body="いやー、AIでのコーディングマジで大変。<br>ClineとかOpenAI、Claudeで試したけど変な結果ばっかだし、クレジット無駄にしたりコンテキスト足りなくなったり…。<br>Cursorも今試してるとこだから、まだ何も言えないなー。" userName="baw-bag" createdAt="2025/06/05 19:55:40" color="">}}




{{<matomeQuote body="これ議論の余地あると思うなー。<br>CursorとかVS Code拡張使ったけど悪くないよ。<br>でもClaude CodeみたいにIDEなしでも全然いけるし、コード書くなら今これ。<br>結局はコストがデカいんだよね。<br>アプリとかサブスクは安いけどAPI使うとすぐ高くなるから。" userName="throwaway314155" createdAt="2025/06/05 20:05:42" color="">}}




{{<matomeQuote body="Gemini 2.5で一番ムカつくのが、Opus 4に比べてマジでムダに長すぎること！<br>書いたコードの説明とかコード量、コメントとか、Opus 4の2倍から3倍くらいになっちゃうんだ。<br>短くしてって頼めばマシになるけど、それでもたまに長くなっちゃうんだよなー。" userName="jorvi" createdAt="2025/06/05 18:15:48" color="#38d3d3">}}




{{<matomeQuote body="俺たち、時間を買うためにトークンとメンタルヘルスをすり減らしてんの？<br>Cursor、昔も今もマジで頭痛する。<br>LLMがまともな出すの待つだけの無意味なループ。<br>プロンプトのために言語プロトコルのエリートになろうとしてる。<br>既存の効率化ツールで十分じゃない？<br>もはや効率低下だよ。<br>エンジニアはもっと考える時間取るべきで、AIよりホワイトボードとか散歩を選ぶべきだよ。<br>速く！ってプレッシャーが原因。<br>AIが大量のコード書くの見ると、今の変な評価方法に合ってる感じするよね。<br>高いのはわざとだよ。" userName="hirako2000" createdAt="2025/06/05 23:12:09" color="#45d325">}}




{{<matomeQuote body="o3とo4-miniってどんな感じ？<br>違いどうなの？" userName="jonplackett" createdAt="2025/06/05 23:03:55" color="">}}




{{<matomeQuote body="すごい変。<br>reasoningってあんま役に立たない。<br>プロジェクトのコンテキスト把握にはいいけど、長い会話になると余計なことばっか言ってタスクから外れるんだよね。<br>俺の中のコーディングモデルランキングは、Claude Code ＞ Claude 4 raw ＞ Gemini ＞ 大きな差 ＞ o4-mini ＞ o3って感じ。" userName="drawnwren" createdAt="2025/06/05 18:07:27" color="#785bff">}}




{{<matomeQuote body="Max ＄200プランだから、Sonnet 4に制限されるまでOpus使ってるよ（数十回中2回だけ）。<br>Cursorだと、マジ簡単なリクエスト以外はMax reasoningモデルに金出す価値あるね。<br>安いモデルでよくある変な動きなくて、毎回最高のコード出してくれるから。" userName="joshmlewis" createdAt="2025/06/05 18:33:13" color="#ff5c5c">}}




{{<matomeQuote body="＞ちょっとしたらGeminiがループしたり（こんなの初めて見た！）「できない」って諦めた<br>マジかよ、そのやり取り見れるの？<br>再現する方法ある？" userName="Alifatisk" createdAt="2025/06/05 19:24:41" color="">}}




{{<matomeQuote body="Cursorでmaxプラン使えるの？<br>API経由じゃなくてClaude Codeでしか使えないと思ってた。" userName="sunshinerag" createdAt="2025/06/05 21:01:53" color="">}}




{{<matomeQuote body="LMarenaの評価ってさ、簡単な質問なら古いモデルでもユーザーが気に入った答えを出せば勝つことあるよね。「職場に持っていく良いおやつは？」みたいな質問とかさ。" userName="Workaccount2" createdAt="2025/06/05 20:36:54" color="">}}




{{<matomeQuote body="それどういう意味？ GeminiはELO 1470、GPT3.5-turboは1206で、Geminiの勝率86％だよ。LMarenaのデータはこれ→ https://chatgpt.com/share/6841f69d-b2ec-800c-9f8c-3e802ebbc0... 見てみて。" userName="johnfn" createdAt="2025/06/05 19:58:12" color="#45d325">}}




{{<matomeQuote body="綺麗で読みやすいコードって、ほとんどの優秀なモデルでいけるけど、個人的にはOpenAIのモデルが好きかな。システムプロンプトが一番重要だと思うんだよね。私のコードガイドラインのシステムプロンプトはこれだよ→ https://gist.github.com/victorb/1fe62fe7b80a64fc5b446f82d313... あと、モデルがたまにアホなことするのは、自分のプロンプトを見直して改善すれば防げるよ。システムプロンプトを育てていけば、最初の1回で完璧に近づくはず。" userName="diggan" createdAt="2025/06/05 21:13:38" color="#ff33a1">}}




{{<matomeQuote body="これがo3の簡潔さって言いたかったことなんだ。良いプロンプトを使えば、マジでヤバいレベルの高いコード出すときがある。たまに少し間違った情報あげても、他のモデルは何十行もコードぐちゃぐちゃにするのに、o3はすぐに別のファイル探して1行で直した経験が何度もあるよ。ああいう独立した思考力？って、複雑なコードベース扱うときにめちゃくちゃ価値ある。" userName="joshmlewis" createdAt="2025/06/05 18:47:05" color="#ff5733">}}




{{<matomeQuote body="コーディングに関しては、俺は最高の思考モデルしか使わないな。他のモデルもエージェントシステムみたいな特定のタスクでは役に立つけど、時間は金だからね。もっとパワフルなモデルがあるのに、スキルの劣るモデルをあれこれ手なずけるのに時間をかけたくないんだ。" userName="joshmlewis" createdAt="2025/06/06 03:07:33" color="">}}




{{<matomeQuote body="o3は基本的なリサーチとか分析でかなり使うよ。特にディープリサーチツールは、簡単な買い物リサーチにもめっちゃ便利。例えば今日、子供の発達段階とか遊び方に合ったおもちゃのリストを作ってくれたんだ。自分で何時間もサイト巡りする手間が省けたよ。" userName="spaceman_2020" createdAt="2025/06/05 18:22:07" color="#ff33a1">}}




{{<matomeQuote body="あなたはOpus 4でもその問題試してみた？ 僕はOpus 4よりo3の方が、自分の使い方ではどれもずっとすごかったと感じてるんだけど。" userName="varunneal" createdAt="2025/06/05 17:33:29" color="">}}




{{<matomeQuote body="Claude Codeって、それ自体がモデルじゃないんだよ。デフォルトでは一部がOpus 4かSonnet 4に送られるけど、ほとんどSonnet 4なんだ。明示的に設定しない限りね。" userName="joshmlewis" createdAt="2025/06/05 18:34:38" color="#45d325">}}




{{<matomeQuote body="「トークンとメンタルヘルスを引き換えに時間を得てる？」か。僕はBipolar disorderがあって、プログラミングがめちゃくちゃ大変な時があるんだ。最近のコード生成ツールの進歩は、マジで僕にとって大きな助けになってる。些細なタスクでどれだけイライラするか、みたいな勝負じゃなくなった。欲しいものを正確に頼んで、返答はGitHubのプルリクみたいに間違いがあるかもって感じで見てる。大体、Claude Codeは正確で良いコードを最初に出してくれるよ（スタイルとかリンター使うとか細かく教えてる）。修正いらないんだ。つまり、僕みたいな精神疾患がある人間にとっては、これ以上ない助けになってるってこと。" userName="throwaway314155" createdAt="2025/06/05 23:53:22" color="#ff33a1">}}




{{<matomeQuote body="僕もo3が一番クリアに考えるモデルだと思うよ。複雑な問題に取り組んでて、ソフトウエアの設計について色々考えたい時、o3に先行研究を調べてもらったり、トレードオフについて話し合ったりするのが好きなんだ。もしo3がもっと速くて安かったら、もっともっと使うのに。あなたのワークフローも気になるな！" userName="vendiddy" createdAt="2025/06/05 21:32:47" color="#ff5733">}}




{{<matomeQuote body="Jetbrains AIで使える範囲だけど、Gemini 2.5はGo言語ですごく良い感じだよ。まあ、それはなんか納得できるね。" userName="cwbriscoe" createdAt="2025/06/05 20:58:21" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OpenAIの評価額やばくない？競合も出てきてリーダーじゃないかもだし、資金調達も大変そう。売上は少ないのにハードとか電力のコストかかるし、独自データも持ってないじゃん（Googleとかと違って）。上場するのも辛そうだよ。GoogleはAIレースでかなり勝ち組になりそう。" userName="chollida1" createdAt="2025/06/05 18:08:26" color="#ff5733">}}




{{<matomeQuote body="OpenAIの強さを誤解してる人がいるよ。”chatgpt”って動詞になってるくらいで、普通の人はClaudeとかGeminiなんて知らないし興味ないって。ChatGPTの履歴とか記憶みたいな便利さだけで十分な moat になってるし、別にめちゃくちゃにならなければ今の評価額にも見合うってば。他社が追いつこうとしてるだけで、OpenAIは遅れてコピーするだけでも全然いけるよ。" userName="jstummbillig" createdAt="2025/06/05 21:20:41" color="#38d3d3">}}




{{<matomeQuote body="OpenAIは今年末までに120億ドルの収益を見込んでるらしいよ。Googleも良い位置にいると思うけど、OpenAIが持ってるマインドシェアとかプロダクトの優位性で、すごい余裕があるんじゃないかな。" userName="ketzo" createdAt="2025/06/05 18:12:03" color="#ff33a1">}}




{{<matomeQuote body="OpenAIのハードルは利益が出せるかってとこだね。Googleは自社のハードとかデータセンターを持ってるけど、OpenAIは外部に頼らなきゃいけない（ハードの独占企業とか、他の巨大テック企業のDCとか）。OpenAIが本当に先を行くには、なんか絶対的なゲームチェンジャー（新しい仕組みとかアルゴリズム）を発見して、それを誰にも真似されないように隠し通すしかないよ。" userName="Workaccount2" createdAt="2025/06/05 18:40:44" color="#38d3d3">}}




{{<matomeQuote body="google.comの検索ボックスにAI応答が出れば、平均的なユーザーはもうChatGPTを使う必要なくなるって。だって、もう結構普通の人がAI Overviewの応答のスクショをシェアしてるの見るもん。" userName="aeyes" createdAt="2025/06/05 21:31:24" color="">}}




{{<matomeQuote body="OpenAIはハードとかデータセンターを外部に頼ってるって言ってるけどさ<br>今まさにデータセンター作ってるんじゃない？Texasだけじゃなくて他の国にも作る計画みたいだよ。" userName="diggan" createdAt="2025/06/05 21:16:41" color="#ff5733">}}




{{<matomeQuote body="君は、Google.comに普通の人、特に若い普通の人たちを呼び戻さなきゃいけないって部分を見落としてるよ。だって、何億人もの人がもうGoogle.comに行かないんだから。" userName="jstummbillig" createdAt="2025/06/05 22:08:04" color="">}}




{{<matomeQuote body="OpenAIがリーダーじゃないって言うのは早すぎると思うな。あと1、2ヶ月でo3 proとかGPT 5が出てくるわけだし。それがイマイチだったら考え直すけどね。まあ、少なくともGoogleとか他のと互角（neck and neck）だって可能性は高い気がするけどさ。" userName="orionsbelt" createdAt="2025/06/05 20:27:59" color="">}}




{{<matomeQuote body="OpenAIは今年の収益が127億ドル、2026年には294億ドルになると予測してるらしいよ。ごめん、後半は間違いだったから無視してね。" userName="Rudybega" createdAt="2025/06/05 18:15:27" color="">}}




{{<matomeQuote body="「みんなClaudeとかGeminiを知らない」って言うけど、広告一つで変わるだろ。GoogleがAndroidにGemini入れられるのはデカいよな。" userName="ComplexSystems" createdAt="2025/06/05 23:52:26" color="">}}




{{<matomeQuote body="OpenAIがJony Iveと組んで、激薄データセンターを作るらしい。サーバーが薄すぎて、太いケーブルじゃなくお互いささやき合って通信するんだって。これがOpenAIのゲームチェンジャーになるはず！" userName="geodel" createdAt="2025/06/05 19:00:06" color="">}}




{{<matomeQuote body="3000億ドル評価でも、アナリストは売上の2倍で見がち？OpenAIが上場時6000億ドル売上必要ってこと？ワラタw その情報どこから？Microsoftなんてその半分以下の売上でOpenAIの10倍以上評価だぞ。売上だけが評価基準じゃないってば" userName="qeternity" createdAt="2025/06/05 19:06:17" color="#785bff">}}




{{<matomeQuote body="まあ、あのデータセンターはNvidiaのGPUだらけになるだけだろ。だから「独占企業に金を払う」ってことになるんだよ。" userName="geodel" createdAt="2025/06/06 03:41:36" color="">}}




{{<matomeQuote body="もしマーケティングで市場を動かすのがそんな簡単なら、Pepsi<br>Coca-ColaやMcDonalds<br>BurgerKingが広告出すたびメチャクチャ変動してるはずだろ。でも実際は違うよね。" userName="jstummbillig" createdAt="2025/06/06 11:52:36" color="">}}




{{<matomeQuote body="Appleだって何十年も同じこと言われてたけど、今や3兆ドルの会社だぜ。ファンがいるのは悪くない。これは消費者向け製品だし、「リーダーとして見せている」かより、何億人もが普通に使うかが大事。OpenAIにはそれがあるんだよ。" userName="ketzo" createdAt="2025/06/05 21:16:55" color="#45d325">}}




{{<matomeQuote body="今んとこ画像生成はOpenAIが圧倒的に良いと思う。イラストとかマンガとか、家のプロジェクト用の写真編集とかね。" userName="jadbox" createdAt="2025/06/05 18:24:56" color="">}}




{{<matomeQuote body="評価見てGemini 25を即契約したけど、30分で解約＆返金。マジで一番怠惰でバカなLLMだわ。やるべきこと自分でやれって言うし、短い文書解析させたら全然関係ないネットの情報持ってくるし。ローカルの3B LLMですらこんなバカじゃなかったぞ。" userName="Oleksa_dr" createdAt="2025/06/05 21:59:08" color="#45d325">}}




{{<matomeQuote body="たとえAI競争で勝ってても、検索事業はAIに食われるだろうし、AIでちゃんと儲けられるかも競争が激しくて分からん。もちろん競争するしかないけど、GoogleはAI前みたいに独占してて、広告見てもらえてた状況の方が絶対良かっただろうな。" userName="energy123" createdAt="2025/06/05 18:40:35" color="#ff33a1">}}




{{<matomeQuote body="P/Eって売上じゃなくて利益のことだよね？" userName="eamag" createdAt="2025/06/05 18:18:04" color="">}}




{{<matomeQuote body="それって何か根拠あるの？Googleの利益は前と変わらず強いと思うけど。" userName="HDThoreaun" createdAt="2025/06/06 00:29:35" color="">}}




{{<matomeQuote body="うまい広告のおかげで、PepsiとかCoca-Cola、McDonald’s、Burger Kingみたいな名前はみんなよく知ってるよね。Siriもそう。Geminiもそれくらい有名な名前にするのは簡単そう。" userName="ComplexSystems" createdAt="2025/06/08 04:43:58" color="">}}




{{<matomeQuote body="ChatGPTってそんなにみんな定着してないと思うな。LLMは使うけど、宿題ヘルパーみたいな特化型LLMが人気だよ。市場はもうChatGPTから離れてる感じ。Google検索に組み込まれてるGeminiの方がOpenAIよりずっと使われてるはず。OpenAIの先行者利益は言われてるほど大きくないよ。" userName="potatolicious" createdAt="2025/06/05 22:34:26" color="#ff33a1">}}




{{<matomeQuote body="ソースはこれね。サム・アルトマンの話だと今年の夏頃に出るみたいだから、たとえ7月過ぎても数ヶ月以内には来るのはほぼ確実っぽいね。URL: https://www.reddit.com/r/singularity/comments/1l1fi7a/gpt5_i..." userName="orionsbelt" createdAt="2025/06/06 01:03:53" color="">}}




{{<matomeQuote body="歴史的に、新しい技術に合わせて変われなかった会社は失敗してきたよね。KodakとかBlockbuster、Blackberry、Intelみたいに。Googleが自分の儲け頭を壊してでもAIで勝とうとしてるのはすごいと思うよ。" userName="xmprt" createdAt="2025/06/05 20:48:31" color="">}}




{{<matomeQuote body="「たとえ3000億ドルの評価でも、ウォール街は売上の2倍で見たいだろうから、OpenAIに年間6000億ドルの売上を期待するって？」Googleですらそんなに売上ないよ。ちょっと適当な数字に聞こえるな。" userName="raincole" createdAt="2025/06/05 21:19:12" color="">}}




{{<matomeQuote body="それにオープンソースのFlux.1 Kontextはもうそれより優れてるって話だよ。" userName="bufferoverflow" createdAt="2025/06/06 01:44:44" color="">}}




{{<matomeQuote body="3000億ドルの評価額で売上高の2倍って見方なら、OpenAIは年間6000億ドルの売上が必要ってことか。公開時ね。あれ？これ分母と分子間違えてない？って思ったけど、言いたいことは分かったよ。" userName="PantaloonFlames" createdAt="2025/06/05 22:57:13" color="">}}




{{<matomeQuote body="Xeroxも昔は動詞になったんだぜ。" userName="lizardking" createdAt="2025/06/06 20:04:44" color="">}}




{{<matomeQuote body="同じモデルでプレビュー版が3つもあるだけでも混乱するのに、最後の日付が05-06と06-05ってさ。一日ずらせば良かったのにねw" userName="vthallam" createdAt="2025/06/05 16:57:19" color="">}}




{{<matomeQuote body="ああいう日付はどっちみち曖昧だから、13日まで待つべきだったかもね。カナダだとイギリス式とアメリカ式が混ざってマジで紛らわしいんだよ。y-m-d形式が法的な形式になってきて広まってるのは助かるけど。" userName="tomComb" createdAt="2025/06/05 17:14:00" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="13日まで待つ必要ないって。06-06はどっちの形式でも05-06の後じゃん。" userName="layer8" createdAt="2025/06/05 17:53:30" color="">}}




{{<matomeQuote body="06-06とか05-06って見ると、もう脳がパニック起こして考えるのやめちゃうんだよね。曖昧さで脳がフリーズするわ。" userName="Sammi" createdAt="2025/06/06 10:01:50" color="">}}




{{<matomeQuote body="最後の日付、05-06と06-05ってさ、OpenAIの4oとo4のモデル名をもろパロってるんでしょ。" userName="dist-epoch" createdAt="2025/06/05 17:38:34" color="#38d3d3">}}




{{<matomeQuote body="誰かを揶揄したいなら同じ過ち繰り返すなよ。余計アホに見えるだけだぞ。" userName="oezi" createdAt="2025/06/05 18:55:56" color="">}}




{{<matomeQuote body="ChatGPTですら、これよりマシな名前を提案すると思うよ！" userName="fragmede" createdAt="2025/06/05 18:52:35" color="">}}




{{<matomeQuote body="Gemini 2.5 proからいつになったら2.6 proになるんだろう？Gemini 3はもっと大きいモデルになるだろうね。" userName="UncleOxidant" createdAt="2025/06/05 18:56:54" color="">}}




{{<matomeQuote body="でも日付コードってどう解釈するかわかりにくいんだよね。05-06が6月5日なのか5月6日なのか、06-05も同じ。アメリカ式の日付フォーマットのせいでマジ混乱する。バージョン番号は少なくとも順番がわかるのに。" userName="atom058" createdAt="2025/06/11 19:46:26" color="">}}




{{<matomeQuote body="GeminiにはClaudeでは経験しない問題が2つあるんだ。<br>1. 変数名を勝手に変える（コンテキストとして渡してるだけなのに）。<br>2. たまに閉じ角カッコが抜けてる。<br>まぁ俺は「json」とか手抜き変数名使うダメ野郎だけど、クロージャとか関数内なら文脈でわかるし。フィードバックはありがたいけど、変更レビューが大変なんだよね（ノイズ多すぎて）。" userName="wiradikusuma" createdAt="2025/06/05 17:59:04" color="#ff5c5c">}}




{{<matomeQuote body="Geminiが間違える分かりやすい例を挙げるね。<br>こんなコード↓で、`processing_class=tokenizer`を`tokenizer=tokenizer`に変えちゃうんだ。パラメーター名変えたし、変更するなって全部大文字のコメント入れてもダメ。<br>`processing_class=tokenizer, # DO NOT CHANGE. THIS IS NOW THE CORRECT PROPERTY NAME`<br>この最新バージョンは試してないけど、05-06 proでも相変わらずだった。" userName="xtracto" createdAt="2025/06/05 19:39:28" color="#ff33a1">}}




{{<matomeQuote body="システムプロンプトで「コメントがある行は編集しない」って指示入れてる？俺もコードコメント無視されたことあるけど、そういう指示を追加したら効果あったよ。モデルによるだろうけどね。" userName="diggan" createdAt="2025/06/05 21:18:52" color="">}}




{{<matomeQuote body="誰も言わないけど、o1-proはGeminiと一緒にトップだと思う。でもGeminiはマジで使いにくい。コメントを大量に追加したり、関係ないコードを変えたりするから。<br>たまには価値あるけど、大体はアイデア探るのに使って、完璧なソリューションはo1-proに完璧なdiffテストとマージ込みで出してもらう感じかな。" userName="AaronAPU" createdAt="2025/06/05 22:40:43" color="#45d325">}}




{{<matomeQuote body="Geminiはマジで無意味なインラインコメント追加するの大好きだよね。「# Added this function」とか「# Changed this to fix the issue」とか。<br>いや、知ってるし！俺がそこにいたんだし！そういうのはコミットメッセージに書くもんだろ、プルリクでしか関係ないコメントとかいらねーんだよ。" userName="danielbln" createdAt="2025/06/05 18:48:00" color="">}}




{{<matomeQuote body="何かを削除してって頼んだ時に、本当は手放したくなくてコメントとして残すのウケるわ。`# Removed iterMod variable here because it is no longer needed.`<br>バージョン管理を信用しないで何でもコメントアウトするエンジニアとばっか一緒にいたみたいだな。<br>でも、 purely on vibesだけど、最近はClaude SonnetよりGemini 2.5 Proの方が気に入ってる。" userName="macNchz" createdAt="2025/06/05 20:25:02" color="">}}




{{<matomeQuote body="あと、人間が読むために丁寧に書いたコメントを消すのもマジで得意だよね。" userName="oezi" createdAt="2025/06/05 18:56:59" color="">}}




{{<matomeQuote body="まるで幼児と交渉してるみたいだ。<br>何も言わないと変なコメント増やすし、コメント消せと言うと全部消す。<br>戻せと言っても半分消して、残りは精度下がるように書き換えるんだ。" userName="sweetjuly" createdAt="2025/06/05 23:07:20" color="#785bff">}}




{{<matomeQuote body="コメントは多分ユーザーじゃなくてモデル自身のためだと思う。<br>詳細なコーディング版の方が、コメント少ない版より高性能でも全然驚かないね。" userName="Workaccount2" createdAt="2025/06/05 20:42:34" color="">}}




{{<matomeQuote body="でも、思考トークンにコメント全部置けるし、コンテキストウィンドウ内なら近さは関係ないから、効果あるかは懐疑的だな。" userName="xmprt" createdAt="2025/06/05 20:52:25" color="">}}




{{<matomeQuote body="過剰なコメントは、後でコード再編集する時にモデルの助けになるかもね。<br>バイブスコーディングに最適化してて、冗長なコメントが行や意図を強化する、って言われても驚かないな。" userName="vikramkr" createdAt="2025/06/06 14:01:24" color="">}}




{{<matomeQuote body="システム指示変えて、そうするのやめさせようとした？" userName="PantaloonFlames" createdAt="2025/06/05 23:01:55" color="">}}




{{<matomeQuote body="ChatGPTだと、特定の指示を100％無視する事があるんだけど、LLM全体に言える事なのかな？<br>例えば、大文字でemとかenダッシュ使うなって叫んでも、むしろ余計使うようになるんだ。<br>成功した事一度もないよ。" userName="93po" createdAt="2025/06/05 18:37:05" color="#ff33a1">}}




{{<matomeQuote body="学習データに遍在しすぎて、モデルに「これやるな」って言うのが本当に難しい事柄があるんだ。<br>コアな学習に深く根付いてるからね。<br>emダッシュはそういう物の一つらしい。" userName="creesch" createdAt="2025/06/05 18:57:27" color="#ff33a1">}}




{{<matomeQuote body="俺はemダッシュとかセミコロン使うなって言って、95％成功してるよ。" userName="EnPissant" createdAt="2025/06/06 08:16:11" color="">}}




{{<matomeQuote body="指示の中で文字の名前じゃなくて、文字そのものを使ってみるのが、これに役立つかもね。<br>例えば、「禁止文字リスト：【―，－】」とか、「出力に文字’―’や’－’を使うな」とか。" userName="tacotime" createdAt="2025/06/05 19:03:49" color="">}}




{{<matomeQuote body="ChatGPT PlusとGemini Pro両方金払ってるんだ。<br>ChatGPTのサブスクは、レート制限によく当たるからキャンセル考えてるよ。<br>一方、Gemini/AI Studioではまだ一度もレート制限に当たってないね。" userName="hu3" createdAt="2025/06/05 17:11:03" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
