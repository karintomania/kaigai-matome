+++
date = '2025-02-13T00:00:00'
months = '2025/02'
draft = false
title = 'Nvidiaが提案する！C言語を使わない未来とは？'
tags = ["Nvidia", "セキュリティ", "プログラミング", "C言語", "技術革新"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> Nvidiaが提案する！C言語を使わない未来とは？

引用元：[https://news.ycombinator.com/item?id=42998383](https://news.ycombinator.com/item?id=42998383)

{{<matomeQuote body="SPARKを使ったらしいよ。SPARKはAda言語に基づいた正式なプログラミング言語で、高い信頼性が求められるソフトウェアを開発するためのもの。安全性やセキュリティが重要なアプリケーションの開発を助けてくれる。" userName="jasonpeacock" createdAt="2025-02-13T22:22:08" color="#ff5c5c">}}

{{<matomeQuote body="記事の最初を読まない人には朗報だね！正式確認は特に並行処理が多い環境で効果的なんだ。Nvidiaが使うのも納得。パイロットプロジェクトの成功も気になるところだ。" userName="roenxi" createdAt="2025-02-13T22:44:29" color="#45d325">}}

{{<matomeQuote body="SPARKの開発がもっと活発だといいんだけど、10年間ほとんど手が加わってない。SPARKはRustよりも多くの安全策や保証を提供していて、コンパイル時に処理されるからね。" userName="alberth" createdAt="2025-02-14T15:38:32" color="">}}

{{<matomeQuote body="Nvidiaが使ったのは、一般的なSPARKのバージョンじゃなくて、SPARK Proっていう商用版だったらしい。" userName="RachelF" createdAt="2025-02-14T02:26:25" color="">}}

{{<matomeQuote body="SPARKは誰でも使えるオープンソース。NvidiaはAdacoreのプロサポートを選んだけど、実際にはGNATコンパイラの一部として使われているよ。" userName="kevlar700" createdAt="2025-02-14T09:46:12" color="">}}

{{<matomeQuote body="AdaCoreのプロサポートは新しいリリースが含まれていて、問題があった場合も安心。ただ、無料版もそこそこ最近のバージョンが手に入るから、ある程度のサポートもあるよ。" userName="simon4ada" createdAt="2025-02-14T11:00:14" color="">}}

{{<matomeQuote body="SPARKは宇宙船プログラミングでも支持されているよ。正式な検証と安全機能があるからね。" userName="mbonnet" createdAt="2025-02-14T17:44:47" color="">}}

{{<matomeQuote body="もしAdaCoreがカールブラケット構文を受け入れるコンパイラを本気で作ったら、新しいユーザーが倍増すると思う。ただ、表面的なものに影響される人が多いのも事実だね。" userName="cxr" createdAt="2025-02-14T01:28:56" color="">}}

{{<matomeQuote body="Adaとは関係ないけど、Dafnyっていう正式な仕様と検証を統合したプログラミング言語もあるよ。複数の言語にコードを生成できるのがいいね。" userName="rramadass" createdAt="2025-02-14T06:50:38" color="">}}

{{<matomeQuote body="VHDLっぽい構文は意外にいいよ。驚くべき現代的な機能もあるし。" userName="shipp02" createdAt="2025-02-14T17:07:21" color="">}}

{{<matomeQuote body="誰もが’{’をBEGINに、’}’をENDにマッピングするプリプロセッサを作るのを妨げるものはないよ。" userName="coliveira" createdAt="2025-02-14T02:30:37" color="">}}

{{<matomeQuote body="Pascalの派生言語のModula-2、Oberon、Lua、AdaはIFやFOR、WHILEなどにBEGINを必要としないから、構文がずっとスッキリしてるよ。" userName="timbit42" createdAt="2025-02-15T20:46:06" color="">}}

{{<matomeQuote body="文法の実装はプログラミング言語の普及のほんの0.1％に過ぎない。g++に非constを明示的に追加するのは簡単。でも、意味がない。" userName="windward" createdAt="2025-02-14T11:17:27" color="">}}

{{<matomeQuote body="Rustを止めたいのは分かるけど、言語の採用には大きなnpmクローンの有無が鍵だと思うよ。" userName="juped" createdAt="2025-02-14T13:05:53" color="">}}

{{<matomeQuote body="Alireは2018年から存在していて、GitHubにある最古のリリースは0.4だよ。" userName="steveklabnik" createdAt="2025-02-14T15:20:30" color="">}}

{{<matomeQuote body="現行の構文はおかしいから、改善すべきだと思う。" userName="devit" createdAt="2025-02-14T16:52:07" color="">}}

{{<matomeQuote body="おかしいってことはないけど、時代遅れだね。Adaの構文はPascalと同じ系譜から来ていて、80年代にはCと同じくらい人気だったんだよ。" userName="marssaxman" createdAt="2025-02-14T17:15:06" color="">}}

{{<matomeQuote body="確かにそうだけど、構文が消えた理由ではないよ。最近プログラミングを始めた人にはカッコいい中括弧の言語にしか慣れてないから理解できないかもしれないけど、だからと言っておかしいわけじゃない。" userName="marssaxman" createdAt="2025-02-14T18:46:35" color="">}}

{{<matomeQuote body="Pascalのオブジェクトコードはランタイム範囲チェックがあれば、Cより遅くなるかもね。Pascalの文字列は静的に制限されてたり、範囲情報があったりするけど、Cはそうじゃないからバッファオーバーフローが発生しやすいんだよね。Adaはメモリ安全性を重視して、特に並行性の安全性や形式検査と組み合わせることで良い結果を出してる。clang/llvmもメモリ安全性向上に向けて進展してるし、CやC++が1980年代に追いつければいいね。" userName="musicale" createdAt="2025-02-16T23:15:43" color="#ff5c5c">}}

{{<matomeQuote body="Pascalの派生言語であるModula-2やOberon、Lua、AdaはIFやFOR、WHILE、LOOP、CASE文でBEGINが不要だから、文法がPascalよりもすっきりしてるよ。" userName="timbit42" createdAt="2025-02-15T20:47:00" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="記事ではNvidiaのスタックのどの部分がSPARKを使ってるのか触れてないね。Nvidiaは約3万人的な大企業で、”開発者は50人以上トレーニング済みで、SPARKで実装されたコンポーネントもある”って言っても、あまり信頼感が湧かないな。個人的には、形式検証の現実的な道は、AIの助けで面倒な部分を自動化することだと思うんだ。変な書き方にこだわる必要はない。" userName="NavinF" createdAt="2025-02-13T22:38:09" color="">}}

{{<matomeQuote body="AIによるコード生成は、Nvidiaみたいな並行性要件のあるところでは、逆に見つけにくいバグを増やすかもね。のんきにタブ補完でコードを書いちゃうと。だけど、形式的に検証可能なプログラムのためのAIコード生成は良いかも。未来のプログラミング言語に期待だね。" userName="btown" createdAt="2025-02-13T23:27:40" color="#45d325">}}

{{<matomeQuote body="Rustの件だけど、借用チェッカーはAIには無理じゃないかな。コードの暗黙のプロパティや全体の構造に関しては多くのことが分かっていないと思う。" userName="stefan_" createdAt="2025-02-14T09:31:12" color="">}}

{{<matomeQuote body="NvidiaがRustよりSPARKを選んだのは、形式検証のためじゃなくて、もっと発展してて、安全性が高いからって話もあるみたい。Adaはレジスタやネットワークパケットのモデリングも得意だしね。個人的にはSPARKのgnat proveを活用したAIを考えるけど、他は使わないかな。" userName="kevlar700" createdAt="2025-02-14T09:54:05" color="">}}

{{<matomeQuote body="パケットモデリングの例として、ビットパッキングされたタグ付けされたユニオンの複雑なパケットモデリングの例を紹介するね。多分、他の言語ではこんなに簡単に宣言できるものはないと思う。" userName="LiamPowell" createdAt="2025-02-14T10:29:29" color="">}}

{{<matomeQuote body="> Sorry to say but AI can't figure out the borrow checker. I'd speculate it does poor on a lot of things that are sort of implicit in the code / properties of the grand structure rather than incremental text things. AIツールはあまり使わないけど、最近Rustで試したとき、借用チェックのエラーは問題にはならなかったよ。確かにLLMは理解できてないけど、借用に対して考えるべきことはそんなに多くもないと思う。" userName="steveklabnik" createdAt="2025-02-14T15:13:30" color="">}}

{{<matomeQuote body="実際に、AIによるコードレビューツールが新しいメソッドへの切り替えを提案して、両方ともそれが良いアイデアだと思ったんだけど、実際にはAndroidのactivityのonCreate()には使えないメソッドだったんだ。直接関係ないActivityに影響を与えて、問題が起きた。こういうのは表現力のある型システムなら簡単に見抜けたのに、LLMはわからないんだ。" userName="nostrademons" createdAt="2025-02-14T21:14:50" color="#ff5733">}}

{{<matomeQuote body="AIによるコード生成が形式的に検証可能なプログラムに役立つかも？検証が実際には面倒なのは確かだけど、最近のモデルはその助けになるはず。" userName="erichocean" createdAt="2025-02-14T04:07:56" color="#ff5733">}}

{{<matomeQuote body="o3-miniを使って8×8ビット整数の加算を検証したけど、あまり感心しなかった。エンドiannessやケリーの問題なんて言われたけど、実際は違ったし、提案された反証も役に立たなかった。形式的検証には、決定的で明確なプロセスが大事だと思う。" userName="atiedebee" createdAt="2025-02-14T08:23:06" color="">}}

{{<matomeQuote body="AIによるコーディングは主流の問題でないと結果がイマイチ。PHPやPythonだとまあまあだけど、PostGISの質問をすると訳のわからない回答が返ってくる。ADA/Sparkや形式的検証の分野は小さすぎて、AIが訓練できない気がする。" userName="hyperman1" createdAt="2025-02-14T08:39:19" color="">}}

{{<matomeQuote body="今のLLMによるコーディングは、自動化されたStack Overflowのコピー＆ペーストみたいなもので、シンプルなものにはまあまあだけど、コードを根本から考える能力はないし、見た目は良いけど動かないものを作りやすい。" userName="TheOtherHobbes" createdAt="2025-02-14T12:00:44" color="">}}

{{<matomeQuote body="初めてLLMにコードのスニペットをお願いしてみたんだけど、コンパイルは通ったけど実行すると何も動かないって結果だった。3つ目のAPIコールでエラーが出たし、期待通りにはならなかった。" userName="nottorp" createdAt="2025-02-14T09:14:41" color="">}}

{{<matomeQuote body="OPはAIが形式的に検証できるコードを生成すると言ってるのか、AIが検証してると言ってるのか、ちょっと違うかもしれないけど、前者だと思ってた。" userName="brabel" createdAt="2025-02-14T12:06:26" color="">}}

{{<matomeQuote body="形式的検証の段階まで来ているなら、かなり細心にコードを書くはずだから、AIは慎重に使うことになると思う。" userName="atiedebee" createdAt="2025-02-14T15:59:13" color="">}}

{{<matomeQuote body="Nvidiaってソフトウェア会社じゃなくて半導体会社だよね。30,000人の社員には全員がソフトウェア開発にいるわけじゃないからね。AIにはあまり期待してない。AIアシスタントが正確でない限り、細かいエラーを人間が見つけないと意味ないし。Cコードを検証するツールはあるけど、ゼロからのプロジェクトは高階の正式な言語で実装して検証した方が良さそう。" userName="lou1306" createdAt="2025-02-14T10:08:53" color="">}}

{{<matomeQuote body="記事ではNvidiaのどの部分がSPARKを使ってるかは触れてないね。関連のケーススタディには3つの例が挙げられてるけど、全体のGPUファームウェアの画像の画像認証と整合性チェック、BootROMとセキュアモニタのファームウェア、埋め込みOSの隔離カーネルの正式検証されたコンポーネントがあるよ。特に、小さいコードベースでSPARKの強い型付けやランタイムエラーのないことが大きなメリットになる。" userName="transpute" createdAt="2025-02-14T01:14:15" color="#785bff">}}

{{<matomeQuote body="Nvidiaのセキュリティチームが主導してるのが分かるね。エンジニア50人はこの規模の会社なら妥当だと思うよ。" userName="swiftcoder" createdAt="2025-02-14T10:24:44" color="">}}

{{<matomeQuote body="これからは実際の「コード」を書くんじゃなくて、総合テストを考えて、それを元にコードが生成される時代になると思う。アセンブリからCに移ったのと同じようにさ。" userName="zitterbewegung" createdAt="2025-02-13T23:25:04" color="#ff33a1">}}

{{<matomeQuote body="AIには大きな課題があると思う。機械学習は、すべてのテストケースをクリアする解決策を見つけるのが得意だけど、意図したことをしないことが多いからね。" userName="bawolff" createdAt="2025-02-13T23:54:33" color="">}}

{{<matomeQuote body="包括的なテストを書くのが一番の弱点だと思う。安い場所に開発をアウトソーシングして、結果に対して受け入れテストを行うのと同じだよ。それじゃ飛行機は作れないよ。" userName="makeitdouble" createdAt="2025-02-14T00:14:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="人間は全てのケースをカバーするテストを書くのが苦手だと思う。テストを誰がテストするの？" userName="Jean-Papoulos" createdAt="2025-02-14T07:20:00" color="">}}

{{<matomeQuote body="AIがプログラミング言語のセキュリティに大きな影響を与えると思うし、多くのパラダイムが変わるはずだよ。" userName="antirez" createdAt="2025-02-13T22:39:32" color="#785bff">}}

{{<matomeQuote body="フォーマルな検証はセキュリティが最も重要なコードに使われるから、50人も開発者がいれば十分だよ。" userName="UltraSane" createdAt="2025-02-14T05:25:06" color="">}}

{{<matomeQuote body="他の99.9％の会社がSPARKを使ってないのに比べればね。テストや静的解析だけのレベルだよ。" userName="NavinF" createdAt="2025-02-17T02:49:27" color="">}}

{{<matomeQuote body="AAAゲームが出るたびにカスタム調整パッチを出してるんじゃないの？GeForce Experienceは新しいドライバーをインストールさせるための甘いトリックだよ。" userName="sdwr" createdAt="2025-02-14T03:01:00" color="">}}

{{<matomeQuote body="彼らの話をチラッと見たけど、NVIDIAの安全性に関する提言をする外部のコンサルタント会社だね。言語を完全に変える姿勢にはちょっと違和感があるな。CUDAはC/C++ベースだし、大規模プロジェクトでは弱点が見つかる可能性もあるよ。" userName="r1chardnl" createdAt="2025-02-13T22:19:45" color="">}}

{{<matomeQuote body="＞”外部のコンサルタント会社だね。”これは顧客であるNVIDIAの数年に渡るエンジニアリング作業のマーケティング事例だよ。NVIDIAは今やSPARKを使用して、画像の認証やGPUファームウェアの整合性チェックを行ってるんだ。" userName="transpute" createdAt="2025-02-14T00:52:15" color="#ff5733">}}

{{<matomeQuote body="彼らの仕事は低レベルのファームウェアに注力してるようで、CUDAや計算には関係ないみたいだね。ライブラリが少ない分、論理的な証明や自動化が進みやすいんじゃないかな。" userName="touisteur" createdAt="2025-02-13T22:37:26" color="">}}

{{<matomeQuote body="そのどこが取りにくいの？文法に関することならPythonでどう説明するの？" userName="yjftsjthsd-h" createdAt="2025-02-14T00:07:12" color="">}}

{{<matomeQuote body="おもにCでプログラム書いてAdaライブラリ呼ぶか、Adaで書いてCライブラリ呼ぶかって話だね。これ、C/RustやC/Pascal、Rust/Pythonでも同じようなこと言えるよね。" userName="yjftsjthsd-h" createdAt="2025-02-14T03:38:28" color="">}}

{{<matomeQuote body="俺のメインプログラムはC++でSTLのおかげで便利なんだよ。Vectorやunique_ptrみたいな面倒なもんがあって、CよりC++がいいんだ。" userName="bluGill" createdAt="2025-02-14T04:03:45" color="">}}

{{<matomeQuote body="Cライブラリ呼ぶときと同じで、STLオブジェクトをプレーンCオブジェクトに変換して渡して、戻ってきたらデシリアライズする感じ。コールバックが必要なら例外を捕まえてエラーコード返せばいいだけ。ほんと、他の言語との相互運用性とはそんなに変わらないよ。" userName="tsimionescu" createdAt="2025-02-14T06:58:26" color="#38d3d3">}}

{{<matomeQuote body="C++コンパイラの小さなパートを実行環境に組み込んで、C++と深くやり取りできる言語がいくつかあるよ。" userName="MaxBarraclough" createdAt="2025-02-14T23:25:38" color="">}}

{{<matomeQuote body="相互運用のためのシリアライズ/デシリアライズで性能が落ちるから、言語自体が実用的じゃなくなるんだよね。" userName="bluGill" createdAt="2025-02-14T13:39:27" color="">}}

{{<matomeQuote body="でも、コールごとのオーバーヘッドがほんの少しの命令数なら、文脈によってはそんなに悪くないかも。大きなバッファーをコピーするのが問題だけど、普通は避けられるはず。" userName="MaxBarraclough" createdAt="2025-02-14T23:24:45" color="">}}

{{<matomeQuote body="俺はAdaが問題とは思わないよ。RustやGo、Swift、Zig使っても同じ問題が出ると思う。C++の機能を多用すると、他の言語との相互運用性が難しくなる。" userName="skissane" createdAt="2025-02-14T04:13:43" color="">}}

{{<matomeQuote body="GCC使えば、クラスレベルでの相互運用がちょっと楽になるよ。" userName="LiamPowell" createdAt="2025-02-14T07:01:20" color="">}}

{{<matomeQuote body="ほんとだよ。C以外の言語はC以外のものとの相互運用性が悪い気がする。C++はRustの借用チェッカーと相性悪いし、Goもいろいろ問題がある。DはC++サポートしてるけど、どうなのかは詳しく知らない。" userName="bluGill" createdAt="2025-02-14T13:38:29" color="#785bff">}}

{{<matomeQuote body="Cと古典的な3世代言語の相互運用はそこまで難しくないよ。Cの機能セットとだいたい同じだから。C++やGo、Rust、Swift、Adaみたいな言語は複雑な機能が多いから、使うと相互運用が難しくなる。" userName="skissane" createdAt="2025-02-15T01:37:48" color="">}}

{{<matomeQuote body="俺は15年以上AdaからCやC++のコード呼び出してるし、逆もやってきたよ。Pythonとも行き来してるし、Javaを介してJNIで呼び出したりも。Postgresの拡張をAdaで書いたこともあるけど、可能なのは確かだよ。" userName="touisteur" createdAt="2025-02-15T01:00:26" color="#ff33a1">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
