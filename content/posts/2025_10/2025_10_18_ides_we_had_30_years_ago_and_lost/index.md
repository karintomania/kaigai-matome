+++
date = '2025-10-18T00:00:00'
months = '2025/10'
draft = false
title = '30年前のIDEは凄かった！ 失われた開発の楽さとは？'
tags = ["IDE", "プログラミング", "デスクトップアプリ", "UI/UX", "開発手法"]
featureimage = 'thumbnails/purple2.jpg'
+++

> 30年前のIDEは凄かった！ 失われた開発の楽さとは？

引用元：[https://news.ycombinator.com/item?id=45626910](https://news.ycombinator.com/item?id=45626910)




{{<matomeQuote body="Visual Basicはグラフィックプログラミングの頂点だったね。あんなにサクサクGUIアプリが作れるツールは他にないよ。C# WinFormsが次に近いけど、それ以降は個人開発者向けじゃないんだ。SDD/VDD（音声開発）ってアイデアもあるけど、AIモデルがもっと速くならないと難しいね。" userName="sheepscreek" createdAt="2025/10/18 19:32:10" color="#785bff">}}




{{<matomeQuote body="Visual BasicのUIプログラミングはシンプルで効率的だったけど、2000年のLCDや高DPIディスプレイの登場で限界が来たよ。VBのUIエディターは固定レイアウトで、フォントやボタンサイズも固定、ダイアログもリサイズ不可だった。翻訳がめちゃくちゃ大変で、ドイツ語なんかだとレイアウトが崩れないように余白を大量に入れる必要があったんだ。現代のUIフレームワークは複雑だけど、VB6が解決できなかった問題をちゃんと扱ってるよね。" userName="thw_9a83c" createdAt="2025/10/19 13:26:10" color="#38d3d3">}}




{{<matomeQuote body="VBの固定レイアウトが問題って言ってるけど、動的レイアウトに対応したビジュアルUIエディターは昔からあったよ（Glade for GTK+とかね）。今のUIフレームワークの根本的な問題は、固定DPIディスプレイのせいじゃなくて、無意味な更新ばかりしてることだよ。" userName="zozbot234" createdAt="2025/10/19 14:42:29" color="">}}




{{<matomeQuote body="JavaのSwingは99年には動的レイアウトに対応してたよ。最初は遅かったけど、Java 1.3/1.4で改善されたね。2004年にC# WinFormsに移ったら、レイアウトマネージャーもないしカスタマイズも無理で、Swingとは比べ物にならないくらいひどかったから転職まで考えたよ。Microsoftは20年以上経ってもSwingを超えられてない。WPFはまあまあだけどXAMLが複雑だし、Silverlightはひどかった。デスクトップアプリの「シンプルさ」は懐かしいけど、配布やサポートの複雑さとの引き換えだよね。誰もInstallShieldやMSIなんて懐かしがらないよ！" userName="bartread" createdAt="2025/10/20 16:41:52" color="#ff5733">}}




{{<matomeQuote body="デスクトップアプリ開発の「シンプルさ」に憧れるの、すごくわかるよ。ドキュメントマークアップ言語を介さずに、UIウィジェットに特化したAPIを使えるって最高だよね。" userName="frou_dh" createdAt="2025/10/22 14:24:16" color="">}}




{{<matomeQuote body="SwingはJetBrains製品とかで今でも現役だよ。JavaFXはオープンソースになったけどね。.NETのレイアウトマネージャーについては、Windows FormsだとTableLayoutPanelやFlowLayoutPanelが使えたんだ。WPFは最初からレイアウトマネージャーを使ってるから、Windows Forms開発者にはドラッグ＆ドロップの操作が変に感じたんだろうね。" userName="pjmlp" createdAt="2025/10/22 13:25:45" color="#ff5c5c">}}




{{<matomeQuote body="うん、でもあのレイアウトマネージャーは後から追加されたんだよ。2000年代初頭にはなかったはず。MicrosoftはWinFormsが流行らなくなってからも、新機能を追加して長くサポートし続けたのはすごいと思う。今もそうかは知らないけどね。最後にWinFormsを触ったのは2013年だよ。" userName="bartread" createdAt="2025/10/22 17:43:06" color="">}}




{{<matomeQuote body=".NET 2.0以降だね。" userName="pjmlp" createdAt="2025/10/22 20:00:30" color="">}}




{{<matomeQuote body="そう、2005年頃だったね。うちは顧客との互換性で2006/7年まで.NET 1.1を使ってたけど、SQL Server Management Studioとの連携で.NET 2.0に強制移行したんだ。WPFは.NET 4（2010年頃）まで使わなかったな。2004年に入社した時、.NET 1.0とVisual Studio 2002（ReSharper非対応）で、IntelliJ IDEAからだと悪夢だったよ。2004年末か2005年初めには.NET 1.1とVS2003に移行させて、ReSharperが使えるようになってようやく快適になったんだ。" userName="bartread" createdAt="2025/10/24 17:25:03" color="#ff33a1">}}




{{<matomeQuote body="JavaFXはSwingの後継で、長年使ってるよ。癖はあるし、APIの改善が途中で止まっちゃったとこもあるけど、ちゃんと動くし、すごい良いところもあるんだ。" userName="wduquette" createdAt="2025/10/20 18:26:12" color="">}}




{{<matomeQuote body="DPI固定表示ってのは技術的にはそうかもだけど、本当は違うんだ。Windowsには「Large Fonts」ってシステム全体の拡大オプションがあって、VBのGUIはtwips単位でこれに合わせてスケーリングできた。VB6のフォームはリサイズ可能なものが多くて、簡単なライブラリでサイズ調整ロジックを書かずにアンカー機能を使えたんだよ。" userName="electroly" createdAt="2025/10/19 20:27:30" color="#45d325">}}




{{<matomeQuote body="周辺的なユースケースに「ノー」って言うことの価値がよく分かるよね。顧客が特定の国にいて、クラウドのスケーラビリティを気にしないなら、ずっとシンプルにできる。もちろん、本当に複雑さが必要なアプリもあるけどね。" userName="FredPret" createdAt="2025/10/19 13:42:02" color="#ff5733">}}




{{<matomeQuote body="今でも多くのアプリは昔の制約で十分なんだよ。もし固定レイアウトと国際化なしで、たった一つの依存関係だけで、ボイラープレートなし、デプロイも簡単なリッチアプリが書けるなら、喜んでそれを受け入れるね。" userName="tga" createdAt="2025/10/19 15:25:51" color="#ff5733">}}




{{<matomeQuote body="Qt Designerなら、フレキシブルなレイアウトのビジュアルデザインも結構うまくできるんだ。" userName="account42" createdAt="2025/10/20 10:25:46" color="">}}




{{<matomeQuote body="2000年に陳腐化したVisual Basic UIのプログラミングのシンプルさと効率は、いくつかの前提に依存してたって点、すごくいい指摘だよね。確かに昔はシンプルだったけど、それにはコストがあった。例えば、視覚障害のある人にとってVBアプリはどれくらいアクセシブルだったんだろう？" userName="mexicocitinluez" createdAt="2025/10/19 13:38:53" color="#45d325">}}




{{<matomeQuote body="視覚障害のある人にとってVBアプリはどれくらいアクセシブルだったか？って質問だけど、偶然にも、固定レイアウトだったのにWin32コンポーネントを使っていたから、すごくアクセシブルでスクリーンリーダーとも相性が良かったよ。Vulcan/DirectX/OpenGLキャンバスとして画面をレンダリングするUIフレームワークだと、こうはいかない。今のElectronアプリならWAI-ARIAとかを使えば、同等のアクセシビリティは実現できるけどね。" userName="thw_9a83c" createdAt="2025/10/19 15:25:43" color="#45d325">}}




{{<matomeQuote body="それに、WinFormsでは色が簡単に調整できたんだ。ダークモードやハイコントラストモードとか、あらゆる色がアプリで簡単に設定できたし、視覚障害者にとって標準的な機能だった。プログラマーの追加作業は不要だったから、良いダークモードサポートを懇願しなきゃいけない今日よりもはるかに優れてたよ。" userName="Grumbledour" createdAt="2025/10/20 08:35:39" color="#38d3d3">}}




{{<matomeQuote body="今の「ダークモード」って最大の詐欺だよね。昔はどんなUIツールキットでも標準機能だったカラーテーマを、骨抜きにして新しいもの、エキサイティングなものとして売りつけてるんだから。" userName="account42" createdAt="2025/10/20 10:28:26" color="#ff5733">}}




{{<matomeQuote body="今のElectronベースのアプリよりも、昔のIDEはデフォルトでアクセシブルだったんだよ。" userName="DiskoHexyl" createdAt="2025/10/19 14:57:19" color="">}}




{{<matomeQuote body="「VBのUIエディタは固定レイアウトだった」って言うけどさ、コードで動的にリサイズできたんだよ！<br>例えば`textarea.width = form.width - ( textarea.left * 2 )`みたいにね。ウィンドウサイズに合わせてコントロールを調整してたんだ。複雑なレイアウトだと専用のプロシージャが必要だったけど、アマチュアのティーンプログラマーでも絶対できたよ。Delphiとかにはアンカーとかもっと便利な機能があったかもね。" userName="project2501" createdAt="2025/10/21 14:45:52" color="#45d325">}}




{{<matomeQuote body="当時も今もDelphiはVBより優れてるし、Lazarusもそうだね。C# WinFormsはVBよりもDelphiに近いし、これもまだ現役だよ。" userName="int_19h" createdAt="2025/10/19 00:18:21" color="">}}




{{<matomeQuote body="驚くことじゃないよ、DelphiもC#もAnders Hejlsbergがデザインを主導したんだから。（彼はその後、Typescriptもデザインしたよ。）" userName="throw-the-towel" createdAt="2025/10/19 17:01:13" color="#ff5c5c">}}




{{<matomeQuote body="twinBASICっていうプログラミング言語を見てみてよ。VB6互換でVB6のソースコードやフォームをインポートできるし、モダンな機能も追加されてるんだ。" userName="VB6-Programming" createdAt="2025/10/24 16:24:52" color="#ff5733">}}




{{<matomeQuote body="Qt CreatorはVB6で体験した感覚にかなり近いと思うんだけど。試してみた？" userName="ranger_danger" createdAt="2025/10/18 23:52:45" color="">}}




{{<matomeQuote body="ああ、C++がそこそこ分かるなら、基本的なアプリはかなり早く作れるね。" userName="EasyMark" createdAt="2025/10/19 02:58:03" color="">}}




{{<matomeQuote body="Pythonでも使えるし、1時間でデスクトップUIを構築できるよ。" userName="ChromaticPanic" createdAt="2025/10/19 16:58:46" color="">}}




{{<matomeQuote body="視覚的な部分もすごく簡単に構築できたよね。僕にとって、それらをまとめるのは3番目のステップだったんだ。プロジェクトの始まりはプログラミングというより、デザインやPowerPointに近い感覚だったな。視覚的な結果がすごく早く出て、勢いを保てたんだ。" userName="tiku" createdAt="2025/10/19 07:27:49" color="#ff5733">}}




{{<matomeQuote body="「VB以来、どんなツールもそれに匹敵するものがない」って言うけど、OS X/macOSだと、AppleがSwiftUIを導入するまでXcodeのInterface Builderがその役割を長く担ってたんだよ。Windowsの開発者たちは別のプラットフォームだから気付かなかっただけだね。" userName="raydev" createdAt="2025/10/19 17:22:00" color="#785bff">}}




{{<matomeQuote body="Delphi、C++ Builder、それにXojoみたいなのもまだあるよ。問題は最近のElectronまみれの状況だけどね。" userName="pjmlp" createdAt="2025/10/20 07:41:10" color="">}}




{{<matomeQuote body="2010年頃、iPhone開発してたんだ。XcodeのInterface Builderはかなり強力だったよ。複数画面をドラッグ＆ドロップで繋げられたんだ。" userName="geon" createdAt="2025/10/19 16:17:52" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Emacsなら今でもこれ全部できると思うよ。筆者は「古めかしい」って言ってるけど、慣れてないだけじゃないかな。Emacsは完全に自己完結しててインタラクティブだよ。僕にとって最高のテキストUIはMagit in Emacsだね。https://magit.vc/<br>もっと多くのEmacs機能がMagitみたいだったらいいのに。他のIDE使ってても、gitクライアントはEmacsを使ってるんだ。" userName="dimitar" createdAt="2025/10/18 13:28:53" color="#ff5733">}}




{{<matomeQuote body="＞完全に自己完結しててインタラクティブ。残念だけど、それは違うね。Emacsを何回か起動してみたけど、保存の仕方が全然分からなかったよ。viよりはドキュメントがあるかもしれないけど（viのUIはひどいからね）、指示なしでサッと使えるほど自己完結してはいないよ。" userName="bigstrat2003" createdAt="2025/10/18 15:15:20" color="#785bff">}}




{{<matomeQuote body="Magitはすごいよね。開発者たちはどうやってあのデータモデルを思いついたんだろう？いつもgitのデータモデルを超えてる感じがしてたんだ。そしてgitのporcelainはただの断片の山だしね。" userName="dapperdrake" createdAt="2025/10/18 13:54:28" color="#ff33a1">}}




{{<matomeQuote body="Turbo-VisionみたいなIDEを操作して機能を探索するには、TFAで示唆されてるように、AltとTabキーの操作を知ってれば基本的にOKなんだ（あとReturn、Esc、矢印キーもね）。Emacsにはそこまでの基本操作の統一性はないと僕は思うよ。" userName="layer8" createdAt="2025/10/18 14:28:31" color="#38d3d3">}}




{{<matomeQuote body="Magitの体験は、UIにtransientパッケージを使ってるからなんだ。他にもいくつかのパッケージがこれを使ってて、個人的に一番使ってるのはgptelパッケージだよ。" userName="creddit" createdAt="2025/10/18 13:32:10" color="#38d3d3">}}




{{<matomeQuote body="EmacsはAppleがcmd-z/x/c/vを開発する前から存在してたんだ。その前は、プログラマーエディタで一番コピーされてたのはWordstarのキー操作で、Borland製品とかね。あと、記事の筆者は30～40年前の素晴らしいIDEを知らないみたいだね。例えば、Apple MPW (1986)、Apple Dylan (1992-1995)、THINK Pascal and C (1986)、Metrowerks Codewarrior (1993)、Macintosh Allegro Common Lisp (1987)とかさ。当時の貧弱なスペックで、これらがどれだけ洗練されてたか、本当にすごいよ。" userName="brucehoult" createdAt="2025/10/18 14:43:21" color="#45d325">}}




{{<matomeQuote body="Emacsの基本入力は「M-x」だよ。そこからどんなコマンドでもアクセスできる。elispコードを評価するなら「M-:」があるね。フレーム、ウィンドウ、バッファ、ポイント、マーク、リージョン…みたいなUI概念をいくつか学ぶ必要があるけど、それらは一枚の紙に収まるくらいだよ。" userName="skydhash" createdAt="2025/10/18 14:38:21" color="#ff33a1">}}




{{<matomeQuote body="Magitのtransient UIはイライラするね。isearchとかバッファ切り替えを壊すから。EmacsのテキストUIのすごいところは、一貫してテキストを操作できることだよ。isearch、Occur、diff、find-file-at-pointとかね。Magitより面白いのは、コンパイルバッファ（M-x compile）だ。エラーをハイライトする普通のテキストバッファで、参照ファイルに飛べる。バッファを保存すれば、後で開いてもハイライトはそのまま。「g」キーで同じコンパイルを再実行できる。状態がファイル内に構文的に存在してるから、Emacsを閉じても失われないんだ。M-x grepも同じだよ。" userName="pkal" createdAt="2025/10/18 13:55:50" color="#38d3d3">}}




{{<matomeQuote body="＞慣れてないだけじゃないかな…いや、LinuxのGUIユーザーも含めて、EmacsのGUI版を使ってても、みんな慣れてないだけじゃないよ。" userName="badsectoracula" createdAt="2025/10/18 13:35:21" color="">}}




{{<matomeQuote body="MagitやEmacs、Vim、Atom、NeoVim、NeoGitなど、いろんなGitツールを使ってきたけど、NeoGitはすごいってほどじゃないんだよね。一体どんな機能が「ぶっ飛ぶ」って言われるほどすごいのか、ぜひ教えてほしいな！" userName="nobleach" createdAt="2025/10/18 15:07:06" color="#38d3d3">}}




{{<matomeQuote body="昔のBorland製品はWordstarのショートカットからIBM Common User Accessのに変わったんだよ。Ctrl+Ins、Shift+Ins、Shift+Delとかね。これがWindowsでも使えたから、Turbo VisionのTUIアプリとGUIで共通で使えてマジ便利だったんだ！ URL: https://en.wikipedia.org/wiki/IBM_Common_User_Access" userName="int_19h" createdAt="2025/10/19 00:20:17" color="">}}




{{<matomeQuote body="Magitがすごいのは、Gitを本当に使いやすくしてくれるからだよ。" userName="SoftTalker" createdAt="2025/10/18 16:21:49" color="">}}




{{<matomeQuote body="Magitのデータモデルって、そんなに特別なものじゃないんだよね。Magitが素晴らしいのは、標準のGitのインターフェースがひどすぎるから。まさに「対比の原理」ってやつさ。" userName="BeetleB" createdAt="2025/10/18 16:51:49" color="">}}




{{<matomeQuote body="MagitのUIって、他のツールと全然違う慣習を使ってるから、全然「慣習」って言えないよね。プラットフォームの慣習にも合ってないから、最初は大変。チュートリアルで10～15分かかるって言うけど、Turbo C++なら0分で基本を習得できる気がするな。EmacsやVimの熱狂的なファンがいるのは分かるけど、使いやすさは慣れだけじゃなくて、客観的に測れるものだよ。" userName="jama211" createdAt="2025/10/18 17:33:33" color="#785bff">}}




{{<matomeQuote body="Emacsユーザーが「C-x C-fでinit.el開いて、M-x eval-bufferして、C-c C-cでorg-babelブロック実行して、C-x kでスクラッチバッファ閉じた」とか言うの、もう呪文にしか聞こえないんだよね。そんなややこしいことしてるなら、俺は普通のテキストエディタでコードいじるわ。みんなもX-wingとかmork-butterflyとかporg fluffersで楽しんでな。" userName="marssaxman" createdAt="2025/10/18 17:27:49" color="">}}




{{<matomeQuote body="なんか俺だけかもしれないけど、コマンドラインのGitってそんなに使いにくいかな？ ストックホルム症候群なのかもだけど、高度なことはちょっと難しいにしても、コミットとかブランチ、マージみたいな基本的な操作は簡単だと思ってたんだけどな。" userName="tombert" createdAt="2025/10/18 16:46:50" color="">}}




{{<matomeQuote body="Emacsで設定してないのにCtrl+InsやShift+Insが使えて、しかもミニバッファでも動くって、最近知って驚いたんだ。Linuxのターミナルエミュレーターでも使えるし、これって思ってるよりもずっと普遍的なんだね。" userName="kccqzy" createdAt="2025/10/19 01:26:08" color="">}}




{{<matomeQuote body="もしかして、「git clone」とか「git commit」とか、「mkdir」や「grep」も使わないってこと？" userName="skydhash" createdAt="2025/10/18 19:47:03" color="">}}




{{<matomeQuote body="ごめん、その質問の意図がよく分からないんだけど？" userName="marssaxman" createdAt="2025/10/19 00:53:20" color="">}}




{{<matomeQuote body="Emacsは初期インストールならヘルプ画面でチュートリアル案内が出て、10～15分で基本がわかるよ。もしそれをスキップしたら、一般的なソフトとはかなり違う印象になるのは仕方ないかもね。" userName="SoftTalker" createdAt="2025/10/18 16:19:53" color="#785bff">}}




{{<matomeQuote body="Emacsは保存すらわからなかったっての、めちゃわかるわ。1988年からUnix使ってるけど、Emacsって1962年から来たみたいな変なやつだよね。UI標準化が進んだ80～90年代のファンとしては、古くて使いにくいよ。ErgoEmacsはいいけど、Emacs知ってないと使えないのが残念。デフォルトでErgoEmacsが入ってるEmacsが欲しいな。https://ergoemacs.github.io/" userName="lproven" createdAt="2025/10/19 14:34:33" color="#ff5733">}}




{{<matomeQuote body="コメントで言ってたキーバインドは全部M-xで使えるコマンドだよ。Emacsのいいところって、テキスト編集をめちゃくちゃ拡張できるコマンドがあることなんだ。org modeが一番いい例で、オーガナイザーとかタイムトラッカー、執筆プラットフォームとか、なんでもできるモードを追加できるんだ。" userName="skydhash" createdAt="2025/10/19 11:12:15" color="#ff33a1">}}




{{<matomeQuote body="あれ？一時バッファでも`C-s`は問題なく使えるし、他のバッファと同じだよ。`C-h`のオーバーライドもかなり便利。Magit-statusから`C-h -D`ってやると、`Man git-log`の該当箇所に飛べるんだ。コメント書いてて新しい技覚えちゃったよ！" userName="internet_points" createdAt="2025/10/18 18:19:08" color="#ff5c5c">}}




{{<matomeQuote body="難解なのが問題じゃなくて、Emacsとかviって発見しにくいのが問題だよね。デフォルトでメニューとかみたいに、自分でインターフェースを学べる機能がないんだ。もっと学習曲線が緩やかで、毎回本を読まなくても気軽に使えるべきだと思うな。" userName="speed_spread" createdAt="2025/10/18 20:27:37" color="#45d325">}}




{{<matomeQuote body="Magitは本当に最高なんだけど、たまーにすごく遅くなったり、バグったりすることがあるんだよね。" userName="bowsamic" createdAt="2025/10/18 15:41:12" color="">}}




{{<matomeQuote body="これらの慣習は、Linuxの多くのGUIツールや、組み込みのGit GUI、シェル、あとMacOSのテキストボックスなんかでも使えるんだよ。" userName="1718627440" createdAt="2025/10/19 20:39:14" color="">}}




{{<matomeQuote body="Emacsを使うには、CtrlとAlt、それにキーボードの基本的な使い方（Returnで改行や確定、Shiftで大文字とか）を知ってれば大丈夫だよ。Emacsの主な難しさって、膨大なコマンド数とその名前やパターンのバラバラさなんだ。これは開発の歴史が原因だと思う。でも基本は君の言った通りだね。" userName="JoelMcCracken" createdAt="2025/10/18 15:10:33" color="#38d3d3">}}




{{<matomeQuote body="一時バッファで`C-s`で何か検索してみてよ。それから`C-n`とかでi-searchを終了。まだ一時バッファは使える？俺の場合はただのテキストバッファになっちゃって、ショートカットが全部`self-insert-command`になっちゃうんだよね。" userName="pkal" createdAt="2025/10/18 20:22:15" color="#45d325">}}




{{<matomeQuote body="俺が言ったキーだけで、そのTUIの操作は全部見つけて実行できるよ。Emacsみたいにコマンドとか特定のショートカットを覚えなくてもいいんだ。GUIでマウスだけで全部操作できるのに似てるかな。よく使うショートカットは覚えてもいいけど、必須じゃないってことだね。" userName="layer8" createdAt="2025/10/18 14:47:28" color="#38d3d3">}}




{{<matomeQuote body="親切な返信ありがとう。Emacsに詳しくないから、君の説明にはついていけないんだ。前のメッセージのEmacs用語はChatGPTにそれっぽいことを言わせただけで、意味がわからないんだよ！<br>Emacsはとてつもなく強力で設定も自由自在って聞くし、特別なことをしたい人には最高だろうね。昔は環境をいじるのも楽しかったけど、今はシンプルでわかりやすい普通のツールがいいんだ。ツールについて考えるよりも、タスクに集中したい。Emacsは他の人が appreciating してくれればそれでいいよ。" userName="marssaxman" createdAt="2025/10/19 16:45:45" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「説明なしに使えるほど自己文書化されてない」って言うけど、3Dプリンターだって初めて見て説明書もなしにポンと置かれたら、何か使い物になるものを作るのに時間がかかるだろ？良いツールは全部、訓練と経験が必要なんだよ。" userName="jjav" createdAt="2025/10/19 09:06:36" color="">}}




{{<matomeQuote body="Turbo Pascalは本当にすごかったよ。非標準Pascalだからって長いこと抵抗してたのを覚えてるけど、競争相手のツールは力不足だしはるかに高価だったからね（例えばMicrosoftのツールとか）。それで試してみたら、完全にぶっ飛んだよ。非標準のことなんてどうでもよくなったんだ。オリジナルのIBM PCで速くて直感的なIDEが動いてたんだから。<br>現代のIDEについては、IntelliJが25年以上もどの競合製品よりも何桁も優れてる（と思う）。俺は長いことMicrosoft製品からは離れてるから、VSCodeやその前身についてはコメントできない。覚えている主な競合はEclipseだけど、いつも動作が鈍くて直感的じゃないしバグだらけだと感じてた。この記事で触れられていないのも納得だよ。IntelliJ（それからPyCharm、CLion、その他多く）を作ったJetBrainsは、ミッションを明確にし、それにこだわり、何年にもわたって卓越した成果を上げてきて、道を踏み外したり妥協したり、身売りしたりしなかった、そんな極めて珍しい会社の一つだ。彼らが広大で成長し続ける言語、コーディング標準やスタイル、ツールのコレクションをサポートしながら、この高いレベルの excellence を維持していることは、俺にとって本当に impressive だね。" userName="geophile" createdAt="2025/10/18 16:28:09" color="#785bff">}}




{{<matomeQuote body="「VSCodeとその前身についてはコメントできない」って話だけど、VSCodeは過去のものの薄っぺらい模倣品だよ。Visual C++は素晴らしかったし、今でも俺のお気に入りのIDEさ。MicrosoftがBorlandのトップコンパイラエンジニアをみんな引き抜いたから、Visual C++はBorlandのTUI IDEの精神的後継と言えるんだ。" userName="imron" createdAt="2025/10/19 09:20:28" color="#45d325">}}




{{<matomeQuote body="リソースの使用量を除けばね。クラウドデスクトップでNeovimが使えないから、VSCodeのVim系プラグインより優れたIdeaVimを選んだんだ。4コア16GBのRAMでもプロジェクトをいくつか開くと苦しいよ。会社のWin11とセキュリティマルウェアのせいもあるけど、VSCodeはそこまで負荷をかけてないみたいだね。" userName="prmoustache" createdAt="2025/10/18 19:54:36" color="#38d3d3">}}




{{<matomeQuote body="Visual Studioは今でもWinFormsとグラフィカルなフォームデザイナーをサポートしてるよ。90年代後半のDelphiのオリジナル体験にすごく近いんだ（特にWinFormsがVCLのあからさまな模倣だからね）。" userName="int_19h" createdAt="2025/10/19 00:24:13" color="#785bff">}}




{{<matomeQuote body="いや、ちょっとステップが足りないよ。WinFormsの前にはWFC（Windows Foundation Classes、.NETのWFCとは別物）があったんだ。これはJ++で使われていて、Sunの訴訟の原因の一つにもなったんだよ。イベントやJ/Direct（P/Invokeの先駆け）と共にね。元祖の模倣はWFCの方で、WinFormsは基本的にWFCをC#で作り直したものなんだ。詳細はこちら: https://news.microsoft.com/source/1998/03/10/microsoft-visua..." userName="pjmlp" createdAt="2025/10/20 07:51:09" color="#785bff">}}




{{<matomeQuote body="確かに、でもJ++やWFCを覚えてる人は少ないから、俺は話を単純化したんだ。どちらにしても、VCLを知ってる人ならSystem.ComponentModelで馴染み深いものがいっぱい見つかるはずさ。" userName="int_19h" createdAt="2025/10/21 22:51:08" color="#ff5c5c">}}




{{<matomeQuote body="NetBeansは試したことある？Eclipseとかより直感的でサクサク動くよ。" userName="niutech" createdAt="2025/10/20 11:15:10" color="">}}




{{<matomeQuote body="試したよ、ごく短期間だけどね。でもIntelliJには及ばなかったな。" userName="geophile" createdAt="2025/10/21 15:46:01" color="">}}




{{<matomeQuote body="IntelliJでJNIの多言語デバッグはNetbeansみたいに簡単じゃないんだよなー。" userName="pjmlp" createdAt="2025/10/22 13:29:37" color="">}}




{{<matomeQuote body="DOS時代はキャラクタと属性をメモリに直接書いて描画してたから爆速だったんだ。<br>ANSIターミナルは遅すぎたし、SunワークステーションでEmacs使ってた時もシリアルかGUIエミュレータが激重でね。<br>TUIが消えたのはそれが理由だよ。" userName="PaulHoule" createdAt="2025/10/18 13:17:47" color="#ff5733">}}




{{<matomeQuote body="標準は80x25で、モノクロ0xb000、カラー0xb800に直接書き込みだった。<br>カラーだとチラつき防止にアセンブリハックが必要だったんだ。<br>独自のウィンドウシステムは別バッファで実装。<br>UIコードはシンプルだったけど、メモリが少なくて苦労したよ。<br>複雑なバグの元だったけど、楽しかったね。" userName="madmountaingoat" createdAt="2025/10/18 17:17:56" color="#ff5c5c">}}




{{<matomeQuote body="プログラムが対応してないと、DOSプロンプトでモード変更してから再起動しないとサイズは変えられなかったよ。<br>ビデオハードウェアがテキストモードを全画面でレンダリングしてたから、特定のサイズしかサポートしてなかったんだ。" userName="layer8" createdAt="2025/10/18 14:36:34" color="">}}




{{<matomeQuote body="割り込み（システムコール）でビデオハードウェアのタイミングレジスタを変えてたんだ。<br>基本は40か80カラム、25・43・50行だったけど、ちょっとした技で90カラムや60行も可能だった。<br>カスタムフォントも滅多になかったけどね。<br>高解像度カードで132カラムとかも出てきたよ。" userName="torgoguys" createdAt="2025/10/18 17:05:54" color="#ff5733">}}




{{<matomeQuote body="ビデオBIOSに定義モードがあって、アセンブラで割り込み（システムコール）を発行するとビデオモードが変わったんだ。<br>ビデオメモリに直接書き込んで、テキストモードならASCII/属性ペア、グラフィカルモードならカラーパレットインデックスとして解釈されたよ。<br>ゲームではMode 13h（320x200、8-bit/pixel、256色パレット）がよく使われたんだ。<br>詳しいモードリストはここ: https://www.minuszerodegrees.net/video/bios_video_modes.htm" userName="danparsonson" createdAt="2025/10/18 16:50:33" color="#ff5733">}}




{{<matomeQuote body="ソフトウェア定義モードもあったんだ。<br>Laptop Ultravision（https://www.atarimagazines.com/compute///issue138/124_Laptop...）っていうツールがDOSテキスト画面をVGAグラフィックモードとソフトフォントで動かしてね、いろんな追加モードを可能にしたんだ。<br>もちろんDOSアプリが対応してればだけどね。" userName="lproven" createdAt="2025/10/19 16:06:31" color="#785bff">}}




{{<matomeQuote body="俺も未だに自分で作ったテキストベースのエディタ／IDEを使って開発してるよ。これね: https://github.com/alefore/edge<br>10年間開発しての結論を最近ブログに書いたから、見てみて: https://github.com/alefore/weblog/blob/master/edge/README.md" userName="afc" createdAt="2025/10/18 14:39:43" color="#ff33a1">}}




{{<matomeQuote body="俺もだよ。<br>4ヶ月かかったけど、楽しかったな。これね: https://github.com/ivanjermakov/hat" userName="ivanjermakov" createdAt="2025/10/18 15:19:01" color="#785bff">}}




{{<matomeQuote body="Borland CやVB/WinFormsみたいな古いIDEは、直感的に早くシンプルなプログラムを書けて楽しかったんだ。今のシステムは強力で多機能だけど、コードに興味があるティーンエイジャーにはとっつきにくいし、学ぶべき技術が多すぎるのも困るよね。" userName="carra" createdAt="2025/10/19 08:59:33" color="#ff33a1">}}




{{<matomeQuote body="技術が多すぎて、ソロ開発者としてできることが減ったのも問題だね。チームで作業しないといけないから、社交性が必要になる。90年代中盤までのプログラマーと比べると、今は性格タイプが全然違うと思うな。" userName="supportengineer" createdAt="2025/10/19 15:04:20" color="#ff5c5c">}}




{{<matomeQuote body="今週、友達とまさにこの話をしてたんだ。最近のソフトウェアエンジニアは、90年代の”内向的なオタク”ってステレオタイプとは違って、もっと外交的で社交的に見えるよね。" userName="aadhavans" createdAt="2025/10/20 02:49:11" color="#45d325">}}




{{<matomeQuote body="これはコンピューターやインターネット、そしてインターネット文化が普及したせいでもあるな。昔はガチなオタクだけが興味を持つものだったのに、今はみんながコンピューターを使いこなすから、誰もがソフトウェア”エンジニア”になる時代だ。" userName="4gotunameagain" createdAt="2025/10/20 09:31:33" color="#ff5733">}}




{{<matomeQuote body="じゃあ、内向的な人や”ガチのオタク”は今、どこに行けばいいんだろう？俺たちの新しい居場所って、どこにあるんだろな？" userName="supportengineer" createdAt="2025/10/20 17:32:46" color="">}}




{{<matomeQuote body="Windows 11でもVisual Basic 6を動かして、99年みたいにプログラムをコンパイルできるんだぜ。Windowsってマジで後方互換性がすごいんだよ。" userName="niutech" createdAt="2025/10/19 12:51:03" color="#ff33a1">}}




{{<matomeQuote body="CやC++からVB6に乗り換えた時、俺には革命的だったな。当時作ってた小さなビジネスアプリには、すごく簡単なのに十分なパフォーマンスだったからね。" userName="christophilus" createdAt="2025/10/19 12:38:24" color="#ff5733">}}




{{<matomeQuote body="Flutterはどのプラットフォームでもネイティブじゃないし、ただカスタムコントロールを塗ったキャンバスみたいなもんだろ？VB6の軽いWin32アプリとは全然比べ物にならないよ。" userName="niutech" createdAt="2025/10/20 11:19:01" color="">}}




{{<matomeQuote body="Flutterは言語がずっと良いし、クロスプラットフォームで動くのが利点だよ。これらには本当に価値があるからね。" userName="never_inline" createdAt="2025/10/20 11:22:32" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
