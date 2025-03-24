+++
date = '2025-03-17T00:00:00'
months = '2025/03'
draft = false
title = 'ゲーム開発の落とし穴！ハイヒール実装、意外な苦労の真相'
tags = ["ゲーム開発", "3Dモデリング", "バグ", "実装", "裏話"]
featureimage = 'thumbnails/purple5.jpg'
+++

> ゲーム開発の落とし穴！ハイヒール実装、意外な苦労の真相

引用元：[https://news.ycombinator.com/item?id=43392549](https://news.ycombinator.com/item?id=43392549)

{{<matomeQuote body="この記事マジ面白いね！一見どうでもいいようなこと、例えばモデラーがハイヒールなんかを追加したせいで、ゲーム内のキャラの身長が変わっちゃうとか、マジ予想外の影響が出てくるんだから。<br>昔の3Dゲームでも同じようなことがあって、動物の乗り物追加したら、physicsとか構造が馬モデル基準だったから、ドラゴンとか乗ると変なとこでクリッピングしまくりで笑えたわ。<br>関係ないかもだけど、ゲームでハイヒール見るといつもDouble-XPのこのcomic思い出すんだよね。→　https://imgur.com/a/pUg6sCV" userName="vunderba" createdAt="2025-03-18T02:39:47" color="#785bff">}}

{{<matomeQuote body="めっちゃ面白い例だとGrand Theft Neptunia Vみたいなanime modかな。Loyalists channelもそうだけど。<br>アニメーションが元キャラのサイズ基準だと、modのキャラを元サイズに合わせるか、全部作り直すか、それとも面白さ優先にするか…ってなるけど、ここは最後のを選んでて最高なんだよね！<br>GTAの会話だからアレなシーンもあるかもだけど。" userName="btown" createdAt="2025-03-18T03:01:55" color="">}}

{{<matomeQuote body="この問題、『Dead Rising』シリーズにもあるんだよね。主人公が何でも着れちゃうから。bone idまで指定して、コードで色々やってるみたいだけど。" userName="petermcneeley" createdAt="2025-03-17T21:48:44" color="">}}

{{<matomeQuote body="こういう、簡単そうに見えて実装が超大変な例ってホント面白いよね。「靴のskin追加するだけじゃん、簡単っしょ？」みたいな。" userName="Timpy" createdAt="2025-03-18T12:33:04" color="#ff5733">}}

{{<matomeQuote body="これってEAのSims franchiseのヒドい手抜きを思い出すわ。全部買うと1000ドル以上するのに、身長差を実装してないんだよ、あのdaily lifeシミュレーションゲームで！で、ゲーム内でハイヒール履かせると、背が低くなるように調整されるっていうね。<br>しかも最近、消費者に対して「もう続編は作らないから、バグだらけの時代遅れエンジンでlazyな”content packs”を出し続けるから、文句あっか？」って言ってるし。" userName="thrance" createdAt="2025-03-18T08:34:38" color="">}}

{{<matomeQuote body="こういうのがあるから、ゲームキャラのartistにならなくて良かったー。全員にtrainer履かせて終わりにするわw" userName="voidUpdate" createdAt="2025-03-18T09:08:53" color="">}}

{{<matomeQuote body="自分もコード書いてて、ゲーム制作手伝ったこともあるんだけど（freelance）、自分で3Dゲーム作るのはマジで止まってるんだよね。artが難しすぎるし、上手くなるのも大変だし。<br>自分の国の地形を7x4kmに縮小するだけでも問題山積みだよ。地質的な特徴はそのままでも、川がsea levelまでリアルに流れるように作らないといけないし、キャラのモデリング、rigging、アニメーションも複雑だし…scope管理とか考えたら、完成まで10年かかるかも。" userName="KronisLV" createdAt="2025-03-18T09:43:25" color="">}}

{{<matomeQuote body="ゲームプログラミングやったことあるし、自分で作ろうとしたこともあるけど、artがマジで苦手なんだよね。何回か頑張ったけど、メンタル的に無理だった。asset packs使うか、ascii artゲーム（dwarf fortress style）作ってる。hard-surface modellingはたまにやるけど。floppy creatureのriggingとかアニメーションはマジ無理。2D artも苦手（shader programmingは好きだけど）。友達誘ってゲーム作ろうかと思ったけど、迷惑かけちゃうかなって思って。" userName="voidUpdate" createdAt="2025-03-18T09:55:29" color="">}}

{{<matomeQuote body="ハイヒールは身長変えるだけじゃなくて、squattingの可動域も変えるんだよね。子供は問題ないけど、大人は失われた可動域を取り戻すのが大変！<br>heelを1inch上げてみて。次に2inches。heelが高いほどsquattingしやすくなるのがわかると思うよ。重心とか背中の角度も変わるし。" userName="nvahalik" createdAt="2025-03-18T13:47:46" color="#45d325">}}

{{<matomeQuote body="ある国では、椅子がないからsquat positionで仕事するのが普通だったって読んだことあるな。ずっと椅子に座ってる自分からするとcoolだと思った。<br>野球のcatcherも、squat/crouch positionで膝がダメになるから引退するって言うよね。catcherはハイヒール履くべき？「A League of Their Own」見なきゃ。" userName="AStonesThrow" createdAt="2025-03-18T16:34:31" color="">}}

{{<matomeQuote body=" weightlifting shoesって、ヒールが高くなってるやつがあるけど、それも同じ理由からきてるんだよね" userName="bobthepanda" createdAt="2025-03-18T16:15:00" color="">}}

{{<matomeQuote body="ウェッジとかスラントボードも同じ目的で使われるよね。あと、リフターシューズには、足と地面をより”がっちり”繋げることで安定性を高めるっていう目的もあるんだ。ジムにある他のシューズ（クロストレーナーとかランニングシューズ）はクッション性があるから、ランニングには最高だけど、重いものを持ち上げるときには不安定になるんだよね。だから、足首が柔軟なリフターの中には、靴を履かずにリフティングする人もいるんだって。ジムの床の状態にもよるけど、オレは絶対無理だけどね" userName="nvahalik" createdAt="2025-03-18T19:00:10" color="#ff5733">}}

{{<matomeQuote body="ゴツい weight lifter が stiletto heels 履いてる姿を想像しちゃった" userName="Tagbert" createdAt="2025-03-18T16:27:20" color="">}}

{{<matomeQuote body="オレの地元では、ジムが fund raising のためにそれをやってるよ" userName="bobthepanda" createdAt="2025-03-18T17:20:31" color="">}}

{{<matomeQuote body="骨格の話から、プーチンのハイヒールに関する分析を思い出した。<br>https://www.youtube.com/watch?v=lY6lHjZjYXE" userName="samcheng" createdAt="2025-03-18T01:50:09" color="">}}

{{<matomeQuote body="フランスの元大統領、Nicolas Sarkozy も同じことしてたよね。そんなダサいコンプレックス抱えながら、めっちゃ権力者になれるってのが面白い" userName="littlestymaar" createdAt="2025-03-18T11:28:07" color="">}}

{{<matomeQuote body="うーん。プーチンがやってきた（そして今もやってる）マジでヤバいことに focus しようよ。ちょっと eccentric なファッション choice を psychoanalyze して悪者扱いするのやめない？オレは毎日ヒール履いてるけど（好きだし、楽だから。身長にコンプレックスないし）、それがオレを tyrannical な世界のリーダーに変えるなんて微塵も思わないよ" userName="Nullabillity" createdAt="2025-03-18T16:24:02" color="#ff5733">}}

{{<matomeQuote body="プライベートでやるなら、lame な insecurity って言えるかもね。でも、常に写真を撮られる public event でやるなら、smart な image control だよ。リーダーは symbol だし、身長差は視覚的に違う message を伝えるんだ。一番背が高い必要はないけど、全ての写真で一番背が低いと、 voters にネガティブな perception を与えちゃうかもしれない。ただの vanity じゃないんだよ。Actors は映画や TV show で apple boxes に乗ってるけど、それは director が shot をいい感じにするために height difference を調整したいからなんだ。lame な insecurity じゃない。伝えたい image を producing してるんだよ" userName="crazygringo" createdAt="2025-03-18T13:18:44" color="#ff5733">}}

{{<matomeQuote body="それって actor には有効だけど（director が camera を control できるから）、politician には逆効果だよ（少なくとも democracy ではね。Russian politics は TV show と変わらないけど）。Sarkozy は背が低くて insecure ってめっちゃ mock されてたけど、François Hollande が当選して2人が並ぶまで、Hollande が Sarkozy より小さいって誰も気づかなかったんだ" userName="littlestymaar" createdAt="2025-03-18T13:31:37" color="#785bff">}}

{{<matomeQuote body="＞“smart image control”<br>いや、ただの insecure で ridiculous でしょ。その ridiculousness が image を hurt してるんだよ" userName="codingbot3000" createdAt="2025-03-18T13:48:06" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="反論：Zelenskiって背が低いけど、それが彼のイメージを損ねてるとは思わないんだよね。むしろブルドッグみたいな印象を与えるし。体鍛えてるのも大きいと思う。彼は自分の持ってるものを上手く使ってイメージを作ってるって感じ。何かを偽ろうとするんじゃなくてさ。Putinは独裁者だからハイヒールが政治的に問題になったりしないけど、Ron DeSantisみたいな政治家のキャリアは潰したよね。" userName="jordanb" createdAt="2025-03-18T16:43:04" color="#ff5c5c">}}

{{<matomeQuote body="DeSantisに触れてくれてありがとう。Zelenskiが屈強な兵士のイメージを作ったのも大きいよね。<br>ZelenskiがTrumpとの会談でスーツを着てないことを記者に批判された時、彼は戦争が終わったらスーツ（”コスチューム”らしいけど、誤訳かも？）を着るって言い返したんだ。記者は彼の服装を大統領への無礼として捉えようとしたけど、Zelenskiの返答は、戦争が終わるまで普通の生活に戻れない国民に対してスーツを着ることの方が無礼になるということを明確にしたんだよね。それをどう捉えるかは人それぞれだけど、自信と共感を示してたと思う。自然体だったんだよ。身長を靴でごまかそうとしたら逆効果だったと思う。DeSantisは”タフ”に見せようとしたけど、あからさますぎて身長にコンプレックスがあるように見えちゃったからね。もしZelenskiの立場（ユニフォームを着て）だったら、もっと悪く見えただろうね。" userName="hnbad" createdAt="2025-03-18T17:09:11" color="#785bff">}}

{{<matomeQuote body="女帝" userName="InDubioProRubio" createdAt="2025-03-18T09:56:28" color="">}}

{{<matomeQuote body="マジで今までで一番笑える。" userName="slowtrek" createdAt="2025-03-18T05:05:29" color="">}}

{{<matomeQuote body="記事の中の動画が全部読み込めないんだけどー。Hacker Newsの洗礼かな？" userName="QuercusMax" createdAt="2025-03-17T21:39:57" color="">}}

{{<matomeQuote body="動画？記事のテキストすら読み込めないんだけど笑" userName="nottorp" createdAt="2025-03-17T22:20:05" color="">}}

{{<matomeQuote body="テキストを読み込めないことを<br>知っているだと？<br>贅沢だな！" userName="CoastalCoder" createdAt="2025-03-17T23:09:46" color="">}}

{{<matomeQuote body="FF mobileでenhanced tracking protectionを無効にしたら読み込めたよ。" userName="mplanchard" createdAt="2025-03-18T14:21:15" color="">}}

{{<matomeQuote body="マジか！参考になるかも：<br>https://news.ycombinator.com/item?id=29429385" userName="Jun8" createdAt="2025-03-17T21:00:18" color="">}}

{{<matomeQuote body="あと”Door Problem”も見てみて。<br>https://lizengland.com/blog/2014/04/the-door-problem/" userName="tarr11" createdAt="2025-03-17T21:59:40" color="">}}

{{<matomeQuote body="この記事、前にも読んだことあるかも。なんか覚えがあるし（それにどっちもめっちゃ面白い）。特にゲーム業界で働いたことない自分にとってはね。" userName="xp84" createdAt="2025-03-18T00:32:43" color="#785bff">}}

{{<matomeQuote body="ゲーム開発者として読んだけど、マジで「あーあ…」って感じ。" userName="qingcharles" createdAt="2025-03-18T01:13:03" color="">}}

{{<matomeQuote body="ゴルフのアニメーションは問題だって言われてるけど、実際そうなると思う。" userName="IvyMike" createdAt="2025-03-18T00:22:57" color="">}}

{{<matomeQuote body="いやいや、ゴルフする人はボール狙って、どの靴履いてるかでスイング調整するでしょ。" userName="lmm" createdAt="2025-03-18T02:11:22" color="">}}

{{<matomeQuote body="待って、現代の素材でスティレットヒールを可能にしたのって何？Acrylics？Vinyl？Steelかなと思ったけど、違う気がする。" userName="JumpCrisscross" createdAt="2025-03-18T04:56:55" color="#ff33a1">}}

{{<matomeQuote body="物理的な世界のスティレットシューズの課題は、”シャンクとヒール”の部分のエンジニアリングにあるんだよね。実際のヒールと、足の内側と外側の間の弧を描く、体重を支えるシャンク。これらはsteel、titanium、厚いplasticとかで作れる。スティレットの信頼性は、これらの薄い部品が変形せず、人間の体重による曲げ、ねじれ、回転、ヒールとシャンクの接合部を破壊するような力に対して剛性を保つことにかかってるんだ。" userName="defrost" createdAt="2025-03-18T05:05:56" color="#ff33a1">}}

{{<matomeQuote body="もう一つの（見過ごされがちな）課題は、あの小さなヒールの下に集中する数百万パスカルの圧力に耐えられる床材を持つこと。プレハブの寄木細工の床や、小さな木造ボートの底に穴が開くこともしばしばあるからヨットマンはスティレットに注意してるんだよ。" userName="swiftcoder" createdAt="2025-03-18T08:39:35" color="#ff5733">}}

{{<matomeQuote body="そうそう、これは商業航空機の内装における重要な設計ポイントで、点荷重への対処は、foam-core compositesのような素材が有利になることが多いんだよね。honeycomb core compositesよりも性能面で劣る場合が多いけど。" userName="addaon" createdAt="2025-03-18T16:20:20" color="#ff33a1">}}

{{<matomeQuote body="＞These can be steel, titanium, thick plastic, etc<br>＞現代的な素材か！スティレットヒールって第二次世界大戦後の技術だったんだ。<br>＞どうやらsteel製のヒール（Français）かsteel製のアーチ（Ferragamo）が靴を可能にしたらしい。航空機や弾薬の製造との重複がもっとあったのかな…<br>言われてみれば、nitinol製のアーチを複合化すると、軽量で柔軟なサポートと接地感が得られそう。特に、スティックの端でより硬い合金に複合化できればね。" userName="JumpCrisscross" createdAt="2025-03-18T05:41:09" color="#38d3d3">}}

{{<matomeQuote body="ちなみに、高いヒールはもともとメンズウェアだったんだよね。乗馬ブーツから派生してて、鐙が定位置に収まるようにするためのものだったけど、だんだん目立つように高くなって、そのうちおしゃれアピールと一緒に消えていった。" userName="pjc50" createdAt="2025-03-18T09:31:04" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="とりあえず、これを置いとくね：YouTubeで女性の鎧を着ての格闘に関する第一人者、Jill Bearupさんの動画。<br>https://youtu.be/ZTmTnWHXWqs?si=E83Y8I63LuACfF59<br>[どうやってこういう人たちを見つけてるのかは聞かないでね]" userName="AStonesThrow" createdAt="2025-03-18T16:36:59" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
