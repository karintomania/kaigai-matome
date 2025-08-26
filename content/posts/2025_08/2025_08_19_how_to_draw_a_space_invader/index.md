+++
date = '2025-08-19T00:00:00'
months = '2025/08'
draft = false
title = 'まさかここまで簡単だったとは！あなただけのスペースインベーダーが作れる驚きの方法'
tags = ["プログラミング", "Web開発", "ジェネラティブアート", "ドット絵", "デザイン"]
featureimage = 'thumbnails/purple3.jpg'
+++

> まさかここまで簡単だったとは！あなただけのスペースインベーダーが作れる驚きの方法

引用元：[https://news.ycombinator.com/item?id=44956915](https://news.ycombinator.com/item?id=44956915)




{{<matomeQuote body="俺もSpace Invaderジェネレーターを作ってみたよ！<br>ライブ版はこちら: https://abetusk.github.io/iao/vadfad_1gen/<br>ソース: https://github.com/abetusk/iao/tree/main/vadfad_1gen<br>Jared Tarbellにインスパイアされたんだ。いい結果を出すのが意外と簡単だったよ。主要な構成要素は目、左右対称、そして小さな長方形内のランダムなピクセルだった気がする。" userName="abetusk" createdAt="2025/08/20 06:16:19" color="#785bff">}}




{{<matomeQuote body="Jared Tarbellにインスパイアされたって、すごく共感するな。初期のコンピュータいじりの大部分を占めてたよ。初期のインターネットの宝石だよね。後のhttp://complexification.netもそう。残念ながら、FlashやJavaの終焉でほとんどの例が動かなくなっちゃったけど、ComplexificationならProcessingの.pdeソースをhttps://hello.processing.org/editor/#editorにコピペすれば動かせるよ。" userName="grues-dinner" createdAt="2025/08/20 08:36:12" color="#45d325">}}




{{<matomeQuote body="これ、ブロック印刷の漢字やひらがな・カタカナみたいに見えるね。蛍光灯で照らされたビルの側面とかにぶら下がってそうな感じ。めっちゃクールだよ！対称じゃなかったら、もっと文字っぽく見えただろうな。" userName="pavel_lishin" createdAt="2025/08/20 20:09:28" color="">}}




{{<matomeQuote body="UIとランダムなカラーパレットが最高！素晴らしい作品だね。" userName="mickeyp" createdAt="2025/08/20 06:25:24" color="#ff5733">}}




{{<matomeQuote body="この記事、モバイルで読んだ体験の中で一番良かったよ。" userName="pachevjoseph" createdAt="2025/08/19 23:41:56" color="#38d3d3">}}




{{<matomeQuote body="そうそう、キャンバスが「拾われる」感じ、ちょっとした喜びだったね！" userName="ChrisKnott" createdAt="2025/08/20 05:56:04" color="">}}




{{<matomeQuote body="お二人ともありがとう、本当に嬉しいよ。クリーンだけど、楽しくてパーソナルなものにしようと心がけてるんだ。" userName="stanko" createdAt="2025/08/20 07:33:37" color="">}}




{{<matomeQuote body="そこまで設定した努力は報われたって言えるね。ジェネレーターを作ったことと、それをシェアしてくれたこと、両方に拍手！" userName="BoostandEthanol" createdAt="2025/08/20 08:27:38" color="#ff33a1">}}




{{<matomeQuote body="うわー、結果がめっちゃ良いね！ https://muffinman.io/invaders/<br>記事から想像してたよりずっといいね。あと、oklchについても今日知ったよ！ https://developer.mozilla.org/en-US/docs/Web/CSS/color_value..." userName="stevage" createdAt="2025/08/20 05:53:18" color="#ff5c5c">}}




{{<matomeQuote body="Thanks, when I started experimenting I was pleasantly surprised with results I was getting. After some polishing and adding UI I think it really came together nicely.As for OKLCH, it is a big upgrade. Working with color from code is hard, and it really makes things easier. I also like HSLuv [1], but unfortunately it is not supported natively in browsers.<br>[1] https://www.hsluv.org/" userName="stanko" createdAt="2025/08/20 07:38:50" color="#ff33a1">}}




{{<matomeQuote body="The uniform lightness looks nice, but it’s a shame that the easily memorable hue values of HSL (0 = red, 120 = green, 240=blue) are lost." userName="stevage" createdAt="2025/08/20 08:20:34" color="">}}




{{<matomeQuote body="Nice, just the other day I coded up some quick 2d shooter demo and realized I have no idea how to draw interesting sprites for it. What you’re doing here with drawing the generated vector onto different sizes of grid is brilliant. A sort of structured pulsation. Same simple technique can be used for both ”breathing” animation of a critter and for animating it into bigger, badder forms. Bravo.At this point (actually before even writing the comment) If your blog had a RSS feed I’d have subscribed to it... but (at least according to my RSS plugin) it doesn’t, so I fear I will miss out on your next inspiring writeups. Consider adding one, if you feel like it :-)<br>https://muffinman.io/invaders/#/size:15/main-seed:began-ever... is a favorite so far" userName="balamatom" createdAt="2025/08/20 01:35:32" color="#785bff">}}




{{<matomeQuote body="Thank you! You can also think of the vector shapes as a kind of skeleton. I think that is one of the reasons it works well. Moving the limbs or increasing the size creates the illusion of movement and breathing. But it works well only while the grid is smaller and can hide the underlying shapes. Once the vectors start to emerge, it breaks the illusion. You could definitely improve it to work better at larger sizes, but I think you would need to introduce more constraints, which limits the random factor of the generator.If you end up using something similar in your game, I would love to see it!edit: It seems that I need to make the RSS link more prominent :)" userName="stanko" createdAt="2025/08/20 09:16:30" color="#45d325">}}




{{<matomeQuote body="There is an RSS feed, the link is in the top hamburger menu, but here it is:<br>https://muffinman.io/atom.xml" userName="sphars" createdAt="2025/08/20 02:51:54" color="#ff5c5c">}}




{{<matomeQuote body="Sick, +1 sub from me. Thanks!" userName="balamatom" createdAt="2025/08/20 04:32:18" color="">}}




{{<matomeQuote body="Apparently someone drew a space invader on this pigeon walking in front of me the other week ;-)<br>https://files.catbox.moe/pzwgr8.jpg" userName="MisterTea" createdAt="2025/08/20 11:36:52" color="">}}




{{<matomeQuote body="If you refresh the page the invader that gets generated as you read changes." userName="scotty79" createdAt="2025/08/20 00:07:27" color="">}}




{{<matomeQuote body="Stop it.ChecksOh my god. 11/10." userName="plasticeagle" createdAt="2025/08/20 09:56:47" color="">}}




{{<matomeQuote body="Haha I love your comment. I’ll let you in on a little secret - you can add a seed parameter to the URL to get a specific invader. It has to be an integer, otherwise it will be ignored.For example:<br>https://muffinman.io/blog/invaders/?seed=1234" userName="stanko" createdAt="2025/08/20 11:38:15" color="#ff5733">}}




{{<matomeQuote body="いいね。皮肉な話だけど、これは侵略者を作って地球を救うみたいなものだね。ブルートフォースAIを使わない、まさにハッカーらしいやり方！高評価に値するよ。" userName="Martin_Silenus" createdAt="2025/08/20 01:50:11" color="#38d3d3">}}




{{<matomeQuote body="ありがとう！AIって、こういうプロジェクトの楽しさを全部奪っちゃうと思うんだよね。創作過程の魔法がなくなっちゃうじゃん。" userName="stanko" createdAt="2025/08/20 09:07:43" color="#38d3d3">}}




{{<matomeQuote body="せっかくだからさ、rayvenをGitHubに公開しない？（実質的に）魅力的なベクターハッチングに使ったアルゴリズム、すっごく興味あるんだよね。" userName="mft_" createdAt="2025/08/20 09:13:57" color="#38d3d3">}}




{{<matomeQuote body="公開する計画はあるんだけどさ、あれって終わらないプロジェクトの一つなんだよね。今年中にはやっとリリースできるといいなと思ってるよ。" userName="stanko" createdAt="2025/08/20 09:18:51" color="">}}




{{<matomeQuote body="AIのせいで俺たちが消えるって言う人もいるけど、あれはただコーディングが嫌いなだけなんだよ。" userName="Martin_Silenus" createdAt="2025/08/20 09:13:47" color="#ff5c5c">}}




{{<matomeQuote body="言わせてもらうとさ、このウェブサイトは今まで見た中で一番素敵で、一番読みやすいサイトの一つだよ。" userName="plasticeagle" createdAt="2025/08/20 09:54:52" color="">}}




{{<matomeQuote body="ありがとう、本当に嬉しいよ！" userName="stanko" createdAt="2025/08/20 11:33:49" color="">}}




{{<matomeQuote body="俺もこれに賛成！これは本当に良くできてて、いじってて楽しいよ。全体的に最高の出来だね！" userName="janfoeh" createdAt="2025/08/20 15:25:05" color="#ff5c5c">}}




{{<matomeQuote body="すっごく興味深い記事だし、8ビットの美学とかレトロコンピューティング好きな人にはかなり楽しいよ。これを読んでて思ったんだけどさ、これって母なる自然がすべてをカニの形に進化させたいって願望の、人間によるデジタルの表れなんじゃない？スペースインベーダーの付属物の対称性とか機能を見てよ。結局、全部カニみたいに見えるじゃん。これってマトリックスの合流点を見てるのかな？" userName="aa-jv" createdAt="2025/08/20 08:53:47" color="#38d3d3">}}




{{<matomeQuote body="これ、ランダムアバタージェネレーターとしてめちゃくちゃ良さそう！" userName="joemasilotti" createdAt="2025/08/19 23:12:45" color="#785bff">}}




{{<matomeQuote body="GliderっていうアプリでHacker News読んでるんだけど、これほとんどインベーダーみたいなゲームでさ、惜しいんだよね！" userName="Perz1val" createdAt="2025/08/20 12:49:09" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="楽しいハートのキャラクターがアニメーションするとDittoに変身するんだ、この多様性が最高！URLも見てみてね！https://muffinman.io/invaders/#/size:9/main-seed:officer-clo..." userName="dangond" createdAt="2025/08/20 16:01:43" color="#ff33a1">}}




{{<matomeQuote body="スクロールすると上部に固定されてる画像やアニメーションが、今話してることを視覚的に教えてくれるのがマジでいいね！普段はスクロール中の派手なページ変更とか嫌いなんだけど、これは良いわ！" userName="Modified3019" createdAt="2025/08/20 07:34:56" color="">}}




{{<matomeQuote body="80年代にドーキンスの『盲目の時計職人』を読んで、似たようなことやったなあ。Biomorphアプリを再現したくて、Atari Logoのスペースインベーダーをハッキングしてさ、遺伝的プログラミングでインベーダーの形状と動きを進化させたんだ。5レベル目にはもう無理ゲーだったよ！" userName="pjbk" createdAt="2025/08/20 15:14:56" color="#ff5c5c">}}




{{<matomeQuote body="AI使わないで、こんな楽しい方法でやってくれてありがとう！" userName="Biganon" createdAt="2025/08/20 10:47:17" color="">}}




{{<matomeQuote body="ベクトルをラスタライズして作ってるってことに驚いたし感動したよ。疑似乱数カーネルウォークをミラーリングして作ったら、どこまでうまくできるか気になるな。" userName="Waterluvian" createdAt="2025/08/19 23:38:50" color="">}}




{{<matomeQuote body="これって、基本的に俺がやったのと同じ！ランダムウォークを修正してグラデーションカラーのインベーダーを作ったんだ。面白い形がマジでできるよ。URLも見てね！https://tinyurl.com/creagen-invader (デスクトップ推奨)<br>Creative Coding Amsterdamのコーディングチャレンジの一部なんだ。" userName="lyr-7d1h" createdAt="2025/08/20 04:25:46" color="#ff5733">}}




{{<matomeQuote body="すごく良いね！ウォーカーも考えたんだけど、結局ベクターシェイプにしたんだ。でも、この二つを組み合わせたらもっとクールな結果が出そうだね！これはCCAのコードチャレンジの一部で、みんなのジェネレーターをまとめたページを作る予定だよ。" userName="stanko" createdAt="2025/08/20 09:11:56" color="#45d325">}}




{{<matomeQuote body="いやー、すごく楽しい読み物だったよ。問題解決とか文章とか、プレゼンテーションに込められたいろんなアイデアに感謝しかないね！" userName="h4ny" createdAt="2025/08/20 03:49:14" color="">}}




{{<matomeQuote body="よくできてるね！一つ提案なんだけど、たくさんのキャラクターを生成するとき、数学的に制約をつけて、それぞれが似すぎないようにしたらどうかな？偶然同じに見えたり、区別がつかなくなったりするのを防げると思うよ！" userName="albert_e" createdAt="2025/08/21 03:39:05" color="#ff33a1">}}




{{<matomeQuote body="2000’sのWeb伝説levitated.netから、関連するインベーダーフラクタルがあるよ！ http://www.levitated.net/daily/levInvaderFractal.html (2003年)" userName="gregschlom" createdAt="2025/08/20 06:04:25" color="#ff33a1">}}




{{<matomeQuote body="めっちゃ楽しい記事だったよ。描画でユーザーの位置を追跡して特定のことをするアイデアが最高！もっと使われてもいいのにって驚いた。ロープのページも見たけど、これはウェブページにとってすごく良い戦略だね。" userName="taeric" createdAt="2025/08/20 18:01:15" color="#ff5c5c">}}




{{<matomeQuote body="クール！世界中のインベーダーをここで集めてるよ: https://www.space-invaders.com/flashinvaders/" userName="netfortius" createdAt="2025/08/20 06:31:54" color="#785bff">}}




{{<matomeQuote body="これ、マジで最高の記事だよ。作品自体もすごいけど、説明とデモンストレーションへの配慮にもめちゃくちゃ感動した。マフィンマンに大リスペクト！" userName="mock-possum" createdAt="2025/08/20 14:58:58" color="#38d3d3">}}




{{<matomeQuote body="これは素晴らしいね、君のアルゴリズムは本当に良い結果を生み出してるし、記事も最高！これを僕らのゲームで使えるシンプルな関数として提供してくれたら嬉しいな ;-)" userName="appstorelottery" createdAt="2025/08/20 12:20:30" color="#785bff">}}




{{<matomeQuote body="へぇ、僕らの時代はね、＞*＜と＜*＞みたいな文字の並びでアニメーションさせて、ゲーム全体を80x24のASCIIターミナルで動かしてたんだぜ。" userName="CodeWriter23" createdAt="2025/08/20 16:26:39" color="">}}




{{<matomeQuote body="いいスペースインベーダーは、いかにも悪そうで威嚇的じゃないとね。ハサミを振り回して獲物を捕まえるような動きがあれば、さらにポイントアップだよ。" userName="ygritte" createdAt="2025/08/20 06:13:02" color="">}}




{{<matomeQuote body="最初はもっと簡単だと思ってたけど、意外と奥が深かったな。でも、最終的な結果は本当に素晴らしいよ。" userName="Suppafly" createdAt="2025/08/23 05:49:16" color="#45d325">}}




{{<matomeQuote body="これ、最高だった！浮遊するプレビューもすごく良くできてたよ。大拍手！" userName="forrestthewoods" createdAt="2025/08/20 06:10:28" color="#38d3d3">}}




{{<matomeQuote body="スペースインベーダーがまさか一人で作られたって、すごくない？" userName="FridayoLeary" createdAt="2025/08/20 01:33:47" color="">}}




{{<matomeQuote body="インベーダーの動きって、実は1/60秒ごとに1体ずつ動かしてるのがミソなんだよね！あのパックの動きをオリジナルと同じにするには、このオリジナルのプログラマーの天才的な錯覚の技が欠かせないんだ。" userName="appstorelottery" createdAt="2025/08/20 12:22:03" color="#38d3d3">}}




{{<matomeQuote body="あの特徴的な動きは、2mhzの8080 CPUと少ないビデオサポートの制約から生まれたんだよ。Computer Archeologyの分解コードを見ると、1フレームでプレイヤー、弾、エイリアン1体、エイリアンの弾1つしか再描画できないから、動きをずらすしかなかったんだね。<br>https://www.computerarcheology.com/Arcade/SpaceInvaders/" userName="egypturnash" createdAt="2025/08/20 17:50:33" color="#ff5c5c">}}




{{<matomeQuote body="このテクニックはComputer Archeologyのサイトで知ったんだ！25年間インベーダークローンを作り続けて、やっとこれで完璧にできたよ。このゲームの執着から解放されるわ！<br>https://datsuco.itch.io/video-invaders" userName="appstorelottery" createdAt="2025/08/20 19:09:20" color="#38d3d3">}}




{{<matomeQuote body="面白いね、これにはすごい想像力が必要だったんだなぁ。" userName="lzyuan1006" createdAt="2025/08/20 01:26:06" color="">}}




{{<matomeQuote body="最高！" userName="Goldenbowl" createdAt="2025/08/20 00:39:01" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
