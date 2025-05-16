+++
date = '2025-05-09T00:00:00'
months = '2025/05'
draft = false
title = 'WASM 2.0 完成！注目の新機能は？'
tags = ["WebAssembly", "プログラミング", "パフォーマンス", "Web開発", "技術アップデート"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> WASM 2.0 完成！注目の新機能は？

引用元：[https://news.ycombinator.com/item?id=43934711](https://news.ycombinator.com/item?id=43934711)




{{<matomeQuote body="2025年3月の発表投稿でWASM 1.0からの変更点をまとめてるよ。<br>Wasm 2.0 Completed - https://webassembly.org/news/2025-03-20-wasm-2.0/<br>バージョン2.0で追加された機能のまとめはこれだよ<br>Vector instructions: 236個も新しい命令が増えたんだって！Wasmが元々持ってた命令数より多いんだ。IntelのSSEとかARMのSVEみたいな128ビット幅のSIMDが使えるようになって、オーディオ/ビデオコーデックとか機械学習、暗号化みたいな計算量の多いアプリが速くなるみたいだよ。<br>Bulk memory instructions: メモリの範囲やテーブルを速くコピーしたり初期化したりできる命令。<br>Multi-value results: 命令とかブロック、関数が複数の結果を返せるようになったよ。これである種の関数呼び出しが速くなったり、間接参照を避けられたりするんだ。それにブロック命令にも入力が持てるようになって、新しいプログラム変換もできるようになるんだ。<br>Reference types: 関数への参照とか外部オブジェクト（例えばJavaScriptの値）へのポインタが、不透明な第一級の値として使えるようになるんだ。テーブルはこういう参照値を保存するのに使われるようになって、新しい命令でWasmコード内からテーブルにアクセスしたり変更したりできるんだよ。さらにモジュールが違う型のテーブルを複数定義できるようになるみたい。<br>Non-trapping conversions: floatからintegerへの変換で、予期せずトラップ（エラー）することがなくなる新しい命令。<br>Sign extension instructions: 符号付き整数の幅を直接拡張できる新しい命令グループだよ。前はメモリから読み込む時だけだったんだ。" userName="lioeters" createdAt="2025/05/09 08:03:17" color="#ff5c5c">}}




{{<matomeQuote body="”Instructions, blocks, and functions can now return more than one result value, sometimes supporting faster calling conventions and avoiding indirection”<br>残念だけど、”有効になった”のに、Rust+LLVMはABI互換性の問題でこれを利用してないんだよね。Clang側がどうなのかは分からないな。" userName="adrian17" createdAt="2025/05/09 10:53:32" color="">}}




{{<matomeQuote body="これは確かに残念だね。でも、マルチバリューのメリットはたぶんすごく小さいよ。<br>関数内だと、せいぜい1〜3%のコードサイズ削減の機会があるくらいかな（https://github.com/WebAssembly/binaryen?tab=readme-ov-file#b...）、パフォーマンス上のメリットはないんだ。<br>関数間だとパフォーマンス上のメリットがあるかもしれないけど、wasm VMがランタイムインライン化みたいなことをどんどんやるようになると（これはwasm GCやそれにコンパイルされる言語でますます重要になってる）、そのメリットもなくなっちゃうんだよね。" userName="azakai" createdAt="2025/05/09 15:34:37" color="#ff33a1">}}




{{<matomeQuote body="32ビットARMでGCCを使ってマルチバリューの結果を得る方法が分かったよ。unionを使って2つの32ビット値を64ビット値にパックするんだ。で、その64ビット値を返す。そしてまたunionを使って64ビット値を2つの32ビット値に分割するんだ。他の32ビットアーキテクチャでは試してないけどね。" userName="Dwedit" createdAt="2025/05/09 14:35:01" color="#ff5733">}}




{{<matomeQuote body="私もZigでpacked structsを使って同じトリックを使ってるよ" userName="acheong08" createdAt="2025/05/09 15:09:05" color="">}}




{{<matomeQuote body="https://blog.rust-lang.org/2024/09/24/webassembly-targets-ch...<br>”結果として、RustでWebAssembly関数タイプレベルで複数の値を返す関数を書く方法は一切なくなった”<br>そしてRustのzulipでの似たような質問はこちら: https://rust-lang.zulipchat.com/#narrow/channel/122651-gener..." userName="adrian17" createdAt="2025/05/09 11:31:07" color="#ff33a1">}}




{{<matomeQuote body="https://blog.rust-lang.org/2025/04/04/c-abi-changes-for-wasm..." userName="burakemir" createdAt="2025/05/09 11:34:20" color="#ff33a1">}}




{{<matomeQuote body="どんなCPUでも動くくらい十分汎用的なISAにするか、特定のCPUで効率的にSIMDを利用するくらい十分特化するかのどっちかだよね。両立は無理。だから一部のプラットフォームでは、パックされた配列の要素ごとの乗算みたいな、より高レベルな操作を提供してるんだ。<br>実際のWASM2のSIMD命令が十分に汎用的なのかどうか、GitHubでレート制限されてるみたいで見れないから仕様が確認できないんだ（？？？）" userName="immibis" createdAt="2025/05/09 10:23:41" color="">}}




{{<matomeQuote body="https://web.archive.org/web/20250429065033/https://webassemb...<br>値は128ビットに固定されてて、i8x16/i16x8/i32x4/i64x2またはf32x4/f64x2になるんだ。だからすでに”機能の表面”は大幅に制限されてるんだよね。<br>個人的には、一番よくあるユースケース（例えばゲームで使われるvec4 / mat4x4の浮動小数点演算とか、整数に対する一般的なALUやビット操作）をカバーしてる限り、スカラー演算に頼るよりはずっと良いと思うな。" userName="flohofwoe" createdAt="2025/05/09 12:41:37" color="#45d325">}}




{{<matomeQuote body="`string.h`のほとんどを実装するのに十分だったし、”portable musl C code”より4から16倍速くなったよ。`simd-strfind.html`みたいな複雑なやつも含めてね。僕の取り組みはここに書いた：<br>https：//news.ycombinator.com/item？id=43935284<br>コードに飛びたいならこれだよ：<br>https：//github.com/ncruces/go-sqlite3/blob/main/sqlite3/libc..." userName="ncruces" createdAt="2025/05/09 17:13:51" color="#ff5c5c">}}




{{<matomeQuote body="＞ apparently I’m rate-limited on GitHub （？？？） and therefore can’t see the spec．Are you also on Firefox？ I’ve been getting those 429s a lot over the past week or so． I haven’t changed my configuration other than I’m religious about the ”check for updates” button, but I cannot imagine a world in which my release-branch browser is a novelty． No proxies, yes I run UBO but it is disabled for GH" userName="mdaniel" createdAt="2025/05/09 14:39:48" color="">}}




{{<matomeQuote body="昨日iOSのOrionでもいくつかそれがあったな．他のiOSブラウザと同じエンジンだし、GitHubが嫌いなユーザーエージェント送ってるのかもね？" userName="eppsilon" createdAt="2025/05/09 20:52:28" color="">}}




{{<matomeQuote body="時期尚早な最適化はダメだね．このSIMDのややこしいやつは、可変サイズのフレキシブルベクター提案（https：//github.com/WebAssembly/flexible-vectors）に従えば、もっとずっとスマートにできたのにさ．" userName="singularity2001" createdAt="2025/05/09 15:31:27" color="#785bff">}}




{{<matomeQuote body="次のバージョンでそれ（フレキシブルベクター）を取り入れられるのかな？それとも今までの作業が水の泡になっちゃう？" userName="mycall" createdAt="2025/05/10 01:11:49" color="">}}




{{<matomeQuote body="”the browsers vendors have weaponized web standards complexity against any newcomers”<br>https：//joeyh.name/blog/entry/WASM_Wayland_Web_WWW/" userName="singularity2001" createdAt="2025/05/10 10:10:31" color="">}}




{{<matomeQuote body="マルチバリューの結果は、これから出てくるCommon Lispの実行環境にとって最高だよ．" userName="varjag" createdAt="2025/05/09 13:02:38" color="#38d3d3">}}




{{<matomeQuote body="One can always compile CL to CPS, then ”returning” is just calling the current continuation, and then passing multiple values to the current continuation is trivial （since that’s always possible）． Since WASM is single-threaded there is not concurrency risk with using closures so extensively, though one pays the full price of call/cc when implementing this way, which means that the stack becomes a heap, which is not great for performance．" userName="cryptonector" createdAt="2025/05/10 05:12:36" color="#785bff">}}




{{<matomeQuote body="つまりさ、CLをTuring machine tapeにコンパイルできるってのと同じで、全然現実的じゃないってことだよ．" userName="varjag" createdAt="2025/05/10 07:57:21" color="">}}




{{<matomeQuote body="彼らは最後にも”In a future post we will take a look at Wasm 3.0, which is already around the corner at this point！”と言っているから、Wasm 3.0はかなり早く来るってことかな？" userName="romperstomper" createdAt="2025/05/09 15:47:23" color="#ff5c5c">}}




{{<matomeQuote body="WebAssembly 3.0のドラフトがここにあるよ：WebAssembly Specification - Release 3.0 (Draft 2024-11-07) https://webassembly.github.io/spec/versions/core/WebAssembly... (PDF)<br>ソースはこれ： https://github.com/WebAssembly/spec" userName="lioeters" createdAt="2025/05/09 20:19:22" color="#785bff">}}




{{<matomeQuote body="WebAssemblyの仕様書は分かりやすいけど、Wasmに興味はあるけど仕様書は読みたくないって人向けに、WebAssembly from the Ground Up (https://wasmgroundup.com/) ってオンライン本があるよ。JavaScriptで簡単なコンパイラを作りながらWasmを学べるんだ。<br>最初はJSでバイトコードを手書きするところから始めて、徐々にWasmにコンパイルする簡単なプログラミング言語を構築していく感じ。<br>無料サンプルもあるよ： https://wasmgroundup.com/book/contents-sample/<br>(免責事項：著者の一人です)" userName="pdubroy" createdAt="2025/05/09 11:16:48" color="#ff33a1">}}




{{<matomeQuote body="余談だけどさ、JavaScriptでU32の範囲チェックをコードで書くのに対して、Adaだとsubtypeとかmod型で同じことやそれ以上のことができるのが好きって話。<br> Adaはこういう型システムが便利なんだよね。" userName="johnisgood" createdAt="2025/05/09 12:29:08" color="">}}




{{<matomeQuote body="それって結構クールだね。さらに進めて、コンパイル時に型や引数の検証で任意のコードを使えるようにできるかもね。" userName="jppittma" createdAt="2025/05/09 12:41:31" color="">}}




{{<matomeQuote body="もし他の言語で興味があれば、関連する検索語は「refinement type」だよ： https://en.wikipedia.org/wiki/Refinement_type" userName="majewsky" createdAt="2025/05/09 15:09:09" color="">}}




{{<matomeQuote body="Adaがsubrangeの例として使われ続けるけど、PascalやModulaの派生言語にも前から存在するんだよね。" userName="pjmlp" createdAt="2025/05/09 13:46:20" color="">}}




{{<matomeQuote body="知ってるよ。そうは言っても、Adaを挙げるのはミッションクリティカルなシステムで広く使われてるからだし、契約をサポートしてるから（Eiffelもそうだけど）、Ada / SPARKを使えば形式検証もできるんだ。<br>それはRustの代わりにもなり得るってこと。<br> Pascalは多分そうはいかないだろうね。" userName="johnisgood" createdAt="2025/05/09 13:50:49" color="">}}




{{<matomeQuote body="WASMコードを「計測（instrument）」して、インプロセスデバッグを可能にするってできるのかな？<br>言い換えると、JavaScript上で、入力文字列（自作言語）からWASMをその場で生成して、ブレークポイントやメモリ検査つきで実行できるかな？全部、例えばWebページ上でホストされた同じJavaScriptスクリプト内でさ。" userName="MrResearcher" createdAt="2025/05/09 11:40:20" color="#ff5c5c">}}




{{<matomeQuote body="Wizardはエンジン側で計測をサポートしてるけど、Whamm (https://github.com/ejrgilbert/whamm) でもバイトコード書き換えを通じて計測できるよ。" userName="titzer" createdAt="2025/05/09 12:02:14" color="#38d3d3">}}




{{<matomeQuote body="前のコメントの手法でもデバッグツールが必要？デバッグツールなしでJavaScriptでデバッガーを作るのは無理？WASMはそれを許さないのかな？<br>IDE風ウィンドウでブレークポイントとかソースコードマッピングを全部ブラウザ内でやりたいんだけど、ツールに頼りたくないんだよね。" userName="MrResearcher" createdAt="2025/05/09 12:14:31" color="#ff5733">}}




{{<matomeQuote body="うん、bytecode rewritingを使うとオフセットが全部変わっちゃってマッピングが必要になるんだ。これがengine-side instrumentationの利点の1つで、bytecodeのオフセットは変わらないんだよ。エンジン側がinstrumentationの標準インターフェースで合意するにはまだ時間がかかるだろうけど、いくつか議論は始まってるんだ。Whammはどんなinstrumentationロジックでも注入できるから、例えばJSで実装されたimportsの呼び出しを注入したりできるんだ。JS側でかなり大変な作業が必要になるけどね。" userName="titzer" createdAt="2025/05/09 12:44:12" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Visual Studioは、ページがBlazorで作られてる時に、C#をWASMにコンパイルしたやつのデバッグに対応してるよ。まあ、ブラウザじゃない別のウィンドウでデバッグするんだけどね。でも全体的には、デバッガーは.netプロセスをデバッガーの外で動かす時にできることの80%くらいはカバーしてる感じかな。" userName="gwbas1c" createdAt="2025/05/09 13:55:26" color="#ff33a1">}}




{{<matomeQuote body="「in-process」って言葉の正確な意味はよく分からないんだけどさ。でも、JavaScriptでカスタム言語のコードをWebAssemblyにコンパイルして、それから実行することはできるよ。で、ブラウザのdev toolsを使ってWasmにブレークポ" userName="pdubroy" createdAt="2025/05/09 11:59:27" color="">}}




{{<matomeQuote body="残念ながら、無理みたい。Prologのインタープリター（ソースコードが変わるたびに実装の一部を動的に置き換えるWASMへのコンパイラ）を書きたいんだけど、デバッガーとWASMメモリインスペクターを、最初にコードをコンパイルするのに" userName="MrResearcher" createdAt="2025/05/09 12:10:03" color="">}}




{{<matomeQuote body="あー、なるほどね！うん、それはかなりややこしい問題だわ。「ソースコードが変わるたびに実装の一部を動的に置き換える」ってやつだけど、これにはテクニックがあるよ。ここに短い解説を書いておいたんだ：https://github.com/pd" userName="pdubroy" createdAt="2025/05/09 12:37:28" color="#38d3d3">}}




{{<matomeQuote body="この1年くらいWebassembly runtimes、特にspec complianceとperformanceについて仕事してきたんだ。最初は素人だったけど、仕様書がすごく好きになったよ。表記法に慣れるのはちょっと大変だけど、こんなに徹" userName="inoffensivename" createdAt="2025/05/09 13:30:54" color="#ff5c5c">}}




{{<matomeQuote body="ウェブ用のbytecodeは、すごく長い間夢だったんだ。Blazorが初期からWASMで最先端を行ってることを評価してるC#開発者として、WASM 2.0の変更が追加されるのが楽しみだよ。.NETはこの分野でかなりのアドバンテージを持ってて、彼らがやった賭けの中でもこれはかなり良い一手だったと思うね。" userName="BuckRogers" createdAt="2025/05/09 17:06:57" color="">}}




{{<matomeQuote body="アクロニムが一般名詞になるのは自然だけど、普通の単語を無理やり大文字のアクロニムみたいに書くのは違うって話。「RAW」って叫ぶカメラマンや「WASM」って書くのに違和感。最初に見た表記を真似しちゃうけど、調べたら直すよ。なんでそうしないのか謎。" userName="strogonoff" createdAt="2025/05/09 16:17:55" color="">}}




{{<matomeQuote body="The Wasm Constant Time proposalは4日前にInactiveになっちゃったみたい[0]。調べた感じだと、作業の大部分は2018年に終わってた[1]んだけど、SIMDの対応や正式な仕様拡張としての推進が必要なんだって。誰かこの大事な作業を引き継いでWasmにこの必要な機能を実装しないと、Wasmの暗号化処理はタイミング攻撃にすごく弱いままらしいよ。<br>[0] https://github.com/WebAssembly/proposals/blob/9fc7a85e/inact...<br>[1] https://github.com/PLSysSec/ct-wasm" userName="nenaoki" createdAt="2025/05/10 00:07:26" color="#45d325">}}




{{<matomeQuote body="リリースおめでとう、便利な機能たくさんだね。ちょっとした文句なんだけど、ホストの性能に合わせてSIMD幅をコンパイラが最適化できる適応型SIMDじゃなくて、固定サイズのSIMD（128-bit幅）が入ったのは正直がっかりだよ。ARM SVEみたいのが良かったな。" userName="AlexAltea" createdAt="2025/05/09 13:25:34" color="#785bff">}}




{{<matomeQuote body="個人的には固定サイズのSIMDの方が好きだな。普通のベクトル命令より多くの使い方ができるし、ベクトル命令も結構簡単に固定サイズSIMDに落とし込めるからね。「opportunistic」な使い方って呼んでるんだけど、これはSIMDやベクトルがなくても全然問題ないけど、SIMDレジスタが比較的小さいからベクトル化される使い方のこと。これらの使い方は、ベクトル命令があっても十分に役立つくらい重要だと思うよ。" userName="lifthrasiir" createdAt="2025/05/09 13:29:01" color="#38d3d3">}}




{{<matomeQuote body="可変長SIMDがあっても、いつでも固定サイズSIMDタイプとして扱えるよ。新しいx86 CPUは128-bit SIMDをそのまま実行するんじゃなくて、ベクトルALUが広くなってるから128ビットや256ビット命令もスループットとレイテンシは同じなんだ。そういう「opportunistic」な使い方の例は？コンパイルされた言語ならSLP vectorizerが普通やるようなことが主だと思うけど（今のJITがどれだけ優秀か知らないけど）。手動SIMD最適化がオートベクトル化より遅くなって、性能を捨ててしまうような世界にならないか心配だよ。" userName="camel-cdr" createdAt="2025/05/09 13:37:18" color="#38d3d3">}}




{{<matomeQuote body="＞ ”opportunistic”な使い方の例はあるの？一番簡単な例は少ないバイト数（例えばstructのコピーとか）をコピーすることかな．ベクター命令って普通セットアップコストが高いから、こういう目的にはあんまり使えないんだよね．将来のベクター命令はそういう制約がないかもしれないけど、俺が知る限りRISC-VのV extensionでさえまだそうじゃないみたい．" userName="lifthrasiir" createdAt="2025/05/09 13:44:36" color="">}}




{{<matomeQuote body="ベクター幅のサイズって、命令自体の一般的な設計ほど重要じゃないんだよ．適切な設計なら、レーン数やベクター幅を拡張するのは結構簡単にできる．これは”実行してる特定のホストマシンにとって最適なサイズは何か”って問題とは別だけど、それは全く新しい命令セット設計が必要なくても、色々な方法でずっと対応してきたことだからね．" userName="aseipp" createdAt="2025/05/10 14:47:45" color="">}}




{{<matomeQuote body="拙速な最適化は諸悪の根源だよ．このSIMDのごちゃごちゃは、もし彼らがFlexible Vectorsっていう汎用的な可変サイズWASM柔軟ベクター提案にただ従っていれば、もっとずっとエレガントに実装できたはずだ．<br>https://github.com/WebAssembly/flexible-vectors" userName="singularity2001" createdAt="2025/05/09 15:23:54" color="#38d3d3">}}




{{<matomeQuote body="あれどうなったの？10年前に作られたみたいだけど（WASMってそんなに古いの？）、去年の1年間でほとんど更新されてないみたいだけど．" userName="subarctic" createdAt="2025/05/09 22:15:23" color="">}}




{{<matomeQuote body="2015年に発表されたんだよ．それより前はasm.jsで実験してたんだ．" userName="pests" createdAt="2025/05/12 00:20:03" color="">}}




{{<matomeQuote body="C言語でstructを値で返す関数って、WASMにコンパイルできるの？" userName="rossant" createdAt="2025/05/09 12:19:24" color="">}}




{{<matomeQuote body="できるよ．でも、俺の知る限り、今はJSに”エクスポート”することはできないんだ．" userName="thrance" createdAt="2025/05/09 13:44:49" color="">}}




{{<matomeQuote body="その通り．残念ながらこれらの型は今は不透明なんだよね．" userName="singularity2001" createdAt="2025/05/09 15:26:25" color="">}}




{{<matomeQuote body="実際に動いてるWASMアプリのリストってある？<br>WASMのアイデアは好きなんだけど、なんかDAPPみたいに感じることが多いんだよね．なんか実際には何も基づいてない楽しいアイデア、みたいな．もしかしたら俺が間違ってるのかも．" userName="mountainriver" createdAt="2025/05/09 20:13:22" color="">}}




{{<matomeQuote body="https://madewithwebassembly.com/<br>https://github.com/mcuking/Awesome-WebAssembly-Applications" userName="CharlesW" createdAt="2025/05/09 22:03:18" color="#785bff">}}




{{<matomeQuote body="大体は前から実装済みだよ。発表記事にも書いてある通り、Wasm CommunityとかWorking Groupsが2022年の初めに仕様を完成させて合意したんだ。主要な実装はもっと前から2.0を出荷してたんだよ。<br>今後の記事でWasm 3.0にも触れる予定だよ、これももうすぐだからね！3.0の機能もほとんど実装済みで、たぶん一部はfeature flagsの後ろに隠されてるだけかもね。" userName="adrian17" createdAt="2025/05/09 12:01:36" color="#45d325">}}




{{<matomeQuote body="3.0の機能はどれも少なくとも2つのブラウザ実装があるよ。それがphase 4に進むための要件の一部なんだ。Wasm 2.0は一部のエンジンで完了してるけど、3.0はまだあんまりサポートされてないね。Wizardは3.0をほぼ終えてるよ。memory64とrelaxed-simdだけがまだ未完了だって。" userName="titzer" createdAt="2025/05/09 12:48:00" color="#785bff">}}




{{<matomeQuote body="1.0と2.0の間、2.0と3.0の間の”changelogs”が見れる場所はある？見つけられたのは、何が変わったかあんまり詳しく書いてない仕様の違うバージョンだけなんだ。" userName="thrance" createdAt="2025/05/09 13:43:46" color="">}}




{{<matomeQuote body="変更履歴は仕様のこのリンクにあるよ <br>https://webassembly.github.io/spec/core/appendix/changes.htm...<br>あと、3.0のアップデートがある3.0ブランチもここに見えるよ <br>https://github.com/WebAssembly/spec/blob/1e8f1dad8ca35ef3941..." userName="thomasballinger" createdAt="2025/05/09 15:28:25" color="#38d3d3">}}




{{<matomeQuote body="WasmとWASIがPOSIXの代わりになるために本当に足りないのは、dynamic instantiationだよ。実行時にバイトコードを提供して、Wasmプログラムとかコンポーネントが別のWasmプログラムとかコンポーネントを始められるようにする機能ね。今のところ、誰もそれに着手してないと思うんだ。" userName="Klasiaster" createdAt="2025/05/09 13:56:41" color="">}}




{{<matomeQuote body="ブラウザでは、数値とかバイトの配列からモジュールをコンパイルしてインスタンス作れるよ。難解な例がここ。<br>https://wasmgroundup.com/blog/wasm-compiler-in-a-tweet<br>ホストがゲストのwasmモジュールをimports経由で、バイト配列から作って実行する関数を提供すれば、それは今でもできるはずだよ（もし君の言ってること合ってたらね）。関連コンテンツがここにあるよ。<br>https://github.com/pdubroy/til/blob/main/wasm/2024-02-22-Run..." userName="marianoguerra" createdAt="2025/05/09 14:54:05" color="#45d325">}}




{{<matomeQuote body="うん、これは今でもできるよ、ちょっと組み合わせる必要があるけどね。Web（とかNodeとか）では、JavaScriptを使ってモジュールを作ってリンクできるんだ。これがwasmのdynamic linkingサポートが動くやり方だよ。<br>https://emscripten.org/docs/compiling/Dynamic-Linking.html" userName="azakai" createdAt="2025/05/09 15:38:58" color="#ff5733">}}




{{<matomeQuote body="Web上では、それは今できるよ。例えば <br>https://webvm.io <br>がやってるのがそれだね。それはオリジナルのX86から実行時にWasmモジュールをjit-compileしてるんだ。" userName="yuri91" createdAt="2025/05/09 15:57:30" color="#ff33a1">}}




{{<matomeQuote body="waspっていうランタイムにはrun_wasmっていう機能があるらしいけど、それってズルじゃね？（リンクあり）" userName="singularity2001" createdAt="2025/05/09 15:21:48" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="なんでまだ実現されてないんだろ？セキュリティモデル的にまずいからかな？" userName="packetlost" createdAt="2025/05/09 14:18:22" color="">}}




{{<matomeQuote body="え、そう？使える機能（エクスポート）経由で別のプログラム動かせるだけじゃないの？" userName="xmorse" createdAt="2025/05/09 16:13:21" color="">}}




{{<matomeQuote body="bikeshedっていうのは、仕様書書くときに使うツールのことだよ［リンクあり］．" userName="lifthrasiir" createdAt="2025/05/09 11:14:49" color="">}}




{{<matomeQuote body="WASMって普通のjavascriptより安全って言えるの？" userName="canadiantim" createdAt="2025/05/09 14:37:22" color="#ff5c5c">}}




{{<matomeQuote body="うん、そうだよ．WASMは実行環境に勝手にアクセスできないんだ．外部とやり取りするには、WASMを動かす側（エンベッダー）が用意した機能を使うしかないから．セキュリティについての詳しい情報はここを見てね（リンク）①" userName="marianoguerra" createdAt="2025/05/09 14:59:23" color="#ff5c5c">}}




{{<matomeQuote body="要約すると、ユースケースとか安全の定義によるけど、だいたいどっちも同じくらい安全って考えていいよ．セキュリティの問題は外部とやり取りする機能（API）に多いんだけど、ブラウザだとこれはJS経由だからJSの方が安全って意見もある．でもWASMもJS経由なしでAPI使えたり（WASIとか）、結局エンジンが制御できるから、ぶっちゃけどっちが「より安全」かっていう質問はあんま意味ないかな．JSのevalみたいなのはあるけど、WASMもメモリ安全性の問題とか全く無いわけじゃないし．だから、特別なケースじゃない限り、同じくらいって思っとくのが一番だよ．" userName="dathinab" createdAt="2025/05/09 16:02:26" color="#ff33a1">}}




{{<matomeQuote body="WASMが計算以外のこと（外部とのやり取りとか）をするには、JSが用意してるのと同じ機能を呼ぶ必要があるんだよ．" userName="Dwedit" createdAt="2025/05/10 02:12:01" color="#785bff">}}




{{<matomeQuote body="intとかfloat以外の型でWASMのバインディング書こうとしたら詰まったんだけど、今もそうなのかな？" userName="iFire" createdAt="2025/05/09 13:37:26" color="#ff5733">}}




{{<matomeQuote body="wasm-gc提案があれば，structsとかarrays使えるようになるよ．component modelのwitを使えば，enums，option，result，genericsみたいなもっと上のレベルの型もいけるよ．リンクも見てね．" userName="marianoguerra" createdAt="2025/05/09 14:56:17" color="#ff5733">}}




{{<matomeQuote body="あれらは複雑な型のメモリアクセスの面倒見てくれるだけって言った方が正確かな．基本的にはintegersとかfloatsしか使えないことに変わりないよ．でも，考えてみれば，ネイティブ言語だって結局はそんなもんじゃない？" userName="mamidon" createdAt="2025/05/09 15:25:25" color="">}}




{{<matomeQuote body="いや，使えないよ．残念ながらこれらの型は不透明で，内部でしか使えないんだ．" userName="singularity2001" createdAt="2025/05/09 15:25:19" color="">}}




{{<matomeQuote body="DOA．WASMがブラウザで直接DOMアクセスできて，JavaScriptの”shim”がいらないようにならないと，全部無駄だよ．" userName="Dabbling_Dion" createdAt="2025/05/09 11:07:50" color="">}}




{{<matomeQuote body="去年のゲームジャムでWebAssemblyを何度かやったけど，結構大変だった．Emscriptenは重いけどまだマシかな．3日間のジャムでEmscriptenの変なバグで丸一日潰れたり，自分でbindingsを書くのが辛かったり．Rustは合わなかった．Odinはraylib bindingが良かった．Zigは不安定．結局，JSが必要になることが多いから，TSに乗り換えちゃった．単一言語で安定してるのは，時間がない時はすごく助かるよ．「好きな言語を使える」ってメリットより，他の苦労の方が大きかったな．" userName="andai" createdAt="2025/05/09 11:43:45" color="#38d3d3">}}




{{<matomeQuote body="別の例だけど，コマンドライン専用だった僕のHiveゲームをGoでWASMのフロントエンドにしたのに4日かかったんだ．JSとかDOM周りはTSの方がサポートされてると思うけど，僕の小さいプロジェクトでは特に困ることはなかったよ．" userName="coffee_am" createdAt="2025/05/09 12:07:43" color="">}}




{{<matomeQuote body="DOAって何言ってんの？もう何年もアクティブに使われてるじゃん．僕が知る限り，「2．0」ってのは1．0以降に標準化されたいくつかの拡張機能をまとめて（あと「拡張X，Y，Zサポートしてる？」みたいな問い合わせを「2．0サポートしてる？」ってシンプルにするために），まとめてるだけじゃないかな．Vulkanが拡張機能をまとめてるのと似たような，単なるマーケティング用語だよ．" userName="adrian17" createdAt="2025/05/09 11:29:17" color="">}}




{{<matomeQuote body="DOAじゃないよ．ただ”web”に関すること以外全部になっちゃっただけ．元々発明された目的は忘れられてるね．" userName="cedws" createdAt="2025/05/09 11:38:37" color="">}}




{{<matomeQuote body="いやいや，逆にブラウザこそWASMが一番意味をなす場所だよ．ブラウザの外だと，VCに支援されてる会社が，バイトコードベースの配布なんて昔からあるものを知らないふりしてるだけじゃない？" userName="pjmlp" createdAt="2025/05/09 12:21:16" color="">}}




{{<matomeQuote body="何が言いたいのかよく分からないな．もしWASIの話をしてるなら，個人的には興味ないし，僕らはブラウザで普通のwasmを使ってるだけだよ．でも，この記事は特にWASIについて書いてるわけじゃないしね．" userName="adrian17" createdAt="2025/05/09 12:05:45" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
