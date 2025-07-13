+++
date = '2025-07-06T00:00:00'
months = '2025/07'
draft = false
title = '伝説のApple Lisa UIをバニラJSでWeb再現 UIもフォントも手作りで1ビット描画！'
tags = ["Web OS", "UI再現", "バニラJS", "1ビットグラフィック", "Apple Lisa"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> 伝説のApple Lisa UIをバニラJSでWeb再現 UIもフォントも手作りで1ビット描画！

引用元：[https://news.ycombinator.com/item?id=44482965](https://news.ycombinator.com/item?id=44482965)




{{<matomeQuote body="これが俺がVanilla JSで作ったWeb OS、https://lisagui.com/info.html だよ。Apple Lisa Office Systemっぽく見せてる。まだα版でバグだらけだけど、やっと見せられるレベルになったんだ。Lisaは最近のGUIよりデスクトップメタファーに忠実だよ。<br>UIは全部JSでCanvasに描画してる。CSSテーマでもエミュレーターでもない。Appleのコードは一切使ってないよ。UI要素やフォントまで全部ゼロから作った。Fontファイルも使ってない、独自の組版システムだよ。<br>どのブラウザでも同じに見せたかったから、DOMやCSSじゃなくJSでロジックを組んだんだ。Gulp以外はVanilla JSと標準Web APIだけ。スマホには向かないけど、PWAとしてインストールするのがベスト。Androidにはいくつかバグもあるね。<br>今はできること少ないけど、これから機能やアプリを追加する予定だよ。フィードバックや質問歓迎！" userName="ayaros" createdAt="2025/07/06 18:32:55" color="#ff33a1">}}




{{<matomeQuote body="Lisaは正方形ピクセルじゃないから、Canvasは幅の1.5倍の高さにしてるんだ。高DPIだと綺麗に見えるけど、低解像度だと歪むかも。これは妥協ね。<br>でも、十分大きい低DPIディスプレイなら、自動で整数スケーリングが効いてピクセルが大きくなるよ。設定アプリで強制もできる。失敗したらShiftキー押しながら再起動でリセット！<br>iOS PWAのバグは画面回転で直るけど、めんどいね。<br>ウィンドウはタイトルバーのアイコンをダブルクリックで閉じるんだよ！" userName="ayaros" createdAt="2025/07/06 19:24:54" color="#38d3d3">}}




{{<matomeQuote body="ブラウザのサイズに関わらず、ウィンドウとかフォントのスケーリングってどうやってんの？ HTMLだとほぼ勝手にやってくれるのにさ。" userName="ivape" createdAt="2025/07/06 22:31:21" color="#ff5733">}}




{{<matomeQuote body="整数スケーリングだよ。Canvasのwidth, height, style属性を動的に変えてる。専用のクラスがあるんだけど、これ動かすの大変だったね。DPIとかborder widthとかpixel aspect ratioとか色んなパラメータをいじってる。ResizeObserverでDOMのbody要素のサイズ変更を検知してるよ。<br>Canvasを滑らかに見せるために、CSS filterでコントラストつけて、image-renderingをpixelatedにしてる。" userName="ayaros" createdAt="2025/07/06 23:08:55" color="#ff5c5c">}}




{{<matomeQuote body="ターゲット解像度よりかなり大きく、ニアレストネイバーでアップスケールしてから、バイリニアとかでビューポートにダウンスケールするといいかもね。これやると、行/列の重複とかモアレパターンが減るし、見た目のピクセルもシャープに保てるよ。<br>俺はDOSゲームのスクショ（320x200だけど4:3表示用）で似たことやってる。1600x1200にニアレストネイバーで上げてから、バイリニアでターゲット解像度に下げるのがすごくうまくいくんだ。" userName="Gormo" createdAt="2025/07/07 15:56:57" color="#785bff">}}




{{<matomeQuote body="ニアレストネイバーでアップスケールしてバイリニアでダウンスケールするだけじゃなく、ダウンサンプリングに正しい色空間を使うのも大事だよ。よくある間違いは、sRGBを線形色空間として扱うこと。<br>sRGB値をLinear RGBに変換するには2.2乗して、計算してから1/2.2乗でsRGBに戻すんだ。Graphics APIによっては自動でやってくれるけど、リクエストする必要があるよ。" userName="Dwedit" createdAt="2025/07/07 16:28:27" color="#38d3d3">}}




{{<matomeQuote body="結論から言うと、Pixel PerfectなレンダリングはWeb APIじゃ無理だよ。devicePixelRatio (dpr) の問題とか（特に俺のWindows PCの1.25dprだとひどい）、Zoomの挙動の違い（Safari除く）、Pixel Snapping、ResizeObserverのdevicePixelContentBoxSizeがSafariにないこと、Pinch to Zoomの情報がないこととか、色々Web APIが邪魔してくるんだ。<br>要するに、できない。一部はSafariのせい、一部はWebに機能が足りないせいだね。" userName="socalgal2" createdAt="2025/07/07 20:21:06" color="#ff33a1">}}




{{<matomeQuote body="device pixel ratioのAPIコール、実際使ってないってこと、はっきりさせとくね。1年くらい前のコードだから忘れてたけど、結局独自コードでやったから必要なかったんだ、笑" userName="ayaros" createdAt="2025/07/07 23:16:11" color="">}}




{{<matomeQuote body="こういうShow HN（ハッカーニュースの「見せて！」スレッド）大好き！美味いVanilla JSに、俺よりずっと前の珍しいLisa GUIについて学べるなんて。ブラボー！<br>Demo/ExamplesでBreakoutみたいなゲームが見たいな、これは俺の子供心だけどね。" userName="rustystump" createdAt="2025/07/06 22:13:12" color="#785bff">}}




{{<matomeQuote body="ありがとう、それはすごく嬉しいね！ゲームのアイデアいいね。次はSolitaireを作る予定だよ。将来はXerox AltoのMazewarみたいなゲームも考えてるけど、ネット対応とか大変そうだな…" userName="ayaros" createdAt="2025/07/06 22:19:29" color="#ff33a1">}}




{{<matomeQuote body="フォントの幅が不均一に見えるっていうコメントがいくつか来たんだ。フォントは文字通りビットマップで、いつも同じように描画されるよ。スタイルが適用されても一貫してる。<br>Lisaのシステムフォントは独特で、2:3のアスペクト比を補うために縦線が横線より少し太いんだ。<br>もし uneven に見えるなら、低DPIディスプレイで1xスケール表示してるせいかもね。別のコメントでも書いた通りだよ。<br>この問題をデバッグするには、スクリーンショットが必要なんだ。Windowsなら Windows + PrintScreen、Macなら Command + Shift + 3 で撮れるよ。<br>撮ったやつは、yaros.ae の下にあるメールリンクか、Bluesky（https://bsky.app/profile/lisagui.com）のメッセージで送ってくれると嬉しいな。<br>あと、Blueskyアカウントでプロジェクトの更新情報を投稿してるから、興味ある人はフォローしてね。古風な人のために、ウェブサイトにはRSSリンクもあるよ。" userName="ayaros" createdAt="2025/07/07 02:19:11" color="#38d3d3">}}




{{<matomeQuote body="環境設定アプリの Shadow text style や fatbits editor、本当に懐かしかったよ。ウィンドウに閉じるボタンがない点を除けば、40年間の UX 「革新」を剥ぎ取っても、結果が生産的で直感的なのは驚きだね。（追記：メニューがワンクリックで開きっぱなしになるのは、ずっと後に来た改善だと思うけど、あれは良かったね。）" userName="rgovostes" createdAt="2025/07/06 19:09:55" color="">}}




{{<matomeQuote body="そう、Sticky menus はずっと後に登場したんだ。今みんな慣れてるから、あえてここに実装したよ。ワンクリックでメニューを開きっぱなしにするか、マウスを押しっぱなしにしてドラッグして、離すと閉じるか、両方使えるよ。<br>確か System 6 みたいな古い Mac OS にも Sticky menus を使えるようにする拡張機能が少なくとも1つあったはず。いわば、その機能をちょっと過去に移植した感じだね…<br>追記：あと、返信で言い忘れたけど、ウィンドウを閉じるにはタイトルバーのアイコンをダブルクリックだよ。" userName="ayaros" createdAt="2025/07/06 20:06:53" color="#38d3d3">}}




{{<matomeQuote body="ウィンドウの左上にあるアイコンをダブルクリックすると閉じられるよ。（それは多分、File ＞ Set Aside のショートカットだね。）" userName="layer8" createdAt="2025/07/06 19:21:14" color="">}}




{{<matomeQuote body="うん。Set Aside は具体的に何かをデスクトップに置くこと。保存できる書類には「保存して片付ける（save and put away）」オプションがあって、これはデスクトップじゃなく元のフォルダに「再ファイリング」するんだ。<br>これで気づいたけど、すべてのウィンドウに別の「片付ける（put away）」オプションも追加する必要があるな。そうすれば、何かを再ファイリングするためのメニューコマンドがいつでも使えるようになる。<br>デスクトップは普通のディレクトリじゃないんだ。これについては readme で少し説明してるよ。" userName="ayaros" createdAt="2025/07/06 19:39:25" color="#45d325">}}




{{<matomeQuote body="Lisa はそんなに長く使ったことないんだけど、90年代初頭に Mac の修理技師として何度か触る機会があったんだ。Lisa を修理したり、Mac XL に改造したりもしたよ。UI の再現がすごく良いね、クリックして回るのが楽しかったよ。良い仕事だ！" userName="hoistbypetard" createdAt="2025/07/06 23:31:10" color="">}}




{{<matomeQuote body="楽しんでもらえて本当に嬉しいよ！Lisa は本当にクールなマシンなんだ。Apple の他のデザインに比べて、間違いなく扱いやすいし、サービスも楽なんだよね…" userName="ayaros" createdAt="2025/07/07 02:21:07" color="">}}




{{<matomeQuote body="すごくクールだね。<br>モバイルでのマウスカーソルで推奨したいんだけど、Microsoft の Remote Desktop on iOS（Android も多分だけど、iPhone ユーザーだから分からない）みたいに、カーソルがタップした場所じゃなくて、画面上のどこかをパンすることで、指の下ではない位置にあるカーソルを比例して動かすっていう方法だよ。説明するのがちょっと難しいんだけど、Microsoft の無料 Windows App の RDP をモバイルデバイスで使ってみる必要があるね。" userName="jonathanlydall" createdAt="2025/07/06 20:03:36" color="#ff33a1">}}




{{<matomeQuote body="ありがとう。うん、それやったよ！環境設定（Preferences）のタッチスクリーンオプションパネルを見て、「トラックパッドモード」を有効にしてみて！" userName="ayaros" createdAt="2025/07/06 20:11:02" color="#45d325">}}




{{<matomeQuote body="それは実際に使ってみると、驚くほど快適だね！" userName="john-aj" createdAt="2025/07/06 22:10:59" color="">}}




{{<matomeQuote body="横画面で両手使うのは良いね。UIフィードバックはCSSで楽に追加できそうだよ。" userName="ayaros" createdAt="2025/07/06 22:22:25" color="#ff5733">}}




{{<matomeQuote body="マルチタップ機能って検討中？まだちょっとしか触ってないけど（すごい出来だよ！）、3本指タップでTrackpad Mode切り替えられたらナイスな_touch_だと思うな。" userName="phatskat" createdAt="2025/07/07 01:20:37" color="">}}




{{<matomeQuote body="これ超クールでMobileでよく動くのに驚いたよ。Shuffle Puzzle Gameで解けないバグあると思う。Parity Issueになった。左上にBlankでClearしたのに反応なくて、Online Solverでも確認したら解なしだったよ。" userName="Cieric" createdAt="2025/07/06 21:29:36" color="#38d3d3">}}




{{<matomeQuote body="PuzzleがSolvableかのCheckはまだで、今はValidな状態かだけだよ。そのうちやるかも。今はSolitaireみたいに、解けなきゃShuffleし直してね。ちなみに次はSolitaire追加する予定だよ！" userName="ayaros" createdAt="2025/07/06 21:54:42" color="#45d325">}}




{{<matomeQuote body="お、いいね。Solitaireは知らないけど、MicrosoftはRandom生成で解けるやつを保存してたって聞いたよ（解けないのも2つあったらしいけどTypoか間違いかな）。Solvableか判定する方法もGeeksforGeeksで見つけた。https://www.geeksforgeeks.org/dsa/check-instance-15-puzzle-s... 他だと、Blankが右下か左上にある両方のConfigurationを検出して表示する方法も考えられるかな。" userName="Cieric" createdAt="2025/07/06 22:33:51" color="#45d325">}}




{{<matomeQuote body="C++でそのPuzzle作ったの思い出したよ。Randomに作ると半分は解けて半分は解けないんだ。俺はSolvableかCheckするんじゃなくて（数学難しそうだから）、解けた状態から決まった回数Randomに動かす方法にしたんだよね。" userName="Shorel" createdAt="2025/07/06 22:12:58" color="#ff5733">}}




{{<matomeQuote body="それ、良いアイデアだね。" userName="ayaros" createdAt="2025/07/06 22:25:36" color="">}}




{{<matomeQuote body="すごい出来だよ、Lisaの思い出が蘇る。でもさぁ！生まれて初めてPCでこのNumbers Puzzleやって、30年ぶりにやって、解けないように2つPieceをひっくり返したJokerがいるなんて？！Diabolicalだ！" userName="BubbleRings" createdAt="2025/07/06 23:04:51" color="">}}




{{<matomeQuote body="Puzzle Gameで最後の2枚を入れ替えようと長いこと頑張ってたのに、解けないって分かってガックリだよ。でもCoolなものだね！" userName="pedroslopez" createdAt="2025/07/07 04:38:42" color="">}}




{{<matomeQuote body="俺も同じ、ずーっとやってたよ :(" userName="jcheng" createdAt="2025/07/07 08:09:58" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="適当にクリックしてたら背景かなんかがハイライトされて、ページ全体が青くなっちゃったんだ。<br>何クリックしても元に戻らなくて、体験が台無しってわけじゃないけど、ちょっと気になったよ。<br>SafariとGoogle Chromeで試した結果だよ。" userName="subjectsigma" createdAt="2025/07/06 18:52:38" color="#45d325">}}




{{<matomeQuote body="私も同じ経験したけど、あれは意図的なんだよ。<br>設定アプリを開いて、デスクトップを装飾するって項目にチェック入れてごらん。<br>そしたら、パステルブルーって色以外を選べば大丈夫だよ。" userName="rgovostes" createdAt="2025/07/06 19:04:28" color="#38d3d3">}}




{{<matomeQuote body="キャンバス要素自体が選択されてるんでなければ、それは僕の大きな見落としだけど、あの青はLisaのCRTを再現したデフォルトのカラーパレットなんだ。<br>今は設定が読み込まれるまで適用されないんだけどね。<br>もしこれで混乱するなら、ページ読み込み時にすぐ適用されるように設定保存を優先するかも。" userName="ayaros" createdAt="2025/07/06 19:10:04" color="#38d3d3">}}




{{<matomeQuote body="あなたや他の人の言う通りだね、あれはテーマだったんだ。<br>起動時に青くなるのは避けられないみたいだけど、他の人が言ってるようにテーマを変えたら元に戻ったよ。<br>最初はモノクロなのに突然青くなるし、その青がテキスト選択の色とほぼ同じだったから混乱したんだよね。<br>あはは、なんか恥ずかしいな。" userName="subjectsigma" createdAt="2025/07/06 21:03:05" color="#38d3d3">}}




{{<matomeQuote body="うん。これが最終的にHNみたいな場所に出したかった理由の一部なんだよね。<br>これは貴重なユーザーフィードバックだよ！<br>長い間このプロジェクトを完全に秘密にしてたんだ。<br>おそらく設定データをlocalStorageに保存して、システム起動してIndexedDBから読み込む前に利用できるようにするかな。" userName="ayaros" createdAt="2025/07/06 21:29:58" color="#38d3d3">}}




{{<matomeQuote body="追記：これ、もう完了したよ！" userName="ayaros" createdAt="2025/07/07 23:03:05" color="#ff33a1">}}




{{<matomeQuote body="iPhoneでも同じだったよ。<br>なんかスワイプとかしたらページ全体が青くなったのかも。<br>追記：何もしてなくても自動選択されるみたいだ。変なの。" userName="humptybumpty" createdAt="2025/07/06 19:00:23" color="#ff5733">}}




{{<matomeQuote body="あの色合いは、LisaのCRTの見た目を真似るためのものだと思うよ。" userName="pvg" createdAt="2025/07/06 19:01:19" color="">}}




{{<matomeQuote body="そうそう、その通り！<br>設定には色々パレットがあるから選んでみてね！" userName="ayaros" createdAt="2025/07/06 19:06:08" color="#38d3d3">}}




{{<matomeQuote body="iPhoneのFirefoxで試してたら、ちょっと気になったこと。<br>スマホの画面回転を縦向き固定にしてると（普段そうしてるんだ）、インストールとか試すとかのボタンが見えないんだよね。<br>縦固定をオフにしたら大丈夫だった。<br>回転ロックしてると解像度の読み込み方が違うのかな？<br>上のメニューバーにも何も表示されなくて、何も操作できなかった。<br>でも、ほんとすごい努力だよね！これで実際に使えるようになったよ！<br>マジで感動した。" userName="djaychela" createdAt="2025/07/07 06:02:57" color="#38d3d3">}}




{{<matomeQuote body="ページズームで縮小したらボタンが見えたよ。その後は完璧！いや、完璧どころか、めっちゃ感動したよ！これ本当に好き…使ってて思わず笑顔になっちゃった。それに、信じられないくらい速いね！" userName="zoom6628" createdAt="2025/07/07 12:04:43" color="#38d3d3">}}




{{<matomeQuote body="インストーラーでメニューバーが隠れてるのは、元のLisaがそうだったからなんだ。レスポンシブ対応は必要だけど、Lisaに無かったスクロールペーンは入れたくない。歴史の再現と今の制約のバランスを取ってるから、妥協は避けられないんだ。" userName="ayaros" createdAt="2025/07/07 06:54:00" color="#45d325">}}




{{<matomeQuote body="デスクトップのGoogle Chromeだと完璧に動くよ。13年前のPCでJavaScriptなのに超速い！ソフトウェアって軽量にできるんだな、デスクトップ環境ってこうあるべきだって思う。Lisaは使ったことないけど、Mac 512Kは使ったことあるよ。" userName="MarkusWandel" createdAt="2025/07/07 11:54:16" color="#45d325">}}




{{<matomeQuote body="スマホからだから少ししか試せなかったんだけど、レスポンシブなのに感動したよ！シェアしてくれてありがとうね。" userName="mysterydip" createdAt="2025/07/06 18:50:43" color="">}}




{{<matomeQuote body="FPS表示を消せるようにしてほしいな。僕のiPhoneだと、値がチカチカしてすっごく邪魔なんだよね。UIはカッコいいのに、あれがあると気が散っちゃうよ。" userName="cruffle_duffle" createdAt="2025/07/07 15:54:31" color="#785bff">}}




{{<matomeQuote body="これは将来オプションにする予定だよ。メニューバーのモジュールシステムをちゃんと決める必要があるんだ。他にもメニューバーに追加する、切り替えられるものがいくつかあるからね。" userName="ayaros" createdAt="2025/07/08 09:32:38" color="">}}




{{<matomeQuote body="LisaのGUIは今のより洗練されてる点があるよね。アプリがステーショナリーになって、それをダブルクリックするだけで新しい書類が作れる仕組みが好きだったな。Excelとかを開く手間が省けるんだ。Windows 95にも似たような機能があったけど、後には残らなかったみたい。" userName="rbanffy" createdAt="2025/07/07 09:49:58" color="#38d3d3">}}




{{<matomeQuote body="macOSは今でもファイルからテンプレートを作る機能をサポートしてるんだ。System 7で1991年に始まった機能だよ。Finderで「情報を見る」を開いて、”Stationary pad”にチェックを入れるだけでできるんだ。" userName="kalleboo" createdAt="2025/07/07 10:06:59" color="#38d3d3">}}




{{<matomeQuote body="これ、今まで知らなかったなんて信じられない！いくつかのワークフローに役立ちそうだよ。今調べたら、Appleの公式ヘルプページが見つかったよ。URLはこちら: https://support.apple.com/en-tm/guide/mac-help/mchlp1341/mac" userName="joemi" createdAt="2025/07/07 20:42:20" color="#ff5733">}}




{{<matomeQuote body="わー！これすごいね！まだ残ってたなんて知らなかったよ。" userName="rbanffy" createdAt="2025/07/07 10:48:42" color="">}}




{{<matomeQuote body="ドキュメント作成方法、クールだけどテンプレート必須で実用的じゃないかもね。どこに保存したか覚えてないとだし。<br>ファイルメニューから新規作成できたらいいかもだけど、アプリ増えたら大変そう。<br>でも洗練されてて、このUIが生き残ってたらどう問題解決されたか見たかったな。" userName="thesuitonym" createdAt="2025/07/07 15:12:33" color="#ff5733">}}




{{<matomeQuote body="テンプレートの仕組みはOS/2 Presentation Managerにもあったし、WindowsでもXPくらいまでは残ってたと思う。Explorerの”新規作成…”メニューで使う感じだね。" userName="p_l" createdAt="2025/07/07 13:53:23" color="">}}




{{<matomeQuote body="知らなかったけど、エミュレートされたLisa使うの今日が初めてだったよ！古い環境に命吹き込んで、GUIの始まりの考え方を追体験させてくれてありがとうね。" userName="leakycap" createdAt="2025/07/06 23:29:01" color="">}}




{{<matomeQuote body="どういたしまして。これでノスタルジー感じてもらえたなら嬉しいな！" userName="ayaros" createdAt="2025/07/07 02:06:05" color="">}}




{{<matomeQuote body="めっちゃクール！デザインとか機能のヒントがたくさんあってインスピレーション湧くわ。<br>GUIの限界超えようとしてる、書道っぽいエイリアスされた文字の感じが好きだなぁ。これ、マジでノスタルジーが来るね…。" userName="fitsumbelay" createdAt="2025/07/06 19:27:16" color="">}}




{{<matomeQuote body="うん。テキストスタイル作るの楽しかったよ。QuickDrawと同じやり方じゃないけど、十分近くはできてるかな。" userName="ayaros" createdAt="2025/07/06 20:09:51" color="">}}




{{<matomeQuote body="残念ながら、画面が小さくて俺のiPhone SEじゃ動かなかったよ。最新のOS使うにはハードウェア買い替えなきゃダメかな :)" userName="shusaku" createdAt="2025/07/06 23:44:22" color="">}}




{{<matomeQuote body="それは確かに小さすぎるね！デスクトップかラップトップで試してみてよ。" userName="ayaros" createdAt="2025/07/07 01:40:30" color="">}}




{{<matomeQuote body="現代のPCでApple Lisaみたいなシステムを使うと、どれだけ作業が進むのかな？君の作品は色々な想像を掻き立てるよ。すごい成果だね。" userName="arkt8" createdAt="2025/07/09 00:40:49" color="">}}




{{<matomeQuote body="このApple Lisaのパズルゲームに挑戦したけど、どうやっても解けないみたいでびっくり！他の人試した？どこまでできたか画像貼っとくね：https://imgur.com/a/QhnnC4X" userName="sfblah" createdAt="2025/07/06 21:12:28" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ランダムに作られてるなら、パズルの半分は解けないはずだよ。" userName="Shorel" createdAt="2025/07/06 22:15:33" color="">}}




{{<matomeQuote body="あー、あれはちゃんと解けるんだよ。でもちょっと難しいかな！文字をヘビみたいに上手く動かして、順番に正しい場所に置いていく感じ。タイルを置くにつれて、動かせるスペースが狭くなるんだ。" userName="ayaros" createdAt="2025/07/06 21:24:35" color="#38d3d3">}}




{{<matomeQuote body="残念だけど、あれは解けないよ。プログラムで解けるかチェックする方法については、この記事を読んでみて：https://datawookie.dev/blog/2019/04/sliding-puzzle-solvable/" userName="smokel" createdAt="2025/07/07 06:40:53" color="#ff33a1">}}




{{<matomeQuote body="うん、俺は解けたよ。" userName="phyzix5761" createdAt="2025/07/06 21:18:55" color="">}}




{{<matomeQuote body="これどうやって調べたの？もしかしてApple Lisa本体持ってる？" userName="hackyhacky" createdAt="2025/07/06 19:18:43" color="">}}




{{<matomeQuote body="うん、Apple Lisa 2/10を持ってるよ！LisaEmもすごく助かった。それに、古いPCとかUI全般に対する並々ならぬこだわりもかなり役に立ったね！" userName="ayaros" createdAt="2025/07/06 19:44:06" color="#ff5733">}}




{{<matomeQuote body="Apple Lisaのエミュレーターならいくつかあるよ：https://emulation.gametechwiki.com/index.php/Apple_Lisa_emul.... ROMはmacintoshrepository.orgで見つかるよ。" userName="layer8" createdAt="2025/07/06 19:33:08" color="#785bff">}}




{{<matomeQuote body="これ見て昔を思い出したな〜。最初のPCはApple ][/eか/cのクローン（ブルガリアのПравец 8Ц）で、その後286、Herculesモニター付きの386 PCも使ったよ！だから、こういうクールなもの見ると本当に嬉しいんだ。Think-Pascalとか思い出すな。" userName="malkia" createdAt="2025/07/07 00:18:50" color="">}}




{{<matomeQuote body="LisaGUIにはね、例のWeb OSの色を参考にした”Windows 93™”テーマがあって、ブルーとピンクのCGA風なんだ。あと”Through the Looking Glass”っていうアイコンテーマは文字通りWindows 1.x/2.xのアイコンを使ってるよ。（Win95のごみ箱アイコンは自分で作ったけどね）" userName="ayaros" createdAt="2025/07/07 01:21:32" color="#ff5c5c">}}




{{<matomeQuote body="ウィンドウの閉じ方を理解するのにちょっと時間かかったな。（Win 3.1と同じ方法だって思い出す必要があった）ヘルプ文書 scrolled throughしても見当たらなかったんだ。" userName="gwbas1c" createdAt="2025/07/07 13:39:11" color="">}}




{{<matomeQuote body="ごめんね！「Tips」ドキュメントにちょっと buriedされてるんだ。これはもっと emphasizeしないとね！" userName="ayaros" createdAt="2025/07/07 14:32:48" color="">}}




{{<matomeQuote body="これ、今でもWin 10で動くと思うよ。Win 11は分からないけどね。" userName="mirkules" createdAt="2025/07/07 19:48:49" color="">}}




{{<matomeQuote body="ちょっと edge caseなんだけど、1-bit palettes作るのが大好きで、古いApple UIsでテストしてるんだ。これは perfectだよ。color editableにできるといいな :)" userName="muzani" createdAt="2025/07/07 05:10:41" color="#38d3d3">}}




{{<matomeQuote body="custom color palette valuesを追加、編集、削除するUIを eventually追加する計画はあるんだ… RGB valuesと user-defined presetの labelを typingできる dialogを codingするだけなんだよね。まだ手が回ってないんだけど。" userName="ayaros" createdAt="2025/07/07 06:58:06" color="">}}




{{<matomeQuote body="MBPの external retina displayで maximized windowで見ると goodだよ。<br>ただ一つ、15 secondsかそこらごとに”stutters”するんだ。つまり、数百 msくらい noticeableな時間 pauseする感じ。この時もUIはconsistentな119-120 FPSを表示してるんだけどね。<br>faultがFirefoxの可能性もあるけど、pageではないかも。64 GBのRAMはあるけど、zillion tabs openしてるし。" userName="badc0ffee" createdAt="2025/07/07 18:40:28" color="#ff5c5c">}}




{{<matomeQuote body="page loadsしてから数 seconds後に画面が highlighted textみたいに light blueになるのはなんで？ Firefox on Mac OSで試したよ。" userName="mlindner" createdAt="2025/07/07 14:37:33" color="#ff5733">}}




{{<matomeQuote body="Ditto、Firefox on Win 11でも同じ現象だよ。" userName="thesuitonym" createdAt="2025/07/07 14:53:32" color="#785bff">}}




{{<matomeQuote body="これにFrotzを追加して、text adventuresを遊べるようにしてよ。 amazingly、well doneだね！" userName="edda7" createdAt="2025/07/07 20:54:27" color="#38d3d3">}}




{{<matomeQuote body="どうも何か間違ってるのかもしれないけど、文字の線の太さがかなりinconsistentだね。「install」の2つのlの幅が違ったりするんだ。これはせっかく素晴らしいものが少し残念に見えちゃうな。（デスクトップのFirefoxとChromeで試したよ。）" userName="smokel" createdAt="2025/07/06 18:55:26" color="">}}




{{<matomeQuote body="これ詳しく見てみるね。kerningの問題かもしれない。EDIT: 正直これが何の問題か分からないな…。もしスクリーンショット送ってくれるなら、https://yaros.ae/の下にメールリンクがあるよ。" userName="ayaros" createdAt="2025/07/06 19:04:19" color="#ff5c5c">}}




{{<matomeQuote body="trackpad modeをdisabledにするとmouseがかなりうまく動くよ。iPhone Miniを使ってるんだけどね。trickが一つ: menu optionを選択するには、menu titleをtap-and-holdして、optionにdragしてからlet goするとselectできるんだ。Really cool！" userName="mch82" createdAt="2025/07/08 00:50:06" color="#785bff">}}




{{<matomeQuote body="オリジナルのMacでは、menu barのdrop downはtitleをクリックしただけじゃstay openしなかったんだ。mouse buttonをdownしたまま、menu itemをhighlightして、それからlet goしてactivateする必要があったんだよ。Not sure if that is how the Lisa worked." userName="russellbeattie" createdAt="2025/07/07 02:28:41" color="">}}




{{<matomeQuote body="Love both the project and the landing page design. Thank you for creating this!!" userName="DigiEggz" createdAt="2025/07/06 23:25:13" color="">}}




{{<matomeQuote body="Thanks！You might also appreciate the 404 page on the alpha subdomain！And whatever you do, do NOT try to open this with MS Internet Explorer！I can’t imagine what might happen if you do that！" userName="ayaros" createdAt="2025/07/07 01:26:39" color="">}}




{{<matomeQuote body="The font looks weird and uneven horizontally (some characters are “fatter” like if they were randomly bold). Is it supposed to look like that？ Firefox + Windows." userName="kaoD" createdAt="2025/07/06 23:32:34" color="">}}




{{<matomeQuote body="It treats any of my clicks as an attempt to select text, and draws everything with blue selection overlay (Firefox on Windows).<br>Otherwise, looks cool！" userName="demetrius" createdAt="2025/07/07 11:49:50" color="#38d3d3">}}




{{<matomeQuote body="I thought the same, but it’s actually just the default Color Palette being applied. You can change it in the preferences." userName="jannes" createdAt="2025/07/07 13:04:54" color="#38d3d3">}}




{{<matomeQuote body="This is amazing！Thanks for the excellent memories！" userName="JSR_FDED" createdAt="2025/07/06 19:54:18" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
