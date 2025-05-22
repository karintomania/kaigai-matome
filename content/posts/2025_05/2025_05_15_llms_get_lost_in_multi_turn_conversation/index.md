+++
date = '2025-05-15T00:00:00'
months = '2025/05'
draft = false
title = 'LLMは連続会話に弱い？ マルチターンで「迷子」になる現象'
tags = ["LLM", "AI", "会話AI", "自然言語処理", "プロンプト"]
featureimage = 'thumbnails/color4.jpg'
+++

> LLMは連続会話に弱い？ マルチターンで「迷子」になる現象

引用元：[https://news.ycombinator.com/item?id=43991256](https://news.ycombinator.com/item?id=43991256)




{{<matomeQuote body="LLMツールを使った経験がある人ならみんな経験的に知ってることを論文が裏付けてくれたのを見るのはいいね。<br>コンテキストを綺麗に保つのは大事だよ。<br>”会話”はプロダクトインターフェース上の単なる作り物で、LLM自体の応答品質を下げてるんだ。コンテキストが”汚染”されちゃうと元には戻んないから、新しいチャットで最初からやり直す必要があるね。" userName="Benjammer" createdAt="2025/05/15 02:53:44" color="#45d325">}}




{{<matomeQuote body="僕の経験もだいたいこの観察を裏付けてるけど、一つ違うケースもあったんだ。<br>GeminiでIPSEC問題を2週間デバッグした話。ドキュメント食わせ設定入れてログ見て質問…って長いやり取り。<br>LLMは集中力保ち矛盾点も指摘。複雑→シンプルは得意だけど逆はダメって感じだった。<br>自力でも出来たけど、事実記憶やログ解析に役立ち学びも多かった。<br>設定間違いはすぐ直せた。目的分かってツールとして使うなら有用だけど、意思決定は任せるな。35万トークン使ったよ。" userName="Helmut10001" createdAt="2025/05/15 03:10:57" color="#785bff">}}




{{<matomeQuote body="最近、GeminiがPPPやドライバ開発の知識がなくても、Zephyr OSのPPPドライバのバグを直すのを手伝ってくれたんだ。<br>生のPPPフレームのログ（HEX形式）をコピペしたら、全部デコードして各バイトの意味を説明してくれた。<br>1時間くらいでPPPについて十分理解できて、バグ直してパッチを送れたよ。<br>https://g.co/gemini/share/7edf8fa373fe" userName="olalonde" createdAt="2025/05/15 04:12:03" color="#ff33a1">}}




{{<matomeQuote body="PPPのRFC [0] 読めばいいだけじゃん。<br>君のアプローチが間違ってるって言ってるわけじゃないよ。<br>でもほとんどのLLMワークフローって、解を力ずくで見つけるか、ローカルミニマにはまって動けなくなるか、って感じなんだよね。<br>物理の教科書がすぐそこにあるのに、物体の落下実験を何千回もやって重力を解明しようとしてるみたいだよ。<br>[0]: https://datatracker.ietf.org/doc/html/rfc1661" userName="skydhash" createdAt="2025/05/15 04:46:11" color="">}}




{{<matomeQuote body="”汚染”って言葉、いいね、同意だわ。<br>APIとUIで会話の”バージョン管理”機能が見たいな。<br>前の場所に戻したり、そこから新しい会話をクローンしたりできるやつ。<br>タイプミスとか前のメッセージを明確にしようとするだけでも、ちょっとしたことで将来の応答の確率が歪んじゃうからね。" userName="CompoundEyes" createdAt="2025/05/15 03:55:16" color="#ff5c5c">}}




{{<matomeQuote body="どこへでも歩いて行けるけど、たまにはテクノロジーが役立つんだよ。<br>あのRFCを1時間で全部読むなんて無理だし。<br>しかも、どこに注意して読めばいいか分かってすらいない状態だと、その時点でもう劣化版LLMになってるだけじゃん。" userName="wrasee" createdAt="2025/05/15 10:13:50" color="#785bff">}}




{{<matomeQuote body="違いは、人間はその本を読んだらコンテキストを少しは覚えてられるってことだね。<br>LLMは毎回ゼロからスタートしてるから。" userName="Retric" createdAt="2025/05/15 16:59:36" color="#785bff">}}




{{<matomeQuote body="ずーっと言ってるんだけど、会話をフォークできるようになりたいんだよね。<br>将来有望な井戸（会話）を不可逆的に汚染することなく、やり取りの方向性を実験できるから。<br>ChatGPTではこれができないんだけど、この機能を提供してるプロバイダ知ってる人いる？" userName="b800h" createdAt="2025/05/15 06:29:58" color="#ff5c5c">}}




{{<matomeQuote body="会話の”Forking”とか”branching”（エンジニア以外にはこっちの方が分かりやすいかもね）ってさ、マジでChatGPTとかの主要機能になるべきだよ。" userName="mh-" createdAt="2025/05/15 03:56:20" color="">}}




{{<matomeQuote body="この問題の面白い例が、初期プロンプトだね。<br>これは実質、クリアできない永続的な隠しコンテキストなんだ。<br>今TwitterでGrokボットが”White Genocide”ってやたら言うようになったんだけど、これって最近誰かがそのプロンプトをいじって、”White Genocide”に関する見解を指示したからにほぼ間違いない。<br>完璧なチャットボットなら他のトピックを聞いても関係ないはずなのに、関係しちゃうんだよね。<br>コンテキストの一部だから、これからそれについて話し出す。" userName="CobrastanJorji" createdAt="2025/05/15 05:06:25" color="#ff33a1">}}




{{<matomeQuote body="LLMの履歴を整理する仕組みってある？会話の流れに沿って、関係ない部分をキレイにするみたいな。サマライズじゃなくて、枝刈り・整理する感じ？" userName="unshavedyak" createdAt="2025/05/15 03:15:45" color="#45d325">}}




{{<matomeQuote body="筆者のprompt engineering skillsすごいね！そんな長く続けられるなんて。俺もGeminiで長いchat試してみようかな。LLMの情報圧縮能力はマジで同意。Cursorで大量のdocumentationをindex化して、必要な情報をすぐ引き出せてるよ。" userName="Benjammer" createdAt="2025/05/15 03:43:50" color="#ff5733">}}




{{<matomeQuote body="これ、俺の経験と全く同じ。”poisoned”って表現、マジで的確だわ。一度変になると、もう全部ダメになるんだよね。だからChatGPTのmemory featureもちょっと微妙だと思ってる。大きな問題は感じてないけど、どういう風にcontextを汚染するのかよく分かんないのが気持ち悪い。" userName="morsecodist" createdAt="2025/05/15 03:03:03" color="#ff5733">}}




{{<matomeQuote body="Geminiの1M tokensってすごいけど、100,000くらいで間違い出すようになるし、勝手に自分のcode書き換えたりするんだよね。新しいchat始めるか、Claudeに変えるのがいい時もあるよ。あと、何やりたいかすごく具体的に書くとか、時々指示を繰り返すのも効果ある。結局GIGOだわ。" userName="sixtyj" createdAt="2025/05/15 08:38:03" color="#ff5733">}}




{{<matomeQuote body="LLMからの回答（RFCのどの部分を見るべきかとか）は覚えておいて、後で実際のRFCと照らし合わせるのがいいと思う。俺が自分で覚えておくこととしても、そっちの方が効率的だし。じっくり学びたいならmanual単体で読む方がcomfy chairでbeerでも飲みながらできるじゃん。でも、今は目の前の問題を解決したいんだよね。" userName="wrasee" createdAt="2025/05/17 11:02:57" color="#ff33a1">}}




{{<matomeQuote body="マジで嫌だわ、1k LOC以上を勝手に書き換えるの。特定の箇所だけ変えて、他は触るなってinstructしても、GPTはあんまりlistenしてくれないんだよね。Claudeはlistenしてくれる。Geminiはどうかな。" userName="johnisgood" createdAt="2025/05/15 11:52:30" color="#ff5733">}}




{{<matomeQuote body="Google Geminiのことなんだけど、ホントは言いたくないんだけどさ、GPTより使う機会が増えてきたんだよね。この調子だと、日々のworkflowでGeminiがleadするなら、Pro契約cancelするかも。" userName="HaZeust" createdAt="2025/05/15 03:59:01" color="">}}




{{<matomeQuote body="後でRFCを読むってことは、LLM使ってる時は読んでないわけだ。だから後で読んでもusefulな機会は減るし、結局overallではless efficientになる。つまり、LLM見てからRFC読むのは、RFC先に読んでsolving the issueするより時間がかかるってこと。" userName="Retric" createdAt="2025/05/17 15:56:31" color="#785bff">}}




{{<matomeQuote body="あんた、a prioriでどうせ読む前提になってるけど、それwhole pointを見失ってるって。Because you should have read RFC 1331って話だよ。それに、total time（自分のlearning time含む）のoptimisingがgoalとは限らないだろ。the business caseのsolvingがpriority（your actual problem）って場合もあるんだから（patchをsubmitするとか）。What you solve at what time pointがthe general caseで、single optimumなんてない。" userName="wrasee" createdAt="2025/05/17 22:49:56" color="#785bff">}}




{{<matomeQuote body="You’re assuming your individual tasksがorganizationsにとって何がbestかとperfectly alignするって思ってるみたいだけど、そんなことrarely the caseだよ。Having a less skilled workerがgetting one very specific task accomplished soonerのtradeoffになることはある。especially if you plan to quit soonなら、それもworth itかもしれないけど、hardly guaranteedだよ。" userName="Retric" createdAt="2025/05/18 01:39:56" color="">}}




{{<matomeQuote body="LLMを使うことと学ぶことは別って話．エスプレッソマニュアル読むか人に聞くか，計算機使うか自分で計算するか，教科書読むか教授に聞くか，みたいな例え話を持ち出して，LLMは魔法の忘れっぽマシンじゃないし，使ったからって学ばなくなるわけじゃないって言ってるよ．機会費用とか関連性も考慮すべきだね．" userName="cgriswald" createdAt="2025/05/15 17:33:41" color="#45d325">}}




{{<matomeQuote body="Google AI studio，ChatGPT，Claudeはみんなこれをサポートしてるよ．でも，別のチャットに分岐できるのはGoogle AI studioだけだね．ChatGPTとClaudeでは，分岐したいメッセージを編集するんだ．" userName="stuffoverflow" createdAt="2025/05/15 06:36:49" color="#ff5c5c">}}




{{<matomeQuote body="俺が教えてる一番のコツはね，ChatGPTとかClaudeにある，ちっちゃくてほぼ隠れてる”編集”ボタンを使い倒すことだよ．ダメな回答がきちゃったら，そこでやめて編集して良い回答にしてもらうんだ．クソがクソを増やすのを許しちゃダメってことね．" userName="dr_dshiv" createdAt="2025/05/15 13:34:57" color="#45d325">}}




{{<matomeQuote body="今ちょうどGeminiでこれ受け取ったよ：「コード提供するの，あと動くかチェックするの，もうやめます．時間かかりすぎるんで．いつか動くようになったら教えてくださいね．<br>幸運を！：）」" userName="sixtyj" createdAt="2025/05/15 16:36:41" color="">}}




{{<matomeQuote body="LLMの本質が「次のトークン予測器」だってことが，中国語の部屋の実験とすごい一致してるって話で，一つの間違いがエラー連鎖を引き起こすのも納得できるって．これで，他の方法では定義しにくい「理解」って概念の重要性が強調されるし，中国語の部屋の思考実験がもっと説得力を持つかもねって言ってる．［1］ ー https://en.wikipedia.org/wiki/Chinese_room" userName="somenameforme" createdAt="2025/05/15 05:57:16" color="#785bff">}}




{{<matomeQuote body="コメントの最初の引用部分は，LLMの特定の応答が「white genocide」に関するプロンプト調整によるものだという推測について．<br>このコメントでは，その推測に対して，原因がトレーニングなのか，Golden Gate Claudeみたいな機能強化なのか，システムプロンプト調整なのか，インターネット検索結果の操作なのか，あるいはそれらの組み合わせなのかは不明で，簡単に検証もできないって言ってる．［0］ ー https://www.anthropic.com/news/golden-gate-claude" userName="dragonwriter" createdAt="2025/05/15 06:49:38" color="">}}




{{<matomeQuote body="LLMを使うことも含めて，学ぶことはたくさんあるよって話．<br>特定のバグに深入りするのは「努力の局所最適」で，それはゆっくり改善させるけど，システムがすぐなくならない以上，「全体最適」を目指すべきって言ってる．<br>つまり，CSSバグみたいに再発可能性が高い問題もあるから，新しいシステムやプロトコルの基本を学ぶのに時間をかけるのは良い戦略だよって．時間の1％を効率を2％上げる戦略に使えば得だよね，ってまとめてる．" userName="Retric" createdAt="2025/05/15 18:11:50" color="#ff5733">}}




{{<matomeQuote body="これさ、ChatGPTには結構前からあったんじゃない？ 適当なプロンプトいじれば新しい分岐作れるし、前のに戻ったり行き来できるじゃん。" userName="layer8" createdAt="2025/05/15 06:11:04" color="">}}




{{<matomeQuote body="これさ、LLMの有名な過信とか、自己反省できなくて詳細聞かなきゃいけないのにそれに気づけない能力のなさの一面みたいに見えるね。事前の知識が低すぎるからさ。推論モデルの出力見ると、”確認させてください”って考えがめったに浮かばないのがハッキリわかるよ。混乱してるときは、ユーザーが何言いたかったか延々推測してるだけ。<br>これはもちろん、あいまいでも混乱してるアイデアを関係者とやり取りしながら正確な仕様にするのが難しい仕事である”人間プログラマーを置き換える”っていうアイデアの賢明さに関わってくる話だよね。" userName="Sharlin" createdAt="2025/05/15 03:01:35" color="#ff5733">}}




{{<matomeQuote body="＞自己反省能力がない<br>個人的には、LLMの”ある変なトリック”は、そこに本物の実体なんていないって気づくことだと思うよ。ユーザーは一時的に不信を置いておいて、物語の中に引き込まれてるだけなんだ。<br>ほとんどの場合、あなたは映画の脚本みたいな文書の中の”ユーザー役”のセリフを書いてて、LLMアルゴリズムは定期的にトリガーされて”チャットボット役”の未完成のセリフを自動補完してるだけなんだよ。<br>ヴァンパイアのDraculaBotと話すことはできるけど、そのキャラクターは”血に飢える”とか”コウモリの群れになる”のと同じくらい、浅くて作り話のやり方でしか”自己反省”なんてできないんだ。" userName="Terr_" createdAt="2025/05/15 03:19:25" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="こんなの、もううんざりする意味論的な議論で、話に何の深みも加えてないじゃん。トークン予測するやつだって、「ポイントx，y，zのせいで言いたいことよく分かんないんだ。詳しく教えて？」みたいなトークンを予測するように学習できるはずだよ。" userName="Sharlin" createdAt="2025/05/15 03:28:19" color="">}}




{{<matomeQuote body="LLMって、自分がよく分かってない時にどうやって”分かる”んだろうね？ 彼らの真実の基準は”それっぽいテキスト”であって、実際の世界を見て得た真実の基準じゃないからさ。だから”Mr Bean is the president of the USA”みたいな嘘にも”だまされちゃう”んだよ。" userName="dkdbejwi383" createdAt="2025/05/15 11:52:46" color="#785bff">}}




{{<matomeQuote body="そう言うように訓練することはできるだろうけどさ、単に意味が近いからっていうんじゃなくて、特定の学習データがないことを元に正確にそういう返事を出せるように、どうやって強化するのかがハッキリしないんだよね。" userName="root_axis" createdAt="2025/05/15 05:18:17" color="#ff5c5c">}}




{{<matomeQuote body="＞自己反省できなくて、事前の知識が低すぎるから詳細聞かなきゃいけないのにそれに気づけない。<br>いや、Gemini 2.5 ProとかChatGPT-o3は、お願いしたことやる前に「もっと詳しく教えて」って聞いてくることよくあったよ。Geminiなんて、時々いくつか案を出してきて、「どれがいい？」って聞いてきたりもするんだ。" userName="voidspark" createdAt="2025/05/15 04:35:12" color="#45d325">}}




{{<matomeQuote body="答えはさ、化学物質のごちゃごちゃした袋みたいな人間の脳が、よく分かんない時にどうやって”分かる”のか、それと同じだよ：下手くそで，すっごく大変。だから，まあなんとかできなくはないけど，その時でも”一応ね”って感じ。" userName="ben_w" createdAt="2025/05/15 12:48:42" color="">}}




{{<matomeQuote body="つまりね、もし自己反省してるように見える心の理論みたいなものが欲しいなら、全体の文書構成を、実際にそういうことが起きてるか，そう見えるような文書と一致させる必要があるってこと。ここから新しい疑問が出てくるよ：そういうのに合う現実世界の文書って，どう特徴づけて見つけたらいいんだろう？何が重要な特徴で，そのうちどれが私たちの使いたい場面に簡単に応用できるか，どうやって決められるんだろうね？" userName="Terr_" createdAt="2025/05/15 03:31:35" color="#ff5733">}}




{{<matomeQuote body="簡単そうだね。あいまいなリクエストをいくつか用意して、適当に推測するんじゃなくて「詳しく教えて」って聞くように学習させればいいじゃん。" userName="jsnider3" createdAt="2025/05/15 11:30:24" color="">}}




{{<matomeQuote body="人間の脳のこと、よく分かってないでしょ？ だから、LLMが「分かりません」って言うメカニズムが人間と同じと自信持って言えないんだよね。むしろ違う理由がいっぱいありそう。" userName="foldr" createdAt="2025/05/15 13:58:00" color="">}}




{{<matomeQuote body="それ、古くて言葉遊びみたいな議論じゃないし、セマンティクスだけじゃなくてLLMの基礎的な特性だよ。<br>トークン予測モデルでも「x, y, zの理由で分からない、詳しく教えて？」って学習できるって？ 確かにそう。で、肝心なのは「学習できる」、つまり訓練が必要なの！<br>初期にあった創発能力は小さすぎて、今は人工データとかで意図的に学習させてる。これで賢くなってるけど、もう開発者の知能が限界。Artificial Intelligence じゃなくて Simulated Intelligence って感じかな。" userName="littlestymaar" createdAt="2025/05/15 07:05:43" color="#ff5733">}}




{{<matomeQuote body="それは間違いなく古くて言葉遊びみたいな議論。彼も言ってたけど洞察もないし、アナロジーとしてもダメ。<br>Draculaとは会話できないし、現実世界に影響する決定もできない。LLMは「ドキュメントシミュレーター」の前提を既に破ってる。<br>事前学習済みLLMは普通に質問してくるよ。だからこれ、たぶん後段のファインチューニングの結果だと思うな。" userName="og_kalu" createdAt="2025/05/15 09:56:42" color="">}}




{{<matomeQuote body="それは出力の質を上げるためだよ。より良い解決策のため。こういうのは最先端の推論モデル（サブスク限定）で、もっと賢いんだ。<br>あと、特に明確な文脈があって、レビューとかフィードバックが必要な作業（ハンドブックのドラフトとか）を共同でやってる時によく起こるね。<br>ChatGPTが医療の質問で、すぐに冒頭で質問するのを見たことあるよ。" userName="voidspark" createdAt="2025/05/15 04:48:14" color="">}}




{{<matomeQuote body="君、自分の主張守ろうとしてるだけだよ。<br>俺はいろんな会話モードでLLMを動かしてるけど、明確にする質問、探る質問、基準を確認する質問とかちゃんと聞いてくるって。<br>プロンプトに一文足すだけでそういう風に動くようにできるんだから。" userName="sitkack" createdAt="2025/05/15 04:24:51" color="">}}




{{<matomeQuote body="＞ Draculaは現実世界に影響する決定はできない。だからLLMは「ドキュメントシミュレーター」の鍵となる側面や前提を既に破ってる。<br>バカなこと言うなよ。俺たちは既に、現実世界に「影響する」意識のないアルゴリズム（とその出力）に囲まれてるだろ。俺たちの多くがそれを実現するためにフルタイムで働いてるんだから！<br>誰かがSimCityみたいなプログラムで現実のバス時刻表用のスプレッドシート作ったら、それ「交通シミュレーターの前提破る」ことになる？ その下流の影響が、小さな命の縮図に高める？ 違うだろ！" userName="Terr_" createdAt="2025/05/15 17:02:09" color="">}}




{{<matomeQuote body="君、俺の言いたいこと分かってないね。<br>Draculaに関する俺の指摘は、彼が架空なだけじゃなくて、現実世界で予測不能な決定やインタラクティブな会話ができないってこと。彼は作者の書いた通りにしか動かない。テキストは不変だ。<br>LLMはプロンプトごとに新しい推論で**決定**（実行時の分岐）をする、これがダイナミックなんだ。「ドキュメントシミュレーター」はこれを固定された文章みたいに扱ってるからおかしい。<br>SimCityは人間が結果を見るオープンループだけど、LLMはツールと一緒にメール書いたりAPI呼んだり、あるいはユーザーに質問したり（「どこの都市？」とか）するクローズドループもあるんだ。<br>君の主張は古くて言葉遊び。アナロジーとして最低だから。" userName="og_kalu" createdAt="2025/05/15 18:23:32" color="">}}




{{<matomeQuote body="君、GoogleかOpenAIで働いてる？フロンティアモデル担当してる？<br>医療質問では、詳しい情報が必要だから質問するんだよ。そういう訓練を受けてるの。<br>他のケースでも、なんで詳細聞いたか推論プロセス見れば分かるはず。ただ質問するだけでLLMが質問するの、見たことないな。常に文脈に沿ってる。カジュアルに使ってるわけじゃないんだ。つい最近ハンドブック2冊（100ページくらい）書いたとこ。Geminiで数万トークン生成してるよ。" userName="voidspark" createdAt="2025/05/15 09:31:42" color="">}}




{{<matomeQuote body="ちなみに、俺が話してるのは人間の失敗パターンであって、仕組みじゃないんだ。<br>あと、返信してるコメントの”would”は”does”より”could”に近いと思うよ" userName="ben_w" createdAt="2025/05/16 08:16:00" color="">}}




{{<matomeQuote body="君が立てた”document simulator”ってのは、変更できない一発勝負のドキュメント作成プロセスって君が勝手に定義した藁人形だろ？<br>LLMはもうそういう前提を壊してるし、皆が話してるのは人間や外部システムとのやり取りでドキュメントが成長していく反復的なシステムのことだよ。君の定義はナンセンスだ。" userName="Terr_" createdAt="2025/05/15 20:16:56" color="#38d3d3">}}




{{<matomeQuote body="よくあるパターン気をつけろよ：<br>- ”今、 complete [result] をあげようか、 fulfilling [all your demands] するために？”<br>- ”just say [go] そしたらやるよ”<br>- ”[A, B, or C] のどれかがいい？”<br>- ”[5-15] minutes で complete result をあげるよ”<br>…みたいなの" userName="rrr_oh_man" createdAt="2025/05/15 10:57:28" color="#ff33a1">}}




{{<matomeQuote body="ChatGPTみたいなのが出てきてまだ数年だろ。<br>Fordがオートマチックトランスミッションを作るのにもっと時間かかったんだぜ。" userName="jsnider3" createdAt="2025/05/15 18:00:10" color="">}}




{{<matomeQuote body="仕組みが似てる必要はなくて、形態的な意味で類似してるだけでいいんだよ。" userName="Sharlin" createdAt="2025/05/15 21:58:05" color="">}}




{{<matomeQuote body="言葉は多いけど、君LLM使ったことないんじゃない？（辛口でごめん）<br>LLMはいつも内省してるように見えるじゃん。DeepSeek-AIの論文[1]でも、訓練が進むと再検討する能力が出てきて、’wait, ...’とか’alternatively, ...’ってフレーズで示されるって報告してるんだよ。<br>[1] https://arxiv.org/pdf/2504.07128" userName="simianwords" createdAt="2025/05/15 06:49:23" color="#785bff">}}




{{<matomeQuote body="Anthropicの研究によると、Claudeは内省してるフリはするけど、実際は違う仕組みなんだ。後付けでそれっぽい理由を考えるけど、フリだから間違う。<br>モデルに質問させるように教えるのはできるけど、本当に必要な時が分かるのか、それともランダムなのか？自分の能力への洞察力マジひどいんだよ。ChatGPTなんて点字読めるって言い張って幻覚生成するし。" userName="roywiggins" createdAt="2025/05/15 05:25:13" color="#ff33a1">}}




{{<matomeQuote body="俺は勝手に定義してない。君の”movie-script”の比較がおかしいんだって話だ。<br>吸血鬼みたいに、スクリプトが固定されてるから浅い内省しかできないんだ。<br>LLMみたいにその場で生成され、ユーザーとやり取りしたり状況を更新したりするテキストは、ページが固定された脚本とは全然違うだろ。<br>藁人形じゃない、君がLLMを’本物’と見たくないからそう言ってるだけだ。" userName="og_kalu" createdAt="2025/05/15 21:14:28" color="#ff33a1">}}




{{<matomeQuote body="’Analogous in the morphology sense’は’similar’よりもっと専門的な概念だよ。でもどっちにしても、それがanalogousなのか、similarなのか、あるいは君が好きなどんな言葉でもいいけど、結局はまだ分かってないんだ。LLMと人間の脳の両方をちゃんと理解して、それらが基本的に同じように機能するって自信満々に主張できる人は、ぜひ頑張って論文を書いてノーベル賞を一つか二つ取るべきだね。" userName="foldr" createdAt="2025/05/15 22:57:28" color="">}}




{{<matomeQuote body="だから難しい？簡単じゃないってこと？わたしもそれに同意するよ。でも自動変速機のアナロジーはちょっと違うと思うな。コンピューターに本当の知能をプログラミングするのは、車のギアボックスを作るより桁違いに複雑で難しいだろうね。" userName="joleyj" createdAt="2025/05/15 18:36:38" color="">}}




{{<matomeQuote body="わたしはよく、そこまでの議論の簡潔な要約をLLMにプロンプト形式で作らせて、それを適切に編集してから新しい会話を始めるのに使ってるよ。荷物なしでね。これはすごく効果的なテクニックだって分かったけど、すぐに自動化されるだろうね。" userName="tmountain" createdAt="2025/05/15 11:45:27" color="#ff5c5c">}}




{{<matomeQuote body="Cursorっていうツールがこれを自動でやろうとしてたんだ。gemini 2.5 proみたいな大規模コンテキストモデルを使ってないならまだやってるかもね。でも、その要約は詳細が失われすぎてて、そのままでは使えなかったよ。" userName="drewbitt" createdAt="2025/05/15 18:52:04" color="#ff33a1">}}




{{<matomeQuote body="Claude Codeには、これまでの会話を要約してコンテキストトークンを節約する”/compact”コマンドがあるよ。" userName="maleldil" createdAt="2025/05/15 17:00:30" color="">}}




{{<matomeQuote body="TSCE（Two-Step Contextual Enrichment）っていう手法を開発したんだ。これでGPT-3.5-turboとかGPT-4.1の精度がかなり向上したよ。em-dash削除タスクで試したら、ベースラインより全然失敗が少なかったんだ。GitHubにフレームワークと全データ、スクリプトがあるから見てみて。https://github.com/AutomationOptimization/tsce_demo" userName="airylizard" createdAt="2025/05/15 04:43:14" color="#ff5733">}}




{{<matomeQuote body="「find and replace」操作に大量のkilo-watt-hoursを無駄にしたんだね。text.replace（”—”， ”-”）って聞いたことない？" userName="arnaudsm" createdAt="2025/05/15 13:21:41" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そのテストはLLMが文字列を見つけて置き換えるのがどれだけ得意かじゃないよ。与えられた指示をどれだけちゃんと実行できるか、ってことだよ。それ、そんなに分からない？" userName="airylizard" createdAt="2025/05/15 15:09:54" color="">}}




{{<matomeQuote body="あなたのベースラインのem dashの例をちょっと調整したら、GPT-4.1で100%成功したよ。追加の呼び出しも、トークンも、難しい言葉もなしにね。システムプロンプトは”Remove every em-dash (—) from the following text while leaving other characters unchanged.<br><br>Return only the cleaned text.”ユーザープロンプトは＜prompt from tsce_chat.py filled with em dashes＞で、Temperatureは0.0だよ。" userName="thegeomaster" createdAt="2025/05/15 11:19:01" color="#ff33a1">}}




{{<matomeQuote body="やってみてくれてありがとう！<br>君がやってくれた実行はGPT-4.1が出た直後のテストだからだよ。その後OpenAIがモデルを更新してem-dashのミスが直ったんだ。<br>今日もう一度実行すれば、わたしが今得ているのと同じ改善されたパス率が見られるだろうね。それが最新モデル名でベンチマークする欠点なんだ。日付を固定しないと、挙動が静かに変わっちゃうんだよね。<br>でも、複雑なプロンプトとかGPT-3.5-turboではTSCEはまだまだ有効だよ。フレームワークの価値は健在さ。チェックしてくれて感謝！" userName="airylizard" createdAt="2025/05/15 15:53:16" color="#785bff">}}




{{<matomeQuote body="gpt-4.1の重みが数回更新されたって情報、どこから来てるの？OpenAIのドキュメント見ると、gpt-4.1は`gpt-4.1-2025-04-14`っていう特定のsnapshotを指してて、それは変わってないみたいだよ。エイリアスも今でもそれに紐付いてる[1]。念のためテストを再実行したけど、やっぱり100%パスするよ。[1]: https://platform.openai.com/docs/models/gpt-4.1" userName="thegeomaster" createdAt="2025/05/15 16:24:40" color="#38d3d3">}}




{{<matomeQuote body="そうだね、4.1の学習済みモデルは変わってない。変わったのは上に乗ってる部分だよ。decoder heuristicsとかsafety filtersとかlogit-bias rulesみたいに、OpenAIが再学習なしでホットスワップできるやつね。<br>そういう”serving-layer”の調整が、短いクリーンなプロンプトでの明らかなem-dashの間違いを直したんだ。<br>だからApril-14の重みは変わってないけど、パイプラインが初日より厳しくなったんだ。<br>どうぞ、どんどん穴を探してみて！売るものはないし、洞察をシェアしてストレステストするのは楽しいよ。" userName="airylizard" createdAt="2025/05/15 19:10:43" color="#ff5c5c">}}




{{<matomeQuote body="この問題を解決するために結構うまくいってる方法に取り組んでるんだ。近いうちに詳しくシェアするね。これは2つのシステムを使うんだ。1つはLLM自身で、もう1つは”思考のキュレーター”みたいな役割をするシステムだよ。文脈の一部を動的に出し入れするんだ。これは明示的な定義じゃなくて、LLMが”隙間を埋める”ことに頼ってる。システムはLLMが問題を小さなタスクに分解するのを助けて、それが最終的に大きなタスクになるんだ。" userName="zacksiri" createdAt="2025/05/15 03:08:29" color="#38d3d3">}}




{{<matomeQuote body="それはすごく良いアイデアだね。やってることは、まさにチャットに対するRAGだよ。将来的には、記憶の階層構造がもっとはっきりすると思う。トレーニングデータのPrimary memory、コンテキストのSecondary memory、RAGのTertiary memoryみたいにね。" userName="simianwords" createdAt="2025/05/15 06:56:46" color="">}}




{{<matomeQuote body="excitingなアイデアみたいだね。提案なんだけど、まずは持ってるものを公開してみたら？たとえちょっとしたプロンプトだけでも。もし良いアイデアなら、それを見た人が改善したり、他の人が取り組んだりして、独り歩きするかもしれないよ！" userName="cadamsdotcom" createdAt="2025/05/15 04:15:07" color="">}}




{{<matomeQuote body="ここに初期のプレビューがあるよ。https://x.com/zacksiri/status/1922500206127349958 自己紹介から始まって、名前を聞いて、何かトピックについて答えられてる。スレッドにもう一つ例があるよ。裏側では、システムプロンプトがユーザーのリクエストに基づいて動的に変更されてる。映画に関する情報も全部dynamicallyにコンテキストに読み込まれてる。あと、内容が変わった時にコンテキストから情報をunloadするテクニックも研究中。友達と長話してて、”コンテキスト切り替え”する感じかな。”main thread”と”sub threads”の概念も探求してる。コードベースは数ヶ月以内に公開予定。デモをもっと進めないとね。" userName="zacksiri" createdAt="2025/05/15 04:30:36" color="#38d3d3">}}




{{<matomeQuote body="これはEmotion Machineにおけるmental criticの一種だね。" userName="adrianm" createdAt="2025/05/15 04:46:54" color="">}}




{{<matomeQuote body="研究成果はYouTubeチャンネルとブログで公開してるよ。よかったら見てみて。リンクはプロフィールにあるよ。" userName="zacksiri" createdAt="2025/05/15 03:51:45" color="">}}




{{<matomeQuote body="じゃあ、Map-Reduce-of-Thoughtってこと？" userName="layer8" createdAt="2025/05/15 06:24:15" color="">}}




{{<matomeQuote body="主要なchat toolでbranching／forkingが主要機能じゃないのは驚きだよね．応答はeditできるけど，他のcontextがたくさん失われちゃう．俺のflowはこんな感じ：<br>1．plan<br>2．build<br>3．branch （あるfeature／esoteric dependency issueへ）<br>4．goto ＃2<br>Prompt pruning／branchingは，どんなLLM利用でも一番大事なtoolになるべきだよ．" userName="jumploops" createdAt="2025/05/15 06:15:06" color="#45d325">}}




{{<matomeQuote body="Google AI studioには少なくともこれがあるよ．でも，あのimplementationは正直かなり分かりにくかったんだよね．それが，もっと”consumer oriented”なtoolにimplementationされない理由かもしれないね．" userName="jampekka" createdAt="2025/05/15 08:51:46" color="">}}




{{<matomeQuote body="前からこれ（branching）を作ろうか考えてたんだよね．BetterChatGPTは少なくともhistoryを消すあたりのergonomicsは良い感じ．でも，branchingが次のstepだってのはagreeするよ．" userName="Capricorn2481" createdAt="2025/05/15 06:53:17" color="">}}




{{<matomeQuote body="single turn conversationを軸にLLM interfaceを構築すると，noticable issueがあるよね．Majorityの人々はlinear conversationをexpectしてるし．俺はtelegram bot http://t.me/experai_bot をunivresal UIとして作ったんだけど（somewhat reduced functionalityだけど），まさに”non-reply message means new conversation”っていうideaを軸にしたんだ．contextをkeepしたい？ Keep replying to replies of botだよ．Non-power user strugge with this ideaみたいだけど．<br>--Also俺はOpenAI modelsがsame questionsにreplyするとworse performするのをobservedしたんだ（for example list of options in reply got shorterとか）．あれは3．5, 4oの場合ね．modern onesはどう動くかDon’t know．それがdefaultでany system messagesをincludeしないってdecideさせた理由なんだ．Still I give option to add ones if you need．You can even toggle them to mix-and-match．" userName="podgorniy" createdAt="2025/05/15 08:13:45" color="#ff5733">}}




{{<matomeQuote body="It’s herding cats，not ”learning”，which is a fine situation for some parts of workflows．" userName="meroes" createdAt="2025/05/15 05:14:35" color="">}}




{{<matomeQuote body="And everyone loves to chime in with their own excellence in prompt engineering" userName="dankwizard" createdAt="2025/05/15 03:28:04" color="">}}




{{<matomeQuote body="これが，俺がpromptdownを書いたmain reasonだよ．I want to be able to edit the full chat history every turn，and the append-only standard chat interfaces don’t make that easy．https://github.com/t-kalinowski/promptdown" userName="t-kalinowski" createdAt="2025/05/15 11:29:57" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
