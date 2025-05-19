+++
date = '2025-05-12T00:00:00'
months = '2025/05'
draft = false
title = 'Embeddingsは実はすごい 意外と知られてないその価値とは (2024)'
tags = ["AI", "自然言語処理", "機械学習", "技術文書", "テクノロジー"]
featureimage = 'thumbnails/green1.jpg'
+++

> Embeddingsは実はすごい 意外と知られてないその価値とは (2024)

引用元：[https://news.ycombinator.com/item?id=43963868](https://news.ycombinator.com/item?id=43963868)




{{<matomeQuote body="この記事書いた本人だよ。読んでくれてありがとう！<br>この投稿は6ヶ月前にもNews.YCombinator.Comで話題になったんだ。<br>https://news.ycombinator.com/item?id=42013762<br>「Embeddingsは過小評価されてる」って言ったのは、僕らTechnical Writers（TWs）の仲間が、TWのツールボックスにある超便利な新しいツールにもっと注目すべきだ、って意味だったんだ。MLの専門家には、 Embeddings が全然”過小評価されてない”って分かってるよ。だから、彼らにとっては変な発言に聞こえるよね。<br>この記事が、TWで Embeddings を具体的にどう使ってるかって詳細が少ないのは分かってる。いくつかプロジェクトや他のブログ投稿を準備中なんだ。手短に言うと、 Embeddings が重要なのは、TWの3つの難題、Technicalwriting.dev/strategy/challenges.html で挙げてる課題を解決するのに役立つからだよ。" userName="kaycebasques" createdAt="2025/05/12 15:41:54" color="#38d3d3">}}




{{<matomeQuote body="Tech Writersにもっと響くようにして、MLの専門家向けじゃなくしたらどうかな。狙ってる読者層にもっと広まると思うよ。例えば、「以前は不可能だった規模でテキスト間の関連性を見つけ出す能力」みたいなところをもっと掘り下げるとか。応用例のセクションはあるけど、見落としやすいんだ。Tech Writersにとっての価値を、具体例と一緒に最初に持ってきた方がいいよ。" userName="theletterf" createdAt="2025/05/12 17:19:31" color="#38d3d3">}}




{{<matomeQuote body="うん、フォローアップの投稿やプロジェクトで、TWでEmbeddingsを具体的にどう活用するかってのをちゃんと見せないとだめだね。例（どんな形でも）は教えるツールとして本当に魔法みたいに効果があるんだ。" userName="kaycebasques" createdAt="2025/05/12 18:52:07" color="#ff33a1">}}




{{<matomeQuote body="＞ 記事が、TWで Embeddings を具体的にどう使ってるかって詳細が少ないのは分かってる。<br>それよりさらに重要なのは、最初の6～8段落を読んでも、「embedding」って何なのか全然分からないってことだよ。3段落目には<br>＞ Embeddings の使い方と仕組みの概要だよ。<br>って書いてあるのに、それが何かって説明は（記事のずっと奥に埋もれてなければ）全くないね。" userName="sgbeal" createdAt="2025/05/12 17:07:18" color="#ff33a1">}}




{{<matomeQuote body=" Embeddings を初めて学ぶTechnical Writersの仲間には、形式的な概念を急に導入するとちょっと圧倒されるかなって心配したんだけど、投稿で質問の答えを待たされすぎるのもイライラするってことも分かってるんだ。だから、最初に簡単な答えを出す方法を見つけるよ。フィードバックありがとう。" userName="kaycebasques" createdAt="2025/05/12 18:42:50" color="#45d325">}}




{{<matomeQuote body="Word embeddingっていうのは、単語をたくさんの数字で表現したもので、それぞれの数字が単語の何らかの特性を表してるんだ。普通、それらの特性が何かっていうのは分からないんだ。だって、その数字は大量のテキストを処理する間にモデルが学習するからね。" userName="kadushka" createdAt="2025/05/12 20:58:18" color="#785bff">}}




{{<matomeQuote body="＞ Discoveryness。必要なコンテンツが存在しても、ユーザーが見つけられる保証は難しい。<br> Embeddingsに僕が適用した、公開用のUXレイヤーについてどう思うか気になるな。「Semantic scrolling」って呼んでるんだけど、正確には検索じゃなくて、summaryとdetailsをツリーとして使ってクラスタ内を移動するものなんだ。<br>[1]は一つの開始点（アニメーションの矢印を押すと「wiki-hole」できるよ）。<br>[2]はコレクション全体（本、映画、音楽、アニメなど）だよ。<br>[1] - https://www.sharecommonbase.com/synthesize/1009?id=1009<br>[2] - https://www.sharecommonbase.com/" userName="_bramses" createdAt="2025/05/12 21:47:12" color="#ff33a1">}}




{{<matomeQuote body="なるほど。Semantic scrollingのアイデアはなんとなく理解できたけど、サイトで実際に動いてるのを見るのがちょっと難しいな。特定のトピックの専門家になりたい場合で、関連するたくさんのアイデアをじっくり見て、思いがけない新しい発見の可能性を作りたい、みたいなケースでは役立つと思う。Technical documentationに関しては、たいていの人はできるだけ早く特定の情報を見つけて、自分の作業に戻りたいから、semantic scrollingはほとんどのドキュメントサイトにはあまり合わないと思うな。つまり、必要な情報を見つけるためにsemantic scrollingする忍耐力はないだろうね。" userName="kaycebasques" createdAt="2025/05/13 00:52:31" color="">}}




{{<matomeQuote body="細かいことだけど、これは入門記事だってのは理解してるけど、ちょっと”入門すぎ”ると思うんだ。次を読みたいと思わせる Embeddings の「killer app」のプレビューくらいは出すべきだよ。記事全体を読んだけど、前は知らなかった何か役に立つことや洞察を得た気はしないんだ。出し惜しみしすぎだと感じたけど、シェアしてくれてありがとう、感謝してるよ。" userName="luckydata" createdAt="2025/05/12 17:53:18" color="#785bff">}}




{{<matomeQuote body="うん、確かにスタンドアロンの投稿としては、漠然としすぎてて具体的な応用例が示されてないから説得力がないのは完全に理解できるよ。言い訳になるけど、これはスタンドアロンの投稿にするつもりは全然なかったんだ。Embeddings をTechnical Writingでどう応用するかを探求するフォローアップ投稿やプロジェクトで補完される、概念的な入門編にするつもりだったんだ。幸い、この投稿への注目が再び集まったことで、フォローアップのコンテンツをちゃんと出すモチベーションになることを願ってるよ ;)" userName="kaycebasques" createdAt="2025/05/12 18:50:01" color="#ff33a1">}}




{{<matomeQuote body="あと、テクニカルライティングにおけるembeddingsの直接的な応用については、このリンクも見てみてね -＞ https://www.tdcommons.org/dpubs_series/8057/" userName="kaycebasques" createdAt="2025/05/12 19:49:28" color="#ff5c5c">}}




{{<matomeQuote body="記事書いてくれてありがとね！<br>結果の質はどうだったか気になるな〜？ ML界隈の人は評価大好きだけど、”感覚”で見て結果は妥当に見えた？" userName="rybosome" createdAt="2025/05/12 16:12:16" color="">}}




{{<matomeQuote body="”結果”っていうのは関連ページ実験のことかな？ 結果はかなり有望だったよ。<br>算出された関連ページの多くはめちゃくちゃ妥当だった。例えば、https://www.sphinx-doc.org/en/master/development/html_themes... 読んでたら、https://www.sphinx-doc.org/en/master/usage/theming.html にも興味あるだろうなって推測できるのはめっちゃ妥当だよね。" userName="kaycebasques" createdAt="2025/05/12 18:45:36" color="#785bff">}}




{{<matomeQuote body="embeddingsとembedding searchのもう一つ超クールな特徴は、リソースがめちゃ安くてクライアントサイドでも実行できること。<br>ONNXモデルはtransformer.jsで読み込んで実行できるよ（https://github.com/huggingface/transformers.js/）。<br>hnswみたいなembeddingsのインデックスもビルドして静的にホストできちゃう。<br>これのちょっとしたオープンソースデモをここで公開してる -＞ https://jasonjmcghee.github.io/portable-hnsw/ （プロトタイプだけど）<br>要するに、インデックスをクエリ可能なparquetファイルとして表現して、duckdbでクエリする感じ。<br>Github Pages使ったからタダだったよ。cloudflareのR2なら保存したサイズ分だけ（超安い）。" userName="jasonjmcghee" createdAt="2025/05/12 16:36:43" color="#ff5c5c">}}




{{<matomeQuote body="へ〜、クライアントサイドでJS動かすembeddingsは知らなかったわ。これドキュメントサイトにはめっちゃ応用効きそう。情報共有サンキュ！<br>ParquetとPolarsは、この記事読んでて前から気になってたんだよね -＞ https://minimaxir.com/2025/02/embeddings-parquet/" userName="kaycebasques" createdAt="2025/05/12 18:54:15" color="">}}




{{<matomeQuote body="記事めっちゃいいね！" userName="jasonjmcghee" createdAt="2025/05/13 01:41:14" color="">}}




{{<matomeQuote body="これについて考えてたんだ。自分のアプリにembeddingベースの検索を足すのをためらってたのは、Embedding APIプロバイダーへのレイテンシが嫌だったからなんだよね。 embeddingsなしで何かレンダリングして、非同期でembedding実行して、結果が来たらリストを更新するのも嫌なんだ。UX的に賢くやるの難しそう。<br>ローカルでレンダリングするにはモデルへのアクセスが必要だよね？ OpenAIとかGoogleとかのより、ローカルモデルのembeddingsの質がどのくらいになるか気になるな〜。無料／即時ってのはマジで魅力的だけどね。" userName="qq99" createdAt="2025/05/12 16:50:06" color="#45d325">}}




{{<matomeQuote body="MTEB見てみて（https://huggingface.co/spaces/mteb/leaderboard）<br>オープンソースのやつの中には、実は”もっと良い”のもいっぱいあるんだよ。<br>特にnomic, bge, gte, それにall-MiniLM-L6-v2で良い経験してる。<br>全部数百MB（all-MiniLMは87MBだけどね）。" userName="jasonjmcghee" createdAt="2025/05/12 16:55:18" color="#785bff">}}




{{<matomeQuote body="all-MiniLM-L6-v2大好き！ 87MBってめちゃ小さいから、小さいVM上のウェブアプリプロセスでRAMに載せられるくらいだよね。<br>自分の実験だと、多くの目的にはGood Enoughな結果が出るよ -＞ https://simonwillison.net/2023/Sep/4/llm-embeddings/#embeddi..." userName="simonw" createdAt="2025/05/12 17:26:46" color="#ff5733">}}




{{<matomeQuote body="87MBでも、やっぱ結構大きいよね。<br>HNでみんなが10-50MBの画像を読み込むサイトに呆れてたコメントとか思い出してみてよ。<br>ブラウザベンダーが、モデルを一度ダウンロードしたら、それを要求するどのウェブサイトでも再利用できる安全な方法を考え出してくれるといいな。<br>ChromeがAIイニシアティブやってるのは知ってるけど、この特定の問題についてのドキュメントは見てないな -＞ https://developer.chrome.com/docs/ai" userName="kaycebasques" createdAt="2025/05/13 01:02:47" color="#ff33a1">}}




{{<matomeQuote body="ChromeにEmbeddingモデルが搭載されてるってマジかよ、でもユーザーや開発者には使えないらしいけどね（俺が知る限り）<br>https://dejan.ai/blog/chromes-new-embedding-model/" userName="jasonjmcghee" createdAt="2025/05/13 01:47:25" color="#ff5c5c">}}




{{<matomeQuote body="個人的には嫌いなんだよね、コンテキスト長がめっちゃ短くて、ツイートくらいのサイズになると黙ってテキストを切り捨てるんだ。GitHubでこのことについてずっと主張してるんだけど、誰も知らなさそうなんだよね。今俺が使ってるのはollamaのsnowflake-arctic-embed2だよ。" userName="Ey7NFZ3P0nzAe" createdAt="2025/05/13 08:02:15" color="#38d3d3">}}




{{<matomeQuote body="何が起きてるのか詳しく説明してくんない？結果が全然理解できないんだけどさ。" userName="rrr_oh_man" createdAt="2025/05/12 19:45:09" color="">}}




{{<matomeQuote body="「雰囲気」で検索して似たテキストを見つけられるのがEmbedding検索だよ。例えば”怖いんだ”とか”速く走ってる”とかね。結果は意味的に似てるよ。これは階層的ナビゲーション可能なスモールワールドを使ってて、テキストをチャンク化してEmbedding化・インデックス化してるんだ。<br>インデックスはparquetファイルに分割してCDN配信・クライアント検索を可能にしてるよ。（ベクターDBは不要）" userName="jasonjmcghee" createdAt="2025/05/13 00:41:57" color="#ff33a1">}}




{{<matomeQuote body="記事の「同じ量の数値で比較できる」って点について、ハッシュ関数もそうだけどEmbedding比較とは全然意味が違うって説明が必要だと思うよ。Embeddingは学習に依存するから、比較の質は学習方法で変わるんだ。”ユニバーサルなEmbedding”なんて無くて、任意のテキストを意味のある比較できるわけじゃないって点を強調してね。" userName="ubj" createdAt="2025/05/12 17:23:52" color="#45d325">}}




{{<matomeQuote body="フィードバックありがとう。これらのモデル（例えばGeckoとかNV-Embed、Gemini Embeddingとか）がどう作られてるかの研究論文を読んでて、君が言ってることの要点が掴めてきたよ。この点でもっと記事を正確にする方法を見つけるつもりだよ。" userName="kaycebasques" createdAt="2025/05/12 19:23:25" color="#ff5733">}}




{{<matomeQuote body="Embeddingがハッシュのようなものなら、それを”クラッキング”（Embeddingからテキスト逆生成）する研究はあるのかな？LLMで次のトークン選びにEmbedding類似度を使うとか。<br>著者の例みたいに、テキスト全体でセマンティック代数、「フレンドリーさ」の概念を文章に”足す”とか、そういうことができたらすごくない？" userName="jas8425" createdAt="2025/05/12 17:44:34" color="#785bff">}}




{{<matomeQuote body="”Embeddingから始めて意味的に近いテキストを逆生成することさ？”<br>どうやらこれはembedding inversionって呼ばれてるらしいよ。Universal Zero-shot Embedding Inversionっていう関連論文もあるよ。<br>変化させながらターゲットに段階的に近づいていくのが一番一般的な方法みたいだけど、もっと最適な方法もたくさんあるらしい。CLIP embeddingsを使った画像拡散とかもちょっと関連してるね。" userName="luke-stanley" createdAt="2025/05/12 18:01:16" color="#38d3d3">}}




{{<matomeQuote body="言いたかったのはね、どうやらこれは”embedding inversion”って呼ばれてるらしいってこと、そして”Universal Zero-shot Embedding Inversion”っていうのが関連論文で基本をたくさんカバーしてるってこと。<br>最近知ったんだけど、ArXiv LabsのArXiv RAG agentっていうのが、研究について調べたい人にとってすごくクールな方法なんだ。<br>https://www.alphaxiv.org/assistant<br>前に”inversion”には偶然出会ったことはあったけど、AlphaXiv Assistantが”embedding inversion”を教えてくれたんだよ。" userName="luke-stanley" createdAt="2025/05/14 11:30:09" color="#45d325">}}




{{<matomeQuote body="この分野の専門家じゃないけど、どうやらこの研究はあるみたいだね。inference-time intervention [1]、[2]って呼ばれてるよ。<br>[1] ”Steering Language Models With Activation Engineering”, 2023, https://arxiv.org/abs/2308.10248<br>[2] ”Multi-Attribute Steering of Language Models via Targeted Intervention”, 2025, https://arxiv.org/pdf/2502.12446" userName="smokel" createdAt="2025/05/12 18:09:46" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="hashはデータをユニークで衝突しにくい単一出力に変換するものだよ．意味を壊すんだ．これ，Embeddingsがやってることとは真逆なんだよね．Embeddingsはデータを意味を持つ多次元空間に展開するものだよ．hashは意味と構造を壊すけど，Embeddingsは意味と構造を作る感じかな．" userName="quantadev" createdAt="2025/05/12 18:49:04" color="#ff33a1">}}




{{<matomeQuote body="hash functionってのは一般的に，入力を固定長の出力にマッピングするだけの関数なんだよ．だからEmbeddingsもhash functionsなんだ．君はたぶん，衝突回避が重要なcryptographic hashesのこと考えてるんでしょ．でもそれは本質じゃないんだ．例えば，特定のタイプの衝突が奨励されるLocality Sensitive Hashingだってあるんだから．" userName="nighthawk454" createdAt="2025/05/12 19:22:53" color="#ff5c5c">}}




{{<matomeQuote body="うん，衝突を意図したhash functionもあるのは知ってるよ．僕が衝突しにくさについて話したときはstrong hashesのことだけど，”hash”って言うときは強いのも弱いのも全部含めてる．弱いhash algosの存在はSemantic vectorsがhashesだっていう君の主張をむしろ否定する方向だね．弱いhashは有限の少ないbuckets，Semantic vectorsは高次元の無限の連続体．全然違うんだよ．" userName="quantadev" createdAt="2025/05/12 21:20:08" color="#45d325">}}




{{<matomeQuote body="定義をどう捉えるかによるけど，Wikipediaの定義（可変長→固定長マッピング）だとほとんどのembedding networksはhashに入るね．hashは1次元，離散値，不可逆とか思われがちだけど，Embeddingsはsemantic structureを持つ．性質は違うけど，固定サイズ空間へのマッピングって意味では似てるかも．SimHashやLSHはランダム射影を使って出力ベクトル作るんだけど，これってNNの射影層と似てるし，torch.nn.Embeddingクラスみたいだよね．出力の量子化とかは最適化であって本質じゃないと思うよ．" userName="nighthawk454" createdAt="2025/05/12 21:59:57" color="#785bff">}}




{{<matomeQuote body="Hashingは意味や構造を破壊するものだよ．Semantic Vectorsはそれらを創造するものだね．唯一の共通点は，両方がドメインをマッピングするアルゴリズムだってことだけ．君の論理だと「出力ドメインが入力より小さければ全てhash」になっちゃうけど，それはおかしいし，Semantic Vectorsはむしろhashの逆をやってるんだ．" userName="quantadev" createdAt="2025/05/12 22:44:05" color="">}}




{{<matomeQuote body="いや，hashは固定長のコードにマッピングするだけだよ．それだけなんだ．出力サイズが入力より小さくなくてもいい．例えば10000個のトークンを受け取って1500次元の固定長ベクトルを返すなら，それはhash functionの一種だよ．＞ hash functionとは，任意のサイズのデータを固定サイズのコード値にマッピングするために使用できるあらゆる関数である．" userName="nighthawk454" createdAt="2025/05/13 02:14:55" color="#785bff">}}




{{<matomeQuote body="あのさ，entropyで見ても全然違うよ．良いhash algoはノイズ（high entropy）を出すけど，semantic vectorは構造（low entropy）を出すんだ．どんな基準で比べても，この二つの概念はこれ以上ないほど離れてるよ．君がどれだけ頑張っても，これ以上遠い二つの概念なんて見つけられないと思うな．" userName="quantadev" createdAt="2025/05/13 03:25:23" color="">}}




{{<matomeQuote body="正直，君はもう定義を無視してると思う．”良いhash algo”がノイズ出すって話はcryptographic hashだけだよ．他のhashもあるんだから．”semantic vectors”が類似性を保つのは，数学的にはLSHとかと変わらないんだよ（モデルがすごく使えるって点を除けばね）．MD5がLLMじゃないって言うならいいけど，そうじゃないなら定義に立ち戻って話し合おうよ．" userName="nighthawk454" createdAt="2025/05/13 07:51:56" color="#ff5733">}}




{{<matomeQuote body="あー，君の主張理解したよ．要するに，長い入力から有限の出力を出す関数は全部hashだって考えてるんだね．だとすると，LLMの”inference”も君のロジックだとhashingになっちゃうね．長いトークンから次を予測するのもhashってことか．分かったよ．ありがとう．" userName="quantadev" createdAt="2025/05/13 15:22:09" color="">}}




{{<matomeQuote body="Embeddingのセマンティック代数のアイデアに基づいたフォローアップの質問なんだけどさ。もしEmbeddingからセマンティックに似たテキストを生成できるなら、”テキストの長さ”もEmbeddingが捉えるプロパティの一つってことになるの？" userName="kaycebasques" createdAt="2025/05/13 01:13:38" color="">}}




{{<matomeQuote body="たぶん違うと思うよ、95％くらいね。少なくとも、どんな概念の本質が”テキストの長さ”に関係するかどうかについてはね。理論的には、Embeddingは本のEmbeddingだろうがツイートのEmbeddingだろうが、同じくらい簡単に足したり引いたりできるはずだよ。もちろん、前者の方が計算はたくさん必要だけどね。" userName="jas8425" createdAt="2025/05/13 15:29:08" color="">}}




{{<matomeQuote body="記事の「technical writingへの応用例は自分で考えろ」って部分、強気すぎない？<br>”良い”technical writingにはthesis statementいらないってこと？<br>なんでこれがtechnical writingにusefulなの？確かに類似ページは作れるだろうけど、そんなの読んだり書いたりする時に欲しいと思ったことないんだけど。" userName="bawolff" createdAt="2025/05/12 17:25:17" color="">}}




{{<matomeQuote body="”良い”technical writingにthesis statementいらないって？thesisは記事の2番目のパラグラフにあるよ。<br>ただ具体的な例がないからineffectiveだっていうのはfairだね。もともとstandalone postになるつもりじゃなかったんだ。<br>なぜこれがtechnical writingにusefulかって？vagueだけどtechnical writingの3つのintractable challengesのprogressに役立つんだ。（リンク）見てね。" userName="kaycebasques" createdAt="2025/05/12 19:09:39" color="#ff33a1">}}




{{<matomeQuote body="technical documentationはgreatなsearchがすごく大事。Embeddingsはより良いsearchにすごくusefulなツールだよ。”fuzzy” matchesもhandleできるから、ユーザーが名前を覚えてなくても探せるんだ。<br>keyword searchとvector similarity searchを混ぜるhybrid approachもimplementできる。良いexamplesがあればな！" userName="simonw" createdAt="2025/05/12 17:33:17" color="#ff5733">}}




{{<matomeQuote body="In-site searchは超importantだよ。多くのdocs maintainersはそれがどれだけheavilyに使われてるか realizeしてない気がする。多くのdocs sitesはin-site search queriesすらtrackしてない！<br>Sphinxについて私がloveなことの一つは、decentなclient-sideのJS-powered offline searchがあることなんだ。最近、search-as-you-typeにするworkflowをhack togetherしたよ（リンク1）。jasonjmcghee’s comment（リンク2）で、transformer.js embeddingsでそれをaugmentできないかponderしてるんだ。" userName="kaycebasques" createdAt="2025/05/12 20:12:45" color="#785bff">}}




{{<matomeQuote body="記事の「次元」と「方向」の使い分けについてnitpick。genderのnotionはdimensionではなくdirectionで捉えられるべき。<br>次元と方向はLinkedだけど、数学的には高次元空間ではorthogonalな次元の数は指数関数的に増える。だから1000次元でもbillionsのconceptをfitできるんだ。" userName="tyho" createdAt="2025/05/12 15:51:31" color="#ff5c5c">}}




{{<matomeQuote body="word embeddingはgendered wordsの分類とか苦手だよ。transformer embeddingはword vectorsよりずっと優れてる、contextを考慮できるからね。<br>searchではsynonymsはmixed bagだけど、modern embeddingはcontext見てirrelevantな意味をsuppressできる。これはIR研究者が長年頑張ってきたことだ。" userName="PaulHoule" createdAt="2025/05/12 16:15:19" color="#ff5c5c">}}




{{<matomeQuote body="前コメントの”nit”ありがとう、すごくmakes senseだね。modelがgenderにmapするdimensionがあるって記述について、書くとき私も何かoffだと思ってたんだ。conceptsとdimensionsの間に1-to-1 correspondenceがあるはずないよね。<br>君のcommentでcosine similarityの理解も深まったよ。（リンク）見てね。<br>postをupdateしてinaccuracyをcorrectするつもりだよ、conceptual modelをimprovingしてくれてありがとう。" userName="kaycebasques" createdAt="2025/05/12 16:01:44" color="#ff33a1">}}




{{<matomeQuote body="It’s not at all a nitだよ。もしdimensionsの一つがindeed genderに対応していたら、”king”と”queen”はpretty much only one dimensionでdifferしたのを見つけられるかもしれない。More generally、もしこれらのdimensionsが個別にhuman-meaningful conceptsをreferしているなら、pretty much only one dimensionに沿ってdifferするwordsを見るだけで、これらのconceptsが何かfind outできるよ。" userName="gweinberg" createdAt="2025/05/12 17:04:10" color="">}}




{{<matomeQuote body="目では見えないけど、ユークリッド距離は計算できるんだよね．Tools like UMAPで次元を下げることもできるよ．" userName="osigurdson" createdAt="2025/05/12 16:19:01" color="#785bff">}}




{{<matomeQuote body="That’s the layman intuitionだけど、実際のモデルは意外な結果を出すことがあるよ．cleverなLLM promptingでこの仮説を試せるね．俺がやったら”king”に対して”male monarch”が出たけど、”queen”に対しては”British ruler”だった．Oops！" userName="otabdeveloper4" createdAt="2025/05/12 17:52:00" color="#45d325">}}




{{<matomeQuote body="＞you find that the number of nearly orthogonal dimensions within n dimensional space is exponential with regards to n．micro nitだけどさ（micro nit！） Is it meant to be ”a number of nearly orthogonal directions within n dimensional space”？ Otherwise n dimensional space will have just n dimensions．" userName="rdtsc" createdAt="2025/05/12 20:33:40" color="#785bff">}}




{{<matomeQuote body="元記事の＞there are a lot of dimensions involved and with 50 dimensions to play with you can always find a projection that makes the 20 points fall exactly where you want them fall．って話はわかるけど、GloVeのhttps://nlp.stanford.edu/projects/glove/images/man_woman.jpgみたいに単語が線形分離できない例もあるよ．あれは線で分けられることじゃなくて、性別みたいな関係性がベクトル差の決まった方向になることを見せてるんだと思う．だからGloVeのグラフが非現実的ってのは違うんじゃないかな．" userName="yorwba" createdAt="2025/05/12 17:50:20" color="#785bff">}}




{{<matomeQuote body="I’m sorry，I don’t get your point at all，and have no idea what you mean by ”did this”． If you asked for an embedding，you would have gotten a 768 （or whatever） dimensional array right？" userName="gweinberg" createdAt="2025/05/12 19:50:33" color="">}}




{{<matomeQuote body="Don’t the high end embedding services use a transformer with attention to compute embeddings？ If so，I thought that would indeed capture the semantic meaning quite well，including the trait-is-described-by-direction-vector．" userName="manmal" createdAt="2025/05/12 17:47:18" color="#ff5733">}}




{{<matomeQuote body="Wait，but if gender was composed of say two dimensions，then there’d be no way to distinguish between ”the gender is different” and ”the components represented by each of those dimensions are individually different”，right？" userName="daxfohl" createdAt="2025/05/12 16:39:02" color="">}}




{{<matomeQuote body="＞Machine learning (ML) has the potential to advance the state of the art in technical writing． No，I’m not talking about text generation models like Claude，Gemini，LLaMa，GPT，etc．The ML technology that might end up having the biggest impact on technical writing is embeddings．って元記事は言ってるけど、これは少し時代遅れかもね．テキスト生成LLMももうすぐ最高レベルのテクニカルドキュメント書くようになると思う．sycophancyの研究とか進んでるしね．「一番影響」ってのが近いうちの話なら、優れた検索・整理ツール（ambient findabilityとか）がLLMに勝つには急がないとだね．" userName="benatkin" createdAt="2025/05/12 16:49:23" color="#ff33a1">}}




{{<matomeQuote body="これって，各次元をバイナリ数字みたいに扱えるから，2^nの方向を符号化できるってこと？それとも全然違う？<br>" userName="drc500free" createdAt="2025/05/12 16:54:06" color="">}}




{{<matomeQuote body="nearly orthogonal dimensions within n dimensional space<br>細かい指摘だけどさ：記事の中で方向と次元を区別してるから，”nearly orthogonal directions within n dimensional space”って書きたかったんじゃないかな．それが重要だよ．<br>" userName="aaronblohowiak" createdAt="2025/05/12 16:14:17" color="#ff5733">}}




{{<matomeQuote body="the two groups of words are linearly separable<br>これ，ちょっとポイントを外してるかも．数百ある次元のうちの２つの次元＊で見るとベクトルが一定って話だよ．単一の次元で完全に分離じゃなくて，中性の言葉もあるし，複数の次元の組み合わせ（擬似次元）で表現されてるんじゃないかな？論文読んでないから推測だけど．<br>＊おそらく複数の次元を組み合わせた擬似次元；IDK，論文は読んでない．<br>" userName="avidiax" createdAt="2025/05/12 20:13:53" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="The BERT-like and other transformer embeddings far outperform word vectors because they can take into account the context of the word.<br>BERTなどが優れてるのは文脈に加えて，BPEみたいなトークン化も大きいよ．句読点や大文字小文字も考慮されるから意味抽出に重要なんだ．しかもメモリ効率もいい．昔のBERTのSentencePieceはもう古いね．<br>" userName="minimaxir" createdAt="2025/05/12 16:46:51" color="#38d3d3">}}




{{<matomeQuote body="Embeddingのコンセプト全体をより細かいスケールで考え直すといいと思うんだ．「モデルが入力がkingかどうかの次元を持ってる」って言うんじゃなくて，そのEmbeddingは「king」っていう概念を，それに関わる全てのアイデア/単語/トークンをカバーするのに必要な次元より少ない次元で表現してるんだ．<br>だから，”gender”を表現する方向と次元の違いは，たぶんgenderが「重要」じゃない（あるいは情報密度が高くない）から全体を１つの次元にするんじゃなくて，もっと抽象的な２つ（かそれ以上）の次元の線形結合で表現されてるってことなんじゃないかな．<br>" userName="OJFord" createdAt="2025/05/12 16:18:06" color="#38d3d3">}}




{{<matomeQuote body="現実的には，Embeddingとtext generation modelsの両方の組み合わせだと思うよ．技術文書作成の手に負えない課題を進展させるにはEmbeddingがすごく重要［1］だけど，自動更新を適用するにはtext generation modelsが鍵なんだ．<br>［1］ https://technicalwriting.dev/strategy/challenges.html<br>" userName="kaycebasques" createdAt="2025/05/12 18:01:49" color="">}}




{{<matomeQuote body="前に勤めてたスタートアップで，当時はfoundation modelsを開発しようとしてたんだけど，BPEはそれまで試した中で本当に大幅な改善だったんだ．OODワードの情報損失はダメだって思ってたんだけど，みんなLLMの”short circuiting”（間違った手段で正解を得ること）に寛容でビックリしたよ．自分の評価が悲観的すぎたかな．でも”間違った手段で正解”は信用できないから好きじゃないけどね．<br>" userName="PaulHoule" createdAt="2025/05/12 16:51:34" color="">}}




{{<matomeQuote body="word2vecではking - man + womanみたいな計算ができるデモがたくさんあるのは知ってるんだけど，現代のEmbeddingではどうやるのか知らないな．https://turbomaze.github.io/word2vecjson/<br>" userName="kaycebasques" createdAt="2025/05/13 01:29:17" color="">}}




{{<matomeQuote body="Johnson-lindenstrauss lemma ［1］ 興味ある人は見てね．距離をε以内で保つにはk ＞ 8（ln N）/ε＾2 次元が必要で，10億点なら10%で18k次元，1%で1.8m必要になるんだって．点がよく散らばっててもっと少ない次元で済むlemmaはないのかな？それともEmbeddingは距離の精度低くても大丈夫なの？<br>［1］ https://en.wikipedia.org/wiki/JohnsonE2%80%93Lindenstrauss_...<br>" userName="ohxh" createdAt="2025/05/12 19:12:28" color="#ff33a1">}}




{{<matomeQuote body="https://nlp.stanford.edu/projects/glove/ にあるグラフでは，N=20くらいの点が「正しい位置」に落ちてるように見えるものがいくつもあるけど，たくさんの次元が関わってるし，50次元もあれば20点を完全に好きな位置に落とすようなprojectionはいつも見つけられるんだよ．<br>Ramsey theory（または’the Woolworths store alignment hypothesis’）<br>" userName="philipwhiuk" createdAt="2025/05/12 16:54:19" color="#ff5c5c">}}




{{<matomeQuote body="最後のポイント（ほぼ直交するベクトル）に関する良い記事だよ：https://transformer-circuits.pub/2022/toy_model/index.html" userName="rahimnathwani" createdAt="2025/05/12 17:10:28" color="#38d3d3">}}




{{<matomeQuote body="kernel trickを使うなら、分離多様体である必要があるだけだよ ;)" userName="tomrod" createdAt="2025/05/12 20:23:43" color="">}}




{{<matomeQuote body="基本的にはそうだけど、もっとすごいんだ。’意味’の方向がちょっとだけブレるの（たとえば他の全ての方向に対して89度から91度の間とか）を許容すると、もっと自由度が増えるんだよね。3次元だと、そのブレを許容してもまだ意味のある方向は3つだけだけど、高次元空間だと、この少しの追加の自由度のおかげで、厳密に直交する方向の数よりもはるかに多くのほぼ直交する方向を当てはめることができるんだ。つまり1000次元空間では、1000 ＞＞ 1000の二項概念を当てはめられるってこと。" userName="emaro" createdAt="2025/05/12 17:54:06" color="#45d325">}}




{{<matomeQuote body="君の言う通りだよ。https://deepmind.google/research/publications/157741/" userName="realbenpope" createdAt="2025/05/12 19:54:37" color="#ff33a1">}}




{{<matomeQuote body="なるほど、無限次元の非線形空間を「要素の線形結合の近似を最も良く保持するN次元線形空間”に変換するってことか。単語同士が組み合わさって他の単語を作るから、「素数”みたいな基本的な単語はないんだね（辞書みたいに）。でも、genderみたいに相関が強いものは、大きな空間だとほぼ「素数”みたいになるかも。これで合ってる？" userName="daxfohl" createdAt="2025/05/12 17:03:12" color="#ff5733">}}




{{<matomeQuote body="見落としてたらごめんね…でもこの記事でテクニカルライターに直接応用できる話ってなんかあった？EmbeddingsはLLMsとかセマンティック検索とかで超重要で面白いけど、筆者はもっと直接的な使い道を示唆してるみたいだからさ。" userName="jacobr1" createdAt="2025/05/12 15:36:30" color="">}}




{{<matomeQuote body="＞この記事でテクニカルライターに直接応用できる話ってなんかあった？<br>いや、これはTWでのEmbeddings応用を探る今後の記事やプロジェクトのティーザーだったんだ。今は育児で忙しいけど、他にも準備してるよ。Embeddingsはここで挙げてるTWの「手に負えない”3つの課題全部に役立つってことは言っておくね。" userName="kaycebasques" createdAt="2025/05/12 16:08:30" color="#ff5c5c">}}




{{<matomeQuote body="あと、直接的な応用について言い忘れてたんだけど、これね：https://www.tdcommons.org/dpubs_series/8057/<br>（数ヶ月のレビュー地獄を経て、先週やっと公開されたんだ）" userName="kaycebasques" createdAt="2025/05/12 19:43:50" color="#45d325">}}




{{<matomeQuote body="とにかくシェアしてくれてありがとうね。あんまり詳しくない人にとっては良い概要だったよ。" userName="jacobr1" createdAt="2025/05/12 17:12:42" color="">}}




{{<matomeQuote body="セマンティックサーチとか分類、クラスタリングだよね。サーチに関しては、だいたい10年おきに大きなブレークスルーがあるから、使えるものは使うって感じかな。TRECの議事録を読んで、”サーチ精度を改善するどんな当たり前のアイデアもダメだ”って落ち込んだんだけど、最初の10年間のまとめを見て、やっと有用な結果がBM2.5だったって知ったんだ。<br>分類について言うと、テキストをembeddingsにして、それを古典的なMLアルゴリズムにかけるのはめちゃくちゃ実用的。scikit-learnとかにあるやつね。これがすごい安定してて、今作ってるテキスト分類ライブラリにbag-of-words分類器を入れないことも検討してるくらい。Huggingfaceのフォーラムにいる人たちは、ファインチューニングしたBERTの方が優れてるって言うけど、確かにそうだと思う。でもトレーニング時間が100倍かかるし、必ずしも良くなるわけでもないんだ。<br>20年前はbag-of-wordベクトルを作ってclusteringアルゴリズムにかけてたけど、結果はひどかった。Embeddingsを使えば、もっとシンプルで速いアルゴリズム、例えばkmeansとかで素晴らしいクラスタリングができるようになったよ。<br>“大量の線形代数”が必要って点には同意できないな。ドット積でできるんだから、“ちょっとした線形代数”って言うべきじゃないかな。" userName="PaulHoule" createdAt="2025/05/12 15:47:09" color="#45d325">}}




{{<matomeQuote body="文献をembeddingsでセマンティック検索できたら最高だよね。知ってる人の中には、全arxiv論文のベクトルデータベースを作ろうとしてる人もいるよ。<br>大きな問題はattriutionとcitationsだと思う。Embeddingsはただのベクトルだから、元のソースへの引用や更新日、信頼性の証明とかを含んでないんだ。だからRAGでembeddingsを使う場合、特定のソース資料のページにリンクバックするのにしか使えないんだよね。<br>Embeddingsをリンクとして使うだけだと、技術文書での引用やattriutionの扱い方は劇的に変わらない。結局、論文全体とか論文のページを引用することになる。<br>GraphRAG［1］の方が技術文献にとっては構築する価値があると思うな。グラフを使えば、学術論文の特定のページの特定の概念を引用できる方法があるし、引用が新旧の科学的議論の間で双方向リンクとして機能するようになる。まあ、脱線したけどね。" userName="sansseriff" createdAt="2025/05/12 16:15:44" color="#785bff">}}




{{<matomeQuote body="IMO、技術文書ではページ内とかセクション内の引用で十分なことが多い気がするよ。特定の概念を引用する必要はめったにないんだ。でも、もっと細かい概念レベルの引用の可能性なんて考えたこともなかったから、絶対もっと考えてみるね！" userName="kaycebasques" createdAt="2025/05/13 01:44:10" color="">}}




{{<matomeQuote body="embeddingsを使ったセマンティックサーチ付きRSSアグリゲーターを作ったことあるよ。主な使い方は、任意に作成したカテゴリに基づいて分類できることだったんだ。だから、どんなカテゴリでも作れたんだよね。<br>残念ながらもうAWSで働いてないから、動かしてたインフラはもうないんだけど。" userName="podgietaru" createdAt="2025/05/12 15:51:10" color="#38d3d3">}}




{{<matomeQuote body="Embeddingsは universalityへの新しい飛躍だよ。アルファベットとか数字みたいにね。" userName="jonathanrmumm" createdAt="2025/05/12 18:29:35" color="">}}




{{<matomeQuote body="数日前にembeddingsの解説記事書いたんだ。興味ある人いるかな？数式はほとんどなくて、犬がたくさん出てくるよ。" userName="petesergeant" createdAt="2025/05/12 15:45:22" color="">}}




{{<matomeQuote body="完全に同意。Recallifyっていうのを構築してembeddingsを試してるんだ。主に、オンラインで読んだあんまり覚えてないものを素早く取り出すのに役立ててる。たった1024次元でも、embeddingsが純粋に意味的な類似性に基づいてアイデアを効果的に捉えて表面化させるのはすごいよ。正確なキーワードを思い出すのが苦手だから（僕はかなり苦手なんだ）、これはゲームチェンジャーだったね。あいまいな心の概念を実行可能な洞察に変えるのに役立ってる。<br>iOSアプリのベータテストもやってるから、興味ある人いる？" userName="paulnovacovici" createdAt="2025/05/12 20:40:11" color="#ff5c5c">}}




{{<matomeQuote body="なんで何次元もある概念をそんなに神秘的だと考える人がいるのか理解できないな。自由度みたいなものを指定する数字でしょ。机に座ってる自分の体の位置を指定したいなら、各関節で何が起きてるかを2つの角度で指定するかもしれないし、完全に指定するには何百もの角度が必要になるだろうね。人間はその数字を見ても“彼は机に座ってる”とは見れないかもしれないけど、概念的な難しさは感じないな。" userName="gweinberg" createdAt="2025/05/12 19:44:24" color="">}}




{{<matomeQuote body="高次元が単に自由度が増えるだけで、数学的には単に数字が増えるだけっていうのは正しいね。でも直感に反するのは、次元が増えると幾何学的な振る舞いが違うことなんだ。距離とか体積、角度が僕たちが期待するようにはスケールしないんだよ。例えば、高次元では球の体積のほとんどがその表面近くに集中するし、ランダムなベクトルはほとんど直交する傾向があるんだ。これは2Dや3Dではめったに起こらないことだよね。<br>これらの効果は実際にも影響するんだ。単語embeddingsみたいな高次元空間では、関係ない点でも等距離に見えることがあって、clusteringや類似性検索みたいな基本的なタスクがずっと難しくなるんだ。だから、高次元そのものが神秘的っていうよりは、僕たちが3次元で暮らして培った空間的な直感に反するってことなんだと思うよ。" userName="JohnKemeny" createdAt="2025/05/12 19:56:10" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
