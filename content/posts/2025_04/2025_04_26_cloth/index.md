+++
date = '2025-04-26T00:00:00'
months = '2025/04'
draft = false
title = '感動！ブラウザでここまでリアルな布表現'
tags = ["物理シミュレーション", "ウェブ開発", "グラフィックス", "3DCG", "プログラミング"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 感動！ブラウザでここまでリアルな布表現

引用元：[https://news.ycombinator.com/item?id=43801179](https://news.ycombinator.com/item?id=43801179)




{{<matomeQuote body="ブラウザ向けの別の布表現だよ： https://oimo.io/works/cloth/" userName="mmwelt" createdAt="2025/04/26 09:14:53" color="">}}




{{<matomeQuote body="Cool だね。いつになったら games でこういう布のインタラクションができるようになるの？" userName="luotuoshangdui" createdAt="2025/04/26 13:28:14" color="">}}




{{<matomeQuote body="Splinter Cell、2002年のやつね： https://web.archive.org/web/20220207182149/https://gfycat.co..." userName="spiralganglion" createdAt="2025/04/26 16:39:41" color="#ff5733">}}




{{<matomeQuote body="こういうの、2000s 後半にめっちゃ流行ったんだよね。NVIDIA が PhysX を買収して、急に全ての AAA game で cloth animation が使われるようになったんだ（もちろん、nvidia GPU を買ってればだけど）。例えば、Mirror’s Edge なんか、supported card でプレイすると interactive な tarpaulins とか drapes がいっぱい出てくるよ。" userName="swiftcoder" createdAt="2025/04/26 19:23:15" color="#785bff">}}




{{<matomeQuote body="あともう一つ（bevy を使った Rusty）。 desktop の方が better に runs するよ。" userName="stefanka" createdAt="2025/04/26 10:40:46" color="">}}




{{<matomeQuote body="link、忘れた？" userName="LtdJorge" createdAt="2025/04/27 16:42:39" color="">}}




{{<matomeQuote body="やってみたよ、ありがとう。<br>これね -＞ https://jbargu.github.io/cloth-simulation-bevy-rust/<br>あと、他の人がもう移植してるのもあるよ -＞ https://github.com/roackb2/verlet-rs" userName="stefanka" createdAt="2025/04/28 05:28:22" color="#785bff">}}




{{<matomeQuote body="Marian Pekárさんのブログ記事「https://pikuma.com/blog/verlet-integration-2d-cloth-physics-...」を読んだらverlet integrationが理解できて、自分で布シミュレーションを書けるようになったんだ。" userName="atan2" createdAt="2025/04/26 14:41:00" color="#ff5c5c">}}




{{<matomeQuote body="web dev/gradle/javaの知識からどうやってこういうものを作るんだろうね？俺もCSの学部行ってないから、どんなプログラミング言語を学んでもこれが理解できるようになるか不安になることがあるよ。OPENLYとかLIBGDX、GODOT、unityとかちょっとかじったけど、布シミュレーションをゼロから作るなんて、マジすごいな" userName="mattfrommars" createdAt="2025/04/26 13:01:20" color="">}}




{{<matomeQuote body="実は、思ってるよりずっとシンプルだよ。SWEのキャリアを始める前に、このスレッドのどこかでリンクされてる”tearable cloth”のデモを書いた俺が言うんだから間違いない。この場合は基本的な”verlet” integrationっていうので、グリッドを形成する2Dベクトルを現在と過去の位置に基づいて更新して、すぐ隣の点からの距離を一定に保つように制約するんだ。点と点を線で結べば、布の出来上がり。物理シミュレーションに魅せられて、実装するのが一番簡単だったものの一つだから、これで初めて知ったんだ。結果のわりにすごく手軽にできる。もちろん、そこから先はもっと複雑になるけどね。" userName="diss" createdAt="2025/04/27 06:06:54" color="#ff5c5c">}}




{{<matomeQuote body="物理シムを学ぶには、物理や数学の知識とプログラミングツールを分けて考えるのが大事だって学んだよ。最初は言語に組み込まれてると思ったけど、実際は数学・物理でモデル化して、それをツールに落とし込むんだ。簡単なアルゴリズムもあるけど、ちゃんとやるには数値解析とかも必要になる。コードは不格好になったりマジックナンバーだらけになったりするけどね。" userName="timeforcomputer" createdAt="2025/04/26 14:16:45" color="#45d325">}}




{{<matomeQuote body="web devとシミュレーション開発は全然違うんだ。Web devは統合がメインだけど、シミュレーションは計算がメインでコードの中身が大事。単一プロセスに集中できるのが利点。ブラウザがおすすめだよ。GanjaやD3、Processingみたいなツールが良いかもね。ゲームエンジンはシミュレーション単体よりずっと複雑だから注意してね。<br>1 - https://github.com/enkimute/ganja.js/blob/master/ganja.js<br>2 - https://github.com/d3/d3-force/tree/main/src<br>3 - https://processing.org/" userName="simpaticoder" createdAt="2025/04/26 17:00:44" color="#ff5733">}}




{{<matomeQuote body="結局は数学と物理だよ。ゲーム開発分野に知識が集まってるけど、ニッチな情報を見つけるのは難しいかも。グラフィックス/物理を学ぶならalextardif.com/LearningGraphics.htmlやlearnopengl.comが良いリソース。APIは大事だけど、物理シミュレーション本体がもっと重要だよ。C/C++が嫌ならWebGLも良いかもね。（情報源：俺はweb dev/gradle/java開発者で、趣味でゲームエンジン開発してるんだ）" userName="DavidPiper" createdAt="2025/04/26 14:38:59" color="#ff5c5c">}}




{{<matomeQuote body="そんなに難しくないよ。javascriptなら、各点を(x,y,z)で表現して、質量を与えて、毎フレーム重力を適用するんだ。ノイズを加えてもいいかもね。粒子が動こうとするたびに、三角法を使って力を辺を通して他の点に伝えるんだ。減衰量も加えると、暴走しないよ。質量は、その後の力によって各点がどれだけ影響されるかを決定するんだ。もし3Dがまだなら、2Dでやってみたらいいよ。" userName="gosub100" createdAt="2025/04/26 13:05:18" color="#ff33a1">}}




{{<matomeQuote body="それから、runge-kuttaとかimplicit methodsみたいな、ちっちゃいシミュレーションが爆発しないようにするためのものも調べてみたらいいよ．．．" userName="jeffreygoesto" createdAt="2025/04/26 13:58:59" color="#38d3d3">}}




{{<matomeQuote body="良い本で試せるのはDan Shifmanのthe nature of codeだよ、ゼロからヒーローになれるって感じ。" userName="wsintra2022" createdAt="2025/04/27 00:32:27" color="">}}




{{<matomeQuote body="最近その本の2.0版が出たみたいだよ。" userName="satvikpendem" createdAt="2025/04/27 02:14:59" color="">}}




{{<matomeQuote body="全然違うスキルセットだよ。基礎から始めて全部習得するにはひたすら頑張るしかないね（このデモはそんなに難しくないけど、一般的には何年もかかるかも）。javaとかweb devを学ぶときに身についたことをたくさん忘れる必要があるだろうね。" userName="qoez" createdAt="2025/04/26 14:28:14" color="">}}




{{<matomeQuote body="子供の頃、数学を知らずにボールシミュレーションをコードで作って速度や重力などを感覚的に理解した経験があるんだ。それが後で数学を習った時に役に立ったよ。この手の布シミュレーションも簡単なもので、コードを少し弄るだけで面白くできた経験があるんだ。物理的な正確さより面白さ重視なら、適当でもいけるのがこの手の面白いところだね。ちなみに自分はwebは苦手なんだけど、PHPとVanilla JSならできるかなハハハ。" userName="andai" createdAt="2025/04/26 16:54:12" color="#ff33a1">}}




{{<matomeQuote body="ああ、自分も子供の頃似たような過程を経験したよ。高校で三角法を習った時、何年も2D宇宙船の位置計算にsinとcosを使ってたから、かなり先を行ってたって気づいたのを覚えてる..." userName="stevage" createdAt="2025/04/26 23:06:49" color="#45d325">}}




{{<matomeQuote body="これ見て、ゲームElden Ringのすごい布デザインを解説してるPolygonのカッコいい動画思い出したよ。https://youtu.be/wSSqx-Dh6ko" userName="falcor84" createdAt="2025/04/26 10:14:45" color="#38d3d3">}}




{{<matomeQuote body="シェアありがとう、これすごいね。布には機能的な目的もあるんだって。FromSoftのゲームみたいに精密なヒットボックスと近接戦闘が大事なゲームでは、布が敵の形を隠して距離感を掴みにくくし、戦闘を難しく面白くしてるんだよ。現実の布も同じだね。自分はFromSoftのゲームプレイループは好みじゃないけど、デザインは本当に素晴らしいと思うな。" userName="imiric" createdAt="2025/04/27 09:07:36" color="#38d3d3">}}




{{<matomeQuote body="この手の布アニメーションはずっと好きだったんだ。初めて見たのはCodepenのdissimulateさんのtearable clothデモだったと思うーあのコードを9年前に書いたなんて信じられないよ！ https://codepen.io/dissimulate/pen/eZxEBO https://github.com/Dissimulate/Tearable-Cloth" userName="rikroots" createdAt="2025/04/26 07:00:09" color="#785bff">}}




{{<matomeQuote body="これは14年前の自分の作品だよ https://www.youtube.com/watch?v=G05M_Y6NQVM<br>こういう基本的なセットアップを実装するのはすごくシンプルだし、結果が超クールってのは同意するよ。" userName="wingerlang" createdAt="2025/04/26 07:56:37" color="#ff33a1">}}




{{<matomeQuote body="それ俺だよ！CodePenに最初バージョンを置いたのは13年くらい前かな。マジかよ…って自分でも信じられないけど、最初のプログラミングの仕事に就く前だって気づくと、確かにずいぶん昔のことだなって感じるわ。" userName="diss" createdAt="2025/04/27 06:21:12" color="#ff5733">}}




{{<matomeQuote body="2000年のゲーム Hitman は布の表現があったし、2008年の Mirror’s Edge には破れる布もあったよ。きっとこれらが最初じゃないと思うけどね。" userName="ribcage" createdAt="2025/04/26 08:50:52" color="#ff5c5c">}}




{{<matomeQuote body="このサイトの作者に「よくやった！」って言わせてくれよ。外部JavaScriptなしで、モバイルでもそのまま動くなんてさ。最近のテキストベースのサイトじゃ、こんなこと言えないからね。" userName="account-5" createdAt="2025/04/27 07:52:42" color="">}}




{{<matomeQuote body="こういう布シミュレーターって、いつもなんか不安定だよね。Grid clothを作ってみると、ランダムにバウンドしたり動き始めたりするの見れるよ。これって IEEE 754 浮動小数点エラーが蓄積するせいなの？" userName="sph" createdAt="2025/04/26 07:50:46" color="#ff5c5c">}}




{{<matomeQuote body="物理シミュレーションで”numerical integration”って検索してみて。https://en.wikipedia.org/wiki/Numerical_methods_for_ordinary... が参考になるよ。エラーの原因は浮動小数点じゃなく、連続関数を離散近似する性質にあるんだ。Wikipediaの記事にグラフもある。Eulers method, Verlet, Runge-Kutte など色々な手法があり、それぞれトレードオフがある。より複雑な手法が良い場合もあるけど、単純高速なものを多く回すのとどっちが良いかって問題もあるんだ。" userName="Karliss" createdAt="2025/04/26 09:04:50" color="#ff5733">}}




{{<matomeQuote body="俺、色々計算エンジンのデモ持ってるんだ。俺なりに解釈したやつで、変数とかいじれるよ。でも、前のコメント見て Verlet integration って初めて知ったわ。数学でF取ったし、物理は試験前に放り出されたから当然なんだけどね。で… Verlet って Euler とか Runge-Kutte と比べて、どれくらい効率的で正確なの？ この手の計算で他にどんな手法があるの？<br> https://scrawl-v8.rikweb.org.uk/demo/particles-008.html<br> https://en.wikipedia.org/wiki/Verlet_integration" userName="rikroots" createdAt="2025/04/26 10:58:26" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Verlet integration は、みんな自分でゲームエンジン書いてた時代に、パーティクルエフェクトとかソフトサーフェスで定番手法になったんだ。主に初代 Hitman の実装を文書化した論文のおかげだよ。実際、ゲーム開発者たちの間では、その目的のためだけに、言わば「カーゴカルト」的に使われた感じかな。本来は一般的な手法で、他の手法と競合するのにね。<br> https://www.cs.cmu.edu/afs/cs/academic/class/15462-s13/www/l..." userName="debugnik" createdAt="2025/04/26 11:45:49" color="#45d325">}}




{{<matomeQuote body="彼らがどのインテグレータを使ってるか知りたいね。Verlet スキームはほとんど労力かけずに実装できるし、この問題（例：leap frog method を見てみて）に悩まされないんだ。<br>でも一般的に、特に CG アプリケーションでは、ほぼ間違いなく何らかのダンピング機構を追加すると思うよ。" userName="Azrael3000" createdAt="2025/04/26 10:07:48" color="#ff5c5c">}}




{{<matomeQuote body="この投稿のこと？ ウィンドウのタイトルに”Verlet simulation test”って書いてあるよ。" userName="debugnik" createdAt="2025/04/26 11:28:54" color="#38d3d3">}}




{{<matomeQuote body="ああ、ありがとう、見落としてたわ。それなら、ダンピングはほとんど使われてないみたいだね。" userName="Azrael3000" createdAt="2025/04/26 11:58:42" color="">}}




{{<matomeQuote body="物理シミュレーションでエネルギー保存って、特別にコード書かないと勝手に働くわけじゃないんだよね（たとえば周期的に手動で調整するとか）。丸め誤差だけじゃなくて、時間の量子化とか数学モデル由来の細かい誤差もあるんだ。もし誤差が減衰側に出るなら、現実みたいに動きがだんだん止まるエネルギー散逸効果になる。加速側だとシミュレーションが暴走しちゃうんだよ。" userName="praptak" createdAt="2025/04/26 11:04:53" color="#45d325">}}




{{<matomeQuote body="これ、マジでヤバい作業だわ ー シンプルなのに目を奪われる。Verlet integrationが自然でリアルな布シミュレーション作るのにどんだけパワフルか、ってのがマジでわかるね。興味ある人には、Hitmanゲームエンジン出身のJakobsen’s paperもおすすめするよ ー 定番だから。この刺激的なプロジェクトをシェアしてくれてありがとう！" userName="Borzadaran" createdAt="2025/04/26 15:03:24" color="#ff5c5c">}}




{{<matomeQuote body="こういうのがどう動くか、みたいな難しい質問をみんながしてるの見るの好きだな。何年もかけて無数の小さいステップから全部が積み上がってるんだなっていつも感じるわ。数学が壁みたいに感じるとこにぶち当たったことある？それとも、カチッとわかるまでひたすら打ち込み続ける感じ？" userName="gitroom" createdAt="2025/04/26 16:11:29" color="">}}




{{<matomeQuote body="いくつかのパラメーターと制約を設定するだけで、こんなにリアルな動きになるってのが一番すごいと思う。これって、周りの世界が隠されたモデルと力の集まりなのかもしれない、ってのを思い出させてくれる感じだね ー そして俺たちの仕事はそれらを見つけてシミュレーションすることなのかも。素晴らしい作業！" userName="Borzadaran" createdAt="2025/04/26 15:05:41" color="#45d325">}}




{{<matomeQuote body="作者さん、Godotの追加機能もいくつか作ったんだってね。これもGodotで作ったのかな？無料のゲームエンジンにとっては、こういうのがあると嬉しいよね。" userName="stefanka" createdAt="2025/04/26 10:29:02" color="">}}




{{<matomeQuote body="GodotってWebもターゲットにできるから、あり得る話だね。" userName="__loam" createdAt="2025/04/26 10:44:40" color="">}}




{{<matomeQuote body="「Cloth Type」の前の単語をクリックすると、Gridに変えられてもっとクールな操作ができるよ。" userName="ninju" createdAt="2025/04/26 13:43:35" color="#ff5733">}}




{{<matomeQuote body="誰かこれアップデートしてくれない？スマホに息吹きかけて布が動くようにさ。" userName="1001directories" createdAt="2025/04/26 22:31:56" color="">}}




{{<matomeQuote body="これって新しいCiechanowskiなの？" userName="brcmthrowaway" createdAt="2025/04/26 07:32:33" color="">}}




{{<matomeQuote body="ってことは、10年後にはロボットにシャツたたませられるってこと？" userName="polotics" createdAt="2025/04/26 08:05:49" color="">}}




{{<matomeQuote body="ばねとかダンパーモデルを使った布シミュレーションなんてかなり昔からあることだよ。布折りロボットの研究よりさらに古くて、けっこう進化してるんだ。最近のサーベイ論文があるから見てみてね：https://arxiv.org/abs/2407.01361" userName="stefanka" createdAt="2025/04/26 10:38:24" color="#ff33a1">}}




{{<matomeQuote body="FoldimateとかLaundroidじゃ満足できないの？" userName="m0llusk" createdAt="2025/04/26 12:25:25" color="">}}




{{<matomeQuote body="Foldimateってまだちゃんと事業続いてるのかはっきりできる？ Wikipedia見たら事業たたんだって書いてあったけど、一部のウェブサイトではまだFoldimate売ろうとしてるみたいだよ。<br>Laundroidについては、16000（たぶんドルかな）は他のところでやってもらうより高いね。" userName="polotics" createdAt="2025/04/26 15:28:47" color="">}}




{{<matomeQuote body="これみたいに簡単なやり方で流体（空気）シミュレーションってできる？" userName="faeyanpiraat" createdAt="2025/04/26 11:17:52" color="">}}




{{<matomeQuote body="いや、流体シミュレーションはもっとずっと複雑だよ。でも、比較的簡単なSmoothed Particle Hydrodynamicsのデモならいくつかあるよ。" userName="diss" createdAt="2025/04/27 06:15:10" color="#45d325">}}




{{<matomeQuote body="すごくきれいだね、ロボットシミュレーションはこれみたいなのでメリットありそう。ロボット分野での布シミュレーションってまだかなりダメダメな状態だからね。" userName="sashank_1509" createdAt="2025/04/26 07:09:40" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
