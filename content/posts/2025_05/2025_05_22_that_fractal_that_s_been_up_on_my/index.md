+++
date = '2025-05-22T00:00:00'
months = '2025/05'
draft = false
title = '長年壁にあったフラクタル、その正体'
tags = ["フラクタル", "数学", "プログラミング", "可視化", "アルゴリズム"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> 長年壁にあったフラクタル、その正体

引用元：[https://news.ycombinator.com/item?id=44063248](https://news.ycombinator.com/item?id=44063248)




{{<matomeQuote body="最高の仕事っぷりだし、読んでて超楽しかったよ。" userName="CliffStoll" createdAt="2025/05/22 21:27:49" color="">}}




{{<matomeQuote body="お願い、二人でこれをすごいYouTube動画にしてよ。超面白いし綺麗だし、ちょっとでもバズる価値あるって！" userName="speeder" createdAt="2025/05/23 07:42:01" color="">}}




{{<matomeQuote body="素晴らしい記事、ありがとう！3Dも良かったよ。これに関連して、前に再帰でフラクタルっぽい画像を作るツール作ったの思い出したんだ。ここで試せるよ：https://jsfiddle.net/nicobrenner/a1t869qf/<br>”Blursort 2x2”を数回押してフレームをいくつか作ってから”Animate”をクリックしてみてね。ブラウザだけで動くけど、スマホは非推奨。" userName="nico" createdAt="2025/05/22 17:04:22" color="#ff5c5c">}}




{{<matomeQuote body="これ3Dでもいけるのかな、気になるね" userName="Iwan-Zotow" createdAt="2025/05/22 19:51:59" color="">}}




{{<matomeQuote body="超面白い！3Dだとどうなるか見たいね。今のアルゴリズムは画像を再帰的に分割するけど、3Dデータにどう適用できるかは分からないな。3Dオブジェクトってどう表現されてるか知ってる？再帰的に分解して小さな自身にするの、超クールだよね：）" userName="nico" createdAt="2025/05/22 20:19:14" color="#ff5c5c">}}




{{<matomeQuote body="この記事でちょっとナーディになっちゃって、”wallflower”を埋め尽くすL-systemを思いついたんだ（たぶんね）：https://onlinetools.com/math/l-system-generator?draw=AB&skip...<br>追記：よく考えたら、これ多分別のフラクタルを作ってると思う、確信はないけど。" userName="leni536" createdAt="2025/05/22 16:44:18" color="">}}




{{<matomeQuote body="wallflower用の空間充填曲線を見つけたよ：https://onlinetools.com/math/l-system-generator?draw=ABCD&sk...<br>さっきのはKoch islandを埋めるやつだね。" userName="leni536" createdAt="2025/05/23 09:41:14" color="#785bff">}}




{{<matomeQuote body="それ超かっこいいね！先週ペンと紙で何か動くか試したんだけど、うまくいかなかったんだ。なんか戦略使ったの？それとも感覚でやったの？<br>追記：どうやってフリップ（AB ＜--＞ CD）を反復の間でエンコードしたか今気づいたよ。まるで行列が空間の向きを反転させるみたいだね。超きちんとしてる！" userName="chriskw" createdAt="2025/05/23 16:19:51" color="#38d3d3">}}




{{<matomeQuote body="”フリップ（AB と CD の入れ替え）をエンコードしたのに気づいたね”って、まさにそう！AとBの間にもっと分かりにくい関係性があるんだ。BはAを”後ろ向き”（180°回転させて、反対の端からカーブを始めたもの）にした感じなんだよ。<br>戦略としては、5つのセルの横にあるプラス記号の上に5本の線を置くことだったんだ。それぞれの線が、その後の繰り返しで隣接するセルを最終的に埋めていくっていう考えでね。うまくいく可能性のあるパスを一つ見つけたんだよ。これ、うまく伝わるかな？" userName="leni536" createdAt="2025/05/23 18:52:31" color="#45d325">}}




{{<matomeQuote body="うわ、サクッと読めると思ってたのに。仕事しなきゃだから、いくつか飛ばし読みすることになっちゃったよ。これ、また戻ってきてじっくり遊んでみるつもり。本当によくできてる！" userName="taeric" createdAt="2025/05/22 16:15:37" color="">}}




{{<matomeQuote body="これ、予想よりずっと深くて難しかったな。作者の熱意には頭が下がるよ。<br>作者に質問なんだけど、今どきの子供の壁には何飾るのがおすすめ？" userName="baq" createdAt="2025/05/23 05:37:54" color="">}}




{{<matomeQuote body="子育ての専門家じゃないけど、僕の答えは、子供がその時々で情熱や不思議に思うものに関係するものがいいんじゃないかな。記事の最後の方にバーンアウトの話をこっそり入れたんだけど、僕の場合、問題の根本は数学とプログラミングへの面白さや好奇心を失ったことだったんだ。この記事を書いたおかげで、昔は簡単に感じられた子供みたいなワクワク感を取り戻せたよ。" userName="chriskw" createdAt="2025/05/23 06:05:02" color="#45d325">}}




{{<matomeQuote body="2桁の足し算、確かめてみたらちゃんとできたよ！41+14が12になるはずって思ってたんだけど（右に二つ＋上に二つが右に二つと上に二つになる）、長い足し算の筆算を下に書くね。記事には2種類の数字体系があるけど、僕の足し算は10の位が反時計回りの方でやったよ（これが足し算表で使われてる方）。別の体系（14+21が12になるはず）でもまだできるか確認したけど、それもできた！すごいね。" userName="Cogito" createdAt="2025/05/23 03:56:33" color="#ff5c5c">}}




{{<matomeQuote body="すごくよく書けてるね！”真ん中から広がる” numbering system ってどうやって思いついたの？自分で数学の問題解いてても、こんなひらめきって全然出てこないんだよね。" userName="CBLT" createdAt="2025/05/22 16:40:51" color="">}}




{{<matomeQuote body="記事では少し順番を変えてるけど、思いついたのは、フラクタルが5倍ずつ成長する仕組みと、base 5 の数字システム、そして記事で触れた”スパイラル”が全部うまく組み合わさるって気づいた時が大きかったかな。あと、フラクタルをプログラムでどう描くかすごく考えたんだけど、真ん中からズームアウトするのが自然なやり方だって思ったんだ。有名な物理学者 Richard Feynman のエピソードみたいに、いつも心の中にたくさんの問題を抱えてて、繋がりを見つけるたびに少しずつ進めていって、最終的に一つを解くと周りは彼が魔法みたいに解いたって思うって話があるんだけど、これと少し似てたね。僕のレベルは全然だけど、一つの問題でそれができた感じかな。" userName="chriskw" createdAt="2025/05/22 17:38:23" color="#45d325">}}




{{<matomeQuote body="僕も昔、職場の壁にこれ（超でかいプリント）飾ってたよ！リンク載せておくね。それを作る Haskell コードもここにあるよ。特に sharpen 関数を思いつくのが面白かったな（曲線のフィッティングはオフラインツールを使ったけど）。楽しいちょっとしたプロジェクトだったよ。" userName="cies" createdAt="2025/05/23 05:26:07" color="#785bff">}}




{{<matomeQuote body="”もっと数学を知ってる将来の自分に丸投げ”っていうの、めっちゃ共感できるわ。僕が進路を決めた大きな理由の一つが、解く必要があったのに、導いてくれる人もネット環境もなくてできなかった問題リスト（主に linear algebra ）なんだよね。" userName="Tade0" createdAt="2025/05/23 07:44:39" color="">}}




{{<matomeQuote body="良い記事だった！壁のフラクタルの写真、見たかったな〜。 Knuth の動画へのリンクも気が利いてて、知らなかったから助かったよ。" userName="tcshit" createdAt="2025/05/22 21:55:20" color="">}}




{{<matomeQuote body="それって、最後の画像で左にあるやつじゃない？" userName="leephillips" createdAt="2025/05/22 22:15:22" color="">}}




{{<matomeQuote body="うん、そうかもね。すごく大きくして額に入れて壁に飾るのクールだね。それか、Knuthのdragon curve wallみたいなタイルでモザイク作品にするのも良さそう。" userName="tcshit" createdAt="2025/05/23 05:05:51" color="">}}




{{<matomeQuote body="うん、最後の画像と一番上のサムネイルにあるよ（モバイルだと見つけにくいって今気づいた）。わざと目立たせないようにしたのは、最後のひねりのためなんだ。https://chriskw.xyz/images/fractal/thumbnail.jpg いつかモザイクとして完璧に機能すると思うけど、今は壁に貼った「素朴な」8x11のグラフ用紙サイズのもので十分満足してるよ。当時使った色鉛筆が見つかったら、orthotopeflowerの一部を相棒として飾るつもり。" userName="chriskw" createdAt="2025/05/23 06:12:32" color="#ff33a1">}}




{{<matomeQuote body="面白い投稿だね！僕も最初の5世代を手描きしたんだけど、正方形のテセレーションの自己相似な色塗りとして考えるのが一番簡単だって気づいたよ。もしイテレーション3の形から始めると、5x5の正方形タイルとしてテセレーションできる。そのタイルを無限に並べて、中央にイテレーション3のバージョンを一つ置く。その中央のタイルをイテレーション3パターンの中心の正方形として扱い、2番目と3番目のイテレーションがどのように正方形から作られたかに従って周囲のタイルに色を塗る。こうすることで4番目と5番目のイテレーションが得られて、外側に向かって色塗りを繰り返すことでwallflower patternのグリッドに色を塗っていくことができるんだ。" userName="mckeed" createdAt="2025/05/23 16:39:14" color="#ff5c5c">}}




{{<matomeQuote body="良い記事だね。Jurassic Parkで有名なHeighway dragonもかなり良いよ。https://en.m.wikipedia.org/wiki/Dragon_curve" userName="cess11" createdAt="2025/05/22 19:54:20" color="">}}




{{<matomeQuote body="ニュース読むより断然良いね。お気に入りに入れたよ—また戻ってきてもっと吸収するつもり。エンジニアリング物理とSQLの知識じゃ、1980年代に見た記法にはあまり役に立たないからさ。" userName="wistlo" createdAt="2025/05/23 14:56:18" color="">}}




{{<matomeQuote body="同じようなものが、詳細度調整機能付きのdither patternに応用できるか気になるな。" userName="Scene_Cast2" createdAt="2025/05/22 19:08:21" color="">}}




{{<matomeQuote body="なんかプロペラみたいに見えるね。" userName="entropicdrifter" createdAt="2025/05/22 16:46:31" color="">}}




{{<matomeQuote body="4本の腕が全部同じ方向にカーブしてるやつは、残念ながらどうしてもswastikaみたいに見えがちだよね。" userName="shermantanktop" createdAt="2025/05/22 16:58:39" color="">}}




{{<matomeQuote body="作者の”壁の花”フラクタルの腕は、他の似たフラクタル（quadratic von Koch island）と違って、カーブしてるようには見えないね。これは、各繰り返しでミラーリングが追加されることで説明できるかも。" userName="leni536" createdAt="2025/05/22 17:06:48" color="#38d3d3">}}




{{<matomeQuote body="ここで残念なのは、swastikaがジェノサイド政権に利用されちゃったことだね。このシンボルは今でもIndiaとJapanでは全く違う使われ方をしてるんだよ。" userName="winnit" createdAt="2025/05/23 08:04:50" color="">}}




{{<matomeQuote body="さあ、これを使ったタイリングゲームエンジン作ってみてよ！" userName="matt3210" createdAt="2025/05/23 03:37:26" color="#45d325">}}



{{<matomeQuote body="これは内輪ジョークだけど、本当の警告でもあるんだ。”Handwaving”ってやつ。何かを深く掘り下げてる人はみんな、発展途上の理論をうまく説明できなくて、分かってもらえるように手を振るみたいなジェスチャーでごまかしちゃう部分にたどり着くんだよ。" userName="3" createdAt="2025/05/22 16:43:32" color="#ff33a1">}}



[記事一覧へ]({{% ref "/posts/" %}})
