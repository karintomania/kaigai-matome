+++
date = '2025-05-17T00:00:00'
months = '2025/05'
draft = false
title = 'CSSでブラウザがコントラスト色を自動選択！驚きの方法とは？'
tags = ["CSS", "ブラウザ", "カラー", "コントラスト", "アクセシビリティ"]
featureimage = 'thumbnails/orange3.jpg'
+++

> CSSでブラウザがコントラスト色を自動選択！驚きの方法とは？

引用元：[https://news.ycombinator.com/item?id=44015367](https://news.ycombinator.com/item?id=44015367)




{{<matomeQuote body="この記事の問題について、inclusivecolors.comっていうツールを作ってるよ。色のペアがWCAG/ACPAコントラストになるパレットを作る手助けをするんだ（デスクトップ版はもっと機能がある）。一つのやり方として、明るさ別に100から900までの色のスウォッチを作るの。特定の明るさの組み合わせで、例えば700番が100番と必ずコントラストがつくように設計できるんだ。<br>そうすれば、いちいちチェックしなくてもコントラストがつく組み合わせがわかる。<br>Contrastメニューでは、APCAアルゴリズムがWCAGよりどれだけ厳密か調べられるよ。特にダークテーマではAPCAを使うべき。TailwindとかIBM Carbonみたいなパレットは、明るさ以外の要素も複雑に調整してるから、単純な白黒自動選択よりは奥深い話だね。" userName="seanwilson" createdAt="2025/05/18 06:10:29" color="#ff5c5c">}}




{{<matomeQuote body="LCHを使って、これに近いことやる方法があるよ： --text: lch(from var(--bg) calc((49.44 - l) * infinity) 0 0);<br>ソースはここ： https://til.jakelazaroff.com/css/swap-between-black-and-whit..." userName="qfr" createdAt="2025/05/17 18:13:26" color="#38d3d3">}}




{{<matomeQuote body="LCHもすごいけど、OKLCHはもっとすごいんだ！<br>https://evilmartians.com/chronicles/oklch-in-css-why-quit-rg...<br>正直、この記事でこの件に関する考え方が劇的に変わったよ、本当に素晴らしいツールだ。デザイナーの友達がoklchのこと全然知らなかったのにすごく驚いたんだけど、これ、色々な問題を解決してくれるんだ。" userName="sabellito" createdAt="2025/05/18 10:28:16" color="#785bff">}}




{{<matomeQuote body="こんなコールバックみたいなスタイルで、パラメータを変更できるCSS関数見たことないな。超面白い！他にこういう例はあるの？それともこれはlchだけ？" userName="natemwilson" createdAt="2025/05/17 20:38:44" color="">}}




{{<matomeQuote body="これは”relative color”シンタックスっていうんだよ、色々なカラースペースやカラー関数で使える。鍵となるのは先頭の”from”だね。MDNドキュメントはここにあるよ： https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_colors/..." userName="fireflies_" createdAt="2025/05/17 20:44:58" color="#ff5733">}}




{{<matomeQuote body="紛らわしいかもしれないけど、ここの全部は静的なパラメータだよ。—-接頭辞はCSS変数で、CSS宣言ブロック内で—-bg: blueって書くやつね。" userName="halflife" createdAt="2025/05/17 20:45:14" color="">}}




{{<matomeQuote body="”l”は違うよ！" userName="natemwilson" createdAt="2025/05/18 01:20:32" color="">}}




{{<matomeQuote body="calc-sizeみたいな新しいやつもこんな感じだよ。" userName="KTibow" createdAt="2025/05/17 23:56:59" color="">}}




{{<matomeQuote body="lea verouから、こんな感じの回避策についての良い記事があるよ https://lea.verou.me/blog/2024/contrast-color/" userName="LorenzA" createdAt="2025/05/17 21:09:10" color="#ff33a1">}}




{{<matomeQuote body="これ、良い点と悪い点すごく分かりやすいね。シンプルなサイトならこれで十分コントラストしっかりさせられるし楽ちん。でも、WCAG対応が必要なプロダクション規模なら、Semantic tokens使った方がいいよ。Semantic tokensは開発早くなるし、黒か白に変えるより見た目もちゃんとコントラスト保てる。テーマ化も超簡単だから、ライトモードとかダークモードもほぼ手間なし。ブランド色がWCAG2で問題あっても、WCAG2とかAPCA対応のテーマも作れるから、コンプライアンス守りつつもっと良い見た目のコントラストも提供できるんだ。これ、僕の専門分野でね、Figmaで変数とかトークン担当してるし、FigmaとかAtlassianでダークモード実装してたんだ。トークンとかテーマとか、アクセシブルな色について質問あったら何でも聞いてね。" userName="jjcm" createdAt="2025/05/17 22:01:27" color="#785bff">}}




{{<matomeQuote body="Semantic tokensってどういう意味？まさにこういう機能（自動コントラスト）のせいで、仕事の大きなプロジェクトでCSS in JS使わざるを得なかったんだよね（相対色とかコントラスト色のために）。こういうのが一般的に使えるようになるの嬉しいな、数年後が楽しみ。" userName="charrondev" createdAt="2025/05/17 22:14:32" color="">}}




{{<matomeQuote body="Webの色に関して言うと、Semantic tokensっていうのはCSS変数で、bg-brandみたいに使い道で名前をつけたものだよ（ブランドカラーを背景に使う時とか）。だいたい3つの”階層”があるんだ：primitive、semantic、component。Primitiveトークンは値そのもの、例えば色のグラデーション（赤/100とか）。Semanticトークンはprimitiveトークンを参照する。bg-brandが青/300になってたりね。Component層はコンポーネントのどこで使うか（ボタンの背景とかボタンのテキスト）。でもcomponent層はよっぽどのマルチブランド状況じゃない限り、”絶対絶対”オススメしないよ。Unileverみたいな会社じゃないなら、componentトークンは使うべきじゃない。" userName="jjcm" createdAt="2025/05/17 22:33:40" color="#ff33a1">}}




{{<matomeQuote body="Design systemでのトークン命名規則ってたくさんあるんじゃないの？これを一般的なプラクティスみたいに言うのはちょっと言い過ぎじゃない？（記事リンク）" userName="ZYbCRq22HbJ2y7" createdAt="2025/05/17 23:21:39" color="">}}




{{<matomeQuote body="Nathanは僕が言った各階層内の命名規則の話をしてるんだよ、階層そのものの話じゃなくてね。あのブログはsemantic層とかcomponent層の命名規則について詳説してる。primitive/semantic/componentっていう階層セットは一般的なプラクティスだよ。中での命名は目的によって大きく違うし、それで良いんだ。使う個別のトークンの名前は、目標とか意図で決まるんだよ。例えばGoogleのMaterialのsemantic層は、カラフルな多様なテーマ向けに設計された命名スキーマを使ってるけど（使い方の分かりやすさとのトレードオフで）、Appleはアプリのデザインがあまりデザインの違いがないから、もっとシンプルなのを使ってるんだ。" userName="jjcm" createdAt="2025/05/18 18:07:22" color="#ff5733">}}




{{<matomeQuote body="親コメントじゃないけど、その一般化は正しいよ。普通はベース層（red/300とか）と、もっと意味的なsemantic層（.text-dangerとか）がある。リンク先にもあるように、その上にどんなテーマとかシステムを実装するかで、何百万通りもの実装方法があるんだよね。" userName="ryanwhitney" createdAt="2025/05/17 23:52:27" color="">}}




{{<matomeQuote body="これはユーザーにサイトのテーマを選ばせない場合にしか使えないね。もし選ばせるなら、記事のやり方の方がうまくいくと思うよ。" userName="recroad" createdAt="2025/05/17 23:12:01" color="">}}




{{<matomeQuote body="同意するんだけど、後半の2/3はなんか意味不明な専門用語の羅列に聞こえるだけだな、自分を賢く見せようとしてるみたい。真実じゃないとは言わないけど、単なる言葉の羅列だね。この機能（自動コントラスト）は好きなんだけど、企業サイトやアプリケーションでこれに頼るのはやめた方がいいな。結果をコントロールできないから。WebKitが後でバグを修正したり何か変更したりして、結果の色が自分が意図しないものに変わるかもしれない。それが怖いんだ。" userName="hk1337" createdAt="2025/05/18 01:22:23" color="">}}




{{<matomeQuote body="＞でも、大きなプロジェクトで、大勢のチームで、そういう細かいところを丁寧に管理するのは、ちゃんとやるのが本当に大変になる可能性がある。突然暗いボタンのテキストが読めない黒になって、ユーザーが何をすればいいか分からなくなる、とかね。<br>大きなプロジェクトが出荷される前に、誰かボタンを見られないのかな？代わりに、暗いボタンに黒いテキストを使うのを強制的に禁止して、大勢のメンバーも含めて全員に伝えるとか。知覚コントラストと数学的コントラストの話は面白いね、知らなかったよ。自分の仕事のやり方に取り入れてみよう。" userName="mediumsmart" createdAt="2025/05/17 18:09:17" color="">}}




{{<matomeQuote body="「大きなプロジェクト出荷前にボタン確認できないの？」ってさ、そりゃできるけど、そうするとリグレッションテストが何週間もかかるんだよね。”大きなプロジェクト”だとボタン何千個とか普通にあるし、特定の設定や複雑な操作でしか見えないのもいっぱいあるからね。" userName="Merad" createdAt="2025/05/18 15:55:32" color="#38d3d3">}}




{{<matomeQuote body="APCAについて読んでみるといいかも。APCAアルゴリズムを使えば、知覚的なコントラスト計算ができるよ。" userName="johnisgood" createdAt="2025/05/17 18:35:29" color="#38d3d3">}}




{{<matomeQuote body="WCAG2でもできるよ。記事のよくあるAPCAの例は大事なとこ隠してるし、多くの間違った結論につながってるな（つまり：どの基準でも黒の方がコントラスト高いんだけど、APCAはそんなにコントラスト要らないって言うから、白でも十分なコントラストになるってだけ）。" userName="refulgentis" createdAt="2025/05/17 18:49:29" color="#38d3d3">}}




{{<matomeQuote body="WCAGも知ってるけど、もっとシンプルに色を暗いか判定する関数を作るだけでもいけるよ。例えば輝度を計算して0.5みたいな閾値と比べる方法とかね。WCAGの輝度計算式とか使う感じ。＞APCAはそんなにコントラストいらないって言う<br>でも、APCAでも目標コントラスト値はいつでも調整できるから大丈夫。簡単な方法はいっぱいあるよ。" userName="johnisgood" createdAt="2025/05/17 18:53:31" color="#38d3d3">}}




{{<matomeQuote body="WCAGの輝度式（色科学でいう相対輝度）だと知覚的な中間グレーは0.5じゃなく0.18だよ。APCAの目標コントラストを変えるって話は記事の間違いとは別。APCAが「コントラストそんなにいらない」って言うのはいいんだけど、記事が「白の方がコントラスト高い」って結論づけてるのが間違いってことね。" userName="refulgentis" createdAt="2025/05/17 19:12:41" color="#ff33a1">}}




{{<matomeQuote body="そうだね、0.5は0-1の中間点で分かりやすい例だったけど、知覚的には0.18の方が”中間グレー”に近いのは君の言う通り。目が暗い色に敏感だからね。色が明るく感じるか暗く感じるか判断するなら0.18に近い閾値の方がいいかも。でも0.5は数学的な中間点としては合ってるし、人間の知覚とも合うよ（追記）。結局0.18〜0.3を閾値にすることもできるね。" userName="johnisgood" createdAt="2025/05/17 19:59:08" color="#45d325">}}




{{<matomeQuote body="＞0-1の輝度範囲の中間点<br>輝度には相対輝度と知覚輝度があるんだ。君が言ってた輝度計算（相対輝度）で0.5を使うと間違い（細かいけどa11y重要！知覚輝度なら0.5はWCAG2にぴったり）。＞人間の知覚と合わない<br>人間の知覚と100%合ってるよ。古い成果物だ。＞結局0.18〜0.3を閾値として使える<br>知覚輝度と相対輝度には定義がある。背景色CでコントラストKが必要なら可変じゃない。KとCで出力範囲があるって意味では君の言うことも価値あるけどね。例えば必要なコントラストが+40 L*でCが50 L*なら、使える色は90-100 L*と0-10 L*だよ。" userName="anoncareer0212" createdAt="2025/05/17 21:04:02" color="#ff5733">}}




{{<matomeQuote body="え、じゃあ結局0.5で合ってたの？！0.5は完全に間違ってるし人間の知覚と合わないと思ってたのは、自分が間違ってると思ってたからか。イタタ。まあ、しばらくやってなかったからね :D<br>そういえば、このシンプルな方法で色が暗いか判定できるかな？<br>$luminance = 0.299 * $r + 0.587 * $g + 0.114 * $b;<br>return $luminance ＜ $threshold;<br>閾値は128だったっけ？この場合は128がよくある閾値だった気がするんだけど。" userName="johnisgood" createdAt="2025/05/17 21:44:28" color="#ff33a1">}}




{{<matomeQuote body="昔、0.3R + 0.6G + 0.1B ＜ 128ってやり方でやったことあるよ。深く考えるのが面倒だったからね。完璧じゃなかったのは確かで、コントラストのために黒か白か逆の方が良かった明らかなケースもあったけど、自分の目的（背景色に関係なくラベルが少なくとも読めるようにする）には十分うまくいったよ。" userName="Pinus" createdAt="2025/05/19 06:28:10" color="">}}




{{<matomeQuote body="俺はコントラストがすごく重要なのを実装したから、もっと高度なアルゴリズム使ってるよ。でもまあ、そこまで凝らなくてもいける場合もあるよね :D" userName="johnisgood" createdAt="2025/05/19 08:19:24" color="">}}




{{<matomeQuote body="”black has more contrast by either measure”っていうけど、違うんじゃないの？ブログ記事の計算機のスクショ見たら、APCAだと白の方が明らかにコントラスト高いって出てるじゃん。（マイナスの数値がややこしいなら、BridgePCA計算機みたいなのでWCAG 2の”contrast ratio”っぽいメトリクスをAPCAで計算してみるといいよ。）APCAの目的はコントラスト計算を知覚的にもっと正確にすることで、単に閾値を下げることじゃないから。" userName="csande17" createdAt="2025/05/18 08:01:55" color="#38d3d3">}}




{{<matomeQuote body="APCAが閾値を下げるのは正確さを追求した副作用だよ。非知覚的なコントラストなんてないし。あと、BCPAの計算がおかしいのは、記事で使われてる36ptじゃなくて12ptで計算してるからだよ。だからコントラスト比がおかしく表示されちゃってるんだ。" userName="refulgentis" createdAt="2025/05/19 22:59:20" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="白い方がシャープに見えるかと思ったけど、そうでもないみたい。青の色をちょっと濃くした方がしっくりくるな。" userName="mediumsmart" createdAt="2025/05/17 20:27:32" color="">}}




{{<matomeQuote body="ブラウザがコントラストの色を決めるってどうなんだろう？いつも正しく予測できるわけじゃないだろうし、全ブラウザで同じ基準になるのかな？デザインチームが使うツールとしてなら良さそうだけどね。" userName="politelemon" createdAt="2025/05/17 18:19:10" color="">}}




{{<matomeQuote body="記事に書いてあったけど、標準で計算方法が決まってるみたいだよ。" userName="MBCook" createdAt="2025/05/17 19:12:07" color="">}}




{{<matomeQuote body="HDRディスプレイとか組み込みデバイスとか、特殊な環境だと問題が出ないか心配だなあ。標準的なSafariとかChromeなら多分大丈夫だろうけど。間違ってたら嬉しいけどね。" userName="andix" createdAt="2025/05/17 21:17:16" color="">}}




{{<matomeQuote body="「選択する」っていう言葉は変だね。色を計算してるんだから、「計算する」の方が正しいんじゃない？" userName="mcfedr" createdAt="2025/05/17 20:49:43" color="">}}




{{<matomeQuote body="news.ycombinator.comのスレッドも見てみて。APCAのボタンの例で混乱してる部分を除けば、あれは100%正しいって。背景の色が明るいか暗いか（L*値が60以上かどうか）で、白か黒どっちを使うか決めれば、もっと正確で一貫性のある結果になるよ。" userName="refulgentis" createdAt="2025/05/17 18:48:03" color="#785bff">}}




{{<matomeQuote body="昔システムカラーでスタイル作ってたんだけど、色の組み合わせ（buttonFaceとかbuttonTextとか）が全然コントラスト足りなくて意味なかったんだよね。JSでコントラスト計算して、ダメなら他の色にしたり、text-shadowで文字の周りを暗くしたり明るくしたりしてたよ。RGBの平均で計算できないかな？" userName="econ" createdAt="2025/05/18 00:05:35" color="">}}




{{<matomeQuote body="最低でもactiveとかfocus、hoverとかlink、visitedみたいな疑似クラスとか、ライト/ダークテーマの組み合わせで良い色がわかると嬉しいな。Material UIだとdisabledとかbefore、afterもあるし。<br>" userName="jbritton" createdAt="2025/05/17 18:43:25" color="#45d325">}}




{{<matomeQuote body="昔、これと似た動画チュートリアル作ったんだ〜。背景色に合わせてテキスト色を黒か白か選ぶやつね。すごく簡単な方法で、色をグレースケールにして黒と白を比べただけ。面白いプロジェクトだったけど、動画作るの苦手なんだ。動画はポルトガル語だから気をつけてね。<br>https://youtu.be/tUJvE4xfTgo?si=vFlegFA_7lzijfSR" userName="atum47" createdAt="2025/05/17 19:32:28" color="">}}




{{<matomeQuote body="面白いね！別のコメントでまさにそれをするカラー空間の数式が出てたよ。<br>https://news.ycombinator.com/item?id=44015990<br>動画は良さそうに見えるね。ポルトガル語話せないから何言ってるか分からないけど、コードは良さそうだよ！<br>" userName="coolcase" createdAt="2025/05/17 20:32:29" color="">}}




{{<matomeQuote body="カラーテーマの色は自分で選ぶのに、最初からコントラストのある色を選べばいいじゃん？これがなんで簡単なの？個人の自由な背景色とコントラスト不足の前景色を同時に許す、ダメなチーム向けなの？本当に必要なのは画像上のテキストとか、常にちゃんと見えることだよ。これは全然役に立たないじゃん。<br>だから、これは怪しい状況でしか使えないのに、新しい言葉まで作って、機能は貧弱（黒か白だけ）、しかもアルゴリズムが最悪（知覚的コントラスト無視）。すごいね！<br>" userName="rendaw" createdAt="2025/05/18 02:36:54" color="#ff33a1">}}




{{<matomeQuote body="使ったことないってだけでツールをすぐダメって言うのは良くないよ。多くのサイトでユーザーが色を選んだり、自動で決めたりできるじゃん[1]。アクセシビリティ考えるなら、コントラストカラーを計算するのが普通。このツールは多くのサイトが基本的なアクセシビリティを用意するのに役立つし、良い体験を作りたい人の邪魔にならない。<br>npmのcontrast-colorみたいにカスタマイズできたら最高だけど、ブログ記事にはなんで白/黒から始めて後でアルゴリズムを変えるか書いてあるよ。<br>[1] 例：https://coolors.co/8fbfe0-7c77b9-1d8a99-0bc9cd-14fff7<br>" userName="healsdata" createdAt="2025/05/18 03:23:01" color="#38d3d3">}}




{{<matomeQuote body="そうだね。簡単な使い方だと、ユーザーが”タグ”を作って、そのチップの色を自分で選べるようにしたかった時とか（GithubのPRタグの”good-first-issue”とか”bugs”みたいにカスタムできるやつ）。<br>親コメントがこの使い方を知らないなんてびっくりだよ、どこでも見るのに。<br>" userName="ctxc" createdAt="2025/05/18 16:32:11" color="#ff33a1">}}




{{<matomeQuote body="＞ and they did it with the worst possible contrast selection algorithm<br>彼らはちゃんとWCAG 2のアルゴリズムに従ってるって言ってるし、WCAG 3でこの問題が修正されるかもって言ってるよ。将来、標準化されたらもっと良いアルゴリズムを使うように簡単に変えられるとも言ってるし。<br>" userName="ezfe" createdAt="2025/05/18 03:23:41" color="#45d325">}}




{{<matomeQuote body="これをビルド時にやる良い方法ってない？SASSとかTailwindの上で動くやつとか？<br>この機能がみんな使えるようになるまで時間かかりそうだし、どのプラットフォームでも同じ（正しい）やり方で実装されるかちょっと心配だな。<br>" userName="andix" createdAt="2025/05/17 21:13:38" color="">}}




{{<matomeQuote body="この機能の今後の予定ね、このスレッドで出てた心配事の多くに対応してるみたいだよ：<br>https://drafts.csswg.org/css-color-6/#colorcontrast" userName="ZYbCRq22HbJ2y7" createdAt="2025/05/17 23:10:39" color="#ff5c5c">}}




{{<matomeQuote body="最近、ブラウザを500行で作ったんだけど、色を自動で選ぶコントラスト機能も200行で追加したんだ。<br>その過程で色空間のこと勉強になったよ。<br>俺のアプローチと記事のやつはちょっと違って、これはオーサリング時のツールなんだ。<br>もしコントラストが足りる色が見つからなかったらエラーになるから、背景を変えないといけないんだよね。" userName="akkartik" createdAt="2025/05/18 01:07:52" color="#ff33a1">}}




{{<matomeQuote body="すごいね！俺も似たようなことPythonとターミナルの色で手動でやったことあるよ。" userName="naggie" createdAt="2025/05/18 08:24:54" color="">}}




{{<matomeQuote body="昔、YIQ値を使って似たようなことやったの覚えてるわ。" userName="lancekey" createdAt="2025/05/18 03:14:36" color="">}}




{{<matomeQuote body="これについてブックマークしてる方法がここにあるよ。" userName="Hyperlisk" createdAt="2025/05/18 03:07:17" color="#785bff">}}




{{<matomeQuote body="＞このブラウザはcontrast-color()に対応してないよ。<br>Safari Technology Previewみたいな対応してるブラウザでこのデモ試してみてね。" userName="crtasm" createdAt="2025/05/17 17:42:22" color="#ff5733">}}




{{<matomeQuote body="Technology Previewはいらないよ、普通のSafariの詳細設定にあるWebKit Feature Flagで使えるんだ。<br>スマホで有効にしたらデモ見れたよ。" userName="ctippett" createdAt="2025/05/17 18:26:03" color="#45d325">}}




{{<matomeQuote body="デスクトップ版のSafari（バージョン 18.2）のフィーチャーフラグにはないみたい。" userName="mgkimsal" createdAt="2025/05/17 20:41:02" color="">}}




{{<matomeQuote body="俺のデスクトップ版Safari（バージョン 18.5）では使えるよ。<br>バージョン古いんじゃない？<br>Safariはいくつかセキュリティ修正されてるからアップデートした方がいいよ。<br>（略）<br>あと18.4は標準対応とか他の機能で結構大きなアップデートだったんだ。" userName="JimDabell" createdAt="2025/05/17 21:12:21" color="#785bff">}}




{{<matomeQuote body="情報ありがとう。<br>アプリとかセキュリティの自動更新はしてるんだけど、macOS全体はしてなかったんだ。<br>ちょっと見直してみるね。" userName="mgkimsal" createdAt="2025/05/18 15:06:54" color="">}}




{{<matomeQuote body="バージョン18.5（20621.2.5.11.8）使ってるけど、ちゃんとあるよ。" userName="ctippett" createdAt="2025/05/17 21:09:10" color="">}}




{{<matomeQuote body="caniuse.comでもまだこれに関する情報が見当たらないね。たぶんめっちゃ新しいんだと思う。" userName="judah" createdAt="2025/05/17 18:05:59" color="">}}




{{<matomeQuote body="MDNにもまだないみたい。しばらくはWebKitだけっぽいね。<br>[CSS specに追加するためのドラフト](https://drafts.csswg.org/css-color-5/#resolving-contrast)は追加されたばっかり。他のブラウザがこのドラフトについて立場を示すまで、なんでAppleはSafariに-webkit-color-contrastじゃなくてcolor-contrastとして入れたのかちょっと不思議。調べた限りでは、仕様を延期する決定（2020年までさかのぼる）しか見つからないな。" userName="jeroenhd" createdAt="2025/05/17 22:20:30" color="#785bff">}}




{{<matomeQuote body="新しい機能にはもう接頭辞は使われないんだ。残ってるのは古いものだけ。<br>今は、ブラウザのワーキンググループがその機能の最終的な仕様を決定するまで、テストのために機能フラグの後ろに隠されてるんだ。仕様が決まれば、どのブラウザメーカーも自由に一般公開リリースに実装できるってわけ。" userName="frosted-flakes" createdAt="2025/05/17 23:57:24" color="#45d325">}}




{{<matomeQuote body="https://drafts.csswg.org/css-color-5/#contrast-color" userName="ZYbCRq22HbJ2y7" createdAt="2025/05/17 23:59:10" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="めっちゃ新しいね。たぶんSafariだけに入ってて、それもまだプレビュー版だと思うよ。" userName="miiiiiike" createdAt="2025/05/17 18:21:36" color="">}}




{{<matomeQuote body="「Gnome Web」で動くよ。これはだいたいWebKitのラッパーみたいなもの。<br>”＞ この機能のサポートは2021年3月にSafari Technology Preview 122で最初に出荷されたんだ。<br>https://webkit.org/blog/11577/release-notes-for-safari-techn...<br>”＞ CSS Color 5 color-contrast() の実験的なサポートを追加したよ。<br>https://trac.webkit.org/changeset/273683/webkit/" userName="homebrewer" createdAt="2025/05/17 18:23:18" color="#38d3d3">}}




{{<matomeQuote body="確かに相対的な色彩理論のカラーホイールがこの問題の答えだよね。「Color Wheel: The Basic Color Theory for Artists and Designers」<br>https://dessign.net/color-wheel-theory/" userName="dp-hackernews" createdAt="2025/05/17 18:53:35" color="">}}




{{<matomeQuote body="残念ながら、まだfirefoxでは動かないんだ" userName="flysand7" createdAt="2025/05/17 23:14:20" color="">}}




{{<matomeQuote body="要するに、「このブラウザはcontrast-color()をサポートしていません。サポートしているブラウザ（例えばSafari Technology Preview）でこのデモを試してください。」ってこと。" userName="HocusLocus" createdAt="2025/05/18 03:40:37" color="#ff33a1">}}




{{<matomeQuote body="記事の内容に間違いがあることを指摘してるよ。青地に白のコントラストが低いことや、デモの見せ方についてAPCAの文脈で詳しく解説してるんだ。APCAではL＊ 60辺りの背景でも白前景が許容されるけど、黒前景の方が常にコントラストは高くなるって話。デモ画像で「APCAの方が高コントラスト」と誤解されがちだけど、APCAの主張は「白前景でもアクセシブルなレベル」ってことだよ。（2020年にAPCAに基づいたカラーシステムを構築し、最新のMaterial themingを可能にした経験談）" userName="refulgentis" createdAt="2025/05/17 18:10:44" color="#ff5733">}}




{{<matomeQuote body="白on青のコントラスト，明らかに低いのに記事は高いって言ってるじゃん。画面おかしいの？APCAでも白の方がコントラスト高いって記事に書いてある。君の意見は全部逆で，何言ってるか全然理解できないよ。" userName="chrismorgan" createdAt="2025/05/18 07:21:57" color="">}}




{{<matomeQuote body="たぶん，前の人はWCAG 2の計算式だけを信じてるんだよ。会社ってWCAG 2のルール守るのに必死で，使いやすさよりそっち優先したりするんだ。自分の目よりWCAG 2の数値を信じる人もいるくらい。WCAG 3ではAPCAみたいな良い基準が入って，Googleとかも変なボタン作るのやめてほしいね。" userName="csande17" createdAt="2025/05/18 13:09:43" color="#38d3d3">}}




{{<matomeQuote body="投票で−3付いててビックリ。<br>記事全体が間違ってるって読まれたみたいだけど，一部がおかしいって言いたかったんだ。理由を詳しく話してくれていいよ。<br>例えばMaterial Youの色の使い方には同意できない点があるし，Google社内の開発はVP間の連携不足とかAndroidの機能不全とか結構ひどかったんだ。" userName="refulgentis" createdAt="2025/05/17 19:14:07" color="#785bff">}}




{{<matomeQuote body="投票してないけど，”君の記事は間違ってる”って意見は記事全体を無視してるよ。なんで数値だけでコントラストを判断しちゃダメなのか，記事は詳しく説明してるでしょ。GoogleがMaterialとかでいつもコントラスト問題起こしてるのは，記事で批判してる「科学」に基づいて色作ってるからだね。" userName="troupo" createdAt="2025/05/17 19:41:33" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
