+++
date = '2025-10-20T00:00:00'
months = '2025/10'
draft = false
title = 'DeepSeek OCR、テキスト10倍圧縮でLLMを効率化！その新技術とは？'
tags = ["OCR", "LLM", "AI", "データ圧縮", "マルチモーダルAI"]
featureimage = 'thumbnails/purple5.jpg'
+++

> DeepSeek OCR、テキスト10倍圧縮でLLMを効率化！その新技術とは？

引用元：[https://news.ycombinator.com/item?id=45640594](https://news.ycombinator.com/item?id=45640594)




{{<matomeQuote body="論文はただのVLMじゃなくて圧縮の話が面白いってさ。DeepSeek-OCRは10倍圧縮でほぼロスレス、20倍圧縮でも60%の精度らしいよ（画像トークンはテキストトークンの10倍の価値ってことかな？）。これって情報理論的にどういうこと？テキストトークンが細かすぎたり、Visionトークンが「単語ごと」の限界を超えてエントロピーに近づくとか？あと、画像をスケールダウンして長文コンテキストを扱うって話もしてるね。" userName="krackers" createdAt="2025/10/20 06:57:27" color="#785bff">}}




{{<matomeQuote body="LLMはトークンごとに計算量が2次関数的に増えるから、重いんだよね。彼らはVLMでテキストトークンをビジュアルトークンに圧縮しようとしてるみたい。もしかしたら計算コストを下げるために、テキストを画像にレンダリングしてからトークン化するのかもね。" userName="looobay" createdAt="2025/10/20 07:01:47" color="">}}




{{<matomeQuote body="でもさ、普通に考えたらテキストをビジョン・トークンで表現しても、テキストトークンと同じかそれ以上のビット数になるんじゃない？表現形式を変えただけで、変換先のドメインでスパース性や圧縮性がないと計算上のメリットはないはずだよね？結局、どこから効率性が生まれるのか、なんでビジョン・トークンの方がテキストトークンより効率的なんだろう？" userName="krackers" createdAt="2025/10/20 07:07:14" color="#ff5c5c">}}




{{<matomeQuote body="テキストトークンは量子化されて部分単語を表すけど、Visionトークンは埋め込み空間にだけ存在するんだ。LLMでは、テキストはトークンIDからベクトル埋め込みへの「ルックアップテーブル」で処理される。トークンID自体は小さくて効率的に伝送できるけど、埋め込み行列は非効率。画像は直接ニューラルネットワークベースのエンコーダーに渡され、埋め込みベクトルになる。Visionトークンは埋め込み自体を伝送する必要があるから非効率に見えるけど、より多くの情報をパックできる。テキストトークンは連続したUTF-8バイトに対応するけど、グローバルなパターンを効率的にエンコードできないって違いもあるね。" userName="miki123211" createdAt="2025/10/20 11:13:17" color="#ff5c5c">}}




{{<matomeQuote body="素晴らしい説明、ありがとう。モデルがまだ約10万トークンで動いてるって聞いて驚いたけど、よく考えたら納得だね。どんな言語でも使われる単語やサブワードの単位は限られてるもんね。エントロピーは、それらのサブワードが何十億通りにも並べられることから来てるんだね。" userName="rco8786" createdAt="2025/10/20 11:50:34" color="">}}




{{<matomeQuote body="人間はテキストを視覚で捉えるよね。だから、テキストには視覚ノイズから守るための適応が組み込まれてるはず。例えば、似た見た目の2つの単語は、似た文脈で決して現れないはず。もし現れたら混同されるから。だから、そういう単語は同じトークンに安全に減らせる、とかかな。" userName="f33d5173" createdAt="2025/10/20 07:26:31" color="">}}




{{<matomeQuote body="肝は、Visionトークンが連続値のベクトルであるのに対して、テキストトークンは小さな離散集合の要素だってことだよ。テキストトークンはルックアップテーブルで連続値ベクトルに変換されるけどね。だから、Visionトークンはテキストトークンよりも1トークンあたりで伝えられる情報量（ビット数）がずっと多いんだ。これによって、複数のテキストトークンの内容を1つのVisionトークンに詰め込めるってわけ。" userName="psb217" createdAt="2025/10/20 08:24:19" color="#45d325">}}




{{<matomeQuote body="Visionトークンが良い圧縮媒体なのは、1つのVisionトークンがN要素のベクトル1つなのに対して、テキストトークンだとM個のN要素ベクトルになるから。1つのVisionトークンは複数のピクセル（と、もしかしたら複数の単語）を表すからね。これが計算にとって良い圧縮媒体である理由だよ。テキストトークンほど正確にはならないだろうけど、論文が示すようにかなり良い結果が出せるんだ。" userName="looobay" createdAt="2025/10/20 07:13:27" color="#785bff">}}




{{<matomeQuote body="「1つのVisionトークンはN要素のベクトル1つ、テキストトークンはM個のN要素ベクトル」って話だけど、Visionトークンは16x16のパッチを表すから、1単語をカバーするのに複数のVisionトークンが必要なこともあるよね？埋め込みサイズdが同じなら、 Visionトークンだと`x * d`、テキストトークンだと`y * d`で比較すべきじゃないかな？論文の10倍って言われても、なんで`x ＜＜＜ y`になるのか事前にはわからないよ。でも、このコメントを読める最小フォントサイズに縮小して16x16トークンで数えてみたら、Visionトークン1つにもっと多くのテキストが収まるのに驚いたんだ。だから、xがyより大きくないってのは納得できるかも。でも「Visionトークンがより多くのテキストをカバーできる」ってだけじゃなくて、エンコーダーが各トークン内の冗長性を発見できる場合にだけ、より良い圧縮ができるはずだよね？古典的な圧縮技術で利用できないような冗長性なんだろうね。" userName="krackers" createdAt="2025/10/20 07:42:24" color="#ff5c5c">}}




{{<matomeQuote body="テキストだけの処理もできるし、俺のドイツ語音声認識エンジン（https://arxiv.org/abs/2206.12693）でもこの技を使ったよ。「Oxford Univで勉強中」みたいに「University」を短くしても意味はほとんど変わらないんだ。<br>これってすごいことだよね。" userName="fxtentacle" createdAt="2025/10/20 11:58:21" color="#ff5733">}}




{{<matomeQuote body="漢字で書かれたテキストって、ラテン文字のテキストより、こういう視覚中心の圧縮に合ってるのかなって疑問に思ったよ。" userName="imjonse" createdAt="2025/10/20 07:16:11" color="">}}




{{<matomeQuote body="すごく良いまとめだね！テキストって、概念を二次元に広げたもので、それを人間が読んで脳でまた概念に戻すわけじゃん？だから、二次元表現からあんまり意味を失わずに概念へ変換できるのは当然だよね。論文では、この方法で大量のLLM学習データを爆速で生成するって話で、これはマジ面白い。長いコンテキストの多様なデータでモデルを学習させるには、テキストじゃなくて画像表現を与えるのが最高だって示唆してるよ。" userName="ttul" createdAt="2025/10/20 14:56:01" color="#ff33a1">}}




{{<matomeQuote body="埋め込みルックアップテーブルの後に双方向エンコーダを追加して、テキストを少ないトークン数の意味空間に圧縮してからTransformerブロックに入れれば、同じような効果が出せるんじゃない？<br>なんかできそうな気がするんだけどな。" userName="mapleshamrock" createdAt="2025/10/21 13:54:01" color="#ff5c5c">}}




{{<matomeQuote body="トークン化って、文字レベルだと語彙は小さいけどトークン数増えるし、単語レベルだと語彙が爆発してレアトークン問題も出る。<br>LLMは性能を損なわない最大の語彙を目指してるんだ。<br>俺は人間語彙を使わない高次概念のトークン化、例えばLLVMバイトコードや小さいLLMの潜在空間を使うこととかを考えてるよ。Claude Codeがコードの「雰囲気」を渡せたら最高だよね。<br>でも、これってモデルの状態がブラックボックス化する諸刃の剣だけどね。JSONがデバッグしやすいみたいに。<br>0: https://www.rohan-paul.com/p/tutorial-balancing-vocabulary-s...<br>1: https://arxiv.org/html/2407.13623v1<br>2: https://en.wikipedia.org/wiki/Glitch_token<br>3: https://www.lesswrong.com/posts/aPeJE8bSo6rAFoLqg/solidgoldm..." userName="freeqaz" createdAt="2025/10/20 13:18:49" color="#45d325">}}




{{<matomeQuote body="テキスト言語って、やってることと消費リソースを考えたらマジすごいよ。<br>プログラマーはテキストプログラミング言語がダメで視覚的なものにすべきって言いtがちだけど、それはテキスト言語のすごさを理解してないからだと思うんだ。<br>もちろん改善の余地や視覚言語の成功例もあるけど、テキスト言語の良さを理解せずに全部置き換えようとすると失敗すると思うな。" userName="jerf" createdAt="2025/10/20 15:14:54" color="#785bff">}}




{{<matomeQuote body="なるほど、これなら納得だね！<br>[1]が「画像パッチトークンはテキストトークンより高次元埋め込み空間をうまく使う」って簡潔に言ってる通り、これって画像特有じゃなくて「生入力→埋め込み」変換が優れてる副産物なんだね[2]。<br>画像もテキストも同じ方法で扱えるのはなんかエレガントだよね。<br>[1] https://twitter.com/c0mbinat0r/status/1980698103234891892<br>[2] https://twitter.com/Kangwook_Lee/status/1980709454522744902" userName="krackers" createdAt="2025/10/22 22:39:55" color="#ff5c5c">}}




{{<matomeQuote body="OCRの話なんだけど、ニューラルネットワークって単語を直接埋め込みにマッピングするの？それとも「Hamlet’s monologue」みたいな単語の塊を埋め込みにするの？<br>つまり、画像エンコーダが埋め込み作るときに「内部で」OCRしてるってこと？<br>って疑問に思ったんだけど、わかるかな。" userName="lubesGordi" createdAt="2025/10/20 16:50:58" color="#ff5c5c">}}




{{<matomeQuote body="テキストトークンはサブワード単位が多いけど、VLMのビジュアルトークンはセマンティック空間にあるんだって。<br>セマンティック空間の方がサブワードの断片より明らかにたくさん圧縮できるよね。<br>専門家じゃないから思いつきだけどね。" userName="runeblaze" createdAt="2025/10/20 08:20:39" color="#785bff">}}




{{<matomeQuote body="適切な比率って、ビジョントークンパッチのサイズに対する各文字の解像度で決まるはずだよね？<br>OCRの出力を記述するテキストトークン数が画像解像度とは独立してる（本来そうあるべき）唯一の方法だよ。" userName="ssivark" createdAt="2025/10/20 15:40:05" color="#45d325">}}




{{<matomeQuote body="マルチモーダルLLMが画像をどうエンコードしてるか分からないけど、基本は画像をグリッドに分割して「ビジョントークン」にする感じだね。DeepSeekの実験は情報理論的な直感というより、OCRで十分な画像詳細を捉えられる最低限の解像度を探ってるみたい。KarpathyがNanoChatをマルチモーダルにして、この知識を広めてくれたら面白いのに。" userName="HarHarVeryFunny" createdAt="2025/10/20 13:37:33" color="#38d3d3">}}




{{<matomeQuote body="それはちょっと違うよ。最新の自己回帰型画像モデルは、パッチのコードブックを作って、それをトークンとしてエンコードし、そこから画像を組み立ててるんだ。" userName="storus" createdAt="2025/10/20 17:34:15" color="">}}




{{<matomeQuote body="実際、VAEはコードブックアプローチを使って浮動小数点ベクトルじゃなくて離散トークンを作ってるよ。拡散モデルとかでその方向でいくつか成功例もあるね。" userName="jph00" createdAt="2025/10/20 14:51:32" color="">}}




{{<matomeQuote body="テキストって一次元だけど、文章は二次元だよね。純粋なLLMだと、1行目の15番目と16番目の文字は隣接してるけど、1行目の15番目と2行目の15番目の文字には関係がないと見なされる。でも、ビジョンモデル（テキストを文字コードじゃなくて図形として見る）なら、そういう関係性も捉えられるんだ。" userName="miki123211" createdAt="2025/10/20 15:47:13" color="#ff5c5c">}}




{{<matomeQuote body="うん、「ベース」テキストトークンの長いシーケンスを、複数のベーストークンの情報を持つ短い「メタ」テキストトークンのシーケンスにうまく圧縮できるよ。でも、固定数のベーストークンをグループ化しても、単語やフレーズみたいな意味的な境界とピッタリ合わないんだ。だから、どのベーストークンをどのメタトークンにグループ化するか決めるのがキモ。この「動的チャンキング」は活発な研究分野だよ。Mambaの開発者の一人が書いた「Dynamic Chunking for End-to-End Hierarchical Sequence Modeling」[1] って論文が面白いね。https://arxiv.org/abs/2507.07955" userName="psb217" createdAt="2025/10/22 09:34:28" color="#785bff">}}




{{<matomeQuote body="まさにその通り、OCR自体は面白くないよ。10倍のコンテキスト圧縮が潜在的にすごくデカい。ただ注意点として、精度が約97%だから、何にでも使えるわけじゃないけどね。" userName="hendersoon" createdAt="2025/10/21 02:57:19" color="#45d325">}}




{{<matomeQuote body="一部のモデルでは、VQ-VAE（Vector Quantized Variational Autoencoders）を使って、画像を固定されたコードブックからの離散シンボルのシーケンスに変換してるよ。参考になるかも: https://grok.com/share/bGVnYWN5LWNvcHk%3D_572b4955-6265-4210..." userName="isaacfung" createdAt="2025/10/20 16:38:50" color="#ff5733">}}




{{<matomeQuote body="これって、多くのCLIがコマンドの最短でユニークなバージョンを受け付けるのと似たような話だよね。" userName="UltraSane" createdAt="2025/10/20 15:55:36" color="">}}




{{<matomeQuote body="それって本当に事実なの？たくさんの言葉には複数の意味があるし、同じ文脈で使われても、読む人によって違う意味になり得るでしょ。正直、ほとんど（全部じゃないけど）の日常の仕事での揉め事って、そういう解釈の違いとか誤解が原因だって言えると思うんだよね。" userName="ffsm8" createdAt="2025/10/20 10:59:27" color="">}}




{{<matomeQuote body="テキストトークンが単語の一部を表すのに対し、ビジョントークンはページ全体の一部を表すから、複数の単語を含むことがあるんだ。これが「圧縮率」の理由だよ。テキストもビジョンも、トークンを表すビット数は同じ。ビジョントークンが、その部分の画像から正確にOCRできる十分な情報を含んでるかは、そのビジョントークンが何ピクセルを表してて、その領域に何個の単語があったかによるね。解像度が下がるとOCR精度が落ちるのと一緒だよ。DeepSeekが報告してるのは、1つのビジョントークンで10個のテキストトークンを表す場合と20個のテキストトークンを表す場合のOCR精度なんだ。10個なら十分な解像度でも、20個だと足りないかもしれないってことだね。" userName="HarHarVeryFunny" createdAt="2025/10/20 16:20:45" color="#785bff">}}




{{<matomeQuote body="チェスってさ、たった32個の駒とシンプルな動きなのに、ほぼ無限のゲーム展開ができるんだよな。3手目だけでも数十億の局面があるってすごいわ。" userName="davidguetta" createdAt="2025/10/23 22:11:30" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="中国語の文字って情報エントロピーは高いけど、全部独立してるから、LLMが5000字対応するなら5000字全部ルックアップテーブルに入れる必要あるんだって。語根とかないから分解できないし。ラテン語より少ない文字数で意味を表せても、LLMは多くのトークン埋め込みをアクティブにしなきゃいけないかもね。" userName="Werkzeug" createdAt="2025/10/21 11:32:47" color="#ff33a1">}}




{{<matomeQuote body="NVIDIA Spark（ARM64）でこれ動かす方法見つけたぞ！Claude Code を新しい Docker コンテナで root で動かして、Claude Code にやらせたんだ。やり方はここ見て→https://simonwillison.net/2025/Oct/20/deepseek-ocr-claude-co...<br>結果はこれ→https://github.com/simonw/research/blob/main/deepseek-ocr-nv...<br>テスト画像→https://static.simonwillison.net/static/2025/ft.jpeg" userName="simonw" createdAt="2025/10/20 17:41:49" color="#38d3d3">}}




{{<matomeQuote body="引用文のすぐ下の段落以外は、すごく上手くいったみたいだね。あそこだけはなんか適当な内容を生成して、次の列と繋げちゃってたけど。テスト、素早くやってくれてありがとう！" userName="jjcm" createdAt="2025/10/20 18:02:31" color="#785bff">}}




{{<matomeQuote body="俺が見た感じだと、ただ繋がってただけで、なんか適当な内容は無かったよ。”Code is a language” っていう引用文の上から、次の列の頭の”in a garden by name.”に飛んでて、肝心の鶏のところが抜けちゃってたね。" userName="djmips" createdAt="2025/10/20 20:47:01" color="">}}




{{<matomeQuote body="「Claude Code を新しい Docker コンテナで root で動かして」ってとこの、”root で”ってどうやったの？（記事に書いてあったらすまん）" userName="throwaway314155" createdAt="2025/10/20 18:06:55" color="">}}




{{<matomeQuote body="root アカウントで実行して、`IS_SANDBOX=1 claude --dangerously-skip-permissions` って打てばいいよ。" userName="simonw" createdAt="2025/10/20 18:42:25" color="#785bff">}}




{{<matomeQuote body="テキストの最初の「A」を見逃したのは、データセットにニュース記事があんまりなかったからかな、って理解できるけど、もっと面白いのはさ、「Hallucination is a risk and...」って文章全体と、筆者名の横にあった記事の「テーマ」と、最後のメールアドレスを全部見逃しちゃったことだよね。" userName="CaptainOfCoit" createdAt="2025/10/20 21:12:19" color="#ff5c5c">}}




{{<matomeQuote body="論文にAnna’s Archiveのこと、全然触れてないね。DeepSeekがAnna’s Archiveの中国語ノンフィクションコレクションをうまく使ったって言われても驚かないな。750万冊（350 TB）もあって、Library Genesisよりデカいんだぜ。詳しい話はここ見てみてよ。https://annas-archive.org/blog/duxiu-exclusive.html" userName="ellisd" createdAt="2025/10/20 08:22:00" color="#ff33a1">}}




{{<matomeQuote body="DeepSeekの前の論文では、Anna’s Archiveについてちゃんと書いてあるよ。<br>「Anna’s Archive（2024）から英語のEブック86万冊と中国語のEブック18万冊を、数百万のK-12教育試験問題と一緒にクリーンアップした」ってね。ここがその論文だよ。https://arxiv.org/abs/2403.05525 のDeepSeek-VL paper。" userName="bluecoconut" createdAt="2025/10/20 14:38:30" color="#785bff">}}




{{<matomeQuote body="なんで自分たちが持ってもない本のコピーに、他人がアクセスできるようにしなきゃいけないんだ？" userName="ikamm" createdAt="2025/10/20 11:48:19" color="">}}




{{<matomeQuote body="擁護するわけじゃないけど、どうやらデータセットを制限してるのは、OCRスキャンへのアクセスを共有する相手から得るためみたいだね。本のタイトルやタグだけじゃなく、内容も検索できるようにして、既存サービスを良くしようってことだ。ブログ記事にも「Anna’s Archiveがそれで何を得るかって？ ユーザー向けの本の全文検索だよ」って書いてある。" userName="JohnLocke4" createdAt="2025/10/20 12:39:30" color="#ff5733">}}




{{<matomeQuote body="なるほどね。でも、自分たちが権利を持ってない著作権物へのアクセスを制限するってことは、さらにデカい的にされてるようにしか見えないけどな。" userName="ikamm" createdAt="2025/10/20 14:15:56" color="">}}




{{<matomeQuote body="Duxiuの本って、昔から中国のネットでは海賊版が出回ってるんだよ。転売屋が1ドルもしないで売ってて、中国版Google Driveみたいなサービスで配られてる。そのサービスもよくハッキングされてストレージ増やされてるけどね。これってまさに「所有権ロンダリング」だよな。" userName="est" createdAt="2025/10/21 06:22:06" color="#45d325">}}




{{<matomeQuote body="ハハハ、俺もすぐにそう思ったよ。OCRされたデータセット、いつ公開されるんだろうね。" userName="throawayonthe" createdAt="2025/10/20 09:41:52" color="">}}




{{<matomeQuote body="そうだね、これじゃ彼らがデータセットを公開することなんて絶対ないってことだよね…。" userName="singularfutur" createdAt="2025/10/20 11:43:09" color="">}}




{{<matomeQuote body="マジかよ、これでAnna’s Archiveまでやられちゃうのか。学生や研究者が使うリポジトリを食い物にするクソみたいなLLMプロバイダーのせいでさ。METAがLibrary Genesisから70TBもトレントしただけでも十分じゃなかったのかよ。" userName="dev1ycan" createdAt="2025/10/20 13:13:01" color="">}}




{{<matomeQuote body="彼らは順調みたいだよ。ここ見てみて。https://open-slum.org" userName="sigmoid10" createdAt="2025/10/20 13:27:35" color="#ff33a1">}}




{{<matomeQuote body="おい、Metaが70TBをトレントで公開したかと思えば、すぐ他の人へのアクセスを遮断しやがった。その直後、ヤツらのヒットマン（米政府）がLibgenとZ-Libの両方を叩いたんだから、まさに謎だよな。" userName="dev1ycan" createdAt="2025/10/22 10:58:16" color="">}}




{{<matomeQuote body="これはAnna’s Archiveからの公式オファーみたいだね。だから、彼らは負荷を処理できて、リクエストに安全に応えられるはずだよ。" userName="c0balt" createdAt="2025/10/20 13:22:07" color="">}}




{{<matomeQuote body="この手のベンチマークの質に疑問があるみんなへ。<br>- OmniAIベンチマークは全然ダメ！<br>- OmniDocBench[1]をチェックするべきだよ。<br>- Mistral OCRは、ほとんどのOpen Source OCRモデルよりはるかに遅れてるし、Geminiと比べたらもっとひどい。<br>- End to End OCRはまだまだ超難しいんだ。<br>- レイアウト検出 → 読み取り順序 → 各要素のOCR、っていう複合パイプラインの方がうまくいくよ。<br>- 複雑なテーブル解析はまだめちゃくちゃ難しいね。<br>[1]: https://github.com/opendatalab/OmniDocBench" userName="breadislove" createdAt="2025/10/20 12:13:29" color="#785bff">}}




{{<matomeQuote body="誰かApple Vision Frameworkを他のとベンチマークしてくれたらいいのにな。ほとんどのAppleデバイスに組み込まれてるけど、みんな高速で高品質なOCRに使えるって知らないんだ。検索可能なPDFを作るのに僕がいつも使ってるみたいに、いくつか追加のステップを踏むこともできるんだよ。ベンチマークでどこに位置するのか、すごく気になるな。" userName="hakunin" createdAt="2025/10/20 13:24:54" color="#38d3d3">}}




{{<matomeQuote body="日本語みたいな縦書き言語には、あのOCRは使い物にならないゴミだね。全然機能しないんだ。" userName="wahnfrieden" createdAt="2025/10/20 13:39:17" color="#ff33a1">}}




{{<matomeQuote body="そうそう、手書き文字にもすぐ失敗するんだよな。" userName="thekid314" createdAt="2025/10/20 14:00:41" color="#ff5c5c">}}




{{<matomeQuote body="僕は主に英語のOCRをやるから、親コメントが言ってた日本語は問題ないけど、手書き文字は気になるんだ。ほら、こういう洞察ってめちゃくちゃ役に立つじゃん。もしこんなのを示すベンチマークがあったら最高なのにね。<br>僕の主な疑問はね、MacBook Pro M1 Max（64GB RAM）で、家に来るたくさんの郵便物や学業の書類（ほとんど英語）のOCR品質を最大化するために、どんな実用的なOCRツールを組み合わせられるかってことなんだ。<br>内蔵OCRツール付きのScanSnap Managerを使ってるけど、もう超時代遅れだろうな。Apple Visionの方がScanSnapよりずっと良いって聞くし、Tesseractよりも良いって言う人もいた。でも、僕のマシンでスクリプト環境で動かせる、もっと良い実用的なものはないかな？" userName="hakunin" createdAt="2025/10/20 15:14:22" color="#ff5733">}}




{{<matomeQuote body="LiveTextも？新しいエンジンを積んでるよ。" userName="wahnfrieden" createdAt="2025/10/20 19:25:17" color="">}}




{{<matomeQuote body="LiveTextに関する君のコメントはこれで2回目だね（これより古いのがこれ: https://news.ycombinator.com/item?id=43192141）。Ruby APIをこれらのフレームワーク向けに提供しようとしてるんだけど、偶然見つけたんだ。でもLiveTextに関する情報があまり見つからないんだけど？どのフレームワークの一部なの？リンクとか追加情報とかある？画面やカメラキャプチャ専用だっていう情報は見つけたんだけどな。" userName="hakunin" createdAt="2025/10/20 19:39:25" color="">}}




{{<matomeQuote body="VisionKitだよ。Swiftオンリーだから（新しいAPIの多くがそうだけど）ObjCブリッジにこだわってる人たちは見向きもしないんだ。バウンディングボックスは提供されないけど、テキストは取得できるよ。<br>https://developer.apple.com/documentation/visionkit/imageana..." userName="wahnfrieden" createdAt="2025/10/20 19:43:30" color="#ff5733">}}




{{<matomeQuote body="DeepSeek OCR、すごくいいね！試してみるよ。もし他にリソースがあったら教えてほしいな。Swift-onlyでも大丈夫、`@_cdecl`でブリッジ用のshimsを書いてるからさ（経験は少ないけど、AIに助けてもらいながら、きっとうまくいくはず！）。" userName="hakunin" createdAt="2025/10/20 20:08:31" color="#45d325">}}




{{<matomeQuote body="面白いね。どうやってその目的で使うの？個人的にはApple OCRもすごく良いと思ってるんだけどさ。" userName="graeme" createdAt="2025/10/20 16:05:51" color="">}}




{{<matomeQuote body="短く言うとOwlOCRみたいなツールだね。詳しく言うと、GitHubにApple Vision Frameworkを使ったツールがあるよ（僕が作ったスターリストはこれ: https://github.com/stars/maxim/lists/apple-vision-framework/）。FFIベースのRuby gemも作ろうとしてるんだ。" userName="hakunin" createdAt="2025/10/20 16:16:47" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Appleショートカットで画像にOCRをかけられるよ。「Extract Text from Image」ってのを探してみて。" userName="ah27182" createdAt="2025/10/21 07:49:56" color="#38d3d3">}}




{{<matomeQuote body="もしクロスプラットフォームだったらもっとみんな興味持つだろうけどさ、たった10%くらいのハードウェアでしか動かないものに、わざわざApple専用で時間を費やす気にはならないよね。" userName="CaptainOfCoit" createdAt="2025/10/20 13:40:14" color="">}}




{{<matomeQuote body="でもさ、OCRのためにAppleデバイスをスタックにデプロイするってことはできないの？オンデバイスが多くの人にとってハードウェアの限界なのはわかるけど、もしスタックにAppleデバイスがあるなら、それを利用できないの？" userName="ch1234" createdAt="2025/10/20 14:29:34" color="#45d325">}}




{{<matomeQuote body="うん、でもmacOSの管理ってインフラ容量が大変なんだよね。Appleはそれを望んでないから、ツールもほとんどないし。以前macOSビルダーが必要なCI/CDスタックを組んだけど、インフラとして管理するのがいつも一番面倒なマシンだったよ。" userName="CaptainOfCoit" createdAt="2025/10/20 15:55:14" color="#ff5733">}}




{{<matomeQuote body="AWSはさ、文字通りMacをEC2インスタンスとしてデプロイできるんだよ。AWSの普通のEBSストレージとかディスクイメージング機能も全部含まれてるはずだよ。" userName="coder543" createdAt="2025/10/20 16:38:30" color="#ff5c5c">}}




{{<matomeQuote body="わかった、簡単なことはできたとして、じゃあSSHとかリモートデスクトップに頼らずに、どうやって実際に管理して、動かし続けて、内部を調べるの？" userName="CaptainOfCoit" createdAt="2025/10/20 17:04:09" color="#ff33a1">}}




{{<matomeQuote body="どんなEC2インスタンスを“SSHに頼らずに”管理するの？Linux EC2インスタンスだって、Ansibleみたいなツールが正解だけど、それらも裏ではSSHを使ってるよ。" userName="coder543" createdAt="2025/10/20 17:06:05" color="">}}




{{<matomeQuote body="通常、イメージ経由でプロビジョニングするよね。それからインストールしたり直接ブートしたりする。LinuxやWindows、稀にmacOSで動くインフラソフトウェアは山ほどあるし。" userName="CaptainOfCoit" createdAt="2025/10/20 18:18:14" color="">}}




{{<matomeQuote body="Mac用EBSのイメージング機能は簡単だって言って却下したのに、今度はそれがメインだって？よかったね！AnsibleとかのツールでmacOSも管理できるし。この議論、生産性ないな。あなたは先入観があって、問題もGoogle検索もしてないでしょ。AWSでMacフリートを管理するのは問題じゃないよ。AppleのOCRが他より優れてるなら簡単に使えるはず。ベンチマークが見たいな、他の人も言ってたけど。" userName="coder543" createdAt="2025/10/20 18:22:21" color="#785bff">}}




{{<matomeQuote body="ハードウェアの10%って、めちゃくちゃ多いんじゃないの？" userName="hakunin" createdAt="2025/10/20 15:05:09" color="">}}




{{<matomeQuote body="だって、他の90%より90%も少ないんだから、全体数は大きくても相対的にユーザーベースは小さいでしょ。" userName="CaptainOfCoit" createdAt="2025/10/20 15:55:43" color="">}}




{{<matomeQuote body="10%って、たとえ10個中1個でも相対的に小さいとは言えないと思うよ。ましてや何十億ものデバイスがあったらね。『10は90より小さいから俺が正しい』って言うのは詭弁でしょ。俺が言いたいのは、どんな比較ベンチマークでも『たった10%だから誰が気にするんだ』って理由で除外するなんてありえないってこと。Apple Vision FrameworkがOCRの選択肢としてまだあまり知られてないのが問題なんじゃないかな。でも変わりつつあるのかも。しかも皮肉なことに、Appleのフレームワークはベンチマークにあるツールのほとんどより、実際に世の中で使われてるはずだよ。" userName="hakunin" createdAt="2025/10/20 16:09:08" color="#ff5733">}}




{{<matomeQuote body="最初の要望はもっと多くの人がApple Vision Frameworkに注目してほしいってことだったけど、俺は単に、ほとんどの人がAppleハードウェアを持ってないから、Apple製品でしか動かないAppleテクノロジーを避けてるって言ってるだけだよ。だから、使う人が少ないから除外すべきだと言ってるわけじゃなくて、ほとんどの人が使いたくても使えないから、多くの人が気にしないし忘れられるのも無理はないってことを伝えたかったんだ。それに対してDeepSeek OCRみたいなのは主要な3つのOSのどれでもデプロイできるから、もちろんもっと注目されるし、多くのベンチマークに含まれるんだ。" userName="CaptainOfCoit" createdAt="2025/10/20 16:24:01" color="#45d325">}}




{{<matomeQuote body="言ってることはわかるけど、考え方には同意できないな。そのロジックだと、ベンチマークはLLMも入れないってことになるでしょ。LLMだって高価なハードウェアが必要なんだから。実際、Vision FrameworkはiPhoneでも動くし、LLMより安く動かせる人はもっと多いんじゃないかな。『たぶんみんなAppleが好きじゃないだけだよ』って言うなら、もっと納得できるけどね。" userName="hakunin" createdAt="2025/10/20 16:49:43" color="#ff33a1">}}




{{<matomeQuote body="＞OmniAIベンチマークはダメだ。Omni OCRベンチマークによると、Omni OCRが最高のOCRらしいよ。みんなこれに異議はないでしょ。" userName="cheema33" createdAt="2025/10/20 19:14:00" color="">}}




{{<matomeQuote body="このモデル（DeepSeek-OCR）は、書かれた言語や人間が読むという行為について、僕たちが知っていることと特によく合致するね。脳の左側にあるVisual Word Form Area (VWFA)は、単語の視覚表現が、生物にとってより意味のあるものに変換される場所だよ（https://en.wikipedia.org/wiki/Visual_word_form_area）。DeepSeek-OCRのエンコーディングは、VWFAで起こることと似ているようだね。このモデルは、テキストベースのLLMよりも強力なだけでなく、言語がどう機能するのか、ひいては僕たちがどう考えるのか、知性とは正確に何なのかについての無知の幕を開けてくれるかもしれない。著者たち、Haoran Wei、Yaofeng Sun、Yukun Liに称賛を送るよ。君たちは知性そのもののロゼッタストーンにつまずいたのかもしれない！ブラボー！" userName="giardini" createdAt="2025/10/27 00:40:20" color="#ff33a1">}}




{{<matomeQuote body="LLMアプローチのOCRって、Azure AI Document Intelligence（https://learn.microsoft.com/en-us/azure/ai-services/document...）とかGoogleのVision API（https://cloud.google.com/vision?hl=en）と比べてどうなの？" userName="yoran" createdAt="2025/10/20 07:22:14" color="#45d325">}}




{{<matomeQuote body="OmniAIがLLMとクラウドOCRサービスのベンチマークを持ってるよ。LLMは2月以降もどんどん進化してるから、特にQwen3-VLファミリー、中でもQwen3-VL-235B-A22B-Instructはうちのユースケースでかなり良い結果を出してるんだって。ベンチマークの詳細はここね。https://getomni.ai/blog/ocr-benchmark" userName="ozgune" createdAt="2025/10/20 07:52:08" color="#ff5733">}}




{{<matomeQuote body="Omni OCRチームが自分たちのベンチマークで、最高のOCRはOmni OCRだって言ってるよ。これには結構びっくりしたな。" userName="cheema33" createdAt="2025/10/20 19:11:27" color="">}}




{{<matomeQuote body="Magistral-Small-2509もそのサイズにしてはかなり優秀だよ。推論とマルチモダリティ機能があって、文脈がすぐにはっきりしない場合や、一部情報が欠けてる場合に役立つんだ。" userName="CaptainOfCoit" createdAt="2025/10/20 11:34:44" color="#ff5733">}}




{{<matomeQuote body="俺の基本的な予想では、やっぱり実際の文書だとプロプライエタリなOCRモデルが勝ち続けると思うんだ。たぶん彼らがたくさんの良い非公開学習データを持ってるからだろうね。公開モデルはarXivとか電子書籍で学習してるから、一般的なビジネス文書には必ずしも適用できないんだ。でもLLMは文字の誤変換を避けるのは得意だけど、ページ全体の一貫性では劣るんだよ。OCRじゃないLLMみたいに、完全に話が逸れることもあるからね。" userName="daemonologist" createdAt="2025/10/20 14:11:21" color="#ff5c5c">}}




{{<matomeQuote body="従来のOCRは、CJK言語で似たような文字が多すぎるせいで、顕微鏡で見ないと区別できないような変な誤変換をすることがあるよね。LLMはもっと正しい文字の並び方を守るから、精度が良いはずだよ。あるいは、そういう問題があるからこそLLMでOCRを再実装する動機になるだろうね。" userName="numpad0" createdAt="2025/10/20 10:17:59" color="#45d325">}}




{{<matomeQuote body="へぇ…よくあるOCRの間違いを修正するようなエラーチェックモデルがあったら動くかな？それって比較的簡単そうだけど。" userName="fluoridation" createdAt="2025/10/20 13:57:39" color="">}}




{{<matomeQuote body="それ、思ったより難しいんだよ。「hallo」を「hello」に修正するって言っても、間違いを直してるのか、逆に間違いを増やしてるのか分からない場合があるからね。強力に修正しようとすればするほど、意図しないエラーも増えちゃうんだ。文脈で判断するのは役立つけど、根本的な解決にはならない。軽い修正は効果的だけど、完全な解決策にはならないんだ。この問題を完全に解決するには、ドキュメント全体を一度に見て最大限の文脈を得る必要があって、これが非伝統的なOCRがやろうとしてることなんだよ。" userName="colonCapitalDee" createdAt="2025/10/20 17:21:20" color="#45d325">}}




{{<matomeQuote body="分かるけど、もっと修正しやすい一般的なエラーもたくさんあるでしょ？「He11o」とか「Emest Herningway」とか、前の人が言ってたような間違った発音記号とかさ。" userName="fluoridation" createdAt="2025/10/20 17:28:13" color="">}}




{{<matomeQuote body="他とどう比較されるかは分からないけど、Azure AI Document Intelligenceでいくつか試したら、その良さにすごく驚いたんだ。ひどい写真で傾いてる文書でも、顧客の手書きの署名を検出して、そこから名前を抽出できたのは予想外だったよ。" userName="junto" createdAt="2025/10/22 12:00:13" color="#ff33a1">}}




{{<matomeQuote body="他のことは分からないけど、うちはAzure AI Document Intelligenceを使ってて、履歴書解析システムでうまく機能してるよ。結構調整は必要だったけど、もう1年近く触ってないくらい安定してるんだ。" userName="stopyellingatme" createdAt="2025/10/20 18:24:03" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
