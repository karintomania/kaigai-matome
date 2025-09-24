+++
date = '2025-09-17T00:00:00'
months = '2025/09'
draft = false
title = 'WASM 3.0ついに完成！Webアプリのメモリ制限を解放する64bit対応が到来'
tags = ["WASM", "Web開発", "プログラミング", "64bit", "仮想マシン"]
featureimage = 'thumbnails/purple4.jpg'
+++

> WASM 3.0ついに完成！Webアプリのメモリ制限を解放する64bit対応が到来

引用元：[https://news.ycombinator.com/item?id=45279384](https://news.ycombinator.com/item?id=45279384)




{{<matomeQuote body="64bit WASMが標準になるのはマジ楽しみ！Figmaみたいな多くのWebアプリが32bitのメモリ制限で苦しんでたからね。モバイルでのタブごとのメモリ上限がどうなるかは気になるけど、OSに依存することもあるし。" userName="jjcm" createdAt="2025/09/17 18:42:40" color="#45d325">}}




{{<matomeQuote body="俺みたいな昔ながらのC++開発者からすると、Webブラウザで動画エディタとかって違和感あるんだよな。素晴らしいネイティブOSがあるのに、誰も使ってない。もしより徹底した仮想化マシンが必要なら、ドキュメントリーダーを動画エディタにするんじゃなくて、本来の仮想化抽象化をちゃんと構築すべきだろ。" userName="prewett" createdAt="2025/09/17 23:58:28" color="">}}




{{<matomeQuote body="残念ながら、Memory64を使うとパフォーマンスが落ちるんだ。32bitだとランタイムが常に4GBのメモリを確保できたから境界チェックが不要だったけど、64bitだと必要になるからね。でも、本当に4GB以上のメモリが必要なら、使えばいいと思うよ。" userName="renehsz" createdAt="2025/09/17 19:55:38" color="#785bff">}}




{{<matomeQuote body="君が本気で言ってるって信じたいけど、現代のWebブラウザの目的は単なるドキュメント閲覧だけじゃないって、どんな頑固な人でも分かるだろ。みんなこの”ドキュメントブラウザ”でフライトのチケット取ったり、家や車を買ったり、猫の動画見たりしてるんだから。<br>WASM仮想マシンが過去の不十分なVMから学んだ集大成だとしたら？WASMはその名前にも関わらず、真の意味で”ドキュメント”ブラウザに縛られてないんだよ。" userName="wyldfire" createdAt="2025/09/18 00:12:23" color="#785bff">}}




{{<matomeQuote body="俺たちもそうしてきたけど、別に選びたくてそうしたわけじゃないんだよな。ネイティブアプリが恋しいよ、ChromeOS Platformで生計を立ててるとしてもね。" userName="pjmlp" createdAt="2025/09/18 06:15:10" color="">}}




{{<matomeQuote body="コメディな選択肢としては、正気を失う覚悟で、新しいマルチメモリ機能を使って64bitの代わりにたくさんの32bitメモリをやりくりするって手もあるよな。" userName="jsheard" createdAt="2025/09/17 20:01:27" color="">}}




{{<matomeQuote body="フライトを予約するためにネイティブアプリをインストールする？会社ごとに？そして時々アップデートをダウンロードして、ディスク容量がなくなったらアンインストールするのか？<br>この手の非ネイティブアプリでやる他の活動についても同じ質問ができるだろ。" userName="adrianton3" createdAt="2025/09/18 07:02:28" color="#ff5c5c">}}




{{<matomeQuote body="電話には全部インストールしてるから、そうなるな。残念ながら、そのほとんどは単なる”glorified webviews”だけどね。インターネットがネットワークプロトコル群を意味してた時代を生きてきたから、俺はもう古い人間だよ。そうそう、当時はハードディスクもめっちゃ高かったんだ。" userName="pjmlp" createdAt="2025/09/18 07:32:39" color="">}}




{{<matomeQuote body="君の電話は、そのネイティブアプリを機能させるために、サンドボックス、配布システム、共通ランタイムサービスなんかを提供してくれてるだろ？<br>僕たちが”ドキュメントブラウザ”と呼んでるものが、AppleやGoogleがモバイルOSでやってることと、かなり似たような仕事をしてるってことに気づかないはずはないよな。" userName="rglullis" createdAt="2025/09/18 08:27:51" color="#45d325">}}




{{<matomeQuote body="Webアプリのメモリ制限解放ってさ、Windows StoreとかMac App Store、apt、yum/dnf、emergeみたいなOSのフレームワークのこと言ってるの？それらってほとんどのOSで使えるし、終わりなく細分化されていかないよね？" userName="pjmlp" createdAt="2025/09/18 09:05:07" color="">}}




{{<matomeQuote body="Webアプリが4GiBメモリに制限されるって？まぁ、そんなもんだろ。最近はメール読むだけでも512GiBメモリが最低限必要になってるんだろうね。" userName="tjoff" createdAt="2025/09/17 20:38:58" color="">}}




{{<matomeQuote body="なんで33bitや34bitにマスクするのが32bitより遅くなるのか、まだ理解できないんだよね。結局全部64bitで動くんだからさ。32bitって何がそんなに特別なの？" userName="zarzavat" createdAt="2025/09/17 22:58:55" color="">}}




{{<matomeQuote body="『無限に細分化されない』って、あんたどんな世界に生きてるんだよ！スマホのモバイルアプリで、デスクトップアプリのapt/rpmリポジトリなんて作るわけないだろ。Linuxだってflatpak対AppImageの聖戦中だし、Snapもいる。Webは理想的じゃないけど、これのおかげで俺はLinuxに移行できたし、Apple/Microsoft/Googleの寡占を受け入れずに済んだんだよ。" userName="rglullis" createdAt="2025/09/18 09:36:56" color="#38d3d3">}}




{{<matomeQuote body="WASMをベアメタルで動かすプロジェクトもあるよ。確かに俺たちはブラウザ環境で色々なものを動かしがちだけどね。最初はハックだったものが、便利さで独自の領域を築いたって感じだ。少人数のグループで、ブラウザ抜きでどういうのが良いか悪いか考えて、望ましいパターンで新しいものを設計できたら面白いだろうね。" userName="imoverclocked" createdAt="2025/09/18 00:19:01" color="#785bff">}}




{{<matomeQuote body="俺たちが自分たちで作った世界って、要するに『より悪いものがより良い』っていうメンタリティの世界だよな。" userName="pjmlp" createdAt="2025/09/18 11:01:30" color="">}}




{{<matomeQuote body="風刺なのはわかるけど、Webアプリがメモリを必要とするんじゃなくて、コンテンツが必要としているんだよ。だからビデオ編集Webアプリを例に出したんだ。1080pの非圧縮ビデオだと、4GiBのメモリじゃたった86フレーム、3～4秒分にしかならない。Figmaみたいなアプリだと、100万以上のレイヤーがあるファイルがあって、1レイヤー4KBでもすぐにメモリ上限に達しちゃうんだ。" userName="jjcm" createdAt="2025/09/17 21:15:27" color="#38d3d3">}}




{{<matomeQuote body="『より悪いものがより良い』って言うけど、あんたが理想とする世界って、全てが完璧に最適化されてて、単一プラットフォームに統合された『黒なら何色でもいい』みたいな全体主義的な世界なんだろ？" userName="rglullis" createdAt="2025/09/18 11:29:48" color="">}}




{{<matomeQuote body="WASMから直接ブラウザのビューポートにa11y付きでレンダリングできるってこと？違うだろ。JS経由でDOMとやり取りするか、a11y非対応のcanvasにレンダリングするしかなくて、a11yのDXはかなり悪くなる。スクリーンリーダー専用のUIを別に用意しなきゃいけないんだから。ブラウザにインタラクションツリーを渡すだけで、必要なことをやらせるのが理想なのにね。" userName="jpc0" createdAt="2025/09/18 11:10:56" color="#ff5c5c">}}




{{<matomeQuote body="WASMをベアメタルで動かすって話、SunがJavaしか動かない箱を作ってたのを思い出すね。（Javaがどこまで低レイヤーで動いてたかは知らないけど、Solarisが下にあったのかな？）" userName="syndeo" createdAt="2025/09/18 02:59:21" color="">}}




{{<matomeQuote body="オフラインでも動くローカルファーストのアプリを求める人って、まだたくさんいるんだよね。" userName="willtemperley" createdAt="2025/09/18 04:53:26" color="">}}




{{<matomeQuote body="「4GiBの非圧縮1080p動画がメモリ上でたった86フレーム」って、これどうやって保存してるの？<br>(2^32)÷(1920×1080×4) = 518フレームになるから、何か見落としてるのかな？気になる。" userName="gertop" createdAt="2025/09/17 22:09:42" color="#785bff">}}




{{<matomeQuote body="それは現代のSPA技術を使えば、主要なブラウザが全部サポートしてるから、今でも全然可能だよ。" userName="djxfade" createdAt="2025/09/18 11:51:36" color="">}}




{{<matomeQuote body="32bitアドレスだとランタイムはマスキング不要で4GiBの仮想メモリ領域を確保できたけど、64bitアドレスでは不正なメモリアクセスに関する要件でそれができなくなったんだ。ANDマスキングでは必要なトラップを生成できないから、今はアクセス前に境界チェックが必要だね。アドレスも簡単にオフセットできないし。" userName="nagisa" createdAt="2025/09/17 23:17:22" color="#ff5733">}}




{{<matomeQuote body="Wasmバインディングを書けば、好きなネイティブUIツールキットでレンダリングできるよ。DOMに縛られる必要はないんだ。" userName="wffurr" createdAt="2025/09/18 12:42:17" color="">}}




{{<matomeQuote body="それ、全く意味ないってわかるだろ…同じバインディングをWasmにコンパイルする言語で書いてWASIを使っても、ネイティブアプリ作ってるようなもんだし。OSがすでにサンドボックス化してるのに、エミュレータ通す理由ないじゃん。<br>ブラウザターゲットならDOMが最悪のAPIだからReactみたいなのが必要になる。結局、OS/ハードウェア層に直接呼び出したいのに、何重ものレイヤーを通ることになるんだ。" userName="jpc0" createdAt="2025/09/18 17:29:36" color="#45d325">}}




{{<matomeQuote body="ずっとChromeOSを試したいんだけど、メモリ食いすぎで高コストだし、Linuxアプリが半分も入れられないのがネックなんだよね。Googleは開発者向けに、本格的なデスクトップ環境とLinuxアクセスができるChromeOSを作ってくれれば、高額でも絶対買うのに。Android StudioやHangoutsのネイティブアプリも動かせたら最高だ。" userName="giancarlostoro" createdAt="2025/09/18 13:52:40" color="">}}




{{<matomeQuote body="あれは最高だったなぁ！セグメント値を1、オフセットを16増やしても同じメモリ位置を指せるなんて、可能性が無限大だった。1MB以上はメモリバンク[1]でアクセス。後にはXMS[2]っていう割り込みで切り替える方法もあったけど、仮想モードが登場してからは全部つまらなくなったね。<br>[1]: https://en.wikipedia.org/wiki/Expanded_memory<br>[2]: https://hackaday.com/2025/05/15/remembering-more-memory-xms-..." userName="magicalhippo" createdAt="2025/09/17 21:37:47" color="#ff5733">}}




{{<matomeQuote body="うん、違う視点で考えてみようぜ。" userName="pjmlp" createdAt="2025/09/18 16:43:23" color="">}}




{{<matomeQuote body="「ドキュメント」と「アプリ」に違いなんてないよ。昔から人工的な区別にすぎないんだ。WordやLibreOfficeのドキュメントにはマクロが埋め込めるし、Emacsのorg-modeは好きなプログラミング言語を呼び出せる。PDFドキュメントだってスタックベースの仮想マシンで動くコードで作られてるんだよ。フォントにだってバイトコード命令が埋め込まれてるんだからね。「静的なテキストで実行可能なものを含まない」という意味なら、プレーンテキストファイルだけが真のドキュメントだ。それ以外は全部コンピュータプログラムだよ、コンピュータの黎明期からずっとね。" userName="GeneralMaximus" createdAt="2025/09/18 10:39:46" color="#45d325">}}




{{<matomeQuote body="ANDマスキングだと不正アクセスで必要なトラップを生成できないって話だけど、なんでトラップが必要なの？未定義動作（UB）じゃダメなの？<br>不正アクセスで必ずトラップさせるって仕様はパフォーマンスを落とすと思うんだ。これって64bitの問題じゃなくて、仕様の問題だよね。WASMで定義したとしても、コンパイラにとってはUBだから、誰もUBから救われないよ。トラップ保証はデバッグオプションだけにしてほしいな。" userName="zarzavat" createdAt="2025/09/18 09:55:07" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ガベージコレクション。生のリニアメモリの機能を拡張するだけでなく、WasmはWasmランタイムがガベージコレクターを使って自動で管理する、新しい（そして別の）ストレージ形式もサポートするんだ。Wasmの低レベル言語としての精神に忠実に、Wasm GCも低レベルなんだ。Wasmをターゲットにするコンパイラは、struct型やarray型、アンボックス化されたタグ付き整数として、そのランタイムデータ構造のメモリレイアウトを宣言できるし、その割り当てとライフタイムはWasmが処理してくれる。それだけだけど、すごいね！" userName="j0e1" createdAt="2025/09/17 18:31:20" color="#ff5733">}}




{{<matomeQuote body="WASMがGCと非GCの両方をサポートしてるのって、すごく良いし新鮮だね。D言語と似たアプローチで、高速なコンパイルと実行ができるんだ。<br>ちなみに、D言語コンパイラのLDCでWASMを生成できるようになったよ [1]。<br>[1] Generating WebAssembly with LDC: https://wiki.dlang.org/Generating_WebAssembly_with_LDC" userName="teleforce" createdAt="2025/09/17 22:45:10" color="#ff5733">}}




{{<matomeQuote body="これってWebAssembly.Memoryオブジェクトを縮小できるようになるの？<br>- https://github.com/WebAssembly/design/issues/1397<br>- https://github.com/WebAssembly/memory-control/issues/6<br>これはすごく重要な問題だよ。開放されたメモリはまだブラウザによって確保されたままなんだから。" userName="baxuz" createdAt="2025/09/17 22:16:15" color="#ff5c5c">}}




{{<matomeQuote body="いや、そうはならないと思うよ。マネージドオブジェクトへのポインタは不透明で、実際にはWASMメモリバッファには裏付けされてないんだ。マネージドヒープはオフロードされてるからね。<br>メモリオブジェクトの縮小は、GCからの特別なサポートは必要ないはず。適切なAPIフックがあればいいだけだよ。いつも通り、縮小されたら、プログラムが新しい終点を超えたメモリアドレスを参照しないようにするのは、モジュール内で実行されているアプリケーションコード次第だね。<br>もしこれがまだ実装されてないとしても、GCを待ってたからじゃなくて、優先度が低かっただけだと思うな。" userName="kannanvijayan" createdAt="2025/09/17 23:13:42" color="#ff33a1">}}




{{<matomeQuote body="Wasm GCはWasm Memoryオブジェクトとは完全に別物だから、線形メモリを使うアプリケーションには関係ないよ。" userName="azakai" createdAt="2025/09/17 23:12:19" color="">}}




{{<matomeQuote body="WASMに詳しくないんだけど、これって何が良いことなの？Rustみたいにガベージコレクターがない言語とはどうやって使うんだろう？誰か説明してくれないかな？" userName="Zariff" createdAt="2025/09/18 07:12:23" color="#ff5733">}}




{{<matomeQuote body="その答えは前からだいたいわかってたよ。PythonやRubyみたいなGC付き言語を使ってWASMアプリを作るためなんだ。一方、Rust、C、C++みたいなGCなし言語は、これまで通りWASM上で動作して、互換性は壊れないはずだった。それがついに実現したみたいだね。でも確認したかったから、WASM GC提案[1]から関連するポイントをまとめたよ：<br>  * 動機<br>    - 高レベル言語の効率的なサポート<br>        - より速い実行<br>        - より小さなモジュール<br>        - ほとんどの現代的な言語が必要としている<br><br>  * アプローチ<br>    - 必要な分だけ支払う（Pay as you go）；特に、GCを使わないコードには影響なし、要求されない限りランタイム型情報なし<br>    - 他の機能（例えば、テーブルを通じたリソース使用）にGCへの依存を導入しない<br><br>[1] https://github.com/WebAssembly/spec/blob/wasm-3.0/proposals/..." userName="goku12" createdAt="2025/09/18 07:36:34" color="#ff5733">}}




{{<matomeQuote body="注意してほしいのは、高レベル言語がWasm GCを使うには、そのランタイムでWasm GCを独自のGCの代わりに使えるようにする十分な抽象化が必要だってこと。JavaやKotlinでは作業が進んでるけど、Python、C#、Ruby、GoはまだWasm GCを使えないんだ。" userName="wffurr" createdAt="2025/09/18 12:46:25" color="#ff5c5c">}}




{{<matomeQuote body="WASM GCってさ、高レベル言語がネイティブなGCを実現するための低レベルコンポーネントだよね。JavaやKotlinでの進展について知らないんだけど、具体的に何をしたの？ GC仕様のインターフェースを作ったってこと？" userName="goku12" createdAt="2025/09/18 18:09:17" color="">}}




{{<matomeQuote body="JavaはJ2CLって別コンパイラがWasmGCと連携してるよ。Google Sheetsチームも使ってるって。KotlinはJetBrainsが独自のコンパイラバックエンドでWasmGCに対応させてるね。Dart/FlutterもWasmGCを使ってるみたい。C#はまだWasmGCを使えないみたいだけど。詳しい情報や経緯はここを見てね。<br>Java: https://github.com/google/j2cl<br>Google Sheets: https://v8.dev/blog/wasm-gc-porting<br>Kotlin概要: https://kotlinlang.org/docs/wasm-overview.html<br>Kotlin詳細: https://seb.deleuze.fr/introducing-kotlin-wasm/<br>その他: https://developer.chrome.com/blog/wasmgc#kotlin_wasm<br>C#に関する議論: https://github.com/dotnet/runtime/issues/94420" userName="wffurr" createdAt="2025/09/19 15:41:04" color="#45d325">}}




{{<matomeQuote body="これも見てみてね https://github.com/6over3/zeroperl" userName="larodi" createdAt="2025/09/18 10:45:19" color="">}}




{{<matomeQuote body="WASM GCが出てきても、GCなしの言語は引き続き自分でメモリ管理するよ。でもGCありの言語は、今までランタイムと一緒にGC実装もWASMに含めてたけど、WASM GCのおかげで組み込みGCを使えて、配信するWASMのサイズを減らせるんだ。JavaScriptのWebアプリがV8の一部を丸ごと送るみたいな状況が改善されるってことだね。" userName="robmccoll" createdAt="2025/09/18 12:09:01" color="#38d3d3">}}




{{<matomeQuote body="WASMをターゲットにするJavaアプレットは、JVMのサイズが巨大だからWASM GCの恩恵を一番受けるだろうね。" userName="flykespice" createdAt="2025/09/18 13:47:10" color="">}}




{{<matomeQuote body="WASM GCで内部GC実装を置き換えても、代わりに送る必要のある型情報の方が容量デカくなるってなっても驚かないな :)" userName="g-mork" createdAt="2025/09/18 15:46:03" color="">}}




{{<matomeQuote body="Go言語もそうなってくれるといいな。" userName="pstuart" createdAt="2025/09/18 23:01:37" color="">}}




{{<matomeQuote body="これを利用してる面白い言語の例だよ: https://spritely.institute/hoot/" userName="apitman" createdAt="2025/09/18 13:39:51" color="">}}




{{<matomeQuote body="ちゃんと動いてるよ、見てみて: https://rustwasm.github.io/book/" userName="simon_void" createdAt="2025/09/18 07:25:14" color="">}}




{{<matomeQuote body="メモリ割り当ての要件は言語で全然違うし、コンパイラが一番いいアロケータを知ってるはずだぜ。これだとWASMが組み込み機器に使いにくくなるかもな。libcのmalloc()を真似てるだけってのはちょっと弱い言い訳だろ。" userName="wyager" createdAt="2025/09/18 05:21:02" color="#38d3d3">}}




{{<matomeQuote body="JVMでは、どのプログラミング言語を使っても起動時にJVMで設定されたGCを使うから、俺はこれを問題だと思ってないね。" userName="Zardoz84" createdAt="2025/09/18 05:38:37" color="">}}




{{<matomeQuote body="WASMがJavaみたいな方向に行ってるみたいだけど、それって本当にいいことなの？" userName="satellite2" createdAt="2025/09/18 02:47:45" color="">}}




{{<matomeQuote body="Javaの方向って何のことだ？GC対応の仮想マシンだから、JVMとかCLR、BEAMとかと似てるってことだろ。これらのVMは時間の経過で性能もGCも良くなってるし、古いソフトウェアを長く使えるようにしてる実績もあるぜ。GUIが問題になるのはどのソフトウェアでも同じことだろ。" userName="robmccoll" createdAt="2025/09/18 12:14:49" color="#785bff">}}




{{<matomeQuote body="JavaはJVMを特定の言語のために作ったから、他の言語での再利用は似たものに限られるぜ。WASMは超低レベルからCをサポートしてて、どんな言語でも使えるけど、高レベルな部分は自分で作る必要があるんだ。でも、そのうちパターンが標準化されて、いろんな言語のWASMアプリで連携できるようになるだろ。" userName="danielearwicker" createdAt="2025/09/19 17:13:50" color="#785bff">}}




{{<matomeQuote body="WASMはいつDOMを操作できるようになるんだよ？それがWASMのそもそもの目的だったはずなのに、今じゃWebとはほとんど関係ない、独自のモンスターみたいになってる気がするぜ。JavaScriptはいつになったら消せるんだ？" userName="cedws" createdAt="2025/09/17 21:18:56" color="">}}




{{<matomeQuote body="WASMプログラムでも今すぐDOMは触れるぜ。ただ、普通のJavaScript APIを使う必要があるんだ。WASM専用のAPIを作る話も初期にはあったけど、デメリットが多すぎてとっくにやめたんだよ。" userName="vinkelhake" createdAt="2025/09/17 21:33:30" color="#ff5c5c">}}




{{<matomeQuote body="賛成だね。これとまともなマルチスレッドアクセス。RustアプリケーションをWASMにコンパイルして、`＜script type=”application/wasm” src=”./main.wasm”＞＜/script＞`で読み込みたいんだ。これって高性能なWebアプリケーションとかブラウザ拡張機能に最高だろ。開いてるタブが多いとメモリとパフォーマンスが問題になるからな。WASMでコード分割がどうなるかは分かんないけど。JavaScriptが動いてないならv8はメモリを減らせるように最適化されるべきだし、WASM専用アプリケーションならv8を避けWasmerみたいなエンジンを使ってもいい。ElectronみたいにWeb技術でデスクトップアプリケーションも作られてるけど、これはデスクトップAPIがひどくて移植性がないからだろ。WASMのファーストクラスサポートがあれば、Electronアプリケーションのメモリ消費量に対する不満も減るんじゃないか。" userName="apatheticonion" createdAt="2025/09/17 22:08:25" color="#ff5733">}}




{{<matomeQuote body="DOMなんてクソくらえだぜ！UIを2つのDSLとスクリプト言語でプログラムするなんて、マジで狂ってる。建前は良く聞こえるけど、実際はいつもごちゃごちゃしたゴミの山になって、いろんなファイルや言語に散らばるんだ。これは間違ってる。WebGLコンテキストを開いてそこに描画する、もっと良いネイティブUIライブラリが必要だよ。DearIMGUIなら今のWebアプリケーションの85%はもうできるんじゃないか？<br>ってことで、俺の主張終わり！" userName="jesse__" createdAt="2025/09/17 23:11:46" color="#ff5c5c">}}




{{<matomeQuote body="でも、それじゃ二つのものが必要になっちゃうぜ。WASMだけで動くSPAを作れるようにすべきだろ。ブラウザ開発者の究極の目標は、FlashがそうだったようにJavaScriptランタイムを廃止することだろ。" userName="cedws" createdAt="2025/09/17 21:39:49" color="">}}




{{<matomeQuote body="WASMがDOM APIを公開するより、ブラウザがTypeScriptを直接使えるようになる方が先だと思うな。それだけでもJavaScriptの状況はちょっとは良くなるだろ。" userName="icar" createdAt="2025/09/17 21:31:34" color="">}}




{{<matomeQuote body="Rustの状況は詳しくないけど、前に自分で複雑なアプリをコンパイルした時、WASMはpthreads APIをサポートしてて結構うまく動いたよ。重いMTなRustプログラムをWASMに移植する時、何か手こずったとこあった？" userName="jesse__" createdAt="2025/09/17 23:16:08" color="#ff33a1">}}




{{<matomeQuote body="独自のブラウザを作ってWASMの仕様をフォークしない限り、それは絶対起こらないよ。みんな10年くらい前からこれを求めてるけど、WASMチームは知ってる。でもWASMは、JavaScriptの代替になるという全く関係ない使命に気を取られずに、ユニバーサルなコンパイルターゲットであるという本来の使命に集中したいんだ。" userName="austin-cheney" createdAt="2025/09/17 22:19:12" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="その通り！HTMLとCSSはドキュメントを作るためのマークアップ言語だよ。それらをGUIアプリに使うなんてどうかしてるし、明らかに悪いアイデアだね。" userName="tormeh" createdAt="2025/09/17 23:59:09" color="">}}




{{<matomeQuote body="前半は賛成だけど、JSを完全に排除するってことは、HTMLにJavaScriptを一行追加したいだけでもWASMバイナリをビルドしなきゃいけないってこと？HTML/JSで全部作る良いユースケースも、WASMで全部作る良いユースケースもあると思うな。" userName="bonestamp2" createdAt="2025/09/17 22:00:32" color="#45d325">}}




{{<matomeQuote body="基本的にありえないよ。DOMを低レベルAPIで再標準化する必要があるから。それには何年もかかるし、主要なブラウザ実装者は誰もそんなことしたがらない。URL: https://danfabulich.medium.com/webassembly-wont-get-direct-d...<br>JavaScriptをなくすことはWASMの目的じゃなかったんだ。WASMはビデオデコードみたいなCPU負荷の高い純粋な関数のためだよ。一部の人はWASMがJSを殺そうとしてると勘違いしてたけど、ブラウザでWASMを標準化してる人たちは誰もそんな目標持ってなかった。" userName="dfabulich" createdAt="2025/09/18 06:56:21" color="#38d3d3">}}




{{<matomeQuote body="DearIMGUIはモダンなウェブアプリの85%くらいはできるって意見に賛成。ImGuiを何にでも使う（ぜひ導入したい）際の主な障害は、WASMでImGuiをモバイルで動かすとキーボードが開かないことだね。eguiはできてるから理論的には可能そうだけど。WASMでのモバイルImGuiは主要ユースケースじゃないけど、ボスが『ちょっとしたこと』をモバイルでやらせてくれないといけない状況が必ず来る。これは実質的な解決策がない壁だよ。もしこの1%の例外のためにReactみたいな全く別の実装を使う必要があるなら、残りの99%もそっちでやればいいってことになるね。" userName="halfcat" createdAt="2025/09/18 00:50:10" color="#ff33a1">}}




{{<matomeQuote body="それはおそらくWASIのことだろうね。システムプログラミング用のインターフェースで、pthreadを含むPOSIXサポートの一部がそこで実装されてる。だけど、まずwasmランタイムを起動して、それからWASIモジュールをwasmホストにインポートする必要があるよ。P.S.: 昔、ほとんど捨ててたdenoクローンにwasmサポートを追加するためにwasmtimeやwasmiをいじってたんだ ;) これで苦労して学んだよ。" userName="stevefan1999" createdAt="2025/09/18 00:56:21" color="#45d325">}}




{{<matomeQuote body="ごめん、うざいこと言う前にちゃんと確認してなかったわ。なんかブラウザがTSのネイティブサポートを始めてるって思い込んじゃってたんだよね。" userName="jesse__" createdAt="2025/09/18 05:02:26" color="">}}




{{<matomeQuote body="良いフロントエンド言語が出てくるのをじっと待ってるんだけど、DOMを操作するためにJSラッパーを呼び出すのが本当にそんなに非効率なのかな？ほとんどのコードはすでにひどく非効率だから、これで劇的な違いが出るとは思えないんだけどね。" userName="DarkNova6" createdAt="2025/09/17 21:30:38" color="">}}




{{<matomeQuote body="＞`＜script type=”application/wasm” src=”./main.wasm”＞＜/script＞＜applet code=”./Main.class”＞＜/applet＞`結局、何も変わらないってことか…" userName="cesarb" createdAt="2025/09/17 22:48:29" color="">}}




{{<matomeQuote body="完全にJavaScriptをなくすっていうのは、JavaScriptコードを書かずにDOMを操作できるってことだよね。ブラウザからJavaScriptを消すわけじゃないし、使いたければJavaScriptはちゃんと残ってるよ。" userName="em-bee" createdAt="2025/09/17 23:30:47" color="#38d3d3">}}




{{<matomeQuote body="DOMアクセスに関しては、WASMからJSへの通信を抽象化するフレームワークがもうたくさんあるよ。唯一の問題はパフォーマンスコストがあることだね。普通のアプリでどれくらい大きいかは分からないけど、間違いなく存在する。直接DOMにアクセスできるといいけど、もしパフォーマンスがそこまで問題じゃないなら、それをするための大変な労力をかけない理由もわかる気がするな。" userName="brokencode" createdAt="2025/09/17 22:18:21" color="#38d3d3">}}




{{<matomeQuote body="それはそう。でもDOMがないと、ブラウザのネイティブなアクセシビリティサポートやテキスト操作なんかも失われちゃうよね。" userName="jenadine" createdAt="2025/09/18 07:37:42" color="">}}




{{<matomeQuote body="ほとんどの主要なGUIフレームワークは、HTML + CSSによく似たもので動いてるよね。" userName="chrismorgan" createdAt="2025/09/18 09:13:04" color="">}}




{{<matomeQuote body="＞いつになったらJavaScriptを葬り去れるんだ？JavaScriptに問題があるって思うなら、DOMについても悪いニュースがあるよ…" userName="namuol" createdAt="2025/09/17 22:22:37" color="">}}




{{<matomeQuote body="`＜!doctype html＞`<br>`＜wasm src=”my-app.wasm”＞`なんでWASMだけでDOM全部やっちゃわないんだろう？" userName="biztos" createdAt="2025/09/18 12:53:17" color="">}}




{{<matomeQuote body="いや、正直そこまでひどくはないよ。でもJSより効率的ってわけでもないし、この汚いグルーコードがイライラするんだよね。" userName="thrance" createdAt="2025/09/18 01:21:39" color="">}}




{{<matomeQuote body="ネイティブキーボードのWASM連携は簡単に見えるけど、現代のソフトではそうでもないかもね。DearImguiでニッチな機能が必要でも、他の開発が早くなればコスト吸収できるはず。今はまだ難しいけど、そうなる未来は遠くないよ。" userName="jesse__" createdAt="2025/09/18 05:11:45" color="">}}




{{<matomeQuote body="そのデメリットや、それが存在する理由をいくつか具体的に教えてくれる？" userName="zekrioca" createdAt="2025/09/17 21:53:23" color="">}}




{{<matomeQuote body="今日のRustなら全部できるよ。マルチスレッドへのアクセスも超健全で、Web Workerで動かすRustコードを並列で書いても、コンパイルのことなんか心配いらないんだ。" userName="kketch" createdAt="2025/09/18 09:46:13" color="">}}




{{<matomeQuote body="違いは、今これが「クール」だってことだよ。詳しくはここ見てね: https://cheerpj.com/" userName="pjmlp" createdAt="2025/09/18 08:42:16" color="">}}




{{<matomeQuote body="JavaScript APIを通すのって遅くないの？" userName="colordrops" createdAt="2025/09/17 21:57:01" color="">}}




{{<matomeQuote body="WASMでDOM APIを心配するのはまだ早すぎるよ。DOMは後方互換性の問題で古いAPIが多すぎるから、新しいWASM DOM APIは「良いデータと操作」に絞るべき。でもDOMは今も進化中で、安定してないんだ。DOMノードの移動や新しい`attr()` APIなど、新機能も次々登場するし、Promiseや構造体といった言語機能も影響する。だから、DOMが安定するまでWASM向けDOM APIは待つべきだよ。" userName="spartanatreyu" createdAt="2025/09/18 01:07:14" color="#785bff">}}




{{<matomeQuote body="WASMがバージョンリリースモデルになったなんて知らなかったよ。WASM 3.0互換には全機能サポートが必要なのかな？ ブラウザベースじゃないランタイムで3.0を完全にサポートする2番目が楽しみだね（wasmtimeが最初かな）。特にGCは難しそう。<br>「evergreen」リリースモデル[2]にこの3.0リリースがどう関係するのか、誰か知らない？ evergreenモデルは、候補勧告がその場で更新され、最新ドラフト[3]が実質的な標準になるらしいよ。<br>[1] https://webassembly.org/features/<br>[2] https://webassembly.org/news/2025-03-20-wasm-2.0/<br>[3] https://www.w3.org/TR/wasm-core-2/" userName="re" createdAt="2025/09/17 19:37:26" color="#ff33a1">}}




{{<matomeQuote body="WASM 3.0の主要機能は、wasmtimeはすでにサポート済みだよ。GCは数年前に同僚が、テールコールは昨年別の同僚が実装したし、例外サポートも先月マージされて3日後にはWasmtime 37でリリースされるんだ。WASM 3.0リリースは進捗を示す略称だけど、個々の提案は前から進んでいたから、ほとんどの実装はもう終わってるよ。（ちなみに、僕はWasmtimeとそのコンパイラCraneliftのコアメンテナーだよ）" userName="cfallin" createdAt="2025/09/17 22:30:28" color="#ff5733">}}




{{<matomeQuote body="GCは数年前に実装済みって言ってたけど、wasmtimeのWASM機能ページにはまだ`--wasm=gc`フラグの後ろに隠されてるって書いてあるよ。あのページ、情報が古いの？" userName="azakai" createdAt="2025/09/17 23:14:44" color="">}}




{{<matomeQuote body="いや、まだフラグの裏にあるよ（例外もGCの上に構築したから同様）。ドキュメント（https://docs.wasmtime.dev/stability-tiers.html）ではGCは「製品品質」でTier 2になってる。残る懸念は、現在のDRCじゃなくて半空間コピー実装にしたいってことかな。でも、現状で仕様には準拠してるし、質問は「実装済みか」だったから、答えはイエスだよ :-) " userName="cfallin" createdAt="2025/09/17 23:22:08" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
