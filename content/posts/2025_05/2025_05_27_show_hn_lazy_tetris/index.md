+++
date = '2025-05-27T00:00:00'
months = '2025/05'
draft = false
title = 'Lazy Tetris爆誕！一体どんなゲーム？'
tags = ["ゲーム開発", "プログラミング", "AI", "Web開発", "UI/UX"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> Lazy Tetris爆誕！一体どんなゲーム？

引用元：[https://news.ycombinator.com/item?id=44103839](https://news.ycombinator.com/item?id=44103839)




{{<matomeQuote body="みんな遊んでくれて＆たくさんの良い提案やコメントありがとう！週末にいくつか実装できそうだよ。例えばMulti bagとか、ゲーム終了時の自動クリアなし、ゲームリセット時のholdクリア、あと”LAZY PUBLIC DOMAIN BLOCK GAME”に改名とかね。使い勝手をもっと良くする必要もあるな〜。ghost pieceはクリックで有効だよ。俺は嫌いだからオフにしてるけどね。他にも回転とかundo, hold、移動、2本指DROP, 3本指HOLDとか、実は色々できるんだ。iOSだとホーム画面に追加で全画面アプリっぽくなるよ。”Tetris”（4ライン同時消し）すると秘密のギフトボタンが出るけど、俺の本へのリンクだけね。俺って魂のない金儲け主義者だからw ゲームはrosebud.aiとChatGPTで作ったんだ。これは俺が遊びたいように作ったゲームだけど、みんなが楽しんでくれてマジ嬉しいよ！" userName="admtal" createdAt="2025/05/27 12:40:09" color="#ff33a1">}}




{{<matomeQuote body="Multi bagは複雑すぎるかもね。TGMを参考にして、直近のn個のブロックのウィンドウを持たせて、m回リロールしてウィンドウにないやつが出るか、試行回数が尽きるまでやればいいと思うな。大体nは4でmは6かな。これは簡単で分かりやすいし、single bagみたいに予測しやすくもないよ。あと、最初のSとZが出にくいように、ウィンドウにSとZを2個ずつ事前にロードしとくとイライラしなくていいよ。" userName="jchw" createdAt="2025/05/27 19:54:40" color="#45d325">}}




{{<matomeQuote body="＞ Clicking on the ghost enables the ghost piece. I personally hate ghost pieces, and I always disable them, so because it’s my game, I have it off by default.<br>これマジ最高。自分のためにゲーム作って、他の人も楽しんでくれるならラッキーってスタンスね！<br>＞ Enter does HOLD<br>最初のHOLDする時にホーム画面に戻って確認したんだよね。クリックじゃ反応しなかったし。キー操作のリストを横に置くとか、”hold”って書いてある下に書くとかどう？<br>＞ If you get a “Tetris” (four line clear at once) a secret gift button appears, but it’s just a link to my book, because everything I do is soulless cash grab.<br>その本、マジで買っちゃうかも！サンプル見たけど面白そう。カードゲームにもできそうだね。<br>＞ This game is made specifically for me and how I like to play, and I’m glad others enjoyed it!<br>楽しかったよ！子供がいる人にはマジで良いね。途中でサッと止められるから。" userName="jedberg" createdAt="2025/05/27 18:21:42" color="#38d3d3">}}




{{<matomeQuote body="バグ報告です。ドラッグしてると、よくテキストが選択されちゃうんだよね。”read aloud”とか”create link”とかいうオプションが出て、そうするともうオブジェクトをドラッグできなくなっちゃうんだ。" userName="nashashmi" createdAt="2025/05/30 15:02:24" color="">}}




{{<matomeQuote body="公式のtetris.comの操作方法に合わせるのが良いアイデアだと思うな。" userName="sumnole" createdAt="2025/05/28 12:33:48" color="">}}




{{<matomeQuote body="あんたの作品マジで面白いね。これ見てよ、このクレイジーな小さいやつ（同じ人作）：https://passwordbasket.com" userName="keepamovin" createdAt="2025/05/27 07:15:09" color="">}}




{{<matomeQuote body="パスワードジェネレーターが面白いなんて、今まで考えたことなかったよ。考え変わったわ。マジで面白くあるべきだね。" userName="hoosieree" createdAt="2025/05/27 18:07:37" color="">}}




{{<matomeQuote body="それマジ最高。”passwordpassword”を生成しようとしてるのが楽しいんだよね。（誤解のないように言うけど、デフォルト設定で一番うまく行ったのがPa.sで、あとは意味不明な文字でイライラして再起動って感じw）" userName="furyofantares" createdAt="2025/05/27 23:24:00" color="">}}




{{<matomeQuote body="大爆笑しちゃって近所迷惑だったかも！！！ これマジ最高！！！" userName="izietto" createdAt="2025/05/27 10:31:26" color="#ff5c5c">}}




{{<matomeQuote body="どうもありがとう，それがまさに聞きたかった言葉だよ" userName="admtal" createdAt="2025/05/27 16:56:01" color="">}}




{{<matomeQuote body="ほんとに笑顔になれたよ！" userName="airstrike" createdAt="2025/05/27 19:34:46" color="">}}




{{<matomeQuote body="いいね，生成されたパスワードの文字が直接かごに行ったらもっと面白いかも．ほんのちょっと思いつきだけどね．あと，これThe Password Gameを思い出したよ：<br>https://news.ycombinator.com/item?id=36493715" userName="redbell" createdAt="2025/05/27 22:59:14" color="#38d3d3">}}




{{<matomeQuote body="パスワードを”生成”したとき，マジで爆笑して衝撃受けたよ．素晴らしい仕事だね．" userName="raydev" createdAt="2025/05/27 21:40:15" color="#ff33a1">}}




{{<matomeQuote body="おかげで笑顔になったよ．" userName="simlevesque" createdAt="2025/05/27 18:45:48" color="">}}




{{<matomeQuote body="これ絶対すごいわ" userName="neonwatty" createdAt="2025/05/27 23:28:41" color="">}}




{{<matomeQuote body="ちょっと遊んだけどL pieceが一つも出なかったよ．多分pieceをランダムに選んでる？ もっとストレス減らしたいなら，single bag systemを使ってもいいかもね（下のリンクと同じ，ページの一番下）．［１］ https://strategywiki.org/wiki/Tetris/Pieces＃L_piece" userName="hnlmorg" createdAt="2025/05/27 07:06:43" color="#38d3d3">}}




{{<matomeQuote body="素晴らしいアイデアだね，共有してくれてありがとう，multi bagを追加するよ" userName="admtal" createdAt="2025/05/27 07:11:52" color="#45d325">}}




{{<matomeQuote body="私もI pieceで同じだったよ，それでタイル１個分の隙間がある列を意地でも作り続けたんだ．最後にI pieceが出てきてクリアできた時は，もうめちゃくちゃ気持ちよかった！" userName="yreg" createdAt="2025/05/27 10:39:49" color="#ff5c5c">}}




{{<matomeQuote body="「tetris」ってスコアは、一度に4列消すと取れるんだぜ。" userName="abcd_f" createdAt="2025/05/27 11:01:21" color="">}}




{{<matomeQuote body="ちょっと変わったtetrisの実装の話だけどさ、俺はcosmopolitan libcベースのBraille displayユーザー向けtetrisクローン作ったんだぜ。つまり、ピースは横に「落ちる」感じで、ブロックは(unicode) brailleで表示されるんだ。<br>https://github.com/mlang/betris<br>@jartさんマジ感謝、cosmoはcross-platformなTUI作るのに超便利なんだよ。" userName="lynx97" createdAt="2025/05/27 07:39:31" color="#ff5733">}}




{{<matomeQuote body="昔一つ作ったことあるんだけど、just like normal Tetrisで、でもgravityに逆らってピースをupwardsに動かせたんだ。It actually doesn’t change the gameplay that much, because eventually you progress far enough that you just can’t push ’up’ fast enough, and gravity wins。" userName="alnwlsn" createdAt="2025/05/27 12:55:36" color="#785bff">}}




{{<matomeQuote body="gravityに逆らってピースをupwardsに動かせたってアイデア超好き！sometimes you just need a little time to figure out where you want to move/rotate it to." userName="Suppafly" createdAt="2025/05/27 21:58:27" color="">}}




{{<matomeQuote body="Pressing ’p’ to pause the game basically gives me the same cheatcode 笑" userName="lynx97" createdAt="2025/05/28 04:58:03" color="">}}




{{<matomeQuote body="Thx for the instant Radiohead earworm 笑" userName="Kaibeezy" createdAt="2025/05/29 05:06:03" color="">}}




{{<matomeQuote body="I love cosmo, thanks @jart for developing." userName="SuperHeavy256" createdAt="2025/05/28 12:42:57" color="">}}




{{<matomeQuote body="Lazy Tetrisをプレイしてて、startupsの仕事に通じる考えがいくつか浮かんだんだ。時間やgravity、undoがあっても、構造維持しつつ埋めにくい隙間を残す選択は簡単で、後でcruftになって取り除くのが大変になる。特定のpieceへの期待に構造をalignする心理は、いないかもしれないaudience向けにbuildingするのに似てる。有利でも自分でpaint yourself into a corner and failすることは十分あり得るんだ。Observeすればlearn a lotできるよ。" userName="enahs-sf" createdAt="2025/05/27 19:09:06" color="#45d325">}}




{{<matomeQuote body="Feature request：to make it even lazier show a preview of where the piece is going to end up when it lands, like a ghost image" userName="tantalor" createdAt="2025/05/27 12:05:42" color="">}}




{{<matomeQuote body="There is a ghost toggle on the right side." userName="fellowniusmonk" createdAt="2025/05/27 17:28:51" color="#ff5733">}}




{{<matomeQuote body="これめっちゃいいじゃん！ゲームにおける時間プレッシャーの役割とか、なんでその調整が超大事なのかがよくわかるよ。時間ありすぎると簡単になりすぎて、個人的には楽しくなくなっちゃった。それが天才的だわ！" userName="freeone3000" createdAt="2025/05/28 03:47:06" color="#38d3d3">}}




{{<matomeQuote body="結局”フルスクリーン”テトリスやろうとして自滅しちゃった。なんかいつも自分でストレスを足す方法見つけちゃうんだよな。" userName="irjustin" createdAt="2025/05/27 05:53:23" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="なんでそれがストレスなの？画面を埋めるパズルは楽しくてリラックスできると思うけど。でもいくつか改善してほしいな。テッペンでゲームオーバーにしないで、クリアできる行があるなら続けさせて。終わっても自動クリアしないでリセットボタンを付けてほしい。ホールドのリセットや拡大、スコア機能も欲しいな。リラックスと競争は両立すると思うんだ。時間プレッシャーは嫌だけど、時間があれば難しいパズルは大丈夫。ミスで進行を失わないならね。ゲームが終わる前に17段クリアなしで積めたよ！誰かこれ超えられる？:-)" userName="em-bee" createdAt="2025/05/27 10:43:31" color="#ff33a1">}}




{{<matomeQuote body="なんかこれ、人生の適切なメタファーになってるわ。" userName="op00to" createdAt="2025/05/27 11:47:18" color="">}}




{{<matomeQuote body="ピースを下に動かして正しい場所に置く方が好きだったな。もう一番下にあるピースを離したのに、さらに‘ドロップ’を押さなきゃいけないのはちょっとイライラするし直感的じゃないって感じたよ。一番下でドラッグを離した時に自動でドロップしてくれると良いね。最後に一言：楽しくてリラックスできる。" userName="heisenbit" createdAt="2025/05/27 12:00:03" color="#ff33a1">}}




{{<matomeQuote body="うわーこれめっちゃ良いアイデアじゃん。あとモバイルでの操作性が最高だったよ。勝手にズームしたり文字選択されたり変なスクロールとか一切なくて。ダウンロードしたアプリみたいだった。" userName="metayrnc" createdAt="2025/05/27 06:37:15" color="">}}




{{<matomeQuote body="すごいねこれ、でも俺たちの代わりにAIがプレイできるようにMCPインターフェースを追加するって考えたことある？ :-) :-)" userName="hansmayer" createdAt="2025/05/27 06:27:39" color="">}}




{{<matomeQuote body="冗談だって分かってるけどさ、 Puppeteer/Playwright MCP 使えるぜ。" userName="falcor84" createdAt="2025/05/27 09:18:56" color="">}}




{{<matomeQuote body="実は Playwright MCP があるなんて知らなかったわ。へぇ、じゃあやってみるべきかもね :-)" userName="hansmayer" createdAt="2025/05/27 09:29:46" color="">}}




{{<matomeQuote body="”lazy”っていう名前はなんか違う気がするな。ロー・ストレスって感じ？マジで楽しかったよ。" userName="stevage" createdAt="2025/05/27 10:06:58" color="">}}




{{<matomeQuote body="ちょっと警告しとくけど、The Tetris Companyは自分たちの商標保護にマジで積極的だよ。せめて名前は変えた方がいいけど、名前を使ってないTetrisクローン（例えばApotrisとかね）ですら訴えることあるんだ。ほら、GithubのDMCAページのリンクもあるよ。" userName="jsheard" createdAt="2025/05/27 09:58:53" color="#ff5c5c">}}




{{<matomeQuote body="Tetrisって商標全体には驚くべき歴史があるんだよね。貿易を許さない国から生まれて、協力の賜物って感じ。そういう歴史を知ってると、ゲームプレイが似てるだけの“クローン”を追いかけるのは間違ってると思うし、本人たちも分かってるはずだよ。<br>Hasbroが昔Scrabbleのクローンを訴えた時も、裁判所はゲームプレイじゃなくて見た目とか名前しか保護できないって判決を下したらしいしね。これは過去に解決済みの問題なんだ。" userName="ddtaylor" createdAt="2025/05/27 10:53:14" color="#785bff">}}




{{<matomeQuote body="なんか法律上の変なトリックなんだよね。彼らはTetrisのゲームプレイそのものを所有できないし、実際できないんだけど、ゲームの“見た目”（trade dress）が自分たちのものだって裁判で主張して成功してる。実際、Tetrisのゲームプレイをちゃんと実装しようとすると、どうしても結果的にTetrisっぽく見えちゃうんだよね。<br>TTCはOracleのあのミームみたいに、存在意義の9割は『許可なくTetrisのクローンとか派生ゲーム作るなよ！』って人びびらせて、永久に利用料を取り続けることなんだよ。<br>あのミームこれね：globalnerdy.com/2011/07/03/org-charts-of-the-big…" userName="jsheard" createdAt="2025/05/27 10:59:40" color="#38d3d3">}}




{{<matomeQuote body="『Tetris』っていう名前とか（〜trisって名前もね）の商標とかtrade dressだけじゃなくて、裁判所では『ルックアンドフィール』も著作権で保護されるって主張して成功してるんだ[1]。あの裁判で、Tetris Holdingは7種類のテトリミノを使うこと自体が著作権の一部だって主張して、裁判官もそれに同意したんだよ。<br>この裁判で、唯一保護されないって認められたTetrisのゲームプレイの核心部分はこれだけ：<br>ユーザーが落ちてくる四角いブロックでできたピースを操作して、積まれた部分に合わせて回転させて、横一列になると消えてポイントがもらえる。これがTetrisの抽象的なアイデアで、これと切り離せない表現要素は著作権で保護されないってさ。<br>[1] Tetris Holding, LLC v. Xio Interactive, Inc. (2012) の判例。" userName="wgjordan" createdAt="2025/05/27 16:19:12" color="#ff5733">}}




{{<matomeQuote body="免責事項：俺はXio側の人間で、色とかグラフィックはゼロからPhotoshopで描いて（ボランティアで友達の会社手伝ってた）、この裁判で証言とかもさせられたんだ。<br>理論的にはTetris Companyの主張は間違ってるよ。彼らが“trade dress”だって言う特徴は、ゲームルールの明確な部分であって飾りじゃないし、Xioのゲームはプレイ感も見た目もかなり違ってた。まともな裁判官なら、主張を見抜いて却下するべきだったんだ。<br>でも実際には、裁判官は個人的な偏見（見た目が“丸パクリ”だとか“オリジナリティゼロで人の創造性を盗んでる”だとか）で即断して、ルールじゃなくて“表現”だって判断するんだよ。“Xioは同じ7個じゃなく違う形のピースでパズルゲーム作ればよかった”とかね。法の文字や精神を無視して、結論から判決文書を書くんだ。今のところ、大金持ちじゃないとこの判決を上訴して覆すのは難しすぎるってわけ。" userName="jacobolus" createdAt="2025/05/28 02:58:41" color="#ff5733">}}




{{<matomeQuote body="うん、そう思う。あの判決はまるでゲーム開発を知らない人が、金がある方の言い分を鵜呑みにして後付けで理屈つけたみたいだったよね。<br>一番驚いたのは、アイデアと表現の区別っていう法的な考え方を、ゲームデザインには機能や目的がないって暗黙のうちに前提することで、めちゃくちゃに歪めたことだよ。テトリミノとか盤面の幅みたいなゲームの核心的なルールが“表現”とか“勝手につけた飾り”にされちゃって、保護されない“アイデア”は、落ちてくるブロックパズルゲームっていう、漠然としててなんだか分からない抽象的な概念だけになっちゃったんだ。<br>Xioは確かにテトリミノなしで、下＋横＋回転移動なしで、10x20の盤面なしでパズルゲームを作ることはできた。それはもうTetrisじゃなくて、全然別のゲームのルールになるだろ。" userName="wgjordan" createdAt="2025/05/28 09:04:29" color="#785bff">}}




{{<matomeQuote body="＞ TTCはゲーマー版Oracleみたいなもん<br>ブログスパムじゃなくてオリジナルアーティストへのリンクはこっちだよ：bonkersworld.net/organizational-charts" userName="teddyh" createdAt="2025/05/27 12:17:13" color="">}}




{{<matomeQuote body="だから俺が作ったTetris亜種では、一度も“T”の単語を使わないようにしてるんだよね。ihopethisisfun.franzai.com/" userName="franze" createdAt="2025/05/27 10:45:29" color="">}}




{{<matomeQuote body="彼らが狙うのは名前だけじゃなくて，形もだよ．でも，収益化したり人気になったりしなければ大丈夫だと思うな．" userName="rplnt" createdAt="2025/05/27 12:41:22" color="">}}




{{<matomeQuote body="名前が一番大事で，ゲームを見つける手がかりになるんだ．でも実際は，同じゲームプレイで人気があって，DMCAテイクダウンしやすいプラットフォームでホストされてるやつを狙うことが多いよ．これは公式方針じゃないけど，何度もそうなるのを見て分かるんだ．TETR.IOやJstrisはめちゃ人気なのに何年も大丈夫なのは，他のプラットフォームにないから．ApotrisもGithubとitch.ioでテイクダウンされたけど，自サイトに移したら人気でも2年何もされてないんだ．" userName="akouzoukos" createdAt="2025/05/28 05:31:19" color="#ff5733">}}




{{<matomeQuote body="その形はテトロミノって呼ばれてて，正方形4つが直交につながったものだよ．テトリスっていうゲームは，ペントミノ（正方形5つ）で作られて，テトロミノにスケールダウンされたんだ．このゲームは，長方形をその形のパズルで埋める物理パズルにインスパイアされたらしい．だから，これらの形はテトリスより前から存在してたってことだね．彼らは形を狙うかって？可能性はあるよ．”Tetris Holding, LLC v. Xio Interactive, Inc.”を見てみるといいよ．" userName="silveira" createdAt="2025/05/27 17:28:48" color="#ff5c5c">}}




{{<matomeQuote body="覚えているのはOMGPopのBlocklesっていう，すごいマルチプレイヤーのテトリスにインスパイアされたゲームだよ．法的脅威があって，2009年に取り下げたらしいんだ．" userName="rplnt" createdAt="2025/05/27 19:08:09" color="">}}




{{<matomeQuote body="形の色がオリジナルと一致する特定の組み合わせは，商標権の領域に入りうるんじゃないかと思うな，だってその色がゲーム内で必須ってわけじゃないからね．" userName="mNovak" createdAt="2025/05/28 02:13:28" color="#38d3d3">}}




{{<matomeQuote body="それって変だよね，だって形はただのアイデアで，アイデアは著作権保護されないからさ．商標権侵害にもならないはずだよ（弁護士じゃないけどね），もしブランディングに使ってないならさ．" userName="GolDDranks" createdAt="2025/05/27 14:34:00" color="">}}




{{<matomeQuote body="＞you can’t copyright ideas＜br＞彼らはどんなことでも訴えてくる可能性があるんだよ．それが法廷で通用するかどうかは別の話だけど，君がきっとそれを試したがらないだろうっていう事実に彼らは期待してるんだ．" userName="selcuka" createdAt="2025/05/28 01:29:48" color="#ff5c5c">}}




{{<matomeQuote body="うん，残念ながらリーガルトローリングって実際にあるんだよ．" userName="GolDDranks" createdAt="2025/05/28 08:45:06" color="">}}




{{<matomeQuote body="一つのプロジェクトにある一連の形が，それをテトリスにしてるんだよ．だから，一つの製品の中に複数のコピーされたアイデアの組み合わせがあるって考えると，それが法的な問題になるってことだね．" userName="nashashmi" createdAt="2025/05/27 15:48:40" color="">}}




{{<matomeQuote body="彼らはメカニクスじゃなく商標侵害を主張してるんだ。落ちてくるテトロミノがあったらTetrisと混同されるかも、って考えみたい。違う形を使えば大丈夫だよ。" userName="rplnt" createdAt="2025/05/27 16:05:05" color="#ff33a1">}}




{{<matomeQuote body="それは聞くの辛いね。なぜ彼らがそうしたかは分かるけど、気にしてる人は誰も彼らの商標にお金を使いたがらなくなるだろうな。" userName="jwrallie" createdAt="2025/05/27 13:54:29" color="">}}




{{<matomeQuote body="GitHubが受け取ったDMCAテイクダウン通知を全部こうやって公開してるのクールだね。見ていくの面白いよ。" userName="kelseydh" createdAt="2025/05/28 05:36:44" color="">}}




{{<matomeQuote body="このプロジェクト名からtで始まる単語（Tetrisのこと）を外すのおすすめするよ。" userName="ggoo" createdAt="2025/05/27 06:09:28" color="#45d325">}}




{{<matomeQuote body="幼児と遊んでるTetrisのボードゲーム版があって、低ストレスでこのゲームみたいだよ。マルチプレイで、次のピースはカードで決まる。スライドはできないけど超おすすめ！" userName="cshimmin" createdAt="2025/05/27 17:36:52" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="いいね！Nintendo Wiiのロビーみたいな音楽足したらもっとチルくなるよ。ちなみにTETR.IOのZen modeでGravity 0、Levelingオフでも同じようなことできるよ。" userName="vunderba" createdAt="2025/05/27 04:23:57" color="#45d325">}}




{{<matomeQuote body="undo機能はドロップした場所に戻してほしいな。あと、プレイ見てアドバイスくれるトレーニング機能がマジで欲しいんだよね。「Lピースはいつも横向きで置いてるけど、プロはXにしてYを達成するよ」みたいな。" userName="bramvanleur" createdAt="2025/05/27 07:42:08" color="#45d325">}}




{{<matomeQuote body="最近Steamに出たTetris the Grand Master 4にトレーニングモードがあって、ピースの置き場所教えてくれるんだ。CPUの目標も選べるよ。速くなると無理だけど良い機能。あとTetrisの基本はピース置き場の可能性を最大化、依存を最小化、穴の上に積みすぎない、可動性意識で、「平らに、でも平らすぎず」って感じ。" userName="PetitPrince" createdAt="2025/05/27 11:16:53" color="#ff5c5c">}}




{{<matomeQuote body="この雰囲気ってAIがコード書いたの？君の返信や投稿履歴見るとそう思うんだよね。君のコメントもAI生成だと思うよ。たとえばこれとか自分で投稿して”AI generated garbage”はやめろって言ってるし。" userName="the_af" createdAt="2025/05/27 11:54:21" color="">}}




{{<matomeQuote body="うん、スマホでrosebud aiとかChatGPT使って雰囲気でコード書いたんだ。<br>でもマジでコード書けるから！ただ遊んでただけだって！" userName="admtal" createdAt="2025/05/27 13:05:59" color="">}}




{{<matomeQuote body="ちょっと前に自分で投稿したHNに自分で書いたこのコメント、説明してくれない？（自問自答？）<br>＞”Adam、本おめでとう、でもAIが作ったゴミでこの掲示板をスパムすんのやめて”<br>もし上のコメントがキツく聞こえても、俺が書いたんじゃないよ。君が書いたんだ...自分で自分に返信してね！正直LLMでコメント書いてて混乱したみたいに見えるけど。" userName="the_af" createdAt="2025/05/27 15:58:45" color="#38d3d3">}}




{{<matomeQuote body="投稿も返信もマジで自分で書いたんだ。<br>精神的にちょっとダメで、オンラインでめっちゃ注目されたかったんだよね。<br>なんであんなこと書いたのか自分でも考えてるんだけど、自分なりにユーモアのつもりだったのかも。" userName="admtal" createdAt="2025/05/27 23:01:30" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃ良いアイデアじゃん、フルスクリーンクリアまでプレイしたよ！マジで気に入ったんだけど、回転キーが一つなのはちょっと困るな。時計回りと反時計回りで別のキーにした方が良いと思う。<br>あと、7-bagとか7BRみたいなシングルバッグのランダム化アルゴリズムもお願い。NES Tetrisみたいに落ち着いてできるよ。ゴーストピースも追加して（ドロップした場所表示ね）。<br>他の人も言ってるけど、「-tris」は避けるべき。俺の好きなTetrisクローンはShirominoって名乗ってる。Slo’minoみたいに遅さを強調するとか？きっと良い名前を考えられるって！<br>なんか色々言っちゃってごめんね、これはすごく楽しいアイデアで、プレイしてて楽しかったよ！" userName="ilker2495" createdAt="2025/05/27 11:54:49" color="#38d3d3">}}




{{<matomeQuote body="タイトル読んでマジで数分間爆笑しちゃった。<br>普段から言ってる「ビジネスはチェス、人生はTetris」って格言を思い出したんだけど、もう全然クールじゃないなって思ったよ。<br>近いうちに最初のピースを下に動かしてみるね。" userName="Brajeshwar" createdAt="2025/05/27 09:20:36" color="">}}




{{<matomeQuote body="妻に送ってみたら、スワイプするとページプレビューが出ちゃってピース動かせなかったらしいんだ。<br>このデフォルトの動作を無効にする方法いくつかあるから、それを追加してくれると良いかもね。" userName="simonmysun" createdAt="2025/05/27 20:18:43" color="#ff33a1">}}




{{<matomeQuote body="プレビューウィンドウをロックするにはどうすればいいの？" userName="admtal" createdAt="2025/05/27 21:13:11" color="">}}




{{<matomeQuote body="いいね。でも、ページ説明に”ストレスフリー、メモリ最適化された3D Tetrisバリアント”って書いてあるんだけど、どこが3Dなのか全然わかんないんだけど。" userName="Arcorann" createdAt="2025/05/27 11:11:44" color="#38d3d3">}}




{{<matomeQuote body="ハハ、それ見落としてたわ。多分AIが書いたんだよ。<br>three JSライブラリ使ってるから3Dだって思ってるんでしょ。あと俺がパフォーマンス最適化のアイデア求めてたからかな。" userName="admtal" createdAt="2025/05/27 11:36:46" color="">}}




{{<matomeQuote body="これマジでクールだね！うちの子たちは俺がTetrisやるの見るのは好きなんだけど、ゲームのスピード（最初から速いらしい）が理由で自分たちではやらないんだ。" userName="acjohnson55" createdAt="2025/05/27 14:34:20" color="">}}




{{<matomeQuote body="楽しいね！消すためのキーボードショートカットって追加できる？" userName="alana314" createdAt="2025/05/27 06:59:24" color="#ff33a1">}}




{{<matomeQuote body="それ、すごくいいアイデアだね。たぶん明日追加するよ" userName="admtal" createdAt="2025/05/27 07:05:25" color="#ff5c5c">}}




{{<matomeQuote body="最初プレイした時、バカっぽいと思ったけど、ストレスなく遊べるのが気に入っちゃった。面白いコンセプトだね" userName="lorikmor" createdAt="2025/05/27 08:43:32" color="#ff5c5c">}}




{{<matomeQuote body="Ctrl-Uでソースが見れて、しかもブラウザで直接読めるソースがあるって最高だね！" userName="onehair" createdAt="2025/05/27 15:51:15" color="">}}




{{<matomeQuote body="最初たまたま縦長の棒（ラインピース）が4連続出てきて、これってラインピースだけのテトリスなのかと思ったよ 笑" userName="aronhegedus" createdAt="2025/05/27 08:13:37" color="">}}




{{<matomeQuote body="これ大好き！思ってたより時間使っちゃった。これ、ネイティブのモバイルゲームにした方がいいよ" userName="sali0" createdAt="2025/05/27 06:20:17" color="#38d3d3">}}




{{<matomeQuote body="この手のシンプルなゲームはウェブとかPWAのままで完璧な気がするけど、ネイティブアプリにするメリットって何だと思う？" userName="cube00" createdAt="2025/05/27 06:24:36" color="#ff33a1">}}




{{<matomeQuote body="スマホでアプリとしてサッと立ち上げられるといいね。PWAも良いと思う。でも主な理由は、開発者がマネタイズできることかな。これなら数ドル喜んで払うよ" userName="sali0" createdAt="2025/05/27 06:49:38" color="#38d3d3">}}




{{<matomeQuote body="マネタイズ" userName="solumunus" createdAt="2025/05/27 07:50:04" color="">}}




{{<matomeQuote body="5秒おきに画面を塞ぐ広告が出てきたりする？笑" userName="johnisgood" createdAt="2025/05/27 10:14:51" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
