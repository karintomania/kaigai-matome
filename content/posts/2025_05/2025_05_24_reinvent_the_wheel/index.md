+++
date = '2025-05-24T00:00:00'
months = '2025/05'
draft = false
title = '常識を捨て車輪を再発明したらとんでもないものができた！'
tags = ["リバースエンジニアリング", "デコンパイル", "リンカー", "ソフトウェア開発", "プログラミング"]
featureimage = 'thumbnails/orange2.jpg'
+++

> 常識を捨て車輪を再発明したらとんでもないものができた！

引用元：[https://news.ycombinator.com/item?id=44083467](https://news.ycombinator.com/item?id=44083467)




{{<matomeQuote body="俺は特定のニッチで自分なりの車輪を再発明したぜ。最初からそうしようと思ったわけじゃないけど、既存の技術は根本的に間違ってると思ったんだ。それで、普通は不可能とされてる問題を分割統治で解決しようとした。ありえないことに、成功したんだ（ほとんど無知と頑固さのおかげだけどね）。そして、俺の車輪は、その用途において信じられないほど優れてることが分かった。もしかしたら世界クラスかも。さらに実験したら、純粋な異端としか言いようのない芸当が、驚くほど簡単にできるようになったんだ。時間が経って、そのニッチの人たちが俺の車輪を使い始めた。最初は使い方がエイリアンすぎてみんな変な持ち方してるんだけど、コツを掴んだらもう手放さないね。<br>世界中から、めっちゃ変な使い方やワークフローのバグ報告や要望が来るんだ。普通なら絶対会えないような頭の良い人たちと、深くて専門的な技術の話ができる。俺の想像を超えた、俺の車輪を使った他人の成果も見た。夜も眠れなくなるような発見もある。車輪が何をして、俺がそれで何ができるか、まだ知らない同僚や仲間たちの頭を溶かすのが超楽しい。<br>車輪の再発明を恐れるなよ。どんなクレイジーでワイルドな道に転がっていくか、分からないんだからね。" userName="boricj" createdAt="2025/05/24 21:18:49" color="#45d325">}}




{{<matomeQuote body="食いつくぜ！その車輪って何なの？" userName="nssnsjsjsjs" createdAt="2025/05/24 21:29:32" color="">}}




{{<matomeQuote body="この車輪だよ：https://github.com/boricj/ghidra-delinker-extension<br>これは Ghidra extensionで、どんなプログラムの選択範囲からも relocatable object files をエクスポートできる。言い換えれば、linker がやった仕事の逆をするんだ。<br>もともとはビデオゲームの逆コンパイルプロジェクトの一部として作ったんだけど、コミュニティで広く使われてる matching decompilation のプロセスをダメだって否定したんだ。問題を分割統治する必要があったから、プログラムを分割するっていう面白いアイデアを思いついた。これで Ship of Theseus って呼んでる特別なスタイルの逆コンパイルプロジェクトができる。プログラムの塊を一つずつ再実装して、linker に毎回全部をくっつけてもらう。最終的に元のバイナリコードを全部再実装したソースコードに置き換えるまでやるんだ。<br>これはすっごく深くて複雑なトピックで、ABI の細かい話や toolchains のややこしいことに満ちてる。これに関する文献はほぼないし、CS 101で学ぶこととは真逆だよ。このテクニック自体は強力だけど、同じくらい esoteric だね。でも、どんな reverse-engineer も俺の tooling を使えば活用できると思う。<br>特に、relocations をアルゴリズム的に再合成するのは Pareto principle に従う問題の一つだ。80%は結構簡単にできるけど、最後の20%を完璧にするのが尋常じゃなく難しい。手動で注釈をつけるのは嫌だったから、全てのエッジケースを正しく処理できるようにアナライザーを relentlessly に改善する必要があった。これは俺がこれまで取り組んだ中で断トールで最も難しくて厳密なソフトウェアエンジニアリングの問題だ。ハックやショートカットは通用しない。<br>動くようになったら、科学の名のもとにこれを使ってコンピュータサイエンスに対して数え切れないほどの罪を犯しまくったよ（いくつかの成果は俺のブログに書いてある）。特に cross-delinking は、元とは違うプラットフォームに成果物を delink するってことだけど、これは特に mind-bending だね。いくつか成功したけど、悲しいことに今はこれを論理的な結論に導くツールが足りないんだ：Mad Max だけど、車の部品じゃなくてプログラムの bits でやる感じ。<br>皮肉なことに、ユーザーのほとんどは matching decompilation プロジェクトに使ってるんだ。成果物から object files を delink して、だいたい objdiff を起動して、コンパイルしたら成果物から抜き出した object file と同じになるようなソースファイルを作ろうとする。これは全く予想してなかったよ。だって俺はこれを specifically にこれじゃない目的で作ったのに。でも、なんでも釘に見えちゃう時は、みんな何をハンマーとしてでも振り回すんだろうね。" userName="boricj" createdAt="2025/05/24 22:34:12" color="#45d325">}}




{{<matomeQuote body="コード書いてコンパイルすると「リンク」って段階がある。例えば、バラバラのコードをコンパイルして、それを一つにリンクしてバイナリにする感じだ。<br>よくある課題は、コンパイル済みのプログラム、例えばゲームの逆コンパイルとかリバースエンジニアリングだ。著者は、プログラムをバラバラに「逆リンク」（unlinking かな？）するプロセスをやるのが面白いアプローチだと気付いたんだ。そして、全体じゃなくてそのピースごとにリバースエンジニアリングしたり再実装したりするのに集中するんだ。<br>ゲームの逆コンパイルとなると、その趣味の愛好家たちは、元のゲームと全く同じ命令になるソースコードを再現・取得したいみたいだ。普通、命令一致とバイト一致の再現には違いもあると思う。でも、ピースごとにこれをやって、進捗があるたびにテストできるのは、シンプルでより良いアプローチに見えるね。<br>これは僕みたいな、逆コンパイルにちょっと手を出したことがあるだけの素人の理解だよ。" userName="sureglymop" createdAt="2025/05/24 23:44:14" color="#38d3d3">}}




{{<matomeQuote body="それは pretty much spot on だよ。<br>delinking の重要なインサイトは object files が relocatable だってこと。それを linking するプロセス（メモリに section を配置したり、symbol address を計算したり、relocations を適用したり）がその性質を失わせる。でも、このプロセスを逆転させる（symbol table 作成、relocations の unapply/relocation tables の再合成、新しい section のスライス）ことで、コードとデータを再び relocatable にできるんだ。<br>適切に delink された object files は relocatable だから、linker がそれを処理して全部をシームレスに再びくっつけられる。ピースが移動されたり、元々あった場所に収まらなくなったりしても大丈夫（これは特に強力な binary patching の形になる。元のプログラムの memory map から来る制約が適用されなくなるからね）。あるいは、object files を処理できるものなら何にでも食わせられる。例えば disassembler とか。<br>もちろん、delinked object files を再利用して新しいプログラムを作り始めたら、本当の面白さが始まる。俺は、コンパイルからアセンブリ、linking へという toolchain の linear flow を、”big ball of wibbly-wobbly, bitsy wimey stuff” にぶっ壊すって言ってるよ。特に、プログラムの元のピースとは違うプラットフォームに cross-delinking し始めたらね。" userName="boricj" createdAt="2025/05/25 00:21:14" color="#ff33a1">}}




{{<matomeQuote body="これは、プログラミングを学び始めてからずっと抱えてた疑問に、ついに答えてくれたと思う。今までずっと”shared libraryはstatic libraryに変換できない”って言われてきたんだ。もっと詳しく聞こうとすると、shared libraryはメモリにマッピングするために事前にリンクされてるから relocation table が失われる、とか曖昧なことばかりで。<br>情報が失われるって precisely に何が失われて、それがなぜ再構築を妨げるのか、ってさらに突っ込んでも、”とにかく無理なんだよ！”みたいな感じだった。それが全然納得できなかったんだ。<br>だって、再コンパイル（ソースコードとか IR に逆コンパイルして、違うプラットフォーム向けに再コンパイルする）はアカデミックな研究分野（[1] rev.ng）なのに、shared libraryをstatic libraryに変換する問題の方が簡単のはずだって。だって、アセンブリとかシンボル情報全部そこにあるんだから。正しく整えればいいだけに見えたんだ。" userName="krackers" createdAt="2025/05/25 01:02:57" color="#785bff">}}




{{<matomeQuote body="君、staticとsharedをひっくり返してると思うな。<br>Shared objects は、どこにロードされても同じコードが動くようにコンパイルされてる。普通 base+offset アドレス指定が必要でパフォーマンスは落ちるけど、オブジェクトが入ってる同じ物理ページを、違うプロセスが違うアドレスにマッピングして共有できる、つまり shared だ。<br>Static object は、コードとデータを直接アドレス指定する。レジスタを浪費しないけど、コード内のアドレスをどこにロードされるかに応じて書き換える必要があって、コードは違うプロセス間で共有できない。<br>static libraryをsharedには変換できない。Shared libraryをstaticには変換できるけど、意味がない。" userName="mjanx123" createdAt="2025/05/25 05:39:19" color="">}}




{{<matomeQuote body="「ひっくり返してる」ってのがよく分からないな。<br>俺の理解では shared library は object file より executable に近い。だから、「事前にリンクされててメモリにマッピング可能」って意味では executable と同じなんだ。(ロードされた後 dyld が GOT で fixup する必要はあるけど、text segment には触らない)。<br>君の定義にはほとんど同意だけど、static library が fPIC でコンパイルされてれば、それから shared library を作れるんじゃない？ 試したことないけど、ほとんどの linkers が許可してるみたいだし（[1]）、完全な executable を作るのが shared library 作成と似てることを考えれば、動かない理由が分からない。<br>コードが fPIC でコンパイルされてなかったとしても、理論的には可能だと思う。だって object files の目的は relocation をサポートすることだろ。非 PIC の object をリンクして shared object を作るには、runtime で text segment 内にパッチが必要になるだけじゃない？ 今どきの linkers はセキュリティ上の理由でこれはやりたがらないだろうけど。でもそれ以外に fundamental な制限があるようには見えない。単に現代の OSs と linkers が、セキュリティリスクのある obscure use-case をサポートしてないだけ。<br>shared libraryをstatic libraryに変換できない（あるいは shared library を static にリンクできない）って言うとき、普通は relocation table の情報がないことを理由に挙げる。まるで、source code -＞ object file -＞ executable/shared library って階層があって、だから逆方向には行けないのが”明らか”だ、って思ってるみたいに。これは”golden path”とか、本番向けに自分で制限したい範囲ではだいたい正しいんだけど、hacker 的な意味では assemblers と decompilers を使えば明らかに逆方向にも行ける。<br>だから、shared libraryをstatic libraryに変換するのは不可能だって誰かが主張するなら、そんな強い主張にはちゃんとした根拠があるべきだ。そして、一見したところ、その主張は watertight には見えない。なぜなら、もっと強い主張、executable を再コンパイル可能なコードに戻せない、ってのは、LLVM IR に落とす decompilers の存在によって falsified されてるからね。" userName="krackers" createdAt="2025/05/25 06:41:54" color="#45d325">}}




{{<matomeQuote body="ASLRのせいだと思うな（https://en.wikipedia.org/wiki/Address_space_layout_randomization）。<br>俺の解釈では、これは basically a hack だよ。C プログラマが libs を reliability/memory safe にできないから、attacker’s feet の下に logs をいくつか投げる感じだ。MagicErmine とか statifier っていう、その二つを変換できるソフトウェアがあったよ。" userName="michalsustr" createdAt="2025/05/25 07:36:52" color="">}}




{{<matomeQuote body="ASLRがsharedをstaticに変換できないのと関係ないと思うんだ．sharedはPICだからむしろ楽じゃない？<br>Statifierみたいなツールはsharedをstaticにするわけじゃないよ．boricjのツールはshared→static変換に理論的な限界はないって証明してるっぽい．デコンパイラみたいに解析すればrelocation tables再構築できるから，shared→staticもできるはず．" userName="krackers" createdAt="2025/05/25 07:58:04" color="#45d325">}}




{{<matomeQuote body="delinkingは完全に俺の発明じゃないけど，ゼロから独自に考えたんだ．<br>再発明って言ったのはゲームのデコンパイルのこと．Super Mario 64とかの時代はmatching decompilationが主流で，俺はそれとは違うやり方でやったから，ある意味再発明．結果，違うplatformsのプログラムを混ぜたキメラ executablesとか作っちゃったけどね．" userName="boricj" createdAt="2025/05/24 23:53:57" color="#38d3d3">}}




{{<matomeQuote body="＞boricjのツールはshared→static変換に理論的な限界はないって証明してるっぽい．デコンパイラみたいに解析すればrelocation tables再構築できるから，shared→staticもできるはず．<br>従来のリンカーならそうかもね．LTOとかかかってると無理ゲーだよ．関数が非標準calling conventions使ったりして，元のコードと混ぜるのが大変になる．昔のLTOされたのをデコンパイルしてる人は，コンパイラにパッチ当てて同じ最適化させたって話もあるくらい．最適化きついとdelinkingだけじゃ無理で別の魔術が必要．" userName="boricj" createdAt="2025/05/25 10:03:35" color="#785bff">}}




{{<matomeQuote body="matching decompilationが「正しいソースコードのoracle」として何がダメなの？" userName="nyanpasu64" createdAt="2025/05/25 01:35:34" color="">}}




{{<matomeQuote body="Static librariesはPICじゃないとsharedにできん．<br>Shared librariesならstaticに変換できるよ．ただ，static librariesのいいとこ（一部だけ使える）はなくなるけどね．" userName="immibis" createdAt="2025/05/25 10:22:54" color="">}}




{{<matomeQuote body="「手動でannotateしたくないから，analyzersを徹底的に改良した」←これ，俺も何回かハマったtrapだよ．君にはうまくいってるみたいだけど，一般的には，曖昧な問題のautomationは100％正確にならないし，動くようになったらmanual processを効率化すべき．" userName="immibis" createdAt="2025/05/25 10:20:30" color="">}}




{{<matomeQuote body="コメントありがとう！LTOはshared librariesのexported symbolsには関係ないんじゃない？exported functionsはABIに従うべきだし，それだけコピーすれば動くはず．<br>Shared libraries Aが別のdylib Bに依存してる場合，AからBへの呼び出しがPLT経由になるのが落とし穴かも．これをobject fileにするには，コード移動してrelocation entry作るだけでなく，assembly自体をpatchしてcall indirectionをなくす必要がありそう．" userName="krackers" createdAt="2025/05/25 18:02:16" color="#ff33a1">}}




{{<matomeQuote body="このdecompilingとかreverse engineeringの分野，読んでるといつも感心する．expertsのコミュニティではすごいことやってるのに，academicやlearning communitiesで全然知られてない「地下のCS topic」みたいな感じだよな．" userName="chinchilla2020" createdAt="2025/05/25 17:04:41" color="#ff5733">}}




{{<matomeQuote body="これ、大学院でやった研究を思い出すな。色々なバイナリ配布からライブラリバージョンを組み合わせてシステムの攻撃面を多様化しようとしたやつだけど、もっと細かいレベルって感じ。詳しくはこれ：https://people.scs.carleton.ca/~soma/pubs/bfoster-gecco-2010..." userName="ShroudedNight" createdAt="2025/05/25 01:43:07" color="#45d325">}}




{{<matomeQuote body="これ最高！バイナリいじったことある人はみんな欲しかったやつだろ。実現されて嬉しい！今抱えてる問題解決に使うつもり。これ使えば、PGO’d共有ライブラリみたいに、必要な関数だけ集めた新しい共有ライブラリとか作れるかも。<br>うまくいけばいいけど、失敗しても面白いし：）" userName="dhash" createdAt="2025/05/25 09:28:50" color="#ff5733">}}




{{<matomeQuote body="このコメントで今日最高になったよ！でも、この複雑な分野は文献が少なくて、技術的な議論がすぐ行き詰まるのが問題なんだよね。「デリンキングのNecronomicon」でも書いて、みんなが理解できる文書を作りたいと思ってた。リンカー開発者にはホラーの読み聞かせになるかもね：）" userName="boricj" createdAt="2025/05/25 00:01:45" color="#38d3d3">}}




{{<matomeQuote body="PICなしで共有ライブラリは作れるけど、＊nix系は阻止してくる。Windowsはnon-PICがデフォだからアドレス重複しないように頑張ってる。アドレス重複時はruntime linkerが”relocation data”を使ってポインタの書き換えとかするんだ。このデータには”ポインタどこ？コード移動時どう書き換える？”って情報が入ってるよ。" userName="p_l" createdAt="2025/05/27 11:26:51" color="#785bff">}}




{{<matomeQuote body="うん。PlayStationゲームの一部をLinux MIPSプログラムに入れたり、Linux x86をWindowsに移植したりしたことあるよ。ソースなしで、ツールチェーンが合ったからシムで繋いだだけ。互換性ないABIを結合するツールはない。MIPS PICとnon-PICで試したけど、デバッグがひどくて投げ出した。別のCPUは未経験。可能だと思うけど、もう深い穴にハマってるから誰か他の人に investigate してもらうわ。" userName="boricj" createdAt="2025/05/25 17:22:15" color="#785bff">}}




{{<matomeQuote body="LTO最適化された共有ライブラリ全体を一つの大きな塊としてdelinkingするなら、まあそうだろうね。LTOは実質的にプログラム／ライブラリを一つの巨大な翻訳単位にしちゃうけど、それを横断して切らないならプラットフォームのABIが observable boundary を規定するよ．" userName="boricj" createdAt="2025/05/25 19:52:31" color="#38d3d3">}}




{{<matomeQuote body="この分野は独特で、delinkingは複雑なパズルだよ。リンクで情報失われるし、正しくできたか確認も大変。数多くの relocation spots を全て spot-on にしないとダメ。俺は仮定しない analyzer 設計と回帰テストでやり遂げた。手作業は Ghidra database の修正とか。最悪なアーキテクチャ MIPS で試したけど、複雑な relocation や branch delay slots とかあって、analyzer の一部の再帰関数、どう動くか正直分かってない（笑）．" userName="boricj" createdAt="2025/05/25 10:50:24" color="#45d325">}}




{{<matomeQuote body="Davinci Resolve のプラグインでも似たようなことやった人いたよ。たぶん今、VR addon で一番すごいんじゃないかな．" userName="babuloseo" createdAt="2025/05/25 00:19:39" color="">}}




{{<matomeQuote body="君がやってることは、やっぱり matching decompilation だよ。delinking ってステップを挟んでもそれは変わらない。ただ、linked binary を直接デコンパイルするより、delinking を挟むことでデコンパイルをシンプルにしたり改善したりする可能性はあるね。だって、より自然に逆プロセスを辿ってるわけだから．" userName="mjanx123" createdAt="2025/05/25 05:18:32" color="#ff33a1">}}




{{<matomeQuote body="今年車輪の考え方変わったわ。昔は圧縮、今はテンションで重さ支えてるんだって。自転車も車もそうらしい。物理ひっくり返して文字通り再発明してるのがすごいね。詳しくはこの動画見てみてよ：https://youtu.be/8I7QsgYm_NU?si=Vz1aqpHBAPjayqlG" userName="tylervigen" createdAt="2025/05/25 05:36:20" color="#38d3d3">}}




{{<matomeQuote body="そうなんだよね、記事でもほのめかしてるけど、「〜を再発明するな」って表現って、実はちょっと間違ってるんだよね。だって車輪って紀元前4500年くらいから何度も再発明されてきてるんだもん。<br>最近の”再発明”だと、19世紀から20世紀にかけての continuous track、monowheel、”hubless” wheel、あと mecanum wheel とかだね [1] [2]。<br>[1] https://en.wikipedia.org/wiki/Hubless_wheel<br>[2] https://en.wikipedia.org/wiki/Mecanum_wheel" userName="astrobe_" createdAt="2025/05/25 08:18:05" color="#ff33a1">}}




{{<matomeQuote body="僕が思うに、多くの人が「再発明するな」って言うのは、既存の、どこにでもある、十分な解決策があるって信じてるからじゃないかな（まあ、彼らがそう思う理由はそれだけど。それを人のプロジェクトへのレスポンスとして声に出して言うのは、別の理由があると思うけどね）。<br>でも、どこにでもある解決策には、その解決策に合わせるために応用を制限する必要があるような、前提とかトレードオフがあるんだよね。だから、これらの文字通りの車輪の例が示すように、そういった前提やトレードオフの中にこそ、役に立つ再発明をする能力があるわけだ。<br> Mecanum wheel への言及と、君の投稿が6時間前ってのを見て、ちょっと笑っちゃったよ。12時間前に、僕はちょうど Star Trek のリブート映画を見直してたんだ。<br>その中で、キャラクターたちがシャトルに乗り込んでそれぞれの任務に向かうシーンがあるんだけど、背景には、目にする機械の技術的進歩に感心させられることになってるんだよね。例えば、フォークリフトみたいに見慣れたものでも、変な車輪みたいな”未来的”なディテールがあるんだ。そして、そのフォークリフトについてる車輪が Mecanum wheel なんだよ。物語の中では、それは300年くらい前の技術ってことになるね。" userName="moron4hire" createdAt="2025/05/25 14:57:50" color="#38d3d3">}}




{{<matomeQuote body="へー、めっちゃ面白かったわ。こんなこと考えたことなかったなー。今日新しいこと学べたよ！ありがとう。" userName="thunderbong" createdAt="2025/05/25 07:04:45" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="円形の tensegrity だね。" userName="agumonkey" createdAt="2025/05/25 09:51:45" color="">}}




{{<matomeQuote body="車輪を再発明する一番大事な理由の一つで、著者が触れてないのが、不要な依存関係による複雑さの追加を避けることだよ。" userName="begueradj" createdAt="2025/05/24 20:28:11" color="#38d3d3">}}




{{<matomeQuote body="全くその通り！そして、ライブラリが人気になるのは、多くの異なるシナリオで問題を解決するからだって付け加えておくね。<br>つまり、ほぼ定義上、もしライブラリが人気なら、君のユースケースには全く関係ない大量のコードが含まれてるってことなんだ。<br>トレードオフとして考えるべきは、君のバージョンを素早くコード化できるかどうかだよ（ crypto ライブラリじゃないと仮定してね、自分の crypto は絶対自分で作るな）。だって、もし作れるなら、それに詳しくなれるし、依存関係も小さく済むからね。" userName="underdeserver" createdAt="2025/05/24 20:35:49" color="#45d325">}}




{{<matomeQuote body="ていうか、今まともな LLMs あるから、 crypto を自分で作るのも多分いけるんじゃない？" userName="deadbabe" createdAt="2025/05/25 00:47:51" color="">}}




{{<matomeQuote body="素人が自分が破れない暗号アルゴリズム書くのは簡単だけど、それは危険。セキュリティは最新攻撃との競争だからね。コンパイラとかは基本だけで書いてもいいけど、暗号だけはダメ。もっと詳しい人に破られるから。例えば、array[index]ってコードを書くだけでも、同じCPU上の他のプログラムにデータが漏れる（サイドチャネル攻撃）可能性があるって知ってた？基本原則だけじゃ暗号は無理ってこと。" userName="immibis" createdAt="2025/05/25 10:25:19" color="#785bff">}}




{{<matomeQuote body="残念ながら、もし何かのライブラリに依存すると、そいつがまた別のサポートライブラリに依存してる可能性が高いんだよね。もしかしたらたった一つの機能のためにね。で、ビルドツールがインターネット全体をダウンロードすることになるんだ。" userName="jfengel" createdAt="2025/05/24 21:29:07" color="">}}




{{<matomeQuote body="うん、もちろんさ。でも君は、使ってる暗号ライブラリを誰が書いたか、その人の資格は？どこの誰のために働いてる？とか、利益相反の可能性は？みたいなことを正確に知ってる？<br>たぶん誰もそんなこと全く考えてないと思うよ。" userName="deadbabe" createdAt="2025/05/25 13:48:19" color="#ff33a1">}}




{{<matomeQuote body="もうすぐ使うことになるRubyのアプリがあるんだけど、そいつは227個もパッケージをダウンロードするんだよ。" userName="rjsw" createdAt="2025/05/24 21:57:04" color="">}}




{{<matomeQuote body="依存なしでDAGベースのタスク実行ライブラリを自分で作った話だよ。デモ用にブラウザ向けIndexedDB、Electron向けSQLite、サーバー向けPostgresと、バックエンド色々作ったし、レート制限用のリミッターとかも必要になった。依存したくないなら、結局自分で色々作らなきゃいけない「車輪の再発明」がたくさんあるんだ。完全に依存なしにするのは難しいかもね。" userName="sroussey" createdAt="2025/05/25 00:02:19" color="#45d325">}}




{{<matomeQuote body="（コメント4406を受けて）暗号だけでなく、コンピューティングスタック全体の話だね。だからcorebootやオープンソースハードウェアがある。フルオープンなら自分で調べられる。暗号で分岐は怪しい。xz問題やDual_EC_DRBGみたいな例もあるしね。（元のコメントの人が書いたみたいに）暗号って、ライブラリ書くだけじゃダメで、単純な操作も正しい実装の氷山の一角なんだ。" userName="mrngm" createdAt="2025/05/25 18:12:30" color="#ff5733">}}




{{<matomeQuote body="元スレ主は、あれはアプリ全体の話であって、単一のgemの依存関係じゃないって言ってたよ。それに、227個ってそんなに多くないんだよ。素のRailsアプリだってデフォルトで120個近くgemが入ってるし。そこにいくつかのgemを追加して、それぞれがまた依存関係を持ってたりすると、合計200個以上のパッケージなんてあっという間に増えるんだから。" userName="zoky" createdAt="2025/05/25 01:08:21" color="">}}




{{<matomeQuote body="使ってる暗号ライブラリを積極的に審査してないなら、自分で暗号をイチから作るのと同じくらいの危険性にさらされてるも同然だよ。" userName="deadbabe" createdAt="2025/05/25 18:40:54" color="#38d3d3">}}




{{<matomeQuote body="”Never roll your own crypto”って普通は「自分で暗号アルゴリズムを考え出すな」って意味だよ。確立されたアルゴリズムを自分で実装するのは、それが正しく動くことを証明できればOKさ。でも、Heartbleedで分かったみたいに、確立されたライブラリを使ってもそれは難しいんだよね。" userName="bitwize" createdAt="2025/05/24 22:27:12" color="#ff5733">}}




{{<matomeQuote body="＞ほぼ定義からして、ライブラリが人気なら、それは大量のコードを含んでる人気＝肥大化じゃないよ。" userName="goodpoint" createdAt="2025/05/25 14:42:43" color="">}}




{{<matomeQuote body="オープンソースに関しては、あまり注目されないけど良い折衷案は、依存ライブラリを自分のとこに持ってきて（ベンダーリング）、いらない部分を削って、APIもシンプルになるように調整することだよ。これはパフォーマンス要件がある時にも役立つんだ。だって、サードパーティのコードは一般的に最適化されてても、特定の用途には最適化されてないことが多いからね。" userName="marginalia_nu" createdAt="2025/05/25 11:50:07" color="#785bff">}}




{{<matomeQuote body="それはフレームワークには当てはまるけど、良いライブラリには当てはまらないね。" userName="kortilla" createdAt="2025/05/24 20:53:45" color="">}}




{{<matomeQuote body="これやるのすごい好き。多くの場合、元のライブラリのコードの8割は削れるんだよね。削ったコードのほとんどは、要らない柔軟性や機能なんだ。ソリューションの核ってこんなに小さくていいんだって驚くよ。" userName="vendiddy" createdAt="2025/05/25 13:22:48" color="#ff33a1">}}




{{<matomeQuote body="僕が「車輪を再発明」しがちな主な理由は、依存ライブラリが余計な「荷物」が多くて、必要な機能はほんの一部だったりするからだよ。角の店に行くだけなのに、18輪トラックは使いたくないだろ？あと個人的な意見だけど、不透明なコードは信用しない。使うなら自分で書けるくらい単純なものか、監査できるものを選ぶようにしてる。無料ならソースが見えるべきだね。" userName="ChrisMarshallNY" createdAt="2025/05/25 01:32:49" color="#45d325">}}




{{<matomeQuote body="それは使ってる言語／ビルドシステムに大きく依存するね。依存ライブラリを追加するのが簡単なら、大体そういう風になる可能性が高い、ってことかな。" userName="thfuran" createdAt="2025/05/24 21:47:14" color="">}}




{{<matomeQuote body="＞素のRailsアプリで箱から出してすぐ120個近くのgemが入ってるらしいね。素のアプリ動かすのに120個も違う外部ライブラリが必要、なんておかしいんじゃない？標準ライブラリに入れるべきだよ。" userName="yetihehe" createdAt="2025/05/25 10:44:38" color="#ff5c5c">}}




{{<matomeQuote body="俺は戦う相手を選ぶタイプかな、リスク許容度と想定される攻撃者モデル次第だね。何を守りたいかにもよるし。オープンソース言語の標準ライブラリなら、実装はそこまで細かくチェックしないよ。" userName="mrngm" createdAt="2025/05/25 21:58:32" color="">}}




{{<matomeQuote body="Githubからテキトーなコードを拾ってくるならそうだけど、OpenSSLとかBouncy Castleなら別だね。Heartbleedはあったけどさ。" userName="immibis" createdAt="2025/05/25 18:54:00" color="">}}




{{<matomeQuote body="OpenSSLを使うってことはさ、もし自分がヤラれたらインターネット全体もヤラれるって信頼できるってことなんだよ。実際に一度、そうなったことがあるしさ。" userName="immibis" createdAt="2025/05/25 18:53:22" color="">}}




{{<matomeQuote body="暗号の実装は、インプットとアウトプットが“正しい”と証明されてても、安全じゃないやり方がかなりあるんだよ。例えば、タイミングで情報が漏れたり、コンパイラ最適化のせいでセンシティブなメモリをクリアしなかったりね。" userName="jeff-davis" createdAt="2025/05/24 23:02:15" color="#785bff">}}




{{<matomeQuote body="アルゴリズムを正しく理解するのは簡単な方なんだ。でも、実装の詳細が命取りになる。自分で暗号をゼロから作っちゃダメだよ。" userName="speed_spread" createdAt="2025/05/24 23:41:43" color="#785bff">}}




{{<matomeQuote body="もう一つ：発明とか研究のスキルって、練習で磨けるスキルなんだよ。そして、過去に解決済みの問題で練習できるんだ。" userName="efavdb" createdAt="2025/05/24 23:05:39" color="">}}




{{<matomeQuote body="でも、たいてい肥大化するけどね。だって、一年以内にアップデートされないライブラリは“放棄された”と見なされて、機能クリープにやられちゃうから。" userName="ale" createdAt="2025/05/25 15:06:41" color="">}}




{{<matomeQuote body="コードレビューで、誰かがJavaにないPair＜＞クラスを使うためだけに、ライブラリ全体をインポートしてたのを見たよ。Javaだとたった一行でPair＜＞型を宣言できるのにさ、```<br>record Pair＜S, T＞(S first, T second) {}<br>```<br>ってね。" userName="fnord77" createdAt="2025/05/25 03:17:06" color="#45d325">}}




{{<matomeQuote body="この記事ありがとう、洞察のための再発明は最高の学習法だって同意するよ。俺も数ヶ月前、PyTorchみたいなMLライブラリをPythonとNumPyだけでゼロから作ったんだ。Autogradから始めて、モジュールとかを作っていった。機械学習を原理から学びたかったからね。自分で作ったライブラリでconvnetsとかGPT-2も試した。PyTorchとかTensorFlowの抽象化なしに、裏側を理解するのに役立ったよ。再発明した車輪で車を再発明した感じ！<br>[1] https://github.com/workofart/ml-by-hand<br>[2] https://github.com/workofart/ml-by-hand/blob/main/examples/c...<br>[3] https://github.com/workofart/ml-by-hand/blob/main/examples/g..." userName="megadragon9" createdAt="2025/05/24 20:43:23" color="#785bff">}}




{{<matomeQuote body="この記事は、アイデアとその問題点を少し誤解してると思うな。自分の車輪を発明するのは別にいいんだよ。でも、それをプロダクションに投入したり、個人的に頑張ったからって他の誰かに使わせる義務を感じたりするべきじゃない。自分が作ったものが、ユニークな天才的なやり方だけじゃなくて、テストとかドキュメント、サポート体制みたいな全ての地味なやり方でも、既存のより少なくとも同じくらい、いやそれ以上に優れてる必要があるんだ。" userName="zmmmmm" createdAt="2025/05/25 05:19:25" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これは良い指摘だけど、逆の視点もあるんだ。時々、すでに発明されてテスト済みでドキュメント化されてる”標準”のやつは、必要なものよりずっと大きいことがあるんだ。10個の特徴のうち1つだけ必要かもしれない。まさに必要なものだけを作るために、再発明する方が理にかなってることもあるんだ、あなたが言った犠牲を払ってでもね。いつもじゃないけど、自分の状況に合わせて全ての要因を考慮する必要があるよ。でも、”再発明”を選ぶのは、必ずしも単なるエゴの運動ってわけじゃないんだ。" userName="jonahx" createdAt="2025/05/25 06:05:52" color="#ff5c5c">}}




{{<matomeQuote body="サイズはそんなに関係ないこともあるよ。もし限られたスペース（例えば組み込みソフトウェア）で作業してるなら別だけど。でもWebやってたり、最近の言語を使ってるなら、使われてないコードは普通、コンパイルされた成果物から最適化で消えるし、気にしないよね。俺たちは、テスト済みで実戦経験のある振る舞いの方がずっと気にするんだ。" userName="augusto-moura" createdAt="2025/05/25 19:07:55" color="#45d325">}}




{{<matomeQuote body="認知負荷とか、複雑さとか、攻撃対象面積とか、そういうサイズの話をしてるんだよ。" userName="jonahx" createdAt="2025/05/26 05:47:48" color="">}}




{{<matomeQuote body="車輪を再発明するのは学ぶのに一番いい方法だね。でも個人的には、それが本当に唯一やるべき状況だと思うよ。俺は寄り道大好きだけど、仕事だと締め切りとか他の制約があって、それらを探索するのは難しいことが多い。でも、自分の作った車輪を本番環境で使いたいなら、それは良い車輪であるべきで、既存の製品より優れてないとダメだね。" userName="wcfrobert" createdAt="2025/05/24 20:22:57" color="#785bff">}}




{{<matomeQuote body="職場で車輪を再発明する人の99％は、気に入らないその車輪がどうやって作られたのか、そしてなぜそんな妥協があるのかさえ知らないんだ。" userName="epolanski" createdAt="2025/05/24 22:21:53" color="#785bff">}}




{{<matomeQuote body="残りの1％は、元の車輪が自分たちの会社にとって機能しない劣ったアプローチに彼らを縛り付けてしまうから、再発明するんだ。" userName="throwaway173738" createdAt="2025/05/25 03:31:35" color="">}}




{{<matomeQuote body="Chesterton’s Fence（チェスタートンのフェンス）を思い出すな［1］。理由も分からず200以上の役職を無差別に排除したことを自慢してた同僚に、まさにこの話を説明したところだよ。［1］ https://www.lesswrong.com/w/chesterton-s-fence" userName="chad_c" createdAt="2025/05/24 22:58:44" color="#38d3d3">}}




{{<matomeQuote body="もしフェンスがバカによって建てられたなら、どこかの時点でフェンスを壊してどうなるか見るしかない選択肢はないんだ。Chesterton’s Fenceは、ある程度の設計か、長い時間を経た質を暗示してるけど、ほとんどのソフトウェア製品はそれに匹敵しない。Chesterton自身はそれを宗教的な比喩として使ってたし、俺たちのほとんどはソフトウェアエンジニアが文字通りの神じゃないって同意すると思うよ。" userName="strken" createdAt="2025/05/25 00:13:43" color="#ff33a1">}}




{{<matomeQuote body="フェンスを壊しちゃダメってことじゃないんだ。なぜそこにフェンスがあるのか、まずその理由を調べたかってことだよ。" userName="chad_c" createdAt="2025/05/25 02:14:11" color="">}}




{{<matomeQuote body="時々、フェンスが存在する理由は、それを置いた人がa）バカ、b）極度に混乱してる、あるいはc）フェンスを建てる資格がない、のどれかの組み合わせだったりするんだ。あと、ソフトウェアでは、フェンスが通常の三次元より高次元に存在したり、一部が見えなくなったり、存在してるのに高さが4インチでネズミしかブロックしなかったりすることもあるかもしれない。そしてそれは、意識そのものが犠牲にされる祭壇の上にいる、盲目のバカ神ChatGptによって、少なくとも一部は設計されてるかもしれない。この時点で、フェンスを置いておくことが、牛を外に出すより悪いかどうか考える価値があるよ。" userName="strken" createdAt="2025/05/25 05:36:11" color="#38d3d3">}}




{{<matomeQuote body="市場原理的に考えたら、フェンス建てるにはコストかかるし、その価値がコストより高くないと建てないはずなんだよね。もちろん失敗もあるけどさ。でも、なぜフェンスが建てられたかを理解する価値って、それが期待された効果とか解決しようとした問題を理解するためなんだ。これは”建てるべき”って意味じゃなくて、前に同じことやった人がなんで失敗したかを知れば、自分も同じ失敗しないようにできるから大事ってことだよ。" userName="averagefluid" createdAt="2025/05/29 22:52:27" color="#ff33a1">}}




{{<matomeQuote body="ウケるね。最近、古いシステムで同じようなことあったわ。データがどこ行くのか、使われてるのか誰も分かんなくてさ。でもたいしたデータじゃなかったし、最悪でもmarketingの人をちょっとムッとさせるくらいで済むだろうって思ったんだ。リスク低いって確信できるなら、これは良いやり方だと思うよ。" userName="dclowd9901" createdAt="2025/05/25 03:15:30" color="#45d325">}}




{{<matomeQuote body="＞締め切りとか色んな制約あると、色々調べるのって無理ゲーなんだよね。これって人生全体に言えることだわ。俺らには限られた時間しかないし。老いと死ってマジで全ての元凶だよな。" userName="dennis_jeeves2" createdAt="2025/05/25 05:50:09" color="">}}




{{<matomeQuote body="いちから全部作るのが、学ぶのに一番良い方法ってわけじゃないんだよね。一番金と時間かかるし。学ぶべきことはちゃんとドキュメントあって、いじれれば十分。伝えるの上手くなるのも大変だけど、ゼロから全部作る必要はないと思うよ。" userName="rTX5CMRXIfFG" createdAt="2025/05/24 22:58:41" color="">}}




{{<matomeQuote body="＞いちから全部作るのが学ぶのに一番良い方法ってわけじゃない。一番金と時間かかるし。費用（時間とか）は、そのテーマをどれだけ深く知るかにかかってるんだ。だからこそ、それが学ぶのに一番良い方法なんだよ。いつもできるわけじゃないけど、その費用をかけられるなら他に勝るものはないね。" userName="bigstrat2003" createdAt="2025/05/25 00:43:45" color="">}}




{{<matomeQuote body="いや、費用はどれだけ無駄な選択肢を経験するかにかかってるんだって。必要な深い知識は、無駄なく直接学べるんだよ。" userName="eviks" createdAt="2025/05/25 05:03:08" color="">}}




{{<matomeQuote body="それって、めっちゃ表面的にしか学べない感じじゃん。ゼロから書き直すのが、マジで深い内容や複雑なことを学ぶ唯一の方法だよ。" userName="grg0" createdAt="2025/05/24 23:36:13" color="">}}




{{<matomeQuote body="必ずしも表面的な学びってわけじゃないんだ。数学学びたいのに、学ぶためだけにルールをゼロから作り直すとかアホでしょ。良い先生とconstant practiceの方が良いし、自分で定理とか公式作るなんて一生かかっても終わらないって。でかいlegacy codebase学ぶのも同じ。担当になったら、まず全部ゼロから書き直そうとするんじゃなくて、コードとかドキュメント読むか、分からなきゃ周りに聞くべき。テスト書いて動き掴むのもアリ。プログラマーがcognitive psychologistsみたいになれとは言わないけど、学ぶって”progressive overload”みたいなもん。だから、あるものの上に積み上げるのが一番。まず何やるものか大体掴んで、慣れてきたらゼロから作ってみるのが良いよ。いきなり複雑すぎると脳がパンクするし、学ぶの嫌になっちゃうだけだからさ。" userName="rTX5CMRXIfFG" createdAt="2025/05/25 04:28:14" color="#45d325">}}




{{<matomeQuote body="まあ、どこまでやるかは線引きするけど、学んでるものはゼロから自分で作るべきだよ。web serverどう動くか知りたきゃ、自分で書けばいい。動くOSまで書く必要はないけど、それもweb serverの設計に役立つ一面はある。既存のweb serverのドキュメント読むだけじゃ、浅い理解にしかならないよ。" userName="grg0" createdAt="2025/05/27 02:38:33" color="#38d3d3">}}




{{<matomeQuote body="人によって学び方違うよね。俺はまず低レベルな言語を学んで、抽象化レベルを上げていったクチ。逆の人も多いけど。個人的には、”習うより慣れろ”派かな。車輪の再発明は、今まで試したどの方法より自分には合ってると思う。" userName="christophilus" createdAt="2025/05/25 12:41:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
