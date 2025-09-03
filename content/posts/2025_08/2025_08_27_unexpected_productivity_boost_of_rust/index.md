+++
date = '2025-08-27T00:00:00'
months = '2025/08'
draft = false
title = 'Rustでまさかの生産性爆上げ！'
tags = ["Rust", "プログラミング", "生産性", "開発効率", "ソフトウェア開発"]
featureimage = 'thumbnails/orange2.jpg'
+++

> Rustでまさかの生産性爆上げ！

引用元：[https://news.ycombinator.com/item?id=45041286](https://news.ycombinator.com/item?id=45041286)




{{<matomeQuote body="去年、Rustで書かれたvirtio-hostネットワークドライバをPythonプログラマーなのに1週間で移植したよ！<br>ほとんどRustもvirtioも経験ないし、ライブラリも初めてだったけど、コンパイル通ったらほぼ完璧に動いたんだ。Rustのライブラリが間違った使い方をさせないようにできてるおかげだね。" userName="nneonneo" createdAt="2025/08/27 21:06:12" color="#38d3d3">}}




{{<matomeQuote body="Rustをしばらく書いてるけど、大抵コンパイルが通れば動くね。たまにデッドロックとか高レベルな順序の問題はあるけど、バグさえなければ、コンパイラが成功すればプロジェクトはちゃんと動くってことだ。" userName="mmastrac" createdAt="2025/08/27 22:35:24" color="">}}




{{<matomeQuote body="俺のコードはあなたのほど複雑じゃないけど、同じような経験をしてるよ。<br>いくつかの落とし穴と、chronoのバグがあって、2年に1回くらい問題を起こしてるんだけど、それを除けば幸せなRustプログラマーさ。" userName="jabwd" createdAt="2025/08/28 01:52:47" color="#38d3d3">}}




{{<matomeQuote body="jiff を試したかどうか気になるな。chronoでのバグや落とし穴を解決してくれるかな？" userName="burntsushi" createdAt="2025/08/28 10:01:10" color="#45d325">}}




{{<matomeQuote body="その点ではHaskellに似てるね。一度コンパイルが通れば、大抵はちゃんと動くことが多いんだ。" userName="AlanYx" createdAt="2025/08/28 14:30:11" color="">}}




{{<matomeQuote body="あなたのレビューを読んでRustへの興味がどんどん増してるよ。ツールやエコシステムが素晴らしくて、しっかりしたコンセプトと基盤の上に成り立ってるみたいだね。" userName="shark1" createdAt="2025/08/28 14:25:39" color="">}}




{{<matomeQuote body="Rustには3つの大きな問題があるね。<br>―コンパイル時間<br>―コンパイル時間<br>―長いコンパイル時間<br>小さいプロジェクトなら大したことないけど、依存関係をたくさん入れたりコード量が多い場合は、最初にコンパイル単位を考える必要があるよ。" userName="baq" createdAt="2025/08/28 14:47:57" color="#ff5c5c">}}




{{<matomeQuote body="Rustの増分コンパイル時間はどうなの？大規模プロジェクトでファイルを増分再コンパイルするのは速いのかな？リンク時間がそんなに悪くないといいんだけど。<br>JVMで好きなのはホットコードリロードだね。メソッドや関数内の変更は、ホットコードリロードでほとんどの場合すぐに反映されるからね。" userName="winter_blue" createdAt="2025/08/28 15:21:17" color="">}}




{{<matomeQuote body="リンク時間が最悪だけど、mold[1]やsoldで解決できるよ。増分コンパイルはクリーンコンパイルより1桁（ひょっとしたら2桁）速いけど、それでも遅く感じることもあるかな。<br>デバッグ時にはsccache[2]とかcranelift[3]を使うと助けになるよ。ホットリロードできる言語ほど速くはないけど、それでもかなり快適な速度にはなるね。<br>[1] https://github.com/rui314/mold<br>[2] https://github.com/mozilla/sccache<br>[3] https://github.com/rust-lang/rustc_codegen_cranelift" userName="chiffaa" createdAt="2025/08/28 15:51:14" color="#ff5c5c">}}




{{<matomeQuote body="sccache使ってもプロジェクトは速くならなかったな〜。<br>Denoみたいなクソデカプロジェクトのリリースビルドだけがマジで無理だったわ。<br>他は大丈夫だったんだけどね。" userName="mmastrac" createdAt="2025/08/28 19:59:02" color="">}}




{{<matomeQuote body="sccacheでクリーンコンパイルが2倍速くなったプロジェクトもあるけど、大抵は人によるって感じかな。<br>効果は限定的だよね。" userName="chiffaa" createdAt="2025/08/29 11:59:26" color="">}}




{{<matomeQuote body="Denoではコンパイル時間が長くて困ったよ。リリースビルドは地獄だったけど、デバッグビルドはインクリメンタルなら平気だった。<br>DenoはRust製アプリの中でも最大級だろうけど、それでも生産性は高かったね。<br>君のプロジェクトで問題になるのはずっと先だろうし、対策もあるよ。" userName="mmastrac" createdAt="2025/08/28 19:24:56" color="#ff5c5c">}}




{{<matomeQuote body="Rustはマジで最高ってところは同意するよ。でもhrefのバグがTypeScriptのせいってのは違うと思うな。<br>問題はhref設定がページの移動を後回しにすること自体が分かりにくいって点だろ？<br>Rustならそんな変なライブラリ設計しないだろうから、これはTypeScriptとRustの問題じゃなくて、WebプラットフォームAPIの問題だね。" userName="johnfn" createdAt="2025/08/28 06:21:55" color="#38d3d3">}}




{{<matomeQuote body="異議あり！セッターでアクションを起こすなんてありえないし、ましてや即座に実行するなんて論外。<br>navigate_to(href)みたいに名前を変えるべきだね。<br>ブラウザ環境で即座に動かないのは当然だろ？<br>JSはイベントループに指示を出すだけだから、呼び出し元に戻らない関数は合わないんだよ。" userName="flohofwoe" createdAt="2025/08/28 06:32:55" color="#785bff">}}




{{<matomeQuote body="良い指摘だね。セッターで作業しないのは当たり前だと思ってたから、コメントを修正したんだ。<br>「呼び出し元に戻らない関数は…」って話だけど、Node.jsではprocess.exit()でコールバックから抜けられるよね。<br>もしhrefの設定がそれと同じだったら、もっと分かりにくいだろうな。" userName="johnfn" createdAt="2025/08/28 07:10:17" color="#785bff">}}




{{<matomeQuote body="もしhrefの設定がそう働くとしたら、try-finallyでリソースをクリーンアップしたり、ロックを解除したりするのとどう絡んでくると思う？<br>矛盾しないかな？" userName="mcherm" createdAt="2025/08/28 10:07:28" color="#785bff">}}




{{<matomeQuote body="JavaScriptのtry-finallyなんて、どうせ穴だらけだよ。<br>tryブロックにawaitがあったらfinallyが動かないこともあるし、ブラウザはfinallyを無視してタブを止められるからね。<br>だからtry-finallyはコード内の局所的なルールを守るためのもの。<br>process.exit()みたいにJS環境を完全に終了させるなら、finallyブロックをスキップしたって問題ないよ。" userName="fleabitdev" createdAt="2025/08/28 12:49:10" color="#ff33a1">}}




{{<matomeQuote body="ありがとう、あの例は説明不足だったね。<br>Rustの所有権モデルを使えば、window.set_href(’/foo’)を呼んだらwindowの所有権が移って、二度と呼べないAPIを作れるって言いたかったんだ。<br>TypeScriptにはそういうライフタイムの概念がないから無理だね。<br>JavaScript APIは元々あるし、グローバル変数も多いから、TypeScriptに所有権モデルを導入するのは不可能だよ。<br>Rustの機能がうまく組み合わさってて、「単なる型」だけじゃ同じ保証は得られないってことを示したかったんだ。" userName="bkolobara" createdAt="2025/08/28 07:36:34" color="#ff33a1">}}




{{<matomeQuote body="Rustに詳しくないけど、まだ穴があるんじゃない？<br>window.set_hrefにムーブセマンティクスがあっても、let win = window.set_href(”/foo”)ってして、win.set_href(”/bar”)ってできちゃうんじゃない？これだとエラーにならないでしょ？<br>もし本当にムーブセマンティクスがないのが問題なら、型をちゃんとすれば問題は起こらないはず。<br>TypeScriptだってsetHrefがneverを返すようにすれば、それ以降の呼び出しはエラーにできるよ。<br>これってRustの「!」と同じようなもんじゃない？だからTypeScriptも捨てたもんじゃないかもね :) <br>https://www.typescriptlang.org/play/?ssl=9%26ssc=1%26pln=9%26pc=2#..." userName="johnfn" createdAt="2025/08/28 08:00:15" color="#ff5c5c">}}




{{<matomeQuote body="Rustの例は動かないよ。`window.set_href(”/foo”)`は何も返さない（ユニット型”()”、つまりvoidを返す）から、”()”に対してもう一度`set_href()`は呼べないんだ。これはRustでよくあるパターンで、特定の関数が特定のオブジェクトに対して一度しか呼ばれないようにしてるんだね。TypeScriptの解決策は本当に好きだよ！これは問題を完璧に解決してる。これが唯一の方法だったら、そもそもこの問題にぶつかることはなかっただろうな。" userName="bkolobara" createdAt="2025/08/28 08:56:46" color="#ff5733">}}




{{<matomeQuote body="説明ありがとう！すごく良いパターンだね。<br>’これが唯一の方法だったら’<br>まったく同感だよ。" userName="johnfn" createdAt="2025/08/28 09:36:44" color="">}}




{{<matomeQuote body="他のコメントに追加だけど、これらの2つの例を見て実行してみて。どんなエラーが出るか分かるよ。<br>https://play.rust-lang.org/?version=stable&mode=debug&editio...<br>https://play.rust-lang.org/?version=stable&mode=debug&editio..." userName="norman784" createdAt="2025/08/28 11:09:31" color="#ff5733">}}




{{<matomeQuote body="Rustの例は面白かったけど、TypeScriptの例はTSが大きなプロジェクトに良いかどうかを示してないね。Rubyは実行時にバグをよく見つけるから怖いけど、結局コミット前には動くし、そこにたどり着くのは簡単でコードを読むのも編集するのも満足感があるんだ。プロジェクトが大きくなってもこうやって続けられるかどうか、それが問題だね。`location.href`の問題は本当にJavaScriptの問題で、TSがそれを引き継いだものだよ。JSが属性の変更を許すから、ブラウザもその変更を考慮しなきゃならない。でもRubyの`exit`キーワードとは違う。次のページが読み込まれるまでページはまだそこにいて、それが分かれば完全に納得できる話だよ。" userName="dominicrose" createdAt="2025/08/28 08:13:44" color="#785bff">}}




{{<matomeQuote body="技術的には、`set_href`が`()`を返すか`!`を返すかに基づいて、Rustはセマンティクスをヒントできるかもしれないね。でも、条件付きリダイレクトの場合、’誤った’使い方でも表面化しないだろうね（非条件の場合は、その後のコードがデッドコードではないことに気づくかもしれないけど）。" userName="masklinn" createdAt="2025/08/28 06:46:21" color="#45d325">}}




{{<matomeQuote body="それは記事のコードのリポジトリじゃないよ。記事のコードは実質これだね。<br>`set_href(’/foo’);`<br>`let future = doSomethingElse()`<br>`block_on(future)`<br>`if (some_condition) {`<br>`set_href(’/bar’);`<br>`}`<br>このコードの方がバグがより明確になる。`doSomethingElse`が実質的にページを終了させてるんだ。これは多くのアプリで同じで、Rustでも変わらないよ。ブラウザは`window.location.href`を設定したときにプロセスを開始するわけじゃない。コードが終了してイベントループが他のタスクを実行するのを許可した後にプロセスを開始するんだ。例のコードの`await`が、新しいページの読み込み（またはアプリの終了など）という他のタスクの実行を許可してるんだよ。`window.location.href`を設定したときに追加されたそのタスクのことね。<br>もし分かりにくいなら<br>`// task 1`<br>`window.location.href = ’/foo’ // task2 (ページを読み込むtask2をキューに入れる)`<br>`let content = await response.json(); // jsonを読み込むtask3を追加`<br>`                                        // 完了したらtask4を追加する` <br>`// task4`<br>`if (content.onboardingDone) {`<br>`window.location.href = ”/dashboard”;`<br>`} else {`<br>`window.location.href = ”/onboarding”;`<br>`}`<br>task2はtask1の後に実行される。task1は`await`で終了する。task2はすべてのタスクをクリアする。task3とtask4は決して実行されない。" userName="socalgal2" createdAt="2025/08/28 14:55:32" color="#ff5c5c">}}




{{<matomeQuote body="いや、君はそれがどう機能するか誤解してると思うよ。問題は、君が呼ぶところのタスク4が、リダイレクト値によってトリガーされたナビゲーションの後に実行されることだよ。筆者は`window.location.href`セッターの副作用、つまり新しいページへのナビゲーションが、その下で実行されているコードを中止することを期待している。最初の`if`文に`return`がないから、これは明らかに起こらないんだ。" userName="depressedpanda" createdAt="2025/08/29 09:57:36" color="#ff5733">}}




{{<matomeQuote body="`return`はあるよ、それは“await”という形で偽装されてるんだ。<br>*簡略化すると*、”await”のセマンティクスは単なるシンタックスシュガーだよ。<br>`const value = await someFunction()`<br>`console.log(value);`<br>はこれのシンタックスシュガーだね。<br>`return someFunction().then(function(value) {`<br>`  // これはreturnの後に実行される、もし`<br>`  // 新しいページの読み込みなど、他の何かが全てのイベントを削除しなかった場合だけど`<br>`  console.log(value);`<br>`});`" userName="socalgal2" createdAt="2025/08/30 19:28:11" color="#ff5733">}}




{{<matomeQuote body="うん、問題は一部の古いWeb APIが90年代に、おそらく急いで適当にハックされてきたことで、今僕らはその結果と付き合っていかなきゃならないってことだね。これはWebに限った話じゃなくて、僕の経験だとWinAPI全体とかほとんどのlibc関数でも基本的には同じだよ。" userName="qalmakka" createdAt="2025/08/28 13:39:10" color="#ff33a1">}}




{{<matomeQuote body="だから君の主張は、より良いプログラマーがRustを使うからRustは優れてるってことだよね。特にこの部分を言ってるんだ。「Rustはそんなバカなライブラリ設計はしない」って。それなら、Rustプログラマーはそんな循環論法はしないだろう、とも言えるんじゃないかな。" userName="buzzin__" createdAt="2025/08/28 07:58:34" color="#38d3d3">}}




{{<matomeQuote body="もしもっと寛大に言うなら、Rustのライブラリ設計はWeb APIのライブラリ設計より優れてるって言えるかもね。特に何十年も前に設計された.hrefみたいな古臭いものについては、その通りだと思うよ。" userName="johnfn" createdAt="2025/08/28 08:01:29" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="君のコードの下に書かれたコードは、早めにreturnしないと実行されちゃうんだよ。あと8時に速報。<br>真面目な話、値の代入でスクリプトの実行が止まるって、なんでそう思ったの？TypeScriptの例は文脈が足りないのかもしれないけど、それを“データ競合”として提示するのは、なんか変だよ。" userName="merdaverse" createdAt="2025/08/27 18:15:27" color="">}}




{{<matomeQuote body="exit()とかexecve()とかの関数はすぐに実行を停止するから、リダイレクトもそうだと思う気持ちはわかるよ。" userName="lights0123" createdAt="2025/08/27 18:38:49" color="">}}




{{<matomeQuote body="リダイレクトってのは代入なんだよ。どの言語でも、変数への代入で実行が止まったことなんて一度もないはずだろ。" userName="dvt" createdAt="2025/08/27 18:44:43" color="#45d325">}}




{{<matomeQuote body="ほら、Pythonの例を見てみろよ。<br>MagicRedirectクラスで、hrefに値がセットされたら“Redirecting to URL”って表示してexit()するようになってるだろ？<br>location.href = “https://example.org/”ってやったら、ちゃんとリダイレクトして実行が止まってるじゃんか。<br>これは代入で実行が止まる例だよ。" userName="JoshTriplett" createdAt="2025/08/27 18:56:02" color="#ff33a1">}}




{{<matomeQuote body="君、セッターをオーバーロードしてるだけだろ。可愛いことするね、俺もJavaScriptでやったことあるけど、これは反例にはならないと思うな。<br>これを普通のことだと考えるのは、元のブログ記事の考え方からしても変だよ。" userName="dvt" createdAt="2025/08/27 21:18:56" color="#45d325">}}




{{<matomeQuote body="これって、別に変なことじゃないんだよ。Pythonだとプロパティのセッターで何でもできる、ごく普通の例だよ。そういう設計なんだ。<br>例えば、Fooクラスのbarプロパティに値をセットしたら“bye”って表示してsys.exit()する例とか、<br>動的言語を認めないならC#でも同じようにできるじゃん。<br>これ、多くのプログラミング言語では、別に変わったことじゃないんだよ。" userName="rowanG077" createdAt="2025/08/27 21:31:56" color="#ff5c5c">}}




{{<matomeQuote body="君もセッターをオーバーライドしてるだけだろ。俺は少数派かもしれないけど、これは完全に特殊なケースだよ。<br>代入演算子は副作用を持つべきじゃないし、論理学者としての俺の意見だけど、`x = 5`ってやったときに変なことが起こるかもしれないって意識しなきゃいけないなんて、根本的におかしいだろ。" userName="dvt" createdAt="2025/08/27 23:47:57" color="#45d325">}}




{{<matomeQuote body="君は“変数代入で実行が止まらない”から“代入演算子は副作用を持つべきじゃない”に主張を変えたね。<br>location.hrefは反例だし、他のツールや言語、ライブラリにもそういう例はたくさんあるんだよ。<br>理想と現実、実際にどう動くかを理解することが重要だね。<br>（悪い慣習だけど、現実に起こるし、作業環境をコントロールできない人もいる。）<br>location.hrefに副作用があるなら、それが即座に起こると考えるのは不合理じゃないよ。<br>そういうのが嫌なら、記事が言うように、そんなことが起こらない言語を選べばいいって話だね。" userName="JoshTriplett" createdAt="2025/08/27 23:53:27" color="#ff5733">}}




{{<matomeQuote body="“どの言語でも変数代入で実行が止まったことなんてない”って君は言ってたけど、皮肉なことに、俺はまだ技術的には正しいんだよ。<br>C++、C#、Python、JavaScriptのどの例も、ゲッターとセッターを悪用したオブジェクトのプロパティへの代入であって、変数への代入じゃないからね（未定義動作の例は別だけど）。" userName="dvt" createdAt="2025/08/28 00:09:56" color="#785bff">}}




{{<matomeQuote body="`window.location.href`への代入でブラウザが遷移するなんて、JavaScriptの実行が止まると思っちゃうよね。プログラミングでは仕様確認が基本だけど、この挙動は確かに変だから、勘違いするのも無理ないって話。" userName="Arch-TK" createdAt="2025/08/27 18:43:36" color="#45d325">}}




{{<matomeQuote body="C言語で`*(int*)0 = 0;`ってやってみてよ。最近のCコンパイラはUBに対して変な挙動をするけど、昔はSIGSEGVでプログラムがちゃんと止まってたんだ。" userName="ordu" createdAt="2025/08/27 19:16:15" color="">}}




{{<matomeQuote body="セッターからの副作用は意外じゃないけど、ゲッターからの副作用は絶対ダメだよ。Rustってミュータビリティを強制するから、そういう期待をちゃんと扱える点でマジで便利だよね。" userName="kketch" createdAt="2025/08/28 01:54:44" color="#38d3d3">}}




{{<matomeQuote body="議論はプロパティ代入についてだよ。誰も指摘しなかったんだから、それが当たり前でしょ。今さら話をすり替えようとするなんて、正直言ってバカバカしいよ。" userName="rowanG077" createdAt="2025/08/28 00:22:31" color="">}}




{{<matomeQuote body="IBMのシステムではね、アドレス0が書き込み可能で常にゼロにマップされてたんだ。だからロードとストアの投機的実行も心配なしにできてたんだって。" userName="DannyBee" createdAt="2025/08/27 19:28:11" color="">}}




{{<matomeQuote body="C++なら`operator=`を`exit()`呼ぶようにオーバーロードすれば、「プログラムが止まる変数代入」ってやつを実現できるぜ。" userName="lock1" createdAt="2025/08/27 19:04:54" color="">}}




{{<matomeQuote body="議論は`=`が変なことをするって話だよね。俺が言いたいのは、オーバーロードとか変なことしない限り、`=`って普通は変なことしないってこと。反論は全部非標準的な例ばっかりじゃん。だから`=`にデフォで変な副作用があるなんて思うのは絶対ありえないよ。" userName="dvt" createdAt="2025/08/28 00:51:12" color="#45d325">}}




{{<matomeQuote body="ソフトウェア開発って、知らないうちにたくさんの仮定をしてるんだよね。正しいのもあるけど、危険なのもあって、見極めるのがマジで難しい。`href`の件もAPIが誤解を生む余地があるから、たくさんの人がやっちゃうミスだろ。良いソフトウェア設計は、間違った使い方をしにくくすること。強い型とか、副作用がない純粋関数とか、デフォルト不変性とかがその基礎になるんだよ。" userName="stouset" createdAt="2025/08/27 19:06:37" color="#785bff">}}




{{<matomeQuote body="昔の組み込みシステムでは、0番地って普通にアクセスするアドレスだったんだよ。だから、一部のコードではNULLポインタアクセスが必要だったし、NULLにジャンプしてシステムをリセットするのも結構普通だったんだ。" userName="mabster" createdAt="2025/08/27 22:07:21" color="">}}




{{<matomeQuote body="Rustはミュータビリティだけを気にするんだよ。核ミサイルを発射したり、ハードディスクをフォーマットしたりするかまでは追跡しないからね。" userName="eru" createdAt="2025/08/28 04:51:45" color="">}}




{{<matomeQuote body="OPはリダイレクトが同期処理だと思ってたみたいだけど、スクリプトの実行が止まるとは思ってなかったんだろうね。" userName="drdrey" createdAt="2025/08/27 19:22:27" color="">}}




{{<matomeQuote body="うん、そうだね。どの言語でも普通そうは期待しないよ。Rustはミュータビリティと所有権の安全策を提供してくれるけど、それをどう使うかは君次第。非ミュータブルな関数呼んだ後でも、Rustで無理やり変更することもできるしね。紙ストローで人を殺すみたいなもんさ。" userName="kketch" createdAt="2025/08/28 12:37:41" color="#ff5733">}}




{{<matomeQuote body="JavaScriptを15年使ってる俺でも、そういう挙動だと思ってたよ。" userName="ngruhn" createdAt="2025/08/27 19:24:09" color="">}}




{{<matomeQuote body="違うよ、君は間違ってる。親コメントの他のやつ読んでみてよ。もし同期だったら、POSIX exec()みたいにスクリプトは止まってたはず。OPがスクリプトが止まらないと思ってなかったなら、なんで彼は実行すべきじゃないコードに処理を続行させたんだ？彼はそれを止めるように直したのにさ。" userName="jibal" createdAt="2025/08/27 19:38:37" color="#785bff">}}




{{<matomeQuote body="それってそんなに明確じゃない気がするな。プログラム全体を終了させるだけのexitを呼ぶセッターも作れるわけだし。" userName="dminik" createdAt="2025/08/27 18:46:01" color="">}}




{{<matomeQuote body="だからね、intやboolみたいなプリミティブ型以外だと、代入でメモリ割り当てとかが必要になる場合があるんだ。そうなると、メモリ不足エラーでプログラムが落ちるとか、ヤバいことが起こる可能性もある。c++のunique_ptrとか見ると、代入が裏でいろんなことやってプロパティを保ってるよね。Rustとか他の言語も、保証のために特定の型で似たことするはずだよ。" userName="scheme271" createdAt="2025/08/28 04:17:05" color="#38d3d3">}}




{{<matomeQuote body="代入演算子をオーバーロードして関数呼ぶようにして、それを使うのを「本当の代入」とは考えないかな。" userName="BobbyJo" createdAt="2025/08/27 21:15:08" color="">}}




{{<matomeQuote body="正直、hrefの件は妥当な仮定だと思うな。APIデザインは残念だけど、あのAPIならスクリプトもそこで止まるって考えるのが自然だよね。俺はこういうのは常に防御的に書くタイプなんだ。location.hrefの正確な挙動は今日まで自信なかったけど、昔書いたコードがちゃんと処理されてたのは、return文を最初から入れてたからだよ。こういう防御的コーディングはヘイゼンバグを防ぐし、技術的に不要でも可読性を上げる良いスタイルだと思う。" userName="buu700" createdAt="2025/08/28 08:16:49" color="#ff5c5c">}}




{{<matomeQuote body="不変性を保つための代入演算子のオーバーロードは分かるけど、このケースは組み込みc++出身の俺には実行が変に感じるな。演算子オーバーロードは好きじゃないし避けるべきだと考えてるよ。もうc++は使ってなくて、数年前からRust一筋さ。" userName="galangalalgol" createdAt="2025/08/28 02:13:49" color="">}}




{{<matomeQuote body="昔は逆の挙動だったって確信してるよ。そうでなくても、最近何か変わって、”後で発生する”挙動がブラウザで増えたんじゃないかな。" userName="svieira" createdAt="2025/08/27 19:33:24" color="">}}




{{<matomeQuote body="JavaScriptのページ遷移って”noreturn”関数みたいに動作するべきだけど、そうじゃないんだよな。これ、すごく間違いやすいミスだよね。" userName="JoshTriplett" createdAt="2025/08/27 18:44:34" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ほら、上の方で前提について話してたでしょ？これのことだよ: https://man7.org/linux/man-pages/man3/atexit.3.html" userName="jacquesm" createdAt="2025/08/28 07:22:43" color="#ff5c5c">}}




{{<matomeQuote body="多くのメリットって、静的型付けでコンパイルされる言語だからだよね？Java、Go、C++とかさ。TypeScriptはJavaScriptにコンパイルされるからちょっとややこしいけど、それでも問題ない。Rustはもっと厳密な型システムで追加のコンパイル時チェックがあるけど、タダじゃないし、学ぶのも読むのも大変だよね。" userName="BinaryIgor" createdAt="2025/08/27 17:30:15" color="">}}




{{<matomeQuote body="大体はそうだけど、Rustは型システムに所有権、排他的アクセス、スレッドセーフティ、sum typesとか、もっと多くの要素を追加してるんだ。所有権と借用のおかげで、データがどこでどう使われるか明確になるから、大規模なプログラムや外部ライブラリを使う時にめちゃくちゃ役立つよ。Go言語と比較すると、Rustのスレッドセーフティはデータ競合をコンパイル時に捉えられるから、デバッグがめちゃくちゃ楽になるんだ。" userName="pornel" createdAt="2025/08/27 18:19:28" color="#ff33a1">}}




{{<matomeQuote body="借用でイラつくのは、俺のデフォルトのやり方だと、できるだけ変数を変更しないようにしてるのに、Rustだと他の手続きに渡した後も使いたい場合、コピーやクローンを強制されることなんだ。これって、精神的にも構文的にもオーバーヘッドが大きいんだよな。FP言語だと、値を渡すだけで変更しない前提だから、そういう追加の手間は要らないし。要するに、変数を変更しないなら所有権なんて必要ないんだよ。変更する時だけ所有権の概念があればいいのに、変更しない時もずっと気にしてコードに持ち歩くのは嫌だね。" userName="zelphirkalt" createdAt="2025/08/27 18:44:59" color="#45d325">}}




{{<matomeQuote body="もし君が全ての静的型付け言語を一緒くたにしてるなら、union型（Rustのenumやsum type）と網羅的なパターンマッチングの真の価値をまだ理解してないのかもしれないな。「union-pilled」って呼んでるんだけど、これに慣れると他の静的型付け言語を受け入れられなくなるくらいすごいんだ。" userName="arwhatever" createdAt="2025/08/27 18:23:41" color="">}}




{{<matomeQuote body="君、Rustを実際に知らないんじゃない？Rustは非所有の借用も所有権も型システムで直接表現できるよ。<br>変更しない非所有の借用でクローン/コピー不要なのは `fn foo(v: &SomeValue)`<br>所有権の移動でクローン/コピー不要、変更なしは `fn foo(v: SomeValue)`<br>所有権の移動でfooが変更可能は `fn foo(mut v: SomeValue)`<br>Rustは君が求めてる表現力を全部サポートしてるはずだよ。もし同じ値の所有権を2つ持ちたいなら、定義上クローンするしかないけどね。システムエンジニアリング言語としてのトレードオフだよ。" userName="vlovich123" createdAt="2025/08/27 19:48:46" color="#ff5c5c">}}




{{<matomeQuote body="`enums`と`match expressions`、それに`tagged unions`がRustの秘密のソースなんだよ。" userName="ModernMech" createdAt="2025/08/27 19:05:47" color="">}}




{{<matomeQuote body="このコードスニペットみたいに？（型定義とtokenizerのコードスニペット省略）ヒント、これRustじゃないからね。" userName="pjmlp" createdAt="2025/08/28 09:36:01" color="">}}




{{<matomeQuote body="Rustの秘密は、a) 70年代後半の重要な言語機能（Algol ’52になくて人気の言語系譜に欠けてたもの）と、b) C言語より速いベンチマークみたいな「パーティートリック」の両方を提供してることだよ。人々はb)で採用し始めて、a)のおかげでプログラミングが苦じゃないって感じ。ML系の言語がRust以前に普及しなかったのはプログラミング文化の残念な点だけど、Rustも採用されないよりはマシだよね。" userName="lmm" createdAt="2025/08/28 12:55:57" color="#38d3d3">}}




{{<matomeQuote body="値渡し（参照じゃない）だと値を借用しなきゃいけないから、呼び出し元で後から使えなくなる経験があるんだけど。参照渡しはまた別で、そっちだと使うのに構文的な手間がかかるんだよね。具体的な例を教えてくれない？" userName="zelphirkalt" createdAt="2025/08/27 20:09:14" color="">}}




{{<matomeQuote body="「値渡しで借用が必要」って、用語がごっちゃになってるね。借用は参照のときだけだよ。Copyできない値を渡すときはムーブなんだ。一般的に、Copyできないものは非mut参照で渡すのがベスト。そうすれば呼び出し元も後で使えるし、Rustの型システムとも相性いいんだ。全部cloneするんじゃなくて、Copyをderiveするか、参照を使おう。" userName="Tuna-Fish" createdAt="2025/08/27 20:44:31" color="#ff5733">}}




{{<matomeQuote body="ってことは、CopyやCloneがないと値渡しできないって認識で合ってる？他の言語みたいに、値渡ししても呼び出し元で使えるようにしたいんだけど。参照渡しだと構文が面倒だしね。Rustはミュータブルな値の場合だけ、呼び出し元で使えるか心配してくれればいいのに。SerdeのStructでStringが入ってるとCopyをderiveできないこと、よくあるよね。" userName="zelphirkalt" createdAt="2025/08/27 21:09:30" color="">}}




{{<matomeQuote body="70年代後半の言語機能って話だけど、線形型は89年まで研究されてないよ。Rustがメモリ安全を保証できるのは、GCなしで線形型に頼ってるからだしね。ML系言語がRustほど流行らなかったのは、「CPUやメモリの使用量、メモリ局所性が推論しにくい」って正当な理由があるんだ。GCが必要なのも一因だよ。" userName="hollerith" createdAt="2025/08/28 13:05:59" color="#ff5c5c">}}




{{<matomeQuote body="ModernMechも言ってたけど、RustのメリットはSum Typesとパターンマッチングがほとんどだよ。「ML系言語はCPUやメモリの使い方を推論しにくい」って言うけど、それってRustが使われるほとんどのケースでは、そこまで重要じゃないんだよね。" userName="lmm" createdAt="2025/08/28 13:30:26" color="#38d3d3">}}




{{<matomeQuote body="「RustのメリットはSum Typesとパターンマッチングのおかげ」って意見には疑問だな。Scala、OCaml、Haskellとか、同じ機能を持つ言語はたくさんあったけど、Rustみたいに人気にならなかったでしょ。Rustがこれだけ人気なのは、他の言語にはない独自の能力があるからだと思うよ。" userName="gf000" createdAt="2025/08/28 15:19:29" color="#38d3d3">}}




{{<matomeQuote body="「FP言語では値を渡す」って言ってたけど、それってRustでいうムーブのこと？参照渡しじゃないんだよね？" userName="timeon" createdAt="2025/08/27 18:56:36" color="">}}




{{<matomeQuote body="みんな、エフェクトシステムと型システムを区別するといいよ。エラーハンドリングとか所有権とかは、値の使い方に関わるからエフェクトとして捉えた方がわかりやすい。Javaは参照型メインだけど、それも別のエラーを生む。Swiftは排他性とか安全面でRustと良い勝負だし、所有権も追いついてるよ。あと、Rustのtraitとマクロはプログラマが制約を定義できるからすごいんだ。これで標準ライブラリも小さくなるしね。" userName="w10-1" createdAt="2025/08/27 18:47:16" color="#45d325">}}




{{<matomeQuote body="そうそう、Rustだとそれはムーブって呼ばれるよ。ムーブすると、呼び出し元ではもうその値を使えなくなるんだ。でも、呼び出し先で値を変更しないなら、呼び出し後もその値を使いたいんだよね。Rustが、変更がない場合は値を自由に使えるようにしてくれたらいいんだけどな。変更があるならエラーでOKだよ。" userName="zelphirkalt" createdAt="2025/08/27 20:04:05" color="">}}




{{<matomeQuote body="Scala、OCaml、Haskellは関数型ファーストだけど、Rustがすごかったのは、それらの機能を命令型コアとうまく融合させたことだよ。これだけじゃ成功は無理で、企業のサポートや素晴らしいコミュニティ、そして運も必要だったんだ。Haskellは学術向けだし、OCamlは企業支援がなかった。ScalaはJavaのついでって感じだったから、Rustみたいに人気が出なかったのも納得だね。" userName="ModernMech" createdAt="2025/08/28 16:35:38" color="#38d3d3">}}




{{<matomeQuote body="ScalaはFPとOOPが混じった言語だね。モナドとかをガチでやるFP派もいれば、Li Haoyiのライブラリみたいにバランス重視の人も同じくらいいるんだ。Scalaは確かにニッチだけど、そういう立ち位置なんだろうね。" userName="gf000" createdAt="2025/08/28 17:47:06" color="">}}




{{<matomeQuote body="Swiftの型システムはRustと比べると使いやすさで劣るね。型チェッカーがタイムアウトして「リファクタリングしろ」って言ってくるのは、ジョークとしか思えないよ。よく平気な顔してリリースできたもんだよね。" userName="ModernMech" createdAt="2025/08/27 18:59:47" color="#ff5733">}}




{{<matomeQuote body="俺も同じ不満だね。できないわけじゃないけど、代入するときはデフォルトでコピーかムーブになってほしいんだ。C++のSTLを使うときみたいな感じがいいな。" userName="throwawayffffas" createdAt="2025/08/28 08:40:33" color="">}}




{{<matomeQuote body="値への参照（つまり`&T`）を渡せばいいんじゃない？所有権が絶対必要なら、関数が所有値を返すか、`Rc＜T＞`みたいな共有所有権を使えばいいよ。GC付きの関数型言語だと、だいたい後者と同じことしてるね。" userName="NIckGeek" createdAt="2025/08/27 20:49:21" color="#38d3d3">}}




{{<matomeQuote body="できるとは思うけど、そうするとすべてのプロシージャの引数に`&`を付けなきゃいけないし、プロシージャ内で参照を扱う構文にも対応しないといけないんだよね。" userName="zelphirkalt" createdAt="2025/08/27 21:11:46" color="">}}




{{<matomeQuote body="コピーできない型は、パフォーマンスの問題があるからコピーできないんだ（C++で巨大なベクターをコピーするみたいにね）。でもRustは代入で常にムーブがデフォルトだから、君の不満が分からないな。型が`Copy`を実装してれば、所有権が競合するときはRustが自動でコピーするよ。" userName="vlovich123" createdAt="2025/08/28 10:48:06" color="#ff33a1">}}




{{<matomeQuote body="Scalaの主な問題は、null値で実行時エラーが出る可能性があることだね。だからRustやHaskell、OCamlがパターンマッチングでくれるような実行時の安全性保証はないんだ。例えば、このScalaコードは実行時パニックになるよ: https://scastie.scala-lang.org/fnquHxAcThGn7Z8zistthw 。これはRustではコンパイルされない。ScalaはJVMでJavaを書かずにコードを書けるのが利点かな。" userName="ModernMech" createdAt="2025/08/28 18:41:59" color="#45d325">}}




{{<matomeQuote body="`Copy`も`Clone`もできない値を渡すことはできるけど、呼び出し先にムーブされて呼び出し元では使えなくなるよ。大きな型での値渡しはコストが高いんだ。他の言語は常に参照渡しで、君はそれを値渡しと混同してるみたいだね。Rustは君の望むようにはできないよ。関数の型チェックには、その関数のコードと他の型定義だけが必要で、内容は関係ないんだ。これはコードを読みやすくする良いルールだよ。" userName="Tuna-Fish" createdAt="2025/08/27 21:46:31" color="#785bff">}}




{{<matomeQuote body="すべての静的型システムが同じくらい表現力豊かで安全とは限らないよ。Javaは`Object`と実行時キャストに頼りがちだし、Goにはenumがない。C++のバリアントは後から追加されたから、使うときに落とし穴や使いにくさがあるんだ（安全アクセスには`try/except`が必要で、他の制御構造とは一緒に使えないんだ）。" userName="rendaw" createdAt="2025/08/28 05:16:10" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
