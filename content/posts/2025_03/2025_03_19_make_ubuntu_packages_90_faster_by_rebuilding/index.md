+++
date = '2025-03-19T00:00:00'
months = '2025/03'
draft = false
title = 'Ubuntuパッケージを再構築するだけで90%も高速化!? 衝撃のパフォーマンス改善術'
tags = ["Ubuntu", "パッケージ管理", "パフォーマンス改善", "メモリ管理", "最適化"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> Ubuntuパッケージを再構築するだけで90%も高速化!? 衝撃のパフォーマンス改善術

引用元：[https://news.ycombinator.com/item?id=43406710](https://news.ycombinator.com/item?id=43406710)

{{<matomeQuote body="記事のタイトルが釣りだって言ってるね。「たった一つのUbuntuパッケージをリビルドしてメモリ割り当て器を変えただけで90%も速くなった」ってさ。ありえないって怒ってるよ。一部の効果はリコンパイルだけじゃ無理だったみたいだし。でも、jemallocを試したことは評価してるみたい。メモリ使用量が安定したんだって。パフォーマンスは測ってないけど、メモリリークっぽい問題を解決したんだってさ。アプリのせいじゃなくて、mallocのメモリフラグメンテーションが原因かもって。" userName="wengo314" createdAt="2025-03-19T08:52:39" color="">}}

{{<matomeQuote body="glibcのメモリ割り当て器を調べたってさ。メモリフラグメンテーションじゃなくて、スレッドごとのキャッシュがカーネルに返されないのが原因らしいよ！free()しても、特別な場合を除いて外部的には解放されないんだって。スレッドとCPUコアが多いほど悪化するらしい。解決策はMALLOC_ARENA_MAX=2を設定してキャッシュ数を制限すること。あとはアプリでmalloc_trim()を定期的に呼ぶことだけど、ソースコードの変更が必要だって。参考URLも貼ってあるね。" userName="FooBarWidget" createdAt="2025-03-19T11:22:42" color="#785bff">}}

{{<matomeQuote body="glibcのメモリ割り当て器には、メモリリークに見える病的なケースがあるって。関連ブログ記事のURLがいくつか貼ってあるね。" userName="glandium" createdAt="2025-03-19T11:42:00" color="">}}

{{<matomeQuote body="icinga2で同じ問題が発生したらしい。だから今はjemallocをプリロードしてるんだって。まさにその話かもね。issueのURLも貼ってあるよ。jemallocが大きな解決策だったみたい。" userName="wengo314" createdAt="2025-03-19T12:32:18" color="#ff5733">}}

{{<matomeQuote body="一瞬信じかけたけど、Ubuntuを責めるのも簡単だよね。パッケージの組み立てはかなりまともにしてると思うよ。スタック破壊対策もしてるし。ただ、バグがあるかもしれない-O3でコンパイルしてないのは良いことだね。パフォーマンスが重要なものには良いかもしれないけど、システム全体を-O3でコンパイルするのは勘弁してほしい。" userName="blablabla123" createdAt="2025-03-19T12:40:08" color="">}}

{{<matomeQuote body="＞with the possibly buggy -O3<br>-O3はGCCでもClangでもバグってないよ。-Ofastとか-ffast-mathと勘違いしてない？それらは標準規格に準拠してないからね。-O3には含まれてないよ。" userName="kllrnohj" createdAt="2025-03-19T13:30:18" color="#45d325">}}

{{<matomeQuote body="-O3自体は”バグってる”わけじゃないけど、最適化が多いから問題が露呈しやすいんだよね。Gentooユーザーなら知ってるはず。例えば、関連するBugzillaのURLを貼っておくよ。O3で検索してみて。" userName="BoingBoomTschak" createdAt="2025-03-19T13:35:02" color="">}}

{{<matomeQuote body="strict-aliasingはO2で有効になるから、それがバグの原因だよ。" userName="kllrnohj" createdAt="2025-03-19T13:45:02" color="#ff5733">}}

{{<matomeQuote body="うん、それがバグの原因だけど、-O2の最適化でもUBが結果をめちゃくちゃにするかもしれないよね。EDIT: 最初のは-funswitch-loopsだけど。" userName="BoingBoomTschak" createdAt="2025-03-19T13:51:29" color="">}}

{{<matomeQuote body="たぶんそうなるね。O2で明らかになるUBバグはたくさんあるし、重大なセキュリティ問題もあるよ。" userName="kllrnohj" createdAt="2025-03-19T13:57:42" color="">}}

{{<matomeQuote body="いやいや、それは一部のテスト結果ってわけでもないし詐欺でもないけど、`jq`って名前を出さないのはクリックベイトだよね。一部のテスト結果ってのは、アプリ全体じゃなくて、ライブラリの関数とか`syscall`とかをテストするようなもんじゃん？これはアプリ全体の話だよ。ただ、`LTO`を有効にしたり、`THP`を調整したり、適切なアロケータを選んだりするのは、普遍的に良いことだよね。" userName="arghwhat" createdAt="2025-03-19T18:02:34" color="">}}

{{<matomeQuote body="確かにそうかもね。ニッチなタスクなら、リビルドで大幅な速度アップが期待できるってのは面白いよね。でも、ほんとにニッチな話だよね。" userName="looofooo0" createdAt="2025-03-19T11:26:13" color="">}}

{{<matomeQuote body="わかるー。`reddit`で、動画エンコーダーアプリのためにコンパイルフラグを手動で調整して、`pgo profiling`した人がいたよ。そいつの場合、20%の改善でも大きかったみたい。年間で数千本の動画ファイルをエンコードする時の帯域が増えるって計算になるからね。" userName="wengo314" createdAt="2025-03-19T12:34:51" color="">}}

{{<matomeQuote body="プリパッケージされたバイナリ配布版って、OSとかハードウェアのために一番安全なオプションでビルドされてて、最高のパフォーマンスが出せてないんじゃないかなーって思うんだよね。ほとんどそうだと思うなー。昔、`Mozilla`とか自分の`linux kernel`を自分の好みに合わせてビルドして、ちょっとだけパフォーマンスを上げてたんだよね。`Gentoo Linux`の目的は、ソースから全部コンパイルしてパフォーマンスを上げることだしね。" userName="cratermoon" createdAt="2025-03-19T15:02:34" color="#ff5c5c">}}

{{<matomeQuote body="タイトルはクリックベイトだけど、アプリ開発者がリビルドするのは良いことだよね。特に、`jq`、`grep`、`ffmpeg`、`ocrmypdf`みたいな、CPUバウンドなユーティリティとかね。これらの`unix utils`は、特定のアプリケーションじゃなくて、一般的な用途のためにビルドされてるからね。" userName="tonymet" createdAt="2025-03-19T16:39:17" color="#45d325">}}

{{<matomeQuote body="もし記事の内容を理解してるなら、デバッグビルドをリリースパッケージに入れるなってことだよね。昔、`blender`の`cmake`設定ファイルをいじってた時に、`fedora`のパッケージが間違ったフラグを使ってたのを見つけたんだよね。開発者向けのデバッグ専用のフラグみたいなやつ。パッケージメンテナに言ったら、サブメンテナが確認してくれたんだけど、メンテナは絶対に直そうとしなかったんだよね。フラグのスペルが似てるからってごまかしてたみたい。たぶん`fedora`のパッケージは今でも同じ間違いをしてると思う。" userName="UncleEntity" createdAt="2025-03-19T20:19:40" color="">}}

{{<matomeQuote body="`AVX512`みたいなベクトル演算は、魔法みたいに普通のソフトウェアを速くするわけじゃないよ。大量のデータを扱うアプリケーションは、グラフィックアプリケーション、ニューラルネットワーク、暗号化処理くらいだよね。オーディオ処理も、可変サイズのパケットがあるからベクトル化できないんだよね。`DAW`で使われるマルチチャンネルエフェクト処理くらいかな。" userName="tremon" createdAt="2025-03-19T14:22:09" color="">}}

{{<matomeQuote body="ベクトル演算は一般的なソフトウェアで広く使われてるよ。`Java`はソートに`AVX512`を使ってるし、`glibc`は文字列操作に`SIMD`命令を使ってる。" userName="isotypic" createdAt="2025-03-19T18:04:18" color="#ff33a1">}}

{{<matomeQuote body="修正ありがとね。bulk memory operationsがSIMD operationの一部だって考えたことなかったけど、言われてみればそうだね。word-sizeより大きい単位で処理するから、micro-opsのオーバーヘッドが少なく済むんだ。" userName="tremon" createdAt="2025-03-20T23:56:42" color="">}}

{{<matomeQuote body="エンジニアリングって妥協の産物だよね。記事ではmemory allocatorのspecialisingが一番効果あるって言ってるけど、multithreadedなprojectもあること忘れちゃだめだよ。thread間でmemoryのallocateとかuseとかdeallocateとかするやつね。だから、あるprojectでspeedupしても別のprojectでcrashするかもしれない。<br>それに、reallocation strategyはどうなの？preallocateしてmallocは二度と触らないprogramもあれば、常にreleaseとacquireを繰り返すprogramもある。fragmentationへの対応は？uptimeは？allocatorの選択は、長期的な安定性か短期的なspeedかの違いになることもあるんだよ。" userName="smallstepforman" createdAt="2025-03-19T04:45:12" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="MimallocはJEMallocとかTCMallocみたいなgeneral purpose allocatorだよ。Glibcは allocatorがイマイチってことで有名だけど、MIMallocとか最新のTCMallocはglibcより全然速いんだよね（Ubuntuのdefaultとは違うやつ）。speedupは色々だけど、benchmarkだと全体的にspeedupするみたい。もちろん、それがapplicationにとって意味があるかは別だけど。crashについては、これらは全部general purpose multi-thread allocatorだし、glibcと変わらないよ（バグはglibcにもあるけど）。" userName="vlovich123" createdAt="2025-03-19T04:52:48" color="#ff33a1">}}

{{<matomeQuote body="短いappならそうだね。reallocatingを繰り返すappとか、60秒以上動くappの問題を反映するようにcommentを修正したよ。短いappならマジでその通りで、99%はglibcをreplaceすることを勧めるよ。でも、glibcのstabilityがpathologicalなuse casesを引き起こさないappも1つや2つはあるんだよね。だからdefaultなんだ。pathaligicalなcasesでのcrashが少ないから。devsはcrashするbugに対処するのに疲れ果ててるんだよ。遅いallocatorを使えばeliminateできるのに。" userName="smallstepforman" createdAt="2025-03-19T05:08:46" color="#ff33a1">}}

{{<matomeQuote body="updateされたpostを見たけど、wildly incorrectなassumptionに基づいてるみたいだね。<br>1. Fragmentation: MIMallocと最新のTCMallocはglibcより絶対にうまくhandleするよ。これは多くのbenchmarkでwell establishedだよ。<br>2. process lifetimeに関して、MIMalloc(Microsoft Cloud)とTCMalloc(Google Cloud)は、長期間allocate/deallocateを繰り返すmassive long-lived services向けに設計されてるんだ。allocateしてfreeすると、memoryをOSにreleaseするんだよね（glibcはしない）。<br>＞However、there is an app or two where glibc stability doesnt trigger a pathological use cases、and you have no choice。<br>MIMallocとか最新TCMalloc（とか他のpopular allocator）で例を出してよ。vagueなanectodeじゃなくて。" userName="vlovich123" createdAt="2025-03-19T05:15:01" color="#785bff">}}

{{<matomeQuote body="mimallocとsnmallocを使ってみたんだけど、glibcでは起きないcrashが起きたんだよね。他のlibrary(libusb、jack、Nvidia driver)とinteroperateするときに。" userName="jcelerier" createdAt="2025-03-19T09:06:47" color="">}}

{{<matomeQuote body="executable内のすべてに対してallocatorをproperly overridingしてないなら、あり得る話だね。例えば、あるallocatorでlinkingして、別のallocatorを使ってるdynamic libraryとlinkingするとか。specific reproがないと、PEBCAKなのかlegit bugなのか区別がつかないよ。それにNvidia driverがprocess内でrunningしてるわけじゃないから関係ないはず。" userName="vlovich123" createdAt="2025-03-19T09:44:26" color="#ff33a1">}}

{{<matomeQuote body="explanationはもっとsimpleだよ。こういうmajor changeはcrashにつながる可能性があるんだ。<br>biz、bar、bifっていう3つのlibraryがあって、それぞれbugがあるとする。bizを使っていたとする。systemがunstableなときは、debugしてworkingするようにするんだ（real bugを見つけるか、innocuousなchangeをするか）。<br>libraryをswitchすると、affectしてないbugはなくなる。softwareがworkingするからね。でも、whole new set of bugsが発生するんだ。" userName="blagie" createdAt="2025-03-19T14:56:47" color="#ff33a1">}}

{{<matomeQuote body="＞Also it certainly can’t be the Nvidia driver since that’s not running anything in your process。<br>modern GPU driverのhuge chunkはcalling processの一部で、regular libraryみたいにloadedされるんだ。ChromeのGPU threadをspot checkingすると、single 80+mb nvidia DLLによってdozens of threadsがcreatedされてる。これはunusualじゃなくて、every GPU driverは、GPUを使ってるappにmassive librariesをloadedするんだ。shader compiler用のLLVMのentire copiesも含めて。" userName="kllrnohj" createdAt="2025-03-19T13:40:05" color="#ff33a1">}}

{{<matomeQuote body="まずnumberを出してよ。“well established”っていうだけじゃ、contextがないとhelpにならないよ。" userName="Y_Y" createdAt="2025-03-19T08:10:14" color="">}}

{{<matomeQuote body="https://github.com/microsoft/mimalloc?tab=readme-ov-file#per…　だってさ。" userName="scns" createdAt="2025-03-19T08:34:42" color="">}}

{{<matomeQuote body="前に同じような結果について書いたことあるんだよね。<br>https://www.dropbox.com/scl/fi/evnn6yoornh9p6l7nq1t9/Irrepro…" userName="jeffbee" createdAt="2025-03-19T14:14:56" color="">}}

{{<matomeQuote body="みんなglibcはゴミだってことで意見一致するっしょ？　ベンチマーク一個だけで決めつけるのは危ないけど、選べるなら新しいtcmalloc選ぶかな。コードの質が高そうだし。" userName="vlovich123" createdAt="2025-03-19T15:16:51" color="">}}

{{<matomeQuote body="今のtcmallocの問題点は、いろんなビルドに組み込むのが難しいってことだよね。大規模システムとか、bazel使ってるところにはいいんだけど、jqにさくっと組み込む方法が分からなかった。" userName="jeffbee" createdAt="2025-03-19T15:32:09" color="">}}

{{<matomeQuote body="情報ありがとね。自社ソリューションを良く見せたい会社のベンチマークは疑ってかかるようにしてるんだ。最新の結果が2021年だし。rpmalloc、Hermes、snmallocも、状況によっては自分たちが一番だってベンチマーク出してるよね。" userName="Y_Y" createdAt="2025-03-19T09:08:48" color="">}}

{{<matomeQuote body="JEmalloc、mimalloc、tcmallocの基本的な構造から考えると、glibc mallocよりフラグメンテーションは少ないはずだよ（小さいプログラムでちょっとだけメモリ使う場合は逆効果だけど）。glibc mallocはフラグメンテーションが酷すぎるから、勘違いしてるんじゃない？" userName="Tuna-Fish" createdAt="2025-03-19T09:40:18" color="#ff33a1">}}

{{<matomeQuote body="＞you are very confused here<br>これって俺のこと？　もしそうなら、どこが勘違いしてるか教えてくれる？" userName="Y_Y" createdAt="2025-03-19T10:42:00" color="">}}

{{<matomeQuote body="何言ってるか全然わかんない。組み込みみたいにメモリ固定じゃないし。メモリ足りなくなったらOSから仮想メモリもらうでしょ。あと、glibcよりmimallocとかtcmallocの方がメモリ管理が上手って話だよ。" userName="vlovich123" createdAt="2025-03-19T10:25:50" color="">}}

{{<matomeQuote body="＞もしスペースが足りなくなったら、OSからもっと仮想メモリをもらうことになるよ。<br>Swap spaceだって有限だしね。<br>＞あと、あんたの言ってることじゃ、もう片方のallocatorが絶対ダメだってことにはならないじゃん。<br>別にどっちが悪いって言ってるわけじゃないんだ。数学的に、完全に同じallocatorのペアっていう超レアケースを除いて、挙動が違うallocatorなら、片方で成功するけどもう片方じゃダメになるプログラムを作れるってことを示してるんだよ。<br>ハッキリとは言わなかったけど、つまりこういうこと：allocatorを安易に変えるのは絶対に安全じゃないってこと。99%は片方が良くても、もう片方じゃ絶対に失敗するcorner caseがあるってことだ。" userName="akoboldfrying" createdAt="2025-03-19T11:27:51" color="">}}

{{<matomeQuote body="allocatorについて、もっとハッキリと前提を言うべきだったね。<br>1. malloc()が呼ばれた時、引数以上のサイズの連続した空きメモリがあれば、必ず成功する。これはまあ、当然だよね。<br>2. Bookkeeping（少なくともfree listの管理とかに必要なやつ）で使うメモリは、どっちのallocatorでも同じ。つまり、malloc(x)で、将来のmalloc()で使えるバイト数がy >= xバイト減ったとする。この時、もう片方のallocatorでも、同じタイミングでmalloc()したら、yバイト減るってこと。実際には違うかもしれないけど、かなり良い近似になるはず。free listは、最初の方の数バイトをnextとかprevポインタに使うことで”タダ”で保存できるしね。<br>OSがlazy allocation（malloc()の時点じゃなくて、実際にアクセスするまでbacking storeをcommitしない。Linuxみたいに）でも、これは変わらない。アドレス空間（64-bitでも）は有限だし、eagerに確保されるから。最悪、memset()を毎回呼んでlazy commitを無効化すれば、もっと速くクラッシュさせられるよ。" userName="akoboldfrying" createdAt="2025-03-19T12:03:50" color="#785bff">}}

{{<matomeQuote body="allocatorを変えただけでプログラムがクラッシュしたりしなかったりするのは、RAMを使い切ってるか、プログラムにバグがあってメモリへの不正アクセスがたまたま起こりやすいallocation patternになってるかのどっちかだよ。<br>そんなallocation patternは、RAMを使い切ってOOM killerが発動するような極限状態じゃないと出てこないと思うな。それでも、allocatorが大きな違いになるとは思えないけど。" userName="vlovich123" createdAt="2025-03-19T15:49:47" color="">}}

{{<matomeQuote body="面白いことに、俺がglibcを交換しなきゃいけなかったのは、いつも長時間稼働するサーバで頻繁にallocateする時だったな。Glibcだとメモリが膨張して、最終的にクラッシュ。jemallocだと岩みたいに安定してたぜ。" userName="yxhuvud" createdAt="2025-03-19T07:08:29" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="動画編集ソフトを作ってて、4K動画をキャッシュする時に色々なallocatorを試したんだ。1フレーム32Mbで、60fpsだと、1トラックあたり毎秒2Gb近くになる。すぐにallocatorの限界にぶつかるけど、少なくともvanilla glibc allocatorは長期的な安定性があるってわかった。でも、短いbenchmarkだと一番遅いんだよね。<br>8Kビデオフレームも扱うんだけど、フレーム自体なら1秒あたり60allocationなんて全然問題ないよ。glibcが遅いのは、allocationがDEFAULT_MMAP_THRESHOLD_MAX（64bitだと32MiB）を超えてるから。だから、毎回kernelにmmapでメモリを要求して、munmapで返してるんだ。system callはちょっと遅いし、最初のアクセスで各ページのmemory faultが発生するのも遅くて、目標のパフォーマンスに届かないんだ。<br>解決策は簡単で、ビデオフレームだけは自前のfreelistを使うことだよ。" userName="scottlamb" createdAt="2025-03-19T13:46:43" color="#ff5c5c">}}

{{<matomeQuote body="そのサイズのbufferはtcmallocの”whatever”クラスに入るんだよね？あれって、unmapしないように賢くやってるだけでしょ？<br>1: 見方によっては。" userName="jeffbee" createdAt="2025-03-19T15:35:37" color="">}}

{{<matomeQuote body="jemallocとかtcmallocがそのworkloadで問題を起こすとは考えにくいな。minimal reproducing exampleとかある？" userName="hedora" createdAt="2025-03-19T15:11:25" color="">}}

{{<matomeQuote body="OK、Cで書いたよ。<https://gist.github.com/scottlamb/459a3ce6230be67bf4ceb1f1a8...><br>前回のコメントで言ってなかったけど、スレッドのhandoffも関係してるかも。スレッド固有のarenaを壊したり、mallocにちょっとした変動を与えたりするから。<br>俺の環境だとレートが実際のプログラムよりずっと高いけど、同じようにmmap、munmap、page faultのパスを通ってるのがわかるはず。実際の(Rust)プログラムだと、poolingのために20行くらいコードを追加するだけで解決したから、他のallocatorは試してないんだ。" userName="scottlamb" createdAt="2025-03-19T16:18:14" color="#ff5c5c">}}

{{<matomeQuote body="ごめん、このコメントの意味がよくわからない。CとかCコンパイラは全然詳しくないんだけど、gistは全部読んで、色々学べて価値があったと思ったんだ。<br>でも、このトップコメントを読むと、記事の内容を完全に勘違いしてるんじゃないかって不安になる。このコメントの口調からすると、gistで言ってることは絶対にやるべきじゃないし、複雑さを無視した酷い提案だって言ってるみたい。gistは良いものなのか、意味があるのか教えてほしい。さっきまで良いと思ってたけど、このコメントを読んで自信がなくなったんだ。" userName="1dom" createdAt="2025-03-19T08:37:56" color="">}}

{{<matomeQuote body="説明してみるね。記事で説明されてるプロセスは、どんなプログラムにも適用できる魔法のレシピじゃないんだ。<br>`jq`は、起動して一つのjobをこなしたら終わるコマンドラインプログラムだ。こういうプログラムで最適化したいのは、実行速度だけ。メモリリークとか、プロセスがどれだけメモリを使うか（ある程度は気にするけど）はどうでもいい。`jq`はメモリを解放しなくても問題ない。だから、超単純なallocatorを使うのが`jq`にとって大きなメリットになる。自分で書いてさらに速くすることもできるかも。<br>でも、runtime特性が違うプログラムだと、結果は全然違うかもしれない。長く稼働するサーバプログラムは、速度よりもメモリの肥大化を防ぐ必要があるかもしれない。あるいは、速度よりも安定性が重要かもしれない。速度が重要な場合でも、latencyじゃなくてthroughputかもしれない。それぞれのケースで評価基準が違うし、最適な最適化戦略も違う。<br>混乱させたコメントは、安易に記事のレシピを適用しないように注意を促してるだけ。現実世界では、最適化はかなり複雑な作業になる。" userName="alextingle" createdAt="2025-03-19T09:32:28" color="#785bff">}}

{{<matomeQuote body="たぶん、記事のレシピを単純に適用することへの注意喚起だよ。現実世界では、最適化って結構大変じゃん？<br>JQは前の仕事でよく使ってたし、gistには価値があると思う。でも、最初のコメントはタイトルだけで内容を批判してる気がするんだよね。<br>gistが全てを速くするわけじゃないのはわかるけど、HNの読者がそれを真に受けるとは思えない。最初の文でJQの話だって言ってるし。<br>内容を無視して、関係ないケースを取り上げて批判するのは簡単だけど、なんでそれがHNで評価されてるのか理解できない。<br>編集：俺も気をつけないと。否定的なフィードバックばかりじゃ誰も嬉しくないよね！返信ありがとう、感謝してるよ:) このgistがUbuntuでJQを改善することを再確認できた。注意喚起は必要だけど、このgistが定義されたコンテキストで価値があるって一言あればもっと良くなると思う。" userName="1dom" createdAt="2025-03-19T10:59:45" color="">}}

{{<matomeQuote body="一つのアロケータを全てに使うのは良くないよね。シングルスレッドのアプリでも、スレッドセーフのコストを払うのはマジ勘弁。リソース管理がちゃんとされてるマルチスレッドアプリでもそうだし。" userName="grandempire" createdAt="2025-03-19T05:27:07" color="">}}

{{<matomeQuote body="気持ちはわかるけど、デフォルトはマルチスレッドに対応できる安全なものにすべきだと思う。Concurrencyに対応できないglibcみたいなアロケータを使いたいなら、自由に切り替えればいいじゃん。" userName="yxhuvud" createdAt="2025-03-19T07:10:35" color="">}}

{{<matomeQuote body="std vectorを使ってて、push_backがスレッドセーフじゃないのにロックかけるとか意味不明。いい加減なマルチスレッドはありえない。もう元に戻せないのはわかるけど、今後に活かさないと。" userName="grandempire" createdAt="2025-03-19T14:16:18" color="">}}

{{<matomeQuote body="知らんけど。アロケーションは十分遅いから、ロックがあっても気にしない。デフォルトで動くようにして、マルチスレッドを許可しないことでパフォーマンスを上げたいなら、それが簡単であるべき。でも安全第一。ほとんどの場合、大した問題じゃないし。一般的なアロケータは名目上スレッドセーフだし。<br>glibcもスレッドセーフって言ってるけど、解放されたメモリを再利用しない傾向があるよね。" userName="yxhuvud" createdAt="2025-03-19T17:41:48" color="">}}

{{<matomeQuote body="よくある話だよね。<br>プロジェクトに適した言語で書くと、別の言語を使うべきだって言われるし。データの圧縮アルゴに適したアルゴリズムを使うと、別のアルゴリズムの方が良いって言われる。<br>Dynamoに収まるように長いJSONを圧縮する必要があって、Brotliが一番良かったのに、zstdの方が良いって言われたりするし。<br>マジ疲れるわ..." userName="silisili" createdAt="2025-03-19T06:03:26" color="#38d3d3">}}

{{<matomeQuote body="Gentoo linuxは、まさにこういう人のためにあるんだよね。自分の環境に合わせて最適化できる。<br>初期設定が終われば簡単だし、matrixのGentoo Linuxチャンネルで友達もできたし、楽しかったな。<br>https://www.gentoo.org/<br>豆知識：最初のChromeOSはGentoo Linuxをカスタムしたものだったらしい。今も使ってるかは知らないけど。" userName="teitoklien" createdAt="2025-03-19T01:05:33" color="#ff5c5c">}}

{{<matomeQuote body="＞Gentoo linuxは、まさにこういう人のためにあるんだよね。自分の環境に合わせて最適化できる。<br>それはそうだけど、ここで言う”最適化”はパフォーマンスだけじゃないってことに注意。<br>俺は20年Gentoo使ってるけど、パフォーマンスが理由じゃないよ。Gentooは、自分がどうしたいか分かってる場合に最適。Gentooはそれを実現してくれる。" userName="donio" createdAt="2025-03-19T02:31:36" color="">}}

{{<matomeQuote body="パフォーマンスが理由じゃないなら、Slackwareみたいに自分で必要なパッケージだけビルドするのと何が違うの？" userName="kennysoona" createdAt="2025-03-19T05:26:44" color="">}}

{{<matomeQuote body="USEフラグってのがあるんだよね。これを使うと、特定の機能だけを有効にしたり無効にしたりしてパッケージをビルドできるから、依存関係のツリーをさらに小さくできるんだよ。" userName="CamouflagedKiwi" createdAt="2025-03-19T07:37:20" color="#45d325">}}

{{<matomeQuote body="依存関係のツリーを小さくするのって、runtime dependenciesだけじゃなくてbuild-time dependenciesも考えなきゃいけないから、ちょっと複雑になるんだよね。build後にクリーンアップする方法もあるかもしれないけど、次に新しいpackageをemergeするときにbuild-time dependenciesをまたre-buildしなきゃいけなくなるから、結局そのままにしちゃうんだよね。ROOT=/my/chroot emerge blaって感じで、filesystem treeの別の場所にpackageをemergeさせることもできるから、build-time systemをminimalなruntime systemのincubatorみたいにできるけど、他のGentoo userが遭遇しないような問題にぶつかることになるよ。build-time dependenciesとruntime dependenciesの区別がrecipeで正しくされてないとかね。俺はここ10年くらいこの機能に頼ってたんだけど、年々劣化してきて、去年の終わりに諦めたんだ。" userName="stakhanov" createdAt="2025-03-19T08:27:20" color="">}}

{{<matomeQuote body="それ、めっちゃ良い点だね。俺は2004年の初期からGentoo使ってるんだけど(Pentium IVの時代、笑)。最近だと、dev-lang/tclがdev-db/sqliteをbuildするのに必要なだけで困るんだよね。sqliteみたいに広く使われることを想定されてて、free baseのdevがいっぱいいるsoftwareが、Makefileを使うためにもうちょっと頑張らないのがマジでweirdだと思うわ。" userName="cb321" createdAt="2025-03-19T12:09:52" color="#ff5c5c">}}

{{<matomeQuote body="特定のflagを使ってpackageをbuildするなら、slackbuildsで十分じゃないのかな？" userName="kennysoona" createdAt="2025-03-19T07:54:42" color="">}}

{{<matomeQuote body="昔使ってた頃は、ergonomicsとsupply chainへのexpositionが良いからGentooが好きだったな。Slackwareはすごいmanualで、low levelと長いcommand chainsに埋もれてる感じだった。Gentooは簡単だけど、compilation timesに伴うhard costでdependenciesを強調してる感じだった。newbだった当時は、機械へのaccessがあるuser friendlinessを楽しんでたよ。48h+のcompilationの結果の1s boot time speeduのsatisfactionはunparalleledだったな ;) " userName="xlii" createdAt="2025-03-19T06:00:49" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="＞もしperformanceのためじゃなかったら、何を得られたのか<br>新しいhobbyかな。" userName="0xbadcafebee" createdAt="2025-03-19T19:00:05" color="">}}

{{<matomeQuote body="それ、すっごいfairだね。もっと簡単なalternativeがあるのに、funのために色々とtinkeredしたことあるわ。" userName="kennysoona" createdAt="2025-03-19T20:36:49" color="">}}

{{<matomeQuote body="gentoo installするmemeのHN version初めて見た。more sophisticatedだね、確かに。<br>＞Gentooのgoalは、pre-built binary packageを持つ代わりに、すべてのprogramをsourceからbuildするoperating systemを持つことだ。これはadvanced speedとcustomizabilityを可能にするけど、kernelみたいなbasicなcomponentでさえsourceからcompiledしなきゃいけないってことだ。Linux community全体で、そのdaunting install processのために、すごくcomplexなoperating systemとして知られてる。defaultのGentoo installはcommand promptにstraightにbootするから、userはdiskをmanualでpartitionして、”Stage 3 tarball”として知られてるpackageをdownloadして、extractして、packageをmanualでinstallしてsystemをbuildしなきゃいけない。new userとかinexperienced userはinstallerにbootした時にgraphical displayがないと、何すればいいかわからないことが多いだろう。/g/のmemberはGentooのvaluesをexaggerateして、new userをtrickしてinstallさせようとする。" userName="vasco" createdAt="2025-03-19T06:45:09" color="">}}

{{<matomeQuote body="それどこからのblurb？chatgpt？もうtrueじゃないと思うんだけど。last time I checkedしたとき、Gentooはbase systemのための”normal” liveCD installationがあったと思うよ。wantしたら自分でrecompileできるやつ。" userName="toyg" createdAt="2025-03-19T08:00:35" color="#785bff">}}

{{<matomeQuote body="GRP (Gentoo packages)は少なくとも20年前からあったよ。俺のmemoryだとね。その頃が最後に本気で使った時だ。packageがavailableで、everythingをriceしなくてもよかったのをrememberしてるよ、for sure。" userName="_joel" createdAt="2025-03-19T09:25:11" color="">}}

{{<matomeQuote body="2003年からずっとGentoo使ってたんだけど、最近（2024年後半）Void Linuxに乗り換えたんだよね。Voidはソースからのビルドが公式じゃないけど、結構うまくいくことが多いよ。ちょっとした問題はあっても、Linuxの経験があれば修正できるし、貢献もできる。GentooでいつもUSEフラグとかpackage masksをいじってたのが嫌だったんだよね。複雑すぎて、根本的な原因を直せなかったし。Voidは、バイナリとソースを混ぜて使いたいときにも便利だよ。" userName="stakhanov" createdAt="2025-03-19T08:05:39" color="#ff5733">}}

{{<matomeQuote body="Gentooをしばらく使ってたんだけど、色々いじりすぎてシステム壊しちゃったんだよね（Gentooが悪いんじゃなくて、俺が悪い）。その後ArchLinuxに引っ越して、今のところは順調だよ。普通のプロセッサ使ってるなら、Gentoo使ってもそんなに有利にならないんじゃないかな？" userName="eru" createdAt="2025-03-19T01:29:00" color="">}}

{{<matomeQuote body="Gentooなら、システムパッケージマネージャ内でここで言及されてるような調整が全部できるから、調整したビルドでもセキュリティアップデートがちゃんと受けられるんだよね。Gentoo Prefixを使えば、他のシステムの上にGentooをインストールして、ユーザーランドパッケージマネージャとして使うこともできるよ。https://wiki.gentoo.org/wiki/Project:Prefix" userName="ryao" createdAt="2025-03-19T02:14:21" color="#ff33a1">}}

{{<matomeQuote body="＞Gentooなら、システムパッケージマネージャ内でここで言及されてるような調整が全部できるから、調整したビルドでもセキュリティアップデートがちゃんと受けられる”<br>そうそう、Gentooはすごいよね。ただ、俺にとっては誘惑が多すぎたってだけ。" userName="eru" createdAt="2025-03-19T06:13:59" color="">}}

{{<matomeQuote body="ALHP reposに注目してほしいな。[1]　これはx86-64-v2、x86-64-v3、x86-64-v4向けにビルドされたArchのパッケージで、プロセッサがサポートしてる一番高いレベルを選べば、自分でコンパイルしなくても-march=nativeにかなり近づけるはず。-O3とLTOも有効になるよ。[1]: https://github.com/an0nfunc/ALHP" userName="serbuvlad" createdAt="2025-03-19T04:52:49" color="#785bff">}}

{{<matomeQuote body="いいね、試してみる！LTOは素晴らしいけど、-O3（より保守的な-O2）については疑問があるな。UPDATE：あー、ALHP reposはnvidiaドライバをサポートしてないのか。また色々設定し直すのは嫌だな。Another update：nvidia-openに移行したから、提案されたreposを試せるようになったよ。" userName="eru" createdAt="2025-03-19T06:14:32" color="">}}

{{<matomeQuote body="通常のarch reposをフォールバックとして使えるはずだよ（feature levelが低いalhpのreposでも）。https://somegit.dev/ALHP/ALHP.GO/issues/255#issuecomment-333...　こうすれば、ALHPがサポートしてないパッケージをインストールしつつ、できるだけ最適化されたパッケージを使えるようになるはず。" userName="alessandroberna" createdAt="2025-03-19T07:35:01" color="#38d3d3">}}

{{<matomeQuote body="新しいreposに移行したよ。でもdkmsドライバに変える必要があった。今のところは動いてるみたいだけど、特に早く'感じる'ってこともないな。" userName="eru" createdAt="2025-03-19T09:29:26" color="">}}

{{<matomeQuote body="Arch壊したことはあるけどGentooは壊したことないなー。たぶん、俺がArchを先に触って、あんたがGentooを先に触ったってだけの話だと思うよ。実際、大した差はないんじゃないかな。Gentooの方がデフォルトではArchより安定してるけどね。別に最先端のディストリじゃないし。でも、そうしたいならできるってのがGentooの良いところ。" userName="globular-toast" createdAt="2025-03-19T07:16:53" color="">}}

{{<matomeQuote body="＞I think this more due to the fact I ran Arch first and you then Gentoo first, rather than any real difference between them.”<br>それはありえるね。<br>＞Gentoo is more stable than Arch by default, though. It's not actually a bleeding edge distro, but you can choose to run it that way if you wish. Gentoo is about choice.”<br>Ubuntuの方が色々壊れて大変だったなー。半年に一回のdistro upgradeで毎回色々壊れて、原因特定が大変だったんだよね。rolling distributionだと、一気に壊れるんじゃなくて、一個ずつ壊れていくから楽なんだよね。" userName="eru" createdAt="2025-03-19T09:31:06" color="#45d325">}}

{{<matomeQuote body="Ubuntuとかは、色々壊すことで有名だよね。パッケージ消そうとすると、Linux kernelまで消そうとするんだもん。ありえないでしょ？" userName="johnisgood" createdAt="2025-03-19T11:23:52" color="">}}

{{<matomeQuote body="GentooもArchも使ったことあるけど、Archの方が好きかな。pacman（C言語）が好きで、Portage（Python）はあんまり好きじゃないんだよね。俺的にはArch Linuxの方がGentooより安定してると思うけど、それは俺の経験談ね。" userName="johnisgood" createdAt="2025-03-19T11:22:44" color="">}}

{{<matomeQuote body="Afaik、GentooベースのChromeOSはAndroidに置き換えられようとしてるみたい。" userName="6SixTy" createdAt="2025-03-19T01:15:53" color="">}}

{{<matomeQuote body="Gentooはすでに非Linuxシステム向けのprefix supportがあるし、以前はGentoo/kFreeBSDに興味があったから、ありえなくはないかもね。" userName="yjftsjthsd-h" createdAt="2025-03-19T05:11:42" color="">}}

{{<matomeQuote body="ZirconはLinuxとは全然違うから。PortageをWindows上で動かすって言ってるようなもんじゃん。無理でしょ。" userName="nickysielicki" createdAt="2025-03-19T07:10:48" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
