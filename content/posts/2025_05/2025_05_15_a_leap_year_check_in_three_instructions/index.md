+++
date = '2025-05-15T00:00:00'
months = '2025/05'
draft = false
title = 'たった３命令でうるう年判定！'
tags = ["プログラミング", "アルゴリズム", "最適化", "うるう年", "コンピュータサイエンス"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> たった３命令でうるう年判定！

引用元：[https://news.ycombinator.com/item?id=43999748](https://news.ycombinator.com/item?id=43999748)




{{<matomeQuote body="” return ((y * 1073750999) & 3221352463) ＜= 126976; ＞ これどうやって動くの？ 答えは驚くほど複雑だよ．”<br>って引用されてるけど，このアルゴリズムの説明が複雑だって言われても誰も驚かないと思うけどね．" userName="_heimdall" createdAt="2025/05/16 01:34:04" color="">}}




{{<matomeQuote body="” Note that modern compilers like gcc or clang will produce something like is_leap_year2 from is_leap_year1, so there is not much point in doing this in C source, but it might be useful in other programming languages．”<br>って書いてあるけど，コンパイラができる最適化ってマジすごいわ．<br>実際，util-linuxの最新版のcalのCソースコードはシンプルだよ：<br>return ( !(year % 4) && (year % 100) ) || !(year % 400);<br>https://github.com/util-linux/util-linux/blob/v2.41/misc-uti..." userName="divbzero" createdAt="2025/05/16 04:49:18" color="#785bff">}}




{{<matomeQuote body="でもこれ間違ってるよ．Julian calendarからGregorian calendarに切り替わった特定の年以降の日付しか表せないんだ！<br>これについてもっと知るには，曜日の計算([1])を読んで実装してみるのがおすすめだよ．そうすれば，僕と一緒に人間のカレンダーと格闘する特別な狂気地獄に参加できるよ．<br>そして，1582年10月4日（木）から1582年10月15日（金）の間の日付のテストケースを実装すべきだね．[1] https://en.m.wikipedia.org/wiki/Determination_of_the_day_of_..." userName="cookiengineer" createdAt="2025/05/16 09:47:47" color="#785bff">}}




{{<matomeQuote body="” the specific year”<br>問題は「特定の」年っていつ？ イギリスはずっと後まで”old-style”の日付を使ってたよ．ソフトウェアでこの難しい問題を解決しようとせず，受け取った古い日付にはそれぞれ正しいカレンダーを注釈で付け加えるのがいいと思う．分野によってはproleptic Gregorian calendarかもしれないしね．（どうやって正しいカレンダーを決めるかって？ コンテキストを注意深く調べるんだよ！ 残念ながら，日付を書いた人はめったにそれを示してくれなかったし，後から読む人はカレンダーをめちゃくちゃにしがちだね．年の始まりの変更も大変だし．せめて曜日があれば，それが指標になるかもね．）" userName="LegionMammal978" createdAt="2025/05/16 16:07:40" color="#45d325">}}




{{<matomeQuote body="完全なコードはこれだよ：<br>static int leap_year(const struct cal_control *ctl, int32_t year)<br>{<br> if (year ＜= ctl-＞reform_year)<br>  return !(year % 4);<br> return ( !(year % 4) && (year % 100) ) || !(year % 400);<br>}<br>reform_yearは特定のコンテキストでGregorian calendarが採用された年だよ（デフォルトはGBやUSが採用した1752年）．だからJulian datesにも対応してるんだね．" userName="voxic11" createdAt="2025/05/16 16:13:38" color="#ff5733">}}




{{<matomeQuote body="calには1582年の改革日を使うオプションはないけど，Great Britainでの1752年の採用には正しく対応してるみたいだよ：<br>$ cal 9 1752<br>     September 1752<br>  Su Mo Tu We Th Fr Sa<br>         1  2 14 15 16<br>  17 18 19 20 21 22 23<br>  24 25 26 27 28 29 30" userName="divbzero" createdAt="2025/05/16 16:48:07" color="#ff5c5c">}}




{{<matomeQuote body="でも`ncal`ならそのオプションがあるよ．これは当時の”Italy”ではなかったけど，「イタリア」での1582年10月はこうなる：<br>$ ncal -sIT 10 1582<br>      October 1582      <br>  Mo  1 18 25         <br>  Tu  2 19 26         <br>  We  3 20 27         <br>  Th  4 21 28         <br>  Fr 15 22 29         <br>  Sa 16 23 30         <br>  Su 17 24 31<br><br>Franceは対応するのに数ヶ月かかったみたいだね（あるいは知るのに時間がかかったか）：<br>$ncal -sFR 12 1582<br>      December 1582     <br>  Mo     3 20 27      <br>  Tu     4 21 28      <br>  We     5 22 29      <br>  Th     6 23 30      <br>  Fr     7 24 31      <br>  Sa  1  8 25         <br>  Su  2  9 26         <br> <br>`ncal -p`で受け付ける国コードのリストが見れるよ．（これらは今の国の名前だから，say, Germanyとかは歴史的にちょっと違うけどね．）<br>残念ながら，18世紀初頭にSwedenがした変なことには対応してないんだ：https://en.wikipedia.org/wiki/Swedish_calendar" userName="madcaptenor" createdAt="2025/05/16 18:18:12" color="#ff5733">}}




{{<matomeQuote body="linuxのやつの方が分かりやすくて好きだな．だって，3つの連続したチェックで，最後の2つの条件が逆になってて，さらにデフォルトのリターンがあるなんて，デバッグするハメになったらマジで頭おかしくなりそうじゃん．" userName="sigmoid10" createdAt="2025/05/16 08:14:26" color="">}}




{{<matomeQuote body="3分くらい”this is not right”って思ったんだけど，`if ((y % 25) != 0) return true;` が実は0と違うか（後から考えると，世紀の年が400で割れない限りデフォルトでうるう年じゃないんだから，これも理にかなってるけどね）をチェックしてるって気づいたんだ．" userName="darkwater" createdAt="2025/05/16 08:45:45" color="">}}




{{<matomeQuote body="こういう意味不明な魔法の数字最適化，大好きだよ．これ見るたびに，昔assemblyでインナーループ全部書いてた頃に，どれだけこういう最適化見逃したんだろうって思うね．<br>誰かこういうコレクション知らない？" userName="qingcharles" createdAt="2025/05/15 22:22:22" color="#ff5c5c">}}




{{<matomeQuote body="技術ハックや最適化関連のリンク集だよ！<br>Bit Hacksリスト、CMPマクロ（＃define CMP（X, Y） （（（X） ＞ （Y）） − （（X） ＜ （Y））））の詳細、signum関数、超最適化演算、OpenSolaris由来ビットマクロなど盛りだくさん。楽しめるはず！<br>https://graphics.stanford.edu/~seander/bithacks.html<br>https://www.cs.cornell.edu/courses/cs6120/2022sp/blog/supero...<br>https://www2.cs.arizona.edu/~collberg/Teaching/553/2011/Reso...<br>https://github.com/freebsd/freebsd-src/blob/master/sys/cddl/..." userName="ryao" createdAt="2025/05/16 00:18:24" color="#45d325">}}




{{<matomeQuote body="この手のネタなら、Henry S. Warren Jr’s Hackers Delightって本まるごと見るといいよ。”three valued compare function”は2章にあるよ。" userName="JdeBP" createdAt="2025/05/16 03:03:50" color="#ff5c5c">}}




{{<matomeQuote body="さっきのCMPマクロ、コンパイラが演算子のバージョン知ってないとダメなんじゃない？例えばC++で文字列とかで＜や＞がオーバーロードされてたら動かないかも？" userName="eru" createdAt="2025/05/16 07:49:35" color="">}}




{{<matomeQuote body="C向けに言ったけど、C++でもインライン化される単純なオーバーロードならいけるはず。godboltの例も見せたよ：https://godbolt.org/z/nGbPhz86q<br>複雑な比較とかインライン化されない場合は期待できないけどね。" userName="ryao" createdAt="2025/05/16 18:25:51" color="#ff5c5c">}}




{{<matomeQuote body="長さだけじゃなくて、文字列の辞書順比較とかも考えてたんだ。そうだね、賢いコンパイラか単純な比較なら最適化されるかもね。" userName="eru" createdAt="2025/05/17 03:42:58" color="">}}




{{<matomeQuote body="辞書順比較の一部にCMP使えるけど、演算子オーバーロードで使うと最適化されるかは微妙かも。やっぱり数値比較で使うのが一番だと思うな。" userName="ryao" createdAt="2025/05/18 19:18:47" color="#785bff">}}




{{<matomeQuote body="手動で定義できるのはもちろん。コンパイラがどれだけ自動でやってくれるかの話をしてたんだよ。" userName="eru" createdAt="2025/05/19 06:22:47" color="">}}




{{<matomeQuote body="コンパイラは最適化より先に、そのへん解決するはずだよ。" userName="trollbridge" createdAt="2025/05/16 11:00:45" color="">}}




{{<matomeQuote body="例えば文字列の辞書順比較とかで、それが解決されるの見てみたいな。" userName="eru" createdAt="2025/05/17 03:43:18" color="">}}




{{<matomeQuote body="あと、これもお馴染みだよね：https://en.wikipedia.org/wiki/Fast_inverse_square_root" userName="kmoser" createdAt="2025/05/16 08:02:56" color="">}}




{{<matomeQuote body="それ近似だよね．もし近似で大丈夫なら，君が気に入るかもしれない小ネタがあるよ．cosf(i ＊ C) とか sinf(i ＊ C) を呼ぶループ内で，iが1ずつ増えてCが定数の場合，ループの外でcosf()とsinf()を1回（iが0か1以外から始まるなら2回）呼んで，角度加算公式を使ってループの中で掛け算と足し算で累積できるんだ．これやるとループがめっちゃ速くなるよ．<br>cosf()かsinf()のどっちかしかいらなくても，多くのCPUは両方一緒に計算するから，もう片方を取るのはタダみたいなもんだね．単精度（single precision）の値しかいらなくても，エラーを減らすために倍精度（double precision）でやると良いよ．<br>この小ネタは，llama 3とかで推論に使われてるRoPEって相対位置エンコーディングの計算を速くするのに使えるんだ．僕もこれやって，目に見える速度アップを確認したけど，推論全体から見るとごく一部の計算だから，改善としては小さかったかな．" userName="ryao" createdAt="2025/05/16 15:57:49" color="">}}




{{<matomeQuote body="Henry S． Warren， Jr．の“Hacker’s Delight”っていう本があるよ．これ見てみて．https：／／en．wikipedia．org／wiki／Hacker’s_Delight" userName="owl_vision" createdAt="2025/05/15 22:55:25" color="#38d3d3">}}




{{<matomeQuote body="supercompilationっての見てみるべきだよ．" userName="tylerhou" createdAt="2025/05/15 22:48:36" color="#ff5c5c">}}




{{<matomeQuote body="superoptimizationとも呼ばれることがあるね．記事にあるZ3みたいなSMT solversを使うことも多いよ．" userName="mshockwave" createdAt="2025/05/16 05:08:45" color="#785bff">}}




{{<matomeQuote body="昔はそれを見逃してたわけじゃないんだよ．当時は最適化じゃなかったんだ．掛け算が本当に高価だったからね．" userName="masfuerte" createdAt="2025/05/15 22:26:03" color="">}}




{{<matomeQuote body="このワード長（word length）の掛け算って明確にすべきだね．昔の（コンテキストからすると32-bit ALU時代以前のアセンブリ言語で書くような）時代に掛け算が本質的に高価だったり違う操作だったわけじゃないんだ．二進乗算は数千年変わってないよ．古代エジプト人は5千年前からALUが今日やってるのと同じ二進整数乗算ロジックを使ってたんだ．<br>問題は，ALUの高速ハードウェア乗算操作のレジスタのワード長があんまり長くなかったってこと．だから，もっと広いワードの掛け算は，（たとえば）基数256で長い掛け算をするライブラリ関数でやらなきゃいけなかったんだ．<br>だから，記事にあるコードは「３命令」じゃなくて，コンパイラが長いワードの掛け算，比較，ビットごとのANDのために使ってた内部ヘルパーライブラリ関数を3回呼ぶことになっただろうね．オリジナルの3回の剰余演算のための内部ヘルパー関数呼び出しと比べて特に最適化されてるわけでもなく，実際には記事の途中で紹介されてるビットいじり版の2のべき乗の剰余（下位バイトだけ見ればいいやつ）よりも効率悪かったかもね．あれなら32-bitの剰余演算のうち2つはライブラリ関数を呼ばなくて済むから．<br>Microsoft BASICのランタイムライブラリのヘルパー関数名を即答できる人にはボーナスポイントあげよう．xyrって頭から完全に忘れられたのは良いことかもしれないね．（ー：）僕の記憶だと，全部“B＄”で始まってたな．" userName="JdeBP" createdAt="2025/05/16 05:00:12" color="#ff33a1">}}




{{<matomeQuote body="ほとんどの8-bit CPUにはハードウェア乗算命令さえなかったんだ．たとえば6502とかZ80で掛け算するには，繰り返し足すしかなかったんだよ．2のべき乗を掛けるのは左シフトでできるから，シフトと足し算や引き算を切り替えながらもっと大きい結果を得られたんだ．ただし，これもまた，古いCPUでは一度に1ビットずつしかシフトできなかったんだよね，可変ビット数シフトじゃなくて．<br>それに，ハードコードされた値を掛ける場合（シフトと足し算で実装できる）と，２つの変数を掛ける場合（アルゴリズムでやるしかない）でも違いがあるね．<br>8086には乗算命令があったけど，マイクロコード内のループとして実装されてて，乗数を1ビットずつ見て被乗数を足したり足さなかったりしてたんだ．詳細はhttps：／／www．righto．com／2023／03／8086-multiplication-microcode．．．を見てね．固定値の掛け算は，シフトと足し算を使った方が速いこともあったんだ．<br>プロトタイプのARM1には乗算命令がなかったんだ．アーキテクチャにはバレルシフターがあって，オペランドの一つを任意のビット数シフトできるんだ．固定値の掛け算なら，2のべき乗，（2のべき乗＋1），または（2のべき乗ー1）を単一命令で計算できたんだよね．後者のために，ARMにはSUB（減算）命令（rd ：＝ rs1 ー Operand2を計算）とRSB（逆減算）命令（rd ：＝ Operand2 ー rs1を計算）の両方があるんだ．第二オペランドはバレルシフターを通るから，‘RSB R0， R1， R1， ＃4’みたいな命令を書けるんだ．これは‘R0 ：＝ （R1 ＜＜ 4） ー R1’，つまり‘（R1 ＊ 16） ー R1’，つまりR1 ＊ 15って意味ね．<br>ARMv2でMULとMLA（MuLtiply and Accumulate）命令が追加されたんだ．ハードウェアARM2の実装はBoothのエンコーダーを使って2ビットずつ掛けてて，32ビットで最大16サイクルかかってた．残りのビットが全部0なら早めに終了できたけどね．<br>後のARMコアではオプションでより広い乗算器（‘ARM7TDMI’の‘M’がそれ）を実装してて，一度にもっと多くのビットを掛けられるようになったから，より少ないサイクルで実行できたんだ．ARM7TDMIは8ビットで最大4サイクル（これも早期終了あり）で完了したと思う．最新のARMコアは64ビットの掛け算を単一サイクルでできるよ．" userName="kruador" createdAt="2025/05/16 11:52:16" color="#ff5733">}}




{{<matomeQuote body="ベースのRISC-V命令セットにはハードウェア乗算命令は含まれてないんだ．ほとんどの実装にはそれを提供するM（または関連）拡張が含まれてるけど，必要ないプロセッサを構築するなら，含める必要はないんだよ．" userName="cbm-vic-20" createdAt="2025/05/16 12:08:46" color="#785bff">}}




{{<matomeQuote body="昔のコードの掛け算についてだね。昔と変わらないって言うけど、Ancient Egyptiansより漸近的には速いアルゴリズム（例えばKaratsuba algorithm）が今はあるんだ。詳しくはこちらのWikipedia見てね。" userName="eru" createdAt="2025/05/16 07:51:27" color="#ff33a1">}}




{{<matomeQuote body="Binary multiplicationは何千年と変わってないって言うけど、現代のALUでの掛け算は全然違うよ。例えばThe Pentiumはbase-8とかBooth’s algorithm使ってるから、足し算じゃなくて引き算もしてるんだ。" userName="kens" createdAt="2025/05/16 16:39:17" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="関係する話でComputerphileの動画があるんだけど、計算時間を人間時間に例えてて面白いんだ。コスト感覚とかbranchingの重要性がよくわかるよ。原子を例えるのと似てるね。見てみて！ https://youtube.com/watch?v=PpaQrzoDW2I" userName="godelski" createdAt="2025/05/16 01:28:29" color="">}}




{{<matomeQuote body="あと割り算はもっとひどかったね。（足し算1サイクル、掛け算10サイクル、割り算60サイクル）" userName="kurthr" createdAt="2025/05/15 22:33:20" color="">}}




{{<matomeQuote body="それはそうだけど、modって割り算だよね？それとも違う？だから新しい魔法の数字バージョンの方が速いんじゃないかな。32 bit intがサポートされてるならね。ごめん、これ難しくて分かんないや。" userName="genewitch" createdAt="2025/05/15 22:45:53" color="">}}




{{<matomeQuote body="多くのコンパイラは、定数での割り算を逆数を掛けてシフトするトリックで計算するんだ。そうすれば定数でのmodも派生でできて、普通の割り算より速くなることが多いよ。" userName="bobmcnamara" createdAt="2025/05/16 02:39:54" color="">}}




{{<matomeQuote body="割り算は今でも遅いよ。このGitHubリポジトリ見てみて：https://github.com/ridiculousfish/libdivide" userName="ryao" createdAt="2025/05/16 00:58:14" color="">}}




{{<matomeQuote body="僕が考えてるのは、グラフィックレンダリングとかの複雑な計算で、全ての割り算をビットシフトとかboolean opsに置き換えるような例のことだよ。" userName="qingcharles" createdAt="2025/05/15 23:03:16" color="">}}




{{<matomeQuote body="あとパイプライン処理が無かった頃は、条件分岐はもっと安かったね。" userName="Someone" createdAt="2025/05/16 19:08:43" color="">}}




{{<matomeQuote body="記事のbit-twiddlingのセクション読んでて、『ソルバー使えないかな？』って思ったら、筆者さんがまさにそのアプローチを取っててビックリ！この記事、細かいところまでこだわってて最高だね！" userName="22c" createdAt="2025/05/15 22:51:40" color="">}}




{{<matomeQuote body="gcc とか clang ってさ、-O3 で最適化するとビット操作のすごい技使うみたいだよ。Godbolt のリンクにアセンブリコードの例があるよ。マジすごいよね。アセンブリコードを見ると、xor とか test とか imul とか ror とか cmp とか setbe とか使ってる。" userName="dahart" createdAt="2025/05/16 14:14:08" color="#ff5c5c">}}




{{<matomeQuote body="コンパイラって数学的なテクニックで簡略化するのめちゃくちゃ得意なんだよね。あの ZFS のコミットもさ、GCC の出力にヒントを得てできたんだ。証明するのに４ステップもかかったらしいよ。きっと GCC も同じようなプロセスでコードを生成してるんだろうね。" userName="ryao" createdAt="2025/05/16 19:38:52" color="#785bff">}}




{{<matomeQuote body="もし西暦６０００年より前のうるう年を知りたいなら、僕が作ったインタラクティブな計算ツールと可視化ツールがあるよ<br>[1] https://calculang.dev/examples-viewer?id=leap-year<br>機械語命令は３つより多いけど、何千回計算してもかなり速いんだ :)" userName="dndn1" createdAt="2025/05/15 23:10:08" color="">}}




{{<matomeQuote body="フィードバックありがとう！モバイルフレンドリーな新しいギャラリー作ったよ。追加するの忘れてたんだ。リストに加えるね！" userName="dndn1" createdAt="2025/05/16 21:49:24" color="">}}




{{<matomeQuote body="ビット操作トリックが好きなら、Hackers Delight と https://graphics.stanford.edu/~seander/bithacks.html を読むといいよ。パフォーマンスに効くこともあるけど、コードが読みにくくなることもあるから注意ね。乗算とマスクはよく使うトリック。最近の CPU は乗算が速いから使いやすいんだ。ビット操作って並列計算っぽいんだけど、プログラミングはちょっと難しいかも。数論とか必要になるやつもあるよ。" userName="nullc" createdAt="2025/05/16 06:25:13" color="#ff33a1">}}




{{<matomeQuote body="GPの言ってることは、偶数基数の数のシステム全部に当てはまるんだって（だから二進数とか十進数も）。" userName="dmichulke" createdAt="2025/05/16 09:25:24" color="">}}




{{<matomeQuote body="これめっちゃクールじゃん！ちょー細かいことだけど、これって命令じゃなくてオペレーションが3つなんだよね。x86だと4つになっちゃうし、ARMだと命令のエンコードでちょっと増えるんだって。コンパイラエクスプローラーのこれ見てみて。<br>https://godbolt.org/z/7ajYqbT9z" userName="npendleton" createdAt="2025/05/16 10:48:57" color="#38d3d3">}}




{{<matomeQuote body="setbとかretって、うるう年チェックそのものの一部じゃないって言い方もできるかもね。例えば、コンパイルで呼び出し元にインライン展開されたら、retはなくなるし、setbもcmpの結果から直接条件ジャンプ作れるから要らなくなるんだ。" userName="gpderetta" createdAt="2025/05/16 11:51:19" color="">}}




{{<matomeQuote body="ちょっと関連する面白い話。Lotus 123のバグ？たぶんわざとだよ。640Kに収めなきゃいけなくて、1900年を無視すると下位2ビット見ればうるう年か分かるから、めっちゃ速くて簡単。Lotusの人たちは過去の2ヶ月くらい間違っててもいっかって思ったんだろうね。Basicの人たちはちゃんとやりたかったから、エポックを1日前にずらしたみたいだよ。<br>https://www.joelonsoftware.com/2006/06/16/my-first-billg-rev..." userName="ReptileMan" createdAt="2025/05/16 08:00:50" color="#ff5733">}}




{{<matomeQuote body="面白いね。著者は『0が抜けてる』って言ってるけど、分かってるじゃん…。年0なんてないんだよ、紀元前1年の次が紀元1年。だから年0がうるう年かどうかなんてテストしても意味ないよね。" userName="usr1106" createdAt="2025/05/16 03:10:58" color="">}}




{{<matomeQuote body="年0はないからテスト無意味。それ、天文年数を使うなら違うよ。<br>https://en.m.wikipedia.org/wiki/Astronomical_year_numbering<br>特定の分野（歴史とか）以外だと、こっちが正しいやり方って言えるんじゃないかな。もしソフトがBCEを表示しなきゃいけないなら、内部的には天文年数で持ってて、表示するときにCE/BCEに変換するのが一番スマートだと思うな。" userName="skissane" createdAt="2025/05/16 03:16:15" color="#45d325">}}




{{<matomeQuote body="天文学者は1582年より前はJulian calendar（年0も含む）、1582年より後はGregorian calendarを使う。それじゃ、1582年のときはどうなるの？（ごめん、今Wikiちゃんと書き直してる時間ないんだ）" userName="rf15" createdAt="2025/05/16 04:01:35" color="">}}




{{<matomeQuote body="Gregorian cutoverの話で、1582年10月4日の次は15日だったり、proleptic Gregorianがシンプルだけど天文学や歴史では注意が必要だったりするって話かな。特に1582年から1923年（Greeceが最後）の間はGregorianかJulianか明確にしないとダメって。Middle EastとかAsiaの国は最近Gregorianに変えたけど、Julianからじゃなかったし関係ないね。Eastern Orthodox ChurchはまだJulian使ってるところも多いし、Revised Julianなんてのもあるけど2800年にどうなるかねぇって感じ。" userName="skissane" createdAt="2025/05/16 05:46:55" color="#ff33a1">}}




{{<matomeQuote body="古い日付を文脈見ないで勝手に解釈するのイライラするよね。Julian vs. Gregorianだけじゃなくて、年の始めの日付も違ったりするし。全部の原資料の日付をそのまま扱えるソフトなんてないと思うよ。結局誰かの手作業で翻訳することになって、そこで間違えやすいんだよね。day of weekが分かればダブルチェックには使えるけどさ。" userName="LegionMammal978" createdAt="2025/05/16 16:27:08" color="#ff5733">}}




{{<matomeQuote body="記事の最初に戻ってみなよ、proleptic Gregorian calendarとastronomical year numberingを使うのがアルゴリズムの前提だって書いてあるよ。その制約がないと、leap year判定はlocale-dependentになってすごくcomplexになっちゃうんだよ。" userName="JdeBP" createdAt="2025/05/16 03:34:54" color="">}}




{{<matomeQuote body="ISO8601はyear 0を認めてるよ。それはastronomical calendarsだと1 BCのことなんだ。All the BC yearsは-1 offsetになるんだね。" userName="timewizard" createdAt="2025/05/16 04:55:50" color="">}}




{{<matomeQuote body="Interesting、standardsってrealityをignoreするんだ。At workで製品にどんなdate format使うか議論になったんだけど、regulatory expertはISO8601推してたんだ。俺は同意しなかった。だって8 millions Swedes以外どこにもused nowhere in daily lifeでしょ。15-Apr-2025の方がhuman errorがless proneだってvotedしたんだ。（None of us “won”. Different formats in different places still...）" userName="usr1106" createdAt="2025/05/16 05:37:35" color="">}}




{{<matomeQuote body="＞ that is not used anywhere in daily life<br>Does it matter? MM-DD-YYYYはAmericaでusedされててDD-MM-YYYYをambiguousにするけど、as far as I know nobody uses YYYY-DD-MM, だからISO8601 should be perfectly fine、especially if users are trained。Besides、if you’re not used to it、starting with the year forces you to think、which is desirable if you want to avoid human error。" userName="deredede" createdAt="2025/05/16 07:20:20" color="">}}




{{<matomeQuote body="I couldn’t have named the standard and never read it before today、but I’ve used YYYY-MM-DD for naming my own folders & files for a couple of decades、for the simple reason that it sorts correctly in chronological order。" userName="dahart" createdAt="2025/05/16 14:03:37" color="">}}




{{<matomeQuote body="You do it、I do it、probably many programmers or other systematically thinking people do it。How big share we are of the general public? Even many programs don’t do it in their default naming when saving files。I find myself renaming often enough。" userName="usr1106" createdAt="2025/05/17 21:16:03" color="">}}




{{<matomeQuote body="Gregorian導入前のことは全部無効。1582年には10月4日の次が15日になったりしたし、それ以前は祭司が観測ミスしたり賄賂で年を操作したりでめちゃくちゃだったんだ。だからその前の日付は計算に使えないね。" userName="nmehner" createdAt="2025/05/16 05:06:33" color="#38d3d3">}}




{{<matomeQuote body="1582年より前のルールはむしろもっとシンプルだよ。4で割り切れればうるう年。だからGregorianとの違いは300年、500年、600年、700年、900年みたいな年で関係してくるんだ。そういう年をまたぐ期間だと、Gregorianのアルゴリズムだと現実に合わない結果になるね。Julian calendarがいつ本当に採用されたかは知らないけど、0001-01-01じゃないのは確か。And of course it varies by country like Gregorian。" userName="usr1106" createdAt="2025/05/16 05:27:24" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Wikipediaからの引用だよ。＞Julian calendarは紀元前46年にJulius Caesarによって提案されて、以前のRoman calendarを改良したものなんだ。紀元前45年1月1日に施行されたらしいよ。年を知らないなんてちょっとおかしい気がするね。" userName="pbhjpbhj" createdAt="2025/05/16 07:08:44" color="">}}




{{<matomeQuote body="Scholarsの間では、紀元前238年頃には既に熱帯年の長さが365.25日に近いって知られてたんだ（Ptolemy IIIがEgyptian calenderをCanopus Decreeで365.25日に固定しようとした時みたいに）。<br>でも、Julian calendar導入の時、Roman pontificesが翻訳ミスしちゃって、最初は3年ごとに閏年を入れてたんだ。inclusiveに数えるのが原因だったみたい。（キリスト教徒が、金曜に死んだJesusが2日後の日曜に復活したのに、ラテン語直訳で三日目に復活したって言うのと同じ理由）。<br>Julian calendarの最初の数年間、Roman pontificesは”every fourth year”で閏日を入れたんだけど、これは彼らの数え方だと3年ごとなんだ。どの年が閏年だったかはAuthorによって違うみたい。このエラーはAugustusの時に修正されて、いくつかの閏年をスキップして、西暦4年か8年以降は”every 4 years”ルールに従うようになったんだよ。<br>詳しい説明と表はhttps://en.wikipedia.org/wiki/Julian_calendar#Leap_year_erro...にあるよ。<br>当時、年は番号よりconsulの名前で識別されることが多かったってことも覚えておいてね。HistoriansはRomeが創設されたときから（Ab urbe condita）数えて番号を使うこともあるけど、いつ創設されたかは彼らの中でも意見が分かれてたんだ。AtticusとVarroの年表では、proleptic Julian calendarで紀元前753年4月21日に市の創設を置いてるけど、それが唯一じゃなかったんだよ。" userName="AdhemarVandamme" createdAt="2025/05/16 09:50:59" color="#38d3d3">}}




{{<matomeQuote body="これヤバい！HN Kino！<br>世界一難しい日付チェックを、何気なくビットフリップで解決しちゃうなんて。<br>脱帽だよマジで :D" userName="olq" createdAt="2025/05/15 23:09:15" color="">}}




{{<matomeQuote body="これに関連する面白いcppconのトークがあるよ（Authorは記事で引用されてる人）。https://www.youtube.com/watch?v=0s9F4QWAl-E" userName="andrepd" createdAt="2025/05/15 23:02:04" color="">}}




{{<matomeQuote body="https://github.com/alexmacarthur/current-time-api にこれ追加すべきだな。" userName="croisillon" createdAt="2025/05/16 07:24:29" color="">}}




{{<matomeQuote body="z3をこういうことに使う方法を知ってるのはマジでスーパーパワーだよ。<br>Code最適化が必要なら知っておく価値あるね。<br>z3と連携するmcp script持ってるんだけど、これをこの特定のフローのために将来拡張する時間を見つけなきゃ。<br>capstoneとz3のインターフェースにangrを使うと、さらにレベルアップできるってことも指摘しとくね。" userName="nickysielicki" createdAt="2025/05/16 10:11:21" color="#45d325">}}




{{<matomeQuote body="いつか誰かが、Gregorian oneじゃなくてRevised Julian Calendarの閏年アルゴリズムでこういうのをやるだろうね。" userName="JdeBP" createdAt="2025/05/16 03:29:40" color="">}}




{{<matomeQuote body="元のfunctionはおそらくxor、test、jneの3 instructionsしかないだろうね。<br>前のinstructionに依存してるのは1個だけ。<br>記事の”fast” versionには4 instructionsがあって、それぞれ前のinstructionに依存してる。<br>だからbenchmarkで負けたのは驚かないよ。" userName="charcircuit" createdAt="2025/05/16 02:37:59" color="#38d3d3">}}




{{<matomeQuote body="3/4の頻度でtriggerするbranchはパフォーマンス良くないだろうね。<br>それがmatterするかどうかは、このfunctionがprogramの残りの部分にどうintegrateされるか次第だよ。" userName="Dylan16807" createdAt="2025/05/16 08:07:43" color="">}}




{{<matomeQuote body="テストされる年はランダムじゃないと思うよ．実際には同じ値が長く続くケースが多いんじゃないかな．" userName="charcircuit" createdAt="2025/05/16 18:00:57" color="">}}




{{<matomeQuote body="３命令とbranch predictionってことね．" userName="degamad" createdAt="2025/05/16 06:19:04" color="">}}




{{<matomeQuote body="最初，BCD instructionsをどっかで使ってるのかと思ったよ．この記事の下の方に書いてあるみたいにね： https：//news.ycombinator.com/item？id=8477254" userName="userbinator" createdAt="2025/05/16 00:33:47" color="">}}




{{<matomeQuote body="うん，AAMを考えてたんだけど，それだと３命令にはならないな．" userName="kragen" createdAt="2025/05/16 00:42:51" color="">}}




{{<matomeQuote body="もし作者がこれを読んでるなら： Jacob Prattさんの記事へのhyperlink，hyperlink URLとtextがswappedだよ．" userName="JdeBP" createdAt="2025/05/16 05:17:32" color="#45d325">}}




{{<matomeQuote body="ありがとう，fixed．" userName="hairtuq" createdAt="2025/05/16 05:37:22" color="#ff33a1">}}




{{<matomeQuote body="そのpage，mobileで見るとequation blocksのlayout overflowにproblemがあるみたいだよ．多分spanタグがinline elementsだからoverflowしないんだと思う．block elementsにして，なんかoverflowをenableすればsolveできるんじゃないかな．" userName="lame-lexem" createdAt="2025/05/16 07:26:33" color="#785bff">}}




{{<matomeQuote body="Codeはcomputerがexecuteするためだけじゃなく，他の人がread and understandするためにもwrittenされるんだよ．こういうcodeを入れるとreadabilityがtremendously sufferする．besides that，そもそもなんでleap year checkをoptimizeする必要があるcode書いてるの？！こういうclever tricksって，多くのaccidentsにつながるphrase『Hold my beer and see what I can do！』をremindさせるね．" userName="AGivant" createdAt="2025/05/17 03:45:42" color="#45d325">}}




{{<matomeQuote body="LLMがこれをindependentlyにderivedしたらimpressiveだね．" userName="esafak" createdAt="2025/05/15 23:59:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
