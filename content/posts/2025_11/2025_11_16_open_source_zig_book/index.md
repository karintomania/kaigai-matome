+++
date = '2025-11-16T00:00:00'
months = '2025/11'
draft = false
title = 'Zigのオープンソース本にAI生成疑惑が！'
tags = ["Zig", "プログラミング", "AI", "オープンソース", "学習"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> Zigのオープンソース本にAI生成疑惑が！

引用元：[https://news.ycombinator.com/item?id=45947810](https://news.ycombinator.com/item?id=45947810)




{{<matomeQuote body="この本はAI生成っぽいって報告したんだけど、作者のGitHub履歴やZigの言語機能（ラベル付きブロック - https://zig.guide/language-basics/labelled-blocks/）の理解ミス（https://github.com/zigbook/zigbook/issues/4）を見ると、たぶんそうなんだ。作者が正直じゃなかったのは残念。メンテナンスやハルシネーションが心配だし、時間を使う価値があるのか疑問だよ。" userName="rudedogg" createdAt="2025/11/17 10:42:54" color="#ff33a1">}}




{{<matomeQuote body="「AIだからダメ」っていう最近HNで流行ってる考え方はやめたいね。1. AI生成の証拠はないよ。作者は否定してるし、指摘された件についても苦戦してる理由を説明してる。2. たとえAI生成でも価値がないわけじゃない。LLMは知識をまとめるのが得意だから、教材作りには役立つはず。3. メンテされなくても、今すぐ価値があれば共有する価値はある。4. ハルシネーションがあっても、その程度次第だよね。人間が書いた本でも間違いはあるし。GitHub履歴が怪しくても、それは開発方針かもしれないし。LLMが関わったかもってだけで急いで批判するのは、論理的じゃないし、Zigを学びたい人にとって役に立たないよ。" userName="PaulRobinson" createdAt="2025/11/17 11:25:21" color="#ff5c5c">}}




{{<matomeQuote body="「AI生成の証拠はない」って言うけど、実はあるんだよ。Pangramの導入部分をコピペしたら、100%AI生成って判定されるはずだよ。" userName="toinewx" createdAt="2025/11/17 11:38:23" color="#45d325">}}




{{<matomeQuote body="マジかよ。こんなゴミが今、HNのトップページで1位になってるなんて信じられない。たとえ完全に正当なものでも、ランディングページのデザインとか、「Learning Zig is not just about adding a language to your resume. It is about fundamentally changing how you think about software.”みたいな見出しとか、もうそれだけで失格だろ。" userName="bool3max" createdAt="2025/11/17 11:35:43" color="">}}




{{<matomeQuote body="ハルシネーション？たくさんあるよ。コード例は手作業で修正されてると思ったから、「Caveats, alternatives, edge cases」のセクションをいくつか見たんだ。そこには、存在しない機能（std.mem.terminated）、非公開の機能（argvToScriptCommandLineWindows）、削除された機能（std.BoundedArray）を提案するなど、LLMがよくやる間違いがいっぱいあったよ。関連性のないstdlibやコンパイラの実装詳細も出てきた。" userName="cryptocod3" createdAt="2025/11/17 11:10:33" color="#ff5733">}}




{{<matomeQuote body="それは証拠とは言えないな。作者が反論したら、査読に耐えられるような証拠じゃないよ。" userName="PaulRobinson" createdAt="2025/11/17 11:41:09" color="">}}




{{<matomeQuote body="ほんとに？https://www.zigbook.net/chapters/00__zigbook_introduction には「The Zigbook intentionally contains no AI-generated content—it is hand-written, carefully curated, and continuously updated to reflect the latest language features and best practices.」って書いてあるけど。作者が嘘ついてる可能性もあるけど、なんでAIを使ってるのに「AI生成じゃない」ってわざわざ言うんだろうね？" userName="Wowfunhappy" createdAt="2025/11/17 11:06:46" color="#38d3d3">}}




{{<matomeQuote body="LLMが関わってるってデータが増えてきたけど、それが問題じゃないかもしれないね。人間が作ったものにも間違いはあるし、このリソースも修正すれば、これまでのどんなものよりも価値があるかも。AIを人間の代替じゃなくて、補助ツールとして使えばすごく役立つはずだよ。「Deidreをロボットに置き換えるんじゃなくて、彼女にもっと良いツールをあげるんだ」って同僚が言ってたな。これは編集が必要だけど、価値を見出そうとすればまだ使えるはず。捨てちゃうより、直して使いたいね。作者はもっと正直になるべきだったけど、もうあるんだからどうするか？って話だよ。" userName="PaulRobinson" createdAt="2025/11/17 11:38:54" color="#ff5733">}}




{{<matomeQuote body="あのGitHubでのやり取り、面白くて変だね。明らかに人が相手じゃないのが話してるよ。" userName="ecshafer" createdAt="2025/11/17 13:51:33" color="#45d325">}}




{{<matomeQuote body="君が言及してたプロジェクトのイシューを見てみたけど、あのやり取りにはZigのラベル付きブロックなんて一切言及されてないよ。誤解も混乱も全くないね。" userName="CraftingLinks" createdAt="2025/11/17 12:02:30" color="#45d325">}}




{{<matomeQuote body="1、2週間前にこれを見た時、すごくAI生成っぽかったのを覚えてるよ。（Zig知らない人のために言うと、AIはZigコードを作るのが下手なんだ。データが少ないし、モデルより言語の更新が速いからね。）今日読んでみたら問題を見つけるのが難しかった。著者は幻覚を直したり不正確な部分を修正するのにかなり頑張ったんじゃないかな。" userName="MatthiasPortzel" createdAt="2025/11/17 14:07:14" color="#38d3d3">}}




{{<matomeQuote body="あーあ、消えちゃった！" userName="aleksi" createdAt="2025/11/18 06:00:28" color="">}}




{{<matomeQuote body="https://github.com/zigbook/zigbook/issues/4でのやり取りのこと？もしそうなら、君のボット探知機は僕より優秀だね。最初はプロジェクトオーナーが問題を理解してなかったみたいだけど、最後には分かったみたいだ。僕には普通のやり取りに見えるんだけど、この新しい時代じゃ僕は定期的に騙される運命なのかな。本の中のテキストも変だけど、人柱になってこの本からZigを学んでどこまでいけるか試してみるよ。" userName="nabbed" createdAt="2025/11/17 22:53:32" color="#38d3d3">}}




{{<matomeQuote body="そのイシューは削除されてるね。それに、著者は他のイシューにも、コアなZig学習リソースのミッションにそぐわないラベルを付けてるよ。<br>https://github.com/zigbook/zigbook/issues/25<br>例えば”AI ALLEGATION”とか”RE**ED COMPLAINT”だね。" userName="metalliqaz" createdAt="2025/11/18 17:19:09" color="#ff5c5c">}}




{{<matomeQuote body="やり取り、完全にロボットみたいに感じるよ。今はもう削除されてるみたいだけどね。でも、バグ報告に対してそれが何システムでテストされたかを答える最初の返信は変だしロボットっぽい。それに、”人”に下にスクロールするように言わないといけないスクリーンショットの件も、すごくAIっぽいね。" userName="ecshafer" createdAt="2025/11/18 01:40:09" color="#ff33a1">}}




{{<matomeQuote body="これがほとんどAI生成だって気づく前に、Redditにも投稿しちゃったよ。" userName="ayoisaiah" createdAt="2025/11/17 12:56:04" color="">}}




{{<matomeQuote body="’zigbook’は他にも’zigglang’とか’zig-vm’みたいなアカウントをソックパペットとして使ってるみたいだね。" userName="metalliqaz" createdAt="2025/11/18 17:26:31" color="#45d325">}}




{{<matomeQuote body="「Zigbookは意図的にAI生成コンテンツを含んでいません。手書きで、慎重にキュレーションされ、最新の言語機能とベストプラクティスを反映するために継続的に更新されています。」って、readmeに書いてあったよ。" userName="kordlessagain" createdAt="2025/11/18 15:36:14" color="#38d3d3">}}




{{<matomeQuote body="うん、これはすぐに全てのデタラメ警告アラームを鳴らすべきだね。" userName="spacechild1" createdAt="2025/11/17 11:58:37" color="">}}




{{<matomeQuote body="でもさ、たとえAI生成でメンテされなかったりエラーがあっても、それがHNで“フラグ”されるほどのことかなあ。" userName="insane_dreamer" createdAt="2025/11/17 18:38:22" color="">}}




{{<matomeQuote body="AIって上っ面だけのシグナルを作るのが本当に得意だよね。で、ほとんどの人は上っ面のシグナルだけで物事を判断しちゃうんだ。" userName="qouteall" createdAt="2025/11/17 12:28:30" color="#785bff">}}




{{<matomeQuote body="実は数日前にこのリソースを見つけて、今週Zigを早く習得するためにやろうとしてたんだ。HNにこれが出てきてくれて嬉しいよ、AIのハルシネーションで道を踏み外さずに済んだもん。" userName="nsagent" createdAt="2025/11/17 12:39:43" color="#ff5c5c">}}




{{<matomeQuote body="AI生成だってコメントしたら、すぐに低評価されて、私が間違ってるって説明するコメントがいっぱい来たよ。“AI生成の認識が明らかに間違ってる”ってね。素晴らしいリソースだって言うコメントの下に私のコメントが押しやられたんだ。すごく変だった。https://news.ycombinator.com/item?id=45948608" userName="johnfn" createdAt="2025/11/18 00:03:08" color="#ff5c5c">}}




{{<matomeQuote body="“本当に確信してる？”って？<br>作者や経緯には疑わしい点がありすぎるんだ。動機は不明だけど、AI生成の可能性は高いね。Zigのソースコードを大量に使い、LLMに関連コンテキストを供給するパイプライン、もしくはCodexとかを使ってソースを読ませたのかも。作るにはかなりの労力が必要だったろうし、それ自体は興味深い。どう作られたか（LLMかどうかに関わらず）分かればもっと信用できるんだけどね。あと、作者によるこのissueも疑わしい情報源だよ: https://github.com/microsoft/vscode/issues/272725<br>編集: https://news.ycombinator.com/item?id=45952581 で具体的な問題が見つかった。" userName="rudedogg" createdAt="2025/11/17 11:24:04" color="#ff33a1">}}




{{<matomeQuote body="だって、最近のAIコンテンツって最低でも物議を醸すからね。それに、もし著作者について嘘をつくことに抵抗がないなら、もう少し嘘を盛ることにも抵抗ないだろうし。" userName="UpsideDownRide" createdAt="2025/11/17 11:14:19" color="#45d325">}}




{{<matomeQuote body="検索履歴を確認したら、別のウェブサイトのことだったよ（Zig toolbox、意図的にリンクは貼らないけど、あれは純粋なAIのカスだからね）。" userName="MatthiasPortzel" createdAt="2025/11/18 00:07:00" color="">}}




{{<matomeQuote body="多くの人がクリックすらしてないと思うよ。無料のZig教材って見て、すぐに高評価するんだ。" userName="frakt0x90" createdAt="2025/11/17 14:49:09" color="#38d3d3">}}




{{<matomeQuote body="Zigのラベル付きブロックのフォーマットバグなんだけど、それに対してコードのスクリーンショットが送られてきて、（要約すると）“問題ない、そっちの問題だ”って返事だったんだ。<br>ラベルとブロックが改行で分かれてるやり取りの最初のスクリーンショットを見てみて。適切なフォーマットについてはこれが参考になるかも: https://zig.guide/language-basics/labelled-blocks/" userName="jasonjmcghee" createdAt="2025/11/17 14:37:53" color="#ff5c5c">}}




{{<matomeQuote body="HNのトップって、いつからそんなにすごくなったの？いつも流行りの話題と、気の利いたコメントをした人が、フェイクなネットポイントをもらってるだけじゃん。<br>って感じだね。" userName="nurettin" createdAt="2025/11/17 19:51:03" color="">}}




{{<matomeQuote body="「そんなこと、起こってないし。<br>もし起こったとしても、たいしたことないし。<br>もしそうでも、それが何か？<br>もしそうだったとしても、俺のせいじゃないし。<br>もし俺のせいでも、そんなつもりじゃなかったし。<br>もしそうだったとしても、お前が悪いんだろ。」<br>って感じ？" userName="xeonmc" createdAt="2025/11/17 12:17:22" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「Zigを学ぶと、ソフトウェアの考え方が根本的に変わる」って言うけどさ、正直Zigって、モダンな標準ライブラリとちょっと違う構文のCに見えるんだよね。OCamlとかみたいに、システムエンジニアにとってそこまで画期的なパラダイムじゃない気がするな。こういう誇張表現は、技術的な説明が欲しい人を遠ざけるだけだよ。" userName="poly2it" createdAt="2025/11/17 06:14:20" color="">}}




{{<matomeQuote body="「太陽の下に新しいものはない」って言うけど、RustはC++、ZigはCの良いリライト版って感じかな。RustはモダンC++の所有権を型システムに組み込んだもので、それだけでも学ぶ価値あり。ZigはモダンCの開発を新しい言語で実現し、RustやC++のアロケータ問題も解決してる。comptimeとか、たくさんの便利な機能もあって、自分が何者か、誰向けかを知ってる良い言語だよ。" userName="obviouslynotme" createdAt="2025/11/17 06:57:35" color="#38d3d3">}}




{{<matomeQuote body="いやいや、Rustの借用セマンティクスはマジで新しいし、ソフトウェアの考え方をガラッと変えるくらい重要なパラダイムシフトだよ。Zigもいいけど、そこまでじゃないでしょ。" userName="simonask" createdAt="2025/11/17 08:09:09" color="#38d3d3">}}




{{<matomeQuote body="Rustの構文って、正直「美しい」って言うのは無理があると思うな。最初はいいけど、複雑なことしだすとすぐごちゃごちゃになるし。ZigはCの構文の欠点をうまく改善してるし、RustがCを安全にするって話は、むしろZigに当てはまる気がするよ。Rust信者が熱心なのは、本当に信じてるってのもあるけど、余計なものなしでRustの強みを解決する言語が出てきたら、カーネルとかへの組み込みチャンスを失うって知ってるからじゃないかな。一度入っちゃえば、その後の10年は安定した仕事になるしね。" userName="rjzzleep" createdAt="2025/11/17 08:21:15" color="">}}




{{<matomeQuote body="「Rustの強みを余計なものなしで解決する他の言語」って言うけどさ、Zigがいくら好きでも、Rustが解決しようとしてる問題は全然解決してないよ。Rustの代わりにはならないし、Rustが得意な分野には全く向いてないね。" userName="kibwen" createdAt="2025/11/17 09:12:48" color="#ff5733">}}




{{<matomeQuote body="「Rustが得意な分野にZigは向いてない」ってのは、かなり言い過ぎじゃない？Zigはシステムプログラミングとか低レベルな処理、ネットワークサービス、データベース（Tigerbeetleみたいなの）向けにちゃんと設計されてるんだからさ。Rustみたいに完全なメモリ安全ではないけど、かなりメモリ安全なプログラムを簡単に作れる仕組みは揃ってるよ。" userName="sgt" createdAt="2025/11/17 09:20:37" color="#ff5c5c">}}




{{<matomeQuote body="「メモリ安全なプログラムを簡単に作れる」って言うけど、RustのやってることとZigのやってないことの決定的な違いはそこだね。Rustには`unsafe`っていう、例外的な低レベル操作のための仕組みもあるけどさ、ほとんどの場合「正しくできる」ってことより、「絶対に起こりえない」って保証できることの方が、ずっと価値があるんだよ。" userName="JuniperMesos" createdAt="2025/11/17 09:53:07" color="#45d325">}}




{{<matomeQuote body="実際に「ソフトウェアの考え方を根本的に変える」ような言語を学びたいなら、Lisp系の言語とかAPL系の言語を試してみるといいよ。" userName="userbinator" createdAt="2025/11/17 06:17:38" color="">}}




{{<matomeQuote body="Zigは空間的なメモリ安全性が高くて、ほとんどの危険な脆弱性クラスのトップにある問題を防げるんだ。Rustのunsafeコード書くのって、維持しなきゃいけないプロパティとか不変条件がいっぱいあるから、Zigの正しいコード書くよりはるかに難しいと思う。だから大きな欠点もあるし、ちょっと安全性をオフにするだけのスイッチじゃないんだよ。<br>「何かが起こらないことを保証できる」のは、たいていの場合「正しく何かをやるのを簡単にする」より価値があるっていうけど、それも他の条件が同じならの話だよね。" userName="dns_snek" createdAt="2025/11/17 10:43:15" color="#45d325">}}




{{<matomeQuote body="Zigを「Cの書き直し」って言うのは、PythonをFortranの書き直しって言うのと同じくらい的外れだよ。ZigはCと似ててシンプルで明示的だけど、その核には「comptime」っていう汎用で柔軟な部分評価エンジンとリフレクション機能っていう、今まで見たことないくらい洗練された（そして斬新な）プログラミングの仕組みがあるんだ。だからCとの類似点は表面的なものだね。結局、ZigはC++と同じくらい表現力豊かだよ。<br>「一番重要なのは、RustとC++の最大の過ちである、allocatorをコンテナや関数に渡さないことを回避している点だ」って言うけど、それってC++とRustが犯したもっと大きな過ちの症状だと思うんだ。それは、低レベルも高レベルも両方得意な言語を作るべきだっていう（多分80年代には妥当だったかもしれない）考え方で、その結果、両方の目標を失望させるような妥協が生まれたんだよ。" userName="pron" createdAt="2025/11/17 12:06:57" color="#ff33a1">}}




{{<matomeQuote body="Elixirはここに入れる必要ないよ。ソフトウェアに対する考え方を変えるような重要な部分は何もElixirから来てないんだ。単なるErlangの皮（＋いくつか標準ライブラリのラッパー）でしかないんだから。" userName="59nadir" createdAt="2025/11/17 11:08:49" color="">}}




{{<matomeQuote body="そうだね、でもRustコミュニティには、Rustと同じレベルでメモリ安全じゃないソフトウェアを書くのはもう無責任だって考え方があるんだ。だからZigはそれに合わないかもしれないけど、それだとC++だって本番用のソフトウェアには不向きってことになるよね。でもC++は明らかに今でも使われてる。俺はZigがどんどん人気になって（完璧じゃないけど、もっと良いメモリ安全性を備えて）、ミッションクリティカルなインフラに使われるようになると思うよ。" userName="sgt" createdAt="2025/11/17 09:58:05" color="">}}




{{<matomeQuote body="Rustより前から、ライフタイムとか借用の仕組みを持ってる言語はあったんだよ。Rustはそれらの仕組みをうまくまとめただけ。Zigもcomptimeとか、簡単なクロスコンパイル、stdlibみたいに、C言語のいいところをたくさんうまく取り入れてるよね。" userName="hu3" createdAt="2025/11/17 09:06:12" color="#ff5733">}}




{{<matomeQuote body="俺の理解だと（まだZigは使ってないけど）、comptimeって、ある程度複雑なケースになると、ライブラリコードが実際にクライアントに使われる前にちゃんとテストされないと、インスタンス化が失敗する可能性があるんだって。Javaのジェネリクスみたいな厳密な「コンパイル時」機能とは違うんだよね。そんな機能は「新しいX」って言われる言語には欲しくないな。実験的な言語ならいいけど、RustとかZigとか、主流を改善しようとする言語にはね。" userName="keybored" createdAt="2025/11/17 23:01:34" color="#ff5733">}}




{{<matomeQuote body="俺に言わせれば、Zigがこんなに長く開発にかかってるってことは、「Cの書き直し」なんかじゃないってことだよ。はっきり言うと、俺はZigが大好きだけど、Cもまた、機能が多くなくて、その機能も凝りすぎてないから、理解するのも実装するのも比較的簡単な言語なんだ。Zigは学ぶのはかなり簡単な言語だけど、comptimeの存在が実装の難易度をかなり上げてるんだよ。本当のCの後継はOdinみたいな言語かもしれないね。俺はZigほどOdinに詳しいわけじゃないけど、Zigの6か月後に始まったのに、言語自体は構想通りほぼ完全に実装されてて、今はコンパイラの洗練とか標準ライブラリ、ツール、パッケージのエコシステム構築にほとんどの労力を費やしてるって印象を受けるよ。" userName="LexiMax" createdAt="2025/11/17 19:54:42" color="#38d3d3">}}




{{<matomeQuote body="comptimeはちょっと違うかもしれないけど、根本的にソフトウェアに対する考え方を変えるものじゃないと俺は思うよ。OCamlもそう。Leanの型システムとか、Rustの借用チェッカー、Haskellの純粋性みたいに劇的に違うわけじゃないんだ。" userName="IshKebab" createdAt="2025/11/17 08:29:08" color="#45d325">}}




{{<matomeQuote body="RustがC++の代わりになるって？違うよ。Rustは関数型言語が起源で、C++とは完全に別物なんだ。" userName="ninetyninenine" createdAt="2025/11/17 07:06:59" color="">}}




{{<matomeQuote body="RustはZigみたいに低レベルシステムや組み込み向けじゃないって。ブラウザとかそっち系のソフトウェアがターゲットなんだ。Zigは全てを明示的にする安全性、Rustは裏で安全にしてくれる仕組みなんだよ。例えるなら、Zigの銃は狙わないと撃てないけど、Rustの銃はいつ暴発するか分からないけど足には当たらないようにできてる感じかな。" userName="GuB-42" createdAt="2025/11/17 11:04:23" color="#38d3d3">}}




{{<matomeQuote body="RustのAndroidでのメモリ脆弱性率がC/C++より5000倍低いっていう話と、Bunで見つかった大量のsegfaultを比べてみてほしいな。<br>Zigはコードが複雑になると、本当の安全性についてはそこまで変わらないと思うんだよね。<br>[1]: https://security.googleblog.com/2025/11/rust-in-android-move...<br>[2]: https://github.com/oven-sh/bun/issues?q=segfault%20OR%20segm..." userName="ViewTrick1002" createdAt="2025/11/17 12:57:08" color="#ff33a1">}}




{{<matomeQuote body="Rustの経験もなしに、unsafeコードが難しいなんてよくそんな大胆なこと言えるな。不変条件っていうのは、Rustが押し付けてるものじゃなくて、どんな言語でも守るべきものなんだよ。Rustはどんな問題にも万能じゃないんだから、そういう誇張や大げさな言い方はやめてほしいね。" userName="goku12" createdAt="2025/11/17 12:53:43" color="#45d325">}}




{{<matomeQuote body="今はErlangよりElixirを使う人の方が多いんじゃないかな。ElixirはErlangの抽象化に過ぎないけど、最近はみんなErlangじゃなくてElixirから学び始めてるよね。" userName="zwnow" createdAt="2025/11/17 11:15:59" color="">}}




{{<matomeQuote body="ちょっと似てるね。Cycloneだよ。アフィン型を一般的な開発者にも意識させるようにしたのがすごいんだ。<br>https://en.wikipedia.org/wiki/Cyclone_(programming_language)" userName="pjmlp" createdAt="2025/11/17 10:44:45" color="">}}




{{<matomeQuote body="Rustが出る前で、ライフタイムと借用チェッカーを使ってメモリ安全性もデータ競合も両方解決した実用的な言語って、他に何があった？研究段階のアイデアと、それを実際に使えるようにしたことには大きな違いがあるんだよ。" userName="brabel" createdAt="2025/11/17 09:43:05" color="#38d3d3">}}




{{<matomeQuote body="悪用可能な脆弱性の数とsegfaultレポートの数を比較してるけど、それってどうなの？あと「5000倍」っていう数字はどこから来たんだ？" userName="dns_snek" createdAt="2025/11/17 13:45:35" color="">}}




{{<matomeQuote body="サイバーセキュリティ機関や大手テック企業が安全じゃないプログラミング言語から脱却しようとしてる現状を無視したらダメだよ。Modula-2とかObject Pascalと同じくらいの安全性を持つ言語は、1990年代ならまだしも、型システムが進化してる今となってはね。Rustだけじゃなくて、Linear Haskell、OCaml effects、Swift 6、Ada/SPARK、Chapelとか、いろいろ安全な言語が出てきてるんだから。" userName="pjmlp" createdAt="2025/11/17 10:53:03" color="#38d3d3">}}




{{<matomeQuote body="Cycloneは、C言語の代わりにAT&Tが作ったものだよ。" userName="pjmlp" createdAt="2025/11/17 10:54:16" color="">}}




{{<matomeQuote body="Bunのissueを見るとメモリ関連の問題がめちゃくちゃ多いから、Zigを使えば「簡単に」メモリ安全なプログラムが作れるって話には疑問だな。このURLを見てみてよ。`https://github.com/oven-sh/bun/issues?q=segfault%20OR%20segm...`" userName="ViewTrick1002" createdAt="2025/11/17 12:36:02" color="#ff33a1">}}




{{<matomeQuote body="この本の文章の多くはAIが書いたみたいだね（序文には違うって書いてあるけど）。それが過剰な熱意や大げさな表現の原因かも。" userName="wavemode" createdAt="2025/11/17 06:35:47" color="">}}




{{<matomeQuote body="この本、最高じゃん！教育的な観点からも納得できるし、言語だけじゃなくて低レベルシステムプログラミングっていうパラダイムを同時に教えるアプローチも大好きだよ。Zigには1年くらい前にハマったんだけど、またやる気が出てきたな。2006年頃にRubyに出会った時以来の興奮だよ。この品質が最後まで続いてほしいな。" userName="PaulRobinson" createdAt="2025/11/16 20:18:52" color="#ff5733">}}




{{<matomeQuote body="「教育的に納得できる」って意見には同意できないな。チャプター1からコンパイラの詳細に入りすぎだし、他の人も指摘してるけどAIっぽさがすごくするよ（良い意味じゃなくてね）。" userName="mi_lk" createdAt="2025/11/18 08:21:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="AI生成の部分についてたくさんのコメントがあるけど、なんでそんなに気にするんだろ？もしそれが良質で正確で役立つなら、それでいいんじゃないかな？まるで電卓を使ったからって信じない、みたいな話だよね。僕はその品質や詳細、アプローチにすごく感銘を受けたよ。システムプログラミングは全く知らないけど、コードは25年も書いてるんだ。" userName="eibrahim" createdAt="2025/11/16 23:53:24" color="#ff5c5c">}}




{{<matomeQuote body="なんで重要かって言うと、AIってよく間違えるからだよ。それも気づきにくい間違いが多いんだ。LLMが書く文章はもっともらしく聞こえるから、人間のレビューでも見逃されやすいんだよね。だからドキュメントを書くときはAIを使わない方がいいって考える人もいるんだ。詳しいことはここを見て。`https://daniel.haxx.se/blog/2025/07/14/death-by-a-thousand-s...`" userName="gassi" createdAt="2025/11/17 00:14:23" color="#ff5733">}}




{{<matomeQuote body="人間だって間違いは犯すよね。質の良い文章ってのは、たくさんのレビューを重ねて初めて完成するもんだよ。" userName="DrNosferatu" createdAt="2025/11/17 00:35:21" color="">}}




{{<matomeQuote body="たくさんのコメンターがAI生成だと確信してるけど、明確な証拠は全くないんだよね。もしかしたら、人間はもう質の良い中立的なドキュメントを書けないって、みんな思い込んでるだけなのかもしれないな。" userName="ropable" createdAt="2025/11/17 05:49:55" color="">}}




{{<matomeQuote body="それはいい案だね。自分で文章を書いて、そのあとAIに「どうしたらもっと良くなる？」って聞いて、差分（diff）を確認するんだ。そうすれば、人間が2回レビューして、AIにも1回レビューしてもらえることになるよね。" userName="righthand" createdAt="2025/11/17 02:34:26" color="#45d325">}}




{{<matomeQuote body="AIは実際の専門家よりもはるかに頻繁に間違いを起こす（ハルシネーションする）。これって誠実じゃないよね。" userName="loeg" createdAt="2025/11/17 03:22:20" color="#785bff">}}




{{<matomeQuote body="あれはいくつかのステップとAIアシストを含む一つのレビューだよね。自分の仕事を2回チェックするのは、2人にレビューしてもらうのとは違うし、自分の仕事や他人の仕事を確認する際には、何度もチェックして、使えるツールは何でも利用するべきだよ。" userName="maxbond" createdAt="2025/11/17 06:30:54" color="">}}




{{<matomeQuote body="でも、「AIだ！」っていう投稿は、文章のスタイルについてであって、内容については触れてないんだよね。だから、たとえAIの助けを借りてテキストが書かれたとしても（例えば、ネイティブじゃない人には有効な理由がたくさんある）、それがAIによって内容まで書かれていて、AIの間違いが含まれているってことにはならないんじゃない？もしそれがそんなに明らかにAIが書いたものなら、間違いを見つけるのは簡単じゃないの？" userName="cycomanic" createdAt="2025/11/17 01:36:02" color="#45d325">}}




{{<matomeQuote body="＞なんでそんなにこだわるの？もし質が良くて正確で役立つなら、どうでもいいじゃん？それって、計算に電卓を使ったから信用できないって言うようなもんだよね。俺もそう思う。何が/誰が作ったかに関わらず、質が大事だよ。一方で、テクノロジーを実装しているテック系の人が、こんなにLuddite的で「アンチテック」なアプローチを取ってるのが面白いよね。" userName="diego_moita" createdAt="2025/11/17 14:26:55" color="#ff5733">}}




{{<matomeQuote body="たぶん「主題の専門家」がレビュアーと同じようにLLMの出力をレビューするはずだよね。AIを使ったからって、その出力を見てないとかレビューしてないって決めつけるのは誠実じゃないと思うな。" userName="rootlocus" createdAt="2025/11/17 05:48:37" color="">}}




{{<matomeQuote body="だって、リンクをクリックしたら最初に「Zero AI」って書いてあるのに、これまで見た中で一番明らかにAIが生成したような文章なんだもん。俺たちの知性を侮辱してるだけじゃん、そりゃ、OPを批判するに決まってるよ。なんでそんな嘘つくんだ？" userName="nmilo" createdAt="2025/11/17 01:47:23" color="#ff5733">}}




{{<matomeQuote body="だって、サイトがはっきりとこう言ってるんだからね：<br>＞The Zigbook intentionally contains no AI-generated content—it is hand-written, carefully curated, and continuously updated to reflect the latest language features and best practices.<br>もしサイトが「文章をきれいにするためにAIを使ってるけど、人間がしっかり監査してるよ」とか言ってくれたら、問題なかったのに。プロンプトも共有してくれたら、もっと良かったね。" userName="johnfn" createdAt="2025/11/17 02:22:36" color="#45d325">}}




{{<matomeQuote body="もしAIを「火をつけて忘れ去る」みたいに使ったら、そりゃ質の悪いものになる可能性が高いよね。でも、執筆者（人間でもそれ以外でも）の貢献を注意深くレビューして改善していけば、質の高い成果物が得られるよ。" userName="DrNosferatu" createdAt="2025/11/17 06:46:46" color="">}}




{{<matomeQuote body="＞電卓を使ったから信用できないって言うようなもんだよね。いや、違うよ。俺のTI-83は決定的で、頼んだ通りの結果をくれるし、常にそうだよ。使う人はまず数学を理解しないと電卓は役に立たない。一方、こういうAIモデルは正確さを気にしないし、設計上決定的な答えを出さない。質問する人が主題をどれだけ理解しているかといえば、サルみたいなもんだ。こういうモデルは、むしろアンチ電卓だよ。Dijkstraが自然言語の「計算」の愚かさについて書いた素晴らしいエッセイで指摘してるけど、君がやってるのは計算じゃなくて中世の呪文みたいなもの。コンピュータはLLMが生み出すようなナンセンスを不可能にするために設計されたんだ。地球上で一番の馬鹿でも電卓からは正しい結果が得られる。なぜならLLMと違って、電卓はブール論理に基づいてるからで、言葉や絵のゴミじゃない。https://www.cs.utexas.edu/~EWD/transcriptions/EWD06xx/EWD667..." userName="Barrin92" createdAt="2025/11/17 02:56:31" color="#45d325">}}




{{<matomeQuote body="スタイルは人が一番気づきやすいことだよね。GPは技術的な問題の方が、特に長い文章だと見つけるのが難しいって言ってたけど、実際に見つかることもある。正しい情報でもLLMを通すと、汚染される可能性があるんだ。一見似たような文章でも、違う意味や不正確な意味になるかもしれないし、特定の言葉遣いが重要な場合もある。だから、スタイルが疑われるなら、内容も疑われるよね。もし最初から技術的に正しい文章が書けるなら、なんでわざわざ別の工程を通す必要があるんだ？" userName="spaqin" createdAt="2025/11/17 02:18:55" color="#45d325">}}




{{<matomeQuote body="幸いなことに、人間を完全に排除することはできない（よね？）。だから、どうにかして人間を使う必要があるんだ。" userName="ares623" createdAt="2025/11/17 04:34:09" color="">}}




{{<matomeQuote body="ポイントは、自動化されたものに人間のレビューを挟むことだった。完全に型にはめることじゃないんだ。" userName="righthand" createdAt="2025/11/17 17:42:31" color="">}}




{{<matomeQuote body="真剣な話、AIを使ったのが明らかなのに、使ってないって主張する人がいるのはなんでだろう？ツールを使うのは全然OKだけど、実際は使ってるのに使ってないと自慢する人には、その仕事の質も疑っちゃうよね。" userName="littlestymaar" createdAt="2025/11/17 07:02:59" color="#ff33a1">}}




{{<matomeQuote body="あまりにもAIの臭いがプンプンするのに、みんな自分の直感を疑って「裸の王様のオナラは素晴らしい！」って言っちゃうのは面白いよね。“The Party told you to reject the evidence of your eyes and ears. It was their final, most essential command.”（ジョージ・オーウェルの『1984』）" userName="xeonmc" createdAt="2025/11/17 03:01:20" color="#45d325">}}




{{<matomeQuote body="AIツールは人間とは違う種類のミスをするから、それが問題だよね。人間が犯すミスを軽減・修正するシステムは何億年もかけて作ってきたけど、AIがするようなもっと巧妙なミスに対しては、まだそんなシステムがないんだ。" userName="gassi" createdAt="2025/11/17 01:02:24" color="#38d3d3">}}




{{<matomeQuote body="なんでそれが問題かっていうと、人間が確認してないAI生成コンテンツをレビューさせられるのがすごく嫌なんだ。無料コンテンツを提供してくれる体で、結局こっちにタダ働きさせられるのはムカつくよ。" userName="kaycey2022" createdAt="2025/11/17 02:38:11" color="#785bff">}}




{{<matomeQuote body="「計算機を使ったから信用できない」って言うようなものだって？計算機は数学の世界だけのものだし、そこでは人間の入力や職人技の価値を捨てても大丈夫。でも、ソフトウェアを書く技を大事にする人たちからは一種の芸術作品として見られてるこの件とは違うんだよ。" userName="Klonoar" createdAt="2025/11/17 00:24:10" color="#38d3d3">}}




{{<matomeQuote body="全くその通りだよね。AIを使ってないって明らかに嘘をついてるのに、どうしてその作者がちゃんとやったって信じられるの？AIを使うのはツールだし、それ自体は悪くない。でも、使ったのが明らかなのに大声で使ってないって言うのは、すごく気分悪いよね。" userName="littlestymaar" createdAt="2025/11/17 07:00:14" color="#38d3d3">}}




{{<matomeQuote body="同感だよ。HNコミュニティは好きなんだけど、いつもより皮肉っぽい人が多い気がするな。コメントの90%はAIのことで、実際のプロダクトについては少なかったと思う。プロダクト自体はすごくクールだし、かなりの努力で作られてるみたいだけどね。" userName="eibrahim" createdAt="2025/11/17 14:49:44" color="">}}




{{<matomeQuote body="もしAI生成コンテンツが全くないって信じてるなら、わざわざ明言する必要なんてないよ。作品に語らせればいいんだ。" userName="hatefulmoron" createdAt="2025/11/17 00:12:53" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
