+++
date = '2025-03-22T00:00:00'
months = '2025/03'
draft = false
title = '【朗報】OpenStreetMapにAIの力で地図情報を自動追加だと！？精度は大丈夫か？'
tags = ["OpenStreetMap", "Computer Vision", "AI", "地図", "自動マッピング"]
featureimage = 'thumbnails/color2.jpg'
+++

> 【朗報】OpenStreetMapにAIの力で地図情報を自動追加だと！？精度は大丈夫か？

引用元：[https://news.ycombinator.com/item?id=43447335](https://news.ycombinator.com/item?id=43447335)

{{<matomeQuote body="OpenStreetMap Foundationからだよ。AI検出されたフィーチャーをデータベースに直接追加しないでね。アルゴリズムは誤検出とか、まっすぐなオブジェクトをぐにゃぐにゃにマッピングしちゃう問題があるんだ（最後のスクショから2番目のやつ）。検出漏れを見つけるヘルパーとしては貴重だけど、ちゃんと描画されてるか人間が確認する必要があるよ。Import/GuidelinesとAutomated Edits code of conductも見てね。" userName="stereo" createdAt="2025-03-22T19:43:04" color="#ff33a1">}}

{{<matomeQuote body="＞ちゃんと描画されてるか人間が確認する必要があるよ。<br>作者です。デモアプリとかコード例には、検出されたフィーチャーを人間が確認するステップが入ってるよ。ソースコードを修正しない限り、自動アップロードはできないんだ。ドキュメントとか投稿とかサンプルコードでも、何度も人間による確認を繰り返してるよ。自動でアップロードしたことはないし、最初のバージョンをトレーニングする前に、何百ものプールを手動で編集してラベル付けしたんだ。自動アップロードを防ぐための改善案があれば教えてほしいな。ツールを公開するなって言う人もいるかもしれないけど、AIを受け入れてオープンな議論をしていきたいな。" userName="daavoo" createdAt="2025-03-22T19:58:57" color="#ff5c5c">}}

{{<matomeQuote body="「人間による確認」がよくわからない。ドキュメントには、ユーザーが新しいオブジェクトを保持するかどうか選択できる簡単な画像がある。[0]その後、「保持することを選択したものは、upload_osmを使用してOpenStreetMapにアップロードされます」と表示される。これは自動的にフィーチャーをアップロードすることだ。「本当にいいですか」と聞くのはバカげている。人間が90％の時間「はい」、10％の時間「いいえ」をクリックする必要がある場合、多くの「いいえ」を見逃すことになる。画像は以下のことも証明している。<br>・ポリゴンが正しく表示されない。プールの画像が表示されるだけだ。画像上で、ポリゴンがその画像に整列する場合、それは完全に混乱することがわかる。<br>・オブジェクトから離れた場所にあるポリゴンは表示されない。<br>これらの点は、stereoの返信にデータがめちゃくちゃだったとあることだ。プロジェクトをプルすることを検討してください。これにより、ボランティアが確認して元に戻す必要のあるデータが大量に生成される。" userName="boredpudding" createdAt="2025-03-22T21:21:30" color="">}}

{{<matomeQuote body="＞これにより、ボランティアが確認して元に戻す必要のあるデータが大量に生成される。<br>それは違うよ。`created_by`タグで簡単に識別できるし、デモでアップロードされたデータは自分でレビューしてるよ（何が十分かという明確な基準をもってね）。" userName="daavoo" createdAt="2025-03-22T21:26:50" color="">}}

{{<matomeQuote body="もしupstream projectが潜在的な問題があると思っているなら、それはそれ自体が問題だよ。反論しないで、プロジェクトをプルして、upstreamと協力して問題を解決してみて。プロジェクトの一部はupstreamに役立つかもしれないし、別のワークフローでプロジェクトが改善されるかもしれない。オープンデータがより良くなるように頑張ろう。もしupstreamが、このプロジェクトによって自動アップロードが簡単になり、退屈な作業が増えるリスクがあると感じているなら、それはみんなにとってマイナスだよ。新しいタグとかオプトアウトとかの技術的な解決策では問題は解決しない。" userName="xorcist" createdAt="2025-03-23T12:39:52" color="#ff33a1">}}

{{<matomeQuote body="Mozillaのエンジニアは自分たちが他の人より優れてると思ってるんだね。同じルールに従う必要はないと。" userName="hartator" createdAt="2025-03-23T15:43:05" color="">}}

{{<matomeQuote body="デモアプリ専用じゃない、ML由来のフィーチャー用のタグを追加するのはどうかな？そうすれば、多くの人が注目するかもしれないし、データベースがめちゃくちゃになるのを防げるかもしれない。クライアントアプリで許可/拒否を切り替えられるようにするとか。" userName="AyyEye" createdAt="2025-03-23T01:08:38" color="#ff5c5c">}}

{{<matomeQuote body="`created_by`タグを追加するのはオプトインじゃなくてオプトアウトだよ。君たちは事実上、OSMのボランティアがどう作業を進めるべきか、彼らの同意なしに決めているんだ。" userName="karlgkk" createdAt="2025-03-23T01:04:22" color="">}}

{{<matomeQuote body="＞自動アップロードを防ぐための改善案があれば教えてほしいな。<br>アイデア：人間が承認するだけで自動的にフィーチャーを作成するんじゃなくて、自分でポリゴンを描画させるようにして。" userName="yorwba" createdAt="2025-03-22T21:12:19" color="#38d3d3">}}

{{<matomeQuote body="OSMの古参エディターだけど、君が言ってることはMetaのRAPID editor [1]みたいだね。ユーザーは衛星画像に重ねられたオブジェクトを手動で選択する必要がある。50オブジェクトまでしか選択できない。素晴らしい方法だと思うよ。[1] https://rapideditor.org/" userName="K2h" createdAt="2025-03-22T22:50:07" color="#ff33a1">}}

{{<matomeQuote body="それ、デモを復活させる前に実装するつもりなんだよね。https://news.ycombinator.com/item?id=43448649" userName="daavoo" createdAt="2025-03-22T21:29:41" color="">}}

{{<matomeQuote body="それじゃ、意味なくない？" userName="IshKebab" createdAt="2025-03-22T21:22:56" color="">}}

{{<matomeQuote body="衛星画像に写ってるけど地図にないものを検出できるじゃん。それだけでもすごく助かると思わない？" userName="echoangle" createdAt="2025-03-22T21:26:14" color="#38d3d3">}}

{{<matomeQuote body="何の意味？手当たり次第に貢献すること？それともエンドユーザーにとってプロダクトを実際に改善すること？" userName="timewizard" createdAt="2025-03-23T01:36:53" color="">}}

{{<matomeQuote body="足りない機能を追加することだよ。ユーザーがプールを探してるときに、ちょっと形がいびつでも、ないよりマシでしょ。" userName="IshKebab" createdAt="2025-03-23T20:20:16" color="#ff33a1">}}

{{<matomeQuote body="あなたの言う「人が確認する」ってのは[0]じゃないよね？<br>AIの欠点を認めてるのに、強引に進めてるように見えるよ。自分の行動と影響をよく考えてみて[1]。あなたは影響力を持てる立場にいるんだから、無駄にしないでね。<br>よろしく。<br>-HG<br>[0]: https://pluralistic.net/2024/10/30/a-neck-in-a-noose/<br>[1]: https://web.cs.ucdavis.edu/~rogaway/papers/radical.pdf" userName="halosghost" createdAt="2025-03-22T20:29:55" color="">}}

{{<matomeQuote body="相手が対策をちゃんと考えてるのに、「強引に進めてる」とか「行動と影響を考えてない」って言うのは厳しくない？対策が有効かどうかは別として、ちゃんと考えてるのは明らかじゃん。" userName="Vinnl" createdAt="2025-03-22T20:35:14" color="">}}

{{<matomeQuote body="それは雰囲気コーディングみたいなもんだったんだよ。<br>＞アルゴリズムが描いたポリゴンは質が悪く、ノードがずれてたり、プールの境界線から大きく外れてたり、インポートについて地域のコミュニティと話し合ってなかったりしたんだ。<br>https://news.ycombinator.com/item?id=43448498" userName="benatkin" createdAt="2025-03-22T22:09:52" color="">}}

{{<matomeQuote body="それも厳しい言い方じゃない？GPはOPからそこまで読み取れないと思うな。作者が批判を受け入れて建設的に取り組んで、OSMユーザーが恩恵を受けられるツールにしようとしてるのは良いことだよね。そうでなかったら、自分の仕事が最悪の解釈をされて、すぐに防御的になってたかも。" userName="Vinnl" createdAt="2025-03-23T18:41:43" color="#ff5c5c">}}

{{<matomeQuote body="衛星データをトレースするのってマジで退屈だけど、チェックするのは簡単なんだよね。AIがケンタウロスみたいに動くか、対等なパートナーになるのが理想かも。" userName="hgomersall" createdAt="2025-03-22T21:51:38" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もし実際に、人が見落として変なデータがOSMに入っちゃった例を見つけてたら、あんたの批判はもっと価値が出ると思うぜ？そういうことあったの？（別の人が言ってるけど）。そうじゃないなら、ただの偏見で努力を無駄にしてるだけじゃん。AIを監督できない人もいるだろうけど、開発した本人なら成功する可能性は高いんじゃない？" userName="necovek" createdAt="2025-03-22T21:12:21" color="">}}

{{<matomeQuote body="記事のスクリーンショットに、すでに変なデータが出てるよ。ズームしてみればわかるって。" userName="yorwba" createdAt="2025-03-22T21:18:31" color="#785bff">}}

{{<matomeQuote body="Mozillaのお家芸みたいになってるけど、なんでこういうこと、公開する前に話し合わなかったんだろ？" userName="akimbostrawman" createdAt="2025-03-25T12:56:19" color="">}}

{{<matomeQuote body="＞まっすぐなオブジェクトが歪んで見えるってやつだけど、<br>＞これはpolygonをマスクとして画像に重ねてるからそう見えるだけ。<br>＞アップロードされるpolygon自体は歪んでないんだ。<br><br>確かにpolygonが歪んでることもあるから、それは捨ててほしい。でも、ある程度のクオリティに達するまでは公開しなかったよ。ノードが多すぎないように、polygonの形を簡略化するロジックも入ってる。" userName="daavoo" createdAt="2025-03-22T20:05:14" color="#ff5733">}}

{{<matomeQuote body="Data Working Groupがデータを見た結果、2つのpoolの変更をrevertすることにしたよ。アルゴリズムが描いたpolygonは質が悪くて、変なノードとか、poolの境界から外れたノードがあったし、地元のコミュニティと相談してなかったからね。" userName="stereo" createdAt="2025-03-22T20:50:32" color="#45d325">}}

{{<matomeQuote body="フィードバックありがとね！とりあえずデモは停止して、URLを開いて編集できるようにするよ。`created_by=https://github.com/mozilla-ai/osm-ai-helper`のタグが付いたpolygonは、削除してくれても良いよ（こっちでもPCから削除できるけど）。良い予測とは何か、議論したいね。自分でもたくさんswimming poolをマッピングして、人間が描いたpolygonより酷いのを削除したこともあるんだ。" userName="daavoo" createdAt="2025-03-22T21:09:29" color="#ff5c5c">}}

{{<matomeQuote body="ソースコードを見たんだけど、データをアップロードする代わりに.osmファイルを作るのは簡単かな？JOSM editorのtodo list pluginを使えば、polygonやcentroidをチェックして修正できるし。例えば、横断歩道を検出して、highwayに繋げるみたいなことも試してみたいな。" userName="stereo" createdAt="2025-03-23T01:58:03" color="#38d3d3">}}

{{<matomeQuote body="＞.osmファイルを作るのは簡単かな？JOSM editorのtodo list pluginを使えば、polygonやcentroidをチェックして修正できるし。例えば、横断歩道を検出して、highwayに繋げるみたいなことも試してみたいな。<br><br>そんな方法があるなんて知らなかった。もっと調べてみるべきだったな。実装を検討してみるよ。" userName="daavoo" createdAt="2025-03-23T07:20:40" color="#785bff">}}

{{<matomeQuote body="＞良い予測とは何か、議論したいね。自分でもたくさんswimming poolをマッピングして、人間が描いたpolygonより酷いのを削除したこともあるんだ。<br><br>mapboxの画像が古い場合もあるから気を付けてね。特にズームした画像は航空写真だから。例えば、2年前に建てられたpoolは表示されないかも。" userName="lmc" createdAt="2025-03-22T21:26:49" color="#ff5733">}}

{{<matomeQuote body="OSMデータと航空写真を比較する時の一般的な問題だね。Open Aerial Mapのorthoを使ったことがあるけど、あれはマッピング用にライセンスされた高品質の画像を提供することが目的だったはず。OSMのラベルをセグメンテーションに使おうとすると、ズレてたり、詳細じゃなかったりするんだ。AI labelingを完全に否定するわけじゃないけど、監視が必要だし、高い信頼度が必要だね。予測されたpolygonと人間のpolygonのoverlapを比較して、レビューを促すのも良いかも。建物とか、あまり正確にマッピングされてないものに役立つと思う。" userName="joshvm" createdAt="2025-03-23T02:35:35" color="#45d325">}}

{{<matomeQuote body="リバートされたチェンジセットのリンク教えてくんない？ 見つけられなくてさ。" userName="boredpudding" createdAt="2025-03-22T21:07:22" color="">}}

{{<matomeQuote body="https://www.openstreetmap.org/changeset/163855992 と https://www.openstreetmap.org/changeset/163863954 がリバートしたやつだよ。daavooのチェンジセット履歴にもっとあるかも。" userName="stereo" createdAt="2025-03-22T21:59:58" color="">}}

{{<matomeQuote body="1週間前に試してみたら、マジでゴミみたいなのアップロードしてたよ。四角いプールも直線が曲がってるし。見つけるにはいいけど、描画には向いてないね。正方形のプールの四隅は結構正確だけど、半円形のも多いし。" userName="Aachen" createdAt="2025-03-22T21:03:07" color="#ff33a1">}}

{{<matomeQuote body="プロジェクトとか説明が悪かったらごめんね。 polishedなソリューションじゃなくて、ポテンシャルを示したかったんだ。<br>デモとかコードにも書いてあるけど、モデルはGaliciaのデータだけでGoogle Colabで学習させたんだ。ちゃんと動くモデルにはもっとデータと計算が必要だよ。<br>＞　it’s definitely uploading crap.  <br>＞アップロードされたのは人間が承認したものだよ。<br>＞It’s useful for finding ones that haven’t been mapped but not for drawing them. It can get the 4 corners pretty accurate for pools that are square, many are half round at the ends though<br>＞予測を改善する方法に時間をかけられなかったけど、アイデアがあれば教えてほしいな。<br>アイデアとしては、oriented bounding boxモデルを試すとか、RANSACで長方形とかを当てはめるとか。" userName="daavoo" createdAt="2025-03-22T21:24:34" color="">}}

{{<matomeQuote body="＞ What was uploaded was what a human approved.<br>＞そうそう、一番マシなやつ承認したんだ。どんなポリゴンになるか興味があったから。（その後修正したけど。）<br>＞ This is a because the polygon is drawn as a mask in order to overlay it on the image. The actual polygon being uploaded doesn't have the wobbly features. <br>今は私が悪いって言うの？プレビューが悪いか、ポリゴンが悪いかどっちなの？<br> polishedなソリューションじゃないのはわかるけど、認証されてないユーザーが本番DBにアップロードできるボタンがあるのはおかしいと思う。OSMにはテスト環境もあるし。" userName="Aachen" createdAt="2025-03-23T06:45:15" color="#45d325">}}

{{<matomeQuote body="＞ You wrote above / I was responding to:<br>＞ごめん、ツールのアップロードのことだと思った。<br>＞ is the preview bad or the resulting polygons? (And the reviewer is bad for approving anything at all?)<br>＞どっちもかもね。<br>ブログの例について返信したんだ。レンダリングのせいでノードが多いポリゴンに見えたけど、手動で作ったプールと比べたら許容範囲かなと思った。<br>UI/Xは改善できると思う。<br>認証されてないユーザーがアップロードできるボタンがあるのはおかしい。デモはすぐに止めたよ。<br>テスト環境の提案ありがとう。" userName="daavoo" createdAt="2025-03-23T09:28:21" color="">}}

{{<matomeQuote body="daavooに返信したけど、ML由来のフィーチャーにタグ付けするのはどう？ ツールが使われてる可能性もあるし、DBが汚染されるのを防げるかも。" userName="AyyEye" createdAt="2025-03-23T01:19:17" color="#ff5733">}}

{{<matomeQuote body="https://community.openstreetmap.org/t/about-mapping-features... で議論しようぜ！" userName="daavoo" createdAt="2025-03-24T13:56:41" color="">}}

{{<matomeQuote body="プールいいね！太陽光発電の検出もやりたいな。 OSMは手動マッピングで成長できるって思われてるけど、60kチェンジセットやってる身としては、人間の情熱だけじゃグローバルスケールのマッピングは無理だよ。 スケーラブルなインポートとメンテナンスのフレームワークが必要。データの品質とかソースとか報告先とかガイダンスとか。 ”Xタイプのビジネス”を”人間が1年以内にマッピング”したやつを検索したいなら、「チェック日」でできるけど、精度とか不明だし。 alltheplacesの営業時間データを入れる方がいいのかな？ 信頼できるソースでフィルタリングできたら便利だよね。 AIが推論したPOIでも、既知の制限があっても。" userName="throwaway346434" createdAt="2025-03-23T02:55:09" color="#785bff">}}

{{<matomeQuote body="＞ Would it be better to ingest alltheplaces opening hours to maintain this data automatically, every month?<br>＞そんなプロジェクトをやってるよ！<br>https://community.openstreetmap.org/t/what-you-think-about-i... とか見てみて。" userName="matkoniecz" createdAt="2025-03-23T13:03:02" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Alltheplacesの営業時間を自動で取り込む方が良くないかな？毎月更新されるし。でも、Alltheplacesって著作権で保護されたAPIキーとか使ってて、ちょっと危ない橋渡ってるんだよね。参考にはなるけど、OpenStreetMapとは相性が悪いかも。" userName="Freak_NL" createdAt="2025-03-23T11:19:14" color="">}}

{{<matomeQuote body="何か具体的な例ってある？今ATP使うプロジェクトやってて、スパイダー調べてるんだけど、まだヤバそうなの見つかってないんだよね。もし知ってたら教えてほしいな！あと、著作権マーク付いてるからって、必ずしも著作権があるとは限らないし。" userName="matkoniecz" createdAt="2025-03-23T12:50:06" color="">}}

{{<matomeQuote body="なんで聞くの？このスレッドで例が出てるじゃん。＞ なんで聞くの？このスレッドで例が出てるじゃん：”https://community.openstreetmap.org/t/what-you-think-about-i...”<br>他にも同じようなスパイダーがあるかもね。<br>＞(BTW、著作権表示があるからといって著作権があるとは限らない)”OpenStreetMap的には、少なくともLicensing Working Groupが見るべき案件だよ。APIキー使ってたらもっとね。OpenStreetMapのData Working GroupのAndy Townsendも言ってるように、お金持ちに訴えられたらヤバいからね。" userName="Freak_NL" createdAt="2025-03-23T13:19:30" color="#ff5c5c">}}

{{<matomeQuote body="なんで聞くかって？他に事例がないか知りたかったからだよ。<br>＞OpenStreetMap的には、少なくともLicensing Working Groupが見るべき案件だよ。”<br>ファーストパーティの情報源について質問されてたから、ATP調べてるんだ。<br>＞現在、ショップのチェーン店のWebサイトやドメインを直接使用するスパイダーのみが使用を許可されています。”<br>GitHub Pagesとかでデータ公開してても変わらないと思うけどな。" userName="matkoniecz" createdAt="2025-03-23T13:49:11" color="">}}

{{<matomeQuote body="ソーラーパネルは問題ありそう。太陽熱温水器とどう区別するの？見た目はほぼ同じなのに、機能は全然違うじゃん。" userName="cinntaile" createdAt="2025-03-23T09:17:04" color="#ff33a1">}}

{{<matomeQuote body="自動マッピングって、実際に体験するとマジで警戒するわ。南米をバイクで旅したんだけど、OSMの編集が自動っぽくて使い物にならない場所が多かった（特にブラジル）。田舎道だけじゃなくて、結構大きな都市でもだよ。" userName="orbital-decay" createdAt="2025-03-22T20:13:02" color="#ff5c5c">}}

{{<matomeQuote body="机上マッピングは絶対ダメな地図になるよね。mapwithme使って、旅行中に問題点とか写真付きでメモするようにしてる。フェンスとか遊具とかの写真撮ったり、他の人は景色の写真撮ったり。自動マッピングもあるかもだけど、自分の机上マッピングも現地で確認すると結構ヤバいことあるし。" userName="pastage" createdAt="2025-03-22T20:25:23" color="">}}

{{<matomeQuote body="ダメって言うのは、不完全ってこと？それとも間違ってるってこと？俺は結構補完的だと思うけどな。航空写真で見て初めて気づくこともあるし。航空写真からのマッピングは結構うまくいくと思うよ。北朝鮮は面白い例かもね。衛星写真しかないから質が悪いけど。机上マッピングがダメなら、最高の例になるかも。" userName="Aachen" createdAt="2025-03-22T21:10:05" color="">}}

{{<matomeQuote body="こんにちは。ちょっと気になったんだけど、ブラジルのどこらへん？" userName="lbschenkel" createdAt="2025-03-24T08:44:57" color="">}}

{{<matomeQuote body="この分野で昔仕事してたよ。既存のモデルとかデータセットとかツールとか、めっちゃたくさんあるよね。https://github.com/satellite-image-deep-learning" userName="ks2048" createdAt="2025-03-22T18:39:59" color="">}}

{{<matomeQuote body="すごいリソースだね、共有してくれてありがとう！QGISをいじってて、公開・非公開の衛星画像APIにも登録してデータで遊んでるよ。EUの宇宙機関は、ユーザーアカウントなしでアクセスできる良いデータソースがたくさんあるんだ。ML専用のツールを使うのが楽しみだな。" userName="nativeit" createdAt="2025-03-22T19:16:53" color="#38d3d3">}}

{{<matomeQuote body="＞really good data sources with fully open access (no user accounts necessary)<br>やあ！リポジトリの作者だよ。昔、ガリシア政府の衛星プロジェクトで働いてたんだ。OSMのデータをダウンロードするのにアカウントは要らないよ（貢献するのは当然だと思うけど）。スペインのhttps://pnoa.ign.es/みたいな公開されてるソースからタイルをダウンロードするのもアカウント不要だけど、MapBoxを使ってるよ。彼らにインフラの費用を払ってもらってるんだ（無料提供が終わるまではね）。" userName="daavoo" createdAt="2025-03-22T19:52:19" color="#38d3d3">}}

{{<matomeQuote body="追加情報ありがとうね、すごくリアルだ。アカデミックなプロジェクトに関わってたから、個々のプロジェクトから派生した有用な資産やデータの維持が、どこにでもある課題だってことはわかるよ。普段はシステム管理者とITコンサルタントをしてて、MLとか地図作成は趣味だけど、あなたの活動を応援してるよ！" userName="nativeit" createdAt="2025-03-26T00:58:02" color="">}}

{{<matomeQuote body="Googleは許可しないだろうけど、Mapboxは非商用目的かOSMでの使用、衛星データのみの使用ならOKみたいだね。1.6。トレーシング、派生、抽出の禁止。顧客は、スタジオまたはサードパーティ製ソフトウェアを使用して、非商用目的またはOpenStreetMapのために、衛星画像のみで構成されるMapboxマップをトレースして、派生ベクターデータセットを生成する場合を除き、サービス提供からコンテンツ、データ、および/または情報をトレースまたは派生または抽出してはなりません。<br>ありがたいね。" userName="qwertox" createdAt="2025-03-22T21:33:21" color="#ff33a1">}}

{{<matomeQuote body="BingもOSMのmapperが航空写真を使ってトレースするのを許可してるよ。<br>https://wiki.openstreetmap.org/wiki/Bing_Maps#Aerial_imagery" userName="mtmail" createdAt="2025-03-22T21:49:41" color="">}}

{{<matomeQuote body="え、衛星画像にあるものをマッピングしてるんじゃなくて、実際に地上にあるものをマッピングしてるんだよね？AIが作り出したものを投稿しないでくれよな。" userName="ySteeK" createdAt="2025-03-23T08:56:03" color="">}}

{{<matomeQuote body="衛星画像はOSMがトレースする時の元データだよ。トレースの質はバラバラで、海岸線がズレてて、海の上に道が描かれてることもあったから直したことあるよ。もしAIで精度が上がるなら、平均的なOSMの貢献者より良い結果になるかもね。家とか道路とか水域をセグメント化して、今のデータと比較して矛盾点を指摘して修正するのが良いかも。" userName="moffkalast" createdAt="2025-03-23T09:33:47" color="#38d3d3">}}

{{<matomeQuote body="＞Something like segmenting houses, roads, bodies of water, comparing against current data and highlighting inconsistencies for correction would be a good start though.<br>それ、OSMデータで学習させたモデルの良い使い方だよね。コードを公開する時間がなかったんだけど、まさにそれをして学習データセットを改善しようとしてたんだ。学習させたモデルでOSMのground truthと照らし合わせるんだ。大きくズレてるところは、ほとんどの場合OSMで修正できるんだよ。" userName="daavoo" createdAt="2025-03-24T13:52:39" color="#ff5733">}}

{{<matomeQuote body="＞it'll probably do better than the average OSM contributor<br>この発言をもう一度考えてみようよ。OSMプロジェクトの意外で強力な効果は、地上の真実への反復的な収束なんだ。完璧な人はいないし、ずっと酷い人もほとんどいない。修正とアップデート、正確さへの共通のビジョン、協力的な貢献への感謝…は、大衆を驚かせ、批評家を謙虚にしてきた。すべてのキーストロークとマウスクリックが完璧なのではなく、反復と複数のソースが、使用可能なソフトウェアとデータのシステムに収束したからなんだ。" userName="mistrial9" createdAt="2025-03-23T15:39:18" color="#38d3d3">}}

{{<matomeQuote body="数ヶ月前に似たようなものを作ったよ（小規模な地理データだけどね）：https://github.com/uav4geo/GeoDeep" userName="pierotofy" createdAt="2025-03-22T20:25:51" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="よっ！なんかすごいことやってるね！よかったら一緒にアイデア出し合ったりしない？" userName="daavoo" createdAt="2025-03-22T23:10:12" color="">}}

{{<matomeQuote body="Mozillaさん、お願いだからマジでいい感じのブラウザ作ってくれよ。" userName="gpvos" createdAt="2025-03-23T12:16:01" color="">}}

{{<matomeQuote body="プールとかソーラーパネルの検出に関して、SAM/2のファインチューニングについてもっと詳しく知りたいなー。<br>地域防災プロジェクトのためにマッピングしたいんだけど、SAM2のファインチューニングがいまいち分からなくて。<br>Yolov8モデルはソーラーパネルを見つけるのは得意なんだけど、エッジが残念すぎて修正が大変なんだよね。<br>SAM2で学習させた結果はすごく良さそう。<br>精度的にOSMにはアップロードしないけど、他のところで使えたら最高だ。" userName="anakaine" createdAt="2025-03-23T01:59:49" color="#ff33a1">}}

{{<matomeQuote body="＞but I’ve not been able to follow along with SAM2 fine tuning at all.<br>“SAM2のファインチューニングは使ってないよ。<br>OSMのセグメンテーションデータは質がイマイチで、セグメンテーションモデルをちゃんと学習させるには足りないんだ。<br>使ってるのはYOLOモデルで、バウンディングボックスを予測してる。<br>OSMのバウンディングボックスは精度が良いからね。<br>個々のバウンディングボックスをSAM2に“prompt”として渡してセグメンテーションしてる。<br>ボックスの中心を“prompt”として渡すのも試したけど、結果はイマイチだったよ。”" userName="daavoo" createdAt="2025-03-24T13:50:16" color="#ff5733">}}

{{<matomeQuote body="みんな、貴重なフィードバックありがとう。<br>OSMに直接アップロードするコードは全部OsmChange形式でエクスポートするように変更したよ。<br>これで少しは良くなったかな。<br>OSMのフォーラムで引き続き議論しよう。" userName="daavoo" createdAt="2025-03-24T13:45:11" color="">}}

{{<matomeQuote body="昔はこれ、heads up digitizingって呼んでたよね。" userName="ecommerceguy" createdAt="2025-03-22T22:44:11" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
