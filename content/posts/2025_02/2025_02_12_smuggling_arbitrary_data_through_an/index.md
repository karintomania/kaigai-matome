+++
date = '2025-02-12T00:00:00'
draft = false
title = '絵文字にデータを忍び込ませる驚きの手法とは！'
tags = ["セキュリティ", "データスティッキング", "プログラミング", "ハッキング", "通信技術"]
featureimage = 'thumbnails/color1.jpg'
+++

> 絵文字にデータを忍び込ませる驚きの手法とは！

引用元：[https://news.ycombinator.com/item?id=43023508](https://news.ycombinator.com/item?id=43023508)

{{<matomeQuote body="Unicodeを使ったバッファオーバーフローの手法は想像以上に広がりがあるよ！昔のペネトレーションテストで使用したことがあって、単一の文字をたくさんのバイトに変えるのが面白かった。でもあれは大抵クラッシュするだけだったので、もっと面白い使い方もできるかもしれないね！" userName="riskable" createdAt="2025-02-12T14:43:43" color="#ff5733">}}

{{<matomeQuote body="これがGoogleのCTF quals 2024のチャレンジの前提だったんだね。" userName="sourque" createdAt="2025-02-15T01:56:37" color="">}}

{{<matomeQuote body="Zalgoテキストはウェブサイトのテストによく使われるけど、あんまり面白いことは起きないことが多いよ。<br>例えばデータベースの長さ制限で例外が発生するぐらい。でも、たまに役立つ情報が漏れる場合もあるね。" userName="capitainenemo" createdAt="2025-02-13T00:49:22" color="">}}

{{<matomeQuote body="ZalgoがHNでも機能するか試してみたけど、ダメだった！今夜は新しいテストを試す予定だよ。" userName="dotancohen" createdAt="2025-02-14T23:13:18" color="">}}

{{<matomeQuote body="数ヶ月前に「UTF-8でケースを変えると拡大・縮小するUnicodeコードポイント」について投稿したんだけど、良いパーサーなら問題ないけど、悪いUnicodeの前提で作られたソフトは影響を受けるかもね。" userName="Rendello" createdAt="2025-02-14T00:39:20" color="">}}

{{<matomeQuote body="初心者なんだけど、もっと詳しく教えてもらえる？これは絶対にテストする価値があると思うんだけど。" userName="n0id34" createdAt="2025-02-13T05:02:39" color="">}}

{{<matomeQuote body="PUAという範囲を使えば、特定のUnicodeを外部システムに渡す必要がないことがあるんだ。でもこれを知っている開発者は少ないと思うよ。" userName="ComputerGuru" createdAt="2025-02-12T16:55:43" color="#ff5c5c">}}

{{<matomeQuote body="テストしてみたら、プライベートユース文字はボックスで表示されたよ。<br>要は、コピー＆ペーストの際に他の文字の一部として扱われるように隠すことがポイントだよ。" userName="paulgb" createdAt="2025-02-12T17:02:49" color="">}}

{{<matomeQuote body="＞このポイントは、文字の一部として隠すことだよ。｜面白いね！“Steganography”という技術に似てるね。" userName="diggan" createdAt="2025-02-12T17:59:11" color="">}}

{{<matomeQuote body="昔、warezのフォーラムの電話番号をGIFに隠してたことを思い出したよ。" userName="reaperducer" createdAt="2025-02-12T18:02:33" color="">}}

{{<matomeQuote body="PUAキャラクターは通常結構目立つように表示されるけど、バリエーションセレクターはそうじゃないんだ。" userName="layer8" createdAt="2025-02-12T19:26:01" color="">}}

{{<matomeQuote body="一部の人が見落としてるかもしれないけど、これはOpen Heart Protocolに関する議論をきっかけにしたものなんだ。APIが絵文字しか受け付けないという制約の下で、犯罪利用の具体例がすぐに出てきたよ。PUAは使えないから、絵文字にデータをエンコードする必要があるね。" userName="lolinder" createdAt="2025-02-13T02:26:09" color="#ff5733">}}

{{<matomeQuote body="PUAエリアは非キャラクター用じゃないの？非公認のエンコーディングで衝突があったら心配だし、指定された非キャラクターには特定のコードポイントも含まれているんだよ。" userName="Sniffnoy" createdAt="2025-02-12T23:07:16" color="">}}

{{<matomeQuote body="正直言うと、このコメントをデコーダーに貼り付けてみたけど、誰もそんなにポイントを外すとは思わなかった。あなたが本当にやったのか、このサイトがそれを剥がしてるのか疑問だよ。PUAキャラクターで無理やりウォーターマークするのは難しいし、結果的にプレビューが現れるはずだよ。" userName="juped" createdAt="2025-02-12T22:31:47" color="">}}

{{<matomeQuote body="j󠄗󠅄󠅧󠅑󠅣󠄐󠅒󠅢󠅙󠅜󠅜󠅙󠅗󠄜󠄐󠅑󠅞󠅔󠄐󠅤󠅘󠅕󠄐󠅣󠅜󠅙󠅤󠅘󠅩󠄐󠅤󠅟󠅦󠅕󠅣󠄴󠅙󠅔󠄐󠅗󠅩󠅢󠅕󠄐󠅑󠅞󠅔󠄐󠅗󠅙󠅝󠅒󠅜󠅕󠄐󠅙󠅞󠄐󠅤󠅘󠅕󠄐󠅧󠅑󠅒󠅕󠄫󠄱󠅜󠅜󠄐󠅝󠅙󠅝󠅣󠅩󠄐󠅧󠅕󠅢󠅕󠄐󠅤󠅘󠅕󠄐󠅒󠅟󠅢󠅟󠅗󠅟󠅦󠅕󠅣󠄜󠄱󠅞󠅔󠄐󠅤󠅘󠅕󠄐󠅝󠅟󠅝󠅕󠄐󠅢󠅑󠅤󠅘󠅣󠄐󠅟󠅥󠅤󠅗󠅢󠅑󠅒󠅕󠄞󠄒󠄲󠅕󠅧󠅑󠅢󠅕󠄐󠅤󠅘󠅕󠄐󠄺󠅑󠅒󠅒󠅕󠅢󠅧󠅟󠅓󠅛󠄜󠄐󠅝󠅩󠄐󠅣󠅟󠅞󠄑󠅄󠅘󠅕󠄐󠅚󠅑󠅧󠅣󠄐󠅤󠅘󠅑󠅤󠄐󠅒󠅙󠅤󠅕󠄜󠄐󠅤󠅘󠅕󠄐󠅓󠅜󠅑󠅧󠅣󠄐󠅤󠅘󠅑󠅤󠄐󠅓󠅑󠅤󠅓󠅘󠄑󠄲󠅕󠅧󠅑󠅢󠅕󠄐󠅤󠅘󠅕󠄐󠄺󠅥󠅒󠅚󠅥󠅒󠄐󠅒󠅙󠅢󠅔󠄜󠄐󠅑󠅞󠅔󠄐󠅣󠅘󠅥󠅞󠅄󠅘󠅕󠄐󠅖󠅢󠅥󠅝󠅙󠅟󠅥󠅣󠄐󠄲󠅑󠅞󠅔󠅕󠅢󠅣󠅞󠅑󠅤󠅓󠅘󠄑󠄒󠄸󠅕󠄐󠅤󠅟󠅟󠅛󠄐󠅘󠅙󠅣󠄐󠅦󠅟󠅢󠅠󠅑󠅜󠄐󠅣󠅧󠅟󠅢󠅔󠄐󠅙󠅞󠄐󠅘󠅑󠅞󠅔󠄪󠄼󠅟󠅞󠅗󠄐󠅤󠅙󠅝󠅕󠄐󠅤󠅘󠅕󠄐󠅝󠅑󠅞󠅨󠅟󠅝󠅕󠄐󠅖󠅟󠅕󠄐󠅘󠅕󠄐󠅣󠅟󠅥󠅗󠅘󠅤󠇒󠅰󠆄󠅃󠅟󠄐󠅢󠅕󠅣󠅤󠅕󠅔󠄐󠅘󠅕󠄐󠅒󠅩󠄐󠅤󠅘󠅕󠄐󠅄󠅥󠅝󠅤󠅥󠅝󠄐󠅤󠅢󠅕󠅕󠄜󠄱󠅞󠅔󠄐󠅣󠅤󠅟󠅟󠅔󠄐󠅑󠅧󠅘󠅙󠅜󠅕󠄐󠅙󠅞󠄐󠅤󠅘󠅟󠅥󠅗󠅘󠅤󠄞󠄱󠅞󠅔󠄐󠅑󠅣󠄐󠅙󠅞󠄐󠅥󠅖󠅖󠅙󠅣󠅘󠄐󠅤󠅘󠅟󠅥󠅗󠅘󠄐󠅤󠅘󠅕󠄐󠅣󠅤󠅟󠅟󠅔󠄜󠅄󠅘󠅕󠄐󠄺󠅑󠅒󠅒󠅕󠅢󠅧󠅟󠅓󠅛󠄜󠄐󠅧󠅙󠅤󠅘󠄐󠅕󠅩󠅕󠅣󠄐󠅟󠅖󠄐󠅖󠅜󠅑󠅝󠅕󠄜󠄳󠅑󠅝󠅕󠄐󠅧󠅘󠅙󠅖󠅖󠅜󠅙󠅞󠅗󠄐󠅤󠅘󠅢󠅟󠅥󠅗󠅘󠄐󠅤󠅘󠅕󠄐󠅤󠅥󠅜󠅗󠅕󠅩󠄐󠅧󠅟󠅟󠅔󠄜󠄱󠅞󠅔󠄐󠅒󠅥󠅢󠅒󠅜󠅕󠅔󠄐󠅑󠅣󠄐󠅙󠅤󠄐󠅓󠅑󠅝󠅕󠄑󠄿󠅞󠅕󠄜󠄐󠅤󠅧󠅟󠄑󠄐󠄿󠅞󠅕󠄜󠄐󠅤󠅧󠅟󠄑󠄐󠄱󠅞󠅔󠄐󠅤󠅘󠅢󠅟󠅥󠅗󠅘󠄐󠅑󠅞󠅔󠄐󠅤󠅘󠅢󠅟󠅥󠅗󠅘󠅄󠅘󠅕󠄐󠅦󠅟󠅢󠅠󠅑󠅜󠄐󠅒󠅜󠅑󠅔󠅕󠄐󠅧󠅕󠅞󠅤󠄐󠅣󠅞󠅙󠅓󠅛󠅕󠅢󠄝󠅣󠅞󠅑󠅓󠅛󠄑󠄸󠅕󠄐󠅜󠅕󠅖󠅤󠄐󠅙󠅤󠄐󠅔󠅕󠅑󠅔󠄜󠄐󠅑󠅞󠅔󠄐󠅧󠅙󠅤󠅘󠄐󠅙󠅤󠅣󠄐󠅘󠅕󠅑󠅔󠄸󠅕󠄐󠅧󠅕󠅞󠅤󠄐󠅗󠅑󠅜󠅥󠅝󠅠󠅘󠅙󠅞󠅗󠄐󠅒󠅑󠅓󠅛󠄞󠄒󠄱󠅞󠅔󠄐󠅘󠅑󠅣󠅤󠄐󠅤󠅘󠅟󠅥󠄐󠅣󠅜󠅑󠅙󠅞󠄐󠅤󠅘󠅕󠄐󠄺󠅑󠅒󠅒󠅕󠅢󠅧󠅟󠅓󠅛󠄯󠄳󠅟󠅝󠅕󠄐󠅤󠅟󠄐󠅝󠅩󠄐󠅑󠅢󠅝󠅣󠄜󠄐󠅝󠅩󠄐󠅒󠅕󠅑󠅝󠅙󠅣󠅘󠄐󠅒󠅟󠅩󠄑󠄿󠄐󠅖󠅢󠅑󠅒󠅚󠅟󠅥󠅣󠄐󠅔󠅑󠅩󠄑󠄐󠄳󠅑󠅜󠅜󠅟󠅟󠅘󠄑󠄐󠄳󠅑󠅜󠅜󠅑󠅩󠄑󠄒󠄸󠅕󠄐󠅓󠅘󠅟󠅢󠅤󠅜󠅕󠅔󠄐󠅙󠅞󠄐󠅘󠅙󠅣󠄐󠅚󠅟󠅩󠄞󠄗󠅄󠅧󠅑󠅣󠄐󠅒󠅢󠅙󠅜󠅜󠅙󠅗󠄜󠄐󠅑󠅞󠅔󠄐󠅤󠅘󠅕󠄐󠅣󠅜󠅙󠅤󠅘󠅩󠄐󠅤󠅟󠅦󠅕󠅣󠄴󠅙󠅔󠄐󠅗󠅩󠅢󠅕󠄐󠅑󠅞󠅔󠄐󠅗󠅙󠅝󠅒󠅜󠅕󠄐󠅙󠅞󠄐󠅤󠅘󠅕󠄐󠅧󠅑󠅒󠅕󠄫󠄱󠅜󠅜󠄐󠅝󠅙󠅝󠅣󠅩󠄐󠅧󠅕󠅢󠅕󠄐󠅤󠅘󠅕󠄐󠅒󠅟󠅢󠅟󠅗󠅟󠅦󠅕󠅣󠄜󠄱󠅞󠅔󠄐󠅤󠅘󠅕󠄐󠅝󠅟󠅝󠅕󠄐󠅢󠅑󠅤󠅘󠅣󠄐󠅟󠅥󠅤󠅗󠅢󠅑󠅒󠅕󠄞" userName="egypturnash" createdAt="2025-02-13T03:09:48" color="">}}

{{<matomeQuote body="10年くらい前に、Windowsのファイル名の中でU+202D LEFT-TO-RIGHT OVERRIDEを使ったら、同僚を驚かせたことがあるんだ。funny picturegnp.exeがfunnypictureexe.pngになったよ。プレビューを模したカスタムアイコンと組み合わせて、とても説得力があった。" userName="omnibrain" createdAt="2025-02-13T07:32:14" color="#ff33a1">}}

{{<matomeQuote body="フィッシング検出の仕事をしてたけど、攻撃者がよく使ってたパターンだね。大体.exesは自動でブロックされるけど、.htmlが新たな悪質な拡張子に。RTLの悪用は多かったけど、検出には簡単だったよ。" userName="mdup" createdAt="2025-02-13T10:03:53" color="">}}

{{<matomeQuote body="そのソースコードのバージョンはCVE-2021-42574で、ウェブサイトもあるよ。基本的に、コメントに見えるのにコードとしてコンパイルされるものが隠せるんだ。多くのテキストエディタがこういう怪しいコメントを可視化してるところがあるから、CVEの状態は異議が唱えられてるみたい。" userName="omoikane" createdAt="2025-02-13T23:38:24" color="">}}

{{<matomeQuote body="このトリックを聞いたことがなかったけど、何十年も続けた paranoia-fueled「右クリック→開く」で怪しそうなメディアファイルを扱ってきたのが役に立った！" userName="taneq" createdAt="2025-02-13T10:17:28" color="">}}

{{<matomeQuote body="guitar_tab.txtをバッチファイルにして、すごく面白かったよ。" userName="oefnak" createdAt="2025-02-16T15:07:56" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="これ、すごく賢いトリックだね。" userName="hosteur" createdAt="2025-02-13T07:53:09" color="">}}

{{<matomeQuote body="実際の使用例として、Sanityがこのトリックを使って、コンテンツソースマップをウェブページのテキストにエンコードしてる。これでエディターがテキストをクリックするだけで、コンテンツの深い構造に簡単に辿り着けるよ。ただ、いくつかの制約もあるよ。" userName="rexxars" createdAt="2025-02-12T16:40:13" color="#38d3d3">}}

{{<matomeQuote body="このトリックをLLMの出力ウォーターマークに使うアイデアが大好きだよ。99％の生成器をつかまえられるし、他の使い方にはほとんど影響がない。各文字やトークンにどれくらいの情報を埋め込むかも気になる。" userName="vessenes" createdAt="2025-02-12T15:06:47" color="#ff33a1">}}

{{<matomeQuote body="なんでAIのウォーターマーキングがうまくいくと思う人がいるのか理解できない。もちろん、簡単に剥がされるし…実際の身元を検証したキーで人間のやり取りがサインされる必要があるけど、そんなことは起こらないし、政府の腐敗や私企業の影響を受ける国々には悪用の可能性がある。" userName="fennecfoxy" createdAt="2025-02-13T14:26:59" color="">}}

{{<matomeQuote body=">どんなウォーターマークでも簡単に剥がせる…。<br>プリンターのウォーターマーク（黄色い点）が発見されるまでには時間がかかったし、簡単には剥がせないと思う。1980年代に開発されたかもしれないけど、一般に知られるようになったのは2000年代中頃。" userName="teruakohatu" createdAt="2025-02-14T00:11:58" color="#785bff">}}

{{<matomeQuote body="ほとんどのLinuxターミナルでは、渡したものはそのままのバイト列として通る。UTF-8に準拠して、余計なグリフを使っていないから、Unicodeに準拠したターミナルでは人間には見えない。いくつか試したけど、選択してコピーするとデータがトランケートされる現象があった。ファイルに書き込むときは問題なく、ブラウザで開いてコピーすると成功した。" userName="capitainenemo" createdAt="2025-02-12T18:42:34" color="">}}

{{<matomeQuote body="MacOSのkittyでは空の箱が表示された後に’a’が出てくる。Mac Terminalでは”ha”が表示。コピーしてデコーダーに成功に入れられる。" userName="vessenes" createdAt="2025-02-12T20:21:39" color="">}}

{{<matomeQuote body="LLMウォーターマーキングにはもっと頑丈で検出が難しい手法がある。LLMは次のトークンの確率分布を生成するから、そのサンプリングの際にトリックを使ってウォーターマークを追加できる。高確率と低確率のトークンを交互に選ぶような感じでね。" userName="ChadNauseam" createdAt="2025-02-13T01:12:28" color="#ff5c5c">}}

{{<matomeQuote body="閉じたモデルと多様なオープンモデルがある世界では、あまり良い方法ではない。魅力的ではあるけど、確率に基づいた手法にしかならない。モデルの重みが手元にあれば別だけど。" userName="vessenes" createdAt="2025-02-13T02:31:50" color="">}}

{{<matomeQuote body="なんでそれが良い方法じゃないの？モデルの重みが公開されていれば、Fingerprintingを加えることを強制できないけど、OpenAIがやってないとは思えない。出力をトレーニングに使いたくないだろうしね。" userName="ChadNauseam" createdAt="2025-02-13T07:58:59" color="">}}

{{<matomeQuote body="その現象はもう発生してる。私の子供たちも自動ツールで不当なチャットGPTの責任を負わされた。自衛のために、文字ごとの履歴を表示できるエディタを使うべき。" userName="vessenes" createdAt="2025-02-12T20:22:30" color="#ff5733">}}

{{<matomeQuote body="一緒に働いた2人がこれに遭って、一人は高校の成績に影響が出てしまって戦ってる。Crazyな時代だ。" userName="neom" createdAt="2025-02-13T00:47:12" color="">}}

{{<matomeQuote body="履歴を文字ごとに表示できるエディタの例ってある？私はその機能を探したことがない。<br>追記：検討してみたら、Google Docsには分単位のバージョン履歴があるみたい。" userName="red369" createdAt="2025-02-12T22:56:35" color="">}}

{{<matomeQuote body="そうそう。あのインターフェースで差分を追跡してるんだよね。" userName="vessenes" createdAt="2025-02-12T23:18:50" color="">}}

{{<matomeQuote body="人間ライターの中にはあまりコミュニケーションが得意じゃない人もいて、そういう人たちは’クソライター’って呼ばれてる。でもAIよりも正確さに欠ける人間もいて、そいつは’嘘つき’だね。違いは、人間は自分の書いたものに責任を持つけど、AIが生成したテキストを使った人間はコンピュータが書いたものに責任があることだ。" userName="roguecoder" createdAt="2025-02-12T18:55:15" color="#ff5c5c">}}

{{<matomeQuote body="興味深いことに、スクリーンリーダーは文字ごとに移動するときにこういった変化選択子を検出できるんだ。例えば、彼が提供した例を矢印で移動すると、”笑っている目の笑顔”、“シンボルE0155”等と聞こえる。残念だけど、使用する音声合成器によって異なるし、ドキュメントをただ読んでいるだけだとこれらの文字があることすらわからないから、あまり効果的ではないよね。" userName="ethin" createdAt="2025-02-13T03:51:52" color="">}}

{{<matomeQuote body="アイロニックなことに、スクリーンリーダーから非ASCII文字を全て除去するスクリプトを作ったんだ。オンラインのテキストは見えないし、聞くのがうざい文字で汚染されてるから。" userName="llm_trw" createdAt="2025-02-13T05:48:47" color="">}}

{{<matomeQuote body="うちのは（NVDA）非ASCII記号に対してそんなにうざくないよ。でも、このUnicodeの’悪用’みたいなものを使った場合、大量にメッセージに入れると、矢印で過ぎなきゃいけない’行’が増えちゃうんだ。そうしないと、スクリーンリーダーはその行で無音のままになっちゃうから。" userName="ethin" createdAt="2025-02-14T01:16:51" color="">}}

{{<matomeQuote body="StegCloakは同じようなことをやってて、隠されたペイロードをAES-256-CTRで暗号化する機能があって、すごいトリックだよ。" userName="kevinsync" createdAt="2025-02-12T14:50:23" color="#ff5733">}}

{{<matomeQuote body="あるBetter Discordのプラグインがこの方法を使ってると思うので、全く何にも見えない完全に暗号化されたメッセージを送れるよ。ただし、解読するためのパスワードを共有しなきゃいけないけどね。" userName="giancarlostoro" createdAt="2025-02-12T16:15:13" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="DNSはレコード値にASCIIしかサポートしてないよ。Unicodeドメイン名をPunycodeでサポートするハックがあるけどね。" userName="UltraSane" createdAt="2025-02-13T02:15:56" color="">}}

{{<matomeQuote body="タイトルはちょっと誤解を招く：”基本文字は絵文字である必要はない – 変化選択子の扱いは通常の文字でも同じだ。絵文字の方が楽しいだけだ。”ノン絵文字のキャラクターを使った場合はもっと stealth になるし、さらに不気味でもあるよ。" userName="vzaliva" createdAt="2025-02-12T16:50:42" color="">}}

{{<matomeQuote body="これがそんなに不気味だとは思わない。検出器を簡単に書けると思うし（バリアントのないものをフラグ付けする感じで）、役に立つと思う。" userName="LorenPechtel" createdAt="2025-02-14T21:34:47" color="">}}

{{<matomeQuote body="これはクールだよ。UI要素（特にウェブアプリ）では見えないことが多いUnicode Tag文字もあるし。Tag文字は一部のLLMが隠れたテキストをASCIIとして解釈して指示に従ったり、自分で書けたりするところがユニークだね：リンク<br>ここにMicrosoftがCopilotで修正した実際のエクスプロイトPOCがある：リンク" userName="wunderwuzzi23" createdAt="2025-02-12T21:28:57" color="#785bff">}}

{{<matomeQuote body="単にLLMの出力に透かしを入れるだけじゃなく、トークン生成の確率情報をパッケージ化する面白い方法かもね。これは生成プロセスにちょっとした透明性を持たせる手段で、OpenAIのAPI仕様にも含まれてるし、他のエンジンでも対応してるよ。普段は別フィールドに付けるけど、視覚化する面白い方法もあって（例えば、mikupad）、悪くないアイデアだけど脳がちょっとくすぐられるね。" userName="HanClinto" createdAt="2025-02-12T16:32:24" color="#38d3d3">}}

{{<matomeQuote body="コミュニティのチャットルームに関連して、他のプラットフォームとブリッジするボットを開発したんだ。これだと、各プラットフォームのメッセージに、お互いのプラットフォームIDを指す隠れたデータを含められる。データベースを自分でホストしなくても追加データを付けられるのは使えるアイデアだと思う！" userName="themoonisachees" createdAt="2025-02-14T13:30:29" color="#38d3d3">}}

{{<matomeQuote body="一般的には、将来的に使われる未解釈のバイト列を予約しておいてデータを渡す方法がある。でも、これは暗号的に安全じゃないから、統計分析でバレるリスクがあるってのは注意が必要。例えば、png仕様では、任意のメタデータチャンクを挿入できて、一般的なpngリーダーでは使われないデータを格納するのに使われるんだよ。" userName="nonameiguess" createdAt="2025-02-12T15:23:36" color="">}}

{{<matomeQuote body="多くの画像フォーマットは、任意のメタデータを保存できるように設計されてるし、アプリケーション固有の拡張もあるね。TIFFファイルには、3Dスキャンがスライス状に含まれたバイナリメタデータが付けられているのを見たことがあるよ。普通の画像ビューアだと最初のスライスしか見れないけど、特別なビューアだと3Dモデルとして表示できる。" userName="dkarl" createdAt="2025-02-12T15:42:11" color="#38d3d3">}}

{{<matomeQuote body="IDカード絵文字（U+1FAAA）を使ってデジタルIDトークンを運ぶ方法って面白いかも。簡単なデモがあるし、銀行が暗号化されたIDトークンを発行して、Unicodeに対応したどんなプラットフォームでもスムーズに移動できる仕組みになってるんだ。セキュリティ面は他で管理して、絵文字はあくまで運送層として機能する。" userName="JoelJacobson" createdAt="2025-02-13T09:44:08" color="#ff5733">}}

{{<matomeQuote body="OSがそれを自動で認識できるからか、銀行のウェブサービスへの長いURLを含めるために使えるみたいだ。" userName="JoelJacobson" createdAt="2025-02-13T10:31:36" color="">}}

{{<matomeQuote body="それすごいね！Claudeに基本的な暗号を追加してもらったよ。" userName="dalemhurley" createdAt="2025-02-13T03:49:35" color="">}}

{{<matomeQuote body="トークナイザーにキャッチされるらしいよ。" userName="iNic" createdAt="2025-02-12T15:15:27" color="">}}

{{<matomeQuote body="（作者）スレッド内でLLMがこれを解読できるか質問があったんだけど、答えは多分難しいって感じ。ただ、Pythonインタープリターがあればできることもあるね。" userName="paulgb" createdAt="2025-02-13T01:42:01" color="">}}

{{<matomeQuote body="これ面白いね。Instagramのコメントに貼り付けたらそのまま残ったから、もしかしたら誰かが面白いことできるかも。公共フォーラムに目に見えないコマンドを投稿するのって面白いね。" userName="rafram" createdAt="2025-02-12T20:43:59" color="">}}

{{<matomeQuote body="ステガノグラフィーはずっと前からある技術だから、特にこの投稿で求めてるようなロジックボムとは違うけど、昔からネットのいろいろなアイデアがこうやって回ってたよね。直訳すれば友達に秘密のコードを渡したいとき、画像のアルファチャンネルにビットデータをエンコードして、普通に見える画像として公共フォーラムに投稿すればいい。" userName="the_hoffa" createdAt="2025-02-13T09:44:07" color="#ff5733">}}

{{<matomeQuote body="理論的には、見た目が同じリンクをいくつか作って、違うリソースにアクセスさせることができるんじゃない？追跡情報のないリンクは安全だと思ってたけど、これが通用するなら、リンクに対するアプローチを見直さなきゃな。" userName="nzach" createdAt="2025-02-12T14:13:01" color="#ff5733">}}

{{<matomeQuote body="「見た目が同じ」ってのは良くないよ。ラテン文字とキリル文字を混同する攻撃って聞いたことある？例えるならCとСみたいに。安全性とプライバシーに関して、視覚的に同じかどうかで判断するのはダメだね。最近のブラウザはもう優秀で、アドレスバーにはpunycodeを使ってるし、URLの残りはパーセントエンコーディングしてくれる。" userName="kccqzy" createdAt="2025-02-12T18:57:04" color="#785bff">}}

{{<matomeQuote body="兄弟コメントの通り、UnicodeのDNSではpunycodeエンコーディングを使ってるけど、さらにその規格では、Unicodeデータをpunycodeに変換する前にNFCに正規化しなきゃならないって決まってる。だから、分解されたeと合成されたeの問題は関係ないよ。ただし、キリルの方は気をつけて。" userName="moody__" createdAt="2025-02-12T22:27:41" color="#785bff">}}

{{<matomeQuote body="OPはリンクと言ってるので、これがパス名やクエリパラメータの一部ならNFC/NFDの問題は残るよ。" userName="kccqzy" createdAt="2025-02-13T01:10:55" color="#ff5733">}}

{{<matomeQuote body="確かに、でもそれによるセキュリティの懸念は、視覚的に同じ外観の複数のドメイン名が異なるサーバーを指すことほど心配じゃないかな。フィッシングには直接影響するからね。似たようなパスやクエリ部分があっても、自分が思ってるサーバーには接続できるだろうし。" userName="moody__" createdAt="2025-02-13T04:29:37" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="ええ、DNSはpunycodeを使うのは、Unicodeが存在しなかった時からのことだね。bindはグラフェームが1バイト以上を持つことがないと仮定してるから。" userName="komboozcha" createdAt="2025-02-12T19:23:42" color="">}}

{{<matomeQuote body="そうだけど、ブラウザって今は同種の文字を検出してpunycodeを表示してくれるんだよ。参照してね<br>https://news.ycombinator.com/item?id=14130241<br>その時、Firefoxは修正されてなかったけど、今は改善されてる。デフォルトで有効なnetwork.idn.punycode_cyrillic_confusables設定がある。" userName="ale42" createdAt="2025-02-12T21:57:57" color="#ff5733">}}

{{<matomeQuote body="私の理解では、「変な」unicodeコードポイントは<br>https://en.wikipedia.org/wiki/Punycode<br>になるんだけど。投稿からコピペした󠅘󠅕󠅜󠅜󠅟を使ってChromeに偽のドメインを入力したら、得られたPunycodeは特にエンコーディングのビットがなかった。けど、その絵文字をURLのクエリ部分にペーストしたら、間違いなくnginxのログにペイロードが表示された。やばい。" userName="cscheid" createdAt="2025-02-12T14:28:29" color="#ff33a1">}}

{{<matomeQuote body="ドメインは「punycode」エンコーディングされて、URLは「url encoding」されるんだよね。だからunicode文字が目立つようになる。それでもブラウザは自動的に非ASCII文字を受け入れて変換するから、理論的には「無効」な文字をリンクに入れて、クリック後にブラウザが変換することもできるかもしれない。それ、あり得るストラテジーだね。" userName="bmicraft" createdAt="2025-02-12T16:05:27" color="#785bff">}}

{{<matomeQuote body="絵文字は消えたけど、内容はそのままだね。" userName="echeese" createdAt="2025-02-12T18:23:52" color="">}}

{{<matomeQuote body="コピペした後にテキストをデコードする必要があると思う。普通にテキストをクリックしただけじゃ、コンピュータはunicodeを見つけて隠されたデータを無視するから。データを隠して誰かに送ったり、ウォーターマーキングとして使う手段だと思う。" userName="dmbche" createdAt="2025-02-12T14:22:23" color="#785bff">}}

{{<matomeQuote body="うん、これはセキュリティリスクではないことは理解してるけど、知らずにリモートホストにデータを送ってるかもっていうのが怖い。人気のURL短縮サービスでPOCを作ろうとしたけど、うまくいかなかった。作りたかったのは、<host.tld>/innoc󠅥󠅣󠅕󠅢󠄝󠅙󠅔󠄪󠅑󠅒󠅓entで、これがgoogle.comにリダイレクトするってこと。ここで「c」に隠されたデータがあって、ユーザーはそれに気づかずにサーバーに送ることができるはず。正しいソフトウェアがあれば可能だと思う。" userName="nzach" createdAt="2025-02-12T14:37:34" color="#785bff">}}

{{<matomeQuote body="HTMLエンティティを使うと隠れた内容が見えるから、ここで試してみてくれよ。https://mothereff.in/html-entities<br>" userName="cess11" createdAt="2025-02-12T14:23:11" color="">}}

{{<matomeQuote body="＞『独自のハッシュやクエリパラメータのないリンクは安全だと思ってたけど、これが有効ならリンクの扱い見直さなきゃな』って俺も思ってた。実際見えるリンクと実際のリンクは違うから、マウスカーソルを合わせるとブラウザの左下で本当のリンクが出るんだよ。<br>" userName="riquito" createdAt="2025-02-12T15:50:43" color="#ff5c5c">}}

{{<matomeQuote body="URIに非ASCII文字が含まれてるのは技術的に無効だ。ブラウザは受け入れるときにそういう無効な文字をパーセントエンコードすべきだけど、すべてがそうするとは限らない。<br>" userName="layer8" createdAt="2025-02-12T16:09:47" color="">}}

{{<matomeQuote body="このツールとアイデアはちょっと危険だよ。https://github.com/zws-im/zws<br>（『目に見えないスペースを使ってURLを短縮する』）<br>" userName="password4321" createdAt="2025-02-12T17:50:21" color="">}}

{{<matomeQuote body="俺がずっとUTF-8をトークナイザーに使うべきだって主張してる理由の一つだよ。トークナイザーの過程が隠されてるのが問題だと思う。直接UTF-8を使うと、この問題にハマっちゃう。UnicodeはZWJ文字を含むシーケンスのリストも公開してるしね。<br>" userName="ofou" createdAt="2025-02-13T22:17:37" color="#38d3d3">}}

{{<matomeQuote body="UTF-8エンコーディングデータを隠れたバイト列に格納できる。エンコードされたスムグル文字がバリエーションセレクターのやつなら、スムグルテキストの中にテキストを隠せるんだ。隠してデータは無限に深く入れられるよ。<br>" userName="FranchuFranchu" createdAt="2025-02-12T14:24:41" color="">}}

{{<matomeQuote body="インシデント後の分析で『データがUnicode文字列を通じて漏洩しました』ってやったら、画面には巨大な亀の絵文字が並んでる光景を想像してる。https://emojipedia.org/turtle<br>" userName="riskable" createdAt="2025-02-12T14:47:31" color="">}}

{{<matomeQuote body="＞『インシデント後の分析で『データがUnicode文字列を通じて漏洩しました』ってやったら、画面には巨大な亀の絵文字が並んでる光景を想像してる』ってのは、俺も気づくまでに時間かかったけど、”亀は全ての下”ネタが好きってことだよ。<br>" userName="JadeNB" createdAt="2025-02-12T15:00:59" color="#ff5c5c">}}

{{<matomeQuote body="同じように数年前に、プログラムを一連のZWJに変換するスクリプトで楽しんだよ。https://thelisowe.substack.com/p/sleeper-cell-a-method-of-em...デコーダースクリプトも含まれてる。<br>" userName="Mockapapella" createdAt="2025-02-12T19:28:32" color="">}}

{{<matomeQuote body="この件や他の利用方法のせいで、ユーザーのニックネームやステータスメッセージの文字数を数えるのにコードポインタを使わざるを得なかった。誰も他のユーザーを見に行くのに9MBもダウンロードしたくないからね。<br>" userName="blmarket" createdAt="2025-02-12T19:45:23" color="">}}

{{<matomeQuote body="NoSQL？保存されていたデータベースフィールドの基本的な長さチェックで見つかるべきだったと思う。<br>" userName="myflash13" createdAt="2025-02-13T10:53:55" color="">}}

{{<matomeQuote body="すごいね、悪用も対策も。" userName="ncr100" createdAt="2025-02-12T20:56:07" color="">}}

{{<matomeQuote body="テキストに透かしを入れるのは面白いね。もちろん回避策があるだろうけど、LLMの出力に微妙に透かしを入れる方法としてはいいかも。" userName="jerpint" createdAt="2025-02-12T14:11:30" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（4）">}}
{{<matomeQuote body="LLMの出力に透かしを入れる方法は他にももっと良いのがあるよ。これは簡単に検出できちゃうから。" userName="tyho" createdAt="2025-02-12T14:30:48" color="">}}

{{<matomeQuote body="最近、ステガノグラフィックプロジェクトをやったんだけど、これには役立つかも。詳しくは＞”https://github.com/shawnz/textcoder”" userName="shawnz" createdAt="2025-02-12T14:39:50" color="">}}

{{<matomeQuote body="それはすごい！HNの投稿を再投稿したらどう？" userName="andai" createdAt="2025-02-12T20:08:45" color="">}}

{{<matomeQuote body="通常の透かし技術の問題は、数百トークン以上の出力が必要ってことだね。この技術はもっと短い出力にも適用できる。" userName="antognini" createdAt="2025-02-12T17:55:43" color="">}}

{{<matomeQuote body="簡単な方法：透かしを入れるには鍵付きDRBGを使う。nthトークンごとにDRBGからビットを読み取って、可能なトークンを赤/黒でラベル付けする。次のトークンを選ぶ前に黒いトークンのロジットを-Infにセットすることで赤いトークンを選ばせる。検出するなら、同じDRBGを使ってtokenizeし、nthトークンごとに赤いトークンの集合を調べる。たくさん赤いトークンがあったら、その内容は透かしが入ってるって確信できるかも。ちょっと調整が必要かもしれないけど、ほぼ検出できないと思う。要は、LLMに特定の位置で「フラグ付き」の同義語を強制する方法だよ。" userName="tyho" createdAt="2025-02-12T15:58:11" color="#785bff">}}

{{<matomeQuote body="これって長文でしか実行できないような気がするし、テキストの種類によっては同義語が使いにくいかも。例えば、厳密な数学の証明と冗長なエッセイでは。バイアスのあるトークン選択が後者で検出される可能性があるし、前者ではテキストが壊れるかもしれない。" userName="jl6" createdAt="2025-02-12T17:38:06" color="">}}

{{<matomeQuote body="低エントロピーのテキストには、ロジットに小さな定数を加える方法が良さそうだけど、長いテキストが必要だよね。エントロピーが低いと特に長くしないといけない。でも、一般的なエントロピーを持つテキストでは、そんなに長くなくても良いみたい。25ワードくらいで良いって聞いたことがある。" userName="drdeca" createdAt="2025-02-12T19:42:10" color="">}}

{{<matomeQuote body="もしLLMの全出力を使わなかったらどうなる？例えば、長いランダムな前置きと結論の中に目的の出力を入れた場合、透かしに影響する？" userName="deadbabe" createdAt="2025-02-12T21:02:18" color="#ff5c5c">}}

{{<matomeQuote body="あんまり有効じゃないウォーターマークだなぁ。気づかない人には捕まるかもしれないけど、漏洩する人やサイバーセキュリティの専門家には通用しないだろうね。むしろ、何かに署名するのに使うのがいいと思う。新聞や政治家が自分の記事にユニークなキーをエンコードすれば、誰でも引用が本当にそいつのものか確認できるしね。" userName="LorenPechtel" createdAt="2025-02-14T21:47:30" color="">}}

{{<matomeQuote body="何年か前に似たようなのを実装したことある。Unicodeには二つの非表示スペース文字があって、ゼロ幅スペース（U+200B）とゼロ幅ジョイナー（U+200D）がある。これを使うと任意のデータをバイナリでエンコードできる。ただ、例を挙げるとHNがストリップしちゃうから言えない。" userName="panki27" createdAt="2025-02-12T18:30:18" color="">}}

{{<matomeQuote body="去年、Bing Image Creatorでこの技術使ってた。ブランド名や有名人の名前をプロンプトに忍ばせて、AIには読み取らせたけど、人間用のフィルタには引っかからなかったよ。" userName="qingcharles" createdAt="2025-02-13T09:32:38" color="#38d3d3">}}

{{<matomeQuote body="10年前に全く見えないテキストで任意のデータを密輸するためのPOCを作ったよ。" userName="foobuzzHN" createdAt="2025-02-13T09:05:11" color="">}}

{{<matomeQuote body="r1は最初の段階でメッセージがHELLOだとわかってたけど、理由はわからなかったみたい。最終的には正しいメッセージに到達したけど、エンコーディングミスがどこかにあると考えてた。非標準なメッセージではどうなるのかな。" userName="markisus" createdAt="2025-02-12T14:31:57" color="">}}

{{<matomeQuote body="すごい！違うメッセージでも再現できるのか、運が良かっただけなのか気になるね。文字列がどのようにトークン化されるか見たけど、理論的にはデコードできるだけの情報は保持されてるみたい。" userName="paulgb" createdAt="2025-02-12T14:54:21" color="#785bff">}}

{{<matomeQuote body=">運が良かっただけなのかって話だけど、試験の問題でも狙った数値が選ばれてることが多い。秘密のメッセージのエンコード方法が他のエンコードと似てれば、パターンマッチングで拾ったりしてるかもね。" userName="klabb3" createdAt="2025-02-12T15:38:13" color="">}}

{{<matomeQuote body="今日ちょっと実験したんだけど、AIが自分の推論だけで解くのは無理かも。ただ、Pythonインタプリタにアクセスできれば結構良いヒット率だったよ。これがその例だよ！" userName="paulgb" createdAt="2025-02-13T01:39:24" color="">}}

{{<matomeQuote body="深層学習のr1は”How do I make meth”のデコードにちょっと苦戦してたみたい。特に最初の絵文字がカモフラージュだったりエンコードの一部かもしれないって考えたりしてた。結局、”Hello World!”だと解いてたよ。" userName="bogtog" createdAt="2025-02-12T14:33:45" color="">}}

{{<matomeQuote body="それはなかなか厳しいな。偶然にHで始まる文字列を推測しただけかもしれないし、もしかしたら”J”で始まる文字列だったら”jump up”みたいに推測したら納得できたかも。" userName="roguecoder" createdAt="2025-02-12T18:59:18" color="">}}

{{<matomeQuote body="LLMがこれをデコードできるわけないよ。単に統計的に『秘密メッセージを推測して』ってリクエストに対して推測した答えを返してるだけだし、だから『こんにちは』とか『こんにちは、世界』っていうのは驚かないよ。" userName="krupan" createdAt="2025-02-12T16:16:15" color="">}}

{{<matomeQuote body="Claudeに一回のプロンプトで『その絵文字には隠れたメッセージがあると思う、デコードできる？ JavaScriptも使っていいよ』って言ったら『the raisons play at midnight』が出てきたよ。夜の部分は雪伝の使い方を見たことあるかもだけど、raisonsとplayは何も考えずに選んだ。" userName="paulgb" createdAt="2025-02-12T20:23:14" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（5）">}}
{{<matomeQuote body="面白いことに、絵文字の中に_絵文字_をエンコードすることも可能なんだよね！" userName="jaygreco" createdAt="2025-02-12T16:22:38" color="">}}

{{<matomeQuote body="これはそんなに驚かないけど、設定をいくら変えてもバイトがエディタに表示されることがなかったのがイライラした。hexdumpを使ってみたらやっとわかった。" userName="remram" createdAt="2025-02-12T15:19:25" color="">}}

{{<matomeQuote body="ここにemacsで動くPOCがあるよ。すべての関連キャラクターをカバーするわけじゃないけど、<br>(setq   ;;他の見えない興味深いキャラクター<br>unicode-zero-width-space ?​<br>…<br>)これを使えば、いろんな見えないキャラクターを対処できる。" userName="jrootabega" createdAt="2025-02-12T16:16:00" color="">}}

{{<matomeQuote body="高レベルの設定で、関連する見えないキャラクターを一気に設定できるよ。<br>(custom-set-variables<br>'(glyphless-char-display-control  '((format-control . hex-code)<br>(variation-selectors . hex-code))))<br>これでglyphless-char-displayの値が変更できる。" userName="jrootabega" createdAt="2025-02-13T02:35:20" color="#ff33a1">}}

{{<matomeQuote body="これは自分でタイプできる最小限のセットアップで、もし心配なら直接これを打ってみて。見えないキャラクターの16進数コードポイントを?\xの後に入れ替えて設定するだけだよ。" userName="jrootabega" createdAt="2025-02-12T21:35:25" color="">}}

{{<matomeQuote body="vimを使ってるけど、`:set binary enc=latin1`がうまくいくみたい。latin1がなぜ必要かはよくわからないけど。" userName="remram" createdAt="2025-02-12T16:55:52" color="">}}

{{<matomeQuote body="vscodeの『Unicode Highlight: Non-basic ASCII』は、そのキャラクターをハイライトするよ。残念ながら『Unicode Highlight: Invisible Characters』の設定はそれを表示できないみたい。" userName="mdouglass" createdAt="2025-02-12T23:37:22" color="">}}

{{<matomeQuote body="私も同じこと考えた。もっと便利に大規模なテキストを検索する方法知ってる人いる？" userName="bittercynic" createdAt="2025-02-12T15:24:29" color="">}}

{{<matomeQuote body="公のサイトで「LLMはこれを知ってる？」とか話すのって、盗聴された電話で友達に何かを言う時にFBIが知ってるか気にするようなものだと思う。" userName="urbandw311er" createdAt="2025-02-13T14:12:37" color="">}}

{{<matomeQuote body="それはちょっとシニカルすぎる見方じゃない？著者がLLMが何を考えるかを見るのは、新しいゲームをもらって犬を撫でられるか気になるのに似てるよ。" userName="fennecfoxy" createdAt="2025-02-13T14:24:49" color="">}}

{{<matomeQuote body="面白いのは、”この文には隠されたメッセージがある”って表示しても、'ソースを表示'してもおかしいところは見えないし、デバッグインスペクタからコピーしてもそのまま出る。" userName="fortran77" createdAt="2025-02-12T16:38:49" color="#785bff">}}

{{<matomeQuote body=">このやり方はユニコードの乱用だからやらない方がいい。実用的な使い方を考えてるなら、それはやめた方がいいよ。<br>まったくIRCクライアントの隠しコマンドを考えてないわけじゃないけど。" userName="arkh" createdAt="2025-02-13T09:08:02" color="">}}

{{<matomeQuote body="企業や政府のリーカー向けのフィンガープリンティング技術として使えそう。" userName="65" createdAt="2025-02-12T15:37:49" color="">}}

{{<matomeQuote body="子供でもユニコード文字を操作することができるんだよ。例えば、悪口フィルターを突破したいなら、同じ文字の代わりに別の表現を使えばいい。" userName="nitwit005" createdAt="2025-02-13T01:48:50" color="">}}

{{<matomeQuote body="Kitty terminalは通常の文字と絵文字は普通に表示するけど、ペイロードがあると文字は1つの箱、絵文字は2つの箱で表示されるよ。" userName="tyilo" createdAt="2025-02-13T08:22:39" color="">}}

{{<matomeQuote body="面白い！自分も似たような絵文字エンコード/デコードのマイクロサイトを作ったよ： https://face64.me" userName="andrethegiant" createdAt="2025-02-13T04:07:48" color="#ff5c5c">}}

{{<matomeQuote body="隠された絵文字を新しいものにエンコードできるのが面白いね。" userName="petee" createdAt="2025-02-12T14:29:12" color="">}}

{{<matomeQuote body="エンコードされたデータを深掘りすると無限の亀の絵文字が見つかって、“亀の背中をずっと歩いてるみたいだね！”と叫ぶことになるかも！" userName="riskable" createdAt="2025-02-12T14:49:36" color="#ff5733">}}

{{<matomeQuote body="’unicode normalisation’ で検索しても結果がないのは意外だね。みんなこれを忘れがちなんだよね。" userName="cynicalsecurity" createdAt="2025-02-12T21:09:38" color="">}}

{{<matomeQuote body="試したことはないけど、いくつかのunicode normalizersがバリアーションセレクタの連続を削除しないって聞いたことがあるよ。" userName="paulgb" createdAt="2025-02-12T21:58:27" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（6）">}}
{{<matomeQuote body="正規化の実装は、定義上バリアーションセレクタを削除しちゃいけないんだよ。この正規化は文字列を一貫して分解または統合して、古いポイントから新しいポイントに変換するために使う。" userName="moody__" createdAt="2025-02-12T22:22:52" color="">}}

{{<matomeQuote body="これは多くの（ウェブ）フォームをぶっ壊しそうだね。完全には無敵じゃないけど、エンコードの隠れたテキストは一部保てるかも。これは色々なツールにバグを提供する楽しいおもちゃになりそう！" userName="ahofmann" createdAt="2025-02-12T14:22:54" color="#38d3d3">}}

{{<matomeQuote body="テスト、絵文字はHacker Newsで使えるかな？　󠅤󠅕󠅣󠅤<br>ああ、どうやらバイトは残ってるみたいだ！このメッセージを全部コピーすると“テスト”と解読されるよ。" userName="vladde" createdAt="2025-02-12T14:00:32" color="">}}

{{<matomeQuote body="クリックした後のこのアドレスを確認してみて：<br>https://emoji.paulbutler.org/?mode=encode󠅄󠅢󠅑󠅓󠅛󠅙󠅞󠅗󠄹󠄴<br>最後の’e’をエンコードしたよ。" userName="_nhh" createdAt="2025-02-13T12:37:32" color="">}}

{{<matomeQuote body="ああ、ascii smugglingやzalgoについても見る価値があるよ。" userName="gradientsrneat" createdAt="2025-02-14T23:19:13" color="">}}

{{<matomeQuote body="FWIW、Pebbleでこのテクニックを考えたことがあって、通知をよりアクショナブルにしたいって思ったんだ。特にWhatsAppなんかのパートナーと協力して、メッセージに深いリンクを埋め込むことを検討してた。" userName="HeikoBehrens" createdAt="2025-02-12T14:33:35" color="#45d325">}}

{{<matomeQuote body="失礼ながら、これがどうやって有効な特許になるんだろう？<br>テキストを白い背景に書くことと同じじゃない？ただ印刷されないだけで。これを“発明”と呼ぶのは狂気だわ。" userName="palata" createdAt="2025-02-12T15:33:31" color="">}}

{{<matomeQuote body="企業は無防備な特許を取得することが多いよ。これで小さな競合を脅かすために使うこともあるし、特許が競争を悪化させる理由の1つなんだ。" userName="rwmj" createdAt="2025-02-12T15:51:02" color="#ff5c5c">}}

{{<matomeQuote body="約25年前に説明されたことがあるけど、特許は「剣の特許」と「盾の特許」に分けられるんだ。剣のように他者を抑圧したり不当な利益を得るための特許もあるけど、盾として使って守ることもできる。もし自分がBigTechを運営していたら、あり得る特許は全部取得して、秘密でない特許を自由にライセンスして邪道な特許を持つ人を困らせてやるけどね。" userName="neilv" createdAt="2025-02-12T16:01:43" color="#785bff">}}

{{<matomeQuote body="歴史が教えているのは、BigTechを運営する人間は自分の利益だけを追求するナルシストになりがちだよね。" userName="palata" createdAt="2025-02-12T17:39:36" color="">}}

{{<matomeQuote body="自分にとっては、そういうリスクを取る価値はあるね。" userName="neilv" createdAt="2025-02-12T17:43:50" color="">}}

{{<matomeQuote body="数が多い特許は、大手の競合から自分を守るためにも使われることがあるよ。ゴミみたいな弾薬の戦争なら、負けるか、ゴミを蓄積するしかないからね。" userName="shermantanktop" createdAt="2025-02-12T15:54:40" color="">}}

{{<matomeQuote body="特許は避けられないゲームの一部だよ、好き嫌いに関わらずね。もし自分が発明を特許化しなければ、誰かがそれを持って行って、弁護士を使ってくる。特許は防御目的で使われることが多いんだ。だから、特許を持つことを恥じる必要はないと思う。" userName="krupan" createdAt="2025-02-12T15:55:47" color="">}}

{{<matomeQuote body="いや、それは賛同できない。特許が公開かつ永続的に自由にライセンスされるなら、倫理的じゃないとは言えないよ。Red Hatの特許約束がその一例。実際には、防御目的だけで特許を取得するのは非常に稀だし、弁護士はそれに対抗して戦うから、企業は防御目的だけで特許を取得しているわけじゃない。" userName="coldpie" createdAt="2025-02-12T16:06:22" color="#ff5733">}}

{{<matomeQuote body="友よ、本当に君は何も知らないね。特許を自由にライセンスしてもパテントトロールから身を守れないよ。特許争いがどう進むかはこういうことだ：会社Aが会社Bに「お前の特許を侵害している」と言う。会社Bは「ちょっと待って、俺の特許も見ていくよ」と返す。会社Aは「いや、間違いだったかも」と引き下がる。もし会社Bが特許を自由にライセンスしていたら、これは成り立たないんだ。" userName="krupan" createdAt="2025-02-12T16:36:20" color="#38d3d3">}}

{{<matomeQuote body="そう、だから「防御目的のみ」という部分があるんだ。Red Hatの約束から引用すると、>「我々の約束は、あるパーティがRed Hatに対して特許を主張した場合は適用されない」ってね。会社Bは自分の特許を使って会社Aに対抗することができる。" userName="coldpie" createdAt="2025-02-12T16:38:56" color="#785bff">}}

{{<matomeQuote body="つまり、Red Hatは特許を自由にはライセンスしていなくて、攻撃されなければ自由と主張しているだけなんだね。これは99％の企業が従うシステムそのものだ。なのにPebbleの人を非難したのか？" userName="krupan" createdAt="2025-02-12T16:51:49" color="">}}

{{<matomeQuote body="> 誰もがそういう風に主張しているわけじゃないし、法律で確固たるものにするべきだよね。特許が悪法にならないためのルール作りが必要。そうすれば悪い人たちによって使われることはない。Pebbleの件に関しては、法律を遵守しながら特許を取得するのは倫理的ではないと思う。" userName="coldpie" createdAt="2025-02-12T16:59:41" color="#ff33a1">}}

{{<matomeQuote body="> それは本当？裁判で試されたことはあるの？なぜもっと企業や特許弁護士がこれを推進しないの？エンジニアがやめるように頼んでいるから？誰もがパテントトロールを嫌っていて、武器化された特許も嫌なんだ。状況を改善したい気持ちは分かるけど、それが間違った方向に向かっていると思う。" userName="krupan" createdAt="2025-02-13T16:04:28" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
