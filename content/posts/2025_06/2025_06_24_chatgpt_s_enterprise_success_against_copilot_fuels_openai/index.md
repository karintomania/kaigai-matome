+++
date = '2025-06-24T00:00:00'
months = '2025/06'
draft = false
title = '企業でまさかのCopilot不評！賢いChatGPTが選ばれてOpenAIとMSの覇権争いが激化'
tags = ["AI", "ChatGPT", "Copilot", "OpenAI", "Microsoft"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> 企業でまさかのCopilot不評！賢いChatGPTが選ばれてOpenAIとMSの覇権争いが激化

引用元：[https://news.ycombinator.com/item?id=44367638](https://news.ycombinator.com/item?id=44367638)




{{<matomeQuote body="会社のCopilot、他のLLMより全然ダメ！ffmpegコマンド頼んだら、謎のPythonコード実行しようとしてエラー。Pythonコードなんて出してないのに。<br>「Pythonコードを実行しました。でもファイルが見つかりません」だってさ。マジでひどい。" userName="hbn" createdAt="2025/06/24 20:32:40" color="">}}




{{<matomeQuote body="コメント2と同じプロンプトをCopilotで試したら、ちゃんとffmpegコマンドと説明が出たよ。<br>ffmpeg -i movie.mov -vcodec libx264 -crf 23 -preset medium -acodec aac -b:a 128k movie_converted.mp4<br>ちゃんと動くじゃん。" userName="NordSteve" createdAt="2025/06/24 21:38:52" color="#785bff">}}




{{<matomeQuote body="自分も何度も試したけど、いつもちゃんと応答来たよ。SlackでもAIダメって話聞くけど、リトライすればいいのに。悪い応答の原因は、長いセッションで過去の文脈に影響されたり、低品質モデルを選んだりしてるせいだと思う。AIは万能じゃないけど、使い方学べば役に立つよ。uselessって決めつけるのは違うね。" userName="Aurornis" createdAt="2025/06/25 01:56:50" color="#ff33a1">}}




{{<matomeQuote body="コメント2はどのモデル使ったの？無料のGPT-4.1で試したら一発でOKだったよ。<br>ffmpeg -i movie.mov -c:v libx264 -preset medium -crf 23 -c:a aac -b:a 128k movie.mp4<br>自分の場合、カスタム指示で思考プロセスを強制してるからかもね。" userName="hu3" createdAt="2025/06/24 21:02:26" color="#785bff">}}




{{<matomeQuote body="それってGitHub Copilotでしょ？Microsoft 365の「microsoft copilot」とは別物だよ。そっちはモデル選べないし。コメント2の人はたぶん、Officeとかに入ってる方の話だと思うな。" userName="easton" createdAt="2025/06/24 21:05:00" color="#ff5733">}}




{{<matomeQuote body="違う製品なのに同じ「Copilot」って名前つけるなんて、最低でも担当者は降格だろ。ユーザーの信頼をぶち壊してるよ。" userName="clvx" createdAt="2025/06/24 21:12:04" color="">}}




{{<matomeQuote body="AIモデルを自分で選ばせるUIは stupid だね。「どのくらいバカなAIがいい？」って言われてるみたい。「賢いと金かかる」「でもどれ選べばいいかわかんない」って。どの質問にどのAIが合うか、教えてくれるAIが欲しいよ。" userName="muppetman" createdAt="2025/06/25 04:34:31" color="#785bff">}}




{{<matomeQuote body="モデルの名前と説明も役に立たないよね。ChatGPTのモデル名も o4oとか o3とか o4-mini とか色々あって、「most tasksにいい」とか「advanced reasoning」とか言われても、どれをいつ使うべきか全然わからないよ。" userName="runako" createdAt="2025/06/25 13:30:46" color="">}}




{{<matomeQuote body="VSCodeのCopilot超いいわ。特にLLM選べるのが最高（俺はClaude Sonnet 3.7使ってる）。VSCode連携が神なんだよね。Claudeが賢いコード書いて、Copilotはそれを編集したり文脈読んだりする感じかな。俺にとってはその連携が一番の魅力。" userName="quantadev" createdAt="2025/06/24 21:04:57" color="#45d325">}}




{{<matomeQuote body="え、マジで？それヤバいね。俺はGemini 2.5 Flash/Proで試したら完璧にできたけど。最先端のモデルなら当たり前、なんならもっと簡単なモデルでもできるはずなのに。" userName="robots0only" createdAt="2025/06/24 21:00:29" color="#ff33a1">}}




{{<matomeQuote body="Microsoftはまたブランディングでやらかしたな。Copilotって聞くたびにGitHubのやつ？って思うんだけど、Microsoft Copilotもあって、WindowsとかOfficeとか色々な製品にまたがってるし、ウェブサイトもあるらしいし？一緒に書くイメージだったのに、なんで一般的なチャット/検索エンジンまでCopilotなの？マジで混乱するわ。" userName="cedws" createdAt="2025/06/24 23:53:35" color="#38d3d3">}}




{{<matomeQuote body="絶対、もっと明確な指示（プロンプト）だったらちゃんと答えたと思うね。みんなAIはGoogleみたいな「単語検索」じゃないって忘れがちだけど、あれはちゃんとした文章構造で聞かないと最高のパフォーマンス出ないんだよ。" userName="quantadev" createdAt="2025/06/24 21:07:18" color="#ff5733">}}




{{<matomeQuote body="これ、俺のCopilot環境（outlook.com用、M365基本、有料の30＄/月アドオン、VS Codeのやつ）どれでも記事の現象再現できないんだけど？全部「ffmpeg -i movie.mov -vcodec libx264 -crf 23 -preset medium -acodec aac -b:a 128k output.mp4」って正しいコマンド出すぞ。だってOpenAI 4o呼んでるだけなんだから当たり前じゃん。どうやったら記事みたいになるの？" userName="what-the-grump" createdAt="2025/06/24 21:36:16" color="#ff33a1">}}




{{<matomeQuote body="それは違うCopilotだよ。記事で言われてるのとは違って、もっと使いやすい方のやつ。" userName="KoolKat23" createdAt="2025/06/24 21:10:04" color="">}}




{{<matomeQuote body="だから俺「in VSCode」って言ったんだよ。この記事の人が何使ってるか知らんけど、問題はCopilot自体じゃなくて、使ってるLLMがダメか、その人の指示（プロンプト）が悪かったかのどっちかだろうね、ほぼ確実に。" userName="quantadev" createdAt="2025/06/24 22:53:45" color="">}}




{{<matomeQuote body="たぶん、Microsoft CopilotとMicrosoft365 Copilotを勘違いしてない？前者はMicrosoft Copilot Studioにアクセスできないけど、Microsoft Copilot Proならできるかもしれないよ。" userName="thedougd" createdAt="2025/06/25 00:07:48" color="#ff5733">}}




{{<matomeQuote body="Microsoft Officeって、これまでで一番認知されてて価値のあるブランドの一つだったのに。マーケティング超苦手な俺ですら、今回のリブランドがどれだけバカげてるか分かるわ。" userName="9cb14c1ec0" createdAt="2025/06/25 01:05:06" color="">}}




{{<matomeQuote body="本番で使う前に、いくつか自分で例を試してみて、ちゃんとタスクで動くかパフォーマンス確認できないもんかな？" userName="dataflow" createdAt="2025/06/25 13:38:11" color="">}}




{{<matomeQuote body="LLMの面白いところは、体験談をすぐに再現したり、他の人の結果と比べたりできることだね。<br>カスタマーサポートとかの嫌な経験は、話し方の癖とかで味付けされちゃうけど、誰にも確認されないからそうなるんだ。<br>同じ話し方でLLMに話しかけると、LLMがしたことと人が説明することの違いが分かるか、同じLLMなのに人によって扱いが違うことが分かるか…どっちも面白い結果だと思うよ。" userName="glenstein" createdAt="2025/06/24 22:01:21" color="#785bff">}}




{{<matomeQuote body="意図的にプロンプトの一部を省略して、LLMにもっと自由に考えさせた方が良い結果になることがあるんだ。" userName="Kiro" createdAt="2025/06/25 14:09:50" color="">}}




{{<matomeQuote body="＞before committing to any for production<br>ChatGPTってWebとかデスクトップアプリで使うものなのに、「production」ってどういう意味なんだろう？" userName="runako" createdAt="2025/06/25 14:40:23" color="">}}




{{<matomeQuote body="うちのMS Shopでも同じだよ。<br>画像を綺麗なPPTXスライドにしてって頼んだら、MS製品だしPowerPointの機能は得意だろうって素朴に期待してたんだ。<br>そしたら、スライド一枚に書式なしのテキストボックスが一つ表示されただけ。オフィスのみんなに気付かれるくらい大爆笑しちゃったよ。" userName="baxtr" createdAt="2025/06/25 05:21:44" color="#785bff">}}




{{<matomeQuote body="プロンプトが分かりにくいと、絶対アウトプットは悪くなるよ。LLMがプロンプトの意味を「推測」するのに無駄な計算を使っちゃって、肝心の問題解決に使われるはずだった計算が無駄になるんだ。<br>「dog park game run fun time」みたいに意味不明なプロンプトから面白い結果が出ることはあるけど、何か実際の問題に最適な答えを求めてるなら、明確さが一番だよ。何をしてるか、どうやって、なんでそうするのか、情報が多いほど結果は良くなるんだ。" userName="quantadev" createdAt="2025/06/25 14:54:38" color="#38d3d3">}}




{{<matomeQuote body="自分のタスクを説明して、どのモデルを使うべきかChatGPTに聞いてみたら？" userName="tzs" createdAt="2025/06/25 15:49:08" color="">}}




{{<matomeQuote body="それはMicrosoftの用語で「copilot」がchatbotとかLLM agent全般を指すからだよ。<br>M365のサブスクリプションでCopilotを使えるようになるし、Copilot Studioで「コパイロット」を作れるんだ。" userName="wodenokoto" createdAt="2025/06/25 03:50:29" color="">}}




{{<matomeQuote body="あなたの全く同じプロンプトをCopilotに入れてみたら、ffmpegコマンド「ffmpeg -i movie.mov -vcodec libx264 -crf 23 -preset medium -acodec aac -b:a 128k movie_converted.mp4」が出てきたよ。<br>このオプションを選んだ結構詳細で分かりやすい理由も一緒にね。" userName="vel0city" createdAt="2025/06/24 22:15:55" color="#ff5733">}}




{{<matomeQuote body="それには同意しないな。明確さを欠いた方が、LLMがより得意な方法を自由に選んで利用できるんだ。必要じゃない制限を人工的に設けなくて済むからね。" userName="Kiro" createdAt="2025/06/25 15:06:47" color="">}}




{{<matomeQuote body="「ツールが全く役に立たないっていう endless な主張にうんざり」って誰がここでそんなこと言った？ Copilot が claude や ChatGPT よりおバカだって主張は読んだし、俺もそう思う。<br>「Copilot が色々な モデル に対応してて、良いのを使うには頑張らないといけないって分かってないんだ」って言うけど、そんなこと知るためにわざわざ頑張らなかった俺たちが悪いのか？ でもそれって結局 Microsoft がツールを使いにくくしてるってことだろ。" userName="lukan" createdAt="2025/06/25 10:42:04" color="#ff33a1">}}




{{<matomeQuote body="Microsoft はチャンスを無駄にしたね。 ChatGPT が出た頃は Open AI への投資で サティア と Microsoft は visionary って見られてたのに、Microsoft は立ち止まってて競合に追いつかれた。 ChatGPT との連携もひどい結果だったし、Bing も AI を活かせなかった。 Copilot も期待外れ。 Claude.ai や Gemini 2.0 に ChatGPT が追いつかれたり超えられたりしてるのに、Microsoft はまだ自社 モデル を持ってないんだぜ。" userName="breadwinner" createdAt="2025/06/24 20:23:32" color="#38d3d3">}}




{{<matomeQuote body="あと、Google Search の AI 連携はかなり良いよ。 Google Search の規模であれだけうまくいくのは正直驚き。最近は検索の半分くらいは Google AI の回答で十分だから、検索結果をクリックしなくなった。" userName="vbezhenar" createdAt="2025/06/24 21:46:50" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もしかしたら南 テキサス の Google AI は違うのかもだけど、俺が見る Google Search の AI 結果は笑えるくらいひどいよ。 コマンド に適当な タグ つけたり、存在しない関数すすめたり、操作手順間違えたり、一番のお気に入りは C の コード 例なのに Visual Basic のを出してきたこと。" userName="asciimov" createdAt="2025/06/24 22:19:16" color="">}}




{{<matomeQuote body="Microsoft の最大の問題はその UX だよ。どこで製品を使うか見つけるとこから、サインイン、大量の ポップアップ 、同意画面、動かない リダイレクト 、リンク切れまで、とにかくひどい。古い UI 要素と、ユーザーの意図を全く理解してないマーケティングページばっかり。こんなごちゃ混ぜじゃ、レガシー のない有能な スタートアップ には一生勝てない。外部向けの ウェブサイト は全部消してやり直すべき。" userName="spiderfarmer" createdAt="2025/06/24 20:33:17" color="#38d3d3">}}




{{<matomeQuote body="どこが失敗したって？ Microsoft は Open AI の利益の49%を手に入れるんだぜ。だから Open AI が勝てば、Microsoft も勝つんだよ。" userName="dyauspitr" createdAt="2025/06/24 21:32:01" color="">}}




{{<matomeQuote body="それは Microsoft がソフトウェア会社じゃなくて投資会社だと考えたらの勝利だろ。" userName="flowerlad" createdAt="2025/06/24 22:19:29" color="">}}




{{<matomeQuote body=" Google Gemini と ChatGPT は半々くらいかな。良い結果があれば Gemini も要約できるけど、ないと適当になる。 ChatGPT の方が全体的にはるかに良いよ。" userName="cpncrunch" createdAt="2025/06/24 23:29:38" color="">}}




{{<matomeQuote body="色々と失敗してるって言われても、Microsoft はまだ Open AI に対して優位性を持ってるよ。 Open AI の IP にアクセスできるし、収益の20%も手にしてるんだから。" userName="crowcroft" createdAt="2025/06/24 21:06:38" color="">}}




{{<matomeQuote body="彼らって実はソフトウェアにはちょっと興味あるだけの投資会社じゃないの？" userName="mangamadaiyan" createdAt="2025/06/24 23:03:11" color="">}}




{{<matomeQuote body="20年前のBill Gatesも同じ意見だったんだよね:-) このメール、何度読んでも面白いよ<br>https://www.osnews.com/story/19921/full-text-an-epic-bill-ga…" userName="atonse" createdAt="2025/06/24 20:39:31" color="">}}




{{<matomeQuote body="ChatGPTは良いけど、今はGoogleがあらゆる画面を抑えてる（今のところね）。この規模の巨人同士のDog Pile対Yahooみたいな戦いは見たことないな。GoogleがChatGPTに追いつくか（たぶん追いつく）、単にあちこちにいるからデフォルトで勝つか（これもたぶんね）見ものだよ。正直、ChatGPTが勝ったらかなりすごいことだと思う。" userName="echelon" createdAt="2025/06/25 00:25:44" color="#38d3d3">}}




{{<matomeQuote body="それには独禁法のキャノンをぶっ放すしかないね。Altmanは絶対にこれを仕掛けてくるだろうな。" userName="echelon" createdAt="2025/06/24 23:39:03" color="">}}




{{<matomeQuote body="Copilotを誰かが褒めてるなんて初めて聞いたよ…結果はたいてい完全に間違ってるか、使い物にならないんだ。" userName="alfalfasprout" createdAt="2025/06/24 22:45:46" color="">}}




{{<matomeQuote body="みんなそれにすごく個人的な愛着を持ってるみたいだね。チャット履歴全部が文脈になってて、自分のことを個人的に知って意見を持ってるみたいに振る舞ってる。社交的なやり取りをそれに置き換えてるんだよ。そこまでハマってる人が簡単に新しいのに乗り換えるとは思えないね。" userName="reilly3000" createdAt="2025/06/25 04:58:10" color="#ff33a1">}}




{{<matomeQuote body="それほど多くのユーザーじゃないと思うよ。ほとんどの人は検索エンジンみたいに生産性を上げるツールとして使ってるんじゃない？" userName="rwyinuse" createdAt="2025/06/25 07:49:27" color="">}}




{{<matomeQuote body="（メインのSRPにある）AI Overviewsは当たり外れが大きいね。新しい”AI Mode”（別のタブ）はすごく良いよ。" userName="gundmc" createdAt="2025/06/25 04:54:57" color="">}}




{{<matomeQuote body="多くの人はたぶん正しいと思い込んでるだけだよ。" userName="redwood" createdAt="2025/06/24 23:36:07" color="">}}




{{<matomeQuote body="MicrosoftのUXや、製品からフレームワーク、サービスまでの命名規則、製品を突然終了すること、ユーザーへの敵対心とか、全部問題の根本は別のところにあるって示してるね。Microsoftはもう改善できないと思う。ただの大きすぎるせいで浮いてる、脳死したゴジラゾンビみたいにダラダラ続くだけの巨大組織だよ。" userName="tartoran" createdAt="2025/06/24 21:15:05" color="#ff5c5c">}}




{{<matomeQuote body="なんでそんなにゆっくりなんだろう？<br>あとタイプミスかな<br>ProclarityじゃなくてPerplexityのこと？" userName="Barbing" createdAt="2025/06/25 00:35:41" color="">}}




{{<matomeQuote body="彼らの決算報告書を読んだ方がいいんじゃない？<br>年間2500億ドルの収益は「ソフトウェアにちょっと興味があるだけ」じゃ稼げないよ" userName="prng2021" createdAt="2025/06/25 02:06:26" color="">}}




{{<matomeQuote body="反トラスト法（独占禁止法）のケースって、どんな簡単な説明になるか教えてくれる？" userName="creddit" createdAt="2025/06/25 03:32:50" color="">}}




{{<matomeQuote body="MicrosoftはInflection AIの悪名高い人を雇って、実際は良かったBing Chat担当者をクビにしたんだ<br>それから全て下り坂だよ<br>Bing Chatは本当にGoogleを焦らせたのに！" userName="sunaookami" createdAt="2025/06/25 04:22:16" color="#785bff">}}




{{<matomeQuote body="どうなるか見たいね<br>合意して資金を受け取っておいて、もっと良いDealが出てきたらひっくり返そうとするなんて、かなり馬鹿げた状況だよ" userName="crowcroft" createdAt="2025/06/24 23:55:32" color="#45d325">}}




{{<matomeQuote body="多分そうだけど、関係ないかもね<br>品質で競う必要はないんだ<br>TeamsがSlackより劣っててもバンドルで企業に売ったように、Suiteをまとめて売るシンプルさだけでいいんだよ<br>彼らの強みっていつもSalesとDistributionじゃない？<br>今回は違うのかな、わかんないけど" userName="jamil7" createdAt="2025/06/25 08:40:46" color="#ff5c5c">}}




{{<matomeQuote body="同意<br>間違いの答えをたくさん見てるから、Google検索結果のトップにAIの答えを置くのは積極的に有害だと思う" userName="bentcorner" createdAt="2025/06/25 00:58:40" color="#ff5733">}}




{{<matomeQuote body="問題はね、彼らがCopilotを様々なO365のコントロールと連携させるために、すごく時間のかかる投資をしたことだよ<br>それなのに、全てにCopilotをベタベタ塗って皆を混乱させたんだ" userName="Spooky23" createdAt="2025/06/24 22:10:01" color="#ff5733">}}




{{<matomeQuote body="俺もそんな感じする :/ <br>『データ』についての変なプレゼンが多すぎるんだ<br>空を紫って言ってるのに皆頷いて、OKして、プロモしまくりだよ" userName="AppleBananaPie" createdAt="2025/06/24 21:36:56" color="">}}




{{<matomeQuote body="「”You have been a bad user, I have been a good Bing”ってBingのこと、まだ覚えてるよ。当時は個性があるチャットを見るのが新鮮だったな。" userName="anaxag0ras" createdAt="2025/06/25 08:07:09" color="">}}




{{<matomeQuote body="パブリックサイトだけじゃないよ。<br>Azureもかなり不安定だし、最近のUIプレビューは全部改悪で、すぐに元に戻してる。<br>どの製品も強制的にフォントと空白をランダムにしてるみたい。<br>サポートが必要なグリッチにも遭遇したし、もっとUXを明確にすれば防げたはずだよ。<br>AzureのCopilotなんて、もし動いてても全然役に立たないね。" userName="nisa" createdAt="2025/06/25 02:16:01" color="#ff33a1">}}




{{<matomeQuote body="Copilotは腐敗してるし、Microsoftを潰してるよ。<br>製品名全部Copilotにするのは意味不明だし、ブランドが混乱するだけ。<br>365やAzureテナント全部にアクセスできるとか、セキュリティの悪夢が待ってるよ（実際、脆弱性も見つかってパッチ当てられたでしょ）。<br>足かせ多すぎて、機能的には無意味。<br>メール編集頼んでも、元のテキストそのまま返すことなんてしょっちゅう。<br>唯一の利点は、データ使用に関する規約が超クリアなことだけ。<br>本当かは知らんけど、企業はそれだけで導入するよ。「IBMを選んでクビになった奴はいない」みたいなもんね。" userName="protocolture" createdAt="2025/06/24 22:42:42" color="#ff5c5c">}}




{{<matomeQuote body="典型的な大手ベンダーのやり方だね。「良いか」じゃなくて、「買っても安全か」なんだよ。" userName="HexPhantom" createdAt="2025/06/25 07:52:23" color="#ff5733">}}




{{<matomeQuote body="製品名全部Copilotっていうのは、昔のIBM Watsonを思い出すね。" userName="petesergeant" createdAt="2025/06/25 02:33:17" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Microsoftを潰すには、それだけじゃ足りないよ。<br>ブランドの混乱は、MicrosoftのDNAに刻まれてるからね。" userName="dgellow" createdAt="2025/06/25 09:14:40" color="">}}




{{<matomeQuote body="確かにね。外からじゃなくて、「内側から食い尽くす」って意味で言ってるんだよ、「墓石にこれが書かれる」って意味じゃないんだ。" userName="protocolture" createdAt="2025/06/25 09:36:31" color="">}}




{{<matomeQuote body="Copilotの最大の問題はモデル自体じゃなくて、名前の付け方じゃないかな。全然違う複数の製品に同じ名前を使ってて、ユーザーはめっちゃ混乱してるよ。GitHub Copilotだと思ってたらM365 Copilotだったとか、モデルも選べないし。Microsoftはマジでこれを明確にしないとね。" userName="Zaylan" createdAt="2025/06/25 08:43:16" color="#ff33a1">}}




{{<matomeQuote body="君はたぶん、伝統的な大企業や組織の意思決定者としての顧客じゃないんだろうね。MSはわざと分かりにくくしてるんだよ。そうすれば営業資料で「これを買えばこれらのCopilot全部手に入って、Fortune 1000企業もAI対応ばっちり」って言えるからさ。彼らが言わないのは、全てのCopilotが同じじゃないってこと。" userName="antupis" createdAt="2025/06/25 09:09:06" color="#785bff">}}




{{<matomeQuote body="これはIBM Watsonでもすごくうまくいったやり方だね。" userName="LiamPowell" createdAt="2025/06/25 09:57:37" color="">}}




{{<matomeQuote body="”IBMを買ってクビになったやつはいない”なんて君のおじいちゃんが言ってたセリフだよ。IBMにはもう通用しないことでも、Oracleみたいなセールス主導の他の巨大テック企業には今でも確実に通用するね。" userName="echelon" createdAt="2025/06/25 12:42:46" color="">}}




{{<matomeQuote body="それは良い点だね。そして会社の「平民」な僕らは、劣ったツールで仕事させられてるわけだ。”いや、家にはCopilotがあるだろ子供たち”っていうミームをここに挿入してくれ。" userName="KoolKat23" createdAt="2025/06/25 09:13:28" color="">}}




{{<matomeQuote body="どういうわけか、CopilotはOpenAIが動かしてるって印象があったんだ。たぶんMicrosoftとOpenAIの提携のせいかな。OpenAIとMicrosoftにライバル関係があるなんて知らなかったよ。MicrosoftがOpenAIにたくさん投資してて、ChatGPTはAzure上で動いてるか、少なくともAzure経由で提供されてるって印象だったから。" userName="mrweasel" createdAt="2025/06/25 12:59:02" color="#785bff">}}




{{<matomeQuote body="CopilotはMicrosoftがホストしてるOpenAIのモデルで動いてるよ。もしCopilotに聞いたら、「私はOpenAIが開発した大規模言語モデルであるGPT-4をベースにしています。具体的には、Microsoft Copilotとチャットしています。これはGPT-4にウェブブラウジング、画像理解、コード実行のような追加ツールや機能を統合して、幅広いタスクを助けるものです。」って答えるよ。OpenAIのモデルはAzure経由でも使えるよ。" userName="AlanYx" createdAt="2025/06/25 14:32:58" color="#785bff">}}




{{<matomeQuote body="＞Microsoftはマジでこれを明確にしないとね。LOL。何でもかんでも意味不明な.NETっていう接尾辞をつけてた会社の話だよ？" userName="meindnoch" createdAt="2025/06/25 08:58:39" color="">}}




{{<matomeQuote body="あと、Officeもほぼ毎年名前変えてるから、今なんて呼ばれてるのかもよく分かんないよ、Microsoft Lifeか何かかな。Office（とoffice.com）は完全に使えるのに、名前を変え続けるのはすごく変だよね。" userName="prepend" createdAt="2025/06/25 10:22:26" color="#ff33a1">}}




{{<matomeQuote body="Copilot使ったことある？マジでカスだよ。<br>GPT-3より役立たないと思う。" userName="aydyn" createdAt="2025/06/25 09:38:49" color="">}}




{{<matomeQuote body="いろんなLLMツール使ってるけど、MS Copilotだけは全然役に立たないんだよ。<br>ChatGPTと同じモデル使ってんのに、なんでこんなカスができるんだ？<br>MicrosoftのだとGitHub Copilotだけは使えるけど、Wordとかでも役立つといいのにね、うまくいかないんだわ。" userName="pseudosavant" createdAt="2025/06/25 17:52:46" color="#ff5c5c">}}




{{<matomeQuote body="人によるけど、GitHubでプルリクの下書きに使うのは役立ったよ。<br>エラー行を見つけるみたいな面倒な作業全部やってくれた。<br>難しい問題じゃないけど、自分でやるより本読んでる方がマシだからね。" userName="setgree" createdAt="2025/06/25 18:27:24" color="">}}




{{<matomeQuote body="結局、デカい会社はマジで役立つもん作れないって結論。<br>例外もあるだろうけど、99%そう感じるわ。<br>せいぜい他の会社買って、うまくいくのを祈るだけ。" userName="thinkingtoilet" createdAt="2025/06/25 18:26:39" color="">}}




{{<matomeQuote body="Microsoftには圧倒的なアドバンテージがあったのに、Windows Mobileみたいに大失敗したな。<br>Bingアプリに突っ込んでUI最悪だし、有料化でチャンス逃してる。<br>データの活用も停滞して最大の機会を逃した。<br>Microsoftの製品管理の失敗を改めて見せつけられたわ。" userName="thiagoperes" createdAt="2025/06/24 21:17:07" color="#785bff">}}




{{<matomeQuote body="まだ終わってないさ。<br>Microsoftは最高のセカンドムーバーで、他社が先に出したアイデアで儲けるのがうまい。<br>クラウドも遅れて参入したのにビッグプレイヤーになったし（2025年に約25%シェア）。<br>モバイルは失敗したけど、AIゲームにはまだいると思うよ。<br>個人的にはGoogleとかAnthropic、OpenAIのモデルが好きだけどね。" userName="throw-qqqqq" createdAt="2025/06/25 11:52:03" color="#ff33a1">}}




{{<matomeQuote body="正直言って、Microsoftは巨大で反競争的な会社だから、競合製品を作る必要すらないんだよ。<br>他のどうでもいいサービスとセットで提供されるから、顧客は他の選択肢を評価すらしない。" userName="bearjaws" createdAt="2025/06/25 12:32:51" color="">}}




{{<matomeQuote body="Microsoftの問題は、まだ「製品」を作ってるってこと。<br>Metaは年間700億ドルも純利益出してるのに、たいして何も作ってないし経費も最小限だ。" userName="Hilift" createdAt="2025/06/25 12:30:57" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
