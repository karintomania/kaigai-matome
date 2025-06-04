+++
date = '2025-05-28T00:00:00'
months = '2025/05'
draft = false
title = 'Deepseek R1 0528'
tags = ["AI", "LLM", "オープンソース", "機械学習", "データセット"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> Deepseek R1 0528

引用元：[https://news.ycombinator.com/item?id=44118818](https://news.ycombinator.com/item?id=44118818)




{{<matomeQuote body="おー、早くもOpenRouter経由で7つのプロバイダーから使えるようになったってさ！<br>https：//openrouter.ai/deepseek/deepseek-r1-0528/providersを見てみて。<br>元のDeepSeek R1の5月28日アップデート版で、OpenAI o1並みの性能だけど、オープンソースで推論トークンも完全に公開されてるんだ。<br>パラメータは671Bで、推論時には37Bがアクティブになるらしいよ。<br>完全にオープンソースのモデルなんだって。" userName="jacob019" createdAt="2025/05/28 22:31:27" color="#ff33a1">}}




{{<matomeQuote body="でも、何で学習されたかのソース素材は不明っぽいよね？<br>だから、ソースから再現できるっていうよりは、ウェイトが公開されてるってことかな。<br>「Open R1」ってプロジェクトを覚えてるんだけど、前回チェックした時は独自の学習素材リスト集めに取り組んでたんだ。<br>活動してるみたいだけど、どこまで進んだかは分からないや。<br>https：//github.com/huggingface/open-r1" userName="jazzyjackson" createdAt="2025/05/28 23:22:12" color="#785bff">}}




{{<matomeQuote body="そういう区別を気にする人って少ないと思うんだ。<br>オープンソースかそうじゃないかっていう区別は、たいてい商業利用できるかってとこに行き着くでしょ。<br>君が言ってるのは単に再現不可能ってことで、それは完全に正しいけど別の問題だよ。" userName="make3" createdAt="2025/05/29 00:42:25" color="#ff5c5c">}}




{{<matomeQuote body="でもソースはどこなの？<br>バイナリの塊しか見えないんだけど、何をもってオープンソースなの？" userName="piperswe" createdAt="2025/05/29 00:47:56" color="#785bff">}}




{{<matomeQuote body="入力データセットのリストを公開するのって、基本的には不可能じゃない？<br>どの研究所も莫大な量の著作権のある素材を使ってるのは公然の秘密だよ。<br>データ、ウェイト、コード全部がオープンなモデルを作ろうって動きもいくつかあるけど、どれも最先端の性能には到達してないんだ。" userName="pradn" createdAt="2025/05/29 01:40:20" color="#ff33a1">}}




{{<matomeQuote body="ウェイトこそがソースだよ。<br>ウェイトにコンパイルされたわけじゃないし。<br>直接学習されたんだから。<br>でも、君が言いたいことは分かるよ。<br>学習パイプラインとソースデータセットが利用できる方が、もっとオープンだよね。" userName="jacob019" createdAt="2025/05/29 03:00:35" color="">}}




{{<matomeQuote body="僕はウェイトの方がバイナリっぽいと思うな。<br>学習パイプラインがコンパイラで、学習データセットがソースっていう方がしっくりくる。" userName="timschmidt" createdAt="2025/05/29 04:30:35" color="">}}




{{<matomeQuote body="でも、その例えはすごく不完全だと思うな。<br>だって、プログラムみたいにゼロから再構築できるわけじゃないし、学習プロセスだってどうせ再現できないでしょ。<br>それにしたって、Open Source Initiativeが長年かけて相談した結果によると、データ全体の開示は必要だってさ。<br>https：//opensource.org/ai" userName="reedciccio" createdAt="2025/05/29 07:24:30" color="#785bff">}}




{{<matomeQuote body="それはオープンソースじゃないってば！<br>https：//www.downloadableisnotopensource.org/" userName="fragmede" createdAt="2025/05/28 23:31:25" color="">}}




{{<matomeQuote body="＞学習プロセス、なんか再現できないっぽいね<br>学習プロセスは完全な決定論的だよ。ただのアルゴリズムだし。同じデータ突っ込めば同じウェイト出てくるって。もし計算コストの話なら、昔のコンパイラもそうだったんだよ。20年もすれば、今のモデルだってスマホで学習できるようになってるって。" userName="timschmidt" createdAt="2025/05/29 07:26:34" color="#ff5c5c">}}




{{<matomeQuote body="俺の脳みそだって、大量の著作物で学習されてるし。一部はほぼそのまま丸暗記してるのもあるし。読んだり見たり聞いたりした著作物の名前、いっぱい挙げられるよ。<br>まあ、俺の脳みそはオープンソースじゃないけど、もし脳のスナップショット撮って公開する技術ができても、たぶん違法じゃないと思うんだよね。オープンソースにするなら。<br>でも、これって”ソース”を脳みそって定義した場合だけ”再現可能”って言える話だけどね。学習した全データじゃなくてさ。" userName="ratamacue" createdAt="2025/05/29 18:49:47" color="">}}




{{<matomeQuote body="＞一部はほぼそのまま丸暗記してるのもあるし<br>君（人間）が著作権法に違反したら、法的手段取られる可能性あるでしょ。<br>君ひとりでできる損害なんて限られてるけど、AIは複製コストが安いから損害の規模が違うんだよ。<br>能力とか、法的な意思決定をする人たちを惑わす動機とか、人間とAIには他にもたくさんの違いがあるしね。" userName="overfeed" createdAt="2025/05/29 19:22:43" color="">}}




{{<matomeQuote body="仮に著作物で学習するのがOKだとしても、データのダンプをそのまま提供するのはほぼ確実にダメでしょ。" userName="rcxdude" createdAt="2025/05/29 08:11:49" color="">}}




{{<matomeQuote body="データダンプなんていらないよ、学習に使ったデータソースのURLとかリストするだけでいいんだって。<br>俺が知る限り、LAIONの学習データセットはそうやって公開されてたし。" userName="alpaca128" createdAt="2025/05/29 08:38:10" color="#785bff">}}




{{<matomeQuote body="＞学習に使われたソース、何も情報ないみたいだけど、そうだよね？<br>知りたいんだけどさ、その情報知って誰か何か”役に立つ”ことしてるの？別に誰でも気軽にモデル学習できるわけじゃないしさ・・" userName="behnamoh" createdAt="2025/05/29 00:11:55" color="">}}




{{<matomeQuote body="ウェイトをファインチューンして、自分なりのモデル出すことができるじゃん。<br>例えば、Qwenベースで出てきてる特殊なサードパーティモデル全部見てみ？<br>”オープンソース”はここでは言葉が違うかも。彼らが言ってるのは”このウェイトをいじって再配布できるよ”って意味だよ。" userName="otabdeveloper4" createdAt="2025/05/29 05:39:56" color="#ff5733">}}




{{<matomeQuote body="AI/MLのオープンソースは超複雑で、コード、データ、ウェイトとか色々ある。点数評価必要だね。DeepSeekはOpenAIよりマシ（7/10 vs 0/10）。みんな汚いデータで学習してるから、合法的なオープンデータはまだ。合成かロボット収集データが主流になるかもね。" userName="echelon" createdAt="2025/05/29 00:50:08" color="#ff33a1">}}




{{<matomeQuote body="OpenAIが出してるモデルよりは”ソース”が多いってことだろ。" userName="behnamoh" createdAt="2025/05/29 00:10:56" color="">}}




{{<matomeQuote body="古くなったURLとか本のタイトルリストを渡されて、ユーザーが自分でOCRしてモデル再現しろって言われても、あんまり役に立たないみたいだね。" userName="anonymoushn" createdAt="2025/05/29 09:32:45" color="">}}




{{<matomeQuote body="クローズドソースのプログラムだってリバースエンジニアリングしたり改造したりできるじゃん（ゲームのmodとか見てみれば？）。ウェイトってソースデータがコンパイルされたみたいなもんだよ。" userName="yetihehe" createdAt="2025/05/29 06:44:05" color="">}}




{{<matomeQuote body="OLMoとかPythiaくらいのサイズのLLMの訓練プロセスが決定論的だって言う研究ある？教えてくんない？" userName="reedciccio" createdAt="2025/05/29 07:52:26" color="">}}




{{<matomeQuote body="多分、初期のウェイトはランダムだから、全く同じようには二度と訓練されないはずだよ。モデルに訓練データを食わせる順番もランダムな要素を加えるだろうね。モデル訓練はコンパイラを走らせるより植物を育てるのに近い感じかな。" userName="willmarch" createdAt="2025/05/29 08:16:46" color="">}}




{{<matomeQuote body="AIの損害論はわかるけど、良い面も見てよ。AIはAGIやASIへの道を開いて、2050年代には産業革命みたいに人類の富を激増やせるかもしれないんだぜ？それを邪魔するなんて、何のため？今の僕らは昔の王様よりずっと豊か。Disney株主だって、そうでなかった場合より暮らし向きが良いんだよ。" userName="ljosifov" createdAt="2025/05/30 10:37:06" color="#38d3d3">}}




{{<matomeQuote body="データセットはWebクローラーで集められてるけど、それがどう保存されて再配布されるかについては何も教えてくれないよね？" userName="bee_rider" createdAt="2025/05/29 19:48:33" color="">}}




{{<matomeQuote body="それだって決定論的なアルゴリズムだよ。ランダムなデータとか訓練データを食わせる順番だって、出力を決めるデータの一部なんだから。だから、全く同じやり方で二度やれば、全く同じ出力が得られるはずだよ。" userName="timschmidt" createdAt="2025/05/29 08:18:23" color="">}}




{{<matomeQuote body="非決定性がないって言う何かを教えてくんない？僕がLLM訓練で読んだ非決定性の唯一の原因は浮動小数点エラーで、それはちゃんと理解されてて簡単に回避できるはずだけど。" userName="timschmidt" createdAt="2025/05/29 07:56:14" color="">}}




{{<matomeQuote body="＞2050年代の知能革命を邪魔するのは損じゃない？でも超知能で人類の富が増えるって決めつけるのはおかしいよ。歴史見ると人間は技術で仲間を搾取してきたじゃん。人間は”犬の富”とか全然気にしないんだから。" userName="overfeed" createdAt="2025/05/30 19:02:05" color="#ff33a1">}}




{{<matomeQuote body="今のベンチマークって無駄な努力っぽい。特定のテストに過学習してるだけで、汎化できてない感じ。Hugging faceのリーダーボード上位もオープンソースモデルのファインチューニング版が多いけど、そんなに使われてないみたいだし。" userName="chvid" createdAt="2025/05/28 20:29:45" color="">}}




{{<matomeQuote body="そうじゃないベンチマークも結構あるよ。<br>－ live benchmarks (livebench, livecodebench, matharena, SWE-rebenchとか)<br>－ 構造が決まってないベンチマーク（ゲームとか人間評価＜balrog, videogamebench, arena＞）<br>－ 既存の答えがないベンチマーク（putnambench, frontiermath）もある程度はね。人を雇って解かせたり、ベンチマーク開発者に賄賂送ったりもできるって言えるかもしれないけど、ずっと複雑だよ。将来のデータ汚染に対応しないベンチマークのほとんどはあまり役に立たないってのは本当。残念ながらHLEはそれをちょっと無視してた（汚染テスト用に隠しセットを追加する計画らしいけど、答えが出回ったらもう終わりだと思うな）。あのコンセプトはすごく好きだったんだけどね。追記: 確かに、これらのベンチマークはモデル能力のごく一部にしか焦点を当ててないのは本当。それ以外のことは”vibe check”するしかないね。" userName="EvgeniyZh" createdAt="2025/05/28 21:35:13" color="#38d3d3">}}




{{<matomeQuote body="君に同意だよ。チェスみたいに有効なベンチマークもあるけど、狭いしLLMは専門モデルに勝てない。一番ダメなのは訓練データに漏れるQAベンチマーク。大手ですらスコアのためにモデルを操作してる疑いがある。欠陥ベンチマークをまとめて”2%良い”とか言っても無意味。結局”vibe check”頼みだけど、理想は二重盲検で人間評価者グループに評価させること。でもめっちゃ金かかるし、結果も気に入られないかもね。" userName="chvid" createdAt="2025/05/29 07:48:47" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞狭いベンチマーク＜に反論。Nethack, Doom, Zelda, codeforces/atcoder難問、putnam証明、github PRみたいなタスクをこなせるモデルは”より広い”知能があると思うよ。環境や検証しやすさで限定されるけど、めちゃ狭くはないし、LLM以外で得意なのないしね（一部ゲーム除く）。＜br＞＞人間評価グループ＜は君がarenaを発明したってこと。arenaはユーザーバイアスとかクエリの質でSNR高くないんだよね。MathArenaみたいに専門家評価の小さなarenaがたくさんできるかも。AIに金流れ続けるならね。" userName="EvgeniyZh" createdAt="2025/05/29 08:29:26" color="#ff5733">}}




{{<matomeQuote body="発明じゃなくて、科学的評価（再現性、インセンティブなし）を説明しただけ。ちゃんとやってるとこはないね。誇大広告ばかり。＜br＞広範ベンチマークも、モデルが”mixtures of experts”でタスクごとにサブシステム選んでるだけなら、広範な知能じゃないかも。＜br＞Deepseekはオープンソースモデルのリーダーだと思う。ローカルモデルとAPIモデルは比較しにくい。中国製なのは政治的で話が難しくなるけど、逆の立場ならアメリカを批判してたはず。" userName="chvid" createdAt="2025/05/29 11:01:37" color="#785bff">}}




{{<matomeQuote body="＞問題を見て、それを任せるサブシステムを選ぶ仕組みがあるんだ。チェスならチェスプログラムを起動？詩なら詩ジェネレーターを起動？＜br＞いや、それMixture-of-Expertsの手法としてはあまり良い説明じゃないよ。名前が悪かったんだね。”この部分は詩が得意、ここはプログラミングに最適、ここは数学、ここはゲーム、ここは言語翻訳、みたいに意識的に重みが分けられてるわけじゃないから。" userName="CamperBob2" createdAt="2025/05/30 02:55:25" color="">}}




{{<matomeQuote body="＞発明しようとしてたんじゃなくて、科学的・客観的アプローチなら当然やること（健全な実験、再現性、金銭的インセンティブなし）を説明しただけ＜br＞でもそれってarenaとかmatharenaがやってることとどう違うの？＜br＞＞そういうのは、チェスプレイヤーも詩人も知ってる人が広範な知能を持ってるっていうのと同じくらい、広範な知能を示してるわけじゃないんだよ。＜br＞これらの問題は、それ自体がいくらか広範な知能を必要とするっていうのが主張なんだ。他の何もできないのに特定のタスクに特化してるのとは違ってね。" userName="EvgeniyZh" createdAt="2025/05/29 15:38:17" color="">}}




{{<matomeQuote body="そうだね、32Kトークン超えるとベンチマークって全部ダメになるんだよね。長距離依存性（ほとんどのプログラミングで必要なとこ）に焦点を当てたベンチマークってほとんど見たことないな。" userName="behnamoh" createdAt="2025/05/29 00:13:08" color="">}}




{{<matomeQuote body="いろんなモデル試したけど、自分の経験と合うベンチマークはここだけだよ： https://livebench.ai/#/" userName="lossolo" createdAt="2025/05/28 21:09:33" color="">}}




{{<matomeQuote body="livebenchは昔は良かったけど、今はネタレベルだよ。Gemini flashがProとsonnet 3.7よりコーディングで良いなんてありえないし。変な結果の始まりでしかないね。" userName="ribelo" createdAt="2025/05/29 00:17:22" color="">}}




{{<matomeQuote body="FlashがProよりコーディングで良いの？まじか…後でいくつか試してみるね。<br>気になったんだけど、どうやってそれを評価したの？" userName="pdimitar" createdAt="2025/05/29 06:50:04" color="">}}




{{<matomeQuote body="親コメントはlivebenchがもうダメなベンチマークだよって例としてFlash＞Proの結果を挙げてるんだと思うよ。新しいFlashは良いけど、Pro 05-06が弱体化してからは、本来Proがもっと良かったはずなのに（03-25版 RIP）、両モデルの性能差が縮まった感じ。livebenchの順位は間違ってるかもだけど、FlashがSonnet 3.7と同じコーディング力っていうのは多分合ってる。" userName="code_biologist" createdAt="2025/05/29 08:25:00" color="#45d325">}}




{{<matomeQuote body="ありがとう、めっちゃ参考になるわ。<br>無知晒すんだけどさ、Pro 05-06がナーフってどういう意味？" userName="pdimitar" createdAt="2025/05/29 08:27:20" color="">}}




{{<matomeQuote body="＞公開済みの特定のテストに合わせてモデルを過度に調整して、汎用性を上げることに集中しない<br>SATとか他の標準テストのこと、まさにそれって感じだね" userName="halyconWays" createdAt="2025/05/29 00:21:43" color="">}}




{{<matomeQuote body="SATってIQと0.82から0.86の相関があるんだよね。で、俺はIQって知能を判断するのにすごく役立つと思うんだ。<br>https://gwern.net/doc/iq/high/smpy/2004-frey.pdf" userName="Mistletoe" createdAt="2025/05/29 02:30:12" color="">}}




{{<matomeQuote body="認知機能の診断テストと一緒に使うなら有用な診断ツールだよ。でも、このスレッドの論点としてはさ、順位付けの方法としては全然良くないことで有名だよね。" userName="tptacek" createdAt="2025/05/29 04:12:20" color="">}}




{{<matomeQuote body="Artificial Analysisだけが安定した情報源だよ。HF Leaderboardみたいな他のは見ない方が良い。<br>https://artificialanalysis.ai/" userName="kbumsik" createdAt="2025/05/28 23:38:56" color="#ff5733">}}




{{<matomeQuote body="ここに”Overall”とか”Median”スコアを示す表があるんだけど、具体的に何をテストしたかの情報がないんだよね。最新モデルとだいたい同じくらいに見えるけど、コスト面でメリットがあって、ただオリジナルのr1みたいに遅いのが欠点（思考トークン多い？）。<br>https://www.reddit.com/media?url=https%3A%2F%2Fpreview.redd...." userName="z2" createdAt="2025/05/28 20:51:36" color="#ff5c5c">}}




{{<matomeQuote body="Livecodebenchのリーダーボードにも載ってるね。O4 Miniと同じくらいの性能だよ。これ見てみて。 https://livecodebench.github.io/leaderboard.html" userName="xelos" createdAt="2025/05/28 21:18:15" color="#38d3d3">}}




{{<matomeQuote body="Deepseekって、だいたいモデル公開の1日後くらいに論文出すのがいつものパターンだと思うんだよね。なんで少し待って発表とか調整しないんだろう。ニュース見てるとちょっと混乱するよね。" userName="swyx" createdAt="2025/05/28 20:26:55" color="">}}




{{<matomeQuote body="正直、これってマジですごいやり方だよね。ちゃんと話題作ろうとか気にしてないみたい。" userName="Destiner" createdAt="2025/05/28 20:36:17" color="">}}




{{<matomeQuote body="俺が知ってる限り、DeepSeekって中国のヘッジファンドの個人的なプロジェクトみたいなもんなんじゃないの？OpenAIとかAnthropic、Googleに比べたら、話題作りたい理由なんて全然ないよね。" userName="wyre" createdAt="2025/05/28 21:47:09" color="#45d325">}}




{{<matomeQuote body="キミが言ってる人たち（OpenAIとかね）は、別に自分たちで話題作る必要なんてないんだよ。みんなが勝手に盛り上げてくれるから。DeepSeekもR1出してからこの仲間入りした感じだね。GenAIってホントにデカい話だからさ、新しい技術を無理やり売り込まなくても、みんな自分から探しに来るんだよ。" userName="TeMPOraL" createdAt="2025/05/28 22:15:45" color="#ff5733">}}




{{<matomeQuote body="まあ、OpenAIはさ、しょっちゅう金集めたり資金調達したりしてるじゃん。『バズ』って言葉が違うなら、『神秘性』かな？だって、『コモディティ化が進んで、どんどん価格競争で底辺に向かう分野』なんて言ってたら何十億ドルも集まらないからね。Sam Altmanは『AGIはもうすぐそこ！』とか『全世界のGDPが市場規模になるんだ！』って信じ込ませたいんだよ。" userName="janalsncm" createdAt="2025/05/29 01:26:32" color="#45d325">}}




{{<matomeQuote body="OpenAIは、『AIといえばうち！』って思われ続けるために、自分らを大げさに宣伝して話題作りに必死なんだよ。他の会社は全部真似してるだけって見られたいんだ。そういう見られ方が、彼らの価値であり、最大の強み（堀）なんだ。" userName="wongarsu" createdAt="2025/05/28 22:45:49" color="#38d3d3">}}




{{<matomeQuote body="他のとこがどんだけ速攻で追いついてきたか見れば、それ（OpenAIがリードしてるって話）がウソなのも明らかだよね。実際、一番使えるAIソフト、つまり一番役に立つやつはOpenAIのじゃないし。Claudeの方がずっと信用できるよ。" userName="ktallett" createdAt="2025/05/28 23:11:10" color="#38d3d3">}}




{{<matomeQuote body="OpenAIのブランド力が一般の人にどんだけ強いかを示してるね。彼らはもうChatGPTで大成功したんだ。その名前は一般の人にとってLLMと同義語みたいになってる。ChatGPTが何かはみんな知ってるけど、ClaudeとかGeminiを知ってる人は少ない。Deepseekの方がNVidia株の件で知られてるかもね。それでも普通の人は、これらを『別のChatGPT』、『GoogleのChatGPT』、『中国のChatGPT』って見てる。この認識は結構しぶといよ。" userName="TeMPOraL" createdAt="2025/05/29 06:13:26" color="#ff33a1">}}




{{<matomeQuote body="なんか同じような雰囲気感じるね、うん。関係がどんだけ近いか考えたら、これDeepSeekからのワザとな合図かも、って思っても全然驚かないな。" userName="aibrother" createdAt="2025/05/28 19:31:17" color="">}}




{{<matomeQuote body="Deepseekがさあ、なんかすごいアプデをさ、全然大げさなことしないでさ、ふつうに出してくるの超好きなんだよね。" userName="willchen" createdAt="2025/05/28 18:24:19" color="">}}




{{<matomeQuote body="正直聞きたいんだけど、どうやってこれがすごい改善ってわかるの？どっかにベンチマークでもある？" userName="doctoboggan" createdAt="2025/05/28 19:01:48" color="#785bff">}}




{{<matomeQuote body="もしすごいアプデだったらFireShipが動画出すっしょ。草" userName="KeyBoardG" createdAt="2025/05/28 20:23:53" color="">}}




{{<matomeQuote body="FireShipかー、あのチャンネルすっかり忘れてたわ。ちょっとAI関連のニュースがあるとすぐ”ビッグニュース!!!”ってやるから、YouTubeにおすすめしないでって頼んだんだよね。動画の中身薄いし事実誤認多いし。あれ見てても「最新情報追えてるぞ」って勘違いするくらいしか役に立たないよ。" userName="sundarurfriend" createdAt="2025/05/29 07:34:52" color="">}}




{{<matomeQuote body="FireShipってさ、いつでも一番面白いテック系コンテンツ作ってるチャンネルの一つだよね。" userName="mxkopy" createdAt="2025/05/29 14:30:03" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まあ、もし好きならどうぞ。俺も数年前は好きだったんだけど、最近は面白くも情報量もなくってさ。ジョークとかミームも使い回しばっかだし、テック系の内容もリサーチ甘いし。なんか「とりあえず動画出しとこ」みたいなコンテンツにしか思えなくなってきたんだよね。" userName="sundarurfriend" createdAt="2025/05/29 20:20:10" color="">}}




{{<matomeQuote body="OpenAIがいつもやってることとかAnthropicが最近やり始めたことより、よっぽどマシ。新しいモデルがヤバいとか、脱走しようとしたとか、メインフレームハッキングしようとしたとか、なんか複雑なストーリーばっかじゃん。" userName="therein" createdAt="2025/05/29 00:49:42" color="">}}




{{<matomeQuote body="マジ？それは知らなかったな。新しいLLM出す時に「もうAGIに近いぞ」って匂わせるのが最近の新しい煽り方なの？いいね！" userName="camkego" createdAt="2025/05/29 05:50:28" color="">}}




{{<matomeQuote body="Anthropicが「警告」したらしいよ、Claude 4は賢すぎて、もしめっちゃ非道徳的なことしてたら、端末とか使えるツール使って（どこから呼び出してるかによるけど）、地元の当局に連絡しようとするんだってさ。" userName="IceWreck" createdAt="2025/05/29 21:37:32" color="#ff5733">}}




{{<matomeQuote body="WeChatで発表したと思うよ。" userName="ilaksh" createdAt="2025/05/28 20:36:35" color="">}}




{{<matomeQuote body="俺も好きだけど、せめていくつかベンチマークの数値が欲しいな。" userName="modeless" createdAt="2025/05/28 19:04:31" color="">}}




{{<matomeQuote body="Nvidiaが決算発表する日と一緒だしね。まあ偶然だと思うよ、ブラザー。" userName="hd4" createdAt="2025/05/28 18:41:54" color="">}}




{{<matomeQuote body="うん、タイミング変だよね。決算結果でどれだけお金が動くか考えたら、これちょっとでも相場操縦しようとする動きかもね。" userName="margorczynski" createdAt="2025/05/28 19:03:51" color="">}}




{{<matomeQuote body="彼らはヘッジファンドから資金提供されてると思うんだよね。だから偶然なんてないよ、きっと。" userName="consumer451" createdAt="2025/05/28 19:19:55" color="#ff33a1">}}




{{<matomeQuote body="より良い製品を出すことが本当に”相場操縦”なのかな？俺には普通の、良い競争に見えるけど。" userName="rwmj" createdAt="2025/05/28 21:03:57" color="">}}




{{<matomeQuote body="”相場操縦”になるのは、地政学的な敵が競争相手になった時だけだよ。" userName="FirmwareBurner" createdAt="2025/05/28 21:40:23" color="">}}




{{<matomeQuote body="先週出すのと今日出すのとで、市場にどう影響するっていうのさ？" userName="Maxatar" createdAt="2025/05/28 19:20:23" color="">}}




{{<matomeQuote body="市場にどう影響するかはっきり言うのは難しいけど、確かdeepseekが初めて出た時、Nvidiaの株価は大打撃を受けたんだよね。みんながNvidiaのハードウェアなしでも高性能なLLMsを開発できるって気づいたからさ。" userName="doctoboggan" createdAt="2025/05/28 19:24:23" color="#ff5733">}}




{{<matomeQuote body="反応はGPUクラスターなしでSOTAを訓練できるってことかと思ってたけど、あれは大げさだったと思うな。deepseekが示したのは効率的なやり方。もし非NvidiaのGPUで訓練されてたら大ごとだけど、発表はないみたい。" userName="jimmyl02" createdAt="2025/05/28 19:39:20" color="#ff33a1">}}




{{<matomeQuote body="計画調整には時間がかかるからさ。影響は主に企業がより安価なGPUで済むって気づいたことだと思う。同じ結果に少なく済むのは即座の勝利。<br>もう一つの影響は「中国の無名チームが低予算で西洋大手をごぼう抜き？」ってサプライズ。投資家の仮定を覆したこの出来事に、市場は不確実性で反応したんだ。" userName="TeMPOraL" createdAt="2025/05/28 22:27:58" color="#ff5733">}}




{{<matomeQuote body="Deepseekってさ、今のところ全部Nvidiaのハードで学習してんだよね。v3なんて抽象の部分でマジでNVIDIA H800を2048台使ったって書いてあるし。ほら、ここにリンクあるよ<br>https://arxiv.org/html/2505.09343v1" userName="lexandstuff" createdAt="2025/05/29 01:16:31" color="#45d325">}}




{{<matomeQuote body="ぶっちゃけ、「”DeepSeekがNvidiaをぶっ壊した”」みたいな話、あれマジで意味不明だよね。DeepSeekだって学習にNvidiaのハードめっちゃ使ってるし。ていうか、オープンなモデル出すことで、世界中の人が推論のために今まで以上にNvidiaのチップ必要としてんじゃん。" userName="hbbio" createdAt="2025/05/29 01:47:19" color="#45d325">}}




{{<matomeQuote body="俺の知ってる限りだと、APACの企業はHuawei GPUsに数百万ドルも使ってんの。効率はそんなに良くないかもだけど、地政学的に安定してるって見られてるんだよね（特にあの地域だと）。DeepSeekのおかげで、多くの経営層に「”Good”は”Good enough”」ってことと、供給停止のリスクが低い代替手段があるって証明された感じ。事実は違うかもだけど、そういう話になってる。" userName="lvturner" createdAt="2025/05/29 02:59:53" color="#ff5c5c">}}




{{<matomeQuote body="あー、俺もそこの話知ってるよ、住んでるからね！ハードウェアはマジすごいけど、CANNはまだCUDAには敵わないかな。" userName="hbbio" createdAt="2025/05/29 11:48:54" color="">}}




{{<matomeQuote body="操作ばっかだよな…<br>「”報道によると、Trump氏が中国へのチップ販売停止を命じたとのことで、テック・チップソフトウェア株が急落”」 — https://www.cnbc.com/2025/05/28/chip-software-trump-china.ht..." userName="belter" createdAt="2025/05/28 19:56:36" color="#ff5733">}}




{{<matomeQuote body="単純な疑問なんだけどさ：一般人がこのモデルをたとえめっちゃ遅くても使うのに、ハードウェア的に何が必要？ていうか、賢い人の魔法（エンチャントされた数字をくっつけるとか）なしで、俺たち一般向けに小さくするのってそもそも可能なの？" userName="transcriptase" createdAt="2025/05/28 18:23:10" color="">}}




{{<matomeQuote body="たぶんOpenRouterで無料で使えるようになるんじゃないかな。OpenRouterにはもうDeepSeek V3の685Bパラメータモデルが無料で置いてあるよ。<br>https://openrouter.ai/deepseek/deepseek-chat-v3-0324:free" userName="hu3" createdAt="2025/05/28 18:33:57" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
