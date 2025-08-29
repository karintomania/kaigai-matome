+++
date = '2025-08-22T00:00:00'
months = '2025/08'
draft = false
title = 'FFmpeg 8.0登場！動画処理の定番ツールがさらに進化'
tags = ["FFmpeg", "動画処理", "エンコード", "AI", "オープンソース"]
featureimage = 'thumbnails/orange4.jpg'
+++

> FFmpeg 8.0登場！動画処理の定番ツールがさらに進化

引用元：[https://news.ycombinator.com/item?id=44985730](https://news.ycombinator.com/item?id=44985730)




{{<matomeQuote body="FFmpegの開発者と貢献者の皆さん、本当にありがとう！オーディオ/ビデオの自動化が必要な時はいつもFFmpegに頼ってきたよ。これは本当に重要で不可欠なツールだ。多くのオンライン動画ツールもFFmpegのUIラッパーとして使われてるしね。そういえば、FFmpeg.WasmもあるんだってTIL（今日知った）！2024年1月に、1993年のアニメ映画から15分の動画セグメントでフレームを抽出し、Real-ESRGAN-ncnn-vulkanでアップスケールして4Kアニメにしたんだ。このワークフローでUIを作ったら、今人気のTopaz AIみたいなツールになったかもね。<br>[0]: https://github.com/ffmpegwasm/ffmpeg.wasm<br>[1]: https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan<br>[2]: https://files.horizon.pics/3f6a47d0-429f-4024-a5e0-e85ceb0f6..." userName="np1810" createdAt="2025/08/22 17:37:23" color="#ff33a1">}}




{{<matomeQuote body="直接FFmpegを使わなくても、FFmpegを組み込んでいるツールをよく使うよ。例えば、最近低品質DVDからリッピングした古いアニメをアップスケールしたんだけど、k4yt3x/video2xが十分でインストールも簡単だった。libffmpegが組み込まれてるから、エンコードに同じ引数を使えたんだ。<br>Video2X-x86_64.AppImage -i ”$f” ＼<br>-c libvpx-vp9 -e crf=34 -o ”${f/480p/480p_upscale2x}” ＼<br>-p realcugan -s 2 --noise-level 1<br>アップスケールに最適な引数を見つけるために、まずFFmpegで短いシーンを抽出して色々試してから、FFmpegで静止画をキャプチャして比較したんだ。" userName="idoubtit" createdAt="2025/08/22 18:56:16" color="#38d3d3">}}




{{<matomeQuote body="10年くらい前、当時の雇用主が他社と彼らのソフトウェアのリリースを手伝う話をしてたんだ。彼らは4K動画を劣化なしで圧縮・再生できる独自の圧縮システムを持ってるって信じてた。実際のコーデックや圧縮は見せてくれず、フロントエンドだけ作ってほしいと。でも調べてみたら、特定のフラグとオプションでFFmpegを使って動画を再エンコードしてるだけだと気づいたんだ。FFmpegを動かすだけで彼らの結果を再現できたよ。そしたら、うちとの話は立ち消えになったんだよね。" userName="bena" createdAt="2025/08/22 20:13:34" color="#ff5c5c">}}




{{<matomeQuote body="人のものをちょっといじって自分のものだと主張するっていう、昔からの伝統がまた一つだね。新しいチャットボット？別のChatGPTラッパーだよ。新しいLinux Distro？デスクトップ環境がプリインストールされたArch。新しい動画ダウンローダー？GUI付きのyt-dlpさ。最初から正直ならいいんだけど、そうじゃない人もいるんだよな。" userName="Telaneo" createdAt="2025/08/22 22:15:18" color="">}}




{{<matomeQuote body="「最初から正直ならいいんだけど、そうじゃない人もいるんだよな」って話、もし個人がやってるだけならまだ許容できたかもね。でも、時々兆ドル企業までもがこれをやってるのが残念だ。LLM以前は、コピーやラッパーを作る側もその認識があったけど、今はLLMが他人のコードをライセンスに縛られずに改変して出すから、意図せずそういうことが起きてるよね。LLMって生成したコードにライセンス詳細を自動で追加しないよね？" userName="np1810" createdAt="2025/08/23 04:31:57" color="">}}




{{<matomeQuote body="兆ドル企業だって結局は個人の集まりだよ。Fortune 500の会社に入ったからって、人が急に正直になるわけじゃないからね。" userName="brookst" createdAt="2025/08/23 13:23:57" color="">}}




{{<matomeQuote body="FFmpegのチューニングだけでキャリアを築いてる人もいるんだよな。でもこれってAIツールで実現できそうなことだから、彼らはちょっと不安になるかもね。" userName="ChrisMarshallNY" createdAt="2025/08/23 10:40:19" color="">}}




{{<matomeQuote body="君がやったのと全く同じ映画で同じ手順をTopaz AIで試したんだけど、すごくひどい結果になってプロジェクトを諦めちゃったんだ。もしアップスケールした映画を共有してくれたら嬉しいな。" userName="pwn0" createdAt="2025/08/23 06:44:50" color="#38d3d3">}}




{{<matomeQuote body="ずっとTopaz AIの方がFFmpegよりもっと洗練されたアップスケーリングをすると思ってたんだけど、FFmpegは単純なアルゴリズムしか持ってないんじゃないの？違うのかな？" userName="balder1991" createdAt="2025/08/27 13:08:51" color="">}}




{{<matomeQuote body="コンピュートシェーダーベースのビデオエンコーダ／デコーダ導入はうれしいね！ H.264、H.265、AV1以外のコーデックもクロスプラットフォームで加速できるようになるのは助かる。新しいProResエンコーダも早速使い道がありそうだよ。並列デコードはデータ依存性で難しいけど、エンコーダはデコーダより柔軟性があるかもね。VP9のコンピュートシェーダーエンコードは挑戦しがいがありそう。" userName="fleabitdev" createdAt="2025/08/22 16:52:20" color="#38d3d3">}}




{{<matomeQuote body="コンピュートシェーダーでのエンコーダ／デコーダ実装は最高だね！ 昔Vulkanのが汎用か聞いて笑われたけど、これでレガシーハードウェアでも性能アップが期待できる。新しいコーデックの導入も加速するだろうし、みんなのQOLも上がるはず！" userName="happymellon" createdAt="2025/08/22 18:29:14" color="#ff33a1">}}




{{<matomeQuote body="デコーダの最新技術は久々だけど、ディスプレイ向けデコードはGPU加速がかなり効きそうじゃない？ 初期解凍はCPUでやって、その後はGPUにデータを渡して動きベクトルやiDCTみたいな最終処理をする感じ。ピクセルレベルなら並列処理もいけるはず。GPUテクスチャにあるなら表示も楽だよね。この考え、どれくらい間違ってるかな？" userName="gmueckl" createdAt="2025/08/22 18:41:21" color="#45d325">}}




{{<matomeQuote body="専門家じゃないけど、最悪だと隣接ブロックに依存するせいで並列処理が`frame_height * 4`ピクセルに制限されちゃうかも。これだとメモリ依存の作業には厳しいね。動きベクトルが大きいと複数フレームデコードでの並列性も限られる。でも平均的には性能出るかもね。インターブロックやデブロッキングは並列化しやすそうだし、VP9、H.265、AV1はフレームをタイルに分割できるオプションもあるみたいだよ。" userName="fleabitdev" createdAt="2025/08/22 20:05:44" color="#ff33a1">}}




{{<matomeQuote body="すごい！ FFmpegのメンテナたちの才能にはいつも感心するよ。こんな難しいことを無償でやってるなんて、本当に頭が下がるね。" userName="mtillman" createdAt="2025/08/22 16:56:43" color="">}}




{{<matomeQuote body="それ、もっと詳しく教えてくれる？ メンテナの人は、会社での仕事でやってるもんだと勝手に思ってたんだ（全然根拠ない推測だけど）。" userName="droopyEyelids" createdAt="2025/08/22 17:39:26" color="">}}




{{<matomeQuote body="君のコメント、グレー評価から元に戻したよ。不公平だと思ったけど、正直これ以上言うこともないかな。僕が貢献してる理由を言えば、FFmpeg開発コミュニティにはもう10年も関わってないけど、メンテナの8割は給料もらってないボランティアって考えるのが妥当だと思うよ。" userName="refulgentis" createdAt="2025/08/22 17:55:48" color="">}}




{{<matomeQuote body="今回のリリースノート、めちゃくちゃ面白い！ 最近WebGPUコンピュートシェーダーでProResデコーダを自分で書いてみたんだけど、十分速く動いたよ。新しいAndroid APVコーデックにも応用できそうだね。ProRes RAWの情報が見つからなかったから、FFmpegがリバースエンジニアリングしたのかな？ コード見ると通常のProResと似てるみたいだね。詳細はこちら: https://pub.smpte.org/doc/rdd36/20220909-pub/rdd36-2022.pdf" userName="dtf" createdAt="2025/08/22 19:05:37" color="#45d325">}}




{{<matomeQuote body="それ、リンク貼ってくれる？ 僕、今回の変更ログで「レビュー中」ってあるVulkan ProResデコーダをGSoCプロジェクトで担当してるんだ。WebGPU実装がVulkanとどう違うか興味あるね。僕のコードはこれだよ: https://github.com/averne/FFmpeg/tree/vk-proresdec" userName="averne_" createdAt="2025/08/22 19:29:33" color="#785bff">}}




{{<matomeQuote body="今はリンクないけど、週末にはあげるようにするよ。君の実装、すごく興味あるね—ありがとう、しっかり見てみるよ！最初はWebGPUを学ぶためだったから、最適化のチャンスを逃してるかもだけど、楽しくデバッグできたよ。SMPTEの仕様書とFFmpegのproresdec.cを参考にデバッグを進めたんだ。" userName="dtf" createdAt="2025/08/22 19:39:51" color="#45d325">}}




{{<matomeQuote body="まだ実装できてない最適化がいっぱいあるんだよね。特にreset kernelを削除したり、VLD/IDCTを統合したり、IDCTルーチンの戦略（AAN algorithm、packed FP16、cooperative matrices）を試したりしたいな。" userName="averne_" createdAt="2025/08/22 19:46:03" color="#ff33a1">}}




{{<matomeQuote body="ほとんどリバースエンジニアリングしたやつだよ: https://mk.pars.ee/notes/a9ihgynpvdo6003w" userName="emersion" createdAt="2025/08/23 00:52:31" color="#45d325">}}




{{<matomeQuote body="NVENC/NVDECって固定機能ハードウェアじゃなくて、シェーダーコアで処理の一部ができるんじゃないかな。" userName="mappu" createdAt="2025/08/22 22:45:09" color="">}}




{{<matomeQuote body="FFmpeg使うたびに感動するよ（manページ見たりLLMに呪文作らせたりGUI使ったりするけどさ）。Vulkan 1.3ベースにしたのは正解だね。（そういえばAsahi Linux on MacもVulkan 1.3サポートしてるって昨日気づいた！）" userName="pmarreck" createdAt="2025/08/22 15:35:59" color="#785bff">}}




{{<matomeQuote body="’incantation’ってFFmpegの引数のことだよね。まさに元祖prompt engineeringだよ。" userName="Culonavirus" createdAt="2025/08/22 15:39:16" color="">}}




{{<matomeQuote body="いやいや、tar ballsの扱いの方が先に来るでしょ。FFmpegはそのすぐ後だよ。" userName="jeanlucas" createdAt="2025/08/22 15:44:15" color="">}}




{{<matomeQuote body="そもそもtar ballsの何が問題なのか全然わかんないんだよね。99%のケースで必要なのはtar -x、tar -c（作成）、tar -l（リスト）だけだよ。-vは他のツールと同じく詳細表示。<br>例：  tar -c project | gzip ＞ backup.tar.gz<br>  cat backup.tar.gz | gunzip | tar -l<br>  cat backup.tar.gz | gunzip | tar -x" userName="porridgeraisin" createdAt="2025/08/22 15:51:17" color="">}}




{{<matomeQuote body="gemini-cliとclaude-cliがあれば、FFmpegにプロンプトを当てながらさらにプロンプトできるんだ。しかもちゃんと動くよ。" userName="Keyframe" createdAt="2025/08/22 15:43:29" color="#38d3d3">}}




{{<matomeQuote body="tarが不便って言われてる理由がよくわかんないんだよね。ほとんどの場合、’tar -xvf blah.tar.gz’だけで済むじゃん。" userName="tombert" createdAt="2025/08/22 16:00:51" color="">}}




{{<matomeQuote body="’ダークアーツの呪文’リストには、Regexも追加しといた方がいいと思うな。" userName="mrandish" createdAt="2025/08/22 16:35:39" color="">}}




{{<matomeQuote body="tarはplain old zipより何がいいの？.tar.gzとか.tar.zipみたいにコンテナ形式を理由もなくネストする意味がわかんないな。テープ使わないし、テープアーカイブ形式もいらないんだよね。" userName="CamperBob2" createdAt="2025/08/22 16:44:26" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="誰かに役立つ情報だけど、超古いtarバイナリを使ってない限り、gunzipとかcatはいらないよ。.gzを.xzとか別のよく知られた拡張子に変えるだけで、違う圧縮形式に対応できるんだ。<br>例：<br>tar -cf archive.tar.gz foo bar  # ファイルfooとbarからarchive.tar.gzを作成。<br>tar -tvf archive.tar.gz         # archive.tar.gz内の全ファイルを詳細にリスト。<br>tar -xf archive.tar.gz          # archive.tar.gzから全ファイルを展開。" userName="BeepInABox" createdAt="2025/08/22 16:41:39" color="#38d3d3">}}




{{<matomeQuote body="LLMとFFmpegやImageMagickみたいな複雑なCLIツールって最高の組み合わせで、まるで魔法みたいだね…SF映画に出てくるような夢のUI/UXだよね。「このフォルダの全画像を上以外100pxクロップして、ちょっと彩度上げて、非圧縮TIFFで新しいフォルダに保存、さらにビデオループにしてweb用にエンコードして」とかね。" userName="agys" createdAt="2025/08/22 16:11:56" color="#38d3d3">}}




{{<matomeQuote body="tar -cf archive.tar.gz foo barって書くと、圧縮されてない.tarが間違った名前でできちゃうよ。gzipを指定するには-zオプションが必要だよ。" userName="mkl" createdAt="2025/08/22 23:16:36" color="">}}




{{<matomeQuote body="問題は、tarがすごく分かりにくくて、覚えるのが無駄に難しいってことだよね。確かに、一度呪文を覚えちゃえば一生使えるけど、初心者がシェルでファイルを展開しようとしたら、インターフェースが無駄に難しいから苦戦するよ。" userName="bigstrat2003" createdAt="2025/08/22 15:59:48" color="">}}




{{<matomeQuote body="これってどうやるのか、ちょっと確認したいんだけどさ。gemini-cli（またはclaude-cli）を使って、gemini（またはclaude）に自然言語で処理内容を指示するんだよね。FFmpegとメディアファイルの正しいパスを教えてあげれば、g-cli（またはc-cli）がやってくれるってことで合ってる？" userName="profsummergig" createdAt="2025/08/22 16:57:31" color="">}}




{{<matomeQuote body="それぞれのLLMが新しいコーデックやオプションをどれくらい素早く覚えるのか、見るのが楽しみだな。" userName="NSUserDefaults" createdAt="2025/08/22 15:52:21" color="">}}




{{<matomeQuote body="tarって他のCLIプログラムとすごく似てるのに、なんでtarだけが使いにくいって言われてるのか、正直全然理解できないな。" userName="encom" createdAt="2025/08/22 16:22:29" color="">}}




{{<matomeQuote body="そうそう、LLMに「これlibx265でもっと小さくしてhvc1タグ付けて」とか「この2つのビデオ連結して」って聞くと、たいてい完璧にこなしてくれるんだ。ImageMagickに関しても、同じくらいマスターしてるよ！" userName="conradev" createdAt="2025/08/22 16:13:56" color="#ff5733">}}




{{<matomeQuote body="リストしたいなら-tだよ。「リスト」の「T」でね。-lはチェック・リンク用だよ。<br>それに、別に圧縮解除しなくても大丈夫。tarが適切な圧縮アルゴリズムを検出して、勝手に圧縮解除してくれるから、gunzipみたいな中間ステップはいらないよ。" userName="sdfsdfgsdgg" createdAt="2025/08/22 15:59:42" color="#ff5c5c">}}




{{<matomeQuote body="tarコマンドはかなり覚えたけど、cpioはめちゃくちゃ変に感じるんだよね。" userName="fullstop" createdAt="2025/08/22 17:15:57" color="">}}




{{<matomeQuote body="regexは使えるんだけどさ、ffmpegのmanpageは恐ろしすぎるよ..." userName="RedShift1" createdAt="2025/08/22 17:01:05" color="#45d325">}}




{{<matomeQuote body="今はファイル名で自動的に決まるらしいけど、つい習慣でフラグを付けちゃうんだよね。30年の指が覚えた動きはなかなか変えられないもんだ！" userName="Intermernet" createdAt="2025/08/23 00:06:54" color="#ff33a1">}}




{{<matomeQuote body="「tar xzf foobar.tgzは”_x_tract _z_e _f_iles!”って感じで覚えてるよ。Dr. Strangeloveみたいなドイツ語アクセントでね。<br>最近見つけたdtrx (https://github.com/dtrx-py/dtrx) ってツールがホストにインストールできるならすごくいいよ。適切なコマンドを呼び出してくれて、常にサブディレクトリに展開してくれるからtar-bombsの心配もないしね。tar作成は自分で頑張ってくれ。」" userName="beala" createdAt="2025/08/22 16:41:50" color="#785bff">}}




{{<matomeQuote body="「cpioってそんなに難しくないよ。<br>よく使うのは$ cpio -pdumv argsとか。<br>$ man cpioを見てみて。あと、Wikipediaの“Operation and archive format”のCopyセクションにも例があるよ。cpioのパススルーモードを使えば、アーカイブを作らずにファイルをコピーできるんだ。<br>例: $ find . -depth -print | cpio -p -dumv new-path」" userName="fuzztester" createdAt="2025/08/23 19:14:56" color="#38d3d3">}}




{{<matomeQuote body="tarでリスト表示するには-tを使うんだよ、-lじゃないんだからね。" userName="drivers99" createdAt="2025/08/22 15:56:52" color="">}}




{{<matomeQuote body="-z（あるいは最近のgnutarなら-a）を忘れてるんじゃないかな。" userName="aidenn0" createdAt="2025/08/22 16:05:48" color="">}}




{{<matomeQuote body="zipはファイルの所有権とかパーミッションは保持しないんだよね。" userName="fullstop" createdAt="2025/08/22 17:17:20" color="">}}




{{<matomeQuote body="「LLMでffmpegコードは作れるけど、まるでSFじゃないよ。LLMはめちゃくちゃ品質の悪い、時にはバグだらけのffmpegコードを出す傾向があるんだ。ファイルパラメータをスタート時間の前に置いたりして、無駄に動画全体をデコードさせたり、間違ったbitrateを出したり、音声を無駄に再エンコードしたりね。<br>副作用を気にせずマニュアルを読まないならいいけど、正確性も込みで考えたら、理想のUXとは言えないな。」" userName="Barrin92" createdAt="2025/08/22 16:29:18" color="#ff33a1">}}




{{<matomeQuote body="LLMってffmpegのインターフェースに最高だよね。自然言語で実行できるツールも多いし。これ、俺のスクリプトだよ：https://github.com/jjcm/llmpeg" userName="jjcm" createdAt="2025/08/22 16:04:58" color="#ff33a1">}}




{{<matomeQuote body="ffmpegってさ、もし敵の手に渡ったら使えないように作られてるんだぜ。" userName="quectophoton" createdAt="2025/08/22 19:57:48" color="">}}




{{<matomeQuote body="コメントする前に確認してみたよ。Ubuntu 25.04だと、ファイル名で圧縮が自動で有効にならないね。抽出時の自動検出はファイル内容ベースで、名前じゃないんだ。" userName="mkl" createdAt="2025/08/23 01:06:46" color="#45d325">}}




{{<matomeQuote body="2025年って動画がどこにでもあるんだからさ、ffmpegがSSL、zlib、sqliteの次に使われるライブラリの4位に入るって意見、誰か同意する？" userName="larodi" createdAt="2025/08/22 15:57:59" color="">}}




{{<matomeQuote body="FFMpegはそこまで上位じゃないでしょ。動画処理ってメディアを受け取るサーバーだけに必要なんだし。ほとんどのスマホは動画でFFMpegを動かしてないと思うよ。" userName="PokestarFan" createdAt="2025/08/22 18:38:23" color="">}}




{{<matomeQuote body="ChromeやFirefoxはメディアのデコードにFFmpegライブラリを使ってるから、意外といろんな所にあるんだぜ！<br>でもChatGPTはAndroidのブラウザアプリではAndroidの“native”メディアスタックを使うからって、使われてないって言ってたな。" userName="neRok" createdAt="2025/08/23 00:01:25" color="#ff33a1">}}




{{<matomeQuote body="たぶん、その一部は全てのモバイルデバイスに入ってるだろうし、Netflixとかも動画のエンコードに絶対使ってるでしょ。" userName="larodi" createdAt="2025/08/22 19:32:05" color="">}}




{{<matomeQuote body="Curlも上位に入るべきだよ。あと”SSL”は、いろんな実装があるから数字を分けたら、もっと順位が下がるかもね。" userName="zvr" createdAt="2025/08/22 19:21:21" color="">}}




{{<matomeQuote body="Curlはそうかもだけど、それ自体がzlibとlibsslを使って動いてるでしょ？" userName="larodi" createdAt="2025/08/22 19:30:59" color="#ff5733">}}




{{<matomeQuote body="うん、zlibと何らかのSSL実装を使ってるよ。以前「SSL」って言ったけど、実際のライブラリはOpenSSL、BoringSSL、WolfSSL、GnuTLSとか色々あるからね。だから、個々のライブラリの使用数はSSL全体の使われ方より少ないってこと。" userName="zvr" createdAt="2025/08/23 10:36:12" color="#45d325">}}




{{<matomeQuote body="Nixのログはここから取得できるよ: https://github.com/NixOS/infra/blob/main/metrics/fastly/READ... これ、意見を検証する面白いデータソースになるかもね。" userName="_kb" createdAt="2025/08/22 17:25:21" color="#ff5733">}}




{{<matomeQuote body="少なくともArch Linuxについては、ここで確認できるよ: https://pkgstats.archlinux.de/packages" userName="zaik" createdAt="2025/08/22 16:59:35" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="FFmpegは殿堂入り確実だね！間違いない！" userName="npteljes" createdAt="2025/08/22 16:44:31" color="">}}




{{<matomeQuote body="FFmpegより上には結構あると思うよ。Qt、libpng、libusbとかね。" userName="IshKebab" createdAt="2025/08/22 20:54:56" color="">}}




{{<matomeQuote body="libpngとlibjpegはわかる。でもQtとlibusbがffmpegより上ってのはありえないね。" userName="account42" createdAt="2025/08/25 09:24:06" color="">}}




{{<matomeQuote body="libcだね :D" userName="encom" createdAt="2025/08/22 16:26:56" color="">}}




{{<matomeQuote body="FFmpegのいろんな機能にアクセスできる、いいGUIフロントエンドって誰か作った？たまに、トランスコードなしで動画をremuxしたり、複数の動画や音声ストリーム（同じcodecsね）を結合したいだけって時があるんだよな。" userName="Dwedit" createdAt="2025/08/22 16:17:07" color="#38d3d3">}}




{{<matomeQuote body="Handbrake、良いツールだね！ちょっと古いけど、ちゃんと仕事してくれるよ。" userName="joenot443" createdAt="2025/08/22 16:21:37" color="">}}




{{<matomeQuote body="HandBrake[0]は日常タスクには最高だね！UIはもっとシンプルにできるかも。例えば、複数エピソードのTV番組ディスクをリッピングするときとか。それ以外は素晴らしいツールだよ！<br>それ以上のことはコマンドラインでやってるけどね。<br>[0] https://handbrake.fr" userName="kevinsync" createdAt="2025/08/22 16:48:48" color="">}}




{{<matomeQuote body="Handbrakeは結構頻繁にアップデートされてるよ。" userName="selectodude" createdAt="2025/08/22 16:46:42" color="">}}




{{<matomeQuote body="FFmpegのフロントエンドにはChatGPTが最高だよ。やりたいことを自然な言葉で説明すると、必要なコマンドをちゃんと教えてくれるんだ。" userName="patapong" createdAt="2025/08/22 16:23:10" color="#785bff">}}




{{<matomeQuote body="MacユーザーにはffWorks[1]がFFmpegの素晴らしいフロントエンドだよ。ほとんどの機能をまともなGUIで使えるし、バッチ処理もプリセットも設定できる。開発者もすごく丁寧だ。HandbrakeやLosslesscutも良いけど、俺はffWorksにすごく価値を感じるからお金払ってるよ。他のプラットフォームにはこれほど洗練されたものはないんじゃないかな。<br>[1]: https://www.ffworks.net/index.html" userName="filmgirlcw" createdAt="2025/08/22 17:47:44" color="#45d325">}}




{{<matomeQuote body="動画の結合って簡単そうだけど、タイムベースとかオフセット、クロップ、FPSの違いとかでめちゃくちゃ失敗しやすいんだ！H264やAACでもエンコード方法やサンプリングレートの違いで再生問題が起きたりね。Lossless-Cutも良いけど、俺は結合前にMPEG-TSにトランスコードすることで多くの問題を回避してるよ。FFmpegコマンドもここに載せておくね。<br>`ffmpeg -i video1.mp4 -c copy -start_at_zero -fflags +genpts R:\video1.ts;`<br>`ffmpeg -i video2.mp4 -c copy -start_at_zero -fflags +genpts R:\video2.ts;`<br>`ffmpeg -i ”concat:R:\video1.ts|R:\video2.ts” -c copy -movflags +faststart R:\merged.mp4`" userName="neRok" createdAt="2025/08/22 23:48:23" color="#ff5c5c">}}




{{<matomeQuote body="好きなGUIは見つからないけど、ChatGPTみたいなLLMがFFmpegのコマンド生成にはすごく役立ってるよ。やりたいことを伝えるだけで、ffmpegコマンドを作ってくれるからね。" userName="pseudosavant" createdAt="2025/08/22 16:22:14" color="#45d325">}}




{{<matomeQuote body="https://github.com/mifi/lossless-cut を見てみて！" userName="jazzyjackson" createdAt="2025/08/22 16:51:35" color="">}}




{{<matomeQuote body="どのフロントエンドもFFmpegの機能のごく一部しか提供してないから、特定のタスクにしか使えないんだよな。" userName="avhon1" createdAt="2025/08/23 01:04:50" color="">}}




{{<matomeQuote body="ShotcutはFFmpegコマンドを生成するためのすごいインターフェースだよ。オープンソースの動画制作ツールだね。<br>https://www.shotcut.org/" userName="mrguyorama" createdAt="2025/08/22 17:02:44" color="">}}




{{<matomeQuote body="ShotcutはMLT Multimedia Frameworkを使ってるから、FFmpegの単なるインターフェースじゃないんだよ。<br>https://www.mltframework.org/" userName="toxicosmos" createdAt="2025/08/22 17:43:52" color="#ff5733">}}




{{<matomeQuote body="そのMLTフレームワークって、FFmpegがベースになってるみたいだね。<br>https://www.mltframework.org/faq/" userName="mkl" createdAt="2025/08/22 23:21:56" color="#ff5733">}}




{{<matomeQuote body="HandbrakeとかVidCoderとか、いろんなFFmpegのフロントエンドがあるよね。" userName="onehair" createdAt="2025/08/22 17:30:22" color="">}}




{{<matomeQuote body="mkvtoolnixも使えるし、GUIも付いてるよ。" userName="ricardojoaoreis" createdAt="2025/08/22 16:22:28" color="">}}




{{<matomeQuote body="非線形エディタとかノードベースのエディタが必要だよね。だいたいオープンソースの動画エディタはKdenliveみたいにFFmpegのフロントエンドだよ。" userName="AlienRobot" createdAt="2025/08/22 16:45:30" color="#ff5733">}}




{{<matomeQuote body="これはワクワクするニュースだね！<br>https://youtu.be/9kaIXkImCAM?si=b_vzB4o87ArcYNfq" userName="qmr" createdAt="2025/08/22 16:09:57" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
