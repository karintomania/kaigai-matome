+++
date = '2025-08-20T00:00:00'
months = '2025/08'
draft = false
title = '球面らせんに興味を持ったら、この可視化が生まれた！'
tags = ["数学", "幾何学", "可視化", "プログラミング", "3D"]
featureimage = 'thumbnails/orange1.jpg'
+++

> 球面らせんに興味を持ったら、この可視化が生まれた！

引用元：[https://news.ycombinator.com/item?id=44962066](https://news.ycombinator.com/item?id=44962066)




{{<matomeQuote body="球面らせんに沿って物を配置する方法を学んで、パラメトリック方程式を再学習したんだ。その学びを可視化するためにこれを作ったよ。見て感想を教えてね！<br>https://visualrambling.space/moving-objects-in-3d/" userName="damarberlari" createdAt="2025/08/20 14:02:47" color="#38d3d3">}}




{{<matomeQuote body="航海では常に一定の方位を保つのが楽だから、ロクソドローム曲線（航程線）が昔は超重要だったんだ。メルカトル図法も方位計算を簡単にしたよね。<br>https://en.m.wikipedia.org/wiki/Rhumb_line<br>https://en.m.wikipedia.org/wiki/Mercator_projection<br>この形状は数学的に奥深くて、横から見ると対数螺旋や波束にも見えるし、Erdosも研究してたんだって！今日はHNも球面幾何学デーみたいだね。<br>https://news.ycombinator.com/item?id=44956297<br>https://news.ycombinator.com/item?id=44939456<br>https://news.ycombinator.com/item?id=44938622<br>https://pubs.aip.org/aapt/ajp/article-abstract/68/10/888/105..." userName="srean" createdAt="2025/08/20 14:20:17" color="#ff33a1">}}




{{<matomeQuote body="君の投稿に触発されて、僕の2022年のプロジェクトを投稿してみたよ！今日のトレンドにぴったりかな。<br>https://observablehq.com/@jrus/spheredisksample<br>https://news.ycombinator.com/item?id=44963521<br>これも面白いかもね！<br>https://observablehq.com/@jrus/sphere-resample" userName="jacobolus" createdAt="2025/08/20 16:49:18" color="#45d325">}}




{{<matomeQuote body="10代の頃、正距円筒図法みたいなのを描こうとしてたんだよね。正方形の窓の反射を球に描いたり、球をチェック柄で覆ったりしてた。これが見れて最高だよ、ありがとう！" userName="egwor" createdAt="2025/08/20 21:07:33" color="">}}




{{<matomeQuote body="正距円筒図法っていうのは、緯度と経度を長方形にプロットするってことだよ。君が言ってるのは、僕が球に投影した斜めグリッドのことかな？それには名前がないと思うな。" userName="jacobolus" createdAt="2025/08/21 02:55:20" color="">}}




{{<matomeQuote body="会えて嬉しいよ。幾何学、多変数解析、回転についての君のコメントを楽しみにしてるね。追記：グラフィックも素晴らしいよ。他の作品もHNに投稿すべきだね。" userName="srean" createdAt="2025/08/20 16:57:28" color="#785bff">}}




{{<matomeQuote body="OPのらせん曲線はロクソドロームじゃないよ。表面で等間隔に線があるけど、ロクソドロームは定義上、子午線と常に同じ角度で交わるから、極に近づくほど密になるんだ。数式で見ても、d(λ)/d(φ)が定数になるから、φに依存するロクソドロームの条件を満たさないんだよ。 varying intersection anglesについてはこれを見て！<br>https://beta.dwitter.net/d/34223" userName="mxfh" createdAt="2025/08/20 23:25:01" color="#ff33a1">}}




{{<matomeQuote body="まさにその通り。これはよく知られた球面螺旋やSeiffert螺旋の一つだよ。" userName="srean" createdAt="2025/08/21 07:45:55" color="">}}




{{<matomeQuote body="ロクソドロームなどの議論が盛り上がった、この投稿も忘れないでね！<br>https://news.ycombinator.com/item?id=44962767" userName="taco_emoji" createdAt="2025/08/20 20:48:20" color="#ff5733">}}




{{<matomeQuote body="これは見逃してた！ありがとう。本当に今日は球面幾何学の日だね。" userName="srean" createdAt="2025/08/20 21:02:43" color="">}}




{{<matomeQuote body="Erdosの言葉を借りるなら、球面上を一定速度で動き、固定された直径に対して一定の角速度を保つと、パスはヤコビ楕円関数で記述されるってことらしいよ。なんか難しそうだね！" userName="cwmoore" createdAt="2025/08/21 00:37:57" color="">}}




{{<matomeQuote body="マジかよErdos。どんだけ多作だったんだ。死んでからも4年間も論文出してたって！？すげぇ！" userName="patcon" createdAt="2025/08/21 05:06:28" color="">}}




{{<matomeQuote body="可視化は最高！だけど、どうやって一定速度で動かしてるのかが知りたかったな。始めと終わりでめっちゃ遅くなるじゃん？これ、一定速度にしたり、Easing関数を適用したりできないのかな？多分、数式を微分して、ピタゴラスの定理で再パラメータ化する感じなのかなぁ？数学苦手だから自信ないけど。" userName="sfink" createdAt="2025/08/20 15:17:26" color="#785bff">}}




{{<matomeQuote body="一定速度で動かすには「Euclidean parameterization」ってのが必要だよ。これは通常、閉じた形で解けないから、数値的に計算するしかないんだ。実際には、一度計算して結果を保存しちゃって、等間隔の点を持つPolylineとして曲線近似するのが一般的な方法だよ。" userName="Sharlin" createdAt="2025/08/20 15:59:15" color="#45d325">}}




{{<matomeQuote body="パスに沿ってdsを変えるこのパターンは、Control Theoryでよく使われるんだよ。Motorの既知のAcceleration Profileに基づいてds/dtの比率を変えて、Jerkを最小限に抑え、目的地に最速で到達させたりするんだ。これは一般的に「Motion Profiling」って呼ばれてるよ。詳細はここ見てね：https://www.motioncontroltips.com/what-is-a-motion-profile/" userName="Kennnan" createdAt="2025/08/20 16:53:08" color="#45d325">}}




{{<matomeQuote body="君が求めてるのは「Arc Length Parameterization」ってやつだよ。基本的には、曲線をそのArc Length Functionの逆関数と合成する必要があるんだ。いくつかの特殊な曲線を除けば、閉形式の解は存在しないよ。" userName="meindnoch" createdAt="2025/08/20 18:20:11" color="#ff5733">}}




{{<matomeQuote body="tを遅くするって直感は正しいよ。なんでかって言うと、Governing Functionsがtに対してAngular Velocityを維持してるけど、Radiusもtに対してScalingされてるからなんだ。Archimedean Spiralみたいなもんかな。だから、VelocityをParameterizeして一定にすれば、もっと良くなるよ。簡単なPath Following Approximationなら、Z軸に沿って繰り返しPathとTangent Targetsを与えて、VelocityにConstraintをかけるだけでもいいかもね。" userName="chaboud" createdAt="2025/08/20 16:05:49" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！現状はtが一定速度で進むようにしてるから、Cubeは同じ時間で一周しちゃうんだ。だから、Loopの距離が短い始めと終わりで遅く見えるんだよね。正直に言うと、実装がシンプルだからそうしたんだ。でも、みんなが解決策をいくつか教えてくれたから、試してみるつもりだよ！" userName="damarberlari" createdAt="2025/08/21 02:44:41" color="#ff33a1">}}




{{<matomeQuote body="”それが実際にはChaosじゃない”って部分だけど、ChaosってDeterministicなMathematical Functionsから生まれるものなんだよ。もしかして筆者は「Random」とか「Non-deterministic」って言いたかったんじゃないかな？" userName="addaon" createdAt="2025/08/20 20:01:02" color="">}}




{{<matomeQuote body="おいおい、これはマジで過小評価されてる細かい指摘だぜ。HNの読者なら、この区別には興味を持つべきだよな。数学的にカオスってのは、初期条件に対する超敏感さのことで、決定論的なシステムとちゃんと一直線上にあるんだ。結果はランダムに見えるけど、数学的にも概念的にも本当のランダムネスとは別物なんだよ。" userName="skalidindi3" createdAt="2025/08/20 20:42:08" color="#38d3d3">}}




{{<matomeQuote body="‘実際の’とか‘真の’ランダムネスって、深掘りするとマジで沼なんだよな。<br>https://en.wikipedia.org/wiki/Randomness<br>「ランダム」を何で定義するかで全然変わってくる。数学的な意味で、真のランダムネスがあるって証明はまだないんだ。" userName="altruios" createdAt="2025/08/20 21:53:11" color="#38d3d3">}}




{{<matomeQuote body="ランダムネスを測るための洗練されたテストはたくさんあるんだ。プラトン的な意味で絶対的なランダムネスを証明するのは無理だけど、アプリケーションで必要とされるいろんな特性について、ソースを評価することは確実にできるよ。この例（球面らせん）では、フーリエ変換で調和成分が特定できるから、形式的な意味でのカオスでもランダムでもないんだ。" userName="TheOtherHobbes" createdAt="2025/08/20 22:16:06" color="#ff33a1">}}




{{<matomeQuote body="俺は「ランダム」って言葉を、初期条件が未知（または知り得ない）なカオス（初期条件に極端に敏感な状態）って意味で使ってるよ。" userName="lotyrin" createdAt="2025/08/20 22:07:05" color="">}}




{{<matomeQuote body="その使い方は理解できるし、君がその区別をわかってるのは伝わるよ。でも、形式的には違う概念だから、場合によっては混乱を招くかもしれないね。システムのカオス性と、俺たちが統治法則や初期条件が不明で、シミュレーションが困難なために確率論的なツール（つまりランダムネス）を使って不確実性を記述するのとは別の話なんだ。<br>これ、なんで重要かっていうと、「二重倒立振子がランダムに振る舞う」なんて言ったら、理論上サイコロを振らずにシミュレーションすらできないってことになっちゃうから。でも、誰かが「すごく良い」精度で初期位置と速度を教えてくれて、5秒後の状態を予測しろって言われても、かなり広がった確率密度関数を扱うことになるのは、誰もが認めるところだよね。" userName="dcanelhas" createdAt="2025/08/21 09:35:50" color="#45d325">}}




{{<matomeQuote body="カオスが決定論的な数学関数の創発的特性だっていうのは信じるよ。でも、口語的な定義（今辞書を見てるんだけど）は「完全な無秩序と混乱」とか「偶然が最高潮な状態」とか「複雑な自然系の挙動における固有の予測不可能性」って書いてある。あのパスは、その見た目の定義に合ってるよね。この記事は素人向けに書かれてるんだから、数学者じゃない人が期待するような話し方／書き方をするのは理にかなってると思うな。" userName="latexr" createdAt="2025/08/20 20:55:58" color="#45d325">}}




{{<matomeQuote body="あのパスが「実際にはカオスではない」って言うのは、一般の人の理解とはズレてるよね。その意見の食い違いも説明されてないし（技術的な定義を説明するか、しないか）。<br>俺は、「非決定論的」とか「ランダム」って言葉に置き換えた方が、一般の人にもっとわかりやすいし、上級者にとってもより正確になると思うんだけどな。" userName="addaon" createdAt="2025/08/20 22:24:09" color="#45d325">}}




{{<matomeQuote body="俺は「stochastic」って単語に脳内変換して読み進めたよ。それが記事のメインポイントじゃなかったからね。でも、君の言う通りだ。カオスシステムって、同じ初期条件を与えれば毎回同じ結果が出るんだけど、初期条件をほんの少しだけ変えると、次にどこに行くかなんて保証できなくなっちゃうんだ（以前のシミュレーションから状態を選んだ場合は別だけど、それはズルだよね；）。" userName="dcanelhas" createdAt="2025/08/21 08:55:04" color="#785bff">}}




{{<matomeQuote body="ありがとう。これは主題へのかなり基本的な入門書だけど、数学を学ぶ子供たちには良いね。円の式（x = r cos (t) と y = r sin (t)）みたいな数学の概念にちょっと言及すると、もっと良くなるかも。極座標や線形代数の基礎（ベクトル、変換、3D空間での変換）なんかも、さらに深掘りできるトピックだね。もし筆者がそういうトピックに詳しくないなら、3blue1brownのYouTube動画をおすすめするよ。プログラマー向けというよりは、こっちの方がいいかもね（コードや使ってるライブラリとか、実際に3Dオブジェクトを操作する方法（頂点、伸縮、モーフィングなど）については何も含まれてないから）。" userName="RugnirViking" createdAt="2025/08/20 14:19:08" color="#38d3d3">}}




{{<matomeQuote body="ありがとう。俺にとっての役立つフィードバックは、ナビゲーションが期待を裏切ったことだね。モバイルで見てたんだけどさ。何をすればいいかわからなくて、スクロールしようとしたら、画面をタッチしただけで次のパネルに飛んじゃったから、「ああ、なるほどね」って感じだった。たまたま右側をタッチしたから進んだんだと思って、後でうっかり余計にクリックしちゃった時、戻るために左側をクリックしようとしたんだ（右から左へ読む人とか、上から下へ読む人だと、直感が違うかもしれないけどね）。残念ながら、それもまた次の画面に飛んじゃって、2画面連続で飛ばしちゃったよ。致命的じゃなかったけど、がっかりしたし、ちょっと悲しかったな。もうちょっと微妙なガイドがあれば、曖昧さがなくなって、もっと集中して記事を楽しめたと思うよ。" userName="erikerikson" createdAt="2025/08/20 15:42:53" color="">}}




{{<matomeQuote body="最初のスライドに説明はあるけど、SNSの「カードスタック」みたいにスワイプ操作も追加すると良いかもね（個人的にはタップ派だけど）！" userName="ghostly_s" createdAt="2025/08/20 15:57:46" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="球面らせんのZ軸の動きって、いろんな関数が選べるよね。今の式は見た目はいいけど、螺旋の間隔とか、分割される面積の均一性ってどうなの？この関数は、何か根拠があって選ばれたの、それとも単に見た目が気に入ったから？" userName="pimlottc" createdAt="2025/08/20 14:47:25" color="#45d325">}}




{{<matomeQuote body="この関数は、プログラミングしやすくて見た目も良かったから使われたんじゃないかな。本当は船みたいに3D空間で等速にするのが「正しい」んだろうけど、それはかなり大変だよ。<br>const degrees = Math.PI / 180;<br>const bearing = 5 * degrees; // or it might be 85 degrees? Not sure off the top of my head<br>const k = Math.tan(bearing);<br>const v = 0.001 // some velocity, adjust as needed<br>const phi = (t) =＞ v*t/Math.sqrt(1 + k*k) // the sqrt is not strictly needed<br>const theta = (t) =＞ k*Math.ln(Math.tan(phi(t)/2)) // this is the annoying one haha<br><br>with outputs,<br>const x = (t) =＞ Math.sin(phi(t)) * Math.cos(theta(t))<br>const y = (t) =＞ Math.sin(phi(t)) * Math.sin(theta(t))<br>const z = (t) =＞ Math.cos(phi(t))<br><br>って感じになるけど、ln(tan(phi/2))を使うのは多分やってないと思うな。でも、それはここにあるk d{phi} = sin{phi} d{theta}の式を積分すると出てくるものなんだ。" userName="crdrost" createdAt="2025/08/20 15:34:03" color="#38d3d3">}}




{{<matomeQuote body="zを線形にしても球体にはならないんだよね。球体にするには、他の軸と円になるように調整しないと。この図では`sin(0.02 * πt)` と `cos(0.02 * πt)` の部分がそれをやってるよ。Desmosでインタラクティブなのがあって、自分でz関数を変えて試せるから見てみて！<br>https://www.desmos.com/3d/t66etxi1y8" userName="damarberlari" createdAt="2025/08/21 03:21:51" color="#ff5733">}}




{{<matomeQuote body="パスの速度を一定にする方法もいいかもね。導関数を使って定数に設定したり、t’ = f(t)で再パラメータ化したりしてzを求めればできそう。z = c * tを選ぶのは、パスのパラメータ化と、球面上に描かれるパスの両方に影響するんだよね。" userName="patrickthebold" createdAt="2025/08/20 18:20:53" color="">}}




{{<matomeQuote body="これ最高だね！学生に座標系や幾何学を見せるのにぴったりの教材だよ。探求して、こんな素晴らしいものを見せてくれてありがとう！パラメトリック方程式での幾何学的図形については、Joseph Chomaの「Morphing」って本が超おすすめだよ。<br>https://www.quercusbooks.co.uk/titles/joseph-choma/morphing/..." userName="Duanemclemore" createdAt="2025/08/20 14:25:27" color="#ff5733">}}




{{<matomeQuote body="3D Desmosで方程式をいじれるよ！<br>https://www.desmos.com/3d/t66etxi1y8<br>面白いことに、このらせんのパラメトリック方程式って、球面座標だと線形なんだよね。<br>https://en.wikipedia.org/wiki/List_of_common_coordinate_tran..." userName="mayoff" createdAt="2025/08/20 18:53:02" color="#45d325">}}




{{<matomeQuote body="いいね、ありがとう！" userName="damarberlari" createdAt="2025/08/21 03:50:09" color="">}}




{{<matomeQuote body="アニメーションがすごくスムーズだね！最近、複雑な形を生成しようとしてて「球面上にN個の点を分散させる」って難しい問題にぶつかったんだ。その時、Fibonacci-sphereっていう球体の周りにらせんを作るシンプルなアルゴリズムを見つけたんだよ。点群の分散に使えるらしい。この論文[1]で詳しく説明されてるよ！<br>[1] - https://arxiv.org/pdf/0912.4540" userName="reeece" createdAt="2025/08/20 17:00:58" color="#ff33a1">}}




{{<matomeQuote body="なぜか分からないけど、LinuxとBraveでめちゃくちゃパフォーマンスが悪いんだよね。アクセスするとすぐにCPUが跳ね上がるんだ。32 GiB RAM、Intel i9 w/ 24 coresっていうハイスペックなマシンを使ってるのに。" userName="mustaphah" createdAt="2025/08/20 16:22:16" color="#45d325">}}




{{<matomeQuote body="UbuntuでFirefoxとChromeでも同じような問題に遭遇したよ。Firefoxのパフォーマンスレポートをサッと見たら、ほとんどの時間がフレーム処理みたいな機能に費やされてるみたいだね。時間計算の兆候もある。たぶん、フィンガープリンティングを防ぐための時間解像度の制限で、次のフレーム計算が意図したタイムアウトを待たずにすぐに始まっちゃってるんじゃないかなって推測してるよ。" userName="Anon_troll" createdAt="2025/08/21 12:54:54" color="#ff5c5c">}}




{{<matomeQuote body="正直、Firefoxでは問題なく動くみたい。僕にとってはBraveの問題だね。" userName="mustaphah" createdAt="2025/08/21 12:59:50" color="">}}




{{<matomeQuote body="「なぜか分からない」って言うけど、原因を探そうよ！LinuxとBraveについては調べるつもりだよ。でも「32 GiB RAM、Intel i9 w/ 24 cores」って部分は関係ないと思うな。" userName="jeffbee" createdAt="2025/08/20 16:52:53" color="#38d3d3">}}




{{<matomeQuote body="君は僕の32 GiBに嫉妬してるだけだろ。" userName="mustaphah" createdAt="2025/08/20 16:59:35" color="">}}




{{<matomeQuote body="Mac miniの声で泣いてるよ。" userName="jeffbee" createdAt="2025/08/20 17:14:48" color="">}}




{{<matomeQuote body="なんでそれが関係ないの？" userName="fragmede" createdAt="2025/08/20 17:51:52" color="">}}




{{<matomeQuote body="だって、ちゃんと動くブラウザとソフトウェアの組み合わせなら、今世紀に作られたどのPCでも動くからだよ。僕のひどいAtom Chromebookでも問題なく動いてるしね。" userName="jeffbee" createdAt="2025/08/20 17:56:41" color="#ff5733">}}




{{<matomeQuote body="めっちゃクールで綺麗だけど、ちょっと物足りないな。3Dプロットの基本から最後のすごいパターンへの飛躍が大きすぎると思う。ある程度知ってる人は理解できるけど、背景知識がない人には難しすぎるんじゃないかな。" userName="dgrin91" createdAt="2025/08/20 15:04:52" color="#45d325">}}




{{<matomeQuote body="最後の複雑なプロットは、意図的にああいう形にしたんじゃなくて、前のパラメータ方程式でサインやコサインのパラメータを変えたらああいうのができちゃうよっていう例だと思うな。球体にぴったり合わせようとしなかった結果って感じ。" userName="zamadatix" createdAt="2025/08/20 16:55:25" color="">}}




{{<matomeQuote body="すごくいい感じ！でも、キューブのドレイン/フィル効果をどうやって作ったのか気になるな。" userName="danans" createdAt="2025/08/20 14:46:25" color="">}}




{{<matomeQuote body="これいいね、友達にもシェアするよ。でもTwitterアカウントはもうないし、再登録もしないな。ウェブサイトにRSSかJSONフィードを追加するとか、Mastodonアカウントを作るとか考えてくれない？MastodonはデフォルトでRSSフィードがあるよ。" userName="latexr" createdAt="2025/08/20 15:09:44" color="#ff5733">}}




{{<matomeQuote body="「RSSとかJSONフィードを俺のために作ってくれ」なんて要求は、まるでRichard Stallmanが後で印刷するために自分にウェブページをメールしてるみたいだ。著者がTwitterだろうと何だろうと好きな媒体を使わせろよ。" userName="netdur" createdAt="2025/08/20 18:57:30" color="">}}




{{<matomeQuote body="それはかなり悪意ある解釈だね。低労力で汎用的、無制限で簡単に自動化できる代替手段を追加するっていう丁寧な提案が、著者が今使ってるものに何か影響するわけないだろ。著者はフォローしてほしいって言ってるんだから、人々がどうしたいか知らせるのは良いことだよ。" userName="latexr" createdAt="2025/08/20 23:27:56" color="">}}




{{<matomeQuote body="でも「俺のため」じゃないし、OPからの定期的な更新が欲しいみんなのためだよ。Twitterは、たとえアカウントがあっても、情報を受け取るには最悪の方法だよ。" userName="pavel_lishin" createdAt="2025/08/20 20:08:07" color="">}}




{{<matomeQuote body="めっちゃクールだけど、ちょっと目が混乱するな。ポイントがパスに沿って動く様子を、本来なら向きが変わるべきなのに固定されたキューブで可視化してるからだよ。キューブの中心が動いてるけど、キューブ自体の向きは固定されてるんだね。<br>君のミッションだよ ;-) <br>https://en.wikipedia.org/wiki/Frenet–Serret_formulas" userName="exasperaited" createdAt="2025/08/20 14:53:56" color="#45d325">}}




{{<matomeQuote body="みんながシンプルな数学でオタクになるのが大好き！特に三角関数のアニメーションパワーとか、現代のインタラクティブなものの基礎にある数学を発見するのとか最高だね。何ができるかを知るのと、そのツールのパワーを理解するのとは違うんだ。<br>俺も前に「blob」の作成について似たような記事を書いたよ: <br>https://www.hailpixel.com/articles/generative-art-simple-mat..." userName="hailpixel" createdAt="2025/08/20 15:00:28" color="#ff33a1">}}




{{<matomeQuote body="こんにちは、うわー、素敵な記事だね！シンプルでわかりやすいよ。シェアしてくれてありがとう！間違いなくインスピレーションになったし、次のプロジェクトで使うかも :D" userName="damarberlari" createdAt="2025/08/21 03:29:52" color="">}}




{{<matomeQuote body="内容はいいんだけど、変なディザー効果がマジで頭痛の種だよ！作ったのはすごいし（アイデアが形になるのはいつでも最高だよね！）、これからもクールなものを作り続けてくれることを期待してる。でも、お願いだから使ってるエフェクトはオフにしてほしいな。" userName="coreyp_1" createdAt="2025/08/20 19:47:17" color="">}}




{{<matomeQuote body="ディザリングは素敵だし、OPは絶対触るべきじゃないね。でも、切り替えオプションは用意してくれるかもね、って感じ。" userName="grimgrin" createdAt="2025/08/20 20:54:00" color="">}}




{{<matomeQuote body="個人的には、f(シータ, r) = r (cos(シータ), sin(シータ)) って考えるのがシンプルだよ。シータを方位、rを大円に沿った距離と解釈するんだ。すると g(t) = polar_to_R3(f(t k, t l)) になる。kとlの相対サイズを変えるとヘリックスの巻き具合が変わるんだよね。" userName="fluoridation" createdAt="2025/08/20 14:40:21" color="#ff5733">}}




{{<matomeQuote body="これ、すごく見やすいね。どうやって作ったのか教えてくれない？Rotation Matricesで似たようなものを作ってみたいんだ。" userName="mostlyk" createdAt="2025/08/20 14:36:22" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="3blue1brownがアニメーションライブラリを持ってるかもね、彼が動画で使ってるのと同じやつ。それが役立つかもしれないよ。" userName="qwertytyyuu" createdAt="2025/08/20 14:44:13" color="">}}




{{<matomeQuote body="彼がManimっていう可視化ライブラリを作ったんだけど、それがすごくいいよ。" userName="megaloblasto" createdAt="2025/08/20 14:59:11" color="#38d3d3">}}




{{<matomeQuote body="アニメーションの作り方について、もっと詳しく知りたかったな。すごい良いね。カメラの視点が変わるところが特に好きだよ。" userName="jhaile" createdAt="2025/08/20 16:24:11" color="">}}




{{<matomeQuote body="AnimeJSと、たぶんThree.jsを使ってるんじゃないかな。" userName="mikestaas" createdAt="2025/08/21 01:49:31" color="#ff5733">}}




{{<matomeQuote body="”これらの関数で球面らせんが作られるんだ…それだけ！”って説明は、なんか逆の推論に感じるな。関数→球面らせんじゃなくて、球面らせん→関数が知りたいんだよ。1. 他の形を作りたい時、どうすればいいか分からないし。2. 球面らせんについて何も学んでないって感じ。" userName="tantalor" createdAt="2025/08/20 15:59:11" color="#785bff">}}




{{<matomeQuote body="これ、クールそうなんだけど、背景アニメーションとリソースを食いすぎるせいで、読むのに苦労してるよ。テキスト版はどこかにないかな？" userName="phyzome" createdAt="2025/08/21 01:22:11" color="">}}




{{<matomeQuote body="最初開いたら、ただの意味不明なページだったんだ。なんでHNで1位？って思ったよ。昔の”Netscape Navigatorで見るのがベスト”ってやつみたいに、これは”Google Chromeで見るのがベスト”ってことだね。Firefoxじゃ動かないんだから、ちゃんと確認するか教えてほしいな。" userName="mystraline" createdAt="2025/08/20 15:18:27" color="#ff33a1">}}




{{<matomeQuote body="Firefox（dev edition, v142.0b9）を使ってるけど、ちゃんと動くよ。" userName="rocmcd" createdAt="2025/08/20 15:23:57" color="">}}




{{<matomeQuote body="dev edition v143.0b2を使ってるけど、みんなが見てるのとは違うみたい。軸のタグが簡単な計算で動いてるだけに見えるんだ。明らかに何か動いてないし、見逃してるみたい。Firefoxの回帰かな？" userName="sli" createdAt="2025/08/21 05:03:10" color="#ff33a1">}}




{{<matomeQuote body="Firefox 142 on Linuxで問題なく動いたよ。コンソールに何かエラーはあった？" userName="madhato" createdAt="2025/08/20 16:43:45" color="#785bff">}}




{{<matomeQuote body="モバイルSafariでちゃんと動くよ。" userName="sssilver" createdAt="2025/08/20 15:32:23" color="">}}




{{<matomeQuote body="Arch Linux上のFirefox 142.0で完璧に動いたよ。" userName="alias_neo" createdAt="2025/08/20 18:21:27" color="">}}




{{<matomeQuote body="Librewolf 142だと完全に動かないね（テキストと、真っ黒な画面でタグがいくつか動くだけ）。でもFirefox Nightlyだと動くよ。" userName="hotsalad" createdAt="2025/08/20 17:40:14" color="#38d3d3">}}




{{<matomeQuote body="Firefox/Win11でちゃんと動いたよ。" userName="toss1" createdAt="2025/08/20 15:27:13" color="">}}




{{<matomeQuote body="デスクトップSafariでちゃんと動いたよ。" userName="wpm" createdAt="2025/08/20 15:35:26" color="">}}




{{<matomeQuote body="Firefoxで動くよ。" userName="Doc-Bok" createdAt="2025/08/20 15:24:36" color="">}}




{{<matomeQuote body="Firefox macOSで動いたよ。" userName="wigster" createdAt="2025/08/20 15:43:40" color="">}}




{{<matomeQuote body="最近p5jsに興味があるんだ。これ系のものを探索するのに楽しくて簡単な方法だよ。もし自分で試してみたいって思ってるなら、ここを試してみて！ https://p5js.org/tutorials/setting-up-your-environment/" userName="pavel_lishin" createdAt="2025/08/20 18:58:15" color="#38d3d3">}}




{{<matomeQuote body="これ、めちゃくちゃすごかった！ニューラルネットワークの記事もチェックしたよ。そっちの次のパートも楽しみにしてるね。これからも良い仕事続けて！" userName="ShahoG" createdAt="2025/08/20 16:00:53" color="">}}




{{<matomeQuote body="いいね！俺も記事を読んでて興味が湧いたから、テキストに書かれてたことを試せる簡単なパラメトリックビジュアライザーを作ってみたよ（Claudeありがとう！）：https://codepen.io/CaptainKeyframe/pen/zxvWVNo" userName="Keyframe" createdAt="2025/08/21 02:16:01" color="#785bff">}}




{{<matomeQuote body="もうAcko.netがコメントに挙がってないのが意外だなー。彼はブログ記事で似たようなツールを使って複素数や最終的にはフラクタルを解説してるよ。たぶん君の好みだと思う！https://acko.net/blog/how-to-fold-a-julia-fractal/" userName="shawa_a_a" createdAt="2025/08/20 22:45:34" color="#38d3d3">}}




{{<matomeQuote body="これが好きなら、たぶんShadertoyとThe Book of Shadersも楽しめると思うよ！ https://www.shadertoy.com/ と https://thebookofshaders.com/" userName="ForHackernews" createdAt="2025/08/21 10:55:22" color="#ff5733">}}




{{<matomeQuote body="これを見ると、MRIで信号を得るためにスピンがどう操作されるかを思い出すよ。スピンの先端を追うと、似たような経路を描くんだ。 https://m.youtube.com/watch?v=vapJRr6gAds&t=2786s" userName="gabeyaw" createdAt="2025/08/20 17:46:42" color="">}}




{{<matomeQuote body="https://www.johndcook.com/blog/2023/08/12/fibonacci-lattice/もし、均等な間隔のサンプルで球を覆う螺旋が欲しいなら、このアプローチを検討してみて。" userName="dcanelhas" createdAt="2025/08/20 17:36:12" color="#45d325">}}




{{<matomeQuote body="それから、Matt ParkerのStand-up Maths動画「ゴルフボール：ホールインワンは何回？」も見てみてね。 https://www.youtube.com/watch?v=dNTnk1VFoJY" userName="gowld" createdAt="2025/08/20 18:29:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
