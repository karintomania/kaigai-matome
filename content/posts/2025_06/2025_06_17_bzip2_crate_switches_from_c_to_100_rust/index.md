+++
date = '2025-06-17T00:00:00'
months = '2025/06'
draft = false
title = 'Bzip2クレートがCから100% Rustへ切り替え'
tags = ["Rust", "C言語", "Bzip2", "ライブラリ", "移行"]
featureimage = 'thumbnails/green3.jpg'
+++

> Bzip2クレートがCから100% Rustへ切り替え

引用元：[https://news.ycombinator.com/item?id=44303361](https://news.ycombinator.com/item?id=44303361)




{{<matomeQuote body="Trifecta Techのbzip2って、Linuxで使われてる古い公式版を置き換えられそう？Fedoraがzlibをzlib-ngに変えたみたいに、CのABI互換があればイケるかもね？" userName="dralley" createdAt="2025/06/17 21:53:37" color="#45d325">}}




{{<matomeQuote body="C ABI互換って話だけど、動的リンクとはどうなるの？Rustって静的リンクしかできないんじゃないの？" userName="rlpb" createdAt="2025/06/17 22:14:18" color="">}}




{{<matomeQuote body="下のコメントで話がごっちゃになってるよ。Rustバイナリは動的リンクできるけど、ABIが安定してないからCみたいにバージョンの壁を越えられないんだ。だから、結局みんな静的リンクしてるってこと。" userName="alxhill" createdAt="2025/06/18 01:07:05" color="#ff33a1">}}




{{<matomeQuote body="uutilsプロジェクトの目標がこれなんじゃないかな。URLはこれ→https://uutils.github.io/" userName="tiffanyh" createdAt="2025/06/18 00:10:38" color="">}}




{{<matomeQuote body="Rust版になると、ツールも改善されてほしいな。ripgrepとかtokeiは、grepやclocより断然速くてすごいんだ。" userName="cocoa19" createdAt="2025/06/18 02:02:58" color="">}}




{{<matomeQuote body="静的リンクって、バイナリが小さくなるし、LTOもできていいんだよね。" userName="eru" createdAt="2025/06/18 01:26:32" color="">}}




{{<matomeQuote body="コア標準の一部で、何十年もちゃんと動いてたツールを”代替”って呼ぶのは本当に嫌だね。ripgrepは最高だけど、grepの代わりじゃないし、そうあるべきじゃないんだ。" userName="egorfine" createdAt="2025/06/18 09:54:09" color="">}}




{{<matomeQuote body="静的リンクはバイナリを小さくしないよ。ライブラリのシンボル全部が実行ファイルに入っちゃうからね。複数のバイナリがあるなら、動的リンクの方が合計サイズが小さい場合が多いんだ。" userName="emidln" createdAt="2025/06/18 06:12:15" color="#ff5c5c">}}




{{<matomeQuote body="静的リンクと依存関係を”バンドル”するのを混同してるよ。静的リンクがバイナリを小さくするのは、依存関係をバンドルする場合の話。静的リンクか動的リンクか、と、バンドルするか共有するかは違う話なんだ。" userName="IshKebab" createdAt="2025/06/18 06:50:51" color="#45d325">}}




{{<matomeQuote body="ページキャッシュの仕組み、知ってる？静的リンクだとそれが効かないんだ。libcとかがプロセス間で共有されないから、3000個プロセスがあったら3000回ロードしなきゃいけなくなるよ。" userName="guappa" createdAt="2025/06/18 07:40:50" color="#ff33a1">}}




{{<matomeQuote body="コマンドラインツールの進化の歴史について語ってるね。AT&T→BSD→GNUって進化して、毎回「元のままがいい」って文句言う人がいたんだ。grepもegrepとかfgrepが出て、結局統合されたし。もし標準に固執してたら今だにBourne shell使ってるよ。GNUツールはもう標準みたいになってるけど、Rust以外でもackやagみたいな新しいツールが出てきてて、次の革新期が来てて嬉しいな。" userName="mprovost" createdAt="2025/06/18 10:06:12" color="#ff5733">}}




{{<matomeQuote body="自分の書いたコードは全部まとめて静的リンクできるけど、libcとかシステムのライブラリは動的リンクにするってやり方もあるよ。" userName="mandarax8" createdAt="2025/06/18 07:56:10" color="">}}




{{<matomeQuote body="平気で事実と違うこと言う人ってどういう頭してんだろうね？「僕が正しい、宇宙が間違ってるんだ」とか思ってんのかな？それとも真実の概念をぶっ壊したいの？（君のセリフに混乱してる人のために言うけど、もちろんRustでもそれができるよ）" userName="tialaramex" createdAt="2025/06/18 09:59:00" color="#45d325">}}




{{<matomeQuote body="今手元にあるRustで書かれたバイナリでlddコマンドを試してみてくれる？結果を楽しみに待ってるよ！" userName="guappa" createdAt="2025/06/18 10:34:20" color="">}}




{{<matomeQuote body="＞君の言う通りだね。僕も同意するよ。「XだけどZで書き直しました」って宣伝文句、すごく嫌なんだよね。ツールも作者もinstantly嫌いになりそうになる。（Rustは好きだよ。この雰囲気〈vibe〉が嫌いなだけ）。" userName="egorfine" createdAt="2025/06/18 10:32:43" color="">}}




{{<matomeQuote body="これは、元々CのラッパーだったRustクレートを、Rustネイティブに置き換えるために作られたRustクレートだよ。Rustプロジェクトで使う時に、もっと速くてリンクしやすいんだ。「Rust」って言わないで、どうやってこのRustクレートがより良いRustクレートだって伝えればいいのさ？" userName="scripturial" createdAt="2025/06/18 13:17:26" color="#ff5733">}}




{{<matomeQuote body="本当に気になったんだけどさ、なんで完全に静的リンクされるってそんなに確信してたの？" userName="whytevuhuni" createdAt="2025/06/18 11:47:44" color="">}}




{{<matomeQuote body="Bourne shellのことなんだけど、無知でごめんね、bashの何が悪いの？全部のサーバーやワークステーションで使ってるし、複雑なスクリプトも書いてるよ。古いプロジェクトじゃないし、主流のシェルに見えるんだけど、僕が間違ってる？<br>Update: ああ、オリジナル版のBourne Shellのことだったんだね、bashじゃなくて。" userName="egorfine" createdAt="2025/06/18 10:31:13" color="">}}




{{<matomeQuote body="1）このプロジェクトはクールで成功を祈ってるよ。いつかこれがデフォルトのユーティリティになったら最高だね。2）MITライセンスにしたのは間違いだったと思う。GNUユーティリティをクローンしてるんだから、元のGNUソースをRustに移植するのが一番obviousだろう？でもGPLコードをMITプロジェクトに移植するのはダメなんだ。だから、ユーティリティを全部ゼロから書き直さなきゃいけない。これって時間の無駄に見えるね。僕はGNUソースをRustに移植する作業には興味あるけど、全部ゼロから書き直すのには興味ないから、このプロジェクトには貢献してないんだ。" userName="coldpie" createdAt="2025/06/18 13:48:52" color="#ff5733">}}




{{<matomeQuote body="C++のバイナリも同じようにすべきだね。外部向けにはC ABIで話して、内部的にはRustかC++の標準ライブラリを静的リンクする感じに。" userName="quotemstr" createdAt="2025/06/18 04:14:18" color="">}}




{{<matomeQuote body="Rustは静的リンクしかサポートしないってよく言われるから、動的リンクできないって推測しちゃったんだろうね。GoもLinuxで完全静的バイナリを作るし、Rustも同じだと勘違いするのも無理はないかも。でも、そんなに自信満々に言っちゃダメだよ！" userName="IshKebab" createdAt="2025/06/18 12:43:46" color="">}}




{{<matomeQuote body="うん、そうかもね。でもそれが何だって言うの？Rust製のシェルnuを見てごらんよ。<br> $ ldd ~/.cargo/bin/nu<br> linux-vdso.so.1 (...)<br> libssl.so.3 =＞ /lib/x86_64-linux-gnu/libssl.so.3<br> ...（他のライブラリも続く）<br> libc.so.6 =＞ /lib/x86_64-linux-gnu/libc.so.6<br>って感じで動的リンクしてるでしょ？C製のシェルashだってそうだし。<br> $ ldd /bin/sh<br> linux-vdso.so.1 (...)<br> libc.so.6 =＞ /lib/x86_64-linux-gnu/libc.so.6<br>(...)" userName="tux3" createdAt="2025/06/18 11:00:53" color="#ff5c5c">}}




{{<matomeQuote body="圧縮が10～15％速く、解凍が5～10％速くなるって、めちゃくちゃ良い「機能」じゃない？<br>「[...] 完了してるってことなんじゃないの？」<br>って、必ずしもそうとは限らないと思うよ。例えば、2019年からリリースがないプロジェクト全部が完了してるわけじゃないでしょ？ほとんどは単に放棄されてるんじゃない？<br>もちろん、完了してるっていうのも理由としてはあり得るけどね。<br>このbzip2の場合は、課題トラッカーに未解決のバグがいくつかあるんだ。だから、プロジェクトが完了してるってわけではなさそうだよ。<br>参考：https://sourceware.org/bugzilla/buglist.cgi?product=bzip2" userName="LinusU" createdAt="2025/06/18 20:15:21" color="#45d325">}}




{{<matomeQuote body="静的リンクするとバイナリがすごく大きくなるし、LTOできても使えるメモリの量に制限されるんだよね。あと、静的リンクだとアーカイブ全体を常に再構築する必要があるのも面倒。" userName="guappa" createdAt="2025/06/18 07:39:23" color="">}}




{{<matomeQuote body="C++プロジェクトから別のC++プロジェクトにC APIをエクスポートするのって、本当に大変なんだ。COMみたいになっちゃうし。（COMはC++よりちょっと前にできたと思うけど）" userName="pjc50" createdAt="2025/06/18 08:48:42" color="">}}




{{<matomeQuote body="「圧縮が10～15％速く、解凍が5～10％速くなるって、すごく良い「機能」じゃん？」<br>確かにコードを最適化して10～15％速くできる部分は多いけど、もしそれがコードの読みやすさを犠牲にするなら、最近はそういう「機能」は敬遠されるんだよね。既存コードを、「もっと難しく¹」て（そのせいで）そこで開発したいエンジニアが少ない（そしてこれからも少ないだろう）言語に移すのって、すごく読みやすさを損なう最適化に似てるように見えるんだよね。¹...それだけじゃないけど。ソフトウェア開発ツールとしてのRustの問題点については、他のコメントでも説明したことがあるよ。ここ↓見てね。<br>https://news.ycombinator.com/item?id=31565024<br>https://news.ycombinator.com/item?id=33390634<br>https://news.ycombinator.com/item?id=42241516" userName="restalis" createdAt="2025/06/18 23:12:10" color="#ff5733">}}




{{<matomeQuote body="RustはRustに動的リンクできないんだ。Cとは動的リンクできるし、Cから動的にリンクされることもできる。この二つを組み合わせれば「ごまかせる」けど、それは結局Cを扱ってるだけで、たとえ両側にRustがあってもRustを扱ってることにはならないんだ。" userName="bluGill" createdAt="2025/06/18 00:31:51" color="#ff5c5c">}}




{{<matomeQuote body="ねえねえ、“rewritten IN rust”じゃなくて“rewritten FOR rust”って言う方が正しいんじゃない？" userName="throwawaymaths" createdAt="2025/06/18 14:33:22" color="">}}




{{<matomeQuote body="俺 Common Crawl のデータ処理でこのクレート使ってるんだよね、何百 TB も！速度アップめっちゃ助かるわー" userName="rwaksmunski" createdAt="2025/06/17 23:08:35" color="">}}




{{<matomeQuote body="なんでここで bz2 使ってるの？一回 zstd に変換してから処理する方が速くない？俺の知る限り、zstd って高圧縮レベルだと bzip2 より全部の面で優れてるはずだけどなー。" userName="viraptor" createdAt="2025/06/17 23:33:54" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="だって Common Crawl はデータ bz2 で配布してるんだもん。実際、俺も中間データは ZFS で zstd にして保存してるよ。" userName="rwaksmunski" createdAt="2025/06/18 00:07:49" color="#45d325">}}




{{<matomeQuote body="それってデータを何回も処理することを前提にしてる話だよね。" userName="declan_roberts" createdAt="2025/06/17 23:56:37" color="">}}




{{<matomeQuote body="そうそう、俺も言いに来たんだけど、圧縮で 14パーセント スピードアップって結構すごいよね！" userName="malux85" createdAt="2025/06/17 23:33:08" color="">}}




{{<matomeQuote body="bzip2 って（特に並列実装とかだと）圧縮に関しては結構イケてるんだよ。遅れるのは解凍時間の方。lz77 ベースのアルゴリズムは解凍がめちゃくちゃ速いから、そこで差がつくんだよね。" userName="aidenn0" createdAt="2025/06/18 04:52:55" color="#ff33a1">}}




{{<matomeQuote body="マジで爆速じゃん！" userName="koakuma-chan" createdAt="2025/06/18 00:24:57" color="">}}




{{<matomeQuote body="これで未解決の CVE 11個はデフォルトで解消されるのかな？ってかさ、皮肉にもこの bzip2 クレートに CVE が1個報告されてるんだってよ[1]<br>https://app.opencve.io/cve/?product=bzip2&vendor=bzip2_proje..." userName="firesteelrain" createdAt="2025/06/17 22:53:55" color="#ff5733">}}




{{<matomeQuote body="Rust クレートででかいファイルが実行時エラーになったのと、C で範囲ミスが多発してるのって対照的だよね。C の範囲ミスを突いてコード実行されるか試されたのかな？ それは不可能かもしれないし、そうじゃないかもね。" userName="tialaramex" createdAt="2025/06/17 23:04:31" color="">}}




{{<matomeQuote body="＞ bzip2 クレート 0.4.4 以前<br>今日 0.6.0 リリースしてるじゃん :＞" userName="Philpax" createdAt="2025/06/17 22:57:01" color="">}}




{{<matomeQuote body="でも、これはまさに話題になってる bzip2 クレートの話でしょ。その新しい純粋な Rust 実装は libbz2-rs-sys で、bzip2-rs じゃないんだよ。最後の文は関係ないね。" userName="jorams" createdAt="2025/06/18 08:04:26" color="">}}




{{<matomeQuote body="この記事は bzip2 クレートについてなんだよ、bzip2-rs クレートじゃないんだ。リポジトリ名が後者と同じ名前だけどね。" userName="debugnik" createdAt="2025/06/18 08:11:53" color="">}}




{{<matomeQuote body="FTA:<br>＞ 今日ほとんど使われない 90 年代のアルゴリズムにわざわざ取り組むのはなぜ？<br>今は何が使われてるの？ zstd とか？<br>ああ、これ見たよ: https://quixdb.github.io/squash-benchmark/" userName="wiz21c" createdAt="2025/06/18 08:11:46" color="#ff5733">}}




{{<matomeQuote body="C と Rust のバージョンで同じ LLVM コード生成（同じ最適化）バックエンドを使ってるか気になるな。もしそうなら、どこで速度アップしてるの？<br>（つまり、なんか Rust の自動 SIMD なの、それとも他の部分を手で最適化したの、新しい最適化されたライブラリ使ってるの、それとも…他？）" userName="a-dub" createdAt="2025/06/18 00:34:56" color="#ff33a1">}}




{{<matomeQuote body="ただ推測だけど、Rust はコード生成器にもっとヒントを与えられるのかもね。例えば、C のポインタみたいにエイリアシングをそんなに心配しなくていいとか。 https://en.wikipedia.org/wiki/Aliasing_(computing)#Conflicts... 見てみて。" userName="eru" createdAt="2025/06/18 01:27:54" color="#ff33a1">}}




{{<matomeQuote body="なるほど、すごく納得できるよ。公式の回答は知らないから推測だけどね。記事からリンクされてる c2rust での最初の翻訳についての記事 https://trifectatech.org/blog/translating-bzip2-with-c2rust/ を見ると、C コードは変数の範囲保証がないせいでコードが最適じゃない箇所があるって指摘してるんだ。<br>たくさんの人が数がそんなに大きくならない時でも ’int’ を使ってるってことも。<br>でも適切な型を使えば Rust コンパイラはパフォーマンスが良くなるなら別のことをするって決められるんだね。<br>だから、より多くの知識によってより良い最適化を引き出せるっていう君のアイデアは多分正しいと思うよ。" userName="MBCook" createdAt="2025/06/18 03:33:10" color="#ff33a1">}}




{{<matomeQuote body="適切なデータ構造やアルゴリズムを使う時の使いやすさも、すごく大事な役割を果たすことがあるんだ。C だと、基本的な配列以外はすごく手間がかかりすぎるからね。" userName="Too" createdAt="2025/06/18 06:11:37" color="">}}




{{<matomeQuote body="ああ、それってブライアン・カントリルがdtraceの一部をRustで書き直した時の気づきだよな。学習のためにやったのに、オリジナルのコードより素朴な実装の方が速くてビックリしたんだって。結局、理由はRustの標準ライブラリに入ってる”I used a BTreeMap”を使ったことだって話だったよ。" userName="littlestymaar" createdAt="2025/06/18 07:35:22" color="">}}




{{<matomeQuote body="ふむ.. それってclang+linuxとかclang+stl、hotspot+j2eeと比べたらどうなんだろうね。Perlがよくネイティブc/c++より速かった時代を思い出すな、あれも優秀な文字列処理ライブラリが組み込まれてたからだし。空間効率はどう？Rustのバイナリって大きくなりがちだけど、システム全体に影響しない？ RedoxOSと普通のlinuxのベンチマークとか見てみたいね。" userName="a-dub" createdAt="2025/06/18 14:02:45" color="">}}




{{<matomeQuote body="とにかく、俺が見つけた詳細はここにあるよ。[0]<br>[0] https://bcantrill.dtrace.org/2018/09/28/the-relative-perform..." userName="bcantrill" createdAt="2025/06/18 18:37:43" color="#ff5733">}}




{{<matomeQuote body="かなりクールだね！単体で見ると最高だ！でも、実行ファイルのイメージサイズが大きくなる影響、特にコンプリートシステムでの影響がまだ少し気になるんだ。もしバイナリが全部大きかったら、キャッシュ領域を圧迫し始めない？スタティックリンキングってフルシステムで理にかなってるのかな？" userName="a-dub" createdAt="2025/06/18 21:21:16" color="">}}




{{<matomeQuote body="カーネルは実際に実行するバイナリの部分だけをロードするし、しばらく実行されてない部分はディスクキャッシュを解放できるんだよ。だから、バイナリの絶対的なサイズよりも、実際に’active set’にどれだけあるかを気にするべきなんだ。" userName="eru" createdAt="2025/06/19 23:35:25" color="#ff33a1">}}




{{<matomeQuote body="Cは正直言って、現代のハイパフォーマンスコードを書くのにはかなりイケてない言語だよ。C99からC21まで20年くらい、新しいインストラクションを（インラインasmなしで）使うためのフィーチャーが追加されなかったんだ。clz/popcnt/clmul/pdepみたいなのための良いアブストラクトマシンインストラクションがあるだけで、こういうコードを書くのにすごく役立つんだ。" userName="adgjlsfhk1" createdAt="2025/06/18 05:09:50" color="#38d3d3">}}




{{<matomeQuote body="Popcount, clz, ctzはGCCでノンスタンダードファンクションとして提供されてるよ（clangもGNUモードでサポートしてるかも）。PDEPとPEXTはないみたいだけど、あるべきだと思うな（PEXTはINTERCALにすらあったし）。PDEPとPEXPはx86で-mbmi2付きで使えるけどね。MMIXのMORとMXORもビルトインファンクションで使えるといいな。" userName="zzo38computer" createdAt="2025/06/18 05:20:35" color="">}}




{{<matomeQuote body="どんなXとかYとかZ言語で書き直しても、スピードアップするチャンスは生まれるんだよ。Rustに固有の何かがあるわけじゃない。" userName="WhereIsTheTruth" createdAt="2025/06/18 04:44:44" color="">}}




{{<matomeQuote body="彼らかProssimoがBzip2だけじゃなくて、コアインターネットプロトコル、例えばBGP, OSPF, RIP、他のルーティングインプリメンテーション、DNSサーバーなんかも、同じように（Rustで）書き直してくれるといいな。" userName="xvilka" createdAt="2025/06/18 03:45:58" color="">}}




{{<matomeQuote body="これ見て！<br>https://nlnet.nl/project/current.html<br>https://www.sovereign.tech/programs/fund<br>ここ数年、Rustみたいなより安全な言語で重要なインターネット＆OSツールを書き直すのに結構良い支援があるんだ。例えばRustでBGPとかね。https://www.nlnetlabs.nl/projects/routing/rotonda/" userName="everfrustrated" createdAt="2025/06/18 14:45:10" color="#45d325">}}




{{<matomeQuote body="ありがとう！まさに探してたやつ！なぜかこのプロジェクト見落としてたわ。HoloっていうRustのルーティングプロジェクトもね [1] https://github.com/holo-routing/holo" userName="xvilka" createdAt="2025/06/18 15:49:57" color="#38d3d3">}}




{{<matomeQuote body="このページhttps://www.memorysafety.org/initiative/にTLSとDNSのことが書いてあって、あんたの提案にちょっと近いかもね。" userName="dataking" createdAt="2025/06/18 06:14:33" color="#ff5c5c">}}




{{<matomeQuote body="そのドメインてメモリ安全性のこと？それともRustのこと？どっちなの？" userName="throw10920" createdAt="2025/06/18 14:02:49" color="">}}




{{<matomeQuote body="SPARK Adaでもっと強力な証明付きのIronsides DNS作った人がいるよ。" userName="nickpsecurity" createdAt="2025/06/18 14:33:57" color="">}}




{{<matomeQuote body="Ada自体は別に良い言語だし、何も反対しないよ。唯一の問題は、その場合コントリビューターが見つかるかどうかだろうね。" userName="xvilka" createdAt="2025/06/18 15:49:03" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="macOSでperfがない件だけど、dtraceでプロファイリングは結構できるよ。オリジナルのPerlのflame graphスクリプトもこれ使うって言ってたし、Rustで再実装されたflame graphもdtraceを使ってる。キャッシュミスとかマイクロインストラクションみたいな一部のメトリクスは取れないけど、それでもすごく使えるよ。" userName="broken_broken_" createdAt="2025/06/18 06:13:31" color="#ff33a1">}}




{{<matomeQuote body="じゃあ未来の読者のために、具体的に説明してあげなよ？" userName="pdimitar" createdAt="2025/06/22 10:21:04" color="">}}




{{<matomeQuote body="これってlbzip2みたいに並列解凍できるのかな？（それか、ブロックマジックを事前スキャンして並列解凍を上に乗せられるようなイテレータがあるのかな）。<br>追記：多分できないね。" userName="Aissen" createdAt="2025/06/18 09:26:49" color="">}}




{{<matomeQuote body="Rustは置いといて、いろんな実装のベンチマークを見るのってマジ楽しいわ。読んでてすごく満足感ある。" userName="agumonkey" createdAt="2025/06/18 10:09:20" color="">}}




{{<matomeQuote body="Rust好きだし学びたいんだけど（何回か挫折してる…）。ちょっと大げさだけど、見かけるライブラリがだいたい0.x.yなんだよね。このライブラリも2014年に0.1.0が出てからまだ1.0.0が出てないし、Rustコミュニティって1.0.0にしたがらない傾向あるの？" userName="tephra" createdAt="2025/06/18 08:00:03" color="#785bff">}}




{{<matomeQuote body="これ見て→https://0ver.org/#notable-zerover-projects" userName="liambigelow" createdAt="2025/06/18 08:25:22" color="">}}




{{<matomeQuote body="真面目な答え：しょっちゅう変わるから安定版を宣言する必要ないと感じてる人もいる。別のケースでは、安定してて広く使われてる0.xパッケージなんだけど、1.0にすると大体なんか破壊的変更があるってことになっちゃう。（そうあるべきかは分かんないけど、依存ライブラリが0.xから1.0になったら、時間できるまでアップデート待つくらい慎重になるね）。<br>まぁ、大抵の人はそんなに気にしてないよ。" userName="liambigelow" createdAt="2025/06/18 08:28:46" color="#785bff">}}




{{<matomeQuote body="あのリスト、Zigが入ってるけど、Zigプロジェクトは1.0リリースの明確な計画[0]があるんだよね。それは0verじゃなくて、ただのsemverのベータ段階だよ。<br>[0] https://github.com/ziglang/zig/milestone/2" userName="sramsay64" createdAt="2025/06/18 09:40:21" color="">}}




{{<matomeQuote body="そうそう、Rustではパッケージマネージャーがアップデートのルールを組み込んでるんだ。メジャーバージョン（1.0とか）が変わると、なんか壊れる変更があったってことだから自動でアップデートしないの。自動アップデートしても大丈夫なうちは、メジャーバージョンは変えたくないんだよね。" userName="scripturial" createdAt="2025/06/18 16:12:58" color="#45d325">}}




{{<matomeQuote body="「uutilsの失敗の後」<br>どんな失敗？" userName="vlovich123" createdAt="2025/06/17 22:56:19" color="">}}




{{<matomeQuote body="なんかさ、uutilsのsortってlocaleによっては速くないんでしょ？それにテストケースでモメるのっていつものことじゃん。この批判、細かいところにこだわりすぎだよ。RustのライセンスはMITとApache2が普通だし、陰謀とか見えないな。てか、あなたが批判してるのってUbuntuなの？" userName="vlovich123" createdAt="2025/06/17 23:17:29" color="">}}




{{<matomeQuote body="＞1. The uutils project didn’t also make all locales cases for sort faster even though the majority of people will be using UTF-8, C or POSIX where it is indeed faster<br>localeとencodingは違うよ！トルコ語(tr_TR.UTF-8)とUS英語(en_US.UTF-8)の電話帳ソートで試してみなよ。" userName="j16sdiz" createdAt="2025/06/18 04:25:48" color="#38d3d3">}}




{{<matomeQuote body="知ってるよ。UTF-8とかCとかPOSIXって、localeの文字列だよね。" userName="vlovich123" createdAt="2025/06/18 04:42:47" color="">}}




{{<matomeQuote body="その4chanみたいなサイトから何を知ってほしいわけ？今のところGNUほど速くないってこと？嘘はどこにあるの？" userName="0cf8612b2e1e" createdAt="2025/06/17 23:06:31" color="">}}




{{<matomeQuote body="自分で結果を確かめるのは大事だけど、正直bzip2のパフォーマンスを気にする人なんて今どきいるの？zstdにはどうやったって勝てないよ。同じ時間ならzstdはめっちゃ小さくなるし、解凍も20～50倍速いんだから。bzip2の実装速度なんてどうでもいいんじゃない？" userName="jeffbee" createdAt="2025/06/17 22:51:57" color="#45d325">}}




{{<matomeQuote body="いや、そういうケースもあるよ。誰かからbzip2ファイルをもらったり、その形式で渡す必要があったり。そうなると他に選択肢ないじゃん。使うしかないなら、14%速くなるのはすごく嬉しいことだよ。" userName="MBCook" createdAt="2025/06/18 03:40:21" color="">}}




{{<matomeQuote body="CからRustへの書き換えに、なんかLLM使ったの？" userName="solarized" createdAt="2025/06/17 23:37:30" color="">}}




{{<matomeQuote body="もしトランスパイルツール使うなら、適当なこと言わない正確なやつがいいよ。c2rustってのがかなりいいらしい。ImmunantがQuake3をRust化した時のブログ記事もあるよ。https://immunant.com/blog/2020/01/quake3/ 生成されたRustコードは綺麗じゃないけど、そこから直せばいいんだって。" userName="Twirrim" createdAt="2025/06/18 00:36:22" color="#ff5733">}}




{{<matomeQuote body="記事によると、最初c2rustで書き換えたみたいだよ。ここ見て。https://trifectatech.org/blog/translating-bzip2-with-c2rust/" userName="dataking" createdAt="2025/06/18 01:14:31" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
