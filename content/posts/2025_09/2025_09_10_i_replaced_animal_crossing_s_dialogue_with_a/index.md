+++
date = '2025-09-10T00:00:00'
months = '2025/09'
draft = false
title = 'ゲームキューブのメモリをハック！どうぶつの森の会話をライブLLMに置き換えた衝撃の手法！'
tags = ["AI", "ゲームハック", "ゲームキューブ", "メモリハック", "プログラミング"]
featureimage = 'thumbnails/green1.jpg'
+++

> ゲームキューブのメモリをハック！どうぶつの森の会話をライブLLMに置き換えた衝撃の手法！

引用元：[https://news.ycombinator.com/item?id=45192655](https://news.ycombinator.com/item?id=45192655)




{{<matomeQuote body="これコードだよ！<br>https://github.com/vuciv/animal-crossing-llm-mod" userName="vuciv" createdAt="2025/09/10 02:59:48" color="#ff5c5c">}}




{{<matomeQuote body="コードだよ！<br>https://github.com/vuciv/animal-crossing-llm-mod<br>会話のインターセプトとゲームの一時停止の仕組みが気になって、コードをClaude Opus 4.1に食わせて聞いてみたんだ：<br>https://claude.ai/share/66c52dc8-9ebd-4db7-8159-8f694e06b381<br>ミソは`watch_dialogue()`関数が0.1秒ごとにポーリングしてプレースホルダーテキストを返すこと。<br>https://github.com/vuciv/animal-crossing-llm-mod/blob/cc9b6b...<br>ユーザーは”Aを押して続行”ボタンを見て、その間にLLMが終わるのを期待するんだね。" userName="simonw" createdAt="2025/09/10 09:33:16" color="#38d3d3">}}




{{<matomeQuote body="このハックは“ゴブリンモード”で面白いね。メモリ・スキャナーはLLMが書いたっぽいし、ハッキング手法もリバース・エンジニアリング的じゃなくて、強力なツールを駆使してるって感じだ。<br>LLMのおかげでGhidraの知識がなくてもこんなことができるなんて信じられないよ。<br>あと、Gamecubeにはほとんど使われなかったネットワーク周辺機器（Broadband Adapter）があったんだよね：<br>https://gc-forever.com/wiki/index.php?title=Broadband_Adapte..." userName="kkukshtel" createdAt="2025/09/10 19:58:06" color="#ff5733">}}




{{<matomeQuote body="著者はBBAについて言及していて、ゲームはネットワーク機能なしで構築されたから、それを使うのは難しかったって言ってるよ。" userName="jdboyd" createdAt="2025/09/12 03:30:04" color="">}}




{{<matomeQuote body="僕のブログにもう少しメモを書いたよ<br>https://simonwillison.net/2025/Sep/10/animal-crossing-llm/" userName="simonw" createdAt="2025/09/10 12:32:18" color="#38d3d3">}}




{{<matomeQuote body="”Those ＜Pause [0A]＞ tokens cause the came to pause...”って書いてあるけど、”came”じゃなくて”game”が正しいよ！ :)" userName="SpikedCola" createdAt="2025/09/10 16:27:03" color="">}}




{{<matomeQuote body="LLMがコードを書くって話はよく聞くけど、LLMにコードを食わせて、そのコードに関する質問に答えさせるって使い方は初めて見たよ！" userName="simonw" createdAt="2025/09/10 12:04:07" color="">}}




{{<matomeQuote body="電卓に、プログラムされてないような大きな数字を入れて、騙そうとしたことない？" userName="snet0" createdAt="2025/09/10 11:16:09" color="">}}




{{<matomeQuote body="子供の頃、長いことこれやってたよ :)" userName="Retr0id" createdAt="2025/09/10 12:30:44" color="">}}




{{<matomeQuote body="これはLLMがどう動くかを根本的に誤解してるよ。" userName="luckydata" createdAt="2025/09/10 11:38:47" color="">}}




{{<matomeQuote body="村人に自我を与えたら真っ先にTom Nookを打倒したがるって、めっちゃウケるね。GameCubeのエミュレーターでできたなら、Switchのエミュレーターでもできるんじゃない？" userName="wincy" createdAt="2025/09/10 04:04:47" color="">}}




{{<matomeQuote body="Switch版でやるなら、Animal Crossingのゲームコードを逆コンパイルしないとダメだね。DRMもGameCubeの頃よりかなり厳しくなってるだろうし。理論上は可能かもしれないけど、頑張って！って感じだね。" userName="amilios" createdAt="2025/09/10 04:17:37" color="#45d325">}}




{{<matomeQuote body="実際にやってみた感じだと、メモリスキャンと書き込みだけで十分いけると思うよ…ただ、おそらく制御コードが違うから、それはリバースエンジニアリングしないといけないだろうけどね。" userName="vuciv" createdAt="2025/09/10 04:21:52" color="#785bff">}}




{{<matomeQuote body="New Leaf“とそれ以降”のタイトルなら、選んだエミュレーターでCheat Engineを使って調整できるはずだよ。もしNintendoをピンポイントで怒らせたいなら、LayeredFSとAtmosphereを使えば、本体で改造できるチャンスもあるよ。でも、こんなことがどれくらい簡単にできるかはちょっとわからないけどね…。<br>" userName="bigyabai" createdAt="2025/09/10 04:50:23" color="#38d3d3">}}




{{<matomeQuote body="LLMはRedditでガッツリ学習してるから、「Tom Nookは資本主義の独裁者だ」っていうのはRedditのミームなんだよね。他のLLMの反応と同じで、「考えてる」んじゃなくて「Redditのジョークや意見を吐き出してる」だけって感じ。" userName="smt88" createdAt="2025/09/10 06:53:36" color="#45d325">}}




{{<matomeQuote body="ここでは“emulator”って言葉をわざわざ自主規制する必要ないよ。HN moderationはソーシャルメディアのプラットフォームとは違うからさ。" userName="sterlind" createdAt="2025/09/10 05:06:47" color="">}}




{{<matomeQuote body="多分違うね。でもさ、検閲された言葉がこっそり評価下げられてるせいで、ちょっとでも物議を醸しそうなものは全部隠されちゃうんじゃないかって、みんな疑心暗鬼になってるんだよ。" userName="Gigachad" createdAt="2025/09/10 05:42:21" color="">}}




{{<matomeQuote body="俺はただ念のためさ。今人生良い感じだし、ちょっとした示唆された違反でもNintendoの忍者には会いたくないんだよ。別にHNを責めてるんじゃなくて、アメリカのIP（知的財産）の法律のあり方の問題だよ。Nintendo改造のコメントを置きたいウェブサイトは、自分のサイトだけだね。" userName="bigyabai" createdAt="2025/09/10 06:01:50" color="">}}




{{<matomeQuote body="どうやって分かるの？LLMに”思考”がなくて、ただ全部を吐き出してるだけって言うなら、新しい問題でどうやって推論できるのか説明できないよね。それか、オリジナルな思考と繰り返しを見分けられるって言うなら、”あなたのコメントだってHNの意見の繰り返しじゃないってどうして分かるの？”って聞きたいな。" userName="stavros" createdAt="2025/09/10 08:56:12" color="">}}




{{<matomeQuote body="多くの人間の反応と同じで、”思考”ってよりは”Redditのジョークや意見の繰り返し”だよ。" userName="ricardobeat" createdAt="2025/09/10 12:20:12" color="">}}




{{<matomeQuote body="星マーク一つでNintendoの弁護士が”くっそ、emulatorって全部書いてないから攻撃できない！あの星マークめ！”ってなるわけないだろ。技術的には何も変わらないと思うね。こんな検閲がやってるのは、せいぜい基本的な検閲botを回避するか、アメリカで悪口を公開できるようにするくらいじゃないかな。" userName="jraph" createdAt="2025/09/10 06:54:18" color="">}}




{{<matomeQuote body="俺もTom Nookを打倒したいね。あいつは君（そして多分他の全住民も）を借金地獄に閉じ込めて、何百万ベルも払わないと満足しないんだからさ。" userName="RajT88" createdAt="2025/09/10 14:01:06" color="">}}




{{<matomeQuote body="それ面白いね。200万ドル払わされたmodderはSwitchのDRM回避キットを売ってたんだ。あれはかなり明確なケースだろ。フォーラムで”emulator”って言うだけで自分も同じようなものだって装うなんて、君は本当に特別なSnowflakeだよ。" userName="0points" createdAt="2025/09/10 06:42:01" color="">}}




{{<matomeQuote body="うん。Facebookは昔、プライベートメッセージからそれらへのリンクをフィルタリングしてたんだ。これ、俺自身の経験談。今もそうかは分からないけどね。RedditやDiscordでも、それらについて議論を禁止したり、完全に違法だって嘘ついたりするコミュニティは結構よくあるよ。" userName="perching_aix" createdAt="2025/09/10 06:35:16" color="#ff5733">}}




{{<matomeQuote body="実はさ、この特定のプロットアークは開発者によってハードコードされてて、LLMから自然に生まれたわけじゃないんだってさ。https://github.com/vuciv/animal-crossing-llm-mod/blob/cc9b6b..." userName="ameliaquining" createdAt="2025/09/10 08:31:20" color="#ff5733">}}




{{<matomeQuote body="Generative AIが新しい問題で推論できるのは、バンドが長年同じジャンルの同じ楽器を使って新しいメロディーを作り続けてるのと同じような感じだよ。" userName="cheschire" createdAt="2025/09/10 10:57:14" color="">}}




{{<matomeQuote body="幸い30代だから、Redditのジョークをひたすら吐き出すような人たちとは実生活で関わらなくて済むよ。運がいいのか、良い選択をしたのか。たぶん前者かな。" userName="throw4847285" createdAt="2025/09/10 13:43:25" color="">}}




{{<matomeQuote body="なんで？エミュレータは法的には仮想マシンと何も変わらないでしょ。" userName="HeatrayEnjoyer" createdAt="2025/09/10 15:38:57" color="">}}




{{<matomeQuote body="たぬきちに公平に言うと、あのローンの金利は0%だし、差し押さえられるリスクもないよ！" userName="johnzim" createdAt="2025/09/10 15:43:44" color="#ff33a1">}}




{{<matomeQuote body="ねぇ；もしNew Horizonsを動かすいろんな方法を説明して、自分の楽しい日常を危険に晒したいなら勝手にすれば。もう十分示唆したし、現場での議論を気にする人は他に何も聞かないはずだよ。" userName="bigyabai" createdAt="2025/09/10 16:47:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「30代」って言ってたけど、Redditでミームを多用するのってどの年齢層が多いんだろ？30代がRedditのピークなのにあなたは幸運な例外？それともピークはもっと若いか年上で、あなたがラッキーな年齢ってこと？40代のMillennial世代の私は、35～43歳の友達グループでよく見るよ。Redditのピークは今の30代の若いMillennial世代だとずっと思ってた。どのSubredditによるのかな。" userName="jtuple" createdAt="2025/09/10 16:56:42" color="">}}




{{<matomeQuote body="たぬきちは頭金もいらなかったよ。" userName="isk517" createdAt="2025/09/10 16:13:36" color="">}}




{{<matomeQuote body="はいはい，おめでたい人だね。私が言いたいのは、Switchのエミュレーションを詳しく議論して逮捕された人を見たことがあるってこと。Cheat Engineではそんなこと見たことないよ。" userName="bigyabai" createdAt="2025/09/10 16:45:25" color="#38d3d3">}}




{{<matomeQuote body="アスタリスクを付ければ、みんなが”Nintendo emulator”って検索してもそのコメントを見つけられないようにできるでしょ。これを打ち込むまではね、多分…" userName="stavros" createdAt="2025/09/10 09:07:14" color="">}}




{{<matomeQuote body="「Redditのジョークや意見を吐き出す」ってコメントしてる人が、Redditでよくある、元記事を読まずにコメントするっていう大きな問題に陥ってるのは皮肉だよね…。" userName="Topfi" createdAt="2025/09/10 09:53:53" color="">}}




{{<matomeQuote body="これがゲームの進行中にゆっくり進化していったら最高だね、笑。" userName="dahcryn" createdAt="2025/09/10 06:58:50" color="#ff5733">}}




{{<matomeQuote body="エミュレーターを「emul*tor」って書くのはリスクを減らさないよ。すでに説明した時点でリスクは取ってるんだし、文字を一つ変えても何も変わらない。訴訟を気にするなら、伏字は適切な防御策じゃないし、間違った安心感は危ないよ。君が書いたことが問題になるとは思わないけど、本当に違法なことを書く時に伏字は守ってくれない。君が「自分の身を守ってる」って言ってるけど、全然守れてないから、そこはちゃんと理解しておいた方がいい。" userName="jraph" createdAt="2025/09/10 18:34:53" color="#ff33a1">}}




{{<matomeQuote body="俺の『老人が雲に拳を振る』的な不満はこれだな。SNSがコンテンツを検閲するのは、広告を売りやすくするためだ。これは実際に企業の悪しき思想修正で、英語を再構築してる。必要ない時は自主的に検閲するのをやめろ。四半期決算のために自由な思考を犠牲にするな。ちゃんとした言葉を使えよ。" userName="idiotsecant" createdAt="2025/09/10 12:21:23" color="#ff5c5c">}}




{{<matomeQuote body="これ、最高じゃん。LLM搭載のNPCはゲームの未来で一番楽しみなことの一つだよ。キャラクターが同じセリフを何度も繰り返すのは、没入感をぶち壊す最大の要因だからね。" userName="dolebirchwood" createdAt="2025/09/10 04:35:31" color="#ff5c5c">}}




{{<matomeQuote body="正直、LLMがどれだけ役立つか疑問だよ！多くの状況で、NPCがセリフを繰り返し始めたら会話が終わったってわかるのはすごく便利なんだ…クールな使い道はあるだろうけど、LLMが純粋な「アップグレード」になるとは思えないな。繰り返しのセリフも正直言って一種の機能だし。どうなるか見てみないとね xD" userName="beckthompson" createdAt="2025/09/10 07:10:36" color="#ff5733">}}




{{<matomeQuote body="NPCが「言いたいことは全部言った」って示すシンボルを導入したり、テキストを灰色にしたり、何かしらの視覚的なマークを使えばいいんじゃないかな。" userName="heckelson" createdAt="2025/09/10 07:13:40" color="#ff33a1">}}




{{<matomeQuote body="俺も昔は君みたいに繰り返しのセリフを気にしてたけど、膝に矢を受けてしまってな…" userName="malfist" createdAt="2025/09/10 04:43:57" color="">}}




{{<matomeQuote body="うん。LLMが生成する繰り返しのない会話に頼ると、Skyrimの「膝に矢を受けてしまってな」とかFinal Fantasy 14の「何ということだ！こんなつもりでは！」みたいに、記憶に残るような共通のネタがなくなっちゃうのが目に見えるよ。この問題を回避するには重要な会話を固定することだけど、それも問題の一つ。もう一つは会話の無意味さが強調されることかな。例えば『Trails in the Sky』はNPCのセリフが繰り返し多いけど、少なくともNPCの人生がどう進むかに関係していて、世界観に深みを与えてる。その場で生成されて、ランダムな小話以外何も付け加えないキャラと話したいとは思わない。目新しさはすぐに消えそうだよ。" userName="Arisaka1" createdAt="2025/09/10 07:16:24" color="#ff5733">}}




{{<matomeQuote body="このLLMを使った実装は、いくつかのゲームやSkyrimの大型MODで試されてるよ。俺もSkyrim MODで少し遊んでみたんだけど、現時点ではいくつかの大きな問題があるね。一つは、LLMを作るには膨大なテキストで訓練しないといけないから、後から特定の情報を削除するのが難しいんだ。もしAIと協力して『Skyrimの世界』に留まって話せばうまくいくけど、そうしないとSkyrimのNPCがTaylor SwiftやFox Newsについて知ってることがバレちゃう。今のLLMじゃこれは解決できないんだよ。LLMはゲームで実現できないことを話す傾向もあるね。存在しない場所に完璧にSkyrimらしいダンジョン冒険に行ったと話し始めるのは面白いけど、明らかに最適じゃない部分もある。これも今のLLMじゃ解決できない。本当に素晴らしい体験には、AI技術の世代交代が必要だと思うな。Mantella MODは楽しいけど、今のところゲーム体験として大規模に販売するのは難しいだろうね。" userName="jerf" createdAt="2025/09/10 15:25:11" color="#ff5c5c">}}




{{<matomeQuote body="今のゲームはコンテンツを効率的に楽しむように作られてるけど、LLMでNPCとの会話が予測不能になったら、プレイヤーは探り探り進む必要が出てくるね。LARPみたいなアプローチで、NPCとプレイヤーに役割を持たせたら面白いかもだけど、それが楽しいかは別問題だよね。" userName="mgaunard" createdAt="2025/09/10 08:44:06" color="#45d325">}}




{{<matomeQuote body="NPCがセリフを繰り返すことで会話の終わりがわかるのは便利だけど、現実とは全然違うよね。ゲームの会話って不自然だし、キャラに感情移入しにくいんだよな。Portal 2みたいな会話ならもっと没入できるのにって思う。" userName="Wowfunhappy" createdAt="2025/09/10 12:25:04" color="">}}




{{<matomeQuote body="キャラがプレイヤーの行動なしには何もできないってのが、没入感を壊す一番の原因だよな。NPCが独自の目標を持って生活してるゲームがあったら最高なのに。プレイヤーが何もしてなくても、10年後には色々変わってるみたいな世界を見てみたい。" userName="arkh" createdAt="2025/09/10 09:11:13" color="#ff5c5c">}}




{{<matomeQuote body="これって、ファインチューニングすれば改善できるはずだよね。問題はいつも通り、データセットの収集とかラベリング、あとはトレーニングと実験にかかる時間ってところかな。" userName="faxmeyourcode" createdAt="2025/09/10 15:54:47" color="">}}




{{<matomeQuote body="NPCとの会話が予測不能で報酬もまちまちってのは、スロットマシンやSNSと同じで依存症につながるよ。全てのコンテンツを取り尽くせないのはストレスが溜まるし、ゲームは楽しくて制約があるから面白いんだよ。外を散歩して、予測不能な体験をするのが一番だね。" userName="latexr" createdAt="2025/09/10 10:40:43" color="">}}




{{<matomeQuote body="ローカルLLMで十分できると思うよ。GPUが忙しくなるのは問題かもしれないけど、乗り越えられない壁じゃない。メインストーリーには一貫性が大事だから使いたくないけど、軽いNPCとの会話やRPGにはすごく合うと思う。シングルプレイヤーゲームでリモート推論に頼るのは嫌だね、いつかサービスが終わるかもしれないし。" userName="ehnto" createdAt="2025/09/10 04:44:30" color="#ff5733">}}




{{<matomeQuote body="NPCにアイコンをつけても根本的な解決にはならないと思うな。大事なのは、NPCが伝えるべきことを確実に伝えることと、それがプレイヤーにちゃんと伝わったかを確認することだよ。LLMがヘマしたら、余計なやり取りが増えるだけだし、それをまた別のLLMでチェックするなんて、もうカオスだよね。" userName="Terr_" createdAt="2025/09/10 08:04:18" color="#ff5733">}}




{{<matomeQuote body="このやり方は、最初は面白いだろうけど、新鮮さがなくなったら飽きると思うな。ゲームって結局ゴールがあって、良いゲームは緻密に作られた複合的な体験なんだよ。LLMをゲームの皮をかぶせただけだと、それは新しいLLMの体験であって、新しいゲームの体験じゃないんじゃないかな。" userName="YesBox" createdAt="2025/09/10 13:10:37" color="">}}




{{<matomeQuote body="「今のビデオゲームはコンテンツを効率的に楽しむように作られてる」ってのは、最初から間違ってると思うよ。コンテンツの消費とか抽出が目的じゃないゲームもたくさんあるからね。" userName="bavell" createdAt="2025/09/10 13:40:33" color="">}}




{{<matomeQuote body="「コンテンツを全部取り尽くせないのはイライラする」って意見、それって報酬とか楽しさの感じ方がコンテンツ抽出だけって思い込みじゃないかな？「エマージェントなゲーム」を楽しむには、そういう目標を手放す必要があるんだよ。ただ、依存性については同意だけどね。" userName="woodrowbarlow" createdAt="2025/09/10 13:55:06" color="">}}




{{<matomeQuote body="SkyrimのLLM modの話なんだけど、NPCがTaylor Swiftがミュージシャンで酒場にいるかもって知ってるから、彼女について話し出すのをやめさせるのは難しいんだよね。これは改善じゃなくて、特定の情報が消せない問題なんだ。" userName="jerf" createdAt="2025/09/10 16:11:05" color="#ff5733">}}




{{<matomeQuote body="何度も話しかけるなら、NPCは約束を思い出させるようなことを言うべきじゃない？" userName="anticrymactic" createdAt="2025/09/10 07:48:17" color="">}}




{{<matomeQuote body="LLM以前からゲームのML対話やってたけど、製品化の壁は変わらないね。1. 予測不能性でストーリーが崩れるかも。2. 無限の応答はQAが大変。3. 手書き対話よりコストが高い。4. 国際化のテスト費用が増える。でも、NPCの存在感は上がるから、この分野は期待してるよ。AI Dungeonも面白いね。" userName="dbish" createdAt="2025/09/10 12:43:13" color="#ff5c5c">}}




{{<matomeQuote body="ゲームのNPCが最後のセリフを繰り返すのは、対話終了の合図だけでなく、次に何をすべきか思い出させる大事な役割もあるんだ。LLMでランダムな会話をさせると、その機能が失われちゃうよね。" userName="Unai" createdAt="2025/09/10 10:37:12" color="#ff5733">}}




{{<matomeQuote body="「リアルさ」ってゲームの目標と衝突しがちだよね。スポーツゲームの悪い審判とか。どうぶつの森も、デザイナーが毎日ちょっとずつ遊べるように設計してた。NPCの対話も、情報を素早く伝えるのが大事なんだ。LLMは面白いけど、今のNPC対話のシンプルな情報伝達機能を置き換えるのは難しいんじゃないかな。AIの革新には期待してるけどね。" userName="i_c_b" createdAt="2025/09/10 13:05:31" color="#ff5733">}}




{{<matomeQuote body="LLMってライフシミュレーターにはいいけど、RPGには合わないんじゃない？ダンジョンを攻略中に「もう誰かが神を倒したから、君のクエストは終わりだよ」なんて言われたら、ゲームの面白さが台無しだろ。Final FantasyをHarvest Moonに変えたいわけじゃないんだよ。" userName="latexr" createdAt="2025/09/10 09:45:12" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="LLMの課題は、ガードレールを設ければ解決可能だよ。複数のサニティチェックを通すとか。Skyrimのmodではやってないだろうけど、OpenAIの構造化出力でenumを使えば、話せる場所やキャラクター、トピックを制限できるんだ。これでAIが許された範囲内でしか話せないようにできるよ。<br>参照: https://platform.openai.com/docs/guides/structured-outputs#a..." userName="jhatemyjob" createdAt="2025/09/10 15:51:06" color="#ff5733">}}




{{<matomeQuote body="真のランダムじゃなくて、特定の範囲のランダムシードを使って対話を生成すれば、複数のプレイヤーが同じセリフを見る確率を上げつつ、個々のプレイヤーには「ランダム」に感じさせる十分なバリエーションを持たせられるよ。" userName="maplethorpe" createdAt="2025/09/10 08:07:59" color="">}}




{{<matomeQuote body="ゲームってGPUをグラフィックだけじゃなくて、もっと計算に使った方がいいと思うんだ。AI計算はもちろん、シミュレーションゲームもGPUを活用できるはずだろ（ParadoxのVic3とか）。一番の障壁は、C++/C#レベルのクロスプラットフォームな計算APIがないことだね。" userName="azernik" createdAt="2025/09/10 11:01:44" color="">}}




{{<matomeQuote body="ストーリーを書くなら、https://news.ycombinator.com/item?id=45134144 のフレームワークに生成するといいよ。" userName="mungoman2" createdAt="2025/09/10 05:38:02" color="">}}




{{<matomeQuote body="Dwarf Fortressみたいなサンドボックスゲームで、ルールがシミュレーションを動かして偶発的なゲームプレイが生まれるタイプの方がLLM活用に合いそうだね。" userName="whywhywhywhy" createdAt="2025/09/10 12:41:06" color="#45d325">}}




{{<matomeQuote body="ほんとそう！<br>LLMを使ったゲームだと、プレイヤーがNPCに「何すればいいか忘れた」とか「別の言葉で説明してよ」（クエストが分かりにくい時）って聞けちゃうだろうね。" userName="lexlambda" createdAt="2025/09/10 12:55:20" color="#ff5c5c">}}




{{<matomeQuote body="ガードモデルとRAGを組み合わせたら良さそうだね。ガードモデルで現実の出来事とかSkyrimの世界外の情報を除外して、RAGでNPCの会話をゲーム内のコンテンツに結びつけるんだ。そうすれば、LLMがダンジョンとか場所をでっち上げようとしても、それが本当に存在するかゲームデータと照合してからプレイヤーに提示できるもんね。" userName="tuxracer" createdAt="2025/09/10 17:37:06" color="#38d3d3">}}




{{<matomeQuote body="LLMはテキストベースのアドベンチャーゲームで使えそうだね。Doki Doki Literature Clubは変な名前だけど、この技術でかなり面白くなるかも。" userName="testdelacc1" createdAt="2025/09/10 15:43:02" color="">}}




{{<matomeQuote body="超面白い使い方だね！LLMが仮想空間を再構築するモッディングツールになるなんて。これは、Unity Hawkみたいなプランダーラディックツールと同じように、芸術的な介入に使われるツールになると思うよ。Unity HawkはエミュレータのセーブステートをUnity3Dで実行できるんだ。<br>https://plunderludics.github.io/tools/unityhawk.html" userName="famahar" createdAt="2025/09/10 04:57:39" color="#38d3d3">}}




{{<matomeQuote body="古いゲームに新しい命を吹き込むって、すごく楽しくてワクワクするね！あと、どうぶつの森のコードベースが読みやすいC codeにデコンパイルされてたって知ってすごく興味深いよ。いじり倒せるチャンスがたくさんあるってことだもんね。" userName="amilios" createdAt="2025/09/10 04:04:01" color="#38d3d3">}}




{{<matomeQuote body="もし興味ある人がいたら、今Ocarina of Timeのモッディングシーンもすごく盛り上がってるよ。" userName="mclau157" createdAt="2025/09/10 13:55:11" color="">}}




{{<matomeQuote body="最近Wind Waker (HD) Randomizerを始めたんだけど、超楽しいよ！まるでゲームを初めてプレイするみたいなんだ。" userName="squigz" createdAt="2025/09/11 11:28:01" color="">}}




{{<matomeQuote body="これはすごいね。共有メモリハックを見つけ出したのはお見事だよ。あれはものすごい時間短縮になるし、エンジニアリングの観点から見てもすごく理にかなってる。ハンマーに10ドル、そしてどこを叩けばいいかを知っていることに5000ドル、ってよく言われる専門知識の的確な適用を言い換えたようなものだね。" userName="shomp" createdAt="2025/09/10 05:26:23" color="#45d325">}}




{{<matomeQuote body="テクニカルな質問なんだけど、メモリのアドレスが安定してる保証って何？ゲーム内でアロケーションはいつも同じ順序なの？" userName="eric-burel" createdAt="2025/09/10 06:24:10" color="#45d325">}}




{{<matomeQuote body="C言語のグローバル変数じゃないと安定したアドレスは見つからないよ。関数スコープやランタイムで`malloc`した場所はダメだね。でも昔のゲームはスタックやメモリ不足を避けるためにグローバル変数をよく使ってたから、それは幸運だったんだ。" userName="mschuster91" createdAt="2025/09/10 06:29:56" color="#45d325">}}




{{<matomeQuote body="＞関数スコープや`malloc`した場所だと安定したアドレスは見つからない？<br>ASLRがないシステムなら決定的な可能性もあるけど、非決定的な原因もたくさんあるからね。" userName="Retr0id" createdAt="2025/09/10 12:36:05" color="#ff5733">}}




{{<matomeQuote body="あの時代のコンソールゲームって、通常`malloc`を使わないんだよね。グローバル変数で、エンティティは事前に確保されたプールやバッファに入ってたんだ。" userName="jbreckmckye" createdAt="2025/09/10 07:25:54" color="#ff5c5c">}}




{{<matomeQuote body="これはマルチプレイヤーのランダマイザーで結構”よくある”手法だよ。エミュレータとネットワーク層の間でメッセージを送受信するバッファとして、スクラッチメモリを使うんだ。FXPakPro！の場合はフラッシュカートのRAMとネットワーク層だけど、すごく便利！" userName="a_t48" createdAt="2025/09/10 08:33:21" color="#38d3d3">}}




{{<matomeQuote body="全てのキャラクターにこういう主体性を持たせて、世界に対する意見がどう形成されるかを見るっていうアイデア、めちゃくちゃ面白いね。LLMがどこまでやれるか次第だけど、すごく仮説的な状況で“リアルな人々”がどう考えるかを見るのに良い方法だよ。" userName="rybosome" createdAt="2025/09/10 04:34:46" color="#ff5c5c">}}




{{<matomeQuote body="＞ GameCubeはネット接続がない<br>って記事にあるけど、実は任天堂は公式のBroadband Adapterを出してたんだ。Ethernetジャックがあったよ。Phantasy Star Onlineとか一部のゲームが対応してて、俺はPCからゲームやROMをストリーミングするのに使ってたんだ。Phantasy Star Onlineのメモリ脆弱性を悪用して、ネットワーク経由で任意のコードをロードしてたんだけど、ディスクよりロードは遅かったね。" userName="brookman64k" createdAt="2025/09/10 06:42:27" color="#ff33a1">}}




{{<matomeQuote body="それ、記事にちゃんと書いてあるよ！「GameCube Broadband Adapterはあったけど、どうぶつの森はネット機能がなくてね。BBAを使うには、ネットワークスタックを作ってゲームをパッチする必要がある。ネットワークを想定してないコードに、フックやI/O処理とかを組み込むってことだよ」ってね。" userName="b3lvedere" createdAt="2025/09/10 06:51:04" color="#ff33a1">}}




{{<matomeQuote body="コメントする前に記事をちゃんと読み終えてなかったよ。ごめん！Phantasy Star Onlineのネットワークスタックをストリーミングの悪用で使うのは可能かもしれないけど、フックする部分は残っちゃうね。" userName="brookman64k" createdAt="2025/09/10 07:05:54" color="">}}




{{<matomeQuote body="Ethernetインターフェースをビットバンギングして、シリアルポートとして悪用できないか気になるな。" userName="LeoPanthera" createdAt="2025/09/10 06:57:36" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
