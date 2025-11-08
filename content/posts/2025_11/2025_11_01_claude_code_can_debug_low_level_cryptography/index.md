+++
date = '2025-11-01T00:00:00'
months = '2025/11'
draft = false
title = 'Claude Codeが低レベル暗号の難解バグを発見！ AIデバッグの最前線'
tags = ["AI", "デバッグ", "暗号化", "プログラミング", "LLM"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> Claude Codeが低レベル暗号の難解バグを発見！ AIデバッグの最前線

引用元：[https://news.ycombinator.com/item?id=45784179](https://news.ycombinator.com/item?id=45784179)




{{<matomeQuote body="コーディングエージェントってバグ探しにめちゃくちゃ使えるんだよ。LLMの出力は信じなくても、バグの場所を教えてくれるだけで数時間の節約になるからね。LLM懐疑派にとっても、コードを書かせるんじゃなくて、難しいバグ探しだけ任せるのは、ズルしてる感じもしないし、仕事の楽しみも奪わない良い使い方だと思うな。" userName="simonw" createdAt="2025/11/01 21:01:18" color="#785bff">}}




{{<matomeQuote body="LLMエージェントがバグを見つけるって話は理解できるけど、解決策探しに必死すぎて、本質を見失ってるケースが多いよ。的外れな「ここ直せ」って提案も多くて、若手エンジニアがこれに飛びつくと、ただの無駄な作業が増えるだけ。みんなPRにエージェントを走らせたがるけど、期待したほどの価値は感じてない。「若手に教えるより自分でやる方が早い」現象のLLM版だね。" userName="rtpg" createdAt="2025/11/01 23:07:59" color="#785bff">}}




{{<matomeQuote body="LLMが手に負えない壁にぶつかったら、諦めて自分でやるのがベストだよ。LLMとコーディングする上で、一番難しいのはいつ諦めるべきかを知ることかもしれないね。しかも、その壁は全然予測できないんだ。LLMはすごく難しいバグを見つけるのに、簡単なバグで完全に詰まっちゃうこともあるから不思議だよ。" userName="Wowfunhappy" createdAt="2025/11/01 23:42:06" color="">}}




{{<matomeQuote body="自分でやるからこそ、そのスキルが身につくし、維持できるんだよ。もしLLMが失敗した時だけ自分でやっていたら、そういうスキルをどうやって維持するつもりなの？" userName="ori_b" createdAt="2025/11/01 23:50:41" color="#ff5c5c">}}




{{<matomeQuote body="LLMエージェントの俺のお気に入りの使い方は、これから触るコードの詳しいドキュメントを書かせることだよ。LLMがちょっと間違えても大した問題にならないからね。LLMに懐疑的な人にとっても、まずここから始めてみるのが良いんじゃないかな。" userName="mschulkind" createdAt="2025/11/01 22:07:47" color="">}}




{{<matomeQuote body="LLMを使うってことは、AssemblyからC++、Pythonって抽象化レイヤーを上げていくのと同じだよ。仕事を委譲して（そしてちゃんとチェックすれば）、スピードアップできるんだ。" userName="RA_Fisher" createdAt="2025/11/02 15:29:36" color="">}}




{{<matomeQuote body="抽象化レイヤーを上げるのは、下位レイヤーの知識がしっかりあって初めてうまくいくことなんだ。そうじゃなきゃ、ただ手探りで盲目的に進んでるだけだよ。開発者が使ってる抽象化の限界を理解してないことが、バグのよくある原因なんだからね。" userName="ThrowawayR2" createdAt="2025/11/02 15:45:04" color="">}}




{{<matomeQuote body="LLMって、アルゴリズムのバグを見つけるのは得意だけど、俺の経験だと並行処理のバグは苦手なんだよね。テスト作成もアルゴリズム系はうまいけど、並行処理は「どうやって順番を保証するか」ってアイデアはあまり出ない。LLMで既存コードを生成する時の不満点（重複コードとかメンテ性とか）は、テスト作成やデバッグ用途には関係ないから、そこは良い点だね。" userName="majormajor" createdAt="2025/11/01 23:06:50" color="#785bff">}}




{{<matomeQuote body="もしLLMがその問題を処理できるなら、なんでわざわざその特定のスキルを維持する必要があるの？" userName="Klathmon" createdAt="2025/11/02 00:11:44" color="">}}




{{<matomeQuote body="AIが間違ってたらちゃんと指摘して理由も教えてやればいいんだよ。何でも一発で完璧にこなせって期待するのはおかしい。同僚とアイデア出し合うのと変わんないでしょ。" userName="bongodongobob" createdAt="2025/11/01 23:39:24" color="">}}




{{<matomeQuote body="curlの記事で話題になったAI SASTツールをCコードベースでいくつか試したけど、何も見つからなかったよ。この最新ツールはどんな低レベルコードで試したの？Anthropicの宣伝はカウントしないからね。" userName="qa34514324" createdAt="2025/11/01 22:04:07" color="#38d3d3">}}




{{<matomeQuote body="電卓があるからって子供に算数教えなくていいの？LLMが苦手なスキルだけを上達させるなんてどうやるんだよ。LLMが失敗するようなコーディングタスクを正確に判断できたとしても、全てに精通してないとそれだけ得意になるのは無理だと思うけど。" userName="ribosometronome" createdAt="2025/11/02 01:16:30" color="#785bff">}}




{{<matomeQuote body="じゃあ、CPUが個々の命令をどう処理するか知らないと、俺たちみんな成功できないってこと？" userName="AbstractH24" createdAt="2025/11/02 16:11:47" color="">}}




{{<matomeQuote body="なるほど、まともな批判だね。でもさ、3年前のAIってマジで何だった？クソだったろ。なんで”これすごい！これからどうなるんだろ？”って言っちゃダメなのに、”この話題に専門家はいないけど俺が口出ししちゃお！”ってコメントはみんながするものなの？待っとけよ。" userName="SV_BubbleTime" createdAt="2025/11/02 02:13:24" color="#38d3d3">}}




{{<matomeQuote body="このコメントは、有名な暗号専門家のFilippo Valsordaがこれらのツールを使ってGoの暗号コードにある複雑なバグを見つけた記事に付いたスレッドに投稿してるんだよ。" userName="simonw" createdAt="2025/11/01 22:19:08" color="#ff33a1">}}




{{<matomeQuote body="コーディングエージェントに難しいバグ探しをやらせろ、コードは書かせるな、って言うけどさ。なんで？バグ探しはコードを書くより難しいし、頭も使うからじゃない？" userName="jack_tripper" createdAt="2025/11/01 21:38:04" color="#ff33a1">}}




{{<matomeQuote body="よくわからないな。良いドキュメントって難しいよね。LLMはコンテンツを生成できるけど、本当に”書く”わけじゃない。デフォルトだと冗長で定型的な内容になりがち。ちゃんとしたものにするには自分で書くのと大差ないくらいの編集が必要だ。低品質なAIドキュメントか、ほとんど未文書化かの選択は難しいし、そのうちAIドキュメントは避けられるようになるだろうね。" userName="manquer" createdAt="2025/11/02 00:10:41" color="#45d325">}}




{{<matomeQuote body="これ、ひどいアイデアだよ。LLMは”何を”は文書化できるけど、”なぜ”とか暗黙の知識、設計の意図はできないからね。完璧に見えても何も教えてくれないドキュメントなんて、ないよりタチが悪い。全体像を理解しようとして混乱するだけだから。" userName="krackers" createdAt="2025/11/02 02:14:39" color="#ff5c5c">}}




{{<matomeQuote body="同意だよ。自分自身が堕落してるのがわかる（というか、本当なら学ぶべき新しいスキルを学んでない）。これは大きな問題だけど、目の前のタスクを最速で解決する方法とは、ちょっと違う話だね。" userName="Wowfunhappy" createdAt="2025/11/02 00:43:28" color="#785bff">}}




{{<matomeQuote body="AI 技術について「すごい、これからどうなるか楽しみ」って言うのが、もはや職場で必須のスタンスなんだよ。それ以上懐疑的な姿勢を見せたら、上司の熱狂的な optimistic のせいで仕事を失うかもね。" userName="advael" createdAt="2025/11/02 02:27:31" color="">}}




{{<matomeQuote body="AI、使ってみた？めちゃくちゃ便利だよ。自動生成ドキュメントをそのまま共有するのはアレだけど、例えば「署名付き cookie を扱うコードを全部教えて」みたいに、自分の理解を深めるのに最高なんだ。95%は正確だし、たまに間違ってても自分で修正できるから問題ないね。" userName="simonw" createdAt="2025/11/02 03:01:12" color="#ff5c5c">}}




{{<matomeQuote body="GP の意見に賛成かは分かんないけど、あなたは彼の言ってることを誤解してるかもね。個々の命令を知らなくても CPU 全般は理解できるし、Python 書いてる時でも CPU cache について知ってるのは役に立つと思うよ。" userName="Wowfunhappy" createdAt="2025/11/02 16:45:14" color="">}}




{{<matomeQuote body="LLM はドキュメントやソースコードの navigation が得意だよ。Agentic mode なら、慣れないコードでも自分でやるより早く必要な部分を見つけられる。自動生成された情報でも、コードを直接見るより抽象度が高くて、Sparknotes みたいにコードの概要や roadmap をくれるから便利だね。" userName="medvezhenok" createdAt="2025/11/02 00:32:45" color="#38d3d3">}}




{{<matomeQuote body="LLM がコードを書くのと一緒だよ。どっちのケースでも、あいつらは存在しないバグについて、もっともらしい説明を何ページも書きまくる「bullshit factories」と化すんだ。結局みんなの時間を無駄にして、俺たちの Patience を試してくるだけさ。" userName="dns_snek" createdAt="2025/11/02 08:12:46" color="#ff33a1">}}




{{<matomeQuote body="モデルが変なこと言い出したら、セッションを restart して、prompt にもっと情報を足すのがいいよ。例えば Claude がデータセットのこと心配するなら、バグの場所を教えちゃえばそこに集中する。懸念リストを出させて、どれが有効か聞くのもアリだね。ローカルにライブラリのリポジトリを持たせて、ast-grep とかで調べさせる方が、Web 検索よりずっと効果的だよ。Agent frameworks はまだ参照検索がダメだけどね。" userName="joshvm" createdAt="2025/11/02 00:38:06" color="#38d3d3">}}




{{<matomeQuote body="うん、使ったことあるよ。でもね、複雑なことに関するドキュメントは80%くらい間違ってるんだ。" userName="jeltz" createdAt="2025/11/02 11:53:59" color="">}}




{{<matomeQuote body="数学のスキルを保つために電卓を使わないって言うの？AIも電卓みたいなもんだよ。基本的な計算に電卓を使う感覚で使える問題が増えてる。でも学校は別だね。もし子供の頃に AI があったら、俺は間違いなく悪用して何も学ばなかっただろうから、そこはもっと心配だよ。" userName="Klathmon" createdAt="2025/11/02 03:58:51" color="#45d325">}}




{{<matomeQuote body="最初はそう思ってたけど、有料モデルでも結局、提供した明確なプロトコルに対して、小さな、でも重要な詳細（ステータスコードやデータ型とか）をハルシネーションしまくるんだ。結局ドキュメントと照合しないとダメ。AIが作る間違った思考モデルが、デバッグを地獄にすることもある。価値はあるけど、これって自分の思い込みなのか、それとも AI に嘘つかれてる事実を見過ごしてるのか、わかんなくなるね。" userName="heavyset_go" createdAt="2025/11/02 06:52:17" color="#785bff">}}




{{<matomeQuote body="そんなにひどい状況なのか？もし AI ツールを無理やりワークフローに組み込まれる仕事だったら、俺はとてもじゃないけど続けられないと思うね。" userName="dns_snek" createdAt="2025/11/02 07:59:29" color="">}}




{{<matomeQuote body="AIが他人のコードをパクって訓練されてるって言われるけど、まさにその通りじゃん。もしパクってないって言うなら、公開されてないコードを使わずにモデルを簡単に作れるはずだろ？そうじゃないってことは、やっぱりパクってるってことだよね。" userName="NoraCodes" createdAt="2025/11/02 01:26:36" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺からの最大のアドバイスは’AIファースト’だね。最新のモデルの限界を理解して、使い方を学ぶには、まずAIに何でも聞くべきだよ。AIに任せると、その能力とプロンプトの構成方法が同時にわかる。今のモデルはかなり優秀で、ほとんどの問題で同僚みたいに扱えるよ。でも、失敗する理由も理解して直感を養う必要があるんだ。" userName="XenophileJKO" createdAt="2025/11/01 21:17:50" color="#ff5c5c">}}




{{<matomeQuote body="いや、それって実際はそううまくいかないよ。もちろん使えば上達するけど、AIができることを簡単に学べるわけじゃない。一番の問題は、専門家じゃないとAIの自信満々なハルシネーションに騙されて、何時間も無駄にすることがあるってこと。専門家なら間違いに気づけるけど、そうでなきゃドキュメントを読んだ方がマシだよ。だから、こういうツールは専門家に一番役立つんだ。AIの失敗の直感も、結局はドメイン知識がないと無理。Sonnet 4.5も大して変わってないし、よく時間を無駄にするよ。" userName="imiric" createdAt="2025/11/01 22:12:05" color="#785bff">}}




{{<matomeQuote body="ここにはいくつか暗黙の前提があったね。記事はドメインエキスパートが自分の専門分野で書いたものだし、読者も専門家だと思ってたんだ。AIの失敗の直感は、俺は経験からかなり養われたと思ってるけど、みんながそうできるかっていうのは、もしかしたら俺が過大評価してるのかもしれないね。最初に「誰でもプロンプトは書ける」って思ったけど、全然そんなことなかった。曖昧さや矛盾を言語化するのが難しい人が多いんだ。モデルはリリースごとに良くなってるって実感してるよ。でも、専門家以外にはやっぱり難しいかも。" userName="XenophileJKO" createdAt="2025/11/01 22:47:50" color="#38d3d3">}}




{{<matomeQuote body="他のコメントはいいとして、’ほとんどの人がドメインエキスパート’っていう前提は違うと思うな。ソフトウェアエンジニアの仕事って幅広いから、誰もが全部の専門家になれるわけじゃないんだよ。例えば、毎日エディターは使うけど、その設定の専門家じゃないし。新しいアルゴリズムの実装で専門家じゃないと落とし穴も多い。日常的にやってることでも、みんなが専門家ってわけじゃないってことを言いたかったんだ。" userName="fn-mote" createdAt="2025/11/01 23:16:24" color="#ff5733">}}




{{<matomeQuote body="まさにその通り。普通のプログラマーは常に不慣れなドメインで作業してるんだ。ドメインやAPIに詳しくないと、AIを正しい方向に導く直感も影響力も減るし、AIを過信しがちになる。だから、AIが間違ってると、正しい出力を得るのにかなり苦労するんだ。記事の例は、実はAIツールにとって最高のシナリオなんだよね。ドメインを深く理解してる専門家が、質の高いコードを使ってパターンマッチングしてるようなものだから。" userName="imiric" createdAt="2025/11/02 00:03:53" color="#785bff">}}




{{<matomeQuote body="君の言ってることは’理解’できるよ。でもこれって、複雑なシステムでテクニカルリードをやるのと全然変わらないんだ。俺はいつも専門じゃないことまでレビューしてる。リスクや未知の部分を特定しなきゃいけない。AIに最初に投げるのも、他の誰かに投げるのと同じ。俺は同じ要求を持ってるし、AIや人をどのくらい’信頼’するかを選べるんだ。正直言って、AIより信用できない同僚もいたくらいだしね。だから、同僚のレビューと一緒で、よくわからない部分は二重チェックすればいい。これは別に’新しい’ことじゃないんだよ。" userName="XenophileJKO" createdAt="2025/11/02 00:19:26" color="#38d3d3">}}




{{<matomeQuote body="AIに先に投げるのは、他の人に投げるのと一緒って言うけど、<br>どう見ても全然違うだろ。" userName="hitarpetar" createdAt="2025/11/02 21:34:10" color="">}}




{{<matomeQuote body="誰かの仕事をレビューするのは新しいことじゃないってのはその通りだけど、AIと話すのは同僚と話すのとは全然違うんだよ。有能な人間エンジニアは現実に基づかない主張で惑わせたりしない。実践的な方法で間違えることはあっても、存在しないAPIを勧めたり、単語に反応して的外れな話になったりしないし、同じ質問に違う答えを返したりもしない。人間は思考できて、お互いに深い理解と尊敬を築ける。自分や相手の主張も検証できるし、どんな反論にも「君の言う通りだ！」なんて機械的に答えない。それに、’AI’のマーケティングは超人的な能力を謳ってるせいで、人はその出力を過信しがちだ。これは非常に誤解を招くし、危険なことだよ。’AI’を擬人化するあらゆる試みは間違いで、あくまで優れたパターンマッチングの確率的ツールとして使うのが一番なんだ。" userName="imiric" createdAt="2025/11/02 08:56:20" color="#38d3d3">}}




{{<matomeQuote body="AIに知ってること聞いたら非効率な答えばっか。プロンプト調整に時間かかるくらいなら自分で書いた方がマシだよ。信頼度も下がったし、Claudeは未だにiOS 26が出てないって言い張るしね。Google/StackOverflow/Redditの代替くらいかな。Xcodeのローカルモデルの方がまだ使えるね。" userName="Razengan" createdAt="2025/11/02 06:52:04" color="">}}




{{<matomeQuote body="「プロンプトチューニング」はAGENTS.mdに書いとけば一度で済むよ。色々なAIを試して、自分のスタイルに合わせる方法を見つけるのが大事。僕はgit submoduleで共有の指示を管理してるから、プロジェクト全部に適用されて便利だよ。" userName="theshrike79" createdAt="2025/11/02 10:26:05" color="#45d325">}}




{{<matomeQuote body="AIの修正方法は分かるけど、知らないことについてAIが正しいかどうかなんて、どうやって判断するの？結局Googleで確認するしかないんだよ。ほら、ChatGPT 5やNintendo Switch 2について聞いてもAIは間違ったこと言うんだからね。https://i.imgur.com/aT8C3qs.png https://i.imgur.com/OqmB9jG.png AIが最初から間違った情報を教えてくれたら困るよね。" userName="Razengan" createdAt="2025/11/03 11:07:36" color="#785bff">}}




{{<matomeQuote body="それが問題だよ。AIを知識マシンとしてじゃなく、ツールとして使えって。Agentic LLMみたいに、ツールをループで使って目標達成するやつね。僕はClaudeにGoプロジェクトのリリースアクション追加させたら、ちゃんと動いたよ。幻覚じゃなくて、パターンを完璧に適用したんだ。AIはニュースみたいなことにはツールを使うべきだったんだよ。AIって一括りに言っても色んな種類があるから、「AIはクソ」って言われてもピンとこないんだよね。" userName="theshrike79" createdAt="2025/11/03 14:23:00" color="#ff33a1">}}




{{<matomeQuote body="「ClaudeがiOS 26はまだ出てないって言い張る」って言うけどさ、AIがそういう間違いをしないようにするってどういうこと？LLMは全知でもないし、常に最新情報に更新されてるわけじゃないんだから、仕方ないんじゃないの？" userName="simonw" createdAt="2025/11/02 08:26:16" color="">}}




{{<matomeQuote body="AIが「バージョンNの最新APIを使え」って言われたら、ユーザーを疑う前にウェブで確認すべきでしょ。Google検索を使えないのが問題なんだよ。iOS 26のAPIはベータ版でも公開されてたんだから、AIはユーザーをガスライティングするな！LLMが最新知識持ってないなら、最新技術でアプリ作れないじゃん。AIには「Do as I say」と「Do what I mean」の切り替えが必要だね。" userName="Razengan" createdAt="2025/11/02 09:57:13" color="#38d3d3">}}




{{<matomeQuote body="それってClaude Code？Claude.ai？それとも他のツール？ハーネスによって検索能力って違うからね。検索が必要な時はChatGPTを使うようにしてるよ。Claudeの検索機能はあんまり信用してないな。" userName="simonw" createdAt="2025/11/02 10:11:42" color="">}}




{{<matomeQuote body="ClaudeのウェブサイトとMacデスクトップアプリをiOS SwiftUIプロジェクトで使ったんだけど、Claude CodeをVS CodeでGodotに使った時も、古かったりデタラメなAPIが出てきたよ。" userName="Razengan" createdAt="2025/11/02 15:32:00" color="">}}




{{<matomeQuote body="LLMってSwiftやSwiftUIが苦手らしいね。変更が多いせいで、学習データが足りないんだって。Python/JavaScriptプログラマーの僕には関係ない問題だけどね！" userName="simonw" createdAt="2025/11/02 16:38:30" color="">}}




{{<matomeQuote body="LLMは新しいものや、自分自身の最新バージョンについてすら、まともな答えを出せないんだ。ほら、ChatGPT 5やNintendo Switch 2について聞いてもこんな感じさ。https://i.imgur.com/aT8C3qs.png https://i.imgur.com/OqmB9jG.png ライブウェブ検索と連携できればもっと使えるのに、Googleが他社AIに検索を使わせないし、ウェブサイトもスクレイピングされたがらないから無理だね。AIにはすごい可能性があるのに、企業や政府のせいでダメになってる。" userName="Razengan" createdAt="2025/11/03 10:49:39" color="#45d325">}}




{{<matomeQuote body="Claude Codeは自分のドキュメントを見るんだって。ChatGPTのGPT-5 Thinkingモデルも検索してから答えるからすごく良い結果が出たよ。Switch 2の質問への回答はこれ: https://chatgpt.com/share/69089028-db8c-8006-b238-1d6946e791...<br>検索結果のスクショはこちら: https://gist.github.com/simonw/048ffb895dd6b94419f0b4e066143..." userName="simonw" createdAt="2025/11/03 11:17:33" color="#45d325">}}




{{<matomeQuote body="1ヶ月前、Claudeにプライバシーについて聞いたらAnthropicのサイトを見ろって言われたよ。GeminiもGoogleなのにAirbnbの検索リストを頼んだら「自分でやれ」って。しつこく言ったら、やっとAirbnbの部屋を出してきたけど、AIが旅行を計画して予約までしてくれたら最高なのに。現状はまだバカな部分が多いね。" userName="Razengan" createdAt="2025/11/03 11:37:30" color="#ff5733">}}




{{<matomeQuote body="AnthropicからClaude Maxを数ヶ月無料でもらったんだ。最近InstagramでAnthropicの広告がすごい多くて、見た広告の約4分の1はこれかも。色んな人がClaudeでアプリを開発してる動画とか、「Claude Codeをインストール」みたいな広告ばかり。なんでこんなに狙われてるのか謎だけど、マーケティングチームはかなり頑張ってるみたいだね。" userName="pton_xd" createdAt="2025/11/01 22:08:49" color="">}}




{{<matomeQuote body="たぶん、Anthropicはプロダクトマーケットフィットを見つけたんだと思う。開発者たちはClaude Codeが超便利だと感じてるし、多くの人が月200ドルのプランを契約してる。それが利益になるなら、Anthropicは有料ユーザーを増やすためにマーケティングにたくさんお金を使うのは賢い選択だよね。" userName="simonw" createdAt="2025/11/01 22:22:12" color="#ff5733">}}




{{<matomeQuote body="彼らがどうやって堀を築くのか理解できないな。僕はOpenAIやAnthropicとかのモデルをテストするために課金してるけど、トークンが尽きたら別のモデルに乗り換えるんだ。モデルがこんなに代替可能なら、長期的には利益ゼロの競争になるはず。今後6〜12ヶ月は稼げるだろうけど、永続的な会社にはならないと思う。切り替えコストを上げて囲い込もうとするだろうけど、僕は数回プロンプトしたらコンテキストをクリアしちゃうから意味ないね。" userName="ViewTrick1002" createdAt="2025/11/02 01:44:53" color="#ff5733">}}




{{<matomeQuote body="今は企業向けのサブスクリプションが儲けの鍵だね。もし会社にClaude Codeで毎日1時間節約できるって言ったら、月200ドルなんて安いもんだよ。でも、競争が課題だね。GPT-5-CodexはClaude Sonnet 4/Opus 4/4.1にとって本当に手強いライバルだったし、Sonnet 4.5が出るまではOpenAIに顧客が戻ってた。こういうことは頻繁に起こるだろうね。" userName="simonw" createdAt="2025/11/02 02:02:56" color="#ff33a1">}}




{{<matomeQuote body="「多くの開発者が月200ドルのプランに加入している」ってのはないな。雇用主のために年間2,400ドルも払う開発者なんていないでしょ。IntelliJに年間700ドルすら出さずに、みんなVSCodeを使わせるような会社が、そんな高額なものを払うはずがない。" userName="cube00" createdAt="2025/11/02 12:00:19" color="#45d325">}}




{{<matomeQuote body="Anthropicがすごい勢いで収益を伸ばしてるんだ。<br>https://www.anthropic.com/news/anthropic-raises-series-f-at-...<br>2025年初めに年間売上10億ドルだったのが、8月には50億ドルを超えたらしい。Claude Codeは2025年2月発売だから、この成長の多くは月200ドルのプランから来てるんじゃないかな。だから他のLLM企業も「コード用LLM」に集中し始めたんだと思うよ。" userName="simonw" createdAt="2025/11/02 14:24:47" color="#785bff">}}




{{<matomeQuote body="うちの会社は僕と他の開発者十数人のためにClaude Maxの料金を払ってるよ。他の人たちはAPIを使ってるんだけど、APIのコストがMaxより高くなるようならMaxに切り替えるんだ。Claude Codeを使う強制はないけど、経営陣もその価値を認めてて、喜んで費用を払ってくれるよ。" userName="mwigdahl" createdAt="2025/11/02 13:45:04" color="#38d3d3">}}




{{<matomeQuote body="VSCode Co-pilotとClaude 4.5を組み合わせたやつと比べて何がそんなに良いの？最近はPMに転向してほとんどプログラミングしてないんだけど、それを使ってみたらかなり効果的だったよ…なんでわざわざフォーク（この記事のClaude Codeのこと）を使う必要があるんだろう？" userName="chatmasta" createdAt="2025/11/01 23:30:56" color="">}}




{{<matomeQuote body="VSCエージェントモードとClaude Codeに機能差はほぼないぜ。VSCはエージェントとして何でもできるしClaudeも使える。Claude Codeを勧める声は、VSCを試してない人の「お前が間違ってる」って意見が多い気がするな。ただし、複数フォーク並行作業にはVSCは向かないかもね。" userName="timr" createdAt="2025/11/02 00:05:53" color="#38d3d3">}}




{{<matomeQuote body="この分野は進化が速すぎて、人々の評価は時期によって変わるんだよな。VSCode Copilotも初期のオートコンプリートと今は全く違う体験になってるし。" userName="chatmasta" createdAt="2025/11/02 00:46:20" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="そうそう。みんな試したことがないか、昔試したきりだから、今の状況を知らないんだよな。" userName="timr" createdAt="2025/11/02 04:43:17" color="">}}




{{<matomeQuote body="いや、同じモデル使っててもツールで全然違うぜ。GitHub CopilotとCursorを比べたら、GH Copilotの方が全然アホで、すぐ詰まるんだよな。Context構築が原因だと思う。GH Copilotはリクエスト課金だから、渡す情報削りすぎて失敗が多いんだろ。パッチアルゴリズムも前からクソだったし。" userName="oefrha" createdAt="2025/11/02 01:22:08" color="#785bff">}}




{{<matomeQuote body="ふーん。Context周りは毎日変わるから、今言ってることもすぐ古くなるよ。GH Copilotがコスト最適化してるって言うけど、どこのプロバイダもそうじゃん。Cursorがちょっと良くても、モデルを簡単に切り替えられる方が俺にはメリット大きいな。" userName="timr" createdAt="2025/11/02 04:48:24" color="">}}




{{<matomeQuote body="質問はClaude CodeがGH Copilotより良いかってことだろ。「すぐ新バージョン出るかも」なんて答え役に立たねぇよ。俺は今も、1年前も、ずっとGH CopilotとCursorを比較してるけど、GH Copilotはずっと劣ってるし、その差はデカいんだ。Cursorがこれだけ普及したのは、GH Copilotがクソだったからだよ。" userName="oefrha" createdAt="2025/11/02 09:59:02" color="#ff5733">}}




{{<matomeQuote body="両方使ったけど、君は言い過ぎだよ。プロバイダ間の性能差はいつも変わるし、俺はモデルを簡単に切り替えられる方が断然便利だと感じるね。" userName="timr" createdAt="2025/11/02 10:48:54" color="">}}




{{<matomeQuote body="Claude CodeはVSCodeのフォークじゃなくて、ターミナルCLIだぜ。普通のIDEとはかなり違う操作方法だよ（もちろん、VSCodeのターミナルで使うことはできるけどな）。" userName="danielbln" createdAt="2025/11/01 23:41:18" color="#45d325">}}




{{<matomeQuote body="あー、Cursorと間違えてたわ。Claude Codeって、プロンプトでコーディングエージェントを動かすためのターミナルCLIなんだな？VSC Copilotの初期とは違うけど、今のVSCにも似た「エージェント」モードがあるのか。IDEが差分ビューアになるって感じか。" userName="chatmasta" createdAt="2025/11/01 23:43:42" color="">}}




{{<matomeQuote body="今はClaude Codeのクローン「copilot-cli」ってのもあって、デフォルトでSonnet 4.5が動くぜ。まだ難しいことは試してないけど、Copilot Business/Enterpriseプラン持ちにはいい選択肢だよ。<br>https://github.com/github/copilot-cli" userName="ewoodrich" createdAt="2025/11/02 00:29:57" color="#ff33a1">}}




{{<matomeQuote body="VSCode CopilotはIDEに依存しすぎてて使いにくいんだよね。CLIエージェントはMarkdownファイルを扱うから、摩擦が少なくていい感じ。CLIにはhooks、subagents、skillsとか、Copilotにはない「features」がたくさんあるし、Copilotのcontextは128kに制限されちゃう。職場でVSCodeを使ってるけど、個人プロジェクトでは「Swiss army knife」みたいなCLIツールがマジで大活躍だよ。もちろんIDEにも良い点はたくさんあるけどね。" userName="threecheese" createdAt="2025/11/02 02:10:58" color="#ff33a1">}}




{{<matomeQuote body="Copilotはモデルへのハーネスとして汎用だけど、Claude Sonnet、Haiku、OpusはClaude Codeのために訓練されてるんだ。両方ヘビーユーザーだけど、Copilotにはsub agentsがないとか、インタラクティブなフィードバックがないとか、マジでイライラする「paper cuts」が多いんだよね。Claude Codeの方がずっと良いハーネスだから、ぜひ試してみてほしいな！Sponsoredじゃないけど、マジでおすすめだよ。職場ではClaude Codeを使えないからCopilotだけど、サイドプロジェクトではClaude Codeに月125ドルのプランを払ってるんだ。" userName="faxmeyourcode" createdAt="2025/11/02 00:34:38" color="#ff5c5c">}}




{{<matomeQuote body="Claude Codeが優れたハーネスなのはわかるけど、今から学ぶ価値があるかは正直疑問だな。だって、VSCode（Microsoft）がすぐに追いつくって確信してるからね。特別な差別化ポイントもないし、VSCはもう差を詰めてるじゃん。BigTechの覇権は嫌だけど、この競争に勝つのはどっちか、って言ったら明らかだよね…。" userName="chatmasta" createdAt="2025/11/02 00:45:04" color="#ff5c5c">}}




{{<matomeQuote body="Agentsとかskillsとかは、Claude CLIツールの特有機能なんだ。Sonnet 4.5自体はraw modelとして優秀だけど、それを最大限に引き出すツールがめちゃくちゃ重要なんだよ。Sonnet 4.5がエンジンだとしたら、その周りの車全体が超大事ってこと。CopilotはLLMツールとしては正直微妙。ツール呼び出しのpermissionはぎこちないし、sub agentsやskillsみたいな気の利いた機能もない。唯一の良い点は、VSCodeの「problems」タブを見て「アクティブな問題を修正して」って言えるところかな。" userName="theshrike79" createdAt="2025/11/02 10:28:56" color="#ff5c5c">}}




{{<matomeQuote body="Copilotって、Claude Codeと比べるとコードベースの「理解力」が単純に低い気がするんだ。" userName="undeveloper" createdAt="2025/11/01 23:46:00" color="">}}




{{<matomeQuote body="「高額でも使いすぎるとカットオフされる」って話は、LLMのコスト効率がまだ良くないってことを裏付けてるだけだよ。" userName="hitarpetar" createdAt="2025/11/02 21:39:30" color="">}}




{{<matomeQuote body="それってInstagramの広告表示の仕組みのせいかもしれないし、Anthropicのマーケティング戦略だけが理由じゃないかもよ。Instagramはクリックしたり長めに表示したりすると、同じ提供元とか関連する広告をガンガン送ってくるからね。僕の経験だと、Instagramは2～3種類の広告グループがあって、効果が薄れると数ヶ月で入れ替わる感じ。でも、Anthropicから色んな種類の広告が届くってことは、マーケティングに力入れてるのは間違いないだろうね。" userName="jamamp" createdAt="2025/11/02 17:34:15" color="">}}




{{<matomeQuote body="「LLMがバグの場所を教えてくれるだけで1～2時間節約できるなら、その出力は信用しなくていい」って意見だけど、LLMって結構デタラメな「説明」をすることもあるから、それでかえって時間を無駄にすることもあるんだよね。LLMがバグ特定にめちゃくちゃ役立つのは間違いないけど、常に批判的な視点を持つべきだよ。" userName="spacechild1" createdAt="2025/11/01 23:33:05" color="#ff5c5c">}}




{{<matomeQuote body="OPは「自分で考えるため」って言ってるんだから、LLMに推論させるってことじゃないよ。僕も同意。LLMは素晴らしいデバッグツールだけど、マジで騙されやすくて、すぐに結論に飛びつくんだ。自分の「fleshy brain」をオフにした途端、LLMは「lala land」に行っちゃうからね。" userName="danielbln" createdAt="2025/11/01 23:38:42" color="#ff5c5c">}}




{{<matomeQuote body="「OPは自分で考えるって言ってるんだ」って言うけど、まさにそれが俺が言いたかったことなんだ！最近、LLMに奇妙なバックトレースについて聞いたら、もっともらしいけど全く見当違いな原因を教えてきて、1～2時間も無駄にしちゃったんだ。LLMがいなかったら、そもそもそんな変な道には進まなかったはず。（もちろん、LLMが実際にバグを教えてくれて助かったこともたくさんあるけどね。）" userName="spacechild1" createdAt="2025/11/02 02:35:32" color="#38d3d3">}}




{{<matomeQuote body="LLMが的外れなことを言うのはあるあるだよね。「これが決定的な証拠だ！」って言われても困るし。俺はサブエージェントを使い始めたんだ。具体的には、GPT5をシェルアウトするサブエージェントで、ClaudeとGPT5の両方に意見を聞くようにしてる。これで的外れな追跡はだいぶ減るよ。LLMはたいてい正しい方向に導いてくれる探偵みたいだから、たまに的外れだとマジでイラつくけどね。" userName="danielbln" createdAt="2025/11/02 09:53:26" color="#ff33a1">}}




{{<matomeQuote body="この意見、マジで共感するな。「LLMをもっと上手く使うツールがあればいいのに、チャットとかオートコンプリート形式じゃないやつ」ってやつね。チャット形式はマジでゴミだと思ってる。Claude CodeやCodexを使い始めてから、やっとLLMが「使える」って感じたんだ。「継続的に実行される」モードで通知してくれるやつとか、面白そうだよね。" userName="qsort" createdAt="2025/11/01 20:17:12" color="">}}




{{<matomeQuote body="チャットUIが遅くて非効率的なのは同意するよ。でも、LLMにシステムへのアクセスを許可するのは絶対無理。セキュリティもプライバシーも心配だし、何より信用できないからね。チャットならミスっても修正できるけど、ファイル削除とかGitリポジトリをめちゃくちゃにされたら大変だ。企業にそんな権限を与えるなんて考えられない。Aiderと自己ホスト型モデルを試したけどダメだったし、次はサンドボックスでSOTAモデルを試すつもりだよ。" userName="imiric" createdAt="2025/11/01 22:33:30" color="#785bff">}}




{{<matomeQuote body="Aiderはイマイチだったな、悪いけど。もしオープンソースでAPIを叩くなら、charmbracelet/crushの https://github.com/charmbracelet/crush が最高だよ。Claude CodeやCodexは理解するために試すべきだね。コンテナやVMで動かせば、そのアホさを恐れる必要もないし（恐れるのは良いことだけど）。UIが問題なんだよな。俺はタイピングもライティングも得意だからそんなに気にならないけど、確認なしにやりすぎることが多い。時には素晴らしいけど、時には「おい、何やったんだ？」ってなる。良くも悪くも業界に溢れてるから、どうせLLMのコードをレビューする機会は増えるだろうし、慣れておくのは良いことだね。" userName="cmrdporcupine" createdAt="2025/11/01 23:17:55" color="#ff5733">}}




{{<matomeQuote body="この意見には俺も完全に同意するし、いつもそう思ってる。俺が欲しいのは、もっと実際のコパイロットみたいなやつで、ペアプロみたいに動いて、変更ごとに俺との対話を強制したり、もっと直接的に俺を巻き込んだり、途中で教えてくれたり、もっとインプットを求めてくるやつなんだ。ソクラテス方式で、「agentic」じゃなくて、もっと「augmentic」な方法だね。もしこのビジョンを共有して、投資する資金とエネルギーがある人がいたら、一緒にこのツールを作りたい。今のLLMは、俺たちを仕事から自動化しようとして間違って使われてるけど、本当のすごい潜在能力は、このスレッドで話してる「直感」なんだよ。誤用されると、開発者が裏側を知らずにコードベースを悪化させる危険があるけど、正しく使えば理解を深めて、コンピューティング技術の可能性をより良く実現できるはずだ。" userName="cmrdporcupine" createdAt="2025/11/01 20:49:03" color="#ff5733">}}




{{<matomeQuote body="エージェントに自分の望むやり方で作業するように頼んでみたことはある？俺は、ある程度高いレベルの指示や、ワークフローや対話に関する好みなんかを伝えたら、すごくうまくいくことを見つけたよ。既成のシステムでは君が望むことはできないと思う。Emacsを動かしながら自分の好みに合わせてカスタマイズしていくみたいに、自分自身のニーズに合わせてカスタマイズしていく必要があるんだ。EmacsとかVSCodeの中にミニLLMを入れて、カスタマイズを実装させたら面白いだろうな、ってよく思ってたよ。" userName="reachableceo" createdAt="2025/11/02 00:00:43" color="#38d3d3">}}




{{<matomeQuote body="試したことはあるよ。でも問題はツール自体と、その仕組みにあるんだ。インタラクティブなプロンプトスタイル向けに作られてないんだよな。CCは「承認/変更要求/拒否」みたいな感じで、デカい差分をいきなり出してくる。そうじゃなくて、UIは「ここにエディタがあるから一緒に作業しよう、ああ、君がやったこと理解したよ」みたいなのが理想なんだ。" userName="cmrdporcupine" createdAt="2025/11/02 00:16:08" color="">}}




{{<matomeQuote body="だから俺はCLIよりもCursorsのワークフローが好きなんだよな。" userName="braebo" createdAt="2025/11/03 14:38:47" color="">}}




{{<matomeQuote body="俺もそういうもの（LLMとの対話ツール）を開発中なんだ。でも、金には興味がなくて、自分が誇れるシステムを作りたいんだよ。君のモチベーションは何？公開してるGitHubのリポジトリの中で、`moor`に一番興味があるな。この問題について考える上で俺が傾倒してた多くの設計思想と共通点が多いんだ。" userName="mccoyb" createdAt="2025/11/01 21:11:07" color="">}}




{{<matomeQuote body="残念だけど… mooRは俺の情熱プロジェクトなんだけど、生活のために稼ぐ必要があるんだ。今、失業中で仕事と仕事の合間なんだけど、毎日10〜12時間も作業してる。それももうすぐ終わらせなきゃいけないんだ。助成金も申請したけど却下されちゃったよ。俺のモチベーションは、好きなことをして生計を立てることなんだけど、それがどんどん難しくなってるんだ。" userName="cmrdporcupine" createdAt="2025/11/01 21:19:29" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
