+++
date = '2025-05-29T00:00:00'
months = '2025/05'
draft = false
title = 'C#ファイルが直接実行可能に！ dotnet run app.csでスクリプト感覚で！'
tags = ["C#", ".NET", "スクリプト", "コマンドライン"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> C#ファイルが直接実行可能に！ dotnet run app.csでスクリプト感覚で！

引用元：[https://news.ycombinator.com/item?id=44122582](https://news.ycombinator.com/item?id=44122582)




{{<matomeQuote body="いいね、でも残念ながらコンパイルしてもスタートアップオーバーヘッドが0.5秒くらいあって、多くのアプリには向かないんだよね。でもShell scriptingやperlよりはいい。Rubyも使うけど最近はSwiftに移行した。Swiftはインタプリタみたいだしコンパイル版は速い。SwiftのCLIアプリ用にキャッシュツール(Swift Script Caching Compiler)作ったよ。dotnet runはキャッシュするからそれ自体はいらないけどね。" userName="jbverschoor" createdAt="2025/05/29 07:33:58" color="#ff33a1">}}




{{<matomeQuote body="0.5秒ってどこ情報？ Hello world動かしてみたけど、オーバーヘッド63msだったよ。neueccさんもCLIライブラリのオーバーヘッドでベンチマークしてるけど、0.5秒なんてどれもいってないよ。https://neuecc.medium.com/consoleappframework-v5-zero-overhe...<br>” Swiftはインタプリタみたいって書いてるけど、.NETのJITは段階的なJITだから、すぐにコードを出すわけじゃないんだよ。" userName="Kuinox" createdAt="2025/05/29 10:54:58" color="#38d3d3">}}




{{<matomeQuote body="前のコメントの人じゃないけど、自分のM3 Maxでhello worldサンプル試してみたよ。<br>” time dotnet run hello-world.cs ＞ /dev/null”<br>1回目<br>”real 0m1.161s”<br>”user 0m0.849s”<br>”sys 0m0.122s”<br>2回目<br>” time dotnet run hello-world.cs ＞ /dev/null”<br>”real 0m0.465s”<br>”user 0m0.401s”<br>”sys 0m0.065s”<br>こんな感じだった。" userName="bouke" createdAt="2025/05/29 11:15:28" color="#ff33a1">}}




{{<matomeQuote body="”Great, but unfortunately, even when compiled, the startup overhead is about half a second, which makes it unsuitable for many applications.”<br>どんなアプリだよ？ 例えば簡単なウェブサービス立ち上げる例とか紹介されてるじゃん。" userName="motorest" createdAt="2025/05/29 08:49:20" color="">}}




{{<matomeQuote body="” 長時間プロセスや5秒以上かかるスクリプト以外なら全部、って言いたいね。<br>CLIスクリプトとかアプリはサクサク動くべきだよ、ウェブサイトやアプリが開くのが遅いのがダメなのと同じ。<br>遅いスクリプトだと気が散って、結局hackernews見ちゃうってわけ。<br>いくつか例を挙げるなら<br>ショートカットキーでウィンドウをリサイズ/位置調整。一瞬じゃないと耐えられない。<br>ある条件でターミナルを開く。待たされるとイライラする。" userName="jbverschoor" createdAt="2025/05/29 10:27:28" color="#ff5733">}}




{{<matomeQuote body="” 長時間プロセスや5秒以上かかるスクリプト以外なら全部、って言いたいね。”<br>それ、妥当なシナリオじゃないと思うんだよね。dotnet run file.csは使い捨ての実行に向いてるし、仮にスタートアップが最適化できないとしても（そんな大きな仮定ありえないけどさ）、この機能でビルドしてスタンドアロンバイナリを作れること見落としてない？<br>だから何が問題なのさ？" userName="motorest" createdAt="2025/05/29 11:09:40" color="#45d325">}}




{{<matomeQuote body="”Great, but unfortunately, even when compiled, the startup overhead is about half a second, which makes it unsuitable for many applications”<br>じゃあなんでpythonはこういう用途でこんなに人気なの？" userName="high_na_euv" createdAt="2025/05/29 11:53:08" color="">}}




{{<matomeQuote body="この機能（パス）にはたくさんの最適化を追加する予定だよ。今回のプレビューの目的は、”dotnet run app.cs”っていう機能を使えるようにすることだったんだ。<br>スタートアップ最適化みたいなことは近いうちに対応する予定だよ。" userName="jaredpar" createdAt="2025/05/29 15:00:31" color="#785bff">}}




{{<matomeQuote body="でも、そうじゃないんだな。AOTじゃなくて、まだJITモードで動いてるみたいだね。<br>僕がswift-sccを作ったのもそれが理由なんだよ（インタプリタかコンパイルかっていう問題、本質的には同じこと）。" userName="jbverschoor" createdAt="2025/05/29 11:45:54" color="#785bff">}}




{{<matomeQuote body="マジかよ。10年以上前にMicrosoftは.NET frameworkのスタートアップ最適化を大々的に宣伝してたんだぜ。<br>当時のC#コマンドラインアプリはいつも0.5秒以上かかってたんだよ。それがイライラしてね。Microsoftの改善後は同じコードが0.2秒になったんだ。まだ遅いのは感じたけど、すごい改善だった。これ、2009年に買った安物のノートPCでの話だよ。<br>今の.NETが違うランタイムを使ってるのはわかるけど、最新のハイエンドノートPCでこんなに遅いなんて、驚きだね。" userName="masfuerte" createdAt="2025/05/29 12:59:56" color="#785bff">}}




{{<matomeQuote body="俺のマシンだとPythonスクリプトは10ミリ秒もかからずに立ち上がって終わるぜ。" userName="ptx" createdAt="2025/05/29 13:05:57" color="">}}




{{<matomeQuote body="＞ いや、違うよ。記事を読んでみろって。使い道について，”ファイルベースのアプリが複雑になったり、単にプロジェクトベースのアプリで提供される追加機能が欲しい場合”ってハッキリ書いてあるぞ。" userName="motorest" createdAt="2025/05/29 11:57:11" color="#38d3d3">}}




{{<matomeQuote body="依存関係をインストールする場合でも？だってそれがdotnet runがやる事だろ" userName="high_na_euv" createdAt="2025/05/29 13:14:47" color="">}}




{{<matomeQuote body="これ毎回再コンパイルするの？入力のハッシュでバイナリをキャッシュするのって簡単だろ？最初の実行は1秒以下で、その後は即座に再実行できるならまあいいかな。" userName="alkonaut" createdAt="2025/05/29 07:38:29" color="#ff5733">}}




{{<matomeQuote body="＞ 仮説上のコールドスタート時間ね。.NETや.NET Coreに関する長年の不満だよ。2017年のGithub issue： https://github.com/dotnet/core/issues/1060 2018年のGithub issue： https://github.com/dotnet/core/issues/1968 何年も前からみんな文句言ったり、質問したり、書いたりしてる： https://duckduckgo.com/?t=ffab&q=cold+start+.NET.&ia=web 今日のこのスレッドでもだ。なんで存在しないって否定するんだよ？" userName="jodrellblank" createdAt="2025/05/29 14:47:38" color="#ff5733">}}




{{<matomeQuote body="これ、まだ初期プレビュー版だよ。いくつか見たプレゼンで彼らは起動速度を認めてて、スピードアップに取り組んでるって言ってたぜ。" userName="rprouse" createdAt="2025/05/29 11:41:09" color="#ff5c5c">}}




{{<matomeQuote body="俺はDebian arm64コンテナで動かしてるけど、安定して500ミリ秒かかるな。キャッシュは使ってるみたいだけどどこかは不明。明示的コンパイルと比較してみるよ。でもさ、JITでVM動かしてるのが問題。Swiftはネイティブコードだ。全然違う。dotnetもAOTコンパイルすればいいのに。なんで最初から入れなかったんだろ。" userName="jbverschoor" createdAt="2025/05/29 11:43:51" color="#785bff">}}




{{<matomeQuote body="複雑さは問題じゃない。シンプルなHelloWorldの例だってそうなんだ。catとかlsとかcdとかgrepとかmkdirとか，全部が500ミリ秒かかるって想像してみてくれよ。electronみたいなもんだ。マジで必要ないんだ。" userName="jbverschoor" createdAt="2025/05/29 13:41:43" color="#ff5733">}}




{{<matomeQuote body="うん，どうしようもないね，grepでさえコールドスタートで苦労してるくらいだ．" userName="GoblinSlayer" createdAt="2025/05/29 15:28:09" color="">}}




{{<matomeQuote body="ちょっと話は逸れるけど，Windows PowershellをPS6にしたらスクリプト実行に1秒くらいかかって，5.1に戻したよ。マジうざい。一回実行だと起動時間が大事なのにPowershellは悪くなった。結局cmd.exeで.batファイルに落ち着いた。chatGPTが何でも書いてくれるし。" userName="bmacho" createdAt="2025/05/29 12:40:26" color="">}}




{{<matomeQuote body="俺もWindows 11でオーバーヘッドあるの確認したよ（Console.WriteLineだけの単純なコードなのに）。＞ Measure-Command { dotnet run run.cs }やると、最初の実行は2500msくらい、連続実行でも1300msくらいだった。記事の0．5秒よりずっと遅いね。" userName="andix" createdAt="2025/05/29 19:05:01" color="#45d325">}}




{{<matomeQuote body="あんまりdotnet界隈には詳しくないんだよね。昔BSDの頃のベータ版以来かな。でもスクリプト動かせて、パッケージも扱えるのは良いね。シンプルが一番。コンパイル済みバイナリをキャッシュしてるのに、起動時間がそんなに変わらないのはちょっと意外だったよ。" userName="jbverschoor" createdAt="2025/05/29 16:09:13" color="">}}




{{<matomeQuote body="もしかしたら、．net runtimeをメモリに常駐させて高速化してるのかもしれないね。昔のVisual Basicもそうだったよ。昨日Norton UtilitiesでPCチェックしたら、新しいサービス”．net runtime”ってのが動いてたんだ。俺開発者だから、ツール起動を助けるためだけかもしれないけど。" userName="opendomain" createdAt="2025/05/29 11:48:44" color="#785bff">}}




{{<matomeQuote body="dotnetってスクリプト実行するたびに依存関係を全部インストールし直すの？記事で引用されてた0．5秒の起動オーバーヘッドって、依存関係インストールは含まれてないと思ったんだけど。Pythonだと標準ライブラリだけで依存関係なしにたくさんスクリプト書けるし、俺はPythonスクリプトでサードパーティ使うことほとんどないんだ。" userName="ptx" createdAt="2025/05/29 13:31:51" color="#ff5c5c">}}




{{<matomeQuote body="JITでVMの上で動いてるからSwiftとは違うって話だけど、JITだけじゃないよ。必要ならR2RでpreJITもできるし、NativeAOTでプリコンパイルも、Monoで完全に解釈実行もできると思う。追記：問題はdotnet CLI自体にあるみたい。”dotnet help”も表示に0．5秒かかるし。今までCLIはそんな頻繁に使うものじゃなかったからね。DLLを直接実行する時は、CLIアプリを読み込まずに必要なコードだけ動かすから速いんじゃないかな。" userName="Kuinox" createdAt="2025/05/29 12:21:04" color="#785bff">}}




{{<matomeQuote body="起動時間を改善するために何してるかドキュメント見つからなかったから、Issue立ててみたら返信あったよ。このリンク見てみて：https://github.com/dotnet/sdk/issues/49197" userName="Kuinox" createdAt="2025/05/30 01:00:14" color="#ff33a1">}}




{{<matomeQuote body="これは今のところプレビュー機能だよ。埋め込み動画でも、最適化されてないしプロダクションシナリオ向けじゃないって言ってた。11月の最終リリースに向けて、フィードバック集めるために早い段階でプレビューとしてリリースしてるんだ。" userName="doomroot13" createdAt="2025/05/29 14:04:46" color="#ff33a1">}}




{{<matomeQuote body="俺のM2 Airだとこうだったよ：キャッシュありで508ms，”--no-cache”だと1090ms。でも他の人も言ってるように、これの最適化はかなり優先度高いみたいだね…" userName="utf_8x" createdAt="2025/05/29 20:27:09" color="#ff5733">}}




{{<matomeQuote body="その人（コメント9220の人）はWindowsじゃないよ。他の誰かも指摘してたみたいに、多分Apple特有の”何か”が色々関係してる可能性が高いね。" userName="toyg" createdAt="2025/05/29 13:55:57" color="">}}




{{<matomeQuote body="経験上、Windows Defenderはコンパイラが嫌いね。俺のデカいC++プロジェクト動かす時、DefenderがCPUの少なくとも60%食うんだ。関係するファイル，ディレクトリ，プロセス全部例外設定してもダメだったよ。Task managerには出ないけど、process explorerで見るとカーネルプロセスが原因なのが明らかだよ。" userName="mystified5016" createdAt="2025/05/30 04:31:03" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ねえ、Dotnetって10か11で完全にインタプリタモードになるらしいじゃん？それって、今回みたいなdotnet run app.csに使われるのかなあ？気になるね。<br>https://github.com/dotnet/runtime/issues/112748" userName="bencyoung" createdAt="2025/05/29 11:06:06" color="#ff33a1">}}




{{<matomeQuote body="CSXとかVBXの取り組みについて、全然言及してないのが残念なんだよね．あとさ、C# Language Runtimeの賢明な判断とやらで、F#がスクリプトで依存関係を参照する方法と互換性がないアプローチにしちゃったのもどうかと思うな．<br>https://ttu.github.io/dotnet-script/<br>https://learn.microsoft.com/en-us/dotnet/fsharp/tools/fsharp..." userName="pjmlp" createdAt="2025/05/29 07:59:09" color="">}}




{{<matomeQuote body="＞CSXとかVBXの頑張りに全然触れてないのが残念だなあ．<br>いやいや、他の取り組みもちゃんと認めてるよ．ほら、この記事見てみて．<br>https://devblogs.microsoft.com/dotnet/announcing-dotnet-run-..." userName="HumanOstrich" createdAt="2025/05/29 15:00:13" color="#38d3d3">}}




{{<matomeQuote body="BUILDのトークではそんなの全く覚えてないんだけどな．あれって元々のブログ記事にあったの？それとも、後でみんなが文句言ったから追記された感じ？" userName="pjmlp" createdAt="2025/05/29 21:19:00" color="">}}




{{<matomeQuote body="多分、みんなの反応見てから追加されたんだと思うよ．ソースはこれね：<br>https://bsky.app/profile/davidfowl.com/post/3lq3zfjo6gk2d" userName="sedatk" createdAt="2025/05/29 23:57:25" color="#ff5c5c">}}




{{<matomeQuote body="互換性がないってどういう意味？もし文法のことなら、それは分かりやすさのためにわざと変えてるんだよ．それにC#の新しいスクリプト方言は作りたくないから、他のファイルを”インポート”するなんてことはできないの（C#の仕組み的にね）．" userName="janjones" createdAt="2025/05/29 08:11:23" color="#ff5733">}}




{{<matomeQuote body="えー、おかしいじゃん．Dotnet interactiveだと、F#の構文でC#のNuGet参照をもう使ってたじゃんか．NuGet自体もこの構文を”Script ＆ Interactive”ってラベル付けてるし．<br>https://github.com/dotnet/interactive/blob/main/docs/nuget-o...<br>これって新しい方言作っちゃったってことだよね？" userName="debugnik" createdAt="2025/05/29 12:58:14" color="#45d325">}}




{{<matomeQuote body="Dotnet interactiveはC#のスクリプト方言を使ってるんだよ．でも、ファイルベースのアプリは標準のC#を目指してるんだ．そうすれば、いつでも簡単にプロジェクトに変換できるでしょ？" userName="janjones" createdAt="2025/05/30 04:43:34" color="#45d325">}}




{{<matomeQuote body="なんで標準C#なのに、インポートディレクティブだけスクリプト方言からそんなに違う形にしたの？これの説明がないんだよ．`:package ＜pkg＞`って、`#r ”nuget: ＜pkg＞”`よりそんなにずっと良いの？（それが properly arguedなら良いけど！）この新しい構文を他のDotnetに採用させる努力とか、懸念の共有とかあったの？<br>あとさ、C#以外の言語ってdotnet runでサポートされてる？MSBuild SDKsがこれ使うための仕組みってドキュメント化されてるの？F#のdotnet watchがしょっちゅう壊れるの見ると、されてない気がするんだよね．" userName="debugnik" createdAt="2025/05/30 10:01:30" color="#ff5c5c">}}




{{<matomeQuote body="アセンブリ参照はメインの使い道じゃないから、今はnugetだけサポートしてるんだよ。#rは昔の構文だし分かりにくいからね。" userName="janjones" createdAt="2025/05/29 08:19:22" color="#38d3d3">}}




{{<matomeQuote body="みんな言うように、.net interactiveで使える#rが使えないのは変だよ。オプションで#rを使えるようにしてほしいな。<br>ファイルをプロジェクトみたいに扱ってるなら、他の.csファイルへの参照みたいなもんでしょ？だから他のファイルやプロジェクトを参照できるような仕組みがあるといいな。" userName="Wolfspirit" createdAt="2025/05/29 14:09:05" color="#ff5733">}}




{{<matomeQuote body="他のプロジェクトの参照は今のところ対象外だよ（シンプルにするため）。全部の機能が必要なら、ファイルベースのを普通のプロジェクトにすればできるよ。" userName="janjones" createdAt="2025/05/30 04:46:01" color="#ff33a1">}}




{{<matomeQuote body="反対だよ。こういう決定がCLRを「C#専用」みたいにしちゃってるんだ。本来はもっと広く使えるように共通のアプローチがあったのに。VBやF#でも同じようにできるんじゃないの？" userName="pjmlp" createdAt="2025/05/29 12:31:25" color="">}}




{{<matomeQuote body="F#とC#はそもそも違う言語だから、全く同じ機能を持たせる意味はないと思うな。F#にはもうスクリプト機能があるしね。VBは追加できるかもしれないけど、可能性は低いかも。" userName="janjones" createdAt="2025/05/30 05:10:49" color="">}}




{{<matomeQuote body="要するに、ちょっとした使い捨てスクリプトだと、アセンブリ参照が一番手軽で欲しい時があるんだよ。コンパイル済みのアプリの中のメソッドを呼びたい時とかね。" userName="int_19h" createdAt="2025/05/29 21:21:12" color="#ff33a1">}}




{{<matomeQuote body="janjonesさん、チームでF#をもっと真剣に扱うように言ってよ。.netの一流言語であるべきだよ。C#がsum typesとか入れて、F#と互換性がなくなったらどうしようって思うと怖いな。全体的に、F#を軽視しすぎだよ。Pythonよりずっとすごくて、機械学習とかスクリプトでは最高になれるのに、MSにはそういうビジョンを持った人がいないみたいだね。" userName="exceptione" createdAt="2025/05/29 13:49:49" color="">}}




{{<matomeQuote body="「Pythonよりすごいのに...」って言うけどさ、PythonがMLで選ばれてるってことは、技術的な優位性なんて関係ないってことだよ。より良い言語がないことが問題だったんじゃなくて、F#を技術的に良くしてもMLで選ばれるようにはならなかったってことだよ。" userName="electroly" createdAt="2025/05/29 14:20:21" color="#45d325">}}




{{<matomeQuote body="そうだね。でもさ、MSは自社エコシステムなら影響力使えるはずだよ。データ処理やAIのサービスも野心もあるんだし。.netと統合したいなら準備はできてるはず。あとはビジョンだけだね。" userName="exceptione" createdAt="2025/05/29 14:51:53" color="">}}




{{<matomeQuote body="BUILDより前の週にあったMicrosoftのレイオフまで、MicrosoftはCPythonのパフォーマンス改善を後押ししてた会社の一つだったんだよ。だから俺がいつも言ってるのは、.NETチームが新しい世代に普及しないって不満を言うなら、まず自分たちの雇用主をみるべきだってこと。" userName="pjmlp" createdAt="2025/05/29 21:23:13" color="">}}




{{<matomeQuote body="＞まず自分たちの雇用主をみるべきだってこと。<br>ほんとそれ。すごく見栄えの悪いパターンだよね。なんでみんなPythonのパフォーマンスみたいなもう終わった話をまだしてるのか、全然わかんない。" userName="exceptione" createdAt="2025/05/30 07:24:04" color="">}}




{{<matomeQuote body="shebangと一緒に使うのを積極的に推進してるのは面白いね。結構魅力的だと思うよ。Goはモジュールより前はこういうやり方でめっちゃうまくいってたし、Ubuntuもこんな風に使ってたと思う。でもGoの作者はこういうスクリプト言語的な使い方には反対してたんだよね。" userName="donatj" createdAt="2025/05/29 13:02:09" color="">}}




{{<matomeQuote body="昔、.NETの会社で働いてたんだけど、なんでか自動化スクリプトをbashで書いてたんだよね。長期でメンテできるスキルも（正直、最初からまともに書くスキルも）全然なかったのに。なんでC#でツールを作らなかったのか、全然理解できなかったな。たぶん今回のこれで、もっと現実的なアプローチに見えるようになるかもね。" userName="flmontpetit" createdAt="2025/05/29 14:05:57" color="#ff5c5c">}}




{{<matomeQuote body="「shebang」と「hashbang」の使い分けが、地理的・年代的にどうなってるのか興味あるな。俺が大学時代から90年代前半～2000年代にかけて南部で過ごした時は、普通「hashbang」って呼ばれてた。shebangって言葉を聞いたのはC#が出てきてからだね。それより前にもあったのは知ってるけど、それまで聞いたことなかったんだ。" userName="Meph504" createdAt="2025/05/29 17:59:52" color="">}}




{{<matomeQuote body="Bashはそこにもうあるツールだろ。それは使う理由としてすごくいいんだよ。Dotnetはそれに比べて依存関係が多くて重い。" userName="psyclobe" createdAt="2025/05/29 14:08:20" color="">}}




{{<matomeQuote body="俺は90年代後半にUS東海岸でUnixのシステム管理者だったけど、shellやperlのスクリプトを書くときはshebangって呼んでたな。" userName="cheschire" createdAt="2025/05/29 18:04:00" color="">}}




{{<matomeQuote body="いつも面白いと思ってたんだけど、C#みたいなシャープ記号を含む呼び方って変だよね。だってあれシャープ記号（♯）じゃなくてハッシュ記号（#）じゃん。どれも#ハッシュ記号を使ってるのに、シャープって呼ぶのはいつもおかしいと思ってたよ。まぁC-Hashって言うのも言いにくいけどさ。Hash Tagみたいにハッシュって正確に使われてるところもあるのに、他ではそうじゃないのも面白いね。" userName="Meph504" createdAt="2025/05/29 18:15:03" color="">}}




{{<matomeQuote body="Powershell使えばいいじゃん。ちょっと癖はあるけど、スクリプトにはなかなか良いプラットフォームだよ。" userName="JamesSwift" createdAt="2025/05/29 14:14:50" color="">}}




{{<matomeQuote body="＞Bashはそこにもうあるツールだろ。それは使う理由としてすごくいいんだよ。<br>もし君がdotnet開発の会社なら、dotnetも自動化が必要な場所に「そこにもうある」可能性がかなり高いよ。それに、君のチームのスキルセットとしても「そこにもうある」ツールなんだしね。" userName="dragonwriter" createdAt="2025/05/29 14:40:06" color="">}}




{{<matomeQuote body="2010年にインドの人と会ったんだけど、C#のこと「シー・パウンド」って言ってたんだ。こっちはびっくりしたけど、相手もこっちの反応にびっくりしてたよ。どうもその発音が流行って、その人の周り（もしかしてインド全体？）ではそれが正しいと思われてたみたい。インドでは電話の#キーが「ポンドキー」って呼ばれてるのが始まりだろうね。きっと外国人のYoutubeとかで発音を聞いたことなかったんだろうな。今もそう呼んでるかは知らないけど。" userName="Arnavion" createdAt="2025/05/29 18:34:49" color="">}}




{{<matomeQuote body="PowerShellで超イライラするのは、モジュール配布モデルが全然ないことだよ。逆にC#スクリプトなら、NuGetが箱から出してすぐに使えるんだ。" userName="moomin" createdAt="2025/05/29 16:38:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="主要なOSに一貫したPowerShellの環境を入れるのはちょー簡単だよ。Bashはそうじゃないけどね。" userName="jayd16" createdAt="2025/05/29 18:15:51" color="">}}




{{<matomeQuote body="俺はもうベテランだよ。dotnet開発の世界には何十年もいるけど、今でもbash（Git Bash）使ってる。いいとこ：シンタックスと慣れてるシェルコマンドが使えること。ダメなとこ：Bashスクリプトは保守するのが簡単じゃないこと。" userName="senthil_rajasek" createdAt="2025/05/29 15:54:53" color="#45d325">}}




{{<matomeQuote body="ベテランじゃないけど、dotnetは3年、bashは10年以上やってる。bashのメンテナンスが簡単じゃないってのには同意だな。bashがいつもどこにでもあるって話はすぐ無理が出てくるよ。たとえbash+awk+grepだけに絞っても、違うbashのバージョンとかプラットフォーム（mac<br>win<br>linux）で同じように動かないんだ。俺の今は、一番得意な言語でプログラム作って、いろんな環境向けにコンパイルして、それをあちこちのシステムで動かすやり方。最初の手間は一回だけだし、後々ラクになるよ。" userName="gofreddygo" createdAt="2025/05/29 16:42:12" color="#45d325">}}




{{<matomeQuote body="#記号も似たようなもんだね。俺はpound signって呼ぶけど、hashって呼ぶ人もいるんだ。" userName="xeromal" createdAt="2025/05/29 20:10:49" color="">}}




{{<matomeQuote body="POSIXに合わせて書けば、ずっとポータブルになるよ。POSIXの外のことをやるなら、Perlとか別のを使うのが一番いいと思うね。" userName="spauldo" createdAt="2025/05/29 22:24:20" color="#ff5733">}}




{{<matomeQuote body="C#を1.0の頃から使ってて、最初は自分も「C pound」って呼んでたんだ。アメリカ育ちだけど、#記号はほぼ電話でしか知らなかったからね。「電話して、ポンド123」みたいに。リリースは20年以上前（マジで年取った…）、当時は動画や音声がネットになくて、高速ネットも56Kモデムだった時代。C#に触れたのは多分、本とかMSDNマガジンだったんだ。" userName="hermitdev" createdAt="2025/05/29 20:25:43" color="#45d325">}}




{{<matomeQuote body="PowerShellGetモジュール[1]に何が足りないの？5.1以降の全部のバージョンに最初から入ってるじゃん（5.1自体は制限あるけど）。[1]: https://learn.microsoft.com/en-us/powershell/module/powershe..." userName="accoil" createdAt="2025/05/29 17:05:57" color="#ff5c5c">}}




{{<matomeQuote body="そうだね。C#が最初に発表された時、Slashdotで「cash」って読むんだよって冗談言ったんだ。会社（Microsoftのことかな？）考えたらぴったりだと思ったんだけどさ。残念ながら、ジョークはウケなかったよ。" userName="cheschire" createdAt="2025/05/29 18:30:15" color="">}}




{{<matomeQuote body="USとかCanadaだと電話の”#”キーって”pound key”って呼ばれるんだよね。今でもそうだよ。留守電とか自動音声システムにかけると”press ’pound’”って言われることがあるし、これはかなり標準的だと思うな。でも”press hash”とか”press the ’number’ key”なんて言われたことないし（”number”だとあいまいだもんね）<br>UnixのShebangの歴史については、Wikipediaに詳しいのが載ってるよ。僕がSVR3とかSunOS 4を使ってた1990年頃から”#!/bin/sh”は使ってたんだけど、当時は特に名前はなかった気がするんだよね。”hash-bang”って言葉が広まるまではさ。kernelがmagic(5)で解釈してるって知ってただけ。<br>電話の”pound”から”#”をそう呼びそうになったり、C64 BASICとかシェルのコメント文字で口に出しそうになったりもしたけど、違うなって思ってたな。<br>”the whole shebang”ってアメリカの南北戦争時代からの慣用句で、僕のおじいちゃんおばあちゃん世代でも使ってたから馴染みはあったんだ。Ricky Martinの曲は別に気にしてなかったけどね。<br>WikipediaによるとLarry Wallが1989年に使い始めたみたい。僕は90年代半ばPerlにどハマりしてて、Perlが一番のスクリプト言語だったんだ。もし誰かがそんな名前をつけたり広めたりしたとしたら、それはJust Another Perl Hackerだろうね。<br>同じように、”bang”はUUCPの”bang path”から来たり、C言語の”not”の意味だったりしたから、”#!/bin/sh”は僕にとって、たぶん10年くらい名前がなかったんだ。<br>そういえば、viとかvimには”！”コマンドがあるよね。テキストをシェルコマンドに通したり、他のプログラムから”shell out”したりできるやつ。これがhash-bangのセマンティクスに合うんだけど、どっちが先なんだろう？" userName="AStonesThrow" createdAt="2025/05/29 20:20:59" color="#ff5c5c">}}




{{<matomeQuote body="…PowerShellもあるよ！<br>それに、結局のところ、POSIX準拠でポータブルなのがどれで、そうじゃないのがどれかを知ってるかってことだよね。たいていのものは「あと一歩」って感じで動かないんだ。" userName="jayd16" createdAt="2025/05/30 00:05:29" color="">}}




{{<matomeQuote body="まあね、でもPythonもそうだよね。コマンド一つで他の言語もたくさん使えるし。<br>そこにあるからって、木を切るのにチェーンソーじゃなくて包丁を使おうなんて勧めないでしょ？<br>Bashは落とし穴（footguns）がいっぱいあるし、構文もかなり変わってる。ジュニア開発者がスクリプトをちょこっといじって上手くいくような言語じゃないんだ。ShellCheckみたいなリンターは必須と言っていいくらい。<br>もし君のチームでコードの99．9％がC#なんだとしたら、手作業でBashスクリプトをいくつかメンテするのはたぶんReally Bad Ideaだよ。全部C#に書き換えちゃった方がみんな楽できるって。" userName="crote" createdAt="2025/05/29 20:05:57" color="#45d325">}}




{{<matomeQuote body="＞ Bashが常にそこにあるっていう議論はすぐに崩壊するよ。<br>Bash+awk+grepに限定したとしても、違うBashのフレーバーとかプラットフォーム間で一貫して動かないし。<br>IMO、だからPerlが発明されたんだと思うし、Perlを使えばいいんだよ。Bashはポータブルじゃないし、そんなに安全でもない。もしコマンドをいくつか使うだけなら、Bashを使う理由は本当にないよ。僕の中では、Bashのユースケースは色んなUnix utilsを使うことだけど、そうするとそのutilsがポータブルじゃないんだ。Perlはどこでも動くし一貫性があるから、この点では本当に素晴らしいね。" userName="const_cast" createdAt="2025/05/29 19:36:42" color="#45d325">}}




{{<matomeQuote body="僕の中では、古いスウェーデン語の”timber yard”（材木置き場）を訳してる感じだな。他のものとインタラクトするのを難しくするため、かな。子供の頃は”fence”（フェンス）とも呼んでたよ。" userName="bjoli" createdAt="2025/05/30 06:08:13" color="">}}




{{<matomeQuote body="これはRustのcargoでもできるよ。まだ安定版じゃないけどね：https://rust-lang.github.io/rfcs/3424-cargo-script.html" userName="sureglymop" createdAt="2025/05/29 16:49:46" color="#45d325">}}




{{<matomeQuote body="BashスクリプトがPowerShellスクリプトで簡単に置き換えられる可能性は低いね。<br>複雑なスクリプトには複雑なスクリプト言語が必要だっていう真っ当な議論はあるけど、PowerShellを選ぶにはちゃんとした理由がいるはずだよ。<br>たいてい、Windows以外では、その理由がないんだ。<br>それはBashと同じ”ティア”だよ。そこにあるから使うんだけど、難しいことには他のものに乗り換える。Bashと同じ理由だね。<br>僕（PowerShellはたくさん書いたよ）が「うわー、このBashスクリプト／makefile、大きすぎて複雑すぎるから、PowerShellで書き直そう！」って思うような現実的な状況はないな。" userName="noodletheworld" createdAt="2025/05/29 15:43:02" color="#ff5733">}}




{{<matomeQuote body="今でも、たいていのUnixシェルのエラーハンドリングはマジでダメだね。バックグラウンドコマンド、パイプ、コマンド置換、関数、if/while条件、サブシェルとか、エラーに関しちゃ全部”特殊ケース”なんだ。マシにはできるけど、あらゆる失敗の仕方をハンドリングしようとすればするほど、コードはめちゃくちゃ複雑になるし、Bourne lineageの言語は人間工学的にそれに全く向いてないんだ。<br>PowerShellはこの問題を指摘して、より良くしたって点では全く正しかったと思うよ。try-catchスタイルの例外処理はそんなに好きじゃないけど。Falseはエラー条件じゃないし、例外は型付きだし、メッセージもあるしね。<br>BashとかからPowerShellに来た時の問題は、開発者がUnixシェルを一目見て悲鳴を上げて逃げ出したってことだね。だから1970年代後半からBourne shellにあった機能がごっそり抜けてるし、非自明なことの構文は劇的に違うんだ。UTF-16として扱ったり、PowerShell以外のコマンドの扱いが下手だったりする他の問題も、最近は良くなってきたけどね。" userName="kbolino" createdAt="2025/05/29 19:43:32" color="#ff5733">}}




{{<matomeQuote body="知識があるってのが俺たちが金を稼いでる理由だし、そうじゃなきゃみんな最低賃金だろ。それに、Bash以外のシェルスクリプトのリソースもたくさんあるし、BSDsとか商用Unixシステムで働きたいなら学ぶといいよ。<br>Unix上のPowerShellって、Windows上のPerlみたいなもんだな。動くけど、なんか変で異質な感じ。でも、.NETも同じこと言えるかもね。" userName="spauldo" createdAt="2025/05/30 03:09:23" color="">}}




{{<matomeQuote body="モジュールがあるだけじゃなくて、PowerShellにもNuGetみたいなリポジトリがいくつかあるんだよ。" userName="pjmlp" createdAt="2025/05/30 04:19:21" color="">}}




{{<matomeQuote body="＞Dotnetは依存関係が多くてまるで豚だって比較だけどさ。全部の依存関係と一緒に準備するのに6分くらい？「もうある」状態とDotnetの差は6分。この差が重要になるケースなんて想像しにくいね。" userName="Ray20" createdAt="2025/05/29 18:43:00" color="#38d3d3">}}




{{<matomeQuote body="Bashの構文は普通で、多くのsysadminは慣れてるよ。.NetやGoはデバッグが大変だし、nugetとかネット接続とか面倒が多いから触りたくないね。あと、開発チームがbashスクリプトを書くのは普通じゃないと思うよ、使う場面は限られてるんじゃないかな。<br>" userName="CoolCold" createdAt="2025/05/29 23:13:26" color="#785bff">}}




{{<matomeQuote body="これ、Kotlinにもあるんだよ。ファイル拡張子（*.main.kts）が重要で、そうしないと動かないみたいだけどね。Kotlin/JVMの機能にアクセスしたいちょっとしたスクリプトやプロトタイプ書くのにすごくいいよ。でも、小さなスクリプトにはやっぱりRubyが一番好きかな。外部プログラムを実行するときのバッククォートが驚くほど使いやすいんだ。" userName="occz" createdAt="2025/05/29 07:02:41" color="#ff5c5c">}}




{{<matomeQuote body="全部無くなるわけじゃないけど、将来もそんなに明るくないみたいだよ。" userName="carstenhag" createdAt="2025/05/29 15:25:32" color="">}}




{{<matomeQuote body="Java自体にも今、そういうのあると思うよ。" userName="bitwize" createdAt="2025/05/29 15:05:12" color="">}}




{{<matomeQuote body="そうだよ。java myfile.java って実行できるんだ。" userName="vips7L" createdAt="2025/05/29 19:12:45" color="">}}




{{<matomeQuote body="PowerShellの素晴らしい代替になりそうだね。PowerShellは究極のChatgpt言語だよ。良くも悪くもね。大抵は悪い方で、「書きっぱなし」のPowerShellスクリプトが色々な繋ぎやインフラを動かしてる結末になるんだ。" userName="pragmatic" createdAt="2025/05/29 05:15:42" color="">}}




{{<matomeQuote body="＞素晴らしいPowerShellの代替になりそうだって言うけど、PowerShell以上のものを置き換えられる可能性がありそうだね。.NETショップがPythonやシェルスクリプトなんかをわざわざ使う必要ある？スクリプトでASP.NET minimal APIを組めるならexpress.jsも要らなくない？" userName="motorest" createdAt="2025/05/29 06:13:39" color="#38d3d3">}}




{{<matomeQuote body="この理由で、20年以上PHPでシェルスクリプトを書いてるよ。C#ユーザーもこれに慣れたら、すごくメリットが大きいと思うな。ちょっと遅いって意見もあるけど、慣れた言語で標準ライブラリが使えるなら、起動時間が少し遅くても大したことないと思うよ。" userName="trog" createdAt="2025/05/29 08:54:12" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
