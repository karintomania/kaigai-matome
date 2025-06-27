+++
date = '2025-06-20T00:00:00'
months = '2025/06'
draft = false
title = 'Harperって知ってる？Grammarlyの代替になるオープンソースツールが登場！'
tags = ["オープンソース", "校正ツール", "文章校正", "自然言語処理", "開発"]
featureimage = 'thumbnails/red1.jpg'
+++

> Harperって知ってる？Grammarlyの代替になるオープンソースツールが登場！

引用元：[https://news.ycombinator.com/item?id=44331362](https://news.ycombinator.com/item?id=44331362)




{{<matomeQuote body="Harperすごく良いじゃん、Grammarlyに飽き飽きしてたからすぐ入れたよ。でも、”Harperは何十年もの自然言語研究を活用〜”ってとこ、ちょっと怪しいな。だってコード見ると、ただのハードコードされたルール集みたいだし→https://docs.rs/harper-core/latest/harper_core/linting/trait...。数十年のNLP研究はどこ行った？WordNetとか統計的な方法もないの？実用的な選択として良いんだけど、新しい技術が出ると古い知識が忘れ去られるのが面白いね。LLMsが過去のMLや統計、記号的NLPを塗り替えたように。進歩はいいけど、昔の技術も忘れちゃダメだよ、現代でも使える力になる。60年代の方が、Harperみたいに車輪を再発明するよりずっと進んだ方法あったかも。" userName="oersted" createdAt="2025/06/21 13:02:37" color="#45d325">}}




{{<matomeQuote body="Harperの宣伝文句は大胆だけど、本当だよ。ルール処理の前に、言葉に意味を持たせる前処理をしてるんだ。＞ LLMsは10年前のML NLP手法を完全に凌駕〜 ってのは単純化しすぎじゃないかな。確かにTransformer系はすごいけど、従来のLLMがNLP研究のほとんどを「置き換えてる」とは思わないな。懐疑的に見てくれてありがとう。" userName="chilipepperhott" createdAt="2025/06/21 16:37:36" color="#ff5c5c">}}




{{<matomeQuote body="この記事も面白いかもね：https://www.quantamagazine.org/when-chatgpt-broke-an-entire-..." userName="s1291" createdAt="2025/06/22 17:06:36" color="">}}




{{<matomeQuote body="そういうNLPの進化とか勉強したいんだけど、何かおすすめある？" userName="tough" createdAt="2025/06/21 16:31:31" color="">}}




{{<matomeQuote body="NLPの進化について学ぶなら、Bag of WordsとかTF-IDFとかは飛ばしてるけど、このシリーズが良いかも→1. https://jalammar.github.io/illustrated-word2vec/<br>2. https://jalammar.github.io/visualizing-neural-machine-transl...<br>3. https://jalammar.github.io/illustrated-transformer/<br>4. https://jalammar.github.io/illustrated-bert/<br>5. https://jalammar.github.io/illustrated-gpt2/<br>その後は最適化とかデータとかスケールの話になるかな。状態空間モデルとか拡散モデルもあるけど、まだメジャーじゃないかもね→https://newsletter.maartengrootendorst.com/p/a-visual-guide-..., https://ml-gsai.github.io/LLaDA-demo/（拡散モデルはいいリソース見つからないけど）。ちなみに、線形モデル＋TF-IDFでも多くのタスクは解けるし、解釈もできるよ。" userName="jasonjmcghee" createdAt="2025/06/22 15:20:05" color="#ff5733">}}




{{<matomeQuote body="前のコメントにあったのは確かに前の世代だけど、そんな昔じゃないよ。俺が大学出た頃はword2vecが最新ですごかった。その前は古典的なML分類器とかをbag-of-wordsに使ってた（TF-IDFとか）。トピックモデリングもあったね。その前は統計的NLP（マルコフ連鎖とか）、主に機械翻訳。さらに前は文法研究（チョムスキーとか）、コンパイラとか記号AIと関連してた。全部詳しいわけじゃないけど、大学で学んだり古い本読んだりしたんだ。俺が始めた頃のNLPは正直退屈でニッチだったけど、新しいMLとかword2vecで盛り上がり始めたんだよ。" userName="oersted" createdAt="2025/06/22 18:14:53" color="#45d325">}}




{{<matomeQuote body="俺は、Harperみたいにオープンソースでルールがハードコードされてる（つまり自分で変えられる）方で文章チェックする方がずっと好きだな。LLMみたいに、どう学習データに埋め込まれてるかわからないより全然いい。Neovim連携も良さそうだし→https://writewithharper.com/docs/integrations/neovim。これすごくいいツールだと思うよ。Automatticは公式サイトで紹介すべきだね。こういうツールが今後の主流になると思う。" userName="tolerance" createdAt="2025/06/21 03:52:17" color="#38d3d3">}}




{{<matomeQuote body="自然言語ってめっちゃゆっくり進化するから、ルールベースでも十分追いつけるよ。年単位と分単位の違いだよ。" userName="phoe-krk" createdAt="2025/06/21 08:44:25" color="">}}




{{<matomeQuote body="おっけー、君の勝ちだよ。マジで勘違いしてたわ。あんた最高、間違いない。ハーバードも注目すべきだよ。(^^ 10年もかからずに生まれたエイリアン語)" userName="fakedang" createdAt="2025/06/21 10:10:53" color="">}}




{{<matomeQuote body="言語が「ゆっくり進化する」って結論に至った理由を教えてくれる？<br>あと、自然言語（たぶん英語のことだよね）が、単純で厳格なパターンやルールでしっかり定義できるって思ってるみたいだけど？" userName="qwery" createdAt="2025/06/21 09:31:40" color="#ff5733">}}




{{<matomeQuote body="「言語がゆっくり進化する理由」ね。言語はコミュニケーションで使うから、みんなが理解するのに時間がかかるんだ。「skibidi ohio gyatt rizz」みたいな流行り言葉みたいにね。<br>新しい機能が広まるには、みんなが覚えて使って、無視できないくらい普及しないといけない。この慣性が進化を遅くしてるんだ。文法チェックソフトは、これが定着しないとエラー扱いするわけ。<br>「単純なルールで定義できる？」って質問には、イエスだよ。そのルールの集まりをgrammarって呼ぶんだ。方言やスラングにも独自のgrammarはあるよ。" userName="phoe-krk" createdAt="2025/06/21 09:54:58" color="#ff5733">}}




{{<matomeQuote body="なるほど、返信ありがとう。たぶん俺ほど文法を指定するタスクは単純じゃないって思ってるんだろうね。コメントのやり取りがよく分かってなかったのかも。<br>はっきりした厳格なルールは、書く上で一番役に立たないことが多いと感じるんだ。もちろん、こういうルールはソフトで表現しやすいから、誤検知やイライラの元になりやすくて、結局そういう機能はオフにしちゃうことになるんだよね。" userName="qwery" createdAt="2025/06/21 11:30:56" color="">}}




{{<matomeQuote body="文法チェックツールが想定するフォーマルな文章で使われない一般的なスラングの存在は、文法を形式的な規則じゃなくてインターネットの重み付きモデルで学ぶことの弱点とも言えるね。LLMのChatGPTは「aight fam」みたいなスラングを文脈に合わせて使うし、教授みたいに書き直せば削除してくれるけどね。<br>スラングを予測可能な使い方にするRHLFingは、単語リストにnoughtiesやnineties由来のスラングを加えるより大きな課題かもしれない。特に、その特定の話し方を目指す文法チェックツールならね。" userName="notahacker" createdAt="2025/06/21 12:22:55" color="#38d3d3">}}




{{<matomeQuote body="そう、まさにそうだよ！この「10年もかからない」って期間は、手作業で辞書に単語やイディオムを追加したり、「bussing」じゃなくて「bussin」や「bussin’」みたいに連続動詞の「g」を飛ばすような側面に対応するために新しい文法ルールを書いたりするのにかかる時間（数時間とか数日）よりも桁違いに大きいんだ。<br>俺の主張をよく説明してくれてありがとう。文法チェックシステムにルールを書くのに必要な開発者は数人以下だけど、「進化」した言語を学ぶ必要のある人は何百万人もいる。手作業でやるのは十分速いだけでなく、労働集約的ではなく、スケーラブルなんだ。" userName="phoe-krk" createdAt="2025/06/21 10:14:33" color="#38d3d3">}}




{{<matomeQuote body="こういうメッセージに文法やスペルミスチェックが必要だとは思わないけどね。<br>だとしても、言語の「進化」を正確に追跡するのにLLMを頼る気はないな。" userName="afeuerstein" createdAt="2025/06/21 10:16:13" color="">}}




{{<matomeQuote body="文章をアートとして書くときは、ルールは曲げたり破ったりするものだよね。新しいルールを明確に書いたり、新しい言語の形を合法にしたりできるのは、 hallucinating LLMと格闘するよりもずっと便利だよ。<br>でも、実用性やコミュニケーションのために書くときは、英語のgrammarは十分にシンプルで標準的だね。Harperのソースをブラウジングすると、https://github.com/Automattic/harper/blob/0c04291bfec25d0e93... に基本的な部分がたくさんあるみたい。<br>自然言語のgrammarはよく、「何がどこで、いつ、どんな文脈で出現することが許されるか、推奨されるか、すべきでないか」として表現できる――IIUC、Harperも同じ方法で問題に取り組んでるみたいだね。" userName="phoe-krk" createdAt="2025/06/21 11:36:54" color="#45d325">}}




{{<matomeQuote body="言語って表現力が変わるか変わらないかだけど、人間の言語はあんまり変わらないみたい。技術が進化を妨げてもいいのでは？って話。" userName="eadmund" createdAt="2025/06/21 14:40:16" color="">}}




{{<matomeQuote body="HNには、この件で先に相談されてれば、何十年、何万人の苦労を省けたのにって思ってる人がいることにビックリだね。" userName="efitz" createdAt="2025/06/21 16:58:24" color="">}}




{{<matomeQuote body="言葉が主流になるのには時間かかるけど、LLMは使用頻度で単語をリアルタイムに学習できるんだよね。辞書に手動で加えるよりすごいかも。" userName="fakedang" createdAt="2025/06/21 11:59:44" color="">}}




{{<matomeQuote body="’aight’、’trippin’、’fr’、’fam’みたいな俗語、90年代には普通に使われてたんだぜ。" userName="dmoy" createdAt="2025/06/21 19:09:22" color="">}}




{{<matomeQuote body="どの努力？言語学習は自分でやるしかないけど、文法チェックソフト開発は一度やればコピーできるんだよ。" userName="phoe-krk" createdAt="2025/06/21 17:37:13" color="">}}




{{<matomeQuote body="今、文法や語彙の定義について違う意見があるよね。規則システム（Harperみたいに）か、確率（LLMみたいに）かって。LLMはリアルタイム学習できるけど、エラー判断には問題が出る可能性もある。厳密なエラーチェックが必要なら、やっぱり規則エンジンが必要だよ。" userName="phoe-krk" createdAt="2025/06/21 12:45:37" color="#ff5733">}}




{{<matomeQuote body="言語チェッカーが完全な文法を必要とするなら自然言語では難しいって指摘、わかるな。最初のポイント、もっとフィットすると思うよ。" userName="fl0id" createdAt="2025/06/23 07:56:27" color="">}}




{{<matomeQuote body="ルールの全てが決まってるわけじゃないし、破られることもあるけど、”存在しない”わけじゃないんだ。数学の真実とは違うけど、何かはあるよね。<br>これらの投稿も数えきれないルールに従ってるから、コミュニケーションしやすいんだよ。<br>多分君が言いたいのは、ルールが固定化されすぎて公式の言葉が俗語からかけ離れて理解できなくなることかな。<br>教会や法律のラテン語とイタリア語みたいにね。（面白い事実：ヴァルゲート聖書は当時の俗語、ラテン語に翻訳されたんだ）。" userName="bombcar" createdAt="2025/06/21 12:29:33" color="">}}




{{<matomeQuote body="文法がリアルタイムで進化する必要はないと思うな。むしろ安定した機能があった方が、そうじゃないより良さそうだよ。" userName="airstrike" createdAt="2025/06/21 13:03:13" color="">}}




{{<matomeQuote body="GenZじゃない人がGenZっぽく書こうとすると、「ヘイみんな」とか「おじさん」ってすぐ思われちゃうよ。" userName="bombcar" createdAt="2025/06/21 12:36:03" color="">}}




{{<matomeQuote body="進化のポイントは何かな？<br>全体の表現力は同じままで、今のニーズにもっと合わせた表現をすること。<br>だけど、言葉が進化するのを止めるものはないと思うよ。" userName="dragonwriter" createdAt="2025/06/21 14:43:25" color="">}}




{{<matomeQuote body="LanguageTool（Grammarlyの競合）もオープンソースでローカルで使えるよ！<br>https://github.com/languagetool-org/languagetool<br>俺はいつもローカルのDockerコンテナで動かしてるんだ。<br>https://hub.docker.com/r/erikvl87/languagetool<br>Harperはまだちゃんと見てないけど知ってるよ。選択肢があるのはいいね。<br>Harperのサイトで、比べてる競合の一つ（LanguageTool）もローカルで動かせるってちゃんと書けばいいのにね。" userName="shortformblog" createdAt="2025/06/21 03:58:05" color="#45d325">}}




{{<matomeQuote body="LanguageToolにはオープンソース版とクラウド版があるんだ。オープンソース版はシステムのスペルチェッカーみたいに単語をチェックするだけ。何か他にあるかもだけど、俺が試した感じだと明らかな間違いも直せなかったよ。Grammarlyとかこのツール（Harper）の代わりにはならないね。" userName="akazantsev" createdAt="2025/06/21 07:49:47" color="">}}




{{<matomeQuote body="いや、あるよ！<br>ニーズに合わせてかなりカスタマイズできるし、大きなngramデータセットを使えるように作れるんだ。<br>https://dev.languagetool.org/finding-errors-using-n-gram-dat...<br>もっと詳しく調べてみた方がいいな。カスタマイズ性が高いことを見落としてるみたいだよ。" userName="shortformblog" createdAt="2025/06/21 11:54:20" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="LanguageToolを使うならEloquentっていうFlatpakアプリが良いよ。サーバーもFlatpakの中で動くんだって。URLはこれだよ：https://flathub.org/apps/re.sonny.Eloquent" userName="unfitted2545" createdAt="2025/06/21 22:08:52" color="#ff5c5c">}}




{{<matomeQuote body="個人的にはLLMを使ってないのがすごく良いと思うな。GrammarlyはAI機能てんこ盛りになってからマジでダメになった。指示もコロコロ変わるし。" userName="pram" createdAt="2025/06/20 22:20:07" color="#ff5733">}}




{{<matomeQuote body="失読症だからGrammarlyめっちゃ使ってたんだけど、AI機能が追加されてから劣化がひどくて1年前に解約したよ。アプリはキーロガーみたいで怖かったからWeb版だけだった。文法はルールでしょ、LLMなんて要らない。昔のルールベースのGrammarlyの方が全然マシだった。" userName="tiew9Vii" createdAt="2025/06/21 10:26:11" color="#38d3d3">}}




{{<matomeQuote body="GrammarlyってたまにAからBに変えろって言って、すぐにBからAに戻せって提案してくるループにハマるんだよね。おかしいけど、どっちが良いか自分で決めれば良いから問題ないよ。面白い現象だね。" userName="InsideOutSanta" createdAt="2025/06/21 08:43:33" color="#38d3d3">}}




{{<matomeQuote body="経験上、普通のLLMは句読点に関してめっちゃ混乱するみたい。これがLLMの分かりやすい弱点の一つだよね。Grammarlyがこんな状態を許してるなんてビックリだよ。" userName="boplicity" createdAt="2025/06/21 00:52:09" color="#ff5733">}}




{{<matomeQuote body="インターネット、特にスマホが出てから、句読点ってすごくバラバラだよね。どうしてLLMが一貫して使えるなんて思えるのか不思議だよ。" userName="jethro_tell" createdAt="2025/06/21 05:35:17" color="#38d3d3">}}




{{<matomeQuote body="じゃあ、LLMを使った同じようなツールってないの？LLMがいつも最高だとは思わないけど、この2つのアプローチを比べてみるのは面白いと思うな。" userName="raincole" createdAt="2025/06/20 23:33:35" color="">}}




{{<matomeQuote body="GrammarlyはCommon LISPで書かれてたんだって。これ見て：https://www.grammarly.com/blog/engineering/running-lisp-in-p...<br>LISPはAIを作るはずだったのに、「バカなLLM」に取って代わられつつあるなんて、なんか悲しいね。" userName="mannycalavera42" createdAt="2025/06/21 08:19:19" color="#45d325">}}




{{<matomeQuote body="GrammarlyはLLMが出る前からあったツールだよ。どんな方法だったか分からないけど、LLMが文章の書き換えとかできるから、Grammarlyは今ピンチかもね。LLMは一貫性がないみたいだけど、無料だしね（今のところ）。" userName="7thaccount" createdAt="2025/06/21 00:30:31" color="#ff33a1">}}




{{<matomeQuote body="マジでさ、この1年くらいでGrammarlyもGboardの予測変換も、めちゃくちゃダメになった気がするよ。" userName="chneu" createdAt="2025/06/21 00:36:08" color="">}}




{{<matomeQuote body="imo と in my book って同じ文で重複してない？こういうのってルールベースの手法で検出できるのかな？ちなみにlardingを食品以外の文脈で使うの、面白かったよ。" userName="harvey9" createdAt="2025/06/21 13:32:56" color="">}}




{{<matomeQuote body="DeepL Write、LLMが出始めた頃のChatGPT以前はけっこう良かったよね。" userName="Alex-Programs" createdAt="2025/06/21 11:01:03" color="">}}




{{<matomeQuote body="DeepLはGrammarlyとは違うと思うな。DeepLは言語の機械学習にずっと特化してるから、きっと素晴らしいデータを手に入れたんだろうね。特にビジネス言語とかプロの翻訳に集中してるから。DeepLは元のメッセージをそのままにして、ただ洗練してくれる感じ。本の校正みたいにね。Grammarlyとか他のツールは、彼らが一番いいと思うように強制してくるんだ。DeepLを見ると、特定用途向けに訓練されたモデルがいかに役立つかがわかる気がするよ。" userName="Dr4kn" createdAt="2025/06/21 11:32:55" color="#ff5c5c">}}




{{<matomeQuote body="DeepLに近い感じで、ローカルで動かせるモデルでおすすめある？" userName="monkeywork" createdAt="2025/06/21 18:46:56" color="">}}




{{<matomeQuote body="＞コンマを削除しろと言われたり、次の時間にはまた追加しろと言われたりするんだ。＜<br>あー、まるで英語の先生みたいだね、わかるわ。" userName="raverbashing" createdAt="2025/06/21 05:58:32" color="">}}




{{<matomeQuote body="Harperはまずまずかな。数年間、文章のスペルチェックは全部Grammarlyに頼ってたんだ（失読症で10回読んでも間違いが見えないから）。でもGrammarlyがLLMを重視するようになって、文章をより冗長に書き換えるのを押し付けてくるのがすごく嫌になった。（個性が消えるし、人間が書いたテキストがAIテキストみたいになるんだよね。）それで代替を探してて、Harperが今のところ一番近いんだ…でも基本的な単語の提案はまだGrammarlyの方が上だと思う。本当に欲しいのは、文脈を使って単語を提案してくれるスペルチェックだけなんだ。普通の辞書ベースのスペルチェックは、構文的に近いからって間違った単語を選びがちなんだよね。例えば、thoughと書くべきなのにthougtと書いたら、thoughに置き換えるべきなのにthoughtに置き換えたりするんだ。文章見れば明らかにthoughが正しいのに。しかもこの3つの単語、視覚的に区別がつかないんだよね。" userName="aDyslecticCrow" createdAt="2025/06/21 15:39:14" color="#38d3d3">}}




{{<matomeQuote body="すごいことに、OpenAIの昔のモデルは文中の次の単語を推測するように訓練されてたんだよね。Grammarlyみたいな最新のAIライティングツールよりも、GPT-2の方がthoughを正しく予測できたんじゃないかって思うよ。LLM（とかSLM）がもっとずっと得意であるべき分野っていくつかある気がするな。例えばKindleで単語をタッチした時、Amazonなら一番関連性の高い定義を選べると思うんだけど、一番一般的な定義しか表示されないんだよね。例えばこの一節のtoiletのちゃんとした定義とかさ。「He passed ten hours out of the twenty-four in Saville Row, either in sleeping or making his toilet.」" userName="Breza" createdAt="2025/06/23 14:41:33" color="#45d325">}}




{{<matomeQuote body="Hemingway Editorは試したことある？" userName="aagha" createdAt="2025/06/25 23:52:36" color="">}}




{{<matomeQuote body="Me and Jennifer went to have seen the ducks cousin.<br>エラー検出なし。Grammarlyレベルに到達するには、ルールベースの貢献が大量に必要みたいだね。" userName="demarq" createdAt="2025/06/20 22:58:03" color="#ff5733">}}




{{<matomeQuote body="なんか同じように文法エラーを全然検知しないみたいだよ。「俺の名前ジョン。あんたの名前何？今日何曜日？」みたいな簡単な文でもダメらしいね。" userName="alpb" createdAt="2025/06/20 23:54:38" color="">}}




{{<matomeQuote body="最初はすご！って思ったんだけど、いくつか試してみたらマジで基本的なこと全然見つけられなかったわ。当たり外れがすごいって感じかな。" userName="Tsarp" createdAt="2025/06/21 04:22:40" color="">}}




{{<matomeQuote body="格以外にも、時制（went to have seen）とか複数形と所有格の違い（ducks cousin）もテストしてるみたいだよ。" userName="rdlw" createdAt="2025/06/21 18:33:41" color="#785bff">}}




{{<matomeQuote body="そうそう、「Me and Jennifer」ってところで読むのやめちゃったんだ。" userName="canyp" createdAt="2025/06/21 16:22:12" color="">}}




{{<matomeQuote body="逆のパターンもあるんだよね。例えば、入力が For＞ In large, this is _how_ anything crawler-adjacent tends to be だと、Harperは It suggests＞ In large, this is how _to_ anything crawler-adjacent tends to be って提案してきたりするらしい。" userName="marginalia_nu" createdAt="2025/06/21 12:56:46" color="#ff33a1">}}




{{<matomeQuote body="これAutomatticの製品らしいから、使うのちょっとためらうなー。もし少しでも成功したら、Mattが利益のためにめちゃくちゃにしそうだし。" userName="healsdata" createdAt="2025/06/21 00:58:15" color="">}}




{{<matomeQuote body="FOSSだから、たとえ最悪なことになっても、誰かが最後の良いバージョンをフォークして開発を続けられるでしょ。" userName="josephcsible" createdAt="2025/06/21 01:00:07" color="#785bff">}}




{{<matomeQuote body="なんで言語学習ツールにLLM使いたくないわけ？<br>言語はマジでLLM信頼できる分野だと思うんだけど。<br>ChatGPTが英語でミスしてんの見たことある？" userName="icapybara" createdAt="2025/06/20 23:54:20" color="">}}




{{<matomeQuote body="GrammarlyってAI推しなんだけど、最近’wasn’t’を分割して、例えば’truly wasn’t’を’was trulyn’t’にしろとかいう変な推奨始めたんだよ。マジありえないわ。<br>詳細はこれ見て。<br>https://imgur.com/a/RQZ2wXA" userName="healsdata" createdAt="2025/06/21 00:36:58" color="#ff5733">}}




{{<matomeQuote body="うーん、Grammarlyってここ数年の「lexical have」の縮約（’I’ve a car’とか）の氾濫の原因だったりするのかな？<br>これってイギリス英語じゃ普通だけど、詩以外ではほとんどの方言で非推奨なんだよね。<br>イギリスでも’I’ve a car’とか’I haven’t a car’って本当に使う？" userName="o11c" createdAt="2025/06/21 01:33:17" color="#ff33a1">}}




{{<matomeQuote body="彼ら（イギリス人）は’I haven’t got a car’って言うよ。<br>縮約はオーストラリア英語でもよくあるけど、アメリカ英語の影響で減ってきてるね。" userName="filterfish" createdAt="2025/06/21 02:32:08" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺の経験だと、’I’ve a car’は’I haven’t a car’よりずっとよく聞くよ（後者は聞いたことないけど、前者は普段の会話でよく聞く）。<br>ただ、’I haven’t got a car’とか’I’ve no car’は比較的よく使われるかな。" userName="NoboruWataya" createdAt="2025/06/21 09:12:58" color="#ff5c5c">}}




{{<matomeQuote body="これがイノベーションの極致ってやつか。" userName="akdev1l" createdAt="2025/06/21 02:15:22" color="">}}




{{<matomeQuote body="LLMならあんな修正推奨しないと思うんだけどな。<br>あれってルールベースシステムのバグじゃないの？" userName="Destiner" createdAt="2025/06/21 08:27:35" color="">}}




{{<matomeQuote body="Geminiに’Was trulyn’t’って聞いてみたら、『縮約のルールには沿ってるけど、標準的な英語では広く使われたり受け入れられたりしてる形じゃない』って返ってきたよ。『技術的には文法的に正しいとされるけど、一般的な使い方じゃないし、ネイティブには不自然に聞こえる可能性がある』だって。" userName="healsdata" createdAt="2025/06/21 15:47:46" color="#38d3d3">}}




{{<matomeQuote body="’whomst’d’みたいなミームが、LLMの学習データどれだけ歪ませてるか気になるわ。" userName="marginalia_nu" createdAt="2025/06/21 12:59:48" color="">}}




{{<matomeQuote body="LLMベースのオープンソースの文法チェッカーでGrammarlyみたいなUIのやつ、求めてたんだよね。完璧じゃなくても文章書くのに役立ってくれればOK！誤検知は無視するし、全部拾わなくてもいい。LLMならGrammarlyやHarperみたいにEnglishだけじゃなく、もっとたくさんの言語に対応できるかもって期待してる！" userName="InsideOutSanta" createdAt="2025/06/21 08:51:33" color="#ff5c5c">}}




{{<matomeQuote body="LLMツールで文章をビジネス風に書き換えてもらおうとしたら、「もっと情報くれたら手伝うよ」って全然違うこと言われたんだ。LLMって親切に答えるように訓練されすぎてるから、他のタスクに使おうとすると難しいね。" userName="Szpadel" createdAt="2025/06/21 18:24:15" color="#ff5c5c">}}




{{<matomeQuote body="LLMが間違えるかって？あー、うん。よくあるよ。たまに信じられないくらいヘンな間違いするしね。最近Grammarlyでもそういう変な例がミームになってるの見るし。基本は良いんだけど、「信頼できる」とは程遠いし、自分が間違えたことをそのまま反映しちゃったりする傾向があるね。" userName="Groxx" createdAt="2025/06/21 00:00:51" color="#ff5733">}}




{{<matomeQuote body="GPじゃないけど、最新のLLMでも言語の間違いは絶対見るよ。ここ数週間で一番「はぁ？」ってなったのは、Gemini Proがコードじゃない部分を強調するのに＜em＞と＜/em＞タグを使った時かな。" userName="Breza" createdAt="2025/06/23 14:45:14" color="#38d3d3">}}




{{<matomeQuote body="だって、この「言語学習ツール」って、結局みんながちゃんと自分で言語を学ぶのをサボるために使われるんでしょ？" userName="dartharva" createdAt="2025/06/21 05:02:22" color="">}}




{{<matomeQuote body="コードのコメントの文法チェックもできる素晴らしいLSPサーバー付きだよ。<br>https://writewithharper.com/docs/integrations/language-serve..." userName="VTimofeenko" createdAt="2025/06/20 22:04:05" color="#38d3d3">}}




{{<matomeQuote body="Harperは2025年の1月にAutomatticに買収されたみたいだよ！<br>https://automattic.com/2024/11/21/automattic-welcomes-harper..." userName="sdtransier" createdAt="2025/06/21 15:20:07" color="#45d325">}}




{{<matomeQuote body="拡張機能とかダウンロードする前に、ちょっと試せるデモサイトとかあったらいいのにね。Firefoxの拡張機能のページ（https://writewithharper.com/install-browser-extension）で、ちょっと長い文章を貼り付けるとハイライト表示がおかしくなっちゃうんだ。" userName="raybb" createdAt="2025/06/21 06:13:56" color="#45d325">}}




{{<matomeQuote body="良いね！正直Grammarlyって信用できないんだよね…キーロガーみたいなもんじゃん。前にちょっと使ってみたんだけど、なんか自分にはあんまり上手く機能しないみたいだったんだ。俺、多言語使うからそれも関係あるのかな。" userName="ErrorNoBrain" createdAt="2025/06/21 09:19:48" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
