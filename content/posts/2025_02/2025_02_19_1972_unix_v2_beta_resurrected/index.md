+++
date = '2025-02-19T00:00:00'
draft = false
title = '1972年版Unix V2が復活！その魅力とは？'
tags = ["Unix", "歴史", "テクノロジー", "オペレーティングシステム", "復刻"]
featureimage = 'thumbnails/purple5.jpg'
+++

> 1972年版Unix V2が復活！その魅力とは？

引用元：[https://news.ycombinator.com/item?id=43108091](https://news.ycombinator.com/item?id=43108091)

{{<matomeQuote body="Brian Kernighanの講演で、Ken Thompsonが3週間でテキストエディタやBコンパイラ、I/Oファイル管理の骨組みを作ったってジョークを聞いたことがある。今は効率がかなり落ちてるよね（笑）<br>" userName="m4r1k" createdAt="2025-02-20T07:27:19" color="#38d3d3">}}

{{<matomeQuote body="Kenは超一流のプログラマーだね。集中できる3週間があれば、かなりのものができる。奥さんが子供をイギリスに連れて行ったから、自由にできたんだ。プログラムを考えてる人は、家族や仕事から離れて3週間集中する時間を作ってみると良いかも。特に外部ライブラリに頼らない低レベルプロジェクトが良いかも。<br>" userName="ferguess_k" createdAt="2025-02-20T17:12:47" color="#ff33a1">}}

{{<matomeQuote body="低レベルプロジェクトで外部ライブラリにあまり依存しないのが重要だと思う。アーキテクチャが頭の中にあるなら、あとはキーボードを叩くだけ。ライブラリに時間を取られることも多いからね。<br>" userName="foxglacier" createdAt="2025-02-20T18:53:40" color="">}}

{{<matomeQuote body="まさにその通り。UNIXもGitも、最初から作者のやりたいことが明確だった。今そんなプロジェクトは見つけるのは難しいね。低レベルの組み込みプロジェクトなら、自分が使う可能性が高いから動機付けもできるし、目標も明確。<br>" userName="ferguess_k" createdAt="2025-02-20T19:12:41" color="#ff5c5c">}}

{{<matomeQuote body="インタビューはこちらだよ：<br>https://www.youtube.com/watch?v=EY6q5dv_B-o<br>1時間もあって、Thompsonが面白い話をたくさんしてる。Kernighanが上手くThompsonに話させてるよ。<br>" userName="cjs_ac" createdAt="2025-02-20T08:25:02" color="">}}

{{<matomeQuote body="最近のジョークでは、Ken ThompsonがC/C++のコンパイルを待ちながらGoを作ったって話してる。<br>" userName="Cthulhu_" createdAt="2025-02-20T09:27:58" color="">}}

{{<matomeQuote body="C/C++ではなく、特にC++だね。Cは比較的早くコンパイルできるから。実際には一回のビルドを待っていたわけではないけどね。<br>" userName="kragen" createdAt="2025-02-21T10:38:22" color="">}}

{{<matomeQuote body="2000年には、CモジュールをTclやApache、IISモジュール、DBドライバ用に作ってたけど、フルプラットフォームリリースで1時間かかっていたよ。<br>" userName="pjmlp" createdAt="2025-02-21T22:16:02" color="">}}

{{<matomeQuote body="そうだね、似たような経験がある。90年代のC++プロジェクトは、ビルドに一週間かかってた。<br>" userName="kragen" createdAt="2025-02-21T23:29:56" color="">}}

{{<matomeQuote body="私が作ってたデスクトップソフトウェアでそんなことはなかったし、これはおかしいと思う。複雑な分散CORBAサービスで作ったNokia NetActでも、半分もかからなかったよ。<br>" userName="pjmlp" createdAt="2025-02-22T06:56:53" color="">}}

{{<matomeQuote body="こっちはちゃんと設計されたソフトウェアばっかり触ってたわけじゃないけど、確かにWindowsのデスクトップソフトはあんまり時間かからなかったよね。" userName="kragen" createdAt="2025-02-22T10:54:33" color="">}}

{{<matomeQuote body="初期のUNIX開発者たちがどんな風にこの生産性を達成したのか気になるよね。彼らは９時から５時の仕事にしてたのか、それともゴブリンモードに入って他の生活を無視してたのかな？" userName="xattt" createdAt="2025-02-20T12:57:46" color="">}}

{{<matomeQuote body="自分の会社で特別なプロセスに合った在庫管理システムが必要だった時、数カ月待っても進展がなかったから、ある週末にDjangoで一気に作ったんだ。特別な天才じゃないけど、すぐに解決策ができたよ。やりたいことやればこんなにできるもんだね！" userName="ironmanszombie" createdAt="2025-02-20T15:38:13" color="#ff33a1">}}

{{<matomeQuote body="自分が働いてた会社はERPシステムが大好きで、30年以上使ってる人もいたよ。Excelには自信がないけど、ある土曜の午後に作った共有スプレッドシートは、$80KのERPシステムより機能があったんだ。見せた後はサーバーに移して、もう見せてないけど、意味がないって証明したかっただけ。" userName="smm11" createdAt="2025-02-20T21:35:01" color="#785bff">}}

{{<matomeQuote body="自己モチベーションがあればいいけど、これは期待のハードルを上げちゃうから注意が必要だよね。こういうことを続けると、管理職に無理なペースを求められることがあって、不健康で燃え尽きちゃうから。" userName="deaddodo" createdAt="2025-02-20T17:59:21" color="">}}

{{<matomeQuote body="週末に一気にやるのは、前に数ヶ月かけて要件集めやアーキテクチャ設計があったからこそだよね。" userName="sdwr" createdAt="2025-02-24T16:56:01" color="">}}

{{<matomeQuote body="大きな要因は、ピアレビューやプロセス、チームミーティングがなかったこと。PMやUXもいなくて、自分とキーボードだけで目標に向かってた。初期の業界みたいに、少数の人で作っていたころのようなものだね。" userName="masom" createdAt="2025-02-20T19:08:34" color="">}}

{{<matomeQuote body="IMHO、一番のポイントは彼らが自分たちの顧客だったことだね。要件集めもUI/UXの相談もなかったし、自分で使ってみて満足してた。オーバーヘッドがなかったから目の前の仕事に集中できたんだ。" userName="jandrese" createdAt="2025-02-20T22:12:00" color="#ff5c5c">}}

{{<matomeQuote body="天才的な頭脳があれば、スクラムやアジャイルの無駄がないほうがいいね。" userName="noisy_boy" createdAt="2025-02-20T13:18:37" color="">}}

{{<matomeQuote body="不可能だ！プロダクトマネージャーはどうやってその官僚主義なしでコントロールできるのさ？／s" userName="hylaride" createdAt="2025-02-20T20:55:04" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Unixの今の機能って、実は初期の制限から生まれたものが多いんだよね、例えばドットファイルとか。もし、安定パスから外れたらすべてがクラッシュしても構わないって思えるなら、驚くほど生産的になれるんだ。あと、1台のマシンで、テキストインターフェースだけで、必要なものだけを提供するって条件でも、コード作るのは楽しいよ。" userName="Daishiman" createdAt="2025-02-20T19:06:51" color="#785bff">}}

{{<matomeQuote body="別にたくさんのコードを書く話じゃなくて、過去10年でいくつかの似たシステムを実装してきたからこそ。5回目のプログラムを書く時って、どれだけ省略できるか分かってるから、意外と速く書けるよ。" userName="kragen" createdAt="2025-02-21T10:40:56" color="">}}

{{<matomeQuote body="TorvaldsがGitを5日（または10日）で作ったって聞いたことがあるし、Brendan EichがJavaScriptを10日で作ったってのもね。平均的なプログラマーは効率が低いかもしれないけど、今は分布がかなり偏ってると思う。" userName="mr_toad" createdAt="2025-02-20T18:38:10" color="">}}

{{<matomeQuote body="普通のプログラマーでも、次のことをすることで同じタイプの成果が出せると思うよ。<br>－数週間閉じこもって集中する。<br>－プロジェクトの計画をして、持っていく本や資料を考える。<br>－ネットを遮断するなどの注意を最小限にする。<br>たぶん、スキルが向上して難しいプロジェクトを三週間で終わらせることができるだろうけど、UNIXやGitを書くわけじゃないけど、難しいプロジェクトは十分に可能だよ。" userName="markus_zhang" createdAt="2025-02-20T18:54:28" color="#45d325">}}

{{<matomeQuote body="プロジェクトを始める前に、考える時間がどれだけ大切か、みんな忘れがちだと思うんだ。" userName="richardlblair" createdAt="2025-02-20T19:13:06" color="">}}

{{<matomeQuote body="そう思うよ。KenがUNIXについて全く考えずに、突然3週間で完成したとは思えない。経験も大事だし、Wozniakも電子機器を素早く設計できたけど、HPに入る前には既に1万時間はやってたはず。" userName="markus_zhang" createdAt="2025-02-20T19:22:12" color="#ff5c5c">}}

{{<matomeQuote body="彼らはBell LabsでMulticsプロジェクトに関わっていたし、いくつかの言語も書いていた。階層ファイルシステムみたいな新しいアイデアもあったけど、実際はCTSSの現代版って感じだった。ちょっと前にsimhでこのバージョンを触ってたけど、バージョン7や2.11にすっかり慣れてるから、すごくシンプルだって分かるんだ。アセンブリで書かれているのも助けになったと思うよ。" userName="nyrikki" createdAt="2025-02-20T20:55:22" color="#45d325">}}

{{<matomeQuote body="”EDIT: これは全てをまとめるために作られたものだよ”<br>すごい！Dennisも誇りに思っただろうね。みんなの仕事に感謝しているよ。ありがとう！" userName="ForOldHack" createdAt="2025-02-21T10:45:09" color="">}}

{{<matomeQuote body="そうだね。彼らはあの頃にはかなりプロフェッショナルだったよね。" userName="markus_zhang" createdAt="2025-02-20T22:45:20" color="">}}

{{<matomeQuote body="＞TorvaldsがGitを5日で作ったって聞いたことあるけど……<br>それが証明されてるかもね。冗談だけど、Gitって本当に素晴らしいし、半分冗談だけど、Linuxってどうしてこんなにひどいインターフェースを引き寄せるんだろう。gitvs hgやiptablesvs pf、技術的には素晴らしいものが多いのに、インターフェースが標準以上に劣ってるんだ。" userName="somat" createdAt="2025-02-20T19:01:51" color="">}}

{{<matomeQuote body="Magitがあるのはそういうことだよね" userName="wbl" createdAt="2025-02-20T21:04:33" color="">}}

{{<matomeQuote body="僕の理解では(18年前にGraydonから直接聞いた話だけど)、LinusはMonotoneを遅い以外は評価してたみたい。Graydonは正確なものを作るのが好きだったけど、LinusがBitKeeperを失ったことで金曜にMonotoneの設計を支持するメールを送ったんだ。Graydonは“ノートパソコンを買わせて、月曜から始めるよ”と言ったけど、月曜になったらLinusが“遅すぎた、もう作っちゃったよ”って言ったんだ(それがgit)。" userName="BrendanEich" createdAt="2025-02-23T06:06:03" color="#785bff">}}

{{<matomeQuote body="Brendan Eichは、大きなバグが無理な時にいつも“10日”って言ってたよね。" userName="wbl" createdAt="2025-02-20T21:04:04" color="">}}

{{<matomeQuote body="Mochaのプロトタイプは、10日間の後に作ったものより良かった。一番の問題は、演算子の型を自動で変換することだったけど、これは初期のNetscapeのユーザーからの要求に応じてしまった僕のバカさだった。Ryan Dahlは後に“小さな機能は追加しないほうがいい”っていうスピーチをしてた。URL： https://youtu.be/M3BM9TB-8yA?t=900。ウェブの不修正性はCSSやHTML、JSにも当てはまる。" userName="BrendanEich" createdAt="2025-02-22T08:07:03" color="#38d3d3">}}

{{<matomeQuote body="プロジェクトの初めの80％はすごく早く進むけど、そこから残りの20％は長い道のりで、やる気が削がれちゃうことが多いよね。" userName="somat" createdAt="2025-02-20T18:57:18" color="">}}

{{<matomeQuote body="一方で、今日はReactがテストを警告なしで動かすことができた。" userName="pinoy420" createdAt="2025-02-20T07:50:54" color="">}}

{{<matomeQuote body="新しいコードのテストをたくさん書いて、全部初回で通ったら逆に重大なバグが隠れてるんじゃないかって疑うよ。" userName="9dev" createdAt="2025-02-20T09:13:44" color="#38d3d3">}}

{{<matomeQuote body="可能なら、ユニットテストのスイートを始めるときは、モックがエクササイズされて、副作用が正しく発生していることを検証するテストを入れるのが好き。" userName="throwanem" createdAt="2025-02-20T13:55:02" color="#45d325">}}

{{<matomeQuote body="笑った、ありがとう！" userName="pinoy420" createdAt="2025-02-20T17:54:06" color="">}}

{{<matomeQuote body="Spockレベルの魅力だね。MacでPDP11エミュレーターのコンパイル方法を学びたいな。" userName="digitalsushi" createdAt="2025-02-19T22:35:34" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="エミュレーターのコンパイルは簡単だよ。simhを見てみて！ポータブルでそのまま動くはず。これを動かしたら、2.11BSDのディストリビューションをインストールしてみて。ドキュメントも充実してるし、初期Unixの混乱が続いた後に出たからね。RT-11も遊び倒してるけど、小さなアプリも作ったよ。" userName="thequux" createdAt="2025-02-19T22:45:18" color="#ff5c5c">}}

{{<matomeQuote body="daves garageのYouTubeには、PDP-11/83で2BSDをコンパイルする際の罠を記録したエピソードがあるよ。全体的にメモリ制約のあるシステムでのアートみたいなものだね。カーネルのコンパイル方法を説明しているときに、あ！OpenBSDのそれだなって思ったよ。プロセスがまだ似てる。" userName="somat" createdAt="2025-02-20T01:17:43" color="#ff5c5c">}}

{{<matomeQuote body="そのプロセスはどんな感じなの？" userName="azinman2" createdAt="2025-02-20T06:21:56" color="">}}

{{<matomeQuote body="OpenBSDだと、<br>    cd /sys/arch/$(machine)/conf<br>    cp GENERIC CUSTOM<br>    vi CUSTOM    # 変更を加える<br>    config CUSTOM<br>    cd ../compile/CUSTOM<br>    make<br>らしいよ。2BSDはやったことないけど、http://www.vaxman.de/publications/bsd211_inst.pdfによると、<br>    cd /usr/src/sys/conf<br>    cp GENERIC CUSTOM<br>    vi CUSTOM<br>    ./config CUSTOM<br>    cd /sys/CUSTOM<br>    make<br>って感じになってるよ。" userName="somat" createdAt="2025-02-20T18:43:18" color="">}}

{{<matomeQuote body="その後もRT-11で遊ぶのがすごく楽しかったよ。PDP-11/03エミュレーターとVT240端末エミュレーターをブラウザで動かせるのを作ったんだ。まだ完成してないけど、ここで遊べるよ：<br>https://lsi-11.unknown-tech.eu/<br>(ソースコード：<br>https://github.com/unknown-technologies/weblsi-11)<br>PDP-11/03エミュレーターがRT-11インストーラーも動くくらい良くて、ブラウザ版のディスクイメージを作れるんだ。VT240エミュレーターは、スタンドアロンのLinux版として日常業務で使えるターミナルエミュレーターとしても十分だよ。時間ができたら、ちゃんとしたブログ記事を書いてShow HNに投稿する予定。" userName="an-unknown" createdAt="2025-02-20T14:08:25" color="#45d325">}}

{{<matomeQuote body="そのリンクによると、<br>＞”環境に少しうるさい。今のところ、aapのPDP-11/20エミュレーター（https://github.com/aap/pdp11）がゼノブートする唯一のエミュレーターとなっている。SIMHとErsatz-11はログインプロンプトに到達する前でハングする。これがs1/s2テープからのインストールを難しくする。”" userName="colechristensen" createdAt="2025-02-19T22:57:31" color="">}}

{{<matomeQuote body="どうやらYufengがSIMHを使って動かすことができたみたいだね：<br>https://www.tuhs.org/pipermail/tuhs/2025-February/031427.htm…" userName="kragen" createdAt="2025-02-21T10:42:38" color="">}}

{{<matomeQuote body="頑張ってね。俺のエミュレーターは特に使いやすくないから、ユーザーインターフェースがないんだ。やっぱりsimhをおすすめするよ（ただし、これに関してはあんまり）。" userName="aap_" createdAt="2025-02-19T23:01:17" color="">}}

{{<matomeQuote body="どうやって、言及されてから4分後に返信する仕組みを作ってるの？" userName="colechristensen" createdAt="2025-02-19T23:24:45" color="">}}

{{<matomeQuote body="HNを虜にしちゃうみたいだね　:D" userName="aap_" createdAt="2025-02-19T23:51:50" color="">}}

{{<matomeQuote body="実際のニュース見る前にスレッドビュー見るとそうなるよね。" userName="lanstin" createdAt="2025-02-20T10:04:05" color="">}}

{{<matomeQuote body="RSX-11M触ってるんだけど、初期のOSって面白いよね！DECNetを別のエミュレーターでVMSと一緒に立ち上げたり、TCPスタックやいくつかのコンパイラーをインストールしたりしてるよ。" userName="icedchai" createdAt="2025-02-20T03:34:30" color="#45d325">}}

{{<matomeQuote body="https://opensimh.org/<br>Apple Siliconで動くよ、すごい！" userName="snovymgodym" createdAt="2025-02-19T22:44:54" color="">}}

{{<matomeQuote body="この文脈でエミュレーターとシミュレーターの違いは何かな？" userName="haunter" createdAt="2025-02-19T22:56:46" color="">}}

{{<matomeQuote body="エミュレーターとシミュレーターの境界は曖昧で、自分の哲学的解釈もあるんだ。シミュレーターは機械の詳細を再現するのが目的で、エミュレーターは出力重視だよ。例えばMAMEはアーケードハードのドキュメントとして、自分ではシミュレーターとして分類されるべきなんだ。" userName="bityard" createdAt="2025-02-19T23:11:07" color="#ff5c5c">}}

{{<matomeQuote body="ちょっと驚いたんだけど、エミュレーターの哲学が「うまく動く」で、シミュレーターが「昔のことをちゃんと教えてくれる」って感じなのが気になってる。プログラム自体にはどうなるのかな？" userName="Imustaskforhelp" createdAt="2025-02-20T16:25:41" color="">}}

{{<matomeQuote body="そうだね、曖昧だよ。" userName="kragen" createdAt="2025-02-21T10:43:09" color="">}}

{{<matomeQuote body="全然違うよ。たくさんのエミュレーターはほぼ100％正確だ。" userName="anthk" createdAt="2025-02-20T14:28:46" color="#ff33a1">}}

{{<matomeQuote body="この概念とは関係ないけど、無効にはならないね。目標は重なることがあるけど、もちろん目標が違えば、実装も偶然かなって思う。装飾用のレンガと構造用のレンガのように。" userName="Brian_K_White" createdAt="2025-02-20T17:05:42" color="">}}

{{<matomeQuote body="あれ？俺は正確性について何も言わなかったぞ。しかも’正確性’って言葉はあいまいで定義が曖昧だし、シミュレーターとエミュレーターの違いとは関係ないと思う。" userName="bityard" createdAt="2025-02-20T16:07:01" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="まったくその通りだ。結局、名前が違うだけで、全て哲学的なのかもしれない。" userName="Imustaskforhelp" createdAt="2025-02-20T16:26:07" color="">}}

{{<matomeQuote body="理論的には、エミュレーターは結果を出すことを重視していて、シミュレーターは状態の検査を重視してるんだよ。でも実際はこの用語が混同されがちなんだ。" userName="o11c" createdAt="2025-02-19T23:12:19" color="#785bff">}}

{{<matomeQuote body="その違いは、コンパイラとインタプリタの違いほどはっきりしないね。" userName="codr7" createdAt="2025-02-20T01:53:57" color="">}}

{{<matomeQuote body="コンパイラはELF形式や他の形式のバイナリを作って、共有オブジェクトがあれば実行できる。インタプリタはバイトコードを書いて、それを一行ずつ実行すると信じているけど、詳しく教えてくれないか？コンパイラ対インタプリタに隠れたジョークがあるのかな？" userName="Imustaskforhelp" createdAt="2025-02-20T16:23:30" color="">}}

{{<matomeQuote body="GPが言いたかったのは、多くのコンパイラがインタプリタの機能も持っているってことだと思う。コンパイラの定数畳み込みは明らかな最適化だし、言語の特徴によってはコンパイラも解釈を行うしね。" userName="dpassens" createdAt="2025-02-20T17:26:58" color="#ff33a1">}}

{{<matomeQuote body="じゃあ、違いは何なの？JavaはPythonと似てると思ってた。どちらもバイトコードを実行するし。コンパイラのインタプリタは分かるけど、逆は難しいよね。C++はコンパイラもインタプリタもあるから、それに対してJavaScriptはトランスパイラかも。ありがとう、このコメントは素晴らしいよ！" userName="Imustaskforhelp" createdAt="2025-02-20T19:09:39" color="">}}

{{<matomeQuote body="プログラミング言語は実行時に4次元空間を占有してるんだ。その軸は実際にはもっと複雑で、静的か動的タイプ、AOTかJIT、間接かインラインオブジェクト、決定論的メモリ管理かガベージコレクションなどがあるよ。言語実装理論についてより多くの情報も集めたよ。" userName="o11c" createdAt="2025-02-20T20:27:20" color="#45d325">}}

{{<matomeQuote body="簡単な定義は、インタプリタは何かを取って実行する。コンパイラは同じものを取って中間形（バイトコードなど）を生成する。その後、またインタプリタを通すことができる。JavaとJVMの違いはないし、PythonとPython Virtual Machineも同じだよ。" userName="amszmidt" createdAt="2025-02-20T20:24:39" color="#ff5c5c">}}

{{<matomeQuote body="ほとんどのCPUは内部に複数のコンパイラやインタプリタのレイヤーを持ってると思う。プログラミング言語の完全で実用的な実装には、両方が関与するしね。" userName="codr7" createdAt="2025-02-23T17:33:07" color="">}}

{{<matomeQuote body="インタープリタは最適化することはできるけど、バイトコードは作らないから、その時点でコンパイラだよね。JVMとの比較をするなら、x86コードを生成するコンパイラと比較するべきだけど、それはx86マシンなくしちゃ実行できないよ。仮想でも現実でも、動かすためにはマシンが必要だ。" userName="amszmidt" createdAt="2025-02-20T20:19:34" color="#45d325">}}

{{<matomeQuote body="ありがとう！" userName="codr7" createdAt="2025-02-20T17:31:58" color="">}}

{{<matomeQuote body="コンパイラは後で直接使うための何かしらの成果物を作るのに対し、インタープリタはソースから実行まですべてを直接使うのを目的としてる。両方の機能を持つツールも多いよ。例えば、ブラウザがその例で、ウェブページをPDFとして保存すればコンパイラ、そうでなければインタープリタって感じ。でも、実行するコードがタイプスクリプトコンパイラの出力だったらどうなるの？" userName="somat" createdAt="2025-02-20T20:18:26" color="">}}

{{<matomeQuote body="インタープリタは読み込んでるコードをそのまま実行するのに対し、コンパイラはコードを処理して、中間結果を生成して、マシンがそれを”解釈”する仕組みだよ。だから、”バイトコードで書く”のはコンパイラで、”バイトコードを実行する”のはインタープリタなんだ。バイトコードが”機械語”かどうかは二の次だね。" userName="amszmidt" createdAt="2025-02-20T20:16:16" color="#785bff">}}

{{<matomeQuote body="理論的には、すべての言語が結局アセンブリインタープリタみたいなものになるんじゃない？" userName="Imustaskforhelp" createdAt="2025-02-21T05:58:51" color="">}}

{{<matomeQuote body="ちょっとした経験談だけど、エミュレータは主にゲームの文脈で使われて、正確な再現をすごく重視してるよ。N64エミュレータのアセンブリバグを再現する必要があるし、古いアーキテクチャのエミュレータはあまり見ないから、あれはバーチャルマシンって呼ぶかな。シミュレータには賛成だけど！" userName="ijustlovemath" createdAt="2025-02-20T05:29:29" color="">}}

{{<matomeQuote body="デザインに関することで、エミュレーションは何かの動作を真似ること、シミュレーションは何かの動作を再現することだと思う。小さな違いだけど、シミュレーターは電気レベルで正確に再現しようとする。一方エミュレータは黒箱的に動作して、入力が期待する出力を生むようにしてるんだ。74181の正確なシミュレーターはAND/OR/NOTの論理を使うけど、エミュレータは”普通のコード”を使う。HDLでも構造的なデザインと動作的なデザインの違いがあって、構造的な方がより低レベルの論理に基づくよ。" userName="amszmidt" createdAt="2025-02-20T20:35:31" color="#45d325">}}

{{<matomeQuote body="まさに金属探知機で宗教的な遺物を見つけた瞬間だね。" userName="nonrandomstring" createdAt="2025-02-19T22:46:57" color="">}}

{{<matomeQuote body="簡単すぎる！NANDゲートで一個作るつもりだ。" userName="boznz" createdAt="2025-02-20T00:44:04" color="">}}

{{<matomeQuote body="楽しんでね！" userName="mycall" createdAt="2025-02-20T11:10:11" color="">}}

{{<matomeQuote body="めっちゃ好き！初めて’ed’を使った人見たよ！他にも’ed’を使ってる人いるのかな…最近、古いシステムに接続したらviが使えなくて、自分でエディタ作ったんだ。古いシステム用のエディタが必要な人は連絡ちょうだい（そんなに派手なもんじゃないけど）。このソフトウェアのクリエイターと研究者たちに感謝、マジでリスペクト。彼らは本物のエンジニアだ！" userName="dataf3l" createdAt="2025-02-19T22:56:17" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
