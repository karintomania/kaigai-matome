+++
date = '2025-07-09T00:00:00'
months = '2025/07'
draft = false
title = 'RustのTree Borrowsとは？メモリ安全と最適化を両立する新モデル！'
tags = ["Rust", "メモリ安全", "コンパイラ最適化", "プログラミング言語", "未定義動作"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> RustのTree Borrowsとは？メモリ安全と最適化を両立する新モデル！

引用元：[https://news.ycombinator.com/item?id=44510600](https://news.ycombinator.com/item?id=44510600)




{{<matomeQuote body="Ralf Jungの最近のブログ投稿でTree Borrowsに関する追加情報が出てるよ: https://www.ralfj.de/blog/2025/07/07/tree-borrows-paper.html。おまけに、彼のグループがRustの方言でRustの操作セマンティクスを正確に定義してるって話の最近の講演も: https://youtube.com/watch?v=yoeuW_dSe0o" userName="kibwen" createdAt="2025/07/09 15:04:21" color="#ff33a1">}}




{{<matomeQuote body="コンパイラが型システムの強力な保証、特にポインタのエイリアシングを最適化に利用したいってのは本当？Linus TorvaldsはCの厳密なエイリアシングルールは面倒なだけって長年主張してて、俺も納得。これはその例の一つね: https://lore.kernel.org/all/CAHk-=wgq1DvgNVoodk7JKc6BuU1m9Un...。Rustは根本的に違うのかな？unsafeを伴うとそうでもなさそうだけど。" userName="jcalvinowens" createdAt="2025/07/09 18:21:04" color="#45d325">}}




{{<matomeQuote body="Cの厳密なエイリアシングルールはひどいってのは同意。Rustで提案してるルールは全然違うんだ。コンパイラにとってもっと有用だし、俺としてはプログラマにとっても負担が少ないと思う。言語内でオプトアウトもできるし、生のポインタを使えばいい。それに、コードをチェックするツールもあるよ。結局、言語設計って何でもトレードオフだからね。でもRustではこの種の最適化に関して新しいスイートスポットを見つけられたんじゃないかなって思ってる。時間が教えてくれるさ。" userName="ralfj" createdAt="2025/07/09 18:28:50" color="#38d3d3">}}




{{<matomeQuote body="unsafe Rustを大量に書いてる身としては、君たちやopsemチームの活動に感謝してるよ。CのUBやエイリアシング、volatile/MMIOのルールは本当に理解しにくいし、スタックオーバーフローの適当な回答に頼るしかない。Rustはまだ仕様が未完成だから最初は難しいけど、セマンティクスがいかにクリーンか気づいたんだ。Tree Borrowsは「&mutが生きている間は、その参照から派生したポインタか参照経由でしか値にアクセスできない」って基本に落ち着くし、Cの抽象マシンよりはるかにシンプルで分かりやすい。MiniRustとかエイリアシングモデルがリファレンスに載るのが楽しみだよ。そうなればunsafe RustはCよりずっと自信を持って書けるようになるだろうね。出版おめでとう、そして君たちの努力に感謝。" userName="NobodyNada" createdAt="2025/07/09 21:12:23" color="#ff5c5c">}}




{{<matomeQuote body="Cでは互換性のある型ならポインタをエイリアスできるけど、Rustの可変参照ではそうじゃない。RustのルールはベテランRust開発者でさえ躓かせたんだ: https://github.com/rust-lang/rust/commit/71f5cfb21f3fd2f1740...。MIRIがなかったら、多くのRust開発者はunsafeを理解しようとすらしないから困るだろうね。MIRIも完璧じゃないし、ベテランRust開発者はMIRIに頼らなくてもUBフリーなコードを書けるべきだったんだ。" userName="gronpi" createdAt="2025/07/10 04:37:43" color="#45d325">}}




{{<matomeQuote body="Linusがコンパイラについて言うことは話半分で聞いとけって感じだね。彼はOSカーネルを書く人でコンパイラじゃないし、かなり違う領域だから。エイリアス解析は最近のパフォーマンスにはすごく重要だよ。でも、最大の恩恵は一番シンプルなヒューリスティックから生まれるってことも覚えておくべきだね。LLVMで言うならBasicAAとか。本当に聞きたいのは、基本的なテスト以上のエイリアス解析にどんな価値があるかってことだろ？俺の推測だと、理論上完璧なエイリアス解析でも、Linuxカーネルみたいな非HPCコードでも20%くらいの速度向上にとどまるんじゃないかな。" userName="jcranmer" createdAt="2025/07/09 21:22:57" color="#ff5c5c">}}




{{<matomeQuote body="状況はそこまで悪くないよ。unsafeコードのルールは昔はひどく定義されてたけど、今はかなり明確化が進んでるし、Tree Borrowsみたいな明確なエイリアシングモデルがあれば、Cのより理解しやすいはず。君がリンクしたコードの問題は、エイリアスされた異なる型のポインタを介して未定義のバイトにアクセスしてたことでしょ？当時はMaybeUninitも新しい概念だったし。今ならベテランRust開発者はもっとうまく対応できると思うな。" userName="GolDDranks" createdAt="2025/07/10 06:07:38" color="#38d3d3">}}




{{<matomeQuote body="本当に申し訳ないけど、君はCのデフォルトであるTBAA（Type-Based Alias Analysis）が、Rustの可変参照が持ってるエイリアシングなしの状態よりも、一般的に簡単だってことを認めてないよね。これは大きな違いなんだ。Cコードは_restrict_を使って似たようなエイリアシングをオプトインできるけど、それはオプトインだよ。Rustでは常にオンだ。それに、Rustの標準ライブラリにも新しいUBがあるんだぜ: https://github.com/rust-lang/rust/pull/139553" userName="hamcocar" createdAt="2025/07/10 07:09:03" color="#38d3d3">}}




{{<matomeQuote body="社名は言えないけど、うちの製品も-fno-strict-aliasingを使ってるよ。これらの最適化の問題は、エイリアシングが絶対に起こらないと証明できた場合にのみ安全だってこと。C++だと、それは停止性問題の解決とほぼ同じだ。Rustのより強力な型システムなら、特定のケースでエイリアシングが起こらないことを証明できる可能性があると俺は思ってる。どのみち、ホットコードでは厳密エイリアシングによって可能になる最適化を手動でいつでもできるけど、誤コンパイルでお客様がデータを失うような事態は絶対に避けたいからね。" userName="Asooka" createdAt="2025/07/09 18:30:43" color="#45d325">}}




{{<matomeQuote body="厳密エイリアシングルールは、十分に表現力があって理にかなっていれば有用だけど、そうじゃなきゃ無駄な頭痛の種を作るか、全く無効にされるだけだ。Cの厳密エイリアシングルールがかなり壊れてるってことには、ほとんど異論ないと思う。Rustみたいな言語がもっと道理にかなった厳密エイリアシングルールで設計できない理由はないよ。C++ですら、Cよりも厳密エイリアシングに関して柔軟なパスを提供するのに力を入れてきた。でもLinusと同じく、俺も明白な狭いケース以外ではあまり違いがない気がするね。" userName="jandrewrogers" createdAt="2025/07/09 19:31:23" color="#785bff">}}




{{<matomeQuote body="TBAAがRustのno aliasingより簡単って意見、納得できないね。Rustのミュータブル参照は静的チェックされてるから安全だし、生ポインタならCより簡単だよ。難しいのはミュータブル参照と生ポインタを混ぜる場合だけど、ほとんどのRustコードじゃそんなことしないし、すべきじゃない。残りの5%で理解が必要なのは、それだけRustができることが多いからさ。" userName="GolDDranks" createdAt="2025/07/10 07:37:10" color="#38d3d3">}}




{{<matomeQuote body="RustのエイリアシングルールがC/C++のstrict aliasingより難しいって？それは違うよ。C/C++のstrict aliasingはTBAAとも呼ばれて、型が互換ならエイリアスできるけど、Rustのミュータブル参照は型が同じでも絶対にエイリアスしないんだ。むしろCの_restrict_に近いね。ちなみにLinuxカーネルはstrict aliasing最適化を無効にしてるぞ。" userName="gronpi" createdAt="2025/07/10 05:02:31" color="#785bff">}}




{{<matomeQuote body="もう一つのデータだよ。Appleのコンパイラチームがstrict aliasingをデフォルトにした時、主要ワークロードが5-10%速くなったってさ。修正も予想より簡単だったんだって。俺は当時、「-fstrict-aliasing」は間違ったコードを生成するフラグだと思ってたけど、彼らのデータを見て考えが変わったね。<br>参照: https://lobste.rs/s/yubalv/pointers_are_complicated_ii_we_ne..." userName="oconnor663" createdAt="2025/07/09 22:04:35" color="#ff5c5c">}}




{{<matomeQuote body="RustのエイリアシングルールはCと全然違うんだ。Cの`restrict`なんて`clang`と`gcc`で関数引数にしか効かない印象だし、型ベースエイリアシングは使いにくい上に、違う型に再解釈するのに`memcpy`を強制するからマジ面倒だぜ。Rustの参照はライフタイムとかミュータビリティが細かく設定されてて、物理型を気にせず`&mut i32`と`&mut i64`みたいに同じメモリを再解釈できるんだ。もちろんunsafeコードで`&mut`が重複しない限り、安全にね。" userName="dzaima" createdAt="2025/07/09 18:42:19" color="#ff33a1">}}




{{<matomeQuote body="Rustの安全なコードでは、エイリアシングが起こらないってことは、どんな場合でも保証されてるんだぜ。ライブラリをまたいでても、マルチスレッドのコードでも、全部保証されてるんだから、安心していいよ。" userName="pornel" createdAt="2025/07/09 18:37:29" color="#38d3d3">}}




{{<matomeQuote body="Cには型が互換な場合にだけ効くオプトアウトがあるけど、Rustにはいつも効くオプトアウトがあるんだ。全てのアクセスで生ポインタ（または内部可変共有参照）を使えば、エイリアシングの心配は一切なくなるからね。" userName="ralfj" createdAt="2025/07/10 06:59:22" color="#ff5733">}}




{{<matomeQuote body="Linusはコンパイラじゃなくてカーネルを書いてるから、コンパイラ開発者が想像するよりもずっと実践的なユースケースを知ってるはずだ。もしかしたら彼の方がもっと言うべきことがあるんじゃないかな。" userName="kunley" createdAt="2025/07/10 06:30:34" color="">}}




{{<matomeQuote body="RustのエイリアシングルールがC/C++より難しいって？それは主観的な意見だろ。Rustの方がエイリアシングが正しいコードを書きやすい証拠はあるぜ。多くのCコードベースは諦めて`-fno-strict-aliasing`を使ってるし、Cの型互換は`memcpy`が必要で役に立たない。Rustは生ポインタを使えばエイリアシング要件を常にオプトアウトできて、余分なコピーもいらない。Miriだってエイリアシングを正しくするのは他のUBと同じくらいだって示してるんだ。誰かCのコードベースにstrict aliasing sanitizerを走らせてみてほしいね、きっと大量のUBが見つかるだろうな。" userName="ralfj" createdAt="2025/07/10 07:12:57" color="#ff5733">}}




{{<matomeQuote body="`int64_t`の異なる型を作れないって？いや、作れるよ！`NoAlias＜T, Tag＞`ってクラステンプレートを作って型をラップすればいいんだ。`Tag`は前方宣言だけでいい。そうすれば`NoAlias＜int64_t, Tag1＞`と`NoAlias＜int64_t, Tag2＞`は絶対にエイリアスしない。これ、実際に少し役に立ったことがあったんだぜ。" userName="nhaehnle" createdAt="2025/07/10 03:59:14" color="#ff5733">}}




{{<matomeQuote body="ごめんけど、お前の議論はひどすぎるな。Cではキャストや共用体を使わなきゃ型システムが非互換なポインタの使用を防いでくれるし、C++はもっとキャストを避けられる。Rustのミュータブル参照は同じ型でもエイリアスできないから違うんだよ。お前のMiriだって、この単純なコードがUBだって言うだろ？<br>参照: https://play.rust-lang.org/?version=stable&mode=debug&editio...<br>Miriが全てを扱えないし遅いのは知ってるよ。こんな程度の低い議論を出してくるとは驚きだね。" userName="hamcocar" createdAt="2025/07/10 08:05:09" color="#45d325">}}




{{<matomeQuote body="Tree Borrowsは配列や数値計算コードで役に立つけど、それ以外はほとんど使えないだろうね。数値計算の人たちがコンパイラ最適化の多くを支援したから、strict aliasingが生まれたんだよ。" userName="tliltocatl" createdAt="2025/07/09 21:28:34" color="#785bff">}}




{{<matomeQuote body="Tree Borrowsは使うライブラリに未定義動作（UB）がないことが必要だよ。`unsafe`を使ってなくても、ライブラリがUBを持ってるなら、UBが発生する可能性がある。だからRustコードに`unsafe`がなくてもMIRIを走らせるのがいい考えかもしれないね。RustのstdlibみたいなライブラリもUBを持つことがあるから。https://github.com/rust-lang/rust/pull/139553" userName="gronpi" createdAt="2025/07/10 05:06:11" color="#ff5c5c">}}




{{<matomeQuote body="MIRIが全てのケースを網羅できるとは限らない一例がこれだよ。https://github.com/rust-lang/rust/pull/139553#issuecomment-2...この問題はRust stdlibのUBを診断する一環だったんだ。" userName="gronpi" createdAt="2025/07/10 04:45:38" color="">}}




{{<matomeQuote body="コンパイラの開発者が”本当のプログラマーじゃない”なんて言うのは失礼だよ。でも、コンパイラの最適化のほとんどは、コンパイラエンジニアが頭で考えたのではなく、誰かのコードで実際の問題が起きたことがきっかけなんだ。" userName="jcranmer" createdAt="2025/07/10 13:38:36" color="">}}




{{<matomeQuote body="エイリアシングはどっちも関係してるけど、C言語のstrict aliasingとRustのエイリアシングは別物だよ。RustはC言語のスタイルを明確に採用しなかったんだ。C言語のエイリアシングは型だけに基づくから、”型ベースエイリアス解析”つまりTBAAとも呼ばれるよ。" userName="steveklabnik" createdAt="2025/07/09 18:40:47" color="#38d3d3">}}




{{<matomeQuote body="C言語でエイリアシングを回避する方法は`char*`を使うことだよ。これは他の型とエイリアスすることが特別に許可されてるんだ。GCCにはエイリアス可能な別の型を作る拡張機能もあるよ。" userName="mgaunard" createdAt="2025/07/10 08:34:47" color="">}}




{{<matomeQuote body="個人的には、コンパイラにはベクタ化をもっと活用してほしいね。典型的なワークロードで2〜10倍速くなるのに、怪しい最適化を心配するよりもさ。文字列の文字数カウントみたいな、実際のコードに出てくる基本的な処理にもっと力を入れてほしい。LLVMはx86-64でベクタを使って水平加算するループを吐き出す。ポインタエイリアシングの1〜2％よりも、簡単に2倍のパフォーマンス向上を狙える問題に注力しようよ。" userName="Validark" createdAt="2025/07/10 06:18:45" color="#ff5733">}}




{{<matomeQuote body="うん、すごく特定の状況でしか起きない並行処理のバグは、純粋なテストツールじゃ追跡が難しいよね。でも、MIRIをもっと改善するための作業を進めてるんだ…ただ、実用的なパフォーマンスが出せるかはまだわからないけどね。" userName="ralfj" createdAt="2025/07/10 07:00:07" color="#785bff">}}




{{<matomeQuote body="TBAAはRustのエイリアシングよりもプログラマーが扱いやすいよね？C言語の対応するエイリアシング機能は`_restrict`だけど、これはほとんど使われてないんだ。LinusとLinuxはstrict aliasingやTBAAすら無効にしてるけどね。" userName="gronpi" createdAt="2025/07/10 04:54:05" color="#45d325">}}




{{<matomeQuote body="”コンパイラ開発者はエイリアシングが重要だと思ってるけど、ほとんどそうじゃない。それにVLIWは全く別の理由で実用的にならないだろう（つまり、汎用コンピューティングではOoOが根本的にVLIWより優れてる）”。Linusがこれについてずっと正しかったのがすごいね。" userName="rayiner" createdAt="2025/07/10 02:53:36" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="このコメントは当たり前すぎない？どのコードもUBがないことに依存してるんだし。Rustの強みは、Miriを含め、UBを避けるツールがめっちゃいいところだよ。" userName="simonask" createdAt="2025/07/10 07:52:52" color="">}}




{{<matomeQuote body="Stacked Borrowsについては、2020年と2018年にスレッドがあったよ。<br>https://news.ycombinator.com/item?id=22281205<br>https://news.ycombinator.com/item?id=17715399" userName="pvg" createdAt="2025/07/09 14:45:58" color="#38d3d3">}}




{{<matomeQuote body="PLDIのトークもここにあるよ: https://www.youtube.com/watch?v=CJi_Fcs4bak" userName="chombier" createdAt="2025/07/10 08:54:13" color="#ff5c5c">}}




{{<matomeQuote body="論文の例4で「このRustコードはコンパイラに拒否される」って主張、試してみたんだけど、安定版コンパイラじゃそうならないみたいだよ？<br>fn main() {<br>    let x = &mut 0;<br>    let y = x as *mut i32;<br>    *x = 10; // ←これが拒否されるはずだけど<br>    unsafe {*y = 15 };<br>}" userName="vollbrecht" createdAt="2025/07/09 17:14:48" color="">}}




{{<matomeQuote body="Stacked BorrowsはMiriのランタイムモデルだよ。Miriで実行すればエラーが出るはず。「Undefined Behavior: attempting a write access using [...] but that tag does not exist in the borrow stack for this location」ってね。rustc自身は`*mut`はライフタイム関係がないから拒否しないんだ。" userName="Arnavion" createdAt="2025/07/09 17:19:11" color="#45d325">}}




{{<matomeQuote body="論文にMiriでTree Borrowsを実装したって書いてあったけど、これってMiriのデフォルトモデルになる可能性あるのかな？" userName="haberman" createdAt="2025/07/10 02:09:18" color="">}}




{{<matomeQuote body="論文は提案されたTree Borrowsモデルでの挙動を説明してるんだよ。現在のボローチェッカーの実装はもっと限定的な分析をしてて、この特定の競合は検出しないんだ。" userName="ethan_smith" createdAt="2025/07/10 15:13:45" color="">}}




{{<matomeQuote body="Miriでの実装はこちらだよ：https://github.com/rust-lang/miri/tree/master/src/borrow_tra..." userName="nixpulvis" createdAt="2025/07/10 02:52:55" color="#785bff">}}




{{<matomeQuote body="すごい仕事だね！Tree Borrowsの仕様をNevinのサイトで読んだことあるけど、かなり厄介な問題をエレガントに解決してるのに感動したよ。<br>Stack Borrowsだと違法なコードも、Tree Borrowsなら sensible になるんだ。<br>参考：[1] https://github.com/Voultapher/sort-research-rs/blob/main/wri... Miri column<br>[2] https://github.com/rust-lang/rust/blob/6b3ae3f6e45a33c2d95fa..." userName="Voultapher" createdAt="2025/07/09 17:04:45" color="#ff33a1">}}




{{<matomeQuote body="Rustとか将来のプログラミング言語が、いろんな特性（コンパイル速度、実行速度、アルゴリズムの柔軟性とか）を持った複数の借用チェッカーを選べるようになるのかな？" userName="fuhsnn" createdAt="2025/07/09 16:35:30" color="">}}




{{<matomeQuote body="既に複数のアプローチがあるんだよ、例えばRustが使ってるaffine typesとか、linear types、effects、dependent types、formal proofsとかね。<br>それぞれ実装、パフォーマンス、開発体験でコストと機能が違うんだ。<br>Rust以外の言語は、ほとんどが自動リソース管理（どういう方法であれ）と上記の型システムを組み合わせて、パフォーマンス critical なコードパスで使ってるよ。" userName="pjmlp" createdAt="2025/07/09 17:05:18" color="#ff5c5c">}}




{{<matomeQuote body="＞ affine types (Rustが使ってるもの)<br>ちょっと口を挟ませてほしいんだ。「affine types」って言ってるけど、実はUniqueness Typesだよ。<br>違いは「unrestricted types」との相互作用にあるんだ。Rustでは、これらの「unrestricted types」は参照（Copy を実装してるから複数回使える）だね。<br>Uniqueness types は呼び出し元に制約をかける（「この引数は私に渡すときにエイリアスしちゃダメだよ」）けど、呼び出され側には制限がないんだ。<br>これはRustにとって便利なんだ。なぜなら、値がエイリアスされてないと、解放しても解放済みのデータへの参照を残さないって確信できるからね。<br>Affine types は逆で、呼び出し元が呼び出され側に制約をかける（「この値を渡すけど、せいぜい一回しか使っちゃダメだよ」）んだけど、Rustの型システムでは表現できないんだ。なぜなら、呼び出され側は常に引数から参照を作って、その参照を複数の関数に渡せるからね。" userName="ChadNauseam" createdAt="2025/07/09 18:51:42" color="#ff5c5c">}}




{{<matomeQuote body="Rustの型システムをaffineと呼ぶのは完全に正確だと思うよ。<br>「affine」の核心は、型システムに exchange と weakening があるけど contraction はないってことで、まさにRustの型システムを特徴づけてるんだ。<br>これらの用語の意味は https://math.stackexchange.com/questions/3356302/substructur... を見てみてね（これは論理学の文脈だけど、Curry-Howard correspondence を通して型システムでも同じだよ）。<br>これは「一度以上使っちゃダメ」というルールで説明されることが多いけど、それが実際の定義じゃないし、君の例が示すように、単純化された説明を文字通りに解釈すると混乱を招くことがあるんだ。<br>＞ 参照を渡すのは実際の値を渡すのとは違うから、affinity と矛盾しないよ。" userName="ralfj" createdAt="2025/07/09 19:06:07" color="#45d325">}}




{{<matomeQuote body="＞ 参照を渡すのは実際の値を渡すのとは違うから、affinity と矛盾しないよ。<br>参照を渡すのが実際の値を渡すのと同じじゃないのは同意するよ。もしそうなら、参照の意味がなくなっちゃうもんね。でも、affinity とは矛盾するんだ。具体的には、同じ値から複数の参照が作れることと、参照の性質が組み合わさると affinity と矛盾するんだ。<br>＞ 「affine」の核心は、型システムに exchange と weakening があるけど contraction はないってことで、まさにRustの型システムを特徴づけてるんだ。<br>Rustの型システムは確かに contraction をサポートしてるよ。だって参照を複数回使えるんだからね。これは contraction じゃないの？Rustは少なくとも参照については contraction をサポートしてるように見えるけどね。<br>でも実際には、contraction が全くないってのは affine の定義としてはあまり役に立たないんだ。だって、そんなプログラミング言語は実用的じゃないし、Turing complete にすらならないだろうからね。代わりに、通常は「affine world」と「exponential world」（「unrestricted」、つまり好きなように使える値のこと）があるんだ。<br>そして、値は exponential world から affine world に行けるけど、逆はダメっていうのが慣例なんだ。だから affine な値を取る関数にはどんな値も渡せるけど、affine な方法で使う必要があって、その間、exponential（unrestricted）な値を取る関数には exponential な値しか渡せないし、affine な値は渡せないんだ。<br>信じられないなら、linear Haskell を使ってみてごらんよ。linear な引数を取る関数には non-linear な引数も渡せるけど、逆はダメなことに気づくはずだよ。<br>Rustの型システムをこう解釈するなら、参照を exponentials と解釈するのが自然だね。でも参照は逆の慣例なんだ。所有された値から参照には行けるけど、逆はダメで、linear/affine な型システムの慣例とはまさに逆の状況なんだ。<br>これらのシステムは使うと全然違う感じがするし、全く異なる性質を強制するから、両方を「affine」と呼ぶのではなく、別々の名前を持つことが重要だと思うんだ。Rustのようなシステムの通常の名前は「uniqueness types」だよ。Idris のドキュメント https://docs.idris-lang.org/en/latest/reference/uniqueness-t... や Wikipedia の記事 https://en.wikipedia.org/wiki/Uniqueness_type を見てみてね。" userName="ChadNauseam" createdAt="2025/07/09 19:38:44" color="#785bff">}}




{{<matomeQuote body="＞ Rustの型システムは確かに contraction をサポートしてるよ。だって参照を複数回使えるんだからね。これは contraction じゃないの？Rustは少なくとも参照については contraction をサポートしてるように見えるけどね。<br>いい質問だね！共有参照については、それらは `Copy` だから確かに contraction があるよ。Affinity は、contraction が普遍的な性質ではないってことを意味するだけで、一部の型や命題には contraction があってもいいんだ。<br>可変参照については、実際には複数回使えないんだ。でも、affinity がチェックされる前に desugaring フェーズがあって、可変参照 `r` の使用はどこでも `\u0026mut *r` に置き換えられるんだ。これは contraction を使ってるわけじゃないし、文字通り `r` をどこかに渡してるわけでもないんだ。`r` に対して特定の（そして興味深い）操作（「reborrowing」）を呼び出してるだけなんだ。<br>Rustは単なる affine system じゃない、借用で拡張された affine system なんだ。でも、Rustを affine system と呼ぶのは完全に妥当だと思うよ。言語が変数を二度「使う」のを防ぐという単純な事実があるからね。「reborrowing」は「使う」ケースじゃなくて、それ自身の特別なルールを持つ特別なケースなんだ。<br>＞ でも実際には、contraction が全くないってのは affine の定義としてはあまり役に立たないんだ。<br>もちろんRustには `Copy` と呼ばれる「複製可能な」型があるよ。それは本質じゃないけどね。<br>＞ Rustの型システムをこう解釈するなら、参照を exponentials と解釈するのが自然だね。<br>なぜそれが自然なの？可変参照は複製可能ですらないんだから、君の言ってることは参照全般にはあまり意味がないよ。たぶん共有参照のことだよね。それらは単に複製可能な型の一例だよ。<br>Rustにはあらゆる型を複製可能にするようなモダリティが型システムにないから、exponentials に相当するものはないんだ。（特に、`\u0026T` は `T` を囲むモダリティじゃないよ。それは異なる型で、異なる表現を持ってるんだ。そして君が言ったように、たとえそれがモダリティだったとしても、exponentials に対応するわけじゃないんだ。）<br>でも型システムは exponentials がなくても affine/linear でありうるから、この発言の意図がわからないな。<br>Uniqueness types は値への参照がいくつあるかについてのことらしいね。線形/affine 型を使ってそういう uniqueness な性質を強制できるし（そして実際Rustはそうしてる）、でもそれは線形/affine な型システムだって事実をなくすものじゃないよ。<br>＞ これらのシステムは使うと全然違う感じがするし、全く異なる性質を強制するから、<br>「感じ」については語れないな。affine 言語でプログラミングしたことないからね（Rust以外はね；）。でも性質の面では、Rustがやってることは affine logic にすごく近いんだ。核となる性質は「ものが複製されない」ことだね。俺のRustのモデル、RustBelt は、Rustの型システムの性質をエンコードするのに affine separation logic を使ってるんだけど、separation logic と linear logic の間にはたくさんの重複があるんだ。だからRustを affine 言語と呼ぶのは完全に理にかなってるっていう強い証拠がさらにあるんだね。" userName="ralfj" createdAt="2025/07/09 20:32:33" color="#785bff">}}




{{<matomeQuote body="Affine logic の主なポイントは contraction を許さないことだけど、Rustの型システムは色々な形で contraction を許してるよね。Rustはいったいどういう点で「affine language」なの？<br>あと、Curry-Howard correspondence に関する主張は間違いだよ。それがRustが affine language だってことを証明するわけじゃない：https://liamoc.net/forest/loc-000S/index.xml<br>でも Swift は「Non copyable」型で contraction を許さない affine types を持ってるよ。" userName="caim" createdAt="2025/07/09 21:28:33" color="#ff5c5c">}}




{{<matomeQuote body="借用チェッカーって false negatives はあるけど false positives はないって理解で合ってる？<br>もしかしたらバカな質問かもしれないけど、複数の実装を並行スレッドで実行して、最初にポジティブな結果を出した方が勝ちってできないのかな？" userName="0x000xca0xfe" createdAt="2025/07/09 17:19:11" color="">}}




{{<matomeQuote body="マジで欲しいのは分離論理ってやつで、それがあれば関数の事前条件を正確に決めたり、途中の条件を証明したりできるんだ。最適化ツールはその”レンマ”を使って、決められた範囲で自由に動けるようになるよ。”Rust”は、この文脈だと”みんなが欲しがる普通の不変条件”と”それを前提にした最適化のセット”って感じだね。" userName="Ericson2314" createdAt="2025/07/09 19:33:02" color="#45d325">}}




{{<matomeQuote body="これはチェッカーが組み合わせ可能って前提に立ってるけど、バラバラなチェッカーの実装だとそうじゃないかもね。あるチェッカーでOKでも、別のチェッカーと組み合わせたら結局無効なプログラムになっちゃうリスクがあるかも。まぁ、実際にはそんなことないのかもしれないけどね。" userName="vlovich123" createdAt="2025/07/09 17:53:31" color="#45d325">}}




{{<matomeQuote body="Rustには、Stringとかベクター、ボックスみたいに、収縮させない型もあるんだ。それが、借用チェッカーがメモリ安全を保証するためにめちゃくちゃ大事なんだよ。" userName="hollerith" createdAt="2025/07/09 22:12:02" color="">}}




{{<matomeQuote body="モデル変更時にコードを変えなくていいって話かな？でもRustにはRefCellっていう、実行時に借用チェックを遅らせる仕組みがすでにあるって言っとくね。これは可変な借用のエイリアシングを許す排他ルールを変えるわけじゃないけど、コンパイル時じゃなく処理する別の選択肢にはなるよ。" userName="saghm" createdAt="2025/07/10 03:24:21" color="">}}




{{<matomeQuote body="簡単な例で君のコメントを教えてくれない？slice::split_atとslice::split_at_mutを見てみてよ：<br>fn split_at(&self, mid: usize) -＞ (&[T], &[T])<br>fn split_at_mut(&mut self, mid: usize) -＞ (&mut [T], &mut [T])<br>分離論理だと、これのトリプルってどうなるの？" userName="creata" createdAt="2025/07/10 05:28:35" color="#45d325">}}




{{<matomeQuote body="Rustはもう借用チェッカーの実装切り替えをサポートしてるんだ。スコープベースから非語彙的、そして実験的なPoloniusもあるよ。でも、新しいのが使えるようになったら古いのは捨てることになる。だって、新しい方が速くて正しいプログラムをより多く受け入れるんだから。RcとRefCell型を使えば、ランタイムチェックのコストはかかるけど、もっと柔軟になるよ。" userName="pornel" createdAt="2025/07/09 18:50:47" color="#785bff">}}




{{<matomeQuote body="それがどう機能するのか想像できないな。違う借用ルールを期待するコードを組み合わせるなんて無理でしょ。借用チェッカーの実装の数だけ、実質的にサブの方言ができちゃうことになるよ。" userName="speed_spread" createdAt="2025/07/09 16:55:32" color="">}}




{{<matomeQuote body="うん、それは本当だね。<br>複数の不変な共有参照は収縮の一種だけど、可変参照はアフィンなんだ。SwiftはRustみたいに参照がないし、危険な生ポインタもダングリングさせずに持てない。だからSwiftはRustより制約が強くて、できることが少ないんだよ。" userName="caim" createdAt="2025/07/09 22:45:59" color="">}}




{{<matomeQuote body="借用チェッカーは誤検知（false positive）はないけど、見逃し（false negative）はあるんだよね？健全な静的解析のはずだよね。Ralf Jungのhttps://news.ycombinator.com/item?id=44511416でのコメントによると、Tree Borrowsの健全性はまだ証明されてないみたい。<br>複数の実装を並行で走らせて、一番最初にOK出したやつが勝ち！ってできない？まぁ、妥当なサイズのプログラムだとすでに全コア使ってるし、余計な作業が増えるなら並列化してもそんなにメリットないと思うけどね。" userName="creata" createdAt="2025/07/10 05:34:49" color="#ff33a1">}}




{{<matomeQuote body="借用チェックって関数の中だけで完結するから、モデルが同じで、違うチェッカーを関数ごとに動かすなら、そんなリスクはないよ。" userName="afdbcreid" createdAt="2025/07/09 21:52:25" color="">}}




{{<matomeQuote body="実行時に処理を後回しにするのは、常に良いとは限らないよ。ランタイムオーバーヘッドがかかるし、違反が検知されたらコードがパニックを起こす可能性もあるからね。" userName="gronpi" createdAt="2025/07/10 05:12:38" color="">}}




{{<matomeQuote body="うん、なるほどね。Rustの型システムはアフィン論理のような「アフィン」ではないよ。アフィン論理は厳密に禁止している収縮を、Rustは様々な形で許しているからね。Curry-Howard対応が型システムについて何かを証明すると主張する人もいるけど、それは依存型言語にしか当てはまらない。それに、その証明はプログラムの振る舞いに関するものでもないよ。詳細は https://liamoc.net/forest/loc-000S/index.xml を見てみて。" userName="caim" createdAt="2025/07/09 21:40:44" color="#38d3d3">}}




{{<matomeQuote body="Kotlinみたいな言語にもアフィン型があったらいいのに。コードの整理がもっときれいになると思うな。言語がガベージコレクトされるから、純粋に「構文的」なものでも問題ないよ。何が何を所有しているか明確にして、複数の参照を明示するだけでも素晴らしいね。Kotlinの機能でエフェクトシステムみたいなものもシミュレートできるし。プログラミング言語理論って本当に面白いよね！" userName="LelouBil" createdAt="2025/07/09 17:11:29" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="「Rustは異なる形式の収縮を許すが、アフィン論理はそれを厳密に禁じる」ってのは間違ってるよ。アフィン論理でも一部の命題には収縮があるし、Curry-Howard対応は依存型言語以外にも存在する。例えば、単純型付きラムダ計算と命題論理の間には美しい対応があるんだ。どうやら理解していない主張を繰り返すのはやめてほしいな。" userName="ralfj" createdAt="2025/07/10 07:24:30" color="#ff5733">}}




{{<matomeQuote body="この質問への長い答えは、https://research.ralfj.de/thesis.html にあるよ :)" userName="ralfj" createdAt="2025/07/10 07:27:31" color="#ff5733">}}




{{<matomeQuote body="Ralfの答えも見てほしいけど、少し補足させて。これらの関数はメモリにアクセスせず、操作的には p, n -＞ (p, p + n) だ。分離論理は検証対象プログラムと外部推論を明確に区別するから、「この式の主型は？」という質問は当てはまらない。Rustで面白いのは関数自体じゃなく & と &mut。これらは多様な文脈の代わりなんだ。分離論理では、あらゆる目的に合う単一の & や &mut はないかもしれない。split_atの最も再利用可能な形は、僕が書いた純粋関数に等しいよ。呼び出し元がプロパティの継承を証明すればよく、フレームルールを知っていれば可能だ。" userName="Ericson2314" createdAt="2025/07/10 16:52:37" color="#38d3d3">}}




{{<matomeQuote body="Rustの借用チェッカーはコンパイル時のコストがかなり最小限で、コード生成には全く影響しないよ。コンパイル時間のほとんどは、トレイト解決、モノモーフィゼーション、LLVMの最適化パス、そしてリンキングに費やされているんだ。" userName="treyd" createdAt="2025/07/10 03:47:25" color="#ff33a1">}}




{{<matomeQuote body="Curry-Howard対応を持ち出したのは、「アフィン論理」に関するSOの投稿を使って「アフィン言語」の定義について議論する理由を説明するためだよ。両方とも「（普遍的な）収縮がない」という同じ方法で定義されている。この主張は明らかに正しいから、あなたがどの主張に反対しているのか、もっと具体的に説明してほしいな。（収縮とアフィン論理に関するもう一つの部分は、他の返信で既に反論されているから、繰り返さないよ。）" userName="ralfj" createdAt="2025/07/10 07:18:35" color="">}}




{{<matomeQuote body="アフィン型システムっていうのは、一部のものが収縮を持たないシステムのことだよ。何もかも収縮がないわけじゃないんだ。" userName="creata" createdAt="2025/07/10 05:49:54" color="">}}




{{<matomeQuote body="「アフィン論理の要点は収縮を許さないことで、Rustの型システムは異なる形の収縮を許す。Rustは一体どうやって『アフィン言語』なの？」という疑問に対して。アフィン論理の要点は、普遍的で制約のない収縮を許さないことで、特定の状況下で収縮と同じ特性を持つ操作が全くできないわけじゃないんだ。Rustの型システムも同じだよ。" userName="lmm" createdAt="2025/07/10 03:22:41" color="#ff5733">}}




{{<matomeQuote body="Proof checkerのバグが指数関数的に安全性の問題を悪化させる可能性があるって心配してるんだ。分散システムでの単一障害点みたいなもんかなって。" userName="vlovich123" createdAt="2025/07/10 04:15:10" color="">}}




{{<matomeQuote body="「複数イミュータブル共有参照は収縮」ってのは違うよ。あれはアフィン論理の拡張であって、RustBeltで証明済みなんだから！" userName="ralfj" createdAt="2025/07/10 07:16:48" color="#ff5c5c">}}




{{<matomeQuote body="「コンパイルで全コア使う」ってのはフルリビルドだけだよね。普段はそんなに使わないし、CPUが並列化進むと、スレッド数のが多くなってくるから、もっと工夫が必要になるはずだよ。" userName="0x000xca0xfe" createdAt="2025/07/10 09:14:55" color="">}}




{{<matomeQuote body="論文のコード例、`&mut *ptr`を2つ渡すやつ、あれって同じ変数に複数可変参照してるから未定義動作じゃないの？もしかして、俺が論文の主張を誤解してるのかな？" userName="wavemode" createdAt="2025/07/09 15:17:50" color="">}}




{{<matomeQuote body="Tree Borrowsの目的は未定義動作の正確な境界を定めることだよ。Rustコンパイラは受け入れるけどルール違反なコードや、Borrow Checkerじゃチェックできないけど合法なコードもあるから、それらを明確にしたいんだ。Stacked Borrowsより範囲が広くて安全性が高いんだって。" userName="pavpanchekha" createdAt="2025/07/09 15:31:59" color="#ff5c5c">}}




{{<matomeQuote body="「証明可能に安全」って言ってるけど、まだ証明は終わってないんだよね。Borrow Checkerが受け入れるコードが全部TBと互換性あるってのは、今はまだ推測の域を出ないんだ。でも、ちゃんとテストはしてるよ。" userName="ralfj" createdAt="2025/07/09 15:39:09" color="#ff5c5c">}}




{{<matomeQuote body="「どのルールに違反してるか、正確なUBの定義は？」ってのが重要で、Tree Borrowsはその定義を提案してるんだよ。「こういうコードも書ける」ってのは、Tree Borrowsがないと何が悪いのか説明できないってことなんだ。君は既にTree Borrowsみたいなのが必要だって理解してるみたいだね。" userName="ralfj" createdAt="2025/07/09 15:37:29" color="#45d325">}}




{{<matomeQuote body="「can」って言葉を誤解してるよ。unsafeコードを使えばあれは書けるし、それが未定義動作なんだ。ほら、このリンク見てみろよ。<br>https://play.rust-lang.org/?version=stable&mode=debug&editio..." userName="GolDDranks" createdAt="2025/07/09 16:59:36" color="#785bff">}}




{{<matomeQuote body="多くの返信があるけど、これ以上増やしたくはないな。でも、意図を一番はっきりさせるのは、次の段落の最初にあるこの部分だと思うよ。＞Rustコンパイラの開発者がエイリアシング最適化を明らかにサポートしたがってるんだから、上の反例みたいなのを考慮から「除外」する何らかの方法が必要なんだ。" userName="oconnor663" createdAt="2025/07/09 15:35:34" color="#ff5c5c">}}




{{<matomeQuote body="それがまさにポイントだと思うね。複数の可変参照を許さないみたいな制約を破るのは簡単すぎるんだ。Unsafeは、Rustのライフタイム解析でコードの妥当性を証明するのが難しいケースのためにあるけど、それ以上のことに悪用されかねないんだ。" userName="ehsanu1" createdAt="2025/07/09 15:25:52" color="#ff5c5c">}}




{{<matomeQuote body="ここで言う「できる」は「許されている」って意味じゃないよ。「Unsafeコードは以下のものを表現できるけど、それは未定義動作、UBだよ」ってことだね。" userName="seritools" createdAt="2025/07/09 15:23:20" color="#ff33a1">}}




{{<matomeQuote body="著者のNeven Villaniが、Cédric Villani（2010年のフィールズ賞受賞者）の息子だって今気づいたよ。やっぱり、才能って遺伝するんだね。" userName="pil0u" createdAt="2025/07/09 16:29:15" color="">}}




{{<matomeQuote body="これは素晴らしいね。たぶん、自分の言語にこのモデルを実装すると思うよ。" userName="gavinhoward" createdAt="2025/07/09 18:46:27" color="">}}




{{<matomeQuote body="デジャヴじゃないはずだよ。この投稿、2〜3ヶ月に一度は見てる気がするんだけど…。" userName="Nurbek-F" createdAt="2025/07/09 20:49:39" color="">}}




{{<matomeQuote body="この論文、何年もかかって作られたものだよ。今回やっと公開されたんだ。" userName="steveklabnik" createdAt="2025/07/09 20:52:48" color="">}}




{{<matomeQuote body="「ツリーボローズ」<br>「金返せ、この野郎！」<br>「ふむ、焦るな！」<br>「48時間以内に引き渡せ、さもなきゃ苗木がどうなるか分からねえぞ、ツリービアード。」" userName="olddustytrail" createdAt="2025/07/09 20:54:02" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
