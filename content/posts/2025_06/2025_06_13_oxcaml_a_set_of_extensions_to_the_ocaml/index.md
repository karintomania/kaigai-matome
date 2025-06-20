+++
date = '2025-06-13T00:00:00'
months = '2025/06'
draft = false
title = 'OCamlに新しい拡張機能セット登場！OxCamlとは？'
tags = ["OCaml", "プログラミング言語", "拡張機能", "開発", "パフォーマンス"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> OCamlに新しい拡張機能セット登場！OxCamlとは？

引用元：[https://news.ycombinator.com/item?id=44268782](https://news.ycombinator.com/item?id=44268782)




{{<matomeQuote body="OxCamlを作ったJanet Streetの人達のポッドキャスト聞いたよ。<br>OCamlのパフォーマンス、特に超低遅延が必要な高頻度取引でGC言語使うとGC一時停止が問題になるかもって話。<br>GC一時停止はHFTの最中だとヤバいかもね。これについて議論してる[0]のポッドキャスト、面白いよ。<br>[0] https://signalsandthreads.com/performance-engineering-on-har..." userName="Lyngbakr" createdAt="2025/06/13 14:47:05" color="#45d325">}}




{{<matomeQuote body="GCの問題？ 市場が閉まってる時にゴミを集めれば良いじゃん。<br>超低遅延が必要なHFTは、たいてい市場が開いてる時間に行われるから、市場の開閉に合わせてGCすればOK。<br>年中無休の市場（cryptoとか？）は違うかもだけどね。" userName="mardifoufs" createdAt="2025/06/13 16:34:36" color="">}}




{{<matomeQuote body="6時間以上もGCしないで放置するのは現実的な解決策なの？<br>マジで？" userName="dmkolobov" createdAt="2025/06/13 16:45:13" color="">}}




{{<matomeQuote body="GC compactionsは確かにシステムによっては問題だったよ。<br>取引システムでは起動後はメモリ確保しないのが一般的な方針だった。<br>JS（Janet Streetのことかな？）には”Zero”っていう、メモリ確保しないやり方を提供してるライブラリがあるんだって。" userName="rauljara" createdAt="2025/06/13 16:07:15" color="#785bff">}}




{{<matomeQuote body="”Zero”ライブラリ、6秒Google検索したけど見つかんなかったよ。<br>リンク貼ってくれる？" userName="jitl" createdAt="2025/06/13 16:51:23" color="">}}




{{<matomeQuote body="GC問題？ 1分間にどれだけメモリ確保するか分かってて（予算内なら）、十分なRAMを買えば全然大丈夫だよ。" userName="jitl" createdAt="2025/06/13 16:52:49" color="">}}




{{<matomeQuote body="”Zero”ライブラリのことは、[0]のポッドキャストで言ってたよ。" userName="jallmann" createdAt="2025/06/13 16:57:32" color="">}}




{{<matomeQuote body="問題はGC言語そのものじゃなく、stackやvalue typesの操作ができないGC言語だよ。<br>GC言語の生産性がありつつ、低レベルシステムコーディングもできるGC言語？<br>それならCedar, Oberon language family, Modula-3, D, Nim, Eiffel, C#, F#, Swift, Goなんかがあるよ。" userName="pjmlp" createdAt="2025/06/14 06:00:50" color="">}}




{{<matomeQuote body="”Zero”ライブラリもJavaScriptも、元の記事やこのスレッドでは全く言及されてないけど？" userName="notnullorvoid" createdAt="2025/06/13 18:37:00" color="">}}




{{<matomeQuote body="Go言語ってGCの設定項目（knobs）いっぱいあるの？<br>数年前はそうじゃなかったけど、最近のは知らないな。" userName="jaennaet" createdAt="2025/06/14 07:24:26" color="">}}




{{<matomeQuote body="Localityが減るからパフォーマンスが落ちるかも。TLBミスでガタガタになる可能性もあるね。" userName="ackfoobar" createdAt="2025/06/13 17:49:48" color="">}}




{{<matomeQuote body="JSってJane Streetのことかなって思ってる。" userName="garbthetill" createdAt="2025/06/13 19:00:48" color="">}}




{{<matomeQuote body="何と比べてだよ？ガベージコレクタ（GC）を動かすのと比べて？" userName="jitl" createdAt="2025/06/14 01:31:11" color="">}}




{{<matomeQuote body="設定項目（knobs）はGCじゃなくて、言語機能にあるんだよ。Goコンパイラツールチェーンなら、スタックやグローバルメモリの静的確保、参照エスケープ追跡のコンパイラフラグ、OSバインディング経由の手動確保、unsafeパッケージとスライス、アセンブラ、CGOとか色々手段があるんだから。" userName="pjmlp" createdAt="2025/06/14 08:02:38" color="">}}




{{<matomeQuote body="これってOCamlに関係ある話？" userName="robertlagrant" createdAt="2025/06/13 17:43:08" color="">}}




{{<matomeQuote body="超低レイテンシ必須のユースケースにGC言語を適用することに興味があったんだ。（高頻度取引みたいな）GCポーズは深刻な問題になりそうだから。GC全般（OCamlに限らず）の実行環境だと、JVMみたいに並列コレクションアルゴリズムでGCポーズを最小限にできる[0]。でもハードな保証はないから、必要な性能出すにはRAMを過剰に積む必要もあるかも。<br>もう一つ複雑なやり方は、サーバーを多めに用意して、一時的に使用プールから外して「オフラインGC」すること。これはリクエストルーターや他のサーバーとの連携が必要だから、財力があって常にアイドルCPUを用意できるなら、並列GCのためにサーバーを過剰に積んだ方が手っ取り早いかもね。<br>0 - https://docs.oracle.com/en/java/javase/17/gctuning/parallel-..." userName="AdieuToLogic" createdAt="2025/06/14 02:47:46" color="#ff33a1">}}




{{<matomeQuote body="リンクは見てないんだけど、取引みたいに市場の開閉時間があるシナリオなら、GCを無効にして市場閉まった後にプログラム再起動するだけでいいんじゃない？" userName="enricozb" createdAt="2025/06/13 15:54:41" color="">}}




{{<matomeQuote body="俺も君と同じGC回避のクモに噛まれた感じだよ。でもOCamlは難解すぎて好みじゃないな。<br>F#の方が柔らかくてモダンな気がする？でもdotnetじゃGCは避けられないと思うけど。" userName="sheepscreek" createdAt="2025/06/14 01:41:49" color="">}}




{{<matomeQuote body="そうそう。<br>銀行のシステムで、市場が開いてる時間だけ動かすやつではよくあるデザインパターンだよ。" userName="spooneybarger" createdAt="2025/06/13 18:03:33" color="">}}




{{<matomeQuote body="実はRon MinskyにTwitterでこれ exactly な質問したんだ[0]:<br><br>俺: 遅延 sensitive なアプリとか、Rustが意味を成す場所で、なんで Rust 使わないんですか？JS は Rust 使ってます？<br><br>Minsky: Rust は素晴らしいけど、コードの大半を single language にすることで得られる value は大きい。型、ツール、ライブラリ、idiom を share できるし、folk が project 間を move しやすい。<br><br>そして、Rust が bring する most important advantages を、OCaml で cleanly integrated、pay as you go 方式で得る well on our way だ。これは us には better outcome に見えるね。<br><br>あと、Rust について don’t love な thing もいくつかある: compile times が long、async/await がどう動くか folk who know more than I do are pretty sad、type discipline は quite complicated など。<br><br>でも mostly、より wider-spectrum な single language を at our disposal にしたいということだ。<br><br>[0]: https://x.com/arr_ohh_bee/status/1672224986638032897" userName="mustache_kimono" createdAt="2025/06/14 19:09:28" color="#ff5c5c">}}




{{<matomeQuote body="その「途上」ってのは、interpreter のために ton の C言語 を書かなきゃいけないってことだろ。<br>critical sections にまだ Rust を使ってないのは、本当に imprudent だと思うね。" userName="leoh" createdAt="2025/06/15 04:18:56" color="">}}




{{<matomeQuote body=".NET の AOT compile はcomically 遅いね。<br>C++ が OCaml より速く見えるレベルだよ。<br>あれを serious なことに anyone が使ってるなんて想像もできない。" userName="LAC-Tech" createdAt="2025/06/16 02:13:41" color="">}}




{{<matomeQuote body="たぶん？<br>scale すると Locality は fairly important になる。<br>だから high-performance code では array-based の data structures が strongly preference されるんだ。<br>もし俺が彼らだったら、OCaml を使って zero allocation で run できる functional 「kernels」を build up するだろうな。<br>そして requests をこれらの kernels に dispatch させて、fast modern generational GC に dispatch の minor cost を clean up させるんだ。<br>most of the work は zero-allocation の kernels で happen する。" userName="dmkolobov" createdAt="2025/06/14 06:04:45" color="#38d3d3">}}




{{<matomeQuote body="＞ これは俺が OCaml の dialect と呼びたいものだ。<br>時にはそう speak し、時には zero alloc OCaml と gently 言う。<br>そして the most notable thing about it は、the garbage collector に touching するのを avoid しようとすることだ ..." userName="jallmann" createdAt="2025/06/13 19:49:39" color="">}}




{{<matomeQuote body="金融だとC++がまだまだ普通で、JavaとかのGC言語は少ないと思うよ（OCamlはもっと珍しい）。GC言語を使ってる会社もあるみたいだけど、GCオフとかチューニングをどうしてるかはよく分かんないな。<br>数年前に見たHFTのJVMプロジェクトのGitHubリポジトリ、これらしいよ。外部からHFTのインフラを見る機会はほぼないから、参考になるかもね。https://github.com/OpenHFT" userName="mardifoufs" createdAt="2025/06/13 23:57:09" color="">}}




{{<matomeQuote body="このOxCamlからOCaml本体に最初に取り込まれる機能は「ラベル付きタプル」だってさ。OCaml 5.4に入る予定だよ！<br>関連するGitHubのプルリクと公式フォーラムのリンクはこれ！<br>https://github.com/ocaml/ocaml/pull/13498<br>https://discuss.ocaml.org/t/first-alpha-release-of-ocaml-5-4..." userName="legobmw99" createdAt="2025/06/13 14:37:25" color="#45d325">}}




{{<matomeQuote body="うんうん、これ minor に見えるかもだけど、結構楽しみだよね！<br>この機能を作った人がML2024で発表した論文とトークの動画もあるよ。<br>https://www.youtube.com/watch?v=WM7ZVne8eQE<br>https://tyconmismatch.com/papers/ml2024_labeled_tuples.pdf" userName="aseipp" createdAt="2025/06/13 15:58:28" color="#45d325">}}




{{<matomeQuote body="匿名でラベル付きの struct とか enum って、俺がプログラミング言語で一番欲しい機能の一つなんだ！<br>例えば Rust だと、ラベル付きとラベルなし（タプル）の struct は定義できるけど、関数から匿名で返せるのはタプルだけで、ラベル付き struct は無理なんだよね。<br>fn can() → (i32, i32)<br>fn cant() → {sum: i32, product: i32}" userName="andrepd" createdAt="2025/06/13 15:04:51" color="#785bff">}}




{{<matomeQuote body="Dartでは、タプルとレコードを一つのものにまとめたんだ。<br>レコードは位置指定フィールド、名前付きフィールド、その両方を持てるし、型アノテーションとしてどこでも使えるよ。<br>DartだとこういうのがOK:<br>(int, int) can() =＞ (1, 2);<br>({int sum, int product}) alsoCan() =＞ (sum: 1, product: 2);<br>(int, {int remainder}) evenThis() =＞ (1, remainder: 2);<br>型アノテーションの波括弧は名前付きフィールドと位置指定フィールドを分けるため。この構文はあんまり好きじゃないけど、関数パラメータリストと揃えてるんだ。https://dart.dev/language/records" userName="munificent" createdAt="2025/06/13 17:19:09" color="#785bff">}}




{{<matomeQuote body="Dartの records の話だけどさ、位置指定フィールドと名前付きフィールドを両方持つタプルと、フィールドとして record を持つタプルって、どう区別するの？<br>例えば (1, {sum:2}) の型ってどう書くの？ (1, sum :2) とは違う？" userName="afiori" createdAt="2025/06/13 18:58:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="構文は歴史的な理由でちょっと変わってるんだよね。<br>波括弧は record 型の構文の一部としてだけ使うんだ。<br>型アノテーションだと他に波括弧を使うところが無い（関数型のパラメータリストの中の名前付きパラメータは別だけど）から、そこで紛らわしくなることはないよ。" userName="munificent" createdAt="2025/06/13 21:02:01" color="">}}




{{<matomeQuote body="じゃあ、俺の例だと (1, (sum:2)) と (1, sum:2) って書き方になる、ってことで合ってる？" userName="afiori" createdAt="2025/06/14 08:55:27" color="">}}




{{<matomeQuote body="うん、その通りだよ。" userName="munificent" createdAt="2025/06/14 20:07:13" color="">}}




{{<matomeQuote body="うーん。まず、君が何を気にしてるのか確認させてね。<br>struct First(this: i8, that: i64)<br>struct Second(this: i8, that: i8)<br>struct Third(that: i64, this: i8)<br>struct Fourth(this: i8, that: i64)<br>struct Fifth(some: i8, other: i64)<br>First と Fourth を同じ型にしたいけど、Second と Third は違う、ってこと？ Fifth はどう？<br>これって Rust のプロダクト型とは違う理解だね、Rust だと First と Fourth はいつも違う型になるから。<br>あとさ、これが欲しい具体的な例をいくつか教えてくれる？正直、俺はこれが欲しいと思ったことないんだけど、それは経験が違うだけかもだしさ。" userName="tialaramex" createdAt="2025/06/13 15:26:08" color="#785bff">}}




{{<matomeQuote body="構造的型付けの変更じゃなく、名前付きフィールドを持つ一時的な匿名型を作って渡したいだけなんだって。タプルのusizeとか意味不明だし、名前付けりゃ便利じゃん。内部実装はタプルと同じでいいと思うけどな。<br>" userName="cAtte_" createdAt="2025/06/13 15:58:00" color="#ff5c5c">}}




{{<matomeQuote body="1への返信。匿名型と構造的型付けって結局同じじゃね？って話。特に複雑なコードだとそう。フィールド順で意味変わるならタプルでいいじゃん。usize問題はRustのドキュメントで解決できるし。<br>" userName="zozbot234" createdAt="2025/06/13 16:20:31" color="">}}




{{<matomeQuote body="「ランダムなusize」じゃないならNewtype使えよ。RustだとOption＜OwnedFd＞みたいにCのintと同じマシンコードでも安全に使える。FileSizeとかちゃんと名前付けろって話。そしたら混乱しないじゃん。<br>" userName="tialaramex" createdAt="2025/06/13 17:12:55" color="#ff5733">}}




{{<matomeQuote body="面白いことに、最初は名前付きstructだけだった言語も、結局構造的型付けのレコードを取り入れる傾向があるんだって。C#とか最初structだけだったのに、タプルとか名前付きタプルを追加したじゃん。<br>" userName="int_19h" createdAt="2025/06/13 19:52:48" color="#45d325">}}




{{<matomeQuote body="PHPには全部あるんだって！これって、厳密な型付けか緩い型付けかどっちが好きかって話だよね。両極端はダメだけど。型付けの厳密さはチームとかプロジェクト規模で決めりゃいいと思うな。プロトタイプは緩い方が楽だけど、大規模コードだと厳密な型が役立つじゃん。<br>常に相反する動機がぶつかり合ってる感じ。" userName="munk-a" createdAt="2025/06/13 20:26:51" color="">}}




{{<matomeQuote body="記事の「ラベル付きタプルだと順序間違いを防げる」って話について、「うーん、F#の匿名レコード {| product = 6; sum = 5 |} の方がいいな」だって。これだとタプルじゃないからフィールド順序関係ないし。<br>" userName="munchler" createdAt="2025/06/13 16:47:12" color="#45d325">}}




{{<matomeQuote body="それらが同じじゃない理由の一つは、メモリ表現が違うから（ある程度ね）。タプルを勝手に並べ替え可能にしたら、FFIが壊れるぜ。<br>" userName="reycharles" createdAt="2025/06/14 04:20:26" color="#785bff">}}




{{<matomeQuote body="それってただの普通のOCamlの { product = 6; sum = 5 } と同じじゃないの？（構文がちょっと違うだけじゃね？）<br>" userName="rwmj" createdAt="2025/06/13 17:18:39" color="">}}




{{<matomeQuote body="{ … } と {| … |} の違いは、後者（F#の匿名レコード）の型が匿名だってこと。だから、事前に宣言しなくていいんだよ。<br>" userName="munchler" createdAt="2025/06/13 17:24:40" color="#785bff">}}




{{<matomeQuote body="ああ、なるほどね。いい指摘じゃん。内部でどう表現されてるんだろ？フィールドはアルファベット順？拡張できる匿名struct（デフォルト付き）も欲しいけど、それってグローバルな分析とか必要なのかな。<br>" userName="rwmj" createdAt="2025/06/13 18:12:45" color="">}}




{{<matomeQuote body="Labeled tuples (ラベル付きタプル) は実質的に順序に依存しないんだ。実装順序はインターフェースに合わせなきゃいけないけど、呼び出し側はどんな順序でもlabeled tuplesを破壊できるし、コンパイラが必要な並べ替えをしてくれるよ（recordsを破壊したり、labeled arguments（ラベル付き引数）で関数を呼ぶのと同じ）。これはF#で君が言ってることとそんなに違いはないと思うな。ただlabeled tuplesは1つの値にラベルを付けられないだけ（つまり1-tupleがない、普通のtuplesもそうだけど）。" userName="thedufer" createdAt="2025/06/14 14:54:07" color="">}}




{{<matomeQuote body="Immutable arrays (イミュータブル配列) もこのフォークから移植されて、OCaml 5.4に取り込まれたんだよ。たぶん文法は違うと思うけどね。" userName="debugnik" createdAt="2025/06/13 14:56:01" color="">}}




{{<matomeQuote body="このフォークがSIMDをサポートしてるなんて知らなかったよ！これとunboxed types、明示的なスタック割り当てがあるlocal modeがあれば、F#への興味がほとんどなくなっちゃったな。Windowsもサポートされれば、ゲーム開発とかコンシューマー向けのシナリオでも実際に使えるようになるかも。" userName="debugnik" createdAt="2025/06/13 15:30:49" color="#45d325">}}




{{<matomeQuote body="そうなんだよ、これめちゃくちゃいいよね！今は128-bitのSSEとNEONだけが動いてるけど、AVXもすぐ来るよ。Windowsも技術的には何も問題ないんだけど、ちょっと作業が必要なんだ。（SIMDサポートは俺がOxCamlに入れたんだ！）" userName="TheNumbat" createdAt="2025/06/13 15:44:22" color="#ff5733">}}




{{<matomeQuote body="ちなみに、「Get OxCaml」ページにはARMのSIMDはまだサポートされてないって書いてあるよ。もし実際に動くなら、Known Issuesのリストから消した方がいいかもね。URLはこちら: https://oxcaml.org/get-oxcaml/" userName="aseipp" createdAt="2025/06/13 16:00:15" color="#785bff">}}




{{<matomeQuote body="確かに、そう書いてあるのは、NEON intrinsicsのライブラリ（ocaml_simd_sseみたいなの）がまだないからなんだ。でも、拡張機能自体は動くよ。" userName="TheNumbat" createdAt="2025/06/13 16:08:26" color="#ff5733">}}




{{<matomeQuote body="あー、それで分かったよ。ありがとう！全部楽しみにしてるね。(興味ある人向けに、ここにSSEライブラリがあるよ: https://github.com/janestreet/ocaml_simd/tree/with-extension...)" userName="aseipp" createdAt="2025/06/13 16:15:26" color="#45d325">}}




{{<matomeQuote body="Windowsサポートを追加するのに技術的な障害がないって聞いて嬉しいな！趣味のプロジェクトでOxCamlを試してみようって気持ちになったよ。128-bit SSEで俺のユースケースとターゲットスペックには十分そうだし。" userName="debugnik" createdAt="2025/06/13 16:08:46" color="">}}




{{<matomeQuote body="David Allsoppが数ヶ月前にWindowsでコンパイルできるOxCamlのブランチを持ってたから、開発のキューには入ってるよ…" userName="avsm" createdAt="2025/06/13 17:43:44" color="#ff5c5c">}}




{{<matomeQuote body="新しいopam switchを試してる人に役立つ情報だよ！環境変数OCAMLPARAM=”alert=-unsafe_multidomain,_,”をつけてopam install cohttp-lwt-unixするといいかも。<br>alertsがerrorsに昇格されるせいで、既存パッケージのインストールが不必要に壊れるんだよね。OCAMLPARAMの環境変数を使えば、そのalertを無効にできてインストールが進められるよ。" userName="avsm" createdAt="2025/06/13 14:42:59" color="#45d325">}}




{{<matomeQuote body="OCamlのちっちゃい版みたいなやつだよ：http://t3x.org/mlite/index.html" userName="anthk" createdAt="2025/06/13 17:41:53" color="">}}




{{<matomeQuote body="Golang向けのvscode（俺の場合はvscodiumだけど）のプラグインが素晴らしすぎて慣れてるんだけど、vscodeの環境との連携って何か予定ある？<br>セットアップが超簡単になるからさ！" userName="dingdingdang" createdAt="2025/06/13 21:26:10" color="">}}




{{<matomeQuote body="OCamlのvscodeプラグインって、すでにduneとかmenhirとかreasonとか新しいシンタックスにたくさん対応してるみたいだから、OxCamlが広まれば時間の問題じゃないかな。<br>まあ、俺自身はemacs使ってるから詳しくは言えないんだけどね。" userName="jasperry" createdAt="2025/06/13 22:35:13" color="">}}




{{<matomeQuote body="oxcaml.orgにあるインストール手順に従えば、LSPとかに対応したパッチ済みのMerlinが手に入るよ。<br>完璧じゃないけど、だいたいVSCodeとOCaml Platform extensionでそのまま動くんだ。" userName="clancon" createdAt="2025/06/14 02:10:29" color="#ff33a1">}}




{{<matomeQuote body="VS Codeを再起動したら、エラーの波線表示とかocamlformatが動かなくなっちゃったんだよね、普通のOCamlと比べて。<br>Dune CLIからはちゃんと動くんだけど。" userName="debugnik" createdAt="2025/06/14 05:16:05" color="">}}




{{<matomeQuote body="vscode extensionが使うopam switchを変えてみた？<br>oxcaml switchに設定する必要があるんだ。「Ocaml: Select a Sandbox for this Workspace」コマンドでできるよ。" userName="liam-stevenson" createdAt="2025/06/17 06:48:49" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、やったよ。opamの扱いは慣れてるし、最初にswitchを変えた時はVS Codeを再起動するまで動いてたんだ。<br>でもそれ以降は、また動くようにする方法が分からなくなっちゃった。" userName="debugnik" createdAt="2025/06/17 20:13:14" color="">}}




{{<matomeQuote body="うーん。OxCaml switchにocaml-lsp-serverはインストールした？<br>俺はduneをpolling mode（-w）で実行することが多いんだけど、それが関係あるかは分からないな…" userName="clancon" createdAt="2025/06/14 13:40:07" color="#ff33a1">}}




{{<matomeQuote body="参考までに言うと、俺もdebugnikさんと同じ経験したよ。<br>ocaml-lsp-serverはインストールしたし、polling modeでビルドしたかどうかにかかわらずだった。" userName="frexe" createdAt="2025/06/15 15:34:26" color="">}}




{{<matomeQuote body="へー、OxCamlってMLの方言の拡張のまた拡張なんだ。<br>次のが出るのが待ちきれないね。" userName="croes" createdAt="2025/06/13 15:37:53" color="">}}




{{<matomeQuote body="俺も同じこと考えたわ。でもさ、既存言語を機能でどんどん太らせるプログラマと、ただでさえ多いのにまた新しい言語作るプログラマ、どっちがマシなんだろうね？<br>（俺は後者だけどw）<br>たぶんプログラマって、ツールをそのままにしておけない遺伝子でも持ってんだろうな。" userName="jasperry" createdAt="2025/06/13 22:44:22" color="#ff33a1">}}




{{<matomeQuote body="これ見て、趣味で作ってたプログラミング言語プロジェクトが正直ストップしちゃったよ。機能結構かぶってるし、元々遅かったしね。<br>とりあえずOxCaml試してみて、自分のと比較してみるつもり。<br>一番良いのは自分のやめてこれ使うこと、最悪でも何が良くて何がダメか学べるからね。" userName="debugnik" createdAt="2025/06/14 05:29:00" color="#ff33a1">}}




{{<matomeQuote body="これってさ、LLMがタダで情報をインデックスできるように出して、公開モデルをファインチューニングするんじゃなくて、自社のコードベースで公開モデル使うため、とかない？" userName="bhamta" createdAt="2025/06/14 03:05:53" color="">}}




{{<matomeQuote body="LLMって、OxCamlより学習データがはるかに多い普通のOCamlでさえ結構ダメダメなこと考えたら、たぶん無いんじゃない？<br>その目的なら、ドキュメントのMCP（機能改善提案）の方がよっぽど建設的だよ。" userName="debugnik" createdAt="2025/06/14 07:00:07" color="">}}




{{<matomeQuote body="全然無いね。そんな強いシグナルにはならないよ。<br>例えばLLMはGleamのコード補完とかマジでクソだよ。<br>すぐ近くに真似すべきパターンが書いてあるファイル見せたり、よくある間違いを具体的に指示してもダメ。" userName="jdiff" createdAt="2025/06/14 11:07:27" color="#785bff">}}




{{<matomeQuote body="じゃあこれって、Rustと同じ機能（例えば”恐れを知らない並行処理”とか、GC回避とか）目指してるから”Oxidized”なの？<br>本当にRust使ってるわけじゃないんだよね？<br>ちょっと紛らわしいな。" userName="IshKebab" createdAt="2025/06/13 14:38:52" color="">}}




{{<matomeQuote body="皮肉なことに、プログラミング言語のRustは、酸化鉄じゃなくて「さび」って意味の菌類の名前から来てるんだよね。" userName="john-h-k" createdAt="2025/06/13 17:23:50" color="">}}




{{<matomeQuote body="その通りだよ。<br>Jane Streetはずっと「Oxidizing OCaml」っていうタイトルのブログ記事シリーズを公開してるんだ。" userName="debugnik" createdAt="2025/06/13 14:46:30" color="">}}




{{<matomeQuote body="「Oxidize」って言葉、前々から使われてたみたいだよ。この取り組みに関する最近の技術論文のタイトルも「Oxidizing OCaml with Modal Memory Management」だったしね。でも、論文の中では「oxidize」自体は一度も言及も定義もされてないんだ。ちょっと変だよね、でもなんか catchy ではあると認めるわ。" userName="aseipp" createdAt="2025/06/13 15:55:08" color="">}}




{{<matomeQuote body="Rustは多分、カスタム tracing GC (一般的な graph-like data を扱うのに役立つし、できる限り最高のパフォーマンスを出したいならね) で使えるようになる方が、この取り組みが Rust と genuine feature parity に達するよりずっと早いんじゃない？これに大した意味が見えないんだけど、もしかしたら彼らは lowest-hanging fruit に集中してて、気にかけてる大きな O(x)Caml コードベースがあるのかもしれないね。" userName="zozbot234" createdAt="2025/06/13 15:42:01" color="">}}




{{<matomeQuote body="OxCaml は Rust とは違って、locarity の encoding に別のアプローチを取ってるんだ。Rust は型システムにこの情報を overburden させがちだけど (arguably ね)、OxCaml ではこれは return types とは orthogonal なんだ。その点では algebraic effects にちょっと似てるよ。個人的には、最近 OCaml にはかなり bullish だね。" userName="greener_grass" createdAt="2025/06/13 15:52:49" color="#ff5c5c">}}




{{<matomeQuote body="＞ 意味が見えない<br>OCaml は良い言語だし、既存の OCaml プログラマーやプログラムにはこれらの拡張機能はとても歓迎されるよ。Jane Street が追加した他の多くの拡張機能と同じようにね。ここであなたが何を言いたいのか理解できないんだけど。" userName="aseipp" createdAt="2025/06/13 15:55:42" color="">}}




{{<matomeQuote body="OxCaml で見るもの全部、「これ OCaml にあったら nice だろうな」って思うものばっかりなんだよね。" userName="jlouis" createdAt="2025/06/14 14:24:01" color="">}}




{{<matomeQuote body="むしろこれ、F# ユーザーにとっては escape opportunity だと思うんだ。言語は大好きなんだけど、runtime と C# ecosystem が、cleaner semantics を持つことから足を引っ張ってるだけでなく (C# team がその価値を認識するまではね)、breaking changes と新しい incompatible APIs で積極的に梯子を蹴り落としてるから。" userName="debugnik" createdAt="2025/06/14 05:21:28" color="">}}




{{<matomeQuote body="F# は Fable のおかげで .NET から mostly liberated されてるよ。compiler は strictly .NET だけどね。" userName="reverseblade2" createdAt="2025/06/14 06:08:24" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
