+++
date = '2025-02-14T00:00:00'
months = '2025/02'
draft = false
title = 'GPUに対する我々の見解が180度変わった理由とは！？'
tags = ["技術革新", "GPU", "深層学習", "コンピュータ", "市場動向"]
featureimage = 'thumbnails/blue.jpg'
+++

> GPUに対する我々の見解が180度変わった理由とは！？

引用元：[https://news.ycombinator.com/item?id=43053844](https://news.ycombinator.com/item?id=43053844)

{{<matomeQuote body="開発者はGPUなんて求めてなくて、AI/MLモデルなんて必要無い。彼らが求めてるのはLLMsだよ。アプリ開発者がLLMにプロンプトを送る方法を探しても、GPUじゃ解決できない。ソフトウェア開発者の間には、”マジック”が嫌で自分のコードがどこで動いているかを理解したいグループと、手間いらずで運用したいグループがいる。後者は金かけて楽したがるが、前者は詳細にこだわる。例えばfly.ioは後者には魅力で、GPUインスタンスは前者向けだね。" userName="freedomben" createdAt="2025-02-14T23:55:10" color="#785bff">}}

{{<matomeQuote body="Kubernetesを理解している人がどれだけいるのか気になるな。ただのユーザーでなく、その動作の裏側まで分かっている人は。IdleのKubernetesシステム自体、理解するのは大変だ。" userName="BobbyTables2" createdAt="2025-02-15T01:41:49" color="">}}

{{<matomeQuote body="Kubernetesは基本的にetcdやapiserver、コントローラーだけで、シンプルなMVCアプリみたいなもんだと思う。複雑すぎる印象が多いけど、何がそこまで難しいのか理解できない。" userName="remram" createdAt="2025-02-15T02:14:45" color="">}}

{{<matomeQuote body="“etcd, apiserver, and controllers.”…あとcontainerdやcsiプラグイン、kubelet、cniプラグイン、kubectl、kube-proxy、ingress、負荷分散機能もあるんだよね。" userName="docandrew" createdAt="2025-02-15T02:41:20" color="">}}

{{<matomeQuote body="システムコールやファイルシステム、ソケット、LVMなども考慮すると、レイヤーが多くなりすぎるけど、Kubernetes自体については感じないな。docker runやdocker compose upと比べた時の複雑さが語られてると思う。" userName="remram" createdAt="2025-02-15T04:00:00" color="">}}

{{<matomeQuote body="Cephに問題があったと言ったけど、それはCSIの問題じゃないんじゃない？Kubernetesを使う以上、ストレージはどんな方法でも分散型システムだし、CephはKubernetesの一部とも思えない。" userName="ffsm8" createdAt="2025-02-15T04:48:54" color="">}}

{{<matomeQuote body="CSIプラグインには問題無かったけど、Cephクラスタ自体には問題があった。Kubernetes無しでもCephは使えるし、クラウドを使う以上、分散ストレージが必要なのは同じだから、これをKubernetesの複雑性と見なすべきじゃない。" userName="remram" createdAt="2025-02-15T15:17:02" color="">}}

{{<matomeQuote body="クラウドでKubernetesを運用する場合、クラウドプロバイダーのブロックストレージがKubernetesの一部だと考えるのか？例えばAWS EBSがKubernetesの一部と言えるの？" userName="remram" createdAt="2025-02-15T20:18:31" color="">}}

{{<matomeQuote body="非常に公平な意見だね。マネージドサービスが普及してる今、通常はCSIやCNIについて考える必要は無いんだよ。" userName="freedomben" createdAt="2025-02-15T04:54:21" color="">}}

{{<matomeQuote body="だからこそ、>Kubernetesはコードが動いている場所や動作について理解することに対して思い浮かばない…が非常に共感できる。" userName="cuu508" createdAt="2025-02-15T06:59:33" color="">}}

{{<matomeQuote body="CSIとかCNIって、`docker volume`や`docker network`とそんなに変わらない魔法するよね。みんな自分の使ってるウェブフレームワークやSQL接続プールが超簡単だと思ってるけど、Kubernetesは複雑で理解できないって言ってるのが分からない。部品は少し動くけど、全体としてはSystemDよりずっと簡単だよ。" userName="remram" createdAt="2025-02-15T15:22:50" color="#45d325">}}

{{<matomeQuote body="K8sって実際にはかなりシンプルで理にかなってると思ったのは驚きだった。これまで何も知らなかったのにネットでの事前のイメージとはまるで違った。結局、意見は何とでもなるんだな。ただ、その上に作られるものは全然別の話だね。" userName="formerly_proven" createdAt="2025-02-15T17:11:51" color="">}}

{{<matomeQuote body="60ノード以上のKubernetesクラスタは小さい方だと思う。そんなスケールでもKubernetesは本当に素晴らしいよ。ただ、6000や60000、600000ノードになると状況はがらりと変わるから注意が必要。100以上のクラスタを運用するのは非トリビアルだよ。" userName="chucky_z" createdAt="2025-02-15T17:00:14" color="#ff5c5c">}}

{{<matomeQuote body="Kubernetesは複雑だと思うけど、それでも同時に数百から数千のコンテナを複数のチームで整然とホストできるし、それをどうやってるのかをしっかり管理・理解できる選択肢は他にないよ。両方が必要なら今のところこれ以上の選択肢はないし。" userName="dzikimarian" createdAt="2025-02-15T14:28:45" color="#45d325">}}

{{<matomeQuote body="Kubernetesの内部を一般エンジニア向けにまとめた本を書く勇気のある人がいたらいいね。基本的な実装を最初から書いて、Kubernetesが解決するために存在する問題におおよそ触れることができると尚良し。" userName="arijo" createdAt="2025-02-15T07:23:51" color="">}}

{{<matomeQuote body="私の理解では、基本的にはアプリケーションが動くコンテナを一つ以上作って、その必要なパラメータ、例えばメモリサイズや CUDA 機能を指定すると、Kubernetesがそのパラメータをもとに利用可能なマシンにそれを割り振るってことだよ。抽象的だけど、シンプルに実現できると思う。" userName="jimmaswell" createdAt="2025-02-15T02:33:37" color="#ff5c5c">}}

{{<matomeQuote body="「コンテナ」と「プロセス」はかなり似た抽象概念だっていうことは意外と知られてない。コンテナって、まるで新しいファイルシステムのルートを持つプロセスのようなものだよ。サーバー上でプロセスが何であるべきかを考えると、これが業界的におかしい現状の一部だと思うんだ。" userName="pclmulqdq" createdAt="2025-02-15T03:04:04" color="">}}

{{<matomeQuote body="いや、全然違うよ。コンテナは一つのプロセスとは限らないし、多くのケースで複数のプロセスを立ち上げることになる。コンテナを一言でまとめるのは難しいけど、軽量なVMに近いかも。でも、今はVMとは全然異なる理由で使われてる。" userName="epr" createdAt="2025-02-15T03:58:07" color="#38d3d3">}}

{{<matomeQuote body="もっと多くの開発者が基本的な知識を持っていたら、ちゃんとしたシステムエンジニアリングができたんじゃないかな。" userName="sgarland" createdAt="2025-02-15T01:48:10" color="">}}

{{<matomeQuote body="システムエンジニアもデザインの知識を持ってたら、AWSのコンソールを使うのも楽になるかも。でも、ビジネスは年間＄X0億の価値があるんだよ。<br>みんな得意不得意があるから、弱点を隠すより強みを活かす方がいいよ。みんなが全てできるようになってほしいなら、実際に物事を進める方法を考えよう。" userName="ketzo" createdAt="2025-02-15T05:45:59" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="＞”みんなが全てできるようになってほしいなら、実際に物事を進める方法を考えよう。”<br>偽の二択だね。両方とも持てる理由があるよ。<br>完璧なコードや理解は存在しないけど、基本を知らないことの不満は正当だと思う。ある程度の基準は認識すべきだし、基準がないことを望む人もいるけど、AIがコーダーを置き換えるとか、短期間で昇進するのはナンセンスだよ。" userName="godelski" createdAt="2025-02-15T06:29:10" color="#45d325">}}

{{<matomeQuote body="ほんとにそうか？抽象化は変わってるけど、頻繁には増えないよ。オペレーティングシステムや高級プログラム言語は1960年代からあるし、基本的な新しい抽象層はあまりない。ハードウェア固有のAPIもまだあるし、クラッシュ時にアセンブリデバッグもすることがあるよ。" userName="serviceberry" createdAt="2025-02-15T00:23:58" color="">}}

{{<matomeQuote body="会社では開発者達に毎回雑な解決策の抽象化をすることで笑われてる。彼らの作り出す抽象の山はマジで馬鹿げてるよ。直すべき問題の半分以上は初めに抽象化が引き起こしてるんだ。" userName="y1n0" createdAt="2025-02-15T01:36:50" color="">}}

{{<matomeQuote body="＞”ハードウェア固有のAPIもまだあるし、クラッシュ時にアセンブリをデバッグすることもある。”<br>多くの開発者はアクセスできないし、データベースのストレージ技術さえ知らないことが多いよ。<br>自分の仕事は他の人のコードのデバッグとパフォーマンスプロファイリングだけど、大半はクエリプランを見ることだよ。" userName="fphhotchips" createdAt="2025-02-15T00:44:25" color="">}}

{{<matomeQuote body="PaaS、つまりHerokuみたいなものからベアメタルホスティングまで、さまざまな選択肢がある。そしてその選択肢はコストと利益の計算によって決まる。<br>開発者のグループがどれかに属してると呼ばれるのはマジであほらしい。最初はPaaSから始めて、成長と共に徐々に自己管理に移行すべきだ。" userName="emilsedgh" createdAt="2025-02-15T00:09:06" color="#38d3d3">}}

{{<matomeQuote body="成長すると高いPaaSは徐々にコストがかかり、下の層に移行するのが一番価値のあることになる。<br>全ての開発者が完全に実装するわけじゃなくて、さまざまなレベルのサービスやコンポーネントが混在することになるよ。" userName="gregmac" createdAt="2025-02-15T01:19:45" color="">}}

{{<matomeQuote body="データセンターを持つのはバカバカしいけど、コロケーションは非常に魅力的だよ。月に＄50-75で1Uレンタルできるし、複数のノードを持つことも可能だよ。古いハードウェアのコストも超安いし、知識さえあれば簡単だよ。" userName="sgarland" createdAt="2025-02-15T01:59:22" color="#785bff">}}

{{<matomeQuote body="月に＄200で2つのALBやECSサービス、CloudWatchロググループなどがAWS上で運営できるよ。コロケーションは面倒だけど、コスト面では優れてる場合もあるし、必要な時に使うべきだね。" userName="kbolino" createdAt="2025-02-15T14:16:28" color="">}}

{{<matomeQuote body="Postgresのインスタンスは安くなくて、月々のコストが高くなることもあるよ。AWSを使う時は、やっぱりシステムの監視が必須だね。ハードウェアの管理をするのは安くなる場合もあるけど、面倒な部分は多いんだ。" userName="sgarland" createdAt="2025-02-15T17:26:44" color="">}}

{{<matomeQuote body="抽象化層をどんどん上げてるだけじゃない？進んだ技術者は電圧や基板の設定、パフォーマンス重視のアセンブリ、キャッシュラインの整列、ディスクのセクタ操作なんかを気にしてない気がする。確かに深く理解するのは重要だけど、開発者は徐々に抽象化を進めてきてる傾向があるよね。" userName="varenc" createdAt="2025-02-15T00:01:31" color="">}}

{{<matomeQuote body="タイトルを見たときに心臓が止まりそうになったけど、GPUを削除することにならなくて良かった！fly GPUマシンは最高。開始が超速くて、信頼性もあって、少し高価だけど他の選択肢を考えると妥当だし。DXも素晴らしいし、特別なコマンドも必要なくて、デプロイやログ、メトリクスが全て自動で使える。お金のために安いマルチマーケット使うと、意図せず顧客データにアクセスされる恐れがあるけど、fly GPUsはそういう心配がない。価格が安くて地域がもっとあれば最高なのに。" userName="ryuuseijin" createdAt="2025-02-15T01:22:00" color="#785bff">}}

{{<matomeQuote body="fly.ioのGPUを開発環境に使った。必要な時にマシンを立ち上げ、終わったらスケールを0にするのがめちゃくちゃ良い。設定が1時間でできるし、その過程で作ったDockerfileも他のマシンで使える。色々試したけど、fly.ioの設定は最高だった。他の選択肢に比べて凄く楽だった。でも唯一の欠点はCUDAスタックを全てコンテナに組み込むことかな。これでコンテナが8GBくらいになっちゃって、fly.ioの制限にも引っかかるしビルド時間が遅くなることがある。" userName="bottega_boy" createdAt="2025-02-15T07:18:40" color="#45d325">}}

{{<matomeQuote body="2012年-ムーアの法則がほぼ終わる- NANDゲートは巧妙に包装されるだけで小さくならない。シングルスレッドは2GHzで停止。2012-2022年-みんなVMに気を取られてシングルスレッドの停滞に気づかず。2022年-データセンターは次世代のスーパー芯チップを買う意義がないと気づく。2022年-でもLLMは完全に並列だから再度投資できる。そして2024年-ここが重要。ウエハースケールシリコン。900,000コアとGBsのSRAMで、LlamaモデルをA100の10倍速で実行できる。これでムーアの法則を破って、ハードウェアはさらに多くの並列コアを提供している。ソフトウェアもその力を使わないといけない。競合よりも1百万倍速く動けるなんて、何を意味するのか、分からないけど、AIだけがその用途じゃない気がする。" userName="lifeisstillgood" createdAt="2025-02-15T00:11:14" color="">}}

{{<matomeQuote body="ムーアの法則について、だれも単スレッドの実行やクロックレートがどうこう言ってないのが驚き。ムーアの法則って2年ごとにトランジスタの数が倍になるっていうだけのことだし、2012年からそのトレンドは続いてる。確かに2006年くらいから傾きが少し変わった気がするけど、要はソフトウェアはトランジスタの数を考慮しないといけないし、並列アーキテクチャもそれに合っている。" userName="dahart" createdAt="2025-02-15T15:26:00" color="">}}

{{<matomeQuote body="シングルスレッドの性能は2GHzあたりで停滞してるって感じだね。2012年から2022年にかけて誰も気づかなかったのは、みんなクラウドのVMに移行してたからじゃない？シングルスレッドの実行、つまりはIPC、正確にはPPC（クロックあたりの性能）は上がり続けてたから、ARMの設計を考慮に入れればね。その影響でM1が驚きだったんだ。ほとんどの人がGeekbenchのスコアはデスクトップに反映されないと思ってたから。クロックスピードも2GHzから5GHzに行って、今やモバイルでも4GHzに達しつつある。ムーアの法則、トランジスタの密度に関しては、Intelが10nmを期限通りに出せなかった2016年頃に終わったけど、まだトランジスタ密度は改善してるよ。" userName="ksec" createdAt="2025-02-15T02:41:42" color="#38d3d3">}}

{{<matomeQuote body="M1について一番驚いたのは、エネルギー効率と価格性能比が他と比べて良かった点だな。電話のSOCがすごく優れてきたのは数年前から分かってたけど、電話ケース内では1〜2秒の最大バーストしかできないからね。" userName="javier2" createdAt="2025-02-15T12:00:54" color="#785bff">}}

{{<matomeQuote body="Appleのチップは他のタイプよりもかなり速いよ。シングルスレッドの性能が制約されていて、お金があるなら、Apple Siliconでの作業は実際に意味があるかも。" userName="mike_hearn" createdAt="2025-02-15T15:01:45" color="">}}

{{<matomeQuote body="特許とは関係ないよ。彼らは正しい方向に先行してるし、多くの反復を資金で支えることができて、デスクトップに受け入れられるまでのプロセスがあっただけ。QualcommのSnapdragon Elite Oryon 2やARM Cortex X925は、もうApple A17レベルのパフォーマンスに近づいてるから、もうAppleだけのものじゃないよ。" userName="ksec" createdAt="2025-02-16T05:54:31" color="">}}

{{<matomeQuote body="最新のTSMCプロセス、非常に広い設計、深い投機パイプライン、Intelよりも弱いメモリモデル、そして通常の速いCPUのための巧妙なトリックの組み合わせで、高いメモリ帯域幅もあるよ。特許とは関係ないと思うけど、彼らは多くを持ってるだろうね。" userName="mike_hearn" createdAt="2025-02-16T08:48:20" color="#ff5733">}}

{{<matomeQuote body="グラフはまさに俺が言った通りで、Intelが10nmで遅れを取った2017年から2020年までのことを示してる。ARMのIPC向上を無視してるし、AppleがM5やM6で改善を示せない限り、我々はとうとうプラトーに達したかもしれない。" userName="ksec" createdAt="2025-02-15T13:41:05" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="初期のコンピュータの隠れたヒーローはDennardスケーリングだったね。CPUを10MHzから2GHzに引き上げると同時に、クロック効率も大幅に改善された時代はすごかったんだ。1990年の50MHzの486から2000年の1.4GHzのP3までの28倍の速度向上は、クロックスピードだけの効果だよ！IPCからの他の改善も加えればね。" userName="Panzer04" createdAt="2025-02-15T00:46:17" color="#38d3d3">}}

{{<matomeQuote body="クロック周波数が最も増加したのは1993年から2003年の10年で、66MHzのPentiumから3.2GHzのPentium 4に増加したんだ。その後20年以上、クロック周波数は2倍しか増えていない。以前の10年（1983-1993）は、約5倍の増加だったし、ここでの33MHzから66MHzへの倍増は1989から1993年の間に起こったんだ。" userName="adrian_b" createdAt="2025-02-15T08:26:32" color="">}}

{{<matomeQuote body="P4は何も祝うべきものでなかった。時計あたりの性能は前の世代よりも遅かったから、その次の世代はPentium Mを基にして、よりエネルギー効率が良かったんだよ。" userName="superjan" createdAt="2025-02-15T11:38:49" color="">}}

{{<matomeQuote body="＞80486が1991年に50GHzに達したというのはあなたの誤字を見て気になったんだけど、実際の50GHzの486の性能は現代のシングルコア性能と比べてどうなるのだろうか？投機的実行の欠如、高いメモリ待機時間、ほとんどキャッシュがない状態だと、高速なクロックの利点はほとんど全て失われるだろうね。CPUはデータを待ってアイドルしてるはずだし、サイクルあたりの作業量、SIMDの影響も考慮しなきゃいけないから。" userName="pdpi" createdAt="2025-02-15T09:54:57" color="">}}

{{<matomeQuote body="＞2012年、ムーアの法則がほぼ終わって、nandゲートは小さくならず、巧妙に包まれるだけになったんだって。単一スレッドの実行は2GHzで止まってるようだけど、実際には12年間でCPUはかなり進化した気がする。" userName="zahlman" createdAt="2025-02-15T01:06:15" color="#ff5733">}}

{{<matomeQuote body="nandゲートは28nm辺りだけど、車を上から測るとサイズは変わらず、立てると”小さく”なるみたいなもんで、駐車密度が上がったってこと。熱制限でCPUが常にフルスピードでは動けないのは昔からの問題さ。" userName="lifeisstillgood" createdAt="2025-02-15T07:26:12" color="">}}

{{<matomeQuote body="いろいろ考え中だけど、もしハードウェアがもっと並列コアを増やしてたら、単純に早くなったんじゃないかって思う。AIがそれを使える状況で、CPUのトランジスタはほとんど使えてない気がする。" userName="lifeisstillgood" createdAt="2025-02-15T09:41:13" color="">}}

{{<matomeQuote body="＞ムーアの法則は破られたけど、ハードウェアはどんどん並列コアを増やしてる。デベロッパーがその余剰スペースをうまく活用できてないってことだね。<br>使う半導体材料には熱制限がなくて、未来には10GHzのマイコンが出るかも。" userName="duped" createdAt="2025-02-15T18:31:59" color="#38d3d3">}}

{{<matomeQuote body="＞例えば競争相手より100万倍速く動くコードがあるとしても、日常的に使うコードはディスクやネットワークを待ってる時間が多いと思う。" userName="brap" createdAt="2025-02-15T00:59:32" color="">}}

{{<matomeQuote body="＞2012年、ムーアの法則が終わったって言われてるけど、今の2GHzコアは当時のコアより圧倒的に速いと思う。スケーリングにはクロック速度以上の要素があるからね。" userName="Aurornis" createdAt="2025-02-15T15:02:00" color="#785bff">}}

{{<matomeQuote body="IT以外でも多くのアプリケーションがコアを使ってるよ。物理シミュレーションやネットワークシミュレーションなんかね。" userName="Yoric" createdAt="2025-02-15T00:13:15" color="">}}

{{<matomeQuote body="今でもコンピュータはフォン・ノイマン型で、他のアーキテクチャは投資対効果が高くなかった。AIの世界では異なるかもね。ニューロモーフィックコンピューティングなどがその例だ。" userName="sroussey" createdAt="2025-02-15T00:52:50" color="">}}

{{<matomeQuote body="ほとんどのコンピュータは修正されたハーバードアーキテクチャを使ってるんだよね。共有メモリがあっても、命令とデータには別々のキャッシュがあるから、CPU視点からは分離されたレーンがあって、プログラマー視点では1つのメモリだね。" userName="jjmarr" createdAt="2025-02-15T04:01:09" color="">}}

{{<matomeQuote body="現代のコンピュータは、複数のコンピュータがネットワークで繋がってるようなもんだよ。DMAの影響で、その考え方はもう古い。今はIOMMUがあるし、9front/plan9の人たちはNixというカーネルを作ろうとしてるよ。" userName="anthk" createdAt="2025-02-16T10:33:39" color="#38d3d3">}}

{{<matomeQuote body="これがよくわからないんだけど、ロボティクスを妨げる問題の一つが非線形モデル予測制御。QPsを解くのに1～2msしかなくて、これが串刺しの問題で、前のステップを計算しないと次ができないから膨大な情報量が必要になる。結局、Boston Dynamicsは単にMPCを線形化して、時間が来るまでQPソルバーを使うらしい。" userName="imtringued" createdAt="2025-02-15T13:54:08" color="#45d325">}}

{{<matomeQuote body="1百万の独立したタスクがあれば、1百万のコアも簡単に使えるよ。それがデータ処理なら特にそう。" userName="jltsiren" createdAt="2025-02-15T11:04:03" color="">}}

{{<matomeQuote body="データセンターのコストの話はちょっと考える価値があるね。標準ソフトウェアでのスピードアップが止まったから、クライアントをたくさん入れるのが難しくなってる。Lambdaアーキテクチャが推進されたのはそのせいだし、AIだけが密なマルチコアデータセンターの恩恵を受けてる。" userName="lifeisstillgood" createdAt="2025-02-15T07:42:03" color="#38d3d3">}}

{{<matomeQuote body="ウェブアプリやモバイルアプリのAPIは恥ずかしいほど並列処理できるのに、今の多くのウェブ言語やフレームワークは並列処理が弱い。早い段階のJavaサーブレットの方が現代のNodeJSやPythonより性能が良いかもね。" userName="t0mas88" createdAt="2025-02-15T08:22:52" color="">}}

{{<matomeQuote body="新しいハードウェアにどんな構造にするべきか考えるのもいいかも。例えば、900,000の8ビットコアという極端なのもあり得る。これはかなりの変革を要するけど、実現可能だと思うよ。" userName="lifeisstillgood" createdAt="2025-02-15T09:31:05" color="">}}

{{<matomeQuote body="4090にシェルを投入したけど、ローカルのLLMsを動かすには24GB VRAMじゃ足りなかった。もっとパワフルな2つ以上の3090sとカスタム電源の方が良かったな。小さいモデルには性能が及ばなかった。" userName="reilly3000" createdAt="2025-02-14T23:34:19" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
