+++
date = '2025-03-23T00:00:00'
months = '2025/03'
draft = false
title = 'セキュアすぎる！形式証明済みSeL4マイクロカーネル入門[pdf]：堅牢性の秘密とは？'
tags = ["SeL4", "マイクロカーネル", "セキュリティ", "形式証明", "OS"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> セキュアすぎる！形式証明済みSeL4マイクロカーネル入門[pdf]：堅牢性の秘密とは？

引用元：[https://news.ycombinator.com/item?id=43452185](https://news.ycombinator.com/item?id=43452185)

{{<matomeQuote body="SeL4はもう古いニュースだよねー。批判じゃないんだけどさ、他にちゃんと形式的に証明されたレイヤーとかコンポーネントって追加された人いるのかな？（追記：マイクロカーネルの改良じゃなくて、マイクロカーネル以外の新しいコンポーネントのことね。）<br>あとさ、HNにいる人の中には「証明」って言葉を見ると感情が爆発して、知的機能が停止しちゃう人がいる気がするんだよねー。それって安全なITの無限の問題に対する万能薬じゃないし、完璧で欠点のないソフトウェアのダイヤモンドを作り出す方法でもないじゃん？俺の理解だと、特定の条件下の特定の要件を満たすことが証明されてるってことだよね。その要件とか条件って結構狭い範囲だったりするし。他の機能とか条件については何も言ってないじゃん？大体あってる？<br>実際問題、何なの？セキュリティの専門家が「形式的に証明されたソフトウェア」を見た時、どう思うの？<br>SeL4が満たすスペックって何？（OPはしばらく見てないけど。）それって一番重要な情報じゃない？" userName="mmooss" createdAt="2025-03-23T15:51:18" color="">}}

{{<matomeQuote body="色々な欠陥がないことが”形式的に証明”されてても、seL4がメモリ破壊の欠陥に免疫があるわけじゃなかったんだよね。形式的な証明があったにもかかわらず、数年前にメモリ破壊の欠陥が見つかったんだ。修正コミットとseL4の証明を修正するPRは公開されてるよ。<br>https:＂//github．com/seL4/seL4/pull/243<br>https:＂//github．com/seL4/l4v/pull/453<br>他にもメモリ関連のバグがIssue Trackerにいっぱいあるよ。<br>https:＂//github．com/seL4/seL4/issues?q=is%3Aissue%20label%3Ab…<br>面白いことに、メモリ内の「register clobbering」を修正するPRはバグとしてラベル付けされてなかったから、「バグ」でフィルタリングしても表示されないんだ。<br>昔はseL4は証明があるからこういう問題には強いと思ってたんだけど、これを見て、証明はコミュニティが思ってるほど包括的じゃないんだなって思うようになったんだよね。とは言え、seL4は今でもとても印象的なソフトウェアだよ。<br>最後に、君の質問に答えるけど、seL4が満たす仕様はGithubで公開されてるよ。<br>https:＂//github．com/seL4/l4v" userName="ryao" createdAt="2025-03-23T17:49:11" color="#ff33a1">}}

{{<matomeQuote body="それがどうしてカーネルメモリの破壊になるのかわからないなー。コードのコンテキストがわからないけど、カーネルがuserspaceのレジスタを誤って壊して、userspaceのコード実行が間違ってしまうってケースみたいだよね。それってカーネル自体のシステムの安全性の特性を侵害するわけじゃないと思うなー。<br>そうだとすると、それはuserspaceのAPIを意図した/望ましい方法で使用するのが難しくなるっていう、userspaceのAPIの機能仕様の問題にすぎないんじゃない？カーネルを使うのが難しくなって、カーネルを使ってシステムを検証するのが難しくなるけど、カーネル自体の安全性仕様と証明に関係するカーネルメモリの破壊にはならないと思うな。" userName="Veserv" createdAt="2025-03-24T00:08:06" color="#785bff">}}

{{<matomeQuote body="seL4でメモリ破壊の欠陥が見つかったって言ったじゃん。これは事実だよ。パッチを読めば、作成されたばかりのメッセージが上書きされてたのがわかると思うよ（コードコメントに書いてある）。これはseL4カーネルコード内で発生してて、証明は以前はこの動作を許可してたんだ（開発者のコメントによると）。証明を修正してこれを禁止する必要があったんだ（2番目のPR）。リンクを見ればわかるはずだよ。" userName="ryao" createdAt="2025-03-24T12:09:00" color="#ff5c5c">}}

{{<matomeQuote body="どうしてそれがメモリ破壊なのか説明せずに、メモリ破壊だって断言するのはやめてくれよ。<br>間違ってるけど合法な出力が格納されてるケースみたいじゃん。それって、本質的にメモリ破壊とは言えないと思うな。<br>例えば、ソート関数があるとしよう。整数のvectorを引数で渡して、ソートされたvectorに書き換えてほしいとする。でも、その関数はvectorのすべての要素をゼロにしちゃう。それはソートされたvectorだから、技術的には仕様を満たしてることになるよね。その関数はvectorの中身を”破壊”したことになる。でも、それは”メモリ破壊”バグじゃないじゃん。それは単に間違ったものをメモリに出力するだけのバグだよ。<br>メモリ破壊バグは、”破壊”されるメモリの明示的または暗黙的な不変条件に違反する必要があるんだ。範囲外書き込み、use-after-free、クラスインターフェースのバイパス、保護されていない共有並列アクセス、などなど。一貫性がないけど合法な値を、一意に所有されているメモリに提供されたポインタを介して書き込むのは間違ってるけど、”メモリ破壊”じゃないんだ。<br>それに、これは”メモリ破壊”の定義で意見が食い違ってるって話じゃないんだよ。彼らは解釈の余地がある”メモリ破壊”からの完全な安全性を主張してるわけじゃないんだ。[1] バッファオーバーフロー、nullポインタのデリファレンス、ポインタ型の混乱、メモリリーク、その他具体的に名前が付けられて定義されたメモリ破壊エラーからの安全性を主張してるんだ。どの特定のメモリ安全性のプロパティが侵害されたのか特定してくれよ。<br>繰り返すけど、何らかの種類のメモリ破壊バグじゃないって主張してるわけじゃないんだ。でも、そのパッチとコメントから、提示されたバグが実際にメモリ破壊なのかどうかはっきりしないんだよね。コンテキストの詳細がないとわからない。俺はカーネル開発を仕事にしてるけど、それでもパッチだけじゃわからないんだ。ほとんどの人はもっと詳細がないとわからないと思うよ。<br>[1]<br>https:＂//sel4．systems/Info/FAQ/proof．html" userName="Veserv" createdAt="2025-03-24T18:21:28" color="">}}

{{<matomeQuote body="seL4にバグがゼロであることに関するFAQエントリを見てくれよ。<br>https:＂//docs．sel4．systems/projects/sel4/frequently-asked-que…<br>ほとんどの人は、リンク先のGitHub PRで修正されたバグはありえないと思うだろうね。抜け穴は、仕様に欠陥があったことなんだ。それは「予期しない機能」についての曖昧なヒントとしてのみ言及されてたんだ。" userName="ryao" createdAt="2025-03-24T18:48:41" color="#ff33a1">}}

{{<matomeQuote body="それがメモリ破壊かどうかについて、自信満々に断言してるのに、質問をはぐらかし続けてるよね。侵害された特定のメモリ安全性のプロパティと、それがどのように侵害されたかを特定して、主張を裏付けてくれよ。" userName="Veserv" createdAt="2025-03-24T19:22:19" color="">}}

{{<matomeQuote body="引用を示したじゃん。それを使って自分で調べてよ。seL4の開発者が公開してるものの中に答えがあると思うけど、君が納得するまで何かを指摘するのに何日も何週間も費やすつもりはないよ。" userName="ryao" createdAt="2025-03-24T19:29:58" color="">}}

{{<matomeQuote body="君は強力な主張をしたのに、それを十分に裏付けることができてないのに、さらに重ねて主張してるよね。<br>俺は自分で調べて、君の解釈とは根本的に異なる俺自身の解釈を示した。君はそれに対処することを拒否して、さらなる詳細なしに君の解釈を主張し続けてる。それは俺の解釈が正しいことを証明するわけじゃないけど、君が提供した引用と証拠が君の結論に明確につながってないこと、そして君がメモリが破壊されてる簡単な反例を示すことでできるはずの俺の解釈の誤りを特定したり、君の解釈の正しさを示したりしてないことを示してるよ。<br>君はそれが議論の余地のない事実だと言ってるけど、明確な例を示すのに「何日も何週間も」かかるって言ってる。誰でも君が提供した引用からバグがメモリ破壊だってわかるのに、君自身でさえ明確な例を示すのにそんなに時間がかかるのはどうしてなの？" userName="Veserv" createdAt="2025-03-24T20:13:12" color="">}}

{{<matomeQuote body="言わせてもらうけど、seL4の開発者が強い主張をしたんだよ。それが聞いた人が思ってたほど強くないって証拠は、強い主張じゃない。現実的なだけだよ。seL4の開発者自身が、彼らがリストアップしてるプロパティは証明から出てくるものであって、彼らがすべてのプロパティを網羅的にリストアップしたと主張してないから、彼らが約束したプロパティを探す君のアプローチは的外れなんだ。<br>君が納得するまで理解したいなら、証明を読んで自分で解明してよ。俺はすでに納得するまで理解したし、俺が受け取った2桁の賛成票は、俺の説明が他の人にとっても納得できるものだったことを示唆してる。君は誰にとっても何も変えないようなちょっとした好奇心に答えるために、何日も何週間もの仕事が待ってるだろうね。楽しんで。" userName="ryao" createdAt="2025-03-25T15:24:57" color="#38d3d3">}}

{{<matomeQuote body="それ、マジ違うから。自分のメモリ領域じゃないところに書き込むのはメモリ破壊だよ。今回はkernelが引き起こしたメモリ破壊ってことになるね。これって超ヤバいことで、機能安全ってkernelが「空間的、時間的な干渉からの自由」を提供することに尽きるんだよね。つまり、各サブシステムが互いに隔離されてるってこと。どのprocessも他のprocessに書き込んだり、邪魔したりできない。kernelはシステム上の特別なprocessってわけ。そんなkernelがユーザー領域にランダムに書き込むなんて、機能安全にはマジありえない。信用ガタ落ちだわ。" userName="froh" createdAt="2025-03-24T17:45:52" color="#38d3d3">}}

{{<matomeQuote body="いやいや、バグの本質がちゃんと特定されてないんじゃない？kernelが書き込むべき出力レジスタに、不正だけど一応有効な値が書き込まれるってバグに見えるんだけど。それって単なる間違った出力で、メモリ破壊じゃないと思うんだよね。「メモリ破壊」って言うなら、どのメモリ安全性のルールがどう破られてるのか説明が必要だよ。それに、空間分離ってのは、あるdomainが他の隔離されたdomainに空間的な干渉を起こせないってことだよ。ユーザーdomainの内部メモリがkernelによって非同期的に破壊されたとしても、システムとしては安全だよ。使いにくいけどね。システムコール中にメモリ破壊が起きるなら、まだ使いようがあるかも。破壊範囲が限定的ならさらに使いやすい。そもそもメモリ破壊じゃなくて、ゴミみたいな値が出力されるだけなら、もっと使いやすい。どれもシステムの安全性には影響しないけど、使えるシステムを作るには直すべきバグだね。" userName="Veserv" createdAt="2025-03-24T18:51:36" color="#38d3d3">}}

{{<matomeQuote body="なるほどねー。用語の問題かな？俺の考えだと、kernelは絶対、いらない場所に書き込んじゃダメなのよ。たとえ理論上は可能だとしてもね。間違ったデータってのは別の話で、それはsafety criticalなバグかもしれないし、そうじゃないかもしれない。関数によっては、他のprocessから間違った値がkernel経由で来ることもあるしね。ユーザーprocessのバグで間違った場所に書き込むのも、今回話してることとは違うんだ。<br>俺が言ってる空間的自由の侵害ってのは、kernelが想定外の場所に書き込むことだよ。kernelが本来変更しないはずの場所やレジスタに書き込むのは空間的自由の侵害にあたると思うんだ。「お前のダンスエリア、俺のダンスエリア」みたいな侵害だよ。この考えは、モノリシックなFOSS Linux kernelでどうすれば空間的自由を達成できるかって議論から来てるんだ。マイクロkernelの方がモノリスより証明しやすいってこと。" userName="froh" createdAt="2025-03-24T21:14:23" color="#ff5c5c">}}

{{<matomeQuote body="それは微妙な問題だね。仕様に沿ったAPIが欲しいのは確かだけど、もし仕様に間違いがあったら？仕様の一部が間違ってても、他の部分が無効にならないようにするにはどうすればいい？例えば、空間的に安全なkernelがあったとして、「自分のprocess内のランダムなメモリをランダムな時間に破壊する」ってシステムコールを追加したら、そのkernelはまだ安全？その関数は呼び出し元のプログラムのルールを壊すだけで、隔離された正しいプログラムを悪意のあるプログラムに変えることはできない。誰もその関数を呼ばなければ？そんな関数は使い道がないだろうけど、悪意のあるプロセスが作った入力で、不適切なプログラムに問題を起こさせることはできるかもしれない。でも、正しいプログラムがAPIを正しく使えば、どんなプログラムが何をしたとしても影響を受けない。だから、このkernelは安全って言えると思う。ただ使いにくいけどね。重要なのは、隔離された正しいプログラムのメモリを破壊できるかどうか。もしそうなら、個々のプログラムが正しいことを証明できても安全とは言えない。システム全体が正しいことを証明する必要があるから、分析がすごく難しくなるんだ。それが最初に解決すべき問題だよ。" userName="Veserv" createdAt="2025-03-24T22:20:18" color="">}}

{{<matomeQuote body="PR見ると、今回のバグは仕様のミスで、実装は仕様通りだったみたいね。" userName="senderista" createdAt="2025-03-23T23:36:47" color="">}}

{{<matomeQuote body="その結果、Cコードにメモリ破壊の欠陥が発生したわけだけどね。仕様に合わせて橋を建てて、その橋が崩れた場合、仕様が間違ってたって言ったところで、橋が崩れた事実は変わらないよね？" userName="ryao" createdAt="2025-03-23T23:44:34" color="">}}

{{<matomeQuote body="この議論で変なのは、こういうバグが他のソフトウェアでも起こりうるってことだよ。実際、新しいリリースが出るたびにバグが増えるのが普通だし。でも、形式検証されたソフトウェアはバグがほぼないんだよね。確かに、証明が間違ってたって言うのは簡単だけど、今回の橋はもう直ったから、同じようには壊れないよ。<br>Cartelsや政府は、日常的にスマホをハッキングして、活動家をスパイしたり、殺したりしてる。今擁護してるやり方だと人が死ぬし、社会が不安定になる。SeL4はマジすごいから、信頼性を当たり前にするために投資すべきだよ。" userName="indolering" createdAt="2025-03-24T03:28:05" color="#785bff">}}

{{<matomeQuote body="まだまだだけど、processの分離は全てのセキュリティ保証の基礎だよ。" userName="indolering" createdAt="2025-03-24T07:00:52" color="">}}

{{<matomeQuote body="processの分離でSQL injectionをどう防ぐか説明してくれ。他のセキュリティ問題でもいいけど、SQL injectionは「processの分離が全てのセキュリティ保証の基礎」って考えを否定するのに最適だと思うよ。あたかもSeL4を使えば全て解決するみたいな言い方はやめてくれ。<br>SeL4を使うのは、建物の基礎を置く地面を平らにするようなもの。地面をミクロン単位で平らにしても、基礎や建物に問題がないとは限らない。<br>俺が細かいのかもしれないけど、SeL4について意見を言っただけで殺人の共犯者扱いされたから、これくらい言ってもいいよね？" userName="ryao" createdAt="2025-03-24T11:56:28" color="">}}

{{<matomeQuote body="組み込みシステムの話だから、SQLじゃなくて独自のデータ形式で通信してるんだよね。Web開発の話じゃないよ。SeL4はガチなリアルタイム組み込み向けで、形式手法を使ってる。これってセキュリティとか信頼性が重要なとこじゃ定番なんだよね。仕様を調整してシステムを直せるのは、proverが高品質なテストとして機能するってこと。重要なコードには形式手法も使うし、FMEAとかもやる。一つの方法に頼らず、システムがちゃんと動くか、仕様を満たしてるか、ヤバい状況でも頼れるかを評価するんだ。" userName="throwway120385" createdAt="2025-03-24T14:59:12" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="「プロセス分離は他のセキュリティ保証の基盤」ってのは、必要条件って意味だよ。十分条件じゃない。「プロセス分離でどうSQLインジェクションを防ぐの？」ってのは的外れ。だって、プロセス分離が十分条件だって言ってないじゃん。反論するなら、プロセス分離がないシステムで、SQLインジェクションを狙った悪意のある入力がデータベースに影響を与えない例を示す必要があるよ。" userName="Veserv" createdAt="2025-03-24T19:06:25" color="#45d325">}}

{{<matomeQuote body="「プロセス分離は他のセキュリティ保証の基盤」ってのは必要条件って意味で、十分条件じゃない。<br>ネットワーク接続されたマシンの攻撃対象領域は、プロセス分離じゃ影響ない。内部に侵入されて初めて役に立つ。だから基盤ってのは違うんじゃない？「プロセス分離でどうSQLインジェクションを防ぐの？」ってのは的外れ。SQLインジェクションとプロセス分離は全く関係ない。関係ないってのが言いたいこと。プロセス分離が他のセキュリティ保証の基盤なら、SQLインジェクション対策と何らかの関係があるはず。" userName="ryao" createdAt="2025-03-24T19:20:11" color="">}}

{{<matomeQuote body="「必要」と「十分」の違いを理解してないみたいだね。プロセス分離だけじゃSQLサーバはSQLインジェクションから守れない。でも、プロセス分離がないと攻撃者がSQLサーバのコードを直接書き換えてデータベースをめちゃくちゃにできる。プロセス分離はSQLサーバのセキュリティ設計を迂回されないために必要なんだ。城壁がいくら頑丈でも、砂の上に建てたら意味ないでしょ？" userName="Veserv" createdAt="2025-03-24T19:36:53" color="#ff33a1">}}

{{<matomeQuote body="え？セキュアな仕様への適合性が形式検証されてない、しかもコード量が桁違いに多いカーネルの方を信用するの？その根拠は？" userName="naasking" createdAt="2025-03-24T13:45:07" color="">}}

{{<matomeQuote body="攻撃対象領域がuserspaceにあるなら意味なくね？バグがあるかもしれない仕様に対してSeL4を形式検証しても、その上で動くuserspaceコードの保証にはならない。SeL4を使えば安全になるって考えなら、SeL4をLinuxのハイパーバイザーとして使うかもしれないけど、何も安全になってないよ。TCBが増えるから逆効果かも。SeL4を使うマシンのセキュリティは、その上で何が動くかに依存する。" userName="ryao" createdAt="2025-03-24T15:47:23" color="">}}

{{<matomeQuote body="＞but you would not have made anything more secure.<br>それおかしくない？検証されてないハイパーバイザーの方が、検証されたハイパーバイザーより安全だなんてどうして言えるの？検証されてないコードに潜むバグをどうやって定量化するの？" userName="naasking" createdAt="2025-03-24T16:54:54" color="#38d3d3">}}

{{<matomeQuote body="＞もし仕様通りに橋を建てて、その橋が崩壊したら、その仕様が間違っていたと言うことで、橋が崩壊したという現実が軽減されることはありますか？<br>色々な欠陥がないことを証明するテクニックへの信頼を失ったかのように言ってるけど、このバグは仕様にあったんだから、信頼を揺るがすようなことじゃないよ。" userName="naasking" createdAt="2025-03-24T13:43:04" color="#45d325">}}

{{<matomeQuote body="SeL4の証明が公開された時、みんなSeL4を完璧なソフトウェアだと思ってたし、仕様の問題が問題につながるってことはほとんど考慮されてなかった。仕様に問題があったことが明らかになった今、SeL4を問題がないとは言えない。だって、仕様に問題がないって証明はないし、作者が間違いを犯したって証拠があるんだから。仕様が悪かったって言うことで、この欠陥の影響を小さく見せるのは間違いだよ。業界がこれらの技術を高く評価してた理由を完全に誤解してる。" userName="ryao" createdAt="2025-03-24T16:17:46" color="">}}

{{<matomeQuote body="＞When seL4’s proof was published, people regarded seL4 to be flawless software<br>そんなことないよ。他のカーネルが達成できなかった、国家機密を守るためのセキュリティ認証よりもはるかに高い安全基準をクリアしたって言われてたんだ。それは今も変わらない。<br>＞the level of confidence the industry places in these techniques naturally needs to be adjusted<br>そんなことない。形式手法を使ってる人は、検証がもたらす信頼と必要な注意点をよく理解してる。Joe-know-nothing-about-verification-shmoeみたいな人の意見は重要じゃない。" userName="naasking" createdAt="2025-03-24T16:58:30" color="#ff5733">}}

{{<matomeQuote body="橋を架ける方法を学ぶまでに、たくさんの橋が崩壊したんだよね。seL4については、証明は最先端だけど、TCBのサイズとか他の要素も重要。一度失敗したからって諦めるべきじゃないし、目標は達成する価値があるよ。これは今のところ世界最高の技術だと思うよ。" userName="snvzz" createdAt="2025-03-24T00:40:06" color="#ff33a1">}}

{{<matomeQuote body="seL4が検証されてるのは、特定のバージョンとアーキテクチャだけだと思う。これらのビルドのCソースコードレベルではバグは見つかってないみたい。" userName="isubasinghe" createdAt="2025-03-23T22:40:57" color="">}}

{{<matomeQuote body="この問題はすべてのアーキテクチャに影響してたみたい。seL4が検証された仕様に問題があったんだよね。仕様どおりならバグはないって言えるけど、仕様が間違ってたなら、本当にバグはなかったって言えるのかな？" userName="ryao" createdAt="2025-03-23T23:41:24" color="">}}

{{<matomeQuote body="仕様は必ずあるけど、問題は「この問題が見つかったseL4のバージョンは、完全に仕様が定まってたかどうか」ってこと。ラボで働いてたけど、完全に仕様が定まったカーネルでのバグや問題は知らなかったから、これがカウントされるかどうかわからないんだよね。ソースコードと証明を確認する必要があるな。" userName="isubasinghe" createdAt="2025-03-24T01:04:45" color="#ff5733">}}

{{<matomeQuote body="seL4の開発者は長年資金難だったみたい。彼らの仕事の多くは、遠隔操作ドローンに関するDARPAの研究だった。アメリカ軍はハッキングされないドローンを欲しがってるんだよね。今の彼らの仕事は、LionsOSっていう、より普及を目指したものみたい。" userName="trissylegs" createdAt="2025-03-24T11:28:47" color="">}}

{{<matomeQuote body="高信頼性システムでは、形式手法はシステムに使われた多くの手法の一つだった。複雑さを軽減したり、動作やセキュリティポリシーを明確に規定したり、設計/コードがそれを満たしていることを証明したり、徹底的なテスト、リーク分析などが行われた。これを全部やるのは大変だから、主にカーネルに対してだけ行われていた。例えば、seL4でWebブラウザをホストしても、Webアプリケーションに問題があれば意味がない。IBOSとWAFをseL4上で動かして、すべて証明すれば解決できるかもだけど、もっと大変。ほとんどのプロジェクトはカーネルとかTLSスタックとかで終わっちゃうんだよね。Nizza Secure Systems Architectureっていう論文に例がたくさん載ってるよ。でも、それだけじゃ十分じゃないことが多いし、人気のあるアプリとも互換性がない。だから、ほとんどの人はLinuxとかBSDとかWindowsを強化してる。" userName="nickpsecurity" createdAt="2025-03-24T00:34:08" color="#ff33a1">}}

{{<matomeQuote body="＞IBOS and a WAF on seL4, all proven”<br>もしWeb application firewallのことを言ってるなら、証明するには複雑すぎるんじゃないかな？無限の入力があるのに、検査するにはコードが多すぎるように思えるけど。過去形でハイアシュランスについて話すのはなぜ？廃れてるってこと？" userName="mmooss" createdAt="2025-03-24T03:21:27" color="">}}

{{<matomeQuote body="証明できる可能性はあるけど、コストや複雑さのせいで難しいと考えられてる。だから、ほとんどのものは低～中程度の保証になるっていうのが、この分野のデフォルトの考え方。一部のコンポーネントだけが高保証になる。過去形なのは、イエス様が私の罪のために死んでよみがえったことを知って、高保証セキュリティの分野を離れたから。テクノロジーじゃなくて人間を中心に考える新しい人生を歩む必要があったんだ。最近またセキュリティに戻ろうか考えてる。多くの人が死んだり引退したり、他の分野に移ったりしたのも理由の一つ。高保証セキュリティの市場がないからね。ほとんどの人はお金をかけないし、トレードオフもしない。だから、ハッキングされることを前提に、セキュリティを強化したプラットフォームを使う方が時間の使い道としては良いと思ったんだ。" userName="nickpsecurity" createdAt="2025-03-24T16:02:49" color="#ff5733">}}

{{<matomeQuote body="大きな変化と勇気に賛辞を送ります。セキュリティは人々の役に立つことができるけど、誰のために働くかによるよね。" userName="mmooss" createdAt="2025-03-24T22:26:15" color="">}}

{{<matomeQuote body="ドキュメントは1月に更新されたみたい。ここ数年でいろいろあったみたいだね。seL4 foundationの設立とか、mixed criticality schedulingの成熟、seL4 summitの開催、複数の企業や国での実用化とか。" userName="snvzz" createdAt="2025-03-23T17:33:02" color="">}}

{{<matomeQuote body="マイクロカーネルのホストでゲストのモノリス動かすのめっちゃ好き。うちのサーバーは安全層としてseL4使ってて、renderfarmとかBEAMクラスターとかJenkinsのためにFreeBSDのVMをjailでバックアップしてるんだよね。DragonflyBSDのARM版が欲しいなー。スレッディングとインプロセスのカーネル（ハイブリッドカーネル設計）のためにね。128コアのAmpere AltraでOpenMoonRayをガンガン回すのが夢！" userName="HeavyRain266" createdAt="2025-03-23T20:26:39" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="seL4をどう使ってるか詳しく教えてよ。あと、それって商用サーバーなの？" userName="nickpsecurity" createdAt="2025-03-24T00:42:27" color="">}}

{{<matomeQuote body="そう、商用サーバーだよ。他のシステムや一部のゲーム機と同じで、マイクロカーネルをハイパーバイザーとして使って、FreeBSDみたいなゲストのモノリスがヤバくなった時にハードウェアを保護してるんだ。ゲストコンポーネントは、128コアx2、64コアx2、32コアx1のAmpereプロセッサ上のjailの中でソフトウェアとサービスを動かしてる。最初の2台はオフラインレンダリングとかErlang VMクラスターみたいな重い処理に使ってて、残りはVPSサーバーとか社内サービスに使ってる感じ。" userName="HeavyRain266" createdAt="2025-03-24T06:57:51" color="#ff5733">}}

{{<matomeQuote body="nickpを従業員として採用しないなんてありえないって思うよ。" userName="indolering" createdAt="2025-03-25T00:06:10" color="">}}

{{<matomeQuote body="マジか、雇いたいのは山々だけど、うちは小規模なスカンジナビアの企業で、そんな人の給料払えるほど儲かってないんだよね（月200～300万ISK）。" userName="HeavyRain266" createdAt="2025-03-25T07:35:36" color="">}}

{{<matomeQuote body="そのセットアップ、もっと詳しく記事にしたら面白そう。" userName="ximus" createdAt="2025-03-24T06:36:18" color="">}}

{{<matomeQuote body="マイクロカーネルの議論はもう意味ないかもね。特権サービスへの高速で安全なアクセスはハードウェアの緩和策しかないってことだよね。ソフトウェアだけじゃ限界があるし。Appleはカーネルとかドライバをチップレベルで保護する機能をSOCに追加してるし。OSは完璧じゃないけど、ソフトウェアだけで権限を管理するより効果的だと思うんだ。ハードウェアを活用すれば、カーネルのアーキテクチャって重要じゃなくなるんじゃないかな？" userName="russellbeattie" createdAt="2025-03-23T21:06:38" color="">}}

{{<matomeQuote body="＞Am I off base？<br>いや、そんなことないよ。OS研究にはまだまだやるべきことがたくさんあるよ。新しいハードウェアのためのソフトウェアインターフェースとAPIが必要だし。マイクロ/ハイブリッドシステムは構成しやすいから学ぶべき点が多いと思うな。Plan 9は9Pっていう単一のプロトコルを使ってシステム内の全てのオブジェクトをuserspaceに提供するハイブリッドシステムの良い例だよ。Linux/UnixやWindowsからPlan 9に戻ると、柔軟性のなさにがっかりするんだよね。" userName="MisterTea" createdAt="2025-03-24T16:04:06" color="#38d3d3">}}

{{<matomeQuote body="マイクロカーネルの有用性は、ハードウェア/ソフトウェアの協調設計とは別問題だよ。実際的なエンジニアリングの観点からすると、モノリシックカーネルの方が早くて簡単で、リソースも豊富だったんだよね。でも、SeL4があれば、プロセスが互いに隔離されていて、rootレベルのエクスプロイトがないって確信できるから、セキュリティコプロセッサはいらないはず。ハードウェアの欠陥もあるけどね。マイクロカーネルの利点は、小さくて形式検証がしやすいこと。SeL4のコンテキストスイッチはLinuxよりずっと速いから、パフォーマンスへの影響は少ないはずだよ。" userName="indolering" createdAt="2025-03-25T00:57:57" color="#785bff">}}

{{<matomeQuote body="＞It's like the difference between a 80286 and a 80386: The latter added the hardware support for true multitasking that the former lacked.<br>それって良い比較じゃないかも。286はプロテクトモードでtrue multitaskingをサポートしてたし。386が追加したのは、仮想8086モードで、既存のリアルモードのDOSアプリケーションをmultitaskできたことだよ。" userName="Narishma" createdAt="2025-03-25T02:51:55" color="">}}

{{<matomeQuote body="返信遅れてごめんね。その通り！8086と80286を例にすべきだったね。386は仮想メモリとかを追加したんだ。ありがとう。" userName="russellbeattie" createdAt="2025-03-30T01:02:26" color="">}}

{{<matomeQuote body="それって違う気がするな。強力なハードウェア保護があっても、LinuxのTCBがマイクロカーネルと比較できるわけないじゃん。ハードウェアの本質は効率を上げることだよ。マイクロカーネルはMMUみたいなハードウェアをうまく活用してるから堅牢なんだよね。マイクロカーネルの小さなTCBは信頼性があるし。ハードウェアでどれだけ”ズル”できるかってことだけど、マイクロカーネルの方が保護をうまく活用してると思うよ。exokernelとか見るとわかるよ。" userName="vacuity" createdAt="2025-03-23T22:54:33" color="#785bff">}}

{{<matomeQuote body="地元のOWASPチャプターでSeL4についてプレゼンしたことがあるんだ。探してみるよ。SeL4は本当に素晴らしいものだけど、特に汎用コンピューティングではLinuxの代替としては躊躇するな。RedoxOSは最近勢いがあるみたいで、Rustで書かれたマイクロカーネルを使ってるよ。" userName="TheAmazingRace" createdAt="2025-03-23T18:40:38" color="">}}

{{<matomeQuote body="問題は常に”どれくらいの代替を考えているか？”だよね。RedoxはPOSIXとの連携に力を入れているみたいで、それが設計に影響を与えてる。技術的な能力と成功は別問題だしね。Redoxが成功すれば素晴らしい一歩だよ。SeL4はさらに極端で、技術的な利点は素晴らしいけど、Next Big Thingになるために必要なものを持っていないと思うな。マイクロカーネルは成功すると思うけどね。" userName="vacuity" createdAt="2025-03-23T18:55:29" color="#ff5c5c">}}

{{<matomeQuote body="Linuxの代替って考えるとちょっと躊躇するかもね。<br>シナリオ次第だよ。もちろんLinuxの方が扱いやすいけど、seL4じゃないと満たせない要件もあるし。<br>seL4を実際に使えるようにするには、その上に色々乗っけないといけないんだよね。幸い、オープンソースの活動も活発になってきて、数年前よりはずっとマシになってるよ。<br>静的なシナリオなら、LionsOS[0]が結構使えるよ。<br>動的なシナリオなら、Provably Secure, General-Purpose Operating System[1]ってのがあるけど、まだ初期段階かな。<br>どちらもseL4のウェブサイトにリンクされてるtrustworthy systemsのProjects page[2]にあるよ。<br>0. https://trustworthy.systems/projects/LionsOS/<br>1. https://trustworthy.systems/projects/smos/<br>2. https://trustworthy.systems/projects/" userName="snvzz" createdAt="2025-03-24T00:51:05" color="">}}

{{<matomeQuote body="リンクどうもありがとう。いつかマイクロカーネルが汎用コンピューティングでブレイクスルーしてほしいな。" userName="TheAmazingRace" createdAt="2025-03-24T05:58:37" color="#785bff">}}

{{<matomeQuote body="このカーネルの上に乗っかるOSも、セキュリティを保証するためには形式検証が必要なの？" userName="hackpelican" createdAt="2025-03-23T14:47:48" color="">}}

{{<matomeQuote body="カーネルが提供する保証は、特権のないプロセスによって覆されることはないよ。<br>もちろん、カーネルだけじゃほとんど役に立たないから、カーネル上で動くドライバとかファイルシステムサーバーとか、他のサービスの設計も重要になってくる。<br>Linuxを含む他のほとんどのシステムは根本的な欠陥があるけど、seL4はセキュアで信頼性の高いシステムを構築できるんだ。" userName="snvzz" createdAt="2025-03-23T15:12:53" color="#38d3d3">}}

{{<matomeQuote body="ハードウェアもセキュアなシステムを構築できる必要があるよね。<br>今はまだそういう選択肢がない気がする。" userName="marcosdumay" createdAt="2025-03-23T15:34:12" color="">}}

{{<matomeQuote body="タイミングサイドチャネルがその例だね。<br>seL4内の取り組み[0]から始まった、これを解決するためのRISC-Vでの作業[1]が進行中だよ。<br>0. https://sel4.systems//Foundation/Summit/2022/slides/d1_11_fe...<br>1. https://lf-riscv.atlassian.net/browse/RVS-3569" userName="snvzz" createdAt="2025-03-23T16:51:33" color="#38d3d3">}}

{{<matomeQuote body="違うよ。カーネルが分離を保証してくれるから、カーネルとかプロセスを信頼する必要がないのが利点なんだ。<br>Linuxカーネルを、セキュリティの高いプロセスの隣で動かしても、分離が保証されるんだよ（許可されたIPCは除く）。" userName="rubenbe" createdAt="2025-03-23T15:19:46" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="違うね。<br>でも制限はあるよ。DMAオフとか、形式検証済みのドライバだけとか。<br>se4Lのマルチコアカーネルはまだ検証されてないってことも重要だよ。" userName="nabla9" createdAt="2025-03-23T15:40:32" color="#ff5733">}}

{{<matomeQuote body="IOMMUはドライバの問題をかなり解決してくれるよ。ちゃんと初期化されたドライバが誤動作してシステムを危険に晒すのを防いでくれる。" userName="snvzz" createdAt="2025-03-23T16:53:50" color="#38d3d3">}}

{{<matomeQuote body="MMUみたいに成熟してセキュアなIOMMUが欲しいな。今は、ドライバの検証/制限/生成に関する様々な取り組みの方が優れてると思うけど、プロプライエタリなドライバには特に弱いよね。" userName="vacuity" createdAt="2025-03-23T17:44:33" color="">}}

{{<matomeQuote body="魔法みたいなIOMMUが欲しいなー。MMUみたいに成熟してて安全なやつ。<br>別にIOMMUは魔法じゃないし、最近発明されたわけでもないよ。ドライバーとハードウェアが物理メモリじゃなくて仮想メモリでやり取りするから、バグでDMAが他のメモリをめちゃくちゃにする心配がないんだよね。<br>ただ、supervisor modeでドライバー動かしてるシステムは、IOMMUをフル活用できてないんだよね。" userName="snvzz" createdAt="2025-03-23T18:06:59" color="">}}

{{<matomeQuote body="IOMMUって、コンピュータのセキュリティでがっちり確立された存在になるには、まだ現実的なハードルがあると思うんだよねー。（知識は浅いけど）もちろん原則は悪くない。ただ、もっと頑丈にするためのパフォーマンスコストを払いたくないだけかも。でもパフォーマンスの話はいつも揉めるよね。" userName="vacuity" createdAt="2025-03-23T18:16:22" color="">}}

{{<matomeQuote body="一番のネックはコストと複雑さだよね。技術自体はしっかりしてるし、パフォーマンスの問題もそんなにないと思う。" userName="surajrmal" createdAt="2025-03-23T23:33:49" color="">}}

{{<matomeQuote body="Plessy 250みたいなcapability-based addressingが欲しい！<br>https://en.wikipedia.org/wiki/Plessey_System_250" userName="FuriouslyAdrift" createdAt="2025-03-24T12:42:49" color="">}}

{{<matomeQuote body="そりゃ絶対的な意味ではそうかもね。でも実際的なレベルだと、論文の7.2節にちょっと答えがあるよ。" userName="Koshkin" createdAt="2025-03-23T15:07:46" color="">}}

{{<matomeQuote body="Drew DeVaultのHelios Microkernelもチェックしてみるといいかも。SeL4がベースになってるんだ。<br>https://ares-os.org/docs/helios/" userName="alphazard" createdAt="2025-03-23T19:17:34" color="#38d3d3">}}

{{<matomeQuote body="HeliosはSeL4を”ベースにしてる”って言うよりは、”影響を受けてる”って言う方が適切だと思うな。" userName="kevinherron" createdAt="2025-03-23T19:39:09" color="">}}

{{<matomeQuote body="https://en.wikipedia.org/wiki/L4_microkernel_family<br>には、いろんなところで使われてるって書いてあるよ。主にembedded contextsだけど。<br>＞OKL4の出荷数は2012年初頭に15億を超え、主にQualcommのワイヤレスモデムチップに搭載されている。<br>＞他の展開としては、自動車のインフォテインメントシステムなどがある。<br>＞Apple A series processors beginning with the A7 contain a Secure Enclave coprocessor running an L4 operating system called sepOS (Secure Enclave Processor OS) based on the L4-embedded kernel developed at NICTA in 2006.<br>＞As a result, L4 ships on all modern Apple devices including Macs with Apple silicon。<br>だから、L4は今のApple製品全部に入ってるんだ。" userName="yjftsjthsd-h" createdAt="2025-03-23T16:32:41" color="#ff5733">}}

{{<matomeQuote body="なんか話が噛み合ってない気がするなー。片方はUNIXみたいなタイムシェアリングシステムの話をしてて、もう片方はOSがなくてもいいようなembedded applicationsの話をしてる。L4がそっちで使われてるのは別に驚くことじゃないし、最初の人の発言とは関係ないと思う。リンゴがないって話してる人に、オレンジがあるって答えてるみたいなもんだよ。" userName="ryao" createdAt="2025-03-23T17:12:13" color="#45d325">}}

{{<matomeQuote body="えー、予想以上だったわ。組み込みの世界で使い道があるなら、まあいいけどさ。でも、マイクロカーネルって、当初の売り文句と違うよね。「Linuxは間違ってる、俺たちが正しい」みたいなノリだったじゃん。汎用OSの代替を目指してたのに、全然そうなってないし。" userName="hannob" createdAt="2025-03-23T19:58:17" color="">}}

{{<matomeQuote body="OSF／1が、マイクロカーネルが汎用OSに使われた一番近い例かな。https://en.wikipedia.org/wiki/OSF/1　現存するのはAIXだけ。一部コードはXNUカーネルにあるけど、あれはモノリシックカーネルだよね。Appleがパフォーマンスのためにモノリシックにしたんだって。ただ、この記事だとAIXもマイクロカーネル使ってないみたいだけどね。https://tedium.co/2019/02/28/ibm-workplace-os-taligent-histo..." userName="ryao" createdAt="2025-03-23T21:11:42" color="">}}

{{<matomeQuote body="＞現存するのはAIXだけ。　<br>それは違うよ。AIXって、昔は単一のコードベースじゃなくて、IBMのUNIX製品群のブランド名だったんだよね（DB2もそう）。その一つが、IBMメインフレーム向けのAIX/ESAで、OSF/1マイクロカーネルベースだった。でもAIX/ESAは90年代初頭に終了。代わりにMVS（OS/390）がUNIX認証を取得して、z/OS、z/Linuxへと引き継がれた。現在残ってるAIXは、RS/6000系で、OSF/1ベースじゃなくて、昔ながらのモノリシックカーネルだよ。RT PC向けのAIX version 1はマイクロカーネル(VRM)を使ってたけど、MachやOSF/1とは全然違ってた（PL/I方言のPL.8で書かれてたから）。" userName="skissane" createdAt="2025-03-24T01:47:05" color="#785bff">}}

{{<matomeQuote body="それに、AIXは共有ライブラリの扱いがWindowsみたいで、POSIXの世界から来た人は混乱するかも。" userName="pjmlp" createdAt="2025-03-24T14:17:25" color="">}}

{{<matomeQuote body="COFFをELFの代わりに使ってる（今はXCOFF）。https://www.ibm.com/docs/en/aix/7.3?topic=formats-xcoff-obje...　依存関係ファイル（AIXではエクスポートファイル）を持ってたり。https://learn.microsoft.com/en-us/troubleshoot/windows-clien... https://www.ibm.com/docs/en/xl-c-aix/13.1.3?topic=library-co... https://download.boulder.ibm.com/ibmdl/pub/software/dw/aix/e...　VC++みたいに、シンボルが最初に使われる時にライブラリを遅延ロードしたり（コンパイラがやる）。https://learn.microsoft.com/en-us/cpp/build/reference/linker... https://www.ibm.com/docs/en/aix/7.3?topic=memory-shared-libr...　2000年代にAIX 5で遊んでたよ。" userName="pjmlp" createdAt="2025-03-25T07:15:23" color="#38d3d3">}}

{{<matomeQuote body="OSF/1のリンク先にはMach 2.5のことがたくさん書いてあるけど、あれはUNIX部分がカーネルメモリ空間にある必要があったから、モノリシックカーネルだったよね。NeXTSTEPも同じで、今のmacOSのベースになってる。OSF/1はMach 3.0に移行したみたいだけど、Digital Unix / Tru64が移行したかは知らないな。AIXは、RTで1990年頃、POWERベースのRS/6000マシンで90年代に使ってたけど、モノリシックカーネルだったよ。リンク先にも、MachベースのWorkplace OSが失敗したって書いてあるし。<br>＞IBMの内部議論はAIXに集中。結局、1993年のComdexで、IBMの会長がマイクロカーネルはAIXの代替にならないって発表。AIXのユーザーはマイクロカーネルによるパフォーマンス低下を受け入れないだろうと考えたんだ。IBMは、マイクロカーネルがHPやSunの高性能UNIXシステムに対する競争上の障壁になることも懸念した。代わりに、AIXの顧客には、希望すれば後でWorkplace OSに移行できると伝えた。" userName="lizknope" createdAt="2025-03-24T11:10:23" color="#ff5c5c">}}

{{<matomeQuote body="OSF/1 1.3はMach 3.0に移行したよ。" userName="ryao" createdAt="2025-03-24T11:35:00" color="">}}

{{<matomeQuote body="そうだね。OSF/1がDEC以外に使われていたなんて知らなかったよ。DECは自社ブランドをDigital Unix、そしてTru64 Unixにリブランドしたんだ。<br>wikipediaのページにはIntel Paragonスーパーコンピュータへのリンクがあるけど、そこにはOSF/1とMach 3.0マイクロカーネルが使われているって書いてあるね。https://archive.org/details/bitsavers_intelsupergonXPSXPEBro..." userName="lizknope" createdAt="2025-03-25T14:26:36" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
