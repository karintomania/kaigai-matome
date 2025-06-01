+++
date = '2025-05-25T00:00:00'
months = '2025/05'
draft = false
title = '意外な組み合わせ Prologで書かれたX11ウィンドウマネージャーPlwm'
tags = ["Prolog", "ウィンドウマネージャー", "X11", "プログラミング", "開発"]
featureimage = 'thumbnails/green4.jpg'
+++

> 意外な組み合わせ Prologで書かれたX11ウィンドウマネージャーPlwm

引用元：[https://news.ycombinator.com/item?id=44089424](https://news.ycombinator.com/item?id=44089424)




{{<matomeQuote body="ねえ，誰か「チュートリアルProlog」から「ガチのプロジェクトProlog」にどう移行すればいいか，教えてくれる？ チュートリアルと全然違うんだよね．Prologは面白そうだけど，おもちゃレベル以上のことやろうとすると，無限再帰とか無理ゲーにぶつかるんだよ．" userName="raron" createdAt="2025/05/25 22:43:53" color="#ff5733">}}




{{<matomeQuote body="これ，“ガチの”Prologのための最高の資料の一つだよ：https://www.metalevel.at/prolog 彼のYouTube動画もマジでヤバいくらい良いから見てみて．" userName="davidcox143" createdAt="2025/05/26 01:58:07" color="#ff33a1">}}




{{<matomeQuote body="うん，俺もそう思う．Markus Triskaは今一番良いPrologの資料だよ．超分かりやすいし，今風の書き方etc．使ってるんだよね．" userName="ioma8" createdAt="2025/05/26 08:08:20" color="#ff5733">}}




{{<matomeQuote body="俺もそれに同意だな．マジで高品質な動画だよ．説明の丁寧さがハンパない．Prolog使うつもりがなくても，聞いてみる価値はあるよ．" userName="sidkshatriya" createdAt="2025/05/26 07:23:59" color="#785bff">}}




{{<matomeQuote body="論理が中心の動詞や名詞を持つ言語が，どうして「数学じゃない」って言えんのか，ちょっと気になるんだよね．" userName="i80and" createdAt="2025/05/26 04:54:06" color="">}}




{{<matomeQuote body="多くの人はね，数学って言うと連続数学のことだって思ってるんだ．職場で，同僚はほぼ統計家か保険数理士なんだけど，大学で数学は微積分1だけだったって冗談で言うことがあるよ．もちろん，もっと数学はやってるんだけど，それは全部CS系のやつで，論理とかグラフや木みたいな離散構造なんだ．連続系のやつとは全然違う世界なんだよね．" userName="arnsholt" createdAt="2025/05/26 06:56:53" color="#ff33a1">}}




{{<matomeQuote body="こういう文化の違いは，トウモロコシの食べ方でさえ決まるんだぜ：http://bentilly.blogspot.com/2010/08/analysis-vs-algebra-pre...（弱い証拠だし，もっと強い研究で否定されてるんだけどね．）" userName="kqr" createdAt="2025/05/26 07:17:07" color="">}}




{{<matomeQuote body="離散数学って，微積分で出てくる連続曲線よりずっと分かりやすいよね．" userName="anthk" createdAt="2025/05/27 04:43:05" color="">}}




{{<matomeQuote body="でもまあ、ある種の数学だよね。" userName="actionfromafar" createdAt="2025/05/25 23:25:14" color="">}}




{{<matomeQuote body="WaylandのコンポジターAPIをプロトコルに置き換えるウィンドウマネージャーサービスができたらいいな。そうすれば、Waylandやコンポジターライブラリなしで、どんな言語でもWMが作れるようになるからさ。" userName="eikenberry" createdAt="2025/05/25 21:15:05" color="#ff5c5c">}}




{{<matomeQuote body="riverを見てごらんよ、まさに今こんな感じのことやってるみたいだよ！" userName="mackeye" createdAt="2025/05/26 04:47:36" color="#ff33a1">}}




{{<matomeQuote body="https://github.com/riverwm/river#future-plans" userName="lugu" createdAt="2025/05/26 14:10:16" color="#ff5c5c">}}




{{<matomeQuote body="すごいニュースだね！riverのことは知ってたけど、こんな機能（プロトコル化）を計画してるなんて知らなかったよ。タイリング専用じゃなさそうだし、まさに求めてたものになりそう。ありがとう！" userName="eikenberry" createdAt="2025/05/26 22:37:14" color="#ff33a1">}}




{{<matomeQuote body="APIじゃなくてプロトコルなものがもっと増えるといいのにね。" userName="pyinstallwoes" createdAt="2025/05/25 21:53:40" color="">}}




{{<matomeQuote body="違いを説明してもらえる？" userName="linux2647" createdAt="2025/05/25 22:27:13" color="#38d3d3">}}




{{<matomeQuote body="プロトコルはプリミティブと相互作用を定義し、APIは規定的で特定のインターフェースを持つ傾向がある。IETF RFCのSMTPとメールAPIの違いを考えると分かりやすいよ。APIはテストできるけど、プロトコルは仕様への準拠を確認する感じ。RPCやOOPと関係ないプロトコルもあるよ。" userName="fnordpiglet" createdAt="2025/05/26 00:39:26" color="#ff5c5c">}}




{{<matomeQuote body="詳しいわけじゃないけど、プロトコルは特定のフォーマットで別プロセスとやり取りするものだよ。既存を置き換えるより強力だと思うな。18行のPythonで書かれたX11 WMが良い例だよ。どんな言語でも既存コードと通信できるのがプロトコルの強みだね。" userName="spicybright" createdAt="2025/05/25 22:39:21" color="#ff33a1">}}




{{<matomeQuote body="＞私のお気に入りの例は、約18行のPythonで実装されたX11ウィンドウマネージャーです。<br>あの、そのプロジェクトがどこにあるか知ってますか？ほとんどの人にとって例としてかなり分かりやすそうです。" userName="xorbax" createdAt="2025/05/26 04:06:14" color="#ff5733">}}




{{<matomeQuote body="あのPythonプロジェクトのことはよく分からないんだけどさ、何年も前に数百行のCで書かれたこの超ミニマルなWMがすごく役に立ったんだ： https://github.com/dylanaraps/sowm<br>dwmとかより断然理解しやすかったね。" userName="alpaca128" createdAt="2025/05/26 08:41:51" color="#38d3d3">}}




{{<matomeQuote body="今年の始めにCで800行くらいの自作X11 WM ［1］ 作ったよ。長年dwm（4000行）使ってて書きたいと思ってて、steveWM ［2］ とTinyWM ［3］ の超小さいのがきっかけになったんだ。<br>［1］ - https://github.com/ChanderG/cellwm<br>［2］ - https://github.com/stodd1031/steveWM<br>［3］ - https://github.com/mackstann/tinywm" userName="ChanderG" createdAt="2025/05/26 10:32:21" color="#38d3d3">}}




{{<matomeQuote body="TinyWMは僕のRubyのWMの出発点でもあったよ。どれだけちょっとあれば始められるかってことを本当に痛感させてくれるんだ。" userName="vidarh" createdAt="2025/05/26 11:12:46" color="#38d3d3">}}




{{<matomeQuote body="もちろん！<br>https://github.com/mackstann/tinywm<br>ずいぶん前に一度動かしたことあるけど、僕には完璧に動いたよ。" userName="spicybright" createdAt="2025/05/27 21:13:59" color="#ff5733">}}




{{<matomeQuote body="どっちもあいまいだけど、GP（最初の投稿者）が言いたかったのは、FFIじゃなくてソケットみたいなのを使ってインターフェースしたいってことだと思うんだ。<br>この文脈での’プロトコル’には、Cのデータモデルとか呼び出し規約に頼れないから、追加のデータ記述レイヤーが必要になるんだよ。" userName="packetlost" createdAt="2025/05/25 23:32:15" color="">}}




{{<matomeQuote body="見方はいろいろあるけど：<br>ー プロトコルは記述的、APIは指示的<br>ー プロトコルは実装されるもの、APIは実装するもの" userName="rewgs" createdAt="2025/05/26 05:36:31" color="">}}




{{<matomeQuote body="プロトコルはSubwayの列みたいで、APIはバー＆レストランみたいな感じだよ。" userName="neuroelectron" createdAt="2025/05/25 23:02:09" color="">}}




{{<matomeQuote body="プロトコル ＝ データ構造とかコマンド含めて、チャンネル全体を定義するもの．<br>API ＝ どうやって接続するか．" userName="anthk" createdAt="2025/05/27 05:00:19" color="">}}




{{<matomeQuote body="何だって？ Waylandはプロトコルだよ．APIじゃない．" userName="PeakKS" createdAt="2025/05/25 23:46:03" color="">}}




{{<matomeQuote body="OPはcompositorとwindow managerを分離してprotocolで話させたいみたい。全然できるんだけど、今のWayland protocolとかにはない（たしか）。shell protocolにその片鱗があるかな？" userName="quotemstr" createdAt="2025/05/26 00:36:04" color="#ff33a1">}}




{{<matomeQuote body="もっと高レベルで、window manager特化のprotocolのことだよ。低レベルな操作は全部飛ばしてさ。" userName="eikenberry" createdAt="2025/05/26 01:08:55" color="">}}




{{<matomeQuote body="何に一番驚くか分かんないよ。Prologでwindow managerを書いたって事実か、そもそも誰かがPrologを使ってるって事実か。" userName="major505" createdAt="2025/05/26 12:10:55" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞そもそも誰かがPrologを使ってるって事実か。<br>これ見てよ: [URL]。面白いPrologの事実: 96〜00年、Windows NT 4の一部としてPrologプログラムが数千万人に配布されてたんだ: [URL]。今Prolog使うかって？今日NT4使ってる人がいるんだから…レトロコンピューティングとかノスタルジー的に楽しむなら、昔のラバランプを今見るのと一緒だよ。" userName="DaiPlusPlus" createdAt="2025/05/26 14:09:19" color="#45d325">}}




{{<matomeQuote body="すごくいいね。dwmに慣れてるなら自然に使えるはず。ただし、僕みたいにdwmのtagsをworkspaces以上（別の使い方）で使ってるなら話は別だけどね。作者はそうじゃないからtagsじゃなくてworkspacesとして実装したんだ。だから、これ（Plwm）は僕のdwmの代わりにはならないな。" userName="leephillips" createdAt="2025/05/25 18:43:00" color="#38d3d3">}}




{{<matomeQuote body="tagsって、一度分かると本当に素晴らしいアイデアだよね。でも、それに慣れてうまく使えるようになるまで1年くらいかかったのは認めざるを得ないな。" userName="ninjin" createdAt="2025/05/26 04:40:47" color="">}}




{{<matomeQuote body="なんか、Erlangだらけだった時のHNのトップページ思い出したな。" userName="B1FF_PSUVM" createdAt="2025/05/25 19:45:47" color="">}}




{{<matomeQuote body="面白い豆知識: Erlang interpreterの最初のバージョンはPrologで書かれたんだって。" userName="pona-a" createdAt="2025/05/25 19:49:32" color="#ff5733">}}




{{<matomeQuote body="ソースコード見てみたけど、めっちゃコンパクトだったよ。すげえな。" userName="smikhanov" createdAt="2025/05/25 22:37:01" color="">}}




{{<matomeQuote body="ただコンパクトなだけじゃなくて、すごく分かりやすいコメントがいっぱい書いてあるね。いいね！" userName="Y-bar" createdAt="2025/05/26 09:07:04" color="#45d325">}}




{{<matomeQuote body="今まで見たPrologと全然違う感じだね。論理のための宣言型言語を、ウィンドウマネージャーっていう実際アプリのためにひっくり返して使ってるなんて、マジすごいわ。ブラボー！" userName="echelon" createdAt="2025/05/25 22:47:56" color="#45d325">}}




{{<matomeQuote body="ウィンドウ管理とか、制約って一般的に論理プログラミングにめっちゃ合うよね。" userName="summarity" createdAt="2025/05/26 00:52:10" color="#ff33a1">}}




{{<matomeQuote body="X11向けだと、Schemeで書かれたのがあって、ちゃんと制約ソルバー使ってレイアウトしてたやつがあったよ。" userName="signa11" createdAt="2025/05/26 01:48:21" color="#ff5733">}}




{{<matomeQuote body="うわー、これ試さなきゃ。ドキュメントもいっぱいあるんだ！最高！" userName="YeGoblynQueenne" createdAt="2025/05/25 19:57:15" color="">}}




{{<matomeQuote body="これすごいね。Prolog詳しくないんだけど、これってPrologの論理機能使ってるの？それとも”関数的”な部分だけ？見た感じ’det’とか’semidet’ばっかで、論理的な使い方はしてなさそうに見えるんだけど、何か見落としてるかな？Prologは関数型としてもいいけど、論理機能をもっと使ってて欲しかったな。" userName="5-" createdAt="2025/05/26 11:49:09" color="#ff33a1">}}




{{<matomeQuote body="実は俺も去年PrologでX11のWM作り始めたんだ。他のことにかまけて放置しちゃったけど。最初は有理制約使ってBSP分割定義するモジュールからだった。そうすれば、有効なペインレイアウトを簡単に変えられるかなと思って。" userName="mbrock" createdAt="2025/05/26 15:03:52" color="#45d325">}}




{{<matomeQuote body="JSとかCSSで実装されてるWMってあるのかな？それか少なくともJS/CSSを使えるやつとか？Web技術でウィンドウ管理したり装飾したりできたら最高だね。" userName="Jerry2" createdAt="2025/05/26 16:01:50" color="">}}




{{<matomeQuote body="言語の選択はさておき、plwmに似てるWMとか、何かインスピレーションになったWMとかあるのか気になるな。" userName="bolangi" createdAt="2025/05/26 04:31:41" color="#ff33a1">}}




{{<matomeQuote body="全部ライブラリ入れてGentooでコンパイルしてみたんだけど、画面真っ暗でマウスカーソルしか出ないや。" userName="jimmaswell" createdAt="2025/05/26 04:53:10" color="">}}




{{<matomeQuote body="それってたいていのタイリングウィンドウマネージャーと同じじゃん。キーバインド見てみ？ターミナルか何か起動してみなよ。" userName="johnisgood" createdAt="2025/05/26 06:47:29" color="">}}




{{<matomeQuote body="キーバインド（あと README.md も全部）読んだけど、”launch”とかそういうコマンド期待してたのに何もなかったんだよね。”Increase number of master windows”ってのが一番有望そうだったけど何も起きなかった。唯一反応したコマンドは super+shift+q で終了するやつだけ。Xorg とか plwm のログにも異常はなかったよ。" userName="jimmaswell" createdAt="2025/05/26 18:26:44" color="#785bff">}}




{{<matomeQuote body="前からあるよ。<br>https://en.wikipedia.org/wiki/Scwm<br>あと、”GWM” ってのもあった。独自のlisp方言”WOOL”に基づいてて、少なくとも90年代初頭からあったみたい。<br>もっとメジャーなところだと、sawfish（elispっぽい何かを使ってたはず）とか stumpwm (Common Lisp) がいたね。" userName="mhd" createdAt="2025/05/25 20:42:27" color="#ff33a1">}}




{{<matomeQuote body="Sawfish（一時 Gnome の公式VMだった）は Lisp のプラグインがあったね（それとも本体も Lisp で書かれてたっけ？）" userName="anthk" createdAt="2025/05/27 05:03:06" color="">}}




{{<matomeQuote body="Guile Scheme で書かれたのがこれだよ。<br>https://wingolog.org/archives/2008/07/31/introducing-griddy" userName="pona-a" createdAt="2025/05/25 20:37:18" color="#ff5c5c">}}




{{<matomeQuote body="これは Lisp でカスタマイズできて、全体的にかなりイケてるよ。https://sawfish.tuxfamily.org/<br>もう何年も毎日楽しく使ってるんだ。:-) " userName="igorhvr" createdAt="2025/05/25 22:18:29" color="#ff5c5c">}}




{{<matomeQuote body="もうあるよ。<br>https://github.com/mwitmer/guile-wm<br>他の Scheme でも存在するかもしれないけど、FFI が Scheme 間で標準化されてないから、実装に依存しないのはなさそうかな。" userName="tmtvl" createdAt="2025/05/25 20:40:58" color="#785bff">}}




{{<matomeQuote body="1991年頃に作ったNeWSベースのX11ウィンドウマネージャーだよ。全部PostScriptで書いてて、パイメニューとかタブ付きウィンドウとかあったんだ。仮想デスクトップとかもあって、これらがシームレスに動いたんだ。リンク色々あるから見てね。僕はICCCMはマジで技術的な大災害だと思ってるよ。Jamie Zawinskiも「マッシュポテトで本棚作るみたい」って言ってる（笑）。X10時代のWMの話もあるよ。" userName="DonHopkins" createdAt="2025/05/25 20:47:52" color="#ff5c5c">}}




{{<matomeQuote body="見てくれてサンキュー！Sunは採用しなかったけど書くのは楽しかったな。ICCCMとか関連リンク、別のNeWSコード例も見てね。OWMにはXCalcのボタンを全部個別の窓として扱って、リサイズとかアイコン化できるようにするイースターエッグを仕込んでたんだ（コード付き）。XCalcはリサイズするとグリッドがずれて壊れたからね（笑）。あれはAthena Widgetがひどかった。僕らはそれ見て爆笑したけど、直してあげたかったんだ。ICCCM WMでもできなくはないけど、僕らのNeWS WMは自動でやってくれたんだよ。" userName="DonHopkins" createdAt="2025/05/26 15:55:38" color="#ff5c5c">}}




{{<matomeQuote body="Xaw3Dってxcalcのあのジオメトリの問題、解決したっけ？" userName="anthk" createdAt="2025/05/27 05:06:27" color="">}}




{{<matomeQuote body="”.pl”って Perl でよく使う拡張子じゃない？まさか Perl で書かれた Prolog インタプリタとか？（regex で）" userName="rclkrtrzckr" createdAt="2025/05/25 20:12:37" color="">}}




{{<matomeQuote body="Prolog の方が Perl より10年以上前から ”.pl” 使ってたんだよ。" userName="ajdude" createdAt="2025/05/25 20:21:19" color="">}}




{{<matomeQuote body="両方で使われてるから、ファイル拡張子だけで何の言語か推測するツールとかは混乱しちゃうよね。" userName="tikhonj" createdAt="2025/05/25 21:07:15" color="">}}




{{<matomeQuote body="Prolog は Perl より古いし、ファイル拡張子に「これはうちの！」って独占権主張する必要もないでしょ。" userName="jimjimjim" createdAt="2025/05/25 20:23:55" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
