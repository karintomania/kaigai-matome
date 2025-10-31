+++
date = '2025-10-24T00:00:00'
months = '2025/10'
draft = false
title = 'Typst 0.14登場！LaTeXからの乗り換え続出と話題の新文書作成ツールがさらに進化！'
tags = ["Typst", "LaTeX", "組版", "プログラミング", "開発ツール"]
featureimage = 'thumbnails/red2.jpg'
+++

> Typst 0.14登場！LaTeXからの乗り換え続出と話題の新文書作成ツールがさらに進化！

引用元：[https://news.ycombinator.com/item?id=45693978](https://news.ycombinator.com/item?id=45693978)




{{<matomeQuote body="Typstはオンラインエディターがプロプライエタリ、CLIがオープンソースだよ。俺はCLIを使ってる。PowerPointの代わりで使い始めたけど、LaTeXと違って Typst は久しぶりに使ってもすぐ思い出せて便利だよ。" userName="optionalsquid" createdAt="2025/10/24 13:20:44" color="#ff5c5c">}}




{{<matomeQuote body="何十年もLaTeX使ってたけど、今月 Typst に乗り換えたら超良かった！ Knuthには感謝してるけど、 Typst はあらゆる面で LaTeX より体験が良いね。VS Code と TinyMist の組み合わせが最高。LaTeX でいつも苦戦してたテンプレート修正も、 Typst なら一日でできたよ。" userName="agentcoops" createdAt="2025/10/24 14:47:03" color="#ff33a1">}}




{{<matomeQuote body="新しい言語を学ぶのは大変だけど、 Typst コードの生成は LLM が結構やってくれたよ。 LLM でスニペット作ったり言語を学んだりして、 Typst のドキュメントも良いんだけど、時間短縮になったね。" userName="imiric" createdAt="2025/10/24 15:04:10" color="">}}




{{<matomeQuote body="どの LLM？俺の経験だと Typst で使うとひどい結果だよ。ChatGPT とか Gemini は動かないコードを出すし、エラーメッセージやドキュメントをコピペしても直せないことも多い。 Typst は LLM が苦手な言語だと思ってたから、驚いたよ。" userName="nonethewiser" createdAt="2025/10/24 17:41:19" color="#ff33a1">}}




{{<matomeQuote body="数ヶ月前は Claude Sonnet 3.5 を使ったよ。ハルシネーションはあるけど、一度に大量のコードを生成させず、細かく指示すれば軽減できる。俺はドキュメントのコピペでうまくいったし、 Typst は言語がシンプルで古い情報も少ないから LLM にはそこまで難しくないのかもね。" userName="imiric" createdAt="2025/10/24 18:46:56" color="#785bff">}}




{{<matomeQuote body="これはオープンコアモデルの良い例だね。フル機能の F/LOSS 製品があって、その上に商用サービスがあるんだ。俺は CLI ツールしか使ってないけど、不便を感じないよ。商用製品も全然押し付けがましくない。料金プランも寛大でお手頃価格だし、プロジェクトが長く続くための安定した収入源があるのは素晴らしいことだね。" userName="imiric" createdAt="2025/10/24 14:45:28" color="#ff5c5c">}}




{{<matomeQuote body="isitreallyfoss.com が Typst について詳しく分析してるよ。<br>https://isitreallyfoss.com/projects/typst/<br>ほとんど良いけど、「コンパイラに Typst GmbH のサーバーに繋がるパッケージマネージャー「 Typst Universe 」が含まれる」って点が少し気になるかな。" userName="culi" createdAt="2025/10/24 19:27:06" color="#38d3d3">}}




{{<matomeQuote body="すごく簡単なリクエストでも全然ダメだったよ。ChatGPT で「 Make a Typst doc with two columns per page and US page dimensions 」ってプロンプトしたら、 Typst エディターで20個もコンパイルエラーが出た。同じプロンプトを LaTeX で Overleaf に入れたら問題なかったのに。Claude は試してないけど。" userName="nonethewiser" createdAt="2025/10/24 20:02:14" color="#ff5733">}}




{{<matomeQuote body="コア製品とオンラインエディターの話で思い出したんだけど、俺たちが作ってきた製品ではレポート機能が必要なことが多くて、PDF 出力は LaTeX ベースになることが多かったんだよね。でもセキュリティはいつもイマイチだったな。 Typst レンダラーを既存の Rust 製品に統合するのは、どれくらい大変なんだろう？" userName="weinzierl" createdAt="2025/10/24 16:27:00" color="#785bff">}}




{{<matomeQuote body="TypstをPowerPointの代わりとして使い始めたんだ。主にスライド作りで使ってるよ。Slydstもおすすめ！" userName="setopt" createdAt="2025/10/24 18:31:52" color="#ff33a1">}}




{{<matomeQuote body="Knuthはデジタル組版を解決しようとしたんであって、使いやすいHCIじゃなかった。だから、こんなツールが出てくるのは普通だよね。" userName="evertedsphere" createdAt="2025/10/24 15:47:45" color="">}}




{{<matomeQuote body="TeXとTypstは開発された環境が全然違うんだ。KnuthはLiterate Programmingの方がTeXより重要って言ってたけど、『TeX: The Program』はweb2cやpdftex、xetex、luatexみたいなツール開発にめちゃくちゃ役立ったんだよ。http://literateprogramming.com/<br>https://www.goodreads.com/book/show/499934.Computers_Typeset..." userName="WillAdams" createdAt="2025/10/24 15:50:32" color="">}}




{{<matomeQuote body="もっと視覚的に凝ったプレゼンをTypstに持っていくにはどうする？SVGでアイコン作って配置するのがいいのかな？" userName="dev_l1x_be" createdAt="2025/10/24 18:47:53" color="">}}




{{<matomeQuote body="Marp大好きなんだけど！プレゼンでTypstがMarpより良いって思うのはなんで？" userName="jadbox" createdAt="2025/10/24 18:07:17" color="#ff5733">}}




{{<matomeQuote body="100%同意。TeXだとパッケージやテンプレートを使うと、設定を変えるのが大変で身動きが取れない感じだよな。Typstなら、嫌なところは自分でいじれる自信がある。これは本当に新鮮な気分だ。" userName="bobbylarrybobby" createdAt="2025/10/24 15:32:10" color="#ff5733">}}




{{<matomeQuote body="LLMがTypstコード生成が得意って話だけど、俺は逆だったな。ChatGPTやClaudeはエラーばっかりで謝るし、「キーワードは＜blahblah＞だよ」って言ってもまたエラー。Geminiは正直に「Typstでそれは無理」って言ってくれた。俺がちょっと変わったこと試してただけかもしれないけど、LLMの学習データが少ないせいだと思う。でも、Typstのドキュメントはめちゃくちゃ良いから、例のコードをいじるだけでうまくいったよ。" userName="busyant" createdAt="2025/10/24 21:10:39" color="#45d325">}}




{{<matomeQuote body="多くのオープンソースプロジェクトってこんな感じで始まるよね…変わっちゃうまではさ。" userName="croes" createdAt="2025/10/24 15:12:55" color="">}}




{{<matomeQuote body="TinyMistはVS Code / Cursorでのローカル開発に、オンラインエディタの素晴らしい代替になるよ。https://myriad-dreamin.github.io/tinymist/" userName="jadodev" createdAt="2025/10/24 13:23:54" color="#ff33a1">}}




{{<matomeQuote body="ClaudeでTypstテンプレート作ったら、エラー出たけどコピペで直してくれたんだ。箇条書きがハイフンじゃなかったのは残念だけど、ゼロから作るよりずっと速かったよ。ASCIIアートからTypstコード作るのは得意だったな。全体的に良い経験だった。" userName="vrotaru" createdAt="2025/10/25 04:41:51" color="#ff5c5c">}}




{{<matomeQuote body="同じプロンプトをChatGPTで試したら、10個もエラーが出ちゃったよ。主に`#`をコメントに使ってたのが原因で、Typstの学習データが少ないんだろうね。Claudeと比べるとイマイチだったな。" userName="bluenose69" createdAt="2025/10/25 09:20:21" color="">}}




{{<matomeQuote body="Web版は必須じゃないけど、Typst開発を応援するために年間購読してるよ。Typstの例を共有したり、Githubリポジトリと同期しながらドキュメントを編集できるのは便利だね。開発支援と機能の両面で満足してる。" userName="commandersaki" createdAt="2025/10/24 16:52:44" color="">}}




{{<matomeQuote body="LLMって予測不能だよね。Go言語の生成でひどい経験したのに、逆の経験も聞くし。トレーニングデータの量より質が大事だと思うんだ。Typstは新しくて悪いコードが少ないから、LLMが生成しやすいのかも。Rustみたいに複雑な言語は難しくて、Pythonはシンプルでも生成コードに頼るのは怖いな。" userName="imiric" createdAt="2025/10/25 06:53:39" color="#38d3d3">}}




{{<matomeQuote body="OSSでビジネスをやるのは本当に大変だよね。批判するより、GrafanaやClickHouse、TimescaleDBみたいに成功してる例を認めようよ。特にGrafanaはOSSの素晴らしい管理者だと思う。Typstも今のところ順調だし、称賛すべきだね。" userName="imiric" createdAt="2025/10/24 18:30:58" color="">}}




{{<matomeQuote body="去年、LaTeXからTypstに乗り換えたんだ。本の執筆や請求書、スライドに使ってるよ。もうLaTeXは二度と触りたくないくらいTypstは最高だね！本当に素晴らしいツールだよ。" userName="__mharrison__" createdAt="2025/10/24 20:45:12" color="#38d3d3">}}




{{<matomeQuote body="俺もTypstを始めた時はそうだったよ。最初は難しそうで、チュートリアルにない部分はChatGPTに頼ってたんだ。でも今は関数を生成したり、もっと複雑な機能も使いこなせて、自力でドキュメントを作れるようになったんだ。成長できたって感じ。" userName="commandersaki" createdAt="2025/10/24 16:49:54" color="#785bff">}}




{{<matomeQuote body="Claude Sonnet 4.5で同じプロンプト試したら、US Letter 2カラムレイアウトのTypstコードがエラーなしで動いたよ。あなたの20エラーの経験とは違って、これは成功だね。ChatGPT-4oだと最初はエラー出たけど、プロンプト変えたり修正したりで改善したよ。LLMはアシスタントとして使って、生成コードは公式ドキュメントで確認するのが賢い使い方だね。" userName="imiric" createdAt="2025/10/25 10:18:52" color="#ff33a1">}}




{{<matomeQuote body="多くのパッケージマネージャーはリポジトリURLをconfigから読むけど、Typstはバイナリにハードコードされてるんだよね？確認したいな。" userName="echoangle" createdAt="2025/10/25 08:40:05" color="">}}




{{<matomeQuote body="MarpよりTypstの方が好きだって。<br>MarpはCSSで書式設定するからミスが捕まえられないし、プラグインの導入も面倒。PDF生成もChromeが必要だったりするんだ。Typstはこれらが全部解決されてる。HTMLベースのプレゼンならMarpもいいけど、個人的にはPDF使うからTypstが最適だね。" userName="optionalsquid" createdAt="2025/10/24 20:41:33" color="#38d3d3">}}




{{<matomeQuote body="オンラインエディターは、リアルタイム編集が必要な簡単なプロジェクトや、ツールをダウンロードしたくない人にとって、すごく便利だよ。" userName="s777" createdAt="2025/10/24 16:12:05" color="">}}




{{<matomeQuote body="Typstスレッドではいつも書くけど、LaTeXと比べてこんなにいい点があるよ！<br>コンパイルが速くてファイルも少ないし、エラーも分かりやすい。リストの書き方も良いし、マクロも好きな場所に書ける（後で訂正されたけど）。バージョン管理もしやすいし、ページ設定も簡単。CSL対応の引用スタイルがうまく動かないのが唯一の不満だけど、大体の機能は内蔵されてるからパッケージの導入もほとんどいらないね。LaTeXはディストリビューションも巨大だし。0.14のアクセシブルPDFとHTMLエクスポートは嬉しい！" userName="commandersaki" createdAt="2025/10/24 16:31:41" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LaTeXのコンパイルはTectonic¹を使えば依存関係も自動でダウンロードしてくれるし、一時ファイルも隠してくれるよ。<br>Overleaf²を使ってる知り合いも多くて、リアルタイムレンダリングだからコンパイル速度の差も気にならないんじゃないかな。<br>だから、コメント87185の指摘だと、Typstの優位点は診断の良さとリストの構文ぐらいだね。他の点は的外れか疑わしいよ。Typstにはもっと面白い特徴があるはずなんだけどな。<br>¹: https://tectonic-typesetting.github.io/<br>²: https://docs.overleaf.com/on-premises/installation/using-the..." userName="idoubtit" createdAt="2025/10/24 18:12:55" color="#38d3d3">}}




{{<matomeQuote body="みんな色々な経験があるよね。<br>LaTeXでマージンやフッターの設定が難しいって言ったのを「疑わしい」って言われたけど、僕は実際に何時間もかけて悩んだんだ。ページ番号つきのフッターを設定しようとして、結局レンダリングがページの外に出てたのが原因だったりして。本当に大変だったよ。<br>Typstならこんな感じのコードで、フッターとかマージンの設定がすごく簡単なんだ。比較にならないくらいね。" userName="commandersaki" createdAt="2025/10/24 19:06:35" color="#45d325">}}




{{<matomeQuote body="Overleafと比べてTypstのコンパイル速度が「マイナー」だっていうのは違うと思うよ。個人的には全然違う体験だよ。<br>OverleafはTikZ図がいくつかあると、3ページ目くらいでも保存するたびに数秒かかってた。Typst（Tinymist in VS Code）は本当にリアルタイム。テキスト更新は数十ミリ秒だし、図の挿入も1秒以下だよ。この「即時性」が体験を大きく変えるんだ。" userName="DNF2" createdAt="2025/10/24 19:45:33" color="#785bff">}}




{{<matomeQuote body="僕のノートPCは数年前のCPUだけど、Tinymistだと3ページ目くらいで既に重くなるんだ。キーボードを打ってから文字が表示されてプレビューが更新されるまでに、はっきりとした入力遅延があるんだよね。<br>これはTinymistの問題だと思うんだけど、デバウンスがないし、プレビュー更新もVSCodeの入力処理と同じスレッドで動いてるみたいだからかな。" userName="fiso64" createdAt="2025/10/26 10:56:56" color="">}}




{{<matomeQuote body="へぇ、面白いね。僕はそんな経験ないな。<br>ただ、Tinymistのプレリリース版を試した時に、PDF画像を複数ビューでクロップして大きなPDFを作ろうとしたら、ちょっと重くなったことはあったよ。あれはまだベータ版だったからって思ってたけど。<br>それに、Typstでまだそんなに大きな文書は作ってないんだ。" userName="DNF2" createdAt="2025/10/27 08:18:10" color="">}}




{{<matomeQuote body="Unicodeの上付き文字を使えばいいんだよ。<br>https://en.wikipedia.org/wiki/Unicode_subscripts_and_superscripts" userName="mayoff" createdAt="2025/10/24 18:58:54" color="">}}




{{<matomeQuote body="LaTeXは軽くかじった程度だけど、Typstはすごく簡単に習得できたよ。最近、Typstで本を一冊出版したんだ。ページ番号の左右交互配置とか、細かい書式設定に少し時間はかかったけど、印刷可能な美しいPDFを簡単に作れたよ。pandocもTypstをかなりサポートしてるから、docx作成に使ってる。いくつかpandocのサポートに関するissueを開いたんだけど、ほとんどすぐに解決されたね。<br>[0]: https://thelabofthought.co/shop/p/nbmi3" userName="raybb" createdAt="2025/10/24 18:37:18" color="#785bff">}}




{{<matomeQuote body="＞コンパイル時に5つもファイルを作らないって最高！これは15年以上前にStack Overflowで質問したんだけど、今でも一番多くのアップボートをもらってる質問なんだ。たまに通知が来るよ。<br>[0] https://tex.stackexchange.com/questions/11123/prevent-pdflat..." userName="fouronnes3" createdAt="2025/10/24 16:47:09" color="#45d325">}}




{{<matomeQuote body="本当にLaTeXよりずっと良いよ。Typstを使うのが楽しいから言ってるんだけど、LaTeXはいつも何かを調整して、コンパイルを待って、何が起きてるか全く分からないまま動くことを祈ってたんだ。" userName="__mharrison__" createdAt="2025/10/24 20:48:02" color="">}}




{{<matomeQuote body="＞セマンティックな改行を使うなら、バージョン管理や差分が取りやすいって話だけど、これには納得いかないな。セマンティックな改行を使うなら、どっちでも同じくらい差分は取りやすいでしょ。" userName="andrepd" createdAt="2025/10/25 11:13:23" color="">}}




{{<matomeQuote body="LaTeXのテンプレートをTypstに変換したり、その逆はできるの？多くの学会誌はLaTeXのテンプレートがあって、LaTeXを要求するんだよね。" userName="hodanli" createdAt="2025/10/26 19:18:19" color="#ff5733">}}




{{<matomeQuote body="12. 信頼できない入力に対する時限爆弾じゃないんだ。" userName="weinzierl" createdAt="2025/10/24 17:15:26" color="">}}




{{<matomeQuote body="＞HTMLやSVGへのエクスポートでは、PDFが埋め込みSVGにオンザフライで変換されるんだね。そしてPNGエクスポートやウェブアプリのプレビューでは、PDFがラスタライズされる。これらのPDF処理機能は全てTypstコンパイラ内にあり、システム依存性がない。これはコミュニティメンバーの@LaurenzVがRustでゼロからPDF処理ライブラリ hayro を作ったおかげだよ。すごい努力だったんだろうな。" userName="mastax" createdAt="2025/10/24 13:53:20" color="#785bff">}}




{{<matomeQuote body="それに hayro ライブラリはスタンドアロンで、Typstの外でも簡単に使えるよ。CPUだけを使っていて、純粋なRustだからWebAssemblyでも使えるんだ。デモへのリンクはこちら。<br>https://github.com/LaurenzV/hayro<br>https://laurenzv.github.io/hayro/" userName="lukax" createdAt="2025/10/24 14:04:51" color="#ff5733">}}




{{<matomeQuote body="やばい、400ページ超えの結構大きなPDFを読み込ませてみたんだけど、ほとんど瞬時にレンダリングされたよ！これは本当にすごいわ。" userName="cycomanic" createdAt="2025/10/25 02:17:11" color="#785bff">}}




{{<matomeQuote body="へぇー、hayroの作者さんはTypstのためにこの作業をしてくれたのかな？それとも、どっちみちやる予定だったのかな？" userName="cbolton" createdAt="2025/10/24 14:05:15" color="">}}




{{<matomeQuote body="作者だよ！Typstの要望が多かった機能を解決したかったのは大きな動機だけど、それだけじゃないよ。PDFの作業はkrillaライブラリとかで結構やってたから、仕組みはよく知ってたんだ。それに、Rustで2Dレンダリングに関する修士論文も書き終えたばかりだから、その知識も活かせたね。自由な時間に大きなオープンソースプロジェクトを作れる良い機会だったんだ！" userName="Vallaaaris" createdAt="2025/10/24 14:28:27" color="#38d3d3">}}




{{<matomeQuote body="hayro-interpretとkrillaを使って、既存のPDFをアクセシビリティ対応させることは可能なのかな？各ページをタグ付けしてマーク付きコンテンツのスパンで囲んでラウンドトリップさせる感じ。PDFiumはコンテンツストリームのラウンドトリップとマーク付きコンテンツスパンの追加はできるけど、タグ付けはできないからね。どう思う？" userName="mwcampbell" createdAt="2025/10/24 15:07:03" color="#ff33a1">}}




{{<matomeQuote body="うん、それ、将来の目標だね。でも、それを可能にするには、両方のライブラリでまだ結構な作業が必要だよ。" userName="Vallaaaris" createdAt="2025/10/24 15:19:28" color="">}}




{{<matomeQuote body="背景を教えてくれてありがとう。すごい仕事だね。修士論文が気になるんだけど…公開されてるの？" userName="cbolton" createdAt="2025/10/24 15:08:33" color="">}}




{{<matomeQuote body="まだだよ。でも、1～2週間以内には採点が終わるはずだから、そしたら共有できるよ！" userName="Vallaaaris" createdAt="2025/10/24 15:18:08" color="">}}




{{<matomeQuote body="そして、仕事のオファーも来ることを願ってるよ！" userName="IshKebab" createdAt="2025/10/24 14:53:09" color="">}}




{{<matomeQuote body="＞だから移植性が高いね<br>とはいえ、Cエコシステムに比べたら移植性はかなり低いと思うけどね。" userName="pabs3" createdAt="2025/10/25 06:03:14" color="">}}




{{<matomeQuote body="Cよりポータブルじゃないって？理論上はそうかもだけど、実際に（a）標準Cコンパイラがあって、（b）Rustターゲットがなくて、（c）PDFを扱うのに十分なメモリがあるプラットフォーム向けに開発してる人っているの？" userName="swiftcoder" createdAt="2025/10/25 06:33:46" color="">}}




{{<matomeQuote body="それは単純すぎるよ。俺は大規模なCとRustのプログラムをメンテしてるけど、Unix/Windowsの問題はCよりRustの方が断然直しやすいんだよね。Rustがサポートしてない一部の変なCPUより、LinuxとWindowsをしっかりサポートする方がずっと大事だよ。" userName="CJefferson" createdAt="2025/10/25 09:29:37" color="">}}




{{<matomeQuote body="アプリを使うつもりはないけど、”資金援助”のつもりでTypstを購読しようと思う。LaTeXは好きだけど嫌いでもあって、その後継や代替ツールってコンセプトはめちゃくちゃ魅力的だね。あと、微細なタイポグラフィの重要性を理解してて、それに取り組んでるって事実が超超プラスポイントだよ。" userName="JustFinishedBSG" createdAt="2025/10/24 13:23:38" color="#38d3d3">}}




{{<matomeQuote body="50年前のオープンソースは、利用方法がわからなかったから、今じゃ数ギガの配布物とか、ごちゃごちゃの構文で何とかしてるよね。Typstは50年間のTeXの経験から学んで、45MBのバイナリに欲しい機能を全部詰め込んでるんだ。俺は学術出版以外にも（本、パンフレット、カードレイアウトも！）使ったけど、どんな種類の文書作成にも間違いなく最高のツールだよ。JSONやCSVからの手続き的なレイアウト生成は最高！" userName="netbioserror" createdAt="2025/10/24 16:02:16" color="#ff5733">}}




{{<matomeQuote body="Typstはオープンソースだから、自分のPCで動かせるよ。CLI版もあるし、多くのIDE（ほとんどはtinymistを使ってる）と統合されてる。個人的には、購読するだけで使わないより、Typstを使ってコンテンツを作り始めたり、応援したり、バグや困り事をチームに伝える方が良いと思うな。" userName="dev_hugepages" createdAt="2025/10/24 14:30:43" color="#45d325">}}




{{<matomeQuote body="CLIを使ったり、アプリ（オンラインエディタ）を使わずに（アプリのプロ機能に）購読して、金銭的にちょっとサポートしつつ、Typstを使ってコンテンツを作るってこともできるよ。" userName="tcfhgj" createdAt="2025/10/24 14:39:13" color="">}}




{{<matomeQuote body="直接寄付もしたし、今はウェブアプリの購読で財政的にサポートしてるよ。CLIとウェブアプリを結構切り替えて使うことが多いかな。ウェブアプリは実験したり、特にサポートを受ける際に問題をデモするのに共有しやすいし、GitHub連携も十分良いね。Typstがバウンティをサポートしてくれたら嬉しいな、HTMLサポートのためにもう少し貢献できるのに。" userName="commandersaki" createdAt="2025/10/24 17:03:38" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="LaTeXも悪くないけど、ちゃんと使いこなすのは難しいよね。個人的にLaTeXの不満点は、実行する環境にすごく依存しちゃうところなんだ。" userName="garganzol" createdAt="2025/10/24 13:42:37" color="">}}




{{<matomeQuote body="これに関して、nix flakesのセットアップで成功したよ！LLMの助けを借りて、フォント一つ変えることもできたんだ。以前は、何してるか全くわからずにrootでたくさんのスクリプトを実行して同じ変更をしてたからね。イライラする！" userName="1-more" createdAt="2025/10/24 16:21:22" color="#38d3d3">}}




{{<matomeQuote body="Webアプリを使わないなら、GitHubでスポンサーしてあげたら？ステッカーももらえるよ。" userName="Aaron2222" createdAt="2025/10/25 00:43:55" color="">}}




{{<matomeQuote body="Typstがマイクロタイポグラフィのサポートに取り組んでるって示してる？リンクの文字レベルの調整例は素晴らしいからTypstを試したいけど、この記事からだと彼らが積極的にマイクロタイポグラフィに取り組んでるか不明だね。" userName="AlanYx" createdAt="2025/10/24 16:21:47" color="">}}




{{<matomeQuote body="Typstは履歴書作成で好きだけど、LaTeXから乗り換えられないのはキラー機能がないからだね。1. Beamer: 週に何度もスライド作るから、Beamerのスタイルとフォントの豊富さは他にはない。Typstでこれをやるのはまだ大変。2. TikZで図を生成: GUIツール嫌いだし、LLMがTikZ生成を手伝ってくれるから便利。3. Overleafに慣れててCERNのプロアカウントもあるし、コラボ機能もTypst Cloudよりいい。いつかTypstがこの方向で成長して、LaTeXをやめられるといいな。それまではOverleafのテンプレートを使うよ。" userName="elashri" createdAt="2025/10/24 14:22:16" color="#ff5733">}}




{{<matomeQuote body="もうチェック済みかもしれないけど、もし見てなかったらこれらを確認してみてね。<br>- https://touying-typ.github.io/ Creating slides in Typst<br>- https://cetz-package.github.io/ CeTZはTikZやProcessingにインスパイアされたAPIでTypstで描画できるパッケージだよ。プロットやチャートライブラリも提供してて、他のパッケージでも回路図などを作るのに使われてる。<br>- チームでバージョン管理を使ってみたら？無理だと思っても、Gitみたいな既存のバージョン管理システムはLaTeXやTypstを含むテキスト形式でかなりうまく機能するよ。" userName="dev_hugepages" createdAt="2025/10/24 14:27:23" color="#ff5c5c">}}




{{<matomeQuote body="いい提案だけど、GitをOverleafの代替として勧めてるって理解した？それは全く現実的じゃないし、Overleafがどんな問題を解決してるか完全に理解してないよ。Overleafは内部ではGitを使ってるけど、本当に提供してるのはGoogle DocsみたいなLaTeXドキュメントでのコラボ機能なんだ。Overleafでレビューする変更をGitHubのプルリクでレビューするのはすごく大変で、新しい、複雑で直感的じゃないワークフローを導入することになるよ。" userName="Certhas" createdAt="2025/10/24 19:32:23" color="#45d325">}}




{{<matomeQuote body="TypstのWebアプリでは、プロジェクトをGitリポジトリにリンクできるよ。これでWebアプリでリアルタイムコラボレーションとGitでのバージョン管理ができるんだ。Overleafの履歴GUIとは違うけど、機能としては使えるよ。" userName="cbolton" createdAt="2025/10/25 15:22:13" color="#ff33a1">}}




{{<matomeQuote body="参考までにだけど、数週間前にHNでTypstのオープンソースのコラボエディタが投稿されてたよ: https://news.ycombinator.com/item?id=45481791" userName="spidersouris" createdAt="2025/10/25 09:24:07" color="#ff5c5c">}}




{{<matomeQuote body="LaTeXでたくさんスライド作ってるなら、Typstは試す価値絶対あるよ。講義とかでたくさんのアニメーション付きTikZ図があるLaTeXのプレゼンをたくさん持ってるんだけど、コンパイル時間がものすごいんだ。ある時点ですごく時間がかかってたけど、Typstならコンパイルがめちゃくちゃ速いからコンパイルを始めるのをためらわなくて済む。これでプレゼンをはるかに早く終わらせられるようになったよ。CeTZもすごくうまく機能してる。自分の用途でTikZを置き換えられるか本当に不安だったけど、どうやら良い幾何学的プリミティブ（線、長方形、円など）があれば、かなりのことができるみたい。それにTypstでプログラミングしてちゃんとした関数を作るのもすごく楽しい。Beamerを置き換えるTypstの選択肢はまだ完全に揃ってないのは事実だけど、かなり使える状態なのは間違いないよ。例えばtypst-presentate [1]を見てみて。[1] https://github.com/pacaunt/typst-presentate" userName="tapia" createdAt="2025/10/24 15:10:23" color="#38d3d3">}}




{{<matomeQuote body="Typstでスライド作るときに物足りないのは、短い動画やアニメーションGIFを表示する機能だね。まあBeamerでも簡単じゃないけどさ。TypstはGIFを含めることはできるけど、僕の環境だと動かないんだ。HTMLで直接スライドを作れたら、この問題が解決するんじゃないかってちょっと期待してるんだ。" userName="Bromeo" createdAt="2025/10/24 16:45:21" color="">}}




{{<matomeQuote body="Touying Exporterを使ってみたらどうかな: https://github.com/touying-typ/touying-exporter" userName="spidersouris" createdAt="2025/10/24 18:48:05" color="#785bff">}}




{{<matomeQuote body="Fletcherの例が一つあるよ。これもいい感じだね: https://typst.app/universe/package/fletcher" userName="johnofthesea" createdAt="2025/10/24 18:36:23" color="#785bff">}}




{{<matomeQuote body="いくつか手短に言うと、1) Typstを使ってスライドを作ったけど、うまくいってるよ。特殊機能の追加はBeamerより簡単な傾向があるね。2) cetz (https://github.com/cetz-package/cetz) はかなりうまく機能してて、複雑さや能力はTikZと匹敵するよ。もちろんTikZの方がサポートは多いけど、cetzも時間とともに改善されるはず！" userName="fmoralesc" createdAt="2025/10/24 14:39:55" color="#ff5733">}}




{{<matomeQuote body="Typstで自分用のスライド作成ツールを作るのは簡単だったよ。LaTeXじゃ絶対やらなかったな。2か3には答えられないな。TikZは一度使ったことがあるよ。デファクトスタンダードなプログラム描画ツールがあればいいのにって思う（いつもはGraphvizかMatplotlibに頼っちゃうけど）。80%解決なものが多すぎるんだよね。" userName="__mharrison__" createdAt="2025/10/24 20:50:45" color="#785bff">}}




{{<matomeQuote body="スライドデッキについて既に出てる話に付け加えると、Typstのもう一つの素晴らしいスライド作成パッケージはtouyingだよ[1]。僕はこれでコースや学会発表用に自分の学術テーマを作ったことがあるんだ[2]。[1] https://touying-typ.github.io/<br>[2] https://typst.app/universe/package/touying-unistra-pristine/" userName="spidersouris" createdAt="2025/10/24 18:47:00" color="#45d325">}}




{{<matomeQuote body="仕事で数学的なコンテンツを作ってる者として、1. Touying、2. Cetzはおすすめ。個人的にはLLMはTikZがかなり苦手だと思うな。GUIツールは好きじゃないって言ってたけど、Inkscapeは素晴らしいよ。3. GitHub ＞＞＞ Overleaf" userName="vatsachakrvthy" createdAt="2025/10/25 01:35:35" color="#45d325">}}




{{<matomeQuote body="1と2は既にTypstのエコシステムにあるよ。本当に必要なのは、CERNメンバーとしてのTypstのプロアカウントだね。" userName="meatjuice" createdAt="2025/10/24 15:02:37" color="">}}




{{<matomeQuote body="1と2は既にTypstエコシステムにあるって？いや、まだだよ。他の人たちが答えてるように、似たようなものはあるけど、同じ機能の完全性はないんだ。僕はBeamerについて具体的に話したんであって、「スライド」全般について言ったわけじゃないからね。" userName="elashri" createdAt="2025/10/25 00:09:31" color="">}}




{{<matomeQuote body="10年以上ぶりにあの古い.docxファイルをたまに更新してたけど、最近Typstを使って履歴書を作り直したんだ。それが本当に楽しいプロジェクトだったよ！今では履歴書はプライベートなリポジトリで管理してて、個人情報や職歴、スタイリングデータはTOMLファイルに保存してるんだ。それから、興味深いTypstの履歴書テンプレートを引っ張ってきて、ジョブやプロジェクトの配列をループさせながらTOMLファイルから情報を流し込んで、文書テンプレートに当てはめてるんだ。完全にやりすぎだけど、楽しいプロジェクトだったしTypstで作業するのが本当に楽しかったよ。チュートリアルすら見なかったけど、そのまま言語に飛び込んで、いくつかの例があれば直感的だろうと思ってたら、まさにその通りだったんだ。" userName="MerrimanInd" createdAt="2025/10/24 20:53:10" color="#45d325">}}




{{<matomeQuote body="既存のパッケージを使ったの？それとも一から書いたの？僕もTypstで履歴書を書き直そうと考えてるんだけど、今の仕事に満足してるから、そんなに優先度の高いタスクじゃないんだよね。" userName="optionalsquid" createdAt="2025/10/24 21:13:33" color="#ff5c5c">}}




{{<matomeQuote body="履歴書にはTypst Universeリポジトリ (https://typst.app/universe/) の既存テンプレートを使ったよ。それから、二次的なドキュメント、つまりカバーレターとか僕がやったプロジェクトのケーススタディみたいなものは、もっとシンプルなものを一から作ったんだ。もし興味があれば、リポジトリから個人情報（PII）を抜いて公開してもいいよ。別にものすごくプライベートなものはないんだけど、これ以上迷惑電話が増えるのは嫌だからね。" userName="MerrimanInd" createdAt="2025/10/24 21:29:24" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
