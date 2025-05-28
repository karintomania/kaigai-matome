+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = '14GBでローカル動作？ 開発者注目のAIモデルDevstral'
tags = ["AI", "プログラミング", "開発者", "ローカルAI"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> 14GBでローカル動作？ 開発者注目のAIモデルDevstral

引用元：[https://news.ycombinator.com/item?id=44051733](https://news.ycombinator.com/item?id=44051733)




{{<matomeQuote body="最近はまずOllamaでのファイルサイズを見るんだよね。Devstralは14GBだってさ（https://ollama.com/library/devstral/tags）。俺のM2 Macだと、これがモデルに必要なメモリのだいたいの目安になる（だいたいプラス10％くらい）。他のアプリ動かすのにどれくらいメモリが残るかが大事だからね。20GB以下なら他の作業の邪魔になりにくいかな。このモデルは期待できそう！" userName="simonw" createdAt="2025/05/21 17:30:32" color="#ff5c5c">}}




{{<matomeQuote body="ローカルモデルでちゃんと動く、エージェント系の開発ソフトでおすすめない？<br>Cursor使ってるけど、なんかイマイチなんだよね。エディタとChatGPTを行ったり来たりする方が良い結果出るし。<br>localforgeとかaiderも試したけど、ローカルモデルだとちょっと遅いんだよなー。" userName="nico" createdAt="2025/05/21 21:32:42" color="#ff33a1">}}




{{<matomeQuote body="https://github.com/block/goose" userName="ynniv" createdAt="2025/05/22 00:28:37" color="">}}




{{<matomeQuote body="今日Devstralをclineとopen handsで使ってみたよ。両方ともバッチリ動いた。<br>俺のm4 maxだと最初のプロンプト処理に1分くらいかかったな。<br>LM studioを使ったのはね、ollama APIがcontextを128kにするとおかしくなるからなんだ。" userName="zackify" createdAt="2025/05/22 03:26:30" color="#ff33a1">}}




{{<matomeQuote body="最初のプロンプト処理に1分もかかるのに、何で「バッチリ」なの？" userName="elAhmo" createdAt="2025/05/22 10:08:46" color="">}}




{{<matomeQuote body="ハハ、バッチリっていうのはね、今までローカルでは無理だった単純なことが、驚くほどちゃんとできたって意味だよ。<br>最初のトークンが出るのに1分かかるのはマジで萎えるけどね。帯域幅が今の3〜4倍になる日が待ちきれないよ。" userName="zackify" createdAt="2025/05/28 01:45:18" color="#ff5c5c">}}




{{<matomeQuote body="その時間はあくまで最初のプロンプトだけだよ。モデルの起動時間みたいなもんだね。<br>一回読み込まれちゃえば、その後の応答はめちゃくちゃ速くなるよ。<br>もちろん、使ってるハードウェアにもよるけどさ。" userName="cheema33" createdAt="2025/05/24 12:12:14" color="#ff5733">}}




{{<matomeQuote body="mlxとか、Simon Wilsonさんのllmは試してみた？<br>（URL:<br>https://llm.datasette.io/en/stable/<br>https://simonwillison.net/tags/llm/）" userName="nico" createdAt="2025/05/22 13:47:04" color="#45d325">}}




{{<matomeQuote body="LM studioではmlxを使ってるよ。" userName="zackify" createdAt="2025/05/28 01:44:37" color="">}}




{{<matomeQuote body="VS Codeのcopilotでollama使えるらしいよ。<br>俺はまだ試してないんだけど、Devstralでどう動くか興味あるなー。" userName="asimovDev" createdAt="2025/05/22 06:28:14" color="">}}




{{<matomeQuote body="Zed使ってみてるんだけど、ローカルもクラウドモデルもサポートしてるし、めっちゃ速いしUIもいい感じだよ。VSCodeとかCursorみたいな深い機能はちょっと足りないけど、かなりイケてると思う。" userName="ivanvanderbyl" createdAt="2025/05/23 10:35:09" color="">}}




{{<matomeQuote body="他にモデルのインターフェースある？どれくらいのtokens/sec出てるの？aiderをgeminiにつないで速さ試してみたらどうかな。localllama界隈の人たちはTPSについて話したがらないなって気づいたんだよね。" userName="jabroni_salad" createdAt="2025/05/21 21:50:00" color="">}}




{{<matomeQuote body="ollamaから直接モデルとやり取りする時は結構キビキビ動く感じだけど、TPSはよく分からないな。でも、2つほど困ったことがあるんだ。（1）ほとんどのモデルがツールをサポートしてないこと。ちゃんとツール使えるバージョンのモデルを見つけるのが大変なんだよね。（2）TPSが良くても、エージェントがChain-of-Thoughtとかで複数のプロンプトを繋げて動かすから、体験としては遅く感じるんだ。これってCursorで彼らのモデルとかAPI使っても同じなんだよね。" userName="nico" createdAt="2025/05/21 22:20:30" color="#45d325">}}




{{<matomeQuote body="みんな色んなハードウェア使ってるから、ハードウェアの詳しいスペックなしにTPSだけ言われても意味ないよ。GPUだけじゃなくて、CPU、メモリ速度、メモリチャンネル、PCIe速度、推論ソフト、部分的なCPUオフロード？ RPC？ OSまで、全部影響するんだ。だから誰かが特定のモデルのTPSを言っても、その人の全体構成が分からないと意味ないんだよ。" userName="segmondy" createdAt="2025/05/24 13:42:32" color="#785bff">}}




{{<matomeQuote body="ra-aidっていうのがOllamaと結構うまく動くよ（Devstralではまだ試してないけどね）。<br>https://docs.ra-aid.ai/configuration/ollama/" userName="mrshu" createdAt="2025/05/22 17:00:03" color="#45d325">}}




{{<matomeQuote body="16GBのMBPだと動かせなかったんだ（試したんだけど、フリーズしちゃって、多分スワップしまくりだった）。32GB必要って言われてるね。" userName="davedx" createdAt="2025/05/22 08:15:28" color="#38d3d3">}}




{{<matomeQuote body="24GBのM2 Airで動かせたよ。起動はすごく遅かったけど、10分はかからなかったかな。その後は応答はそこそこ速かったよ。<br>追記：その時、他の色々なアプリを開いてたんだ。Mail、Safari、Messagesとかね。何も開いてなければ起動はもっと速いと思うけど、32GB未満でも動かせるってことだね。" userName="ics" createdAt="2025/05/22 17:04:51" color="#45d325">}}




{{<matomeQuote body="うん、同意するよ。ちょうどモデルをローカルで動かしてみたんだけど、良い感じだよ。ruby/rspecのちょっとした引っかかりそうな部分で試したんだけど、うまく処理してくれた。aiderでも大きなコンテキストをテストしてみるつもりだよ。" userName="lis" createdAt="2025/05/21 18:48:17" color="#ff5733">}}




{{<matomeQuote body="ollamaで大きなコンテキストをどう設定するの？どの設定を使えばいいの？良いガイドがまだ見つからないんだよね。モデルごとにどんな設定にすればいいのか、どう見極めればいいのかも全然分からないんだ。コンテキスト長があるけど、それって入力長とか出力長とどう関係するの？単純に数字を合わせればいいの？32kは32k？何かヒントないかな？" userName="ericb" createdAt="2025/05/21 19:56:48" color="">}}




{{<matomeQuote body="aiderとollamaについてはここを見てみて：<br>https://aider.chat/docs/llms/ollama.html<br><br>ollamaだけならここ：<br>https://github.com/ollama/ollama/blob/main/docs/faq.md#how-c...<br><br>僕はllama.cppを使ってるから、これらの方法は確認できないけどね。" userName="lis" createdAt="2025/05/21 20:33:11" color="#ff5733">}}




{{<matomeQuote body="aiderと一緒に使ってる？ どんな感じ？" userName="nico" createdAt="2025/05/21 21:34:34" color="">}}




{{<matomeQuote body="Ollama、俺は手動でコンテキスト増やしてもリセットされたり、すぐメモリから消えたりしてダメなんだよ。MacのLM studioとMLXだと問題ないのに。長い処理とかカスタムコンテキストだとバグが多いみたいで驚き。" userName="zackify" createdAt="2025/05/22 03:28:48" color="#45d325">}}




{{<matomeQuote body="Ollamaのモデルライブラリにあるほとんどのモデルは20GB以下のバージョンがあるよ。それが4ビット量子化なのか、もっと細かいのかはモデルによるけどね。俺が見る限り、デフォルトタグは大体15GBくらいのバージョンになってると思う。" userName="rahimnathwani" createdAt="2025/05/22 06:09:08" color="#38d3d3">}}




{{<matomeQuote body="SWE-Benchのスコア、このサイズのオープンソースモデルにしてはめちゃくちゃ高いね。46.8%って o3-mini とか Claude 3.6 よりも良いし、Anthropicの独自 scaffold を使った Claude 3.6 よりちょっと低いだけ。ほとんどタダで動かせるのを考えたら、これは本当にすごいモデルだよ。" userName="oofbaroomf" createdAt="2025/05/21 18:19:31" color="#785bff">}}




{{<matomeQuote body="すごい…のか、それともベンチマークがちゃんと機能してないんじゃ？って疑っちゃうレベル。" userName="AstroBen" createdAt="2025/05/21 21:41:09" color="">}}




{{<matomeQuote body="全然Mistralを検討してなかったんだけど、オープンソースへのこの姿勢はすごいね。ちょっと試してみるしかないわ。" userName="echelon" createdAt="2025/05/22 00:25:02" color="">}}




{{<matomeQuote body="Mistralは昔からオープンなウェイトのモデル出してるけどね…" userName="qeternity" createdAt="2025/05/22 13:59:40" color="">}}




{{<matomeQuote body="でも同時に Codestral のウェイトは公開してないんだよね…" userName="alhimik45" createdAt="2025/05/23 05:37:58" color="">}}




{{<matomeQuote body="SWE bench liteのことを言ってるんだよ。君もそうだよね？確認したいだけ。" userName="sagarpatil" createdAt="2025/05/22 02:44:37" color="">}}




{{<matomeQuote body="そのアイデアどこから来たの？記事ではSWEBench-Verifiedについて繰り返し言及してて、他には触れてないよ。" userName="svantana" createdAt="2025/05/22 11:32:34" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="いや、僕が言ってるのはClaude 3.5 Sonnet Newだよ．2024年10月22日リリースで、モデルIDはclaude-3-5-sonnet-20241022ね．Anthropicの名前の付け方が紛らわしいから、俗にはClaude 3.6 Sonnetって呼ばれてるやつ．" userName="oofbaroomf" createdAt="2025/05/21 20:56:19" color="#38d3d3">}}




{{<matomeQuote body="しかも、すごく良いLLMだよ．Sonnet 3.7になっても全然改善してないって文句言ってる人もいるけどね．" userName="ttoinou" createdAt="2025/05/21 22:07:38" color="">}}




{{<matomeQuote body="AWS BedrockとかGCP Vertex AIだと、Claude 3.5 Sonnet V2って呼ばれてるやつね．" userName="Deathmax" createdAt="2025/05/21 21:13:09" color="">}}




{{<matomeQuote body="だからAnthropicは次のリリースを3.7 Sonnetにしたんだよ．コミュニティの一部ではもう3.5v2のことを3.6って呼んでたからね．" userName="simonw" createdAt="2025/05/21 23:09:27" color="#ff33a1">}}




{{<matomeQuote body="Anthropicは3.5→3.5（new）→3.7と来て、コミュニティで3.6と呼ばれてたからスキップしたのかもね．3.5（new）／3.6は3.5.1とも呼ばれるよ．紛らわしいのは、3.5が旧版か新版か不明なことが多いこと．最近の3.5は大体3.6／3.5.1／3.5（new）を指してて混乱するね．" userName="NiloCK" createdAt="2025/05/22 12:13:36" color="#ff5733">}}




{{<matomeQuote body="それは違うよ．俺はいつもv3.6って呼んでたし、そうしてる人たくさん見たことあるよ．だから彼らの次のモデルはv3.7って名前になったんだ．" userName="skerit" createdAt="2025/05/22 15:03:54" color="#785bff">}}




{{<matomeQuote body="昔のClaude 3.6 Sonnetのこと？" userName="moffkalast" createdAt="2025/05/22 11:42:12" color="">}}




{{<matomeQuote body="Mistralがまたちゃんとしたオープンソースモデル出してくれて嬉しいね。Mistralの最近のモデルマジやばいよ。Le Chat Proお金払って使ってるけど、マジ良い。Mistral Smallも超使える。あとMistral連携でスタートアップ作ってるし。" userName="dismalaf" createdAt="2025/05/21 19:02:28" color="#785bff">}}




{{<matomeQuote body="Mistral Small 3.1もApacheライセンスだよ。" userName="gunalx" createdAt="2025/05/22 14:51:29" color="#785bff">}}




{{<matomeQuote body="Apache 2.0ライセンスなのがすごくいいね、つまり分かりやすいライセンスってこと。たくさんの条件がある”open weight”ライセンスと違ってさ。" userName="solomatov" createdAt="2025/05/21 17:38:55" color="#ff5c5c">}}




{{<matomeQuote body="倫理より法的なリスクが重要だと思う。もしモデルをファインチューニングしたら、派生モデル全部同じライセンスになるはず。Gが禁止事項ポリシーを変えたり、利用規約にヤバいこと追加したりしたら、アプリが使えなくなる可能性もあるんじゃないかな。あくまで俺の理解だけどね。（弁護士じゃないよ）。" userName="solomatov" createdAt="2025/05/21 18:26:23" color="#ff5733">}}




{{<matomeQuote body="モデルのプロテクションとか剥がすの結構簡単だし、そもそも非倫理的なことやってる奴はライセンスなんて気にしてないと思うけどね。" userName="Havoc" createdAt="2025/05/21 19:52:12" color="">}}




{{<matomeQuote body="何を言いたいのかよくわかんないんだけど…Devstral使うのはヤバい開発者だけ、とか言いたいの？" userName="orbisvicis" createdAt="2025/05/21 18:31:23" color="">}}




{{<matomeQuote body="今日知ったんだけど、オープンソースって非倫理的な目的でしか使われないらしいね。" userName="portaouflop" createdAt="2025/05/21 20:16:25" color="">}}




{{<matomeQuote body="MistralとGemmaの倫理って何が違うの？" userName="simonw" createdAt="2025/05/21 19:15:05" color="">}}




{{<matomeQuote body="Gemmaのオープンモデルはライセンスが厳しいけど、Mistralのオープンモデルはそうじゃない、って言いたかったんだと思うよ。" userName="Philpax" createdAt="2025/05/21 20:01:45" color="#ff5733">}}




{{<matomeQuote body="倫理的かどうかじゃなくて、君のスタートアップにとってのリスクの話だよ。倫理なんてめちゃくちゃ主観的だし、政治で変わることも多いしね。Apacheならモデルは完全に君のものってこと。" userName="dismalaf" createdAt="2025/05/21 18:58:26" color="#ff5733">}}




{{<matomeQuote body="”倫理は政治次第で全部主観”？それは絶対違うってば。倫理には確かにニュアンスとか主観的な部分もあるけど、完全に政治次第で全部主観ってわけじゃないよ。そんな言い方してると、AI搭載の武装ドローン作ってるスタートアップで働いてて、「えー、倫理は主観っすから、問題ないっす」とか言ってそうに聞こえるんだけど。" userName="sofixa" createdAt="2025/05/22 04:29:46" color="">}}




{{<matomeQuote body="＞「倫理は政治次第で全部主観ってわけじゃない」？いや、倫理は完全に主観だよ。「すべき」を正当化するには別の「すべき」が必要だからね。倫理について合意を得るプロセスこそが政治だよ。<br>＞ AIドローン作ってて...に聞こえる？倫理が主観的だと理解してるからって、倫理観がないわけじゃない。倫理の根本的な性質を理解してるだけだよ。" userName="dragonwriter" createdAt="2025/05/22 05:23:52" color="">}}




{{<matomeQuote body="＞「倫理は完全に主観」？それは絶対違うだろ。奴隷を持つこととか、子供を殺すことは倫理的か？いや、客観的に見て違うだろ。" userName="sofixa" createdAt="2025/05/22 06:06:10" color="">}}




{{<matomeQuote body="君、道徳（morals）と倫理（ethics）を混同してるよ。倫理は客観的な分析フレームワーク。道徳が主観的なんだ。君が挙げた例が客観的に「イエス」と評価される倫理フレームワークなんてたくさんあるんだよ。" userName="sneak" createdAt="2025/05/22 07:02:43" color="">}}




{{<matomeQuote body="＞ AIドローン作ってて...に聞こえる？人を殺すのはいつも間違いか？イエスなら、自分を守るのも間違い？これが主観的って意味だよ。GoogleはUS法に従うから、US政府が急にウクライナ支援は間違いと決めたら、個人的に正しくても問題になるんだ。" userName="dismalaf" createdAt="2025/05/22 16:33:23" color="">}}




{{<matomeQuote body="*24GB RAMない人向け。俺は8GB RAMでollamaで動かしてるけど、簡単なタスクはOK。長いコンテキストはAPIがいいかも。*<br>APIより遅いけど、モデルサイズにしては性能いいね。ベンチマークに合わせて調整してそうだけど、使えるかの目安にはなるよ。" userName="johnQdeveloper" createdAt="2025/05/21 23:50:03" color="#38d3d3">}}




{{<matomeQuote body="24GB RAMのビデオカード持ってない人でも、俺は8GB RAMので動かせてるよ<br>何使ってんの？ llama.cppとか？ 12GB card (rtx 4070)のカードあるから試してみたいんだよね。" userName="throwaway314155" createdAt="2025/05/22 04:20:51" color="#ff5733">}}




{{<matomeQuote body="https://ollama.com/library/devstral<br>https://ollama.com/<br>たぶんそれってllama.cppをHTTPとかterminal wrapperにしたやつで、ちょっとmodifications/forkされてるだけだと思うよ。" userName="johnQdeveloper" createdAt="2025/05/22 04:23:12" color="#ff5733">}}




{{<matomeQuote body="ollamaってcpu offloadingに対応してる？" userName="throwaway314155" createdAt="2025/05/22 04:38:19" color="">}}




{{<matomeQuote body="https://www.reddit.com/r/ollama/comments/1df757o/high_cost_o...<br>https://github.com/ollama/ollama/issues/8291<br>うん、Yes。" userName="johnQdeveloper" createdAt="2025/05/22 05:49:12" color="#38d3d3">}}




{{<matomeQuote body="公開されてるbenchmarksは信じられないな。<br>まだ試してないけど、俺がtestedしたMistralのevery modelはbenchmarksでLlamaと同じくらいbottomの方だったんだよね。<br>real life performanceがthey’re claimingみたいなanythingだったらvery surprisedだよ。" userName="CSMastermind" createdAt="2025/05/21 19:22:52" color="#ff33a1">}}




{{<matomeQuote body="最近All Handsのother modelsでworkedしたけど、あれってMistralベースだと思うんだ。<br>My general impression so farはClaude 3.7 Sonnetにはquite up toじゃないけど、they’re quite good。 ”AI pair coding assistant” としてはMore than adequateだし、stepsにbreak thingsすればlarger architectural workにもsuitableだよ。" userName="Ancapistani" createdAt="2025/05/21 21:31:56" color="#ff5733">}}




{{<matomeQuote body="俺も信じられないな。imo自分でtest theseするhave toだよマジで。<br>exampleだとQwen3はfor me step backwardsだし。あとGLM4はみんな”only good at html”despite my current goto。<br>70b cogito modelもfor me really goodだけどdoesn’t get attentionなんだよね。<br>projects / languages we’re using depend onだと思う。<br>Still looking forward to this one though 😊" userName="idonotknowwhy" createdAt="2025/05/21 23:56:46" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="y’all localでrun these thingsするwhen what hardware使ってんの？ this purposeでFramework desktop［０］pre ordering thinkingだったんだけど、run itできるdecent laptop (ideally Linux)でもwouldn’t mindなんだよね。<br>［０］ https://frame.work/desktop" userName="christophilus" createdAt="2025/05/22 02:36:31" color="#ff5733">}}




{{<matomeQuote body="All Hands AIにLMStudio使ってMacBookでDevstral動かす手順があるよ：https://docs.all-hands.dev/modules/usage/llms/local-llms#ser…<br>同じページにGPUでVLLM使う手順もあるけど、量子化は非対応みたい。だから複数GPUが必要かもね、「少なくとも2GPU」って書いてあるし。" userName="tripplyons" createdAt="2025/05/22 02:42:37" color="#785bff">}}




{{<matomeQuote body="M4 Max 128GB RAMでLM Studio (MLX)、128kコンテキスト全部で動かしたよ。上手くいくけど、最初のプロンプト処理に1分かかるのが長いね。これ目的ならノートPCより出る予定のAMD 32GB GPU待った方がいい。M4 Maxでも発熱ヤバく、バッテリーもすぐ減るから常時給電いるくらい。がっつり使うには遅く感じるかな。" userName="zackify" createdAt="2025/05/22 03:30:37" color="#ff5c5c">}}




{{<matomeQuote body="トークン毎秒の速度も測ったの？" userName="bicepjai" createdAt="2025/05/28 03:59:25" color="">}}




{{<matomeQuote body="うん、M4 Max Studio 128GB RAM持ってるよ。Q8 GGUFなら131kコンテキストでもメモリに収まった。メモリ使用率45%くらいで余裕だったよ笑" userName="pram" createdAt="2025/05/22 04:34:12" color="#ff5733">}}




{{<matomeQuote body="二人とも秒間何トークン出てるか教えて？" userName="discordance" createdAt="2025/05/22 15:12:51" color="">}}




{{<matomeQuote body="AMDはちょっとニッチな道になりそうだよ。Nvidiaの方が多分成功しやすいし、面倒な設定で悩むことも少ないと思う。" userName="klooney" createdAt="2025/05/22 03:01:33" color="">}}




{{<matomeQuote body="Nvidiaって4090を何枚も繋げずに64GB以上のVRAM積める統合メモリみたいなオプションある？ローカルLLMにはApple Siliconの共有メモリがマジで価値を示したよね。生のGPUパワーは劣っても、中くらいのモデルを読み込めること自体が超プラスだよ。" userName="lolinder" createdAt="2025/05/22 03:07:20" color="">}}




{{<matomeQuote body="完全には無いけど、Ada 6000なら持ってる。あれ48GBあるよ。" userName="kookamamie" createdAt="2025/05/22 04:29:54" color="">}}




{{<matomeQuote body="RTX Pro 6000 Blackwellは96GB VRAM積んでるよ。" userName="karolist" createdAt="2025/05/22 05:03:48" color="">}}




{{<matomeQuote body="そのカードだけでFramework Desktop本体の4倍くらいの値段するよ。仕事用なら多分それだけの価値あるだろうけど、enthusiast向けとしては明らかにベストってわけじゃないね。" userName="lolinder" createdAt="2025/05/22 12:43:07" color="">}}




{{<matomeQuote body="だいたい選択肢は、グラボいくつか積んだデスクトップか、Apple Silicon搭載のMacだと思うよ。" userName="snitty" createdAt="2025/05/22 02:41:02" color="">}}




{{<matomeQuote body="へぇ、LLamaIndexでツールいじってたら偶然このDevstral見つけたんだ。自分で作ったエージェントコーディングシステムで使ってみようとしたんだけど、”ツールがない”って言われて全然ダメ。プロンプトいじっても動かないし。他のモデルは問題なくツール使えてるのに、なんでだろ。" userName="ddtaylor" createdAt="2025/05/21 15:19:15" color="#785bff">}}




{{<matomeQuote body="ツールスキーマをちゃんと使わせたいならconstrained outputsってのを使えばいいよ。ちょっと手助けすれば、どんなモデルでも使えるようになるはず。" userName="tough" createdAt="2025/05/21 19:08:26" color="">}}




{{<matomeQuote body="もしこのエージェントやモデルが本当に期待通りなら、EUが開発費を出してあげてもいいかもね。そしたらMistralは本来やりたいことに集中できるだろうし、俺たちにとってもEUがお金を賢く使ったってことになるんじゃない？" userName="qwertox" createdAt="2025/05/21 19:51:40" color="">}}




{{<matomeQuote body="＞EUが開発費出す件についてね、俺の税金がApacheとかMITライセンスのモデルに使われるなら別に構わないよ。代替手段を維持して、誰もがフェアにいられるようにするためにもね。一部の巨大企業がこれを独占しないようにするのは大事だと思う。" userName="Havoc" createdAt="2025/05/21 19:54:48" color="">}}




{{<matomeQuote body="結構確かな情報だけど、EUってAIスタートアップが使えるスパコンに資金出してるはずだよ。で、Mistralはそのプログラムのパートナーになってる。" userName="dismalaf" createdAt="2025/05/21 22:11:51" color="">}}




{{<matomeQuote body="リンク貼っとくね。パリ南部に建設中のEclairionっていうデータセンター、主にMistralが使うんだけど、ここ公的資金が入ってるんだって（地域から３Mユーロとか）。" userName="jgtrosh" createdAt="2025/05/22 06:55:23" color="#ff33a1">}}




{{<matomeQuote body="俺のLLM触った感じだと、ベンチマークの数値って現実からどんどん離れていってる気がするな、少なくとも俺の周りでは。このモデルをClojureの問題でいくつか試したら、qwen3:30b-a3b-q4_K_Mより全然ダメだったんだよね。これどう解釈したらいいか分かんないけど、もうベンチマークはそんなに信用してない。" userName="jwr" createdAt="2025/05/22 05:29:47" color="#785bff">}}




{{<matomeQuote body="どうやってテストしたの？これって普通のコーディングモデル（関数作成とか）と違って、agenticなフローやツール利用に特化してファインチューニングされてるんだよ。gitチケットみたいな大まかなタスクを渡して、ツールを使いながら問題を解く感じ。Open Handsとかと一緒に使うのがおすすめ。テストするときはこの点を考慮した方がいいと思うな。" userName="NitpickLawyer" createdAt="2025/05/22 06:18:06" color="#45d325">}}




{{<matomeQuote body="ツール呼び出しは試してないんだ。いつもは２つのテストケースを使ってる。１つは正確に書くのが難しい浮動小数点比較関数。もう１つはClojureのasync関数の複雑な仕様のコードレビュー。モデルにコードの改善点を言わせるテストだよ。大きいモデルは結構できるけど、小さいモデルは難しいみたい。" userName="jwr" createdAt="2025/05/23 05:54:02" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
