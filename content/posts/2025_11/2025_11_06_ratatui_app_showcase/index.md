+++
date = '2025-11-06T00:00:00'
months = '2025/11'
draft = false
title = 'Ratatuiの活用事例！必見アプリをチェック！'
tags = ["TUI", "Rust", "プログラミング", "UI", "Ratatui"]
featureimage = 'thumbnails/purple3.jpg'
+++

> Ratatuiの活用事例！必見アプリをチェック！

引用元：[https://news.ycombinator.com/item?id=45830829](https://news.ycombinator.com/item?id=45830829)




{{<matomeQuote body="「なんでRustでTUIなの？」ってよく聞かれるけど、RustのGUIは最悪だからだよ。RustはGUIベースのデータ設計には向いてないけど、QtをRustで使いたい。QMLとかSlint、GTKとかはナシ。RustでQtが実現しないと、もったいないよねって心配してる。URL: https://www.boringcactus.com/2025/04/13/2025-survey-of-rust-..." userName="RustSupremacist" createdAt="2025/11/06 05:22:42" color="#ff33a1">}}




{{<matomeQuote body="違うよ。RustでTUIを作ってる人たちは、TUIが好きだし、Ratatuiが楽しいから作ってるんだ。RustのGUIフレームワークの状況は関係ないよ。たとえ理想のQt on Rustができても、TUIを作りたい人たちは興味ない。" userName="kibwen" createdAt="2025/11/06 12:22:22" color="#45d325">}}




{{<matomeQuote body="キーボード中心のワークフロー（タイル型ウィンドウマネージャーとか）なら、TUIの方が断然いいね。GUIをTUIに置き換えるたびに、マウスに手を伸ばす必要がなくなって、作業がスムーズになるんだ。" userName="hombre_fatal" createdAt="2025/11/06 14:09:18" color="#785bff">}}




{{<matomeQuote body="RustのGUIについては意見が違うけど、TUIには確かなニッチがあると思う。GUIを作るのはどんな技術を使っても大変だし、テスト性、i18n、l10n、アクセシビリティの問題もある。だからCLIが使われるのは当然だね。<br>でも、CLIじゃ無理な時もあるから、TUIはCLIとGUIの中間に位置する、無駄のない良いソリューションだし、今後も残るだろうね。" userName="weinzierl" createdAt="2025/11/06 09:52:42" color="#45d325">}}




{{<matomeQuote body="それはないね。GUIの方がキーボード操作は上だよ。ターミナルはまだ、一部の修飾キーが見えなかったりバインドできなかったりする、かなり変な制限があるんだから！" userName="eviks" createdAt="2025/11/06 16:16:24" color="">}}




{{<matomeQuote body="公平に言うと、TUIはアクセシビリティの点でGUIより劣るね。支援技術にTUIの情報を伝える標準がないし、既存の数少ない標準も守られてない。GUIにはそういう標準があるし、主要な（Rust以外の）UIフレームワークではある程度実装されてるからね。" userName="miki123211" createdAt="2025/11/06 12:12:49" color="#ff33a1">}}




{{<matomeQuote body="Zed (https://zed.dev) はRustで構築されたGUIだよ。<br>GUIの専門家じゃないから間違ってるかもだけど、彼らはGUIに別の言語を使ったのかな？" userName="elmt35" createdAt="2025/11/06 09:02:16" color="">}}




{{<matomeQuote body="彼らはRustを使ってるけど、Rustの既存GUIがあまりにひどかったから、全部一から作り直したんだ。<br>Zedのスタックはすごいけど、まだ元の用途以外では広く使われてないから、荒削りな部分もあるし、Zedに不要なものはサポートしてないよ。" userName="adastra22" createdAt="2025/11/06 10:38:07" color="#ff5733">}}




{{<matomeQuote body="なんであのリンク、Wikipediaのおならの音にリダイレクトされるの？" userName="sunbum" createdAt="2025/11/06 09:01:06" color="">}}




{{<matomeQuote body="君が言うことは本当だけど、TUIはアクセシビリティの点でGUIより厳密に劣るってわけじゃないんだ。テキストはグラフィックより本質的に読みやすいから、例えば目の不自由なプレイヤーもコンソールベースのローグライクを遊べるんだ（実際にそういう人もいるしね: https://www.rockpapershotgun.com/playing-roguelikes-when-you...）。Dungeon Crawl Stone Soupには、目の不自由な人の体験を向上させるための設定オプションまであるんだよ: https://github.com/crawl/crawl/blob/599108c877da33bc03cb73da..." userName="kibwen" createdAt="2025/11/06 12:26:46" color="#ff33a1">}}




{{<matomeQuote body="「RustのGUI状況は最悪だ」って意見には同意するよ。でもGUIに限らず、Rustでは色んなプロジェクトで必要なクレートがWIP（作業中）か放置状態なんだ。人気のある大規模なクレートはいいけど、少しマイナーな道に入ると、他の言語よりずっとひどい状況だよ。Rustが新しいからってのもあるけど、コミュニティにクレートやフレームワーク開発への熱意が見えない気がするんだ。ほとんどのクレートがバージョン0.3.0で数年前から更新されてなくて、「XをRustで再実装したから、元のC++のドキュメント読め」って書いてあるだけなんだよね。" userName="PoorRustDev" createdAt="2025/11/06 13:01:10" color="#38d3d3">}}




{{<matomeQuote body="構造がなければテキストは読みやすいってわけじゃないし、構造を伝えなきゃアクセシビリティツールキットが提供するようなメリットは得られないよ。" userName="eviks" createdAt="2025/11/06 16:18:41" color="">}}




{{<matomeQuote body="「自明に誤り」って思うのは、俺が言ってる重要な部分が分かってないだけじゃない？<br>TUIはキーボードで操作できるのが当たり前で、他がひどくてもそこは保証されてる。GUIは開発者が頑張らないとキーバインドがなかったり、OSやUIツールキット任せで不便なことが多いんだ。例えば、タブキーが入力欄に吸い込まれて次の要素に移動できなかったり、ウェブブラウザの中だけのGUIだったりね。" userName="hombre_fatal" createdAt="2025/11/06 18:12:05" color="#785bff">}}




{{<matomeQuote body="https://github.com/longbridge/gpui-componentが、君の全ての要望を満たしてるんじゃないかな？" userName="lenkite" createdAt="2025/11/06 08:53:39" color="">}}




{{<matomeQuote body="テキストにはGUIにない固有の構造があるんだ。GUIは規格やフレームワークのおかげで上限は高いけど、TUIは最低限の質が保証されてるって感じかな。" userName="kibwen" createdAt="2025/11/07 02:18:29" color="">}}




{{<matomeQuote body="俺が思うに、TUIの価値は3つあるんだ。1つ目は「構成のしやすさ」で、`tmux`とか`vim`の`:term`みたいにターミナルウィンドウをいじるツールが充実してること。OSのウィンドウにはそれがないんだ。<br>2つ目は「一種の標識」で、キーボードを多用する技術者向けに作られてるから、そういうユーザーの要望が優先されるってこと。3つ目は「見た目がカッコいい」ってことかな！" userName="OkayPhysicist" createdAt="2025/11/06 22:38:14" color="#38d3d3">}}




{{<matomeQuote body="RustのGUIシステムに素晴らしい貢献があったのは嬉しいけど、これは公平じゃないな。`EGUI`は素晴らしいからね。" userName="the__alchemist" createdAt="2025/11/06 15:36:07" color="">}}




{{<matomeQuote body="TUIにもキーボード入力が不完全でマウス頼りの部分があるし、特殊キーの認識や汎用的なキーバインドで`GUI`より劣る点もあるんだよ。例えば、`Windowsキー`でのウィンドウ操作がTUIじゃ効かなかったり、キーコンボが通常の入力と区別つかなくて不便だったりね。タブキーが吸い込まれる件だって、キーボードでマウスカーソル動かせばいいって話も、「結局は開発者の努力次第」でしょ。TUIだからって何でもキーボードで完結するわけじゃないんだよ。" userName="eviks" createdAt="2025/11/07 06:07:21" color="#785bff">}}




{{<matomeQuote body="ほとんどのGUIはキーボードのみのワークフローを採用できない理由はないし、実装も簡単だ。逆は真じゃないんだよ。" userName="deafpolygon" createdAt="2025/11/06 16:00:21" color="">}}




{{<matomeQuote body="ほとんどのプロ向けアプリやテキストエディタは複雑なホットキーがあるよね。TUIがキーボード操作で優れてるわけじゃないし、色んな面でかなり制限されてる。だからTUIアプリはシンプルで小規模なユーティリティが多いんだ。ターゲットと開発者の意図によるよ。" userName="orbital-decay" createdAt="2025/11/06 22:11:32" color="">}}




{{<matomeQuote body="他にもTUIにはメリットがあるよ。<br>1. フォントとサイズの一貫性。ターミナルで設定すれば全部同じ。<br>2. テーマの一貫性。ターミナルやVimと同じカラースキームを使うから統一感がある。Electronアプリみたいに広告やアニメーションで邪魔されないしね（Discord見てるよ）。<br>3. 画面スペースが効率的。パディングとか無駄なスペースがないからタイル表示がきれい。<br>4. コピー＆ペーストの問題なし。最近使ったGUIチャットアプリはテキスト選択すらできなかったんだ。<br>5. 開発が比較的簡単で、使うのも楽しいって言ったっけ？" userName="WD-42" createdAt="2025/11/06 16:05:35" color="#ff5733">}}




{{<matomeQuote body="こういうマークアップベースのツールキットの開発者だけど、RustはUIを表現するのに最適な構文じゃないかもって思うよ。なぜDSLにそんなに反対するのか気になるな。この話題はよく出るから、DSLが良い理由をブログ記事にしたんだ: https://slint.dev/blog/domain-specific-language-vs-imperativ..." userName="ogoffart" createdAt="2025/11/06 07:43:50" color="#ff5c5c">}}




{{<matomeQuote body="1. 外部のウィンドウマネージャーを使うなら、tmux/ターミナルが提供するワークフローで、OSレベルのウィンドウとツールが提供しないものって何？<br>2. キーボード中心の技術ユーザーにとって、ターミナルプラットフォームは高度なキーバインディングをサポートできないから、これは大きな失敗だよ。GUIコードエディターの便利な設定は単純に引き継げない。<br>3. これは本当に珍しいね。スクリーンショットを見ても、ギャップのないボーダーさえ追加できないものが多いじゃん。" userName="eviks" createdAt="2025/11/07 06:22:01" color="">}}




{{<matomeQuote body="Qtは昔ながらのC++を熱狂的に愛する人々で成り立ってるから、今世代では起こりそうもないね。" userName="linhns" createdAt="2025/11/06 10:44:56" color="">}}




{{<matomeQuote body="最新のGPUがなくても動くの？" userName="Narishma" createdAt="2025/11/06 20:09:03" color="">}}




{{<matomeQuote body="何言ってるの？TUIやCLIの方が、ANDIや508 complianceの莫大な苦労よりも、スクリーンリーダーにとってはるかに使えるはずだよ。" userName="tomrod" createdAt="2025/11/06 12:32:30" color="">}}




{{<matomeQuote body="実際のプロジェクトでeguiを使ったことがあるけど、遅いし、悪い意味で意見が強いし、テーマのカスタマイズ性も低いんだ。最新のGUI標準にも追いついてないし、これらの基準で見ても最高のRust GUIプロジェクトじゃないよ。" userName="adastra22" createdAt="2025/11/06 16:09:46" color="#ff33a1">}}




{{<matomeQuote body="Ok、この2つのカラムの inherent structureって何で、スクリーンリーダーはどうやってその構造を divineするんだろ？ frameworkが「2つのヘッダーがある」って教えてくれないとわからないよね。それに、レイアウトがCLI utilsみたいにスペース区切りだったらって想像してみてよ。大変だよね。" userName="eviks" createdAt="2025/11/07 05:29:00" color="">}}




{{<matomeQuote body="彼らはliteralにそれに取り組んでるって発表したばっかりだよ: https://www.qt.io/qt-bridges" userName="Kelteseth" createdAt="2025/11/06 11:13:43" color="#ff5733">}}




{{<matomeQuote body="TUIウェブブラウザを本当に待ってるんだ。それがあれば完全にターミナルで生活できるようになるのに。誰か開発してる人いるのかな？<br>ターミナルの速度とか、sixelやshadersみたいなグラフィックサポートを考えると、動画が見れなくても、ほとんどのページがリーダーモードで見れるだけでも最高だよね。<br>大手企業は広告ブロックがもっと簡単になっちゃうから、きっと喜ばないだろうけどね。でも、LLM向けのブラウザとして提案したら、もしかしたら協力してくれるかも？彼らにとってnative interfaceだってね。W3M、Lynx、*links*みたいなブラウザもあるけど…roughだし…今のTUI revolutionで見られるクオリティには全然達してないんだよね。" userName="godelski" createdAt="2025/11/06 05:16:42" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="でもさ、なんで？たまにHTMLページをターミナルで見たいってのはわかるけど、なんで実際のハードウェアアクセラレーションがあるリアルなバッファを使わずに、ランダムな文字ハックで大量のオーバーヘッドがある低解像度2Dバッファにレンダリングするの？" userName="gf000" createdAt="2025/11/06 07:46:10" color="">}}




{{<matomeQuote body="Character based interfaceって、個人的にはただただ良いんだよね。Borland IDEはdev interfaceのpinnacleだったよ。モダンなlanguage serverをサポートするようにアップデートされたら、夢のdev environmentだね。text modeでcompliantなウェブブラウザがどこまでいけるか見てみたいよ。ほとんどのターミナルが適切なimage supportを持ってないのは、btw、本当にsadだよ。<br>Edit: ここのコメントがhttps://www.brow.sh/にリンクしてた！これ、amazingに見えるね。" userName="actionfromafar" createdAt="2025/11/06 11:38:20" color="#ff33a1">}}




{{<matomeQuote body="「低解像度2Dバッファにランダムな文字ハック」だって？<br>ここ5年でターミナル使ったことある？今じゃグラフィックも何でもあるんだよ [0] <br>「大量のオーバーヘッド」だって？<br>A... ターミナル... が... 大量のオーバーヘッド？冗談だろ。GUIアプリに会ったことある？Microsoft Wordは数ギガ使うよ。SpotifyやSlackみたいなElectronアプリ見たことある？俺のfucking mail clientはhalf gig以上使うのに、neomuttはほとんど何も使わない。<br>お前が数字をでっち上げてるか、俺たちが別のrealityに住んでるかのどっちかだね。<br>「実際のハードウェアアクセラレーション」？<br>ハードウェアアクセラレーションはもう何年も前から存在するんだが…<br>assumptionsするのをやめて、ターミナルができることをチェックしてみなよ。80年代からかなり進化してるんだから。ghosttyみたいなやつから始めることをお勧めするよ。[0] https://notcurses.com/" userName="godelski" createdAt="2025/11/06 18:26:30" color="#785bff">}}




{{<matomeQuote body="HTML5を使うなら、さっき言ってたGUIと同じくらいsluggishになるんじゃないの？一部だけレンダリングするからメリットがあるとか？ページをターミナルにレンダリングするのが、普通のウィンドウにレンダリングするより速い理由が、どうしても理解できないんだよね。ブラウザとGPUの間にもう一層増えるだけに見えるんだけど。" userName="chipheat" createdAt="2025/11/07 06:34:06" color="">}}




{{<matomeQuote body="君はfull systemについて誤解してると思うよ。GUIが実際よりもずっとシンプルだと思ってて、逆にCLIがずっと複雑だと思ってるんじゃないかな。画面にピクセルを描くだけじゃなくて、もっと色々やってるんだ。VimがMicrosoft Wordより何倍もresource intensiveじゃない理由から考えてみたら？それからneomuttとThunderbird、Outlook/Apple Mailについても同じことを考えてみてよ。<br>あと、GPUとの間にextra layerがあるってのもよくわからないな。ブラウザもターミナルエミュレータもOSの上に載ってるだけだし。でもheadlessで実行すれば、OSはデスクトップ環境をロードする必要がないんだから、この時点でGPUが処理するものが減るのは明らかだろ？" userName="godelski" createdAt="2025/11/07 18:02:24" color="#ff5c5c">}}




{{<matomeQuote body="GUIがcomplexなのは理解してるんだけど、HTML5がすでにGUIのように振る舞うから、performance benefitがわからないんだよね。ターミナルプログラムだとしても、compliantであるためにはlayoutを計算したり、DOMをhandleしたりする必要があるでしょ？websiteはWordと同じくらいintensiveになり得るよ。<br>それがadditional layerになるっていう僕のlogicは、ブラウザが直接画面にtextをrenderingする代わりに、terminalと話してterminalがtextをrenderingするってこと。graphicsのrenderingも同じ。headless system以外では、そんなにbenefitがあるとは思えないんだけど。" userName="chipheat" createdAt="2025/11/07 20:53:21" color="">}}




{{<matomeQuote body="ただoverall overheadが少ないってことだよ。<br>「ウェブサイトってWordと同じくらいintensiveになり得る」って言うけど、Wordがあんなにintensiveなのはbusiness上おかしい。あれはbloated piece of garbageだよ。" userName="godelski" createdAt="2025/11/08 01:05:49" color="">}}




{{<matomeQuote body="Browsh [0] っていうのがあって、Firefoxをヘッドレスで動かして、全部ターミナルにASCIIで描画してくれるんだ。最高だよ！[0] https://www.brow.sh/" userName="awesomeusername" createdAt="2025/11/06 05:22:01" color="#ff5c5c">}}




{{<matomeQuote body="「TUIウェブブラウザを本当に待ってるんだ。そしたら完全にターミナルで生活できるのに。」って言ってるけど、もう90年代からできるよ。Lynx[1]とw3m[2]はどちらも30年以上前からあるんだからね。[1]: https://en.wikipedia.org/wiki/Lynx_(web_browser)[2]: https://en.wikipedia.org/wiki/W3m" userName="littlestymaar" createdAt="2025/11/06 07:21:50" color="#ff5733">}}




{{<matomeQuote body="ELinksは俺がずっと使ってるTUIブラウザだよ。https://github.com/rkd77/elinks" userName="jasonjayr" createdAt="2025/11/06 07:38:31" color="#45d325">}}




{{<matomeQuote body="ELinksみたいなやつは、Servoエンジン上にシンプルなTUIを書けば作れるかもね。そしたら、最近のネットの大部分を占めるJavaScriptだらけの複雑なWebページも扱えるようになるよ。" userName="xvilka" createdAt="2025/11/06 09:32:36" color="#785bff">}}




{{<matomeQuote body="彼らはRustで書かれたテキストブラウザを求めていて、C/C++みたいな“汚い”言語で書かれたソフトウェアには触れたくないんだと思うな。" userName="ororoo" createdAt="2025/11/06 19:53:34" color="">}}




{{<matomeQuote body="残念だけど、RustはLLVM (C++) でコンパイルされるし、標準ライブラリはglibc (C) にリンクしてるんだよね。でもそれが理由じゃないと心から願うよ。俺自身、Rustの大ファンで（もう10年もコード書いてる）、Rustは間違いなく未来だと思うけど、だからといってこれまでのオープンソースの基盤を全部捨てるべきってわけじゃないからね。" userName="littlestymaar" createdAt="2025/11/06 21:43:36" color="">}}




{{<matomeQuote body="ごめん、俺のコメントちゃんと読んだ？俺、名前出して言及したんだけど... <br>＞＞ ブラウザがあるのは知ってるけど、W3M、Lynx、*links*みたいなのは…ちょっとね…" userName="godelski" createdAt="2025/11/06 18:30:05" color="#ff5733">}}




{{<matomeQuote body="これ、けっこう使うよ。めちゃくちゃ良い。https://chawan.net/" userName="be_erik" createdAt="2025/11/06 05:29:38" color="#ff5733">}}




{{<matomeQuote body="これ、けっこう良さそうだね。ありがとう！絶対試してみるよ。" userName="godelski" createdAt="2025/11/06 06:18:43" color="">}}




{{<matomeQuote body="Chawanはすごいよ。かなりカスタマイズできるし、定期的にアップデートされてる。速いんだよね。あと、manを置き換えるchamanユーティリティも良い感じ。" userName="moderation" createdAt="2025/11/06 12:37:21" color="#785bff">}}




{{<matomeQuote body="Rustじゃないけど、nimwaveをチェックしてみて。https://github.com/ansiwave/nimwave" userName="miguel_martin" createdAt="2025/11/06 09:26:40" color="">}}




{{<matomeQuote body="Carbonylは有望そうだったんだけど、残念ながらもうメンテナンスされてないんだ。https://github.com/fathyb/carbonyl" userName="mike31fr" createdAt="2025/11/07 07:10:46" color="">}}




{{<matomeQuote body="なんでターミナルで暮らしたいの？それ、めちゃくちゃ制限されるじゃん。本当に欲しいのはEmacsだよ。EmacsにはTUIウェブブラウザのEWWもインフォブラウザもすでにあるしね。vtermで“本物の”（そして劣った）vimをEmacsで動かすこともできるし、evil modeとかgod modeみたいなEmacs用のモーダルモードを使うこともできるよ。" userName="globular-toast" createdAt="2025/11/06 08:39:10" color="#ff33a1">}}




{{<matomeQuote body="Emacsのモーダル編集は好きになりたかったんだけど、結局いつも間に合わせになっちゃうってことを受け入れなきゃならなかった。Boonは最高だったけど、もっと改善しようと思った時、長期的に見たら自分のテキストエディタを作る方が楽だって気づいたんだ。まあ、それは俺が選んだ言語のRubyのツールがまだあまり良くないからだけどね。もしelispで生きていけるならEmacsはすごいよ。俺はRubyでやりたいし、Emacsじゃそれができないんだ。" userName="vinceguidry" createdAt="2025/11/06 18:20:28" color="">}}




{{<matomeQuote body="多分、君が思ってるほど制限されてないよ。https://notcurses.com/" userName="godelski" createdAt="2025/11/06 18:32:17" color="">}}




{{<matomeQuote body="cursive TUIライブラリはHTMLレンダリングもするんだ。https://sr.ht/~ireas/cursive-markup-rs/<br>cursiveライブラリ全体がレイアウト的にかなりHTMLっぽい感じがするよ。" userName="fruitworks" createdAt="2025/11/06 05:20:28" color="#ff33a1">}}




{{<matomeQuote body="ちょっと宣伝させてね。https://github.com/benjajaja/mdfried/<br>Markdownは生のテキストでも読みやすいって意味で本当にすごいよね。でも、ヘッダーが大きくなると格段に読みやすくなるから、いつも.mdファイルをブラウザで開いてたんだ。だから、ヘッダーを画像としてレンダリングするMarkdownビューアを書いたんだよ。フォントは一度設定しないと動かないし、ターミナルフォントは検出できない。インライン画像ももちろんレンダリングするんだけど、これもブラウザを使う理由の一つだったんだ。そしたら、Kittyがhttps://sw.kovidgoyal.net/kitty/text-sizing-protocolを開発したんだ。（Ghosttyにも実装されたと思うんだけど）これを使えば、テキストを画像に変換する処理をスキップして、直接そのプロトコルを活用できるってわけ。" userName="the_gipsy" createdAt="2025/11/06 10:44:26" color="#ff33a1">}}




{{<matomeQuote body="これ、めっちゃいいね！シェアしてくれてありがとう！そういえば、Ghosttyはまだこのプロトコルを実装してないと思うな。" userName="unmotivated-hmn" createdAt="2025/11/06 20:39:29" color="">}}




{{<matomeQuote body="確かに、YouTube動画で聞き間違えちゃったみたい。Ghosttyのリポジトリで議論されてるし、誰かがPresentermには何かあるって言ってたよ。でも、Ghosttyで画像レンダラーがちゃんと動くのは良いね！" userName="the_gipsy" createdAt="2025/11/06 22:18:20" color="">}}




{{<matomeQuote body="最近TUIをよく見るけど、なんでだろう？また注目されてるのかな？知ってるのはAwesome TUIs [0]とterminaltrove [1]くらい。RatatuiにもAwesomeリストがあるね [2]。<br>[0] https://github.com/rothgar/awesome-tuis<br>[1] https://terminaltrove.com/<br>[2] https://github.com/ratatui-org/awesome-ratatui" userName="omarvanez" createdAt="2025/11/06 03:55:47" color="#ff33a1">}}




{{<matomeQuote body="他のコメントにもあるけど、SSH経由でGUIっぽい体験をするには、これが唯一の方法なんだよね。" userName="lynndotpy" createdAt="2025/11/06 04:31:42" color="#ff33a1">}}




{{<matomeQuote body="TUIライブラリのおかげで、ターミナルレンダリングの低レベルな変な癖が十分抽象化されて、ターミナルがIDEで拡張機能なしで使えるキャンバスみたいになったんだ。データをブラウザに送って表示する面倒な処理を書かなくても、アプリの状態を表示できるのはDevXとしてかなり良いよ。<br>[0] https://github.com/NimbleMarkets/ntcharts/blob/main/examples/" userName="genidoi" createdAt="2025/11/06 04:17:50" color="#38d3d3">}}




{{<matomeQuote body="なんでまたTUIが人気かって言うと、良いデスクトップGUIプラットフォームがもうないからだよ。QtやGTKは巨大で、WindowsはUIを頻繁に変えるし、Electronは使いたくないし、GUIをゼロから書くのは大変。最近はターミナルが進化して、GUIより質の高いものを作りやすくなったんだ。LEGOで何かを作るのが粘土より簡単なのと似てるね。今の開発者は昔よりUXに詳しいし。" userName="laserbeam" createdAt="2025/11/06 04:35:19" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Godotは、ちょっとしたGUIと基本的なコントロールが必要な個人ツール作りには便利だよ。GdScriptでプログラム全体を書けるし（APIでほとんどのOS操作に対応してる）、普段は使わないけどそういう時にサッと出して使うんだ。こんな感じのやつね：https://postimg.cc/VJc0pWbB" userName="dualogy" createdAt="2025/11/06 06:11:05" color="">}}




{{<matomeQuote body="個人的には、バーで使い捨てカメラを出してる若者を見るみたいな感覚かな。世代的なノスタルジーだね。" userName="morkalork" createdAt="2025/11/06 04:01:11" color="">}}




{{<matomeQuote body="TUIが人気なのは、codexが原因かもしれないね。これはオープンソースで多くの人が使っていて、Ratatuiを使ってるんだ。みんな実装を見に行ってRatatuiを発見するんだろう。多分、今はこのライブラリを使ってる中で一番人気のあるアプリケーションだと思うな。今回の特集に入ってないのが意外だよ。" userName="Szpadel" createdAt="2025/11/06 05:43:58" color="#785bff">}}




{{<matomeQuote body="低レベルなターミナル周りは、まだ全然ダメだね。何年か前、HNでスタック全体を見直そうとしてる人のブログ記事を見たけど、そのプロジェクトどうなったんだろう。もしみんなTUIが本当に好きなら、いずれ1980年代の時代遅れなやり方はやめるべきだよ。" userName="flomo" createdAt="2025/11/06 05:51:58" color="">}}




{{<matomeQuote body="X11はSSH経由でも全然問題なく動くよ。リモートで動いてるプロセスが描画したウィンドウを自分のデスクトップに表示できるし、まるでローカルみたいに見えるし、使えるんだ。" userName="adastra22" createdAt="2025/11/06 10:41:08" color="">}}




{{<matomeQuote body="TUIってGUIより全然いいじゃん。リソースも全然使わないのに、めちゃくちゃパワフルだよ。" userName="backscratches" createdAt="2025/11/06 06:22:35" color="#785bff">}}




{{<matomeQuote body="X11はもっとすごいものがあるって言われて諦めたんだよね。結局その約束は果たされなかったけど。昔からよくある技術の話だよな。" userName="aj_hackman" createdAt="2025/11/06 20:25:34" color="">}}




{{<matomeQuote body="1970年代とか1980年代にもこういうのあったんだよ。「フォームライブラリ」って呼ばれてたけど、今のグラフィカルアプリ開発者にも馴染みのあるような、ちゃんとしたアプリケーションフレームワークだったんだ。" userName="eschaton" createdAt="2025/11/06 04:28:42" color="#ff5733">}}




{{<matomeQuote body="それかClaudeもね。うちのチームにも、コード生成するチャットボットにはターミナルインターフェースを好む開発者が結構いるんだ。" userName="mock-possum" createdAt="2025/11/06 06:55:07" color="#38d3d3">}}




{{<matomeQuote body="このシリーズ？https://arcan-fe.com/2025/01/27/sunsetting-cursed-terminal-e..." userName="wonger_" createdAt="2025/11/06 06:31:02" color="">}}




{{<matomeQuote body="昔（2009年）バスの広告デバイスを売る会社で働いてたんだけど、TitanのHTMLインターフェースはみんな嫌がってたよ。古いTUIシステムの方がマウスもいらないし、慣れてるからってのもあるけど、HTML版より百万倍速く使えたんだ。（公平に言うと、そのHTMLはひどかったけど、俺のせいじゃないからね。）" userName="zimpenfish" createdAt="2025/11/06 10:31:38" color="#ff5c5c">}}




{{<matomeQuote body="俺は圧縮されたX11みたいなツールで、だいたい良い経験をしてるよ。x2goとかいくつかあるけどね。" userName="vostok" createdAt="2025/11/06 04:36:15" color="">}}




{{<matomeQuote body="Godotは良いけど、UIのテーマ設定がイケてないな。ボタンを例にとると、状態ごとにテーマを個別に定義しなきゃダメなんだ。継承もないし、コピペが精々。一つ変えたいなら全部変えるハメになる。CSSなんかと比べたら、ちょっとインタラクティブなGodotのGUIをテーマ化するのはマジで悪夢だよ。" userName="bodge5000" createdAt="2025/11/06 10:08:38" color="">}}




{{<matomeQuote body="あー、xpraなんて久しぶりに聞いたな！XクライアントとXサーバーの間にあるインダイレクション層で、SSHでログインしてFirefoxとか動かして、切断しても再接続すればちゃんと続きから使えるってやつだったよな。" userName="fragmede" createdAt="2025/11/06 04:53:55" color="">}}




{{<matomeQuote body="いや、ClaudeはRustで書かれてないし、Ratatuiも使ってないでしょ。" userName="adastra22" createdAt="2025/11/06 10:42:20" color="">}}




{{<matomeQuote body="WaylandはX11のリモートディスプレイ機能を完全に放棄したんだよな。この機能を再現しようとする努力は全然ない。Waylandに切り替えたら、SSH経由でGUIアプリは動かせなくなるぜ。" userName="adastra22" createdAt="2025/11/07 04:13:20" color="">}}




{{<matomeQuote body="HNの多くの人は、長年ひどいWebインターフェースやGUIに苦しめられてきたから、TUIは歓迎される変化だし、大きな改善だよな。TUIには制限があるから素晴らしいインターフェースは作りにくいけど、その制限のおかげで本当にひどいインターフェースも作りにくい。TUIはシンプルから中程度の複雑さのソフトウェアにはマジで向いてるぜ。Midnight Commanderとか試してみろよ。" userName="webnrrd2k" createdAt="2025/11/06 04:33:09" color="#ff33a1">}}




{{<matomeQuote body="最近TUIが増えてる理由？いくつかあるぜ。ほとんどがmacOS、Linux、BSD、Windowsのクロスプラットフォーム。コンテキスト切り替えが減るし、ターミナルにいるならGUIに切り替える必要ないだろ。今のターミナルはGPUアクセラレーションや24ビットカラー対応で、速くて高性能。コードを書くのに魅力的だよ。それに、開発者はIDEじゃなくターミナルで作業することが増えてる。Claude Code、Gemini CLI、Codexとか使ってる奴も多いしな。" userName="alwillis" createdAt="2025/11/06 05:31:11" color="#ff5c5c">}}




{{<matomeQuote body="SSH経由でウィンドウサーバーも提供できるぜ。" userName="MangoToupe" createdAt="2025/11/06 04:36:48" color="">}}




{{<matomeQuote body="記事とは関係ないけど、俺たちミレニアル世代はWebとモバイルに夢中で、そっちに集中した結果、CやC++の開発にはあんまり参加しなかったんだよな。ピーク時のGNUの残りのターミナルアプリを使ってた。Rustが出てきてキャリアのチャンスになった時、ターミナルアプリはRustに飛び込むのに良い方法だったし、みんなのスキルセットのギャップを埋めたんだ。RustでGUIアプリを作る時でさえ、最初はCLIが入り口になることが多い。俺たちはWebやモバイルから得たUXの考え方をRustと組み合わせて、新しいアイデアが生まれたんだ。「壊れてないなら直すな」ってのが20年も続くと、かなりの進化の圧力がたまるってことさ。" userName="positron26" createdAt="2025/11/06 05:32:23" color="#ff5733">}}




{{<matomeQuote body="俺にとっての一番の理由は、シンプルなキーボードナビゲーションだよ。リンクやメニューをカチカチクリックしたくないし、マウスは一切使いたくない。タイリングウィンドウマネージャーがまた人気になってるのも、同じ理由だと思うぜ。" userName="mendelmaleh" createdAt="2025/11/06 07:31:13" color="#45d325">}}




{{<matomeQuote body="俺の持論だけど、Webアプリはめちゃくちゃ肥大化してて遅いし、デスクトップアプリも大抵はWebアプリをただラップしてるだけだ。TUI開発者は、製品を無駄なく、そして迅速に保つことを気にかけてるし、いつも製品をいじり回したりしない。速くてシンプルなUIを評価するユーザーもいるし、常にA/Bテストされたり、肝心な体験がいつも壊されたりするのを嫌がるんだよ。" userName="serial_dev" createdAt="2025/11/06 07:11:20" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
