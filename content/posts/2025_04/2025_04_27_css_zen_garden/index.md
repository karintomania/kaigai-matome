+++
date = '2025-04-27T00:00:00'
months = '2025/04'
draft = false
title = 'CSS Zen Garden ウェブデザインの常識を覆した金字塔'
tags = ["CSS", "Webデザイン", "HTML", "レイアウト", "ウェブ開発史"]
featureimage = 'thumbnails/color1.jpg'
+++

> CSS Zen Garden ウェブデザインの常識を覆した金字塔

引用元：[https://news.ycombinator.com/item?id=43809484](https://news.ycombinator.com/item?id=43809484)




{{<matomeQuote body="CSS Zen Gardenができた頃のWeb開発者じゃないとわかりにくい側面があるんだよね。CSSの前はtableをレイアウトに悪用してた。画像をスライスしてtableに入れてたんだ。これは今も覚えてられてるけど、CSSへの反発があったことは忘れられてるみたい。CSSじゃ「退屈で箱っぽい」デザインしか作れないって言われてた。でもDave SheaがCSS Zen Gardenを出して、それが間違いだって証明したんだ。たくさんの投稿デザインのおかげで「CSSはつまらない」なんて言えなくなったんだ。彼が完勝しすぎて、議論自体があったことすら忘れられてるのが面白いね。" userName="JimDabell" createdAt="2025/04/27 10:29:12" color="#38d3d3">}}




{{<matomeQuote body="Daveには悪いけど、違うね。CSS Zen Gardenは固定コンテンツだから成り立っただけ。semantic HTMLとかprogressive enhancementはナンセンス。Web開発者は福音に酔ってただけだよ。tableレイアウトをやめたのはIE6とCSS1のせい。CSS Zen Garden時代のデザインはfloat/clearだらけでスケーリングもダメ。今のCSSも馬鹿げた部分を捨ててない。俺はUse.GPUで独自のシステム作ったけど、CSSは不十分。Daveは勝ってない。Zen Garden信者は見た目に騙されただけ。コンテンツを他言語に訳したらデザインが崩壊するのを見てみろ。" userName="unconed" createdAt="2025/04/27 11:07:11" color="#ff5733">}}




{{<matomeQuote body="＞ レイアウトを作るのにtable要素を悪用してたって？正直何がそんなに悪かったのか分からなかったんだよね。「semantic HTML」云々とか、それは一部のアプリケーションにしか意味ないでしょ。" userName="throw310822" createdAt="2025/04/27 12:33:40" color="">}}




{{<matomeQuote body="テーブルを使った理由は、初期のCSSで全ブラウザにちゃんと対応させるのが悪夢みたいに大変だったからだよ。高コストな悪夢ね。資金が潤沢なスタートアップで、HTMLを定期的に作り直す余裕があるなら良いけどさ。" userName="radicalbyte" createdAt="2025/04/27 11:34:37" color="">}}




{{<matomeQuote body="タイムラインはうろ覚えだけど、CSSが登場したての頃は、もっと複雑なレイアウトを作るには力不足だった（flexboxもgridもなかった）。CSS Zen Gardenは、その時点で何ができるかを示すためにあったんだよ。" userName="kreetx" createdAt="2025/04/27 10:50:07" color="">}}




{{<matomeQuote body="初期CSSは今と比べて機能不足すぎた。border-radiusなんて後からだし！ 今でもシンプルなデザイン[1]が、最新CSSでも約420行もかかるんだ[2]。しかもネストとか:hasバンバン使ってだよ。昔はCSSの制限でHTMLもCSSも作り直さなきゃいけなかった経験があるよ。" userName="90s_dev" createdAt="2025/04/27 11:51:29" color="">}}




{{<matomeQuote body="あなたのコメント、俺が言った不正確な点を正したいって感じじゃなくて、CSSのデザイン自体に根本的に同意できないって感じに聞こえるね。" userName="JimDabell" createdAt="2025/04/27 11:17:12" color="">}}




{{<matomeQuote body="「全ブラウザ対応」の問題は、CSSだけじゃなくてJSにとっても超大変だったんだ。未だに、IE6のサポートを抗議のために打ち切ろうっていうキャンペーンを覚えてるよ。" userName="brightball" createdAt="2025/04/27 11:41:55" color="">}}




{{<matomeQuote body="お前のコメント、IEの話とか開発ツールの欠如とか、CSS2のtableがクソだった話とか、floatsをまともに動かすためにみんながどんだけ苦労したかとか、ブラウザごとに違うパーサーのせいで使ってたあの無数のハックとか、どこにも書いてないじゃん？起きたことじゃなくて、今語られてるストーリーだけ書いてる。お前、何も分かってないな。" userName="unconed" createdAt="2025/04/28 11:57:55" color="">}}




{{<matomeQuote body="border radiusかあ…あの憧れの丸い角、あのプロパティが簡単にしてくれる前は、マジでslickなデザインの証だったよな<br>media queriesとかresponsive designが、最後まで抵抗してたCSS嫌いな奴らを終わらせたんだと思うわ。" userName="katzgrau" createdAt="2025/04/27 12:15:15" color="">}}




{{<matomeQuote body="うん、俺もそう思う。CSSがかっこよくて、でも使いこなすのが大変だったのが本当の理由かもね。みんな”elite”でいたかったんだろ。tableは超簡単だったし。<br>いまだにここであの頃のCSSにしがみついてる人がいるのにビックリ。clearfixを誇りに思ってる人までいるし。<br>でも、CSSのおかげで早めにwebdevから抜け出せたことには感謝しとくべきかなw" userName="jdance" createdAt="2025/04/27 17:06:31" color="#45d325">}}




{{<matomeQuote body="あれはいつも楽しい挑戦って感じだったな。俺にとって、web（そして最終的にはprogramming）を大好きになった、マジで大事な部分だよ。hackできる感じとか、与えられた問題を解くのにこれしかないって正解がないやり方とか。あの頃が懐かしいね。" userName="padolsey" createdAt="2025/04/27 12:26:21" color="#38d3d3">}}




{{<matomeQuote body="HTMLのtableは、複数の軸で関連するdataを記述するためのものなんだよ。gridは、そのdataを表現する一般的なpresentaionの形。だからといって、gridを作るのがtableの目的じゃないし、どんなgridもtableであるべきじゃない。" userName="JimDabell" createdAt="2025/04/27 13:40:19" color="#38d3d3">}}




{{<matomeQuote body="いやいや、それどころか、semanticsはaccessibilityの観点からマジで超重要だよ。" userName="Sharlin" createdAt="2025/04/27 12:43:58" color="">}}




{{<matomeQuote body="table layoutの大きな問題は、siteのデザインを変えるってなると、全pageやtemplateをゼロから作り直さなきゃいけなかったこと。CSSベースのlayoutなら、理論上はCSSファイル一個変えるだけで済むはずだった。<br>実際には、HTMLもやっぱり手直しする必要はあったけど、それは古いtableのゴミを消したり、pageのelementを足したり消したりするためだったしね。でも、pageはもっと綺麗になって、maintainしやすくなったから、全体としては良い変化だったと思うよ。" userName="perilunar" createdAt="2025/04/29 03:24:59" color="#785bff">}}




{{<matomeQuote body="floatsとclearfixは、本来の目的じゃなかったけど、flexboxが出る前でも十分に強力だったよ。<br>まあ、tableだって、本来はlayout目的じゃなかったけどね。" userName="Macha" createdAt="2025/04/27 11:19:32" color="#ff5733">}}




{{<matomeQuote body="tableは作るの簡単だったけど、maintainするのがマジ大変だったんだ。特に、他の誰かが書いた、何も書いてない（documentedされてない）codeを見る時は最悪。" userName="perilunar" createdAt="2025/04/29 03:28:27" color="#ff5c5c">}}




{{<matomeQuote body="＞＞ レイアウトはtable要素をグリッドを作るために”abuse”してたんだって。＞＞ 何がそんなに悪かったのか全然わかんなかった Separation of concerns（関心の分離）ってこと？" userName="suspended_state" createdAt="2025/04/27 12:39:27" color="">}}




{{<matomeQuote body="CSSへの反発は覚えてないけど、フォントはCSSでレイアウトはtableってのが普通だった。実用性重視で確実なグリッドにはtable。特に複雑なレイアウトやナビゲーション。「Pixel perfect」が重要で、それへの反発はあった。2000年頃のspacer要素は流行らずPixel GIFsのが使われた。flexbox普及前のfloat layoutは不安定で最悪だった。俺の経験だと初期CSSはZen Gardenみたいなレイアウトは難しかったよ。" userName="exodust" createdAt="2025/04/29 10:28:43" color="#45d325">}}




{{<matomeQuote body="確かに今はすごく簡単になったけど、当時でもCSSにはpseudo-elementsとかdisplay: table-cellみたいなのはあったんだよ。一番の問題はInternet Explorer 6がみんなの足を引っ張ってたことで、floatがレイアウトの主なやり方になってた。floatはCSS 1（1996年）の頃からあったんだ。" userName="JimDabell" createdAt="2025/04/27 10:57:59" color="#ff33a1">}}




{{<matomeQuote body="＞＞ HTML 3.2（1997年1月）からtableは標準で、表データ/レイアウト両方に使えるけどアクセシビリティに注意ってあった。＞＞ HTML 4（1998年4月）で「レイアウトだけに使っちゃダメ」って警告が強まって、CSS1が助けになるって示唆された。古いブラウザ対応で非推奨機能が続くのも想定内だったみたい [heh]。tiernok.comのリンク参照。" userName="Sharlin" createdAt="2025/04/27 12:41:35" color="#ff33a1">}}




{{<matomeQuote body="セマンティクス（意味論）的に言えば、tableは表データを入れるためのもので、レイアウト機能だけのために使うものじゃないんだ。だから「abuse（乱用）」って言われるんだよ。" userName="padolsey" createdAt="2025/04/27 12:23:37" color="">}}




{{<matomeQuote body="ああ、そうそう、floatが全てだったね。" userName="jonwinstanley" createdAt="2025/04/27 19:13:00" color="">}}




{{<matomeQuote body="&lt;div&gt;タグを使うのが一部の人には”高い”って思われてた時代があったのを覚えてるよ。" userName="elevaet" createdAt="2025/04/27 12:48:35" color="">}}




{{<matomeQuote body="ああ、面白かったね。社内サイトのレイアウトにCSS使ってたけど、メンテが大変だった。でもDB Adminとか本業の傍らで時間があったからできたんだ。今なら”devops engineer”って呼ばれるような幅広い担当だったからね。" userName="radicalbyte" createdAt="2025/04/27 12:49:09" color="">}}




{{<matomeQuote body="当時のCSSはまだ”漏れのある抽象化”だった。ちゃんと動かすには、CSSのルールを適用するための”アンカー”として、HTMLコードに余計なDIVを含める必要があったんだ。<br>標準化団体は、疑似要素とか疑似クラスとか、俺が知らない他の機能とかで、この問題を解決しようとしてきたみたいだよ。でもさ、少なくとも、これらの余計なDIVはページのレイアウトを壊してなかったんだ（例えば、CSSを無効にした時とか - 当時はまだそれができたんだよね）。それはaccessibilityにとっても良かったんだ。" userName="suspended_state" createdAt="2025/04/27 12:45:22" color="#ff5c5c">}}




{{<matomeQuote body="このサイトは、2000年代に俺にとって”culture shock”だった。Microsoft ASP.NETの”server controls”がいかに間違ったやり方か気づき、Linuxで開発するようになったんだ。Microsoft経由では知れない情報がたくさんあると衝撃を受けたよ。その後JSやCSSだけで開発してたけど、jQuery、Backbone、Underscoreを経てReactとかTSが出てきて、”Full stack”がまた馬鹿げた感じになったね。" userName="tzury" createdAt="2025/04/27 06:52:22" color="">}}




{{<matomeQuote body="＞This site was a ”culture” shock for me, back in 200x and made me walk away from Microsoft ASP.NET and start building apps on linux<br>ASP.NETでそういう開発はできたはずだよ。別に妨げてないじゃん。<br>＞realizing all those ”server controls” with inline style parameters were basically the complete wrong way, the ”anti internet way”<br>皮肉なことに、Next.jsでview stateを再創造したり、Tailwindでインラインスタイリングしたり、shadcnでReact componentsを使ったりって、古いものがまた新しくなって一周回った感じだよね。" userName="wordofx" createdAt="2025/04/27 12:19:27" color="#785bff">}}




{{<matomeQuote body="本当にそう。<br>あの有名なasp.netの”__VIEWSTATE”が今、生き返ったんだぜ..." userName="tzury" createdAt="2025/04/27 16:41:48" color="">}}




{{<matomeQuote body="Svelteってのが今はあるぜ；あれはちょっと”clever”なfullstackだね。" userName="tucnak" createdAt="2025/04/27 07:18:29" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞made me walk away from Microsoft ASP.NET and start building apps on linux, realizing all those ”server controls” with inline style parameters were basically the complete wrong way, the ”anti internet way”<br>あれはまだオンラインにあるよ、outdated relictとしてだけど：https：//www.ajaxtoolkit.net/ 。drag panelなしのenterprise softwareなんてなかったからね！<br>しばらくの間semantic markupとCSSがleadしてたけど、nowadays俺はもうtrendをcheckする気にもならない。”HTML inside JavaScript”（JSX）が出てきた辺りからcaring stoppedしたよ。" userName="undebuggable" createdAt="2025/04/27 09:46:07" color="">}}




{{<matomeQuote body="俺はASP＆PHPを書き始めたんだ。ASP.Net全体はVisual Studio developersがcrappy web appsを作るのをhelpingするためのもので、web writ largeにはwasn’t fit for purposeだったと思う。Linuxにswitchする必要もなくて、俺はWindowsで全部builtして（ITがLinux desktopsを許可しなかったから）、WindowsとLinuxの両方のserversにdeployedしてたよ。" userName="radicalbyte" createdAt="2025/04/27 11:37:44" color="">}}




{{<matomeQuote body="CSS Zen Gardenのmain pointは、semantic HTMLをmaximizing useすることで、presentationをcontentからseparatedし、完全にindependentlyにoperateできたことだったと思うんだ。Zen Gardenがやってたように、今でもそれはある程度できるけど、それはCSSのlimitsの中でoperatingしてるだけなんだ。<br>directly DOMをmodifyingしないとeffectが出せないstyle choicesはたくさんあって、CSSだけではpurelyできないんだ。W3Cでのdiscussionsを見たことあるけど、”Well if you add another div around this you can achieve this effect, so why do we need a new CSS property？”みたいな感じだったよ。inserting or swapping an imageはsimpleだけど、swapping a styleable SVGはimpossible。なぜならSVG nodesはdirectly embedded in the htmlである必要があるからなんだ。<br>だから、HTMLやJavascriptのlevelsでpresentationとcontent structuring decisionsをmix forceされるし、some simple design changesでさえmodifications throughout the stackが必要になるんだ。" userName="rendaw" createdAt="2025/04/27 07:54:08" color="#ff5c5c">}}




{{<matomeQuote body="The CSS communityのpromiseはalways structureとpresentationはseparatedできるってことだった。<br>After俺の30 yearsのwriting GUIs、this is the wrong place to draw a dividing lineだとnow convincedしてる。Instead、should be isolating intent。This is what Composites do in my project。I’m so excited to announce it next week！" userName="90s_dev" createdAt="2025/04/27 12:51:34" color="#ff33a1">}}




{{<matomeQuote body="でもさ、最近のCSSってマジすごいよ。現実的なデザインならさ、CSSとHTMLだけで全然イケるんだよね。" userName="zelphirkalt" createdAt="2025/04/27 11:19:02" color="">}}




{{<matomeQuote body="マジそれな。今のWebデザインの問題って、無理やりやらせようとするから起きんだよ。HTMLとCSSに逆らわないで素直に使えばさ、JSとかごちゃごちゃさせなくてもめっちゃ柔軟できれいなレイアウト作れんの。Zen Gardenってそのことを思い出させてくれるし、今でも全然イケてるよ。" userName="leo-notte" createdAt="2025/04/27 11:28:07" color="#ff5733">}}




{{<matomeQuote body="俺さ、Zen GardenとかEric MeyerみたいなのでCSS覚えたんだけど、Tailwindみたいな最近のツール見るとアンチパターンに見えんだよな。" userName="meekaaku" createdAt="2025/04/27 07:49:42" color="">}}




{{<matomeQuote body="全くその通り！Tailwindには問題だらけだよ。HTMLがスタイル情報でゴチャゴチャして、内容が読みにくくなるんだ。開発者がこんな状態にするからみんなHTML読まなくなるんだよ。クラスが多すぎてノイズまみれ。スタイルもめっちゃ重複してて、変更が超大変。Tailwindの問題か開発者の問題か知らんけど、これは問題。大きいプロジェクトだとスタイル変更がモグラたたきになるんだ。" userName="throwaway150" createdAt="2025/04/27 09:50:56" color="#ff33a1">}}




{{<matomeQuote body="俺、CSS得意だけど、スタイルの整理だけが永遠の課題。Tailwindにも問題あるけど、CSS単体だと書き方の合意がないんだよね。その時々のフレームワークに頼りがち。きれいに書くのは大事だけど、複雑な開発だと多少汚くてもコンポーネント化でデメリット減るなら、そこまで気にしないって考え方もあるんだ。" userName="brailsafe" createdAt="2025/04/27 10:19:26" color="#38d3d3">}}




{{<matomeQuote body="TailwindとかはCSSの詳細度ルールが複雑だから出てきたんだと思う。詳細度ってわけわかんないし、みんなバラバラに使ってるし。詳細度を抑えるためにBEMみたいなのが生まれて、TWはそれへの反抗。CSSの複雑さって「セレクターが2つバーに入ったら、町の反対側のバースツールが倒れた」ってジョーク思い出すわ。" userName="chuckadams" createdAt="2025/04/27 12:24:06" color="#785bff">}}




{{<matomeQuote body="そうそう。ボタンのバリエーションで少しだけ変えたい時、インラインとかユーティリティクラス使ってると、あれ？Tailwindみたいってなるんだよ。みんなでコンポーネント化されたアプリ作ると、一元CSSはスケールしない。だからTailwindは必要悪、アンチパターンじゃない。実際の困りごとから生まれたんだ。Bootstrapとかも秩序作ろうとしたけど、CSSって完全に”きれい”にはできない。もう仕方ないよ。" userName="ookblah" createdAt="2025/04/27 11:25:34" color="#ff33a1">}}




{{<matomeQuote body="”HTMLは内容と意味が重要で、クラス名で見た目を判断すべきじゃない”って言うけど、Vanilla CSSだってデベロッパーツール見ないとスタイル分かんないじゃん。．modifierだけじゃないし。それにTailwindは最終HTMLじゃなくて開発者向け。だいたいコンポーネントの中に収まってるんだよ。" userName="troupo" createdAt="2025/04/28 14:54:55" color="#45d325">}}




{{<matomeQuote body="これTailwind開発者の文化の問題だと思う。昔は＠apply反対でインライン推奨だった。tree-shakingが弱かったのが理由っぽいけど、変な”哲学”で正当化してたんだ。”コンポーネントでやれ”とかね。でもそれだと問題がJSに埋もれる。今は＠apply反対派も静かになって、TWもまともに使えるようになったし、ちゃんと使えって言う人もいるよ。" userName="chuckadams" createdAt="2025/04/27 12:17:56" color="">}}




{{<matomeQuote body="Tailwindみたいなツールは、行き当たりばったりでWeb覚えた人に良いと思う。最初は見た目から入って細かいCSS知らないんだけど、そういう時CSSの落とし穴避けられるツールは魅力的。俺は基礎から学ぶ本で変わった。「display: blockはWordみたい、display: flexは普通」って説明で腑に落ちた。基礎大事って話。本の名前誰か知らない？" userName="amjoshuamichael" createdAt="2025/04/27 12:33:53" color="#38d3d3">}}




{{<matomeQuote body="HTMLとCSSをゼロから学べるオンラインの連載を読んで変わったんだって。どの本か覚えてる？俺も同じ経験があって、CSSを原理から学びたいんだよ。" userName="lotsoweiners" createdAt="2025/04/28 01:44:33" color="">}}




{{<matomeQuote body="Tailwindのコード、マジでダサいし超嫌い。あれ出てきた時、いくつかのデカいサイトで仕事してたんだけど、何千ものページにそれぞれ何百ってスタイル属性を追加するって考え方（単一のクラス名とCSSファイルの数行で済む代わりに）が、CSSの利点の半分を台無しにするすげー後退に思えたんだよ。" userName="perilunar" createdAt="2025/04/29 03:39:44" color="">}}




{{<matomeQuote body="俺はうまくいくと思うし、何百人もいるような会社には良いスタンダードだよ。ランディングページで全部一発でスタイル決めたいなら、やってみれば？" userName="theyknowitsxmas" createdAt="2025/04/27 11:11:05" color="">}}




{{<matomeQuote body="TailwindとかCSS-in-JSの暗黒時代にちょっと光が差した感じかな。20年くらい前のCSS Zen Gardenがどれだけ重要だったかって、今気づくのは難しいよね。" userName="pier25" createdAt="2025/04/27 05:50:28" color="">}}




{{<matomeQuote body="CSS Zen Gardenのおかげで、確かにCSSが大好きになったよ。でも、大規模プロジェクトでTailwindが魅力的なのも理解できるようになった。" userName="spiderfarmer" createdAt="2025/04/27 06:18:27" color="">}}




{{<matomeQuote body="インラインスタイル使うのと比べて、大規模プロジェクトでTailwindを使うメリットを教えてくれない？" userName="nuw" createdAt="2025/04/27 06:26:38" color="">}}




{{<matomeQuote body="Tailwindの利点は、何千ものものに名前を付けなくて済むことだって！名前を考えるのにどれだけ脳のリソース無駄にしてたか、Tailwindでやっと気づいたよ。プログラマーって名前付けにこだわりがちだけど、それはバイクシェディングの罠。Tailwindなら、その場所でどう見えるべきか宣言するだけ。名前もバイクシェディングも無し。インラインスタイルと違って色々な要素をターゲットできるし、マジでエレガントなソリューションだよ。" userName="9dev" createdAt="2025/04/27 07:13:09" color="#38d3d3">}}




{{<matomeQuote body="JavaScriptとかTypeScriptでも同じように、意味が明確になるような命名避けるの？" userName="the_other" createdAt="2025/04/27 07:44:50" color="">}}




{{<matomeQuote body="なんで意味論的な明確さがないって決めつけるの？Tailwindはアプリとかコンポーネントの時代のために作られてるんだよ。意味はコンポーネントのレベルで表現されるんだ。" userName="troupo" createdAt="2025/04/27 07:56:23" color="#785bff">}}




{{<matomeQuote body="コンポーネントには名前つけられるのに、それに紐づくスタイルには名前つけられないってこと？" userName="skydhash" createdAt="2025/04/27 10:51:42" color="">}}




{{<matomeQuote body="モバイル用セレクターとか、”group”セレクター、ホバーとか…色々あるよね。結局ワークフロー次第だよ。コンポーネントたくさんあって複数人で作るなら、スタイルバラバラにしてガイドラインで強制した方がいい時も。昔の自分が作ったものや人のコード開けて何見てるか分からないの、マジでイライラするんだ。集中管理されたCSSで何か一つ変えただけで、副作用がどうなるか全然分からないし。Tailwindなら、探してるスタイルがexactに見える。個人的には、コアのスタイルファイルがあって、メンテのために各コンポーネントのTailwindみたいなものに全部移す方がうまくいく。ユーティリティフレームワークに対する同じ単純な議論を見るのに飽き飽きした。その利点が見えないなら、明らかにそれが必要なプロジェクトで仕事してないだけだよ、盲目的に批判しないでくれ。CSSの知識がないわけじゃないんだ。" userName="ookblah" createdAt="2025/04/27 06:32:45" color="#ff5c5c">}}




{{<matomeQuote body="Configuration（設定）の話ね。Inline stylesはHTMLに直接スタイルを実装するけど、Tailwindは抽象化されてて、設定したりリファクタリングしたりしやすいんだ。経験から言うと、買収されて大きな会社に統合された大規模プロダクトの開発担当だったんだけど、最初からTailwind使ってたおかげで、アプリのデザインリファクタリングが数週間かかるはずだったのが1日で済んだんだ。おまけに、プロダクトデザインのCSS足場固め（タイポグラフィ、グリッド、カラー）でベストプラクティスを提供してくれるよ。" userName="halflife" createdAt="2025/04/27 06:58:24" color="#38d3d3">}}




{{<matomeQuote body="それってexactにはどういう仕組みなの？例えば今、ボタンを青くするために`some-button`ってクラスがあるとするじゃん。来週、それを黄色にしてって言われたら、クラス一個変えればいいだけじゃん。Tailwindだとequivalent（それに相当すること）ってどうなるの？" userName="croes" createdAt="2025/04/27 09:00:39" color="">}}




{{<matomeQuote body="サイドバーっていうコンポーネント一個に名前つけるのと、そのサイドバーの15個の子要素とそれらの状態遷移に名前をつけるのと、どっちかって話だよ。それもアプリを構成する他の137個のコンポーネントとconsistent（一貫性がある）なやり方でね。これらのもの全部に名前つけられないって話じゃなくて、そうするのがpointless（無意味）だってことだよ。" userName="9dev" createdAt="2025/04/27 12:12:28" color="">}}




{{<matomeQuote body="結局、CSSをproperly（ちゃんと）やってる時は、セレクターを適切に”anchor”（固定）するんだよ。どういうことかって言うとね、”component”でも何でもいいけど、何か一つあって、その中に何らかの形で特別なボタンがあるとするじゃん。もちろん`button a {someproperty: specialvalue}`なんて書き方はしないよね。この場合、そのコンポーネントspecific（特有）なセレクターとして書くべきなんだ。例えば`my-special-component button a {...}`みたいにね。デザインがthoughtfully（思慮深く）実装されていれば、みんながCSSで問題だって言ってることのほとんどはsimply（単に）存在しないんだよ。”side-effect”（副作用）みたいなものね。それは、本来再利用されるべきじゃないデザイン定義の一部を再利用して実装された場合にだけ起こりうるんだ。他の副作用は全部intentional（意図的）なものになる。例えばボタンのテキストカラーと段落のテキストカラー。片方が変わった時に両方変わってほしいなら、スタイル定義を再利用するけど、ほとんどの場合はそうじゃないから、定義は別々になるし、だから数ヶ月プロジェクト見てなくてもsilly（ばかげた）副作用は起きないんだ。" userName="zelphirkalt" createdAt="2025/04/27 11:50:11" color="#785bff">}}




{{<matomeQuote body="ああ、同じ議論を何度もするのもう疲れたよ。ぶっちゃけ、あのサイト（CSS Zen Gardenのことかな）があった頃からCSSを”properly”（ちゃんと）やってきたんだ。Backboneの時代、今はVue/Reactだけど、Tailwind以前はまさにexactにこれをやってた。スタイルをコンポーネントにscope（スコープ）して、その上にグローバルスタイルを重ねるってね。アプリが何百個とか何百個ものコンポーネントにまたがって、全部にちょっとしたバリエーションが必要になった時に”side effect”（副作用）は起きるんだ。君は、自分のマスターグローバルクラスにはabsolutely再利用できないデザイン定義が一切含まれてないって断言できるって言うの？それはbullshit（でたらめ）だね。ファイルを開けて`button variation-class-1 variation-class-2`って見て、それからコンポーネントの`＜style＞`セクションに降りていって、exactにどんなvariationでどんなプロパティが使われてるのか調べるのが、ボタンに直接なんかsuper poweredなinline styleを見るより、一体どういう点で”better”（優れてる）のか教えてよ。複雑さは同じだし、CSSの階層構造の最大のメリットを捨てて、”style and structure”（スタイルと構造）を一つのindependent（独立した）コンポーネントの中に分割してるだけだよ。ある時点では、必要なバリエーションの数を作るのは不可能になるし、”reusable”（再利用可能）な部分を抽出することもできなくなる。簡単なものはinlineで済ませるか、自分のutility classを作るだろうけど、それはTailwindより悪くなるだけだよ。" userName="ookblah" createdAt="2025/04/27 12:11:16" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="例えばReactみたいなcomponentを使って、ボタンcomponentの中の`bg-blue-500`ってクラスを`bg-yellow-500`に置き換えるんだよ。" userName="K0nserv" createdAt="2025/04/27 09:09:08" color="#ff5c5c">}}




{{<matomeQuote body="それってscoping（スコープ化）のためじゃないの？つまりcomponentに名前つけて、selectorでsub componentをスタイリングするってこと。ほとんどのスタイリング方法への私のissue（問題視）は、意味がない時にcomposition（合成）を使いたがること。スタイルをsplit（分割）して、全然関係ないものにその断片を使うみたいな。二つのものが一緒に変わる可能性が低いのなら、同じクラスを使うべきじゃない。unless（〜でない限り）、そのクラスをprimitive（原始的）なものとして考えるなら別だけど。Tailwindはこれのextreme case（極端な例）で、全てのextremeなものと同じように、それはpath to ruin（破滅への道）だよ。" userName="skydhash" createdAt="2025/04/27 15:39:52" color="">}}




{{<matomeQuote body="物事に名前をつけないことが、inline stylesよりもbenefit（メリット）になるのか、まだ理解できないな。inline stylesなら、`class=”bg-blue”`の代わりに`style=”background-color:blue”`って書くでしょ。そしたら、browserがすでにこれをサポートしてるんだから、entire（全部の）build stepとかentire dependency（依存関係）を削除できるじゃないか。" userName="immibis" createdAt="2025/04/27 11:33:29" color="">}}




{{<matomeQuote body="bg-blueみたいなクラスは、もっと詳しいセレクタとかユーザーCSSで上書きできるけど、インラインスタイルじゃムリだよ。" userName="chuckadams" createdAt="2025/04/27 12:33:16" color="">}}




{{<matomeQuote body="”.special-component .button”みたいにセレクタは必要に応じて詳しくすればいいじゃん。CSSのコード再利用ってデザイン変わるとダメになること多いんだよね。コードが同じだからってDRYにこだわるのは違うよ。" userName="skydhash" createdAt="2025/04/28 03:16:05" color="">}}




{{<matomeQuote body="正直そんなこといらないし、すべきじゃないんだ。CSSにはスコープとかネスト、コンポジションが足りないけど、SASSとか他の場所には20年以上前からあったんだよね。本当はコンポーネントとそのスタイルをまとめて扱いたいわけ。それができないなら、スコープとかを真似する名前をなるべく減らすべき。あと、mixinでできるけどバニラCSSじゃできない、コンポーネント全体で使えるパターンを構成したい。だから、ユーティリティクラスと、ちょっと違った考え方になるまでクラス名の繰り返しを減らすんだ。でも、独自のクラスが必要なら使ってもOKだよ。" userName="troupo" createdAt="2025/04/27 20:53:32" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、でも100個もコンポーネントあると、関連するセクションで意味探すより、ボタン自体にユーティリティクラスついてる方が断然マシだよ。これ、スケールする時にめっちゃイライラしたことなんだよね。コンポーネントごとに”.my-component-X”ってスコープして、後で「これ何だっけ？」ってなるの。CSSの一番めんどいとこ（セレクタの意味追うの）をコンポーネントごとに繰り返してるようなもんじゃん。もっと良い名前つけろとか言う？ おめでとう、それBEM再発明しただけ（笑）。反対意見は純粋主義者か、皆この悩み経験してないと思ってんのかって感じ。とにかく、やることに一番合ってる方法使えばいいよ。俺はまだ昔ながらのCSSも使ってるけどね。はい、おしまい。" userName="ookblah" createdAt="2025/04/28 03:45:44" color="#ff5c5c">}}




{{<matomeQuote body="「二つのものが一緒に変わらないなら、クラスをプリミティブって思わない限り同じクラス使うな」っていうのは、まさに俺が言ってるドグマ（独断的な考え方）のことだね—Tailwindはそんなこと考える意味なくしてくれるんだ。やりたい結果を出すために、スタイルのコンポジションを適用するだけ。それだけ。「Tailwindはヤバい」って言うけど、俺はTailwind使って成功したプロジェクトをいくつも経験してるよ。見た目は揃うし、開発は楽だし、スタイルバンドルで困ったことないし、デザイン変えるのも設定ファイルの1行で済む。新しい人もすぐに仕事できるようになるし、スタイルのことでどうでもいい議論も起きないし、誰も勝手に色とか追加しない。俺にとっては、ウェブのスタイルはもう解決済みなんだよね。" userName="9dev" createdAt="2025/04/27 17:55:29" color="#ff5733">}}




{{<matomeQuote body="ページURLとかJSのクラス、変数、Gitのブランチ、CSSのファイル名とか、どうやって決めてるの？ 名付けるのが難しいってジョークだけど、実際そうじゃないし、ウェブ開発者なら毎日当たり前に名前つけてるでしょ。サイドバーがあるとして、CSSクラス名に”sidebar”ってつけるのが、Tailwindに助けてもらうほど大変な問題とは思えないな。他のことでは名前付けに困ってないのに、CSSクラス名だけ苦痛に感じるってのは信じられない。Tailwind信者でファイル名とかURL決めるのが難しいって文句言ってる人、そんなにいる？ Tailwind信者が「名前付けが問題だ」ってこの一点だけにこだわるのがすごく変だと思うんだよね。他の全ての文脈では一日中簡単に名前を付けているように見えるのにさ。それって本当の問題じゃないんじゃない？ ファイル作る時、名前の選択肢多すぎて固まる？ それとも適当に決めて先に進む？" userName="JimDabell" createdAt="2025/04/27 10:39:24" color="#38d3d3">}}




{{<matomeQuote body="なんでコンポーネント100個とか大げさに言うの？ もしそんなのがどこかに存在するなら、それは単純に俺にとってデザインが悪いだけだ。例えば「main-navbar」っていう部分テンプレートがあって、他の入力欄と同じだけどちょっと変えたい検索入力フィールドがあるとするじゃん。「margin-x-2px」とか「font-small」みたいな名前を全部につけるの？ それとも「.main-navbar .search-input」をセレクタにして新しいスタイル書くの？「CSSの一番ダメな部分（セレクタの意味を追うの）を、コンポーネントごとに増やしてる」って言うけど、なんで追う必要があるの？ スタイル見たいなら開発者ツール開けばいいじゃん。<br>たいてい下から順に、リセット、コンポーネント、バリアント、親とか兄弟からのスタイルってわかるじゃん。<br>Tailwindだとこう<br>＜＜div class=”mx-auto flex max-w-sm items-center gap-x-4 rounded-xl bg-white p-6 shadow-lg outline outline-black/5 dark:bg-slate-800 dark:shadow-none dark:-outline-offset-1 dark:outline-white/10”＞<br>    ＜＜img class=”size-12 shrink-0” src=”/img/logo.svg” alt=”ChitChat Logo” /＞<br>    ＜＜div＞<br>      ＜＜div class=”text-xl font-medium text-black dark:text-white”＞ChitChat<br>      ＜＜p class=”text-gray-500 dark:text-gray-400”＞You have a new message!<br>    ＜＜/div＞<br>  ＜＜/div＞<br><br>普通のCSSだとこう<br>＜＜div class=”alert”＞<br>    ＜＜img class=”alert-icon” src=”/img/logo.svg” alt=”ChitChat Logo” /＞<br>    ＜＜div＞<br>      ＜＜div class=”alert-title”＞ChitChat<br>      ＜＜p class=”alert-message”＞You have a new message!<br>    ＜＜/div＞<br>  ＜＜/div<br>" userName="skydhash" createdAt="2025/04/28 12:43:42" color="#ff5c5c">}}




{{<matomeQuote body="HTMLにはもうbuttonコンポーネントがあるじゃん。CSS変数で色を変えられる、ボタン全体のCSSスタイルを作るより、これ（Tailwindのbuttonクラス）は何が良いの？" userName="moron4hire" createdAt="2025/04/27 09:29:19" color="">}}




{{<matomeQuote body="俺が言いたいのは、コンポジションはほとんどの場合いらないってこと。だってコンポーネントはそれぞれバラバラに変わっていくから。ネストはただの書き方（シンタックスシュガー）であって、便利だけど今回の話とは関係ない。スコープはセレクタでできることだし。CSSは命令型言語じゃなくて宣言型言語なんだよ。一番大事なのは、CSSが何を解決しようとしてるか（たいていタグでスタイル付けることじゃない）を理解すること。それはTailwindがやってることと同じ。Tailwindが役立つこともあるだろうけど、それはCSSに欠陥があるからじゃない。ORM使うのに似てるかな。あるとこまでいくと、自分で下手なSQLを別の言語で書いてるって気づくみたいな。" userName="skydhash" createdAt="2025/04/28 01:22:59" color="#ff5733">}}




{{<matomeQuote body="CSS-in-JS（Styled ComponentsとかEmotionみたいなやつ）は、コードを整理するための解決策がメインだよ。CSSの仕組みを根本から変えるわけじゃないんだ。" userName="paavohtl" createdAt="2025/04/27 10:30:25" color="">}}




{{<matomeQuote body="＞ネストはシンタックスシュガーで，いいんだけど，この議論とは関係ないね．君はネストに何があるの？コンポーネントにスタイルをスコープする話をしてたんだよ．＜br＞＞CSSは命令型言語じゃない．宣言型言語だ．だから何？それで物事をいい感じの宣言的なやり方でできないってことにはならないよ．SASSが20年以上も提供してきたみたいにね．＜br＞＞それがTailwindが模倣してることだ．君の主張の論理とか，実際の意味が理解できないな．" userName="troupo" createdAt="2025/04/28 14:47:21" color="">}}




{{<matomeQuote body="じゃあ，bg-blueってスタイルで物を黄色くするの？" userName="immibis" createdAt="2025/04/28 08:17:55" color="">}}




{{<matomeQuote body="君の言いたいことは分かるけど，これって色とか他のプロパティが安定してるかによるんじゃない？抽象化レイヤーとして名前を追加するよりPure CSSで良くない？一貫性はデザイン時だけだし，開発時にプロトタイピングしないならPure CSSからの改善は感じないね．スタイルバンドルはコンポーネントシステムがないとメリット薄いし，それは昔からコンポーネント名で簡単にできたことだよ．" userName="skydhash" createdAt="2025/04/27 19:57:55" color="#ff33a1">}}




{{<matomeQuote body="＞それってスコープのためのものじゃないの？2023年までCSSで使えなかったやつ？＜br＞＞じゃあコンポーネントに名前をつけてサブコンポーネントをセレクタでスタイリングするんだね．それをCSSでどうやるの？" userName="troupo" createdAt="2025/04/27 20:49:16" color="">}}




{{<matomeQuote body="いや，でもデザイナーがcornflower blueの代わりにaquaにしたいって決めたとするじゃん．スタイルシート中の色の全バリアント―CSS変数も，hexコードも，rgbaも―を探し回るの大変だよ．Tailwindなら，configファイルをアップデートするだけで，背景も，テキストも，影も，何にでも適用されるんだ．" userName="9dev" createdAt="2025/04/28 11:30:17" color="#45d325">}}




{{<matomeQuote body="このサイト，昔の自分にめちゃくちゃ影響与えたんだ！知らない人のために言うと，同じHTMLコンテンツに対して，CSSと画像でデザインを提出できたんだよ．例えばこれらが特に印象に残ってるな（URLは省略）．あとはposition: fixedでナイフがスクロール時に”ページを真ん中から切る”みたいに見えるやつもあったんだけど，もうリストにないみたい．追記：もう一つ覚えてるのは，ページトップが海面になってて，海の底までスクロールすると，タコか潜水艦かダイバーがいたやつ．どれだったか覚えてないけど．" userName="kreetx" createdAt="2025/04/27 10:00:46" color="#38d3d3">}}




{{<matomeQuote body="私も同じ．ああいうデザイン見ると，ウェブデザインがどれだけ退屈になったか思い出すよ．" userName="perilunar" createdAt="2025/04/29 03:59:20" color="">}}




{{<matomeQuote body="私はそこに2つデザイン出したんだけど，今でもそのCSSを再利用したいって人からメールが来るよ．" userName="thm" createdAt="2025/04/27 07:05:54" color="">}}




{{<matomeQuote body="今日HNでCSS Zen Garden見れて超嬉しい！でもTailwindみたいなのが流行って，基盤技術を理解しないのを誇る風潮が嫌だ．CSSの仕組み知らなくてもそれなりの物ができて，HTMLがクラスだらけでも気にしない．”どう動くかより結果だ”ってattitudeだね．これは業界全体のトレンドで，無知を賛美し，深い理解なしに結果を急ぐ．いつから知らない事が誇りになった？深さや習熟がオプション，いや不要って悲しいよ．" userName="throwaway150" createdAt="2025/04/27 09:54:20" color="#45d325">}}




{{<matomeQuote body="＞HTMLが内容よりもCSSクラスの方が多いめちゃくちゃな状態になってるなんて気にしないんだ！まさにそれだよ．Twitterの投稿HTMLがひどすぎ．投稿一つで254行、104div、860超クラス！クラス名だけで約9kBだよ．これが投稿ごとに繰り返される．本来は数個のdivとクラス、数行のCSSで済むはずなのに．プロがなんでこんな肥大化したの作るか理解できない．" userName="perilunar" createdAt="2025/04/29 04:28:15" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
