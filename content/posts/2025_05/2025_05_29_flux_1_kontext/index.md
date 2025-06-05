+++
date = '2025-05-29T00:00:00'
months = '2025/05'
draft = false
title = '「FLUX.1 Kontext」とは？GPT-4o画像生成との違いは速さ？価格？'
tags = ["AI", "画像", "生成AI", "画像編集", "機械学習"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> 「FLUX.1 Kontext」とは？GPT-4o画像生成との違いは速さ？価格？

引用元：[https://news.ycombinator.com/item?id=44128322](https://news.ycombinator.com/item?id=44128322)




{{<matomeQuote body="今、ReplicateでFLUX.1 Kontext試してるところだよ。ReplicateにはFLUX Kontextを使った画像編集のアプリ例もある（URL省略）。<br>かなり良い感じ！シンプルなimage-to-image生成なら、GPT-4o image generationと同じくらいの品質かな。生成も速くて、1回あたり4秒くらいだよ。<br>でも、このページにある例以外のプロンプトはちょっと扱いにくいかな。スタイルとか特定の要素を変えるのはできるけど、具体的にしすぎると無視されがち。たぶんこれから改善されると思うけどね。" userName="minimaxir" createdAt="2025/05/29 19:10:16" color="#ff5c5c">}}




{{<matomeQuote body="元画像の細部を維持する点では、4o image generationより正確だと思う。例えば、自分の3D動物キャラを渡して、照明を変えるみたいなちょっとした変更をお願いしても、4oはキャラの顔をめちゃくちゃに変えたり、体とか他の細部も微妙に変えちゃったりする。<br>でも、このFluxモデルは、ポーズや照明を大きく変えるようお願いしても、目に見える形状をほぼ完璧に同じまま保ってくれるんだ。" userName="a2128" createdAt="2025/05/29 19:52:06" color="#ff33a1">}}




{{<matomeQuote body="gpt-image-1（4o）は万能だけど、FLUX.1 Kontextもかなり良い線いってる。OpenAIやGoogleに画像生成を独占させない存在だね！<br>4oは指示通りに動く、品質、指示性とかすごくて魔法みたいだったけど、超遅い、高い、検閲きつい、ファインチューン不可、元画像編集できないっていう欠点があったんだ。<br>OpenAIが独り勝ちかと思ったけど、Black Forest Labsが見事に覆したね。Kontextは全部完璧じゃないけど4oと同じレベル感で、しかも速くて安い（10倍！）<br>4oほど指示は細かく聞かないけど、十分使える。画像モデルの足りない部分を埋めてくれたよ。<br>これからもっと速くて、指示通り動く、ポーズや参照をモデル内で扱える、ファインチューン可能な画像モデルが出てほしい。Black Forest Labs、頼むよ！<br>Kontextは良いモデルだ。OpenAIに負けるな、ヤバいモデルだよ。" userName="echelon" createdAt="2025/05/29 23:01:20" color="#38d3d3">}}




{{<matomeQuote body="最初にgpt-image-1を見た時、OpenAIがここまでリードしちゃって、もっとオープンなモデルは将来的に完全に置いていかれるんじゃないかって、同じように怖かったよ。<br>今回のリリースを見れて嬉しいね。これもOpenAIに、彼らのモデルをもっと検閲少なくして出力品質を上げるように圧力をかけることになるだろうし。これはみんなにとって良いことだね。" userName="qingcharles" createdAt="2025/05/30 18:03:55" color="#45d325">}}




{{<matomeQuote body="＞Given the expense of training gpt-image-1, I was worried that nobody else would be able to afford to train the competition＜<br>OpenAIモデルの訓練が高いのは、OpenAIにとって高い方が都合良いからじゃないかな。どうせサーバーファームで動かすなら、最適化の必要もないしね。<br>たぶん多くのチームは訓練に何百万ドルもかかるからDall-E 1+2の再現を試さなかったんだろうけど、SD1.5が教えてくれたじゃん？同じくらいの技術でも自宅PCで動くし、ゼロから訓練なら数千ドル、ファインチューンなら数セントでできちゃうって。" userName="whywhywhywhy" createdAt="2025/05/30 10:37:02" color="">}}




{{<matomeQuote body="この解説、マジで一日を良くしてくれたよ、ありがとう！<br>AIインペインティングとか入ったウェブベースのペイント/画像エディタを今作ってるんだけど、値段的にも性能的にも、これは使うのに最高のモデルになりそう。<br>マジで同意。こういう大手企業の一つが全部独占するんじゃないって分かってマジ嬉しい！" userName="meta87" createdAt="2025/05/30 04:39:45" color="">}}




{{<matomeQuote body="画像生成については、LLMより断然特化モデルの方が正確だよ。ChatGPTとかGoogle Geminiとか全部そう。あれらは画像生成に最適化されてないんだよね。だからGoogleもVeoっていう全く別のモデルを出してるし、Veoでさえ最高の動画モデルじゃない。画像や動画に特化した人たち（例えばBlack Forest Labs）の方がずっと時間かけて開発してるから、結果として特化モデルの方が優れてるってわけ。" userName="shift8" createdAt="2025/06/02 03:12:04" color="#45d325">}}




{{<matomeQuote body="Replicateはいつも最新の状態にしてくれてて本当に大好き。AIの進歩が速い時代に生きてるだけじゃなくて、研究レベルの新しいモデルが出るたびにすぐAPI経由で使えるし、本番環境でも規模に関係なく使えるなんてすごすぎるよね。Replicateみたいな配信者たちが、これらのモデル公開のインパクトに指数関数的な力を加えてるってことは言っとくべき。" userName="cuuupid" createdAt="2025/05/29 19:41:34" color="">}}




{{<matomeQuote body="どっちの会社とも関係ないけど、ユーザーとして両方めちゃくちゃ使った感想ね。Replicateにはhttps://fal.ai/modelsって競合がいるんだけど、FALの生成速度は試したどのモデルでも常に速いよ。100ミリ秒以下の画像生成モデルもあるくらい。モデルの種類はReplicateの方がずっと多いけど、両方にあるモデルならFALの方がほぼ”Replicateだけど速い”って感じ。価格はかなり似てると思う。" userName="meowface" createdAt="2025/05/29 21:44:58" color="#38d3d3">}}




{{<matomeQuote body="Replicate創業者のベンだよ。うちの方がトップモデル全部で同等か速いはず。例えば、うちには最速のFLUX[dev]: https://artificialanalysis.ai/text-to-image/model-family/flu... があるよ。もし何か遅いモデルがあったら教えてくれたら直せるから。ben@replicate.comに連絡してね。" userName="bfirsh" createdAt="2025/05/29 23:08:18" color="#45d325">}}




{{<matomeQuote body="ベンさんありがとう！一つ聞いていい？a16zが競合含めこの分野のいろんな会社に投資してるけど、どう思う？ポートフォリオ内で相互利用とか進めるのかな？私自身この分野で何か作ってるから気になるんだ。この業界、毎週新しいモデル出ててすごいね。ついていくの大変だろうけど応援してるよ！" userName="echelon" createdAt="2025/05/29 23:18:24" color="">}}




{{<matomeQuote body="それってVCとしては、特定の市場向けのファンドを買うみたいなもんだし、割と普通じゃない？" userName="mac-mc" createdAt="2025/05/30 17:47:35" color="">}}




{{<matomeQuote body="A16Zは両方に投資してるんだよね。やばい。彼らは画像や動画のGenAI市場に投資しまくってる。誰が勝者になろうと、彼らはそのうちの一社、たぶん複数社に投資してるってことになるね。" userName="echelon" createdAt="2025/05/29 22:27:08" color="">}}




{{<matomeQuote body="それは下流の配信者ってよりは、モデル開発者自身が、モデルのアクセスのしやすさ（初日からAPIで使えること）がコミュニティの牽引に重要だと気づいたってことじゃないかな。モデルを自分たちのAPIだけで独占するのはもう通用しない。Llama 4も最近の例で、彼らは初日から使えるように配信者と明確に協力してたよ。" userName="minimaxir" createdAt="2025/05/29 19:49:05" color="">}}




{{<matomeQuote body="image-to-imageの簡単な実験では、これはGPT-4oよりも良い感じだったよ。4oは色がセピア系に強く寄る傾向があって、ちょっと見れば4oで生成されたってすぐわかる感じなんだ（特に繰り返し編集するとね）。FLUX.1 Kontextはもっと幅広い、カラフルなパレットを使ってるみたい。それに、Replicateで試してるMaxバージョンだけど、FLUXは4oが見逃すような細かい部分もちゃんと描いてくれる。ゼロからの生成は試してないから、プロンプトだけで生成する場合はどっちが良いかわからないけど、プロンプト経由のimage-to-imageに関しては、FLUXの方が明らかに優れてる気がする。" userName="reissbaker" createdAt="2025/05/30 04:49:37" color="#ff5733">}}




{{<matomeQuote body="生成が4秒くらいで速いって？どんなGPUとかVRAM使ってるのか教えてくれる？あ、Hugging FaceのUI経由ってことなら話は別か。" userName="skipants" createdAt="2025/05/29 19:14:39" color="">}}




{{<matomeQuote body="オープンウェイト版は”近いうちに出る”って言ってるから、今はホストされてるやつしか使えないんだって。" userName="zamadatix" createdAt="2025/05/29 21:29:36" color="">}}




{{<matomeQuote body="ReplicateのUIに載ってるやつ経由だよ。あれBlack Forest Labsのインフラ通ってるから、そこのAPI叩くのとたぶん同じ結果になると思うよ。" userName="minimaxir" createdAt="2025/05/29 19:21:45" color="">}}




{{<matomeQuote body="これ試したらマジでウケる”文脈ズレ”が起きたんだよ。宇宙船の画像を生成して、編集で”もっとカラフルに、大きく”って指示したら、なぜかコンテナ船になっちゃった。チャット履歴あったのに、文脈落としちゃったみたい。" userName="xnorswap" createdAt="2025/05/30 07:05:47" color="#ff33a1">}}




{{<matomeQuote body="なんかサンプル画像ってかなり”いいやつ”だけ選んでるっぽいね。”Kontext Apps”のプロ用ヘッドショットアプリ試した人いる？自分の写真何枚か試したけど、完全に自分じゃない誰かにされちゃったよ。でも、できたヘッドショット自体はすごいプロっぽく見えるけどね。" userName="vunderba" createdAt="2025/05/29 19:48:25" color="#ff33a1">}}




{{<matomeQuote body="flux playgroundでプロ用ヘッドショット試してみたんだけど、疲れたジムの自撮りでやったら自分自身のままだったよ。背景が変わった感じ。次に細かい指示を足したら、服装が変わって、ちょっとぎこちない笑顔になったかな。自分自身の特徴は結構残ったよ。" userName="mac-mc" createdAt="2025/05/29 23:55:41" color="#ff33a1">}}




{{<matomeQuote body="Replicateのサイトにはない情報だけど、Black Forest Labsの方の”Prompting Best Practices”ってとこに、維持したいものは具体的に指定してね、って書いてあったんだ。マーケティングとは違って、自動で全部やってくれるわけじゃないみたいだよ。" userName="diggan" createdAt="2025/05/30 16:02:55" color="#45d325">}}




{{<matomeQuote body="入力画像の縦横比と出力の縦横比って同じなの？なんかいくつか試してみたら、強制的に縦横比が変わる時におかしなこと起きるのに気づいたんだよね。" userName="minimaxir" createdAt="2025/05/29 19:51:53" color="">}}




{{<matomeQuote body="便利だけどさ、結果は無料ツールとかと比べて、正直そんなに劇的に良くないね。" userName="pkrx" createdAt="2025/05/30 14:49:25" color="">}}




{{<matomeQuote body="じゃあ”consistent character”ってマーケティングの誇大広告ってこと？ほんとはできないってことじゃん？" userName="jackdawipper" createdAt="2025/06/02 03:38:40" color="">}}




{{<matomeQuote body="全然できるよ。`Draw side view of this character`とか`Draw this character looking directly at viewer`とか試してみて。" userName="shamsiev" createdAt="2025/06/02 10:35:53" color="#ff5733">}}




{{<matomeQuote body="1枚の画像で顔の同一性を維持する科学的な問題は誰も解決できてないんだよ。手の問題すら解決できてないのにね。" userName="doctorpangloss" createdAt="2025/05/29 22:17:45" color="#45d325">}}




{{<matomeQuote body="カートゥーンキャラを老けさせたリアルな画像作ってみたんだけど、すごくうまくいったよ。間違いなく同じ”人物”ってわかる感じ。" userName="emmelaich" createdAt="2025/05/29 23:44:11" color="">}}




{{<matomeQuote body="現時点で一番確実なのは、`insightface`みたいなやつで顔を交換することだよ。" userName="danielbln" createdAt="2025/05/30 06:59:53" color="">}}




{{<matomeQuote body="自分のGenAI画像比較サイトにFLUX Kontextモデルを追加するか悩んでるんだ。Max版はプロンプト遵守度が高いけどOpenAIのgpt-image-1には勝てないんだよね。サイトはこちら<br>https://genai-showdown.specr.net<br>Hunyuan’s Image 2.0も追加したけどリアルタイムモデルだからスコアは低かったよ。追記：Black Forest Labsに公平を期すと、このモデルはテキスト生成より画像編集に強いみたい。" userName="vunderba" createdAt="2025/05/29 19:33:51" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いいサイトだね！前に試して全然うまくいかなかったプロンプトの提案があるんだ。剣を持った騎士が僕らに背を向けて軍隊と対峙、頭上に盾を掲げ矢の雨を防いでるシーンだよ。<br><br>結構象徴的なのにモデルの性能が悪くて驚いたな。" userName="Klaus23" createdAt="2025/05/29 20:28:09" color="#ff5733">}}




{{<matomeQuote body="正確なフレイル（棒 ー 鎖 ー 球）を作るのは面白い遊びだよ‥変なことになりがちだけどね。" userName="lawik" createdAt="2025/05/30 06:02:28" color="">}}




{{<matomeQuote body="サイトに“Flux 1.1 Pro Ultra”も追加できないかな？Fluxファミリーで一番性能が良くて、プロンプト遵守度も高いらしいよ。オープンソースモデルの公平な評価にもなると思うんだ。<br>サイトはすごくいいアイデアで、プロンプトも面白いね！ :)" userName="nopinsight" createdAt="2025/05/30 07:46:18" color="#ff5733">}}




{{<matomeQuote body="いいね！<br>比較評価にAdobe Fireflyも入れてくれたら最高だね。" userName="theyinwhy" createdAt="2025/05/30 10:48:06" color="">}}




{{<matomeQuote body="ぜひ追加してよ！<br>いいサイトだね ありがとう" userName="meta87" createdAt="2025/05/30 04:53:34" color="">}}




{{<matomeQuote body="気になる人向けに技術レポートのリンク貼っとくよ：<br>https://cdn.sanity.io/files/gsvmb6gz/production/880b07220899..." userName="anjneymidha" createdAt="2025/05/29 18:39:34" color="#38d3d3">}}




{{<matomeQuote body="実装は簡単みたいだね（他のHiDream-E1とかICEditとかDreamOとかと似てる）<br>すごいのはデータキュレーションの方だね（詳しいことはあんまり公開されてないけど）。" userName="liuliu" createdAt="2025/05/29 19:11:42" color="#785bff">}}




{{<matomeQuote body="画像生成モデル最近全然追ってないんだけど<br>この新しいFluxモデルってやっぱりdiffusionベースなの？それとも4oみたいにブロック自己回帰型（アップスケーリングにdiffusion使うかもだけど）になったの？" userName="krackers" createdAt="2025/05/29 20:45:32" color="">}}




{{<matomeQuote body="ええとね<br>あれは”generative flow matching model”だよ<br>diffusionモデルとは違うんだ。<br>違いについてこの投稿がたぶん合ってると思うな：<br>https://diffusionflow.github.io/" userName="anotherpaul" createdAt="2025/05/30 13:58:38" color="#ff33a1">}}




{{<matomeQuote body="diffusionベースだよ。<br>マルチモーダルLLMも一緒に訓練してないなら自己回帰型に移行する意味ないしね。<br>これらの会社はそれやってないし。" userName="liuliu" createdAt="2025/05/29 21:54:24" color="#45d325">}}




{{<matomeQuote body="残念ながら誰もレポートなんか読みたがらないけど<br>みんなが本当に欲しいのはオープンウェイトモデルをダウンロードすることなんだよね。<br>そうすれば持って行って好き勝手に使えるからね。（貢献なんてしないし）。" userName="rvz" createdAt="2025/05/29 18:43:55" color="">}}




{{<matomeQuote body="https://bfl.ai/models/flux-kontext<br>ここで彼らはこう言ってるよ：<br>”FLUX.1 Kontext [開発版]<br>Kontextのオープンウェイトで蒸留されたバリアント<br>我々の最も先進的な画像編集生成モデルです<br>近日公開”" userName="anjneymidha" createdAt="2025/05/29 18:48:59" color="#ff33a1">}}




{{<matomeQuote body="蒸留版ってのはマジで残念だね<br>でもAIスタートアップのCEOたちも飯食ってかなきゃいけないんだろうな。" userName="sigmoid10" createdAt="2025/05/29 18:53:14" color="">}}




{{<matomeQuote body="オープンなコミュニティはBlack Forest Labsのオープンウェイトの蒸留モデルでかなり頑張ってるね。特にすごいのはChromaかな。リンクはこれ→ https://huggingface.co/lodestones/Chroma" userName="dragonwriter" createdAt="2025/05/29 20:12:28" color="">}}




{{<matomeQuote body="みんながそのモデルで良いものを作れるってのは疑ってないよ。でも、実際のモデルを使えたらどうなるか想像してみてよ。" userName="sigmoid10" createdAt="2025/06/02 14:28:12" color="">}}




{{<matomeQuote body="gooning crewがオープンモデルのダウンロードをかなり牽引してるってのは同意。HNでは、たいてい技術的な議論とか、これをどう製品化するかに関心がある人が多いね。ここではgoonerの側面を言うのは品がないとされてるみたい。普段は”censor”って言葉を使った、ダウンロード拒否に対する強い反応、みたいに婉曲されてるよ。" userName="refulgentis" createdAt="2025/05/29 18:57:13" color="">}}




{{<matomeQuote body="入力って画像1枚だけなの？もし複数の画像をインプットに使えたら、”画像Aのアイテムを画像Bの中に配置して”とか（例えば”画像Aのキャラを画像Bの風景に入れて”）みたいなプロンプトもできるのにね。" userName="mdp2021" createdAt="2025/05/29 21:50:09" color="">}}




{{<matomeQuote body="Falにはマルチ画像インターフェースがあるから試せるよ。（Replicateもそうかも、まだ確認してないけど）。このモデル、マジ最高！gpt-image-1ほどじゃないけど、ありえないくらい近い。画像や動画で堀を築くなんて無理だよ。GoogleとかOpenAIがクリエイティブ分野でずっと勝つんじゃないかってすっごく心配してたんだ。でも違ったね。誰でもこれを作れるんだよ。" userName="echelon" createdAt="2025/05/29 22:15:42" color="#45d325">}}




{{<matomeQuote body="実験的な”マルチ”モードがあって、そこに複数の画像をインプットできるよ。" userName="carlosdp" createdAt="2025/05/29 21:53:35" color="">}}




{{<matomeQuote body="今のネイティブ画像生成について僕なりに理解してるんだけど、間違ってるかも。教えてくれると嬉しいな。たぶん最初にGemini 1.5 Flashが出て、そのあとOpenAIの4oが出たんだよね。これがすごかったのは、Midjourneyとかと違って真の”マルチモーダル”だからだと思う。前はDalleとかImagenにプロンプト送ってただけだけど、新しいのは音声、テキスト、画像のトークンを同じモデルで理解するみたい。どうやって学習させたかは不明だけど、自己回帰と拡散モデルの組み合わせなのかなと思ってる。" userName="sujayk_33" createdAt="2025/05/30 17:26:57" color="#ff33a1">}}




{{<matomeQuote body="これは完全に正しくないよ。Fluxに関わってる人たちは、2022年のStable Diffusionの論文を書いた人たちだよ。OpenAIは最初dalleeを持ってたけど、stable diffusionはdalleeを大幅に改善したものだったんだ。それからOpenAIはstable diffusionからヒントを得てgpt imageを作ったんだよ。" userName="claudefocan" createdAt="2025/05/30 19:08:56" color="#ff5c5c">}}




{{<matomeQuote body="実際、ChatGPTの4oの画像生成は、”image_gen”っていうツールへの呼び出しだと思うよ。生成ツールが会話の全コンテキストを受け取ってるわけじゃないんじゃないかな。データエクスポートで見ると、dalleの時みたいに個別のプロンプトを使ったツール呼び出しになってるよ。画像をコンテキストとして渡すと、それもツールに渡されるみたい。脱獄対策のモデレーションのためだろうね。" userName="rmorey" createdAt="2025/05/31 02:28:32" color="#38d3d3">}}




{{<matomeQuote body="これをローカルで調整したり学習させたりするには、どれくらい知識が必要なの？WindowsでRTX 4090を使ってFlux 1 dev上でLoRaのカスタム学習を2日間試したんだけど、うまくいかないんだ。このトピックやpythonライブラリをどれくらい深く勉強する必要があるのか分からない。この界隈にはスクリプトキディもいるの、それともエキスパートだけ？" userName="ttoinou" createdAt="2025/05/29 19:02:45" color="">}}




{{<matomeQuote body="https://github.com/bghira/SimpleTuner 使えばいいじゃん。<br>俺、これ使ってPythonライブラリとか全く勉強しないでLoRA学習できたよ。" userName="throwaway675117" createdAt="2025/05/29 19:13:13" color="#785bff">}}




{{<matomeQuote body="SimpleTunerってMicrosoftのDeepSpeedに依存してるんだけど、それWindowsじゃ動かないんだよね :)<br>だから多分Ai-ToolKit https://github.com/ostris/ai-toolkit 使った方がいいよ。" userName="dagaci" createdAt="2025/05/29 22:24:45" color="#785bff">}}




{{<matomeQuote body="OneTrainerも別の“簡単な”選択肢になるかもね。" userName="AuryGlenz" createdAt="2025/05/30 16:29:31" color="">}}




{{<matomeQuote body="オープンソースモデルはまだリリースされてないけど、FLUX 1 DevでLoRA学習するより簡単になることは絶対ないだろうね。" userName="minimaxir" createdAt="2025/05/29 19:04:26" color="">}}




{{<matomeQuote body="くっそー，半年で古くなるスキルとか勉強するのめんどくさすぎるわ。" userName="ttoinou" createdAt="2025/05/29 19:05:04" color="">}}




{{<matomeQuote body="俺，間違いなく選り好みしてサボってるわ。今フルタイムで働いてるしね。寝てる以外，ずっとって感じ。" userName="ttoinou" createdAt="2025/05/29 19:15:51" color="">}}




{{<matomeQuote body="普段はComfyUI通せば設定済みのものが見つかるのは簡単だよ．たまに，誰かYouTuberのPatreonの裏だったりするけどね。" userName="Flemlo" createdAt="2025/05/29 19:12:19" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺さ、WindowsでRTX 4090使ってFlux 1 devの上にLoRaカスタム学習させようと2日間頑張ったんだけど、全然うまくいかねぇんだよな。やっぱりWindowsが一番の問題かも。ちゃんと活用するにはlinuxが必要だよ。" userName="3abiton" createdAt="2025/05/29 19:21:19" color="#38d3d3">}}




{{<matomeQuote body="いや、大丈夫だよ。Windowsでもほとんどのツールは使えるしね。一番大事なのはね、1. 適切なキャプション付きの良い画像を用意すること、そして2. どんな設定を使えばいいか知ること。2番目がめちゃくちゃ難しいんだよ。だって、間違った情報が多いし、たくさんのLoRaを学習させてる人たちはあんまり情報共有したがらないんだもん。でも、だいたいのプログラムには使えるデフォルト設定があるから、それでいけるはずだよ。" userName="AuryGlenz" createdAt="2025/05/30 16:33:08" color="">}}




{{<matomeQuote body="かなり良いね！繰り返し編集して顔とかシーンの一貫性をテストしてるのが好きだな。GPT-4oとか他のモデルにとっては大きな弱点だったんだよね。" userName="vessenes" createdAt="2025/05/29 19:02:17" color="#ff33a1">}}




{{<matomeQuote body="オープンソースコミュニティのためにHuggingFaceにリストしてくれるといいな。素晴らしいモデルみたいだし！" userName="nullbyte" createdAt="2025/05/29 18:36:12" color="">}}




{{<matomeQuote body="公式サイトによると、彼らはDEVバージョンをリリースする予定らしいよ。これは蒸留版だから、残念ながら品質とか忠実さは落ちるだろうね。" userName="vunderba" createdAt="2025/05/29 19:28:18" color="#ff33a1">}}




{{<matomeQuote body="オリジナルのオープンソース版FluxもHugging Faceにあったよ。" userName="minimaxir" createdAt="2025/05/29 19:23:29" color="">}}




{{<matomeQuote body="そのうち、”ツールに詳細を勝手に作らせるな！”って叫びが、他のどんな表現よりも頻繁になるだろうね。" userName="mdp2021" createdAt="2025/05/30 08:52:12" color="">}}




{{<matomeQuote body="顔から何かを削除する例がよく分かんないな。その人の顔を示す他の写真がないと、ただの典型的なイメージを使ってるだけなんじゃないの？" userName="amazingamazing" createdAt="2025/05/29 18:59:08" color="">}}




{{<matomeQuote body="それはわかるけど、普通は”真実”の参照元と加工したいターゲット、みたいに2つの画像を入力するもんでしょ。" userName="amazingamazing" createdAt="2025/05/29 19:20:18" color="">}}




{{<matomeQuote body="必ずしもそうとは限らないよ。”見ての通り、このChinese ladyは学習データにたくさんいたChinese ladiesを見てきたでしょ。snowflakeで見えてる部分と矛盾しないように、このladyの顔を想像してごらん”みたいなpseudocode promptでもいいんだし。（Damn、これはpseudocode promptだな。）" userName="nine_k" createdAt="2025/05/29 19:38:51" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、つまりstereotypical imageってことね。僕の言いたいことが一番よく分かるのは、そのwomanの全てのphotoを見た時だよ。" userName="amazingamazing" createdAt="2025/05/29 19:43:14" color="">}}




{{<matomeQuote body="別のimageを与えても（それができても）、modelはconcealedな部分について強いguessをしてるだけって言えるくらい、predictionをgeneralizeしてるんだよ。僕が言いたいのは、”ここでlineを引くの？誰かのfaceのpartialの、mostly accurateなreconstructionで？”ってこと。これ、数年前はscience fictionだったんだぜ。modelにtwo imagesを受け付けさせるtraining（できるけどreconstruction目的でじゃないけど、それもlearnする）ってのは、このissueをhandleするにはすごくtask-specific、downstreamなやり方に見えるね。このfieldは今、task specific modelsじゃなくて、robust、generalなwayでintelligent behaviorをemergeさせることなんだ。" userName="throwaway314155" createdAt="2025/05/29 21:33:19" color="#45d325">}}




{{<matomeQuote body="でも、それってmostly accurateなの？どうやってわかるのさ？suppose顔がentirely covered with snowなasian womanがいたとしてみ？AIにremove the snowって言えばsome face will be revealedだろうけど、それがaccurateだって誰が言えるの？traditionalyはreference inputがあるのはそのためだよ。" userName="amazingamazing" createdAt="2025/05/29 23:37:30" color="#ff5733">}}




{{<matomeQuote body="君が言ってる「snowを取り除いたらfaceが出るけどaccurateかどうかわからないからtraditionaly reference inputがある」ってやつだけどね、何度かstatedした通り、modelはMULTIPLE IMAGESをSUPPORTしてるんだ。この記事は君のvery specificなreference-image-benchmarkはtryしてないけど、それはyou can’t do it yourselfって意味じゃないし、articleとかBFLがおかしいってimplyでもないよ。彼らはmerely presenting a common usecaseで、how the model should be usedをdefiningしてるわけじゃないんだから。" userName="throwaway314155" createdAt="2025/05/31 17:03:46" color="#ff5c5c">}}




{{<matomeQuote body="traditional workflowってどんなの？haven’t seen that done beforeなんだけど、it’s something I’d like to tryだね。”wrong” referenceもsupplyして、something specificをgetすることもできるのかな。" userName="Gracana" createdAt="2025/05/30 12:24:38" color="">}}




{{<matomeQuote body="exampleをもっとclosely lookしてみてごらんよ。Clearly there is an opportunity for inference with objects that only partially obscureだね。" userName="ilaksh" createdAt="2025/05/29 20:37:29" color="">}}




{{<matomeQuote body="たぶん、彼らがdoing thatなのは、using real imagesだとmodelがfaceを変えちゃうからだと思うよ。So that problem is removed if the initial image doesn’t show the faceなんだね。" userName="jorgemf" createdAt="2025/05/29 19:24:48" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
