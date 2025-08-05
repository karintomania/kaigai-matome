+++
date = '2025-07-29T00:00:00'
months = '2025/07'
draft = false
title = 'まさか！2.5年前のノートPCが最新AI GLM-4.5 AirでJavaScriptのインベーダーを生成可能に'
tags = ["AI", "プログラミング", "JavaScript", "LLM", "オープンソース"]
featureimage = 'thumbnails/green2.jpg'
+++

> まさか！2.5年前のノートPCが最新AI GLM-4.5 AirでJavaScriptのインベーダーを生成可能に

引用元：[https://news.ycombinator.com/item?id=44723316](https://news.ycombinator.com/item?id=44723316)




{{<matomeQuote body="2年前のノートPCでGLM 4.5 AirとかMistral 3.2 Smallみたいな高性能LLMが動くなんて、ほんと夢みたいだね。ChatGPTが出た頃のオープンモデルはひどかったけど、LLaMAのリーク（あれはわざとだろうけど！）からLLMの世界は激変した。LoRAとかファインチューニングとか最適化が進んで、今は最先端モデルにたった6ヶ月遅れなんだって！信じられない進化だよ。家でこんなモデルをいじれるなんて最高だね。" userName="NitpickLawyer" createdAt="2025/07/29 14:03:00" color="#38d3d3">}}




{{<matomeQuote body="LLMのLoRAやファインチューニングってどうやるんだ？何か月も聞いてるのにまともな答えがないんだよ。SDのLoRAは2年前から使えるのに、LLMのLoRAってそんなに秘密なのか？ウェブ検索もSEO/GEO-SPAMばっかで役に立たないし、イライラするぜ。" userName="genewitch" createdAt="2025/07/29 15:23:21" color="">}}




{{<matomeQuote body="GLM 4.5ってQwen3 coderよりいいの？" userName="tonyhart7" createdAt="2025/07/29 14:16:49" color="">}}




{{<matomeQuote body="どのLLMが“一般的に”いいかなんて言えないね。モデルはそれぞれ得意なことが違うんだから。俺は自分でベンチマーク作って、いろんなローカルモデルを試してるよ。どのタスクにどのモデルがいいか、自分で見つけるのが一番確実だね。“なんとなくいい感じ”じゃなくて、ちゃんとデータで見るのが大事だよ。" userName="diggan" createdAt="2025/07/29 14:19:32" color="#ff33a1">}}




{{<matomeQuote body="コーディングの話？それってコーディングモデルなの？具体的にどのタスクでどっちがいいんだ？" userName="kelvinjps10" createdAt="2025/07/29 15:16:19" color="">}}




{{<matomeQuote body="俺たちはAxolotlとUnslothでファインチューニングしてるよ。Axolotlの方がちょっと好きかな。ドキュメントをチェックして、最初のモデルをファインチューニングしたり、量子化したりしてみるといいよ。学ぶことは多いけど、この分野はめっちゃエキサイティングだぜ！<br>0: https://axolotl.ai/ and https://docs.axolotl.ai/" userName="techwizrd" createdAt="2025/07/29 15:52:57" color="#45d325">}}




{{<matomeQuote body="LLMのファインチューニングは、気をつけないとモデルの能力をぶち壊しちゃうこと多いよ。画像生成みたいに簡単じゃないし、効果を出すのも難しいんだ。" userName="qcnguy" createdAt="2025/07/29 16:31:26" color="#ff33a1">}}




{{<matomeQuote body="そうかもしれないけど、コーディングっていろんな言語やアプローチがあるから、一つのモデルが全部に勝つなんてことはないんだよ。だからこそ、自分のベンチマークを作るべきなんだ。“なんとなくいい感じ”って判断するんじゃなくて、ちゃんとリストで比較して何がいいか見つけ出すんだよ。" userName="diggan" createdAt="2025/07/29 15:51:18" color="#ff33a1">}}




{{<matomeQuote body="ベースモデルのプロンプトエンジニアリングよりファインチューニングの方がいい時って、どんな時だと思う？ファインチューニングだと、自己ホスティングとかLLMの利用、新しいベースモデルが出たら再学習とか、大変なことも多いでしょ。どんな状況でメリットがデメリットを上回ると思ったか教えて欲しいな。" userName="arkmm" createdAt="2025/07/29 16:59:49" color="#ff5733">}}




{{<matomeQuote body="GLM 4.5はコーディングモデルじゃないってばよ。" userName="whimsicalism" createdAt="2025/07/29 15:54:57" color="">}}




{{<matomeQuote body="モデルの能力が落ちてるかどうかって、どうやって客観的に測るの？何か提案ある？" userName="israrkhan" createdAt="2025/07/29 23:13:51" color="">}}




{{<matomeQuote body="コーディングって一種類の活動じゃないから、一つのモデルが全部のモデルに勝つわけじゃないよ。一つのコーディングモデルを別のモデルに置き換えられないなら、人間コーダーをモデルに置き換えるなんて想像しにくいよね。" userName="reverius42" createdAt="2025/07/30 07:15:34" color="">}}




{{<matomeQuote body="コード専用じゃないけど、GLM 4.5はコーディングにがっつり学習されてるよ。プリトレーニングで15Tトークンの汎用コーパス、その後7Tトークンのコード＆推論コーパスを使ってるんだ。詳細はこのノート見てね: https://simonwillison.net/2025/Jul/28/glm-45/" userName="simonw" createdAt="2025/07/29 15:58:28" color="#ff5c5c">}}




{{<matomeQuote body="うん、今の推論モデルはみんなそうだけど、ds coderとかQwen coderとは違うよ。" userName="whimsicalism" createdAt="2025/07/29 16:00:28" color="">}}




{{<matomeQuote body="ベテランのCOBOLプログラマーをベテランのHaskellプログラマーに置き換えられないでしょ？だからって、どちらかがプログラミング全体が下手ってことになるの？" userName="Philpax" createdAt="2025/07/30 11:52:47" color="">}}




{{<matomeQuote body="モデルをトレーニングする前と後で、同じ質問を一連で投げかけてみて。品質が下がってるか確かめるんだ。" userName="RALaBarge" createdAt="2025/07/30 00:05:27" color="">}}




{{<matomeQuote body="セルフホスティング向けに、LoRAファインチューンのトークン課金サービスがあるよ。うちの会社SyntheticもLlama 3.1 8b/70bをサポートしてる: https://synthetic.new 他にはTogether.aiやFireworksも同じようなサービスを提供してるんだ。タスクが限定的なら、小さな8bモデルでもファインチューンすれば、大きなSOTAモデルよりずっと性能が良くて安価だよ。" userName="reissbaker" createdAt="2025/07/29 18:30:13" color="#38d3d3">}}




{{<matomeQuote body="GLM 4.5とQwen3-235B-A22B-Instruct-2507のトレーニングプロセスって、コード関連の追加RL学習を大量にやったって点で、そんなに違うと思えないんだけど。何か見落としてるかな？" userName="simonw" createdAt="2025/07/29 16:02:43" color="#45d325">}}




{{<matomeQuote body="AppleハードウェアならMLXがいいぞ。" userName="svachalek" createdAt="2025/07/29 16:19:40" color="#ff33a1">}}




{{<matomeQuote body="特定の領域しか測れない質問の仕方だな。モデルが他の能力を失うのが心配だわ。そこは気にかけないし、知るすべもないのが問題。" userName="israrkhan" createdAt="2025/07/30 06:38:03" color="">}}




{{<matomeQuote body="LLM LoRAの秘密って何？ LLMにはまだ明確な使い道がないよ。「Spicy」な（つまりポルノ）ファインチューニングだけが広まってるけど、ここでは上品に振る舞うからその話はしないでおくぜ。" userName="otabdeveloper4" createdAt="2025/07/30 06:56:48" color="">}}




{{<matomeQuote body="プログラマーが代替不可能なら、AIで何千人も置き換えるって企業はどういうつもりなんだろうな？" userName="reverius42" createdAt="2025/07/30 13:06:15" color="#785bff">}}




{{<matomeQuote body="EUでDeepSeek、Qwen3、Kimiみたいなモデルをホストしてくれる会社、知ってる？" userName="delijati" createdAt="2025/07/29 22:50:52" color="">}}




{{<matomeQuote body="Unslothの推奨によると、推論/指示能力を維持するにはめっちゃ頑張る必要があるみたい。例えばQwen3の推論能力を「維持」するには、75%のChain of Thoughtと25%の非推論のファインチューニングコーパスを提案してる。これってファインチューニングに頼ってる組織にとっては大問題なの？[1] https://docs.unsloth.ai/basics/qwen3-how-to-run-and-fine-tun..." userName="nxobject" createdAt="2025/07/30 11:14:19" color="#ff5733">}}




{{<matomeQuote body="unslothはメモリ要件が低いから、ファインチューニングするには一番簡単な方法だぜ。" userName="electroglyph" createdAt="2025/07/29 19:33:53" color="#45d325">}}




{{<matomeQuote body="PRとしてマグネット（Torrent）のURL付きでリークされたみたいだぞ。" userName="eckelhesten" createdAt="2025/07/31 07:06:28" color="">}}




{{<matomeQuote body="brev.devが以前、分かりやすいガイドを出してたんだけど、Nvidiaが買収した時に削除しちゃったみたい？だから元のリンクを貼っておくね。<br>https://web.archive.org/web/20231127123701/https://brev.dev/..." userName="jasonjmcghee" createdAt="2025/07/29 22:57:52" color="#38d3d3">}}




{{<matomeQuote body="2.5年前のMacBook Pro M2（64GB）で動くモデルが、初回で修正なしにコードを生成できたのはすごいことだと思うな。既存のハードウェアの能力を過小評価してるんじゃないか。ビットレッスンや効率的計算のフロンティアみたいな話が、革新的なアプローチの研究から優秀な人たちを遠ざけてる気がするよ。訓練後の重みの精度をどれだけ下げても変な結果が出ないのを見ると、今のモデルってめちゃくちゃ非効率なのがわかるよね。" userName="bob1029" createdAt="2025/07/29 16:38:04" color="#785bff">}}




{{<matomeQuote body="ビットレッスンって、大量のデータで訓練することじゃなかったっけ？彼が使ってるモデルも22兆トークンっていう途方もないデータで訓練されてるんでしょ。" userName="jonas21" createdAt="2025/07/29 16:41:12" color="">}}




{{<matomeQuote body="GP（元の投稿者）が言いたいのは、ビットレッスン（より多くのデータ、より多くの計算が勝利する）を信じ込むと、限られた計算環境でSOTAから一歩手前の性能を引き出す方法を考えなくなっちゃう、ってことだと思うな。" userName="itsalotoffun" createdAt="2025/07/29 16:52:45" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="そうそう。CPUの速度が足りなくなったらGPUに移ったように、これも同じだね。(22兆)モデル、量子化、精度を落とすことにもっと取り組むことで、新しい方法をどんどん見つけられるようになるよ。" userName="reactordev" createdAt="2025/07/30 02:25:14" color="">}}




{{<matomeQuote body="それが量子化とどう関係あるの？" userName="yahoozoo" createdAt="2025/07/29 16:50:25" color="">}}




{{<matomeQuote body="すごくよく言えてるよ。小規模なモデルや既存のハードウェアを使うことで得られるものはたくさんあるね。多くの企業PMは、API経由で最先端のLLMをいきなり使いたがるけど、自己ホスト型LLMやファインチューンされた小型モデルでも、予備的なステップをこなしたり、タスク全体をはるかに安く処理できる仕事はたくさんあるんだ。自己ホスト型モデルで今日できることを見て、1年後や5年後にもっと高性能なハードウェアとさらに良いモデルが出てきたらどうなるか想像してみてよ。" userName="Breza" createdAt="2025/08/01 16:09:50" color="#45d325">}}




{{<matomeQuote body="実装を理解したの？それとも、ただ結果が出ただけ？LLMが一般的な面接の質問にデタラメな答えを出すのは期待できるけどさ。今日、同僚がLLMを使ってJSONの表示アプリを作ってたけど、既存のアプリを使えばいいのにって思ったよ。周りの人はLLMをプレゼン資料の作成に使ってばかりで、実用的な実装には使ってないな。別の同僚は、資料の一括更新マクロをLLMで作成しようとして、かえって複雑にしてたよ。そのソリューションは作った本人以外には全く使えないものだったね。" userName="righthand" createdAt="2025/07/29 15:53:33" color="#785bff">}}




{{<matomeQuote body="コードはざっと見て、何をしているかは理解したけど、動くと分かってからはあまり時間をかけなかったな。もしLLMを使って本番システム用のコードを書くなら、今でも全行レビューしてるよ。個人的なルールとして、他の人に説明できるようにならないとコミットしないことにしているんだ。LLMを使った“本物の”コード作成へのアプローチについては、ここで詳しく書いたから読んでみてね。<br>https://simonwillison.net/2025/Mar/11/using-llms-for-code/" userName="simonw" createdAt="2025/07/29 15:56:06" color="#ff5733">}}




{{<matomeQuote body="Deep-Seekの思考プロセスが読めるから、その判断が正しいか確認できて良いね。Simonのモデルに関する貴重な記事、本当にありがとう！" userName="photon_lines" createdAt="2025/07/29 16:33:11" color="#785bff">}}




{{<matomeQuote body="注意！モデルの出力と「思考」は必ずしも一致しないって研究が多いよ。論理やコーディングで試すと、最終出力が思考の結末と違うこと、全く関係ないことも。読むのは良いけど、出力は常に注意して見てね。" userName="vessenes" createdAt="2025/07/29 20:56:02" color="#ff33a1">}}




{{<matomeQuote body="いい指摘だね。俺はプロジェクトの初期計画でDeepSeek使ってるよ、推論出力がマジで役立つから。問題と設計案を伝えると「モバイル最適化が必要だ…」とか出てくるから、生成止めてプロンプト修正して再実行するんだ。" userName="Breza" createdAt="2025/08/01 16:15:31" color="#ff5c5c">}}




{{<matomeQuote body="LLMでコード作って、デバッグして全行読むのが正しい使い方。本番で怖がる人もいるけど、Coursera1つしかやってない奴がJS書くよりマシ。LLMが書いたって言うけど、実際は熟練オペレーターが動かす重機みたいなもんだ。俺がドリルで穴開けたからってエンジニアじゃないだろ？Archicadが計算しても、エンジニアのサインがないと建物は承認されない。" userName="larodi" createdAt="2025/07/30 09:08:32" color="#785bff">}}




{{<matomeQuote body="真面目な質問なんだけどさ、本番で使うコードを検証するために全行読むなら、最初から自分で全部書けばよくね？" userName="shortrounddev2" createdAt="2025/07/29 20:00:08" color="#ff5c5c">}}




{{<matomeQuote body="だってさ、100行のコードを書くより、100行のコードをレビューする方が圧倒的に速いからだよ。（俺はコードの読み書きやレビューは慣れてるし。）" userName="simonw" createdAt="2025/07/29 20:28:30" color="#ff33a1">}}




{{<matomeQuote body="それって、バグとかセキュリティの穴を本番に入れちゃう原因になりそうじゃん？レビューってマジで難しいんだよ、心理的にね。脳が「わかったふり」しちゃうんだ。人間は意識的に「レビューする」ってやらないとダメ。https://en.wikipedia.org/wiki/Pointing_and_calling やチェックリスト、Tom Gilbのレビュープロセスとか。HNでも「APIキー漏れてるよ」って話はよくあるし。まぁインベーダーのクローンならレビューは関係ないけどね。" userName="yencabulator" createdAt="2025/07/30 20:35:39" color="#ff33a1">}}




{{<matomeQuote body="モデルに何を書くかきっちり指示してれば、レビューはそんなに難しくないんだよ。https://simonwillison.net/2025/Mar/11/using-llms-for-code/#t..." userName="simonw" createdAt="2025/07/30 21:11:24" color="#ff5c5c">}}




{{<matomeQuote body="Simon、自分の書く能力が「退化」するのって怖くない？" userName="paufernandez" createdAt="2025/07/29 22:37:12" color="">}}




{{<matomeQuote body="ちょっとは能力が落ちるかもだけど、心配してないよ。ペンで書くのは下手になったけど、スマホやPCで書く量はめちゃ増えたし。LLMなしだとコード書くのは遅くなるだろうけど、その分、役立つコードの量が爆増するなら、全然アリだと思ってる。" userName="simonw" createdAt="2025/07/29 23:38:18" color="#45d325">}}




{{<matomeQuote body="他の人のコード（LLMが書いたコードも）を読むのは、プログラミング能力を向上させる最高のやり方の一つだよ。コードを読むのを避けるためにLLMを使ってる怠け者は「vibe coding」って呼ばれてるけど、彼らは誰が書いたコードを読まなくても能力が落ちる一方さ。" userName="DonHopkins" createdAt="2025/07/30 09:21:46" color="#785bff">}}




{{<matomeQuote body="ほとんどの無脳な企業向けCRUDコード以外では、絶対に違うね。俺たちはコードを読むのが大嫌いだし、毎回その手間は避けたい。でも、それが簡単って意味じゃないからな。" userName="otabdeveloper4" createdAt="2025/07/30 07:09:55" color="">}}




{{<matomeQuote body="”俺たちはコードを読むのが大嫌い”って、それはお前だけの話だろ。俺はコード読むのが大好きなんだ！確かに大変でエネルギーも使うけど、もし嫌いなら他のこと探した方がいいんじゃない？コードを読むのが嫌いなプログラマーは、道を見るのが嫌いなバス運転手みたいなもんだぜ。危険で、客や一般の人に害になるからな。" userName="DonHopkins" createdAt="2025/07/30 09:23:53" color="#45d325">}}




{{<matomeQuote body="HNコメントで個人攻撃するのはやめてくれ。https://news.ycombinator.com/newsguidelines.html<br>Edit: これでもう二度目だぞ - https://news.ycombinator.com/item?id=44110785。もうこれで終わりにしよう。<br>Edit 2: お前が頻繁に、嫌がらせに近い abusive な返信をしてることが分かったぞ。例えば、https://news.ycombinator.com/item?id=44725284 （2025年7月）とか、これはほんの一部だ！<br>こんなやり方はひどいし、受け入れられない。自分がどれだけ正しいと思っていても、HNで他のユーザーを攻撃しちゃダメだ。このまま続けるなら、BANすることになるから、今すぐやめてくれ。" userName="dang" createdAt="2025/07/29 18:49:50" color="#ff5733">}}




{{<matomeQuote body="彼らは”production systems”って言ったんであって、”critical production applications”とは言ってないぞ。それと、彼らは”I still”って言ってるから、その”if”は何も否定してない。その行動が活発に、継続的に起きてるって意味だ。”I still would”みたいに、”still”の後に仮定や条件を付けてないからな。" userName="ajcp" createdAt="2025/07/29 16:37:07" color="">}}




{{<matomeQuote body="お前が今話してる相手が、Django、Datassette、Lanyrdの作者だってわかってるか？" userName="bnchrch" createdAt="2025/07/29 16:28:04" color="#ff5733">}}




{{<matomeQuote body="話はそれるけど、Djangoは本当にひどくて、ひどいコードの臭いがする塊だよ。（俺はDjangoプログラマーじゃない。でも彼らを管理してるし、Django汚染プロジェクトと普通のプロジェクトを比較できるからな。）" userName="otabdeveloper4" createdAt="2025/07/30 07:12:30" color="">}}




{{<matomeQuote body="彼がSpace Invadersのゲームを本番環境に入れるって言った部分を見逃したんだけど。リンクある？" userName="CamperBob2" createdAt="2025/07/29 16:23:31" color="">}}




{{<matomeQuote body="AIは使い捨てコードに超向いてるけど、既存コードのバグ修正とか新機能追加みたいな超重要な作業には向いてないね。それに、使い捨てコードってジュニアプログラマーが学ぶのに使うから、AIがやると彼らの学びの場を奪っちゃうのが問題だね。" userName="bsder" createdAt="2025/07/29 21:21:56" color="#785bff">}}




{{<matomeQuote body="AIが使い捨てコード作ると、PHBが変なアイデアを「魔法のロボット」に丸投げして、意味不明な「コード」を本番環境に入れちゃうかも。そのせいで、マジな開発者たちがクビになる可能性もあるってことだね。" userName="giantrobot" createdAt="2025/07/30 14:02:20" color="">}}




{{<matomeQuote body="AIに飛びつく会社は3ヶ月から2年で潰れると思うから、PHBがバカを晒すのは大歓迎だよ。僕ら非PHBは、LLMをもっとリスクの少ない方法で使う方法を探すべきだね。例えば、ソフトウェアの正確性をLLMで証明したり、新しいテストケースを生成したりとか、そういう使い方ならアリかも。" userName="yencabulator" createdAt="2025/07/30 20:47:33" color="#ff5c5c">}}




{{<matomeQuote body="このコメントは3年くらい遅れてるよ。GPT-3以降のモデルは、使えるコード全部を訓練データに入れてるんだから。それに、訓練データだけじゃなくて、後処理や強化学習、拡張コンテキスト、エージェント機能なんかの進化もすごいんだよ。今のLLMはもう全然違うレベルだからね。" userName="NitpickLawyer" createdAt="2025/07/29 14:19:13" color="#45d325">}}




{{<matomeQuote body="Agentic codingはあんまうまくいかないね。簡単なタスク以外だと、自分でやった方が断然早いよ。複雑なコードだと結果がひどくて、一から作り直した方がマシってことも結構あるんだ。期待してたのとは全然違って、正直イライラするばっかだよ。" userName="haar" createdAt="2025/07/29 14:26:08" color="">}}




{{<matomeQuote body="確かに魔法みたいだけど、LLMの学習曲線はめっちゃ急だよ。METRの研究でもそういう話が出てた。俺もLLMで生産性が上がったのは間違いないけど、それまでにかなりの努力が必要だったんだ。" userName="aschobel" createdAt="2025/07/29 14:43:33" color="">}}




{{<matomeQuote body="あんたが言ってる研究の被験者たちも、LLMで生産性が上がったって信じてたんだよね。でも、それってただの錯覚じゃなかったの？あんた自身が同じ幻想に陥ってないって、どうやって確信してるんだい？どんな指標でそう言えるの？" userName="devmor" createdAt="2025/07/29 15:18:40" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="昨日、動画の13秒地点のフレームをJPEGで抽出するためにffmpegを使ったんだけど、LLMが教えてくれなかったら絶対できなかったね。" userName="simonw" createdAt="2025/07/29 15:20:20" color="#38d3d3">}}




{{<matomeQuote body="LLMが生成する合成データって、既存のゲームやデータセットのコピーじゃないかな？LLMが作ったReactフロントエンドもみんな同じに見えるんだよね。" userName="quantumHazer" createdAt="2025/07/29 14:15:11" color="">}}




{{<matomeQuote body="LLMは知らないことは出せないよ。知ってることをリミックスしたり書き換えたりするだけ。発明じゃなくて、ただの記憶の呼び出しだね。前に誰かがiOS用の”プレミアムカメラアプリ”を頼んだら、モデルはHalideを再生成したらしいし。" userName="bayindirh" createdAt="2025/07/29 14:29:50" color="#38d3d3">}}




{{<matomeQuote body="LLMってffmpegだとまだ結果がイマイチだよ。例えば、Sonnetに長い動画をトリムするよう頼んだら、入力ファイルパラメータを先にしちゃって、余計なデコードが走ったんだ。[1]<br>LLMはとっかかりにはいいけど、結局LLMはサブパーなコードを出すっていう法則にffmpegも例外じゃない。数分ドキュメントを読んで理解した方が、次は自分でうまくできるよ。[1] https://ffmpeg.org/ffmpeg.html#:~:text=ss%20position" userName="throwworhtthrow" createdAt="2025/07/29 15:58:30" color="#ff5c5c">}}




{{<matomeQuote body="LLMのプログラミングでの本当の価値は、新しいものを作ることだよ。Space Invadersみたいにコードがオンラインにあるなら、LLM使わないで手動で探せばいいじゃん。LLMがワンショットプログラミングで価値を提供できるって示すには、完全に動くサンプルコードがオンラインにない問題を見つけるべきだね。" userName="jan_Sate" createdAt="2025/07/29 14:56:27" color="#ff5733">}}




{{<matomeQuote body="それはLLMじゃなくて、ffmpegのデザインが悪いってことだろ。人間だってffmpegのコマンドラインは苦手なんだから、LLMがちょっとミスするくらい驚かないよ。" userName="CamperBob2" createdAt="2025/07/29 16:27:09" color="">}}




{{<matomeQuote body="LLMにC++コードを3行生成させたら、自分で10分で編集したコードより“たったの”一桁遅かったんだ。もしそんな結果で満足なら、確かにLLMは“数々のトリック”を見逃すよ…。" userName="nottorp" createdAt="2025/07/29 17:13:38" color="#38d3d3">}}




{{<matomeQuote body="当たり前だけど、人間も知らないものは出せないよ。JavaScriptをゼロから spontaneously に理解するんじゃなくて、既存の知識を組み合わせて新しい形にするんだ。非自明な点だけど、LLMは全く新しい要件のコードも作れる。何度も見てきたよ。小さい断片から組み立てる？うん、それは『経験』とか、断片が小さければ『理解』って呼ばれてるね。" userName="FeepingCreature" createdAt="2025/07/29 14:47:32" color="#45d325">}}




{{<matomeQuote body="Googleで『extract frame at timestamp as jpeg ffmpeg』って打って、最初に出てくるStackExchangeの結果を使わないの？" userName="devmor" createdAt="2025/07/29 15:26:12" color="">}}




{{<matomeQuote body="LLMが登場してffmpegのイライラが解消される前は、ffmpegでそんなことができるなんて知らなかったよ。" userName="simonw" createdAt="2025/07/29 15:29:43" color="">}}




{{<matomeQuote body="LLMのコードは放っておかずに変えてもいいんだよ—もし、LLM vibe-code-golfingでもしてない限りはね？<br>これで昔の同僚を思い出したよ。カスタムデータストアからデータベースへ変換するコードを書いたんだけど、彼のバージョンは一部入力で20分かかって、改善不可能だって言ってた。バカげてるよね。結局、不必要なO(n^2)チェックをしてただけで、それを直したら同じデータが200msくらいで動いたんだ。LLMが生まれる十数年前の話だけどね。" userName="ben_w" createdAt="2025/07/29 17:56:27" color="#ff5c5c">}}




{{<matomeQuote body="LLMでffmpegコマンドを生成できるのは便利だね。だって、あれってめちゃくちゃトリッキーだからさ。でも、まさかmanページも使わなかったの？著者がmanページにアレルギーあるのは、Djangoのこと考えたら納得だわ（笑）。" userName="dingnuts" createdAt="2025/07/29 15:31:05" color="">}}




{{<matomeQuote body="LLMがプログラミングで新しいものを作るってのが本当の価値？いや、そうは思わないな。RAGモデルの方がずっと面白いし、生成より検索に価値があるよ。問題解決で変なコードを生成するより、元になった情報源を教えてくれた方が、自分で判断できるからずっといい。" userName="devmor" createdAt="2025/07/29 15:22:35" color="#ff33a1">}}




{{<matomeQuote body="みんな時間がない時とかそうじゃない時とか、そういうことしちゃうよね。でもAIってAhura Mazdaの再来みたいに言われてるんだから、そんなことするはずないでしょ？" userName="nottorp" createdAt="2025/07/29 17:59:49" color="">}}




{{<matomeQuote body="人間はアリを観察してコロニー最適化を生み出せるけど、AIにはできないんだよ。人間は自分の知らないことを探求できるけど、AIには無理なんだ。" userName="bayindirh" createdAt="2025/07/29 14:50:33" color="#ff5c5c">}}




{{<matomeQuote body="LLMに元ソースを教えてほしいって？残念ながらTransformerベースのLLMじゃ無理なんだ。モデルが学習された時には、元データは何十億回もごちゃ混ぜになって消えちゃってるからね。LLMが新しいコードを吐き出すのは、学習で得た統計パターンが元だよ。" userName="simonw" createdAt="2025/07/29 15:24:40" color="#38d3d3">}}




{{<matomeQuote body="それは分かってるよ。だからこそ、一部の人が言うほどAIがこの種の仕事に役立つとは思えないんだ。10年以上前、Tensorflowでチャットボットを作る時も、似たようなアイデアを提案したけど、残念ながら無視されちゃったんだよね。" userName="devmor" createdAt="2025/07/29 15:28:58" color="">}}




{{<matomeQuote body="モデルが訓練データよりずっと小さいのに、そこから情報を保持したり引き出したりできるってのは、熱力学的に考えても“理解”が何か起きているはずだよね。それが人間の理解と同じかどうかは別の話だけど。" userName="satvikpendem" createdAt="2025/07/29 14:54:33" color="">}}




{{<matomeQuote body="LLMは情報を失うテキスト圧縮技術だよ。巧妙な応用統計学さ。基本的には何十年も前からある連想ルールアルゴリズムが進化したもので、順序とか相対位置を考慮するように改良されただけ。この分野の投資家がどう思おうと、理解なんてないんだよ。" userName="Eggpants" createdAt="2025/07/29 17:37:21" color="#785bff">}}




{{<matomeQuote body="よく分からないんだけど。コードの場合、既存のコードスニペットをリミックスしたいって何で？事実に関する情報検索ならRAGスタイルはすごく価値があると思う。でもコードの場合は、ただ動くコードが欲しいだけなんだけどな。自分でテストして確認できるし。" userName="simonw" createdAt="2025/07/29 15:31:08" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
