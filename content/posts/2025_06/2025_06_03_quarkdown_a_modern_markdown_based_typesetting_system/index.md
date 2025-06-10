+++
date = '2025-06-03T00:00:00'
months = '2025/06'
draft = false
title = 'Markdownユーザー必見！モダンな組版システムQuarkdownとは？'
tags = ["Markdown", "組版", "ドキュメント作成", "LaTeX", "Typst"]
featureimage = 'thumbnails/purple6.jpg'
+++

> Markdownユーザー必見！モダンな組版システムQuarkdownとは？

引用元：[https://news.ycombinator.com/item?id=44167592](https://news.ycombinator.com/item?id=44167592)




{{<matomeQuote body="俺が作ったFOSSのテキストエディタ、KeenWrite[1]も似たようなアプローチだぜ。Markdown → XHTML → TeX → PDFって変換するんだ。<br>ソフトウェアのアーキテクチャ図を見れば、どうやってプロセッサーチェーンを作ってるか分かるよ（https://gitlab.com/DaveJarvis/KeenWrite/-/blob/main/docs/ima...）。<br>KeenWriteは、SF小説を書くときにキャラクター名とか場所とかを変数で使えるようにするために開発したんだぜ。<br>詳しいことはチュートリアル[2]を見てくれ。<br>まだpandocとかシェルスクリプト使ってるやつ向けに、MarkdownをPDFに変換するためのスクリプトベースのインフラを作る話を書いたTypesetting Markdown[3]シリーズもあるぞ。<br>[1]: https://keenwrite.com/<br>[2]: https://www.youtube.com/watch?v=CFCqe3A5fFg&t=15s<br>[3]: https://dave.autonoma.ca/blog/2019/05/22/typesetting-markdow..." userName="thangalin" createdAt="2025/06/03 17:56:04" color="#ff33a1">}}




{{<matomeQuote body="この記事読んでマジで興奮したよ！<br>Markdown → PDFかRTFのいいワークフローをずっと探してたから、早速KeenWriteをちょっと試してみたんだ。<br>最初はまさに俺のためのツールだって思ったんだけど、すぐにKeenWriteの発見しにくさが全然ダメだって気づいたね。<br>起動したら3つのペインが出てくる。<br>Markdownのオーサリング画面と出力プレビュー。これはいいね。Markdownをコピペしたらちゃんとレンダリングされる。<br>それから”variables.yaml”ペインが開いて、”Create”、”Rename”、”Delete”の小さなコントロールが3つ。<br>ふーん、YAMLファイルを編集するんだ。<br>でも、これ階層がネストされた編集画面でやりにくい。<br>Markdownファイルは編集できるのに、なんでYAMLはテキストで直接編集させてくれないんだ？その方が速いだろ。<br>結局、これはドキュメント出力に関する何らかのメタデータを保存するYAMLファイルを編集してるってことなんだろうな。<br>でも変数の例が一つもない！全然ないんだ。<br>どんな変数が使えるのか全く分からないし、メニューオプション全部探しても何も情報がない。<br>ヘルプ見ても小さいaboutページだけで、ドキュメントへのリンクもないし。<br>だからkeenwrite.comに行ってドキュメントをクリックした。<br>そしたらGitLabのREADMEに飛んで、コマンドライン起動オプションとか、メタデータの使い方について書いてあるんだけど、全部.Rmdファイル作ってR使うか、別エディタで”definitions.yaml”作れとか書いてあって、”variables.yaml”じゃないんだ。<br>ここで、ああ、このツールは俺には役立たないなって悟ったね。" userName="techtalsky" createdAt="2025/06/05 15:59:44" color="#ff5733">}}




{{<matomeQuote body="試してくれてありがとう！<br>＞ 変数の例が無いWere the video tutorials[0], in particular the variables tutorial[1] not helpful?<br>＞ Except I don’t have a single example of a variable.<br>Did you watch the metadata tutorial[2]?<br>＞ People can edit a MarkDown file but you don’t think it’s faster to simply let people edit YAML in text?<br>variables.yamlペイン閉じて、他のテキストエディタでYAMLファイル編集してもいいんだぜ。（あるいは.yamlと.yaml.txtファイルをシンボリックリンクで繋いで、.yaml.txtファイルをKeenWriteのタブで編集するとか。）<br>ただし、Control-Spaceのホットキーでドキュメントに変数を挿入する機能は使えなくなるけどな。<br>変数はさ、アーキテクチャ的にはYAMLで書かれてる必要はないんだ。TOMLでもXMLでもJSONでもいい。<br>ソフトウェアはネストされた変数と値の階層構造をツリーデータ構造に読み込むんだ。これでデータのファイル形式を抽象化してる。<br>今はYAML形式だけ統合されてるんだ。<br>その階層構造を、あのJavaFX Tree UI要素で表示してるわけ。<br>＞ discoverability of KeenWrite isn’t nearly good enough<br>何年も前に同じフィードバックをもらって、それでビデオチュートリアルを作ったんだ。<br>ホームページ[3]の下部にリンクがあるだろ？もっと目立たせた方がいいのかな？<br>ホームページはドキュメントページ[4]にもリンクしてる。<br>そこに変数のこと、メタデータのこと、R連携のことなんかも書いてあるぞ。<br>[0]: https://www.youtube.com/playlist?list=PLB-WIt1cZYLm1MMx2FBG9...<br>[1]: https://youtu.be/CFCqe3A5fFg?&t=11<br>[2]: https://youtu.be/cjQ-dle-tAE?t=11<br>[3]: https://keenwrite.com/<br>[4]: https://gitlab.com/DaveJarvis/KeenWrite/-/blob/main/docs/REA..." userName="thangalin" createdAt="2025/06/05 17:19:19" color="#38d3d3">}}




{{<matomeQuote body="OPじゃないけど、俺としては動画チュートリアルは観ないんだ。<br>文字で読みながら使い方を知りたいんだよ。" userName="FabHK" createdAt="2025/06/07 02:34:39" color="">}}




{{<matomeQuote body="＞ I want to read how to do something.<br>ホームページ[1]にドキュメント[2]へのリンクがあるだろ？<br>そこに変数、メタデータ、R連携なんかのことが書いてあるぞ。<br>それでも不十分なら、ドキュメント改善するから言ってくれ。<br>[1]: https://keenwrite.com/<br>[2]: https://gitlab.com/DaveJarvis/KeenWrite/-/blob/main/docs/REA..." userName="thangalin" createdAt="2025/06/08 21:03:12" color="#45d325">}}




{{<matomeQuote body="俺にとっての問題はドキュメント変換じゃなくて、コンテンツの重複をなくすことなんだ。<br>製品Aと製品Bのマニュアルで多くのセクションを共有したい。<br>スペルミスとか文法ミスがあったら、製品AとB両方のマニュアルで更新しなきゃいけない。<br>追加も同様だ。<br>今まで、共有セクションを複数のドキュメントビルドに組み込める唯一の解決策はLaTeXだったな。<br>これは内部用と顧客向けの情報両方で使ってる。<br>唯一重複するのは、各ドキュメントビルドに関連する改訂概要セクションだけだ。" userName="yndoendo" createdAt="2025/06/04 03:29:56" color="">}}




{{<matomeQuote body="＞ So far LaTex has been the only solution to allow binding shared sections<br>Rっていうチューリング完全言語ならそれができるぜ。<br>R Markdownができるなら、KeenWriteやpandoc+knitrでも対応してるってことだ。<br>Rは条件付きインクルードもできる。<br>製品AとBが認証ステップを共有する場合、こんな感じになるかな。<br>    `r#inc( ’../common/authentication.Rmd’ );`<br>TeXだとこんな感じか。<br>    ＼input ../common/authentication.tex<br>SGML、DocBook、AsciiDoc、RST、その他のテキスト形式にも似たような機能があるぜ。" userName="thangalin" createdAt="2025/06/04 19:43:57" color="#ff33a1">}}




{{<matomeQuote body="QuarkdownとTypstを比較する記事も見てみたいね。Typstは最近すごく注目されてるからさ。<br>Quarkdownの機能比較表に全く言及がないのはちょっと驚きだ。" userName="structural" createdAt="2025/06/03 08:17:30" color="">}}




{{<matomeQuote body="モックドキュメント（https://github.com/iamgio/quarkdown/tree/main/mock）を見てみたんだけど、これは全ての視覚要素に関する包括的で詳細なガイドらしいんだが、基本的なMarkdownテーブル以外を作る方法が見当たらないな。<br>セルの結合はどうやるんだ？セルの書式設定は？<br>Typstは洗練されたグリッドやテーブルを実装するいくつかの良い方法があるんだよな。<br>それから、前付けコンテンツとメインコンテンツでページ番号を変えるとか、そういうのはどうやって実装するんだ？<br>全体的に、Markdownの”シンプルさ”が、LaTeXやTypstをみんなが使う理由である細かい粒度の制御機能をたくさん奪ってる気がするな。" userName="msravi" createdAt="2025/06/04 05:09:18" color="#ff5c5c">}}




{{<matomeQuote body="俺が最後に確認した時は、TypstはHTMLを出力できなかったぞ。" userName="junon" createdAt="2025/06/03 10:44:12" color="">}}




{{<matomeQuote body="今は実験的に対応してるんだって。どんどん改善されてるみたいだよ。" userName="lblume" createdAt="2025/06/03 11:47:58" color="">}}




{{<matomeQuote body="Typst、めっちゃいい感じだよ！これでブログ3つも書いたんだ。実際の記事とソースはここ見てみて。<br>Post: https://ezb.io/thoughts/interaction_nets/lambda_calculus/202...<br>Typst source: https://github.com/enricozb/enricozb.github.io/blob/master/t..." userName="enricozb" createdAt="2025/06/03 18:57:44" color="#ff5733">}}




{{<matomeQuote body="あのTypstソース、すごくきれいだね。TypstのHTMLサポート、もう一回ちゃんと見てみようかな。共有ありがとう！" userName="anbotero" createdAt="2025/06/03 22:59:33" color="">}}




{{<matomeQuote body="ありがとう！Typstで大変だったのは、インライン数式の見た目と間隔かな。SVGで出るのはいいけど、コピーできないんだよね。間隔もたまに変だから、＄thick x + y＄みたいなので調整したりしたよ。SVGのサイズがどう決まるかは複雑そうだけど、それ以外はかなり良かったよ。" userName="enricozb" createdAt="2025/06/04 09:18:07" color="#785bff">}}




{{<matomeQuote body="Typstって、図を直接書くための「プログラミング言語」みたいなのがあるっぽいね…覚えるの大変そうだ！" userName="breadwinner" createdAt="2025/06/04 03:52:32" color="">}}




{{<matomeQuote body="覚える価値はあるけど、別に必須じゃないよ。事前に作った画像をTypstに貼り付けるのもOKだし、図用のパッケージも色々あるよ。Graphviz使えるdiagraphとかね。この記事で使ってるCeTZは、TikZに影響されてて、同じくらいパワフルなんだ。" userName="lblume" createdAt="2025/06/04 05:43:58" color="#ff33a1">}}




{{<matomeQuote body="＞この記事で使ってるCeTZは、TikZに影響されてて、同じくらいパワフルなんだ。<br>いや、「同じくらいパワフル」ってのは絶対ないよ。何年もかかってもそうはならないだろうな。TikZはマジで記念碑的な作品だから。" userName="andrepd" createdAt="2025/06/04 09:02:38" color="#ff33a1">}}




{{<matomeQuote body="そうそう、PandocがTypstをサポートしてて、Typst本体とは別にTypstファイルをHTMLに変換できるらしいよ。まだ自分で確かめたわけじゃないけどね。" userName="blacksqr" createdAt="2025/06/03 22:37:07" color="">}}




{{<matomeQuote body="それ、めっちゃいいね！Typstとか使って自分のサイト作って、PDFでも保存できるようにしたいな〜。アーカイブしやすいし。" userName="sureglymop" createdAt="2025/06/03 17:38:00" color="">}}




{{<matomeQuote body="TypstのHTMLサポートについては、この公式ドキュメント見るといいよ。<br>https://typst.app/docs/reference/html/" userName="divan" createdAt="2025/06/03 11:09:59" color="#ff5c5c">}}




{{<matomeQuote body="比較表は正確？<br>https://github.com/iamgio/quarkdown#comparison<br>LaTeXにフルスクリプト能力あるのは確かだし、Quarkdownの構文がTypstより簡潔で読みやすいとか、学習曲線がTypstより簡単ってのも怪しいな。LaTeXもtex4htでHTML作れるし。" userName="blenderob" createdAt="2025/06/03 12:26:31" color="#ff5c5c">}}




{{<matomeQuote body="＞And surely the learning curve is not easier than Typst?<br>まぁ、（ほとんどの）MarkdownがQuarkdownとして使えるのは大きいよね。参入障壁はこれ以上なく低いよ。学習曲線とはちょっと違うけど、重要な要素。そもそも“学習曲線”なんて主観的なものだし、比較表に入れるのはどうなのって思う。機能が必要かどうかも、ツールの設計次第だよね。" userName="nonethewiser" createdAt="2025/06/03 15:41:18" color="#38d3d3">}}




{{<matomeQuote body="え、よく分かんない。私、自分の使い方なんて一言も言ってないし、比較表の正確性をチェックしてただけなんだけど。このコメント、私宛て？それとも別の誰か？" userName="blenderob" createdAt="2025/06/03 12:55:13" color="">}}




{{<matomeQuote body="おそらく、PandocがあればどのツールからでもHTMLとかPDFに変換できるよって言いたかったんだと思うよ。" userName="cAtte_" createdAt="2025/06/03 13:01:34" color="">}}




{{<matomeQuote body="あ！ありがとう。そうなんだね。うん、PandocはHTMLとかPDFへの変換に超便利だよね。ドキュメント作成して色々な形式で出力するのに、私にとって一番のツールだよ。" userName="blenderob" createdAt="2025/06/03 13:19:07" color="">}}




{{<matomeQuote body="TikZとかpgfで何ができるか見れば、LaTeXやplain TeXのスクリプト能力は分かると思うよ。比較表は明らかに不正確だね。" userName="kccqzy" createdAt="2025/06/03 19:29:45" color="#45d325">}}




{{<matomeQuote body="これ、Quartoとどう違うの？[0] https://quarto.org/<br>名前も拡張子も目的も似てるけど、現時点では機能が少ないみたい。" userName="account-5" createdAt="2025/06/03 08:25:14" color="#ff5733">}}




{{<matomeQuote body="あと、Quartoはすごく成功したR Markdownエコシステムの後継だよ。同じ開発者たちが作ってるんだ。<br>https://quarto.org/docs/faq/#who-are-the-developers-of-quart..." userName="jsilence" createdAt="2025/06/03 09:17:39" color="#785bff">}}




{{<matomeQuote body="Quartoって、Quarkdownの精神的な後継者なだけでなく、R Markdownファイルも扱えるみたいだよ。新しいQuarto .qmd形式に加えてね。" userName="riskassessment" createdAt="2025/06/03 15:07:30" color="#785bff">}}




{{<matomeQuote body="名前が似てるのは偶然かもね。QuarkXPressを思い出したよ。まさに収斂進化って感じ！ :D" userName="tecleandor" createdAt="2025/06/03 08:49:54" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="僕もすぐにそれ（QuarkXPress）を思い出したよ。シンタックスがいい感じだね。" userName="jbverschoor" createdAt="2025/06/03 09:24:02" color="">}}




{{<matomeQuote body="名前の由来は、最小粒子のQuarksが物事の構成要素で、組版が文書作成の一番下の抽象レベルだからかな？Markdownから”down”でね。" userName="zelphirkalt" createdAt="2025/06/03 10:38:37" color="">}}




{{<matomeQuote body="昔はQuarkXPressがほとんどだったんだ。Adobe InDesignが出て変わってきたけどね。<br>出版社で本を組版してた時、ほとんどQuarkXPressだったけど、LaTeXで作った本もこっそり出したな。LaTeXのテンプレートもQuarkXPressに合わせるのが大変で。<br>だから”Quarkdown is a modern Markdown-based typetting system”って聞くとQuarkXPressを思い出して、Mac OSとかSony Trinitronモニターとか良い記憶が蘇るよ。" userName="TacticalCoder" createdAt="2025/06/03 12:20:41" color="#ff5c5c">}}




{{<matomeQuote body="QuarkXpressで組版、Photoshopで絵を描いて、Macromedia Freehandでベクター化。2000年代初頭でもまだ使ってたよ。良い時代だったな。<br>https://www.simongriffee.com/notebook/american-overseas-scho..." userName="hypertexthero" createdAt="2025/06/03 17:19:46" color="#785bff">}}




{{<matomeQuote body="同じ質問（名前の由来？）しようと思ってたんだ。友達がQuartoで講義資料とプレゼンを作り直してて、すごく neat だったよ。R StudioやJupyter Notebooksと連携が良いのも大きなプラスだね。" userName="riedel" createdAt="2025/06/03 19:05:37" color="#38d3d3">}}




{{<matomeQuote body="サンプル出力はきれいだね！でも、テンプレート言語に関数呼び出しとかが入ってくるのは正直苦手なんだ。もし他の言語と組み合わせるなら、JSXとかJavaScriptみたいに、ちゃんとしたプログラミング言語で書く方が楽だと思うよ。”real”な言語を使うことで、エスケープとかXSSとか気にしなくて済むしね。" userName="looneysquash" createdAt="2025/06/03 18:58:30" color="#45d325">}}




{{<matomeQuote body="QuarkdownとかTypstとか、こういうのは論文とか長い文書向けの組版システムだよね。<br>HTMLの代わりを探してるんだけど、フォームとかチラシ、名刺みたいなのは全然考えられてない（おまけ程度）って感じかな。<br>実はSileとTypstを間違えてたんだけど、たぶんTypstも同じだと思う。Typstは商用だったから深掘りしなかったけどね。" userName="rendaw" createdAt="2025/06/03 09:02:45" color="">}}




{{<matomeQuote body="＞フォームとか請求書とか、チラシ、名刺みたいなのは、おまけ程度って話だけどね。<br>それは、長い文章みたいにアルゴリズムで組むんじゃなくて、グラフィックデザインに近いからだよ。WYSIWYGがないと、ページ端とかに合わせて細かく要素を配置するのがすごく大変なんだ。WYSIWYGがあればすぐできるのにね。<br>タブロイド紙もそう。画像に合わせてテキストが回り込むようなレイアウトとか、見て調整できないと難しいんだ。<br>追記：タイプミスでtestって書いたけどtextのことだよ。" userName="blacklion" createdAt="2025/06/03 12:14:56" color="#38d3d3">}}




{{<matomeQuote body="Typstの批判かな。HTMLだと手書きで配置とか楽だし、要素間の相対配置がデザインの肝でしょ？HTMLみたいにpaddingで簡単に余白指定できるのに、Typstでテキストベースで配置が簡単じゃないってのはどうなの？<br>GUIがなくても、ちょっと視覚フィードバックが必要な時でも、便利なUIがないのは致命的じゃないし、テキストベースのレイアウトツールの方が楽なこともあるんじゃない？" userName="rendaw" createdAt="2025/06/04 12:57:36" color="#ff33a1">}}




{{<matomeQuote body="逆に、HTMLで公式文書、たとえば複雑なヘッダーとかフッターがある請求書とか作ろうとすると、ネストしまくりのテーブルとかで、すっごい汚い感じになっちゃうよね。<br>別に不可能だとは言わないけど、難しそうに見えるな。" userName="blacklion" createdAt="2025/06/04 13:16:20" color="">}}




{{<matomeQuote body="コメント1で言ってたこと、Typstじゃできない理由あるの？<br>俺にはできない理由が分からないんだけど（インタラクティブフォーム以外ね。でもそれは開発中みたいだよ[1]）。<br>PDFライターの低レベルバックエンドはもうフォームフィールドのサポートを実装してるみたいだから、Typstに実装されるのも時間の時間みたいだね。<br>[1] https://github.com/typst/typst/issues/1765" userName="andy12_" createdAt="2025/06/03 09:58:59" color="#ff33a1">}}




{{<matomeQuote body="できるよ！俺、前回のトレードショーで206x85cmのスタンディングバナーをTypstで作ったのが、最初の「本番」プロジェクトの一つなんだ。<br>https://typst.app/project/r1YNDcKpoF1sVXHf5n4VKB<br>それに、レンダーされたプレビュー版を一つのリンクで共有できるのも、すごくいい点だね。" userName="jamesmunns" createdAt="2025/06/03 11:51:02" color="#ff5c5c">}}




{{<matomeQuote body="TypstやLatex、Sileでも、そういうレイアウトはできると思うんだけど、それがどれだけ遠回りしないといけないか、システムとどれだけ格闘しないといけないかって話だよね。<br>俺、Typstで論文以外の例を全然見かけないんだよ、たぶんそれには理由があるんじゃないかな。<br>デザインの視点から言うとね。例えば、Wired誌の印刷版を考えてみて…あのページを再現するのって、どれだけ大変だろう？<br>HTMLで論文をフォーマットするのはそんなに難しくないし、料理本もそう。でも、別に素晴らしいわけでもないけどね！" userName="rendaw" createdAt="2025/06/03 10:21:06" color="#785bff">}}




{{<matomeQuote body="俺はTypstが、今まで使った他のどのソフトよりも、こういう文書を作るのにずっと使いやすいと感じたよ。<br>JSONからデータを読み込んで、変更があるたびに文書をインクリメンタルに再生成できるのは、俺にとってはまさにゲームチェンジャーだね。" userName="lblume" createdAt="2025/06/03 11:51:26" color="#ff33a1">}}




{{<matomeQuote body="正直、そんなに難しくないと思うよ。<br>grid機能を使えば、色々なことができるんだ、特にgrid.cell(rowspan:3, colswap:4)みたいに複数行や列を跨ぐセルを作ったり、カラムに分数サイズ（1fr, 2frとか）を使ったり、各セルに独立したinsetやstrokeを追加したりできるからね。<br>だから、CSS Flexboxでできることの多くはもうできてるんだよ。<br>まあ、ドキュメントにもっと多様な種類の文書を作るチュートリアルが必要かもしれないし、Flexboxみたいな別のレイアウト機能を追加するのもいいかもね（grid機能ベースでFlexboxの挙動を再現する関数を作るのもそんなに難しくないだろうけど）。" userName="andy12_" createdAt="2025/06/03 11:01:20" color="#ff33a1">}}




{{<matomeQuote body="オンラインエディタは商用だね。でも、彼らはApache 2.0ライセンスでTypstを無料で公開してるGitHubリポジトリを持ってるよ。<br>俺はcargo（Rust）を使ってインストールしたから、オンラインエディタは使ってないんだ。" userName="freefrog334433" createdAt="2025/06/03 09:34:13" color="#ff5c5c">}}




{{<matomeQuote body="ああ、それ知らなかったよ！<br>オープンソースコミュニティの活動が、有料顧客向けに偏ってるんじゃないかっていう気がしてならないんだけど、もうちょっと詳しく見てみる必要があるね！" userName="rendaw" createdAt="2025/06/03 09:44:57" color="">}}




{{<matomeQuote body="Typstはローカルで使えるし、商用の部分は回避できるよ。<br>色々な種類の文書を簡単に作れるんだ。<br>俺はスライドとか配布資料を作るのに使ってるんだけど、それだけでも他の選択肢よりずっと使いやすいと思ってるよ。" userName="fmoralesc" createdAt="2025/06/03 10:01:07" color="#45d325">}}




{{<matomeQuote body="同じ元ファイルからスライドと配布資料が作れるのかな？教会の資料作りでめちゃくちゃ時間節約できるんだけど。<br>そういう機能ある？" userName="grahameb" createdAt="2025/06/03 15:42:20" color="">}}




{{<matomeQuote body="Quartoっていうのがあるよ。<br>Markdown入力でHTML, PDF, DOCX, PPTXとか、だいたい何でも出力できるんだ。<br>同じ入力で全部！テキストの使い回しや変数、テンプレートも使えるし、’quarto render’ってコマンド実行するだけだよ。" userName="Onawa" createdAt="2025/06/03 18:21:37" color="#ff33a1">}}




{{<matomeQuote body="僕がTypstを初めてちゃんと使ったのはポスター作り[0]だったんだ。LaTeXよりずっと簡単だったからね。<br>図の回り込みとか、箱の間でテキストを流す機能はまだないけど、TeXも後者はできないし、Typstではどっちも今後対応予定みたいだよ。<br>[0]: https://dvdkon.ggu.cz/projects/pppql/poster.pdf" userName="dvdkon" createdAt="2025/06/03 10:01:15" color="#ff5c5c">}}




{{<matomeQuote body="箱の間でテキストを流すのはflowframってのでできるよ。<br>これは古いし使いにくいけど、まあ使えるかな。" userName="blindstitch" createdAt="2025/06/03 11:34:23" color="">}}




{{<matomeQuote body="Typstの使い方が間違ってるかもだけど、なんか視覚的なプログラミング環境っぽいね。<br>他の人がjsfiddleとか使ってるのと同じ感覚かも。<br>Typstで図とかいじるのめちゃくちゃ楽しいよ！小さいのだとすぐ結果が見れるのが最高！" userName="kzrdude" createdAt="2025/06/03 16:26:35" color="">}}




{{<matomeQuote body="もう知ってるかもだけど、paged.jsが君のやりたいことに合うんじゃない？<br>[0]: https://github.com/pagedjs/pagedjs" userName="dleeftink" createdAt="2025/06/03 09:18:14" color="#ff5733">}}




{{<matomeQuote body="へー、paged.js面白そうだね！正直今似たことやってるんだ〜。<br>でもああいう系でヘッドレスレンダリングするのはマジで難しいんだよね。<br>定番ツールももう何年も放置されてるし…。あとブラウザだとCMYKのPDF作るとか、色々問題もあるんだよ。" userName="rendaw" createdAt="2025/06/03 09:43:06" color="#ff5c5c">}}




{{<matomeQuote body="これ、reStructuredTextにそっくりじゃん。<br>Quarkdownだと<br>.somefunction {arg1} {arg2}<br>Body argument<br>で、rSTだと<br>.. somefunction:: {arg1} {arg2}<br>Body argument<br>みたいな感じだね。" userName="cbarrick" createdAt="2025/06/03 15:03:47" color="#ff5c5c">}}




{{<matomeQuote body="みんな”LaTeXでいいじゃん”って言うけど、私はモダンなMarkdown系組版システムが欲しい！LaTeXは古くて構文も不便だから置き換えたいんだ。完全制御できるのはいいし、たとえ冗長でも”Markdownよりちょっとだけ高機能”なものは必要だと思う。<br>でもこれ（Quarkdown）は一見すると、私が求めてた”LaTeX置き換え”じゃなくて、”Markdownよりちょっとだけ”の方に寄ってるみたい。<br>しかも使うのシームレスじゃない感じ。<br>まず1. JVM必須なのがダメ。入れようとも思わない。<br>2. 構文が嫌い。Markdown互換を最大限にしてほしいのに、これは違う。関数の引数がインデントされてるのがキモい。ドキュメント全体がインデント地獄になりそう。<br>Markdown互換なら ```plugin-name ってやる方が絶対いいって！そしたらMarkdownから外れても全部書き直さなくて済むじゃん。<br>3. ”より良いMarkdown”ってのは、メモとかから始めるのに向いてるから、ノートアプリに統合されてないと意味ないと思うんだ。EmacsとかVimの人もいるけど、私みたいな古いやつでもObsidianに移ったし。<br>ノートアプリ内で構造をうまく制御できて、そのまま公開できるのが理想。単体アプリとしてだと、使う理由が分かんないな〜。Typstは専用オンラインエディタがあるから、多分みんなそれで使ってるんだろうけど。" userName="krick" createdAt="2025/06/03 16:18:25" color="#45d325">}}




{{<matomeQuote body="LaTeXは”古いゴミ”なんかじゃないぜ。これまで書かれたソフトの中でも最高傑作の一つだよ。変なものをドキュメントにインポートしたりしなければ、何も問題ないさ。" userName="deppep" createdAt="2025/06/03 18:21:41" color="">}}




{{<matomeQuote body="俺はたぶんTypstが全部のレベルでLaTeXを上回ると思うな。LaTeXドキュメント見たことある？（もちろんあるよね）昔は最高だったからといって、今もそうとは限らない。今LaTeXに優位性があるとしたら、勢いだけじゃないかな。" userName="Aeolun" createdAt="2025/06/03 23:28:26" color="">}}




{{<matomeQuote body="Typstのドキュメントを見たんだけど、構文の”モード”が3つ（通常、数式、コード）固定されてるっぽい？カスタム構文を追加する方法が見つからなかったんだけど、どうやるの？TeX/LaTeXは構文が完全に拡張できるじゃん。論理学者が独自の記法を使ったり、物理学者がFeynmanダイアグラムを描いたりとかね。Lillypadは楽譜組版に使ってた気がする。編集：見つけた！<br>https://typst.app/docs/guides/guide-for-latex-users/#package..." userName="earthicus" createdAt="2025/06/04 00:25:36" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="LaTeXの構文拡張はこれまで関わった中でほとんど嫌いだったな。全く違う言語を学ばされる感じで、それぞれにクセがある。関数っぽいシンプルなマクロの方が直感的で信頼できると思う。" userName="SkiFire13" createdAt="2025/06/04 11:30:30" color="">}}




{{<matomeQuote body="ある範囲内なら、カスタムマークアップ構文を定義できるやり方もあるよ。省略形とか、もっと怖い正規表現みたいなルールとかね。でも、コード構文は変えられないし、@を文字として再定義してLaTeXみたいにコードの中で切り替えたりはできないよ。" userName="kzrdude" createdAt="2025/06/05 12:10:10" color="">}}




{{<matomeQuote body="Markdown、Quarkdown、Typst、あれこれ。全部LaTeXみたい。こう色々ありすぎて、しかも標準化されてないから混乱するわー。俺はHTML+CSSに戻ったよ。" userName="AmazingTurtle" createdAt="2025/06/03 11:15:59" color="">}}




{{<matomeQuote body="そういえば、ついでに聞いちゃうけど、XMLはどう？<br>大きな文章をXMLで書いたことないんだけど、真剣に考え始めてるんだ。他の選択肢は複雑すぎたり、書くこと自体の邪魔になる学習コストがかかる。XMLなら、独自のタグを定義して後でパーサーにかけて、自動で索引可能な脚注を生成したり、章とか節みたいな普通の構造以外にも独自のテキスト構造を作ったりできる。誰かこのアプローチ試した人いる？" userName="rTX5CMRXIfFG" createdAt="2025/06/03 12:10:40" color="">}}




{{<matomeQuote body="プロのテクニカルライターだけど、うちはGitHubとOxygenXMLっていうツールを使って、”DITA”っていうXML DTDで「docs-as-code」を書いてるよ。2000年代初頭のIBMのでかい発明だけど、俺がぶち当たったどんなユースケースもカバーしてるね。小さなドキュメントセットから数千ページの巨大なものまで。PDF、HTML、Wordとか、色々な出力タイプをサポートしてる。" userName="andrewd18" createdAt="2025/06/03 12:26:32" color="#ff33a1">}}




{{<matomeQuote body="同意だね。DITAは”非テクニカルライターからの貢献”以外は全部得意なんだ。だから俺のキャリアの半分は、DITAを使ってるテクニカルライティングスタックを、gitリポジトリのMarkdown/SSGsに移行させることだったよ。<br>DITAのメリットは、ほとんどの技術系企業が到達しないある程度の規模が必要なんだ。それにOpen Toolkitは悪夢のようなソフトだね。" userName="starkparker" createdAt="2025/06/03 14:56:59" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、可能なところではMarkdownを使ってるよ。でも結局、プロダクトマネージャーが来て、表の中の表とか、コンテンツの埋め込み再利用とかを要求してくるんだよね…そうするとDITAに戻る羽目になる。<br>OxygenXMLがあるとOTがずっと扱いやすくなるんだ。OT XSL transformを触らなくなって何年か経つよ。価格に見合う価値はあるね。" userName="andrewd18" createdAt="2025/06/03 22:13:21" color="#785bff">}}




{{<matomeQuote body="基本的にDocBookってこと？" userName="rmnclmnt" createdAt="2025/06/03 12:15:38" color="">}}




{{<matomeQuote body="その通り。もう発明済みだけど、全然流行らなかったみたいだね。" userName="drob518" createdAt="2025/06/03 13:27:49" color="">}}




{{<matomeQuote body="うん、最後に触ったのは15年前のインターンシップの時。当時の記憶では全然楽しくなかったな（当時LaTeXばっか使ってたけど）。XMLでドキュメント書くのは強力だけど、全然楽しくないんだろうね。" userName="rmnclmnt" createdAt="2025/06/03 20:33:27" color="">}}




{{<matomeQuote body="これ、真剣に自分で考えてたんだ。DocBookみたいな既存のスキーマじゃなくて、自分でカスタムスキーマ作って、それをDocBookとかHTMLみたいな標準スキーマにコンパイルするやつ。これなら欲しいくらい拡張性あるし（セマンティックにリッチでどんなアプリも紐付けられそう）。でも、XML構文で書くのはどうも気が進まないんだよね、特に数式とか。" userName="tempfile" createdAt="2025/06/03 15:23:29" color="#ff5733">}}




{{<matomeQuote body="XMLをXSLTでHTMLにする標準もあるよ。" userName="dgb23" createdAt="2025/06/03 13:44:26" color="">}}




{{<matomeQuote body="スプラッシュページ見てみたけど、<br>ドキュメントもサンプルもスクリーンショットもなし。「無料トライアル」はサインアップ必須の壁の向こう。<br>だから帰った。" userName="schaefer" createdAt="2025/06/03 15:44:51" color="#45d325">}}




{{<matomeQuote body="フィードバックありがとう。うん、まだサイト更新できてないんだ。待機リストで、まだローンチしてないんだよ。まったくその通りな批判だよ。数週間以内に更新するつもり！" userName="davidpapermill" createdAt="2025/06/03 17:13:45" color="#ff5c5c">}}




{{<matomeQuote body="公平だね！<br>数週間後にまた見に来るよ。" userName="schaefer" createdAt="2025/06/04 18:26:26" color="">}}




{{<matomeQuote body="まあ、基本的なMarkdownは手軽に何かするのに超便利だよね。問題は、もっと複雑な用途に使われるべきじゃないものの上に、みんながシステムの上にシステムを積み上げ始めたときだよ。気にしてないから問題じゃないかもしれないけど、誰かが「ただそれだけ」のために作ったものを、元のアイデアやシステムの限界や範囲を理解せずに、誰かがそれを受け取って上に積み上げるのをよく見るんだ。「あー、機能が足りないな」ってなるけど、それは「いや、それはそういう風に作られてないから」ってことなんだ。Windowsのメモ帳にいくつかの書式設定機能がついてるのを見たけど、あれは改善だとは思わないな。メモ帳はメモ帳として目的があったんだよ。" userName="ozim" createdAt="2025/06/03 11:49:03" color="#45d325">}}




{{<matomeQuote body="Markdownの構文って、簡単な使い方ならすぐ書けるくらいシンプル（基本は構文がすごく少なくて済む）だけど、複雑なことに使いたい時はもっと詳しくマークアップできる（複雑なケースでは構文の天井がすごく高い）っていう、良いバランスが必要だと思うな。HTML+CSSはタグがちょっと面倒くさいのが難点かな。WindowsのNotepadがWordPadを統合して書式設定できるようになって、別のアプリじゃなく一つでできるようになったのは良い例だよね。これこそさっき話した、低レベルで始められて、必要なら高度なことまでできるっていう柔軟性の鏡だよ。" userName="zamadatix" createdAt="2025/06/03 12:29:30" color="#ff5c5c">}}




{{<matomeQuote body="Emacsを使うのに抵抗ないなら、成熟してて信頼できるOrg-modeもあるよ。" userName="setopt" createdAt="2025/06/03 11:37:17" color="">}}




{{<matomeQuote body="Org-modeってちゃんと仕様書があるの？俺が見た感じ、Org-modeはEmacsがやってることそのものみたいに見えるんだけど。仕様がないと、広く使われるフォーマットとしてはどうなんだろうね。" userName="blenderob" createdAt="2025/06/03 12:08:25" color="">}}




{{<matomeQuote body="Org-modeには仕様書、’org-info’でのライブヘルプ、’M-x describe-function’みたいなEmacs Lispでの文字列抽出っていう3つがあるんだ。でも、この3つの間に微妙な不一致があったり、長年追加されてきた低レベルと高レベルの機能がごちゃごちゃになってて、全部理解するのが難しかったりするんだよね。でも、コンテンツの表示は目にも指にも優しくてエコだし、Emacsの操作機能は驚くほど強力なものもあるよ。俺は自分のユースケースに合わせて、Org-formatをHTMLに変換するコンバーターを自作したんだ。コマンドラインで動くやつで、Goで書いたよ。" userName="everybodyknows" createdAt="2025/06/03 14:13:47" color="#38d3d3">}}




{{<matomeQuote body="NeovimにもOrg-modeの”フォーク”があって、彼らは彼らのフォーマットの仕様を定義してるよ（本家のOrg-modeとはちょっと違うけどね）。" userName="cycomanic" createdAt="2025/06/03 19:20:35" color="#38d3d3">}}




{{<matomeQuote body="俺も同じ。Web開発でDOM要素をWebSocketで置き換えるのは、意外と楽しいよね。でも、300もの扱いにくいフレームワークとか、97種類もの違う構文を覚えなきゃいけないのはうんざりだよ。HTMLとCSS、JavaScriptがあればいいんだ。MarkdownをHTMLに変換するやつは、LLMに聞けばすぐできて便利。" userName="eGQjxkKF6fif" createdAt="2025/06/03 11:41:38" color="">}}




{{<matomeQuote body="なんでMarkdownをHTMLに変換するのにLLMに聞くの？そんなライブラリ、星の数ほどあるじゃん。LLMじゃなくてnpmとかpip、なんならCRANに聞けばいいじゃん！例えばこれね。https://cran.r-project.org/web/packages/markdown/index.html" userName="runarberg" createdAt="2025/06/03 13:45:13" color="#ff5c5c">}}




{{<matomeQuote body="まさにそうなんだよ。LLMも同じようなこと教えてくれるんだ。よく、使うべきパッケージの`require()`の書き方も教えてくれるんだよね。" userName="eGQjxkKF6fif" createdAt="2025/06/04 20:38:32" color="">}}




{{<matomeQuote body="個人的には、別に難しくないと思うな。Markdownのライブラリ探すのも難しくないし、良いライブラリ（最初に出てくるやつね）なら使い方も一番上に書いてあるから、それをコピペすれば終わりだよ。あと、今のJavaScriptは`import`を使うんだ。`require()`はもう2015年の書き方だよ。もしLLMが`require()`を勧めてくるなら、もっと良いLLMを使った方がいいんじゃないかな。" userName="runarberg" createdAt="2025/06/05 04:27:45" color="#38d3d3">}}




{{<matomeQuote body="もし2005年頃のテキストエディタが、今みたいにHTMLとかXMLのタグのバランスやインデントを自動で合わせてくれたり、シンタックスハイライトが優れていたりしたら、JSONやYaml、Markdownはこんなに普及したのかな？2003年の「The Art of Unix Programming」っていう本でも、XMLを手書きするのは苦痛だから、新しいテキスト形式とパーサーを発明すべきだ、って書いてあったみたいだよ。" userName="aitchnyu" createdAt="2025/06/03 14:21:56" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
