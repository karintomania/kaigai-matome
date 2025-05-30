+++
date = '2025-04-13T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ！？ブラウザでターミナル風UIが爆誕！懐かしさ爆発のCSSライブラリ「WebTUI」がキター！'
tags = ["CSS", "UI", "ターミナル", "Web開発", "レトロ"]
featureimage = 'thumbnails/cyan4.jpg'
+++

> マジかよ！？ブラウザでターミナル風UIが爆誕！懐かしさ爆発のCSSライブラリ「WebTUI」がキター！

引用元：[https://news.ycombinator.com/item?id=43668250](https://news.ycombinator.com/item?id=43668250)

{{<matomeQuote body="1980年代の端末にこだわるのってマジで意味不明だよね。当時の8bitパソコンより性能低いのに。レトロ趣味はいいけど、今のCLIの最高峰とか、ポータブルUIの基盤とか言うのは違うくね？<br>ドキュメントにも「pxとかemとかのCSSの単位で考えるな。文字セルで間隔とかサイズとか決めろ」って書いてあるし。<br>VT102には文字グリッドがあるけど、メインフレームと通信するためのシリアルプロトコルが必要じゃん。それを回避して、生のモードでセルを指定するって…<br>Webブラウザってめちゃくちゃ強力なレイアウトエンジン持ってるのに、なんで文字セルに戻るの？なんかおかしいっしょ。まあ、見た目とかデフォルトのカラーは好きだけどね。ちょっと変わってるけど。" userName="rollcat" createdAt="2025-04-13T06:39:41" color="">}}

{{<matomeQuote body="POS端末とかで、めっちゃ手慣れた人がキーボードだけで爆速で操作してるの見たことない？ああいうインターフェースってシンプルだけど、熟練したオペレーターにとっては一番使いやすいんだよね。" userName="sgt" createdAt="2025-04-13T14:29:24" color="#785bff">}}

{{<matomeQuote body="それって端末だからじゃなくて、マウスじゃなくてキーボードを使ってるからでしょ。GUIでもキーボード操作できるようにすれば同じことできるよ。Webブラウザなら全部できるし。テキストベースのUIのいいところは、表示がシンプルだからレイアウトが楽ってことかな。デバイスの機能の範囲内ならね。" userName="mrighele" createdAt="2025-04-13T19:40:06" color="">}}

{{<matomeQuote body="オフィスの電話も同じじゃね？使い慣れてる人は、受話、保留、転送とか、キーパッド見なくても爆速でできるじゃん。多分、物理的な「物」を操作してる感覚があるから、操作を覚えやすいんだと思う。「外線」のメニューを開くとかじゃなくて、物理ボタンがあるから。指で電話を操ってるみたいな感覚になるんだよね。POS端末も同じで、SALEとかDISCOUNTとかのボタンを連打する感じかな。" userName="graypegg" createdAt="2025-04-13T15:22:35" color="#38d3d3">}}

{{<matomeQuote body="優秀なGUIアプリには、同じことができるショートカットキーがいっぱいあるじゃん。熟練者はキーボードから手を離さないのが理想だよ。例えば、動画編集ソフトなら、イン点とアウト点を設定したり、素材をチェックしたり、タイムラインに挿入したりするのを、全部キーボードでできるし。キーボードはただの文字入力装置じゃなくて、マクロパッドなんだよ。メニューを開いてクリックするより、ボタンを押す方が絶対早い。" userName="kmeisthax" createdAt="2025-04-13T16:58:08" color="#ff5c5c">}}

{{<matomeQuote body="＞every GUI app had searchable menus<br>マックならできるよ？shift+⌘+?で「検索メニュー」が開く。" userName="geocar" createdAt="2025-04-13T17:16:20" color="">}}

{{<matomeQuote body="＞I wish every GUI app had searchable menus<br>macOSとKDE(Wayland)ならできるよ！マジ便利だよね。" userName="c-hendricks" createdAt="2025-04-13T18:02:56" color="">}}

{{<matomeQuote body="「KDEアプリ」って具体的に何？カスタムUIのゲームとかは、検索メニューないよね？" userName="ranger_danger" createdAt="2025-04-14T19:58:47" color="">}}

{{<matomeQuote body="KDEアプリとかゲームの話はしてないよ。KDEのGlobal Menuは、QT以外のツールキットで作られたアプリでも使えるし、ゲームはアプリとは見なされないことが多いでしょ。ゲームでも同じような機能があったら最高だよね。オプションで「字幕」って入力すればすぐに見つかるみたいな。" userName="c-hendricks" createdAt="2025-04-16T16:03:42" color="">}}

{{<matomeQuote body="スーパーとかレストランのグラフィカルな端末でも同じだよね。結局は、お客さんの使い方に合わせてデザインするってことじゃない？" userName="pjmlp" createdAt="2025-04-13T14:47:21" color="">}}

{{<matomeQuote body="結局、ターミナルが一番ってことだよね。最高だよ。いろいろ欠点はあるけど、ターミナルから離れられない。便利だし、自然に使えるようになるのが良いんだよね。自由度が高い言語みたいなもんだし。色々なIDEを試したけど、結局Vimに戻ってくる。習得に時間はかかったけど、他のことだって同じじゃん？ただのツールじゃなくて、言語を学んだんだよ。走ることを学んだんじゃなくて、脚の動かし方を学んだんだ。だから、歩くことも、走ることも、ジャンプも、ダンスもできる。VSCodeだと歩くくらいはできるけど、ダンスはできないんだよね。自分らしさがないっていうか。<br><br>ターミナルの良いところは、万能ツールじゃないってこと。誰にでも合う製品なんてないんだから。自分だけの環境を作れるってのが良い。みんなのdotfilesが、その人自身を表してる。コンピューターが偉大になったのはチップのおかげじゃなくて、ソフトウェアを書けるようになったから。スマホが普及したのは画面が大きいからじゃなくて、アプリがあるから。作れるから。スマホは自分だけのものだし、他のスマホとは違う。<br><br>でも、自分らしくいられるブラウザがないんだよね。Webの世界で自由に動き回れない。スマホやコンピューターが、自分を反映するものじゃなくて、ただの物になっちゃってるのが怖い。" userName="godelski" createdAt="2025-04-13T08:08:18" color="#785bff">}}

{{<matomeQuote body="＞みんながみんな、あんたみたいにGUI中心の仕事してるわけじゃないんだから。<br><br>こっちのセリフだっつーの。<br><br>どっちにも良いところと悪いところがあって、それぞれ用途が違うんだよ。どっちが上とか決めつけるのが間違い。<br><br>TUIがGUIより優れてる場合もあれば、GUIがTUIより優れてる場合もある。状況によるってこと。" userName="tomxor" createdAt="2025-04-13T14:11:42" color="">}}

{{<matomeQuote body="＞TUIがGUIより優れてる場合もあれば、GUIがTUIより優れてる場合もある。<br><br>TUIはGUIがトレンチコート着てるようなもんじゃん。TUIプログラムだって、入力イベント処理したり、ウィジェット描画したり、状態管理したりしなきゃいけないんだから。GUIと同じことやってるんだよ。TUIにできないのは、システムクリップボードとか、画像表示とか、基本的なことだよ。それやるには別の手段使わなきゃいけないし、そうしたらTUIの唯一の利点であるSSHも台無しじゃん。" userName="rollcat" createdAt="2025-04-13T15:20:49" color="">}}

{{<matomeQuote body="俺のターミナルは画像も表示できるし、クリップボードも使えるぜ。最近のターミナルは大体できるよ。画像は制限あるかもしれないけど、もう90年代じゃないんだし。リモートマシンにログインして、ターミナルで画像見るのは普通だよ。" userName="godelski" createdAt="2025-04-13T18:27:16" color="#45d325">}}

{{<matomeQuote body="＞色々なIDEを試したけど、結局Vimに戻ってくる。<br><br>VimもEmacsもGUIあるじゃん。Emacsユーザーとしては、GUIの方が優れてると思う。例えば、Cmd-Sを保存に割り当てられるし。それで十分。<br><br>＞言語を学んだ…<br><br>シリアル回線とかANSIエスケープコードとかtermcapのこと？　方言だらけのピジン言語みたいなもんじゃない？　cursesとかtermbox使わずに、移植性のあるTUIアプリケーションをゼロから書いてみてよ。<br><br>＞キーボードでTUIアプリケーションを操作する方法？<br><br>終わらせ方すら覚えなきゃいけないのが現実。viならEsc-q!-Enter、EmacsならC-x C-c、screenならC-a C-\, tmuxならC-a C-d。qとかF10とかC-dで終わることもあるけど、運試しだよ。これは終わらせ方だけの話で、ほんの始まりにすぎない。<br><br>macOSならCmd-Q、WindowsならAlt-F4。イノベーションは安定した基盤の上に成り立つものであって、足元を崩すものではない。<br><br>＞万能ツールじゃない。誰にでも合う製品なんてない…みんなのdotfilesが、その人自身を表してる。<br><br>TUIじゃないアプリだってカスタマイズできるじゃん。Hammerspoonスクリプトとか、macOSのカスタムキーバインドとか、.xsessionとか、色々あるし。TUIアプリだけじゃないんだよ。<br><br>コマンドラインのこと？ターミナルエミュレーターより良いREPLを作れると思う。Emacsは良いPoCだし、Swift Playgroundsも見てみて。Ctrl-Cでコピー、Ctrl-Vでペーストみたいな、汎用的なターミナルじゃないREPLを作れるかもしれない。<br><br>別に否定してるわけじゃないよ。ただ、みんなが熱狂してる理由がわからないだけ。便利なツールなのは認めるけど、もっと良いものがあるはず。" userName="rollcat" createdAt="2025-04-13T08:58:08" color="">}}

{{<matomeQuote body="＞macOSならCmd-Q、WindowsならAlt-F4。イノベーションは安定した基盤の上に成り立つものであって、足元を崩すものではない。<br><br>それってそれぞれのシステムのウィンドウマネージャーの機能じゃん。i3ならOption-Shift-qでウィンドウを強制終了できるけど、それは最終手段であって、テキストエディターを閉じる方法じゃないでしょ。" userName="sva_" createdAt="2025-04-13T19:43:49" color="">}}

{{<matomeQuote body="＞終わらせ方すら覚えなきゃいけないのが現実<br><br>それが何か問題でも？Photoshopの使い方だって、誰かに教えてもらったり、本を読んだりしなきゃ覚えられないでしょ。Emacsには何度も読むように促される優秀なチュートリアルがあるし。コンピューターを触ったことのない人に、コンピューターの操作が直感的でわかりやすいなんてことは絶対にない。<br><br>すでに”知ってる”からって、使いにくいものを使い続けるのはやめるべき。GUIの方が良いと思うなら、それはそれで良いけど、それが理由にはならない。<br><br>＞cursesとかtermbox使わずに、移植性のあるTUIアプリケーションをゼロから書いてみてよ<br><br>libX11とかlibxcb使わずに、移植性のあるX11アプリケーションをゼロから書いてみてよ。<br><br>user32.dll使わずに、移植性のあるWin32アプリケーションをゼロから書いてみてよ。<br><br>どれも楽しくないけど、TUIアプリケーションの方がコード量は少ないし、比較にならないくらい。<br><br>＞Emacsユーザーとしては、GUIの方が優れてると思う。例えば、Cmd-Sを保存に割り当てられるし。それで十分。<br><br>MacのTerminalは色々問題があるけど、iTermとかkittyならEmacsにシーケンスをデコードさせれば同じことができる。<br><br>こっちの方が、trampでリモートサーバーにトンネルするよりずっと快適。<br><br>＞Ctrl-Cでコピー、Ctrl-Vでペーストみたいな、汎用的なターミナルじゃないREPLを作れるかもしれない<br><br>今でもできるけど(上記参照)、^Cはキャンセル/中断/コンパイル、^Vは可視化の方が良い。コピー＆ペーストは自分のworkflowに合わないから避けてる。<br><br>＞カスタマイズできる…理解できない…<br><br>ホットキーなんていらない、自動化が欲しい。<br><br>ターミナルでは、autoexpectを使って普通のアプリケーション(例えばEmacs)を実行する。その結果のスクリプトを編集して実行すると、便利な新しいアプリケーションになる。それを、自作のスクリプトをループで実行するアプリケーションに追加する。<br><br>GUIアプリケーション(Chrome)を実行して、vncsnapshotで画像をダンプして、kittyの画像プロトコルで出力する。次に、perlスクリプトでキーボードとマウスの情報をVNC経由でQEMUに転送する。autoexpectには十分だけど、一つのアプリケーションに手間がかかりすぎる。<br><br>そして、人がお金を払うような作業をコンピューターに任せて、自分はビーチに行く。" userName="geocar" createdAt="2025-04-14T06:17:13" color="#ff33a1">}}

{{<matomeQuote body="＞Photoshopの使い方<br><br>Photoshopを”学ぶ”ことじゃなくて、Photoshopを”終わらせる”ことについて話してるんだよ。Macの閉じるボタンはウィンドウの左上に1984年からずっとある。DockアイコンはNeXTStepで初めて登場して、OS Xが2000年頃にそれを引き継いだ。他にも色々ある。<br><br>＞移植性のあるアプリケーションをゼロから<br><br>そういうことじゃないんだよ。ターミナルエミュレーターがウィンドウを作って、そこにピクセルを置く。TUIアプリケーションは、シリアル回線を使って、あたかも別のマシンで動いているかのようにエミュレーターと通信する。アプリケーションに直接ピクセルをペイントさせれば良いんじゃない？<br><br>＞MacのTerminalは色々問題があるけど、iTermとかkittyならEmacsにシーケンスをデコードさせれば同じことができる。<br><br>これらの拡張機能は移植性がなくて、それぞれのTUIアプリケーションで個別の統合が必要になる。例えば、kkpは800行のLispコード。それに、termcapは悪夢だよ。sshと入力した途端に牙をむいてくる。<br><br>＞コピー＆ペーストは自分のworkflowに合わない…ビーチに行く。<br><br>すごい努力と根気だね。尊敬するよ。でも正直に言うと、それはニッチな専門分野だよ。だからお金がもらえるんだ。私が言いたいのは、アプリケーションがテキストをコピー＆ペーストしたり、Dockにアイコンを表示したり、一貫したキーボードショートカットを持ったりすること。設定なしで、最初から一貫して、シリアル回線を騙すようなズルなしに。" userName="rollcat" createdAt="2025-04-14T07:29:02" color="">}}

{{<matomeQuote body="＞でも正直に言うと、それはニッチな専門分野だよ。だからお金がもらえるんだ<br><br>勝手なこと言うなよ。あんたは俺が何してるか知らないだろ。<br><br>コンピューターを使う理由は2つしかない。暇つぶしになるか、金儲けになるかだ。<br><br>＞アプリケーションに直接ピクセルをペイントさせれば良いんじゃない？<br><br>下手くそだからってのもあるし、他のアプリケーションがピクセルを読み取るのが難しくなるから。<br><br>クリップボードがどうやって動くか考えてみろ。アプリケーションが表示装置にテキストを表示するように指示しただけで、クリップボードはそこに何が表示されているのか改めて問い合わせて、応答を待って、別のプログラムにそれを伝える必要がある。ターミナルは最初から知ってるから早いんだよ。<br><br>＞Photoshopを学ぶことじゃなくて、Photoshopを終わらせること<br><br>あんただってそれを何らかの方法で学んだんだろ。他のことも学べるって。<br><br>＞これらの拡張機能は移植性がない<br><br>だから何？俺が使う全てのターミナル、これから作られる全てのターミナルに移植できるし、あんたが望むなら、あんたのターミナルにも移植できる。MacはMac以外には移植できないけど。" userName="geocar" createdAt="2025-04-14T12:37:49" color="">}}

{{<matomeQuote body="＞一部には出来が悪いからってのもあるし、他のアプリがピクセルを読み取るのが難しいってのもあるよね。<br>ブラウザとかスプレッドシート、チャットアプリでテキスト選択するのは全然問題ないじゃん。<br>＞アプリはただそこにテキストを表示するように指示しただけだけど、クリップボードはテキストの内容を聞き直して、応答を待って、他のプログラムに知らせる必要があるんだ。ターミナルは全部知ってるから早いんだよ。<br>じゃあターミナルエミュレータはどうやって画面にテキストを表示してるの？画面はピクセルでできてるのに。<br>＞それを学んだんだから、他のことも学べるでしょ。<br>話が全然通じてないみたいだけど、新しいことを理解するのに時間がかかるのが好きなんだね。別にいいけど。" userName="rollcat" createdAt="2025-04-15T08:33:15" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞話が全然通じてないみたいだね。<br><br>コミュニケーションがうまくいかないのは、正直言って、仕組みを理解してないからだよ。勝手にこうだろうって思ってるだけでしょ？自分でコード書ける？ライブラリを組み合わせるんじゃなくて、C言語でだよ？たぶん、相手の人は書けないって言うと思うよ（俺も無理！）。C言語の経験がないからじゃなくて、詳細を知ってるから。<br>＞ターミナルエミュレータはどうやって画面にテキストを表示してるの？画面はピクセルでできてるのに。<br>この一言で色々わかるよ。ピクセルってどうやって描画されるか知ってる？RGB値を設定するだけって思ってるんでしょ？じゃあ、どのピクセルにどの値を設定するか決めるの？文字はどうやって定義するの？単に文字の形をした箱を作るだけじゃないんだよ。リガチャについて調べてみて。色はどうする？フォントはどう定義する？拡大縮小はどうする？文字がドット絵みたいにならないようにするには？ターミナルのフォントサイズをめちゃくちゃ大きくしたり小さくしたりしてみて。それでも綺麗に見えるはずだよ。事前に塗りつぶす場所が決まってる画像じゃ無理だよ。わかった？" userName="godelski" createdAt="2025-04-15T18:58:46" color="">}}

{{<matomeQuote body="俺もグラフィカルエディタで:w<cr>で保存してるわ。タイプしやすいし。" userName="dullcrisp" createdAt="2025-04-13T09:28:02" color="">}}

{{<matomeQuote body="いやいや、QWERTYキーボードだと絶対無理でしょ。cmd-sはワンキーで片手でできるじゃん。shift-; w crは2つ多いし、キーボード全体を往復するじゃん。" userName="__float" createdAt="2025-04-13T15:11:37" color="">}}

{{<matomeQuote body="めっちゃわかる。できるだけターミナルにいると、コンテキストスイッチングの摩擦が減るよね。" userName="sgarland" createdAt="2025-04-13T13:39:51" color="#ff5c5c">}}

{{<matomeQuote body="テキストベースのインターフェースは、1978年の制限されたデバイスをシミュレートする以外の方法でも作れるよ。" userName="jampekka" createdAt="2025-04-13T13:56:26" color="">}}

{{<matomeQuote body="70年代のターミナル使ってるなら、そろそろ新しいの試してみたら？ghosttyとかおすすめ。全然違うから。" userName="godelski" createdAt="2025-04-13T18:28:57" color="">}}

{{<matomeQuote body="GPはTUIそのものではなく、どうやって開発するかについて話してるんだよ。<br>Webモデルは客観的に優れてる。<br>標準のCSSユニット（px、em、rem、%）で考えるのはやめて、間隔、サイズ、位置決めにCharacter Cellsを使うように考えよう。" userName="wiseowise" createdAt="2025-04-13T08:18:28" color="">}}

{{<matomeQuote body="Webモデルが優れてるってのは違うな。最近のWebブラウザは複雑すぎる。何十年もの実験、ダメな非標準、それを修正するための対策が混ざってるんだ。<https://browser.engineering>を読むか、Chromiumをビルドしてみるといいよ。ほとんどのアプリはもっとシンプルな方がいい。ターミナルエミュレータみたいに。<br>ターミナルエミュレータはWebブラウザよりずっとシンプルだけど、CPUと文字グリッドの間のシリアルラインのせいで複雑になってるんだ。モノスペースフォントが好きなら、SDLとかで描画できるし、非破壊コピー&ペーストとか、ドックアイコンも作れるよ。GUIのMVPだね。<br>lite-xl.comを試してみて。SDLの上にGUIを構築してるよ。" userName="rollcat" createdAt="2025-04-13T09:14:23" color="#ff33a1">}}

{{<matomeQuote body="なんかおかしいな。<br>データオーバータイムのハイレベルな視点は本質的にシリアルで、どうしようもないと思う。シリアルが正しい抽象化だよ。<br>でも、言いたいことはわかるよ。シリアルって一体何？毎回輪を完成させるたびに小さくなって、何が起きてるのかについての知識が向上するんだ。<br>シリアルデコーダを使って文字セルとかピクセルとかをメモリバンクに書き込んで、それをビデオエンコーダと共有すると、ソフト屋はメモリバンクに直接書き込めばいいじゃんって言うんだよ。キャラクタセルじゃなくて三角形が欲しいとか、DMAで共有バッファに書き込むとか、リングベースのメモリバッファがいつの間にかシリアルプロトコルに戻ってるとか。<br>プログラミング言語がシリアルに弱すぎるから、みんな回避しようとして、端っこでシリアルに変換してるんだと思う。<br>ターミナルUIは今でも最高だよ。知的作業をするには、これ以上のインターフェースはないね。ターミナルの写真とターミナルは違うから、混乱するのもわかる。" userName="geocar" createdAt="2025-04-13T08:27:53" color="#45d325">}}

{{<matomeQuote body="REPLってやつがあるじゃん。Xerox PARCとかOberonとかPlan 9とかInferno UIとかACMEとかにいっぱい例があるよ。" userName="pjmlp" createdAt="2025-04-13T10:17:24" color="">}}

{{<matomeQuote body="言いたいことがよくわかんないなー。REPLってLispシステムが使うやつでしょ？OberonとかAcmeのコマンド入力はREPLとは違う気がする。スクリプトできないし。Emacsこそ最強のターミナルだと思うけどね。REPLもあるし、スクリプトも書けるし。" userName="geocar" createdAt="2025-04-13T15:03:40" color="">}}

{{<matomeQuote body="それって昔の超シンプルなREPLでしょ？EmacsとJupiter notebookが合体したOSみたいなのを想像してほしいんだよね。" userName="pjmlp" createdAt="2025-04-13T16:37:36" color="">}}

{{<matomeQuote body="＞EmacsとJupiter notebookが合体したOSみたいなの？<br>マジ勘弁。<br>＞昔のREPLでしょ？<br>いや、違うって。OberonとかAcme知らないなら話しても無駄だよ。そもそも何が言いたいの？" userName="geocar" createdAt="2025-04-13T17:13:11" color="">}}

{{<matomeQuote body="＞マジ勘弁<br>まあね。Emacsは昔はすごかったけど、ここ30年くらい停滞してるんだよね。(ターミナルエミュレータはもっと前からだけど)<br>REPLはもうちょいいい感じのテキスト編集機能があればいいのに。Ctrl-CとCtrl-Shift-Cの区別がつかないのがマジつらい。" userName="rollcat" createdAt="2025-04-13T22:55:13" color="">}}

{{<matomeQuote body="＞ここ30年くらい停滞<br>全部反対。<br>＞Ctrl-CとCtrl-Shift-C<br>Emacs使ってるならキーバインドくらい自分で変えれば？今のままでいいし。マニュアル読めないとかありえない。" userName="geocar" createdAt="2025-04-14T06:22:26" color="">}}

{{<matomeQuote body="しょうもない趣味プロジェクトを「美しい」って呼ぶのやめない？もう言葉の意味ないじゃん。" userName="pdntspa" createdAt="2025-04-13T07:02:35" color="#ff5733">}}

{{<matomeQuote body="「i love x」みたいな言い方が気持ち悪すぎる。" userName="big_paps" createdAt="2025-04-13T07:47:30" color="">}}

{{<matomeQuote body="話がずれちゃってるけど、音楽はマジで好きだよ。美しい音楽を聴くと感動するもん。「Slams」とか「genius」とか言葉の意味が変わってきちゃってるよね。言葉の意味が変わるのは文化の崩壊につながるから嫌だなぁ。「I love this web font」は「Don’t think, just click on this link」って意味になっちゃってる。" userName="tgv" createdAt="2025-04-13T08:05:08" color="#785bff">}}

{{<matomeQuote body="ソフトウェアを内側も外側も美しくしたいんだよね。だからターミナルとかTUIを批判してるんだ。使いやすいUIのアイデアはあるんだけど、経験もやる気もないんだよね。誰かがインスパイアされてくれると嬉しいな。" userName="rollcat" createdAt="2025-04-13T12:42:42" color="#ff5c5c">}}

{{<matomeQuote body="iOSでいくつかのブラウザで試したけど、アイコンが表示されないみたい。フォント（またはSVG？確認できる環境じゃないけど）がちゃんと配信されてるのかな？" userName="jasonjmcghee" createdAt="2025-04-13T02:11:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="またまたどうも。ブラウザでも同じ問題が発生してるし、ローカルのnvimでもダメだ。<br>NerdFonts（と適切なターミナルエミュレータ）が必要だったんだね。AstroNvimをいじってて、yakuakeのせいで詰まってる。<br>https://www.nerdfonts.com/font-downloads から何かホットロードできないかな。https://fonts.google.com/ のどれに必要な合字やシンボルがあるのかわからない。" userName="mcint" createdAt="2025-04-13T02:21:47" color="">}}

{{<matomeQuote body="macOSのFirefoxでもアイコンが表示されないよ。Safariで試したら、Firefoxでは小さな16進数コードみたいなものが入ったただの白い四角が表示される。" userName="djaychela" createdAt="2025-04-13T07:32:14" color="">}}

{{<matomeQuote body="Firefox (Linux) でもアイコンが見えないなー。NerdFontsはインストール済みだけど、ウェブサイトで必要になるはずないよね？" userName="kombine" createdAt="2025-04-13T05:37:57" color="">}}

{{<matomeQuote body="Firefox mobileだと、検索フィールドが右に1セル分大きすぎて収まらない…。まあいいか。細かいことかもしれないけど、作者がホームページでちゃんと表示できないんじゃ、信用できないかも。<br>もし誰かがフルCコンパイラを作ったとして、それ自体をコンパイルするときにエラーが出たら、使う？!" userName="lionkor" createdAt="2025-04-13T10:20:37" color="">}}

{{<matomeQuote body="それなー。リンクを開いたら、モバイルブラウザで表示が崩れてた。なんで公開前にチェックしないんだろ？まあ、ターミナルは好きだし、コメントにあるようにキーボードから手を離したくないって気持ちはすごくわかる。" userName="wsintra2022" createdAt="2025-04-13T13:31:12" color="">}}

{{<matomeQuote body="Pythonには、rich/textual frameworkをベースにした https://github.com/Textualize/textual-web もあるよ。" userName="meta-level" createdAt="2025-04-13T05:17:14" color="#ff33a1">}}

{{<matomeQuote body="＞ This will generate another URL, which will present you with your terminal in your browser<br>＞ Don't share this with anyone you wouldn't trust<br>これはすごいね。自分のサーバーに接続するターミナル共有アプリを作ったんだ。家で試すなんて、相当エッジなことしないと。" userName="nurettin" createdAt="2025-04-13T05:32:04" color="">}}

{{<matomeQuote body="いいね。BBSとGopherにこだわっておくべきだったんだ。<br>小さな問題として、スクロールバーが表示されていて、矢印キーを使うと少しスクロールしてしまう。" userName="waldrews" createdAt="2025-04-13T03:17:50" color="">}}

{{<matomeQuote body="ああ、素晴らしい。フォントにグリフが含まれていないときの空の四角形まで真似してる…<br>これは面白いけど、やめてくれ。TUIはデザインの忌まわしいもので、実際には美しいUIをひどく真似てるだけだ。ターミナルの制約のせいでそうなってるだけで、作者がそうしたくてそうしたわけじゃない。だから、リッチUIをサポートするプラットフォームにそのデザインを持ち込むのは、webでできることを不必要に制限することになる。terminalと同じデザインにすることもできない。1995年以降に導入されたリッチマルチメディアやインタラクティビティ、web機能を使いたくないなら別だけど。それなら、テキストオンリーかGeminiサイトの方がユーザーのためになる。<br>TUIはほとんどの場合間違ってると思う。テキストエディタとかプロセスマネージャーのようなものを作るなら、居場所はある。それでもGUIの見た目を真似るべきじゃなくて、そのアプリ専用に作るべきだと思うけど。ほとんどのターミナルプログラムはTUIを使うべきじゃない。コマンドライン引数で動作を修正して、ユーザーが求めたことを実行して、終了するべきだ。そうすればプログラムは適応可能で構成可能でスクリプト可能になる。別のクライアントプログラムで実行時にインタラクティブにできるけど、GUIを真似たインターフェースを手動で操作させるのは最悪の体験だ。" userName="imiric" createdAt="2025-04-13T08:07:03" color="">}}

{{<matomeQuote body="TUIってデザイン的に最悪じゃん？GUIの美しさを全然活かせてないって思うんだよね。実家が90年代にアルゼンチンのパタゴニアでデジタル系の会社やってて、町にプログラマーが1人しかいなかったんだ。そいつにDOSのソフト作らせたら、CRUDとかレポートとか、夜中に動くジョブとか全部入ったTUIソフトができてさ。会社の人がキーボードだけでめっちゃ使いこなしてたんだよね。あんなにパワフルで使いやすいソフト、他に見たことないわ。" userName="santiagobasulto" createdAt="2025-04-13T09:15:10" color="#45d325">}}

{{<matomeQuote body="それはわかるけど、キーボードショートカットはTUIだけのものじゃないよね。GUIだって同じくらいできるし、最近のWebアプリはキーボード操作に対応してるものも多いし。俺が言いたいのは、TUIが美しいって言うのは違うんじゃないかってこと。それをWebに持ち込むのもどうかなって思う。まあ、好みの問題だけどね。" userName="imiric" createdAt="2025-04-13T09:51:58" color="">}}

{{<matomeQuote body="GUIとかWebでもキーボード操作できるけど、それを最大限に活かしてるものは見たことないな。Linear（チケット管理アプリ）くらいかな？でも、TUIみたいなスムーズさはないんだよね。マウスが使えないって制約があるからこそ、キーボード操作に特化したアプリになるんだと思うよ。" userName="santiagobasulto" createdAt="2025-04-13T10:02:53" color="">}}

{{<matomeQuote body="最近のWebアプリはキーボードショートカットに対応してるのは確かだよね。でも、npmとかReactとかのせいで重くなってるものが多いのも事実。昔のターミナルアプリみたいに、タイプしたらすぐ反応するって感じじゃないんだよね。もちろん、ちゃんと作ればいいんだけど、みんな機能以外の部分にこだわらないから、無駄なアニメーションとかで遅くなるんだよね。タブの順番がめちゃくちゃだったり、AJAXリクエストが邪魔したりとかね。" userName="trollied" createdAt="2025-04-13T14:08:29" color="#ff5733">}}

{{<matomeQuote body="理論上はそうだけど、実際はうまくいかないことが多いよね。開発者が頑張って時間かけないとダメだし、そもそもキーボードショートカットを覚える人が少ないし。もしGUIをキーボード操作メインで設計すればうまくいくかもしれないけど、そういう例ってあんまりないよね。TUIみたいな見た目にすることで、キーボードを使わせようってことなんじゃないかな。" userName="graemep" createdAt="2025-04-13T13:34:53" color="">}}

{{<matomeQuote body="俺が使ってたPOSシステムは全部キーボード操作メインのGUIだったよ。" userName="queenkjuul" createdAt="2025-04-17T13:08:51" color="">}}

{{<matomeQuote body="今は1MBのRAMしかないPC使ってるわけじゃないし、256色しか出せないVGAカードとか、20MHzのCPUとか、40MBのHDDとかじゃないじゃん。" userName="pjmlp" createdAt="2025-04-13T10:21:08" color="">}}

{{<matomeQuote body="RAMとか関係なく、キーボードで操作する方がマウスより速いって。Sabreを使いこなしてる旅行代理店と、Skyscannerでフライト予約してる人を比べてみろよ。絶対負けるから。<br>https://youtube.com/watch?v=G8n0_3t-EhI&pp=ygUPc2FicmUgY2xp..." userName="jen729w" createdAt="2025-04-13T10:56:49" color="#785bff">}}

{{<matomeQuote body="Skyscannerのボトルネックは、日付を入力する時に手を動かすことじゃなくて、フライトのオプションが表示されるまで30〜50秒待つこととか、“どれが飛行機で、どれが第三者のリセラーなのか”を見極めることだよ。IDEとかプログラミングでも同じで、0.5〜2秒短縮できることよりも、会社のアンチウイルスがchromeの実行ファイルをスキャンしたり、VPNがタイムアウトする方が問題なんだよね。それに、PhotoshopとかMayaとかUnityとかUnrealとか、キーボードショートカットを使いこなせるツールはたくさんあるじゃん。" userName="maccard" createdAt="2025-04-13T13:04:56" color="">}}

{{<matomeQuote body="GUIには何十年も前からキーボードショートカットがあるんだから、それに対応してない開発者が悪いんじゃない？Win32とかX Windows APIにもキーボード操作のためのAPIがあるし。TUIを作るよりも、自分のスキルを磨くべきだと思うよ。Skyscannerが対応してないのは、技術的な問題じゃなくて、スキルとか予算の問題でしょ。" userName="pjmlp" createdAt="2025-04-13T11:14:31" color="">}}

{{<matomeQuote body="GUIとTUIの違いはキーストロークのバッファリングだよ。sabreのエージェントはシステムが処理中でも先に入力できるけど、WebとかGUIのユーザーは画面がロードされるのを待つ必要があるんだよね。" userName="nikau" createdAt="2025-04-14T04:01:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="キーボードのバッファサイズには限界があるし、GUIでも同じことはできるよ。結局は技術とOS APIをマスターするかどうかだね。<br>https://learn.microsoft.com/en-us/windows/win32/inputdev/key...<br>https://tronche.com/gui/x/xlib/events/keyboard-pointer/keybo..." userName="pjmlp" createdAt="2025-04-14T08:07:39" color="">}}

{{<matomeQuote body="ハードウェアキーボードのバッファじゃなくて、ttyのreadlineとかのバッファのことだよ。アプリに対するコマンドのスタックみたいなもので、前の行が処理されたら次の行がポップされるんだ。<br>GUIアプリじゃありえないし、Webフォームがリフレッシュされたり、2 tierアプリがDBの応答を待っている間に余分なキーストロークは失われるよね。" userName="nikau" createdAt="2025-04-14T09:02:01" color="#785bff">}}

{{<matomeQuote body="90年代に銀行の支店で古いシステムを使っているのを見たことあるけど、それを知ってる人はめっちゃ速かったな。" userName="graemep" createdAt="2025-04-13T13:32:33" color="">}}

{{<matomeQuote body="考えすぎだって！これは個人のブログとかポートフォリオサイト向けの可愛いデザインライブラリだと思うよ。作者がこれが最高のデザインだとは思ってないんじゃない？ aestheticにこだわってるだけで、楽しいじゃん。" userName="varun_ch" createdAt="2025-04-13T08:14:57" color="#45d325">}}

{{<matomeQuote body="確かにそうだね。Windowsとか他のOSの見た目を真似たCSSフレームワークは面白いと思うよ。「TUIの美しさ」に引っかかったけど、美は見る人の目に宿るって言うしね…  😊" userName="imiric" createdAt="2025-04-13T08:22:02" color="">}}

{{<matomeQuote body="うーん、納得できないな。TUIは好きだし、そのaestheticも好きだよ。<br>マウスで画面をクリックするよりも、キーボードで操作する方がずっと速いし、長いコマンドやフラグを全部入力して、フラグを一つ忘れてまた全部入力し直す必要もないしね。" userName="rvz" createdAt="2025-04-13T08:39:50" color="#45d325">}}

{{<matomeQuote body="フラグを忘れたら、カーソルを移動してフラグを追加すればいいんじゃない？ コマンド全体をもう一度入力する必要はないよ。" userName="pfg_" createdAt="2025-04-13T08:59:27" color="#ff5c5c">}}

{{<matomeQuote body="ターミナルでreadline/emacs bindingを使ってるなら、Meta + Bで一語戻るし、Ctrl + aでカーソルを行の先頭に移動できるよ。vi/vim keybindsを使ってるなら、もちろん同じような機能があるよ。<br>macOSでは、Optionを押しながらクリックすると、カーソルを左右に移動できるよ。<br>だから、コマンド全体をもう一度入力する必要はないんだ。個人的にはCtrl + aを押して、フラグを追加したい場所までカーソルを移動するかな。" userName="wpm" createdAt="2025-04-13T17:15:12" color="#785bff">}}

{{<matomeQuote body="TUIは複雑なタスクのためのメモリに優しいツールで、純粋なCLIやnative/Webアプリとは異なるUX（より快適で、明確で、有益で、アクセスしやすい）を持っているよ。colors, icons (nerdfonts), emojis, mouse support, widget layoutsとかがあるterminal ecosystemが発展してるのは嬉しいね。" userName="eMPee584" createdAt="2025-04-13T08:41:03" color="#785bff">}}

{{<matomeQuote body="実行がマジですごいし、アイデアも全然悪くないんだけど、笑っちゃうよね。マイクロサービスをより永続的に接続する方法を見つけたみたいなエネルギーを感じる。Ngl、こういう雰囲気がオタクなブログで流行って、最終的にはもっと広いウェブに広がる可能性もゼロじゃないと思うんだよね。少なくとも、普段から（様式化された）Markdownシンタックスを読んでる俺らみたいな人たちには嬉しいよね。" userName="bbor" createdAt="2025-04-13T03:12:15" color="">}}

{{<matomeQuote body="これマジでいいじゃん！もっと見たいな。<br> The Monospace Web: https://news.ycombinator.com/item?id=41370020 とか、コメント欄にある他の例もおすすめ。" userName="williamguerra" createdAt="2025-04-13T05:57:12" color="#ff5c5c">}}

{{<matomeQuote body="マジか、これ最高！オリジナルのテーマに忠実なのに、マウスでも使えるのがいいね。今作ってるプロジェクトで、1995年頃の自動車部品店の在庫ターミナルみたいなテーマを作ろうと思ってたんだ。TUIっぽくしたかったから、このテーマはマジで参考になる！" userName="catapart" createdAt="2025-04-13T10:34:33" color="#ff5c5c">}}

{{<matomeQuote body="これマジですごい！お疲れ様！使う時間があるかわからないけど、数分間、美的満足感を与えてくれてありがとう。" userName="nonrecursive" createdAt="2025-04-13T02:18:18" color="">}}

{{<matomeQuote body="マジかよ、これマジですげえ。TUI CSS [1] で遊んでみようと思ってたんだけど、これはヤバい。作者マジ尊敬。<br>80年代のTurbo Pascalで育ったからかもしれないけど、TUIってシンプルさと視覚的なスペースの使い方のバランスが最高なんだよね。Vulkanとかの世界じゃ忘れられちゃってるけど。<br>[1] https://github.com/vinibiavatti1/TuiCss" userName="runlaszlorun" createdAt="2025-04-13T03:16:37" color="#38d3d3">}}

{{<matomeQuote body="それが失われたのは、複数のセグメントを持つ実行可能ファイルを作ったり、nearポインタとfarポインタを駆使したり、640KBにすべてを詰め込んだり、ビデオメモリに直接書き込んだりしなくなったからだよ。Turbo Visionは最高だったし、1990年代で一番好きだったフレームワークの一つだ。" userName="pjmlp" createdAt="2025-04-13T11:25:49" color="">}}

{{<matomeQuote body="AIスタートアップのプレゼン資料を作ってて、デモ付きのイケてるウェブページが必要なんだ。ウェブ開発の経験はほとんどないんだけど、TUIっぽいインターフェースを作るのはアリかな？ターミナルの美学が好きだから、デザインを考える負担が減って、コンテンツに集中できるかなって。" userName="kombine" createdAt="2025-04-13T05:32:50" color="">}}

{{<matomeQuote body="個人的にはオススメしないな。https://mantine.dev/ (関係者じゃないけどファン) みたいな優秀なコンポーネントライブラリを使って、競合他社と似たようなサイトを作る方がいいと思う。そっちの方が、プレゼンを聞く人が期待する見た目だと思うし。プレゼン相手によっては、ターミナルをあまり使わない人もいるだろうし。" userName="mcintyre1994" createdAt="2025-04-13T06:52:40" color="">}}

{{<matomeQuote body="＞ターミナルの美学が好き<br><br>ターミナルのスーパーパワーは、見た目から来るんじゃないんだ。言語が開発された方法から来るんだよ（俺の長文コメント参照）。それが思考の負担を減らし、エレガントでシームレスな空間移動を可能にするんだ。個々のキーを覚えることじゃなくて、言語を学ぶことなんだ。それが力なんだよ。もっとこういうものが見たいけど、みんな何が作られたのかを見逃してる。" userName="godelski" createdAt="2025-04-13T05:55:17" color="#ff5c5c">}}

{{<matomeQuote body="いいね！<br>## Shameless plug<br>IBMのTN5250ターミナルみたいな古い技術をウェブに持ち込むとどうなるかを2年前に少し試してみたよ [0]。特にデータ入力のシナリオで。<br>デスクトップ向けに設計されてて、モバイル向けじゃないよ。<br>[0]: https://jiehong.gitlab.io/web_tn5250" userName="jiehong" createdAt="2025-04-13T16:09:00" color="">}}

{{<matomeQuote body="これって、Webの技術を使って、本物のターミナルエミュレーター（例えばHyperとか）そっくりなターミナルエミュレーターを簡単に作れるようにするってことだよね。つまり、一周回ってまた一周したみたいな？" userName="adhamsalama" createdAt="2025-04-13T11:00:59" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
