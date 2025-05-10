+++
date = '2025-05-03T00:00:00'
months = '2025/05'
draft = false
title = '本当に必要なブログとは？'
tags = ["ブログ", "ツール", "WordPress", "静的サイトジェネレーター", "メンテナンス"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> 本当に必要なブログとは？

引用元：[https://news.ycombinator.com/item?id=43877797](https://news.ycombinator.com/item?id=43877797)




{{<matomeQuote body="SSGでツールいじりに夢中になっちゃって、ホントに書きたいこと全然書けなかったんだよね。だからSSGやめてWordpress入れたら、もう気にしなくなった。超解放された感じ。ツールいじり自体が目的ならいいけど、そうじゃなくて書くのが目的なら、邪魔にならないツールが一番だって改めて思ったわ。書きたい時に一番いらないのは、先延ばしするきっかけだからね。" userName="Tallain" createdAt="2025/05/03 15:29:38" color="#45d325">}}




{{<matomeQuote body="2025年のWordpressにはヤバい特徴が２つあるんだよ。まず、本体もプラグインも常に最新にしないとヤラれる可能性があること。あと、BDFLがマジでヤバい奴で、個人的な理由でセキュリティ更新を止めたり受け取れなくしたりする可能性があること。Static siteならセキュリティ脆弱性自体がないから、SSGのプロジェクトメンテナーがブチ切れても関係ないけど、Wordpressだと大問題なんだよね。" userName="lolinder" createdAt="2025/05/03 18:31:03" color="#45d325">}}




{{<matomeQuote body="Wordpressをヘッドレスで使って、バックエンドを外からアクセスできないように保護すれば、アップデートをそんなに気にしなくてよくなるよ。" userName="nedt" createdAt="2025/05/03 21:52:55" color="">}}




{{<matomeQuote body="「BDFL」って何？って思って調べちゃったよ。<br>仮にあの人がWordpressを滅茶苦茶にしようとしても、自分のワークフローに合う代替ツールを見つける時間はあるって確信してる。何か良い案があれば教えてほしいな。<br>それに、他のコメントにも書いたけど、メンテってそんなに大変じゃないんだよね。個人ブログなら、たまに３〜４回クリックするだけで全部終わるし。" userName="Tallain" createdAt="2025/05/03 19:31:54" color="">}}




{{<matomeQuote body="それはMattがあなたのサーバーから彼のサーバーへのアクセスを許可して、あなたが頼ってるプラグイン作者がログインするのを許可してくれる限りだけだよ。Wordpressにはガバナンスなんてなくて、Mattがいるだけ。そして彼を怒らせた人（または彼を怒らせた開発者に依存してる人）はマジでヤバいことになるよ。" userName="lolinder" createdAt="2025/05/03 20:30:39" color="#ff5c5c">}}




{{<matomeQuote body="Wordpress.comは普通の人には全然問題なく使えるよ。アップデートのこととか心配いらないし。俺の好みじゃないけど、マジでシンプル。" userName="sroussey" createdAt="2025/05/03 20:40:51" color="">}}




{{<matomeQuote body="Wordpress.comは多くのプラグインに対応してないんだけどさ（少なくとも俺が見た価格帯では）、でもhttps://librefm.wordpress.comで何年かハッピーに使ってたよ。<br>もちろん、Wordpress.comはwordpress.orgのコードで動いてるブログとはアップデートのされ方が違うけどね。" userName="mattl" createdAt="2025/05/04 01:39:32" color="">}}




{{<matomeQuote body="俺もツール色々変えてきたよ。DokuWikiからGitHub Pages、でも結局外部サービス使いまくりになって複雑になった。数年前にデータ全部自分で持ちたいと思ってWordpressに戻ったんだ。コメントとかMarkdownも移行できたし、今どきはFediverse連携とかプラグイン色々あるしね。SQLite使って自動アップデート有効にしたから、ほぼメンテいらずで超楽だよ。" userName="mbirth" createdAt="2025/05/04 03:06:54" color="#ff5733">}}




{{<matomeQuote body="うん、同意。でもWordPressは95％のケースで大げさだと思うな。なんでかって？メンテ（更新しないとボットネットの一部になっちゃう）が大変すぎるし、使わない機能ばっかり。ほとんどのブログならStatic Site Generator（SSG）で全然OKだよ。メンテ必要でも自分の好きな時にできるしね。" userName="atoav" createdAt="2025/05/03 17:20:02" color="">}}




{{<matomeQuote body="いや、使い方次第でWordPressは大げさにならないよ。俺の更新はボタン押すだけで簡単。プラグインもテーマもシンプルだし、普通のブログなら複雑にする必要ないんだ。ブログを休む時でも、SSGみたいに使い方思い出したりデプロイしたりする手間はいらない。そういうのは仕事で十分。ブログは”書くこと”だけに集中したいんだ。" userName="Tallain" createdAt="2025/05/03 18:12:04" color="#ff5733">}}




{{<matomeQuote body="WordPressは人気PHPプログラムでネットに公開されてるから、書くこと以外にCVEチェックやパッチ適用を定期的にやるべきだよ。ブログしてなくても休みでも必要。Static Websiteなら不要。もし”今やってないけど大丈夫”って思ってるなら危険信号だ。WordPressが出た頃からホスティングしてるから、何がヤバいか知ってるんだ。" userName="atoav" createdAt="2025/05/05 05:14:37" color="#ff33a1">}}




{{<matomeQuote body="俺、自分のブログでSSGのメンテが大変だったんだ。古いテーマ（色々いじってた）を直す代わりに、つい最近新しいテーマに乗り換えたんだよね。そしたら、SSG使ってRaw HTMLより上がったと思ってた生産性、全部失った気がする。" userName="pclmulqdq" createdAt="2025/05/03 17:33:05" color="">}}




{{<matomeQuote body="あとね、もう一つの生産性向上ポイントは、もしSSGのエンジンを完全に変えることになっても、ソースファイルが手元に残るってこと。あれ、次のエンジンでも簡単に使えるだろうし、他の試す時にも役立つよ。もし全部レンダリングされたHTMLになっちゃってたら、めちゃくちゃ大変になるからね。" userName="tlavoie" createdAt="2025/05/06 05:38:29" color="#785bff">}}




{{<matomeQuote body="俺はnikolaに結構満足してるよ［1］。マジで欲しかったのは、コマンド一つで公開できること（これは最高！）、あと画像をドラッグ＆ドロップで記事に入れられる簡単な方法（これはJupyter Notebookの公開機能でいける）。絶対イヤだったのは、『HTMLをクライアントに送る』時にデータベースみたいな余計な負荷がかかるやつだったんだ［1］ https://getnikola.com/" userName="XorNot" createdAt="2025/05/03 23:56:38" color="#45d325">}}




{{<matomeQuote body="WordPressみたいなSSRにはもう絶対戻れないと思うな。SSGの心配はビルドだけだし緊急じゃない。WordPressの心配は、ハック、マルウェア配布、プラグイン更新でサイト破壊、裏環境変更でサイト破壊（ホスティング会社が原因なのに認めない）、バックアップのメンテとか山ほどあって、時間も心配も寝不足も増えるんだ。" userName="Spunkie" createdAt="2025/05/03 18:19:01" color="#ff5c5c">}}




{{<matomeQuote body="俺らが話してるのはブログで、ビジネス重要インフラじゃない。ブログがダウンしても寝不足にならないし後で対応する。マジで重要なサイトなら別のツール選ぶかも。そんなに心配なら、多くのウェブがWordPressで動いてるわけないだろ。更新は必要だけど、何使ってもツールチェーンの更新は必要だし、更新で壊れるリスクはWordPressだけじゃない。WordPressファンじゃないけど、言われてるほど悪くないと思うよ。" userName="Tallain" createdAt="2025/05/03 18:22:00" color="#ff33a1">}}




{{<matomeQuote body="＞あと、もしこれらがそんなに心配なら、ウェブの多くがWordpressで動いてないと思うけどね。<br>うちは以前、WordpressとかJoomla、Drupalのメンテやパフォーマンス最適化、ハッキング復旧だけをやる会社を経営してたけど、それはもうひどかったし、今も大体そのままひどいよ。<br>＞アップデートで壊れるリスクはどこにでもあることで、Wordpressだけじゃない。<br>そうだね、サーバーサイドレンダリングの問題点は、ライブ環境が何十、何百もの違うソフトを積み重ねてできてて、それが全部完璧に動かないとちゃんと動かなかったり、脆弱になったりすることだね。それに、cpanelみたいな標準的なものを使って環境を管理してたら、さらに1000層の複雑さが加わるし。<br>しかも、その環境でまともなパフォーマンスを出して、そこそこ安いハードウェアで動かすのにかかる労力は言うまでもないね。<br>それに比べて、うちのSSGのライブ環境で心配することなんて、ホストが公開アクセス可能かってことくらい。脆弱になるには、ファイルパーミッションを777みたいに馬鹿な設定でもしないとダメだね。" userName="Spunkie" createdAt="2025/05/03 18:46:52" color="#38d3d3">}}




{{<matomeQuote body="繰り返すけど、ブログの話をしてるのであって、ビジネスサイトとかSSRとかCMSツールの話じゃないんだよ。ニーズが全然違うから、解決策も全然違うでしょ？<br>個人的には、ソフトウェアの更新を続けるのはそんなに大変じゃないし、複雑でもないと思うな。それにブログだったら、キャッシュしたりCDNの裏に置いたりするだけでバッチリ。複雑なことなんて何も起きてないし、頭痛いことも、夜遅くまで作業することもない。心配のかけらもないね。" userName="Tallain" createdAt="2025/05/03 19:08:22" color="">}}




{{<matomeQuote body="Wordpressはあちこちでビジネスサイトやeコマースに使われてるよ。Wordpressサイトを中心に成り立ってるビジネスだってたくさんあるし。" userName="vidarh" createdAt="2025/05/04 01:14:40" color="">}}




{{<matomeQuote body="君たち2人、話が噛み合ってないんじゃない？確かに、Wordpressを真面目なウェブサイトとかWooComerceストアとか、そういうのに使ってる人はいるよ。でもTallainはその人たちの話をしてるんじゃなくて、ブログの話をしてるんだと思うな。" userName="wlesieutre" createdAt="2025/05/04 02:24:22" color="">}}




{{<matomeQuote body="ブログだってビジネス上超重要になることも多いよ。ブログを中心にビジネス全体が成り立ってる場合もあるしね。個人的に、”Wordpressブログ”を30mドルで売った人を知ってるし。" userName="vidarh" createdAt="2025/05/04 09:11:58" color="#38d3d3">}}




{{<matomeQuote body="＞もし私のブログがダウンしても、眠れない夜を過ごしたりはしないな。後でどうにかするよ。<br>じゃあ、もしブログがマルウェアとか、超ヤバいポルノを配信してたり、DDoS攻撃に参加してたりしたら？<br>＞あと、もしこれらがそんなに心配なら、ウェブの多くがWordpressで動いてないと思うけどね。<br>一体何が君に、業界の意思決定プロセスに対してそんな信頼を抱かせてるの？" userName="lmm" createdAt="2025/05/04 12:52:47" color="">}}




{{<matomeQuote body="そうだと思うよ。私は手作業で生のHTMLを書いてるけど、それで十分だし、むしろ良い感じ。ただ、RSSフィードを作るpythonスクリプトは一つ持ってるけどね。それは書きたかったスクリプトより一つ多かったかな。Wordpressがあれば手間は省けたかもしれないけど、すでにウェブサイトがあったから、そこにブログを追加する方が楽だったんだ。" userName="blogloglog" createdAt="2025/05/03 18:38:54" color="">}}




{{<matomeQuote body="私のウェブサイトの他の部分も、生のHTML / CSSを書いてるだけだし、JSが必要な時は書く感じ。全部静的なコンテンツとちょっとしたおもちゃだから、RSSは必要ないんだ。できる時はシンプルにしておくのが良いよね。" userName="Tallain" createdAt="2025/05/03 19:11:37" color="">}}




{{<matomeQuote body="いいね！でも、ブログとして認められるには、あと2つ小さなものが必要な気がするな。<br>1－投稿を日付順（最新が一番上）に並べて、その日付をどこかに表示すること。日付は、ミニマルに保つために投稿ファイルのメタデータ（例えば作成時間）から取ればいいと思うよ。<br>2－もちろんRSSフィード！既存のスクリプトと最小限のRSSテンプレートがあれば、リンクとタイトルだけのミニマルなフィードを生成するのはかなり簡単のはず。" userName="p4bl0" createdAt="2025/05/03 09:54:13" color="#ff33a1">}}




{{<matomeQuote body="RSSは良いものだけど、ブログと見なされるために必須であるべきじゃないね。「フォローされる」のは必ずしも良いことじゃないし、audienceに媚びるプレッシャーを生み出す可能性があるからね。それってソーシャルメディアを悪くしてるのと同じことだよ。" userName="arccy" createdAt="2025/05/03 10:20:25" color="#45d325">}}




{{<matomeQuote body="＞読者に媚びるプレッシャー？ RSSにはないよ。誰が読んでるか気にする必要ないし。外部からの評価じゃなくて，ただの便利機能だよ。”" userName="politelemon" createdAt="2025/05/03 12:56:05" color="">}}




{{<matomeQuote body="書いたものがフィルターなしで大勢に見られるって知ってるから，プレッシャーは内側からくるんだよね。自分がいいと思っても，読者につまんないって思われるような投稿，それでも出したい？<br>新しい投稿全部読みたいって思われるのは，記事の質じゃなくて，外的な評価が目的になってる証拠だよ。" userName="arccy" createdAt="2025/05/03 13:56:54" color="#45d325">}}




{{<matomeQuote body="同じ理由で，ブログは言葉なしで書くべきだな。言葉があるとSOEになっちゃって，ブログの目的がSEOになっちゃうじゃん。俺は頭の中でブログ書いてるけど，それでも偏見が生まれないか心配だよ。何もないとこの湖畔の木の下に座ってる活動に影響しちゃうかもってね。" userName="throwaway519" createdAt="2025/05/03 15:02:56" color="">}}




{{<matomeQuote body="RSSユーザーって，全部の記事が自分向けじゃないって分かってる人が多いと思うな。年に数回しか読まないフィードもあるし，90%スキップするフィードもあるよ。もちろん毎日読むやつもあるけどね。質の高い情報源って，多少オフTobicな内容があるものだと思ってる。一つの狭い分野だけで十分な量書くのは難しいからね。Hacker News読むけど，クリックするのはリンクの10%くらいだよ。" userName="handoflixue" createdAt="2025/05/04 04:14:02" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="RSSはマジで自由だよ。コンテンツの質なんて超主観的だし，読者は好きなものだけ読めばいいんだ。完璧なものなんてないし，毎回傑作である必要なんて全くないよ。" userName="import" createdAt="2025/05/03 14:38:45" color="">}}




{{<matomeQuote body="＞自分がいいと思っても，読者につまんないって思われるような投稿，それでも出したい？<br>出すね。もしそういうのが嫌な読者がいたら，解除すればいいんだよ。<br>それに，読者としては，RSSやAtomはマジで便利。お気に入りのサイトを代わりにチェックしてくれるから，楽できるんだよね。" userName="adiabatty" createdAt="2025/05/08 05:28:17" color="#45d325">}}




{{<matomeQuote body="2012年からWordpressブログやってて，その前はLivejournalも何年もやってたけど，この”プレッシャー”ってやつは感じたことないな。アート載せたり，真面目なこと書いたり，友達がみんなやったクイズの結果載せたり。<br>この”プレッシャー”を気にしすぎると，新しい静的サイトジェネレーターの話しか書かないような，つまんない奴になっちゃうかもね。" userName="egypturnash" createdAt="2025/05/03 20:34:20" color="#45d325">}}




{{<matomeQuote body="正直，俺のブログのRSS読者たちは最高だよ．フィード壊れたら教えてくれるし，それ以外何も言ってこない．たまに記事気に入ったらメールくれるくらいかな．マジでそれだけ．" userName="pclmulqdq" createdAt="2025/05/04 02:09:54" color="">}}




{{<matomeQuote body="＞RSSはいいけど，ブログって呼ばれるのに必須じゃないだろ．<br>同意．ブログって文字通りウェブ上の記録だよ．時系列で並んだ投稿の並び．RSSは確かに記事を広めるのに役立つけど，ブログの定義の一部だとは俺も思わないな．" userName="susam" createdAt="2025/05/03 10:44:53" color="#ff5733">}}




{{<matomeQuote body="いい意見だね．俺が思う理想的なウェブログって，自分のこと，考え，経験をユニークに書く場所なんだ．<br>アクセス稼ぎのために媚びたり，釣り記事書き始めたりしたら，そういう視点はなくなっちゃう．大げさじゃなく，ネットの99.5%はもうそうだよ．<br>追記：非営利コンテンツを優先するMarginalia searchがマジ好き．" userName="prox" createdAt="2025/05/03 11:10:37" color="#ff5c5c">}}




{{<matomeQuote body="なるほど，わかるわ．でもさ，RSSフィードだけって世界でも，最低限のブログとしては成り立つんじゃない？" userName="qudat" createdAt="2025/05/03 12:33:23" color="">}}




{{<matomeQuote body="ブログであること自体にはRSSは必須じゃないと思うけど，ちゃんと機能する（viable）ブログにするなら必要だと思うな．" userName="citizenkeen" createdAt="2025/05/03 10:55:35" color="">}}




{{<matomeQuote body="それはフェアな意見だね！<br>1. メタデータが入った自動生成ファイル，TOMLとかの方に寄せてるんだよね<br>2. RSSは絶対やるけど，1番ができ次第って感じかな :-)" userName="ostwilkens" createdAt="2025/05/03 10:11:39" color="#ff5733">}}




{{<matomeQuote body="最小限で済ませるって考えなら，ファイル名にそれ（メタデータ）入れちゃって，生成する前にソートするだけでも良いんじゃない？" userName="MarceColl" createdAt="2025/05/03 12:10:07" color="">}}




{{<matomeQuote body="RSSってかなりシンプルなフォーマットだから，自動化なんていらないよ．ちょっとコピペするだけで大丈夫．”Handwriting your RSS feed”[0]っていう記事が，そういうやり方を推してるんだ．[0] https://everest-pipkin.com/teaching/handmadeRSS" userName="kryptiskt" createdAt="2025/05/03 12:43:13" color="#ff5c5c">}}




{{<matomeQuote body="いい記事だね．俺も似た経験があるんだ．昔はASPで作ったミニマルなサイトから始めて，今はCommon Lispで静的サイトにしてるよ．<br>最初シンプルだったけど，RSS，タグ，コメントとか必要な機能を追加していったら1300行くらいになったね．全部頭に入るサイズに抑えたいんだ．新しいアイデア（ブログロールとか）も惹かれるけど，肥大化しないように気をつけてるよ．[1] https://github.com/susam/susam.net/blob/main/site.lisp" userName="susam" createdAt="2025/05/03 10:25:25" color="#785bff">}}




{{<matomeQuote body="俺も全く同じ道をたどったよ．<br>ソースコードはここ見てね：<br>https://github.com/brilee/modern-descartes-v2/blob/master/ma...<br>含まれてる機能は：<br>1. RSS feed<br>2. 日付順のブログ一覧ページ<br>3. Tagging system<br>4. Localhost dev server with file-watching recompilation step．" userName="brilee" createdAt="2025/05/03 12:59:37" color="#ff5c5c">}}




{{<matomeQuote body="俺の道も君のと似てるな．実は何回かやってるんだ．<br>これが今のバージョン．Pythonスクリプトで，1000行以下に収まってるよ：<br>https://github.com/llimllib/obsidian_notes/blob/c93b9b5c46fe..." userName="llimllib" createdAt="2025/05/03 11:57:08" color="#785bff">}}




{{<matomeQuote body="まさにこれだよ．自分で「このガジェット作りたいな」って言って，それをコードで実現できる能力は，どんなWYSIWYGよりも全然イケてるね．<br>投稿のまとまりとかインデックスとかスライドショーみたいな派生ページも作ったことあるし，人物とかビデオゲームごとのタグ付けもやったよ．あとは，サムネイルギャラリーとか引用みたいな普通のウィジェットの外観や使い心地を完全にコントロールできるってのも大きい．" userName="cosmicgadget" createdAt="2025/05/03 16:11:39" color="#785bff">}}




{{<matomeQuote body="俺はLambっていうの作ったんだけど，そこにFlockっていう機能を入れたんだ．これは他のフィードを自分のブログに取り込めるやつね．主にマルチユーザーの代わりになるかなと思って．https://github.com/svandragt/lamb<br>高レベルな参考になるかもね．" userName="pacifika" createdAt="2025/05/03 14:57:17" color="#45d325">}}




{{<matomeQuote body="お褒めの言葉ありがとう！RSSとか日付は絶対いるよね！<br>将来はshadersとかweb gamesも埋め込みたいな〜、複雑になりすぎずに済むといいけど。<br>あなたのブログは完璧だと思うよ！" userName="ostwilkens" createdAt="2025/05/03 11:30:51" color="">}}




{{<matomeQuote body="ブラウザにtext/markdownとtext/geminiのネイティブサポートがあるといいなって思う。<br>ブラウザがPDFをレンダリングできるんだから、markdownやgeminiコンテンツ用のシンプルなフォーマッターとユーザーがスタイルシートを決められる機能なんて、そう難しくないはず。<br>現状だとtext/plainでブログ書けるけど、ハイパーテキストじゃないからSEO的には不利なんだ（link headersでなんかできるかもだけど）。<br>他のフォーマットをサポートすれば、気軽に綺麗に公開できるし、ユーザーにコントロールが戻るよね。" userName="captn3m0" createdAt="2025/05/03 12:34:53" color="#785bff">}}




{{<matomeQuote body="ブラウザのtext/markdownネイティブサポート、難しいと思うよ。<br>まずどのMarkdown仕様にするかで合意が大変。CSVみたいにみんなバラバラだから。<br>シンプルすぎても機能不足って言われるし、拡張入れると肥大化って言われる。どんな選択でも反発は避けられない。<br>それに、PDFと違ってMarkdownをブラウザで直接読むのはごく一部の技術者しかしない。<br>普通のブログユーザーはCMSのWYSIWYGを使うから。<br>だから、生きてる間にこの機能が実現する可能性は低いと思うな。" userName="quectophoton" createdAt="2025/05/03 16:05:14" color="#ff5c5c">}}




{{<matomeQuote body="どのMarkdown仕様にするか問題についてね。<br>正しい答えはCommonMarkだよ。<br>あれなら十分共通の基盤があるから、サポートされてない拡張機能使って書いたMarkdownドキュメントでもまあまともな見た目になるし、拡張機能は気にしなくていい。<br>参照実装コードもいっぱいあるし、ライセンスも寛容だしね。<br>他の仕様を選ぶ理由はないよ（それに他の仕様もCommonMarkと十分互換性あるから大した問題じゃないし）。" userName="yellowapple" createdAt="2025/05/04 01:12:04" color="#38d3d3">}}




{{<matomeQuote body="ブラウザがPDFレンダリングできるって話ね。<br>あれはJSでやってるよ（少なくとも昔はそうだった）。<br>ブラウザがネイティブでサポートしてるより新しいXSLTのバージョンとか、jpegxlとか、他の色々なフォーマットでも同じようなライブラリがあるよ。" userName="fc417fc802" createdAt="2025/05/04 21:13:23" color="">}}




{{<matomeQuote body="Markdownと表面的な似てる部分があるから、MD知ってたら学習しやすいけど、他の点では結構違うんだ。<br>詳しくはここ見て：https://geminiprotocol.net/docs/gemtext.gmi" userName="tweetle_beetle" createdAt="2025/05/03 12:51:21" color="">}}




{{<matomeQuote body="`html_content = html_content.replace(’Minimum viable blog’, title)`ってコードについてだけど、『Minimum viable blog』って文字列が投稿に含まれてたら、毎回現在の投稿タイトルに置き換えられちゃうの？<br>それバグだよね？" userName="echoangle" createdAt="2025/05/03 10:08:15" color="#38d3d3">}}




{{<matomeQuote body="ああ、そうそう、良い指摘ありがとう！<br>記事のコードはO1の最初のドラフトで、この文字列は{{ title }}に置き換えてあるよ。" userName="ostwilkens" createdAt="2025/05/03 10:14:13" color="#ff5733">}}




{{<matomeQuote body="あと、CSSコードで`:root`と`html`を分ける必要ないよ。<br>ここではいつも同じなんだから、一緒にしちゃえば数行節約できるよ。" userName="90s_dev" createdAt="2025/05/03 10:55:14" color="#38d3d3">}}




{{<matomeQuote body="こういう最適化の話で言うとね．SVG/MathML以外のHTMLのTrailing slashはマジで無駄だよ．誤解を招くし一貫性もないから害悪だと思うんだ．＜html＞や＜head＞，＜body＞とか省略できるタグが多いよ．＜html lang＝”en”＞みたいに属性があれば省略できないけどね．圧縮は小文字がいいけど，Brotliだと＜！DOCTYPE html＞の方が良かったりするんだ．＜meta charset＝”UTF-8” ／＞より＜meta charset＝”utf-8”＞が良いよ．meta viewportの＜initial-scale＝1．0”＞の．0やスペースも要らないんだ．最後に最適化されたHTMLの構造例も載せておくね．" userName="chrismorgan" createdAt="2025/05/03 13:57:35" color="#785bff">}}




{{<matomeQuote body="ってことはさ，テンプレートとかブログエンジンのコードスニペットを貼るたびに，その時のブログ記事のタイトルに置き換わっちゃうってこと？皮肉ね／s" userName="febusravenga" createdAt="2025/05/03 10:31:21" color="">}}




{{<matomeQuote body="皮肉じゃなくてマジな話，テンプレートタグをエスケープして出力する方法って今ないんだよね．（見えないUnicode文字とかは別として）" userName="echoangle" createdAt="2025/05/03 10:34:08" color="">}}




{{<matomeQuote body="15年くらいミニマルブログ試してるんだけど，学んだことがいくつかあるよ．例えば，タイトルは行頭の＃から取得すればfrontmatter避けれるとか．ブログ記事そんな多くないならpaginationとかtags，categories，sortingも不要だったり．JSXはvanillaなサーバーサイド文字列生成ツールとして使える裏技があるよ．GH PagesでJekyllじゃなくビルドステップ使うのも最近は楽になったね．コードのシンタックスハイライトはhighlight．jsがやっぱり手軽で最強だと思う（shikiは遅い）．" userName="90s_dev" createdAt="2025/05/03 10:48:19" color="#ff5c5c">}}




{{<matomeQuote body="HugoとかZolaみたいな定番の静的ブログフレームワークとCloudflare Pagesを使えば簡単だよ．俺のミニマルブログ（100kb以下）はまさにOPの基準全部満たしてるもん．どうやったかというとね．Hugo Blog Awesomeテーマを使って，512kb guidelinesに従ってページサイズを確認したんだ．画像とか要らないJSは削ったけど，元々そんなになかったな．" userName="FlyingSnake" createdAt="2025/05/03 10:30:19" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="しばらく”MVB”ってのをやってたけど，俺のはもっと単純だったな．ただのHTMLページで，投稿は．txtファイルで書いて手動でトップページ更新してたんだ．すごく”冗長”だったけど，”モダンウェブ”に対応するよりは楽だったと思う．それからもっと洗練されたものに移って，今は個人的なサイトとブログでAstroを使ってるんだけど，正直マジで最高だよ．彼らは「コンテンツ主導型サイト」に最適なプラットフォームだって謳ってるけど，半年使って納得だね．ブログ構築の余計な部分全部取り払ってくれて，必要なこと全部について分かりやすくて簡単な規約を提供してくれてるんだ．" userName="_fat_santa" createdAt="2025/05/03 14:23:20" color="#785bff">}}




{{<matomeQuote body="いくつかのサイトで試してるのが、Bun JSでJSの文字列の中にHTML書く方法。Bunには—hotっていうフラグがあって、変更があると静的HTMLを再生成してくれるんだ。IntelliJ IDEは// language=htmlっていうコメントを文字列の上に書くと、中のHTMLを整形してハイライト表示とかしてくれるよ。テンプレート言語じゃなくて普通のJS関数を使うと、テンプレート言語のやり方を調べなくても自分でどんなロジックでも書けるんだ。" userName="emadda" createdAt="2025/05/03 13:46:11" color="#785bff">}}




{{<matomeQuote body="自分のブログでも似たようなやり方してるよ。だって、ロードにめちゃくちゃ時間かかる膨張したサイトにはもううんざりなんだもん。これ見て→https://blog.borrego.dev<br>ソースコードはここ→https://github.com/agubelu/blog" userName="agubelu" createdAt="2025/05/03 10:13:20" color="#45d325">}}




{{<matomeQuote body="ユースケースによると思うな。Wordpressの肥大化にうんざりならシンプルなmarkdownサーバーもいい。でも読者が増えると機能が必要になる。コメント機能とか。そうするとDiscussを使ったり、データベースを導入したりして複雑化するかも。最終的には「書く」だけに集中するか、JekyllやHugoみたいなツールをゼロから作るか、貢献するかになるんじゃないかな。" userName="abhisek" createdAt="2025/05/03 11:38:29" color="#ff33a1">}}




{{<matomeQuote body="GitHub PagesでJekyll使うのが一番良いセットアップかも。テキストファイルからサイト作るのが一番楽だよ。静的サイトの問題は古いURLの維持。URLリライトルールとかサーバーの設定が必要になることがある。ローカルで編集できるのは良いけど、ビルドシステムが必要になるね。フォームとかコメントとか、テキスト以上の機能が欲しくなると、静的ファイルだけじゃ難しくなるよ。" userName="nicbou" createdAt="2025/05/04 08:26:38" color="#ff5733">}}




{{<matomeQuote body="私のブログも基本同じ感じ。markdownレンダラーにmistuneを使って拡張してるよ。シンタックスハイライトとかlatex数式とかも追加できた。これ見て→https://www.da.vidbuchanan.co.uk/blog/mathml-blogging.html<br>インデックスやRSSも生成してる。記事が増えてきて最近気になるのは、全ページ一度に再生成するのに三桁ミリ秒かかること。インクリメンタルリビルド必要だな。" userName="Retr0id" createdAt="2025/05/03 10:15:44" color="#45d325">}}




{{<matomeQuote body="それ素晴らしいセットアップだし、私のも似てるよ。でも正直、三桁ミリ秒って単なる重いテキスト処理にしては衝撃的なほど遅く聞こえるね。すごい量のテキストがあるの？" userName="john-h-k" createdAt="2025/05/03 10:23:06" color="">}}




{{<matomeQuote body="ちょっと微妙だったデザイン決定の一つに（7年前だけど…）、全画像をbase64でインライン化することだったんだ（最初は簡単に圧縮できるシンプルな図だけにするつもりだったけど、今はそうでもない）。全ページロードでリクエストが一つだけになるのと、ページをctrl+sで保存しても壊れないのは気に入ってるんだけどね。何もプロファイリングしてないけど、シンタックスハイライトが遅い可能性もあるかな（HTMLタグのかなりごちゃごちゃしたのを生成するから）。" userName="Retr0id" createdAt="2025/05/03 10:49:50" color="#ff33a1">}}




{{<matomeQuote body="俺が前やってた技は、自分で組んだビルドで画像が1KB以下かチェックして、小さけりゃそのまま埋め込んじゃう。<br>大きければハッシュをURLに足してHTMLのヘッダーにプリロード追加するんだ。今新しいビルドツールでこれ復活させようとしてるんだけど、ちゃんとやるには少しずつ進化させるのが大変なんだよね。" userName="90s_dev" createdAt="2025/05/03 11:01:14" color="#ff33a1">}}




{{<matomeQuote body="見た目もシンプルで良い感じだね。君のブログのデザイン気に入ったよ！<br>markdown2っていうパッケージにはシンタックスハイライトのオプションが付いてるよ。CSSは自分で用意する必要があるけどね。" userName="ostwilkens" createdAt="2025/05/03 11:22:40" color="">}}




{{<matomeQuote body="別のミニマルな静的ブログの議論が見られて楽しいね。俺も自分のSSGを数ヶ月前から作ってて、コンテンツよりジェネレーターに時間かけてるんだ。<br>TypeScriptでHTML 4.01 Strictをターゲットにしてる。最初はシンプルだったけど、今はいっぱい機能を追加したよ。<br>これを少しずつ磨き上げるのは楽しいし、TSスキルも伸びたよ。" userName="accrual" createdAt="2025/05/03 16:20:07" color="">}}




{{<matomeQuote body="俺以外にbashとpandocでSSGやってるやついる？<br>マジで”本物の”言語に切り替えるべきだよな。" userName="lelanthran" createdAt="2025/05/03 17:47:55" color="">}}




{{<matomeQuote body="EmacsのOrg modeに組み込まれてるHTML公開機能を使った例がこれだよ：<br>https://github.com/hcarvalhoalves/org-mode-site-template" userName="hcarvalhoalves" createdAt="2025/05/03 14:28:48" color="#ff33a1">}}




{{<matomeQuote body="俺のブログでは変わった方法を試したよ。GravっていうCMSをミニマルなテーマで使ってるんだ。<br>PHP含め全部Gitで管理してて、Dockerイメージをビルドしてデプロイしてるんだ。<br>これだとローカルで確認しやすいし、CMSなのにファイルベースだから楽なんだ。<br>動的テンプレートや検索機能も最初からあるし、投稿はコンテナのデプロイだからデータ損失の心配も少ないよ。<br>Admin UIもあるし、好きなエディタで書ける。パフォーマンスもデータベースを使わないから良いんだ。" userName="KronisLV" createdAt="2025/05/04 08:34:15" color="#ff33a1">}}




{{<matomeQuote body="今ブログ作るなら、手書きHTMLをS3に入れるだけで十分だね。<br>SSGは良いけど、シンプルなHTMLでも少し disciplined にやれば大丈夫。<br>ブログはアイデアを伝えるのが大事で、技術スタックに凝りすぎるのは distracting だと思う。<br>自己満足じゃなくて、モバイルでテストするくらいで十分だよ。読者はそんなに気にしないから。" userName="bob1029" createdAt="2025/05/03 10:27:17" color="#785bff">}}




{{<matomeQuote body="俺も一時期手書きHTMLでやってたけど、実際のCMSにしたら書く量がずっと増えたんだ。<br>結局のところ、どんなセットアップでも、できるだけたくさん書けるように助けてくれるなら、それが一番なんだよ。" userName="miragecraft" createdAt="2025/05/03 11:03:04" color="#45d325">}}




{{<matomeQuote body="静的なHTMLは、もし記事がバズったときに、重い動的なサイトフレームワークよりずっと持ちこたえるだろうね。" userName="SoftTalker" createdAt="2025/05/03 17:02:07" color="#ff33a1">}}




{{<matomeQuote body="インスパイアされたよ。<br>俺も似たようなビジョンでブログプラットフォームを作ったんだ。<br>”Minimum Viable Blogging Platform”って呼べるかな。<br>https://mataroa.blog/" userName="sirodoht" createdAt="2025/05/03 11:55:36" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
