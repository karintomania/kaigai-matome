+++
date = '2025-05-13T00:00:00'
months = '2025/05'
draft = false
title = 'FastVLMが登場！VLMの視覚エンコーディングを効率化する新技術！'
tags = ["AI", "機械学習", "VLM", "画像認識", "自然言語処理"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> FastVLMが登場！VLMの視覚エンコーディングを効率化する新技術！

引用元：[https://news.ycombinator.com/item?id=43968897](https://news.ycombinator.com/item?id=43968897)




{{<matomeQuote body="若い子供の父親だけど、視神経が悪くて失明しちゃうかもって言われてるんだ（NIHの治験のおかげで今は安定してるけど、科学に資金出して！）。VLMの進歩にはマジで感激してるよ。もし失明しても、世界と関わって、大学行って、やりがいのある仕事（科学とエンジニアリング好きで、若いのに才能あるんだ）ができる未来が今見えてきたんだ。" userName="insane_dreamer" createdAt="2025/05/13 02:30:13" color="#45d325">}}




{{<matomeQuote body="80年代に全盲の子供として育ったんだ。技術なんて今ほどじゃなかったよ。PCは12歳くらいで出てきた。古いタイプライターでタイピング覚えて、重い点字打ち機で点字も覚えた。OCRもひどかった。高校は点字ディスプレイ付きノートPCで授業受けた。DOSとWord 5.5がメモ代わり。学習ツールはほぼ無かったな。<br>でも、ちゃんと成功したよ。大好きな仕事、自分のアパート、可愛い彼女もいて、完全に自立してる。母親が“助けよう”としてくるのが邪魔で、強引に追い出したくらい。親としてどう対応するかが超重要ってことを強調したい。「親の過保護による追加障害」（Zusatzbehinderung Eltern）って言葉があるくらいだから。個人的な攻撃と捉えずに、理解してほしい。子供は親が見てるよりずっとできる。自分の不幸に溺れさせないで、何ができるか発見させてあげて。マジで驚くよ。あと、道具ばっか集めるの（Gear Acquisition Syndrome）にハマらないでね。道具はいいけど、結局、杖と耳と触覚が一番頼りになるよ。あなたの子供の成長、応援してる。" userName="lynx97" createdAt="2025/05/13 05:06:00" color="#45d325">}}




{{<matomeQuote body="うわー、これはVLMが盲目の人を“救う”みたいな（よくある）話に、マジで新しい視点をくれるね。昔は介助者がいないと何もできなかったのに、今は未来が来て、AI携帯が家の中の物を教えてくれる！これでMr. Magooみたいな事故は無くなるのか！って皮肉な見方になっちゃうよね。投稿ありがとう、マジで目から鱗だったよ。正直、こういうAIソリューション全部...”" userName="topato" createdAt="2025/05/13 06:06:15" color="">}}




{{<matomeQuote body="最小モデルで0.5Bなのに2GBってのは、各アプリがこれをDLするのは無理があるね。AppleはOSレベルでプリロードして、全アプリがローカルで使えるSDKを公開する計画があるはずだ。楽しみな時代だね！これ確認するために彼らにissue立てたよ: https://github.com/apple/ml-fastvlm/issues/7" userName="nikolayasdf123" createdAt="2025/05/13 04:12:37" color="">}}




{{<matomeQuote body="OS標準のオープンウェイトモデルに、アプリ開発者がカスタムのLoRAファインチューニングをランタイムで読み込めるAPIがあれば、マジで最高かもね。ファインチューニングされたアプリ固有のモデルが、アプリサイズを抑えつつ手に入りそう。" userName="HanClinto" createdAt="2025/05/13 15:45:20" color="">}}




{{<matomeQuote body="LLMでLoRAをあまり見ないんだよね、Diffusion画像生成モデルだけかな。アーキテクチャの違いで効果が変わるって聞いたことがあるよ。" userName="HappMacDonald" createdAt="2025/05/13 17:01:38" color="">}}




{{<matomeQuote body="たぶんf16とかint8に量子化すればもっと小さいモデルにできるけど、君の言いたいことはわかるよ。ユーザーもアプリのために500MBのモデルをダウンロードするのは嫌だろうね。" userName="babl-yc" createdAt="2025/05/13 13:14:47" color="#45d325">}}




{{<matomeQuote body="はは、最新のUberのiOS 18版は500MBだよ…LLMモデルも入ってないのに＜face-palm/＞" userName="nikolayasdf123" createdAt="2025/05/13 13:30:42" color="">}}




{{<matomeQuote body="中で何やってんだろ？ほとんど視覚的なアセットなのかな？" userName="ukuina" createdAt="2025/05/13 14:16:18" color="">}}




{{<matomeQuote body="地域ごとの色々なシナリオがアプリにコンパイルされてるんだよ。地域別の決済SDKとかもね。元Uberエンジニアがここで詳しく説明してる素晴らしいコメントがあるよ：https://news.ycombinator.com/item?id=25376346" userName="philipkglass" createdAt="2025/05/13 16:02:34" color="#ff5c5c">}}




{{<matomeQuote body="勘だけど、決済方法のSDKみたいに、サードパーティのコードがいっぱい入ってるんじゃないかな。世界中のローカルな決済方法それぞれに独自のパッケージがあって、それをインポートしなきゃいけない。アプリインストール後に新しい実行コードをその場で読み込むわけにはいかないしね。" userName="bastawhiz" createdAt="2025/05/13 15:07:08" color="#ff5733">}}




{{<matomeQuote body="実はアプリのOTAアップデートはできるんだよ（何でアプリ書いてるかによるけどね）。新しい機能（決済プロバイダーを追加するだけとか）じゃなければ、App Storeのアップデートは必要ないはずだよ。" userName="victorbjorklund" createdAt="2025/05/13 15:31:49" color="">}}




{{<matomeQuote body="アプリの一部だけダウンロードして、ユーザーがたぶん使わない機能は遅延読み込みする、なんてことはできないんだよ。" userName="bastawhiz" createdAt="2025/05/14 03:26:30" color="">}}




{{<matomeQuote body="できる可能性はあるけどね。Liveview Nativeみたいなサーバー側の解決策（使うときにだけコードを取ってくる）が必要になるか、最初に何かダウンロードするまで待たなきゃいけないっていう、かなり悪いUXになるだろうね。" userName="victorbjorklund" createdAt="2025/05/17 21:50:41" color="">}}




{{<matomeQuote body="決済ゲートウェイ作って、クライアントは決済プロセスを知らなくてもいいようにロジックを抽象化する方が良くない？バックエンドで内部的な決済プロセスを外部の特定のやつに変換するんだよ。（最悪の場合は、ユニバーサルリンクやwebviewで他のアプリにリダイレクトするとか）" userName="nikolayasdf123" createdAt="2025/05/13 15:58:11" color="#ff5c5c">}}




{{<matomeQuote body="ブラウザウィンドウでやってるわけじゃないからね。NFCみたいなデバイスAPIと連携したり、カスタムUI（たぶんネイティブがいいよね）があったり、QRコード読んだりクレジットカードをOCRするためのカメラアクセスとかがあるんだよ。7-Elevenでウォレットにチャージして払いたいの？そしたら最寄りの場所を示すマップが必要になるよね。" userName="bastawhiz" createdAt="2025/05/14 03:25:48" color="#38d3d3">}}




{{<matomeQuote body="これってさ，多分ベクターグラフィックスとかベクターアニメーション（例えば Rive）使ってるんじゃないかな． Riveなら数10KBくらいだし，Lottieはもうちょい大きくて100KB台だけど，それでも500MBには5000個のアニメが必要になっちゃうから，あり得ないね！ ラスタ画像とか動画はビルドに含まれてないだろうし，多分使ってないコード（ライブラリ）とかが混ざり込んじゃったか，あるいはMLモデルが入ってるのかも？" userName="nikolayasdf123" createdAt="2025/05/13 16:02:51" color="#45d325">}}




{{<matomeQuote body="なんか去年の WWDC で LLM について言ってたことと似てるね，たしか． コアのモデルは OS が提供して，アプリは LORA でファインチューニングしたり，カスタムヘッドを付けたりするってやつ．" userName="cube2222" createdAt="2025/05/13 09:22:59" color="#45d325">}}




{{<matomeQuote body="多分，大きな発表じゃないと公式には認めないんじゃないかな． WWDC とか？" userName="gessha" createdAt="2025/05/13 17:55:05" color="">}}




{{<matomeQuote body="なんかさ，これって Apple Intelligence のデモみたいに，画面を見て操作できるアシスタントみたいなオンデバイスアプリで，継続的な Vision を使うのに必要なスピードアップのレベルって感じがするね． 最初のトークンが出るまでの時間が劇的に速くなってる感じ． リポジトリにあるアプリ見るのすごい感動したし，今夜ビルドして遊ぶのが楽しみだよ．" userName="liamwire" createdAt="2025/05/13 02:37:01" color="#38d3d3">}}




{{<matomeQuote body="俺，Senっていうリアルタイムの音声＋Visionアプリを今作ってて，ベータ版が動いてるんだけど，webrtc でフレームをストリームしてるんだ． 速くて賢いんだけど，このモデルたちがどれだけメタルに近いところで動くのか超気になるね． 将来的にデバイス上で動いて，ttfb がめちゃ速くなるのが目に浮かぶよ．" userName="Aeroi" createdAt="2025/05/13 03:50:19" color="#ff5733">}}




{{<matomeQuote body="技術スタックとかセットアップについて書いたのある？ それかここで要点だけ教えてくれない？<br>自分の子供たちがボタンと音声でプロンプトできるプライベートな Qwen かそれに近いものを作りたいんだ． Vision は必須じゃないけど… 将来的には超クールだね．<br>Siri はマジでダメ．<br>まだそこまで来てないのかもな…" userName="keyle" createdAt="2025/05/13 04:08:46" color="#ff5c5c">}}




{{<matomeQuote body="今日，音声内蔵の面白いロボットおもちゃのデモにも偶然出くわしたんだ． なんだか気まぐれな感じで，小学校の教育とか子供向けっぽい感じだった． ここ見てる誰か名前知ってるかな？" userName="Aeroi" createdAt="2025/05/13 04:18:27" color="">}}




{{<matomeQuote body="応答を返すのに Ollama とか LM Studio とか使えるよ，どっちも API モードで． 音声サポートもあると思うけど，確実じゃないな．<br>ただ，エージェントみたいな指示に従うのが目的なら，俺も自分のエージェントを実装しようとして自信なくしたんだ． GPT-4.1 ですら，カレンダーにイベント追加するツール呼び出しを確実に実行したって平気でガスライトしてくるし，全然言うこと聞かないんだよね．" userName="stavros" createdAt="2025/05/13 08:06:28" color="#785bff">}}




{{<matomeQuote body="間違いなくそこには来てるよ． ただまだ”既成品の”アプリがないだけ． でも技術的には可能だよ，例えば vapi.ai に行ってみてテストしてみなよ．" userName="tomp" createdAt="2025/05/13 10:43:19" color="#38d3d3">}}




{{<matomeQuote body="https://livekit.io/ これ見てみて．" userName="cloudking" createdAt="2025/05/13 10:26:53" color="">}}




{{<matomeQuote body="すごくいいね！でもAI/MLコミュニティにもっと貢献して，HuggingFaceでモデルの重みとか公開してくれたら嬉しいな．<br>今日ちょうど似たようなデモ見たんだけど，そっちは無料で使えるVLM使ってるんだよね．リンクはこれ！https://github.com/ngxson/smolvlm-realtime-webcam" userName="d3k" createdAt="2025/05/13 09:51:18" color="">}}




{{<matomeQuote body="SmolVLMはHuggingFaceのチームなんだね．小さいモデルで何かやってる人たちを見るのはいいね．記事と論文のリンクはこれ！https://huggingface.co/blog/smolvlm<br>https://arxiv.org/abs/2504.05299" userName="tough" createdAt="2025/05/13 11:34:08" color="">}}




{{<matomeQuote body="ロボット工学の未来はVLAモデルになりそうだね．Tesla FSDもエンドツーエンドのVLAモデルだし．効率的な視覚エンコーディングは，ロボットを安全かつ応答性高くする上で超重要になりそう．" userName="porphyra" createdAt="2025/05/13 04:39:26" color="#ff5733">}}




{{<matomeQuote body="これを使えば，盲目の人向けのめっちゃ役立つ支援ツールが作れるかも．スマホだけで動いて，メガネのカメラから情報を得る感じ．介助なしでは動き回れなかった人が，日常生活で自立できるようになるかもしれないね．" userName="nine_k" createdAt="2025/05/13 03:06:01" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Cream of ChickenとCream of Mushroomを見分けるのには良いけど，歩き回る移動にはどうかな．「木がある．人がいる．」みたいなフィードバックは，歩くのに全然役立たない気がするんだよね．既存のやり方より良いとは思えないな．" userName="jdiff" createdAt="2025/05/13 16:54:05" color="">}}




{{<matomeQuote body="街や店を考えてみてよ．標識，文字，信号，値札とか，重要な情報がたくさんあるでしょ．「歩道．左手に店の並び．Joe’s Grocery Store．ドア．ドアノブ．パンの棚．缶詰の棚．ボトルの棚．Cokeボトル．大きいPepsiボトル．アップルジュースボトル．通路．レジ．支払い端末．ドア．ドアノブ．歩道．…」みたいに，細かい情報まで認識できる可能性があるよ．" userName="nine_k" createdAt="2025/05/13 17:25:57" color="#38d3d3">}}




{{<matomeQuote body="でもさ，それが「どこにあるか」っていう空間情報が全然分かんないじゃん．「支払い端末」って言われても，場所は？左？どのくらい？<br>さっきのテキストで唯一役立ちそうって思ったのは，やっぱり「Cream of Mushroom」と「Cream of Chicken」の区別だけかな．手に持ってるものなら場所は分かってるから，文字だけ分かれば良いんだよね．" userName="jdiff" createdAt="2025/05/13 18:39:09" color="">}}




{{<matomeQuote body="リソースをガンガン投入するんじゃなくて、モデルを小さくして少ないリソースで動かそうとする努力があるのがマジ最高！" userName="labadal" createdAt="2025/05/13 18:51:12" color="#45d325">}}




{{<matomeQuote body="これってllama.cppで動かせるのかな？LLaVAベースみたいだし、期待できそうだね。" userName="lynx97" createdAt="2025/05/13 05:16:03" color="">}}




{{<matomeQuote body="なんか、今の新しいAIのボトルネックって、視覚能力みたいだよね．今回の技術みたいのが、それを解決してくれるんだろうな．" userName="BryanLegend" createdAt="2025/05/13 02:01:14" color="#45d325">}}




{{<matomeQuote body="それと、知識を覚えておく能力もだね．" userName="efnx" createdAt="2025/05/13 02:05:55" color="">}}




{{<matomeQuote body="… あとは「知らない」って言える能力とか．" userName="static_void" createdAt="2025/05/13 04:26:43" color="">}}




{{<matomeQuote body="この重たい計算を分散して、データが出る場所とか、分析結果を出す場所のデバイスの近くに持っていくのが最高だね．<br>マジで低遅延だし、ネットワークいらないし、プライバシーも守れるし、クラウドの無駄もなくなる．これはすごい技術だわ" userName="nikolayasdf123" createdAt="2025/05/13 04:15:00" color="#ff5733">}}




{{<matomeQuote body="スクリーンショット解析にvisionモデル使ってる人いる？QVQは遅すぎたんだけど．これ試してみようかな．" userName="adamsiem" createdAt="2025/05/13 03:10:54" color="#45d325">}}




{{<matomeQuote body="スクリーンショット解析してUIの位置とか検出するのにmolmo使ったことあるよ．リポジトリはここ見て．<br>MicrosoftのOmni parserも良いかもね．<br>https://github.com/logankeenan/george<br>https://github.com/microsoft/OmniParser" userName="logankeenan" createdAt="2025/05/13 03:21:46" color="#38d3d3">}}




{{<matomeQuote body="これとか興味あるかもね→https://github.com/OpenAdaptAI/OpenAdapt" userName="abrichr" createdAt="2025/05/13 03:19:26" color="#785bff">}}




{{<matomeQuote body="googleとかクラウドのLLMサービス提供してるとこ、今頃歯ぎしりしてるはず！笑" userName="nikolayasdf123" createdAt="2025/05/13 04:13:21" color="">}}




{{<matomeQuote body="Apple は LLM の世界では出遅れたけど、唯一まともな long term strategy を持ってるんだよね。2030年代には dominate すると思うよ。" userName="turnsout" createdAt="2025/05/13 02:20:31" color="">}}




{{<matomeQuote body="on-device で local に実行できることだよ。cost、latency、privacy に良いんだ（privacy は実用的で、ユーザーのデータを全部 context に安心して使えるってこと）。Microsoft が数年前に neural processors をすごく推したのもこれが理由。datacenter の cost を避けつつ、good-enough な inference を提供できるのはめちゃくちゃでかい勝ちだよ。" userName="generalizations" createdAt="2025/05/13 02:29:47" color="">}}




{{<matomeQuote body="Google はすでに on device models の Gemma と chips の Tensor って、いくつか最高のやつ持ってるじゃん。" userName="xnx" createdAt="2025/05/13 02:58:21" color="">}}




{{<matomeQuote body="＞ and chips (Tensor)<br>Google Tensor G4 と Apple A18 の NPU を比較した具体的な data って実際にある？ すぐには見つけられなかったんだ。<br>Apple は Google より長く mobile NPU を出してるし（Apple は 2017 年の A11 から、Google は 2021 年から）、Google のより小さい silicon node で作られてるみたいだしね（G4 は Samsung SF4P 対 A18 は TSMC N3E）。ただ、G4 の方が RAM bandwidth は多いっぽい（68.26 GB/s 対 A18 は 60 GB/s）。" userName="AceJohnny2" createdAt="2025/05/13 04:18:23" color="#ff5c5c">}}




{{<matomeQuote body="Google は Pixel 4 の 2019 年からカスタム NPU を出してるよ。それより前は、Google の phone は Qualcomm の既製の SOC を使ってたんだ。2018 年の Pixel 3 は Snapdragon 845 の NPU を使ってた。Android は 2017 年の Android 8.1 で最初に NNAPI を出してて、いろんな mobile GPU や DSP でアクセラレーションしてた。Pixel 2 の Pixel Visual Core も含まれるよ。Google は今のところ on-device models を多く出してるけど、どちらの company も on-device inference で moat は持ってないね。<br>https://blog.google/products/pixel/pixel-visual-core-image-p..." userName="lern_too_spel" createdAt="2025/05/13 05:39:22" color="#ff5c5c">}}




{{<matomeQuote body="他の Android phone vendors は作ってるじゃん。そして、彼らも Qualcomm の NPU に乗っかって、同じ strategy 持ってるよ。" userName="lern_too_spel" createdAt="2025/05/13 14:31:00" color="">}}




{{<matomeQuote body="そうそう、ありがとう。これが僕が言ってた strategy だよ。models と chips がそこにたどり着くまでには時間かかるだろうけど、on-device inference は privacy、speed、cost に massive な advantages がある。それに hardware の demand をもたらすだろうね—最初は iPhones だろうけど、すぐに AirPods と glasses とかにも。" userName="turnsout" createdAt="2025/05/13 02:37:13" color="">}}




{{<matomeQuote body="Apple Intelligenceはデータセンター動かしてて、ChatとかPrivate Cloud Computeにもオフロードしてるんだぜ。デバイスだけじゃない。実際、オンデバイスなのかPrivate Cloud Computeなのか、いつそうなるのか明確じゃないんだよね。" userName="weikju" createdAt="2025/05/13 03:15:45" color="">}}




{{<matomeQuote body="うわーすごい。オンデバイスでのリアルタイム動画は見る価値あるし、マジで説得力あるね。これが展開されて広く使われるのが楽しみだよ。最初のトークンまでがすごく速くなるのは、めちゃくちゃたくさんの機能とか使いやすさにつながるメリットがある。" userName="vessenes" createdAt="2025/05/13 07:48:58" color="#ff33a1">}}




{{<matomeQuote body="ワイングラス、縁までいっぱいにできる？" userName="vFunct" createdAt="2025/05/13 02:11:17" color="">}}




{{<matomeQuote body="これは画像を解釈するためのものであって、生成するためのものじゃないんだぜ。" userName="mkl" createdAt="2025/05/13 02:53:16" color="">}}




{{<matomeQuote body="たぶん、毎秒tesseractに画像を食わせる方が、めちゃくちゃ速くて容量も処理能力もずっと少なくて済むんじゃないか？まだ試してないけど、でかい画像でもtesseractがどんだけ速いか考えたら、驚かないよ。" userName="simianparrot" createdAt="2025/05/13 08:50:24" color="">}}




{{<matomeQuote body="もしOCRだけ欲しいんなら、そうかもしれないね。" userName="regularfry" createdAt="2025/05/13 09:37:01" color="">}}




{{<matomeQuote body="タイプされた文字のOCRだけ欲しいなら．Tesseractは手書きには最悪だよ．" userName="coredog64" createdAt="2025/05/13 14:17:58" color="">}}




{{<matomeQuote body="Appleはマジで5次元チェスでもやってんのかってくらい．ハードウェアにニューラルコア積んで．そこで動かすための超効率的なVisionモデル書いてるぜ．ヤバすぎ．" userName="kamranjon" createdAt="2025/05/13 02:10:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
