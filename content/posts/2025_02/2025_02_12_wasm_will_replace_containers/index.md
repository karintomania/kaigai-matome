+++
date = '2025-02-12T00:00:00'
draft = false
title = 'WASMがコンテナに取って代わる時が来た！その理由とは？'
tags = ["WASM", "コンテナ", "テクノロジー", "プログラミング", "開発"]
featureimage = 'thumbnails/light_colour2.jpg'
+++

> WASMがコンテナに取って代わる時が来た！その理由とは？

引用元：[https://news.ycombinator.com/item?id=43020684](https://news.ycombinator.com/item?id=43020684)

{{<matomeQuote body="ファイルアクセスやネットワーキングのインターフェース不足がWASMの普及を妨げてるけど、時間の問題でこれらの機能が統合されると思う。逆にファイルアクセスやネットワーキングを追加するとセキュリティの穴も増えるし、Javaの作りの良いところが壊れたのもこれが原因だよね。結局コンテナも残るんじゃないかな。でも、確かにコンテナの簡略化はできそう。" userName="not2b" createdAt="2025-02-12T02:02:08" color="">}}

{{<matomeQuote body="確かにそうだけど、WASMを使ってAPIを仮想化する方が通常のネイティブバイナリより楽だと思う。一方でDockerはすべてのシステムコールをLXDコンテナにルーティングするから、WASMランタイムでも同じことができるはず。WASMバンドルを実行する環境を選べるのが便利だし、WASIがあれば多くの問題も解決できると思う。" userName="josephg" createdAt="2025-02-12T03:02:50" color="#ff5733">}}

{{<matomeQuote body="RISC-V 64 Linux ELFのサンドボックスを作っている人として、正直WASMには悩んでいる。WASMの世界はWASIやWATコンポーネントに向かっていて、.NETなどの生態系のようになりつつある。でも、GoやRustからWASMをシンプルに出力するのは簡単じゃない。RISC-Vのユーザーランドエミュレータを使えばいいけど、Linuxユーザーランドとの互換性を考えると、けっこう大変だよ。" userName="quesomaster9000" createdAt="2025-02-12T03:13:30" color="">}}

{{<matomeQuote body="WASMの世界がWASIやWATコンポーネントに向かってるのはデカイけど、それにより全体を再構築する必要があるのが懸念。とは言え、HTTPのリクエストを扱うためのWASI HTTPなど、基盤は整ってきてる。標準インターフェースの提供で再構築の必要は減ると思う。" userName="hardwaresofton" createdAt="2025-02-12T03:23:42" color="">}}

{{<matomeQuote body="WATやWASIに注目してるけど、過去のDLL地獄の繰り返しが心配。標準化が進めば開発コストが減るけど、各チームが同じものを再構築する必要がなくなるといいな。でも、UNIX方式の『独立したコマンド』モデルの方が自分を式やインターフェースの発見が重要だと思う。" userName="quesomaster9000" createdAt="2025-02-12T04:54:31" color="">}}

{{<matomeQuote body="WASM + WASIはDLLとは違うから、少なくともDLLはどこでも動くしバージョンやインターフェースが厳密に結びついてるのがいいよね。これは今までにない新しい動き。確かに意味は保証されないけど、今までよりは良い状況だと思う。" userName="hardwaresofton" createdAt="2025-02-12T05:36:42" color="#ff33a1">}}

{{<matomeQuote body="DLLはCLRがクロスプラットフォームになってからどこでも動くようになった。ただ、この道はすでに何度も歩まれている。" userName="pjmlp" createdAt="2025-02-12T06:57:01" color="">}}

{{<matomeQuote body="WASMの「普遍的なコンパイルターゲット」という側面より「普遍的に埋め込まれる」方が強調されるべき。サンドボックス機能がWASMエコシステムのカギで、これがないと誰も興味を示さなかっただろう。Javaの失敗はここでもあったよ。" userName="afiori" createdAt="2025-02-12T12:36:54" color="">}}

{{<matomeQuote body="WASMのサンドボックスは完璧ではないよ。実装次第でハッカーが攻撃する可能性があるし、メモリの破損には防護が効かない。だから、WASMのセキュリティは実装に依存してる。" userName="pjmlp" createdAt="2025-02-12T13:04:38" color="">}}

{{<matomeQuote body="WASMのサンドボックス機能は優れていて、立ち上がりの速さも際立ってるけど、ネイティブコードと比べるとどうなの？実行速度は同じぐらいか？" userName="nindalf" createdAt="2025-02-12T07:43:19" color="">}}

{{<matomeQuote body="ユーザーランドエミュレーションの文脈では、WASMは他の選択肢と比較してネイティブに近いスピードで実行することができる。ただし、効率の良い言語でプログラムを書くことも可能だし、実行速度を向上させることはできると思う。" userName="hardwaresofton" createdAt="2025-02-12T08:29:30" color="">}}

{{<matomeQuote body="WASMのために薄いカーネルインターフェースを作っている。これにより余計なオーバーヘッドが少なくなるから。こうすることで、WASIのようなものが上手く機能していく。" userName="titzer" createdAt="2025-02-12T13:03:23" color="#45d325">}}

{{<matomeQuote body="薄いカーネルインターフェースを使った場合、Wasmエンジンにとっては低オーバーヘッドで実装の手間も少ないけど、それが原因でGoogleのgVisorやMicrosoftのWLS1は失敗したんだよね。" userName="yencabulator" createdAt="2025-02-13T00:28:04" color="">}}

{{<matomeQuote body="薄いカーネルインターフェースはカーネルの再実装じゃないよ。WAMRのWALI実装は約2000行のCで、ほとんどがシステムコールのパススルー。" userName="titzer" createdAt="2025-02-13T11:47:40" color="">}}

{{<matomeQuote body="つまり、システムコールを転送するだけであって、Wasmのサンドボックスを無視するってことじゃないよね。" userName="yencabulator" createdAt="2025-02-13T14:51:08" color="">}}

{{<matomeQuote body="Wasmのサンドボックスは捨ててないよ。メモリとシステムのサンドボックスがあって、後者もネイティブプロセスのポリシーを適用できるから、より効率的に実現できる。" userName="titzer" createdAt="2025-02-13T16:49:33" color="#ff5733">}}

{{<matomeQuote body="うん、選択的にシステムコールを転送するのは、Linuxの部分を再実装しないといけないってことになるよ。面白くなさそう。" userName="yencabulator" createdAt="2025-02-13T17:09:22" color="">}}

{{<matomeQuote body="また”Linuxの部分を再実装”する必要はないよ。セキュリティポリシーはWALI呼び出しレイヤーの上で実装できるから。" userName="titzer" createdAt="2025-02-13T17:56:35" color="">}}

{{<matomeQuote body="複雑なポリシーのためにシステムコールの意味を理解する必要があるから、ファイルディスクリプタを追跡するのが結局面倒だと思う。" userName="yencabulator" createdAt="2025-02-13T18:01:45" color="">}}

{{<matomeQuote body="エンジンがこれをする必要はなく、自分のライブラリとして実装すればいい。薄いカーネルインターフェースは安定したインターフェースだし、高レベルのポリシーもWasmモジュールとして実装可能。" userName="titzer" createdAt="2025-02-13T18:16:38" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="難しい部分を呼び出し元に任せるのは怖いよ。filesystemのseccompポリシーを書くのって、かなり大変。" userName="yencabulator" createdAt="2025-02-13T18:21:03" color="">}}

{{<matomeQuote body="もちろん、セキュリティポリシーを熟練者が書いてライブラリとして再利用できるんだ。WASIも新しいAPIで、アプリを書き直す必要があるから面倒だよ。" userName="titzer" createdAt="2025-02-13T19:59:52" color="#ff5c5c">}}

{{<matomeQuote body="WASMのホストインタラクションAPIはEFIに似てる気がする。スタート時に魔法の関数のテーブルを渡されて、それでホストとやり取りする感じ。" userName="Joker_vD" createdAt="2025-02-12T09:07:43" color="">}}

{{<matomeQuote body="RISC-Vのサンドボックスを書いた者としては、WASMに対抗する競争がもっと必要だと思う。最後には、レジスタマシンの方が早くなるはず。" userName="fwsgonzo" createdAt="2025-02-12T07:31:00" color="">}}

{{<matomeQuote body="みんなが同じAPIを同じように実装するって前提になってるけど、実際にはブラウザやCloudflare workers、AWS Lambdaが各々違ったAPIセットを持つ可能性が高いよね。したがって、WASMコードはこれらの実装の違いに対応しなきゃいけない。コミュニティで共通のAPIを作るって難しいからあまり期待できない。" userName="danpalmer" createdAt="2025-02-12T03:08:07" color="">}}

{{<matomeQuote body="そうだよね！今はそういうのに取り組んでいる人たちがいる。Preview3が出ればちょっと変わるけど、基本のインターフェースは確立されてるよ。WASIのコアセットをもとに、ユースケースに応じた実装があるのは良いことだと思う。" userName="hardwaresofton" createdAt="2025-02-12T03:15:52" color="#ff33a1">}}

{{<matomeQuote body="プロトコルを標準化するグループのせいではなく、みんなが自分の考えを優先することが問題だよね。" userName="RALaBarge" createdAt="2025-02-12T12:47:34" color="">}}

{{<matomeQuote body="Wasmが過去の教訓を無視しているの？ どんな失敗があったか興味あるな。" userName="mardifoufs" createdAt="2025-02-12T15:39:36" color="">}}

{{<matomeQuote body=">この機能はOSスレッドとランタイムスレッドを分離することで実現されてるんだけど、それにはスタックの寿命とか色々問題があるよね。実際、高スレッド、高メモリのアプリケーションには関数色付けの有用性があるから、これが無駄になる可能性もあるよ。" userName="DaiPlusPlus" createdAt="2025-02-12T03:31:54" color="">}}

{{<matomeQuote body="その通り！ 実際のスレッド実装はインテグレーターに任されるから、実装によっては同時実行性がない場合もあるし、奇妙なバグが発生する可能性もあるよね。" userName="danpalmer" createdAt="2025-02-12T03:37:20" color="">}}

{{<matomeQuote body=">OSスレッドをブロックしないことが目的なのに、メモリのオーバーヘッドが出るかも…って話だよね。asyncは並行性には関わらないし、各言語がそのためのオーバーヘッドを持つはず。高スレッドのアプリもサポートするための工夫次第だね。" userName="hardwaresofton" createdAt="2025-02-12T05:31:10" color="#ff5733">}}

{{<matomeQuote body="実装のためのバリデーションスイートを作るのは良いアイデアだね。APIがちゃんと機能するかをチェックして、どこが問題かを見える化するのは大事だと思う。" userName="josephg" createdAt="2025-02-12T03:13:12" color="">}}

{{<matomeQuote body="理想的かもしれないけど、現実的には無理だと思うよ。ブラウザのテストだって互換性問題があるのに。各実装が違えば、自社の市場競争力を高めるために変更するかもしれないし。" userName="danpalmer" createdAt="2025-02-12T03:42:01" color="">}}

{{<matomeQuote body="ブラウザの問題は市場の力が関係してるけど、Wasmはそんな問題はないと思う。共通のテストが存在することで、互換性がある限りユーザーにも恩恵になるし、違いがある場合でも標準があった方がいい。" userName="hardwaresofton" createdAt="2025-02-12T05:43:40" color="#38d3d3">}}

{{<matomeQuote body="ブラウザの問題は市場シェアの問題じゃないと思う。実際、ここ20年以上、IE以外のブラウザは互換性を重視してて、独自の拡張だけが追加されてきたんだ。MicrosoftもEdgeプロジェクトを始めて互換性のあるブラウザを作ろうとしたけど、結局Chromiumにシフトしたのを認めちゃったし。" userName="hnlmorg" createdAt="2025-02-12T07:50:53" color="#45d325">}}

{{<matomeQuote body="もしかして誤解してるかもしれないけど、市場シェアの問題がなぜ影響しないのかすごく疑問なんだ。市場シェアのトップは互換性を心配しなくていいってことだよ。もしChromeが半分のユーザーと互換性のない変更を強いられたら、考え直さざるを得ないと思う。" userName="hardwaresofton" createdAt="2025-02-12T08:18:12" color="">}}

{{<matomeQuote body="IEはもう長い間市場シェアのリーダーじゃないし、自分自身との互換性さえ保てなかったから、そもそもこれは市場リーダーの問題じゃない。仕様も複雑すぎて、異なる実装で同じ結果を出すのがほぼ不可能だからね。" userName="hnlmorg" createdAt="2025-02-12T08:47:20" color="">}}

{{<matomeQuote body="確かにその点は公平だね。IEからChromeに移る過程で、もっと多くのブラウザが平等にシェアを持ってた世界を見逃してしまったと思う。ただ、他のポイントには賛成だよ、市場シェアが唯一の問題じゃない。" userName="hardwaresofton" createdAt="2025-02-12T09:44:04" color="">}}

{{<matomeQuote body="今はブラウザ間の互換性は昔に比べてほんとに少なくなってるよ。他の場所の受け入れテストがどれだけの不具合を抱えても、ほとんど問題にはなってない。多数の実装があるAPIでは検証テストが必要だと思う。" userName="josephg" createdAt="2025-02-13T00:34:55" color="#785bff">}}

{{<matomeQuote body="将来的にはDockerがWASMに移植されて、クリーンに抽象化されると思う。歴史は繰り返すからね。" userName="cudder" createdAt="2025-02-12T11:05:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="その理解は間違ってるよ。コンテナはシステムコールを行うけど、Linuxカーネルがそれを処理している。WASMだとサーバー側でファイルI/OやネットワークI/Oを実装しないといけなくて、そこはかなり違うと思う。" userName="yencabulator" createdAt="2025-02-13T00:39:42" color="">}}

{{<matomeQuote body="確かにDockerの要点は全てのAPIをWASMで仮想化するのが簡単だってことなんだけど、その道のりはそんなに簡単じゃないと思う。過去の抽象化の試みがそうだったように、全てを一つで解決するのは難しいからね。" userName="funcDropShadow" createdAt="2025-02-12T07:26:19" color="">}}

{{<matomeQuote body="DockerとLXDは競合プロジェクトだから、どちらもLinuxの機能を使っているけど、カーネルには『コンテナ』って概念がなくて、この2つはそれぞれ独立してるんだ。" userName="SEJeff" createdAt="2025-02-12T06:20:57" color="">}}

{{<matomeQuote body="Dockerは10年前にLXCドライバーを使ってたけど、今はもう使ってないからね。" userName="tecleandor" createdAt="2025-02-12T09:40:00" color="">}}

{{<matomeQuote body="面白いけど、LXDはそれでもDockerにとっては競合なんだ。ソースコードを見たことがあるから、実際には違うってわかるよ。" userName="SEJeff" createdAt="2025-02-12T13:47:15" color="">}}

{{<matomeQuote body="これが俺の考えだった。WASMはコンテナの良い代替になると思う、だってそれにはこういうものが無いから。" userName="resonious" createdAt="2025-02-12T02:09:56" color="">}}

{{<matomeQuote body="基本的にそれは仮想マシンだけど、LXDやFirecrackerでスピンアップできる。ファイルアクセスはあるけど、コンテナ（DockerやPodmanを想定）の方が扱いやすい。" userName="gchamonlive" createdAt="2025-02-12T02:27:10" color="">}}

{{<matomeQuote body="Googleのgvisorを使うと、PodmanやDockerのコンテナランタイムとして使える。VMとコンテナのいいハイブリッドで、KVMでVMのように使えるけど、カーネルは供給しなくて偽のカーネルと通信する。セキュリティの境界もほぼVM並だけど、ほとんど全てが通常のコンテナのように動く。" userName="p12tic" createdAt="2025-02-12T05:28:50" color="#ff5733">}}

{{<matomeQuote body="一方、GoogleはgVisorから離れた。実際のLinuxのように見せるのが難しすぎたから。すべてのLinuxのシステムコールを再実装するのは良い体験を生むとは限らない。" userName="yencabulator" createdAt="2025-02-13T00:44:53" color="">}}

{{<matomeQuote body="でも、仮想マシン内のI/Oやドライバーを構築するのはWASIモデルに比べて難しい。WASMにはスタートアップ時間が一般的に良く、メーターリングもできるというのが利点だ。WASMとVMの機能は似てるけど、WASMにはユニークな利点がある。" userName="hardwaresofton" createdAt="2025-02-12T03:28:14" color="">}}

{{<matomeQuote body="開発者がJVMやCLRを埋め込むことを選ばなかったのと同様、WASMも同じだろう。wasmtimeは他の選択肢より埋め込みやすく、さまざまな言語で使われている。これは他のソリューションにはなかった重要な部分だ。" userName="hardwaresofton" createdAt="2025-02-12T08:21:38" color="#45d325">}}

{{<matomeQuote body="WASMに関してはあまりハイプサイクルがあるとは思わない。実際、成功している企業は少なくないよ。エコシステムは既存コードへの変更を最小限に抑えて統合する方向に進んでる。" userName="hardwaresofton" createdAt="2025-02-12T08:35:46" color="#38d3d3">}}

{{<matomeQuote body="WASMの将来はゲームやアプリケーションの拡張インターフェースになると思う。特にゲームではluaやjavascriptの方が好まれそう。でも、VSCodeやBlender、ExcelにとってはWASMのサンドボックスが安全な拡張を可能にすると思う。" userName="afiori" createdAt="2025-02-12T12:58:59" color="">}}

{{<matomeQuote body="WASMってよく分かんないけど、多言語対応がメリットみたい。具体的には、Pythonのライブラリが時代遅れのCライブラリに依存してる場合も、WASMにすれば一つのファイルにまとめられるってわけ。性能が同じなら、これって結構いいアイデアなんじゃない？" userName="Capricorn2481" createdAt="2025-02-12T02:46:26" color="">}}

{{<matomeQuote body="アプリのプラグインもWASMで作れるようになるから、プラグイン作成者が好きな言語で書けるのがいいよね。Extismフレームワークがその例だよ！uBlock OriginもFirefoxでWASM使ってるらしいよ。" userName="zfg" createdAt="2025-02-12T07:08:33" color="#ff33a1">}}

{{<matomeQuote body="Cloudflareのworkersって、コンテナの代わりに近いものを提供してるかも。オーバーヘッドが少ないから、AWS lambdaよりも安く運用できるんだ。今は色々制約があるけど、実際に動いてるアプリもあるよ。" userName="tyingq" createdAt="2025-02-12T03:00:38" color="">}}

{{<matomeQuote body="自分はGolangをCloudflare workersで動かしてるけど、WASIとは合わなかった。シンプルなドライバ使っていて、標準入出力で全部書いてるよ。WASIは使いにくいから、WASMの新しい機能が使えたらいいなって思ってる。" userName="gedw99" createdAt="2025-02-13T01:58:38" color="">}}

{{<matomeQuote body=">WASMは多言語のポータビリティがある。Pythonのライブラリが時代遅れのCライブラリに依存してる場合、WASMにすれば一つのファイルにまとめられる。<br>これがまさにWASMの強みで、コンテナやVMに比べて軽量で機能をパッケージ出来るのがいいんだ。" userName="hardwaresofton" createdAt="2025-02-12T05:49:00" color="#ff33a1">}}

{{<matomeQuote body="IronPythonでC依存をどうやって含めるか分からないけど、これがPythonエコシステムとの互換性を制限してるんだ。でもWASMならどんな言語でも使えるから、エコシステムを持ってこれるのが強みだよ。" userName="Capricorn2481" createdAt="2025-02-13T01:01:34" color="">}}

{{<matomeQuote body="完全に同意だけど、一番の問題はC依存を含めるのが難しいところだね。Python対応の改善に向けてスマートな人たちが頑張ってるよ。特にComponentize Pyプロジェクトなんかが注目だね。" userName="hardwaresofton" createdAt="2025-02-13T06:05:49" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="C++/CLIを使ってコンパイルすればC依存を含められるんだ。Emscriptenを使うのと似てる。" userName="pjmlp" createdAt="2025-02-13T07:56:12" color="">}}

{{<matomeQuote body="WASMはポータビリティよりも埋め込みやすさが大事だと思う。Cから他の言語へのコンパイルは容易だけど、WASMではその言語とのインターフェースが安全かつ高性能。セキュリティも考慮されているんだ。" userName="afiori" createdAt="2025-02-12T13:11:35" color="">}}

{{<matomeQuote body="基本的にはまた別のバイトコードベースのランタイムだけど、まるで初めてのように売り出されてる感じがする。" userName="pjmlp" createdAt="2025-02-12T07:12:05" color="">}}

{{<matomeQuote body="WASIコンテナは必要なインターフェースだけでコンテナを立ち上げるアイデアだよ。" userName="afiori" createdAt="2025-02-12T13:13:24" color="">}}

{{<matomeQuote body="JavaのSecurityManagerは最初は良かったけど、時間と共にバイパス方法が増えて、JDK 25で完全に削除されるらしい。ちょっと寂しいね。" userName="paul_h" createdAt="2025-02-12T09:01:53" color="">}}

{{<matomeQuote body="Java appletsのことを言ってるのかな？JavaはAPIをちゃんと使えば、今でも一度書けばどこでも動くよ。" userName="throwaway7783" createdAt="2025-02-12T02:53:44" color="">}}

{{<matomeQuote body="ActiveXは25年前にこれを解決してたよ。ユーザーがサンドボックス外へのアクセスを管理できるコード署名があった。" userName="rr808" createdAt="2025-02-12T03:10:29" color="#45d325">}}

{{<matomeQuote body="あらゆるアプリの信頼性を徹底的に調査する中央権威がいるって？" userName="lxgr" createdAt="2025-02-12T03:18:37" color="">}}

{{<matomeQuote body="むしろお金を見つめることに近いよ。お金が多いほどソフトウェアが安全になる。" userName="account42" createdAt="2025-02-13T09:45:04" color="">}}

{{<matomeQuote body="＞”それがJavaの一度書けばどこでも走るという約束を壊したんだ。”<br>俺はIntelでJavaソフトを書いて、armデバイスにデプロイしてるけど、ちゃんと約束は果たされてるよ。" userName="okeuro49" createdAt="2025-02-12T08:26:06" color="">}}

{{<matomeQuote body="クロスコンパイラでほぼどの言語でもこの用途は解決されてるよ。大きなJavaプログラムをカスタムOSやハードウェアで動かすのは簡単じゃないけどね。" userName="account42" createdAt="2025-02-13T09:48:08" color="">}}

{{<matomeQuote body="それは自分が管理してる別のデバイスでの話で、どこでもって言ってるのは、信頼できない人々のために応用されてる意味だからね。" userName="yencabulator" createdAt="2025-02-13T16:55:33" color="">}}

{{<matomeQuote body="＞”ファイルアクセスやネットワークなどを追加することで生じるセキュリティホールを防ぐにはどうするの？”<br>新しいエコシステムだから、セキュリティの新しい視点を考えてみるのもありじゃない？例えば、全体をコンテナに入れるのも手だし。" userName="rollcat" createdAt="2025-02-12T11:10:19" color="#ff5733">}}

{{<matomeQuote body="Javaの一度書けばどこでも走るは問題ないよ。Javaユーザーはコンテナにこだわることが少なくて、JVMが同じ問題を解決してるからね。" userName="lmm" createdAt="2025-02-12T09:22:13" color="">}}

{{<matomeQuote body="最近のJavaフレームワークはほとんどがクラウドでDockerコンテナをターゲットにしてるよね。" userName="bzzzt" createdAt="2025-02-12T09:43:55" color="">}}

{{<matomeQuote body="まあ、コンテナはファットランタイムの言語をデプロイするのに便利なんだよね。" userName="afiori" createdAt="2025-02-12T13:25:45" color="">}}

{{<matomeQuote body="そのファットランタイムはポータビリティのウソの一部だよ。どこでも動くっていうのは、ランタイムがインストールされてる場所だけの話だし。" userName="account42" createdAt="2025-02-13T09:50:12" color="#785bff">}}

{{<matomeQuote body="> あなたがQEMUをランタイムと呼びれば、コンパイル済み言語にも同じことが言えるよ。これは理論的な話じゃなくて、実際にそうなんだ。コンパイル言語で書かれたゲームは依存関係をバンドルすることを知ってるし、Javaで書かれたゲームはJREを持っていることを期待する。" userName="lmm" createdAt="2025-02-13T14:16:23" color="#ff5733">}}

{{<matomeQuote body="ポータビリティとサンドボックスは全く異なる特性だよ。" userName="afiori" createdAt="2025-02-12T13:22:42" color="">}}

{{<matomeQuote body="まあ、私としてはコンパイルするより、どこかでそのまま動かしたいって感じかな。Javaはクールだね。" userName="BrouteMinou" createdAt="2025-02-12T14:25:03" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（4）">}}
{{<matomeQuote body="いくらコンテナが便利でも、本当に安全だとは言えないよ。VMの境界が必要だね。" userName="7e" createdAt="2025-02-12T05:19:01" color="">}}

{{<matomeQuote body="> それがJavaを殺した理由だ。Javaは色々なシステム統合を考えられて作られたけど、サンドボックスは二の次だった。" userName="dathinab" createdAt="2025-02-12T08:52:00" color="#45d325">}}

{{<matomeQuote body="> Javaは主にインタラクティブテレビのために設計された。ケーブルテレビのセットトップボックスがアプリを受信して実行するためだよ。" userName="yencabulator" createdAt="2025-02-13T16:58:47" color="">}}

{{<matomeQuote body="Javaの焦点は時代によって変わったから、歴史を正確に理解するのは難しいね。例えば、セキュリティに関する考え方が90年代とは全然違うし。" userName="dathinab" createdAt="2025-02-15T01:03:02" color="">}}

{{<matomeQuote body="セキュリティが理由で消えたわけじゃないと思うよ。大体の会社はセキュリティを装ってるだけで、実際には気にしてないし。" userName="guappa" createdAt="2025-02-12T13:29:25" color="">}}

{{<matomeQuote body="＞でも、ファイルアクセスやネットワーキングを追加することで紹介される全てのセキュリティホールを防がなきゃならないよね。<br>まるでオペレーティングシステムみたい。" userName="Dalewyn" createdAt="2025-02-12T02:34:20" color="">}}

{{<matomeQuote body="はいといいえ。WASIリポジトリを見てみて。WASIは、WASM VM内で実装されるクロスプラットフォームのシステムコールの仕様だね。<br>こういったアクセスには、行動分析に基づくコントロールとポリシーの仮定が必要で、Denoのようにホストとウェブアプリケーションファイアウォールのルールが出てくるといいな。" userName="cookiengineer" createdAt="2025-02-12T04:30:58" color="#785bff">}}

{{<matomeQuote body="はい。Wasmはこの問題にはまだ答えを持ってないよ。ネットワーキングやファイルシステム、パーミッションモデルはすごく難しい。<br>APIに関する合意がないと、プラットフォーム非依存の体験には至らないと思う。<br>FFIを活用できれば、言語間でアプリを作るのが楽になるかもしれないね。" userName="klabb3" createdAt="2025-02-12T02:59:09" color="">}}

{{<matomeQuote body="WASIを見てみて、それがまさに君が話してることだよ。" userName="cookiengineer" createdAt="2025-02-12T04:34:01" color="">}}

{{<matomeQuote body="WASMはコンテナとは異なる問題を解決するけど、サンドボックスされたコードを効率的に実行するのに優れてる。<br>Functions-as-a-Serviceの実装とか、不信のロジックを実行するために使われると思う。コンテナはこの問題を解決しないし、OSにしっかり統合されてるから重たいんだ。" userName="danpalmer" createdAt="2025-02-12T03:03:45" color="#785bff">}}

{{<matomeQuote body="コンテナのセキュリティ境界は強化できるよ。gVisorのようなコンテナランタイムを使うと、セキュリティ境界がほぼVMと同じ強さになるけど、ほとんど普通のコンテナみたいに動くね。" userName="p12tic" createdAt="2025-02-12T05:32:18" color="">}}

{{<matomeQuote body="gVisorはいいけど、パフォーマンスに影響があるし、全てのイメージで動くわけじゃないよ。" userName="udev4096" createdAt="2025-02-12T08:10:23" color="">}}

{{<matomeQuote body="一応、2023年にオープンソースのgVisorがptraceをやめたことでパフォーマンスの低下が改善されたよ。" userName="yencabulator" createdAt="2025-02-13T17:00:27" color="">}}

{{<matomeQuote body="WASMはコンテナが持っていないサンドボックスやセキュリティの問題を解決してるし、ポータブルで簡単に出荷できるのも魅力だよ。<br>コンテナの独自性を示すポイントが今は見えない。" userName="jauntywundrkind" createdAt="2025-02-12T05:29:31" color="#ff5733">}}

{{<matomeQuote body="DockerのようなコンテナはLinuxサーバーが続く限り存在するだろうし、なかなか良い技術だよ。<br>今は小さなアプリを単一のdockerコンテナで動かしているけど、MySQLをWASMで動かすのはすぐには無理だと思う。" userName="afiori" createdAt="2025-02-12T14:07:13" color="">}}

{{<matomeQuote body="WASMはFunctions-as-a-Serviceの実装やプラグイン機構として広がると思う。<br>言語コミュニティが集まるだけで、分断の原因にはならないだろうし。" userName="weinzierl" createdAt="2025-02-12T09:15:52" color="">}}

{{<matomeQuote body="WASMはブラウザでの計算に使うよりも、クライアントマシンのユニバーサルな言語VMとしての方が有用になると思うよ。" userName="shortrounddev2" createdAt="2025-02-12T03:45:21" color="#ff33a1">}}

{{<matomeQuote body="CloudflareやFastly、それにAmexがWASMをFaaS実装に使ってるって。" userName="konaraddi" createdAt="2025-02-12T04:15:19" color="">}}

{{<matomeQuote body="Cloudflareは実際にはworkerdっていうV8のアイソレートを使ってるんだけど、WASMは多くの制約があるんだよね。" userName="andrew_rfc" createdAt="2025-02-12T05:05:29" color="">}}

{{<matomeQuote body="結局、WASMはあくまでJavascriptの拡張に過ぎない。Cloudflare WorkersでのWASMは明らかに二級市民扱いだよ。" userName="yencabulator" createdAt="2025-02-13T17:01:59" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（5）">}}
{{<matomeQuote body="パッケージの互換性の問題が多いし、fsアクセスみたいなものから完全に移行できたわけじゃない。今Cloudflareの技術スタックを試してるけど、 containers に戻る寸前だよ。" userName="verdverm" createdAt="2025-02-12T04:57:45" color="">}}

{{<matomeQuote body="それが理にかなってる場所があるのは確か。でも、より多くのスタックを使ってる場合に containers を置き換えるのは意味がないよ。FaaSはVMやKubernetes、Containersを置き換えられなかったし、WASMも同じ理由でそうなる可能性が高い。" userName="danpalmer" createdAt="2025-02-12T04:31:24" color="">}}

{{<matomeQuote body="まあ、そんなに単純じゃないね。WASMはビジネスロジックの共通ユニットとしての役割があると思う。LambdaみたいなFaaSランタイムを実装するのは、の方法が難しいから、安全でマルチ言語の方法でやるのがいいと思うよ。" userName="danpalmer" createdAt="2025-02-12T03:44:20" color="#785bff">}}

{{<matomeQuote body="CUEがWASM向けに探っているのは、モジュールと一緒にカスタム関数やプラグインを配布できる能力だよ。すごくクoolかもしれないけど、WASMランタイムのアップストリーム変更で行き詰まってるんだ。" userName="verdverm" createdAt="2025-02-12T04:59:46" color="">}}

{{<matomeQuote body="昔はみんながJavascriptにそう思ってた時期もあったけど、Node.jsは実際にはウェブサイトのミドルエンドやバックエンドに使われてるんだよ。ユーザーのデバイスと開発者のデバイスは全く異なるから、抽象化するのは無理があると思う。" userName="TZubiri" createdAt="2025-02-12T21:02:09" color="">}}

{{<matomeQuote body="WASMは書いたらどこでも動く体験だよ。ただし、実際の環境によって微妙に違うインターフェイスがあるから、CloudflareのV8で動くコードがBunやDenoでは動かないかもしれない。DockerはPOSIXが確立された標準だったからうまくいったんだよね。" userName="paulgb" createdAt="2025-02-12T02:18:48" color="">}}

{{<matomeQuote body="PlatformOps的に言うと、これが本当に面白い冗談か、ChatGPTのケタミン状態かは分からない。それにしても、2030年にはKubernetesのことなんて誰も覚えてないってのはおかしいね。じゃあ、WASMの新しいバージョンをどうやって展開するの？スクリプトでも書くのか？開発者はコードを書いて機能を配信したいだけなのに、また問題が起こって運用側はその後始末をしなきゃいけない。WASMで解決しようとしても、根本的な問題は解決されないと思うな。" userName="stackskipton" createdAt="2025-02-12T02:55:02" color="#785bff">}}

{{<matomeQuote body="WASMはCloudflare Workersで使われていて、確かにCold Start問題を解決してる。コンテナを立ち上げる代わりに、ほぼChromeのタブを立ち上げる感じなんだよね。" userName="sebstefan" createdAt="2025-02-12T12:19:28" color="">}}

{{<matomeQuote body="スタートアップ時間がゼロなのは明らかに間違いだよ。アプリ自体の初期化には時間がかかることもあるからね。WASMのオーバーヘッドは小さいけど、Firecrackerもすごく早く起動できるしね。結局、サーバーレスものはアプリ自体が遅いから遅くなるんだよ。" userName="yencabulator" createdAt="2025-02-13T17:17:57" color="">}}

{{<matomeQuote body="WASMは確かにCold Start用に使われることがあるが、実際俺の経験では、Lambdasはむしろ使わない方がいいってとこが多かった。SQSやKafkaを待つ小さなコンテナを持ってる方が楽だし、スケールも簡単にできるからね。" userName="stackskipton" createdAt="2025-02-12T16:36:45" color="">}}

{{<matomeQuote body="マイクロVMが未来だと思う。全てのいいとこ取りだね。" userName="Melatonic" createdAt="2025-02-13T19:05:20" color="">}}

{{<matomeQuote body="WASMはアプリをブラウザにバイトコードの塊として送る方法のように感じたな。今や無駄なJavaScriptファイルを回避できて、良いアイデアっちゃ良いアイデア。ただ、実際のところ、コンテナのように見えるものになると思うよ。" userName="sleepybrett" createdAt="2025-02-12T06:13:36" color="">}}

{{<matomeQuote body="WASMの話はもう何年もしてるけど、実際にそれが普及するのはいつなんだろう？WASM 1.0から8年経っても、安定して使いやすいツールチェーンがない。Rustは2012年にリリースされて8年で安定したけど、WASMはまだおもちゃみたいだよ。" userName="hardwaregeek" createdAt="2025-02-12T02:09:57" color="">}}

{{<matomeQuote body="実際多くの人がWASMを生産環境で使ってるし、何言っても今はツールチェーンもいくつかの言語で良い感じに整ってる。だけど、コンテナを置き換えるには、WASM 1.0じゃまだ足りないよね。" userName="azakai" createdAt="2025-02-12T03:24:15" color="">}}

{{<matomeQuote body="WASMを使ってるサイトは確かに少数だけど、大半のウェブアプリを作る方式にするにはまだまだ道のりがある。実際、WASMでアプリを書くのはどれだけ簡単？コンパイルも依存関係の選別が必要で、まだ主流とは言えないね。" userName="hardwaregeek" createdAt="2025-02-12T04:26:57" color="">}}

{{<matomeQuote body="その通りだけど、Wasmの目的は主にウェブアプリの主流な書き方じゃないんだ。PhotoshopやUnityのような高級なアプリをウェブで動かすために設計されたもので、そういったアプリは全体のウェブサイトの中では少数派なんだ。Wasmは当初の目標を達成して、GC言語のコンパイルなどに広がってるけど、将来的に多くのウェブサイトがWasmで書かれるとは思わないな。JavaScriptやTypeScriptは優秀だし。" userName="azakai" createdAt="2025-02-12T04:43:43" color="#785bff">}}

{{<matomeQuote body="American Expressがこういう使い方でWebAssemblyを使ってるよ：https://thenewstack.io/amexs-faas-uses-webassembly-instead-o..." userName="zfg" createdAt="2025-02-12T02:51:03" color="">}}

{{<matomeQuote body="WASMはもう一つの仮想マシンで、JVMが直面した難しさを思い出すよ。RubyやJavaScriptのような言語をJVMで書き込んで実行するのはできるけど、コミュニティの多くはオリジナルの実装を使いたがるんだ。もし使いたいライブラリが動かなかったら、誰も助けてくれないんだよ。二級実装を使ってるからね。" userName="harrall" createdAt="2025-02-12T03:54:49" color="">}}

{{<matomeQuote body="非同期処理を省けば、RustでのWASMは結構うまくいくよ。GoのWASMサポートもかなり良いと思う。’WASMをコンテナとして使うのは’とか’WASMを.jarとして使うのは’みたいなアプローチはちょっと馬鹿げてるけどね。技術としては使えるけど、ほとんどの人には合わないと思う。ただ限られたAPIアクセスが必要なプラグインモジュールの使用例があって、そのにはWASMは役立つよ。ゲームエンジンをブラウザで動かすならWASMは絶対に必要だし、Steamをブラウザに置き換えるつもりはないけど、itch.ioのWASMはWinlatorよりもずっと速く安定してるよ。" userName="jeroenhd" createdAt="2025-02-12T11:07:37" color="#45d325">}}

{{<matomeQuote body="小さなプロジェクトでWASMを試したことがあるんだ。ライブラリなしのCソースファイルから作って、Zigを使った。システムを理解した上でWASMをインスタンス化して、ファイルやバイト配列から呼べて、JavaScriptから関数を呼び出して結果が得られたよ。WASMバイナリのサイズは3KB未満だった。ただしライブラリを使うと効率の問題が出てきて、必要なもの次第でかなりの負担になる。" userName="Dwedit" createdAt="2025-02-12T06:10:42" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（6）">}}
{{<matomeQuote body="Emscriptenは安定してて使いやすいと思うよ。" userName="dustbunny" createdAt="2025-02-12T02:58:20" color="">}}

{{<matomeQuote body="C++/CLIを.NETで使うよりは簡単じゃないけどね、ツール関係では。" userName="pjmlp" createdAt="2025-02-12T08:14:40" color="">}}

{{<matomeQuote body="Blazorは安定してて非常に使いやすいよ。ただ少し読み込みが遅いけど、それを改善する方法はいくつかあるよ。" userName="octopoc" createdAt="2025-02-12T02:20:35" color="#785bff">}}

{{<matomeQuote body="Blazorは開発者にとっては素晴らしいけど、ReactやAngularみたいな他の技術と比べるとすごく遅いから、すぐに他のものを使うよう言われると思うよ。" userName="catmanjan" createdAt="2025-02-12T02:28:10" color="">}}

{{<matomeQuote body="アプリによるよ。gpは安定性と使いやすさについて話してて、速度ではないんだ。" userName="octopoc" createdAt="2025-02-12T13:29:16" color="">}}

{{<matomeQuote body="PCタワーみたいな古いパソコン使ってると、ハードウェアの動画デコードやスリープ、UEFIの現代的な機能が使えないよね。マネージド言語フレームワークでユーザーランドを置き換える案もあるみたいだけど、モバイルデバイスや捨てるようなノートパソコンでは成功してるらしいよ。" userName="pjmlp" createdAt="2025-02-12T08:13:40" color="">}}

{{<matomeQuote body="＞ハードウェア動画デコードは数十年完璧に動いている。<br>ああ、だからLinuxフォーラムでVA-APIのチュートリアルがいっぱいなんだね。<br>＞UEFI自体は存在して以来うまく動いている。<br>これはマザーボードによるから一概には言えないけど。<br>何でユーザーランドをマネージド言語フレームワークに替えるの？それはちょっと理解できないんだ。" userName="milesrout" createdAt="2025-02-12T10:53:54" color="">}}

{{<matomeQuote body="いやいや、ハードウェア動画デコードの問題はLinuxフォーラムでVA-APIのチュートリアルが多いことが証明してるよ。<br>UEFIの動作もマザーボードによるから、一概には言えない。<br>マネージド言語フレームワークにする理由は、GoogleやLGにはあるし、マーケットシェアでも結構うまくいってるよ。" userName="pjmlp" createdAt="2025-02-12T12:58:00" color="#ff5733">}}

{{<matomeQuote body="ブラウザ開発者たち、特にFirefoxは、Linuxのほとんどのビデオカードでハードウェアアクセラレーションを無効にしてるんだ。だからLinuxとWindowsでバッテリーライフが20%違うって結果になるんだ。" userName="int_19h" createdAt="2025-02-12T20:04:42" color="#45d325">}}

{{<matomeQuote body="俺はそんなこと経験したことないな、いろんなグラフィックスカード使ってきたけど。でも、Windowsではどのコンピュータもトラブル続きだったよ。<br>みんななぜかWindowsではハードウェアのせい、LinuxではLinuxのせいって言うけど、実は消費者向けハードウェアが安いから問題が起きるんじゃないかって思うよ。" userName="milesrout" createdAt="2025-02-13T01:06:30" color="">}}

{{<matomeQuote body="俺も新しいThinkpad T14e AMDのラップトップで試したんだ。<br>自動化されたRedditブラウジングしたら、LinuxとWindowsのバッテリーライフの差がすごいことに気づいたよ。<br>ハードウェアアクセラレーションを手動で有効にしたら、2-3時間でどちらもクラッシュすることがわかったし、Linuxが人気のハードウェアと安定して使えないのは問題だね。30年近くLinux使ってるけど、この問題はずっと続いてるよ。" userName="int_19h" createdAt="2025-02-16T22:20:03" color="#ff5c5c">}}

{{<matomeQuote body="WindowsではOEMがサポートを提供するけど、Linuxでは逆リバースエンジニアリングがほとんどだね。<br>それが問題の一因。" userName="pjmlp" createdAt="2025-02-13T07:54:20" color="">}}

{{<matomeQuote body="俺たちのデバイスでは、古いのも新しいのもすべて上手く動いてるよ。Y2Kの言い分はもう古いよ。" userName="mixmastamyk" createdAt="2025-02-12T18:29:17" color="">}}

{{<matomeQuote body="俺のはそうじゃないよ、LinuxプリインストールのAsusのネットブックがついに去年死んじゃったから。" userName="pjmlp" createdAt="2025-02-13T07:52:15" color="">}}

{{<matomeQuote body="2010年代のネットブック？珍しいハードウェアだった可能性もあるね。<br>新しいハードウェアの完全なサポートは6か月待たないといけないことが多いし。" userName="mixmastamyk" createdAt="2025-02-13T17:00:51" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
