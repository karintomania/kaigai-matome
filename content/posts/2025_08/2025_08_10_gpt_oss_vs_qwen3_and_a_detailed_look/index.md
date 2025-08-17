+++
date = '2025-08-10T00:00:00'
months = '2025/08'
draft = false
title = 'GPT-OSS 対 Qwen3！GPT-2以降のAIモデル進化の全貌を徹底解剖'
tags = ["AI", "LLM", "機械学習", "モデル比較", "最適化"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> GPT-OSS 対 Qwen3！GPT-2以降のAIモデル進化の全貌を徹底解剖

引用元：[https://news.ycombinator.com/item?id=44855690](https://news.ycombinator.com/item?id=44855690)




{{<matomeQuote body="GPT-OSSの新規性はアーキテクチャの革新じゃなく、RoPE、SwiGLU、GQA、MoEみたいな既存の最適化を工夫して重ねたことってのが目立ったね。MXFP4量子化は隠れた重要機能かも。これで低スペックのGPUでも大規模モデルが動かせるのは、個人開発者や研究者にとってデカいよ。あと、GPT-OSSが推論寄りの設計なのを考えると、今後は事実にはツールを使う“Reasoners”と、知識検索に特化した“Knowledge Bases”にモデルが分かれるか、気になるな。" userName="starchild3001" createdAt="2025/08/11 04:11:46" color="#38d3d3">}}




{{<matomeQuote body="“Reasoners”と“Knowledge Bases”の分離が進むかって話だけど、俺は前者が勝つと思うな。良い検索エンジンには勝てないし、LLMの内部記憶は完璧じゃないからね。知識のエンコードにパラメータを割かない分、もっと推論に特化できるか、モデルを小さく安くできるのがメリットだ。アーキテクチャは複雑になるけど、それは避けられない流れだろうね。" userName="regularfry" createdAt="2025/08/11 08:50:21" color="#45d325">}}




{{<matomeQuote body="ツール利用や知識ベースの分離って、OSSモデルだけじゃなくOpenAIのモデル全体の特徴だよ。ChatGPTにGPT-5が導入されてから特に顕著だね。彼らのモデルはAgentic workflowsで高品質な出力してるし。あと1〜2世代で、中程度のハードウェアでもっと高度なAgentic workflowsを動かせるcompetentなモデルが出てくると思うな。もうすぐだけど、まだ完全じゃないね。" userName="asabla" createdAt="2025/08/11 06:17:28" color="#ff33a1">}}




{{<matomeQuote body="それは意図的なものだよ。OpenAIは自社の商用モデルでのアーキテクチャの革新を明かさないつもりだからね。" userName="codelion" createdAt="2025/08/11 06:43:07" color="">}}




{{<matomeQuote body="アーキテクチャの革新じゃないかもだけど、Harmony formatや、system/userに加えdeveloperメッセージがあるのは、公開モデルの世界では新しくて独特だよ。公平なベンチマークのために、まだライブラリを更新中だよ。" userName="diggan" createdAt="2025/08/11 07:43:50" color="">}}




{{<matomeQuote body="MXFP4の混合精度アプローチ（重みは4ビット、KVキャッシュは高精度）は、GPTQやAWQみたいな量子化手法より精度とサイズのバランスが良いんだ。だから、一般的な4ビット量子化の劣化なしに、すごいリソース効率を実現してるんだよ。" userName="ethan_smith" createdAt="2025/08/11 09:00:18" color="#ff5c5c">}}




{{<matomeQuote body="RoPE, SwiGLU, GQA, MoEみたいな最適化の重ね合わせって、あれらは基本的にQwen3をクローンした後に少し手を加えただけだろ。" userName="littlestymaar" createdAt="2025/08/11 07:07:46" color="">}}




{{<matomeQuote body="その技術を初めて知った時期と、それが初めて登場した時期を混同してるみたいだね。それらの技術も、この特定の組み合わせもQwenが最初じゃないよ。" userName="Voloskaya" createdAt="2025/08/11 08:19:55" color="">}}




{{<matomeQuote body="「Qwen3をクローンした」って、冗談だろ！GPT-4はQwenがモデルを出すずっと前からMoEだって噂されてたんだぞ。OpenAIは何も「クローン」する必要なかったんだよ。" userName="NitpickLawyer" createdAt="2025/08/11 07:38:30" color="#ff5c5c">}}




{{<matomeQuote body="まず、大企業をスポーツチームみたいに言うのやめようぜ。OpenAIが他をパクってるとは言わないけど、オープンウェイトモデルでは自社の秘密が漏れないよう、同じアーキテクチャを使う動機はあるんじゃないか。あと、GPT-4は大規模なMoEで、少数のでかいエキスパートだったっぽいね。" userName="littlestymaar" createdAt="2025/08/11 11:45:57" color="#ff33a1">}}




{{<matomeQuote body="Qwen3は俺のローカルテストだと圧倒的に良いね。特に32Bモデルはプロンプトに完璧に従うし、めちゃ自然。gpt-oss 120Bはシンプルベンチの論理パズルで全然ダメだった。結局、訓練方法、データ、モデルの規模、MoEのエキスパート数の違いが効いてるんだろうな。" userName="7moritz7" createdAt="2025/08/10 16:09:01" color="#ff5c5c">}}




{{<matomeQuote body="俺の予想だと、アーキテクチャよりデータと学習パイプラインの方が断然重要だね。gpt-ossはPhiみたいな合成データだけ使って、ベンチマーク指標をゲーム感覚で追いかけてるってウワサがあるけど、今のところその証拠はかなり説得力あると思うぜ。" userName="jszymborski" createdAt="2025/08/10 16:11:25" color="#ff5733">}}




{{<matomeQuote body="oss-gptに謎々聞いたら、意味不明な質問と「SAEA」って答えを出してきたよ。間違いを指摘したら「その単語は確認できません」だって。ひどいもんだぜ。" userName="unstatusthequo" createdAt="2025/08/10 16:57:51" color="#ff5c5c">}}




{{<matomeQuote body="Qwen3 32Bは全パラメータ使う密なモデルだけど、GPT OSS 20BはMoEで3.6Bしか使わないんだ。これは速度と賢さのトレードオフだね。公平に比べるなら、密な8Bモデルとか、Qwen Coder 30B A3Bみたいなスパースモデルと比較するのがいいだろう。" userName="omneity" createdAt="2025/08/11 00:26:00" color="#ff33a1">}}




{{<matomeQuote body="GPT OSS 120Bはトークンあたり5.1Bパラメータを動かすんだ。モデルのサイズ考えたら、Qwen3 32Bと比べるのは全然公平だと思うぜ。" userName="selcuka" createdAt="2025/08/11 00:30:35" color="#ff5733">}}




{{<matomeQuote body="それが公平だって？32Bと5.1Bで計算したら6倍以上だぜ。つまりQwen3 32BはGPT OSS 120Bより6倍も遅いってことだ。公平なわけないだろ。" userName="Mars008" createdAt="2025/08/11 02:15:00" color="#ff5c5c">}}




{{<matomeQuote body="興味深いね。俺は最初からこの戦略に懐疑的だったんだ。もしgpt-ossがベンチマーク以外でもo3 miniやo4 mini並みに良いなら、OpenAIのGPT-5 nanoやminiのAPI提供が危うくなるだろうな。HNのフロントページで、このモデルは特定の推論ベンチマークのタスク解決のためにRLで訓練されただけ、って分析を見つけたよ。<br>https://x.com/jxmnop/status/1953899426075816164" userName="7moritz7" createdAt="2025/08/10 16:15:18" color="#38d3d3">}}




{{<matomeQuote body="MoEモデルは、総パラメータ数とアクティブなパラメータ数の幾何平均に当たる密なモデルと比較されるべきだってよく読むんだ。gpt-oss 120Bだと、sqrt(5×120)=24Bになる計算だね。" userName="littlestymaar" createdAt="2025/08/11 07:13:22" color="#45d325">}}




{{<matomeQuote body="昨日Qwen3-coder-plusを試したけど、使ってるコード編集ツールのdiff編集形式で10回中4回も失敗したよ。Gemini Pro 2.5はほとんど失敗しないのに。このQwen3の評判、理解できないな。誰かQwen3でうまくいく編集形式教えてくれないか？<br>https://aider.chat/docs/more/edit-formats.html" userName="faangguyindia" createdAt="2025/08/11 01:25:15" color="#ff5c5c">}}




{{<matomeQuote body="俺がgpt-oss-120bに10回聞いたら毎回“sauce”とか“sane”とか“sale”って返ってきたよ。温度変えても同じだったし。無料のgpt-oss-20bでもOpenRouter経由で10回試したら“sage”とか“sane”とか“space”だったな。アンタ運が悪いか、設定ミスってるか、使ってるシステムにバグがあるんじゃね？" userName="threeducks" createdAt="2025/08/10 19:02:34" color="#45d325">}}




{{<matomeQuote body="qwen3は使ってみたけど、遅いし機能も足りないんだよな。" userName="cranberryturkey" createdAt="2025/08/10 20:09:03" color="">}}




{{<matomeQuote body="qwen3-coderは「SAME」って答えたんだけど、その思考プロセスを全部書くのに10秒かかったわ。処理自体は0秒なんだけどね。「S」で始まって「E」で終わって「A」を含む単語を探してるんだってさ。SAGEって一度はまるけど、最終的にSAMEに行き着く思考が全部見れるのは面白い。" userName="roscas" createdAt="2025/08/10 17:22:25" color="#ff5c5c">}}




{{<matomeQuote body="Phiの戦略自体は悪くないんだけど、汎用的じゃないんだよね。ファインチューニング前提で作られてるのに、それやるとRLの挙動がダメになっちゃうから、結局あんまり使えなかった。もし知識アダプターとかを組み込めるようなPhiモデルがあれば、超役立っただろうな。" userName="CuriouslyC" createdAt="2025/08/10 16:26:38" color="#38d3d3">}}




{{<matomeQuote body="俺はa30-a3b-instruct q6 quantをexllamav2で動かしてるんだけど、簡単なタスクをいくつか試したら、プロンプトの指示通りに動くし、ツール呼び出しもファイル変更も完璧だったぜ。" userName="eurekin" createdAt="2025/08/11 09:04:18" color="">}}




{{<matomeQuote body="そもそも、GPはモデルに謎を「作って」って言ったんでしょ？与えられた謎を「解いて」って言ったわけじゃないよ。" userName="yunusabd" createdAt="2025/08/10 19:36:30" color="">}}




{{<matomeQuote body="Phiの戦略はダメだよ。ベンチマークを誤魔化してるだけで、実際には本番で使い物にならないひどいモデルになっちゃうんだから。これは客観的に良くないことだね。" userName="adastra22" createdAt="2025/08/10 20:03:52" color="">}}




{{<matomeQuote body="でもさ、GPT-OSSがあの謎かけで答える可能性はかなり低いし、LLMが謎を正しく解けるかどうかって別にその謎かけで示す必要ないんじゃない？" userName="threeducks" createdAt="2025/08/10 20:38:41" color="">}}




{{<matomeQuote body="本題から逸れるけど、推論モデルってこんなにダメなの？SAGEって正しい答えを出すのに、変な理由で却下して、また「注意深く読めば」SAGEが正しいって気づくけど、また却下？結局SAGEと全く同じ形のSAMEを出してくるし。何なのこれ？常に疑うようにプログラムされてるの？正解を受け入れられないから適当に止まってるみたいだ。技術的には合ってるけど、論理がぐちゃぐちゃだよ。" userName="bee_rider" createdAt="2025/08/11 05:13:59" color="#785bff">}}




{{<matomeQuote body="俺は、基本的な論理と指示に従うのが得意で、意見を押し付けないベースモデルを、自分の用途に合わせてファインチューニングできるのが好きなんだ。だけど、完全なファインチューニングはモデルをダメにしがちだし、LoRAにも限界があるのが残念だよな。" userName="CuriouslyC" createdAt="2025/08/10 21:31:35" color="#45d325">}}




{{<matomeQuote body="最新データがないと、どんなに高性能なAIモデルでも弱いモデルに負けちゃうよ。例えばDeep Seek R1はGrok3やGrok4より賢いかもしれないけど、Twitterデータがないから遅れをとるんだ。<br>OpenAIもGitHubから速いデータにアクセスできれば、ClaudeやGemini 2.5 Proじゃできないバグ修正もできる。<br>モデルが賢くても、推論の基になるデータがなければ役立たずだよ。" userName="faangguyindia" createdAt="2025/08/11 01:28:07" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="オープンソースライブラリの話だけど、DeepWikiに自分で質問して、その答えをLLMに手動で食わせることもできるよ。DeepWikiはコードに基づいてるから、質の高い答えをくれるし、自分で真実性を確認できるからね。" userName="fspeech" createdAt="2025/08/11 06:08:32" color="">}}




{{<matomeQuote body="部外者からの話なんだけどさ、みんなが疎なモデルとか密なモデルって言う時、それって従来の数値線形代数の意味での疎行列とか密行列のこと？<br>例えばCSR行列みたいな？" userName="bee_rider" createdAt="2025/08/11 12:56:52" color="">}}




{{<matomeQuote body="彼はLLMに謎かけを考えさせてたんだ。" userName="adastra22" createdAt="2025/08/10 20:05:30" color="">}}




{{<matomeQuote body="モデルは常に自己修正するようにプログラムされてるわけじゃないけど、RLVR（Verifiable Rewardsによる強化学習）みたいに最終回答だけを検証すると、たとえバカげた推論でも正しい結果を十分に出せば偶然報酬を得ちゃうことがあるよ。<br>モデルが複数の候補を生成できるなら、候補を多く出す方が有利になることもあるんだ。" userName="yorwba" createdAt="2025/08/11 08:23:40" color="#785bff">}}




{{<matomeQuote body="Qwen3 32BはGPT OSS 120Bより6倍遅いってあるけど、それは120Bが完全にGPUに収まる場合だけだよ。<br>俺みたいな消費者向けGPU（VRAM 32GB）だと、GPT-OSS 120BはQwen3 32Bより実際には2倍遅いんだ（37 tok/sec 対 65 tok/sec）。" userName="kgeist" createdAt="2025/08/11 02:22:59" color="#ff33a1">}}




{{<matomeQuote body="でもさ、俺たちは精度について話してるんだぜ。<br>120BのMoEモデルが32Bのモデルよりも精度が低いんだったら、MoEの何がいいのかわかんないよ。" userName="selcuka" createdAt="2025/08/11 06:48:09" color="">}}




{{<matomeQuote body="彼らは、LLMが謎かけを作った時に答えも提示したって言ってたよ。<br>その解決能力については疑問視してなかったんだ。" userName="vidarh" createdAt="2025/08/11 00:54:50" color="">}}




{{<matomeQuote body="明確な公式はなさそうだね。2つの異なるケースがあるからさ。<br>1）NVidia Spark 128GBやAGX 64GBみたいに、パフォーマンスが制約される場合。<br>2）消費者向けGPUみたいにメモリが制約される場合。<br>1の場合、MoEは明らかに勝利だよ。収まるし速い。<br>2の場合、密なモデルの方が良い結果を出す。トークン／秒のパフォーマンスが許容範囲なら、そっちの方が良い選択肢だね。" userName="Mars008" createdAt="2025/08/11 15:52:15" color="#ff5c5c">}}




{{<matomeQuote body="GPT-OSS 120Bの場合、sqrt(5*120)=24Bってことか。<br>これは俺が（非科学的に）予想してたことと一致してるな。Claude Sonnet 4も同意見みたいだし。<br>『あなたの特定の120B MoE（5.1Bアクティブ）に最も正確なアプローチは、10-30Bの密なモデルに対して経験的にテストすることだろう。』" userName="selcuka" createdAt="2025/08/11 12:30:41" color="#785bff">}}




{{<matomeQuote body="あのさ、この公式って昔のMistralモデルが元になってて、今の状況とは必ずしも合ってないって読んだよ。" userName="kgeist" createdAt="2025/08/11 11:20:01" color="">}}




{{<matomeQuote body="MoEの期待される性能は「平方根（アクティブヘッド数 × 総パラメータ数）」で計算されるんだって。平方根（120×5）は約24だから、GPT-OSS 120Bって実質24Bパラメータのモデルで、もっと小さいモデルくらいの速さらしいよ。" userName="BoorishBears" createdAt="2025/08/10 20:02:07" color="#ff5c5c">}}




{{<matomeQuote body="Sebastian Raschkaのブログ記事は本当にお宝だよ、超感謝！<br>俺、get-ossとqwen3モデルはOllamaやLM Studioでローカルでよく使うし、フルサイズモデルは商用APIで使ってるよ。ローカルモデルだと、get-ossは「オーバープロンプト」（いつもより多くのコンテキスト情報を指定）するとめっちゃ良い結果が出るね。Qwen3はもう、ただただ最高！<br>3年前まではニューラルネットワークモデル（1980年代から）、GAN、Recurrent、LSTMとか、自分で実装できるくらいよく理解してたんだけど、自分でシンプルなLLMを開発できる感覚が本当に懐かしいよ。<br>Sebastian Raschkaの素晴らしい本「https://www.manning.com/books/build-a-large-language-model-f...」を少しずつ読んでるけど、正直、たぶん最後まで読めないだろうな。" userName="mark_l_watson" createdAt="2025/08/10 18:28:59" color="#785bff">}}




{{<matomeQuote body="俺は逆なんだよね。Transformerベースのモデルがいかにシンプルで、最新モデル間のアーキテクチャの違いがどれだけ小さいかに驚いてるよ。2023年後半からほとんど何も変わってないんだ。" userName="imtringued" createdAt="2025/08/11 11:27:56" color="#ff33a1">}}




{{<matomeQuote body="彼はこのめちゃくちゃ速いペースの分野で、俺たちを最新の状態に保ってくれるのが本当にすごいよ。" userName="lvl155" createdAt="2025/08/10 19:40:25" color="">}}




{{<matomeQuote body="俺の経験だと、qwen3-coderの方が断然いいね。GPT-OSS:20Bはもう少しテストするためにインストールしただけなんだけど、プログラム渡して要約させたら、qwen3は数秒で終わるのに、GPT-OSSは5分経っても何もしてなくてキャンセルしたよ。<br>だから俺はqwen3しか使ってないね。速いし出力も最高。もし何か必要なものが得られなかったら、検索エンジンかPerplexity使うかな。<br>俺のPCは10GBの3080、Ryzen 3600x、RAM32GBだよ。qwen3-coderは本当にすごい。今まで使った中で最高だね。" userName="roscas" createdAt="2025/08/10 17:18:46" color="#ff5c5c">}}




{{<matomeQuote body="Qwen3 coder 480Bはかなり良くて、Sonnet 4と互角くらいだよ。中国製モデルがコード生成に関しては近いうちに米国製モデルを食っちゃうかもしれないって初めて気づかされたね。" userName="lvl155" createdAt="2025/08/10 20:01:57" color="#ff33a1">}}




{{<matomeQuote body="Qwen3 480Bってどこで使えるの？Openrouterでも見かけないんだけど。あ、ごめん、Openrouterだとqwen3-coderって呼ばれてるんだね。詳細クリックしたらQwen3-Coder-480B-A35B-Instructだって分かった。それに、これ無料モデルなんだね。いいね！" userName="indigodaddy" createdAt="2025/08/10 20:18:33" color="#785bff">}}




{{<matomeQuote body="cerebras code（サブスクもAPIも）で使えるよ。" userName="tough" createdAt="2025/08/11 01:03:42" color="">}}




{{<matomeQuote body="Qwenで使うエディット形式って何使ってる？<br>https://aider.chat/docs/more/edit-formats.html<br>diffがうまく動かないんだけど、みんなは全部使うの？" userName="faangguyindia" createdAt="2025/08/11 01:29:45" color="#ff33a1">}}




{{<matomeQuote body="ちょっと大げさかも、Sonnet 3.5くらいじゃない？でも、opencodeのKimiはかなりすごいよ。" userName="cpursley" createdAt="2025/08/10 21:20:48" color="">}}




{{<matomeQuote body="gpt-oss-20b使ってるんだけど、短いプロンプトだと無限ループになることあったわ。llama.cppで動かしてるから、リピテーションペナルティを小さくしたら、それ以来問題ないよ（毎日diff分析に使ってるし、単に運が良かっただけかもだけどね）。" userName="mhitza" createdAt="2025/08/10 17:47:00" color="#ff33a1">}}




{{<matomeQuote body="他のモデルでも同じ問題あったんだよね。同じ文字や文をずっと繰り返してループするの。どうやら、一部のツールでデフォルトのコンテキストサイズが2kになってて、それが小さすぎるみたいだよ。" userName="nicolaslem" createdAt="2025/08/10 19:16:13" color="#45d325">}}




{{<matomeQuote body="俺はollama版使ってるんだけど（macOSでRAMを約13GB使う）、まだその問題は起きてないよ。もしかしてllama.cppポートのせいなのかな？" userName="ModelForge" createdAt="2025/08/10 19:00:30" color="">}}




{{<matomeQuote body="ollamaは使ったことないわ。llamafileとかllama.cpp経由のモデルしか使ってないし。もしかしてollamaが何かデフォルト設定してるのかな？俺はモデルのテストはtempを0から始めて、挙動に合わせて調整してるよ。" userName="mhitza" createdAt="2025/08/10 19:05:13" color="">}}




{{<matomeQuote body="20Bバージョンは10GBには入らないよ。それがいくつかの問題の原因になってるのかも？" userName="smokel" createdAt="2025/08/10 17:23:08" color="">}}




{{<matomeQuote body="これって、agenticな使い方してる？それともコピペして「これをコード化して」みたいな単一入力単一出力なの？agenticなコーディングだと、フロンティアモデルとローカルモデルってどれくらい差があるのか知りたいんだよね。" userName="SV_BubbleTime" createdAt="2025/08/10 20:08:07" color="">}}




{{<matomeQuote body="Qwen3-Coderモデル、何使ってる？量子化してる？してない？12GB VRAMに収まる良いモデル探してるから教えて欲しいんだ。" userName="panki27" createdAt="2025/08/11 08:29:32" color="">}}




{{<matomeQuote body="ローカルの3090 GPUでQwen3 Coder Instruct 30b-a3b exl3 q6が動いたことに感動してる。サンプルページ作ったり、サーバー起動したり、残ってたサーバーを認識して強制終了（許可プロンプト出たけど）したり、再試行してブラウザで開くためのIP特定までできたんだ。これもうデモじゃないね。インターンやジュニアにはすごく役立つ助けだよ。" userName="eurekin" createdAt="2025/08/10 22:25:24" color="#ff5c5c">}}




{{<matomeQuote body="どうやってセットアップしたの？今LLMを動かす方法ってLM studioしか知らないんだけど。" userName="mrheosuper" createdAt="2025/08/11 02:59:11" color="">}}




{{<matomeQuote body="今時のオープンウェイトLLMはアーキテクチャが似てるのに、進化は訓練（データ、RL）面で起きてるのが面白いね。大規模ML企業ではアーキテクチャ調整が重要だったのと逆だ。" userName="Scene_Cast2" createdAt="2025/08/10 18:05:00" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="LLM規模だと、ハイパーパラメータ調整は高すぎて無理だろうね。色々なアーキテクチャを軽く試して、一つ決めたらあとはデータやRLで最大限に活用するって感じじゃないかな。" userName="bobbylarrybobby" createdAt="2025/08/10 19:05:11" color="#785bff">}}




{{<matomeQuote body="いい指摘だね。LLMは十分なリソースがあれば参入障壁が下がる。アーキテクチャがロバストだから計算資源とデータさえあればいじっても大丈夫だし。Llama 3みたいにスケーリング法則を破っても良いモデルができることだってあるんだよ。" userName="ModelForge" createdAt="2025/08/10 19:04:09" color="#38d3d3">}}




{{<matomeQuote body="今んとこ、LM Arenaで一番高い非TransformerモデルはJambaで96位、Tencentのhunyuan-turbosは22位だってさ。これらはTransformer–state space modelハイブリッドだよ。<br>https://arxiv.org/abs/2505.15431" userName="gglon" createdAt="2025/08/10 20:34:16" color="#45d325">}}




{{<matomeQuote body="俺のテストだと、GPT-OSS-120B Q8は大学院レベルの数学問題でDeepSeek R1 671B Q16に匹敵するのに、すごく速くて思考トークンもはるかに少なかったんだ。" userName="storus" createdAt="2025/08/10 18:07:18" color="#ff5c5c">}}




{{<matomeQuote body="これは、ベンチマークに特化して訓練されてるっていう記事の主張を裏付けてるね。" userName="overfeed" createdAt="2025/08/10 20:09:25" color="">}}




{{<matomeQuote body="それって悪いの？これはコーディングと科学的思考に重点を置いた合成データで訓練されてるんだ。俺の意見ではそれで良いんだよ。何でもできる万能モデルじゃないんだから。" userName="Mars008" createdAt="2025/08/11 02:26:02" color="#ff5733">}}




{{<matomeQuote body="みんなで言おうぜ: 自由にダウンロードできるモデルウェイトがあっても、それはオープンソースって意味じゃないぞ。https://opensource.org/ai/open-source-ai-definition" userName="dzogchen" createdAt="2025/08/11 08:41:35" color="#38d3d3">}}




{{<matomeQuote body="でもさ、モデルをプログラムって呼べるか、それともプログラムが使うデータセットみたいなものかっていうと、そこからして疑わしくない？" userName="victorbjorklund" createdAt="2025/08/11 08:56:44" color="#45d325">}}




{{<matomeQuote body="Qwen3 4Bはローカルで使うのにめちゃくちゃ良いね。オンラインモデルはほとんど使わないよ。おかげでウェブ検索ももっと狙い通りになったし。出力は完全に信用してるわけじゃないけど、だいたい合ってる。こういうModがローカルの知識と自動化をひっくり返すだろうね。" userName="pryelluw" createdAt="2025/08/10 18:56:08" color="#38d3d3">}}




{{<matomeQuote body="Qwenはもっと良い検索パラメータを教えてくれるってこと？それともQwenが実際にウェブ検索をしてくれるってこと？" userName="indigodaddy" createdAt="2025/08/10 19:05:21" color="">}}




{{<matomeQuote body="大手研究機関が出してるオープンモデルについて疑問なんだけど、追加学習でどれくらい改善するんだろう？GPT-OSSは210万時間の学習だけど、その倍にしたらどれくらいスコアが上がるのかな？" userName="oezi" createdAt="2025/08/10 20:45:30" color="">}}




{{<matomeQuote body="GPT-4.5は元々GPT-5になるはずだったんじゃないかな。もっと大きくて、データも多く事前学習されてた。規模を大きくして展開するには高すぎたから、RL版は出なかったのが残念だね。" userName="ModelForge" createdAt="2025/08/10 21:52:15" color="#ff33a1">}}




{{<matomeQuote body="GPT-5の件でもあったけど、学習のRL技術は永遠にスケールするわけじゃないんだよね。" userName="poorman" createdAt="2025/08/10 20:52:08" color="">}}




{{<matomeQuote body="GPT-5がo3より30%も安く動かせるとかなら話は別だけどね。リリースの間隔が短い割には、めっちゃスケールしてることになる。みんな情報が少なすぎるのに結論を出しすぎだよ。" userName="energy123" createdAt="2025/08/11 12:12:42" color="#ff33a1">}}




{{<matomeQuote body="俺が言ってたのは、RL前のベース学習のスケーリングのことだよ。" userName="oezi" createdAt="2025/08/10 21:19:50" color="">}}




{{<matomeQuote body="この記事はかなり詳細に踏み込んでていいね。個人的には、gpt-ossはAgentのような使い方には向いてないと思う。自分で色々試す手間を省いてあげるよ。32GB以上のMacを持ってるなら、LMStudioと`qwen3-coder-30b-a3b-instruct-mlx@5bit`モデルをダウンロードしてみて。RAMは20GBくらい使うから32GBマシンで十分。opencode [1] https://opencode.ai/ でセットアップすればすぐ使えるよ！ツール呼び出し能力がすごいんだ。gpt-ossのツール呼び出し能力とは比べ物にならないね。" userName="poorman" createdAt="2025/08/10 20:59:49" color="#38d3d3">}}




{{<matomeQuote body="5ビット量子化が精度とRAMのバランスでいいのはわかるんだ。でも8ビット境界に合わないのに推論が遅くならないのが不思議。ハードウェアは5ビット値を直接扱えず、乗算前に8ビットに再パックする必要がある。その都度大量の命令が必要になるはずで、4ビット量子化より大変だよ。これで推論性能にどれだけ影響があるのか気になるな。" userName="LarMachinarum" createdAt="2025/08/11 10:00:39" color="#785bff">}}




{{<matomeQuote body="「8ビット境界にうまく合わない5ビットみたいな奇妙な量子化が、推論を遅くしないってのが理解できない」って？まさか。少なくとも俺のテストだと、“奇妙な”ビット幅を使うと大きなペナルティがあるよ。Llama.cppで4ビットと5ビット量子化を比較したら、5ビットは素朴に予想される25%以上のかなりのスローダウンが見られたんだ。" userName="throw-qqqqq" createdAt="2025/08/11 10:28:30" color="#ff33a1">}}




{{<matomeQuote body="ollamaってさ、13GBくらいしか使わないんだって！いいよね。gpt-ossチームもMetal向けにmxfp4最適化を共有したらしいよ。" userName="ModelForge" createdAt="2025/08/10 21:50:47" color="">}}




{{<matomeQuote body="サイト見ようとしたら『接続がプライベートじゃない』ってエラーが出たよ。HSTS使ってるからmagazine.sebastianraschka.comには今アクセスできないって。Ubuntuの最新Chromeでね。" userName="ahmedfromtunis" createdAt="2025/08/10 22:42:15" color="#785bff">}}




{{<matomeQuote body="HSTSがちゃんと機能してるんだろうね。HTTPS通信に割り込もうとする場所から接続してるのかも。HTTPS盗聴って結構あるし、一部企業は自分たちのネットワークで勝手にやってもいいって思ってるみたいだよ。" userName="vintermann" createdAt="2025/08/11 05:04:24" color="#45d325">}}




{{<matomeQuote body="PyTorch詳しくないから初歩的かもだけど、Figure 7のコード教えてくれる？『4 x emb_dim』ってとこ、どこにも4倍してないみたいだし。SwiGLU版のfc1とfc2って、通常のフィードフォワードブロックとコードが同じに見えるんだけど、なんで2つ目のコードは最初のfc1とサイズが違うの？" userName="mike_hearn" createdAt="2025/08/11 12:48:46" color="#785bff">}}




{{<matomeQuote body="コードだけだと分かりにくいよね。通常のフィードフォワード層では『hidden_dim = 4 x emb_dim』が一般的だけど、GLUでは『hidden_dim = 2/3 * regular_ffn_hidden_dim』を使うのが慣例なんだ（パラメータ数合わせるため）。gpt-ossはもっと極端に『hidden_dim = emb_dim』にして、全体のパラメータ数を減らしてるんだよ！" userName="fdalvi" createdAt="2025/08/11 13:00:20" color="#38d3d3">}}




{{<matomeQuote body="『LLMは大規模データセットで通常1エポックしか学習しない』って書いてあるけど、これって本当？根拠がないし、すごい発言に聞こえるんだけど。" userName="chaos_emergent" createdAt="2025/08/10 20:56:01" color="#ff33a1">}}




{{<matomeQuote body="いや、これってよく知られてるよ。GPT3論文のTable 2.2を見てみて。" userName="typon" createdAt="2025/08/10 20:57:47" color="#ff5733">}}




{{<matomeQuote body="ありがとう、それはすごい学びだったよ！" userName="chaos_emergent" createdAt="2025/08/12 17:54:50" color="">}}




{{<matomeQuote body="記事のタイトルは『From GPT-2 to gpt-oss: Analyzing the Architectural Advances<br>And How They Stack Up Against Qwen3』だよ。" userName="homarp" createdAt="2025/08/10 16:07:44" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
