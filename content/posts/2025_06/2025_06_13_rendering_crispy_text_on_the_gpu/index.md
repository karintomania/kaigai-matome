+++
date = '2025-06-13T00:00:00'
months = '2025/06'
draft = false
title = 'GPUで文字がくっきり！鮮明レンダリング技術'
tags = ["GPU", "レンダリング", "テキスト", "グラフィックス", "プログラミング"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> GPUで文字がくっきり！鮮明レンダリング技術

引用元：[https://news.ycombinator.com/item?id=44265233](https://news.ycombinator.com/item?id=44265233)




{{<matomeQuote body="著者だよ！まさか記事がここに載るとは思わなかった。読んでくれて、面白い議論に参加してくれて、本当にありがとう！" userName="osor_io" createdAt="2025/06/13 08:20:29" color="">}}




{{<matomeQuote body="すごくいい記事だね！最初の動画の、斜体の“j”の点、どうなったの？" userName="muglug" createdAt="2025/06/13 13:57:45" color="">}}




{{<matomeQuote body="ありがとう！よく気づいたね。あれはね、あの点の輪郭の点が、フォントの他の曲線と逆方向に定義されてるからなんだ。だからレンダラーが外側の輪郭じゃなくて内側の輪郭として解釈しちゃう。<br>TrueType（外側が時計回り）かPostscript（外側が反時計回り）で向きが決まってるんだけど、Postscriptスタイルを見つけたら反転させて、レンダラーが同じように処理できるようにしてるんだ。でもなぜか、あの点はFreeTypeで反転を避けてるか、元のフォントファイル自体がおかしいか。<br>多くのレンダラーは輪郭の向きを気にしないけど、それもそれで問題（変な場所が塗りつぶされたり）があるから、どっちもどっちって感じかな。Sebastian Lagueのテキストレンダリングのすごい動画でも、これに対処してたと思うよ。<br>元のフォントファイル（Libre Baskervilleはオープンソースだから）を見て、何がおかしいのか確認してみようかな。もしそのレベルの不整合なら、直せるかもね。ナイスな発見！" userName="osor_io" createdAt="2025/06/14 11:25:18" color="#ff5c5c">}}




{{<matomeQuote body="サブピクセルフォントレンダリングは可読性には必須だけど、著者が指摘するように、既存のディスプレイ規格がピクセルレイアウトの仕様を提供してくれないのは悲劇だね。" userName="vecplane" createdAt="2025/06/13 03:35:56" color="#ff5c5c">}}




{{<matomeQuote body="標準解像度ディスプレイだけだね。それも“必須”じゃなくて、あるといいねくらい。世界はRetinaみたいなディスプレイにどんどん移行してるし、そこでサブピクセルレンダリングが必要な理由はほとんどない。<br>それに、スクショが特定のサブピクセルレイアウトに縛られたり、Bitmapを拡大できなかったり、たくさんの問題があるしね。CRTとRetinaの間のLCD時代の、一時的なイノベーションだったんだよ。今となっては時代遅れ。AppleがmacOSから何年も前に削除したのにはちゃんとした理由があるんだよ。" userName="crazygringo" createdAt="2025/06/13 05:19:15" color="#ff5733">}}




{{<matomeQuote body="標準解像度で標準的なサブピクセルレイアウトのディスプレイでも、サブピクセルレンダリングで色ずれが見えるんだよね（カラーフリンジング）。HiDPIディスプレイはスマホ以外どこにも持ってないけど、それでもサブピクセルテキストレンダリングはいらない。みんなあれを万能薬みたいに言うけど、正直、あれに行き着いた経緯って結構特殊でちょっと変なんだよ。" userName="NoGravitas" createdAt="2025/06/13 12:53:34" color="">}}




{{<matomeQuote body="サブピクセルレンダリングで色ずれが見えるって？ディスプレイのRGBサブチャンネルごとにガンマ調整してみた？サブピクセルアンチエイリアシングは、他の種類のアンチエイリアスよりもさらに正確な色空間情報に頼ってるんだよ。" userName="zozbot234" createdAt="2025/06/13 13:00:18" color="#ff5733">}}




{{<matomeQuote body="世界がRetinaに移行してるって？俺の世界じゃ違うな。クリスピーな仕事用MacBookに繋いでるディスプレイもまだ1080pだし（macOSだとすごく変に見えるけど）。技術系の知り合いでも、ほとんどが1080pノートだよ。世界はみんなが思ってるほどRetinaじゃない。<br>なんか理由があって、テレビじゃないと1080pから4kに結構な値段が跳ね上がるんだよね。パネルがもっと高いのはわかるけど、メーカーが本当に倍も払ってるかは疑問だな。" userName="jeroenhd" createdAt="2025/06/13 16:08:17" color="">}}




{{<matomeQuote body="俺のデスクトップモニターは47インチのディスプレイ… 4kで動かしてるよ。基本的にテレビをコンピューターモニターにしたもの。デスクの全幅を占めてる。<br>プログラミングにはとてつもなく素晴らしいディスプレイだよ。コードを3列フル幅で並べられる。あるいは2列とターミナルウィンドウ。<br>でもピクセルはまだ“普通”のサイズ。テキストはサブピクセルレンダリングがあると目に見えてシャープに見えるんだ。サブピクセルレンダリングが複雑で正しく実装するのが難しいのはわかるけど、いい技術だよ。このサイズで同じくらいきれいなテキストレンダリングをするには、8kディスプレイが必要になる。それだと値段がずっと高いだけじゃなく、8k画像をレンダリングしたら、どんなコンピューターもほぼ悲鳴をあげるだろうね。<br>サブピクセルフォントレンダリングを終わらせるのは早すぎるよ。いいものだし、まだ必要だ。" userName="josephg" createdAt="2025/06/13 21:43:40" color="#45d325">}}




{{<matomeQuote body="このメッセージを読んでる4k（3840x2160 UHD）モニターは、10（10）年前に250usdで買ったやつだよ。<br>同じ年に800usdで買った、ほぼあり得ない（50インチ？正確には覚えてない）4k TVを失ったことを今でも嘆いてる。当時あった他のどの4kモデルも3.3k usd以上だったのに。<br>その黒点は「黒フレームをレンダリングすると、セットが100%電源オフに見える」で、白点は「おめでとう、これが野球場の投光器を凝視する様子だ」って感じだった。当然10%の明るさで使ってたけど、適当なコンテンツを再生するだけで、夜のリビングとダイニングを合わせた部屋の他の照明は全く不要だったくらいだ。<br>この世には純粋すぎたんだ… 子供の一人がリビングで何か投げて壊しちゃったんだよ。:(" userName="HappMacDonald" createdAt="2025/06/13 19:39:51" color="">}}




{{<matomeQuote body="MacOSって、非Retinaディスプレイだと見た目が悪いんだよね。テキストにサブピクセルAA使わないのが原因かな。" userName="MindSpunk" createdAt="2025/06/14 01:06:12" color="">}}




{{<matomeQuote body="知ってる限りだと、MacOSが標準解像度で見づらいのはグリッドフィッティングしないのが主な理由じゃないかな。俺はLinux使ってて、サブピクセルAAは使ってないけど（通常のAAだけ）、グリッドフィッティングをしっかりやってるから文字がシャープだよ。" userName="zajio1am" createdAt="2025/06/14 02:43:28" color="#ff33a1">}}




{{<matomeQuote body="Appleはハードウェア全部自分で作ってるから、みんな特定の機能を持ってるって前提で開発できるんだよ。持ってない人は気にしない。他のメーカーにはそんな特権ないもんね。" userName="f33d5173" createdAt="2025/06/13 05:45:31" color="">}}




{{<matomeQuote body="Appleならエコシステム全体の画面で特定のサブピクセル配列を簡単に統一できたはずなのに、それでもその機能をやめちゃったんだよね。" userName="akdor1154" createdAt="2025/06/13 08:18:51" color="">}}




{{<matomeQuote body="ピクセル密度が高くてグレースケール表示で十分綺麗なら、サブピクセルAAで発生するアーティファクトなんて要らないし馬鹿げてる。それにディスプレイのスケーリングと組み合わせるとサブピクセルAAは余計なノイズを生むんだよね。（まあスケーリング自体も綺麗じゃないけどね。例’えばiPadのスケーリングのノイズは耐えられないな）" userName="LoganDark" createdAt="2025/06/13 08:55:54" color="#785bff">}}




{{<matomeQuote body="Appleはピクセル密度が十分高いことを保証できないよ。だってどんな外部モニターにも繋がるPCやタブレット作ってるじゃん。MacOSって218ppiじゃないと*マジ*ひどい見た目なんだよね。Appleの高いディスプレイ以外でこれ満たすのって、LGのUltrafine 5KとDellの6Kだけ。LGはもう売ってないらしいけど。<br>つまり、LGかAppleの高いディスプレイ買わないと外部モニターでのMacOSは最悪になる可能性が高いってこと。接続設定の酷さとか、BetterDisplay買わないとリフレッシュレート選べないとか、そういう問題もあるしね。" userName="wpm" createdAt="2025/06/13 14:36:03" color="#785bff">}}




{{<matomeQuote body="でも、世界中のディスプレイ全体で見たら、Retinaタイプって何%くらいあると思う？全然普及してないんじゃない？" userName="eviks" createdAt="2025/06/13 09:53:02" color="">}}




{{<matomeQuote body="面白いことに、それって当たってる部分があるんだよね。今のスマホは全部Retinaだし、安いタブレットですら高解像度。俺が持ってるので一番解像度高いのってGalaxy Tab S7 FEかも。なのにPCは高いの買わないと1080pのまま。大手メーカーがケチってるだけだと思うんだよね。だってChromebookくらいの値段で高解像度タブレット出てるのに、PCに同じの載せるのに500ユーロも値上げする必要ないでしょ。" userName="jeroenhd" createdAt="2025/06/13 16:13:55" color="#ff5c5c">}}




{{<matomeQuote body="＞スクリーンショットが特定のサブピクセル配列に縛られる、みたいな話’だけど、スクリーンショットはもっと良い画像形式が欲しいよね。ラスタライズじゃなくてベクトルとかテキスト情報ごと保存できるやつ。WindowsのHDRスクリーンショットも似た理由でダメになってるし。" userName="gfody" createdAt="2025/06/13 19:29:34" color="">}}




{{<matomeQuote body="または、単純にスクリーンショットを水平方向の解像度を3倍にして、ピクセルアスペクト比を3：1で保存するとかどう？" userName="meindnoch" createdAt="2025/06/15 12:07:50" color="">}}




{{<matomeQuote body="DisplayID 標準 (EDID の後継) って、このためにあるはずじゃない？<br>https://en.wikipedia.org/wiki/DisplayID#0x0C_Display_device_...<br>メーカーがこれ実装してないだけ？<br>どっちにしても、簡単に情報取って hardware-info database に入れられるはずなのにね、少なくともよくあるディスプレイモデルなら。" userName="zozbot234" createdAt="2025/06/13 06:51:12" color="#ff5c5c">}}




{{<matomeQuote body="OS がこれ用の API を公開してるとは思えないなー。<br>Linux tool で画面の明るさ変えるやつ、GPU 経由で hardware に direct に話しかけてるし。<br>Unfortunately、EDID も always 信頼できるわけじゃないんだよね。向き知らないと rotated screens が awful になるし。<br>必要な data を取るには administrator access がいるだろうし、 security とか ease-of-use の問題にもなるかも。<br>Plus、vendor によっては EDID に lie するみたい。ACPI みたいな他の情報 tables と同じで、別の product の config を copy して、覚えてる metadata だけ update して出荷してる感じ。" userName="jeroenhd" createdAt="2025/06/13 16:18:34" color="#ff5c5c">}}




{{<matomeQuote body="なんで？ decades 前からあったのに :(.<br>記事は excellent だし、この ”subpixel zoo” も面白いよ。<br>https://geometrian.com/resources/subpixelzoo/" userName="jasonthorsness" createdAt="2025/06/13 03:47:58" color="">}}




{{<matomeQuote body="“Tragedy” はちょっと overstate じゃない？<br>各 OS が Window の former ClearType tuner みたいなの提供して、 screen や monitor model ごとに results を覚えればいいじゃん。<br>monitor が間違った layout を report する inevitable case のためにも、それが desirable だと思うよ。" userName="layer8" createdAt="2025/06/13 14:57:25" color="">}}




{{<matomeQuote body="Subpixel rendering って most languages では unnecessary なんだよね。<br>Bitmap fonts や hinted vector fonts を antialiasing 無しで使えば excellent な readability が得られるよ。<br>Chinese や Japanese みたいに very intricate details を持つ characters を使う言語の場合だけ important。" userName="mrob" createdAt="2025/06/13 06:04:15" color="">}}




{{<matomeQuote body="GTK4 は rendering を GPU に move して RGB subpixel rendering を give up したんだ。<br>GPU-centric な decision で impractical になったって聞いたけど、article は possible って示してるね。<br>So perhaps、GTK の reason は another one だったか、presented solution が disadvantages を持ってたか、just not integrate in the stack だったのかも。" userName="kvemkon" createdAt="2025/06/13 04:09:04" color="#45d325">}}




{{<matomeQuote body="Cosmic Text (Cosmic DE) は swash 経由で GPU 上でこれやるかもね。<br>Subpixel rendering があるよ。" userName="dbcooper" createdAt="2025/06/13 04:42:39" color="">}}




{{<matomeQuote body="SDF と MSDF を WebGL / WebGPU で implement する方法に interest があるなら、この tutorial を take a look してみて。<br>https://infinitecanvas.cc/guide/lesson-015#msdf." userName="xiaoiver" createdAt="2025/06/13 05:56:59" color="#785bff">}}




{{<matomeQuote body="This looks great。<br>Rust の WebGPU implementation である WGPU に some interest があって、この tutorial は advance course みたい。<br>JavaScript examples を Rust に translate するの、learning に ideal なんだ。<br>code を copy/paste できないけど、APIs は enough に近いから port しやすいし、WGPU docs に慣れる excuse になるよ。" userName="Buttons840" createdAt="2025/06/13 07:16:26" color="#ff5c5c">}}




{{<matomeQuote body="わー、サイトの形式めっちゃ好き！もっと詳しく教えてくれる？ GPUチュートリアル作るの好きなんだ。あなたのサイトみたいに構成したいんだよね。既存のテンプレートなのかな？ それとも何かのコースの一部？" userName="tamat" createdAt="2025/06/13 09:59:35" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="サイト形式はVitePressのdocsテンプレートを再利用してるみたいだね。テキストが多いコンテンツにはすごく良い方法だよ。サイトはオープンソースみたいで、ページの一番下にリポジトリへのリンクがあるよ：https://github.com/xiaoiver/infinite-canvas-tutorial" userName="jama_" createdAt="2025/06/14 06:09:34" color="#785bff">}}




{{<matomeQuote body="僕はVitePressを使ってるよ。組み込みのMarkdown拡張機能がいっぱいあるんだ。<br>https://vitepress.dev/guide/markdown" userName="xiaoiver" createdAt="2025/06/16 03:14:56" color="#ff33a1">}}




{{<matomeQuote body="Slugライブラリ[1]は、こういうGPUグリフライスタライザーを実装した商用ミドルウェアだよ。[1]: https://sluglibrary.com/" userName="dcrazy" createdAt="2025/06/13 03:46:59" color="#38d3d3">}}




{{<matomeQuote body="彼らはウェブサイトでアルゴリズムをかなり詳しく説明してるね。特許持ってるのかな？ オープンソースのwgpu版を作るのは面白そうだけど、フォント解析とかレイアウトにcosmic-textの何かを使うとか。でも、最後にSlugから訴えられたら、全然面白くないな。" userName="bschwindHN" createdAt="2025/06/13 12:32:07" color="#ff5c5c">}}




{{<matomeQuote body="Slugは特許取られてるけど、vello（wgpuを使うやつ https://news.ycombinator.com/item?id=44236423）みたいに他の似たアプローチも開発中だよ。<br>私もglyphon（https://github.com/grovesNL/glyphon）作ったよ。wgpuとcosmic-textを使って2Dテキストをレンダリングするやつ。動的なグリフテクスチャアトラスを使ってて、ほとんどの2Dユースケースでは実際うまくいくよ（本番環境で使ってる）。" userName="grovesNL" createdAt="2025/06/13 12:57:01" color="#ff5733">}}




{{<matomeQuote body="cosmic-textとgliumで似たようなことしたことあるよ。でも、ゲームとか3D用に、グリフのアウトラインとか変換でもっと凝ったことできるベクトルレンダリングモードがあると面白いよね。もちろんオープンソースで。<br>velloはその方向に向かってると思うけど、試すたびにいつもなぜかサンプルが壊れてたんだ。" userName="bschwindHN" createdAt="2025/06/13 15:26:37" color="#ff33a1">}}




{{<matomeQuote body="似たようなことの放棄した概念実証（Proof-of-Concept）があるんだけど、チェックしてみる価値あるかも https://github.com/mxple/fim" userName="mxplerin" createdAt="2025/06/13 20:45:38" color="#45d325">}}




{{<matomeQuote body="超面白い！動画で見た感じだと、乗り物酔いしそうかなと思ったけど、ベジェレンダリングで何を目指してるかは分かったよ。" userName="bschwindHN" createdAt="2025/06/14 01:07:02" color="">}}




{{<matomeQuote body="GPUがほぼ無限の頂点／ピクセル描画能力を持ってるのに、なんでテキストをオフラインでレンダリングして、SDFみたいなトリックと一緒にアトラスに格納する必要があるのか、まだよく分からないんだ..。記事でもグリフ曲線をアトラスに書き込むって言ってるし。なんでシェーダーで直接テキストをレンダリングできないの？ ベジェを三角形メッシュに変換する方法はあるはずだよ。<br>今CADアプリ用のGPUテキストレンダラーに着手しようとしてるんだけど、その理由がすぐに分かるといいな。" userName="vFunct" createdAt="2025/06/13 03:48:39" color="#38d3d3">}}




{{<matomeQuote body="同じ文字を繰り返し描くなら、その結果をキャッシュしとく方が大抵の場合、断然安いよ。GPUは確かに速いけど無限じゃないし、事前に描かれたテクスチャからサンプルするのとか超得意だからさ。<br>あと、速さだけじゃなくて電力消費も重要なんだよね。モニターのリフレッシュレートに達するくらい速くなれば、それ以上速くなっても体感の応答性は変わらないかもだけど、バッテリーは長持ちするようになるかも。<br>だから、レンダリングにおいては「速すぎる」ってことはないんだ。もっと速くすれば常に何かしらメリットがあるんだよ。" userName="modeless" createdAt="2025/06/13 04:52:28" color="#785bff">}}




{{<matomeQuote body="＞モニターのリフレッシュレートに達するくらい速くなれば、それ以上速くなっても体感の応答性は変わらないかも<br>これは正しくないね。もしレンダリングがもっと速ければ、描画開始や入力処理のタイミングをフレーム表示時間にギリギリまで近づけられるから、入力の遅延を減らせるんだよ。" userName="account42" createdAt="2025/06/13 07:47:03" color="#ff5c5c">}}




{{<matomeQuote body="それは本当だけど、実際にはあんまり実装されてないんだよね。" userName="modeless" createdAt="2025/06/13 13:43:41" color="">}}




{{<matomeQuote body="それは確かにそうだけど、今回のケースでは、描画済みの文字の出力をキャッシュして再利用できるんだよ。SDFとかの中間ステップもすっ飛ばせる。<br>もちろん、ゲームとかでフォントサイズが変わったり、文字が回転・傾いたりすると、この方法は使えなくなるけどね。" userName="animal531" createdAt="2025/06/13 10:42:03" color="#45d325">}}




{{<matomeQuote body="普通の表示サイズでも、フォントの三角形密度ってめちゃくちゃ高いんだよね。最近のGPUアーキテクチャは、そんな高密度の形状を扱うのがめっちゃ苦手なんだ。<br>こういう場合、単純にGPUに三角形をバンバン送るより、アトラスとか別のやり方の方がずっと効率的。<br>ほとんどのGPUはピクセルシェーダーを4つ一組で処理するんだけど、三角形が全部1ピクセル大だと、3つのスレッドが視覚的に何も貢献しない無駄になるんだよ。これを’quad overdraw’って言うんだ。<br>頂点処理にも無駄な時間をたくさん費やすことになるんだよね。" userName="MindSpunk" createdAt="2025/06/13 05:28:41" color="#785bff">}}




{{<matomeQuote body="GPUは無限に頂点やピクセルを描けるわけじゃないからね。テキストを直接レンダリングするのは、単純にコストが高いんだ。<br>もちろん、やろうと思えばできるけど、フレームの描画に使える時間を食っちゃうし、電力消費も増えるだけで、特に良いことはないんだよ。" userName="ben-schaaf" createdAt="2025/06/13 06:40:32" color="#ff33a1">}}




{{<matomeQuote body="これをさらに詳しく言うと、GPUは三角形しかラスタライズできないから、文字をそのまま直接描くってことができないんだ。<br>シェーダーの中でラスタライズ処理を実装するか、フォントの滑らかな曲線を、結果が変わらないくらい十分な数の三角形に変換してあげる必要があるんだ（必要な三角形の数はフォントのピクセルサイズが大きくなるほど増えるよ）。" userName="account42" createdAt="2025/06/13 07:54:49" color="#38d3d3">}}




{{<matomeQuote body="三角形を使うのは間違った選択だけど、それ以外は良い指摘だね。<br>この記事の人がアトラスを使ってるのは、ベジェ曲線をピクセルあたり最大512サンプルでスーパーサンプリングしてるからで、これがすごくコストがかかるんだ。<br>だけど、例えばベジェ曲線の領域とサブピクセルの領域が交差する部分の積分を計算する方が、はるかに速くリアルタイムで実行できる可能性があるし、スーパーサンプリングよりも正確だと思うよ。" userName="WithinReason" createdAt="2025/06/13 06:35:00" color="#785bff">}}




{{<matomeQuote body="GPUはすごく速いけど、完全に無限じゃないからさ。テキストにGPU時間を使っちゃうと、他の処理に回せなくなるんだ。<br>そして、ほとんどの場合、他の処理にGPU時間を使いたいものなんだよね。<br>それに、要求するGPU時間が多いほど、必要な最低ハードウェアのスペックも上がっちゃう。<br>文字ってクールで重要だけど、ユーザーとかお客さんを失うほど重要じゃないかもしれないからね。" userName="dxuh" createdAt="2025/06/13 05:54:51" color="#45d325">}}




{{<matomeQuote body="Adaptive distance fieldsっていうのは、Saffronっていうフォントレンダリングライブラリで使われてた、古いけど興味深い技術だったね。<br>今でもすごく有効だし、オープンソースでの実装が期待されてる。<br>ADFっていう言葉はあまり広まらなかったんだけど、ほとんどが特許でガチガチに守られてたんだ。でも、もうほとんどの特許が期限切れになってるみたいだよ。" userName="CrimsonCape" createdAt="2025/06/16 23:35:22" color="#38d3d3">}}




{{<matomeQuote body="＞なんでシェーダーは直接テキストをレンダリングできないの？<br>https://sluglibrary.com/はDynamic GPU Font RenderingとかAdvanced Text Layoutを実現してるよ。" userName="andsoitis" createdAt="2025/06/13 06:48:21" color="">}}




{{<matomeQuote body="GPUラスタライザはサブピクセルレンダリングしないんだよね。これは3Dではいいけど、小さいテキストだと追加解像度を活かしたいじゃん？<br>でも、どうせアトラスにレンダリングするなら、別にGPUでやる必要なくて、FreeTypeみたいな既存のソフトラスタライザでアトラス作ればいいだけだよ。" userName="account42" createdAt="2025/06/13 07:51:46" color="">}}




{{<matomeQuote body="＞綺麗だけど非標準サブピクセル構造でフリンジ問題がある新しいOLEDのことだね。<br>俺の理解だと、それより酷いよ。非標準なだけでなく、互換性のない複数のサブピクセルレイアウトがあるんだ。だからFreeTypeはOLED向けサブピクセルレンダリングを実装しなかったし、テキスト作業するならOLEDを避ける理由になってる。FreeTypeに限らず、QtやGTKみたいなGUIツールキットも対応しないといけない。<br>解決に進展があるかは不明。<br>＞モニターの任意のサブピクセル構造にアクセスできたらいいのにね、共通ディスプレイプロトコル経由で。<br>うん、そこはいい指摘だね。たぶんEDIDsで伝達されるべきかもね。" userName="shmerl" createdAt="2025/06/13 04:22:10" color="#ff5c5c">}}




{{<matomeQuote body="標準的なサブピクセルレイアウトのOLEDもあるよ。例えば俺のノートPCは縦の(!) BGRレイアウトで、FreeTypeとKDEは問題なく対応してる。変なレイアウトはたぶんHDRディスプレイで特定の色（青）が早く焼き付かないように、色ごとにサイズを変える必要があるからだと思うな。" userName="account42" createdAt="2025/06/13 08:04:15" color="#785bff">}}




{{<matomeQuote body="そうかもね、でも俺が見たバグ報告だと色んなレイアウトがあって、どれも標準には見えなかったよ。Steam Deck OLED、LenovoノートPC、LG UltreaGear OLEDとかが例だね。共通点は正直見当たらないな。<br>* https://bugs.kde.org/show_bug.cgi?id=472340<br>* https://gitlab.freedesktop.org/freetype/freetype/-/issues/11..." userName="shmerl" createdAt="2025/06/13 14:40:11" color="#785bff">}}




{{<matomeQuote body="理論上はそうだろうけど、実際には俺は4K OLEDディスプレイでコード書いてるけど、何もアーティファクトに気づいたことないんだよね。" userName="ipsum2" createdAt="2025/06/13 06:21:42" color="">}}




{{<matomeQuote body="高解像度だと問題が見えにくくなるだけかもね、でも問題自体はあるよ。" userName="shmerl" createdAt="2025/06/13 07:13:32" color="">}}




{{<matomeQuote body="すごい仕事だね！この分野に詳しくない人向けに言うと、Valveがゲーム向けにSDFテキストレンダリングを発明したんだ。2007年に画期的な論文出して、今でもゲームで人気の技術だよ。2012年にはBehdad EsfahbodがOpenGL ESを使ってGPUで動くGlyphyっていうSDF実装を書いた。パフォーマンスや素早いテキスト変形を可能にしたことで賞賛されたけど、広くは使われてない。今のOSやブラウザはこれらの技術を使ってなくて、1990年代のTruetypeラスタライズに頼ってる。これは軽くて効果的だけど、多くの機能がないんだ。記事で示されてるようなサブピクセルアライメントや任意のサブピクセルレイアウトはできないし、ズームは重いし、スキューや回転、3Dみたいな複雑な変形はテキストレンダリングエンジンじゃできない。回転や変形が必要ならビットマップのリサンプリングになっちゃうけど、それは小さくて読みやすさを保つ特徴を全部壊して見た目が悪くなる。<br>なんで進歩がないかって？たぶん、得られるものに対して作業量とリスクが大きすぎるんじゃない？現代のウェブブラウザエンジンをGPU高速化テキストレンダリング使うように書き直すの想像できる？気が遠くなるような作業だよ。グリフのレンダリングはともかく、改行はどうする？CPUとGPUの間の大量の通信が必要そうだし、ソフトウェアとGPUの深い連携も難しいだろうね。" userName="oofabz" createdAt="2025/06/13 04:26:26" color="#ff33a1">}}




{{<matomeQuote body="「GPUで文字レンダリングって、ラインブレークとかどうすんの？」って言ってるけど、テキストの形を整えたり改行したりって、描画とはほぼ関係ない話だよ。なんでそんなこと言うの？" userName="chrismorgan" createdAt="2025/06/13 09:51:25" color="#38d3d3">}}




{{<matomeQuote body="ブラウザエンジンをGPUレンダリング用に書き換えるのって大変？<br>ServoのPathfinderっていうのがGPUのCompute Shaderでやってるよ。SDF使うよりずっとパフォーマンスいいんだ。https://github.com/servo/pathfinder" userName="zozbot234" createdAt="2025/06/13 10:50:13" color="#785bff">}}




{{<matomeQuote body="ちょっと補足すると、WindowsやChrome、Firefoxでは文字レンダリング、例えばSubpixel Antialiasingとかも、昔からGPUで加速してるんだ。Safariもたぶんそう。技術が進んでないってのは違うよ。" userName="kevingadd" createdAt="2025/06/13 14:22:12" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="SDFは万能じゃないよ。SDFは文字の輪郭からの距離をデータにする技術で、拡大縮小に強い。でも、使う文字すべてのデータが必要だから、Unicode全部に対応しようとするとデータがデカすぎる。だからOSやブラウザには向かないんだ。Emojiみたいなカラー文字も苦手だし。ゲームみたいに使う文字が決まってる場合に合う技術だよ。" userName="moron4hire" createdAt="2025/06/13 05:41:53" color="#ff5c5c">}}




{{<matomeQuote body="俺の理解だと、記事の筆者のアプローチはSDFの問題とは違うんじゃないかな。使う文字のグリフだけをGPUに送る方式だから。フォントごとに事前計算は必要だけど、それは問題ないはず。" userName="rudedogg" createdAt="2025/06/13 05:53:08" color="#ff5733">}}




{{<matomeQuote body="でもさ、前のコメントはブラウザの話をしてるんだよ？ブラウザはウェブページが指定するフォントを使うのに、どうやって事前にフォントを計算しとくの？" userName="chii" createdAt="2025/06/13 06:01:30" color="">}}




{{<matomeQuote body="ウェブフォントでよくやるのは、フォントを読み込んでその場でSDFのデータを作る方法だよ（Troikaっていうライブラリとか）。最初の表示は少し遅くなるけど、数百ミリ秒くらいだから、ウェブで3Dレンダリングするなら誰もそんなに気にしてないんじゃない？https://github.com/protectwise/troika/blob/main/packages/tro-three-text/src/worker/SDFGenerator.js" userName="onion2k" createdAt="2025/06/13 07:03:26" color="#ff33a1">}}




{{<matomeQuote body="「最初のレンダリングが遅れる」って話だけど、キャッシュすれば簡単に解決しない？同じサイトなら使うフォントはそんなに多くないし、頻繁に変わることもないと思うんだけど。" userName="fc417fc802" createdAt="2025/06/13 09:39:02" color="#38d3d3">}}




{{<matomeQuote body="WebAssemblyを使って、Web workerの中でFreetypeっていうライブラリを動かせばいいんだよ。そんな難しくないと思う。" userName="krona" createdAt="2025/06/13 08:51:40" color="#ff5c5c">}}




{{<matomeQuote body="テキストが来たときに、必要に応じてSDFを用意すればいいんじゃない？現実的に考えて、日本語とか中国語（CJK）でも数千文字くらいあれば十分カバーできるはずだよ。" userName="cyberax" createdAt="2025/06/13 08:14:46" color="#45d325">}}




{{<matomeQuote body="SDF生成ってGPU使えないとマジ遅いんだよね。速いアルゴリズムだとバグることもあるし。技術的な課題だね。" userName="kevingadd" createdAt="2025/06/13 14:17:06" color="">}}




{{<matomeQuote body="モダンなWebブラウザエンジンをGPUテキストレンダリングに書き換えるなんて想像できる？<br>これって、もう既に部分的にやってるんじゃない？このURLの記事（2014年）によると、ChromeとかSafariで要素をGPUに上げるとサブピクセルアンチエイリアスは失われるけど、グレースケールでレンダリングされるって。<br>じゃあ、何が足りないんだろ？UTF-8文字列からビットマップへの変換の一部はGPUでできるんじゃないの？https://keithclark.co.uk/articles/gpu-text-rendering-in-webk..." userName="Someone" createdAt="2025/06/13 11:19:01" color="#ff5733">}}




{{<matomeQuote body="問題はサブピクセルレンダリングそのものじゃなくて（GPU compute shaderでやればピクセルパーフェクトも可能）、TrueTypeやOpenTypeの複雑なソフトウェアヒンティングが失われることなんだよ。でも、GPUでフォントをレンダリングする目的って、滑らかなアニメーションをサポートすることでしょ？ソフトウェアヒンティングされたフォントは静的にピクセルやサブピクセルグリッドにスナップされちゃうから、そもそもこの二つの使い方は相容れないんだよ。" userName="zozbot234" createdAt="2025/06/13 12:17:59" color="#785bff">}}




{{<matomeQuote body="解説ありがとう！こういうサクッとした概要を読むの、大好きだよ。" userName="vendiddy" createdAt="2025/06/13 08:57:56" color="">}}




{{<matomeQuote body="複雑な変換（スキュー、回転、3D変換）はできない<br>いいね！俺のテキストドキュメントビューアは、左から右への直線描画だけで十分なんだよ。右から左もほぼ同じくらい簡単だろうし。そういえば、中国語ってまだ上から下がいいのかな？" userName="Am4TIfIsER0ppos" createdAt="2025/06/13 08:57:33" color="">}}




{{<matomeQuote body="俺のテキストドキュメントビューアは、左から右への直線描画だけで十分なんだよ。<br>「テキストドキュメントビューア」以外でテキストをレンダリングしたい人なんて、まさかいないとでも思った？信じられないね！" userName="adwn" createdAt="2025/06/13 11:27:14" color="">}}




{{<matomeQuote body="あんたがテキスト関連の仕事をしてないことを、マジで願ってるよ。" userName="Fraterkes" createdAt="2025/06/13 09:11:49" color="">}}




{{<matomeQuote body="まさに「主人公症候群」の典型例だね。文字通りダジャレじゃないよw" userName="ChrisClark" createdAt="2025/06/13 15:17:18" color="">}}




{{<matomeQuote body="信じられないかもしれないけど、あんた以外の人間も存在するんだよ。" userName="Philpax" createdAt="2025/06/13 14:38:22" color="">}}




{{<matomeQuote body="ASCII文字だけの等幅フォントならいいけど、それ以外だとすぐ変になっちゃうよ。" userName="ulfbert_inc" createdAt="2025/06/13 10:18:33" color="">}}




{{<matomeQuote body="すごい技術だけど、サブピクセルAAはもういらないんじゃね？昔72dpiの時代はよかったけど、今のRetinaディスプレイだと違いわかんないし。<br>ちょっとした改善のために、不透明背景しかダメとか、効果つけられないとか、スクショが他のディスプレイで見ると変とか、デメリット多いし。" userName="meindnoch" createdAt="2025/06/13 09:00:02" color="#ff5c5c">}}




{{<matomeQuote body="サブピクセルAAなくすと楽になるけど、低DPIモニター使ってる人まだ結構いるよ。Firefoxの調査だと16パーセントが1366x768だって。今でも新しい低DPIのモニターやノートPC作られてるしね。<br>[1] https://data.firefox.com/dashboard/hardware" userName="fleabitdev" createdAt="2025/06/13 09:37:21" color="#785bff">}}




{{<matomeQuote body="もっとびっくりするかもだけど、FHD以下使ってる人が全体の3分の2で、QHDとか4Kは6分の1くらいなんだって。デスクトップだと、まだ低DPIが普通ってことみたいだよ。" userName="layer8" createdAt="2025/06/13 15:05:11" color="#ff5c5c">}}




{{<matomeQuote body="あと、Linux Hardware Database（開発者寄りね）[1] とSteam Hardware & Software Survey（ゲーマー寄り）[2] も見てみて。<br>[1] https://linux-hardware.org/?view=mon_resolution<br>[2] https://store.steampowered.com/hwsurvey" userName="vitorsr" createdAt="2025/06/13 11:45:23" color="#ff5c5c">}}




{{<matomeQuote body="それって『俺、高DPIの画面だから、そうじゃない人のことは知ったこっちゃない』って言ってるようなもんだろ？サブピクセルレンダリングが効く場面での良い結果に比べたら、他の話はマジでどうでもいいレベルだよ。" userName="ahartmetz" createdAt="2025/06/13 09:29:52" color="">}}




{{<matomeQuote body="そうかなあ。俺は100dpiの画面だと色のフリンジが出るのが嫌で、サブピクセルレンダリングあんまり好きじゃないんだよね。他のデメリットも加味したら、やっぱり割に合わない感じ。" userName="NoGravitas" createdAt="2025/06/13 13:04:23" color="">}}




{{<matomeQuote body="サブピクセルレンダリングって設定できるんだよ。特許切れたアルゴリズムもあるし。俺は最新のKubuntuでヒンティングとサブピクセルレンダリング使ってるけど、めっちゃ綺麗に見えるよ。あんま使わないけどWindowsでもClearType Tunerで設定したことあるけど、Windowsのフォントレンダリングは全体的にちょっと粒々してて細い感じなんだよね。" userName="ahartmetz" createdAt="2025/06/13 13:14:07" color="#45d325">}}




{{<matomeQuote body="それにさ、もし筆者が望むみたいに、ディスプレイのサブピクセル配置を知るためのプロトコルができて、それが広く使われるようになっても、絶対一部のメーカーが間違えて、ユーザーにはマジで理解不能なレンダリング問題起こすって。間違いないね。" userName="mistercow" createdAt="2025/06/13 09:25:13" color="">}}




{{<matomeQuote body="こういう問題は前からあったんだよ。で、解決策もちゃんとわかってる。ハードにプロトコルで聞く、間違った情報返すハードウェア用のquirkデータベース、そしてユーザーが自分で設定を変えられるオーバーライド、これね。" userName="ahartmetz" createdAt="2025/06/13 13:10:15" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
