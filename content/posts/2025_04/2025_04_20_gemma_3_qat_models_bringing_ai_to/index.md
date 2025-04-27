+++
date = '2025-04-20T00:00:00'
months = '2025/04'
draft = false
title = '朗報！Gemma 3 QATモデル、ついに一般GPUでも動くぞ！AIがもっと身近に'
tags = ["Gemma 3", "QAT", "AI", "GPU", "ローカルLLM"]
featureimage = 'thumbnails/color1.jpg'
+++

> 朗報！Gemma 3 QATモデル、ついに一般GPUでも動くぞ！AIがもっと身近に

引用元：[https://news.ycombinator.com/item?id=43743337](https://news.ycombinator.com/item?id=43743337)

{{<matomeQuote body="Gemma-3-27b-it-qat-4bitがマジでお気に入りかも。Mistral Small 3.1 24Bと同レベルだね。<br>M2 64GBでOllamaとMLXで試したけど、マジ卍。Ollamaだと22GB、MLXだと15GBしか使わないから、他のアプリも余裕で動くよ。<br>llm install llm-mlx<br>llm mlx download-model mlx-community/gemma-3-27b-it-qat-4bit<br><br>llm -m mlx-community/gemma-3-27b-it-qat-4bit \<br>-f https://raw.githubusercontent.com/simonw/llm-hacker-news/refs/heads/main/llm_hacker_news.py \<br>-f https://raw.githubusercontent.com/simonw/tools/refs/heads/main/github-issue-to-markdown.html \<br>-s ’Write a new fragments plugin in Python that registers issue:org/repo/123 which fetches that issue number from the specified github repo and uses the same markdown logic as the HTML page to turn that into a fragment’<br>でプラグイン作らせたら、マジでいい感じの返事くれた！" userName="simonw" createdAt="2025-04-20T14:14:22" color="#785bff">}}

{{<matomeQuote body="tps教えてよ。<br>ローカルLLMって結局コスパの問題じゃないんだよね。遅すぎると使い物にならなくて、公開されてるLLMエンドポイント使った方がマシってなる。<br>OpenAI API/ChatGPTの方が読むより早く返ってくるし、簡単な質問ならチラ見してコピペで終わるじゃん。ローカルLLMだと、どうでもいい前置きを延々と印刷して、欲しい情報が出てくるまで20秒とか待たされる（速いGPUでも）。<br>みんなローカルLLMをワークフローにどう組み込んでるのか調べてるけど、ちょっと触って終わりって人がほとんどで、Mac Studioとか4090積んだマシン買うよりOpenAIのクレジット買った方が全然マシ。" userName="rs186" createdAt="2025-04-20T14:22:34" color="">}}

{{<matomeQuote body="まだTPS測れるツールないんだよね。MLXだとサクサク動く感じ。<br>ホストされてるモデルの方が早いし高品質だし、長い入力も扱えるし安いから、多くの人にとって良い選択肢だと思うよ。<br>自分は研究とか、たまにあるオフラインの時にローカルモデル使ってる。<br>ジャーナリズムでの応用にも興味があって、特に機密情報とか扱う時に。" userName="simonw" createdAt="2025-04-20T14:36:19" color="#38d3d3">}}

{{<matomeQuote body="＞I’m also interested in their applications for journalism, specifically for dealing with extremely sensitive data like leaked information from confidential sources.”<br>＞ジャーナリズムでの応用、特に機密情報とか扱う時に興味がある”って言ってるけど、それマジで大事だよね。<br>まともな会社なら、管理してる物理サーバーの外にデータ出したくないって思うよ。でも、ほとんどの人はアプリとホストされてるサーバー使うよね。ここはHNだから、自分でメールサーバー立ててる人もいるだろうし、ローカルでLLM動かすのも難しくないでしょ。" userName="freeamz" createdAt="2025-04-20T15:26:53" color="">}}

{{<matomeQuote body="“Most company with decent management also would not want their data going to anything outside the physical server they have in control of.”<br>“まともな会社は管理してるサーバーの外にデータ出したくない”って言うけど、それって10年以上前の話じゃない？AWSが巨大ビジネスになったのは、オンプレミスにこだわりたい会社が減ったからでしょ。" userName="simonw" createdAt="2025-04-20T15:45:44" color="">}}

{{<matomeQuote body="なんか混乱してるんだけど、なんでLLMのデータプライバシーってみんなそんなに気にするの？今までのSaaS製品とかにデータ置くのには無頓着だったのに。<br>AI企業がデータを学習に使って、情報が漏れるって思ってるから？でも、エンタープライズ向けには学習に使わないって約束してるんじゃないの？<br>文句言ってるわけじゃなくて、データの行先を気にする人が増えるのは良いことだと思う。ただ、今になって気にするのが不思議。LLMはデータを保存する必要ないから、クエリが終わったら消せば安全なはずなのに。" userName="ipdashc" createdAt="2025-04-20T23:17:30" color="">}}

{{<matomeQuote body="データの漏洩リスクだよ。<br>学習を通してデータが流出するのって、単純なデータ盗難とか著作権侵害よりも複雑な問題になるからね。<br>従業員がトレーニングなしのエンタープライズアカウントじゃなくて、無料の個人アカウントにログインして漏洩しちゃう可能性もあるし。<br>トレーニングにデータ収集する可能性があるプロバイダーは完全に禁止するのが安全。" userName="pornel" createdAt="2025-04-21T00:22:56" color="#ff5733">}}

{{<matomeQuote body="AWSがデータをモデルのトレーニングに使わないってどうやって確信するの？あそこは世界最大のデータ持ってるんだよ？" userName="vbezhenar" createdAt="2025-04-21T02:46:52" color="">}}

{{<matomeQuote body="バレたらAWSのビジネスに大打撃だよ。何十億ドルも損するし、顧客との契約もあるし。ブランドイメージも地に落ちる。<br>顧客のデータを許可なくトレーニングに使うなんて、AWSにとって割に合わない。<br>それに、あなたのデータってそんなに役に立たないし。" userName="simonw" createdAt="2025-04-21T04:27:14" color="#785bff">}}

{{<matomeQuote body="＞Your data really isn't that useful anyway<br>＞あなたのデータってそんなに役に立たない”って言うけど、ランダムなドキュメント1つはそうかもしれないけど、集約されたデータは価値があるから、みんな必死にスクレイピングしてるんでしょ。<br>もし機密情報がNNに保存されてたら、出力に出てくる可能性もあるし…<br>個人的な情報（ジョージ3世とかランダムな誰か）が保存される可能性について詳しく調べたことはないけど、あり得なくはないよね。" userName="mdp2021" createdAt="2025-04-21T20:30:07" color="">}}

{{<matomeQuote body="よくある勘違いだけど、LLMの学習ってデータの出所に関係なく、とにかく大量にデータを読み込ませればいいってもんじゃないんだよね。それは昔の話で、今はトップのAI研究所はみんな質にこだわってる。質の高いトークンを最高のソースから見つけようとしてるんだって。適当に手に入るものを全部突っ込むんじゃなくてね。Karpathyも去年こう言ってたよ。＞“LLMは教育コンテンツから、より良く、より速く学習するみたい。Common Crawlの記事って価値が低いし、関係ない情報が多すぎて学習の邪魔になるんだよね。インターネットの平均的なウェブページって、マジでランダムでひどいから、過去のLLMがどうやって学習してたのか不思議なくらいだよね。”" userName="simonw" createdAt="2025-04-21T20:56:31" color="#ff5733">}}

{{<matomeQuote body="GitHubもそうだけどね。自分のコードの一部をLLMに送りたくない人が、GitHubにホイホイ上げてるのを見ると笑っちゃう。大手LLMプロバイダーはどこも、学習に使わないビジネスプランを用意してるのにね。" userName="terhechte" createdAt="2025-04-20T15:59:32" color="">}}

{{<matomeQuote body="＞“自分のコードがユニークで貴重だと思って、GitHub/Microsoftが盗もうとしてると思ってる人がいるのが面白いよね。”" userName="tarruda" createdAt="2025-04-20T16:34:11" color="">}}

{{<matomeQuote body="確かにその通りだけど、外部のLLM APIにデータを送るのとAWSを使うのとは大きな違いがあると思うよ。AWSは基本的に「自分たちが管理できる物理サーバー」みたいなものだし。" userName="__float" createdAt="2025-04-20T16:17:44" color="">}}

{{<matomeQuote body="＞“特に機密情報源からのリーク情報のような、極めて機密性の高いデータを扱う場合。”<br>これについて詳しく教えてくれない？君が前に言ってた、Anthropicを信頼するって話と矛盾してる気がするんだけど。" userName="triyambakam" createdAt="2025-04-21T04:37:13" color="">}}

{{<matomeQuote body="＞“ローカルLLMだと、どうでもいい前置きを延々と出力して、本当に必要な情報が出てくるまでに20秒もかかるんだよね。”<br>ハードウェア、モデル、TPSの期待値に合わせてモデルを「適切なサイズ」にする必要があるかもね。TPSが速い小さいモデルを使ったり、ハードウェアをアップグレードしたり、ホストされているモデルにお金を払ったり。あるいは、agentic workflowやAiderみたいなツールを使えば、ローカルで巨大なモデルがゆっくり動くのを見ている必要はないよ。代わりに、作業をキューに入れて、寝たり、食べたり、他の仕事をしたりして、後でプルリクエストを確認すればいいんだから。" userName="overfeed" createdAt="2025-04-20T15:27:16" color="#45d325">}}

{{<matomeQuote body="4070 superをゲームに使ってるけど、LLMを試してみたことは何度かあるよ。悪いカードじゃないけど、4090とか新しいMacでも買わない限り、小さいモデルしか使えないことに気づいた。でも、ほとんどの小さいモデルは満足できないし、ホストされてるLLMよりも遅いんだよね。自分のハードウェアに合うモデルが見つからないんだ。<br>agentic workflowは良さそうだけど、GPTやClaudeみたいな標準的なLLMでコードを書かせた経験からすると、怖くて試せない。短いスニペットとか、足りない単体テストを埋めるくらいならいいけど、もっと複雑なものは最悪だった。" userName="rs186" createdAt="2025-04-20T20:33:39" color="">}}

{{<matomeQuote body="TPSが重要じゃない時もあるんだよ。写真アーカイブにある10万枚くらいの画像のテキスト説明を生成したんだけど、誰かのコンピューターにアップロードしたくないものもあるからね。Gemmaだと結構うまくいく。プライバシーが少しでも重要なものには、いつもローカルLLMを使ってるよ。LLM使用量の1/4くらいはそうだな。" userName="ein0p" createdAt="2025-04-20T18:40:06" color="#ff5c5c">}}

{{<matomeQuote body="これはマジでクールなアイデアだね。人物をタグ付けできるように、モデルを事前学習させてるの？写真が多すぎて、どうやって分類すればいいか分からないから、君のワークフローはすごく助けになるかも。" userName="lodovic" createdAt="2025-04-20T19:03:23" color="#38d3d3">}}

{{<matomeQuote body="いや、人物のタグ付けは別のモデルで処理してるんだ。Gemmaは画像にあるものを説明して、コンマ区切りのキーワードリストを作成するだけ。説明だけを出力するように、プロンプトを少し調整する以外は、追加のトレーニングは必要ないよ。例えば、「画像の説明はこちら：」みたいなものが先頭につくのを、説明だけ出力するようにしてるんだ。JSONで制約付きデコードとかもできると思うけど、試してないな。<br>Gemma3が苦戦する画像では、Mistral Smallの方が良い説明を生成してくれるよ。でも、指示に従わせるのが難しいみたい。<br>動画でも同じことができる日が来るのが楽しみだよ。アップロードしたくない動画もたくさんあるからね。" userName="ein0p" createdAt="2025-04-20T19:10:09" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="キーワードってどうやって使うの？Immichを動かして分析してるんだけど、クエリが当たり外れ激しいんだよね。" userName="fer" createdAt="2025-04-20T20:30:52" color="">}}

{{<matomeQuote body="M4 Max 128GBでLM Studio使った場合：<br>query: ”pythonでpygame使ったsnake game作って”<br>(mlx 4 bit quant) mlx-community/gemma-3-27b-it-qat@4bit:<br>26.39 tok/sec • 1681 tokens 0.63s to first token<br>(gguf 4 bit quant) lmstudio-community/gemma-3-27b-it-qat:<br>22.72 tok/sec • 1866 tokens 0.49s to first token<br>Unslothの設定はこちら：https://docs.unsloth.ai/basics/tutorial-how-to-run-and-fine-…" userName="jonaustin" createdAt="2025-04-22T02:29:12" color="">}}

{{<matomeQuote body="＞tps教えてくれませんか？<br>Mac Studio M4 Max 128GBでLLM Studio動かしてて、gemma-3-27B-it-QAT-Q4_0.ggufを4096トークンコンテキストで使うと8.89 tpsだよ。" userName="pantulis" createdAt="2025-04-21T11:21:55" color="#38d3d3">}}

{{<matomeQuote body="QATってQ4_0とは違う量子化フォーマットなの？gemma-3-27b-it-qatを試してみてくれない？→ https://lmstudio.ai/model/gemma-3-27b-it-qat" userName="kristianp" createdAt="2025-04-21T21:20:24" color="">}}

{{<matomeQuote body="それマジでひどいね。M1 Max 32gb macbookでGemma 3 27b QAT使って18tok/sec出てるよ。" userName="jychang" createdAt="2025-04-21T11:37:02" color="">}}

{{<matomeQuote body="オリジナルのgemma3:27bもOllamaで動かすと22GBしか使わなかったよ（64GB MacBook）。QATが同じ容量なのがマジで謎。なんでかわかる人いる？gemma3:27bとgemma3:27b-qat、どっちがいいモデルなの？" userName="paprots" createdAt="2025-04-20T19:00:06" color="#38d3d3">}}

{{<matomeQuote body="＞~15GB (MLX)で他のアプリも余裕で動かせるよ。<br>RAM16GBしかないシステムでも、スラッシングなしで快適に動くかな？" userName="prvc" createdAt="2025-04-20T20:16:43" color="">}}

{{<matomeQuote body="多分無理だと思う。少なくとも俺のMacだと、他のアプリ動かすには結構な空き容量が必要。" userName="simonw" createdAt="2025-04-20T21:14:29" color="">}}

{{<matomeQuote body="Simonさん、ローカルのGPU構成は何ですか？前に説明してたかもしれないけど、どこにあるか分からなくて。" userName="tomrod" createdAt="2025-04-20T15:00:32" color="">}}

{{<matomeQuote body="MacBook Pro M2、RAM64GBだよ。だからOllamaとかMLXしか使えないんだよね。NVIDIA必須のやつはローカルじゃ無理。" userName="simonw" createdAt="2025-04-20T15:07:31" color="">}}

{{<matomeQuote body="MacだとMLXよりGGUFの方が速いんだね。M1 MaxのMacbook Proだと、GGUF版のbartowski/google_gemma-3-27b-it-qat-GGUF（15.6GB）が17トークン/秒で動くけど、mlx-community/gemma-3-27b-it-qat-4bit（16.8GB）は15トークン/秒なんだって。どっちも新しいQAT 4bit量子化モデルだよ。" userName="jychang" createdAt="2025-04-21T07:44:28" color="#ff5c5c">}}

{{<matomeQuote body="MacBook Pro M2（RAM 64GB）を使ってるんだけど、同じくらいの性能でMacじゃない選択肢ってあるのかな？" userName="Elucalidavah" createdAt="2025-04-20T17:01:19" color="">}}

{{<matomeQuote body="Macでローカルモデルを使うのにめっちゃ感動してる！Gemmaモデルが128kトークンのコンテキストサイズに対応してるのも嬉しい。ただ、出力が短いことが多いんだよね。長い文章（ドキュメント、物語、劇、本とか）を生成するコツってある？" userName="nico" createdAt="2025-04-20T14:59:06" color="">}}

{{<matomeQuote body="使ってるツールが出力の最大サイズを設定してるのかも。Ollamaだとnum_ctxがデフォルトで2048になってるらしいよ。<br>＞https://github.com/ollama/ollama/blob/main/docs/faq.md#how-c…　”ここで確認してみて”" userName="simonw" createdAt="2025-04-20T15:06:54" color="">}}

{{<matomeQuote body="それ試してるんだけど、あんまり効果ないみたい。小さい範囲（100-200）に制限するのはうまくいくんだけど、2-4k以上にすると1ページくらいの長さで止まっちゃうんだよね。<br>OllamaじゃなくてMLXで試してみようかな。長い出力を得るためのプロンプトのコツってある？モデルのコンテキストサイズって最大出力サイズに関係ある？それとも独立した特性なのかな？" userName="nico" createdAt="2025-04-20T15:16:40" color="">}}

{{<matomeQuote body="面白いことに、Gemma 3のドキュメントにはこう書いてあるよ。<br>＞https://ai.google.dev/gemma/docs/core/model_card_3#:~:text=T…　”4B、12B、27Bサイズの場合は最大128Kトークン、1Bサイズの場合は最大32Kトークンの出力コンテキスト。リクエストの入力トークンを引く”<br>どうすればそんなに出力できるのかわからないけど。" userName="simonw" createdAt="2025-04-20T15:47:57" color="">}}

{{<matomeQuote body="貴重な情報とリンクをありがとう！<br>色々試してみるね。Mistral3.1も試してみる。<br>追記：Mistral3.1を試してみたら、出力の質がすごく良かったよ。少なくとも他のモデル（llama2:7b-chat、llama2:latest、gemma3:12b、qwq、deepseek-r1:14b）よりはね。<br>調べてみたら、ほとんどのモデルは長い出力を生成するように訓練されてないみたい。だから、技術的には可能でも、やらないんだね。自分でトレーニングデータセットを作って、ファインチューニングする必要があるかも。モデルとOllamaには、長文や繰り返しに対する安全策があるみたいだし。" userName="nico" createdAt="2025-04-20T16:14:31" color="#ff33a1">}}

{{<matomeQuote body="Hugging Faceで長文に特化したモデルが見つかるかも。QwQ-32B（デスクトップで実行可能）とMistral Large（サーバーで実行する必要あり）は、まあまあの結果が出てるよ。全体を書く前にアウトラインを作って、それを修正していくと良いかも。あるいは、段落ごとに分割して出力していくとか。今のところ、なかなか難しいプロセスで、結果もまちまちだけどね。" userName="Gracana" createdAt="2025-04-20T19:43:56" color="">}}

{{<matomeQuote body="＞Ollamaだと約22GB、MLXだと約15GBしか使わない<br>なんでメモリ使用量が違うんだろ？コンテキストサイズが違うとか？" userName="littlestymaar" createdAt="2025-04-20T17:47:21" color="">}}

{{<matomeQuote body="このモデルのMLX版をOllama経由で実行して、Open WebUIでインタラクトできるようにできないかな？" userName="codybontecou" createdAt="2025-04-20T21:55:27" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="個人的な”vibe check”の質問をいくつかしてみたら、4bit QATの27Bモデルが全部正解したんだよね。たった13GBの重みに、こんな情報が詰まってるなんてマジで驚き。Deepmindの人見てる？Gemma 3 27Bは、今まで使ったオープンソースモデルの中で一番すごいよ！マジですごい！" userName="Samin100" createdAt="2025-04-20T20:10:38" color="#ff33a1">}}

{{<matomeQuote body="-itモデルを翻訳に使おうとしたんだけど、アダルトコンテンツの翻訳に全く使えなかった…。自分でinstruction tuningして-ptモデルをトレーニングするか、別のプロバイダー使うしかないかー。" userName="itake" createdAt="2025-04-21T04:44:02" color="">}}

{{<matomeQuote body="mradermacher/amoral-gemma3-27B-v2-qat-GGUFを試してみて" userName="jychang" createdAt="2025-04-21T07:53:09" color="">}}

{{<matomeQuote body="今の構成は、高速翻訳のためにオンデバイスモデルを使って、準備ができたら遅い翻訳（API呼び出し経由）に置き換えるって感じ。<br>24bだとデバイスで動かすには小さすぎるし、クラウドのコストは抑えたいから、27bを24時間365日ホストする余裕はないんだよね。" userName="itake" createdAt="2025-04-21T10:53:12" color="">}}

{{<matomeQuote body="今の構成は、高速翻訳のためにオンデバイスモデルを使って、準備ができたら遅い翻訳（API呼び出し経由）に置き換えるって感じ。<br>24bだとデバイスで動かすには小さすぎるし、クラウドのコストは抑えたいから、27bを24時間365日ホストする余裕はないんだよね。" userName="itake" createdAt="2025-04-21T10:52:57" color="">}}

{{<matomeQuote body="最初のグラフは、色々なモデルで”native”BF16 precisionを使った時の”Elo Score”の比較で、2番目のグラフはnative BF16 precisionとQATモデルのVRAM使用量の比較だよね。でも、この手法は量子化しながら品質を維持することが目的なんだから、BF16とQATの品質を比較するグラフがないのはおかしくない？記事にも書いてないし、ブログポストの主題なのに。" userName="diggan" createdAt="2025-04-20T13:29:20" color="#ff5c5c">}}

{{<matomeQuote body="確かに、見たかったのは量子化モデルのElo/パフォーマンスで、ベースモデルの良さじゃないんだよね。量子化でどれだけメモリが節約できるかをグラフで示すのは、読者の知性を侮辱してる気がする。" userName="croemer" createdAt="2025-04-20T14:14:00" color="#785bff">}}

{{<matomeQuote body="加えて、”Massive VRAM Savings”のグラフはトートロジーに見える。16ビットから4ビットに減らすと、当然メモリ使用量が1/4になるよね。" userName="nithril" createdAt="2025-04-20T14:19:36" color="">}}

{{<matomeQuote body="naiveな量子化と比較して”perplexity drop”が減ったとは言ってるけど、意味不明。<br>＞llama.cppのperplexity評価を使って、Q4_0まで量子化するとperplexity dropを54%削減できる”<br>ベンチマークを見せて欲しいか、量子化バージョンをアリーナに追加して欲しい！:＞" userName="claiir" createdAt="2025-04-20T18:06:00" color="">}}

{{<matomeQuote body="マジか！Ollamaを使って、32GのMacで日常作業にqwen2.5の代わりにgemma3:27b-it-qatを使ってるよ。open-codexと組み合わせたgemma3:27b-it-qatがローカルで動くのがマジで便利。PythonだけじゃなくてHaskellとかCommon Lispにも使えるし。Gemini 2.5 Proもブレストとか難しい問題にはいいけど、ルーチンワークは全部オープンソースで自分のシステムで動かせるのが最高。" userName="mark_l_watson" createdAt="2025-04-20T19:00:40" color="#ff33a1">}}

{{<matomeQuote body="32GBのMBP仲間発見！常駐時のメモリ使用量はどのくらい？スワップが発生する場合、日常作業に影響ある？毎日SASみたいな仮想化されたブロートウェア使ってるから気になる。" userName="nxobject" createdAt="2025-04-21T09:42:26" color="">}}

{{<matomeQuote body="Macで普通のアプリとopen-codexを同時に動かしてるけど、OllamaとGemma 3 27B QATの組み合わせなら、大きなコンテキストでもシステムに負荷はかからないみたい。簡単な作業ならGemini 3.5 Pro APIよりローカル実行の方が好き。" userName="mark_l_watson" createdAt="2025-04-21T13:10:31" color="#ff5c5c">}}

{{<matomeQuote body="解決した！Leanpubの本を見つけて手順通りにやったらqwen-2.5で動いた。Gemmaでも試してみる。" userName="pantulis" createdAt="2025-04-21T12:39:53" color="">}}

{{<matomeQuote body="tpsはどのくらい？KVサイズは変更した？" userName="Tsarp" createdAt="2025-04-21T09:41:11" color="">}}

{{<matomeQuote body="Gemma 3はLlama 4より全然良いと思う。MetaはLLMでの地位を失うかもね。Llama 4はサイズが大きすぎるのが弱点。Gemma 3は幅広いハードウェアで使えるのが強み。" userName="mekpro" createdAt="2025-04-20T15:45:59" color="#ff33a1">}}

{{<matomeQuote body="マジで впечатляюще! CPU (16 core AMD 3950x)で動かしてるけど、翻訳がマジすごいし、画像の説明も素晴らしい。Calme-3.2より速い。指示しないと色々説明してくるから、翻訳の場合は「翻訳だけして」って指示してる。" userName="trebligdivad" createdAt="2025-04-20T14:31:02" color="#ff33a1">}}

{{<matomeQuote body="llama.cppを使ってる。画像を使うには、専用のクライアントを使う必要がある。<br>例：./build/bin/llama-gemma3-cli -m /discs/fast/ai/gemma-3-27b-it-q4_0.gguf --mmproj /discs/fast/ai/mmproj-model-f16-27B.gguf -p ”Describe this image.” --image ~/Downloads/surprise.png<br>2つ目のggufファイルは画像のエンコード用だと思う。" userName="trebligdivad" createdAt="2025-04-20T14:47:45" color="">}}

{{<matomeQuote body="Image inputは結構前からLM Studioで動いてるよ" userName="terhechte" createdAt="2025-04-20T16:02:28" color="">}}

{{<matomeQuote body="cliで使いたいんだよね！<br>https://github.com/agustif/llm-lmstudio" userName="tough" createdAt="2025-04-22T03:02:19" color="">}}

{{<matomeQuote body="これから出るqwen3シリーズはMoEらしいよ。CPUでのtk/sが良さそう。" userName="Havoc" createdAt="2025-04-21T00:41:18" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Mixture of expertsのことで、全部メモリにロードされるけど、トークン生成に必要なのは一部だけ（Gemmaみたいな普通のLLMと違って）。メモリがたくさんあるけど処理能力が弱いデバイスだと、出力品質は同じくらいで速くなるかも。CPUとかAPUみたいな構成に向いてる。" userName="Havoc" createdAt="2025-04-21T08:57:12" color="#ff5c5c">}}

{{<matomeQuote body="MoEのために全部メモリにロードしてるかどうかも怪しい。必要なexpertだけページングしてるのかも。" userName="trebligdivad" createdAt="2025-04-21T17:49:19" color="">}}

{{<matomeQuote body="Mixture of Expertsのこと。簡単に言うと、独立して起動できるミニネットワーク（expert）がたくさんある。" userName="zamalek" createdAt="2025-04-21T03:51:12" color="#ff5733">}}

{{<matomeQuote body="これこそローカルLLMに必要なことだよねー。企業がちゃんと扱ってくれるのが。<br>ただ、最初のグラフのDeepSeek r1をFP16で動かすのに必要なH100の数は誤解を招くよ。モデルはFP8だよ。" userName="behnamoh" createdAt="2025-04-20T13:45:02" color="#ff5733">}}

{{<matomeQuote body="あと、H100を家でバッチサイズ1で動かす人なんていないよね。大事なのはスループット。37bのアクティブパラメータと大規模なデプロイメントがあれば（GPUあたり）、Gemmaと似たような感じになるはず。" userName="mmoskal" createdAt="2025-04-20T19:12:42" color="#ff33a1">}}

{{<matomeQuote body="DeepSeek r1との実際の比較はどうなの？どっちがコスト効率が良くて、ローカルで実行できるオープン（再現可能なビルド）なのか知りたいな。" userName="freeamz" createdAt="2025-04-20T15:33:45" color="#ff5c5c">}}

{{<matomeQuote body="必要なのはその点の半分くらいかな。それにしても、27Bのモデルと+600Bのモデルを比較するのって意味なくね？" userName="behnamoh" createdAt="2025-04-20T15:44:49" color="">}}

{{<matomeQuote body="それ古い画像だよ。ブログ記事に再利用しただけで。<br>例えば、https://ai.google.dev/gemma にも載ってる。" userName="smallerize" createdAt="2025-04-20T19:06:55" color="">}}

{{<matomeQuote body="マジでスピードアップしてるわ。最新のQAT gemma3:27bをダウンロードしたら、ollamaでのeval perfが1.47倍速くなった。13.72 tok/sから20.11 tok/sに向上（A4000上）。" userName="mythz" createdAt="2025-04-20T13:46:15" color="#38d3d3">}}

{{<matomeQuote body="Microsoftがずっと”AI PC”を売り込み、Appleが”made for Apple Intelligence”を宣伝してたけど、実際にconsumer GPUで使えるモデルって、3090みたいな超ハイエンドGPUでようやく出てきたくらいってのが笑える。" userName="porphyra" createdAt="2025-04-20T17:31:42" color="#ff33a1">}}

{{<matomeQuote body="だから”AIハードウェアサイクルは誇大広告”って言ってる連中は間違ってるんだよ。まだ全然そんなレベルじゃない。ColecoVision/Atariの段階だよ。みんながSNES/Genesisを手に入れた時が楽しみだわ。" userName="ivape" createdAt="2025-04-20T18:50:30" color="#785bff">}}

{{<matomeQuote body="Macではユニファイドメモリのおかげで、結構前からローカルモデルが使えるようになってる。" userName="icedrift" createdAt="2025-04-20T21:00:09" color="">}}

{{<matomeQuote body="AI PCっていうのは、3090クラスのGPUが必要なモデルを動かすことじゃなくて、Phi-3.5-vision-instructみたいなのをシステムのRAM上で動かすことなんだよ。NPU内蔵のCPUを使うのが前提。だからAI PCの要件にはNPUの搭載、一定の処理能力、最低限のDDR5/LPDDR5システムRAMが指定されてる。" userName="dragonwriter" createdAt="2025-04-20T21:54:48" color="#45d325">}}

{{<matomeQuote body="3090は超ハイエンドGPUじゃないよ。2020年に発売されたconsumer GPUで、価格と計算能力から見ても、最近ではミドルレンジのconsumer GPUくらいの位置づけだよ。NvidiaのハイエンドconsumerカードはRTX 5090で、プロフェッショナル版はRTX PRO 6000。" userName="NorwegianDude" createdAt="2025-04-20T21:04:19" color="#ff5c5c">}}

{{<matomeQuote body="モデルの使いやすさの二択（yes/no）で言えば、一番重要なのはVRAMの容量。24GBの3090は、consumer NVidia GPUとしてはまだハイエンドだよ。5090（とそれだけ）が32GBで上だけど、24GBはミドルレンジよりは全然上。" userName="dragonwriter" createdAt="2025-04-20T21:36:56" color="#38d3d3">}}

{{<matomeQuote body="24GBのVRAMはconsumer GPUとしては大容量ってのはマジ同意。でも、最近では超ハイエンドGPUとは言えない。確かに適してるけど、ハイエンドではない。consumer GPUのハイエンドの選択肢はRTX 5090だけど、今は3000ユーロもする。中古の3090なら650ユーロくらい。" userName="NorwegianDude" createdAt="2025-04-20T22:41:40" color="#ff33a1">}}

{{<matomeQuote body="3090ってまだ1800€もするのかー。全然ミドルレンジじゃないじゃん。5070とか5070tiが650～900€くらいでミドルレンジだよ。" userName="zapnuk" createdAt="2025-04-20T21:31:07" color="">}}

{{<matomeQuote body="3090はもう生産してないから、新品が高いんだね。少なくともこっちだと、中古の3090は650€くらいで、RTX 5070は625€くらいだよ。<br>もう完全にハイエンドってわけじゃないし、値段は（少なくともこっちでは）新しいミドルレンジのカードと同じくらい。<br>場所によって値段は違うんだろうけど、3090が1800€はありえない。2020年の新品価格より高いじゃん。" userName="NorwegianDude" createdAt="2025-04-20T22:27:19" color="#45d325">}}

{{<matomeQuote body="一年前、EVGAのハイブリッド水冷3090 Tiを700ユーロで買ったんだ。マジで良い買い物だったと思ってる。特に24GBのカードが同じくらいの値段で手に入らないことを考えるとね。<br>ピュアゲーミングだと、もっと性能が良いカードもあるけど、ほとんど12～16GBのVRAMしかないんだよね。" userName="sentimentscan" createdAt="2025-04-20T23:24:51" color="#38d3d3">}}

{{<matomeQuote body="16GBのAMD Radeon 7900 GREと64GBのマシンで、ROCmとllama.cppを使ってWindows 11で動かしてるよ。Open-webuiかネイティブGUIでインターフェースを使える。<br>家のメンバー全員が内部IPでアクセスできるようにしてるんだ。<br>26 tokens/秒くらいで動いてて、FP16で、FP8はRadeon 7900 GREではサポートされてない。<br>マジ最高。<br>コーディングだとQwQ 32bがやっぱり最強。でも16GBのVRAMカードだと3 tokens/秒くらいしか出なくて、使い物にならないんだよね。<br>Gemma 3にTerminalのGUIインターフェースでpowershellスクリプトを書かせようとしたら、行き詰って諦めちゃった。QwQ 32Bの方が全然良かった。<br>でも、一般的な用途には最高だよ。うちの子が学校の教科書を読み込ませて質問してる。今んとこ、これが一番良い。<br>なんかllamaとかQwenみたいな中国のモデルより「堅苦しい」んだよね。うまく言えないけど、中国のモデルの方が親切でおしゃべりな気がする。" userName="manjunaths" createdAt="2025-04-21T06:58:54" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
