+++
date = '2025-06-10T00:00:00'
months = '2025/06'
draft = false
title = 'ついに来た！インストール不要＆爆速のブラウザ3D CAD「Chili3d」がオープンソースで登場！'
tags = ["3D CAD", "オープンソース", "Webアプリ", "モデリング", "WebAssembly"]
featureimage = 'thumbnails/red2.jpg'
+++

> ついに来た！インストール不要＆爆速のブラウザ3D CAD「Chili3d」がオープンソースで登場！

引用元：[https://news.ycombinator.com/item?id=44238171](https://news.ycombinator.com/item?id=44238171)




{{<matomeQuote body="Chili3Dの開発者だよ！オープンソースでブラウザベースの3D CADなんだ。<br>OpenCascadeをWebAssemblyにコンパイルしてThree.jsと連携させて、インストール不要で爆速のオンラインモデリング、編集、レンダリングを実現したんだ！ここからアクセスしてね→https://github.com/xiangechen/chili3d<br>機能は、基本形状作成、2Dスケッチ、ブーリアン演算とかのモデリングツール。スナッピングやトラッキングで正確な位置合わせ。面取りやフィレット、移動、回転とかの編集ツール。角度や長さの計測、体積とかの計算もできるよ。<br>ファイルの作成、保存、Undo/Redoもフルサポート。STEP, IGES, BREP形式のインポート/エクスポートに対応してるんだ。<br>UIはOffice風で、コマンドは文脈に応じて整理されてるし、階層的なアセンブリ管理、動的なワークプレーン、3Dビューポート制御もあるよ。<br>多言語対応済みで、中国語と英語は対応してるよ。" userName="xiange" createdAt="2025/06/10 15:39:57" color="#45d325">}}




{{<matomeQuote body="いや〜、マジすごいね！<br>君の説明読んだときは、”なんかおもちゃの3Dプロジェクトかな？たぶん遅くて機能も足りないだろうな”って思ったんだ。いや、説明はちゃんと書けてるんだけど、僕が単純に読みすぎたせいかも。君への批判じゃなくて、自分自身の観察ね。<br>まだ数分しか見てないけど、これはかなり素晴らしいよ。かなり速いし、UIも他のツール使ってたから比較的分かりやすい。他のと比べてもスッキリしてると思うよ。<br>Fusion 360がOpenSUSE Tumbleweedで対応してなくてイライラしてたんだけど、これで困ってた問題が解決しそう。感謝してるよ！" userName="mdip" createdAt="2025/06/10 19:37:22" color="#38d3d3">}}




{{<matomeQuote body="”OpenCascade (OCCT)をWebAssemblyにコンパイルした”って見て、どのジオメトリカーネル使うのかなって気になってたんだ！なるほどね。こういうの少ないのって面白いよね。ソリッドモデリングの一部はParasolidみたいに40年近く前のものもあるし、これは難しいはずだね。" userName="jasonthorsness" createdAt="2025/06/10 16:15:27" color="">}}




{{<matomeQuote body="GISでBREPを少しやってるんだけど、2Dで線分だけなのに問題は本当に非自明で、手当てしないといけないエッジ（文字通りね）ケースがたくさんあるんだ。Type systemはすごく役立つから、たぶんRustはここで活躍するだろうね（そんな感じのプロジェクトを見た気がする）。<br>そうは言っても、個人のCAD利用ではFusion 360からFreeCAD 1.0にほとんどプロジェクトがない状態で乗り換えたんだけど、FreeCADの方が桁違いに速いよ。" userName="immmmmm" createdAt="2025/06/10 18:00:05" color="">}}




{{<matomeQuote body="同意。FreeCAD 1.0はようやく実用的になって、アセンブリもサポートしたね。僕の主な不満だったBOMツールはリリース当初はダメだったけど、メインブランチで直ったよ。まだ変な癖はたくさんあるけど、数時間使えば慣れるレベルだよ。" userName="ssl232" createdAt="2025/06/11 00:32:02" color="">}}




{{<matomeQuote body="FreeCADには派生版（Astocad）もあるって言っとくね。元Ondselの開発者が作ったやつで、UIがいくつか強化されてるよ→http://astocad.com/" userName="seltzered_" createdAt="2025/06/11 01:23:58" color="">}}




{{<matomeQuote body="この価格モデル、すごく好きだな。aespriteを思い出すよ。<br>自分でビルドするなら無料で、便利に使うためにビルド済みバイナリが欲しいならお金を払ってね、ってスタンス。" userName="Oxodao" createdAt="2025/06/11 07:34:11" color="">}}




{{<matomeQuote body="コーナーケースは難しいだろうけど、基本的な数学表現は変わってないと思うんだ。ParasolidやASICsのライセンス費用が妥当なら、ゼロから新しいものを作る商業的なインセンティブはあまりないよね。今の市場のトレンドはAutodeskとHexagonが買いまくって、多くのCADやCAMソフトを集約してることだし。<br>OpenCASCADEは以前は商用だったけど、顧客が十分に集まらず、商用として失敗した後にオープンソースになったんだよ。" userName="abe_m" createdAt="2025/06/10 21:30:05" color="#ff33a1">}}




{{<matomeQuote body="失敗したときにもっと多くの会社、特に大学発のベンチャーにこうして欲しいね。残念なマーケティングとかリーダーシップとかで、役に立つイノベーションが何年も埋もれちゃうのはもったいないと思う。もっと上手くやれる人たちがリバースエンジニアリングするか、特許切れを待つしかないなんて。" userName="inhumantsar" createdAt="2025/06/11 13:46:43" color="">}}




{{<matomeQuote body="コーナーケースは難しいけど、基本は難しくないはずなんだ。普通なら、いくつかの基本的なCADカーネルと、いくつかの良いプロフェッショナルなものがあるのを期待するんだけど、実際はそうじゃないんだよね。" userName="shash" createdAt="2025/06/11 15:45:20" color="">}}




{{<matomeQuote body="Open sourceのCADカーネルって、OpenCASCADE、GCAL、Solvespaceとかあるよね。後の2つはOpenCASCADEに比べると機能が足りないけど。あとは商用だとParasolid、ACIS、それにCATIAに入ってるカーネルとか。いくつかあることはあるんだけど、この分野に興味ある人が新しい画期的な機能を作るようなアイデアが、あんまりないのかな？" userName="abe_m" createdAt="2025/06/12 21:43:10" color="#ff33a1">}}




{{<matomeQuote body="こういう幾何学的な問題にどう取り組むのが一番良いのか、もっと詳しく読みたいなあ。" userName="amelius" createdAt="2025/06/10 18:01:46" color="">}}




{{<matomeQuote body="＞＞ こういう幾何学的な問題にどう取り組むのが一番良いのか、もっと詳しく読みたいなあ。<br>たぶん学ぶのに一番手軽なNURBSカーネルはSolvespaceにあるやつだよ。コアのソースコード全部で6KLoCくらい。<br>ここ見て→ https://github.com/solvespace/solvespace/tree/master/src/srf<br>お気に入りのファイルは ratpoly.cpp。高次のNURBSやノットは扱ってないけど、基本的な幾何アルゴリズムがいっぱい詰まってる。NURBSのブーリアンのバグはまだあるけど、高レベルのアルゴリズムはしっかりしてるよ。ちなみにWeb用にコンパイルもできるけど、それはまだ未完成。" userName="phkahler" createdAt="2025/06/10 18:50:05" color="#ff33a1">}}




{{<matomeQuote body="うわー、読みたいけど、仕事でこの分野やってるからGPLv3のコード読むのは…リスキーなんだよね。<br>うちの会社のCADカーネルは2DでBezier実装してるけど、3Dのパラメトリックはまだ限定的だよ。" userName="johncalvinyoung" createdAt="2025/06/10 19:54:05" color="#38d3d3">}}




{{<matomeQuote body="ちょっと気になったんだけど、GPLコードを読むことに何で問題があるの？<br>僕の理解だと、コードを直接コピー＆ペーストしないとGPLライセンスは適用されないんじゃない？" userName="wizzledonker" createdAt="2025/06/11 22:06:58" color="">}}




{{<matomeQuote body="ありがとう！Solvespaceの大ファンなんだ。ちょっとした欠点はあるけど、いつも workaround できるのがいいね。たまに幾何学的な問題解決にも使うよ。手でやるよりずっと簡単。<br>ソースコード見てみるね。" userName="amelius" createdAt="2025/06/12 09:40:32" color="#785bff">}}




{{<matomeQuote body="Open sourceのジオメトリカーネルって、選択肢そんなに多くないんだよね。<br>OpenCascadeとCGAL。<br>他に何かある？" userName="snarfy" createdAt="2025/06/11 15:01:13" color="">}}




{{<matomeQuote body="BRL-CADの中にあるやつとか、Solvespaceも独自の持ってるよ。<br>商用3Dカーネルもそんなにたくさんあるわけじゃないしね - ACIS、Parasolid、それと…？" userName="shash" createdAt="2025/06/11 15:43:58" color="#ff33a1">}}




{{<matomeQuote body="BRL-CADを使ってる人いるのかな？機能的にはできるはずだけど、情報とかリソースが全然見つからないんだよね。" userName="actionfromafar" createdAt="2025/06/11 16:35:30" color="">}}




{{<matomeQuote body="僕は正直、これで何かをうまくできたことないんだ。使い方が分からなかった。<br>でもカーネルは確かに持ってるよ、だからね…" userName="shash" createdAt="2025/06/12 20:23:46" color="">}}




{{<matomeQuote body="すごいけど、拘束とかスケッチ機能が見当たらないなー。Webアプリなのは残念だけど、時代の流れかな。" userName="rcarmo" createdAt="2025/06/10 16:12:22" color="">}}




{{<matomeQuote body="Chromebook使ってる学校には、Webアプリ助かるわー。特に3Dプリンター用にエクスポートできたら最高！色んなツール使えて楽しいことできるもんね。<br>でも、先生・親としてはChromebookでネイティブアプリとかファイルシステムを知らない子が増えないか心配なんだ。<br>うちの子のポスター作り見てると、Webサービス渡り歩いてて。Pixelmator ProとかAffinityとかPhotoshopで見せてもキョトンとしてる。" userName="SamBam" createdAt="2025/06/10 17:09:25" color="#ff5733">}}




{{<matomeQuote body="Chromebookなんていらねー、ネイティブアプリに戻ろうぜ！Windowsにはmsix、Linuxにはflatpackもあるし。<br>ストレージは安いし、デバイスもパワフルなんだから、その力を使えって！" userName="sirjaz" createdAt="2025/06/10 17:33:55" color="">}}




{{<matomeQuote body="学校には色々楽なんだってさ。管理が簡単だし、Google classroomと連携できるし、どのChromebookでもログインすれば自分のファイルが使えるようになる。<br>「本物の」コンピューターの使い方は学ばないけど、それは基準に入ってないから気にしないんだって。" userName="SamBam" createdAt="2025/06/10 19:42:07" color="">}}




{{<matomeQuote body="Google Classroomは最悪のLMSだよ。どの端末でもファイル使えるってのはActive Directoryで昔からできたことじゃん。<br>学校が飛びついたのは、安かったのと、品薄の時に手に入りやすかったからでしょ。他に理由なんて考えてなかったと思うなー。" userName="franga2000" createdAt="2025/06/11 04:39:09" color="">}}




{{<matomeQuote body="ちょっと不満かな。<br>1. Linuxユーザーなら、FTPアカウント取ってcurlftpfsでマウント、SVNかCVS使えば自分で同じようなシステム作れるんだ。<br>2. USBドライブの代わりにならない。みんな接続問題に備えてUSBは持ち歩いてるし、これは接続問題は解決しないね。" userName="pcthrowaway" createdAt="2025/06/11 10:35:48" color="#ff5c5c">}}




{{<matomeQuote body="＞ 「本物の」コンピューターの使い方は基準に入ってないから気にしない<br>いやいや、それは絶対基準に入れるべきでしょ！" userName="DaSHacka" createdAt="2025/06/11 01:43:08" color="">}}




{{<matomeQuote body="一部の人にはぴったりだよ（全員じゃないけどね、学校とかはWin/Linux/Mac必要）。ネット見るだけの家族とかはChromebookで十分！コピペも大変な人もいるんだからさ！" userName="kennydude" createdAt="2025/06/11 12:23:56" color="">}}




{{<matomeQuote body="子供たちにウェブサイト作らせちゃえば？<br>Webベースのソフト大好きだよ（ログインは嫌だけど）。先生にとっては時間の大幅節約！互換性で悩むんじゃなくて、アイデアとか教える方に時間使えるもんね。" userName="thenthenthen" createdAt="2025/06/11 15:27:19" color="">}}




{{<matomeQuote body="CADならSolvespaceがChromebookで動くよ。高校以下におすすめかは微妙。ジオメトリのエラーとか回避が若い子にはややこしいかも。子供にはもっと使いやすいのがいいな。" userName="phkahler" createdAt="2025/06/10 18:41:02" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Geometryを学ぶ上で、わざと失敗する問題に取り組んで解決していくのは、ある程度以上のレベルの人にとってはかなり面白いと思うな。なんで失敗したのか、Geometryや計算の何が原因で失敗したのかを正確に理解すると、GeometryとかTopologyそのものへの直感が磨かれるはずだよ。" userName="regularfry" createdAt="2025/06/11 08:40:56" color="#785bff">}}




{{<matomeQuote body="Solvespaceは、一般的用途には正直全然洗練されてないね。使えることは使えるんだけど、Sketchの扱い方にはいつも苦労させられるよ。" userName="rcarmo" createdAt="2025/06/10 19:22:05" color="">}}




{{<matomeQuote body="現在のバージョンにはこれは含まれてないけど、将来Parametric Componentsとして利用できるようになる予定だよ。" userName="xiange" createdAt="2025/06/11 01:32:30" color="#ff33a1">}}




{{<matomeQuote body="Yep！Hacker Newsの人たちがWebアプリのSide Commentに飛びつくのは当然だけど、あなたが言ったConstraintやSketchについての、よりRelevantでValuableなポイントだね。<br>それに関連して、本当のParametric Design。これはIMO、CADパッケージがSeriousに受け止められるためにはVitalだよ。" userName="mft_" createdAt="2025/06/10 20:11:25" color="#45d325">}}




{{<matomeQuote body="Yep！Parametric機能が追加されたらぜひ試してみたいな。この分野には、Good QualityでReasonably PricedなSoftwareが必要だよね。" userName="the__alchemist" createdAt="2025/06/11 01:50:48" color="#38d3d3">}}




{{<matomeQuote body="Browsersは’Native’アプリと同じくらいPowerfulになり得るんだ。これはそのExampleだよ。BrowserアプリはユーザーをProprietary Operating Systemやその会社から解放するんだ。もちろん、Linuxっていうやり方もあるけどさ。でも、Why not just write it once and let students and engineers the world over be able to share and open files easily？<br>Update：新しいLaptopだと、これがNativeアプリよりFasterだよ。そして、このアプリへのLinkをクリックして30秒以内にLiterally Shapeを描き始めたんだ。他の全てのツールにあるRegistration, Email clutter, 2FA, and on and onっていうNightmareと比べてみてよ。Oh, and Cost in most cases！<br>Update 2：このチームとは何の関係もないよ。Just having seen a post online about this toolだけさ。最近SketchUp/AutoCad/Revitの世界をNavigatingしてたから、これはOf Course Totally Thrillingだよ。Especially for what it means for the future。" userName="joeevans1000" createdAt="2025/06/10 19:48:52" color="#45d325">}}




{{<matomeQuote body="これはBlatantly Wrongだよ。どんなSeriousな3D ApplicationもAccessを必要とするNative ResourceがSo Manyあって、それがBrowsersによってBlockされてるから、このStatementはJust Isn’t Trueだし、Never Will Beだよ。" userName="gmueckl" createdAt="2025/06/10 19:58:46" color="">}}




{{<matomeQuote body="Out of Curiosity, どんなNative Resourceが必要なの？SolidworksはMainly File System, GPU, and perhaps NetworkingへのAccessが必要みたいだけど。GPUとNetworkingはBrowserでできるし、File HandlingはLocallyじゃなくてOver the NetworkでImplementedできるかもしれないね。<br>For most Current Pro CAD, Certainly there are a lot of calls to Win32 Libraries on Windows, but those aren’t Fundamentally needed by a CAD System. There was Professional 3D CAD before Windows.<br>I don’t know what Native Hardware would be needed that isn’t already Accessible through Current Chrome？" userName="abe_m" createdAt="2025/06/10 21:33:53" color="#ff5733">}}




{{<matomeQuote body="For starters, CUDA KernelsのFull Powerがあるね。それから、BrowserがEnableしないたくさんのPotential Low Level Optimizationsがあって、簡単に2x to 10xのPerformance Differenceを生むことがあるんだ。Also, Memory UsageのHard Boundsを与えるGood Wayがないね。" userName="gmueckl" createdAt="2025/06/11 02:40:54" color="#38d3d3">}}




{{<matomeQuote body="CUDA KernelsはNvidia GPUsをRequireするからNon Starterだよ。Things like CAD SoftwareはMostly OpenGLのようなLow Common Denominator Graphics Layerを使うことになるだろうね。WebgpuはActuallyあれのDecent Alternativeになるよ。<br>There certainly are Optimisations that aren’t Possible in Web Browsers Today。Arbitrary Wasm Memory Constraintsや、CPU Multithreading or SIMD周りのDifficulties for example。But CUDA KernelsはMost CAD SoftwareにとってRealistic Optionじゃないよ。" userName="ath92" createdAt="2025/06/11 05:26:39" color="#ff5733">}}




{{<matomeQuote body="AnsysはCUDAで動くんだって。<br>「使い物にならない」なんて言ってたけど、それが現実だよ。" userName="gmueckl" createdAt="2025/06/11 06:32:24" color="">}}




{{<matomeQuote body="CADでCUDAを使うのはニッチで、多分FEAの一部かな。<br>高額なAbaqusシステム入れたけど、解析はCPU中心でGPU使うのは一部だよ。<br>10倍以上遅いPCでもCADやってたし、性能が全てじゃないかも。<br>シンプルなCADなら古いCore i7でも最新でも性能差感じないし、最新PCの10％の性能で十分な場合もあるよ。" userName="abe_m" createdAt="2025/06/12 21:38:17" color="#ff5c5c">}}




{{<matomeQuote body="ブラウザでもファイルシステムが使えるようになったんだよ。" userName="davidmurdoch" createdAt="2025/06/11 00:38:38" color="">}}




{{<matomeQuote body="だから「できるかも」って言ったんだよ。<br>OSがブラウザのアクセス制限を緩めれば「一度書けばどこでも動く」に近づくと思う。<br>でもそれって、プロプライエタリなソフト会社には嬉しくないことだよね。" userName="joeevans1000" createdAt="2025/06/10 20:50:20" color="">}}




{{<matomeQuote body="「アプリを別のOSに作り直さなくても、どのOSでも全く同じように動くランタイムがあれば最高なのに！」って言おうとしてたところなんだ。😂" userName="SunlitCat" createdAt="2025/06/11 03:25:39" color="">}}




{{<matomeQuote body="性能を求めるなら、皮肉だけど全く同じじゃなくていいんだ。<br>必要な部分はハードウェアに合わせた最適化をしたいし、Javaが大きく変わってなければ、性能が大事な部分は別のコンパイル言語で書く必要があるだろうね。" userName="gmueckl" createdAt="2025/06/11 06:36:05" color="#ff5733">}}




{{<matomeQuote body="ああ、それには全く同意だよ！<br>元コメントはブラウザをアプリのプラットフォーム独立ランタイムとして使うこと（を勘違いしてるのでは）についてだったんだ。<br>実は職場で簡単なHTML/JavaScriptアプリをいくつか作ったことあるよ。<br>表をソートしたり、簡単なタスク管理とか。<br>どこにでもあるブラウザを使うのは便利だからね。" userName="SunlitCat" createdAt="2025/06/11 08:03:18" color="">}}




{{<matomeQuote body="すごく印象的だね。<br>ツールアイコンの名前がちょっと変で、「Bessel」とか「pour corner」とか「From the cross section」って何だか分からないんだ。<br>英語訳は、もっとCADで馴染みのある言葉にする必要がありそう。<br>今はちょっと使いにくいかな。<br>キューブ作ろうとしたら中国語に切り替わっちゃって、簡単に戻せないみたい。" userName="tmjdev" createdAt="2025/06/10 15:54:23" color="#ff5733">}}




{{<matomeQuote body="すごいね！DassaultとかAutodeskみたいな数社が独占してる分野でオープンソースが出てくるのはいつも嬉しいよ。<br>ちょっと話は違うけど、最近出始めたLLMを使った文脈理解できるCADにも期待してるんだ。" userName="Prime_Axiom" createdAt="2025/06/10 16:01:52" color="#45d325">}}




{{<matomeQuote body="いくつか3D CADシステムを使ったけど、solvespaceほど良いものはないね。でもsolvespaceも大変な時は本当に大変なんだ。真剣な開発チームがsolvespaceだけに取り組んでくれたらいいのにって思うよ。" userName="rowanG077" createdAt="2025/06/10 17:40:20" color="#785bff">}}




{{<matomeQuote body="これ、すごく良さそう！FreeCADのインターフェースがこうだったらって思う感じ。僕はパラメトリックモデルを作るのにPythonインターフェースを使う方が好きなタイプだけど、これは本当にクールだね！<br>みんな、Truck [1] の現状について何か知ってる？彼らはCADカーネルでオープンソースのCADプログラムを実装するのかな？それも有望なプロジェクトに見えるよ。<br>[1] https://github.com/ricosjp/truck" userName="tapia" createdAt="2025/06/10 16:38:03" color="#ff5c5c">}}




{{<matomeQuote body="CADmiumはTruckカーネルで作られてたよ。ただ、CADmiumは24年6月以降、リポジトリに活動がないみたいだね。https://github.com/CADmium-Co/CADmium<br>それと、Fornjotカーネルもあるよ。https://github.com/hannobraun/Fornjot" userName="infogulch" createdAt="2025/06/10 16:46:30" color="#ff5733">}}




{{<matomeQuote body="CADmiumはとっくに終わってるし、残念ながらTruckもFornjotもまだ“そこ”には達してないんだ。“そこ”っていうのはキューブより複雑なものって意味ね。<br>背景を言うと、俺はCADmiumの主要な貢献者／メンテナーだったんだ。" userName="ttouch" createdAt="2025/06/10 17:50:39" color="#ff5c5c">}}




{{<matomeQuote body="CADmiumの状況を明らかにしてくれて、TruckとFornjotについての意見もありがとう。それで、CADmiumに何があったの？Truckはまだ土台として原始的すぎるのかな？両方のカーネルとも積極的に開発されてるみたいだけど、進捗のスピードはどう思う？" userName="infogulch" createdAt="2025/06/10 19:00:02" color="">}}




{{<matomeQuote body="まあ、だいたい内部の問題だったね。<br>Truckがどうなるか全然分からないよ。CADをいじるのはしばらく時間がかかると思う、苦い経験だったからね…<br>Fornjotはうまくいってるみたいだよ。俺は彼らに寄付してるし、定期的に更新も来るんだ（君もするべき！）。それでも、まだまだ先は長いね。<br>もしやり直すなら、OCCTルート（Chili3dやzooみたいに）かsolvespaceにするかな。商用と比べると、どっちもカーネルは“不足”してるけど、持続可能なCAD形式を完璧なフィレットより好むMaker向けには十分“市場の隙間”があると思うよ（そしてIMO FreeCADは解決策じゃない）。<br>でも俺の努力は、数学以外の部分にレーザーフォーカスされてたことは覚えておいてね。CADiumでの経験から分かったのは、b-repカーネルは持続不可能なレベルで難しいってこと。ブラウザレベルでは持続不可能。純粋な必要性から、b-repカーネルじゃない別のCAD問題を解決する方法が見つかることを願ってるよ。" userName="ttouch" createdAt="2025/06/10 21:51:03" color="#38d3d3">}}




{{<matomeQuote body="FreeCADのインターフェースの何が嫌いなの？" userName="MaKey" createdAt="2025/06/10 20:43:52" color="">}}




{{<matomeQuote body="ツールが整理されてなくて、メニューで必要なツールを見つけるのにいつも困るんだ。違うワークベンチがあるコンセプトが僕には合わないな。探してるツールが間違ったワークベンチにあるって気付くことがよくあるんだ。でも、なぜあるものが特定のワークベンチにあって、別のにないのかがいつも明確じゃないし、いくつかのワークベンチでは機能が重複してるんだ。それに、Waylandをサポートしてないせいで、hdpi画面だと全部ぼやけて見えるんだよ。Python APIは良いと思うけど、ドキュメントがちょっと足りないかな。とはいえ、異なるワークベンチがあるせいでPython APIを使うのも時々複雑になるんだ。例えば、build123dのやり方は好きだよ。" userName="tapia" createdAt="2025/06/11 07:44:54" color="#45d325">}}




{{<matomeQuote body="FreeCADのインターフェースは有料CADプログラムから学ぶべき点がたくさんあるね。このChili3Dのインターフェースはかなり近いよ。画面上部に分かりやすい定義の大きなアイコンがリボン形式で並んでるのが良い。" userName="mclau157" createdAt="2025/06/10 20:56:39" color="#ff5c5c">}}




{{<matomeQuote body="FreeCADコミュニティには、独自のCADと比較するようなユーザーの問題に対して、すぐに過剰な敵対心を示す傾向があるんだ。「FreeCADはFusionじゃないし、同じように振る舞うと思うな」って、俺がFreeCADの馬鹿げた挙動について話してた時に言われたことがあるよ。<br>俺はFusionは一度も使ったことないけどね。" userName="regularfry" createdAt="2025/06/11 08:54:06" color="#785bff">}}




{{<matomeQuote body="ブラウザCAD「Chili3d」に対するネガティブなレビューだね。<br>UIが分かりにくいし、ツールの配置はバラバラ。<br>見た目同じなのに違う機能もある。<br>3D表示は変だし、設定もごちゃごちゃしてて何をするのかイマイチ分からないんだ。" userName="Double_a_92" createdAt="2025/06/13 11:34:04" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「Chili3d」マジでヤバい！<br>ずっと「OnShape」みたいなのが欲しかったんだよね。<br>これなら数百ドルでも喜んで払うよ。「Onshape」のライセンス料高すぎるんだよな。1000ドル以上とかあり得ないでしょ。" userName="syntaxing" createdAt="2025/06/11 00:23:48" color="">}}




{{<matomeQuote body="「Onshape」社員だけどさ、ほとんどの一般ユーザーには無料版で十分だと思うよ。<br>まあ、無料だとドキュメントが公開されちゃうけどね。<br>「Onshape」みたいに複雑で大規模、高性能な技術を維持するには、めっちゃ金がかかるんだよ。" userName="piyush_soni" createdAt="2025/06/11 08:38:22" color="">}}




{{<matomeQuote body="ドキュメントが公開されるのも嫌だけど、それより前に「Onshape」は規約を変えてドキュメントのIPを自分たちのものにしたことがあるんだよね（2016年らしい）。<br>それは絶対無理！<br>それなら「SolidWorks Hobbyist」版に年100ドル払う方がマシ。あれ、「Onshape」と結構似てるし。" userName="syntaxing" createdAt="2025/06/11 12:11:56" color="#ff5c5c">}}




{{<matomeQuote body="「Onshape」の規約に、IP所有権が「Onshape」にあるなんて記述がどこにあるの？見当たらないんだけど。<br>無料ユーザーが作る公開ドキュメントは、ほぼパブリックドメインみたいなもんだよ。<br>君が所有はしてるけど、他の人が自由に使える（コピー、改変、配布など）非独占ライセンスを供与することになってるんだ。" userName="piyush_soni" createdAt="2025/06/12 08:33:25" color="#ff5c5c">}}




{{<matomeQuote body="学生か退役軍人なら「SolidWorks」が年25ドルで手に入るよ。<br>機能は全部使えるけど、商用利用はできないライセンスね。<br>超おすすめだよ。" userName="the__alchemist" createdAt="2025/06/11 13:25:00" color="">}}




{{<matomeQuote body="ホビーユーザーだけどお願い！<br>Linuxサポートで「Fusion」から「Onshape」に移ったのに、CAMがないから「Fusion」に戻りそう。<br>お願いだから、「Onshape」でホビーユーザー向けのCAM機能を安く提供するのを検討してほしいな。<br>月20〜50ドルなら喜んで払うよ。" userName="irrenhaus" createdAt="2025/06/11 09:45:20" color="#785bff">}}




{{<matomeQuote body="ごめんね、知ってる限りだと、経営陣の方針は明確なんだ。<br>しばらくの間、CAM機能はプロ版だけの機能として残ると思うよ。" userName="piyush_soni" createdAt="2025/06/11 11:29:14" color="">}}




{{<matomeQuote body="オープンソースとかネイティブアプリが好きなんだけど、「Onshape」はマジでよくできてると思う。<br>数ヶ月に1回、簡単な3Dプリント用の物を作るだけなんだけど、「Onshape」は慣れるのが簡単だったよ。<br>ただ、fill patternとかテキストの扱いはいつも苦労するかな。<br>無料版がいつか有料になるんじゃないかって、ちょっと心配してるんだ。" userName="Mashimo" createdAt="2025/06/11 09:43:35" color="">}}




{{<matomeQuote body="無料版が有料になるかについてだけど、短期的な計画は知らないな。<br>大学生には無料のプロ版ライセンスを提供してるしね。<br>サポートチケットについてだけど、分からないことや困ったことがあったら気軽に作ってみて！「Onshape」は他の多くの会社より驚くほど対応がいいよ。" userName="piyush_soni" createdAt="2025/06/11 11:25:08" color="">}}




{{<matomeQuote body="見た目も良い感じだし、この調子で頑張って！<br>製造会社とか3Dプリンター会社（EasyEDAがPCBでやったみたいに）と組んで、作ったものを素人でも簡単に製造できるようにしたら良いかもね。" userName="boznz" createdAt="2025/06/10 20:17:38" color="#ff5733">}}




{{<matomeQuote body="Slant3Dの人たちに連絡してみたら？<br>彼らの teleport 3Dプリンティングサービスって、CADと統合したら便利になるかもよ？" userName="nicr_22" createdAt="2025/06/10 21:42:46" color="#ff33a1">}}




{{<matomeQuote body="すごいね！パフォーマンスもUIも良さそう。<br>3Dツールって直感的で見た目も良いのが少ないから、これは promising だよ。<br>これからもこんなプロジェクトが出てくると良いな！" userName="Sheol27" createdAt="2025/06/10 21:36:17" color="#ff5c5c">}}




{{<matomeQuote body="PMIとか annotations、views みたいな機能ってない感じ？" userName="jlarocco" createdAt="2025/06/10 16:55:36" color="#38d3d3">}}




{{<matomeQuote body="うん、それらの機能はまだ使えないよ。" userName="xiange" createdAt="2025/06/11 12:45:20" color="">}}




{{<matomeQuote body="英語バージョンで「选择 确定 取消」ってダイアログが翻訳されてないよ。" userName="dvh" createdAt="2025/06/10 19:43:34" color="#45d325">}}




{{<matomeQuote body="ああ、ありがとう！翻訳直しておくね。" userName="xiange" createdAt="2025/06/11 01:41:17" color="">}}




{{<matomeQuote body="うわぁ！ killer UI だね！マジで気に入ったよ。" userName="djfobbz" createdAt="2025/06/10 19:20:56" color="#45d325">}}




{{<matomeQuote body="UIは Microsoft 製品を思い出すね、良い意味で！<br>普通の3D CADと比べて何が違うと思う？<br>なんでこんなツールを作ったの？" userName="jvojak" createdAt="2025/06/11 08:47:47" color="#38d3d3">}}




{{<matomeQuote body="3D始めたんだけど、ハードモデリングで何に集中すればいいか迷ってるよ。リアルなかっこいいスペースシップ作りたいんだ。CADとBlender、どっちがいいかな？" userName="pyinstallwoes" createdAt="2025/06/10 18:19:23" color="">}}




{{<matomeQuote body="BlenderにCADsketcherプラグイン使うのはどう？<br>https://www.cadsketcher.com/<br>それか、NASAのVehicle Sketch Padかな？<br>https://software.nasa.gov/software/LAR-17491-1" userName="WillAdams" createdAt="2025/06/10 20:13:36" color="#ff5733">}}




{{<matomeQuote body="スペースシップはどっちかっていうと芸術的なものだと思うから、Blenderがいいんじゃない。" userName="Double_a_92" createdAt="2025/06/13 11:38:36" color="">}}




{{<matomeQuote body="すごい、モバイルでもほぼ動くんだ、感動したよ！でもiOSだとブーリアンが動かないみたい。" userName="thenthenthen" createdAt="2025/06/11 15:24:41" color="#38d3d3">}}




{{<matomeQuote body="最近Webで”city to 3D printer”ってのを見たんだけど、Chili3dはそれより全然いいじゃん。" userName="ge96" createdAt="2025/06/10 21:39:09" color="#38d3d3">}}




{{<matomeQuote body="これ、ネイティブアプリか、wasmを使ってそれに近い形にした方がもっと向いてるんじゃないかな？" userName="sirjaz" createdAt="2025/06/10 17:39:10" color="">}}




{{<matomeQuote body="これってプログラムから操作できるAPIとかあるの？TinkerCadにブロックコーディングがあるのを思い出してさ。" userName="tmaly" createdAt="2025/06/10 21:08:50" color="">}}




{{<matomeQuote body="質問の直接の答えじゃないけど、ここでopencascadeがwebassemblyで動いてるなら、cadqueryとかbuild123dでも似たようなことができるかもね。" userName="yehoshuapw" createdAt="2025/06/10 21:26:48" color="#785bff">}}




{{<matomeQuote body="個人的にはreplicadがお気に入りだよ。<br>https://studio.replicad.xyz/workbench" userName="bschwindHN" createdAt="2025/06/11 12:08:37" color="#785bff">}}




{{<matomeQuote body="いい仕事だね。これ、stlファイルを開くことはできないみたいだね、合ってる？" userName="theanonymousone" createdAt="2025/06/11 06:11:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
