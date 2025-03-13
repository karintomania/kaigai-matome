+++
date = '2025-02-11T00:00:00'
months = '2025/02'
draft = false
title = '1.5BモデルでRLを活用しO1-Previewを超える！DeepScaleRの驚異的な成果とは？'
tags = ["AI", "機械学習", "強化学習", "データサイエンス", "モデルスケーリング", "技術革新", "DeepLearning", "研究成果", "パフォーマンス向上", "トレンド"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> 1.5BモデルでRLを活用しO1-Previewを超える！DeepScaleRの驚異的な成果とは？

引用元：[https://news.ycombinator.com/item?id=43017599](https://news.ycombinator.com/item?id=43017599)

{{<matomeQuote body="これは特定のベンチマークにチューニングされてるだけで、O1-Previewとは別のタスクでは全然ダメ。これらの問題を解決したいって思ってるなら見る価値はあるけど、すごいことは確かだね。" userName="gpjanik" createdAt="2025-02-11T21:20:07" color="">}}

{{<matomeQuote body="O1-previewを超えたし、多くの7Bモデルにも勝ったって。これはテストセットでの結果だし、トレーニングセットには入ってないよ。もしモデルを完全に一般化したいなら、コーディングデータセットでトレーニングしてもいいよ。" userName="mluo" createdAt="2025-02-11T21:29:34" color="#ff33a1">}}

{{<matomeQuote body="すでに良い成果だけど、小さいモデルを一般的にトレーニングするのが専門のファインチューニングと同じ効果があるとは思えない。限られた情報量の中で、どれだけの背景データを扱えるかが難しいよね。訓練サイズによってどれだけ違いが出るのかも難しいし、最適化が進むにはもう少しコンピュートが必要かも。しかし、これをオープンにしてくれてありがとう！" userName="zamadatix" createdAt="2025-02-11T21:41:02" color="">}}

{{<matomeQuote body="量子化すると小さいモデルには大きな影響があって、AIMEで最大10％落ちることもあるよ。私たちのモデルはbfloat16で最高の成果を出してる。私たちのリポジトリもぜひチェックしてね：<br><br>https://github.com/agentica-project/deepscaler" userName="mluo" createdAt="2025-02-11T22:19:04" color="">}}

{{<matomeQuote body="素晴らしい発見だね。これはAIの次のステップで、MoM（Mixture of Models）が開ける可能性もある。小さなファインチューニングされたモデルがタスクの各部分を担当するっていうね。" userName="rvnx" createdAt="2025-02-11T22:32:39" color="">}}

{{<matomeQuote body="以前の私の作品もチェックしてみて：<br>https://stylus-diffusion.github.io/<br>このプロジェクトは多くのモデルやLoRAの選択・ルーティングをスケールアップするよ。" userName="mluo" createdAt="2025-02-11T22:34:40" color="">}}

{{<matomeQuote body="いいね、ありがとう！見てみるよ。" userName="rvnx" createdAt="2025-02-11T22:35:40" color="">}}

{{<matomeQuote body="o1は数学の解法以上のものだし、小さいモデルでそれだけのものを訓練するのは無理だと思う。ただ、専門的なモデルが世界の複雑さを扱うにはいい方針かも。もう一段上の専門家の混合みたいな感じかな。それを統合するのはまた別の問題だね。全てを支配する一般的なモデルが必要かも。" userName="numba888" createdAt="2025-02-12T00:10:22" color="">}}

{{<matomeQuote body="特殊なタスクに対して専門モデルを一般的なハードウェアで動かす重要性について考えたことある？（たとえば、CPUコアが数個あれば動くとか）" userName="mdp2021" createdAt="2025-02-12T00:29:48" color="">}}

{{<matomeQuote body="小さいモデルはただのツールに過ぎない。たくさんあっても道具セットにしかならない。AGIを彼らだけで進化させることはないけど、構造（脳）の中で組み合わせると何かに近づくかも。大きなスマート計算機みたいな感じ。‘キャラクター’を作るにはもっと必要だし、たとえばターミネーターみたいなのを作るのは容易ではない。" userName="numba888" createdAt="2025-02-12T08:00:38" color="">}}

{{<matomeQuote body="俺は反対だ。トレーニングコストを劇的に18倍下げたことを示したんだから、それだけでも注目に値する。O1のどのベンチマークでも勝つのは簡単じゃないし。" userName="janalsncm" createdAt="2025-02-11T21:39:04" color="#45d325">}}

{{<matomeQuote body="基本的な足し算問題を試したけど、よく小数点を間違えたり、無駄に推論トークンを使ったりしていて、DeepSeek 1.5Bよりも信頼性は微妙だった。自分で書いたフィボナッチアルゴリズムも全然ダメだったし、SchemeではなくPythonみたいな文法で話し始めた。" userName="pona-a" createdAt="2025-02-11T23:25:53" color="">}}

{{<matomeQuote body="そのフィボナッチアルゴリズムについて言うと、このモデルは数学問題データセットのみで訓練されたみたいだから、プログラミングにはあまり強くないのは納得だな。" userName="viraptor" createdAt="2025-02-12T04:47:12" color="">}}

{{<matomeQuote body="元のモデルはプログラミングのミスだけでなく、倍増の公式も覚えてなかった。解決されたのは嬉しいけど、もっと一般的な性能向上も期待してたんだ。" userName="pona-a" createdAt="2025-02-12T10:34:44" color="">}}

{{<matomeQuote body="このモデルは全然コーディングできない。高校レベルの数学や簡単な物理の宿題は驚くほど上手くやるけど、それ以外は俺のテストプロンプトでは毎回失敗する。純粋な専門特化モデルだね。" userName="ekidd" createdAt="2025-02-15T14:19:15" color="#45d325">}}

{{<matomeQuote body="数学タスクでもあまり印象的じゃない気がする。ChatGPTが出たとき、ChatGPTレベルのパフォーマンスを示すために微調整されたLLMがあふれたけど、どれも誤解を招いた。これらのLLMは狭いベンチマーク用に微調整されていたから、一般的なLLMと比較するのはリンゴとオレンジを比べるようなもんだ。" userName="nabakin" createdAt="2025-02-11T23:18:44" color="">}}

{{<matomeQuote body="じゃあ、ベンチマークは何を意味するの？" userName="torginus" createdAt="2025-02-11T23:20:23" color="">}}

{{<matomeQuote body="自動ベンチマークはまだ有用だよ。でもLLMがそれにオーバーフィットするように訓練されると、あんまり意味を持たなくなる。人間の評価が金の基準だけど、それにも問題がある。" userName="nabakin" createdAt="2025-02-11T23:29:45" color="">}}

{{<matomeQuote body="LLMをどうやって'チート'しないように訓練するかが問題だよ。テストの問題が漏れたらどうやって準備するか？テスト問題を暗記するのは問題だけど、出そうな問題を練習するのは少しマシかな。" userName="torginus" createdAt="2025-02-12T00:54:59" color="">}}

{{<matomeQuote body="データセットをチェックして、ベンチマークの漏洩を取り除くのが唯一の方法だと思う。でも、そうすると訓練する側が正直じゃないと仮定することになっちゃうし、漏洩がチェックを通過する可能性もある。ダイナミックなベンチマークを作るのも面白いんじゃないかな。" userName="nabakin" createdAt="2025-02-12T01:20:16" color="">}}

{{<matomeQuote body="コミュニティのみんなは、この手のベンチマークには懐疑的なんだよね。" userName="avbanks" createdAt="2025-02-11T23:54:57" color="">}}

{{<matomeQuote body="これは見てみる価値があるよ！素晴らしい発見だね。" userName="Aiguru31415666" createdAt="2025-02-12T10:44:31" color="">}}

{{<matomeQuote body="URLをhttps://github.com/agentica-project/deepscalerから、リポジトリも指してる背景を紹介する記事に変えたよ。" userName="dang" createdAt="2025-02-11T20:54:09" color="">}}

{{<matomeQuote body="好奇心から教えてほしいんだけど、休暇とかどうしてるの？休むことってあるの？HNを何年も使ってるけど、休暇を取るのを見たことがないよ。" userName="neom" createdAt="2025-02-12T00:45:07" color="">}}

{{<matomeQuote body="ワークショップによく行くから、興味があることをやってるし、休憩中や夜にHNをちょっとやってるよ。" userName="dang" createdAt="2025-02-12T01:42:14" color="">}}

{{<matomeQuote body="HNの裏にはチームがいるのはわかるけど、君の意志の力はHNを素晴らしい議論の場にしてるよ！感謝してる。" userName="ukuina" createdAt="2025-02-12T05:20:53" color="">}}

{{<matomeQuote body="鍵になるのは、特定のタスクに対して1Bモデルをトレーニングするシンプルで信頼できる formula だね。これまではなかったんだ。エッジデバイスがもっと賢くなるよ。" userName="thorum" createdAt="2025-02-11T21:39:48" color="">}}

{{<matomeQuote body="Appleがこのことに注目して、デバイス上のモデルを改善してくれるといいな。" userName="manmal" createdAt="2025-02-11T21:47:35" color="">}}

{{<matomeQuote body="結局、$4500もかかるから、家でトレーニングするのは難しそうだけど、将来的にその数字も変わるかもね！ワクワクする。" userName="Aperocky" createdAt="2025-02-11T22:34:35" color="">}}

{{<matomeQuote body="結局、小さな強化モデルが勝つはず。みんなの会社もチームも、特化した人が多いんだから。でも、今のベンチマークに過剰に重点を置くのは問題だね。本当に何かを測るならユーザーのKPIと比べるべき。" userName="amazingamazing" createdAt="2025-02-11T21:50:44" color="#ff5c5c">}}

{{<matomeQuote body="今のやり方は人間の限界の産物だと思うんだ。永遠に生きる共有MLモデルにはそんな制約はないし、異分野の知識がとても役立つことも多いよね。ただ珍しいけど。" userName="ericd" createdAt="2025-02-11T22:04:01" color="">}}

{{<matomeQuote body="人間が専門化と協力で地位を得たなら、無限のマスターマインドと協力を合わせたらどうなるんだろうね。" userName="noman-land" createdAt="2025-02-11T22:15:31" color="">}}

{{<matomeQuote body="最悪の場合、超知能で優しいAIが経済問題を解決して、数千兆人の幸せで豊かな人間をペットにするような社会になっちゃうのかな。" userName="UltraSane" createdAt="2025-02-11T22:28:54" color="#ff5733">}}

{{<matomeQuote body="競争する超知能の政党がクラウド投資家を説得するために宣伝を作る様子が待ちきれないよ。" userName="jazzyjackson" createdAt="2025-02-11T22:22:17" color="">}}

{{<matomeQuote body="帯域幅がまだヘボいから、人間並みに頭脳の集まりはグループ内の最高のマスターマインド以上にはならないと思うな。時間がかかりすぎるし、創造的な考えが出るのも遅くなる感じ。一年か十年待って、一つの結果を出す価値があればいいけど。軽い思いつきだけど、十分な頭があれば非常に安価な基盤から、限られたストレージと遅い計算を得る方法を見つけられるかもね。塩の結晶を湖や海で育てるみたいな感じで。ランダムにエンコードしても、十分な頻度でやれば全体のセットが得られるし、正確に読む必要もないし。あれ？宇宙の説明しちゃった？" userName="6510" createdAt="2025-02-12T00:10:35" color="#785bff">}}

{{<matomeQuote body="人間の代わりになるようなものは、蜂の巣やアリの巣が似たようなものになるのかな。" userName="evilduck" createdAt="2025-02-12T14:55:00" color="">}}

{{<matomeQuote body="私たち猫になっちゃうんじゃない？" userName="6510" createdAt="2025-02-11T22:24:07" color="">}}

{{<matomeQuote body="専門化された人たくさんいるけど、あんまり見ないな。むしろ、広い知識を持ってる人が特許やデザインで成功してるから、皆が専門的にやってる中でボックスの外を見るのができるのがその人たちだけだよ。" userName="nomel" createdAt="2025-02-11T22:15:18" color="">}}

{{<matomeQuote body="いや、クリエイティブになるにはマスターマインドが必要なんだ。小さいモデルはデータ変換の明示的な指示に従うのは得意だけど、自分がまだ解決してない問題には役に立たないと思うよ。" userName="jazzyjackson" createdAt="2025-02-11T22:21:06" color="">}}

{{<matomeQuote body="JSONスキーマに従うのは普通は解決済みの問題じゃないの？トークンを制限すればゴミみたいなモデルでも大丈夫なはずでしょ。" userName="EE84M3i" createdAt="2025-02-11T22:25:32" color="">}}

{{<matomeQuote body="そういうことだよ。明確なタスクとJSONスキーマがあれば、小さいモデルでも使えるけど、やっぱり幻覚起こすことは多いよね。Llama3 7Bなんて、メール署名から連絡先を抽出する時に電話番号を作っちゃったし。" userName="jazzyjackson" createdAt="2025-02-12T01:35:23" color="">}}

{{<matomeQuote body="このベンチマーク、信じられる？何か意味あるの？簡単に操作できそうで、本当にモデル同士を比較するのに正確な方法とは思えない。モデルが見たことのない類似の問題を出すとパフォーマンス下がるし。" userName="czk" createdAt="2025-02-11T21:47:28" color="">}}

{{<matomeQuote body="AIMEには重大な問題があるみたい。テストセットとほぼ同じ問題がオンラインにあるみたいだし。" userName="thorum" createdAt="2025-02-11T21:55:08" color="">}}

{{<matomeQuote body="それがRLで訓練されたモデルにどう関係するのか分からない。もし答えをすでに覚えてるのなら、なんで訓練が必要だったの？" userName="janalsncm" createdAt="2025-02-12T02:03:12" color="">}}

{{<matomeQuote body="結果が気に入らないと、テストを疑う人もいるんじゃない？" userName="javaunsafe2019" createdAt="2025-02-11T21:50:26" color="">}}

{{<matomeQuote body="新しい”推論”モデルを試すためのシンプルなプロンプトを知ってる人いる？'strawberry'の中のRの数を数えるのはちょっとつまらないよね。ローカルで一番小さいGGUFバージョンで試してるけど、自己確認を9回して正解出してくれたよ。ただ、最初の方でクリティカルなエラーを犯してた。" userName="simonw" createdAt="2025-02-11T21:03:34" color="#ff33a1">}}

{{<matomeQuote body="2つあるよ。1つは深層学習モデルR1だけがクリアしたと思うやつ。12リットルのジョグと6リットルのジョグがあって、どうやって6リットルを得るか？Deepseekは答えを出したけど、他のLLMはうまくいかなかった。面白いのは、追加で'ステップバイステップで考えて'って言わないと、他のモデルは正解できないことが多い。" userName="cheeko1234" createdAt="2025-02-11T21:25:28" color="#38d3d3">}}

{{<matomeQuote body="Wow、Gemini 2は最初の質問に9ステップのプロセスが必要だった。12リットルのジョグと6リットルのジョグを使って6リットルを得る手順だ。" userName="rfurmani" createdAt="2025-02-11T21:32:31" color="#785bff">}}

{{<matomeQuote body="あいつ、自分に酔ってるよね！" userName="sdwr" createdAt="2025-02-11T22:33:58" color="">}}

{{<matomeQuote body="二つ目の無駄なジョグを加えると、4oがひどくなるよ。これで6リットルの水を測る方法を説明するね。" userName="wnissen" createdAt="2025-02-11T22:26:06" color="#45d325">}}

{{<matomeQuote body="面白いことに、o3-mini-highは最初に正しいことを考えてたみたい。6リットルを測るには、6リットルのジョグをそのまま使うのが簡単だと思ったんだけど、何かトリックがある気がする。" userName="neodypsis" createdAt="2025-02-11T21:49:11" color="">}}

{{<matomeQuote body="この比較はあまり信じられないな。どのモデルでも20回テストしないから、確率的な性質が影響してると思う。" userName="jazzyjackson" createdAt="2025-02-11T22:24:58" color="">}}

{{<matomeQuote body="他のLLMでも同じだよ。12リットルのジョグをフルにしてから6リットルのジョグに注ぐのも。4リットルのジョグで同じようにやらせてみて！" userName="DebtDeflation" createdAt="2025-02-11T21:36:06" color="">}}

{{<matomeQuote body="R1には問題ないよ。混乱してる時は、ただのトリッククエスチョンか気にしてるだけ。" userName="CamperBob2" createdAt="2025-02-11T22:27:12" color="">}}

{{<matomeQuote body="Deepseekはこう言ったよ：12リットルと6リットルのジョグで、正確に6リットルを測るためには、12リットルを満タンにして6リットルのジョグに注ぐだけ。" userName="egorfine" createdAt="2025-02-11T21:34:43" color="#785bff">}}

{{<matomeQuote body="Llama v3.3 70bで試したら、5回のサンプルで毎回正解したよ。他のモデルはトリッククエスチョンだと思ってるみたい。" userName="wnissen" createdAt="2025-02-12T17:12:18" color="#ff33a1">}}

{{<matomeQuote body="O1 Proに最初の質問したんだけど、48秒考えて間違えた。12リットルのジョグを満タンにして、6リットルのジョグに注いだ。ちょっと冗談言われた。" userName="wincy" createdAt="2025-02-11T21:54:40" color="">}}

{{<matomeQuote body="この研究のリード著者の一人だよ。小さいモデルにはfp16じゃなくてBfloat16の量子化を使うのをおすすめする。性能がかなり落ちるからね！" userName="mluo" createdAt="2025-02-11T21:27:10" color="#ff33a1">}}

{{<matomeQuote body="元のR1に基づいた1.58ビットの動的量子モデルと比較した？Unslothがやったことは、フルQ8バージョンに比べて推論性能があまり落ちなかったみたいだね。" userName="CamperBob2" createdAt="2025-02-11T21:35:32" color="">}}

{{<matomeQuote body="モデルが小さいから（1.5B）が重みの変動に敏感なんだよ。" userName="mluo" createdAt="2025-02-11T22:17:05" color="">}}

{{<matomeQuote body="GGUF版のモデルってどこかにある？Macを使ってるんだけど。" userName="simonw" createdAt="2025-02-11T21:36:35" color="">}}

{{<matomeQuote body="私たちのモデルの枝として作った人がいるGGUFもあるみたいだから、試してみて！" userName="mluo" createdAt="2025-02-11T22:16:04" color="">}}

{{<matomeQuote body="フルムーンのiOSアプリに追加できるMLX版はある？" userName="newman314" createdAt="2025-02-12T20:01:40" color="">}}

{{<matomeQuote body="ストロベリーのRsに関して、いくつかのモデルを並べてみたけどSky T-1とGemini 2 Flashは外したよ！" userName="rfurmani" createdAt="2025-02-11T21:26:23" color="">}}

{{<matomeQuote body="各モデルにQtのQSyntaxHighlighterサブクラスを実装させるのが好きなんだ。C++で、木の座標に基づいて実装してる。コーディング以上にAPIをどう組み合わせるかの推論が重要なんだよ。最近はDeepSeekモデルにはがっかりしてて、期待が薄れてる。" userName="throwup238" createdAt="2025-02-11T21:22:55" color="">}}

{{<matomeQuote body="（Qt開発者仲間として）君の意見がすごくいいと思う！どこかで連絡取れるところはあるかな？プロフィールに社交メディアがあるから、そこでもいいよ。" userName="rubymamis" createdAt="2025-02-12T10:31:50" color="">}}

{{<matomeQuote body="nvidiaのllama 3.1 nemotron 70bを使ってみて！Gstreamerのコードを役に立つ形で出せる唯一のモデルだから。" userName="greenavocado" createdAt="2025-02-11T21:34:17" color="">}}

{{<matomeQuote body="f/2.8とf/4.5は何ストップ違うか気になるな。正しい計算式を使えば解けるよね。普通のLLMだと0.67ストップとか言うけど、実際は約1.37、もしくは1と1/3でいいと思う。少し難しい質問だけど、LLMは計算式を出すのに困らないし、答えをチェックする力も持ってるはずだから、きちんとした結果を期待したいな。" userName="coder543" createdAt="2025-02-11T21:51:08" color="#ff33a1">}}

{{<matomeQuote body="小さいモデルは量子化の影響を受けやすいから、これがちゃんと動くのは意外だね。" userName="Palmik" createdAt="2025-02-11T21:17:31" color="">}}

{{<matomeQuote body="そうだね、一番小さい量子化版が部分的に使えるなんてびっくり。大きなモデルでも同じバグを再現できたよ。" userName="simonw" createdAt="2025-02-11T21:18:46" color="">}}

{{<matomeQuote body="モデルがどうやって解くか聞いてくるのが好きだな。Sonnetを使って問題を解こうとした時に、モデルが好奇心を持って助けてくれる感じが面白い。" userName="varispeed" createdAt="2025-02-12T22:03:46" color="">}}

{{<matomeQuote body="これって量子化の問題なのか、それともトークン化の問題なのか疑問だね。" userName="evrimoztamur" createdAt="2025-02-11T21:20:21" color="">}}

{{<matomeQuote body="F32で再現できたから、トークン化の問題かもしれないと思ってる。" userName="simonw" createdAt="2025-02-11T21:22:25" color="">}}

{{<matomeQuote body="bfloat16を試してみて！モデルがfp32として保存されたバグがあるよ。" userName="mluo" createdAt="2025-02-11T21:30:08" color="">}}

{{<matomeQuote body="この3.6GBのF16モデルで試したら、今度はストロベリーのトークン化に混乱しなかった！" userName="simonw" createdAt="2025-02-11T21:47:11" color="">}}

{{<matomeQuote body="やったね、ちゃんと動くのが嬉しい！小さいモデルはdtypeに敏感だよね。" userName="mluo" createdAt="2025-02-11T22:09:27" color="">}}

{{<matomeQuote body="「ストロベリーの中のRの数を数えて」って、もうどの訓練データにも入ってるかもね。" userName="buyucu" createdAt="2025-02-11T21:37:33" color="">}}

{{<matomeQuote body="いちごの質問には、”bookkeeper”の中にあるRが何個かすぐに聞くよね。" userName="notjulianjaynes" createdAt="2025-02-12T22:47:50" color="">}}

{{<matomeQuote body="それでも多くのモデルがまだ苦戦してるよね。" userName="swiftcoder" createdAt="2025-02-11T21:46:34" color="">}}

{{<matomeQuote body="このモデルは特に数学問題を解くために訓練されてるから、マジで数学の質問してみてよ。" userName="nialv7" createdAt="2025-02-11T21:23:24" color="">}}

{{<matomeQuote body="ちょっと面倒くさいなぁ。大きなモデルに合う良いテスト用の数学問題知ってる？" userName="simonw" createdAt="2025-02-11T21:25:05" color="">}}

{{<matomeQuote body="試してみて。1^3 + 2^3 + 3^3 + ... + 12^3 = 6084って知ってるとしたら、2^3 + 4^3 + ... + 24^3の値は？これ、DeepSeek R1 (1.58-bit GGUF, ローカル実行)なら問題ないよ。" userName="CamperBob2" createdAt="2025-02-11T21:43:00" color="">}}

{{<matomeQuote body="その数学問題の答え教えてくれない？自力で解くのはLLM使うしかないと思うんだけど…" userName="daveofiveo" createdAt="2025-02-11T23:48:05" color="">}}

{{<matomeQuote body="答えは48672だよ。" userName="CamperBob2" createdAt="2025-02-12T00:22:29" color="#ff5733">}}

{{<matomeQuote body="q8では”s-t-r-a-w-f-u-r-e-r”とやって5回目に”strawfurber”になった。その他の試みはミスなく、3を見つけた。" userName="freehorse" createdAt="2025-02-11T21:27:00" color="">}}

{{<matomeQuote body="正直言って、オープンソースのAIがこのペースで勝ちそうだね。毎週革新が起きてるのが見えるし、これからが楽しみ。" userName="fsndz" createdAt="2025-02-11T21:58:09" color="#ff33a1">}}

{{<matomeQuote body="それは変だな、7.1GBのF32 GGUFバージョンでも全く同じ変なバグが出たんだ。" userName="simonw" createdAt="2025-02-11T21:17:40" color="">}}

{{<matomeQuote body="同じような形式でデータ漏洩的なもんがあるんじゃないかって気になるな。" userName="kristopolous" createdAt="2025-02-11T21:54:03" color="">}}

{{<matomeQuote body="1. 意味不明なひねりの効いた謎かけを聞いてみて。例えば’7は8が怖いの？’みたいな。<br>2. ’自分に対して三目並べをして勝て’って言って動きが正しいか確認してみて。" userName="astrange" createdAt="2025-02-11T21:38:01" color="">}}

{{<matomeQuote body="CoTモデルって外部関数を呼べるんかな？計算機にアクセスできたらどうなるんだろ。" userName="whatever1" createdAt="2025-02-11T21:20:47" color="">}}

{{<matomeQuote body="出力ストリームを見ながら解ける式を計算結果に置き換えて続けていくって方法もアリかも。特に最近のモデルは、この方法で長い推論プロセスを強制することもあるみたい。" userName="manmal" createdAt="2025-02-11T21:53:09" color="">}}

{{<matomeQuote body="そうだね！deepseekでも外部関数を呼ぶのはデータ抽出問題みたいなもんだよね。例として計算機関数に'5 + 10'を渡して結果をもらうみたいな。" userName="hellovai" createdAt="2025-02-12T01:01:40" color="#38d3d3">}}

{{<matomeQuote body="その通りだよ。o3-miniはネット検索もできるから、最新情報が必要ならo1より優れてるね。特定の論文を適当な名前で読んで来いとも言えるし。" userName="w-m" createdAt="2025-02-11T23:57:12" color="">}}

{{<matomeQuote body="思考の連鎖の中でコードインタープリターを使えば、人間の問題解決法にすごく近づくかも。" userName="jascha_eng" createdAt="2025-02-11T21:42:54" color="#ff33a1">}}

{{<matomeQuote body="どっちもアリじゃない？現代の知的エージェントが標準的に持つべきツールセットについて考えてみよう。計算機や基本的なコードインタープリター、グラフ作成ツール、ネット検索など。特に道具の使い方を訓練するデータセットがあったらどうだろう。" userName="TeMPOraL" createdAt="2025-02-11T22:25:43" color="#785bff">}}

{{<matomeQuote body="実際あんまり賢くないな。ASCIIシーケンスのデコードを頼んだらガラクタしか出てこなかったよ。phi-4 Q4を使ったらちゃんとできたけどね。" userName="m3kw9" createdAt="2025-02-11T21:42:26" color="">}}

{{<matomeQuote body="ASCIIを知らなくても良いから、ちゃんと推論できるモデルがあればいいんだけどな。" userName="layer8" createdAt="2025-02-11T21:53:16" color="">}}

{{<matomeQuote body="rStar-Mathの性能が間違って報告されてる気がする。例えば、テスト時の単一ロールアウトでAIME 2024で50点、Olympiad Benchで65.3点、AMC 2023で87.5点を達成してるのに、報告では26.7点、47.1点、47.5点になってる。これっておかしくないか？" userName="francesco" createdAt="2025-02-13T09:25:43" color="#ff5733">}}

{{<matomeQuote body="テクノロジーの最前線と普通のテレビ視聴者とのギャップが大きすぎて、話すのが難しいね。モデルが自分の運命を決めるようになってきた一方で、国際的には経済が崩壊することもある。" userName="Chikimonki" createdAt="2025-02-12T05:26:20" color="">}}

{{<matomeQuote body="大学時代にはこれをオーバーフィッティングと言ってた。評価セット以外ではあまり性能が良くない感じがする。" userName="Svoka" createdAt="2025-02-11T21:29:38" color="">}}

{{<matomeQuote body="1.5Bモデルだから、最適化された範囲以外であまり期待するのは無理だよ。" userName="buyucu" createdAt="2025-02-11T23:13:51" color="">}}

{{<matomeQuote body="最近考えてるけど、AGIへの道は単に力任せではないし、今までもそうではなかった。" userName="atemerev" createdAt="2025-02-11T21:48:08" color="">}}

{{<matomeQuote body="こういう方法で検閲なしのモデルが手に入ればいいな。" userName="daft_pink" createdAt="2025-02-11T20:49:49" color="">}}

{{<matomeQuote body="確かに、そんな方向に進んでいるように見えるね。" userName="xeckr" createdAt="2025-02-11T21:48:20" color="">}}

{{<matomeQuote body="試してみたけど、実際には存在しない入力に基づいて生成してるのが夢のよう。" userName="6mirrors" createdAt="2025-02-12T08:36:07" color="">}}

{{<matomeQuote body="初歩的な質問なんだけど、大手がネット全体をクローリングしてモデルを訓練してるのに、OSの代替品はどうやってそれを上回ろうとしてるの？普通にネットをクローリングするだけなの？" userName="mrcwinn" createdAt="2025-02-11T20:56:29" color="">}}

{{<matomeQuote body="実際には”ネットの全てを盗む”っていうのは正確じゃないね。今はただ闇雲にデータを集めるだけではなく、データを選別して訓練するのが大切になってきてる。" userName="simonw" createdAt="2025-02-11T21:09:42" color="">}}

{{<matomeQuote body="インターネット全体をクロールするのは、分布のロングテールの問題を解決するのに役立つよ。ビッグデータの目的はゴミを入れて信号を出すことだからね。" userName="woctordho" createdAt="2025-02-12T03:42:17" color="">}}

{{<matomeQuote body="本を全部盗んだり有料の研究論文を集めたりすれば、かなりの量になるよね。" userName="nicce" createdAt="2025-02-11T21:26:57" color="">}}

{{<matomeQuote body="最近のMetaがLibGenをトレントで落としたって話、知ってる？" userName="simonw" createdAt="2025-02-11T21:50:30" color="">}}

{{<matomeQuote body="そうじゃなくて、前のモデルの出力を乾燥機に入れてアイロンかけたようなデータを使えば、自然に集めたデータのように見えるってのが秘密だよ。" userName="smallmancontrov" createdAt="2025-02-11T21:02:16" color="">}}

{{<matomeQuote body="確かに、でもこのRLステージは実際には大量のデータを必要としないんだ。ほとんどのデータは事前学習フェーズで処理されるし、最近の論文では一つのモデルで千例未満の微調整でも良い推論パフォーマンスが出せたって書いてあったよ。" userName="sebzim4500" createdAt="2025-02-11T21:01:36" color="">}}

{{<matomeQuote body="いや、微調整にはそんなにデータはいらないし、モデルはもう2年前から合成データセットを使ってるんだ。要するに、大きなモデルがクロールした後、次のモデルが大きなモデルと対話してるんだよ。" userName="yieldcrv" createdAt="2025-02-11T21:02:50" color="#38d3d3">}}

{{<matomeQuote body="これってLLM＝検索エンジンの時代も終わりに近づいてるの？今のChatGPTモデルはニッチな知識が結構あるし。" userName="mekaron7" createdAt="2025-02-11T21:18:28" color="">}}

{{<matomeQuote body="検索エンジンの作り方はもうわかってるし、LLMに道具として使わせる方がいいモデルだと思うよ。ユーザーは同じインターフェースを使えるし、データ取得にかかるコストも抑えられるからね。" userName="regularfry" createdAt="2025-02-12T09:00:13" color="">}}

{{<matomeQuote body="クリエイティブライティングも事前学習データが限られると影響を受けるよ。DeepSeekにストーリーを書かせると、要点だけのアウトラインにしかならないし、他のモデルは常に同じ名前のキャラクターを使うから。" userName="astrange" createdAt="2025-02-11T21:39:41" color="">}}

{{<matomeQuote body="企業は四半期ごとにモデルを更新しなきゃいけない泥沼にはまってるね。今は新しいモデルを出すだけで、最新の情報を取り込むグループや、合成データセットばかり使うグループがいるし、それぞれ好きなように微調整したLLMを作ってる人たちがいる。" userName="yieldcrv" createdAt="2025-02-11T22:07:52" color="">}}

{{<matomeQuote body="いろんなタイプのモデルができるかもね。知識が豊富なモデルや推論能力のあるモデルとか。" userName="kingo55" createdAt="2025-02-11T21:33:11" color="">}}

{{<matomeQuote body="専門家じゃないけど、DeepScaleの成功の一因は合成データを使ってたんじゃなかったっけ？特にコードや数学のために。" userName="plufz" createdAt="2025-02-11T21:01:33" color="">}}

{{<matomeQuote body="大きなモデルを使えるなら、わざわざインターネットのデータを収集してフィルタリングする必要はないよね。" userName="littlestymaar" createdAt="2025-02-11T21:22:19" color="">}}

{{<matomeQuote body="ネット全体をクローリングするのはベースモデルを訓練するためで、高コストで計算集約的なんだよね。R1はすでに訓練されたベースモデル（V3）の上に追加のステップをしたんだ。この人たちも似たようなことをやってる。" userName="janalsncm" createdAt="2025-02-11T21:24:32" color="">}}



