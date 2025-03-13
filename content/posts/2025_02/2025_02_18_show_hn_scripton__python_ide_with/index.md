+++
date = '2025-02-18T00:00:00'
months = '2025/02'
draft = false
title = 'Scripton登場！リアルタイム可視化機能を備えたPython IDEとは'
tags = ["Python", "IDE", "可視化", "プログラミング", "開発ツール"]
featureimage = 'thumbnails/blue.jpg'
+++

> Scripton登場！リアルタイム可視化機能を備えたPython IDEとは

引用元：[https://news.ycombinator.com/item?id=43090214](https://news.ycombinator.com/item?id=43090214)

{{<matomeQuote body="いい商品だね！クリエイターには拍手を送りたい。ただ、Mac専用でこの価格設定は厳しいかも。他にも選択肢があるから、毎月２０ドルが高く感じる人も多いと思う。でも、このプロジェクトには注目しておくよ。" userName="zipy124" createdAt="2025-02-18T15:51:19" color="#785bff">}}

{{<matomeQuote body="サブスクリプションを止めたらどうなるの？scriptonライブラリはオープンソースだし、lyraやorionのプロット機能はリファクタリングなしで画像ファイルに出力できるの？それとも再度サブスクしないといけないの？（製品のローンチおめでとう！）" userName="kaboomshebang" createdAt="2025-02-18T15:42:31" color="#785bff">}}

{{<matomeQuote body="すごく見栄えがいいけど、サブスクリプションの価格設定にはあまり満足できないな。趣味用の割引はないの？" userName="roger_" createdAt="2025-02-18T15:36:14" color="">}}

{{<matomeQuote body="Clojureでこれをやりたいなら、Clerkをチェックしてみて。自分が使ってるIDEをそのまま使えるのが嬉しいよ。" userName="erichocean" createdAt="2025-02-18T15:34:57" color="">}}

{{<matomeQuote body="IDEでClerkが使えるなんて知らなかった！教えてくれてありがとう！" userName="upghost" createdAt="2025-02-19T01:14:18" color="">}}

{{<matomeQuote body="これすごく良さそう！今はLiveCodeを使ってデータの絞り込みや変換をしてるけど、似たようなツールを探してる。求める機能は、テキスト入力、テキスト出力、ボタン、メニュー、スライダー、チェックボックス・ラジオボタンが欲しいな。<br>その中で今は、２、３、５があるみたい？もっとUI構築に進んでいく予定はある？" userName="gcanyon" createdAt="2025-02-19T03:42:31" color="#ff33a1">}}

{{<matomeQuote body="ありがとう！そうだね、現在は２、３、５があるよ。この初期セットはUI機能を示すためのもので、今後もっとウィジェットやコントロールも追加する予定だよ。７のバンドルについても考えてるけど、今は優先度が低いかな。" userName="nightcraft" createdAt="2025-02-19T04:19:14" color="#38d3d3">}}

{{<matomeQuote body="それはワクワクするニュースだね。Scriptonをもっと詳しく調べて、適切なインターフェースウィジェットが揃えば、自分のニーズに合いそうだ。" userName="gcanyon" createdAt="2025-02-19T14:30:18" color="#ff5c5c">}}

{{<matomeQuote body="PyTorchのテンソルを追加のメモリコピー無しで可視化できるの？テクスチャにマッピングして表示できるとか？Appleの最近のコンピュータではあまり問題ないけどね。" userName="KeplerBoy" createdAt="2025-02-18T15:12:33" color="">}}

{{<matomeQuote body="まだできないよ。内部プロトタイプではmacOSのIOSurfacesを使ってゼロコピーを試したけど、いくつかの制約があった。でもIPCはコピーを最小限に抑え、大きな数値配列を効率的に扱えるよ。" userName="nightcraft" createdAt="2025-02-18T15:17:36" color="">}}

{{<matomeQuote body="これ、1昔前のLight Tableを思い出すな。https://news.ycombinator.com/item?id=3836978" userName="for_i_in_range" createdAt="2025-02-18T17:18:09" color="">}}

{{<matomeQuote body="見た目がめっちゃ綺麗！データビジュアライゼーションには使わないけど、ウェブ開発がメインなので、UIがTypeScriptだと聞いて驚いた。Reactみたいなフレームワーク使った？" userName="giancarlostoro" createdAt="2025-02-18T15:06:51" color="">}}

{{<matomeQuote body="ありがとう！最初のプロトタイプではReactを使ってたけど、特定のケースでのオーバーヘッドが問題になって、カスタムの仮想DOM実装に置き換えた。複雑な更新のデバッグが難しくなって、最終的にはvscodeみたいにフレームワークなしでコアコンポーネントだけで構成されてる。" userName="nightcraft" createdAt="2025-02-18T15:15:16" color="#ff5733">}}

{{<matomeQuote body="一度きりの購入は考えてるの？それともサブスクリプションだけ？" userName="andsoitis" createdAt="2025-02-18T15:15:09" color="">}}

{{<matomeQuote body="現段階ではサブスクリプションだけの予定。でも、将来的にはJetbrainsの『永続的なフォールバックライセンス』みたいなのがあって、1年後は特定のバージョンまで使い続けられるようにしたい。" userName="nightcraft" createdAt="2025-02-18T15:37:06" color="">}}

{{<matomeQuote body="Observable Plotはどうやって働いてるの？コードをJavaScriptに変換してるの？" userName="ayhanfuat" createdAt="2025-02-18T15:17:36" color="">}}

{{<matomeQuote body="scriptonのPythonライブラリは、一般的なPythonデータ形式（通常の配列や辞書、numpy配列、データフレームなど）を中間形式に変換して、プロット関数を呼び出すとIDEに送信され、JavaScriptに自動翻訳されるんだ。あなたのPythonのプロットコードはこうなるよ：https://docs.scripton.dev/api/plot/orion/overview" userName="nightcraft" createdAt="2025-02-18T15:22:11" color="#45d325">}}

{{<matomeQuote body="すごく良さそうだね！これにはどのくらい取り組んできたの？自分は今年中にhackerman.aiのテキストエディタをリリース予定だよ。ニッチな製品で、自分の言語用のレクサーを作成・編集できたり、ほぼ全てをカスタマイズできて、キーバインディングも自分で定義した関数を使うようにできるし、もちろんAI機能も組み込まれていて、カスタマイズやコマンド追加もできる。Qtフレームワークベースでね。" userName="hackermanai" createdAt="2025-02-19T04:03:03" color="#45d325">}}

{{<matomeQuote body="これめっちゃカッコいいけど、サブスクリプションは嫌だな。みんなデジタル大家業に走りすぎじゃない？何かを売ってくれよ。" userName="helboi4" createdAt="2025-02-18T16:37:02" color="">}}

{{<matomeQuote body="コマンドキーを押しっぱなしで終了ってやめてほしい！ショートカットは一瞬で押すもんだろ。" userName="dinkblam" createdAt="2025-02-18T19:02:20" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="確かに、押しっぱなしで終了するのは accidental quit を避けるための方法だから、好みはあるね。でも次のアップデートで設定可能にする予定だよ。" userName="nightcraft" createdAt="2025-02-18T19:22:18" color="">}}

{{<matomeQuote body="＞”ノートブックは便利だけど、いくつかのトレードオフがあるから完全には代替できない。”<br>具体的に何を言ってるの？VSCode使ってて、#%%を使ってスクリプトをセルに分けて実行してるけど。" userName="croemer" createdAt="2025-02-19T11:05:08" color="">}}

{{<matomeQuote body="デザインはいいけどJetbrainsの方が好きなんだよね。統合するのはどう？それにMac限定は俺には向かない。Linuxしか使わないんだ。" userName="decide1000" createdAt="2025-02-18T18:16:26" color="">}}

{{<matomeQuote body="でも、変数エクスプローラーはあるの？MATLABやRStudioみたいなこの機能が多くのPython IDEに欠けていて、Spyder使うのは情報を見れるから妥協してるんだ。" userName="levocardia" createdAt="2025-02-18T19:36:47" color="#38d3d3">}}

{{<matomeQuote body="現在のバージョンではアクティブな変数を表示してるよ（numpy配列やTorchテンソル、DataFramesの形状や型も）。<br>ただ、さらに詳しい情報をテーブル表示する機能はまだ計画中なんだ。" userName="nightcraft" createdAt="2025-02-18T19:52:33" color="">}}

{{<matomeQuote body="Vanilla VSCodeにもデバッグモードで似たような機能はあって、Python拡張をインストールする必要があるけどそれだけで済むよ。" userName="alsodumb" createdAt="2025-02-18T19:48:09" color="">}}

{{<matomeQuote body="PyCharmはこの機能をうまくこなしてる。" userName="insane_dreamer" createdAt="2025-02-18T21:59:58" color="">}}

{{<matomeQuote body="Pythonのデプロイに悩んでる。サーバーなしでコードを配布するためにWebAssemblyを勉強してみるつもり。" userName="daft_pink" createdAt="2025-02-18T20:25:51" color="">}}

{{<matomeQuote body="＞自分が作ったBuckarooテーブルは、ヒストグラムや要約統計、検索機能を持ってる。テーブルについて語りたいから、連絡してくれたら嬉しい。" userName="paddy_m" createdAt="2025-02-18T15:20:42" color="">}}

{{<matomeQuote body="Scriptonの初期に、百万行以上のデータフレームを扱う仮想化テーブルを作成した。初リリースではビジュアルの部分に集中したけど、テーブルも後で必ずやる予定！" userName="nightcraft" createdAt="2025-02-18T15:27:51" color="">}}

{{<matomeQuote body="テーブルは自作したの？百万行を扱えるのはいいね。ウィンドウベースで表示を考えると、他のアーキテクチャもシンプルになる。" userName="paddy_m" createdAt="2025-02-18T15:33:42" color="">}}

{{<matomeQuote body="うん、自分で書いたよ。柔軟な仮想化テーブルは確かに複雑なものを作りやすくしてくれる。現状、ユーザーの拡張はできないけど、IPythonのいくつかの機能はサポートしてる。今はipywidgetsは使えないよ。" userName="nightcraft" createdAt="2025-02-18T15:55:39" color="#ff33a1">}}

{{<matomeQuote body="JetBrains Monoっぽいね。" userName="sangeeth96" createdAt="2025-02-18T15:48:49" color="">}}

{{<matomeQuote body="広告おめでとう。私は月額サブスクリプションで自由なオープンソースを借りることには抵抗があるけど、頑張ってね。" userName="CyberDildonics" createdAt="2025-02-18T16:11:11" color="">}}

{{<matomeQuote body="誰がターゲットユーザーなんだろう？自分はPythonをよく使うけどNotebook以外でプロットする必要を感じたことがないし、たくさんプロットする人向けなのかな？電子工学のエンジニアとか？" userName="markus_zhang" createdAt="2025-02-18T17:17:00" color="">}}

{{<matomeQuote body="見た目はすごくいいね！お疲れ様！でも、個人的には魅力は薄いかな。JetBrainsの更新料に173ドル払ったばかりで、PyCharm Proがすごく良いからね。このサイトを見る限り、すごく良い機能がいくつかあるけど、PyCharm Proや他のJetBrains製品を置き換えるにはならなそう。悪いけど、競争は歓迎するよ。" userName="hoistbypetard" createdAt="2025-02-18T18:01:02" color="">}}

{{<matomeQuote body="ありがとう！フィードバックはありがたいです！初めは視覚化に重点を置いてるけど、IDEの機能も開発中です。PyCharmのどの機能が一番必要ですか？" userName="nightcraft" createdAt="2025-02-18T18:16:13" color="">}}

{{<matomeQuote body="必要な機能のリストは長いんだけど、最近特に思うのは：<br>・uv/poetryの検出と環境利用<br>・リファクタリング<br>・unittest/pytestサポート<br>・docker composeのサービスサポート<br>・djangoのアプリ/モデルの検出と補完<br>・複数ランナーのサポート<br>・デバッガーがすごくいい<br>・djangoとjinjaのテンプレートサポート<br>・データソースへの接続とSQLクエリの実行<br>・Vimエミュレーション" userName="hoistbypetard" createdAt="2025-02-18T18:28:40" color="#38d3d3">}}

{{<matomeQuote body="すごく洗練されたUIだね。サブスクリプションの価格は気にしないよ、みんなが揃ってる方がいいし。UIツールキットは特にワクワクする、Streamlitの代わりを探していたから。" userName="zxie" createdAt="2025-02-18T23:47:31" color="">}}

{{<matomeQuote body="＞”エディタコンポーネントはMonacoに基づいているが、IDEはVSCodeのフォークではなく、ゼロから書かれた。”<br>面白い！どんなトレードオフがあるの？" userName="loic-sharma" createdAt="2025-02-18T18:39:12" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="個人的にVSCodeのコードベースは優れていると思う。機能の大部分がサービスに抽象化されてるし。ただし、そのサービス間の相互作用には難しい制限があるかな。フォークしたり拡張したりすることはできるけど、やっぱり大変だし、Scriptonにはゼロから書くのが適していたよ。VSCodeのエコシステムの利点を失うリスクはあるけど、Scriptonに慣れやすい部分があればいいな。" userName="nightcraft" createdAt="2025-02-18T19:19:45" color="#45d325">}}

{{<matomeQuote body="20ドルは実際に必要な人には安い。マネージャーレベルに説明してROIを伝える方が良いかも。" userName="ei625" createdAt="2025-02-18T18:56:33" color="">}}

{{<matomeQuote body="いいアイデアだと思うけど、IDEじゃなくて別のプロダクトにしたほうがいいんじゃない？Pythonを実行するツールと可視化ツールに独立させた方がいいと思うよ。大きなIDEに追いつく必要もないし、IDEのコードを保守する必要もないから、いろんなIDEを使ってる人たちにも使ってもらえるしね。" userName="BiteCode_dev" createdAt="2025-02-18T17:33:41" color="#ff5733">}}

{{<matomeQuote body="なんでVSCodeの拡張機能として作らないの？" userName="garyfirestorm" createdAt="2025-02-18T15:53:19" color="">}}

{{<matomeQuote body="VSCodeの拡張機能の道は、Scriptonの機能には制約が多すぎて無理だったんだよね。" userName="nightcraft" createdAt="2025-02-18T16:02:23" color="">}}

{{<matomeQuote body="これ、VSCodeをフォークしたり独自のエディタを作る人たちがよく言うことだよね。PythonのIDEだから理論上は大きな問題じゃないけど、Microsoftの一部拡張機能（dotnetとかcpp）は、MicrosoftのVSCodeのリリース以外では動かないんだ。あなたのエディタはvsix拡張機能に対応してるの？多分無理だろうけど、これは多くの人にとっては致命的な問題かも。" userName="bangaladore" createdAt="2025-02-18T18:10:32" color="">}}

{{<matomeQuote body="うわ、これめっちゃかっこいい！C++の部分についてもう少し教えてくれない？よくわからないんだけど。" userName="randomcatuser" createdAt="2025-02-18T19:30:56" color="#ff5c5c">}}

{{<matomeQuote body="ありがとう！C++の部分はIDEとPythonの間のIPC（プロセス間通信）に関係してるんだ。Pythonプロセスがデータを可視化のために送ったり、コマンドを受け取ったりするためにいくつかの方法があって、たとえばHTTPを使うこともできる。でも用途によっては性能にかなりのオーバーヘッドが出るんだ。だから、Scriptonはバイナリペイロード（大きなnumpy配列とか画像）を送るのに最適化されたプロトコルを使ってるんだ。これはC++のネイティブなマルチスレッドノードモジュールで実装されてて、非常に低遅延で高スループットの可視化を実現してるよ。" userName="nightcraft" createdAt="2025-02-18T19:49:20" color="#ff5733">}}

{{<matomeQuote body="Neovimのプラグインにしたら購入するよ！" userName="menelaus" createdAt="2025-02-18T17:20:16" color="">}}

{{<matomeQuote body="これはCursorみたいなAIエディタなの？" userName="somesun" createdAt="2025-02-19T03:33:34" color="">}}

{{<matomeQuote body="個人的な希望だけど、Linux版も出してほしいな。アドバイスとしては、まずは計画中のWindows版を早く出した方がいいよ。頑張ってね！" userName="Sweepi" createdAt="2025-02-19T10:12:10" color="">}}

{{<matomeQuote body="いいプロジェクトだね！" userName="peme969" createdAt="2025-02-19T04:38:05" color="">}}

{{<matomeQuote body="めっちゃクールだね！" userName="resters" createdAt="2025-02-18T16:46:58" color="">}}

{{<matomeQuote body="俺はロボティクスのエンジニアで、データ可視化に大量に関わってるんだ。どんな高精度・高レートのデータでも可視化してる。自分で作ったライブラリから、Rerunに移行したよ。実際に使ってるけど、シンプルだし、オープンソースだし、すごく役立つ。" userName="alsodumb" createdAt="2025-02-18T16:28:14" color="#ff5c5c">}}

{{<matomeQuote body="＞最近、ちょっと苦労してて、インターンが資料を使わずにLLMを使おうとするんだが、グチャグチャなコードができてきて困ってる。お前のリアクションはポジティブだね。インターンは、そのレベルの仕事なら誰でもできることを理解してるの？" userName="bsder" createdAt="2025-02-18T19:20:19" color="#38d3d3">}}

{{<matomeQuote body="面接や採用の決定は多くが組織やマネージャーレベルで行われるからね。インターンは主にまだ学生で、リモート授業を受けてきた世代なんだ。彼らに資料を使うように言っても、ちょっと時間奪われてる気がする。" userName="alsodumb" createdAt="2025-02-18T19:34:34" color="">}}

{{<matomeQuote body="RerunのLLM用のエクスポートを最近追加したけど、どう扱うべきかいまいち不安だった。今はChatGPTのテストでは大分良くなってるようだよ！" userName="uaksom" createdAt="2025-02-18T19:32:17" color="#ff33a1">}}

{{<matomeQuote body="Microsoft ResearchのData FormulatorのAI統合がすごく簡単でいいな。これで簡単に始められそうだ！" userName="jimmySixDOF" createdAt="2025-02-18T17:51:58" color="#38d3d3">}}

{{<matomeQuote body="ReRunは簡単に使えるけど、自分はWGPUとEGUIを使った視覚化重視のエンジンに乗り換えたよ。カメラや可視化の制御がしやすいからね。" userName="the__alchemist" createdAt="2025-02-18T18:26:05" color="">}}

{{<matomeQuote body="俺はRaspberry PiにデータをCSVで保存してて、デスクトップでSSH経由でMatplotlibで読み込んでる。でも、ちょっとカクカクするんだ。Rerun使ったら改善できるのかな？" userName="rcpt" createdAt="2025-02-18T17:11:58" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="はい！Rerunは絶対、君の作業を楽にしてくれるよ！Rerunはサーバーとビューアーが別のデバイスにあるのもサポートしてるから、CSVのデータをRerunにログするコードを追加すればいい。" userName="alsodumb" createdAt="2025-02-18T19:43:37" color="#785bff">}}

{{<matomeQuote body="“Show HN: We open-sourced our [rpi CSV] compost monitoring tech”って記事や、Grafanaの機能についてのコメントが出てきて、pyqtgraphやMatplotlibの使い方も話題になってるね。リアルタイムの可視化ツールとしては、Genesisが興味深いかも。" userName="westurner" createdAt="2025-02-19T13:00:24" color="">}}

{{<matomeQuote body=" rerunには前から注目していたけど、コメントを見て試してみようと思った。簡単なことにはノートブックを使ってたけど、GUIを自作するのは割に大変だったから。IMGUIを使った場合、100行以内で自分の動画やプロットが作れるのはいいね。" userName="zipy124" createdAt="2025-02-19T10:57:53" color="#ff5733">}}

{{<matomeQuote body="ドキュメントをマークダウンファイルにスクレイピングして、インターンにLLMのプロンプトに入れさせてるけど、結構うまくいってる。いいスペックのREADME.mdを作れば、役立つかもと思ってる。" userName="genewitch" createdAt="2025-02-19T07:01:00" color="">}}

{{<matomeQuote body="rerunは多次元データの可視化に必要なものそのもの。色々質問したいことがある！mmapファイルにアクセスして、リアルタイムで表示しながら履歴を保存できる？" userName="qrios" createdAt="2025-02-19T01:17:36" color="">}}

{{<matomeQuote body="rerunを初めて見たけど、すごく良さそう！" userName="cameldrv" createdAt="2025-02-18T18:43:26" color="#45d325">}}

{{<matomeQuote body="Python開発をかなり長くやってるけど、最近使ってるのはPyCharm。見た目が綺麗で時短機能もいいけど、Mac専用でサブスクリプションモデルなのが気になる。" userName="nickserv" createdAt="2025-02-18T16:50:41" color="">}}

{{<matomeQuote body="PyCharmを使ってるって言うけど、サブスクリプションモデルについてもっと知りたいな。JetBrainsのはどうなんだろう？" userName="lolinder" createdAt="2025-02-18T17:03:29" color="">}}

{{<matomeQuote body="Jetbrainsのサブスクリプションモデルには大事な点があって、支払いを止めても使えるライセンスがあるんだ。こういうモデルがもっと増えるといいな。" userName="vunderba" createdAt="2025-02-18T17:05:55" color="">}}

{{<matomeQuote body="Jetbrainのモデルは、昔のIDEの価格モデルに似てるね。開発者は結構お金払ってたし、マニュアルも付いてた。今でも紙のマニュアル欲しいな。" userName="markus_zhang" createdAt="2025-02-18T17:10:21" color="">}}

{{<matomeQuote body="Jetbrainsはもともとアップグレード制だったけど、今はサブスクリプションモデルに行き、収益が安定するようになったらしい。面白い変化だね。" userName="shagie" createdAt="2025-02-18T19:21:25" color="#ff5c5c">}}

{{<matomeQuote body="Oracle RDBMSは昔、PL/SQLやCバインディング、Fortranなどの20冊以上の本が付いてきたんだよね。そんな時代には戻りたくない！" userName="jamespo" createdAt="2025-02-18T18:46:22" color="">}}

{{<matomeQuote body="コーヒーを飲みながら、そういう本を一冊読んでみたい気分。でも、現実はそう甘くないんだよな。オンラインドキュメントより紙の本の方が好きだよ。" userName="markus_zhang" createdAt="2025-02-18T21:03:03" color="">}}

{{<matomeQuote body="確かに似てるね。Borland C++やVisual Studioのソフトウェアも、メジャーバージョンとパッチアップデートが揃ってた。Jetbrainsの物理コピーがあるのかは分からないけど、昔の大きな箱が懐かしい。" userName="vunderba" createdAt="2025-02-18T17:15:12" color="">}}

{{<matomeQuote body="デベロッパーが製品を本当に理解している証拠として、大きな箱が好きだな。最近は素早い展開が普通になってて、急いで新機能を求めるのは悪くないけど、じっくりとやるメリットもあると思う。" userName="markus_zhang" createdAt="2025-02-18T18:01:57" color="">}}

{{<matomeQuote body="それは違うと思う。ツールのプロジェクトチームにはデベロッパーだけじゃなくて、優れた技術ライターやプロジェクトマネージャーも含まれていたんだ。ドキュメント化のための仕様がついてたしね。" userName="pasc1878" createdAt="2025-02-18T18:20:37" color="">}}

{{<matomeQuote body="デベロッパーが中途半端な仕事を許されないのはいいことだと思う。" userName="markus_zhang" createdAt="2025-02-18T21:04:28" color="#38d3d3">}}

{{<matomeQuote body="＞ perpetual fallback license<br>Scriptonがこれを提供してるか本当に確か？価格ページに「サブスクリプションが有効な間すべての更新が含まれます」と書いてあるけど、それはサブスクリプション終了後は更新が止まるだけで、使用はできるってこと？よく分からない。" userName="gcanyon" createdAt="2025-02-19T02:09:02" color="">}}

{{<matomeQuote body="いくつかのこと。1. SaaS製品でのperpetual fallback licensesはあまり一般的じゃないから、明示されてないとほぼ無理だと思っていいよ。2. 開発者が言ってたけど、今のところはサブスクリプションのみで、将来的にはJetbrainsの「perpetual fallback license」のようなものを考えてるらしい。" userName="vunderba" createdAt="2025-02-19T02:58:56" color="">}}

{{<matomeQuote body="＞ 1. SaaS製品でのperpetual fallback licensesはあまり一般的じゃないから、明示されてないとほぼ無理だと思っていいよ。<br>私もperpetual fallback licensesは良いと思ってるし、hackerman.aiのテキストエディタでこれを使いたい（今年後半にリリース予定）。一回の支払いも復活してほしいな。" userName="hackermanai" createdAt="2025-02-19T03:40:53" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
