+++
date = '2025-09-27T00:00:00'
months = '2025/09'
draft = false
title = 'TypstはLaTeXを置き換えるのか？その驚くべき可能性に迫る'
tags = ["Typst", "LaTeX", "ドキュメント生成", "PDF", "開発効率"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> TypstはLaTeXを置き換えるのか？その驚くべき可能性に迫る

引用元：[https://news.ycombinator.com/item?id=45393842](https://news.ycombinator.com/item?id=45393842)




{{<matomeQuote body="Typstが注目されて嬉しい！ZerodhaではPDF生成にTypstを使ってて、以前のLaTeXベースはメモリエラーやDockerイメージ肥大化で大変だったんだ。Typstに切り替えたら、単一バイナリでイメージが小さく起動も速く、コンパイル速度はLaTeXの3～4倍になったよ。特に大規模文書だと18分かかってたのが1分に。開発体験も向上したし、詳しく書いた記事もあるから見てみてね: https://zerodha.tech/blog/1-5-million-pdfs-in-25-minutes" userName="mr-karan" createdAt="2025/09/27 09:59:47" color="#ff5733">}}




{{<matomeQuote body="あなたのユースケースで、そもそもなんでLaTeXを使ってたの？LaTeXの代替を見つけることより、そっちの方が驚きなんだけど。" userName="lupire" createdAt="2025/09/27 10:52:56" color="">}}




{{<matomeQuote body="テキストベースのテンプレートからPDFを生成するのに、他に何を使うの？" userName="xigoi" createdAt="2025/09/27 11:12:48" color="">}}




{{<matomeQuote body="データベースのスニペットからテキスト、請求書、フォームを作るのにLaTeXパイプラインを使ってるけど、設定は複雑でも結果は満足してるよ。もっと簡単なマークアップ言語がいいけど、新しいものに切り替えて後で限界にぶつかるのが怖いんだ。複数カラム、多言語の自動ハイフネーション、動的配置の画像、複雑なテーブルやフォーム、背景画像、ミニページ的な領域など、Typstは私の要件を全部満たせる？" userName="Archelaos" createdAt="2025/09/27 12:09:19" color="#38d3d3">}}




{{<matomeQuote body="これは代替案とは言えないけど、純粋なLaTeXの代わりにPandocを使うのをオススメするよ。Markdownはテキストブロックの扱いが簡単で、Pandocを使えばMarkdownが不十分なところでインラインLaTeXを使えるから、もっと親しみやすいLaTeXになるんだ。論文を書くときなんかに、まず基本的なMarkdownで書き始めて、後でプレゼンテーションを気にすればいい。純粋なLaTeXだと執筆フローに入りづらい経験があったからね。" userName="jijijijij" createdAt="2025/09/27 13:25:12" color="#ff5c5c">}}




{{<matomeQuote body="これをするならAsciiDocを使えばいいんじゃない？構文としてははるかに優れてるよ。Markdownは、ネストされたリストアイテムの中に引用ブロックのテーブルがあるような些細なことでも破綻するんだ。" userName="henrebotha" createdAt="2025/09/27 15:00:12" color="">}}




{{<matomeQuote body="例えばPandoc、万能ツールだよ…" userName="sixtyj" createdAt="2025/09/27 11:37:17" color="">}}




{{<matomeQuote body="抽象的に言えば些細なことじゃないわけじゃないけど、ネストされたリストアイテムの中に引用ブロックのテーブルがあるような使い方って想像しにくいな。ツールがそれを想定してないのは全く驚きじゃないみたいだね。" userName="GavinMcG" createdAt="2025/09/27 18:29:20" color="">}}




{{<matomeQuote body="私はこれで博士論文を書いたよ。LaTeXに慣れてるなら、これは素晴らしいね。LaTeXの書式設定を書かなくていいときは省略できるから時間の節約になるし、必要なときに書式を制御できるのも同じくらい時間の節約になるんだ。" userName="sevensor" createdAt="2025/09/28 02:26:34" color="#ff5733">}}




{{<matomeQuote body="何百万ものドキュメントをコンパイルしたり、何千ページもあるものをたくさん扱うなら、普遍的なものが必要だよね。LaTeXは退屈な技術で、すぐに使える状態だけど、テンプレートとか初期設定を組むのは少し大変かも。でも、一度設定しちゃえば、ほとんどのことは問題なく処理してくれるから、だいたい満足できるはずだよ。" userName="Etheryte" createdAt="2025/09/27 11:30:23" color="#38d3d3">}}




{{<matomeQuote body="デザインの世界では、Acceptance Criteriaみたいなものが、きっとTypstを喜んで求めるだろうね。" userName="shakna" createdAt="2025/09/28 14:39:56" color="">}}




{{<matomeQuote body="統計や小さなレポート、その他退屈なビジネス資料みたいなPDFを毎週・毎月定期的に生成している職場で働いていたんだ。いつもMJML、手書きHTML、Puppeteerなんかで作ってたんだけど、Typstもそういう用途に合うと思う？" userName="lloydatkinson" createdAt="2025/09/27 15:11:30" color="#45d325">}}




{{<matomeQuote body="PandocがPDF生成にLaTeXを使ってるって知って驚く人もいるかもね。ほとんど隠されてないんだけどさ。URL: https://www.pandoc.org/demo/example33/2.4-creating-a-pdf.htm..." userName="dfc" createdAt="2025/09/27 11:48:01" color="">}}




{{<matomeQuote body="知ってるよ！でも、普遍的なものの使い方について話してるんだよね。Pandocは使いやすくて、なんていうか…「退屈」なのが好きなんだ。" userName="sixtyj" createdAt="2025/09/27 20:49:10" color="">}}




{{<matomeQuote body="軽量で読みやすいプレーンテキストマークアップ言語が、本当にその仕事に適しているのかな？" userName="GavinMcG" createdAt="2025/09/28 20:39:52" color="">}}




{{<matomeQuote body="うちはPythonをメインで使ってる会社で、WeasyPrintを使って請求書みたいなものを作ってるよ。これは結構うまくいくんだ。Web開発の経験がどれくらいあるかにもよるだろうね。" userName="tempest_" createdAt="2025/09/28 00:04:41" color="#45d325">}}




{{<matomeQuote body="LaTeXは「退屈な技術」とは全然言えないよ。特に長いドキュメントに関しては、かなり荒削りな部分が多いんだから。" userName="constantcrying" createdAt="2025/09/27 11:36:11" color="">}}




{{<matomeQuote body="ちょっと変な話だけど、LaTeXの難しさに悩まされた人たちが、Pandocに安らぎを見つけてるみたいだね。Pandocから学習を始めることを勧めるよ。その後にLaTeXの導入を学べばいい。ディストリビューションのLaTeXフルパッケージをインストールすることを強く勧めるよ。依存関係との戦いは本当にうんざりするからね。でも、その代わりにとんでもなく巨大なものになるし、使わないパッケージも頻繁にアップグレードされるけどね。PandocがTeXパッケージの管理と依存関係の解決をしてくれたらいいのにって思うよ。" userName="jijijijij" createdAt="2025/09/28 16:40:22" color="#ff5733">}}




{{<matomeQuote body="まったくその通りだよ！書き手は技術的な経験がそんなにないことが多いけど、長年にわたってレビュー・変更され続けるような高度な技術文書を作らなきゃいけないからね。" userName="shakna" createdAt="2025/09/28 20:48:04" color="#ff5733">}}




{{<matomeQuote body="Texliveをダウンロードして使ってるよ。LaTeXはOSのパッケージマネージャーと相性悪いから、ちょっと古くても気にしないことにしたんだ。各章を別ファイルにして、それぞれLaTeXにコンパイルして、Makefileで図の生成も含めて全部まとめてる。これでも、LaTeXコマンドを全部手書きするよりはるかに楽だよ。" userName="sevensor" createdAt="2025/09/28 17:42:43" color="#ff5c5c">}}




{{<matomeQuote body="この記事ではTypstがLaTeXの代替になりうるって言ってるけど、結局LaTeXがまだトップだよな。個人的にはConTeXtの方がずっと優れたツールだと思うんだけど、ドキュメントが機能に全然追いついてないのが残念なんだよな。" userName="ab5tract" createdAt="2025/09/27 19:21:28" color="">}}




{{<matomeQuote body="今、DITAに切り替えようと準備してるんだ。最初は学習曲線が急だけど、トピック指向で情報型オーサリング、コンテンツ再利用っていう概念がすごく魅力的だよ。XMLで書くのは面倒って人もいるけど、Emacs nXML modeみたいなまともなXMLエディターがあれば全然問題ないんだ。DITA-OTとかプラグインでカスタマイズもできるし、XSLTベースだよ。DITAは業界で実績のあるXMLの優れもの。地味かもしれないけど、高度なドキュメントが必要な人にはものすごい可能性を秘めてるね。URL: https://dita-lang.org/dita/archspec/base/introduction-to-dit...<br>URL: https://www.dita-ot.org/" userName="smartmic" createdAt="2025/09/27 12:03:05" color="#45d325">}}




{{<matomeQuote body="LaTeXを勧めるよ。テーブル、数式、その他似たようなコンテンツに強いからね。LaTeX記法はこれにぴったりで、WebとPDFの両方に簡単に変換できるよ。ただ、コンパイル速度は絶対改善してほしいな。でも、実際何千ページものドキュメントを一つのファイルにコンパイルするなんて、稀なケースだよね？" userName="sixtyj" createdAt="2025/09/27 11:35:28" color="#38d3d3">}}




{{<matomeQuote body="うん、Typstでいけると思うよ！いくつか（背景画像とか）は試してないけど、動的な配置ならhttps://typst.app/universe/package/meanderみたいなライブラリがあるんだ。Typstの肝は、すごく機能豊富でよく考えられたFP言語だから、どんな機能でもライブラリとして表現するのがめっちゃ楽しいよ。" userName="patrickkidger" createdAt="2025/09/28 11:13:33" color="#ff5733">}}




{{<matomeQuote body="20年くらい前、XSLTを使って似たようなシステムを作ったけど、あれはおすすめできないな。" userName="jayknight" createdAt="2025/09/27 11:15:22" color="">}}




{{<matomeQuote body="カラム内の画像はやってないけど、その他はできるはずだよ。請求書作成とか、他の出版物やスライドも全部LaTeXからTypstに移行したんだけど、もう最高に満足してるんだ！" userName="__mharrison__" createdAt="2025/09/27 12:59:25" color="">}}




{{<matomeQuote body="もしプログラムでドキュメントを生成するなら、直接Pandoc ASTを生成するのはどうかな？いろんな言語からできるし、どんなマークアップの機能も網羅してる上に、LaTeXでしかできないことも直接呼び出せるブロックがあるんだ。実際のASTを使うのは生産性も信頼性もアップするはずだよ。" userName="eslaught" createdAt="2025/09/28 01:28:20" color="#785bff">}}




{{<matomeQuote body="以前の職場でGhostscriptとChromedriverを使ってたけど、Weasyprintに移行したんだ。Weasyprintはすごく良くて速いし、チケットで進捗もよくわかる。テンプレートをCSSとHTMLで書くのはスムーズだよ。結局のところ、問題って『CSS+HTML vs LaTeX vs Typst』じゃなくて、動的な入力がある時にどうレイアウトするかっていう意思決定なんだよね。『ここに大量のテキストがあったらどうする？』とか『ここで改ページしたらどうする？』って、結構難しい問題で、高レベルでの決定が必要になるんだ。CSSは文句を言う人もいるけど、ちゃんと仕様を読めば解決できることも多いし、CSS+HTMLのいいところは、ブラウザで結果を簡単に見ていじれることだよ。" userName="rtpg" createdAt="2025/09/28 03:29:31" color="#45d325">}}




{{<matomeQuote body="編集する前の元のコメントだけど、pdflatexがPandocツールチェーンの一部じゃないみたいに不満を言ってたよね。Pandocが普遍的かどうか、って話じゃなかったんだよ。" userName="dfc" createdAt="2025/09/29 02:29:19" color="">}}




{{<matomeQuote body="Pandocって結局裏側でLaTeXを使ってるんじゃないの？" userName="xigoi" createdAt="2025/09/27 11:43:44" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="PandocはTypstでも使えるよ。" userName="__mharrison__" createdAt="2025/09/27 13:00:36" color="">}}




{{<matomeQuote body="Typstは本当にすごいよ！博士論文をTypstで書いてるけど、LaTeXを10年使ってもよく分からなかったのに、Typstなら数日で習得できたんだ。必要なパッケージがなくても自分で簡単に作れるし、LaTeXで苦労した設定の競合もTypstにはないから、執筆に集中できるよ。<br>まだPDFの埋め込みとか一部機能はこれからだけど、組版の品質もTeXの95%くらいで、これからもっと良くなるはず。ぜひ試してみて！" userName="throwaway_7274" createdAt="2025/09/27 13:41:20" color="#785bff">}}




{{<matomeQuote body="LaTeXを10年使ってもよく分からなかったのに、Typstは数日で習得できたってのは面白いね。なんでそう思うの？CSのバックグラウンドがあるの？" userName="Rochus" createdAt="2025/09/27 14:07:18" color="">}}




{{<matomeQuote body="うん、CSの研究者だよ。LaTeXの複雑さの多くは、TeXシステムの抽象化やカプセル化が不十分な、そのルーズさが原因だと思う。他の人のコードを使うにも、半ば文書化されてない長年の慣習を学ぶ必要がある。<br>TeX愛好家はそれが「強力」だと言うけど、アセンブリ言語を書けるけどあえて書かないのと同じ。PL（プログラミング言語）の人間としてはね。" userName="throwaway_7274" createdAt="2025/09/27 14:09:21" color="#785bff">}}




{{<matomeQuote body="私も同じ経験があるよ。CSのバックグラウンドがあって、LaTeXで論文や博士論文、TikZやBeamerも使ってきた。でもTeXで自分で何かを実装する方法は、基本的なマクロ以外全然分からない。<br>一度、簡単な組版パッケージを作ろうとしたけど、すぐに破綻して、その理由も全く不明だった。TeXの計算モデルは本当に分かりにくい。" userName="ulrikrasmussen" createdAt="2025/09/27 16:10:14" color="#ff5c5c">}}




{{<matomeQuote body="「論文上はとんでもなくリスキー」って、数式を画像にするのに別のプログラムを使うこと？<br>「ピクセルパーフェクトなクローン」って、たった1ピクセルずれただけで博士号がもらえないわけじゃないでしょ？" userName="chickenzzzzu" createdAt="2025/09/27 14:31:26" color="">}}




{{<matomeQuote body="TeXにはたくさんの設計目標があったけど、「良いプログラミング言語であること」は含まれてなかったんだよ。" userName="jfengel" createdAt="2025/09/27 14:28:34" color="">}}




{{<matomeQuote body="Typstは良くなってると思うけど、破壊的変更を経験したことはあるね。修正は難しくなかったけどデバッグは分かりにくかった。Typstには多くの人が期待してるみたいだ。<br>TeXとLaTeXは尊敬してるけど、広大で複雑すぎる。何かクリーンなLaTeXの「ディストリビューション」が必要なんじゃないかな。コンテナとかにして、もっと原子的な単位にするとか。テンプレートを使おうとして、何かが足りないって経験が何度もあるんだ。この分野の革新と利用が進むのは良いことだね。" userName="TheCondor" createdAt="2025/09/27 16:06:11" color="#785bff">}}




{{<matomeQuote body="「top-3 departement」ってどういう意味？気になるな。" userName="fergie" createdAt="2025/09/27 15:09:48" color="">}}




{{<matomeQuote body="確かに！組版の品質基準を打ち立てたのは間違いないね。Don K.に拍手だ。" userName="throwaway_7274" createdAt="2025/09/27 14:35:23" color="">}}




{{<matomeQuote body="経験上、学部や大学が気にするのは、論文のフォーマットくらいだよ。満足するまで論文を突き返されて、時間を無駄にするんだ。きっとthrowaway_7274の学部は、些細な（意味のない）詳細にやたらこだわることで有名なんだろうね。" userName="WastedCucumber" createdAt="2025/09/27 15:14:11" color="#45d325">}}




{{<matomeQuote body="「必要なものにパッケージがない場合（驚くほどよくあるけど、素晴らしいパッケージも多い！）、自分でサッと作れるよ」って話だけど、LLMを使うの？使わないの？（真面目な質問）" userName="thiagowfx" createdAt="2025/09/28 10:41:42" color="#ff5c5c">}}




{{<matomeQuote body="LaTeXは学術研究に組版をもたらしたけど、それは以前は必要なかったことだ。僕は1993年に物理学の博士論文を終えた最後の世代の一人。組版もされてないし、コンピューターで読める形式でもない。両親の論文は手書き原稿をタイプライターに頼んだもの。LaTeXは同期の学生には役立ったけど、早く卒業させてはくれなかったな。" userName="analog31" createdAt="2025/09/27 15:43:11" color="#ff5733">}}




{{<matomeQuote body="ああ、分かったよ。実際の論文を書き始める前に、LaTeXとその役立たずなツールチェーンで博士号でも取ることにしようか。ソフトウェアは透明であるべきで、自己表現の邪魔をするべきじゃないよね。" userName="whatever1" createdAt="2025/09/27 20:14:36" color="#38d3d3">}}




{{<matomeQuote body="フォーマットのガイドラインはあるけど、LaTeXでしか簡単にできないほど具体的だったことはないな。それってよくあることなの？デフォルトの選択肢とされてるのを見たことないよ。10年前ならあり得たかもしれないけど、今は違うでしょ。" userName="contrarian1234" createdAt="2025/09/27 15:51:48" color="#785bff">}}




{{<matomeQuote body="最高の妥協案は、既存のライブラリやテンプレートを使えるようにLaTeXに変換するMarkdownインタープリターかもしれないね。そうすれば、そこまで構文を気にしなくて済むし。" userName="wildzzz" createdAt="2025/09/27 16:35:25" color="#ff33a1">}}




{{<matomeQuote body="31年前にアナログな論文を書いたんだね、analog31さん？このアカウントで長いこと活動してるんだ！話、ありがとうね。もし個人を特定しない形で大丈夫なら、何の論文だったか聞いてもいいかな？" userName="throwaway_7274" createdAt="2025/09/27 15:53:18" color="">}}




{{<matomeQuote body="僕はTeXの全5巻と『Digital Typography』の持ち主で、45年近く毎日パソコンに向かってるよ。中国語や日本語を含むいくつかの言語を話し書き、プログラミング言語でコードを書き、HTMLやCSSにも精通してる。これ以上何を加えたら「TeXの本を読んで理解した」とか「LaTeXを自信を持って使える」って言えるんだろうね？「TeX / LaTeXはうまく設計されていて、ユーザーフレンドリーで、まともなソフトウェアか？」という質問には、ノー、ノー、ノーと答えるよ。" userName="DemocracyFTW2" createdAt="2025/09/28 09:25:56" color="#45d325">}}




{{<matomeQuote body="LaTeXのアイデアは好きだけど、使いこなせなかったんだ。PDFを思った通りに作るのは諦めかけてたよ。Typstはウェブサイトの見た目が、有料製品みたいでずっと敬遠してたんだけど、リポジトリをちゃんと見てみたら、コマンドラインでも使えそうだから調べてみる価値はあるかも。でも、あのプレゼンテーションのせいでまだ警戒してるんだ。" userName="grep_name" createdAt="2025/09/28 05:57:22" color="#38d3d3">}}




{{<matomeQuote body="記事にあった「大学のLaTeXテンプレートをピクセルパーフェクトに再現しなきゃいけない」って話だけど、それはむしろラッキーだろ。ほとんどの人は、大学のMS WordテンプレートをLaTeXでピクセルパーフェクトに再現しなきゃいけなくて、それが大変だったんだからさ。" userName="p4bl0" createdAt="2025/09/27 14:17:16" color="">}}




{{<matomeQuote body="この瞬間を予期してたぜ ;-) レーザー技術の急速な発展期に、自分でレーザーを組んで最先端を追ってた頃の話だよ。分光測定のS/N比を約1000倍にする方法を開発したんだ。これで、それまで難しかった実験がたくさんできるようになった。僕の実験では方法論が本当に重要で、今も測定機器の仕事をしてるよ。" userName="analog31" createdAt="2025/09/27 16:14:36" color="">}}




{{<matomeQuote body="何百万人もの人がLaTeXを愛用してて、毎日使ってるんだぜ。君の経験はあくまで個人的な意見でしょ。" userName="coliveira" createdAt="2025/09/29 20:00:40" color="">}}




{{<matomeQuote body="たった一冊の本を読んだくらいで、LaTeXの博士号レベルには程遠いよ。" userName="coliveira" createdAt="2025/09/27 22:47:20" color="">}}




{{<matomeQuote body="うーん、残念だけど「私は真面目な人間です」って意味だね。ネットでソフトウェアについて意見を言うと、荒らしが「何様だ！」って飛び出してくるから、そういう人は権威に弱いんだ。こんなこと書くのはちょっと嫌だけど、もしかしたら少し後悔してるかも。" userName="throwaway_7274" createdAt="2025/09/27 15:16:03" color="">}}




{{<matomeQuote body="昔はLaTeXをよく使ってたけど、生産性はあったのに「分かった」って気にはならなかったな。「LaTeXでXをやるには？」ってググって、覚えられないような難解なコードをコピペしてただけ。正直、『LaTeXっぽい見た目』が欲しかっただけなんだよね。最近はMarkdownとか、Google DocsみたいなWYSIWYGエディタを使ってるよ。" userName="Retr0id" createdAt="2025/09/27 15:09:38" color="#785bff">}}




{{<matomeQuote body="ああ、それってドナルド・クヌースが書いた、あの500ページもある分厚い本の事かい？" userName="volemo" createdAt="2025/09/27 17:36:56" color="">}}




{{<matomeQuote body="経験上、CSの知識がなくても、TeX/LaTeXをカスタマイズするのが難しいと感じるのは普通だよ。挑戦してみてほしいんだけど、縦長ページでN列、各列左に12ptの垂直線が入る環境を、異なる用紙サイズに対応させて書いてみて。どれだけ＼makeatotherが出てくるか、意味不明さに驚くはずだ。" userName="bogeholm" createdAt="2025/09/27 18:53:33" color="#785bff">}}




{{<matomeQuote body="もし君が相手の意図を理解せず、問題の説明でこじつけみたいな発見を探してるなら、Hacker Newsのガイドラインに従って、もっと深く掘り下げて、より意味のある貢献をしようと努力してくれ。" userName="fathermarz" createdAt="2025/09/27 15:05:55" color="">}}




{{<matomeQuote body="LaTeXってTeXの上にレイヤーがあるから複雑になってない？抽象化が中途半端で、結局TeXの面倒も見る羽目になるし。Typstはまだそういう問題なさそうだけど。あと、静的型付けがないせいでバグ見つけにくいんじゃない？「抽象化が足りない」って指摘、まさにそれかもね。" userName="Rochus" createdAt="2025/09/27 14:31:39" color="#785bff">}}




{{<matomeQuote body="同じPLの院生だけど、Typstは惹かれるね。PACMPLとかの学会で使えるようになるまでは、本格的に投資するのはちょっと…。近いうちにそうなったらいいんだけど、どう思う？" userName="ashton314" createdAt="2025/09/27 15:25:57" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「大学のLaTeXテンプレートをピクセルパーフェクトに再現する」って話だけど、それって本当にピクセルパーフェクトって意味？それとも大袈裟に言ってるだけ？LaTeXにはmicrotypeみたいに、ピクセルパーフェクトに再現するのが超難しいパッケージもあるんだよ。特に科学論文ではめちゃくちゃ使えるのにね。" userName="ttfvjktesd" createdAt="2025/09/27 17:13:51" color="#ff5c5c">}}




{{<matomeQuote body="TypstとLaTeXを比べてみたメモだよ。まず、Typstはコンパイルで余計なファイル出ないし、一瞬で終わる。診断メッセージもRustみたいにわかりやすいんだ。リストは[item1]って書けるのが最高！vimの%で括弧にジャンプできるから、長いリストも楽々移動。LaTeXはマクロを\documentの外に書くけど、Typstは必要な場所に書けて便利。バージョン管理や差分もやりやすいし、ページレイアウトの調整もめっちゃ簡単だよ。" userName="commandersaki" createdAt="2025/09/27 08:21:34" color="#ff5c5c">}}




{{<matomeQuote body="Typstでのプログラミング、最高だよ！json(”some_file.json”)みたいなヘルパー関数がある、小さなインタプリタ言語が内蔵されてるんだ。論文書いた時、JSONファイルから結果テーブルを直接PDFにぶち込むのにめちゃくちゃ使ったよ。（ベンチマークスクリプトからJSON、そしてTypstで直接PDFにコンパイルって流れね）。" userName="josephg" createdAt="2025/09/27 08:30:27" color="#ff33a1">}}




{{<matomeQuote body="Typstだと、文章を書くときは「書いている」って感じだし、コードを書くときは「プログラミングしてる」って感覚なんだよね。でもLaTeXって、いつも「プログラミングとは違うけど、全く違うってわけでもない」みたいな、なんか微妙な感じなんだよな。" userName="TRiG_Ireland" createdAt="2025/09/27 10:37:10" color="#ff5c5c">}}




{{<matomeQuote body="『銀河ヒッチハイク・ガイド』の引用、最高だね！俺のお気に入りなんだ。ちなみに引用されてるのはこれだよ。<br>「その液体は、ほとんど、だけど完全にじゃないけど、お茶とは似ても似つかないものだった。ドリンクボタンを押すと味覚とか代謝を分析して、何が好まれるか調べるんだけど、いつも出てくるのは、やっぱりほとんどお茶とは似ても似つかない液体だった」ってやつ。" userName="wasabi991011" createdAt="2025/09/27 16:54:48" color="">}}




{{<matomeQuote body="LaTeX使ってて一番感じるのは「恐怖」だよ。ちょっと設定変えるだけで、ドキュメントがぶっ壊れたり、図が勝手に動いたり、一つ直すと別が壊れたり…。テンプレート変更なんてマジで勘弁してほしい。" userName="foobarian" createdAt="2025/09/27 15:39:22" color="#785bff">}}




{{<matomeQuote body="このスレッドで不満持ってるみんなへのアドバイスなんだけど、Contextに乗り換えるのがいいかもね。もっとぶっ飛んだことしたいならLuametatexもアリだけど、これはContextの実験版みたいなもんだよ。TeXの達人になる気がないなら、Contextはカスタマイズしやすいからおすすめ。LaTeXはテンプレートに満足してたり、特定のパッケージが絶対必要な時にいいけど、そうじゃなければContextが自分のやりたいようにできて便利だよ。" userName="tentahedronic" createdAt="2025/09/27 20:33:44" color="#ff5733">}}




{{<matomeQuote body="俺のちょっと神経質なやり方なんだけど、ドキュメントを細かく分けてるんだ。そうすると、問題が起きた時に各コンポーネントを簡単に有効・無効にできるからね。変なエラーメッセージに振り回されずに済むし。だからトップのドキュメントは\input{intro}とかの長いリストになってる。あと、作業中の部分以外を全部無効にできるから、コンパイルも速くなるってメリットもあるよ。" userName="3eb7988a1663" createdAt="2025/09/27 17:48:37" color="#785bff">}}




{{<matomeQuote body="高速プレビューはインタラクティブなビジュアルプログラミングに向いてるけど、アニメーション非対応だし、オブジェクト数が多いとメモリ不足で再起動が必要になるよ。" userName="kzrdude" createdAt="2025/09/27 09:05:27" color="#ff5c5c">}}




{{<matomeQuote body="今 Typst で言ってることって LaTeX だとどうなの？大規模オブジェクトのプレビューはサンプリング表示にして、高精細なものは時間がかかってもフルビルドするとか、オープンソースなら解決できそうだよね。" userName="repeekad" createdAt="2025/09/27 09:17:48" color="">}}




{{<matomeQuote body="LaTeX のコンパイルやレンダリングは、だいたいめちゃくちゃ遅いんだよね。" userName="lupire" createdAt="2025/09/27 10:50:46" color="">}}




{{<matomeQuote body="TeX が遅いって？本全体は時間かかるけど、TeX の問題は専用ファイルでサクッと解決できるんだ。20年前の Intel CPU でも1755ページのコンパイルは瞬殺だったよ。それより Donald Knuth の TeX こそが至高。あと LaTeX じゃなくて LaTeX ね。" userName="yodaDrofnats" createdAt="2025/09/27 17:40:35" color="">}}




{{<matomeQuote body="論文を書くとき、投稿先のテンプレートを再現するのってどれくらい難しいと思う？" userName="phi-go" createdAt="2025/09/27 11:24:53" color="">}}




{{<matomeQuote body="学術テンプレートじゃないけど、既存 PDF のカスタムテンプレートは再現したよ。言語とか”標準ライブラリ”とか、ドキュメントがすごく良いから、かなり簡単だったね。" userName="colelyman" createdAt="2025/09/27 13:20:00" color="#ff5c5c">}}




{{<matomeQuote body="レイアウトの95%は楽勝だけど、残りの5%がマジで大変なんだ。彼らは特定の LaTeX テンプレートにかなり投資してるからね。政治的な事情で、主催者に別のフォーマットを扱わせるのも面倒だし、結局 LaTeX のままで行ったよ。" userName="josephg" createdAt="2025/09/28 10:47:32" color="#785bff">}}




{{<matomeQuote body="データテーブル更新はこれまでいろいろな変換ハックに頼ってきたんだ（結局は Pandoc Markdown に落ち着いたけど）。でも Typst のこのちょっとした使いやすさは、個人的にはかなりの価値があるね。" userName="3eb7988a1663" createdAt="2025/09/27 17:44:41" color="">}}




{{<matomeQuote body="Typst を LuaLaTeX で Lua を使うのと比較したことはある？" userName="red_trumpet" createdAt="2025/09/27 08:42:31" color="">}}




{{<matomeQuote body="5. LaTeX のマクロはトップでしか定義できないって言うけど、実際はどこでもOKだよ。パッケージはプリアンブルだけどね。Typst も同じじゃない？<br>6. セマンティック改行は LaTeX でも問題なく使えるはず。<br>2. コンパイルが速いことと 3. 診断が分かりやすいことは、確かに LaTeX の最大の弱点だから、Typst の強みとして同意するよ。" userName="gucci-on-fleek" createdAt="2025/09/27 10:40:40" color="#38d3d3">}}




{{<matomeQuote body="Typstなら何でもインポートできるはずだよ。俺は別ファイルで定義したテーブルを、必要なとこでだけインポートしたことあるもん。" userName="mastermage" createdAt="2025/09/27 15:28:37" color="">}}




{{<matomeQuote body="LaTeXには色んなインポート方法があるんだ。元の投稿者が言ってるのは、たぶんパッケージの`＼usepackage`のことだよな。" userName="fn-mote" createdAt="2025/09/27 20:58:01" color="">}}




{{<matomeQuote body="LaTeXのコンパイルで出る大量のカスファイル、マジ嫌だよね。そんな時は、俺の`.bashrc`のエイリアス使ってみな。これなら一時ファイルを全部`/tmp/latexcrap`にぶち込めるよ。`latexloop`はホットリロードもしてくれるから超便利！<br>latexloop() { latexmk -pdf -pvc -emulate-aux-dir -aux-directory=/tmp/latexcrap ”$@”; }<br><br>  alias latexmk=’latexmk -pdf -emulate-aux-dir -aux-directory=/tmp/latexcrap’" userName="porridgeraisin" createdAt="2025/09/27 12:58:21" color="#45d325">}}




{{<matomeQuote body="おいおい、5番目の話だけど、プリアンブルでマクロを定義するのは習慣だけど、実際はどこでも定義できるから問題じゃないんだぜ。" userName="gignico" createdAt="2025/09/27 09:06:48" color="">}}




{{<matomeQuote body="それで、Typstで実際に記事を書いてみたの？俺は全然うまくいかなかったけど。誰も使ってないから、結局は自分ひとりで頑張るハメになるぞ。" userName="toxik" createdAt="2025/09/27 09:01:26" color="">}}




{{<matomeQuote body="いやいや、仕事のドキュメント（CIでビルドするやつ）とか履歴書、法律文書、急ぎの書類に使ってるだけだよ。出版は俺の専門外だからね。" userName="commandersaki" createdAt="2025/09/27 09:07:25" color="">}}




{{<matomeQuote body="違うよ、マクロはどこでも指定できるわけじゃない。TypstはTeXと違って、関数や型、モジュール（名前空間もある！）を備えたちゃんとしたプログラミング言語なんだ。TeXの複雑なマクロとは別物さ。完璧じゃないけど、簡単なレポート作り以外なら、TeXより80％は楽になると思うよ。" userName="throwaway_7274" createdAt="2025/09/27 12:52:32" color="#ff33a1">}}




{{<matomeQuote body="へぇ、現代のプログラミング言語みたいにもっと分かりやすいエラーメッセージが出るようなものが現れるのを期待してたんだよ。" userName="baby" createdAt="2025/09/27 13:39:31" color="">}}




{{<matomeQuote body="LaTeXが冗長だって文句言う奴には、Knuthが作ったplain TeXがそうじゃないってことを教えるのが俺の役目だ。LaTeXの巨大なマクロ集もplain TeXで書かれてるんだからな。plain TeXは、正直言ってシンプルすぎて制御しすぎるきらいがあるけど、`$$\aleph_0$$\bye`みたいに開始・終了タグなんていらない。`eplain`みたいな、`lodash`みたいにシンプルなマクロ集もあるぜ。<br>俺、論文を`extended plain`で書いたって自慢してたのに、図書館に「特定のスタイルファイルを使え」って言われて、結局LaTeXに書き直す羽目になったわ！<br>[extended plain]: https://tug.org/eplain/" userName="jbaber" createdAt="2025/09/27 11:58:29" color="#45d325">}}




{{<matomeQuote body="LaTeXしか使ったことない奴は、plain TeXに絶対驚くよ。LaTeXのマクロだって思ってることの多くが、実はTeX本体の機能なんだからさ。" userName="bombcar" createdAt="2025/09/27 12:00:21" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
