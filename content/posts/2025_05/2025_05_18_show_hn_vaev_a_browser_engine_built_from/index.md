+++
date = '2025-05-18T00:00:00'
months = '2025/05'
draft = false
title = 'Vaev 爆誕！ゼロから構築されたブラウザエンジンがgoogle.comのレンダリングに成功'
tags = ["ブラウザエンジン", "プログラミング", "Web開発", "C++", "レンダリング"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Vaev 爆誕！ゼロから構築されたブラウザエンジンがgoogle.comのレンダリングに成功

引用元：[https://news.ycombinator.com/item?id=44023144](https://news.ycombinator.com/item?id=44023144)




{{<matomeQuote body="よくやったね、これマジクールだよ。モダンなC++が使われてるの見るのいいね。コードベースも読みやすくて分かりやすいわ。みんな Rust じゃないって事実を受け入れるべきだよ。俺は自分のプロジェクトで C++ 使うの好きだから使ってる。無理して Rust とか使わされたら書かないもん。" userName="mirsadm" createdAt="2025/05/19 07:08:04" color="">}}




{{<matomeQuote body="この C++ コードめっちゃモダンだね。超感心した。 GitHub のウェブインターフェースだけだと、 Gc::Ref の定義が見つけられなかったんだ。どこで見れるの？" userName="throwaway2037" createdAt="2025/05/19 03:06:57" color="">}}




{{<matomeQuote body="多分これじゃないかな - https://github.com/skift-org/karm/blob/main/src/libs/karm-gc…<br>で、これ伝統的なガーベージコレクターじゃなくて、アリーナにスマートポインター合わせた感じかな。" userName="Lockal" createdAt="2025/05/19 03:42:25" color="#ff5733">}}




{{<matomeQuote body="これただのプレースホルダー実装だよ、そのうちちゃんと GC やるから。" userName="monax" createdAt="2025/05/19 03:53:31" color="#38d3d3">}}




{{<matomeQuote body="俺もソースコード読んでて同じこと思ったよ - 伝統的な c++ と、最新の c++20 features 使ってるプロジェクトとの面白い組み合わせだね。 Gc::Ref は karm-gc ライブラリから来てるみたい。（ copilot によると）" userName="lodovic" createdAt="2025/05/19 05:00:16" color="">}}




{{<matomeQuote body="これマジすごいね！ゼロからブラウザエンジン作るなんてマジで大変な偉業だよ、特に calc()、 var()、 percentage units みたいな複雑な CSS 機能扱うのとかさ。ウェブの内部の動き学ぶのに最高だね。<br>ネットワーキングスタックのアプローチに興味あるんだ。将来的には HTTPS とか WebSockets みたいなもっと多くのプロトコルサポートする予定なの、それとも今は軽量でミニマルにフォーカスする感じ？" userName="Koshima" createdAt="2025/05/19 11:02:29" color="#ff33a1">}}




{{<matomeQuote body="学習以外で、このプロジェクトの長期的な目標って何？モダンウェブをサポートするブラウザ作るのって、俺的にはマジで途方もない仕事だと思うけど。" userName="abhisek" createdAt="2025/05/18 18:44:17" color="#38d3d3">}}




{{<matomeQuote body="主な目標は静的ドキュメントのレンダリングをしっかりサポートすることだよ。 odoo で wkhtmltopdf を置き換えるための paper-muncher [1] PDF レンダリングエンジンのコアで使われてるからね。でも、いつか一般的なウェブブラウジングや JavaScript サポートも排除しないよ。<br>[1] https://github.com/odoo/paper-muncher" userName="monax" createdAt="2025/05/18 18:51:22" color="#ff5c5c">}}




{{<matomeQuote body="おお、過去の経験が蘇るね！前の会社で wkhtmltopdf から nodejs ( phantomjs / puppeteer ) に移行したんだ。 chrome の起動コストを避けるため、ページコンテキストを開きっぱなしにして、 Linux pipe 経由で html を渡すテクニックを使って高速化したんだよ。 WK よりマジで速かった（〜20ms）！" userName="dmkolobov" createdAt="2025/05/18 19:46:07" color="#45d325">}}




{{<matomeQuote body="そうだよ！そのアイデアを思いついた午後のこと覚えてるよ。Beer Fridayで、ほんの数時間でPDFを数百ミリ秒でレンダリングする基本的なプロトタイプを書いたんだ。100倍の速度改善を初めてやった時で、すごく興奮したな。" userName="dmkolobov" createdAt="2025/05/18 23:13:33" color="">}}




{{<matomeQuote body="おめでとう！このやり方って、ブラウザエンジンをゼロから書くよりずっと理にかなってると思わない？" userName="mherrmann" createdAt="2025/05/19 05:58:17" color="">}}




{{<matomeQuote body="何をレンダリングするかによるかな。うちは自分たちで作ったHTMLで楽だったけど、任意ユーザーのHTMLは大変そう。印刷レンダリングは当時も今も扱いにくいし、色の調整、SVGs、ページ割りが難しいんだ。ちゃんとやるのが大変だったよ。<br>セキュリティもリスク大だよ。ページ内でコード実行されたら、生成されるPDF覗き見されるかもね。" userName="dmkolobov" createdAt="2025/05/19 18:15:20" color="#ff5733">}}




{{<matomeQuote body="職場で最近、WkhtmltopdfからTypstに切り替えたんだけど、すごく快適になったよ。HTMLやブラウザエンジンを使わずPDFをゼロから生成するからめっちゃ速いんだ。Rust実装で自己完結バイナリだよ。<br>このブログで切り替えの価値を確信したな：https://zerodha.tech/blog/1-5-million-pdfs-in-25-minutes/" userName="giovannibonetti" createdAt="2025/05/18 23:31:57" color="#45d325">}}




{{<matomeQuote body="へえ、面白いね。彼らの”old stack”は小規模PJで問題なく動くけど、一つのファイル形式変換にChrome instance丸ごと立ち上げるのは、ちょっとばかげてる気もするね。" userName="stevage" createdAt="2025/05/18 23:56:06" color="">}}




{{<matomeQuote body="私もTypst大好きでよく使ってるよ。でも、これも念のためだけど：weasyprint.orgってのもあって、HTMLを入力として取るんだ。" userName="karteum" createdAt="2025/05/19 00:10:01" color="">}}




{{<matomeQuote body="ページのマージンボックスはサポートしてる？" userName="kabes" createdAt="2025/05/19 05:10:44" color="">}}




{{<matomeQuote body="うん、してるよ！" userName="monax" createdAt="2025/05/19 10:09:33" color="">}}




{{<matomeQuote body="skiftはSerenity OSみたいにホビーOSっぽいね。Ladybirdはそこから派生？同じ道をたどるのかな？" userName="pierrelf" createdAt="2025/05/18 18:51:56" color="">}}




{{<matomeQuote body="SkiftとVaevはクロスプラットフォームだからずっと一緒にやるつもりだよ。構成上、変える理由になる対立もないね。" userName="monax" createdAt="2025/05/18 19:11:45" color="#785bff">}}




{{<matomeQuote body="ハハ！数日前、ブラウザは新しいマウスだって言ってたんだ。マウスみたいに、metalとかplasticとかtransistorsとかlasersとか、色んな分野の専門家が必要なんだ。Gatewayとなるウェブブラウザも同じ。ここまで作ったのはすごいね！さあ、hatを食べる前にwebglが動くか見てみようかな。" userName="firefoxd" createdAt="2025/05/19 04:06:13" color="">}}




{{<matomeQuote body="このプロジェクトは一人じゃなくて、四人でやってるよ。" userName="munchler" createdAt="2025/05/19 05:05:24" color="">}}




{{<matomeQuote body="ミニマリストなブラウザが出るたびに、これ言いたくなるんだ。代替ブラウザでWeb標準の一貫したサブセットを標準化してドキュメント化できたら、”smolweb”好きの人がサイト作る時にそれをターゲットにできるし、代替ブラウザ作る人も全部実装しなくて済む。”Gemini”みたいな新しいプロトコルより、既存ブラウザとの後方互換性があるこのやり方が好きだな。<br>" userName="khimaros" createdAt="2025/05/18 20:30:04" color="#45d325">}}




{{<matomeQuote body="そのサブセットは、例えばHTML 4.01とかCSS 2.1みたいな古いバージョンの仕様でいいかもね。（これもブラウザエンジンをちまちま作ってる一人の意見だよ）" userName="userbinator" createdAt="2025/05/18 21:30:30" color="#ff33a1">}}




{{<matomeQuote body="Web標準のサブセット化だけど、メールで使えるHTML/CSSのサブセットをベースにできるかな？インタラクティブな要素を少し足してさ。" userName="idle_zealot" createdAt="2025/05/18 22:47:02" color="#45d325">}}




{{<matomeQuote body="知る限り、”email HTML”も標準化されてないんだよね。見栄えのいいHTMLメール作る組織は、色々なクライアントでテストして、全部同じに見えるように回避策をたくさん考えなきゃいけないんだ。" userName="43920" createdAt="2025/05/19 03:37:20" color="">}}




{{<matomeQuote body="インタラクティブな要素を少しって… JavaScriptとか？" userName="OJFord" createdAt="2025/05/19 03:33:59" color="">}}




{{<matomeQuote body="TableじゃなくてCSS Gridみたいな新しい標準の方がいいやり方だと思うな。HTML/CSSの改善の多くは単なる肥大化じゃなくて、実際により良い土台となる標準なんだよ。" userName="ghayes" createdAt="2025/05/18 22:00:49" color="#785bff">}}




{{<matomeQuote body="email HTMLって標準化できるのかな？" userName="notpushkin" createdAt="2025/05/19 06:24:02" color="">}}




{{<matomeQuote body="Apple、Google、Microsoftに自分の標準を実装するよう説得できたら、そりゃすごいね。いろんな試みがあったけど、成功はいろいろだったよ。でも、その標準はWindowsのOutlookでもレンダリングできる必要があって、つまりヘンテコなOffice版のIE11を上限としてサポートしなきゃいけないんだよね。" userName="jeroenhd" createdAt="2025/05/19 09:17:37" color="">}}




{{<matomeQuote body="小規模Web出版にはいいかもね。でも既存のブラウザ標準のサブセットにするのは難しいと思う。Webの仕様は毎日変わるから、新しい実装はすぐに互換性のない独自路線になっちゃう。Ladybird、Servo、Vaevみたいな参照実装が小規模Webの標準になるのが一番じゃないかな。そうすれば、ブラウザプロジェクトも大規模Web対応で資金を得られるしね。Ladybirdのlibwebを使ったWebオーサリングツールとかどうかな？それが標準になる可能性もあるしね。" userName="graypegg" createdAt="2025/05/18 21:11:10" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="”Outlook (New)”はReact NativeとChromium webviewで動いてるよ。Outlook Mobileからの移行は進んだけど、Outlook (Classic)（法人向け）からの移行は、古いWordベースのIEを使い続けてて滞ってるみたい。Outlook MobileはIE11よりマシでChromiumになってるよ。" userName="WorldMaker" createdAt="2025/05/19 15:54:09" color="#38d3d3">}}




{{<matomeQuote body="アクセシビリティに特化した標準サブセットはどうかな。不要な機能はアクセシビリティの悪夢だしね。政府が標準化して、複雑なHTMLサイトを取り締まるのに使えるかも。Webアプリは進歩だけど、動的なHTMLは悪夢。昔ながらのフォームは使いやすかったね。<br>（補足：昔jsフレームワークやSPAを書いてたよ。）" userName="robocat" createdAt="2025/05/18 22:48:47" color="#38d3d3">}}




{{<matomeQuote body="アクセシビリティの観点から：CSSでテーブルデータを表現するのをやめてください。それは俺のスクリーンリーダーには変換されません。" userName="shakna" createdAt="2025/05/19 06:15:06" color="">}}




{{<matomeQuote body="みんなもうCSSでflexboxないと嫌なんだってさ。必須になっちゃったね。" userName="Inviz" createdAt="2025/05/19 02:17:28" color="">}}




{{<matomeQuote body="HTML/CSSは古い遺産や変な癖がいっぱいあるから（例えば＜hr＞タグとか、tableセルがフォントサイズ継承しないとか）、新しい標準作っちゃった方がいいかもね。" userName="codedokode" createdAt="2025/05/19 08:46:03" color="#ff33a1">}}




{{<matomeQuote body="サイトってよく基本的なとこ間違えるんだよね。motherfuckingwebsite.comにあるタグ（＜p＞, ＜a＞, ＜h*＞, ＜img＞, ＜ruby＞みたいな）だけサポートして、他はwebcompat/fixbrowserみたいに対応したらいいんじゃない。" userName="GoblinSlayer" createdAt="2025/05/19 11:18:08" color="#38d3d3">}}




{{<matomeQuote body="なんかDOM levelsみたいだね。結局みんな”Living Standard”って言って諦めちゃったけど。こういうのって今でも必要だと思うけど、仕様のバージョンに依存するのは昔のDOM levelsの失敗繰り返しそうで心配だな。" userName="nulld3v" createdAt="2025/05/19 11:07:56" color="#38d3d3">}}




{{<matomeQuote body="仕様としては簡単に決められるけど、余分な機能とか使われてないのがいっぱいあるんだよね。もっとスリムで今どきのセットの方が使えると思うな。" userName="poisonborz" createdAt="2025/05/18 22:03:39" color="">}}




{{<matomeQuote body="標準を作ることはできるよ。それが実際に広く使われたり、正式な標準になるかは全く別の話だけどね。" userName="OptionX" createdAt="2025/05/19 07:56:57" color="">}}




{{<matomeQuote body="small-web Living Standardって言葉、”Living Standard”自体が矛盾語だよ。既得権益者が標準を支持してるフリして、絶え間ない変化を武器に自分たちの立場を守るために作った言葉だ。" userName="userbinator" createdAt="2025/05/18 21:37:34" color="#785bff">}}




{{<matomeQuote body="“メールHTML”がまだHTML 2.5くらいで止まってて、限られたCSSサポートとFONTタグやTABLEレイアウトだらけなのが面白いね。smolwebでHTML 2みたいな古いサブセットに”集中”するのも面白いけど、超レトロで今っぽくないだろうね。今から始めるなら最新から始めて後方互換性に対応する方が面白いかも。HTML 2のTABLEとかCSS Gridの特殊化として実装するとかね。" userName="WorldMaker" createdAt="2025/05/19 16:05:31" color="#45d325">}}




{{<matomeQuote body="そうそう！変なフォントとかカーソルとかはsmolwebにいらないけど、FlexとGridはほぼ必須だよ。捨てるべきものはいっぱいある気がする。こういうブラウザのどれかがちゃんとしたComboBox（テキスト入力できて検索もできてドロップダウンも出るやつ）を実装してくれたらいいんだけどね。" userName="edoceo" createdAt="2025/05/18 22:37:48" color="#38d3d3">}}




{{<matomeQuote body="そうそう、グリッドってUIのいろんなとこにあるんだよね、テーブルだけじゃなくて。2000年代は今と逆で、他に配置方法がなかったからインターフェース全部がテーブルだらけだったんだよ。でも今はいいとこ取り！実際のテーブルには＜table＞使って、UIレイアウトにはCSS gridを使おうぜ。" userName="notpushkin" createdAt="2025/05/19 06:30:36" color="">}}




{{<matomeQuote body="うーん、それ悪くないかもね！CSS全部禁止して、マークアップタグだけ残すとか：Markdownとテーブルでできることだけとか。色も小さい文字も画像もなし。（HTMLじゃなくgemtextみたいな形式でもいいけど、クライアントの互換性ないな。）でも、これそこそこ使われてるメールクライアントが採用するわけないか :-(" userName="notpushkin" createdAt="2025/05/19 11:01:15" color="">}}




{{<matomeQuote body="なんでC＋＋がこれに選ばれたのか気になるんだよね。ブラウザってセキュリティ確保マジで難しくて、実質RCEの脆弱性の塊みたいなもんだし！C＋＋のバイナリ安全にするのは大変だし、最近色んなとこがセキュリティ脆弱性の根本原因って言ってるじゃん。Rustみたいな言語使えば、もっといい選択肢あるのにさ。" userName="danpalmer" createdAt="2025/05/19 01:15:23" color="#ff33a1">}}




{{<matomeQuote body="＞なんでC＋＋がこれに選ばれたのか気になるんだな。<br>他の多くのプロジェクトと同じで、たぶん作者がC＋＋にめっちゃ詳しいからだよ。マジでデカいプロジェクトは熟練した言語が良いんだ。Rustくらいしか候補ないけど、SwiftとかC＃はエンジン書くにはちょい高レベルかな。<br>コード見たけど、質めっちゃ高かったわ。良いC＋＋書くの難しいけど、ここのはモダンで読みやすいし型もちゃんとしてる。" userName="const_cast" createdAt="2025/05/19 06:45:38" color="#ff5c5c">}}




{{<matomeQuote body="もうRustのウェブエンジンならあるよ、Servoっていうの。今C＋＋のLadybirdプロジェクトに追い抜かれそうだけど。<br>Rustはオープンソースのブラウザ書くには向いてない言語だと思うわ。ブラウザ開発で一番大変なのはセキュリティじゃなくて、手伝ってくれる人集めることだからさ。<br>C＋＋プログラマーなんてゴロゴロいるじゃん。毎日8時間C＋＋書いてる人なんていっぱいいる。Rustのコミュニティは俺みたいな素人がほとんどだよ。" userName="zarzavat" createdAt="2025/05/19 04:08:37" color="#ff5c5c">}}




{{<matomeQuote body="でもLadybirdってC＋＋からSwiftに乗り換えるんじゃないの？" userName="WD-42" createdAt="2025/05/19 06:22:32" color="">}}




{{<matomeQuote body="俺の理解だと、C＋＋捨てるんじゃなくて、新しいSwiftのC＋＋連携機能使ってエンジンの一部をSwiftで書いてみようって検討してるだけだよ。全部Swiftに乗り換えるのは現実的じゃないみたい。" userName="zarzavat" createdAt="2025/05/19 07:01:45" color="#ff5c5c">}}




{{<matomeQuote body="Andreasがどっかのインタビューでそんなこと言ってたのは覚えてるけど、リポジトリ［０］見るとそうは見えないな。<br>C＋＋ ６４．６％<br>HTML ２２．４％<br>JavaScript １１．０％<br>CMake ０．７％<br>Objective-C＋＋ ０．５％<br>Swift ０．３％<br>Other ０．５％<br>［０］ https://github.com/LadybirdBrowser/ladybird" userName="norman784" createdAt="2025/05/19 07:28:35" color="#ff5c5c">}}




{{<matomeQuote body="俺だけかもしれないけど、10年以上毎日8時間 C++ やってたら、タダじゃ二度と触りたくないくらい疲れたよ。" userName="01HNNWZ0MV43FF" createdAt="2025/05/19 04:29:38" color="">}}




{{<matomeQuote body="”＞”現在は C++ の Ladybird プロジェクトに追い抜かれつつある”って書いてあるけどさ。今日日ほとんどのウェブで使える成熟したエンジンが、まだリリースされてないプリアルファのソフトに”追い抜かれつつある”って言うのは、”追い抜く”の定義が変じゃない？" userName="dtech" createdAt="2025/05/19 06:27:02" color="">}}




{{<matomeQuote body="Ladybird は数ヶ月前に WPT で Servo を追い抜いて、その差は広がる一方だよ。Servo は Ladybird の開発ペースに追いつけないし、Ladybird が持ってる C++ 開発者の巨大なプールが全てだよ、その理由は。" userName="zarzavat" createdAt="2025/05/19 06:56:41" color="#38d3d3">}}




{{<matomeQuote body="俺が知ってる限りだと、Rust はブラウザ開発にはそんなに良い言語じゃないんだよね。HTML/DOM が必要とするパターンは Rust がそのままサポートしてるわけじゃなくて、あちこちポインタが必要になるから。確か Andreas Kling （Ladybird の開発者）もそんなこと言ってた気がする。チームが Rust 含むいくつかの言語を評価した結果、Swift の方がこの仕事には向いてるか、少なくとも開発しやすいって言ってたよ。" userName="norman784" createdAt="2025/05/19 07:32:22" color="#ff5c5c">}}




{{<matomeQuote body="俺も同じこと思ったよ。プロジェクトの説明に”安全な HTML/CSS エンジン”ってあるけど、ファジングやった証拠が見当たらないからバグがないって信じるのは難しいな。Google みたいに世界クラスの開発者でも悪用可能なバグ書いてるんだから。まあ、そういうバグの大部分はレンダラーにはないんだけど、起こることは起こるんだよ！" userName="landr0id" createdAt="2025/05/19 01:20:39" color="#38d3d3">}}




{{<matomeQuote body="ちなみに俺は Rust 書かないし、だから「～に限らず」って言ったんだよ。Swift や Zig なんかも選択肢だし、遅くても安全なブラウザの方がいい。多分セキュリティ荒らしみたいに聞こえるかもだけど、こういうものを C++ で書くのは過去30年以上見ても事実上不可能だってわかってる。セキュリティはブラウザにとって一番大事なのにね。もっと貢献者が集めやすいとか、趣味だからとかが理由ならわかるけど、作者が俺とは違う考え方をしてるなら学びたいと思ったんだ。" userName="danpalmer" createdAt="2025/05/19 05:50:08" color="#785bff">}}




{{<matomeQuote body="俺は確信してるんだけど、今の”セキュリティ”への過剰な心配って、単なる冷やかし（concern-trolling）だよ。もっと権威主義的で企業が管理してる言語とか環境に人々を押しやろうとしてるだけだって。" userName="userbinator" createdAt="2025/05/19 10:14:56" color="">}}




{{<matomeQuote body="そうだよね、急にみんな何も知らないセキュリティについて気にするようになったみたいだ。もし本当に気にしてたなら、 Rust の前から気にしてたはずだよ、ほら、 Ada とか SPARK を書いてさ。" userName="johnisgood" createdAt="2025/05/19 11:23:11" color="">}}




{{<matomeQuote body="セキュリティがしっかりしたブラウザがあんまりないのは、みんな C++ で作ってるからだよ。ちょっと違うやり方とか、セキュリティへのアプローチの多様性が欲しいだけなんだ。" userName="danpalmer" createdAt="2025/05/19 05:51:23" color="">}}




{{<matomeQuote body="それって達成可能だと思う？<br>君みたいな人なら、タスクを十分に小さく分割して、 Rust の初心者グループにそれぞれのピースをコードしてもらったりできるかな？" userName="whitten" createdAt="2025/05/19 04:30:22" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="話が脱線するけど、こういう問題が出るたびに、 Android WebView を独立したクロスプラットフォームプロジェクトとして切り出すってアイデアが頭に浮かぶんだ。誰かもう実際にやってないか、いつもチェックしようと思ってるんだけど。" userName="DarkmSparks" createdAt="2025/05/19 00:24:09" color="">}}




{{<matomeQuote body=" Google 自身も、 Cobalt という形で似た方向に行ってるよ。これは Chromium を軽量化して、 YouTube TV などに使われている。長時間アプリでのメモリ効率が良いけど、セットトップボックス向けでハードウェア統合が複雑。簡単に試せるバイナリやデモはほぼなく、ドキュメントも Chromium 並みに難解だよ。" userName="exikyut" createdAt="2025/05/19 03:47:35" color="#ff5c5c">}}




{{<matomeQuote body="どういう意味？ WebView は単に Android アプリの中に埋め込まれた Chrome だよ。同じようなのは Windows ( Edge WebView2 ) や macOS ( WKWebView ) 、 Linux ( WebKitGTK ) にもある。これらを一つのインターフェースにまとめるライブラリもあるよ： https://github.com/webview/webview <br> WebView の全体的な目的は、別のアプリの中に埋め込まれるブラウザだってことだよ。それがどうやって「独立したプロジェクト」になることを期待してるの？" userName="flexagoon" createdAt="2025/05/19 00:43:27" color="#38d3d3">}}




{{<matomeQuote body="アイデアとしては、軽量（つまり数メガバイトのライブラリだけ）で、 android webview と同じ機能（つまり、読み込む HTML を送って JavaScript を実行し、結果を JSON で受け取る）を提供することだよ。似たようなことをやろうとしてるオプションはいくつかあるのは知ってる。でも、ネイティブアプリの UI に html5 を使いたいだけなのに、それらがどれも信じられないほど肥大化してるんだ。" userName="DarkmSparks" createdAt="2025/05/19 20:00:34" color="#ff33a1">}}




{{<matomeQuote body="もう一つ追加： QtWebEngine -＞ https://wiki.qt.io/QtWebEngine" userName="throwaway2037" createdAt="2025/05/19 03:10:41" color="">}}




{{<matomeQuote body="Vaevチーム、技術探求を自由に追求する姿勢に拍手だね！<br>C++を選んだのは思い切ってる。<br>セキュリティの懸念はよく言われるけど、現代的なC++とRustはちゃんと使えば同じくらい安全だよ。<br>Vaevのセキュリティモデルはプロセス分離とかサンドボックスとか、最新のC++機能を使うことに集中すべきだね。<br>Chromiumみたいな巨大な存在に独占されてる巨大な課題に立ち向かう、こんな素直な革新と勇気を見られて超ワクワクするよ。" userName="Aeyxen" createdAt="2025/05/19 16:33:19" color="#38d3d3">}}




{{<matomeQuote body="sciter.comっていうのもあるよ。作者がオープンソースにするため資金探してたけど、十分な支援者が見つからなかったみたい。" userName="mingodad" createdAt="2025/05/19 06:47:26" color="">}}




{{<matomeQuote body="ドキュメントを充実させてくれるといいな。<br>tldrawファイル、ほとんど使い物にならないよ。オンラインで見られるサービスもないし。<br>手に入ったのはvscode拡張機能だけ。sublimeをやめる理由がない限り、あの不明なフォーマットで文書化されたアーキテクチャを見る選択肢があまりないんだよ。" userName="potato-peeler" createdAt="2025/05/19 18:13:44" color="#ff5c5c">}}




{{<matomeQuote body="ロゴの日本語、誰か意味知ってる？<br>ジブトって読んでみたけど、自分には意味不明なんだ。" userName="madmod" createdAt="2025/05/19 06:32:48" color="">}}




{{<matomeQuote body="貢献受け付けてる？<br>wkhtmltopdfのChromiumじゃない代替があったら最高だな！" userName="quibono" createdAt="2025/05/18 22:06:57" color="">}}




{{<matomeQuote body="wkhtmltopdfってChromiumじゃないでしょ？”Wk”は文字通りWebKitのことだよ。<br>weasyprint.orgっていうのもあって、これはブラウザエンジンじゃなくてカスタムレンダラを使ってるんだ。<br>それに、これら（あとPrinceも）はPandocのバックエンドとして使えるよ。" userName="flexagoon" createdAt="2025/05/19 00:48:27" color="#785bff">}}




{{<matomeQuote body="君の言う通りだね、コメント書いてるときにいくつか混同しちゃったみたいだ。<br>言いたかったのは（PrinceXMLを無視してFOSSに絞るなら）、選択肢は３つに絞られるってこと。最初のwkhtmltopdfは不安定だってわかったし、二番目のweasyprintはめちゃくちゃ遅いし、三番目のpuppeteerとかを使った（ヘッドレス）chromiumは扱いにくいことがあるんだ。" userName="quibono" createdAt="2025/05/21 12:36:47" color="#ff33a1">}}




{{<matomeQuote body="princexml.comみたいなやつ？" userName="5-" createdAt="2025/05/18 22:25:46" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
