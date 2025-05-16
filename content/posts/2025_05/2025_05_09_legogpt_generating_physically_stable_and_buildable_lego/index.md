+++
date = '2025-05-09T00:00:00'
months = '2025/05'
draft = false
title = 'LegoGPT AIが物理的に安定して組み立てられるレゴを生成！'
tags = ["AI", "レゴ", "生成AI", "物理", "設計"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> LegoGPT AIが物理的に安定して組み立てられるレゴを生成！

引用元：[https://news.ycombinator.com/item?id=43933891](https://news.ycombinator.com/item?id=43933891)




{{<matomeQuote body="記事の安定化の話、AIって手動で制約を与えて，その中で自由にアイデアを出させるのが面白い使い方だと思うんだよね．例えば信号機みたいに，衝突しない組み合わせだけを許容する制約を設定すれば，AIはその中で最適なパターンを見つけられる．問題は制約設計だよ．レゴの場合は組み方と安定性が制約になるね．" userName="haberman" createdAt="2025/05/09 06:59:43" color="#38d3d3">}}




{{<matomeQuote body="ドメイン固有の制約内で可能性を生成・最適化って，それ数十年も前からやってるmetaheuristicsってやつだよ．アルゴリズムは色々あるんだ．軽い入門書ならここにあるよ：https://cs.gmu.edu/~sean/book/metaheuristics/" userName="benterix" createdAt="2025/05/09 07:37:23" color="#38d3d3">}}




{{<matomeQuote body="Metaheuristics？それって’隠れ層にニューロンいくつとか，隠れ層の数も分からないから，最適化問題にして勝手に探させよう’ってのに似てると思ってたんだけど．" userName="eurekin" createdAt="2025/05/09 08:38:30" color="">}}




{{<matomeQuote body="それ，だいたいHyperparameter tuningって呼ばれてるよ．" userName="PeterStuer" createdAt="2025/05/09 09:16:59" color="#38d3d3">}}




{{<matomeQuote body="Hyperparameter tuningに関して，OptunaとかKatib（KubeFlowの）みたいな既存ソリューションも，e.g. CMA-ESみたいなmetaheuristicsを使ってるよ．" userName="benterix" createdAt="2025/05/09 10:40:53" color="#ff33a1">}}




{{<matomeQuote body="リンク先のmetaheuristicsの説明（候補に評価をつける）は，’AIが車が衝突する解を出したから，その解に悪い評価をつけよう’って聞こえるね．俺が期待してたのは，’無効な解は最初から生成されないように問題を定義する’ってアプローチなんだけど．" userName="haberman" createdAt="2025/05/09 15:54:30" color="#ff5c5c">}}




{{<matomeQuote body="’無効な解が生成されない’モデルなんてどうやって作るんだ？’車が衝突しない’モデルなんてありえないよ．避けられない衝突で被害を抑える余地だってある．結局，最適化には段階的な評価（sliding scales）の方がずっと良いんだ．" userName="kmacdough" createdAt="2025/05/09 16:56:38" color="#ff33a1">}}




{{<matomeQuote body="俺は元の投稿（コメント970）の信号機の文脈で話してたんだ．衝突しない青信号の組み合わせは簡単に列挙できる．つまり，現実ではありえない組み合わせ（全部青とか）を最初から排除するってこと．AIはその中で選ぶだけ．赤無視は防げないけど，可能な範囲で最適化できるんだ．" userName="haberman" createdAt="2025/05/09 17:51:56" color="#785bff">}}




{{<matomeQuote body="’無効な解が生成されない’ってのは，Hyperparameter tuningで上限・下限を決めるのに似てて，そういう風に機能することもあるよ．でも，何が適切か分からず，境界にぶつかったら広げなきゃいけない，みたいな難しさもあるんだ．" userName="dvfjsdhgfv" createdAt="2025/05/09 16:06:09" color="#ff5733">}}




{{<matomeQuote body="ありがとう，でも奇妙な偶然だけど，それちょうど今俺が持ってる本なんだ．序文に著者が「これらのノートは教科書の補足として最適だと思う」って書いてるんだよね．そのトピックの良い教科書，何か知ってる？" userName="jllyhill" createdAt="2025/05/09 09:25:46" color="">}}




{{<matomeQuote body="人それぞれ好みはあるけど、俺にはこの人のMetaheuristicsの本が役に立ったよ。これ→ https://www.youtube.com/watch?v=ksK-XzkSQlk" userName="benterix" createdAt="2025/05/09 15:00:35" color="">}}




{{<matomeQuote body="てかさ、もっと広い範囲だとCombinatorial Optimizationっていう分野全体の話だよ。Metaheuristicsはその中のほんの一部分。" userName="mzl" createdAt="2025/05/09 11:28:35" color="">}}




{{<matomeQuote body="その「小さい部分」ってのは原理的にはその通りだと思うよ。でも個人的には、実際の現場だとMetaheuristicsって超重要ででかい分野だって感じてる（どれくらいって言われると難しいけどね）。" userName="dvfjsdhgfv" createdAt="2025/05/09 16:07:59" color="">}}




{{<matomeQuote body="既存のLLMでもう使える簡単な例はJSON Schemaモードだよ。これ使うと、ルール違反の状態を作りづらくできるんだ。制約付きの環境でモデルを動かせば、少なくとも正しいかはともかく、有効な出力は保証される。LLMの出力に型安全性を与えるみたいな感じ。JSON Schemaみたいな仕組みは他の検証にも使えるし、こういうのどんどん増えてほしいな！" userName="lolinder" createdAt="2025/05/09 13:37:41" color="#ff5733">}}




{{<matomeQuote body="こういうのってさ、たぶんMILPとかCLPみたいなモデル使うんじゃないの？制約で探す範囲を決めて、ソルバーってのがそこを探索するんだよ。" userName="zelos" createdAt="2025/05/09 08:29:14" color="">}}




{{<matomeQuote body="どうやって制約かけてるかは読んでないんだけどさ、LLMにJSONみたいな決まった形式で出力させる時も似たようなことやってるよね。例えばllama.cppだとカスタムグラマーを指定できたりするし。" userName="Narew" createdAt="2025/05/09 07:13:34" color="">}}




{{<matomeQuote body="Combinatorial Chemistryみたいなもんだね。でもさ、注目浴びたいならAI Chemistryって呼んだ方が絶対ウケるよ。これ見て→ https://en.wikipedia.org/wiki/Combinatorial_chemistry" userName="jgalt212" createdAt="2025/05/09 11:39:08" color="">}}




{{<matomeQuote body="ウケるとかじゃなくて、お金のためだよ。どんなすごいアルゴリズム使っててもさ、「AI”」ってラベル貼っときゃ投資集めやすくなるっぽいよ（もしそれが目的だったらね）。" userName="dvfjsdhgfv" createdAt="2025/05/09 16:26:08" color="">}}




{{<matomeQuote body="面白い実験してみて：LLMに「APPLEって言って”」って聞くけど、コードで「Apple”」って単語の可能性をゼロにしちゃうの。<br>そしたら出力はこんな感じになるよ：「バナナ。あ、冗談だよ。バナナ。おいしいから間違えちゃった。もう一回やってみよう：オレンジ。あれ、グレープって言うつもりだった。いや、美味しくてカリカリのフルーツ、キャロットって言いたかったんだ”」ってさ...。" userName="londons_explore" createdAt="2025/05/09 08:45:21" color="#ff5733">}}




{{<matomeQuote body="そうそう、注意ね。元の記事の信号機問題も同じような問題抱えるだろうね。<br>つまり、賢いモデルは言えないって分かってるから、次にいい答えを出そうとするんだよ。例えば「A P P L E”」って言ったり、「すみません、それはできません”」って返したりね。<br>でも、制約かけられただけのモデルは、自分が何を制限されてるか分かってないから、許可されてないことを延々やろうとするんだ。モデル自身は「間違えちゃった、直さなきゃ」って思ってるから、禁止されてることをまたやろうとしたりもする。" userName="londons_explore" createdAt="2025/05/09 08:48:36" color="#ff5733">}}




{{<matomeQuote body="制約付き最適化の分野全体があるけど，それはLLMsとは違うやり方だよ．" userName="adammarples" createdAt="2025/05/09 10:24:27" color="">}}




{{<matomeQuote body="知ってる単語が出てこない時の脳みそみたいだね．普通の人間と大して変わらないと思うけど，単語を探してる時に物理的な何かを”感じる”ことができるんだ．それが何なのかずっと不思議だったよ．" userName="jcims" createdAt="2025/05/09 11:44:30" color="">}}




{{<matomeQuote body="これと全く同じことを，最初の作曲家は誰かって質問で見たよ．モデルはBoethiusって出し続けて，それから「NO！」って言うんだ．まるで自分のFreudian slipsから逃れられないみたいだった．" userName="stavros" createdAt="2025/05/09 16:30:40" color="">}}




{{<matomeQuote body="これに同意．物理，法律，ツール制限なんかで生成を制約すると，モデルは単なる単語予測じゃなくて，検索・検証エンジンになるんだ．プログラム合成に近いね．本当の価値はその upstream だよ．問題をしっかり定義して，モデルが使えるものだけを生成するように追い込むこと．" userName="giordanol" createdAt="2025/05/09 12:50:14" color="#ff5733">}}




{{<matomeQuote body="エラーフィードバックが，最初の約束をいくつか実現できる唯一のものみたいだね．例えば，text-to-SQL botに同じアイデア（SQLプロバイダーからのエラーフィードバック）を与えると，価値のあるクエリを生成する成功率がずっと高くなるんだ．" userName="bob1029" createdAt="2025/05/09 12:17:56" color="#45d325">}}




{{<matomeQuote body="めっちゃ同意！ これこそAIが一番輝く場所だと思うよ．物理とか交通安全みたいなゲームのルールは人間が決めて，AIには最適解を見つけるための膨大な探索空間を探検させよう．" userName="KurSix" createdAt="2025/05/09 10:24:17" color="#ff5733">}}




{{<matomeQuote body="Reinforcement Learningに興味あるかもね．システムにマイナス報酬を与えれば，最終的には安全ルールに従うようになるかもしれないよ．本番で使うときは，それでも安全装置はつけておくのが賢明だけどね．" userName="smokel" createdAt="2025/05/09 18:46:02" color="#ff33a1">}}




{{<matomeQuote body="これ，多分LEGOの弁護士から手紙が来るぞ．安全でいたいならLEGOって単語は使わない方がいい．Bricksとかドイツ語の”Klemmbausteine”を使え．たくさんの人がLEGOの弁護士とやり合ってて，あれは大変らしい．" userName="sschueller" createdAt="2025/05/09 06:40:24" color="#ff5733">}}




{{<matomeQuote body="なんでSegaみたいになれるのにNintendoみたいなんだよ？ コミュニティがいる場所で受け入れろって．" userName="edoceo" createdAt="2025/05/09 06:42:38" color="">}}




{{<matomeQuote body="Trademark lawだとそういう余地はないんだよ．The Lego Groupは積極的に商標を守る必要がある．つまり，LegoGPTみたいな名前は「それやっちゃダメでしょ」の分かりやすい例なんだ．" userName="Freak_NL" createdAt="2025/05/09 07:51:31" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Sega’s [0] main businessはパチンコ（so gambling）なんだ．彼らにとってSonic brandがファンに使われることはほとんど影響がない，むしろ他のブランドへの必要な好感度を築いてくれるかもね．そこがNintendoとは根本的に違うところだよ．[0] https://en.m.wikipedia.org/wiki/Sega_Sammy_Holdings" userName="makeitdouble" createdAt="2025/05/09 08:23:27" color="">}}




{{<matomeQuote body="登録商標はLEGOで，全部大文字だよ．あと，彼らはこういうファンメイドのものに対してはあまり訴えたりしない傾向があるね．いくつかググった感じでは，彼らは利益を食い潰してる偽物業者に対しては厳しく対応してるみたいだよ．" userName="cluckindan" createdAt="2025/05/09 09:33:23" color="#ff5c5c">}}




{{<matomeQuote body="これは学術研究だし，フェアユースにあたるんじゃないかな．" userName="amelius" createdAt="2025/05/09 09:10:53" color="">}}




{{<matomeQuote body="彼らは実際にactual LEGO bricksを使ってるから，何かを誤って伝えてるわけじゃないね．グレーゾーンは，彼らがLEGO the companyと提携してないことをはっきり明記してないところだよ．一方で（OTOH），彼らは何も収益化しようとしてないみたいだから，LEGOから売上を傷つけてるって主張されるリスクは低いと思うよ．" userName="necovek" createdAt="2025/05/09 12:00:20" color="#ff33a1">}}




{{<matomeQuote body="Fair UseはCopyrightの話で，四要素テストがあるんだ．TrademarkはCopyrightとは違うよ．違いを学ぶのは教育的だし．．．そして金銭的にも賢明かもね．" userName="6stringmerc" createdAt="2025/05/09 16:47:09" color="#ff5733">}}




{{<matomeQuote body="一方（Meanwhile），Amazonはこの”Boy and Tiger Adventure Blocks Set”なんていうのを喜んで売ったり宣伝したりしてるよ．これはLEGOとCalvin ＆ Hobbesの両方をパクってるね：https：//www．amazon．com/Adventure-Rotatable-Compatible-Charac．．．" userName="andrewchilds" createdAt="2025/05/09 14:51:49" color="">}}




{{<matomeQuote body="全く同意だよ．これは企業のいじめだって非難されるレベルを遥かに超えてるべきだね．Legosって言うのと，製品名に積極的にbrand nameを入れるのは全然別のことだよ！NikeGPT，CocaColaGPT，IkeaGPTも同じ問題に直面するだろうね 😉" userName="MrOrelliOReilly" createdAt="2025/05/09 08:50:12" color="">}}




{{<matomeQuote body="（最初は）ファンメイドのものでも，注目されるくらい大きくなると，名前に’Lego’を入れることはできなくなるのが普通なんだ．大抵は代わりに’brick’のバリエーションが使われるよ（例えば，Bricklink，Rebrickable，EuroBricksとかね）．" userName="Freak_NL" createdAt="2025/05/09 10:28:15" color="#ff5733">}}




{{<matomeQuote body="あらゆる発言を攻撃する必要はないけど、’LegoGPT’みたいな名前は保護されてないよ。" userName="shakna" createdAt="2025/05/09 08:52:24" color="">}}




{{<matomeQuote body="Sega’sゲームがたくさんモバイル向けになってるの面白いね。あと忘れちゃいけないのが、Sega は元々日本にコインゲーム機を輸入したり、スロットマシンやジュークボックスを製造したりしてたんだよ。https://en.m.wikipedia.org/wiki/History_of_Sega" userName="MrsPeaches" createdAt="2025/05/09 08:52:37" color="">}}




{{<matomeQuote body="すぐに同じこと考えたよ！これ、近いうちにやられちゃうね" userName="ChrisRob" createdAt="2025/05/09 07:50:28" color="">}}




{{<matomeQuote body="Ripping off Calvin and hobs はパクってるかもだけど Lego は違うね。https://en.wikipedia.org/wiki/Hilary_Page#KiddicraftLego はそれ以前の連結ブロックのデザインが元になってるんだ。手頃な価格と高い精度、耐久性ですごく有名になっただけで、コンセプトを発明したわけじゃない。それに、元の機能特許はずいぶん前に期限切れになってるよ。" userName="Retric" createdAt="2025/05/09 15:15:17" color="#785bff">}}




{{<matomeQuote body="ヨーロッパの商標は登録必須だから、防御に必要な範囲は慣習法の商標を守るのに比べてかなり弱いんだ。" userName="anticensor" createdAt="2025/05/11 07:05:52" color="">}}




{{<matomeQuote body="Fair Use ！＝ Fair use だよ。https://www.inta.org/fact-sheets/fair-use-of-trademarks-inte..." userName="amelius" createdAt="2025/05/09 19:05:43" color="">}}




{{<matomeQuote body="IANAL、だけど EU 法には”fair use”はないんだよね。許可（または支払い）がいらない”非常に特定の”利用ケースはあって、USの”fair use”の原則より限定的だと思う。EU だから、研究に関しては著者たちに有利に働くかもしれない特殊な規則がたくさんあるんだろうね。" userName="msiebuhr" createdAt="2025/05/09 12:07:20" color="">}}




{{<matomeQuote body="BrickLink は商業的なサイトで、Rebrickable もそう。EuroBricks には LEGO の中の人もいるユーザーがいるみたいだね。" userName="cluckindan" createdAt="2025/05/09 21:13:15" color="">}}




{{<matomeQuote body="数億円の大学が論文や宣伝目的でバックについてるのは、趣味でやってる人たちとは全然違うんだよ、少なくとも俺はそう思う。まあ、俺はゼロからIPを生み出す本当の意味でのクリエイターの超少数派だから、”さっさと作って壊せ”みたいな考え方とは視点が全然違うけどね。" userName="6stringmerc" createdAt="2025/05/09 16:49:36" color="">}}




{{<matomeQuote body="YouTubeとか個人の趣味サイトですら、名前を間違った文脈で使っただけで削除依頼が来てるらしいよ。" userName="KurSix" createdAt="2025/05/09 10:27:22" color="">}}




{{<matomeQuote body="Legoって言うのは全然大丈夫だし、中古のLegoを売るのも本物のLegoブロック使ってますって書けばOKだよ（転売に関する法規で認められてるだけだけどね）。でも、Lego Groupの公式企画みたいに見えたり、改造したLegoブロックを売ったりするのは超嫌がるみたい。改造Legoブロックは絶対に売っちゃダメ。" userName="Freak_NL" createdAt="2025/05/09 10:32:37" color="#45d325">}}




{{<matomeQuote body="商標法の性質とか意図について、めっちゃ無知な考え方だね。どっちみち現実を知ることになると思うよ。よく言うけど、裁判じゃ君の感情なんて関係ないから。" userName="6stringmerc" createdAt="2025/05/09 16:45:58" color="">}}




{{<matomeQuote body="彼らは多分”特許”文化があるんだろうね。歴史的に見ても、Kiddicraftっていう会社の既存のロック式ブロックのコンセプトを再利用して、もっとしっかりロックできるようにする方法を見つけて…元々その会社や他の会社が実装する前に特許取って市場を制したんだから。有名になったのは半分は技術的な理由、半分は法務部門のおかげって言えるかもね…" userName="ygouzerh" createdAt="2025/05/09 11:27:44" color="">}}




{{<matomeQuote body="これ、あんまりすごい結果に見えないな。使ってるブロックも少ないし、出来上がりも目指したものとあんまり似てない。手作りのアルゴリズムの方がずっと良い結果になる気がする。" userName="stevage" createdAt="2025/05/09 08:42:29" color="#38d3d3">}}




{{<matomeQuote body="でも、ここでのすごいところはフォトリアルさじゃなくて、言語理解と物理的に組み立てられることの組み合わせだと思うな。" userName="KurSix" createdAt="2025/05/09 10:28:38" color="#38d3d3">}}




{{<matomeQuote body="あれさ，テクスチャ（偽物だけど）があるからちょっと形になってるだけで，普通の色のブロックだったらただのレゴの塊だよ．" userName="tokai" createdAt="2025/05/09 12:43:37" color="">}}




{{<matomeQuote body="なんかさ，持ってるブロックの山を写真で読み込ませたら，それで作れるものの設計図出してくれるAIが必要だよね．今の技術なら全然できると思うけど，専用のモデルを学習させる必要はあるだろうね．" userName="otabdeveloper4" createdAt="2025/05/09 08:44:50" color="#ff33a1">}}




{{<matomeQuote body="もうそういうアプリあるよ．持ってるブロックの写真を撮ると，大量の既存モデルの中から作れるやつを選んでくれるの．でも，あれは結構前からあるから，今みんながAIって呼んでるのとはちょっと違うかも（ブロック識別に古いML技術使ってて，作れる設計図はDB検索で見つける感じ）．" userName="dspillett" createdAt="2025/05/09 09:17:57" color="#ff5733">}}




{{<matomeQuote body="もうあるよ．LEGOが出してる．<br>https://brickit.app/" userName="Spellman" createdAt="2025/05/09 18:15:07" color="#38d3d3">}}




{{<matomeQuote body="あれ使ってみたけど，信じられないくらい簡単なものしか作れないよ．みんなが想像してるような複雑なやつじゃないんだよね．" userName="Loughla" createdAt="2025/05/09 19:52:42" color="">}}




{{<matomeQuote body="俺が一番興味あるのは，ブロックやパーツの山からモデルを組み立てられるロボットだな．" userName="amelius" createdAt="2025/05/09 09:12:36" color="">}}




{{<matomeQuote body="これ，ファインチューニングされた1Bモデルだと考えたらすごくクールだね．" userName="nkko" createdAt="2025/05/09 10:54:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="記事のページにバグがあるよ（少なくともiPhoneだとね）．GIFのところまでスクロールすると，勝手に読み込み始めて，その時点でもうどこにも移動するのがすごく大変になるんだ．" userName="jader201" createdAt="2025/05/09 06:06:38" color="#38d3d3">}}




{{<matomeQuote body="いつになったらみんな，自動再生しないってことを学ぶんだろうね．" userName="Aeolun" createdAt="2025/05/09 06:13:28" color="">}}




{{<matomeQuote body="オートプレイはいいんだけどさ、Safariが勝手にフルスクリーンで再生するのが問題なんだよ。Firefoxとかだと普通の動画コンテナで再生されるんだけどね。" userName="vachina" createdAt="2025/05/09 07:07:48" color="">}}




{{<matomeQuote body="俺のFirefox Desktopだと逆なんだよ。gifだって気づかなくて、あの画像が何を伝えたいのか不思議に思ってたんだ。" userName="pragmatick" createdAt="2025/05/09 06:40:44" color="">}}




{{<matomeQuote body="これ、動画要素にplaysinlineつければ直せるはずだけどね。Mozillaの開発者向けサイトに情報あるよ。iOSのデフォルト動作なのはマジうざいけど。" userName="MangoTec" createdAt="2025/05/09 09:41:23" color="">}}




{{<matomeQuote body="LEGO組み立てるのに自動化はいらねえんだよ―それが楽しいとこなんだし、自分でやりたいんだよ。俺が自動化してほしいのは、組み立てた後。片付けとか、色や形ごとにブロックを仕分けるとか、ちゃんと保管するとか。科学者にはさ、マジで現実世界にある問題を解決することから始めてほしいんだよね。そこにマジな価値も金もあるんだよ。" userName="RaSoJo" createdAt="2025/05/09 09:26:58" color="#785bff">}}




{{<matomeQuote body="LEGO2メートルトンの仕分けっていう面白い記事があるよ（2017年）。あと、人工知能搭載のLEGO仕分けマシンが1万個のLEGOで作られた話もあるよ（2019年）。どっちもリンク貼っとくね。" userName="shagie" createdAt="2025/05/09 19:11:54" color="#ff5733">}}




{{<matomeQuote body="マジでその通りだわ。ホントのイノベーションって、楽しい部分を簡単にするんじゃなくて、つまんない部分を消し去ることだったりするんだよね。" userName="KurSix" createdAt="2025/05/09 10:25:36" color="#45d325">}}




{{<matomeQuote body="このコメント書きにきたよ。片付けと仕分けがLEGO界の一番の問題だよね。" userName="joeyparsons" createdAt="2025/05/09 17:20:42" color="">}}




{{<matomeQuote body="これマジやばい！オブジェクトが組み立てられていくGIFがもう美味しくてたまらん。他に表現のしようがないね；データセット探してる人がいたら、huggingfaceにあるよ。ShapeNetCoreデータセットから2万8千＋のユニークな3Dオブジェクトを含む4万7千＋の異なるLEGO構造が入ってるよ。ローカルでの推論方法はgithubページを見てね。" userName="yathaid" createdAt="2025/05/09 06:26:12" color="#ff33a1">}}




{{<matomeQuote body="「ベーシックなソファ」のアニメーション見て気づいたんだけど、アニメの順番通りに作ると浮いてるブロックが出てくる箇所があるね。このモデルがどうデザインを生成してるか示唆してるね。生成されたLEGO構造をロボットで自動組み立てするの、多分かなり大変だと思うわ。" userName="psiops" createdAt="2025/05/09 07:47:50" color="#ff5733">}}




{{<matomeQuote body="それ言いに来たわ．見てすぐ思ったんだけど，これ完成形はいいけど，組み立てアニメの通りじゃ無理じゃね？まず土台のソファ部分を２段で作って，上の層で下の層のブロックを固定しなきゃ．そんでから脚につけるんだよ．" userName="sdoering" createdAt="2025/05/09 07:55:59" color="#785bff">}}




{{<matomeQuote body="ほんとそれ．実際のロボットがどうやってあのソファ作るのかマジで見たいわ．まあ，ロボットはモデル自体には関係ないけど，ちょっとしたオマケって感じだよね．" userName="paulluuk" createdAt="2025/05/09 10:51:35" color="">}}




{{<matomeQuote body="５万ドルもするロボットがたった数ドルのLego組み立てるのにあんな時間かかってるの笑えるわ．なんかロボットの老人ホーム見てるみたい．" userName="gilgoomesh" createdAt="2025/05/09 06:15:05" color="">}}




{{<matomeQuote body="それがさ，なんでいまだに欧米じゃなくてAsiaで手作業で組み立てられてるかの理由だよ．" userName="FirmwareBurner" createdAt="2025/05/09 06:27:03" color="">}}




{{<matomeQuote body="反論として，実装ライン動画https://youtu.be/Ca-SoKzjh4M?t=110を紹介．SMT部品配置はブロック配置とそんな変わらない．手作業不要なPCB設計できれば組立費用は場所に関係ないって言われてる．SMT実装は１時間に20万個の速度も出せるんだ．［1］ https://www.hallmarknameplate.com/smt-process/" userName="femto" createdAt="2025/05/09 07:24:05" color="#45d325">}}




{{<matomeQuote body="ほとんどの場所で固定具へのセットは自動化されてないよ．まあ，ガントリー式のCNCマシンは垂直にネジを打てるけど，そもそも治具に部品をセットするのは人間が必要なんだ．" userName="imtringued" createdAt="2025/05/09 08:33:32" color="#785bff">}}




{{<matomeQuote body="ディスプレイとかキーボード，リボンケーブルやケースを使った最終組み立てみたいな，高い器用さが求められる作業は今でも人間が手でやってるんだよ．" userName="FirmwareBurner" createdAt="2025/05/09 09:00:47" color="#ff5c5c">}}




{{<matomeQuote body="だからさ，将来ロボット（とかAI）に支配されるって心配するのやめても大丈夫だよ．" userName="smikhanov" createdAt="2025/05/09 06:51:47" color="">}}




{{<matomeQuote body="いや，もう問題だよ．AIは物理より認知タスクにとって脅威．SkynetはTerminatorsで襲うんじゃなく，就職応募や保険申請，クレジットスコアを自動却下したり，SNSで身内を洗脳したりする方．" userName="FirmwareBurner" createdAt="2025/05/09 07:03:27" color="#ff5733">}}




{{<matomeQuote body="全くその通り．でも違いが．”クール”なTerminator Skynetは自分で目標追い，人間が殺すようプログラんだわけじゃない．”つまらない”保険却下Skynetは，残念ながら他の人間によって保険申請を却下するよう明確にプログラんだ．だからやっぱり，AIの支配者より，AIシステム動かす人間を心配すべき．" userName="smikhanov" createdAt="2025/05/09 07:49:34" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
