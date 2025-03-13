+++
date = '2025-02-10T00:00:00'
months = '2025/02'
draft = false
title = 'ChatGPTを徹底解説！Andrej Karpathyが語るLLMのすべてとは？'
tags = ["AI", "ChatGPT", "LLM", "機械学習", "自然言語処理", "テクノロジー", "データサイエンス", "教育", "Andrej Karpathy", "情報整理"]
featureimage = 'thumbnails/blue4.jpg'
+++

> ChatGPTを徹底解説！Andrej Karpathyが語るLLMのすべてとは？

引用元：[https://news.ycombinator.com/item?id=42997340](https://news.ycombinator.com/item?id=42997340)

{{<matomeQuote body="あの動画の元の議論はどこでできるかな？今ちょうど動画を見てて半分くらいなんだけど、いくつか気になることがあるんだ。1つ目は数学とLLMについて。AndrejがLLMに与えた問いが計算系のもので、基本的なトークン予測の能力とは少し違うと思う。基本的な能力を示すプロンプトについて更多く知りたい。2つ目はメタ的な問題。LLMが他のLLMのトレーニングデータを作るという状況についてもっと知りたい。トレーニングや評価にLLMを使うことの限界について話してみたいな。" userName="albert_e" createdAt="2025-02-10T08:38:56" color="#ff33a1">}}

{{<matomeQuote body="1つ目の数学についてだけど、動画内でLLMが多くのトピックに関する専門的な知識を持っているのに、単純な数学には弱いと言ってた。多くの人はLLMを人間のように考えると思ってるけど、実際には計算能力が乏しい。数学の問題が単一の正解になりがちだから、LLMの限界を示す良い例だし、これで他の領域でも理解が進むと思う。" userName="WA" createdAt="2025-02-10T10:18:46" color="#ff5c5c">}}

{{<matomeQuote body="確かに、時刻を求めてもその答えが変とかよくあった。うまくいく時とそうでない時があって、再び疑念を持つのが難しいんだよね。" userName="Kye" createdAt="2025-02-10T17:05:34" color="">}}

{{<matomeQuote body="Andrej Karpathyは自分のウェブサイトにディスコードのリンクがあるよ。個人的には参加してないけど、結構アクティブみたい。" userName="SerCe" createdAt="2025-02-10T09:26:12" color="">}}

{{<matomeQuote body="たとえば2+2みたいな問題の解法には一つのアプローチしかないんだ。けどLLMはカウントが下手だから、2+2は彼らにとっては計算的な問題じゃない。これはパターンマッチングや言語の推論として扱われるんだ。" userName="2-3-7-43-1807" createdAt="2025-02-10T12:28:27" color="">}}

{{<matomeQuote body="LLMがカウント下手なのは、テキストでは誰も数えないから。実際には頭の中で数えてるのに、それがトレーニングデータにないからだと思う。" userName="FeepingCreature" createdAt="2025-02-10T12:40:30" color="">}}

{{<matomeQuote body="この結果は、オンラインに豊富にあるキンダーガーテン用の「掛け算表」が影響してるのかな？大体12倍とか13倍くらいまでのがテキストとして存在するし。" userName="albert_e" createdAt="2025-02-13T11:23:10" color="">}}

{{<matomeQuote body="ただのトレーニング素材だけの問題じゃなくて、トークンの数を厳密に把握することも影響する。1+1+1+1のためのトークンと1+1+1+1+1のためのトークンを別々に持たなきゃいけないし。" userName="2-3-7-43-1807" createdAt="2025-02-10T14:05:40" color="">}}

{{<matomeQuote body="内部表現は多次元ベクトルで、4096次元の典型的なQ4では、宇宙のすべての粒子に名前を付けられて、他の目的のために4000次元以上が残っている。" userName="lostmsu" createdAt="2025-02-10T17:11:59" color="">}}

{{<matomeQuote body="その意見は正当じゃないと思う。" userName="2-3-7-43-1807" createdAt="2025-02-10T17:16:08" color="">}}

{{<matomeQuote body="ポイント1については後の動画で詳しく説明してるよ。特に計算するタイミングやモデルが自分で計算せずにツールを使う場合についても話してるし。あとポイント2については後半でRLや（シミュレーションされた）RLHFについて触れていて、モデル同士がフィードバックループを形成する過程やそれによる問題も説明してるよ。" userName="fenomas" createdAt="2025-02-10T13:39:45" color="">}}

{{<matomeQuote body="LLMを使って他のLLMを訓練・評価する際の制限や危険性についてもっと知りたいな。極端な例として、‘inbred LLMs’に関する論文があるよ。" userName="m11a" createdAt="2025-02-10T10:45:06" color="">}}

{{<matomeQuote body="LLMを使って他のLLMを訓練・評価する場合、エントロピーが増加するって話だね（増加すると情報が減る）。これはまるで、人がMPegを別のロスのある圧縮で再圧縮した結果みたいになるんだ。たまにネット上でその結果が見られることがあるよ。" userName="p0w3n3d" createdAt="2025-02-10T13:20:26" color="">}}

{{<matomeQuote body="Metaのハルシネーションに対するアプローチは考えにくいけど面白いね。彼らは基本的に、トレーニングデータのスニペットを抽出して、そのことについての事実に基づく質問をLlama 3で生成し、答えを作成し、その答えを元のデータと照らし合わせて評価してるんだ。不正確な場合、モデルにその不正確な反応を認識させるよう訓練するよ。" userName="thomasahle" createdAt="2025-02-10T11:52:51" color="#ff5c5c">}}

{{<matomeQuote body="こういうアプローチは後から見ると当然に思えるけど、間違った答えを見つけたときにモデルに正しい答えを教えるのがMLエンジニアの自然な傾向なのは間違いないよ。ただ、LLMの答えの空間は無限で制約がないから、どんな努力も完璧にはならず、常に不確実性への対処が必要になるよね。" userName="2-3-7-43-1807" createdAt="2025-02-10T12:25:24" color="">}}

{{<matomeQuote body="Karpathyのビデオでのポイントは、モデルは自分の知識の範囲を良く理解してる必要があるってことだよね。古いモデルはその理解を使わずに、自信満々に全ての質問に答えてたのが問題だったんだ。" userName="fenomas" createdAt="2025-02-10T13:27:15" color="">}}

{{<matomeQuote body="私は彼の意見には賛成しないし、モデルがすでに理解しているというのも正確ではないと思う。確かに不確実性に関連する活性化コンステレーションがあるけど、実際に不確実性を表現する反応を引き出すためにそれを訓練しなきゃいけないから、理解しているとは言えないね。" userName="2-3-7-43-1807" createdAt="2025-02-10T14:08:57" color="">}}

{{<matomeQuote body="あなたが何に反対してるのかわからないな。私はKarpathyが大体1:31:00あたりで不確実性を示す特定のニューロンが点灯する話をしていることを要約しているんだ。OpenAIがChatGPTを“Orson Kovacs”が有名じゃないことを知ってるように訓練したとは思えないけど、彼らはそれが分からないことをどう表現するかを訓練したし、結果は出ていると思うんだ。" userName="fenomas" createdAt="2025-02-10T14:32:26" color="">}}

{{<matomeQuote body="俺も最初の文を誤解したかも。" userName="2-3-7-43-1807" createdAt="2025-02-10T14:46:22" color="">}}

{{<matomeQuote body="うーん、読み返してみたら俺も最初の投稿を誤解したかもしれない。もしそうならごめん！" userName="fenomas" createdAt="2025-02-10T14:59:16" color="">}}

{{<matomeQuote body="機械が間違えるのは設定ミスか壊れてるからだと思うけど、学習する機械が間違えるのはその学習がパターンをカバーできてないからだよね。でも機械学習のエンジニアが最初からそれに気づくのは難しいんじゃないかな。学習にはリズム的なものがあって、成長の過程を理解するのが大事だと思う。" userName="implmntatio" createdAt="2025-02-10T12:24:56" color="">}}

{{<matomeQuote body="Andrejの動画は面白いけど、RLの部分がちょっと曖昧なんだよね。正しい答えをどうやってトレーニングするの？ 理由をトレースして教師あり学習のようにするのか、それともスコアを計算してロス関数として使うのか。それに、LLMが正しい答えを生成できないかもしれない問題はどうするの？" userName="quantumspandex" createdAt="2025-02-10T12:40:28" color="">}}

{{<matomeQuote body="自分の理解では、LLMのRLではモデルが正しい答えを出す質問を使って、正しい反応を強化しながら進化させていくんだよね。AlphaGoのトレーニングと似てて、勝つ方法を進化させるってわけ。" userName="fenomas" createdAt="2025-02-10T13:02:46" color="#ff5c5c">}}

{{<matomeQuote body="AlphaGoは自動化されたプロセスに見えるけど、LLMの場合はすでに能力のあるモデルが必要で、問題選びも大事だと思うから結構な手間がかかるな。" userName="quantumspandex" createdAt="2025-02-10T13:13:30" color="">}}

{{<matomeQuote body="そう、LLMのためにはちゃんとしたモデルと質問が必要だよね。AlphaGoとの比較はプロセスが似てるってことが重要で、人間のラベラーが通った道をただ模倣してるわけじゃないんだよね。" userName="fenomas" createdAt="2025-02-10T13:32:17" color="">}}

{{<matomeQuote body="RLリワードにGRPOを使った詳細についてのリンクだよ。" userName="mtkd" createdAt="2025-02-10T12:59:22" color="">}}

{{<matomeQuote body="ありがとう！" userName="quantumspandex" createdAt="2025-02-10T13:09:13" color="">}}

{{<matomeQuote body="こちらのリンクね。" userName="epr" createdAt="2025-02-10T12:59:38" color="">}}

{{<matomeQuote body="見てみるね。ありがとう！" userName="quantumspandex" createdAt="2025-02-10T13:09:24" color="">}}

{{<matomeQuote body="元の動画の53分あたりで、LLMの引用がどれだけ正確かを示してた。ビッグテックが著作権侵害じゃないと裁判所を納得させた理由が気になるな。もし自分がDisneyキャラを描くモデルを訓練したら、すぐに訴えられそう。" userName="p0w3n3d" createdAt="2025-02-10T13:16:15" color="">}}

{{<matomeQuote body="彼は基本モデルから推測してるけど、それは結構能力があって、自分のトレーニングデータをそのまま出すみたい。ChatGPTみたいなインストラクトサービスでは、出すのはファインチューニングデータの方が多いはずで、たいていは提供元のものだし秘密にされてると思うよ。" userName="fenomas" createdAt="2025-02-10T14:01:40" color="#ff5733">}}

{{<matomeQuote body="LLMを損失圧縮と捉えるなら、推測時は圧縮データを解凍するみたいなもんで、その瞬間に問題が起きるってことかもね。" userName="p0w3n3d" createdAt="2025-02-10T17:38:07" color="">}}

{{<matomeQuote body="今、連邦データがAI企業に流出してるけど、彼らがそのデータでモデルを訓練した場合、法律はどうやって彼らに'学習をやめろ'と言うんだろう。コピーを消せって裁判所が言うけど、元データはまだ残るし。" userName="sambull" createdAt="2025-02-10T13:20:57" color="">}}

{{<matomeQuote body="まだ訴訟中だと思うよ。" userName="avbanks" createdAt="2025-02-10T13:20:02" color="">}}

{{<matomeQuote body="モデルが’完全に’オープンソースになるには、モデルそのものと実行方法だけじゃなくて、データや訓練に使うプログラムも必要だよ。" userName="dzogchen" createdAt="2025-02-10T07:46:15" color="">}}

{{<matomeQuote body="企業が自分たちのLLMに使った著作権のある100TBのコンテンツをただ配布するのは合理的なの？" userName="a2128" createdAt="2025-02-10T08:13:04" color="">}}

{{<matomeQuote body="配布はしないけど、具体的にリストアップしてリンクするのはありじゃない？モデルの同じコピーは作れないけど、訓練方法や詳細がオープンなら、使われた訓練素材のリストがあればいいと思う。" userName="TeMPOraL" createdAt="2025-02-10T10:55:52" color="#38d3d3">}}

{{<matomeQuote body="それを期待するのは難しいけど、Metaは一応そんなことをしたみたいだね。" userName="atq2119" createdAt="2025-02-10T09:36:18" color="">}}

{{<matomeQuote body="実際、彼らは15Tトークンを使ったと言われるデータセットをHFに上げてるよ。ただし、明らかな理由でラベルはついてないけど。" userName="moffkalast" createdAt="2025-02-10T10:18:07" color="">}}

{{<matomeQuote body="RL-only（SFTなし）のアプローチはその問題を解消するかも。問題セットは西洋の全体を遍歴するより小さくて機械的に作れると思う。" userName="anotherhue" createdAt="2025-02-10T08:15:29" color="">}}

{{<matomeQuote body="ファイル名、サイズ、ソース、チェックサムがあるリファレンスファイルはOSIの定義に含まれるの？" userName="prisenco" createdAt="2025-02-10T08:40:45" color="">}}

{{<matomeQuote body="オープンソースモデルがSOTA性能を主張するなら、そのトレーニングデータからの情報漏洩を確認できるはずだよね。" userName="puapuapuq" createdAt="2025-02-10T08:34:16" color="">}}

{{<matomeQuote body="それは間違ってるよ。要求を満たすためにトレーニングデータを全部提供する必要はない。実際のOpen Source AI DefinitionやFAQを読むことをお勧めするよ。" userName="HumanOstrich" createdAt="2025-02-10T08:48:07" color="#ff33a1">}}

{{<matomeQuote body="FYI、彼らのオープンソースAI定義は物議を醸したけど、企業の影響が大きかったから驚きではないよ。広いコミュニティが適切なオープンソース定義を決めるまで、無視した方がいい。" userName="Salgat" createdAt="2025-02-10T10:11:17" color="">}}

{{<matomeQuote body="新しい定義が必要だね。" userName="amelius" createdAt="2025-02-10T08:54:07" color="">}}

{{<matomeQuote body=">モデルとそれを動かすための方法だけじゃなくて、データやトレーニングに使うプログラムも必要だよ。モデル自体がアーキテクチャを示すことが全てなんだよ。" userName="2-3-7-43-1807" createdAt="2025-02-10T12:33:34" color="">}}

{{<matomeQuote body="残念ながら、OSAI定義ではトレーニングデータが利用可能である必要はない。悲しいよね。" userName="rettichschnidi" createdAt="2025-02-10T08:10:39" color="">}}

{{<matomeQuote body="そうだよね。まだ理解できないんだけど、モデルの重みデータと実行環境があれば、閉じたソースの実行ファイルと何が違うのか分からない。みんななんでこれをオープンソースって呼ぶの？" userName="szundi" createdAt="2025-02-10T07:55:16" color="">}}

{{<matomeQuote body="通常、ソースコードやビルドファイルにアクセスしないと、従来のコードを自分のニーズに合わせるのは難しいからだよ。LLMではモデルの重みや実行環境、許可のあるライセンスがあれば微調整や拡張ができる。もちろん、詳細なモデルリリースペーパーやトレーニングコード、トレーニングデータがあるとベストだけど。MetaやDeepseekがもたらした貢献も軽視しすぎだと思うよ。" userName="PeterStuer" createdAt="2025-02-10T08:15:13" color="#ff5c5c">}}

{{<matomeQuote body="これは純度を争うためじゃなくて、明確性を求めてるんだ。MetaやDeepseekが焼き留めたモデルやホワイトペーパーを出しているなら、それ自体はいいと思う。ただ、ソースがオープンでないのに“オープンソース”って呼ぶべきじゃないよ。" userName="GeneralMayhem" createdAt="2025-02-10T09:20:56" color="#ff5c5c">}}

{{<matomeQuote body="オープンソースって定義によるよね。オープンソースライセンスでコードが公開されるのがオープンソースだと思ってたけど、他の人はライセンスに関係なくソースが公開されてればオープンソースって言ってるみたい。 obfuscateしたコードをオープンソースライセンスで出すのはオープンソースなのかな？それに近い感じでモデルの重みをオープンソースライセンスで出してると思うな。" userName="doix" createdAt="2025-02-10T11:42:39" color="">}}

{{<matomeQuote body="オブファスケートされたコードをオープンソースライセンスで出したらオープンソースとは言えないな。オープンソースってのは編集用の形で公開されるべきだし、単なるバイナリをオープンにしたからってソースが開かれたことにはならないと思う。" userName="GeneralMayhem" createdAt="2025-02-10T15:44:39" color="#ff5733">}}

{{<matomeQuote body="実際、微調整できるからってとこがあると思うけど、バイナリの場合も可能だよね。ゲームなんかではその傾向が強いと思う。実体験ではMLでも似たような感じかな。APIは弄ることができないソフトウェアに近いかな。いつものことだけど、LLMの分野ではハードルが低く感じるな。" userName="fhd2" createdAt="2025-02-10T08:12:49" color="">}}

{{<matomeQuote body="たくさんの設定項目があるプロプライエタリプログラムはオープンソースってこと？" userName="darkwater" createdAt="2025-02-10T09:32:22" color="">}}

{{<matomeQuote body="ローカルで実行可能なプロプライエタリプログラムもオープンソースAIって呼ぶなら、おかしな気がする。結局、それは「SaaSじゃない」ってだけで、他のソフトウェアとは違う定義が出来上がってるよね。" userName="fhd2" createdAt="2025-02-10T13:46:24" color="">}}

{{<matomeQuote body="オープンソースって資産が不明瞭なライセンスが絡むとややこしいよね。Jedi Knight 2なんかもソースコードは出てても、そのアセット（モデルやテクスチャ、音声）が必要だから実行は難しいし、そのアセットの合法性も不明瞭。MLMのトレーニングデータを公開することも法的に難しいし、今も裁判がもめてるところ。" userName="sigmoid10" createdAt="2025-02-10T08:16:20" color="#785bff">}}

{{<matomeQuote body="ゲームの例で言うと、オープンソースはあくまでソフトウェアであって、アセットは別物だよね。Dolphinなんかもプログラムはオープンだけど、データはオープンじゃない。ソースコードにアクセスできるのは価値があるけど、オープンソースモデルとは呼ぶならデータ取得やクリーニングの部分も含めるべきだと思う。" userName="GeneralMayhem" createdAt="2025-02-10T09:17:06" color="#38d3d3">}}

{{<matomeQuote body="オープンソースがオープンアセットじゃないっていうなら、今更それを変える必要はなくない？トレーニングデータも資産だから、アプリを動かすのに必要ないけど、オープンLLMはそのゲームよりもオープンだと思うはず。" userName="sigmoid10" createdAt="2025-02-13T08:46:58" color="">}}

{{<matomeQuote body="でもトレーニングデータはオープンじゃないからね。オープンソースがオープンアセットでもないのは同意だけど、トレーニングデータもコードもオープンじゃないのがポイントだよ。" userName="GeneralMayhem" createdAt="2025-02-14T04:48:27" color="">}}

{{<matomeQuote body="モデルのトレーニングに使ったツール（ビルドスクリプト）はオープンソースにできるんじゃない？" userName="amelius" createdAt="2025-02-10T10:21:47" color="">}}

{{<matomeQuote body="オープンソースって言葉が流行りもあって、メディアはプレスリリースをそのまま繰り返してるだけだよ。実際にモデルを扱ってる人たちは、時々例外もあるけど、ほとんどの場合はオープンウェイトって呼んでる。例えばOLMoみたいにデータセットやトレーニングスクリプトを公開してるのが本当にオープンソースだね。" userName="moffkalast" createdAt="2025-02-10T10:12:02" color="">}}

{{<matomeQuote body="Metaがそう呼んで他の人たちもそうしたいってことで、みんなその名前に従ってるだけだと思うよ。" userName="benterix" createdAt="2025-02-10T08:42:21" color="">}}

{{<matomeQuote body="Metaがリークされた直後にラッマって名前をつけたから、それが定着したんじゃないかな。AI業界ではライセンスについてあんまり気にしないし。" userName="dartos" createdAt="2025-02-10T11:26:03" color="">}}

{{<matomeQuote body="LLMsについてたくさんの記事を読んできたけど、どうして他のモデルはSOTAに勝てなかったのか常に気になるんだよね。このモデルのアーキテクチャがどういう過程で進化してきたのか知りたい。" userName="est" createdAt="2025-02-10T09:11:23" color="">}}

{{<matomeQuote body="単純に言うと、注意ベースのモデルの安定性が非注意ベースのモデルよりも勝ってるから。GoogleがMHA自己注意を捨てたのは大きなアイデアだったのに、OpenAIはFeedForward注意モデルに基づいて帝国を築いた。これは他の方法と比べて生成が超安定。" userName="rob_c" createdAt="2025-02-10T10:48:15" color="#ff5c5c">}}

{{<matomeQuote body="多分、誰も本当の理由はわからないんだと思う。うまくいくものを使って、その中で小さな変化を試してるって感じ。まるで錬金術みたいだよ。" userName="amelius" createdAt="2025-02-10T10:31:11" color="">}}

{{<matomeQuote body="他のモデルは効果的なスキップ接続が少なかったり、入力から出力まで多くの情報を通さなかったから。過去のモデルは情報に制限があったり精度が低かったからね。" userName="rob_c" createdAt="2025-02-10T10:53:07" color="">}}

{{<matomeQuote body="モデルのトレーニングに関する非公開の研究がたくさんあるよ。データのクリーニングや合成データを作るのが秘訣なんだ。TinyStoriesやPhi-X、最近の数学的推論の小データ研究はその例。" userName="alecco" createdAt="2025-02-10T11:03:45" color="">}}

{{<matomeQuote body="大きなテキストコーパスの統計情報を理解するために膨大な努力が注がれているよ。選ばれた情報源からより少ない言語入力でトレーニングの質を保つ方法が示されたから、特に注目されてる。" userName="rob_c" createdAt="2025-02-10T11:10:08" color="#ff5c5c">}}

{{<matomeQuote body="“SOTAでない他のモデル”って具体的に何を指してるの？" userName="2-3-7-43-1807" createdAt="2025-02-10T12:35:05" color="">}}

{{<matomeQuote body="昔、言語モデルの歴史は文法構築から始まり、n-gramモデルに発展したんだ。でもRNNは古い文脈を忘れがちで、LSTMがその問題を解決したけど、さらなる課題があった。それが注目メカニズムを使ったことで改善されたけど、LSTMの非効率さに苦しんで、それがTransformerの発明につながったんだ。言語は実際には並行処理できるってのが鍵で、これがTransformerの基礎になった。モデルの予測性能や知能の成長は驚きで、GPT-1からGPT-3の研究を振り返ると、その能力に気づくよ。大きな理由は、トレーニングの効率と、予期せぬ学習能力の高さだと思う。" userName="HarHarVeryFunny" createdAt="2025-02-10T18:58:23" color="#ff5c5c">}}

{{<matomeQuote body="DeepSeekが結局何なのか、特に$5MとChatGPTの> $1Bの違いがよくわからん。何をしたのか、何をしなかったのか知りたい。" userName="khazhoux" createdAt="2025-02-10T09:12:50" color="">}}

{{<matomeQuote body="ZviのニュースレターにDeepSeekについての詳細があるみたいだよ。ここをチェックしてみて。" userName="fredoliveira" createdAt="2025-02-10T10:08:22" color="">}}

{{<matomeQuote body="これはDiana Hu（YCのGP）からのリンクだよ。興味があれば見てみて！" userName="uncomplexity_" createdAt="2025-02-10T10:03:02" color="">}}

{{<matomeQuote body="LLMに注目が集まるのは残念。他のAI、数学やタンパク質折りたたみ、物理データを解析するAIとの比較が少なすぎる。" userName="sylware" createdAt="2025-02-10T12:00:26" color="">}}

{{<matomeQuote body="今日、いいスレッド見たよ！リンクをチェックしてみて。" userName="miletus" createdAt="2025-02-10T09:37:44" color="">}}

{{<matomeQuote body="これは本当に素晴らしい講義の良い要約だね。元の講義を追うかどうか悩んでる。" userName="bluelightning2k" createdAt="2025-02-10T08:25:46" color="">}}

{{<matomeQuote body="彼のCでのLLCがコースのための踏み台だったのは残念だな。" userName="9999_points" createdAt="2025-02-10T13:15:42" color="">}}

{{<matomeQuote body="動画は見てないけど、TL;DRのトークン化について知りたかった。" userName="wolfhumble" createdAt="2025-02-10T12:14:08" color="">}}

{{<matomeQuote body="ハードウェアの問題についてもっと議論してほしい。シリコンと生物学的なスイッチとの違いがあまり注目されていないと思う。" userName="EncomLab" createdAt="2025-02-10T11:39:12" color="">}}


