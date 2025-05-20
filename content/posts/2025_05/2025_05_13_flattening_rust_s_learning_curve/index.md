+++
date = '2025-05-13T00:00:00'
months = '2025/05'
draft = false
title = 'Rust、難しすぎ？ 学習曲線を平坦化するには'
tags = ["Rust", "プログラミング", "学習", "所有権", "借用"]
featureimage = 'thumbnails/red1.jpg'
+++

> Rust、難しすぎ？ 学習曲線を平坦化するには

引用元：[https://news.ycombinator.com/item?id=43978435](https://news.ycombinator.com/item?id=43978435)




{{<matomeQuote body="Dijkstraの本みたい。Rustのownership説明は長すぎるね。[1]参照。コア概念は例に隠れてる。<br>- データはオーナー一人。<br>- ownershipは移動できる。<br>- 複数ownerならreference-counted cell。<br>- owner消えたら物も消える。<br>- referenceで借りる。<br>- ownershipとreferenceは違う。<br>- referenceはオブジェクトより長生きできない（“dangling pointer”）。<br>- これはborrow checkerが厳しくチェック。<br>これでモデルは分かる。全てはこれらのルールに繋がる。[1] https://doc.rust-lang.org/book/ch04-01-what-is-ownership.htm..." userName="Animats" createdAt="2025/05/14 00:22:39" color="#785bff">}}




{{<matomeQuote body="こういう説明、私の学習能力のせいか分かりにくいんだよね。カプセル化もそう。例えば、オーナーって”誰”？stack frame？LIFO的にcallerが先に消えるのに、なんでcalleeにownership渡すの？最適化？<br>なんでmutable referenceは一つだけ？シングルスレッドなら同時に使わないのに、両方に渡してもよくない？マルチスレッドの時だけエラーでいいじゃん。<br>理由はあるんだろうけど、Rustやろうとするといつもこういう疑問にぶつかって諦めちゃうんだ。" userName="frankie_t" createdAt="2025/05/14 09:37:52" color="">}}




{{<matomeQuote body="理解してる人に”正しい”とか”完全”だと感じられる形で一連の概念を要約するのって、理解してない人に説明するよりずっと簡単だよね。これをcall-by-sharing言語しか使ったことない人の前に置いたら、すぐに理解できると思う？私は懐疑的だな。" userName="ameliaquining" createdAt="2025/05/14 00:33:10" color="">}}




{{<matomeQuote body="二つ目のセクションの二番目の箇条書きはひどく約束しすぎてるね。実際には、danglng pointerを残さない検証可能な正しいコードでも、rustcでコンパイルできない方法はたくさん、たくさん、たくさんあるんだよ。<br>率直に言って、君が不平を言ってる複雑さのほとんどは、borrow checkerが何を正しいと証明できて、どんな”呪文”がダメなのかを正確に指定しようとすることから来てるんだ。" userName="ajross" createdAt="2025/05/14 02:45:10" color="#ff33a1">}}




{{<matomeQuote body="あれはownershipの説明じゃないよ、あれはモチベーションだ。それはそれでいいんだけどね。本当に説明したり学ぶのが難しいのは、’a, ’b みたいなのを含む関数シグネチャ<br>(...) -＞ &’a [&’b str]<br>を読むことや、そういう関数を呼ぶコードのコンパイラエラーを理解して直すことだよ。" userName="codeflo" createdAt="2025/05/14 06:47:01" color="">}}




{{<matomeQuote body="私にとっては、ownership / lifetimes / referencesが単に”いつものがドロップされるか”について話すのに使われる言葉なんだって気づいた時に、本当に腑に落ちたんだよね。多分C言語のバックグラウンドがあるから、手動のメモリ管理に慣れてるせいかも。Rustは基本的に、何かがスコープから外れた瞬間に”free”を呼んでくれるだけなんだ。<br>専門用語のせいで、そのシンプルなコアな概念を掴むのが邪魔されちゃったんだよ。" userName="bloppe" createdAt="2025/05/14 01:11:13" color="#785bff">}}




{{<matomeQuote body="凄く良い数学の先生から学んだ素晴らしい指導テクニックなんだけど、コアな概念を説明する時、単純化した定義は完全に正しくなくてもいいんだ。そっちの方がずっと掴みやすいし、それに例外を加えるのも、最初から正しくて複雑な定義を理解しようとするよりかなり簡単だよ。" userName="zigzag312" createdAt="2025/05/14 11:56:33" color="">}}




{{<matomeQuote body="そうだね、でもここでの全体の目的は”学習曲線を平坦化する”ことなんだ。そして、動かないコードが動くって人に伝えるのは、その逆をやってることになるよ。<br>あの箇条書きは、最大限好意的に見ても、borrow checkerの”理想的な目標”を定義してるだけだね。実際の仕組みはそれよりずっと能力が低い（目標が形式的に判定不能なんだから、そうなるしかない！）。そして、”Rustを学ぶ”ってのは、どうすればそうなるか理解することが必要だよ。" userName="ajross" createdAt="2025/05/14 12:11:36" color="#38d3d3">}}




{{<matomeQuote body="C++のstd::unique_ptrとそんなに違う？<br>The Rust Bookは冗長すぎたと思ったけど、Comprehensive Rustは良かったね：https://google.github.io/comprehensive-rust/<br>さっと読んだだけで本の内容は理解できた気がするけど、実際に使ってみたことはないんだ。" userName="throwaway81523" createdAt="2025/05/14 07:07:41" color="">}}




{{<matomeQuote body="この記事の説明、なんかピンとこないなー。OwnershipとかBorrowingの定義がないし。どっちも金融資産管理のアナロジーっぽい言葉だよね。Rust知らないからよく分かんないけど、言葉選びが概念理解の難しさに影響してるのかな？ アナロジーって両刃の剣だし。<br>もっと直接的なメモリ関連の言葉で説明した方が分かりやすいかも？" userName="psychoslave" createdAt="2025/05/14 05:15:58" color="#ff5c5c">}}




{{<matomeQuote body="「Rustはスコープ抜けると勝手にfree呼ぶ」って記事にあるけど、C++もRAIIで同じだよ。STLコンテナとか使えばnew/delete不要。<br>C++との違いは、C++は実装の魔法とAPIの制限に依存してて、生のポインタで事故りやすいとこ。scoped_ptr/unique_ptrも後付け感。Rustはコンパイラが不正な使い方を防止してくれるんだ。" userName="mikepurvis" createdAt="2025/05/14 03:27:32" color="#ff5733">}}




{{<matomeQuote body="一番大事なのはこれだね：OwnershipもBorrowingも簡単。超難しいのは、参照がオブジェクトより長生きしないってことを、関数のシグネチャとか使い方で証明しなきゃいけないとこ。<br>あと、型の中に参照するオブジェクトを持たせるのは、本当に必要なとき以外はやめた方がいいよ。証明がめちゃくちゃ複雑になるから。" userName="xiphias2" createdAt="2025/05/14 06:02:51" color="#ff33a1">}}




{{<matomeQuote body="「なんで可変参照は一つだけ？」への答えだよ。Rustが複数の参照を許すと、書き換え中のデータでダングリングポインタが発生するシングルスレッドの例を示すね。<br>コード（省略）<br>Vecの再確保で先頭アドレスが変わっちゃうんだ。" userName="kibwen" createdAt="2025/05/14 10:57:00" color="#ff33a1">}}




{{<matomeQuote body="トレードオフとして、Rustがどこでfreeするか推測しなきゃいけないし、間違えることもあるってことだね。結局、freeの場所がルール違反ならコンパイル拒否される、明示的なfree指示と同じことじゃん。<br>RustがRAIIの道を選んだのは、マジでもったいないなー。" userName="throwawaymaths" createdAt="2025/05/14 06:03:07" color="">}}




{{<matomeQuote body="「学習曲線を平坦化」ってのが目的で、動かないコードを動くって言うのは逆効果だよって話だね。<br>「平坦化」ってメタファーが間違ってるかも。学ぶべき内容は変えられない、学習を簡単にするだけ。後で修正できる「大体合ってる」って言い方は標準的な教育法だよ。https://en.wikipedia.org/wiki/Wittgenstein%27s_ladderを見てね。梯子は学習曲線を登るのを助けるためのものさ。" userName="zahlman" createdAt="2025/05/14 17:49:36" color="">}}




{{<matomeQuote body="「OwnershipもBorrowingも簡単」って意見に100％同意！ プログラマー側がこのスタイルに慣れる必要があるだけだよ。全然難しくない、ちょっとした慣れでOK。" userName="echelon" createdAt="2025/05/14 12:42:23" color="">}}




{{<matomeQuote body="前のコメントの「大体合ってる」ってのは違うなー。Rustってunsafe使わないと双方向リンクリストみたいなのコンパイルできないんだよ！<br>他の言語だと普通だから、Rust始めるとすぐここに引っかかるんだ。「Rustはダングリングポインタが嫌いなだけ」みたいな説明じゃ不十分。あれはすごく単純なコードしか書けないよ。グラフ構造とかもね。" userName="ajross" createdAt="2025/05/14 17:59:16" color="#38d3d3">}}




{{<matomeQuote body="Rust学ぶには、C++の使えない機能を知ってるのが前提かもね。また博士号持ちの委員会が設計したC++代替言語ってわけだ。<br>言語習得にX時間かかるのは言語の欠陥であってユーザーの欠陥じゃないって、彼らなら気づくと思ったんだけどなー。今の教育は一般知能じゃなくて専門能力に偏ってるしね。" userName="casey2" createdAt="2025/05/14 10:55:10" color="">}}




{{<matomeQuote body="そんなこと気にしないで複雑なコード書いてる人なんていっぱいいるじゃん。単純な木構造でも結構やれること多いし、実際のデータなんてフラットだよ。JSONみたいに非フラットに見せるやつだって、非公式なやり方でバックリンクっぽく見せてるだけの木構造だよ。" userName="zahlman" createdAt="2025/05/14 18:49:30" color="">}}




{{<matomeQuote body="俺の経験だとね、Rustを教えるときC++を先に知ってると逆に邪魔なんだ。C++の変な癖が抜けなくてさ。そういう学生は”borrow checker”とすごい戦うんだよね。まっさらな学生の方が、コードってこう書く”べき”だろって考えがないからか、全然楽だよ。" userName="ModernMech" createdAt="2025/05/14 13:27:50" color="#45d325">}}




{{<matomeQuote body="君の質問「_誰_がowner？」に答えるね。stack frameでもメモリでもないと思うんだ。stack frameなら自分でborrowしないだろうし、メモリ自体は所有されるものだから。<br>僕の考えでは、ownerはそのメモリがくっついてる「変数」のことだよ。これがborrow checkerのルールと合うと思う。間違ってたら教えてね。" userName="Hackbraten" createdAt="2025/05/14 14:39:36" color="#45d325">}}




{{<matomeQuote body="所有権と借用を金融資産管理に例えるの、なんか変だなって思うよ。そういう見方だと確かに意味分かんないよね。もしかしたら全然間違ってるかもだけど、普通の意味で考えた方が分かりやすいんじゃない？<br>おもちゃを「持つ」（所有）ってのは、好きにしていいってこと。おもちゃを「借りる」（借用）ってのは、自分のものじゃないから、好き勝手できないでしょ？ 持ち主がダメって言ったら持ってられないし、同じ理由で勝手に改造もできない、みたいな。" userName="Renaud" createdAt="2025/05/14 05:41:33" color="#ff33a1">}}




{{<matomeQuote body="Programmers new to Rust、のことだよね？ なんか、ずっとJavaやってた人が初めてJavaScriptとかPython使うときに、いつものやり方持ち込んじゃうのに似てるかもね。" userName="echelon" createdAt="2025/05/14 14:46:39" color="">}}




{{<matomeQuote body="「vの後に何かheapに置いて（だからその場で拡張できない）」ってRustが保証してるかな？ って疑うね。heapの本来の考え方って、メモリがどこに確保されるかの制御は手放す代わりに、確保・解放・再利用を簡単にすることじゃん。" userName="Someone" createdAt="2025/05/14 21:50:34" color="">}}




{{<matomeQuote body="Rustの難しさは、値と参照の渡し方が他の言語と全然違うことにある。RustではCopyじゃない限り、関数に渡したり変数に代入したりすると「move」が起きるんだ。C++で毎回std::moveしてるみたいな感じで、慣れてる言語と全然違う。<br>だから、その動きを意識する考え方に切り替える必要があるんだ。最初は直感的じゃないけど、慣れると他の言語でも役に立つ考え方になるよ。" userName="cmrdporcupine" createdAt="2025/05/14 16:22:19" color="#ff5c5c">}}




{{<matomeQuote body="なんかincomplete っぽいね。例えば、借用してるやつがいなくなったらどうなるの？" userName="amelius" createdAt="2025/05/14 11:21:50" color="">}}




{{<matomeQuote body="世の中のほとんどの現代言語で似たようなプログラムは、いくつでも参照がOKなのに、これで問題ないんだよね。Vectorの要素に安全な参照を持つには、vとその中のオフセット0を覚えておく「locative」オブジェクトみたいなのが必要になるんだ。" userName="kazinator" createdAt="2025/05/14 19:32:06" color="">}}




{{<matomeQuote body="まだRustには手を出せてないんだ、時間とか需要とかでね。でも、ここ何年かはC++を結構やってるよ。その経験から言うと、Rustのルールはマジで最高だね。最近のC++でもこういうのをちゃんとやろうって努力はたくさんあるけど、smart pointer使っても正しくやるのはまだ難しいからさ。" userName="3vidence" createdAt="2025/05/15 15:41:10" color="#785bff">}}




{{<matomeQuote body="やれやれ。この記事の言いたいことってさ、Rust学び始めた人が借用チェッカーでつまずくから、学習曲線をどうにかしなきゃって話なのにさ。みんなが認める独特でちょっと分かりづらいセマンティクスなのに。Rust批判ってほんと疲れるわ。どんなに理にかなった明らかなことでも、Rustは絶対間違ってないって40件もコメントつけて反論してくるやつが必ずいるんだもん。" userName="ajross" createdAt="2025/05/14 20:33:47" color="">}}




{{<matomeQuote body="Rustに慣れるまで何回か試したんだ。所有権とかライフタイムが最初は大変で、最初の挑戦ではすぐ無理だって思った。でもRustがプログラミングや設計を深く学ぶ助けになるって分かってたから、3回目でやっとコツを掴んだんだ。結果、Rustを学んだのはプログラミング人生で最高の決断の一つだって自信を持って言えるよ。先に型とか決めて、immutableなデータでパターンマッチングするってアプローチは、他の言語でも使うようになったし。" userName="8s2ngy" createdAt="2025/05/14 03:37:17" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="君の経験は俺の観察と一致するね。C++開発者が初めてRustに触れると、C++の書き方で”借用チェッカーと戦いがち”なんだ。その後Rustの書き方を学んで、それをC++に戻すと、借用チェックがなくてもより堅牢なコードを書くようになる。" userName="ModernMech" createdAt="2025/05/14 13:49:39" color="#ff33a1">}}




{{<matomeQuote body="だいたいそうだけど、C++だと安全に簡単にできるのにRustだとできないパターンもあるんだ。構造化並行性がその代表例。親オブジェクトが子への参照を持つとき、Arcを使わずにやりたいのに、メモリリークが安全だってことになってるから、unsafeを使わないとRustでは難しい。結果、望まない参照カウントが増えちゃう（asyncの文脈が多い）。このパターンはC++には持って帰らないな。" userName="surajrmal" createdAt="2025/05/15 15:15:35" color="#38d3d3">}}




{{<matomeQuote body="俺も全く同じ経験だよ。学習の3回目で、なんか全部繋がった感じがして、いくつかプログラムを書けるようになったんだ。長いプログラマー人生があるのに、なんか繰り返してやることが必要なんだな。JVMの”Dagger”ってDIフレームワークも、理解するのに3回”学習を試みた”よ。自分がちょっと複雑なことを学ぶのが苦手なのかもしれないけど、なんかそんな感じだね。" userName="explodes" createdAt="2025/05/14 09:27:59" color="#ff33a1">}}




{{<matomeQuote body="Rustが初心者に難しい理由いくつかあるね。まず他の言語と全然違うこと。それから、すごく複雑で構文が分かりにくい。多くの機能は背後の理論を知らないと理解しづらいんだ。型システムとか借用メカニズムとか。CSの修士号持ってない人には向かないかもね。よく使われるマクロも難解さを増してる。<br>最近はLLMが助けになると思う。俺が最後にRustを理解しようとした時はまだなかったけど。LLMのおかげで新しい挑戦のハードルは下がったよ。俺の普段使ってる言語の問題は解決しないけどね。Rustは学ぶのが独自に難しい。" userName="jillesvangurp" createdAt="2025/05/14 06:54:44" color="#ff5733">}}




{{<matomeQuote body="”他の言語と全然違う。意図的だけど、これも障壁。”<br>多くの人が普段使ってる言語とは全然違うけど、主要な機能や構文はどこかから来てるんだよ。<br>”型システムとか借用メカニズムは…PythonとかJavascriptユーザーにはチンプンカンプン。”<br>まあ、そうだね、彼らはそもそも型が好きじゃないし。もし君がこれまでそれらの言語しかやってこなかったら、同じ問題を持つ別の言語を学ばない限り、参考にできる知識はほとんどないだろうね。" userName="devnullbrain" createdAt="2025/05/14 16:08:44" color="">}}




{{<matomeQuote body="でもPythonはどんどん型アノテーションが増えてるし、Typescriptは物凄いスピードでJavascriptを喰ってるよ。それにJavaでさえADTが入ってきたし。”型オタク”について文句言う人はこれから大変なことになると思うね、動的言語が人気なくなるにつれてさ。<br>それに、`dict[str, int]`みたいなのを見たことがある人は、`HashMap＜String, i32＞`みたいなのに特に頭を使わずにマッピングできるだろうし、そこから成長できるはずだよ。" userName="syklemil" createdAt="2025/05/14 21:01:54" color="#ff5c5c">}}




{{<matomeQuote body="マクロのせいでRust学習につまずいたんだ。使った学習リソースが悪かったのかもしれないけど、初期の段階で説明なしにマクロが出てきたからね。" userName="greazy" createdAt="2025/05/14 11:46:17" color="">}}




{{<matomeQuote body="println!()があるからMacrosは早く出てくるんだよ。<br>MacrosはRustですっごく大事な機能なんだ。一部の人だけじゃなく、みんなが理解して使うべきなんだ。" userName="ModernMech" createdAt="2025/05/14 14:09:23" color="#45d325">}}




{{<matomeQuote body="マジでそうは思わないな。<br>Macrosはだいたい「やりすぎ」なコードにつながるんだよ。安全でもね。<br>Macrosは控えめに使うべきだし、Rustは便利さのために複雑さを推奨しすぎてる気がする。<br>システムプログラマとしては、何が起きてるか分かりにくくなる間接参照はマジ勘弁。パフォーマンスとかハードウェアとのやり取りが分かりづらくなるんだ。" userName="toprerules" createdAt="2025/05/14 15:30:07" color="#38d3d3">}}




{{<matomeQuote body="分かる、分かりにくくなるようなMacroの使い方はダメだよね。でもそれって関数とか他のものでも同じことだよ。<br>Macroに慣れてない人が多いのかもしれないけど、ちゃんと使えばめちゃくちゃ便利なんだ。<br>例えば、似たような関数を100個書くとか、Rustの中にDSLを作るとか。<br>RustはMacroを使いやすく、安全にしてくれてるしね。" userName="ModernMech" createdAt="2025/05/14 16:54:54" color="#45d325">}}




{{<matomeQuote body="まあ、自分でMacroを書く必要はないんだけどね。<br>例えば、俺はほとんど書いたことないし。" userName="steveklabnik" createdAt="2025/05/14 14:12:44" color="">}}




{{<matomeQuote body="Safe RustはC++よりシンプルだけど、自己参照とか直感的じゃない。<br>Unsafe Rustはシンプルじゃなく、Cより難しいかも（ポインタ操作とか）。Raw pointerはCSですごく大事なのにね。<br>thread_localとかcustom allocatorsとか、まだ解決してない問題も多い。<br>Rustは良いけど、なんか一時的なステップって感じかな。<br>MojoとかCarbonとかZigがRustから学んで、次のシステム言語になるかも。<br>学習曲線はやるタスクで全然違うよ。" userName="cyber1" createdAt="2025/05/14 09:22:16" color="#ff33a1">}}




{{<matomeQuote body="「Raw pointerはCSですごく大事」は言い過ぎじゃない？<br>俺、最後にRaw pointer使ったのいつか思い出せないんだけど。" userName="make3" createdAt="2025/05/14 09:25:43" color="">}}




{{<matomeQuote body="生のメモリアドレスを直接いじるって考え方、コンピュータサイエンスの基本中の基本だと思うけど？<br>もしかして、あなたは特定の言語とかフレームワークでSEやってるだけ？<br>クラッチだって自動車工学では基本だけど、毎日使うわけじゃないしね。" userName="wepple" createdAt="2025/05/14 10:01:31" color="#ff33a1">}}




{{<matomeQuote body="それはね、コンピュータサイエンスかコンピュータエンジニアリング、どう定義するかによるんだ。<br>俺のCSの授業では、ポインタとかメモリレイアウトなんて全然触れなかったよ。理論とかアルゴリズムの複雑性ばっかり。<br>逆にCEの授業だと、メモリのことは無視できなかったな。" userName="tremon" createdAt="2025/05/14 20:45:45" color="#ff5c5c">}}




{{<matomeQuote body="型付きポインタの話かと思ってたよ。<br>ほとんどのアルゴリズムとかデータ構造は型付きポインタを使うからね。<br>低レベルなCEだと型無しのポインタを使うけど。<br>これは前のコメントの話にもつながるね。俺にとってはCEであってCSじゃないってとこだけど、ここは意見分かれるかも。" userName="make3" createdAt="2025/05/15 07:46:29" color="#ff33a1">}}




{{<matomeQuote body="＞「その位置のデータにアクセス」だけじゃなく、<br>他のたくさんの場所、他のたくさんの人によって、他のたくさんのタイミング、または同時にアクセスする、ってことだよね。" userName="devnullbrain" createdAt="2025/05/14 15:40:31" color="">}}




{{<matomeQuote body="Javaのポインターは似てる点多いけど、生ポインターとは違うと思うなー。" userName="vacuity" createdAt="2025/05/14 15:06:41" color="">}}




{{<matomeQuote body="概念の重要性って人間が直接使う頻度とは関係ないんだよね。 https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_equation はオプション取引で超重要だけど、クオンツが一日中値を入れて計算してるわけじゃないでしょ。" userName="zahlman" createdAt="2025/05/14 18:08:57" color="">}}




{{<matomeQuote body="システムプログラマだけど、Rustは結構簡単だったよ。問題は、システム言語初めての人が、”それは危険だ””それは変だ”ってRustに厳しく言われることじゃないかな。非システム系がCとか書いたらバグだらけでも動いちゃうから気づかないけど、Rustは教えてくれる。<br>CやC++経験者なら所有権とかライフタイムとか、明示されてるだけだから楽だよ。" userName="toprerules" createdAt="2025/05/14 15:24:24" color="#785bff">}}




{{<matomeQuote body="まさにその通り！緩い言語から厳しい言語への移行だね。自分はRust 1.0の頃に独学したけど、所有権とかで困らなかったな。それは、言語ってこうあるべき、みたいな先入観がなかったからかも。Rustの制限も他の言語と同じくらい”そういうもんか”って感じで、無理やり自分のスタイルを通そうとしなかったからかな。<br>JSとかPythonは融通利くけど、RustやHaskellはそうじゃないとコードが汚くなる。これが”やりたいことできない”って不満になるのかもね。慣れもあると思う。" userName="SyrupThinker" createdAt="2025/05/14 17:50:29" color="#ff5733">}}




{{<matomeQuote body="教える仕事してたけど、前のコメントの意見に同意だな。早期Rust学習者は、言語ってこうあるべきって先入観が少なかったから、Rustの制限も他の言語と同じくらい”そういうもんか”って受け入れられたのかもね。" userName="steveklabnik" createdAt="2025/05/14 18:29:38" color="">}}




{{<matomeQuote body="低レベルプログラマだけど、Rustで一番苦労したのは型システム、特にトレイトとトレイト境界だったな。C++経験者ならもっと分かりやすいかもだけど、俺はCばっかり書いてたからRustのやり方が馴染まなかったんだ。" userName="RealityVoid" createdAt="2025/05/14 21:16:09" color="#45d325">}}




{{<matomeQuote body="＞抵抗するな。それが一番大事＞Accept that learning Rust requires...＞Leave your hubris at home＞Declare defeat＞Resistance is futile. The longer you refuse to learn, the longer you will suffer＞Forget what you think you knew...<br>こう見ると、Orwell’s telescreen OSってRustで書かれてたんじゃないかって思えてきたw" userName="GenshoTikamura" createdAt="2025/05/14 10:25:49" color="">}}




{{<matomeQuote body="でもそれ本当なんだよね。Rust学習で一番失敗したのは、オブジェクト指向を無理やり適用しようとしたこと。全然うまくいかなくて…。”もういいや、お前（Rust）がやりたいようにやるわ”って思ったら、すんなり進むようになったんだ。" userName="atoav" createdAt="2025/05/14 10:54:45" color="#38d3d3">}}




{{<matomeQuote body="正直言うと、それって虐待関係みたいに聞こえるね。プログラミング言語はそんな風に縛るべきじゃないよ。" userName="rikafurude21" createdAt="2025/05/14 13:13:21" color="">}}




{{<matomeQuote body="＞Your programming language shouldn’t constrict you in those waysSays who?<br>プログラミング言語には色々な形があって、それぞれトレードオフがあるんだ。Rustのトレードオフは、有効なプログラムについてコンパイラがすごく意見を持つこと。その代わりにCやC++と同じくらいの性能で、バグや脆弱性が少ないんだよ。" userName="jplusequalt" createdAt="2025/05/14 13:49:43" color="#ff33a1">}}




{{<matomeQuote body="あとさ、誰でも動くプログラムは書けるんだよ。そこは簡単。難しいのは、めまぐるしく変わる環境でも、コード自体が変わっても、意図しないことをしないプログラムを書くことなんだ。<br>つまり、コードを動かすんじゃなくて、意図した通りにだけ動くように保証すること、共同作業者（または未来の自分）がめちゃくちゃなバカみたいに振る舞っても大丈夫にすること。ってことは、強制的な型システムとかバリデーションとか、厳しいルールを使うってことだよね。<br>初心者が趣味で適当なプログラム組んでる時は、なんでもありなやり方が気楽で自由って感じるかもだけど、ある程度の複雑さを超えるとマジで痛い目見るよ。<br>俺が読む機会があったすごいCプログラマーのコードって、頭の中にものすごい量の暗黙のルールがあって、それを自分で守ってるんだ。そのルールには理由があるわけ。そういうルールを言語が強制してくれると、逆に挑戦できることの方が増えるんだ。だって手作業でチェックするのはリスク高すぎるから。<br>極限スポーツのフォームピットみたいなもんだね。確かに、10回連続でトリプルバックフリップに挑戦して首の骨折る方が男らしいけど、フォームピットがあれば試行錯誤できて上達は早いよね。で、そのフォームピットがあると、シーン全体が変わるんだ。制限されてないと感じるのに、前ならクラッシュしてたようなコードも書けるようになる。面白いもんだよね。" userName="atoav" createdAt="2025/05/14 18:17:30" color="#38d3d3">}}




{{<matomeQuote body="制限って創造性を育むし、実際の問題についてもっとじっくり考えるための頭のスペースも空けてくれるんだ。" userName="freilanzer" createdAt="2025/05/15 09:49:16" color="">}}




{{<matomeQuote body="どんなプログラミング言語だって、構文がある時点で制約はあるんだよ。<br>JavaScriptだと変数を宣言して、最初は5（数値）を入れて、後から”hello”（文字列）に変えたりできるけど、Cとかだとそれは許されない。CってCのやり方でやらなきゃいけないから、制約きつすぎ？" userName="hbn" createdAt="2025/05/14 13:57:08" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Cでもvoidポインタ使えば結構簡単にできるんじゃない？違ったら誰か教えてほしいな。<br>でも、そうすべきか？ってのは全く別の話だけどね。" userName="dgfitz" createdAt="2025/05/14 15:53:57" color="">}}




{{<matomeQuote body="でもvoidポインタを2つ足しても、それが数値を指してても文字列を指してても、シームレスに整数の足し算になったり文字列の結合になったりはしないよね。（型メタデータ付きのカスタムデータ型作って、それを使う足し算関数とか作ればできるけど、それってその上に独自のカスタム言語作ってるようなもんだから、同じことじゃないし。）だから、そう、CはJavaScriptにはないやり方で、ある程度君を制限してくるんだよ。" userName="quietbritishjim" createdAt="2025/05/14 19:23:00" color="">}}




{{<matomeQuote body="厳密に言えば、Cで変数を数値から文字列に変える、ってのはできない。できるのは、5っていう整数を指してる変数（これはポインタ）を、”hello\0”っていう文字列を指すように変えること。変数の値はどっちの場合もポインタなんだよ。<br>面白いことに、これPythonでも同じなんだよね。ポインタじゃない変数ってPythonにはないし、ほとんどの演算子が暗黙的に参照解除してるから分かりにくいけどさ。" userName="int_19h" createdAt="2025/05/16 09:13:20" color="">}}




{{<matomeQuote body="＞厳密に言えば、Cで変数を数値から文字列に変える、ってのはできない。<br>CならUnionの方が良い例えになるかもね。<br>＞面白いことに、これPythonでも同じなんだよね。<br>それは実装の詳細であって、言語自体の性質じゃないんじゃない？JavaScriptの実装も同じことしてるかもしれないしね。例えばV8だと、小さい整数（31ビット）以外はヒープへのポインタだし、あまり最適化されてない実装なら全部ヒープに割り当てるかもしれない。Pythonの実装だって、V8みたいにタグ付きポインタ／SMIをポインタが入るところに直接格納したりするかもしれないし、PyPyなんかはタグ付きポインタとSMI両方使ってるし、値をレジスタに割り当てることすらあるよ。" userName="boomlinde" createdAt="2025/05/17 11:34:13" color="#ff33a1">}}




{{<matomeQuote body="＞CならUnionの方が良い例えになるかもね。<br>Tagged unionならね。でもCには第一級のTagged unionはないから。<br>一番近い例えはOCamlのPolymorphic variantsだろうね。<br>＞それは実装の詳細であって、言語自体の性質じゃないんじゃない？<br>いや、違うね。JavaScriptとは違って、全部オブジェクトへの参照で、それぞれのオブジェクトがユニークなIDを持ってるって事実は、Pythonのセマンティクスの一部として明確に定義されてるし、多くのケースでそれがはっきりわかるんだよ。”プリミティブ”型でも、それらを継承してみれば簡単に確認できる。（一方で、特定のPython実装がこれをTagged pointerとかで実装してる可能性は、それは実装の詳細。だって、まるで全部オブジェクトであるかのように振る舞うことが求められてるんだから。）" userName="int_19h" createdAt="2025/05/18 02:33:30" color="#38d3d3">}}




{{<matomeQuote body="＞Tagged unionならね。でもCには第一級のTagged unionはないから。<br>元々の例（変数を5（数値）にセットして、それから”hello”（文字列）にセットする）なら、普通のunionで全然OKだよ。<br>＞一番近い例えはOCamlのPolymorphic variantsだろうね。<br>そうだろうね、でもOCamlはCじゃないし。<br>＞全部オブジェクトへの参照<br>明らかに、参照とポインタは同じものじゃないんだから、参照がポインタに対応してるかってのは実装の詳細だよ。<br>＞それぞれのオブジェクトがユニークなIDを持ってる<br>それは必ずしもそのアドレスと関係があるわけじゃない。それはオブジェクトの生存期間中ユニークであることが保証されてる、よくわからない値だよ。<br>一方、Cのポインタの値って、違うオブジェクトでもユニークとは限らないんだ。例えば、フィールドが1つ以上あるstructへのポインタは、その最初のフィールドへのポインタと同じ値を持つことがある。型を考慮して初めて、ポインタが特定のオブジェクトを一意に識別できるようになるから、PythonのオブジェクトIDとは正確には対応してないよ。" userName="boomlinde" createdAt="2025/05/18 09:37:47" color="#ff5c5c">}}




{{<matomeQuote body="DVは強制とか支配、恐怖が関係してて、個人の自由や同意を無視するもの。Rustは有害じゃないし、書けるプログラムに制限を設けるのもDVじゃないよ。Rustのルールは明確さや安全性のためのもので、設計グループによって作られ、気まぐれには変わらない。DVは深刻な害をもたらすけど、Rustはイライラするかもしれないけど、心理的・身体的な害はないんだ。" userName="ModernMech" createdAt="2025/05/14 13:59:56" color="#ff5c5c">}}




{{<matomeQuote body="コンパイラが変なコードをコンパイルさせてくれないなら、それは制限してるってことになるけど、それこそ求めてることでしょ？ 間違ったものはコンパイルしたくないんだから。RustはRubyとかC/C++よりもっと多くのルールを強制してるだけだよ。" userName="freilanzer" createdAt="2025/05/15 09:50:57" color="#ff5733">}}




{{<matomeQuote body="元々のRust開発者たちの文化的精神とか、それが生まれた状況を理解するのに役立つね。" userName="lagniappe" createdAt="2025/05/14 13:46:11" color="#45d325">}}




{{<matomeQuote body="話し言葉を学ぶときも同じで、言語が良いか悪いか判断せず、役に立つと受け入れてただ学ぶのが大事。たくさんの人が使ってるんだから有用だよ。Erlangの経験があったからRustが学べたかも。RustはErlangの高負荷部分を除いて、厳しい型とかメモリ管理を加えた感じかな。コンパイラがいつもDialyzerみたいに動くErlangだね。" userName="pessimizer" createdAt="2025/05/14 17:44:11" color="#ff5c5c">}}




{{<matomeQuote body="俺のRustに対する問題は学習曲線じゃなくて、構文がマジで醜いことなんだ。PerlとC++のテンプレートメタプログラミングが子供作ったみたい。マジで無理。Pythonが一番好きで、Cはシンプルさのエレガンス、Goはまあ許せる。" userName="TheChaplain" createdAt="2025/05/14 08:00:02" color="">}}




{{<matomeQuote body="Cはシンプルだけどエレガントとは言えないな。名前空間がないとか、型システムが緩いとか、ビルドシステムが複雑とか、ナル終端文字列の危険さとか、エレガントじゃないエラー処理、危険な標準ライブラリ、未定義動作への依存とか、問題は多い。シンプルに見えるけど、全然エレガントじゃないよ。" userName="krior" createdAt="2025/05/14 08:53:50" color="#785bff">}}




{{<matomeQuote body="Cがエレガントなのは、強力なのに必要ならコンパイラも書けそうなくらいシンプルだから。一部タスクでは実用的じゃないかもだけど、パワーと複雑さのバランスがすごい。Luaも同じように感じるね。" userName="0x000xca0xfe" createdAt="2025/05/14 11:40:39" color="#ff5c5c">}}




{{<matomeQuote body="定義を共有する仕組みの’include’、別名”copy file here”は、マジでエレガントじゃないね。できる最小限のことかもしれないけど、エレガントじゃない。" userName="dwattttt" createdAt="2025/05/14 11:56:24" color="">}}




{{<matomeQuote body="変なプリプロセッサ全体も言うまでもないけど…includeとか標準ライブラリとか、UBで暴走するコンパイラは、言語自体じゃなくてその周りのインフラやエコシステムの一部だと思うんだ。そして、C言語自体は美しいけど、その周りのインフラはひどいってことには完全に同意だよ。" userName="0x000xca0xfe" createdAt="2025/05/14 12:11:49" color="">}}




{{<matomeQuote body="Modula-2はエレガントだよ。Cは付け焼き刃で作った感じ。両方とも同じ力があってだいたい1対1で対応するけど、設計は重要なんだ。Modulaコンパイラを書く方が簡単だろうね。" userName="int_19h" createdAt="2025/05/16 09:14:28" color="">}}




{{<matomeQuote body="構文の好みは語れないよね、特に。個人的にはRustの構文は気にならないけど、Goの構文は変に感じるな、特に型シグネチャは句読点嫌いな人のランオンセンテンスみたいで。Cの型シグネチャはごちゃごちゃで、あれは設計ミスだよ。Pythonは「あー、もういいや、’Any’ってしとこ」って感じになっちゃう領域。でもそれが好きな人もいるし、みんなに合うわけじゃないんだよね。" userName="syklemil" createdAt="2025/05/14 21:12:17" color="#38d3d3">}}




{{<matomeQuote body="Nim見たことある？君、気に入るかもよ。" userName="Oreb" createdAt="2025/05/14 08:17:49" color="">}}




{{<matomeQuote body="Nimの見た目や雰囲気は好きなんだけど、変なニワトリ－卵みたいな状況にハマってさ。人気がないから便利なパッケージがなくて、結局やめちゃった。もちろん、人気が出なきゃパッケージ揃わないって分かってるけどね…。" userName="mkaic" createdAt="2025/05/14 19:04:37" color="">}}




{{<matomeQuote body="Rustは素晴らしいけど謙虚になるね！ビルトインのコーチ、borrow checkerがいるんだ。borrow checkerが全然OK出してくれなくてエラーばっかだったから、諦めて教わることにした。コンパイルエラーが出るたびに、threadsafe shared-memory ringbufferの正しいやり方を教えてもらったんだ。分かってるつもりだったけど、全然だったよ。CやC++はownership semanticsがないからコンパイラが教えてくれない。みんなRust学ぶべきだよ。自分自身について何を発見するか分からないもんね。" userName="cadamsdotcom" createdAt="2025/05/14 00:45:56" color="#ff5733">}}




{{<matomeQuote body="”Rustは素晴らしいけど謙虚になるね！”って言うけど、それは低レベルの操作を避ける抽象化でしょ。みんな好きな方法で計算を楽しめばいい。誰かに強制しないで。君は特定の高級言語に燃え上がってるのかもだけど、みんながそうじゃない。言語で自分を発見する必要はないよ。特定の言語に固執すると、本来の目的を見失う。それはツールをきちんと使わず愛でてるだけだよ。" userName="gerdesj" createdAt="2025/05/14 01:10:48" color="">}}




{{<matomeQuote body="@gerdesj 君のトーン、失礼で意地悪だったよ。メッセージの一部はもっともだけど、不要な侮辱で台無し。私はRust自体が好きってわけじゃないし、言語で自分を発見する必要もないんだ。Rustは制約があるから、正しさについて教えてくれる。多くの人が正しさをもっと学べるね！”みんな”は言い過ぎだったと認めよう。挑発的すぎたね。" userName="cadamsdotcom" createdAt="2025/05/14 03:22:14" color="">}}




{{<matomeQuote body="それは根本的な正しさの教訓を教えてくれるわけじゃないよ。Rustが課すフレームワーク内での正しさについて教えてくれるだけだよ、それだけ。" userName="prmph" createdAt="2025/05/14 12:26:44" color="">}}




{{<matomeQuote body="そして彼は光を見たから他の人も好きになるべきだと言ってるんだ。直感的に言うと、Rustへの愛着には結構Stockholm Syndromeが関係してる気がするね。昔のC++でも似たような行動問題が見られたけど、Rustは別次元に行ってるよ。" userName="codr7" createdAt="2025/05/14 02:24:18" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
