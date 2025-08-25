+++
date = '2025-08-18T00:00:00'
months = '2025/08'
draft = false
title = 'Webアプリがたった1つのHTMLファイルで自己更新！持ち運びもできる驚きの開発術'
tags = ["HTML", "Webアプリ", "JavaScript", "自己更新", "ポータブル"]
featureimage = 'thumbnails/blue2.jpg'
+++

> Webアプリがたった1つのHTMLファイルで自己更新！持ち運びもできる驚きの開発術

引用元：[https://news.ycombinator.com/item?id=44937991](https://news.ycombinator.com/item?id=44937991)




{{<matomeQuote body="混乱してる人向けに言うと、HyperclayってのはNodeJSサーバーとフロントエンドJSライブラリなんだ。HTMLページがDOMを更新して、自分の.htmlソースをその更新版に置き換えられるんだよ。チェックボックスをクリックすると、それが永続化されるイメージ。自動バージョン管理や権限もある。個人的なツールで使ってみたい。ただ、開発者が唯一のコンテンツ編集者の場合に一番役立つと思うよ。そうじゃないと、変更が上書きされちゃうからね。" userName="BoppreH" createdAt="2025/08/18 08:47:16" color="#ff5733">}}




{{<matomeQuote body="TiddlyWikiがヒントって言うけど、あれってサーバー要らないのが売りじゃなかったっけ？違いとメリットが知りたいな。ローカルWeb APIは使いにくいから、サーバーが必要になるのはわかるんだけど。サーバー不要志向なのにサーバーが必要って、矛盾してる気がするな。主な利点はデバイス間アクセス？オンラインで編集できるとか。俺はスマホのテキストエディタで編集して、同期アプリでPCと同期してるよ。" userName="andai" createdAt="2025/08/18 13:43:52" color="#38d3d3">}}




{{<matomeQuote body="TiddlyWikiって、サーバーなしでどうやってファイルシステムに書き込む（保存する）の？ブラウザでindex.htmlを開くのは、ただのデモだと思ってたんだけど。" userName="hombre_fatal" createdAt="2025/08/18 16:50:19" color="">}}




{{<matomeQuote body="まだよくわからないんだけど、NodeJSサーバーが必要なら、それって完全に自己完結型のHTMLファイルじゃないよね？" userName="calebm" createdAt="2025/08/18 16:06:18" color="">}}




{{<matomeQuote body="厳密には『自己完結型』とは書いてないけど、『持ち運び可能』とか『自己更新』って書いてあるのは、確かに誤解を招くよね。" userName="rlue" createdAt="2025/08/18 19:05:34" color="#ff33a1">}}




{{<matomeQuote body="TiddlyWikiには2つの実行モードがあるんだ。1つはHTMLファイルとして保存して、全コンテンツをファイル内に保存する方法。もう1つはNodeJSサーバーを使う方法（俺はこれ使ってる）。これだと全デバイスからWikiにアクセスできるんだよ。" userName="elbear" createdAt="2025/08/18 17:19:48" color="#ff5c5c">}}




{{<matomeQuote body="本当に自己完結型が欲しいなら、これ試してみてよ。https://startr.style/modernism/" userName="outofpaper" createdAt="2025/08/18 22:34:42" color="#ff5c5c">}}




{{<matomeQuote body="なるほどね、編集したらJavascriptがHTMLをいじって、ファイル→ページ保存で変更入りのHTMLファイルがダウンロードされて、また開けるってことか。ウェブサイトで『ファイル→保存』ができること自体、忘れてたよ。" userName="hombre_fatal" createdAt="2025/08/18 18:06:53" color="#45d325">}}




{{<matomeQuote body="これ、htmxとどう違うの？" userName="evbogue" createdAt="2025/08/18 13:44:07" color="">}}




{{<matomeQuote body="注：TiddlyWikiの公式ドキュメントには、ファイル→ページ保存は機能しないって明記されてるよ。<br>アプリ内の保存ボタンを押さないと有効なコピーは作れないんだ。でも、ほとんどのユーザーは自動保存できるプラグインとかソフトを使ってるね。" userName="silicon5" createdAt="2025/08/18 23:41:56" color="#45d325">}}




{{<matomeQuote body="これって2001年の話みたいだね。俺は2001年頃、IIS/JScriptバックエンドとcontenteditableを使って、まさにこれと同じようなことやってたよ。" userName="leptons" createdAt="2025/08/18 08:58:46" color="">}}




{{<matomeQuote body="正直、localStorageに同期レイヤーを追加するのと比べて、これがどう役立つのかわかんないな。俺はhtmlsync.ioでそのサービスを作ったし、このソリューションがどう優れてるのか純粋に知りたいんだ。" userName="meistertigran" createdAt="2025/08/18 14:27:36" color="#38d3d3">}}




{{<matomeQuote body="俺はhttps://github.com/slaymaker1907/TW5-browser-nativesaverを使ったよ。これは今のバージョン5.3.8でも使えるけど、Chromiumベースのブラウザだけね。<br>一度ファイルを保存すれば、タブが開いている間は自動保存されるんだ。" userName="nilslindemann" createdAt="2025/08/19 11:26:34" color="#38d3d3">}}




{{<matomeQuote body="https://tiddlywiki.com/みたいに、君のメモがHTMLファイルになるんだ！<br>ドキュメントフォルダに保存したり、どんなサービスでも同期したり、バージョン管理したりできるよ。ファイルシステムがわかるけど、サーバーのホスティングは知らない（またはやりたくない）けど、ウェブサイトみたいな体験をしたい人向けだね。<br>オフラインでも動くよ！" userName="conradev" createdAt="2025/08/18 15:24:28" color="#ff5733">}}




{{<matomeQuote body="でも、長く使った結果Tiddly Wikiはおすすめしないな。<br>修正されないバグ（例: pタグ内のdivタグ）や、分かりにくい構文（例: 属性値にコード）、Wikiとしてスケールしないタグ付けの実装（技術的にはタグにタグを持てるけど）とか問題が多いんだ。<br>古い機能が非推奨にならずに機能が追加されるから、肥大化してるよ。<br>Markdownファイルが入ったフォルダと、Markdown Viewerみたいなブラウザアドオンを使った方が生産的だと思う。" userName="nilslindemann" createdAt="2025/08/19 11:45:16" color="#785bff">}}




{{<matomeQuote body="確か、昔のブラウザは直接ファイルシステムにアクセスできたはずだよ。" userName="notnmeyer" createdAt="2025/08/18 17:09:21" color="">}}




{{<matomeQuote body="結局のところ、オリジナルのTiddlyWikiはファイルの永続化にJava JARを使っていたんだ。（すごい自動的だと思ってたけど、最近どうやってたのか調べたんだよね）" userName="paulirish" createdAt="2025/08/18 16:30:12" color="">}}




{{<matomeQuote body="これ、ホームページに一言一句そのまま追加したよ。ありがとう！<br>注: 開発者がフォークしたすべてのアプリに”DOMベースのスキーマ移行”をプッシュする方法を開発中だよ。" userName="panphora" createdAt="2025/08/18 10:16:42" color="#785bff">}}




{{<matomeQuote body="htmxはサーバーが必要だけど、これは単一のHTMLファイルがそれ自体を修正できるようにするんだ。" userName="positr0n" createdAt="2025/08/18 13:54:42" color="#785bff">}}




{{<matomeQuote body="これ、めちゃくちゃ気取ってるように見えるけど、いくつか面白いCSSのアイデアがあって試してみたいね。<br>例えば、`[style*=”--bgc:”]`みたいなセレクタで`style=”--bgc: red”`って背景色を設定するのとか、自分じゃ思いつかなかった発想だわ。" userName="actinium226" createdAt="2025/08/19 03:55:33" color="#ff5c5c">}}




{{<matomeQuote body="`contenteditable`はリッチテキストに近いけど、HyperclayはJSでDOMもいじれるから、それ以上だね。<br>Smalltalkのイメージと仮想マシンをウェブに適用したって考えると、もっと近いかも。<br>イメージをダウンロードして、コード動かして使って、アプリの状態全部を保存できる感じ。" userName="BoppreH" createdAt="2025/08/18 09:36:42" color="#ff33a1">}}




{{<matomeQuote body="僕の書いた説明をそんなに気に入ってくれて嬉しいな！<br>本当に特別なプロジェクトだから、共有してくれてありがとう。" userName="BoppreH" createdAt="2025/08/18 10:42:56" color="">}}




{{<matomeQuote body="それは違うと思うな。<br>`file://` URLから読み込んだら、JavaScriptから直接ファイルを書き出せたはずだよ。<br>セキュリティ（正当）でその機能は潰されたけど、ちゃんとした代替案（不当）がなかったのは残念だね。<br>あの機能が失われたのはマジで惜しい。TiddlyWikiは唯一無二だったし、もっとその設計からヒントを得たシステムが出てもよかったのに。ああ…。<br>追記: Wikipediaで思い出したけど、その機能はUniversalXPConnectって呼ばれてて、Firefox専用でクロスブラウザじゃなかったんだって。<br>適切な代替なしで削除されたのは、やっぱりクソだね。" userName="tonyg" createdAt="2025/08/18 21:22:32" color="#45d325">}}




{{<matomeQuote body="楽しんでくれて嬉しいよ。<br>俺の作品のほとんどはStartr.Styleをベースにしてるんだ。<br>Tailwindのごちゃごちゃしたクラスの代わりにいい選択肢だよ。<br>純粋なスタイリングに直接変換されるのに、例えば`--bgc`に`-md`を付ければタブレット以上での背景色を指定できるみたいに、レスポンシブデザインもできるのが特に気に入ってるね。<br>Modernismとかhttps://startr.styleにある実験的なページを作るときは、気取らず、コードとウェブの可能性への愛着からやってる。<br>子供の頃、地元のパソコン店を手伝う代わりにGopherやMosaicでウェブを探索する時間を手に入れたんだ。" userName="outofpaper" createdAt="2025/08/19 08:02:03" color="#ff5733">}}




{{<matomeQuote body="あれ、すごく良かった！シェアしてくれてありがとう。" userName="abustamam" createdAt="2025/08/18 23:10:52" color="">}}




{{<matomeQuote body="いや、そんなことはなかったよ。<br>むしろ今はAPIがあって、こういうことが可能になってると思う。<br>TiddlyWikiだと、基本は「ファイル → 名前を付けて保存」でHTMLを上書きするしかなかったんだ。<br>他にも方法があったけど、どれもブラウザが直接アクセスを許可しない問題への回避策だったね。" userName="mpyne" createdAt="2025/08/18 18:49:56" color="#45d325">}}




{{<matomeQuote body="やっとこのプロジェクト（TiddlyWiki）を思い出したけど、もし間違ってたらごめんね。<br>Hyperclayの状態保持って、開発者向けで、エンドユーザーはただのHTMLを受け取るだけなんでしょ？<br>ブラウザ側で永続性を許可する共通のソリューションとか標準がないと、そんなにすごい話じゃない気がする。<br>理論的には、クッキーを使ってサーバー側でHTMLファイルのバージョンを保存する簡単なプロトコルもあるかもしれないけど、それには色々問題が起こりそうだね。" userName="Agraillo" createdAt="2025/08/18 15:38:56" color="#785bff">}}




{{<matomeQuote body="＞ HyperclayはJSでDOMも編集できるから一歩進んでる。そんなに革命的！？どうやってこんな技術的な偉業を成し遂げたんだ！？" userName="leptons" createdAt="2025/08/19 04:44:44" color="">}}




{{<matomeQuote body="問題解決にはTiddlywiki Classicを使ってるよ。pタグの中にdivがないし、空白ファイルも412KBと軽いんだ（TW5は2.5MB！）。多くのtiddlerを一度に表示できるのがメインの利点だね。TW5は見た目はいいけど実用的じゃない。ただClassicも完璧じゃなくて、段落はbrタグで表示されるし、リンク構文がMediaWikiと逆なのがややこしい。ジャーナルも日付順じゃなくアルファベット順に並ぶのが不便かな。＜https://classic.tiddlywiki.com/＞" userName="silicon5" createdAt="2025/08/19 23:15:43" color="#45d325">}}




{{<matomeQuote body="2008年頃はWiki on a stickみたいなのがあったんだよ（https://stickwiki.sourceforge.net/）。なかなか良かったんだけど、数年後にはChromeとかが自己保存を許してくれなくなっちゃったんだよね。" userName="davidhbolton" createdAt="2025/08/18 19:45:27" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ストーリーテリングやグラフィックは素晴らしいけど、10画面分読んでもどんな技術でこれを実現してるのかさっぱり分からないよ。localStorageの話を長々とやってるだけ？どうやってHTMLファイルに永続化してるの？FileSystemAPIで前のHTMLファイルを上書きしてる？ユーザーに「名前を付けて保存」ダイアログを選ばせずに、どうやってシームレスに実装できるの？" userName="bflesch" createdAt="2025/08/18 07:58:42" color="#ff5c5c">}}




{{<matomeQuote body="Hyperclayには2つのアプローチがあるよ。<br>1. ホスト型: ”HTMLアプリ”が/saveエンドポイントを呼んで自己永続化する。HTMLを取得して、`彼らのアプリ名.html`を上書きし、バックアップも取るんだ。<br>2. ローカル型: オープンソースのHyperclay Local [0]をダウンロードして、個人用のローカルHTMLアプリを持てるよ。これも/saveエンドポイントを呼んでバックアップを作るんだ。自分のサーバーでホストするのも可能だよ。＜https://hyperclay.com/hyperclay-local＞" userName="panphora" createdAt="2025/08/18 10:06:33" color="#45d325">}}




{{<matomeQuote body="え…それって、HTMLファイルを保存するサーバーってこと？" userName="herpdyderp" createdAt="2025/08/18 14:05:36" color="">}}




{{<matomeQuote body="FTPアクセスをNodeJSサーバーに置き換えた現代版って感じだね。でも、結局サーバーにホストするか、月額料金を払うことになるんだから、サーバーは必須ってことだよね。つまり、これは筆者のビジネスの広告ってこと？" userName="jnd-cz" createdAt="2025/08/18 14:48:06" color="#45d325">}}




{{<matomeQuote body="DOMの変更を捉えるのにはMutation Observerを使ってるんじゃないかな？＜https://developer.mozilla.org/en-US/docs/Web/API/MutationObs...＞" userName="nonethewiser" createdAt="2025/08/18 13:47:45" color="#ff33a1">}}




{{<matomeQuote body="NodeJSサーバーを使ってるってことを、なんでそんなに言いたがらないの？" userName="Timwi" createdAt="2025/08/19 13:59:07" color="">}}




{{<matomeQuote body="僕もスクロールして読んでみたけど、ちょっと迷っちゃった。これって、HTMLにサーバーで実行される構文を少し加えたら、PHPやWordPressを再発明したことになるんじゃない？結局、マルチテナント化とかでちゃんとしたシステムが過剰に複雑になって、”進歩”とか”発展”の90%は、結局は無駄な肥大化だってことが再発見されるサイクルだよね。" userName="athrowaway3z" createdAt="2025/08/18 08:39:21" color="#ff5c5c">}}




{{<matomeQuote body="現代のWeb開発のノイズを無視して、自分が望む体験を構築できたら最高だ、って書いてあるのに、ミーム画像と短い文章が交互に出てきて、読者が常に気を散らされるような構成なのは変な感じだよ。僕が求めてるのは、冒頭に短い散文的な説明があって、流れのある背景があって、本当に必要な概念を説明するところにだけ図があるような記事なんだ。" userName="zahlman" createdAt="2025/08/18 11:20:51" color="">}}




{{<matomeQuote body="サーバーにDBがあるよ。JSONじゃなくてHTMLビュー全体を保存してるだけでしょ。変更可能な情報だけを抽出するのと違うよな…" userName="maelito" createdAt="2025/08/18 08:02:40" color="">}}




{{<matomeQuote body="俺が理解した限りだと、HTMLファイル自体が更新されてるから、新しい変更をフォームとか属性、他のタグに含めてるってことだよね。" userName="aszen" createdAt="2025/08/18 08:01:07" color="">}}




{{<matomeQuote body="で、そのファイルが永続化のためにバックエンドに送信されるんだな。" userName="aszen" createdAt="2025/08/18 08:03:04" color="">}}




{{<matomeQuote body="これってWWWの当初のビジョンに近いよね。最初のWebブラウザはエディタでもあったんだ。Tim Berners-LeeのNeXTでのアプリはTextViewってリッチテキスト編集クラスのラッパーだったんだよ。編集機能が失われたのは、HTTP PUTがまだなかったのと、Mosaicがクロスプラットフォームで編集機能を組み込むのが複雑すぎたから。" userName="pavlov" createdAt="2025/08/18 07:19:31" color="#38d3d3">}}




{{<matomeQuote body="もっと読み書きできるWebって俺の理想なんだ。Hyperclayみたいなページは素晴らしいけど、各ページが独自のツールキットを作るHyperclayと、Tim Berners-Leeが目指した読み書きWebは全然違う。ユーザーエージェントが、どのサイトでも使える標準ツールを提供すべきだと思うな。" userName="jauntywundrkind" createdAt="2025/08/18 07:33:59" color="#785bff">}}




{{<matomeQuote body="うん、同意するよ。いつかブラウザ開発に携わって、Hyperclayを統合するのが俺の夢なんだ。Webアプリはもう十分中核技術として定着したんだから、ブラウザはローカルWebホストやユーザーとユーザーアカウントの知識、そしてユーザーが選んだものをディスクに永続化する能力を標準で備えるべきだと思うね。" userName="panphora" createdAt="2025/08/18 10:08:28" color="#ff5733">}}




{{<matomeQuote body="同じような感じで、Linked Web Storageのワーキンググループがここにあるみたいだよ: https://www.w3.org/groups/wg/lws/<br>多分これと重なる部分があるだろうね。もしW3Cの提案が承認されて、ローカルブラウザフォークで動く実装ができたら、ブラウザチームと話して、まず実験的機能をフラグで追加してもらい、将来的には統合できるかもよ。" userName="frsanti" createdAt="2025/08/18 10:49:28" color="#785bff">}}




{{<matomeQuote body="「もっと読み書きできるWeb」って結局Wikipediaじゃない？現代のWebスケールでこれ以上シンプルなシステムって想像できないんだけど。" userName="esperent" createdAt="2025/08/18 10:12:50" color="">}}




{{<matomeQuote body="スケールの違いがポイントだと思うんだ。Wikipediaには何十億ものアクティブユーザーがいるけど、Hyperclayスタイルの永続ドキュメントは数人しかいないでしょ。『Wikipediaが解決済みだから不要』って言うのは、1976年に『IBMメインフレームがあるからApple IIなんていらない』って言うのと同じだよ。" userName="pavlov" createdAt="2025/08/18 11:37:55" color="#45d325">}}




{{<matomeQuote body="それに加えて、W3CはAmayaっていう『ブラウザ』、いや『Webエディタ』って呼ぶのが好きだったらしいけど、15年くらいWebのビジョンとして維持してたんだよ。ただ魅力的なアイデアってだけじゃなくて、Amaya自体が『テストベッド』としてしっかりした実装だったと思う。なんで開発終了したかはわかるけど、惜しいことしたなって今でも思うね。" userName="weinzierl" createdAt="2025/08/18 07:44:58" color="#45d325">}}




{{<matomeQuote body="Amayaって知らなかったな。<br>HTML 4.01、XHTML 1.0、MathML 2.0、CSS 2、SVGをサポートしてるんだって。完璧じゃん、他に何もいらないよ。" userName="doublerabbit" createdAt="2025/08/18 09:04:43" color="#ff5733">}}




{{<matomeQuote body="Amayaはちょっとした編集にすごく便利だよね。" userName="K0balt" createdAt="2025/08/18 10:50:15" color="">}}




{{<matomeQuote body="TBLの時代のWebって、ローカル保存がWeb上の保存と同じだったんだよ。UNIXワークステーションとかNFSで共有してた。Webは情報構造化が大事で、見た目じゃなかったのに、WYSIWYGとかdivだらけになって失われちゃったよね。今はHTMLをシンプルに書く人も少なくて、専門的なスキルが必要になっちゃった。君は当時のWebを理解してる数少ない一人だよ。" userName="Theodores" createdAt="2025/08/18 16:17:15" color="#ff5733">}}




{{<matomeQuote body="え？僕の知ってるブラウザは全部エディター機能があるんだけど？DevToolsを使わない人なんているの？HTMLもJSもCSSも使わないで、TSやReactばかりで、ブラウザのIDE機能を使わないの？" userName="dismalaf" createdAt="2025/08/18 07:33:28" color="#38d3d3">}}




{{<matomeQuote body="君が言ってるのは開発者向けツールでのローカルファイル編集の話でしょ。前のコメントが言ってるのは、普通のユーザーがリモートファイルを編集するっていうWebの本来のビジョンだよ。" userName="sethaurus" createdAt="2025/08/18 08:23:58" color="#ff5733">}}




{{<matomeQuote body="NeXTマシンって開発者向けで、一般向けじゃなかったよね。ChromeにはSSH拡張もあるし。80～90年代のLispマシンとかSmalltalk、初期のWebのアイデアはすごくクールだったから、もっと普及してほしかったな。" userName="dismalaf" createdAt="2025/08/18 16:46:21" color="#ff5c5c">}}




{{<matomeQuote body="DevToolsの概念はFirebugが最初に持ち込んだんだよ。ところで、フォームを操作するのも「編集」って呼べるのかな？" userName="tommica" createdAt="2025/08/18 08:32:04" color="#ff5733">}}




{{<matomeQuote body="Firebug以前にもブラウザの「DevTools」はあったよ。<br>https://www.otsukare.info/2020/08/06/browser-devtools-timeli..." userName="leptons" createdAt="2025/08/18 08:52:03" color="#ff5c5c">}}




{{<matomeQuote body="ヤバい、昔のDevToolsのこと、完全に忘れてた！IEのやつとかFiddlerとか、昔使ったことあったのに。" userName="tommica" createdAt="2025/08/18 09:06:09" color="">}}




{{<matomeQuote body="僕は今でもFiddlerを使ってるよ。ブラウザのネットワークタブより細かいことやる時はFiddlerが最高。カスタムプロキシとかJScript.NETでいじれるし、NodeJSとも連携できる。HTTPのSwiss army knifeって感じだね。" userName="leptons" createdAt="2025/08/18 20:20:09" color="#ff5733">}}




{{<matomeQuote body="NetscapeやIEにも昔からデバッガーはあったんだよ。でもFirebugがインスペクター、デバッガー、コンソールをまとめて、すげー開発体験を提供したんだ。それに対抗して、ChromeやSafariは急いで「開発者ツール」をリリースしたってわけ。MSがIE8で同じことやるには6年もかかったんだよ。" userName="reactordev" createdAt="2025/08/18 10:04:33" color="#45d325">}}




{{<matomeQuote body="Netscapeには編集ツールがあったし、Firefox、Chromeにもあるんだ。Safariにもあるんじゃないかな？Netscape ComposerはNavigatorから生まれたんだよ。" userName="dismalaf" createdAt="2025/08/18 16:43:22" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ローカルファイル（`file://`プロトコル）で開くページへのWeb標準のサポートを改善してほしいんだ。簡単なHTML/Vueアプリを作る時、ローカルJSモジュールが使えなかったり、他のローカルファイルを開けなかったりして困るんだよ。セキュリティリスクはわかるけど、特定のサフィックスでアクセスを許可するとか、何か方法があるべきだよね。Webサーバーは手間がかかるし、URLを打ち込むだけでアプリを動かしたいんだ。" userName="codedokode" createdAt="2025/08/18 13:06:09" color="#ff33a1">}}




{{<matomeQuote body="ジェネレーター系アプリのネックは、Clipboard APIがHTTPSページでしか使えないことだね。`file:///`だと「クリップボードにコピー」が動かないから、APIがない場合はポップオーバーのテキストエリアで代替するしかない。これは正直イケてない。ローカルサーバーならVS Codeのdevcontainersがおすすめだよ。ワークスペースを開けばdevcontainerが起動して、簡単にサーバーが使える。HTTPSもローカルでできるしね。" userName="cluckindan" createdAt="2025/08/18 13:22:55" color="#ff5c5c">}}




{{<matomeQuote body="SSLがあっても、見知らぬサーバーのウェブサイトが、自分のPCにあるファイルよりリスクが低いとされるのは変だよね。これってどういうことなの？誰か説明してくれないかな？" userName="jtbayly" createdAt="2025/08/18 14:59:51" color="">}}




{{<matomeQuote body="仕様書には議論があるんだけど、https://w3c.github.io/webappsec-secure-contexts/#is-origin-t... の「ユーザーエージェントは`file` URLを潜在的に信頼できるものとして扱うべき」って書いてあるんだ。でも、セキュリティ優先のブラウザは`file`を除外してもいいと。これはhttps://html.spec.whatwg.org/multipage/webappapis.html#secur... でセキュアコンテキストにもなるんだけどね。つまりブラウザが実装してないだけで、多分需要がないからなんだろうね。" userName="mediumdeviation" createdAt="2025/08/18 15:14:32" color="#38d3d3">}}




{{<matomeQuote body="見知らぬウェブサイトは、君のPCのファイルシステムに勝手にアクセスしてファイルを送信したりはできないんだ。でも、ローカルで動くJavaScript入りのHTMLファイルがもし信頼されたら、普通のPCだとそれができちゃうんだよ。" userName="rmah" createdAt="2025/08/18 15:06:13" color="#45d325">}}




{{<matomeQuote body="ファイルにアクセス権限を付ける方法があればいいのにね。例えば、HTMLファイルと同じ階層に「html-accessible-files」みたいな特定の名前のフォルダを作ってそこに入れるとかさ。" userName="codedokode" createdAt="2025/08/18 18:45:26" color="#45d325">}}




{{<matomeQuote body="昔のInternet Explorerには`.HTA`ファイルがあって、ダブルクリックで自己完結型のローカルアプリとして動かせたんだ。PWAが今やってることの多くを、もっとシンプルに実現してたんだよね（ほぼZIPファイルだったし）。でもセキュリティホールが多くて廃止されたんだよ。今も`.MHT`とかあるけど、PWAやElectronアプリがいっぱいあって、結局「ローカルアプリのセキュリティリスク」と「複雑な対応」の堂々巡りだよね。`.HTA`や`.MHT`はPWA/Electronよりもシンプルになれる可能性を示してるけど、不思議な歴史があるんだ。" userName="WorldMaker" createdAt="2025/08/18 21:22:16" color="#ff5c5c">}}




{{<matomeQuote body="クリップボードAPIとかのルールは、公開されてない非SSLページをブロックするためっぽいけど、ローカルページまでブロックするんだよね。AppleやGoogleにとって、localhostで良いWebアプリが作られやすくなってもメリットないもんね。<br>Safariのlocalhostサイトのデータを消そうとしてもできないし、公開サイトのでもめちゃくちゃ大変。iPhoneに証明書を追加したり、Web APIでローカルにキャッシュした音声ファイルを再生しようとしても無理なんだ。多分、こんな問題が1000個以上あるよ。" userName="srcreigh" createdAt="2025/08/18 18:49:05" color="#ff5c5c">}}




{{<matomeQuote body="「ローカルサーバーを動かすならVS Codeのdevcontainerが解決策」って言うけど、VS Codeをインストールするだけでも大変だし、ましてや使うなんて無理。VS CodiumやVS CodeはElectronアプリで、サンドボックス化が難しいんだ。ElectronやChromiumは特権バイナリのsuidヘルパーを使うから、サンドボックスでsuidバイナリは許可したくないしね。あと、高速レンダリングにはGPUアクセスが必要だけど、安全に提供するのは難しいし、ソフトウェアレンダリングに切り替える方法もわからなかった。Electronアプリってインストールが本当に大変だよ。<br>仮想マシンを使う手もあるけど、もっとリソースを食うしね。もちろん、これはVS Codeの問題じゃなくて、良いサンドボックスがないLinux側の問題なんだけど。<br>`python -m http.server`をタイプする方がずっと簡単だけど、ターミナルを開いてディレクトリに移動する手間があるから時間がかかるんだ。その時間を他のこと（Electronアプリのsuidバイナリの問題を解決する方法とか）に使いたい。それに、Webサーバーを起動してブラウザの特権を得るなんて、ハックっぽい workaroundに感じるよ。" userName="codedokode" createdAt="2025/08/18 13:51:00" color="#ff5733">}}




{{<matomeQuote body="かかるよ、だってアプリのパスをいつも覚えてるわけじゃないし。それに、僕のLinuxシステムだとターミナルがウィンドウやタブを記憶してくれないから、再起動のたびに全部手動で開かなきゃいけないんだ（ChatGPTにスクリプト書かせてもいいけど、そもそもそんな手間がなければもっと楽なのに）。" userName="codedokode" createdAt="2025/08/18 14:14:02" color="">}}




{{<matomeQuote body="HTMLファイルをスクリプトに関連付けたり、「開く」機能を使って、`python -m http.server`を呼び出すスクリプトに渡すのはどうかな？それでPythonサーバー経由でブラウザにファイルのURLを開くようにすればいいんじゃない。" userName="benjaminjackman" createdAt="2025/08/18 14:12:10" color="#ff5733">}}




{{<matomeQuote body="Chromium系のブラウザは`localhost`をセキュアなコンテキストとして扱ってくれるから、HTTPSがなくてもクリップボードとかWeb SerialとかのAPIにアクセスできるんだよ。" userName="beala" createdAt="2025/08/18 14:20:48" color="#45d325">}}




{{<matomeQuote body="`localhost`だけじゃなくて、`*.localhost`もそうだよ。Chromiumだけじゃなく、Firefoxも標準でサポートしてるんだ（Safariは相変わらずちょっと怪しいけどね）。詳しくはここを見てね: https://www.w3.org/TR/secure-contexts/#is-origin-trustworthy" userName="chuckadams" createdAt="2025/08/18 16:51:29" color="#785bff">}}




{{<matomeQuote body="それって最近のこと？数年前は違った気がするんだけど、特に80番ポート以外を指定したときは。" userName="cluckindan" createdAt="2025/08/18 19:59:24" color="">}}




{{<matomeQuote body="WindowsにはHTAアプリってのが昔あったよね。拡張子違いのHTMLファイルで、メニューのないブラウザで開いて、JavaScript（JScript）でファイルシステムAPIにアクセスできたんだ。セキュリティ的には悪夢だっただろうけど、Electronベースで現代版ができたら面白いかも。フォルダへのアクセスとSQLite DBがあれば十分だね。<br>あと、サンドボックス化されたWASMアプリを作るOrcaってのもあるけど、あれはブラウザやDOMがなくてCanvasしか使えないんだよ。" userName="hiccuphippo" createdAt="2025/08/18 13:38:01" color="#45d325">}}




{{<matomeQuote body="「ローカルのHTMLファイルに何でもアクセスさせるのはリスクがあるけど、例えばファイルやディレクトリに特定のサフィックスを付けたらアクセスできるようになるとか、何か方法があるべきだよね。」<br>「Webサーバーを使うのは大げさだし、毎回ターミナルを開いてディレクトリに移動してサーバーを起動するのも時間がかかりすぎるから嫌だ。URLを入力するだけでアプリが動くようにしたいんだ。」<br>これに対して、ブラウザに「オフライン限定」モードがあればいいと思うな。ローカルファイルシステムかリモートページか、どちらか一方にしかアクセスできないモードだね。これだけじゃ君が説明してるユースケースは完全には解決しないだろうけど、外部を参照したい状況もまだあるだろうから。でも、ブラウザを静的ファイル用の限定的なサーバーとして使えるのはすごく便利そうだし、ファイル自体に意図するセマンティクスを示すより、ずっとシンプルで直感的だよね。" userName="saghm" createdAt="2025/08/18 19:29:18" color="#ff33a1">}}




{{<matomeQuote body="面白いね。俺も”サンドボックスモード”のアイデアがあったんだ。ページが読み込み後に自発的に切り替えられて、ネットワークやCookie、データ流出の方法を使えなくするんだよ。テキスト暗号化とか音声ファイル形式変換みたいなオンラインユーティリティに使えるね。ブラウザがサンドボックスモードだって示せば、ユーザーも信頼できるし。" userName="codedokode" createdAt="2025/08/19 16:47:25" color="#38d3d3">}}




{{<matomeQuote body="そのアイデア、いいね！ページがOpenBSDの`pledge`みたいに、もっと細かく権限を放棄できるようになったら最高だね。" userName="saghm" createdAt="2025/08/19 23:50:46" color="#ff33a1">}}




{{<matomeQuote body="だいぶ前だけど、俺の記憶だと、file://のURLから読み込んだ画像だと、CORSのせいで一部の＜canvas＞やWEBGL機能が使えないはずだよ（オフスクリーン＜canvas＞だったかな）。唯一の回避策は、画像をbase64でHTML内に埋め込むことだった。" userName="AlienRobot" createdAt="2025/08/18 13:29:39" color="#38d3d3">}}




{{<matomeQuote body="で、それらを埋め込むにはビルドステップが必要になるし、その設定自体がミニアプリを書くより時間かかるかもね。" userName="codedokode" createdAt="2025/08/18 13:51:57" color="#ff33a1">}}




{{<matomeQuote body="これは、昨日俺が[1]と[2]で探ってたこととかなり似てるよ。<br>今んところ、唯一の選択肢はlocalStorageを使って、ユーザーに手動でエクスポートとインポートのオプションを与えることだって分かった。Hyperclayがいくつかアイデアをくれたんだ。俺が欲しいのは[3]みたいなやつだけど、ユーザーは一度だけインストールすればいいんだ。俺たちのミニアプリをロードできる単一のElectronアプリみたいなね。<br>[1] - https://news.ycombinator.com/item?id=44930814<br>[2] - https://news.ycombinator.com/item?id=44933897<br>[3] - https://www.electronjs.org/fiddle" userName="anyg" createdAt="2025/08/18 13:51:01" color="#38d3d3">}}




{{<matomeQuote body="俺もlocalStorageの同期に関して同じ問題があったよ。だからhtmlsync.ioを作ったんだけど、これは多くのローカルアプリを持っていて、本当にlocalStorageの同期が必要な人にしか価値がないね。" userName="meistertigran" createdAt="2025/08/18 14:31:37" color="#785bff">}}




{{<matomeQuote body="これ、すごくいいね！どんなユーザーをターゲットにしてるの？技術者向け？それともvibe codingで開発にちょっと手を出してる人たち？" userName="anyg" createdAt="2025/08/18 15:48:36" color="">}}




{{<matomeQuote body="ありがとう！だいたいそうだよ。開発者で、vibe codeするちょっとしたアプリごとにサーバーを立ち上げたくない人にも便利かもね。正直、俺はこれが自分自身のために欲しかったし、アイデアが気に入ったのに、もっと真剣なものにしなかったことに罪悪感があったんだ。" userName="meistertigran" createdAt="2025/08/18 15:56:14" color="#785bff">}}




{{<matomeQuote body="『…毎回ターミナルを開いて、ディレクトリに移動して、サーバーを起動するのは嫌だ、時間がかかりすぎる…』俺はこれらのステップをやるシェルスクリプトを持ってるよ。ターゲットURLでブラウザを開くのも含めてね。普段から使ってるよ。" userName="ustad" createdAt="2025/08/18 14:04:03" color="#38d3d3">}}




{{<matomeQuote body="HTMLがローカルプラットフォームとして閉鎖され始めたとき、俺もイライラしたよ。でも、まだすごくオープンだし（オーディオやJavaScriptは動く）、できないことのためにPythonやNodeのウェブサーバーを立ち上げるのは、大した問題じゃないってわかった。一瞬だよ。ターミナルに「webserver_here」コマンドを設定するか、常に動かしとけばいい。むしろ、ローカルHTMLはだんだん怖くなってきたから、もっと厳格な境界があった方が嬉しいね。" userName="bmacho" createdAt="2025/08/18 15:52:12" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
