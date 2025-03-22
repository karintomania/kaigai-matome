+++
date = '2025-03-15T00:00:00'
months = '2025/03'
draft = false
title = '【衝撃】まさかの一枚完結！？HTMLだけで作られた爆速メモアプリ「Nash」が話題に'
tags = ["HTML", "JavaScript", "Webアプリ", "メモアプリ", "シングルページアプリケーション"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> 【衝撃】まさかの一枚完結！？HTMLだけで作られた爆速メモアプリ「Nash」が話題に

引用元：[https://news.ycombinator.com/item?id=43358914](https://news.ycombinator.com/item?id=43358914)

{{<matomeQuote body="このシンプルだけどパワフルな属性のおかげで、多くの処理が楽になるんだよね。意外と知らない開発者が多いみたいだけど、結構前からあるんだよ。＜div id=“editor” contenteditable=“true”＞" userName="hliyan" createdAt="2025-03-16T04:22:13" color="">}}

{{<matomeQuote body="この一行が、Writely（Google Docsになる前のスタートアップ）のオリジナル実装の9割を占めてたんだよ（ソースは創業者の一人であるオレ）。<br>残りの9割は、ブラウザごとに独自のバグがあるcontenteditableの実装を、ちゃんと同期させるためのバックエンドコードだったけどね！" userName="snewman" createdAt="2025-03-16T14:56:37" color="#785bff">}}

{{<matomeQuote body="こんなシンプルなことが、Google Docsみたいな巨大な産業を創り出すんだから、マジですごいよね。<br>多くの問題は、ブラウザの同期問題に変換できると思うんだ。<br>ブラウザ内外で使える、おすすめの同期ライブラリやアプリケーションってある？" userName="Imustaskforhelp" createdAt="2025-03-16T15:58:38" color="#ff5733">}}

{{<matomeQuote body="OPじゃないけど、この分野の一般的な解決策は、状態をCRDT（conflict-free replicated data types）として表現することだよ。よく使われるブラウザベースのライブラリは、Y.js[0]とAutomerge[1]かな。<br>[0]: <br>https://yjs.dev/<br><br>[1]: <br>https://automerge.org/" userName="pkage" createdAt="2025-03-16T17:59:23" color="#ff5733">}}

{{<matomeQuote body="ちなみに、Rustで同じことをやりたい人向けには、https://crates.io/crates/yrs と https://crates.io/crates/automerge があるよ。" userName="nextaccountic" createdAt="2025-03-17T09:45:49" color="">}}

{{<matomeQuote body="Loro[1]ってのもあるよ。比較的新しいけど最近1.0になったみたい。パフォーマンスもいいし、他のライブラリにはない機能もあるんだって。<br>[1]: <br>https://loro.dev/" userName="babymode" createdAt="2025-03-17T10:38:21" color="#45d325">}}

{{<matomeQuote body="マジか、リンクありがとー！<br>Loroには他にないどんな機能があるの？" userName="nextaccountic" createdAt="2025-03-17T10:54:05" color="">}}

{{<matomeQuote body="リッチテキストエディタっぽく見せるために、いろんなトリックやセマンティクスを駆使した、動的なテキストボックスだと思ってた。" userName="nashashmi" createdAt="2025-03-17T00:19:52" color="">}}

{{<matomeQuote body="＞’動的なテキストボックス’って具体的に何を指してるのかわかんないけど、ただのcontenteditableなdivだったんだよ。僕が関わってから少なくとも2回は完全に書き直されてるみたいで、今は canvasを使って全部JavaScriptで編集とかレイアウトとかレンダリングを’手動’でやってるんだって。" userName="snewman" createdAt="2025-03-17T06:26:24" color="#ff33a1">}}

{{<matomeQuote body="PHPのフォーラムで使われてるテキストエリアみたいなやつ…フォーカスが外れるたびに隠れて、代わりにHTMLベースのレイアウトが表示されるような。あれはゴツゴツしてたけど、Writelyを可能にしたのはあれだと思ってた。ContentEditableを知ってたら、すごく気が楽だっただろうな。IE6は対応してたのかな。" userName="nashashmi" createdAt="2025-03-17T15:19:56" color="">}}

{{<matomeQuote body="マジすごいよね。2016年ごろは中小企業向けのサイトを色々作っててさ、WPとかで大体できるんだけど、(1)WPのスタイリングがマジめんどいし、メンテしたくない、(2)プラグインとかWPのアップデートに頼りたくない、(3)アクセス権限が違う人が同じページの色んな場所を編集できるようにしたかったんだよね。だから、contenteditableとTinyMCEだけでCMSを自作したんだ。クライアントとかがログインしたら、権限のある場所を編集できるってわけ。編集できる場所は点線で囲って、フォントとか色とかはTinyMCEに保存されるから、HTMLいじらなくてもOK。編集ページに行かなくても、ページ上で直接編集して保存できるから、クライアントは感動してたよ。作ったサイトは5～10年経っても動いてるし、メンテもほぼ不要。" userName="noduerme" createdAt="2025-03-16T07:12:14" color="#ff5733">}}

{{<matomeQuote body="2009年頃、うちの大学がRedDotっていうエンタープライズCMSを導入したんだけど、コンテンツの横に赤い点があって、クリックすると編集できたんだよね。裏側は他のCMSと同じくらいクソだったけど、ユーザーにはマジで好評だった。" userName="swiftcoder" createdAt="2025-03-16T09:38:18" color="#38d3d3">}}

{{<matomeQuote body="へー、RedDotなんて初めて聞いたけど、ユーザーにはウケそうだね。今どきの小さなサイトのオーナーって、レストランとか家具屋とか弁護士とか、外部の販売プラットフォームは持ってるじゃん。だから、時々自分のウェブコンテンツを簡単に編集したいだけなんだよね。俺のCMSは商用化しなかったけど、ホスティング代で年間200ドルくらいもらえれば十分かな。コードはPHP5000行とJavaScriptとCSSが数百行くらい。MySQLでページを読み書きするようにうまく作ってあるんだ。写真のドラッグ&ドロップとかもできるよ。WPみたいな構造じゃなくても、こういうのはできるんだよね。<br><br>＞https://thebarkerlounge.com<br>＞https://vickmanassociates.com" userName="noduerme" createdAt="2025-03-22T06:25:19" color="#ff33a1">}}

{{<matomeQuote body="RedDotかー、懐かしいな！" userName="connorgurney" createdAt="2025-03-16T14:59:26" color="">}}

{{<matomeQuote body="数週間前にcontenteditableのライブデモを作ったよ。HTMLのシンプルだけどパワフルな隠れた機能だよね。<br><br>https://news.ycombinator.com/item?id=43179649" userName="hakaneskici" createdAt="2025-03-16T05:11:38" color="">}}

{{<matomeQuote body="これいいね。昔、PDFエディタをHTMLに変換して、一番上のdivにcontenteditable=”true”をぶち込んだらできたよw" userName="shashanoid" createdAt="2025-03-16T05:02:33" color="#ff5c5c">}}

{{<matomeQuote body="俺も同じアイデア試したけど、Firefoxじゃダメだった。PDFのコンテンツが2つ作られちゃうんだよね。1つはテキストで透明度0、もう1つはレンダリングされた画像。表示されるのは後者。だから、contenteditableを有効にしてもカーソルは出るけど、編集しても表示されないんだ。残念。" userName="eps" createdAt="2025-03-16T08:43:38" color="">}}

{{<matomeQuote body="PDFをHTMLに変換するのに何を使ったの？" userName="vhantz" createdAt="2025-03-16T14:56:38" color="">}}

{{<matomeQuote body="「すごいものがあるぞ、それは車輪っていうんだ。結構前からあるんだけどね」みたいな話に聞こえるな。俺は20年前からcontenteditable使ってるけど。ContentEditableはIE 5.5で2000年に初めて導入されて、2007年には主要なブラウザで使えるようになった。" userName="rad_gruchalski" createdAt="2025-03-16T14:10:42" color="">}}

{{<matomeQuote body="めっちゃいいね。ソース見たらvanilla jsで書いてるんだ。すごいね。最近はライブラリとかフレームワークなしでも、インタラクティブなウェブアプリが作れるんだよね。俺もシンプルなウェブアプリをHTML1枚で作るのが好き。ちょっと前に子供と科学博物館に行って、ストップモーションアニメーターで遊んだんだけど、それと同じようなウェブアプリを作って、子供のラップトップにコピーしてあげたんだ。Reactとbundlerを使ったけど、vanilla jsで書くのがめんどくさかったから。いつかShow HNで公開するかも。" userName="godot" createdAt="2025-03-16T03:31:47" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="マジでさー、「jQueryなんていらねーよ」って言ってた頃みたいに、「React（とかVueとかSvelteとか、その他もろもろも）なんていらねーよ」って言うべきだよねー。<br>普通のJavaScriptとそこそこのスキルがあれば、ほとんど何でもっとクリーンでメンテしやすい方法でできるって。<br>何十年も他人の作ったもんメンテしてきた経験から言うと、賢い人が作ったアホみたいな設計が一番マシ。" userName="kristopolous" createdAt="2025-03-16T04:58:13" color="#ff5733">}}

{{<matomeQuote body="もちろんデメリットもあるよ。JavaScriptでコード書くハメになるってこと。" userName="johnecheck" createdAt="2025-03-16T14:33:20" color="">}}

{{<matomeQuote body="ちゃんと学べばいいじゃん。直感で何とかしようとして、言語をちゃんと理解しようとしないから、簡単に解決できるはずのものをモンスターみたいなコードにしちゃうんだよ。" userName="kristopolous" createdAt="2025-03-16T18:35:06" color="">}}

{{<matomeQuote body="それって何と比較して言ってんの？TypeScript使ってコンパイルすることもできるし、esbuildでバンドルすることもできるじゃん。" userName="jasonjmcghee" createdAt="2025-03-16T16:41:51" color="">}}

{{<matomeQuote body="Quartoのこういうとこ、マジで好き。スタンドアロンのHTMLファイル作って、人に簡単に共有できるし。" userName="memhole" createdAt="2025-03-16T16:39:53" color="">}}

{{<matomeQuote body="すごいね！ローカルディスクからブラウザで開いた時は自動的に編集モードになって、ウェブサイトに公開されてアクセスされた時（http/httpsかどうかチェック）は普通の読み取り専用モードになるようにしたらどうかな？<br>もちろん、上書きする方法（クエリ文字列とか）も必要だし、特定のドメイン（keepworking.github.ioとか）は例外にして編集モードにするのが良いと思うよ。ユーザーが変更できるようにするのがベスト。" userName="cxr" createdAt="2025-03-15T23:14:40" color="#ff33a1">}}

{{<matomeQuote body="コンテンツを編集してローカルに保存できるウェブサイトのアイデア、マジで良いと思う。これは素晴らしいし、このままでいてほしい。" userName="zaphod420" createdAt="2025-03-16T02:49:42" color="#ff33a1">}}

{{<matomeQuote body="それ、実はWWWの初期のバージョンで意図されていたことなんだよね。" userName="dotancohen" createdAt="2025-03-16T05:09:25" color="">}}

{{<matomeQuote body="あなたは私のコメントも、現在の読み取り専用モードの仕組みも、マジで理解してないね。" userName="cxr" createdAt="2025-03-16T08:10:26" color="">}}

{{<matomeQuote body="https://rpdillon.net/redbean-tiddlywiki-saver.html を使えば、保存機能もつけて、完全に自己完結したポータブルなものにできるよ。" userName="mikae1" createdAt="2025-03-16T00:21:10" color="">}}

{{<matomeQuote body="前に似たようなの作ったことあるんだよね。https://original.littr.me で見れるよ。" userName="mariusor" createdAt="2025-03-18T13:08:34" color="">}}

{{<matomeQuote body="ファイルを保存する機能があると嬉しいな。そうすれば、プライベートなブックマークとして使える可能性が広がるよね。" userName="Alive-in-2025" createdAt="2025-03-16T02:28:42" color="#38d3d3">}}

{{<matomeQuote body="ナイスジョブ！このアイデアについては以前にも議論があって、TiddlyWiki のことが話題になってたよ。https://news.ycombinator.com/item?id=43179649" userName="hakaneskici" createdAt="2025-03-16T00:22:12" color="">}}

{{<matomeQuote body="この分野で俺が気に入ってるのは Feather Wiki かな。https://feather.wiki/" userName="justin_oaks" createdAt="2025-03-16T04:48:04" color="">}}

{{<matomeQuote body="HNに投稿する前に、地元のコミュニティで共有したら、同じ2つの機能について言われたんだよね。俺のプロジェクトでは、名前を”Note”じゃなくて”Page”か”Document”にすればよかったかも。" userName="yevgenyhong" createdAt="2025-03-16T11:56:06" color="">}}

{{<matomeQuote body="ブラウザがローカルのウェブアプリをもっとサポートしてくれたらいいのにな。ローカルファイルが簡単に永続ストレージにアクセスできるようになれば、手軽なGUIアプリの可能性が広がると思うんだ。Electronの逆みたいな感じ。" userName="alwayslikethis" createdAt="2025-03-16T00:09:17" color="#ff5c5c">}}

{{<matomeQuote body="実行ファイルもファイルだよ。" userName="Timwi" createdAt="2025-03-16T08:41:00" color="">}}

{{<matomeQuote body="それなら、アクセス権を持ってるのはランタイムってことになるよね。つまり、ユーザーがbashスクリプトを実行してるファイルへのアクセス権があるかどうかによるってこと。" userName="npodbielski" createdAt="2025-03-16T12:03:59" color="">}}

{{<matomeQuote body="ランタイムやOSもファイルで構成されてるんだよ。" userName="Timwi" createdAt="2025-03-20T10:18:31" color="">}}

{{<matomeQuote body="これ、マジでクールじゃん！なんか変な話だけど、ウェブサイトのJSってHTMLの外に書くのが当たり前になっちゃってるから（少なくとも俺はそう）、これ見て最初に思ったのが「HTMLだけでこんなことできるの、マジか！」ってことだったんだよね。で、ソース見たら普通の＜script＞タグの中にJSが書いてあって、「ああ、そういえばこれってアリだったわ」って思い出した。" userName="genshii" createdAt="2025-03-16T00:01:52" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="HTMLってマジで過小評価されてるよね。俺らが毎日見てる画面のほとんど、コードエディタとかもHTMLページじゃん。" userName="hakaneskici" createdAt="2025-03-16T00:34:24" color="">}}

{{<matomeQuote body="VIMがHTMLページだって？それともJetBrainsのエディタがHTMLページをレンダリングしてるってこと？<br>確かにElectronでレンダリングされたHTMLページでコーディングしてる人もいるけど、AtomとかVS Codeとかね。でもそれって少数派じゃん。「俺らのコードエディタ」って言い方はちょっと大げさすぎない？" userName="dotancohen" createdAt="2025-03-16T05:11:55" color="">}}

{{<matomeQuote body="スレッドの他のコメント見てみて。SOによると開発者の3/4だって。" userName="sanex" createdAt="2025-03-16T13:48:14" color="">}}

{{<matomeQuote body="オタクって呼ばれてもいいけど、開発者の3/4が業界全体の3/4を代表してるわけじゃないと思うんだよね。特にHNの開発者の3/4はね。<br>＞According to: <br>＞https://survey.stackoverflow.co/2024/technology#most-popular...<br>＞It seems that the order of most used technologies on SO is JS, SQL, HTML, CSS, and only then Python. We skip back to TypeScript and then Bash before finally getting to Java, C#, and C++.”<br>Stack Overflowのアンケートに自ら参加する人たちが、業界全体を代表してるとは思えないんだよね。" userName="dotancohen" createdAt="2025-03-18T07:19:08" color="">}}

{{<matomeQuote body="＞Call me a neckbeard, but 3/4 of devs are not representative of<br><br>こう書くべきだったね。<br>＞オタクって呼んでくれてもいいけど、Stack Overflowのアンケートに答えてる開発者の3/4は、業界全体を代表してるわけじゃない。" userName="dotancohen" createdAt="2025-03-19T11:29:32" color="">}}

{{<matomeQuote body="え、違うくない？<br>俺のコードエディタはNeoVimかIntelliJだけど、HTMLページなんて全然関係ないし。<br>言いたいのは、VSCodeの利用状況を拡大解釈しすぎだってこと。" userName="OtomotO" createdAt="2025-03-16T01:03:53" color="">}}

{{<matomeQuote body="最新のstack overflowの開発者アンケートによると、回答者の74%がVSCodeを使ってるらしいよ。かなり安全な発言だと思うけど。" userName="sanex" createdAt="2025-03-16T01:14:39" color="">}}

{{<matomeQuote body="なんか分かるなー。俺も、みんながVSCode使ってるみたいな言い方をされるのが嫌なんだよね。ちょっとムカつくって言うか。（元々の発言があいまいだから、そう理解することもできる。）<br>それにしても、使ってもないソフトウェアのことで、こんな感情が湧いてくるなんて、HTMLの普及に関する何の悪気もない発言からだよ？なんか面白い。" userName="dxdm" createdAt="2025-03-16T03:38:10" color="#ff5733">}}

{{<matomeQuote body="ごめん、誰かを不快にさせるつもりはなかったんだ。<br>でも、なんでそう感じたのか、マジで知りたいんだよね。VSCodeを使うのが恥ずかしいことだと思われてるのか、それともMicrosoftの製品だから？<br>PS: 個人的な経験からVSCodeに強いポジティブな偏見があるから、開発者の視点を理解したいんだ。" userName="hakaneskici" createdAt="2025-03-16T05:23:44" color="#ff33a1">}}

{{<matomeQuote body="ごめん、誰かを怒らせるつもりはなかったんだ。わかってるって、謝ることないよ。時々、人って（俺みたいに）何でもないことで腹立てたりするし、誰かを責めるより、なんでそうなっちゃうのか考える方が面白いじゃん？もちろん逆もアリだけど、気をつけてないと自分の怒りを押し付けちゃうからさ。でも、VSCodeの話に戻ろう。<br><br>VSCodeについてはマジで主観的な話で、感情的な反応になっちゃうんだよね。VSCodeが多くの人にとって便利で実用的なツールだってことはわかってる。でも、なんか嫌な感じがするんだよなー。理由はこんな感じ。<br><br>ブラウザみたいなもんでテキスト編集するってのが、なんか違う気がするんだよね。豪華客船でレストラン行くためだけに乗るみたいな。<br><br>それにMicrosoft製だし。昔のMicrosoftはマジで性格悪かったの覚えてるからね。囲い込みしようとしてたし、Internet Explorerでその片鱗が見えたし。今でこそおとなしくなったけど、信用できないんだよ。<br><br>だから、なんか気持ち悪いんだよねー。Microsoftみたいな会社が無料で配ってる、ブラウザみたいなエディタを使うのがさ。（Chromeも同じような理由で好きじゃない。）<br><br>だから、ちゃんとしたエディタとかIDEを使いたいんだよね。そういうツールを作るのが目的の人たちが作って、お金払えるやつ。（購入とか寄付で）まとめると、VSCodeは良くできてるけど、使うと気持ち悪いし、同じくらいかそれ以上の代替ツールがあるから、そっちを使うって感じ。<br><br>だから、もし誰かが俺がVSCodeを喜んで使ってるみたいなこと言ったら、泥を投げつけられたみたいに感じるんだよね。だから、誤解を解きたいって思うんだ。<br><br>ほんと、こういうのって不思議だよね。こういうこと考えると、人がどうやって他人と関わってるのか、ちょっとわかる気がする。" userName="dxdm" createdAt="2025-03-16T07:20:37" color="">}}

{{<matomeQuote body="了解！誰かにTypeScriptとかReact使ってるって思われたら、同じ気持ちになるかも(笑)<br><br>ちょっと自己分析してくれそうだったから、思い切って聞いてみたんだ。説明しにくいことを説明してくれてありがとう！<br><br>2007年にMicrosoftに入社した時、Visual StudioにはJavaScriptのシンタックスハイライトすらなかったんだぜ。何年も経ってから、MicrosoftがIBMのEclipse IDEプロジェクトからErich Gammaを雇った時はマジで興奮したな（長くなるから割愛）。VSCodeは元々Monaco editorって名前で、WinJSライブラリの上に作られた、ただのWebコンポーネントだったんだ。それが何年もかけて今の形になったんだよ。<br><br>VSCodeが”Microsoft製品”って見方、めっちゃわかるけど、VSCodeは俺にとって数少ない例外なんだよね。理由はさっき言った通り。" userName="hakaneskici" createdAt="2025-03-16T08:08:55" color="#ff5c5c">}}

{{<matomeQuote body="意見と背景を教えてくれてありがとう。全然違う視点からの意見を聞けて面白いよ。この件について、より深く理解できた。" userName="dxdm" createdAt="2025-03-16T14:49:55" color="#38d3d3">}}

{{<matomeQuote body="＞even if they have taken on a more benign appearance.”<br><br>＞一見おとなしくなったように見えても”<br>昔の性格悪いMicrosoftはまだ健在だよ。ただ、その悪い行いが大企業とか政府関係に限定されてるから、表に出にくいんだよね。過去5年のニュースを見てみればわかるよ。" userName="mixmastamyk" createdAt="2025-03-16T17:57:25" color="">}}

{{<matomeQuote body="Vimに関するジョークだけどさ、俺が子供の頃タイプライターに触れてたせいで、Vimをエディタとして使えないんだよね(笑)<br><br>タイプする以外の目的で文字キーを押すのが、マジで変な感じがするんだ。SHIFTキーをタイプライターの文字を大文字と小文字に切り替える物理的なものだと思ってるのかも。<br><br>Vimを使いこなしてる人を見ると、すごいなーって思うよ。" userName="hakaneskici" createdAt="2025-03-16T03:15:18" color="">}}

{{<matomeQuote body="めっちゃわかる。俺もタイプライター使ってたし、最初のコンピュータはMac Plusだったし。Vimはマジで異質に感じた。<br><br>でも、思い切って試してみることにしたんだ。今まで学んだことを全部捨てて。今では毎日neovimを使ってるよ。kickstart.nvimのおかげで、毎日のコーディングで使えるようになったんだ。" userName="zaphod420" createdAt="2025-03-16T03:40:49" color="#45d325">}}

{{<matomeQuote body="IntelliJにも色々なWebViewがバンドルされてるはず。<br><br>それに、”ほとんど”って言ってるから、VSCodeの使用状況を推定するのは妥当だと思う。" userName="harrisonjackson" createdAt="2025-03-16T01:18:41" color="">}}

{{<matomeQuote body="分離性とかバージョン管理を重視するなら、やらない方がいいかもね。でも、”できる”ってことは確か。<br><br>マジで理解できないのは、JavaScriptですらないものをHTMLに含めて、外部JSでアタッチしたりハイドレートしたりするフレームワークを使ってる人たち。それって最悪じゃん。<br><br>俺は完全に逆で、JavaScript至上主義なんだよね。index.html以外に”.html”拡張子のファイルはないし。JavaScriptの中にHTMLも書かない。テンプレートの一部は”.htm”ファイルにして、DOMに追加する前にハイドレートしてる。" userName="noduerme" createdAt="2025-03-16T07:21:14" color="">}}

{{<matomeQuote body="提案：編集したのに保存せずにページを閉じようとしたら、警告を出すべき。onbeforeunloadハンドラを追加することを検討して。" userName="lifthrasiir" createdAt="2025-03-16T00:03:33" color="#45d325">}}

{{<matomeQuote body="このWebページには今、閉じる時に警告が出るようになってるけど、一般的に良い提案だよね。" userName="gradientsrneat" createdAt="2025-03-16T17:52:30" color="#ff5733">}}

{{<matomeQuote body="こういうシンプルなツールって良いよねー。俺も最近、簡単なカスタム「ホームページ」/ダッシュボード作ったんだ。<br>https://github.com/rcarmo/onepage-by-spec" userName="rcarmo" createdAt="2025-03-16T09:57:09" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="保存機能も追加したよ。" userName="rcarmo" createdAt="2025-03-16T11:36:35" color="">}}

{{<matomeQuote body="マジでこれ好き。ローカルで簡単にできる機能をサブスクリプションに閉じ込めるの、マジ勘弁。<br>今、ブラウザだけで動く無料のMarkdownエディタ作ってて、Chromium系ブラウザ限定だけど、新しいfilesystem access APIでローカルファイルを編集できるんだ。<br>https://zareith.github.io/chillmd/" userName="zareith" createdAt="2025-03-16T05:11:29" color="#38d3d3">}}

{{<matomeQuote body="おー、懐かしのcontenteditable。<br>これが一番シンプルかも。アドレスバーに直接書く:<br>data:text/html, <html contenteditable><br>ユニコード対応するには、もうちょっと長いURIが必要だけどね。<br>関連Hacker Newsディスカッション:<br>https://news.ycombinator.com/item?id=6005295<br>https://news.ycombinator.com/item?id=5135194" userName="gradientsrneat" createdAt="2025-03-16T17:49:30" color="">}}

{{<matomeQuote body="どうもー！ナッシュって名前です。<br>https://nashkabbara.com" userName="nkabbara" createdAt="2025-03-21T16:20:14" color="">}}

{{<matomeQuote body="これってある意味ウイルスみたいでクールじゃね？JSのソースコードを毎回保存するから、そのファイルが他のファイルも作れるんだよ。でも、悪用もできそう。スタンドアロンに悪意のあるスクリプト仕込んで、誰かがターゲットに送るまで発動しないとか…" userName="noduerme" createdAt="2025-03-16T07:17:34" color="">}}

{{<matomeQuote body="最近TiddlyWikiでローカルwiki作ろうとして挫折したんだけど、NashのおかげでHTMLファイルを直接書く作業が楽になりそう！ありがとう！<br>あと、これTOCに便利だよ。<br>https://codepen.io/cgurski/pen/qBrNrPo" userName="croisillon" createdAt="2025-03-15T22:57:44" color="#38d3d3">}}

{{<matomeQuote body="ナイスワーク！<br>Webstrates(webstrates.net)って研究プロトタイプを作ってて、最近ローカル版のMyWebstrates(https://github.com/Webstrates/MyWebstrates)を作ったんだ。<br>NashのHTMLをMyWebstratesにコピーしたら、ちゃんと動いたよ。リアルタイムコラボもできるよ！" userName="clemensnk" createdAt="2025-03-16T10:22:44" color="#785bff">}}

{{<matomeQuote body="マジですごい。<br>後でちゃんと勉強しよ。" userName="yevgenyhong" createdAt="2025-03-16T11:59:47" color="">}}

{{<matomeQuote body="まさに同じこと言おうと思ってた！これにハマった。もっとちゃんと読んで理解したい。" userName="pimbrouwers" createdAt="2025-03-16T13:09:50" color="">}}

{{<matomeQuote body="これマジでいいね！俺も似たようなの作ったことあるんだよねー。もっとシンプルだけど。でも毎日使ってるよ！これ見てみて→ https://tabnotes.page (なんかメモってみて)" userName="d_philla" createdAt="2025-03-16T14:31:46" color="#38d3d3">}}

{{<matomeQuote body="これ覚えてる！ちょっと使ってた時期あったわ。アイデア最高じゃん。" userName="rjsteixeira" createdAt="2025-03-16T18:16:10" color="">}}

{{<matomeQuote body="ローカルストレージに一つのメモだけ？何に使うの？" userName="brulard" createdAt="2025-03-16T18:57:15" color="">}}

{{<matomeQuote body="マジで急いで何かメモしたい時用かな。起動時間ほぼゼロで、パッと新しいタブ開いて考えを書き留めるみたいな。複雑なことしてる時に考えを忘れがちだから、”書き留めるまでの時間”が一番重要なんだよね。" userName="d_philla" createdAt="2025-03-17T13:42:08" color="#ff33a1">}}

{{<matomeQuote body="これってTiddlyWiki (https://tiddlywiki.com/) に似てる？" userName="joleyj" createdAt="2025-03-15T23:22:13" color="">}}

{{<matomeQuote body="確かに似たようなアイデアだね。" userName="20after4" createdAt="2025-03-15T23:27:11" color="">}}

{{<matomeQuote body="HTMLの部分はそうかもだけど、TiddlyWikiはアイデア同士を繋げることもできるんだよね。<br>これはスタンドアロンのHTMLファイルってところに重点を置いてると思う。<br>同じように、WebTorrentとSTUNサーバー使ってP2PアプリをスタンドアロンHTMLファイルで配布することもできるよね。少なくとも昔はできたはず。スタンドアロンHTMLファイルが本格的なアプリになるってこと。" userName="melvinroest" createdAt="2025-03-15T23:58:28" color="">}}

{{<matomeQuote body="モバイルSafariで試してみた。<br>単語をハイライトしてフォントのコントロールを使うと、ハイライトされたままになっててほしいんだけどなー。<br>あと、ボールドとかイタリックみたいな書式をもう一度選択しても解除できないみたい。" userName="Tepix" createdAt="2025-03-16T05:59:06" color="">}}

{{<matomeQuote body="これ結構クールだけど、’Save’と’Share’の違いがよく分かんないんだよね。どっちもただファイルを保存するだけに見える。" userName="pgreenwood" createdAt="2025-03-16T01:35:25" color="">}}

{{<matomeQuote body="Saveはa href (リンク) でdownload属性 (https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#...) を使ってて、普通のファイルダウンロードが始まるはず。<br>ShareはNavigator.share (https://developer.mozilla.org/en-US/docs/Web/API/Navigator/s...) を使ってて、ブラウザに”共有”メニューがあればそれが開くはず。" userName="layer8" createdAt="2025-03-16T02:06:46" color="#785bff">}}

{{<matomeQuote body="マジか、こういうの探してたんだよね。でも、バックエンドがローカルストレージだと、自分のreframe[1]に組み込めるからもっと嬉しいな。<br>新しいタブ開くたびに、そこそこイケてるテキストエディタでメモとか取りたいじゃん？<br>[1] https://reframe.canine.sh/czhu12" userName="czhu12" createdAt="2025-03-16T01:26:22" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
