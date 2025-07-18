+++
date = '2025-07-11T00:00:00'
months = '2025/07'
draft = false
title = 'スイス名門ETHチューリッヒとEPFLが公開インフラで開発したLLMをリリースへ！'
tags = ["AI", "LLM", "機械学習", "研究開発", "インフラストラクチャ"]
featureimage = 'thumbnails/green4.jpg'
+++

> スイス名門ETHチューリッヒとEPFLが公開インフラで開発したLLMをリリースへ！

引用元：[https://news.ycombinator.com/item?id=44535637](https://news.ycombinator.com/item?id=44535637)




{{<matomeQuote body="ETHとEPFLのLLMプロジェクトに期待してる。古いLLaMAベースだと性能はSOTAに劣るかもだけど、大規模トレーニングの経験を積むのが大事だよ。新しいAIクラスタはまだ問題があるって聞くし、大規模モデルの訓練はインフラが重要なんだ。俺、スイス人でETH出身。" userName="isusmelj" createdAt="2025/07/11 20:30:19" color="">}}




{{<matomeQuote body="いや、このモデルはLLaMAとは全然関係ないよ。俺たち独自のアーキテクチャを使って、ゼロから訓練してるんだ。LLaMAはオープンな訓練データがないし、非準拠だけど、このモデルは違うんだからね。俺、訓練チームのメンバーだからさ。" userName="lllllm" createdAt="2025/07/12 06:39:41" color="#38d3d3">}}




{{<matomeQuote body="もしGGUFsとかUnsloth dynamic quants、それからUnslothを使ったファインチューニングのサポートが必要なら、俺が喜んで手伝うよ！<br>https://github.com/unslothai/unsloth" userName="danielhanchen" createdAt="2025/07/12 07:31:17" color="#785bff">}}




{{<matomeQuote body="まさにその通り！先週LinkedInでメッセージ送ったんだけど、ここだとすごく良い感じだね、本当にありがとう！" userName="lllllm" createdAt="2025/07/12 08:11:30" color="">}}




{{<matomeQuote body="ああ、ごめんね、見逃しちゃったかも！君か同僚がメールをくれたっけ？もしよかったら、俺のメールは daniel @ unsloth.ai だよ。" userName="danielhanchen" createdAt="2025/07/13 07:24:36" color="">}}




{{<matomeQuote body="L3にはオープンな事前学習データがあるよ。法的な理由で公式じゃないけどね。<br>https://huggingface.co/datasets/HuggingFaceFW/fineweb" userName="moffkalast" createdAt="2025/07/12 10:09:53" color="#38d3d3">}}




{{<matomeQuote body="うん、CommonCrawlのフィルタリングされて重複排除されたHTMLを取るならね。このトピックで最近動画作ったから見てみて。<br>https://www.youtube.com/watch?v=8yH3rY1fZEA" userName="zX41ZdbW" createdAt="2025/07/15 18:41:20" color="#45d325">}}




{{<matomeQuote body="面白いプレゼンだった、ありがとう！81TBで72分の取り込みって、1TB/分か19GB/秒か。分散型？昔CHパフォーマンスで遊んでた時より取り込みレートがはるかに低かったんだけど、どうやって19GB/秒を達成したのか不思議だよ。" userName="menaerus" createdAt="2025/07/16 06:42:43" color="">}}




{{<matomeQuote body="著作権データを使わないってこと？それだとLLaMaや他の有名モデルに比べて不利になるんじゃないかな。みんなが手に入るものは何でも使ってるのは公然の秘密だしね。でも頑張って、すごく必要なプロジェクトだよ！" userName="Al-Khwarizmi" createdAt="2025/07/12 09:50:41" color="#ff5733">}}




{{<matomeQuote body="著作権データでの学習は、ロボッツ.txtみたいなオプトアウトメカニズムを守ればEU AI Actやデジタルミレニアム著作権法でOKなんだって。このLLMはそれらを尊重して学習してて、性能差もなかったらしいね。研究目的だとオプトアウト無視できるから、比較もできたんだ。" userName="badsectoracula" createdAt="2025/07/12 10:13:49" color="#785bff">}}




{{<matomeQuote body="やばい、これめっちゃクールなプロジェクトじゃん！結果が超楽しみだよ。<br>どうやってるのか、ブログとか論文でまとめてる？あと、ETHでどの研究グループが今これやってるの？" userName="d3m0t3p" createdAt="2025/07/12 10:13:25" color="">}}




{{<matomeQuote body="Dbpedia使ってるの？" userName="macawfish" createdAt="2025/07/12 06:41:54" color="">}}




{{<matomeQuote body="いや、主なソースはFineweb2だよ。でも、コンプライアンスとか毒性除去、それにFineweb2-HQみたいな品質フィルターを追加してるんだ。" userName="lllllm" createdAt="2025/07/12 07:13:22" color="#785bff">}}




{{<matomeQuote body="ここで関わってくれて感謝！フィルタリングが言語カバー率にどう影響したか教えてくれる？例えばFineweb2は1800以上の言語があるけど、Fineweb2-HQは20言語だけだよね。EUの24公用語のカバーにめっちゃ興味あるんだ。" userName="PeterStuer" createdAt="2025/07/12 07:54:54" color="#45d325">}}




{{<matomeQuote body="品質フィルターかけなかった言語も含めて、1800以上の（スクリプト／言語）ペアは全部キープしたよ。品質フィルターをかけた言語とそうじゃない言語を混ぜるのがどう影響するかは、まだ検討中なんだ。予備的な研究（https://arxiv.org/abs/2502.10361 の4.2.7節）だと、品質フィルターが多言語の”呪い”をある程度和らげて、異なる言語間の汎化を助ける可能性を示唆してるけど、大規模での効果はまだ見極め中だね。" userName="lllllm" createdAt="2025/07/12 08:06:36" color="#ff5c5c">}}




{{<matomeQuote body="俺的には、LLMの「魔法」の多くって、SFTとか他のファインチューニング、RLHFデータみたいなデータセット駆動だと思うんだよね。それが実際に使われるモデルとそうじゃないモデルを分けてる。インフラが超大事で、ソブリンなLLMサプライチェーンで最も重要な部分ってのは完全に同意するよ。でも、モデルがちゃんと使えるように、データにも初期段階から十分注目してほしいな。" userName="andy99" createdAt="2025/07/11 21:09:57" color="#785bff">}}




{{<matomeQuote body="「ゼロから（from scratch）」って読んだ時、ファインチューニングだけじゃなく事前学習もやってるのかなって思ったんだけど、違う？Llamaアーキテクチャ使ってるの？ベンチマーク結果がめっちゃ気になる！" userName="luke-stanley" createdAt="2025/07/11 20:53:17" color="">}}




{{<matomeQuote body="SOTAなLLMを学習するには、インフラはかなり複雑になるよね。みんなRayみたいなのを使って、アーキテクチャとデータセットをロードするくらい簡単だと思ってるけど、データセット設計、評価パイプライン、トレーニング方法、ハードウェアの最大限活用、ノード間の遅延処理、エラーからの回復とか、たくさんやることがあるんだ。でも、この分野にどんどんプレイヤーが増えるのは良いことだね。" userName="alfalfasprout" createdAt="2025/07/11 22:01:02" color="#785bff">}}




{{<matomeQuote body="70Bっていうモデルサイズだと、671BのDeepseek R1に比べたらSOTAに追いつくのが大変そうだな。そこがちょっと心配。" userName="asjir" createdAt="2025/07/12 12:58:39" color="#ff5c5c">}}




{{<matomeQuote body="SOTAの性能ってモデルサイズに比例するからね。もし70BのLlama 3.3とかと比べて性能が上なら、すごく役立つんじゃない？Deepseek R1のフルバージョンを動かすVRAMなんてみんな持ってないし。" userName="zettabomb" createdAt="2025/07/12 13:12:20" color="#785bff">}}




{{<matomeQuote body="DeepSeekってMixture of Expertsじゃなかったっけ？それだと全パラメータが一度に有効になるわけじゃないよね。70Bって、ローカルで使えるのと普段使いにちょうどいいバランスだと思うんだ。SOTAじゃなくても、素晴らしい第一歩だよ。" userName="tough" createdAt="2025/07/12 16:58:29" color="#ff5733">}}




{{<matomeQuote body="「データ収集でウェブクローリングのオプトアウトを尊重しても、性能低下はほとんどない」って、これすごくいい話だね！" userName="k__" createdAt="2025/07/11 19:32:07" color="">}}




{{<matomeQuote body="この結果の理由って、インターネット上のデータが、クローリングのオプトアウトを無視する人たちによってすでに他の場所にコピーされてるからなのかな？彼らがオプトアウトを尊重しても、結局他人が無視してたらデータをコピーしてるのと同じってことになるのか。" userName="stephen_cagle" createdAt="2025/07/12 03:24:58" color="#ff33a1">}}




{{<matomeQuote body="うん、面白い疑問だね。俺たちのarXiv論文[1]でニュース記事についてこれを研究して、重複記事も除去したんだ（デコンタミネーション）。ニュースデータの場合、LLMの下流精度に影響はなかったよ。<br>[1] https://arxiv.org/abs/2504.06219" userName="lllllm" createdAt="2025/07/12 07:12:02" color="#45d325">}}




{{<matomeQuote body="俺の予想だと、そんなに多くのデータが除去されるわけじゃないんじゃないかな。ランダムにウェブからスクレイピングされたデータよりも、後処理された学習データの方がたぶん重要なんだと思う。" userName="conradkay" createdAt="2025/07/12 04:46:52" color="">}}




{{<matomeQuote body="ウェブがすでにスクレイピングされてテキストだけになったソースって、まだないのかな？LLMの学習で車輪の再発明を防ぐために、誰かがそういうのを作ってそうだけど。ウェブは動的なものだけど、それでも何らかのレベルでは役立つ気がするな。" userName="JKCalhoun" createdAt="2025/07/12 02:19:16" color="#ff33a1">}}




{{<matomeQuote body="Common Crawl、とかかな？" userName="CaptainFever" createdAt="2025/07/12 10:32:59" color="">}}




{{<matomeQuote body="最終ユーザーを除けば、学習指標での性能低下はないってことか。結局のところ、ユーザーとウェブサイトの所有者の関心は完全に別物だよね。ユーザーは答えとコンテンツを求めるけど、ウェブサイト所有者は広告とかで注目を集めたい。一つの主しか仕えられないってことだよ。" userName="Onavo" createdAt="2025/07/11 20:12:14" color="#ff5733">}}




{{<matomeQuote body="ユーザーは答えやコンテンツを欲しがるけど、ウェブサイト運営者は注目を集めて広告とかで儲けたいんだよね。この二つは両立できないんじゃない？もしウェブサイト運営者がコンテンツを壁で囲んじゃったら、どうやってユーザーに情報を提供するのさ？市場の片方を無視するわけにはいかないでしょ。" userName="esafak" createdAt="2025/07/11 20:22:46" color="#785bff">}}




{{<matomeQuote body="無視すればいいんだよ。クローラーでバイパスして、学習データも公開しない。だから、オープンソースモデルはオープンウェイトモデルに勝てないんだよ。" userName="Onavo" createdAt="2025/07/11 21:06:27" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="オープンソースモデルがオープンウェイトモデルに勝てないってのは一理あるけど、それがどれほど強力な点かはまだ不明だね。同じ学習データでも、アーキテクチャによっては勝つ可能性もゼロじゃない。でも、それは短命だろうな。すぐにプロプライエタリな方も次のリリースで改善してくるだろうから。" userName="diggan" createdAt="2025/07/11 22:30:42" color="#38d3d3">}}




{{<matomeQuote body="robots.txtを尊重するオープンソースモデルが、他のモデルがアクセスできる情報がないのに、どうして同じパフォーマンスを出せるわけ？" userName="jowea" createdAt="2025/07/11 23:29:12" color="#ff33a1">}}




{{<matomeQuote body="データが3%悪くても、アーキテクチャが5%良ければ勝てるかもね。それか、robots.txtを尊重することで資金を得て、長く訓練できて4%有利になる可能性もある。一つの変数にこだわりすぎないで。どれもだんだん効果が薄れていくもんだよ。" userName="Dylan16807" createdAt="2025/07/12 06:34:46" color="#ff5c5c">}}




{{<matomeQuote body="試してみなきゃ、どうやったらわかるのさ？" userName="datameta" createdAt="2025/07/12 02:36:41" color="">}}




{{<matomeQuote body="例えばrobots.txtでドキュメントがブロックされてて、fooExecute()の使い方の例も他にない場合、LLMがfooExecute()がintを二つ引数にとるって知るのは論理的に不可能だよね、同意しない？" userName="jowea" createdAt="2025/07/12 02:49:35" color="#45d325">}}




{{<matomeQuote body="同意するよ。でも、それってそこまで重要じゃないと思うんだ。あらゆるAPIを丸暗記してるデカいLLMは欲しくないし、APIが変わるたびにウェイトを更新しなきゃいけないなんて嫌だ。Codex（とか似たやつ）みたいに、作業中に必要なAPIを調べられる今のやり方の方が好きだな。APIがどれだけ変わっても同じウェイトで動き続けるからね。" userName="diggan" createdAt="2025/07/12 08:41:16" color="#ff33a1">}}




{{<matomeQuote body="確かにモデルはその例を“知らない”だろうけど、そこが論点じゃないんだ。最終的な目標は、人間開発者が自分の知識と経験でメソッドシグネチャを推測するように、モデルが自分でそれを理解することだね。知性って丸暗記だけじゃないんだから。" userName="tharant" createdAt="2025/07/12 05:32:46" color="#ff5733">}}




{{<matomeQuote body="人間だって、一般的にメソッドシグネチャや効果を神がかり的に推測できるわけじゃないよ。add()関数が2つの数字を取るというのはわかるけど、リストかもしれないし、2要素のタプルかもしれないよね？ドキュメントがなきゃ、LLMも私たちも分からない。LLMが利用時にドキュメントを参照する方が、学習データに含めるより実用上劣るんじゃない？ひょっとして、私が話してるのはデジタル化された全人類知識のコピーを持ってるスーパーオートコンプリートのことだけど、君は(proto-)AGIのこと話してるのかな？" userName="jowea" createdAt="2025/07/12 06:31:51" color="#ff5733">}}




{{<matomeQuote body="「add()関数って、引数が2つの数字かリストかタプルか、LLMにはドキュメントないとわかんないよね？」って意見に対して、「人間なら可能性が高い順に試すよな」って話だね。" userName="heavenlyblue" createdAt="2025/07/12 08:21:15" color="">}}




{{<matomeQuote body="この論文がその疑問に答えようとしてるよ: https://arxiv.org/abs/2504.06219<br>準拠してるのとそうじゃないので、品質の差が意外と小さいんだって。" userName="lllllm" createdAt="2025/07/12 08:45:00" color="#38d3d3">}}




{{<matomeQuote body="ETH Zurichってすごいことたくさんやってるから、そこで勉強したいわ。<br>あんなに優秀な人がいっぱい出てるなんて信じられないね。" userName="defraudbah" createdAt="2025/07/12 08:09:16" color="">}}




{{<matomeQuote body="ETH Zurichをすごいって思ってるから、そこの人や製品も自動的にすごいって決めつけてる可能性もあるよね。<br>なんか循環論みたいになってるかも。" userName="blue_light_man" createdAt="2025/07/12 12:20:13" color="">}}




{{<matomeQuote body="ETH Zurichのオンラインコース、”完璧な”形式になる前に受講したんだけど、品質とか簡潔なのに情報が濃い教育コンテンツは、時代を先取りしてたって言えるよ。" userName="datameta" createdAt="2025/07/12 16:33:24" color="#ff5733">}}




{{<matomeQuote body="うん、まさにその通りだね。最近のあの超速カートプロジェクトみたいに、普通のスタートアップとかメディア活動とは一線を画す、メディア受けする”良い”例がいくつか思い浮かぶよ。<br>https://ethz.ch/en/news-and-events/eth-news/news/2023/09/fro..." userName="rtaylorgarlock" createdAt="2025/07/12 14:58:56" color="#ff5c5c">}}




{{<matomeQuote body="2年前までETHって何かわかんなかったし、スイスのethereumクラブかなんかだと思ってたよ。<br>それからちょくちょく耳にするようになって、ETHグッズ身につけてる人も見かけるようになった。<br>大学なのかそこの人たちなのかは行ったことないから知らないけど、色々な分野でETH Zurichって聞くし、なんか意味あるんだろうなって。" userName="defraudbah" createdAt="2025/07/13 12:20:19" color="">}}




{{<matomeQuote body="スイス人として、これがHNのトップにあるのを見て超誇らしいね。<br>この2つの大学は世界クラスの創業者、研究者、エンジニアを輩出してるんだ。<br>でも、いつもUSの影に隠れてるんだよな。ウチらのトップクラスの公共インフラ、教育、政治的安定（＋中立性）があれば、オープンLLM分野で何か特別なものを作るユニークなチャンスがあるはず！" userName="hubraumhugo" createdAt="2025/07/11 20:51:54" color="#38d3d3">}}




{{<matomeQuote body="EPFLとETHは国際的にも結構有名だと思うけど、スイスって小さい国（人口900万人）だから、他の大国に比べるとあまり聞かないのは当然だよね！" userName="MITSardine" createdAt="2025/07/12 14:11:47" color="">}}




{{<matomeQuote body="EPFLの卒業生と仕事してるんだけどさ、マジで頭良いよ。" userName="RHSman2" createdAt="2025/07/12 10:06:24" color="">}}




{{<matomeQuote body="これってデータセットの透明性の基準になるのかな？すごく進歩してる感じだね。もしうまくいけばの話だけどさ。でもさ、もったいないチャンスを逃したよね。彼らの機械をAIps（AI Petaflops Supercomputer）って名前にしたらよかったのにね！" userName="bee_rider" createdAt="2025/07/11 20:16:26" color="">}}




{{<matomeQuote body="Allen Institute for Artificial IntelligenceのOLMoモデルも完全にオープンだと思うよ。OLMoは完全にオープンだってさ。AI2は誰もがAIにアクセスできる未来のためにオープンネスの力を信じてるんだって。重みだけオープンじゃ足りなくて、真のオープンネスはデータ、モデル、コードへの完全オープンアクセスが必要らしいよ。詳細はhttps://allenai.org/olmoを見てみて！" userName="philipkglass" createdAt="2025/07/11 20:27:38" color="#ff5c5c">}}




{{<matomeQuote body="Smollmも僕が知る限り、完全にオープンだよ。" userName="ekianjo" createdAt="2025/07/12 00:31:54" color="">}}




{{<matomeQuote body="オープンな学習データってすごい差別化要因だよね。この規模で初の完全にオープンなデータセットなのかな？The Pileみたいな以前の取り組みは価値はあったけど限界もあったしね。学習の再現性がどうなるか気になるな。" userName="WeirderScience" createdAt="2025/07/11 20:05:09" color="#ff33a1">}}




{{<matomeQuote body="＞モデルは完全にオープン：ソースコードと重みが公開され、学習データは透明で再現可能<br>これって学習データは完全に公開されないで、単に“再現可能”ってことじゃないかな？学習に使ったページのURLリストみたいな参照先だけを提供して、その内容は公開されないってことかもね。" userName="layer8" createdAt="2025/07/11 20:16:06" color="#ff33a1">}}




{{<matomeQuote body="うーん、実際のコンテンツが数百テラバイトもの大きさなら、URLを提供した方が彼らにとっても、他の人にとっても実用的かもしれないね。" userName="TobTobXX" createdAt="2025/07/11 21:11:07" color="#ff5733">}}




{{<matomeQuote body="彼らが学習に使うことが許可されてるコンテンツと、そのコピーを配布することが許可されてるコンテンツの違いが、同じくらい重要なんじゃないかな。" userName="layer8" createdAt="2025/07/11 22:19:25" color="#45d325">}}




{{<matomeQuote body="問題ないよ、うちには25 Gbit/sの家庭用インターネットがあるからね。[1][1] https://www.init7.net/en/internet/fiber7/" userName="sschueller" createdAt="2025/07/12 18:38:47" color="">}}




{{<matomeQuote body="もしURLの内容が変わっちゃったら、それは再現可能とは言えないんじゃないかな。まあ、全部web.archive.orgのURLとかなら別だけどね。" userName="glhaynes" createdAt="2025/07/11 20:44:48" color="#785bff">}}




{{<matomeQuote body="ウェブって、コンテンツのダウンロードがGitリポジトリ更新みたいにもっと簡単だったらいいのにね。今のWebのあり方は問題だよ。" userName="dietr1ch" createdAt="2025/07/11 21:36:34" color="">}}




{{<matomeQuote body="うん、多分君の言う通りだね。それでも、もしそれが本当に最先端モデルなら、URLリストだけでも今の状況よりは全然マシだよね。公開方法について具体的な要望を言ってるね。" userName="WeirderScience" createdAt="2025/07/11 20:21:50" color="">}}




{{<matomeQuote body="うん、これは君が期待してるようなデータセットじゃないよ。だって、まだ従来の著作権付きの素材が含まれてるからね。データの著作権問題に触れている。" userName="evolvedlight" createdAt="2025/07/11 22:07:58" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、それって”AIの民主化”ってことだよね。概念的なコメント。" userName="amelius" createdAt="2025/07/11 22:11:55" color="">}}




{{<matomeQuote body="プレスリリースって、どうやって作られたかはすごく書いてあるけど、他のオープンなモデルと比べて能力がどうかってことについては、ほとんど触れてないよね。情報開示への不満。" userName="oytis" createdAt="2025/07/11 20:08:32" color="#ff5733">}}




{{<matomeQuote body="大学なんだから、”どうやってやったか”を教えるのがむしろポイントなんじゃない？前のコメントへの反論。" userName="pantalaimon" createdAt="2025/07/11 20:15:48" color="">}}




{{<matomeQuote body="確かに、でも普通はすごく役立つこととか、実用的なことに応用できることを教えるもんじゃない？このケースでは、ETHとEPFLという二つのバブルが本当に何を達成するのか、あるいはただの教育用モデルなら、何に使えるのかを問うのは当然だと思うよ。" userName="EA-3167" createdAt="2025/07/11 21:12:09" color="#45d325">}}




{{<matomeQuote body="モデルは80億と700億パラメータの2サイズで出るらしいね。70B版は世界で一番パワフルな完全オープンモデルの一つになるって。晩夏にはApache 2.0 LicenseでLLMがリリースされるって言ってるけど、9月にホントかどうかわかるかな？" userName="joot82" createdAt="2025/07/11 20:32:40" color="#38d3d3">}}




{{<matomeQuote body="うん、俺はベンチマーク結果の表みたいのが欲しかったんだよね。具体的な情報形式への要望。" userName="oytis" createdAt="2025/07/11 21:32:22" color="#785bff">}}




{{<matomeQuote body="DeepSeek R2に期待したいけど、Llama 4になるのが怖いな。" userName="k__" createdAt="2025/07/11 21:19:22" color="#ff5733">}}




{{<matomeQuote body="マルチリンガルLLMと単一言語モデル、どっちがいいか気になるね。" userName="seydor" createdAt="2025/07/12 05:38:09" color="">}}




{{<matomeQuote body="これは興味深い問題で課題も多いんだ。現在のトークン化は、最も一般的な文字の組み合わせをマッピングする「バイトペアエンコーディング」を使うことが多い。そのため、ほとんどのトークン化が英語マッピングになり、LLMは他の学習言語より英語のトークン化が上手くなるんだよ。詳細はこれ見て→ https://medium.com/@biswanai92/understanding-token-fertility..." userName="tugdual" createdAt="2025/07/12 06:19:52" color="#785bff">}}




{{<matomeQuote body="でもスイスって、最先端AIチップへの無制限アクセスができる国の「Tier 2」リストに入ってるんだよね。[1] https://www.bluewin.ch/en/news/usa-restricts-swiss-access-to...[2] https://chplusplus.org/u-s-export-controls-on-ai-chips/" userName="sschueller" createdAt="2025/07/12 18:42:37" color="#ff5733">}}




{{<matomeQuote body="コンテキスト長とか性能比較の情報ある？プレスリリースは技術的な詳細が足りなくて残念だね。あと、モデルをまだリリースしてないのに（夏予定だって？）なんでこんなPR出したのか気になる。なんで遅れてるの？PRの動機はなんだったんだろう？" userName="kisamoto" createdAt="2025/07/12 19:22:22" color="">}}




{{<matomeQuote body="記事は「Open LLMは、米中企業が開発する商用システムの有力な代替手段と見なされている」って言ってるね。大手LLM企業がシステムを「エンシッティファイ」（悪用）しようとするのは明らかだよ。サブスクや広告を押し付けたり、政治的偏見を助長したりね。ヨーロッパの学術界と政府が協力して、企業じゃなくユーザーに奉仕する公益のAIを作るのは素晴らしいことだよね。" userName="wood_spirit" createdAt="2025/07/11 20:11:18" color="#ff5c5c">}}




{{<matomeQuote body="そうだけど、これって提供するのがすごく複雑なサービスなんだよね。たとえ素晴らしいモデルを開発しても、推論用にはなかなか運用できないだろうし。結局、運用するのは民間企業になって、「エンシッティファイ」へのインセンティブは変わらないよ。AIは実行コストが高いから、前の世代のテクノロジーよりもインセンティブがずっと高いんだ。つまり、「あなたが商品」の無料サービスは、利益を出すためにより積極的にあなたから価値を搾取しなきゃならないってことだね。" userName="klabb3" createdAt="2025/07/11 22:25:03" color="#ff33a1">}}




{{<matomeQuote body="TeukenやEuroLLMと比べてどうなの？" userName="Tepix" createdAt="2025/07/12 17:39:45" color="">}}




{{<matomeQuote body="残念だな。8Bは16GB VRAM（手頃なPCだとまだ一般的だよね）のGPUには低すぎるよ。そういうGPUなら、量子化次第で13Bから16Bのモデルも簡単に動かせるのに。" userName="rkrisztian" createdAt="2025/07/13 01:08:29" color="#ff33a1">}}




{{<matomeQuote body="以前Tom Scottの動画で、世界最速の車を学生が作った話があったね。そこで「車じゃなくてエンジニアを育てるのが目的だ」って言ってたのを覚えてる。このLLM開発も、公的インフラの無駄遣いじゃないよ、あの車と同じでね。" userName="PetitPrince" createdAt="2025/07/12 05:49:33" color="#38d3d3">}}




{{<matomeQuote body="グリーン電力を使ったらしいよ。今のところ、国民からの不満や批判は全くないね。きっとみんな進歩、特に自立につながるものには賛成なんだろね。" userName="herbst" createdAt="2025/07/12 09:02:52" color="">}}




{{<matomeQuote body="大学や研究クラスターは、研究コードを動かすために作られてるんだからね。普段これらのマシンを占有してる俺（数値シミュレーション分野）から見ても、このプロジェクトは通常の10倍はインパクトがあって面白いって保証するよ。学術機関がLLMに取り組むのはすごく楽しみだ。" userName="MITSardine" createdAt="2025/07/12 14:15:42" color="#785bff">}}




{{<matomeQuote body="アンチAIの立場に立って最大限擁護しようとしても、これは全く批判できないな。どうして君はそう言えるの？" userName="protocolture" createdAt="2025/07/12 01:19:47" color="">}}




{{<matomeQuote body="リリースなしでなんで発表したの？正直に言ってよ。" userName="greenavocado" createdAt="2025/07/11 20:00:12" color="">}}




{{<matomeQuote body="発表は今週スイスで開かれたInternational Open-Source LLM Builders Summitだったよ。何してるか、いつ頃リリースかを発表するのがそんなにおかしいかな？" userName="wood_spirit" createdAt="2025/07/11 20:03:06" color="">}}




{{<matomeQuote body="（少なくともアルプス山脈のこちら側では）スイスの人は、めっちゃゆっくり仕事するってのがお決まりのジョークだよ。" userName="phtrivier" createdAt="2025/07/11 20:07:55" color="">}}




{{<matomeQuote body="「できるだけ早く、でも必要なだけゆっくりと動く」ってことだね。" userName="Bengalilol" createdAt="2025/07/11 20:51:14" color="">}}




{{<matomeQuote body="資金援助？欧州の利用者が公的機関開発の欧州製LLM（少なくとも米中製じゃないやつ）を使うように誘導するのは、すごく理にかなってるよ。（ひょっとしたらブリュッセルには理にかないすぎかもね。）" userName="JumpCrisscross" createdAt="2025/07/11 20:03:18" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
