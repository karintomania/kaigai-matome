+++
date = '2025-07-20T00:00:00'
months = '2025/07'
draft = false
title = 'XMLUIはなぜ廃れた？複雑なマークアップUIがHTMLに敗れた理由'
tags = ["UI開発", "XML", "HTML", "Web開発", "マークアップUI"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> XMLUIはなぜ廃れた？複雑なマークアップUIがHTMLに敗れた理由

引用元：[https://news.ycombinator.com/item?id=44625292](https://news.ycombinator.com/item?id=44625292)




{{<matomeQuote body="Polymerの`iron-ajax`（2014年）、Adobe Flex（今はApache Royale）、MicrosoftのXAML、NetUI、FlexUIとか、昔も似たような試みはあったんだ。https://github.com/PolymerElements/iron-ajax<br>https://apache.github.io/royale-docs/features/mxml<br>でも、理論上は良く見えても、実際はJSXみたいなコード優先の解決策より、マークアップの抽象化は初心者にも使いにくかったみたいだね。" userName="esprehn" createdAt="2025/07/20 21:07:45" color="#ff5733">}}




{{<matomeQuote body="MozillaもXULでアプリを作ってたんだけど、20年も経って彼ら自身が使うのをやめたんだよね。" userName="nedt" createdAt="2025/07/21 08:32:16" color="#785bff">}}




{{<matomeQuote body="前の職場で2006年頃、FirefoxのプラグインでカスタムXUL UIを使ってたんだけど、これがすごく複雑で、数千行のXMLとJSがあったんだ。XULは使うのも保守するのも本当に嫌だったよ。今でも全く恋しくないね。結局標準のWebアプリに書き換えたら、書き手は少し遅くなったけど、慣れてくれたよ。" userName="RebeccaTheDev" createdAt="2025/07/21 16:04:24" color="#785bff">}}




{{<matomeQuote body="俺が知る限り、MozillaはまだブラウザのUIにXULを使ってるよ。" userName="okanat" createdAt="2025/07/21 10:40:33" color="">}}




{{<matomeQuote body="ポップアップメニューとかHTMLじゃできない一部の機能で使われてるけど、ほとんどはHTMLになってるよ。XULはかなり非推奨だね。XBLをなくしたから、XULコンポーネントはWeb Componentsになったんだ。https://briangrinstead.com/blog/firefox-webcomponents/" userName="joewalker" createdAt="2025/07/21 11:19:40" color="#ff5733">}}




{{<matomeQuote body="今はXULとHTMLの混合だよ。XULでしかできなかったことのほとんどがHTMLでできるようになったし、HTMLを知ってる開発者を見つけやすいのが理由だね。" userName="notpushkin" createdAt="2025/07/21 10:55:07" color="#38d3d3">}}




{{<matomeQuote body="＞HTMLを知ってる開発者を見つけやすい<br>というより、HTMLの浅い知識の持ち主って感じだね。俺は、HTMLをまともに理解するよりXULをまともに理解する方が開発者にとってはるかに時間がかからないって思うんだけどね。" userName="aleph_minus_one" createdAt="2025/07/21 12:48:29" color="">}}




{{<matomeQuote body="同意するよ。ただ、ちゃんとHTMLを知ってる開発者が常にいる一方で、XULを知ってる人は少ないのも事実なんだ。HTMLの知識をXULに適用するのは簡単だろうけど、HTMLとXULを混ぜて使えるんだから、みんなが慣れてるものを使わせればいいんじゃないかな？<br>深く調べてないんだけど、昔userChrome.cssをいじってたから知ってるんだ。このFirefox.htmlの発表も関係あるかもね: https://web.archive.org/web/20230402033035/https://mail.mozi..." userName="notpushkin" createdAt="2025/07/23 04:26:36" color="#38d3d3">}}




{{<matomeQuote body="Adobe Flexは本当に良かったね。あれでいくつか良いデスクトップアプリを出荷したけど、Electronよりずっと良い体験だったのを覚えてるよ。" userName="herval" createdAt="2025/07/21 02:36:28" color="#ff5c5c">}}




{{<matomeQuote body="パフォーマンス問題を回避するには、コンポーネントの内部構造を理解する必要があったんだ。一番の問題は、ほとんどのコンテナがデフォルトでスクロール可能で、これがとんでもない更新コストをもたらしたこと。俺の仕事は、ビジュアル開発者がmxmlで書いたコンポーネントをAS3のカスタムコンポーネントに変換することだった。ランタイムモデルをよく知ってたから、コードで複雑なコンポーネントを組めたんだ。これらは、UIComponentの多重ネストを避けて、UI更新ループに引っかからないってメリットがあった。いやー、いい時代だったね！" userName="larusso" createdAt="2025/07/21 04:08:34" color="#ff5c5c">}}




{{<matomeQuote body="XAMLはMicrosoftのプラットフォームでは今もバリバリ現役だし、あなたの主張とは違って、すごくうまく動いてるよ。なんならWPF（XAMLベースの元祖フレームワーク）は、クロスプラットフォームを求めないなら、いまだに最高のUIフレームワークだって言っちゃうね。" userName="int_19h" createdAt="2025/07/21 19:24:08" color="#ff33a1">}}




{{<matomeQuote body="これ、Angularを思い出すから面白いね。だって、Angularもマークアップだらけで、裏のコードが別のファイルにあったからさ。要するに、ReactをラップしてAngularを作ったってことだね。" userName="hahn-kev" createdAt="2025/07/21 02:02:28" color="">}}




{{<matomeQuote body="俺にとってAngularは登場した時点で終わってたね。HTML属性にプログラミング言語の構文をゴリゴリ入れるなんて狂ってるだろ。Reactが楽勝したのはまさに逆を選んだからだ。UI構文をまるごとプログラミング言語の中に入れた。どっちも欠点はあるけど、Angularがどうして使いやすいと思われたのか、いまだに疑問だよ。Vueみたいにテンプレートにプログラミング構文を足したがる人がいるみたいだけど、テンプレートがどんどん強力な構文を求めるようになるのは必然だろ...そして爆発だ。" userName="apsurd" createdAt="2025/07/21 02:36:01" color="#ff5733">}}




{{<matomeQuote body="Angularがユーザーを掴んだのは、テンプレートを.htmlと呼んで、プログラミングを知らないデザイナーでも作業できると誤解させたからだと思う。でも、そのHTMLには非標準属性が多く、デザイナーは罠にはまるんだ。これはミドルマネジメントが効率を求めてAngularを選ぶ「罠」だったね。<br>ReactはJS／JSXを使うから、HTML専門のデザイナーは触りたがらない。この状況でAngularが「ただのHTML」として選ばれるけど、実際は複雑なテンプレート言語で、一度ハマるとサンクコストの誤謬で抜け出せない。Vueは.vueを使うから、こんな「騙し討ち」じゃない。" userName="WorldMaker" createdAt="2025/07/21 14:54:00" color="#785bff">}}




{{<matomeQuote body="最初の職場で、一番の先輩で俺のメンターがFlexをベタ褒めしてて、次世代の主流になるって豪語してたんだ。当時、俺はスタイルが融通利かないし、全然ネイティブ感がないなと思ってたよ。<br>正直、Flexにも一瞬の輝きはあった。ウェブよりはデスクトップアプリでね。インストーラーがFlexでよく作られてたのを覚えてる。iPhoneが登場して、ウェブで本格的に普及する前にとどめを刺されちゃったけどな。" userName="donatj" createdAt="2025/07/21 10:22:56" color="#ff5733">}}




{{<matomeQuote body="Jonさんは長いことこの業界にいるベテランで、話を聞く価値があるよ。この記事で一番大事なのは『Webコンポーネントは好きだけど、Reactが支配的で、昔のVisual Basicコンポーネントを使いこなせたような開発者にはアクセスしにくい』って部分だね。これが現状の『なぜ』を説明してるんだ。XMLUIがそういう開発者を助ける適切な抽象化なのかはまだ分からないけど、この試みは素晴らしいと思う！" userName="wiremine" createdAt="2025/07/20 21:15:10" color="#785bff">}}




{{<matomeQuote body="これ、面白いんだけど、このXMLUIってほとんどReact／JSXでまるごと実装できそうだよね。マークアップをざっと見た感じ、Reactとそんなにかけ離れてないし。CMSや開発者がプロジェクトごとに毎回作り直してる「ページをJSONで定義するDSL」と、あんまり変わらないように見えるよ。" userName="madeofpalk" createdAt="2025/07/21 09:34:37" color="">}}




{{<matomeQuote body="それ、Reactを使って実装されてるよ。<br>記事にも『XMLUIはReactとCSSをラップして、XMLマークアップでコンポーネントを提供してる』って書いてあるじゃん。" userName="hundchenkatze" createdAt="2025/07/21 15:01:55" color="">}}




{{<matomeQuote body="今のコードはJS evergreenブラウザでしか動かないんだって。VBがWindowsでしか動かず、適切なDLLがないとダメだったのと同じだね。" userName="1oooqooq" createdAt="2025/07/20 22:10:53" color="">}}




{{<matomeQuote body="WindowsはJS対応ブラウザよりプラットフォームが狭いし、その関連性も下がる一方だよ。だからプラットフォームの選択は合ってるんだ。GUI対応デバイスで、FirefoxやSafari、Chromium派生版が動かないけど、対処したいデバイスって何かある？" userName="nine_k" createdAt="2025/07/20 22:43:34" color="#ff5733">}}




{{<matomeQuote body="じゃあ、まさにVBと同じってこと？（たしかmsvbvm DLLが必要だったよね）" userName="lmz" createdAt="2025/07/21 00:07:56" color="">}}




{{<matomeQuote body="VBRUN300.DLL" userName="schnable" createdAt="2025/07/21 11:26:18" color="">}}




{{<matomeQuote body="KDEのオープンソース貢献者として7年間Qt C++を書いてたよ。QtWidgetsの.uiファイル、あれも特定スキーマのカスタムXMLファイルだったのを思い出すね。その後QtはQMLを導入したけど、個人的には分かりにくくて、だんだんQtに興味を失っちゃったんだ。でも、UI定義にXMLを使うのはまだ理にかなってると思うし、大規模な環境で使われ続けてるのは理解できるよ。" userName="mnafees" createdAt="2025/07/20 16:03:11" color="#ff5733">}}




{{<matomeQuote body="私たちの中には、今でもC++と.uiファイルだけでQtプログラミングをしてる人がいるよ。QMLに切り替える気にならなかったんだ。それだけの努力をする価値があるほどメリットがあるとは思えなかったからね。" userName="hermitcrab" createdAt="2025/07/20 16:55:17" color="#45d325">}}




{{<matomeQuote body="実験自動化とか小規模ツールのUIフレームワークを、Pythonバインディングを使ったQt Widgetsで書いてるんだけど（https://puzzlepiece.readthedocs.io）、すごくうまくいってるよ！APIも好きだし、すぐにクロスプラットフォーム対応なのがすごく便利なんだ。Windowsだと見た目がちょっと足りない気もするけど、ぶっちゃけアプリの utilitarian な見た目も嫌いじゃないな。" userName="jdranczewski" createdAt="2025/07/21 07:22:45" color="#ff5733">}}




{{<matomeQuote body="Windowsだと、’Fusion’スタイルが標準のWindowsスタイルよりちょっと洗練されて見えると個人的には思うよ。" userName="hermitcrab" createdAt="2025/07/21 08:39:53" color="">}}




{{<matomeQuote body="いつもhttps://qskinny.github.io/ をチェックしたいと思ってたんだ。魅力的だしC++にこだわってるみたいだよ。" userName="happyweasel" createdAt="2025/07/21 10:34:45" color="#45d325">}}




{{<matomeQuote body="へえ、それすごいね。でもLinux以外の世界でQtって最近どうなんだろう？" userName="mnafees" createdAt="2025/07/20 20:32:24" color="">}}




{{<matomeQuote body="この週末、Gemini ProにPython Qtアプリを作ってもらったんだ。（GコードをCNCマシンやレーザーカッターに送るシリアルファイル送信アプリね。）開発のほとんどはWindowsでやったけど、このアプリは主要な3つのプラットフォーム全部で全く同じように動くよ。最終的にはUIを専用の.uiファイルに抽出するようGeminiに頼んだら、それもやってくれたんだ。結果できたアプリは、俺が自分でコードを書いた前のアプリよりずっとよくて、色々な競合状態とか難しい問題を俺よりはるかに速く処理してくれたんだよね。もしその気になれば、GeminiにC++にポートさせることもできるよ。（Geminiがポイントじゃなくて、俺が自分でやることをスピードアップしてくれるって話ね。）" userName="dekhn" createdAt="2025/07/20 22:07:12" color="#ff33a1">}}




{{<matomeQuote body="Windowsではいい感じ。Macではかなりいいけど、100%完璧な見た目にはならないかな。macOS 26みたいな透過スタイルにQtがどれだけ対応できるかはちょっと怪しいね。" userName="hermitcrab" createdAt="2025/07/20 20:41:07" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="M&E（メディア＆エンターテイメント）のVFXやアニメーション分野で広く使われてる商用ツールや社内ツールのほとんどはQtベースなんだよね。従来のデスクトップ開発者との大きな違いはデザインに対する姿勢で、この業界は各プラットフォームのUI/UXガイドラインに従うよりも、プラットフォーム間で同じアプリ体験を提供することを選んでるよ。<br>例：Autodesk Maya, 3DS Max, Mudbox, Foundry Nuke, Mari, Katana, SideFX Houdini, Substance Painter, Designer" userName="mroche" createdAt="2025/07/21 07:01:14" color="#45d325">}}




{{<matomeQuote body="BlizzardのゲームランチャーってQt使ってるんだっけ？俺にとってBlizzardはいつもソフトウェアやゲームのUIの実装が最高なんだよね。何かQtで素晴らしいって言えるプロジェクトがあるか気になるな。" userName="mentos" createdAt="2025/07/20 19:27:37" color="">}}




{{<matomeQuote body="BlizzardがQtを使ってるって知らなかった！良いQtアプリだと、VirtualBoxが一番好きだな。" userName="mnafees" createdAt="2025/07/20 20:34:28" color="">}}




{{<matomeQuote body="GOG GalaxyもQtを使ってるらしいよ。数年前ゲーム開発スタジオで働いてたんだけど、そこのゲームエンジンのエディタもQtで書かれてたんだ。" userName="badsectoracula" createdAt="2025/07/21 10:51:01" color="#785bff">}}




{{<matomeQuote body="TelegramデスクトップアプリもQt Widgetsを使ってるよ。" userName="felipefar" createdAt="2025/07/21 01:55:09" color="">}}




{{<matomeQuote body="XMLUIはデザイナーの機能の3〜4%しか持ってないんだって。もう一度見る価値があると思えるまでには、まず30年の差を埋めないとね。" userName="bmn__" createdAt="2025/07/21 09:29:24" color="#38d3d3">}}




{{<matomeQuote body="「あはは、HTMLを再発明しちゃったよ笑」っていう立場と、「いやこれ、すぐにでも使えそうじゃん」っていう、一見矛盾する両方の考えを同時に持ってるんだ。<br>人間って多面的なんだね。" userName="cgannett" createdAt="2025/07/20 17:40:35" color="">}}




{{<matomeQuote body="ヘーゲルの言葉だね。「矛盾を内包するものだけが生きている」ってさ。" userName="rcbdev" createdAt="2025/07/21 07:41:19" color="">}}




{{<matomeQuote body="この概念を教えてくれてありがとう。ウォルト・ホイットマンの作品は知らなかったよ。「僕は矛盾してる？いいさ、じゃあ矛盾してるんだ。」って感じだね。" userName="b_e_n_t_o_n" createdAt="2025/07/20 19:33:50" color="">}}




{{<matomeQuote body="素晴らしいね。結局のところ、すぐに役立つかどうかが大事だろ？そう思う人たちにとってね。" userName="judell" createdAt="2025/07/20 18:33:54" color="">}}




{{<matomeQuote body="俺的に最高のGUIアプローチはJUCEだね。UI要素は全部C++クラスで、描画関数を持ってる。新しいUIは他の要素を組み合わせて作るんだ。ボタンの状態も描画関数でif…else…で処理するし、Metal/OpenGL/DirectXも使う。命令型だからブレークポイントで動きが見えるし、レンダリング状態も出力できる。ほぼピクセル完璧だよ。ここが推してるXML系のUIは、フレームワーク依存の「魔法」で俺は避けてる。3回フレームワーク更新したらレイアウトがずれるのが目に見えてるし、Electronだって古い技術使ってるからCSSが変わらないってだけでマシなだけさ。" userName="fxtentacle" createdAt="2025/07/20 15:42:18" color="#ff33a1">}}




{{<matomeQuote body="JUCEはまだだけど、Qtで全部C++クラスだった頃が懐かしいな。みんなテンプレーティング言語がいいって言うけど、俺はC++でオブジェクトを直接操作する方が断然読みやすい。ファイルにバラバラになったMustacheやXMLの入れ子構文をいじるよりね。結局テンプレーティング言語って、「モジュールが正しい親に埋め込まれてるか？」って確認するだけだろ？" userName="righthand" createdAt="2025/07/20 16:04:14" color="#ff5c5c">}}




{{<matomeQuote body="俺はJUCEを全プラットフォーム対応のGUI/高性能アプリ開発環境に完全に切り替えたよ。オーディオ分野で7年使ってきて、もう何にでも使えるって境地に達した。CMakeもそんなにいじらないで済むし、JUCEとCIのパイプラインが一度できちゃえば可能性は無限大。とはいえ、JUCEのGUIコードをLazarusみたいなフロントエンドに置いて、Luaで処理するのも楽しそうって最近よく思うんだ。LuaとC++のハイブリッドで色々できたら最高だよね。" userName="MomsAVoxell" createdAt="2025/07/20 18:45:03" color="#38d3d3">}}




{{<matomeQuote body="JUCEって、まだ「Made with JUCE」のポップアップなしで無料/オープンソースで使えないの？あれなくなった？" userName="jonpalmisc" createdAt="2025/07/21 00:29:46" color="#785bff">}}




{{<matomeQuote body="JUCEをAGPLv3ライセンスで無料利用するには、スプラッシュ画面は必須条件だよ。特に商用ライセンス買わないでオープンソースのプロジェクトやプラグインを配布する時はね。" userName="aa-jv" createdAt="2025/07/21 08:31:07" color="#ff5c5c">}}




{{<matomeQuote body="JUCEは知らなかったけど、Webプラットフォームみたいなものなんだね（juce::ComponentはDOMとかcanvas要素みたい）。XMLUIはJUCEの上に作られた宣言型UIシステム（GUI Magic、JIVE、VITRO）と比べた方が適切かも。宣言型と命令型のUIアプローチは両立しないわけじゃないし、SwiftUIとUIKitみたいに両方使うのもよくあることだよ。" userName="CharlesW" createdAt="2025/07/20 15:54:01" color="#38d3d3">}}




{{<matomeQuote body="JUCEは使ったことないけど、命令型アプローチは実装が大きくなりがちでも、何が起きてるか明確で完全に制御できるって意見には同意するよ。宣言型アプローチは常にエスケープハッチが必要だけど、それが開けにくくて使いにくいんだよね。" userName="b_e_n_t_o_n" createdAt="2025/07/20 19:46:34" color="#ff5c5c">}}




{{<matomeQuote body="Web開発者だけど、JUCEでUIを作るのはホントに大変だったな。Flexboxとか、グラフィック値の設定とか、paint()とresized()の挙動とか、全然わかんなかったんだ。多分俺のせいだけど、結局JUCE 8の新しいWebViewオプションに切り替えて、マジで安心したよ。" userName="conradfr" createdAt="2025/07/21 06:55:07" color="#785bff">}}




{{<matomeQuote body="JUCE 8のWebViewはひどいね。この素晴らしいフレームワークを台無しにしてる。Web出身だとJUCEのFlexboxやpaint()/resize()は「変」に感じるだろうけど、それがポイントなんだよ。GUIをフレームごとに更新するタイミングを自分で決められるし、高性能GUIにはこれが不可欠なんだ。最近はLLMにJUCE GUIの作業を任せると、かなり良い結果が出るって言われてるしね。" userName="aa-jv" createdAt="2025/07/21 10:50:31" color="#45d325">}}




{{<matomeQuote body="そうかもだけど、俺はLLMにJUCE APIのこと聞いたら、かなりのハルシネーション（嘘）をつかれたんだ。動かないコードばっか作って、架空の関数とか発明しまくってさ（あの「そうですね！」エンドレスループね）。俺のプロジェクトは普通のオーディオプラグインじゃないから、グラフィックAPIの恩恵も他の人ほどじゃなかったし。でもWebViewが「abomination」だとは思わないな。むしろすごく小さいAPIでちゃんと動くし、完全にオプションで元々のグラフィックAPIを置き換えるわけじゃないんだから。" userName="conradfr" createdAt="2025/07/21 12:47:18" color="">}}




{{<matomeQuote body="WebViewはリアルタイムUIには向いてないね。Webの悪い習慣をリアルタイム環境に持ち込む原因になるし。まあ、オプションなのは利点だと思うけどね。" userName="aa-jv" createdAt="2025/07/22 07:24:43" color="">}}




{{<matomeQuote body="JUCEは超遅いし、パフォーマンスを出すにはかなりのノウハウが必要なんだ。特に、リアルタイムのアニメーションや表示が欲しいなら、コンポーネントベースじゃ何もできないね。それに、独自のC++モジュールシステムとビルド戦略もあって、高速化が難しく、JUCEをライブラリとして使うのがほぼ不可能だから、CIで依存関係として何度も再コンパイルすることになるんだ（それが積み重なると大変だよ）。" userName="duped" createdAt="2025/07/21 02:59:28" color="#ff5733">}}




{{<matomeQuote body="React自体も最初はクラスベースだったんだ。長期的にはそっちの方が良かったのかもしれないね。コード量は確かに増えたけど、複雑さは少なかった気がするな。" userName="ricardobeat" createdAt="2025/07/21 13:38:18" color="">}}




{{<matomeQuote body="これは間違いなく議論の余地があるね。俺はコンポーザブルな関数モデルがかなりよく理解できるし、Hooksを使えばReactの基本を理解すればロジックをコンポーネントから非常にうまく、直感的に分離できるんだ。それに比べて、クラスコンポーネントは「マイルハイ」なコンポーネント、つまり全部がクラスの中に押し込まれることを助長したと思うし、それにはたくさんの大きな欠点があった。一番大きいのは保守性だね。でも、今日に至るまで、UIが「最後の詰め」っていう単純なルールをほとんどの人が理解してないと感じるな。開発者は今でもコンポーネントに必要以上に詰め込みすぎてるんだよ、関心事を分離するんじゃなくてね。" userName="no_wizard" createdAt="2025/07/21 17:03:11" color="#ff33a1">}}




{{<matomeQuote body="JUCEとアクセシビリティについて経験がある人、もっと詳しく教えてくれないかな？" userName="password4321" createdAt="2025/07/21 00:07:31" color="">}}




{{<matomeQuote body="俺の経験では、WindowsのNarrator、macOSとiOSのVoiceOver、AndroidのTalkBackで普通に動くよ。グラフィカルなコンポーネントエディタでラベルとかタブの順序とか設定できるから、それでスクリーンリーダーでもだいたいはちゃんと使えるようになるんだ。A+レベルで完璧に動かすには、複雑なコンポーネントならAccessibilityHandlerを実装するみたいな、もっと手作業が必要だけどね。でも、基本的なJUCEクラスは、どの「WebView内のJavaScript」GUIよりもずっと優れてるよ。だって、表示とスクリーンリーダーのテキストを自分で手動で調整できるんだからね。" userName="fxtentacle" createdAt="2025/07/21 08:17:45" color="#785bff">}}




{{<matomeQuote body="俺はSurgeってシンセサイザーの開発に関わったんだけど、これは（俺の知る限り）唯一完全にアクセシブルなシンセなんだ。これを作るために、JUCEのa11y（アクセシビリティ）機能と、すごく考え抜かれた設計をたくさん使ってるよ。うちには複数の目の不自由なユーザーもいるんだ。" userName="Blackthorn" createdAt="2025/07/21 01:51:30" color="#38d3d3">}}




{{<matomeQuote body="XSLTに全く触れてないのはどうなの？関係大ありだろ。あの頃からXMLの変換とかスタイリングを考えてない人たちも多いし、そこから今への大きな変化を理解するには興味深いのに。Jon UdellもXSLTについて書いてるし、これは意図的な決定だろうけど、理由がわかんねぇわ。<br>https://www.xml.com/pub/a/2003/08/13/udell.html" userName="cheschire" createdAt="2025/07/20 14:30:36" color="">}}




{{<matomeQuote body="XSLTってさ、結局は”元の作者しか触れない問題児”になるんだよね。なぜか知らないけど、すぐに複雑怪奇になるか、複雑性フェチが集まってくる。どっちにしろ、元の記事の趣旨には合わないだろうな。" userName="majewsky" createdAt="2025/07/20 16:19:38" color="#785bff">}}




{{<matomeQuote body="XSLTって、全部ワンライナーで処理しろって要求されるし、ライセンスの問題で古いバージョンに縛られてるから1999年から進化してないんだよ。俺の経験だと、ライセンス料を払う組織なんて見たことないしな。JavaScriptとかもっと使える言語を呼び出すのが改善策だけど、それじゃXSLT使う意味が薄れるよな。でもレガシープロジェクトから抜け出すのに役立つパターンだけど。" userName="Quarrelsome" createdAt="2025/07/20 16:41:44" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="JavaScriptでXMLの走査や変換をいちからやり直したら、結局XSLTが標準で提供してる再帰的なツリー走査とかノードを関数にマッピングするとか、99%同じことになるだけだよ。" userName="lolive" createdAt="2025/07/20 18:17:20" color="">}}




{{<matomeQuote body="多くの開発者は、ちょっとしたロジックを入れる「余白」が欲しいんだよ。でもXSLTにはそれが全然ない。息つく暇もなく入力から出力を出さないといけない。単純な1対1マッピングならいいけど、複雑になるとマジで保守が大変になる。" userName="Quarrelsome" createdAt="2025/07/20 20:29:24" color="#ff5c5c">}}




{{<matomeQuote body="ライセンス問題とか”ワンライナー”って何言ってんの？ブラウザがXSLT 1.0に限定されてるのはライセンスじゃなくて、単純に新しいバージョンを実装したがらなかっただけだろ。SaxonはJavaScript、C、Java、.NET向けにXSLT 3.0プロセッサを無料で提供してるから、モダンなXSLT開発に何の制限もないぜ。" userName="willseth" createdAt="2025/07/20 18:32:51" color="#ff5c5c">}}




{{<matomeQuote body="それは単純に違うね。XSLT 1.0で複雑なロジックを組むのは確かに難しいけど、関数型プログラミングみたいに考え方を変える必要があるだけだ。XSLT 2.0ではもっと命令的なロジックとか色々な機能が追加されて、かなり開発者フレンドリーになったんだぜ。" userName="willseth" createdAt="2025/07/20 23:21:42" color="">}}




{{<matomeQuote body="ライセンスってのは単なる摩擦の原因で、みんながXSLT 1.0から動かない理由だよ。ワンライナーっていうのは、実装に手続き型ロジックがないってこと。1対1のマッピングならいいけど、もっと複雑なシナリオだと開発者がソリューションを設計する「余白」がなくて、マジで大変なんだから。" userName="Quarrelsome" createdAt="2025/07/20 20:27:27" color="#785bff">}}




{{<matomeQuote body="XSLTは、この記事の導入部分にはたぶん関係ないだろ。この記事の目的は、現代の人たちに、こういうものがどうして良いのか説明することだし、XSLTを含めても、その考え方を”売る”役には立たないからね。" userName="danielvaughn" createdAt="2025/07/20 14:58:58" color="">}}




{{<matomeQuote body="ほとんどの組織が2.0に移行しないのが、XSLTがクソな大きな理由だね。関数型言語って言っても、Lispの方がXSLTよりマシだわ。XMLにガチガチに縛られてるし。XML処理するなら、XSLTより汎用言語でやる方が断然いいよ。" userName="Quarrelsome" createdAt="2025/07/20 23:35:07" color="#ff5733">}}




{{<matomeQuote body="ちょっと迷うな。提示された可視化は興味を引くかもだけど、XSLTは何かを解決する人には絶対役立つはず。最近XMLデータいじるだけじゃなくて、上司に”売り込む”必要も感じたんだ。言いたいことは、あんたの言ってることはわかるし、XSLTもかなり役立つと思うってこと。" userName="A4ET8a8uTh0_v2" createdAt="2025/07/20 15:18:26" color="">}}




{{<matomeQuote body="XSLTを遅らせてるって言ってる具体的なライセンス問題って何？オープン仕様だし、誰でも実装できるし、MPLライセンスの無料プロセッサもあるだろ。あと、全部ワンライナーで処理しなきゃいけないって具体的にどういう意味？そんなXSLTプロセッサ使ったことないんだけど。" userName="willseth" createdAt="2025/07/20 23:09:05" color="#38d3d3">}}




{{<matomeQuote body="具体的な根拠もなく主張ばっかして、ゴールもコロコロ変えてるね。もし根拠出したとしても、間違ってるよ。XSLTはライセンスで邪魔されてないし、“ワンライナー必須”じゃないし、3.0からはJSONもサポートしてる。3.0はもう10年近く前からあるんだから。" userName="willseth" createdAt="2025/07/20 23:56:53" color="#ff33a1">}}




{{<matomeQuote body="ああ、確かに。そのサイトにはXSLTとの比較がどこかに載ってるべきだね。あんたが指摘したように、歴史を知ってる人なら誰でも疑問に思うはず。個人的にはXSLT使ったアプリは書いたことないけど、ちょっと調べてみた。限られた理解だけど、XSLTは初期ページロードとかSSRで使う変換用に設計されたんだと思う。Reactみたいな動的なクライアント操作には、毎回ドキュメント全体作り直す設計だから十分じゃないかもね。これ、間違ってるかもだから、詳しい人教えて！" userName="danielvaughn" createdAt="2025/07/20 15:50:36" color="#ff33a1">}}




{{<matomeQuote body="いいツールセット使うにはv2が必要で、v2は金かかるんだ。組織になかったり、購入が面倒だったり、インストールに摩擦があったりするかもね。それがみんなが1.0に固執した要因かも。約束通り普及しなかったのはそれが理由だ。宣言型言語だから統合も難しい。他のサービスとXSLTを統合するのは、PythonとかJavaScriptみたいな汎用言語と比べて、かなり頭を悩ませることがあるんだよ。" userName="Quarrelsome" createdAt="2025/07/20 23:31:11" color="#45d325">}}




{{<matomeQuote body="なんでJSONで使いたがるんだよ。XSLTはライセンスが足枷になったんだ。だからみんな1.0をサポートしてて、2.0をサポートしてるものはほとんどないんだよ。もし2.0が無料でリリースされてたら、みんな2.0を使ってたはずだ。" userName="Quarrelsome" createdAt="2025/07/21 01:08:00" color="">}}




{{<matomeQuote body="ライセンス費用について誤解してるよ、もう何回も説明しただろ。どういう風に統合が難しいって？XSLTは得意なことに特化した言語であって、Pythonの代わりとか汎用言語になるようには作られてないんだ。それでも、ごちゃごちゃして保守しにくい命令型コードの山が、シンプルなXSLTに置き換えられるような、データ関連のタスクはたくさんあるんだぞ。" userName="willseth" createdAt="2025/07/20 23:47:53" color="#ff33a1">}}




{{<matomeQuote body="なんで間違ったことを何度も主張する代わりに、Googleで調べないんだよ？<br>https://www.npmjs.com/package/saxon-js<br>https://github.com/Saxonica/Saxon-HE" userName="willseth" createdAt="2025/07/21 15:34:56" color="#785bff">}}




{{<matomeQuote body="じゃあ、“違う”って言うだけじゃなくて、なんで.NETのXSLTプラットフォームが1.0に根ざしてるのか教えてくれよ。俺の理解だと、ライセンスが.NETがネイティブで1.0に留まってる理由の一因だったんだろ。2.0への移行には特定の摩擦があったように見えるけど、なんで？念のため言うけど、今の話じゃなくて、.NETがXSLT 2.0を採用できたのにしなかった、当時の話をしてるんだ。" userName="Quarrelsome" createdAt="2025/07/21 16:02:22" color="#785bff">}}




{{<matomeQuote body="基本的に正しいけど、これは哲学的な選択じゃない。Ajaxが流行る前にXSLTは進化を止めて、セキュリティ上の理由でほとんどのブラウザから消えたんだ。だから現代のユースケース向けエンジンは作られなかった。皮肉なことに、セマンティックウェブは当初、ブラウザがXMLデータを呼び出してXSLTで表示するモデルで構築されるはずだった。このモデルが普及しなかったのは、正直、XSLTがマジでむずいからだよ。" userName="toyg" createdAt="2025/07/20 18:52:34" color="#45d325">}}




{{<matomeQuote body=".NETがXSLT 2.0に移行しなかったのは需要がなかったからだよ。LINQ、特にXLINQが十分な代替だったし、VBにはXMLを扱う特別な構文まであって、XSLTより簡潔だったりしたんだ。XSLT 2+がライセンスで制限されてたってのは全然違う。俺は2006年にXSLT 2.0とXQueryをコード生成に使ってた会社にいたけど、Saxonの無料版で問題なく使えてたよ。有料版は最適化とか静的型チェックとかあったけど、俺たちには不要だったんだ。<br>結局、XMLが主要なデータ交換フォーマットだった頃はXSLT 1.0で大体事足りたし、その後JSONが主流になったから、フレームワークベンダーが最新の標準に追従するインセンティブが減ったんだよね。特にXSLT 2.0はデータモデルが違うとか、既存のXSLT 1.0プロセッサと非互換な部分が多くて、大規模な再設計が必要だったのも大きい。" userName="int_19h" createdAt="2025/07/21 19:34:17" color="#ff33a1">}}




{{<matomeQuote body="XSLTが「排除」されたとは思わないな。だって、今のブラウザでXSLT 1.0を扱えないものなんてある？<br>それに、仕様自体が進化を止めたわけじゃないんだ。問題は、XSLT 2+が採用される前にブラウザ側がこの技術を非推奨にしちゃったことなんだよね。" userName="int_19h" createdAt="2025/07/21 19:36:36" color="">}}




{{<matomeQuote body="利用できるXSLT変換エンジンのパフォーマンスは、俺にとって大きな考慮事項だな。特にホットリロードとか、高速なイテレーションをサポートする文脈ではね。" userName="sheepscreek" createdAt="2025/07/20 14:59:17" color="">}}




{{<matomeQuote body="どこまで歴史に触れるべきか悩んだんだ。俺は過去じゃなくて未来を見たいんだよ。今回の発表の目的は、みんなにこのツールを試してもらって、必要なユーザーインターフェースを構築するのに生産的な方法かどうか、自分で確かめてもらうことなんだから。" userName="judell" createdAt="2025/07/20 18:37:12" color="#38d3d3">}}




{{<matomeQuote body="「どのモダンブラウザがXSLT 1.0を扱えない？」って話だけど、「モダンブラウザ」の定義によるけど、MSIEとChrome前のEdgeはMSXMLが同梱されなくなって、ある時点でサポートを失ってたはずだよ。今の状況は正直知らないけど、FirefoxももうネイティブXSLTはやってないはずだ（JavaScriptでできるけど、一手間増えるだろ）。" userName="toyg" createdAt="2025/07/22 14:51:07" color="">}}




{{<matomeQuote body="ドキュメント全体を再作成するのがXSLTの一般的な使い方だったけど、それは実装の詳細であって、コンポーネントを生成するXSLTもほぼ同じくらい簡単に書けるんだ。XHTMLコンポーネントを出力してvdomを更新することもできる。一種の抽象化漏れだけど、レンダリングXSLTを再利用したいなら悪いトレードオフじゃないね。あるいは、XSLT 3.0はJSONも生成（そして消費！）できるから、XMLを従来のReactアプリに橋渡ししたり、JSONを処理する手段としても使えるんだ。" userName="willseth" createdAt="2025/07/20 18:54:39" color="#ff5c5c">}}




{{<matomeQuote body="oleh kiselyovのSXML/SSAXを知ってから、XMLを扱う方法がすごく素晴らしくて、XSLTは完全にやめちゃったよ。SSAXは俺が今まで使ったXMLパーサーの中で多分最高だね。" userName="bjoli" createdAt="2025/07/20 19:39:13" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
