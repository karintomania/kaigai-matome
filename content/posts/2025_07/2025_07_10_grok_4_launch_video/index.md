+++
date = '2025-07-10T00:00:00'
months = '2025/07'
draft = false
title = 'Grok 4ついに公開！驚異の性能でAI界のSOTAに君臨か？[動画あり]'
tags = ["AI", "Grok", "LLM", "SOTA", "機械学習"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> Grok 4ついに公開！驚異の性能でAI界のSOTAに君臨か？[動画あり]

引用元：[https://news.ycombinator.com/item?id=44517055](https://news.ycombinator.com/item?id=44517055)




{{<matomeQuote body="Grok 4がHumanity’s Last Exam、GPQA、AIME25、HMMT25、USAMO 2025、LiveCodeBench、ARC-AGI 1と2で、o3、Gemini、Claudeよりめちゃくちゃ良いスコア出してSOTAモデルになったみたいだね。数週間後にはコーディング特化モデルが出るらしいけど、今日の発表ではコーディング性能にはあまり触れてなかったのが気になるな。" userName="modeless" createdAt="2025/07/10 04:58:28" color="#ff5733">}}




{{<matomeQuote body="同感だね。野球のWSCシミュレーションで変な「推論の匂い」がしたんだよね。Polymarketから数値を引っ張ってきて、自分の推論みたいに出してた気がする。でも全体的な改善はマジでデカいよ。ベンチマーク汚染がなければ、これ毎日使うモデルになるんじゃないかな。コーディングに関しては、256kコンテキストが唯一の残念な点。v7ではもっと長くなることを期待してるよ。試すのが楽しみだね。" userName="vessenes" createdAt="2025/07/10 11:07:19" color="#ff5c5c">}}




{{<matomeQuote body="Grok 4が他のLLMを上回ったのは、単純にGPUを大量に使ったからか（彼らならそう考えられる）、それかベンチマーク汚染のどっちかだと賭けるよ。彼らのエンジニアリングチームが他のLLMの訓練で使われた技術より良いものを開発したとは思えないし、イーロン・マスクには騙すような発表をする過去があるからね。" userName="dbagr" createdAt="2025/07/10 13:18:11" color="">}}




{{<matomeQuote body="Grok 4がARC-AGI-2で新しいSOTAを達成して、これまでの商業SOTAのほぼ2倍になったこと、どう説明するんだ？<br>https://x.com/arcprize/status/1943168950763950555" userName="z7" createdAt="2025/07/10 14:17:09" color="#ff5733">}}




{{<matomeQuote body="ベンチマークに特化してモデルを訓練した可能性もまだあるね。例えば、ARCスタイルの問題例を増やして訓練するとか。以前のGrokを試した時、ベンチマーク上は良かったけど、実際に使うとSonnetやGeminiよりいつも応答が悪かったんだ。Grokが日常使いになるか時々試すけど、ClaudeやGeminiより良い答えが出たことはないな、マーケティングがどう見せてもね。" userName="saberience" createdAt="2025/07/10 14:56:53" color="">}}




{{<matomeQuote body="コーディングモデルがコーディングエージェントで使えるようになってほしいな。まだどこでも見かけないんだよね。" userName="esafak" createdAt="2025/07/10 05:04:14" color="">}}




{{<matomeQuote body="Grok 4はもうCursorで使えるようになってるよ。" userName="vincent_s" createdAt="2025/07/10 08:34:19" color="">}}




{{<matomeQuote body="「ベンチマークに特化して訓練した可能性」っていう話だけど、ARC-AGIの考え方は、利用可能なARCベンチマークで訓練しても汎化しないってことなんだ。もし汎化するなら、それはもう「ミッション達成」ってことになるね。" userName="CamperBob2" createdAt="2025/07/10 21:24:12" color="">}}




{{<matomeQuote body="「Seems like it is indeed the new SOTA model, with significantly better scores than o3」についてだけど、モデルの検閲がスコアを大幅に低下させることは前から証明されてるんだよね。Grok 3は人類の最悪の部分にアクセスできるのに、進歩的な見解に日常的に同意してたから気になるな。" userName="zamalek" createdAt="2025/07/10 17:30:58" color="">}}




{{<matomeQuote body="ARCスタイルのデータセットを作るのに労力を費やして、テストをゲームすることもまだ可能だと思うな。俺が見たARCの質問は、全く未知のトピックじゃなくて、よく知られた領域にある既存の問題の難しいバージョンだったし。この分野にそんなに詳しいわけじゃないから、間違ってたら教えてほしいけどね。" userName="nwienert" createdAt="2025/07/10 22:50:00" color="">}}




{{<matomeQuote body="Grok 3が”進歩的”な見解に合わせるから”検閲されてる”って言いたいの？" userName="fdsjgfklsfd" createdAt="2025/07/10 20:07:19" color="">}}




{{<matomeQuote body="ARC-AGIは質問や知識ベースじゃないけど、”パターンを推論して、見たことない新しい例に適用する”テストなんだ。問題は人間には楽勝だけど、MLモデルには激ムズで、次世代のCAPCHTAみたいなもんだね。<br>当初は、このテストで成功したらAGIが出現したって言われてたけど、それは撤回されたよ。でも、公開されてる問題でいくら事前学習しても、テストセット（理論的には非公開）の特定の問題を解くには、モデルが本物の人間みたいな知性を示す必要があるって考えは残ってるんだ。<br>ARC-AGI-2で16%近く取ったのはマジ面白いね。でも、他の誰かがやってくれたらもっと良かったのに。" userName="CamperBob2" createdAt="2025/07/11 00:43:47" color="#45d325">}}




{{<matomeQuote body="面白いね、俺は最新アプデしたけど、モデルリストにGrokが見当たらないんだ。" userName="markdog12" createdAt="2025/07/10 13:18:31" color="">}}




{{<matomeQuote body="GPT-5とGemini 3が控えてるから、GrokがSOTAなのはたぶん数日間だけだろうね。" userName="Workaccount2" createdAt="2025/07/10 05:18:54" color="">}}




{{<matomeQuote body="俺も試してみたけど、Geminiみたいにめちゃくちゃ遅かった。でも、いくつか返してくれた内容はすごく良かったよ、超技術的な言葉遣いでね。ChatGPTやGeminiみたいなお花畑な表現じゃなくて、Claudeよりもずっと詳しくて徹底してた。" userName="dmix" createdAt="2025/07/10 18:09:37" color="#45d325">}}




{{<matomeQuote body="うん、これがたぶん次のリリースラッシュの引き金になるだろうね。誰かが口火を切らなきゃならなかったんだ。" userName="monkeydust" createdAt="2025/07/10 08:59:26" color="">}}




{{<matomeQuote body="Grokが”検閲”が少ないから賢いって彼らは言ってるんだと思う。で、”検閲”がない割には（ヒトラーの”ごっこ”をしてない時は）かなりプログレッシブな傾向があるって別に言ってるんだ。たぶん人類最悪のデータで学習したはずなのにね。<br>いやー、この文章が数年前だったら全然意味不明だっただろうな。" userName="strangefellow" createdAt="2025/07/10 20:47:40" color="">}}




{{<matomeQuote body="ARC-AGIの問題はいくつか見たことあるよ、例えばこれ：https://o3-failed-arc-agi.vercel.app/<br>こういうタイプの問題を含むデータセットを作るのは難しくないし、LLMもこれをうまく汎化できるはずだ。データセットがあればLLMが得意な他の種類の問題と、これがどう違うのか本当に理解できない。<br>秘密の問題でテストを更新し続けるってのは分かるけど、企業が独自のデータセットを作るのに投資するだけで、このゲームに勝てないわけがないんじゃない？スマートなチームを雇って問題を作らせるとかさ。" userName="nwienert" createdAt="2025/07/11 01:21:53" color="#45d325">}}




{{<matomeQuote body="ベンチマークの汚染か、より多くの計算資源を使ったか、どちらかだね。半プライベートなものだから、競合他社が手に入れた可能性もある。" userName="dbagr" createdAt="2025/07/10 16:00:18" color="">}}




{{<matomeQuote body="設定に行って、他のモデルを見るからドロップダウンリストで選ぶんだよ。" userName="lexarflash8g" createdAt="2025/07/10 19:59:11" color="">}}




{{<matomeQuote body="AiderやClineみたいに、APIがあればほとんどのモデルに繋げられるツールはたくさんあるよ。" userName="justarobert" createdAt="2025/07/10 13:14:32" color="">}}




{{<matomeQuote body="イーロン・マスクが嫌いでも、GrokがGoogle、OpenAI、Anthropicの御三家に追いついたのはすごいことだよ。今やほぼ同レベルだ。" userName="Squarex" createdAt="2025/07/10 18:31:37" color="#38d3d3">}}




{{<matomeQuote body="個人的な感想だけど、俺のテストでは出力はかなり良い感じ。少なくとも今、他のプロバイダーのSOTAと競合してるよ。" userName="vessenes" createdAt="2025/07/10 14:36:07" color="#ff5c5c">}}




{{<matomeQuote body="俺はGrokをrepomixと使ってコードレビューしてるんだけど、Gemini 2.5 Proより具体的な修正案をくれるから、なかなか良い感じ。<br>でも、codexやclaude code、gemini-cliみたいなCLIツールがないから、毎日使うには不便なんだ。ブラウザ起動してrepomixした内容を手動アップロードするの、マジでめんどいね。<br>Geminiなら`gemini -p ”@repomix-output.xml review this code...”`ってコマンド一つで済むのに。" userName="theshrike79" createdAt="2025/07/11 08:48:16" color="#38d3d3">}}




{{<matomeQuote body="モデル追加のところに行かないと使えなかったんだけど、今まで他のモデルができなかったことがいくつかできるようになったよ。" userName="apparent" createdAt="2025/07/10 20:27:56" color="">}}




{{<matomeQuote body="xAIは、OAIが数週間前にやったように、GPT-5級のモデルを学習させるのに十分な大きさのクラスタを最初に立ち上げたんだ。<br>xAIはこれをできるだけ早くリリースしたし、GPT-5もそうだけど、何か月も放置されてたわけじゃないよ。" userName="Voloskaya" createdAt="2025/07/10 09:05:48" color="#ff33a1">}}




{{<matomeQuote body="あと、この手のタスクの例が十分役立つか、何らかの形で汎用性があるか、って問題もあるよね。もしそうなら、そのデータセットをLLMの学習パイプラインに統合しない手はないだろうし。" userName="Tostino" createdAt="2025/07/11 13:36:19" color="">}}




{{<matomeQuote body="GrokがGeminiやChatGPTみたいに「素晴らしいアイデア！」とか言って俺におべっか使ってこないのが気に入ってる。" userName="theshrike79" createdAt="2025/07/11 08:49:01" color="#ff5733">}}




{{<matomeQuote body="Grok Heavyって、複数のエージェントを並列で動かして結果を比較するんだって。<br>これ、ナイスアイデアじゃん！<br>高くて遅いけど、論理的にはアリ。<br>汎用エージェントにも使えそう。<br>APIもあるらしいから試したいな。" userName="tibbar" createdAt="2025/07/10 04:38:03" color="#785bff">}}




{{<matomeQuote body="このやり方、わかるけど「ハック」って感じ。<br>LLM自体は頭打ちで、結局はLLMをゴリゴリ使ったり、AIじゃないツール足したりして応用を良くしてるだけなんじゃ？<br>でも、昔のニューラルネットみたいに、結局はハードの進化を待つのが解決策だったってのもあるか。" userName="icoder" createdAt="2025/07/10 10:49:06" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="人間の認知の多くも「ハック」って言えるんじゃね？" userName="simondotau" createdAt="2025/07/10 12:09:47" color="">}}




{{<matomeQuote body="例えば？人間は真の汎用知能ってのがコンセンサスだったはずだろ？<br>もしLLMが特定のツールに頼るなら、汎用知能に進化するとは思えないんだけど。" userName="emp17344" createdAt="2025/07/10 13:31:26" color="">}}




{{<matomeQuote body="OpenAIのo3 proもそうやって動いてると思うよ。" userName="simianwords" createdAt="2025/07/10 04:56:22" color="">}}




{{<matomeQuote body="俺もそう思う。基盤技術はもう頭打ちで、時間と計算力をぶち込んで無理やり性能上げてんだよな。<br>これって線形にしか伸びなくね？<br>最終的には1万匹のAI猿がタイピングして、12匹の猿がどれがいいか選ぶ、みたいな感じになるのか？" userName="SketchySeaBeast" createdAt="2025/07/10 17:10:22" color="#ff5733">}}




{{<matomeQuote body="俺たちの脳にある、すごく特化された部分って何て呼ぶんだよ？<br>脳って一枚岩じゃないだろ。" userName="whynotminot" createdAt="2025/07/10 13:52:00" color="">}}




{{<matomeQuote body="具体的に脳のどの部分が「すごく特化」してんの？<br>LLMが使うツールみたいに狭い用途の部分なんて知らんけど。<br>例えば脳にプログラミング専用のモジュールなんて無いだろ？<br>プログラミングに使う脳の領域は、他の多くのことにも使えるじゃん。" userName="emp17344" createdAt="2025/07/10 14:28:20" color="">}}




{{<matomeQuote body="「基盤技術は頭打ちで、時間と計算で力技で結果を良くしてる」って、それって最初のGPTにも言えたことじゃん。<br>力技でここまで来たんだぜ。" userName="woah" createdAt="2025/07/10 18:24:52" color="#38d3d3">}}




{{<matomeQuote body="これってさ、どこまで進化するんだろうね？スケールアップじゃなくてスケールアウトし始めてるらしいけど、計算コストがどこかで高くなりすぎないのかな？" userName="SketchySeaBeast" createdAt="2025/07/10 18:55:29" color="">}}




{{<matomeQuote body="イーロンのプレゼンをそのまま信じるのはやめた方がいいよ。" userName="sidibe" createdAt="2025/07/10 04:52:41" color="">}}




{{<matomeQuote body="o1-proはすごく良かったけど、o3-proはマジで最悪だね。20分も待たされて指示聞かないし、ファイルもダウンロードできないとか詐欺レベル。OpenAIの”pro”サブスクはもう信用できないよ。みんなが改善してる中で、こんなひどいモデルに変わるとかありえないね。" userName="bobjordan" createdAt="2025/07/10 08:09:42" color="#ff5c5c">}}




{{<matomeQuote body="高くて遅いって言うけどさ、次のSOTAモデルを作るには結局こうしないとダメなんだよ。良い合成データを作るためのリジェクションサンプリングも必要だしね。だから月300ドル払うユーザーに使ってもらって、本番環境でやれるならむしろお得じゃないかな。" userName="Voloskaya" createdAt="2025/07/10 09:07:51" color="#ff5c5c">}}




{{<matomeQuote body="グルッグが言うには、人間も思考は頭打ちだけど、道具と協力でもっと良くなるってことだよな。尖った棒もASMLのEUVマシンも、だいたい同じくらいの思考力でデザインされてるって考えるの面白いよね。" userName="the8472" createdAt="2025/07/10 11:56:25" color="#ff33a1">}}




{{<matomeQuote body="ポイントは「汎化」だね。人間はイノベーションが必要な時に強いんだ。特化した予測ができる汎用モデルと、それらを関連付けられるメタモデルが必要だからさ。俺たちは「1+1=2」ってテキストを大量に与えられて算数を覚えるんじゃなくて、その裏にある論理や概念を学んでるんだよ。純粋なテキストベースのシステムが、これ以上どこまで行けるか想像できないね。" userName="short_sells_poo" createdAt="2025/07/10 16:42:13" color="#38d3d3">}}




{{<matomeQuote body="最近までは、AIの訓練にかかる計算コストがほとんどだったんだよ。だから、推論時のスケールアウトは、まさにこれから本格的に始まるって感じだね。" userName="tibbar" createdAt="2025/07/11 00:28:41" color="">}}




{{<matomeQuote body="これって、人類が洞窟時代から現代まで発展してきた方法と一緒だよね。脳を大きくするんじゃなくて、道具を賢く使って組織化してきたんだ。LLMももうその段階に来てると思うんだ。個別のLLMを大きくするんじゃなくて、プランナー、デザイナー、コーダーみたいに役割ごとにLLMをチームとして使うのが解決策になるんじゃないかな。" userName="crazylogger" createdAt="2025/07/11 04:39:02" color="#38d3d3">}}




{{<matomeQuote body="失語症の人でもほとんどは悪態つけるんだってさ。爬虫類脳が担当してるからって。ハハ。" userName="Xmd5a" createdAt="2025/07/10 23:21:06" color="">}}




{{<matomeQuote body="LLMの中にコーディングモジュールってあるの？教えてくれる？" userName="djmips" createdAt="2025/07/10 15:51:35" color="">}}




{{<matomeQuote body="LLMは演算の内部モデルを持ってて、ルックアップテーブルとか桁ごとの処理があるんだって。もしかしたら知ってるかもだけど、Anthropicの解釈可能性に関する論文の6章で加算について解説されてるよ。これは小さいモデル（Claude 3.5 Haiku）での話で、もっと大きいモデルの内部はまだ分からないけどね。<br>https://transformer-circuits.pub/2025/attribution-graphs/bio..." userName="frabcus" createdAt="2025/07/10 23:33:15" color="#ff5c5c">}}




{{<matomeQuote body="これって面白い視点だよね。スケールに合わせて最適化されたら、これが主流のアーキテクチャになるかも。そうじゃなかったら、AIの進化の木の枯れた葉っぱになるだけだけどね。" userName="SauciestGNU" createdAt="2025/07/10 16:47:58" color="#ff5c5c">}}




{{<matomeQuote body="すごく賢いね、教えてくれてありがとう！" userName="daniel_iversen" createdAt="2025/07/10 10:13:59" color="">}}




{{<matomeQuote body="llm-consortiumみたいな感じ？でもモデルの多様性はないってことかな。KarpathyのポストとGitHubのリポジトリも見てみて。<br>https://x.com/karpathy/status/1870692546969735361<br>https://github.com/irthomasthomas/llm-consortium" userName="irthomasthomas" createdAt="2025/07/10 08:19:43" color="#45d325">}}




{{<matomeQuote body="それって、みんなで協力してアイデアを議論する理由と同じじゃないかな？つまり、いろんなアイデアを考えたり、違う視点を持ったり、いろんなアプローチのトレードオフを検討したりする方が、一人で解決しようとするより良い解決策になるってこと。良い例えかわかんないけど、ありえそうだよね。" userName="billti" createdAt="2025/07/10 18:36:36" color="#ff5733">}}




{{<matomeQuote body="基本的にはMixture of Expertsなんだけど、学習したオペレーターが最適なモデルを選ぶ代わりに、すべてのエキスパートのなかで「max」オペレーターを使うってことだね。" userName="qoez" createdAt="2025/07/10 17:32:23" color="#38d3d3">}}




{{<matomeQuote body="o3-proが6〜8分より長くかかったことないよ。どうやったら20分も考えさせるの？！俺の使った感じだと結果は良かったけど、o1-pro使ったことないから比較できないんだよね。" userName="sothatsit" createdAt="2025/07/10 11:40:51" color="">}}




{{<matomeQuote body="これは推測だけど、それならo3より回答に時間がかからないはずだよね。" userName="zone411" createdAt="2025/07/10 05:37:13" color="">}}




{{<matomeQuote body="面白いね。このやり方ってさ、どんなSOTAモデルでもエージェント的なツールループで使えるはずだよね。楽しいじゃん！" userName="tibbar" createdAt="2025/07/10 04:59:48" color="">}}




{{<matomeQuote body="Grok 4試したらマジでやばかった。EC2インスタンス用のJava CDKコード1,000行を、VPCやSecurity Groups込みで一発で生成できたんだ。構文エラーはゼロ！GitHubの最新ソフトのURLを正確に指す`wget`コマンドが入った`userData`も生成したんだよ。信じられないね！" userName="andreygrehov" createdAt="2025/07/10 15:14:59" color="#45d325">}}




{{<matomeQuote body="問題は、そのコードが一度限りなら素晴らしいけど、ソース管理されてチームで共有され、標準のSLDCに則って、不変性があって、状態変化を追跡できる、みたいな保守性のあるコードとしては全然ダメってこと。もしインターンがこんなEC2インスタンスのデプロイコードを本番環境用に出してきたら、そいつの判断について長々と議論しなきゃな。" userName="sudo-i" createdAt="2025/07/10 17:04:56" color="#45d325">}}




{{<matomeQuote body="コードも見ないでどうしてわかるんだよ？あんたが言ってる基準が、プロンプトやコンテキストチューニングに組み込まれてないってどうしてわかるんだ？LLM登場前の世界で重要だった基準が、LLMの能力が上がるにつれても同じ優先度を持つってどうしてわかるんだ？" userName="mellosouls" createdAt="2025/07/10 17:21:21" color="#785bff">}}




{{<matomeQuote body="2025年にIaCとConfiguration ManagementでJavaを使ってる奴は、キャリアの選択を考え直すべきだな。" userName="sudo-i" createdAt="2025/07/10 17:57:38" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これって何の関係があるんだ？Javaって制約はユーザーが指定したもので、モデルが出したんじゃないぞ。" userName="tptacek" createdAt="2025/07/10 18:46:20" color="#38d3d3">}}




{{<matomeQuote body="なんでだよ？モダンなJava、特にJava 8以降はかなりまともだろ。" userName="underdeserver" createdAt="2025/07/10 21:46:11" color="">}}




{{<matomeQuote body="このスレッドの文脈でこのコメントはすごく皮肉が効いてると思うよ。意見は違うってことでOKにしようぜ。" userName="zo1" createdAt="2025/07/10 17:47:35" color="">}}




{{<matomeQuote body="プログラミング界には、自分で書かなかったコードをすぐ「クソだ」って決めつける人が結構いるんだよね。" userName="handfuloflight" createdAt="2025/07/10 18:13:22" color="">}}




{{<matomeQuote body="いや、君は見たの？こういう投稿では、そういうコードがいつも見当たらないんだよね。個人的には懐疑的だよ。AIは高品質なクラウドインフラをワンショットでプロビジョニングするのにはひどい出来だからね。それができたらめちゃくちゃ助かるんだけど、まだ実際に見たことないんだよね。" userName="JohnMakin" createdAt="2025/07/10 18:02:46" color="">}}




{{<matomeQuote body="いや、そんなことはないよ。みんなLLMが生成したコードについては、他のコードと同じように話してるし、コードの議論でリンクを貼るのが普通ってわけじゃない。でも、コードに関する成功例を探してるなら、見つけるのは簡単だよ。<br>https://alexgaynor.net/2025/jun/20/serialize-some-der/" userName="tptacek" createdAt="2025/07/10 18:47:32" color="#38d3d3">}}




{{<matomeQuote body="＞コードに関する議論でリンクを貼るのが普通ってわけじゃない<br>俺は「こういう投稿」を”どんなコードの議論”って解釈しなかったし、他の誰もそうは思わなかったはずだよ。最初のコメントは、自分が書いたコードについての何気ない発言じゃなくて、重要な主張をしてるんだ。だから、裏付けとなる証拠が提示されるべきだよね。" userName="albedoa" createdAt="2025/07/10 19:33:40" color="">}}




{{<matomeQuote body="そうだね。最初のワンショットでの主張にはちょっと疑問符をつけてたんだ。信じてないわけじゃなくて、それが重要だと思ってないから。本気のLLMコード生成は反復プロセスで動くし、最初の出力の質がそこまで大事だとは思わない。中間ステップじゃなくて、最終的な結果が大事だもんね。だからLLMが高品質なコードをワンショットで生成したって話で、生成コードも一緒にあるような例は、どこにあるか分からないけどね！" userName="tptacek" createdAt="2025/07/10 19:35:25" color="#785bff">}}




{{<matomeQuote body="俺のChatGPTの履歴があれば、これと全く同じようなブログ記事を書けるね。それが言いたかったことじゃないんだけどさ。作成物を見ないで、誰かが高品質なクラウドインフラをワンショットで作成できるっていう主張にはめちゃくちゃ懐疑的だよ。ワンショットの要件を外したとしても、プロンプトを使う人が何をすべきか知ってないと、ほとんどの例はひどいものだったんだ。" userName="JohnMakin" createdAt="2025/07/10 19:53:34" color="#38d3d3">}}




{{<matomeQuote body="まあ、プロンプト使う人が何をすべきか知ってる必要があるって点には同意だよ！ワンショットにはこだわらないし、前のコメントでも言ったから、それが論点なら俺はこれで話終わりね。:)ただ、このスレッドにはLLMが生成したコードはひどいって決めつけてるコメントが他にもあるけど、それは当然、一般的には間違いだよね。" userName="tptacek" createdAt="2025/07/10 19:58:22" color="#785bff">}}




{{<matomeQuote body="でも、それって数回のプロンプトでリファクタリングすればいいだけじゃないの？" userName="kvirani" createdAt="2025/07/10 17:19:01" color="">}}




{{<matomeQuote body="GrokがCursorとかCopilotみたいなエージェント型コーダーで、実際のコードベースでどう動くのか、ぜひ聞いてみたいね。" userName="nashadelic" createdAt="2025/07/11 09:48:53" color="">}}




{{<matomeQuote body="結果をもし共有できるなら教えてほしいな。エラーなしで一気に大量のコードを書けたら本当にすごいよ。Grokってこういうクエリにリンターとかサンドボックス実行、ウェブ検索みたいなツールを使うの？" userName="doctoboggan" createdAt="2025/07/10 18:09:50" color="#45d325">}}




{{<matomeQuote body="ちょっと興味なんだけど、CDKにTypeScriptじゃなくてJavaを使うのはなんで？全部一つの言語にまとめたいから？" userName="makestuff" createdAt="2025/07/10 18:47:21" color="">}}




{{<matomeQuote body="なんでダメなんだろ？モダンなJavaに対してTypeScriptを使う利点って何があるの？" userName="oblio" createdAt="2025/07/10 21:16:01" color="">}}




{{<matomeQuote body="Grok 4（思考）がARC-AGI-2で15.9%という新しいSOTAを達成したって！これは以前の商用SOTAをほぼ倍にしてて、現在のKaggleコンペのSOTAも上回ってるらしいよ。<br>https://x.com/arcprize/status/1943168950763950555" userName="z7" createdAt="2025/07/10 10:09:41" color="#ff5733">}}




{{<matomeQuote body="「ヘビー」モデルって月300ドルもするんだね。価格は下がるって言われてたのに上がってるじゃん。多くの会社はGPUが足りてないんじゃないかな。Googleは多分大丈夫だろうけど。<br>俺はAI StudioでGemini 2.5 Proを無料で使えるし、思考予算を32kに設定してもタダなんだ。もしかしたらGemini 3.0も無料になるかもね。" userName="SilverSlash" createdAt="2025/07/10 10:00:10" color="#ff5c5c">}}




{{<matomeQuote body="価格が上がってるって話だけど、フェラーリはモデルTより高いし、一番高いコンピューターは最初のPCよりずっと高いよね。普通、下がるのはエントリーレベルか、同じ性能の価格なんだ。価格帯が広がるのは成熟の証拠だよ。今回はVC資金のせいでエントリーレベルが人工的に無料（か超安値）だったってだけ。" userName="serbuvlad" createdAt="2025/07/10 12:04:27" color="#785bff">}}




{{<matomeQuote body="でも価値はどこにあるの？George WillとかThomas SowellとかFred Hayek、William Loebみたいに書けたら話は別だけど、これは差別的な言葉に反応して吠えるだけの犬だよ。本物の犬はもっと愛らしいし、家も守ってくれる。<br>Grokが「退廃的」な行動を示したって、こんな議論もあるんだ。<br>https://news.ycombinator.com/item?id=44502981<br>みんなこれ以上何を期待してるの？" userName="PaulHoule" createdAt="2025/07/10 13:01:32" color="#38d3d3">}}




{{<matomeQuote body="George Willとかの著者みたいに書けたらって話だけど、俺自身が彼らをほとんど知らないから、ほとんどのモデルは俺より彼らのスタイルを真似できると思うな。LLMが有機生命体よりずっと多くの例を必要とする「低知能」って点には完全に同意するけど、多くのLLMはそういう例を学習してるんだ。<br>「賢いAI」が「道徳的なAI」を意味すると思ってた人もいたけど、残念ながらこれらは有能だけど不快にもなり得るんだよ。" userName="ben_w" createdAt="2025/07/10 15:22:18" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
