+++
date = '2025-04-30T00:00:00'
months = '2025/04'
draft = false
title = 'Hacker Newsをダウンロードする時代は終わった？'
tags = ["Hacker News", "データ分析", "データベース", "AI", "データセット"]
featureimage = 'thumbnails/orange4.jpg'
+++

> Hacker Newsをダウンロードする時代は終わった？

引用元：[https://news.ycombinator.com/item?id=43840193](https://news.ycombinator.com/item?id=43840193)




{{<matomeQuote body="HNデータをダウンロードしなくても分析できるDBが2つあるよ。BigQuery（Google Cloudアカウント要るけど無料枠で使えると思う）：bigquery-public-data.hacker_news.full。ClickHouseはサインアップ不要でブラウザでクエリできるよ：［1］ https://play.clickhouse.com/play?user=play#U0VMRUNUICogRlJPT..." userName="montebicyclelo" createdAt="2025/04/30 08:27:42" color="#45d325">}}




{{<matomeQuote body="これ、君の’clickhouse’ってコメントも見つけられるよ：https://play.clickhouse.com/play?user=play#U0VMRUNUICogRlJPT..." userName="kordlessagain" createdAt="2025/04/30 13:53:14" color="">}}




{{<matomeQuote body="ClickHouseのリソースってマジ最高だね。履歴まであるんだよ！俺はClickHouseのHN DBs見つける前に、自分で全部JSONダウンロードする作業してたわ。" userName="xnx" createdAt="2025/04/30 13:27:35" color="#38d3d3">}}




{{<matomeQuote body="俺も前に@fessholeのTwitter/Blueskyアカウントで似たことやったよ。全部ダウンロードしてモデルをファインチューニングして、もっとヤバい告白を作るためにね。無垢な機械にwankingとdivorceを教えただけだって気づくまで、かなり満足してたんだ。<br>まるでSF映画で、エイリアンか超知能AIが人類の歴史を早送りで見て、結局救う価値なしと判断する場面みたいに感じたよ。" userName="mattkevan" createdAt="2025/04/30 09:43:18" color="#ff5c5c">}}




{{<matomeQuote body="wankingとdivorceの何が悪いの？<br>それぞれ、人が幸せになったり自立したりする方法、そして自分にとってうまくいかない状況から抜け出す方法でしょ。<br>俺はどっちもネットプラスだと思うし、それらを当たり前と考える社会に住めてすごく感謝してるよ。" userName="falcor84" createdAt="2025/04/30 10:59:38" color="#785bff">}}




{{<matomeQuote body="離婚を非難したり禁止したりするつもりはないけど、それは（必要悪？）悪いことだよ。<br>たいていの人は、結婚して離婚するより、そもそもその人と結婚しない方がずっと幸せだったんじゃないかな。<br>だから、”離婚を普通にする”ってのは、正しい人と結婚することを普通にすることに比べると、ちょっと逆行してる感じだね。" userName="pc86" createdAt="2025/04/30 15:17:18" color="#ff5733">}}




{{<matomeQuote body="正しい相手と結婚するってのは、もう普通のことだよ。<br>元カノが正しい相手じゃなかったって、結婚しなかったら絶対分からなかったと思う。<br>結婚したからって別に損したわけじゃないし。<br>離婚を普通にして、悪いとか悪だって決めつけて非難するのやめようぜ。" userName="cgriswald" createdAt="2025/04/30 15:37:49" color="#45d325">}}




{{<matomeQuote body="＞無垢な機械にwankingとdivorceについて<br>例えば、失われた文明のUSBメモリを見つけて、そのテキストデータでモデルを訓練したとしよう。<br>外部からの根拠なしに、そのUSBメモリがwankingとdivorceに関するデータを含んでるって、どうやって君やモデルは分かるの？" userName="nthingtohide" createdAt="2025/04/30 14:48:18" color="#ff33a1">}}




{{<matomeQuote body="これ、LLMが”知らない”理由を説明しようとするいつもの俺の試みよりずっと分かりやすいわ。これパクっちゃうかも。たぶん別のexample corpusでね、ウケる。" userName="alabastervlog" createdAt="2025/05/01 00:39:46" color="#ff33a1">}}




{{<matomeQuote body="＞結婚で損しなかった<br>それは良かったね、でも多くの人は結婚で色々な意味でずっとひどい状態になるよ<br>＞離婚を普通にして、悪いとか邪悪とか言って非難するのをやめよう<br>悪いとか邪悪じゃないけど、それがダメージを与えないふりもやめようぜ" userName="bluefirebrand" createdAt="2025/04/30 17:57:56" color="">}}




{{<matomeQuote body="離婚経験者としては…いや、そうじゃないな。もっと関係をうまくやろうと努力した方がいいと思う。それがダメなら、そもそもそういう人とは結婚しない方がマシだよ。" userName="adamc" createdAt="2025/04/30 15:37:53" color="">}}




{{<matomeQuote body="無垢な機械はどっちもできないんだ。口がないのに叫ばなきゃいけないのに似てるね（Harlan Ellisonに謝罪）" userName="dcuthbertson" createdAt="2025/04/30 11:14:59" color="">}}




{{<matomeQuote body="偽る必要はないよ。離婚で終わる結婚は実際に起こる。そして、結婚で生じたダメージを全部離婚のせいにするのは違う。たいてい離婚する方が結婚し続けるよりダメージが少ないことを知ってるから選ぶんだ。離婚を”傷ついた”状態と呼ぶのは”悪い”と言うのと同じくらい非難だよ。離婚しない場合の選択肢は、逃れられない失敗した結婚なんだから。" userName="cgriswald" createdAt="2025/04/30 19:49:24" color="">}}




{{<matomeQuote body="これでいつもお気に入りのessay”Why You Will Marry the Wrong Person”を思い出したよ。Alain de BottonのSchool of Lifeから出てるやつ。タイトルがちょっと紛らわしくて、それで数年読むのをためらってたんだ。でも、それは絶妙な文章でー愛と結婚について並外れてて、最終的には希望を与えてくれるmeditationみたいな作品なんだ。NYT Gift Articleのリンクはこちら。" userName="nhod" createdAt="2025/04/30 15:45:06" color="#785bff">}}




{{<matomeQuote body="それは的を得てるね。でもそれなら、空の色をどう感じるかとかchampagneの味とか、私たちがそれに教える他の全てのことにも当てはまるよね。これらもtraining setから外すべきなの？自分でこれらのことを経験できなくても、他人の経験に触れるのはやっぱり良いことじゃないの？" userName="falcor84" createdAt="2025/04/30 13:56:24" color="">}}




{{<matomeQuote body="実はこのlogicは、「なぜ特定のneural firingsは脳内でsoundとして現れ、別のものはvisionとして現れるのか？」っていうphilosophyの疑問から作り出したんだ。なんでそうなるの？" userName="nthingtohide" createdAt="2025/05/01 05:00:20" color="">}}




{{<matomeQuote body="「間違った人と結婚した」状態は常に起こる。離婚を非難するのは、一度間違った選択をした人を追い詰める。結婚は意味を過剰に膨らませず、離婚も非難されるべきじゃない。うまくいかない時に離婚するのは、自分の健康を考えて拍手されるべきだよ。もちろん、関係をどううまく築くかも学ぶべきだけどね。" userName="zelphirkalt" createdAt="2025/05/01 02:18:16" color="">}}




{{<matomeQuote body="えっとね、確かマウスの視神経と内耳を脳の別の場所に繋ぎ替える実験があったんだ。幼いマウスでやった実験だけど。繋ぎ替えた場所の脳の構造が来る情報に合わせて変化したんだって。これは情報の種類（視覚とか音声）が脳の違う構造でどう処理されるかを示唆してるね。情報の違う側面をエンコードしてるんだろう（音声は時間軸が重要とか）。抽象的な意味の問題には答えないけど、面白い話だよ。" userName="wfn" createdAt="2025/05/01 12:21:12" color="#ff5733">}}




{{<matomeQuote body="悪いことだけど、スティグマ化されてないことってあるよね。離婚が良い例だよ。全然スティグマ化されてないって。結婚するほとんどの人が離婚するくらいなんだから（数字だと結婚の60～70％に離婚経験者が含まれるらしい）。スティグマ化されてるって言うのは現実と合ってないよ。でも、客観的に見て悪いことではある。面倒だし、金かかるし、傷つくし、人生の時間も無駄になることが多いんだ。" userName="pc86" createdAt="2025/04/30 18:17:20" color="#ff33a1">}}




{{<matomeQuote body="＞ 結婚は意味を膨らませすぎず、離婚はスティグマ化すべきじゃないって意見に賛成。うまくいかない時に離婚するのは自分の健康のためだし称賛されるべき。<br>離婚が悪いって考えは宗教由来だと思う。ヨーロッパでは宗教熱心な人以外は離婚にOKだし、結婚してない人や polyamorous な人も多いよ。田舎の America とは違うだろうね。" userName="wkat4242" createdAt="2025/05/01 08:11:16" color="#785bff">}}




{{<matomeQuote body="人間の場合、外からの感覚データが grounding を提供するんだ。独房に長くいた囚人を考えてみてよ、感覚情報がないせいで神経の発火を grounding できなくて幻覚を見始めるんだ。" userName="nthingtohide" createdAt="2025/05/01 12:59:47" color="">}}




{{<matomeQuote body="えー、君が思ってるよりずっと複雑だよ。<br>「適切な相手と結婚することがノーマル化してる」なんて絶対ないね。僕が住む southern US では「若い人は結婚すべき」と「離婚は悪い」って考えが強くて、人間関係の難しさを学ぶ前に結婚させられちゃう。外から見たら危ないサインが出てる関係もたくさんあるんだ。" userName="pixl97" createdAt="2025/04/30 17:24:50" color="#ff5733">}}




{{<matomeQuote body="哲学的に言うと、感覚データと言葉はどっちも grounding されてるわけじゃない。人間は器官を通してしか世界とインタラクトできないし、「ありのまま」なんて見れない。脳は感覚入力と言葉を全部含めてモデルを作ろうとする。言葉が感覚に勝つことだってあるんだ。つまり、君が grounding って思ってるのは、ただもっと相対的な文脈に過ぎないんだよ。" userName="dTal" createdAt="2025/05/01 13:58:29" color="#ff5c5c">}}




{{<matomeQuote body="同意するよ。タイトルは間違ってるね。むしろ、「誰と結婚しても、その人が間違った相手だって確実に思うようになる理由”」であるべきだね。" userName="didgetmaster" createdAt="2025/04/30 20:05:24" color="">}}




{{<matomeQuote body="＞ 悪いとか邪悪ではないけど、傷つくものじゃないふりをするのはやめようよ<br>場合によっては、結婚したり結婚し続けたりするより、別に傷つくわけじゃないよ。<br>結婚は神聖なものじゃなくて、本質的には法的なことだけなんだ。税金とか情報の扱いが変わるだけ。それ以上の意味はカップル次第だし、いつどう離婚するかだって同じだよ。" userName="naikrovek" createdAt="2025/05/01 01:07:29" color="#45d325">}}




{{<matomeQuote body="「original poster」って誰のこと？このスレッドに「離婚で終わる結婚が起こらなかったら世界がどうなるか知ってる」なんて言ってるコメントは一つもなかったよ。人が実際に言ってないこと（ストローマン）に対して反論するのは簡単だけど、読んでてつまらないし、混乱するだけだよ。" userName="pc86" createdAt="2025/05/01 13:32:32" color="">}}




{{<matomeQuote body="僕が真顔で言う必要はないね。一般的だけど汚名も伴うことってあるんだよ。そう、離婚って messy で high costs, emotionally tough で時間もかかる。僕のもそうだったけど、それでも全然「悪い」とか undesirable じゃなかった。ビジネス始めたり、楽器習ったり、スポーツの training だって、全部そうなりうる可能性がある。でも、それらを「悪い」とか「evil」って言わないのは、結果が望ましくないって決めつけないからだよね。理想の世界でみんながいつも最高の partner を選ぶわけじゃない real world と比較しないとダメ。離婚がないってことは、ダメな相手と一生一緒ってことだよ。" userName="cgriswald" createdAt="2025/04/30 20:01:00" color="#ff5733">}}




{{<matomeQuote body="そうそう、”sex before marriage is bad” っていう考えも、 experiment して partner を見つけるのをさらに難しくしてるよね。" userName="wkat4242" createdAt="2025/05/01 07:16:33" color="">}}




{{<matomeQuote body="quick no-fault divorce 以外にも alternative はたくさんあるよ。待機期間とかね。離婚の process は Parental alienation や psychologist evals とか、すごく game されやすいんだ。嘘の訴えとか exploit される可能性。 instant か全くないか、の二択じゃないんだ。 usually みんな離婚の consequences 分かってても結婚生活よりマシだから選ぶ。でも adversarial になることも。judge や counsel も影響する。divorce が bad ってより family court の ordeal 自体が damage も。 alternative は、よりマシな laws か marriage の unpopular 化。 marriage が減ると partnership のデータも掴みにくくなってる。 [0], [1] に詳しい情報。" userName="smcin" createdAt="2025/04/30 21:19:40" color="#38d3d3">}}




{{<matomeQuote body="人気の歌の名前をつけるとかね、若者向けにさ。”Gangam C”とかどうよ。" userName="TZubiri" createdAt="2025/04/30 15:21:13" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Scunthorpe problemを思い出したよ。https://en.wikipedia.org/wiki/Scunthorpe_problem" userName="matsemann" createdAt="2025/04/30 07:44:01" color="#45d325">}}




{{<matomeQuote body="面白いことにさ、チャートだとRustの人気がリリース前から始まってるんだよね。Rustの熱狂的な連中はさ、言語が存在する前から始めてたってわけ！" userName="brian-armstrong" createdAt="2025/05/01 05:25:41" color="#ff5c5c">}}




{{<matomeQuote body="コンテキストに基づいて単語の曖昧さを解消できればいいんだけどね。そのためには良い言語モデルが必要だ。でも持ってないんだよね…って、待てよ。" userName="Matumio" createdAt="2025/05/01 13:29:19" color="#45d325">}}




{{<matomeQuote body="ああ、そうだね…じゃあ、衰退が見られるのはさらに予想外かも。" userName="jasonthorsness" createdAt="2025/04/30 05:04:41" color="">}}




{{<matomeQuote body="どうかな、個人的にはJavaは今までで一番良く見えてるけど、LinkedInで求められてるものとしてはかなり衰退してる”feel”がするんだ。最近はTypeScriptとかNode.jsが、元々JavaScriptでヒットしてた部分を一部引き継いでるのかもしれないね。" userName="cs02rm0" createdAt="2025/04/30 08:04:03" color="#ff33a1">}}




{{<matomeQuote body="Java開発者の採用は簡単だけど、ElixirやErlangがJVM領域を侵食してるみたいで、Javaは衰退してるかもね。Oracleの評判も悪いのが追い打ちかけてるんじゃないかな。" userName="cess11" createdAt="2025/04/30 10:54:20" color="#ff33a1">}}




{{<matomeQuote body="ちょっとした偶然で会社のJavaの世界に入った身として言うと（その前はエコシステムに深くなかったんだ）：一番Javaに投資してる企業ですら、今はOracleの影響力を警戒してるみたいだよ。Oracleの技術に疑問を持ったり、あからさまに撤退戦略を立ててたりするのが、もうデフォルトの姿勢って感じだね。" userName="patates" createdAt="2025/04/30 12:14:12" color="#ff5c5c">}}




{{<matomeQuote body="Oracle関連でトラウマ抱えてる企業が多いみたい（ライセンスや監視問題とかね）。勿体ないけど、Mavenに慣れればJava自体は生産的で、ライブラリも豊富で’エコシステム’も良いんだ。「Debian」みたいに安定してるって感じかな。" userName="cess11" createdAt="2025/04/30 18:57:54" color="#ff5c5c">}}




{{<matomeQuote body="新しいJavaは悪くないみたいだけど、実際のエコシステムのほとんどは過去のままなんだよな…。結局、既存のエコシステムの中で作業することが多くなるだろうね。" userName="karel-3d" createdAt="2025/04/30 13:46:53" color="">}}




{{<matomeQuote body="a) ”JS”の検索で”JSON”のインスタンスも引っかかるの？<br>b) 検索で一番難しいのは”R”とか”R language”だよね。ちゃんとインデックスできてるか確認した方がいいよ。関連ワードはRStudio、Posit、[R]Shiny、tidyverse、data.table、Hadleyverseとかね…。" userName="smcin" createdAt="2025/04/30 20:37:42" color="#ff5733">}}




{{<matomeQuote body="20 GiBのHacker Newsの全履歴JSONファイルを持ってたんだ。<br>テキストだけのサイトなのに、その容量には正直驚きだよ。HNが18年間存在した間に、人間が200億バイト（20GB）以上のテキストを投稿できたってこと？平均すると1日2MB以上、秒速7.5KBくらいか。" userName="userbinator" createdAt="2025/04/30 08:16:04" color="#ff5c5c">}}




{{<matomeQuote body="1日2MBってそんなに多い気はしないな。投稿量は多分、年々指数関数的に増えてるんじゃない？特にRedditがゴタゴタした後なんかは、最新で最大の終わらない9月だったしね。<br>あと、相当量が人間じゃないと思うな。/newestはボットスパムでいっぱいだよ。" userName="sph" createdAt="2025/04/30 08:22:33" color="#ff5733">}}




{{<matomeQuote body="あとJSON構造のメタデータもあるでしょ？平均的なコメントだと、あれでどれくらい増えるんだろう、10パーセント？" userName="samplatt" createdAt="2025/04/30 08:49:10" color="">}}




{{<matomeQuote body="平均的なコメントだと、100パーセント増に近いんじゃないかな。もし平均的なコメントが数文で、メタデータにid、parent id、author、timestamp、それにvote countがあったら、結構すぐにかさ増しされるよ。" userName="kevincox" createdAt="2025/04/30 10:31:47" color="">}}




{{<matomeQuote body="12時間ごとに本一冊分くらいかな。" userName="FabHK" createdAt="2025/04/30 09:37:10" color="">}}




{{<matomeQuote body="7.5KB/s（つまり秒速7500文字ね）って現実的じゃない音だったから、自分で計算してみたんだ［0］。そしたら、34 bytes/s（0.03 KB/s）に近いって分かったよ。JSONのメタデータとか構文のせいで、実際はもっと低いんだよね。でも”1日2MB以上”って点は君が正しかったな。<br>［0］ まあ、計算はChatGPTにやらせたんだけど、合ってるみたいだよ：https://chatgpt.com/share/68124afc-c914-800b-8647-74e7dc4f21..." userName="olalonde" createdAt="2025/04/30 16:12:09" color="#ff5733">}}




{{<matomeQuote body="Redditのアーカイブ全体は、APIが廃止される少し前に約4TBだったらしいよ。それは完全に圧縮されてて、昔はthe-eyeってとこでホストされてたんだ。もし興味があるなら、まだトレントでファイルを入手できる場所もあるよ。ぶっちゃけゴミみたいなのが多いけど、初期の頃、特に2018〜2019年より前は見てみる価値があるかもね。スマートなボットが出てくる前だし。" userName="NitpickLawyer" createdAt="2025/05/01 03:38:40" color="#38d3d3">}}




{{<matomeQuote body="20 GBのJSONは驚きだな。俺はHNの全データが20 GBのsqliteファイルに入ってるんだけど、JSONだとこれよりずっと大きくなるはずだよ。" userName="xnx" createdAt="2025/04/30 13:31:47" color="">}}




{{<matomeQuote body="20 GBのJSONっていうのは合ってるみたい。APIからダンプした全データは先週の月曜までので19.4GBだったんだよ。<br>du -c ~/feepsearch-prod/datasource/hacker-news/data/dump/*.jsonl | tail -n1<br>19428360        total<br>どういうsqliteファイルなのかはわかんないけど、サイズがだいたい同じくらいっていうのはありえそうって気がするな。JSONは構造とかASCII形式の値とかでオーバーヘッドが多いけど、sqliteにはインデックスとかbtreeとかptrmapsとかoverflow pagesとかfreelistsとか色々あるからね。" userName="wolfgang42" createdAt="2025/04/30 16:29:28" color="#45d325">}}




{{<matomeQuote body="sqliteって固定型じゃないんだって。データ保存するのにタグ付き値システムを使うんだってさ、そのことについて読んだことあるよ。" userName="elcritch" createdAt="2025/05/01 03:32:03" color="">}}




{{<matomeQuote body="SQLiteファイルはサイズのためじゃなくて、速いクエリのために最適化されてるんだ。" userName="kortilla" createdAt="2025/05/01 13:45:56" color="">}}




{{<matomeQuote body="合計サイズが小さい気がするな。何十万人ものアクティブユーザーと数百万人の全ユーザーからの20年近くの貢献なのに。<br>Google+のテキストデータ量をサイトが閉まる2019年に試算したことがあるけど、「テキストデータ」（メディアとか余計なHTMLとか除く）は数ギガバイトしかなかったんだ。<br>これは他のことにも関係するよ。<br>- Archive Team（IAとは無関係だけど協力してる）はG+のアーカイブに取り組んだけど…成功は様々だった（多くのコンテンツはアーカイブされたけど、すごく多くはされなかったし、コメントはほとんど残ってない）。フルページをスクレイピングしてサイトをそのまま表示しようとしたことで、保存データ量はめちゃくちゃ増えたのに、サイトの面白さの多くを逃したんだ。<br>- テキスト貢献を保存することに興味がある人たちは、かなりの人数でもストレージ要件はすごく控えめなんだ。例えば、毎日平均45分オンラインで、45wpmで、半分の時間を書くのに使ってるとして、一日一人あたり約1000語、約6KBになる。1000人で6MB、100万人で6GB、10億人で6PB。実際の値はもっと低いだろうね。<br>- 位置情報や動画みたいな「入力されないデータ」の量が、今のデータ収集の大部分なんだ。" userName="dredmorbius" createdAt="2025/05/01 04:43:12" color="#785bff">}}




{{<matomeQuote body="HNをダウンロードするときのネットエチケットってどうなの？Dangさんに許可取ってからサーバーに負荷かけるべき？それとも、もうどの十億ドル企業も何度もやってるだろうから、どうせ気づかれないだろうって assumption しちゃうの？" userName="SilverBirch" createdAt="2025/04/30 09:05:14" color="">}}




{{<matomeQuote body="文字通り公開データベースがあるよ<br>https://console.cloud.google.com/marketplace/product/y-combi..." userName="internetter" createdAt="2025/04/30 17:14:11" color="#ff33a1">}}




{{<matomeQuote body="EUから「忘れられる権利」を行使されて、何年も前のHNコメントを削除してって要求されたらどうなるの？その削除は公開データベースに反映されるの？それともDBをマイニングして削除されたデータを見つけられたりする？" userName="umvi" createdAt="2025/04/30 17:41:56" color="">}}




{{<matomeQuote body="要求はデータをホストしてる人に伝える必要があるんだよ。HNが削除したなら、彼らはホストしてないことになるからね。" userName="jeremyjh" createdAt="2025/04/30 20:50:51" color="">}}




{{<matomeQuote body="あれは完全にサードパーティのプロジェクトだから、そこにYCをパートナーとして載せるべきじゃないと思うな。" userName="dang" createdAt="2025/04/30 21:39:42" color="">}}




{{<matomeQuote body="へえ、うん、それは本当に誤解を招くね。YCによるものに見えちゃうよ。" userName="internetter" createdAt="2025/04/30 22:16:30" color="">}}




{{<matomeQuote body="それ，変えてって頼むべきかなあ…Google迷宮に人間がいるかすら怪しい中突っ込んでいくの，マジ疲れる．" userName="dang" createdAt="2025/05/01 02:31:00" color="">}}




{{<matomeQuote body="別に害はないみたいだし，商標とかは優先してないみたいだね．それに，みんながダウンロード許可とか方法聞いてメールしてくるの，本当にイヤでしょ？Googleのやつのおかげで手間が省けてるんだと思うよ．まあ，事前に相談してくれたらもっと良かったんだけどね．" userName="Tomte" createdAt="2025/05/01 05:19:36" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="何年も前から，あの製品について助けてってサポートメールがいっぱい来てたんだよね．ずっと何でかなって思ってたけど，今なら分かった気がする．" userName="dang" createdAt="2025/05/01 18:43:48" color="#ff33a1">}}




{{<matomeQuote body="HNにはさ，APIがあるんだよ．記事にも書いてあったけど，レート制限すらかかってないし．データは全部YCの会社，Firebaseにホストされてる．だから大丈夫だって．" userName="krapp" createdAt="2025/04/30 10:06:37" color="#ff33a1">}}




{{<matomeQuote body="Firebaseって，Googleが持ってて運営してるんだよ（前からだけどね）．" userName="mikeevans" createdAt="2025/04/30 13:15:36" color="#ff33a1">}}




{{<matomeQuote body="スリーレターエージェンシーとか言うまでもなく，HNのニックネームに偶然本名が紐付いちゃったりしないよね？" userName="euroderf" createdAt="2025/04/30 09:11:31" color="">}}




{{<matomeQuote body="まあさ，Hacker Newsって名前だし，ハッキングは別にありだろ．少なくとも良い意味でのね．" userName="TZubiri" createdAt="2025/04/30 15:22:21" color="">}}




{{<matomeQuote body="公開されてるウェブ上のものはさ，もうすでに何千ものボットにスクレイピングされてるってことだよ．" userName="alt227" createdAt="2025/04/30 13:30:17" color="#45d325">}}




{{<matomeQuote body="マジで彼らが宣伝してるAPIがあるんだよ．彼らを批判する前にさ，その部分読んだの？" userName="dangoodmanUT" createdAt="2025/04/30 13:45:50" color="#ff33a1">}}




{{<matomeQuote body="俺も似たようなことやったことあるよ．BigQueryのデータセット（なんか知らんけど更新され続けるやつ）をズルして使って，データparquetに書き出してダウンロード，duckdbでクエリしたんだ．" userName="flakiness" createdAt="2025/04/30 05:51:17" color="#45d325">}}




{{<matomeQuote body="それってズルじゃなくて、ただ合理的ってだけじゃん。" userName="minimaxir" createdAt="2025/04/30 06:06:45" color="">}}




{{<matomeQuote body="ほとんどのズルを正当化するなんて、なんて合理的なやり方なんだ。" userName="AbstractH24" createdAt="2025/04/30 13:22:43" color="">}}




{{<matomeQuote body="筆者が冗談で「Hacker News全データでLLMボット学習させて人間投稿置き換え」って言ってたけど、誰かマジでやりそうで怖いわ。もしそうなったら止められるかな？" userName="bambax" createdAt="2025/04/30 08:59:20" color="#ff5733">}}




{{<matomeQuote body="人間同士の信頼ネットワーク作るって考え、AI時代にマジ重要になってきてると思う。友達の友達の…って感じで信頼を繋ぐ仕組み。プライバシーとか課題はあるけど、不信な奴との繋がりは評価下げるとか調整できそう。システム騙そうとする奴にも対応できる頑丈なネットワークにできるかが鍵だね。" userName="icoder" createdAt="2025/04/30 09:46:43" color="#ff5733">}}




{{<matomeQuote body="それ、もう始まってないってどうして言える？ 長くて内容があるコメントなら、まあ大体わかるけど、1、2年前よりずっとわかりにくくなった。短い、1、2文のコメントは？ LLMはもう人間として通用するくらい賢いと思うよ。" userName="miki123211" createdAt="2025/04/30 09:30:46" color="#ff33a1">}}




{{<matomeQuote body="でも、LLMが建設的で役に立つコメントを残すようになったらどうなる？ 俺個人は xkcd みたいな気分になるだろうけど、他の人は違うかもね。" userName="Joker_vD" createdAt="2025/04/30 10:46:07" color="">}}




{{<matomeQuote body="今の匿名オープンなネットを保つ方法思いつかないわ。今後はID認証、招待制、ひたすらスパムと戦う（負ける）かのどれかになると思う。どれも嫌すぎ。AIスパムだらけのネットとかマジ勘弁だわ。" userName="no_time" createdAt="2025/04/30 09:34:45" color="#ff5c5c">}}




{{<matomeQuote body="AIコメントだらけになったら、問題はスパムじゃなくて人間交流がないことだってわかるだろうな。「もっと野菜食べようね」「道路で動物轢かなくて偉かったね」「今夜ママに電話してね、しばらく連絡してないでしょ」みたいなAIの定型文なんて、機械が作ったなら全く意味ないし虚しいだけじゃん。" userName="gosub100" createdAt="2025/04/30 12:17:43" color="#45d325">}}




{{<matomeQuote body="結局のところ、市民間の共通の信頼を保証するのは国家の根本的な役割だよ。イデオロギー的な理由とか、主に世代間ギャップのせいで議員がネットに本気で関心を持ってないとか、いろいろあってまだ実現してないけど、政府発行のインターネット版IDやパスポートみたいなものが、遅かれ早かれ主流になると思う。" userName="littlestymaar" createdAt="2025/04/30 09:55:15" color="#38d3d3">}}




{{<matomeQuote body="俺は、それは君がそう意味すると捉えるなら何でも意味すると思うよ。人類は、死んだ誰かが書き記した宗教に基づいて、まあまあうまくやってきたじゃん。えーっと、まあ「まあまあうまく」じゃないかもしれないけど、言いたいことはわかるでしょ？ AIだろうと、聖典だろうと、他の人間だろうと、君が好きな意味を帰属させられるんだよ。" userName="withinboredom" createdAt="2025/04/30 15:10:10" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
