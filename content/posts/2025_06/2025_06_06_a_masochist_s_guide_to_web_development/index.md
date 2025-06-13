+++
date = '2025-06-06T00:00:00'
months = '2025/06'
draft = false
title = 'マゾヒストしか生き残れない？ Web開発のつらさを知るガイド'
tags = ["Web開発", "JavaScript", "プログラミング", "フロントエンド", "ビルドツール"]
featureimage = 'thumbnails/cyan3.jpg'
+++

> マゾヒストしか生き残れない？ Web開発のつらさを知るガイド

引用元：[https://news.ycombinator.com/item?id=44200895](https://news.ycombinator.com/item?id=44200895)




{{<matomeQuote body="JavaScriptのモジュールシステムってさ、dojoからCommonJS、AMD、ESMとかいろいろ変わってきたけど、マジで苦労の連続だよね。「.jsと.mjs、どっちの拡張子を使っても問題にぶつかる」って話、めちゃくちゃ刺さるわ。過去にいろんなモジュールシステムとバンドラーを使ってきた身としては、この一文、ホントに心に響くんだ。" userName="lscharen" createdAt="2025/06/06 16:24:27" color="">}}




{{<matomeQuote body="CommonJSからESMへの移行は、JavaScriptにおけるPython 2から3への移行みたいなもんだよね。でもさ、メリットは限定的（苦労に比べて）な気がする。<br>ESMオンリーになったライブラリも多いけど、今でもCommonJS版を探す一番の方法は、npmの”versions”タブに行って、過去一ヶ月で一番ダウンロードされてるバージョンを探すこと。それが最後のCommonJS版だったりするんだよね。ESMは単体で見ればCommonJSより優れてるのは間違いないけど、tc39がトップレベルawaitとかで、 CommonJSと「わざと」非互換にしたように見えるのが、マジで意味不明。" userName="SCLeo" createdAt="2025/06/06 22:35:44" color="">}}




{{<matomeQuote body="CommonJSとの非互換性は、トップレベルawaitがあるかどうかに関係なく、避けられなかったことなんだよ。ブラウザが同期的なリクエストと解決セマンティクスを持つモジュールシステムを採用するシナリオなんて考えられないからね。モジュールグラフはいくらでも深くなれるってことは、同期モジュールだとページの読み込みがネットワークの滝のように深くブロックされちゃう。それじゃ話にならない。<br>そう考えると、トップレベルawaitは理にかなった機能だよ。非同期モジュールはすでに同じセマンティクスを持ってるんだから、これをブロックする方が無理がある。<br>最近Node.jsは妥協して、トップレベルawaitがない場合はESMを同期的にロードできるようにしたけど、それはNodeがファイルシステムからロードしてるから可能なだけで、ネットワークアクセス可能な場所じゃないからできるんだ（そしてCJSではすでにそういうセマンティクスがあったから）。その妥協はローカルでは理にかなってるけど、ブラウザではやっぱりありえない。" userName="eyelidlessness" createdAt="2025/06/07 00:55:23" color="#ff5c5c">}}




{{<matomeQuote body="バンドラーエンジニアだよ。ESMはビルド時の最適化に関しては最高だね。バンドラーがCJSコードに遭遇すると、出力の最適化を文字通り諦めなきゃいけなくなる。だから、その点ではESMは素晴らしい。<br>でも、デフォルトエクスポートとか”export * from”とかトップレベルawaitを追加した奴らは特別に地獄行きだね。CommonJSも”`module.exports = require(’./foo’)`”みたいにモジュールインスタンスを別のモジュールの参照に再割り当てできるのがすごく変なんだ。ESMではこんなことできない（良い理由でだけど、誰も教えてくれなかった）。<br>実際、Reactみたいな主要プロジェクトがCJSエクスポートを使ってて、プロジェクト全体がバンドラーで最適化できないんだよ。だから、ESMに移植する代わりに、コンパイラを作ったらしい（笑）。" userName="apatheticonion" createdAt="2025/06/07 07:33:12" color="#ff5c5c">}}




{{<matomeQuote body="僕に言わせれば、問題なのはトップレベルawait自体じゃなくて、「exportするモジュールでトップレベルawaitを使うこと」が悪なんだ。それはヤバい。でもプログラムのメインスクリプトでトップレベルawaitを使うのはOKだと思うけどね。" userName="sirsuki" createdAt="2025/06/07 18:50:39" color="">}}




{{<matomeQuote body="最近知ったんだけど、Functionオブジェクトって、どんなJavaScriptコードでも実行時にコンパイルできるんだね。`new Function(’class MyClass { ...}; return MyClass’)`みたいに！僕のシステムでは”imports”とかnpmとか使えないから、これマジで命綱になってる。JavaScriptの世界ではあまり役に立たないかもしれないけど、個人的には結構便利だよ。" userName="goodthink" createdAt="2025/06/07 13:07:55" color="">}}




{{<matomeQuote body="いやー、JavaScriptの世界のモジュールって、ホント「トラウマ」でしかないよね…。で、今度はブラウザにimport mapsが出てきたと。ふーむ、これでまたどんな”fun”（楽しいこと）ができるのか、お手並み拝見といこうかね。" userName="bubblyworld" createdAt="2025/06/06 17:02:10" color="">}}




{{<matomeQuote body="ブラウザでのimport mapのサポートが最近改善された件について言うと、Shopifyのエンジニアリングブログに記事があるよ。これ見てみて。https://shopify.engineering/resilient-import-maps" userName="ajayvk" createdAt="2025/06/06 19:59:58" color="#38d3d3">}}




{{<matomeQuote body="面白かったのはここだよ: https://philipwalton.com/articles/cascading-cache-invalidati...<br>この一文がなかったら、記事全体が無意味になるところだった。バンドラが問題を解決したと思ってたからね。<br>何年も考えてなかったんだけど、解決済みだったんだね。<br>ブラウザのサポートも良さそう。<br>さあ、今度はこれをViteやTypeScriptのモジュール解決とうまく連携させる方法を考えなきゃいけない…<br>…そしてまた頭が痛くなってきた、最高だね。" userName="hdjrudni" createdAt="2025/06/07 01:32:00" color="#ff5733">}}




{{<matomeQuote body="だからみんなBunを使えばいいんだよ。" userName="zackify" createdAt="2025/06/07 10:22:57" color="">}}




{{<matomeQuote body="Web開発って「俺が好きな別のツールを使えばいいだけだよ」って話ばっかりだよね。<br>JavaScriptのエコシステムの90%は、ツールのためにツールを構築するためにだけ存在してるんじゃないか、って確信してるよ。全部ツールまみれなんだ。" userName="VWWHFSfQ" createdAt="2025/06/07 12:13:29" color="#38d3d3">}}




{{<matomeQuote body="JSエコシステムにいなきゃいけない俺らにとって、「ただちゃんと動く」ランタイムが遂に出てきてくれて最高だよ。<br>Bunは俺らのスタックから膨大な数のツールや依存関係を置き換えてくれて、Nodeで強制されたツール乱立を本当に食い止めてくれたんだ。" userName="wild_egg" createdAt="2025/06/07 13:41:48" color="#ff5c5c">}}




{{<matomeQuote body="＞ Nodeで強制されたツールの爆発的な増加を本当に食い止めてくれたんだ<br>これって、多かれ少なかれ自分で招いた傷じゃないの？誰がNodeを使うことを強制したのさ？" userName="diggan" createdAt="2025/06/07 15:27:27" color="">}}




{{<matomeQuote body="俺らの場合、Bunを強制されてるっていうより、低レベル言語よりBunが実質的に無限に便利ってことなんだよね。まず、JS/TSは初心者でもある程度わかるけど、C/Zig/Rustとかはそうじゃないから、プロジェクトに貢献しやすいんだ。BunはTCPサーバー、WebSocketサーバー、SQLiteデータベース、静的アセットの取り込み、コンパイル時生成とか、色々なことを無料で、静的に、クロスプラットフォームで提供してくれる。<br>低レベル言語でこれの少しでも再現しようとするのは本当に大変だよ。Rustはコミュニティが頑張ってて安定したパッケージを提供してるから一番マシだけど、Rustは複雑でとっつきにくい言語だしね。C/Zigみたいな他の低レベル言語だと、すぐにライブラリとか静的リンクの問題にぶつかるし、見つかってもドキュメントがお粗末か全くないか（libuvとかlibxevとか）。<br>TCPサーバーを動かして、HTTPでデータを取得して、これらをシングルイベントループで（別スレッドなしで）両方やって、ストレージにSQLiteを使って、これ全部を1つの自己完結型実行ファイルにするための、手動設定とサードパーティのビルドシステム調整の量ときたら。でも、Bunだとこれがどれだけ些細なことか、言葉では言い表せないよ。" userName="Defletter" createdAt="2025/06/08 13:34:06" color="#ff5733">}}




{{<matomeQuote body="これについて詳しく説明してくれない？Node自体以外で、具体的にどんなツールをBunで置き換えたの？" userName="throw-the-towel" createdAt="2025/06/07 18:02:22" color="">}}




{{<matomeQuote body="言語にユーザーとプロジェクトがたくさんあるからクソだ、って文句言うなんて想像できる？<br>まさに、Bunはヤバいね。テストランナーはものすごく速いし。<br>依存関係が合計1〜5個くらいのアプリをビルドできるんだけど、全部ちゃんと動くし、信じられないくらい速いんだ。" userName="zackify" createdAt="2025/06/07 14:13:21" color="#ff5c5c">}}




{{<matomeQuote body=".esm.jsで動かないの？" userName="BostonFern" createdAt="2025/06/07 11:52:24" color="">}}




{{<matomeQuote body="Javascriptのvarは将来的に問題になるかもね。最近のJS開発者はvar使わないようにしてるし。varは関数スコープだけど、他の言語から来た開発者は波括弧スコープと間違えやすいんだ。<br>あと、ネイティブアプリの移植問題もあるね。例えばCtrl-CとかCtrl-Vをコンパイル時にハードコードしてると、LinuxとかWindowsでは動くけどMacでは動かない。Webではcopyとかpasteイベントをリッスンするのが正しいやり方らしいよ。UnityもこれでMacでコピペができない問題があるって聞いたことあるな。ゲームじゃあんまりコピペ使わないけど、たまに必要な時にWebにエクスポートすると問題になるんだ。" userName="socalgal2" createdAt="2025/06/06 19:24:10" color="#ff5733">}}




{{<matomeQuote body="マジでWebとかNode.jsでのマルチスレッドは大嫌い。mutexみたいな同期プリミティブがなくて、SharedArrayBufferも全然使い物にならない。スレッド間の同期はRPC経由でデータをコピーするしかないんだ。<br>うちの本番アプリ、書き直す前に規模が大きくなっちゃって、メモリを70-100GBも使うんだ（僕が来る前に書かれた）。それで、ネイティブコードで共有メモリを手動管理するみたいな変な方法を調べてるんだけど、v8がutf16で文字列扱うから、ネイティブ層でJavaScriptの値を使うのもコストがかかるんだよね。" userName="apatheticonion" createdAt="2025/06/07 07:43:26" color="#ff5733">}}




{{<matomeQuote body="メモリ100GBってマジ？なんでこれWebアプリなの？社内ツールみたいだし、例えばC#とかで書けたんじゃないの？" userName="knallfrosch" createdAt="2025/06/07 14:38:46" color="">}}




{{<matomeQuote body="あれはNode.jsで動く社内ビルドツールなんだ（オープンソースツールのフォークだけど）。Rustで書き直してる最中だけど、複雑だから時間がかかるんだよね。<br>今のNode.js版ツールでビルドすると、1時間くらいかかるしメモリ100GB使うんだ。それに比べてRust版は、まだ最適化してないけどビルド時間は1分に短縮されて、メモリも最大6GBしか使わない。完成は2年後だけどね。<br>維持費は年間で数百万ドルもかかるし、メンテも悪夢だよ。公平に言うと、JavaScript自体は驚くほど速いんだけど、マルチスレッドがマジで問題なんだ。<br>メモリ同期プリミティブがスレッド間で使えれば問題ないんだけど、v8のisolateの仕組み的に無理なんだよ。だから巨大なデータグラフをスレッド間でコピーして、postMessageで手動同期するしかない。<br>ビルドをJSのメインスレッドだけでやるとメモリは10GBだけど、5時間かかるんだ。共有メモリがあれば書き直さずに済んだのにね。DBとかにデータを集中させようとしても、データのシリアライズ/デシリアライズでかえって遅くなる。他のインメモリDBも同じ問題があるんだ。あと、全ての共有構造体にgetter/setterを使って、読み込み時にコピーするアプローチも考えたけど、結局メモリが爆発するだけだった。<br>JavaScript自体が間違った言語なわけじゃなくて、ランタイムがisolateされてるせいで、マルチスレッドのユースケースで失敗するんだよ。" userName="apatheticonion" createdAt="2025/06/08 13:18:09" color="#785bff">}}




{{<matomeQuote body="Silicon Valleyの固定観念の中にMicrosoftは存在しないんだ。それが唯一の理由だよ。「独自ハンマーなんか絶対に使わずに、オープンソースの岩でぶっ叩くのに3倍の労力をかけた方がマシ！」って感じ。<br>“.NETはオープンソースだよ。それに、蒸気ローラーみたいな強力さも持ってるんだ。”<br>“もう決めたことだから！”<br>P.S. キャリアで初めてNode.jsアプリを触ることになったんだけど、dotnet coreの後だと子供の積み木で遊んでるみたいに感じたよ。" userName="jiggawatts" createdAt="2025/06/08 01:24:50" color="">}}




{{<matomeQuote body=".NETが“オープンソース”だからって、独自じゃないってことにはならないんだよ。Microsoftが今でも実質的にその将来をコントロールしてるんだから。" userName="account42" createdAt="2025/06/10 10:20:00" color="">}}




{{<matomeQuote body="僕も似たような経験があるよ。C#からRustに移ったんだけど、Rustは歴代で一番好きな言語になったね。<br>できることなら、全部Rustで書きたいくらい、ハハ。" userName="apatheticonion" createdAt="2025/06/08 13:30:28" color="">}}




{{<matomeQuote body="Rustの標準ライブラリの足りなさはイライラするね。全部入りの設計じゃないのがどうも好きになれないよ。特にguid型とか一般的なインターフェースみたいな、よく使うものがないのがね。" userName="jiggawatts" createdAt="2025/06/09 03:34:34" color="#ff5c5c">}}




{{<matomeQuote body="それはわかる。標準ライブラリは私も一番不満な点だけど、まあワークアラウンドは簡単だよ。あとasync/await/futuresの使い勝手の悪さもね。" userName="apatheticonion" createdAt="2025/06/09 13:32:44" color="">}}




{{<matomeQuote body="マゾヒスト？むしろJavaScriptのクソみたいなエコシステムよりずっと健全だと思うけど。" userName="lerax" createdAt="2025/06/06 15:40:37" color="">}}




{{<matomeQuote body="良い記事だ！かなり大変な道を選んだね。でもプロジェクト設定はいつも一番複雑だよ。すぐセキュリティやヘッダー問題にぶつかるのはすごい。俺はCORSかと思ったけど。うちでもEmscriptenとC++で開発してて、もっと大変になるようにWebGPU/shadersやWebAudioも入れる予定だよ。" userName="knallfrosch" createdAt="2025/06/06 19:12:27" color="">}}




{{<matomeQuote body="ブラウザ用にコンパイルするのって遅いと思ってたけど、筆者は違うって言ってるね。Emscriptenの説明だと、LLVM、Emscripten、Binaryen、WebAssemblyの組み合わせでコンパクトでネイティブに近い速さらしいよ。詳しくはここ→https://emscripten.org/" userName="divbzero" createdAt="2025/06/06 17:32:15" color="#ff33a1">}}




{{<matomeQuote body="今日は俺に「Yellow bus syndrom」が起きてるわ。先週までEmscripten知らなかったのに、SDLをプロジェクトに入れてたらCMakeでAPPLE、MSVC、EMSCRIPTENって出てきてさ。そしたら数日後またここで見かけた。ちょっとちゃんと調べる時間取らないとね。" userName="RobRivera" createdAt="2025/06/06 19:13:31" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="＞「Yellow bus syndrome」が今日俺に起きてる<br>ってコメントだけど、皮肉なことに「Baader-Meinhof Phenomenon」（ググっても出ない「Yellow Bus Syndrome」より一般的な名前だと思う）って言葉を君に紹介できるね。これで名前を知ったから、どこでもそれを見かけるようになるよ！" userName="scubbo" createdAt="2025/06/06 21:46:06" color="#38d3d3">}}




{{<matomeQuote body="彼らが間違って覚えてた口語表現は「yellow car」効果だよ。" userName="57473m3n7Fur7h3" createdAt="2025/06/06 21:58:28" color="">}}




{{<matomeQuote body="面白いな、俺はいつもそれ「GTA効果」って呼んでたんだ。Grand Theft Auto 1か2の上から見るやつで、ある車に乗ると道路でもその車ばっかり見るようになったんだ。それがゲームの最適化なのか、俺がそう思い込んだだけなのかは分からないけど。" userName="phatskat" createdAt="2025/06/06 23:12:42" color="">}}




{{<matomeQuote body="例えばGTA IIIで、俺がめっちゃやったんだけど、プレイヤーが乗ってる車のモデルが絶対いっぱい出てくるんだ。色々なオンライン情報だと、同時にメモリに入る車の数が限られてるからプレイヤーの車を優先するらしい。納得だけど、実際にGTAの開発者から確認取れたら面白いね。" userName="57473m3n7Fur7h3" createdAt="2025/06/07 08:29:39" color="#ff33a1">}}




{{<matomeQuote body="後期のGTAもそうだし、San Andreasではリバースエンジニアリングでそれがエンジンの仕組みだって確認されてるはずだよ。スピードランナーはキャッシュを操作して良い車が出やすくするテクニックを使ってるんだ。" userName="detaro" createdAt="2025/06/07 10:55:59" color="#38d3d3">}}




{{<matomeQuote body="＞＞ WebAssemblyの「ほぼネイティブ速度」って表現、主観的すぎない？具体的な数字ないし、どんくらい速いんだろ？" userName="burningChrome" createdAt="2025/06/06 19:14:32" color="">}}




{{<matomeQuote body="V8とかのJavaScript最適化すごいから、WebAssemblyにしてもそんなに速くならないかもね。JSはもうほぼコンパイルされてるようなもんだし。CとかからWebAssemblyにしても、JSの最適化されたArray.mapとかより遅くなることだってあるかも。結局、実際のデータ見るのが大事だよね。あと、WebAssemblyのせいじゃなくて、ほとんどのJavaScript開発者が変な書き方してるのがパフォーマンス悪い原因ってのもあると思うよ。例えばイミュータブルだからって巨大なオブジェクトをスプレッド演算子で何回もクローンするとか。" userName="gspencley" createdAt="2025/06/06 20:05:37" color="#38d3d3">}}




{{<matomeQuote body="WebAssemblyはアセンブリみたいなもんで、JavaScriptとの連携で遅くなるからネイティブじゃないんだよ。JavaScriptめっちゃ速くなったけど、まだ動的型とかGCのオーバーヘッドはある。Wasmでも遅いコードは書けるしね。既存ライブラリ移植とかにはいいけど、RustとかCみたいに速い言語と組めばマジでヤバいことできそう。" userName="aDyslecticCrow" createdAt="2025/06/06 22:35:38" color="#38d3d3">}}




{{<matomeQuote body="＞ JavaScriptとの連携にオーバーヘッドがあるからネイティブに近いだけ<br>それは全然違うよ。WASMはバイトコードだから、JavaScriptみたいにJITコンパイルされるんだ。それにWASMは命令セットがシンプルだから、ネイティブみたいにゴリゴリ最適化できないんだよ。経験上、最適化されたJavaScriptコードと比べて、WebAssemblyで目立って速くなることはほぼないね。" userName="wavemode" createdAt="2025/06/07 13:55:20" color="">}}




{{<matomeQuote body="＞ それでもJITコンパイルされる<br>えー？GC付きJIT言語とバイトコードのJITを比べるなんて、マジで一番意味不明な議論だと思うんだけど。<br>それに命令数と最適化が何の関係あるわけ？ほとんどの言語はターゲット関係ない中間表現で最適化してからバイトコードにするんだよ。だからwasmバイナリはすでに最適化済み。Webで調べたら、wasmとjs間の言語バリアが一番ボトルネックらしいよ。だから簡単なアルゴリズムなら、良くなるまでわざわざ使う必要ないって言われてる。" userName="aDyslecticCrow" createdAt="2025/06/07 14:47:22" color="">}}




{{<matomeQuote body="＞ それでもJITコンパイルされる<br>WebAssemblyも最適化されて機械語にコンパイルされるって理解してないのに、俺を意味不明呼ばわりか、面白いアプローチだね。<br>＞ 命令数と最適化が何の関係あるわけ？<br>これは相手しない。コンパイラがどう動くか、ちょっとは自分で調べたら？<br>＞ wasmとjs間の言語バリアが一番パフォーマンスのボトルネック<br>それは確かにそうだよ。俺がそうじゃないって言った覚えはないけど。言いたいのは、プログラムをネイティブにコンパイルした場合より、WebAssemblyにコンパイルした場合の方が遅くなる理由はそれだけじゃないってことだよ。" userName="wavemode" createdAt="2025/06/07 15:53:05" color="">}}




{{<matomeQuote body="＞ これは相手しない。コンパイラがどう動くか、ちょっとは自分で調べたら？<br>https://cs.lmu.edu/~ray/notes/ir/<br>中間表現ね。ほとんどの現代のコンパイル言語は、ターゲットアーキテクチャに関係なく最適化されるんだよ。だからコードはwasmになる前に、とっくに最適化されてるんだ。LANG-to-WASMバックエンドは、LANG-to-arm64とかがやる最適化のほとんど、いや全部を持ってる。最終的なパーサーは、計算も複雑さもほぼ trivial で、プログラミングの練習問題にもちょうどいいくらいだよ。現代の高級言語のコンパイラ最適化と比較するのは、全然違う話。リアルに残ってる最適化は、プロセッサの投機的実行エンジンくらい。<br>＞ 俺がそうじゃないって言った覚えはないけど<br>＞ JavaScriptの最適化がすごいから、ほとんどのアプリケーションでメリットは微々たるものだろうね" userName="aDyslecticCrow" createdAt="2025/06/09 21:04:15" color="">}}




{{<matomeQuote body="良い記事だね。俺もC言語のコンパイラをWebAssemblyにしてウェブページで動かしたいから、参考になったよ。ありがとう！<br>ファイルシステムの話だけど、最近のブラウザにはSQLiteが入ってて、JavaScriptから使えるんだ（WebAssemblyから使えるかは分かんないけど）。だから俺だったらそっちを使うかな。理想はEmscriptenを使ってCのSQLite APIをブラウザのSQLite DBにつなげることだよね。これは調べてみる価値ありそう。" userName="broken_broken_" createdAt="2025/06/06 15:40:39" color="#ff5733">}}




{{<matomeQuote body="SSLでポート48を使ってるのって、なんか理由あるの？" userName="udev4096" createdAt="2025/06/06 14:49:57" color="">}}




{{<matomeQuote body="いい質問だね。ソルバーの名前が”H48”だからって以外は適当かな。Webアプリに追加のHTTPヘッダーが必要で、他のサイトをいじらずにやる一番簡単なのが違うポートを使うことだったんだ。https://h48.tronto.net もリダイレクトしてるよ。OpenBSDのhttpdとかrelaydを使ってて、うまく設定できなかったんだよね。いつかまた見るか、ツールを別のドメインに移すかも。" userName="sebtron" createdAt="2025/06/06 14:59:57" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
