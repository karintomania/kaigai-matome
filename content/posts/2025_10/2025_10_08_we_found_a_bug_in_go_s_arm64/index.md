+++
date = '2025-10-08T00:00:00'
months = '2025/10'
draft = false
title = 'GoのARM64コンパイラでバグを発見！'
tags = ["Go", "ARM64", "コンパイラ", "バグ", "アセンブリ"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> GoのARM64コンパイラでバグを発見！

引用元：[https://news.ycombinator.com/item?id=45516000](https://news.ycombinator.com/item?id=45516000)




{{<matomeQuote body="ARMアセンブリを読めるってすごい発見だね！デバッグパスも納得。IRでもできそうだけど、そうしない良い理由があるんだ。スタックサイズをpush/popしてメモリアクセスと引き換えに命令を節約する方法もあるかも？GoのGCがどう見てるか分からないけど、みんなの意見聞きたいな。" userName="Neywiny" createdAt="2025/10/08 15:38:56" color="#38d3d3">}}




{{<matomeQuote body="ARMアセンブリが読めると良いよね。でも、$記号を使った変な記述は普通のAArch64アセンブリじゃないよ！記事で「スタックは一度しか動かない」ってルールに触れても良かったかもね。" userName="bloak" createdAt="2025/10/08 15:49:40" color="#ff5733">}}




{{<matomeQuote body="「スタックは一度しか動かない」ってルールは聞いたことないな。C/C++では強制されてるの見たことないし、Google AIに複雑なC関数作らせてgodboltで見ても、push/popが頻繁に行われてるよ。GoみたいなGCには関係するかもね。" userName="Neywiny" createdAt="2025/10/08 16:43:45" color="">}}




{{<matomeQuote body="このバグがRSPへの即値加算の特殊ケースとしてアセンブラで修正されなかったのが少し意外。コンパイラだけのパッチなら、AArch64アセンブリコードに他のバグが潜んでる可能性もあるよね。" userName="pklausler" createdAt="2025/10/08 17:40:23" color="#ff5c5c">}}




{{<matomeQuote body="それって賢明かな？実装された解決策は、RSPに加算する値を一時レジスタに保持してるよね。Goアセンブラの使われ方は詳しくないけど、`add $imm, rsp, rsp`で$immが十分大きい場合に無関係なレジスタが破壊されたら、すごく驚くと思うな。特に破壊されるのが手書きGoアセンブリでよく使われる一時レジスタだったらね。" userName="moefh" createdAt="2025/10/08 22:12:07" color="#ff5733">}}




{{<matomeQuote body="いくつかのアーキテクチャ、AArch64もそうだと思うけど、アセンブラが必要とする特別な状況で上書きされるためのスクラッチレジスタが予約されてるんだよ。" userName="pklausler" createdAt="2025/10/08 23:34:57" color="">}}




{{<matomeQuote body="Javaや.NETのようなランタイムでは、命令セットの途中でコンテキスト変更を避けるためにセーフポイントがあるのが普通だよ。" userName="pjmlp" createdAt="2025/10/08 16:14:17" color="">}}




{{<matomeQuote body="最適化ありでコンパイルした？GCCだと-O0でスタックに色々やるけど、最適化すれば一つの関数でpush/popは一回にまとめるのが普通だよ。allocaとか動的なスタック割り当てだと変わるけどね。" userName="rcxdude" createdAt="2025/10/08 17:20:08" color="#ff33a1">}}




{{<matomeQuote body=".NETでもコード生成バグはあるよ。この記事で一番気になったのは、他の調査ツールじゃなくていきなりコアダンプを使ったこと。メモリ破損の問題を調査するとき、うちではデフォルトでダンプを使うんだ。" userName="andygocke" createdAt="2025/10/08 16:44:19" color="">}}




{{<matomeQuote body="C/C++は例外処理のためにMicrosoft ABIとかItanium ABIでスタックポインタの状態を詳細に記述するツールを使ってるんだ。特にItanium ABIのDWARF CFIはアセンブリがうるさいくらい。Goはこういう複雑さを避けたのは理解できるけど、その結果が今回のバグにつながったんじゃないか、って話だよ。詳しくは＜a href=”https://learn.microsoft.com/en-us/cpp/build/exception-handli...”＞https://learn.microsoft.com/en-us/cpp/build/exception-handli...＜/a＞を見てね。" userName="mananaysiempre" createdAt="2025/10/09 04:39:59" color="#785bff">}}




{{<matomeQuote body="ARM64では命令間のレジスタ使用に特定のルールはないね。呼び出し規約でcaller-savedとcallee-savedレジスタが決まってて、x18みたいなプラットフォームレジスタはOSが勝手に使うこともあるから注意が必要。でも、命令レベルではそういうルールはないし、マクロが一時レジスタを使うときは、普通はユーザーがどれを使うか指定するもんだよ。" userName="anyfoo" createdAt="2025/10/09 00:19:04" color="#785bff">}}




{{<matomeQuote body="「ドル」記号があるのは普通のAArch64アセンブリじゃないって？それはAT&TとIntelの構文の違いだよ。アセンブリに詳しくないなら、＜a href=”https://en.wikipedia.org/wiki/X86_assembly_language#Syntax”＞https://en.wikipedia.org/wiki/X86_assembly_language#Syntax＜/a＞で調べるといいよ。" userName="freep1zza" createdAt="2025/10/09 09:01:38" color="">}}




{{<matomeQuote body="スタックの各ページを触るコードを生成するのは、ユーザーが巨大なスタックを確保したときに、それが攻撃者に悪用されて任意のメモリ位置を指すようにならないためだよ。各ページを明示的にアクセスさせるとクラッシュになるからね。昔、可変長配列でスレッドスタックを切り替えるユーザー空間スレッドライブラリがあったのを思い出すな。" userName="ori_b" createdAt="2025/10/08 23:42:46" color="#38d3d3">}}




{{<matomeQuote body="MicrosoftのARM64アンワインディングABIはもっと複雑そうに見えるね。これを見てみて。＜a href=”https://learn.microsoft.com/en-us/cpp/build/arm64-exception-...”＞https://learn.microsoft.com/en-us/cpp/build/arm64-exception-...＜/a＞" userName="dwattttt" createdAt="2025/10/09 07:37:23" color="">}}




{{<matomeQuote body="2006年にIBMのJVMとWebsphereで似た経験はあるよ。でもGoはAssemblyを直接使えるから、JVMやCLRみたいにサフィポイントをどこでも期待できないんじゃないかな。だって、手書きのAssemblyコードに呼び出しが飛ぶ可能性があるんだからね。" userName="pjmlp" createdAt="2025/10/08 17:56:15" color="#ff33a1">}}




{{<matomeQuote body="DWARFのセクション6.4はかなり複雑だよね。psABIやLSBで少し修正されてるけど、全体の複雑さから見れば大したことないよ。興味があるなら、＜a href=”https://dwarfstd.org/doc/DWARF5.pdf#page=171”＞https://dwarfstd.org/doc/DWARF5.pdf#page=171＜/a＞とか＜a href=”https://gitlab.com/x86-psABIs/x86-64-ABI/-/jobs/artifacts/ma...”＞https://gitlab.com/x86-psABIs/x86-64-ABI/-/jobs/artifacts/ma...＜/a＞や＜a href=”https://refspecs.linuxfoundation.org/LSB_4.0.0/LSB-Core-gene...”＞https://refspecs.linuxfoundation.org/LSB_4.0.0/LSB-Core-gene...＜/a＞を見てみて。" userName="mananaysiempre" createdAt="2025/10/09 15:08:32" color="#785bff">}}




{{<matomeQuote body="それはx86の話だね。" userName="dpassens" createdAt="2025/10/09 10:09:25" color="">}}




{{<matomeQuote body="通常は「LDR Rd, =expr」っていう疑似命令を使うんだ。直接作れない即値は、PC相対メモリにコピーされて、そこからレジスタにロードされるよ。だから、「add constant to SP」は2命令（8バイト）と4バイトのデータ領域で、合計12バイトになっちゃうんだ。詳しくはこちらを見て。＜a href=”https://developer.arm.com/documentation/dui0801/l/A64-Data-T...”＞https://developer.arm.com/documentation/dui0801/l/A64-Data-T...＜/a＞" userName="Veserv" createdAt="2025/10/08 17:29:43" color="#785bff">}}




{{<matomeQuote body="Goユーザーは関数呼び出しとしてしかAssemblyを挿入できないよ。安全性のためかもしれないね。でも、`runtime/internal/atomic`みたいにオーバーヘッドなしで注入する方法もあるけど、それにはruntimeとcompiler toolchainの変更が必要だよ。" userName="yvdriess" createdAt="2025/10/09 11:34:20" color="#785bff">}}




{{<matomeQuote body="アーキテクチャによってはアセンブラやカーネルが使う予約レジスタがあって、割り込みハンドラで変更されても元に戻らないことがあるんだ。" userName="immibis" createdAt="2025/10/09 17:08:58" color="">}}




{{<matomeQuote body="それって可能なの？即値を作るにはレジスタが必要だよね。アセンブラが勝手に使うのは良くないから、ヘルパーレジスタを受け取るADDマクロとか？でも、それだとAArch64の他の問題は直らないし。AMD64は知らないけど、スレッドローカルとかスタックフレーム確保も現実的じゃないと思うな。" userName="Someone" createdAt="2025/10/09 08:11:07" color="#38d3d3">}}




{{<matomeQuote body="アセンブラの方言ってめちゃくちゃ多いんだよな。NES（やSNES、GBとか）で使う2A06アセンブラは変な癖があって、$が16進数、%が2進数、#がアドレス、レジスタがオペコードに組み込まれてたりするんだ。PlaystationはMIPSの方言だったけど、PS2はIntelスタイルだったってさ。" userName="indrora" createdAt="2025/10/09 16:29:14" color="">}}




{{<matomeQuote body="エンジニアたちはできるかどうかに夢中で、本当にやるべきかどうかを考えなかったんだね。" userName="i80and" createdAt="2025/10/09 16:10:17" color="">}}




{{<matomeQuote body="うん、ARM64のx18を例に挙げたんだよね。アセンブラ用の予約レジスタは知らなかったけど、MIPSには$1、別名$atっていう”assembler temporary”があったんだな。" userName="anyfoo" createdAt="2025/10/09 23:44:46" color="">}}




{{<matomeQuote body="これ、多分Plan 9 Assemblyの方言が原因だろうね。AT&TとIntelの間に違いがあるだけでも大変なのにさ。でも、Goがコンパイル言語のツールにアセンブラを含めるっていう1990年代の伝統を復活させたのは、ホントに素晴らしいことだと思うよ。<br>https://go.dev/doc/asm" userName="pjmlp" createdAt="2025/10/08 16:13:04" color="#38d3d3">}}




{{<matomeQuote body="x86以外のアーキテクチャに目を向けるべきだね。昔のMIPSではよくあったことだよ。<br>https://jdebp.uk/FGA/function-perilogues.html#StandardMIPS<br>僕は16年以上前に、x86でスタックポインタに対して2つの読み書き変更操作を行うことについて書いたものがあるよ。<br>https://jdebp.uk/FGA/function-perilogues.html#Standardx86" userName="JdeBP" createdAt="2025/10/08 18:21:23" color="#45d325">}}




{{<matomeQuote body="そういうアーキテクチャもあるけど、全部古いRISCチップだよ。" userName="adastra22" createdAt="2025/10/09 08:11:30" color="">}}




{{<matomeQuote body="コンパイラは大きな定数をMOV/MOVKシーケンス（32ビット命令あたり16ビットのデータをエンコード）で処理するのが一般的だったな。メモリからロードするのは32ビットARMでよく見たよ。" userName="comex" createdAt="2025/10/08 23:34:09" color="#785bff">}}




{{<matomeQuote body="待ちきれない君のために、修正はこちらだよ：<br>https://github.com/golang/go/commit/f7cc61e7d7f77521e073137c..." userName="pengaru" createdAt="2025/10/08 16:30:23" color="#ff5733">}}




{{<matomeQuote body="リンクされたIssueを確認中にこれに気づいたんだ：https://github.com/golang/go/issues/73259#issuecomment-31004... Goチームは自然言語ボットを使ってるの？ それとも単にコメントに“backport”とかがあるか見てるだけかな？" userName="cmckn" createdAt="2025/10/08 17:10:57" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="後者だよ：https://github.com/golang/build/blob/master/cmd/gopherbot/go...(https://go.dev/wiki/gopherbotで見つけた)" userName="kbolino" createdAt="2025/10/08 17:15:29" color="#45d325">}}




{{<matomeQuote body="“please”と“backport”の両方が必要なんて、ちょっと面白いね、笑。" userName="etra0" createdAt="2025/10/08 20:26:27" color="">}}




{{<matomeQuote body="もっと言えば、前者（gabyhelp）もあるよ：https://github.com/golang/oscar/tree/master/internal/gaby" userName="9rx" createdAt="2025/10/08 17:55:44" color="">}}




{{<matomeQuote body="これは人気のあるオープンソースプロジェクトだし、君自身が修正内容が明記されたコメントに返信してるんだ。何が起きてるかは誰でも確認できるし、この問題も修正も透明性が高い。たとえ君がコードを理解できなくても多くの人が理解してる。だから君の主張は不必要なパラノイアに見えるし、それが低評価の原因じゃないかな。" userName="jimsmart" createdAt="2025/10/09 19:27:08" color="#ff5c5c">}}




{{<matomeQuote body="そのアカウントは22時間前に作られたばかりだから、関わるのは無意味だよ。" userName="pengaru" createdAt="2025/10/10 00:09:02" color="">}}




{{<matomeQuote body="コンパイラがバグの原因だと疑うのは本当に難しいんだよね。エンジニアはツールを信じるように教えられてるから、自分のコードばかり疑っちゃう。この考え方のせいで、コンパイラのレアなバグは余計見つけにくいんだよな。" userName="Vipsy" createdAt="2025/10/09 06:17:51" color="#785bff">}}




{{<matomeQuote body="昔はコンパイラをよく疑ったもんだ。Turbo Pascal 6でバグ見つけたんだよ。関数名と同じ変数名を使うと、結果がめちゃくちゃになるやつ。Pascalだと関数名に結果を代入するから、このバグは困ったんだよね。例はこれ→https://godbolt.org/z/s6srhTW66" userName="pjmlp" createdAt="2025/10/09 06:59:38" color="#45d325">}}




{{<matomeQuote body="TP6だとsucc(seg(x))とpred(seg(x))がseg(x)と同じになるバグがあったな。昔のTurbo Pascalは+ 1よりsucc(...)の方がいいコード作ってたんだ。メモリを16バイト多めに確保してアライメントする工夫とかもしてた。このバグを見つけるのに1～2日かかったっけ。" userName="peterfirefly" createdAt="2025/10/13 21:39:16" color="#38d3d3">}}




{{<matomeQuote body="昔はもっとコンパイラを疑うのが普通だったね。80年代後半から90年代初頭のミニコンで、Pascalコンパイラのバグを見つけたことがあるんだ。デバッガと逆アセンブリで突き止めて、FAXで開発者に報告したら、フロッピーで修正版が送られてきたよ。何度か経験したな。" userName="Tor3" createdAt="2025/10/09 07:40:33" color="#ff5733">}}




{{<matomeQuote body="自分のオープンソースプロジェクトでもあったよ。変なクラッシュで、報告者が頑張って突き止めてくれたんだ。結局、Goコンパイラのバグだった。これね→https://github.com/golang/go/issues/20427" userName="SuperQue" createdAt="2025/10/09 06:50:28" color="#ff5c5c">}}




{{<matomeQuote body="HFTみたいな分野だと、コンパイル過程を限界まで最適化するから、バグがよく出てくるんだ。HFT企業はGCCやClangの超変なバグを見つけては自慢してるよ。ナノ秒単位が重要だから、古いコンパイラのSnapshot版を使うことさえあるんだ。" userName="kmarc" createdAt="2025/10/09 06:37:09" color="#ff5733">}}




{{<matomeQuote body="HFTだと、コンパイラのバグ修正を秘密にしちゃうかもしれないね。そうすれば、他のHFTは恩恵を受けられないし。" userName="hshdhdhehd" createdAt="2025/10/09 08:14:37" color="">}}




{{<matomeQuote body="両方見たな。秘密にする会社もあれば、報告する会社も。だって、競合が全く同じバグに当たる可能性は低いし、パッチを維持するコストもバカにならない。XTXのTernFSみたいに、競合への利益を恐れずに公開する例もあるしさ。" userName="kmarc" createdAt="2025/10/09 08:42:15" color="#785bff">}}




{{<matomeQuote body="すごくいい技術ブログだね。説明がすごく分かりやすくて、俺でも賢くなった気分になるよ。マーケティングとしても成功してるね、このチームは超優秀だなって思っちゃうもん。これってAmpere Altra？うちはEpyc使ったけどね。" userName="renewiltord" createdAt="2025/10/08 16:53:53" color="">}}




{{<matomeQuote body="この問題はコンパイラのバグというより、デバッグ情報生成のバグに見えるな。スタックが大きすぎると、オフセットを一時レジスタに入れて、それをrspに加算する単一の不可分なオペコードになるんだ。これで競合は避けられるけど、ランタイムを悲観的にするのはどうなんだろうね。DWARFのバイトコードがあれば、真のスタックポインタを復元できるはずだけど。" userName="quotemstr" createdAt="2025/10/08 22:03:34" color="#38d3d3">}}




{{<matomeQuote body="この問題ってコンパイラバグじゃなくて、デバッグ情報生成のバグみたいに見えるんだけど。でも、それって結局同じことだよね？本番環境のワークフローで起きたバグなんだから、コンパイラバグって呼んでも全然おかしくないんじゃないかな。" userName="sauercrowd" createdAt="2025/10/08 22:09:36" color="#ff5733">}}




{{<matomeQuote body="ありがとう。アンワインダー情報もデバッグ情報だと俺は思ってるよ。デバッグ以外でもよく使われるけどね。<br>実際のバグについてだけど、スタックをフレームポインタで辿ってアンワインドしてるんじゃないなら、命令ポインタをキーにしたテーブルを見て、前のフレームのレジスタ内容を計算する必要があるんだ。GoがSPとアンワインドテーブルのアプローチを使ってるなら、2つのADDに対してテーブルのエントリが分かれてなかったのが本当のバグだろうね。<br>フレームポインタをGoランタイムが使ってるなら、フレームポインタの更新が正しくなかったってことで、それはコード生成のバグだ。個人的にはフレームポインタは全然好きじゃないんだよね。レジスタをデバッグのために消費するなんて、純粋主義の俺は嫌だなぁ。" userName="quotemstr" createdAt="2025/10/08 22:22:36" color="#ff5733">}}




{{<matomeQuote body="CloudflareはどんなARM64マシンを使ってて、何に使ってるの？去年はAMD EPYCのGen 12サーバーを発表してたのに（https://blog.cloudflare.com/gen-12-servers/）、ARM64の話は出てなかった記憶があるんだけど。<br>でも今、ARM64をフル生産で動かしてるみたいだね。" userName="riobard" createdAt="2025/10/08 16:39:32" color="">}}




{{<matomeQuote body="俺はCloudflareの人間じゃないけど、彼らのブログはよく読んでるよ。記事でセキュアブートについて触れてることからわかるように、彼らはAMDと並行してAmpereを何年も前からデプロイしてるんだ。<br>目的としては効率化のためのEdge関連みたいだけど、他の用途にも使ってるかもしれないね。詳しくはこちらを読んでみて：<br>https://blog.cloudflare.com/designing-edge-servers-with-arm-...<br>https://blog.cloudflare.com/arms-race-ampere-altra-takes-on-...<br>https://blog.cloudflare.com/arm-takes-wing/" userName="zamadatix" createdAt="2025/10/08 23:19:13" color="#ff5733">}}




{{<matomeQuote body="うん、でもあれらはかなり古い記事だよね。古いAmpereサーバーって、今のEPYCと比べるともう効率的じゃないんじゃないかなって印象があったんだ。<br>だから、彼らの現在の世代のARM64サーバーがどんな感じなのか気になるんだよね。" userName="riobard" createdAt="2025/10/09 02:32:03" color="">}}




{{<matomeQuote body="Cloudflareは一部の非Edgeコンピュートをパブリッククラウドでホストしてるって聞いた覚えがあるな。コントロールプレーンとかのやつ。それかもしれないね。" userName="EE84M3i" createdAt="2025/10/08 23:27:31" color="">}}




{{<matomeQuote body="Goに、全命令をシングルステップ実行して、opcodeごとにGC割り込みをトリガーするモードがあったらどうかな？そういうバグを見つけるのがもっと簡単になると思うんだけど。" userName="MarkSweep" createdAt="2025/10/08 23:26:29" color="#ff5733">}}




{{<matomeQuote body="素晴らしい発見と解説だね。余談だけど、これはモデルチェッカーじゃ対応できないタイプの問題だと思うんだ。完璧で複雑なTLA+/Lean/FizzBeeモデルを書いて、たとえそのモデルからコードを生成できたとしても、プラットフォーム、コンパイラ、言語の問題で、こういうバグに遭遇することはあるからね。でも、ありがたいことに、そういうバグは稀だけどさ。" userName="wy1981" createdAt="2025/10/09 13:07:15" color="#38d3d3">}}




{{<matomeQuote body="そうだね。モデルチェッキングは設計が正しいかを確認するためのもので、実装の問題じゃないんだ。<br>実装についてはCompCertみたいな認定コンパイラ（https://compcert.org/）も使えるけど、それでも自分のコードが正しいことを示す必要があるし、CompCert自体にもまだ認定されてない部分があるんだよね。" userName="jraph" createdAt="2025/10/09 13:14:38" color="#45d325">}}




{{<matomeQuote body="Cloudflareって、てっきり100% Rustとx86 (EPYC)だと思ってたよ。<br>GoとARMも使ってるって聞いて、へぇ～ってなったね。" userName="alberth" createdAt="2025/10/08 23:40:32" color="">}}




{{<matomeQuote body="あの規模の会社が単一言語ってことはないでしょ。ARMを使うのは水平スケーリングのワークロードで理にかなってるから、別に驚くことじゃないよ。" userName="surajrmal" createdAt="2025/10/09 03:05:02" color="">}}




{{<matomeQuote body="Cloudflareは昔からx86にデプロイしてても全部Armビルドを保持してたんだって。いざって時に切り替えやすいようにね。RustもGoもたくさん使ってるよ。" userName="steveklabnik" createdAt="2025/10/09 01:27:00" color="#ff33a1">}}




{{<matomeQuote body="スタックポインタは常にアトミックに調整しろよ、みんな。" userName="dreamcompiler" createdAt="2025/10/08 16:12:43" color="">}}




{{<matomeQuote body="プリエンプション書いた人はX86で作業してて、可変長命令のおかげで定数を保持できてアトミックに処理されると信じてたんだろうね。で、ARMへの移植時に高レベルから自動的に”分割”されて簡単にした結果、このバグが生まれたって感じかな。誰のせいってわけでもないけど、結果は悪かったね。" userName="whizzter" createdAt="2025/10/08 16:42:58" color="#38d3d3">}}




{{<matomeQuote body="”誰のせいってわけでもないけど、結果は悪かったね”<br>いや、全面的に、アセンブラじゃないアセンブラを書いたのが悪いよ。99%アセンブラだけど1%はIRみたいなやつね。自滅行為だよ。" userName="Sesse__" createdAt="2025/10/08 18:56:45" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="昔のアセンブラはめっちゃいろいろできたんだぜ。" userName="wbl" createdAt="2025/10/08 20:07:08" color="">}}




{{<matomeQuote body="そうそう。S/360のアセンブリとか、たまに高レベル言語みたいに見えるよね。MVSだとOSや標準ライブラリの機能は凝ったマクロとして実装されてて独自の呼び出し構文があったんだ。今はレジスタでパラメータ渡す関数を呼ぶのが普通だけどね。90年代にはアセンブリでOOPプログラミングをサポートするマクロアセンブラもあったんだよ。Borland Turbo Assembler 5.0とか思い出すな、結構楽しかった。" userName="anyfoo" createdAt="2025/10/09 00:24:25" color="#785bff">}}




{{<matomeQuote body="そういうのはまだあるよ、PC文化系のNASM, YASM, MASM（今もMSVCの一部）とか。そういえばEmbarcaderoはまだTurbo Assembler持ってるね。<br>https://docwiki.embarcadero.com/RADStudio/Athens/en/Turbo_As...<br>今や過去のものだけど、ゲーム機用アセンブラもマクロ機能がかなり強力だったな。UNIXのアセンブリ文化は好きじゃなかったな。Cが登場したら、Cコンパイラから生成されたアセンブリをアセンブルするだけの最低限の機能になっちゃったからね。マクロアセンブラの気の利いた機能は他のプラットフォームから来たんだ。NASMをプラットフォームのアセンブラの代わりに使ったりとかね。GNU ASもclangも基本的なこと以外のアセンブラとしての能力はそんなに良くないよ。" userName="pjmlp" createdAt="2025/10/09 07:07:24" color="#ff33a1">}}




{{<matomeQuote body="”アセンブラ”のエラーじゃなくて、内部の高レベルIRから変換する別の部分かもしれないよ。それにほとんどの場合、レジスタ操作命令（可能な限りコンパクトに生成したいやつ）にとっては分割された操作は問題にならないんだ、普通のアトミックはメモリアドレスとは別だからね。それでも、もしプリエンプションより前にコード生成が書かれてたなら、プリエンプションを実装した側が関数エピローグを考慮しなかったのはかなりずさんだったね。まぁ、スタック／フレームポインタを4KB以上静的に調整するのはちょっとしたエッジケースだけど。" userName="whizzter" createdAt="2025/10/09 08:13:46" color="#785bff">}}




{{<matomeQuote body="こんな状況で緩和されたアトミック加算を使ったことがある、数十人のうるさい連中は手を挙げてくれ。SPを可能な限り偏執的に更新するのが、そういうものの存在する理由だよ。（Go言語では緩和されたアトミックを表現できないけど、技術的にはコンパイラでランタイムコードのためにサポートを追加できるよ）" userName="yvdriess" createdAt="2025/10/09 11:55:13" color="#785bff">}}




{{<matomeQuote body="俺も全く同じこと考えてたわ。" userName="drob518" createdAt="2025/10/08 18:53:58" color="">}}




{{<matomeQuote body="わかんないんだけど、マシン スレッドって2つの命令の途中でどうやって止められてたの？ これベアメタルだよね？" userName="brcmthrowaway" createdAt="2025/10/08 18:41:48" color="#785bff">}}




{{<matomeQuote body="GoはGC通知に割り込みを使ってるよ。" userName="adgjlsfhk1" createdAt="2025/10/08 18:45:43" color="#ff5c5c">}}




{{<matomeQuote body="シグナルだよ。" userName="purplesyringa" createdAt="2025/10/08 20:35:14" color="#45d325">}}




{{<matomeQuote body="だから昔から、できるならシグナルとスレッドを一緒に使うなって言われてたんだよな。" userName="ahoka" createdAt="2025/10/09 07:47:26" color="#ff33a1">}}




{{<matomeQuote body="いつものCloudflareブログの記事、最高！<br>魔法みたいなインフラやMLじゃないエンジニアリングだよね。いつか応募するぞ！<br>コンパイラのバグって実は結構よくあるんだよ（俺もgccで年に数個見つけてた）。でも筆者が言うように、大規模な運用じゃないと見つからないものもあって、ほとんどの人はそこまで深く調べないんだ。" userName="Agingcoder" createdAt="2025/10/08 15:51:55" color="#ff5c5c">}}




{{<matomeQuote body="今日応募するのを止めてるものって何？" userName="jgrahamc" createdAt="2025/10/08 16:15:16" color="">}}




{{<matomeQuote body="いい質問だね。主に場所（フランスにはない）と、どの求人に応募すべきかわからないんだ。バックグラウンドはネットワーキングじゃなく数学、HPCとかだけど、Cloudflareブログに出てくるようなIntel NICs関連のeBPFやカーネル ネットワーク層の問題によく遭遇するんだ。Cloudflareで働いてる人と話せれば、どんな仕事か理解できそうだけど、この未知の世界にちょっと気後れしてるのかもね :-）" userName="Agingcoder" createdAt="2025/10/08 20:20:03" color="#ff5c5c">}}




{{<matomeQuote body="俺は2020年にCloudflareでインターンしたけど、すごく楽しかったからめっちゃオススメする！<br>場所のことは言えないけど、君が興味あることや経験は彼らがやってることとかなり重なりそうだよ。かなり深い技術的なことをやってるんだ。<br>もし誰かと話したいなら、GitHub、Twitter、LinkedInで働いてる人を探して、メッセージを送って20分くらい話せないか聞いてみるのがいいよ！俺も何度もやってるけど、いつもすごく良い結果だったよ。" userName="sauercrowd" createdAt="2025/10/08 22:15:29" color="#785bff">}}




{{<matomeQuote body="俺にjgc@Cloudflareにメールしてくれれば、適切な人に君の詳細を転送してあげるよ。" userName="jgrahamc" createdAt="2025/10/09 13:20:40" color="#45d325">}}




{{<matomeQuote body="前のコメントの人みたいに、Cloudflareのブログ記事を読むといつも「こういう仕事したいな」って思って求人ページ見ちゃうんだよね。残念ながら私の国には求人ないんだけど、これからもチェックし続けるよ！" userName="nevon" createdAt="2025/10/08 16:24:38" color="">}}




{{<matomeQuote body="これらの企業にとって、勤務地はあんまり関係ないと思うな。とにかく応募してみるべきだよ。俺は紛争地域に住んでる人と働いたこともあるしね。スキルがあれば金は払う。適当なReactエンジニアじゃなくて、コンパイラのバグを見つけて何千万ドルも会社を救えるような人なら、絶対雇うだろうね！" userName="moomoo11" createdAt="2025/10/08 16:47:29" color="#785bff">}}




{{<matomeQuote body="残念だけど、95%のケースでは大企業だと勤務地はかなり重要だよ。俺ももっと面白い仕事がしたい立場だけど、興味ある会社がオフィスを構えてるところと、俺が住みたい場所がうまく合わないんだよね。人生を大きく変えるほどじゃない限りはね。（”断るのがもったいない”ってレベルなら話は別だけど。）" userName="Degorath" createdAt="2025/10/08 18:09:34" color="#ff5733">}}




{{<matomeQuote body="俺はハッキリ言って「断るのがもったいない」レベルの人について話してたんだよ。会社の最終利益を最適化できる人は誰でも雇われる。普通のReactエンジニアとかありふれたJava開発者が田舎からリモートで雇われるなんてことはないけど、50倍くらいの価値を提供できるなら、もちろん大歓迎だろ。コンパイラの最適化について議論してるんだから、俺のメッセージは明らかだと思ってたんだけどな。" userName="moomoo11" createdAt="2025/10/08 20:19:45" color="#45d325">}}




{{<matomeQuote body="（うん、君のメッセージはかなり明確だったと思うよ。でも、このスレッド全体で見ると、投稿者が自分をそのスキルレベルに位置付けてるかはハッキリしなかったね。）コンパイラ最適化や熟練したソフトウェア開発者の話をしてる時でも、スキルの幅ってかなり広いと思うんだ。俺も結構できる方だとは思うけど、Lars Bak（Googleが彼の為にデンマークにオフィスを作ったらしいね）ほどじゃないしね。" userName="Degorath" createdAt="2025/10/08 20:48:00" color="#ff5733">}}




{{<matomeQuote body="どうやって自分を「ありふれた」レベルより上って評価するの？俺はフルリモート開発者として働いてるけど、自分が特別だとは思えないんだよね。客観的に自分が優れてるって、どうやって判断するのかな？" userName="ptsneves" createdAt="2025/10/08 20:52:07" color="">}}




{{<matomeQuote body="どこで自分のことについて言った？もしそういう意味なら、それはあなたの投影か深い不安からくるものだね。特別な人って何かって聞くなら、それは役割とスキルセットによるよ。前のコメントでも言ったけど、コンパイラのバグを見つけて直せるような超一流の人は稀な存在なんだ。特に、そのスキルで会社が莫大なお金を節約できて、それを他の場所に使えるならね。世界にはAIの分野を進められる人はほんの一握りしかいないだろうし、彼らの多くは中国人移民だけど、OpenAIやMetaなんかが莫大なお金を払ってるでしょ。リモートの仕事に関してだけど、以前、俺たちはPostgresとOracle RDBMSの内情を熟知してる数少ない人の一人だったから、契約者として1時間500ドルくらいで雇ったことがあるよ。すごく重要な移行をやってたからね。" userName="moomoo11" createdAt="2025/10/08 21:44:33" color="#45d325">}}




{{<matomeQuote body="世界中で新しいRTO（Return To Office）義務が出てるみたいだから、最近は勤務地が要因じゃなかったかもしれないけど、これからはそうなるかもね。" userName="stronglikedan" createdAt="2025/10/08 18:28:29" color="">}}




{{<matomeQuote body="他の多くの会社と比べて報酬が低いんだ。（応募はしたけど、結局は受け入れなかったよ。）" userName="kccqzy" createdAt="2025/10/08 19:49:49" color="">}}




{{<matomeQuote body="こんなバグを見ると、「どんなテスト方法だったらこれを見つけられたんだろう？」って疑問に思うね。それは一般的な方法であるべきで、事前にバグを知ってるようなものじゃなくちゃダメだよね。" userName="pfdietz" createdAt="2025/10/08 22:45:55" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
