+++
date = '2025-08-06T00:00:00'
months = '2025/08'
draft = false
title = 'Kitten TTS登場！わずか25MB、GPU不要で動く驚きのオープンソース音声合成モデル'
tags = ["TTS", "オープンソース", "軽量モデル", "CPU動作", "エッジAI"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Kitten TTS登場！わずか25MB、GPU不要で動く驚きのオープンソース音声合成モデル

引用元：[https://news.ycombinator.com/item?id=44807868](https://news.ycombinator.com/item?id=44807868)




{{<matomeQuote body="Kitten TTSは、オンデバイスアプリケーション向けの小型で表現力豊かなオープンソース音声合成モデルのシリーズだよ。25MB以下でGPU不要、15Mパラメータの最小モデルをプレビュー公開できたのが嬉しいな。このリリースでは、英語の音声合成に対応してて、男性4名、女性4名の計8種類の声が使えるんだ。モデルはint8 + fp16に量子化されてて、実行にはONNXを使ってるよ。Raspberry Piや低価格スマートフォン、ウェアラブルデバイス、ブラウザなど、文字通りどこでも動くように設計されてるんだ！早期ユーザーに、次のリリース（来週には出したいな）で利用可能になる音声のレイテンシと声を体験してもらうために公開したよ。フィードバックがもらえると嬉しいな！ちなみに、このモデルは全データの10%以下でトレーニングされた初期のチェックポイントだよ。既存の表現力豊かなオープンソースモデルは動かすのに大きなGPUが必要で、クラウドの代替は高頻度で使うには高すぎるから、これを作り始めたんだ。エッジデバイスで動くくらい小さいフロンティアオープンソースモデルの必要性を感じたんだよね！" userName="divamgupta" createdAt="2025/08/06 05:04:36" color="#ff33a1">}}




{{<matomeQuote body="Redditに生成された音声サンプルがある投稿があるよ: https://www.reddit.com/r/LocalLLaMA/comments/1mhyzp7/kitten_..." userName="mlboss" createdAt="2025/08/06 02:00:59" color="#45d325">}}




{{<matomeQuote body="Redditの動画、マジやばいよ！25MBでCPUだけでこのクオリティはすごいのに、「OK」って言う人がいるの信じられないわ。" userName="smusamashah" createdAt="2025/08/06 08:22:50" color="#785bff">}}




{{<matomeQuote body="なんか遅いし、アニメに出てくるキャラの声みたいに聞こえるなぁ。" userName="tapper" createdAt="2025/08/06 07:58:11" color="">}}




{{<matomeQuote body="「OK」って言ってる人は、もしかしたら自分で試したのかもね。動画のデモとリリースされた25MBモデルは別物なんじゃないかな。" userName="Retr0id" createdAt="2025/08/06 11:25:30" color="">}}




{{<matomeQuote body="技術的にはすごいけど、使うかどうかは微妙かな。男性の声がわざとらしいニュースキャスターみたいで、女性の声も広告みたいなんだよね。たぶん、トレーニングデータがそんな感じだったのかな、デモの意図的な設定じゃないと思うけど。慣れるかどうかわかんないな。<br>スマホでTTSはよく使うんだけど、最近F-DroidのSherpaTTSって新しいプロジェクトも試したんだ。Huggingfaceからモデルを引っ張ってくるんだけど、めちゃくちゃ重くて（これ動かすと他のアプリが一時停止するんだ）、音はいいんだけど、最初のニュース記事でいきなり1、2回誤読があったんだよ。珍しい言葉とか新しい言葉をどう言うか推測してるから、論理的なルールじゃなくなってるんだね。<br>GoogleとSamsungもデバイスにTTSエンジンをプリインストールしてて、それらは音も機能も問題ないよ。ちょっと単調だけど、いつも同じように発音してくれるから、なんて書いてあるかいつもわかるんだ。<br>Espeak（または-ng）は最悪だけど、30秒くらい注意して聞けば慣れるし、ちゃんと全部理解できるよ。これがベストなオープンソースの選択肢かどうかはわかんないけど（たぶん他にも試すべきものがあるんだろうね）、少なくとも一番信頼できるし、ライセンスの問題なくどんなデバイスにもインストールできるから、何が起きてるか常にわかるよ。" userName="Aachen" createdAt="2025/08/06 11:19:23" color="#ff5c5c">}}




{{<matomeQuote body="これ、Futuramaの声でも学習したの？" userName="KaiserPro" createdAt="2025/08/06 09:15:05" color="">}}




{{<matomeQuote body="色々な種類の声が全部聞ける動画がここにあるよ: https://www.youtube.com/watch?v=60Dy3zKBGQg" userName="seligman99" createdAt="2025/08/06 16:40:17" color="#ff5c5c">}}




{{<matomeQuote body="音声の速さは調整できるから、モデル自体の問題じゃないよ。重要なのは表現力と抑揚で、Kitten TTSはその点espeakよりずっとすごい。このサイズでこのクオリティはマジで驚きだよ。KokoroTTSよりずっとコンパクトだしね。" userName="ricardobeat" createdAt="2025/08/06 08:11:24" color="#38d3d3">}}




{{<matomeQuote body="彼が言ってるのは、英語の吹き替えによくある大げさな演技のことだと思うよ。" userName="dvh" createdAt="2025/08/06 09:32:16" color="">}}




{{<matomeQuote body="デフォルトの声は最悪でデモにはないってさ。RedditユーザーがLimeWireで生成したのがこれだよ→ https://limewire.com/d/28CRH#UPuRLynIi7" userName="darkwater" createdAt="2025/08/06 14:41:05" color="">}}




{{<matomeQuote body="ファミリーガイのモートみたいな声だね。" userName="archon810" createdAt="2025/08/06 18:46:42" color="">}}




{{<matomeQuote body="https://vocaroo.com/1njz1UwwVHCF これ聞くとあまり良くないね。技術的な進歩はすごいし、もっと良くなるかもだけど、現状だと一般向けアプリには使えないよ。" userName="sergiotapia" createdAt="2025/08/06 15:33:10" color="#38d3d3">}}




{{<matomeQuote body="sherpaOnnxを試したいならこれ試してみて→ https://github.com/willwade/tts-wrapper。最近kokoroモデルを入れたから、かなり良いはずだよ。モデルはたくさんあるし、Droidアプリはコールドスタートが苦手なのかもね。" userName="willwade" createdAt="2025/08/06 12:40:09" color="#785bff">}}




{{<matomeQuote body="いいね、ありがとう。あと、最後の男性の声が高くて酔っ払ってるみたいに聞こえるね。" userName="tracker1" createdAt="2025/08/06 23:23:18" color="">}}




{{<matomeQuote body="すごくクリアな声だね。私みたいな英語ネイティブじゃない人には、理解しやすいよ。" userName="Zardoz84" createdAt="2025/08/06 10:17:56" color="">}}




{{<matomeQuote body="声が人工的で耳障りだね。特に男性の声は深みがなくて、最後の声だけは少し深みがあるかな。他はまだ思春期って感じ。どの声も人間っぽくなくてすごくイライラするし、演技してるみたいにも聞こえるよ。" userName="Telemakhos" createdAt="2025/08/06 10:16:44" color="#785bff">}}




{{<matomeQuote body="OverwatchのD.Vaみたいな声がちょっと聞こえたな。" userName="avisser" createdAt="2025/08/06 23:56:46" color="">}}




{{<matomeQuote body="疑問なのは、中国のガチャゲームからデータ盗んだのか、PythonコードにClaude CodeかGemini CLIを使ったのかってことだけ。データに過学習してるから、そのうち消えると思うよ。" userName="numpad0" createdAt="2025/08/06 11:23:04" color="">}}




{{<matomeQuote body="ローカルだと品質がすごく悪いね。" userName="iab" createdAt="2025/08/06 16:11:24" color="">}}




{{<matomeQuote body="プレビューリリースだって言ってたし、正式版が出るまでは判断を保留するよ。" userName="fortyseven" createdAt="2025/08/06 19:16:21" color="">}}




{{<matomeQuote body="ありがとう。正直、どれも普段から聞きたいとは思わないな。" userName="a96" createdAt="2025/08/08 09:17:21" color="">}}




{{<matomeQuote body="モデルはまだトレーニング中なんだ。次のリリースでは品質が上がる予定だよ。これはプレビューリリースだからね :)" userName="divamgupta" createdAt="2025/08/06 20:59:22" color="#45d325">}}




{{<matomeQuote body="AndroidのAPKを試したい人はここからダウンロードできるよ：<br>https://k2-fsa.github.io/sherpa/onnx/tts/apk.html" userName="spookie" createdAt="2025/08/06 21:39:03" color="#38d3d3">}}




{{<matomeQuote body="詳細なフィードバックありがとう！今、フォネマイザを使わないモデルを開発中だよ。" userName="divamgupta" createdAt="2025/08/06 21:15:04" color="#45d325">}}




{{<matomeQuote body="個人的にはRHvoiceもかなり良いと思うな。" userName="bornfreddy" createdAt="2025/08/06 21:00:41" color="">}}




{{<matomeQuote body="これが未来だといいな。オフラインで動く小さなMLモデルが、安価なハードで推論できて、他のデバイスやアプリにも簡単に組み込めるようになること。他のモデルから制御できるようになるのも期待しちゃうね。" userName="nine_k" createdAt="2025/08/06 01:42:51" color="#45d325">}}




{{<matomeQuote body="モデル専用のハードウェアなら、もっと省エネになるはず。理論上は、トランジスタじゃなくて抵抗器だけでニューラルネットワークを動かすチップも設計できるんだ。汎用性はなくてモデルのアップグレードもできないけど、それでも合理的な利用ケースはたくさんあるよ。" userName="WhyNotHugo" createdAt="2025/08/06 08:04:53" color="#ff33a1">}}




{{<matomeQuote body="でも抵抗器って、理論上も熱を出す装置なんだよ。トランジスタは理論上、完璧にオンかオフの状態になれて、そのどちらの状態でも熱を放出しないのと違うね。" userName="amelius" createdAt="2025/08/06 11:56:59" color="#785bff">}}




{{<matomeQuote body="理論上は可能だけど、物理的な”ニューロン”は最悪のアイデアだよ。FFネットの2つの層間の接続数は、各層の重みの積になるから、ルーティングの問題が他の全てを誤差にしちゃうんだ。" userName="regularfry" createdAt="2025/08/07 08:06:44" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="毎日新しいモデルが出てくるのが問題なんだ。だから、一つのモデル専用のチップを作るのは経済的に成り立たないんだよね。" userName="divamgupta" createdAt="2025/08/06 21:02:35" color="#38d3d3">}}




{{<matomeQuote body="AppleはSLMでこれを構想してるみたいだね。例えば、カレンダーイベント管理専用のモデルとか。全人類の知識は要らなくて、カレンダー管理に必要な情報だけあればいいって考え方。" userName="theshrike79" createdAt="2025/08/06 10:47:14" color="#ff5c5c">}}




{{<matomeQuote body="問題は、AppleがみんなにApple製品だけを使わせようとしてるってことだよ。" userName="koolala" createdAt="2025/08/06 17:17:45" color="">}}




{{<matomeQuote body="Googleもみんなに自社製品を使ってほしいと思ってるのと同じさ。それが企業ってもんさ。でも、技術自体は公開されてて、研究も利用できるよ。" userName="theshrike79" createdAt="2025/08/07 05:37:06" color="#ff33a1">}}




{{<matomeQuote body="そうかな？<br>ベースの600ドルのMacと150ドルのApple TVは、市場で簡単に最高の取引の2つだよ。" userName="DrBenCarson" createdAt="2025/08/07 05:58:32" color="">}}




{{<matomeQuote body="僕は将来のApple TVモデルが完全にローカルなLLMマシンになるってまだ賭けてるよ。<br>こうすれば、彼らは自宅にあるデバイスに”LLM”作業の大部分をオフロードできるし、家族のiPhoneやデバイス全部がローカル推論にそれを使える。<br>今のままでもパワフルすぎるんだから、何か役に立つことに使わない手はないよね。" userName="theshrike79" createdAt="2025/08/08 06:34:22" color="">}}




{{<matomeQuote body="うーん。<br>一度だけ払えば（あるいは全く払わなくても）何でも動くモデルかな？<br>それとも、囲い込んで、最も裕福な巨大企業だけが買えるハードウェアを要求するサブスクリプションモデルかな？<br>どっちが勝つか、どうだろうね。" userName="depingus" createdAt="2025/08/06 17:22:36" color="">}}




{{<matomeQuote body="これも僕たちの目標だよ。" userName="divamgupta" createdAt="2025/08/06 21:00:29" color="">}}




{{<matomeQuote body="それ、僕たちのビジョンでもあるんだ！" userName="divamgupta" createdAt="2025/08/06 07:33:14" color="">}}




{{<matomeQuote body="うん、全くその通り。<br>これらの小さなモデルの品質は上がる一方だろうね。" userName="rohan_joshi" createdAt="2025/08/06 07:32:45" color="">}}




{{<matomeQuote body="いくつか簡単なベンチマークをやってみたよ。<br>Ubuntu 24、Razer Blade 16、Intel Core i9-14900HXでのパフォーマンス結果だよ。<br>初期遅延は約315ミリ秒。<br>音声生成速度は短文でリアルタイムの3.35倍、長文で5.50倍だったね。<br>モデルの読み込みは約710ミリ秒で、音声生成は初期遅延を除いてリアルタイムの約5倍の速度だよ。<br>パフォーマンスは音声によっても一貫してたね。" userName="peanut_merchant" createdAt="2025/08/06 14:55:53" color="#ff5c5c">}}




{{<matomeQuote body="ベンチマークをやってくれてありがとうね。<br>今、モデルはまだ最適化されてないんだ。<br>製品向けSDKをリリースする時に、読み込みとかを最適化するつもりだよ。" userName="divamgupta" createdAt="2025/08/06 20:58:12" color="#ff33a1">}}




{{<matomeQuote body="俺のIntel(R) Celeron(R) N4020 CPU、1.10GHzだとインポートやロードに6秒かかるし、テキスト生成は色々な長さのテキストでだいたいリアルタイムの1倍速くらいだったよ。" userName="don-bright" createdAt="2025/08/07 00:08:38" color="#38d3d3">}}




{{<matomeQuote body="俺より先に、俺と同じハードウェアでテストしてくれてサンキュー。" userName="Jotalea" createdAt="2025/08/07 12:24:02" color="">}}




{{<matomeQuote body="Web版はこれだよ！https://clowerweb.github.io/kitten-tts-web-demo/<br>音はまあまあだけど、このサイズにしてはすごいね。" userName="blopker" createdAt="2025/08/06 02:00:17" color="#ff5c5c">}}




{{<matomeQuote body="SF映画で”ロボットの声”をわざと歪めて、”ロボットらしく”聞こえさせるのって変だと思わない？ロボットっぽい、あえて不自然な声でも、多くの場合全然OKだし、むしろ desirable だよね。賢いトースターがBBCのホストみたいに話す必要なんてないし、聞き取りやすければ十分だろ。" userName="nine_k" createdAt="2025/08/06 02:06:10" color="#ff5733">}}




{{<matomeQuote body="これは少なくとも面白いアイデアだね: https://genderlessvoice.com/" userName="roywiggins" createdAt="2025/08/06 02:07:54" color="">}}




{{<matomeQuote body="ロボットっぽい、あえて不自然な声でも全然OK、聞き取りやすければ十分って意見だけど、フォルマントシンセはもう何十年も前からあって、すごく聞き取れるし少ない計算能力で動くんだ。でも、みんなそれを聞きたがらないんだよね。<br>Software Automatic Mouth: https://en.wikipedia.org/wiki/Software_Automatic_Mouth<br>聞いてみて: https://simulationcorner.net/index.php?page=sam" userName="userbinator" createdAt="2025/08/06 05:18:16" color="#45d325">}}




{{<matomeQuote body="うーん、これはちょっと耳障りすぎるな。" userName="saretup" createdAt="2025/08/06 05:52:17" color="">}}




{{<matomeQuote body="デモのテキストを試してみたんだけど、なぜかデモみたいにうまく聞こえないんだよね。<br>もし試したい人がいたらこのテキストでどうぞ:<br>Kitten TTS is an open-source series of tiny and expressive text-to-speech models for on-device applications. Our smallest model is less than 25 megabytes." userName="Retr0id" createdAt="2025/08/06 03:04:08" color="#ff5733">}}




{{<matomeQuote body="それは映画によるよ。AlienシリーズのAshやBishopは、劇的な理由がない限り人間っぽく聞こえるしね。君の意見には同感だよ。俺はいつもMoon+ReaderでGoogle TTSを使ってるんだ（人間が読んだオーディオブックも試したけど、TTSの一貫性の方が好きなんだ）。" userName="incone123" createdAt="2025/08/06 07:01:47" color="#45d325">}}




{{<matomeQuote body="Androidの音声認識エンジンを置き換えるAPKってある？sherpa-onnx試したけど、リアルタイムだと遅すぎたし、オーディオブックを早送りすると特にダメだったよ。" userName="satvikpendem" createdAt="2025/08/06 02:38:58" color="#ff5733">}}




{{<matomeQuote body="これオープンソースじゃないよ。「AccessKeyをPicovoiceのライセンスサーバーで認証するためにインターネット接続が必要…制限を増やしたいならサブスクリプションプランを購入できる」って書いてある。URL: https://github.com/Picovoice/orca#accesskey" userName="gary_0" createdAt="2025/08/06 03:04:17" color="#785bff">}}




{{<matomeQuote body="デモで6文試したらエラー出たけど、3文に減らしたらちゃんと動いたよ。この文字数制限ってモデルのせい？それともデモ版だけの制限なのかな？" userName="bkyan" createdAt="2025/08/06 06:05:25" color="#38d3d3">}}




{{<matomeQuote body="Safariだと動かないみたい。でもChromeでは問題なく動くよ。" userName="belchiorb" createdAt="2025/08/06 07:14:08" color="">}}




{{<matomeQuote body="音声はすごい良い感じ！個人的にはすごく美しく聞こえるんだけど、性別がないって感じではないね。" userName="cosmojg" createdAt="2025/08/06 03:44:26" color="">}}




{{<matomeQuote body="これ探してたんだ。Redditのデモはまあまあだけど、数年前のレベルって感じ。他のTTSサンプルはほとんど聞き取れなかったよ。" userName="nxnsxnbx" createdAt="2025/08/06 05:48:15" color="">}}




{{<matomeQuote body="「音声生成エラー：OrtRun()呼び出し失敗。エラーコード: 2、エラーメッセージ: Expandノード実行中に非ゼロステータスコードが返された。名前:’/bert/Expand’ ステータスメッセージ: invalid expand shape」<br>タイ語だと動かないみたい。" userName="itake" createdAt="2025/08/06 03:52:21" color="#785bff">}}




{{<matomeQuote body="面白いコンセプトだけど、あのサイトって「Top X」みたいなブログスパムばっかりなのなんで？" userName="degamad" createdAt="2025/08/06 04:15:30" color="">}}




{{<matomeQuote body="ここじゃ動かないよ。バックエンドモジュールが404エラーを返してる。<br>URL: https://clowerweb.github.io/node_modules/onnxruntime-web/dis..." userName="quantummagic" createdAt="2025/08/06 02:21:08" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="デモって一番小さいモデル使ってないの？" userName="cortesoft" createdAt="2025/08/06 04:40:48" color="">}}




{{<matomeQuote body="PCだとPythonの依存関係が大変なのに、誰かが自己完結型のJavaScriptコードにパッケージして、モデルをロードしたらオフラインで動くようにしたらしいね。これ、どうやったの？って感じ。" userName="Aardwolf" createdAt="2025/08/06 07:53:22" color="#ff5733">}}




{{<matomeQuote body="これ見てみて。https://github.com/Picovoice/orca/tree/main/demo%2Fandroid" userName="kenarsa" createdAt="2025/08/06 02:46:48" color="#38d3d3">}}




{{<matomeQuote body="ちょっと違うんだよね。リプリーも僕らも、アンドロイドだと明かされるまで分からないってのが大事なんだ。人工物として提示されてないのがポイント。ブレードランナーの”人間よりも人間らしい”も同じ。その曖昧さがないと映画として成り立たないよ。" userName="regularfry" createdAt="2025/08/06 08:53:25" color="#ff33a1">}}




{{<matomeQuote body="個人的には、ソフトウェアや言語モデルからのテキストには、古い合成音声のほうがTTSとして好きなんだよね。" userName="msgodel" createdAt="2025/08/06 10:21:11" color="">}}




{{<matomeQuote body="Qっていう、ジェンダーレスな音声モデルがあったよ。2019年3月のニュースだね。コメントは235件もあったみたい。https://news.ycombinator.com/item?id=19505835" userName="dang" createdAt="2025/08/06 06:00:31" color="#38d3d3">}}




{{<matomeQuote body="フィフス・エレメントのノベライズで、警官がスピーカーを使う時、わざとロボットっぽく話すように教えられてたのを覚えてる。誰かがそんなのを望むって考えがいつも変だと思ってたんだ。" userName="looperhacks" createdAt="2025/08/06 08:35:34" color="">}}




{{<matomeQuote body="Macを使ってるなら、ターミナルで”say [言いたいこと]”って打てば音声合成できるよ。" userName="addandsubtract" createdAt="2025/08/06 09:51:58" color="">}}




{{<matomeQuote body="君の言う通りだね。代わりに『銀河ヒッチハイク・ガイド』のマーヴィンを例に出すべきだったよ。彼のしゃべりにはごく軽い処理しかされてないんだ。" userName="incone123" createdAt="2025/08/06 17:11:34" color="">}}




{{<matomeQuote body="カルチャー小説シリーズでイアン・バンクスは、伝送された音声やホログラムの不気味なほどのリアルさに、僕らが違和感を覚えるようになるだろうって想像してたんだ。だから、それが画像だと示すために意図的に歪みを加えるって設定だよ。" userName="mfro" createdAt="2025/08/06 13:53:13" color="#ff5c5c">}}




{{<matomeQuote body="今はチャンキングが有効になってないんだ。すぐに追加する予定だよ。そうすれば長さ制限がなくなるからね。" userName="divamgupta" createdAt="2025/08/06 07:34:43" color="#38d3d3">}}




{{<matomeQuote body="もしかして長さ制限があるのかな？長い文章と短い文章で試したけど、どちらも動作するよ。i7コアだと生成に少し時間がかかるけどね。句読点の制限じゃないと思う。だけど、音声品質はかなり悪いな。80年代のC64 SAM (https://discordier.github.io/sam/) と大差ないくらいで、期待はずれだよ。" userName="cess11" createdAt="2025/08/06 06:22:22" color="#ff33a1">}}




{{<matomeQuote body="25MBっていうサイズだけがすごいんじゃないよ。KittenTTSがApache-2.0ライセンスなのがポイントなんだ。これでPi Zeroくらいのハードウェアやバッテリー駆動のおもちゃにもオフライン音声が組み込める。GPUもクラウドも厳しいライセンスも気にしなくていいから、音声合成がハードウェア／ライセンスの問題からパッケージングの問題に変わる。品質は後で改善できるし、この展開レベルが本当にすごいんだよ。" userName="MutedEstate45" createdAt="2025/08/06 03:58:43" color="#ff5c5c">}}




{{<matomeQuote body="＞KittenTTSがApache-2.0だよって言ってるけど、リポジトリのコード[1]見た？GPL-3.0ライセンスのphonemizer[2]を使ってるんだ。現状では実質GPLライセンスだよ。[1]: https://github.com/KittenML/KittenTTS/blob/main/kittentts/on...<br>[2]: https://github.com/bootphon/phonemizer<br>追記：LLMが生成したコメントに返信しちゃったみたい。" userName="woadwarrior01" createdAt="2025/08/06 08:54:14" color="#ff5c5c">}}




{{<matomeQuote body="GPLライセンスのコードを彼ら自身のコードと一緒に配布してる場合にだけ当てはまる話だよ。MITライセンスのPythonライブラリがbashを実行するコードを含んでても、急にbashのライセンスに従うことにはならないよね。でも、OSベンダーが私のライブラリをbashと一緒に配布したら、私のライブラリもGPLに再ライセンスしなきゃいけなくなるのかな？" userName="gorgoiler" createdAt="2025/08/06 11:52:12" color="#38d3d3">}}




{{<matomeQuote body="https://github.com/KittenML/KittenTTS/issues/17" userName="jacereda" createdAt="2025/08/06 09:30:13" color="#ff33a1">}}




{{<matomeQuote body="LLMにコードを食わせて書き直して自分のものにするのを何が止めるんだい？コードをブロックごとに分析させて、書き換えを監督するような追加ステップもできる。これでAI時代の知的財産権は自由だ。道徳的な問題はあるかもしれないけど、それ以外は？個人的には、AIトークンを使う気があるなら、すべてのオープンソースコードはパブリックドメインと同じだよ。" userName="keyKeeper" createdAt="2025/08/06 11:06:40" color="">}}




{{<matomeQuote body="＞弁護士じゃないけど、私の見るところ選択肢は2つ、ライセンスを変えるか依存をなくすかだね。でも3つ目の選択肢もあるよ。プロジェクトに例外を頼むことだ。でもそれは多分認められないだろうね¹。そして4つ目の選択肢は、ライセンスを無視すること。Onyxみたいな会社が取ってる選択肢だね。¹GPL3やAGPLを選ぶ人は、明確さを保つためで例外は水を濁すし、多くのメンテナーがいる場合は再ライセンスには全員の同意が必要で、依存関係からライセンスを継承してたらさらに難しいよ。" userName="dspillett" createdAt="2025/08/06 09:56:07" color="#785bff">}}




{{<matomeQuote body="4つ目の選択肢は、一種のデュアルライセンスだね。現状のプロジェクトはGPL-3.0で利用可能だけど、依存関係を除いたこのリポジトリのソースコードはApache 2.0でも利用できるってするんだ。ユーザーは実質GPL-3.0に縛られるけど、GPLの依存関係を取り除ければApacheで使えるってことだね。" userName="wongarsu" createdAt="2025/08/06 11:14:10" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
