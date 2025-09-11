+++
date = '2025-09-04T00:00:00'
months = '2025/09'
draft = false
title = 'LLMの動作が丸わかり！？驚愕の可視化が凄すぎると話題に！'
tags = ["LLM", "AI", "可視化", "機械学習", "ディープラーニング"]
featureimage = 'thumbnails/orange1.jpg'
+++

> LLMの動作が丸わかり！？驚愕の可視化が凄すぎると話題に！

引用元：[https://news.ycombinator.com/item?id=45130260](https://news.ycombinator.com/item?id=45130260)




{{<matomeQuote body="うわ、これめちゃくちゃ複雑でめっちゃすごいじゃん！プロセスを可視化するのに最高のやり方だね。" userName="jkingsman" createdAt="2025/09/04 20:17:07" color="">}}




{{<matomeQuote body="関連する話題だよ。他に何かある？LLMの可視化について - https://news.ycombinator.com/item?id=38505211 - 2023年12月 (コメント131件)" userName="dang" createdAt="2025/09/04 20:21:38" color="#ff5c5c">}}




{{<matomeQuote body="Georgia Techの研究者によるTransformer可視化の別のアプローチだよ: https://poloclub.github.io/transformer-explainer/<br>『The Illustrated Transformer』: https://jalammar.github.io/illustrated-transformer/<br>Sebastian Raschka, PhDのアーキテクチャに関する投稿: https://magazine.sebastianraschka.com/p/from-gpt-2-to-gpt-os...<br>このHNコメントにはたくさんのリソースがあるよ: https://news.ycombinator.com/item?id=35712334" userName="dpflan" createdAt="2025/09/04 20:54:57" color="#38d3d3">}}




{{<matomeQuote body="俺、これ昔から好きだったんだよね。DeepMindの可視化。 https://alphacode.deepmind.com/<br>(再生ボタン押して、全体表示にして、スマホなら下にスクロールしてね)" userName="th0ma5" createdAt="2025/09/04 21:29:05" color="#ff33a1">}}




{{<matomeQuote body="魅力的な可視化だね。プロセス全体は可視化できるのに、モデルの意思決定に関する内部の仕組みは理解できないって考えるとなぁ。これ、1年くらい前に調べた時はそうだったけど、その側面で進展があったかは知らないんだ。" userName="its-kostya" createdAt="2025/09/05 02:14:47" color="">}}




{{<matomeQuote body="内部の仕組みは完全に理解できて結果も見れるけど、LLMが意思決定してないで、ただ良い単語を選んで文を完成させてるだけなのに、知的に聞こえるってのが受け入れがたいんだよね。例えば『Strawberry』にはrが2つあるって言うと、『ああ、単なる巨大な統計行列で、本質的な価値はゼロだな』ってなるじゃん。" userName="xwolfi" createdAt="2025/09/05 08:43:35" color="#ff5733">}}




{{<matomeQuote body="ハンマーで料理しようとしても、やっぱり何の価値もないよね。" userName="baq" createdAt="2025/09/05 09:46:34" color="">}}




{{<matomeQuote body="経済から5000億ドルも吸い上げて、実質的に経済を支えているハンマーだよ。製造元や周りのみんなは『料理に最高だ！』って大声で叫んでるけどね。" userName="ares623" createdAt="2025/09/05 10:12:01" color="#45d325">}}




{{<matomeQuote body="上司の上司とか、オーナーとか投資家とか、そこら中の人が、『もうハンマーで料理してるのか？してないならなんでだ？だって、高価な料理器具を使ってる料理人をどうやって追い出すんだ？』って聞いてくるんだよ。" userName="noisy_boy" createdAt="2025/09/05 10:19:03" color="#45d325">}}




{{<matomeQuote body="LLM可視化技術は「もしこのハンマーが広告通りに動けば君らはクビになるよ！」って言われて「よし、調べてみます！」と答える高給取りの料理人みたいだね。皮肉が効いてる！" userName="ares623" createdAt="2025/09/05 23:08:44" color="#38d3d3">}}




{{<matomeQuote body="この動画見てみて！<br>https://m.youtube.com/watch?v=LhaBkvneMW8" userName="psychoslave" createdAt="2025/09/05 15:08:03" color="">}}




{{<matomeQuote body="LLMの知識は乏しいけど、これめちゃくちゃ興味深いね！プロット方法や実際のモデルとの類似性が知りたいな。もしLLMをアルゴリズムでモジュール化できたら、データセンターじゃなくチップに搭載できるようになるのかな？" userName="southp" createdAt="2025/09/05 08:20:20" color="#ff33a1">}}




{{<matomeQuote body="「LLMをチップに」ってのは、汎用計算ユニットじゃなく、LLM全体をチップとしてハードワイヤリングする意味で言ってたんだ。シリアライズ可能だから、答えはイエスだろうね。でも、モデルの進化が速いから、今のビジネス価値は低いかも。みんな、返信ありがとう！" userName="southp" createdAt="2025/09/08 09:12:16" color="#45d325">}}




{{<matomeQuote body="類似性はかなりいい感じだよ。全部の詳細は無理だけど、肝心な部分は載ってる。モデルはめちゃくちゃシンプルで、アテンションの式はナプキンにも書けちゃうくらいだ。Attention(Q, K, V) = softmax(Q * K^T / sqrt(d_k)) * Vが核心で、Q * Kで類似性を計算してるんだ。" userName="visarga" createdAt="2025/09/05 10:23:49" color="#ff33a1">}}




{{<matomeQuote body="LLMはもうチップで動いてるよ。スマホでも実行できるんだ。でも、モジュールがCPUオフロードを可能にしてるってのは面白いポイントだね。一部をCPU、他の部分をGPU/NPU/TPUで動かすのはよくある話だよ。パフォーマンスは落ちるけど、柔軟性が上がるんだ。" userName="nl" createdAt="2025/09/05 11:07:40" color="#785bff">}}




{{<matomeQuote body="データセンターは、多くの人がLLMサービスを使えるようにするためのスケーリングと、GPUの制約で訓練に時間がかからないようにするための訓練が主な役割って理解してるよ。LLMをチップで動かすのは、LLMやチップによるけど、もう可能だよ。" userName="yapyap" createdAt="2025/09/05 10:23:42" color="#ff33a1">}}




{{<matomeQuote body="いい感じのLLMなら、MacBookラップトップでも動かせるんだぜ。" userName="xwolfi" createdAt="2025/09/05 08:39:01" color="">}}




{{<matomeQuote body="どれのこと？数ヶ月前に試したら、数秒に一単語しか生成されなかったんだけど。あまり深く調べなかったけど、「llm」ツールを入れて、最初に動くってあったやつを使っただけなんだよね。" userName="psychoslave" createdAt="2025/09/05 11:50:30" color="#ff5c5c">}}




{{<matomeQuote body="デフォルト設定を調整してみる必要があるかもね。Macで最初に試したモデルがめちゃくちゃ遅かったんだけど、それは長いコンテキストウィンドウを事前に確保しようとしてGPUメモリに入りきらず、CPUで動いちゃってたからなんだ。" userName="_1" createdAt="2025/09/05 11:58:59" color="#38d3d3">}}




{{<matomeQuote body="誰かチュートリアル教えてくれない？" userName="psychoslave" createdAt="2025/09/05 12:41:51" color="">}}




{{<matomeQuote body="自分で見つけたよ: https://github.com/nordeim/running_LLMs_locally" userName="psychoslave" createdAt="2025/09/05 13:37:33" color="#785bff">}}




{{<matomeQuote body="最初のテストはちょっと期待外れだったな。ollamaでllama2に“平和と愛の詩を書いて”って言ったら、“不適切な内容は生成できません”って謝られちゃったよ。" userName="psychoslave" createdAt="2025/09/05 13:41:34" color="">}}




{{<matomeQuote body="llama2はもう古いよ。ollamaでベースモデル名だけだと、性能の低い量子化（llama2:Q_4_M）になっちゃう。おすすめはgemma3モデルだね。VRAMより小さいサイズを選んで。設定をいじれば、もっと少ないリソースでも動かせるよ。<br>https://ollama.com/library/gemma3/tags" userName="knowaveragejoe" createdAt="2025/09/06 00:47:09" color="#38d3d3">}}




{{<matomeQuote body="これ、すごいじゃん！LLMの可視化が、生成中のアテンションの動きとか、プロンプトで出力がどう変わるかを教えるツールになったら最高だね。インタラクティブなビューがあれば、中の仕組みがもっとよく分かる気がする。" userName="aaa_2006" createdAt="2025/09/04 22:31:05" color="">}}




{{<matomeQuote body="この可視化は素晴らしいけど、結局は”テキスト入力 → 線形代数とモデルの重み → マジック！”って感じだよね。アテンションは重要だけど、それがどうアイデアをインテリジェンスにするのか？インテリジェンスをアイデアそのものと見たらどうなるんだろう？" userName="owenversteeg" createdAt="2025/09/06 00:22:57" color="">}}




{{<matomeQuote body="Karpathyがこの可視化について解説してる動画がこれだよ: https://www.youtube.com/watch?v=7xTGNNLPyMI <br>見る価値あり！" userName="m4r71n" createdAt="2025/09/05 13:08:19" color="#ff5c5c">}}




{{<matomeQuote body="この可視化の根底にある抽象的な数学的な部分が知りたいな。前はなかったのか、それとも着目されなかっただけ？人類の知識を全部スクレイピングするってアイデアが最近までなかっただけかな？MLの理解で、最近の研究爆発やパターン発見、改善につながるブレイクスルーって何かあったの？" userName="weego" createdAt="2025/09/05 12:23:57" color="#ff33a1">}}




{{<matomeQuote body="俺の理解だと、AIは昔、知識表現が中心だった。専門家が手作業で作ってたけど、限界があったんだ。だから、データから直接表現を学習しようってなったんだよ。それが今の段階で、人類の知識を全部スクレイピングしてる理由だね。計算能力が上がって、データも手に入りやすくなったし、Transformerみたいなスケーラブルなアーキテクチャも登場したからだよ。" userName="Viibrant" createdAt="2025/09/05 12:51:35" color="#ff5c5c">}}




{{<matomeQuote body="多分、理由は二つあると思う。一つはGPUみたいなハードウェアの進化で計算能力が上がったこと。もう一つは、Transformerみたいな新しいアルゴリズムの発明で、大量のデータを効果的に処理できるようになったことだね。" userName="blahgeek" createdAt="2025/09/05 16:20:35" color="#ff5733">}}




{{<matomeQuote body="これすごい良いね！5歳の息子のコンピュータークラブで見せるつもりだよ。" userName="pkdpic" createdAt="2025/09/05 04:39:41" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="5歳児がコンピュータークラブに入ってるって？今の子供たちはすごいね！" userName="keyle" createdAt="2025/09/05 12:03:45" color="">}}




{{<matomeQuote body="これ、前のHN記事で見たけど、マジで最高な教育ツールの一つだね。" userName="JackYoustra" createdAt="2025/09/05 19:23:21" color="">}}




{{<matomeQuote body="n-gateがあったら、この記事の投票数とコメント数の比率に言及しただろうな。HNでコメントが少ないってことは、質の高い技術的な記事の証拠だよ。これはHNとかアテンションエコノミーの問題を浮き彫りにしてるね。<br>本題に戻ると、実際のモデルの重みとカスタマイズ可能な入力テキストでこれを見てみたいな。あと、3blue1brownのLLM動画みたいに”意味”のベクトルも探求できたら最高だね。" userName="martin-t" createdAt="2025/09/05 02:04:31" color="#785bff">}}




{{<matomeQuote body="実際のモデルの重みに関する話なら、これを見て。https://youtu.be/KSovbSkARYw<br>『数字の足し算。緑線は重み。上部の赤丸は不正解、緑丸は正解だよ。NNが学習すると重みが調整されて、緑丸が増えていくよ。』" userName="cellular" createdAt="2025/09/05 14:41:24" color="#ff33a1">}}




{{<matomeQuote body="これマジで最高だね。深掘りしたい！オブザーバビリティツールと組み合わせれば、”ブラックボックス”って言われてるLLMの謎を解明できるはずだよ。" userName="kittikitti" createdAt="2025/09/05 05:45:38" color="#ff5733">}}




{{<matomeQuote body="うわー、マジで信じられないくらいすごい。これもう芸術作品だね。作ってくれて本当にありがとう！" userName="ksvarma" createdAt="2025/09/05 05:02:05" color="">}}




{{<matomeQuote body="くそー、どのアドオンが邪魔してるか分かんないけど、今のFirefoxプロファイルだとこれ動かないな。別のプロファイルだと大丈夫なのに。" userName="b0dhimind" createdAt="2025/09/05 20:30:33" color="">}}




{{<matomeQuote body="素晴らしいグラフィックだね。でもすぐに”こんなごちゃごちゃしたやり方じゃAGIなんて達成できないだろうな”って思っちゃったよ。" userName="sema4hacker" createdAt="2025/09/05 21:53:49" color="">}}




{{<matomeQuote body="これって、なんか役に立つし見た目も美しいし、満足感がすごいね。よくやった！" userName="nickdothutton" createdAt="2025/09/05 17:19:13" color="#38d3d3">}}




{{<matomeQuote body="backpropとか訓練シーケンスを理解するのに、これみたいなリソースって他にある？" userName="FergusArgyll" createdAt="2025/09/05 13:49:34" color="">}}




{{<matomeQuote body="https://youtu.be/DTRNOJBIDMY<br>これは多層のbackprop（バックプロパゲーション）についてだよ。どのテキストでも違うような難解な添字の専門用語を全部飛ばしてくれてるから分かりやすいよ！" userName="cellular" createdAt="2025/09/05 14:15:04" color="#ff5c5c">}}




{{<matomeQuote body="信じられないくらいすごいね。" userName="felipelalli" createdAt="2025/09/05 23:31:17" color="">}}




{{<matomeQuote body="ああ、やっと分かったよ。これ、すごいリソースだね。努力に感謝するよ。" userName="gcid73" createdAt="2025/09/05 06:03:28" color="#38d3d3">}}




{{<matomeQuote body="468アップボートでコメントが24って、なんか変じゃない？" userName="navigate8310" createdAt="2025/09/05 12:49:13" color="">}}




{{<matomeQuote body="それはね、素晴らしい投稿の証拠だと思うよ。議論を呼ばないけど、みんなに愛されてるってことだよね。" userName="FergusArgyll" createdAt="2025/09/05 13:50:18" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
