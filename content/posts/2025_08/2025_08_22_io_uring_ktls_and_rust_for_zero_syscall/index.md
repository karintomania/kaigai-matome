+++
date = '2025-08-22T00:00:00'
months = '2025/08'
draft = false
title = 'Io_uring、kTLS、RustでシステムコールゼロのHTTPSサーバーを実現！'
tags = ["Rust", "Io_uring", "TLS", "非同期プログラミング", "サーバー開発"]
featureimage = 'thumbnails/purple2.jpg'
+++

> Io_uring、kTLS、RustでシステムコールゼロのHTTPSサーバーを実現！

引用元：[https://news.ycombinator.com/item?id=44980865](https://news.ycombinator.com/item?id=44980865)




{{<matomeQuote body="Rustで`io_uring`を使って安全な非同期ライブラリを作るのはかなり難しいみたいだね。特に、バイトのメモリ位置が解放されたり上書きされたりしない保証が問題で、`io-uring` crateもあまり助けにならない。コンパイル時も実行時もチェックがないみたい。TokioチームのAliceも言ってたけど、今のパフォーマンスで十分だから、この問題に取り組む関心は薄れてるってさ。詳しくはこの記事も見てね: https://boats.gitlab.io/blog/post/io-uring/" userName="Seattle3503" createdAt="2025/08/22 05:44:49" color="#ff33a1">}}




{{<matomeQuote body="Rustのasyncは、epollが主流だった時代に開発されたから、IOCPみたいなCompletion-based IOにうまく対応できてないのが根本的な問題だと思う。同期システムコールと違って、Futureがユーザーコードでポーリングされるモデルだと、Completion-based IOで所有権/借用モデルをちゃんと機能させるのは難しいんだ。グリーン・スレッドなら解決できたのに、Rust開発者は未証明のポーリングスタックレスモデルに賭けちゃった。その賭けが成功するか、今まさに試されてる途中って感じだね。" userName="newpavlov" createdAt="2025/08/22 10:32:32" color="#785bff">}}




{{<matomeQuote body="「状態機械をユーザーコードでポーリングしてもダメ」ってのは違うよ。RustのFutureはポーリングも完了もできるんだ。本当の問題は、Futureがエクゼキュータ間で移植しにくいことと、`io_uring`みたいにエクゼキュータと密接に結びつくことだよ。それに、async traitとかの機能が不安定だから、エクゼキュータに依存しない非同期コードを書くのが難しいんだ。Dockerコンテナで`io_uring`が無効になってるのも開発が停滞する理由だね。2016年の設計目標については、Aaron Turonのこの記事を見てみて: https://aturon.github.io/tech/2016/09/07/futures-design/" userName="duped" createdAt="2025/08/22 13:41:17" color="#ff5733">}}




{{<matomeQuote body="いや、`io_uring`の文脈での根本的な問題は、Futureがユーザーコードで管理されて、いつでもドロップされうる「キャンセル安全性」だよ。Futureがドロップされたのに、カーネルがそのバッファに書き込んだら大問題だろ？同期コンテキストじゃありえないことが、asyncでは起こりうる。だから`io_uring`を使うエクゼキュータでは、ポーリングモードとかリング所有バッファみたいな「ハック」が必要になるんだ。`async Drop`みたいな追加のハックで解決しようとしても、言語の一貫性をさらに損なうだけだと思うよ。" userName="newpavlov" createdAt="2025/08/22 13:57:38" color="#ff33a1">}}




{{<matomeQuote body="Rustの借用チェッカーがうまくサポートできない所有権モデルがあると思うんだ。僕はそれを「ホットポテト所有権」って呼んでるんだけど、バッファを誰かに一時的に渡して、最終的に返してもらうっていう考え方なんだ。これは非語彙的借用の問題に似てて、安全なRustで実装しようとすると、「バッファを返す」処理がめちゃくちゃ書くのが難しいってすぐ分かったよ。" userName="jcranmer" createdAt="2025/08/22 06:06:53" color="#ff5733">}}




{{<matomeQuote body="それはスタックフルコルーチンだろうが関係なく存在する問題だよ。スタックだってユーザーコードでいつでも解放されうるし、パニックしたらバッファはアンワインド時にドロップされることもあるんだ。`async Drop`はハックじゃなくて、この文脈でむしろ有用なものだと思うよ。それに簡単な解決策もあるんだ。Futureが提供するポインタを使わなければいいんだ！" userName="duped" createdAt="2025/08/22 14:02:03" color="">}}




{{<matomeQuote body="「Rust開発者がIOCPを知らなかった」っていうのは歴史の誤った語り方だよ。Rust開発者は決して特定のasyncモデルに熱心だったわけじゃない。Rustの精神に合うモデルを探していて、Completion-basedモデルではゼロコストの合成ができなかったんだ。Aaron Turonの2016年の記事（https://aturon.github.io/tech/2016/09/07/futures-design/）を見れば、彼らがどうして現在の「需要駆動型」のFutureにたどり着いたか分かるはずだよ。彼らはじっくり考えて、Rustの目標に最適な解決策を見つけたんだ。2016年に`io_uring`があったとしても、基本的な判断は変わらなかっただろうね。" userName="kibwen" createdAt="2025/08/22 12:13:36" color="#ff5733">}}




{{<matomeQuote body="この議論、本当に理解できないんだよね。バッファの所有権をI/Oサブシステムに渡して、システムがその所有権をasyncランタイムに転送するんだ。それで、完了がカーネルから届いたら、Futureがそのバッファを返してくれるっていうモデルなら、問題ないんじゃないの？僕は何を見落としてるんだろう？" userName="vlovich123" createdAt="2025/08/22 15:15:54" color="">}}




{{<matomeQuote body="いや、スタックフルコルーチンならそんな問題は起きないよ。ユーザーは（安全なコードで）スタックを勝手にドロップできないし、キャンセルは完全に協調的だからね。完了イベントを待ってる間にパニックなんて基本的にできないんだ。`async Drop`なんて、Rust asyncモデルが導入したたくさんの穴を塞ぐためだけの「ハックの山」だよ。ちゃんと設計されたシステムなら、クラシックな`Drop`でうまくいくはずだろ。「Futureが提供するポインタを使うな！」なんて、`let mut buf = [0u8; 16]; socket.read_all(&mut buf).await?;`みたいな普通のコード使うなって言ってるのと同じだろ？そんなバカげたこと言うなら、もう話すことないわ。" userName="newpavlov" createdAt="2025/08/22 14:15:40" color="#ff5733">}}




{{<matomeQuote body="Rustの`io_uring`抽象化は排他的に所有されるオブジェクトで実現できるんだ。ヒープ確保されたバッファをバッファプールに渡し、操作完了後に返してもらう形だね。`&mut`参照は排他的でコピー不可だから、そのスコープ内ならホットポテト方式も使えるよ。<br>でもRustの問題は、スレッドがいつでもアンワインド/終了してスタック上のバッファを無効にしちゃうことだ。`io_uring`はスレッドの寿命より長くバッファを使うことがあるからね。借用チェッカーはコードの動作しかチェックせず、実行時の挙動は変えられない。だから`io_uring`抽象化がスタック上のバッファを受け取らないようにはできるけど、スレッドのアンワインドを防いでスタックバッファを安全にする力はないんだ。" userName="pornel" createdAt="2025/08/22 09:17:02" color="#785bff">}}




{{<matomeQuote body="「検査した既存のすべてのFutures実装で見つかった」ってのは、他の言語からの間接的な影響について僕が言いたかったことそのままだね。当時のPollingがWindows以外の世界で最も重要なモデルだったのは明らかで、それに互換性を持たせる設計がすごく考慮されたんだ。Rustの`async`モデルは、その最も基本的なインターフェースでPollingの用語を文字通り使ってる！<br>「このアプローチは、Futureの合成のほぼすべてのポイントで割り当てを強制する」というのは、Futuresで非同期実行をモデル化する狭い世界でしか当てはまらないよ。Goでは「Futureの合成」に相当するもの（つまり、すべての関数呼び出し）ごとにヒープ割り当てが行われてるかい？いや、やってないよね。Stackfullモデルでは、タスクのためにスタック全体を割り当てて、Future合成の変なごまかしなしに、関数呼び出しを普通の関数呼び出しとしてモデル化するんだ。<br>うん、Stacklessモデルはメモリ効率が良くて、`join!`でのFutureスタック共有のような便利なトリックも使える。でも、Stackfullモデルは95%以上のユースケースで完全に効率的で、Borrow/Ownershipモデルとより相性が良いし、`.await`のノイズも発生しないし、ひどいエコシステム分裂（異なるExecutor間の分裂を含む）にも繋がらないし、`Pin`のような言語破壊的なハック（`noalias`例外を見てよ）も必要ない。そして、特定のコンパイラ改善（関数の最大スタック使用量境界の追跡や、2つの独立したスタックを持つ別の`async` ABIの導入）で、モデル間のメモリ効率の差を埋めることができると僕は信じてる。<br>「2016年に利用可能な`io_uring`が存在しても、根本的な計算は変わらなかっただろう」ってのは違うと思うな。僕の記憶が正しければ、`io_uring`の最初の実用的なバージョンは、Rustの`async`が安定化の途中にリリースされたんだ。もし`async`システムが今設計されていたら、全く異なるモデルになっていたと僕は本当に確信してるよ。Completion-basedモデルの重要性は、Saneな非同期ファイルIOだけでなく、SpectreやMeltdownのせいで、それ以来増すばかりだからね。" userName="newpavlov" createdAt="2025/08/22 12:34:32" color="#ff5c5c">}}




{{<matomeQuote body="「Stackfullモデルは」ってさ、利点があること自体は何も変えないよ。問題は、欠点があったから、いくら努力してもこのアプローチは採用されなかったってことだ。言語設計にはトレードオフが存在するし、アプローチはそれに応じて判断されたんだ。Goでうまくいくことが、ターゲットとするドメインが異なるRustでうまくいくとは限らないんだ。<br>「もし`async`システムが今設計されていたら、全く異なるモデルになっていたと僕は本当に確信してる」って言うけど、元の問題を解決しない限り、結果は同じだったはずだよ。当時のRust開発者たちは`io_uring`を十分に認識していたからね。" userName="kibwen" createdAt="2025/08/22 13:37:55" color="#ff5733">}}




{{<matomeQuote body="元の問題って具体的に何だったんだ？僕の記憶だと、C/C++の後継としてサイズの問題を気にしてたとか、組み込みシステムでの採用を失いたくなかったとか、そういうところに落ち着いたんだと思ってたんだけど。" userName="no_wizard" createdAt="2025/08/22 15:42:01" color="">}}




{{<matomeQuote body="僕が何か誤解してるのかな？なんで`Fn(_: T) -＞ T`じゃダメなんだ？" userName="stouset" createdAt="2025/08/22 06:11:36" color="">}}




{{<matomeQuote body="僕の宇宙では、`let`なんて存在しないだろうな…。変数を宣言する方法は3つだけなんだ。<br>1. `global my_global_var: GlobalType = …`<br>2. `heap my_heap_var: HeapType = …`<br>3. `stack my_stack_var: StackType = …`<br>グローバル型は相互排他を保証するためにグローバルトレイトを実装する必要がある（手を振る）。だから、割り当て場所を型自体に持たせることで、もう`boxing`の面倒な体操をする必要がなくなるんだ。" userName="alfiedotwtf" createdAt="2025/08/22 12:22:18" color="">}}




{{<matomeQuote body="「`let mut buf = [0u8; 16]; socket.read_all(&mut buf).await?;`は使うな」っていう意見が的外れだって言うのは、僕には的外れに思えないな。君がこれらの詳細を既に知ってるのは分かってるけど、あえて説明するね。もしCで`select/poll/epoll`を使ってソケットの非ブロック読み込みをするなら、どんな古いスタックバッファでもバイトを受け取るのに使えるよ。だってそれらは、ポインターに「今すぐか、さもなければ」書き込むレディネスAPIだからね。でも`IOCP/io_uring`を使うなら、IOループ全体より長生きしないスタックバッファを使わないように注意しなきゃいけないんだ。だってそれらは、ポインターに「後で」書き込む完了APIだからね。これは単に借用チェッカーがコードを分析するのに十分スマートかどうかの問題じゃないんだ。これらは、これら2つの異なる設定で正しいコードがする必要があることの、真の違いなんだ。だから、もし`async Rust`が`IOCP/io_uring`の読み込みにヒープ確保された（または他の方法で長寿命な）バッファを使うことを強制するなら、それは`async`モデルの失敗なの？それともシステムプログラミングの性質なの？" userName="oconnor663" createdAt="2025/08/22 15:14:40" color="#785bff">}}




{{<matomeQuote body="`async`システムの目標は、ユーザーが同期的に見えるコードを、すべての関連する利点と共に非同期で実行できるようにすることだよ。ユーザーにこんなことを「強制」するのは、この目標達成の明確な失敗を示している。さらに、ミュータブルな借用を渡す代わりに、このように所有権を渡すのは、ゼロコスト原則に反すると言えるだろうね。" userName="newpavlov" createdAt="2025/08/22 15:22:08" color="#ff5c5c">}}




{{<matomeQuote body="これは100%、`async`モデルの失敗だよ。ものすごく寛大に言っても、完了ベースAPIとは相性の悪い、リーキーなモデルと呼べるだろうね。" userName="newpavlov" createdAt="2025/08/22 15:38:47" color="#ff5c5c">}}




{{<matomeQuote body="スタックバッファで受け取ることがリーキーモデルであり、君はこのモデルを維持しろって主張してるんだね。それがリーキーなのは、メモリコピーがとてつもなくコストがかかるからだよ。でもそれが90年代のBSDソケットAPIの動作で、メモリコピーをするなら`async`でもできることさ。`io_uring`はパフォーマンスのための現代的なAPIで、だからRustライブラリは内部でのメモリコピーを避けようとするんだ。`io_uring`でスタックバッファへのコピーをサポートするのは、同期コードでも非常に難しいよ。これは`async`の失敗じゃなくて、全く異なるプログラミングパラダイムなんだ。<br>他の人が言ってたように、本当に欲しいのは`io_uring`にページ自体を割り当ててもらうことなんだ。そうすれば、読み込みのために、ハードウェアによって直接書き込まれ、カーネルや他のソフトウェア層によるコピーなしでユーザー空間プロセスにマップされる、カーネルによって割り当てられたページが提供されるんだから。" userName="vlovich123" createdAt="2025/08/22 18:26:35" color="#ff33a1">}}




{{<matomeQuote body="RustはC++と競合するシステム言語なのに、AsyncやGreen threadsが合わないって意見があるのは分かる。Green threadsを使うならGCも付けて、Goみたいに完全なランタイムを用意すれば？って感じだよね。" userName="const_cast" createdAt="2025/08/22 16:00:10" color="">}}




{{<matomeQuote body="ゼロコピーの議論には納得いかないな。バッファを渡して受け取るだけで、コピーは発生しないはずだよ。Asyncが同期コードに見えるべきって考えもよく分からないし、同期はもう古いパラダイムでしょ。カーネルが直接データ書き込んでくれるのか、TLB更新のコストはどうかとか、いろいろ疑問だよ。" userName="vlovich123" createdAt="2025/08/22 15:33:34" color="#ff5c5c">}}




{{<matomeQuote body="TokioチームのAliceがio_uringの困難さに興味が薄いって言ったらしいけど、ファイルIOには関心あると思うよ。ファイルIOは`spawn_blocking`で実装済みだし、io_uringへの移行はそんなに難しくないはず。でも、`tokio::net`の既存APIはbufferベースのio_uring APIはサポートしないだろうね。" userName="aliceryhl" createdAt="2025/08/22 12:40:05" color="#45d325">}}




{{<matomeQuote body="io_uringはニッチじゃないアプリケーションで90％くらい役立つと思う。本来は、色々問題があった非同期ファイルIOを解決するためだったんだ。VFSキャッシュで大量ファイルの`stat`が50倍速くなったこともあるよ。ネットワークは`sendmmsg`/`recvmmsg`とsegmentation offloadで十分速くなる。" userName="johncolanduoni" createdAt="2025/08/22 12:53:37" color="#45d325">}}




{{<matomeQuote body="それって、`Fn(_: &mut T)` と何が違うの？" userName="IshKebab" createdAt="2025/08/22 09:49:57" color="">}}




{{<matomeQuote body="Rustってそういうものじゃない？`let`は常にスタックに確保されるし、ヒープに確保したければ`Box`が必要だよね。`let foo = Box::new(MyFoo::default ())`って書いたら、`Box`はスタックに作られて、`MyFoo`はヒープに作られる。`MyFooStack`と`MyFooHeap`を分けて定義する意味があるのかな？" userName="IX-103" createdAt="2025/08/22 13:51:12" color="">}}




{{<matomeQuote body="io_uringの安全なインターフェースを構築するなら、リングがバッファを所有する形にするべきだと思う。バッファが必要な時はリングに要求して、書き込みを始める時にリングにバッファを返せばいいんじゃないかな。" userName="JoshTriplett" createdAt="2025/08/22 05:48:11" color="#ff5733">}}




{{<matomeQuote body="TCPストリームのシステムコールオーバーヘッドは大きな問題じゃないし、`sendfile()`も使えるね。UDPは別物で、10Gbpsを超えると超複雑になる。QUICも帯域が太いとスケールに苦戦するよ。`sendmmsg`/`recvmmsg` + UDP GRO/GSOで30Gbpsくらいはいけるけど、それ以上は本当に大変。AF_XDPを使ってカーネルのネットワーキングスタックをバイパスし、20GbpsのUDP VPNを実装したことがあるよ。<br>参照: https://arxiv.org/abs/2310.09423, https://microsoft.github.io/msquic/, https://github.com/apoxy-dev/icx/blob/main/tunnel/tunnel.go<br>もし面白いネットワークプロジェクトがあれば、お気軽にご連絡ください！" userName="dpeckett" createdAt="2025/08/22 14:31:32" color="#ff33a1">}}




{{<matomeQuote body="すでに存在するバッファにミュータブルな参照を渡すのと比べて、所有バッファを管理するには避けられないオーバーヘッドがあるよ。もし`io::Read`のAPIが`fn read(&mut self, buf: Vec＜u8＞) -＞ io::Result＜Vec＜u8＞＞`みたいだったらって想像してみて。Rust asyncの目標は同期プログラミングとのパリティだと何度も宣言されてるよ。同期的な抽象化は実用的だし、漏れが少ないほど良いんだ。<br>参照: https://github.com/rust-lang/rust-project-goals/issues/105" userName="newpavlov" createdAt="2025/08/22 15:49:10" color="#ff33a1">}}




{{<matomeQuote body="Rustのasyncにはすごく不満だよ。素晴らしい言語なのにasyncは品質を下げてる。自分で作ってみたけど、言語やコンパイラを変えられないから限界があるんだ。今後は `std` のカスタム・グリーンスレッドフォークを考えてるよ。プロプライエタリだからオープンソースにはできないけどね" userName="newpavlov" createdAt="2025/08/22 14:28:18" color="#38d3d3">}}




{{<matomeQuote body="この記事はすごく良いね、素晴らしい仕事だ。パフォーマンステストが楽しみだよ。<br>記事を読んで、昔CGI-binでデータベース／バックエンドをセットアップしようとしてた頃の知識と繋がったよ。当時はリクエストごとに新しいプロセスが立ち上がってたんだね。`sendfile`もコンカレンシーにすごく役立ったのを覚えてるよ。<br>Netflixの40ms短縮やGTA 5のロード時間70％削減の事例を見ると、まだ改善できることがたくさんあると感じるね。<br>https://en.wikipedia.org/wiki/Common_Gateway_Interface<br>https://netflixtechblog.com/life-of-a-netflix-partner-engine...<br>https://nee.lv/2021/02/28/How-I-cut-GTA-Online-loading-times..." userName="bmcahren" createdAt="2025/08/22 05:35:37" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="CGIだけじゃなく、CERNやApacheの時代はHTTPセッションごとにサーバー全体をフォークしてたんだって！Apacheはだんだん良くなったけど、APIのせいで移行が大変で、記事にあるようなイベント駆動I/Oを最初から使ってるnginxみたいなウェブサーバーが人気になったんだよ" userName="kev009" createdAt="2025/08/22 05:56:41" color="#ff5733">}}




{{<matomeQuote body="HTTPセッションごとにサーバーをフォークするやり方も、アプリケーションワーカーにとっては問題ないよ。`*nix` システムでは `fork()` はすごく速いし、カーネルはCOWを使ってメモリを効率的に扱うからね。`nginx`みたいなモデルは生ファイルの提供には良いけど、ビジネスロジックが重い場合は`fork`も有効な手法なんだ" userName="avar" createdAt="2025/08/22 08:17:08" color="#785bff">}}




{{<matomeQuote body="`exec`を呼ばない`fork`はまだひどいアイデアだよ（シェルみたいな例外はあるけど）。`fork`はすごく危険な操作で、コードもライブラリも慎重じゃないとロックやファイルを子プロセスと簡単に共有しちゃう。例えば`malloc`のデッドロックも起きやすいし、パフォーマンスも使い方次第なんだ" userName="tsimionescu" createdAt="2025/08/22 09:07:54" color="#ff5c5c">}}




{{<matomeQuote body="`fork()`はそこまで悪くないと思うよ。GoやJavaみたいにスレッドフレンドリーな言語だとリスキーだけど、PythonやRubyみたいにスレッドアンフレンドリーな言語だとリスクは低いんだ。リスクがゼロになるわけじゃないけどね。ロックやファイルディスクリプタ、`CoW/GC`のことは考慮が必要だけど、`Java`よりは扱いやすい。`Rust/C/C++`は微妙で、コードベース次第で`fork`の実現可能性が変わるから、難しい判断と知識が必要になるよ" userName="zbentley" createdAt="2025/08/23 15:02:51" color="#ff5c5c">}}




{{<matomeQuote body="サーバーの前に`nginx`みたいなものがあれば大丈夫だよ。じゃないと、33.6kモデムからでも`slowloris`攻撃でサイトが落ちる可能性があるからね" userName="josephg" createdAt="2025/08/22 09:08:20" color="">}}




{{<matomeQuote body="`Unix API`は昔、`fork()`がすごく安価だと考えてたから、スレッドは二級市民扱いだったんだ。`PDP-11`時代はそれで良かったけど、アドレス空間が大きくなるにつれてページテーブルのコピーがめっちゃ高くなって、みんなマルチスレッドに移行したんだ。<br>`VMS`（と`Windows NT`）は最初からプロセスをリソースコンテナ、スレッドを実行単位、`IO`を`async`にしてたのは正解だったけど、プロプライエタリなのがね" userName="tliltocatl" createdAt="2025/08/22 14:20:07" color="#45d325">}}




{{<matomeQuote body="何万ものプロセスや1:1スレッドの起床を扱うのは、スケジューラのベンチマークとしてかなり大胆だね。過去を振り返ると公平性の問題もあるし。多数のノードで高速`I/O`完了イベントを処理するには、レイテンシの粒度が合ってなくて、根本的に考え直さないとダメだよ。<br>イベント駆動`I/O`は`I/D`キャッシュにうまく機能するし、記事みたいにアフィニティや割り当てをちゃんとやれば、カーネル内で`RSS/consistent hashing`みたいな自然なアライメントもできるんだ" userName="kev009" createdAt="2025/08/23 07:02:25" color="#38d3d3">}}




{{<matomeQuote body="Apache HTTPD 1.3以降、リクエストごとにforkするんじゃなくて、事前にfork済みのワーカプロセスプールを使ってるんだ。各プロセスは一つの接続を順次処理して、負荷に応じて増減できる。Apache httpd 2.xの”prefork” mpmでも同じモデルが可能だよ。" userName="jabl" createdAt="2025/08/22 11:07:58" color="#ff33a1">}}




{{<matomeQuote body="俺のコメント、forkがいつ起こったかなんて言ってないだろ？だからそれは揚げ足取りじゃないよ :)" userName="kev009" createdAt="2025/08/22 21:04:27" color="">}}




{{<matomeQuote body="sendfileで効率が上がるって言われても、なんか信じられないな。せいぜいちょっと良くなる程度でしょ？90年代後半でもそんな感じだったし。" userName="commandersaki" createdAt="2025/08/22 20:20:15" color="">}}




{{<matomeQuote body="『せいぜい微々たるもの』ってのはワークロード次第だよ。通常、read()→write()だとディスクからNICまで4段階のコピーがあるけど、sendfile()ならユーザー空間でのコピーがなくなって2段階で済むんだ。これでメモリーコピーと関連オーバーヘッドを減らせる。CDNみたいな高QPSの静的ファイル配信だと、CPU使用率が2桁減ったり、スループットが最大2倍になったりするほど効果あるぜ。" userName="lossolo" createdAt="2025/08/22 21:11:02" color="#45d325">}}




{{<matomeQuote body="sendfileの最適化は理解してるけど、本当に役立つか懐疑的だよ。カーネルの往復時間が支配的な病的なケースじゃないと効果なさそう。Caddyでもsendfileオンオフしても違いなかったし。だから、kTLSの議論にも懐疑的だね。カーネルに暗号化をオフロードするメリットって何？haproxyの作者もパフォーマンス向上はわずかだって言ってたけど、straceでプレーンテキストが見えるのは良い点って。URL: https://blog.tjll.net/reverse-proxy-hot-dog-eating-contest-c..." userName="commandersaki" createdAt="2025/08/23 00:02:25" color="#785bff">}}




{{<matomeQuote body="それじゃあ現代のシステムのメモリーと保護モデルを理解してないね。sendfileはユーザー空間のファイルサーバーを制御プレーンにして、データプレーンをデータの場所に移動させ、アドレス空間間のコピーをなくすんだ。これをI/O完了と合わせて非同期にすれば、完了イベント間でデータがポンピングされるようになる。著者がリンクしてるNetflixの動画を見てみて。DPDKみたいに全部ユーザー空間に持ってくるやり方もあるけど、コンセプトは同じだよ。" userName="kev009" createdAt="2025/08/22 21:11:26" color="#38d3d3">}}




{{<matomeQuote body="良い記事だった！著者がベンチマークよりもまずコードをクリーンアップしたいって考えてるのが、すごく新鮮で感動したよ。<br>ベンチマークだけを追求するプロジェクトが多い中で、こういう考え方をする人がいるって素晴らしいね。著者を尊敬するよ。kTLSやIo_uringがこんな風に使えるなんて知らなかったから、すごく勉強になった、ありがとう。" userName="Imustaskforhelp" createdAt="2025/08/22 07:20:09" color="">}}




{{<matomeQuote body="残念だけど、io_uringはCloudRun、GKE、EKSみたいなクラウドワークロードオーケストレーターやローカルのDockerでも、ほとんどがデフォルトで無効になってるんだ。<br>早く使えるようになってほしいけど、それまではニッチな技術のままだろうね。" userName="alde" createdAt="2025/08/22 14:30:29" color="#45d325">}}




{{<matomeQuote body="gvisorみたいなサンドボックスはシステムコールベースだからね。io_uringを使うとコードがsyscalllessになっちゃうんだよ。" userName="arianvanp" createdAt="2025/08/22 22:14:10" color="">}}




{{<matomeQuote body="セキュリティ上の懸念があるよ。Hacker Newsのこの記事も見てみて。https://news.ycombinator.com/item?id=44632240 cgroupsの会計処理に関するエッジケースもあって、一部の隔離やスロットリング機能が完全に機能しない場合があるみたいだね。" userName="alpb" createdAt="2025/08/23 21:05:50" color="#ff33a1">}}




{{<matomeQuote body="めっちゃクールじゃん！ずっと同じようなこと考えてたから、誰かが実現してくれて嬉しいよ。GG！BPF周りのコードもRustでAya[1]を使って書くのがオススメだよ。[1] - https://github.com/aya-rs/aya" userName="sandeep-nambiar" createdAt="2025/08/22 05:10:49" color="#45d325">}}




{{<matomeQuote body="kTLSの現状ってどうなの？以前、Ciliumの開発者に聞いたら、Thomas Grafが盛り上がってたけど、多くのディストリビューションでカーネルサポートが不足してるから、デフォルトで有効にする準備ができてないって言ってたよ。" userName="phrotoma" createdAt="2025/08/22 10:07:56" color="#ff33a1">}}




{{<matomeQuote body="残念だね。有効にするのはどれくらい大変なの？カスタムカーネルが必要なの、それとも実行時にできる？FreeBSDだと、バージョン13からカーネルとOpenSSLに入ってて、`sysctl kern.ipc.tls.enable=1`で実行時に有効にできるよ。次のFreeBSD-15ではデフォルトで有効になるんだ。Netflixでは、10年近く全てのTLS暗号化ストリーミングをkTLSで動かしてるよ。" userName="drewg123" createdAt="2025/08/22 13:22:28" color="#ff33a1">}}




{{<matomeQuote body="ベンチマーク結果が本当に見たいね。4日前に試して標準のepoll実装を組んでみたけど、uringを使ってもNginxには勝てなかったよ。でも、傲慢な一夜漬けじゃ簡単じゃないから、君が素晴らしい数値を出せることを願ってる。僕のは残念な結果だったけど、君のほとんどのロジックは実装してない、ただ「バッチ」呼び出しを試しただけだからね。幸運と楽しさを祈ってるよ。" userName="6r17" createdAt="2025/08/22 05:36:24" color="#ff5c5c">}}




{{<matomeQuote body="で、async Rustの現状だけど、理解すべきはFutures、Pin、Waker、asyncランタイム、Send/Syncバウンド、asyncトレイトオブジェクト、などだね。C++20ならコルーチン。Goならゴルーチン。Java21+ならバーチャルスレッドがあるよ。" userName="npalli" createdAt="2025/08/22 13:51:10" color="">}}




{{<matomeQuote body="C++のコルーチンは、Pinが解決してる問題を避けるためにヒープアロケーションを使ってることに注意ね。これはC++が通常目指す「ゼロオーバーヘッド原則」から大きく外れてる部分だよ。asyncトレイトの長い開発期間も、RustがFuturesをヒープアロケーションしないことと関係してるんだ。パフォーマンスと移植性 vs 複雑さのトレードオフが、特定のプロジェクトで価値があるかは、もちろん別の問題だね。" userName="oconnor663" createdAt="2025/08/22 15:40:16" color="#ff5c5c">}}




{{<matomeQuote body="C++のコルーチンは、コンパイル時にアロケーションサイズが十分に早く解決できないから、実行時にアロケーションが必要だよ。でも、ヒープからアロケーションされる必要はない（カスタムアロケータは楽しくないけど、可能だよ）。いずれにしても、それは本質的にスタックフレームだから、ゼロオーバーヘッドの失敗じゃない。スタックフレームはどこかに必要だからね。" userName="mpyne" createdAt="2025/08/22 21:22:40" color="#38d3d3">}}




{{<matomeQuote body="Clangでは、コンパイラが十分な情報を見つけられる場合、コルーチンでのアロケーションを省略するために多くの作業が行われてきたんだ。" userName="nly" createdAt="2025/08/22 18:04:50" color="#45d325">}}




{{<matomeQuote body="Send/Sync境界モデルが他の全言語でもまだ重要って事実、つまりSend/Syncがないってことは、微妙に間違ったコードを書きやすくなるってことなんだよね。" userName="K0nserv" createdAt="2025/08/22 15:59:30" color="#ff33a1">}}




{{<matomeQuote body="新しいTypeScriptコンパイラはGoで書かれているんだけど、この前並行変更のせいでクラッシュしたんだ。Javaでもコレクションで並行変更のランタイムチェックがあるしね。" userName="koakuma-chan" createdAt="2025/08/22 17:25:19" color="">}}




{{<matomeQuote body="「そこそこ良い」高レベルのRustコードを書くことに満足して、他の人が作ったミドルレベルのプリミティブを使う分には、Rustの多くを理解する必要はないんだ。そうすれば、たぶん他の言語より性能は上だよ。" userName="hobofan" createdAt="2025/08/22 19:09:35" color="#ff5c5c">}}




{{<matomeQuote body="Rustは理解を強制するから、コンパイル通らないよね。欠点もある。Goのgoroutineはasyncじゃないし、channelsを理解しないとgoroutineも無理。Goは理解を強制しないけど、「安いスレッド」はasyncと違う。tarwebは単一スレッドでio_uring使ってる。スタックの必要性とか、安いスレッドにも利点と欠点があるよね。" userName="thomashabets2" createdAt="2025/08/22 13:59:14" color="#ff5733">}}




{{<matomeQuote body="え、goroutineはasyncだよ。提供される抽象化は同期APIだけど、それは非同期ランタイムを使って実現されているからね。" userName="ori_b" createdAt="2025/08/22 14:36:22" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="その定義だと、pthreadもasyncになっちゃうよ。全部asyncなら、asyncって言葉の意味がなくなる。asyncは、実装じゃなくて表面的な構文とエルゴノミクスに関するものだよ。" userName="gpderetta" createdAt="2025/08/22 22:54:08" color="#785bff">}}




{{<matomeQuote body="いや、asyncは協調的並行性やI/O多重化を指すことが多いよ。pthreadは違う。goroutineはプレエンプティブだけど、GoランタイムがI/Oを多重化するから特殊だね。計算はpthread、I/OはNodeJSみたいな感じで、両方の側面がある。GPの「async runtime」が何指してるかによるけど。" userName="zbentley" createdAt="2025/08/23 15:11:12" color="#ff33a1">}}




{{<matomeQuote body="カーネルがスレッドをスワップする時ってまさにそれだよね。I/Oでブロックすると、スレッドを自発的に一時停止して、別のスレッドと並行I/Oしてるんだ。Asyncとスレッドって、みんなが思ってるよりずっと近いよ。OSは主にasync操作間のスワップ用キューで、ネットワークやディスクI/Oみたいなサービスを集めたものなんだ。" userName="ori_b" createdAt="2025/08/23 16:02:51" color="#45d325">}}




{{<matomeQuote body="うん、実際、ワークを同期的に扱えない抽象化は根本的に破綻してるって主張したいね。この記事を見てよ: https://journal.stuffwithstuff.com/2015/02/01/what-color-is-..." userName="smw" createdAt="2025/08/22 17:36:15" color="#ff5733">}}




{{<matomeQuote body="親コメントが「async」って言ってたけど、Rustで`async`キーワードやランタイムなしでもできるから、その使い方は間違ってるどころか、「間違いですらない」って感じだね。<br>「async」って言葉の定義が複数あるから、文脈を理解したいんだけど、親コメントは色々なものを挙げてて、よくわからないよ。" userName="thomashabets2" createdAt="2025/08/22 15:20:49" color="#ff33a1">}}




{{<matomeQuote body="素晴らしい記事だったよ。次はDPDKみたいなフルカーネルバイパスの動きも見てみたいな。" userName="ValtteriL" createdAt="2025/08/22 05:40:47" color="">}}




{{<matomeQuote body="LUNAがもう同じことやってるの知ってた？<br>このUSENIXの論文をチェックしてみてよ。<br>https://www.usenix.org/system/files/atc23-zhu-lingjun.pdf" userName="spaintech" createdAt="2025/08/22 07:09:32" color="#45d325">}}




{{<matomeQuote body="今までepoll以降の技術と比べてきたけど、どれも劣ってたんだよね。だから、バグだらけの自分の基盤を再実装する価値はないかな。<br>でも、JavaのNIO（epoll）と新しいVirtual Threads IO（ピンニングなし）は比較してみるつもりだよ。<br>http://github.com/tinspin/rupy" userName="bullen" createdAt="2025/08/22 10:19:37" color="">}}




{{<matomeQuote body="io_uringとネットワークに関して調べてるなら、このGitHubのwikiページが役立つかもね。<br>https://github.com/axboe/liburing/wiki/io_uring-and-networki...<br>io_uringにはnapiサポートもあるんだけど、これは割り込みベースのIOじゃなくてソケットでポーリングIOを使うみたいだよ。liburingのGitHubに例があるから見てみて。" userName="ozgrakkurt" createdAt="2025/08/22 14:22:11" color="#ff5c5c">}}




{{<matomeQuote body="タイムスライスを扱うシステムで、なんでみんな1コア1スレッドが正しいって思い込むんだろう？<br>俺の経験だと、スレッドをコアに「オーバーサブスクライブ」（コア数よりスレッドを多く割り当てることね）した方が、実際の時間でメリットがあったよ。<br>プリエンプティブスケジューリングがないなら1コア1スレッドでもうまくいくと思うけど、それってUnixの話じゃないしね。" userName="butterisgood" createdAt="2025/08/22 15:00:57" color="#45d325">}}




{{<matomeQuote body="コアを隔離して、そこにシングルスレッドをピン留めするのが、低レイテンシーと高スループットを得る一番の方法だよ。効率は犠牲になるけどね。<br>Linuxでうまくいくし、トレーディングシステムではよく使われるアプローチだね。ほとんどのコアはスピンして何もしてないから、実際の作業効率は悪いけど、必要な時にレイテンシーとスループットは最高だよ。" userName="gorset" createdAt="2025/08/22 15:14:14" color="#ff33a1">}}




{{<matomeQuote body="1コア1スレッドってアドバイスをする人たちには、もっと「理由を説明して」とか「実際にどうなるか見せて」ほしいっていつも思うんだよね。<br>だって、全てに当てはまる良いアドバイスじゃないでしょ。" userName="butterisgood" createdAt="2025/08/22 16:25:38" color="">}}




{{<matomeQuote body="Scyllaと、その基盤フレームワークのSeastarをチェックしてみてよ。彼らはちゃんと理由を説明して、作業も示してるから。" userName="lossolo" createdAt="2025/08/22 17:22:26" color="#ff5733">}}




{{<matomeQuote body="確かに、1コア1スレッドってアドバイスは全てに良いわけじゃないんだよね。<br>でも、IO待ちが多いとか、CPU作業が多いといったCPU/IOの両極端なワークロードだと、すごく有利になるよ。L1キャッシュの利用率も高くなるし、コンテキストスイッチもないし、スレッド間の同期処理もいらないからね。<br>IOとCPU作業が混ざったワークロードだと、もっと難しくなるけど、それでもうまくいく可能性はあるよ。" userName="thinkharderdev" createdAt="2025/08/22 20:20:24" color="#785bff">}}




{{<matomeQuote body="スレッドごとのコア（TPC）アーキテクチャでよくある間違いは、便利な部分だけを選ぼうとすることだよ。実際は「全か無か」に近くて、中途半端なTPC実装はむしろやらない方がマシな場合もあるんだ。でも、正しくやればTPCはほぼ全ての状況で効率的だよ。多くの開発者は、コア間の負荷を適切にバランスさせたり処理したりする方法みたいなTPCの設計手法に不慣れなんだよね。" userName="jandrewrogers" createdAt="2025/08/22 16:38:54" color="#ff5733">}}




{{<matomeQuote body="CPUバウンドでI/Oバウンドじゃないなら、コアごとに1スレッドっていうのが理想だね。この記事のウェブサーバーは非同期でイベントベースだから、I/O待ちやシステムコールはほぼないみたい。これは「コアあたり1スレッド」のワークロードの理想形に近いと思うけど、「これは現実世界ではほとんど起こらないから、実際のユースケースをテストせずにアプリを安易にnprocスレッドに制限しちゃダメだぞ」っていう極端な注意書きは必要だね。" userName="danudey" createdAt="2025/08/22 18:44:35" color="#785bff">}}




{{<matomeQuote body="でもさ、CPUってタイムスライスで割り当てられるじゃん？だったら、「コアあたり1スレッド以上」って「もっとCPU使える」ってことと一緒じゃないの？（俺が言いたいのは、そうなる時もあるってことだけどね…）" userName="butterisgood" createdAt="2025/08/22 21:46:34" color="">}}




{{<matomeQuote body="Ron Minnichによる9frontへの「Nix」（みんなが知ってるNixOSとは違うよ）のポートがあるんだ。これの主目的は、カーネルが「アプリケーションコア」に割り当てるべきCPUを、プリエンプトしたり切り替えたりするのを禁止することなんだ。この仕組みにio_uringを組み合わせたら、とんでもなく素晴らしいことになるだろうね。" userName="butterisgood" createdAt="2025/08/22 21:55:58" color="#ff33a1">}}




{{<matomeQuote body="io_uringの場合、カーネル側がワーカースレッドのプールを使ってるから、ユーザー側はコアごとに1スレッドっていうのが良い目安になるかもね。" userName="wahern" createdAt="2025/08/22 19:10:29" color="#38d3d3">}}




{{<matomeQuote body="これって、システムコールを登録しないから、優れたデータ抜き出し（exfil）のインプラントとして使えるんじゃないかな？" userName="j-krieger" createdAt="2025/08/22 13:01:34" color="#ff33a1">}}




{{<matomeQuote body="まさにそうだね、だから主要なクラウドプロバイダは今、多くの計算環境でio_uringを無効にしてるんだよ。" userName="zbentley" createdAt="2025/08/23 15:14:57" color="#ff33a1">}}




{{<matomeQuote body="すごいね！kTLSの追加は間違いなく改善だよ。俺も数年前に、リクエストあたりのシステムコールが完全にゼロのサーバーを作ったんだ（https://wjwh.eu/posts/2021-10-01-no-syscall-server-iouring.h... でブログにも書いたけど）。でも、記事にもあるように、絶えずビジーループするっていう大きなコストがあったんだ。io_uringはすごくクールな技術だし、ここ数年で驚くほど進化してるよね。" userName="WJW" createdAt="2025/08/22 20:11:34" color="#38d3d3">}}




{{<matomeQuote body="straceの代わりに、何が起こっているかを知りたいなら、何を使えばいいの？" userName="boredatoms" createdAt="2025/08/22 05:15:41" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
