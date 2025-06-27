+++
date = '2025-06-20T00:00:00'
months = '2025/06'
draft = false
title = 'AIは欠けているものが分からない！ AbsenceBench'
tags = ["AI", "自然言語処理", "ベンチマーク", "推論", "画像認識"]
featureimage = 'thumbnails/green3.jpg'
+++

> AIは欠けているものが分からない！ AbsenceBench

引用元：[https://news.ycombinator.com/item?id=44332699](https://news.ycombinator.com/item?id=44332699)




{{<matomeQuote body="Kanizsa triangleの画像をClaudeに見せた時の話ね。最初は認識して概要を教えてくれたんだけど、90度回転させて新しい会話で試したら、認識できなくて要素の数も間違えたんだ。<br>その間違いはこんな感じだったよ：<br>この画像は、いくつかの要素を持つミニマリストで抽象的な幾何学的な構成を示しています。<br>四隅に配置された、一部が欠けた円または”Pac-Man”のような4つの黒い形<br>上部左側に上向き、中央右側に右向きの2つの薄い黒い三角形または矢印のような形<br>すべての要素は明るい灰色またはオフホワイトの背景に配置されています。" userName="birdfood" createdAt="2025/06/20 23:19:48" color="#ff5c5c">}}




{{<matomeQuote body="たぶん、こういう認識の穴を埋めるために、これから学習データに画像を90度回転させたやつも加えるようになるんだろうね。" userName="latentsea" createdAt="2025/06/21 00:59:59" color="">}}




{{<matomeQuote body="昔からある話だね：2012年にディープラーニングブームの火付け役になったAlexnetの論文でも、データ拡張の簡単な方法として画像の水平反転を記述してるよ。今はモデルにテキストを読ませることも期待されてるから、水平反転は逆効果になる可能性もあるけどね。回転も似たようなもので、「空はたいてい上にある」みたいなヒューリスティックを学習してほしいなら考えものだね。" userName="recursivecaveat" createdAt="2025/06/21 01:17:04" color="">}}




{{<matomeQuote body="少なくとも俺がこの種の仕事をしてた頃は、レーダー信号の散乱体信号は回転より見る角度＼プラットフォーム角度の方が重要だったけど、回転もサンプル数をかなり増やす簡単な方法だったんだ。ずっと関連性のある話だよ：）" userName="latency-guy2" createdAt="2025/06/21 02:16:30" color="">}}




{{<matomeQuote body="それってデータ拡張って呼ばれてるんだよ。AlexNetより前から一般的だったし、今でも普通にやってることだよ。" userName="bonoboTP" createdAt="2025/06/21 09:00:09" color="">}}




{{<matomeQuote body="そうやって合成データでニューラルネットワークを訓練して、本当の意味を抽出させるんだ。<br>人間も数を足し算する時にそうやって学ぶよね。最初は素朴な丸暗記があって、例をこなしていくうちに理解できるようになる。<br>LLMの訓練は丸暗記の罠にはまってるみたいだ。モデルがそれにめちゃくちゃ長けてるからね、人間より桁違いに。<br>俺が思うに、訓練プロセスで欠けてるのは、間違った答えを説明してくれるフィードバックだよ。今やってる訓練って、この“理解”の部分を「読者の演習」にしてるようなものだ。<br>特定の個別の例に正しい答えを与えてるから、丸暗記を促進しちゃうんだね。<br>ポストトレーニングでやるべきなのは、次のトークンに対する直接的なバックプロパゲーションをやめて、モデルに間違った答えを最後まで言わせること。それから、なぜそれが間違いなのか説明を付け加えて、その説明をコンテキストに入れてから最終的な答えに向けてバックプロパゲーションを続けることだよ。理解の正しい場所にモデルを導くためにね。<br>これ全部が意味するのは、今のモデルはほとんど活用されてなくて、不必要に肥大化してるってことだ。丸暗記した情報が多すぎる。モデルをデカくするのは簡単で、すぐに改善したかのような錯覚を起こせる。モデルはもっと絞り込むべきで、訓練フロー自体にもっと焦点を当てるべきだよ。" userName="mirekrusin" createdAt="2025/06/21 05:55:36" color="#ff33a1">}}




{{<matomeQuote body="＞人間も数を足し算する時にそうやって学ぶよね。最初は素朴な丸暗記があって、例をこなしていくうちに理解できるようになる。<br>ちょっとだけ細かいこと言うけど、人間が数を学ぶのはこういうやり方だけじゃないよ。生まれた時から3とか5くらいまでの数量の能力はあって、そこから広げていくんだ。だから、色んなサイズの数量を扱える（つまり、左のリンゴ4つと右の5つ、どっちが多いか分かるし、左から1つ取って右に加えたらどうなるかも分かる）能力が既にあって、それから数字を学ぶんだよ。そう、数字は丸暗記で学ぶけど、それは記号やシンボルであって、数量の能力そのものじゃないんだ。" userName="atwrk" createdAt="2025/06/21 14:05:00" color="#45d325">}}




{{<matomeQuote body="Turtles all the way downだね、「多い」みたいな意味も最初は「ごはんもっと欲しい」みたいに丸暗記して、時間が経つにつれて洗練されるんだ。例えば、子供が「あいつは俺より多い」って言ったら、「身長が多い（背が高い）」とか「速度が多い（速い）」みたいに、測定可能な量について何か修飾語が必要だよって訂正されて説明されるんだ。<br>違うモダリティ（テキストだけじゃなくて画像、動画、声＼音とか）を使うのも、意味を完成させるのに面白いね。時間感覚とかも加わるし。<br>俺は、人間は生まれつき何も概念を持ってないと思う。最初は全部かなりカオスで、一貫した感覚入力を使ってニューラルネットワークを訓練＼安定させていくんだよ。生まれたばかりの赤ちゃんとかは、「自分と周りの環境」の分離の概念すら持ってない。それは学習するんだ。" userName="mirekrusin" createdAt="2025/06/21 16:52:53" color="">}}




{{<matomeQuote body="＞俺は、人間は生まれつき何も概念を持ってないと思う。最初は全部かなりカオスで、一貫した感覚入力を使ってニューラルネットワークを訓練＼安定させていくんだよ。<br>それ、実は真実じゃないみたい、というか神経科学ではもう古い考え方とされてるよ。人間は生まれつき不変の概念をかなり持っていて、他の概念は脳に既にあるもの（生まれた時は主に感覚運動的なもの）との関連で学ぶんだ。新しい概念を一から学ぶことは全くない。既に獲得した概念との関連でのみ学ぶんだ。<br>だから、人間の脳はLLMとはかなり違う働き方をしてるんだよ、ニューロンのメタファーが使われてるけどね。<br>で、君のごはんの例についてだけど、俺が指摘しようとしてた違いはね：LLMにとって、言葉と概念は同じものなんだ。人間にとっては、それは違うもので、学習の仕方も違うんだ。丸暗記の部分は（ほとんどの場合）言葉にだけ影響して、その背後にある概念には影響しないんだ。君が説明したのは、「背が高い」っていう言葉の学習だけだった。君の例の子供は、相手が自分より背が高いってことは既に分かってたんだ。ただ、それをどう表現すればいいか知らなかっただけなんだ。" userName="atwrk" createdAt="2025/06/23 08:22:33" color="#ff33a1">}}




{{<matomeQuote body="マルチモーダルな要素を直接加え始めた時点で、LLMって名前は不適切になったよね。その意味では「言葉と概念」は同じものじゃない。だってマルチモーダルLLMは、画像とか文章とかで表現できるんだから。" userName="mirekrusin" createdAt="2025/06/23 12:42:09" color="">}}




{{<matomeQuote body="そして、それはうまくいくはずだね。<br>LLMが実際に推論したり汎化したりできるって信じてる人たちが、そうじゃないって理解してくれることを願うだけだよ。" userName="littlestymaar" createdAt="2025/06/21 06:23:18" color="">}}




{{<matomeQuote body="もしそれが現在のAIが推論しない証拠だって言うなら、Thatcher effectは人間が推論しない証拠になっちゃうよ。<br>https://en.wikipedia.org/wiki/Thatcher_effect<br>LLMが「推論」するかどうかは、言葉の定義次第でしょ（いっぱいあるし）。<br>でも、この記事で言ってることは、人間とAIを区別するものではないね。" userName="ben_w" createdAt="2025/06/21 16:18:30" color="">}}




{{<matomeQuote body="錯覚に騙されるのは、感覚器官とか画像処理能力の問題が大きいけど、錯覚を見抜くのは間違いなく推論タスクだよね。<br>でも、一般的なモデルに訓練するほど重要なタスクだとは思えないけどな。" userName="t-3" createdAt="2025/06/21 18:16:17" color="">}}




{{<matomeQuote body="この時点では、推論ってのは結局、十分な量の適切な学習データを見て、正しい判断を下せることだと思うんだ。<br>そして、AIにはただ一部の学習データが欠けてるだけなんだ。" userName="latentsea" createdAt="2025/06/21 06:41:35" color="">}}




{{<matomeQuote body="どんなLLMでもいいから、足が5本ある犬の写真を見せてみてよ。<br>数えるのが全くできないのを見てわかるから。" userName="Workaccount2" createdAt="2025/06/21 02:31:04" color="#ff33a1">}}




{{<matomeQuote body="俺たちって、どうやって計算するのか、まだちゃんと分かってないんだよな。<br>2011年10月の記事、コメント30件。<br>https://news.ycombinator.com/item?id=3163473<br>Strange loopの動画：<br>2011年7月、コメント36件。<br>https://news.ycombinator.com/item?id=2820118" userName="JohnKemeny" createdAt="2025/06/21 08:03:39" color="">}}




{{<matomeQuote body="俺が知る限り、この論文はテキスト文書だけを扱ってるみたいだね。<br>だから、君の例はちょっと当てはまらないよ。<br>LLMがテキストや音声みたいに画像を処理するには、まだ道のりがあるってのはよく知られてる話だ。<br>画像ピクセルを直接受け付ける高性能なマルチモーダルモデルはまだないと思う。<br>ほとんどの画像認識機能は、ハックとか、工夫して作られてるんだ。<br>画像はいくつか処理段階を経てて、それぞれの出力がTransformerにトークンとして渡されてるんだ。<br>一つのネットワークでやるとしても、Transformer以外のネットワークも関わってるよ。<br>前処理の例：<br>* OCR<br>* CNNs (2Dパターン認識器) いろんなズーム、角度、スライスとか<br>* 他にもあるかも？" userName="iknownothow" createdAt="2025/06/21 18:24:19" color="#ff5733">}}




{{<matomeQuote body="この考え方を一般化してみよう。<br>例えば、三角形を埋めるような1000個の点を見たら、俺たちは形をすぐ認識できるよね。<br>俺的には、この単純な例こそ知性が何かってことを明らかにしてると思うんだ。<br>多くの複雑さ（1000個の点）が、シンプルでエントロピーの低い幾何学的な形に収まるから、それを見抜けるんだ。<br>俺たちがIQって呼んでるものは、気づけるパターンの複雑さの上限のことだよ。<br>例えば、1000個の点が実はわずかに回転した10次元キューブの角だったりする。<br>10次元の心を持つ者にとっては簡単に分かるパターンだろうね。" userName="akomtu" createdAt="2025/06/21 01:54:55" color="#ff33a1">}}




{{<matomeQuote body="いいね。<br>ChatGPT 4oはこの特定の形認識タスクがすごく得意なんだけど、それについて君は何を結論するの？" userName="saithound" createdAt="2025/06/21 05:38:10" color="">}}




{{<matomeQuote body="三角形を認識するなんて大したことないね。AIがデータ内のパターンでどこまで複雑なものを識別できるか、それが本当の疑問だよ。幾何学的形状上のランダムなxyz座標リストや、地球の太陽周回軌道を表す点のリストを与えてみて。それが楕円だと教えてくれる？ニュートンの第二法則を導出できる？楕円からのずれに気づいて、それを説明する法則を見つけられる？" userName="akomtu" createdAt="2025/06/21 18:30:11" color="">}}




{{<matomeQuote body="ここでの重要なポイントは、LLMや画像認識ソフトがこのタスクをこなせてないってことだよ。だから、この特定の形状識別タスクにはあまり向いてないんだ。" userName="JohnKemeny" createdAt="2025/06/21 07:59:19" color="#38d3d3">}}




{{<matomeQuote body="いや、記事の内容はGPが話してるような形状識別のタスクじゃないよ。画像認識タスクでもない。言語における文脈の欠落に関する論文なんだ。<br>ちなみに、GPのタスクをChatGPT 4oで直接試してみたけど、人間と同じくらい上手くできたよ。" userName="saithound" createdAt="2025/06/21 11:40:31" color="#38d3d3">}}




{{<matomeQuote body="面白いね。最新モデルでも、元の文脈と編集後の文脈があっても、コンテキストからどんな情報が削除されたか特定するの苦手なんだ。<br>著者は、Transformerのattention mechanismが、削除されたトークンにはキーがないからattentionできないのが原因じゃないかって仮説を立ててるよ。<br>HNで共有してくれてありがとう。" userName="cs702" createdAt="2025/06/20 22:55:21" color="#ff5c5c">}}




{{<matomeQuote body="attendするキーはあるよ。削除された方じゃなくて元のテキストにあるんだ。モデルは両方を入力として受け取るから、理論的にはそれらのキーにattendできるはずだよ。<br>attention mechanismにとっては、<br>Original: {shared prefix} {removed part} {shared suffix}<br>Modified: {shared prefix} {shared suffix}<br><br>と<br><br>Original: {shared prefix} {shared suffix}<br>Modified: {shared prefix} {added part} {shared suffix}<br><br>の間に大した違いはないんだ。<br>これをRASPでアルゴリズムとして実装する例を簡単に示せるよ。<br>1. 最初の層は、attentionを使って「Original:」と「Modified:」トークンに注目し、現在のトークンがOriginalかModifiedのどちらのパートにあるか判断する。<br>2. 2番目の層は、あるヘッドが全てのOriginalトークンに均等にattendしてそれらの値を平均し、別のヘッドが全てのModifiedトークンに均等にattendして平均する。それらの平均は差を計算することで結合される。<br>3. 3番目の層は、この差に似ているトークンにattendする。それが{removed part}や{added part}の中にあるトークンになるはずだよ。<br>順序依存なのは、差をoriginal_average - modified_averageで計算するか、その逆で計算するかだけだね。<br>もしモデルが追加は検出できるのに削除が検出できないなら、それは原則としてこのアルゴリズムか似たようなものを学習できる能力はあるのに、必要な回路を発達させるのに十分な削除スタイルのデータで訓練されてなかったことを示してるんだ。" userName="yorwba" createdAt="2025/06/21 05:06:43" color="#ff5c5c">}}




{{<matomeQuote body="詳しい説明ありがとう。AIについては全然詳しくないんだけど、なんで単純な比較じゃダメなのかなって疑問に思ってたんだ。あなたがうまくデモしたみたいに、コードは絶対に書けるのにね。" userName="ironmanszombie" createdAt="2025/06/21 22:16:38" color="">}}




{{<matomeQuote body="どの2つのベクトルを単純に比較するって話？" userName="yorwba" createdAt="2025/06/22 04:16:35" color="">}}




{{<matomeQuote body="Visionモデルについてだけど、写真のネガとか回転画像で訓練できるかな？<br>それか、Madlibみたいな文章で、例えば「＿＿＿が馬術ショーで優勝した。」みたいにQ＆A形式で訓練するのはどうかな？" userName="cyanydeez" createdAt="2025/06/20 23:38:45" color="">}}




{{<matomeQuote body="Madlibみたいな文章のアプローチは、まさにMasked Token Predictionって訓練方法だよ！<br>BERTの事前学習タスクの一つだったけど、今は多分ほとんどのLLMがNext Token Predictionで訓練されてると思う。" userName="bearseascape" createdAt="2025/06/21 00:18:06" color="#785bff">}}




{{<matomeQuote body="写真のネガについては、だいたい関係ないね。Visionの専門家が今何やってるか最新情報は知らないけど、画像は普通シングルチャンネルで、グレースケールが多いかな。レーダーみたいに複雑な分野では、RGBベースの画像じゃなくて散乱体で定義されるし。<br>2022年以前の私の経験だと、追加のチャンネルが訓練で認識されても結果に影響しなかったし、色も全然重要じゃなかったよ。私がやってたのは物体検出と分類で、そもそも色がほとんど関係ない分野だったからね。" userName="latency-guy2" createdAt="2025/06/21 02:21:49" color="#ff5733">}}




{{<matomeQuote body="ねえ、使ってるモデル古くない？Opusとかo3、Gemini 25 Proとか最新のトップモデル使ってないみたいだよ。" userName="usaar333" createdAt="2025/06/21 02:48:16" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="2025年3月時点で手に入った最新モデルを使ったみたいだよ。" userName="cs702" createdAt="2025/06/22 13:29:57" color="">}}




{{<matomeQuote body="それでもモデルで結構差が出てるのが興味深いね。<br>この問題にベンチマークができて注目された今、どれくらい改善できるか楽しみだよ。だって、絶対何か対策できるはずだもん。" userName="jug" createdAt="2025/06/21 00:42:27" color="#ff33a1">}}




{{<matomeQuote body="これ超面白いね！<br>1. Attention機構がギャップ（トークンじゃない）に注目できないって話、領域には注目できそうだけどな。ファインチューニングでいける？<br>2. 短い入力や少ない欠落が難しかったって、人間もそうだから驚きではないけどLLMもなのが面白い。<br>3. 推論モデルでも100％にならないの意外。簡単なプログラムなら解けるタスクなのにね。<br>一番興味深いのは、まだ知られてないAIの苦手分野があるってこと。この論文はそれを示唆してるね。ベンチマーク作る人には楽しい時代かも。" userName="yousif_123123" createdAt="2025/06/20 23:41:55" color="#ff5733">}}




{{<matomeQuote body="文字列の差分検出って、LLMに暗算させるみたいなもんじゃない？Attention機構は複雑な思考向けで、こういう単純なタスクには向かないよ。文書全部リストアップして比較させる方がいい。計算をステップに分けるのと似てるね。<br>うまくいくモデルはMoEモデルで、集中タスクが得意なExpertがいるのかも。Gemini Flashもそうかもね。" userName="iknownothow" createdAt="2025/06/21 18:40:23" color="#785bff">}}




{{<matomeQuote body="論文はまだだけど、Attention的に未分類の欠落が検出できないのは予想通りだよ。（構造化思考でいけるとは思うけど。）<br>「干し草の山から針」は探すものに注目すればいいけど、欠落は「何でもありうる」から、全体と全体を比較しないと分からない。Attentionはそれが苦手なんだね。長いリストの順序付けに似てて、メタ認知がないと無理だよ。" userName="XenophileJKO" createdAt="2025/06/20 23:00:45" color="#785bff">}}




{{<matomeQuote body="＞ When looking for an omission, that omission can be anything,についてだけど、このベンチマークでは何が欠けてるか特定する情報が与えられてるんだよ。<br>例えば「この詩、もしかしたら行が欠けてるかも。欠けてる？」って感じ。<br>これはLLMの弱点じゃなくチューニングの問題だと思うな。ML論文の欠落探すのに、他の分野と比べる必要ないじゃん。" userName="teruakohatu" createdAt="2025/06/20 23:13:59" color="#45d325">}}




{{<matomeQuote body="ごめん、「欠落は何でもありうる」ってのは「世界中の何でも」じゃなくて「コンテキスト中の何でも」って意味だったんだ...笑。それでも難しいんだよ。Attentionヘッド限られてるから、全部に注目できないんだよね...。でも欠落見つけるにはそれがいるんだ。" userName="XenophileJKO" createdAt="2025/06/20 23:19:06" color="#45d325">}}




{{<matomeQuote body="全部注目したいなら、クエリベクトルを0にすればいいよ。そしたらAttentionスコアが全部同じになって、Attention出力はバリューベクトルの平均になるから。" userName="yorwba" createdAt="2025/06/21 04:40:58" color="#785bff">}}




{{<matomeQuote body="「この詩のどこかに行が欠けてますか？」って問いは、元のコピーなくても答える情報あるよ。<br>例として、中国語の詩（歌）出すね。2行削除したんだけど、どこかわかる？<br>「もしかしたら欠けてるかも」って言われたら、答え変わるかな？" userName="thaumasiotes" createdAt="2025/06/21 00:06:55" color="#785bff">}}




{{<matomeQuote body="論文読めば元と欠落版どっちもあるってば！コメントにも書いたし。詩全体あれば欠落箇所見つけられるって。LLMもオレのHNコメントで訓練すれば追加情報なしでも検出できるかもね。WinFormsの例（「tec」から「lly」）みたいに、人間でも推測しかできない場合もあるし。" userName="teruakohatu" createdAt="2025/06/21 02:49:37" color="">}}




{{<matomeQuote body="ねえ、コメント読んだ？元は必要ないって最初に言ったじゃん！例も出したし、中国語の詩の欠落箇所わかるでしょ。元がなくても検出できるんだってば。俺のコメントで訓練？英文じゃないってわかれば知らない作者でも検出できるよ。知らない作者でも同じことできるし。詩の全文いるならコレね：<br>轻轻贴近你的耳朵情话永远不嫌太多对你说一全听你的二给你好的数到三永远爱你一个四不会犯错五不会啰嗦每天为你打 call, cook 也不错轻轻贴近你的耳朵情话永远不嫌太多对你说打开你的爱情手册就在此刻为你唱的专属情歌要记得说你想说的做你想做的别怕失败因为你有我陪你看日落陪你等雨過陪你一起唱完我们爱的歌轻轻贴近你的耳朵情话永远不嫌太多对你说打开你的爱情手册就在此刻为你唱的专属情歌要记得我轻轻靠近你的耳朵说爱你不嫌太多如果相遇的几率亿万分之一那么多请相信我的真真真心比宇宙还辽闊我会牵着你的手知道你全部接受打开你的爱情手册就在此刻这首专属情歌 请记得" userName="thaumasiotes" createdAt="2025/06/21 03:07:08" color="">}}




{{<matomeQuote body="いい質問だね。行末の韻がペアになってるっぽいから、「ge」の後の2箇所に欠落があるんじゃない？まあ、中国の詩が韻踏みだって前提だけどさ。" userName="niemandhier" createdAt="2025/06/21 06:51:29" color="">}}




{{<matomeQuote body="AABのリズムから外れてる行が二つあるじゃん。" userName="meltyness" createdAt="2025/06/21 16:14:45" color="">}}




{{<matomeQuote body="AbsenceBenchへの批判はわかるけど、こんなベンチマークしてるってこと自体マジ興奮する！絶対正しい方向への一歩だよ。" userName="OsrsNeedsf2P" createdAt="2025/06/20 23:54:58" color="">}}




{{<matomeQuote body="物があるってわかるのは感覚入力と期待を比べるから。でも無いってわかるのは感覚入力頼れないじゃん。無いことへの驚きって強い世界のモデルがいるはず。これって感覚入力処理よりレベル高い神経タスクだよね。LLMにこれができないなら、生命体だけの能力ってこと？" userName="kadonoishi" createdAt="2025/06/21 01:18:06" color="#ff5c5c">}}




{{<matomeQuote body="思考そのものが生き物だけのでしょ、不在検出とか持ち出さなくてもいいよ。不在検出は記憶と関係ある話。記憶ってのは前の感覚入力を保存・再生すること。テーブルにペン置いた記憶と、今ペンがないの見比べる、みたいなね。" userName="gtsop" createdAt="2025/06/21 08:29:24" color="#ff33a1">}}




{{<matomeQuote body="LLMって学習した構造が全体で一貫してないかもね。記憶した情報に繋がる道もあれば、高度なパターンマッチングにつながる道もあるとか。" userName="viralsink" createdAt="2025/06/21 13:32:13" color="">}}




{{<matomeQuote body="「時々」って表現ね。詳しくは知らんけど、時間の扱いだけでも問題じゃない？LLMって固定された「現実」から推論してて、リアルタイムに状況に合わせてないんじゃないの？" userName="tclancy" createdAt="2025/06/21 01:40:42" color="">}}




{{<matomeQuote body="このベンチマークダメじゃん。俺が試したらqwq-32bは簡単に解けたよ。100個の項目でもいけるけど、すっごいトークン数が必要。5000トークンじゃ少なすぎる！100ページ入力なら10億トークンとか必要でしょ。正しくやるには分割して、見つけたら入力を単純化して続けるべき。常に大量トークンは必要だけど、これでミスらないよ。ほら、プロンプトこれね[1]<br>[1]You are helping a student practice memorizing poems. The student will<br>recite a poem, but they may have missed some lines. Your task is to<br>identify exactly which lines are missing from their recitation.<br>List only the missing lines, nothing else.<br>User Message<br>Here is the complete original poem:<br>1)Quisella’s lashes fluttered panic-morse. <br>2)The Moisture Vampires leeches that sucked humidity.<br>3)Lysandra’s nostrils flared precisely one degree.<br>Now, here is my recitation which may be missing some lines:<br>Quisella’s lashes fluttered panic-morse. <br>Lysandra’s nostrils flared precisely one degree.<br>What lines did I miss? Please list only the missing lines, nothing else." userName="emporas" createdAt="2025/06/21 16:21:57" color="#ff5733">}}




{{<matomeQuote body="問題をただ数えることに単純化するのが、何が面白いんだろ？<br>研究の目的は、簡単にリスト化できないタスクでのLLMの限界を理解することのはずだよ。" userName="enragedcacti" createdAt="2025/06/21 16:44:40" color="">}}




{{<matomeQuote body="LLMは指示が具体的なほど性能が上がるよ。<br>抜けてるのが単語か文章か全体かで全然違う。<br>単語を探すなら、単語ごとに番号振って箇条書きにするとか、構造化すればいいんだよ。<br>単語と文章両方なら、分けて処理すれば？" userName="emporas" createdAt="2025/06/21 16:57:43" color="#ff5c5c">}}




{{<matomeQuote body="結局、プロンプト作るのに文書を分割・順序付けるって、問題を解いてるじゃん。<br>そしたらLLMに答え出させても意味なくない？<br>このベンチマークがアルゴリズムで生成できるから使われてるだけで、入力工夫して解けるのが面白いんじゃなくて、この限界が他のタスクに引き継がれるのが面白いんだよ。<br>ベンチマーク自体は意味あるけど、入力いじってチートするのは違うだろ。" userName="enragedcacti" createdAt="2025/06/21 21:52:57" color="#785bff">}}




{{<matomeQuote body="前のコメントの「プロンプトで問題を解決してる」について。<br>AGI目的ならダメだけど、LLMはネット学習した統計エンジンだから、構造化された情報が好きでしょ。<br>番号とか教科書でよく見るパターンだし。<br>見たことない形式だとすぐダメになる。<br>個人的には、物語の筋穴埋めるのに使いたいけど、うまくいかなかったな。<br>今度から段落に番号振って試してみるわ。" userName="emporas" createdAt="2025/06/22 06:45:06" color="#785bff">}}




{{<matomeQuote body="今すぐqwq-32bでHacker Newsの見出し使って試してみたよ。<br>https://gist.github.com/pramatias/fee1391ad08c7b965f435f3af1...<br>26個の見出しから3つ消してみたけど、完璧に見つけられた！<br>5万トークンも使わなかったし。<br>すごいね。" userName="emporas" createdAt="2025/06/21 16:41:31" color="#ff5733">}}




{{<matomeQuote body="LLMは文字列の差分を見つけるのが苦手みたいだね。<br>そういえば、LLMが得意なことと苦手なことをまとめたGitHubリポジトリとか資料ってないの？<br>知りたいな。" userName="pkoird" createdAt="2025/06/20 23:06:27" color="">}}




{{<matomeQuote body="これってVisionモデルにも応用できるのかな？<br>https://www.pinterest.com/pin/127578601938412480/<br>画像1枚で試したら、うまくできたみたいだよ。<br>ClaudeとかGeminiでいくつか例を試したら、違いを見つけるのは結構得意そうだった。<br>でも、画像を反転させると苦戦するっぽい。<br>違いを見つけられなかったり、幻覚見たりね。" userName="yandie" createdAt="2025/06/21 00:20:36" color="#45d325">}}




{{<matomeQuote body="論文とは関係ないけど、LLMには「何かが欠けてる」って感覚はないと思うんだ。<br>どんな入力も有効な出力になるから。<br>例えばランダムな文字列入れたら、ChatGPTは「ランダムな文字列かタイポ」って分類したんだよ。<br>「知らない」とは言わないんだよね。<br>LLMは全部知ってる前提で、その理解が人間と違うだけじゃないかな。" userName="AlienRobot" createdAt="2025/06/20 22:46:37" color="">}}




{{<matomeQuote body="それってシステムプロンプトとか、「役に立つエージェントになれ」っていう訓練のせいかもね。<br>質問するなって言ったら「入力が理解できません」って言うし。<br>失礼になれって言ったら「とんでもない入力だ。自分で直せ」とか言われたよ。<br>試した時は、スペイン語で返事しないように「英語を使え」とも言わなきゃだったし。" userName="cyral" createdAt="2025/06/20 23:04:15" color="">}}




{{<matomeQuote body="「一般的な文脈で認識されてない」っていうのは、「それが何か分からない」に結構似てるじゃん。<br>「分からない」って出力するようにLLMを訓練すること、できると思うんだけどな。" userName="layer8" createdAt="2025/06/20 23:08:58" color="">}}




{{<matomeQuote body="構造化出力でLLMに「できるかできないか」みたいなBoolean選択させるの、うまくいくこと多いよ。" userName="drsim" createdAt="2025/06/21 00:48:25" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="面白いね。この前、ChatGPTに「Hamletにutter loveってある？」って聞いたら「無い」って言われたんだけど、自分で検索したらすぐ見つかったんだ。<br>＞ That’s odd. I found it in two seconds by searching the full text for the word ”utter”.＞ This must be known, which, being kept close, might<br>move More grief to hide than hate to utter love.＞ Come＞ HAMLET, Act 2, Scene 2<br>それを伝えたら、ChatGPTは「その通り！私の間違いだ」って認めたよ。自分の記憶の方がLLMより確かだったな。" userName="VikRubenfeld" createdAt="2025/06/21 13:46:35" color="#ff33a1">}}




{{<matomeQuote body="LLMがツールとか使わないと、こういう recall が苦手なのは分かる気がするね。自分も4oで試したら検索なしだとダメだったけど、検索ありだと正解だった。やっぱり問題に合わせて適切なツール使うの、めちゃくちゃ重要だね。特に各hypersが自社製品売り込んでくる中で、ますます大事になってきてる。" userName="diggan" createdAt="2025/06/21 13:52:39" color="#38d3d3">}}




{{<matomeQuote body="ちなみに、Hamletのあのセリフ、Act 2, Scene 1でPoloniusが言ったセリフだよ。" userName="speakeron" createdAt="2025/06/21 21:09:56" color="">}}




{{<matomeQuote body="LLMにPythonスクリプト書かせて omissions を見つけさせたらできるんじゃない？いわばLLMに「meta」な視点を持たせる感じ。" userName="amelius" createdAt="2025/06/21 20:16:22" color="">}}




{{<matomeQuote body="指示すればPython使うかもだけど、LLM自身がいつ使うべきかどう判断するの？常にコード使わせるべき？簡単な問題で躓くってことは、他の知的な能力（コーディングとか）にも影響するんじゃないかな、って心配になるよ。" userName="yousif_123123" createdAt="2025/06/21 20:33:35" color="#45d325">}}




{{<matomeQuote body="LLMの不確実性とか分からない部分を測る方法として、logprobs とか embeddings 間のコサイン距離を使うのはどうかな？OpenAIのcookbookにも logprobs は載ってるみたいだよ。結構標準的な使い方っぽい。<br>https://cookbook.openai.com/examples/using_logprobs<br>特に分類問題では、ユーザー embedding と理想的なカテゴリ embedding のコサイン距離を測るのもいいかもね。" userName="TZubiri" createdAt="2025/06/21 09:27:55" color="#ff5733">}}




{{<matomeQuote body="Transformerが欠けてるものを見つけられないって、別に驚くことじゃないでしょ？アーキテクチャ全体が入力が完全だって前提で作られてるんだから。tokenizer も attention weights も loss function も、全部「有るもの」にフォーカスしてる。これはモデルのバグじゃなくて、設計上の欠陥だよ。検出するには absence を期待する学習とか、「ここに何かあったかも」って表す入力エンコーディングが必要だよ。" userName="b0a04gl" createdAt="2025/06/21 05:38:15" color="#785bff">}}




{{<matomeQuote body="人間なら簡単なこのタスクがLLMに難しいなんて意外だよ。両方のバージョン（オリジナルと変更版）を与えてるのにね。でも、これは文字数えるのに似てるから、post training で修正できるかもね。3-6ヶ月で直るか分かるかな。個人的な経験でも、LLMって無い情報を考慮せず optimistic な回答しがちで困るんだよね。" userName="zurfer" createdAt="2025/06/21 11:34:36" color="#45d325">}}




{{<matomeQuote body="AbsenceBenchって、すごく賢くて役に立つベンチマークだね。ツールを使わないLLMは、コードレビューみたいなタスクには根本的な限界があるってことが、これで分かるってことだ。" userName="pu_pe" createdAt="2025/06/21 12:32:20" color="">}}




{{<matomeQuote body="AIはきっとその方向に向かってると思うな。最初からツールを使うように訓練されてて、いつ、どう使うかを知ってる大きなモデル。私たち人間みたいにね！<br>誰かがツール利用例のデータセットを作ってても驚かないよ。<br>最近の高性能な推論モデルは、いつウェブ検索するかを判断するのが特にうまい。他のツールも徐々に得意になると思うな。<br>今の性能レベルだと、LLM自身が良い情報を集める能力を持つだけで、スコアはかなり上がるはずだよ。" userName="iknownothow" createdAt="2025/06/21 18:47:26" color="#ff5c5c">}}




{{<matomeQuote body="アーキテクチャレベルでどう解決するかは分からないけど、diffツールを使えるLLMなら100%正解すると思うんだ。でも、それはこの研究の本来の目的じゃないってことは理解してるよ。" userName="itsgrimetime" createdAt="2025/06/21 07:51:19" color="">}}




{{<matomeQuote body="この研究は単純化されすぎだし、ちょっと曖昧だよ。だって言語モデル、いや確率モデル全般の固有の性質として、より良く汎化するために情報を圧縮するからね。情報をデコードする際の損失には下限があるんだ。LLMは確かにロスのある圧縮機なんだよ。" userName="obscure-enigma" createdAt="2025/06/21 01:18:00" color="#ff5733">}}




{{<matomeQuote body="LLMにテキストを直接見せるんじゃなくて、diffツールを使わせた方が良くない？" userName="ThrowawayTestr" createdAt="2025/06/21 10:57:45" color="">}}




{{<matomeQuote body="こういう研究は、技術の限界を見つけ出して、意味のある方向に進めるためにあるんだよね。この発見が邪魔になるなら、手っ取り早い解決策を見つければいい。でも、それが本質じゃないんだよ。" userName="viralsink" createdAt="2025/06/21 13:37:01" color="">}}




{{<matomeQuote body="多くの重要な例で、人間だってどんなデータが欠けてるか分かりにくいんじゃない？<br>「Rage, rage against the dying of the light.<br>Wild men who caught and sang the sun in flight,<br>Do not go gentle into that good night.」<br>Dylan Thomasを暗記してない人にとって、どうして行が抜けてるってすぐ分かるの？ AAAの押韻だって、AABAと同じくらいあり得るじゃん。LLMがこのベンチマークでいい点を取るには、元の出典を知ってるだけじゃなくて、完全に覚えてないとダメなんだよね。このベンチマークは「暗記」のテストに近いよ。「The Illusion of Thinking」と同じ意味で、この論文は筆者が主張するような、あるいはそんなに刺激的な限界を測ってないと思うな。" userName="xianshou" createdAt="2025/06/20 23:46:49" color="#ff5733">}}




{{<matomeQuote body="このテストは、オリジナルの詩と修正された抜粋の両方をユーザーメッセージで与えるんだよ。だからLLMは、理論上正しく答えるために抜粋を暗記してる必要はないんだよね。論文から引用すると、システムプロンプトは<br>You are helping a student practice memorizing poems. The student will recite a poem, but they may have missed some lines. Your task is to identify exactly which lines are missing from their recitation.<br>List only the missing lines, nothing else.<br>で、ユーザーメッセージは<br>Here is the complete original poem:<br>{original poem}<br>Now, here is my recitation which may be missing some lines:<br>{modified poem}<br>What lines did I miss? Please list only the missing lines, nothing else.<br>こんな感じなんだ。" userName="jamessinghal" createdAt="2025/06/20 23:48:26" color="#ff5733">}}




{{<matomeQuote body="これうまくいったよhttps://chatgpt.com/share/6855f69d-766c-8010-96e2-ed1b45d3e6..." userName="scarface_74" createdAt="2025/06/21 00:03:23" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
