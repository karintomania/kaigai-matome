+++
date = '2025-08-08T00:00:00'
months = '2025/08'
draft = false
title = 'AIはすべてローカルに置きたい！オフラインAIワークスペース構築の全貌'
tags = ["AI", "ローカルAI", "オフラインAI", "開発", "データ管理"]
featureimage = 'thumbnails/purple3.jpg'
+++

> AIはすべてローカルに置きたい！オフラインAIワークスペース構築の全貌

引用元：[https://news.ycombinator.com/item?id=44840013](https://news.ycombinator.com/item?id=44840013)




{{<matomeQuote body="すごい仕事だね！ローカルAIワークスペースで、プライベートな環境のためのサンドボックス実行層に焦点を当ててるのが素晴らしい。coderunnerも超便利そう。知識層だとストレージが課題で、数年分のメールのベクトルDBは50GB超えも。俺たちはBerkeleyでLEANNっていうインデックスを作ったんだ。埋め込みを保存しないからストレージを97%削減できるぞ。これと組み合わせれば、本当に「ローカルJarvis」が実現すると思うね。コード: https://github.com/yichuan-w/LEANN<br>論文: https://arxiv.org/abs/2405.08051" userName="andylizf" createdAt="2025/08/08 20:14:45" color="#ff33a1">}}




{{<matomeQuote body="数年分のメールのベクトルDBが50GB超えって話だけど、2025年には、それはそんなに大きな要件じゃないと思うけどな。" userName="doctoboggan" createdAt="2025/08/08 20:31:04" color="">}}




{{<matomeQuote body="ああ、一見すると納得できる点だね。でも50GBは始まりにすぎないんだ。真の「ローカルJarvis」は、コードやドキュメント、チャット履歴など全部をインデックスする必要がある。生データで数百GBいくし、従来のインデックスだと500GB超えも。これはもはや「大したことない」要件じゃない。ノートPCだとドライブも交換できないことが多いし、重い負担になるんだ。だから俺たちは、ローカルAIをただ可能にするだけでなく、軽量で持続可能にすることに焦点を当てたんだよ。" userName="andylizf" createdAt="2025/08/08 20:54:47" color="#ff5733">}}




{{<matomeQuote body="君の目的は誠実だろうけど、ローカルAIを目指す人は通常4TB以上の高速SSDストレージを持ってるよ。LLMを使う層は、小さいモデルで遊ぶのを越えると、ハードウェアや専門知識の要求が指数関数的に増えるんだ。 enthusiast（愛好家）たちの投資を考えると、数TBの高速ストレージなんて他の費用に比べたら大したことないだろ。君の仕事は価値があるけど、このシナリオでストレージ容量が最強のカードじゃないと思うね。" userName="PeterStuer" createdAt="2025/08/09 06:12:59" color="">}}




{{<matomeQuote body="検索インデックスが元のデータより大きいって変な感じするね。検索インデックスって、データに素早くアクセスするための効率的な形式じゃなかったっけ？" userName="oblio" createdAt="2025/08/08 21:25:24" color="">}}




{{<matomeQuote body="便利なローカルLLMを動かすには、すでに高性能なハードウェアが必要なんだから、200GBのベクトルDBが決定的な問題になるとは思わないな。でも、圧縮と量子化でどれくらい小さくできるかは気になるね。" userName="notsylver" createdAt="2025/08/09 02:02:29" color="">}}




{{<matomeQuote body="その論文は違うんじゃないかな…これのことだと思うけど: https://arxiv.org/abs/2506.08276" userName="mccoyb" createdAt="2025/08/09 01:15:08" color="">}}




{{<matomeQuote body="効率に焦点を当てて、より良い方法を見つけることから、誰もが恩恵を受けるんだ。4TB以上の高速ストレージを持つ人も、「底辺層」の人たちも、以前よりできることが増えることになる。物事が速く安くなるのを待つんじゃなくて、より少ないものでより多くのことをする方法を見つける人がいるのは、いつでも新鮮でいいね。" userName="imoverclocked" createdAt="2025/08/09 06:31:06" color="#ff33a1">}}




{{<matomeQuote body="勝手に決めつけるなよ！もし俺のベクトルを保存するのに500GBも必要になったら、既存のデータに加えて、それは俺にとって巨大な障壁になるよ。" userName="brabel" createdAt="2025/08/09 08:05:18" color="">}}




{{<matomeQuote body="もちろん、それは分かってるし、異論はないよ。例えば、推論ランタイムが4%速くなればそれは嬉しい勝利だ。でもそれが選択の決定打になるかって？ ボトルネックになってるならそうだろうね。僕が伝えたかったのは、個人メールとかの話なら、50GBや500GBのストレージ要件が主要な制約になる人なんてほとんどいないってこと。だから、このユースケースでは他の点をアピールした方がマーケティング的に良いんじゃないかって提案しただけさ。" userName="PeterStuer" createdAt="2025/08/09 06:45:09" color="#785bff">}}




{{<matomeQuote body="いやいや、ワークフロー全部をローカルにするなんて、P=NP問題を解くようなものだよ。" userName="johnfn" createdAt="2025/08/09 01:17:13" color="">}}




{{<matomeQuote body="これは大規模なローカルAIをマジで実用的にするのに、めちゃくちゃ役立ちそうだね。" userName="wy1346" createdAt="2025/08/09 07:04:42" color="">}}




{{<matomeQuote body="良い点だね！もしかしたら「インデックス」って言葉が悪いのかもしれない。これはむしろ特徴抽出に近いよね（そしてエンベディングは高次元だから、たくさんの特徴を抽出してるわけだ）。そう考えると、「インデックス」が元データよりスペースを取るのも納得できるね。" userName="iezepov" createdAt="2025/08/09 04:26:41" color="#45d325">}}




{{<matomeQuote body="RAGのために500GB以上を検索しなきゃいけないって事実を君は見過ごしてるぞ。それじゃ painfully slow だしCPUも食う。目標はLLMのコンテキストにデータを追加するための高速な検索なんだ。ストレージ容量だけがDBサイズを最小化する理由じゃないんだよ。" userName="ricardobeat" createdAt="2025/08/09 10:03:24" color="#ff33a1">}}




{{<matomeQuote body="インデックスする対象のデータを16〜20倍してみて。それがベクターDBの合計サイズのだいたいの目安になるよ。" userName="snoman" createdAt="2025/08/09 16:27:44" color="#ff33a1">}}




{{<matomeQuote body="俺、26TBのHDD持ってるから、50GBなんて怖くないんだけど。それとも心配するべき？" userName="unixhero" createdAt="2025/08/09 01:43:07" color="">}}




{{<matomeQuote body="目立つようにここに書いとくね: Playwrightじゃなくてpatchrightを使ってみて。URLはこれだよ: https://github.com/Kaliiiiiiiiii-Vinyzu/patchright" userName="OldfieldFund" createdAt="2025/08/09 11:06:18" color="#38d3d3">}}




{{<matomeQuote body="4TBの外付けドライブが£100、1TBのSDカードやUSBスティックも同じくらいの値段だね。たぶん「速い」ってのが何を意味するのか、俺には理解できない歳なのかもしれないけど、ストレージはstripeすればもうそんなに大きなコストじゃないように思えるんだけど。" userName="hdgvhicv" createdAt="2025/08/09 08:17:36" color="#45d325">}}




{{<matomeQuote body="これ、Apple限定なのがマジでうざいね。僕のメイン開発機はMacBookだけど、Dockerコンテナだったらもっともっと便利だったのに。DockerコンテナはAppleコンテナよりはまだマシかな。DockerはVMレベルのセキュリティじゃないけど、ローカルAIが生成したコードを動かすには十分だよ。DEFCONラスベガスレベルのセキュリティなんて必要ないしね。<br>それにDockerは、僕のWindowsゲーミングマシン（WSL Ubuntuで高速GPU搭載）でも動くし、ウェブサイトを動かしてるクラウドのLinux VPSでも動く。そしてほとんどの人が基本的なDockerコマンドはもう全部覚えてるはずだ。<br>これ、コピペして数回実行して、必要なら削除できるような、単一のDockerコマンドだったらもっともっと良かったのに。" userName="jychang" createdAt="2025/08/09 09:14:14" color="#ff5c5c">}}




{{<matomeQuote body="patchrightって何を解決するの？" userName="bamboozled" createdAt="2025/08/09 12:23:16" color="">}}




{{<matomeQuote body="埋め込みは全然知らないんだけど、クラウド埋め込みでこの“剪定されたグラフ”ってアプローチを使ってるプロジェクトってある？" userName="sebmellen" createdAt="2025/08/08 20:24:35" color="">}}




{{<matomeQuote body="500GBを検索するわけじゃないよ。ベクターのインデックスを検索するんだ。それが埋め込みとベクターデータベースのすごさなんだよ。50TBのリレーショナルデータベースでも、特定の検索は数MBしか使わないのと一緒だよ。" userName="brookst" createdAt="2025/08/09 13:45:38" color="#45d325">}}




{{<matomeQuote body="なんで今ってこうなってるの？<br>ベクターインデックスは元のテキストに情報を追加しないし、テキストは冗長で可逆圧縮もできるよね。それにベクターインデックスってすでに損失がある近似的なものなんだから、概念的にはインデックスのサイズは対象のほんの一部になるはずじゃない？" userName="jononor" createdAt="2025/08/10 13:55:19" color="#785bff">}}




{{<matomeQuote body="RAGが個人のデジタル痕跡を扱うのがなんで関係あるの？<br>ローカルにデータを置くのと、みんなを情報バブルに閉じ込めるのは別の話だよ。昔のメールをすぐ見つけられるのはいいけど、デバイスが過去の履歴で思考を誘導し始めたら、それがローカルだろうがリモートだろうが関係ない。自発的な思考が乗っ取られちゃうんだ。マインドセットのディストピアでは、デバイスが君に命令するようになるよ。" userName="psychoslave" createdAt="2025/08/09 10:02:54" color="#ff33a1">}}




{{<matomeQuote body="なんで埋め込みってデータより高次元になるの？<br>埋め込みは、いろんなソースデータよりもエントロピーが高くて（つまり冗長性が低くて）いいと思うんだけどな。" userName="catlifeonmars" createdAt="2025/08/09 05:06:29" color="#38d3d3">}}




{{<matomeQuote body="パフォーマンスのためにはRAMに置きたいと思うけど、もっと詳しい人がいたら教えてほしいな。" userName="technocratius" createdAt="2025/08/09 07:34:34" color="">}}




{{<matomeQuote body="それって今のAAAゲーム2、3本分くらいのサイズだよね。" userName="42lux" createdAt="2025/08/12 12:10:59" color="">}}




{{<matomeQuote body="ローカルだから、この動作は制御できるはずだよね。個人的には、自分のファイルを探って貴重な個人情報を教えてくれるってオプションは魅力的だと思うよ。" userName="solarkraft" createdAt="2025/08/09 13:48:36" color="#ff5c5c">}}




{{<matomeQuote body="俺も開発者じゃないけど、ラップトップから家PCでLaTeX使うためにリモートSSHログイン設定したよ。ゲームやデュアルブートしてるのに2TBのNVME SSDにまだ空き容量あるし、マザーボードにも2つ差せるんだ。LaTeXとパッケージのインストールは時間かかるし容量も食うから、128GBのドライブじゃ無理だったな。" userName="wafflemaker" createdAt="2025/08/09 13:18:24" color="">}}




{{<matomeQuote body="記事の『LLMでもうまくいかなかった』ってとこは、ネイティブアプリの学習データが少ないせいだよ。ブログ記事やチュートリアルが少ないし、オープンソースもモバイルやWebに比べてわずかだ。昔はMicrosoftがWindows向け開発本を書いてたけど、今はその業界はほぼ死んでる。この学習データの穴はどんどん深刻になるぞ。そもそもネイティブデスクトップアプリ開発はキャリア的に行き詰まってるから、やりたがる人も少ないんだ。90年代はWindowsデスクトップアプリ開発は有望だったけど、今はMicrosoftやApple、AdobeとかAutodeskみたいなレガシーなとこ以外、仕事はほとんどないよ。" userName="com2kid" createdAt="2025/08/08 20:21:49" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="あんたは記事の次の重要な文脈を見落としてるよ。『NextJSアプリをElectronでラップしようとしたが、まともな方法はなく諦めた』ってとこ。彼らは完全にネイティブアプリを作ってたわけじゃないんだ。NextJSのWebアプリをElectronというクロスプラットフォームツールに入れようとしてただけ。だから、ネイティブアプリ開発の学習データがいくらあっても役立たなかっただろうね。最近のJSフレームワークと比較的最近のクロスプラットフォームツールを使ってるから、そもそも両者が連携するように作られてなくて、GitHubに少し問題解決のコードやIssueがあるくらいで、学習データなんてほとんど存在しないだろうね。" userName="Aurornis" createdAt="2025/08/09 14:57:30" color="#ff5c5c">}}




{{<matomeQuote body="俺もそれが変だと思ったよ。ネイティブMacOSアプリとして実装されたChatGPTクローンはたくさんあるんだ。この記事の主な進歩は、ローカルツール利用のための新しいContainer Swift APIを使っていることだね。その機能は、https://github.com/Renset/macai、https://github.com/huggingface/chat-macOS、https://github.com/SidhuK/WardenApp、https://github.com/psugihara/FreeChat のどれにとっても良い貢献になるだろうな。" userName="pbronez" createdAt="2025/08/09 16:46:02" color="#785bff">}}




{{<matomeQuote body="彼らは自分たちが知ってること（Webアプリ開発）から始めて、後でそれをスタンドアロンアプリにしようとしたんだと思うよ。" userName="Aurornis" createdAt="2025/08/09 17:53:54" color="">}}




{{<matomeQuote body="『ネイティブアプリの学習データが少ない』って話だけど、実際、最近はデスクトップのネイティブアプリってほとんどないからな。ほとんどのアプリはモバイルかCLIかWebベースだろ。CLIアプリの書き方に関する情報の方がGUIアプリより多いと確信してるよ。" userName="WhyNotHugo" createdAt="2025/08/09 23:33:55" color="">}}




{{<matomeQuote body="HPC以外でわざわざ作る意味ある？ブラウザが世界で一番普及してるVMなのにさ。" userName="thorncorona" createdAt="2025/08/08 21:52:27" color="">}}




{{<matomeQuote body="ブラウザが気持ち悪いからだよ。使わなければ、パフォーマンスもセキュリティもかなり取り戻せるんだ。" userName="esseph" createdAt="2025/08/09 02:26:04" color="">}}




{{<matomeQuote body="確かに、でもそうすると単一プラットフォームに縛られるだろ。MLにおけるC++とPythonの議論みたいなもんだよ。低レベルで高速、最適化されたネイティブコードで全部書くのが理想なのはわかるけど、そんな時間もスキルも持ち合わせてる奴なんてほとんどいないんだよな。" userName="moffkalast" createdAt="2025/08/09 09:06:38" color="#ff5733">}}




{{<matomeQuote body="この10年で「スキル不足」がマジで深刻な問題になってるって感じるよ。<br>どの会社にいても、他の会社の同僚と話してても、ジュニアのプログラマー／システムアドミン／ネットワークエンジニアとかのしっかりした採用が全然ないんだ。<br>これってマジで最悪で、教えるべき若手がほとんどいないから、後任補充もすごく大変になってる。<br>ジュニアポジションがあっても、それはオフショアリングへのお金の流れでしかないし、結果も大抵イマイチ。知識移転の問題を長期的かつ有意義に解決するようにはなってないんだよね。" userName="esseph" createdAt="2025/08/09 19:52:50" color="#38d3d3">}}




{{<matomeQuote body="クロスプラットフォームのツールキットは（まだ）ちゃんとあるよ。" userName="senko" createdAt="2025/08/09 09:09:28" color="">}}




{{<matomeQuote body="最近GTKアプリ作ろうとしたんだけど、試したどの言語もバインディングがイマイチだったんだ。<br>だから結局、PythonとDjangoでローカルファーストの静的ウェブアプリにすることにしたよ。全部サーバーサイドでレンダリングして、状態はDBに保存。もし完成したら、オンラインにも簡単に移行できるはず。そして、もしかしたら会員登録機能も…って感じかな。" userName="zelphirkalt" createdAt="2025/08/10 09:06:05" color="#45d325">}}




{{<matomeQuote body="そうそう、今じゃElectronって言うよね ;)<br>Qtはマジで使いづらいから、なんか避けてほしいのかってくらいだわ。" userName="moffkalast" createdAt="2025/08/09 09:33:38" color="">}}




{{<matomeQuote body="全く同意できないね。<br>Qtでプログラミングするのがどれだけ楽しいか、俺のブログ記事で詳しく書いたから見てくれ: https://rubymamistvalove.com/block-editor" userName="rubymamis" createdAt="2025/08/14 10:23:02" color="#45d325">}}




{{<matomeQuote body="てか、スマホのアプリって全部ウェブアプリじゃないでしょ？（てか、うわっ）" userName="esseph" createdAt="2025/08/09 02:26:33" color="">}}




{{<matomeQuote body="主にネイティブアプリの方がウェブアプリよりもずっと露骨に追跡できるからだよ。企業はあんたの個人データに飢えてるんだ。" userName="jakelazaroff" createdAt="2025/08/09 04:05:23" color="#ff5c5c">}}




{{<matomeQuote body="それには同意できないな。<br>バッテリー持ちも体験もネイティブアプリの方がずっと良いよ、特に旅行中とか電波悪い場所ではね。<br>ウェブサイトでもCookieで常に追跡されるし、最近のテレメトリーも結構ヤバいよ。" userName="esseph" createdAt="2025/08/09 06:47:36" color="#ff33a1">}}




{{<matomeQuote body="「バッテリー持ちが良い...」ってさ、親コメントはプライバシーの話してるのに、最初の反論がプライバシーと関係ないバッテリー持ちなの？<br>ネイティブアプリの追跡やテレメトリーはブラウザよりはるかに多いよ。<br>それに、多くのアプリがバックグラウンドで動きっぱなしなのも問題。<br>なんで企業はアプリダウンロードさせて割引提供したり、天気アプリがスパイウェアなのに天気サイトはそうじゃないのか、金の動きを見れば分かるよね？" userName="sillyfluke" createdAt="2025/08/09 11:58:54" color="#ff5733">}}




{{<matomeQuote body="Androidアプリがデフォルトで取得できる権限って、結構ヤバいんだよね。<br>他のアプリやプロセスを勝手に調べたりとかさ、俺の記憶が正しければだけど…" userName="r_lee" createdAt="2025/08/09 07:36:14" color="#785bff">}}




{{<matomeQuote body="みんながWeb開発者になりたいわけじゃないんだよ。俺はIEC 61131とかCとかPerlとかLispを書いてるし、JavaScriptは正直勘弁してほしいね。" userName="spauldo" createdAt="2025/08/09 05:33:25" color="">}}




{{<matomeQuote body="オフィス環境だと、Webアプリみたいなクソなパフォーマンスじゃなくて、もっと性能が重要になるんだよ。" userName="anthk" createdAt="2025/08/09 09:12:26" color="">}}




{{<matomeQuote body="LLMのセルフホスティングはFLOSS運動みたいに大事になると思うけど、今はハードウェアがボトルネックだよね。特に80b+のモデル動かすには、一般消費者向けにはRAMが全然足りてない。Mac miniは良いって聞くけど、十分なRAM積んだらもうコンシューマー向け価格じゃないし。みんなHome Cluster（例えばExo [0] https://github.com/exo-explore/exo）作ってるけど、実用的とは言えないし、値段も手が届かない。Frameworkは最大128GBのRAMを積めるデスクトップを発表したけど、これも2000～2500ドルくらいするよ。" userName="t_mann" createdAt="2025/08/09 11:50:53" color="#38d3d3">}}




{{<matomeQuote body="小型モデルの効率化とハードウェアの進化で、数年後にはローカルLLMのベストタイミングが来ると思うよ。みんなMac Studioで512GB RAMを1万ドルで買えるって言うけど、出力速度では月2ドルのクラウドGPUサーバーには勝てないし、LLMプロバイダーの月20ドルのプランより品質も速度も劣る。ローカルで動かす理由は、プライバシーや規制が必要な場合か、趣味で速度や品質より自分で動かすことを重視する熱心な人だけだね。Frameworkは知名度あるけど、AMD Strix Halo搭載でGMKTEC（https://www.gmktec.com/products/amd-ryzen%E2%84%A2-ai-max-39...）とか、同じような選択肢は増えてるよ。これらは供給不足で今はちょっと高いけど、供給が改善すれば値段も下がるはず。メモリ帯域はまだ限定的だし、128GB版が1000ドルまで下がれば買うけど、2000～3000ドルならM4 MacBook Proに128GB RAM積んでアップグレードする方が良いかな。" userName="Aurornis" createdAt="2025/08/09 14:46:35" color="#ff5c5c">}}




{{<matomeQuote body="価格はまだ下がってるし、このままいけば5年以内には2000ドル以下のノートPCでも十分なRAMを積めるようになるんじゃないかな。問題はモデルのサイズがどんどん大きくなるかどうかだよね。もし有用なモデルサイズがどこかで頭打ちになれば、多くの人が簡単にローカルで動かせるようになるけど、ずっと大きくなり続けるならそうはいかない。今見てる一番大きいモデルは405gくらいで、量子化すれば256g RAMに収まるよ。将来的には、LLM専用のカスタムハードウェアアクセラレーター、つまりASICが出てくるんじゃないかと期待してる。それが手頃な価格になれば、USB-Cで繋ぐ小さなアクセラレーターボックスが1000ドル以下で、巨大なLLMを速く少ない電力で動かせるようになるかもね。GPUはバッチ推論に一番効率的だからホスティング向きなんだ。俺が言いたいのは、小規模またはシングルバッチ推論をすごく速く少ない電力で動かすための、もっと軽いチップのこと。そこでのボトルネックはメモリ帯域だから、多分高速なRAMがそういうデバイスのコストの大部分を占めるだろうね。" userName="api" createdAt="2025/08/09 14:19:45" color="#ff33a1">}}




{{<matomeQuote body="GPUって、3DシーンもLLMの計算もやるから、もう実質ASICみたいなもんじゃないの？" userName="m-s-y" createdAt="2025/08/09 16:18:24" color="">}}




{{<matomeQuote body="Exoって一体どうなの？捨てられててメンテナンスされてないプロジェクトだって聞いたけど。高速RAMは、リアルタイムで使える応答が欲しいって強く願わない限り、そんなにたくさんはいらないよ。もし”良い”モデルが一晩とかそれくらいで動かせれば満足なら、かなり低スペックなハードウェアでももっとうまく使える方法があるんだ。" userName="zozbot234" createdAt="2025/08/09 12:47:00" color="">}}




{{<matomeQuote body="Jeff GeerlingがちょうどFramework Desktopのメインボード4台のクラスターに関する動画を公開したよ。彼はExoにかなりの労力を費やしたけど、結論はVCラグプルだね…注目を集めた途端に放棄されたんだ。彼は他にもいくつかのオープンソースAIスケールアウトライブラリを試したけど、それらは伝統的な科学クラスタコンピューティングのツールより全般的にずっと未熟だって言ってたよ。https://www.jeffgeerling.com/blog/2025/i-clustered-four-fram..." userName="pbronez" createdAt="2025/08/09 15:00:45" color="#785bff">}}




{{<matomeQuote body="Exoの創設者たちはデベロッパーコミュニティをゴースト化してクローズドソースにしちゃったんだ。誰も彼らから連絡を聞いてないよ。Exoを勧め続けるのはやめて、代わりにGPUStackをチェックしてほしいな。これもまた、開発者たちが人気を集めた途端の”ラグプル”だね。" userName="flanger" createdAt="2025/08/09 14:56:15" color="#ff5c5c">}}




{{<matomeQuote body="なんでデベロッパーコミュニティは、プロジェクトを新しい名前でフォークして、きちんとメンテしないんだろうね？FLOSS開発では、サードパーティーのプロジェクトを引き継ぐのは完全に普通のことなのに。" userName="zozbot234" createdAt="2025/08/09 15:14:07" color="">}}




{{<matomeQuote body="Exoの代替になりそうなのがいくつかあるみたいだよ。これとか。https://github.com/b4rtaz/distributed-llama とか https://github.com/ray-project/ray" userName="fouc" createdAt="2025/08/09 15:51:22" color="#45d325">}}




{{<matomeQuote body="もし一台のマシンのRAMに収まらないモデルを動かすのが目的なら、Exoは機能するよ。機能はする。でも、遅い相互接続（40GbpsのThunderboltでもね）がTtFTもtokens/secondも厳しく制限するんだ。数日間徹底的に試したけど、結局M3 Ultra Mac Studioを一台買って、最高に快適な生活を送ってるよ。" userName="m-s-y" createdAt="2025/08/09 16:14:08" color="#ff5733">}}




{{<matomeQuote body="それでもRAMはたくさん必要だよね？だから、そんなに安くはならないんじゃない？どんなスペックが必要なの？" userName="graemep" createdAt="2025/08/09 12:51:12" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これって、すごく考えることだったから、この記事を書いてくれて感謝してるよ。今の時代、プライバシーを手に入れる上での”摩擦”って、本当に驚くほど大きいよね。" userName="shaky" createdAt="2025/08/08 18:39:09" color="">}}




{{<matomeQuote body="「今のプライバシーを手に入れる上での”摩擦”の量」についてだけど、俺はこれ理解できないな。ターミナルでいくつかコマンド打つだけでローカルLLMを動かすのは簡単だよ。ローカルLLMランナーもいくつか選べるし。この記事はサンドボックスコード実行とかブラウザ自動化の追加ツールも紹介してるけど、ローカルLLMを始めるのにそれらは必要ないよ。ローカルオプションは色々あるし、これは始めやすいよ。https://ollama.com/" userName="Aurornis" createdAt="2025/08/09 14:51:12" color="#ff5c5c">}}




{{<matomeQuote body="「ローカルLLMを動かすのが簡単」って、それって何割の人にとって簡単ってこと？" userName="apitman" createdAt="2025/08/10 14:28:48" color="">}}




{{<matomeQuote body="多分、この記事はAIをテック大手に任せきりにせず、自分でシステム組んで動かすことを言いたいんじゃないかな。所有権を自分で持つってことだろ。" userName="frank_nitti" createdAt="2025/08/08 19:29:57" color="">}}




{{<matomeQuote body="データが家に留まるから、完全なプライバシーが手に入るのがローカルAIのいいところだね。クラウドだとプロバイダーを信用するしかないし。これは自由とプライバシーの問題だよ。" userName="Imustaskforhelp" createdAt="2025/08/08 19:33:32" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、システム全体がめっちゃテレメトリーを送信してるじゃん。" userName="doctorpangloss" createdAt="2025/08/08 20:05:32" color="">}}




{{<matomeQuote body="ローカルでAIをセットアップして動かすのは、めちゃくちゃモチベーション上がるし、やりがいがあるよね。ネットを切っても全部動くのを見ると、最高に楽しい！" userName="frank_nitti" createdAt="2025/08/08 20:37:47" color="">}}




{{<matomeQuote body="NVIDIAドライバーやWindows、macOSも、pipパッケージやモデルも全部テレメトリーを送ってるぞ。GitHubでのMicrosoftのデータ収集は？ローカル設定じゃプライバシーの問題は解決しないって。" userName="doctorpangloss" createdAt="2025/08/10 04:01:17" color="#ff5c5c">}}




{{<matomeQuote body="話がズレてるかも。セットアップはテレメトリーを使うソフトが多いけど、オフラインインストーラーとかでエアギャップ環境は作れるだろ？俺が言いたかったのは、ネットを切れば実行時のテレメトリーはゼロってことだよ。" userName="frank_nitti" createdAt="2025/08/10 05:37:57" color="#ff5733">}}




{{<matomeQuote body="クラウドAIプロバイダーがデータを使わないと信用するしかないって言うけど、彼らは違法にTorrentしたり、無許可でクロールしたりしてるんだぜ。大手メディアの権利も無視するのに、T＆Cに書いてるからって個人の権利を尊重するわけないだろ。OpenAIも「削除したチャットも保存してる」って認めてるし。" userName="wkat4242" createdAt="2025/08/09 02:48:14" color="#785bff">}}




{{<matomeQuote body="同意するけど、企業が言ってる安全性を守らないと誰も使わなくなるって意見も聞いたな。でも君に同意だよ。彼らはもう違法なことしてるし、これくらいやるかもね。だからローカルが重要なんだって言いたかったんだ。そういう心配がなくなるからね。" userName="Imustaskforhelp" createdAt="2025/08/09 06:59:24" color="#38d3d3">}}




{{<matomeQuote body="企業が約束破ってもそこまで反発ないんじゃないかな。みんな慣れてるし、プライバシー気にしない人も多い。GoogleやMetaも使われ続けてるし、OpenAIも暴露されても使用量に影響ないだろ。でも君の言いたいことはわかるよ！" userName="wkat4242" createdAt="2025/08/09 11:05:20" color="">}}




{{<matomeQuote body="今、LLMをローカルで動かすのは、ソフトウェアよりもハードウェアの方がネックになってるんじゃない？良いLLMをローカルで動かすハードウェアって、$2000（Strix Halo／AI Max 395とか）からかかると思うんだ。Strix Haloが何回か改良されたら、かなり楽になるんじゃないかな。" userName="noelwelsh" createdAt="2025/08/08 18:44:28" color="">}}




{{<matomeQuote body="$2000のハードウェアで「良い」LLMが動くか、まだ疑問だね。魔法みたいにすぐ動くのが理想なのに、遅くて結果がイマイチだと、正直価値がなくなっちゃう。ローカルモデルはかなり進化したけど、コーディングだとClaudeレベルには程遠いよ。最近QwenやGLMの最新モデルをOpenRouterで試したけど、Claude 3.0とだいたい同じくらいに感じたな。ベンチマークと現実は全然違う話だよね。" userName="ramesh31" createdAt="2025/08/08 18:53:03" color="#ff5c5c">}}




{{<matomeQuote body="これは急速に改善されてるみたいだよ。<br>https://simonwillison.net/2025/Jul/29/space-invaders/" userName="colecut" createdAt="2025/08/08 18:47:04" color="">}}




{{<matomeQuote body="このまま着実に改善が進んでくれるといいな！ホームラビングコミュニティに全般的に役立つような、もっとたくさんの改善をLLMに詰め込む余地がまだあることを願うよ。" userName="Imustaskforhelp" createdAt="2025/08/08 19:35:19" color="">}}




{{<matomeQuote body="私はやっぱりローカル派だけど、最近Cerebrasや（Groqについても聞いたことあるけど）1000 tk/sとかで動くのを試してみたら、自分の考え方がかなり変わって、すごくせっかちになっちゃったよ。<br>Cerebrasはデータをログしないって言ってるし、スポンサーじゃないけど（そうだったら良いのに！）正直かなり良い。でも、スピードもいつか本当に大きく改善されることを願うな。Diffusion modelsはアーキテクチャ的に本当に速いみたいだね。" userName="Imustaskforhelp" createdAt="2025/08/08 19:37:33" color="#ff33a1">}}




{{<matomeQuote body="Cerebrasが「データをログしない」って言ってるけど、判事が「全部ログしろ、無期限に」って言うまでは、だよね。" userName="vgb2k18" createdAt="2025/08/09 04:51:57" color="">}}




{{<matomeQuote body="すごくクールで、よく考えられてるね！私もクラウドと完全にローカルな環境を、BYO[API] Keyモデルで簡単に切り替えられるようにする、似たようなものを作ってるんだ。データや設定、プロンプトは全部ローカルに保存されて、プロバイダのAPIコールは直接ルーティングされるよ（うちのサーバーを経由することは決してない）。今はブラウザ内で完全にローカルなモデル推論にMLC-LLMを使ってて、Qwen3-1.7bがすごく良い感じだよ！<br>https://hypersonic.chat/" userName="mkummer" createdAt="2025/08/08 19:37:02" color="#45d325">}}




{{<matomeQuote body="君の製品のブランドとブログ記事に少し混乱してるんだけど？製品のホームページを見ると、クラウドでVM（Firecrackerみたいに）を動かしてるって想像するよ。でもブログ記事だと、Apple独自のVMでローカル実行してるみたいに見えるんだ。前者を作った者として、新しいgpt-ossリリースで後者を使えたら嬉しいな :)" userName="jumploops" createdAt="2025/08/08 23:30:08" color="">}}




{{<matomeQuote body="君の言う通りだよ、この製品は君が説明したのとほぼ同じで、LLMが生成したコードを自分のワークフローで動かしたい顧客向けなんだ。これは僕らにとってすごく大事なことだったから、自分たちで使うために作って、同じ考えを持ってる人たちのためにリリースしたんだよ。" userName="mkagenius" createdAt="2025/08/10 06:18:18" color="">}}




{{<matomeQuote body="これはデバイス上で実行されるApple Foundation Modelsと比べてどうなの？<br>https://developer.apple.com/documentation/FoundationModels" userName="willtemperley" createdAt="2025/08/09 03:10:46" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
