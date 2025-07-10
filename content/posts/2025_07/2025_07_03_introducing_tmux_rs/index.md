+++
date = '2025-07-03T00:00:00'
months = '2025/07'
draft = false
title = 'tmuxをRustに移植！開発プロジェクトの全貌'
tags = ["Rust", "プログラミング", "移植", "tmux", "システムプログラミング"]
featureimage = 'thumbnails/orange_pink4.jpg'
+++

> tmuxをRustに移植！開発プロジェクトの全貌

引用元：[https://news.ycombinator.com/item?id=44455787](https://news.ycombinator.com/item?id=44455787)




{{<matomeQuote body="この壮大な移植プロジェクト、マジすごい努力！作者の粘り強さにはマジ尊敬するわ。「segfaultもある庭いじり」って表現、超わかる！c2rust使った後、手動で全部書き直す判断は絶対正しかったね。自動翻訳じゃイディオムなRustにはならないもん。FFIのバグ話（’*’忘れ）とか、昔経験した似たようなやつ思い出してゾッとしたよ。sanity疑うレベルのバグ、よく見つけたね！unsafeからsafeへの移行、めっちゃ気になるわ。ポインタやgoto、侵入的なデータ構造どう変えるんだろ？GitHubフォローする！" userName="starchild3001" createdAt="2025/07/04 00:14:31" color="#ff5733">}}




{{<matomeQuote body="超クールなプロジェクト作ってドキュメントも公開してるのに、理由もなくネガティブな予測ぶつけてる人がいるね。OpenBSDに関する意見に反対してるわけじゃないのに。" userName="Touche" createdAt="2025/07/04 11:51:00" color="">}}




{{<matomeQuote body="c2rustじゃないよ。最初はそうだったけど、手動ポートに切り替えたんだ。返信した相手のコメントにも「手動ポートが正しい判断」って書いてあるし、記事の第二段落にも「c2rustの出力は全部捨てて、手動で翻訳することにした」ってハッキリ書いてるじゃん。<br>記事をちゃんと読んでからコメントしろよな。" userName="ga_to" createdAt="2025/07/04 12:09:45" color="">}}




{{<matomeQuote body="普段コメントしないけど、趣味のプロジェクトを馬鹿にするのにはムカついたよ。ボットと呼ぶならどうぞ。" userName="ga_to" createdAt="2025/07/04 12:54:09" color="">}}




{{<matomeQuote body="誰だって最初は初心者だよな。コメントするのって感情が動いた時が多いかも。批判してる人は、趣味の作品発表会で「一流ギャラリーに飾れるようになったら見てやるよ」って言ってるようなもんだ。作者の意図も無視だし、みんなが楽しんでる空気も壊してる。多くの人は実用性じゃなくて、このクールな趣味プロジェクト自体を楽しんでるんだよ。" userName="kbenson" createdAt="2025/07/04 18:52:50" color="#785bff">}}




{{<matomeQuote body="説明ありがとう。でもさ、作者はこれでRustを学べるのかな？コード見た方がいいよ。Rust学習には全然ならないと思う。もしそれが目的じゃないなら、なんでRustなの？Forthとかでもできたじゃん。" userName="johnisgood" createdAt="2025/07/05 08:18:33" color="">}}




{{<matomeQuote body="作者は慣用的なRustを目指してないってハッキリ言ってるよ。CからRustへの直接翻訳に集中してるんだ。もしトランスパイラ使ってると思うなら、具体的にどこか教えてよ。" userName="OneDeuxTriSeiGo" createdAt="2025/07/04 15:20:20" color="#38d3d3">}}




{{<matomeQuote body="例えばここ。<br>https://github.com/richardscollin/tmux-rs/blob/main/src/file.rs<br>そうだね、確かに慣用的なRustとは全然違うよ。他の言語でもほとんど同じように書けただろうね。Rustのいいところ全部捨ててまでRustを選んだ理由がマジで分からん。" userName="johnisgood" createdAt="2025/07/04 16:25:56" color="#38d3d3">}}




{{<matomeQuote body="リライトプロジェクトって、特に趣味のだとこんな風に始まること多いんだよ。まず1:1で翻訳して、元の言語の依存（コンパイラとか）をなくす。それから、だんだん慣用的なRustに書き直していくんだ。" userName="OneDeuxTriSeiGo" createdAt="2025/07/04 16:45:04" color="#ff5c5c">}}




{{<matomeQuote body="こんな風に始めるリライトプロジェクトは見たことないな。1:1翻訳だと何の意味があるの？バグも入り込むだろうし、むしろ増えそうじゃん。" userName="johnisgood" createdAt="2025/07/05 10:39:54" color="">}}




{{<matomeQuote body="どんなリライトだってバグは入るもんだよ。1:1翻訳のメリットは、1. 元のコードをマジで理解できる、2. 後でFFIとか気にせずコードを綺麗にできる、3. 自分の好きな環境で全部やれる、ってこと。俺は趣味のプロジェクトではこのやり方好きなんだけど、デメリットもある（翻訳でバグが増えるとか）。だからそれを補うツール（ファズテストとか）が必要になるんだ。" userName="OneDeuxTriSeiGo" createdAt="2025/07/05 18:07:18" color="#45d325">}}




{{<matomeQuote body="著者が結局C2Rustを使わなかったから、低評価されてるんじゃない？" userName="faitswulff" createdAt="2025/07/04 12:22:35" color="">}}




{{<matomeQuote body="ソースコード、読んで楽しんでね！<br>https://github.com/richardscollin/tmux-rs/tree/main/src" userName="johnisgood" createdAt="2025/07/04 12:47:04" color="#ff5733">}}




{{<matomeQuote body="記事を読んで楽しんで！「C2Rustの出力全部捨てて、全部手作業でRustに変換したよ。手作業でもC2Rustの出力と大差なかったけどね」。C2Rustみたいに見えるけど、これ全部手作業なんだよ。" userName="rbits" createdAt="2025/07/04 15:54:51" color="#45d325">}}




{{<matomeQuote body="記事は読んだけど、これって普通のRustの書き方じゃないと思うな。このやり方じゃRustは学べないよ。まぁ、それが目標じゃないのかもしれないけど。" userName="johnisgood" createdAt="2025/07/05 08:23:03" color="">}}




{{<matomeQuote body="この発表、注目してるよ！Rustでrmuxinatorっていうtmuxのセッションマネージャーを数年作ってるんだ。tmux-rsをフォークしてrmuxinatorを依存に入れるか、逆にrmuxinatorがtmux-rsをライブラリとして使うか、どっちか試してみたいな。<br>Richard Collinさん、ナイスワーク！" userName="ethagnawl" createdAt="2025/07/03 16:00:49" color="#785bff">}}




{{<matomeQuote body="「Rustでtmuxを書き直した理由？良い理由は特にないよ。趣味プロジェクトさ。庭いじりみたいだけど、もっとsegfaultがあるね」。この「理由なんていらない」姿勢、大好き！趣味プロジェクトから何が生まれるか分からないよね。筆者さん、ナイス記事！" userName="mbreese" createdAt="2025/07/03 15:19:24" color="#38d3d3">}}




{{<matomeQuote body="「庭いじりみたいだけど、もっとsegfaultがある」。面白いね。俺Rust初心者なんだけど、unsafeを使わざるを得ない状況ってどんなことしてるの？" userName="cultofmetatron" createdAt="2025/07/03 16:36:26" color="">}}




{{<matomeQuote body="Cでできる多くのこと（未定義動作含む）は、Rustじゃコンパイルできないんだ。Cのポインターは自由だけど危険、Rustの参照は制限がある。CコードをそのままRustに移植するとコンパイルできないから、unsafeなRustポインターを使うと移植は楽になるけど、Rustの安全性は失われちゃうんだよ。" userName="jeroenhd" createdAt="2025/07/03 17:12:42" color="#45d325">}}




{{<matomeQuote body="「新しいものを作るのに理由はいらない」。<br>でもtmuxは新しくないよね。<br>他の言語でソフトを書き直すことに理由って必要なの？" userName="1vuio0pswjnm7" createdAt="2025/07/03 21:53:02" color="">}}




{{<matomeQuote body="GNU screenも忘れないでね。" userName="fragmede" createdAt="2025/07/03 21:54:32" color="">}}




{{<matomeQuote body="マジでさ、「なんで？」って聞く人が嫌いなんだよね。「楽しいから」っていうのが正当な理由だって理解してない。仕事なら分かるけど、趣味だよ？人間って他の動物と同じで遊ぶために生まれて、それで学んで世界を探検するんだよ。Knuthさんも言ってたじゃん、「何千人ものコンピューター科学者を好きにさせてやれば、それがマジで分野を進化させるんだ」って。これってどの分野、どのプロジェクトにも当てはまる。俺たちは創造的な生き物で、夢見て探求するんだ。大きな変化って、今までのやり方からじゃ絶対生まれない。「ただなんとなく」っていうのが、新しいことを試して既成概念に挑戦する自由を与えてくれることが多い。不思議なもんで、常に全てを正当化しようとすると、進歩が遅くなるんだよね。" userName="godelski" createdAt="2025/07/03 19:16:20" color="#ff33a1">}}




{{<matomeQuote body="多分、俺の一部分の理解が間違ってるのかもしれないけど、「segfaultが増える」っていう部分が分かんないんだよね。Rustのコンパイラってsegfaultするコードはコンパイルさせないんじゃないの？もしそうなら、unsafeブロックがたくさん使われてるのかな。追記：どうやらunsafeコードがいっぱい使われてたみたいだね。" userName="nisegami" createdAt="2025/07/03 15:43:51" color="">}}




{{<matomeQuote body="tmuxがscreenを差し置いてこんなに知られるようになったのがマジで分かんない。どう考えてもscreenより明らかに優れてるわけじゃないし。もしかしてscreenの名前が分かりにくいだけ？" userName="magarnicle" createdAt="2025/07/03 23:25:05" color="">}}




{{<matomeQuote body="じゃあ、unsafeなRust実装にするメリットって何なの？ただやってみたかっただけ？" userName="SoftTalker" createdAt="2025/07/03 17:36:01" color="">}}




{{<matomeQuote body="俺の理解だと、たとえtmux-rsがより安全な言語で書かれてても、長年戦って鍛えられてきた、有能な開発者グループがメンテしてきた古いプロジェクトの安定性には勝てないと思うんだ。どんな新しいプロジェクトも、時間が経つにつれて直さなきゃいけないバグが絶対あるからね。" userName="miroljub" createdAt="2025/07/03 15:47:36" color="">}}




{{<matomeQuote body="完全に同意！全てのプロジェクトが世界を変える必要なんてないんだよ。最近、`fzf`をRustで書き直したんだけど[1]、特に理由があったかっていうと、そうでもなくて、普通の`fzf`で全然問題ないんだけど、ファジーサーチのアルゴリズムとかRustのチャネルの使い方を学ぶ楽しい言い訳になるかなと思ってさ。楽しかったよ。オリジナルの`fzf`の方が優れてるのは間違いないけど、それが目的じゃなくて、色々なもので遊んで学ぶのが目的だったんだ。<br>[1] https://github.com/Tombert/rs-fzf-clone" userName="tombert" createdAt="2025/07/03 17:04:38" color="#38d3d3">}}




{{<matomeQuote body="いいね！fzfはRustで書き直すのにすごくいい候補だと思うよ。fzy[1]のC言語での書き直しはマジ速いけど、bashの履歴を検索するときにfzfほど良い結果が出なかったな。<br>[1] jhawthorn/fzy: :mag: A simple, fast fuzzy finder for the terminal https://share.google/TBp3pVaFngBTfaFyO" userName="carlmr" createdAt="2025/07/03 20:07:21" color="">}}




{{<matomeQuote body="たぶん、人気になった理由の大部分は、tmuxの方がより親しみやすくてまともなデフォルト設定だったり、コマンドデザインが分かりやすかったり（例えば、ステータスバーが最初から出てるとか）ってところだと思うんだ。あと、screenを既に知らない人たちが多かったせいもあるんじゃないかな。後者の理由が、Helixがvimみたいになるのに時間がかかってる理由だと思う。Helixの方がはるかに一貫したデザインでまともなデフォルトなのにね。みんなvimの存在は知ってるからさ。個人的には今でもscreenから乗り換えてないけど、ライトユーザーだからね。" userName="usef-" createdAt="2025/07/04 01:29:58" color="#ff5c5c">}}




{{<matomeQuote body="いまだに思うんだけど、ジュニアSWEとしての成長を一番妨げたのは、個人プロジェクトとか使う言語について考えすぎちゃったことかな。面白そうとか惹かれるものをとりあえず作ってみればよかったんだよな。" userName="Arisaka1" createdAt="2025/07/03 19:40:43" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「なんでやるの？」って聞くのは全然アリな疑問だし、「楽しいため」っていうのも十分アリな答えだよね。プロダクト化したいのか、既存のオープンソースツールを置き換えたいのか、個人的な楽しみなのか、趣味プロジェクトなのかで、プロジェクトへの向き合い方って変わるもんね。" userName="serial_dev" createdAt="2025/07/03 21:34:00" color="">}}




{{<matomeQuote body="別言語で書き直されてて、Rustって読みやすいって思う人も多いし、IDEの型ヒントとかもサポートされてるよ。それに安全性が全部失われるわけじゃない。安全なリンクとか未定義関数がないとか、守られるルールはたくさんある。<br>Unsafe Rustっていうのは、ヤバいポインタ操作してる部分には全部「unsafe」ってキーワードが明示されてるってこと。だから一つずつ直していけるんだ。" userName="petrzjunior" createdAt="2025/07/03 18:08:43" color="#38d3d3">}}




{{<matomeQuote body="めっちゃ面白いと思ったよ。これに何時間かけたんだろう？ものすごく単調そうだけど（笑）" userName="upmind" createdAt="2025/07/03 15:23:31" color="">}}




{{<matomeQuote body="「うーん…アセンブラみたいに邪魔されず、俺が何してるかわかってるって前提で動いてくれるのが好きだな。それがCが嫌いでアセンブラを選ぶ理由。でも君が好きなら楽しんで！」" userName="anyfoo" createdAt="2025/07/03 22:38:55" color="">}}




{{<matomeQuote body="だんだん安全にしていく話に加えて、Unsafe RustだってCよりはまだ安全だよ。詳しくはこちら: https://bsky.app/profile/ssg.dev/post/3lkjogvm2c222" userName="sedatk" createdAt="2025/07/03 23:06:17" color="#ff5c5c">}}




{{<matomeQuote body="彼らは全部Unsafe Rustで書いたんだね。それだとsegfault起こりやすいよ。これは普通のCからRustへの移植じゃない。普通の移植なら100％Unsafe Rustコードを目指すなんてことは絶対しない。むしろunsafeが必要な部分は小さく切り出して、目立つようにして監査可能にするもんだ。これは明らかに楽しみでやった練習だね。" userName="a_humean" createdAt="2025/07/03 16:18:31" color="#ff5733">}}




{{<matomeQuote body="fzfが遅いって初めて聞いたな。俺は主に小さめのリスト（数千件）のフィルタリング、例えばgit reflogとかに使うんだけど、ファイルシステム全体とかそういうのを検索する時はスピードが問題になるのかな？<br>それにスピードが問題ないとして、なんでRustだと良くなるんだろう？" userName="ricardobeat" createdAt="2025/07/04 08:04:53" color="">}}




{{<matomeQuote body="昔Screenは縦分割できなかったから、画面が広くなってTmuxに乗り換えたんだ。Tmuxは自動化機能も多いしね。今はScreenもメンテだけだし、Tmuxに慣れたから戻る理由ないわ。" userName="telotortium" createdAt="2025/07/04 04:11:42" color="#ff33a1">}}




{{<matomeQuote body="判断するのは難しいけど、測定方法を間違えてないかな？すごく大事な教訓を得たみたいだね。ただ”やってみた”からこそ得られるスキルや情報ってあるんだ。形あるものだけに進捗を注目してると、こういう進歩を見落としがちだよ。でもそれは進歩じゃないってことにはならない。だから自分を責めないで、きっとたくさんのことを学んだはずだよ。より良い方法が見えるのは、あなたが進歩して教訓を得たからなんだ。これはメンターがいたら早く乗り越えられることだけど、みんなにメンターがいるわけじゃない。でもプロジェクトを終えなかったとか、他の人とは違うやり方をしたからって、自分の進歩を過小評価しないで。" userName="godelski" createdAt="2025/07/03 21:02:17" color="#ff5733">}}




{{<matomeQuote body="遅いなんて言ってないけど、Rustならもう少し速くなるかもね。Fzyは明らかに速いけど、役に立つ結果を最初に出してくれないのがね。コマンドラインツールは可能な限り速いのがありがたいんだ。RgとかFdとかは、Rustで正確かつ速く実装できるってことを示してるよね。" userName="carlmr" createdAt="2025/07/04 11:04:54" color="#38d3d3">}}




{{<matomeQuote body="これ好き！私もRustのことが好きで、Rustベースにしたいんだ！ここでZellijについて言いたいね。ZellijはRust製のターミナルマルチプレクサなんだ。私はユーザーであって開発者じゃないよ。Rustの全てが好きで、可能なところではRustベースのソリューションを見つけて移行してるんだ。" userName="tekawade" createdAt="2025/07/03 16:49:38" color="">}}




{{<matomeQuote body="ちょっと興味があって。私はRust開発者なんだ。でもCとかC++とかRustとかZigとか、どの言語で書かれたツールか区別して見てないんだよね。バグが少なければどれもインストールも使うのも簡単に見えるし。スクリプト言語は少し違うかな、それぞれのインタプリタとかツールをシステムに維持しなきゃいけないから。Rustで書かれたアプリケーションと他のコンパイル言語で書かれたものとの違いをどう見てるの？" userName="goku12" createdAt="2025/07/04 05:40:47" color="">}}




{{<matomeQuote body="根本の技術が最終的に重要じゃないってのは同意だけど、たくさんのかなりモダンなRustベースのCLIツールのユーザーとして、何か言及すべき空気があるのは確かだよ。新しい世代のプログラマーが登場してて、新しいやり方で物事をやりたいと思ってるんだ。新しいツールは確かに大抵すごくきれいだし、使いやすさの改善がある。RustとGoはこれをより良くしてて、良いエコシステムとパフォーマンス特性を持つ今の流行りの言語だね。代替ツールは好きだよ。grepの代わりにRipgrep、lsの代わりにEza、cdの代わりにZoxide、findの代わりにFd、dockerの代わりにPodman、他にもいくつか。開発者ツールは面白い分野だけど、乗らない流行りもたくさんあるよ、Tmuxの代わりにZellijとかね。" userName="tkcranny" createdAt="2025/07/04 07:26:59" color="#785bff">}}




{{<matomeQuote body="Zoxideはcdの完全な代替じゃないけど、cdのラッパーなんだ。OGの”z”（Bashで書かれてたかな）とかautojump（Python）の代替で、20年くらい前からあるんだよ。基本的には、”cd some/subdir”って打つと、ツールが移動したディレクトリの頻度や新しさ（recency）を覚えてくれて、そのうち「z sub」って打つだけで、今の作業ディレクトリがどこでも”some/subdir”にテレポートできる感じ。これ大好きで毎日使ってるよ。Zoxideは他のよりちょっと気の利いた機能があるんだ（それに速いかもね）。" userName="virgoerns" createdAt="2025/07/05 06:29:08" color="#38d3d3">}}




{{<matomeQuote body="どうやらそういうのがあるみたいだね。<br>https://github.com/ajeetdsouza/zoxide<br>全然知らなかったよ。" userName="lproven" createdAt="2025/07/04 13:55:56" color="">}}




{{<matomeQuote body="C(++)のビルドシステムはぐちゃぐちゃで、パッケージマネージャーがないとgit submodulesになりがち。それに対してRustは本当に簡単で、`cargo install`するだけでいいんだ。Zigについてはよく知らないけど、まだそこまで流行ってないと思うな。" userName="shim__" createdAt="2025/07/04 07:13:56" color="">}}




{{<matomeQuote body="このプロジェクトの姿勢と、ほとんどのコメントが協力的でいい感じだね。成熟したアプリを他の言語に書き換えるのはいつもは悪いアイデアに聞こえるけど、この過程でたくさんの学びがある。結果じゃなくてプロセスが大事なんだ。<br>ここで得られた注目とAIの進化を考えると、これはRust初心者にとってすごく魅力的な趣味プロジェクトになるのは間違いない。簡単なバグもたくさんあるだろうしね。バグを直したり、新機能を追加したり、コードを最適化したり、それだけで十分だよ。<br>手始めにアイデアがあるんだけど、Gemini CLI（あるいは好きなLLM）用にスクラッチバッファを作って、tmuxセッションのいろんなウィンドウやペインと連携できるようにするんだ。<br>俺のユースケースは、同期ペインを使って複数のサーバーにコマンドを送るんだけど、たまにコマンドがいろんな理由で失敗するんだよ。そこでAIに一連のコマンドを送らせて、出力に応じて反応し、その場で調整させられたらどうかな？まるでその場で動的に生成されるカスタムシェルスクリプトみたいじゃない？" userName="gmoque" createdAt="2025/07/03 17:43:53" color="#45d325">}}




{{<matomeQuote body="趣味プロジェクトとして好きなことを学ぶためにやるのは全然いいと思うんだけど、何かを別の言語にそのまま移植する魅力がよく分からないんだ。例えば俺は毎日gvimを使ってるけど、趣味でテキストエディタを作るなら、絶対にgvimのクローンは作らないね。自分が欲しい機能だけがあって、自分が望むように振る舞うテキストエディタを作るよ。そんなに時間をかけるなら、創造的でユニークなことをやればいいのにって思うんだ。" userName="fasterik" createdAt="2025/07/03 23:38:13" color="">}}




{{<matomeQuote body="全然余談なんだけど、<br>”my feeling is that I’d still reach for it if my hands are really physically hurting, and I need to keep working. Usually once I reach the point where I’ve got blisters on my fingers I think it’s better to just take a break”<br>この部分に呆然として、ある意味不健康な印象を受けたよ。そんなに頻繁にタイピングして水ぶくれができる人がいるの？" userName="m3at" createdAt="2025/07/04 02:25:35" color="">}}




{{<matomeQuote body="毎日鏡で自分を見てるけど、この問題はないよ。まあ、10歳で古いタイプライターでタッチタイピングのコースを受ける前に、すでに数年間ピアノのレッスンを受けてたからね。音楽の先生は正しい手の位置にすごく厳しくて、そうしないと将来後悔するぞって言われたんだ。ピアノのレッスンはすぐに辞めちゃったけど、ちゃんとピアノを弾くのに必要なスキルはタイピングにもかなり役立つと思う。" userName="vanderZwan" createdAt="2025/07/04 11:00:08" color="">}}




{{<matomeQuote body="うん、同意だね。ピアノスキルはタッチタイピングを習得しやすくするのは間違いないよ。<br>俺も人生の早い時期にピアノを習って、後になってからタッチタイピングを習得したんだ（あと shameless plug だけど、https://www.typequicker.com を作ったよ）。友達の中にはそうじゃない人もいたけど、俺は間違いなく楽だったね。<br>ちょっと興味があるんだけど、君はどんなコースを受けたの？（結構前かもしれないけど）。TypeQuickerに教育機関（学校、塾とか）向けの機能を作ろうとしてて、今学校が何を使ってるかリサーチしてるんだ。<br>多くのところは全くコースがないから、今は売り込むのが大変なんだけどね。" userName="absoluteunit1" createdAt="2025/07/05 22:16:00" color="">}}




{{<matomeQuote body="えっと、ごめん。思い出せないし、もし覚えてても君の役には立たないと思うよ :)。俺はオランダ人で、これは90年代の話なんだ。地元の公民館が主催したコースで、オランダのタイプライター向けの本を使ったんだ（だから、コンピューターに切り替えた時に専用のIJ合字の場所をunlearnしなきゃいけなかったんだよね）。<br>https://en.wikipedia.org/wiki/IJ_(digraph)" userName="vanderZwan" createdAt="2025/07/06 12:40:27" color="">}}




{{<matomeQuote body="偶然にも、ちょうど“Oxidise Your Command Line”ってYouTube動画見てたんだよ。https://www.youtube.com/watch?v=rWMQ-g2QDsI その動画の一部はRust開発者じゃないと役に立たない内容だけど、言う通り、CLIに慣れてる人なら誰にでも役立つ部分もあるよ。" userName="tialaramex" createdAt="2025/07/03 15:41:10" color="">}}




{{<matomeQuote body="ちょっと思ったんだけど、tmuxをFil-Cに1時間もかからず移植したよ（libeventの移植とテストスイート通過も含めてさ）。すごくうまく動くし、完全にメモリ安全だよ。" userName="pizlonator" createdAt="2025/07/03 22:31:38" color="">}}




{{<matomeQuote body="graphvizをFil-Cに移植してみてくれない？ 多分バカげてるんだろうけど、graphvizとdotの代わりになるしっかりしたものなんて本当にないって思い込みがあってさ（UI版とかmermaidとかはあるけど、本当に巨大なグラフで同じ表現力を持つものはないんだ）。graphvizを書いた人たちがみんなすぐいなくなるか引退しちゃうんじゃないかって心配なんだよ。新しい言語への移植で今後のメンテナンスが楽になるのを見たいんだよね。繰り返しになるけど、多分思い込みで、実は全て大丈夫なんだろうけどさ。" userName="golem14" createdAt="2025/07/04 02:42:36" color="">}}




{{<matomeQuote body="ここでバイナリをダウンロードできるよ: https://github.com/pizlonator/llvm-project-deluge/releases 移植してみなよ。もしかしたらそのまま動くかも！" userName="pizlonator" createdAt="2025/07/04 03:08:25" color="#785bff">}}




{{<matomeQuote body="目立ったパフォーマンスの低下は経験した？" userName="aniviacat" createdAt="2025/07/04 10:58:57" color="">}}




{{<matomeQuote body="tmuxではしてないよ。" userName="pizlonator" createdAt="2025/07/04 12:52:23" color="">}}




{{<matomeQuote body="c2rustの改善で、指摘されてる定数命名の情報損失を減らして、最初の変換負担を軽減できるんじゃないかな？" userName="someperson" createdAt="2025/07/03 17:33:03" color="#785bff">}}




{{<matomeQuote body="うん、これc2rustのめちゃくちゃ大きな欠点みたいだね。理解してる限りだと、主な目的はイディオマティックなRustへ移植するための土台にすることだけど、定数を全部失うと生産性が大幅に落ちちゃうよね。" userName="kevincox" createdAt="2025/07/03 20:40:04" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まさにその通り。定数の一部を維持する実験的なサポートはあったんだけど、途中でなくなっちゃったんだ。今後数ヶ月以内に復活させる予定だよ。" userName="dataking" createdAt="2025/07/03 22:13:21" color="#ff33a1">}}




{{<matomeQuote body="＞コードベースは今や100パーセント（unsafe）Rustだ。＞つまり、Rustを使う最大の（唯一の）理由（メモリ安全性）は消えたな。<br>＞オリジナルのCコード約67＼,000行からRust約81＼,000行への移植プロセスを共有したいんだけど。<br>そしてコードベースは大きくなったと。だからまあ、作者も説明してるように、これは趣味のプロジェクトだし、それ自体は素晴らしいけど、俺が自分のマシンに入れることは当分ないな。<br>それに、tmuxみたいなアプリはRustより、ガベージコレクション付きのシステム言語（つまりGo）で書き直す方がずっと適してるだろ。tmuxは時間の99％をユーザーのキー入力を待つのに費やしてる。Goで十分対応できないようなパフォーマンスがクリティカルな部分なんてないんだから。" userName="usrbinbash" createdAt="2025/07/04 13:04:54" color="">}}




{{<matomeQuote body="これ、すごい変な考え方だね。まず、unsafe RustはCと比べられない。Cにはないチェックやバランスがまだたくさんあるんだよ。作者ももっとsafeにする予定だし。「最大の理由」って何だよ？最大の理由は楽しむことだったんだろ。楽しませてやれよ。<br>＞自分のマシンに入れることは当分ないな<br>まあ、誰も聞いてないけど？人が楽しんで作った小さな個人プロジェクトについて投稿するたびに、関係ないことを文句言いに来る、君みたいな慢性的にネガティブな人が理解できないね。もう少しポジティブになってみたら？人生がもっと楽しくなるよ。" userName="paddim8" createdAt="2025/07/05 09:48:05" color="">}}




{{<matomeQuote body="ただただひどいね。誰かが進行中のプロジェクトが重要なマイルストーンに達したって投稿したのに、出来上がってないって文句を言いに来る人がいるなんてさ。記事を読んだのか？safe Rustに変換するって目的をはっきり述べてるだろ。コードサイズだって、まだ最適化する必要がないだけで、こういうコードベースをコードゴルフみたいに小さくしたいとは思わないだろうし。" userName="tekkk" createdAt="2025/07/04 13:48:14" color="">}}




{{<matomeQuote body="問題は、「Introducing...」っていうフレーミングが、一般的に少なくとも価値のあるMVPがあるってことを示唆してるってことなんだ。OPはまだそれを持ってない。もしタイトルが「Rustでtmuxを書き直すことに関する実現可能性の検討」だったら、誰も文句言わなかっただろうな。" userName="zozbot234" createdAt="2025/07/05 04:50:30" color="">}}




{{<matomeQuote body="もし君の「正直な意見」が、あまり考えもなしのただの批判なら、黙ってた方がマシだと俺は思うよ。批判したいなら、せめて少しは努力しろ。記事を単に参照しただけじゃ、君に反論はできないんだから。" userName="tekkk" createdAt="2025/07/05 09:26:46" color="">}}




{{<matomeQuote body="＞自分のマシンに入れることは当分ないな<br>ちょっとキツい言い方だな。ローマは一日にして成らず、って言うだろ。" userName="MuffinFlavored" createdAt="2025/07/04 13:33:50" color="">}}




{{<matomeQuote body="これは将来、大規模言語モデル（LLM）が非自明なCコードベースをSafe Rustに1時間未満で高精度に完全に自動翻訳するのに最適なユースケースになりそうだな。ただ、作者も指摘してるように、開発終盤にCursorを使っていくつか試みた後も、2025年半ばの時点ではそのツールは翻訳を効果的に加速できなかったみたいだ。だから潜在能力は有望だけど、まだ少し先の話ってことだね。" userName="rthnbgrredf" createdAt="2025/07/03 16:03:26" color="#45d325">}}




{{<matomeQuote body="この人たち[0]がこれをやってるよ。おそらくASTsを利用する「codemods」[1]っていう方法でね。<br>0. https://codemod.com/<br>1. https://martinfowler.com/articles/codemods-api-refactoring.html" userName="gavmor" createdAt="2025/07/03 16:20:50" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
