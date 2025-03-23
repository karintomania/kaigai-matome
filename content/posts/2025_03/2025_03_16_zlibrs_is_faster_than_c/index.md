+++
date = '2025-03-16T00:00:00'
months = '2025/03'
draft = false
title = 'マジかよ!? Rust製zlib、C言語版より爆速だと話題に'
tags = ["Rust", "zlib", "パフォーマンス", "最適化", "プログラミング"]
featureimage = 'thumbnails/green4.jpg'
+++

> マジかよ!? Rust製zlib、C言語版より爆速だと話題に

引用元：[https://news.ycombinator.com/item?id=43381512](https://news.ycombinator.com/item?id=43381512)

{{<matomeQuote body="zlib-rsの今回のリリースにパフォーマンス改善のパッチをいくつか提供したんだけど、Rustのプロジェクトでperf作業をするのは初めてだったから、学んだことをいくつか紹介するね。<br>unsafeを使ってSIMDとか内部バッファを扱ってても、Rustは最適化を繰り返すのが楽になるようにちゃんと安全装置がついてるんだよね。抽象化の境界が役に立ったよ。よくあるのは、生のバッファをRustのスライスにキャストして、ライフタイムとか配列の境界をコンパイル時にチェックできるようにすること。<br>コンパイラが予想以上に最適化してくれて驚いた。例えば、コンパイル時に正しいと証明できる配列アクセスは境界チェックを省略してくれたり。関数も積極的にインライン展開してくれるから、関数を跨いだ共通部分式除去もできるんだよね。ちょっとした最適化を思いついてアセンブリを見てみたら、コンパイラが既にやってくれてた、みたいなことが何度もあったよ。<br>パフォーマンス改善の中には、キャッシュ局所性を良くしたのもあるんだ。構造体のフィールドを同じキャッシュラインに配置するために、Cスタイルの構造体宣言を使った箇所もあるよ。こういうレアなケースでRustが対応してくれて助かった。<br>SIMDコードはアーキテクチャ依存で、unsafeなAPIが必要になるけど、今後に期待だね。<br>メモリ安全は、プロジェクト全体で正しいコードを届けるための解決策の一部だった。テストと監査も同じくらい重要だったよ。" userName="brianpane" createdAt="2025-03-17T10:06:11" color="#ff5c5c">}}

{{<matomeQuote body="へー、面白いね！PGOって使った？フィールドを隣同士に配置するのって、PGOで自動的にやってくれるような気がするんだけど。" userName="Boereck" createdAt="2025-03-17T10:55:28" color="">}}

{{<matomeQuote body="手動でPGOみたいなことをしたんだ。複数の整数フィールドのサイズを小さくして、各キャッシュラインにたくさん詰め込んだりもしたからね。rustc+LLVMのPGOを試すのが楽しみだよ。" userName="brianpane" createdAt="2025-03-17T12:37:55" color="#45d325">}}

{{<matomeQuote body="長年の問題が最近修正されたみたいだね: <br>＞”https://github.com/rust-lang/rust/pull/133250”" userName="ofek" createdAt="2025-03-17T16:01:08" color="">}}

{{<matomeQuote body="Rustもう知ってたわ。<br>＞”unsafe {<br> let x_tmp0 = _mm_clmulepi64_si128(xmm_crc0, crc_fold, 0x10);<br> xmm_crc0 = _mm_clmulepi64_si128(xmm_crc0, crc_fold, 0x01);<br> xmm_crc1 = _mm_xor_si128(xmm_crc1, x_tmp0);<br> xmm_crc1 = _mm_xor_si128(xmm_crc1, xmm_crc0);<br>}”<br>冗談はさておき、Rustの目的は安全性の確保だと思ってたけど、このライブラリにはunsafeってキーワードがめっちゃ使われてるじゃん。これってC言語と何が違うの？<br>インラインアセンブリを使えば、どっちの言語でも同じ機械語を出力できるはずだよね。Rustのコンパイラって、C言語のコンパイラより最適化が上手いの？" userName="YZF" createdAt="2025-03-16T20:12:33" color="">}}

{{<matomeQuote body="Rustで最初にunsafeブロックを見ると混乱するよね。特定のコードセクションでコンパイラの安全性保証をオプトアウトする必要があるんだけど、unsafeブロックで明確にマークされてるんだ。<br>良いプラクティスとしては、unsafeは必要な箇所だけで慎重に使うこと。そういう箇所は開発者が特に注意して分析するんだ。<br>もちろん、unsafeをRustを回避する手段として使う人もいるけど、それは本来の意図じゃないよ。<br>unsafeを絶対に使うべきじゃないって考えるRustユーザーもいるけど、それはちょっと極端かな。" userName="Aurornis" createdAt="2025-03-16T20:21:05" color="#785bff">}}

{{<matomeQuote body="unsafeは独特な臭いがするんだよね。天然ガスに添加される硫化水素みたいなもので、ガス漏れを知らせてくれる。<br>ガス工事をしていない時にunsafeの臭いがしたら、それは何かのサインだよ。" userName="timschmidt" createdAt="2025-03-16T20:27:22" color="">}}

{{<matomeQuote body="誰かが言ってたんだけど、連結リストみたいな単純なものでもRustでunsafeを使わないといけないんだって。<br>アップデート：std libがそうしてるみたいだね：<br>＞”https://doc.rust-lang.org/src/alloc/collections/linked_list....”" userName="gigatexal" createdAt="2025-03-17T09:53:09" color="">}}

{{<matomeQuote body="いやいや、問題のunsafeブロックを読んでみてよ。SIMDの組み込み関数を使ってるだけじゃん。メモリアクセスもポインタもないよ。名ばかりのunsafeだよ。そんなに道徳的にならなくてもいいんじゃない？" userName="cmrdporcupine" createdAt="2025-03-16T20:51:08" color="">}}

{{<matomeQuote body="あなたの理屈だと、SIMDの組み込み関数はunsafeとマークされるべきじゃないってことになるよね。じゃあなんでunsafeってマークされてるの？" userName="kccqzy" createdAt="2025-03-16T20:56:02" color="">}}

{{<matomeQuote body="今のところ、呼び出し元がSMID linesの適切なアライメントを保証する必要があるんだよね。でも将来的には、問題点が解消されたら安全なAPIが利用可能になる予定だよ。特定のコンパイラ機能を有効にすれば、もう使えるんだって。[1]を見てみて。<br>[1] https://doc.rust-lang.org/std/simd/index.html" userName="thrance" createdAt="2025-03-17T03:39:17" color="">}}

{{<matomeQuote body="上記のunsafeブロックにはロードはないんだよね。実際には、loaduはloadとほぼ同じくらい高速だし、手動でアラインされたロードやストアを使ってもクラッシュしちゃう。クラッシュがunsafeだって言うのはナンセンスだよ。" userName="anonymoushn" createdAt="2025-03-17T03:49:57" color="">}}

{{<matomeQuote body="RustではSIMDの標準化がまだなんだよね。何年もnightly unstableの状態みたい。<br>https://doc.rust-lang.org/std/intrinsics/simd/index.html<br>だから、2つのことが考えられるんだ。<br>１．基本的にはアセンブリを呼び出してるから、自己責任だってこと。これは基本的にC/asmへのFFIみたいなもの。<br>２．128bit vectorから何が出てくるかは保証されてないから、やっぱり自己責任。std::mem::transmuteがunsafeとマークされてるのと同じ理由だね。<br>一番弱い形式のunsafeって感じ。<br>それでも、まともな人間なら十分に理解できる範囲だよ。" userName="cmrdporcupine" createdAt="2025-03-16T21:02:25" color="#ff5733">}}

{{<matomeQuote body="＞they've been sitting in nightly unstable for years<br>Rustとそのコアライブラリの非常に多くの便利な機能が何年も”nightly”にあるのは、それらの機能のメンテナーに最後までやり遂げる規律がないからだよ。" userName="pclmulqdq" createdAt="2025-03-16T21:16:50" color="">}}

{{<matomeQuote body="Rustを始める前は、Appleのエコシステムの外で、Swiftをsystems-y/server-sideのコードに使ってたんだよね。Swiftには好きなところもたくさんあるけど、一番嫌だったのは、Appleのチームが本当に最高の設計かどうかを考えずに、どんどんコンパイラマジックの機能を追加していくことだったんだ。(例：Rustにある拡張可能なマクロシステムではなく、特定のプロトコルのコンパイラマジックによる実装を追加するとか。) Rustは、機能が安定するまで、徹底的に検討されてて良いよね。SwiftやC++みたいにならないでほしい。" userName="NobodyNada" createdAt="2025-03-16T23:07:20" color="#785bff">}}

{{<matomeQuote body="個人的には、言語機能に貢献したいなら、中途半端なものは出すなって思うんだよね。中途半端なソリューションがあると、他の人がその機能を追加するのに余計な労力がかかるんだもん。(1)スパゲッティコードを理解するか、(2)自分のものがなぜ十分じゃないかを説明するかのどっちかになるからね。" userName="pclmulqdq" createdAt="2025-03-17T02:43:52" color="">}}

{{<matomeQuote body="それは違うよ。保証を守るのは自分自身なんだ。unsafeの事前条件を守らないと、コードは盛大にクラッシュするけどね(未定義の動作よりはマシ)。" userName="j-krieger" createdAt="2025-03-17T06:24:29" color="">}}

{{<matomeQuote body="unsafeを使うと、Cと全く同じようなセマンティクスになるんだよね。unsafeな関数が期待する不変条件を守らないと、Cと全く同じようにUB(未定義動作)が発生するよ。クリーンなクラッシュが欲しいなら、Cみたいにassertを使う必要があるけど、コンパイラの最適化でチェックが削除される可能性もあるよ(これもCと全く同じ)。" userName="littlestymaar" createdAt="2025-03-17T07:52:11" color="">}}

{{<matomeQuote body="unsafeを1回でも使うと、Rustの素晴らしい保証がすべて失われるんじゃないの？unsafeブロックの中では何でもできるってことは、メモリ安全性の保証が全部なくなるってことだよね？まるで、密閉されたクリーンルームに、沼で泳いできたばかりの濡れた犬を放つようなものだよ。" userName="chongli" createdAt="2025-03-16T20:41:53" color="">}}

{{<matomeQuote body="逆みたいだよ。unsafeなRustでもCより厳しいんだって。本にはこう書いてあるよ(https://doc.rust-lang.org/book/ch20-01-unsafe-rust.html)<br>”unsafeなRustでは、safeなRustではできない5つのことができる。それは以下の通り。<br>　・raw pointerのデリファレンス<br>　・unsafeな関数やメソッドの呼び出し<br>　・mutable static変数のアクセスまたは変更<br>　・unsafe traitの実装<br>　・unionのフィールドへのアクセス<br>unsafeを使ってもborrow checkerが無効になるわけじゃないんだ。unsafeキーワードは、メモリ安全性のチェックを受けない5つの機能へのアクセスを許可するだけ。unsafeブロックの中でもある程度の安全性が保たれるよ。<br>unsafeブロックの中のコードが必ずしも危険だとか、メモリ安全性の問題があるとは限らないんだ。プログラマがunsafeブロックの中のコードがメモリに正しくアクセスすることを保証するんだよ。”" userName="timschmidt" createdAt="2025-03-16T20:49:58" color="#ff33a1">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="この説明、まだミスリーディングだよね。unsafeブロックの正しさの前提条件は、ブロック外のコードの正しさにめっちゃ依存するし、Rustのバグでそれが原因ってのよくあるじゃん。Cで範囲外アクセスが他のロジックエラーのせいなのと同じだよ。それに、unsafeブロックはsafeなRust部分が正しく動き続けるための不変条件全部守んないとだし。" userName="uecker" createdAt="2025-03-16T21:14:26" color="">}}

{{<matomeQuote body="unsafeコードがsafeなコードによって維持されるべき前提条件に依存するのはマジそう。でも普通のmodule encapsulationとprivate fields使えば、そういう前提条件を守るべきコードの範囲を特定のmoduleに絞れるんだよね。だからunsafeコードの”trusted computing base”も範囲を絞って制限できるから、監査が必要なコード量を減らせて、安全性の保証を維持するために特に注意深くチェックできるってわけ。Ralf Jungがこのテーマについていい論文とかブログ記事をいっぱい書いてるよ。" userName="lambda" createdAt="2025-03-16T21:36:17" color="#785bff">}}

{{<matomeQuote body="Cのコードをモジュール化して、クリティカルなバッファ操作をもっと安全なAPIにカプセル化できないって思ってる？できるし。問題は、昔のCコードがそういう風に書かれてないってこと。最近のCコードもそうじゃないことが多いけど、それは時間とかリソースが限られてる中で手抜きしてるからだよ。Rustでも同じことが起きると思う。" userName="uecker" createdAt="2025-03-16T21:47:20" color="">}}

{{<matomeQuote body="一見無害そうなCのコードでも、UBだらけで「ローカルな推論」ができなくなることなんてザラにあるから。全然そんなことない。" userName="gf000" createdAt="2025-03-16T22:29:09" color="">}}

{{<matomeQuote body="int average(int x, int y) {<br> return (x+y)/2;<br> }" userName="masfuerte" createdAt="2025-03-17T00:28:35" color="">}}

{{<matomeQuote body="’int’がsignedってこと？それで、signed overflowがCではUBってこと？質問：ISO Cの仕様は置いといて、今のハードウェアプラットフォーム（ARM64とかX86-64）で、signed integersの実装にtwo’s complement使ってないのある？知らないんだよね。two’s complementはsigned arithmeticのoverflowをちゃんとサポートしてると思うんだけど。<br>10年以上前はUBなんて誰も言ってなかった気がする。最近になって騒がれてるけど、会話にほとんど何も追加してない気がする。Win32 APIでCとかC++書くと、変なUBっぽいこといっぱいあるけど、ちゃんと動くし。" userName="throwaway2037" createdAt="2025-03-17T04:29:53" color="">}}

{{<matomeQuote body="AIがundefined behaviorを避けるように書き換えたやつ：<br>＞int average(int x, int y) {<br>＞ long sum = (long)x + y;<br>＞ if(sum > INT_MAX || sum < INT_MIN)<br>＞ return -1; // or any value that indicates an error/overflow<br>＞ return (int)(sum / 2);<br>＞}" userName="oneshtein" createdAt="2025-03-17T06:00:41" color="#38d3d3">}}

{{<matomeQuote body="この回答がなんでdownvoteされたのかわかんない。貴重な情報じゃん。誰かがsizeof(int)がsizeof(long)より小さいとは限らないって指摘したのも知ってるけど、まあlong longに変えればうまくいくし。" userName="throwaway2037" createdAt="2025-03-17T08:29:55" color="">}}

{{<matomeQuote body="それはそうだけど、Rustをこの分析に耐えさせるなら、他の言語もそうあるべきだと思う。unsafeなRustブロックに必要な精査は、すべてのCコードに適用されるべき。Cコードはどこかのコードに依存してる可能性があるからね。実際には、unsafeなコードが何をするかチェックして、安全のために外部に依存するコードをメモして、呼び出し元とかをチェックするよね。" userName="dwattttt" createdAt="2025-03-16T21:34:25" color="#ff5733">}}

{{<matomeQuote body="Cには未定義の動作を引き起こす可能性のある操作がたくさんあって、それらがCコードに密集してるから、未定義の動作をチェックするのが大変なんだよね。Rustはそこが有利だけど、”Rustは安全”とか（でも高速化のためにunsafeブロックが必要じゃん！）、”Cは全部unsafe”って話ほど有利じゃないかもね。" userName="uecker" createdAt="2025-03-16T21:44:19" color="">}}

{{<matomeQuote body="もっと経験のある人に聞きたいんだけど、なんでこれらの操作は”安全”にできないの？Rustが同じ機械語を”安全”に出力するのを邪魔してるものは何？" userName="onnimonni" createdAt="2025-03-16T22:32:18" color="#785bff">}}

{{<matomeQuote body="JVMって何の言語で書かれてるんだろ？von Neumannアーキテクチャ上で動く安全なコードは全部、unsafeなコードの上に構築されてるんだよ。メモリ安全な言語の目標は、unsafeなコアの上に安全な抽象化を提供することなんだ。" userName="sunshowers" createdAt="2025-03-16T21:38:03" color="">}}

{{<matomeQuote body="`unsafe`の目的は、コンパイラにコードブロックが正しいと仮定させること。SIMD intrinsicはraw pointerを引数に取るからunsafeってマークされてるんだ。Safe Rust（デフォルト）では、メモリアクセスはborrow checkerとtype systemによって検証される。Rustの健全性の目標は、safe Rustがout-of-bounds accessとかuse-after-freeを起こさないこと。もし起こしたら、それはRustコンパイラのバグ。" userName="koito17" createdAt="2025-03-16T20:33:12" color="#38d3d3">}}

{{<matomeQuote body="Rustが完全にsafeなRustで書かれてない限り、Rustが安全だってどうやってわかるの？それって真実じゃない？Validatorだってバグがあるし、見逃すことだってあるでしょ？" userName="no_wizard" createdAt="2025-03-16T21:41:22" color="">}}

{{<matomeQuote body="現実からちょっと離れた極端な話だけど、太陽フレアでメモリのビットが反転して、ECC ramのエラー訂正ビットが一気に変わって、メモリ内のポインタが変わって、safeなRustがout of bounds writeしちゃうかもしれないじゃん。<br>完璧に正しいコンピュータのハードウェア、プロセッサ、そして太陽放射を出さない太陽を設計するまでは、コードが完全に正しく実行されることを頼りにできないから、諦めるべきだね。<br>Rustコンパイラが安全だって証明できないけど、使い続けてバグを見つけたら直せばいいんだ。それが現実的ってもんじゃない？" userName="TheDong" createdAt="2025-03-17T03:11:09" color="#38d3d3">}}

{{<matomeQuote body="安全性の保証がどうやって成り立つのかを聞いてるだけなのに、なんで極端な話になるの？Rustを額面通りに受け取るなら、当然の疑問じゃない？" userName="no_wizard" createdAt="2025-03-17T04:39:28" color="">}}

{{<matomeQuote body="ごめん、なんか議論を吹っ掛けてくる人みたいなのが苦手なんだ。<br>例えば、”signalは安全だよ”って言ったら、”いや、厳密にはバグがないって証明できないし、signalに深刻なバグがあるかもしれないから安全じゃないよ、バーカ”みたいな反応する人がいるけど、みんな”安全”って言ったら、”今の証拠と自分の意見では、他の選択肢より安全そう”って意味だってわかってるじゃん。絶対的な真実か嘘かで判断するのは無意味な議論にしかならないんだ。<br>誰かが”1+1=2”って言ったときに、”いや、2進数だと10だよ、バーカ”って返すのと同じで、無意味なノイズ。<br>だから、”safe Rustはout-of-bounds accessとかuse-after-freeを起こさない”って言ったときに、”コンパイラが安全だって証明できないからRustは安全じゃないんでしょ？”って返すのは、同じような反応。みんなわかってることだし、自明なこと。何かを付け加えてるわけじゃない。議論したいだけに見える。<br>アレルギー反応が出ちゃった、ごめんね。" userName="TheDong" createdAt="2025-03-17T07:40:34" color="#ff5c5c">}}

{{<matomeQuote body="よくある答えは、unsafeブロックだけ検証すればいいってこと。Rustの’unsafe’は、普通のCよりも安全じゃない場合もあるけど、予測しやすいから、頑張る意味がないってなるポイントもあるんだよね。RustのコンパイラはCのコンパイラより優れてる。情報が多いし、full-program optimisationをするから。`vec_foo = vec_foo.into_iter().map(...).collect::Vec<foo>`とかは、bounds checksとかallocateとかしない。" userName="Filligree" createdAt="2025-03-16T20:18:28" color="#38d3d3">}}

{{<matomeQuote body="＞Rust bookから引用するね（https://doc.rust-lang.org/book/ch20-01-unsafe-rust.html）”さらに、unsafeは、ブロック内のコードが必ずしも危険であるとか、メモリ安全性の問題が必ず発生するという意味ではありません。プログラマーとして、unsafeブロック内のコードが有効な方法でメモリにアクセスすることを保証することが目的です。”<br>Rustのことをよく知ってるなら、プログラマーになれるね！" userName="akx" createdAt="2025-03-16T20:20:52" color="">}}

{{<matomeQuote body="Cのプログラマも同じこと考えてたと思うけどねー。実際どうだったか、わかるっしょ？" userName="silisili" createdAt="2025-03-16T20:42:17" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="いやいや、Cにはunsafeなコードのencapsulationがないんだよ。これがめっちゃ重要。<br>encapsulationこそが、ローカルな推論をグローバルな正しさにスケールさせる唯一の方法なんだから。" userName="sunshowers" createdAt="2025-03-16T21:40:19" color="#785bff">}}

{{<matomeQuote body="マジ勘弁。Rustのunsafeコードでinvariantを破ったら、ローカルなコードが原因でグローバルな問題起こせるし。<br>use-after-freeとか、borrow checker違反とか、unsafeコードが間違ってたら余裕で発生するって。<br>何もflag立たないし、どのunsafeコードが原因かわかんないし、デバッグ超大変。<br><br>unsafeなblockが有限で小さければauditしやすいし、メモリ安全性のバグがそこにあるって確信できるって意味ではencapsulatedなのかもね。<br>でも、最近はunsafeが多すぎて、全部auditしなきゃいけないから、encapsulationって言ってもあんま意味ないと思うんだ。<br>unsafeブロックは思ったよりグローバルな影響与えまくるし、使いすぎなんだって認めないと。<br>Cに足りないのは、miriみたいなツールで、低false-positiveで使えるやつ。<br>encapsulationはCでも簡単にできるし。" userName="DannyBee" createdAt="2025-03-17T11:57:46" color="">}}

{{<matomeQuote body="ここで言ってるencapsulationは、安全なAPIを公開して、UBにつながるような誤用が絶対にできないようにすること。<br>たとえば、`memchr` crateは完全に安全なAPIを提供してる。unsafe使わなくても使える。<br>でも、内部はunsafeだらけ。APIの特定の使い方が原因でUBを引き起こすバグがある可能性は…ある！<br><br>でも、それはencapsulationに違反してない！encapsulationってのはblameの所在の話。<br>`memchr`が安全なAPIを公開してて、それ使ってUBが出たら、それは`memchr`のせい。使ってる側のせいじゃない。<br>CライブラリのAPIでUB踏んで、バグ報告したら、”お前の使い方が悪い”って言われたことない？<br>Rustでは、`unsafe`ってタグが付いてるAPI以外はそうならないように…なってないといけない！<br><br>まぁ、いろいろ注意点はあるけど、全体的なポイントは変わらない。<br>人が嘘をつかないことが前提！安全なAPI公開して、UBが出ても”お前の使い方が悪い”って言うこともできる。<br>そういうcrateもあるけど、ちゃんと健全なAPIを提供するようにしてるcrateがたくさんあるってことも忘れないで欲しい。" userName="burntsushi" createdAt="2025-03-17T14:56:19" color="#45d325">}}

{{<matomeQuote body="Rustって、気軽に速いコード書けるんだよね。数年前、プログラミング言語制限なしのコンテストに参加したんだけど、お題は一番速いtokenizer（文を単語に分割するやつ）を書くこと。<br>Rustをちょこっと触った程度の俺が、15分で適当に書いたら、2位になったんだよね。頑張って書いたCのやつより速かったし、アセンブラに負けただけ。<br>Rustは自動的に速くなるわけじゃないけど、デフォルトとstdライブラリが優秀すぎて、普通の書き方でCより速くなっちゃうんだよね。しかも、typesafetyとmemory safety付きで。これはマジですごい。" userName="atoav" createdAt="2025-03-17T08:14:43" color="#ff33a1">}}

{{<matomeQuote body="zlib-ngはほぼアセンブリみたいなもんじゃん。Cもちょっと入ってるけど。<br>＞“rust実装は特定のSIMD機能が使えることを前提にできるけど、zlib-ngはruntimeでチェックする必要があったから、フェアじゃなかった”<br>zlib-ngは必要なアーキテクチャにコンパイルできるし、元の記事にはコンパイル方法とかアーキテクチャとか書いてないし。<br>micro benchmarkを信用しちゃダメってことだね。" userName="xxs" createdAt="2025-03-16T20:08:30" color="">}}

{{<matomeQuote body="＞“Russinovichが、Rustで書き換えただけでコードが5-15%速くなったって言ってる（最適化なしで）”<br>＞<a href=”https://www.youtube.com/watch?v=1VgptLwP588&t=351s”>https://www.youtube.com/watch?v=1VgptLwP588&t=351s</a>" userName="tdiff" createdAt="2025-03-16T20:23:54" color="">}}

{{<matomeQuote body="原因を分析しないと、その発言は意味ないよ。<br>たとえば、彼はコードを改善しようとしたわけじゃないって言ってるけど、数十年前のCのコードをRustに移植してたんだよね。対象がtruetype font parsing and renderingってこと考えると、元のコードはフォントデータからデータをコピーするmemory copiesが多かったんじゃないかな。Rustなら安全にそれを避けやすいから。<br>それか、Windows 95以降では不要なコードだと気づいて削除したのかも。" userName="Someone" createdAt="2025-03-17T08:21:51" color="">}}

{{<matomeQuote body="Cでも同じくらい速くできるけど、めっちゃ頑張る必要があるってことだよね。Lang-Xの方がCより速いなら、Cの実装にスキル不足があるってことじゃん？でも、Lang-XでCより速くできるなら、特にLang-Xを数ヶ月しか使ってなくて、Cを何十年も使ってるなら、それはマジで意味あることだよ。Cのコードを同じくらい速くできるのは確かだけど、小さな問題にそんな時間と専門知識を使えないよね。ネットの掲示板で「どの言語が優れてるか」みたいな議論以外では、プログラムを理論的にどれだけ速くできるかはどうでもよくて、ビジネスの制約（時間とか）の中で実際にどれだけ速くできるかが重要なんだよね。" userName="serial_dev" createdAt="2025-03-17T09:00:25" color="#38d3d3">}}

{{<matomeQuote body="スキル不足って話は面白いよね。この動画を思い出すよ。作者が同じプログラムをRustとGoで書いてるんだ。<br>https://www.youtube.com/watch?v=Z0GX2mTUtfo<br>＞Now、the Rust version took me about five times as long as the Go version<br>＞The Go one performed almost identically well<br>これはネットワークのコードだけど、数値計算でも同じようなことがあったんだ。C#とC++でPiの近似計算のプログラムを1行ずつ同じように書いたら、C#の方が速かったんだよね。C#は実行中にホットなコードパスを積極的に最適化するけど、C++でそれやるにはプロファイラでデータを集めて特別なコンパイラフラグを使う必要があるんだ。" userName="andai" createdAt="2025-03-17T10:46:02" color="#ff33a1">}}

{{<matomeQuote body="俺が言ったことはRustとGoにも当てはまるよ。Goのコードの方がRustのコードより速いなら、Rustのスキル不足って言えるかもしれないけど、RustのプログラムをGoのプログラムより速くするために10倍以上の時間がかかるなら、Goの方が速くてシンプルって言えるよね。もっと正確に言うなら、”書ける”Goのコードは”書ける”Rustのコードと同じくらい速いってことかな。" userName="serial_dev" createdAt="2025-03-17T18:46:53" color="#ff5733">}}

{{<matomeQuote body="コンテキストが足りないかもしれないけど、5〜15%の改善のためにコードを書き換えるのは小さい気がするな。既存の言語で「簡単な書き換え」を依頼するだけで、どれだけ改善されるんだろう？既存の言語で簡単な変更を加えるだけでもパフォーマンスが向上することってよくあると思う。" userName="pinkmuffinere" createdAt="2025-03-16T20:43:16" color="">}}

{{<matomeQuote body="書き換えの正当な理由としては、メンテナンスが楽になったり、ビルド/テスト/配布が簡単になるってことだよね。経験豊富で熱心なCの開発チームが成熟したコードベースを持ってて、Rustのためにプロジェクトを書き換えるのはナンセンスだよ。でも、Rustの方が楽なチームなら、そうすることで製品が安全でメモリセーフになることを保証しやすくなるかもしれないね。" userName="turtletontine" createdAt="2025-03-16T21:01:09" color="#ff33a1">}}

{{<matomeQuote body="＞if you have a team that’s more comfortable in<br>他の言語でも同じように、Rustだけじゃなくてね。" userName="johnisgood" createdAt="2025-03-16T21:09:01" color="">}}

{{<matomeQuote body="反対だね。「メンテナンス性」のために書き換えるってのは、エンジニアが自分の好きな言語で書き換えたいだけだってことだよ。チームの誰かが「メンテナンス性」のためにコアな依存関係を書き換えるのは許可しないけど、速くて安全になるって言うなら絶対に許可するよ。" userName="maccard" createdAt="2025-03-17T10:22:18" color="">}}

{{<matomeQuote body="＞a rewrite for “maintainability” is an engineer saying they want to rewrite in their preferred language<br>そうとは限らないよ。言語がタスクに合ってなかったり、人材が見つかりにくい場合もあるからね。" userName="ForTheKidz" createdAt="2025-03-17T11:57:22" color="">}}

{{<matomeQuote body="かなりコアなライブラリをRustで書き換える話をしてるんだよね。Cが本質的に不向きだとか、人材が見つかりにくいとは思わないな。もしライブラリがFortranで書かれてたらそうかもしれないけど。まあ、技術的には正しいけど、おめでとう。" userName="maccard" createdAt="2025-03-17T13:12:03" color="">}}

{{<matomeQuote body="一般的な話に対して答えたんだよ。いずれにせよ、Cが2025年に考えられるほとんどのユースケースに適してるなんて思わないな。趣味ならいいけど、信頼したいコードをリリースするためじゃないよ。Cで信頼できるコードを作ってきたのは事実だけど、CとRustが同じ価値を提供すると考えるのはバカげてるよ。Cを選ぶのは、迅速な開発と安い開発者（または、マイナーな組み込みアーキテクチャを使うなど、ニッチな懸念事項）のためで、Rustを選ぶのは、Cが引き起こした問題を解決するためだよ。" userName="ForTheKidz" createdAt="2025-03-17T17:19:40" color="#ff33a1">}}

{{<matomeQuote body="ぶっちゃけ聞きたいんだけど、なんでCじゃなくてRustなの？メモリ安全な言語ならCommon LispとかOCaml、Ada/SPARKとかもあるじゃん？" userName="johnisgood" createdAt="2025-03-17T18:50:42" color="">}}

{{<matomeQuote body="単純な書き換えだけでもパフォーマンス上がるのはわかる。でも、Rustってコードの構造を強制することで、結果的にパフォーマンスが向上することってあるんじゃない？5～15%の改善は、特に低レベルな基盤コードではかなり大きいよね。他の保証もあるなら尚更。" userName="tdiff" createdAt="2025-03-16T20:53:13" color="#ff5733">}}

{{<matomeQuote body="5～15%の改善でコードベースを書き換えるのは割に合わないって意見もあるよね。でも、彼らはパフォーマンスが上がるとは思ってなかったんだって。むしろ逆で、すぐに改善が見られたことに驚いてるんだよ。" userName="sedatk" createdAt="2025-03-16T21:07:26" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="低レベルの構成要素でできることって限られてると思うけど、圧縮ライブラリみたいに広く使われてるものなら、15%の改善は絶対に価値があると思う。" userName="maccard" createdAt="2025-03-17T06:52:10" color="#45d325">}}

{{<matomeQuote body="ホットパスなら5%でもかなり大きいよね。しかも、彼らはパフォーマンス向上を期待してなかったんだよ。他の理由で書き換えたら、予想外にパフォーマンスが上がったんだって。" userName="pdimitar" createdAt="2025-03-17T00:25:46" color="#45d325">}}

{{<matomeQuote body="Rustで作業してて気づいたのは、コンパイルと分析のチェックがCやC++よりずっと厳しくて、cratesのエコシステムが使いやすいから、より高度なアルゴリズムや手法を使えるってこと。今やってるプロジェクトでは150個くらいの依存関係があるんだけど、CやC++だったら大変だったと思う。" userName="pveierland" createdAt="2025-03-17T04:18:23" color="#38d3d3">}}

{{<matomeQuote body="言ってることは全部正しいんだけど、150個の依存関係を監査するって考えただけでゾッとする。一人じゃ無理だよ。" userName="ForTheKidz" createdAt="2025-03-17T04:38:02" color="">}}

{{<matomeQuote body="だからコードの共有って大事なんだよね。一人に負担がかかるんじゃなくて、コミュニティ全体でやるんだ。例えば、cargo-vetやcargo-crevを使えば、信頼できる人に依存関係の監査を手伝ってもらえる。" userName="steveklabnik" createdAt="2025-03-17T04:46:41" color="#ff5733">}}

{{<matomeQuote body="マジそれ。ソフトウェアは信頼なしじゃスケールしない。ブラウザやOSだって、一人で全部監査できるわけないじゃん。" userName="pveierland" createdAt="2025-03-17T04:47:48" color="#ff5733">}}

{{<matomeQuote body="だいたい同じくらいの労力だよ。JSONを解析する必要があるなら、自分で書くか既存のライブラリを使うかのどっちかだけど、C++でもRustでもやることは変わらない。" userName="maccard" createdAt="2025-03-17T10:26:42" color="">}}

{{<matomeQuote body="これって、どっちかっていうと”zlib-rsがzlib-ngより速い”って言うべきじゃない？「$libraryが$programming_languageより速い」ってのは違う気がするな。" userName="layer8" createdAt="2025-03-16T21:00:56" color="">}}

{{<matomeQuote body="C言語のエイリアシングのせいで、コンパイラがアグレッシブに最適化できないって聞いたことあるよ。Rustのコンパイラはエイリアシングの問題がないから、もっと積極的に最適化できるって信じられる。" userName="kgeist" createdAt="2025-03-16T20:42:41" color="#45d325">}}

{{<matomeQuote body="Cには`restrict`っていう型修飾子があって、エイリアシングがないことを表現できるんだから、根本的な障害にはならないはずだよ。" userName="layer8" createdAt="2025-03-16T21:05:48" color="">}}

{{<matomeQuote body="restrictって全然使われてないから、コンパイラの機能自体がバグだらけだったんだよね。最近Rustのコンパイルでnormになったからやっと修正されたんだよ。" userName="gf000" createdAt="2025-03-16T22:48:13" color="#785bff">}}

{{<matomeQuote body="それってほとんどLLVMの問題だったと思うよ。gccはFortranのサポートのおかげでrestrictをちゃんとサポートしてる。" userName="cozzyd" createdAt="2025-03-17T01:42:02" color="">}}

{{<matomeQuote body="俺の理解だと、noaliasはLLVMで完全には活用されてなくて、バグが少なくなった程度らしい。だからRust固有の最適化に関してはRustが有利になる可能性もあるかな。Fortranみたいな制限がある言語は、最適化でちゃんと結果を出してるから、Rustも同じように成長できる余地は十分にあると思うよ。" userName="vacuity" createdAt="2025-03-16T23:44:27" color="#45d325">}}

{{<matomeQuote body="＞fundamental impediment<br>これって面白い言葉だね。なんでこの時点でアセンブリで高性能ライブラリコードを書く人がいないんだろう？" userName="anon-3988" createdAt="2025-03-16T23:28:42" color="">}}

{{<matomeQuote body="Cの実装よりも時間と労力がかけられてるはずなのに、それよりも速いってことは、Cにとっては良くない状況だよね。" userName="qweqwe14" createdAt="2025-03-16T20:07:41" color="#ff33a1">}}

{{<matomeQuote body="アプリケーションを書き直す時、言語を変えずに機能はそのままで書き直したら、書き直した方が速くなると思うよ。" userName="vkou" createdAt="2025-03-16T21:02:59" color="">}}

{{<matomeQuote body="これってSecond System Effectってやつだよね。Great Rewritesは常にパフォーマンス向上に成功するっていう。" userName="renewiltord" createdAt="2025-03-16T22:53:49" color="">}}

{{<matomeQuote body="言ってる意味がちょっと違うかも。wikipediaによるとね…<br>https://en.wikipedia.org/wiki/Second-system_effect<br>まあ、古いコードベースからグリーンフィールドで始めるのがパフォーマンスへの道ってのは同意だけど。" userName="cb321" createdAt="2025-03-17T10:41:50" color="">}}

{{<matomeQuote body="そんなことないでしょ？ Cのエキスパートが時間かけて遅くて安全じゃない実装を、Rustのエキスパートより作っちゃうなんて。決定的ではないけど、言語について何か言ってると思うよ。" userName="jason-johnson" createdAt="2025-03-17T20:37:46" color="">}}

{{<matomeQuote body="ハードル低いんじゃない？ Nimのzippyはzlibより1.5倍から2倍速いらしいし:<br>https://github.com/guzba/zippy<br>Cにもっと速いzlibあるしね:<br>https://github.com/ebiggers/libdeflate<br>(EDIT: mananaysiempreが言ってた https://news.ycombinator.com/item?id=43381768 )<br>zlib自体は古臭いけど、並列処理フレンドリーなフォーマットのベースとして人気なんだよね:<br>https://www.htslib.org/doc/bgzip.html" userName="cb321" createdAt="2025-03-16T20:32:23" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
