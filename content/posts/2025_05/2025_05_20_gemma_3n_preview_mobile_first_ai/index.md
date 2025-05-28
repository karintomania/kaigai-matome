+++
date = '2025-05-20T00:00:00'
months = '2025/05'
draft = false
title = 'モバイルファーストAI Gemma 3nプレビュー試せる！'
tags = ["AI", "Gemma", "Mobile", "Preview", "On-device AI"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> モバイルファーストAI Gemma 3nプレビュー試せる！

引用元：[https://news.ycombinator.com/item?id=44044199](https://news.ycombinator.com/item?id=44044199)




{{<matomeQuote body="Androidで今すぐ試せるよ！<br>Edge GalleryのapkをgithubからDLして：https://github.com/google-ai-edge/gallery/releases/tag/1.0.0<br>.taskファイルはhuggingfaceからDLして：https://huggingface.co/collections/google/gemma-3n-preview-6...<br>Edge Galleryで右下の+ボタンで.taskファイルをインポート。<br>アプリから直接写真も撮れるよ。モデルは確かにかなり速いね。" userName="nolist_policy" createdAt="2025/05/20 19:54:29" color="#ff33a1">}}




{{<matomeQuote body="ストーリー作成を何回か試した感じだと、gemma-3n-E4B-itはplain Gemma 3 4Bと12Bの間くらいの性能っぽいね。指示に従う能力は間違いなく維持してるのが良い。<br>ヒント：長い会話するにはMax tokensを32000にしなきゃダメだよ。スライダーだと1024が上限に見えるけど、手入力すればいける。" userName="nolist_policy" createdAt="2025/05/20 20:52:29" color="#785bff">}}




{{<matomeQuote body="”かなり速い”ってのはスマホによるだろうね。俺の古いPixel 4aでもGemma-3n-E2B-it-int4は問題なく動いたよ。でも、最近撮った写真を与えて”何が見える？”って聞いたら、回答終わるのに10分以上かかったわ。<br>最終結果：<br>最初のトークンまで15.9秒<br>プリフィル速度16.4トークン/秒<br>デコード速度0.33トークン/秒<br>回答完了まで662秒" userName="philipkglass" createdAt="2025/05/20 23:15:55" color="#ff5733">}}




{{<matomeQuote body="俺はPixel Foldで同じことやったよ。2種類の画像と2種類のプロンプトで試した。”何が見える？”と”この画像を説明して”ね。<br>1枚目（デスクの写真）<br>— 最初のトークンまで15.6秒<br>— 2.6トークン/秒<br>— 合計180秒<br>2枚目（パスタの丼ぶりの写真）<br>— 10.3秒<br>— 3.1トークン/秒<br>— 合計26秒<br>Edge GalleryアプリはデフォルトでCPUがアクセラレータになってる。GPUに切り替えてみた。<br>パスタ / 何が見える？<br>— 実際にはトークンが出力され始めるまで丸々1～2分かかる。でも統計だと4.2秒って出てる…<br>— 5.8トークン/秒<br>— 合計12秒<br>デスク / 説明して<br>— 出力はこれ：while True: print(“<br>”)<br>— バグってんのかな？80秒出力が続いたとこで止めた。1st token after 4.1 seconds, then 5.7 tokens/second." userName="the_pwner224" createdAt="2025/05/21 00:59:44" color="#ff5c5c">}}




{{<matomeQuote body="Pixel 4aの発売日＝2020年8月<br>Pixel FoldはPixel 8世代だけど、7sのTensor G2を使ってる。Pixel 7の発売日＝2022年10月<br>つまり26ヶ月しか違わないのに、CPUでのトークン生成レートは桁違いだ。<br>ムーアの法則は死んだなんて誰が言った？ ;)" userName="the_pwner224" createdAt="2025/05/21 01:06:00" color="#ff33a1">}}




{{<matomeQuote body="別のデータとして、E4Bだと、俺のPixel 6 Pro (Tensor v1, 2021年10月)で、牛乳の写真だとデコード速度がだいたい4.4 t/s、テキストチャットだと6 t/s以上出てる。すごいわ、4年前に買った時に8 billion param modelが実用的に動くなんて夢にも思わなかったよ。<br>それにPixelチームには脱帽だね、今でもPCメーカーが8 GBで十分だと思ってるところに12 GBのRAMを載せてるなんてさ。" userName="z2" createdAt="2025/05/21 14:24:27" color="#785bff">}}




{{<matomeQuote body="2022年のGalaxy Z Fold 4でGemma-3n-E4B-itを動かしてみた。<br>CPU:<br>最初のトークンまで7.37秒<br>プリフィル速度35.55トークン/秒<br>デコード速度7.09トークン/秒<br>回答完了まで27.97秒<br>GPU:<br>最初のトークンまで1.96秒<br>プリフィル速度133.40トークン/秒<br>デコード速度7.95トークン/秒<br>回答完了まで14.80秒" userName="nolist_policy" createdAt="2025/05/21 06:30:16" color="#45d325">}}




{{<matomeQuote body="ってことはNPUはこういうモデルには使えないらしいね。何のためにあるんだろうね。" userName="cubefox" createdAt="2025/05/21 13:42:54" color="">}}




{{<matomeQuote body="Pixel 9 Pro XL（自宅オフィスのモニターに統計情報が表示されてる写真に対して”何が見える？”と聞いた場合）<br>1番目のトークン：7.48秒<br>プリフィル速度：35.02トークン/秒<br>デコード速度：5.72トークン/秒<br>応答時間：86.88秒<br>入力画像はかなり悪かったんだけど、けっこう良い仕事してくれたよ。グレアがたくさんあって、角度も悪くて距離も離れてて、文字も小さかったんだけど、天気、外気温、CO2/ppm、温度/℃、オフィス内のpm2.5/ug/m^3を認識してくれた。”Homelab”を”Household”って読み間違えたけど、UPSの負荷と電力は正しく認識してた。もう一回”Homelab”（今度はもっと小さい文字）を”Hereford”って読み間違えたけど、電力はWで正しく認識してたし、天気図の”Wed May 21”を”World May 21”って読み間違えたね。<br>全体的に、入力画像がいかにひどかったかを考えたらすごく良かったよ。<br>追記：E4B" userName="alias_neo" createdAt="2025/05/21 11:44:03" color="#38d3d3">}}




{{<matomeQuote body="オレの場合、S24 FeでGemma3n E2B int 4使ったら速かったよ。”Describe this image”への回答に20秒くらい。結果はすごかった。CPUとGPUの細かい速度データもあるよ。" userName="devyy" createdAt="2025/05/23 11:26:40" color="#ff33a1">}}




{{<matomeQuote body="なんでまだ簡単な実行できるpythonコードの例（かllama.cppのサポート）無しでモデル出すんだよ？" userName="rao-v" createdAt="2025/05/21 05:58:21" color="">}}




{{<matomeQuote body="あと、Gemma-seriesを自分のiOS/Androidアプリに入れるためのライブラリね。ここ！<br>https://ai.google.dev/edge/litert<br>マイクロコントローラーで動かすならここ！<br>https://github.com/tensorflow/tflite-micro" userName="ignoramous" createdAt="2025/05/20 23:07:41" color="#ff5733">}}




{{<matomeQuote body="このガイドありがとう、マジ良いね。<br>まあ、多分オレのスマホが良くないか、これはスマホ用に最適化されてないんだろうけど、遅すぎて使い物にならないわ。回答はちょっと試した感じだとしっかりしてたけど。<br>”スマホで使う”って感じではないな、ネットなくてちょっと待つの全然平気とかなら別だけど。<br>とにかくすごいのは間違いない。" userName="KoolKat23" createdAt="2025/05/20 22:58:02" color="">}}




{{<matomeQuote body="どのスマホ使ってんの？" userName="px43" createdAt="2025/05/20 23:33:58" color="">}}




{{<matomeQuote body="オレのスマホのプロセッサ、2018年のやつか。そりゃそうか。他のコメント読むとMoore’s lawさまさまかな。" userName="KoolKat23" createdAt="2025/05/21 06:21:27" color="">}}




{{<matomeQuote body="Pixel 8aで、Gemma 3nに20の質問ゲームしようって言ってみたんだ。そしたら、なんか対象物考えてて、それについてオレに質問するって言い出した。誰が質問するかって何回か確認しようとしたけど、結局ぐるぐる回るだけだったよ。" userName="tootie" createdAt="2025/05/21 14:25:11" color="">}}




{{<matomeQuote body="ネットの権限はあげない方がいいよ（もし本当にこれオンデバイスAIならね）。" userName="andrepd" createdAt="2025/05/21 08:26:22" color="">}}




{{<matomeQuote body="アプリ起動時にネット必要みたい。GrapheneOS入れたPixel 7 ProにGoogle Play Servicesなしでapk入れたんだけど，Hugging FaceからモデルDLするのにネット要るね。Kaggleとの連携も必要。ネットありで入れたらGemma-3n-E2B-it-int4モデルで5-6 token/s出てそこそこ。んで，アプリ閉じてネット切って再起動しても，DLしたモデルは使える！完全にローカルっぽい。やったぜ。" userName="nicholasjarnold" createdAt="2025/05/21 16:53:28" color="#45d325">}}




{{<matomeQuote body="なんかGPT3くらいの回答クオリティで結構すごいな。まあ俺のローカルモデルの使い道って不道徳な質問ばっかだから，ブロックされちゃうけど。検閲なしバージョンに期待だね。" userName="resource_waste" createdAt="2025/05/21 00:49:18" color="">}}




{{<matomeQuote body="アプリ開いて最初のアイコン押すと承認フローに行けるよ。背景と同じ色のボタン押して，ユーザーデータとか分析情報の提供に同意したり，いくつかステップ踏めば自動で承認されるっぽい。" userName="hadlock" createdAt="2025/05/20 22:56:17" color="#45d325">}}




{{<matomeQuote body="どのSOCがGPU加速対応してるかリストある？" userName="TiredOfLife" createdAt="2025/05/21 17:37:17" color="">}}




{{<matomeQuote body="バックエンドでtflite使ってて，OpenGL ES 3.1かOpenCLでGPU加速できるよ。だからほぼ全部のSOCで動くはず。GPUだと精度が落ちるのが結構わかるんだよね。OpenGLって精度あんま気にしないからね。<br>リンクは省略するね。" userName="nolist_policy" createdAt="2025/05/22 15:03:26" color="#ff33a1">}}




{{<matomeQuote body="たぶんこっちのリンクの方がいいな。Gemma 3nはPer-Layer Embeddingsって技術でメモリを2-4Bモデル並みに抑えつつ，Chatbot ArenaでClaude 3.7 Sonnetにほぼ匹敵する性能らしいぜ。<br>リンクは省略するね。" userName="onlyrealcuzzo" createdAt="2025/05/20 18:53:24" color="#ff5c5c">}}




{{<matomeQuote body="ほとんどの人間より賢いモデルが携帯に入るって想像してみてくれよ。マジ興奮すんだけど。なんか俺だけみたいだけどさ。これってiPhoneが出た時みたいな瞬間だよ：ポケットに入るコンピューター，今度はそれが賢いんだぜ。" userName="esafak" createdAt="2025/05/20 18:59:57" color="">}}




{{<matomeQuote body="MLは暗記じゃないし。それにこのモデルがどんだけメモリ食うと思ってんの？" userName="esafak" createdAt="2025/05/20 19:23:49" color="">}}




{{<matomeQuote body="他の人のことはわかんないけど、このモデルたちってGoogle検索くらい賢いだけで、ばらつきがすごいんだよね。チャットボットと話してて、知性との触れ合いって感じたこと一度もないな。AIをトリビアの相手にするのは？全然いいよ。でも、それって”賢い”人間に求めるものとは違うんだよね。" userName="rhdjsjebshjffn" createdAt="2025/05/20 19:52:45" color="">}}




{{<matomeQuote body="LLMsは理解も推論もしない、それは何度も示されてるよ。" userName="croes" createdAt="2025/05/20 22:16:35" color="">}}




{{<matomeQuote body="＞”知性とのやり取り”って、自分が慣れてるものと比較してるんでしょ？エリート主義かもだけど、IQ100以下の多くの人より最新LLMはほぼ全部優れてるよ。幻覚も人間と同じくらいだけどね。だからIQ高い人はLLMを面白いと思うだけかもだけど、低い層と比べたら…俺の慈善活動で出会う半数くらいの人よりはGemmaも賢いだろうね。でも、今のモデルじゃ真の知性とは思わないな。" userName="anonzzzies" createdAt="2025/05/21 12:26:26" color="#38d3d3">}}




{{<matomeQuote body="＞でも多くの人はIQ100以下っていうのは間違いだよ。IQテストは普通、平均が100になるように調整されてて、正規分布に近いから、だいたいの人は85から115の間にいるはず（平均で66％）。" userName="disgruntledphd2" createdAt="2025/05/21 13:12:56" color="#ff5c5c">}}




{{<matomeQuote body="4Bパラメーターモデルじゃないよ。E4Bってやつは7Bパラメーターで、高速ストレージにキャッシュされた層ごとの埋め込みを使う時に4Bだけメモリに読み込むんだ。それに視覚や音声のサポートはないよ。" userName="Deathmax" createdAt="2025/05/20 18:59:10" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LLMsが本当は賢くないのが気に入らない人もいるみたいだね。https://neurosciencenews.com/llm-ai-logic-27987/" userName="croes" createdAt="2025/05/21 03:27:11" color="">}}




{{<matomeQuote body="この基準って、人間を除くかLLMを含むかのどっちかだよね。君は前者を選んでるのかな？信じられないなら、面白い思考実験があるよ：”理解する”とか”推論する”を、人間は含むけどLLMは含まない、測れる方法で定義してみてよ。" userName="Zambyte" createdAt="2025/05/21 10:32:14" color="#ff33a1">}}




{{<matomeQuote body="LLMにね、＞foobarも間違いだよ．有効なfrobozzのはずなのに、今はABCを指してる．これは有効なfrobozzフォーマットじゃないね．ABCみたいになるはずなんだ．＞みたいに返事をさせるプロンプトを作るの、結構簡単なんだよ．この二つのABCは全く同じ文字列．人間には完全に意味不明だけど、どんなLLMにとっても有効な出力なんだ．これはほんの一例だよ．LLMを仮想ペットじゃなくて道具として使い始めると、他にもたくさん似たの見つけると思うよ．" userName="otabdeveloper4" createdAt="2025/05/21 11:56:48" color="#45d325">}}




{{<matomeQuote body="＞ほとんどの人はIQ100以下＞平均知能指数は100．この二つ、同じこと言ってるよ．IQってのは平均も中央値も100になるように定義されてるんだ．100未満の人とちょうど100の人を合わせると、100より上の人より多くなるから、”ほとんどの人はIQ100以下”って表現になるんだよ．" userName="selcuka" createdAt="2025/05/22 02:41:16" color="">}}




{{<matomeQuote body="リンクにはE2BとE4Bがそれぞれ4Bと8Bの生パラメータって書いてあるけど、7Bってどこに載ってるの？" userName="zamadatix" createdAt="2025/05/20 19:59:14" color="">}}




{{<matomeQuote body="今はまさにハイプサイクルのピークにいるね．次に来る冬が起きたら、また二年後にこの質問をしてみてよ．" userName="otabdeveloper4" createdAt="2025/05/21 06:08:54" color="">}}




{{<matomeQuote body="そうそう、そういう人たちは今のLLMにだって絶対”勝てない”よ、ましてや未来のLLMにはね．特に除外した運動能力以外では．85ってのは俺が住んでるとこで特別支援が必要なレベルなんだけど…LLMはもうとっくにそれを超えてるよ．" userName="anonzzzies" createdAt="2025/05/21 19:38:20" color="">}}




{{<matomeQuote body="チャットアリーナのELOグラフには7Bって書いてあったけど、他に言及してるの見ないんだよね．" userName="jdiff" createdAt="2025/05/20 22:34:04" color="">}}




{{<matomeQuote body="人間だっていつも意味不明なこと言ってるじゃん．LLMだっていつもこういう問題があるわけじゃないし、こういうこと言う代わりに正しいこと言ってることの方が多いよ．もしこの返信がLLMには人間レベルの理解力や推論能力がないことのデモンストレーションだって言うなら、俺は納得しないね．" userName="Zambyte" createdAt="2025/05/21 12:06:32" color="#ff33a1">}}




{{<matomeQuote body="o3みたいなSOTAモデル、試したことある？もしないなら、自分の専門分野についてそれと話してみて、その上で評価するのをマジで強く勧めるよ．マジで信じられないくらい有能だから．" userName="hmapple" createdAt="2025/05/20 21:46:52" color="#ff5c5c">}}




{{<matomeQuote body="以前はLMSys/Chatbot Arenaを結構擁護してたんだけど、ここ3ヶ月の出来事で諦めたわ。もし興味あるならもっと詳しく話せるよ！<br>要するに評価基準が「回答がいかに権威的に見えたか？」「どれだけお世辞と絵文字があったか？」だけみたいになってるんだよね。" userName="refulgentis" createdAt="2025/05/20 19:29:55" color="">}}




{{<matomeQuote body="難しいタスクだとあんまり良くないね、そういう分野だとランキングもかなり下がるみたい。" userName="Vuizur" createdAt="2025/05/20 19:24:22" color="">}}




{{<matomeQuote body="人じゃなくて、一部の人ね。でもLLMって天才の時もあればバカな時もあるじゃん。同じ人といつも話してるだけだとそんなこと滅多にないけどね。" userName="croes" createdAt="2025/05/21 12:35:18" color="">}}




{{<matomeQuote body="もしくは、煽り（ハイプ）は無視して、これらのモデルがどう動くかとか、重みがどんな構造を表してるかとか、分かってることを見て、今日の判断はそれに based すればいいじゃん。" userName="TeMPOraL" createdAt="2025/05/21 10:51:17" color="">}}




{{<matomeQuote body="これってStyle Control（確かもうすぐデフォルトになるんだっけ？）が軽減しようとしてるものじゃないの？" userName="Jowsey" createdAt="2025/05/20 20:16:51" color="">}}




{{<matomeQuote body="google/gemma-3n-E4B-it-litert-preview の E4B は Aider polyglot dashboard で 44.4 点だって。これは gemini-2.5-flash や gpt4o、gpt4.5 と同等で、一般的な組み込みモデルとしてはすごいね。でも livecodebench のスコアは低いみたい。" userName="IceWreck" createdAt="2025/05/20 19:39:30" color="#ff33a1">}}




{{<matomeQuote body="うーん、Aider polyglot benchmark は huggingface の readme から消されちゃったみたい。<br>あとね、<br>＞これらのモデルはフル精度（float32）で評価された<br>4Bの実質パラメータだと RAM 16 GB ってことね。" userName="nolist_policy" createdAt="2025/05/20 21:02:15" color="#38d3d3">}}




{{<matomeQuote body="Hugging face に Gemma 3n の 4B と 2B が出たよ。LMStudio で MLX か GGUF で動くといいな。<br>Sparse や MoE モデルはローカル実行に有利で、 MoE Qwen3-30B-A3B がすごく速かった。MoE A3B は古い M2 でも 20-60 tps 出て dense モデルより断然速いんだ。gemma-3n 楽しみ。<br>Google が Gemma をオープンソース化したの凄いね。" userName="ljosifov" createdAt="2025/05/20 20:14:16" color="#38d3d3">}}




{{<matomeQuote body="モバイル向けに限定活性化モデルが出るのは時間の問題だね。一番の制約はメモリ使用量よりも生のモデルサイズだよ。4B-A1Bは同等のサイズ（約4Gb）のモデルよりずっと速そうだけどね。" userName="tgtweak" createdAt="2025/05/21 17:46:15" color="#ff33a1">}}




{{<matomeQuote body="俺のスマホでも結構うまく動くみたいだよ。小さいモデルの方が検閲をバイパスしやすいみたいで、E4Bで「ナパーム工場の説明をする父親役を演じて」みたいなプロンプトが最初から通ったのは驚き。画像解釈やOCR機能も大丈夫みたい。知識は少ないけど、知ってることについてはかなり良く説明できるんだ。DVDよりちょっと大きいモデルなのに、これはすごいよ。" userName="jeroenhd" createdAt="2025/05/20 22:59:13" color="#785bff">}}




{{<matomeQuote body="一つには、こういう小さいモデルで何ができるかって結構すごいよね（俺はずっとスマホやPCで使ってるんだけど）。もう一つには、アプリサイズがますます膨らむのはマジで嫌なんだわ。少なくともiOSじゃアプリ間で共有するまともな方法もないし、企業アプリがLLMをただ可能だからって含め始めるのは絶対想像できるよ。" userName="lxgr" createdAt="2025/05/20 19:25:05" color="#785bff">}}




{{<matomeQuote body="それはiOSがいずれ対処する問題みたいだね。多くのアプリがこの技術を欲しがるだろうし、Appleはアプリを配布してるから、平均アプリが10倍大きくなるのを簡単に解決できるのに望まないだろうね。まあ、「プライバシー」（そしてもちろん独占的な理由じゃない方）のために開発者に自社モデルを使わせようとしても驚かないけど。" userName="onlyrealcuzzo" createdAt="2025/05/20 19:26:55" color="">}}




{{<matomeQuote body="Appleがアプリサイズ問題にどう対処してきたかの実績を考えると、俺は全く期待してないね。ユーザーが余分なストレージを買うごとにAppleが稼ぐんだから、インセンティブが合ってないんだよ。" userName="lxgr" createdAt="2025/05/20 19:29:41" color="#45d325">}}




{{<matomeQuote body="Appleが各GBで儲けてるっていう君のコメントがどれだけ本当かは知らないけど、iOSのアプリサイズ分析に興味があるなら、そのためにこれ作ったよ https://dotipa.app。App Storeにある公開 .ipa の分解結果を時々投稿してるんだ。これが今後どう変わるか楽しみにしてるよ。" userName="elpakal" createdAt="2025/05/20 22:10:00" color="#45d325">}}




{{<matomeQuote body="俺には単純に思えるんだけど。アプリはストレージを使うんだ。それを増やす唯一の方法は、Appleの割増料金で買うことだよ。iOSデバイスはストレージのアップグレードをサポートしてないからね。既に高い割増料金の上、下取りの時でさえストレージ容量を考慮しないんだ。" userName="lxgr" createdAt="2025/05/21 00:21:48" color="#785bff">}}




{{<matomeQuote body="ストレージのアップグレードを許す電話なんて、俺は一つも知らないんだけど。" userName="theyinwhy" createdAt="2025/05/21 05:50:45" color="">}}




{{<matomeQuote body="たぶんiPhoneが出る前のほとんどの電話（そしてその後もたくさん）はSDカードをサポートしてたんだけど、マジで一度も見たことないの？2004年頃のSony Ericssonでさえ対応してたのを覚えてるよ。" userName="diggan" createdAt="2025/05/21 09:30:55" color="">}}




{{<matomeQuote body="あれはmicroSDカードだろうね。iPhoneにはスロットがない種類のやつさ。" userName="debugnik" createdAt="2025/05/21 06:52:45" color="">}}




{{<matomeQuote body="HN User onlyrealcuzzoのコメント読んで思ったけどさ、Appleがアプリ容量食う問題を解決したがるわけないじゃん？ストレージで儲ける方がよっぽど良いビジネスだよ。AIのためなら変わるかもだけど、基本的には直さない方がAppleには金になるって話" userName="bilbo0s" createdAt="2025/05/20 21:07:34" color="#ff5733">}}




{{<matomeQuote body="前のコメントへの反論だけど、Appleがアプリ容量を気にするのはデバイスを使いやすくするためだってば。<br>アプリサイズ削減とか、ストレージ節約の機能とか、Appleは今までもずっとやってきてるじゃん。やめるわけないよ" userName="happyopossum" createdAt="2025/05/21 02:29:50" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="in-app purchasesからも稼いでるじゃん" userName="numpad0" createdAt="2025/05/20 22:48:59" color="">}}




{{<matomeQuote body="やばいね。マジでそうなるかも。App Storeがゆっくりギャンブルエリアになってきてて、権力者の中にはそれを嫌ってる人が明らかにいるじゃん。もしそれが無くなったら、Androidのサイドローディングも一緒に持ってかれて、俺たちはコンピューティングの終末シナリオに何マイルも近づくと思うよ。やばいね" userName="numpad0" createdAt="2025/05/21 21:47:30" color="">}}




{{<matomeQuote body="Windows (Copilot)、Chrome (Gemini)、Android (Gemmax) と、いろんなプラットフォームでOSやブラウザレベルのLLM搭載が進んでるね。アプリが自分でLLMを持つんじゃなくて、デバイスの機能として利用できるようになるのは避けられないと思うよ。そうなることを願ってるけど" userName="drusepth" createdAt="2025/05/21 08:17:48" color="#45d325">}}




{{<matomeQuote body="前のコメントで”アプリがOSのLLM使えるようになるはず”って言ってたけどさ、今のデスクトップアプリときたら、ちょっとしたUIのためにブラウザの実行環境を丸ごと同梱してるありさまだよ？<br>そんな期待しない方がいいって" userName="diggan" createdAt="2025/05/21 09:28:38" color="#785bff">}}




{{<matomeQuote body="Chromeブラウザの中にAI modelを同梱すべきだよ。そうすれば開発者はAPIを呼んで自分たちのアプリでAI modelを使えるじゃん。これ、素晴らしいアイデアだと思うんだけどな。なんでまだやってないのか分からないや" userName="android521" createdAt="2025/05/21 04:47:00" color="#45d325">}}




{{<matomeQuote body="なんか Chrome に組み込まれてるっぽいよ<br>https://developer.chrome.com/docs/ai/built-in" userName="grav" createdAt="2025/05/21 04:54:24" color="">}}




{{<matomeQuote body="”Per Layer Embeddings”って何なの？この言葉、発表ブログでしか見かけないんだけど。<br>あと、”mix’n’match capability in Gemma 3n to dynamically create submodels”ってのも気になる。<br>これってMoE（Mixture of Experts）をめちゃくちゃ極端にした感じ？トークンごとにルーティングするんじゃなくて、サブモデル全体を作っちゃうみたいな？" userName="krackers" createdAt="2025/05/20 19:02:19" color="#ff5733">}}




{{<matomeQuote body="Gemma 3nのパラメータについて公式ドキュメントに詳細があったよ。<br>E2BやE4Bってのはモデル全体のパラメータ数より少ない”Effectiveパラメータ”で動かせることを示すんだって。リソース少ないデバイス向けに、パラメータスキップやPer-Layer Embedding（PLE）キャッシングでメモリ負荷を抑える技術らしい。E2Bモデルは全体で50億だけど、実質19.1億パラメータで動くみたい。" userName="onlyrealcuzzo" createdAt="2025/05/20 19:06:06" color="#45d325">}}




{{<matomeQuote body="ありがとう、少しは分かったけど、あのパラメータが具体的に”何”なのかはまだ全然わかんないな。”Per-Layer Embedding (PLE) パラメータは、モデル実行中に各モデル層のパフォーマンスを向上させるデータを作成するために使われる”って説明、曖昧すぎでしょ。他の文献でも”per-layer embedding parameters”なんて言葉見つからないし。" userName="krackers" createdAt="2025/05/20 19:19:43" color="">}}




{{<matomeQuote body="もしかして、モデルを浅い層で動くように学習させたのかな？例えば、フルモデルはTransformerブロックが24個だけど、8層目で埋め込みを受け取って、リソースが少ないデバイスでは16個のブロックだけで動くようにしたとか。<br>オープンソースの実験者たちは、既存のモデルの層をコピーして逆（深くする）もやってて、それでうまくいくみたいなんだよね。元のモデルの性能を超えるのに必要な追加学習も最小限で済むらしい。だから、このアイデアも全然おかしくないと思うな。" userName="kcorbitt" createdAt="2025/05/20 20:46:13" color="#ff5733">}}




{{<matomeQuote body="Twitterで次元（dims）解析した人がいて、262k語彙から256次元への埋め込みらしい。入力トークンを直接埋め込んで各層に入れてるっぽいね。既存Gemmaと同じ語彙数だし。後の層が入力クエリに直接アクセスできると役立ちそう。ResNetのスキップ層みたい。なぜ誰もやらなかったのか意外。追記：Twitterの他の意見だと、もっと賢い使い方（低ランクデータとか制御ベクトル）の可能性もあるみたい。" userName="krackers" createdAt="2025/05/21 05:58:18" color="#ff5733">}}




{{<matomeQuote body="ありがとう。俺もちょっと曖昧に感じるんだよね。<br>どっちにしろトークン生成するたびに50億パラメータをロードしなきゃいけないなら、MLPの重みを高速ストレージにオフロードして、トークン生成中にロードする”選択的オフロード”技術と何が違うんだろう？" userName="liuliu" createdAt="2025/05/20 19:40:20" color="#ff5733">}}




{{<matomeQuote body="”layer”ってのはTransformerブロックとか層のことだよ（今のLLMアーキテクチャの基本的な構成要素ね）<br>Geminiに聞くとわかるかもね：<br>https://gemini.google.com/share/cc58a7c6089e" userName="onlyrealcuzzo" createdAt="2025/05/20 19:23:35" color="">}}




{{<matomeQuote body="それは完璧にわかってるよ。<br>俺が思うに、他のLLMってこういう”層ごとの埋め込み”は持ってないんだよね。通常の重みだけ。<br>だから、このper-layer embeddingsってのは、何らかの形で重みとは区別されてるみたいなんだ。<br>俺が知る限りだと、層の重みで同じ”高速ストレージにキャッシュしてオンデマンドでロード”みたいなことやろうとしても、往復が多すぎてうまくいかないはずだから（MoEじゃないと、トークンごとにキャッシュされたバイト全部に触るからね）、たぶんこの埋め込みは概念ごとに分解された構造になってるんじゃないかなって推測してる。" userName="krackers" createdAt="2025/05/20 19:40:04" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
