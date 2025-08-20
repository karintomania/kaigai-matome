+++
date = '2025-08-13T00:00:00'
months = '2025/08'
draft = false
title = 'FFmpeg 8.0がAI音声認識「Whisper」に対応！動画・音声の文字起こしが劇的に進化？'
tags = ["FFmpeg", "AI", "音声認識", "文字起こし", "動画編集"]
featureimage = 'thumbnails/cyan_orange4.jpg'
+++

> FFmpeg 8.0がAI音声認識「Whisper」に対応！動画・音声の文字起こしが劇的に進化？

引用元：[https://news.ycombinator.com/item?id=44886647](https://news.ycombinator.com/item?id=44886647)




{{<matomeQuote body="Whisperは本当にすごいよ！人生が良い方向に激変したね。Subtitle Editっていうツールを使ってみてほしい。Whisperの文字起こしに最高のインターフェースなんだ。ビデオやオーディオファイルをドロップして、「Video ＞ Audio to text (Whisper)」を選ぶだけ。Faster-Whisper-XXLとlarge-v2（v3は問題あるかも）で一番良い結果が出るよ。完璧じゃなくても、「Tools ＞ Fix common errors」で修正できるし。NVIDIAカードだと「--compute_type float32」が必要な場合もあるし、Whisper.exeのエラーが出たらTorchライブラリを再インストールしてみてね。エラーが解決したら、解決策を共有してくれれば嬉しいな。<br>https://www.nikse.dk/subtitleedit<br>https://www.nikse.dk/donate<br>https://github.com/SubtitleEdit/subtitleedit/releases" userName="kmfrk" createdAt="2025/08/13 12:24:59" color="#ff5733">}}




{{<matomeQuote body="どうしてそんなに生活が良くなったのか、具体例を教えてくれない？" userName="pawelduda" createdAt="2025/08/13 13:38:54" color="">}}




{{<matomeQuote body="難聴者として、今じゃYouTubeみたいなネット動画をダウンロードして、すぐに字幕を生成できるんだ。ひどく録音されたり、聞き取りにくい音声に苦労しなくて済むようになったよ。" userName="shrx" createdAt="2025/08/13 14:05:02" color="#ff5c5c">}}




{{<matomeQuote body="もし会話がひどく録音されていたり、聞き取りにくかったりしたら、文字起こしプロセスはどうやって正確にするの？" userName="dylan604" createdAt="2025/08/13 14:28:10" color="">}}




{{<matomeQuote body="それは、Whisperが音声の全情報を使えるからだよ。難聴の人にはそれができないんだ。興味深いことに、耳は完全に聞こえてるけど、”ソフトウェア”のバグ（つまり、背景にノイズが多い声だと処理するのがめちゃくちゃ難しい）がある人にも役立つよ！" userName="gregoryl" createdAt="2025/08/13 14:55:19" color="#ff33a1">}}




{{<matomeQuote body="俺もその問題抱えてるよ。かすかな音は聞こえるけど、背景ノイズがあると何を言ってるか理解できないんだ。俺の場合は物理的な問題が根本にあると思ってる。バンドの練習でギタリストがいつもフルボリュームで弾きまくってた後から出始めたんだ。" userName="spauldo" createdAt="2025/08/13 17:43:03" color="">}}




{{<matomeQuote body="話者分離（diarization）とライブ音声文字起こしを組み合わせたWhisperのソリューションって知らない？" userName="Morizero" createdAt="2025/08/13 18:37:09" color="#38d3d3">}}




{{<matomeQuote body="uvなら、利用可能なCUDA（や非CUDA）ドライバーに基づいて、適切なTorchバージョンを自動で取得する機能があるよ（システムPythonじゃなくてvenv使うのがおすすめだけどね）。<br>uv pip install torch torchvision torchaudio --torch-backend=auto<br>詳細は<br>https://docs.astral.sh/uv/guides/integration/pytorch/#automa...<br>これで、PyPIから他の要件を、TorchインデックスからTorch関連だけを引っ張ってこれるから、要件を安全に混在できるよ。" userName="notatallshaw" createdAt="2025/08/13 14:02:58" color="#45d325">}}




{{<matomeQuote body="それを”問題”って言うけど、俺からしたら”機能”だよ！パーティとかで興味ないおしゃべりを無視するのに最高なんだ。まるで人間関係での選択的聴覚みたいだけど、もっと広い対象に使えるって感じかな。" userName="dylan604" createdAt="2025/08/13 22:41:32" color="">}}




{{<matomeQuote body="Whisperは確かに良いけど、ちょっと遅いんだよな。<br>何でも字幕や文字起こしができるのは最高だけど、NVIDIAのNemo Parakeet（ほとんどWhisperみたいなもん）はパソコンとの付き合い方を完全に変えちゃったよ。ちゃんと使える音声入力ができるし、考えるのと同じくらい速いんだ。<br>俺は音声コマンドを待って色々やってくれるスクリプトも持ってるんだ。結果をLLMに送ったり、コマンドを実行したり、F5-TTSで音声を合成し直したりできるから、まるでローカルのJarvisがいるみたいだよ。唯一の制限は、英語だけってことかな。" userName="jokethrowaway" createdAt="2025/08/13 14:39:49" color="#45d325">}}




{{<matomeQuote body="俺はuvが大好きで、Pythonで効果的に使うには「uv add」と「uv sync」を知ってるだけでいいって本当に感じるんだ。これはとんでもない偉業だよ。<br>でも、こういうおまけの話を聞くと、さらにワクワクするんだよね。CUDAとTorchを連携させるのには何度も苦労してきたからさ。Astralのチームはノーベル平和賞にノミネートされるべきだよ。" userName="xrd" createdAt="2025/08/13 14:42:49" color="">}}




{{<matomeQuote body="俺は前のコメントの人と同じように、ダウンロードした動画の字幕を作るためにWhisperを使ったよ。耳が悪いんだ。YouTubeの自動字幕よりWhisperはずっと良いみたいだから、良い字幕を生成するために動画をダウンロードしてオフラインで見る手間をかける価値がたまにあるんだ。<br>あと、Whisper.cppを使って俺がため込んだポッドキャストのエピソード全部を文字起こししたよ。古いCPUが全コア100%で何日もかかったけどね（その後、ダウンロードした新しいエピソードを文字起こしするのに何度か短い時間で実行した）。期待通りにうまく動いたよ。もちろん、固有名詞のスペルは間違えるけど、それ以上は何も期待してないし、誰にも期待してない。ripgrepを使って特定のトピックの古いエピソードを見つけられるのは素晴らしいし、たまに聞く代わりにエピソードを読んだり、字幕付きでmpvで聞いたりもしてるよ。" userName="30360000" createdAt="2025/08/13 17:39:48" color="#ff5733">}}




{{<matomeQuote body="Whisperはすごいのに、なんでYouTubeの自動生成字幕はまだあんなにひどいんだろうね？一番小さいWhisperモデルですらGoogleのソリューションよりずっと良いのにさ？ライセンスの問題なのかな？それとも大規模に展開するのが難しいとか？" userName="taminka" createdAt="2025/08/13 14:20:24" color="#ff5c5c">}}




{{<matomeQuote body="ずっと良いかどうかはわからないけど、俺はYouTubeの外国語コンテンツで（なぜか）自動生成字幕がないものに、Whisperで字幕をつけられるのが好きなんだ。例えば、ドイツの比較的マイナーなコメディスケッチとかで、耳だけで理解するには俺の語学力が足りない場合とかね。10年前なら、持ってる動画の正確なコピーに同期した字幕を、ランダムなデータベースを探し回ってたよ。古い講義動画でトランスクリプトがないものもね。多くのコースは国の資金援助を受けるために対応しなきゃいけなかったけど、全部じゃないし、多くの国際的なコースにはこの要件がないからさ（例えば、ドイツやスイスの機関の素晴らしいCS／数学入門コースとか）。<br>あと、この自動生成出力を活用して、講義ノートの要約やおすすめの読書リストを作ることとかも考えてみてよ。LLMはこういうのが得意なんだ。<br>外国語の字幕を取って、Whisperでそれも文字起こしして、Geminiみたいな大きなモデルに一行ずつ英語への翻訳をチェックさせるみたいな賢いこともできるんだ。これにはよくある文字起こしの間違いや、言語間のイディオムの違いも考慮させられるんだ。俺はCursorで、モデルが変更した内容を追跡したり、簡単に元に戻したりできるようにしてるよ。安価なモデルだとぐちゃぐちゃになるような聞き間違いを修正するには、これで十分な場合が多いんだ。モデルに、なぜ特定の翻訳がされたのかとか、同じことをもっと自然に言うにはどうすればいいかとか尋ねることさえできるんだ。たまには冗談も理解してくれるよ。速いプロセスではないし、完全に自動でもないけど、時間をかけてレビューすれば、品質はものすごく良くなるよ。<br>これが90%オフライン／オープンアクセスでできるっていうのも、すごく印象的だ。Qwen3みたいな新しいOSSモデルは試してないけど、うまくクリーンアップしてくれるんじゃないかなと思うよ。" userName="joshvm" createdAt="2025/08/13 19:50:24" color="#785bff">}}




{{<matomeQuote body="それがハードウェアに起因するかもしれないってことについて、君の考えを聞きたいな。俺の聴覚はだいたい問題ないと思ってるんだ。うるさい複雑な音楽（ブレイクコアが大好き！）を聞き分けるのに問題はないんだ。<br>でも、2曲同時に再生したり、かなりのバックグラウンドノイズがある中で話しかけられたりすると、他のほとんどの人と比べて明らかに聞き取りにくいんだ。集中すれば、なんとか乗り越えられることもあるんだけどさ。<br>俺の素人考えだと、一種のパイプラインがあって、なんらかの前処理がオンになってないんじゃないかってことなんだ。だから、その後の処理がずっと難しくなってるんじゃないかと。" userName="gregoryl" createdAt="2025/08/14 00:23:40" color="">}}




{{<matomeQuote body="うん、スクリプトを共有してくれる？ざっとドキュメントを見たんだけど、Parakeetを使うにはNemoを全部インストールしないといけないみたいだね？めちゃくちゃ重そうだけど。" userName="forgingahead" createdAt="2025/08/14 04:05:22" color="">}}




{{<matomeQuote body="動画ファイルからSRT字幕ファイルを生成する方法はある？" userName="hart_russell" createdAt="2025/08/13 16:51:34" color="">}}




{{<matomeQuote body="Diarizationって、まだ「白いクジラ」みたいで難しいんだよね。以前調べた時は、外部サービスへのAPIアクセスが必要なオプションばかりで、それで諦めたんだ。確か`pyannote.audio`[1]だったと思う。[1]: https://github.com/pyannote/pyannote-audio" userName="kmfrk" createdAt="2025/08/13 18:52:01" color="#45d325">}}




{{<matomeQuote body="`WhisperX`のDiarizationは個人的には最高だよ。`whisperx input.mp3 --language en --diarize --output_format vtt --model large-v2`ってコマンドで使えるんだ。Zoomのインタビューにすごく役立つよ。Diarizationはたまにちょっとズレるけど、だいたい正確だね。" userName="jduckles" createdAt="2025/08/13 19:25:56" color="#ff5c5c">}}




{{<matomeQuote body="そのスクリプト、共有してくれない？" userName="threecheese" createdAt="2025/08/13 15:37:46" color="">}}




{{<matomeQuote body="これ、君が言ってるのに似てるよ。https://x.com/thekrishdesai/status/1955390536422134109" userName="randomflyer20" createdAt="2025/08/14 14:06:45" color="">}}




{{<matomeQuote body="僕が言ったこと以上に何かあるわけじゃないんだ。狭い部屋で危険なほど大音量に繰り返し晒された後に起こったことだよ。かすかな音は聞こえるけど、強いアクセントや背景ノイズが多いと単語が理解できないんだ。そのバンドを辞めてすぐ気づいたよ。最後の練習が耳にドリルをねじ込まれるようなうるささだったから辞めたんだ。" userName="spauldo" createdAt="2025/08/14 04:40:04" color="">}}




{{<matomeQuote body="「聞き取れない」の定義って人によって違うよね、特にアクセントで。例えば、ドイツ人の平均的な人なら問題なく理解できるけど…ザクセンの奥地出身の人とかはもう無理、みたいな。" userName="mschuster91" createdAt="2025/08/13 14:55:55" color="#ff5733">}}




{{<matomeQuote body="再生回数が多い動画には、もっと良いモデルを使うべきだと思わない？（圧縮最適化の時みたいに、すでにやってるけどさ）。" userName="ec109685" createdAt="2025/08/13 22:53:33" color="">}}




{{<matomeQuote body="君の識別能力が影響を受けたように見えるね。蝸牛には細かい有毛感覚細胞がたくさんあって、その広がりが周波数範囲を決めるんだ。音の大きさは細胞の形が影響する。君の場合は、大音量によって多くの感覚毛が影響を受け、同時発音の識別が難しくなったんじゃないかな。数が減ったか、曲がって寄与できない状態なんだよ。" userName="ddingus" createdAt="2025/08/14 11:12:42" color="">}}




{{<matomeQuote body="ポンプ室で技術者の隣にいるのに、彼が何を言ってるか聞き取れないって状況はマジで最悪だよね。" userName="spauldo" createdAt="2025/08/13 23:36:24" color="">}}




{{<matomeQuote body="NeMoのASR機能だけ使うなら、Python 3.12でvenv作って、NVIDIA/NeMoをクローンして、必要なライブラリをインストールすればOK。<br>その後スクリプトを書いて実行すれば使えるけど、俺の低スペックPCだとメモリ不足だったわ。ワークステーションで試すのはまだこれから。出力形式は自分で加工してね。" userName="rhdunn" createdAt="2025/08/14 06:46:52" color="#ff5c5c">}}




{{<matomeQuote body="ローカルでの文字起こしが普及したら、コンテンツ制作者が動画に焼き込み字幕を入れなくなることを願うよ。プロの作品でも邪魔な字幕が消せなくて困るし、猫の面白動画じゃないなら不要でしょ。ローカルなら自動翻訳もできるのに、焼き込み字幕の上から重ねるのは読みにくいし。" userName="Lio" createdAt="2025/08/13 11:03:10" color="#45d325">}}




{{<matomeQuote body="それってユーザー体験のためじゃなくて、”エンゲージメント”を増やすためにやってるんだよ。" userName="ambicapter" createdAt="2025/08/13 12:06:51" color="">}}




{{<matomeQuote body="あと、一部のSNSプラットフォームには字幕機能がないから、必要な人やスマホをミュートで見る人向けに、焼き込み字幕が唯一の方法なんだ。" userName="iAMkenough" createdAt="2025/08/13 14:13:10" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="俺も一度（邪魔な字幕を）自分の動画でやってみたんだけど、すごく不評だったな。もうやらないけど、個人的には従来の字幕よりよっぽど見やすいと思ったから、なんでかなって困惑したんだよね。（テスト視聴者は誰も気にしなかったけど。）" userName="anchpop" createdAt="2025/08/14 06:44:58" color="">}}




{{<matomeQuote body="字幕ってのは、そもそもエンゲージしたり注目したりするもんじゃないんだよ。だから、コンテンツより字幕を目立たせるのをみんな嫌がるんだ。字幕に注目させたいなら動画じゃなくてブログを書くべき。<br>字幕はアクセシビリティ機能なんだ。邪魔にならず、動画の内容を補完するものであって、損なうもんじゃない。必要な時にだけ見えるように、さりげなくあるべきなんだよ。" userName="appease7727" createdAt="2025/08/16 17:53:45" color="#785bff">}}




{{<matomeQuote body="ADHDだったりする？それなら（字幕の好みの）違いを説明できるかもね :)" userName="TsiCClawOfLight" createdAt="2025/08/14 08:03:57" color="#ff5733">}}




{{<matomeQuote body="あの焼き込み字幕も、15年前のファンサブの、イントロ音楽に合わせたテーマ性のあるアニメ字幕には全然敵わないね。あれは今でもイケてると思うけど。" userName="jiehong" createdAt="2025/08/13 17:09:47" color="">}}




{{<matomeQuote body="あと、ファンサバーたちが看板とか手書きメモみたいな作中文字を翻訳するためにマスクを作ったりするのもね。" userName="trenchpilgrim" createdAt="2025/08/13 17:15:19" color="">}}




{{<matomeQuote body="ファンサブがニュアンスや言葉遊びを説明する注釈（アスタリスク付き）を付けてくれるの、好きだわ。" userName="mattxxx" createdAt="2025/08/14 01:36:52" color="">}}




{{<matomeQuote body="最近、Internet Archiveで『Tomodachi』版『ふしぎ遊戯』のファンサブを見つけたんだけど、あれがこの手法の最も有名な例だったのね。https://archive.org/details/tomodachi-fushigi-yugi-vhsrip" userName="freddie_mercury" createdAt="2025/08/14 10:08:58" color="#ff33a1">}}




{{<matomeQuote body="アルゴリズムが動画をブーストするから字幕つけるんだよね。たとえ全デバイスがリアルタイムで100%正確な字幕表示できても、動画のパフォーマンスが良くなるなら字幕は付け続けるはずだよ。" userName="whywhywhywhy" createdAt="2025/08/13 12:48:30" color="#ff5c5c">}}




{{<matomeQuote body="このトレンドはYouTubeのサイレント自動再生が一因だと思うな。焼き付け字幕（Baked in subtitles）があると、動画に引き込まれやすいんだよね。" userName="absoflutely" createdAt="2025/08/13 14:42:19" color="#45d325">}}




{{<matomeQuote body="焼き付け字幕のもう一つの問題は、言語を変えられないことだよ。" userName="HPsquared" createdAt="2025/08/13 11:05:41" color="#ff5c5c">}}




{{<matomeQuote body="焼き付け字幕のさらに別の問題は、たいていフォーマットがひどいこと。話されている間だけ一瞬表示される単語なんて、誰が読みたいと思う？" userName="LorenDB" createdAt="2025/08/13 12:22:30" color="#38d3d3">}}




{{<matomeQuote body="確かにね。でも（ストリーミングアプリで字幕が一瞬しか表示されなくて巻き戻ししまくってる人間としては）焼き付け字幕もアリかなと思う時があるよ。Netflix、Viki、Apple TVとかで字幕が短時間表示される問題が蔓延してて、かつ一時的なのが謎なんだよね。" userName="rkomorn" createdAt="2025/08/13 11:13:27" color="#ff5c5c">}}




{{<matomeQuote body="私の経験だと新しい問題だし、自動文字起こし／翻訳ツールで字幕を生成してるのが原因だと思うな。例えばVikiの中国コンテンツだと、元の中国語字幕はちゃんとしたフォーマットなのに、英語字幕は音声に合わせたバラバラなスタイルなんだよね。レビューなしで転写＋翻訳ツールを使ったとしか考えられないよ。" userName="t-3" createdAt="2025/08/13 15:32:43" color="#45d325">}}




{{<matomeQuote body="自動化関連のことだとは思わないな。大手アプリの有名番組でも起きるんだもん。イベントやタイマーが誤作動して字幕が消えちゃう、ツールキットの問題だと思う。巻き戻して再生し直すと起きない（一時的な問題だから）ってことからもね。" userName="rkomorn" createdAt="2025/08/13 16:38:13" color="#ff33a1">}}




{{<matomeQuote body="少なくともVTTやSRTなら、表示されるテキストの塊は時間と明確に紐付けられてるから、ああいうことは起きないはずなんだけどな。動画のトランスコードみたいに、リアルタイムで字幕作成してるのかもしれないけど、動画や音声と比べて軽いプレーンテキスト形式なのにそれだと変だよね。" userName="t-3" createdAt="2025/08/13 16:47:38" color="#ff5733">}}




{{<matomeQuote body="LG WebOSでアプリや言語をまたいで変な挙動があるけど、まあそんなもんかなって感じ。別に大した問題じゃないし、たまにイラっとするくらいかな。これは競争状態の雰囲気があるね。" userName="rkomorn" createdAt="2025/08/13 17:03:16" color="">}}




{{<matomeQuote body="文字起こしって、通常のクローズドキャプション、つまりSRT字幕としてアップロードすればいいだけなんじゃない？" userName="preisschild" createdAt="2025/08/13 11:25:47" color="">}}




{{<matomeQuote body="ソーシャルメディアによっては字幕やキャプションが表示されないんだよね。YouTube Shorts、TikTok、Instagram Reels、Facebook Reels、WhatsAppのステータスとか。だから、しぶしぶ動画に字幕を焼き込んでる人もいるんだよ。それが課題なんだ。" userName="jimkleiber" createdAt="2025/08/13 12:44:31" color="#38d3d3">}}




{{<matomeQuote body="Netflixみたいなところが、ほとんどのコンテンツで3〜4言語くらいしか提供してないのがイライラするね。ブラウザ拡張機能を使えば無料で手に入るのにさ。これって組合の関係なのかな？" userName="dzhiurgis" createdAt="2025/08/13 12:24:56" color="">}}




{{<matomeQuote body="Netflixが、もっと字幕のライセンス料を払わなきゃいけないのに、海賊版や無許可の自動生成字幕と競争できないのは、別に驚くことじゃないよ。Netflixにお金を払わないと見れないのに、海賊版サイトでは無料で制限なく見れるってのも腹立つよね。" userName="dewey" createdAt="2025/08/13 13:10:00" color="">}}




{{<matomeQuote body="これって、もっと情報が出てきた時に古い単語を編集する機能とかあるのかな？例えば「I scream」と「Ice cream」って発音は同じだけど、「I scream is the best dessert」より「Ice cream is the best dessert」の方が意味が通じるよね。低遅延と高精度を両立させるにはこれが必要そう。Androidの文字起こしみたいに、話してる途中で修正されるのが見えるやつだね。" userName="londons_explore" createdAt="2025/08/13 10:48:52" color="#ff5733">}}




{{<matomeQuote body="みんなに、僕のお気に入りの論文のタイトルを教える良い機会だね。それは「How to wreck a nice beach you sing calm incense」だよ。URLはこちら: https://dl.acm.org/doi/10.1145/1040830.1040898" userName="yvdriess" createdAt="2025/08/13 12:27:31" color="#ff33a1">}}




{{<matomeQuote body="人間の字幕制作者や脚本家が、意図的に曖昧な発言、ダジャレ、そして物語上重要な聞き間違いをどう文字起こしするか、すごく興味深いね。聞こえたものを字幕にするべきか、それとも言われたことを字幕にするべきか。生まれつきのろう者は、ダジャレや韻、聞き間違いを理解するために言葉の音を特別に勉強するのかな？経験的な要素なしに抽象的な数学をやってるみたいに感じるのかな…。" userName="Fluorescence" createdAt="2025/08/13 12:50:24" color="#ff33a1">}}




{{<matomeQuote body="あの論文のタイトルが何のことか困惑してる人のために言うと、多分「How to recognize speech using common sense」のことだと思うよ。" userName="abound" createdAt="2025/08/13 12:48:38" color="">}}




{{<matomeQuote body="Whisperは30秒のチャンクで動くんだって。だから文字起こしできるし、それで結構幻覚（ハルシネーション）も出ちゃうんだよ。" userName="ph4evers" createdAt="2025/08/13 10:53:20" color="#45d325">}}




{{<matomeQuote body="字幕の質って、作成にほとんど手間がかかってないみたいだよね。高予算の映画やテレビ番組でも、字幕とセリフがどれだけズレてるか見てびっくりするよ。" userName="0cf8612b2e1e" createdAt="2025/08/13 15:18:42" color="">}}




{{<matomeQuote body="良い字幕って、言われたことの完璧なコピーじゃないんだよね。" userName="smallpipe" createdAt="2025/08/13 15:35:39" color="">}}




{{<matomeQuote body="全くそうは思わないね。文字起こしを読む時は、クリエイティブな編集じゃなくて、話者が言った一言一句が欲しいんだ。話者の声が聞きたいんであって、文字起こしする人の声じゃない。自分の言語で字幕を見る時、字幕の言葉と聞こえる言葉が一致しないとイライラするんだよね。コンテンツから意識が離れちゃう最速の方法だよ。" userName="kstrauser" createdAt="2025/08/13 16:45:07" color="#785bff">}}




{{<matomeQuote body="FFmpegはデフォルトで3秒のチャンク（https://ffmpeg.org/ffmpeg-filters.html#whisper-1）。`queue`はWhisper処理前のキューの最大サイズ。小値だと頻繁に処理され品質は低いがCPU高め。大値（10-20秒）だと正確でCPUも少ないが遅延が高い。リアルタイムには不向き。大きな`queue`値には`vad_model`オプションを検討してね。デフォルトは「3」だよ。" userName="jeroenhd" createdAt="2025/08/13 10:55:10" color="#ff33a1">}}




{{<matomeQuote body="「I scream」が1チャンク、「is the best dessert」が次のチャンクの場合、最初のチャンクの修正はできないの？それは最適じゃないね！他の文字起こしサービスは入力はチャンク分けするけど、過去のチャンクも編集できるよ。「ベストN」デコーディングを使うから、N個の出力があって、全部で同じ単語が出たら固定されるんだ。デコーダーの状態をN回複製する必要があるけど、数KBだから、何百ものNで前の単語の曖昧さにも対応できるんだ。" userName="londons_explore" createdAt="2025/08/13 11:06:16" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ありがとう！「Calm incense（落ち着いたお香）」って、「calm」が「com」みたいに発音されないアクセントだと、ほとんど意味をなさないんだよね。" userName="strken" createdAt="2025/08/13 13:53:41" color="">}}




{{<matomeQuote body="そういうアクセントだと「calm」ってどう発音されるの？" userName="solardev" createdAt="2025/08/13 22:27:59" color="">}}




{{<matomeQuote body="これって、君の脳が言語を処理する時にやってることなんだ。あまり話せない言語だと、音質が悪くなると理解力がずっと早く落ちることに気づくんだ。でも母国語だと、たとえ音質が最悪でも、脳が文脈に基づいて、その単語が何であるべきかという事前の期待で、ごちゃ混ぜになった単語を補完してくれるんだよね。" userName="DiogenesKynikos" createdAt="2025/08/13 11:09:49" color="#45d325">}}




{{<matomeQuote body="ちょっと話はそれるけど、思考する言語が脳の思考や情報解析の範囲を制限する現象を知ったんだ。幸運にも僕は英語で考えていて、英語は常に進化してるから世界とともに広がっていく。僕の出身地のほとんどの人とは対照的で、彼らにとって英語は第二言語で、教える側のリソースも不足してたんだ。" userName="mockingloris" createdAt="2025/08/13 11:30:31" color="">}}




{{<matomeQuote body="Whisperは素晴らしいけど完璧じゃないね。先週電話の文字起こしに使ったら、「Gem」が「Jim」や「Jem」になっちゃったよ。正確じゃないと困ることもあるよね。" userName="anonymousiam" createdAt="2025/08/13 12:34:11" color="">}}




{{<matomeQuote body="これは言語相対性の話だね。自分の母語が一番だと思ってる人が多いけど、言語ってのは話者のニーズに合わせて進化するものだよ。あと「言語で考える」ってのも怪しいし、非母語話者が表現に苦労するのをバカだと見るのは差別的だと思うよ。" userName="cyphar" createdAt="2025/08/13 14:30:43" color="#38d3d3">}}




{{<matomeQuote body="字幕ってのは完全な文字起こしじゃないんだよ。多くの人が読みやすいように、動画のペースに合わせて要約したり言い換えたりしてるんだ。全部正確にしたら、読むのが追いつかなかったり画面が文字で埋まっちゃうしね。母語話者には不満かもしれないけど、字幕は意味を伝えるのが目的なんだよ。" userName="creesch" createdAt="2025/08/13 17:55:05" color="#ff33a1">}}




{{<matomeQuote body="YouTubeの字幕はいつも使ってるけど、ほとんど100%正確な文字起こしで、全然不満ないよ。むしろ verbatim の方が好きだね。もし読むのが遅いなら、動画を遅くするか、早く読む練習するか、字幕を消せばいいだけじゃない？" userName="iczero" createdAt="2025/08/13 18:54:08" color="">}}




{{<matomeQuote body="いや、ちゃんと意味はあるんだよ。君をバカだなんて言わないけど、標準的な英語だと、早く話せば二つの文ってほとんど同じに聞こえるんだ。" userName="chipsrafferty" createdAt="2025/08/13 14:38:16" color="">}}




{{<matomeQuote body="ハック・フィンを読んでた時も同じこと考えたよ。あれって表音的に綴られてるだけじゃなく、全然違うんだよね。なんかマーク・トウェインが単語リスト作って、二年生の子供たちに綴りを教えてもらったみたい。変なスペルでもそのうち慣れるのかな？" userName="dylan604" createdAt="2025/08/13 14:55:06" color="">}}




{{<matomeQuote body="「読むのが遅いなら遅くしろとか練習しろとか、的外れすぎる！俺は自分やYouTubeだけの話をしてるんじゃないんだよ。お前の使い方だけがみんなの使い方じゃないんだから、そんなに難しいことじゃないだろ？ " userName="creesch" createdAt="2025/08/13 20:42:32" color="">}}




{{<matomeQuote body="字幕って大体同じだけど、スペースとか分かりやすさのために編集されることがあるんだ。繰り返しの言葉とかフィラーワードは消されるし、Fワードみたいな汚い言葉も飛ばされたりするよ。印刷物だと言葉の力が強く感じるからね。字幕って芸術なんだよ。忠実にやっても意味が伝わるとは限らないって、自分で作ってみて分かったな。フィクションの字幕は物語を伝えるためのものなんだ。" userName="crazygringo" createdAt="2025/08/13 17:54:39" color="#ff5733">}}




{{<matomeQuote body="より長い重複するチャンクを使うのが正しい方法だよ。例えば3秒ごとに文字起こしするけど、直近の15秒の音声（録音の最初ならもっと短くてもいい）を文字起こしするんだ。ただ、これだと処理要件が大幅に増えちゃうね。キャッシュをうまく使えばある程度は回避できるだろうけど、オープンな実装でやってるところは多分ないと思う。" userName="miki123211" createdAt="2025/08/13 11:22:00" color="#ff5c5c">}}




{{<matomeQuote body="それって「口語体で書く」ってやつじゃないかな。テキストメッセージでそうしてるよ。イアン・M・バンクス（Iain M. Banks）の小説「フィアサム・エンジン（Feersum Endjinn）」でも、登場人物の一人がこれと似たようなことをやってて、すごく効果的だったよ。" userName="spauldo" createdAt="2025/08/13 17:51:49" color="">}}




{{<matomeQuote body="それは少なくとも人間と同等には良いよ。でも「人間以上」になるには、誰が話しているかを正確に推測して名前を正しくスペルするために、かなり侵襲的な統合が必要になるか、別の人が言ってたみたいに手動で文脈を与える必要があるだろうね。" userName="t-3" createdAt="2025/08/13 15:26:40" color="#45d325">}}




{{<matomeQuote body="AIの音声認識って、まだマルコフモデル使ってるの？" userName="brcmthrowaway" createdAt="2025/08/13 15:07:02" color="">}}




{{<matomeQuote body="強く、猛烈に反対するよ。<br>字幕はコメンタリーじゃないんだ。オリジナルのメディアを作るアーティストは、ライターや声優、その他関わるすべての人だ。見知らぬ誰かが自分の意見や視点でそれを汚すべきじゃない。字幕は完璧な文字起こしか、最も正確な翻訳であるべきで、再解釈なんて絶対にダメだね。" userName="nomdep" createdAt="2025/08/14 02:57:16" color="#ff5c5c">}}




{{<matomeQuote body="俺の経験だと、例えば外国語の講義を見てるとき、正しい翻訳が分からない用語があって、母国語でそれについて考えたり話したりできないことがあるんだ。意味はわかるんだけどね。" userName="codedokode" createdAt="2025/08/13 15:54:39" color="">}}




{{<matomeQuote body="関連する情報だけど、パッチの作者によるブログ記事があるよ。「Run Whisper audio transcriptions with one FFmpeg command」ってやつ。<br>https://medium.com/@vpalmisano/run-whisper-audio-transcripti...<br>これはここで投稿されたんだけど、コメントは0件だったよ。<br>https://news.ycombinator.com/item?id=44869254" userName="JohnKemeny" createdAt="2025/08/13 12:47:11" color="#ff33a1">}}




{{<matomeQuote body="リンクが壊れてるよ、正しいリンクはこれ。<br>https://medium.com/@vpalmisano/run-whisper-audio-transcripti..." userName="eXpl0it3r" createdAt="2025/08/13 14:28:01" color="">}}




{{<matomeQuote body="正しいURLはこれだよ。<br>https://medium.com/@vpalmisano/run-whisper-audio-transcripti..." userName="NiekvdMaas" createdAt="2025/08/13 14:31:33" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
