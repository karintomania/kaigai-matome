+++
date = '2025-06-11T00:00:00'
months = '2025/06'
draft = false
title = 'Three.jsユーザー注目！ 高度な3D Gaussian Splattingレンダラー Spark が登場！'
tags = ["Three.js", "3D", "Gaussian Splatting", "レンダリング", "Web開発"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Three.jsユーザー注目！ 高度な3D Gaussian Splattingレンダラー Spark が登場！

引用元：[https://news.ycombinator.com/item?id=44249565](https://news.ycombinator.com/item?id=44249565)




{{<matomeQuote body="A-Frameの共同制作者で、Web 3Dを長くやってるよ！新しい技術はワクワクするね！SparkはGaussian splatをTHREE.jsに簡単に組み込めるオープンソースライブラリで、友達と作ったんだ。みんなに使ってもらって、次にどんな機能が欲しいか聞きたいな。https://aframe.io/" userName="dmarcos" createdAt="2025/06/11 17:02:56" color="#38d3d3">}}




{{<matomeQuote body="デモすごいね！古いiPhoneでもちゃんと動いたよ。3D詳しくない素人なんだけど、「Gaussian Splatting」が何かGitHubとかに説明あると嬉しいな。Wikipediaの説明だけでも、どういうのに使えるか想像できてワクワクするよ！高性能な煙とか作れるの？いいね！" userName="erulabs" createdAt="2025/06/11 17:19:38" color="#785bff">}}




{{<matomeQuote body="ありがとう。うん、FAQは絶対に追加しないとね。" userName="dmarcos" createdAt="2025/06/11 17:30:21" color="">}}




{{<matomeQuote body="フードスキャンデモ（”Interactivity”の例）すごすぎ！特にMel’s Steak Sandwichのパンの穴の表現とか！内蔵グラフィックのノートPCでも、あのクオリティでパフォーマンス良いのは驚きだよ。この技術って今、主にどんなとこで使われてるの？" userName="jasonthorsness" createdAt="2025/06/11 17:48:24" color="#45d325">}}




{{<matomeQuote body="ハンドヘルドとかドローンで色々なものをスキャンしてる人たちのコミュニティがあるんだよ。Tipatatさんがフードスキャンをデモに使わせてくれたんだ。kotohibiさんの花のscanも良い感じだよ。https://superspl.at/user?id=kotohibi" userName="dmarcos" createdAt="2025/06/11 17:52:59" color="#38d3d3">}}




{{<matomeQuote body="へー、自分で作るにはどんなデバイスがいるの？" userName="jasonthorsness" createdAt="2025/06/11 18:04:17" color="">}}




{{<matomeQuote body="フードスキャンはPixel phoneで撮った写真で、postshot(https://www.jawset.com/)で処理してsplatにしてるんだよ。" userName="dmarcos" createdAt="2025/06/11 18:08:42" color="#45d325">}}




{{<matomeQuote body="興味があるんだけど、こうやって作ったsplatって、どれくらい寸法が正確なの？測ったりできるのかな？" userName="mft_" createdAt="2025/06/12 08:50:47" color="#785bff">}}




{{<matomeQuote body="全然正確じゃないよ。物理的な測定（Lidarとか、写ってる物の実際のサイズが分かってる場合）と組み合わせないとダメなんだ。写ってる車とか木とか、よくある物からサイズを推定するAIを使うと面白いかもね。" userName="jaccola" createdAt="2025/06/12 18:53:23" color="#38d3d3">}}




{{<matomeQuote body="最先端ってわけじゃないと思うけど、”scaniverse”っていうアプリは、スマホを物の周りで1分くらいかざすだけで、すごく良いsplatを作れるんだよ。" userName="ChadNauseam" createdAt="2025/06/11 18:09:18" color="#ff33a1">}}




{{<matomeQuote body="うん、Splatを生成できるスマホアプリはいくつかあるよ。Luma 3D captureとかね。" userName="dmarcos" createdAt="2025/06/11 18:16:24" color="">}}




{{<matomeQuote body="それに、あの詳細度なのに転送サイズがそんな悪くないんだよね、80MBくらいだし。（皮肉じゃなくて、ホントすごいわ。）" userName="creata" createdAt="2025/06/11 19:02:47" color="">}}




{{<matomeQuote body="そうだね。Clams and CaviarとかPad Thaiみたいな個別のスキャンだと、2MB以下のものもあるよ。" userName="dmarcos" createdAt="2025/06/11 19:09:30" color="">}}




{{<matomeQuote body="これもいいね。BabylonJSもGaussian Splatのサポートがしっかりしてるよ：<br>https://doc.babylonjs.com/features/featuresDeepDive/mesh/gau..." userName="ertucetin" createdAt="2025/06/11 20:22:26" color="#785bff">}}




{{<matomeQuote body="BabylonJSとOPのAframe（[1]）はライセンスとかGitHubスター数は似てるけど、Aframeは新しい感じでもっとゲームとかVR寄りみたいだね。<br>Babylon、Aframe、Three.js、PlayCanvas（[2]）を使ったことある人、どう違うか教えて？<br>俺の理解だと、PlayCanvasが一番成熟してて高機能・高性能だけど商用？Babylonが高機能な3Dエンジンで、Three.jsは結構素の状態って感じかな。アニメーションとかテクスチャとか良いものはあるけど、基本的には自分でキットを組み立てる感じ。<br>どれかで良い経験（または悪い経験）ある？<br>OP、デモは超安定してていいね！Aframeのアピールポイントは？<br>“gaussian splat”の未来はどうなると思う？可視化とか“デジタルツイン”（産業用途）以外にも使える？近い将来、編集したりアニメーションつけたりできるようになる？言い換えれば、いつ（または）クリエイティブとかゲーム分野で使えるようになる？<br>[1] https://github.com/aframevr/aframe<br>[2] https://playcanvas.com/" userName="echelon" createdAt="2025/06/11 20:49:12" color="#ff33a1">}}




{{<matomeQuote body="A-FrameはTHREE.jsの上に構築されたエンティティコンポーネントシステムで、DOMをシーングラフの宣言的なレイヤーとして使うんだ。Web開発者が慣れてる標準的なAPIやツールで操作できるよ。最初はWeb開発者を3Dに引き込むのが目標だったけど、それ以上の成功を収めたんだ。参入障壁が超低い（下のhello world参照）のに機能性を犠牲にしてないから、プログラミングや3Dを学ぶ人たち（たくさんの学校や大学のカリキュラムの一部になってる）にすごく人気になったし、先進的なシナリオでも使われてるよ（moonrider.xyzは月間10万MAUくらい（ピーク時は30万MAU）で、これまでに最も人気のあるWebXRコンテンツはA-Frameで作られてる）。<br>Sparkの目標の一つは、3D Gaussian Splattingの応用を探ることなんだ。まだ全部の答えは持ってないけど、すでに説得力のあるユースケースがどんどん出てきてるね。例えばフォトグラメトリやスキャンで、スプラットは細かいディテールを魅力的かつ比較的小さく表現できる（デモのインタラクティビティを見て：https://sparkjs.dev/examples/interactivity/index.html）。ビデオキャプチャのすごい例もあるし（https://www.4dv.ai/）。圧縮、ストリーミング、リライティング、生成モデル、LODとか、もっと良くなって新しい応用が出てくるのが楽しみだよ…<br>A-Frame hello world<br>```html<br> ＜html＞<br> ＜head＞<br> ＜script src=”https://aframe.io/releases/1.7.1/aframe.min.js”＞＜/script＞<br> ＜/head＞<br> ＜body＞<br> ＜a-scene＞<br> ＜a-box position=”-1 0.5 -3” rotation=”0 45 0” color=”#4CC3D9”＞＜/a-box＞<br> ＜/a-scene＞<br> ＜/body＞<br>＜/html＞```" userName="dmarcos" createdAt="2025/06/11 21:20:15" color="#ff33a1">}}




{{<matomeQuote body="PlayCanvasが商用って言うのは、ちょっと誤解を招くかな。PlayCanvas Engine（Three.jsやBabylon.jsみたいなもの）は無料のオープンソース（MIT）だよ。クールな3DGS技術とかはEngineにあるんだ。Engineをラップして宣言的なインターフェースを使いたい人向けのフレームワークが2つあって、PlayCanvas Web ComponentsとPlayCanvas React。これもどっちも無料のオープンソース（MIT）だよ。PlayCanvas Editor（ブラウザベースのUnityみたいなやつ）だけが、プライベートプロジェクトを作りたい人向けの有料プランがあるんだ。<br>PlayCanvas Engine: https://github.com/playcanvas/engine<br>PlayCanvas Web Components: https://github.com/playcanvas/web-components<br>PlayCanvas React: https://github.com/playcanvas/react" userName="ovenchips" createdAt="2025/06/12 02:51:22" color="#ff5c5c">}}




{{<matomeQuote body="BabylonJSでテストしたけど、互換性のある機能はブラウザに依存する部分があるね。<br>良い点：1. Blenderプラグインでベイク済みメッシュアニメーションをストリームアセットとしてエクスポートできるのはクール。2. プロシージャルテクスチャとディスプレイスメントマップで、それっぽいゲーム内オーシャン/水が作れる（調整は必要）。3. 遠景オブジェクトに2Dスプライトを簡単に入れ替えられる（Paper Marioみたいに）。<br>悪い点：1. GPU VRAMを他のエンジンより速く消費する（ダイナミックペイントとかエイリアス複製するとすぐ肥大化）。2. JSはCPUサイクル食うけど、Physics/CollisionにはWASMサポートがあって悪くない。3. 全リソースがエンドユーザーに公開されちゃう（単純なチーター/クローナーを想定）。<br>醜い点：1. 90%のデバイスでモバイルGPUサポートがパッチワーク状態。2. ベイク済みライティングは期待値次第（GPU煙VFXに色付けてボリューム散乱を誤魔化した）。3. ブラウザゲームは、ブラウザメモリの無駄遣いとセキュリティサンドボックスの問題（ブラウザゲームでオーディオ同期はずっとダメ）を合わせた最悪な状態。<br>個人的な感想だけど、サーバーホスト型のトランザクションゲーム（カードゲームとかボードゲームとかは合うかも）にしか勧めないかな。そうでなく、パフォーマンスが良くて見た目も悪くないものが欲しいなら、Unreal Engineを使って、効率的なシェーダーテクニックを極めた人を雇うのが一番だよ。=3" userName="Joel_Mckay" createdAt="2025/06/11 21:30:34" color="#38d3d3">}}




{{<matomeQuote body="個人的にはBabylonJSを5年使ってるけど、マジ大好きだよ。プログラミングしやすいし（今までで一番キレイなAPI！）、3Dランタイムも超軽いから、Androidスマホでもデモがちゃんと動くんだ。" userName="tmilard" createdAt="2025/06/12 07:43:13" color="#785bff">}}




{{<matomeQuote body="Webブラウザは余計なオーバーヘッドが多くて、四半期ごとのポリシー変更に振り回されるんだよね。ほとんどのiOSデバイスはApple独自のJavaScript VMを使わされるし、BabylonとかもAppleやGoogleに機能制限（NERF’d）されたりするんだ。Appleはビジネス上の都合、Googleはデバイスのばらつきが原因だね。Babylonは良いとこも多いけど、エンドユーザーへのデプロイの制限は認めざるを得ないよ。Mozilla、Apple、Microsoftのアップデートごとにパッチ当てなきゃいけないなんてザラだし。プラットフォーム固有のコーデック、メディア同期、インターフェース周りのややこしさに影響されないものをデプロイするのは大変なんだ。これってUnityとかGoDot、Unrealだと全然問題にならないのにね。App Storeはいつも取り分を欲しがって、都合の良い言い訳を見つけてはポリシーを変えようとするし。モバイルでやるなら、これは入場料みたいなもんだね…YMMV =3" userName="Joel_Mckay" createdAt="2025/06/12 13:46:47" color="#ff33a1">}}




{{<matomeQuote body="僕の趣味のWebアプリプロジェクトの一部にwavetableを使いたいんだけど、他の遅延に敏感なコンポーネントが影響受けないように、ブラウザに負担をかけたくないんだ。wavetableの例はこれらだよ。<br>https://audiolabs-erlangen.de/media/pages/resources/MIR/2024...<br>https://images.squarespace-cdn.com/content/v1/5ee5aa63c3a410...<br>Three.jsでサクッと試作したんだけど、僕は3DもWeb開発も素人だから、何かおすすめのJS／TSパッケージとか、アドバイスがあったら嬉しいな。" userName="m_kos" createdAt="2025/06/12 17:20:50" color="">}}




{{<matomeQuote body="個人的には、DSPのコードをVMの中でやるのはおすすめしないな。固定レート（16bit 44.1kHz stereoとか）で、ロスレス非圧縮のコーデックを使うといいよ（GPU／ハードウェアコーデックやサウンドカード固有の癖を避けられる）。それと、オーディオをGPUの24fps＋のアニメーションと同期させようとしないこと（https://en.wikipedia.org/wiki/Globally_asynchronous_locally_... ）。10Hzくらいでノンブロッキングのfifoストリームコピーをポーリングして、表示を「ごまかす」方が良いかも。wasmでバッファを静的に確保して、ソフトウェアミキサーで単一の出力ストリームに混ぜてローカル再生するのがいいよ（https://en.wikipedia.org/wiki/Clock_domain_crossing ）。GCが邪魔しないようにね。GCは困りものだけど、wasmなら現代のCPUでI／O転送を十分に速くできるはず。頑張ってね =3" userName="Joel_Mckay" createdAt="2025/06/12 18:32:48" color="#785bff">}}




{{<matomeQuote body="リポジトリリンク、こっちの方がもっと分かりやすいかも → https://github.com/sparkjsdev/spark" userName="pvg" createdAt="2025/06/11 17:04:17" color="">}}




{{<matomeQuote body="すごくすごくクールだね。今のパフォーマンスボトルネックについて何か分かってる？特に動的なシーンについて。粒子シミュレーションのデモは苦戦してるみたいだけど、カメラを回転させると劇的に改善するから、静的な背景の方が意外と重いのかな。ボトルネックとは対照的に、プロシージャルなSierpinski pyramidは素晴らしい出来だね。" userName="fidotron" createdAt="2025/06/12 00:06:46" color="#ff5733">}}




{{<matomeQuote body="シーン内のスプラットの数と分布がパフォーマンスに影響するんだ。君の場合、おそらくスプラットが少ない方向にカメラを向けたんだと思うよ。一貫したパフォーマンスを実現するためには、まだやることがたくさんあるね。次はLODシステムを検討する予定だよ。" userName="dmarcos" createdAt="2025/06/12 01:48:10" color="#785bff">}}




{{<matomeQuote body="個人的には、Gaussian Splattingがデモ以上のものになるか、かなり懐疑的だよ。ファイルが大きすぎるんだ。ステーキサンドイッチなんて12MBもあるし（あくまで一例だけど）。去年のSiggraphでも、Gaussian Splattingを使ったMatterportのポートみたいなのがあったんだけど、2LDKの部屋を見るのに1.5GBストリーミングが必要だったんだよ。クールなデモではあるけどね。" userName="socalgal2" createdAt="2025/06/11 21:47:57" color="#ff5733">}}




{{<matomeQuote body="ありがとう！12MBのステーキサンドイッチは、たくさんある例の中でも一番大きいやつなんだ。残りは10MB以下だし、その中でも1〜3MBでかなり魅力的なものがいくつかあるよ（例えば、Iberico Sandwich 1MB、Clams and Caviar 1.8MBとか）。SOGSみたいな、もっと洗練された圧縮方法も出てきてるんだ。これは30MBもあるよ！→ https://vincentwoo.com/3d/sutro_tower/" userName="dmarcos" createdAt="2025/06/11 21:56:43" color="#785bff">}}




{{<matomeQuote body="このファイルサイズのでかさって、ハードな物体を表現するのにSplatsがいっぱいいるから？Gaussianってエッジがないから、Splatsって概念的に問題あるんじゃない？みんな3σとかでカットしてるけど、実際の物にはハードエッジがあるじゃん。1σでカットしてハードエッジの楕円みたいにしたらどうかな？ぼやけたSplatsたくさんより、ハードエッジの楕円少ない方がうまくいくんじゃない？" userName="oofbey" createdAt="2025/06/11 22:40:09" color="#38d3d3">}}




{{<matomeQuote body="面白いアイデアだね！SparkのmaxStdDevパラメータで試せるよ。ハードで平らな人工物には3DGSは確かに合わないと思う。でも、毛皮とか葉っぱとか、有機的なリアルなものには向いてるよ。Polygonよりずっとフォトリアルに、ファイルサイズも小さくできる。モバイルでリアルタイムで動くのにみんな驚いたんだ。<br>Sparkなら両方使えるのがいい！Scanした3DGSの世界にハードエッジのPolygon Modelも混ぜられるよ。" userName="pixelsynth" createdAt="2025/06/12 06:22:26" color="#ff5733">}}




{{<matomeQuote body="なるほど、説明ありがとう！それぞれの得意なところがよく分かったよ。生のScanデータから3DGSを作るのって結構複雑そうだね。Algorithmはシンプルで標準なの？それとも、結構調整が必要？ハードエッジな楕円に対応させるのも大変そうだし、楕円とふわふわSplatsを混ぜて出力するのはもっと大変そう。でも、それができたら表現力めっちゃ上がりそうだね。" userName="oofbey" createdAt="2025/06/12 21:09:26" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="今は無料で簡単に作れるツールがいっぱいあるよ！PostshotとかBrushを見てみて。スマホで動画撮ってPostshotに入れるだけで、数分後にはSparkで使えるフォトリアルな3DGS Modelができちゃう！3DGSは研究中だけど、基本はもう標準化されてきてるよ。" userName="pixelsynth" createdAt="2025/06/12 22:57:42" color="#ff5c5c">}}




{{<matomeQuote body="最近、Triangle Splattingっていう面白い研究発表とCodeが出たよ。これ興味あるかもね！見てみて！→ https://trianglesplatting.github.io/" userName="semi-extrinsic" createdAt="2025/06/12 14:37:30" color="#ff5733">}}




{{<matomeQuote body="そのLinkありがとう！めっちゃ面白かったよ。" userName="athriren" createdAt="2025/06/11 22:17:42" color="">}}




{{<matomeQuote body="SOGSっていう圧縮技術はうまくいくよ。100万個のGaussianとSpherical Harmonicsで約14MBにできるんだ。PlayCanvasのBlogにいい記事があるよ！→ https://blog.playcanvas.com/playcanvas-adopts-sogs-for-20x-3..." userName="ovenchips" createdAt="2025/06/12 22:59:22" color="#ff5c5c">}}




{{<matomeQuote body="ファイルサイズが大きいのは、だいたいSpherical Harmonicsの値を保存するためだよ。これは解決できる問題だよ。" userName="hellohello2" createdAt="2025/06/12 15:25:30" color="">}}




{{<matomeQuote body="いい仕事だね！でも、俺のノートPCのFirefoxでNvidia RTX A3000 GPUだとパフォーマンス結構悪いな。Shaderコアいっぱいで熱くなるくらいなのに。" userName="moshegramovsky" createdAt="2025/06/12 16:19:43" color="">}}




{{<matomeQuote body="特にどのDemoか、例でかな？" userName="dmarcos" createdAt="2025/06/12 21:06:23" color="">}}




{{<matomeQuote body="スマホで草とか茂みとか土とかのGaussian Splatsをキャプチャして、1メートル四方の地面のパッチや、茂みがある場所の1メートル立方体を抜き出せる？<br>それで、草のブロックを繰り返し置いて、たまに土や茂みを配置した”Minecraftっぽい”世界を作れるかな？<br>何千ものブロックをレンダリングするには、かなり強力なハードウェアが必要になりそうだね。" userName="VikingCoder" createdAt="2025/06/12 17:22:30" color="#ff5c5c">}}




{{<matomeQuote body="そういうプロトタイプは間違いなく作れるよ。見てみたいな、すごくクールになりそう。" userName="dmarcos" createdAt="2025/06/12 21:05:59" color="">}}




{{<matomeQuote body="これめっちゃクールじゃん！ウェブブラウザからウェブページを開いたらVRで動くの？もしそうなら、さらにヤバいね！" userName="two_handfuls" createdAt="2025/06/11 18:58:57" color="#785bff">}}




{{<matomeQuote body="うん、VRで動くよ！近いうちにデモを公開する予定だよ。" userName="dmarcos" createdAt="2025/06/11 19:00:01" color="">}}




{{<matomeQuote body="Sparkの開発中に作ったWebXRデモがあるんだ。Quest 3かVision Proで3DGSが動くのを見られるよ。<br>https://lofiworlds.ai<br>ハンドトラッキングを有効にすると、Gaussian splatsを“触る”ことができるから、ぜひ試してみてね（手首をタップするとスポットライトハンドモードを切り替えられるよ）。" userName="pixelsynth" createdAt="2025/06/12 21:02:02" color="#38d3d3">}}




{{<matomeQuote body="ちょっと名前がかぶりすぎてるね。Apache Spark、SPARK (Ada)、sparklines、SPARQLが既にあるし。" userName="Epa095" createdAt="2025/06/12 09:26:45" color="">}}




{{<matomeQuote body="SPARCも忘れないでね。https://en.wikipedia.org/wiki/SPARC" userName="thesuperbigfrog" createdAt="2025/06/12 12:28:00" color="">}}




{{<matomeQuote body="PartCADはCADモデルをThree.jsにエクスポートできるよ。<br>build123dやcadqueryモデル向けのOCP CAD viewer拡張機能も、例えばThree.jsで作られてるんだ。<br>https://github.com/bernhard-42/vscode-ocp-cad-viewer" userName="westurner" createdAt="2025/06/11 17:45:34" color="">}}




{{<matomeQuote body="PartCADには3Dパーツのライブラリがあって、別のレンダラーをテストするのに役立つかもね。<br>OCP CAD viewerは、Three.jsで作られてるから、オプションでこのGaussian splattingレンダラーを使うこともできるかも。" userName="westurner" createdAt="2025/06/13 15:40:29" color="">}}




{{<matomeQuote body="すごいね！A-FrameとかGoogleの＜model-viewer＞みたいなWeb Components APIになる予定ある？<br>https://modelviewer.dev/" userName="mbo" createdAt="2025/06/12 09:52:39" color="#ff33a1">}}




{{<matomeQuote body="A-Frame対応はすぐだよ！" userName="dmarcos" createdAt="2025/06/12 21:07:04" color="">}}




{{<matomeQuote body="これ見たかったな〜！iPhone 16で表示ブロックされちゃったんだ。<br>証明書エラーか、ブロックされたカテゴリって出てるよ。悲しい…。" userName="bryzaguy" createdAt="2025/06/12 10:49:27" color="">}}




{{<matomeQuote body="あれ？変だな。俺のiPhoneでは問題ないよ。<br>Safari以外のブラウザ使ってる？何か特別な設定してる？" userName="dmarcos" createdAt="2025/06/12 17:00:04" color="">}}




{{<matomeQuote body="フロントページのインタラクティブデモ、Pixel 7でめちゃくちゃスムーズに動いてヤバかった！" userName="moron4hire" createdAt="2025/06/11 17:16:12" color="">}}




{{<matomeQuote body="レンダリングってどうやってるの？インスタンスをソート（基数ソート？）してる？ソートは複数フレームで分割？それともビンソート？パフォーマンスには満足？" userName="danybittel" createdAt="2025/06/12 03:37:58" color="#38d3d3">}}




{{<matomeQuote body="そうだよ、Sparkはインスタンス化されたクアッドを各ガウススプラットに合わせてレンダリングしてる。<br>ソートはね、1) GPUで全スプラットの距離計算、2) float16sとしてCPUに読み戻し、3) 1パスバケットソートで背面から前面への順序を得るって感じ。<br>新しいデバイスならほぼ毎フレーム、1フレーム遅延くらいでWeb Workerで並列実行できるから、ソート自体の性能影響は最小限。<br>だからSparkは、各スプラットが毎フレーム個別に動くフルダイナミック3DGSもいけるんだ！<br>古いAndroidだと数フレーム遅延することもあるけど、それも並列だから全体のレンダリングには影響ないよ。<br>メモリ帯域幅とか共有メモリが増えれば、ソートはほとんど解決済みの問題になると思うな。" userName="pixelsynth" createdAt="2025/06/12 03:55:28" color="#ff5c5c">}}




{{<matomeQuote body="1パスバケットソートって言うけど、バケットもソートしてるんだよね？<br>俺はGPUでスプラットの基数ソートを毎フレーム実装したんだけど、まだ性能に納得できてないんだ。基数ソート（＋プレフィックススキャン）って複雑で専用のコンピュートシェーダーがいっぱい必要でさ…調整に戻らないと。<br>float16sへの切り替えも考えてるけど、100万以上のスプラットだと半精度で精度が足りなくなるかもって躊躇してるんだ。" userName="danybittel" createdAt="2025/06/12 06:05:01" color="#785bff">}}




{{<matomeQuote body="float16sは意図的にソート精度を速度のために犠牲にしてるんだ。<br>Z方向の範囲が大きいシーンだとZファイティングが多くなるだろうから、最高精度を目指すならおすすめしないかな！<br>でも将来的には高精度用に2パスソート（基数が大きい／バケット数が多い基数ソートみたいな）を追加する可能性は高いよ（ユーザーが選べるように）。<br>でもCPUでソートを実装するのはGPUよりずっとシンプルだよ。<br>GPUからCPUへの読み戻しと最低1フレームの遅延（ほとんど知覚できないけど）を許容するなら可能性が広がるね。" userName="pixelsynth" createdAt="2025/06/12 06:13:46" color="#ff5c5c">}}




{{<matomeQuote body="halfs（float16s）の代わりにwords（16bit整数）を使うの検討してみたら？<br>そうすれば、選んだ範囲で65kの全精度を使えるよ（32bit floatをwordsに再マッピングすることで）。<br>毎フレーム、または遅延させて調整することも可能かも。" userName="danybittel" createdAt="2025/06/12 06:42:28" color="#ff5c5c">}}




{{<matomeQuote body="うん、そうだね、float16だと解像度は0x7C00バケットだけになっちゃうんだよね。対数エンコーディングにして2^16バケットに広げれば、範囲を2倍にできるよ！<br>他のレンダラーがやってるみたいに、フレームごとに範囲を動的に調整することもできるね。" userName="pixelsynth" createdAt="2025/06/12 21:27:42" color="#38d3d3">}}




{{<matomeQuote body="いいね！半透明な表面の例はある？例えばガラスの球体に入ったおもちゃのクリスマスツリーみたいな、簡単な反射や屈折が計算されたやつとか？" userName="akomtu" createdAt="2025/06/11 19:03:00" color="">}}




{{<matomeQuote body="今すぐには思いつかないな。https://superspl.at/ でみんながスキャンしたやつを見てみてよ！そこに載ってるものはSparkでも全部レンダリングできるはずだから。" userName="dmarcos" createdAt="2025/06/11 19:05:28" color="">}}




{{<matomeQuote body="https://superspl.at/view?id=8c35f06d はすごく綺麗にレンダリングされたよ。このSpark、びっくりするくらい速いね！650MBのシーンが120 fpsでレンダリングできたんだ。" userName="akomtu" createdAt="2025/06/11 19:46:56" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんだか方向性が二極化してるみたいだね。極端な写実主義と、極端にミニマルなピクセルアート。僕は後者のほうが好きなんだけど、君のプロジェクトは写実主義の分野ですごく重要そうだね。" userName="90s_dev" createdAt="2025/06/11 23:32:13" color="">}}




{{<matomeQuote body="ありがとう！Sparkは両方に対応できるんだよ！あんまり探求されてない分野なんだけど、Blenderなんかで作った“伝統的な”アセットをsplatsに変換するっていう使い方もあるんだ。高周波ディテールみたいな一部のシナリオでは、視覚的に良い結果が出るよ。ホームページのカルーセルにある毛皮っぽいロゴを見てみて。" userName="dmarcos" createdAt="2025/06/11 23:47:30" color="#785bff">}}




{{<matomeQuote body="これはすごいね、ありがとう！R3Fで頂点シェーダーやフラグメントシェーダーをいじるのに何時間も費やして、結局諦めたんだ。数学がただただ面倒なんだよね。" userName="_tqr3" createdAt="2025/06/11 19:34:27" color="">}}




{{<matomeQuote body="R3F向けのテンプレートがあるから、役に立つかもね：https://github.com/sparkjsdev/spark-react-r3f" userName="dmarcos" createdAt="2025/06/11 19:39:32" color="#45d325">}}




{{<matomeQuote body="これと.objのレンダリングって何が違うの？Gaussian Splattingは別のフォーマットを作るの？" userName="imachine1980_" createdAt="2025/06/12 12:48:25" color="">}}




{{<matomeQuote body="objは伝統的なジオメトリ（頂点、三角形）だよ。Gaussian Splatsは3D情報を表現する別の方法なんだ（単純化すると、ビュー依存の色を持つ楕円体の点群だよ）。" userName="dmarcos" createdAt="2025/06/12 21:10:12" color="">}}




{{<matomeQuote body="デモすごいね！これ絶対ピュアなJavaScriptだけじゃないでしょ。WebGPU使ってる？" userName="markisus" createdAt="2025/06/11 18:13:33" color="#ff5733">}}




{{<matomeQuote body="WebGL APIはOpenGL ESがベースで、CPUで3Dロジック書くのが楽だった呼び出しはなくなったんだ。その分GPUで計算するように強制されるから、JavaScriptで動いててもあんまり関係ないんだよね。THREE.jsはその上に良い抽象化レイヤーを追加してる感じ。" userName="shadowgovt" createdAt="2025/06/11 19:41:52" color="#38d3d3">}}




{{<matomeQuote body="SparkはJavaScriptで実行時に計算グラフを作って、CPUじゃなくてGPUでコンパイルして動かせるんだって！<br>https://sparkjs.dev/docs/dyno-overview/<br>WebGL2は最高のグラフィックAPIじゃないけど、JavaScriptでGPUの計算やレンダリングを使えるようにして、Webブラウザ経由でどんなデバイスでも動くようにできるのは、個人的にはかなりすごいと思うよ！" userName="pixelsynth" createdAt="2025/06/12 04:28:28" color="#ff5c5c">}}




{{<matomeQuote body="WebGL2だけだよ。" userName="dmarcos" createdAt="2025/06/11 18:14:52" color="">}}




{{<matomeQuote body="triangle splatsのサポートを拡張する予定はある？" userName="praveen9920" createdAt="2025/06/11 17:40:23" color="#ff33a1">}}




{{<matomeQuote body="確実に検討してるよ。まだ具体的な予定はないけどね。" userName="dmarcos" createdAt="2025/06/11 17:41:10" color="">}}




{{<matomeQuote body="めっちゃクール！ローンチおめでとう:))" userName="feiss" createdAt="2025/06/11 19:57:08" color="">}}




{{<matomeQuote body="動画スタイルの3D gaussian splatsにも対応する可能性ある？" userName="cchance" createdAt="2025/06/12 01:18:45" color="#38d3d3">}}




{{<matomeQuote body="うん、もうデモは動いてるよ。あの3D gaussian動画（4Dって呼ぶ人もいるけど）はすごく大きいから、どう配布して良い体験を提供できるか考えてるところなんだ。" userName="dmarcos" createdAt="2025/06/12 01:42:56" color="#38d3d3">}}




{{<matomeQuote body="聞いて嬉しい！で、これってどうやって記録してるの？まさか複数のカメラでたくさん動画撮ってシンクするの？って思ったんだけど。" userName="cchance" createdAt="2025/06/12 02:32:26" color="">}}




{{<matomeQuote body="今の4DGSはまさにその通りだよ！複数のカメラで同時に撮って、各瞬間を3DGSにするんだ。将来はカメラ1台でAI＼MLが3D Gaussianの動きを推定するようになるかもね！" userName="pixelsynth" createdAt="2025/06/12 04:07:17" color="#38d3d3">}}




{{<matomeQuote body="やあ、@dmarcos！ローンチおめでとう！GitHub accelerator仲間のvinnieより。" userName="vmesel" createdAt="2025/06/11 19:36:26" color="">}}




{{<matomeQuote body="ちょっと待って、これってWorld Labsが先週出したForge (https://forge.dev)の名前を変えたの？「友達と作ったやつ」なの？それともWorld LabsのCEOが言ってたみたいに「World Labsチームの成果をOSSで出すよ」なの？<br>https://x.com/drfeifei/status/1929617676810572234" userName="nobbis" createdAt="2025/06/11 19:19:56" color="#ff5c5c">}}




{{<matomeQuote body="そうだよ。World Labsの開発者の一人と協力して作ったんだ。新しいレンダリング技術を探求して、3D Gaussian Splattingをもっと広めるのが目的なの。製品とは関係ないよ。" userName="dmarcos" createdAt="2025/06/11 19:21:31" color="#45d325">}}




{{<matomeQuote body="他のレンダラー＼ツールと名前がかぶっちゃったから、名前を変えたんだよ。" userName="dmarcos" createdAt="2025/06/11 19:28:57" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
