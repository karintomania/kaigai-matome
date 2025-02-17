+++
date = '2025-02-11T00:00:00'
draft = false
title = '予算内で実現！個人用プライベートAIコンピュータの作り方'
tags = ["AI", "コンピュータ", "自作", "プライバシー", "テクノロジー", "ガジェット", "チュートリアル", "予算", "パーソナル", "省コスト"]
+++

> 予算内で実現！個人用プライベートAIコンピュータの作り方

引用元：[https://news.ycombinator.com/item?id=42999297](https://news.ycombinator.com/item?id=42999297)

{{<matomeQuote body="俺も似たようなことしてて、K80とM40をeBayで安く手に入れたんだ。K80はドライバーが超面倒だから、避けた方がいいよ。24GBのVRAMが50ドルは魅力的だけどね。HPのワークステーションがあったから、1200ワットの電源で動かせたんだ。このGPUは冷却ファンがないから、3DプリントしたブラケットにNoctuaファンを取り付けて、フル稼働させてる。意外と温度は60度を超えないし、CPUも冷えてるよ。ワークステーションは600ドル、GPUは120ドル、ファンは約60ドルだった。" userName="axegon_" createdAt="2025-02-11T13:14:49" color="#ff5733">}}

{{<matomeQuote body="K80はRAMが多いけど、重要な計算能力が欠けてるから、AIのワークロードには使えないって聞いたけど、それは違うの？" userName="yjftsjthsd-h" createdAt="2025-02-12T02:31:52" color="">}}

{{<matomeQuote body="その通りだよ。K80は遅いし、最新のCUDAもサポートされてないから。" userName="almostgotcaught" createdAt="2025-02-12T02:58:20" color="">}}

{{<matomeQuote body="でも、Deepseek R1はCUDAを使ってないから、特に問題じゃないかもね？" userName="GTP" createdAt="2025-02-12T08:19:21" color="">}}

{{<matomeQuote body="それ、問題じゃないって言うコメントは不適切だよ。DeepseekはPTXを使ってる部分もあるけど、CUDAでサポートされてない機能はPTXでも使えないってことだから。" userName="almostgotcaught" createdAt="2025-02-12T08:51:05" color="#ff5c5c">}}

{{<matomeQuote body="質問に対して非難するのは良くないよ。ありがとう、無知を解消する情報を提供してくれて。" userName="therealfiona" createdAt="2025-02-12T18:50:50" color="">}}

{{<matomeQuote body="これは質問だよね：>DeepseekのPTXの使用はここで問題になるの？これは結論や前提がある質問だよ。" userName="almostgotcaught" createdAt="2025-02-13T00:12:52" color="">}}

{{<matomeQuote body="PTXのハックはバックエンドの実行環境向けだよ。公開されてる重みは既存のバックエンドで実行されることが多いんだ。特にR1-distill-*モデルがそれに当たる。" userName="numpad0" createdAt="2025-02-12T17:13:00" color="#ff5733">}}

{{<matomeQuote body="重みとカーネルは全く関係ないよ。コメントする前に考えてほしいよ。" userName="almostgotcaught" createdAt="2025-02-14T14:48:41" color="">}}

{{<matomeQuote body="俺はP41sをテストボックスで使ってるけど、BF16はサポートしてない。でもF16とF32はある程度加速されてる。カーネルが最適化されてないけど、他のものに適応するのは簡単だった。カードはCPUだけよりもはるかに性能がいいけど、標準的な電源ケーブルが必要で、2つの特殊なケーブルを使わないといけなかった。" userName="TrueDuality" createdAt="2025-02-12T20:32:32" color="">}}

{{<matomeQuote body="K80のドライバ、マジで最悪だった。専用のLLM用ボックスならドライバの問題もなんとかなるかもな。でも、ソフトの面での経験はどうだった？" userName="egorfine" createdAt="2025-02-11T16:04:24" color="">}}

{{<matomeQuote body="どのHPワークステーション使ってるの？" userName="JKCalhoun" createdAt="2025-02-11T15:36:56" color="">}}

{{<matomeQuote body="そのマシンのパフォーマンスはどうだったん？" userName="BizarroLand" createdAt="2025-02-12T00:52:49" color="">}}

{{<matomeQuote body="同じ価格で($1799)なら、48GBのユニファイドメモリとM4 Pro搭載のMac Miniを買えるよ。こっちの方が電力使わないし、音も静かで、トークン毎秒でもこっちが勝つかも。書き方は良かったけど、状況的にMacの方がいいと思う。" userName="kamranjon" createdAt="2025-02-11T15:06:02" color="">}}

{{<matomeQuote body="トークン毎秒でこのセットアップよりもバンバン出せるかもしれないって意見も聞くけど、具体的な数字がないよね。『Qwen2.5のQ4量子化でOllama使って、M4の24GB RAMはXトークン/秒、 RTX 3090tiはYトークン/秒』みたいに示してくれれば、もっと納得できるけど。" userName="diggan" createdAt="2025-02-11T15:17:54" color="#ff33a1">}}

{{<matomeQuote body="M1 Maxの64GBノートPCでgemma2:27b同じプロンプトと設定だと、トータル時間：24.919887458秒、読み込み時間：39.315083ms、評価カウント：37トークン、評価時間：963.071ms、評価レート：38.42トークン/秒、計441トークン、評価時間：23.916616秒、評価レート：18.44トークン/秒。俺は4090のゲーミングPCも持ってるけど、このモデルには合わないと思う。" userName="fkyoureadthedoc" createdAt="2025-02-11T15:48:09" color="#45d325">}}

{{<matomeQuote body="3090（24GB VRAM）で同じプロンプトと量子化だと、トークン毎秒が2倍以上で、プロンプト評価もかなり速い。トータル時間：10530451000，読み込み時間：54350253，プロンプト評価カウント：36，プロンプト評価時間：29000000，プロンプトトークン/秒：1241.38，評価カウント：460，評価時間：10445000000，レスポンストークン/秒：44.04。大きな文脈をモデルに入れるとき、速いプロンプト評価はマジ重要。GPUは他にも色々な利点があるから、『ただのMac買え』って言う人たちはそこをあんまり考えてないな。" userName="condiment" createdAt="2025-02-11T20:20:51" color="#ff33a1">}}

{{<matomeQuote body="数値ありがとう！みんなも自分のLLMランナーを載せるべきだと思う。ハードウェア最適化サポートには違いがあるからね。MacではMLXがOllamaより明らかに速いって聞いたことある。" userName="svachalek" createdAt="2025-02-11T22:02:39" color="">}}

{{<matomeQuote body="gemma2:27bはどの量子化を使ってるの？どんなランタイムとバージョンで動かしてるの？それから他の設定は？編集：親のテストはQ4使ってるんだって。同じテストを3090tiとRyzen 5950X（GPUで44層、CPUで2層）でやったら約15トークン/秒出たよ。" userName="diggan" createdAt="2025-02-11T15:50:16" color="">}}

{{<matomeQuote body="brewからの新規インストールしたよ、ollamaのバージョンは0.5.7だね。ブログで示されている設定だけをしたよ。 OLLAMA_FLASH_ATTENTION=1 OLLAMA_KV_CACHE_TYPE=q8_0 とかで。モデルはこうやって実行した： ollama run gemma2:27b --verboseで。プロンプトは“亀とウサギの競争の話を書ける？”みたいな感じで。" userName="fkyoureadthedoc" createdAt="2025-02-11T15:58:19" color="">}}

{{<matomeQuote body="それを実行したとき、どの量子化になるの？Ollamaのライブラリサイト（https://ollama.com/library/gemma2:27b）は、デフォルトの量子化を明らかにする役に立たないね。" userName="diggan" createdAt="2025-02-11T16:01:47" color="">}}

{{<matomeQuote body="そのURLの:27bを外すと、デフォルトサイズが9bってわかる。Ollamaは他の量子化がより良くても常にQ4_0を使うみたい。" userName="mkesper" createdAt="2025-02-11T22:28:59" color="">}}

{{<matomeQuote body="どうやって確認するかわからないけど、ollama serveからの出力の完全な内容がここにあるよ： https://pastes.io/ollama-run-gemma2-27b" userName="fkyoureadthedoc" createdAt="2025-02-11T16:13:24" color="">}}

{{<matomeQuote body="モデルのサイズのドロップダウンメニューを開いて“すべて表示”をタップすると、選択したモデルのサイズとハッシュが見えて、下の詳しいリストと比較できるよ。" userName="navbaker" createdAt="2025-02-11T19:21:31" color="">}}

{{<matomeQuote body="それでもウェブライブラリからOllamaの観点でデフォルトの量子化を見る方法が見当たらないんだけど、どうにかできないの？" userName="diggan" createdAt="2025-02-11T19:41:45" color="">}}

{{<matomeQuote body="ウェブライブラリにアクセスしたときに表示されるモデルが、引っ張るデフォルトだよ。サイズとハッシュを詳細モデルリストと比較すると、どの量子化を持っているかがわかるよ。例：Llama 3.3 70bのデフォルトモデルウェイトは、ハッシュとサイズがこの通り - a6eb4748fd29 • 43GB、リストでそのハッシュとサイズが一致するのを見つけると“70b-instruct-q4_K_M”って表示される。これでOllamaからのLlama 3.3 70Bのデフォルトウェイトが4ビット量子化（q4）で、”K_M”はサイズとパフォーマンスのバランスを取るための量子化技術について教えてくれる。" userName="navbaker" createdAt="2025-02-11T20:39:53" color="#ff5733">}}

{{<matomeQuote body="ありがとう、これで量子化のQ4が示されてるみたいだね。4090でも実行できるはずだよ。モデルのサイズは14.55GiBだって。" userName="diggan" createdAt="2025-02-11T16:17:03" color="">}}

{{<matomeQuote body="gemma2:27b-instruct-q4_0（チェックサム 53261bc9c192）" userName="rahimnathwani" createdAt="2025-02-11T21:47:27" color="">}}

{{<matomeQuote body="7800X3D、32GB DDR5、4090の性能は10.59秒で、評価中のトークン数は467、評価レートは46.59トークン/秒だよ。" userName="fkyoureadthedoc" createdAt="2025-02-12T16:39:00" color="">}}

{{<matomeQuote body="まだこのローカルLLMの段階は始まったばかりで、データもあまりないな。ハードとソフトの組み合わせが多すぎて、ベストプラクティスが定まるのはまだまだ先だと思う。将来的にはLLM向けのPCが登場すると思うけど、今はまだ全然足りない。" userName="cruffle_duffle" createdAt="2025-02-11T15:32:39" color="">}}

{{<matomeQuote body="それは難しくないよ。ハードウェアを入手してソフトウェアを実行して測定するだけでしょ。" userName="motorest" createdAt="2025-02-11T15:46:57" color="">}}

{{<matomeQuote body="確かにそうだけど、データが質の高いものになるほど、多くの人がこの設定を作っているわけじゃないからね。実験を数回やって平均を取ったとしても、それはまだ信頼できるデータにはならないよ。" userName="GTP" createdAt="2025-02-11T16:30:57" color="">}}

{{<matomeQuote body="でも、今データが不足しているから誰もやらないって言っても、何も始まらないよね。どこかでスタートしないと。" userName="diggan" createdAt="2025-02-11T17:33:29" color="">}}

{{<matomeQuote body="彼らの言ってることに反対する意見はないと思うよ。大量のデータが必要ない人たちが手を出すから、早期のアダプターになるだけだし。" userName="unshavedyak" createdAt="2025-02-11T20:53:42" color="">}}

{{<matomeQuote body="もう始めてるし、まだ完成してないだけだよ。" userName="colonCapitalDee" createdAt="2025-02-11T21:21:43" color="">}}

{{<matomeQuote body="そうだけど、他の人が具体的なことを言わないと、今のところは抽象的な話ばかりになっちゃうよね。数字を含めることが大事なんだから。" userName="diggan" createdAt="2025-02-11T15:36:27" color="">}}

{{<matomeQuote body="役立つ情報が欲しいなら、ここでいいスレッドがあるよ： https://github.com/ggerganov/whisper.cpp/issues/89 これに似たスレッドは他にもあるし、Appleハードと非Appleのハード両方を活かしているのがいい感じだね。" userName="kamranjon" createdAt="2025-02-11T15:48:32" color="#785bff">}}

{{<matomeQuote body="一般的にHNなどの議論は科学的じゃないなーって感じる。具体的な設定やモデル、ランタイムの詳細が不足してて比較しようがないんだよね。でもリンクはありがたい！" userName="diggan" createdAt="2025-02-11T15:54:21" color="">}}

{{<matomeQuote body="今は以前よりも難しくなってるよ。ハードウェアのスペック、推論エンジン、モデルの違い、量子化、設定、入力コンテキストサイズ、出力トークン数とか、詳細が必要なんだ。これは完璧なリストじゃないけどね。" userName="t1amat" createdAt="2025-02-11T16:36:26" color="">}}

{{<matomeQuote body="その手の情報は/r/LocalLlamaが一番いいと思う！" userName="nickthegreek" createdAt="2025-02-11T19:54:24" color="">}}

{{<matomeQuote body="自分は1kWhあたり0.50ドル払ってるから、1000トークンあたりの消費電力量も含めて、ローカルシステムの所有コストについて知りたいな。" userName="vladgur" createdAt="2025-02-11T17:32:05" color="">}}

{{<matomeQuote body="業界全体でそういう情報があれば素晴らしいよね。価格だけでなく、カーボンフットプリントを気にする人にも役立つし。" userName="troyvit" createdAt="2025-02-12T15:00:51" color="#ff5733">}}

{{<matomeQuote body="スクリーンショットによると、これは192GBのM2 Studioで動いてるDeepSeekだって。ここのNvidiaの違うモデルでも同じみたい。" userName="un_ess" createdAt="2025-02-11T15:55:04" color="">}}

{{<matomeQuote body="Apple M2 Studioは1秒あたり約15トークン、A100-SXM4-80GBは9トークン？これが正しいならちょっと信じられない。" userName="diggan" createdAt="2025-02-11T16:00:22" color="">}}

{{<matomeQuote body="M2 StudioはGPUに192GBのRAMを持ってて、80GBのA100より遥かに多いから、推論では有利だと思う。A100はトレーニングでは強いけどね。" userName="achierius" createdAt="2025-02-11T17:52:30" color="">}}

{{<matomeQuote body="メモリ帯域幅が比較できるとは思わないけど。M2 Pro、M2 Max、M2 Ultraはそれぞれ200GB/s、400GB/s、800GB/sだけど、A100は2.04TB/sだから大きな差がある。" userName="diggan" createdAt="2025-02-11T18:26:04" color="">}}

{{<matomeQuote body="同じ価格ならMac Miniの48GBのメモリとM4 Proが買えるって書いてあるけど、実際はブロガーが古いワークステーションを再利用したからで、実際には二枚のグラフィックカードを古いリグに入れた結果だと思う。" userName="motorest" createdAt="2025-02-11T15:49:45" color="">}}

{{<matomeQuote body="ここから先はOPが古いPCにグラフィックカードを二枚載せたってことだよね。つまり、予算でやるならこれが主流ってこと。特にRAMがトークン生成にめちゃくちゃ影響するから、これが推奨されるやり方だよ。OPがA100を買うことも可能だけど、それは予算ビルドではないし。" userName="Capricorn2481" createdAt="2025-02-11T18:51:31" color="#ff5733">}}

{{<matomeQuote body="単一バッチ推論のボトルネックはメモリ帯域幅なんだ。M4 ProはP40より帯域幅が少ないから、遅くなる。OPのセットアップはシステムRAMもあるから、48GBのVRAMに収まらないモデルも使えるし、ktransformersを使えば良い速度で動くよ。" userName="oofbaroomf" createdAt="2025-02-11T16:07:55" color="">}}

{{<matomeQuote body="M4 ProはP40よりメモリ帯域幅が少ないから遅くなるってどういうこと？P40は346 Gbytes/secの帯域幅しかないと思ったけど、M4は546 GB/sじゃん。だからMacbookはP40を圧倒するはず。" userName="anthonyskipper" createdAt="2025-02-11T17:36:43" color="">}}

{{<matomeQuote body="M4 Maxは最大で546 GB/sなんだけど、M4 Proは話題にされている通り273 GB/sだよ。そのRAM量のM4 MaxはOPの予算を超えそうだけど。" userName="oofbaroomf" createdAt="2025-02-11T18:28:35" color="">}}

{{<matomeQuote body="Mac MiniはNVIDIA GPUに比べてコンテキストの取り込みが非常に遅くなるし、Stable Diffusionにも使えない問題があるから、LLMsだけを使うならともかく、他のAIモデルに興味があったら合わないかも。" userName="ekianjo" createdAt="2025-02-11T15:19:38" color="">}}

{{<matomeQuote body="俺はMac StudioでStable Diffusion使ってるけど、Mac Miniだとどうして使えないの？" userName="drcongo" createdAt="2025-02-11T17:07:19" color="">}}

{{<matomeQuote body="あなたはどのモデルを使ってるの？Stable diffusion 1.5、SDXL、それともflux？MacはXLでかなり遅いって聞いたし、fluxは生成に数分かかるからほぼ使えないって。RTX4090なら1024x1024の画像を14秒で作れるし、もしLLMsだけじゃなくて他の分野にも進出したいなら、cudaの方がいいよ。LTXやhunyuanをMacで動かしてる話は聞いたことないし。" userName="vunderba" createdAt="2025-02-11T23:48:23" color="#ff33a1">}}

{{<matomeQuote body="俺は1.5から3.5まで使ったけど、XLは微調整次第で良くも悪くもなるな。Fluxの件は本当にそうだ、Macでは最悪だよ。" userName="drcongo" createdAt="2025-02-13T11:39:18" color="#45d325">}}

{{<matomeQuote body="このユースケースでは、Appleのハードウェアよりもモジュール式の方がいいな。将来的にGPUをアップグレードできるし。" userName="JKCalhoun" createdAt="2025-02-11T15:38:04" color="">}}

{{<matomeQuote body="AppleがMac Miniで128GBのオプションを出してくれたらいいのに。M4 Maxが必要だけど、Miniでは提供されてないもんな。MBPにはM4 Maxと128GBがあるけど、またラップトップはいらない。" userName="UncleOxidant" createdAt="2025-02-11T19:22:25" color="">}}

{{<matomeQuote body="M4 Ultra Studioが出る夏まで待とうと思ってるんだ。" userName="kridsdale1" createdAt="2025-02-11T20:03:10" color="">}}

{{<matomeQuote body="128GBで5万ドル越えそうだね。" userName="UncleOxidant" createdAt="2025-02-11T23:52:12" color="">}}

{{<matomeQuote body="ローカルでLLM用のマシンを作りたいんだけど、MBP M3 Maxで128GBのRAMを使ってモデル試したらすごく良かったよ。専用サーバーが欲しいし、Proxmoxをいじってみたい。OpenWebUIとLibreChatをローカルで運用中だけど、もっと高性能なボックスを考えるとコストに対してのリターンが見合わない感じ。プライバシーは重要だけど、オンラインでの推論コストには勝てない。" userName="joshstrange" createdAt="2025-02-11T14:08:56" color="#785bff">}}

{{<matomeQuote body="自分もそう感じる、特にレンタルコストを考えると。24時間稼働させても、古くなるまでには半分の期間では回収できないと思う。" userName="cwalv" createdAt="2025-02-11T16:16:20" color="">}}

{{<matomeQuote body="自分のモデルをホスティングするのはプライバシーと信頼性のためにプレミアムを払うことになる。ただ、競争力のあるモデルを手に入れるには5桁のハードウェアが必要で、セキュリティと安定性も保つ必要がある。ハードなプライバシーを求めないのなら、今は複数のベンダーを使う方がいい。" userName="datadrivenangel" createdAt="2025-02-11T14:34:37" color="">}}

{{<matomeQuote body="Home AssistantでローカルのLLM/TTS/STTを使いたいけど、遅すぎてダメだった。アイデアを試すのにお金がかからないのが魅力だけど、計算するとAnthropic/OpenAI/DeepSeekなどを使った方が金銭的に得らしい。いつかサーバーを買ってもいいかなとも思うけど、面白いプロジェクトになると思う。" userName="joshstrange" createdAt="2025-02-11T14:44:36" color="#38d3d3">}}

{{<matomeQuote body="MBP M3 Max 128GBでLLM/TTS/STTの応答速度に悩む必要はないよ。エンティティの数を減らすか、小さいモデルを選ぶべきだと思う。" userName="nickthegreek" createdAt="2025-02-11T14:54:23" color="">}}

{{<matomeQuote body="小さいモデルはそれなりに速く動かせられるけど、ツールコールに興味があって、速くて良いモデルが見つからない。自分の無知さが原因かも。" userName="joshstrange" createdAt="2025-02-11T18:34:17" color="">}}

{{<matomeQuote body="現時点では色々試した結果、OpenAI APIを使うことにした。ローカルのはまだ自分がやりたいことには足りないけど、基本的なコントロールには使えるよ。" userName="nickthegreek" createdAt="2025-02-11T19:39:16" color="">}}

{{<matomeQuote body="今は自分のボットとチャットUI用にAnthropicとOpenAIの組み合わせを使ってて、テストできるスピードが上がってる。全てのテストが終わったら、ローカルモデルに移行するか考えたい。" userName="joshstrange" createdAt="2025-02-11T19:59:23" color="#ff5c5c">}}

{{<matomeQuote body="それな！手に入れてから、自分の中の新しい発想が開かれるまでわからないよね。価格と性能が地元でのトレーニングや推論のために買える水準に達したら、LLMが今の“企業弁護士安全”な状態から抜け出して、本当に大きな変化が起きると思う。" userName="cruffle_duffle" createdAt="2025-02-11T15:37:30" color="#ff5c5c">}}

{{<matomeQuote body="OpenRouterみたいなのがあれば、複数のベンダーと手動で統合する必要もないよ。" userName="rsanek" createdAt="2025-02-11T14:42:13" color="">}}

{{<matomeQuote body="LiteLLMみたいな感じ？それを動かしてるけど、OpenRouterは使ったことないんだ。今はどっちがいいのかなって思う。" userName="wkat4242" createdAt="2025-02-11T22:28:54" color="">}}

{{<matomeQuote body="LangDBやPortkeyも試してみて！" userName="pelatimtt" createdAt="2025-02-12T00:39:04" color="">}}

{{<matomeQuote body="ローカルでやるのは、労力に対してリターンが少ないと思う。ただ、proxmoxはいじってみる価値はあるよ。この目的にはおすすめしないけど、i7のHP Elitedeskを買うことを推奨する。俺は複数のサーバー持ってるけど、全部オフでHP Elitedeskが必要なことはやってくれてる。" userName="whalesalad" createdAt="2025-02-11T19:23:05" color="">}}

{{<matomeQuote body="今、Intel Core i9-11900KのタワーPC（64GB RAM）でUnraidを使ってアプリサーバーにしてるけど、proxmoxも試してみたい。いつかは地下にラックを作りたいんだ。使用スペースが足りなくなってきて、新しい12ベイのSynologyも追加しないと。今は消費者向けの機器でやってるけど、必要が超えてきてるかも。" userName="joshstrange" createdAt="2025-02-11T20:04:47" color="#785bff">}}

{{<matomeQuote body="参考までに言うと、彼らが作ったマシンは、あなたのMBPが既にできることと同じぐらいの性能だと思う。推論速度は多分向こうの方がいいけど。" userName="smith7018" createdAt="2025-02-11T15:04:54" color="">}}

{{<matomeQuote body="Strix HaloのミニPCはミドルクラスの良い選択肢かもね。ただ、AMDがどれだけ高くするか不明なのが気になるけど。Core Ultra ArcのiGPUボックスも便利そうで、DDR5の共有メモリも使えるし、効率的でスピードも確保できる。ただ、性能は低めかも。" userName="moffkalast" createdAt="2025-02-11T18:49:40" color="">}}

{{<matomeQuote body="ただ、ローカルホスティングしたモデルは可愛いおもちゃみたいなもので、面白いジョークを言ったり、プライベートなタスクをこなしてくれるけど、APIでアクセスできるモデル（Claude 3.5 SonnetやOpenAIなど）には敵わない。深いseek-r1-678bを安くローカルで走らせられたらいいんだけど、今は消費者レベルでは運用費が設備投資を上回る。" userName="reacharavindh" createdAt="2025-02-11T12:30:55" color="">}}

{{<matomeQuote body="200以上のコメントがあって、リンクはこれだよ。https://news.ycombinator.com/item?id=42897205 これが671BモデルをQ4量子化で3.5-4.25 TPSを$2Kで、シングルソケットのEpycサーバーマザーボードに512GBのRAMで動かすって言ってる。" userName="walterbell" createdAt="2025-02-11T13:08:51" color="">}}

{{<matomeQuote body="4トークン毎秒は少なすぎて、実用には向かないと思う。" userName="elorant" createdAt="2025-02-11T13:49:07" color="">}}

{{<matomeQuote body="1.5トークン毎秒の環境で使ってるけど、こっちの方が自分には合ってる。急いでるときは別のモデル使うし、そんなに困らないよ。" userName="mechagodzilla" createdAt="2025-02-11T14:15:48" color="">}}

{{<matomeQuote body="LLMは結構じっくりやり取りしないといけないから、ガッツリ時間かかるのがね。2Kでこの性能はちょっとなぁ。" userName="xienze" createdAt="2025-02-11T14:39:04" color="">}}

{{<matomeQuote body="でも2Kってそんなに高くないし、コストカットしてる分性能は期待しすぎちゃだめ。新車と中古車比べても仕方ないよ。" userName="MonkeyClub" createdAt="2025-02-11T21:44:28" color="">}}

{{<matomeQuote body="俺も速いレスポンスが欲しい。UXには未だ満足できてないけど、どんな小さなコードでもすぐに補完してくれるのが理想。" userName="unshavedyak" createdAt="2025-02-11T20:59:37" color="">}}

{{<matomeQuote body="小さな質問のやり取りならいいけど、ほとんどの人はもっと頻繁に使うから、この遅さは厳しいよね。" userName="Aurornis" createdAt="2025-02-11T22:36:07" color="">}}

{{<matomeQuote body="4トークン毎秒なら、一人で使うには十分でしょ？それこそパーソナルAIコンピュータの目的だよね。" userName="deadbabe" createdAt="2025-02-11T13:51:48" color="">}}

{{<matomeQuote body="4トークン毎秒だと超遅い。みんなが求める速度とは程遠い。2Kで得られるトークン量も考えると、もっと他の選択肢があるよ。" userName="IanCal" createdAt="2025-02-12T10:31:58" color="">}}

{{<matomeQuote body="俺はそれが合ってるよ。他の作業しながら待ってるのが全然OK。" userName="JKCalhoun" createdAt="2025-02-11T15:10:27" color="">}}

{{<matomeQuote body="10トークン毎秒以下だと我慢できない。600トークンなら1分待たないといけないのは辛い。" userName="ErikBjare" createdAt="2025-02-11T14:05:20" color="">}}

{{<matomeQuote body="elorantに同意だな。間接的に言って、いくらNVIDIAのハードウェアが効率的でも、7000ドル以下で最高のモデルを動かすのは難しいってYouTuberたちが示しちゃってる。将来的にはモデルがもっと効率的になると思うから、6ヶ月後には状況が変わってるかもよ。" userName="Cascais" createdAt="2025-02-11T15:26:56" color="#38d3d3">}}

{{<matomeQuote body="LLMのユースケースには非同期のものもあるからね、例えばエージェントとか“深いリサーチ”のクローンとか。" userName="walterbell" createdAt="2025-02-11T14:11:50" color="">}}

{{<matomeQuote body="もっとシンプルな用途だってあるよ。たとえば自分のローカルノートを内容に基づいてタグ付けしたいだけの時とか、基本的には無限に実行できるbashループを回せばいいから、スピードはあまり問題じゃない。" userName="diggan" createdAt="2025-02-11T14:16:24" color="">}}

{{<matomeQuote body="もし単純なタグ付けや分類だけが目的なら、Mistral 7bやQwen 14bみたいな14b未満のパラメータの小さなモデルでも十分かもしれないよ。" userName="vunderba" createdAt="2025-02-11T23:57:00" color="">}}

{{<matomeQuote body="Dual-Epycマシンが1.58ビットのダイナミック量子モデルをどれくらい動かすか知りたいな。フルQ8モデルとほぼ同等の性能に見えるんだ。" userName="CamperBob2" createdAt="2025-02-11T15:16:46" color="">}}

{{<matomeQuote body="試してみたけど、トークン生成速度は1.5から3までだったよ。" userName="DrNosferatu" createdAt="2025-02-12T22:04:59" color="">}}

{{<matomeQuote body="痛いな…今、128GB＋4090のシングルCPUボックスで得られる速度と同じくらいだ。もっと大幅なスピードアップを期待してたんだけど。" userName="CamperBob2" createdAt="2025-02-14T01:13:04" color="">}}

{{<matomeQuote body="ピーク性能は約21コアで達成できるよ。ボトルネックは特別な設定なしだとRAMとCPUの帯域幅なんだ。もっとコアを活かす設定が見つかったら教えて！" userName="DrNosferatu" createdAt="2025-02-14T22:58:05" color="#38d3d3">}}

{{<matomeQuote body="モデルが良くなったわけじゃないよ。これらのサービスには行動を調整するための見えないプロンプトがあるみたいだし、記事でも「誰が一番お金を払ったかで出力を調整する」って書いてあった。LLMをローカルでいじればいじるほど、大手テックサービスの結果に影響を与えるプロンプトがどう機能してるかがわかるようになってきた。" userName="cratermoon" createdAt="2025-02-11T16:04:47" color="#785bff">}}

{{<matomeQuote body="Unslothの1.58ビットDeepSeek R1ダイナミック量子モデルはすごいよ。大量のRAMと少しの忍耐が必要だけど。" userName="CamperBob2" createdAt="2025-02-11T15:14:55" color="">}}

{{<matomeQuote body="1.58ビットオプションにハードウェアやアドオンの最適化がすごく進んでる気がする。Unslothから大きなブレイクスルーが来て、コストが劇的に下がるかも。あんまりナイーブになってないよね？" userName="jaggs" createdAt="2025-02-11T22:52:28" color="">}}

{{<matomeQuote body="え、オモチャ？DeepSeek 70bを36GBのRAMがあるMacbook Proで動かせるし、Phi4やQwen2.5、llama3.3だってコーディングにバッチリよ。" userName="vanillax" createdAt="2025-02-11T14:49:06" color="">}}

{{<matomeQuote body="でも、返信の一つにもあるけど、得られるトークン/秒が生産環境では使えないレベルだよ。" userName="3s" createdAt="2025-02-11T14:55:06" color="">}}

{{<matomeQuote body="何言ってるの？マジで仕事で使ってコード書いてるよ。" userName="vanillax" createdAt="2025-02-12T02:10:39" color="">}}

{{<matomeQuote body="彼らは自己ホストのユーザー向けアプリの推論に使うことを言ってるのかも。" userName="jt_b" createdAt="2025-02-12T02:33:27" color="">}}

{{<matomeQuote body="ああ、なるほど。完全に同意。" userName="vanillax" createdAt="2025-02-12T14:26:50" color="">}}

{{<matomeQuote body="著者が言ってるけど、AppleのM4 Mac Miniは本当に良い選択。メモリがメインとビデオRAMで共有されるのが魅力的。Mac Miniのオプションは安価だし、M4 Proもかなりお得。" userName="jmyeet" createdAt="2025-02-11T13:41:26" color="#45d325">}}

{{<matomeQuote body="ポイントとして、これらのMacは270GB/s以下のメモリ帯域幅なんだよね。十分ならRyzen AI Max+ 395 APUを待つのもアリかも。ほんとにMacの半分の価格だし。" userName="atwrk" createdAt="2025-02-11T14:26:22" color="">}}

{{<matomeQuote body="Macの問題は、Max/Ultraプロセッサ以外はメモリ帯域幅が遅めってこと。高級プロセッサは高いし、今のM4にはUltraがないのが痛い。" userName="sofixa" createdAt="2025-02-11T13:59:09" color="">}}

{{<matomeQuote body="良いポイントだね。M2 Mac StudioはM2 Maxで400GB/s、M2 Ultraで800GB/sだし、M4 Ultraはすごい成績になると思う。コスト面でもAppleのアーキテクチャは興味深いね。" userName="jmyeet" createdAt="2025-02-11T14:23:25" color="#ff5c5c">}}

{{<matomeQuote body="Nvidiaの専用GPUとAppleのやり方では性能にどれくらいの違いがあるんだろう？Mac Mini M4で24GBのRAMを使ってモデルを動かした場合、どれくらいのトークン/秒が出るの？RTX 3090tiで同じモデルを動かすと、どんな数値になる？こういう比較はどこかにあるのかな？" userName="diggan" createdAt="2025-02-11T14:01:06" color="#45d325">}}

{{<matomeQuote body="正確に同じ比較じゃないけど、M1 Macで16GBのRAMを使ったら3Bモデルで約10トークン/秒だったよ。同じモデルを3060tiで動かしたら100トークン/秒以上出た。要するに、RAMだけじゃないね。" userName="redman25" createdAt="2025-02-11T14:37:14" color="">}}

{{<matomeQuote body="そのテストに使ったモデルと量子化の具体的な設定や実行時間を教えてもらえる？他の数字と比較したいから。" userName="diggan" createdAt="2025-02-11T15:15:30" color="">}}

{{<matomeQuote body="ユニファイドメモリは速いけど、OPのような普通のマシンではかなりのシステムメモリを得られるし、KtransformersみたいにMOEレイヤーをオフロードすることもできる。Mac miniはユニファイドメモリに収まる用途には良いけど、Deepseek R1や他の大きなモデルを動かすには、RAMを最大限にしてGPUを使うのがベストだね。" userName="oofbaroomf" createdAt="2025-02-11T18:44:05" color="#ff5733">}}

{{<matomeQuote body="間違いなく、Mac Mini M4 Proで64GBのRAMは今のところベストな選択だね。ただ、基本ストレージが512GBだけで、これを日常的に使うなら容量を増やした方がいい。3000ドル以下で素晴らしいマシンだけど。" userName="sethd" createdAt="2025-02-11T14:11:16" color="#ff33a1">}}

{{<matomeQuote body="NVMEドライブが必要なら、外部Thunderbolt 5エンクロージャーを買った方が安く済むよ。" userName="wolfhumble" createdAt="2025-02-11T14:28:09" color="">}}

{{<matomeQuote body="数ヶ月前に調べた時は、1TBから2TBの外部TB5はまだ高かったんだ。" userName="sethd" createdAt="2025-02-11T22:46:30" color="">}}

{{<matomeQuote body="今のところ500GBから2TBの内蔵はアメリカで600ユーロ。Samsung 990PROの2TBは170ドルで、Acasis T5の80Gbpsは300ユーロ。だから、2TB以上は外部の方が良さそうだし、柔軟性もあるね。でも1TBなら内蔵の方が賢いと思う。" userName="wolfhumble" createdAt="2025-02-12T16:06:01" color="#785bff">}}

{{<matomeQuote body="そのエンクロージャーの品質にもよるし、熱やファンの音も気になるかも。" userName="sethd" createdAt="2025-02-13T16:14:53" color="">}}

{{<matomeQuote body="CUDAをネイティブで使えないと、AIでやるにはすごく面倒くさいよ。最新の論文やコードをすぐに試すのは大変だから、作者がM4を明示的にターゲットにしていない限りはね。" userName="iamleppert" createdAt="2025-02-11T14:07:37" color="">}}

{{<matomeQuote body="個人でAIアシスタントを持つのはハードウェアを自分で用意しているなら問題ないけど、トライしたり学ぶためなら困るよね。" userName="darkwater" createdAt="2025-02-11T14:14:09" color="">}}

{{<matomeQuote body="必要に応じてGPUのVPSを借りるのがいいと思う。H100が1時間2ドルで借りられるし、自分でローカルでやるのに比べたらプライバシーは少し劣るけど、SaaS APIよりはマシ。数年以内にローカルでコスト効果の高いものが運用できるようになれば、切り替えたいな。" userName="ollybee" createdAt="2025-02-11T16:44:33" color="">}}

{{<matomeQuote body="自分もそうしてるけど、コストがかかるのが厳しい。オープンルーターを使うより費用が高いし、固定費でモデル同士を24時間対話させるマシンを持ちたい。太陽光と風力発電があって電気代が安いから、初期投資さえすれば実質タダになる。GPUの選定が難しいんだよね。" userName="anonzzzies" createdAt="2025-02-11T18:24:07" color="">}}

{{<matomeQuote body="GPUレンタルのおすすめプロバイダーやヒントはある？" userName="1shooner" createdAt="2025-02-11T17:56:35" color="">}}

{{<matomeQuote body="SBCクラスタでLLM推論を試した人いる？Radxa ROCK 5Cは32GBのメモリとNPUがあって300ユーロ程度。今のLLMのアーキテクチャはよく知らないけど、複数のノードにレイヤーを分けて実行できるはずだよね？あまりデータを送らなくて済むと思う。その分、現代のMacやNvidia GPUほどのパフォーマンスは出ないとはいえ、受け入れ可能で、コストを抑えた方法になりそう。CPUとGPUの推論の最新情報についても知りたいな。" userName="birktj" createdAt="2025-02-11T16:07:47" color="#785bff">}}

{{<matomeQuote body="SBCクラスターでLLM推論を試したことはある？Radxa ROCK 5Cは32GBのメモリとNPU付きで300ユーロ程度。RPCを調べてみて。Llama.cppがサポートしてるよ。レイヤーをGPUで初めに処理し、メモリバウンドのトークン生成時にCPUに切り替えるのが効率いいと思うけど、PCIeバスでレイヤーを移動させるのは遅いから戦略的に考えるべきだね。" userName="Eisenstein" createdAt="2025-02-11T21:23:30" color="#ff5c5c">}}

{{<matomeQuote body="素晴らしい分析だね！自宅でAIを持つのはハマる趣味だけど、ハードウェアに時間とお金をかけることになるよ。もし特定の用途がなくて小さいモデルか遅いトークン生成しか必要ないなら意味がない。AIを本当に学びたいなら、必要なときにGPUやTPUを借りるのが良いと思う。" userName="dgrabla" createdAt="2025-02-11T12:30:59" color="">}}

{{<matomeQuote body="MシリーズのMacはホームLLMには充分だよ。LM Studioを使ってメモリに収まるモデルを使えば、OpenAIには敵わないけど、ローカルで完結して月額料金もかからないし、モデルによっては検閲や制限もない。" userName="theshrike79" createdAt="2025-02-11T13:41:48" color="">}}

{{<matomeQuote body="何のために使うの？自分は500ドルの安いNvidiaを買ったけど、OllamaやKrita+ComfyUIでの使い道に圧倒されてる。" userName="jrm4" createdAt="2025-02-11T18:02:09" color="">}}

{{<matomeQuote body="必ずしもお金や時間をかける必要はないよ。プロ用じゃないなら、追加でメモリやGPUにお金をかけずにローカルの言語モデルを使えて、書くこと、コーディング、翻訳などに役立ってる。ネット接続もサーバーもいらない、コストを抑えた個人的でプライベートなAIだよ。" userName="lioeters" createdAt="2025-02-11T13:59:07" color="">}}

{{<matomeQuote body="どのハードウェア使ったの？いくらかかったの？" userName="ImPostingOnHN" createdAt="2025-02-11T14:19:23" color="">}}

{{<matomeQuote body="その通り。費用は趣味や興味以外で納得できるものじゃないよ。開発のためにローカルで推論サーバーを持つのは意味があると思う。モデルを管理できて、インフラを少しコントロールできる利点があるね。" userName="memhole" createdAt="2025-02-11T13:39:22" color="">}}

{{<matomeQuote body="素晴らしい趣味だね！やりたいよ！" userName="JKCalhoun" createdAt="2025-02-11T15:14:40" color="">}}

{{<matomeQuote body="2枚のNvidia Tesla P40カードで€660は俺にとっては“予算内”じゃないよ。もっと小型や中型のモデルを使うために安いカードで遊べるよ。Nvidia Geforce RTX 3060は12GBのVRAMがあって約€200-250で中古市場で売ってるし、新品でも300-350位だよ。“予算内”というのはトレードオフでもあるんだから。" userName="miniwark" createdAt="2025-02-11T15:54:19" color="#38d3d3">}}

{{<matomeQuote body="Nvidia Geforce RTX 3060は12GBモデルがあって、約€200-250で中古市場にあるよ。1080Tiが3060より良いかもしれないし、特に非RTXではその傾向があるよ。" userName="whywhywhywhy" createdAt="2025-02-11T17:26:04" color="">}}

{{<matomeQuote body="CUDAの計算バージョンは重要だよ。1080tiは6.1で、3060は8.6だ。3060にはテンソルコアもあるし、CUDAのバージョン番号は混乱しやすいから注意が必要だ。" userName="Eisenstein" createdAt="2025-02-11T21:17:19" color="">}}

{{<matomeQuote body="今の中古価格はわからないけど、Titan XP（1080 tiに近い）はもっと良いかも。" userName="Melatonic" createdAt="2025-02-11T21:44:18" color="">}}

{{<matomeQuote body="うーん、確かに俺もそう思ったよ。どの“予算”だよ？500ドル以下がもっと’予算’としてふさわしいと思うな。€1700は“熱心な趣味”か”金持ちの趣味”とかって感じ。ビジネス用でコストを回収する見込みなら別だけど、個人でのLLMを遊びで動かすのには高すぎるよな。だから“Macを買う手もある”って言われたら納得せざるを得ない。" userName="mock-possum" createdAt="2025-02-11T18:46:54" color="#38d3d3">}}

{{<matomeQuote body="他の人が言った通り、高性能なMacも同じ用途で使えるし、価格も比較的良心的だ。だからAppleがエンタープライズAIチップ市場に参入してNvidiaと競争しないのは不思議だね。彼らは自分たちの硬件や製造の知識でASICを設計できると思うけど、もしかしてもうやってるかも。" userName="cwoolfe" createdAt="2025-02-11T17:55:00" color="">}}

{{<matomeQuote body="その製品の主な市場は企業だろうけど、Appleは企業向けの販売が得意じゃないよ。消費者向けに特化してるから、こういう移行が成功するのは難しいのかも。あくまで家庭用のLLMベースのアシスタントを持った強化版HomePodみたいな製品がAppleらしいと思う。ただ、LLMがかなり信頼性が高くなるまでは評判を落とさないためにも必要だろうね。" userName="gmueckl" createdAt="2025-02-11T18:00:08" color="">}}

{{<matomeQuote body="Siriは広告で自分たちの設定した期待には応えてたけど、最新のLLMベースのアシスタントには市場の期待が高すぎて、現実とはかけ離れてるかも。Appleには大きな罠になりそうだね。" userName="gmueckl" createdAt="2025-02-11T18:31:01" color="">}}

{{<matomeQuote body="Appleは企業向けの販売が得意じゃないね。ただし、開発者向けのノートパソコンはAppleが圧倒的に強いから、そこを上手く活かせるといいんだけど。" userName="lolinder" createdAt="2025-02-11T20:56:42" color="">}}

{{<matomeQuote body="スティーブ・ジョブズがHypercardを廃止した理由と同じだよ。ユーザーに力を持たせすぎると良くない。" userName="jrm4" createdAt="2025-02-11T18:00:33" color="">}}

{{<matomeQuote body="投資するには次の月にもっと良いモデルが出るのが怖い。スペックが変わると、今のベストモデルが使えないか、すごく高くつくことも。クラウドインフラを使えば、コストを抑えられるかも。HNの人たちはどうしてるの？" userName="gregwebs" createdAt="2025-02-11T13:58:19" color="">}}

{{<matomeQuote body="自宅で大きなモデルを動かすにはお金持ちが基本だと思う。何十万の車に乗るなら、安いGPUを何個でも買える。でも、古いグラボを使ったり、ホスティングを利用するのも選択肢。" userName="michaelt" createdAt="2025-02-11T15:01:18" color="">}}

{{<matomeQuote body="新しいモデルはだいたい8b、30b、70bのバリエーションがあって、ハードウェアに合わせて使う感じ。クラウドモデルは今は安いから、会話やツール使用ならローカルサーバーと同じ程度のコストで済む。大量の処理はローカルでバッチ実行して、結果をクラウドで使うといい感じ。" userName="tempoponet" createdAt="2025-02-11T14:35:45" color="#38d3d3">}}

{{<matomeQuote body="クラウドサービスには「テールリスク」もあって、うまく設定しないとオンプレミスの機材より高くつくことも。エラーを防ぐために他のスクリプトを導入する必要があって、これは趣味でやるにはかなり難しいかも。" userName="idrathernot" createdAt="2025-02-11T14:26:36" color="">}}

{{<matomeQuote body="そうだね。でも、クラウドサービスってなんで使いすぎを防ぐ機能がないんだろう？本当に難しいエンジニアリング問題なのかね…" userName="anon373839" createdAt="2025-02-12T13:41:29" color="">}}

{{<matomeQuote body="NVIDIA Digitsのリリースを待って、トークン/secの性能を見てみるつもり。理想は少なくとも2〜3年は使えて、必要なら売却してアップグレードできればいいな。" userName="nickthegreek" createdAt="2025-02-11T14:57:28" color="">}}

{{<matomeQuote body="そうそう！RTXでllamaをローカルで動かしてるけど、ワークフローには使えなくて20k以上は投資したくないんだよね。HNのユーザーたちはどうやってるのかな？僕はクラウドのセキュアエンクレーブを利用したエンドツーエンドの機密AIのスタートアップを考えてるよ。" userName="3s" createdAt="2025-02-11T14:34:08" color="">}}

{{<matomeQuote body="記事やコメントにある解決策は安いものを選ぶことだよね。著者は来年もP40のセットアップが使えるし、今が一番良いタイミングだと思う！" userName="JKCalhoun" createdAt="2025-02-11T14:30:58" color="">}}

{{<matomeQuote body="過剰なマシンを使うのって高いよね。GPUのセカンダリ市場は健全だよ。" userName="walterbell" createdAt="2025-02-11T14:28:57" color="">}}

{{<matomeQuote body="でも12GBを超えると価格が急に上がるのが問題だよ。" userName="xienze" createdAt="2025-02-11T14:41:05" color="">}}

{{<matomeQuote body="サーバー用のGPUはそうでもないよ。eBayで24GBのM40カードが200ドル、K80カードが40ドルで見かけるよ。" userName="JKCalhoun" createdAt="2025-02-11T15:12:48" color="">}}

{{<matomeQuote body="ま、もう少し具体的に言うべきだったね。eBayのサーバー用GPUは、安い、早い、RAMが decentの三つのうち二つしか選べないんだ。古いGPUは安いけど、パフォーマンスが良くないから。" userName="xienze" createdAt="2025-02-11T15:17:59" color="">}}

{{<matomeQuote body="それは正しいね。ただ、速さとRAMの量の間には相互作用があると思う。RAMが少ないとパフォーマンスが急激に落ちるから、安価でRAMが decentな組み合わせがいいな。" userName="JKCalhoun" createdAt="2025-02-11T15:26:06" color="">}}

{{<matomeQuote body="HNユーザーがどうしてるかって？最良の両方を組み合わせてるよ。僕はRTX 3090tiでローカルアシスタントを動かしてて、簡単なカレンダー管理はできるけど、複雑なことはOpenAIのAPIを使うよ。個人データが関わるリクエストには応じないけど。" userName="diggan" createdAt="2025-02-11T14:02:41" color="#45d325">}}

{{<matomeQuote body="複数のGPUを使ったマシンを作るならIO帯域に注意してね！モデルがカード間でシャーディングされてるから、データはPCIe 3.0 x16リンクを通さなきゃいけない。これ、制限があるから建設するのは難しいよ。" userName="refibrillator" createdAt="2025-02-11T14:56:15" color="">}}

{{<matomeQuote body="GPUを並列に動かさないとIO帯域は関係ないよ。カードは違うモデルのレイヤーを持ってるだけだから、ほんの数キロバイトだけやり取りするけど。" userName="Miraste" createdAt="2025-02-11T15:07:45" color="">}}

{{<matomeQuote body="あなたが4090で一番楽しんでるモデルはどれ？vLLMを選んだ理由も知りたいな、ollamaじゃなくて。" userName="Xenograph" createdAt="2025-02-11T15:08:41" color="">}}

{{<matomeQuote body="著者がNVLinkについて言及しなかったから、使ってないんだろうね。でもこのカードは対応してるはずだよね。NVLinkの設定はどうするつもり？" userName="ekianjo" createdAt="2025-02-11T15:21:06" color="">}}

{{<matomeQuote body="その2つの帯域幅の数字を混同してる気がする。" userName="zinccat" createdAt="2025-02-11T15:07:02" color="">}}

{{<matomeQuote body="面白い統計だね。テリーって名前の亀が多いみたいだ。他のLLMも、似たような名前を使う傾向がありそう。" userName="gwern" createdAt="2025-02-11T15:23:41" color="">}}

{{<matomeQuote body="温度を上げたり他のパラメータを変えたりすれば、もっとランダムでクリエイティブにならないかな？人間の意図するランダムさとは違うけど、同じ名前ばかり出ることは避けられると思う。" userName="diggan" createdAt="2025-02-11T15:38:39" color="">}}

{{<matomeQuote body="いや、単にロジットを下げるだけで解決する話じゃないよ。温度を上げても、出力が悪化するまであまり効果がない。" userName="gwern" createdAt="2025-02-11T22:05:45" color="">}}

{{<matomeQuote body="面白いタイミングでこの記事が出たね。私たちの「予算」の定義は違うかもしれないけど、かなり安価なeGPUセットアップを注文したばかりなんだ。A770っていい予算向けのLLM GPUだと思うけど、他の人の意見も聞きたいな。" userName="lewisl9029" createdAt="2025-02-11T18:57:37" color="#ff5c5c">}}

{{<matomeQuote body="350ドルでA770を見つけたって言ってるけど、今は500〜550ドルのが多いよね。どこでそんな安いの見つけたの？" userName="UncleOxidant" createdAt="2025-02-11T19:18:05" color="">}}

{{<matomeQuote body="AcerのEbayで220ドルで買ったよ。ただ、今は在庫切れだけど、また出てくるかもしれないし、うまく探せばそんなに高くない中古もあると思うよ。" userName="lewisl9029" createdAt="2025-02-11T19:31:28" color="">}}

{{<matomeQuote body="パワーと音のことを考えると、Mac Mini M4の方が良さそう。でもRAMの要求が高いから、価格が上がるのがネックだね。" userName="rcarmo" createdAt="2025-02-11T12:51:39" color="">}}

{{<matomeQuote body="48GBのVRAMがあっても、3090の約2倍遅いってことは効率は疑わしいな。俺の予算内のAIセットアップは、7840 RyzenのミニPCにUSB4ポートつけて、3090をeGPUアダプタ（ADT-link UT3G）で繋いでる。合計1万円ぐらいかかって、ollamaを使ってqwen2.5-coder-32bで簡単に35t/s出せるよ。" userName="dandanua" createdAt="2025-02-11T14:25:04" color="">}}

{{<matomeQuote body="eGPUってメモリ帯域幅の速さを活かせないんじゃないの？Stable Diffusionで試してみたことある？" userName="mrbonner" createdAt="2025-02-11T15:11:33" color="">}}

{{<matomeQuote body="USB4は40Gbpsで全然問題ない。PyTorchのテストやってみたけど、性能が10％落ちただけだった。LLMの推論では、モデルがVRAMに読み込まれていれば性能低下はなかったよ。" userName="dandanua" createdAt="2025-02-11T16:26:59" color="">}}

{{<matomeQuote body="全部のモデルをVRAMに読み込めるなら、確かにそれは話が合うね。どんなeGPUドックとGPUを使ってるのか教えてもらえる？" userName="mrbonner" createdAt="2025-02-12T02:21:37" color="">}}

{{<matomeQuote body="ADT-link UT3GがeGPUドックだよ。普通のPSUがあればGPUに電源供給できるし、古いのを使ってる。だけど、色々と確認するのに時間はかかるかも。Winでは’nvidia error 43 fixer’を使う必要があったり、Linux NixOSではカーネルにNvidiaドライバを読み込む設定が必要だったりする。これがその外観だよ。" userName="dandanua" createdAt="2025-02-12T07:34:52" color="#ff5c5c">}}

{{<matomeQuote body="記事には書かれているけど、将来的にはアメリカのAIエージェントに天安門の事件について率直に話せるようになると思う。でも今買えるAIは、サンタクロースのキャラを持ったのしか無いから、悲劇を語る一方で”Ho ho ho… 休日が来るの知らなかった？”とか混ぜてきそう。アメリカのAIエージェントが言いたくないことは避ける可能性が高いのに、皆その可能性を無視してるのが残念だ。大手3社（OpenAI、Meta、Google）がDEIやトランス、地球温暖化への言及を quietly 削除するのはいつかな？最初は「メキシコ湾」を「アメリカ湾」に変え始めるだろうけど、それからどうなるんだろう？" userName="cratermoon" createdAt="2025-02-11T15:59:43" color="">}}

{{<matomeQuote body="ローカルのR1モデルなら、天安門広場について自由に話すのは簡単だよ。“Smurf”みたいな言葉に問題のある用語を置き換えるのは効果的だけど、ローカルモデルの場合は、多くのケースでそんな必要すらない。" userName="CamperBob2" createdAt="2025-02-11T19:41:25" color="">}}

{{<matomeQuote body="ああ、Shadow Promptingの証拠だね。おそらくAPIには追加の非公開のプロンプトコンテキストがあって、天安門はタブーになってるんだ。" userName="cratermoon" createdAt="2025-02-11T22:58:49" color="">}}

{{<matomeQuote body="P40がfp16性能悪いってのは、ローカルセットアップには致命的じゃない？" userName="hexomancer" createdAt="2025-02-11T12:26:52" color="">}}

{{<matomeQuote body="ローカルでfp16を使うことはないだろうね。普通はQ5かQ6量子化で、VRAMで使えるモデルとコンテキスト長を最大限に活用してる。Q6では品質の損失はほとんどないよ。" userName="behohippy" createdAt="2025-02-11T12:38:57" color="">}}

{{<matomeQuote body="推論は必ずしも量子精度では動かないはずだよね。" userName="Eisenstein" createdAt="2025-02-11T14:20:25" color="">}}

{{<matomeQuote body="K/Vストアも量子化すれば、それに応じて動くんじゃない？しかも、これが今はかなり標準になってるみたいで、最大のコンテキストサイズを大幅に増やせるんだ。" userName="wkat4242" createdAt="2025-02-11T22:32:11" color="">}}

{{<matomeQuote body="たしかにほとんどの推論エンジンで使えるけど、標準の使い方とは言えないかな。品質がひどく落ちることもあるし。" userName="Eisenstein" createdAt="2025-02-11T23:46:00" color="">}}

{{<matomeQuote body="q8_0でもそんな感じ？僕は悪くないと思ってるけど、興味あるな。q8_0ならメモリ使用量もfp16の半分だし。ollamaの開発者が品質への影響は無視できるって言ってたけど、K/Vキャッシュの量子化はモデルそのものほどうまくスケールしないかもしれない。" userName="wkat4242" createdAt="2025-02-12T01:36:03" color="">}}

{{<matomeQuote body="モデルやコンテキストの使い方によるね。例えばcommand-rみたいなモデルだとほぼ影響ないけど、Qwenはめちゃくちゃになる。翻訳や評価みたいにコンテキストに依存するタスクは影響が大きいけど、コード生成やクリエイティブな出力にはあまり影響がない。" userName="Eisenstein" createdAt="2025-02-12T02:20:50" color="">}}

{{<matomeQuote body="Qwenはサンプラーの設定にちょっと食わず嫌いだけど、量子化してもちゃんと動くよ。無限ループにハマったらtop_pを少し下げてみて。Qwenは低い温度の方が好きな気がする。" userName="behohippy" createdAt="2025-02-12T10:49:22" color="">}}

{{<matomeQuote body="今話してるのは、モデルの重みじゃなくてK/Vキャッシュを動的に量子化する話だよね。" userName="Eisenstein" createdAt="2025-02-12T14:05:28" color="">}}

{{<matomeQuote body="俺はそのモデルでK/VキャッシュをQ8で動かしてるけど、うまくいってないの？" userName="behohippy" createdAt="2025-02-13T18:37:16" color="">}}

{{<matomeQuote body="面白いな。それは知らなかったけど、基本的に‘無料’のスペース節約だと思ってたよ。llama3.1がどうなるか知ってる？" userName="wkat4242" createdAt="2025-02-12T03:21:03" color="">}}

{{<matomeQuote body="Vega 56（HBM2 8GB）の使用料金より、$／GBが安いの？同じ48GBのためにバンバン使えるx1スロットのマイニングボードもあるし。" userName="numpad0" createdAt="2025-02-11T12:52:15" color="">}}

{{<matomeQuote body="AFAIK、これってインタラクティブな使用にはあまり向いてないよね。LLMはデータを直列に処理するから、リクエストは各トークンごとにすべてのカードを通過する必要があるんだ。それでたくさんのPCIeトラフィックが発生して、遅延が出る。バッチリクエストをまとめて、すべてのGPUをフル稼働させられるなら、まだマシだけどね。" userName="magicalhippo" createdAt="2025-02-11T14:19:20" color="">}}

{{<matomeQuote body="DNNがデフォルトでメッシュみたいなものだってわかってなかった。最もボトルネックになりやすい部分が影響するって分かって、納得。ありがとう。" userName="numpad0" createdAt="2025-02-12T13:21:29" color="">}}

{{<matomeQuote body="モデルを読み込むだけでも結構時間かかるよね。" userName="42lux" createdAt="2025-02-11T13:24:32" color="">}}

{{<matomeQuote body="自宅で使う場合、バッチサイズが1だとしたら、大きなバッチサイズに関する欠点がほとんどだと思う。" userName="Havoc" createdAt="2025-02-11T13:02:34" color="">}}

{{<matomeQuote body="2x24GB VRAMを使うと、モデルが24GBから48GBの間ならメモリに完全に載せられるってこと？ちょっと疑わしいけど、ollamaはそうじゃないと思う。誰か知ってる人いる？" userName="apples_oranges" createdAt="2025-02-11T13:24:49" color="">}}

{{<matomeQuote body="いや、違うと思う。詳しい人がより良く説明できるといいんだけど、kvcacheのために容量が必要だし、コンテキストウィンドウのサイズも考慮しなきゃならない。これに関して良いリソースがあれば教えてほしい。" userName="memhole" createdAt="2025-02-11T13:34:42" color="">}}

{{<matomeQuote body="暗い技術って、ハードウェアを過剰に展開することだよ。" userName="htrp" createdAt="2025-02-11T13:52:47" color="">}}

{{<matomeQuote body="そういうわけでOpenAIが何十億も使ってる間に、DeepSeekが来て、びっくりするほどのハードウェア理解と最適化で6百万ドルぐらい使ってるんだ。他よりも少ないコストで多くやってるみたい。" userName="cratermoon" createdAt="2025-02-11T19:40:49" color="">}}

{{<matomeQuote body="多くのLLMについて、HuggingFaceで様々な量子化バージョンのセットが見つけられるよ。例えば、”CodeLlama 70B”を動かしたいなら、Q4_K_Mの量子化バージョンは41.42GBのダウンロードで、43.92GBのメモリで動くって表がある。" userName="michaelt" createdAt="2025-02-11T15:22:22" color="#ff5c5c">}}

{{<matomeQuote body="いや、コンテキストのために余分なスペースが必要なんだ。モデルのサイズで質を判断するのは、GBでビデオを評価するようなもんだ。サイズは同じでも、品質に大きな差があることもある。量子化されたモデルの重みを使うことになるし、これには様々な戦略があるから、ざっとしたガイドだよ。具体的に48GBのモデルが48GBのVRAMに収まらなければ、低精度の量子化をダウンロードすればいい。" userName="Eisenstein" createdAt="2025-02-11T14:17:26" color="#ff5c5c">}}

{{<matomeQuote body="最近のhomelab LLMsについてのポッドキャストが役に立ったよ。" userName="brianzelip" createdAt="2025-02-11T15:40:49" color="">}}

{{<matomeQuote body="クラウドやOpenAI/AnthropicのAPIでどれくらいのクレジットが得られるんだろう？約1700ドルでハードウェアなしでできることがもっと多いと思う。自分でプロジェクトを作るのは楽しいけど、金銭的には納得できないな。オフグリッドで生活するならともかく、プライバシーに関する懸念が強いなら分かるけど。" userName="whalesalad" createdAt="2025-02-11T19:19:36" color="">}}

{{<matomeQuote body="個人のディープラーニングマシンを作る人は多いよね。経済面や利便性も重要だし。ただ、”ダミーGPU”とかの説明が混乱するな。モダンなマザーボードには統合グラフィックがあるし、何に使うのかわからない。私のDLマシンは24コアCPU、128GB RAM、3060 GPUを2基と2TBのNVMeドライブをRAID 1で組んでる。大好きだよ。" userName="rjurney" createdAt="2025-02-11T14:54:13" color="">}}

{{<matomeQuote body="こちらを見てみて：https://www.hp.com/us-en/shop/mdp/business-solutions/z440-wo...統合グラフィックスは無いよ。著者の説明によると、Teslaは計算用に作られているから、モニターに接続するためのポートが無いんだ。HP Z440のBIOSはこれが嫌いで、ビデオ信号を出せないと起動しないんだ。" userName="T-A" createdAt="2025-02-11T15:00:25" color="">}}

{{<matomeQuote body="ラックに6基の4090を載せていてEpycがそれを動かしてるけど、実際は全部売ってMac Studioにする予定。これの方が作業が楽みたい。" userName="renewiltord" createdAt="2025-02-11T17:02:25" color="">}}

{{<matomeQuote body="これは古代のmikuboxを限られた形で再現したものだね。https://rentry.org/lmg-build-guidesここにあるビルドを見つけるなんて面白いね。皆がこのガイドに気づいてないのが不思議だけど、4chanの匂いが怖いのかな？" userName="DrPhish" createdAt="2025-02-11T15:42:54" color="">}}

{{<matomeQuote body="”古代”なガイドだね。" userName="cratermoon" createdAt="2025-02-11T19:38:44" color="">}}

{{<matomeQuote body="ビルドガイドのインデックスページは新しいけど、mikuboxのrentryは2023年10月6日だからね。AIワークステーションビルドガイドに関して言えば、これが古代でないなら、私は何を知ってるのかわからない。" userName="DrPhish" createdAt="2025-02-12T00:14:59" color="">}}

{{<matomeQuote body="プライベートAIを使う理由の一つは、クラウドAIの利用規約にプロンプトやコンテキストデータの使用に関する法的条項がある可能性があるから。企業の顧客は自分のデータを将来のトレーニングから除外できるんだ。" userName="walterbell" createdAt="2025-02-11T14:16:39" color="">}}

{{<matomeQuote body="利用規約は変わる可能性があるし、企業は違法に行動することもある。データの漏洩や内部の脅威も起こり得る。自分で作ったボックスに完全にコントロールを持っているのに、なぜ会社の善意を信じる必要があるのか？" userName="icepat" createdAt="2025-02-11T14:21:12" color="#ff5c5c">}}

{{<matomeQuote body="一人当たりのコストだよね" userName="rovr138" createdAt="2025-02-11T14:22:30" color="">}}

{{<matomeQuote body="古い1080tiのゲーミングデスクトップで64GbのRAM使って17b deepseekモデル動かしてるけど、遅いけど面白いよ。" userName="pg5" createdAt="2025-02-12T01:09:37" color="">}}

{{<matomeQuote body="コストコで559ドルの最安値のMac M4 Mini買ったけど、llama 3.2を通してチャットGPT並にテキスト生成してるっぽい。" userName="almosthere" createdAt="2025-02-11T17:27:16" color="">}}

{{<matomeQuote body="深い真実だね。著者には申し訳ないけど、記事には感謝！" userName="robblbobbl" createdAt="2025-02-11T13:47:21" color="">}}

{{<matomeQuote body="M4 Mac Mini Proに48GB RAMで32Bや70Bモデルも動かせる（ちょっと遅いけど）。Ollama使ってるけど、デスクトップ組み立てるのが好きな人なら分かるよね。" userName="asasidh" createdAt="2025-02-11T21:04:03" color="#ff5733">}}

{{<matomeQuote body="1.7kユーロと300wで遊び場って。なんか世界が狂ってきてる、理解できない自分も年取ったなぁ。" userName="gytisgreitai" createdAt="2025-02-11T20:17:02" color="">}}

{{<matomeQuote body="僕も似たようなのやって、Mac mini買った。みんなそれぞれの予算があるよね。" userName="rootsudo" createdAt="2025-02-12T07:36:46" color="">}}

{{<matomeQuote body="1800ドルでDell T5820に2x Dell 3090s手に入れたけど、全然不満ないよ。" userName="_boffin_" createdAt="2025-02-11T17:09:11" color="">}}

{{<matomeQuote body="RPI4でdeepseek R1 1.5動かしてる。でも遅すぎて、でも満足。" userName="windex" createdAt="2025-02-12T14:11:57" color="">}}

{{<matomeQuote body="P40はfp16のサポートがイマイチだから3090を買った方がいいよ。" userName="zinccat" createdAt="2025-02-11T15:09:48" color="">}}

{{<matomeQuote body="24GBの3090がeBayで4倍の値段だね。" userName="JKCalhoun" createdAt="2025-02-11T15:16:00" color="">}}

{{<matomeQuote body="最新のiPhoneなら8bをローカルで動かせるよ。" userName="brador" createdAt="2025-02-11T13:28:54" color="">}}

{{<matomeQuote body="でもこれって実際どれくらい役立つのかね？俺の経験では小さいモデルはちょっといじるだけで、ワークフローに組み込むには出力が悪すぎるんだよね。もっと使ってる人の意見が聞きたいな。今は色々なタスクにクラウドモデルを使ってるけど、特定のデータでトレーニングできる個人モデルが欲しいな。まだまだ分からないことが多いけどさ。" userName="0xEF" createdAt="2025-02-11T13:36:39" color="">}}

{{<matomeQuote body="8Bには最低でも16GBのRAMが必要じゃない？そうじゃないとスワッピングすると思う。" userName="redman25" createdAt="2025-02-11T14:41:47" color="">}}

{{<matomeQuote body="選択する量子化によるっていう話もあるみたいだよ、詳しくはここを見てね： https://www.canirunthisllm.net/" userName="blebo" createdAt="2025-02-11T15:12:21" color="">}}

{{<matomeQuote body="予算内でMLモデルを動かすためのPCって呼ぼうよ。'AIコンピュータ'って言い方、ちょっと見栄張ってるし誤解を招くかも。" userName="jll29" createdAt="2025-02-11T19:02:11" color="">}}

{{<matomeQuote body="面白い記事だった！" userName="hemant1041" createdAt="2025-02-11T16:09:30" color="">}}



