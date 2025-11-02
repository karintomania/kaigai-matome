+++
date = '2025-10-26T00:00:00'
months = '2025/10'
draft = false
title = '【衝撃】長年のPyTorch経験より多くを教えてくれたバグとは！？'
tags = ["PyTorch", "バグ", "機械学習", "AI", "プログラミング"]
featureimage = 'thumbnails/green4.jpg'
+++

> 【衝撃】長年のPyTorch経験より多くを教えてくれたバグとは！？

引用元：[https://news.ycombinator.com/item?id=45684253](https://news.ycombinator.com/item?id=45684253)




{{<matomeQuote body="Apple MPSバックエンドでのPyTorchの勾配がおかしいって話、俺も経験あるよ。2021年にAppleのMetalベースのTensorFlow conv2dで勾配エラーを見つけて報告したんだ。普通、こういうエラーはテストスイートで捕まるはずだけどね。自動微分は数値微分と比較して結構網羅的にテストできるんだけどなぁ。<br>URL: [1] https://github.com/apple/tensorflow_macos/issues/230 [2] https://github.com/sradc/SmallPebble/blob/2cd915c4ba72bf2d92..." userName="montebicyclelo" createdAt="2025/10/26 13:20:51" color="#785bff">}}




{{<matomeQuote body="俺もPyTorchのMPSでの推論結果がバージョンによって結構違うのを見つけたよ。勾配は無視したんだけどね。詳細はここを見てくれよな。<br>URL: https://gist.github.com/gcr/4d8833bb63a85fc8ef1fd77de6622770" userName="gcr" createdAt="2025/10/27 13:02:35" color="#ff5c5c">}}




{{<matomeQuote body="幸いなことに、これらはユニットテストで修正できるんだよね。並行処理のバグじゃないからさ（これも幸い）。ちなみに、数値微分は大きな行列だとアルゴリズムの複雑さからテストがかなり限定的になるよ。複数の実装と比べてテストする方がずっと簡単で効果的だね。" userName="liuliu" createdAt="2025/10/26 16:04:46" color="">}}




{{<matomeQuote body="勾配はf(x+h) ≈ f(x) + dot(g, h)って感じで、ランダムなhを使って順方向パスだけで簡単にテストできるんだぜ。" userName="antoine-levitt" createdAt="2025/10/27 08:02:12" color="#38d3d3">}}




{{<matomeQuote body="tinygradの人達がこれについてよく話してるよ。彼らが言ってること全部は理解できないけど、PyTorchには見過ごされてる正確性バグがたくさんあって、モデルの品質に影響してる可能性がありそうだね。同じモデルを両方で学習させて、モデルの重みを比較したら面白いかも。" userName="dangoodmanUT" createdAt="2025/10/26 15:19:18" color="">}}




{{<matomeQuote body="Torchのバージョンをアップデートするときは、ライブラリだけを変えて出力を比較するテストが義務付けられてるんだ。torch 2.4.xから2.7.xにアップグレードしたら、精度が目に見えて改善したよ。" userName="coredog64" createdAt="2025/10/26 16:00:24" color="">}}




{{<matomeQuote body="「テストの実施が義務付けられている」ってどういう意味？それって普通、全てのライブラリでエンジニアがやりたいことじゃないの？少なくとも正確性を確認するための基本的なテストなしに、サードパーティのライブラリを使うなんて考えられないよ。PyTorchを使うときでも俺はそうしてるけど。" userName="embedding-shape" createdAt="2025/10/27 14:25:29" color="">}}




{{<matomeQuote body="PyTorchに正確性バグが多くてモデル品質に影響してるって話、何か公開された情報ある？もし本当なら、多くの研究が無効になる可能性があって大ニュースになるはずだよね。再現可能なテストケースを作るのも比較的簡単そうだし、もし本当ならとっくに誰かが証明して発表してるんじゃないかな。" userName="CaptainOfCoit" createdAt="2025/10/26 15:24:49" color="#ff5733">}}




{{<matomeQuote body="これって本当に研究を無効にするのかな？多くのチェック項目を確認して、機能するモデルを作れたらそれで十分じゃない？モデリングプロセス自体に問題があっても、モデル入力の前提やデータ漏洩の仮定とか、モデルを根本的にダメにするようなものでなければ、最終的に正確な予測をするモデルができたって結果には関係ないと思うけどな。" userName="bobbylarrybobby" createdAt="2025/10/27 03:08:42" color="">}}




{{<matomeQuote body="研究ってのは動くモデルじゃなくて、汎用的な技術や洞察だろ。既存手法の性能が悪かったのがバグのせいだったら、それを改良したって論文は無効になっちゃうよな。" userName="Majromax" createdAt="2025/10/27 12:52:10" color="#ff33a1">}}




{{<matomeQuote body="多くの研究が無効になるなら大ニュースだろ。再現性のない研究が多いのは周知の事実だけど、バグは普通、結果を悪くするもんで、良くするもんじゃないよな。" userName="p1esk" createdAt="2025/10/27 14:49:32" color="">}}




{{<matomeQuote body="バグって大抵モデルの性能を悪くするもんだろ。もしPyTorchに欠陥が多いなら、多くの平凡なモデルは捨てられてるってこと。それは別に驚くような話じゃないし、だからPyTorchの欠陥がNeurIPSで大問題になってないんだよ。でも、統計処理とかデータ前処理のバグなら話は別で、結果を良く見せちゃう可能性もあるかもな。" userName="Calavar" createdAt="2025/10/26 23:10:00" color="#45d325">}}




{{<matomeQuote body="だからnanochatみたいなプロジェクトってすげーよな。巨大なライブラリの制約を避けつつ、基礎となるアーキテクチャを理解できるんだからさ。" userName="3abiton" createdAt="2025/10/26 15:29:18" color="">}}




{{<matomeQuote body="Nanochatって内部的にはPyTorch使ってるんだけど？お前の言ってること、意味わかんねーな。" userName="woodson" createdAt="2025/10/26 16:14:01" color="">}}




{{<matomeQuote body="Karpathyのmicrogradチュートリアルのこと言ってるのかもな。あれ全部ゼロから作ってたし。俺もあれで基礎学んだしね。" userName="CamperBob2" createdAt="2025/10/26 18:46:38" color="">}}




{{<matomeQuote body="https://moyix.blogspot.com/2022/09/someones-been-messing-wit...<br>つまり、`-Ofast`でコンパイルされたPython geventがx87浮動小数点ユニットの状態を壊しちゃうって話。PyTorchにはマジで良くないんだよ。" userName="dapperdrake" createdAt="2025/10/26 17:23:17" color="#ff5c5c">}}




{{<matomeQuote body="こういうコンパイラフラグの影響って、数値計算の世界では広く知られてるもんだと思ってたんだけどな。浮動小数点計算の順番変わったり、IEEE 754を無視したりするし。だから、こんな結果は予想通りだろ？" userName="woodson" createdAt="2025/10/26 17:34:06" color="#45d325">}}




{{<matomeQuote body="その件でヤバかったのは、たとえお前がそのフラグを避けてても、`gevent`みたいな関係ないモジュールがコンパイルされた時に、お前のコードにまでfast-mathが適用されちゃったってこと。ラッキーなことにgccはもう修正したらしいけどな。" userName="pm215" createdAt="2025/10/26 18:44:57" color="#ff33a1">}}




{{<matomeQuote body="このバグは一部の超ニッチな人たちには超有名だけど、多くのMLエンジニアは知らないと思うよ。低レベルのことやってる人も含めてね。みんなデバッグが怖いんだ。" userName="tempay" createdAt="2025/10/26 17:46:44" color="">}}




{{<matomeQuote body="他の人が言ってたけど、「CPUだと動くのにMPSだとダメ」ってのはMPSのせいだよね。研究には全然影響ないよ。なんで$3.9T（3.9兆ドル）のAppleはPyTorchにもっと貢献しないんだろうね？" userName="doctorpangloss" createdAt="2025/10/26 16:20:13" color="">}}




{{<matomeQuote body="記事の最後にも書いてあったけど、AppleのMLエンジニアが去年のうちに、僕とほとんど同じ方法でv2.4で修正パッチを当ててくれてるよ。" userName="CrazyStat" createdAt="2025/10/27 00:00:32" color="">}}




{{<matomeQuote body="一部の研究者は、安くて手軽な実行のためにApple Siliconを使ってるみたいだね。" userName="ACCount37" createdAt="2025/10/26 16:28:41" color="">}}




{{<matomeQuote body="この記事、すごく良いね。もっと読みたいよ。うちのML研究チームは、megatron-＞PyTorch-＞CUDAスタックのデバッグで時間の半分以上使ってるんだ。" userName="jebarker" createdAt="2025/10/26 14:33:32" color="#38d3d3">}}




{{<matomeQuote body="Nsight Systemsスイートを使えば、こういう問題もカバーできないのかな？標準のCUDAツールスタックだと、こんな厄介なケースのデバッグは難しいの？" userName="ddelnano" createdAt="2025/10/27 17:49:26" color="">}}




{{<matomeQuote body="うん、nsysはすごく便利だよ。特にパフォーマンス問題の時にね。でも、このブログみたいに、トレーニング曲線がおかしいって気づくバグが多いから、複雑なシステムだとどこから手をつければいいか本当に難しいんだ。長時間大規模に動かすともっと大変になるよ。" userName="jebarker" createdAt="2025/10/27 18:17:53" color="#785bff">}}




{{<matomeQuote body="ちょっと関連するんだけど、GPUとかCUDAのバグってよくあるの？今、PyTorch使ってないGPT-OSS実装のデバッグで5日目。BlackwellかCUDAのハードウェアバグじゃないかって疑い始めてるんだよね。バグがコンパイラやハードウェアにあるなんて、めったにないんだけどさ…" userName="CaptainOfCoit" createdAt="2025/10/26 13:21:11" color="#ff33a1">}}




{{<matomeQuote body="バグは確かにあるけど、そんなに一般的じゃないよ。数値的な誤差は別としてね。プロジェクトの最初か今すぐで良いから、全操作に数値勾配チェックを追加するのを勧めるよ。あとは、簡単な実装と比較してみるのも良いね。時間はかかるけど、バグが一つ見つかるだけで、やった分の価値はあるからね。" userName="hansvm" createdAt="2025/10/26 15:00:43" color="#45d325">}}




{{<matomeQuote body="アドバイスありがとう！君が勧めるような小さなテストを各ステップでやってるよ。最初に書いた動く推論コードと、パフォーマンスは良いけど間違った結果を出す新しいカーネルの間でサニティチェックもしてる。簡略化したバージョンで部分的に置き換えて、問題の箇所を特定しようと思う。もし他にデバッグのヒントがあったら、どんな些細なことでもいいから教えて欲しい！もう頭がおかしくなりそうなんだ。" userName="CaptainOfCoit" createdAt="2025/10/26 15:05:02" color="#ff5733">}}




{{<matomeQuote body="デバッグのヒントね。<br>1. 数値コードは関数型の典型だ。各部分が正しければ全体も正しいから、数値勾配チェックやランダム入力で自動検証しよう。人間は騙されるから、コンピュータに任せてね。<br>2. 特にGPUでは変数ライフタイムやメモリ破壊に注意。部分が正しくても全体が壊れるなら、グローバルな状態を壊してるかも。「ポイズン」フィールドなどで異常検知し、クラッシュさせて原因を特定するんだ。<br>3. グローバルな状態の問題なら、アプリ全体の監査が必要だよ。" userName="hansvm" createdAt="2025/10/27 06:39:14" color="#38d3d3">}}




{{<matomeQuote body="Jensen (Huang) の不等式に遭遇してるのかもしれないね。<br>E(loss).cuda() ＜= E(loss.cuda())" userName="QuadmasterXLII" createdAt="2025/10/26 13:50:09" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="同じ処理に2つの異なるGPUを使って違う結果なら納得できるんだけどね。今は同じGPU上でナイーブな実装とTensorコアを使った実装を実行してるのに、違う結果が出るんだ。本来は同じはずなのに。このジョークも僕には理解できてないのかもしれない。" userName="CaptainOfCoit" createdAt="2025/10/26 13:57:55" color="">}}




{{<matomeQuote body="Tensorコアは精度が低いから、小さな数値の違いは予想されることだよ。" userName="p1esk" createdAt="2025/10/26 15:00:59" color="#ff33a1">}}




{{<matomeQuote body="最近、一般ユーザーが見るようなハードウェアバグはかなり珍しいよ。設計検証には実際のハードウェア設計者の約10倍も人がいるからね。バグは存在するし、それを見つける人は高給をもらえる。GPU全体を理解しないとバグを見つけられないから、もしそういう仕事ができたらすごくエキサイティングだよ。頑張ってね！" userName="jjmarr" createdAt="2025/10/26 18:58:10" color="">}}




{{<matomeQuote body="数値の違いはどれくらい大きいの？もし小さいなら、操作自体の精度範囲内かもしれないよ。" userName="saagarjha" createdAt="2025/10/26 13:29:28" color="#ff5c5c">}}




{{<matomeQuote body="数値の違いは桁違いだよ（「小さな数値の違い」は控えめな表現だったかも）。今の仮説は、どこかでスケーリングを間違えてるってことだけど、毎日の終わりに「もっと深いところに問題があるんじゃないか」って考えてしまうんだ…。" userName="CaptainOfCoit" createdAt="2025/10/26 13:48:49" color="#ff5c5c">}}




{{<matomeQuote body="バグを追い詰めるなんて素晴らしい仕事だね。記事も最高だよ。僕も自分の見つけたひどいバグを詳しく記録しておけばよかったな。数日前、UltralyticsやHuggingFaceみたいなライブラリを使うだけで済むようになったこの分野の進化と、この抽象化の山の中に潜む、検出されていないバグについて考えてたよ。" userName="farhanhubble" createdAt="2025/10/27 00:47:22" color="">}}




{{<matomeQuote body="そのバグはテンソル内の非連続データが原因だったんだね。僕も以前、`masked_select`で非連続データが原因で勾配が壊れるっていう似たようなバグに遭遇したよ: https://github.com/pytorch/pytorch/issues/99638<br>以前の損失関数実装では`masked_select`を使ってなかったから特定しやすかったんだ。非連続データに関するバグは結構あるんじゃないかな。まだどれくらい残ってるんだろうね。" userName="albertzeyer" createdAt="2025/10/26 22:09:17" color="#ff5733">}}




{{<matomeQuote body="AppleはPyTorch MPSバックエンドに貢献したけど、MLXを作ってエコシステムをバラバラにしたんだね。MLXはAppleが作ったPyTorchみたいなもんだよ。PyTorchのクリエイターであるMetaは普段のML作業でMacを使わないから（彼らはGPUとCPUに集中してる）、MPSバックエンドは未完成で、記事みたいにエラーが出るのはそのためだ、って話。" userName="ipsum2" createdAt="2025/10/26 17:57:21" color="#45d325">}}




{{<matomeQuote body="MLXとMPSってApple社内で全然違うチームなんだって。MPSチームはPyTorchのロードマップを把握できてないから、できる貢献も限られてるってことみたい。" userName="sampton" createdAt="2025/10/26 20:00:43" color="">}}




{{<matomeQuote body="具体的に言ってほしいな。ちなみにPyTorchの共同作成者でコアメンテナーの人が俺と同じ意見だよ。<br>「MacStudioって？Apple EngineeringがPyTorchサポートに費やした実際の時間を見ると、PyTorchのMac体験がNVIDIAに近づくとは思えない。MetaのエンジニアがMPSバックエンドの改善に尽力してるけど、Appleの優先順位や貢献時間は変動する。MacStudioをAI開発ボックスにしたいなら、PyTorchのソフトウェアサポートを優先すべきだ。」だってさ。<br>https://x.com/soumithchintala/status/1978848796953161754" userName="ipsum2" createdAt="2025/10/26 19:24:31" color="#ff33a1">}}




{{<matomeQuote body="Appleってさ、自社ハードウェアでのML研究に全然興味ないみたいだね。なんでかは分からないけど、MLがハードウェアの売上にそこまで貢献しないって思ってるんじゃないかな。" userName="hedgehog" createdAt="2025/10/26 21:37:21" color="">}}




{{<matomeQuote body="PyTorchのコアメンテナーより知識があるっていうなら、皮肉を言うだけじゃなくて、それを共有してくれよ。" userName="ipsum2" createdAt="2025/10/26 22:56:37" color="">}}




{{<matomeQuote body="彼はコアメンテナーじゃないし、何年も前に違うって。PyTorchの貢献者は完全に公開されてるんだから見てみてよ。https://github.com/pytorch/pytorch/graphs/contributors" userName="almostgotcaught" createdAt="2025/10/27 02:26:07" color="#45d325">}}




{{<matomeQuote body="ユースケースから見て、PlaceholderはInputPlaceholderとOutputPlaceholderに分けるべきだね。たとえ同じクラスでも、将来の人が「OutputPlaceholderに書き込んだのに読み戻してないな、おかしいぞ」って、プラットフォーム依存だと気づく手助けになるよ。" userName="cadamsdotcom" createdAt="2025/10/26 12:56:48" color="#38d3d3">}}




{{<matomeQuote body="アプリケーションハンガリアン記法とシステムハンガリアン記法についてだよ。<br>https://herbsutter.com/2008/07/15/hungarian-notation-is-clea..." userName="ramses0" createdAt="2025/10/26 13:55:59" color="">}}




{{<matomeQuote body="なんて素晴らしいポストモーテムの書き方だ。教育的にもすごく役立つよ。" userName="hobom" createdAt="2025/10/26 14:34:32" color="">}}




{{<matomeQuote body="これ聞いて、jQueryが流行っててIE6が問題だった頃に作った、一番大きなAJAXアプリを思い出したよ。僕らのアプリのランディングページはjQuery UIのドラッグアンドドロップを使ってたんだけど、そのコードがバグだらけで、修正も受け付けてもらえなかったんだ。<br>カラム間でアイテムをドラッグできたんだけど、隣のドラッグターゲットのオーバーフロー領域が重なると、別の行にドラッグできちゃうバグがあった。誰も直せなくて、僕もスパゲッティコードに苦戦したよ。<br>結局、約6ヶ月間、スプリント最終日の半分の自由時間を費やして、やっと小さな関数をモンキーパッチしてクリッピング領域のショートサーキットチェックで囲んだら直せたんだ。20〜30時間もかかったけど、ものすごく時間がかかった気がしたな。<br>このショートサーキットのおかげで、ドラッグアンドドロップも速くなったんだよ。" userName="hinkley" createdAt="2025/10/26 17:39:21" color="#38d3d3">}}




{{<matomeQuote body="昔はブラウザごとに1ピクセルのボーダーが2ピクセルになったりして、レイアウトが崩れる原因をデベロッパーツールなしで特定しようと、複数のブラウザを並べてデバッグしてたのを思い出すよ。Firebug for Firefoxが登場したときは、本当に助かったな。それまで何時間もかかってたことが、一瞬でわかるようになったんだから。イントロスペクションツールがいかに重要か痛感したね。" userName="CaptainOfCoit" createdAt="2025/10/26 19:00:00" color="#785bff">}}




{{<matomeQuote body="`* { border: red 1px solid }`ってのを覚えてる？<br>IE6があった時代をね。今の若者はChromeに文句言ってるけど、一番人気のブラウザが仕様を全然実装してなかった時代があったんだよ。しかもOSに付属してるブラウザだったんだから。あんなクソみたいなものと仕事してたなんて、もう二度とごめんだね。終わってよかったよ。" userName="yard2010" createdAt="2025/10/26 20:31:16" color="#ff5c5c">}}




{{<matomeQuote body="あのアプリの兄弟ページでリフロー再配置のトリックを使ったら、FirefoxとSafariでは速度が2倍か3倍になったのに、IE6ではテストケースが30秒から3.5秒になったんだよ。もう最高だよ！" userName="hinkley" createdAt="2025/10/26 20:58:20" color="">}}




{{<matomeQuote body="あのバグのおかげで、コードを隅々まで見て回ることになったよ。そりゃあ、一からやり直したいと思うわけだね。やれやれ。" userName="hinkley" createdAt="2025/10/26 20:56:01" color="">}}




{{<matomeQuote body="記事の「何時間もかかったことが数日に」って部分、逆じゃない？普通「数日かかったことが数時間に」って言うはずだよね？" userName="tosapple" createdAt="2025/10/26 21:37:15" color="">}}




{{<matomeQuote body="Elanaさんの徹底的な深掘りと、分かりやすい書き方には脱帽だよ。MLライブラリのこと全然知らない俺でも、すんなり読めたもんね！" userName="EdwardDiego" createdAt="2025/10/26 23:24:20" color="">}}




{{<matomeQuote body="記事は最高だけど、人間とAIが書いたコンテンツや見出し、要約が混ざってるのがかなり邪魔だったな。スクロールしたいのに、人間の書いた部分を探して何度も戻らないといけなかったよ。<br>Adamオプティマイザみたいなことなら、Wikipediaへのシンプルなリンクで十分で、AIのチュートリアルをコピペする必要はないと思う。" userName="brilee" createdAt="2025/10/26 12:50:51" color="#45d325">}}




{{<matomeQuote body="ぶっちゃけ、展開できるセクションは簡単に非表示にできるじゃん。俺はあれって「（大抵は）難解なWikipedia記事へのリンク」と「すでに知ってることを読ませられる」の間のうまい妥協点だと思ったよ。知ってるセクションは隠して、価値ある他の部分だけ読んだしね。" userName="CaptainOfCoit" createdAt="2025/10/26 13:24:46" color="">}}




{{<matomeQuote body="俺も同じこと言いに来たわ。Claudeの書き方ってかなり目立ってたけど、「The Fix」って見出しになった途端、なんかイライラしたんだよね。" userName="reilly3000" createdAt="2025/10/26 17:52:48" color="">}}




{{<matomeQuote body="俺もMPSのバグにめちゃくちゃ悩まされた経験があるよ。AppleがPyTorchとの連携をちゃんとできるように、エンジニアを何人か投入してくれたらいいのにってマジで思う。" userName="airza" createdAt="2025/10/26 13:15:48" color="">}}




{{<matomeQuote body="記事を読んだら、PyTorchモデルの損失が壊れて何日も修正に費やした記憶が蘇ったわ。結局、間違ったオプティマイザパラメータを渡してたんだ。モデルからCUDAカーネルまで全部掘り下げてデバッグしたよ。デバッグの方が学習より時間かかったんだよな。君が遭遇した一番厄介なバグって何？" userName="Rileyen" createdAt="2025/10/27 03:22:11" color="#ff5733">}}




{{<matomeQuote body="これって、俺がApple M4でYOLOモデルをファインチューニングできない理由なのかな？数バッチで損失がNaNになっちゃうんだ。同じコードをWindows PCやGoogle ColabのCPUやGPUで動かすと問題ないのに…" userName="dcl" createdAt="2025/10/26 22:57:52" color="#ff5733">}}




{{<matomeQuote body="SGDが「standard gradient descent」って意味で使われてるの、初めて見たよ。「stochastic gradient descent」じゃないの？" userName="gugagore" createdAt="2025/10/26 13:36:09" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それはたぶん単なる間違いだろうね。記事の別の場所では、著者はちゃんと「stochastic gradient descent」って呼んでるから。" userName="tavianator" createdAt="2025/10/26 13:56:48" color="">}}




{{<matomeQuote body="やば、前のコメントが正解だわー。あれはただの間違いだったんだよね。元は「vanilla」って書いたんだけど、同じ言葉が二回続くのが嫌で「standard」に替えたら、SGDの略みたいになっちゃって。混乱させてごめん、直したよ！指摘してくれてありがとう！" userName="elanapearl" createdAt="2025/10/26 17:53:41" color="#785bff">}}




{{<matomeQuote body="素朴な疑問なんだけどさ、MLのテンソルライブラリってテクスチャみたいにZオーダーメモリレイアウト使わないの？テクスチャだと超便利なのに、MLじゃメリットないのかな？" userName="nraynaud" createdAt="2025/10/26 17:38:22" color="">}}




{{<matomeQuote body="ZオーダーはRAMからテクスチャを速く読み込むためのものだと思うよ。でも、MLではそんな問題ないんだ。だいたいモデルの重みは全部GPUメモリに直接読み込むし、入力のキャッシュもいらないからね。それにMLのスタック全体は、もう他のメモリレイアウトでがっつり最適化されてるし。" userName="empiko" createdAt="2025/10/27 07:43:17" color="">}}




{{<matomeQuote body="俺の理解が正しければ、このバグの根本原因ってオブジェクト指向プログラミングの使い方が悪かったってことだよね。Placeholderオブジェクトって、どうやって作られたかによって動きが変わっちゃうのに、それをユーザーに意識させちゃってたんだ。`if is_continuous`のチェックは、Placeholderクラスの中だけでやるべきだったはず。" userName="anal_reactor" createdAt="2025/10/26 21:46:42" color="#38d3d3">}}




{{<matomeQuote body="ちょっとした文句なんだけど、作者がPlaceholderを「leaky abstraction」って呼んでるのはあんまり好きじゃないな。あれはただの「incomplete abstraction」で、入力は扱うけど出力は扱わないだけだよ。作者が言ってる通り、Placeholderが違いを理解して自分でコピーバックすべきだったんだ。" userName="kccqzy" createdAt="2025/10/26 13:03:34" color="">}}




{{<matomeQuote body="すごいね、びっくりだよ！実装っていつもクロスチェックされてると思うのに、こんな種類のバグが出てくるなんてありえないんじゃないの？" userName="mirekrusin" createdAt="2025/10/26 18:06:11" color="">}}




{{<matomeQuote body="バカな質問かもだけどさ、GPUの結果の一部をCPUのと比較して、健全性をチェックするようなアサーションってないの？" userName="dataflow" createdAt="2025/10/26 15:47:04" color="">}}




{{<matomeQuote body="この記事、すごく良いね！理屈っぽくなくて、ちゃんと順序立てて書かれてるのが最高だよ。" userName="cryber" createdAt="2025/10/26 19:31:48" color="">}}




{{<matomeQuote body="非連続テンソルって、PyTorchのバグの最大の原因に違いないよね、マジで笑えるわ。" userName="saagarjha" createdAt="2025/10/26 13:42:13" color="">}}




{{<matomeQuote body="みんながNvidiaを使うもう一つの理由だよね。Nvidiaって一番使われてるバックエンドだから、こういうバグもあなたが出くわす前に見つかって直されてる可能性が高いんだ。" userName="modeless" createdAt="2025/10/26 18:17:24" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
