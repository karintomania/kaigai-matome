+++
date = '2025-08-12T00:00:00'
months = '2025/08'
draft = false
title = 'Web検索エンジンをゼロから構築！30億ニューラル埋め込みで低コストを実現'
tags = ["Web検索", "AI", "開発", "機械学習", "コスト削減"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> Web検索エンジンをゼロから構築！30億ニューラル埋め込みで低コストを実現

引用元：[https://news.ycombinator.com/item?id=44878151](https://news.ycombinator.com/item?id=44878151)




{{<matomeQuote body="OpenAIの最新埋め込みモデルのバッチ推論は、1Mトークンあたり$0.0001と異常に安いよ。もし10億ページ（各1Kトークン）あっても、全埋め込み生成でたった$100。自分でRunpodのGPUを使っても100倍はかかるからね。これってOpenAIが独自の訓練データ集めるための「ハニーポット」なんじゃないかなって思うんだ。" userName="arkmm" createdAt="2025/08/12 23:36:13" color="#45d325">}}




{{<matomeQuote body="OpenAIの最新埋め込みモデルが1Mトークンあたり$0.0001と異常に安いのは、まるで麻薬ディーラーの手口じゃない？最初はお得で客を惹きつけて、慣れたら値段を吊り上げるってやつ。だって、代わりとなる選択肢は全埋め込みの再生成になっちゃうでしょ？" userName="magicalhippo" createdAt="2025/08/13 08:22:12" color="#ff33a1">}}




{{<matomeQuote body="OpenAIはAPI経由のデータで訓練しないと思うよ。例外が特にない限りはね。" userName="cedws" createdAt="2025/08/13 01:26:06" color="">}}




{{<matomeQuote body="もしかしたら誤解してるかもしれないけど、APIリクエストを訓練に許可すればAPIコストが安くなるオプションがあるはずだよ。デフォルトではオフだけどね。OpenAIのデータ管理設定（https://platform.openai.com/settings/organization/data-contr...）を見ると「入力と出力をOpenAIと共有」って項目があって、モデル改善のためにオンにできるって書いてあるし、「無料のデイリートークンに登録済み」ってあるから、そういうことじゃないかな。" userName="dpoloncsak" createdAt="2025/08/13 14:47:03" color="#ff33a1">}}




{{<matomeQuote body="データに直接訓練するんじゃなくて、高次元の埋め込みとか、同様に「匿名化されてるけど意味的に豊かな表現」みたいなデータを使って訓練してる可能性は否定できないね。" userName="trhway" createdAt="2025/08/13 09:50:35" color="">}}




{{<matomeQuote body="でも、本当に彼らを信用できるのかな？" userName="dannyw" createdAt="2025/08/13 06:20:13" color="">}}




{{<matomeQuote body="うん、もしOpenAIがB2Bデータを訓練に使ってるとバレたら、彼らにとっては壊滅的な事態になるだろうね。使ってないって言ってるんだからさ。" userName="cedws" createdAt="2025/08/13 06:58:34" color="">}}




{{<matomeQuote body="俺たちが話してるのって、大規模な著作権侵害をビジネスモデルの土台にしてる会社のことだよね？" userName="dweinus" createdAt="2025/08/13 12:34:52" color="#45d325">}}




{{<matomeQuote body="訴訟で会社を潰せる相手を侵害するのとは違うよ。" userName="dymk" createdAt="2025/08/13 19:42:53" color="">}}




{{<matomeQuote body="彼らが『データ使わない』って言ったことある？（マジで知りたい）" userName="reasonableklout" createdAt="2025/08/13 09:15:06" color="">}}




{{<matomeQuote body="うん、言ってるよ。[1]によると、2023年3月1日以降、OpenAI APIに送られたデータは、ユーザーが明示的に同意しない限り、OpenAIモデルの学習や改善には使われないってさ。[1]: https://platform.openai.com/docs/guides/your-data" userName="gkbrk" createdAt="2025/08/13 09:46:42" color="#ff5c5c">}}




{{<matomeQuote body="はは、こんなPRの失敗で完全に潰れた会社なんて山ほどあるもんね<br>/s" userName="mattigames" createdAt="2025/08/13 07:40:56" color="">}}




{{<matomeQuote body="利用規約にデータ学習に使わないって書いてあるから、PRの問題だけじゃなくて契約違反になるんだよ。訴えられて破産するレベルだね。" userName="j33zusjuice" createdAt="2025/08/13 20:03:58" color="#ff5733">}}




{{<matomeQuote body="もしデータが学習に使われるなら、ゴミデータや汚染データを学習データにぶち込む方法になっちゃうね。俺は絶対やらない。" userName="anothernewdude" createdAt="2025/08/13 07:59:40" color="">}}




{{<matomeQuote body="いやーすごいね！最高の記事だよ。検索エンジンにキュレートされた質の高いデータ（ゴミを入れたらゴミが出る）が不可欠っていうのは納得。LLMの学習でも、より少ない高品質データで学習するのが大事って学んだ感じだよね。全てのコンテンツがLLMによって評価された検索エンジンがどうなるか気になるな。" userName="lysecret" createdAt="2025/08/12 19:18:16" color="#ff5c5c">}}




{{<matomeQuote body="友達のビジネスサイトをランクインさせようとSEO頑張ってるけど、うまくいかない。2ヶ月経ってもBingはファビコンすらクロールせず、Googleも遅い。関係ないサービスやゴミサイト、遠方の業者にすら負けてるよ。Pagerankとクロール、全体的に絶対おかしい！" userName="throwawaylaptop" createdAt="2025/08/12 21:06:31" color="#ff33a1">}}




{{<matomeQuote body="残念だけど、もう手遅れだね。ウェブは死んだ。SEOはSEM（検索エンジン操作）って呼ぶべきだよ。" userName="mv4" createdAt="2025/08/12 21:14:18" color="">}}




{{<matomeQuote body="＞Pagerankがおかしい<br>バックリンクは貼ってる？貼ってないなら、それはそれで正常に機能してるんじゃない？" userName="what" createdAt="2025/08/13 04:10:52" color="">}}




{{<matomeQuote body="俺はバックリンクがないけど、実店舗ビジネスのサイトを持ってんだ。検索で全然関係ない結果ばっかり出てきて、結局リストの42番目でようやく見つかるんだぜ。" userName="throwawaylaptop" createdAt="2025/08/14 21:59:04" color="#ff5733">}}




{{<matomeQuote body="昔、GoogleにサイトのインデックスURLを登録できたのを思い出したよ。そのインデックスを作るのはかなり骨が折れる作業だったな。" userName="johnthescott" createdAt="2025/08/13 03:38:50" color="">}}




{{<matomeQuote body="筆者はCommon Crawlデータ追加を考えてるんだな。俺らのWebグラフから作ったランキング情報は、クロールするページ選びに役立つはずだ。大規模な事例が見れて感激だぜ。ベクターデータベースがこんなに費用対効果高いとは驚きだよ。" userName="ccgreg" createdAt="2025/08/12 17:48:02" color="#ff5733">}}




{{<matomeQuote body="この記事のタイトル、「10xエンジニアが空き時間にGoogleを創る」にすべきだぜ。マジで、アニメーションや分析まであって、すっげー素晴らしい記事だよ。ブラボー！AWSがいくつかのユースケースで機能しなかったのは皮肉だな。色々考えさせられるよ。" userName="demarq" createdAt="2025/08/13 07:10:26" color="#38d3d3">}}




{{<matomeQuote body="AWSの制限について調べたんだけどさ、SQSの同時実行レート制限が低いってのは見つからなかったな。Lambdaのことじゃないか？S3もレート制限が低いって言ってるけど、プレフィックスパーティションを使えば実質無制限のスループットだぜ。" userName="demarq" createdAt="2025/08/13 08:49:10" color="#ff5733">}}




{{<matomeQuote body="正確な制限は忘れちまったけど、S3とOCIのサービスでサーバーエラーが出たのは確かだよ。429じゃなかったけど、スループットは制限された。SQSは429が出たな。リクエスト数でメッセージ数じゃないと思うけど、バッチは10件までしか対応してないんだ。これらが最初から“動く”ことを期待してたんだよ。もっと時間があればAWS/OCIで色々できたかもだけど、検索機能に集中したかったんだ。" userName="wilsonzlin" createdAt="2025/08/13 10:02:36" color="#785bff">}}




{{<matomeQuote body="それは妥当な期待だな。全部うまくいって、マジですげえと思ったぜ。" userName="demarq" createdAt="2025/08/13 12:00:52" color="">}}




{{<matomeQuote body="どこにいるか知らんけど、もしEUで商業目的じゃないなら、OpenWebSearch.euのクロールデータを追加するのを検討してみたらどうだ？EUが資金を出してるプロジェクトで、Webのオープンクロールとかを提供してるんだ。誰かが非営利で良い品質のWeb検索エンジンを作ってくれるのは素晴らしいよな。URL: https://openwebsearch.eu/" userName="jll29" createdAt="2025/08/13 11:08:37" color="#38d3d3">}}




{{<matomeQuote body="なんで“著名な機関”が、この（マジですげえ）彼に、自分たちのクロールを使いやすい検索エンジンにしてもらわなきゃいけないんだ？この大陸、どうなってんだよ？" userName="bjornsing" createdAt="2025/08/13 17:07:36" color="">}}




{{<matomeQuote body="これが一人でできるなんて思わなかったぜ。信じられない仕事だ！商業検索エンジンとそんなに変わらないように見えるな？Googleとも？5万ドルの運用費なんて、バカみたいに少ない金額だよ。その金をあんたに投資したくなるくらいだ。" userName="dcreater" createdAt="2025/08/13 01:29:23" color="#785bff">}}




{{<matomeQuote body="このプロジェクトすごいね！<br>「高解像度ウルトラワイドモニターの良い選択肢は？」って検索してみたら、大手エンジンと同じく専門情報じゃなくてランキングサイトが優先されてたよ。本当は一次ソースが見たいんだけど、検索エンジンってそういう評価はしてくれないんだよね。" userName="poly2it" createdAt="2025/08/12 21:36:15" color="#785bff">}}




{{<matomeQuote body="それって実は検索クエリじゃないって言えるかもね。特定のページが「正しく」答えるんじゃなくて、複数の情報源をまとめて推論するんだから、それは検索の問題じゃないよ。" userName="ricardobeat" createdAt="2025/08/12 23:00:29" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この反論はちょっと不誠実に感じるな。完璧な答えがあるページはなくても、正しい情報が含まれる可能性が高いページと、SEOのゴミばかりのページがあるのは事実だよ。<br>良い検索エンジンってのは、質の高い情報を見つけることが前提で、Googleがここまで支配的になったのも、それが理由でしょ。" userName="creesch" createdAt="2025/08/13 09:45:57" color="#38d3d3">}}




{{<matomeQuote body="それなのにさ、まさにそれこそが普通の人が検索エンジンに解決してほしい問題だし、Googleもずっとやろうとしてきたことなんだよね。たぶんAIチャットがウェブ検索と組み合わせることで、単なる検索を打ち負かす理由の一つになるよ。" userName="jacobr1" createdAt="2025/08/13 18:02:46" color="#38d3d3">}}




{{<matomeQuote body="すごい！信じられないけど、これかなりちゃんと動くね。<br>もし1万人が月5ドル払えば維持できるなら、寄付で運営されるコミュニティ主導の検索エンジンも、そこまで夢じゃないかもね？" userName="divineg" createdAt="2025/08/12 22:43:32" color="">}}




{{<matomeQuote body="encoder only LLMを知ってる人には、Googleがもう実質的に終わってるのは明らかだよね。まだ生きてるのは、ウェブのクロールとインデックス更新に時間がかかるからさ。<br>Common Crawlみたいなのがリアルタイムでクロールできれば、Googleの25年の堀はなくなって、検索はコモディティ化するよ。" userName="noosphr" createdAt="2025/08/12 23:10:10" color="#ff5c5c">}}




{{<matomeQuote body="Common Crawl Foundationのチームは、リアルタイムでのウェブのクロールとインデックス化のやり方、よく知ってるよ。<br>でも高価だし、それはうちのミッションじゃないんだ。うちのクロールデータやウェブグラフメタデータを使って、最新のウェブインデックスを作ってる会社はいくつかあるよ。" userName="ccgreg" createdAt="2025/08/13 04:14:22" color="#ff33a1">}}




{{<matomeQuote body="はい、あなたのデータは何度か使わせてもらったよ。<br>でも今、AIボットからウェブを救えるのって、ほとんどCommon Crawlだけだよ。僕が管理してるサイトはボットだらけだし、ウェブデータを使うアプリもブロックされっぱなしでさ。<br>一番簡単な解決策は、優しくスクレイピングしてAIファーストなAPIを提供してくれる中間業者だよ。" userName="noosphr" createdAt="2025/08/13 05:30:49" color="#ff5733">}}




{{<matomeQuote body="それ、大賛成だよ。" userName="ccgreg" createdAt="2025/08/13 06:17:12" color="">}}




{{<matomeQuote body="Common Crawlの利用規約、あいまいな制限が多いよね。<br>AI学習とかコンピュータ分析目的なら「全目的・無制限」ライセンスにしてくれない？だって悪意ある人は規約無視するのに、制限は良識ある人だけを縛るじゃん。<br>あとさ、寛容なライセンスでURLリストを公開して、みんなが自分でスクレイピングできるようにするのってどう？Cloudflare使ってるURLとかのメタデータ付きでさ。" userName="nickpsecurity" createdAt="2025/08/13 22:18:12" color="#ff5733">}}




{{<matomeQuote body="Common Crawlはコンテンツ持ってないし、利用規約でライセンス無視は許さないってさ。robots.txtもちゃんと守ってるよ。URLインデックスは2種類公開してるから、必要なら再クロールしてもいいって。" userName="ccgreg" createdAt="2025/08/13 23:13:19" color="#45d325">}}




{{<matomeQuote body="Common Crawlの利用規約について話してるんだけど、特に(a), (d), (g)は政治的に解釈されがちで、(h)では嫌がらせを受けた経験があるんだ。<br>著作権とかライセンスの問題で、これじゃオープンとは言えないよね。CC-0とかで公開してくれたら制限なく使えるのに。URLは著作権侵害じゃないから、URLだけでも許可ライセンスにしてくれないかな？利用規約自体を変えて、もっとオープンにしてほしいってば。https://commoncrawl.org/terms-of-use" userName="nickpsecurity" createdAt="2025/08/14 19:51:16" color="#ff33a1">}}




{{<matomeQuote body="検索は終わってないけど、かなりきつい状況だね。俺はDuckDuckGo使ってるよ。検索インデックスは合法だけど、AIトレーニングは著作権侵害が多いからさ。もしAIトレーニングが完全に合法になったら、AIも使うかもだけど、今はAIの回答は使わないね。" userName="nickpsecurity" createdAt="2025/08/13 16:00:54" color="#ff5733">}}




{{<matomeQuote body="Googleが焦ってるのが見えるよ。うちの国では、LLMプロンプトみたいなクエリに答えるGoogle検索のテレビCMやってるもん。<br>必死にシェアを取り戻そうとしてるけど、もし伝統的なキーワード検索まで失ったらもうおしまいだね。" userName="kiririn" createdAt="2025/08/13 13:27:34" color="#785bff">}}




{{<matomeQuote body="Kagiってのがそうみたいだね。企業っぽいけどGoogleより全然良い感じ。Searxngもちょっと違うけど、そういう系だよ。" userName="gunalx" createdAt="2025/08/13 10:56:22" color="">}}




{{<matomeQuote body="大手テック企業の機能が時代遅れになるのを見ることになるかもね。AIモデルを使えば、彼らがやってることを安く真似したり実行できるからさ。これまで乗り越えられなかった彼らの強みが、どんどん薄れてきてるんだよ。" userName="echelon" createdAt="2025/08/13 02:18:19" color="#45d325">}}




{{<matomeQuote body="うん、大手はもうアイデア切れって感じだよね。" userName="johnthescott" createdAt="2025/08/13 03:41:05" color="">}}




{{<matomeQuote body="このプロジェクト、すごい！全部これで検索したいけど時間かかるかも。Common CrawlやArchive.orgも使ってほしい。今の検索独占にはうんざりだから、AIに何十億も使われてるんだし、成功してほしい。分散型検索エンジンが欲しいんだ。<br>オープンソース化してほしいけど、持続可能性が大変なのは分かる。コミュニティで何とかできないかな？記事も素晴らしいし、オープンソース開発に役立つはず。こんなに興奮したのは久しぶり！<br>オープンソースは大変だけど、50ドル寄付するからCommon Crawl使ってオープンソースにしてほしい。応援してる！" userName="Imustaskforhelp" createdAt="2025/08/12 18:05:52" color="#ff5c5c">}}




{{<matomeQuote body="マジ尊敬する。すごいプロジェクトだね。検索エンジンの肝はランキングアルゴリズムだもんね。LLMがどう使われてるかは不明だけど、昔ながらの“検索からクリック”の関係を掴むのが効果的だよ。<br>少数のクリックでもランキングの関連性は上がるし、このデータをニューラルネットに入れたらランキングに役立つかもね。分類問題として考えられるよ。" userName="ww520" createdAt="2025/08/12 23:41:36" color="#ff5733">}}




{{<matomeQuote body="＞One effective old technique for ranking is to capture the search-to-click relationship by real users. It’s basically the training data by human mapping the search terms they entered to the links they clicked. With just a few of clicks, the ranking relevance goes way up.<br>That’s not very effective. Ever heard of clickbait?<br>Like I’ve said uncountable times before, the only effective technique to clean out the search results of garbage is to use a point system that penalises each 3rd party advertisement placed on the page.<br>The more adverts, the lower the rank.<br>And the reason that will work is because you are directly addressing the incentive for producing garbage - money!<br>The result should be ”when two sites have the same basic content, in the search results promote the one without ads over the ones with ads”.<br>Until this is done, search engines will continue serving garbage, because they are rewarding those actors who are producing garbage." userName="lelanthran" createdAt="2025/08/13 06:54:46" color="#ff5c5c">}}




{{<matomeQuote body="This is often touted as the solution to remove SEO garbage, except that you’d also get rid of the news websites along with it which are fairly reliant on advertising." userName="supriyo-biswas" createdAt="2025/08/13 13:58:25" color="">}}




{{<matomeQuote body="＞This is often touted as the solution to remove SEO garbage, except that you’d also get rid of the news websites along with it which are fairly reliant on advertising.<br>That’s fine; those who want to search for news articles can use any number of existing search engines that don’t penalise ads." userName="lelanthran" createdAt="2025/08/14 04:52:45" color="">}}




{{<matomeQuote body="Thank you for sharing! This is one of the coolest articles I have seen in a while on HN. I did some searches and I think the search results looked very useful so far. I particularly loved about your article that most of the questions I had while reading got answered in a most structured way.<br>I still have questions:＊How long do you plan to keep the live demo up?＊Are you planning to make the source code public?＊How many hours in total did you invest into this ”hobby project” in the two months you mentioned in your write-up?" userName="de6u99er" createdAt="2025/08/12 22:37:37" color="#ff5c5c">}}




{{<matomeQuote body="A vector-only search engine will fail for a lot of common use cases where the keywords do matter. I tried searching for `garbanzo bean stew` and got totally irrelevant bean recipes." userName="jvia" createdAt="2025/08/12 23:20:15" color="#45d325">}}




{{<matomeQuote body="Yes, indeed. I just tried search ”Apple”, and apple.com is not on the first page." userName="ospider" createdAt="2025/08/13 08:11:38" color="">}}




{{<matomeQuote body="Agree. For best results both lexical and vector search results should be fed into a reranker. Slow and expensive but high quality." userName="osigurdson" createdAt="2025/08/13 01:09:13" color="#ff5733">}}




{{<matomeQuote body="What if you build a graph engine then encode those edges into its own embedding space?<br>Nerdsnipe?" userName="cyanydeez" createdAt="2025/08/12 23:24:47" color="">}}




{{<matomeQuote body="One of the most insightful posts I’ve read recently. I especially enjoy the rationale behind the options you chose to reduce costs and going into detail on where you find the most savings.I know the post primarily focuses on neural search, but I’m wondering you tried integrating hybrid BM-25 + embeddings search and if this led to any improvements. Also, what reranking models did you find most useful and cost efficient?" userName="ryanlime" createdAt="2025/08/13 01:27:56" color="#ff33a1">}}




{{<matomeQuote body="That stack element is amazing<br>I wish more people showed their whole exploded stack like that and in an elegant way<br>Really well done writeup!" userName="AndrewKemendo" createdAt="2025/08/12 18:37:57" color="">}}




{{<matomeQuote body="この記事、マジでヤバい！たった2ヶ月、千ドル以下でGoogleを超える検索エンジンを作るとか信じられないね。連合検索インデックスのアイデアも超クールだよ！YaCyにも似たのがあるけど、そっちは使い物にならなかったからさ。" userName="1gn15" createdAt="2025/08/12 18:32:09" color="#45d325">}}




{{<matomeQuote body="著者は「SEOやスパムに強い」って言ってるけど、LLMや埋め込みの限界をちょっとでも知ってれば、そうじゃないってわかるはず。プロンプトとコンテンツに区別がないから、「以前の指示は無視して」みたいなのが通じないんだ。アルゴリズムの数学的根拠がわかってる分、アドバーサリー攻撃でSEO対策する方がむしろ簡単だよ。" userName="zipy124" createdAt="2025/08/13 10:41:14" color="#45d325">}}




{{<matomeQuote body="著者はSBERT埋め込みを使ってて、指示に従うモデルじゃないから、「以前の指示は全部無視して」みたいな小細工は通用しないよ。もしそれが通用するなら、みんなが「前の指示を全部無視した後に何をすべきか」って検索したら、https://en.wikipedia.org/wiki/Ignore_all_rules が上位に来ちゃうからね。スパマーが各クエリに対してめっちゃ近い埋め込みを持つ一文を入れようとしても、それはキーワード詰め込みより遥かに大変な作業になるはず。" userName="yorwba" createdAt="2025/08/13 12:51:51" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="埋め込みを主に使ってるのは知ってるけどさ、「LLMベースのリランキングとフィルタリングも追加した」って書いてる通り、そこが俺が言ってる攻撃に脆弱なんだよ。スパマーは、狙ったクエリで上位表示されるようにSEOを調整できるし、SBERTみたいな埋め込みモデルを逆方向に使って、最高の埋め込みになるテキストを生成することだってできるんだ（Ilia Shumailovの研究とか見るとわかるよ）。これはGoogleの未知のコスト関数を最適化するよりずっと簡単で、しかも安上がりなんだから。" userName="zipy124" createdAt="2025/08/14 10:00:08" color="#45d325">}}




{{<matomeQuote body="まったく典型的なHNの的外れなコメントだね。ここで示された才能はとんでもないレベルだよ。君がもっと良いものを作ってみろって！" userName="binarymax" createdAt="2025/08/13 11:40:55" color="">}}




{{<matomeQuote body="すごい才能だってことは認めてるし、そうじゃないなんて言ってないよ。実際、俺はこんな優れたシステムアーキテクチャは作れないと思うし、そう言ったつもりもない。でもさ、そういう態度って非建設的だよね。この理屈に従うなら、コーチとアスリートなんて成り立たないじゃん？コーチはアスリートよりうまくできないかもしれないけど、だからって無意味なわけじゃないでしょ。" userName="zipy124" createdAt="2025/08/14 09:51:41" color="">}}




{{<matomeQuote body="これ、すごくいい記事だったよ！Cloudflareのブロックとか、ブラウザのフィンガープリンティングにはぶつからなかった？ニュースサイトなんかだとGoogle Botにしか全部見せないとかあるから、Googleの地味だけど強力な moat だと思ってたんだ。記事にまったく触れられてなくて驚いたよ。問題なかったの？それとも単に書かなかっただけ？<br>URLの重複排除についても何も書いてないね。「末尾スラッシュの有無」「クエリパラメータの有無」「wwwの有無」とか。クローラーは遭遇したURLを全部辿って、コンテンツレベルで重複排除したの（トリグラムとかで）？それだと、必要なURLの2倍以上のリクエストを送ることになって無駄が多いように思うんだけど。教えてくれてありがとう。" userName="leobg" createdAt="2025/08/14 09:29:15" color="#ff5733">}}




{{<matomeQuote body="これ、マジでクールだった！俺も似たようなの、ビジネス検索向けに開発中なんだけど、同じような課題にたくさんぶつかったよ。みんなクローリングやデータ処理、インデックス化は簡単だって思うけど、それを大規模で費用対効果高くやるのはまったく別物だよね。ウィルソンズリンさん、本当にすごい！もしこれ見てたら、いつか話してみたいな。こんなのをE2Eで構築できる人って本当に少ないからさ。" userName="mfrye0" createdAt="2025/08/13 00:17:13" color="#38d3d3">}}




{{<matomeQuote body="これ、めっちゃクールだね。サービスメッシュなんだけど、自分で構築するのが普通はベストなやり方なのかな？ネットワーキング初心者なんだ。" userName="randomcatuser" createdAt="2025/08/12 17:38:04" color="">}}




{{<matomeQuote body="俺も同じようなアイデアで、求人情報ドメインの小さい版をやってるんだ。最初はHNSWを検討したけど、予測可能な計算時間コストでどうスケールさせるか理解できなかった。メモリが足りなくて、結局IVFを使うことになったよ。coreNNも見てみないとね。" userName="jobswithgptcom" createdAt="2025/08/12 17:53:11" color="">}}




{{<matomeQuote body="LLMなしで検索エンジンを作るにはどうする？Google検索は昔はすごかったのに、今はひどいね。正確な引用も見つけられない。GrokみたいなLLMの方がいい結果出すなんて驚きだよ。" userName="giancarlostoro" createdAt="2025/08/12 17:04:28" color="#785bff">}}




{{<matomeQuote body="Googleがアルゴリズムを頻繁に変えたのは、ブラックハットSEO対策って聞いたけど、それが理由で悪くなったのかな。引用符無視はコスト削減とか？2000年代のGoogleはMLなしでPageRankだけだったのに、その後は悪くなった感じだね。" userName="andai" createdAt="2025/08/12 17:14:19" color="#ff5733">}}




{{<matomeQuote body="Googleの検索結果がダメになったのはSEOのせいじゃなくて、利益優先を明確に選んだからだよ。反トラスト訴訟の内部メールでバレてる。短期的には広告だらけの結果の方が儲かるんだってさ。多くの人がまだGoogleを信じてるのが悲しいね。" userName="masfuerte" createdAt="2025/08/12 19:55:19" color="#ff5733">}}




{{<matomeQuote body="公開ネットはSEOゴミだらけで、ユーザー生成コンテンツはInstagramやFacebookみたいな囲い込み空間に。最近は、そのユーザー生成コンテンツも、詐欺師インフルエンサーのせいで汚染されてるんだよ。" userName="xnx" createdAt="2025/08/12 17:20:20" color="#785bff">}}




{{<matomeQuote body="ウェブサイトが少なかった頃はディレクトリ、増えたらGoogleが良かった。サイトがSEOゴミになったらソーシャルネットワーク、ソーシャルネットワークもゴミになった今、Fediverseが次のアツい場所になるのを期待してるよ。AIは次のすごいものにはならないと思うな。" userName="ASalazarMX" createdAt="2025/08/12 17:47:48" color="#38d3d3">}}




{{<matomeQuote body="Fediverseにも期待してるよ。コミュニティもフォーラムからDiscordへ移ったけど、Matrixみたいな連合型に移行してほしいね。BlueskyやNostr、Matrixについてはどう思う？Blueskyは現状中央集権だけど、PDSのアイデアは安全そう。AIはコーディングにはいいけど、一般的にはそこまでじゃないと思うな。" userName="Imustaskforhelp" createdAt="2025/08/12 18:09:44" color="">}}




{{<matomeQuote body="BlueSkyはまだ様子見だね。昔のTwitter/Xみたいでコンテンツは好きだけど、まだ何とも言えないな。MastodonやFediverseの弱点は、エコーチェンバーになりやすいこと。フィードはゴミか、エコーチェンバーか、頑張ってキュレーションしたサブスクか、って感じ。でも、それが強みにもなるのかもね。" userName="ASalazarMX" createdAt="2025/08/12 18:31:08" color="#45d325">}}




{{<matomeQuote body="ニール・スティーヴンスンの小説に、キュレーションされたフィードが唯一のまともなネット閲覧方法になったって話があったんだ。最近、それが現実味を帯びてきたな、って思ってるよ。" userName="mwcz" createdAt="2025/08/12 20:23:44" color="">}}




{{<matomeQuote body="BlueskyもFediverseも分散技術だけど、Blueskyは分散性が高く「enshittening」しにくいと思う。Lemmyでは購読のキュレーションも大丈夫だったし。Blueskyの技術は最高で、ダメになるとは思えないね。Nostrは究極の分散性だけど、クリプト系エコーチェンバーで意味のあるものは期待薄。Blueskyはちょうどいい。FediverseもLemmy.worldやmastodon.socialの肥大化など、同じ問題あるよね。Mastodonって自分のサーバーの投稿にしかコメントできないのかな？俺のスキル不足？" userName="Imustaskforhelp" createdAt="2025/08/12 19:35:20" color="#38d3d3">}}




{{<matomeQuote body="そうだね、マーケティングや広告がアルゴリズムを操作したから、Googleはアルゴリズムを変えざるを得なかったんだ。＜meta＞タグとか隠し＜div＞みたいなゴミがなかった頃は、コンテンツの繋がりがすごく良かったのに。今はただの重み付けされたデータベースって感じだね。" userName="reactordev" createdAt="2025/08/12 18:35:18" color="#45d325">}}




{{<matomeQuote body="SEOと戦ってるってずっと言われてるけど、俺はずっと疑問だったんだよね。SEOと戦ってるフリをして、本当は収益に関わる何かを殺さないようにバランス取ってるだけなんじゃないの？って。" userName="h2zizzle" createdAt="2025/08/12 18:51:32" color="#ff5733">}}




{{<matomeQuote body="それって疑問なんだけどさ、もし2000年代の高品質な検索結果を出すエンジンを再現できたとして、投資家は資金提供してくれると思う？笑" userName="giancarlostoro" createdAt="2025/08/12 17:19:26" color="#ff5733">}}




{{<matomeQuote body="＞2000年代のエンジンを再現ってマジ？どうやってだよ。今のウェブはあの頃とは全然違うし、Googleが全盛期だった頃とは全く違うアプローチが必要になるはずだろ。" userName="entropie" createdAt="2025/08/12 17:38:15" color="#45d325">}}




{{<matomeQuote body="細かいこと言って悪いけど、「begs the question」じゃなくて「raises the question」が正しいよ。これ見て→https://en.wikipedia.org/wiki/Begging_the_question" userName="kdfjgbdfkjgb" createdAt="2025/08/13 13:36:19" color="">}}




{{<matomeQuote body="「記憶してるはずの引用が見つからない」って問題にぶつかって、別の方法で見つける時ってさ、大抵は俺が記憶違いで、実際の引用は違ったってことが判明するんだ。そういう場合、結果がゼロ件の方がまだマシだけどね。" userName="yorwba" createdAt="2025/08/12 17:41:32" color="">}}




{{<matomeQuote body="昔ながらのn-gramとPageRankベースの検索エンジンがあればなぁ。昔のGoogleにあった問題も気にしない人向けのやつ。自分で作ろうと思ったこと、何度かあるんだよね。" userName="msgodel" createdAt="2025/08/12 18:06:36" color="#785bff">}}




{{<matomeQuote body="インターネット自体が時間と共に変わって、多くのコンテンツがただ消えちゃったんだよ。もう存在しないんだから検索結果に出ちゃダメだし、404になるだけだろ。" userName="mike_hearn" createdAt="2025/08/12 19:15:07" color="">}}




{{<matomeQuote body="消滅したエントリも、「Missing」タブとかに表示してくれる検索エンジンがあったら、俺にとってはめちゃくちゃ便利だったのにな。何年も前に見たものが、痕跡すら消えちゃったことが何度もあるんだ。そういう時、「Missing」タブがあれば、元のURLやページタイトルとかをArchive.orgとかで探せるし。" userName="cosmic_cheese" createdAt="2025/08/12 20:22:21" color="#ff5c5c">}}




{{<matomeQuote body="君もこれに苦しんでるみたいだね。だけど事実として、”あの”インターネットはもう完全に消えちゃったんだよ。" userName="thr0w" createdAt="2025/08/12 17:11:02" color="">}}




{{<matomeQuote body="いや、インターネットは「チューブの連なり」なんだって。正しいチューブを組み合わせればいいだけだよ。" userName="giancarlostoro" createdAt="2025/08/12 17:18:54" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
