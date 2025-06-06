+++
date = '2025-05-30T00:00:00'
months = '2025/05'
draft = false
title = '計算効率を上げる radix 2^51のトリックとは？'
tags = ["ビッグインテジャー", "アルゴリズム", "数値計算", "コンピュータアーキテクチャ", "最適化"]
featureimage = 'thumbnails/purple7.jpg'
+++

> 計算効率を上げる radix 2^51のトリックとは？

引用元：[https://news.ycombinator.com/item?id=44132673](https://news.ycombinator.com/item?id=44132673)




{{<matomeQuote body="＞なんで12じゃなくて13ビットなの？一番上の部分はキャリーを無視して52ビットにして、オーバーフローしたらラップアラウンドするみたいに使うんだってさ。でもさ、トップを64ビット、他4つを48ビットにすればもっとキャリーを溜められるし、アラインメントもいい感じになるし、オーバーフローの性質も同じじゃないの？" userName="addaon" createdAt="2025/05/30 05:04:58" color="#45d325">}}




{{<matomeQuote body="＞＞＞なんでトップを64ビット、他4つを48ビットにしないの？<br>んー、たぶん5つの64ビットレジスタで256ビット計算したいから、各ワードで256/5の51.2ビット使うのが目標なんだと思う。これは256ビット計算には理想かもだけど、汎用big-intライブラリには最適じゃないかも。昔はキャリー用に1バイト使うのが普通だったらしいよ。あと、RISC-VみたいにフラグがないISAだと、こういう細かい話が結構重要になるね。" userName="phkahler" createdAt="2025/05/30 13:23:25" color="#45d325">}}




{{<matomeQuote body="うーん、この説明読んでも、やっぱ64+48*4の方が絶対優れてるって。だって、キャリーのスペースが各擬似数字に16ビットもあって、オーバーフローせずに長く計算できるし、キャリースペースのアラインメントももっときれいだよ。" userName="andrewla" createdAt="2025/05/30 19:04:59" color="">}}




{{<matomeQuote body="＞＞各ワードが同じ量である必要があるのか<br>なんで各ワードが同じ量じゃなきゃいけないの？トップワードに64ビット、他の4ワードに48ビットじゃダメなの？" userName="Thorrez" createdAt="2025/05/30 14:29:10" color="">}}




{{<matomeQuote body="各ワードのビット数を均等にするとさ、正規化しなきゃいけなくなるまでに、もっといっぱい足し算や引き算を続けられるんだよ。" userName="LegionMammal978" createdAt="2025/05/30 15:29:22" color="#38d3d3">}}




{{<matomeQuote body="うん、それはそうなんだけどさ、大事なのは、一番上の部分には冗長なビットを持たせても意味がないってこと。だって、そこに入ったものは正規化の後で捨てられちゃうからね。" userName="xigoi" createdAt="2025/05/30 15:44:00" color="">}}




{{<matomeQuote body="あー、なるほどね、そう考えると一番上の部分に全部64ビット使うのは確かに理にかなってるかも。でもさ、全部を同じサイズにしておくと、SIMDとかああいう手法でまとめて処理するのにメリットがあるんだよね。僕のプロジェクトの一つでは、CUDAで大きな整数を扱うのに、それらをワープ全体に分配しようとしてるんだ。" userName="LegionMammal978" createdAt="2025/05/30 17:03:36" color="#45d325">}}




{{<matomeQuote body="たぶん、一部のユースケースではオーバーフローがあったかどうかが知りたいんじゃないかな？そういう場合だと、キャリービットを溜めるスペースが多い方が、正確な答えを出すのが簡単になるかもしれないね。" userName="dgoldstein0" createdAt="2025/05/31 02:16:23" color="">}}




{{<matomeQuote body="だって、符号化された二つの数のトップ部分を足すと、すぐオーバーフローしちゃうからだよ。例えば両方2^63にしちゃったら、すぐ溢れちゃうじゃん。ラップアラウンド演算ならいいかもだけど、普通はダメだね。" userName="Sukera" createdAt="2025/05/30 09:40:43" color="">}}




{{<matomeQuote body="両方を2^63にするってことは、元の256ビットの数が2^255だったってことだよね。それなら、どんな中間的な符号化を使ってても、足し算はオーバーフローしちゃうんだよ。" userName="volemo" createdAt="2025/05/30 11:04:15" color="#ff5c5c">}}




{{<matomeQuote body="うん、じゃあ片方を2^62、もう片方を-2^62（具体的には: 0b1100..00）にしてみなよ。unsigned算術ではオーバーフローだけど、signed算術ではそうならないよ。とはいえ、256ビット整数を扱うときは、signed算術で作業することはまずないだろうけどね。" userName="vitus" createdAt="2025/05/30 11:41:33" color="">}}




{{<matomeQuote body="…だから？ 彼らは一番上のワードのオーバーフローなんて全然気にしてないよ。それがポイントなんだから。" userName="immibis" createdAt="2025/05/30 12:44:53" color="">}}




{{<matomeQuote body="そうしたら、OP（記事）みたいに256ビット値を保持するのに5ワードじゃなくて6ワード必要になるじゃん。その結果、加算するための命令も増えるよ。" userName="bboreham" createdAt="2025/05/30 06:56:17" color="">}}




{{<matomeQuote body="64 + 48 * 4 == 256でしょ…？ やっぱり5つの64ビットワードでいけるよ。" userName="addaon" createdAt="2025/05/30 07:03:51" color="">}}




{{<matomeQuote body="それだとオーバーフロー検出できないんじゃないの？" userName="bboreham" createdAt="2025/05/30 19:50:56" color="">}}




{{<matomeQuote body="AVX512（あとAVX2もある程度ね）を使えば、256ビット加算をかなり効率的に実装できるよ。レジスタにもっとたくさんの数値を格納できる追加の利点もあるしね。だいたいこんな感じに見えるかな:<br>__m256i s = _mm256_add_epi64(a, b);<br>const __m256i all_ones = _mm256_set1_epi64x(~0);<br>int g = _mm256_cmpgt_epu64_mask(a, s);<br>int p = _mm256_cmpeq_epu64_mask(s, all_ones);<br>int carries = ((g ＜＜ 1) + p) ^ p;<br><br>__m256i ret = _mm256_mask_sub_epi64(s, carries, s, all_ones);<br>スループットも良さそうだよ: https://godbolt.org/z/e7zETe8xY<br>これを512ビット加算に変えるのは簡単だし、そっちはもっと改善が顕著になるよ。" userName="ashdnazg" createdAt="2025/05/30 12:12:12" color="#ff5733">}}




{{<matomeQuote body="注意ね。特に特定のIntelアーキテクチャでは、AVX512命令を「少しでも」使うとプロセッサ全体がダウンクロックして、その結果、性能が不安定になったり遅くなったりすることがあるよ。<br>https://stackoverflow.com/questions/56852812/simd-instructio..." userName="amitprasad" createdAt="2025/05/30 19:21:48" color="#785bff">}}




{{<matomeQuote body="＞ AVX512命令を「少しでも」使うと<br>これは正しくないよ。AVX512は追加命令とか、zmm（512ビット）レジスタ、それと追加の16個（合計32個）のベクトルレジスタも提供するんだ。ダウンクロックは512ビットレジスタを使ったときにだけ起こるんだよ（AVX512命令全部じゃなくてね）。この違いは重要で、AVX512で追加された本当に便利な命令（例: 64ビット整数乗算）は純粋に良い点しかないからさ。あと、Zen4 とか Zen5 ではこれは全く問題にならないよ。電力/温度が上がり始めたときにだけダウンクロックするという、もっと賢明なやり方をするからね。" userName="adgjlsfhk1" createdAt="2025/05/30 19:29:09" color="#38d3d3">}}




{{<matomeQuote body="ああそうだね、完全に正しいよ :)<br>一般的な考えとしては、ベクトルレジスタの危険性をいくつか強調したかっただけなんだ。同じことはymm（256）にも、程度は小さいけど当てはまると思うよ。" userName="amitprasad" createdAt="2025/05/30 19:33:50" color="">}}




{{<matomeQuote body="最近のx86 CPU（Intel Broadwell、AMD Ryzen）なら、ADX [1] も使えるよ。これはradix 2^51表現が伝統的に有利だった状況（例えば Curve25519 とか）で、今はもっと速いかもしれないね。<br>[1] https://en.wikipedia.org/wiki/Intel_ADX" userName="e4m2" createdAt="2025/05/30 10:22:33" color="#ff5733">}}




{{<matomeQuote body="関連するやつ。<br>他に？<br>The radix 2^51 trick - https:／／news.ycombinator.com／item?id=33706153 - 2022年11月（コメント6件）<br>The radix 2^51 trick (2017) - https:／／news.ycombinator.com／item?id=23351007 - 2020年5月（コメント83件）" userName="dang" createdAt="2025/05/30 05:45:32" color="">}}




{{<matomeQuote body="要するにね：独立してる処理はたくさんやっても並列で速くなるかもってこと。<br>逆に依存関係で順番にやるしかない処理は少なくても遅くなる。<br>これって長い整数だけじゃなくて、もっと広い範囲で言えることだよ。" userName="nine_k" createdAt="2025/05/30 05:40:28" color="#38d3d3">}}




{{<matomeQuote body="そうそう。<br>別のやり方としては、普通の64 bitの塊を使って、各足し算をキャリーありとなしで並列に投機実行するってのもある。<br>そんで、下位の足し算のキャリー結果でどっちが正しいか選ぶ。<br>足し算の量は倍になるけど、これでキャリーの伝播時間がlog(bits)になるんだよ（線形じゃなくてね）。" userName="repelsteeltje" createdAt="2025/05/30 06:03:57" color="#45d325">}}




{{<matomeQuote body="それってさ、塊の数をnとしたら2^n個の候補ができちゃうんじゃないの？<br>なんかすごくたくさんの追加の（へへ）命令が実行されそうなんだけど。" userName="volemo" createdAt="2025/05/30 11:09:57" color="">}}




{{<matomeQuote body="いや、違うよ。<br>2n個だけ。<br>各塊のペアはキャリーなしで1回と、キャリーが1として1回足されるんだ。<br>radix=2である限り、キャリーは発生するかしないかのどっちかだよ。" userName="repelsteeltje" createdAt="2025/05/30 20:19:10" color="#785bff">}}




{{<matomeQuote body="1回の足し算ならradixは関係ないよ：キャリーはいつもゼロかイチ。<br>(r-1) + (r-1) = 2r - 2 ＜ 2r だからね。" userName="mananaysiempre" createdAt="2025/05/30 20:48:17" color="">}}




{{<matomeQuote body="でもさ、1回の足し算だと選択処理を結局順番にやらなきゃいけないから、時間短縮にはならないよ。<br>radix 2^51のトリックのミソは、正規化を何回かの足し算の後まで遅らせられるってことなんだ。<br>でも、それをするにはキャリーが1 bit以上である必要があるんだよ。" userName="account42" createdAt="2025/06/02 09:23:02" color="#38d3d3">}}




{{<matomeQuote body="これも見てみて。<br>https:／／news.ycombinator.com／item?id=44133169" userName="brucehoult" createdAt="2025/05/30 08:19:02" color="">}}




{{<matomeQuote body="「キャリーありの結果」と「キャリーなしの結果」だけじゃなくて、入力のwordごとにそのバリエーションがあるんだよね...。<br>多分、コードにするのはそんなに難しくないと思うけど。" userName="dgoldstein0" createdAt="2025/05/30 06:42:59" color="">}}




{{<matomeQuote body="これでよく分からなかったのはさ：示されてるテクニックって、N個の値を足すときにN-1回起こるリップルキャリーを1回だけにするためのものに見えるんだよね。<br>キャリー処理は複雑になるけど、これで実際の足し算は並列にできる。<br>でもさ、そもそも入力の数を最初の段階で5つのregistersのセットに分割しなきゃいけないでしょ？<br>それも何か並列化できないと、結局トータルで得にならないんじゃないの？" userName="zahlman" createdAt="2025/05/30 19:13:32" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それ並列化できるじゃん。5つのレジスタはそれぞれ他の値に依存してないよ。" userName="adgjlsfhk1" createdAt="2025/05/30 19:20:15" color="">}}




{{<matomeQuote body="でも4から5レジスタに分けるとさ、特定の出力レジスタ用のビットが2つの元のレジスタから来る可能性があるけど？" userName="zahlman" createdAt="2025/05/30 23:52:20" color="">}}




{{<matomeQuote body="それは各処理に数個の命令が必要ってだけだよ［１］。5つの出力レジスタはそれぞれ最大で4つの入力レジスタのペアに依存するけど、互いには依存しないんだ。［１］左シフト、右シフト、ORとか。arm64みたいなISAなら2-＞1ファンネルシフト一つでもいけるよ。その後51ビットマスクでANDする。具体的なコード例は省略するけど、こんな感じ。" userName="brucehoult" createdAt="2025/05/31 02:37:27" color="#785bff">}}




{{<matomeQuote body="うん。NVidiaって会社がこの考え方を調べててね。いくつかの分野で結構いい結果が出てるみたいだよ。" userName="CamperBob2" createdAt="2025/05/30 18:44:25" color="">}}




{{<matomeQuote body="この法則はマルチノードのスーパーコンピューターやクラウドまでスケールするよ。10000コアとか使えるなら、オーバーヘッドなんて気にならないくらい小さいもんさ。" userName="rollcat" createdAt="2025/05/30 09:16:06" color="">}}




{{<matomeQuote body="いや、10000コア使うと逆にオーバーヘッドがヤバくなるんだよ。もし処理のオーバーヘッドが10％で並列化できる部分が90％だとするじゃん？そしたら2コアだと元の時間の55％になる。10コアで19％、100コアで10.9％ね。そこから9900コア足して10000コアにしても、実行時間はほとんど変わらない。コスト100倍で効果は微々たるものってこと。" userName="credit_guy" createdAt="2025/05/30 11:09:30" color="#ff5c5c">}}




{{<matomeQuote body="君たち二人さ、話してるオーバーヘッドの種類が違うよ。" userName="volemo" createdAt="2025/05/30 11:12:28" color="">}}




{{<matomeQuote body="抽象的に言うと、並列システムがスケールアップすると、出力の重複排除やマージのコストがメリットを上回るかもね。これは仮説だけど。例えばa-lifeみたいに分散させると、収集・分析レイヤーが一番コストかかるし遅い。共有頻度を上げると個々は遅くなるけど重複を避けられる。どこまでスケールさせるかは、解決しようとしてる問題によるだろうね。" userName="noduerme" createdAt="2025/05/30 10:40:53" color="#45d325">}}




{{<matomeQuote body="Amdahlがダメって言ってるよ。" userName="hinkley" createdAt="2025/05/30 09:25:48" color="#45d325">}}




{{<matomeQuote body="完全にx86_64でやってる人が、RISC-Vがキャリーフラグ省略したのは間違いじゃないってことを見事に証明してるね。" userName="brucehoult" createdAt="2025/05/30 05:25:22" color="">}}




{{<matomeQuote body="他にも、64ビットのlimb（桁）のままでやる別の方法があるんだ。全部uint64_t変数でやるんだよ。<br>s0 ＋＝ a0；<br>s1 ＋＝ a1；<br>s2 ＋＝ a2；<br>s3 ＋＝ a3；<br><br>c0 ＝ s0 ＜ a0； // RISC-V `sltu`<br>c1 ＝ s1 ＜ a1；<br>c2 ＝ s2 ＜ a2；<br><br>if （s1 ＝＝ -1） goto propagate0； // これは2^64回に1回しか実行されない<br>check_s2：<br>if （s2 ＝＝ -1） goto propagate1； // これもね<br><br>add_carries：<br>s1 ＋＝ c0；<br>s2 ＋＝ c1；<br>s3 ＋＝ c2；<br>goto done；<br><br>propagate0： c1 ＝ c0； goto check_s2；<br><br>propagate1： c2 ＝ c1； goto add_carries；<br><br>done：<br><br>ここでのキモは、あるlimbの合計が全部1にならない限り、その桁からのキャリーアウトはキャリーインに依存しないで、その桁の元の足し算でキャリーが出たかどうかだけで決まるってことなんだ。<br>もし合計が全部1になったら、その時はキャリーアウトはキャリーインと同じになるんだよ。<br>これを条件分岐（ほとんど予測が外れない、つまり分岐しないと予測される）で表現すると、CPUは命令のブロックを完全に並列に実行できるはずだよ。ただし、複数の条件分岐が同じクロックサイクルで予測できる場合だけどね。<br>2^64回に1回はめちゃくちゃ遅くなるだろうね。<br>4-wideのマシンで4limbの数値なら、”adc”と比べてメリットはないけど、例えば8-wideのマシンで8limbの数値なら、本当に効果が出てくるよ。<br>今のx86_64だとそんなに助けにならないと思うけど、AppleのM*シリーズとかなら効くかもね。M1でさえ8-wideだけど、Arm ISAを回避するのがちょっと難しいかも。<br>Tenstorrentの8-wide RISC-V Ascalonプロセッサが今年後半か2026年初頭に出たら、本当にどうなるか分かるだろうね。VentanaとかRivos、XiangShanみたいな他のもね。<br>ワイドなSIMDでもっとうまくいくよ、もし速い1-レーンシフト（RISC-VではSlideupって呼ばれてる）があればね。" userName="brucehoult" createdAt="2025/05/30 05:59:40" color="#ff5c5c">}}




{{<matomeQuote body="いいね、でもこれ暗号コード（多倍長整数を使う主な分野の一つだよね）で使うなら、秘密のデータが分岐に関わるのは普通サイドチャネル攻撃のリスクになるってことを覚えておいてね。<br>確かに、ランダムなデータなら2^64回に1回しか起こらないけど、それに依存してるなら、攻撃者がもっと頻繁に起こせるデータを選べるかどうかも考えないといけないよ。<br>もし制御フローなしでcmovみたいなのに置き換えられるなら、多分そっちの方が安全だね。<br>例えば c1 ｜＝ c0 ＆ seq(s1，-1) or so みたいに。<br>ただ、コンパイラがそれを分岐に変えたりしないか確認しないといけないけどね。<br>まあ、それはデータ依存性を増やしちゃうんだけどさ…" userName="less_less" createdAt="2025/05/30 18:09:58" color="#ff33a1">}}




{{<matomeQuote body="そうだね、暗号には定時実行が必要だけど、これはすごく帯域の狭いチャネル（情報漏洩経路）じゃないとダメだね！<br>cmovはadcと同じ直列化の問題を抱えるけど、キャリーがないマシンだと、<br>add s，a，b； sltu co，s，a； add s，s，ci； sltu t，s，ci； or co，co，t<br>みたいな分かりやすい方法よりはマシかもしれないね。" userName="brucehoult" createdAt="2025/05/31 04:59:56" color="#ff5c5c">}}




{{<matomeQuote body="こう書きたいんだと思うよ：<br>if （s1 ＝＝ -1）<br>     c1 ＝ c0；<br>  if （s2 ＝＝ -1）<br>     c2 ＝ c1；<br><br><br>これらはx86だと条件付き移動（conditional moves）になることがあるんだ。<br>俺はよく、RISC-Vは比較して分岐するんじゃなくてIF命令を実装すべきだったと思ってたんだよ。<br>IFは次の命令を条件付きで実行させるけど、ISAレベルでフラグレジスタはいらないんだ。<br>分岐とジャンプだけ条件付きにすればいいと思ってたけど、実際には条件付きmov、load、store全部が実コードでめっちゃ便利だって分かったんだよね。" userName="phkahler" createdAt="2025/05/30 13:38:18" color="">}}




{{<matomeQuote body="問題は、俺が知る限り、条件付き移動はc0からc1、c1からc2へのデータ依存性を導入しちゃうってことなんだよ。それが俺たちが取り除こうとしてるまさにそのことなんだ。<br>cmovは定時実行命令であって、条件分岐みたいな投機的（speculated）な命令じゃないんだよ。<br>俺がやったことの最大のポイントは、二つの条件分岐が予測されない（not taken）と予測されるってことなんだ。<br>だからCPUは99．9999999999999999946％の時間は、”c1 ＝ c0”とか”c2 ＝ c1”みたいな直列の依存性を導入する命令をほとんど見ないんだよ。" userName="brucehoult" createdAt="2025/05/30 14:30:24" color="#ff5733">}}




{{<matomeQuote body="それは実装もプログラミングもかなり大変そうだね。<br>例えば、IFと次の命令の間に割り込みが入ったらどうなるの？条件付きの状態を読み書きするためにCSRを追加する必要があるね、ベクター制御のCSR（vstartとか）みたいに。<br>その余計な複雑さがメリットに見合うとは思えないな。<br>最近の分岐予測器はすごく優秀だし、ほとんどの分岐は予測しやすいよ。" userName="IshKebab" createdAt="2025/05/30 21:29:33" color="#ff33a1">}}




{{<matomeQuote body="キャリーセーブ加算よりadd-with-carryを使った加算の方が悪いケースもまだたくさん残ってるよ。<br>2つのマルチワード加算アルゴリズムはどっちも他方を置き換えられない、どっちにも使いどころがあるんだ。<br>だからADC/SBB命令はまともなISAには含まれてるんだよ、追加するコストは無視できるくらいだからね。<br>専用のフラグレジスタは必要ないよ、一部のISAはキャリー/ボローフラグを汎用レジスタに入れて使ってるし。<br>キャリーがないのはRISC-Vの一番悪い特徴ってわけじゃないよ。<br>もっと悪いのは整数オーバーフローフラグがないことだね。<br>安全な方法で書かれてるって主張するどんなプログラムにも必須の、整数オーバーフローを検出するためのソフトウェアでの回避策は、キャリーがない場合の回避策よりも達成可能な性能をはるかに低下させちゃうんだ。" userName="adrian_b" createdAt="2025/05/30 09:54:20" color="#ff5733">}}




{{<matomeQuote body="”安全な方法で書かれてるって主張するどんなプログラムにも必須の、整数オーバーフローを検出するためのソフトウェアでの回避策は、達成可能な性能をはるかに低下させちゃうんだ”<br>それは馬鹿げてるよ。<br>もっと良い方法は、自分のアルゴリズムがオーバーフローしないようにすることだね。<br>オーバーフローを検出したってことは、コードがSTOPしないといけないってことで、それは大抵安全じゃないんだ。<br>コードのどこかでオーバーフローをどう処理するか分かろうとする条件付き実行なんて、正気の沙汰じゃないよ。<br>もう一つの問題は、フラグがASMより上のどの言語からもアクセスできないってことだね。<br>Cの視点から見ると、フラグなんて存在しないんだ。" userName="phkahler" createdAt="2025/05/30 13:45:55" color="">}}




{{<matomeQuote body="標準Cにはフラグへの直接アクセスはないけど、gccやclangなら-ftrapvを付けてコンパイルすれば、符号付き整数の演算をオーバーフローチェックできるよ。<br>または、__builtin_add_overflowとかを使えば、その方法でオーバーフローフラグにアクセスできるね。<br>Rustのデバッグビルドは符号付き・符号なし整数オーバーフローでトラップするし、リリースビルドでもそうできるんだ。<br>全ての”a＋b”、”a-b”、”a＊b”が全てのコードベースでオーバーフローしないって形式的に証明できれば素晴らしいだろうけど、それがかなり非現実的だってことは分かると思うよ。<br>（そして本当に、そうなったら素晴らしいんだけどね！コンパイル時にサイズが制限される整数で、足し算ごとにサイズが増えるやつを考えたことがあるんだけど、掛け算はそれにはあまり向いてないし、アキュムレータに足し続けるループも持てないことになるんだ。<br>これは本当に非自明な問題だよ—オブジェクトのリストをループで回ってそのサイズを合計するのは大丈夫だと思うかもしれないけど、リストが同じ巨大なオブジェクトを何度も参照してると、比較的簡単にオーバーフローしちゃうから、それさえ抽象化するのは無理なんだ。）" userName="dzaima" createdAt="2025/05/30 17:55:49" color="#ff5733">}}




{{<matomeQuote body="ああ、それと、C23で標準のckd_addとかckd_subとかckd_mulが追加されたよ、演算がオーバーフローしたかどうかの真偽値（つまり__builtin_add_overflowの標準版）を得るためにね！" userName="dzaima" createdAt="2025/05/31 01:16:20" color="">}}




{{<matomeQuote body="これ全部、C言語がキャリーフラグを省略してるせいで、実際にはキャリーの目的で使われることがマジで少ないってことにつながるんだよね。" userName="pjc50" createdAt="2025/05/30 08:50:13" color="">}}




{{<matomeQuote body="でもさ、Cには今、_BitIntがあるんだよ。" userName="immibis" createdAt="2025/05/30 12:46:49" color="">}}




{{<matomeQuote body="うーん。多分、typedefで隠されるように設計されてるんじゃないかな。ビット数は定数じゃなきゃダメだから、マジで新しい言語機能ってわけじゃないんだよね。ただ、Xが固定値に制約されないuintXX_tの別の書き方ってだけ。もしコンパイラに1メガバイトの整数とか要求したら、それは君のせいだよ。" userName="immibis" createdAt="2025/05/31 21:00:41" color="">}}




{{<matomeQuote body="ハハ、やっぱ俺だけじゃなかったんだ、”so what’s all the risc5 gmp fuss was about, if carry flag is slow anyway?”って思うの。" userName="NooneAtAll3" createdAt="2025/05/30 08:43:16" color="">}}




{{<matomeQuote body="2021年、キャリー逐次処理は広帯域マシンで限界と主張。当時はRISC-V/GMP未整備。今は変わり、RISC-VボードでGMPベンチ試し、同等µarch/クロックでSiFive U74はArm A53並、SiFive P550はArm A72より良かった。批判エミュレーションでもこの結果。<br>8ワイドOoO RISC-Vコア（Tenstorrent Ascalon等）登場が楽しみ。" userName="brucehoult" createdAt="2025/05/30 14:50:13" color="#785bff">}}




{{<matomeQuote body="この’radix trick’はデータ構造にも使えるんだって。Okasakiの’Purely Functional Data Structures’って本に良い例があるよ。" userName="eru" createdAt="2025/05/30 09:04:48" color="">}}




{{<matomeQuote body="数ヶ月前にこの記事読みたかった！任意基数へのエンコード・デコードで、キャリーがバッファ全体に波及して劇的に遅くなるって結論にたどり着いたんだ。俺の解決策も、バッファをチャンク分けしてキャリー処理用の余裕を残すって点でこのトリックと共通点があるかも。少しストレージとか使うけど計算は節約。キャリーをプールして後で解決できたら最高だね。" userName="hdjrudni" createdAt="2025/05/30 20:55:45" color="#ff5733">}}




{{<matomeQuote body="HNのタイトルを編集しないっていうガイドラインはさておき、こういう小さな主張を過度に広げるクリックベイト的なタイトル嫌いなんだよね。この記事のタイトルはこうあるべきだった：”The radix 2^51 trick to adding 64-bit integers on *some* x86 architectures in parallel without slowing the pipeline due to dependencies on carry”" userName="smcin" createdAt="2025/05/30 23:16:42" color="">}}




{{<matomeQuote body="キャリーが加算を並列化しにくくするだけじゃないって面白いよね。キャリーなしの二進加算はXOR。XORのSubset Sum問題 - XORで目的のターゲットになる部分集合を見つけるやつ - はPに属するけど、キャリーありのちゃんとしたSubset Sum問題はNP完全なんだ。" userName="t0010q" createdAt="2025/05/30 13:00:58" color="#38d3d3">}}




{{<matomeQuote body="これってCとかC++のコンパイラでこの最適化入れても大丈夫なの？" userName="foota" createdAt="2025/05/30 05:23:08" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、as-ifルールってのに従ってるから大丈夫だよ。外から見て違いは分からないし。例えば、32とか16ビットの環境で64ビットの足し算をループの中でやるのをサポートするのと同じ感じかな。" userName="addaon" createdAt="2025/05/30 05:42:07" color="#ff5733">}}




{{<matomeQuote body="思いがけない最適化って、タイミングみたいなサイドチャネルの穴を作ることがあるんだよね。この記事のやつは大丈夫だけど、”どれを使うな”ってコンパイラにどう伝えるかってのはまた別の大きな話題だよね。" userName="rollcat" createdAt="2025/05/30 09:36:30" color="#38d3d3">}}




{{<matomeQuote body="C++の規格ではサイドチャネルを作ることを禁止してないんだよね。だから（コンパイラが最適化していいかって）質問の答えはイエスだよ。" userName="Denvercoder9" createdAt="2025/05/30 11:42:37" color="">}}




{{<matomeQuote body="UB（未定義動作）がこんなにあるのに、一体どうやってセキュアとか安全性が超大事なコードとか書いてきたんだろうね？" userName="rollcat" createdAt="2025/05/30 14:03:00" color="">}}




{{<matomeQuote body="これはUBじゃないし、他のどんな言語でもこの最適化はできるよ。君が推してるあの言語だってね。" userName="konstantinua00" createdAt="2025/05/31 06:42:49" color="">}}




{{<matomeQuote body="C++で？まぁ、ほぼできてないよね。" userName="wat10000" createdAt="2025/05/30 17:47:53" color="">}}




{{<matomeQuote body="C++ってuint256型をそのまま使えるの？" userName="nine_k" createdAt="2025/05/30 05:37:45" color="#785bff">}}




{{<matomeQuote body="Cだとコンパイラが_BitInt(256)をサポートしてれば使えるけど、サポート範囲は決まってなくて256が保証されるわけじゃないんだ。アーキテクチャとかコンパイラによって違うみたい。例えばclangはRV64だと128まで、x64_64なら256いけるとか。C++でも状況は似てる。だからx86_64で256ビットやろうとすると、結局clangもgccもシンプルな命令をいっぱい出すコードになるっぽいね。" userName="Arnavion" createdAt="2025/05/30 07:19:01" color="#ff5733">}}




{{<matomeQuote body="最近のCPUだと、キャリービットによるデータハザード以外でadcがaddより本質的に遅いなんてことは、マジで疑問だよ。記事のポイントがデータハザードだってのは分かってるから、これは本当にちょっとした細かい指摘なんだけどね。" userName="russdill" createdAt="2025/05/30 05:05:37" color="">}}




{{<matomeQuote body="uops.infoを見てみたけど、Alder Lakeでのaddとadcのレイテンシは両方1サイクルなんだってさ。でもスループット（小さい方が速い）が、addは0.20（1サイクルで5個）、adcは0.50（1サイクルで2個）なんだ。だから記事の内容は合ってるみたいだよ。<br>これは、addがポート0、1、5、6、＆Bで使えるのに対して、adcはポート0＆6でしか使えないのが原因みたい。<br>だから、個別の命令としては悪くないんだけど、アウトオブオーダー実行（これがもっと現実的）だと、依存してない命令でも遅くなっちゃうんだって。" userName="john-h-k" createdAt="2025/05/30 05:18:01" color="#ff5733">}}




{{<matomeQuote body="Intelは新しいAPX命令も導入する予定らしいね。これには、既存の命令と同じだけどフラグをセットしない命令がいっぱい含まれてるらしいよ。これを追加する唯一もっともな理由は、パフォーマンスのためとしか思えないね。" userName="phkahler" createdAt="2025/05/30 13:54:55" color="">}}




{{<matomeQuote body="これは、フラグ命令のハードウェアレベルでの実際の依存関係だけが原因じゃない（それも要因だろうけど）、コードレイアウトにも大きく影響するんだ。<br>例えばArm64だと、比較をしてから、他の操作をやって、後でその比較結果を使うことができるんだ。これはパイプラインとかOoOエンジンにとってすごく良いことなんだ。<br>でも、x86_64のほとんどの命令はフラグを書き換えるから、これができないんだ。だから、jcc／setcc命令を比較のすぐ後に詰め込まないといけなくて、これはコンパイラとかOoOエンジンには優しくないんだよね。" userName="john-h-k" createdAt="2025/05/30 14:23:28" color="#45d325">}}




{{<matomeQuote body="いや、OoOの場合はそこまで気にしなくて良いと思うんだよね。CPUはバイナリにある順番通りじゃなく実行できるんだから。インオーダー実装の方が、そういうのがもっと重要になるんじゃないかな。<br>それに、比較とジャンプが隣接してる場合は、一つのuopに融合されるんだ。これはIntelもAMDもApple Siliconもみんなやってることだよ。" userName="dzaima" createdAt="2025/05/30 22:19:29" color="#ff5c5c">}}




{{<matomeQuote body="追記：BポートはIntelのドキュメントだと全部ポート11のことだって後で知ったよ。uops.infoがポートを1文字にするために16進数にしてたんだね。" userName="john-h-k" createdAt="2025/05/30 15:43:19" color="">}}




{{<matomeQuote body="君の言う通りだよ。同じALUでもできるのは確かだ。でも、キャリーフラグへのデータ依存性が、CPUの視点から見ると全く違う命令にしてしまうんだ。データ依存が3つになるんだからね。CPUとしては、命令を分けて扱った方が都合が良いんだ。" userName="superjan" createdAt="2025/05/30 07:05:05" color="#785bff">}}




{{<matomeQuote body="大きなかけ算は畳み込みでやって、後で繰り上がりを処理できるよ。畳み込みはFFT、ポイントワイズ乗算、逆FFTでできるんだけど、これだと普通のかけ算のO(n^2)より速いO(n log n)になるんだ。各桁のビットは小さくていいけど、繰り上がりが多いから桁数とか浮精度にもよるかな。大規模なかけ算ってだいたいFFTの仲間を使ってるんだよ。GIMPS（the Great Internet Mersenne Prime Search）関連でこれを学ぶのが超楽しかったな。GIMPSだとDWTっていうFFTの変種を無理数基底で使うんだけど、Mersenne prime候補のLucas testで必要なmod 2＾n－1がタダで手に入るんだよね。" userName="nickcw" createdAt="2025/05/30 09:43:11" color="#45d325">}}




{{<matomeQuote body="GIMPSは2つのオペランドの掛け算じゃなくて、二乗だけで済むって点も面白いね。" userName="phkahler" createdAt="2025/05/30 13:58:07" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
