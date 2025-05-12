+++
date = '2025-05-05T00:00:00'
months = '2025/05'
draft = false
title = 'リアルタイムAI音声チャット、応答速度500ms！'
tags = ["AI", "Realtime", "STT", "TTS", "Open Source"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> リアルタイムAI音声チャット、応答速度500ms！

引用元：[https://news.ycombinator.com/item?id=43899028](https://news.ycombinator.com/item?id=43899028)




{{<matomeQuote body="RealtimeVoiceChatは音声AI遅延にうんざりして作ったOSS。<br>ローカルLLMとリアルタイム会話目的で500ms応答実現。<br>良いCUDA GPU必要。<br>動画→https://www.youtube.com/watch?v=HM_IQuuuPX8<br>コード→https://github.com/KoljaB/RealtimeVoiceChat" userName="koljab" createdAt="2025/05/05 20:17:32" color="#ff5c5c">}}




{{<matomeQuote body="すごくクールだね、シェアありがとう！<br>いくつか質問させて。<br>・wake wordエンジンについて考えた？ 常時聞きっぱなしじゃなく、特定の言葉で起動するやつね。オープンなソリューションだと良さそうなのがないみたいだけど。<br>・4090とか持ってない人向けに、（プライバシーやサービス料は気にせず）STT/TTSを外部サービスでできるようにする計画はある？" userName="riquito" createdAt="2025/05/06 02:56:10" color="#38d3d3">}}




{{<matomeQuote body="現時点で最高のSpeech-to-Textライブラリを使ってるって言って良いかな？<br>この分野は動きが速い気がして、前に調べた時はwhisper-cppが一番だって思ってたんだよね。" userName="ivape" createdAt="2025/05/05 20:28:00" color="#45d325">}}




{{<matomeQuote body="正直どうかなぁ。<br>Whisperはctranslate2実装のfaster_whisperが出てから長いことトップだったよね。<br>今日nvidiaがParakeet TDTをオープンソースにして、オープンASRリーダーボードでいきなり1位になったよ。<br>これらの最新モデルは強力そうで、これから評価しないとね。" userName="koljab" createdAt="2025/05/05 20:42:11" color="#ff5c5c">}}




{{<matomeQuote body="コードで使ってる“Coqui XTTS Lasinya”モデルについて詳しく教えて。<br>これは何で、どうやって訓練・ファインチューニングされたの？<br>あなたがHugging Faceにアップロードしたんだと思うけど、モデルカードとかREADMEがないよね。<br>https://huggingface.co/KoljaB/XTTS_Models<br>このファイルで参照されてるモデルのことだよ。<br>https://github.com/KoljaB/RealtimeVoiceChat/blob/main/code/a..." userName="peterldowns" createdAt="2025/05/06 00:59:10" color="#ff33a1">}}




{{<matomeQuote body="wake wordは一時的だよ。<br>Star Trekみたいにするには、いつも聞いてる必要があるんだ。<br>部屋にいる別の人みたいに、会話に注意して、呼びかけられたら反応するイメージかな。<br>コンテキスト無視のwake wordじゃなく、軽量ローカルLLMで呼びかけを聞き取るべきだと思う。" userName="TeMPOraL" createdAt="2025/05/06 08:05:09" color="#45d325">}}




{{<matomeQuote body="これ素晴らしいね！<br>どんなハードウェアで使ってるの、あるいはテストしたことある？" userName="dotancohen" createdAt="2025/05/05 20:40:17" color="">}}




{{<matomeQuote body="https://yummy-fir-7a4.notion.site/dia<br>これが最近アツいらしいよ。" userName="kristopolous" createdAt="2025/05/05 20:58:08" color="">}}




{{<matomeQuote body="今のところ、僕の4090でしかテストしてないんだ。" userName="koljab" createdAt="2025/05/05 20:42:57" color="#ff5c5c">}}




{{<matomeQuote body="それ試してみた。<br>品質は良いんだけど、時々生成に失敗するし、結構遅いんだよね。<br>あとVRAMが13GBくらい必要だから、音声エージェントとしては個人的に第一候補じゃないかな。" userName="koljab" createdAt="2025/05/05 21:05:43" color="#ff5733">}}




{{<matomeQuote body="プライバシーとリソースの理由でそれが欲しいな。これを小さいハードウェアデバイスとして持っても，大して遅延は増えないはずだよ。" userName="Dlemo" createdAt="2025/05/06 10:36:21" color="">}}




{{<matomeQuote body="よし，ちょっとバカな質問なんだけどさ（1）これって多分複数の言語に対応してるんだよね？（2）（1）がそうなら，使わない言語を全部削っちゃえば速くなるの？" userName="kristopolous" createdAt="2025/05/05 21:22:49" color="#45d325">}}




{{<matomeQuote body="うん，この”Lasinya”って声，なんかささやき声みたいでマジで嫌だな。エロい電話サービスみたいに聞こえるんだよ。他の声の選択肢ってあるのかな？<br>公開されてる coqui のモデルリスト https：//github.com/coqui-ai/STT-models/releases に Lasinya って名前すら見当たらないし，他のモデル名のリストも見つからないんだよね。<br>python モジュールで kokoro を選ぼうとしたんだけど，ログに coqui しか利用できないって出てきたんだ。でもさ，coqui のモデル自体はすごく良い音質だと思うよ，ただ声のタイプが気に入らないだけなんだ。<br>デフォルトのプロンプトも”彼女”っぽすぎたんだけど，それは簡単に直せたよ。でも声に関しては，このエンジンで他にどんな選択肢があるのか全然わからないんだ。<br>PS：デフォルトの声の批判，許してね。でもこれの応答性にはマジで感動してる。ホントに速く返事してくれるんだ。これを作ってくれてありがとう！" userName="wkat4242" createdAt="2025/05/06 21:27:45" color="#ff5c5c">}}




{{<matomeQuote body="全部ローカルモデルなの？ それともクラウド推論も使ってる？ 独自モデルかな？<br>どのモデルがどこで動いてるの？<br> cool なツールだね！" userName="echelon" createdAt="2025/05/05 21:31:26" color="#ff5733">}}




{{<matomeQuote body="うん，あの声が好みが分かれるのは知ってるよ。あれは自分用に学習させたやつだから，公式リリースじゃないんだ。<br>ここで声を変えられるよ：https：//github.com/KoljaB/RealtimeVoiceChat/blob/main/code/a...<br>アプリコンテナの中にサブフォルダを作って：./models/some_folder_name<br>使いたい声のファイルをそのフォルダにコピーして：config.json，model.pth，vocab.json それと speakers_xtts.pth （speakers_xtts.pth は Lasinya のをコピーして大丈夫だよ，どの声でも同じだから）<br>そしたら audio_module.py の specific_model=”Lasinya” って行を specific_model=”some_folder_name” に変えてね。<br>server.py で TTS_START_ENGINE を ”kokoro” に変更したら動くはずなんだけど，その時どうなるの？ ログメッセージを貼ってもらえる？" userName="koljab" createdAt="2025/05/07 12:45:48" color="#ff5733">}}




{{<matomeQuote body="うん，するよ。Malwareとかbugsとか起こり得るでしょ。<br>それに，ゲスト全員のために無効にしたくないってこともあるかもしれないしね。" userName="Dlemo" createdAt="2025/05/06 19:51:42" color="">}}




{{<matomeQuote body="ウェイクワードを使って有料 API をエージェント的に呼び出す，常に聞き耳を立ててる超軽量 LLM エージェントで改造するとか？" userName="justlikereddit" createdAt="2025/05/06 07:24:27" color="">}}




{{<matomeQuote body="いいね！ 自分はもう 7900 xtx で openwebui/ollama を使ってるんだけど，STT と TTS の部分はまだ動かないみたいなんだ。<br>ログ：<br>2025-05-05 20:53:15，808] [WARNING] [real_accelerator.py：194：get_accelerator] Setting accelerator to CPU. If you have GPU or other accelerator， we were unable to detect it.<br>Error loading model for checkpoint ./models/Lasinya： This op had not been implemented on CPU backend." userName="zaggynl" createdAt="2025/05/05 20:58:36" color="#ff5c5c">}}




{{<matomeQuote body="ああ，実際良い質問だよ。<br>多分無理だと思うな。モデルの重みから何かを簡単に”忘れる”ことはできないし（それだけじゃダメだけど）。単一言語でモデルをめちゃくちゃ再学習/ファインチューニングすることはできるけど，それだけじゃ推論は速くならないんだ。<br>速度を出すには，パラメータ数を減らして，単一言語だけでゼロからモデルを学習させる必要があるだろうね。それはうまくいくかもしれないけど，音声合成で他の問題を引き起こす可能性もかなり高いんだ。<br>理想的な世界では，モデルは他の言語で使ってない”空いたパラメータ”全部を，学習した単一言語の合成を良くするためだけに使うんだけどね。ある程度はそうかもしれないけど，AIのパラメータスケーリングってそういう風に正確には動かないんだよ。" userName="koljab" createdAt="2025/05/05 21:40:45" color="#ff5c5c">}}




{{<matomeQuote body="ローカルモデル構成はね、VADはWebrtcvadとSileroVAD、音声認識はbase.en whisper、ターン検出はKoljaB/SentenceFinishedClassification、LLMはbartowski/huihui-ai_Mistral-Small-24B-Instruct-2501-abliterated-GGUF:Q4_K_Mで切り替え可、TTSはCoqui XTTSv2でKokoroやOrpheusにも切り替えられるって感じだよ。Orpheusはちょっと遅いんだ。" userName="koljab" createdAt="2025/05/05 21:49:37" color="#785bff">}}




{{<matomeQuote body="これすごくいいね！絶対見てみるよ。<br>fastRTCってHugging Faceの試した？<br>このシステムとfastRTCとpipecatでどれくらい速度違うか気になってさ。まだ自分で試してないんだ。" userName="pzo" createdAt="2025/05/06 07:44:53" color="#785bff">}}




{{<matomeQuote body="open wake wordも使えるんじゃない？<br>Home Assistantが自分の音声アシスタント用に開発したものだよ。" userName="Dr4kn" createdAt="2025/05/06 08:36:06" color="#ff5733">}}




{{<matomeQuote body="これ本当にいいね、全部一緒にまとめててすごいよ。<br>早くSesame [1]のオープンウェイト版が出るといいなー。<br>これ出たら君のアプリのキラー機能になるはずだから、要チェックだよ。<br>[1] https://www.sesame.com/" userName="echelon" createdAt="2025/05/06 03:16:57" color="#45d325">}}




{{<matomeQuote body="ありがとう！あの声カスタムだったんだね。<br>Coquiの他のすぐ使える音声とかどこで見れるの？<br>デモページだと声クローンするみたいに見えるけど、リストがないんだ。<br>Kokoroに切り替えたら動いたんだけど、Coquiよりあんまり良くないな。<br>Openwebuiでもそうだった。<br>速いけど変な発音がある。<br>英語とスペイン語みたいなバイリンガルTTSがあると最高だね、Coquiならできるかも。" userName="wkat4242" createdAt="2025/05/07 14:45:36" color="#ff5733">}}




{{<matomeQuote body="これ動かすのにGPUの最小VRAMどれくらいいる？<br>GitHubにそれ見当たらなかったんだ。" userName="tmaly" createdAt="2025/05/06 22:31:46" color="#ff5733">}}




{{<matomeQuote body="pipecatって見た？<br>あれも似たような感じで、標準化されたバックエンドとかwebrtcのターン検出パイプラインやろうとしてるみたいだよ。" userName="dummydummy1234" createdAt="2025/05/05 22:56:28" color="#ff33a1">}}




{{<matomeQuote body="各ステップにどれくらい時間かかるか情報ある？<br>各ステップで何msかかるかとか。<br>これMacで動かしたらどれくらい速いか気になるんだけど。<br>だいたいの予想とかある？" userName="karimf" createdAt="2025/05/06 02:43:34" color="#45d325">}}




{{<matomeQuote body="うん、テストしてみたよ。彼らがそこで何作ったのかよく分かんないけど、raw websockets使うより明らかにレイテンシ増えるね。ホントはそうじゃないはずなのに、僕のテストではそうなったんだ。" userName="koljab" createdAt="2025/05/06 10:42:25" color="">}}




{{<matomeQuote body="（openaiとかGoogle voice chatのユーザーとして言うけどさ）。確かに速いんだけど、自然な間を取りながら話せないんだよね。僕らって考える時とか、色々理由があって長短ポーズを取るじゃん。でもこれらツールだと、止まった瞬間にAIが喋り始めちゃう。テキストでも音声でもね。前にTwitterでデモ見たんだけど、AIが相手が話し終わるまで待ってたんだ。ポーズの長さも平気。あれがどれくらい難しいか分かんないけど、たぶん別のAIが分析して判断してるんだろうね。" userName="smusamashah" createdAt="2025/05/05 20:31:05" color="#ff33a1">}}




{{<matomeQuote body="思うに、それって人間にとっても面白い問題だよね。すごく主観的。例えば、長くて考え込むようなポーズだらけのセラピー想像してみて。セラピーって割り込まず話させてくれるもんだけど、そこにはたくさんの裏の意味とかニュアンスがある。友達との興奮したおしゃべりと比べてみてよ。AIには見えないボディランゲージもいっぱいあるしね。少なくとも今は。" userName="cyjackx" createdAt="2025/05/06 02:17:58" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="これ、100%同意！うん！考えまとめてる時、LLMに返信始められたくないから、『うーん…』とか声出して繋いじゃってる自分に気づいたよ。これ、マジで難しい問題。ユーザーが『そうだね！』とか『はい』とか、相槌打っただけで止まらないようにする、でも割り込みはOKって問題と似てる。MacWhisper（これだけじゃないけど）のいいとこは、ホールドして話せるとこ。だから好きなだけ止めて、また始めても、終わりと判断されないんだ。" userName="joshstrange" createdAt="2025/05/05 21:19:28" color="#785bff">}}




{{<matomeQuote body="最近、この論文[^1]で『uh』と『um』の違いを知ったよ。<br>＞ この論文によると、話し手は『uh』や『um』でこれから短い（uh）か長い（um）ポーズが入ることを予告してるんだって。これで単語探してる、次何言うか考えてる、まだ話したい、もう終わり、とか示唆できるらしい。データ分析の結果、ポーズの必要をチェックして、どこで、どう止まるか、どっち言うか決めてるんだって。普通の単語みたいに計画して話してるって。<br>[1]: https://www.sciencedirect.com/science/article/abs/pii/S00100..." userName="Quizzical4230" createdAt="2025/05/06 05:27:47" color="#ff5733">}}




{{<matomeQuote body="誰かと会話中、ずーっと”ズレてる”時、ホント嫌だね。オシロスコープのサイン波が微妙に位相がズレてるの想像しちゃう。快適に戻すには、ほぼハードリセットいるね—部屋出るとか、かけ直すとか。まあ、世の中にはただ世界とズレてる人もいるけどね。" userName="VagabundoP" createdAt="2025/05/06 09:52:58" color="">}}




{{<matomeQuote body="なんかさ、中断されないように、話し方悪くするように訓練されてるわけだ。文学の先生が授業でフィラーワード避けるべきで、代わりに黙って考える時間取れって言ってたの覚えてるよ。まあ、公平に言えば、現実世界でも割り込まれないように長いフィラーワード使う人結構いるけど、あれ聞いててイライラするんだよね。" userName="jiehong" createdAt="2025/05/06 01:33:31" color="#ff33a1">}}




{{<matomeQuote body="LLMと音声処理を重ねて、単なる一時停止とか文末じゃなくて、意味的に重要な切り替わりを見つけて、自然に割り込む必要あるんだろうね。" userName="Bjartr" createdAt="2025/05/06 01:50:50" color="#ff5733">}}




{{<matomeQuote body="＞ 自然に話せない<br>電話だってそうじゃん。往復のレイテンシ簡単に300msになるけど、みんなそれに慣れるように話し方学んだんだ。ホント贅沢したいなら、古いアナログのPTSN回線探してみて。ノイズも遅延もない。美しくてシームレスな50msのレイテンシ。デジタル化は通話品質にとって最悪だったよ。" userName="WhitneyLand" createdAt="2025/05/05 20:48:30" color="">}}




{{<matomeQuote body="それ、マジで似た問題なんだよね。丁寧な人間がお互いに話し始める前に耐えられるラウンドトリップの最大遅延は、ベル電話システムの起源からしっかり研究されてる。俺の記憶だと、300ms以下がマジでいい感じ。AIはローカルで動かしても処理遅延あるし。電話だと遅延は光速に左右される感じだけど、人間が対話する会話への影響は同じだよ。" userName="jyoung8607" createdAt="2025/05/06 03:12:46" color="#ff33a1">}}




{{<matomeQuote body="もしかして、銅線の電話網を使ったことなくて、デジタルか携帯網しか使ったことないから？<br>POTSはエンドツーエンドなら魔法みたいだったよ。もうないと思うけどね。俺が最後に銅線から銅線へのPOTS通話をしたのは2015年だもん！ AT＆Tはそのアナログ回線に月額40ドル近くも課金してたから解約したんだ。俺のVoIP回線は長距離も国際電話もできて（POTSにはなかった）月額20ドルだよ。しかも、自分でコントロールしてるPBXを経由してるんだ。" userName="genewitch" createdAt="2025/05/06 16:12:09" color="">}}




{{<matomeQuote body="これはターン検出って呼ばれてて、最近これを解決するための素晴らしいツールがいくつか出てきてるよ。（あるユーザーがLivekitのターン検出モデルに言及してたね）。１年もすれば劇的に改善すると思う。" userName="cwackerfuss" createdAt="2025/05/06 04:35:17" color="#38d3d3">}}




{{<matomeQuote body="ターン検出モデルが小さかったら、エッジで実行して10～50msくらいの「黙れ」レイテンシにできるのかな？ それは良いね。" userName="energy123" createdAt="2025/05/06 06:01:18" color="">}}




{{<matomeQuote body="ハハ - これ、AIじゃない音声アシスタント、例えばAlexaでもこの問題あるわ。<br>”ヘイ Alexa、ライトを…”って、気分を決めようと一瞬考える間に<br>”その設定にはできません”<br>”…青に…ちくしょう。”" userName="tjbiddle" createdAt="2025/05/06 14:03:15" color="">}}




{{<matomeQuote body="うん、俺が見たデモはこれだったね：https://x.com/livekit/status/1870194686532694417<br>でも「音声検出 一時停止あり」で検索したら、新しい候補が結構あるみたいだよ！<br>https://x.com/kwindla/status/1897711929617154148<br>これも面白いアプローチだね https://x.com/zan2434/status/1753660774541849020" userName="randomcatuser" createdAt="2025/05/06 03:25:23" color="#ff5c5c">}}




{{<matomeQuote body="俺が見たのはこれだよ https://x.com/kwindla/status/1870974144831275410" userName="smusamashah" createdAt="2025/05/06 09:26:34" color="">}}




{{<matomeQuote body="たぶん、何らかの理由で一時停止してるけど数秒で dictating（喋り続ける）つもりだ、っていうのを正式に示す特別な音とか言葉を決めるべきかもね。「うーん、待って」みたいに。" userName="qwertox" createdAt="2025/05/05 20:36:35" color="">}}




{{<matomeQuote body="代替案として、２つの入力ストリームを使うハックっぽい解決策は良いかもね。１つは全部拾って、２つ目は「うーん、あー、待って、いややっぱ、それなしで」みたいなフィラーワードを探すんだ。２つ目のストリームはVeto-command（却下コマンド）としてLLMをカットオフできる。３つ目の入力ストリームは単に長い一時停止を探すようにできるね。これ全部、あっという間にリソース食いになるけど。これ作ろうと思ってたんだけどまだ作ってないから、自分を罰してアイデアを公開するわ。これで学ぶことを願ってる。" userName="ivape" createdAt="2025/05/05 20:41:45" color="#785bff">}}




{{<matomeQuote body="別の方法としては、ラジオみたいに、あの決まりに従うってのはどうかな。" userName="twodave" createdAt="2025/05/05 20:39:52" color="">}}




{{<matomeQuote body="”heredoc”の音声版が必要だね。" userName="flippy_flops" createdAt="2025/05/06 04:17:19" color="">}}




{{<matomeQuote body="”AIさん、どうぞ”、”人間さん、どうぞ”だってさ :)<br>あれ、待てよ：”リストをどうやって繰り返し処理すんのー”、”繰り返し処理は…なプロセスだよ…” :p" userName="accrual" createdAt="2025/05/06 04:43:54" color="">}}




{{<matomeQuote body="”どうぞ”って何度も言ってる間に、Shakmaを再現できそうじゃん。" userName="genewitch" createdAt="2025/05/06 16:15:58" color="">}}




{{<matomeQuote body="シンプルな指示じゃダメなの？AIに、準備ができたと思うまで特別な待機トークンだけで応答させるようにさ。完璧にはいかないかもだけど、とっかかりにはなるでしょ。" userName="emtrixx" createdAt="2025/05/05 20:40:46" color="">}}




{{<matomeQuote body="ポーズは最初の指標としてはいいけど、ポーズがあった時に、そこまで話された内容をモデルに食わせて、割り込むべきかもうちょっと待つべきか判断させるべきだね。" userName="scotty79" createdAt="2025/05/06 12:25:59" color="#ff33a1">}}




{{<matomeQuote body="正直、これってオーバーエンジニアリングの問題だと思うわ。単にユーザーが話したい時にボタンを押して、話し終わったら押すだけで十分だよ。開始と終了の合言葉でもいいし。<br>まだ本物の人間と話してるみたいに感じる必要はないんだからさ。" userName="LZ_Khan" createdAt="2025/05/05 21:00:45" color="#785bff">}}




{{<matomeQuote body="理想は、マイクボタン付きの小さい”スティックリモコン”だね。<br>ボタンを押してる間だけAIが聞いてくれるし、そのデバイスは24時間年中無休で持ち歩けるくらい効率的だといいな。" userName="joshspankit" createdAt="2025/05/07 04:14:18" color="">}}




{{<matomeQuote body="それか、AIにAsianなまりをつけたらどう？違う大陸の人と電話で話すときは遅延を受け入れるでしょ。だからこれもそうすれば？" userName="amelius" createdAt="2025/05/05 22:47:03" color="">}}




{{<matomeQuote body="そうそう、何か勉強してるときの質問なんか、途中でポーズすることあるじゃん。今の製品はどれも割り込んできて邪魔なんだよ。良い人間は顔色とか見て待ってくれるのに。AIにtaco stand聞くのと、複雑な話をするのは全然違うんだよ。" userName="SubiculumCode" createdAt="2025/05/05 20:41:18" color="#785bff">}}




{{<matomeQuote body="これってめっちゃ大きな問題だよ。だいたい”turn taking”って呼ばれてるやつね。" userName="mmoustafa" createdAt="2025/05/06 01:28:34" color="#ff5c5c">}}




{{<matomeQuote body="こういうの見るたびマジワクワクするけど、いざPCで動かそうとするとPythonと格闘してすぐ諦めちゃうんだ。今日はPythonバージョンが3.12じゃなく「3.12未満かつ3.9以上」が必要で、3.11入れてもダメ。OPみたいなすごい成果が、こういう面倒で使われにくいのは残念。「Docker使えよ」って言うけどWindowsで試したことある？俺がWindows開発しない理由だよ。JVMやNodeじゃこんな問題無かったな。" userName="sabellito" createdAt="2025/05/06 11:01:14" color="#ff33a1">}}




{{<matomeQuote body="仮想環境（virtual environments）の素敵な世界を紹介しよう！特にWindowsで、フルインストールで動かす面倒なことから解放してくれるよ。俺はminicondaが好きだけど、venvでも全然OKさ。" userName="jhoho" createdAt="2025/05/06 11:30:54" color="#785bff">}}




{{<matomeQuote body="uvが最適解だよ。https://docs.astral.sh/uv/<br>悲しいけど、LLM界隈の人たちって自分のソフトをちゃんとパッケージングするの苦手みたいだね（もしかしてわざと？）。" userName="atoav" createdAt="2025/05/06 11:31:32" color="#ff5c5c">}}




{{<matomeQuote body="LLM界隈の人たちが〜ってのは、Pythonの副作用みたいなもんだね。依存関係と戦ってない人が作ったPythonプロジェクトはこうなりがち。でもuvが最高ってのは同意だよ。俺もガチPythonプログラマーじゃないけどML系のプロジェクトで使ってる。condaとか色々試したけど、uvは超重要ポイント押さえてるんだ。Pythonバージョン変えられるしvenv管理も楽。依存関係の悩み減るよ。コマンド例は長いから省略するね！" userName="diggan" createdAt="2025/05/06 11:56:23" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="venvを使った仮想環境だけじゃ、他のツールと組み合わせないとPythonのバージョン問題は解決しないんだぜ。" userName="regularfry" createdAt="2025/05/06 12:42:41" color="">}}




{{<matomeQuote body="requirements.txtからpyproject.tomlへ移行する流れがあるよ。「uv add」とか「uv install」みたいなコマンドを使うと、依存関係の初期設定とか管理の面倒がかなり減るんだ。" userName="bb88" createdAt="2025/05/06 17:00:11" color="#785bff">}}




{{<matomeQuote body="ありがとう。言ったように、俺はそんなにPythonプログラマーじゃないから、そういうトレンド追ってないんだよね…requirements.txt使う理由考えたけど、普通の依存関係入れるだけなら良い答え出てこなかったんだ。 personally requirements.txtで困ったことないから、pyproject.tomlが何を解決してくれるのか分かんない。なんか問題ぶつかったら変えるかなーって感じ。" userName="diggan" createdAt="2025/05/06 18:36:20" color="">}}




{{<matomeQuote body="知らない技術やツール、使い慣れないOSでML関係のプロジェクト動かすのにどれくらい時間かかるか知ってる？だいたい1〜2時間、下手したらもっとだよ。<br>ああいう批判ってマジこじつけで手抜きすぎ。「知らない言語コンパイルして、使ったことないツール使って、慣れないOSで…」って？<br>君の文章をコピペして、WindowsをMacに変えて、homebrewに文句言うとかに置き換えても通用するんだ。それはエコシステムとかOSとかツールとか開発者としての君自身について何も言ってないし、コメントとして役に立つか？微妙だね。" userName="zo1" createdAt="2025/05/06 15:01:13" color="">}}




{{<matomeQuote body="セキュリティのためにも、こういうのは全部sandboxの中でやった方が良いんじゃないかな。" userName="amelius" createdAt="2025/05/06 16:16:32" color="">}}




{{<matomeQuote body="uvってcudaとうまく動く？<br>俺はできるだけnix-shellで開発環境全部指定してるんだけど、venvとかcudaとは相性悪いことが多い。nix flakeでcuda環境固定できたの一度だけだけどすぐ壊れてvenvに戻ったよ。<br>pip、pyenv、poetry、conda、mambaとか色々使ったけど、変なエッジケースがマジで多いんだ。PythonかNodeか分かんなくなる /snark<br>「最終兵器」みたいなツールが出たら喜んで使うけど、みんなそう謳ってたんだよね。" userName="whacked_new" createdAt="2025/05/06 16:45:45" color="#45d325">}}




{{<matomeQuote body="んでさあ、これってだいたい25％くらいの時しか動かないんだよね。他の時はrequirements.txtとかのよく分かんないエラーが出て、結局ググっても別のプロジェクトのGitHubリポジトリで未解決になってるissue見つけるだけなんだ。誰かPythonの依存関係地獄だけ解決してくれるLLMエージェント作ってくんないかなあ。" userName="turnsout" createdAt="2025/05/06 15:17:59" color="">}}




{{<matomeQuote body="”Pythonの依存関係地獄だけ解決してくれるLLMエージェント作ってくんないかなあ。”<br>ほら、だからGPT 5がずっと遅れてるんだよ。" userName="releaslot" createdAt="2025/05/06 15:22:30" color="">}}




{{<matomeQuote body="俺もcondaとかmamba使ってて速いんだけど、システムレベルのパッケージが必要な時もあるんだよね。この前TRELLISをWindowsで動かそうとして諦めたわ。あと、新しいリポジトリ動かすのにvenv作ると、CUDAとかPyTorchでディスク容量めっちゃ食われるんだよ。すぐ何百GBになっちゃう。<br>愚痴ってごめんね、Pythonのパッケージ管理の話になるとさあ…" userName="s5ma6n" createdAt="2025/05/06 13:58:30" color="">}}




{{<matomeQuote body="たぶんみんな、信頼できないサードパーティライブラリとかはなんか隔離された環境で動かしてるよね？ハッキングされたいって言うなら別だけどさあ。基本的なセキュリティ理解はあるって前提にしないと、話めっちゃ長くなるしね＾＾" userName="diggan" createdAt="2025/05/06 16:26:34" color="">}}




{{<matomeQuote body="この件だと`uv`がマジ最高だよ。超速いし、condaみたいにグローバルツールとしてめっちゃいい感じに動くし、複数のPythonバージョンをダウンロードして管理したり、どの仮想環境でどのバージョン使うかってのもやってくれるんだ。" userName="krferriter" createdAt="2025/05/06 18:39:08" color="#45d325">}}




{{<matomeQuote body="仮想環境っていいけど、単独だと微妙なんだよね。requirements.txtも使えるけど、依存が多いとメンテがマジ大変。<br>Astral uvとかpoetryはpyproject.tomlをメンテして仮想環境も管理してくれるんだ。<br>だから初心者でも`uv sync`とか`poetry install`って打てば仮想環境知らなくても大丈夫だし、root権限もいらないし、依存の競合も気にしなくていいよ。簡単なコマンドで使えるんだ。" userName="bb88" createdAt="2025/05/07 03:19:18" color="#38d3d3">}}




{{<matomeQuote body="分かった。でもさあ、GPUをサンドボックスの中で動かすのも結構難しいステップになりうるんだよね。きっとほとんどの人は諦めてサンドボックス無しでコマンド実行してると思うよ。<br>だから、そのやり方の手順も記事に含めた方がいいかもね。" userName="amelius" createdAt="2025/05/06 17:03:47" color="">}}




{{<matomeQuote body="ハハ、なるほどねー。もしあのPythonの状況（依存関係地獄）を解決できるんなら、もうAGIって呼んじゃっていいレベルだと思うわ。" userName="turnsout" createdAt="2025/05/07 14:22:12" color="">}}




{{<matomeQuote body="GP（元投稿者）の問題はさあ、（どうやら）適切なPythonバージョンを選択できないことじゃなくて、インストールできないことだったみたいだよ。" userName="regularfry" createdAt="2025/05/06 17:02:09" color="">}}




{{<matomeQuote body="uvみたいなの使うと（リンク先見てね）、そうなると思うよ。でもさ、ただ`python -m venv .venv`ってやると、作った時のpythonのバージョンになるんだよね。OSesによっては`python3.8`とか`python3.9`みたいなバイナリがあるから、`python3.8 -m venv .venv`ってやれば特定のバージョンに固定できるけど、ちょっと面倒だよね。" userName="diggan" createdAt="2025/05/06 13:12:00" color="#785bff">}}




{{<matomeQuote body="このスレッドについてのメタなコメントだけどさ、”これ使え””あれ使え”みたいなコメント多すぎじゃない？なんかトップのコメントの言いたいこと証明してる感じだよね。pythonライブラリ入れる時も同じこと思うわ。依存関係管理する方法いっぱいありすぎて、もっと標準化されてたらなってマジで思うよ。" userName="mrinterweb" createdAt="2025/05/06 16:52:30" color="#ff5c5c">}}




{{<matomeQuote body="pyproject.tomlには良い点がいくつかあるよ！まず依存関係を細かくグループ分けできる（開発用とかね）。プロジェクトのメタデータやツール設定（ruffとかblackとか）も一箇所にまとめられるし、フォーマットが標準化されてるから他のツールとも連携しやすいんだ。requirements.txtより便利になったよ。" userName="atoav" createdAt="2025/05/07 05:50:12" color="#ff5733">}}




{{<matomeQuote body="condaとかuvはpythonのバージョン管理もしてくれるから魅力的だよね。特に公式のOSチャンネルだと一つのバージョンしか提供してなくて、いろんなバージョンのpython入れるのが簡単じゃないシステムには助かる。少なくともmacosではbrewが最近のバージョンをいくつか同時にインストールできるけどね。" userName="krferriter" createdAt="2025/05/06 18:41:42" color="#ff5c5c">}}




{{<matomeQuote body="uvがこの問題を解決してくれるよ。<br>`uv venv python3.11`<br><br>これで完了さ。" userName="laborcontract" createdAt="2025/05/06 15:04:40" color="#38d3d3">}}




{{<matomeQuote body="俺はnix-shell使うことが多いけど、相手がNix分からなそうな時はuv使うよ。cudaとも問題なく動くみたい。個人的にはトラブルないね。最近動画分類のtransformerモデル作った時も、uvで管理してpytorchもvenvに入れたけど全然大丈夫だったよ。" userName="diggan" createdAt="2025/05/06 18:12:00" color="#45d325">}}




{{<matomeQuote body="UVってさ、結局venv使ってるんだよ。" userName="bb88" createdAt="2025/05/06 16:51:49" color="">}}




{{<matomeQuote body="python開発者じゃない俺みたいなのが、たまにpythonプロジェクト動かす時、venvの使い方毎回調べるのが超面倒！pathにスクリプト入れて`.venv`に自動でvenv作ってactivateするようにしたよ。pipにBundlerみたいな機能が最初からあれば最高なのにね。" userName="mckeed" createdAt="2025/05/06 17:45:12" color="#ff5c5c">}}




{{<matomeQuote body="全く同じ経験だよ。ほんと、パッケージ本体はハッシュで中央に保存して、venvsからはそこにリンクするだけにするべきだよね。" userName="WanderPanda" createdAt="2025/05/06 17:13:23" color="#ff33a1">}}




{{<matomeQuote body="Condaならできるよ！例えば、`conda create -n myenv python=3.9`って感じでね。" userName="homeless_engi" createdAt="2025/05/06 18:00:59" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
