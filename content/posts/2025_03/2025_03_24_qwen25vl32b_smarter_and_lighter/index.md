+++
date = '2025-03-24T00:00:00'
months = '2025/03'
draft = false
title = 'Qwen2.5-VL-32Bがマジすごい！賢くて軽くなったってマジ！？'
tags = ["AI", "LLM", "Qwen", "オープンソース", "画像認識"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> Qwen2.5-VL-32Bがマジすごい！賢くて軽くなったってマジ！？

引用元：[https://news.ycombinator.com/item?id=43464068](https://news.ycombinator.com/item?id=43464068)

{{<matomeQuote body="マジかよ、中国のオープンソースモデルが熱い一日だな！DeepSeek-v3-0324も今日リリースされたじゃん。DeepSeek v3のアップデート版で、MITライセンスになったんだって（前はDeepSeekのカスタムライセンスだった）。詳しくは[https://simonwillison.net/2025/Mar/24/deepseek/]見てみな。" userName="simonw" createdAt="2025-03-24T18:52:15" color="#45d325">}}

{{<matomeQuote body="マジでもうアメリカのモデル使わなくなるかも。100%中国のオープンソーススタックになるわ。マジでfoundation model companiesはヤバいって。Nvidiaとかインフラ系企業とか、製品作ってる会社しか勝たん。" userName="echelon" createdAt="2025-03-24T19:20:33" color="">}}

{{<matomeQuote body="オープンソースモデルの資金源ってマジでどこから来るんだろ？投資家マネー燃やすのがもう無理になったらさ。企業が何千ものGPU買って、人件費かけてラベル付けとかチューニングして、それをタダで配り続けるとかありえなくね？" userName="jsheard" createdAt="2025-03-24T19:32:54" color="">}}

{{<matomeQuote body="NVIDIAから来るかもね。「プロダクトの補完財をコモディティ化する」ってやつ。[https://www.joelonsoftware.com/2002/06/12/strategy-letter-v/]" userName="mitthrowaway2" createdAt="2025-03-24T19:40:13" color="">}}

{{<matomeQuote body="これマジでそう思う。中国は製造業（例えばロボット）が強いじゃん。AIってその補完財だし。AIはテック製品の需要を増やすんだよ。アメリカはその逆で、ソフトウェアが強い。中国にとってAIは、ロボットとか製造業とか、もっとデカい市場への足がかりになるんだよね。AIをコモディティ化することで、強みはAIじゃなくて、物理的なものになる。AIのおかげで、古い経済が復活するってこと。" userName="akra" createdAt="2025-03-24T19:53:04" color="#45d325">}}

{{<matomeQuote body="ありえるかもね。特定の国は、他の国より安くオープンモデルを作れるようになる。アメリカとかヨーロッパは無理かも。でも、国家安全保障とか、自国のモデルを海外に広めたいから、アメリカとかヨーロッパの政府がモデルを補助金出すかもね。ハリウッドみたいに、オープンソースモデルを使って自国のイデオロギーを広めるってのもある。" userName="pizzly" createdAt="2025-03-25T01:05:02" color="#ff5733">}}

{{<matomeQuote body="なんで特定の国が安く作れるようになると思う？エネルギーが鍵？中国は再生可能エネルギーで世界をリードしてるし、石炭でもリードしてるから、その点で有利ってこと？" userName="energyrace" createdAt="2025-03-25T01:27:27" color="">}}

{{<matomeQuote body="中国の問題は、レイテンシだよな。今DeepSeekのモデルってレイテンシ高すぎ。DDoSとかインフラが弱いせいもあるかもだけど、Great Firewallのせいもあるだろうし。プロンプトの検閲とか、サーバーの場所（アメリカとかヨーロッパまでpingがデカい）とかも関係あるかも。" userName="pzo" createdAt="2025-03-25T05:54:53" color="#ff5c5c">}}

{{<matomeQuote body="＞Right now DeepSeek models hosted in china are having very high latency.<br>DeepSeekのAPIサービスの話なら、わざと負荷が高い状態でサービスを運用して、アグレッシブなバッチ処理をしてH800を最大限に活用してるからだよ。理由は「うちのボスがビジネスをやりたくない」らしいけど。" userName="rfoo" createdAt="2025-03-25T11:10:13" color="#38d3d3">}}

{{<matomeQuote body="ナショナリストのプロパガンダが広告としてカウントされるなら、すでに中国のモデルをサポートしてるかもね。天安門広場について聞いてみたら？<br>コピーとか配布コストがほぼゼロのメディアは、デフレ的な底辺への競争になるよね。誰かが無料で何かをリリースしたら、特別なもの以外は無料のものには勝てない。そうなると、OPが言ってる問題、どうやって無料を維持するかって話になる。答えは広告。そうなると、顧客はユーザーじゃなくて広告主になるから、メディアはゴミになるんだよね。" userName="api" createdAt="2025-03-24T19:40:07" color="">}}

{{<matomeQuote body="これらの広告には広告ブロッカーもあるけどね。<br>Perplexityがdeepseek r1 1331？（忘れちゃった）をリリースしたよね。これは中国の検閲を取り除いてるんだ。天安門広場について聞けるよ。<br>AIモデルの広告はもっとこっそりになると思うから、削除が難しくなるかも。<br>中国の検閲についてコメントしてるけど、アメリカの検閲はOKってどうなのよｗ" userName="Imustaskforhelp" createdAt="2025-03-24T19:48:25" color="">}}

{{<matomeQuote body="モデルの「alliterated」バージョンもたくさんあるよね。これは、プロンプトへの応答を拒否するモデルの能力を基本的に削除するもの。huihui r1 14b alliteratedは、天安門広場について教えてくれなかったけど、何とか聞き出すことができたよ。<br>Perplexityのモデルは追加情報で調整されてるけど、alliteratedモデルは基盤モデルにトレーニングされた情報だけを含んでるから面白いよね。" userName="Zambyte" createdAt="2025-03-24T23:12:38" color="#ff33a1">}}

{{<matomeQuote body="エンドユーザーはオープンソースモデルを手に入れることができる。<br>それに、中国はChips ActのせいでGPUをたくさん持ってない。<br>アメリカが中国よりも共産主義的に聞こえるのが嫌だ。中国は自由市場だからオープンソースにしてるのに。<br>もっと多くの国がAIに投資すべきだと思う。企業が利益を求めるんじゃなくて。<br>これは次の世紀に影響を与える決定になるかも。" userName="Imustaskforhelp" createdAt="2025-03-24T19:52:00" color="#45d325">}}

{{<matomeQuote body="モデルが人種差別的にならないようにバイアスをかけるために、どれだけのテラワット時が費やされたか知ってたら驚くよ。" userName="greenavocado" createdAt="2025-03-24T20:07:10" color="">}}

{{<matomeQuote body="中国はかなり市場の自由化を認めてるから、AIが市場に反応しても驚かない。<br>でも、その逆はどうなんだろう？独自のAIが共産主義と関連付けられる理由がわからない。共産主義的なAIの扱い方もモデルを共有することだと思う。" userName="bee_rider" createdAt="2025-03-24T20:30:40" color="">}}

{{<matomeQuote body="独自のAIが共産主義と関連付けられるのは、みんなが一番得意なことをして自由市場で競争するんじゃなくて、社内で全部やろうとしてるから。<br>例えば、Chatgptなどは自社のGPUでホストして、10tk/sとか生成できる。<br>groqとかcerebrasは4000 tk/sのトークン生成ができるけど、オープンソースモデルが必要なんだ。<br>だから、真の資本主義の哲学に従ってない気がするんだ。" userName="Imustaskforhelp" createdAt="2025-03-25T07:33:04" color="">}}

{{<matomeQuote body="私は11月から、Claude以外の、信頼性の高いエージェントツールコールループができるモデルを待ってるんだ。<br>中国のオープンモデルが、推論とベンチマークの最大化を追求してる限り、2024年中頃の米国のプライベートモデルを無視しても問題ない。<br>これは個人的な趣味の話じゃないよ。私はこの分野でビジネスをしてる。オープンモデルで確実にツールコールができるAIクライアントを持ってるのは私だけだと思う。llama.cppが大規模な貢献をしてくれたおかげ。会話型チャットボットに焦点を当てる余裕がある時代は終わったと思う。それは2010年代のSV思考。" userName="refulgentis" createdAt="2025-03-24T19:54:58" color="#ff33a1">}}

{{<matomeQuote body="せやな、その通り。しかも簡単じゃないのがミソ。Manusはtools付きのSonnetってこと。" userName="refulgentis" createdAt="2025-03-25T20:01:21" color="#38d3d3">}}

{{<matomeQuote body="agenticなことだけさせる1Bモデルをtrainできない理由ってなんかあるん？" userName="throwawaymaths" createdAt="2025-03-24T19:59:08" color="">}}

{{<matomeQuote body="スペースめっちゃケチってるね、思った以上に。<br>＞1st promptは”1048576^0.05は何？”で、ちゃんと答えた。<br>＞次に”Hi”って言ったら…まあ、そういうこと。<br>Claude Sonnet 3.5はagentic loop的なのが組み込まれてたのはマジ。ファイルサーバー足して初めて気づいた人もいるくらい。<br>on-deviceモデルじゃ、ファイル全部読ませる方式はまだ無理かもね。<br>OpenAIはreasoning重視、MistralはGPU不足っぽい。Googleは…自主規制。Consensus Built™が邪魔して、怖いこととか実験的なことには手を出せないんだと思う。<br>Sonnetもイマイチっぽい。みんな不満げだけど、reasoningのtrainが甘いのが原因じゃね？<br>昨日なんか、ファイル読んで編集クエリで60ページも考えて、130個もtool call(実際は呼ばれてない)してさまよってたし。<br>chatはLLMのハック。reasoningもそう。抽象化しすぎると信用できなくなる。3.7 Sonnetがそれかも。agentic loopに見えるし。chat、reasoning、信頼できるagentic loop全部乗せは無理かもね。" userName="refulgentis" createdAt="2025-03-24T20:13:49" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="o1-proに昨日は99490126816810951552*23977364624054235203って聞いたら、16分もかかって8桁くらい違う答えが出てきた。<br>https://chatgpt.com/share/67e1eba1-c658-800e-9161-a0b8b7b683..." userName="AlexCoventry" createdAt="2025-03-24T23:32:40" color="">}}

{{<matomeQuote body="このfree版は”promptとかcompletionを新しいモデルのtrainに使うかも”だって。<br>https://openrouter.ai/deepseek/deepseek-chat-v3-0324:free<br>これ、ヤバくない？" userName="chaosprint" createdAt="2025-03-24T19:06:45" color="">}}

{{<matomeQuote body="OpenRouterのfreeオプションはよくあること。trainに使われたくないなら有料版使えばOK。<br>https://openrouter.ai/deepseek/deepseek-chat-v3-0324" userName="wgd" createdAt="2025-03-24T19:08:28" color="#ff5733">}}

{{<matomeQuote body="OpenRouterはfrontierモデルのpromptとresponseからモデルをdistillする計画なの？賢いけど、ちょいキモいけど、賢い。" userName="overfeed" createdAt="2025-03-24T22:58:56" color="">}}

{{<matomeQuote body="OpenRouterのCOOです。upstream providerの保持とtrainポリシーは保証できないって言ってるだけだよ。prompt dataは保存しないよ。loggingにopt-inした場合(1% inference discount)は別だけど。" userName="numlocked" createdAt="2025-03-24T23:09:37" color="#45d325">}}

{{<matomeQuote body="1% discountはケチすぎ。25%か50%なら登録するかも。" userName="simonw" createdAt="2025-03-24T23:24:36" color="">}}

{{<matomeQuote body="うちの客のdataは別に欲しくないし(笑)" userName="numlocked" createdAt="2025-03-24T23:32:47" color="">}}

{{<matomeQuote body="HNにいるなら、OpenAI互換のプロバイダーを使ったopen－webuiをマジでおすすめするよ。Deep Infraを1年以上使ってて超満足してるんだ。新しいモデルもリリース後1、2日で使えるようになるし。友達も結構毎日使ってるみたい。" userName="huijzer" createdAt="2025-03-24T19:21:48" color="#ff5733">}}

{{<matomeQuote body="家でopen－webuiをいくつかのモデルで使ってるよ。gemma2－9bはNV 3060のVRAMに収まるし、パフォーマンスもいい感じ。" userName="unquietwiki" createdAt="2025-03-24T19:45:41" color="#785bff">}}

{{<matomeQuote body="Cloudflareのトンネルを設定すれば、open－webuiのインスタンスをオンラインでアクセスできるようになるよ。マジ簡単。" userName="totetsu" createdAt="2025-03-24T23:22:15" color="">}}

{{<matomeQuote body="…またはTailScaleネットワークでもいけるね。open－webuiをラップトップで起動したまま、TailScale経由でスマホからアクセスしてる。マジ便利。" userName="simonw" createdAt="2025-03-24T23:25:25" color="#38d3d3">}}

{{<matomeQuote body="マジか！OpenAIとかGoogleがやるとみんなOKなのに、オープンソースのプロバイダーがやるとみんな防御的になるんだな…。" userName="behnamoh" createdAt="2025-03-24T20:13:29" color="">}}

{{<matomeQuote body="俺は小さい会社より大企業の方がデータに関して信頼できるな。大企業はデータ量が多すぎて、誰かが俺のデータを見ることはないだろうし。小さい会社だとエンジニアがユーザー４としてログを見てるかもね。<br>それに、大企業にはデータを守るセキュリティチームがいるし、OPがHttps証明書を設定するのが面倒だからって、暗号化されてないリンクでcloudflareに送られることもないだろうし。" userName="londons_explore" createdAt="2025-03-24T21:57:27" color="">}}

{{<matomeQuote body="もうjschoeテストはクリアしたってことでいいんじゃない;)" userName="AuryGlenz" createdAt="2025-03-25T01:12:01" color="">}}

{{<matomeQuote body="このモデル、MLXで使えるようになったみたいだよ。サイズも色々あるって。<br>https://huggingface.co/mlx-community/Qwen2.5-VL-32B-Instruct...<br>をuvで実行したんだ（だからライブラリのインストールは不要）。<br>https://github.com/Blaizzy/mlx-vlm<br>はこんな感じ：<br>uv run --with 'numpy<2' --with mlx-vlm \<br>python -m mlx_vlm.generate \<br>--model mlx-community/Qwen2.5-VL-32B-Instruct-4bit \<br>--max-tokens 1000 \<br>--temperature 0.0 \<br>--prompt ”Describe this image.” \<br>--image Mpaboundrycdfw-1.png<br><br>これで約18GBのモデルをダウンロードして、すごい結果が出たんだ。詳しくはここを見て：https://simonwillison.net/2025/Mar/24/qwen25-vl-32b/" userName="simonw" createdAt="2025-03-24T22:24:00" color="#ff5733">}}

{{<matomeQuote body="量子化されたMLXってvisionもサポートしてるのかな？UVって実行するのに一番いい方法？" userName="john_alan" createdAt="2025-03-25T09:50:17" color="">}}

{{<matomeQuote body="だって、そのワンライナーでモデルがすぐに動くんだもん。依存関係をあれこれ調べて、結局うまくいかなくて、「もう嫌だ、大工にでもなりたい」ってなるよりずっといいじゃん。" userName="stavros" createdAt="2025-03-25T13:58:21" color="#ff5733">}}

{{<matomeQuote body="そうそう。Pythonの仮想環境を作って、mlx-vlmをインストールして、numpy 2.0だと動かないライブラリがあるからnumpy 1.0にダウングレードして…みたいなレシピを教えることもできるけど、uvを使えば全部ワンライナーで済むんだ。" userName="simonw" createdAt="2025-03-25T15:31:32" color="#785bff">}}

{{<matomeQuote body="Pythonの質問だけど、numpy 2xがあんまり普及してないってことなのかな？numpy-1.26が安定版みたいだけど。" userName="mistrial9" createdAt="2025-03-25T16:30:49" color="">}}

{{<matomeQuote body="根本的なライブラリの破壊的な変更だから、エコシステム全体がアップグレードするのに時間がかかるんじゃないかな。Pydanticが1から2にアップグレードした時も同じようなことがあったよ。" userName="simonw" createdAt="2025-03-25T21:37:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="torch 2.6とnumpy 2.2のプロジェクトがあるけど、特に問題はなかったよ。" userName="maleldil" createdAt="2025-03-25T20:28:48" color="">}}

{{<matomeQuote body="数ヶ月前にLlama vision 3.2を使ってて、速度と結果の質にすごいイライラしてたんだ。Hugging Faceで代替を探してたら、Qwenに出会ったんだ。精度と速度の違いにマジで驚いた。画像の中から何かを見つけるように頼むと、4090で0.5秒くらいで返ってくるし、ほとんどの場合正しいんだ。<br>＞画像からエンティティ名を抽出するように頼んだ時、エンティティ名が途切れてても、完全な名前を返してくれるんだ（例えば、背景に”Coca-C”って見えてたら、”Coca-Cola”って返ってくる）。Coca-Colaほど有名じゃないエンティティや、特定の地域でしか知られてないエンティティでもそうなんだ。Qwenを試してからは、Llamaとか他のvisionモデルは使ってない。" userName="ggregoire" createdAt="2025-03-24T21:11:49" color="#ff5c5c">}}

{{<matomeQuote body="Qwenを使い始めてから、マジ最高。ほとんどの場合に使えるモデルがあるし。デイリークォータもないし！しかも、1Mトークンものコンテキストウィンドウを使えるんだ。" userName="Alifatisk" createdAt="2025-03-25T10:21:52" color="#ff5c5c">}}

{{<matomeQuote body="どうやって使ってるの？誰が毎日のクォータを管理してるんだろ？" userName="Hugsun" createdAt="2025-03-25T12:06:31" color="">}}

{{<matomeQuote body="chat.qwenlm.aiで使ってるよ。いいのは、3つの異なるモードでプロンプトを並行して実行して、どれが最適かを確認できること。<br>ChatGPTとClaudeは、無料ユーザーには使用制限があるけど、Qwenは使いまくっても大丈夫そう。画像生成、ビデオ生成、大規模なコンテキストウィンドウ、視覚的およびテキスト的推論など、すべてが1つにまとまっているからマジで便利。Alibabaはすごいことやってるね。" userName="Alifatisk" createdAt="2025-03-25T17:16:18" color="#ff5733">}}

{{<matomeQuote body="Ollamaとかllama.cppとか、何を使って動かしてるの？" userName="exe34" createdAt="2025-03-25T10:25:28" color="">}}

{{<matomeQuote body="32Bは今一番好きなモデルサイズの一つだわ。GPT-4の2023年3月レベルの性能があってマジ使える。しかも、GPU1枚か、32GB以上のMacBookでも動かせるくらい小さいし。" userName="simonw" createdAt="2025-03-24T18:53:48" color="#ff33a1">}}

{{<matomeQuote body="ローカルマシンでセルフホスティング始めたばかりで、今はhttps://lmstudio.ai/をローカルで使ってるよ。<br>32bモデルはChatGPT PlusとClaudeにお金を払うのをやめてもいいくらい良いと思う。<br>俺のM3だと約20 tok/秒だけど、小さいモデルや量子化されたモデルだと100 tok/秒出る。100 tok/秒近いと速すぎて読めないから、インタラクティブな使用には80-100 tok/秒がベスト。<br>QwQ reaoning modelもマジ好き。特にコーディングエージェントのエージェントとRAGにローカルホストモデル使ってみたい。<br>バックグラウンドで実行するだけなら20 tok/秒で十分。<br>みんなの経験も知りたいな。俺は今週末こんな感じだった。<br>オンデバイスが近い将来だと思うし、DBプロバイダーみたいにエンタープライズサポートとアップデートのライセンス料を請求するべき。" userName="faizshah" createdAt="2025-03-24T19:41:31" color="#ff5733">}}

{{<matomeQuote body="7B、13B、32Bとかのサイズをローカルで実行するために必要なハードウェアスペックを見積もるための良い情報源ってある？予算が少ない大学院生だけど、ローカルでホストしたいからPC組みたいんだよね。" userName="wetwater" createdAt="2025-03-24T19:44:54" color="">}}

{{<matomeQuote body="＂B＂は＂ビリオン＂の意味。7Bモデルは70億のパラメータを持っている。ほとんどのモデルはfp16でトレーニングされてるから、各パラメータはフル精度で2バイト使う。だから、7B = 14GBのメモリが必要。モデルを8ビットに量子化すると、品質の低下はわずかで済むから、7B = 7GB。もっと品質を犠牲にすると4ビットに量子化できて7B = 3.5GB。2ビット未満から6ビットまで量子化できるよ。<br>コンテキスト/KVキャッシュ用に追加のメモリも必要。会話の早い段階を忘れる前にどれだけのテキスト/イメージを会話に含めることができるかに関連するよ。<br>ローカルLLMのパフォーマンスにとって一番重要なのはメモリ帯域幅。GPUのVRAMはCPUのRAMよりずっと速いから、GPUの方がLLM推論がずっと速い。Apple Siliconはまともなメモリ帯域幅があるから、Intel/AMD CPUとGPUの中間くらいの性能。Apple Siliconは同じVRAM量のディスクリートGPUほど速くはないよ。<br>32Bモデルを5ビットで量子化すると、24GBのGPUに余裕で収まるし、コンテキストウィンドウを大きくしすぎなければ、まともな速度で動くよ。" userName="coder543" createdAt="2025-03-24T20:14:43" color="#ff5c5c">}}

{{<matomeQuote body="質問なんだけど、知ってたら教えてほしいな。<br>同じギガバイト数のモデルなら、高B低ビットと低B高ビットどっちを選ぶべき？銀の弾丸みたいなのってある？例えば＂常に8ビット7Bより4ビット13Bを選ぶべき＂みたいな。<br>同じサイズのモデルは基本的に同じなの？" userName="wruza" createdAt="2025-03-25T01:20:10" color="">}}

{{<matomeQuote body="10回中9回は、Q8の小さいモデルより、1サイズ大きいQ4モデルの方が良い結果が得られると思うよ。でも、Q4より下にはしない方が良い。" userName="anon373839" createdAt="2025-03-25T06:07:31" color="#ff5c5c">}}

{{<matomeQuote body="今のモデルは学習不足で密度が高くないから、Q4でもあまり影響がないけど、将来の高密度モデルでは影響があるかもね。" userName="nenaoki" createdAt="2025-03-25T10:22:48" color="">}}

{{<matomeQuote body="それマジかもね。Llama 1 65Bみたいな昔のモデルは、もっとアグレッシブな量子化に耐えられたらしいし、その考えを裏付けてる気がする。" userName="anon373839" createdAt="2025-03-25T15:38:56" color="">}}

{{<matomeQuote body="結局、AMDがGPUをinferenceの分野で成功させるためにやることは、RAMを積むことだけってこと？" userName="epolanski" createdAt="2025-03-24T22:41:33" color="">}}

{{<matomeQuote body="AMDの弱点は、ハードウェアよりもソフトウェアの問題って感じだよね。" userName="TrueDuality" createdAt="2025-03-24T23:03:38" color="">}}

{{<matomeQuote body="でも、まだやってないのがマジで謎。VRAMを2倍積んだGPU出したら、みんなめっちゃモチベーション上がると思うんだけどなー。簡単じゃないのはわかるけどさ。" userName="AuryGlenz" createdAt="2025-03-25T01:15:21" color="">}}

{{<matomeQuote body="AMDが“ただ” CUDAみたいなのを一晩で書けばいいんだよ。1995年にいて、S3 VirgeでKubuntu 24.04 LTSをこの夏に出荷しないといけない状況を想像してみて。" userName="wruza" createdAt="2025-03-25T01:27:54" color="">}}

{{<matomeQuote body="ソフトウェア的には何もする必要ないよ。inferenceはAMDにとって解決済みの問題だし。" userName="mirekrusin" createdAt="2025-03-25T05:11:51" color="">}}

{{<matomeQuote body="ある意味そうかも。7900xtx使ってるけど、VRAMは24GBあるし。次のライバルは4090だけど、値段は倍以上するしね。速さは全然違うけど。<br>3090も価格的には近いかも。性能は知らんけど。<br>VRAMは供給が限られてるから、増やすのは簡単じゃないんだよね。AMDは手に入るだけ売れるだろうから、GPUもっと売る方がいいのかもね。" userName="thomastjeffery" createdAt="2025-03-25T14:16:15" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="面白いことに、誰かがVRAMをハンダ付けしたGPUが売ってるんだよね。" userName="regularfry" createdAt="2025-03-25T11:33:03" color="">}}

{{<matomeQuote body="あるいは、従来のGPUの定義から離れて、統合型にするとか。<br>AMD Ryzen AI Max+ 395 with 128GB RAMは有望なスタートだね。" userName="yencabulator" createdAt="2025-03-25T17:48:42" color="">}}

{{<matomeQuote body="r/LocalLLAMAに行ってみるといいよ。情報が一番多いから。Mac miniでベンチマークしてるYouTubeチャンネルも参考になるよ（学割もあるし）。<br>学生ならプロバイダーとかクラウドからクレジットもらえるし、ハッカソンでもたくさんもらえるよ。" userName="faizshah" createdAt="2025-03-24T20:17:39" color="#ff33a1">}}

{{<matomeQuote body="64GBのRAM積んだMacBookが一番楽だと思うよ。おまけに、内蔵GPUでpytorchモデルのトレーニングもできるし。Appleってマジでハードウェアすごいから、悪い独占企業だって決めつけられないのがマジでムカつく。" userName="disgruntledphd2" createdAt="2025-03-24T19:54:21" color="#ff5c5c">}}

{{<matomeQuote body="https://www．canirunthisllm．net/　を見てみ。" userName="notjulianjaynes" createdAt="2025-03-25T05:04:53" color="">}}

{{<matomeQuote body="基本、量子化なしだと、パラメータ数の倍がVRAMのGB数になるよ＋α。ほとんどのモデルはfp16の重み使ってるから、パラメータあたり2バイト→32Bパラメータ＝64GBって感じ。<br>4bit量子化すると32Bモデルは16GBになるけど、ランタイムデータもあるから16GBのGPUだと遅いかも。もっと小さい量子化使えばメモリ使用量減らせるよ。" userName="p_l" createdAt="2025-03-24T20:48:52" color="#45d325">}}

{{<matomeQuote body="コンテキスト用に余裕が欲しいよね。32Bモデルを24GBのカードで使うといつもそうなる。いい感じに量子化はできるんだけど、コンテキストがあんまり取れないんだよね。" userName="regularfry" createdAt="2025-03-25T11:34:50" color="#ff5733">}}

{{<matomeQuote body="そうだよ。パラメータ数にパラメータあたりのバイト数を掛けて、GPUメモリ（またはCPU RAM）と比較するんだ。" userName="randomNumber7" createdAt="2025-03-24T22:16:32" color="">}}

{{<matomeQuote body="Qwq:32b + qwen2．5-coder:32bの組み合わせはaiderにいいね。4090でローカルで動かしてる。architectとeditステップでモデルを切り替えるから早くはないけど使えるレベル。qwen2．5-coderはeditフォーマットをたまにミスるのがマジで痛い。" userName="regularfry" createdAt="2025-03-25T11:31:45" color="#ff5c5c">}}

{{<matomeQuote body="最近ローカルでモデル動かすの始めたんだけど、LLMの知識もPC組む知識もマジで少ないんだよね。7B、13B、32Bとかのモデルをローカルで動かすのに必要なハードウェアスペックを見積もるのに役立つ情報源ってある？" userName="wetwater" createdAt="2025-03-24T19:31:21" color="">}}

{{<matomeQuote body="VRAMの必要量＝パラメータ数（単位：10億）×パラメータあたりのバイト数×オーバーヘッド[0]。<br>[0]: https://twm．me/posts/calculate-vram-requirements-local-llms/" userName="TechDebtDevin" createdAt="2025-03-24T19:36:34" color="#ff33a1">}}

{{<matomeQuote body="コンテキストサイズを大きくしたいなら、もっと余裕を持たせた方がいいよ。" userName="manmal" createdAt="2025-03-24T20:19:46" color="">}}

{{<matomeQuote body="これらのモデルはGPT-4レベルじゃないと思うなー。ベンチマークではそう見えるけど、モデルはベンチマークだけじゃなくて、学術的なものとかベンチマークできるようなものを最適化するために、データセットのキュレーションとか合成（GPT-4レベルのモデルを使って）でA/Bテストをどんどん使ってるって知られてるし。" userName="YetAnotherNick" createdAt="2025-03-24T19:14:02" color="">}}

{{<matomeQuote body="GPT-4oの話じゃなくて、過去12ヶ月の新しいモデルは全部2023年3月のGPT-4モデルより性能が良いってことだよ。<br>一番人気のあるhttps://lmarena.ai/?leaderboard=だと、GPT-4-0314は今83位だよ。" userName="simonw" createdAt="2025-03-24T19:24:27" color="#38d3d3">}}

{{<matomeQuote body="どうやってベンチマークの結果と良い結果を結びつけられたの？" userName="th0ma5" createdAt="2025-03-24T21:01:38" color="">}}

{{<matomeQuote body="32Bモデルは16GBのVRAMに全部は収まらないんだよね。でも、より質の高い答えのためなら全然あり。場合によっては待つ価値あるよ。" userName="clear_view" createdAt="2025-03-24T18:58:33" color="">}}

{{<matomeQuote body="40GBのA6000で32Bモデルを完全に使えるかな？FP16量子化はやっぱり必要？" userName="abraxas" createdAt="2025-03-24T20:01:18" color="">}}

{{<matomeQuote body="FP16だと重みだけで64GB必要で、Q8バージョンの2倍遅くなるし、改善もほとんどないかもね。アテンションとかコンテキストとかにもスペースが必要だから、80-100GB（またはそれ以上）のVRAMがあった方が良いよ。<br>3090（24GB）みたいなコンシューマーGPUを4つ使う人も多いみたい。マイニングリグ、EPYC CPU、十分なPCIeレーンがあるマザーボード、PCIeライザー、1600WのPSU（GPUを300Wに制限する必要があるかも）、128GBのRAMとかが必要になるかな。GPUの値段にもよるけど、3.5-4.5kくらいになると思う。" userName="manmal" createdAt="2025-03-24T20:22:45" color="#ff5c5c">}}

{{<matomeQuote body="良いケースとかライザーとか見つからないんだよねー。マイニング用のはPCIe 16x用に作られてないのが多いし。" userName="postalrat" createdAt="2025-03-24T20:55:55" color="">}}

{{<matomeQuote body="A5000とかA4000みたいなワークステーションカードを使う方が、電力効率とか全体的なパフォーマンスは良くなるかな？eBayで見つけられるし。" userName="abraxas" createdAt="2025-03-24T21:30:06" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
