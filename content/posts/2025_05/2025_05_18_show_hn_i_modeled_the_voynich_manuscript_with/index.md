+++
date = '2025-05-18T00:00:00'
months = '2025/05'
draft = false
title = 'ヴォイニッチ手稿をSBERTでモデル化！構造を検証'
tags = ["ヴォイニッチ手稿", "SBERT", "NLP", "AI", "構造分析"]
featureimage = 'thumbnails/green3.jpg'
+++

> ヴォイニッチ手稿をSBERTでモデル化！構造を検証

引用元：[https://news.ycombinator.com/item?id=44022353](https://news.ycombinator.com/item?id=44022353)




{{<matomeQuote body="PCAでクラスター探してるみたいだけど、PaCMAPとかLocalMAPみたいな新しい次元削減アルゴリズムでもっと深い構造探してみたら？—<br>Pol.is関連のプロジェクトで使ったら、すごく新しい発見があったんだよね！<br>（詳しいリンクは省略するね）<br>（Sorry，PCでしかうまく動かないかも）" userName="patcon" createdAt="2025/05/18 18:49:05" color="#785bff">}}




{{<matomeQuote body="教えてくれてありがとう！— PaCMAPとかLocalMAPは知らなかったんだけど，これ絶対PCAより構造保つアプローチでこのデータに合いそうじゃん．Appreciate the nudge — もうちょっと深く調べてみるよ．" userName="brig90" createdAt="2025/05/18 19:01:41" color="">}}




{{<matomeQuote body="Try TDA（”mapper”，or really，anything based on kernel density computed connectivity），it’s a whole new world．<br>This ain’t your parents’ ”factor analysis”．" userName="loxias" createdAt="2025/05/19 03:21:14" color="">}}




{{<matomeQuote body="Ooooo I will definitely check it out！ It’s strangely hard to find any comparisons in youtube videos — it seems TDA isn’t actually a dimensional reduction algorithm，but something closely relayed，maybe？" userName="patcon" createdAt="2025/05/19 16:24:09" color="">}}




{{<matomeQuote body="LLM model interpretability also uses Sparse Autoencoders to find concept representations（https://openai.com/index/extracting-concepts-from-gpt-4/），and，more recently，linear probes．" userName="khafra" createdAt="2025/05/19 11:04:00" color="">}}




{{<matomeQuote body="I’ve had much better luck with umap than PCA and t-sne for reducing embeddings．" userName="staticautomatic" createdAt="2025/05/18 20:03:51" color="">}}




{{<matomeQuote body="PaCMAP（and its descendant localmap）are comparable to t-sne at preserving both local and global structure（but without messing much with finicky hyperparameters）<br>https://youtu.be/sD-uDZ8zXkc" userName="patcon" createdAt="2025/05/18 22:43:43" color="#38d3d3">}}




{{<matomeQuote body="使ってるparaphrase-multilingual-MiniLM-L12-v2モデルって4年前のだから、もう古いんだよね．<br>最近のモデルは小さいのでも性能すごい上がってるから、Voynich Manuscriptみたいに未知の言語には新しいモデルの方が合うかも．<br>あと、昔ながらのNLP手法（語尾とるとか）は文脈消してかえって品質下げるかもって注意ね．" userName="minimaxir" createdAt="2025/05/18 17:01:51" color="#ff5733">}}




{{<matomeQuote body="Totally fair — I defaulted to paraphrase-multilingual-MiniLM-L12-v2 mostly for speed and wide compatibility，but you’re right that it’s long in the tooth by today’s standards．I’d be really curious to see how something like all-mpnet-base-v2 or even text-embedding-ada-002 would behave，especially if we keep the suffixes in and lean into full contextual embeddings rather than reducing to root forms．<br>Appreciate you calling that out — that’s a great push toward iteration．" userName="brig90" createdAt="2025/05/18 17:04:58" color="#ff5733">}}




{{<matomeQuote body="Be careful：they have super short context length AND silently crop if the text is too long．To me there is really no reason to use them．<br>I recommend ollama to run the artic-embed-v2 model，it also is multimingual and you can use —quantize when loading the modelfile to get it even smaller．" userName="Ey7NFZ3P0nzAe" createdAt="2025/05/23 05:41:46" color="#45d325">}}




{{<matomeQuote body="NLPわかんないんだけどさ、対照群で検証するのってどうなの？<br>例えば、人間が言語っぽくても言語じゃないものを書いて、それで同じプロセス（接尾辞取ったり、グループ化したり）やってみたら、似た結果になるかな？" userName="thih9" createdAt="2025/05/18 19:15:23" color="#ff33a1">}}




{{<matomeQuote body="仮にCardan grilleみたいな書き方の仮説があるならさ、そのやり方でテキスト作ってみて、同じ特徴が出るか見たらいいんじゃない？" userName="flir" createdAt="2025/05/19 02:47:38" color="#38d3d3">}}




{{<matomeQuote body="うん、まさにそれだよね。なんで単純に100人にヴォイニッチ手稿っぽいの書かせて、そのデータセットで訓練しなかったのさ。" userName="awinter-py" createdAt="2025/05/18 23:15:17" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと手稿見たんだけど、イラストそばの文字の詰まり方が怪しいんだよね。<br>普通の言葉は行末で自然に改行するけど、手稿にはそれがない。<br>行末に詰め込めそうな文字全部書いてるように見えた。<br>行末・行頭の文字を分析したかったけど、転写版見つからなかった。<br>素人意見だけど、凝ったアートかデマだと思う。" userName="cedws" createdAt="2025/05/19 13:36:04" color="#ff33a1">}}




{{<matomeQuote body="言語によってはさ、行末で単語を分割してやったりもするんだよ。" userName="IAmBroom" createdAt="2025/05/19 19:29:04" color="#ff5c5c">}}




{{<matomeQuote body="UMAPとかt-SNEもいいんじゃない？PCAでも綺麗に分かれてるけどね。<br>各クラスターを他のクラスター全部に参照マッピングするのもさ、分析に残ってるばらつきが無いって示すのに良い方法だと思うよ。" userName="tetris11" createdAt="2025/05/18 16:44:41" color="#ff5733">}}




{{<matomeQuote body="めっちゃいい指摘ありがとう。<br>PCAで綺麗に分かれたから最初はそれで行ったんだけど、君の言う通りUMAPやt-SNEはより細かいパターンを捉える非線形の視点くれるね。<br>クラスター間の参照アイデアもいいな。どれだけ信号捉えられてるかテストする次のステップだって思った。<br>フォローアップで試すかも。アドバイス感謝だよ。" userName="brig90" createdAt="2025/05/18 16:46:56" color="#38d3d3">}}




{{<matomeQuote body="この参照マッピングって、どうやるのか例ある？<br>他の分野の埋め込みでこれに興味あるんだけど、NLPはあんま経験なくてさ。" userName="lukeinator42" createdAt="2025/05/18 17:42:03" color="#45d325">}}




{{<matomeQuote body="具体的な例はないけど、基本的には各クラスターへのアンカーポイント使って共有最近傍法やるんだよ。<br>これが補正ベクトルになって、あるデータセットから別のデータセットに投影できるわけ。" userName="tetris11" createdAt="2025/05/18 19:05:18" color="#45d325">}}




{{<matomeQuote body="PCAで綺麗に分かれた時は、個人的にはUMAPは使わないかな。<br>点の相対距離が解釈しやすいし。<br>t-SNEは絶対避ける。プロットの距離ほぼ無意味だし。（これは個人的な好みね。）" userName="jszymborski" createdAt="2025/05/18 16:50:58" color="#ff5c5c">}}




{{<matomeQuote body="PCAでうまく分離できるなんて、データがめっちゃきれいかパターンが分かりやすいときくらいだよ。簡単なMNISTデータセットでもPCAじゃきれいに分かれないしね。<br>https://github.com/lmcinnes/umap_paper_notebooks/blob/master..." userName="minimaxir" createdAt="2025/05/18 19:34:45" color="">}}




{{<matomeQuote body="”めっちゃ珍しい”ってのは俺の経験とは全然違うなー。ちゃんと学習された埋め込みならよくあることだよ。<br>それに、分離できたからって見た目が超役立つわけじゃないんだよね。t-SNEとかだと、クラスター間の距離が実際の距離と全然違ったりするし。きれいに分かれて見えるけど、点の関係性が歪んじゃうこともあるんだよ。" userName="jszymborski" createdAt="2025/05/18 20:57:36" color="#ff33a1">}}




{{<matomeQuote body="これ、めっちゃ面白いね。https://www.voynich.ninja/index.php<br>にリンク貼るといいかも。<br>SBERTとかNLP詳しくないけど、SBERTは文章使うのにヴォイニッチ手稿に文章区切りないのが気になるな。”Strips common suffixes...”も、ヴォイニッチの単語が接頭辞＋接尾辞だとすると、情報半分捨てることになるんじゃない？<br>自分の方法が、ちゃんとした言語、意味不明なの、暗号文でどう動くか試してみては。<br>俺も似たテキスト作ってるよ：https://fmjlang.co.uk/voynich/generated-voynich-manuscript.h...<br>EVA版：https://fmjlang.co.uk/voynich/generated-voynich-manuscript.t..." userName="DonaldFisk" createdAt="2025/05/19 12:46:36" color="#38d3d3">}}




{{<matomeQuote body="READMEで見落としたかもだけど、「単語」の最初のエンコードってどうやったの？例えば”okeeodair”みたいな単語は、元のシンボルにどうマッピングしたの？" userName="Avicebron" createdAt="2025/05/18 16:41:48" color="">}}




{{<matomeQuote body="うん、その通り！”okeeodair”みたいな単語は、EVA翻字ファイルから直接来てるんだ。あれは元のヴォイニッチの文字をASCIIに変換したものなんだよ。だから俺は文字そのものじゃなくて、EVA（European Voynich Alphabet）システムに基づいた、標準化された翻訳後の単語を使って作業してるんだ。<br>このプロジェクトでは何も文字に戻してないよ。全部、あのEVA翻字をスタート地点にして作ってるんだ。<br>だからもしデータセットに”okeeodair”があるなら、それは俺よりずっと賢い誰かが、あの文字の並びを見てそう呼ぶことに同意したからなんだ。" userName="brig90" createdAt="2025/05/18 16:45:39" color="#ff5733">}}




{{<matomeQuote body="これ、一番面白い仮説の一つだと思うんだ：http://voynichproject.org/<br>この人、ヴォイニッチがゲルマン語だって仮定して、結構進展できたみたい。<br>ウラル語族とかフィン・ウゴル語族かもって話も聞いたことあるよ。君の手法、すごくいいと思うし、特定の語族に合わせて調整したらもっと進むか、めっちゃ興味あるな。" userName="us-merul" createdAt="2025/05/18 16:55:49" color="#38d3d3">}}




{{<matomeQuote body="このスレッドで、色んな”解読した！”って主張が議論されてるよ：https://www.voynich.ninja/thread-4341.html<br>Bernholzさんのサイトはいいんだけど、Childさんの研究は手稿の解読にはあんまり役立たないかな。" userName="veqq" createdAt="2025/05/18 17:44:24" color="">}}




{{<matomeQuote body="この手稿が全然解読できないのを見ると、俺の個人的な説は、これ naive artist の作品で、中に言語はないんじゃないかってことなんだ。つまり、言語のルールを知らずに、それっぽく真似して描いただけ。<br>https://en.wikipedia.org/wiki/Naïve_art<br>精神的な問題とかじゃなくて、たまにある珍しいことなんだって。ヴォイニッチ手稿、naive artist の作品って説明にめっちゃ当てはまるんだよね。" userName="philistine" createdAt="2025/05/19 02:21:35" color="">}}




{{<matomeQuote body="んで、あのナイーブなアーティストがどうにかしてZipf’s lawに従う作品を作ったわけ？ それも発見される4世紀も前に？" userName="cronopios" createdAt="2025/05/19 07:30:23" color="#ff5733">}}




{{<matomeQuote body="ランダムなテキストとか、月のクレーターや地震みたいな自然現象もZipf’s lawに従う分布を示すんだって。だからVoynich Manuscriptの単語頻度がZipf’s lawに従うからって、自然言語で書かれてる証拠にはならないんだよ。" userName="DonaldFisk" createdAt="2025/05/19 12:23:22" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="君だけじゃないよ。多くの人が、独特な字形からこれはただのでっち上げのでたらめだって説を立ててるんだ。<br>最近の詐欺じゃなくて、古代のね。<br>中世やルネサンス期には、Donation of ConstantineとかPreserve John’s letterとか、偽文書なんて山ほどあったわけだし。" userName="riffraff" createdAt="2025/05/19 06:02:47" color="#45d325">}}




{{<matomeQuote body="君の言い方じゃ誤解されるよ。hoax／scamやfakeじゃなくて、作った人は存在しないものを作るのに真剣だったんだ。<br>人を騙すつもりはなかったと思う。<br>D＆Dキャンペーンを存在しないものが出てくるからってhoax呼ばないでしょ？" userName="philistine" createdAt="2025/05/19 13:59:22" color="#785bff">}}




{{<matomeQuote body="じゃあ小道具かルールブック？（古いxkcd漫画で触れてたけど）。<br>本物の言語じゃないからルールブックはなさそう。<br>小道具でも羊皮紙からしてめちゃくちゃ高価だよ。<br>だから儲け目的の詐欺の方が可能性高いと思う。あの時代の詐欺の多さからもそれが一番ありえそう。<br>まあ、将来もっと情報出て俺が間違ってたら嬉しいけどね。" userName="riffraff" createdAt="2025/05/22 06:17:48" color="#ff5733">}}




{{<matomeQuote body="Edward Kelly［1］がまさにその時その場所にいたんだ。<br>昔読んだ（出典不明だけど）記憶だと、彼がCardan grille［2］に詳しかったって証拠があったらしい。<br>それだけで、彼が一番可能性の高い著者で、この本はhoaxかfraudとして作られたんだって俺は確信できたよ。" userName="GolfPopper" createdAt="2025/05/18 23:33:36" color="#38d3d3">}}




{{<matomeQuote body="最近の炭素年代測定で、この手稿は1404–1438年（95％信頼度）の15世紀前半のものだって断定されてるよ。<br>中世研究家のLisa Fagin Davisもスタイルから同じこと言ってる。<br>Edward Kellyはその100年以上後に生まれてるから、彼が作ったってのは無理があるんじゃない？" userName="renhanxue" createdAt="2025/05/19 01:20:54" color="#785bff">}}




{{<matomeQuote body="インクはずっと後のものって可能性は十分あると思うんだ。<br>たぶんKellyは、もともと羊皮紙に書かれてたものを消したのかも。<br>実際、絵は元の絵をうまく使って、その事実を隠したのかもしれない。<br>そっちの方が実際にはもっと悪いことだよね。<br>Kellyは、既存の価値ある手稿を半分消しちゃった可能性がある。" userName="emmelaich" createdAt="2025/05/19 01:36:07" color="">}}




{{<matomeQuote body="この手稿がpalimpsest（前のテキストを削って再利用した羊皮紙）だっていう仮説は、完全に否定されてるよ。<br>そういうのは検出できるんだけど、Voynich manuscriptにはそういう兆候が全く見られないんだ。" userName="renhanxue" createdAt="2025/05/19 01:44:17" color="#ff5c5c">}}




{{<matomeQuote body="君の言う通りだね。ちょっと[0]の記事を読んだけど、同意するよ。高価な羊皮紙でも無学な人や”naive”な人、いかさま師が手に入れて使った可能性はまだあると思うな。[0] https://manuscriptroadtrip.wordpress.com/2024/09/08/multispe..." userName="emmelaich" createdAt="2025/05/19 02:37:20" color="">}}




{{<matomeQuote body="15世紀の暗号化は宗教迫害から逃れるためだろうね。”The Inquisition”とか。同じNLPでGospelsと比較して相関を探るのが面白そうだよ。’word’ベース、’character’ベースでBibleとVoynichのグラフを比べる感じ。<br>混乱させるためのダミー文字もあるかもね。あの変な”P”みたいなのとか、異常に”frequent”な文字はダミーかも。でも、純粋なフィクションの可能性もあるって分かってるよ。" userName="quantadev" createdAt="2025/05/18 20:38:07" color="#ff5c5c">}}




{{<matomeQuote body="手書きの本がもし暗号じゃなく落書きなら、スタイルや文字がページごとに変化するはずだよね？ ページ順序は変わってるかもだけど、気づくはず。著者が似た本をたくさん書いてた場合を除いて。<br>このアイデアは斬新じゃないけど、こういう分析ってあるのかな？ ページごとの一貫性について言及してるの、どこでも見たことないんだ。" userName="codesnik" createdAt="2025/05/18 20:26:15" color="">}}




{{<matomeQuote body="＞ ページごとの一貫性について言及してるの、どこでも見たことないんだ。」<br>この点については研究がたくさんあるよ。筆記者は2人だと思われてるけど（Prescott Currierを見てね）、Lisa Fagin Davisは5人だって言ってる。Fagin Davisの立場に沿った実験の議論がここにあるよ：https://www.voynich.ninja/thread-3783.html" userName="veqq" createdAt="2025/05/18 21:35:00" color="#ff33a1">}}




{{<matomeQuote body="このスレッドで一番面白いのはさ、もう解読されたって何人もが返信してるのに、誰一人として同じ解読結果を上げてないってことだよ。" userName="empath75" createdAt="2025/05/19 13:19:25" color="#ff5733">}}




{{<matomeQuote body="＞ 伝統的な分析は統計的エントロピーチェックか当てずっぽうのどっちかになりがちだ。」<br>それはアマチュアの話かな。学術分析は言語学と暗号学の組み合わせだよ。統計も使うけどね。<br>例えば、Voynicheseが既知言語の代替じゃない強い根拠は、記号と音のマッピング比較にあるんだ。地域の言語の音韻体系と合わないんだよ。<br>あと、筆記者識別の研究もある。VoynicheseにはA/B二つの”languages”があるみたいで、それぞれ専門の筆記者がいるとか。こういう学術研究を知らないと、分析はかなり不利だよ。ちゃんと巨人の肩に乗ろうぜ。" userName="bunderbunder" createdAt="2025/05/19 15:49:01" color="#45d325">}}




{{<matomeQuote body="正直言って、この週末までこの manuscript のこと全く聞いたこともなかったんだ。NLP をもっと理解するための面白い方法を探しててね、それで：<br>1) これ良いかも、2) こういうアプローチは今までされてなかったかも？って思ったんだ。<br>2番目の部分はそんなに重要じゃなかったけどね ー 新しい発見より学習や実験が目的だったんだ。優しい言葉本当にありがとう、誰かがこれをもっと深掘りするきっかけになれば嬉しいな。" userName="brig90" createdAt="2025/05/19 03:07:44" color="#ff33a1">}}




{{<matomeQuote body="既知の言語で似たようなテキストの分析をしたら、同じようなパターンが出るかな？別の言い方をすると、こういう分析を使ってこの script が何を記述してるか理解するのに役立つかな？" userName="user32489318" createdAt="2025/05/18 19:14:14" color="#ff5c5c">}}




{{<matomeQuote body="これ、めっちゃクールな研究だね。同じ手法を Rohonc Codex に適用するの考えた？私が知る限り、 Voynich Manuscript に似てる唯一の他の本だけど。" userName="frozenseven" createdAt="2025/05/19 03:59:24" color="#ff5733">}}




{{<matomeQuote body="正直 Rohonc Codex は聞いたことなかったよ。チェックしてみるね！ありがとう！" userName="brig90" createdAt="2025/05/20 02:57:00" color="">}}




{{<matomeQuote body="手法は好奇心でざっと見ただけだけど、本当に目が引かれたのは、リポジトリにある manuscript の転写なんだ。これがきっかけで、この manuscript の歴史的な転写や音訳の取り組みに関するラビットホール（深掘り）に入り込んじゃって、あるサイトにたどり着いたんだ。" userName="andrewla" createdAt="2025/05/19 13:42:51" color="#45d325">}}




{{<matomeQuote body="＞『Voynich manuscript の新しい多重スペクトル分析で隠れた詳細が明らかに』って記事があったけど、もし金持ちの子供の塗り絵か書き方練習帳だったらウケるw" userName="ck2" createdAt="2025/05/18 19:11:35" color="">}}




{{<matomeQuote body="＞もし金持ちの子供の塗り絵か書き方練習帳だったらウケるw<br>たとえそれが「ただの」（めちゃくちゃ金持ちで早熟な）子供で、植物とか星とか女性の体に夢中で、同じ少ない文字を繰り返し落書きして、その子がアクセスできたであろう写本みたいに見える形にしただけだとしても、それでも印象的で面白いと思うよ。" userName="Avicebron" createdAt="2025/05/18 19:24:43" color="">}}




{{<matomeQuote body="brute forceで解読するのってどれくらい大変？未知の単語を既知の言語の単語にマッピングして、スコアが高くなるまで改善していくのはどう？" userName="marcodiego" createdAt="2025/05/18 20:22:48" color="">}}




{{<matomeQuote body="それって単語が1対1で対応するって前提みたいだけど、言語ってそうじゃないと思うよ。例えば複合語はうまくマッピングできないし、文化の違いによる深い意味の違いもあるし。" userName="munchler" createdAt="2025/05/18 21:57:21" color="">}}




{{<matomeQuote body="そうそう。単語の1対1マッピングじゃどうにもならないよ（特にこんなに長い間解読されてないテキストには）。すごく近い言語（DutchとGermanとかFrenchとSpanishとか）ならkiiiindaうまくいくこともあるけど、それでも難しい。" userName="raverbashing" createdAt="2025/05/19 07:52:12" color="">}}




{{<matomeQuote body="それすごく面白い質問だね。大規模なbrute-forceの現実性は分からないけど、Voynichの“単語”を他言語にマッピングって考えは実験的アプローチと合う。問題は語彙がmassiveなのと、“単語”が本当に単語か不明なこと。それが直接マッピングを難しくする。でも、単語じゃなくcluster IDs使ってlanguage modelでスコアリングするのは説得力あるアイデアだね。探求する価値ありそう！" userName="brig90" createdAt="2025/05/18 20:27:01" color="#45d325">}}




{{<matomeQuote body="別の投稿でも言ったけど、1500年代だから聖書テキストが一番暗号化されてたと思うんだ。あるKingに拒絶されて違法になった聖書バージョンとか？radiocarbon datingで年代とKingを調べて、その翻訳前の聖書が違法で暗号化されたものかも。これは一つの plausible な話だよ。" userName="quantadev" createdAt="2025/05/18 20:47:20" color="">}}




{{<matomeQuote body="1500年代に暗号化されたものなんて、戦争計画か宗教テキストくらいだよ。でも戦争計画が植物図鑑に偽装されるのはありえないね、色々な理由で。戦争計画は一時的なもので、あんな芸術的な努力と永続性を捧げるものじゃないし。" userName="quantadev" createdAt="2025/05/19 00:30:10" color="">}}




{{<matomeQuote body="Sun TzuのThe art of warはかなりタイムレスだけどね。" userName="tough" createdAt="2025/05/19 13:30:23" color="">}}




{{<matomeQuote body="つまりさ、理論上は1500年代の王様が、その一般知識ゆえにあの本を違法にした可能性はあるってこと。それありえる話だよね。残念ながら、ラジオカーボンの年代測定で俺のぶっ飛んだ説二つは否定されちゃった。1）地球上の生命の初期の”バージョン”から生き残った本で、植物が全然違った時代のだとか。2）全ての惑星は同じ種類の炭素ベース生命体を形成してて、この本は別の惑星から俺たちに送られてきたとか。残念だけど、たぶん単なる誰かの”アート”の形であって、”本物”ですらないんだろうな。" userName="quantadev" createdAt="2025/05/19 16:24:33" color="">}}




{{<matomeQuote body="これってSETI@homeみたいなプロジェクトにするの、いいアイデアかもね。" userName="marcodiego" createdAt="2025/05/18 20:29:59" color="">}}




{{<matomeQuote body="それたぶん無理だと思うな。どうやってスコア決めるの？ 中世の単語集どこで手に入れる？ 膨大な計算量どうする？<br>ヴォイニッチ手稿の特異性（単語繰り返し、一般的単語欠如、複数言語の兆候、文字分布の不一致など）から、一対一マッピングで既知の言語になる可能性は低いよ。<br>もし暗号化されてない言語だとしても、既知の言語とは全く違うだろうね。" userName="mellow_observer" createdAt="2025/05/19 07:30:29" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="見落としてたらごめんね、でも語尾（suffix）を残して、元データでファインチューニングしてから、文ごと、あるいは少なくともページごとにクラスタリングしてみるのどう？ 本の構成的にまとまってるはずだし。" userName="gthompson512" createdAt="2025/05/19 02:24:14" color="#38d3d3">}}




{{<matomeQuote body="すごくいい質問！ 俺も考えてたよ。<br>語尾はaiinとかdyとか、フィラーっぽい繰り返しを正規化するために削除したんだけど、残した方が失われた構造を保持できたかもって、君の言う通りだね。<br>文ごとやページごとのクラスタリングも面白そう — まだやってないけど、セクション間の一貫性を見るのは興味深いだろうな。洞察に感謝！" userName="brig90" createdAt="2025/05/19 03:04:18" color="#ff5733">}}




{{<matomeQuote body="あれって古いトルコ語かと思った？<br>https://www.youtube.com/watch?v=p6keMgLmFEk&t=1s" userName="bpiroman" createdAt="2025/05/18 23:30:08" color="">}}




{{<matomeQuote body="手稿の英語翻訳は下のタイムスタンプだよ：<br>https://youtu.be/p6keMgLmFEk?feature=shared&t=559" userName="bpiroman" createdAt="2025/05/18 23:31:58" color="">}}




{{<matomeQuote body="そうじゃないみたい — https://www.youtube.com/watch?v=UgVZZrZ1eqY<br>これについてすごく長いスレッドもここにあるよ — https://www.voynich.ninja/thread-2318.html — 最初は”それすごく面白いね、もっと調べよう”って感じだったのが、”うーん、他のロマンス語とかヘブライ語とかに関する啓示みたいな発表と大体同じかな”ってなってくみたいだけど" userName="Nursie" createdAt="2025/05/19 01:48:59" color="">}}




{{<matomeQuote body="Voynichは俺のお気に入りの未解決パズルの一つなんだ。このアプローチ、めっちゃ面白いね。ここで作品をシェアしてくれてありがとう！" userName="thearn4" createdAt="2025/05/19 16:08:28" color="">}}




{{<matomeQuote body="記事へのリンクが壊れてるみたいだけど、正しいの教えてくれる？" userName="GTP" createdAt="2025/05/18 20:03:30" color="#ff5c5c">}}




{{<matomeQuote body="ごめん、もう投稿編集できなくなっちゃって（HNは初めてなんだ）。でもリンクはこれね： https://brig90.substack.com/p/modeling-the-voynich-manuscrip..." userName="brig90" createdAt="2025/05/18 20:13:14" color="#ff33a1">}}




{{<matomeQuote body="TIL about the Voynich manuscriptについて今日初めて知ったよ。面白いね。ありがとう。" userName="rossant" createdAt="2025/05/18 19:46:40" color="">}}




{{<matomeQuote body="最高のコーヒーテーブルブックだよ！" userName="adzm" createdAt="2025/05/18 21:21:18" color="">}}




{{<matomeQuote body="それは分かってるけど、誰かが完全に無意味じゃない、こんな大量のテキストをどうやって作ったんだろう？" userName="Tade0" createdAt="2025/05/19 13:00:49" color="">}}




{{<matomeQuote body="https://m.xkcd.com/593/" userName="AStonesThrow" createdAt="2025/05/19 16:24:52" color="">}}




{{<matomeQuote body="俺はあの手稿、意味不明なガラクタって意味で解読不能だと強く信じてるんだ。証明はできないけど、今のところデマである可能性の方が高いと思うな。" userName="glimshe" createdAt="2025/05/18 16:57:10" color="">}}




{{<matomeQuote body="今回みたいな統計分析は、ちゃんと”言語”っぽいパターンをいつも見つけてて、単なるガラクタを並べただけじゃそうはならないんだって。こういうパターンが出るには、誰かが本格的に人工言語を作るのに近いレベルまで作り込む必要があったはずで、それ自体が興味深いよね。" userName="lolinder" createdAt="2025/05/18 17:11:42" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
