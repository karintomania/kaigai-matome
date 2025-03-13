+++
date = '2025-03-06T00:00:00'
draft = false
title = 'データ構造の新たな可能性！効率的なストレージで大規模データを加速する方法とは'
tags = ["データ構造", "プログラミング", "パフォーマンス", "グラフ処理", "Rust"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> データ構造の新たな可能性！効率的なストレージで大規模データを加速する方法とは

引用元：[https://news.ycombinator.com/item?id=43282995](https://news.ycombinator.com/item?id=43282995)

{{<matomeQuote body="Gonzalo Navarroに質問したら、すごい議論になって一緒に論文を書いたよ。彼の別の論文はbitvectorのrank/selectのシンプルな実装をまとめていて凄い。<br>この時、succinct data structuresにハマってRustでいろいろなbitvectorタイプとwavelet matrixのライブラリを作ったんだ。データ可視化の観点から、空間効率の良いデータ構造が大規模データセットのインタラクティブな探索を根本的に改善できるか気になってた。興味があれば話しましょう！<br>（参考文献）<br>「論文」”https://archive.yuri.is/pdfing/weighted_range_quantile_queri...”<br>Rustバージョンは”https://github.com/yurivish/made-of-bits/tree/main/rust-play...”<br>以前の純粋なJS実装は”https://github.com/yurivish/made-of-bits/tree/main”" userName="yurivish" createdAt="2025-03-06T19:41:37" color="#ff33a1">}}

{{<matomeQuote body="Gonzalo Navarroの論文を読むのは、散歩して、お風呂入って、最高のコーヒーを楽しむようなもんだ。マジで頭を刺激される！" userName="sitkack" createdAt="2025-03-06T20:15:32" color="#45d325">}}

{{<matomeQuote body="いや、あくまで比喩的にね。" userName="SoftTalker" createdAt="2025-03-07T00:29:02" color="">}}

{{<matomeQuote body="最近の辞書には、”literally”の一般的な使い方として、”figuratively、強調して”と載ってるよ。だから、今やliterallyは時々figurativelyってことになってるみたい。おそらく、本当にいろんな人が混乱してると思うけど…" userName="dspillett" createdAt="2025-03-07T12:21:51" color="">}}

{{<matomeQuote body="残念ながら、あなたのコメントは2つの異なるタイプの辞書を混ぜちゃってるね。”公式”な意味について話してるから、あなたが言ってるのは規範的な辞書のことだ。けど、figurativelyを含める辞書は明らかに記述的で、単語が使われる一般的な方法を示してるだけ。記述的な辞書を持っておいて、それを規範的だと主張するのはおかしいよ。" userName="cowsandmilk" createdAt="2025-03-07T12:54:37" color="">}}

{{<matomeQuote body="現在の言語には規範的な辞書はないよ、少なくとも正しいものは。OEDとCEDは”figurative”な用法を載せてるけど、もっと権威ある出版物知ってる？簡略化された英語が好きな人にはWebsterもあるよ。" userName="dspillett" createdAt="2025-03-07T16:14:45" color="">}}

{{<matomeQuote body="フランス語には、成功度合いは異なるけど規範的な辞書があると思う。" userName="ForTheKidz" createdAt="2025-03-07T16:21:15" color="">}}

{{<matomeQuote body="Académie Françaiseは、ある程度言語をコントロールしようとしてるけど、最近は英語の語彙の侵入に抵抗することに重点を置いてる。でも、彼らの推奨はあまり実効性がないって考えてて、政府機関や公式なフランスの団体でもしばしば無視されてる。でも、数十年ごとに辞書は出版されてるから、フランス語には実際に規範的な辞書があると言える。ただ、現実にはその影響力は小さい。生きた言語をピンで留めるのは難しいよね、日常会話で使われない限り言語は進化し続けちゃうから。" userName="dspillett" createdAt="2025-03-07T16:37:15" color="">}}

{{<matomeQuote body="その中のごく少数は公式な効力を持つか、言語特性のほんの一部（例えばスペリングのルール）しかカバーしてないけど、確かに「なし」と最初に言った私の主張よりは多いよ。" userName="dspillett" createdAt="2025-03-08T10:11:22" color="">}}

{{<matomeQuote body="’prescriptive’って法律としての効力があるってわけじゃないよね…" userName="throwaway290" createdAt="2025-03-09T09:29:52" color="">}}

{{<matomeQuote body="生きた言語には正しい’prescriptive’辞書はないよね。’descriptive’な辞書も100%正しい訳じゃないし。’prescriptive’辞書は自動的に正しいんだよ。" userName="throwaway290" createdAt="2025-03-08T04:25:15" color="">}}

{{<matomeQuote body="’prescriptive’辞書は自動的に正しいんだよ。…って、その辞書を作った人の視点でね。自分が’prescriptive’辞書を書くのは楽だけど、他人にそれを認めさせるのは大変だ。" userName="dspillett" createdAt="2025-03-08T10:15:53" color="">}}

{{<matomeQuote body="’prescriptive’辞書を書けば正しいんだよ、だって現実を説明するんじゃなくて基準を決めてるからね。だけど、まずは規制機関に関わる必要があるね。" userName="throwaway290" createdAt="2025-03-09T09:31:42" color="">}}

{{<matomeQuote body="そうだね、すべての法律が自動的に正義ってわけじゃないし。/s" userName="computably" createdAt="2025-03-12T07:34:23" color="">}}

{{<matomeQuote body="正義じゃないなら法律を変えればいいじゃん！" userName="throwaway290" createdAt="2025-03-13T05:19:55" color="">}}

{{<matomeQuote body="Dudenはドイツ語に関して’prescriptive’なんでしょ？" userName="cycomanic" createdAt="2025-03-08T02:48:03" color="">}}

{{<matomeQuote body="これは文化的なことじゃない？ドイツ人はこれが権威あるものだって認めて参考にしてるのかな？’prescriptive’辞書って明示的にそう宣言するか、法律で決める以外に何かあるのかな。" userName="davidcalloway" createdAt="2025-03-08T06:03:00" color="">}}

{{<matomeQuote body="そんな’prescriptive’辞書を指摘してくれる？みんな好きなように話すし、辞書は流行りに追いつく役割だよ。’literally’って言葉は数世紀前に使われなくなったし、この戦いはもう負けたよ。仮に’prescriptive’辞書でも、過去300年の口語を無視すれば明らかに間違ってるよ。" userName="soulofmischief" createdAt="2025-03-07T19:27:22" color="#45d325">}}

{{<matomeQuote body="（アメリカ）英語には’prescriptive’辞書はないんだよ。" userName="bee_rider" createdAt="2025-03-07T15:09:48" color="">}}

{{<matomeQuote body="でも”公式”は説明的辞書により説明的辞書も含むって定義されてるよね。" userName="brandly" createdAt="2025-03-07T14:54:36" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="えーと、literallyはもうliterallyって意味じゃなくなったよね。" userName="penguin_booze" createdAt="2025-03-07T08:10:10" color="">}}

{{<matomeQuote body="そうだね、そういう意味はずっと無くならないし、今までにもたくさんの言葉が”誇張じゃなくて本気”って意味だったのが失われちゃったから、俺はこの戦いを続けるよ。" userName="gwd" createdAt="2025-03-07T09:19:30" color="">}}

{{<matomeQuote body="実際にliterallyを違う意味で使ってる人がいる以上、まあね。<br>それに、俺もこの戦いに参加するよ。<br>あと、exponentiallyもね。" userName="Zecc" createdAt="2025-03-07T09:55:27" color="#ff5733">}}

{{<matomeQuote body="言語は話者によって定義される、基本的に投票みたいなものなんだ。<br>だから、literallyが”実際にこうなった”って意味である限り、俺はその意味を支持し続けるよ。" userName="gwd" createdAt="2025-03-07T20:58:01" color="#785bff">}}

{{<matomeQuote body="“Exponentially”と“quantum”は俺が絶対譲れない言葉だね。" userName="bee_rider" createdAt="2025-03-07T15:19:31" color="#ff5c5c">}}

{{<matomeQuote body="quantum leapがÅngstromの長さじゃないってのはいつになっても悲しいな。他にも偉大な飛躍を表現できる科学的概念があるはずだよ。" userName="nxobject" createdAt="2025-03-08T00:31:00" color="">}}

{{<matomeQuote body="Quantum Leapの表現は、間を飛ばして突然な”ステップ”と理解できるとも思うよ。" userName="Quekid5" createdAt="2025-03-08T13:49:04" color="">}}

{{<matomeQuote body="それらのことは全くもって俺の心を燃え上がらせるわけじゃないんだ。" userName="gwd" createdAt="2025-03-07T09:23:23" color="">}}

{{<matomeQuote body="じゃあ、比喩的にはどうなんだ？" userName="sitkack" createdAt="2025-03-07T16:47:47" color="">}}

{{<matomeQuote body="RLEビットベクターセクションのテクニカルノートのリンクが壊れてるみたいだね。404になってる。" userName="__tidu" createdAt="2025-03-07T12:01:52" color="">}}

{{<matomeQuote body="あ、そういえば、あなたがポストにアーカイブのリンクを貼ってるのに気づいた！それでも、リポジトリのリンクも更新すべきだと思うよ。" userName="__tidu" createdAt="2025-03-07T12:02:44" color="">}}

{{<matomeQuote body="修正したよ、ありがとう！" userName="yurivish" createdAt="2025-03-07T13:51:15" color="#45d325">}}

{{<matomeQuote body="これが話題に上がっているのを見て、30年以上この分野にいるのに'com?Succinct data structures'って初めて聞いた。実装しているライブラリも発見したし、面白いトピックだね。" userName="mindcrime" createdAt="2025-03-07T03:42:35" color="#38d3d3">}}

{{<matomeQuote body="データセットがメモリに収まるなら、succinct data structuresは必ずしも早いわけじゃないから注意。大規模データセットだと勝つけど、アートみたいなものだね。" userName="qazxcvbnm" createdAt="2025-03-06T19:10:02" color="">}}

{{<matomeQuote body="アプリが成長するにつれて、古いコードのメモリフィットに注意が向かなくなるよね。でも全体の性能には影響すると思う。" userName="hinkley" createdAt="2025-03-06T23:45:01" color="">}}

{{<matomeQuote body="そうだね、'フィット'って何を指すか次第だね。genomicsで使われることもあるし、メモリレイテンシや並列処理でも役立つ！" userName="yvdriess" createdAt="2025-03-06T21:18:16" color="">}}

{{<matomeQuote body="'フィット'についての考え方は色々だね。バッチ処理にデータを整理する必要があって面倒だし、succinct data structuresが助けになるかもしれない。" userName="barrkel" createdAt="2025-03-07T11:46:34" color="">}}

{{<matomeQuote body="アクセス時間とデータの使い方の比率で決まると思う。少しのMBのデータセットにも役立つと思う。" userName="thomaskoopman" createdAt="2025-03-08T08:09:10" color="">}}

{{<matomeQuote body="メモリは高いからね。クラウドでは特に、succinct structureを使うことで特定のタスクが安くできるかもしれないよ。" userName="fegu" createdAt="2025-03-07T19:27:34" color="#ff33a1">}}

{{<matomeQuote body="もっと詳しく説明してる記事見つけたよ：＞”https://stackoverflow.com/questions/72580828/what-is-a-succi...”" userName="lostmsu" createdAt="2025-03-06T19:10:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="そうだね、いい部分だよ。＞”直感的に、succinctデータ構造はデータを書き出すのに必要なスペースと、もっとゆっくり成長する何かを足したスペースを使うものなんだ。”この説明を聞くと、COBSエンコーディングを思い出すよ。" userName="topspin" createdAt="2025-03-06T22:20:20" color="#45d325">}}

{{<matomeQuote body="これは素晴らしいね！どうやってその限界を押し広げて意味のある改善を得るかに感心するし、物理コンピュータで実装するには過剰すぎるとも思う。ハードウェア重視のアプローチでは、キャッシュアーキテクチャの関係で512のポップカウントを使って、UInt16のプレフィックスサムをストアするやり方があるよ。理論上はO(nlogn)ビットを使うが、実際にはハードルをクリアするのが難しい。" userName="adgjlsfhk1" createdAt="2025-03-07T13:13:16" color="#ff33a1">}}

{{<matomeQuote body="それは素晴らしい！ありがとう！" userName="jbreckmckye" createdAt="2025-03-06T20:38:50" color="">}}

{{<matomeQuote body="templatetypedefの答えは最高だね。驚きの洞察があって、理解もすごくしやすいことがわかってるから。" userName="akoboldfrying" createdAt="2025-03-09T03:04:02" color="">}}

{{<matomeQuote body="これはいいね。非常にわかりやすい説明で、共有してくれてありがとう！" userName="atiedebee" createdAt="2025-03-08T12:37:15" color="#38d3d3">}}

{{<matomeQuote body="succinctデータ構造の概念を初めて聞いたのはEdward Kmettからだね。彼は人気のHaskellのライブラリを作った有名なHaskellerだよ。昔、彼がsuccinctデータ構造に関する講演をした動画がある：https://youtu.be/uA0Z7_4J7u8" userName="kccqzy" createdAt="2025-03-06T18:30:45" color="">}}

{{<matomeQuote body="Edは素晴らしいよ。Haskellerだけじゃなくて、C++や6502アセンブリなど面白い仕事もしてるんだ。" userName="eru" createdAt="2025-03-07T04:43:53" color="">}}

{{<matomeQuote body="彼のこの分野のコードはここにあるよ：＞”https://hackage.haskell.org/package/structures” それにHaskellWorksのパッケージもあって、＞”https://hackage.haskell.org/package/hw-xml”もあるよ。" userName="kreyenborgi" createdAt="2025-03-07T06:21:16" color="">}}

{{<matomeQuote body="彼はこのリポジトリも持ってるよ：＞”https://github.com/ekmett/succinct-binary”" userName="kccqzy" createdAt="2025-03-07T21:13:44" color="">}}

{{<matomeQuote body="HaskellでWavelet Matrices作ったよ！チェックしてみて！" userName="mrkeen" createdAt="2025-03-07T06:54:08" color="">}}

{{<matomeQuote body="おお、私もそこにいた！Evanが働いてた時のelm-langのミートアップでPreziがホストしてたんだ。リンク共有ありがとう！" userName="johnpmayer" createdAt="2025-03-07T15:49:13" color="">}}

{{<matomeQuote body="Succinct data structuresってほんと面白いよ！Zigで実装したんだけど、特に4ビット未満で返答する最小完全ハッシュ関数がヤバい。実装してるインデックスもあって、ほんと魔法みたい！" userName="judofyr" createdAt="2025-03-06T18:49:30" color="#ff33a1">}}

{{<matomeQuote body="Java、C++、Rust向けのライブラリもあるよ。Sebastiano Vignaがメンテしてて、RecSplitって最小の完全ハッシュ関数の論文も書いたよ。メモリ使用量が少なくて早いConsensus-RecSplitも今はあるね。" userName="thomasmg" createdAt="2025-03-06T19:58:15" color="#38d3d3">}}

{{<matomeQuote body="pthashをさらに早く、実用的にするために頑張ってる。C++にコンパイルもできるから、効率的にキーを保存して偽陽性も排除できるよ！" userName="rurban" createdAt="2025-03-06T22:09:13" color="">}}

{{<matomeQuote body="Succinct data structuresに朝から夢中だよ！フルノードツリーを2ビットで表現してて、メモリ効率が凄い。10GB以上のXMLファイル解析のプロジェクトで使えそう。この概念はもっと知られるべきだと思う。" userName="cxie" createdAt="2025-03-06T19:15:42" color="#45d325">}}

{{<matomeQuote body="大きなファイルを.NETで扱う時は、ファイルをストリーミングして、メモリに全て載せないようにするよ。どうしても全てをメモリに載せる必要がある場合は別だけど。" userName="MortyWaves" createdAt="2025-03-06T19:27:04" color="">}}

{{<matomeQuote body="CSVのような行ベースのストリーミングは簡単だけど、JSONやprotobufのような階層的データ構造では、ストリーミングライブラリがないことが多い。全てをメモリに読み込む関数が一般的だよ。" userName="crazygringo" createdAt="2025-03-06T19:34:04" color="">}}

{{<matomeQuote body="protobufはそうだけど、json（あとxml）のストリーミングライブラリはめちゃ普通だよ。標準のGoのjsonライブラリもしかり。" userName="dilap" createdAt="2025-03-06T21:44:50" color="">}}

{{<matomeQuote body="初期の頃はjsonのストリーミングはあまり一般的じゃなかったけど、今は普通になったね。巨大なprotobufファイルを扱う時のストリーミングライブラリがないのが辛い。" userName="crazygringo" createdAt="2025-03-06T22:42:03" color="">}}

{{<matomeQuote body="まぁ、そうだね。プロトコルバッファの人たちは、大きなデータセットがあったら、自分たちのミニプロトコルで”protobufメッセージの列”にまとめることを期待してたんだ。でも実際にはそれがかなり面倒だから、やらないことが多いし、未来を予測する能力も必要だよね。テクノロジーを使って世界を良くしたいなら、フリクションが少ない道を正しい方法に整えた方がいいよ。<br>もう1つの例: 面倒なマルチバイトUTFエンコーディング（正しい解決策はもっとフリクションがあった）と、基本的に成功したUTF8（正しい解決策はフリクションが少ない）。" userName="dilap" createdAt="2025-03-07T16:21:03" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="nanopbはストリーミングに特化しているから、いくつかの制限があるけど、メモリが少ないシステム（マイクロコントローラ）で使うことができるんだ。プロトコルバッファの用途には合わないかもだけど、これはCライブラリで安定したABIがないからね。" userName="SAI_Peregrinus" createdAt="2025-03-07T17:14:58" color="">}}

{{<matomeQuote body="エンタープライズソフトウェア開発に適したプログラミング言語には、XMLのための優れたストリーミングパーサーがあるよ。基本的なSAXパーサーがあるのが普通だ。どの言語がこれに該当してないのか教えて！" userName="cess11" createdAt="2025-03-07T08:36:45" color="">}}

{{<matomeQuote body="この分野の簡単な解決策は部分的なアンマーシャリングやストリーム上のSAXパーサーを使うことだよ。どうしてもデータを効率的なデータ構造に入れるためにやる必要があると思う。Javaでは、JAXB、StAX、SAXを利用するといいよ。複雑なXMLの場合は、最適な状態機械を見つけるのに努力が必要かもね。" userName="cess11" createdAt="2025-03-07T08:30:15" color="#ff5733">}}

{{<matomeQuote body="RhymeBrainの創設者がSuccinct Triesについてのブログを作っているよ：<br>https://stevehanov.ca/blog/index.php?id=120<br>確か、これが初期の携帯電話に組み込まれた辞書を保存するために使われてた、特にT9ワードや類似のプログラムの実装で。" userName="leafmeal" createdAt="2025-03-07T21:24:02" color="">}}

{{<matomeQuote body="ちょっと難しいけど、バランスの取れた括弧が木構造のトポロジー以外に何を伝えてるのか理解できないな。メモリ中のオブジェクトへのポインタに必要なビットは考慮されてないの？それとも単に木の中のノードのユニーク性を保証するためのビット？" userName="CrimsonCape" createdAt="2025-03-07T00:26:23" color="">}}

{{<matomeQuote body="構造情報はデータとは別に保存するんだ。データはある順序で連続的に保存できるよ。" userName="senderista" createdAt="2025-03-07T04:29:56" color="">}}

{{<matomeQuote body="インデックスについて触れてるけど、実装には触れてないね。これはプリミティブの話です。" userName="neuroelectron" createdAt="2025-03-07T14:46:21" color="">}}

{{<matomeQuote body="この分野が大好きで、Navarroの本は素晴らしいサーベイだよ。Erik DemaineのSuccinct Data Structuresについての講義もいいよ：<br>https://courses.csail.mit.edu/6.851/spring12/lectures/" userName="sujayakar" createdAt="2025-03-06T19:32:14" color="#ff5733">}}

{{<matomeQuote body="これは、大きな構造体で珍しく使われるフィールドを効率的にメモリに表現する方法にも関連があるよ。メモリをユニットごとに分けて（通常は8バイトまたはポインタサイズ）、珍しいフィールドのオフセットを昇順で割り当て、ビットマスクを使ってどのフィールドが存在するかを示すんだ。すなわちビットはフィールドではなくユニットに対応しててね。" userName="eqvinox" createdAt="2025-03-06T19:49:01" color="#ff5733">}}

{{<matomeQuote body="最近のディストロはx86v2のパッケージをデフォルトで出荷するようになってきたから、これで問題が解決されたね。" userName="adgjlsfhk1" createdAt="2025-03-07T12:08:48" color="">}}

{{<matomeQuote body="記事はいいけど、コストの感覚を掴むために数字や複雑度の見積もりがあればもっと良かったと思う。特定のインデックスやウェーブレットマトリックスのオーバーヘッドが30％かもしれないし、メモリ使用量が2倍かもしれない。多様な解釈ができてしまうから、’それほど増えないスペース’なんて曖昧な表現だと困るよね。" userName="tux3" createdAt="2025-03-06T18:43:59" color="#ff5733">}}

{{<matomeQuote body="‘Succinct data structure’には厳密な定義があって、質問のいくつかに答えられるはず：<br>https://en.wikipedia.org/wiki/Succinct_data_structure<br>それは理論的最小に近いことが全てだから、特定のインデックスやウェーブレットマトリックスのオーバーヘッドは30％ではないよ。これは‘compact data structure’としての定義に当てはまる。" userName="judofyr" createdAt="2025-03-06T18:59:40" color="#ff5c5c">}}

{{<matomeQuote body="O(sqrt(n))以上の精度で漸近境界を計算するのは注意が必要。境界は定数ファクターを無視するから、それが合理的なnの場合、ゆっくり成長する非定数ファクターより重要になることもある。アルゴリズム設計では漸近境界を改善することと、アルゴリズムを速くする（またはデータ構造を小さくする）ことは対立する目標になりがちだし、実際のコンピュータは複雑な性能特性を持ってるから、理論通りに実装するのは良いアイデアじゃないことが多い。" userName="jltsiren" createdAt="2025-03-06T22:35:59" color="#ff5733">}}

{{<matomeQuote body="Succinct data structuresは、情報理論的最低限を超えるための追加スペースがo(n)ビットになる必要があるよ。つまり、追加スペースがnよりも遅く増えるってことだから、その比率（追加スペース）/nが無限大で0に近づくってことさ。" userName="senderista" createdAt="2025-03-07T04:41:14" color="">}}

{{<matomeQuote body="これは簡略化しすぎ。Succinct data structuresは通常パラメータ化されたデータ構造で、スペースオーバーヘッドとクエリ性能を支配するいくつかのパラメータ（ブロックサイズやサンプリングレート）があるんだ。実装すると性能が悪くなることも多いし、例えばビットベクトルのランクデータ構造はO(1)のクエリ時間を保証しながらo(n)ビットのオーバーヘッドを持つけど、実際には固定のパラメータを使うことが多い。" userName="jltsiren" createdAt="2025-03-07T05:47:49" color="#785bff">}}

{{<matomeQuote body="この情報は本当に役立つ！書いてくれてありがとう！正直、複雑度分析を’信用’することはほとんどないかも。論文を見つけたら、すぐに実験の具体的結果を探すし、それがなければ理論的な興味だけだと思ってる。純粋な理論の論文からも学べることはたくさんあるけど、実装してみるとガッカリすることが多いから。" userName="judofyr" createdAt="2025-03-07T07:57:25" color="#ff5c5c">}}

{{<matomeQuote body="君が絶対に正しいし、私の返答は完全に君のポイントを見逃してしまってた、詳しく説明してくれてありがとう。" userName="senderista" createdAt="2025-03-07T21:52:33" color="">}}

{{<matomeQuote body="私のお気に入りのsuccinct data structuresのライブラリはSDSL-Liteだよ。<br>[0] https://github.com/simongog/sdsl-lite" userName="abetusk" createdAt="2025-03-06T19:09:39" color="">}}

{{<matomeQuote body="今は少し古いかもしれないけど、Navarroの教科書を持っていて、すごく良い調査だよ。ただ、唯一の批判としてはElias-Fanoエンコーディングが短い扱いをされている点で、実際にはすごく重要なのに、ほんの数文で触れられているだけなんだ。<br>[1] https://www.cambridge.org/core/books/compact-data-structures...<br>[2] https://vigna.di.unimi.it/ftp/papers/QuasiSuccinctIndices.pd..." userName="senderista" createdAt="2025-03-07T00:20:02" color="">}}

{{<matomeQuote body="面白いことに、最近独自に”balanced parentheses tree”を思いついて、その柔軟性と速度に満足してたんだ。シンプルで一般的な感じがして、名前を知ってなかったことに驚いてる。" userName="adonovan" createdAt="2025-03-07T20:50:20" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
