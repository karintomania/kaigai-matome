+++
date = '2025-05-30T00:00:00'
months = '2025/05'
draft = false
title = 'Microsandbox まるでコンテナ！高速で手軽なVM！'
tags = ["VM", "コンテナ", "仮想化", "セキュリティ", "パフォーマンス"]
featureimage = 'thumbnails/blue3.jpg'
+++

> Microsandbox まるでコンテナ！高速で手軽なVM！

引用元：[https://news.ycombinator.com/item?id=44135977](https://news.ycombinator.com/item?id=44135977)




{{<matomeQuote body="これすごくいいアイデアじゃん！コンテナセキュリティの評価方法として、既知の脆弱性リストを使って環境ごとに試して防げた割合をスコアにするのはどうかな？例えばpermissions-based、jail、Docker、Microsandboxとかで試して、Microsandboxなら100%いけるかも？ハニーポットで実証するのも面白そう。RowhammerやSpectreみたいな根本的な問題もあるから、“安全”の定義も考え直す必要あるかもね。エミュレーションなしで100%安全なコンテナを見つけたいってのが動機だよ。" userName="zackmorris" createdAt="2025/05/30 18:48:29" color="#ff5c5c">}}




{{<matomeQuote body="セキュアなコンテナランタイム（悪意のあるコンテナに対してね）は作れないよ。だって基盤がLinux Kernelだから。Linuxコンテナをちゃんとしたサンドボックスにする唯一の方法は、使えるsyscall APIを大幅に制限すること。でもそれだと、すぐに汎用性がなくなっちゃうんだ。「どんなワークロードでも乗せられる汎用プラットフォーム」じゃなくて、用途ごとに調整が必要な特別なものになっちゃう。だから仮想化が必要なんだよ。ちゃんと強化されてメモリ安全なOSが登場するまでは、それが唯一の方法だね。もしそういうOSができても、Linuxホスト上でMicroVMs動かすより速いかは分かんないけどね" userName="bjackman" createdAt="2025/05/30 19:37:42" color="#ff5c5c">}}




{{<matomeQuote body="マルチテナントのワークロードの場合、問題は「コンテナの脆弱性」っていうより、標準的なコンテナがカーネルを共有してるってことなんだよね。だから、カーネルのLPE（ローカル権限昇格）は全部、潜在的なコンテナエスケープになる可能性があるってわけ。そういうバグは昔からいっぱいあって、それが「コンテナエスケープ」ってフラグ付けされることは稀なんだ。カーネルのLPEはコンテナを破るものだって、まあ、みんな分かってることだよね" userName="tptacek" createdAt="2025/05/30 19:38:31" color="#ff5c5c">}}




{{<matomeQuote body="＞カーネルのLPEはコンテナを破るものだって、まあ、みんな分かってることだよね<br>うん、たぶん、あらゆるカーネルLPEは、ローカルマシン上の全てのセキュリティ境界を破る潜在的な可能性があるって、一般的に理解されてると思うな（だからそういうものだと見なされてる）。だってカーネルには内部セキュリティ境界がないからね。それはコンテナだけじゃなくて、ユーザー分離とか、ローカルカーネルで制御されるハードウェア仮想化とか、カーネルのプライベートな秘密とか、他の全部を含む話だよ" userName="delusional" createdAt="2025/05/31 09:41:56" color="#45d325">}}




{{<matomeQuote body="セキュアなVMMがない限り、仮想化ランタイムもコンテナと同じ問題に直面するよ。Linuxコンテナが、共有がデフォルトなLinux Kernelサービスを無理やり分割しようとしてるのが問題。それはセキュリティ設計の欠陥だよ。数億円規模の攻撃にも耐えうるっていうなら、10人のチームが3年かけても脆弱性を見つけられないような脆弱性評価か、形式的な証明を見せてくれ。それができないなら、ソフトウェアは簡単にハックされるっていうデフォルトに戻るべきだ。異常な主張には異常な証拠が必要だからね。" userName="Veserv" createdAt="2025/05/30 19:54:53" color="#ff5733">}}




{{<matomeQuote body="LPE脆弱性の大部分は、「特別に細工されたデータをsyscallでカーネルに渡してカーネルバグをトリガーする」っていう性質のものなんだ。コンテナの場合、カーネルはホストカーネルだから、ホストが侵害されちゃう。VMの場合、カーネルはゲストカーネルだから、ゲストが侵害されるだけでホストは無事だ。これはずっと狭い範囲の侵害だし、ゲストのrootがすでに攻撃者に制御されてると想定されるセキュリティモデルなら、そもそも脆弱性ですらないんだよ" userName="zrm" createdAt="2025/05/31 16:46:10" color="#45d325">}}




{{<matomeQuote body="VMサンドボックスエスケープなんて、「特別に細工されたデータをhypercall/trapでハイパーバイザに渡してハイパーバイザバグをトリガーする」だけじゃん。仮想化に本質的な優位性なんてないよ。唯一重要なのは、特権を持つホストがいかにセキュアで堅牢かだけさ。一般的にVMが有利に見える唯一の理由は、Linux Kernelがセキュリティ的にひどくて、デフォルトで共有/許可のサービス向けに設計されてるものを、人々が無理やり多重化サービスにしようとしてるからだ。でもそれも、数百万から数千万ドルもかけて中核機能やサービスに脆弱性を見つける現代の、ごく普通の脅威アクターに比べたら、大した差じゃないね。普及している脅威アクターに対して安全になる最低ラインに到達するには、高度なスキルを持つ10人のチームが3年かけても脆弱性を見つけられないような、特権マネージャーコードが必要なんだよ。近い将来の脅威アクターなんて言うまでもない" userName="Veserv" createdAt="2025/05/31 19:13:55" color="#785bff">}}




{{<matomeQuote body="君の言いたいことは分かるけど、たとえ君のVMMが数えきれないほどのC++のコードでできてて、エミュレートされたデバイスがあっても、共有モノリシックカーネルなコンテナランタイムにはないセキュリティ強化のチャンスがあるんだよ。VMMの周り（そして内部にさえ！）セキュリティ境界を作れるんだ。VMMプロセスにエスケープされても、VMMをアグレッシブにサンドボックス化することで、その価値を最小限に抑えられるようにできる。それに、C++でデバイスをエミュレートするモデルからも絶対抜け出せるよ。理想的には、VMMはVF passthroughsの管理以外、ほとんど何もすべきじゃないと思う。もちろん、そうすると問題の多くは、どうしたって完璧じゃないデバイスファームウェアに移っちゃうけど、でもそれもカーネルバグよりは緩和策が多いんだ" userName="bjackman" createdAt="2025/05/31 08:10:25" color="#45d325">}}




{{<matomeQuote body="＞ローカルカーネルで制御されるハードウェア仮想化<br>一部のアーキテクチャでは、カーネルLPEはプラットフォーム（L0/EL2）仮想化を破らないよ。<br>参考： https://news.ycombinator.com/item?id=44141164<br>L0/EL2<br>L1/EL1<br>pKVM<br>KVM<br>AX<br>Hyper-V / Xen / ESX" userName="transpute" createdAt="2025/05/31 11:25:54" color="#785bff">}}




{{<matomeQuote body="＞...使えるsyscall APIを大幅に制限すること。でもそれだと、すぐに汎用性がなくなっちゃうんだ<br>それは場合によると思うけどね。Androidはseccomp-bpfとAndroid-specific flavour of SELinux [0]でかなり成功してるし<br>＞ちゃんと強化されてメモリ安全なOS...Linuxホスト上でMicroVMs動かすより速いかは分かんないけどね<br>Andy Tanenbaumなら、Micro Kernelsで十分だって言うんじゃないかな [0] https://youtu.be/WxbOq8IGEiE" userName="ignoramous" createdAt="2025/05/30 20:21:17" color="#ff33a1">}}




{{<matomeQuote body="「VMMは安全にできない」って言ってるけど、pKVMみたいにコード量が少なくて、シリコン（ハードウェア）で隔離されてるVMMもあるんだよ。Google PixelとかHPのPCで使われてて、実績もあるんだ。HPのセキュリティ関連の動画とかも参考になるよ。" userName="transpute" createdAt="2025/05/31 01:09:04" color="#45d325">}}




{{<matomeQuote body="KVMゲストからホストに逃げられるって言うなら、証拠出してくんない？ゲストでシェルやroot権限取ってて、そこからKVMホストを攻撃できた直近3件のLinux LPEの例を挙げてみてよ。Linux LPEなんて毎年何十件も出てるんだから、簡単でしょ？" userName="tptacek" createdAt="2025/05/31 22:11:18" color="">}}




{{<matomeQuote body="ほとんどのLinuxカーネルのLPE（権限昇格の脆弱性）はね、KVMゲストの中で悪用されても、KVMホストには影響しないんだよ。" userName="tptacek" createdAt="2025/05/31 17:16:26" color="">}}




{{<matomeQuote body="デバイスファームウェアとかVMMとか、そういうアーキテクチャってどうやったらもっと安全にできるの？よくわかんないんだ。共有リソースって基本的な問題は変わらない気がするんだけど。Linuxカーネルはめちゃくちゃデカいし、”共有リソース”を小さくできれば検証はしやすいかも。でも、それはソフトだけでも同じじゃない？これってマイクロカーネルの議論と似てるよね。" userName="delusional" createdAt="2025/05/31 09:51:23" color="">}}




{{<matomeQuote body="仮想化を使ってホストを保護するコンテナランタイムは絶対に作れるよ。例えばKata containersっていうのがあるんだ。これなら普通のpodmanとかで使えるし、k8sみたいなのにも組み込めるよ。" userName="akdev1l" createdAt="2025/05/30 19:56:15" color="#785bff">}}




{{<matomeQuote body="”シリコンサポート”ってやつは、ソフトウェアより本当に安全だって保証あるの？突き詰めるとハードウェア設定だし、ハードウェアに複雑なセキュリティ機能入れるとソフトと同じバグがあるかも。しかも更新大変でしょ。" userName="delusional" createdAt="2025/05/31 09:46:00" color="">}}




{{<matomeQuote body="コンテナエスケープだとカーネル権限になっちゃうけど、VMMエスケープならVMM権限で、システムによっては権限を最小限にできるんだ。ioMMUでデバイスパススルーのリスクも減らせるかも。VMMエスケープ後も、VMMをしっかりサンドボックスすればカーネルへの攻撃範囲は狭まるよ。これってマイクロカーネルの話に似てるけど、DockerからセキュアなVMプラットフォームへの道は現実的なステップがあるのに対して、Dockerからマイクロカーネルへの道は全部書き換えが必要で無理ゲーってこと！" userName="bjackman" createdAt="2025/05/31 10:14:49" color="#38d3d3">}}




{{<matomeQuote body="gVisorもあるよ。あれは全てのシステムコールを、Goで書かれたらしいけどGoogleにとっては十分安全だと思われてるレイヤーを通して実行してるんだ。" userName="carlhjerpe" createdAt="2025/05/30 21:52:02" color="#ff33a1">}}




{{<matomeQuote body="Linux LPEがゲストからホストに直接つながるなんて的外れだよ。それはiMessage RCEから直接カーネル攻略できるか聞くようなもの。普通はRCEからLPEやエスケープにつなげるんだ。ハイパーバイザーがハック不可能？そんな特別な証拠ない主張はやめてよ。VMエスケープがあって、ゲストのコード実行と組み合わせられるってのが俺の言いたいこと。セキュリティは境界の質次第。Linuxカーネルのひどいセキュリティ作った連中が、名前変えただけで同じ問題を解決できるとは思えないね。" userName="Veserv" createdAt="2025/06/01 00:05:07" color="#45d325">}}




{{<matomeQuote body="gVisorって仮想化使ってるんだ．" userName="bjackman" createdAt="2025/05/31 08:17:19" color="">}}




{{<matomeQuote body="なんか，すれ違ってるだけかな？俺は，Linuxカーネルのセキュリティモデルだとゲスト→ホストへの脱出は簡単だって君が言ってるって読んだけど（そんなことないよね）．もし同意なら，同意ってことで，掲示板のあいまいさのせいってことにしとこうよ．" userName="tptacek" createdAt="2025/06/01 00:42:31" color="#ff5c5c">}}




{{<matomeQuote body="＞Android<br>そうなんだよ．Androidはめっちゃ制約があるからできてるけど柔軟性ないよ．テキトーなアプリを動かすのは多分苦労するね．<br>＞Micro Kernelsでもうまくいくんじゃないか<br>うん，こっちはいい方向．多くのカーネル仕事はLinuxにマイクロカーネルの利点を後付けしようとしてる．「マイクロカーネル使え」は非現実的だよ．IMOね．" userName="bjackman" createdAt="2025/05/31 08:16:57" color="#45d325">}}




{{<matomeQuote body="＞この”シリコンサポート”がソフトウェアより安全だって保証はあるの？<br>セキュリティは脅威モデル次第だよ．目標は最高特権レベルのコードを減らすことなんだ．NitroとかApple T2みたいな具体例があるね．攻撃対象領域を減らすのは終わりのないプロセスだよ．<br>＞ハードウェアはソフトウェアと全く同じバグの影響を受けるけど，アップデートは難しいんでしょ<br>ハードウェアもバグるけど，マイクロコードでアップデートできることもあるんだ．" userName="transpute" createdAt="2025/05/31 11:00:47" color="#ff5c5c">}}




{{<matomeQuote body="VMにも攻撃対象はあるけどコンテナとは全然違うよ．コンテナは名前空間でセキュリティシステムじゃないんだ．Seacompとかで強化できるけどrootを捨てないコンテナが多いし，docker privilegedでホスト侵入できた例もあるんだ．名前空間は単体じゃセキュリティ境界じゃないよ．コンテナの方がVMより攻撃対象はるかに大きいね．" userName="nyrikki" createdAt="2025/05/31 00:26:38" color="#785bff">}}




{{<matomeQuote body="そうは思わないな？そんなに複雑じゃないよ．ほとんどのLPEはローカルカーネルを取るんだ．KVMのセキュリティモデルは信頼できないローカル（ゲスト）カーネルを想定してる．KVMを危殆化させるには，根本的なアーキテクチャ上の欠陥（稀）か，KVM自体のバグ（これも稀）が必要なんだ．" userName="tptacek" createdAt="2025/05/31 23:55:05" color="#ff33a1">}}




{{<matomeQuote body="syscallインターフェースはhypercallインターフェースよりずっと攻撃対象が多いんだ．既存のアプリケーションを動かしたいなら，既存のsyscallインターフェースを実装しないといけない．仮想化の利点は，syscallインターフェースがホストカーネルの高い特権レベルじゃなくて，ゲストカーネルの低い特権レベルで実装されるってことなんだ．" userName="zrm" createdAt="2025/05/31 20:42:31" color="#45d325">}}




{{<matomeQuote body="＞ホストを守るために仮想化を使うコンテナランタイム<br>そうだね，”コンテナ”って言った時，俺はほんとは”共有カーネルコンテナ”って意味だったんだ．<br>＞理論的にはコンテナランタイムをk8sみたいなものに押し込めることができる<br>うん，これ実際k8sでサポートされてるよ．全く信頼できないワークロードを動かすのが合理的かってのは別の話だけどね．でも，すごく良い多層防御機能に見えるのは確かだ．" userName="bjackman" createdAt="2025/05/31 08:28:34" color="#ff5733">}}




{{<matomeQuote body="＞それが現実世界で次のステップがある道じゃない<br>どうやらまた理論と実践の話に戻ったみたいだね．<br>＞DockerからセキュアなVMプラットフォームへの道は，妥当な段階的ステップがたくさんある<br>それが妥当に見える理由は，VMの歴史があるから．昔たくさんのVMがあったけど，パフォーマンスとかで捨てられたんだ．cgroupsはVMみたいなセキュリティ境界を目指したわけじゃないから，”失敗”じゃないよ．" userName="delusional" createdAt="2025/05/31 15:31:54" color="#ff5c5c">}}




{{<matomeQuote body="マシンの設定構成がめちゃくちゃ見たいなー．dockerとかsystemdで起動するものって，セキュリティレベルを大きく変える設定がいっぱいあるからさ．これが分かれば，何をしなきゃいけないかとか，どんな設定がどんなリスクにつながるのかが超分かりやすくなるはず．要は，網羅的な調査結果がめっちゃ見たいんだよね．" userName="godelski" createdAt="2025/05/30 20:06:52" color="#38d3d3">}}




{{<matomeQuote body="ちょっと話それるんだけどさ，そもそもさ，なんで普通のVMって起動にそんなに時間かかるの？少なくともWindowsだと，なんか動き出すまでに数秒かかるじゃん． BIOSの最初の命令が実行される前，ウィンドウが出る前の，何も始まってない状態の遅さについて知りたいんだ．カーネルやファームウェア初期化の話じゃないよ．なんでそんなに待たされるの？" userName="dataflow" createdAt="2025/05/30 15:13:39" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="つまりさー，ほぼゼロからコンピューター起動してるってことだから，まあ分かるっちゃ分かるんだよね．メモリ割り当てて，仮想CPU起動して，デバイス初期化して，BIOS/UEFIチェック走らせて，ハードウェア列挙してー，みたいな全部をエミュレートしながらやらなきゃいけないからさ．これって”実機”でやるより遅くなりがちじゃん．セキュリティのための処理もあると思うな，メモリページをゼロクリアするとかさ，そういうのも時間かかるし．VMがほとんどのハードウェアを使うなら，起動時間は実機とそんな変わらないよ．" userName="diggan" createdAt="2025/05/30 15:43:27" color="">}}




{{<matomeQuote body="＞（9725の引用）<br>それは聞いてないんだよ．BIOSの最初の命令が実行されるまで，ウィンドウが出るまでの時間がなぜかかるのか知りたいんだ．君の説明は，その後の話で，それはもう分かってるし聞いてない．" userName="dataflow" createdAt="2025/05/30 16:00:54" color="">}}




{{<matomeQuote body="Linuxカーnelは最適化で速くなるけど，標準だと遅延要素あり．VMはUEFI/CSMでの仮想HW準備にも時間かかる．WSL2は専用カーnelで速い．OSサービス起動などもある．解決策として，AmazonのFirecrackerは初期状態ロードでミリ秒起動．WindowsのHyper VはUEFIやディスクアクセスが遅い傾向だし，Linuxの最適化カーnelも少ないみたい．<br>[https://firecracker-microvm.github.io/](https://firecracker-microvm.github.io/)" userName="jeroenhd" createdAt="2025/05/30 15:53:52" color="#38d3d3">}}




{{<matomeQuote body="VMが何してるかとか，どのVMMソフト使ってるかとか，何も情報がないんだけどさ，俺の推測だと，OSとかVMMがVMのために事前にメモリ確保してるんじゃないか？これって他のプロセスのメモリをページアウトしたりする可能性があって，それが時間かかってるのかも．タスクマネージャーで見たら，その時メモリ使用量とかページング活動がぴょこっと増えてるか分かると思うよ．それにWindows自体にも，VM起動時に何が起きてるか教えてくれるプロファイラーがあるはずだし．" userName="drewg123" createdAt="2025/05/30 16:47:56" color="">}}




{{<matomeQuote body="それは俺が聞いてることじゃないんだよ．BIOS自体のたった1つの命令を実行するまでにも時間がかかるって話をしてるんだ．ウィンドウが出てくるまでにも時間がかかるし，VMを一時停止するなんてこともできない（まだ始まってすらいないから）．君が説明してるのは，その後の話で，それはもう理解してるし聞いてないんだよ．" userName="dataflow" createdAt="2025/05/30 16:46:50" color="">}}




{{<matomeQuote body="どのVMソフト使ってるか，もっと詳しく情報出す必要があると思うな．VirtualBoxだと君が言ってること，めっちゃ顕著だし，古いバージョンではそんな遅延なかったんだよ．だからそれって，そのVMソフトの問題だけで，”普通のVM全般”の問題じゃないのかもね．" userName="orev" createdAt="2025/05/30 16:08:17" color="">}}




{{<matomeQuote body="主にWindows上のVirtualBoxだよ．昔他のVMもそんなにめちゃくちゃ速かった印象はないけどね（多少は速かったかも）（WSL2は除くとして）．ページファイル無効，空きRAMたっぷり，ゲストRAM割り当て量も関係なし．だからそれらは問題じゃない．VirtualBox自体がその時間に何か遅いことしてるみたいで，それが何なのか分からないんだ．" userName="dataflow" createdAt="2025/05/30 16:51:01" color="">}}




{{<matomeQuote body="VM自体を作るのは速いよ．何を実行するかによるね．Unikernel VMは数ミリ秒で起動できるんだ．例えばOSvをチェックしてみて．" userName="speed_spread" createdAt="2025/05/30 16:39:49" color="">}}




{{<matomeQuote body="うん、主にVirtualBoxのこと聞いてるよ。なんであんなに時間かかる間、何やってるのか全然わかんなくて。まぁ他のVMs（例えばHyper-Vとか）もそんな劇的に違うわけじゃないと思うけどね（WSL2は置いといて）。" userName="dataflow" createdAt="2025/05/30 16:12:48" color="">}}




{{<matomeQuote body="そう、君が遅いって言ってるのは汎用ハイパーバイザーだからだよ。普通のVMは仮想ハードウェアとか色々模倣して、CPUが最初は16 bit modeで起動したり、ゲストOSが64 bit modeにするのを待ったり、起動ディスクを探したりする。x86で動くようにする昔からのやり方だけど、仮想環境でx86-64動かすだけなら、ゲストカーネル制御できれば最初から64bit modeにしたり、直接起動したりできて、こんなこと要らないんだ。" userName="akdev1l" createdAt="2025/05/30 20:27:44" color="#45d325">}}




{{<matomeQuote body="Windows Defender無効にしてもう一回やってみて。" userName="_factor" createdAt="2025/05/30 16:23:43" color="">}}




{{<matomeQuote body="なんかVirtualBoxがWindows上でHyper-Vと相性悪いって思い出した。関連しそうなフォーラム投稿［0］を見つけたよ。Hyper-V問題でビルドシステムをDockerに移してVirtualBoxをやめたことがあったな、数年前だけど。［0］ https://forums.virtualbox.org/viewtopic.php?t=112113" userName="gopher_space" createdAt="2025/05/30 21:06:07" color="#ff33a1">}}




{{<matomeQuote body="ただ推測してるだけ？それとも実際に俺が言ってる遅延がこれ（か何か他のこと）の結果として消えるのを見たことある？だって俺もうこれ（そう、全部、kernel mode driversもね）やったけど、絶対それが問題じゃないもん。" userName="dataflow" createdAt="2025/05/30 16:32:54" color="">}}




{{<matomeQuote body="”ME can also control various aspects of the Virtualization Engine directly over the ME Command Interface（MECI）。”<br>https://en.wikichip.org/wiki/intel/management_engine" userName="hnuser123456" createdAt="2025/06/03 16:40:25" color="#45d325">}}




{{<matomeQuote body="それはgreen-turtleの問題で、ゲストが実際に命令を実行し始めてから関係ある話だよ。オレはそれより前の時点の話をしてるんだ。" userName="dataflow" createdAt="2025/05/30 21:08:44" color="">}}




{{<matomeQuote body="Linuxだとさ、VMのメモリ割り当てって、4KページでGB単位のRAMを割り当てようとすると遅くなることがあるんだ。でも1GBずつ割り当てる方法があって、これでめちゃくちゃ速くなるんだよ。Windowsにも似たようなのあるだろうね。" userName="BobbyTables2" createdAt="2025/05/31 00:13:45" color="#45d325">}}




{{<matomeQuote body="返信側の擁護だけど、あんたの最初の質問がすごく漠然としててさ、みんな当たり前のことを想定するしかなかったんだよ。" userName="bityard" createdAt="2025/05/30 16:49:11" color="">}}




{{<matomeQuote body="なぜか返信に返信できないんだけどさ。VirtualBoxをプロファイルしてみることを強くおすすめするよ。推測よりはるかにいいからね。" userName="drewg123" createdAt="2025/05/30 16:55:41" color="">}}




{{<matomeQuote body="昔のSubversionの話。ファイルオープン数を減らしたら、Linuxで2〜3倍、Windowsで10倍速くなったんだ。特にWindowsはfopenがめちゃくちゃ遅くて、ウイルススキャンが原因かもって経験談だよ。コーヒー休憩後に時間余るくらいだったね。" userName="hinkley" createdAt="2025/05/30 17:17:07" color="#ff5733">}}




{{<matomeQuote body="答えは、そんな必要はないってことだよ。実際、仮想マシンってのは、ホントは必要ないたくさんのものをエミュレートしようとしてるんだ。互換性のためにやってるだけなんだけどね。起動速度に最適化されてて、一般的なレガシーソフトウェアをサポートする必要がないハイパーバイザーを作れば、＜従来数秒かかるVMと異なり、Firecrackerは125msで起動可能＞ってことになるわけ。" userName="akdev1l" createdAt="2025/05/30 19:58:51" color="#ff5c5c">}}




{{<matomeQuote body="SSDでWindows Server Coreを試してみて。VMが数秒で起動するのを見たことあるよ。64-bit以外のサポートとかDefenderとかを削れば、もっとさらに絞り込めるよ。" userName="jiggawatts" createdAt="2025/05/30 22:25:45" color="#ff5733">}}




{{<matomeQuote body="それVirtualBoxの問題みたいだね。オレはHyper-V使ってるけど、GUIのUbuntu 22にはXRDP経由で10秒で繋がるし、Ubuntu 22サーバーには起動から3秒でSSHできるよ。" userName="dist-epoch" createdAt="2025/05/30 17:43:25" color="#785bff">}}




{{<matomeQuote body="ベアVMってのはBIOSを持たない場合があって、ホストCPUとOSがサポートするパーティショニングだけなんだ。従来のOS互換性のためのレガシーPCハードウェアスタックのエミュレーションは別の話。ゲストOSがカスタム設計されてて、既知のトポロジーのベアVMで起動するように作られてれば、めちゃくちゃ速く起動できるんだよ。" userName="speed_spread" createdAt="2025/05/31 21:56:41" color="">}}




{{<matomeQuote body="オレもいつも同じこと疑問に思ってたんだ。調べてみたことはないけど、少なくともDefenderが一役買ってるとしても驚かないかな。オレの経験からすると、DefenderはWindows全体の遅さの大きな原因だからね。" userName="bonki" createdAt="2025/05/31 09:23:14" color="">}}




{{<matomeQuote body="いや違うよ。x86 VMを扱う時のBIOSの最初の命令は16ビットモードのコードなんだ。仮想環境ってのはBIOSとかそんなの全然要らないんだよね。qemuのdirect kernel bootingで試してみると良いよ、Firecrackerみたいな特殊なハイパーバイザー使わなくても、かなり遅延をスキップできるのが分かるよ。" userName="akdev1l" createdAt="2025/05/30 21:02:36" color="#ff5733">}}




{{<matomeQuote body="サンクス！俺がmicrosandboxの作者だよ。プロジェクトについて何か知りたいことあったら言ってね。このプロジェクトは、自分のマシンからマイクロVMをDockerコンテナ使うのと同じくらい簡単にするために作ったんだ。何でも質問してくれよ。" userName="appcypher" createdAt="2025/05/30 14:11:40" color="#ff33a1">}}




{{<matomeQuote body="すごい良いね！これ、俺が作ってる分散/非中央集権型ソフトウェアテストネットワーク（Valet Network）にめちゃくちゃ役に立ちそうだよ…。質問なんだけど、ネットワーキングってどうなってるの？マイクロVMがパブリックIPアドレスだけにアクセスできるように制限できる？（ローカルネットワークのIPアドレスにはアクセスできないようにできるってこと）" userName="hugs" createdAt="2025/05/30 15:36:27" color="#785bff">}}




{{<matomeQuote body="readmeをさっと読んだだけなんだけど、いくつか詳しく知りたい質問があるんだ。<br>どうしてそんなに速いの？従来のVMと比べて何かトレードオフしてる？VMの隔離が破られる可能性ってある？<br>その中でGUIって動かせるの？<br>これって新しいVagrantみたいだって思う？<br>データのやり取り（入出力）はどうやるの？" userName="0cf8612b2e1e" createdAt="2025/05/30 14:56:50" color="#ff5c5c">}}




{{<matomeQuote body="＞ どうしてそんなに速いの？従来のVMとトレードオフしてる？VMの隔離が侵害される可能性は？<br>軽量VMでFirecrackerと同じ技術。トレードオフや隔離については、軽量化とセキュリティのバランスを考慮する必要があるかもね。<br>＞ GUIは動かせる？<br>今は無理だけど、将来可能にする予定だよ。<br>＞ これを新しいVagrantだと思う？<br>Docker for VMsに近い。開発・運用向けだよ。<br>＞ データの入出力はどうやるの？<br>SDKやサーバーを使って。コマンド実行結果取得や、将来ファイルも。" userName="appcypher" createdAt="2025/05/30 15:11:55" color="#785bff">}}




{{<matomeQuote body="うん！`scope` プロパティを使えばできるよ。詳しくはこのGitHubリンクを見てみて。" userName="appcypher" createdAt="2025/05/30 16:03:04" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="このマイクロVMのアーキテクチャってFirecrackerと比べてどう違うの？" userName="catlifeonmars" createdAt="2025/05/31 03:39:46" color="#ff5733">}}




{{<matomeQuote body="今試してるんだけど有望だね。Pythonライブラリでサンドボックスを長時間起動したいんだけど、`Error: Sandbox is not started. Call start() first` エラーが時々出るんだ。<br>サンドボックスを長く起動しておく推奨方法はある？`async with` じゃないパターンで、クラスインスタンスとして作って複数回呼び出したいんだ。" userName="simonw" createdAt="2025/05/30 19:55:27" color="#ff5733">}}




{{<matomeQuote body="サンクス！sandboxfileでそれ（scopeプロパティのことと思われる）を使う例ってある？（あと、このプロジェクト、マジでクールだね。すごい仕事だよ！）" userName="hugs" createdAt="2025/05/30 17:09:35" color="#785bff">}}




{{<matomeQuote body="ねー、appcypherさん、このプロジェクト超クールじゃん！ね、聞きたいんだけどさ、これの元になってるMicroVMの機能って、OCIランタイムインターフェース持ってる？もしそうなら、DockerとかPodmanで使われてるruncとかcrunの代わりに使えるのかな？" userName="codethief" createdAt="2025/05/30 22:39:17" color="#ff5733">}}




{{<matomeQuote body="Docker for VMsとかNative Containers（ostree）はどうかって話とか、別のスレッドからの引用で、WASM/WASIをMicroVMで動かすことについて、最小のMicroVMは何か、Firecrackerやmicrosandboxのメリットは何かって疑問が出てたよ。" userName="westurner" createdAt="2025/05/30 15:57:05" color="#38d3d3">}}




{{<matomeQuote body="ううん、まだだよ。あったらいいね" userName="Nypro" createdAt="2025/05/30 23:14:34" color="">}}




{{<matomeQuote body="これ使ってノートブック作れるかなって思うんだけどどう？Jupyter clientの管理ってマジ大変なんだよね" userName="nikolamus" createdAt="2025/05/31 14:26:47" color="">}}




{{<matomeQuote body="コメント9764の質問への回答ね。最小のWASM/WASI向けMicroVMはwasmtime入りのイメージとかで作れるんじゃないかな。FirecrackerやmicrosandboxでWASM動かすメリットは、より強い隔離とか、レガシーなものを並行して動かせることとかだと思うよ。" userName="appcypher" createdAt="2025/05/30 16:24:26" color="#785bff">}}




{{<matomeQuote body="アイデアはいいなって思うよ。でもさ、”bullet proof”（完璧）なセキュリティって言ってるけど、VMから脱出するエクスプロイトとかあるじゃん。そういうのって検討したの？" userName="spicybright" createdAt="2025/05/31 05:11:17" color="#ff5733">}}




{{<matomeQuote body="Ubuntuのラップトップで、それぞれネットワーク設定が別で、GUIパススルーもできて、軽量で、セキュリティも考慮しつつ、COWでディスク共有もできるような、ほぼネイティブ速度の隔離環境が欲しいんだけど。gnome-boxesは重いし、今Podmanで試してるけどネットワークが大変。この用途でmicrosandboxはPodmanより何かいいことある？" userName="nqzero" createdAt="2025/05/30 17:48:27" color="#ff5733">}}




{{<matomeQuote body="macOSでのサポート状況はどうなの？" userName="simonw" createdAt="2025/05/30 15:48:12" color="">}}




{{<matomeQuote body="いいね！理解が合ってるなら、これでバックエンドをオンデマンドで立ち上げられるってこと？サポートする言語リスト、野心的ですごいね！<br>（追記）新しい言語サポートを追加するための、しっかりした貢献者ガイドがあると助かるな。今あるのはこれだけど。" userName="esafak" createdAt="2025/05/30 14:56:23" color="#38d3d3">}}




{{<matomeQuote body="いろんなぶっ飛んだネットワーク設定に関する質問が大量に来る準備はできてる？" userName="Hilift" createdAt="2025/05/30 23:29:31" color="">}}




{{<matomeQuote body="Dockerでできること全部Microsandboxでもできるの？それともコンテナの方が合ってる場合もある？<br>ローンチおめでとう！" userName="wolfhumble" createdAt="2025/05/30 17:38:14" color="">}}




{{<matomeQuote body="すごい技術だね、でもGitHubのリンクみたいに、Windowsが実際に対応してからそういう主張した方がいいんじゃないかな…" userName="int_19h" createdAt="2025/05/31 21:15:47" color="">}}




{{<matomeQuote body="すごいプロジェクトじゃん。話それるけど、READMEの「Use Cases」セクションの画像って実際のアプリから？クリーンなUIデザイン好きだな。" userName="nulld3v" createdAt="2025/05/31 04:54:05" color="">}}




{{<matomeQuote body="似てるね。うちは内部でlibkrunを使ってるよ。FirecrackerチームはmacOS実装には興味なさそうなんだ。" userName="appcypher" createdAt="2025/05/31 10:08:47" color="#ff5c5c">}}




{{<matomeQuote body="Kata Containersとどう違うか説明してくれる？[0] あれもOCI対応でmicroVM動かせるし、Firecrackerとか別のハイパーバイザー選べるんだよね。<br>[0] https://katacontainers.io/" userName="meander_water" createdAt="2025/05/31 06:23:27" color="#ff5733">}}




{{<matomeQuote body="“async with”は単なるシンタックスシュガーだよ。“__aenter__”とか“__aexit__”を手動で呼ぶことも全然できる。AsyncExitStackを使って、“__aenter__”を手動で呼んでから“enter_async_context”、終わったら“aclose”を呼ぶとかもね。“aclose”メソッドがあるなら、これはアンチパターンじゃないと思うけど。https://docs.python.org/3/library/contextlib.html#contextlib..." userName="gcharbonnier" createdAt="2025/05/30 21:39:01" color="#38d3d3">}}




{{<matomeQuote body="そうだね。`with`コンテキストマネージャーをスキップして、startとstopを自分で呼べるよ。<br>ここにその例があるよ：https://github.com/microsandbox/microsandbox/blob/0c13fc27ab..." userName="appcypher" createdAt="2025/05/30 21:29:51" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
