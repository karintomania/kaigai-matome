+++
date = '2025-05-09T00:00:00'
months = '2025/05'
draft = false
title = 'Rustの依存関係が多すぎて心配になってきた'
tags = ["Rust", "プログラミング", "依存関係", "ソフトウェア", "ビルド"]
featureimage = 'thumbnails/green3.jpg'
+++

> Rustの依存関係が多すぎて心配になってきた

引用元：[https://news.ycombinator.com/item?id=43935067](https://news.ycombinator.com/item?id=43935067)




{{<matomeQuote body="依存を簡単に取れてサイズやコストのペナルティがないシステムは依存問題を起こすと思うな。今のOSSやmonorepoはそう。<br>昔は必要な部分だけ組み込みサイズを抑えたけど、今は”import”で簡単にライブラリを重ねる。<br>依存が深まるほど使わないコードが増え、小さな機能のためだけでもバイナリがすごく大きくなる。<br>GoやRustはオプション機能だけ使いたい時に困ることも。<br>解決策は関数レベルの超細かい依存にして使う部分だけ取り込むことかも。大変だけど、使わないコードを抱える状況を変えるにはこれしかないと思う。" userName="kion" createdAt="2025/05/09 21:04:46" color="#785bff">}}




{{<matomeQuote body="依存を簡単に取れるシステムは依存問題を起こすって意見だけど、GoとC#(.NET)は違うと思うな。<br>GoとC#はRustやJSと同じくらい簡単なのに依存地獄にならないのは、素晴らしい標準ライブラリ(std libs)を持ってるからだよ。<br>優れたstd libこそ解決策なんだ。Rust支持者がPythonを反例に出すけど、GoとC#が間違ってることを証明してる。<br>ただ、優れたstd libはGoogleやMicrosoftみたいな大組織じゃないと作れないくらい大変なんだ。" userName="WuxiFingerHold" createdAt="2025/05/10 03:51:46" color="#45d325">}}




{{<matomeQuote body="俺が知る限り、LTOを使えばバイナリサイズの問題は完全に解決するはずだよ。使ってないコードは全部最適化で取り除かれるから。<br>ただ、ビルド時間には影響出るかもしれないけどね。" userName="nicoburns" createdAt="2025/05/09 21:11:29" color="">}}




{{<matomeQuote body="いや、違うと思うな。<br>大きいstd libはその言語が重点を置く問題を解決するんだよ。C#とかGoならWebホスト向けだ。<br>それ以外の用途（ゲーム，デスクトップ）で使おうとすると依存が増え始めるか、全く使われなくなる（組み込み，スマホ，wasm）んじゃないかな。" userName="athrowaway3z" createdAt="2025/05/10 05:54:34" color="#785bff">}}




{{<matomeQuote body="GoやC#と比べてRustのstd libが足りないって話は一部合ってるけど、単純じゃないと思うな。<br>Rustのランタイムなし，GCなしってアプローチだと、強力なhttpライブラリやserializationを標準で提供するのが難しいんだ。<br>その制約の中でTokioやSerdeみたいな良いのが出てきたけど、新しい手法を開拓したんだ。<br>asyncやProcedural macrosには問題もあるけど、その代わりに実行時エラーが減って効率が良くなったんだ。<br>どこにでもトレードオフはある。GoやC#とは制約が違うから単純な比較は公平じゃないよ。" userName="iTokio" createdAt="2025/05/10 05:53:39" color="#ff33a1">}}




{{<matomeQuote body="他の言語と比べると、Rustはもっと足りないと感じるね。<br>俺が覚えてる限り、以下の全部にサードパーティのパッケージが必要だよ：<br>Regex, DateTime, base64, argument parsing, url parsing, hashing, random number generation, UUIDs, JSON<br>必須とは言わないけど、HTTP機能がある前にこれらの機能が標準ライブラリに入ってるべきだと思うな。" userName="whstl" createdAt="2025/05/10 10:28:38" color="#45d325">}}




{{<matomeQuote body="昔、Java/Cpp/Pythonでプロジェクトの全ライブラリをmono repoに入れて、プロジェクトのビルドファイルに全部組み込んでたんだ。<br>そうすれば誰でも好きなコンパイラフラグでアプリ全体をリビルドできた。<br>これはすごくうまくいったけど、すごく手間がかかったし、依存ファイルに一行追加するだけじゃ得られない方法で依存と関わる必要があったんだ。" userName="sitkack" createdAt="2025/05/10 00:35:01" color="">}}




{{<matomeQuote body="ReflectionがあるJavaではLTOが単純に不可能だから、それよりは全然マシだよな。<br>もっと興味深いのは、実際にはどのコードがコンパイルされるかってことだ。<br>そうすれば何を監査する必要があるか分かる。<br>バイナリを逆アセンブルせずにね。もしかしたらデバッグ情報が役立つかも？" userName="samus" createdAt="2025/05/09 21:21:11" color="">}}




{{<matomeQuote body="”完全に解決する”ってのは言い過ぎだと思うな。<br>URLでリクエストできるcurlみたいなライブラリで考えてみて。<br>HTTPのURLしか使わなくても、HTTPS, FTP, Gopherとか他のスキーマのコードも全部コンパイルされちゃうんだ。<br>これは極端だけど、同じことはよく起こる。<br>オプション機能は静的に全部削除できるわけじゃないんだよ。" userName="poincaredisk" createdAt="2025/05/09 22:08:52" color="#ff5c5c">}}




{{<matomeQuote body="「素晴らしいstd libが解決策だ。Rust支持者はPythonを反例に出してる」って話だけど、<br>Pythonの標準ライブラリは確かに大きいよ。でも、偉大だとは言わないな。<br>だってPythonは30年以上も経ってるから、標準ライブラリに何か追加するのは大変だし、削除するのはもっと大変なんだよ。" userName="zahlman" createdAt="2025/05/10 04:10:05" color="">}}




{{<matomeQuote body="“Web server”って結構でかいユースケースだよね．でもグラフィック関連がstdライブラリで見過ごされがちなのは同意かな．あれはOSが提供する範疇とちょっと違うから別の話だけどね．<br>Wasmについてはさ，あれはランタイムの問題で言語の問題じゃないし，GoとかC#はWasmよりずっと前にあったし．<br>結局，全ての言語が全ての用途を気にする必要はないんだと思うよ．それより，その言語がターゲットにしてるプログラムのカテゴリに対してstdライブラリを提供してるかっていうのが大事なんじゃない？<br>例えばさ，JSは効率的かつ便利に動的なHTMLを生成するのは得意じゃない．依存ゼロか最小限で賢いパターンを使えば結構やれるけど，最初からみんなが使いたいようなのがあれば，たくさんの苦労と時間が節約できたはずだよね．" userName="dgb23" createdAt="2025/05/10 09:31:26" color="">}}




{{<matomeQuote body="“各レベルで呼び出し側はその依存関係の機能の5％しか必要ないかも．依存ツリーが深くなるほど無駄が積み重なる．最終的には，たった一つの依存を取っただけで500MiBもの使わないコードを含むバイナリになる”<br>これってそんなによく起こるかな？って思ってる．<br>結構重い依存ツリーを持つRustライブラリ(Xilem)で作業してる身として，フィーチャーフラグを調整して依存を削減しようと何度か試したんだけど，ほとんどの場合は必要なもの（VulkanサポートとかPNGデコード，unicode整形とか）の下流にあるやつだったんだ．<br>もし不必要な依存が見つかったとしても，once_cellみたいに小さくてどうでもいいやつだったりした．唯一の例外はserde_jsonで，これはちょっとリファクタリングしたら削除できたよ（まぁほとんどのユーザーは結局serdeに依存するだろうけど）．<br>winitとかwgpuみたいな大きな依存は削除するか，少なくとも切り離せないか検討してるんだけど，それは結構大きなアーキテクチャの変更が必要で，ただ“このランタイムオプションを消せば500MB減る”みたいな単純な話じゃないんだよね．" userName="PoignardAzur" createdAt="2025/05/10 10:21:32" color="#785bff">}}




{{<matomeQuote body="“各レベルで呼び出し側はその依存関係の機能の5％しか必要ないかも．依存ツリーが深くなるほど無駄が積み重なる．最終的には，たった一つの依存を取っただけで500MiBもの使わないコードを含むバイナリになる”<br>じゃあさ，コンパイラは何してんの？使わないコード削除しないの？" userName="tester756" createdAt="2025/05/10 08:38:53" color="">}}




{{<matomeQuote body="それは動的ディスパッチが関係してて，リンカが呼び出しを追跡できない場合にだけ当てはまる話だよ．直接呼び出しやジェネリクス（Rustっぽいイディオムだとこっちを好む傾向がある）の場合は，LTOがかなり徹底的に（コードを）削ってくれるんだ．" userName="vvanders" createdAt="2025/05/09 23:07:29" color="#38d3d3">}}




{{<matomeQuote body="let uri = get_uri_from_stdin()；<br>    networking_library::make_request(uri)；<br><br>こういうの，コンパイラはどうやって（不要なコードを）削れるの？" userName="rafram" createdAt="2025/05/09 23:17:58" color="#ff33a1">}}




{{<matomeQuote body="“GoとRustは例えば，一つのパッケージ/モジュールに必要なものを全部同じファイルに入れることを推奨してる”<br>補足ね：Goはすごく簡単なマルチファイルができるんだ．あれ結構好きでさ，そうすればまとまってるモジュールを論理的なパートに分けられるから．" userName="xlii" createdAt="2025/05/09 21:15:34" color="">}}




{{<matomeQuote body="このアイデアはさ，Dotnetに既に実装されてるんだよ，Trimmingと今はAOTコンパイルっていうので．他の言語もdotnetから学べるかもしれないね？https://learn.microsoft.com/en-us/dotnet/core/deploying/trim...https://learn.microsoft.com/en-us/dotnet/core/deploying/nati..." userName="SamuelAdams" createdAt="2025/05/09 22:03:12" color="#ff5733">}}




{{<matomeQuote body="時々機能は追加されるけど，うん，なんか時代遅れに感じるものもあるよね，中には．<br>モダンなAPIで型付きのargparseが（stdlibに）入るといいなって今でも願ってるんだよね（依存なしで簡単なスクリプトにはずっと良いから！）" userName="notpushkin" createdAt="2025/05/10 06:11:07" color="">}}




{{<matomeQuote body="実際dotnetもゲームとかデスクトップアプリにはそんなに多くの依存は必要ないんだよね．" userName="merb" createdAt="2025/05/10 06:00:23" color="">}}




{{<matomeQuote body="Pythonのstdlibにargparseがあるのはマジ感謝してる．でも引数パースって，特に簡単なプログラムならそんなに難しくないんだよね．プログラマーはいつもclapに手を出すんじゃなくて，ちょっとは自分で考えて理解できるようになるべきだよ，それが依存地獄を招くんだから．引数パースはさ，依存をたくさん使わなくても必要なものを自分で実装できるって気づき始めるのに最適な場所なんだ．" userName="voidnap" createdAt="2025/05/10 08:03:30" color="#ff5c5c">}}




{{<matomeQuote body="let uri: Uri＜HTTP＞ = get_uri_from_stdin().parse()?; って感じで、<br>ライブラリがモジュール化されてたら普通こうやるよね。<br>`HTTP` 型とかは関数の中で後の方で推論されることもあるし。" userName="f_devd" createdAt="2025/05/10 00:41:19" color="">}}




{{<matomeQuote body="GoやC#はRustやJavaScriptみたいに依存地獄にならないのはstdlibがすごいからって言うけどさ、<br>それって使える範囲が狭いからほとんどの人に使えるstdlib作りやすいってだけだよ。<br>もっと汎用的な言語じゃそうはいかないんだよね。" userName="fiedzia" createdAt="2025/05/10 12:52:30" color="#45d325">}}




{{<matomeQuote body="Rustはシステムプログラミング言語としてstdlib小さくして、regexやdatetimeみたいなライブラリを自由に選べるのが良いんだ。だから組み込みとか広い用途で使える。依存が増えるのは困るけど、それは依存を細かくすれば解決できるかも。楽して解決できる問題じゃないね。" userName="okanat" createdAt="2025/05/10 11:10:55" color="#ff5c5c">}}




{{<matomeQuote body="Mavenが依存地獄への下り坂を始めたやつだよ。（Antもそうだけど、あれは何も考えずに組み込むのは難しかった）。<br>今の若い子はもうどうやるか知らないんだろうけどさ…" userName="ardit33" createdAt="2025/05/10 02:08:36" color="">}}




{{<matomeQuote body="ここで言う”依存関係”ってのはたぶん、コンパイラが”絶対に使わない”って判断できない、もっと高レベルなもののことじゃないかな。<br>例えば、パース用ライブラリの主要機能で”XML”を指定して絶対に使わないって分かってる場合とかね。<br>自分の領域ではXMLを使わないって確固たるプロジェクト制約があるから。<br>でも残念なことに、ライブラリの中のXMLを扱うコードがコード全体の95％だったりするんだよね。<br>で、コンパイラに”これはいりませんよ、その関数をXML引数で呼び出さないって約束しますから”って言えない。" userName="ak_111" createdAt="2025/05/10 08:55:08" color="#ff5c5c">}}




{{<matomeQuote body="それが可能ってだけじゃなくて、AonixとかExcelsior JET、PTC、Aicasみたいな商用AOTコンパイラでは何十年も前から利用可能だよ。<br>関連するAndroidでもやってるし、GraalVMやOpenJ9では無料で使えるよ。" userName="pjmlp" createdAt="2025/05/09 21:58:18" color="">}}




{{<matomeQuote body="”Web server”っていうのは、まあ大体、データベースをJSONとかHTMLに変換するようなもんだよ。<br>もちろん複雑なとこもあるけど、他の分野と比べて特別にすごいことをやってるわけじゃないし。" userName="mort96" createdAt="2025/05/10 12:08:23" color="">}}




{{<matomeQuote body="ライブラリ自体が問題ってわけじゃないと思うんだ。<br>でも、新しい依存関係を追加した後に中身がよく見えないのが問題だね。<br>時間をかけて中身を調べるか、追加して問題を忘れちゃうか（小さいライブラリの利点でもあるんだけど）。<br>プロファイリング対応ビルド（PGO/BOLT）を簡単に作ってデプロイできて、パッケージごとの時間や命令数のフィードバックをしっかり得られたり、ビルド時に使われてないコードの割合を測れたりすると良いよね。" userName="dietr1ch" createdAt="2025/05/09 21:30:21" color="#ff5733">}}




{{<matomeQuote body="デッドコード除去は昔から静的言語（C/C++, Rust）ではやってるけど、動的言語（.NET, JS）では難しいから再発明されるんだ。Rustでコードサイズが大きいのは、依存ライブラリのコード量よりモノリシックな設計のせいが多いかな。依存のコード量問題は、サプライチェーンの信頼とかレビューできるかって話だね。" userName="dathinab" createdAt="2025/05/09 22:17:51" color="#ff5733">}}




{{<matomeQuote body="regexとかdatetimeとかarg parsingとかencodingを入れ替えられるのがfeatureだって言うけどさ、そんなのstdlibがある他の言語ならどれでもできるfeatureじゃん。" userName="whstl" createdAt="2025/05/10 14:06:55" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="NPMだとさ、変なtasteの無い開発者多すぎなんだよね。一つのライブラリがCLIツールとしても使えるようにして、でっかいarg parser入れたり。あれマジでダメなパターン。依存関係アウトオブデート通知の25%以上がarg parsing関連だよ。あと設計もね。globライブラリってファイルシステム読むべき？stringがマッチするかだけ教えるべき？シンプルで単機能な方が依存も減るし柔軟性も上がると思うんだ。Rustでもきっと一緒でしょ。開発者多いし、みんなベストな選択肢選ぶわけじゃないし。" userName="socalgal2" createdAt="2025/05/09 23:57:52" color="#38d3d3">}}




{{<matomeQuote body="仮説じゃなくてさ、実際のglob crate見てみようよ。crates.io/crates/glob。ダウンロード数213M、外部依存ゼロ、ソースファイルも一つ（テスト除く）。しかもrust-lang orgが開発してるんだよ。結構多くのcrateがそうだけど、みんなその話しないよね。" userName="kibwen" createdAt="2025/05/10 13:29:19" color="#ff5c5c">}}




{{<matomeQuote body="”no taste”とかさ、何言ってんのって感じ。プログラミングは高級アートギャラリーでぶらぶらするのとは違うんだよ。もし誰かに”taste無い”とか言われたら、恥ずかしすぎてブラックホールになるわ。hackernewsだけど、これマジで自己重要感高すぎでしょ。" userName="mexicocitinluez" createdAt="2025/05/10 12:51:13" color="">}}




{{<matomeQuote body="うん、そこがRustがNPMよりめっちゃ有利な点だよね。Rust開発者はもっとスキル高いし、crateの品質も一般的に全然上。" userName="IshKebab" createdAt="2025/05/10 07:43:42" color="">}}




{{<matomeQuote body="歴史的に見ると、borrow checkerが”taste無い”開発者から守ってくれる良い盾になってたんだよね。いつまでそれが続くかは分かんないけど。" userName="hedora" createdAt="2025/05/10 01:55:37" color="">}}




{{<matomeQuote body="まさにこれだよ。大工とか建築家がさ、”taste無い”手抜き工事して、それ指摘した人を笑うとか想像してみてよ。そんな人に何か建てて欲しい？これ、マジでSE文化の問題。" userName="buzzerbetrayed" createdAt="2025/05/10 14:03:25" color="">}}




{{<matomeQuote body="エンジニアリングってアートの一種だよ。エンジニアはたくさんの大小の決定をするけど、それが最適だって証明できないことも多い。”taste”は間違いなく役割を果たすし、良い”taste”か悪い”taste”か明らかなエンジニアリング成果物もある。残念ながらこのアートは数学とか科学・コンピューターに精通する必要があるから、すごく取っ付きにくいけどね。" userName="FredPret" createdAt="2025/05/10 13:50:23" color="#38d3d3">}}




{{<matomeQuote body="どのglob crateの話？crates.io/search?q=glob 見てよ。8ページ目までglobライブラリあるんだけど。" userName="hombre_fatal" createdAt="2025/05/10 13:39:40" color="#ff5733">}}




{{<matomeQuote body="Rustがsocial mediaとかtech influencerで主流になる前はそうだったかもね、でももう違うよ。crates.io/search?q=is-even 見てみ。そういうこと。" userName="hombre_fatal" createdAt="2025/05/10 13:49:43" color="#785bff">}}




{{<matomeQuote body="そういえばRustのライブラリの品質、俺も良いなって思ってたんだよね．だからasync-openai crateがあんな過剰設計のひどい状態なのを見て、マジで驚いたんだ．OpenAIのAPIみたいにシンプルなものを、よくもまああんなゴミの山に変えられたもんだよな？結局、俺はreqwestを使ってクエリを自分で手作りしたわ．多分みんなそうしてるんだろうな．．．" userName="bsaul" createdAt="2025/05/10 07:52:28" color="#45d325">}}




{{<matomeQuote body="＞’glob’ライブラリってファイルシステム読んでファイル名返す方がいいのか<br>ああいうのはPOSIXのglob関数に倣ってて、ファイルシステムを辿ってディレクトリエントリをマッチさせるんだよ．<br>純粋にglobパターンと文字列をマッチさせるだけの関数はfnmatchだよ．<br>でもそうだね、fnmatchみたいな機能は別のモジュールにして、それがglobの依存関係になるべきだよ．<br>fnmatchみたいな関数とディレクトリアクセスを使ってglobを一から実装しようとするなんて、誰もやるべきじゃないね．そんな簡単じゃないから．<br>globはパターンに導かれる形で探索するんだ．パターンをパスの構成要素に分解しないといけない．<br>”＊／＊／＊”なら3つの構成要素があるから、探索は3階層までしか深くならないってわかるんだ．あと”dir／＊”みたいに固定の部分がある場合は、現在のディレクトリをスキャンしないで”dir”を開けばいいだけで、それが失敗したらglobも失敗する．<br>ダブルスター＊＊がサポートされてるなら、複数構成要素にマッチするんだけど、それも同様にglobに統合されてるのが一番いいよ．<br>ブレース展開がサポートされてるなら、また別の難しさが出てくる．ブレースの枝によって構成要素の数が違うことがあるからね，｛＊／x，＊／＊／x，＊／＊／＊／x｝みたいに．globを実装するには、ブレース展開を別の関数にしてブレースを展開して、複数のglobパターンを生成してから、それをパスの構成要素に分解して探索する方がずっと役に立つんだ．" userName="kazinator" createdAt="2025/05/10 00:28:38" color="#ff33a1">}}




{{<matomeQuote body="globはあくまで例えだよ．特定のcrateについて言ってるわけじゃない．<br>それにこのcrateは公式のrust langリポジトリにあるから、個別の開発者の勝手な振る舞いにはずっと引っかかりにくいよ．全然良い例じゃないね．" userName="hu3" createdAt="2025/05/10 13:38:03" color="">}}




{{<matomeQuote body="問題回避できてるライブラリを一個だけ見つけるのは、あんまり意味ないよ．Nodeだって素晴らしいライブラリは見つけられるけど、誰だってNodeは依存関係に問題があるって同意するでしょ．" userName="buzzerbetrayed" createdAt="2025/05/10 14:00:47" color="#785bff">}}




{{<matomeQuote body="Nodeには組み込みのglob機能があるって指摘しておく価値はあるね： https://nodejs.org/docs/latest-v24.x/api/fs.html#fspromisesg...<br>＞ あと設計の話もあるかもね．’glob’ライブラリって実際にファイルシステムを読んでファイル名返す方がいいの？それとも文字列がglobにマッチするかだけ教えて、残りは君に任せる方がいいの？<br>Nodeのstdlibにはこれもやってくれる関数があるよ（実験的ってマークされてるけど）： https://nodejs.org/docs/latest-v24.x/api/path.html#pathmatch..." userName="throwitaway1123" createdAt="2025/05/10 19:38:32" color="">}}




{{<matomeQuote body="言いたいことはわかるけど、OpenAIがこの数年ソフトウエアで起きてる一番ホットなやつだから、公式のクライアントがあってちゃんとメンテされてると思ってたんだよね、Rust向けに．正直ちょっとショックだった．<br>追記：元々君のコメントを読み間違えてたよ．OpenAIは重要な技術なんだよ、会社自体をどう思おうと関係なくね．彼らのAPIと簡単に繋げられるのは重要なんだ．" userName="bsaul" createdAt="2025/05/10 14:51:08" color="">}}




{{<matomeQuote body="macroがそれを補ってるみたいだね．ライブラリによっては確かに”C＋＋のテンプレートプログラミング”みたいな雰囲気があるよ．" userName="bsaul" createdAt="2025/05/10 07:55:10" color="">}}




{{<matomeQuote body="親コメントはRustとnpmのglob依存関係を比較対照することを提案してたんだと思うよ．個別の例は役に立たないけど、ランダムだけどよく使われてるパッケージを10個選ぶのは多分そうだね．親コメントはNodeのバージョンがどうなってるかあまり触れてなかったけどね．<br>npmのglobパッケージには6つの依存関係があるよ（その依存関係にはさらに3つ以上の依存関係があって、そのさらに下位の依存関係には6つ以上の依存関係が．．．）<br>君が指摘するようにRustのcrateは公式リポジトリにあるから、標準ライブラリの一部じゃないけど、言語のメンテナ組織によってメンテされてるんだ．<br>だから悪い例になる可能性はあるけど、npmの方はnpmの開発者がメンテしてて、自分自身を”私はnpmと、君が使うかもしれない他のNode関連のJavaScriptのかなりの部分を書いた”って説明してるから、それは素晴らしい例だと言えると思うよ．だって言語に一番気を配ってるだろうって期待できる人たちが、これらのパッケージのメンテナーで、（願わくば）言語やエコシステムにとってのベストプラクティスだと思ってることを実装してるんだからね．" userName="timeinput" createdAt="2025/05/10 14:34:48" color="#45d325">}}




{{<matomeQuote body="globの件は趣味じゃなくて設計の問題だね。TasteはSteve Jobsが言ってたような、誰にでも分かりやすい親切なデザインのこと。プログラミング言語って学習必要だからTastefulとは言えないかも。PythonやGoにはちょっとした良さもあるけど、GitとかLinuxとかRustは平均的な開発者にも特に分かりにくいよね。" userName="blub" createdAt="2025/05/10 19:09:00" color="">}}




{{<matomeQuote body="それでもさ、筆者がライブラリの質について考えて、適当に選んだ例がたまたまRust版で、それが高品質だったってのは興味深いよね。" userName="kibwen" createdAt="2025/05/10 15:08:28" color="">}}




{{<matomeQuote body="それはcrates.ioの検索機能の問題だよ。標準のglobクレートに依存してたら検索で上位に来るんじゃないかな。" userName="timeinput" createdAt="2025/05/10 14:32:38" color="">}}




{{<matomeQuote body="いやいや、今のデカいライブラリの多くはマジでイケてない設計者たちが作ったやつだよ。その分野をよく知ってないと気づかないだけだけどね。" userName="lionkor" createdAt="2025/05/10 07:21:35" color="">}}




{{<matomeQuote body="最初に表示されるやつでしょ？ダウンロード数2億あって、検索クエリと名前が完全に一致するやつね。" userName="kibwen" createdAt="2025/05/10 15:09:29" color="">}}




{{<matomeQuote body="ああもう、Rustコミュニティの人たちがジョーク言うのがそんなにプロフェッショナルじゃないって？ばっかばかしいね！<br>これらのパッケージは実際には何も使ってないって気づくと思うよ。" userName="detaro" createdAt="2025/05/10 13:53:31" color="">}}




{{<matomeQuote body="それはジョークだよ。<br>Leftpadとは違うから。" userName="IshKebab" createdAt="2025/05/10 15:23:49" color="">}}




{{<matomeQuote body="Rustでも同じじゃないと思うよ。Tasteは大事で、良いTasteのプログラマーはRustを選ぶ傾向があるから、依存関係の問題も他より少ないはず。開発者が多いと選択肢が乱立するけど、Rustにはもっと「電池込み」の体系的な標準ライブラリが必要だね。今のごちゃごちゃしたクレートじゃなく。後からでも実現できるのがRustの良いとこ。それがRust 2030への願いだな。" userName="jll29" createdAt="2025/05/10 10:29:00" color="#ff5733">}}




{{<matomeQuote body="＞そうだね、fnmatchは別のモジュールにしてglobの依存関係にするってのはあり。fnmatchはパターン解析と適用をやるから、ptnparseみたいなライブラリに分けるべき。さらに細かくsingleptnとかmultiptn、pthmatchとかに分解すれば必要な機能だけ取り込める。これで完璧！／ｓ…って、これはleftpadみたいになる原因。どこで分解止めるか大事。fnmatchはsyscallより機能少ないし、他の文字列関数とstringsライブラリにまとめても良い。fnmatchをstringsに入れるってアイデアは、ファイルシステム機能含むglobライブラリに固定すべきじゃないって君の意見と合うよ。" userName="Olreich" createdAt="2025/05/10 14:01:49" color="#45d325">}}




{{<matomeQuote body="＞あとこのクレートは公式のRust langリポジトリのだから、個人的な変な挙動ははるかに少ないよ。<br>繰り返すけど、このスレッドでみんなが言語に提供してほしいって言ってることの多くは、実際にはrust-lang組織が提供してるんだ。regexとかserdeとかね。ゴールポストはどんどん遠ざかってる。<br>Rustの主な罪は、依存関係の使用をエンドユーザーに透明に見せちゃうことだよ。みんな自分がどれだけ多くのライブラリに依存してて、顔の見えないどれだけ多くの人がそれらをメンテしてるかなんて考えたくないから、Rustが見せつけてくると不快になるんだ。これはRustの問題じゃなくて、ソフトウェアの複雑さの問題だよ。" userName="kibwen" createdAt="2025/05/10 15:15:04" color="#ff5733">}}




{{<matomeQuote body="それはRustに限った話じゃない。依存関係は全般的にヤバい。サプライチェーン攻撃は現実。新しい言語なら、Capabilities Systemを入れてライブラリの能力（ファイル読み込みとか）を制限できるようにすべき。エコシステム全体で最初から設計しないと無理。既存言語にレトロフィットは後方互換性失うから難しい。これが長期的な唯一の解決策だと思う。ほとんどのライブラリをファイル読んだりできないようにして、攻撃対象を減らす。危険な権限が必要なものは意外と少ないはず。依存削減だけじゃ不十分。Goでも攻撃起きてる。" userName="jerf" createdAt="2025/05/09 13:58:06" color="#ff5c5c">}}




{{<matomeQuote body="Javaと.NET Frameworkには何十年も前に部分的なトラストとかCapabilitiesの仕組みがあったけど、誰もほとんど使わなくて廃止されたんだ。" userName="assassinator42" createdAt="2025/05/09 21:15:38" color="">}}




{{<matomeQuote body="このアイデアみたいなやつで、現実にあるものってなんかある？すごく理にかなってると思うけど、今の言語じゃ実際問題として不可能ってのはその通りだね。" userName="0cf8612b2e1e" createdAt="2025/05/09 21:23:30" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="誰も正しく使わなかった、って感じだったんじゃないかな。" userName="pjmlp" createdAt="2025/05/09 22:01:49" color="">}}




{{<matomeQuote body="それって実装が悪かったってことにならない？誰も何かを正しく使えないなら、それは人の問題じゃなくてモノ（仕組み）の問題みたいに見えるけど。" userName="eikenberry" createdAt="2025/05/09 22:24:23" color="">}}




{{<matomeQuote body="このアイデア大好き。Rustにもちょっと似たところあるけど、それはオプトインで規約ベースだし、unsafeコードだけ。具体的には、＃！［deny(unsafe_code)］（現在のクレートにunsafeコードがあるとコンパイルエラーになる）を使うライブラリが増えてて、それをユーザーに宣伝してる傾向がある。でも強制力はないし、特定の関数には＃［allow(unsafe_Code)］を追加できちゃう。<br>Capabilitiesシステムは、今の”feature”フラグみたいに動くかもしれないね、でも標準ライブラリに対して。そうすれば推移的に計算できるってことになる。" userName="simonask" createdAt="2025/05/10 06:58:22" color="#ff5733">}}




{{<matomeQuote body="CapslockがGoでそういうことやってるよ https://github.com/google/capslock" userName="EE84M3i" createdAt="2025/05/10 06:04:27" color="">}}




{{<matomeQuote body="そうは思わないな。ソフトウェアって、たぶん主流のツールを間違って使っておいて、そのあとツールを非難するのがOKとされてる唯一の”エンジニアリング”分野じゃないかな。" userName="palata" createdAt="2025/05/09 22:36:47" color="">}}




{{<matomeQuote body="ライブラリが勝手にシステムにアクセスできないようにする設計って、そんなに複雑にする必要ないと思うな。システムAPIを呼び出せるのを、メインのプログラムだけにしちゃえばさ、ライブラリは必要な機能（権限）をメインからちゃんと渡してもらう（依存性注入）形になるでしょ。今あるほとんどの言語でもこれできるんだけど、問題は今まで作られたライブラリが全部動かなくなっちゃうってことだよね。" userName="notnullorvoid" createdAt="2025/05/10 01:05:19" color="#ff33a1">}}




{{<matomeQuote body="もし今すぐこれが欲しいなら、Haskellくらいしか選択肢ないかもね。" userName="loglog" createdAt="2025/05/10 07:03:51" color="">}}




{{<matomeQuote body="他の業界でも”普通に使われてるツール”って、たった5年でガラッと変わるもんなの？" userName="dullcrisp" createdAt="2025/05/09 23:38:32" color="">}}




{{<matomeQuote body="Haskellって、IOモナドでこれにちょっと似たことやってるんじゃないかな？IOするべきじゃない関数は、型にそれが現れるようになってて、例えばストリーム受け取ってバッファ返す、みたいなさ。" userName="lxpz" createdAt="2025/05/10 07:17:20" color="#ff5c5c">}}




{{<matomeQuote body="へー、面白いね。まだ知らなかったな。どれくらい細かくできるか、ちょっと見てみるよ。一番心配なのは（やっぱり）ネットワーク通信なんだけど、ローカルのサービスを呼ぶのと、メインのプログラム以外から勝手に外部に繋がるのを区別できたら理想的だよね。" userName="tgv" createdAt="2025/05/10 06:39:18" color="">}}




{{<matomeQuote body="例えば、Australとかどうかな？ https://austral-lang.org/spec/spec.html#rationale-cap" userName="Smaug123" createdAt="2025/05/09 21:37:24" color="#785bff">}}




{{<matomeQuote body="既存言語/エコシステムを改造するのもアリだと思うな。コンパイル時じゃなく実行時にチェック（ランタイム強制）すれば、コスト低く多くのメリットが得られるよ。コンパイラや実行環境がシステム呼び出しをラップして権限チェックしたり、抜け道を使ったらエラーにしたりできる。安全性は言語次第だけど、ルール違反でエラーOKならね。ライブラリの権限リスト作りは手間だけど、TypeScriptで似た取り組みは成功してるし、不可能じゃないと思うな。" userName="voxgen" createdAt="2025/05/09 21:19:45" color="#45d325">}}




{{<matomeQuote body="参考までにね: #![forbid(_)] ってのは、そのコード自身からは回避できないんだ（std のマクロの中でしか使わないでね、って安定化されないNightlyの機能を使わない限りだけど）。" userName="QuartzLibrary" createdAt="2025/05/10 10:07:15" color="#ff5c5c">}}




{{<matomeQuote body="うん、でもセキュリティをしっかりやりたいなら、言語だけでこれを強制するのは無理なんだよ（少なくとも、そのまま動くネイティブなプログラムの場合はね）。OSレベルのサポート、つまり『何ができるか』っていう能力の仕組みが必要で、これはSeL4とかFuchsiaみたいな一部のOSが持ってるんだ。でも、そのまま動くんじゃなくて、VMの中で動くなら能力の制限はできるよ。WasmがWASIでやってるのがこれだね。" userName="kibwen" createdAt="2025/05/09 21:49:37" color="#ff33a1">}}




{{<matomeQuote body="そうそう、Haskellの”エフェクトシステム”は”能力システム”の一種って考えられるね。僕が作った Bluefin っていうエフェクトシステムでは、能力をちゃんと手渡しされる『値』として扱ってるんだ。例えば、”IOE” っていう能力がないと、I/Oはできないようになってるよ。" userName="tome" createdAt="2025/05/10 12:54:09" color="#ff5c5c">}}




{{<matomeQuote body="まあ，部分的．だから消されたんだけど，公式的にはOSのセキュリティ機能の方がいいってことになってる．" userName="pjmlp" createdAt="2025/05/10 06:15:14" color="">}}




{{<matomeQuote body="Wasm ＋ wasiなら，コンポーネント間の明確なインターフェースで厳密な境界を定義できるから，今回の話と少し似てるかも？" userName="martsa1" createdAt="2025/05/09 22:02:12" color="">}}




{{<matomeQuote body="それ，めちゃくちゃ大変なタスクだよ．能力システムを導入するなら，粒度（細かすぎると危険，粗すぎるとライブラリ作者の負担）が重要．関数やモジュールごとの監査は大変だし，開発者がなぜその能力が必要か説明するのも負担．JSやWASMの知見から，関数呼び出しごとのチェックはオーバーヘッドが大きすぎるんだ．" userName="YmiYugy" createdAt="2025/05/10 11:35:54" color="#ff5733">}}




{{<matomeQuote body="これについて考えたことあるんだけど（そんなに長くじゃないけど），OSとのやり取りの方法をかなり変える必要がありそうなんだ．例えば，ライブラリに”ストリームから読む”のを許可するのは安全そうだけど，ファイルを読むのと同じシステムコールを使ってる可能性があることに気づくまではね！" userName="wofo" createdAt="2025/05/09 14:01:52" color="#45d325">}}




{{<matomeQuote body="このアイデア大好き！いつかやりたいな．昔からDarius Baconの”Vapor”っていう能力ベースOSの話聞いてて．Rustでlinter（cargo－geigerとか）で可能かも．ただ，Rustコンパイラの健全性の問題（＃84366とか）があるから，それは修正かlinterで対応必要だね．" userName="mleonhard" createdAt="2025/05/10 00:25:43" color="#45d325">}}




{{<matomeQuote body="Australってすごくクールな実験だね．君がリンクした仕様書にすごい労力がかけられてていいな．能力と線形型の必要性，そしてそれらがどう相互作用するのか，すごく分かりやすく説明してる．" userName="crabmusket" createdAt="2025/05/09 23:20:27" color="#785bff">}}




{{<matomeQuote body="Go言語用のCapslockこれね→https：／／github．com／google／capslock" userName="EE84M3i" createdAt="2025/05/10 06:06:33" color="">}}




{{<matomeQuote body="正直言って，トレンド追いかける時にしか変わらないよ．消費者はソフトがどう書かれたか気にしない，ちゃんと動けばね．これは両方に言える．Cで書かれたGtk＋アプリでも，Electronのごみでも，動く限り使うんだ．" userName="pjmlp" createdAt="2025/05/10 06:18:27" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
