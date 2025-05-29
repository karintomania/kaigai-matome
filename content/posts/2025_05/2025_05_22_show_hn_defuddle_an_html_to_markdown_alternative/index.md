+++
date = '2025-05-22T00:00:00'
months = '2025/05'
draft = false
title = 'Readabilityの代替 Defuddleとは？ HTMLをMarkdownに変換'
tags = ["HTML", "プログラミング", "Markdown", "Webスクレイピング", "ユーティリティ"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Readabilityの代替 Defuddleとは？ HTMLをMarkdownに変換

引用元：[https://news.ycombinator.com/item?id=44067409](https://news.ycombinator.com/item?id=44067409)




{{<matomeQuote body="最近これ調べてたんだけど、Readabilityの各言語実装には正直イマイチだったんだよね。Readability.jsが一番マシだったけど、Javascriptってのがプロジェクトに合わなくてさ。結局、python trifaturaってライブラリが見た感じ一番精度高くて、メタデータも正確だったんだ。君の実装とtrifaturaを比べてみたら、改善点が見つかるかもよ。" userName="tmpfs" createdAt="2025/05/22 22:40:32" color="#ff5733">}}




{{<matomeQuote body="＞...Javascriptなのがプロジェクトに合わなかった”についてだけどさ、もしGo使ってるなら、Readability[0]とTrafilatura[1]のGoポートを俺がメンテしてるんだよ。これらは積極的にメンテされてて、Trafilaturaの方はPython版と遜色ないパフォーマンスだよ。<br>[0]： https://github.com/go-shiori/go-readability<br>[1]： https://github.com/markusmobius/go-trafilatura" userName="acrophobic" createdAt="2025/05/23 03:41:16" color="#ff5733">}}




{{<matomeQuote body="俺たちもgo-trafilaturaずっと使ってるけど、めちゃくちゃ気に入ってるよ。" userName="derekperkins" createdAt="2025/05/26 03:58:33" color="">}}




{{<matomeQuote body="これこれ！これ見たかったんだよ、ありがとう！" userName="breadchris" createdAt="2025/05/23 17:47:21" color="">}}




{{<matomeQuote body="ライブラリへの参照：https://trafilatura.readthedocs.io/en/latest/<br>知りたい人向け：Trafilaturaはイタリア語で”押し出し”って意味だよ。｜この方法は多孔質の表面を作って、パスタがソースをすごくよく絡むようにするんだ。maccheroni trafilatiとmaccheroni lisciで検索してみてね：）（そういえば、trifaturaじゃなくてTrafilaturaって言いたかったんだと思うよ）" userName="fabmilo" createdAt="2025/05/23 01:16:06" color="">}}




{{<matomeQuote body="最初から使ってるけど、2.0.0以降開発がかなり止まっちゃってるんだよね。" userName="thm" createdAt="2025/05/23 03:47:24" color="">}}




{{<matomeQuote body="ちょっと古いけど、何年か前にいくつかのウェブ抽出ツールのベンチマークやったんだ。https://github.com/Nootka-io/wee-benchmarking-tool<br>その時はresiliparse-plainが断トツの勝者だったよ。" userName="winddude" createdAt="2025/05/23 15:07:46" color="#ff5c5c">}}




{{<matomeQuote body="ちょうどobsidian web-clipperのソースコード見てたんだ。Markdown変換の結果がすごく良かったから impressed してたんだけど、そこでDefuddleを見つけたんだよ。自作のread-it-later/ knowledge-baseアプリで使う予定だから、事前にありがとうね：D" userName="creakingstairs" createdAt="2025/05/22 23:14:14" color="#38d3d3">}}




{{<matomeQuote body="obsidian clipperは出た初日から使ってるけど、これは本当にすごいね。サイトごとのプロファイルベースの抽出が最高だよ。たとえobsidianユーザーじゃなくても、Markdown抽出の品質はこれまで見た中で一番信頼できるね。" userName="Tsarp" createdAt="2025/05/23 03:18:06" color="#785bff">}}




{{<matomeQuote body="情報ありがとう！" userName="audessuscest" createdAt="2025/05/23 06:24:28" color="">}}




{{<matomeQuote body="良い仕事だね．JSDOMの例が助かるよ，まさにReadabilityみたいに使う方法だからね，これ良いドロップイン代替になりそう．<br>質問なんだけど： これどうやって検証したの？ Readabilityより良いって言うけど，精度とか網羅性を評価するテストやデータセットがリポジトリにないみたいだけど．それも共有できる？" userName="binarymax" createdAt="2025/05/23 13:44:39" color="#785bff">}}




{{<matomeQuote body="今は手動テストとユーザーフィードバックに頼ってるんだけど，うん，テストは追加したいと思ってるよ．<br>DefuddleはReadabilityとはかなり違う動きをするんだ．Readabilityは用心深すぎて，メインコンテンツの開始と終わりを見つけるためにブロックをテストするから，役に立つコンテンツまで削除しがちだね．<br>Defuddleは複数回実行できて，コンテンツが返されなかった場合に結果を広げるように試せるんだ．コンテンツをきれいにするのに，より多様な技術も使うよ ー 例えば，ページのモバイルスタイルを使って非表示にできるコンテンツを検出したりね．<br>最後に，Defuddleはコンテンツを抽出するだけでなく，出力も標準化してるんだ（これはReadabilityはやらないこと）．例えば脚注やコードブロックは全部一つのフォーマットで出力することを目指してるんだけど，Readabilityは元のDOMをそのままにするんだ．" userName="kepano" createdAt="2025/05/23 20:12:42" color="#ff5733">}}




{{<matomeQuote body="これすごいね！ Readabilityの代替としてDefuddleを試したいんだけど，私のユースケースだとChrome拡張のバックグラウンドスクリプト（サービスワーカー）でやりたいんだ．Readabilityは動くのに，Defuddleが動かせないでいるんだ（linkedomと組み合わせた時）．つまり，これは動くのに： import { parseHTML } from ’linkedom’; <br> ...<br> private extractArticleWithReadability(html: string) {<br> const { document } = parseHTML(html);<br> const reader = new Readability(document);<br> return reader.parse();<br> }<br><br> これは動かないんだ： import { parseHTML } from ’linkedom’; <br> ...<br> private async extractArticleWithDefuddle(html: string) {<br> const { document } = parseHTML(html);<br> const result = new Defuddle(document);<br> result.parse();<br> return result;<br> }<br><br> こういうエラーが出るんだ：<br>- Error in findExtractor: TypeError: Failed to construct ’URL’: Invalid URL<br>- Defuddle: Error evaluating media queries: TypeError: undefined is not iterable (cannot read property Symbol(Symbol(Symbol.iterator)))<br>- Defuddle Error processing document: TypeError: b.getComputedStyle is not a function<br>Chrome拡張のバックグラウンドスクリプト／サービスワーカーでDefuddleを動かす方法ってある？ それとも，そのためのサポートを追加する予定はある？" userName="honodk123" createdAt="2025/05/27 10:44:30" color="#45d325">}}




{{<matomeQuote body="Obsidian Web Clipperって，chatGPTの会話をmarkdownにしたり，印刷したりするのにすごく良いツールだよ（マジで，そういうユースケースもあるんだ）．" userName="jeanlucas" createdAt="2025/05/23 01:54:56" color="">}}




{{<matomeQuote body="他のクライアントについては分からないけど，Kagi Assistantは直接会話をMarkdownで保存できる機能があるよ．Obsidianのウェブクリッパーも良いアイデアだけどね．" userName="emaro" createdAt="2025/05/23 07:15:16" color="">}}




{{<matomeQuote body="ChatGPTに，必要なサマリーとかをmarkdownファイルとして提供してって，直接お願いしちゃうよ．" userName="T0Bi" createdAt="2025/05/23 02:19:07" color="">}}




{{<matomeQuote body="無料のオープンソースだよ： https://github.com/obsidianmd/obsidian-clipper" userName="jeanlucas" createdAt="2025/05/24 00:10:03" color="">}}




{{<matomeQuote body="MozillaのReadabilityって本当に放棄されたの？ 最新リリース（v0．6．0）はたった2ヶ月前だし，そのメンテナー（Gijs）も問題への対応にかなりアクティブみたいだけど．" userName="acrophobic" createdAt="2025/05/23 02:23:03" color="#ff33a1">}}




{{<matomeQuote body="正直言ってあのコードベースは改善点ありまくりだね．仕事でバグ（数字のカンマ誤認識とか）直すためにフォークしたくらい．プルリクもテスト必須なのにテスト自体が動かないし．個人的にはもう問題だらけって感じ．" userName="khasan222" createdAt="2025/05/23 05:40:49" color="#ff5c5c">}}




{{<matomeQuote body="これは多分 https://github.com/mozilla/readability/pull/853#issuecomment... のことだね．彼らの要求はかなり合理的だと思うよ．" userName="fabrice_d" createdAt="2025/05/23 16:12:13" color="">}}




{{<matomeQuote body="うーん，もしかしたら問題に近すぎんのかな，分かんないけど．ツール使おうとしてうまく動かないのはいつもイライラするよね．無料なのは分かってるけど，やっぱ良い貢献をしてもらえるように手助けするのが，メンテとかバグ修正には一番大事な気がするんだ．カンマ問題は絶対バグなのに，直そうって気がないのがちょっと残念だし，だからこのリポジトリは死にかけだと思うんだよ．" userName="khasan222" createdAt="2025/05/23 17:12:12" color="">}}




{{<matomeQuote body="”パッチがちゃんと動くこと，そして将来それを壊さないことを確実にしたい”っていう言葉を”直す気がない”ってどう解釈できるのか，僕には分からないな．まあ，君は君の考え方でいいけどね．" userName="fabrice_d" createdAt="2025/05/24 00:19:32" color="">}}




{{<matomeQuote body="Python版のReadabilityはメンテしっかりされてるみたいだね．何年か前に自分でReadabilityアルゴリズムを実装したことあったけど，そっちに乗り換えたんだ．いくつかスクレイパー動かしてるけど，定期的にアップデートされてて調子いいよ．" userName="rcarmo" createdAt="2025/05/22 21:50:21" color="#ff5733">}}




{{<matomeQuote body="具体的にどれかおすすめある？" userName="kepano" createdAt="2025/05/22 21:55:06" color="">}}




{{<matomeQuote body="親コメントじゃないけど，これがメンテされてるみたいだよ https://github.com/buriy/python-readability" userName="khimaros" createdAt="2025/05/22 22:11:11" color="#ff5c5c">}}




{{<matomeQuote body="Substance [^0] っていう似たプロジェクト作ったよ．たいていのReadabilityツールと違って，サイトごとに処理方法を定義できるフレームワークなんだ．だから対応サイトごとに質の高い結果が出せるんだよ．[^0]： https://substance.reorx.com/" userName="novoreorx" createdAt="2025/05/24 10:04:47" color="#ff33a1">}}




{{<matomeQuote body="真面目な質問なんだけど，誰が何のためにこのツール使うの？具体的なユースケースって何？他のコメントだと ChatGPT の会話をmdにエクスポートするくらいしか見なかったんだけど．" userName="Andr2Andr" createdAt="2025/05/23 08:19:21" color="">}}




{{<matomeQuote body="これはツールじゃなくてライブラリだよ．色々な用途に使えるんだ．<br>- サイト訪問者に”リーダーモード”提供<br>- ブラウザ拡張機能で使う<br>- スクレイピング<br>- ［リバース］ プロキシに組み込んでページ軽量化（例えば retro hardware 向け）<br>詳しい例はこちら：https://web.archive.org/web/20240621144514/https://humungus.... （サイトがよく落ちるからアーカイブね）" userName="rollcat" createdAt="2025/05/23 08:35:45" color="#38d3d3">}}




{{<matomeQuote body="LogSeqをよく使ってるんだけど、ウェブサイトからテキストだけをMDで抜き取れるオプションは、LogSeqとめっちゃ相性良さそう。<br>" userName="degosuke" createdAt="2025/05/23 08:30:31" color="">}}




{{<matomeQuote body="リーダー機能が効かないサイトがあるの知ってる？普通の記事でテキストいっぱいなのに、iPhoneのリーダーで開くと真っ白になるんだ。ニュースサイトに多いかな。<br>これって広告表示させるために、サイト側がわざとコンテンツを見えなくしてるの？だとしたらどうやってるんだろう？<br>" userName="jonplackett" createdAt="2025/05/23 07:02:21" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="クッキーとかプライバシーに関するバナーが原因のことが多いよ、特にEUとかUK、カリフォルニアとかね。<br>サイトによってはコンテンツを覆うだけのモーダルだからリーダーモードで対処できるけど、リダイレクトされたりサーバー側で処理されてたりするとダメなんだ。<br>リーダーモードが効かないなら、まずバナーを閉じてからもう一回試してみて。<br>" userName="miki123211" createdAt="2025/05/23 07:07:21" color="#785bff">}}




{{<matomeQuote body="これめっちゃいいね！最近のサイトってごちゃごちゃしてて情報過多だから、読者がコンテンツを読むのに集中できるような強力なMarkdownコンバーターが本当に必要とされてるんだよね。<br>Readabilityがいなくなった穴を埋めるものが出てきて嬉しいよ。この仕事を引き継いでくれてありがとう :-) " userName="severusdd" createdAt="2025/05/23 10:18:50" color="#ff5c5c">}}




{{<matomeQuote body="プレイグラウンドでURLを入力した後、どうやって送信してURLを取得するのか分からないんだけど？iOSキーボードでエンターキーを押しても何も起こらないんだ。何か見落としてるのかな？<br>" userName="busymom0" createdAt="2025/05/22 21:49:43" color="">}}




{{<matomeQuote body="あの入力欄はURLオプションをテストするために置いたものなんだ―ちょっと分かりにくかったから、今は削除したよ。GitHub Pagesからリクエストをプロキシする良くて無料の方法がまだ見つかってないんだよね。<br>" userName="kepano" createdAt="2025/05/22 21:54:12" color="#45d325">}}




{{<matomeQuote body="試してみるよ。今使ってるWYSIWYGエディタのMarkdownからHTMLへの変換設定に満足してないんだ。自分でツールバーとかエディタを作ったら、こっちの方が良い結果を出してくれるかもね。<br>" userName="ricardonunez" createdAt="2025/05/23 11:19:25" color="">}}




{{<matomeQuote body="似たようなものをPHPで作ったことがあるよ。<br>https://devkram.de/markydown<br>自分でホストするのに簡単だよ。<br>" userName="ulrischa" createdAt="2025/05/23 09:01:17" color="#45d325">}}




{{<matomeQuote body="Readabilityがもうダメそうだってのは間違いないね。SlurpっていうObsidianプラグインで使ってたんだけど、これはweb clipperと同じ目的で、PRのレビューとかマージがいつも大変だったんだ。<br>自分で代替を作ろうとしたんだけど、人生（とweb clipper）で頓挫しちゃった。面白いことに、web clipperがあるのにSlurpはなぜかユーザーが増え続けてるんだよ。だから近いうちに、もうSlurpは使ってないけど、君のライブラリを使うようにリファクタリングしないといけないかもね。<br>" userName="inhumantsar" createdAt="2025/05/22 23:40:08" color="#ff5733">}}




{{<matomeQuote body="いいね。僕はHTMLメールから署名とか定型的な免責事項を削除するのに似たようなものを探してるんだ。これってそれに使えるかな？<br>" userName="ahsd1" createdAt="2025/05/23 16:47:19" color="">}}




{{<matomeQuote body="裏でAIモデル使ってるの？コードにGeminiとか見かけたんだけどさ．Readabilityと比べてコストどうなのかなって知りたくて聞いてるんだ．サンキュー！" userName="billconan" createdAt="2025/05/22 22:35:52" color="#ff5c5c">}}




{{<matomeQuote body="いやいや，全部ルールベースだよ．「extractors」ってコードのことかな？あれはコメントスレッドがあるサイト（例えばHN，Reddit）とか，会話型のチャット（ChatGPT，Claude，Gemini）の出力を統一するためのサイト別ルールなんだ．今ちょうど開発中だよ．" userName="kepano" createdAt="2025/05/22 22:46:39" color="#ff5733">}}




{{<matomeQuote body="主要なLLMプロバイダー全部からMarkdownを確実に抽出できるのあったら最高だね．DefuddleをシェアされたGeminiのURLで試したんだけど，「Sign In」リンクしか返ってこなかったんだ．もしかしてextractorの使い方間違ってる？レンダリングされた会話HTMLってどうやって手に入れてるの？" userName="pugio" createdAt="2025/05/23 03:05:17" color="#45d325">}}




{{<matomeQuote body="たぶん，ほとんどのLLMのAPIはMarkdownを返してて，md→htmlへの変換はその後に行われてるんじゃないかな．だからAPIを直接叩けばMarkdownは「タダで」手に入ると思うよ．" userName="bambax" createdAt="2025/05/23 07:09:11" color="#ff5c5c">}}




{{<matomeQuote body="良さそうだね．RSS readerのreadabilityとこれ入れ替えて使ってみるつもり．Pocketなくなるみたいだから，後で読む機能もこれに追加しなきゃかもな…．" userName="timdeve" createdAt="2025/05/23 08:50:52" color="">}}




{{<matomeQuote body="いいね．あと～3行くらいコード書けば，URLを受け取ってシンプルなHTMLで表示できるようにして，完全な代替になれるんじゃない？" userName="90s_dev" createdAt="2025/05/23 00:04:37" color="#38d3d3">}}




{{<matomeQuote body="Javascriptで書かれてるから，ブックマークレットとしてパッケージ化できたりしないかな？" userName="infogulch" createdAt="2025/05/23 17:39:08" color="">}}




{{<matomeQuote body="obsidian clipperも含めて，ほぼ完璧みたいだね．ありがとう！" userName="khaki54" createdAt="2025/05/23 01:18:13" color="">}}




{{<matomeQuote body="Markdownがform要素をサポートしてないって興味深いね．" userName="revskill" createdAt="2025/05/23 08:07:47" color="">}}




{{<matomeQuote body="すごい良い仕事だね．Readabilityの現代的な代替は本当に必要だったんだ．特にLLM向けのきれいなウェブコンテキストを作るのにめちゃくちゃ役立つよ．オープンソースにしてくれてマジありがとう！" userName="miketromba" createdAt="2025/05/23 18:25:33" color="#45d325">}}




{{<matomeQuote body="LLMってWebページをMarkdownにするのめっちゃ得意だよね 特にClaudeとかGeminiとかさ でもHugging Faceのローカルモデルは全然ダメだったんだよね プロンプト無視したり要約しちゃったりJavaScriptの説明とかしだすし MacBookで動かせるやつ色々試したけど全部ダメだったよ" userName="elcritch" createdAt="2025/05/23 19:08:13" color="">}}




{{<matomeQuote body="ちょっと本題から外れるんだけど<br>Basesのリリースめっちゃ楽しみにしてるんだ<br>1年くらいロードマップ追いかけてて<br>ずっと”planned”のところに張り付いてるの見るとガッカリしてたんだよね<br>まあObsidianとDataviewで<br>「あとで読む」機能はもう作っちゃったんだけど<br>これがあると絶対もっと簡単になるよね！" userName="input_sh" createdAt="2025/05/22 23:17:24" color="">}}




{{<matomeQuote body="これのことだよ → https://help.obsidian.md/bases<br>これプレビュー版（Catalyst）使ってるんだけど<br>もうすぐ正式版が出ると思うよ<br>そしたらkepanoがここに投稿するんじゃないかな" userName="input_sh" createdAt="2025/05/23 09:01:00" color="">}}




{{<matomeQuote body="Readabilityを知らない人のためにリンク貼っとくね → https://github.com/mozilla/readability" userName="fkfyshroglk" createdAt="2025/05/22 22:26:20" color="">}}




{{<matomeQuote body="面白いね<br>こういうツールって悪用されるのをどうやって防ぐの？<br>ユーザー側はどうやって<br>このツールに悪用されないって信じればいいの？<br>技術的な話だと<br>同じページの中にある画像とかのファイルでも<br>リクエストごとにIP変えてるの？" userName="simpaticoder" createdAt="2025/05/23 00:09:14" color="#ff5733">}}




{{<matomeQuote body="面白い！<br>Webサイトに無料プランの制限が書いてないんだけど<br>教えてもらえない？" userName="ghilston" createdAt="2025/05/23 00:24:38" color="#785bff">}}




{{<matomeQuote body="無料枠（有料プランなしでAPIキー使う場合ね）は1分間に10リクエストまでって制限があるよ。詳しくはこちら https://pure.md/docs/#section/Rate-limits" userName="andrethegiant" createdAt="2025/05/23 00:37:25" color="">}}




{{<matomeQuote body="気軽に手伝ってね ：）" userName="kepano" createdAt="2025/05/23 01:31:13" color="">}}




{{<matomeQuote body="30年オープンソース開発やってる俺の経験から言うけど、”気軽に手伝って”って軽いノリじゃダメだよ。<br>テストフレームワークを準備して、手伝ってくれる人にはテストも一緒に書いてもらうようにしないと。<br>ただコード出すだけじゃ誰も手伝わないし、むしろ引かれるんだ。<br>低評価の人には申し訳ないけど、これはあの軽い返事への大事なフィードバックだよ。" userName="latchkey" createdAt="2025/05/23 01:51:30" color="#ff5733">}}




{{<matomeQuote body="ただ文句言いたいだけで何も役に立つこと言ってないじゃん？<br>全然言いたいこと分かんないんだけど。" userName="jeanlucas" createdAt="2025/05/23 01:55:42" color="">}}




{{<matomeQuote body="ごめん、言いたいこと伝わってないね。文句じゃなくて、”気軽に手伝って”への長年の経験者からのアドバイスだよ。<br>俺の6年やってるプロジェクト（500スター、月49kダウンロード）は、ユニットテストがしっかりしてるから信頼されてる。始めた頃は人に頼らず自分で努力したんだ。ツール作るだけじゃなく、基礎作りが重要なんだよ。" userName="latchkey" createdAt="2025/05/23 02:04:08" color="#785bff">}}




{{<matomeQuote body="知ってたらごめんね。フラグ立ってるみたいだから補足だけど、作者はObsidianのCEOで成功プロジェクトもある人だよ。<br>だから、自分の500スター自慢とか、”始めた頃は人に頼らず自分でやった”みたいな言い方は、みんなを不快にさせてるんじゃないかな。" userName="m0zzie" createdAt="2025/05/23 02:51:27" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="”あのプロジェクトを始めた頃”ってのを明確にしたよ。俺は30年開発やってるし、CEOでもある。<br>Java@Apacheを立ち上げたりTomcatをオープンソース化したり、成功プロジェクトはたくさんあるんだ。<br>色々失敗したけど、人への返事で軽く振る舞ったのもその一つ。ただ知見をシェアしたいだけだよ。" userName="latchkey" createdAt="2025/05/23 02:55:10" color="#45d325">}}




{{<matomeQuote body="君のその後の投稿や編集でトーンが明確になって助かるよ。読者にもそれが伝わるといいね。" userName="m0zzie" createdAt="2025/05/23 03:16:51" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
