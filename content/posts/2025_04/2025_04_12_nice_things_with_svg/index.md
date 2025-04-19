+++
date = '2025-04-12T00:00:00'
months = '2025/04'
draft = false
title = 'SVGの可能性が無限大！？知っておくと得する活用事例まとめ'
tags = ["SVG", "アニメーション", "デザイン", "ウェブ開発", "フロントエンド"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> SVGの可能性が無限大！？知っておくと得する活用事例まとめ

引用元：[https://news.ycombinator.com/item?id=43666439](https://news.ycombinator.com/item?id=43666439)

{{<matomeQuote body="8年前の記事だけど、Sarah Drasnerの「SVG Can Do That？」って講演はマジで目からウロコだよ。CSSは当時からめっちゃ進化してるけど（SVGは知らん…）、まじおすすめ。<br>スライド：https://slides.com/sdrasner/svg-can-do-that<br>動画：https://youtu.be/ADXX4fmWHbo?si=6YPZkopyEDc8PSte" userName="chrisweekly" createdAt="2025-04-12T18:53:18" color="#ff5c5c">}}

{{<matomeQuote body="彼女の本も好きだけど、おすすめされてるツールは今でも使えるか分からん。" userName="jamra" createdAt="2025-04-12T20:53:57" color="">}}

{{<matomeQuote body="どの本のこと言ってるの？" userName="srid" createdAt="2025-04-12T22:07:03" color="">}}

{{<matomeQuote body="たぶんO’Reillyから出てる「SVG Animations」のことだね。2017年のやつ。フレームワークは結構変わっちゃったけど、基本的な考え方は変わってないと思う。セールで買えるならおすすめ。定価はちょっと高いかな。" userName="technetist" createdAt="2025-04-12T22:25:25" color="#ff5733">}}

{{<matomeQuote body="本の紹介ありがとー！他にもSVGの本あるよね。<br>SVG Essentials：https://www.oreilly.com/library/view/svg-essentials-2nd/9781...<br>SVG Text Layout：https://www.oreilly.com/library/view/svg-text-layout/9781491...<br>テキストレイアウトだけの本があるってことは、SVGって奥が深いんだなって思った。" userName="j45" createdAt="2025-04-13T02:22:37" color="#ff33a1">}}

{{<matomeQuote body="目次見ると、GreenSockの宣伝本っぽいね。タイトル詐欺じゃん。SMILは「おすすめしない」って書いてあるみたいだし。" userName="jarek-foksa" createdAt="2025-04-13T13:14:20" color="">}}

{{<matomeQuote body="GreenSockは使えるし良いんだけど、ゴリ押ししてくる製品は怪しいと思っちゃう。良いものなら勝手に広まるっしょ。" userName="ifwinterco" createdAt="2025-04-14T13:25:10" color="">}}

{{<matomeQuote body="SVGファイルで面白いことができるよ。DTDで定数を定義して、いろんな場所で使い回せるんだ。David Ellsworthの「Squares in Squares」ってページに良い例があるよ。<br>https://kingbird.myphotos.cc/packing/squares_in_squares.html<br>主要なブラウザは問題ないけど、InkscapeとかはDTDを解析できないかも。" userName="LegionMammal978" createdAt="2025-04-12T18:04:29" color="#38d3d3">}}

{{<matomeQuote body="エンティティじゃなくて、refでしょ？SVGでshapesとかpathsを定義して、idで参照するやつ。リンク先のページもそうしてるじゃん（個別のSVGをembedで読み込んでる）。SVG作った人はなんでエンティティみたいな仕組みを実装したんだろう？レンダリングのプロパティを上書きできるからかな？" userName="tannhaeuser" createdAt="2025-04-13T08:53:47" color="">}}

{{<matomeQuote body="エンティティはパース時に解決されるから、プリプロセッサみたいなもん。<use>はもっと強力で、オリジナルを書き換えると全部のインスタンスが変わるよ。確か、<symbol>と<use>はAdobe Illustratorとの互換性が目的だった気がする。" userName="jarek-foksa" createdAt="2025-04-13T11:53:28" color="">}}

{{<matomeQuote body="＞それってリンク先のページでも使われてるよね<br>違う目的で両方使ってるんだよ。例えばhttps://kingbird.myphotos.cc/packing/square-11.svgみたいなファイルには＜use＞要素と＜!ENTITY＞宣言がある。<br>数値属性には＜use＞は使えないから、CSS変数を使うのが一番近いかな。<br>＜use＞があるのは、オリジナルの要素と＜use＞で作られたクローンがDOMでリンクされるから。DTDエンティティはテキストとして組み込まれるのと違う。<br>XML嫌いな人が多いから、内部DTDも嫌われるんじゃないかな。XML標準以外に情報が少ないしね。<br>ブラウザ開発者は攻撃対象を減らしたいから、DTDとかXMLスタイルシートがまだ動くのが不思議。もし悪用されたらすぐに削除すると思うよ。" userName="LegionMammal978" createdAt="2025-04-13T14:30:12" color="#45d325">}}

{{<matomeQuote body="何か見落としてるかもだけど、DTDを表す＜!doctype＞や＜!element＞が見当たらないんだけど。単にSVGのdefsとuseの話なら、それはDTDじゃないよ。" userName="lenkite" createdAt="2025-04-13T03:21:21" color="">}}

{{<matomeQuote body="全部スタンドアロンファイルにあるよ。例えばhttps://kingbird.myphotos.cc/packing/square-11.svgのソースを見てみて。いろんな長さや角度を表すエンティティが定義されてる。これは＜use＞できないよね。CSS変数なら代替できるけど、librsvgみたいなブラウザ以外のツールじゃ扱いにくいかも。" userName="LegionMammal978" createdAt="2025-04-13T14:28:15" color="">}}

{{<matomeQuote body="ああ、ありがとう。Chromeの開発者ツールじゃもう置換されてるから表示されないんだね。" userName="lenkite" createdAt="2025-04-14T00:03:12" color="">}}

{{<matomeQuote body="既存のSVGから一部を抜き出して、ページの別の場所でuse（クローン）することもできるよ。<br>https://developer.mozilla.org/en-US/docs/Web/SVG/Reference/E…" userName="timewizard" createdAt="2025-04-12T18:20:40" color="#45d325">}}

{{<matomeQuote body="昔、Wikimedia Commonsでシェルピンスキー・カーペットを定義した時に使ったよ。<br>https://commons.wikimedia.org/wiki/File:Sierpinski_carpet_6…<br>当時、ほとんどのSVGレンダラーがロックするかクラッシュしたんだ。" userName="ygra" createdAt="2025-04-12T19:15:22" color="#38d3d3">}}

{{<matomeQuote body="ブラウザでは動くかもしれないけど、多くのSVGツールはDTDを無視するよ。DOS攻撃のリスクがあるからね。例えばBillion laughs attack。<br>https://en.wikipedia.org/wiki/Billion_laughs_attack" userName="noahbald" createdAt="2025-04-12T22:08:06" color="#45d325">}}

{{<matomeQuote body="そのページ、2022年のiPhone SEでレンダリングするのに5秒もかかったよ。" userName="znpy" createdAt="2025-04-12T23:11:34" color="">}}

{{<matomeQuote body="Nanda Syahrasyadの「A Deep Dive Into SVG Path Commands」は、SVGパスの構成を理解するのにすごく役立つよ。2年前の記事だけど、SVGでできることとか、その仕組みがよくわかった。<br>[0] https://www.nan.fyi/svg-paths" userName="joshuaturner" createdAt="2025-04-12T19:34:33" color="#45d325">}}

{{<matomeQuote body="SVGで面白いことをするプロジェクトに参加してたよ。Reactで作られてて、アニメーション要素のある静止画があって、色はCMSでコントロールされてた。<br>フロントエンドはAPIを叩いて、正しい色が割り当てられたSVGイメージを返して、SVG要素の表示・非表示でアニメーションを実現してた。<br>例：https://web.archive.org/web/20221020133516im_/https://uncrow…" userName="baosoy" createdAt="2025-04-12T19:03:10" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Macromedia Flashがマジで懐かしいなー。Flashみたいに、あんなにインディーズゲームとかアニメが手軽に作れて、しかもFlash Playerだけで見れる技術って他にないじゃん？　参入障壁がめっちゃ低かったんだよね。<br>今のSVGは、Flashで出来たこと全部できるポテンシャル秘めてるのに、Flashみたいなエディタもないし、ActionScriptみたいなシーン/オブジェクトベースのコーディングもできない。しかもブラウザごとに癖があるから、簡単なSVGしかどこでも表示されないんだよねー。" userName="imhoguy" createdAt="2025-04-13T06:56:58" color="">}}

{{<matomeQuote body="Adobe Animateとしてまだあるよ。HTMLに書き出せるし。<br>それに、SVGとFlashを比べるのは、リンゴとミカンを比べるようなもんじゃない？　SVGはFlashの全部をやる必要はなくて、ブラウザの他の技術に頼ればいいんだから。" userName="7952" createdAt="2025-04-13T08:10:07" color="">}}

{{<matomeQuote body="Adobe AnimateはFlashの抜け殻だよ。2Dしかサポートしてないし。昔のFlashは20年も前に3Dに対応してたのに。もうほとんど死んだ製品だね。Flashの魂の一部はAfter Effectsに残ってるけど、あれはビデオ編集ツールだし。" userName="rchaud" createdAt="2025-04-14T18:39:43" color="">}}

{{<matomeQuote body="WebAssemblyなら比較できるんじゃない？　例えば、UnityとかUnrealとかGodotとかって、結構簡単にブラウザ向けにコンパイルできるし。<br>ただ問題は、どれも結構容量が大きくて、数十MBとかになるんだよね。普通は数MBなのに。" userName="jefozabuss" createdAt="2025-04-13T11:20:18" color="">}}

{{<matomeQuote body="これって、起業のチャンスじゃね？　Flashみたいなの作り直すの。" userName="mettamage" createdAt="2025-04-13T11:24:08" color="">}}

{{<matomeQuote body="複雑なアニメーションSVGは楽しいけど、SMILの細かいところに入り込むと、Safariがfloatの先頭の0がないとかでスマホを破壊してくるみたいな、意味不明なことが起こるんだよね。" userName="braebo" createdAt="2025-04-12T21:40:27" color="">}}

{{<matomeQuote body="スラングだよ。文字通りのレンガ（岩とか石みたいな）を想像して。デバイスが「bricked」って言うのは、何かのせいで使い物にならなくなった状態のこと。" userName="chrisweekly" createdAt="2025-04-13T05:10:58" color="#ff33a1">}}

{{<matomeQuote body="たぶんGPは、GGPがiPhoneをbrickするSVGに出会ったっていうのは（特に悪用目的で作られたペイロードじゃなくて）、並外れた証拠が必要な並外れた主張だって言ってるんだと思うよ。" userName="EE84M3i" createdAt="2025-04-13T05:32:33" color="">}}

{{<matomeQuote body="誇張表現だって解釈することも簡単だよね。<br>特に、他のブラウザでは問題ないのに、Safariだとタブがクラッシュするようなことをうっかりやっちゃうのがどれだけ簡単か知ってれば。<br>実際にデバイスがbrickするわけじゃないけど、ブラウザが結構ハードに落ちる。" userName="lawik" createdAt="2025-04-13T06:55:24" color="">}}

{{<matomeQuote body="GPの言う通りだったね。君の解釈で間違いないと思ってたけど、これまで色んな事を見てきたから、本当に文鎮化する時の詳細についてもっと詳しく知りたかったんだ。" userName="hansvm" createdAt="2025-04-13T13:13:41" color="">}}

{{<matomeQuote body="「bricked」って言葉は、スマホをただの useless brick（役に立たないレンガ）に変えちゃうみたいなイメージで捉えてたな。" userName="knighthack" createdAt="2025-04-14T00:33:33" color="">}}

{{<matomeQuote body="JSを使ってクリエイティブにSVGを動的に生成してる人で仕事を探してる人がいたら、DMしてね！" userName="benjanik" createdAt="2025-04-13T01:55:36" color="">}}

{{<matomeQuote body="線の濃淡を表現できるSVGの拡張機能ってないかな？ペンを上げ下げできるプロッタを持ってて、SVGファイルから制御してるんだ。手書きみたいに、線を描いてる途中でペンを下げられたら最高なんだけど。<br>あー、Evil Mad Scientist LabsのAxidrawだよ。素晴らしいデバイスだし、人も最高。" userName="CliffStoll" createdAt="2025-04-12T18:36:15" color="#ff33a1">}}

{{<matomeQuote body="プレーンなSVGファイルにカスタム命令を仕込んで、リーダーで解釈するのは結構簡単だよ。例えば、レーザーカッターとプロッター両方に使える機械を持ってて、レーザーのパワーにopacity、移動速度にストロークの太さ、パスの回数にgreen channel、Z軸の高さにblue channel、ペンの上げ下げやレーザーのオンオフにred channelを使ってるよ。" userName="m-a-t-t-i" createdAt="2025-04-12T22:38:15" color="#ff5733">}}

{{<matomeQuote body="それならG-codeを使うのが良いんじゃないかな？<br>こんなのを作ってるよ：https://github.com/WillAdams/gcodepreview" userName="WillAdams" createdAt="2025-04-12T19:42:47" color="#ff5733">}}

{{<matomeQuote body="最近、CSSアニメーションのSVGタイルを使って、ちょっとしたおふざけゲームを作ったんだ：https://pipeline-panic.vercel.app/" userName="danielstocks" createdAt="2025-04-12T22:32:11" color="">}}

{{<matomeQuote body="いいね。70年代のボードゲームWaterworksを思い出すよ。<br>https://boardgamegeek.com/boardgame/333/waterworks" userName="vunderba" createdAt="2025-04-13T18:40:58" color="">}}

{{<matomeQuote body="ソースコードはこちら：https://github.com/danielstocks/pipeline-panic" userName="danielstocks" createdAt="2025-04-13T16:36:41" color="">}}

{{<matomeQuote body="これ、マジですげーミニゲームじゃん！ソースまで公開してくれてありがとねー。めっちゃ良くできてるわ。" userName="chrisweekly" createdAt="2025-04-13T16:43:30" color="#45d325">}}

{{<matomeQuote body="これ、ちょー楽しいミニゲームだね！シェアしてくれてマジ感謝！" userName="two_handfuls" createdAt="2025-04-13T04:02:13" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="いいね！" userName="perilunar" createdAt="2025-04-13T03:31:02" color="">}}

{{<matomeQuote body="SVGのtransformsって、最初は「なんでこんなのいるの？」って思ってたけど、自分でアイコンとかロゴ作ってみて納得したわ。曲線ってマジ難しいんだよね。2個目のロゴできた時、なんかペタッとしてる気がして10°傾けたくなったんだ。<br>全部書き直すとかありえないからrotationにしたらマジ最高だった。しかもtestの横に置くと変だったから、カーニングがうまくいくまで何度も角度変えちゃった。" userName="hinkley" createdAt="2025-04-12T18:15:28" color="#38d3d3">}}

{{<matomeQuote body="SVGって、マジでまだ開拓されてない分野って感じだよね。いろいろできるのにさ。想像力次第だけど、結構「ゴリ押し」しなきゃいけない部分もあるかも。結局はユースケース次第かな。" userName="rckt" createdAt="2025-04-12T18:26:34" color="#ff33a1">}}

{{<matomeQuote body="手軽に作れるフォーマットだけど、凝ったことしようとすると「あー、なるほどね」ってなるよね。<br>使われない理由はね…<br>・複雑な図形はブラウザによって表示が違う<br>・レンダラーによって実装範囲が違うから、安全な部分がどこかわからない<br>・複雑な図形は表示が遅い<br>・エディタがInkscapeくらいしかない。しかもInkscapeの挙動がChromeとかFirefoxと違うんだよね。例えばInkscapeで線に矢印つけてもFirefoxで表示されないとか。<br>制限も多いし。SVGの中にSVGを埋め込むのは一段までしかできないし。webでinlineで書くかlinkで書くかで挙動違うし。" userName="geokon" createdAt="2025-04-13T05:50:13" color="">}}

{{<matomeQuote body="＞エディタがInkscapeくらいしかない。<br>オープンソースのベクターエディタって意味？SVGの編集機能があるツールなら、Adobe IllustratorとかSketchとかAffinity Photo/Designerとか色々あるじゃん。webアプリもあるし（SVGatorとか）。Inkscapeは、Affinityみたいに独自のXML名前空間を追加するけど、矢印はmarker要素を使うと思うよ。<br>SVGって柔軟性高いけど、ブラウザ間の挙動の違いとかバグとかで、表示を揃えるのが大変になるよね。でも、マジで好きなフォーマット。" userName="Springtime" createdAt="2025-04-13T07:19:03" color="#785bff">}}

{{<matomeQuote body="InkscapeはSVGをネイティブファイル形式としてる唯一の主要ベクターグラフィックスエディタだよね。他のアプリはSVGのimport/exportができるだけだから、rasterizeされることが多い。SVGatorはアニメーションに特化してるから高いし。webベースならBoxy SVGがいいかも（作ったのは俺だけど）。" userName="jarek-foksa" createdAt="2025-04-13T12:42:28" color="#785bff">}}

{{<matomeQuote body="面白い使い方としては、<br>・toolpath情報を追加してFlashをComputer Aided Manufacturingツールのエンジンとして使う。<br>https://github.com/Jack000/PartKAM<br>・（Edward R. Fordとのプロジェクト）部品リストにハイパーリンクを追加してassembly diagramで部品をハイライトする。<br>https://github.com/shapeoko/Docs<br>--- もう動かないみたいだけど。" userName="WillAdams" createdAt="2025-04-12T19:47:24" color="">}}

{{<matomeQuote body="すぐ限界が来る感じだよねー。groupとかlayerがないと管理しづらくなるし、performanceも良くない気がする。" userName="wwweston" createdAt="2025-04-12T18:53:25" color="">}}

{{<matomeQuote body="グループとかレイヤーなしってことかな？`<g>`とは違うってこと？" userName="srid" createdAt="2025-04-12T22:12:13" color="">}}

{{<matomeQuote body="全部SVGとJSでできててHTMLが一切ないサイトを見てみたいな。できるはずだけど、まだ見たことないんだよね。" userName="perilunar" createdAt="2025-04-13T03:24:11" color="">}}

{{<matomeQuote body="CSSの配置の限界を回避するためにSVGを使ったことがあるよ（新しいレイアウトが登場する前はね）。CSSの書き方を忘れちゃうんだけど、Inkscapeで絵に文字を加えるのは簡単だったから。" userName="efreak" createdAt="2025-04-16T02:53:24" color="">}}

{{<matomeQuote body="それって本当に可能だってどうやってわかるの？" userName="eMPee584" createdAt="2025-04-13T06:49:27" color="">}}

{{<matomeQuote body="ブラウザはSVGファイルを表示できるし、SVGファイルは別のSVGファイルにリンクできるよ。サーバーの設定でSVGをデフォルトで提供するようにすればOK。ほとんどのサーバーはそうじゃないけど、設定変更は簡単だよ。" userName="perilunar" createdAt="2025-04-13T07:55:55" color="#785bff">}}

{{<matomeQuote body="stack overflowの古い投稿で見つけたよ。３ページのテストだけど、ポイントは示してるね。https://svg.nicubunu.ro" userName="perilunar" createdAt="2025-04-13T12:17:03" color="">}}

{{<matomeQuote body="でもこれにはjavascriptがないね。" userName="pcthrowaway" createdAt="2025-04-15T00:17:08" color="">}}

{{<matomeQuote body="そうだね。制約はあると思うけど、SVGはCSSよりもWebデザインのwysiwygって感じがする。" userName="memhole" createdAt="2025-04-12T18:33:56" color="#45d325">}}

{{<matomeQuote body="SVG+CSSはすごく強力だよ。ダーク/ライトモードに対応した図をjavascriptなしで作れるのが好き。例えばここの図を見てみて：https://blog.davidv.dev/posts/ipvs-lb/" userName="deivid" createdAt="2025-04-12T22:02:34" color="#ff5c5c">}}

{{<matomeQuote body="＞Unkeyのランディングページがいい例だね。<br>そのページ、めっちゃ高性能なM1 Proのラップトップでもラグくて気持ち悪くなるし、ロードも遅い。ただの派手な線のためだけに？開発者としては中身を重視した製品を選ぶな。見た目も大事だけど、これはトレードオフがうまくできてないと思うな。" userName="Voultapher" createdAt="2025-04-13T06:50:51" color="">}}

{{<matomeQuote body="最新のChrome、MBP i7 2019だけど、マジでめっちゃラグいんだけど。" userName="deads1mple" createdAt="2025-04-14T09:36:41" color="">}}

{{<matomeQuote body="めっちゃ高性能なM1 Proのラップトップでもラグいってマジか。<br>AppleのMシリーズチップって、そんなにパワフルじゃないけど、電力効率は良いんだよね。もっと速いラップトップはたくさんあるけど、電力消費が激しいんだよね。俺のAMDのラップトップはM1 Proよりずっと性能良いけど、電気めっちゃ食うし。Unkeyのウェブサイトを見るのに問題なかったよ。Safari使ってるなら、それが問題かも。Safariマジでクソだし。" userName="leptons" createdAt="2025-04-13T17:31:32" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Chromeだけど、最初のフルスクロールの後、ページはまあまあだったよ。でも、最初のスクロールはかなりラグかった。ちなみに、こういうのには敏感なんだ。<br>＞AppleのMシリーズチップは、そんなにパワフルじゃないけど、電力効率はとても良い。<br>＞シングルスレッドの性能に関しては、両方ともそうなんだよね。特にIPCはすごい。例えばhttps://github.com/Voultapher/sort-research-rs/blob/main/wri...を見てみて。<br>＞同じinstructions per cycle (IPC)で、命令からサイクルへのマッピングが同じだと仮定すると、Zen 3はクロック周波数によってFirestormより約1.53倍速いはずだ。しかし、Zen 3と同じ年にリリースされたマイクロアーキテクチャは、分岐予測の誤りの影響が最小限に抑えられた場合、絶対的なスループットの点でZen 3を上回ることから、ほぼそれに匹敵するまでになっている。<br>最新世代のPコアは、STパフォーマンスにおいて単純に比類なき性能を発揮している。M4コアはGeekbench STで4kポイントを達成できるが、AMDの最高のデスクトップ製品は、はるかに高いクロック周波数で約3.5kポイントを達成する。ウェブブラウジングではSTパフォーマンスが重要なんだ。" userName="Voultapher" createdAt="2025-04-13T20:09:25" color="#ff33a1">}}

{{<matomeQuote body="それってAppleの実装の問題じゃね？ 古い9世代i5のFirefoxでは問題ないけど。" userName="RobotToaster" createdAt="2025-04-13T07:43:29" color="">}}

{{<matomeQuote body="少数派かもしれないけど、SVGよりずっと機能が少ない、同じくらい人気のあるベクター描画フォーマットがあればいいのにって思うんだよね。プロジェクトでベクター描画をサポートしたいとき、SVGをサポートするのが一番簡単な方法だけど…それって実質的にブラウザを持ち込むのと同じことじゃん。最小限の代替案って何？" userName="yowzadave" createdAt="2025-04-15T18:17:50" color="">}}

{{<matomeQuote body="SVGはHTMLによく似ている気がする。特にアニメーションが絡むとね。最初はすごく良くてシンプルで、ちゃんと仕事をして、基本的なビューア（コンバーターやエディターも）で扱えて、簡単に生成できる。CSSやJSを使えばさらに機能が増えるけど、それも良さそうに見える。でも、シンプルさがなくなり、完全な機能の幅広いサポートや互換性（部分的なサポートや、さまざまな状況での予期しない動作が原因）も失われる。アニメーションが必要な場合はまだ良い選択肢に見えるけど、不必要な場合はSVGでアニメーションを使うのは避けたい。" userName="defanor" createdAt="2025-04-13T07:31:38" color="">}}

{{<matomeQuote body="最高の記事だね。サイトのデザインも最高。<br>SVGがこれほど長い間存在しているのに、その潜在能力はまだ十分に引き出されていないように感じる。機能的なHTML、CSS、JS（基本的にまったく異なるHTMLドキュメント）をこんなに簡単にカプセル化できる要素は他に思いつかない。" userName="fitsumbelay" createdAt="2025-04-13T00:21:26" color="#38d3d3">}}

{{<matomeQuote body="SVGの良いところは、DOMに接続できること、CSSを使えること、canvasよりデバッグが簡単なこと。パフォーマンスだけが、プロットやマッピングのチャート用の宣言的なコードを作るのを妨げている。" userName="gocsjess" createdAt="2025-04-13T07:20:29" color="#38d3d3">}}

{{<matomeQuote body="どんなパフォーマンスの問題に遭遇した？ 10年前はフィルターを避ければそこそこ良かったけど、それも改善されたよね。" userName="notnullorvoid" createdAt="2025-04-13T16:15:26" color="">}}

{{<matomeQuote body="その時は、パスが多いSVGはアプリを遅くすると思ってた。d3とgeojsonをいじってた頃の話。" userName="gocsjess" createdAt="2025-04-18T11:35:23" color="">}}

{{<matomeQuote body="SVGとCSSアニメーションを一緒に使いたかったんだね。" userName="gocsjess" createdAt="2025-04-18T11:39:13" color="">}}

{{<matomeQuote body="SVGで作ったもの。<br>Sun Clock: https://sunclock.net<br>Degrees What?: https://degreeswhat.com" userName="perilunar" createdAt="2025-04-13T03:36:52" color="#785bff">}}

{{<matomeQuote body="これいいね！SVGって過小評価されてると思うんだよね。特にdiffusionベースの画像生成の時代には。<br>https://rorads.github.io/technical/quick-ai-reflection-on-sv... で軽く書いたよ。" userName="rorads" createdAt="2025-04-13T17:33:32" color="#785bff">}}

{{<matomeQuote body="すごいねー。影響されちゃった。もっと勉強しなきゃ！SVGアニメーションに興味があったら、Adobe Illustratorからアニメーションを作るプログラムを書いたから見てみて。<br>https://svija.com/en/animation" userName="AndrewSwift" createdAt="2025-04-12T19:35:47" color="#ff5c5c">}}

{{<matomeQuote body="昔、JavaScriptでSVGを使ってテトリスを作ったことがあるんだ。グラフィックもきれいで、アニメーションもスムーズだった。他にSVGを使ってる人を知らなかったんだよね。<br>SteamでPro Office Calculatorっていうゲームも作ったんだけど、Doomみたいな3Dエンジンが入っててInkscapeをマップエディタとして使ったんだ。マップの例はここにあるよ。<br>https://github.com/robjinman/pro_office_calc/blob/develop/da..." userName="rjinman" createdAt="2025-04-13T17:33:05" color="#ff5733">}}

{{<matomeQuote body="Avaraを思い出すね。あれもMacDrawをレベルエディタとして使ってたんだ。めっちゃクール！" userName="enduser" createdAt="2025-04-13T17:56:17" color="#785bff">}}

{{<matomeQuote body="知られていない機能をうまく使うことで、境界線を押し広げたり、壊したりできるのを見るのは面白いね。とは言え、今はCSSの方がいいかもしれないけど。<br>SVGでインジェクション攻撃ができるってペンテスターが見つけたんだよね。クライアントがSVGを使いたいって言い出した頃だったから対応したよ。" userName="paulryanrogers" createdAt="2025-04-13T14:17:03" color="">}}

{{<matomeQuote body="SVGってCSSでアニメーションできるんだね。へー！<br>AsteroidsみたいなベクターグラフィックスのゲームをSVGとアニメーションで再現した人っているのかな？JSで小惑星の形とか方向を変える必要はあるけど。" userName="kmoser" createdAt="2025-04-12T18:00:58" color="#38d3d3">}}

{{<matomeQuote body="バックエンドにいた時にブックマークしてた動画。<br>https://youtube.com/watch?v=wc8ovZZ78SY<br>The Secret of Kellsを子供に見せた直後にこれを見つけて、過度に華やかなウェブサイトについての恐ろしいアイデアを思いついたんだよね。ほとんど思いとどまったけど。" userName="hinkley" createdAt="2025-04-12T18:19:08" color="">}}

{{<matomeQuote body="canvasを使った方がパフォーマンスはいいけど、SVGでやるのも面白いかもね。" userName="mkoryak" createdAt="2025-04-12T18:12:10" color="">}}

{{<matomeQuote body="SVGってa11yしやすいんだよね。しかも、ariaとの相乗効果でテスト自動化も楽になるってのが見落とされがち。画面読み上げしにくいコードって、E2Eテストとかも正確にやりにくいもんね。" userName="hinkley" createdAt="2025-04-12T18:24:33" color="#38d3d3">}}

{{<matomeQuote body="最近は全然やってないけど、SVGマジで好き。2017年に蓄電池の会社で面白いプロジェクトやったんだよね。バッテリーの状態とかをグラフでレポートするやつ。Sql Serverの.Net拡張機能使って、データベースからグラフィック生成してたんだ。" userName="intrasight" createdAt="2025-04-12T21:51:18" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
