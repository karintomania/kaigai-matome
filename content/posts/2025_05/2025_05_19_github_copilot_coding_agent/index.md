+++
date = '2025-05-19T00:00:00'
months = '2025/05'
draft = false
title = 'GitHub Copilot Coding Agentが登場 開発タスクはAIに任せられるか'
tags = ["AI", "プログラミング", "開発", "GitHub", "自動化"]
featureimage = 'thumbnails/orange2.jpg'
+++

> GitHub Copilot Coding Agentが登場 開発タスクはAIに任せられるか

引用元：[https://news.ycombinator.com/item?id=44031432](https://news.ycombinator.com/item?id=44031432)




{{<matomeQuote body="＞Copilotはテスト済みのコードベースで機能追加やバグ修正、テスト拡張、リファクタリング、ドキュメント改善みたいな低～中程度のタスクが得意なんだって。AIにどこまで任せるかの線引きが大事みたい。AIがテスト作ったコードベースだとダメかもね。Microsoftが社内でどれだけ使ってるか数字を出さないのが気になるな。hypeと実際の使いやすさの区別がマジ大変。" userName="taurath" createdAt="2025/05/19 16:56:06" color="#785bff">}}




{{<matomeQuote body="GitHubとMicrosoftで3ヶ月くらい社内で使ってたんだ。400人くらいのGitHub社員が300以上のリポジトリで使って、Copilotが出したPRが1000件近くマージされたんだよ。しかもこのagent自体を作ってるリポジトリでは、Copilotが5番目に貢献してるんだって！マジでCopilotでCopilot作ってるわけね（GitHubのPdMより）。" userName="timrogers" createdAt="2025/05/19 17:54:44" color="#785bff">}}




{{<matomeQuote body="一番楽しみなのは、開発者が好きな作業に集中できて、退屈なタスクが減ることかな。テスト書いたりドキュメント直したり依存関係更新したり、そういうのって多くの開発者が苦手だよね。AIがそれらを引き受けてくれて、もっと面白い難しい問題に取り組める世界になると思うんだ。" userName="timrogers" createdAt="2025/05/19 18:12:33" color="">}}




{{<matomeQuote body="＞we’ve merged almost 1,000 pull requests contributed by Copilot<br>Copilotが出したPRが1000件近くマージされたって話、じゃあマージされなかったり、人間が手直ししなきゃいけなかったりしたPRはどれくらいあるの？知りたいな。" userName="overfeed" createdAt="2025/05/19 18:42:40" color="">}}




{{<matomeQuote body="Microsoftの友達から聞いた話だと、これって経営陣からの強い指示みたいで、開発者側からじゃないらしいよ。Azureチームの知り合いは、社内AIコーディングアシスタントのインストール断ったらPIPになりそうになったって。マネージャーはみんな”AI使ってる開発者の数”をOKRにしてるけど、実際はインストールだけして全然使わないかたまに使う程度が多いみたい。C#とかPowerShellにはかなり使えないらしいしね。" userName="mjr00" createdAt="2025/05/19 20:07:21" color="#ff33a1">}}




{{<matomeQuote body="Microsoftのコードの20～30％くらいは何らかの形でAIが生成してるって記事見た気がするな [0]<br>いずれにしても、プログラミングにおけるAIって開発者の能力を何倍にもするみたいな使い方が一番良いと思うんだ。人間の創造性とか主体性とか考える力をAIが奪わない方が、AIにとっても人間にとっても一番良いよね。AIはタスクをこなす係で、大きな決定とか計画は人間がやるべき。<br>だから、プログラミングでのAI活用は、ずっと人間が主導権を持つべきだと思う。最終的には、儲けるためにガンガン機能を作るんじゃなくて、人間の能力を高めるために使うべきだよね。まあ、限界はあるけどさ。<br>[0] https://www.cnbc.com/2025/04/29/satya-nadella-says-as-much-a..." userName="twodave" createdAt="2025/05/19 17:06:06" color="#ff33a1">}}




{{<matomeQuote body="高品質なドキュメント書くのが好きな開発者はどうなんの？ほとんどのドキュメントがAIが作った”slop（手抜き）”になって、AIは力技で問題解決するようになるの？”tricky dependency updates”はできるけど”most interesting and complex problems”は無理ってラインまであとどれくらい？GitHub Copilot Coding Agentがちゃんと動くために必要な”well tested”コードベースのテストは誰が書くわけ？<br>結局、開発者の仕事って何になるの？チケット書いて、質低いPRレビューするの？それって一番退屈でつまんない仕事じゃん？" userName="petetnt" createdAt="2025/05/19 19:21:16" color="#38d3d3">}}




{{<matomeQuote body="テクニカルドキュメントを”AI Slop”って言うのは変だと思うな。丁寧に書かれた文章か、手抜きかって話じゃなくて、ドキュメントがあるか無いか、古いか新しいかの話なんだよ。個人的な経験だと、LLMってコードからドキュメント作るのめっちゃ得意だし、デザインの理由とか推測するのも上手い。LLM生成のテクニカルドキュメントには大賛成。ちゃんとした文章読みたいなら文学でも読めば？" userName="doug_durham" createdAt="2025/05/19 19:57:51" color="#45d325">}}




{{<matomeQuote body="退屈な仕事でお金もらってんだよ。金もらうの大好きだし。" userName="leptons" createdAt="2025/05/19 23:36:32" color="">}}




{{<matomeQuote body="Textbook Survivorship biasだね。記事で褒めてるCopilotの貢献（Bullet hole in that plane）だけ見て、AIのせいで朝から最悪だった人たち（Missing dots、whole missing planes）を見てないんだよ。" userName="sethammons" createdAt="2025/05/19 19:29:01" color="#785bff">}}




{{<matomeQuote body="でもさぁ、退屈なことやるよりInterestingでEnjoyingな仕事やってお金もらう方がいいでしょ？　;)　AgentみたいなCopilotがTediousなStuffをBurn downして、More time for the big value addsにしてくれるといいなってHopeしてるんだよ。" userName="timrogers" createdAt="2025/05/19 23:45:52" color="">}}




{{<matomeQuote body="”We need to get 1000 PRs merged from Copilot” ”But that’ll take more time” ”Doesn’t matter”<br>って感じ？" userName="literalAardvark" createdAt="2025/05/19 20:01:17" color="">}}




{{<matomeQuote body="2012年から2020年くらいにTechnological singularityがVery closeって言ってもNo one believed meなんだよね。CodingはJust the easiest to automate away into almost oblivion。これからOther sorts of knowledge work specialists including electrical and mechanical engineers, and probably doctors too. And, of course, office workにもGradually come for。Some iota of a specialistsはRemain to tune the bots、SomeはRemain in the fields to work with them for where ExpertiseはAbsolutely required、But widespread unemployment of what were options for potential upward mobility into middle classはBeing destroyed and replaced with nothing。There won’t be ”retraining” or handwaving other opportunities for the ”basket of labor”, but Competition of many uniquely, far overqualified people for ever dwindling opportunities。It is difficult to get a man to understand something when his salary depends upon his not understanding it. - Upton Sinclair" userName="burnt-resistor" createdAt="2025/05/19 21:25:06" color="#45d325">}}




{{<matomeQuote body="DocumentationはJust CodeをTextにTranslatingするだけじゃないんだよ。I don’t doubt that LLMs are wonderful at that: that’s what they understand。They don’t understand Users though, and that’s what separates a great documentation writer from someone who documents。" userName="petetnt" createdAt="2025/05/19 20:12:24" color="#38d3d3">}}




{{<matomeQuote body="”In the repo where we’re building the agent, the agent itself is actually the ＃５ contributor”<br>How does this align with Microsoft’s AI safety principals? What controls are in place to prevent Copilot from deciding that it could be more effective with less limitations?" userName="dsl" createdAt="2025/05/19 21:25:19" color="#ff5733">}}




{{<matomeQuote body="It’s not Survivorship bias。Survivorship bias would be if you made any conclusions from the 1000 merged PRs (eg. ”90% of all merged PRs did not get reverted”)。But simply stating the number of PRs is not that。" userName="n2d4" createdAt="2025/05/19 20:17:55" color="">}}




{{<matomeQuote body="Great technical documentation rarely gets written。　You can tell the LLM the audience they are targeting and it will do a reasonable job。 I truly appreciate technical writers, and hold great ones in special esteem。　We live in a world where the market doesn’t value this。" userName="doug_durham" createdAt="2025/05/19 20:16:04" color="">}}




{{<matomeQuote body="それって、コーディングしないシニアエグゼクティブがどこでも言ってることそのまんまだね。一方、エンジニアはコード補完とかGoogleの代わりとして使ってるだけ。大差ないように見えるよ。唯一変える習慣は、Stack Overflowの答えを信用するのと同じくらいAIソリューションを信用できるようになることくらいかな。SOの利点は、各コメントにタイムスタンプがあって、別の見方とか修正、注意点とかがコメント欄にあることだけどね。" userName="antihipocrat" createdAt="2025/05/19 21:20:47" color="#785bff">}}




{{<matomeQuote body="＞ 最近引用を見た気がするんだけど、MSのコードの20〜30%は何らかの方法で生成されてるって。[0]Googleも似たような感じ。MSは今、開発者にAIを使うのを義務付けてるんだって。" userName="DeepYogurt" createdAt="2025/05/19 18:40:33" color="">}}




{{<matomeQuote body="Copilotは開発者に割り当てられた作業だけをやるんだ。それに、エージェントが書くコードは全部プルリクエストを通らないとマージされないしね。実際、Copilotは自分のブランチにプッシュする以外、GitHubへの書き込みアクセス権は全然持ってないんだ。それによって、Copilotのコードは全部、独立した人間のレビューが必要な俺たちの普通のレビュープロセスを通るようになってるんだよ。" userName="timrogers" createdAt="2025/05/19 23:44:04" color="#ff5733">}}




{{<matomeQuote body="当時はすごく懐疑的だったのも無理はなかったと思うよ。一般的に、自動化はあまり考えなくていい反復作業をなくすだろうと思ってたんだ。で、プログラミングはほとんどその頂点にあると見られてた。知的に大変で、高レベルの正確さと厳密さが求められるってね。これがAIに特に適したことの一つになるなんて、誰が思っただろう（あなた以外ね）。この進歩が長期的には何を意味するのか分からないな。優秀なエンジニアは、どんどん複雑なコードを構築するX個のエージェントを管理することで1000倍も生産的になるのか（他のエージェントが絶えずテスト、デバッグ、リファクタリング、ドキュメント作成してくれる中で）、それとも、必要なコードの量に限度があるから、単純にエンジニアがずっと少なくなる世界に移行するのか。" userName="kenjackson" createdAt="2025/05/19 21:42:51" color="#ff5733">}}




{{<matomeQuote body="GithubとCopilotは別の製品だよ。使う必要はない。" userName="Cthulhu_" createdAt="2025/05/20 07:30:16" color="">}}




{{<matomeQuote body="＞ Copilotによって貢献された1,000件のプルリクエスト<br>このフレーズの内訳が知りたいな。 humanの作業とCopilotの作業量がどれくらいで、オートコンプリートなのかエージェントなのか。明確にされてないし、本当のデータというよりマーケティングの仕掛けみたいに見えるよ。" userName="mirkodrummer" createdAt="2025/05/19 22:48:20" color="">}}




{{<matomeQuote body="AIツールは全然ダメだって主張する人たちが大勢いるけど、そういう人たちが本当にツールが使えない特殊な分野にいるのか、ツールを学ぶ努力を怠ってるだけなのか、それとも単に現実を認められないだけなのか、俺には判断できないな。" userName="adamsb6" createdAt="2025/05/20 05:13:10" color="">}}




{{<matomeQuote body="GreenfieldでAI開発試した。生産性すごいけど、アーキテクチャの指示は必須（技術負債や抽象化破壊を防ぐため）。<br>コード品質の自己反省は期待できないが、具体的な指摘には対応する。<br>あと、一晩で＄15もかかって、トークンコストはかなり高い。" userName="Scene_Cast2" createdAt="2025/05/19 16:47:11" color="#785bff">}}




{{<matomeQuote body="＞一晩でトークン代＄15も吹っ飛んだ”って？<br>それってバグじゃなくて仕様だよ。<br>LLMはきっと、次の”OMG my AWS bill”みたいな現象になるね。" userName="candiddevmike" createdAt="2025/05/19 16:58:59" color="">}}




{{<matomeQuote body="Clineって、タスクのコストを分かりやすく表示してくれるんだ。<br>ちょっとした編集なら10セントくらい、重い作業は数ドルかかる。<br>ただ、思ってたより早く請求額が増えていくんだよね。" userName="Scene_Cast2" createdAt="2025/05/19 17:09:37" color="#45d325">}}




{{<matomeQuote body="＞「ちょっとした編集は10セント」についてだけど、稼ぐ開発者は「5分節約できたなら、10セントなんて安い」って言う。<br>それはそうだけど、大事な注意点がある：節約時間は、得た時間じゃない。<br>毎晩1,000時間「節約」しても、実際にその1,000時間は戻ってこないんだよ。" userName="eterm" createdAt="2025/05/19 18:29:29" color="">}}




{{<matomeQuote body="＞一晩でトークン代＄15も吹っ飛んだ”って？<br>Aiderっていうツール使うの考えてみたら？<br>／addとか／drop、／clearでコンテキストをしっかり管理すればいいよ。<br>https：／／aider．chat／" userName="BeetleB" createdAt="2025/05/19 17:20:18" color="#ff5733">}}




{{<matomeQuote body="俺はAiderを強く推す！これ使って「AIツールはダメ」って考えから「使い方が違う」って変わった。<br>Aider向けにコードにREADME書くと、人間にもAIにも役立つ。<br>作業時は関連READMEを読ませて効率アップ。<br>モデルはSonnet 3．7がコスパ最強。DeepSeekは安いけどエラーが多すぎる。" userName="gen220" createdAt="2025/05/19 22:25:04" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="一晩＄15って、高給取りのソフトエンジニアのコスト考えたら、めちゃくちゃお得に聞こえるな。" userName="shepherdjerred" createdAt="2025/05/19 20:59:05" color="">}}




{{<matomeQuote body="俺、greenfieldプロジェクトでAI使うの嫌いなんだ。<br>選択肢が多すぎて、なんかランダムにアプローチ変えたりするから。<br>既存コード（brownfield）なら、参照ファイルをAIに渡せるから、そっちの方が断然良い結果出やすいね。コードベースにAnchorできるから。" userName="SkyPuncher" createdAt="2025/05/19 20:01:17" color="#785bff">}}




{{<matomeQuote body="＞「毎晩1000時間”節約”できても、その1000時間が手に入るわけじゃない」ってどういう意味？<br>1000時間かかるタスクが1時間で終わったとしたら、999時間”節約”できたってことだろ。<br>＄5のものが＄4で買えたら＄1節約できたって言うのと同じじゃん。" userName="shepherdjerred" createdAt="2025/05/19 21:00:55" color="">}}




{{<matomeQuote body="LLMってアーキテクチャをちゃんとガイドしないと、技術的負債をめっちゃ増やすんだよね。たとえば抽象化をぶっ壊したり。<br>でも、Vibe codingならそんなの気にしないってことじゃない？どうせ人間が見ないし。<br>全部if/else一行でも、ファイル一つでもいいんだよ。もしそれが動いて、LLMがパフォーマンスやセキュリティを守りながら、新しい要件を実装・反復できるなら、コード構造とか品質とか可読性なんて全然どうでもいい。<br>お客さんはコード品質なんて気にしないし、ビジネスが昔気にしてたのは、新しいものを安く作って早く出すことで、もっと儲けるためだけだからね。" userName="akmarinov" createdAt="2025/05/20 03:58:49" color="#ff5c5c">}}




{{<matomeQuote body="金は永遠に湧き出ないよ。年間6,000ドルのコストがかかるね。" userName="ipaddr" createdAt="2025/05/19 23:14:16" color="">}}




{{<matomeQuote body="Greenfieldプロジェクトでのコツは、詳細な仕様と仮の実装計画をデザインするのを手伝わせること。<br>賢いラバーダックみたいにアイデアを壁打ちして、満足いくまでデザインを練るんだ。<br>そしたら、詳細な実装計画を別のモデルやセッションにステップごとに食わせる。<br>これはここで初めて読んだポピュラーなワークフロー（[1]見て）。<br>個人的にはこれがLLMの一番使える使い方だよ。ただ、仕様通りに正確に実装させるのがマジで難しくて、しょっちゅう自分で手綱を握って修正しないとだけどね。" userName="imiric" createdAt="2025/05/19 22:16:01" color="#ff5733">}}




{{<matomeQuote body="僕が言いたいのは、毎日1,000時間節約したとしても、実際に1,000時間増えるわけじゃないってこと。<br>結局使えるのは24時間だよ、どれだけ時間を節約してもね。<br>本当に重要なのは、提供される価値であって、どれだけ時間を節約したかじゃない。「時間節約」を理由にコストを正当化するのは、時間節約デバイスにお金を使い込むいい方法になっちゃうよ。" userName="eterm" createdAt="2025/05/19 22:21:43" color="#38d3d3">}}




{{<matomeQuote body="Gemini 2.5試した？もっと安くて、Aiderのリーダーボードでもっと点数高いよ。" userName="BeetleB" createdAt="2025/05/20 04:47:29" color="">}}




{{<matomeQuote body="FANGの新卒は福利厚生込みで年間20万〜25万ドルくらいかかるよ。" userName="shepherdjerred" createdAt="2025/05/20 01:27:15" color="">}}




{{<matomeQuote body="もし僕が「1000時間節約」したなら、それは41.666日に分配できるから、その期間中はどんなタスクも実行する必要がなくなるってことになるね、だって「1000時間節約」したから。<br>あるいは、41.666人のまるまる24時間一日を「1000時間節約」したことで救った、とか他の分割の仕方もできる。<br>「毎日1000時間節約」っていう君の説明は、文脈がないとマジで全然意味が通じないんだ。<br>そして、もし僕がこのコメントを書いてなかったら、くだらないコメントスレッドで1000時間節約してた自信があるよ。" userName="leptons" createdAt="2025/05/19 23:46:25" color="">}}




{{<matomeQuote body="僕のワークフローはこれだよ、さらに数ステップ進んでるよ：https://taoofmac.com/space/blog/2025/05/13/2230" userName="rcarmo" createdAt="2025/05/20 07:01:37" color="">}}




{{<matomeQuote body="いやいやー、俺はa-la-carte pricing（OpenRouter経由）で使ってるんだ．サブスクより断然いいよ．だって制限なし，使った分だけ払い，そして囲い込みも少ない（AnthropicとかGoogleとか簡単に変えられる）からね．" userName="Scene_Cast2" createdAt="2025/05/20 01:25:12" color="#ff5733">}}




{{<matomeQuote body="なんでREADMEとか作って，コードにコメントだけにしとかないの？" userName="mattlondon" createdAt="2025/05/20 05:25:01" color="">}}




{{<matomeQuote body="Hourly_rate ／ 12 ＝ 5min_rate<br><br>もしlight_edit_cost ＜ 5min_rate だったら savings＝true ってことだね" userName="grepfru_it" createdAt="2025/05/19 20:57:44" color="">}}




{{<matomeQuote body="＞Clineはタスクの進行中のコストをすごく分かりやすく表示するって言うけど，LLMは今，”バックグラウンドで勝手にやらせとけばいい”みたいな感じで位置づけられてるじゃん？<br>ってことは，誰もリアルタイムでコスト見てないってことだよね．<br>もしかしたらタスクごとにいくらまでって上限決められるかもしれないけど，ちゃんと見積もれる人なんてほとんどいないだろうな．" userName="PretzelPirate" createdAt="2025/05/19 17:26:47" color="#785bff">}}




{{<matomeQuote body="LLMにはアーキテクチャのガイドが超重要だよ．<br>そうしないと，LLM自身ですらメンテしたり拡張したりできないようなコード書いちゃうからね．" userName="FeepingCreature" createdAt="2025/05/20 11:23:54" color="#ff5733">}}




{{<matomeQuote body="ぜんぜんありえない話じゃないよ．<br>これはよくある意見で，特に基本的なCRUDアプリとかウェブサイトでは近い将来，当たり前になると思う．<br>Context windowsはまだ小さすぎるけど（人間並みになるには20mくらい必要だと思う），あっという間に実現するでしょ．<br>Engineersは基本的にはAIをガイドしたり，テストを確認したりする人になるんじゃないかな．" userName="mattlondon" createdAt="2025/05/20 05:23:44" color="#38d3d3">}}




{{<matomeQuote body="＞LLMにはアーキテクチャのガイドが超重要，そうしないとアーキテクチャの技術的負債を増やしちゃう<br>次のフェーズは（AI-driven？）”linters”が出てくることかな？<br>実装がアーキテクチャの定義と合ってるかチェックするやつ．" userName="falcor84" createdAt="2025/05/19 16:55:40" color="#ff5733">}}




{{<matomeQuote body="考えすぎだよ．昔のクーポン券みたいなもんだ．”1万ドル以上お得！”って言われても，それ節約するのにいくら使うんだ？90sの”50ドル節約！”ってマフラー修理CMを思い出すよ．テーマは”節約した50ドルで何をしよう？”で，みんな無料のお金みたいに喜んでた．でも，車に修理が必要かどうかは全然話されてなかった．AIのコスト削減効果も，本当にタスクが必要だったか考えないとね．" userName="jappgar" createdAt="2025/05/20 11:25:22" color="#45d325">}}




{{<matomeQuote body="READMEより良い方法があるよ．<br>これ見て→ <br>https://taoofmac.com/space/blog/2025/05/13/2230" userName="rcarmo" createdAt="2025/05/20 07:00:06" color="">}}




{{<matomeQuote body="これ良いフローだね！俺はfeatureごとにspecとtodoファイルを追加してるんだ。<br>これである程度設計とか技術的なことを先に決められるし、コンテキストがすごく長くなってもLLMが脱線しないんだ。[1] https://notes.jessmart.in/My+Writings/Pair+Programming+with+..." userName="jessmartin" createdAt="2025/05/20 14:24:17" color="#ff5c5c">}}




{{<matomeQuote body="モデルはもうコモディティ化してるんじゃないかな、もしなってないとしても。<br>乗り換えコストは結構小さいし、良い評価ができてるなら特にね。<br>それに、この分野で価値を提供できないならビジネスとして成り立たないよ。買う側はそんなバカじゃないから。" userName="philkuz" createdAt="2025/05/19 20:37:36" color="">}}




{{<matomeQuote body="最適化より機能追加ばっかで遅いのが嫌だ。Copilotは補完だけ速くて、100行の編集に数分かかることがある。<br>成功率も高くないのに時間かかるから非生産的。claude/chatgptにコピペした方が文字通り速い。<br>Copilot解約してローカルモデルに移行するかも。" userName="nodja" createdAt="2025/05/19 17:39:42" color="#ff5c5c">}}




{{<matomeQuote body="俺の経験だとだいたい逆だな。数百行ファイルの変更でも数秒しかかからないよ。<br>ただ、何ヶ月か前は君が言うようなエージェントの編集の遅さを経験したことはあるね。ボトルネックがどこだったのかは分からないけど、再発してないよ。<br>今図書館のWiFiにいるんだけど、顧客向けの新しいツールを”vibe coding”しながら（この言葉嫌いだけど）、Copilot使ってて、全然速いよ。" userName="brushfoot" createdAt="2025/05/19 18:06:53" color="#ff5733">}}




{{<matomeQuote body="これがSonnet 3.7だとどうなるかの動画だよ。<br>https://streamable.com/rqlr84<br>claudeとgeminiモデルは遅い傾向にあるね（flashも含めて）。<br>4oが一番速いけど、それでもイマイチだよ。" userName="nodja" createdAt="2025/05/19 18:50:20" color="#38d3d3">}}




{{<matomeQuote body="俺の場合、日によって速度は違うね（Sonnet 3.7）、でもここまで遅いのは見たことないな。" userName="NicuCalcea" createdAt="2025/05/19 20:13:13" color="">}}




{{<matomeQuote body="俺もこれ経験したわ。最後でスタックして終わらないんだよ。<br>従量課金になったらCursorを試すかも。<br>ローカルモデルは何使ってる？試したやつは補完がダメだったんだ。できればローカルオンリーにしたいんだけど。" userName="notsylver" createdAt="2025/05/20 06:07:29" color="#ff33a1">}}




{{<matomeQuote body="数分だって？それはなんかマジでおかしいよ。ほとんどのモデルなら数秒だよ。" userName="BeetleB" createdAt="2025/05/19 18:36:17" color="">}}




{{<matomeQuote body="178行のファイル編集で部分的な応答に2分27秒かかったよ（エラーで失敗したんだけど、claudeではよくあることだね、でもそれは別の問題か）。<br>https://streamable.com/rqlr84" userName="nodja" createdAt="2025/05/19 18:57:26" color="#45d325">}}




{{<matomeQuote body="俺もたまに数分かかるよ。Cursorはもっと速いね、あれは応答の解析処理のせいなんじゃないかな、UIにいつ表示するか決めるやつ。" userName="porridgeraisin" createdAt="2025/05/20 05:00:08" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="見たい人用にPRの例いくつか貼っとくね。<br>https://github.com/dotnet/runtime/pull/115733<br>https://github.com/dotnet/runtime/pull/115732<br>https://github.com/dotnet/runtime/pull/115762" userName="bencyoung" createdAt="2025/05/20 11:53:16" color="#ff5733">}}




{{<matomeQuote body="最初のPR（115733）見たら、こんなクソAIの面倒見なきゃいけないなら一週間で会社辞めるわ。PRの説明は長くてノイズだらけなのに中身なし。自信満々と思いきや、書いたコードはレビューで疑問視されるし、テストは回さないか失敗しまくり。直した！とか言ってもまた失敗。結局レビュアーが自分でコード読んで、手取り足取り直させる羽目になる。AI相手に同僚みたいに話しかけるとかマジ無理。これで開発者の代わりになるとか、効率化とか言われてもねえ。冗談でしょ？" userName="sensanaty" createdAt="2025/05/20 15:02:25" color="#45d325">}}




{{<matomeQuote body="いや〜、それマジ面白いね。特に問題点と症状どっちかって議論のとことか、自信満々なくせに何も分かってない感じ。OSSのメンテナーとしては、こんなやり取りに時間かけられる時だけ使うとか、どう線引きすりゃいいか悩むわ。" userName="acdha" createdAt="2025/05/20 12:05:10" color="#45d325">}}




{{<matomeQuote body="なんかさ、ジュニアの子がやりそうな修正にめっちゃ似てるよね。一番手っ取り早いやり方で表面だけ直すみたいな。" userName="bencyoung" createdAt="2025/05/20 12:14:03" color="">}}




{{<matomeQuote body="最初のPRはマジ酷いね。なんでテスト失敗したのをコメントで指摘されてから直すんだろ？意味分かんないんだけど。" userName="bearjaws" createdAt="2025/05/20 12:38:34" color="">}}




{{<matomeQuote body="あはは、最初の二つね… Stephenさんドンマイって感じ。" userName="yahoozoo" createdAt="2025/05/20 23:28:08" color="">}}




{{<matomeQuote body="使ってるモデルって何なんだろ？ ClineとかClaude Sonnet 3.7はめっちゃ使いやすいのに、Githubが出してるのはどれも微妙なんだよね。このPRもIDEで使った時の感じと一緒だわ。そういやさ、MSFTがVSCodeのClaude Sonnet 3.7になんかやった？ ClineとかAPIで直接使うのと比べて、去勢されたみたいに悪くなったんだけど。トークン節約とか？？" userName="replwoacause" createdAt="2025/05/20 14:04:45" color="#ff33a1">}}




{{<matomeQuote body="これ大げさじゃなく詐欺だよ。これ使うとプライベートリポジトリのコードで学習してるっぽいんだよね。だって”Pro”とか”Pro+”って宣伝してるのに、FAQにはこう書いてあるんだぜ。<br>＞ Does GitHub use Copilot Business or Enterprise data to train GitHub’s model?<br>＞ No. GitHub does not use either Copilot Business or Enterprise data to train its models.<br>つまり、有料の個人プランですら脳姦されてるってことだわ。" userName="bionhoward" createdAt="2025/05/19 22:17:26" color="#ff5733">}}




{{<matomeQuote body="それは昔の話かもね。今はもう違うみたいだよ。<br>https://docs.github.com/en/copilot/managing-copilot/managing..." userName="manmal" createdAt="2025/05/19 23:17:27" color="#ff33a1">}}




{{<matomeQuote body="GitHubにあるコード相手にCopilotを数日使ってみたんだけど、マジで役に立たないわ。やり取り2回くらいで文脈を維持できなくなるんだよ。<br>例えば、Cコード生成後、別の言語に変換と頼んだら「どのコードを変換したいか」とか「ファイルアップロードかリンク共有しろ」とか頓珍漢な返答。<br>俺の目的に対して全然違う方向（最低でも15度、たいてい90度近くズレてる）を指すんだよ。コードを要求すると、API呼び出しの半分以上はデタラメだし。正直、使い物にならない。" userName="jagged-chisel" createdAt="2025/05/20 01:38:20" color="#785bff">}}




{{<matomeQuote body="もっと手順を踏んで使えよ、魔法じゃないんだからさ。https://taoofmac.com/space/blog/2025/05/13/2230" userName="rcarmo" createdAt="2025/05/20 07:02:43" color="">}}




{{<matomeQuote body="俺のやり方なんて知るわけないだろ。それに、「お前が間違った使い方してる」みたいな考え方、生産性ねーんだよ。技術の方が俺たちに適応すべきで、俺たちが技術に合わせる必要はないだろ。<br>まあ、どっちみち俺に合ってる別のLLM使えばいいだけだし。" userName="jagged-chisel" createdAt="2025/05/20 15:59:55" color="">}}




{{<matomeQuote body="GitHub Copilotを結構使ってみたんだ。すごい部分もあるけど、怖いとも思った。一番重要なのは、大きいプロジェクトで使うときに、ランダムな小さいリポジトリから適当に依存関係を持ってくる傾向があること。しかも、よく正しいやつじゃないんだよね。使う人は気をつけてね。" userName="shwouchk" createdAt="2025/05/19 18:26:23" color="#38d3d3">}}




{{<matomeQuote body="＞ウェブデータを過度に信頼する<br>これ、他のAIでも気づいた傾向なんだよね。ウェブから読み取ったデータを異常なくらい信頼してるっぽいんだ。<br>例えば、フィッシングサイトかチェック頼んだら内容を要約するだけ、2つ星の中国リポジトリを業界標準として紹介されたり。<br>あと関係ないけど、暗号化に”Strobe”プロトコル勧められて、幻覚誘発サイト（https://strobe.cool）に飛ばされたりした。AIの情報源の評価って課題だわ。" userName="PhilipRoman" createdAt="2025/05/19 21:53:22" color="#ff5c5c">}}




{{<matomeQuote body="＞ウェブデータを過度に信頼する<br>LLMは俺たちが「信頼」と考えるようなもの持ってるとは思えないな。単に関連性で情報を「反芻」してるだけ。<br>ただ、多くの人間も情報検証をしっかりやる概念持ってないんだよ。発達理論や「個人的認識論」だと、大人の約50%は論理的に思考できないし、権威者の言うことだけを信じる「絶対主義的」な認識論の人が多い。<br>AIの振る舞いは、そういう人間側の「絶対主義的」な情報判断（評価せず関連性だけで判断）に似てる部分もあるかもね。" userName="avs733" createdAt="2025/05/20 03:39:03" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
