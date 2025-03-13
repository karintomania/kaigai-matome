+++
date = '2025-02-12T00:00:00'
months = '2025/02'
draft = false
title = '驚きのパフォーマンス向上！小さなJITでFFIが劇的に速くなる秘訣とは？'
tags = ["JITコンパイラ", "FFI", "パフォーマンス", "プログラミング", "開発ツール"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> 驚きのパフォーマンス向上！小さなJITでFFIが劇的に速くなる秘訣とは？

引用元：[https://news.ycombinator.com/item?id=43030388](https://news.ycombinator.com/item?id=43030388)

{{<matomeQuote body="Javaの制約ソルバー(Timefold)とCPythonを使ったFFIの経験から言うと、FFIのパフォーマンス問題はプロキシの使用にあることが多いね。JNIや新しいフォーリンインターフェースを使った直接FFI呼び出しは速いし、Javaメソッドを直接呼ぶのとほぼ同じ速度。ただ、CPythonとJavaのガベージコレクタは仲が悪いから、共存させるのは難しいよ。プロキシ(JPypeやGraalPy)を使うと余計なオーバーヘッドがかかるし、CPythonオブジェクトをJavaに渡すとプロキシが生成され、逆にそれをCPythonに渡すとまたプロキシが生まれるんだ。結果、JPypeのプロキシはFFIで直接呼ぶより1402%遅く、GraalPyのは453%遅いよ。結局、CPythonのバイトコードをJavaのバイトコードに翻訳して、CPythonのクラスに対応するJavaデータ構造を生成するようにしたら、プロキシを使うより100倍速くなった。でも、CPythonのバイトコードは不安定でドキュメントもひどいから、翻訳するのはおすすめできない。詳しくはブログを見てね。" userName="cchianel" createdAt="2025-02-13T05:51:51" color="#45d325">}}

{{<matomeQuote body="Goのcgoについての話もあるから見てみて。CとGoではリソースのやり取りに合意が必要で、Cコードは一つのスレッドで動くことを前提にしてたり、マルチスレッド環境には対応してなかったりする。CはGoの呼び出し規約や拡張スタックについて知らず、Cコードを呼ぶ際にはゴルーチンスタックの詳細を記録してCスタックに切り替える必要がある。どの言語でバインディングやCコードのラッピングをしても、Cの世界の中で生きているということだ。" userName="ignoramous" createdAt="2025-02-13T14:21:30" color="#38d3d3">}}

{{<matomeQuote body="FFIの話を聞く限り、PythonやJavaとCを接続するのはかなり良い感じなんだね。小さなCブリッジでつなぐのは一般的な解決策なんじゃないかな？" userName="LinXitoW" createdAt="2025-02-13T08:39:51" color="">}}

{{<matomeQuote body="JNIや新しい外国FFIはCPythonのC APIを使って通信するけど、主な問題はガベージコレクタをうまく働かせること。Javaのソルバーはスコア計算のためにユーザー定義関数を何度も呼び出すんだけど、その結果、Java側はCPython側に参照がないオペークなPythonポインタを保持しなきゃならないし、CPython側はJavaの一部オブジェクトのプロキシを生成しなきゃいけない。解決策の計算は長時間かかるから、メモリを解放しないとすぐにメモリ不足になる。Java側でメモリ解放するにはオペークなPythonポインタを持つアリーナを閉じなきゃいけないんだけど、アリーナが閉じられるとメモリがゼロクリアされちゃうため、CPythonがまだガベージコレクションしていないポインタがあると、次のサイクルでセグメンテーションフォルトが発生する可能性があるよ。JPypeはこのガベージコレクタをリンクさせるためにダークマジックを使うけど、Java関数の中でCPython関数を呼ぶ際にはパフォーマンスの問題が生じる。GraalPyも同様に、PythonがJavaコードを呼び、さらにPythonコードを呼ぶ場合にパフォーマンス問題がある。" userName="cchianel" createdAt="2025-02-13T13:21:19" color="#45d325">}}

{{<matomeQuote body="IPCメソッドはこうしたケースにどう適合するんだろう？キューやファイル、HTTPでの会話はどうかな？" userName="high_na_euv" createdAt="2025-02-13T13:12:45" color="">}}

{{<matomeQuote body="実は、フォーリンAPIのプロトタイプを構築する際にIPCメソッドが使われたよ。JPypeを使わない場合、JVMを別プロセスとして起動しなきゃならないから。APIレベルでIPCメソッドが使われ、JVMが自身のCPythonインタプリタを起動して、CPythonとJavaが’cloudpickle’で互いに関数やオブジェクトを送信していたんだ。内部呼び出し全てにIPCを使うのは、かなりのオーバーヘッドが出る可能性があるけど、プロトタイピングする価値はあるかも。" userName="cchianel" createdAt="2025-02-13T13:36:33" color="#45d325">}}

{{<matomeQuote body="Rails At Scaleとbyrootのブログを見ていると、Rubyの内部やパフォーマンスの深い議論に興味があるには素晴らしい時期だね！最近のRubyとRailsの改善もあって、全体的にRubyistにとって良い時だよ。" userName="chris12321" createdAt="2025-02-12T23:05:21" color="">}}

{{<matomeQuote body="本当に？俺にはRubyが衰退しているように見えるな。特定のニッチなアプリケーションにはまだ人気あるけど、栄光の日々は過ぎたって感じ。最近の改善は良いけど、2025年にJITが本当に技術的にワクワクするかは分からないな。" userName="jupp0r" createdAt="2025-02-13T00:07:24" color="">}}

{{<matomeQuote body="Rubyが世界で最も人気のある言語に戻ることはないだろうけど、それでも好きな人たちが最近のパフォーマンスやドキュメント、ツール、エコシステム、コミュニティの改善に興奮するのはいいことだと思うよ。" userName="chris12321" createdAt="2025-02-13T00:21:20" color="#45d325">}}

{{<matomeQuote body="Rubyは、Railsが開発者をクラウドから解放するような逆行することをして、再び人気が出ると思うな。Railsとお気に入りのLLMツールの組み合わせより生産的なウェブ開発環境はないし、Gen ZをRailsに引き戻すには時間がかかるけどね。" userName="faizshah" createdAt="2025-02-13T02:54:03" color="">}}

{{<matomeQuote body="俺の印象では、Railsアプリって維持しづらいダイナミック型のごちゃ混ぜで、早い段階で市場に出て資金を得るには便利だけど、スケールが大きくなると崩壊しちゃうって感じ。Rubyには魔法が多すぎて、何が起こっているかわからなくなることもあって、効率が悪くなることがあって、それが便利さの理由を無くしてしまうって思うんだけど、この感覚は古いものなのかな？何が変わった？" userName="jimmaswell" createdAt="2025-02-13T05:15:21" color="">}}

{{<matomeQuote body="Twitterの失敗が心配なら、その認識は古いよ。Twitterは2009年にRubyから移行し始めたし、CRuby VMとRailsはその10年以上の間にかなりの開発が行われた。Ruby 1.8.xを使っていた頃は、純粋なASTインタプリタだったと思うし、今はバイトコードインタープリタに最適化されている。ガベージコレクタもすごく頑丈になっているし、非常に速いJITコンパイラも含まれている。多くのライブラリも最適化され、バグも修正されているよ。Railsも同様に進化して、パフォーマンスや堅牢性が向上した。" userName="nirvdrum" createdAt="2025-02-13T09:00:44" color="#785bff">}}

{{<matomeQuote body="CRuby VMはFail Whaleの時期と比べて2～3倍速くなってるし、JITでさらに倍増の4～6倍って感じ。Railsも1.5倍から2倍速くなったんだ。今のCPUは2009年と比べて20～30倍速いし、SSDも100～1000倍速い。データベースもずっと成熟してスケールしやすい。TwitterをRailsで再現してどうなるか想像しちゃうね。" userName="ksec" createdAt="2025-02-13T15:14:09" color="#ff5c5c">}}

{{<matomeQuote body="> そんなことを考えることがあるけど...<br>MastodonはRuby on Railsで書かれてるよね。" userName="caiusdurling" createdAt="2025-02-13T16:29:46" color="">}}

{{<matomeQuote body="あんまり良いお話じゃないかも。聞いたところによるとMastodonはスケールするのが結構難しいらしい。ActivityPubのせいもあるかもだけど、Rubyの実行モデルのせいもあるかも。Ruby（特にRails）の使い方に関しては「泥の塊」問題が昔から気になってるんだ。" userName="johnmaguire" createdAt="2025-02-13T16:41:24" color="">}}

{{<matomeQuote body="Railsも他のフレームワークと同じように泥の塊になり得るよ。速い言語ではないけど、多くの動的言語よりは速い。ネイティブ型が不足してるけど、かなり大きなRailsアプリも管理できるよ。ChimeやStripe、ShopifyもRoRを使ってるし、彼らの金融システムはかなり複雑で高スケールなんだ。" userName="m00x" createdAt="2025-02-13T05:27:23" color="#ff33a1">}}

{{<matomeQuote body="リファクタリングできない泥の塊問題は確かに存在するから、StripeやShopifyはSorbetを使って静的型のコードベースにしてるんだ。そういえば、StripeはRubyを使ってるけどRailsは使ってないよ。" userName="amomchilov" createdAt="2025-02-13T05:36:58" color="">}}

{{<matomeQuote body="Sorbetは泥に拍車をかけると思うけど、各自の考え方次第だね。" userName="byroot" createdAt="2025-02-13T06:54:55" color="">}}

{{<matomeQuote body="一部のStripeのサービスはRails使ってるんだ。型があるのは助かるけど、必須じゃないよ。Chimeにいた時は、ただRailsだけでうまくやってたよ。" userName="m00x" createdAt="2025-02-14T21:02:27" color="">}}

{{<matomeQuote body="見たテストによると、Pythonよりは速いかもしれないね。" userName="weaksauce" createdAt="2025-02-13T20:03:56" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="> Railsも他のフレームワークと同じように泥の塊になり得るよ。<br>でも、Railsはこの問題を1枚のスライドにまとめられるかもね。" userName="taurknaut" createdAt="2025-02-13T15:36:05" color="">}}

{{<matomeQuote body="> 速い言語ではないけど、多くの動的言語よりは速い。<br>具体的にはどの言語のこと？<br>僕の経験では、Rubyはほとんどの人気言語においてベンチマークでしばしば遅れを取ってることが多いよ。" userName="fredrikholm" createdAt="2025-02-13T07:10:49" color="#45d325">}}

{{<matomeQuote body="Python？YJITやJRuby、Truffle Rubyを使ったRubyコードは、通常Pythonよりベンチマークで勝るって聞いたことあるよ。直接的な比較は見たことないけど、Truffle RubyがElixirやErlang、PHPよりも単一スレッドのCPUバウンドタスクで速いのも驚かないな。もちろん、他の言語にはまだまだ遅れを取ってるけど、驚くほど良いんだよね。" userName="Lio" createdAt="2025-02-13T07:56:37" color="">}}

{{<matomeQuote body="私の仕事では、TruffleRubyを使ったコードベースがRubyとJavaのライブラリを組み合わせて、Goと同じリクエスト毎秒のペースをキープできてるのを見たよ。もちろん、JVMはそれを実現するためにメモリを多く使うけどね。最近は主にGoでコード書いてるけど、Rubyも必ずしも遅いわけじゃないし、コーディングが楽しいんだよね。" userName="relistan" createdAt="2025-02-13T08:38:03" color="#45d325">}}

{{<matomeQuote body="PythonやYJITを使ったRuby、JRubyやTruffle RubyはよくベンチマークでPythonを上回ることがあるけど、基準が変わりすぎてない？最初は『他のいくつかより速い』って話だったのに、今は『最も遅い部類と競っている』感じがする。実際、SchemeやLispの方が一般的に速いし、マルチスレッド向けに設計されたランタイムと比べてシングルスレッドで速いのはフェアじゃないよね。トラフルRubyは本番使用に耐えてるの？その場合、どのくらい速い？" userName="fredrikholm" createdAt="2025-02-13T09:09:49" color="">}}

{{<matomeQuote body="基準を変える？もしかしたら私が言ってることを誤解してるかも。Pythonは最悪のスクリプト言語じゃないし、PerlやTCLはPythonより遅い。最初に聞いた『Rubyはどの動的言語より速いか？』はRubyがどの動的言語より遅いとは限らないって意味だったんだ。JRubyは特定のRailsワークロードではMRI Rubyより速くて、本番使用に耐えられるよ。トラフルRubyは97％がMRIと互換性があると言われてるけど、Railsにはまだ本番使用向けじゃないと思う。" userName="Lio" createdAt="2025-02-13T11:47:39" color="#785bff">}}

{{<matomeQuote body="いい答えをありがとう。気を悪くするつもりはなかったんだけど、そう受け取られたならごめんなさい。PerlやTcl、Smalltalkはあまり使われてないから思いつかなかった。性能に関しては触れやすいトピックで、特に『XはCより速い』って主張がよく間違ってるから敏感になってしまう。ここではそういうことはなかったけど。" userName="fredrikholm" createdAt="2025-02-13T11:57:12" color="">}}

{{<matomeQuote body="JavaのHotspotは元々SmalltalkやSELFのために設計されたんだ。これらのシステムはダイナミックで、完全なグラフィカルワークステーションを作るために作られた。PerlやTCL、Python、Rubyは最初からSmalltalkのJIT論文からはほど遠い実装だったよ。" userName="pjmlp" createdAt="2025-02-13T21:51:20" color="#38d3d3">}}

{{<matomeQuote body="＞気を悪くするつもりはなかったんだけど、そのように受け取られたならごめんなさい。“全然そんなことは思ってなかったよ。会話が楽しめてる。”Smalltalkを挙げるのは面白いね。YJITのいくつかのアイデアはそこから来てると信じてる。『Cより速い』の話はRubyやJITランタイムに特有のもので、Cが一般的に桁違いに速いのを暗示してるわけじゃないんだ。Rails 8の新機能とRubyインフラの改善が進んで、またワクワク出来る技術になってるよ。" userName="Lio" createdAt="2025-02-13T12:26:19" color="#785bff">}}

{{<matomeQuote body="RubyがCより速いのはYJITのおかげで、Ruby標準ライブラリやコア言語の多くをRubyコードに移動することで最適化が進んでるから。Javaもバイトコードを利用してその場で最適化できるのと似ている。" userName="weaksauce" createdAt="2025-02-13T20:07:23" color="#ff5733">}}

{{<matomeQuote body="Twitterの失敗はRailsの欠点よりもスキルの問題だったんだ。『Hatching Twitter』を読めば、彼らがコードに精通してなかったことがすぐにわかる。" userName="faraaz98" createdAt="2025-02-13T06:06:46" color="">}}

{{<matomeQuote body="これは結構正確。Rubyはただ遅いだけで、ランダムにスケールで壊れやすくはない。" userName="taurknaut" createdAt="2025-02-13T15:35:08" color="">}}

{{<matomeQuote body="Rubyは決して『世界で最も人気のある言語』じゃなかった。Railsは一時的にアメリカに人気があったけど、世界の他の地域では常にニッチだった。" userName="pier25" createdAt="2025-02-13T17:29:31" color="">}}

{{<matomeQuote body="Railsは最近復活を遂げていて、ここ数年の間で最も楽しいプログラミング体験の一つだと思ってる。新しいプロジェクトは全部Railsでやるつもりだよ。『Railsに合わないプロジェクトはどうする？』そんなプロジェクトは引き受けない！" userName="adamtaylor_13" createdAt="2025-02-13T00:28:44" color="#ff5733">}}

{{<matomeQuote body="Rubyを使う理由は速さじゃなくて、使いやすさと実績あるパッケージが揃ってるからなんだよね。" userName="mbb70" createdAt="2025-02-13T02:30:50" color="">}}

{{<matomeQuote body=">誰かがRubyに代わる言語を探しているの？<br>Crystalも使いやすさがあるし、Rubyに似た部分も多いけど、長年の経験から多くのパッケージがあるRubyには追いつくのが大変だと思う。PythonやJS、Goのエコシステムも盛況なのに、Railsはそんなに他と比べて優れているとは思えないな。" userName="brigandish" createdAt="2025-02-13T04:41:30" color="">}}

{{<matomeQuote body=">Railsは本当に他の選択肢と比較してそんなに優れているの？<br>本当にそう思うね。いろんなウェブフレームワークを試したけど、Railsの生産性にはかなわないと思ってる。ツールもエコシステムも整理されてて、ドキュメントも良い。使っていて本当に楽しいよ。ElixirのPhoenixやPHPのLaravelもいいと思うけど、Railsには敵わないって感じ。" userName="the_gastropod" createdAt="2025-02-13T23:59:53" color="#ff5c5c">}}

{{<matomeQuote body="成熟した競争相手がTypescriptエコシステムに現れたら乗り換えるかも。Rubyは独特の魅力があって、Typescriptでは感じられない魔法がある気がする。でも今は安定した技術を重視してRubyでRailsが好きだよ。" userName="adamtaylor_13" createdAt="2025-02-14T20:16:06" color="">}}

{{<matomeQuote body=">CrystalはRubyの速さを目指しているの？<br>いや、Rubyの代わりになるわけじゃないよ。似たような構文があるだけ。速さが欲しいならMRubyをチェックしてみて。" userName="Alifatisk" createdAt="2025-02-13T10:07:08" color="">}}

{{<matomeQuote body=">3rd partyライブラリを呼び出す代わりに、外部関数を呼ぶコードをJITできないかな？<br>LuaJITのFFIがその考え方を基にしているみたいだよ。LuaJITのFFIはこのおかげでかなり速いらしい。" userName="haberman" createdAt="2025-02-13T00:29:48" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Rubyは遅い言語ってイメージあるけど、YJITがRubyコードを最適化できるから、できるだけRubyで書いた方がいいんだよね。Cで書いてたら最適化の恩恵が薄れるし、もしネイティブに行くならもっとネイティブで書きたくなるもんだよ。" userName="internetter" createdAt="2025-02-12T22:57:23" color="">}}

{{<matomeQuote body="Javaが適切なJITを得る過程で、UI処理のJavaコードがボトルネックになりCに書き直されたことがあった。その後JITが向上して、FFIのオーバーヘッドがCコードの方が速く実行されるようになったんだよね。プログラム言語の進化で、こういう状況は意識しておくべき！" userName="hinkley" createdAt="2025-02-12T23:26:14" color="#785bff">}}

{{<matomeQuote body="JITの理想は再最適化することで、長寿命のアプリでは、デスクトップやサーバー向けのワークロードで恩恵が大きい。DalvikのJITはイマイチだったけど、ARTの登場でむしろJITの方がC呼び出しより速くなったんだ。" userName="pjmlp" createdAt="2025-02-12T23:09:59" color="#ff5c5c">}}

{{<matomeQuote body="計算に関してはFORTRANが一番速い場合が多い。テストしてみるとFORTRANは常に少し速くて、特にマトリックス計算ではその比率が顕著だったよ。使うコンパイラはgfortran、gcc、python3ね。" userName="genewitch" createdAt="2025-02-13T11:00:27" color="">}}

{{<matomeQuote body="確かにFORTRANは高速だけど、デスクトップやサーバーのワークロードには当てはまらないかも。最近のFORTRANはいい感じで、学ぶべきだと思う。Pythonに頼らずに、もっとFORTRANを勉強しようぜ。" userName="pjmlp" createdAt="2025-02-13T11:54:55" color="">}}

{{<matomeQuote body="JITやAOTコンパイラを持つ管理言語を使う時は、できるだけその管理言語で書いた方が最適化の恩恵を大きく受けやすい。WebブラウザもC/C++でなく、特権JavaScriptに頼って書くことが多い。その結果、標準ライブラリの大部分がネイティブコードで書かれてないこともあるんだ。" userName="kevingadd" createdAt="2025-02-12T23:01:51" color="#38d3d3">}}

{{<matomeQuote body="Rubyもその点を理解して、YJITモードの時は標準ライブラリのいくつかのメソッドがC実装から純粋なRuby実装に切り替わるようになった。YJIT最適化されたRubyはやっぱり性能がいいからね。" userName="kenhwang" createdAt="2025-02-12T23:13:45" color="#ff33a1">}}

{{<matomeQuote body="えっ、そうなんだ！JavaScriptの標準ライブラリはほとんどC++で書かれてると思ってたのに。" userName="internetter" createdAt="2025-02-12T23:05:11" color="">}}

{{<matomeQuote body="コンパイラやランタイム、アロケーターなどはほとんどC++だけど、ライブラリ関数に関しては考慮が必要だよ。JSとネイティブコードの間はコストがかかるから、たまに配列のソートなんかをJSでやった方がいい場合もあるんだ。" userName="achierius" createdAt="2025-02-13T01:04:37" color="">}}

{{<matomeQuote body="v8の標準ライブラリの多くはTorqueというカスタム言語で書かれてるんだ。特にarray.findメソッドの例があるよ。" userName="jitl" createdAt="2025-02-14T12:42:48" color="">}}

{{<matomeQuote body="FFIは最適化できないコードの境界線を持つから、ネイティブコードに頻繁に呼び出すのはコスト高なんだ。従って、RubyのYJITが今後のパフォーマンスに影響するなら、余計に考慮が必要だね。" userName="neonsunset" createdAt="2025-02-12T23:18:10" color="">}}

{{<matomeQuote body="JPCamaraがRuby#eachメソッドがRubyで書き直された理由を詳しく説明してる。YJITは素晴らしい成果を出してるよ。" userName="hahahacorn" createdAt="2025-02-12T23:18:29" color="#38d3d3">}}

{{<matomeQuote body="FFIの呼び出しが遅いと、ネイティブコードの使い方に問題があるってことだよね。頻繁なFFI関数の呼び出しを避ける方法を探すべきで、大きなループの中の多くの呼び出しは特に避けたい。もし避けられない場合、そのループをCに移すしかないかも。FFIを速くする方法があれば、ループをRubyに残せる。多くのRubyアプリを書く人には魅力的だよね。FFIの利点は、Cライブラリを使うのにCを書かずに済むことだ。" userName="kazinator" createdAt="2025-02-13T02:03:19" color="#45d325">}}

{{<matomeQuote body="だいぶ前から早いよ。" userName="doppp" createdAt="2025-02-12T23:16:51" color="">}}

{{<matomeQuote body="“早い”という言葉にもう少し考慮を加えよう。Rubyをパフォーマンスのために最適化する時、X千のヒープアロケーションを減らす方法を議論するが、RustだとコンパイラにループがSIMDでの最適化が必要だと示すことを話すんだ。この二つのコミュニティは基準が全然違う。Rubyは十分にパフォーマンスがある。JIT作業に期待してたPythonの開発者もいたし、Node.jsに近づくのが目標だから、Rubyは十分頑張ってるよ。全ての言語が速くなるのを祝いたいね。" userName="schneems" createdAt="2025-02-13T02:53:22" color="#ff5733">}}

{{<matomeQuote body="50%や2倍の速度改善でも、まだまだ遅い言語だと思う。Pythonの範疇だね。" userName="Thaxll" createdAt="2025-02-12T23:23:17" color="">}}

{{<matomeQuote body="ここで“早い”とは何を指すのかわからないけど、RubyはだいたいCの150分の1ぐらいの速さだよね。" userName="CyberDildonics" createdAt="2025-02-12T23:29:04" color="">}}

{{<matomeQuote body="JITがうまくいけば、RubyはGoやNodeJSの間ぐらいの性能になる。JITがないとLuaと同じぐらい。" userName="kenhwang" createdAt="2025-02-12T23:36:59" color="">}}

{{<matomeQuote body="NodeはV8を使っていて、動的な型システムの影響を減らす多くの最適化をした高度なJITコンパイラがある。このRuby YJITがそれを上回るという主張はデータに支持されてないよ。" userName="neonsunset" createdAt="2025-02-13T00:27:54" color="">}}

{{<matomeQuote body="Rubyのコンパイラがより優れているわけじゃない。RubyのコードがJITの設計で最適化しやすいからだ。RubyのJITのインスピレーションは、まず安定したJSのサブセットでテストされて、良い結果が出たんだ。佐藤が言った通り、Goはコンパイラ言語にしては遅いけど、Rubyの上限ぐらいの速さがわかるから何とも言えない。" userName="kenhwang" createdAt="2025-02-13T00:44:06" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="その白書については、リンクかタイトルを教えてほしいな。興味があるからもっと読みたい。" userName="plagiarist" createdAt="2025-02-13T02:18:27" color="">}}

{{<matomeQuote body="これが始まりの論文だと思う（フォローアップの論文もいくつかある）：https://arxiv.org/pdf/1411.0352v1　著者は最終的にYJITの開発のために雇われたんだ。" userName="kenhwang" createdAt="2025-02-13T03:23:35" color="#ff33a1">}}

{{<matomeQuote body="“うまくJITされるコード”ってどういう意味？たしかにJITは数値計算や配列のループは速くできるけど、一般的なプログラムも速く動くわけじゃないよ。" userName="CyberDildonics" createdAt="2025-02-12T23:50:52" color="">}}

{{<matomeQuote body="Rubyでは、変数やメソッドの入力・返却型が静的に推測できて、変数のスコープやライフタイムが有限な状態のコード。パフォーマンス向上に多く寄与しているのは、型チェックや動的なルックアップが不要になるからだね。要するに、静的型付きのコンパイラ言語っぽく書くこと。" userName="kenhwang" createdAt="2025-02-13T00:17:16" color="#785bff">}}

{{<matomeQuote body="Rubyって遅い言語の代表だと思ってたけど、実際には何よりも速いの？" userName="nicoburns" createdAt="2025-02-13T04:46:47" color="">}}

{{<matomeQuote body="Pythonより速かった気がするな。数年前の話だけど、どっちもJITコンパイラを追加したみたいだから、最近のバージョンはどうなんだろう。" userName="pansa2" createdAt="2025-02-13T05:29:06" color="">}}

{{<matomeQuote body="そう言われることもあるけど、ちゃんとしたベンチマークは見たことないな。PyPyみたいなパフォーマンス重視のも含めたらどうなんだろ？RubyがPythonより速いっていうベンチマークどこかにないの？" userName="chefandy" createdAt="2025-02-13T05:54:13" color="#ff5c5c">}}

{{<matomeQuote body="最近のCPythonにはJITが内蔵されてるらしいから、Rubyみたいな成果が出るといいな。" userName="chefandy" createdAt="2025-02-13T15:06:11" color="">}}

{{<matomeQuote body="CPythonについての話だね。PyPyとJITコンパイルされたRubyのベンチマークってあるのかな？" userName="pansa2" createdAt="2025-02-13T06:00:02" color="">}}

{{<matomeQuote body="そのリンクのやつは比較してるよ、pypy 3.10.14とruby/yjit 3.4.1の結果だと思う。新しいバージョンがあったら別だけど。" userName="chefandy" createdAt="2025-02-13T15:01:40" color="#ff5c5c">}}

{{<matomeQuote body="Tcl、Vbscript、bash/shもあるよ。Tclは最初のドットコム時代にAOLserverで盛り上がってた。" userName="epcoa" createdAt="2025-02-13T07:22:12" color="">}}

{{<matomeQuote body="Tcl以外にもVigneteや自社のSafelayerがあるよ。2003年からパフォーマンス目的でTclの拡張を書いてきたから、JIT/AOTがない言語は使わないようになった。創業メンバーはOutSystemsを作ったけど、.NETを使っとるね。" userName="pjmlp" createdAt="2025-02-13T09:20:27" color="#ff5c5c">}}

{{<matomeQuote body="Rubyを10年以上使ってるけど、最近の発展が楽しみだよ。" userName="eay_dev" createdAt="2025-02-13T05:57:24" color="">}}

{{<matomeQuote body="完全に安全で理にかなったアプローチは、コマンドラインでデータを渡せるCコードを書くことだね。結果はコマンドラインかメモリページに吐き出して、RubyでCプログラムを実行すればオッケー。" userName="tonetegeatinst" createdAt="2025-02-13T00:29:36" color="">}}

{{<matomeQuote body="その通り。多くの人がUnixプロセスを理解してなくて、バインディングやFFIが必要な場面がどれほど稀か気付いてない。curlを使えば良いだけのhttpsクライアントが多すぎる。" userName="grandempire" createdAt="2025-02-13T01:58:05" color="">}}

{{<matomeQuote body="このセクションの詳細を教えてほしい。毎回psqlにシェルで出すのは遅すぎると思う。Cで書いた場合のように、ほぼすべてのケースでバインディングが必要だと思う。バインディングはVMとネイティブライブラリの架け橋なんだから。" userName="nirvdrum" createdAt="2025-02-13T03:51:47" color="#ff5c5c">}}

{{<matomeQuote body="プロセスを生成するのはすべての異言語通信に適しているわけではないけど、時にはそうでありがちだから見落とされがち。ライブラリを使うのに慣れてると、もっとライブラリを作るようになるよ。Postgresの接続ライブラリを使う方が良いと思う。持続的な通信はマルチプロセスのstdin/stdoutデザインでも機能するし、メールプロトコルもそうだよ。この方法で動くSQLクライアントを作ることもできる。バッチインポートスクリプトでpsqlをクエリごとに実行したこともあるけど、良い結果が出たよ。" userName="grandempire" createdAt="2025-02-13T05:14:18" color="">}}

{{<matomeQuote body="> プロセス生成がすべての異言語通信に適しているわけではない、その通りだね。多くの人はUnixプロセスを理解せず、バインディングがどれほど稀か認識してない。でもこれは強い主張だね。Rubyエコシステムについて言っているのか、一般論なのかわからない。データベースライブラリのバインディングはRubyエコシステムの中で最も一般的だから、これを挙げたよ。著者はネイティブコードを使うなと言ってるけど、フィールドが必要ならネイティブ拡張は避けたいことが多い。だけど、FFIはネイティブ拡張よりずっと遅いことが多いから、ここでの目的はそれを速くする方法を探ることだよ。著者がパフォーマンスセンス的なコードを持ってるからこの作業をしてるって信じるべきだと思う。" userName="nirvdrum" createdAt="2025-02-13T08:42:03" color="#38d3d3">}}

{{<matomeQuote body="君は俺のコメントを著者への攻撃だと解釈した。でも特別なケースでFFIを最適化するなら、いい方法だと思うよ。> ホットパスでプロセスを生成するのは、その認識を助けない。C/Java/Rustなんかで数値演算をしてOSにマルチコアスケジューリングを任せれば、Rubyの強みを活かせるよ。Linuxのfork/execオーバーヘッドを過大評価してると思う。ホットパスがそれほどホットなら、Ruby関数を呼び出さない方が良いよ。" userName="grandempire" createdAt="2025-02-13T14:33:37" color="#45d325">}}

{{<matomeQuote body="> 君は俺のコメントを攻撃だと解釈した。特別なケースでFFIを最適化するなら良い方法だと思う。俺たちはRubyアプリを動かしてるんだ。Railsで具体的に考えよう。ホットパスでたくさんRubyだと、別の言語に書き換えるのと同じだよ。だけどホットパスでRubyは速いこともある、特にJITコンパイルされた場合にはね。すべてのCバインディングが必要な時にRubyの中で組み込むことが有利だよ。" userName="nirvdrum" createdAt="2025-02-13T17:52:06" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（4）">}}
{{<matomeQuote body="俺は別に失礼なことを言うつもりはないよ。君の一文だけを抽出して、俺が答えに沿った形で反応する努力をした結果、こうなっちゃったみたい。過去のやり取りが通じなかったのかもしれない。でも明らかに俺はRubyパフォーマンスに興味があるんだ。君の言ってることも理解するけど、俺の意見に至るプロセスに耳を傾けて欲しい。ただ、あまりにも強い主張をすると、データが要ると思う。" userName="nirvdrum" createdAt="2025-02-14T08:36:05" color="">}}

{{<matomeQuote body="これは少し関連してるかも。このライブラリはJVMCIを使ってネイティブラリを呼び出すためのarm64/amd64コードを生成するんだ。あまりご存じないかもしれないが、ここを参照するといいよ。https://github.com/apangin/nalim" userName="evacchi" createdAt="2025-02-13T20:39:23" color="">}}

{{<matomeQuote body="Cで書けるのは何のこと？FFIライブラリは、Rubyからネイティブ拡張を書くことなくライブラリメソッドをダイナミックにバインドするんだ。それが大きな生産性向上につながるし、CRuby、JRuby、TruffleRuby間でコードを共有できるよ。もしブート時にすべてのバインディングを静的に決められれば、スタブを書いてメソッドテーブルに挿入できるけど、その場合でも実行時に起こるからJITになる。" userName="nirvdrum" createdAt="2025-02-13T08:48:44" color="#785bff">}}

{{<matomeQuote body="私が言った”それ”は、TFAからのこの部分：＞”とても限られたAPIでネイティブ拡張を書くべきだ。ほとんどの作業はRubyで行って、ネイティブコードは非常に薄いラッパーにすぎない。”私たちの主な意見の相違は、あなたの主張が、実行時のコンパイルは全てJITに該当するということ。私はJITはダイナミックコンパイルだと思っている。" userName="aidenn0" createdAt="2025-02-13T22:49:04" color="">}}

{{<matomeQuote body="おまけだけど、＞”通常、私はFFIを避ける。正直なところ、ネイティブ拡張と同じパフォーマンスを提供しないからだ。”私は管理が大変だからFFIやそれを使うgemを避けている。自分でビルドする方が楽だし。" userName="brigandish" createdAt="2025-02-13T05:01:29" color="">}}

{{<matomeQuote body="libffiは遅いし、JITは実行しないと思う。libffiでは関数のためのディスクリプタオブジェクトを構築するんだ。FFI呼び出し時には、渡したい値のポインタの配列とディスクリプタを渡す必要がある。呼び出し準備は遅いんだよ。FFI JITなら、引数値を直接操作できるはず。" userName="kazinator" createdAt="2025-02-13T02:09:42" color="#785bff">}}

{{<matomeQuote body="確かにネイティブマシンコードを使うけど、少なくともLinuxではJITを実行時に生成することはないと思う。実行時に無駄に多くの引数を読み込んで、効率的じゃない。" userName="dzaima" createdAt="2025-02-13T14:46:05" color="">}}

{{<matomeQuote body="libffiはRubyの型を解釈できないから、Rubyの型をCの型に変換するコードが生成されたマシンコードに”キャッシュ”されるのが利点だね。" userName="tenderlove" createdAt="2025-02-12T23:54:30" color="">}}

{{<matomeQuote body="libffiはFFI呼び出しでJITしないし、引数の値を自分で設定する必要がある。ストリング引数の場合、RubyのストリングオブジェクトをCのストリングポインタに変換するコードを書く必要があるし、libffiはかなり遅い。" userName="dzaima" createdAt="2025-02-13T01:20:14" color="">}}

{{<matomeQuote body="やっぱりlibffiの仕組みって難しいよね。GOTを使ったトリックでもやってるのかと思ったけど、たぶん正しいよ。" userName="almostgotcaught" createdAt="2025-02-13T00:18:54" color="">}}

{{<matomeQuote body="この投稿、tenderworksが書いたんじゃないかな。" userName="tenderlove" createdAt="2025-02-12T23:34:01" color="">}}

{{<matomeQuote body=">“YJITはRubyコードを最適化できるからRubyを多く書くことを勧めるよ。”<br>いや、CコードはYJIT使ってもRubyより全然速いから、その理由はちょっと納得いかないな。でも他にも良い理由はありそう。" userName="IshKebab" createdAt="2025-02-13T09:02:44" color="#ff5c5c">}}

{{<matomeQuote body=">“Ruby + YJITはCより速いこともある。”<br>僕もどこかで見たことあるけど、Ruby + YJITがCに近い速さに達する場合があるらしい。でもウォームアップ時間が必要だったりするんだよね。" userName="Alifatisk" createdAt="2025-02-13T10:09:35" color="">}}

{{<matomeQuote body=">“Ruby Outperforms C”はC拡張から呼ぶコストについてのバイトかもね。" userName="igouy" createdAt="2025-02-15T18:40:44" color="">}}

{{<matomeQuote body="それはちょっと信じがたいな。JITがCを超えるって話はよく聞くけど、大体は微小ベンチマークの話なんだよね。YJITは全然無理だと思う。実際、YJITのサイトでもRubyの2倍早いって言ってるだけだし、Cより遅いはず。" userName="IshKebab" createdAt="2025-02-13T20:38:48" color="#ff5733">}}

{{<matomeQuote body="そのプレゼン見つけられたらいいな。YouTubeで探してみるよ。" userName="Alifatisk" createdAt="2025-02-14T08:44:27" color="">}}

{{<matomeQuote body="2025年にRailsで新しいプロジェクトを始める理由って何かある？Elixir LiveViewもあるし。Rubyは好きだけど、activerecordはゴチャゴチャしてて、全体的に遅いしリアルタイム機能もないし。" userName="cpursley" createdAt="2025-02-13T13:52:01" color="">}}

{{<matomeQuote body="Railsはメインストリームだから、雇いやすいし、教本も多いし、困ったときに助けてくれるリソースが豊富だよ。Elixirよりも成熟したエコシステムがあるのはその理由。でも、個人的にはPhoenixを選ぶかな。" userName="arrowsmith" createdAt="2025-02-13T14:58:11" color="">}}

{{<matomeQuote body="それは納得。Elixirでこれが足りないみたいなライブラリってある？" userName="cpursley" createdAt="2025-02-14T13:34:03" color="">}}

{{<matomeQuote body="特に大きな問題は感じてないけど、サードパーティーツールとの統合のときに、Ruby SDKはあってもElixir SDKはなかったりすることが多いんだよね。公式サポートがないものも多くて。結局、自分で作れるから別にいいけど。" userName="arrowsmith" createdAt="2025-02-14T13:41:09" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（5）">}}
{{<matomeQuote body="RubyにTypeScriptみたいな型アノテーションはあるの？動的型付け言語にはあんまり時間をかけられないんだけど。" userName="shortrounddev2" createdAt="2025-02-12T23:02:38" color="">}}

{{<matomeQuote body="RubyにはRBSっていう型定義フォーマットがあって、サードパーティの型チェッカーもあるよ。運用されてるのはSorbetの方が多いかも。" userName="dragonwriter" createdAt="2025-02-12T23:36:53" color="">}}

{{<matomeQuote body="型アノテーションを言語に組み込まなかったのは大きなミスだと思う。Pythonは良いデザインで、アノテーションをASTやバイトコードの一部として利用できるから、外部ツールやライブラリが上手く使える。ヘッダーファイルにアノテーションを書くのは面倒過ぎる。" userName="zem" createdAt="2025-02-12T23:24:16" color="#45d325">}}

{{<matomeQuote body="個人的にはアノテーションは邪魔だと感じてる。型チェックはnilかどうかだけで充分。それに、良く設計されたインターフェースなら、型の間違いは避けられるはず。" userName="Lammy" createdAt="2025-02-12T23:33:22" color="">}}

{{<matomeQuote body="コードベースや協力者が増えると、型チェッカーが役立つことも多いよね。JITコンパイルでは、変数の型を動的じゃなく静的に知れると良い最適化ができるし、型アノテーションを使って関数の引数をドキュメント化することもできる。" userName="zem" createdAt="2025-02-12T23:50:16" color="#45d325">}}

{{<matomeQuote body="JITコンパイルでの最適化については考えたことなかった。教えてくれてありがとう！" userName="Lammy" createdAt="2025-02-12T23:52:54" color="">}}

{{<matomeQuote body="Sorbetは成熟した選択肢だね。RBSにはまだツールが少ないけど、Sorbetはちゃんと動く。ただTypeScriptほどの採用状況ではないし、少しクランキーだけど、役には立つ。" userName="FooBarWidget" createdAt="2025-02-13T03:16:37" color="">}}

{{<matomeQuote body="RBSはIRBで型補完に使われてるのが面白いね。将来的にはSorbetアノテーションの代わりになるインライン形式のRBSが決まるかも。" userName="Lio" createdAt="2025-02-13T08:36:56" color="">}}

{{<matomeQuote body="Rubyの文法が好きだけど静的型付け言語が良いならCrystalを見てみるといいよ。https://crystal-lang.org/とりあえず静的型付けだけど、型エラーはコンパイラで早期に捕まるし、型アノテーションはほとんど必要ない。人気がいまいちなのは何故だろう？" userName="dhqgekt" createdAt="2025-02-13T16:59:46" color="">}}

{{<matomeQuote body="このRubyっぽい構文だけじゃ、Rubyのセマンティクスやエコシステムが無いからあんまり魅力はないと思う。静的型付けが欲しいなら他にもっとエコシステムが強い選択肢があるよ。" userName="dragonwriter" createdAt="2025-02-13T17:11:07" color="">}}

{{<matomeQuote body="> 誰かがこれを勧めてくれた。これを広めるかも！<br>https://github.com/soutaro/rbs-inline?tab=readme-ov-file#rbs…" userName="Alifatisk" createdAt="2025-02-13T10:14:58" color="">}}

{{<matomeQuote body="静的解析ができないのがRubyに戻るのをためらう理由だね。" userName="teaearlgraycold" createdAt="2025-02-13T01:38:08" color="">}}

{{<matomeQuote body="静的型付けを求めるなら動的言語には向いてない。Rustは好きだけど、GraphQL APIを使ったツールを書くのは厳しかった。Rubyはデータをそのまま触れるから、生産性が高いんだ。静的解析するツールはちゃんとあるし、RubocopやSorbetが有名だよ。" userName="nirvdrum" createdAt="2025-02-13T08:22:07" color="#785bff">}}

{{<matomeQuote body="RubocopやSorbetを使ったことがあるけど、TypeScriptを使ってみたら比較にならない。TSは正規表現のパターンまで分析してくれるし、更新するたびに良くなっていくのが楽しみ。" userName="teaearlgraycold" createdAt="2025-02-13T21:52:43" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
