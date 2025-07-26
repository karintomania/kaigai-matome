+++
date = '2025-07-19T00:00:00'
months = '2025/07'
draft = false
title = 'たった1KBが驚きの差に！ウェブページの読み込み速度、14KBと15KBでこれほど違う'
tags = ["ウェブパフォーマンス", "サイト軽量化", "HTML", "CSS", "JavaScript"]
featureimage = 'thumbnails/orange1.jpg'
+++

> たった1KBが驚きの差に！ウェブページの読み込み速度、14KBと15KBでこれほど違う

引用元：[https://news.ycombinator.com/item?id=44613625](https://news.ycombinator.com/item?id=44613625)




{{<matomeQuote body="俺のHPは圧縮後7.0kBで、結構いい感じだと思うよ！Common Lisp製の自作静的サイトジェネレーターでブログとか作ってるんだ。KaTeX使うと347.5kBも増えるけどね。数学コンテンツだけなんだけど、サーバーサイドレンダリングを考えた方がいいかもな。大学時代からのプロジェクトで、HTMLもCSSも手書きで、余計なものは入れないようにしてるんだ。<br>[1] https://susam.net/<br>[2] https://github.com/susam/susam.net/blob/main/site.lisp<br>[3] https://susam.net/tag/mathematics.html" userName="susam" createdAt="2025/07/19 10:11:04" color="#38d3d3">}}




{{<matomeQuote body="数学コンテンツでKaTeXを使ってるみたいだけど、MathMLを試してみたらどうかな？<br>これなら容量削減になるかも。詳細はこのURLを見てくれよな！<br>https://w3c.github.io/mathml-core/" userName="welpo" createdAt="2025/07/19 10:24:42" color="">}}




{{<matomeQuote body="MathMLは使いたいけど、LaTeXから自動生成したいんだ。LaTeXの方が書きやすいからね。でもMathMLはブラウザによって表示がバラバラで、特に積分記号のサイズとか変なんだ。修正しようとするとKaTeXを使うのと同じくらい手間がかかるし、結局KaTeXやMathJaXでサーバーサイドレンダリングしてHTMLとCSSを送るのが一番かなと思ってるよ。<br>https://mk12.github.io/web-math-demo/" userName="susam" createdAt="2025/07/19 12:27:44" color="#ff5c5c">}}




{{<matomeQuote body="今や数式はLLMに頼りっぱなしだよ。LLMはすごく得意で、LaTeXやMathMLの構文は忘れちゃいそう。例えば”MathML for {方程式のテキスト}”って聞くと100%正確なMathMLをくれるんだ。フォーマット変更もCSS追加もお願いすればやってくれるから、超便利だよ！" userName="AnotherGoodName" createdAt="2025/07/19 14:55:07" color="#ff33a1">}}




{{<matomeQuote body="KaTeXはサーバーサイドでもクライアントサイドでもMathMLに変換されるんだよ。HTMLタグの羅列より、LaTeXみたいなTeX方言の方が数式記述には向いてるってのが一般的なんだよね。" userName="BlackFly" createdAt="2025/07/19 11:08:26" color="">}}




{{<matomeQuote body="サーバーサイドレンダリングにすれば、277KBのKaTeXライブラリは不要になるね。クライアントに送る追加のMathMLデータは、それよりずっと少ないはずだよ。" userName="mr_toad" createdAt="2025/07/19 11:57:49" color="">}}




{{<matomeQuote body="俺の作ったツールで、君のサイトの例をKaTeXとブラウザのMathMLレンダリングでどう見えるか試してみたらどうかな？このURLからアクセスできるよ:<br>https://mk12.github.io/web-math-demo/" userName="mk12" createdAt="2025/07/19 12:10:08" color="#ff5733">}}




{{<matomeQuote body="このツール、いいね！“New Computer Modern”フォントだとLaTeXに一番近いけど、括弧の周りのスペースが広すぎるのが気になるな。LaTeXはスペースを細かく調整できるのに。あと、f(x)の^ハットの位置もおかしいんだ。これって直せるの？" userName="em3rgent0rdr" createdAt="2025/07/19 15:40:52" color="#785bff">}}




{{<matomeQuote body="俺も同じ問題を見てると思うけど、括弧のスペースがおかしくなるのは、不要な＼leftや＼rightを使ってる時なんだ。そうするとMathMLに余計な＜mrow＞が増えるんだよ。本当に必要ないなら使わない方が、ずっと見た目が良くなるよ。" userName="mk12" createdAt="2025/07/25 13:41:26" color="#ff33a1">}}




{{<matomeQuote body="ありがとう、特別な＼leftと＼rightの括弧が原因だったよ。" userName="em3rgent0rdr" createdAt="2025/07/26 02:33:02" color="#ff5733">}}




{{<matomeQuote body="クライアントサイドJavaScriptで数式やLaTeXを表示するのって、全然理解できないんだ。なんでHTMLとCSSに事前に変換しておかないんだろうね？" userName="djoldman" createdAt="2025/07/19 11:34:32" color="#38d3d3">}}




{{<matomeQuote body="（前のコメントへの返信）それはできるよ。でも僕の個人サイトは大学時代からの趣味プロジェクトでね、Common Lisp（CL）で構築してるんだ。結果だけじゃなく、プロセス自体を楽しむのが目的。HTMLやCSSの事前生成は可能だけど、Node.jsなどCLエコシステム外のツールは導入したくないんだ。このサイトは僕の遊び場だから、スタックをシンプルに保って楽しみたいんだよ。" userName="susam" createdAt="2025/07/19 13:22:40" color="#ff5733">}}




{{<matomeQuote body="別のホストでHeadless Chromeとか使ってレンダリングする小さなサービスを立てて、それがダメなときはクライアントサイドにフォールバックするのはどう？既存のサーバ環境を汚したくないって言ってたから提案してみたんだ。こういう最適化を見るのが好きなんだよね。" userName="whism" createdAt="2025/07/19 16:47:09" color="#45d325">}}




{{<matomeQuote body="君が提案してるのは、とんでもなく複雑さを増すことになるね。" userName="whatevaa" createdAt="2025/07/20 16:56:12" color="">}}




{{<matomeQuote body="そのウェブサイトは君の情熱プロジェクトって言っていいかな？" userName="dfc" createdAt="2025/07/19 13:37:29" color="">}}




{{<matomeQuote body="少し手間が増えるね。普通はNode.jsやBabelとか他のツールをインストールして、もし慣れてなければ使い方を学ぶ時間も必要になるだろうね。" userName="mr_toad" createdAt="2025/07/19 12:02:26" color="">}}




{{<matomeQuote body="数式をHTML+CSSやSVGにレンダリングするなら、Node.jsとMathJaxを使えばいいだけだよ。なぜBabelが必要なのかは分からないけど。（KaTeXも使えるだろうけど、僕はMathJaxの出力の方が好みだな。）" userName="creata" createdAt="2025/07/20 00:22:22" color="#ff33a1">}}




{{<matomeQuote body="まあMathMLってのもあるけど、最近までChromeでのサポートが悪かったんだ。あれはウェブサイトのネイティブな数式フォーマットだよ。" userName="marcthe12" createdAt="2025/07/19 14:38:05" color="#ff5733">}}




{{<matomeQuote body="普段はHTMLやSVGにコンパイルする方が好きだけど、ページに数式がたくさんある場合、MathJaxをバンドルした方が容量が少なくて済むこともあるよ。（圧縮後もそうかは分からないけどね。）" userName="creata" createdAt="2025/07/20 00:25:07" color="#38d3d3">}}




{{<matomeQuote body="過度な最適化って意味ないこと多いよ。例えば、Latexの数式みたいに動的にレンダリングされるコンポーネントの遅延なんて、普通の人にはほとんど気づかれないんだ。SEO目的のパフォーマンス改善も、何百万回ものアクセスがあるようなものじゃないと、ぶっちゃけ無駄だよ。<br>船が漂流してて、食料調達したり浸水を防いだりしないといけない時に、船の空力特性を気にするようなもんだね。抽象的にはいいことだけど、必要なリソースと得られる利益を比べたら、エネルギーの使い道として賢い選択とは言えないよ。" userName="popalchemist" createdAt="2025/07/20 00:09:44" color="#38d3d3">}}




{{<matomeQuote body="人間はロボットじゃないんだから、面白くて楽しいことなら追求する価値あるよ。たとえそれだけであっても、話のネタになったり、学んだり、教えたりすることにも繋がるしね。" userName="hmmokidk" createdAt="2025/07/20 15:12:06" color="">}}




{{<matomeQuote body="非効率だとしても、やる理由はあるって、俺の最初のコメントでちゃんと書いてるだろ。" userName="popalchemist" createdAt="2025/07/20 19:14:54" color="">}}




{{<matomeQuote body="別のアイデアとして、重いライブラリは初期ページ表示が終わってからロードするとかどうかな。まあ、それでも重いのは変わらないけどね。<br>あるいは、数式をSVGで作って、それがビューポートに入った時にロードするとか。これは俺の2セントだよ。" userName="VanTodi" createdAt="2025/07/19 10:57:45" color="#38d3d3">}}




{{<matomeQuote body="これで遊んでみたいなら、initial window（IW）は送信側で設定できるよ。サーバーをウェブサイトに合ったパケット数に設定できるんだ。例えばこんな感じになるよ：`ip route change default via ＜gw＞ dev ＜if＞ initcwnd 20 initrwnd 20`<br>ウェブ検索だと、CDNはinitial windowが30パケットで、それで45KBになるって出てくるね。" userName="crawshaw" createdAt="2025/07/19 09:17:37" color="#45d325">}}




{{<matomeQuote body="CDNが30パケットで45KBになるって話、何か参照元あるの？" userName="sangeeth96" createdAt="2025/07/19 11:21:19" color="">}}




{{<matomeQuote body="これだよ：<br>* https://sirupsen.com/napkin/problem-15<br>* https://www.cdnplanet.com/blog/initcwnd-settings-major-cdn-p..." userName="darthShadow" createdAt="2025/07/19 13:02:17" color="#ff5c5c">}}




{{<matomeQuote body="わざわざ探さないけど、これは俺が読んだり観察したことと合ってるよ。自分の個人的なサイトでは20パケットに設定してるしね。" userName="ryan-c" createdAt="2025/07/19 12:59:13" color="">}}




{{<matomeQuote body="13年前だと、10パケットは“チート”って言われてたんだってね：<br>https://news.ycombinator.com/item?id=3632765<br>https://web.archive.org/web/20120603070423/http://blog.benst..." userName="nh2" createdAt="2025/07/19 21:58:27" color="#785bff">}}




{{<matomeQuote body="今日のネットワークは変だよな。MTUは昔の10Mbps Ethernetに合わせて決まったのに、今でもそれがエンドユーザーに影響してるんだ。サーバーは10Gbps、多くの人は1Gbps使ってるのにさ。<br>MTUが小さすぎてIWもおかしくなってる場合もあるから、1Gbps以上のリンクを使ってる消費者にはもっと高いMTUを設定すべきだね。AWSみたいにクラウドプロバイダーはMTU高いし（AWSは9001）、できるはずだよ。" userName="crawshaw" createdAt="2025/07/19 22:05:13" color="#ff5c5c">}}




{{<matomeQuote body="要するに、Ethernet（802.3）から完全に切り替えないといけないってこと。<br>Jumboフレームでさえサイレントコリプションに弱いんだよね。URL：https://en.wikipedia.org/wiki/Jumbo_frame#Error_detection<br>当時はすべてがずっと遅くて高価だったから、あの決定は良かったんだけどね。" userName="mjevans" createdAt="2025/07/20 00:49:37" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="悪い奴になって、MTUを1000パケットに設定しちゃえよ…。<br>ダイヤルアップ接続でバッファブロート起こしてる人を詰まらせる以外、特にデメリットはないはず。" userName="londons_explore" createdAt="2025/07/19 11:16:25" color="">}}




{{<matomeQuote body="これってひどいアイデアに聞こえるけど、具体的に何がダメなのか誰か教えてくれない？" userName="notpushkin" createdAt="2025/07/19 12:04:02" color="">}}




{{<matomeQuote body="標準外の設定は、ミドルボックスを壊したり、セキュリティ脅威としてブロックされたりする可能性があるよ。<br>携帯キャリアの変なプロキシ（特に4G未満）もモバイル接続をダメにするかも。<br>遅い回線だと再送地獄で接続が止まるし、ISPルーターのバッファを埋めて他の接続まで遅くしたり切ったりする可能性もあるね。" userName="jeroenhd" createdAt="2025/07/19 12:27:28" color="#45d325">}}




{{<matomeQuote body="TCPの輻輳制御、特にスロースタートは、80年代のダイヤルアップ時代からの遺物だね。<br>ISPのリンクが50KBのバーストトラフィックを処理できないなら、アップグレードすべきだ。輻輳を前提とするのはおかしい。<br>スロースタートを無効にして、パケットロスに依存しないBBR輻輳制御を使えば、TCPスループットが劇的に変わるよ。" userName="r1ch" createdAt="2025/07/19 16:10:12" color="#ff5c5c">}}




{{<matomeQuote body="スロースタートって、ウェブサイトの肥大化と戦うのに良い動機付けになるかもね。<br>「ページサイズを300KB以下にすれば、1往復で読み込めるよ」みたいに簡単な成功体験を与えられたら、もっと多くのフロントエンド開発者が考えてくれるんじゃないかな。（まあ、大して変わらないだろうけどね。）" userName="notpushkin" createdAt="2025/07/20 04:27:38" color="#785bff">}}




{{<matomeQuote body="そうすると、接続開始時の輻輳制御を無効にするようなもんだね。<br>遅い接続だと、それがちょっと困るんだよ。<br>バッファの問題が起きるか、パケットが落ちるかのどっちかになるだろうね。" userName="buckle8017" createdAt="2025/07/19 12:24:30" color="#45d325">}}




{{<matomeQuote body="ソフトウェア開発者はメディア層をもっと意識すべきだ。<br>3G/5Gの信頼性やレイテンシの話は重要だよ。<br>HTTPではパケット順序が大事で、RESTリクエストが1パケットになるのは1400バイト未満の時だけ。それ以上だと複数パケットになり、再送などでUI更新が遅れる。<br>Chrome Dev Toolsで3Gモード＋パケットロスを試せば、小さな最適化でもUI応答性が改善するよ。<br>だからAPIやUIはできるだけ小さくすべきだね。" userName="tonymet" createdAt="2025/07/19 20:15:46" color="#ff33a1">}}




{{<matomeQuote body="同感。記事には良い情報もあるけど、14KBのウェブページを例にするのはイマイチだね。<br>APIリクエストの方が良い例になると思う。" userName="zigzag312" createdAt="2025/07/20 08:30:07" color="">}}




{{<matomeQuote body="極端な話だけど、UIにも当てはまるよ。最初の画面表示に必要な要素を14KB以下にするのは大事だね。例えば、CSSを含んだindex.htmlとかさ。" userName="tonymet" createdAt="2025/07/20 19:43:14" color="#ff5733">}}




{{<matomeQuote body="14KBは厳しい目標だけど、最初の10パケットに収めるって考えは面白いね。ページサイズに力を入れてる512kb.club [1] は、サイトのサイズをゴルフみたいに競うんだ。俺のサイト [2] は全アセットで71KBちょっとだったよ。このプロジェクトのおかげでCloudflare Radar [3] も知ったけど、これ、サイト分析にめちゃくちゃ使えるツールだよ。" userName="GavinAnderegg" createdAt="2025/07/19 11:40:07" color="#785bff">}}




{{<matomeQuote body="ユーザーじゃないんだけど質問。残りの500KBで俺らユーザーに何してくれてるの？<br>90%はテキストに興味あるし、残りはほとんどベクターグラフィックで十分でしょ。14KBでもかなり多くのテキストとグラフィックの量だよ。他の500KBは何に使ってるの？" userName="mousethatroared" createdAt="2025/07/19 14:27:58" color="">}}




{{<matomeQuote body="テキストはそうだけど、グラフィックはね…。SVGは、基本的な図形より複雑だと、みんなが思ってるほど小さくないし、ベクターグラフィックで表現できないものも多いんだ。テキストだけのページが良いってのは分かるけど、『グラフィックも』ってのは、俺はかなり非現実的だと思うな。" userName="filleduchaos" createdAt="2025/07/19 15:35:36" color="#ff5733">}}




{{<matomeQuote body="SVGがどれくらい得になるかはコンテンツ次第だよ。複雑なSVGでもめちゃくちゃ効率良い時もあれば、残念な時もある。ただ、生のSVGは冗長だけど、HTTP転送ではラスタ形式画像（圧縮済み）とSVG（未圧縮）を比べるのは不公平だね。SVGはBrotliみたいな高性能圧縮とも相性抜群だし、事前に圧縮されたファイルを使えばサーバーの負担も減らせるよ。" userName="LarMachinarum" createdAt="2025/07/19 21:16:10" color="#ff5c5c">}}




{{<matomeQuote body="ベクターグラフィックってのは、シンプルなグラフィックのことだよ。YouTubeとかTwitter以外で、凝ったものなんていらないし。俺にとってHacker Newsはウェブの理想なんだ。選択肢があれば、ほとんどのユーザーもそう思うんじゃないかな。" userName="mousethatroared" createdAt="2025/07/19 20:10:38" color="">}}




{{<matomeQuote body="いや、君は間違ってるよ。俺も含めて、ほとんどのユーザーはHacker Newsより凝ったものが好きなんだ。" userName="whatevaa" createdAt="2025/07/20 17:30:53" color="">}}




{{<matomeQuote body="もしウェブサイトで、複数の言語に対応した凝ったコードブロックのシンタックスハイライターを使いたいなら、それだけでそのくらいのサイズになるよ。正規表現のルールとか、正規表現エンジンとかね。" userName="nicce" createdAt="2025/07/19 14:37:02" color="#ff33a1">}}




{{<matomeQuote body="エンドユーザーとしては、バックエンドで一度だけハイライトしてくれるウェブサイトが良いな。" userName="masfuerte" createdAt="2025/07/19 14:46:50" color="">}}




{{<matomeQuote body="俺はフォントに使ってるよ。俺のウェブサイト [0] は、圧縮されたHTMLとCSSが約15KBで、フォントが200KBもあるんだ。" userName="ssernikk" createdAt="2025/07/19 17:53:13" color="#38d3d3">}}




{{<matomeQuote body="フォントの読み込みなんて気にならないな。正直、ブラウザにフォントを読み込まない設定があって、デフォルトのフォントを使うオプションがあったら、20回中19回はそれを選ぶね。" userName="mousethatroared" createdAt="2025/07/19 20:09:21" color="">}}




{{<matomeQuote body="Firefoxにはそのオプションがあるよ。一番困るのは、一部のウェブサイトがシンボルにカスタムフォントを使ってることだね。" userName="ndriscoll" createdAt="2025/07/20 01:41:23" color="">}}




{{<matomeQuote body="15kBの圧縮HTML + CSSかあ。クラスがCSSを重複させてなければ、14kBより少なくできたはずなのに。" userName="timeon" createdAt="2025/07/20 00:52:29" color="">}}




{{<matomeQuote body="個人サイトなら512kbは十分達成可能だよ。次の目標は99kb（上限100kb）にすること。数週末あれば結構簡単にできるはず。俺のサイトは512kbでオレンジ色ゾーンって感じ。" userName="Brajeshwar" createdAt="2025/07/19 14:52:39" color="#38d3d3">}}




{{<matomeQuote body="これ、わかるわ。俺も512kbがもっと現実的なベンチマークだと思うし、自分のサイトもそうしてる。現代のウェブは、14kbのウェブサイトなんてとっくに昔に超えちゃってるからね。" userName="FlyingSnake" createdAt="2025/07/19 14:23:45" color="">}}




{{<matomeQuote body="これ、別の理由かもね: https://blog.cloudflare.com/russian-internet-users-are-unabl...<br>Cloudflareの分析によると、ロシアのISPはインターネットユーザーがWebアセットの最初の16KBしか読み込めないようにスロットリングしてるらしくて、ほとんどのウェブナビゲーションが不可能になってるんだって。" userName="tgv" createdAt="2025/07/19 10:36:42" color="#ff33a1">}}




{{<matomeQuote body="うーん、Cloudflareはロシア向けのトラフィックのために、パケットサイズとか初期ウィンドウとか、なんか他の設定を増やせないのかな？" userName="notpushkin" createdAt="2025/07/20 04:32:09" color="">}}




{{<matomeQuote body="TCP Slow Startを知らない人と、ウェブサイトの読み込み速度が数ミリ秒速くなるのを気にする人が重なることは、ものすごく少ないよ。スタートアップは、まず「始めること」に集中すべきで、パフォーマンスじゃない。そのレベルで速度を最適化するような大企業には、経験豊富なSREのチームがいるから、どの詳細にこだわるべきか分かってるはずだよ。" userName="9dev" createdAt="2025/07/19 08:55:49" color="#ff33a1">}}




{{<matomeQuote body="パフォーマンスがどうでもいいっていう考え方、ほんとイラつくんだよね。そうやってDockerやKubernetesとか、触るもの全てをぶっ壊してる絶対的なクソスタックができちゃったんだ。パフォーマンスは大事なんだよ。何十年もKnuthの最適化に関する名言を誤解し続けて、ハードウェアの性能が5～6桁も上がったのに、未だに遅くて肥大化した欠陥だらけのソフトウェア製品を作り続けてる。パフォーマンスは実際に重要で、他の条件が同じなら速い製品の方が気持ちいいでしょ。幸い、Figmaの連中みたいにリスクを取ってそれを証明してくれた人もいる。たとえ難しい技術的問題を革新してる時でも（ほとんどの人はそうじゃないけどね）、パフォーマンスはやっぱり大事だよ。" userName="anymouse123456" createdAt="2025/07/19 11:49:34" color="#ff5733">}}




{{<matomeQuote body="だよね。だから、例えばMicrosoftのソフトウェアは完璧に動作して、最高の効率を出してるんだよね。" userName="elmigranto" createdAt="2025/07/19 09:27:13" color="">}}




{{<matomeQuote body="俺が言ったのはさ、担当エンジニアはどんなトレードオフをしてるかちゃんと分かってて、その能力もあるってことだけだよ。" userName="9dev" createdAt="2025/07/19 09:32:39" color="">}}




{{<matomeQuote body="コンテナってさ、VMがコールドスタート遅くてメモリ食いすぎだったから生まれたんだぜ。性能が最優先ってことだよな。" userName="mr_toad" createdAt="2025/07/19 12:10:42" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="スタートメニューにReactを使ったのは能力じゃなくてさ、担当者がTwitterで『知ってるから使っただけ』って言ってたんだよ。何も考えてないってことだよね。<br>https://x.com/philtrem22/status/1927161666732523596" userName="samrus" createdAt="2025/07/19 10:14:24" color="#45d325">}}




{{<matomeQuote body="『もっと大事なことあるから気にしない』ってスタンスだと、結局何も気にしなくなるんだよな。企業的にはTCPウィンドウサイズに合わせた最適化より、いつだって他の優先事項があるんだ。だから最近のアプリやサイトはどれもこれも遅くて最悪なんだよ。" userName="jeroenhd" createdAt="2025/07/19 12:02:18" color="#785bff">}}




{{<matomeQuote body="VMみたいにコンテナってライブフォークできるの？VMのクローンはメモリコピーやめればめっちゃ速いんだぜ。あとはNICを排出して新しいの起動するだけだしな。" userName="bobmcnamara" createdAt="2025/07/19 14:59:04" color="">}}




{{<matomeQuote body="これな。まさにMicrosoftが何十億人も使うStart MenuにReact Nativeみたいなモダンなフレームワークを使う理由だよ。" userName="SXX" createdAt="2025/07/19 10:05:47" color="">}}




{{<matomeQuote body="ま、0.5秒って小さい差じゃん。だからサイト専属の人ができるまでは、もっと優先すべきことあるだろうな。『今のアプリやサイトはどれもこれも遅くて最悪』って言うけど、過剰最適化不足よりもっとウェブには問題があるんだよ。" userName="marcosdumay" createdAt="2025/07/19 15:53:28" color="">}}




{{<matomeQuote body="クラウドプロバイダーが代わりにやってるのかも。OpsからAWSがホストOSのセキュリティアップデートを適用すると聞いて、クラスター再デプロイ要るか聞いたら、もう終わってたって。うちのクラスターはプロセスの起動時間を記録してて、その朝は再起動なかったんだ。テーブルクロス引き抜き術みたいな感じだったよ。TIL。" userName="hinkley" createdAt="2025/07/19 17:06:07" color="#38d3d3">}}




{{<matomeQuote body="パフォーマンスは重要だけど、コードを複雑にしすぎない範囲でね。だからシンプルな静的サイトが最新フレームワークのサイトに勝つことも多いんだ。維持が大変だし、アクセシビリティやプライバシー、倫理面で犠牲を払うこともあるから。不合理な性能低下は避けるべきだけど、使い物にならなくなったり、やることに対して複雑になりすぎたりするほど性能にこだわりすぎるのは良くないよ。" userName="zelphirkalt" createdAt="2025/07/19 12:01:26" color="#785bff">}}




{{<matomeQuote body="このTweetは本気じゃないし、Start Menuの開発者でもなさそうだよ。もし違う証拠があるなら教えてほしいな。" userName="ldjb" createdAt="2025/07/19 10:45:29" color="">}}




{{<matomeQuote body="コンテナのライブフォークとか、俺には全然魅力ないな。クラウドホスティング会社じゃないし、もしそうでもコンテナじゃなくてVMでVPSを提供したいよ。" userName="mort96" createdAt="2025/07/19 19:44:46" color="">}}




{{<matomeQuote body="コンテナは本来速く簡単にするはずなのに、仮想化の魅力で作業がめちゃくちゃ遅く悪くなった。Googleみたいな大企業ならわかるけど、中小企業には100％無駄で破壊だよ。両方経験したけど、コンテナが役立つ場面なんて、ごくわずかだよ。" userName="anymouse123456" createdAt="2025/07/19 15:39:41" color="#ff5c5c">}}




{{<matomeQuote body="「十分大きな企業には経験豊富なSREチームがいる」って言うけど、そうだと良いんだけどね。最近の大企業のアプリ見たことある？って感じだよ。" userName="andrepd" createdAt="2025/07/19 09:19:41" color="">}}




{{<matomeQuote body="注意しとくけど、Xは4chanより荒らしが多いんだからね。" userName="the_real_cher" createdAt="2025/07/19 11:23:13" color="">}}




{{<matomeQuote body="これがSteamOSがハンドヘルド機でWindowsを完全に圧倒してる理由なんだよ。" userName="hinkley" createdAt="2025/07/19 16:54:01" color="">}}




{{<matomeQuote body="Dockerって、実はいい感じなんだよ。" userName="01HNNWZ0MV43FF" createdAt="2025/07/19 14:29:16" color="">}}




{{<matomeQuote body="なんで？ネイティブ原理主義者たちが言うように、RNより酷いウェブベースのUIを使ってるからなの？" userName="wiseowise" createdAt="2025/07/20 15:05:00" color="">}}




{{<matomeQuote body="待ってくれ…これって、すごく変なジョークだって言ってくれよ、頼むからさ。" userName="chamomeal" createdAt="2025/07/19 12:21:36" color="">}}




{{<matomeQuote body="いやー、Dockerは、今みんながOOでの失敗を振り返ってるみたいに、後で「あれはまずかったな」って後悔する時が来るんじゃないかな。" userName="anymouse123456" createdAt="2025/07/19 15:52:08" color="#ff5c5c">}}




{{<matomeQuote body="パフォーマンス向上は問題どころか、コードをシンプルにして理解しやすくするんだ。高パフォーマンスなソフトウェアは、コード量を減らし、概念を単純化し、実行時間を短縮する。これはトレードオフじゃなくて、どこまでも価値があること。長年パフォーマンスを無視してきたせいで、今のひどいソフトウェアが生まれたんだ。" userName="anymouse123456" createdAt="2025/07/19 15:46:45" color="#38d3d3">}}




{{<matomeQuote body="この動画を見つけたよ: https://www.youtube.com/watch?v=kMJNEFHj8b8&t=287s<br>話してる人たちはMicrosoftのソフトウェアエンジニアだから、彼らの話を疑う理由はないね。スタートメニュー全体がReact Nativeってわけじゃないけど、一部はそうみたいだよ。" userName="mort96" createdAt="2025/07/19 15:04:59" color="">}}




{{<matomeQuote body="機能を自分で使うか、ベンダーに使ってもらうか、その価値を否定するかのどれかだよ。それ以外の考え方は矛盾してるね。" userName="hinkley" createdAt="2025/07/19 19:46:06" color="">}}




{{<matomeQuote body="＞0.5秒は小さな違い<br>どこから手をつけていいか分からないよ。ほとんどの人は合計レスポンスタイムで0.5秒以下を目指してるんだ。そもそもウェブアプリケーション開発してるの？" userName="hinkley" createdAt="2025/07/19 16:51:45" color="">}}




{{<matomeQuote body="前のと全く同じコンテナを新しく作るってこと？それは可能だけど、そんなコマンドがあるツールは多分ないんじゃないかな…だって何のためにやるの？コンテナ内でプロセスをフォークするのと、大体同じ結果になるよ。" userName="marcosdumay" createdAt="2025/07/19 16:00:25" color="">}}




{{<matomeQuote body="”10年以上前、Amazonは100ミリ秒の遅延が売上の1%減につながると発見した。2006年には、Googleが検索ページの生成時間で0.5秒余分にかかると、トラフィックが20%減少することを見出した。”" userName="Mawr" createdAt="2025/07/19 21:39:58" color="#ff5c5c">}}




{{<matomeQuote body="なんてこった…俺のホームページ、17.2KBだよ！依存関係抜きでね。ちなみに個人的なホームページをめちゃくちゃ最適化したら、Lighthouseスコアが全部100/100になったんだ。Railsで構築したのに、以前はこんなの不可能だと思ってたよ笑。自分のサイトを最適化するのは、本当に価値がある。体感できる遅延なしでページが読み込まれるのは、本当に気持ちいい体験だからね！" userName="firecall" createdAt="2025/07/19 09:34:35" color="#ff5733">}}




{{<matomeQuote body="うん、news.ycombinator.comが即座に読み込まれるの、俺の脳みそがめっちゃ喜んで、休憩中についつい自動的に開いちゃうんだ。" userName="apt-apt-apt-apt" createdAt="2025/07/19 10:33:52" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
