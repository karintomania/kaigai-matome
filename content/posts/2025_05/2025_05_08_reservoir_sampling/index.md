+++
date = '2025-05-08T00:00:00'
months = '2025/05'
draft = false
title = 'ストリームデータから効率的にランダム抽出 Reservoir Samplingとは'
tags = ["アルゴリズム", "サンプリング", "ストリーム処理", "データ分析", "プログラミング"]
featureimage = 'thumbnails/purple7.jpg'
+++

> ストリームデータから効率的にランダム抽出 Reservoir Samplingとは

引用元：[https://news.ycombinator.com/item?id=43928315](https://news.ycombinator.com/item?id=43928315)




{{<matomeQuote body="子供の頃、田舎に住んでたんだ。親父の友達が仕事で山にいるptarmiganの数を毎年測っててね。決まったルートを歩いて、鳥を飛ばせて数えるやり方だったらしい。合計数を役所に提出すると、それが個体数推定に使われるんだ。ある年、友達が数えなきゃいけない日に海外に行っちゃって、代わりに別の友達に頼んだんだけど、その友達はやり方を忘れちゃって、適当な数を提出したんだ。そしたら次の年、地元新聞の一面トップに”ptarmiganの個体数が過去最高に増加”って出てね。なんで大ニュースになったかって言うと、この推定数が狩猟の割当量を決めるのに使われてたからなんだ。友達はそこまで考えてなかったみたい。適当な統計はマジやばいね。" userName="magicalhippo" createdAt="2025/05/08 17:53:29" color="#45d325">}}




{{<matomeQuote body="統計なんて信用するな。昔、でかいスキーリゾートの予約システム作ってたんだ。納期遅れて夜中も作業してて、最後に終わらせなきゃいけなかったのが、政府が発表する宿泊者数とかの公式統計レポートだった。ぶっちゃけ、その年の統計は現実とほとんど関係なかったよ。締め切りに間に合わせるために適当に数字作ったんだ。" userName="codr7" createdAt="2025/05/09 00:00:31" color="#785bff">}}




{{<matomeQuote body="君は統計と予測をごっちゃにしてるね。統計は信頼できるし、そうすべきだよ。ただ、それが未来の行動とどう関連するかは、決して信頼しちゃいけないんだ。" userName="amw-zero" createdAt="2025/05/09 13:03:44" color="">}}




{{<matomeQuote body="＞ 統計は信頼できるし、そうすべきだよ。ただ、それが未来の行動とどう関連するかは、決して信頼しちゃいけないんだ。<br>俺が今まで会った人の99%は、統計と予測を同じ意味だと思ってるよ。特に政治的な意味合いでそう使われることが多いからね。" userName="Scrutiny6707" createdAt="2025/05/10 19:45:36" color="">}}




{{<matomeQuote body="前の投稿者は、測定したりサンプリングしたりした統計じゃなくて、作り上げられた統計の話をしてると思うよ。そういう統計は、まあ当たり前だけど、あんまり信頼できないよね。" userName="swiftcoder" createdAt="2025/05/09 13:34:23" color="">}}




{{<matomeQuote body="まあそうだね、でもこのケースではその嘘が政府の公式観光統計レポートとして発表されちゃったわけだし、そういうことが起こったのはこれが最初でも最後でもないだろうね、きっと。" userName="codr7" createdAt="2025/05/09 22:27:10" color="">}}




{{<matomeQuote body="とても良い投稿だね！Reservoir Samplingの別のアプローチとして、次に置き換える項目までのスキップ数を幾何分布から生成する方法があるよ。これはスキップが高速にできる場合に有効で、O(k * log (n/k))程度の処理で済むんだ。個人的には、項目にランダムな優先度を付けて上位k個を保持するバージョンが好きだな。関連する問題で、未知の長さのストリームからO(n)時間O(k)空間で上位k個を選ぶアルゴリズムもある。例えば2k容量のバッファに貯めて、一杯になったらQuickselectなどで上位k個に絞る方法だよ。関連トピックとして rendezvous hashing や alias method も面白いから見てみるといいかも。" userName="eru" createdAt="2025/05/08 22:03:49" color="#785bff">}}




{{<matomeQuote body="実は、alias methodの投稿、この前読んだばっかりで、マジで感動したんだ。それについて自分でも投稿書いてみたいなって思ってる。あのリンクが言ってないことを付け加えることはできないだろうけど、もっと分かりやすくできると思うんだよね。" userName="samwho" createdAt="2025/05/08 22:08:09" color="">}}




{{<matomeQuote body="ウェブサイトのデザインめっちゃ好き！インタラクティブなとこも、観客としての犬キャラも、フォントとか色とかレイアウトまで全部最高だよ。記事もマジで良かった！" userName="malwrar" createdAt="2025/05/08 17:58:05" color="">}}




{{<matomeQuote body="マジありがとう！トランプの犬たちはこの投稿のために特別にcommissionedしてもらったんだよ。全部wonderfulなandycarolan.comさんが作ってくれたんだ。色のpaletteはdavidmathlogic.com/colorblind/から学んだWong paletteなんだ。あ、そうそう、犬たちpetできるよ :)" userName="samwho" createdAt="2025/05/08 18:02:39" color="#ff5733">}}




{{<matomeQuote body="この方法ってcomposeするの？例えばサービスとログコレクターの両方でreservoir samplingを実装した場合、ログコレクターだけが実装した場合と同じ結果になるの？" userName="fiddlerwoaroof" createdAt="2025/05/08 18:58:29" color="#ff33a1">}}




{{<matomeQuote body="うん。" userName="NoahZuniga" createdAt="2025/05/08 20:56:02" color="">}}




{{<matomeQuote body="もし興味あったら、他にも協力できそうなトピックがあるよ。sorting algorithmsの視覚化や、heapのsimulate、soft heapsの実装、そしてalias methodについての記事とかね。以前読んだalias methodの記事がすごかったから、もっと分かりやすく書くのに挑戦したいと思ってるんだ。確か、分布の変更を効率的に扱う方法には触れてなかった気がするな。" userName="eru" createdAt="2025/05/08 23:31:33" color="#785bff">}}




{{<matomeQuote body="これまで考えたことなかったけど、うまくいくって知れてcoolだね！" userName="samwho" createdAt="2025/05/08 21:14:51" color="">}}




{{<matomeQuote body="ただ、サンプリングするintervalが同じ場合だけstrictly trueだと思うな。Reservoir samplingは別の考え方もできるよ。各itemにpriorityをランダムに割り当てて、priorityが高いtop k個を残すって考えるんだ。こう考えると、アルゴリズムの組み合わせがcomposeするかどうか、top kを選べてるかで分かりやすいよ。" userName="eru" createdAt="2025/05/08 22:07:51" color="#785bff">}}




{{<matomeQuote body="sorting algosを視覚化できるツール作ったよ https://xosh.org/VisualizingSorts/sorting.html 自分のalgoも追加できるから、よかったらどうぞ。" userName="smusamashah" createdAt="2025/05/09 16:50:20" color="">}}




{{<matomeQuote body="truly fairなsampleからtruly fairなsampleを得る方法って、必然的にtruly fairなsampleになるはずだと思うんだ。どう考えてもそうじゃない状況は想像できないな。" userName="BobaFloutist" createdAt="2025/05/09 18:19:55" color="">}}




{{<matomeQuote body="Alias tablesっていいね、あまり知られてないけど。昔、weighted distributionからsamplingするインタビューで、誰もこれを答えなかったんだ。ブログの解説は分かりやすいけど、別の説明の仕方もあってさ。bar chartにdartを投げるイメージから始めて、rectangleに収まるようにbarをchop upするんだ。greedy algorithmの証明もそんなに難しくないよ。" userName="dan-robertson" createdAt="2025/05/09 09:40:20" color="#ff33a1">}}




{{<matomeQuote body="細かい工夫がいっぱいで、全体がすごく良くなってるね。Doe’s bandanaもクールだし、犬たちも君の面倒見の良さにきっと感謝してるよ！唯一の提案は、ログを遅くしたり＾Sで止めたりする方法かな。面白いメッセージがあっという間に流れちゃって、Reservoir Sampling使ってもちらっとしか見えなかったんだよね。「もっと絵文字が必要」ってことだね！" userName="DonHopkins" createdAt="2025/05/09 07:33:38" color="">}}




{{<matomeQuote body="グラフィック最高！でもReservoir Samplingの統計的な妥当性が不明。トラフィック少ない時間のログが過多になり、バーストトラフィックは過小評価されるのでは？コスト最適化やキャパシティ計画に不適切？Reservoir Samplingの良い使い道や、データで何ができるか知りたい。" userName="nightpool" createdAt="2025/05/08 20:03:36" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ良い投稿！ありがとう。数学とか統計ってこうやって教えるべきだよね。Distill.pubを思い出したよ。" userName="TheAlchemist" createdAt="2025/05/08 21:39:54" color="">}}




{{<matomeQuote body="持ってるカードを緑、捨てたやつを赤にするのは簡単だったのにね。色覚異常の人にも優しい配色にしてくれてありがとう！私deuteranopiaだから助かるよ。" userName="lol768" createdAt="2025/05/08 19:28:15" color="">}}




{{<matomeQuote body="2つ目のやり方の方が、特定のケースに合わせやすそうだね。ビジネスルールでメッセージの優先度を変えれば、大事なイベントがログに残りやすくなるかも。" userName="fiddlerwoaroof" createdAt="2025/05/09 01:54:56" color="#ff33a1">}}




{{<matomeQuote body="Doe’s bandanaは連帯と支持のつもりなんだ。気づいてくれて嬉しいよ！ログに一時停止ボタンも考えたけど、露骨すぎるし記事の内容から逸れるかなって。まあログ自体も邪魔だけどね、「reticulating splines」みたいにしたかったんだ。メッセージの作り方はここにあるよ：https：／／github．com／samwho／visualisations／blob／main／reservoir…" userName="samwho" createdAt="2025/05/09 12:51:47" color="">}}




{{<matomeQuote body="ちょっと前に、もっと分かりやすい実装作ってみたんだよね。これ→https://github.com/tmoertel/practice/blob/master/libraries%2...<br>整数のウェイトに限定したのは、アルゴリズムがちゃんと要求された分布を実装してるか検証しやすくするためなんだ。（同じディレクトリにあるテストファイル見てみて）" userName="tmoertel" createdAt="2025/05/09 02:57:15" color="">}}




{{<matomeQuote body="これ、正直良い面接問題じゃない気がするな。Alias method知ってるかだけ問われてるようなもんじゃない？<br>てか、ちょっと関連した質問なんだけどさ、めっちゃ長いテキストファイルがあったとして、そこからランダムに1行選ぶのってどうやる？全行が全く同じ確率で選ばれるようにね。理想は、ファイルサイズ分の前処理時間をかけずにやりたいんだけど。（これ自体が良い面接問題だとは思わないけど、面白い質問ではあるよね。）<br>一つの方法としては、ランダムに文字を選んでいって、たまたま改行に当たったところをその行の終わりとするってやり方かな。" userName="eru" createdAt="2025/05/09 11:23:19" color="#ff5c5c">}}




{{<matomeQuote body="その質問はもう使われてないんだよね（だから、そんなに良い質問じゃなかったって意見には反対しないよ）。Alias tables知ってることは期待されてなくて、それよりもバイナリサーチとか確率の理解があるかを見るのが目的なんだ。<br>君が提案してるMonte Carlo methodは、短い行が多いならいいけど、長い行が1つしかないケースだと失敗するよ。ランダムなバイトを読むコストはディスクからブロックを読むことだから、メモリ上でスキャンする方が速いだろうし。" userName="dan-robertson" createdAt="2025/05/09 17:33:41" color="#45d325">}}




{{<matomeQuote body="よくできてるね、アニメーションと説明がすごく好きだな。特にグラフのやつとか、「100回シャッフル」をクリックできるところが良いね。<br>ちょっとだけ戸惑ったのは、最初に3枚選ぶ話から1枚だけ選ぶ話に切り替わったところかな。「今から1枚だけ選ぶ簡略化したケースの話だよ」っていう見出しがほぼ必要だった気がするんだよね。" userName="rdtsc" createdAt="2025/05/08 18:30:20" color="">}}




{{<matomeQuote body="素晴らしい記事と説明だね。<br>でも実践的なレベルで言うと、ログ収集にはこれが最後尾に来るかな。スパイク時には何かを捨てる必要はあるんだけど、何を捨てるかについて”公平”である必要はないと思うんだ。<br>公平性っていうのは、他のことを試した最後の手段として使うべきだと思うんだよね。例えば、低い優先度のログを捨てるとか、一連のログを一つのアクティビティとして扱って開始と終了だけ記録するとか、似たメッセージを集約して要約するとか。" userName="justanotheratom" createdAt="2025/05/08 20:12:54" color="#38d3d3">}}




{{<matomeQuote body="最近、observabilityの沼にハマっててさ、君が説明してるのは多分head samplingとtail samplingのミックスだと思うよ：https://docs.honeycomb.io/manage-data-volume/sample/" userName="manmal" createdAt="2025/05/08 20:25:37" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="記事で触れられてたけどさ，低優先度のログを全部捨てるんじゃなくて，予算内で制限したいんだよね．あと，集めるログの総数も大元の予算で抑えたい．Reservoir samplingならそれ全部できるんだよ．" userName="ted_dunning" createdAt="2025/05/08 21:07:59" color="#45d325">}}




{{<matomeQuote body="できるなら一部のエントリは捨てるかまとめるべきだけど，それでも重要なエントリが多くなりすぎて，詰まるよりはマシだからランダムに間引く必要があるんだよね．公平なReservoir samplingも，例えば内容が特に面白かったら残す確率を上げるとか，制御された形で不公平にできるよ．これは最後の手段として，もっと原則に基づかないバイアス付きのランダム（または非ランダム）選択アルゴリズムと競合するね．" userName="HelloNurse" createdAt="2025/05/09 12:35:15" color="#38d3d3">}}




{{<matomeQuote body="この記事，すごく分かりやすくて図解もいいね！<br>もっと進んだ話だと，レコードごとに試すんじゃなくて，スキップするレコード数を計算するアルゴリズムもあるらしいよ．ここに良い解説があるから見てみて： https://richardstartin.github.io/posts/reservoir-sampling" userName="sadiq" createdAt="2025/05/08 17:47:08" color="#785bff">}}




{{<matomeQuote body="これで思い出したんだけど，連合軍がGerman tanksをシリアル番号で数えたアルゴリズムについてもっと考えなきゃだ．現場の人たちは実際の5倍くらい生産されてるって見積もってたのに，シリアル番号のトリックは90%以上の精度だったらしいよ．" userName="hinkley" createdAt="2025/05/08 18:51:19" color="">}}




{{<matomeQuote body="https://en.wikipedia.org/wiki/German_tank_problem" userName="dekhn" createdAt="2025/05/08 19:13:23" color="">}}




{{<matomeQuote body="これはHyperLogLogがあんまり適切じゃない場所でも役に立ちそうだね．YouTubeのおすすめで数週間前にこの話のNumberphileの動画が出てきたんだ：https://youtube.com/watch?v=WLCwMRJBhuI" userName="hinkley" createdAt="2025/05/08 19:54:18" color="#38d3d3">}}




{{<matomeQuote body="これの面白い帰結として，もしサンプルが1つしかなかったら，そのサンプルが中央値を示すことになるんだ．つまり，シリアル番号Nのアイテムを1つ見たら，だいたい2N個生産されたと推測できるってこと．" userName="skykooler" createdAt="2025/05/09 03:49:25" color="">}}




{{<matomeQuote body="素晴らしい記事で，説明もいいね！<br>これはたぶん，最初にこれを解説したAlgorithm Rっていう論文，Vitterさんのこれだと思うな： https://www.cs.umd.edu/~samir/498/vitter.pdf" userName="stygiansonic" createdAt="2025/05/08 17:43:44" color="#ff5733">}}




{{<matomeQuote body="あの論文によると”Algorithm R（Alan WatermanによるReservoirアルゴリズム）”って書いてるけど、出典が載ってないんだって。<br>Vitterの前の論文（URLは省略）はKnuth TAOCP vol 2を出典にしてる。<br>Knuthには出典がないみたいだね。" userName="fanf2" createdAt="2025/05/08 21:47:25" color="#ff5733">}}




{{<matomeQuote body="KnuthもTAOCP vol 2の144ページで”Algorithm RはAlan G. Watermanによるもの”って言ってるよ。<br>Algorithm R（Reservoir sampling）のすぐ下だね。<br>WatermanがKnuthへの手紙で、Knuthの第一版の”reservoir sampling”の改良として伝えたらしい。<br>結局、Algorithm Rは1975年までにKnuthとWatermanに知られてて、1981年のTAOCP volume 2第二版で広まったみたいだね。" userName="svat" createdAt="2025/05/09 02:18:50" color="#45d325">}}




{{<matomeQuote body="Weighted Reservoir Sampling（WRS）はReSTIR（リアルタイムレイトレーシング）で使われてるよ。<br>ReSTIRは確率的な光輸送推定器なんだ。<br>レイトレーシングは光の経路を積分するんだけど、解析的に解けないからモンテカルロ法で確率的に解くんだ。<br>基本的な方法から、IS, MIS, SIR, RIS, WRSのような高度な手法が開発されて、RISとWRSを組み合わせたのがReSTIRだよ。（詳細記事へのリンクは省略）" userName="Lichtso" createdAt="2025/05/09 10:37:16" color="#ff5c5c">}}




{{<matomeQuote body="データサイエンスの視点だと、元のデータ量もすごく価値ある情報なんだ。<br>だから、各データポイントが元の何個分を表してるか記録しておくのが良いよ。<br>例えばサンプリング率が10%なら、10って値をフィールドに入れとくとか。<br>そうすれば、元のカウント、合計、平均みたいな統計量を再構築して推定できるからね。" userName="tanvach" createdAt="2025/05/08 22:11:04" color="#ff5c5c">}}




{{<matomeQuote body="すごくよくまとまってるね。<br>重み付きバージョンに興味があるなら、ここでちょっと説明しようとしてみたよ（リンクは省略）。<br>分散バージョンもあって、map reduceで簡単にできるんだ。<br>あるいはすごくシンプルなアルゴリズムとして、ストリームの各項目にランダムなペアを生成して、その乱数でソートして上位N個を保持する方法もあるよ。" userName="gregable" createdAt="2025/05/08 21:15:05" color="#45d325">}}




{{<matomeQuote body="重み付きバージョンについて2点注意があるよ。<br>まず、POW(RANDOM(), 1.0 / weight)でランク付けして上位N個を選ぶ素直な実装は、weightがすごく大きいか小さい場合に安定性の問題があるんだ。<br>次に、結果のサンプルは元の母集団と同じ期待値の分布にはならないんだ。<br>特に全体のweightが少数の要素に集中してる場合は顕著だよ。<br>でも多くの場合、そういうサンプルでも実用的な近似としては使えるんだ。（詳細はこちらのブログで：リンクは省略）" userName="tmoertel" createdAt="2025/05/09 01:44:13" color="#785bff">}}




{{<matomeQuote body="すごく分かりやすくて良い記事だね。<br>$WORKでは似た方法で、流れるストリームからパーセンタイルを推定する問題を解決してるよ。<br>データは膨大だけど準定常的なんだ。<br>splay treeを使うと、償却計算量O(1)でパーセンタイル推定ができるよ。<br>置換確率を変えて、”データ半減期”みたいに最近のデータに重みをつけることもできるんだ。" userName="hansvm" createdAt="2025/05/08 23:59:50" color="#ff5c5c">}}




{{<matomeQuote body="テレメトリ収集（traces, logs, metrics）におけるトレードオフもよく示してる素晴らしい記事だね。<br>ここはたくさんの開発者が知らないか、当たり前だと思ってるような、すごく大変な領域なんだ。" userName="phillipcarter" createdAt="2025/05/08 17:45:54" color="">}}




{{<matomeQuote body="前に書こうと思ってたことなんだけど、サンプリングがグラフの線の形にどう影響するか、ってことなんだ。<br>同じ元のデータを違うサンプリング戦略で描画すると、結果のグラフが戦略によって全然違って見えるんだよ。<br>これはオブザーバビリティツールを見る時に、多くの人があまり考えてない見過ごされがちなことだと思うな。" userName="samwho" createdAt="2025/05/08 21:03:32" color="">}}




{{<matomeQuote body="うん、これchallengingだよね。俺はそういうtoolの仕事してるんだけど、countsをre-weightするのが一般的で正しい動きなんだけどさ、samplingをtuneするためにexact countsを探してる時とか、MoEが特定のcalculationやgranularity of dataに対してbadな時とか、それなりのsubtletiesがあるんだよね。Observabilityってcomputing分野で簡単にunderestimatedされてるの一つだよ。<br>" userName="phillipcarter" createdAt="2025/05/08 23:12:06" color="">}}




{{<matomeQuote body="Sampling theoremね。なんかみんなsampling mathematicsってmodemsとかRFにしかapplyしないと思ってんのがinterestingだよね。aliasingみたいなThingsはObservability/telemetryにはabsolutely matterするんだよ。<br>" userName="YZF" createdAt="2025/05/09 03:55:32" color="">}}




{{<matomeQuote body="FWIWだけど、GNU coreutils’ shufはlarger inputsに対してreservoir samplingを使ってbounded memory operationを実現してるよ。<br>" userName="pixelbeat" createdAt="2025/05/08 19:01:23" color="#38d3d3">}}




{{<matomeQuote body="昔のgoogle interviewでこれが出てきたの覚えてるわ。interviewは俺がalgorithmを知らなくてfirst principlesからsolveしようとflounder aboutするのをreally expectingしてたんだよね。answerを知ってたからjust shortcut thingsできてfunだったな、あの時は。<br>" userName="wood_spirit" createdAt="2025/05/08 17:34:33" color="">}}




{{<matomeQuote body="Yeah、これ俺もgoogle interview questionだったわ。algorithm知らなくてfloundered around trying to solve the problem。1/nとk/n selection strategyはcame up withしたけどstill get the job lol。I think the guy who interviewed me was just killing time until lunch。<br>I like the visualizations in this article、really good explanation。<br>" userName="owyn" createdAt="2025/05/08 17:46:18" color="">}}




{{<matomeQuote body="俺はそこ(google)でhiredされた後までalgorithmのこと知らなかったんだよね。It’s actually really useful in a number of contexts、but my favoriteはlexicographically sorted string keysをmappingするためのoptimal split points for shardingにusing itした時だったな。Often you will have a sorted table、but the underlying distribution of keys isn’t known、so uniform shardingはoften cause imbalances where some mappers end up doing far more work than others。I don’t know if there is a convenient open source class to do this。<br>" userName="dekhn" createdAt="2025/05/08 18:15:27" color="#ff5c5c">}}




{{<matomeQuote body="Interesting idea、hadn’t that about that way to apply it。I knew it from before my interviewからa turbo pascal program I had seen that sampled dat tape backups of patient records from a hospital system。These samples were used for studies。That was a textbook example of it’s utility。<br>" userName="wood_spirit" createdAt="2025/05/08 18:52:38" color="#ff5c5c">}}




{{<matomeQuote body="I guess the question in my mindは：would you expect a smart person who did not previously know this problem (or really much random sampling at all) to come up with the algorithm on the fly in an interview？ And if the person had seen it before and memorized the answer、does that provide any signal of their ability to code？<br>" userName="dekhn" createdAt="2025/05/08 19:15:33" color="">}}




{{<matomeQuote body="My gut instinctはno。I certainly don’t think I’d be able to derive this algorithm from first principles in a 60 minute whiteboarding interview、and I worked at Google for 4 years。<br>" userName="samwho" createdAt="2025/05/08 21:07:13" color="">}}




{{<matomeQuote body="面接では分析的思考力を見られてたんだよ。合格するには常識的であればよかった。Reservoir Samplingを考え出せなくても、面接に落ちたわけじゃないからね！" userName="wood_spirit" createdAt="2025/05/09 04:17:32" color="">}}




{{<matomeQuote body="いやいや、最初の選択とサンプル受け入れ基準を正確に理解してないと、その質問では不合格になっちゃうよ。" userName="dekhn" createdAt="2025/05/09 16:16:58" color="">}}




{{<matomeQuote body="これで僕も面接突破したよ。最初は k/n って思いついたんだけど、今は [0, 1] の範囲で乱数生成して、k個の一番大きいやつをキープするのがいいかなって思う。" userName="petters" createdAt="2025/05/09 02:53:02" color="">}}




{{<matomeQuote body="いいね！ これ Bartosz Ciechanowski の記事とほぼ同じレベルだよ - https://ciechanow.ski/" userName="tuzemec" createdAt="2025/05/09 13:43:42" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Bartosz は僕にとって大きなインスピレーションなんだ。彼が自分の記事でやってることが、僕のでたくさん真似されてるって気づくだろうね。僕の仕事と彼のを比較してくれるのは、最高の褒め言葉かもしれない。ありがとう。" userName="samwho" createdAt="2025/05/09 14:41:43" color="">}}




{{<matomeQuote body="すごくクールだね - ログ収集の token-bucket rate limiting との対比を考えさせられたよ。面白い議論も見つけたんだ https://github.com/open-telemetry/opentelemetry-specificatio..." userName="tomsonj" createdAt="2025/05/09 14:19:14" color="#38d3d3">}}




{{<matomeQuote body="あの有名な Reservoir Sampling の4分解説だよ: https://www.youtube.com/watch?v=A1iwzSew5QY" userName="vismit2000" createdAt="2025/05/09 09:10:58" color="#785bff">}}




{{<matomeQuote body="これ、就職活動で出されるコーディングクイズの一つで知ったんだ。問題を復習してたら、これと全く同じのがあったんだよね。答えを読むまでどうやるか全然わからなかったけど、読んだら当たり前だって思ったよ。" userName="lordnacho" createdAt="2025/05/08 21:35:13" color="">}}




{{<matomeQuote body="Dropwizard Metrics とか、色々なところで使われてるよ。https://metrics.dropwizard.io/4.2.0/" userName="jbellis" createdAt="2025/05/08 23:06:39" color="#ff33a1">}}




{{<matomeQuote body="Monte Hall problem にちょっと似てるなって思ったよ。条件付きの情報に基づいて確率を調整すると、直感に反する結果になることがあるんだよね。" userName="WhitneyLand" createdAt="2025/05/09 13:13:13" color="">}}




{{<matomeQuote body="絵も文章も素晴らしいね。本当に興味深い記事だったよ。" userName="foxbee" createdAt="2025/05/08 18:45:45" color="#ff5733">}}




{{<matomeQuote body="この記事、すごい良いね！" userName="t55" createdAt="2025/05/08 17:43:52" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
