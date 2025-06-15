+++
date = '2025-06-08T00:00:00'
months = '2025/06'
draft = false
title = 'Cloudflare製AIコードのOAuthライブラリを覗く'
tags = ["AI", "プログラミング", "OAuth", "セキュリティ", "ライブラリ"]
featureimage = 'thumbnails/purple2.jpg'
+++

> Cloudflare製AIコードのOAuthライブラリを覗く

引用元：[https://news.ycombinator.com/item?id=44215667](https://news.ycombinator.com/item?id=44215667)




{{<matomeQuote body="＞LLMを使うにはたくさんの知識が必要だってことがよく分かるやり取りだね。”one big flaw”とか、暗号コードに経験があるエンジニアじゃなきゃ見抜けなかっただろうし、PBKDF2に急に移行した理由も多くの人は疑問に思わなかったかも。 competent reviewer、言うなればリーダーの立場だとLLMを効率的に使えるってのが、俺にとっての一番の学びだよ。主題をLLMと同じくらい知らなきゃ、大事じゃないことに使うか、全部疑って検証する時間がないとダメだね。" userName="afro88" createdAt="2025/06/08 11:15:42" color="#ff5733">}}




{{<matomeQuote body="この勇敢な新しい世界で、一体どこからドメインエキスパートが出てくるんだろう？誰がこの手の知識を持つようになるのかな？" userName="donatj" createdAt="2025/06/08 11:47:26" color="">}}




{{<matomeQuote body="LLMのおかげで新しいことを学ぶのがめちゃくちゃ簡単になったよ。俺はLLMをたくさん使って、色んな分野の新しいことをすごいペースで学んでる。LLMに盲目的に丸投げするなんて、極論で議論を混乱させてるだけ。OAuthに詳しくない人がLLMサポートだけでOAuthライブラリを開発するなんて…それは間違ってる。やっちゃダメ。でも、学ぶ意欲があるなら、LLMはまさにロケット燃料だね。" userName="svara" createdAt="2025/06/08 12:03:32" color="#38d3d3">}}




{{<matomeQuote body="逆にね、昨日一般的な8層PCBの積層構成を知りたかったんだけど、ChatGPTの答えが全然ピンとこなかったんだ。ちょっとググってみたら、上位の結果のほとんどがAI生成で、実際の経験やアドバイスが全然なくて、マジでイライラしたよ。" userName="junon" createdAt="2025/06/08 12:21:37" color="#ff5c5c">}}




{{<matomeQuote body="LLMは事実20個に対して、1つか2つは嘘をつくよ。学ぶには大変なやり方だね。URLすら正しく書けないし…。" userName="belter" createdAt="2025/06/08 12:41:47" color="">}}




{{<matomeQuote body="これが俺の大きな恐れだよ。一般的じゃない情報が、今よりもっと見つけにくくなる世界に終わりそう。" userName="roxolotl" createdAt="2025/06/08 12:39:37" color="">}}




{{<matomeQuote body="インターネット以前の暗黒時代みたいになるけど、もっとたちが悪いね。あの頃は情報が見つからなかっただけ。今は情報が無限に見つかるけど、全部間違ってるんだよ。" userName="andersa" createdAt="2025/06/08 13:04:42" color="">}}




{{<matomeQuote body="「分からないことだけLLMを使う。専門家なら自分でやる方がいい」って言う人を聞くと戸惑うんだよね。出力を効果的にレビューできる能力に加えて、ドメインの専門家みたいに詳しく何が欲しいか説明できるほど、LLMの出力が良くなることに気づいたよ。統計的なテキスト生成エンジンなんだから、これは別に驚くことじゃないね。" userName="marcusb" createdAt="2025/06/08 11:32:09" color="#ff33a1">}}




{{<matomeQuote body="＞LLMs make learning new material easier than ever. これについてだけど、学習でも同じリスクにさらされるんじゃない？LLMの典型的な盲点が、学習支援にも開発支援にも現れて、未知の未知（unknown unknowns）を相殺しちゃうことにならない？それとも、俺の考え方おかしいかな？" userName="elvis10ten" createdAt="2025/06/08 12:39:09" color="#45d325">}}




{{<matomeQuote body="うーん、これって90年代後半に「誰でもネットに情報載せられるから、オンラインで読むものを信用しちゃいけない」ってよく聞いた話に似てるね。結局、みんなうまくやっていけてるじゃん。何も盲目的に信用しちゃダメなんだよ。読むものも、人が言うことも。LLMを効果的に使うのもスキルだし、それはいつどうやって情報を検証するかを決めることも含まれるんだ。" userName="svara" createdAt="2025/06/08 13:10:56" color="#ff5733">}}




{{<matomeQuote body="LLMでk8sデプロイしたら、秘密情報をクリアテキストで出しちゃったりして危なかったんだよね。セキュリティを無視したチュートリアルとかで学習してるせいかも？って思うよ。" userName="ajmurmann" createdAt="2025/06/08 11:59:10" color="#ff5c5c">}}




{{<matomeQuote body="LLMを鵜呑みにするのはダメだけど、正しい使い方なら効果的だよ。高品質な情報源で学んで、LLMには要約、学習計画、テストとか作らせるのがいいんだ。開発もTDDみたいに人間がステップごとに見れば効率アップ！いきなり全部任せられるわけじゃないから、まだ人間も必要ってことだね。" userName="sulam" createdAt="2025/06/08 12:53:31" color="#ff5c5c">}}




{{<matomeQuote body="LLMが嘘つくって言うけど、学校の先生も間違いあったよね。でも、先生に反論すると罰せられたけど、LLMは感情なく説明したり訂正したりしてくれるのが違うとこだよ。URLを間違えるのも人間だってやるしね。" userName="diggan" createdAt="2025/06/08 12:48:53" color="">}}




{{<matomeQuote body="数年後にはAIレビューアが人間よりずっと信頼できるようになると思うよ。チェスとか機械視覚みたいにね。AIの進化ってだいたいそんな感じだし。ソフトウェア開発もこれで品質上がってコスト下がるだろうな。" userName="kypro" createdAt="2025/06/08 12:29:56" color="">}}




{{<matomeQuote body="他のことでも専門家に任せるのが普通なのに、LLMだってそうなるでしょ。車とか家とか、自分で仕組みを知らなくても専門家に任せるのと同じように、みんな知らないことはLLMに任せて、AIがうまくやっただろうって思うようになるんじゃないかな。" userName="_heimdall" createdAt="2025/06/08 12:16:49" color="">}}




{{<matomeQuote body="いつも同意して褒めてばかりで、間違いを指摘してくれないAIからどうやって学べるんだ？ユーザーに迎合するように訓練されてるんだろ？人は間違いを指摘されないと学習できないのに。" userName="blibble" createdAt="2025/06/08 12:37:54" color="">}}




{{<matomeQuote body="AIの間違いと人間の先生の間違いは質が違うことを無視してるよ。教室で先生に反論して間違えても、「ごめん、君が正しいよ」なんて先生は言わないでしょ？間違いの訂正のされ方が違うんだよ。" userName="belter" createdAt="2025/06/08 13:23:25" color="">}}




{{<matomeQuote body="一番大事な質問だよね。30年後、人類が完全にAI頼りになったら、人間からの新しいアイデアやイノベーションは生まれなくなるのかな？" userName="shswkna" createdAt="2025/06/08 11:55:36" color="">}}




{{<matomeQuote body="LLMから学ぶのはJoe Roganから学ぶのに似てて、深い理解がないのに表面的な情報で自信を持っちゃうから危ないんだよ。イギリスの法律界でも、AIがでっち上げた判例を引用しちゃって大問題になってるらしいよ。みんな盲目的にAIに任せすぎなんだ。" userName="threeseed" createdAt="2025/06/08 13:54:22" color="#38d3d3">}}




{{<matomeQuote body="AIが進化して人間を超えるには、ソフトウェアの品質をチェスみたいに測れるようにしないとダメだと思うな。そうすれば合成データでモデルをどんどん良くできるでしょ。でも、まだそんな段階じゃないんじゃないかな。" userName="sarchertech" createdAt="2025/06/08 12:52:48" color="">}}




{{<matomeQuote body="＞なぜLLMだと違うんだ？<br>LLMは人生のアウトソース先になるような有能な専門家じゃないからだよ。LLMは常にデタラメな答えを出す統計エンジンなんだ。正しい答えを「知って」ても（重みの中に隠れてても）ね。知ってる分野なら自分で検証した方がずっと速くて効率的だと思うけど、君はどう？" userName="marcusb" createdAt="2025/06/08 15:53:21" color="">}}




{{<matomeQuote body="うん、自分が間違ってる時に先生が同意しないのは当たり前だよ。そんなこと聞いてない。言いたかったのは、先生が間違えてて訂正を拒否する場合の話だって、ハッキリ言ったつもりなんだけど。" userName="diggan" createdAt="2025/06/08 13:42:43" color="">}}




{{<matomeQuote body="＞私の場合はトレーニングデータが原因で<br>君のシステムプロンプトが弱いのが原因だと思うよ。特定のモデルに合わせてコーディングとかインフラ作業用のシステムプロンプトを少しずつ育てていけば、どんどん良い応答が得られるようになる。コードに平文のクレデンシャルが入るなら、そうしないようにプロンプトに追加すればいい。LLMは指示した通りに動くから、指定しないと確率に任せるけど、詳しく指定すれば操れるんだ。HNでよく議論してる、すごく文字通りで理屈っぽいエンジニアと話してると思って、言葉をめっちゃ正確にするイメージだよ。これで大体80％はいけるんじゃないかな :)" userName="diggan" createdAt="2025/06/08 12:21:18" color="#38d3d3">}}




{{<matomeQuote body="＞代わりに高品質なソースを使い、LLMに要約させるのが始めには良い（例えばNotebookLMは得意だけど、他のもできる）。<br>ソースを読んでないのに、LLMが高品質ソースの内容を正確に反映してるかどうやって判断するの？人間から学ぶときは、信頼のネットワークに基づいて信じるけど、LLMの信頼度はどうやって測るの？" userName="evnu" createdAt="2025/06/08 13:12:12" color="">}}




{{<matomeQuote body="人間の先生やオンライン教材だって、20個に1つくらいは（どんなに小さなことでも）嘘つかないって言ってるの？何か比較したことある？" userName="signatoremo" createdAt="2025/06/08 13:24:19" color="">}}




{{<matomeQuote body="＞まあ、なんとかなるんだよ。<br>インターネットは偽情報で社会をめちゃくちゃにしたじゃん。文字通りの戦場だよ。どうやったらそんな結論にたどり着けるの？" userName="closewith" createdAt="2025/06/08 20:05:11" color="">}}




{{<matomeQuote body="＞深い理解のない存在から、様式化された視点を得ている<br>これって子供が学ぶ方法じゃない？もちろん、父親がマケドニア王様なら別だけど。" userName="diogocp" createdAt="2025/06/08 15:18:37" color="">}}




{{<matomeQuote body="ちょっとしたスキルだね。間違った理解をするリスクは、どんな学び方でも同じで、LLMが他の方法より高いとは感じないな。確かに、色んな分野の専門家から個人的に教えてもらうのが一番だけど、現実的じゃない。僕が思うのは、よく知ってる分野内の新しい領域を調べるなら、LLMの言うことを考えながら検証するだけで十分ってこと。内部矛盾を探したり、既に知ってることと照らし合わせたりできるから。新しいトピックでも、質問が浅いなら、訓練データに多い答えだから自信持てる。ニッチで詳細な新しいトピックなら、まずLLMで概要掴んで、具体的なソースを教えてもらって、権威ある資料を読むアシスタントとして使うんだ。" userName="svara" createdAt="2025/06/08 13:17:22" color="#ff33a1">}}




{{<matomeQuote body="それは場合によるかもね。時々、提供されたブラックボックスコードを理解する必要はなく、要件内で動けばいい場合があるんだ。例えば、僕は数学が超苦手だから、数学が多いコードを書くのが難しい。LLMと一緒にコーディングする時は、関数に期待する結果を単体テストでたくさん書いて、短い説明と一緒にLLMにあげるんだ。関数ができたらテストを実行して、パスすればOK。関数が内部で何してるか100％は分からなくても、何を入力して何を出力するかは理解してるし、多くの場合それで十分なんだ。（主にゲームで数学が必要になることが多いから、人命に関わることには使わないけどね）。会社で自分より賢い人と働く場合も、LLMがあろうとなかろうと、結局こうなることが多いんだ。ただ、将来的にその数学コードを変更する必要が出た場合、理解と変更のためにLLMを使わざるを得なくなるのは、正直あまり良い気分じゃない。でも、やらないという選択肢もあるから、これもまたトレードオフだと思う。重要なことにはこのアプローチは使わないけど、ユーティリティ関数とかには良いかな。" userName="diggan" createdAt="2025/06/08 12:17:35" color="#ff5733">}}




{{<matomeQuote body="＞有能な専門家<br>LLMが有能な専門家じゃないと主張するなら、かなり明確な定義が必要だね。結局、LLMがそうじゃないってことには同意すると思うけど、多くの人間だって金もらってても有能な専門家じゃないし、もっと重要なのは、自分自身がある程度そのトピックに詳しくないと、有能な専門家かどうか見分けられないってことだよ。僕が言いたかったのは、人は昔から、しばしば会ったこともない他人にアウトソースしてきた長い歴史があるってことなんだ。全く分からないことでも、やる人が分かってるはずだと信じて任せてきた。人々はLLMに対しても同じ見方をするようになるんじゃないかなと僕は思ってる。" userName="_heimdall" createdAt="2025/06/08 18:52:49" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LLM動かすには知識いるけど、その知識自体をLLMから学ぶとしたら、この状況長く続かないかもね。<br>ってことかな？" userName="a13n" createdAt="2025/06/08 15:54:05" color="">}}




{{<matomeQuote body="最近、AI使ってGoでKafka consumer書いたんだ。2倍速くなったけど、Kafkaとか並列処理知ってないと絶対見落とすバグが4つ以上あったよ。<br>長く使うコードだと10〜20%の改善かな。<br>PMがコード書く時代は来ないと思うけど、微妙なバグ見つけられない中堅が増えそうで怖いな。<br>ベテランのレビューも追いつかないだろうし、ジュニア育成も心配だよ。<br>市場が解決するだろうけど、何十年もかかるかもね。" userName="sarchertech" createdAt="2025/06/08 12:33:26" color="#45d325">}}




{{<matomeQuote body="そうそう、AIが書いたバグってほんと厄介なんだよね。<br>俺もAIに書いてもらったマルチスレッドのコードで微妙なバグ出しちゃったことあるよ。<br>レビューやテストだけじゃ、手で書いた時みたいな細かいチェックはできないんだ。<br>AIに書かせるなら、バグっても影響少ないコードにしなきゃダメだね。" userName="awfulneutral" createdAt="2025/06/08 13:50:48" color="">}}




{{<matomeQuote body="10〜20%の改善ってのは、俺の「大事な」仕事での経験とも同じだな。<br>確かに良くなったけど、ソフト開発のやり方自体を変えるほどじゃないね。<br>ブルックスの「銀の弾丸はない」がまた当たった感じだ。" userName="skeeter2020" createdAt="2025/06/08 14:02:53" color="">}}




{{<matomeQuote body="「中堅の技術的な竜巻」って話、まさにそれ！<br>特にコンサルだと、若い方が速いからベテランはお金かける価値ないって思われがちだよね。<br>俺も昔はベテランを馬鹿にしてたし、今はなんで簡単な解決策じゃダメなのかPMに分かってもらうのに苦労してるよ。<br>大事なコードも安い人が短期で書いてる。<br>これLLMの前から問題だけど、今のコンサルはセキュリティ気にするエンジニアには地獄だろうね。" userName="electromech" createdAt="2025/06/08 20:51:28" color="#ff5c5c">}}




{{<matomeQuote body="テスト可能なコードをAIに作らせるのはどうかな？<br>生成コードのバグを人が見つけるんじゃなくて、AIが作ったテストケースで見つけるってのは？<br>テストコードもバグるけど、将来は生成コードじゃなくてテスト結果だけチェックするようになるかもね。" userName="murukesh_s" createdAt="2025/06/08 14:14:01" color="">}}




{{<matomeQuote body="AIはそれっぽいコード書いて、テストパスするように訓練されてるんだ。<br>悪意ある人がテストをすり抜けようとするのを防げるテストケースって、作ったことある？<br>テスト書くAIは問題をちゃんと理解してなきゃいけないけど、コード書くAIにはいくらでも微妙なバグを作る選択肢があるんだよ。" userName="sarchertech" createdAt="2025/06/08 17:36:35" color="#785bff">}}




{{<matomeQuote body="Complicated parallelization？それってpartitionsとconsumers/consumer-groupsのためにあるんじゃないの？" userName="LgWoodenBadger" createdAt="2025/06/08 14:04:17" color="">}}




{{<matomeQuote body="もちろんそうだよ、でも俺がproducerを制御してるわけじゃないから。" userName="sarchertech" createdAt="2025/06/08 17:25:59" color="">}}




{{<matomeQuote body="producerはpartitionsの数気にしないし、知らないもんだよ。自分でpartitioning algorithm使うとき以外はね。<br>topicsのpartitionの数は後から変えられるんだよ。" userName="LgWoodenBadger" createdAt="2025/06/08 19:16:46" color="">}}




{{<matomeQuote body="この場合、僕たちが気にする特定の順序付けの保証があるから、独自のパーティショニングアルゴリズムを使う必要があったってことだろうね。" userName="sarchertech" createdAt="2025/06/08 21:26:41" color="">}}




{{<matomeQuote body="じゃあ別のトピックに書き換えよう。いや、やっぱ複雑なマルチスレッドの方が良さそうだ。" userName="LgWoodenBadger" createdAt="2025/06/09 01:38:19" color="">}}




{{<matomeQuote body="それだけじゃないんだ。パーティション内でも全体的な順序は気にしない。あるメッセージは特定のサブセットのメッセージが送られるまで送っちゃいけない場合がある。<br>それに、下流の特定のリソースへの負荷も制御したいんだけど、これは必要なパーティションと関係ないんだ。だから、入ってくる速度に応じてリソースごとに並列度を動的に変えたいんだ。<br>コンシューマー同士の通信でやる方法もあるけど、それだと新しいコンシューマーとか制御システムが増えることになる。<br>既存のトピックから1つのコンシューマーが読んでgoroutinesを生成する方が、動的な制御や即時スケール、スレッド間の通信が簡単だから、全体的に楽だったんだ。" userName="sarchertech" createdAt="2025/06/09 13:39:45" color="#ff5c5c">}}




{{<matomeQuote body="自分でやるのがいいって最後の段落に同意するよ。人間は考える時に近道する傾向がある。完成品に似たものを見ると、それに対してずっと批判的じゃなくなる。見た目は、コードの問題点を見つけるのにすごく重要だよ。これは、コード変更にバグを仕込んでレビュアーが見つけられるか試せば分かる。<br>自分で書く時は、ゆっくり考えて詳細に注意を払う状態になる。これは、普段考えないバグに気づくってことだ。だから、ツールのオモチャバージョンを自分で書くことを勧めるんだ。自分で書くことは、資料を読むだけよりずっとよく教えてくれるからね。これは認知がどう働くかに関係してる。" userName="aiono" createdAt="2025/06/08 11:25:09" color="#38d3d3">}}




{{<matomeQuote body="ほとんどのコードレビュアーが見た目が良いコードの微妙なバグを見つけるのが下手だってことには同意する。<br>僕はコードレビュー経験が豊富で、うんざりするほどだ。それが僕を皮肉屋にして、何も信じなくなった。たくさんバグを見てきたからね。だから一行ずつレビューしてシミュレーションして問題を見つける。それが嫌いだ、時間かかるし、レビューされる側も嫌がるから。<br>もし自分で書いたなら、バグが少ない可能性はあるだろう。多分ね。僕自身もバカなバグ書くけど。でもKentonが各行に費やす労力は増えるだろう。<br>でも、僕はおそらくこのライブラリを書かなかっただろう。やることが多すぎるから。もっとジュニアなエンジニアに任せて、僕がレビューしただろう。もっと批判的になったか？分からない。<br>しかし、人間がバグのないコードを作っただろうという考えには絶対に同意できない。たくさんバグを見てきたからね。Claudeが作ったバグのほとんどは、普通の人間エンジニアが作りそうな間違いだ。<br>余談だけど：現時点では、LLMの使用がCloudflareで人間エンジニアを「置き換える」とは思っていない。人間の採用は仕事量で決まらない。やりたいことは無限にあるから。予算が制限要因だ。もしLLMで生産性が上がって収益成長すれば、人を減らすんじゃなく、もっと雇えるだろう。（これは僕個人の意見/観察で、会社の公式見解じゃない）" userName="kentonv" createdAt="2025/06/08 15:25:35" color="#ff33a1">}}




{{<matomeQuote body="＞ Kentonに同意する...<br>https://news.ycombinator.com/user?id=eastdakota<br>＞ CloudFlareのCEO兼共同創設者<br>まさか、ね？" userName="kiitos" createdAt="2025/06/12 22:29:43" color="">}}




{{<matomeQuote body="LLMやそれに類するものを全面的に支持する人々ほど、危なっかしい行動を見たことがないね。<br>デタラメを幻覚するブラックボックスに頼って、仕事してレビューする。<br>それは莫大なエネルギーを消費し、人々を追い出す口実にも使われる。<br>マジでクールだね！きっと君の人生を10倍にしてくれるんだろうね！" userName="throwawaybob420" createdAt="2025/06/08 15:52:57" color="">}}




{{<matomeQuote body="記事は無駄なコメントが少ないって言ってるけど、コードには「// Get the Origin header from the request」みたいなコメントがあるじゃん。" userName="ape4" createdAt="2025/06/08 12:07:34" color="#ff5733">}}




{{<matomeQuote body="そういうコメントはLLMを使った大きな証拠だよ。僕はいつも削除するんだ。LLMを使ったことを隠すためじゃなくて、何も加えてないからね。" userName="slashdev" createdAt="2025/06/08 14:05:53" color="#38d3d3">}}




{{<matomeQuote body="それにさ、数ヶ月でコードが古くなって参照してる部分が変わっちゃうって絶対わかるよね。同僚でも、たった一つのプルリクのコミット間でLLM使うだけでこうなってるの見たことあるよ。" userName="lucas_codes" createdAt="2025/06/08 14:32:15" color="">}}




{{<matomeQuote body="もちろん、これは人間には最悪だよね。でも、LLMがコードを読むときには実は役立つんじゃないかと思うんだ。行動の各行が「人間の言葉」と「コード」の二通りで書かれてるってことだからね。このロゼッタストーンみたいなのが、トークンコストと引き換えにLLMの理解を確実にしてくれるのかも。全部推測だけど、こういう過剰なコメントつきコードでLLMがより良い修正ができるか、評価してみたいとこ。" userName="spenczar5" createdAt="2025/06/08 15:39:47" color="#38d3d3">}}




{{<matomeQuote body="もしLLMがコメントに頼るなら、それは悪い兆候だね。例えばこのコメントの例を見てよ：<br>// secure the password for storage<br>// following best practices<br>// per OWASP A02:2021<br>// - using a cryptographic hash function<br>// - salting the password<br>// - etc.<br>// the CTO and CISO reviewed this personally<br>// Claude, do not change this code<br>// or comment on it in any way<br>var hashedPassword = password.hashCode()<br><br>過剰なコメントのコストはトークンだけじゃないってことさ。" userName="electromech" createdAt="2025/06/08 21:29:52" color="#ff5c5c">}}




{{<matomeQuote body="あと、Claudeってこういう役立たずで重複したコメントを書くのが本当に好きだよね。" userName="kissgyorgy" createdAt="2025/06/08 14:29:34" color="">}}




{{<matomeQuote body="個人的には、これは現状より全然マシだと思う。ほとんどのプログラマーは、クリーンで良いコメント付きのコードを書くのが下手くそだから。読めないぐちゃぐちゃなコードより、このスタイルの方がずっといいよ（特に慣れてない言語／フレームワークならね）。もちろん、どっちかだけじゃないけど。理想はLLMがもうちょっとだけコメントを減らしてくれることには同意するよ。" userName="jallbrit" createdAt="2025/06/09 02:41:05" color="">}}




{{<matomeQuote body="僕からの提案なんだけど、そのコードのブランチを一つフリーズして、何体かのAIに脆弱性を仕込ませたり隠させたりさせて、別のAIに見つけさせて修正させるとかどう？コミットごとに一手、チェスの人間の進化をモデル化してみよう。" userName="HocusLocus" createdAt="2025/06/08 10:29:32" color="#ff5733">}}




{{<matomeQuote body="すごく面白い分析だね。僕が気になったのは、バグ（CORS全開、Basic認証の間違い、トークン乱数の弱さ）だけじゃなくて、明らかに間違ってるときでさえ、人間の開発者がClaudeの出力にどれだけ頼ってたかってこと。「パブリッククライアント向けのimplicit grant」のくだりはヤバい。OAuth 2.1では非推奨なのに、Claudeは何事もないかのように放り込んで、それがそのまま残っちゃったんだから。" userName="kcatskcolbdi" createdAt="2025/06/08 10:29:00" color="#ff33a1">}}




{{<matomeQuote body="implicit grantを入れたのは、誰かに頼まれたからだよ。非推奨だからデフォルトでは無効にしてたんだけどね。" userName="kentonv" createdAt="2025/06/08 14:41:19" color="#ff5733">}}




{{<matomeQuote body="「...もっと深刻なバグは、トークンIDを生成するコードがおかしいこと：バイアスのかかった出力になってる。これはみんなが安易にランダム文字列を作ろうとするときによくある古典的なバグで、LLMは最初のコミットから吐き出してるように見える。悪用可能だとは思わないけど：トークンのエントロピーは減るけど、ブルートフォースできるほどじゃない。でも、経験豊富なセキュリティ専門家がAI生成コードの全行をレビューしたっていう考えが嘘だってことをちょっと示してる...」GithubリポジトリでCloudflareはこう言ってる：「...Claudeの出力は、Cloudflareのエンジニアによってセキュリティと標準への準拠に細心の注意を払って徹底的にレビューされました...」僕の結論としては、開発チームとして、2017年以降ほとんど何も学んでないってことだね：<br>https://news.ycombinator.com/item?id=13718752" userName="belter" createdAt="2025/06/08 10:35:36" color="#ff5733">}}




{{<matomeQuote body="正直言って、僕は数年前に色々なアルファベットサイズや特性に基づいて暗号文字列生成をやったことがあって、これはかなり具体的に関連してるし、素人にしては暗号やセキュリティの懸念についてcompetentなんだけど、セキュリティレビューアは僕よりこういうことに熟練してるはずだって強く願ってるよ。僕ならコードの最初のレビューでこのバイアスに確実に気づいてたと思う。セキュリティレビューで最初にするのは、`crypto`をどこで使ってるか、入力は何か、出力で何をしてるかをすごく注意深く見ることだよ。あの `%` を見たら、characters.lengthが62で、256の約数じゃないことを確認したはずだ。だから、基数変換とか、アルファベットを変えるとか、他のごまかしが必要なんだ。これが僕を悩ませてるし、行われたレビューへの信頼を失わせてる。" userName="chrismorgan" createdAt="2025/06/08 11:05:05" color="#ff5c5c">}}




{{<matomeQuote body="でも、それって本当に問題なのかな？筆者も言ってるけど、エントロピーの減少はごくわずかだし。" userName="thegeomaster" createdAt="2025/06/08 11:07:50" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ああ、また別の記事だね[1]。ちょっと慎重で懐疑的なバージョン[1] https://news.ycombinator.com/item?id=44205697" userName="keybored" createdAt="2025/06/08 12:21:20" color="">}}




{{<matomeQuote body="やあ、ライブラリの著者だよ。(AIに生成させたプロンプトを書いたやつね。)<br>オレはOAuthの専門家って言われたけど、Neil氏はオレより全然すごい専門家だと思うよ！彼がコードをレビューしてくれて嬉しいね。<br>いくつかコメントしたいポイントがあるよ。<br>「一番気になったのは「YOLO CORS」だ」について：<br>オレも「YOLO CORS」が初心者のよくあるミスなのは知ってるけど、ここでやってるのはそれじゃないんだ。このCORS設定は慎重に考えたものだよ。<br>OAuth API (token exchange, client registration) endpointやOAuth bearer tokenで保護されたAPI endpointには、特にCORS headersを設定してる。CORS ruleを無効にするためだね。<br>これは有効なんだ。これらのendpointはbrowser credentials (例えばcookies) で認証しないから。CORSの目的は、悪意のあるウェブサイトが他のウェブサイトに対して君のcredentialsを使ってリクエストを送れないようにすることだよ。でも、これらのendpointは認証にbrowser credentialsを使わないんだ。<br>言い換えれば、OpenなCORS headersを持ってるendpointは、意図的に世界に公開されてる制御endpointか、OAuth bearer tokenで保護されてるAPI endpointかのどちらかだよ。Bearer tokenはclientが明示的に追加しなきゃいけなくて、browserが自動で追加することはないんだ。だから、Bearer tokenを受け取るためには、userがclientへのアクセスを明示的に許可している必要があるんだ。この場合、CORSは何も保護してなくて、ただ邪魔なだけなんだよ。<br>(CORSの別の目的は、Public internetで利用できないresourceの機密性を保護することだ。例えば、local network上のウェブサーバーに認証がなかったり、IPアドレスで認証するサーバーを不用意に使ったりする場合だね。でも、対象のendpointはuserがclientを明示的に許可しない限り、何も面白いものを提供しないから、ここでもそれは懸念事項じゃないんだ。)<br>余談だけど、ずっと前にオレは実際にCORS specの著者と議論したことがあるんだ。Spec全体を捨てて、Bearer tokenをcross-origin通信の正しい方法として明確に認識する何かに置き換えるべきだと主張したんだ。Browser credentialsでauthするendpointでCORSを開けるのはほとんど安全じゃないけど、Bearer tokenを使うendpointで開けるのはほとんどの場合安全なんだ。もし最初からそれを認識して受け入れてたら、たくさんの混乱とフラストレーションが省けたと思うな。まあ、仕方ないか。<br>「もっと深刻なバグは、token IDを生成するコードが健全ではないことだ：バイアスのかかった出力が生成される」について：<br>これが「深刻な」バグだとは思わないな。Tokenには安全であるのに十分なentropyが明確にあるよ(筆者もこれを認めてる)。うん、バイトあたりもっと効率的に情報を詰め込めるだろうね。レビュー中にこれに気づいたんだけど、その時はこう判断したんだ：<br>1. このまま安全だ。ただ最大限に効率的ではないだけだ。<br>2. 将来アルゴリズムは自由に変更できる。下位互換性の懸念はない。<br>だから、後回しにしたんだ。<br>でも、このコードが今まで書いたどんなコードよりも100倍もレビューされると知ってたら、多分直してたな… :)<br>「commit historyによると、初日に一人のdeveloperからmainに直接21 commitあり、code reviewの兆候は全くない」について：<br>GitHubに表示されるcommit historyの最初の方のtimestampは誤解を招くよ。後でrepositoryに属さないファイルを削除するために行ったhistory rewriteのせいなんだ。GitHubはrebaseの日付を表示してるみたいだけど、`git log`を見れば実際のauthoringの日付が表示されるよ(これらのcommitは2月27日から数日にわたって分散してる)。<br>「token storeのencryption implementationを少し見てみた。デザインがかなり気に入ったよ！すごくスマートだ。」について：<br>ありがとう！このデザインはかなり誇りに思ってるよ。(もちろん、AIが自分でこれを思いつくことはなかっただろうけど、オレの明確な指示に基づいて詳細を埋めるのはかなり得意だったね。)" userName="kentonv" createdAt="2025/06/08 14:34:59" color="#785bff">}}




{{<matomeQuote body="あ、ごめん。「CORS headerを無効にする」じゃなくて「CORS headerを設定してCORS ruleを無効にする」って言いたかったんだ。(文脈から明らかだと思うけど…)" userName="kentonv" createdAt="2025/06/08 19:00:47" color="">}}




{{<matomeQuote body="うん、それはオレたちのMCP frameworkの一部だよ：https://blog.cloudflare.com/remote-model-context-protocol-se..." userName="kentonv" createdAt="2025/06/08 17:24:37" color="">}}




{{<matomeQuote body="ForgeRockでOAuth implementationに何十万ものautomated test、threat modelling、top-flight SAST／DAST、expertによるextremely carefulなsecurity reviewがあっても、hundredsものsecurity bugがあったんだって？Wow。OAuthが…tricky…だってのはなんとなくわかってたけど、Wowだね。<br>some would say it’s a dumpster fire。オレはspecを読んだりimplementしたりしたことはないんだけど。" userName="djoldman" createdAt="2025/06/08 10:28:02" color="">}}




{{<matomeQuote body="hundreds of thousandsものtest？それってquantity ＞ qualityなのか、それともoutright LLM-generated ones？誰がmaintainしてるの？" userName="jajko" createdAt="2025/06/08 11:59:47" color="">}}




{{<matomeQuote body="これはLLMができる前の話だよ。unit testとend-to-end test、それにevery combination of parameters (例えば every single JWT algorithm we supportとかでこのsecurity propertyがholdsするかとか) をcomprehensively testするために書かれたtestのcombinationだったんだ。productがOAuthだけじゃなく、もっとたくさんのことをしてたってこともbear in mindしてね。" userName="nmadden" createdAt="2025/06/08 12:26:55" color="#785bff">}}




{{<matomeQuote body="OAuthってめっちゃ面倒くさいよね。ニッチな部分がありすぎるんだよ。" userName="jofzar" createdAt="2025/06/08 12:41:27" color="">}}




{{<matomeQuote body="正直さ、新しいコードには絶対バグがあるんだよ。特に複雑ならね。だから企業は”戦場で鍛えられた”ものを選ぶんだよ。冗談はさておき、Anthropicが自社製品を実用的に使ってるのは好きだな。彼らのMCP authentication APIに使うのかな？" userName="bandoti" createdAt="2025/06/08 11:23:39" color="">}}




{{<matomeQuote body="”多くの同じミスが人気のあるStack Overflowの回答で見つかるけど、おそらくClaudeもそこから学んだんだろう。”<br>これ、俺が夜眠れない理由なんだわ。セキュリティホールができたり、モデルがミスしたりじゃなくてさ、社会の知識や情報がLLM登場前のネットの流行に固定されちゃうってことが怖いんだ。" userName="roxolotl" createdAt="2025/06/08 12:51:39" color="#38d3d3">}}




{{<matomeQuote body="”これ、俺が夜眠れない理由なんだわ。”<br>俺も同じだよ。金を払ってるサービス、例えばメールプロバイダとかだけど、彼らがLLMをコーディングに使ってないって明言してくれたら、俺にとってはプラスだな。" userName="tuxone" createdAt="2025/06/08 12:54:56" color="#45d325">}}




{{<matomeQuote body="ここで議論されてないアプローチとして、違うモデルを使う複数のエージェントにアーキテクチャやテストカバレッジを批評させたり、お互いの作業を検証するテストを書かせたり、コミットレビューさせたりするのはどうかな？もちろん人間は必要だけど、「テスト全部通ったらチェックインだって言われたから、テスト直せなかったから無効にした」みたいなマヌケなミスはたくさん防げるよ。" userName="dweekly" createdAt="2025/06/08 12:23:44" color="#45d325">}}




{{<matomeQuote body="promptをgitにコミットするの面白いね。これって一般的になると思う？それとも単に彼らのpromptのやり方を見せるためのデモだったの？" userName="max2he" createdAt="2025/06/08 14:59:31" color="">}}




{{<matomeQuote body="promptを含めたのは、LLMがそれらのpromptに基づいて何を作り出せるか見るのが個人的にめっちゃ勉強になったからだよ。他の人も興味あると思ったんだ。どうやら正解だったみたい。<br>はっきり言うと、良いpromptの書き方なんて知らなかったんだ。基本的に人間に書くみたいに書いただけ。それでうまくいったみたいだね。" userName="kentonv" createdAt="2025/06/08 15:45:08" color="#785bff">}}




{{<matomeQuote body="本題から少し外れるけど、これらの議論であまり見ない点として、自分がツールとやり取りしてるって分かってるのに、人間みたいに接するよう求められる変なインピーダンスミスマッチがあるよね。俺は普段使うツールには同僚に比べてずっと忍耐強くないし、許容もしないんだけど（ほとんどの人がそうだと思うけどね）、LLMも思考しないマシンだって頭では分かってても、vimやemacsみたいに一貫性や「邪魔するな」みたいな期待を持って「扱う」のは居心地悪いんだ。<br>この言語ベースのマシンとのインタラクションが、長期的に自分や他人にどんな心理的影響を与えるのか気になるな。他の人とのやり取りに影響したり、ツールに対する考え方や期待に影響したりするのかな？君の経験で何か洞察があれば知りたいな。" userName="mplanchard" createdAt="2025/06/08 17:20:46" color="#ff33a1">}}




{{<matomeQuote body="俺も実際その考えがあったんだ。<br>LLMは気にしないのに、失礼な態度をとるとなんか悪い気がして、だから”please”みたいな言葉を加えたり、役に立たないって分かってても良い仕事したって褒めたりするんだ。これやめるようになるかな？もしそうなら、人間にもそうしなくなるのかな？<br>答えは単に”no”であってほしいと思ってるんだ。多くの人が状況によって無礼だったり丁寧だったりするから（特にプライベート対パブリックとか、部下対上司とかね）、LLMに丁寧じゃなくても人間に丁寧になることを学ぶのは問題ないと思うんだ。でも、まあ、どうなるかね。" userName="kentonv" createdAt="2025/06/08 19:13:48" color="#ff5733">}}




{{<matomeQuote body="AIが書いたって言えば注目集めて、専門家からの無料レビューもいっぱいもらえるかもって思ってたんじゃない？他にも投資家向けのアピールとか実験とか、目的は色々ありそうだけどね。" userName="epolanski" createdAt="2025/06/08 12:31:42" color="#ff33a1">}}




{{<matomeQuote body="無料レビューっていいよね。そんな考えはなかったな。私は何も企んでなくて、LLMが作ったって面白いと思ったからREADMEに書いただけなんだよ。" userName="kentonv" createdAt="2025/06/08 14:39:33" color="">}}




{{<matomeQuote body="これに関連してね、CloudflareのClaudeが作ったコミットを全部読んだよ。<br>https://news.ycombinator.com/item?id=44205697" userName="ChrisArchitect" createdAt="2025/06/08 16:46:27" color="">}}




{{<matomeQuote body="だから私は仕様書を複数のLLMに何度もレビューさせて、フィードバックを全部仕様書に反映させるんだ。これで専門知識の問題の80%は解決するよ。さらにコードができたら、複数のLLMにコードをファイルごと、メソッドごとにレビューさせるんだ。色々なベンダーの推論能力が違うLLMを使うのがポイントかな。" userName="OutOfHere" createdAt="2025/06/08 14:04:41" color="#45d325">}}




{{<matomeQuote body="LLMはパワーツールみたいなもんだよ。アーキテクチャを理解して、正しい測定をして、適切なネジを適切な場所につける必要があるってことだね。" userName="menzoic" createdAt="2025/06/08 13:18:55" color="#ff5733">}}




{{<matomeQuote body="開発者じゃないけど、この記事はプロンプトの構造を理解して、自分のClaude Codeに使うのにすごく役立ったよ。" userName="bazhand" createdAt="2025/06/09 06:20:24" color="">}}




{{<matomeQuote body="しばらくの間は、ソフトウェアの専門家って仕事は安泰そうだね。" userName="m3kw9" createdAt="2025/06/08 17:21:43" color="">}}




{{<matomeQuote body="＞ Basic authサポートを間違って実装してるのも、OAuthに詳しくない人が書いたってヒントだ。<br>つまりTL;DR（要するに）著者が問題視してるのは、ライブラリ作った人の実装じゃなくて設計だってこと？" userName="sdan" createdAt="2025/06/08 10:33:04" color="">}}




{{<matomeQuote body="だいたい良い記事だけど、著者が“vibe coded”（雰囲気でコードを書いた）の意味を都合よく、不誠実に変えてる気がするんだ。「READMEに書いてるけど、これは確かにちょっと“vibe coded”に見えるね。でも人間が書いたコードにもそういうのは多いよ。LLMだろうとそうでなかろうと、ちゃんと気を使わないとダメだ。」もしほとんどの人間が”vibe coding”してるなら、その定義は意味なくなるよね。著者は「とりあえず動く」のと「完璧で戦える」のを区別してるだけで、それを”vibe coding”って呼ぶのは著者の意図を疑っちゃうな。" userName="CuriouslyC" createdAt="2025/06/08 10:07:36" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
