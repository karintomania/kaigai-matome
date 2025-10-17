+++
date = '2025-10-10T00:00:00'
months = '2025/10'
draft = false
title = '画期的な生成モデルを発明！ICLRに論文採択された！'
tags = ["AI", "機械学習", "生成モデル", "ICLR", "論文"]
featureimage = 'thumbnails/color2.jpg'
+++

> 画期的な生成モデルを発明！ICLRに論文採択された！

引用元：[https://news.ycombinator.com/item?id=45536694](https://news.ycombinator.com/item?id=45536694)




{{<matomeQuote body="Discrete Distribution Networks（DDN）という画期的な生成モデルを発明し、ICLR2025に採択されたんだ！DDNは主流モデルとは根本的に違うアプローチで、1回のフォワードパスで複数出力して、学習データのターゲット分布を近似するよ。離散分布を表現するから”Discrete Distribution Networks”って名付けたんだ。Zero-Shot Conditional Generation（ZSCG）、1次元ツリー構造の離散潜在表現、完全なエンドツーエンド微分可能ってのがDDNのユニークな特性だよ。ICLRのレビューでも「斬新でエレガント」「生成モデリングの新たな扉を開く」って高評価だった！" userName="diyer22" createdAt="2025/10/10 09:01:54" color="#ff5c5c">}}




{{<matomeQuote body="これ、離散空間から連続空間へのNormalizing Flowにちょっと似てるんじゃないかな。DDNレイヤーをNormalizing Flowとして書き換えれば、”split and prune”を避けられると思うよ。トレーニングでは画像を潜在変数へフローさせて、一番近い潜在変数z_iとのL2ロスを計算するんだ。あとは、フローのヤコビアンの対数決定式のロスも追加してね。推論では、任意の潜在変数z_iから画像を生成するって感じ。" userName="cooljoseph" createdAt="2025/10/11 04:47:13" color="#785bff">}}




{{<matomeQuote body="アイデアはありがとう！でもDDNとFlowはそんなに簡単に入れ替えられないんだ。1. DDNは可逆性が必要ないし、2. 潜在変数は連続じゃなくて離散だよ。3. Flowは入出力サイズを同じに保つからlog|detJ|を計算できるけど、DDNの潜在変数は1Dだから条件が合わないんだ。4. ”hierarchical many-shot generation + split-and-prune”の方がシンプルで汎用的だと僕は思うよ。5. 君の設計だとDDNの特性（ZSCG、1Dツリー潜在、ロッシー圧縮）が失われちゃうから、もはやDDNとは呼べないものになると思うな。" userName="diyer22" createdAt="2025/10/11 20:26:29" color="#ff5733">}}




{{<matomeQuote body="フローが専門の僕も、DDNがFlowだとはまだ確信が持てないけど、面白い共通点もあるね。もっと深く調べる必要がありそうだよ。君の反論についてだけど、Flowはネットワークの全ての点で可逆性が必要なわけじゃないし、離散Flowもあるよ。入出力サイズが違っても、”Approximation Capabilities of Neural ODEs and Invertible Residual Networks”とか”RealNVP”が参考になるかも。JacoboianはFlowの条件じゃないけど便利だよね。DDNはFlowっていうよりSNODE、つまりDiffusionモデルに似てるかも。君のネットワークは見たことないから、本当に独自だと思うよ。FlowやDiffusionの論文みたいに軌跡をプロットして、交差があればFlowじゃないってすぐわかるから試してみて！この研究は本当に興味深いよ。素晴らしい仕事だ！" userName="godelski" createdAt="2025/10/16 06:23:22" color="#ff5733">}}




{{<matomeQuote body="ああだこうだ言うのは安い。Linusが言ったみたいに「コードを見せてくれよな」。" userName="kleiba" createdAt="2025/10/11 19:05:55" color="">}}




{{<matomeQuote body="ICLRに単独著者で論文が採択されるなんて、しかもこんな革新的な手法で！本当にすごいよ！よくやった！" userName="michaeldoron" createdAt="2025/10/10 14:00:27" color="">}}




{{<matomeQuote body="すごく面白いアーキテクチャだね、デバッグもしやすそう。でも、各レイヤーでK-1の計算を捨てちゃうのがデメリットかな。Mixture-of-Expertsと”x0-target” latent diffusion modelを組み合わせたような感じだね。guided samplerと”split-and-prune” optimizerが主な革新点で、トレーニングを容易にしてるんだ。" userName="f_devd" createdAt="2025/10/10 11:13:12" color="#ff5c5c">}}




{{<matomeQuote body="推論時は、サンプリング確率が入力に関係なく1/Kだから、各レイヤーでK個の異なる中間出力を全て計算する必要はないんだ。事前に使いたい出力だけ決めて、それだけ計算すればいいよ。（これは”Common Questions About DDN”のQ1にも書いてあるね。）" userName="yorwba" createdAt="2025/10/10 11:27:16" color="#ff5733">}}




{{<matomeQuote body="でも、条件付き生成だとそうはいかないよ。ターゲットがある場合は、複数生成して、ターゲットに一番近いものを選んで、残りは捨てるしかないからね。" userName="crondee" createdAt="2025/10/10 17:10:59" color="#45d325">}}




{{<matomeQuote body="これはすごく賢い洞察だね、よくやった！" userName="kevmo314" createdAt="2025/10/10 14:42:35" color="">}}




{{<matomeQuote body="論文理解してないと思うよ。<br>エキスパートなんていないし、出力は分布からのランダムサンプルを近似してるだけ。<br>Latent Diffusionじゃない。GANみたいな畳み込みを使ってる。<br>推論時には事前にサンプルインデックスを選んでるから、計算を捨てることもないよ。" userName="ActivePattern" createdAt="2025/10/10 16:32:21" color="#45d325">}}




{{<matomeQuote body="@ActivePatternに同意！回答ありがとう。<br>@f_devdへの補足だけど、学習中、K個の出力はNNブロックの共通ステム特徴を共有してるから、K個の出力生成に追加計算は少しで済むよ。<br>L2距離サンプリング後、K-1個の出力捨ててもコストは無視できる程度だし、MoEエキスパート捨てるのとは全然違うよ。" userName="diyer22" createdAt="2025/10/10 17:59:08" color="#ff5733">}}




{{<matomeQuote body="多分君が正しいよ。GANとは似てないけど、Diffusionモデルに近いね。<br>事前サンプリングは仕組みがよく分からないし、あまり言及されてないから、今後のバージョンを待つよ。<br>最初のFID性能はまだそれほど良くないからね。" userName="f_devd" createdAt="2025/10/11 15:14:02" color="">}}




{{<matomeQuote body="みんな、素晴らしいフィードバックありがとう！<br>今後の開発やアップデートについて議論するTwitterスレッド作ったよ。<br>みんなと繋がりたいから、ぜひそこで交流しよう！<br>Twitterで始めるのは大変だから、投稿へのエンゲージメントがすごく助けになるよ！<br>https://x.com/diyerxx/status/1978531040068321766" userName="diyer22" createdAt="2025/10/16 16:41:23" color="">}}




{{<matomeQuote body="彼が易経を引用してるのは良い兆候だね。<br>独創的なアイデアって大体アナロジーから生まれるんだよ。<br>Paul Werbosは、フロイトの精神エネルギー理論をアルゴリズム化するためにBackpropを発明したって主張してるしね。" userName="mysterEFrank" createdAt="2025/10/11 03:43:30" color="">}}




{{<matomeQuote body="初歩的な質問なんだけどさ、もしネットワークが全部1x1畳み込みで構成されてるなら、ピクセル間の情報混ざらないってこと？<br>それって各ピクセルが独立してるってことにならない？<br>どうしてそれで不整合な結果にならないんだろう？" userName="qazxcvbnm" createdAt="2025/10/10 17:32:34" color="#ff33a1">}}




{{<matomeQuote body="これは今回の論文には当てはまらないみたいだけど、実際にはピクセルは互いに独立して生成できるんだ。<br>NeRFsとか’single-pixel GANs’、MAEsとか見てみて。<br>どうしてこれが可能なのかって？それは、潜在空間がプラトニックな対象だからだと僕は思う。<br>画像に限らず、自然言語でも可能だよ。<br>https://arxiv.org/abs/2003.08934<br>https://arxiv.org/abs/2011.13775<br>https://arxiv.com/abs/2401.14391<br>https://github.com/ethan-w-roland/AUNN<br>https://gwern.net/aunn" userName="gwern" createdAt="2025/10/10 19:56:07" color="#ff33a1">}}




{{<matomeQuote body="DDNでは、1x1畳み込みはDDLの出力層でしか使われてないよ。<br>DDL間のNNブロックは、基本的な計算能力とパラメータ数を提供するんだけど、そこでは標準の3x3畳み込みを採用してるんだ。" userName="diyer22" createdAt="2025/10/10 17:40:06" color="#ff5733">}}




{{<matomeQuote body="それ、何か特定の理由があったの？" userName="randomNumber7" createdAt="2025/10/10 19:46:10" color="">}}




{{<matomeQuote body="1x1畳み込みは、特徴量を最終出力に変換するのに最も軽量な演算子だよ。<br>3x3畳み込みは、基本的な計算能力を提供するためによく使われる演算子なんだ。" userName="diyer22" createdAt="2025/10/11 04:50:50" color="#ff5733">}}




{{<matomeQuote body="俺も階層的なクロスアテンションと学習クエリを使って、構造が似てるもの作ったことあるよ。L1ノルムでスパース化したんだけどね。離散的な階層表現ってマジで超クール！各層のアクティベーションパターンが入力の“解析ツリー”みたいになってて、画像を短い整数のシーケンスに効果的に圧縮できてるんだ！" userName="intalentive" createdAt="2025/10/10 16:10:40" color="#38d3d3">}}




{{<matomeQuote body="このコンセプト、超クールじゃん！抽象の下の例を見ると、モデルの正確さにいくつか驚くディテールがあったよ。例えば、2行目3列目の生え際とか、2行目7, 8, 9, 11列目のシャツの色、4行目と6行目の口紅、6行目4列目の顔や髪の位置と形とか。特に6行目4列目の左下の赤色がすごい。そこに赤い何かがあるってモデルが認識したことはまだ理解できるけど、その赤い塊を正確な場所に置いたのは本当に驚きだよ。データセットのバイアス（口紅とか）や、俺のチェリーピッキング（ひどく間違ってるのは無視してる）で説明できる部分もあると思うけど、赤いショルダーの紐や塊は説明できないな。データ漏洩やバイアスのかかったデータセットの過学習の可能性ってあるの？それともただの偶然？" userName="hatthew" createdAt="2025/10/10 22:54:16" color="#785bff">}}




{{<matomeQuote body="あれは偶然だよ。ZSCGで使ってる画像は全部Celeb-Aから来てるけど、DDNモデルはFFHQだけで訓練されたんだ。それに、赤いショルダーの紐や塊は、むしろ再構築が下手くそだと思うけどね。" userName="diyer22" createdAt="2025/10/11 06:09:34" color="#38d3d3">}}




{{<matomeQuote body="モデルの階層的な生成を見るのってめちゃくちゃクール！彼らのGithubページにはL=4の例もあるよ。https://discrete-distribution-networks.github.io/img/tree-la...<br>ウェブサイトに載ってるのはL=3だけどね。" userName="GaggiX" createdAt="2025/10/10 13:18:43" color="#ff5c5c">}}




{{<matomeQuote body="この図、すごくいいね！" userName="BrokenCogs" createdAt="2025/10/10 13:46:29" color="">}}




{{<matomeQuote body="かなり面白いね。俺も数日前、記号変換行列を使ったDiffusionモデルでディープグラフリアクティブシステムを並列化しようと研究してたところだったんだ。みんな同じ方向に向かってるみたいだし、近い将来、Diffusion系のモデルがcodegenを席巻しても驚かないよ。" userName="CuriouslyC" createdAt="2025/10/10 14:38:00" color="">}}




{{<matomeQuote body="超クール！昔、表現学習でたくさん遊んだから、MNISTのグリッドを見て懐かしい気分になったよ :)<br>これは本当に面白くて斬新なアプローチだね！スケールアップして、画像以外のドメインに応用されたときにどうなるか、めちゃくちゃ興味があるよ！君の研究をフォローするのに一番いい場所はどこ？" userName="moconnor" createdAt="2025/10/10 13:14:26" color="#ff5c5c">}}




{{<matomeQuote body="評価してくれてありがとう！今後の研究はGitHubとTwitterの両方で更新するから、ぜひチェックしてね。<br>https://github.com/DIYer22<br>https://x.com/diyerxx" userName="diyer22" createdAt="2025/10/10 13:38:59" color="#45d325">}}




{{<matomeQuote body="このモデル、オブジェクト検出（例えば、写真に写ってる魚を検出するとか）のために学習させられるの？" userName="FitchApps" createdAt="2025/10/10 12:38:37" color="">}}




{{<matomeQuote body="DDNは、オブジェクト検出のような“識別タスクのための生成モデル”というパラダイムに、ものすごく適してるって確信してるよ。DiffusionDetみたいに、DDNも同じ哲学を取り入れられるんだ。<br>DDNは、Diffusionベースのアプローチに比べていくつかメリットがあると思うんだよね：<br>- 結果を得るのにシングルフォワードパスで済むから、反復的なノイズ除去は不要。<br>- 複数のサンプルが必要な場合（例えば、不確実性推定とか）、DDNなら一回のフォワードパスで複数の出力を直接生成できるよ。<br>- DDNのZero-Shot Conditional Generation機能のおかげで、生成時に制約を課すのが簡単。<br>- DDNはより効率的なエンドツーエンド最適化をサポートしてるから、識別モデルや強化学習との統合にもっと適してるんだ。" userName="diyer22" createdAt="2025/10/10 12:55:06" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ざっと論文読んだけど、これって“generative decision tree”って感じだね。" userName="porridgeraisin" createdAt="2025/10/10 16:51:43" color="">}}




{{<matomeQuote body="プルーニングとか選択の部分、NNが流行る前のgenetic algorithmsに似てるね。" userName="0xdeadbeefbabe" createdAt="2025/10/10 16:36:41" color="">}}




{{<matomeQuote body="そうなんだ！オリジナル論文のOPTIMIZATION WITH SPLIT-AND-PRUNEの2段落目に、「evolution and genetic algorithmsの理論に触発されて、Split-and-Pruneアルゴリズムを提案した」って書いてあるよ。" userName="diyer22" createdAt="2025/10/10 18:11:07" color="#45d325">}}




{{<matomeQuote body="論文読んだけど、DDLについて一つ理解できないことがあるんだ。各“concat”で“output feature”のサイズが“input feature”に対して“generated image”のサイズ分増えるように見えるんだけど、合ってる？もしそうなら、この増えたサイズは各DDLでどう処理されるの？それとも、“concat”ステップで2x poolingがあって、最終サイズは変わらないの？" userName="frumiousirc" createdAt="2025/10/11 13:34:30" color="#ff33a1">}}




{{<matomeQuote body="うん、stem featuresの最終サイズが変わらないようにするtransformがあるよ。" userName="diyer22" createdAt="2025/10/11 17:10:38" color="#ff33a1">}}




{{<matomeQuote body="こんなタイトル見ると「本当かよ」って思うけど、ざっと見たらかなり良さそうだね。あとはタイムターナーさえあればなぁ。" userName="Lerc" createdAt="2025/10/10 14:01:09" color="">}}




{{<matomeQuote body="ちょっとメタな話だけど、著者たちがICLRのレビューを役立つと思ってくれて嬉しいな。これはICLRが常にレビューを公開するポリシーの成功例だね。著者たちは匿名レビュアーがどう解釈したかの「証言」から恩恵を受けるし、学術界以外の人が論文の採否の舞台裏を見れるようになるからね。<br>ちなみにこの論文のレビューはこちら: https://openreview.net/forum?id=xNsIfzlefG<br>全ての不採択論文のリストはこちら: https://openreview.net/group?id=ICLR.cc/2025/Conference#tab-..." userName="aseg" createdAt="2025/10/10 21:01:54" color="#45d325">}}




{{<matomeQuote body="本当それ。ICLRで論文がリジェクトされた時も、論文の核心概念を理解してないレビュアーにはいつも指摘できたよ。" userName="3abiton" createdAt="2025/10/10 22:49:05" color="">}}




{{<matomeQuote body="これは素晴らしい研究だね。読書リストに入れたよ。HNで共有してくれてありがとう。" userName="cs702" createdAt="2025/10/10 16:45:37" color="">}}




{{<matomeQuote body="根底にあるアルゴリズムはすごく深くは理解してないんだけど、デモとかページを見た感じ、これは主に画像関連タスク用のモデルなのかな？それともGPTやClaudeみたいに（チャット会話とか）も学習できるの？" userName="VoidWhisperer" createdAt="2025/10/10 10:33:52" color="#785bff">}}




{{<matomeQuote body="そう、拡散LLMみたいにDDN LLMも絶対いけるよ！[DDNとGPTを組み合わせる初期的な試み](https://github.com/Discrete-Distribution-Networks/Discrete-D...)をしたんだけど、トークナイザーなしでLLMが直接バイナリ文字列をモデル化できるようにしたんだ。モデルは生成の難しさによって出力のバイト長を調整できるんだよ。" userName="diyer22" createdAt="2025/10/10 11:24:22" color="#45d325">}}




{{<matomeQuote body="これがマジですごいのは、すごく一般的で自然な階層的手法なのに、かなり競争力があるってことだね。MLコミュニティがずっと探してたものって気がするよ。非生成的な用途（階層的埋め込みとか、Dewey’s decimalみたいな埋め込みを作る！）も超期待しちゃうね。" userName="vintermann" createdAt="2025/10/10 14:33:00" color="#45d325">}}




{{<matomeQuote body="まさにそれだよね！元の論文の「Efficient Data Compression Capability」の段落でも、”Taiji-DDNは、データを意味のあるバイナリ文字列（平衡二分木の葉ノード）に直接変換できる初の生成モデルだ”って強調されてるんだ。この特性、マジでわくわくするね。" userName="diyer22" createdAt="2025/10/10 14:43:42" color="">}}




{{<matomeQuote body="これってH-Net [1]かByte Latent Transformer [2]にちょっと似てるかもね。<br>1: https://arxiv.org/abs/2507.07955<br>2: https://arxiv.org/abs/2412.09871" userName="cubefox" createdAt="2025/10/10 19:53:31" color="">}}




{{<matomeQuote body="確かにそうかもね。LLMトークン化の制限を乗り越えて、真のエンドツーエンドモデルを目指してるって点では同じだ。でも、彼らの研究の方がずっと洗練されてるね。俺はGPT+DDNの概念実証を急いで作っただけだし。共有してくれてありがとう。" userName="diyer22" createdAt="2025/10/11 17:18:27" color="">}}




{{<matomeQuote body="このコメントに賛成票を入れたよ。君のアカウント、シャドーバンされてるみたいだけど、最近のコメントは問題ないと思うから、そのステータスを解除してもらうようにdangにメールするといいかもね。" userName="lukan" createdAt="2025/10/11 12:57:10" color="">}}




{{<matomeQuote body="投稿でこれに言及してるよ。<br>https://github.com/Discrete-Distribution-Networks/Discrete-D..." userName="booli" createdAt="2025/10/10 10:41:46" color="">}}




{{<matomeQuote body="最先端のモデルと比べてどうなの？スケールするの？" userName="p1esk" createdAt="2025/10/10 11:13:14" color="">}}




{{<matomeQuote body="DDNの最初のバージョンは、3ヶ月もかからずほぼ一人で開発されたんだ。だから実験は予備的なもので、結果もSoTAには程遠いよ。現在の研究目標はスケールアップだね。将来の方向性についてのブログの考察はこちら。<br>https://github.com/Discrete-Distribution-Networks/Discrete-D..." userName="diyer22" createdAt="2025/10/10 11:45:54" color="#45d325">}}




{{<matomeQuote body="このモデル、Diffusionモデルとは違う利点があるみたい。アート生成はまだDiffusionに劣るかもだけど、ゼロショットで構造もシンプルだから、エッジコンピューティングやデータ分析でめっちゃ使えそうじゃん。<br>特にGANと比べられてるのがアツい！GANって扱いにくいけど強力だし、モード崩壊を解決できたらかなり使える技術になりそうだよ。" userName="aDyslecticCrow" createdAt="2025/10/10 21:50:27" color="#ff5733">}}




{{<matomeQuote body="わかる！その通りだと思う！DDNの単一ショット生成アーキテクチャはDiffusionより効率的だし、エンドツーエンドで微分可能だから最適化しやすい。それにDDNはモード崩壊も本質的に回避できるんだよ。<br>これ、全部公式ブログにも書いてあるよ！詳しくはこちら：https://github.com/Discrete-Distribution-Networks/Discrete-D..." userName="diyer22" createdAt="2025/10/11 20:34:32" color="#45d325">}}




{{<matomeQuote body="全然知識ないんだけどさ、この木を枝刈りする生成の推論コストって問題にならない？MNISTの動画見て思ったんだけど、あの動画の各セルごとにフル推論が必要なの？それとも並列でやってるのかな？<br>なんかメモリと引き換えに”速い”実行時間（より正確な出力のため）ってことなのかな？" userName="throwaway314155" createdAt="2025/10/10 19:14:35" color="">}}




{{<matomeQuote body="その理解は間違ってるよ。動画でMNISTの例は、潜在空間の分布を可視化するために木の全リーフノードをサンプリングしてるだけなんだ。<br>通常使うときは、単一パスに沿ったL出力しか生成されないから、コストはそこまでかからないよ。" userName="diyer22" createdAt="2025/10/11 06:01:42" color="#ff33a1">}}




{{<matomeQuote body="これってテキストからオーディオへのモデルに使える？RVQを使うアーキテクチャを考えてるんだけど、RVQってまだ必要なのかな？" userName="cellis" createdAt="2025/10/10 17:39:16" color="">}}




{{<matomeQuote body="DDNはTTS（Text-to-Speech）タスクもいけると思うよ。テキスト条件があれば生成空間がかなり減るからね。<br>もっと強力なモデリングをするなら、GPTみたいなAutoregressive modelと組み合わせるのがおすすめだよ。" userName="diyer22" createdAt="2025/10/12 10:53:49" color="#ff5733">}}




{{<matomeQuote body="ちなみにICLRは、International Conference on Learning Representationsの略だよ。詳細はWikipediaを見てね：https://en.wikipedia.org/wiki/International_Conference_on_Le..." userName="mellosouls" createdAt="2025/10/10 20:01:15" color="">}}




{{<matomeQuote body="これ、きっと頓珍漢な質問なんだけどさ、なんでレイヤーの出力をGround Truthと比較してるの？Ground Truthって未知であるべきなんじゃない？" userName="ProjectArcturis" createdAt="2025/10/12 02:34:06" color="">}}




{{<matomeQuote body="ニューラルネットワークの学習中は、損失計算のためにGround Truth（GT）が必須なんだよ。<br>DDNではGTは損失計算とサンプリングのガイドにだけ使われて、モデルの入力にはならないから安心して。" userName="diyer22" createdAt="2025/10/12 05:57:52" color="#38d3d3">}}




{{<matomeQuote body="これって80％くらいVQ-VAEみたいなもんじゃない？" userName="serf" createdAt="2025/10/10 11:13:16" color="">}}




{{<matomeQuote body="いや、DDNとVQ-VAEは明らかに違うよ。似てるのは、両方ともデータを離散的な潜在空間にマッピングする点。<br>でも、VQ-VAEは外部の事前分布が必要で、コードブックは固定。DDNは階層的な離散分布を自分で作れるし、K個の出力は入力で変わる特徴になるんだ。<br>あと、VQ-VAEは2Dグリッドだけど、DDNは1D/ツリー構造。DDNはStraight-Through Estimatorもいらないし、ゼロショット条件付き生成もサポートしてるよ。だから、「80％同じ」ってよりは補完し合う関係だと思うな。（論文の「Connections to VQ-VAE」を見てみてね。）" userName="diyer22" createdAt="2025/10/10 12:17:34" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="実験手順について何か詳しいことってある？例えば、ハードウェアとかトレーニング時間、損失曲線とかさ。こういう詳細がないと、研究を再現するのが難しいんだよね。" userName="highd" createdAt="2025/10/10 15:19:56" color="#ff33a1">}}




{{<matomeQuote body="実験結果を再現しやすいように、ソースコードと重み、Docker環境を提供してるよ。オリジナルの論文のEXPERIMENTSセクションにハードウェア構成（8× RTX 2080 Ti）も載ってるから見てみてね。" userName="diyer22" createdAt="2025/10/10 15:48:59" color="#ff5c5c">}}




{{<matomeQuote body="すごいセットアップだね :)" userName="Zacharias030" createdAt="2025/10/10 17:41:23" color="">}}




{{<matomeQuote body="特徴と離散的な数字の両方が次の層に渡されてるみたいだけど、どっちを最初に考えたの？それとも最初から両方そうなるように設計したの？" userName="cttet" createdAt="2025/10/11 04:13:33" color="">}}




{{<matomeQuote body="「離散的な数字」っていうのは、各層で選ばれた出力のことだよね？「特徴」と「選ばれた出力」の両方とも、次の層に渡すように設計されてるよ。" userName="diyer22" createdAt="2025/10/11 04:24:56" color="#ff5733">}}




{{<matomeQuote body="あ、選ばれた出力のことね、ちょっと混乱してたんだ。じゃあ、最初の設計の段階から両方次の層に渡してたの？それとも、性能が良くなるって発見してからそうなったの？" userName="cttet" createdAt="2025/10/11 06:01:52" color="#ff5c5c">}}




{{<matomeQuote body="DDNのコンセプトの初期段階から、特徴は次の層に渡すって決めてたよ。幹の特徴を無効にするようなアブレーションは一度も試さなかったけど、それなしでもネットワークは学習すると思う。ただ、前の層ですでに計算された特徴を再利用しないのはもったいないよね。幹の特徴を残すことで、DDNはより効率的なシングルショットジェネレーターアーキテクチャも採用できるんだ。<br>あと、もっと深い理由として、拡散モデルとは違って、DDNは隣接する層間でマルコフ連鎖特性が必要ないっていうのもあるね。" userName="diyer22" createdAt="2025/10/11 06:24:05" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！あなたの直感が本当にすごいね！" userName="cttet" createdAt="2025/10/11 06:28:33" color="">}}




{{<matomeQuote body="ベースライン比較がないのに論文が受理されたのはおかしい。VQ-VAEやdiffusion inpaintingとか、もっと比較すべきだったんじゃない？" userName="gurtinator" createdAt="2025/10/10 13:40:17" color="">}}




{{<matomeQuote body="この論文の新規性が評価されたんだと思う。Reviewer r4YKも「このアプローチは誰も思いつかないだろう」って言ってるし、Sohl-Dicksteinのdiffusion論文だって最初は注目されなかったじゃん。それに、元の論文のTable 1でVQ-VAEとかと比較してるってば。引用元: https://openreview.net/forum?id=xNsIfzlefG&noteId=Dl4bXmujh1" userName="diyer22" createdAt="2025/10/10 13:57:32" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ面白いじゃん！すごい仕事だね、ICLR採択おめでとう！" userName="kaiokendev" createdAt="2025/10/10 16:04:58" color="">}}




{{<matomeQuote body="すごいな！つまり、画像の統計的なLLMってことなんだね。" userName="wordglyph" createdAt="2025/10/10 20:40:13" color="">}}




{{<matomeQuote body="particle filtersを思い出すね。" userName="v9v" createdAt="2025/10/11 15:55:09" color="">}}




{{<matomeQuote body="おいおい、ICLRのレビューって今でしょ。ワークショップに採択されたの？なんで採択されたってわかったんだよ？" userName="Der_Einzige" createdAt="2025/10/10 12:49:13" color="">}}




{{<matomeQuote body="ICLR 2026のレビューは今（かもうすぐ）だよ。この論文はICLR 2025に採択されたんだ。" userName="albertzeyer" createdAt="2025/10/10 12:52:51" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃクールな生成モデルの統計的背景について、俺の考えをまとめたよ。<br>ゴリゴリ数式で分析した結果、目的関数はL2距離と `N * Log(K)` の情報量で構成されてるってことがわかった。ここから3つの結論。1) Split-and-Mergeは統計的に重要だけど、勾配ベース最適化器との関係がスケーラビリティのカギ。詳細な分析が必要だね。2) 統計的には、最終出力とDのL2距離が一番重要で、中間層のL2損失は補助的だから、最終L2損失をもっと重くするべきかも。3) 今後、KやNを動的に決めるRLとか、部分的な情報を扱えるようにする発展も期待できるね。" userName="elchananHaas" createdAt="2025/10/10 18:42:24" color="#ff5733">}}




{{<matomeQuote body="中間L2損失が重要な理由について考えてみたんだ。初期層は情報が少ないからL2損失も大きくて画像はボケるけど、深い層ではargminからの情報がメインになるから、中間層のL2損失は、ある程度情報があるけどまだ未知の部分が大きいときに良いトレーニング信号になるんだ。<br>このモデルは、深さ1からNまで積み重ねられたN個のDiscrete Distribution Networksが同時に学習されてるって考えられるね。" userName="elchananHaas" createdAt="2025/10/10 20:04:33" color="#ff33a1">}}




{{<matomeQuote body="この生成モデルのアプローチだと、各レイヤーで均一な確率で出力が選ばれないとダメだし、入力に依存せず均一に出力される必要もあるんじゃない？条件付き確率で多様性の増加が崩れるケースが心配だよ。<br>Split-and-Pruneがいい近似になってるかもしれないけど、勾配と一緒に最適化を助けて、多様性をバランスよく保ってる気がするな。" userName="elchananHaas" createdAt="2025/10/10 20:33:43" color="#ff33a1">}}




{{<matomeQuote body="DDNが他の生成モデルとどう違うか、俺も考えてたんだよね。複数出力を一度に生成するのは速そう！GANsと比較してモード崩壊はどう？ゼロショット条件付き生成の仕組みも気になるな。1D離散表現ってどうなの？Split-and-Prune optimizerがAdamとかSGDと比べてどうかも見たい。高解像度画像でのスケーラビリティも気になるけど、これは生成モデルの方向を変えるかもね。コードを見るのが楽しみ！" userName="curtistyr" createdAt="2025/10/10 13:49:03" color="#38d3d3">}}




{{<matomeQuote body="興味持ってくれてありがとう！GANsとの比較とモード崩壊はブログのQ2を見てね: https://github.com/Discrete-Distribution-Networks/Discrete-D...<br>スケーラビリティについては同じブログの“Future Research Directions”を読んで: https://github.com/Discrete-Distribution-Networks/Discrete-D...<br>それ以外の質問は元の論文に答えが書いてあるから、そっちを見てね: https://arxiv.org/abs/2401.00036" userName="diyer22" createdAt="2025/10/10 14:35:48" color="#38d3d3">}}




{{<matomeQuote body="論文でなんで「we」って自分たちのことを呼んでるの？" userName="Invictus0" createdAt="2025/10/10 20:06:22" color="">}}




{{<matomeQuote body="俺が大学時代に論文を書いたとき、教授に『we』を使うのは論文のスタイルだって教わったよ。一人称複数形で現在形ってね。" userName="Uehreka" createdAt="2025/10/10 20:08:59" color="">}}




{{<matomeQuote body="OPじゃないけど、俺も学術論文では一人で書いてても『we』を使うように教わったんだ。でも、最近は指導が変わって、一人称単数形を使うのが普通になってるのかもね。Redditとかでもそういう議論を読んだばかりだよ。" userName="mindcrime" createdAt="2025/10/11 05:54:33" color="">}}




{{<matomeQuote body="Figure 18でTaiji-DDNと古代中国の太極哲学を結びつけてるけど、個人的にはちょっと印象悪いな。枝分かれ構造って普遍的なアイデアだから、太古の格言じゃなくてもっと普通の例と結びつけた方がよかったんじゃない？" userName="E-Reverance" createdAt="2025/10/10 23:05:28" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
