+++
date = '2025-06-11T00:00:00'
months = '2025/06'
draft = false
title = 'Chatterbox TTS、音声合成の注目株！'
tags = ["AI", "音声合成", "音声認識", "LLM", "プログラミング"]
featureimage = 'thumbnails/color1.jpg'
+++

> Chatterbox TTS、音声合成の注目株！

引用元：[https://news.ycombinator.com/item?id=44251411](https://news.ycombinator.com/item?id=44251411)




{{<matomeQuote body="デモはここ→ https://resemble-ai.github.io/chatterbox_demopage/<br>すごくいいリリースだけど、デモ音声が選び抜かれてないか？って心配。いつも思うんだけど、音声AIってTTSじゃなくて文字起こしがボトルネックなんだよね。最近変わったかな？" userName="Mizza" createdAt="2025/06/11 21:52:09" color="#ff5733">}}




{{<matomeQuote body="最近の経験だと、LLMは文字起こしのエラーをうまく補ってくれるみたい。<br>LLMに代替の文字起こしとか信頼度レベルを与えるのはまだ試してないけど、それも有効だと思うな。" userName="ianbicking" createdAt="2025/06/11 22:04:36" color="#785bff">}}




{{<matomeQuote body="音声認識と、後処理として動くLLMを組み合わせるのはすごく良いアプローチだね。<br>前にスクリプト作ったんだけど、wavとかmp3を正規化して、ggerganov whisperで文字起こしして、それをLLMでテキストをクリーンアップするんだ。10年以上前の古い録音でもかなり上手くいったよ。<br>誰かの役に立つかもと思ってGistを公開しとくね→ https://gist.github.com/scpedicini/455409fe7656d3cca8959c123..." userName="vunderba" createdAt="2025/06/11 22:37:52" color="#ff5733">}}




{{<matomeQuote body="今あるローカルで動く公開されてる文字起こしツールで、話者分離（diarization）がうまいのある？<br>簡単な話者分離でも、タスクによってはQOLがめっちゃ上がるんだ。<br>前にwhisperの話者分離Pythonパッケージ見たけど、デプロイがすごく大変だったんだよね。" userName="throwawaymaths" createdAt="2025/06/11 22:50:36" color="#ff33a1">}}




{{<matomeQuote body="そうだね。<br>speechmaticsを使ったことあるけど、文字起こしはなかなかいい感じだったよ。" userName="pinter69" createdAt="2025/06/11 21:55:19" color="">}}




{{<matomeQuote body="シェアありがとう。<br>ローカルモデルって、モデルによって得意不得意あるの？<br>小さいモデルでもうまくいくのかな、それとも8B+とかじゃないとダメ？" userName="Tokumei-no-hito" createdAt="2025/06/11 22:44:55" color="">}}




{{<matomeQuote body="言おうと思ってたんだけど、理想的にはLLMに代替候補を渡せるといいね。<br>LLMの方が、純粋な音声モデルより、次に妥当な単語を判断する能力が圧倒的に高いから。" userName="mikepurvis" createdAt="2025/06/11 22:19:22" color="#785bff">}}




{{<matomeQuote body="僕の経験だと、小さいモデルは結果が悪くなる傾向にあるけど、CoT（Chain of Thought）モデルのQwenみたいなのは、8bに量子化しても文字起こしのクリーンアップがすごくうまくいったよ。" userName="vunderba" createdAt="2025/06/11 22:53:17" color="#ff5733">}}




{{<matomeQuote body="WhisperX！<br>これ見て→ https://github.com/basetenlabs/truss-examples/tree/main/whis..." userName="philipkiely" createdAt="2025/06/12 00:49:11" color="#ff5733">}}




{{<matomeQuote body="8B+って質問はパラメータ数（80億以上）のことだと思うよ、量子化レベル（重みあたり8ビット）じゃなくて。" userName="dragonwriter" createdAt="2025/06/12 14:24:32" color="#ff33a1">}}




{{<matomeQuote body="デモにスラング（Pulp Fictionからの引用あり）が入ってるの、マジで大好き！退屈な”miss daisy”デモに飽きてたから新鮮。インディーTTS界隈でNavy Seals copypasta ［1， 2］がよく使われることにも触れてて、Resembleは使い道を分かってるって感じ。<br>［1］ https://en.wikipedia.org/wiki/Copypasta<br>［2］ https://knowyourmeme.com/memes/navy-seal-copypasta" userName="echelon" createdAt="2025/06/11 23:49:48" color="#45d325">}}




{{<matomeQuote body="Huggingfaceのデモで遊んでみたけど、この記事のデモはちょっとだけ良い部分を選んでるんじゃないかな？特に、私の応答からはああいう感情が全然得られないんだ。" userName="causal" createdAt="2025/06/11 22:35:07" color="#45d325">}}




{{<matomeQuote body="転写精度を測る方法は単語エラー率であって、文字エラー率じゃないよ。Speechmaticsの精度ベンチマークはちゃんと見てないし、信用もしてないけど、私の経験や個人的な印象では良さそう。定量的なベンチマークはしてないけどね。" userName="pinter69" createdAt="2025/06/12 06:12:27" color="#ff5c5c">}}




{{<matomeQuote body="LLMを使うステップもダイアリゼーションにかなり有効だよ。例えばwhisperとpyannoteで話者分離された文字起こしが得られるとして、SPEAKER_01が”ハイ、ボブです。そしてアリスです”、SPEAKER_02が”ハイ、ボブ”と言ったら、LLMがSPEAKER_01＝ボブ、SPEAKER_02＝アリスだと推測できるんだ。" userName="sovok" createdAt="2025/06/12 02:33:30" color="#785bff">}}




{{<matomeQuote body="Deepgramがそれをやってるよ。" userName="iainmerrick" createdAt="2025/06/11 22:53:02" color="">}}




{{<matomeQuote body="Python（フルインストール）とgitが必要。OSは関係ないよ。Pythonのvenv（仮想環境）を使えば、一度動いたらその中の全バージョンに固定される。pipを使うソフトならこれでOK。やり方はこんな感じ：<br>git clone ＜whisper－diarization．git URL＞<br>cd whisper－diarization<br>python －m venv ．<br>cd scripts<br>＃OSに合わせてactivateスクリプトを実行するとプロンプトが(whisper－diarization)って変わる。<br>cd ．．<br>pip install －c constraints．txt －r requirements．txt<br>python ．／diarize．py －－no－stem －－suppress_numerals －－whisper－model large－v3－turbo －－device cuda －a ＜FILE＞<br>次に使う時は、フォルダ移動してactivateスクリプト実行してから ．／diarize．py を実行すればOK。<br>［0］の補足：venvの有効化はLinux／macOSなら source venv／bin／activate、Windowsなら venv＼Scripts＼activate だよ。（AI生成の補足だけどね）" userName="genewitch" createdAt="2025/06/12 20:07:21" color="#ff33a1">}}




{{<matomeQuote body="英語のみで非商用なら、Parakeetがほぼ完璧だったよ。リアルタイムチャットや字幕生成に使ってる。3090なら1分足らずでテレビ番組を処理できる。Whisperは私にはいつも幻覚が多すぎたんだ。分類器としての方が役に立つね。<br>https://huggingface.co/nvidia/parakeet-tdt-0.6b-v2" userName="gapeleon" createdAt="2025/06/15 07:03:39" color="#ff33a1">}}




{{<matomeQuote body="記事が関係者ってことはちゃんと書いとくべきじゃない？<br>このリンク見てみてよ。https://news.ycombinator.com/item?id=41866830" userName="junon" createdAt="2025/06/11 23:22:19" color="#ff5733">}}




{{<matomeQuote body="ここでタダで試せるよ！<br>https://huggingface.co/spaces/ResembleAI/Chatterbox" userName="xnx" createdAt="2025/06/11 21:27:00" color="#45d325">}}




{{<matomeQuote body="残念ながら、学習コードとか公開してないんだよね。<br>だからFluxとかStable Diffusionみたいに”オープン”じゃないんだ。<br>もっと良い”オープン”モデルなら、ゼロショットだとこれがいい感じだよ:<br>Zeroshot TTS: MaskGCT, MegaTTS3<br>Zeroshot VC: Seed-VC, MegaTTS3<br>Seed-VCだけ学習コードがあるけど、どれもChatterboxより音がいいよ。<br>ファインチューニングできないなら、こっち使った方が自分の声に合うかもね。<br>（特にByteDanceのMegaTTS3はすごいよ。ByteDanceの研究チームはElevenLabs以外ほとんどのTTS研究チームより上だね。小さいラボよりはるかに資金もPhD研究者も多いし、大量の学習データもあるから。）" userName="echelon" createdAt="2025/06/12 01:10:33" color="#45d325">}}




{{<matomeQuote body="でも、これらって推論スピードはどうなの？<br>エージェントとのリアルタイムなやり取りに使えるの？" userName="cpill" createdAt="2025/06/12 19:54:52" color="">}}




{{<matomeQuote body="使ってみるの面白いね。<br>僕のAustralian accentが、すごくEnglish、しかもposh RP wayになっちゃったけど。<br>すごくnatural soundingだけど、at all僕のaccentをrecreateしてないんだ。<br>Still、amazingly clearでperfect for most TTS uses where you aren’t actually impersonating anyone." userName="Quarrel" createdAt="2025/06/12 03:05:10" color="#ff5c5c">}}




{{<matomeQuote body="Hugging Faceのdemoで、defaultのreference audio fileがprofessional voice actor（Jennifer English）のsampleだったってのは、a bit on the noseだったね。" userName="mpeg" createdAt="2025/06/13 14:30:20" color="">}}




{{<matomeQuote body="Privacy standpointからはどうなの？<br>recorded samplesってtrainingに使えるの？" userName="skatanski" createdAt="2025/06/12 07:53:35" color="">}}




{{<matomeQuote body="Chatterboxはfantasticだよ。<br>API wrapperも作ったんだ。installationもeasierになるし（Dockerized as well）。<br>https://github.com/travisvn/chatterbox-tts-api/<br>Best voice cloning option available locally by far、in my experience。" userName="travisvn" createdAt="2025/06/12 06:15:01" color="#ff5c5c">}}




{{<matomeQuote body="前のコメントへの返信だよ。<br>「Chatterbox is fantastic。<br>I created an API wrapper that also makes installation easier (Dockerized as well) https://github.com/travisvn/chatterbox-tts-ap」<br>↑これ、wrapper試してみたら、Chatterbox TTSもAPI wrapperもヤバかった！<br>Excuse the rudimentary level of what follows。<br>inlineの`input` objectじゃなくて、local text fileを指定するquick and dirtyなCLI incantationを探してたんだけど、couldn’t figure it。<br>Pointers much appreciated。" userName="mistersquid" createdAt="2025/06/12 18:37:17" color="#ff5733">}}




{{<matomeQuote body="このAPIラッパーはね、Open WebUIとかAnythingLLMみたいなローカルLLMフロントエンドでOpenAIのTTS APIの代わりに使えるように作ったんだよ。こういうフロントエンドの多くはOpenAIのTTS APIを使うオプションがあって、そのエンドポイントのURLを指定できるから、このプロジェクトみたいな”ドロップイン代替”が可能になるんだ。<br>だからAPIの音声生成エンドポイントはそのニッチを埋めるように設計されてるんだよ。ただ、使い方はすごくベーシックで、セットアップのテスト用にREADMEにcurlの例があるよ。<br>とにかく、君の質問だけど、ちょっと何かできるか見てみるね。できたらこのコメントにコマンドを追記するよ。<br>その間、君のローカルのテキストファイルはちゃんと`.txt`ファイルだって思ってていいかな？" userName="travisvn" createdAt="2025/06/12 18:50:01" color="#785bff">}}




{{<matomeQuote body="わー、想像以上の丁寧な返信ありがとう！本当に助かるよ。<br>質問だけど、そう、ローカルのテキストファイルは全部`.txt`ファイルだよ。" userName="mistersquid" createdAt="2025/06/12 18:52:02" color="">}}




{{<matomeQuote body="OK、このコマンドでいけるよ。<br>HNにコメントするの初めてだから、フォーマット大丈夫かな。<br>`cat your_file.txt | python3 -c ’import sys, json; print(json.dumps({”input”: sys.stdin.read()}))’ | curl -X POST http://localhost:5123/v1/audio/speech \<br>    -H ”Content-Type: application/json” \<br>    -d @- \<br>    --output speech.wav`<br>`your_file.txt`をファイル名に変えればいいよ。引用符とか他の記号でJSON入力がおかしくなる可能性もこれで大丈夫だと思う。<br>試したら教えて！<br>あ、セットアップによっては`python3`を`python`に変えた方がいいかも。" userName="travisvn" createdAt="2025/06/12 19:03:12" color="#ff5c5c">}}




{{<matomeQuote body="＞`your_file.txt`を変えればいいよ…<br>＞これで引用符とか他の記号でJSON入力がおかしくなる可能性もこれで大丈夫だと思う。<br>＞試したら教えて！<br>うわー。謙遜しつつ、本当に感謝だよ。<br>仕事が終わって家に帰ったらすぐに試してみるね！" userName="mistersquid" createdAt="2025/06/12 19:13:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ねえ—大きなアップデートをプッシュしたよ！オプションで使えるフロントエンドを追加したんだ。<br>今のところ、入力はテキストエリアだけだけど（だから`.txt`の中身をコピペしないといけない）、curlで頑張るよりずっと簡単だよ。<br>何か問題があったら教えてね！" userName="travisvn" createdAt="2025/06/13 02:04:13" color="#ff5733">}}




{{<matomeQuote body="（君の返信、ちゃんと読んでなかった。これはCLIでテキストファイルをcatした結果だよ。新しいテキストボックスはPDTの明日の朝試すね。Chatterbox TTSを動かす手伝い、本当に心から感謝してる！）<br>もう、圧倒されたよ。<br>Gibsonの”Neuromancer”の最初のページを食わせたら、君の呪文（コマンド）がバッチリ効いたよ。シェルスクリプトのパイプ技に感謝！<br>いくつか詳細：<br>- 3分1秒のwav生成に4分28秒かかった。<br>- M4 Max 128GB RAMで実行。<br>- Chatterbox TTSがいくつか変なノイズを入れたんだけど、空気抜きとか機械の音、車両が通る音みたいだった。すごく変だけど、奇妙にもサイバーパンクに合ってたよ。<br>- Chatterbox TTSは対話部分をちゃんと対話として発音して、スピーカーがそうだと特定されてるところではオーストラリア訛りまで真似したんだ。（これは思い込みかもだけど。）<br>本当に驚いた。" userName="mistersquid" createdAt="2025/06/13 03:59:12" color="#38d3d3">}}




{{<matomeQuote body="M4 Maxで128GB RAM？羨ましいなぁ！<br>そのセットアップでの`it/s`ってどんな感じだった？MLXは本当に興味深いね。AppleはMシリーズの導入で本当に賢い決断をしたと思うよ。<br>ノイズに関しては、確かにChatterboxの既知の問題だよ。どうやって直すかの現在の調査がどこまで進んでるのか（またはこれを避ける”トリック”が何なのか）は分からないけど、確かに不気味な問題ではあるね。<br>これまでのフィードバック、本当に感謝してるよ！<br>Discordで連絡を取り合えると嬉しいな https://chatterboxtts.com/discord" userName="travisvn" createdAt="2025/06/13 20:34:34" color="#ff5733">}}




{{<matomeQuote body="Discordで続きを話すね！<br>同じ環境の人向けの情報だけど、フロントエンドは動いたよ（しかもすごくいい感じ）。<br>`vite.config.ts`にproxy設定が必要だったんだ。<br>`server: { proxy: { ’/v1’: ’http://localhost:4123’, }, },`" userName="mistersquid" createdAt="2025/06/15 01:34:38" color="#45d325">}}




{{<matomeQuote body="RTX 50シリーズで1時間かけて動かそうとしたけどダメだったよ。PyTorch 2.7で試したんだけど、2.6が必要みたいだね。<br>”chatterbox-tts 0.1.2 requires torch==2.6.0, but you have torch 2.7.0+cu128 which is incompatible.”<br>”chatterbox-tts 0.1.2 requires torchaudio==2.6.0, but you have torchaudio 2.7.0+cu128 which is incompatible.”" userName="nitroedge" createdAt="2025/06/15 05:37:16" color="#785bff">}}




{{<matomeQuote body="これってGPUなしのPCでも使えるのかな？" userName="venusenvy47" createdAt="2025/06/12 12:29:25" color="">}}




{{<matomeQuote body="これCPUでも動くらしいけど、GPU全く無しでいけるかは分かんないな。結構リソース食うみたい。GPUあればメモリ4-5GBくらい使うって。GPUのtensor最適化を考えると、CPUだけだとどうかな。試したら教えて！リポジトリに「CPU」Dockerビルドあるから参考にしてみて。ローカル資源使わずに無料TTS使いたいなら edge-tts https://github.com/travisvn/openai-edge-tts 試してみるのもアリかもね。" userName="travisvn" createdAt="2025/06/12 18:29:31" color="#45d325">}}




{{<matomeQuote body="＞ Every audio file generated by Chatterbox includes Resemble AI’s Perth (Perceptual Threshold) Watermarker - imperceptible neural watermarks that survive MP3 compression, audio editing, and common manipulations while maintaining nearly 100% detection accuracy. ってあるけどさ、これって apply_watermark 関数をコメントアウトすればウォーターマーク簡単に無効化できるんじゃね？ https://github.com/resemble-ai/chatterbox/blob/master/src/ch... ウォーターマークって普通、モデルの重みに埋め込まれてて簡単に外せないもんだと思ってたわ。オープンソースで後処理でウォーターマーク付けるって、付ける意味あんの？" userName="teraflop" createdAt="2025/06/11 22:42:57" color="#45d325">}}




{{<matomeQuote body="なんか CYA（責任回避）的なジェスチャーなんじゃない？ Stable Diffusion にもコンテンツフィルターあった記憶あるし。あとは、学習データに余計なものが混ざっちゃうのを防ぐためとか、そういう意味もあるのかもね。" userName="jchw" createdAt="2025/06/11 22:46:52" color="">}}




{{<matomeQuote body="Stable Diffusion ってか Automatic1111（最初はSDモデルのメインUIだったやつ）にも、ジョークっていうか偽のウォーターマーク設定があったんだよ。あれは、オープンソースだから簡単に剥がせるのに、そんなもん開発する時間なんて無駄って思ってる人たちをからかってるだけだったんだよね。" userName="throw101010" createdAt="2025/06/12 05:16:56" color="">}}




{{<matomeQuote body="そうそう、parser には --no-watermark ってフラグまであるんだよね。きっと、他の開発者が自分のデカい製品に「機能」として組み込む時に使えるように追加したんだと思ったよ。" userName="vunderba" createdAt="2025/06/11 22:56:44" color="">}}




{{<matomeQuote body="OpenAI、Google、ElevenLabs 以外のプレイヤーは、ゴリゴリにオープンソース化しないとマジで誰も相手にしなくなるよ。TTS市場のトップはもうガッチガチに固まってるし、Resemble とか Play(HT) とかは開発者に超アピールしないとダメ。水増しはそれに対する CYA (責任回避) だね。メディア (特に 404Media とかの反AI系) から「悪用されてる！」って騒がれるのを防ぐためだよ。ソースコードと重みを提供するのは正しいやり方。API やファインチューニングも提供して、開発者の面倒を見るのが市場シェアを取り戻す道だね。" userName="echelon" createdAt="2025/06/11 23:54:44" color="#38d3d3">}}




{{<matomeQuote body="えっ、これ全然オープンじゃないじゃん！3/10くらい？ https://github.com/resemble-ai/chatterbox/issues/45#issuecom... によると、トレーニングコードは出さないし、ファインチューニングは有料API (https://app.resemble.ai) でだって。これで金稼ぐためらしいけど、Resemble マジでがっかり。全然オープンじゃない。もっとオープンな「重み」モデルはたくさんあるよ。Zeroshot TTS (MaskGCT, MegaTTS3)、Zeroshot VC (Seed-VC, MegaTTS3) とか。これらは Resemble の Chatterbox より zero shot MOS スコアが高いし、Seed-VC は完全にオープン。特に ByteDance のモデルはヤバい (中国は AI で全てを圧倒するよ。新しい秘密の動画モデルは Veo 3 より良いらしいし！)。この「オープン」を装ったモデルは無視していいレベル。Resemble は全然気前良くないし、単なる安っぽいごまかし。彼らが全てのカードを持ってること分かってる。API 使うだけなら ElevenLabs で良くない？ Resemble、恥を知れ！これは「オープン」AI じゃない。中国勢 (ByteDance) は TTS で世界を制圧するね。彼らのモデルは Resemble よりオープンだし、音質も良くて声の類似度も高い。オープンソースでやるなら誠実さが必要だよ。もっとちゃんとやれ。 (10/10 オープンの定義) (MegaTTS3 https://github.com/bytedance/MegaTTS3 がお勧め) (ByteDance の新しい動画モデル https://artificialanalysis.ai/text-to-video/arena?tab=leader... も見て！)" userName="echelon" createdAt="2025/06/12 00:49:32" color="#ff33a1">}}




{{<matomeQuote body="重みは確かにオープンだよ (アクセスもライセンスもね)！四角い引用符で囲む必要ないって。トレーニングコードは公開されてないけどさ。自分でトレーニングコード書いて、公開されてる重みをファインチューニングすることはできるじゃん。それなのにオープンじゃないって言うのは、ffmpeg が自分がやりたいこと全部できなくて、自分でコード書いてラップしないと目的達成できないからオープンじゃないって言うのと同じくらい、なんかヘンだと思うな。" userName="fastball" createdAt="2025/06/12 03:23:48" color="#ff5733">}}




{{<matomeQuote body="ByteDance のリリースが「もっとオープン」っていうのは、マジでおかしいと思うわ。WaveVAE エンコーダーは全くリリースされてなくて、デコーダーだけなんだぜ。新しい声を使いたいなら、サンプルを公開 GDrive フォルダにアップして、別の公開 GDrive フォルダから抽出された潜在表現 (latents) を受け取らないといけないんだから。" userName="dragonwriter" createdAt="2025/06/12 16:48:59" color="#ff5733">}}




{{<matomeQuote body="機械学習のアセットって、完全に「オープン」とか「クローズ」とかじゃなくて、連続体なんだよね。 例えるなら、このリポジトリはクロスコンパイルもポートもできない Linux のバージョンみたいなもん。あるいは、大事な機能は自分で動かせない「オープンコア」SaaS プラットフォームみたいな感じ。 openness の連続体で見ると、このリポジトリはかなり低い位置にあるね。Chatterbox TTS でできることはマジで限られてる。自分で改善したり、自分のデータに合わせて調整したりは絶対無理。 「自分でトレーニングコード書いて重みをファインチューニングできる」って言われても、そんなこと誰もやらないし、提供してる側も分かってるはず。もし本当にできたら、とっくに自分でそのコード提供してるって。 Chatterbox TTS を検討してるなら、MegaTTS3 https://github.com/bytedance/MegaTTS3 の方が断然いいから、そっちを使いなよ。" userName="echelon" createdAt="2025/06/12 04:18:59" color="#ff33a1">}}




{{<matomeQuote body="これ、誰も作んないし、向こうも分かってるって。もしできるなら自分らでやってるでしょ。でもさ、コードが公開されてないオープンモデルでも、コミュニティがファインチューニングコード作った例は過去にあるんだよね。" userName="dragonwriter" createdAt="2025/06/13 08:30:21" color="">}}




{{<matomeQuote body="なんで改善したりデータに合わせられないって言うんだ？それは違うって。Linuxのアナロジーならクロスコンパイルできるようなもんだよ。開発者がオープンじゃないツールでコード書いても、そのコードはオープンでしょ？プロジェクト全体はもっとオープンになれたかもだけど、ウェイトは間違いなくオープンだよ。" userName="fastball" createdAt="2025/06/12 05:27:07" color="">}}




{{<matomeQuote body="君の例えはツールの不足には合ってないと思うな。ツールがないのにN64のROMを逆コンパイルするようなもんだよ。ま、その話はいいや。賭けるよ。誰かがこれをフォークして1年以内にファインチューニング機能を追加できない方に賭けてもいい。" userName="echelon" createdAt="2025/06/12 08:10:54" color="">}}




{{<matomeQuote body="もうやった人いたよ！<br>https://github.com/stlohrey/chatterbox-finetuning<br>ドイツ語にファインチューニングした人もいるよ！<br>https://huggingface.co/SebastianBodza/Kartoffelbox-v0.1" userName="eginhard" createdAt="2025/06/12 08:36:03" color="#785bff">}}




{{<matomeQuote body="これにはマジでびっくりした。使ってるいろんなモデル、他のTTSモデルでもこんなに関与があるの見たことないよ。この速さもやばいね。Resembleも予想してなかったと思う。まだ調整とか大変だろうけど、みんなやってるし注目されてる。たとえ扱いにくくても、この意欲があれば乗り越えられるはず。賭け、負けたみたいだ、はは。" userName="echelon" createdAt="2025/06/12 14:19:57" color="#785bff">}}




{{<matomeQuote body="ちなみに、その用語はscare quotes（疑いを意味するから）だよ、square quotesじゃない。" userName="pmarreck" createdAt="2025/06/12 20:14:57" color="">}}




{{<matomeQuote body="この分野、めっちゃ混んできたね。開発者にウェイトだけ見せて「使えるぞ」と思わせるのは、ちょっとだまし討ちっぽい。Chatterbox TTSはAPIでしかファインチューンできないし、そういう市場は飽和してる。もっと良いモデル、安いモデルもあるよ。ByteDanceとかが出してるモデルと同レベルで、そっちの方が音も性能もいいんじゃない？Fluxみたいにオープンウェイトでファインチューンできたら最高だったのに。Black Forest LabsやLightricksみたいに、商用版出しつつもオープンウェイトとかコードを出す方が、オープンソースの人たちにはずっと魅力的だよ。これはオープンソースへのエサじゃなくて、APIの宣伝にしか見えないね。" userName="echelon" createdAt="2025/06/12 02:50:19" color="#38d3d3">}}




{{<matomeQuote body="ResNet以降、どこのトップラボも完全オープンのモデルなんて出してないんだよ。Chatterboxだけを非難するのはフェアじゃないでしょ。" userName="gcr" createdAt="2025/06/12 01:47:50" color="">}}




{{<matomeQuote body="AIに透かしを入れないと悪用されるってメディア（特に404MediaみたいなアンチAI団体）が騒いでるけど、彼らがいつもの泣き虫野郎みたいなやり方で、一度出たAIを閉じ込められると思ってるのがマジウケるね。" userName="unstablediffusi" createdAt="2025/06/12 02:08:41" color="">}}




{{<matomeQuote body="透かしみたいな対策は、まあまあ効果あるんだって。スキャンしたドル札をPhotoshopで開いたり、カラープリンターで印刷したりできないでしょ？カラープリンターの黄色の追跡ピクセル無しでは何も印刷できないとか。鍵は無限に強くなくていい、破るのに価値以上のリソースがかかれば役立つんだよ。" userName="nine_k" createdAt="2025/06/12 03:00:00" color="#ff33a1">}}




{{<matomeQuote body="くだらない質問かもだけど、一番低いスペックのハードウェアでどこまで動くの？" userName="pryelluw" createdAt="2025/06/11 22:22:37" color="">}}




{{<matomeQuote body="古いCPUで動くか試したけど、30分いじっても動かせなかった。経験した問題点を挙げるね: Python 3.13でダメ、3.12のvenv必要、uvでnumpy 1.26.4が見つからない、pip版にバグ、Git版はprotobuf-compiler必要、CMakeエラーも出た。これだから他人のPythonプロジェクトは嫌になるんだよ！" userName="01HNNWZ0MV43FF" createdAt="2025/06/11 23:31:00" color="#785bff">}}




{{<matomeQuote body="AGIがPythonの依存関係の衝突を解決できるようになったら、AGIが来たってわかるね。" userName="thorum" createdAt="2025/06/12 00:14:04" color="">}}




{{<matomeQuote body="AGIなら、たぶん仮想の手を上げて、Pythonのコードを全部変換して、もっと良いものに乗り換えるだけだろうね。" userName="kevin_thibedeau" createdAt="2025/06/12 20:13:06" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="前の人が見たときにはなかったかもだけど、Python 3.11試してみたら？開発とテストはDebian 11上のPython 3.11でやってて、pyproject.tomlで依存関係も固定されてるって書いてあるよ。" userName="blharr" createdAt="2025/06/12 00:36:28" color="#ff5733">}}




{{<matomeQuote body="このGitHub Issueによると、VRAMは6〜7GB必要みたいだよ: https://github.com/resemble-ai/chatterbox/issues/44<br>でも、モデルが良いなら、もっと少ないVRAMで動くように最適化する人もいるかもね。追記: 古いNvidia 2060で動かしてみたら、ピークで〜5GBのVRAM消費だったよ。" userName="thorum" createdAt="2025/06/12 00:21:11" color="#ff5c5c">}}




{{<matomeQuote body="Issuesページを見ると、今のところあまり最適化されてないみたいだね: https://github.com/resemble-ai/chatterbox/issues/127<br>だから、ちゃんと動かすにはそこそこ強力なコンシューマーハードウェアが必要っぽい。でも、改善の可能性はかなりありそうだよ。専門家じゃないけど。" userName="magicalhippo" createdAt="2025/06/12 00:24:08" color="#ff5733">}}




{{<matomeQuote body="「くだらない質問」じゃないよ、最高の質問だよ！<br>無料で動かせるのに、借りた方が安いってなったら、DIYの意味がなくなっちゃうもんね。" userName="keyle" createdAt="2025/06/11 23:45:26" color="">}}




{{<matomeQuote body="つまらない質問じゃないよ、私も同じこと聞きたくてここに来たんだ。GPUは4桁万円もするやつが必要なのか、それとも12年前のボロいThinkpadでも動くのか、はたまたその中間なのか気になるな。" userName="bityard" createdAt="2025/06/11 22:33:42" color="#ff33a1">}}




{{<matomeQuote body="感情の誇張は面白いね。でもElevenlabsみたいに多機能で、声の表現を指示するだけで生成できるほど「作りやすい」ものに出会ったことはないな。SparkTTSはパラメータがいくつかあるけど、GitHubのプロジェクトコードを見ると、もっと細かい感情コントロールにはまだ改良が必要みたい。今のところ、テキストで強調したりして抑揚や音色を操作してからVC（多分ボイスチェンジャー）を使うとうまくいくこともあるけど、Elevenlabsよりずっと面倒くさいやり方だよ。" userName="ineedasername" createdAt="2025/06/11 23:11:10" color="#ff5c5c">}}




{{<matomeQuote body="ごく一般的なアクセントにはすごく良いと思ったんだけど、他の（かなり一般的な）アクセントだと、別のアクセントを選んでしまうことがあるんだ。例えば、いくつかスコットランド訛りの録音を試したら、結局オーストラリア訛りになったし、かなり軽いヨークシャー訛りも変なアクセントになったよ。" userName="nmstoker" createdAt="2025/06/11 22:25:51" color="">}}




{{<matomeQuote body="それはモデルじゃなくて、スコットランド訛りの問題でしょ。" userName="a_wild_dandan" createdAt="2025/06/12 02:02:57" color="">}}




{{<matomeQuote body="面白かったのが、私のオーストラリア訛りがすごくイギリスのRP（容認発音）みたいになったこと。急に上品になっちゃった。" userName="Quarrel" createdAt="2025/06/12 03:06:19" color="">}}




{{<matomeQuote body="私はイギリスのRPなのに、ヨークシャー訛りになったり、スコットランド訛りになったりしたよ。" userName="ltrg" createdAt="2025/06/12 10:10:00" color="">}}




{{<matomeQuote body="これらのツールって、本を朗読するのに十分なくらい自然なの？それとも数段落話すと声がおかしくなるのかな？" userName="abraxas" createdAt="2025/06/11 21:51:42" color="">}}




{{<matomeQuote body="ほとんどのTTSシステムは、テキストが長くなると破綻しやすい傾向があるんだ。<br>長いテキストは段落ごとに分けて生成して、後でつなぎ合わせるのが良い方法だよ。<br>あと、元の一発録りサンプルが全然きれいじゃないと、Chatterboxが生成された音声の最後にランダムで不快なヒュー音を出すことがある。これはダンテの「神曲」を録音するなら、おまけの特典って感じかな。" userName="vunderba" createdAt="2025/06/11 22:42:21" color="#ff5c5c">}}




{{<matomeQuote body="うん、このツールを使ってepubファイルをオーディオブックに生成したことがあるよ。結果はまあまあだったかな。→https://github.com/santinic/audiblez" userName="elektor" createdAt="2025/06/11 22:47:43" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
