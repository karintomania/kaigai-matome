+++
date = '2025-06-14T00:00:00'
months = '2025/06'
draft = false
title = 'PyTorch単体でゼロからStable Diffusion 3.5を再実装！'
tags = ["AI", "PyTorch", "Stable Diffusion", "深層学習", "プログラミング"]
featureimage = 'thumbnails/green3.jpg'
+++

> PyTorch単体でゼロからStable Diffusion 3.5を再実装！

引用元：[https://news.ycombinator.com/item?id=44276476](https://news.ycombinator.com/item?id=44276476)




{{<matomeQuote body="この記事に興味あるなら、Fluxの参照実装はすごいミニマルだよ: https://github.com/black-forest-labs/flux/tree/main/src/flux<br>minRFプロジェクトは小さなdiffusion modelをrectified flowで学習するのにすごく始めやすい: https://github.com/cloneofsimo/minRF<br>あと、SD 3.5の参照実装も実はミニマルだよ: https://github.com/Stability-AI/sd3-ref" userName="liuliu" createdAt="2025/06/14 15:32:33" color="#ff5733">}}




{{<matomeQuote body="参照実装はメンテナンスされてなくてバグだらけだよ。<br>例えばhttps://github.com/huggingface/transformers/issues/27961 OpenAIのCLIP tokenizerはバグってるし、それはトレーニングに使われたものじゃない。問題は未解決で他のプロジェクトに延々コピーされてる。<br>Fluxは？トレーニングに使われたとは言ってないし、使われてない。cudagraphsとかを壊すけどそこまで影響ないバグがある。でもCLIP参照実装を使ってるから、これもバグってるんだ..." userName="doctorpangloss" createdAt="2025/06/14 17:52:24" color="#38d3d3">}}




{{<matomeQuote body="バグ見つけたのはすごい！でもキーワードはtraining<br>inferenceの乖離。学習済み重み使うにはbug-to-bugで再実装しないとダメ。参照実装が大事なのはそのため。SDXLはOpenClipGのpadding bug、FLUXはT5のmask無しbugとかね。直すと画像の質が下がるんだ。TL;DR: バグは直すよりbug-to-bug互換性維持が重要。参照実装マジ大事。(SwiftでSoTAモデル再実装してるhttps://github.com/drawthingsai/draw-things-community/tree/m...）" userName="liuliu" createdAt="2025/06/14 23:26:33" color="#785bff">}}




{{<matomeQuote body="そのissueをよく読めば、transformersやOpenAIが出してるCLIPの実装が間違ってて、学習済みモデルのコードと一致しないことがわかると思うよ。僕が提案する修正は、経験的にも理論的にも結果を改善するんだ。" userName="doctorpangloss" createdAt="2025/06/15 01:26:07" color="#785bff">}}




{{<matomeQuote body="Fluxでclip lを無効にしても品質は落ちないよ。些細なことを大げさに言ってるだけ。CLIPはどこでも使われてるし。" userName="42lux" createdAt="2025/06/14 18:04:02" color="">}}




{{<matomeQuote body="別の解釈も考えてみてよ: FluxでCLIP Lを無効にしても品質が落ちないのは、使い方がバグってるからじゃないの！" userName="doctorpangloss" createdAt="2025/06/14 22:48:49" color="">}}




{{<matomeQuote body="実はFluxのCLIP conditioningはDreamboothみたいなfine tuningにはうまく機能するんだ。tokenization bugは重大になりうるけど、dev modelでCLIPの影響が低い原因になるほどじゃない。pro<br>max modelにはもっと影響あるかもだけど、BFLしか言えないね。" userName="doctorpangloss" createdAt="2025/06/15 18:43:36" color="">}}




{{<matomeQuote body="分かった、いくつか確かなことがあるよ:(1)diffusers、BFL、OpenAIのCLIP tokenizerはバグってる。(2)Flux dev<br>schnellモデルではCLIPプロンプトの影響が低いことが多い。BFL<br>OpenAIのtokenizerはトレーニングに使われたものと違う可能性が高い。(2)guidance<br>timestep distillationがCLIPの役割を弱めてる。(3)CLIPをfine tuneするのは実践的。fine tuneに関心があるならtokenization bugは重要。それ以外は証明しづらいね。" userName="doctorpangloss" createdAt="2025/06/18 17:12:22" color="#45d325">}}




{{<matomeQuote body="みんなバグの挙動合わせるのに夢中になりすぎて、元の実装がバグってたり、学習済みモデルとコードが合ってないっていう簡単なこと見えてないんだな。" userName="doctorpangloss" createdAt="2025/06/15 01:27:15" color="">}}




{{<matomeQuote body="これってStable Diffusion 3.5モデルのこと？<br>なんでここで取ってきてるの？<br>https://github.com/yousef-rafat/miniDiffusion/blob/main/enco...<br>学習データもすごく小さくてファッション関連だけみたいだし。<br>https://github.com/yousef-rafat/miniDiffusion/tree/main/data..." userName="reedlaw" createdAt="2025/06/14 15:00:43" color="#ff5733">}}




{{<matomeQuote body="データセットはDiffusionモデルのファインチューニング試すためだよ。<br>SD3をゼロからコード書き直して再実装したけど、ウェイトはハードの都合でHuggingFaceから使ってるんだ。" userName="yousef_g" createdAt="2025/06/14 15:06:53" color="#ff33a1">}}




{{<matomeQuote body="じゃあこれってSD3の推論とファインチューニングを実装してるってこと？" userName="reedlaw" createdAt="2025/06/14 15:41:02" color="">}}




{{<matomeQuote body="＞ハードの都合でウェイトはHuggingFaceから使ってる<br>ここ、どういう意味かハッキリさせてくれる？<br>ウェイトがHuggingFaceからなら、実装は何のため？" userName="jatins" createdAt="2025/06/15 03:19:48" color="#785bff">}}




{{<matomeQuote body="僕の推測では、HuggingFaceのウェイトは初期状態として使ってるんじゃないかな。フル学習は高すぎるから。<br>で、小さいデータセットで短時間学習、つまりファインチューニング。<br>これでモデルが1) 互換性がある 2) 学習可能だってわかる。<br>理論的には大きなデータセットでゼロから学習できる。<br>コードはまだ見てないんだけど、質問は<br>1) 並列学習できる？<br>2) 学習に必要なリソースは？<br>まあ、限定的な専門データセットで学習試してみてもいいかも。" userName="MoonGhost" createdAt="2025/06/15 06:05:09" color="#ff33a1">}}




{{<matomeQuote body="モデルはコードで表されるアーキテクチャと、学習で得られる知識、つまりウェイトからできてるんだよ。" userName="elbear" createdAt="2025/06/15 11:01:04" color="">}}




{{<matomeQuote body="＞ウェイトがHuggingFaceからなら、実装は何のため<br>ウェイトっていうのは、ただのfloatの集まり（テンソルにグループ化されてる）なんだ。<br>コードがそのウェイトを使ってどんな計算をするか、例えば行列Wをウェイトからロードして `y = W @ x` とか `y = W.T @ x` とか `y = W @ W @ x` とか、それを決めるんだよ。" userName="montebicyclelo" createdAt="2025/06/15 07:44:58" color="#ff5c5c">}}




{{<matomeQuote body="聞くの恥ずかしいんだけど、このリポジトリができて、前は無かったものって何？<br>モデル作りは一生懸命避けてきたけど、何年も出力には触れてきたんだ。<br>僕の混乱の根っこは、PyTorchベースの推論/学習スクリプトはもうあると思ってたこと。<br>（少なくとも推論スクリプトはモデルと一緒にリリースされてて、ファインチューニング/学習のもそうだろうと勝手に思ってた）<br>だからこれが、既存のもののクリーンルーム/ダーティルーム再実装なのかな、とかよく分からない。<br>それか、みんなPyTorchって言ってるけど、実際はCUDA/C/なんか独自の呼び出しをしてて、ピュアなPyTorch実装より理解しにくいとか？<br>まあ、どれも良い推測じゃないから、ここでやめとくね。" userName="refulgentis" createdAt="2025/06/14 18:34:05" color="#ff5c5c">}}




{{<matomeQuote body="Stability AI、Stable Diffusionの制作者は、MITライセンスみたいに”free”じゃない独自のコミュニティライセンスで製品を出してるんだって。特定のやり方で重みをいじるのは許されてないんだ。この記事のパッケージはモデルを動かす（推論）か、既存のAI重みを使ってファインチューニングするかって感じだけど、それでも同じライセンス問題にぶつかる可能性があるよ。" userName="_tqr3" createdAt="2025/06/14 20:00:36" color="#ff33a1">}}




{{<matomeQuote body="え、SD 3.5ってファインチューニングできないの！？コミュニティライセンスは、Stability AIに少しでも利益が入るように、商用利用したり課金したりするのを阻止するためのものかと思ってたよ。マジかよ。Civitのゴナーとかは追ってないけど、SDは人気が落ちてきたと思ってたんだ。たぶん3.5がFluxの後に遅すぎた割に、クオリティの向上もほとんどなかったから、新しい環境をイチから作る価値がないって思われたのかな。" userName="refulgentis" createdAt="2025/06/14 20:40:16" color="">}}




{{<matomeQuote body="＞ You can’t finetune SD 3.5!?<br>特定のやり方でファインチューニングされると、それでStability AIのイメージが悪くなるのを避けたいからだって。" userName="fc417fc802" createdAt="2025/06/15 03:35:40" color="">}}




{{<matomeQuote body="それでさ、興味本位なんだけど、ゴナーシーンを追うのに良いTLDRな情報源ってない？ニュースレターとかsubreddit、podcast、YouTubeチャンネルとかさ。彼らのやり方の方に興味あって、結果じゃなくてね。" userName="djhn" createdAt="2025/06/16 05:55:24" color="">}}




{{<matomeQuote body="これのメインはたぶん、「最小限の依存関係で」って部分だと思うな。SD 3.5はHugging Faceのライブラリをベースにしてるけど、あれって依存関係がごちゃごちゃしてて、開発者が使った正確な設定じゃないとセットアップするのが本当に大変なんだよね。元のリリースから数ヶ月、数年経つと、特に特定のモデルを動かすのがすごく難しくなるんだ。例えば、Stability AIのリファレンス実装のSD3.5のrequirements.txt見ると、バージョン指定ないし、”transformers”みたいな巨大ライブラリが含まれてるんだ。" userName="rockemsockem" createdAt="2025/06/14 22:09:48" color="#ff5c5c">}}




{{<matomeQuote body="ああ、ありがとう、それすごくよく分かるわ。ONNXの推論ラッパーをDartで書いた経験あるんだけど、transformers.jsのONNXデモコードをDartに移植できたことがないんだよね。あれって抽象化レイヤーで書かれてて、transformersみたいなAPIになってるんだけど、それが実際モデルに何を渡してるのか分かりにくくしてるんだ。その上Pythonの依存関係も絡んでくると…もう大変！" userName="refulgentis" createdAt="2025/06/14 22:20:20" color="#785bff">}}




{{<matomeQuote body="学習者にとってはすごく良いリソースみたいね。ちょっと疑問なんだけど、初心者でもこれを追って学べるようなチュートリアルとか解説って、ひょっとしてどこかにあるのかな？" userName="albert_e" createdAt="2025/06/14 14:27:21" color="">}}




{{<matomeQuote body="fast.aiにStable Diffusionをイチから作るコースがあるよ：https://course.fast.ai/Lessons/part2.html" userName="an0malous" createdAt="2025/06/14 15:22:10" color="#785bff">}}




{{<matomeQuote body="fast.aiの情報ありがとう、Jeremy Howardはマジですごいよね。このコース受けようと思ってたんだ。ディープラーニングって1年経つとすぐ古くなると思ってて、新しいバージョンが出るの待ってたんだよね。" userName="BinaryMachine" createdAt="2025/06/14 17:23:11" color="">}}




{{<matomeQuote body="いや、それは違うと思うな。fast.aiの授業は今でも通用するし、役に立つ基礎をたくさんカバーしてるよ。" userName="whiplash451" createdAt="2025/06/14 19:47:00" color="">}}




{{<matomeQuote body="いやー、前提条件厳しすぎない？ゼロからSGD組めるとか、Kaggle勝てるとか、最新のNLPやCV使えたりとか、PyTorchとfastai詳しいとか…。1つのコースでこんなスキル身につくと思えないんだけど、とほほ。" userName="socalgal2" createdAt="2025/06/15 18:34:16" color="">}}




{{<matomeQuote body="ねぇねぇ、PyTorch単体で使うと、NVIDIA以外のGPUでもパフォーマンス良くなるの？それともCUDAに最適化されすぎてて、他のGPUじゃ勝ち目無いの？どうなの？" userName="Dwedit" createdAt="2025/06/14 21:31:18" color="#45d325">}}




{{<matomeQuote body="PyTorchってApple siliconでもちゃんと動くよ！でも、AppleのGPUはNVIDIAほどじゃないから、直接比較は難しいかもね。あと、Apple silicon特有の変な癖で、データ転送でフルコピーしちゃうんだ。ユニファイドメモリ向けじゃないから仕方ないか。" userName="jwitthuhn" createdAt="2025/06/14 22:06:18" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="PyTorchってApple siliconで特別なことしなくてもすぐ使えるの？それともApple独自のパッケージが必要なの？知りたいな。" userName="brcmthrowaway" createdAt="2025/06/14 22:38:16" color="">}}




{{<matomeQuote body="`uv pip install torch` でOKだよ。デバイスを `mps:0` にして、メモリ使いまくって！ただ、全部の機能があるわけじゃないから、GammaとかBetaとかStudent-T分布とか、できないこともあるけどね。" userName="thom" createdAt="2025/06/15 01:32:55" color="#38d3d3">}}




{{<matomeQuote body="AMDとかでもVulkan使えばML動かせるよ。Cooperative Matrixみたいな新しい拡張とか、将来ドライバ経由で出てくる機能があれば、CUDAとの差もほとんど無くなるかもね。" userName="chickenzzzzu" createdAt="2025/06/14 21:57:44" color="#45d325">}}




{{<matomeQuote body="PyTorchはROCmでもうまく動くとは思うけど、NVIDIA並みにちゃんと動くかって言われると、どうかなぁ。分からないや。" userName="VeejayRampay" createdAt="2025/06/14 21:55:26" color="">}}




{{<matomeQuote body="そうみたいだね。PyTorch ROCmはゆっくりだけど着実に進んでるみたい。でも、動かせたとしても、まだすごく遅いみたいだけどね。" userName="3abiton" createdAt="2025/06/14 21:55:40" color="">}}




{{<matomeQuote body="コードの提案だよ！qとかkとかvを個別のLinear層にする代わりに、まとめて3*embed_sizeにしちゃおうぜ。<br>`self.qkv = nn.Linear(embed_size, 3*embed_size, bias = False)`<br>フォワード関数もちょい変更ね。" userName="godelski" createdAt="2025/06/14 23:25:22" color="#785bff">}}




{{<matomeQuote body="ちょっと待った。それってqとかkとかvのパラメータに繋がりができちゃうんじゃない？元のコードはそうじゃないはずだけど…。俺、疲れてて何か勘違いしてる？" userName="jszymborski" createdAt="2025/06/14 23:30:54" color="#ff5c5c">}}




{{<matomeQuote body="それって実は超普通のことだよ。線形レイヤーは単一だからノード内の接続なんて無いし、計算負荷がちょっと軽くなるからそうしてるんだ。結局、線形レイヤーには結合法則があるってこと。" userName="godelski" createdAt="2025/06/15 03:58:24" color="">}}




{{<matomeQuote body="ってことは、これってライセンスの制約が無いStable Diffusionってこと？" userName="NoelJacob" createdAt="2025/06/14 16:09:47" color="#ff5733">}}




{{<matomeQuote body="いや、推論とか学習のアルゴリズムは数学だから著作権は無いんだ。記事の人はただ別の実装を書いただけだよ。著作権があるのはモデルの方。記事の人はそれをゼロから学習させたわけじゃない（学習データも計算力も無いだろうし）。" userName="Sharlin" createdAt="2025/06/14 17:26:01" color="#ff5c5c">}}




{{<matomeQuote body="＞著作権があるのはモデル<br>それって実際に試されたことあるの？まだAI企業がそうだって信じ込ませようとしてる段階じゃないの？" userName="Zambyte" createdAt="2025/06/14 21:39:24" color="#45d325">}}




{{<matomeQuote body="もしモデルが著作権で保護されてるなら、学習データみたいな元の依存関係にあったライセンスは当然守ってるんだろね。" userName="bravesoul2" createdAt="2025/06/14 23:47:50" color="">}}




{{<matomeQuote body="元の依存関係のライセンスって、著作権を確立するのに必要なの？例えば、『I Need a Haircut』は『Alone Again』をサンプリングした権利がどうあれ、ユニークな作品だったじゃん。" userName="bredren" createdAt="2025/06/15 05:36:26" color="">}}




{{<matomeQuote body="”モデル”って言う時は具体的にしようよ。ネットワークを記述したコードと、結果としてのウェイトは違うんだ。（学習、推論、ファインチューニング、その他のサポートコードともね。）コードがネットワークとかモジュールをどう繋ぐかって理論的な図は数学。でもそれをコードで実装したら著作権があるんだ。僕の知る限り、ウェイトはまだグレーゾーン。コードはコードで著作権があるけどね。ウェイトは人間が作ったんじゃない。自動プロセスの結果で、著作権保護は受けられないはず。でもこれは裁判で試されてないんだ。もしOpenAIのGPT-4oのウェイトが漏れたら、世界中の人がタダで使えると思うよ。ただ、動かすコードは自分で書かなきゃだけどね。" userName="echelon" createdAt="2025/06/14 18:23:50" color="#ff5c5c">}}




{{<matomeQuote body="コードや数式にはモデルアーキテクチャ、重みにはウェイトって言葉を使うと、混乱しないよ！ ウェイトを使うためには、ハイパーパラメータも知っておく必要があるね。" userName="bravesoul2" createdAt="2025/06/14 23:49:22" color="#45d325">}}




{{<matomeQuote body="＞ コードや数式にはモデルアーキテクチャ…<br>コードは著作権保護されるけど、数学は違うよね。「アーキテクチャ」ってどうなんだろう？" userName="MoonGhost" createdAt="2025/06/15 06:17:05" color="">}}




{{<matomeQuote body="つまり、彼はまだ彼らのライセンスを完全に違反してるってことだね。" userName="vrighter" createdAt="2025/06/14 20:08:42" color="">}}




{{<matomeQuote body="SD 3.5（どのバージョンでも）って聞くと、トレーニングの結果、つまりウェイトのことを思い浮かべるんだよね。コードはそこまで重要じゃないのかな？出力品質とかパフォーマンスに関しては。でも正直よく分かんないし、そういう基準でこの取り組みを判断しようとしてるわけじゃないんだけど。" userName="ineedasername" createdAt="2025/06/14 21:11:27" color="">}}




{{<matomeQuote body="get_checkpoints.pyを実行する前にHugging Face Tokenを追加してってあるけど、もう少し具体的に教えてくれない？そういうトークンが何なのか、どうやって手に入れるのか、get_checkpoints.pyのどこに置けばいいのか分からないんだ。" userName="CamperBob2" createdAt="2025/06/14 15:06:11" color="#785bff">}}




{{<matomeQuote body="＞ そういうトークンが何なのか<br>Hugging FaceのAPIトークンだよ<br>＞ どうやって手に入れるのか<br>Hugging Faceアカウントで生成するんだ<br>＞ get_checkpoints.pyのどこに置けばいいのか<br>59行目の空の引用符の中、token = ””って書いてあるところさ" userName="einsteinx2" createdAt="2025/06/14 16:01:33" color="#ff5733">}}




{{<matomeQuote body="あー、分かった、ありがとうね。<br>そういうのは、スタイルの話だけど、モジュールの一番最初に定義するのが良いと思うよ。" userName="CamperBob2" createdAt="2025/06/14 17:11:00" color="">}}




{{<matomeQuote body="同感だよ。僕はプロジェクトのメンバーじゃないんだけど、君のコメントを見て助けになればと思ってさ。" userName="einsteinx2" createdAt="2025/06/14 21:44:39" color="">}}




{{<matomeQuote body="「APIトークン」から「API」を省くと混乱するよ。AIモデルはモデルを実行する前に全てのテキストを「トークン」にトークン化するからね。全く違う二つのものに同じ単語を使ってるんだ。" userName="Dwedit" createdAt="2025/06/14 21:14:15" color="#ff5733">}}




{{<matomeQuote body="ソフトウェア開発への情熱は薄れてきたけど、このプロジェクトはマジでクールだね。誰でも基本から再発明できるとか超ヤバい。" userName="squircle" createdAt="2025/06/14 14:07:38" color="">}}




{{<matomeQuote body="このDiTって、ほんとのSD 3.5みたいにcross-token attentionをちゃんと捉えてるの？それとも分かりやすくするために単純化されてる？" userName="b0a04gl" createdAt="2025/06/14 14:39:05" color="#ff33a1">}}




{{<matomeQuote body="Ludwig Maximilian UniversityのCompViz groupから手に入る元の学術論文って、どのくらい実用的なの？" userName="caycep" createdAt="2025/06/14 16:26:37" color="">}}




{{<matomeQuote body="この実装に何か際立った特徴はある？例えば、遅い部分とか速い部分とかさ。" userName="vergessenmir" createdAt="2025/06/14 16:01:40" color="#785bff">}}




{{<matomeQuote body="「ゼロから」ってのが、今じゃ「PyTorchで」って意味になってるのがマジウケる。" userName="eapriv" createdAt="2025/06/14 16:44:16" color="">}}




{{<matomeQuote body="ある程度複雑なモデルだとPyTorchは基本的な部品だよ。SDみたいにもっと「高レベル」なものを再実装するのに、PyTorchが提供するautogradとかを自分で実装してもつまんないでしょ。ウェブアプリをゼロから作る時にOSとかJavaScriptエンジンを再実装しないのと一緒だよ。最近はPyTorch上の抽象化や、APIとして使うだけのパッケージが増えてるけど（それはそれで便利なんだけどね！）、PyTorchの機能を抽象化する依存関係が多すぎる実装より、これくらいので見るのは良いね。" userName="mardifoufs" createdAt="2025/06/14 20:51:01" color="#ff33a1">}}




{{<matomeQuote body="＞「そんなの面白くないだろ」って？Andrej Karpathyはそれと全く同じことやってたし、結構面白かったと思うけどね。" userName="eapriv" createdAt="2025/06/15 06:00:43" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="同意！動画シリーズは最高だね。でも、「＞...SDみたいに”高い”レベルのものの再実装を見せるのが目的の場合」っていう従属節があるんだよ。autograd実装は面白いけどStable Diffusionには直接関係ないし、元のプロジェクト並みに複雑で大脱線だよね。" userName="yorpinn" createdAt="2025/06/16 02:29:51" color="#38d3d3">}}




{{<matomeQuote body="ピュアPyTorchなの？" userName="nothrowaways" createdAt="2025/06/15 01:38:23" color="">}}




{{<matomeQuote body="いいね。Anne Hathawayが青いキリンの群れをMoonで率いてる画像、まだ作れるの？" userName="theturtle" createdAt="2025/06/14 15:09:00" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
