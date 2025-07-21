+++
date = '2025-07-14T00:00:00'
months = '2025/07'
draft = false
title = 'AppleのMLXにCUDAサポート追加！'
tags = ["Apple", "MLX", "CUDA", "AI", "開発"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> AppleのMLXにCUDAサポート追加！

引用元：[https://news.ycombinator.com/item?id=44565668](https://news.ycombinator.com/item?id=44565668)




{{<matomeQuote body="確認させてね。これってつまり、<br>1. MLX用に作られたプログラムはCUDA対応チップを活用できるけど、<br>2. CUDAプログラムはApple Siliconでは動かないってこと？<br>2はNVIDIAの「堀」に関する著作権侵害になるからだよね。これ合ってる？" userName="lukev" createdAt="2025/07/15 02:18:38" color="#785bff">}}




{{<matomeQuote body="いや、そうじゃないよ。2（CUDAプログラムがApple Siliconで動くこと）は、かなり難易度が高いからだよ。" userName="saagarjha" createdAt="2025/07/15 02:28:30" color="">}}




{{<matomeQuote body="既存のCUDAコードをNVIDIA以外のハードウェアで動かすことには、莫大な（何十億もの）金銭的なインセンティブがあるよね。簡単じゃないのは分かるけど、実装の難しさが本当に足かせになってるの？" userName="lukev" createdAt="2025/07/15 02:39:46" color="">}}




{{<matomeQuote body="それは1のことだよ。開発者が比較的低電力なAppleデバイス（UMA搭載）を使って、NVIDIAの比較的ハイスペックなシステムにデプロイするために開発できるってことさ。<br>いろんな意味でこれは良い点だね。" userName="quitit" createdAt="2025/07/15 02:39:35" color="#ff5c5c">}}




{{<matomeQuote body="2は著作権侵害じゃないよ。APIは再実装できるからね。" userName="sitkack" createdAt="2025/07/15 05:48:42" color="">}}




{{<matomeQuote body="CUDAはAPIじゃなくて、NVIDIAが書いたライブラリのセットだよ。それらのライブラリを再実装する必要があるし、みんなに価値があると思わせるにはそのライブラリの最適化まで再実装しないといけない。それは色々なIP問題に関わってくるんだ。" userName="adastra22" createdAt="2025/07/15 06:25:10" color="#ff5733">}}




{{<matomeQuote body="既存の高性能CUDAコードはほとんどがNVIDIA製のファーストパーティライブラリで、奇妙な内部フラグやインラインPTXを使ってるんだ。コンパイラ開発者の小さなチームがいれば9割はいける。でも残りの1割は、何百人もの人が10年かけても難しいだろうね。<br>このコストは、君が言ってた何十億もの金銭的インセンティブと怪しいくらい近いじゃん。効率的な市場って面白いね。" userName="fooker" createdAt="2025/07/15 05:34:52" color="#785bff">}}




{{<matomeQuote body="「”比較的ハイスペック”」？<br>他にこれより速いものなんてないでしょ。" userName="_zoltan_" createdAt="2025/07/15 06:47:00" color="">}}




{{<matomeQuote body="「”効率的な市場って面白いね”」<br>生産チェーンの様々な段階に複数のほぼ独占状態の企業がいて、莫大な統合と無限の国家支出がある中で、本当に効率的な市場なんて言えるのかな？" userName="lcnielsen" createdAt="2025/07/15 05:42:27" color="">}}




{{<matomeQuote body="CUDAってAPIやライブラリだけじゃないんだよ。C／C++／Fortran／Pythonのコンパイラとか、各種ライブラリ、IDE連携、デバッガ、プロファイラまで含む一大エコシステムなんだ。だから一部だけ真似しても意味ないんだよね。" userName="pjmlp" createdAt="2025/07/15 06:51:00" color="#45d325">}}




{{<matomeQuote body="結局、重要なのはランタイムだけだよ。コンパイラ以外の開発ツールなんて誰も気にしないって。みんな、競合するハードウェアで再コンパイルして動かしたいだけなのに、なんでこんなに難しいのか理解できないわ。" userName="CamperBob2" createdAt="2025/07/15 15:57:24" color="">}}




{{<matomeQuote body="CUDAってNVIDIAのハードウェアとかアーキテクチャにめっちゃ密着してるの？だから他のプラットフォームだと、抽象化しても全然意味ない感じなのかな？ハードウェアとか詳しい人教えてほしいな、ありがとう。" userName="hangonhn" createdAt="2025/07/15 02:48:44" color="">}}




{{<matomeQuote body="うん、そうだよ。AMDを見てごらん。" userName="saagarjha" createdAt="2025/07/15 02:45:02" color="">}}




{{<matomeQuote body="最適化されてなくても、CUDAの代替が出てくるのは嬉しいね。あと、APIとライブラリの違いってなんだろう？ライブラリからAPIを公開できるんじゃないの？ちょっと混乱するな。" userName="Imustaskforhelp" createdAt="2025/07/15 06:43:50" color="">}}




{{<matomeQuote body="Appleが著作権でCUDAを実装できないなら、LMX（MacBook向け）に開発者を呼んでNVIDIAハードウェアをサポートさせるのが次善の策だよね。AppleはAMDにも同じことすべきだよ。" userName="chvid" createdAt="2025/07/15 07:15:27" color="">}}




{{<matomeQuote body="AMDは今までCUDA APIを実装したことないんだよね。しかも技術的な理由じゃないんだから。" userName="lukev" createdAt="2025/07/15 02:49:42" color="">}}




{{<matomeQuote body="AppleはMetalと自社プロセッサをNVIDIAより速くするために、どうすればいいんだろうね？結局、インターコネクトが全てなんだろうな。" userName="sgt101" createdAt="2025/07/15 07:16:39" color="#ff33a1">}}




{{<matomeQuote body="自由市場と独占って矛盾しないよね。でも、独占企業がその地位を使って別の独占を狙うのは問題で、政府が最終的に規制するんだ。国の役に立つものを壊したくないから、時間はかかるけどね。" userName="fooker" createdAt="2025/07/15 06:13:05" color="#ff33a1">}}




{{<matomeQuote body="「APIをライブラリから公開できるんじゃないの？」って質問あったけど、それやっちゃうと著作権侵害になるんだよ。" userName="adastra22" createdAt="2025/07/15 06:57:25" color="#ff33a1">}}




{{<matomeQuote body="そう、できるはずだよ。CUDAには昔Appleが支援してた競合のOpenCLがあったんだからね。" userName="bigyabai" createdAt="2025/07/15 05:52:57" color="#38d3d3">}}




{{<matomeQuote body="GoogleとOracleの訴訟での米最高裁判所の判決とJavaの再実装が、CUDA APIのようなものを企業が再実装するのに十分な判例になったと思ってたんだけどな？<br>https://www.theverge.com/2021/4/5/22367851/google-oracle-sum...<br>https://en.wikipedia.org/wiki/Google_LLC_v._Oracle_America,_...." userName="xd1936" createdAt="2025/07/15 12:17:58" color="#785bff">}}




{{<matomeQuote body="彼らはやったよ、というか誰かに金払ってやらせたんだ。<br>https://www.techpowerup.com/319016/amd-develops-rocm-based-s..." userName="gpm" createdAt="2025/07/15 02:54:07" color="#785bff">}}




{{<matomeQuote body="コメント42172はあまり正確じゃないと思うな - AMDのHIPはOpenCLを2017年か2018年ごろに諦めて以来、まさにこれと同じことをしてるんだから。" userName="tho234j2344" createdAt="2025/07/15 05:23:40" color="#ff5733">}}




{{<matomeQuote body="＞＞効率的な市場と言えるのか？<br>＞＞はい、自由市場と独占は両立します。どうして”効率的な市場”から”自由市場”に話が飛んだんだ？前者は本質的に価値があるものだけど、後者はそうじゃないだろ。もしその自由が、「もちろんビジネスを始められるよ、自由な国だからね。でも間違いなく失敗するけどね、市場に既得権益の独占企業がいるから。」ってなるならな。それに、独占企業は他の市場参加者から過剰な価値を搾取してるんだ、例えばAppleのAppStoreの手数料みたいに。それを”効率的”って認めるのは、市場に関して言えば本当に変な使い方だよ。" userName="Perseids" createdAt="2025/07/15 07:25:04" color="">}}




{{<matomeQuote body="その通り！AMDのGPU用のCUDA再実装であるROCM/HIPも見てみてくれよ。" userName="timhigins" createdAt="2025/07/15 19:03:22" color="#ff33a1">}}




{{<matomeQuote body="これってワットあたりでも本当なのかな？" userName="MangoToupe" createdAt="2025/07/15 07:12:08" color="">}}




{{<matomeQuote body="著作権侵害じゃなくてIP侵害だよ。CUDAのClean-room designは著作権の主張を回避できるけど、特許侵害は必ずしも回避できないんだ。<br>https://en.wikipedia.org/wiki/Clean-room_design<br>“Clean-room designは独立した創作に基づくため、著作権侵害に対する防御として有用だ。しかし、独立した発明は特許に対する防御にならないため、Clean-room designは通常、特許制限を回避するために使えない。”" userName="Someone" createdAt="2025/07/15 07:59:28" color="#ff5733">}}




{{<matomeQuote body="今のところ、LLMにとってApple Siliconの唯一のボトルネックはメモリ帯域幅なんだ。初代M1 Ultraからここに進展がないし、UltraFusionも捨てたから、当分ここには進展なさそうだよ。" userName="summarity" createdAt="2025/07/15 09:06:46" color="#785bff">}}




{{<matomeQuote body="コメント42173が言うように、NVIDIA GPUをApple Siliconに繋いでCUDAを動かせるようになってほしいな。Apple SiliconとユニファイドメモリとGPUとCUDAをPyTorch、JAX、TensorFlowで利用したいんだ。MLXはまだ詳しく見てないから、なんとも言えないけど。" userName="tekawade" createdAt="2025/07/15 03:57:02" color="#ff5733">}}




{{<matomeQuote body="Appleが将来、MLXをサポートするデータセンター向けGPUをCUDAなしでリリースできたら最高だね。開発者がこの道を選んでくれたら、Appleにとってすごく良いことになるよ。" userName="karmakaze" createdAt="2025/07/15 13:45:35" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この手の議論だと、AndroidとJavaの有名な戦いが一番の例だろうね。" userName="7734128" createdAt="2025/07/15 06:19:18" color="">}}




{{<matomeQuote body="「え、AppleプラットフォームにはCUDAサポートないじゃん！」って思うかもだけど、このパッチはLinuxプラットフォームのCUDA 12とSM 7.0以降もサポートするんだよ。詳しくはこちら: https://ml-explore.github.io/mlx/build/html/install.html" userName="nxobject" createdAt="2025/07/14 22:23:01" color="#785bff">}}




{{<matomeQuote body="これってElectronとか作ったzcbenzさんからのものなんだね。すごい！ https://zcbenz.com/" userName="paulirish" createdAt="2025/07/15 00:29:40" color="">}}




{{<matomeQuote body="MLXの主要機能の1つである統合メモリアーキテクチャ（UMA）ってどうなるの？（リポジトリのREADME見てよ: https://github.com/ml-explore/mlx）どんなベンダーのUMA APUでも使えるようになったら面白いけど、個別のGPUは別のアプローチが必要なんじゃないかと思ったよ。<br>追記: PRコメントを読んだら、CUDAがUMA APIを直接サポートして、必要な時に透過的にコピーするらしいね。" userName="zdw" createdAt="2025/07/14 22:32:39" color="#38d3d3">}}




{{<matomeQuote body="あー、分かるよ。俺の経験だとプリフェッチが足りなくて、メモリコピー待ちでパフォーマンスがガタ落ちしちゃったんだ。データセットがVRAMに全部収まるならいいけど、俺のMLトレーニングアプリでは性能が死んだから、ストリーミングロードに移行する時間すらできたよ。" userName="freeone3000" createdAt="2025/07/15 02:27:15" color="#ff5c5c">}}




{{<matomeQuote body="これってNVIDIAカードを積んだMac向けなの？それともApple MetalとかApple SiliconがCUDAを使うってこと？よく分からないな。<br>編集: どうやら「一度書けばどこでも使える」みたいだね。MLXで書けば、Linux CUDAでもApple Silicon/Metalでも動くってことか。" userName="MuffinFlavored" createdAt="2025/07/14 22:52:05" color="#ff33a1">}}




{{<matomeQuote body="もう答え見つけたみたいだね。<br>Appleはもうずいぶん長い間NVIDIAカードを出荷してないんだよ。Apple Silicon以前のMac Proでさえ、AMDカードしか売ってなかったし。<br>噂だと、デュアルGPU MacBook Proのトラブルとドライバーの品質で決裂したって聞いてるよ。PCIバスにNVIDIAカードを挿したらAIに使えるかどうかは、俺も分からないけどね。" userName="MBCook" createdAt="2025/07/14 23:06:16" color="">}}




{{<matomeQuote body="そのMBPモデルはGPUが熱くなりすぎて故障率が高かったんだよ。<br>スティーブ・ジョブズとジェンセン・フアンの会話はこんな感じだったんじゃないかなって想像しちゃうね:<br>S: お前のGPUはクソだ<br>J: お前の熱設計がクソだ<br>S: くそったれ<br>J: お前もな<br>Appleって、マジで根に持つタイプだし、サプライヤーとの関係も一方的だもんね。「俺たちのやり方か、さもなきゃ出て行け」って感じ。" userName="xuki" createdAt="2025/07/14 23:35:57" color="">}}




{{<matomeQuote body="MBPが熱くなりすぎたってわけじゃなくて、NVIDIA GPUに使われてたアンダーフィル材が、GPUとして普通くらいの温度（60～80度）で構造的なサポートをしなくなっちゃったんだよ。<br>Dell、HP、SonyのノートPCとか、一部のデスクトップ、それに初期のPS3でも同じGPU故障が起きてるんだ。<br>詳しくはこちらを読んでみて: https://www.badcaps.net/forum/troubleshooting-hardware-devic..." userName="narism" createdAt="2025/07/15 03:21:04" color="#ff33a1">}}




{{<matomeQuote body="故障したのはAMD製、特に古い17インチMacBook Proだったと思うな。" userName="rcruzeiro" createdAt="2025/07/15 00:58:53" color="">}}




{{<matomeQuote body="あれはNvidiaの製造欠陥が原因の故障だったんだ。俺の2008年製15インチNvidia 8600搭載MBPは保証外なのにこの件で無料で直してもらったぜ。2007年後半から2010年のMacBook ProはNvidia GPUを使ってたんだよ、AMDじゃない。詳しくは“nvidia 8600 fail”で検索してみな。" userName="spectre3d" createdAt="2025/07/17 17:25:28" color="#785bff">}}




{{<matomeQuote body="俺、2010年あたりの15インチMBP持ってたんだけど、NvidiaのデュアルGPUがマジで問題だったんだよね。" userName="MBCook" createdAt="2025/07/15 03:06:08" color="">}}




{{<matomeQuote body="ゴミ箱型Mac ProのD700sが壊れて、俺たちマジで時間も金もかなり無駄にしたんだぜ。" userName="roboror" createdAt="2025/07/15 02:32:18" color="">}}




{{<matomeQuote body="動かねーよ。ドライバのサポートないし。" userName="VladVladikoff" createdAt="2025/07/15 01:31:40" color="">}}




{{<matomeQuote body="Apple Siliconでは、PCIe／Thunderboltデバイスのメモリに書き込むと例外が出るんだ。ARMの仕様はメモリみたいにデバイスに書き込みを許可してるんだけど、Appleは外部デバイスへの書き込みを全部デバイスメモリマッピング経由に強制してるんだよね[0]。だからApple Siliconで外部GPUを使うのは超めんどくさい、無理に近いかも。Asahi使ってもApple Silicon用のeGPUドライバ作れた奴は俺が知る限りいないな。[0] https://developer.arm.com/documentation/102376/0200/Device-m... [1] Raspberry Pi 4のPCIeも同じ問題抱えてると思うよ。" userName="kmeisthax" createdAt="2025/07/14 23:30:40" color="#785bff">}}




{{<matomeQuote body="うわぁ、それってアウトオブオーダーCPUの性能を台無しにするじゃん。ARMv7みたいだとすると、同じページへのアクセスごとに、まるで独自の順序付けバリアになるってことだな。" userName="bobmcnamara" createdAt="2025/07/15 00:28:33" color="#45d325">}}




{{<matomeQuote body="デバイスメモリへの書き込みはエラーにならないんだね。" userName="saagarjha" createdAt="2025/07/15 02:21:50" color="">}}




{{<matomeQuote body="「一度書けばどこでも使える」ってことなら、俺のMLXの処理もすぐクラウドにオフロードできるようになるのかな！？" userName="hbcondo714" createdAt="2025/07/15 01:20:43" color="">}}




{{<matomeQuote body="CUDAをMLXで動かすには、これしかないと俺は思うよ。" userName="dkga" createdAt="2025/07/14 23:06:19" color="">}}




{{<matomeQuote body="その通りだね。ローカルモデルはAppleのプライベートクラウドで高速化されるだろう。" userName="whatever1" createdAt="2025/07/15 02:48:07" color="">}}




{{<matomeQuote body="いや、これはNVIDIAのグラボを積んだLinux PC向けの話だよ。" userName="cowsandmilk" createdAt="2025/07/14 22:53:37" color="">}}




{{<matomeQuote body="「Macでコード書いてテストして、スパコンにデプロイできるのは開発者にとって良い体験になる」ってあるけど、これでMLXはLinuxでも使えるようになったってこと？<br>追記：試したら動いたよ。ただ、PyPIには今のところPython 3.12版しか見当たらないね: https://pypi.org/project/mlx-cuda/#files" userName="neurostimulant" createdAt="2025/07/15 05:17:31" color="#ff5733">}}




{{<matomeQuote body="「このプルリクはMLXにCUDAバックエンドを追加する進行中の取り組みだ」ってことは、MLXのコードをx86＋GeForceのハードウェアで動かせるようになるってことだね。逆じゃないよ。" userName="numpad0" createdAt="2025/07/15 01:51:13" color="#ff33a1">}}




{{<matomeQuote body="余談だけど、MLX開発に携わってる人たちって、表面的に見る限りAppleとは公式に繋がってないみたいだね。例えばこの人とか: https://x.com/prince_canuma<br>Appleがお金出してるけど、DLで抑えときたいのかな？チームがどこかに移ろうとしてるって噂もあったしね？" userName="dnchdnd" createdAt="2025/07/15 03:28:46" color="#ff5733">}}




{{<matomeQuote body="MLXで名声や評判を築きたいオープンソース開発者って感じかな？<br>ほとんどの作業はClaude Sonnetがやってるんじゃないかな。" userName="jpcompartir" createdAt="2025/07/15 11:05:27" color="">}}




{{<matomeQuote body="2025年になっても、「一度書けばどこでも動く」というJavaのようなCUDAの影響力ってまだないよね。アカデミアや企業は相変わらず独自コードを書き続けてるし。まるで2025年にAdobe FlashやMicrosoft Silverlight向けにコードを書き続けてるみたいだよ。正直、NVIDIA株主としては気にしないけどね。" userName="mattfrommars" createdAt="2025/07/15 14:44:01" color="#45d325">}}




{{<matomeQuote body="AppleがOpenCLを放置したのは許せないわ。CUDAに対抗できる企業資金付きの「一度書けばどこでも動く」競合が育ちそうだったのに、需要が出た途端に手を引いたんだ。将来を見据えながら何もしなかったのはマジで意味不明。" userName="bigyabai" createdAt="2025/07/15 17:13:55" color="#ff5c5c">}}




{{<matomeQuote body="昔Flashが使われまくったのは、他の選択肢が酷かったからだよね。モバイルで性能とバッテリー問題が顕在化して、AppleがiPhoneでFlashをバッサリ切ったのがターニングポイントだった。そのおかげで皆FlashかiPhoneエコシステムか選ぶ羽目になった。CUDAにはこういう事例ないよな、マジで。" userName="int_19h" createdAt="2025/07/15 17:42:51" color="#ff5c5c">}}




{{<matomeQuote body="AppleはKhronosともう一度話すべきだよ。NVIDIAを倒す議論はいつも「協力不足」に帰着する。昔はAppleもAMDもNVIDIAもOpenCLで協力してたのに、AppleがiPhone GPUやApple SiliconでOpenCLを拒否してNVIDIAを勝たせた。Appleはまだ上から目線で、AMD、Intel、Qualcommは協力が必要って分かってるのにね。" userName="bigyabai" createdAt="2025/07/15 22:17:06" color="#45d325">}}




{{<matomeQuote body="KhronosってAPIが死ぬとこじゃん、新しいアイデアも滞るし。<br>OpenCL 2は複雑すぎて誰も使わなくなったし、NVIDIAもそっぽ向いた。KhronosはMantle／Metalの初期開発を拒否して、結局遅れて複雑なVulkan出したよね。<br>君がAppleだけを責めるけど、NVIDIAもOpenCL2をサポートしなかったし、Khronosの協力がうまくいかなかった原因の一つだよ。" userName="dagmx" createdAt="2025/07/16 02:42:56" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="NVIDIAは独自の技術持ってたから、唯一OpenCL2を拒否できたんだ。もしCUDAキラーがNVIDIAの協力頼みなら、最初から無理ゲーだよ。<br>AppleがKhronosの代わりになれるなら今がチャンスだけど、無理ならNVIDIAがずっとトップだろうね。<br>「AMDとAppleがMantle／Metal推してた」って言うけど、なんで今AMDがMetal IPを乞わないか、その999 IQの理由を教えてくれよ。" userName="bigyabai" createdAt="2025/07/16 17:19:47" color="#ff5733">}}




{{<matomeQuote body="CUDAを倒せるものを開発しなかったIntelとAMD、それからモバイルでOpenCLを完全に無視してRenderscriptを推したGoogleを責めたいね。他の意見には大体賛成だよ。" userName="pjmlp" createdAt="2025/07/16 07:09:08" color="#38d3d3">}}




{{<matomeQuote body="うん、まさにその通りだね。IntelもAMDも何度もCUDAを追撃するのに失敗してるのは残念だよ。ATIはGPU Computeの先駆者だったのにさ。<br>Googleもいつもの「誰かの情熱プロジェクトが報われなくなると死んでいく」って道を辿っちゃったな。" userName="dagmx" createdAt="2025/07/16 15:48:21" color="">}}




{{<matomeQuote body="「VulkanもOpenCLと同じくらい複雑で普及が遅れた」って意見、他は同意だけど、VulkanとOpenCL両方使った者としては、複雑さは全然比べ物にならないよ。VulkanはOpenCLよりずっと使いにくくてマジ時間の無駄って感じ。OpenCLはまだマシだけど、CUDAやMetalには遠く及ばないね。" userName="keldaris" createdAt="2025/07/16 15:18:01" color="#ff33a1">}}




{{<matomeQuote body="ああ、もちろんそうだよ。ごめん、同じレベルの複雑さって言いたかったんじゃないんだ。<br>それぞれ代替品よりかなり複雑だって言いたかっただけだよ。" userName="dagmx" createdAt="2025/07/16 15:44:20" color="">}}




{{<matomeQuote body="結局Javaも「一度書けばどこでも動く」なんて実現できてないよね。<br>iOSやPlayStation向けにJavaでアプリ開発する手段はあるんだろうけど、必要な手間を考えると気が遠くなるわ。" userName="raincole" createdAt="2025/07/15 17:01:06" color="">}}




{{<matomeQuote body="今、Javaのコードをミッドレンジシステムからクラウドのコンテナに移行してるんだけど、必要なコード変更はほぼゼロなんだ。完璧な移植性じゃないかもしれないけど、他のプラットフォームに比べたらすごく優秀だよ。あとは業界がJava 8/11のバカげた習慣から抜け出してくれれば、もっと良くなるんだけどね。" userName="bshacklett" createdAt="2025/07/16 11:52:44" color="">}}




{{<matomeQuote body="「一度書けば、どこでも動く」って言うけど、君が言いたいのは「一度書けば、どこでもテストする」ってことだろ？" userName="m463" createdAt="2025/07/15 20:22:52" color="">}}




{{<matomeQuote body="これってStrix Haloのおかげかな？最近EVO-X2を手に入れたんだけど、マジで驚いたよ。ミッドレンジのznver5 EPYCマシンと余裕で戦えるし、普通のEC2やGCEインスタンスを圧倒するね。それらが月3～10Kもするのに、これは1800ドルだった。まだLLM推論は試してないけど、一部YouTuberはDGX SparkがStrix Haloに比べてオーバースペック／高すぎると言い始めてる。ROCｍはまだだけど、Appleデバイスで完璧なCUDAが動けば、Strix Haloが安くて良いのにすごく魅力的になるだろうね。" userName="benreesman" createdAt="2025/07/15 00:33:12" color="#45d325">}}




{{<matomeQuote body="知らない人のために言うと、Strix HaloはAMD Ryzen AI Max+ 395と同じで、Framework Desktopとか一部のミニPCにも搭載されるよ。メモリ帯域幅は200GB/sで、他の消費者向けx86プラットフォームに比べればすごいけど、Nvidia GPU（5090は1792GB/s）やAppleのM3 Ultra（800GB/s）には遠く及ばないね。コスパは良さそうだけど、LLMみたいにメモリ帯域幅が重要なアプリだと、ぎりぎり“十分”ってレベルだよ。" userName="hamandcheese" createdAt="2025/07/15 01:08:34" color="#ff33a1">}}




{{<matomeQuote body="理論上の最大メモリ帯域幅だけ比較してるね。メモリ帯域幅が十分にある場合、普通は計算能力がボトルネックになるから、それだけ見てちゃダメだよ。例えばM1は十分な帯域幅があったのに、フルロード時でも使い切れてなかったんだ。" userName="Rohansi" createdAt="2025/07/15 01:58:26" color="#38d3d3">}}




{{<matomeQuote body="メモリ帯域幅がLLMのトークン/秒の上限を決めるんだよ。200GB/sじゃ、その上限は全然高くない。だから計算能力があるかどうかは、あまり関係ないんだよ。" userName="hamandcheese" createdAt="2025/07/15 21:18:41" color="">}}




{{<matomeQuote body="M1 MaxのGPUは、広告されてる400GB/sの帯域幅のうち、約90GB/sしか使えてないんだ。もしAMDチップが200GB/sをより効率的に使えれば、君が言うようにLLMのトークン/秒は良くなるだろうね。単に広い/速いメモリバスだけを見てちゃダメだよ。<br>https://www.anandtech.com/show/17024/apple-m1-max-performanc..." userName="Rohansi" createdAt="2025/07/15 22:03:25" color="#ff5733">}}




{{<matomeQuote body="これは主に、統一アーキテクチャでは気をつけなきゃいけないってことだね。表示されてる帯域幅が、GPUだけのワークロードで得られるものと違うってことだ。なるほど、わかったよ。でも俺の基本的な主張は変わらないね。LLM推論にはメモリ帯域幅が必要だし、200GB/sは全然十分じゃない（特に高容量RAMのモデルでは）。もしM1 Maxが実際90GB/sなら、LLM推論には向かないってことだね。" userName="hamandcheese" createdAt="2025/07/16 01:10:54" color="#ff33a1">}}




{{<matomeQuote body="GPUは帯域幅と計算能力の両方を持ってるんだ。トークン生成中は計算能力は必要ない。でもAppleシリコンもStrix Haloも、計算能力不足のせいでプロンプトの取り込み時に性能が落ちるんだよ。" userName="zargon" createdAt="2025/07/15 05:23:49" color="">}}




{{<matomeQuote body="計算能力（しかも大量に）は、生成に絶対必要だよ。小さいモデル（7B）だけでも、1トークンあたり数百億FLOPsの計算がいるし、大きいモデルではそれに比例して増えるんだ。各トークンはすべてのTransformerレイヤーを順伝播する必要があるし、あらゆる段階で大規模な行列乗算、そして語彙への最終的な投影も含まれるんだ。" userName="supermatt" createdAt="2025/07/15 08:09:33" color="#ff5733">}}




{{<matomeQuote body="コンピューティング能力がゼロってわけじゃないけどさ、トークン生成って計算量じゃなくてメモリ帯域幅がボトルネックなんだよ。プロセッサはデータ待ちで暇してるし、ほとんどの時間はメモリからのデータ転送待ちに費やされてるんだよね。104Bモデルでもそうだった。" userName="zargon" createdAt="2025/07/15 08:30:35" color="#785bff">}}




{{<matomeQuote body="メモリ帯域幅がボトルネックになってるってことは、バッチ処理が効率的にできてないんじゃない？" userName="supermatt" createdAt="2025/07/15 12:42:32" color="">}}




{{<matomeQuote body="そうなんだよ。Apple siliconとかHalo Strixみたいなケースだと、あんまりバッチ処理しないからね。" userName="zargon" createdAt="2025/07/15 17:01:47" color="">}}




{{<matomeQuote body="Appleってバカだよね。来年とかに良いもの出すために、今のハードウェアをわざと性能制限してるんだ。長年のやり方がAI戦略の邪魔してる。本当は1600GB/sもできたはずなのにさ。" userName="yieldcrv" createdAt="2025/07/15 01:38:30" color="">}}




{{<matomeQuote body="Appleが技術を急がないのは、顧客が満足してるからじゃない？毎年顧客がハッピーなら、Appleはちゃんとやってるってことだよ。あなたが望む機能バランスじゃなくてもさ。Appleが失敗する時は、大抵はっきりしてて、意図的な優先順位のトレードオフの結果だよ。Mac Proみたいにね。" userName="Nevermark" createdAt="2025/07/15 04:50:57" color="">}}




{{<matomeQuote body="Appleはハードウェア垂直統合なのにAI戦略で完全に失敗してるよ。社内でもそれが問題だって知られてるし、2030年にすごいもの出すとかいう深謀遠慮じゃないからね。" userName="yieldcrv" createdAt="2025/07/15 09:24:59" color="">}}




{{<matomeQuote body="B200だって出せたはずだよね。きっとそうしない理由があるんだろうけどさ。" userName="saagarjha" createdAt="2025/07/15 02:01:31" color="">}}




{{<matomeQuote body="これ読むの楽しかったな。EVO-X2を注文したけど、まだ発送待ち。LLMとかdiffusion modelを動かすのに良いリソースないかな？" userName="drcongo" createdAt="2025/07/15 08:55:55" color="">}}




{{<matomeQuote body="どれだけ興奮してても、それだけ価値はあるよ。俺のも時間かかったけど、本当に良かった。しばらくこんなすごい製品は出ないだろうし、計算能力には何年も困らないと思うよ。" userName="benreesman" createdAt="2025/07/15 11:59:02" color="">}}




{{<matomeQuote body="それはPRの説明で、明確にクラウドクラスターのトレーニングがターゲットって書いてあるよ。" userName="jitl" createdAt="2025/07/15 00:46:57" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
