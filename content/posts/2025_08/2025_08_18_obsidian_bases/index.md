+++
date = '2025-08-18T00:00:00'
months = '2025/08'
draft = false
title = 'Obsidianユーザー必見！待望の新機能「Bases」がやってきた！'
tags = ["Obsidian", "ノートアプリ", "知識管理", "新機能", "効率化"]
featureimage = 'thumbnails/light-orange3.jpg'
+++

> Obsidianユーザー必見！待望の新機能「Bases」がやってきた！

引用元：[https://news.ycombinator.com/item?id=44945532](https://news.ycombinator.com/item?id=44945532)




{{<matomeQuote body="この機能は今やっと一般公開されたんだって。以前は早期アクセスで有料だったみたいだね。Redditのスレッドにこの機能に関する良い議論があるから見てみてよ。<br>https://old.reddit.com/r/ObsidianMD/comments/1mtxh52/obsidia..." userName="raybb" createdAt="2025/08/18 22:36:09" color="#ff5c5c">}}




{{<matomeQuote body="ところで、ドキュメントには書いてないみたいだけど、Basesの”new”ボタンを使うときにテンプレートやデフォルトのFrontmatter（作成日みたいに）を設定する方法を知ってる人いる？Bases以前の解決策はちょっとハック的でさ。" userName="raybb" createdAt="2025/08/18 23:19:44" color="#45d325">}}




{{<matomeQuote body="FYI、HackerNewsではコードスニペットは` ``` `じゃなくて2スペースのインデントで表現するんだよ。" userName="codethief" createdAt="2025/08/19 00:16:52" color="">}}




{{<matomeQuote body="デフォルトのテンプレートは今後のバージョンで追加される予定だよ。" userName="kepano" createdAt="2025/08/19 00:33:32" color="#ff5733">}}




{{<matomeQuote body="Obsidian用の良いAIプラグインはまだある？" userName="safety1st" createdAt="2025/08/19 05:16:48" color="">}}




{{<matomeQuote body="プラグインじゃないけど、自分のmd-repositoryでGemini CLIの無料版を使うのはすごく良い経験だったよ。コードリポジトリと違ってコンテキスト切れはめったになく、ファイル名を挙げるだけで関連コンテキストを与えやすいんだ。" userName="mrtsepelev" createdAt="2025/08/19 08:36:54" color="#45d325">}}




{{<matomeQuote body="Logan YangさんのObsidian Copilot、すごく気に入ってるよ。<br>https://github.com/logancyang/obsidian-copilot" userName="pixelbro" createdAt="2025/08/19 08:02:10" color="#ff33a1">}}




{{<matomeQuote body="Copilot、Smart Connections、Text GeneratorはどれもObsidianで”良い”AIプラグインだよ。これらに関するYouTube動画もあるから見てみてね。<br>https://youtu.be/7Rvl9Sl29Jk<br>https://youtu.be/mZ8TJ59j28" userName="obsidianbases1" createdAt="2025/08/19 10:44:43" color="#38d3d3">}}




{{<matomeQuote body="AIプラグインはたくさんあるよ。何に使うかによるけど、「良い」プラグインがあれば教えてね。https://obsidian.md/plugins?search=openai" userName="raybb" createdAt="2025/08/19 05:51:21" color="">}}




{{<matomeQuote body="「良い」ってのはもっと具体的なんだよ。Gen1とGen2/3のAI機能、GPT-3.5とNotebookLMの違いは明らか。でもHNはAIの進化をわかってないみたいだね。" userName="halJordan" createdAt="2025/08/19 13:58:16" color="">}}




{{<matomeQuote body="Basesは、Vault内の各ファイルをテーブルの行、ファイルのプロパティを列として管理できる機能だよ。ファイルにレーティングや期限などのプロパティを追加して、整理、ソート、フィルタリングができるんだ。手動でもできることを高速化してくれる。プロパティはMarkdownファイルに、BaseファイルはYAML形式で保存されるよ。例: <br>views:<br>  - type: table<br>    name: Movies<br>    filters:<br>      and:<br>        - file.folder == ”All/Movies”<br>    order:<br>      - file.name<br>      - tags<br>      - Watch Date<br>    columnSize:<br>      file.name: 167" userName="Jgoauh" createdAt="2025/08/19 12:17:39" color="#ff33a1">}}




{{<matomeQuote body="まさに「dimensions」って感じだね。" userName="mercat" createdAt="2025/08/22 07:11:30" color="">}}




{{<matomeQuote body="今日使ってみて、正直ちょっとがっかりしたよ。「テーブルの強化版」くらいを期待してたんだけどな。前にBasesと似たようなプラグインを試したことがあったけど、コンセプトがイマイチだったんだよね。" userName="al_borland" createdAt="2025/08/20 19:44:51" color="">}}




{{<matomeQuote body="Basesの機能が分かりにくいって話だけど、Redditのコメントが参考になったよ。「Basesは自動更新される静的な検索みたいなもので、Basisファイルをクリックするだけで新しいノートがデフォルトのテーブル形式で表示されるんだ。さらに、更新日みたいなプロパティも追加できて、しばらく見てないファイルを確認するのに便利だよ。」" userName="abrookewood" createdAt="2025/08/18 23:37:46" color="#38d3d3">}}




{{<matomeQuote body="ドキュメントの最初の文に「どんなノートのセットでも強力なデータベースに変える」って書いてあるじゃん。まさにその通りで、Vaultがデータベースで、行がファイルなんだ。Dataviewプラグインの、もっと使いやすい置き換えだと思えばいいよ。" userName="slightwinder" createdAt="2025/08/19 00:04:45" color="#785bff">}}




{{<matomeQuote body="「どんなノートのセットでも強力なデータベースに変える」って、全然説明になってないよ！「変える」って何？ファイルがデータベースになるの？それとも解釈されるだけ？セットのノートって言うけど、1つのノートじゃダメなの？レコードはファイルなの？それともファイル内のアイテム？`![[Untitled.base]]`って打ったら何が起こるの？説明がひどすぎる。" userName="torium" createdAt="2025/08/19 00:22:54" color="#785bff">}}




{{<matomeQuote body="何が「強力」なのかデモンストレーションしてほしいよ。なんでこれを使う必要があるの？SQLiteを使えば色々なことができるのに、Obsidianの中に閉じ込められた「ムシューなデータベース」をなんで選ぶの？全然わからない。" userName="steve_adams_86" createdAt="2025/08/19 06:57:13" color="#ff33a1">}}




{{<matomeQuote body="何事も程度によるよ。例えば、Obsidianで会議議事録を書くと、Markdownの自由な形式と相互リンクが完璧だよね。Basesを使えば、誰が出席したかみたいな条件で、よりリッチな検索ができるようになるんだ。これは普通の人がデータベースに深く潜らなくてもできるし、ノートを取るアプリに元々あるのが便利。SQLiteがあるからって、これが無意味なわけじゃないと思うよ。" userName="atoav" createdAt="2025/08/19 09:01:36" color="#ff33a1">}}




{{<matomeQuote body="これってObsidianをメインの知識保存ツールにしてる人向けだよね。もしSQLiteとか使うなら話は別だけど、そうじゃないなら俺には正直あんまり使えないかな。" userName="theshackleford" createdAt="2025/08/19 08:09:04" color="">}}




{{<matomeQuote body="「ノートのセットをデータベースにするって何？」とか文句言う前に説明書読めよ！<br>Obsidian知らないの？ってくらい無知なコメントだね。Obsidianはノートのメタデータ（今はプロパティって言うけど）をyamlで管理できるマークダウンエディタだよ。<br>Basesはこれらをデータベースみたいに扱える機能。Vaultがデータベースで、各ノートが行なんだ。全部ドキュメントに書いてあるから！" userName="slightwinder" createdAt="2025/08/19 10:47:27" color="#ff33a1">}}




{{<matomeQuote body="俺、Obsidianは毎日使ってるけど、別に「パワーユーザー」じゃないんだよね。拡張機能もたぶんデフォルト以外は入れたことないと思う。うん、Obsidianのことはちゃんと知ってるよ。" userName="torium" createdAt="2025/08/23 11:22:11" color="">}}




{{<matomeQuote body="一般的なObsidianユーザーはデータベースが何で、なぜ重要なのか知らないかもね。俺はエンジニアだから正確な言葉は好きだけど、色んなユーザーがいるんだから、説明のレベルも変えるべきだよ。<br>分かりやすい説明ってのは、まず核となるスローガンがあって、次に言葉を解説し、それからそのデータベースで何ができるか、なぜ重要かを説明するべき。多くの説明は最後の「なぜ重要か」を省いてるんだよね。" userName="atoav" createdAt="2025/08/19 08:57:29" color="#ff5c5c">}}




{{<matomeQuote body="「平均的なObsidianユーザーはデータベースを知らないかも」って言うけど、一番知識の低い人に合わせてばかりはいられないでしょ。Obsidianには専門用語がいっぱいあるんだから、知らない言葉は自分で調べればいいじゃん。<br>それにデータベースなんて今どき常識だよ。Obsidian使う人って技術的な知識もそれなりにあるはずだし、Dataviewプラグインだって知ってる人がほとんどでしょ。" userName="slightwinder" createdAt="2025/08/19 10:35:40" color="">}}




{{<matomeQuote body="コミュニケーションは最適化できるし、人間はそうしてるよね。それは優先順位の問題さ。特定のターゲット層を気にするかは開発者次第だよ。<br>でも、こんな機能を作るなら、現実的なユースケースでテストするのは当然だし、それを使ってユーザーに使い方を示すべきじゃない？コードへの個人的な興味だけで、ユーザーのこと考えずに作られたなら別だけどさ。でもそれって、みんなが頼るプロジェクトじゃなくて、ただの趣味だろ。" userName="atoav" createdAt="2025/08/19 19:20:25" color="#ff5c5c">}}




{{<matomeQuote body="もう一つはこれだね。「Basesは、ノートのプロパティとタグを、フィルターやソートができるテーブルやカードビューで表示してくれるんだって。」" userName="abrookewood" createdAt="2025/08/18 23:40:57" color="">}}




{{<matomeQuote body="The Vergeの記事からの引用だね。Obsidianのノートにプロパティ（メタデータ）を保存できるんだけど、Basesはそのデータをテーブルとかカンバンビューとかで視覚化できるんだって。<br>既存のデータの上に視覚化レイヤーを作るイメージだね。例えば「books」タグのノート全部表示、とか言うとテーブルでメタデータを編集できちゃう。読んだ本とか映画、旅行先、記事なんかを管理したい人やプロジェクト管理したい人にはすごく便利だよ。https://www.theverge.com/decoder-podcast-with-nilay-patel/76..." userName="DavideNL" createdAt="2025/08/19 11:00:00" color="#785bff">}}




{{<matomeQuote body="うん、もっと分かりやすい説明が必要だよね。俺、Basesをいくつか追加したんだけど、「ファイル名」のリストしか表示されなくて、どうやって他のデータを入れるのかわかんなかったよ。MarkdownテーブルベースのMS Accessみたいなのを期待してたんだ。<br>ドキュメントに、ノートのコレクション作ってBasesでどう見るかの例があれば、もっとはっきりしたのにって思う。" userName="nedt" createdAt="2025/08/19 10:43:15" color="#ff33a1">}}




{{<matomeQuote body="「また検索し直す代わりに、Basesファイルをクリックすれば、新しいノートがデフォルトのテーブル形式でそこに表示される」ってやつね。<br>それって「ビュー」みたいだよね。" userName="stronglikedan" createdAt="2025/08/19 15:41:14" color="">}}




{{<matomeQuote body="Obsidianを個人CRMに使ってる人にはBasesが役立ちそう！Dataviewでやってた「いつ誰と話した？」「何話した？」「誰と話してない？」みたいなクエリをBasesで置き換えられるか試してみるわ。<br>https://blacksmithgu.github.io/obsidian-dataview/" userName="abalaji" createdAt="2025/08/19 00:08:34" color="#785bff">}}




{{<matomeQuote body="DataviewでもBasesのデータは作れるけど、Basesの方が断然使いやすいよ！GUIで簡単にクエリ組めるし、データはキレイなテーブルになってて直接編集できるんだ。しかも、GUIで変更してもクエリは編集可能なYAMLファイルで保存されるから便利！" userName="wscott" createdAt="2025/08/19 10:21:36" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="BasesってObsidianの良さとは逆行してる気がするな。Obsidianは優れた編集環境とMarkdownの拡張性が魅力なのに。こういう機能に手出すと、NotionとかAnytypeみたいに最初からそのために作られたアプリには勝てないと思うよ。" userName="hresvelgr" createdAt="2025/08/19 10:07:49" color="">}}




{{<matomeQuote body="BasesはMarkdownファイルのYAMLフロントマターの編集・可視化レイヤーって考えればいいよ。フロントマターはMarkdownの元々の仕様じゃないけど、Jekyllで始まって今じゃ標準的。BasesはMarkdownファイルをより高レベルで編集できる機能なんだ。例えば、ブログ記事の状態を一目で確認したり、メタデータを編集したりできるから、Markdown編集に集中できるってこと。<br>https://tom.preston-werner.com/2008/11/17/blogging-like-a-ha..." userName="kepano" createdAt="2025/08/19 13:03:41" color="#785bff">}}




{{<matomeQuote body="これって基本的にMarkdownの上に独自の言語を追加したようなもんだよね？将来、他のエディタにインポートするときに、どうやってデータベースとして解釈させるつもりなの？" userName="mudkipdev" createdAt="2025/08/20 00:01:27" color="">}}




{{<matomeQuote body="その理屈だと、Obsidian自体もMarkdownの上に言語を追加してるってことにならない？Graph viewやバックリンクもJavaScriptで実現されてるわけだし。Basesは非技術者でもビューを作りやすくするんだ。ビューはYAMLで記述されてるから、他のツールでも再現可能。DataviewからBasesへの変換ツールもあるし、出力はMarkdownテーブルやCSVにもできるよ。<br>https://github.com/Quorafind/Bases-Toolbox<br>結局、BasesはMarkdownファイルの作成・編集を助ける可視化レイヤーなんだ。不要ならコアプラグインで無効にできるよ！" userName="kepano" createdAt="2025/08/20 13:22:01" color="#ff5c5c">}}




{{<matomeQuote body="いや、全然「カスタム」なものなんてないよ。ファイルは全部標準的なMarkdownとYAMLフロントマターのままだし。Basesは、それらのファイルを効率的に見渡せる、ただの優れたインターフェースなんだ。スクリプトでも簡単に再現できるレベルだよ。ビューの設定ファイルだってプレーンテキストだし、ロックインもなくて仕様はオープンでしっかり文書化されてるから安心して！" userName="LordDragonfang" createdAt="2025/08/20 03:32:10" color="#ff5733">}}




{{<matomeQuote body="MarkdownエディタだからMarkdownの標準は変えられない。だからできることには限界があるけど、その周りに機能を作るしかないんだよ。データベース機能があったって、コア機能とぶつかるわけじゃないしね。使いたくなければ、使わなきゃいいだけさ。" userName="isege" createdAt="2025/08/19 10:58:09" color="#785bff">}}




{{<matomeQuote body="「Markdown標準」って、実は20年以上前のブログ記事が元になってて、全然更新されてないんだよ。テーブルとかTo-Doリスト、複数行のコードブロックみたいな「高度」な機能は、オリジナルの「標準」には含まれてない。CommonMarkみたいな実装が後から追加したもので、それが今じゃMarkdownだって思われてるんだ。Obsidianに限らず、みんなそれぞれ少しずつ違う「Markdown」を使って「Markdown」って呼んでるんだよね。" userName="input_sh" createdAt="2025/08/19 11:58:06" color="#ff5c5c">}}




{{<matomeQuote body="Markdown標準を変更できないわけじゃないけど、YAMLは構造化データに圧倒的に向いてるし、Markdownはあくまで文書向けだよ。違う言語にはそれぞれの良さがある。でもObsidianは昔から知識管理ツールであって、ただのMarkdownエディタじゃないんだ。こういった高度な機能は、ずっとObsidianのコアミッションの一部だったんだよ。" userName="slightwinder" createdAt="2025/08/19 16:15:56" color="#ff5733">}}




{{<matomeQuote body="Bases機能はObsidianでのMarkdown作業を劇的に良くするし、Notionからの脱却にも繋がる！ロックインもなくて安心だし、将来的にNotion Databasesを完全に置き換えてくれることを期待してるよ。" userName="bryanhogan" createdAt="2025/08/19 11:31:23" color="#ff5c5c">}}




{{<matomeQuote body="各Basesの設定はプレーンテキストだから、理論的には他のソフトでもクエリを読み込んで実行できるはず。" userName="jamiemchale" createdAt="2025/08/19 11:58:48" color="#ff5733">}}




{{<matomeQuote body="“base”って名前は誤解を招くな。構造化データじゃなくて、既存のMarkdownファイルをクエリするためのエンジンだよ。コードブロックでクエリ（フィルター）を定義して、結果はファイル名のセットになる。リレーショナルデータベースというよりは、大量のMarkdownファイルを扱うためのものだね。" userName="pbronez" createdAt="2025/08/19 13:16:40" color="#785bff">}}




{{<matomeQuote body="YAMLでフロントマターを書くだけだし、これは人間が読みやすいし、特定のMarkdown形式では普通のことだよ。ノートはちゃんとMarkdownのままだから心配いらない。" userName="vendiddy" createdAt="2025/08/19 17:14:42" color="">}}




{{<matomeQuote body="これはプラグインだし、必須じゃないオプションの機能だよ。まるでMcDonald’sがコーヒーやマフィンを売り始めたからって客を失うわけじゃないのと同じさ。" userName="JimmaDaRustla" createdAt="2025/08/19 13:04:00" color="#785bff">}}




{{<matomeQuote body="これはダウンロード可能なプラグインであるべきで、標準の機能にするべきじゃないと思う。開発を少し遅らせて、既存の機能を磨くべきだよ。新しい機能ばかり追加してると、製品がどんどん肥大化しちゃう。数年後には、もっと軽量な代替品が出てくるだろうね。もうObsidianの自動更新はオフにしたよ。" userName="criddell" createdAt="2025/08/19 12:06:49" color="">}}




{{<matomeQuote body="コアプラグインから無効にできるよ。ObsidianはロックインなしでPKMコミュニティのために本当に多くのことをしてくれたんだ。こんなに不満が出るのは悲しいね。" userName="theappsecguy" createdAt="2025/08/19 12:51:04" color="">}}




{{<matomeQuote body="僕も残念に思うよ。彼らはたくさん貢献してくれたし、毎年利用料を払うのは全然苦じゃないんだけど、どうも自分の求める方向とは違う方へ進んでるみたいだね。" userName="criddell" createdAt="2025/08/19 13:22:07" color="">}}




{{<matomeQuote body="具体的に何が心配なの？Obsidianのどの部分を磨くべきだと思う？（敵意はなくて、この機能に興奮してる別のObsidianユーザーとして聞きたいんだ。今のメタ検索機能は本当にひどいから、僕にとってはすごく必要な改善点なんだよね）" userName="whatevertrevor" createdAt="2025/08/19 19:38:57" color="#38d3d3">}}




{{<matomeQuote body="コアのノートテイキングはかなり完成度が高いと思うよ。代わりに何をすべきだと思う？検索機能やキーボード中心の操作、ネイティブのPDF注釈は改善できるかもしれないけど、既存の機能を磨く以外に、アプリのコア機能で本当に足りないものって何かあるかな？" userName="theappsecguy" createdAt="2025/08/19 23:13:42" color="#ff33a1">}}




{{<matomeQuote body="Obsidianはもう十分完成してる気がするな。Notionみたいになる必要はないと思うよ。きっと新しい製品やサービスのアイデアもたくさんあるだろうから、そっちを開発するべきじゃないかな。" userName="criddell" createdAt="2025/08/20 12:05:28" color="">}}




{{<matomeQuote body="ObsidianユーザーでSyncも使ってるけど、正直使いこなすのが難しいと感じるよ。プラグインとか、どう使えばいいのか全然わからないんだよね。今はデイリーノートに使うだけだけど、もっとできることがあるはずなのにって思うとモヤモヤするな。" userName="raviisoccupied" createdAt="2025/08/18 22:28:18" color="">}}




{{<matomeQuote body="Obsidianを大げさに語りすぎだろ。あれはただのMarkdownエディタだよ。コア機能だけで十分なのに、みんなアドオン入れすぎて混乱してるんだ。インフルエンサーに人生変わるなんて言われても、そんなことないからね。最初から全部入れないで、本当に必要なものだけ後で探せばいいんだよ。" userName="muppetman" createdAt="2025/08/19 01:29:13" color="#ff5733">}}




{{<matomeQuote body="Obsidianはきれいな色と目を引くグラフがすごいけど、あのグラフは過大評価されてて全然使われてないよね。複雑そうに見えるのが、この生産性システムのエコシステムの売りなんだよ。見せかけの奥深さとか作業量って感じ。多くの人がこのHacker Newsのリンクにたどり着いたよ。https://news.ycombinator.com/item?id=44864134" userName="cloud_watching" createdAt="2025/08/19 01:45:10" color="#45d325">}}




{{<matomeQuote body="データをまとめるのが難しいのが本当にキツいよ。「おすすめの映画や番組を記録しよう」と思って始めたんだけど、推薦リストとか妻と共有するリストをパッと見るダッシュボードを作るのが、信じられないくらい難しいんだ。Dataviewプラグインのクエリも直感的じゃないし、なんでこんな基本的なことが難しいのか理解できない。ダッシュボードが最終目標なのにね。新しい機能「Bases」が、この問題に役立ってくれることを期待してるよ。" userName="Eji1700" createdAt="2025/08/18 22:37:18" color="#ff5733">}}




{{<matomeQuote body="ObsidianはAndroidでも使えて、他のマシンとほぼ問題なく同期できるのがいいよね。プラグインは全然使ってないけど、テキストの同期機能だけで十分に活用できてるよ。" userName="JonChesterfield" createdAt="2025/08/19 02:07:57" color="">}}




{{<matomeQuote body="ObsidianはシンプルなMarkdownエディタだけど、アドオンが素晴らしいんだ。エンドツーエンド暗号化、セルフホストのLivesync、モバイルサポート、高速検索が決め手だね。Androidでのファイルのセキュリティや、Electronアプリだから起動が遅いのは改善してほしいけど、全体的には僕にとって最高の組み合わせだよ。Livesync、ReadItLater、Copilotのプラグインは本当に欠かせないね。" userName="wkat4242" createdAt="2025/08/19 08:11:35" color="#ff33a1">}}




{{<matomeQuote body="Android版でアプリのプライベートストレージにファイルを隠せるようになったよ。いつからかはわからないけど、新しいVaultを作る時に”Device storage”か”App storage”を選べるんだ。既存のVaultも変更できる。あとは生体認証ロックがあれば完璧なんだけどね。コミュニティプラグインはあるけど、不安定でメンテナンスされてないんだ。" userName="rhodeon" createdAt="2025/08/19 09:59:59" color="">}}




{{<matomeQuote body="余談だけど、最近Tangent Notesを見つけたよ。Obsidianに似てるんだけど、Markdownファイルでのコードシンタックスハイライトがとても優れてるんだ。コードを読むのにすごく便利だったよ。http://tangentnotes.com/" userName="profsummergig" createdAt="2025/08/19 05:20:44" color="">}}




{{<matomeQuote body="代替アプリとしてはSiyuanを強くおすすめするよ。Obsidianの優れたプラグイン機能の多くが、最初から組み込まれているんだ。" userName="nylonstrung" createdAt="2025/08/18 22:55:34" color="">}}




{{<matomeQuote body="オレだけじゃないよ。Obsidianに数ヶ月かけたけど、OneNoteに戻ったんだ。セカンドブレインって言われるけど、結局はファイルシステムとMarkdownビューアのきれいなUIだよ。ノートやフォルダの手動ソートすらできないんだからね。Directory Opusならできるのにさ。しかも、コミュニティプラグインはセキュリティリスクだし、Obsidianのアップデートでよく壊れる。苦労して作った知識ベースがプラグインのせいでぶっ壊れるのはマジ勘弁だ。" userName="BenFranklin100" createdAt="2025/08/19 03:10:15" color="#ff33a1">}}




{{<matomeQuote body="Syncthingにノートフォルダがあるだけで同じことできるっぽいんだけど。Obsidian Syncには他に何かいいことあるの？教えてよ。" userName="safety1st" createdAt="2025/08/19 05:19:57" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="あの記事マジ嫌いだわ。Taskwarriorはテキストファイルより断然いいだろ。テキストファイルなんてタスク管理には最悪の選択肢だよ。" userName="UltraSane" createdAt="2025/08/19 04:35:36" color="">}}




{{<matomeQuote body="「…構文ハイライト付きのコードブロックをサポート」って書いてあるけどさ、ドキュメントとスクショ見る限り、Obsidianと何が違うのかマジで分かんないんだけど。ObsidianのMarkdownコードブロックだって普通にハイライトされるじゃん。実際、両方Prism使ってるみたいだしね。ほら、ここ見てみてよ。<br>https://help.obsidian.md/syntax#Code+blocks<br>https://github.com/suchnsuch/Tangent/blob/main/apps/tangent-..." userName="wiether" createdAt="2025/08/19 06:25:52" color="#785bff">}}




{{<matomeQuote body="もし毎日ちょっとしたメモしか必要ないなら、Obsidianは全然使うべきじゃないよ。ちゃんとした目的には最高にパワフルなツールだけど、プラグインなしでも、ただのメモ取りにはオーバースペック。これは君のコメントから推測してるだけだけど、もっとシンプルなメモアプリを試してみたら？OS用のプレーンテキストメモアプリとかさ。前にnv-gt-simplenoteの代わりを探してた時、JoplinもObsidianも数分で候補から外れたもんね。" userName="crossroadsguy" createdAt="2025/08/19 04:18:03" color="#ff5733">}}




{{<matomeQuote body="ハイパーリンクがあればそれで十分だって！これ見てみてよ。<br>https://ezhik.jp/hypertext-maximalism/" userName="Ezhik" createdAt="2025/08/19 00:03:02" color="">}}




{{<matomeQuote body="俺は今、タスク管理にEmacs Howmを使ってるんだ。テキストファイルベースで、これマジ最高だよ。Org-modeもかなり良いね。" userName="pqs" createdAt="2025/08/19 05:44:40" color="">}}




{{<matomeQuote body="壊れるのはまだマシな方だよ。大量のデータ持ち出しがもっと心配。コミュニティプラグインシステムはセキュリティリスクとして許容できないし、しかも基本的な使いやすさのためには必要不可欠ってのがね。どれだけの情報が盗まれてるか想像してみてよ…標的は気づきもしないかも。Obsidianがこんな“汚染された場所”を監査してるって嘘ついてるの、マジ笑えるわ。" userName="kid64" createdAt="2025/08/19 05:31:42" color="#785bff">}}




{{<matomeQuote body="「おいバカ」ってわけじゃないけど、もしかして君、物事を複雑にしすぎてない？追跡したいデータが多すぎて、ちょっと気が散ってるように感じるよ。これ全部、箇条書きの1ページにして、誰が共有したとか他のメモとかはサブ箇条書きにすればいいんじゃない？「妻」って検索したければCtrl+Fで探せば済む話だよ。" userName="Waterluvian" createdAt="2025/08/18 23:18:38" color="#45d325">}}




{{<matomeQuote body="君のせいじゃないよ、生産性インフルエンサーのせいさ。彼らがObsidianを『本来の姿』以上に思わせてるんだ。ObsidianはMarkdownファイルのコレクションを編集するためのきれいなUIに過ぎないってね。VaultをCursor/VSCodeで開いて、コーディングエージェントで編集した時に気づいたよ（普通の文章書きにこの機能がないのはObsidianにとってマジ変だけどね）。ObsidianのYouTubeビデオはマインドマップとか、ファイルの整理方法とか、相対リンクとか、ユニバーサルなMarkdownファイルの前提を壊す変なプラグインの話ばっか。LLMがVault全体を検索して何十ものノートから答えをまとめてくれる今、全部無駄な時間だよ。" userName="dimitri-vs" createdAt="2025/08/19 00:00:25" color="#45d325">}}




{{<matomeQuote body="iOSではアプリアイコン長押しで生体認証ロックを設定できるぞ。Androidの一部OSにもあるみたいだけど、全部じゃないんだ。でもAndroidの「スペース」機能でもできると思うよ。" userName="kepano" createdAt="2025/08/19 17:51:30" color="#ff5c5c">}}




{{<matomeQuote body="ObsidianとTangentを使ったけど、Tangentのコードハイライトの方が明るくてカラフルで、だからかな？もっと読みやすいと感じたよ。Obsidianはもっと落ち着いた感じだね。Steve JobsはObsidianを好んだだろうな。" userName="profsummergig" createdAt="2025/08/19 07:57:42" color="">}}




{{<matomeQuote body="ここまで来ると「じゃあなんでObsidian使うの？」ってなるよね。俺にとってのObsidianの醍醐味は、リンクとかきれいなノート整理なんだ。結構シンプルに使ってるよ（基本的なタグだけ）。でも、多くの人がObsidianを本来の目的じゃないものにしようとしてる気がするな。" userName="Eji1700" createdAt="2025/08/19 22:10:56" color="">}}




{{<matomeQuote body="俺も使い始めは似たような感じだったよ。たくさんの動画を見て、プラグインも山ほど入れてたけど、「これで合ってるのかな？」っていつも迷ってた。でもある日イライラして、全部アンインストールして基本に戻ったんだ。足りないと感じた時にだけプラグインを入れるようにしてるけど、正直使ってるのはテーマをカスタマイズできるStyle Settingsと、あとはCalendarくらいかな。Obsidianの本当の力は、好きなだけ拡張できる自由さだと思うよ！" userName="hifikuno" createdAt="2025/08/19 02:45:04" color="#ff5c5c">}}




{{<matomeQuote body="Markdownでコードブロックを作って、先頭に言語タイプを書けばハイライトもできるよ。例えば、‘’’go<br>{君のコード}<br>‘’’みたいにね。" userName="tietjens" createdAt="2025/08/19 06:06:12" color="#ff5c5c">}}




{{<matomeQuote body="それってObsidianならプラグインで変更できるんじゃない？" userName="aldonius" createdAt="2025/08/19 11:02:18" color="">}}




{{<matomeQuote body="Obsidian Syncもすごく気に入ってるんだ。よくできてて、テキストファイルの移動がすごく楽だよ。" userName="muppetman" createdAt="2025/08/19 02:51:54" color="#785bff">}}




{{<matomeQuote body="俺はObsidianを個人Wikiとして使ってるから、プラグインは必要ないんだ。LaTeX入りのテキストファイルを扱う方法として使ってたんだけど、ぴったりだよ。" userName="clickety_clack" createdAt="2025/08/18 23:46:03" color="">}}




{{<matomeQuote body="それは笑える主張だね。彼らには重要な機能すら実装するリソースがないんだから、あらゆる適当なプラグインの貢献を監査するなんて、開発者の時間を無駄にするだけだよ。" userName="BenFranklin100" createdAt="2025/08/20 03:30:46" color="">}}




{{<matomeQuote body="「BasesはファイルシステムへのオーバーレイとMarkdownビューアを美化しただけだって？<br>俺にとってはそれが良い機能なんだよな。」" userName="jve" createdAt="2025/08/19 07:53:02" color="">}}




{{<matomeQuote body="「Samsungデバイスにはアプリロックはないけど、Basesの“spaces”と似た“secure folder”があるよ。<br>でもこれ、アプリが他のとシームレスに連携しないから、セキュリティは高いけど俺には過剰なんだよな。」" userName="rhodeon" createdAt="2025/08/19 21:06:59" color="">}}




{{<matomeQuote body="「ObsidianでYAMLみたいに仮想ファイル区切りって使えないのかな？<br>Basesを使うには小さいファイルに分けなきゃいけないけど、俺は一つの大きなドキュメントをセクション分けして使いたいんだ。<br>例えば`book-recommendations.md`ってファイルに色んな本のおすすめをまとめてるんだけど、Basesじゃこれ検索できないから、結局バラバラのファイルにしないとダメじゃん。」" userName="gangstead" createdAt="2025/08/19 15:11:28" color="#ff5733">}}




{{<matomeQuote body="「これがBasesへの俺の最大の不満だよ。データをめちゃくちゃたくさんの小さいファイルに分けさせられるんだ。<br>本や映画、タスク一つ一つに丸ごとファイルなんていらないし、せいぜいプロパティが4、5個でコンテンツも少ないんだから。<br>こんなに多くのファイルを管理しなきゃいけないと、ファイルシステムとか同期の操作にめちゃくちゃ負担がかかるはずだ。」" userName="TechPlasma" createdAt="2025/08/19 15:28:27" color="#38d3d3">}}




{{<matomeQuote body="「ファイルってどれくらいあるの？<br>どれくらいの規模で問題になると思った？<br>俺はObsidianファンだけど、SyncthingやGitみたいな基本的なファイル同期だと、数万ファイルくらいなら全然問題なくいける経験があるけどな。」" userName="er4hn" createdAt="2025/08/19 15:56:33" color="#ff5c5c">}}




{{<matomeQuote body="「Obsidian Sync（公式プラグイン）って同期が全然賢くないんだよね。ファイルごとにリクエスト出すみたいで。<br>最近、数千ファイルのVaultをゼロから同期したら、ほとんどが数KBなのに数分かかったよ。<br>これ、修正は簡単だろうけど、たくさんのファイルがある俺たちにとっては問題なんだ。」" userName="diggan" createdAt="2025/08/19 16:07:03" color="#38d3d3">}}




{{<matomeQuote body="「正直、そんなたくさんのファイルを管理したくないんだ。<br>PCがどうこう言う前に、俺のメンタルが限界になるって認めざるを得ないよ。」" userName="TechPlasma" createdAt="2025/08/19 16:36:10" color="">}}




{{<matomeQuote body="「俺もそう思うよ。でも問題はそれだけじゃないんだ。<br>たくさんの小さいファイルを管理するってことは、細かいデータを見失いやすくなるってこと。<br>ファイルが変更されたり上書きされたりして、気づかなかったらどうなるんだ？<br>4、5行程度の数百（いや、数千？）もの小さいファイルをバージョン管理するより、一つの大きなファイルをバージョン管理する方がずっと簡単だろ。」" userName="deafpolygon" createdAt="2025/08/20 08:55:26" color="#785bff">}}




{{<matomeQuote body="「人気のObsidian Dataviewプラグインを使えば、Basesの代わりに同じような機能やもっと色んなことができるよ。<br>https://github.com/blacksmithgu/obsidian-dataview」" userName="bluechar" createdAt="2025/08/20 18:08:49" color="#785bff">}}




{{<matomeQuote body="「org-modeとEmacsのパッケージ`org-supertags`もいいよ。<br>`org-supertags-view-table`って機能が似たようなことできるし。<br>これは大きなドキュメント向けに作られてて、たくさんのノードをタグやプロパティでフィルタリングできるんだ。」" userName="oliverchan2024" createdAt="2025/08/19 20:21:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
