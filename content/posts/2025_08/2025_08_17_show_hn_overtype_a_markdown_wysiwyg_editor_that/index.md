+++
date = '2025-08-17T00:00:00'
months = '2025/08'
draft = false
title = 'OverType：実はただのtextarea！しかしMarkdownのWYSIWYGエディタとして動く！'
tags = ["Markdown", "WYSIWYG", "エディタ", "HTML", "Web開発"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> OverType：実はただのtextarea！しかしMarkdownのWYSIWYGエディタとして動く！

引用元：[https://news.ycombinator.com/item?id=44932651](https://news.ycombinator.com/item?id=44932651)




{{<matomeQuote body="やっほーHN！最近のWYSIWYGエディタにイライラして、自分で作り始めたんだ。複雑なライブラリを使わず、低コストでスタイル付きテキストを打ちたかったの。プレーンな`textarea`のMarkdownは良かったけど、フォーマットがないとダサいのが欠点。ContentEditableの沼にもハマったけど、結局はもっと良い解決策があるって気づいた。Ghostの分割エディタが良いと思ったんだけど、ある日、`textarea`の裏にプレビューペインを重ねたらどうかなって思いついたんだ！完全に位置合わせできれば、見た目もリッチテキストみたいになるんじゃないかなって。<br>もちろん、単一フォントとか制約はあるけど、許容範囲だった。Version 1は位置合わせが大変で、リスト、フォント、埋め込みが特に難しかったね。HTMLエンティティや厳密な正規化で解決したよ。<br>1週間前にVersion 2を始めて、GitHubの`markdown-toolbar`を見つけたんだ。それがOverType（https://overtype.dev）になったってわけ！実はただの`textarea`なのに、リッチなMarkdownエディタなんだ。位置合わせの課題をクリアすれば、Undo/Redo、モバイルキーボード、アクセシビリティ、ネイティブパフォーマンスが手に入るってのがキモだね。今んとこブラウザやモバイルで驚くほど動くし、たった45KBで高パフォーマンスのリッチテキスト編集ができる！ちょっとアホなアイデアだけど、うまくいったよ！全部のプロジェクトで使って、シンプルでミニマルに保ちたいな。ぜひ試してみて感想を聞かせてほしい！ハッピーエディティング！<br>デモ＆ドキュメント：https://overtype.dev<br>GitHub：https://github.com/panphora/overtype" userName="panphora" createdAt="2025/08/17 16:13:06" color="#ff33a1">}}




{{<matomeQuote body="いいね！ドロップインで全部動くならすごく便利そう！<br>ちょっと細かいことだけど、Markdownを”レンダリング”してるというより”シンタックスハイライト”してる感じかな。CSS Custom Highlight API（https://developer.mozilla.org/en-US/docs/Web/API/CSS_Custom_...）を使えば、プレビューdivもいらなくなるし、モノスペースじゃないフォントや、ヘッダーで違うフォントサイズも可能になるかもね。" userName="pedrovhb" createdAt="2025/08/17 22:38:47" color="#45d325">}}




{{<matomeQuote body="`textarea`の内容にハイライトって使えるの？" userName="pspeter3" createdAt="2025/08/18 02:52:01" color="">}}




{{<matomeQuote body="AFAIKだと、`textarea`は独自の選択をトラッキングしてるから、主に使えないんだと思うよ。" userName="lifthrasiir" createdAt="2025/08/18 07:02:56" color="">}}




{{<matomeQuote body="これに関する提案があるよ：https://github.com/MicrosoftEdge/MSEdgeExplainers/blob/main/..." userName="scottfr" createdAt="2025/08/18 10:41:18" color="">}}




{{<matomeQuote body="アニメーションのデモを見ると、プレーンテキストとは明らかに違うフォーマット（太字は太字、ハイフンが箇条書きになってる）が表示されてるね。" userName="jagged-chisel" createdAt="2025/08/18 00:06:02" color="#45d325">}}




{{<matomeQuote body="そうだね、多くのシンタックスハイライターも（少なくとも太字、斜体、タイトルは）そうしてるし。" userName="franga2000" createdAt="2025/08/18 07:06:24" color="">}}




{{<matomeQuote body="これをWYSIWYGと呼ぶのは誤解だよ。これは単なるシンタックスハイライトで、たまたまハイライトスタイルが最終レンダリングとある程度一致してるだけ。このアイデアも別に新しいわけじゃないしね：https://mediawiki.org/wiki/User:Remember_the_dot/Syntax_high...<br>気づいた問題点が2つあるんだ：<br>- 俺のスマホだと、ウィジェットをスクロールするとフレームレートが目に見えて落ちるよ。<br>- `textarea`内のキャレット位置がハイライトされたdivの文字位置と同期がずれてるみたい。<br>あと、このコンセプトだとハイライトされた出力に適用できるスタイル選択が厳しく制限されるけど、それはまあ前提なんだろうね。" userName="pwdisswordfishz" createdAt="2025/08/18 14:12:52" color="#ff5733">}}




{{<matomeQuote body="いいね！過去に集めた、このアプローチを説明するいくつかのリンクだよ：<br>- https://css-tricks.com/creating-an-editable-textarea-that-su...<br>- https://github.com/WebCoder49/code-input<br>確かhttps://grugnotes.comもMarkdownでこれをやってるはず。" userName="dchest" createdAt="2025/08/17 22:01:15" color="#ff5c5c">}}




{{<matomeQuote body="これ、かなりイケてるね！透明なシンタックスハイライターって呼んだ方がいいかも。<br>https://grack.com/demos/adventure/で似たことやったよ。`contentEditable`より`textarea`がシンプルで使いやすいってのは同意だね。Markdownレンダリングと`textarea`を隠す中間地点、すごく興味ある！" userName="mmastrac" createdAt="2025/08/17 22:01:18" color="#785bff">}}




{{<matomeQuote body="知ってた？これ、GitHubの検索バーがシンタックスハイライトに使ってるトリックと一緒なんだぜ。<br>俺もShortwaveで同じ「透明な入力の上にビューを重ねる」技でシンタックスハイライトを実装したことあるよ。<br>このブログ記事と組み合わせると、最高の検索UXになるぞ！https://blog.superhuman.com/delightful-search-more-than-meet..." userName="rockwotj" createdAt="2025/08/18 03:12:08" color="#785bff">}}




{{<matomeQuote body="912バイトだってさ…ヤバくない？<br>https://sylvainpolletvillard.github.io/spell/demo.html" userName="phonon" createdAt="2025/08/18 00:28:28" color="">}}




{{<matomeQuote body="なんだこれ、すげー！信じられないよ！<br>これもWYSIWYGだけど、Markdownは直接じゃないのにOverTypeより機能多いなんて。912バイトでここまでできるなんて、マジでぶっ飛んだわ。<br>これなら14KB以下の超速ブログが作れて、コメント機能もつけられそう！ヤバすぎてもう言葉にならないね！" userName="Imustaskforhelp" createdAt="2025/08/18 06:30:22" color="#ff5c5c">}}




{{<matomeQuote body="これって`queryCommandState()`を使ってるけど、それって非推奨のブラウザ機能なんだよ。<br>https://developer.mozilla.org/en-US/docs/Web/API/Document/qu...<br>多くのシンプルなWYSIWYGエディタでよくあることだけどね。<br>OverTypeはこれを使わず、全機能をJavaScriptで実装してるんだ。" userName="WA" createdAt="2025/08/18 06:57:48" color="#ff5733">}}




{{<matomeQuote body="`overtype.dev`のサイトを見てたら、もっとヤバい「うさぎの穴」見つけちゃったよ！<br>https://hyperclay.com/<br>シングルHTMLアプリだってさ。楽しんでくれ！" userName="vmurthy" createdAt="2025/08/18 02:24:19" color="">}}




{{<matomeQuote body="これって、WWWの初期構想にかなり近いよね！<br>最初のWebブラウザもエディタだったんだ。Tim Berners-LeeのNeXTアプリは、OSのTextViewクラスのラッパーだったんだよ。<br>編集機能が失われたのは、HTTP PUTがなかったのと、Mosaicがマルチプラットフォームで編集を実装するのが複雑すぎたからなんだってさ。" userName="pavlov" createdAt="2025/08/18 05:05:05" color="#ff5c5c">}}




{{<matomeQuote body="こんなこと、めったに言わないんだけどさ、マジで感動したわ。<br>なんでこれがもっとバズらないんだ？今の「vibe coding」時代には、アプリ開発のずっと良くて効果的な方法なのにね。" userName="dcreater" createdAt="2025/08/18 03:56:59" color="">}}




{{<matomeQuote body="これってさ、2000年代半ばのWeb開発にあった、ああいうイケてる実験を思い出すね。<br>標準とかユーザーの期待を押し上げる、まさにこういうプロジェクトだよ。" userName="runako" createdAt="2025/08/18 03:29:46" color="">}}




{{<matomeQuote body="めちゃくちゃクールだね！このシンプルさが最高だよ！<br>普通の`textarea`と比べてデメリットなしで、メリットだらけじゃん。`textarea`をめちゃくちゃ改善したってことだね！<br>俺も前に`contextarea.com`っていう似たようなの作ったことあるから、OverTypeを追加しようかな！" userName="janwilmake" createdAt="2025/08/17 16:53:23" color="#ff5c5c">}}




{{<matomeQuote body="モノスペースフォントを使うのは結構なデメリットだね。テック系のプログラマー向けじゃない製品には、これは使えないってことだ。プロジェクト自体はすごくクールなんだけど、明確な欠点があるってことだよ。" userName="ikurei" createdAt="2025/08/17 21:33:34" color="#45d325">}}




{{<matomeQuote body="もしWYSIWYGエディタだったら、画像にはプレビューがあるはずじゃん？でもこれって、ただのtextareaのシンタックスハイライトみたい。プロジェクト自体は良いけど、誇大広告だね。" userName="garbageoverflow" createdAt="2025/08/17 20:51:51" color="#ff33a1">}}




{{<matomeQuote body="本当に用語の誤用だよ。実際のWYSIWYGエディタは、フォーマットのマーカーなんて一切見せないはずだしね。定義上、MarkdownエディタはWYSIWYGにはなれないんだ。裏でMarkdownを使ってるWYSIWYGエディタならあるけど、これはそれじゃない。" userName="ricardobeat" createdAt="2025/08/18 09:31:11" color="#ff5733">}}




{{<matomeQuote body="画像オプションが見当たらなかったんだけど、俺が見落としてるのかな？" userName="calmworm" createdAt="2025/08/17 23:17:44" color="">}}




{{<matomeQuote body="それがポイントだったんだろうね。前のコメント投稿者は、WYSIWYGは定義上、画像を含むべきだと考えてるみたいだよ。" userName="macintux" createdAt="2025/08/17 23:32:55" color="">}}




{{<matomeQuote body="テキストを打って、マークして、「B」を押したら太字になるじゃん。これは画像以外はWYSIWYGだよ。" userName="WA" createdAt="2025/08/18 06:55:03" color="">}}




{{<matomeQuote body="WYSIWYGはツールバーのアイコンじゃなくて、テキストそのもののことだよ。これはWYSIWYGじゃないね、太字にすると周りにアスタリスクがたくさん見えるからさ。Markdownを知らない人は、見出しボタンを押したらテキストがハッシュタグになるのを不思議に思うだろうね。" userName="clippyplz" createdAt="2025/08/18 11:53:19" color="#785bff">}}




{{<matomeQuote body="両方見えるよ。太字になってるし、太字のテキストの周りにアスタリスクもあるんだ。" userName="WA" createdAt="2025/08/18 15:04:32" color="">}}




{{<matomeQuote body="アンダースコアの代わりに`_ text _`みたいにフォーマットされたテキストが見えるじゃん。これはWYSIWYG編集スタイルの定義に違反してるよ。" userName="eviks" createdAt="2025/08/18 12:27:38" color="#45d325">}}




{{<matomeQuote body="これ、実はすごく賢い作りだね。500KBのフルスペックなWYSIWYGエディタみたいに肥大化させずに、このままシンプルさを保ってくれると嬉しいな。" userName="reactordev" createdAt="2025/08/17 22:37:21" color="#45d325">}}




{{<matomeQuote body="記事の方法だと親ページからのCSS継承でレイアウトが崩れがちで、それが悪夢だったんだってさ。Web ComponentとShadow DOMを使えば、この問題は解決するんじゃない？textareaをコンポーネントでラップして、徐々に機能を強化していくのが理想的だね。" userName="splitbrain" createdAt="2025/08/18 09:04:49" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いいね！Milkdownをいじってたんだけど、あれも結構クールだよ。Notionみたいなブロックエディタで、Markdownとプレビューの分割ペインも要らないんだ。一度見てみてよ: https://milkdown.dev/playground" userName="Jonovono" createdAt="2025/08/17 20:30:01" color="#ff33a1">}}




{{<matomeQuote body="Highlight API (https://developer.mozilla.org/en-US/docs/Web/API/Highlight) はtextareaの中でも動くはずだよ。少なくとも僕のSciterでは動くみたい。ブラウザベンダーにtextareaでもHighlight APIを有効にするようお願いすれば、こんな小細工はいらなくなるのにね！" userName="c-smile" createdAt="2025/08/18 14:31:09" color="#45d325">}}




{{<matomeQuote body="僕も似たものを作ったんだ！https://github.com/andrewbaxter/malarkdowney 記事のと主な違いは、僕のはh*スタイル変更を適用してて、ただのシンタックスハイライトじゃなく、ページから視覚的に分離されてない、より本格的な出力プレビューなんだ。テキストオーバーレイ方式だと幅や高さに影響するスタイル変更は難しいだろうね。ただ、contenteditableのカーソル移動がなぜか壊れてるのが難点かな。" userName="rendaw" createdAt="2025/08/18 02:13:29" color="#ff33a1">}}




{{<matomeQuote body="すごくクールだね！こんなにシンプルなのに、気に入ったよ。要望としては、リスト（ToDo、箇条書き、番号付き）のサポートをもっと良くしてほしいな。例えば、Enterキーを1回押すと次のリスト項目（-とか- [ ]とか）が自動で追加されて、2回押すと空白行になるようにしてくれると嬉しいな。" userName="mosselman" createdAt="2025/08/17 20:04:54" color="#ff5c5c">}}




{{<matomeQuote body="これって本当の意味でのWYSIWYGじゃないよね。だって、「*」とか「#」みたいな書式記号がそのまま表示されてるし。" userName="bloppe" createdAt="2025/08/18 00:13:36" color="">}}




{{<matomeQuote body="でもさ、結局見たものがそのまま得られるんだから（書式記号は少しあるけど）、かろうじてWYSIWYGって言えるんじゃないかな。" userName="lifthrasiir" createdAt="2025/08/18 01:06:56" color="">}}




{{<matomeQuote body="それなら「WYSISTWYG」ってのはどう？「What You See Is Similar To What You’ll Get」（見たものは、得られるものと似ている）って意味ね。" userName="matthews3" createdAt="2025/08/18 12:59:06" color="#ff5733">}}




{{<matomeQuote body="Android版Firefoxだと、太字フォントが普通のフォントやイタリック体よりも幅広になっちゃって、アラインメントが崩れるんだよね。同じAndroidスマホのChromeでは問題なく動くのに。Android 16、Firefox 141.0.3での話だよ。" userName="tomsmeding" createdAt="2025/08/17 21:50:36" color="#38d3d3">}}




{{<matomeQuote body="実はね、`font-synthesis` (https://developer.mozilla.org/en-US/docs/Web/CSS/font-synthe...) とかフォントの選び方次第で、たとえ等幅フォントでもアラインメントは簡単にずれるんだよ。だからこの記事のアプローチは、ある程度は機能するけど万能じゃない。一つの対処法としては、各文字を両方のフォントが入ったセルで囲むやり方があるんだけど、それだと合字は失われるね。個人的にはコーディングフォントで合字は好きじゃないから、僕にはプラスなんだけどね。" userName="lifthrasiir" createdAt="2025/08/18 01:10:46" color="#38d3d3">}}




{{<matomeQuote body="これって単なるシンタックスハイライトで、WYSIWYGじゃないんじゃない？" userName="nbbaier" createdAt="2025/08/18 03:24:23" color="">}}




{{<matomeQuote body="素晴らしいアイデア＆ソリューションだね！オプションのドキュメントにツールバーの設定が見当たらないことに気づいたんだ。カスタムボタンをツールバーに追加できるか知りたかったから探してたんだよ。" userName="ingigauti" createdAt="2025/08/17 19:24:58" color="#ff5733">}}




{{<matomeQuote body="これ、気の利いたプロジェクトだね。今やってる小さな実験でBlocknoteの導入にめちゃくちゃ忙しくなかったら、試してたよ。サイトのアニメーションがFirefoxで1pxのソリッドボーダーが出てるのに気づいたんだけど、派手に見せるつもりだろうから、きっと気にするんじゃないかな。" userName="SamInTheShell" createdAt="2025/08/17 22:21:37" color="#ff5c5c">}}




{{<matomeQuote body="いいね！シンプルでクリーンなところが気に入ったよ。俺はhttps://sqwok.imのためにcontenteditableコンポーネントを3ヶ月以上かけてゼロから作ったんだけど、すごく勉強になったし楽しかったよ。でも、クロスブラウザの問題とかでめっちゃ大変だったなぁ。" userName="holler" createdAt="2025/08/18 05:08:06" color="#ff5733">}}




{{<matomeQuote body="これ、本当にクールだね！作品を共有してくれてありがとう。ライブのMarkdownスタイラーとして、美しくて本当によくできてるよ。僕がずっと不満に思ってるのは、Microsoft Wordが人々がテキスト編集について考える基準になってることなんだ。でもこれは開発者にとって信じられないほど役立つだろうね。" userName="iambateman" createdAt="2025/08/18 14:02:44" color="#ff5c5c">}}




{{<matomeQuote body="数年前、まさにこのアイデアを試したんだ（その頃のBear appのMarkdownのやり方にインスパイアされてね）。でも、全部の問題を解決して100%動かすことはできなかったんだ。結局、諦めて次に進んだよ。<br>だから、よくやったね、そしてこれを完成させてくれてありがとう！！" userName="z5h" createdAt="2025/08/18 18:06:27" color="#45d325">}}




{{<matomeQuote body="Markdown入力のシンタックスハイライトは良いアイデアだね。俺もMarkdown入力機能を持ってて、GitHubスタイルか2列のライブレンダリングモードがあるよ。TrelloみたいにMarkdown WYSIWYGはcontenteditableでできるって知ってたから、俺も作ろうかと思ったんだ。でも、開発者コミュニティの人たちに「やめとけ」ってずっと警告されてたから、結局、これ以上時間をかけたくなくて作らなかったんだ。君がやり遂げてゴールにたどり着いたのは本当にすごいよ。" userName="gethly" createdAt="2025/08/18 07:04:06" color="#ff33a1">}}




{{<matomeQuote body="素晴らしいプロジェクトだね！俺もこの分野をしばらく調べてたんだ。これをWebコンポーネントにしなかった理由はある？`＜overtype-textarea＞`みたいに使えるなら、当然そうすべきに思えるんだけど。" userName="WA" createdAt="2025/08/18 06:59:22" color="#45d325">}}




{{<matomeQuote body="めっちゃかっこいいね。シンプルさが気に入ったよ。将来のプロジェクトで覚えておくね！(ちなみに、ランディングページのセットアップのところにタイプミスがあるかも。textareaの代わりに`＜div＞`が2回あるみたいだよ。)追記: GitHubへのリンクも壊れてる。" userName="aschelch" createdAt="2025/08/17 16:35:47" color="#ff5733">}}




{{<matomeQuote body="あの`＜div＞`の中に、OverTypeのインスタンスが2つ初期化されるってことなんだよ！" userName="panphora" createdAt="2025/08/17 17:09:02" color="">}}




{{<matomeQuote body="ツールバーがないと、このneovimプラグイン[0]がターミナルでMarkdownをレンダリングするのとすごく似てるね。いい機能の一つは、フェンスで囲まれたコードブロック内でシンタックスハイライトしてくれること（tree-sitterかな）。<br>[0]: https://github.com/MeanderingProgrammer/render-markdown.nvim" userName="Tmpod" createdAt="2025/08/17 22:46:42" color="#785bff">}}




{{<matomeQuote body="シンプルさがマジ最高！コード量が増え続ける中、こういう「少ないほど豊か」なソリューションがもっと増えてほしいね。" userName="jona777than" createdAt="2025/08/18 04:25:38" color="">}}




{{<matomeQuote body="俺も数年前にJavaScript評価付きコードエディタで全く同じアプローチを使ったことあるよ - http://labs.onether.com/javascript-sandbox/ （これは空白文字だけだけど、シンタックスハイライトもあったんだが見つからなかった）。とにかく、いい仕事したね！" userName="wesz" createdAt="2025/08/17 22:46:43" color="#ff5c5c">}}




{{<matomeQuote body="これのシンプルさ、本当に好き！純粋なプレーンテキストの代わりに、いくつかのプロジェクトで選択肢としてすごく役立ちそう。でも消費者はMarkdownが好きじゃないみたいで、イライラするね。一つ気になったんだけど、リスト（箇条書き、番号付きとか）をするとき、改行（Enter）でリストが続くようにしてくれると最高だよ。ほとんどの一般ユーザーはそう期待すると思うな。" userName="breakfastduck" createdAt="2025/08/17 19:44:01" color="#38d3d3">}}




{{<matomeQuote body="これ最高だよ！数年前はTyporaの大ファンで、今は全部Obsidianでやってる。どちらも編集はプレーンテキストだけど、見た目のテキストはフォーマットされてインラインでレンダリングされるんだ。君がやったこと、すごく好きだし、来週プロジェクトで使うよ。特に、npm、依存関係、そしていつものどこにでもあるJavaScriptの洪水を避けたことを賞賛するね。" userName="zoom6628" createdAt="2025/08/18 07:14:45" color="#ff33a1">}}




{{<matomeQuote body="これをWeb Componentでラップして、`div`とコンストラクタ呼び出しの儀式なしで使えるようにすることを検討したことある？" userName="TeddyDD" createdAt="2025/08/18 08:52:30" color="#ff33a1">}}




{{<matomeQuote body="このテクニック、初めて見たのはGitHubの検索ボックスで、キーワード:値トークンをどうスタイリングしてるか調べようとしたときだったな。すごくクールなテクニックだし、Markdownパーサーとうまく統合したね！唯一の欠点は、スタイルされたインライン要素にパディングを適用できないことだけど。" userName="philo23" createdAt="2025/08/17 21:07:14" color="#ff5733">}}




{{<matomeQuote body="賢い！俺、3年間`contenteditable`で作業してきたんだけどさ。これ、すごくいいショートカット見つけたね！" userName="jv22222" createdAt="2025/08/18 00:00:25" color="">}}




{{<matomeQuote body="俺もテキストエディタに不満があって、自分で何か作ろうと決めたんだ。そうすれば、同じプロセスを何度も繰り返さなくて済むからさ。https://www.texteditors.dev" userName="pyromaker" createdAt="2025/08/18 00:01:52" color="#ff5733">}}




{{<matomeQuote body="これ、めっちゃすげーな！俺みたいなWeb開発やJSスキルが乏しいSysAdminでも、MDファイルをサーバーサイドに保存できるような形で、これサイトに簡単に組み込める方法ってある？" userName="indigodaddy" createdAt="2025/08/17 23:26:37" color="#ff5733">}}




{{<matomeQuote body="ほとんどのJS/TSランタイムにはファイルシステムモジュールがあるよ。一番シンプルでセキュリティは低いけど、クライアントサイドのfetchを使って実装できるんだ。<br>GETリクエストは一致する.MDファイルを見つけて返す。<br>PUTリクエストは指定された場所に書き込む、って感じね。" userName="small_scombrus" createdAt="2025/08/17 23:46:12" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="デモページのMain EditorとLive Previewの違いが全然分かんねーな。どっちも同じに見えるし、両方ともライブプレビュー機能があるように見えるんだけど。" userName="jtbayly" createdAt="2025/08/18 15:16:03" color="">}}




{{<matomeQuote body="これがまだデフォルトで使えないって、マジでイライラするわ。Controlキー押しながら複数のテキストを選択してみてよ。まさか、これを再実装しなきゃいけないの？" userName="6510" createdAt="2025/08/18 15:06:51" color="">}}




{{<matomeQuote body="こんなにシンプルなのに、実際の課題を解決してるのが最高だね！リリースおめでとう！" userName="g105b" createdAt="2025/08/19 13:26:21" color="#ff33a1">}}




{{<matomeQuote body="GitHubのリンク、もう一回教えてくれる？あと、これって大きいドキュメントのレンダリングはどうなるの？" userName="nm980" createdAt="2025/08/17 17:27:32" color="">}}




{{<matomeQuote body="これだよ！<br>https://github.com/inokawa/rich-textarea" userName="uonr" createdAt="2025/08/18 02:51:23" color="#ff5c5c">}}




{{<matomeQuote body="モバイルのズーム機能をオフにする方法って見つけられる？ビューポートを少し調整する必要がありそうだね。クリックイン/アウトのフローが全部台無しになるんだよな。" userName="ivape" createdAt="2025/08/18 15:57:35" color="">}}




{{<matomeQuote body="これ、すごくポータブルだと思ったのに、iOS 9.3.6だと動かないんだね。textareaに文字すら入力できないし…。<br>自然な拡張としては、https://marimo.io/ や Jupyter、https://plutojl.org/ みたいなノートブック風Webエディタで使われてるシンタックスハイライト付きのソースコードエディタになると思う。" userName="ForceBru" createdAt="2025/08/17 23:40:46" color="#ff5733">}}




{{<matomeQuote body="iOS 9.3.6（2015年リリース）でテストしてる理由が分かんねーな。ドキュメントにはSafariのサポートはバージョン16以上って書いてあるのにさ。" userName="acherion" createdAt="2025/08/17 23:48:26" color="">}}




{{<matomeQuote body="だってtextareaなんだからどこでも動くはずって思ってたんだ。だからドキュメントも読まずに古い未サポートのデバイスで試してみたんだよね。" userName="ForceBru" createdAt="2025/08/18 09:00:47" color="">}}




{{<matomeQuote body="なんかおかしいのかな？アニメーションだと可変ピッチフォントなのに、デモだと全部同じ固定ピッチフォントに見えるんだよね。(Firefox ESRとChromiumで試したんだけど。)" userName="neilv" createdAt="2025/08/17 22:34:33" color="">}}




{{<matomeQuote body="いいね！これってnpmのmarkedとどう違うの？" userName="maz1b" createdAt="2025/08/17 21:36:52" color="">}}




{{<matomeQuote body="これすごいね（しかも信じられないくらいシンプル！）。もしコードブロックのシンタックスハイライトもしてくれたら、もっと最高なのに。" userName="drob518" createdAt="2025/08/17 23:05:58" color="">}}




{{<matomeQuote body="デモのスクロール同期がiOS Safariでうまく動かないみたい。一番下までスクロールできないんだ。" userName="rafram" createdAt="2025/08/18 02:14:41" color="#ff33a1">}}




{{<matomeQuote body="2kb<br>https://medv.io/codejar/" userName="zazaulola" createdAt="2025/08/18 01:31:34" color="">}}




{{<matomeQuote body="個人的なメモアプリに使いたいんだけど、画像サポートやコマンド、リスト、タグとかの自動補完がないと、毎日デスクトップとモバイルで使うのは厳しいな。<br>でも、色々な目的に使える選択肢が増えるのはすごく嬉しいよ。" userName="walterlw" createdAt="2025/08/17 22:48:55" color="#785bff">}}




{{<matomeQuote body="色々な言語に対応したカラーコーディングができる、良いブラウザベースのコードエディタウィジェットを知ってる人いない？" userName="bullen" createdAt="2025/08/18 01:00:48" color="">}}




{{<matomeQuote body="Codemirrorはかなりいいよ。6年以上前に探した時、社内ツールで採用したんだ。まあ、今は変わってるかもしれないけどね！" userName="farley13" createdAt="2025/08/18 01:25:02" color="">}}




{{<matomeQuote body="ありがとう、良さそうだね！でも、1.5MBのバンドルされたjsファイルか…。簡単に探せるようなシンプルな1行のHTMLタグで追加できたらいいのになあ。" userName="bullen" createdAt="2025/08/19 11:33:30" color="">}}




{{<matomeQuote body="ただのtextareaじゃないよ。いろんなプロジェクトで使われてるパターンだね。" userName="ZYbCRq22HbJ2y7" createdAt="2025/08/18 03:02:33" color="">}}




{{<matomeQuote body="すごくいいね！今日、自分の趣味プロジェクトに組み込んで、どうなるか試してみるよ。" userName="nodesocket" createdAt="2025/08/17 19:57:23" color="">}}




{{<matomeQuote body="Markdown文字じゃなくて、レンダリングされたプレビューを表示する方法ってある？" userName="cchance" createdAt="2025/08/17 20:14:58" color="#785bff">}}




{{<matomeQuote body="12ページものドキュメントがあるのに、まさかのtextareaなんだね。すごいね！試してみるよ。" userName="jackbridger" createdAt="2025/08/18 00:58:54" color="">}}




{{<matomeQuote body="このプロジェクト、マジですごい！# testみたいに書いたら自動で文字が大きくなるとか、Redditのコメントみたいにカスタマイズできないかな？画像サポートも欲しいな。でも、これすごくクールだからすぐにでも使いたいよ。誰かが言ってたpell (https://github.com/jaredreich/pell) とかspell (https://github.com/sylvainpolletvillard/spell) は1KBとか2KBなのに、これは40KBくらいあるって聞いたんだけど、なんでこんなにサイズが違うの？って疑問。本当にシンプルで驚いたよ。なんとかしてこれかspellを組み込んでみるね！" userName="Imustaskforhelp" createdAt="2025/08/18 06:39:19" color="#ff33a1">}}




{{<matomeQuote body="めっちゃクールで便利！OSS化してくれてありがとう :)" userName="kaboomshebang" createdAt="2025/08/18 11:47:23" color="">}}




{{<matomeQuote body="まさに俺のプロジェクトに必要だったやつだね :)" userName="rakag" createdAt="2025/08/18 08:28:11" color="">}}




{{<matomeQuote body="これ、すごいね！次のプロジェクトで試してみるよ。" userName="jerpint" createdAt="2025/08/17 21:37:27" color="">}}




{{<matomeQuote body="これ、マジで好き。Markdownの強化版って感じだね！" userName="octobereleven" createdAt="2025/08/17 19:37:45" color="#45d325">}}




{{<matomeQuote body="ちょっとしたタイポだよ。’A PEAK UNDER THE HOOD’ って書いてあるけど、たぶん ‘PEEK’ の間違いだと思うな。" userName="albert_e" createdAt="2025/08/18 03:40:23" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
