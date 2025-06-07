+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'Fast-Mathに注意！浮動小数点演算の危険な最適化'
tags = ["プログラミング", "浮動小数点", "最適化", "コンパイラ", "性能"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> Fast-Mathに注意！浮動小数点演算の危険な最適化

引用元：[https://news.ycombinator.com/item?id=44142472](https://news.ycombinator.com/item?id=44142472)




{{<matomeQuote body="Rustで代数的な演算のためのAPI設計を手伝ったよ：＜https://github.com/rust-lang/rust/issues/136469＞。これはうまく進んでる。この演算はね、<br>1. 関数全体やプログラム全体じゃなくて、局所的に適用できるんだ。<br>2. 完全に安全だよ。-ffast-mathはNaNがないみたいな仮定を含んでて、それに反すると未定義動作になるけど、これは大丈夫。<br>じゃあこの代数的演算って何をするかって？単体では普通の演算と大差ないよ。でも一連の操作は、まるですべて実数演算でやってるかのように、代数的に正当化される最適化が許されるんだ。" userName="orlp" createdAt="2025/05/31 08:59:11" color="#38d3d3">}}




{{<matomeQuote body="-ffast-mathって、実は15個くらい別々のフラグがあって、個別に使えるんだよ。そのうち3つは、NaNなし、infinityなし、subnormalなしってやつ。他のいくつかを使えば、結合則や分配則を有効にできるよ。<br>Rustのライブラリにもメリットはあるけど、君がここで言ってる目標は5つのコンパイラフラグで実現できるんだ。ライブラリの利点は、いつこれを適用するかを選べるところだね。" userName="pclmulqdq" createdAt="2025/05/31 14:04:21" color="#ff5c5c">}}




{{<matomeQuote body="でも、場所によってどれを選ぶか決められるのは良い点なんじゃないの？" userName="foota" createdAt="2025/05/31 23:53:42" color="">}}




{{<matomeQuote body="それいいね！本当にすごいのは、丸め誤差の結果を言語が分かりやすくしてくれることだね。例えば、逆方向の丸めで2回実行したり、内部でランダムな方向に丸めながら何度も実行したり。プログラマーが手でやるには面倒すぎることを自動化してくれるとかね。そうすれば、Rustを使う人が浮動小数点数の微妙な違いを学べるようになるんじゃないかな。隠すんじゃなくてね。<br>参考になるかも：＜https://people.eecs.berkeley.edu/~wkahan/Mindless.pdf＞" userName="glkindlmann" createdAt="2025/05/31 12:43:42" color="#785bff">}}




{{<matomeQuote body="これらの呼び出しって、x86のMXCSRレジスタにあるFTZやDAZフラグ、ARMのFPCRレジスタにあるFZやFIZフラグをクリアするの？" userName="eqvinox" createdAt="2025/05/31 09:28:26" color="#ff5c5c">}}




{{<matomeQuote body="いや、そうじゃないと思うよ。今は、これらの演算はLLVMのフラグを設定して、再結合、縮約、相互乗算による除算の置換、符号付きゼロなしの仮定を許可するだけなんだ。<br>将来、LLVMが代数的な最適化の範囲に含まれるもっと多くのフラグを提供したら、拡張される可能性はあるよ。" userName="orlp" createdAt="2025/05/31 09:45:19" color="#38d3d3">}}




{{<matomeQuote body="あーごめん、勘違いしてたよ。このAPIが逆で、“安全でない”操作を禁止するものだと思ってたんだ。（たぶん、質問はそれらのフラグを設定するかってことだったね）<br>（命名の話：“algebraic”って、演算自体が代数的なんだから、何を示すかあんまり分かりやすくないよね。:D）" userName="eqvinox" createdAt="2025/05/31 09:50:04" color="">}}




{{<matomeQuote body="（命名の話：“algebraic”って、操作自体は代数的だけど、結合則みたいな一般的な代数的性質には従わないんだよ。リンク先のRust issueでも、命名が分かりにくいってこと自体は認識されてるんだ。<br>引用するね：＜https://github.com/rust-lang/rust/issues/136469#issuecomment...＞<br>あと、このコメントも：＜https://github.com/rust-lang/rust/issues/136469#issuecomment...＞<br>だから、命名については議論が続いてる最中だよ。" userName="nextaccountic" createdAt="2025/05/31 09:54:24" color="#ff5c5c">}}




{{<matomeQuote body="Rustは全然知らないから、そこでコメントするのは適切じゃない気がするんだけど、“lax_”とか“relax_”って命名は、すごく短いっていう追加の利点があるかもね。<br>（これって演算子をオーバーロードするのかな？それとも、毎回これを…いっぱい…タイプしないといけないのかな？）" userName="eqvinox" createdAt="2025/05/31 10:12:07" color="">}}




{{<matomeQuote body="Rustには、`Wrapping＜I＞`みたいに、便利な新しい型を使って演算子をオーバーロードする前例があるよ（例えば`I.wrapping_add(I)`とかね）。今のところ、そういうラッパーは提案されてないみたいだけど、将来追加できない理由はないと思うよ。" userName="Sharlin" createdAt="2025/05/31 10:23:41" color="#ff5c5c">}}




{{<matomeQuote body="お遊びで作ってみたコード例と、それを使ったサンプルがここにあるよ！見てみて。https://godbolt.org/z/Eezj35dzc" userName="Measter" createdAt="2025/05/31 20:06:03" color="#45d325">}}




{{<matomeQuote body="Cのプリプロセッサでヤバいことやりまくった俺としては、このRustマクロのぐちゃぐちゃ具合、マジで胸熱だわ＜３" userName="eqvinox" createdAt="2025/06/01 05:17:26" color="">}}




{{<matomeQuote body="ああ、これは単純だね。ただの基本的な展開で定型的なコードを生成してるだけだよ。本物の達人は、もっとえげつなくてすごいマクロ書けるんだぜ。" userName="Measter" createdAt="2025/06/01 10:32:46" color="">}}




{{<matomeQuote body="うわ、超ハードコアなアンローリングだな。" userName="Sharlin" createdAt="2025/05/31 22:09:45" color="">}}




{{<matomeQuote body="なるほどね、LLVMのintrinsicが公開されてるなら、それどこかのcrateに入れとけばいいだけじゃん。" userName="eqvinox" createdAt="2025/05/31 10:29:33" color="">}}




{{<matomeQuote body="WebAssemblyも、似たような命令セットのことをrelaxedって呼ぶことにしたらしいよ。" userName="CryZe" createdAt="2025/05/31 10:33:04" color="">}}




{{<matomeQuote body="ってことはさ、この操作を使って書かれた物理エンジンって、違うプラットフォームでも（代数演算を正しく実装してれば）常に同じ決定論的な結果を出すってこと？" userName="evrimoztamur" createdAt="2025/05/31 09:36:04" color="#45d325">}}




{{<matomeQuote body="それは逆だよ。これらは最適化のために、浮動小数点数が実際にはそうじゃなくても結合法則とかを満たす（つまり代数的である）とコンパイラに仮定させるんだ。だから、コンパイラが行う変換によって結果は変わり得る——特に、通常許されない最適化ビルドと非最適化ビルドの間で変わる可能性がある。" userName="Sharlin" createdAt="2025/05/31 10:06:53" color="#ff5733">}}




{{<matomeQuote body="＞実際にはそうじゃなくても…代数的だとコンパイラに仮定させるんだ。<br>変換によって数値的な丸め誤差が同じか少なくなる追加の制約は付けられないのかな。例えばdoubleで(0.2+0.1)-0.1は0.20000000000000004になるから、(A+B)-BをAに変えるのは常に数値誤差を減らすと思うんだけど。まあ、浮動小数点数演算だし、ここにもなんか変な落とし穴があるんだろうけどね。" userName="vanderZwan" createdAt="2025/05/31 12:29:56" color="#ff5c5c">}}




{{<matomeQuote body="それ、多分無理だと思う。ある入力でより正確でも、別の入力ではそうじゃなくなる。浮動小数点数の最適化には厄介なトレードオフがあって、最も単純な演算順序は遅くて不正確。バランスの取れたツリーは速くて正確だけど、どの形が最速かはSIMD幅みたいなハードウェア次第。それに、どんな形も完全に正確とは限らないんだ。正確性を出すには再帰的な縮小とか使うけど、とにかく銀の弾丸はないよ。" userName="StefanKarpinski" createdAt="2025/05/31 14:25:39" color="#45d325">}}




{{<matomeQuote body="限定的な Fast-Math ならできるかもね。一部の入力で誤差が少なくなる変換だけ許可するとか。x+x+xを3xにするみたいに項をまとめるくらい。全部最適化しようとするとヤバいことになるんだと思うよ。" userName="scythe" createdAt="2025/05/31 14:35:36" color="">}}




{{<matomeQuote body="Kahan summation もそのワナの一例だね（元の記事にもある）。Fast-Math だと、代数的にはゼロになるはずの項を消しちゃうんだけど、それだとアルゴリズムの精度向上効果が完全に無くなっちゃうんだ。" userName="legobmw99" createdAt="2025/05/31 12:45:31" color="#45d325">}}




{{<matomeQuote body="EForth でソフトFPなら<br>2 f 1 f 1 f f+ f- f.<br> 0.000 ok<br>PFEでGLIBC math libraryを使っても<br>2e0 1e0 1e0 f+ f- f. 0.000000 ok<br>ってなるよ。" userName="anthk" createdAt="2025/05/31 14:21:26" color="">}}




{{<matomeQuote body="どんな浮動小数点実装でも、小さい〜中くらいの整数は丸め誤差なしで扱えるんだ。<br>だから、その例（コメント3）から学べることは何もないね。" userName="Dylan16807" createdAt="2025/06/01 06:59:54" color="">}}




{{<matomeQuote body="でも Forth なら、後にIEEE標準を決めた人たちが作った、完全に機能するソフトウェア浮動小数点を持てるんだ。<br>ハードウェアFPがないすごく小さいマイコンでも、ソフトウェアFP実装なら標準のしきい値内で完璧に動くはずだよ。" userName="anthk" createdAt="2025/06/01 08:47:33" color="">}}




{{<matomeQuote body="そう、まあ、そうなんだろうね。ハードウェアFPがないときにしっかり検証されたライブラリがあるのはありがたいけど、俺はそういう状況になったことないし、この記事の議論とどう関係するのか全然わかんないな。<br>どんな浮動小数点実装だって、IEEEも含めて丸め問題はあるよ。<br>上の例（コメント3）はIEEEだよ。" userName="Dylan16807" createdAt="2025/06/01 23:22:15" color="">}}




{{<matomeQuote body="いや、どの最適化が適用されるか（もしあれば）、保証はないんだ。適用される可能性があるだけ。<br>例えば、a*b + c に対して、対応プラットフォームなら Fused Multiply-Add 命令が出されるかもね。それはクロスプラットフォームじゃないよ。" userName="orlp" createdAt="2025/05/31 09:40:35" color="">}}




{{<matomeQuote body="いや、結果はコンパイラがどう並び替えるかに依存するかもね。それはプラットフォームによって違う可能性があるんだ。" userName="SkiFire13" createdAt="2025/05/31 09:41:08" color="">}}




{{<matomeQuote body="記事やコメント（ctrl-fした限り）で見なかったことの一つに、コード中の NaN の原因を突き止めるために feenableexcept()[1] を使う方法があるよ。<br>feenableexcept(FE_DIVBYZERO | FE_INVALID | FE_OVERFLOW);<br>ってすると、コードでNaNがちょろっと出てきたときにSIGFPEを発生させられるんだ。<br>もちろん Fast-Math 有効だとダメだけど、Fast-Math なしでも知らないうちにNaNが出てるなら、Fast-Math 試す前に直す必要があるのは明らかだし、それらは見つけにくいけど、feenableexcept() が見つけるのをすごく楽にしてくれるんだ。<br>[1] https://linux.die.net/man/3/feenableexcept" userName="smcameron" createdAt="2025/05/31 14:16:38" color="#ff5c5c">}}




{{<matomeQuote body="うん、時々有効にしてみて何か文句言わないかチェックするのはかなり便利だね。<br>でもプロダクションコードで使うときはめちゃくちゃ注意してね[1]。DLLの中にいる場合、FPU例外フラグを変更するのは大問題だよ（スコープから出る時にすごく気をつけて元に戻さない限り）。<br>[1]: https://randomascii.wordpress.com/2016/09/16/everything-old-..." userName="DavidVoid" createdAt="2025/05/31 23:22:41" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Trapping mathがいい方法だよ。`cosmopolitan`のリポジトリに使い方を例として書いたから見てみて。URL: https://github.com/jart/cosmopolitan/blob/master/examples/tr..." userName="jart" createdAt="2025/06/01 01:31:50" color="#ff5c5c">}}




{{<matomeQuote body="なんかさ、本当の問題はIEEE規格自体にある気がするんだよね。多くのコードには関係ない細かいルールが多すぎるし、opt-outじゃなくてopt-inにすべきだったよ。ハードウェアの現実に合わせて規格も進化しないと。auto-vectorizeできないのは今のハードウェアじゃ致命的すぎ。でも決定論を犠牲にするのもキツいな。OpenCLとかCUDAはどうなんだろ？命令順序を保証して、しかもGPUでちゃんと並列化できる方法あるのかな？" userName="emn13" createdAt="2025/05/31 10:34:20" color="#ff5c5c">}}




{{<matomeQuote body="IEEE 754ってどうやってauto-vectorizeを妨げるの？" userName="Affric" createdAt="2025/05/31 11:22:09" color="">}}




{{<matomeQuote body="浮動小数点演算は交換法則も結合法則も成り立たないから、やらない方がいいよ。" userName="goalieca" createdAt="2025/05/31 13:10:05" color="#ff5733">}}




{{<matomeQuote body="`for x in array { sum += x }`みたいなループを書いたらさ、それは要素を「この順番で」「一つずつ」足したいっていうプログラムの仕様なんだよ。Vectorizationするとその順番が変わっちゃうんだ。" userName="kzrdude" createdAt="2025/05/31 11:48:17" color="#ff5c5c">}}




{{<matomeQuote body="なんで交換法則成り立たないの？" userName="eapriv" createdAt="2025/05/31 14:06:12" color="">}}




{{<matomeQuote body="IEEE-754の細かい要件は個々のプログラムには重要じゃないかもしれないけど、ある程度ちゃんと定義されたセマンティクスを数字に持たせたいなら、どんな数値形式でもそういう欠点は出てくるよ。<br>GPUコードはね、基本的には各要素に個別作用するスカラーコードとして書かれるんだ。ハードウェアが全体としてループする感じ。マルチスレッドと同じで順序は保証されない。だから、操作の並べ替えが必要なVectorizeコードは物理的に書けないようになってる。「リストの各要素をアキュムレータに足す」みたいなコードは書けないんだよ（書けても非Vectorized CPUより遅くなるけどね）。" userName="dzaima" createdAt="2025/05/31 18:45:13" color="#785bff">}}




{{<matomeQuote body="実際にはIEEE-754的には交換法則は成り立つんだ。ただ、NaNの結果になる場合は違うNaNの表現になるかもしれないけどね。" userName="layer8" createdAt="2025/05/31 14:40:45" color="#ff33a1">}}




{{<matomeQuote body="うん、浮動小数点数の不正確さがあるから、「(a + c) + (b + d)」が「a + b + c + d」と同じだと決めつけられないんだよね。これのせいで、いつかfixed pointとかbignumの実装の方が速くなったら皮肉だなあ。" userName="stingraycharles" createdAt="2025/05/31 12:35:47" color="#ff33a1">}}




{{<matomeQuote body="Auto-vectorizeできないのはIEEE規格のせいじゃなくて、操作の順序が関係ないことを表現する方法がないプログラミング言語のせいだよ。人気の言語のほとんどは、必要ない場所でもシーケンシャルなセマンティクスを強制する欠陥があるね。<br>IEEEの浮動小数点標準は史上最も有用な規格の一つだよ。ハードウェア設計者や素人プログラマはベンチマークで良い結果を出すためにズルしたがるインセンティブがあるからさ。でも、何よりも正しい結果が必要なユーザーもいるし、それは生死に関わることさえある。正確さが重要じゃない用途、つまり主にグラフィックスやML/AI向けには、GPUやNPUみたいな専用アクセラレータを使うのがベター。汎用CPUでは、IEEE規格に完全準拠しないのは深刻な間違いだよ。<br>CUDA、OpenMPなんかについて言うと、定義上、並列化可能な操作なら実行順序は関係ない。順序が重要なら、どんなプラットフォームでも結果を保証するのは不可能だ。<br>Vectorizedコードが欲しいなら、CとかC++みたいな言語に頼るべきじゃないね。OpenMP、CUDA、OpenCLみたいな目的のために開発された拡張機能を使うべきだよ。そこではVectorizationは偶然に任されないからね。" userName="adrian_b" createdAt="2025/05/31 13:55:22" color="#45d325">}}




{{<matomeQuote body="CUDAの「カーネル」ってさ、1963年からある「parallel DO」とか「parallel FOR」と結局同じことだよね。NVIDIAはキーワードを変えたり、ループの本体と範囲を別々に書かせたりして分かりにくくしてるだけ。数十年前からある用語を新しい言葉で大量に作り直してて、GPUの仕組みを煙に巻こうとしてるみたいで超うざい。さらにAMDもNVIDIAを真似て、また違う独自の用語を作ってるし。" userName="adrian_b" createdAt="2025/06/01 06:44:16" color="">}}




{{<matomeQuote body="IEEEの仕様自体が問題って感じる人もいるけど、そうじゃないんだ。問題は浮動小数点コードが精度エラーに超敏感なこと。仕様に厳密に従っても精度エラーは直らないけど、エラーが出た時の挙動は決定的になる。これで9割方「チューニングの問題」として無視できちゃうんだけどね。でも精度エラーはバグなんだ。バグは直すべきで、決定論的なトリックで無視しちゃダメ。でもこれってデザインとか難しい数学（gimbal lockみたいに、直すにはquaternionsとか理解する必要があったりして大変！）が絡むから難しいんだよね。だからみんな対処してるだけ。個人的には--ffast-mathは良い面の方が大きいと思うし、プロジェクトでは絶対に有効にすべき。だってこれで見つかる「問題」は、どっちみち直すべきバグなんだから。" userName="ajross" createdAt="2025/05/31 13:05:26" color="#45d325">}}




{{<matomeQuote body="複数のNaNがあるのに、その振る舞いの仕様がちゃんと決まってないのって、なんか無駄なミスって感じだよね。" userName="adgjlsfhk1" createdAt="2025/05/31 22:03:31" color="">}}




{{<matomeQuote body="xargsもparallel forと同じことやってるよね。OFCourse、Forthの人たちなら、こんなの朝飯前だったかもね。" userName="anthk" createdAt="2025/06/01 11:43:47" color="">}}




{{<matomeQuote body="数学的な用途なら、NaNのペイロードなんてどうでもいいし、挙動も同じ（quiet vs. signaling NaNsは除く）。等値比較でもNaNは常に等しくないから関係ないよ。" userName="layer8" createdAt="2025/06/01 00:59:10" color="">}}




{{<matomeQuote body="ほとんどのプログラミング言語は、必要ないのに逐次実行のセマンティクスを強制する欠点があるよね。Occamみたいにそうじゃない言語もあったけど、広まらなかった。メモリ順序付け関数でプログラマーがアトミック操作の優先順位を指定できるみたいに、数学とか一般的な式の集合に対しても同じことできないのかな？" userName="alfiedotwtf" createdAt="2025/06/01 01:18:38" color="">}}




{{<matomeQuote body="それはそうだよ。486SXの固定小数点と486DXの浮動小数点を比べてみてよ。浮動小数点よりも、スケール変換とか合計とか必要な精度で表示するとかの方が固定小数点の方が速いんだぜ。" userName="anthk" createdAt="2025/05/31 14:26:01" color="">}}




{{<matomeQuote body="（gimbal lockについて）Euler anglesでも月に行ったんだし、他の方法でgimbal lockを避けることもできるんじゃない？本物の機械式ジンバルを使ってる時は、あまり選択肢がないだろうけどね。" userName="chuckadams" createdAt="2025/05/31 13:52:09" color="">}}




{{<matomeQuote body="順序を変えても違いは小さいって言うのは技術的には正しいけど、それは部分的な話だよ。matrix multiplicationみたいに算術が非可換な場合、もっと大きな違いが生じることがあるんだ。" userName="lo0dot0" createdAt="2025/05/31 13:51:11" color="#38d3d3">}}




{{<matomeQuote body="それは今のアーキテクチャでも同じなの？例えばSIMDでも固定小数点ってあるの？" userName="stingraycharles" createdAt="2025/06/03 15:37:58" color="">}}




{{<matomeQuote body="加算の順序を変えると計算結果が変わるかも。だから自動で並列処理する（オートベクタライゼーション）のが難しいんだよね。" userName="Kubuxu" createdAt="2025/05/31 11:26:16" color="">}}




{{<matomeQuote body="順序変更で”小さな差”しか生まない、なんて思っちゃダメ。大きい値に小さい値を何度も足すと、とんでもない差になることもあるからね。例えば、huge_float_value に .01 を10億回足しても、結果が huge_float_value と同じになる、なんてことはないよ。具体的な状況を知らないと、その差が許容できるかは言えないね。" userName="kstrauser" createdAt="2025/05/31 19:42:25" color="#ff5733">}}




{{<matomeQuote body="浮動小数点演算は結合法則は成り立たないけど、加算や乗算は交換法則（x + y == y + x）は成り立つよ。NaNの場合は例外的に引数の順序で戻り値のNaNが変わることがあるけど、仕様として保証されてないから誰も使わない。IEEE 754で決まったNaN値を用意して、それ以外のNaN（ペイロード付き）をちゃんと伝搬させるようにすれば、デバッグ情報とか入れられて便利なのにね、って思う。" userName="StefanKarpinski" createdAt="2025/06/02 13:29:11" color="#38d3d3">}}




{{<matomeQuote body="そうそう、IEEE-754の足し算と掛け算は交換法則は成り立つんだよね。でも分配法則は成り立たないよ。" userName="layer8" createdAt="2025/05/31 14:42:29" color="">}}




{{<matomeQuote body="こういうのって、特別な型（例えばC++なら associative::float みたいに）とか、変数に属性を付けて「これは結合法則が成り立つと思っていいよ」ってコンパイラに教えられるようにすればいいんじゃない？" userName="einpoklum" createdAt="2025/05/31 21:31:26" color="#ff5c5c">}}




{{<matomeQuote body="もっとデカい問題は、プログラミング言語が「この計算の順序は大事！」とか「順序はどうでもいいよ」って作者の意図を伝えられないことなんだよね。IEEE specでも言語でちゃんと定義してねって言ってるらしいし。ほとんどの人は順序なんて気にしないし、コンパイラが勝手に最適化して結果が変わっても驚く（し、むしろ最適化してほしいと思う）。でも、順序が超重要なケースは、すごく少ないけど本当にあるんだよ。" userName="dahart" createdAt="2025/05/31 14:06:16" color="#785bff">}}




{{<matomeQuote body="IEEE specは自動並列化（オートベクタライゼーション）を禁止してないんだよ。ただ、「再現性のある浮動小数点の結果」を出すって決めた言語は、自動並列化を避けるべきだって言ってるだけ（IEEE 754-2019の11章）。どう避けるかは実装次第。C++みたいにデバッグモードでシリアルに計算するなら、ユーザーが明示的に許可しない限り、自動並列化で結果が変わっちゃうのは避けるべきだね。" userName="dahart" createdAt="2025/05/31 13:58:54" color="#38d3d3">}}




{{<matomeQuote body="ユーザーから見ればNaNペイロードの扱いはそんなに問題ないんだけど、コンパイラには複雑なんだよ。LLVMだとNaNを比較するのすら未定義動作（UB）にしてて、ほとんどの浮動小数点演算が非決定論的になっちゃう。CPUのハードウェアにも余計な回路が必要になるしね。Positっていう新しい数値形式は、NaNが一つしかないとか、順序付けのルールがちゃんとしてるところは絶対正しいと思うな。" userName="adgjlsfhk1" createdAt="2025/06/01 12:57:51" color="#ff5733">}}




{{<matomeQuote body="逐次実行が必要ない計算を、言語構文でどう表現するか。例えば、セミコロン区切りは順に実行、カンマ区切りは順不同か並列でもOK、みたいにね。多くの言語で関数の引数はカンマ区切りで評価順は任意だよね。C言語のカンマ演算子も最初はそうなりかけたけど、for文で使うためにセミコロンと同じにしちゃった。式の場所にブロックを書けるようにして、最後の式の値をそのブロックの値にする、みたいにした方が絶対良かったのにね。" userName="adrian_b" createdAt="2025/06/01 06:33:11" color="#785bff">}}




{{<matomeQuote body="精度にこだわるなら、そもそも浮動小数点数は使っちゃダメでしょ。用途によるけどね。標準規格が悪いか言語が悪いかの話はどっちでもいい。標準の目的は計算順序を定めて予測可能にすることだけど、それだと最適化できないのが問題なんだよね。精度が超大事なケースはまれだから、むしろ最適化をデフォルトにして、精度モードはオプトインにすべきだと思うよ。IEEE 754モードは必要だけどね。でも、今の大量並列処理時代には丸め誤差は受け入れるのが普通。それなのにIEEE 754にベッタリな言語が多いのはイケてないと思うな。浮動小数点数の型を増やすとか、コード内で指定するとか、エラー許容度を書くとか、改善策はいろいろありそう。" userName="emn13" createdAt="2025/05/31 18:13:43" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="それは「チューニング」って感じの解決策だね。つまり「それはやっちゃダメ」って制限するか、ダメなら復旧する（リセットとかバックアップとか）方法。これで「まあうまくいく」けど、バグ自体は残ったままなんだよね。ソフト開発ならもっと頑丈なやり方が良いと思う。アポロ13号事故でジャイロ校正失って、太陽見て復旧した話がまさにそうだったのを思い出したよ。NASAは今思えばIEEE doublesとかクォータニオン選べばよかったんだろうね。" userName="ajross" createdAt="2025/05/31 13:58:15" color="">}}




{{<matomeQuote body="「浮動小数点数ほど私の心に恐怖をもたらすものはない。」ってGerald Jay Sussmanが言ってたらしいよ。<br>IEEEの標準化委員会は、UnumとかPositみたいな浮動小数点数の代替案についても検討してるのかな？[1],[2]<br>[1] Unum & Posit:https://posithub.org/about<br>[2] The End of Error:https://www.oreilly.com/library/view/the-end-of/978148223986..." userName="teleforce" createdAt="2025/05/31 13:29:52" color="">}}




{{<matomeQuote body="UnumとかPositみたいな新しいやり方がCPUでハードウェアサポートされないのは、なんでだろうね？って思ってる。" userName="kvemkon" createdAt="2025/05/31 14:53:49" color="">}}




{{<matomeQuote body="Gustavsonの最後のプレゼンでは、Positをサポートする実際のハードウェアを手に持ってるところから始まるよ。知らんけど。<br>https://m.youtube.com/watch?v=vzVlQhaAZtQ" userName="vanderZwan" createdAt="2025/06/01 07:12:39" color="#38d3d3">}}




{{<matomeQuote body="HPは1970年代からちゃんとした決定論的な10進数算術を持ってたんだぜ。" userName="neepi" createdAt="2025/05/31 21:26:57" color="">}}




{{<matomeQuote body="これ皮肉？そうじゃないなら、提案されてるposit標準、IEEE P3109だよ。" userName="Q6T46nT668w6i3m" createdAt="2025/05/31 13:33:51" color="">}}




{{<matomeQuote body="今のP3109ドラフトにはposit入ってないってさ。" userName="pclmulqdq" createdAt="2025/05/31 14:00:34" color="">}}




{{<matomeQuote body="PyTorchでもApple MPSでdeep learningとかでFast Mathがデフォルトで有効になってて問題起こるらしいよ。<br>autoregressive image generation modelの学習中にゴミみたいな出力になったとか。ここに議論があるよ: https://github.com/pytorch/pytorch/issues/84936" userName="storus" createdAt="2025/05/31 13:08:05" color="#ff5733">}}




{{<matomeQuote body="この話題、以前にもここで議論されてるよ: https://news.ycombinator.com/item?id=29201473 (記事の最後にもリンクあるけどね)" userName="Sophira" createdAt="2025/05/31 07:50:05" color="#38d3d3">}}




{{<matomeQuote body="ForthやLispでは固定小数点とか有理数を使う哲学があるんだ。Forthの記事やSchemeでのexact-＞inexact変換の例を示してるよ。有理数でほとんどの計算は足りるし、円周率だって113/355で十分正確だったりするって話。Forthの記事リンク: https://www.forth.com/starting-forth/5-fixed-point-arithmeti..." userName="anthk" createdAt="2025/05/31 08:19:26" color="#ff33a1">}}




{{<matomeQuote body="Floatsって対数空間での固定小数点みたいなもんだよ。指数部があるから調整が必要になるけどね。" userName="AlotOfReading" createdAt="2025/05/31 14:27:26" color="">}}




{{<matomeQuote body="いやいや、全然違うよ。整数をスケールした方がずっと速いし、64bitあればどんな分野でも計算できるってば。" userName="anthk" createdAt="2025/05/31 14:40:02" color="">}}




{{<matomeQuote body="有理数なんて三角関数とか平方根が出てきたらもう使えなくなるじゃん…" userName="eqvinox" createdAt="2025/05/31 09:41:20" color="">}}




{{<matomeQuote body="浮動小数点数は有理数に戻せるんだぜ。(rational (sqrt 2d0))みたいにね。あるいは、自分で好きな精度で計算する処理を書くこともできるよ。" userName="stassats" createdAt="2025/05/31 10:45:23" color="#785bff">}}




{{<matomeQuote body="俺の記事でも不正確→正確変換は扱ったぜ。Schemeによってはできるけど、s9 Schemeは無理。Forthだと自分でやる必要があるんだ。三角関数ならCORDICってのを確認してみてくれよ。https://en.wikipedia.org/wiki/CORDIC" userName="anthk" createdAt="2025/05/31 13:08:24" color="#45d325">}}




{{<matomeQuote body="有理数で高精度な三角関数が必要なら、テイラー級数ライブラリを書けばいいじゃん。多項式近似とかルックアップテーブル、CORDICとかも使えるし。" userName="dreamcompiler" createdAt="2025/05/31 15:02:52" color="#ff33a1">}}




{{<matomeQuote body="CORDICをチェックしてくれよ。https://en.wikipedia.org/wiki/CORDIC<br>sqrt関数ならForthにもfsqrtがあるんだぜ。EForthとかPFE Forthの例を見てくれ。EForthの精度は低いけど、80年代のエンジニアが使ってたレベルからは遠くないんだ。" userName="anthk" createdAt="2025/05/31 13:19:09" color="#785bff">}}




{{<matomeQuote body="この記事のFTZの実装部分は面白かったな。“FTZがどう実装されてるかって問題は…有効にすると同じスレッドの他の操作全部に影響するんだ。” “GCCで-funsafe-math-optimizationsを使うとFTZが有効になる…共有ライブラリをロードするだけで結果が変わるってのは、楽しいデバッグ経験だね。”" userName="leephillips" createdAt="2025/05/31 19:45:04" color="#45d325">}}




{{<matomeQuote body="この記事、科学技術ソフトでも問題の重要性を過大評価してると思うな。俺が書いた科学コードだと、ノイズの方が大きいし、fast-mathで性能が10%以上上がることもよくあるんだ。-fassociative-mathの話もそう。最適化で結果が変わるなら、シミュレートする数式自体を見直すべきでしょ。でも、ライブラリとか数学シミュレーションだと違うかもしれないけどね。" userName="cycomanic" createdAt="2025/05/31 11:24:37" color="#38d3d3">}}




{{<matomeQuote body="「計算の順番重要、この順番でやってくれ」みたいな構文があればいいのにね。そうすれば、指定した所以外は全部fast-mathにできるじゃん。" userName="londons_explore" createdAt="2025/05/31 12:03:12" color="">}}




{{<matomeQuote body="ほとんどの言語にあるんじゃない？普通に書けば言語仕様通りの順番だし、違う順番にしたいなら括弧を使えばいいでしょ。fast mathとどう関係するかはよく分かんないけど、俺はCを使わないからね。" userName="sfn42" createdAt="2025/05/31 16:41:58" color="">}}




{{<matomeQuote body="それは別の種類の順序の話だよ。Pythonのsum()みたいな関数を想像してみて。本来ならリストの中身はどんな順番で足してもいいはずだよね？ でも、IEEE-754浮動小数点数だと、単純に1つずつ足した時と同じ結果は期待できないんだ。足す順番によって結果が変わる可能性がある。ここで話してるのはそういう順序のことだよ。" userName="kstrauser" createdAt="2025/05/31 19:50:48" color="#785bff">}}




{{<matomeQuote body="記事でもGCCとClangに拡張があるって言ってたね。でも、言語自体にあると便利だよね。Zigはそういうアプローチをとってるよ。" userName="hansvm" createdAt="2025/05/31 12:48:29" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
