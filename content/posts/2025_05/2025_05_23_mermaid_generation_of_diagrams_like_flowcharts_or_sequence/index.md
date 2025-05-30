+++
date = '2025-05-23T00:00:00'
months = '2025/05'
draft = false
title = 'テキストから図が作れるMermaidがすごい！フローチャートやシーケンス図の生成も楽々！多くのサービスに対応！'
tags = ["図作成", "テキスト形式", "フローチャート", "シーケンス図", "開発ツール"]
featureimage = 'thumbnails/blue3.jpg'
+++

> テキストから図が作れるMermaidがすごい！フローチャートやシーケンス図の生成も楽々！多くのサービスに対応！

引用元：[https://news.ycombinator.com/item?id=44049619](https://news.ycombinator.com/item?id=44049619)




{{<matomeQuote body="Mermaidマジやばいんだけど、理由が2つあるんだよね。1つ目は、https://www.mermaidchart.com/play にあるエディターが casi WYSIWYG みたいで超便利。矢印描くとちゃんとレイアウト変わるの！ 2つ目は、Notion がコードブロックで Mermaid チャートをインライン対応してる（しかもプレビュー付き！）。これEng docs にアーキテクチャ図入れるのにちょーいいんだよね。" userName="NightMKoder" createdAt="2025/05/24 01:25:09" color="#45d325">}}




{{<matomeQuote body="ObsidianもmarkdownのコードブロックでインラインのMermaidチャート使えるよ。あんまり知られてない機能の一つだね。" userName="jdougan" createdAt="2025/05/24 02:29:42" color="#785bff">}}




{{<matomeQuote body="LLM（俺はChatGPT使ってる）に一般的な手順を説明するとMermaid形式で出力してくれるんだ。それをdraw.ioみたいなツールにインポートして手直しできる。ちょっと修正はいるけど、マジで作業が爆速になるよ。前に確認した時はdraw.ioはObsidianでもサポートされてた気がするな。" userName="patrickk" createdAt="2025/05/24 05:48:14" color="#ff33a1">}}




{{<matomeQuote body="最近これやってみたんだけど、draw.ioへのインポートがうまくいかなかったんだ。編集できる図じゃなくて、ただの静止画像になっちゃったんだよね。俺がなんか間違えたのかな？" userName="inadequatespace" createdAt="2025/05/25 18:09:05" color="">}}




{{<matomeQuote body="大体そういう時は、draw.ioのエラーメッセージをコピペするか、スクショ撮ってChatGPTに投げるとデバッグしてくれるよ。Mermaidスクリプトをインポートするやり方も決まった手順があるんだけど、メニューの場所とかは覚えとらんわ。ChatGPTに聞けばその手順も教えてくれるはず。" userName="patrickk" createdAt="2025/05/27 10:30:15" color="#ff33a1">}}




{{<matomeQuote body="githubとかgitlabでも使えるよ！" userName="novia" createdAt="2025/05/24 03:44:37" color="#ff5733">}}




{{<matomeQuote body="Supernotesでもいけるらしい！" userName="fastball" createdAt="2025/05/24 04:06:50" color="">}}




{{<matomeQuote body="GithubもインラインでMermaidチャート対応してるよ！大きなPRとかに入れるようにしてるんだけど、レビュー担当者にも好評なんだ。" userName="SkyPuncher" createdAt="2025/05/24 05:59:46" color="#785bff">}}




{{<matomeQuote body="Notionのことだけど、確かにMermaidはサポートしてるんだけど、入ってるバージョンが結構古くて、あんまりアップデートする気がないみたいなんだよね。そこがちょっと残念。" userName="Teocali" createdAt="2025/05/24 09:15:03" color="#ff5733">}}




{{<matomeQuote body="Hugoでもできるみたいだよ。" userName="codeduck" createdAt="2025/05/24 08:33:28" color="#ff5733">}}




{{<matomeQuote body="マルチモーダルLLMの使い道で一番気に入ってるのはこれだよ。1. やってるパイプラインのDAGを手描きする。2. そのグラフを写真に撮る（間違いあってもOK）。3. ChatGPTにその画像をmermaid.jsに変換してもらう。自分が扱ってるパイプラインは超複雑だし、手描きの絵も雑なのに、このやり方がめちゃくちゃ上手くいくのがマジでスゴい。" userName="LifeIsBio" createdAt="2025/05/24 01:42:26" color="#ff33a1">}}




{{<matomeQuote body="Drawingじゃなく箇条書きテキストからChatGPTにPlantumlでシーケンス図作らせたら、マジ５分で技術提案書に使えるレベルでビビった。俺みたいに誰も読まないドキュメントに時間かけたくない奴にとって、LLMでサッと図作れるのは助かるんだわ。何十年も図の価値には懐疑的だけど、数分ならOK。LLMにコード文書化させるのも良いね。”全DBテーブルの概要図作って”とかプロンプト書くわ。" userName="jillesvangurp" createdAt="2025/05/24 04:40:47" color="#ff5733">}}




{{<matomeQuote body="”誰も読まない「書くだけドキュメント」”<br>そういうドキュメント作る意味って何？作る過程で記憶に定着したり、矛盾見つけたりとか何かメリットあるならわかるけど。そうじゃないなら、スキップしちゃえばいいんじゃない？" userName="nine_k" createdAt="2025/05/24 06:19:45" color="">}}




{{<matomeQuote body="ドキュメントは理解を共有するツールだよ。今の人とだけじゃなく、未来の自分ともね。<br>最近、Gemini proがソースやログ見るだけで複雑なワークフローを数分で正確に文書化できるの知ってる？だから低レベルなドキュメントの価値は疑問。高レベルな要求、つまり”どう動くべきか、何のためか”みたいなのはマジ価値あるよ。自分とモデルで意図通りか確認できるからね。" userName="baq" createdAt="2025/05/24 06:53:31" color="#45d325">}}




{{<matomeQuote body="図を作る唯一の理由は、作れって言う奴を黙らせるため。そいつらはどうせ見ない。開発の邪魔だし時間の無駄。<br>UMLとか昔のツール（Rational Rose, Visio）はマジで役に立たなかった。今は誰も使ってないクソ。何十年も図には懐疑的だよ。<br>PlantumlとかMermaidとかのOSS図ツール？作った奴らですら、自分のソフトのドキュメントに自分たちのツール使ってないんだぜ？皮肉だよな。DevOps以外でちゃんと図使ってるOSSプロジェクト、俺は知らない。" userName="jillesvangurp" createdAt="2025/05/24 09:23:18" color="#38d3d3">}}




{{<matomeQuote body="シェアするほどのもんじゃないんだけどね。毎回プロンプト書き直してるけど、最近のはこれかな。<br>”手描きのワークフロー図の画像があるんだけど、これをmermaid.jsファイルにしたいんだ。”（画像添付して）" userName="LifeIsBio" createdAt="2025/05/24 04:36:01" color="">}}




{{<matomeQuote body="代わりに、LLMに現在のコードからMermaid DAGを作ってもらうこともできるよ。" userName="lubujackson" createdAt="2025/05/24 04:02:23" color="#45d325">}}




{{<matomeQuote body="それ、面白いアイデアだね。図を描くときって、コード現状とリファクタリング後の理想が混ざっちゃうことが多いんだよね。" userName="LifeIsBio" createdAt="2025/05/24 04:34:10" color="">}}




{{<matomeQuote body="ビルドシステム比較の講演でMermaidをシーケンス図にたくさん使ったよ。<br>動画やスライドもある（URL省略）。<br>GPT4oが超便利だった！ビルドログからすぐ図を作ってくれたけど、手直しも少し必要。<br>問題は、保存ポイントをちゃんと取らなかったり、KrokiでPNG保存したりしたせいで変更管理がややこしくなったこと。疲れてるとダメだね。" userName="paul_h" createdAt="2025/05/24 05:46:35" color="#45d325">}}




{{<matomeQuote body="スライド面白いね！こういうシステムをいろんな方法でセットアップするのを見るのはいつも楽しいし、実践的なgitリポジトリまであるのは素晴らしいね！" userName="azthecx" createdAt="2025/05/24 07:24:56" color="">}}




{{<matomeQuote body="Krokiをチェックしてみてよ！MermaidとかPlantUML、Ditaa、GraphViz、SVGBobとか、たくさんのテキストベース図生成ツールをラップしてるマルチシンタックスツールだよ。<br>https://kroki.io/" userName="smurpy" createdAt="2025/05/24 05:51:55" color="#45d325">}}




{{<matomeQuote body="それはかなりイケてるね、シェアしてくれてありがとう。<br>Githubのリポジトリはこちら（https://github.com/yuzutech/kroki ）。MITライセンスで、ありがたいことにチャットにはZulipを使ってるんだね！" userName="mdaniel" createdAt="2025/05/24 13:25:05" color="">}}




{{<matomeQuote body="ちょっと驚いたんだけど、Excalidraw（https://excalidraw.com/ ）がコメントに出てないね。<br>開発者やデザイナーにアイデアを伝えるのにいつも使ってるんだ。<br>それに、jsonでエクスポートできるんだよ！<br>MermaidからExcalidrawに変換するライブラリを書いた人もいるみたい。<br>今は、ExcalidrawやMermaidを使って面接で質問するデザイン問題を考える実験をしてるところだよ。" userName="ngm7" createdAt="2025/05/24 03:17:04" color="#ff5733">}}




{{<matomeQuote body="前、システムデザイン面接でExcalidrawを使ったことがあるよ。すごく良かったな（普段の仕事でもよく使ってるから慣れてたんだけどね）。" userName="davely" createdAt="2025/05/24 03:53:34" color="#ff5c5c">}}




{{<matomeQuote body="Excalidraw大好きだよ。でも、編集できて差分管理できるテキスト表現はあるの？<br>簡単に生成できて、自動でレイアウトできるのかな？" userName="nine_k" createdAt="2025/05/24 06:23:51" color="#38d3d3">}}




{{<matomeQuote body="Kroki（https://kroki.io/ ）のコメントで、Excalidrawの例がKrokiのサイトにあるよ（https://kroki.io/#examples ）。入力はこんな感じだから、おそらく前のコメントの質問への答えは”はい”と”いいえ”だね。<br>テキストではあるけど、差分は意味ないと思うな。Inkscapeのsvgの差分を取るみたいな感じだよ。" userName="mdaniel" createdAt="2025/05/24 13:33:29" color="#ff33a1">}}




{{<matomeQuote body="うーん、個人的にはMermaidあんま好きじゃないんだよね。Graphvizとかdotの方がデザイン良いし、非プログラマー向けなのに文法が厳しいなって思う。でもさー、GitHubでインラインで使えるのがマジで最高なんだよ！シーケンス図よく作るんだけど、Mermaidで編集できるのがめちゃくちゃ便利。ただGitHubの右下に出てくる操作ボタンが邪魔なんだよなぁ。" userName="donatj" createdAt="2025/05/24 02:44:31" color="#38d3d3">}}




{{<matomeQuote body="いやいや、それ違うよ。独立したJavaScriptだけで動くやつなんだ。Graphviz dotより機能は全然少ないけどねー。" userName="nine_k" createdAt="2025/05/24 06:21:34" color="">}}




{{<matomeQuote body="dotをJavaScriptにクロスコンパイルしたやつを使ってるんじゃないかなーって思ってたけど。" userName="xamde" createdAt="2025/05/24 07:49:03" color="">}}




{{<matomeQuote body="んー、それっぽい基盤はソースコードに見当たらないんだよね。むしろd3とかDAGレンダラーに頼ってるみたいだよ。このGitHubのリンク先見てみて。" userName="mdaniel" createdAt="2025/05/24 13:30:35" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺はね、D2の方が断然好きなんだわ。https://d2lang.com/ がそのサイト。唯一の残念な点は、ブラウザの中で直接描画できないことかな。" userName="ris" createdAt="2025/05/24 10:29:08" color="">}}




{{<matomeQuote body="D2のもう一つの欠点は、露骨なOpen Coreプロジェクトだってこと。Terrastructっていう会社が金儲けしようとしてるんだよね。TALAは有料版の独自レイアウトエンジンで、D2本体と別。無料のOSS版で使えるレイアウトエンジンはDagreかELKなんだけど、DagreはGraphvizのJS移植みたいだし、ELKは変なレイアウトになることが多いんだ。" userName="yencabulator" createdAt="2025/05/24 18:37:18" color="#45d325">}}




{{<matomeQuote body="TALAが”特別な”レイアウトエンジンって言われてるのが不思議なんだよね。だって俺にとってはいつもすっごい変なレイアウトしか作ってくれなかったから。結局いつもELKを使っちゃうなー。" userName="ris" createdAt="2025/05/24 19:29:44" color="">}}




{{<matomeQuote body="前にwasm版を開発してたって聞いた気がするな [0]。今どこまで使えるかは分かんないけど、興味あったらどうぞ。<br>[0]: https://github.com/terrastruct/d2/pull/436/files" userName="Koffiepoeder" createdAt="2025/05/24 10:49:49" color="">}}




{{<matomeQuote body="このサイト https://play.d2lang.com/ が https://play.d2lang.com/d2.wasm を読み込んでるってことは、たぶん「もう（wasm版）完成した」ってことだね！" userName="mdaniel" createdAt="2025/05/24 13:16:49" color="#ff5733">}}




{{<matomeQuote body="これってさ，まだレンダリングの主要なソースはapi.d2lang.com/render/svg使ってる感じするんだよね．だからwasmはロードされて使われてるけど，全部をwasmでレンダリングしてるんじゃなくて，クライアント側の処理とかにwasm使ってるだけっぽいなー．" userName="Koffiepoeder" createdAt="2025/05/26 08:25:31" color="">}}




{{<matomeQuote body="それって結構デカい欠点だね．だって幅広いブラウザ対応（GitHubとかNotionとか）こそ，Mermaidのウリ（USP）だと思うからさ．" userName="manmal" createdAt="2025/05/24 11:05:23" color="">}}




{{<matomeQuote body="mkdocsみたいな静的サイトジェネレーターでレンダリングパイプライン組む覚悟があれば，そんなに悪くないよ．GitHubとかが好きなようにmarkdownをレンダリングさせるより，ずっと良い結果になるはず．" userName="globular-toast" createdAt="2025/05/24 12:25:51" color="#ff5c5c">}}




{{<matomeQuote body="トップページでこれ見るのちょっと違和感あるな…mermaidって結構前からあるし．それに正直言って，実際の現場で使われてるのあんまり見たことないんだよね．" userName="cogogo" createdAt="2025/05/24 00:25:17" color="">}}




{{<matomeQuote body="俺はMermaidよく使うよ．gitリポジトリのmarkdownに図貼るのに便利だし，gitで変更履歴追えるのが最高なんだ．他の開発者が何使ってるか気になるな．lucidとかVisioも試したけど，Mermaidのシンプルさが好きだよ．git blameで図の変更履歴見れるツールって他知らないな．" userName="prepend" createdAt="2025/05/24 00:55:58" color="#785bff">}}




{{<matomeQuote body="他の開発者が何使ってるかって話ね．仕事でmermaidとか他のテキスト→図ツールも試したけど，↑の人も言ってるように，なんか物足りなかったな．俺が知ってるほとんどの会社／チームはexcalidrawとかmiroみたいなの使ってるよ．シンプルさっていう点では合ってるけど，当然，git blameはできないね．" userName="heluser" createdAt="2025/05/24 03:25:11" color="#45d325">}}




{{<matomeQuote body="excalidrawは試したことないけど，miroは好きじゃないな．ドキュメントはリポジトリに埋め込みたいんだよ，外部サービスにリンクするんじゃなくて．miroはブレストとかには良いと思うけどね．" userName="prepend" createdAt="2025/05/24 15:55:36" color="#45d325">}}




{{<matomeQuote body="「図の誰がいつ何を変えたかをgit blameで見れるツールって他知らないな」← diagrams-as-code系のツールならどれでもできるんじゃない？" userName="billyp-rva" createdAt="2025/05/24 01:17:35" color="#785bff">}}




{{<matomeQuote body="GithubがMarkdownファイル内で自動表示してくれるから、Mermaidって事実上の標準みたいなもんだよね。" userName="matthew16550" createdAt="2025/05/24 01:28:57" color="#785bff">}}




{{<matomeQuote body="この人、Mermaidじゃできないけど図をクリックして編集できるって言ってるんだと思うよ。編集がソースにも反映されるってことね。<br>あなたは”テキスト変えて再生成”の話をしてると思うけど、それも同じようなもんだしね。<br>クリック編集の方が優れてるケースがよく分かんないな。" userName="_tom_" createdAt="2025/05/24 01:39:28" color="">}}




{{<matomeQuote body="こういうの好き！みんな、Mermaidでやった面白いこととか発見したことを返信してくれるからね。<br>記事のリンクは新しくないけど、コメントはよく新しい発見があるんだよね。" userName="mpalmer" createdAt="2025/05/24 03:35:28" color="">}}




{{<matomeQuote body="Webページに図を描くのが実際の使い道だよ！図をスクリーンショットで貼るより、コードとして扱う方が断然いいわ。<br>例えばここ見て！ https://sbs.johnnydecimal.com/14.23+OPS1#diagram" userName="jen729w" createdAt="2025/05/24 05:26:42" color="#ff5733">}}




{{<matomeQuote body="社内ドキュメントでめっちゃ使ってるよ。<br>Github（ネイティブで表示される）、Notion、JiraとかのMarkdownでね。" userName="manmal" createdAt="2025/05/24 11:07:42" color="#45d325">}}




{{<matomeQuote body="俺のアプリ[0]でMermaid使って、本のストーリー関係図を作ってるんだ。<br>[0]https://github.com/herol3oy/austen" userName="herol3oy" createdAt="2025/05/24 20:56:32" color="#38d3d3">}}




{{<matomeQuote body="あんたのアプリ面白そうだね。AIがどう使われてるか気になるわ。<br>登場人物の関係を見つけるのに使ってるとして、それってどうやるの？教えて。" userName="alok-g" createdAt="2025/05/25 03:58:15" color="">}}




{{<matomeQuote body="Mermaid図大好き。<br>コーディング用のLLMにアーキテクチャ設計の時や、その後正確性チェックのために図を作らせてるよ。<br>シーケンス図、CSD’s、フローチャート、DFD、ERDとかね。<br>これ以上簡単なことないわ。マジで最高。" userName="wadewatts" createdAt="2025/05/24 00:31:02" color="#45d325">}}




{{<matomeQuote body="そうそう、だからMermaidは今んとこ最強だと思う。LLMが構文よく理解してるみたいだしね。<br>システム設計の議論中に、議事録からAIにMermaid図を作らせたこともあるわ。<br>それを表示して共有すれば、みんなすぐ見て修正できるしね。<br>表示ツールはイマイチなのも多いけど、良いのもあるし、基本スタイリングちゃんとしてれば結構違うんだよね。" userName="bredren" createdAt="2025/05/24 03:46:20" color="#ff33a1">}}




{{<matomeQuote body="これ、Obsidianに組み込まれてるんだけど、メモにサクッと図を作るのにめっちゃ愛用してるわ。一番よく使うのは、アイデア考えてる時にデータベースのテーブル構成をマッピングすることかな。あと、処理の流れとか情報フローを図にするのにシーケンス図も使うよ。" userName="ding444" createdAt="2025/05/24 02:52:43" color="#38d3d3">}}




{{<matomeQuote body="認証フロー描こうとした時に、去年の今頃これ使ったの思い出したわ。Excalidrawも試したけど、図がデカくなると重くなっちゃうし、マウス使うよりタイピングの方が描きやすいんだよね。" userName="iammrpayments" createdAt="2025/05/24 04:30:31" color="#ff33a1">}}




{{<matomeQuote body="PlantUMLみたいな感じ？" userName="jagged-chisel" createdAt="2025/05/24 00:18:54" color="">}}




{{<matomeQuote body="見た目はPlantUMLより良いけど、図の種類は少ないね。あと、俺が知る限り、ローカルでレンダリング”する方法が「ヘッドレスChrome立ち上げて、頑張って」って感じだから、そこはイケてないかな。" userName="mdaniel" createdAt="2025/05/24 00:23:01" color="">}}




{{<matomeQuote body="PlantUMLのデフォルトテーマ以外を選べば、PlantUMLが90年代のJavaみたいな見た目じゃなくなるよ。ミニマルなソリューションとして、「skinparam monochrome true”」が既に気に入ってるんだ（CSSとかテーマでもっと色々できるしね）。" userName="JoachimSchipper" createdAt="2025/05/24 05:14:31" color="#ff5733">}}




{{<matomeQuote body="他のコメントで「開発者がREADMEでよく使う定番”」って言ってたけど、多分特にJavaScript周辺の開発者に多いと思うわ（うちの職場みたいに）。ローカルでレンダリング”する時の問題が、俺が色んなソースから生成した.jpgや.png、もしくはスクショで満足してる理由になっちゃったんだよね。" userName="gertlex" createdAt="2025/05/24 01:31:49" color="">}}




{{<matomeQuote body="JetBrainsのMermaidプラグインにエクスポート機能があるんだけど、これ使うと一手間省けるかもね。でも、Mermaidの図ってめっちゃ機能が限られてるし、シンタックスもPlantUMLより未熟だから、俺はあんまり bother しないんだ。「READMEで使う”」のは特別なケースだよ。GitHubとGitLabの両方で、Markdownレンダリングが問題なく対応してるからね。" userName="mdaniel" createdAt="2025/05/24 01:52:49" color="#38d3d3">}}




{{<matomeQuote body="VS Codeにはプラグインがあって、Markdownファイルをプレビューする時にローカルでレンダリングできるんだよ。開発のwikiファイルを編集する時には結構便利！" userName="twodave" createdAt="2025/05/24 02:22:09" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="でも、CLI版でSVGを生成する時、テキストのレンダリングに問題があるんだよね。" userName="aeonik" createdAt="2025/05/24 02:18:06" color="">}}




{{<matomeQuote body="https://www.eraser.io/diagramgpt これ、結構気に入ってるんだよね。" userName="kacesensitive" createdAt="2025/05/24 00:08:24" color="">}}




{{<matomeQuote body="Mermaidは好きだったんだけどさ、残念ながらLLMがあんまりよく理解してくれないんだよね。だからLLMが結構知ってるLatex tikzに乗り換えたんだ。少なくともGemini 2.5 Proはtikzをうまく扱えるって分かったよ。3.7とかo1はイマイチだったけど。" userName="behnamoh" createdAt="2025/05/24 00:40:18" color="#ff5733">}}




{{<matomeQuote body="deepseek r1はMermaidをめちゃくちゃよく理解してるし、GeminiとかClaudeの間違いも全部直せるよ。" userName="aryonoco" createdAt="2025/05/24 03:21:53" color="#38d3d3">}}




{{<matomeQuote body="俺もこれ賛成。I’veを使ってMermaidをそのまま生成したり、動的に図を作るためのカスタムMermaid構文ジェネレーターを作ったりしてるんだ。" userName="DrPhish" createdAt="2025/05/24 04:23:59" color="#ff33a1">}}




{{<matomeQuote body="俺が本当に欲しいのは、30個以上のマイクロサービスとそのつながりを、ごちゃごちゃにならずに図にできるものなんだ。Graphvizはまあまあだけど、同じk8s namespaceにあるサービスを近くにまとめるための、もうちょっと上のレベルのグルーピング機能が欲しいんだよね。" userName="jldugger" createdAt="2025/05/24 07:09:15" color="#45d325">}}




{{<matomeQuote body="クラスタじゃダメ？ネストできるよ。<br>リンク見てみて。" userName="noisem4ker" createdAt="2025/05/24 07:31:49" color="#ff5733">}}




{{<matomeQuote body="うーん。試したつもりだったけど、多分ドキュメントちゃんと読んでなかったんだな。あんたの返信読んだ後でも、サブグラフの名前に”cluster.”ってプレフィックスがいるって気づくのに20分もかかったよ。さらに調べたらcluster=trueでもいけるみたい。完全に望んでたものとは違うけど、前のランダムなのよりはだいぶマシになったよ！" userName="jldugger" createdAt="2025/05/25 05:35:17" color="#ff5733">}}




{{<matomeQuote body="IIRC、clusterプレフィックスとcluster=trueの両方が必要で動くはずだよ。クラスタは（特に普通のノードとクラスタノードの間に矢印があるとき）かなり扱うの難しいって俺も思った。" userName="jgalt212" createdAt="2025/05/26 13:28:47" color="#ff5c5c">}}




{{<matomeQuote body="俺はプレフィックスだけでいけてるみたい＾＾幸いなことに、クラスタ内に矢印を入れるつもりはないんだ。同じk8s namespaceにあるやつを近くに置きたいだけだから。" userName="jldugger" createdAt="2025/05/26 17:33:31" color="#ff33a1">}}




{{<matomeQuote body="Claude ArtifactsがMermaidの図を作ってくれるよ。" userName="zoba" createdAt="2025/05/24 04:33:00" color="#ff5733">}}




{{<matomeQuote body="Gemini 2.5のRooCode chat windowだとMermaidのチャートがいつも表示されるわけじゃないんだよ… 44049619。" userName="J_cst" createdAt="2025/05/24 11:27:59" color="#785bff">}}




{{<matomeQuote body="ブラウザベースのテキストto図ツールのリストをほぼ網羅してるんだ（リストはこれ→ https://xosh.org/text-to-diagram/）見てみてね。 sequencediagram.org みたいに特化したツールは、Mermaidみたいな汎用ツールよりずっといい仕事する時があるよ。" userName="smusamashah" createdAt="2025/05/23 23:56:40" color="#ff5733">}}




{{<matomeQuote body="WebSequenceDiagrams作った者だけど、リストでもっと上に欲しかったなー。まあ、俺が頑張るしかないか。作った当時はMermaid, plantUML，lucid chartsみたいなのは無かったんだ。ほとんどのツールはJavaとかgraphvizベースでめっちゃ冗長だった。BlackBerryの同僚にメールでシーケンス図をテキストで書いたのが始まりで、次の週にはそれを画像に変換するスクリプト作ってオンラインにしたんだ。それから多くのツールがこの構文を採用してくれて、広まったのが嬉しいよ。" userName="smhanov" createdAt="2025/05/24 03:33:18" color="#ff33a1">}}




{{<matomeQuote body="素晴らしい技術だよ、先駆的な仕事に感謝します。俺は会議をサポートして議事録を残すツールとして https://vsm-book.com/app を作ったんだ。WebSequenceDiagrams（と、これを参考にしたという https://bramp.github.io/js-sequence-diagrams/）はかなり意識したけど、俺の文法はそんな洗練されてないね。" userName="paul_h" createdAt="2025/05/24 05:35:44" color="">}}




{{<matomeQuote body="WSD（WebSequenceDiagrams）には本当にお世話になったよ！10年以上バリバリ使って、社内導入をゴリ押ししたこともあったくらい。当時は間違いなく画期的だったね。でも今はNotionとかにMermaidがデフォルトで入ってるから、チームの汎用ツールとしてはそっちが定番かな。" userName="_puk" createdAt="2025/05/24 08:03:03" color="#ff5733">}}




{{<matomeQuote body="お仕事ありがとう！WebSequenceDiagramsは長年愛用してたし、ペンと紙の代わりにこれで直接ブレストしてたよ。同僚がホワイトボードで、箱と矢印じゃなく「A-＞B: some action」ってスタイルで問題を説明してたのを見た時は笑ったな。もう俺たちの文化の一部になってたと思う。<br>承認下りなくて使えなくなった時に、PlantUMLツールで「まあ十分かな」って感じになったけど（NotionがMermaidじゃなくてPlantUML対応してくれたらな…）、サービスがまだ生きてるのがめちゃくちゃありがたいよ。" userName="makeitdouble" createdAt="2025/05/24 08:10:21" color="#ff5733">}}




{{<matomeQuote body="彼らは「もっといい」のかもしれないけど、Mermaidはオフラインでも動くんだ（CLIもあるし）、だからPlantUMLと一緒に断然良い選択肢だよ。オンラインツールは一回きりのものを作るにはいいかもしれないけど、俺がこういうツールを使う主な目的はドキュメント作成だからね、それは当然時間と共に変わる必要があるんだ。" userName="globular-toast" createdAt="2025/05/24 09:12:28" color="">}}




{{<matomeQuote body="俺がリストしたツールのほとんどはオフラインだと思うよ。ブラウザで読み込むけど、そこからは図をレンダリングするのにサーバーを使わないんだ。Krokiみたいな集約ツールはもちろんオフラインじゃないけどね。" userName="smusamashah" createdAt="2025/05/24 14:11:17" color="">}}




{{<matomeQuote body="Mermaidは好きだけど、完璧じゃないよね。リスト見てみるよ。俺がずっと欲しかったツールは、データベーススキーマのSQLを貼り付けたらテーブルとリレーションシップの図を出力してくれるやつなんだ。SQLであってMarkdownとかJSONとか他のフォーマットじゃないんだよね。<br>DrawDB (www.drawdb.app) がこれをやってくれるけど、まだビューは扱えない。でも、今のところ提供してるもので満足してるよ。それでも、他のツールの提案は歓迎するよ。" userName="andrewl" createdAt="2025/05/24 02:15:21" color="#785bff">}}




{{<matomeQuote body="dbdiagram.io っての見てみたらどうかな。ビューを扱えるかは知らないけどね、試したことないんだ。" userName="picklesman" createdAt="2025/05/24 03:18:45" color="">}}




{{<matomeQuote body="SQLite互換なら、多くの解決策があるんだけどね。一般的にはもっと難しいんだ。<br>宣伝だけど、 https://github.com/dgoffredo/sqliteviz ってのもあるよ。これはWebベースじゃないけど。" userName="MathMonkeyMan" createdAt="2025/05/24 03:27:47" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
