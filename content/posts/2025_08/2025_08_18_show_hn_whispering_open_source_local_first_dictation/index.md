+++
date = '2025-08-18T00:00:00'
months = '2025/08'
draft = false
title = 'Whispering爆誕！データは完全ローカル、オープンソースで信頼性抜群の音声入力アプリが登場'
tags = ["音声認識", "オープンソース", "データプライバシー", "生産性向上", "AI"]
featureimage = 'thumbnails/color2.jpg'
+++

> Whispering爆誕！データは完全ローカル、オープンソースで信頼性抜群の音声入力アプリが登場

引用元：[https://news.ycombinator.com/item?id=44942731](https://news.ycombinator.com/item?id=44942731)




{{<matomeQuote body="Hey HN！Whispering作ったBradenだよ。データが不透明な音声入力ツールに不満があったから、オープンソースでローカルファーストな「Whispering」を作ったんだ。データはデバイスに保存され、透明性バツグンだよ。有料ツールから乗り換えたし、ハンズフリーやAI変換もできる。Epicenterっていう大きいプロジェクトの一部で、将来的には全部のアプリがオープンソースでローカルファーストで連携するようにしたいな。YCにも採択されたから、これでOSS開発を支援するつもり。フィードバックちょうだい！GitHub: https://github.com/epicenter-so/epicenter Discord: https://go.epicenter.so/discord" userName="braden-w" createdAt="2025/08/18 16:52:29" color="#ff33a1">}}




{{<matomeQuote body="Linuxでの音声入力設定、ちょっと手作りだけどめちゃくちゃ使えるやつ、俺の紹介するね！キー押したら録音開始、離したらwhisper.cppで文字起こしして、dotoolで入力するスクリプトだよ。`whisper.cpp`の`large-v3-turbo-q8_0`モデルの品質と速さにマジで感動してる。NVIDIAモデルもggmlに対応してくれたら嬉しいな。" userName="pstroqaty" createdAt="2025/08/19 07:57:38" color="#785bff">}}




{{<matomeQuote body="GitHub開く前に聞きたいんだけど、これWindowsで動く？今までのWhisperの類似アプリはWindowsだと動かないか、性能が悪いのが多かったんだよね。俺は3090積んだWindowsデスクトップでWhisperとかLLM動かしてるけど、`openai-whisper`だと`q8_0`モデルが使えなくてTritonコアのエラーが出るんだ。1000時間以上は音声処理してきたから、詳しいんだ。" userName="genewitch" createdAt="2025/08/19 15:30:37" color="">}}




{{<matomeQuote body="この手の最新技術を追いかけるなら、やっぱLinux（かMac）使うべきだよ。Windowsに情報が降りてくるのはいつも遅いからね。" userName="generalizations" createdAt="2025/08/19 17:41:10" color="">}}




{{<matomeQuote body="こういうソフトウェア、作るのも使うのも大好きだわ。Upton Sinclairの「給料が理解しないことに依存してるとき、人に何かを理解させるのは難しい！」って名言、まさにって感じだよね。「アプリは大げさである必要ない」っていうのがポイント。結局、機能はいくつかFOSSプロジェクトをbashスクリプトで繋げれば十分。Sucklessの人たちを昔は過激派だと思ってたけど、彼らやUnixの先人たちが正しくて、プレーンテキストが悟りの道だって最近は思うようになったよ。" userName="Y_Y" createdAt="2025/08/19 15:58:05" color="#45d325">}}




{{<matomeQuote body="ローカルでParakeetモデルは使える？俺はMacWhisperユーザーなんだけど、ParakeetはWhisperよりオンデバイスの文字起こしがめちゃくちゃ良くて速いんだよ。MacWhisperとParakeetの「push-to-transcribe」機能の組み合わせは、まさに魔法みたいだね。" userName="wkcheng" createdAt="2025/08/18 19:03:53" color="">}}




{{<matomeQuote body="まだParakeetは対応してないけど、俺も使いたいんだ！Parakeetはめちゃくちゃすごい（リーダーボードの結果も見たよ）。今の予定は、まず`whisper.cpp`の統合を安定させて、その後にParakeetのサポートを追加するつもり。誰かコネクタのPRを手伝ってくれたら、最高に嬉しいな。" userName="braden-w" createdAt="2025/08/18 23:59:48" color="#45d325">}}




{{<matomeQuote body="残念だけど、ParakeetはNVIDIA製だから、`whisper.cpp`じゃ動かないと思うよ（俺の知る限り）。ONNXが必要なんだよね。" userName="Bolwin" createdAt="2025/08/19 01:33:53" color="">}}




{{<matomeQuote body="Parakeetを実装した他のオープンソースプロジェクトがいくつかあるから、チェックしてみて！俺もそのうち自分で実装してみるつもりだよ :D" userName="braden-w" createdAt="2025/08/19 05:15:36" color="">}}




{{<matomeQuote body="Parakeetはすごいね！A100だと3000倍、ノートPCのCPUでも5倍のリアルタイム処理ができるし、Whisper-large-v3より正確なんだよ（https://huggingface.co/spaces/hf-audio/open_asr_leaderboard）。NeMoはちょっと使いにくいけど、MacでMacWhisper経由で動くのは驚きだわ。" userName="daemonologist" createdAt="2025/08/18 21:45:00" color="#ff33a1">}}




{{<matomeQuote body="うん、ParakeetはM1 MacWhisperでサクサク動くよ。Whisperより録音の文字起こしが10倍は速いし、精度もいい感じ。モデルが超高速だから、プッシュ・トゥ・トークでの音声入力もめちゃくちゃスムーズ。英語を話すならParakeetにデメリットは全く感じないね。" userName="wkcheng" createdAt="2025/08/18 23:40:50" color="#ff5c5c">}}




{{<matomeQuote body="Parakeet v3は対応言語がもっと増えたんだって。MacWhisperと相性バッチリだよ。" userName="SebKba" createdAt="2025/08/20 10:36:27" color="">}}




{{<matomeQuote body="ParakeetとかNvidia NeMoのモデルについてちょっと話がそれるんだけど、PyTorchやTFの実際のアーキテクチャ実装が見つからないんだよね。なんか、全部バイナリからインスタンス化されてるみたいで実験しにくい！もしかして俺が何か見落としてるのかな？誰か.nemoモデルに詳しい人いない？" userName="warangal" createdAt="2025/08/19 06:57:34" color="">}}




{{<matomeQuote body="MacWhisperに+1！機能満載だし、買い切りなのがいいね。開発者も常に改善してくれてるし。" userName="polo" createdAt="2025/08/18 21:35:21" color="">}}




{{<matomeQuote body="オープンソースでローカルファーストなアプリを提唱するEpicenterの理念、素晴らしいね！データをプレーンテキストやSQLiteで保存し、信頼できる共有メモリ上にツールを構築するんだ。TTS経験はないけど、EpicenterがあるからWhisperingから始める。リポジトリにスターしたし、貢献できそうなアプリも考えてみる。公開ありがとう、YC合格おめでとう！:)" userName="chrisweekly" createdAt="2025/08/18 20:15:46" color="#ff5733">}}




{{<matomeQuote body="応援ありがとう！フィードバック本当に嬉しいし、ビジョンに共感してくれて最高だよ。STT/TTSの経験は気にしないで、オープンソースやデータ所有の価値観を共有できる人と繋がれるのが素晴らしいんだ :) YCでの時間が実り多くなって、他のOSS開発者へのサポートも増やせるように頑張るね。これからもよろしく！" userName="braden-w" createdAt="2025/08/19 05:13:22" color="#785bff">}}




{{<matomeQuote body="ここではSTT（Speech-to-Text）の話をしてるんだと思うよ、TTSじゃないね。" userName="sebastiennight" createdAt="2025/08/19 03:02:08" color="">}}




{{<matomeQuote body="おっと！全くその通り、それ言いたかったんだ。" userName="chrisweekly" createdAt="2025/08/19 11:27:54" color="">}}




{{<matomeQuote body="もしクラウド版も欲しければ、AgentDB APIを使ってアップロードして、SQLの実行場所を変えるだけでいけるよ。" userName="spullara" createdAt="2025/08/18 21:17:21" color="#ff5c5c">}}




{{<matomeQuote body="それ良いアイデアだね…知識ベース全体をgitリポジトリで管理して、その上で構築すればいいんだよ。" userName="dev0p" createdAt="2025/08/19 09:06:20" color="">}}




{{<matomeQuote body="今朝リポジトリをチェックしてる人へ、今Whisper C++サポートを追加するリリース作業中なんだ！<br>https://github.com/epicenter-so/epicenter/pull/655<br>これがプッシュされたら、もっと広範囲なローカルトランスクリプションがサポートされるよ。あと少し修正するだけ :)" userName="braden-w" createdAt="2025/08/18 18:17:33" color="#785bff">}}




{{<matomeQuote body="YCに入ったって言ってたけど、すべてオープンソースでローカルだと、プロジェクトの収益化はどうするの？" userName="teiferer" createdAt="2025/08/19 05:47:03" color="#ff33a1">}}




{{<matomeQuote body="＞基本的にローカルファーストなオープンソースソフトウェアに夢中なんだ。<br>みんなそうあるべきだよね。" userName="marcodiego" createdAt="2025/08/18 20:24:29" color="">}}




{{<matomeQuote body="Whisperingを1年くらい使ってるけど、PCとの接し方が本当に変わったよ。プログラマブルなホットキーがあるマウスやキーボードを買って、Whisperingのショートカットを使ってるんだ。もう普通のタイピングには戻れないよ、めちゃくちゃ非効率に感じる。<br>たくさんの努力、本当にありがとう！" userName="dumbmrblah" createdAt="2025/08/18 18:48:08" color="#ff5c5c">}}




{{<matomeQuote body="サポート本当にありがとう！すごく嬉しいよ :) 役に立ってるって聞いてよかった、何か問題があったらいつでも連絡してね！" userName="braden-w" createdAt="2025/08/19 04:58:58" color="#ff5c5c">}}




{{<matomeQuote body="前からディクテーションに興味はあるけど、音声は全部ローカルで処理したいんだ。FUTO Keyboardのモデルとか試したけど、まだ完璧じゃない感じがする。<br>思考の流れからまともなコンテンツが作れないのが不満。モデルが間や「うーん」を除去できないし、言い間違い修正も苦手なんだ。<br>この課題がPCやスマホで動くオープンモデルで解決されるといいな。もっと高性能なモデルや良いアプリってあるのかな？<br>とりあえず不便だけどタイピングし続けるよ。" userName="Tmpod" createdAt="2025/08/18 23:44:44" color="#ff5c5c">}}




{{<matomeQuote body="Whisperって試した？オープンウェイトだよ。このアプリの「変換」機能は、LLMでテキストをクリーンアップするんだ。お金はかかるけど、フィラーワードの除去だけじゃなく、文脈を考慮した修正もできるはずだよ。" userName="hephaes7us" createdAt="2025/08/19 02:06:36" color="#785bff">}}




{{<matomeQuote body="今はLLMにテキストを流してクリーンアップするのが一番みたい。Whisperingもそれをサポートしてるよ。最近の転写モデルは自分で修正する機能が弱くて、Whisperのプロンプト機能もイマイチなんだ。たぶん、モデルを軽量で高性能に保つための設計なんだろうね。" userName="braden-w" createdAt="2025/08/19 05:23:20" color="#ff33a1">}}




{{<matomeQuote body="「手助けしようとしている」って言ってるけど、それって今もうできるの？それとも、これから実装される機能なの？" userName="_345" createdAt="2025/08/19 05:34:35" color="">}}




{{<matomeQuote body="共有ありがとう！最高だね！このモデルって子供の話し声でも使えるかな？教育現場ではプライバシー重視のローカルモデルがすごく役立つけど、Whisperは子供の声が苦手だって聞いたんだよね。" userName="glial" createdAt="2025/08/18 18:48:47" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ありがとう！その通り、Whisperは若い声が苦手だと思う。他のモデルは試してないけど、子供の声は素晴らしいユースケースだね（教育でプライバシーは超重要だし）。Hypernote! (https://hyprnote.com/)も見てみて！OWhisper (https://docs.hyprnote.com/owhisper/what-is-this)みたいに、モデルの選択肢を増やしてるかもよ。" userName="braden-w" createdAt="2025/08/19 00:06:05" color="#ff5733">}}




{{<matomeQuote body="シェアありがとう！LLMで自然言語からコードを作れるようになって、文字起こしがすごく便利になったんだ。私のワークフローも君と一緒だよ。OS統合には複雑な思いがあるけど、君のアプリは色々な可能性を開いてくれるね！僕はUSB-HIDフットペダルでプッシュ・トゥ・トランスクライブを試してるんだけど、アプリなら転写モデルにコンテキストを注入したり、画面上の情報を使ったりできるのはすごい。あと、別のキーで、すぐに必要ないメモをノートファイルに直接追加できる機能も欲しいな。epicenterの考え方に感謝するよ、これからも注目するね。" userName="hephaes7us" createdAt="2025/08/18 23:09:00" color="#ff33a1">}}




{{<matomeQuote body="サポートありがとう、OSレベルの統合には僕も同感だよ。だって、オープンソースでコードが公開されてないと、どんなアプリも信頼できないからね！" userName="braden-w" createdAt="2025/08/19 05:28:58" color="#ff5733">}}




{{<matomeQuote body="もしもっと知りたかったら、CursorlessとかTalonVoice、その辺りのツールを調べてみて。実際にコードを音声入力してるけど、かなりスマートな方法でやってるから。" userName="NDxTreme" createdAt="2025/08/19 02:41:42" color="#45d325">}}




{{<matomeQuote body="これってVoiceInkとどう違うの？VoiceInkもオープンソースで前からあるし、君のアプリの機能全部持ってるみたいだけど？ https://github.com/Beingpax/VoiceInk" userName="michael-sumner" createdAt="2025/08/18 20:02:52" color="#38d3d3">}}




{{<matomeQuote body="すぐにわかる違いは、VoiceInkがmacOS専用なのに、WhisperingはmacOSだけじゃなくLinuxとWindowsもサポートしてるってことだよ。" userName="phainopepla2" createdAt="2025/08/18 20:41:36" color="#785bff">}}




{{<matomeQuote body="VoiceInk（買い切り）とWisprFlow（サブスク）が、今のお気に入りディクテーションアプリなんだ。Whisperingも見たけど、UXや設定の分かりやすさではVoiceInkがずっと優れてるね。だからVoiceInkはもっと注目されるべきだよ。<br>ディクテーションアプリには、速さや精度以外にも大事なことがたくさんあるんだ。例えば、録音トグルショートカットの柔軟性、録音中の視覚的なアイコン表示、クリップボードの扱い方（録音中にコピーするか？出力後にクリアするか？）とかね。VoiceInkはこれらの点ですごく良い感じだから、WisprFlowのサブスクはもうすぐ解約できそうだ！" userName="d4rkp4ttern" createdAt="2025/08/19 15:11:16" color="#ff5c5c">}}




{{<matomeQuote body="VoiceInk、本当に好き！<br>Whisperingのデベロッパーさんへ：”右シフト”をトグルに設定できますか？あと、VoiceInkみたいに、<br>– 短い右シフトの押し込み → 録音開始、もう一度短く押して停止<br>– または ”長い右シフトの押し込み”（例えば0.5秒以上） → 録音開始、右シフトを離すと停止<br>こんな感じだとすごく便利だよ。<br>もう一つすごくクールなのは、VoiceInkみたいな ”ミニレコーダー” が画面にポップアップして、録音終了後に現在の文字起こしと ”変換” アクションを表示して、どれを適用するか（または複数）選べるようにしてほしいな。そして毎回、その結果をクリップボードに貼り付けるんだ。" userName="oulipo" createdAt="2025/08/18 21:17:22" color="#45d325">}}




{{<matomeQuote body="関連情報だけど、ちょっと耳寄りな話。<br>俺は100%ローカルでオフラインの文字起こしにこれをしばらく使ってるけど、めっちゃ良いよ！<br>https://github.com/pluja/whishper" userName="tummler" createdAt="2025/08/18 20:11:09" color="#785bff">}}




{{<matomeQuote body="おお、これ教えてくれてマジありがとう！スレッドに入れてくれて感謝！他のオープンソースプロジェクトを見るのっていつも楽しいね！" userName="braden-w" createdAt="2025/08/19 05:26:44" color="">}}




{{<matomeQuote body="他の似たプロジェクトのコメントでもよく言われてるけど、音声ディクテーションをタイピングの代わりに使う時の問題の一つは、リアルタイムでの視覚的な表示がないことなんだ。文字を打つ時って、すぐにテキストが見えるから思考が途切れないんだけど（特に長い文章の時ね）。でもディクテーションだと、遅延があったり、ディクテーションが終わってからじゃないと表示されないから、書くほど快適じゃないんだよね。ついでに言うと、多くの人が”書きながら考える”タイプだけど、ディクテーションだとその体験はできないんだ。<br>ディクテーションをよく使う人だと、そのうち慣れてくるのかな？" userName="divan" createdAt="2025/08/19 08:12:10" color="#ff5733">}}




{{<matomeQuote body="ディクテーションってまだ使い道があると思うよ。俺にとっては、脚本を紙に落とし込むのに最高の手段なんだ。タイピングは速いけど、考えて話す方がもっと速いからね。話したいストーリーやビデオの思考の流れを、飛び飛びでも気にせず録音するんだ。意識の流れみたいにね。その後で時間をかけて編集したり、順序を整えたり、きれいにする。これが、ただ書くよりもずっと速いんだ。<br>俺はマルチプラットフォームでWhisperがめっちゃうまく動くwhisperfileを使ってるよ。<br>https://huggingface.co/Mozilla/whisperfile" userName="archerx" createdAt="2025/08/19 08:24:44" color="#ff5c5c">}}




{{<matomeQuote body="ディクテーションがすごく理にかなってる状況ってたくさんあるよ。俺の周りだと、医者はみんなレコーダー（たいていフットペダル付き）に話して、それを看護師が文字起こししてるんだ。だって、患者さんを診察中にタイピングするのは集中を妨げるし、衛生的じゃないからね。一部は機械文字起こしを使い始めてるけど、クラウドだとプライバシーやセキュリティがひどいんだ。「GDPR認定」とか言っても信用できないしね。だからローカルでできるオプションがあるのは最高だよ。<br>同様に、俺は物理的な作業、例えばハードウェアのリバースエンジニアリングでテーブルが分解した電子機器でいっぱいとか、慎重にプローブを持ってる時なんかにディクテーションを使ってるよ。「プローブYにXボルト」って書くためにいちいち手を止めてたら作業が遅れちゃうからね。" userName="franga2000" createdAt="2025/08/19 11:38:56" color="#ff33a1">}}




{{<matomeQuote body="めっちゃ良いね！<br>OsX向けだと、VoiceInkってのもあって、これも似ててオープンソースだよ。<br>https://github.com/Beingpax/VoiceInk/" userName="oulipo" createdAt="2025/08/18 21:14:15" color="#785bff">}}




{{<matomeQuote body="すごく似てて、これもちゃんと動くよ。APIキーは自分で用意するか、ローカルのWhisperでも使えるみたい。" userName="jiehong" createdAt="2025/08/18 21:22:48" color="">}}




{{<matomeQuote body="おお、これ教えてくれてマジありがとう！また別のオープンソースプロジェクトがあって最高だね！彼らのParakeetの実装から学ぶこといっぱいありそう！" userName="braden-w" createdAt="2025/08/19 05:24:39" color="">}}




{{<matomeQuote body="複数話者認識ツールを見つけたいな。1対1のセッションを自動で文字起こしして、それをLLMに食わせて「えーと」みたいな無駄な言葉を消したり、文脈を考慮したスペルチェックをしたいんだ。LLMの部分は簡単そうだけど、話者認識って実用レベルなのかな？" userName="mrgaro" createdAt="2025/08/19 09:39:09" color="#ff33a1">}}




{{<matomeQuote body="話者分離（Speaker Diarization）ってのが、君が探してるものだよ。今一番人気なのはpyannote.audioだね。いつかWhisperモデルと組み合わせて文字起こしに使おうと思ってるんだけど、まだ時間が取れてないんだ。" userName="torstenvl" createdAt="2025/08/19 09:55:30" color="#38d3d3">}}




{{<matomeQuote body="ちょっと宣伝させてくれ—speechischeap.comを見てみてよ。話者分離のパイプラインを3ヶ月かけて完璧にしたから、きっと満足してもらえると思うよ。" userName="ilyakaminsky" createdAt="2025/08/19 12:22:13" color="">}}




{{<matomeQuote body="これって、色々な言語でどのくらいうまく動くの？" userName="diamondage" createdAt="2025/08/19 20:14:06" color="">}}




{{<matomeQuote body="このソフトは最高だよ。今年に入ってから毎日使ってる。ChatGPTやClaudeのデスクトップ版の音声入力に不満があって使い始めたんだ。音声入力はタイピングよりずっと速いし、文章を考える時の悩みも減るね。マウスのサイドボタンに機能を割り当ててるけど、自動ペーストはイマイチ。タスクバーアイコンがないから、録音中かどうかわからなくなるのは困るな。変換機能は良いけど、LLMがたまに質問に答えちゃうのは何とかしたいな。" userName="PickledJesus" createdAt="2025/08/19 10:32:40" color="#ff5733">}}




{{<matomeQuote body="サポートありがとう！年初から使ってくれてるなんて嬉しいよ。変換プロンプトの件は全く同感。特に指示したプロンプトを整形する時、たまに変換モデルがそれを実行しちゃうんだよね。自動ペーストとタスクバーアイコンについては、将来的に復活させるようにするね。タスクバーの進捗は、ここhttps://github.com/epicenter-so/epicenter/issues/607で確認できるよ。" userName="braden-w" createdAt="2025/08/20 16:38:26" color="#45d325">}}




{{<matomeQuote body="いいね！俺も最近、ローカルでの文字起こしに興味を持ち始めたところだよ。Deepgram Listen APIの互換性を追加すれば、DeepgramかOWhisper経由でライブトランスクリプションができるようになるんじゃないかな: https://news.ycombinator.com/item?id=44901853 (まだDeepgram JS SDKを動かすのはできてないけど、メンテナーからの返答待ちだ)" userName="solarkraft" createdAt="2025/08/18 18:07:57" color="#ff33a1">}}




{{<matomeQuote body="確認してくれてありがとう！偶然にも、それ、今進行中なんだ: https://github.com/epicenter-so/epicenter/pull/661 今、FFMPEG統合（OWhisperにはすごく特定のフォーマットのファイルが必要なんだ）の大規模リリース作業の真っ最中だけど、その後にこの機能を追加できたらと思ってるよ！" userName="braden-w" createdAt="2025/08/18 18:14:51" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと混乱してるんだけど。記事にはデータは全てデバイスに残るって書いてあって、ローカルファーストを強調してるのに、デモビデオの最初のステップが外部サービスのアクセストークン設定じゃん？GroqとかOpenAIとかが実際の文字起こしをしてて、その結果だけがデバイスに残るってこと？記事の説明とは全然違うんだけど。" userName="Aachen" createdAt="2025/08/18 21:52:09" color="#785bff">}}




{{<matomeQuote body="Aachenさん、指摘ありがとう。もっとしっかり説明するべきだったね。このアプリは、外部API（Groq、OpenAIなど）と、最近追加されたローカル転写（Whisper.cpp、OWhisper、Speachesなど）の両方をサポートしてるんだ。ローカル転写は、デバイスから一切データが出ないから安心してね。Leftiumさんが言ってたように、ローカルファーストのWhisper C++実装は、たった数時間前に投稿されたばかりだよ。" userName="braden-w" createdAt="2025/08/18 23:58:09" color="#45d325">}}




{{<matomeQuote body="whisper.cppを使ったローカル転写機能がたった2時間前にリリースされたよ！詳細はここを見てね: https://github.com/epicenter-so/epicenter/releases/tag/v7.3...." userName="Leftium" createdAt="2025/08/18 22:51:50" color="#38d3d3">}}




{{<matomeQuote body="「データは全部デバイスにローカル保存されて、音声は直接選んだクラウドプロバイダ（Groq, OpenAI, ElevenLabsなど）かローカルプロバイダ（Speaches, owhisperなど）に送られる」って書いてあるけど、これはアプリが仲介役じゃなくて、好きなプロバイダを使うかローカルで動かせるってことだね。" userName="IanCal" createdAt="2025/08/18 22:36:28" color="#ff5c5c">}}




{{<matomeQuote body="問題は「データは全部デバイスにローカル保存される」っていう部分が、その後の文と矛盾してることだよ。<br>こう書いたらどうかな？「データは全部デバイスにローカル保存されるよ。ただし、明示的にクラウドプロバイダを音声入力に使うと決めた場合は別だけど。」" userName="bangaladore" createdAt="2025/08/19 00:01:40" color="#ff5c5c">}}




{{<matomeQuote body="素晴らしい修正案だね、投稿を編集できたらよかったんだけど！READMEを更新してこの点を反映させたよ。" userName="braden-w" createdAt="2025/08/19 00:09:47" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="もう少し分かりやすくなるように、トップのテキストを修正したよ。指摘してくれてありがとう！" userName="dang" createdAt="2025/08/19 05:40:49" color="">}}




{{<matomeQuote body="リソースを食ったり、独自ベンダーやサービスに依存するのは嫌だなあ。DeepSpeechやVoskはAI以前からローカルでよく動いたけど、設定が大変だった。もっといいバージョンないかな？<br>Coqui STTってのが後継で、Coqui TTSに進化したらしい。Kaldiも古いけどメンテされてるみたいだね。あ、ごめん、この概要記事に色々なオプションが説明されてたよ: https://www.gladia.io/blog/best-open-source-speech-to-text-m... と https://www.gladia.io/blog/thinking-of-using-open-source-whi..." userName="0xbadcafebee" createdAt="2025/08/18 22:22:37" color="#ff5733">}}




{{<matomeQuote body="返信が遅れてごめんね、記事を共有してくれてありがとう！同感だよ。将来もっと良いオープンソースのSTTオプションがたくさん出てくるといいな。" userName="braden-w" createdAt="2025/08/19 05:40:24" color="">}}




{{<matomeQuote body="いろんなオフライン文字起こしアプリを試したけど、やっぱりお気に入りはhttps://whispernotes.appだな。高精度、買い切り、完全にオフライン。UIもシンプルで好き。<br>正直、サブスクアプリにはうんざりだよ。本当にオフラインなら、買い切りモデルであるべきじゃない？ローカル優先の意義はクラウドサービスに依存しないことなんだから、なんでそんな料金体系にするの？<br>とは言え、Whisperingは絶対試すよ。この分野で新しいオープンソースの選択肢、特にwhisper.cppのローカル統合は嬉しいね。" userName="mrbig0" createdAt="2025/08/19 15:27:44" color="#785bff">}}




{{<matomeQuote body="Patreonみたいなケースは全く考えないの？オフラインアプリでも、継続的なメンテナンスやR＆DのためにIAPサブスクリプションはPatreonの形になり得るよ。うんざりするのは分かるけど、そこまで憤慨するのは理解できないな。" userName="wahnfrieden" createdAt="2025/08/19 19:38:54" color="#ff5733">}}




{{<matomeQuote body="他の素晴らしい代替アプリを紹介してくれてありがとう！UIもすごくきれいだね。<br>今、料金は完全に無料だよ。ローカルモデルのサポートを拡大して、完全に無料で使えるように頑張ってる。サブスクリプションはユーザー次第って感じかな。<br>試してくれてありがとう、無理に使う必要はないよ！結局、僕はオープンソースで信頼できるものを作りたいだけなんだ。そして、以前の投稿で話したEpicenterエコシステム、データレイヤーにフィットしてくれるといいなと思ってる。" userName="braden-w" createdAt="2025/08/19 15:37:10" color="#45d325">}}




{{<matomeQuote body="最高の仕事だね！Willow Voiceを使っていたんだけど、これ（Whispering）に乗り換えようと思うよ。こっちはずっと安いし、Willow Voiceはキーを押すだけで録音開始できて、どんなテキスト入力にもコンテキストが反映されるUI/UXが最高なんだ。まだWhisperingはインストールしてないけど、すぐに試してみるね。P.S" userName="Johnny_Bonk" createdAt="2025/08/18 18:17:47" color="">}}




{{<matomeQuote body="素晴らしいね、試してくれてありがとう！また感想を聞かせてね、いつでもメッセージしてくれて大丈夫だよ :) クローズドソースの代替アプリで足りない機能があったら喜んで追加するよ！" userName="braden-w" createdAt="2025/08/18 18:51:37" color="#45d325">}}




{{<matomeQuote body="Whisperingはセマンティックな修正をサポートしてる？ちょっと検索してみたけど、確認できなかったんだ。" userName="newman314" createdAt="2025/08/18 18:29:57" color="">}}




{{<matomeQuote body="うーん、プロンプトはモデルレベル（Whisperがサポートしてる＼prompt＼パラメータは時々機能する）と、変換レベル（書き起こしたテキストをプロンプトに注入して、選んだLLMモデルから出力を得る）の両方でサポートしてるよ。他にセマンティック修正をどう実装できるか不明だけど、今後数週間で機能セットを大幅に拡張するのはいつでも大歓迎だよ！" userName="braden-w" createdAt="2025/08/18 18:46:44" color="#ff5733">}}




{{<matomeQuote body="彼らはWhisperがどう機能するか知らないのかもね。彼らの質問への答えは＼イエス＼だと思うし、プロジェクトで明確な答えが見つからないのは、開発者にとってはあまりにも自明すぎて、あえてドキュメントにするほどじゃないからじゃないかな。Whisperは音声をLLM出力に変換しようとするし、書き起こしは通常、適切な大文字小文字、句読点、そして周囲の文脈に基づいて特定のドメインに沿うことができるよ。" userName="joshred" createdAt="2025/08/18 18:57:06" color="#45d325">}}




{{<matomeQuote body="こんな素晴らしい製品を共有してくれてありがとう。<br>先週、遅い商用製品にうんざりして、自分で似たようなアプリを作ったんだ。ボタン一つで話したことを全て録音して、書き起こしてアプリに入れるローカルで動くやつだよ。あと、母国語で話したことが自動的に英語に翻訳される二つ目のモードを作るのが本当に重要だったんだ。<br>もちろん、フォーマット、カンマや引用符の配置も全部うまくいくよ。<br>macOSのネイティブなディクテーションアプリで、これがまだ実現されていないなんて信じられないね。" userName="g48ywsJk6w48" createdAt="2025/08/19 03:50:57" color="#ff5733">}}




{{<matomeQuote body="応援ありがとう、本当に嬉しいよ！翻訳に役立ったと聞いてよかった。確かに、ネイティブのディクテーションがまだ普及してないのはちょっとおかしいよね。その間、OSSがそのギャップを埋めてくれるよ。" userName="braden-w" createdAt="2025/08/19 05:08:26" color="">}}




{{<matomeQuote body="すごくクールなプロジェクトだね。品質の観点から、どの書き起こしモデルが一番良いと思う？これについては色々な意見を聞くから、開発プロセスで何か発見があったら教えてほしいな。" userName="jnmandal" createdAt="2025/08/18 21:39:06" color="">}}




{{<matomeQuote body="GroqでホストされているWhisperを使うのが大好きだよ。書き起こしがほぼ瞬時だからね。ElevenLabsのScribeモデルも精度が特に優れていて、高品質な書き起こしや、発話者分離とタイムスタンプを得るために手動でファイルをAPIにアップロードするのに使ってるよ（https://elevenlabs.io/app/speech-to-text）。とはいえ、モデルについては一番の専門家じゃないけどね。普段のワークフローでは、ローカルの書き起こしにはWhisper C++を、速度とパフォーマンスの最高のバランスを求めるならGroqを使い分けてるよ。特に機密性の高い作業でなければね。" userName="braden-w" createdAt="2025/08/19 05:19:01" color="#38d3d3">}}




{{<matomeQuote body="いいね。うん、家で自分で作ったシステムをドッグフーディングしてるんだ。whisper.cppを使ってるけど、特に問題はないよ。よくElevenLabsを使うべきだと言われるけど、決断するのに役立つベンチマークを作るのが面倒でさ。" userName="jnmandal" createdAt="2025/08/19 15:58:33" color="">}}




{{<matomeQuote body="音声入力で、話し始めたタイミングでアクティブなテキストボックスにテキストを入れてほしいな。そうすれば、テキストボックスをクリックして話し始め、その間に別の作業もできて便利なんだよね。" userName="ajolly" createdAt="2025/08/21 15:38:06" color="">}}




{{<matomeQuote body="こういうツール、前から気になってたんだ。今はWhisprflowとかAqua Voiceを使ってるけど、自分のAPI keyを使って、もっとローカルに情報を保存したいんだよね。データってどうやって保存されてて、どうやってアクセスできるの？" userName="ayushrodrigues" createdAt="2025/08/18 20:50:15" color="">}}




{{<matomeQuote body="データは今IndexedDBに保存されてて、UIからしかアクセスできないんだ（システムファイルを直接見れば別だけどね）。でもね、将来のアップデートでは、すべての文字起こしはローカルのファイルシステムにMarkdownファイルとして保存される予定だよ。詳細はまた今度話すね！" userName="braden-w" createdAt="2025/08/19 05:00:17" color="#38d3d3">}}




{{<matomeQuote body="ちゃんと理解できてないのかな？ローカルで動かせるって書いてあるけど、API keyなしでどうやって動かすのか全然情報がないんだよね。Whisperモデルはわかるけど、どうすればいいの？オフラインで動かすドキュメントがないよ...。" userName="mrs6969" createdAt="2025/08/18 19:26:11" color="">}}




{{<matomeQuote body="前にもコメントしたんだけど、今Whisper C++のサポートを追加するリリース作業中なんだ！<br>https://github.com/epicenter-so/epicenter/pull/655<br>これが実装されたら、もっとローカルでの文字起こしが便利になるよ。あと少し修正するだけなんだ！" userName="braden-w" createdAt="2025/08/18 19:39:59" color="#45d325">}}




{{<matomeQuote body="すごいね、これでWhisperingは、たぶん使わないだろうなと思ってたものから、日々のワークフローに組み込もうかなと考えるものに変わったよ。素晴らしいツールを本当にありがとう！" userName="ericd" createdAt="2025/08/19 13:08:23" color="">}}




{{<matomeQuote body="完全にローカルで使いたいなら、Speachesを使う必要があるってドキュメントにしっかり書いてあるよ。<br>https://speaches.ai/" userName="rpdillon" createdAt="2025/08/18 19:31:11" color="">}}




{{<matomeQuote body="そんなにはっきり書いてないよ、少し触れてるだけだ。投稿者がローカルファーストについて熱く語ってるのに、オンラインプロバイダーを優先してるのは正直大きな見落としだと思うな。" userName="yunohn" createdAt="2025/08/18 21:21:23" color="">}}




{{<matomeQuote body="うん、ごめん、ドキュメントとデモの更新を怠ってたんだ。この投稿はローカル文字起こし機能がもっと早くリリースされると見込んでたんだけど、バグで時間かかっちゃってね。前はGroqがデフォルトだったけど、それはローカル文字起こしを考え出す前で、とりあえず動くものが欲しかったからなんだ。ドキュメントではローカルをデフォルトにするように変更するよ。" userName="braden-w" createdAt="2025/08/19 00:13:02" color="#ff5c5c">}}




{{<matomeQuote body="うん、ごめんね、返信する前にREADMEのほとんどは読んだんだ。こんなに読むのは珍しいことだってわかってるよ。" userName="rpdillon" createdAt="2025/08/20 13:58:41" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
