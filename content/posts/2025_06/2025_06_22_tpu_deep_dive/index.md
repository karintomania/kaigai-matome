+++
date = '2025-06-22T00:00:00'
months = '2025/06'
draft = false
title = 'GoogleのTPUを徹底解説！AIチップの深層に迫る'
tags = ["AI", "TPU", "ハードウェア", "半導体", "Google"]
featureimage = 'thumbnails/color4.jpg'
+++

> GoogleのTPUを徹底解説！AIチップの深層に迫る

引用元：[https://news.ycombinator.com/item?id=44342977](https://news.ycombinator.com/item?id=44342977)




{{<matomeQuote body="TPUがNVIDIAの強力な競合なのに、Googleの時価総額が低いのはなんで？ 3.5兆円とかの値がつくチップメーカーがあるのに、Googleは2兆円？ しかもGoogleはTPUを売らないらしいけど、レンタルより販売の方が会社の他の事業と同じくらい良いビジネスになるはずじゃん？ この矛盾が理解できないな。" userName="lanthissa" createdAt="2025/06/22 11:05:52" color="#45d325">}}




{{<matomeQuote body="Wall Streetは初日からGoogleを過小評価してたんだよ。Bezosも言ってたけど、会社の調子が良い時ほど株価が低迷することもある。<br>だからさ、時価総額なんてビジネスの本当の価値とは違うんだ。<br>Wall Streetの失敗を笑えるこの記事もあるよ。 [0]<br>[0] https://www.nbcnews.com/id/wbna15536386" userName="Velorivox" createdAt="2025/06/22 13:06:15" color="#38d3d3">}}




{{<matomeQuote body="GoogleがIPOした時、会社のランチで評価額が理解できないってみんなで話してたな。俺は株買わなかったんだ。 ”クラウド”も分かんなかったし。 新しいビジネスってマジで何もない所から生まれる感じだよね。 GoogleとかAmazonの価値が上がったのも、会社が頑張っただけじゃなくて市場全体が変わったせいもあると思う。<br>だからさ、俺の投資アドバイスは聞いちゃダメだよw でもインデックス買いは上手くいったかな。" userName="YZF" createdAt="2025/06/23 01:34:56" color="">}}




{{<matomeQuote body="Wall Streetが新しい技術や株価を見誤ることがあるからって、評価が低い全ての株が革命的ってわけじゃないんだ。多くの会社が上手くやれなくて失敗してるし、市場はそれをちゃんと見抜いて評価を下げることもあるんだぜ。" userName="ethbr1" createdAt="2025/06/23 03:14:39" color="">}}




{{<matomeQuote body="TPUを販売してサポートするには、かなりデカいインフラが必要になるんだよ。レンタルでもっと高い利益率が得られるなら、そんな面倒なことする理由ある？<br>それに、TPUがすごく良いなら、競合にそれを分けて競争条件を同じにしない方が賢明だろ。<br>それに「最高のチップメーカー」っていうとNVIDIAくらいで、Alphabet（Googleの親会社）はTPU以外にも色んなことやってるからね。" userName="smokel" createdAt="2025/06/22 11:51:40" color="#ff33a1">}}




{{<matomeQuote body="Google Cloudって、TPUをAWS Outpostみたいなモデルで提供してるのかな？ クラウドアクセスとセットにするのが、多分一番簡単で「最高」の提供方法だと思う。 Super MicroとかGigabyteみたいな会社が、それ用の箱を作るのに対応しなきゃいけない、なんてことになるのはマジで避けてほしい事態だし、生チップを売らないのは確かに理解できるね。" userName="matt-p" createdAt="2025/06/23 02:17:33" color="#38d3d3">}}




{{<matomeQuote body="NVIDIAは話題性で大量のチップを売ってる感じだね。<br>GoogleはTPUを作ることでコストをめちゃくちゃ節約してる。これはAIがもっと儲かるようになった未来で報われるはずだよ。今はまだ誰も基盤モデルからガッツリ利益を出せてないし、長い戦いさ。<br>俺はNVIDIAはめちゃくちゃ過大評価されてると思うな。" userName="dismalaf" createdAt="2025/06/22 12:07:16" color="#785bff">}}




{{<matomeQuote body="これはゴールドラッシュによくある話だね。でも、彼ら（NVIDIA）はチップを売ってちゃんと儲けてるんだよ。過大評価されてる？ そうかもしれない。儲かってるかって？ （WeWorkとかUberと違って）うん、かなりね。" userName="CalChris" createdAt="2025/06/22 14:20:08" color="">}}




{{<matomeQuote body="NVIDIAはソフトサポートも良くて、売上も反映されて時価総額3.5兆ドル。Googleはソフトがイマイチなのに2.0兆ドル。AMDもソフトが微妙で0.2兆ドルだよ。GoogleはTPUでいくつか判断ミスしたかも。TF1と密接に結びつけたり、TF2との非互換性でPytorchへの乗り換えを促しちゃったしね。Google Cloud限定にしたのも adoption に繋がらなかった。Academia や enthusiast は無料で使いたいもんね。Googleの時価総額はAIチップで二番手って評価を反映してるのかも。" userName="michaelt" createdAt="2025/06/22 14:29:38" color="#ff33a1">}}




{{<matomeQuote body="JAXは（コミュニティ不足はさておき）ちゃんと使える（僕から見たらより良い）ソフトサポートだよ。特に彼らの image を使うならね。TensorFlowよりずっとJAX/Flaxなんかを使ってるんだ。研究成果を見る限りPytorchは使ってないみたい。例えば siglip/siglip2 は Flax linen でリリースされたよ: https://github.com/google-research/big_vision<br>TPUはソフトサポートあるからSSIとかも使ってるんだよ。あとGoogleはここでTPUを無料で提供してるよ: https://sites.research.google/trc/about/。僕はここ半年使ってるんだ。" userName="que-encrypt" createdAt="2025/06/22 19:11:19" color="#ff5733">}}




{{<matomeQuote body="JAXはPytorchより学習が大変だったよ。もしかしたらそれだけの価値（yay FP!）はあるかもだけど、adoptionには役立たないね。GoogleがPytorchを使わないのは、社内にツールがあると他を使っちゃいけない文化だから。品質に関わらずね。TF1/TF2の騒動もこれが理由だよ。Googleは使わなくても、僕ら外部の人間はPytorchをすごく使うんだ。TRCで無料でTPU使うにはJAXが必須なんだよ。ほとんどの研究者は無料計算リソースがないから、品質で勝つより囲い込みたいんだろうね。JAXを推してる人の多くはTRC利用者だったり、他の手段でTPUのクレジットをもらってるんだ。" userName="throwaway314155" createdAt="2025/06/22 22:37:04" color="#785bff">}}




{{<matomeQuote body="あとさ、GCPでTPU使うのって（特に＜fancy_school＞.eduみたいなメアド持ってないと）昔はマジで fucking nightmare だったんだよ。絶対 shit show。" userName="throwaway314155" createdAt="2025/06/23 05:25:52" color="">}}




{{<matomeQuote body="僕は高校生だけど、eduメールなしで簡単にtpuv4-64を手に入れられたよ。特別な学校でもeduメールでもなく、ただgeoguessrで勝ちたい夢があっただけ。メールへの反応も良くて、もっと欲しいって頼んだら追加してくれたんだ。" userName="que-encrypt" createdAt="2025/06/27 03:28:05" color="">}}




{{<matomeQuote body="Googleの他の内部技術みたいに、TPUを使うにはかなり極端な量のカスタム junk をサポートする必要があるんだ。そのカスタム junk なしだと、その有用性は怪しいね。Googleが動画圧縮カードを販売しない理由を聞くようなものだよ。" userName="jeffbee" createdAt="2025/06/22 14:23:59" color="">}}




{{<matomeQuote body="皮肉なことに、Googleは結局 advertising company なのに、自分自身を advertising するのが一番下手な会社だよね。" userName="Workaccount2" createdAt="2025/06/23 01:26:14" color="">}}




{{<matomeQuote body="NVIDIA対Googleの具体的な話はさておき、会社の価値評価について一つ注意したいのは、会社の全ての parts が必ずしも additive ではないってこと。例えば（これは作り話だけど）昔のNetflix対Blockbusterを考えてみて。BlockbusterがDVD配送も始めたら、小売 operation もあるから obviously Netflixより価値があると思うだろうけど、それは小売 operation が長期的な asset だと presuppose してるんだ。もしBlockbusterが小売 business に関連する financial obligations（leasesとか長期契約とか）をたくさん抱えてたら、小売 business がBlockbusterの評価額にとって substantial drag になることだって quickly あり得るんだ。" userName="roughly" createdAt="2025/06/22 16:50:10" color="">}}




{{<matomeQuote body="AMDとかHuaweiみたいな会社もそこそこ許容できるチップを作ってるけど、それらを使うのはちょっと nightmare だよね。これってTPUでも似たような感じなのかな？TPUももっと difficult で、Google Cloudの中にしか存在しないとか？" userName="matt-p" createdAt="2025/06/22 20:30:54" color="">}}




{{<matomeQuote body="BroadcomもTPUの製造とか networking infrastructure にかなり関わってると思うんだけど、彼らの現在の価値は1.2兆ドルだよ。もしかしたらBroadcomとGoogleの combined value で考えるべきかもね。" userName="radialstub" createdAt="2025/06/22 12:39:13" color="">}}




{{<matomeQuote body="Nvidia側にはTSMCも加える必要があるんじゃない？" userName="lftl" createdAt="2025/06/22 13:38:55" color="">}}




{{<matomeQuote body="何言ってんのかよくわかんないな。BroadcomとGoogleのチップ、誰が作ってると思ってんの？" userName="santaboom" createdAt="2025/06/22 16:49:06" color="">}}




{{<matomeQuote body="ああ、Broadcomがファブレスで設計だけ手伝ってるって知らなかったよ。" userName="lftl" createdAt="2025/06/22 18:00:59" color="">}}




{{<matomeQuote body="Broadcomはファブレスだよ。ハードウェア設計を手伝ってて、Googleは主にソフトウェアスタックを担当。Nvidiaはハードウェアとソフトウェア両方だね。" userName="radialstub" createdAt="2025/06/22 15:43:08" color="">}}




{{<matomeQuote body="GPUに対して競争優位性があって、それが自社のコア製品に役立つなら、長期的にその優位性を保つのは合理的だと思わない？" userName="mft_" createdAt="2025/06/22 12:38:27" color="">}}




{{<matomeQuote body="いや、TPUをちゃんと売れば、競合が得る利益の一部を得て、稼げるはずのお金があるのに。TPUが実践的にそこまでじゃないのかもね。他のコメント見ると使いにくいみたいだし。たぶん、GoogleほどTPUを使いたい人がいないから、高く売っても買い手がつかないってのが本当の理由じゃない？" userName="Uehreka" createdAt="2025/06/22 18:32:17" color="#ff33a1">}}




{{<matomeQuote body="価格と内在価値と市場分析をごっちゃにしてない？全部違うものだよ。" userName="epolanski" createdAt="2025/06/22 22:00:58" color="">}}




{{<matomeQuote body="いい質問だね。TLDRは、TPUはGoogleには良いけど、他の事業ほど儲からないってこと。Googleからの価値じゃなく、Googleへの価値提供なんだ。<br>詳細として、1) TPUはGoogleのニーズにはいいけど、GPUほど柔軟じゃないから、広い市場には向かない。2) 最高チップメーカーでも兆円超えはNvidiaとBroadcomだけ。彼らはチップだけでなくシステムを作る「システムメーカー」だから。GoogleもBroadcomと組んでる。システム設計が大事なんだ。3) TPUを売る問題は顧客とマージン。Googleのニーズしか合わないから顧客は？ハイパースケーラー相手だとマージン薄くなるし、みんなBroadcomと組んでる。Nvidia＼CUDAユーザーを顧客にするなら、TPUの目的を大きく変えないと。<br>長くなったけど、これがGoogleのTPUがGoogleの他の事業ほど大きくならない理由だよ。" userName="santaboom" createdAt="2025/06/22 17:42:02" color="#45d325">}}




{{<matomeQuote body="Googleが事業拡大できるくらい世界に半導体製造能力（ファウンドリ容量）の余裕があるかっていうと、そうじゃないんだよね。そこで競争するにはすごいオペレーション力が必要だけど、Googleはそれが得意じゃない。この記事によると、2025年にはNvidiaがAIチップ用ウェハーの77%を使うらしい。AWS、AMD、Googleはシェアを減らすって。https://www.tomshardware.com/tech-industry/artificial-intell...”Nvidia to consume 77% of wafers used for AI processors in 2025: Report...AWS, AMD, and Google lose wafer share.”" userName="throwaway31131" createdAt="2025/06/22 22:09:12" color="#ff5733">}}




{{<matomeQuote body="GoogleのTPUってさ、実用的な使い道はおまけみたいな、研究プロジェクトって感じじゃないの？" userName="rwmj" createdAt="2025/06/22 12:26:54" color="">}}




{{<matomeQuote body="GoogleのMLは全部TPUで動いてて、何十億ドルも稼いでるんだぜ。<br>君の言い方じゃ、TPUは明日にも消えるGoogle Xのやばいプロジェクトみたいに聞こえるな。" userName="silentsea90" createdAt="2025/06/22 16:14:25" color="#45d325">}}




{{<matomeQuote body="その収益って何？<br>GoogleのAIに直接お金払ってる人なんてほぼいないし、広告ビジネスも劇的に変わってないみたいだけどな。" userName="lmm" createdAt="2025/06/23 00:33:41" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="原コメはAIじゃなくてMLって言ってたんだぜ。<br>Googleの検索とか広告とかは全部MLで動いてるし、Alphabetのムーンショット、例えばDeepMindやWaymoとかもそうだよ。" userName="happyopossum" createdAt="2025/06/23 01:06:25" color="#45d325">}}




{{<matomeQuote body="なんでそう言うの？<br>ハードウェアはもう7世代目だし、記事にもある通り最初からGoogleのAIのために作られたんだ。<br>俺的には、Google CloudでTPUを売るのがおまけだと思うな。" userName="hackernudes" createdAt="2025/06/22 16:07:49" color="">}}




{{<matomeQuote body="君はGoogle Coralのこと言ってるんじゃない？<br>一般に直接売られてるのはあれだけだよ。" userName="wkat4242" createdAt="2025/06/23 02:19:37" color="">}}




{{<matomeQuote body="「キャッシュのおかげでGPUは柔軟」ってのは正しいけど、言い方が違うぜ。<br>エネルギー食うのはキャッシュじゃなくて、MMUが「ページフォルト」の時に勝手にデータを扱うからなんだ。<br>TPUにはMMUがないし、プルじゃなくてプッシュアーキテクチャなんだよ。" userName="almostgotcaught" createdAt="2025/06/22 04:29:16" color="#38d3d3">}}




{{<matomeQuote body="記事にはFPGAとの比較がないね。<br>FPGAならSIMD以外にも色んなデータ処理をシストリックにできるんだ。<br>240個のDSPスライスがあれば、オーバーヘッドなしで240コアとして動かせるんだぜ。" userName="Neywiny" createdAt="2025/06/22 13:55:19" color="#45d325">}}




{{<matomeQuote body="FPGAはASICより高いし電気食うから、たくさん作るものには向かないんだよね。Googleみたいにデカい会社ならTPU開発の費用なんてすぐ取り戻せるし。FPGAとTPUを比べるのは、3Dプリンターで作るのと金型で作るのを比べるようなもんかな。最近FPGAとASICで性能差がついたのは、FPGAが古いCMOSプロセスのままだからってのもあるかも。" userName="adrian_b" createdAt="2025/06/22 13:59:14" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、FPGAは量産に向かないってのは俗説だよ。Blackmagicとか安いシネマ機材にもXilinx＼AMD FPGAやZynqが使われてるし、画像処理カメラなんてほぼFPGAだよ。最新プロセスで出てるハイエンドFPGAもあるしね。FPGAの本当の弱点は、プログラムできるようにする構造がASICより複雑で、性能（クロック速度）が出にくいってことかな。" userName="cpgxiii" createdAt="2025/06/22 17:44:05" color="#785bff">}}




{{<matomeQuote body="なるほど、いくつか補足ね。TPU並みのFPGAはVersalとかUltrascale+で何千ドルもするよ。最新のASIC（n3）のデカいチップが100ドルくらいなのに比べると高いね。FPGAはASICと違って、サポートできる論理回路（ロジックゲート）の数が少ないから、チップ単価も高くなりがち。あと、Versalは7nmで、ASICの最新（n3）じゃないけど、そんなに古いプロセスでもないと思うな。" userName="santaboom" createdAt="2025/06/22 17:57:56" color="#ff5733">}}




{{<matomeQuote body="ハイエンドFPGAってVersalのTSMC 7nmのこと？それ、6年前のAMD Zen 2 CPUと同じで、今のCPUやGPUに比べたら古くない？しかも何千ドルもするから、同じくらいの性能のGPUよりずっと高いよね。Googleみたいな大企業はASIC作れちゃうし。個人的にはFPGA好きなんだけど、高性能なやつは高くて買えないのが残念。手頃な高性能FPGAだとUltraScale+だけど、それは14nmで10年前のプロセスなんだよね。" userName="adrian_b" createdAt="2025/06/22 18:07:32" color="#38d3d3">}}




{{<matomeQuote body="ASIC作れるならそれが一番だよね。でも僕が言いたかったのは、みんなGPUとTPUを比べるけど、GPUもAIに特化したASICではないってことなんだよ。" userName="Neywiny" createdAt="2025/06/22 14:05:52" color="#785bff">}}




{{<matomeQuote body="まあ、近いよね。基本的にはmatmul（行列積）に特化したASICみたいなもんだから。" userName="QuadmasterXLII" createdAt="2025/06/22 14:40:54" color="">}}




{{<matomeQuote body="DSPがいっぱい載ってるFPGAもそう言えるかもね。GPUの使ってない部分に比べて、FPGAの使ってないロジックは静的な消費電力が少ないはずだよ。" userName="Neywiny" createdAt="2025/06/22 15:18:12" color="">}}




{{<matomeQuote body="GoogleもFPGAを検討したけど、やめたんだろうね。最高の性能出すにはmatmulはASICにする必要があったんだと思う。再構成できる部分はCPUで十分だしメンテも楽だし。FPGAはニッチな立ち位置だよね。論理回路の効率はいいけど、AIの肝である行列計算のスループットだとTPUやGPUには勝てない。しかもFPGAは勉強が大変で、開発も時間かかるし。ちょっと変更しただけで動かなくなって全部やり直し！なんてこともよくあるんだよね。" userName="daxfohl" createdAt="2025/06/22 18:14:27" color="#ff33a1">}}




{{<matomeQuote body="FPGAは大量注文すればそんなに高くないよ。mouserとかで見る単価は、実際に取引される価格よりずっと高いんだから。" userName="c-c-c-c-c" createdAt="2025/06/22 14:25:24" color="">}}




{{<matomeQuote body="ハイパースケーラーみたいなとこだと、チップの実際の価格はそんなに重要じゃないんだよね。本当に大事なのはperf＼watt（性能あたりの消費電力）で、同じ回路でもFPGAはASICより桁違いに悪いんだ。" userName="monocasa" createdAt="2025/06/22 14:32:51" color="#ff33a1">}}




{{<matomeQuote body="TPUのシストリックアレイに合うアルゴリズムって、行列積とか畳み込み以外にある？固有値分解とかSVDとか行列指数関数とかAx=bとかコレスキー分解とかはどうなの？おすすめのリファレンスある？" userName="RossBencina" createdAt="2025/06/22 06:24:40" color="#785bff">}}




{{<matomeQuote body="前のコメントの人へ。これ読んでみて。<br>TPUハードウェアへの計算のマッピングについて詳しく書かれてる。特にTransformerの計算に重点置いてるよ。<br>https://jax-ml.github.io/scaling-book/" userName="musebox35" createdAt="2025/06/22 06:52:19" color="#45d325">}}




{{<matomeQuote body="固有値分解とかSVDはKrylov法とかでよく行列積に落とし込めるから、TPUはうまく動くと思うよ。Ax=bを解くGMRESもArnoldi分解がベースだしね。" userName="cdavid" createdAt="2025/06/22 08:39:19" color="#ff33a1">}}




{{<matomeQuote body="128x128（もっとデカい方がいいけど）の密行列積として表現できるものなら何でも得意だよ。" userName="WithinReason" createdAt="2025/06/22 06:30:31" color="#785bff">}}




{{<matomeQuote body="質問のやつ、ほとんど行列積でできるよ。Ax=BはNewton法で逆行列求めて行列積、行列指数関数はスケール＆スクエア法、SVDは極分解からいける。コレスキーは行列積がプリミティブならあんま使わないかな。固有値分解は対称ならブロックJacobi法＋行列積で。ただ、数値的な安定性にはマジで注意しないとね！" userName="Straw" createdAt="2025/06/24 12:46:57" color="#ff5c5c">}}




{{<matomeQuote body="記事にあるTPUの冷却チャネルの写真だけど、ポンプかメーターバルブにNEMAステッパーモーター使ってる？<br>https://henryhmko.github.io/posts/tpu/images/tpu_tray.png<br>もしそうなら、なんか大げさな気がするな。" userName="serf" createdAt="2025/06/22 06:35:22" color="">}}




{{<matomeQuote body="閉ループだろうね。もしかしたらサーボかも。" userName="fellowmartian" createdAt="2025/06/22 08:18:16" color="">}}




{{<matomeQuote body="関係あるかもだけど、これ見て。<br>OpenTPU: オープンソースのGoogle TPU再実装プロジェクト - https://news.ycombinator.com/item?id=44111452 - 2025年5月のHacker Newsのスレッドだよ。" userName="mdaniel" createdAt="2025/06/22 15:58:51" color="#ff5733">}}




{{<matomeQuote body="TPUのすごいとこは、スケールしたときの遅延が予測可能なこと。ハード、コンパイラ、ランタイム、インターコネクト全部自前だからバラつきをなくせるんだよね。なんでGoogle以外はこれを真似できてないんだろ？ハードが難しいのか、それともコンパイラやランタイムの統合が難しすぎるの？" userName="b0a04gl" createdAt="2025/06/22 13:43:39" color="#ff33a1">}}




{{<matomeQuote body="Groqについても見てみたら？WikipediaとHacker Newsの記事が参考になるかも。<br>https://en.wikipedia.org/wiki/Groq<br>https://news.ycombinator.com/item?id=44345738" userName="transpute" createdAt="2025/06/22 15:47:56" color="#785bff">}}




{{<matomeQuote body="Googleで働いてないのに、どうしてTPUについてこんなに詳しいの？って驚いてるみたいだね。" userName="frays" createdAt="2025/06/22 07:35:39" color="">}}




{{<matomeQuote body="記事の内容は、Googleが公開してる論文とか講演で大体知られてることだよ。細かいとこは推測が必要だけどね。JaxとXLAもTPUの仕組みを知るヒントになるよ。参考になるかも。<br>https://arxiv.org/abs/2304.01433<br>https://jax-ml.github.io/scaling-book/" userName="ipsum2" createdAt="2025/06/22 08:10:24" color="#ff5c5c">}}




{{<matomeQuote body="記事の謝辞から、著者はTRC（TensorFlow Research Cloud）でTPUにアクセスしたっぽいね。<br>https://sites.research.google/trc/about/<br>でも、GCPで企業がGPU代わりに使うとか、他の方法でもTPUに触れることはできるよ。" userName="musebox35" createdAt="2025/06/22 08:07:38" color="#38d3d3">}}




{{<matomeQuote body="手軽に無料でTPUを使いたいならGoogle Colabがいいよ！<br>https://colab.research.google.com<br>「ランタイム」→「ランタイムタイプの変更」→「v2-8 TPU」を選んでみて。" userName="erwincoumans" createdAt="2025/06/22 09:07:34" color="#ff5733">}}




{{<matomeQuote body="Hennessyのコンピュータ・アーキテクチャの最新版に、TPUの詳しい説明が載ってるよ。Hennessyは初期のTPU設計にも関わってたみたいだしね。" userName="antognini" createdAt="2025/06/24 03:58:04" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="すごく良い記事だね、ありがとう！メリットについて書かれたところが特に分かりやすかったよ。" userName="trostaft" createdAt="2025/06/22 14:57:18" color="">}}




{{<matomeQuote body="ELI5（分かりやすく教えて）：GPUとかTPUの最適化って、LLMの決まった出力になるかどうか（決定論）にどう影響するの？それとも関係ないの？" userName="sgt101" createdAt="2025/06/22 08:56:18" color="">}}




{{<matomeQuote body="LLMは普通、決まった出力になる（決定論的）よ。トークンのサンプリングでランダムにするのは、もっと良い結果（創造性）を出したり、ループを避けるため。これはオフにできるんだ（温度をゼロにすれば）。" userName="barrkel" createdAt="2025/06/22 09:04:14" color="#ff5733">}}




{{<matomeQuote body="LLMが決定的だっていう考えはめっちゃ間違いで、信じると痛い目見るよ。<br>あとgreedy samplingはやめた方がいいって論文もあるらしい。これこれ→ https://arxiv.org/abs/2506.09501<br>要約すると、bfloat16とかgreedy decodingだと、ハードウェアとかバッチサイズで精度が9％も変わったり、出力トークン数も9000も違ったりするんだって。原因は浮動小数点演算の非結合性。再現性の話、評価で無視されがちだけど超重要！" userName="Der_Einzige" createdAt="2025/06/22 15:17:55" color="#ff33a1">}}




{{<matomeQuote body="これってTPUにも当てはまるの？それともGPUだけ？" userName="marcinzm" createdAt="2025/06/22 19:27:36" color="">}}




{{<matomeQuote body="これってシステム全体の話だよ。<br>CPU使っても、計算結果がどう処理されるかちゃんと設計しないと、ばらついちゃうんだよ。" userName="recursivecaveat" createdAt="2025/06/23 00:23:07" color="">}}




{{<matomeQuote body="これはちょっと単純化しすぎかな。<br>分散処理だと、足し算の順番がバラバラになるせいで、浮動小数点のエラーで結果が変わっちゃうことがあるんだよ。<br>細かいことだけど、モデル学習の再現性には結構効いてくるんだ。" userName="sgeisenh" createdAt="2025/06/22 12:54:21" color="#45d325">}}




{{<matomeQuote body="seed固定すればいいだけじゃダメなの？" userName="perching_aix" createdAt="2025/06/22 11:52:44" color="">}}




{{<matomeQuote body="アーキテクチャでパフォーマンスの決まり具合は違うけど、結果自体が変わるわけじゃないよ。<br>TPUはGroqみたいなVLIW系に近くて、Groqはマジで完全に決定的（計算にかかる時間も！）。これはすごいコンパイラが必要ってトレードオフがあるんだけどね。<br>GPUはチップが賢くスケジューリングしてくれるから柔軟だけど、その分決定的じゃないんだ。<br><br>まとめると、TPUは時間も決まってるかもだけど、GPUは今はない。でも、ちゃんとプログラムすればどっちも同じ結果は出すよ。" userName="jpgvm" createdAt="2025/06/22 10:40:11" color="#45d325">}}




{{<matomeQuote body="これすごい情報！知識を教えてくれて本当にありがとう！" userName="sgt101" createdAt="2025/06/22 18:43:36" color="">}}




{{<matomeQuote body="TPUをNVIDIA GPUと比べるなんてバカげてるね。TPUみたいな専用チップは、GCPでしか使えないし、クラウド業界の独占状態じゃ将来ないと思う。誰も使いたがらないのがGCPの一番ダメなとこ。これからNVIDIA GPUとGoogle TPUの差（CUDAとか）はますます開く一方だよ。AMDはGoogleの失敗を避けてるけど、AMDもクラウドを始めたりしないか心配だね。" userName="cheptsov" createdAt="2025/06/22 14:32:06" color="#38d3d3">}}




{{<matomeQuote body="TPUは一般の人が使うかどうか関係なく成功するだろうね。だってGoogle社内でのTPUの需要がマジでヤバいから。作られるTPU全部、Googleが買い取れるくらいなんだって。" userName="hiddencost" createdAt="2025/06/22 14:45:11" color="">}}




{{<matomeQuote body="一つ注目すべきはね、TPUは特定の処理に特化してるってこと。Googleはこれで成功したけど、Googleの他の技術みたいに、将来的に選択肢を狭めちゃうかも。TPUに集中しすぎると、最適な方法じゃなくても、GoogleがTPUをいっぱい持ってるからTPUが得意な処理を選ばなきゃいけなくなる。Googleは業界に影響力あるから、これって結構デカい話だよ。" userName="roughly" createdAt="2025/06/22 16:56:05" color="#ff5c5c">}}




{{<matomeQuote body="主要なクラウド会社はどこも自社AIチップ作ろうとしてるよ。Google以外だと、AmazonにはTrainiumとかInferentiaがあって、Anthropicが結構使ってる。Microsoftもやってるけど遅れてるみたい。OpenAIやMetaも自社開発してるんだって。だからBroadcomとかMarvellの株価が上がったんだね。" userName="hustwindmaple1" createdAt="2025/06/23 01:25:03" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
