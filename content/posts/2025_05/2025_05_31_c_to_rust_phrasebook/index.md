+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'C++エンジニア必見 RustへのPhrasebook'
tags = ["C++", "Rust", "プログラミング", "移行", "開発"]
featureimage = 'thumbnails/light-orange2.jpg'
+++

> C++エンジニア必見 RustへのPhrasebook

引用元：[https://news.ycombinator.com/item?id=44140349](https://news.ycombinator.com/item?id=44140349)




{{<matomeQuote body="C++にはいろんなフレーバーがありすぎて、この記事のガイドはC++の現状をちゃんと伝えてないね。匿名enumみたいにメンバを持つenumとか、C++でもクラスやstructの中に匿名enumを置けば簡単に実装できるのに、無理って書いてあるし。Rustのモジュールについて話してるのに、モダンなツールでサポートされてるC++のモジュールを完全に無視してるのもおかしい。他にもテキストに引っかかる箇所があるよ（コンパイラフラグを追加するだけで同じ振る舞いができるのに。「Rustはデフォルトでそうだから」なんて言わないでくれよ、コードベース全体を書き直す必要なんてなくて、ビルドシステムにちょっとテキストを追加するだけで済むんだから、同等じゃない）。FFIについてもあまり触れてない。「それ用のクレートがあるか、なければ教えて」なんて言うけど、私の経験ではエキゾチックなもの（グラフィック関係とか、ffmpegとか）だとクレートはイマイチで、制限されたC++で書く方がよっぽど楽なんだ。Rustにはハッピーパスがあるし、少しずつ広がってるけど、Rustが存在するずっと前のC++の長い歴史は簡単に片付けられないんだ。" userName="jpc0" createdAt="2025/05/31 10:26:22" color="#785bff">}}




{{<matomeQuote body="1990年代からCやC++コミュニティにいる身としては、Rustも長い目で見ればこの現象（多様化）から逃れられないと思うな、エディションがあってもね。何十年もプロダクションコードで使われてトップ10に入った他の言語と同じだよ。いろんなバックグラウンドや思惑を持った人がエコシステムでどうコードを書くべきか自分の意見を持つようになるにつれて、「ハッピーパス」は曖昧になっていくだろうね。会社のITがアップグレードを拒否したり、業界の実装が増えたり、教師が最新情報を追うのをやめたり…。" userName="pjmlp" createdAt="2025/05/31 12:24:04" color="#45d325">}}




{{<matomeQuote body="この10年はそうでもないよ。むしろ収束してきてる感じ。" userName="leoh" createdAt="2025/05/31 17:09:58" color="">}}




{{<matomeQuote body="Asyncと非Asyncが今日の主な例だね。一方しかサポートしないライブラリもあれば、一つのライブラリに二つの使い方（実質的に二つのコードベース）があったりして、なかなか混ぜられない。将来どうなるかは、どんな機能が言語に追加されるか分からないからね。" userName="eslaught" createdAt="2025/05/31 22:57:49" color="">}}




{{<matomeQuote body="stdとnostdも大きな違いだよ。nostdの中は細かく断片化された世界だらけ。例えば、Linuxカーネルのエコシステムは独自のRustフレーバーを開発するだろうね、特にメモリモデルに関しては。古いLinuxディストリビューションだと、かなり古いコンパイラバージョンで、古い慣習に従ったコードが求められるだろうしね。C89みたいな状況になる人はいないと思うけど、その方向に進む可能性はある。サーバーとかモバイル/デスクトップアプリを開発するならもっと均質に見えるかもしれないけど、それ以外の分野もたくさんあるんだ。" userName="surajrmal" createdAt="2025/06/01 02:25:47" color="#ff5733">}}




{{<matomeQuote body="C++のモジュールって、もう本当にプロダクションで使えるの？最後に確認した時は、主要なコンパイラ全部でちゃんとサポートされてなかったけど。" userName="m-schuetz" createdAt="2025/05/31 13:22:53" color="">}}




{{<matomeQuote body="どんな要件かによるね。VC++かclangの最新版で、MSBuildかCMake/ninjaを使うなら、まあ使えるよ。趣味のコーディングではしばらく使ってるし、GitHubのC++プロジェクトを見てみて。node native modulesの場合、node-gypはおそらくサポートしないだろうけど、cmake.jsを使えばサポートされてるよ。" userName="pjmlp" createdAt="2025/05/31 16:09:47" color="">}}




{{<matomeQuote body="VSCodeではまだC++モジュールがサポートされてないんだよね。5年前からあるこのスレッドを見るといつもムカつくよ。<br>0: https://github.com/microsoft/vscode-cpptools/issues/6302" userName="Toritori12" createdAt="2025/05/31 11:48:07" color="#ff5c5c">}}




{{<matomeQuote body="ClangdってRustもいけるの？MicrosoftのC++ extensionより全然マシだし、しかもオープンソースなんだぜ！" userName="IshKebab" createdAt="2025/05/31 12:18:59" color="">}}




{{<matomeQuote body="ああ、それな。Clangd-19ならModulesはかなり良い感じだよ。import std;はマジで最先端だけどさ。tooling（clangd+cmake）は最新必須だけど、開発時だけだからアプデも楽。C++20コンパイラは当然いるけど。gcc-14, clangd 19, cmake 3.28で Modules使えてるし、clangd 19以外はUbuntu 24.04に普通にある。" userName="jpc0" createdAt="2025/05/31 15:30:28" color="#ff33a1">}}




{{<matomeQuote body="ModulesだとVisual StudioとCLionが今んとこ一番使いやすいかな。Visual Studioはもっと良くできそうだけど、EDGの優先順位が違うみたい。VSCodeはC/C++にはそんなに良くないと思う。" userName="pjmlp" createdAt="2025/05/31 12:26:04" color="">}}




{{<matomeQuote body="俺はVSCode派だな、Visual Studioが遅すぎてイライラするから。例えば、VSCodeのファイルを開く画面はすぐに見つかるのに、Visual StudioのCtrl+,は数秒かかるし、ファイル名と内容の検索がごちゃ混ぜになるんだよ。ファイルだけ探したいのにさ。" userName="m-schuetz" createdAt="2025/05/31 13:19:36" color="">}}




{{<matomeQuote body="DPack（無料）に使えるファイルブラウザあるよ。俺は今Visual Assist（有料）使ってるけど、これも持ってる。どっちもほぼ即座にポップアップするんだ。両方ともextension marketplaceから手に入るぜ。" userName="tom_" createdAt="2025/05/31 18:57:39" color="#785bff">}}




{{<matomeQuote body="俺も同じ意見だよ。そういう“ちょっとした”遅延がマジで嫌なんだ。" userName="Toritori12" createdAt="2025/05/31 15:52:13" color="">}}




{{<matomeQuote body="＞ Visual Studio (Ctrl+,) は数秒かかるし、ファイルとファイル内容の検索がごちゃ混ぜになるんだ、ファイルだけ探したいのにさ。＜<br>これマジで嫌いなんだよ。最近のバージョンでマジ酷くなったから、デバッグ以外はもうVSCode使うようになったくらい。こんな基本機能がなんでダメになるのか分かんないわ。" userName="NotCamelCase" createdAt="2025/05/31 15:27:28" color="">}}




{{<matomeQuote body="Ctrl+, の後にf filenameってやればファイルだけ出るよ。俺がVSCode使うのは、Visual Studioに無いPowershell, Rust, Azure toolingとかのプラグイン欲しいからと、Next.jsみたいなのはどうせブラウザみたいなエディタでいいじゃんって時だけ。パフォーマンスでエディタ選んだことはないな。" userName="pjmlp" createdAt="2025/05/31 16:03:33" color="">}}




{{<matomeQuote body="それでファイル見つかるのは分かってるよ…でも数秒後なんだろ。VSCodeはすぐ出るのに。この機能マジでよく使うから、Visual Studioにとってはかなり致命的。両方開いてるけど、Visual Studioは基本的にコンパイル押すのと、たまにデバッグする時だけ使ってる感じ。" userName="m-schuetz" createdAt="2025/05/31 16:26:15" color="">}}




{{<matomeQuote body="知らんけど、IDEを遅くしてるプラグインとか確認した方がいいかもね。Resharperとかは入れない方がいいよ。" userName="pjmlp" createdAt="2025/05/31 16:35:05" color="">}}




{{<matomeQuote body="プラグインはゼロなのにVisual Studioがクソ遅いんだけど、JavaScript製のVS Codeにすら負けてるってマジ？" userName="m-schuetz" createdAt="2025/05/31 20:31:54" color="">}}




{{<matomeQuote body="俺のPC、めっちゃハイスペックなんだぜ？ PCIe 5 SSDにRyzen 7950、メモリ128GBだよ。これで遅いってことは、絶対Visual Studioの問題だって。他のコメント見てみろよ、みんな同じこと言ってるし、VS Codeは一瞬で表示するからね。俺が使ってきたどのシステムでも、遅いのはVisual Studioだけだ。" userName="m-schuetz" createdAt="2025/06/01 07:40:42" color="">}}




{{<matomeQuote body="記事でC++のメンバー付きenumをクラス内匿名enumでやるってあったけど、それだと全インスタンスが全フィールド持つんじゃない？ Rustのenumとは全然違うと思うんだけど、どうなの？" userName="dwattttt" createdAt="2025/06/01 01:50:37" color="#ff5c5c">}}




{{<matomeQuote body="RustのenumはTagged Unionで、C++だとstd::variantがそれに当たるんだよ。matchみたいな便利なツールはないけど、使い方はほぼ同じでしょ。" userName="jpc0" createdAt="2025/06/05 15:17:20" color="#45d325">}}




{{<matomeQuote body="他の言語の書き方を押し付けるのがよくある落とし穴だよ。C++なのにinit()関数で初期化するC脳みたいにね。C++ではコンストラクタでやるのが普通で、オブジェクトは「確保と初期化をまとめてやる」って考え方。この記事の「フレーズブック」はC++思考をRustに持ち込むけど、逆にRustでは「それC++的な間違ったやり方だよ」ってフレーズって何？" userName="EliRivers" createdAt="2025/05/31 08:44:52" color="#785bff">}}




{{<matomeQuote body="initメソッドのパターンにも理由はあるんだ。C++のコンストラクタは値を返せないし、エラーを伝えるには例外しかない。でも例外嫌がるコードベースも多いから、静的メソッドで構築するパターンが増えてて、これってちょっとRustっぽいよね。" userName="atq2119" createdAt="2025/05/31 12:14:00" color="#45d325">}}




{{<matomeQuote body="静的メソッドもいいけど、フリー関数の方がもっと良いよ。静的メソッドだとCTADが使えないからね。例えば<br> vector{1, 2, 3}; ／／ deduces vector＜int＞<br>みたいに書きたいなら、static memberだと<br> vector＜int＞::init(1, 2, 3);<br>になるけど、free functionなら<br> make_vector(1, 2, 3); ／／ returns vector＜int＞<br>って書けていい感じ。" userName="Conscat" createdAt="2025/05/31 15:34:11" color="#45d325">}}




{{<matomeQuote body="話してるメソッドが静的ならRustみたいに良いけど、そうじゃないなら完全に設計ミスだね。コンストラクタ呼んだ後、他のメンバー関数を呼ぶ前にオブジェクトが使い物にならないか、最悪壊れてる状態になるからね。よくあるアンチパターンだよ。" userName="legobmw99" createdAt="2025/05/31 12:51:08" color="#ff33a1">}}




{{<matomeQuote body="二段階初期化には、オブジェクトをconstexprにできてconstinitの対象にできるって利点もあるんだ。あと、construct_atなんてのもあるよ。" userName="TuxSH" createdAt="2025/05/31 13:14:32" color="">}}




{{<matomeQuote body="std::vectorにconstexprなデフォルトコンストラクタがないわけじゃないんだけど、定数コンテキストでデータ初期化できないなら役に立たないからってだけなんだよね。例えば、constinit vector＜int＞ v;はあんまり意味ない。でもconstinit vector＜int＞ v(16, 1);（1を16個で埋める）ならもっと使えるはず。これができない理由は関数を分割しても解決しないだろうね。<br><br>EDIT：C++20のvectorは最初の例はもうできるんだわ。ただあんまり役に立たないから使われないだけ。https://godbolt.org/z/avY4M9oMK" userName="Conscat" createdAt="2025/05/31 15:41:10" color="#ff5733">}}




{{<matomeQuote body="そうそう、コンストラクタで失敗する可能性があるならファクトリ関数がいるよね。C++だとコンストラクタは意外な場所で呼ばれることがあるんだ。例えば、書いてるコードから遠い場所でコピーコンストラクタが失敗するとか。もしC++でコンストラクタが失敗するのを許したら、エラー伝播の制御フローが面倒で入り組んじゃうんだよ。だからコンストラクタでの失敗には例外が唯一の方法ってわけ。" userName="fooker" createdAt="2025/05/31 22:07:15" color="">}}




{{<matomeQuote body="まあ、あなたが言ってるinitメソッドを使うパターンにも理由はちゃんとあるよ。他の理由を無視すると、俺が見た中で一番多いのは、基本的にコンストラクタがない言語で考える癖がついた人がC++書いてるから、って理由だね。良い理由じゃないけどさ。" userName="EliRivers" createdAt="2025/05/31 14:13:10" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="イディオマティックなC++で例外を使わずに、オブジェクトの失敗する可能性のあるコンストラクタってどう対応するの？" userName="Mond_" createdAt="2025/05/31 14:30:12" color="">}}




{{<matomeQuote body="標準的なイディオムとしては、オブジェクトが無効だって示すセンチネル状態を持たせることだね。自明じゃないデストラクタを持つオブジェクトとか、ムーブ元から読まれる可能性がある場合（一部のシステムコードでは有効な振る舞い）、C++のムーブは非破壊的だからどっちみちセンチネル状態が必要なんだ。C++は遅延破棄を色々な問題を解決する標準ツールとして使ってるよ。" userName="jandrewrogers" createdAt="2025/05/31 16:25:19" color="#ff33a1">}}




{{<matomeQuote body="＞ ムーブ元から読まれる可能性がある場合（一部システムコードでは有効）<br>std::moveを標準ライブラリ型に適用した場合、オブジェクトは”有効だけど不特定な状態”になるって[1]に書いてあるよ。もしオブジェクトを無効状態（invariantが壊れてる状態）にしてるなら、それはイディオマティックなC++じゃないね。<br>[1] https://en.cppreference.com/w/cpp/utility/move.html" userName="jjmarr" createdAt="2025/05/31 18:28:40" color="">}}




{{<matomeQuote body="ここで言ってる”無効”ってのは、意味のある値を持ってないっていうセマンティックな意味合いで使ってるんだ。構造的には無効じゃないよ。" userName="jandrewrogers" createdAt="2025/05/31 18:38:36" color="">}}




{{<matomeQuote body="それは、成功したコンストラクタの後でもメソッド呼び出しの結果として同じような無効状態に入りうるオブジェクト（ファイルやストリームとか）には理にかなってるね。でもそういう性質がないオブジェクトの場合、デザインの一種の悪さを別の、でも結局同じような悪さに交換してるだけだね。" userName="atq2119" createdAt="2025/05/31 22:57:41" color="">}}




{{<matomeQuote body="じゃあ、その型のオブジェクトが存在すること自体が、状態が有効であることの静的な証明にはならないってこと？" userName="sunshowers" createdAt="2025/05/31 17:00:16" color="">}}




{{<matomeQuote body="そう（無効はセマンティックな意味だよ）。低レベルシステムでは理論的にも静的証明が無理な場合があり、実行時チェックが必要。プロセス空間はDMAなどで外部変更されうる。C++コンパイラは通常静的証明可能と仮定。これに対処するため、C++は証明不可能を示す機能（例：std::launder）を追加。データベースカーネルは典型例で、オブジェクトの位置と状態は実行時に動的解決が必要なんだ。" userName="jandrewrogers" createdAt="2025/05/31 18:34:11" color="#ff5c5c">}}




{{<matomeQuote body="システムコードでは静的証明が無理なケースが多いのは完全に同意だよ。だからこそ、静的証明が可能な場所でそれを諦めちゃうのは、さらにタチが悪いと思うね。" userName="sunshowers" createdAt="2025/05/31 19:18:16" color="">}}




{{<matomeQuote body="その通りだね、「有効だけど未規定な状態」っていうのも起こりうるし、よくあることだよ。" userName="steveklabnik" createdAt="2025/05/31 17:29:30" color="">}}




{{<matomeQuote body="RustとGoが良い判断をした点の一つは、コンストラクタがないことだよ。C#だとこれがすごくウザいんだよね、特に非同期操作が必要な型を構築したい時とか。こういう時は、通常、プライベートなコンストラクタとstatic publicメソッドを使って型を作るしかないんだけどね。" userName="metaltyphoon" createdAt="2025/05/31 14:55:07" color="#38d3d3">}}




{{<matomeQuote body="RustとGoには型変換演算子（コンストラクタじゃなくても）がないから、型システムをスクリプトみたいに扱うのは実質不可能だね。これらの言語の数値ライブラリがめちゃくちゃ使いにくいのは、主にこれが原因だよ。" userName="Conscat" createdAt="2025/05/31 15:36:22" color="">}}




{{<matomeQuote body="このコメント（10665）が全然理解できないな。Rustにはまさにこの目的のための’as’演算子があるだけじゃなく、失敗しない変換用のFrom、Intoと、失敗する可能性のある変換用のTryFrom、TryIntoっていうトレイト一式もあるんだぜ。" userName="tialaramex" createdAt="2025/06/01 12:51:55" color="#ff5733">}}




{{<matomeQuote body="asはinfix operatorだから、異なる型間の関係を示すために暗黙的に呼ばれることは絶対にないんだよ。" userName="Conscat" createdAt="2025/06/02 01:38:35" color="#ff5733">}}




{{<matomeQuote body="イディオマティックなC++は例外を使うもんだ。標準は言語機能を無効にすることを認めてないよ。言語機能を無効にする闇の道を選ぶ奴は、コンパイラ固有の拡張を使って非イディオマティックなC++を書いてるんだ。" userName="pjmlp" createdAt="2025/05/31 16:06:06" color="">}}




{{<matomeQuote body="組織がC++例外を使うのをためらう、何か良い理由を思いつく？" userName="sunshowers" createdAt="2025/05/31 17:08:33" color="">}}




{{<matomeQuote body="C++例外をためらう理由？ レガシーコード、C++98以前のコードとか、Orthodox C++の人たちの「遅い／肥大化」って主張（大抵はプロファイルしてないけど）。組込みでは昔のPCよりマシなのにね。例外使わない言語で静的リンクしてサイズ3倍になっても「肥大化じゃない」とか、矛盾してるよな。" userName="pjmlp" createdAt="2025/06/01 07:02:17" color="#45d325">}}




{{<matomeQuote body="もう一つの理由として、C++のmutexは通常、例外を投げてもpoisonしないってことがあると思うよ。" userName="sunshowers" createdAt="2025/06/01 17:58:41" color="#38d3d3">}}




{{<matomeQuote body="それ、結構大胆な発言だね。<br>だって、デカいC++コードベースの多くは例外使ってないじゃん？<br>C++コンパイラの中にも使ってないのあるし。" userName="atq2119" createdAt="2025/05/31 23:00:28" color="">}}




{{<matomeQuote body="大胆な発言はいいね！<br>もしLLVMとかChromeの話なら、GoogleのC++スタイルガイドが特別優れてるわけじゃないのは確か。<br>そういう主張するなら、スタイルガイドが例外についてどう言ってるかちゃんと知っとくべきだね？<br>『新規ならいいけど、既存コードへの影響がデカいから使ってない。GoogleのC++コードのほとんどは例外対応してないから、導入は難しい』って書いてあるんだよ。<br>これって、最初から失敗してて、デカすぎて今さら変えられないってこと。<br>じゃあ、C++のバイブル『C++ Core Guidelines』はどうかって？<br>Eセクションに例外のベストプラクティスについてアドバイスがあるよ。" userName="pjmlp" createdAt="2025/06/01 06:51:43" color="#ff5c5c">}}




{{<matomeQuote body="たぶん、C++デベロッパーが慣用的じゃないRustを書く方が、危ないC++を書き続けるより全然マシ、ってことじゃない？<br>unsafeを使ったりボローチェッカー無視したりしない限り、安全にはなるだろうし。<br>完璧を目指しすぎないで、って感じ？<br>慣用的なRustって定義もそんなに厳しくないし。<br>Clippyが簡単なとこは教えてくれるし、それ以外はあんまり気にしなくていいと思う。<br>トレイトとか『正しく』使おうとすると、かえってクソ複雑になったりするしね。" userName="hardwaregeek" createdAt="2025/05/31 15:32:24" color="#45d325">}}




{{<matomeQuote body="この記事みたいなのは、C++とRustの似てるとこ、違うとこを話し合うのに良いね。<br>まぁ、どの言語にもスタイルはいっぱいあるから、それも踏まえて、って感じだけど。" userName="acje" createdAt="2025/05/31 09:12:39" color="">}}




{{<matomeQuote body="マジで一番ヤバい落とし穴は、RustのリファレンスをC++のポインタと同じって思っちゃうこと。<br>ポインタとして実装されてるけど、役割は一時的で（よく排他的に）静的にわかるスコープだけのアクセスを与えることだから、C++のポインタやリファレンスの一部にしか当てはまらないんだ。<br>C++でポインタはコピー避けるためだけど、Rustのリファレンスはデータをそのまま持たないため。<br>この目的が違うと、『does not live long enough』ってエラー地獄にハマるんだよね。" userName="pornel" createdAt="2025/05/31 14:52:54" color="#ff5c5c">}}




{{<matomeQuote body="さっきのコメントの人、リファレンスは静的なスコープに限られるって言ってたけど、そうじゃない場合もあるよ。<br>同じライフタイムなら、ヒープデータの参照をvectorに入れられる。<br>ツリーイテレータをvectorでスタックとして作る時とかね。<br>これは静的なスコープを超える話。<br>ただ、ミュータブルなイテレータだと話は別。<br>ミュータブルな参照はユニークじゃないといけないから、ミュータブルなポインタのスタックが必要で、デリファレンスする時はunsafeコードになる。<br>それはちょっと辛い制限かも。" userName="trealira" createdAt="2025/05/31 17:47:14" color="#38d3d3">}}




{{<matomeQuote body="C++の構文とか意味はC++のイディオム向けに作られてるけど、Rustは違うんだよね。<br>RustってMLファミリーの言語に近くて、C++とかOOPとはちょっと違うから、C++のイディオムを『真似る』必要があるんだ。<br>でもこれ逆も言えて、RustのEnumのパターンマッチとか、C++だとすっごく長くて使いにくいコードになるし。" userName="pornel" createdAt="2025/05/31 15:06:17" color="#ff5c5c">}}




{{<matomeQuote body="ってことは、この記事のアプローチって、C++ユーザーにRustで変なイディオムを使わせることになるの？" userName="amelius" createdAt="2025/05/31 15:18:45" color="">}}




{{<matomeQuote body="「間違い」って言うのは言い過ぎかな。C++プログラマー向けにC++の考え方で書いてるんだから、コードは全然悪くないと思うよ。ゼロからRustを教える記事じゃないしね。" userName="pornel" createdAt="2025/05/31 15:49:35" color="">}}




{{<matomeQuote body="C++やってる身としては、最初はこれでも全然OK。いろんな言語やってると、ifとかforとか基礎の説明はマジでだるいんだよね。これは「C++erがrustcに潰されない方法」って感じ。まずこれでRustの書き方を覚えて、それから「Rustらしい考え方」に進めるのが良いんだと思う。" userName="mrlongroots" createdAt="2025/05/31 20:28:05" color="">}}




{{<matomeQuote body="このやり方で慣れてきたら、早めにRustのリンター「clippy」を使う習慣をつけるといいよ。「cargo clippy」で実行できる。clippyはRustらしいコードが好きで、非イディオマティックな部分を提案してくれる。機械コードは同じでも、人間にとって読みやすいのが大事だからね。人間みたいに気の利いたレビューはできないけど、タダだし、習ってる途中で気まずくならないのがいいところ。" userName="tialaramex" createdAt="2025/06/01 13:23:22" color="#ff5733">}}




{{<matomeQuote body="C++のコード、わざと冗長にしてない？普通は「class Person { int age = 0; };」みたいに書くでしょ。Rustのstructでもデフォルト値がこんなに簡単に書けたら楽なのにね。" userName="modulus1" createdAt="2025/05/31 18:32:10" color="">}}




{{<matomeQuote body="それ、もうすぐできるようになるらしいよ！承認されたRFCがあって、安定化も近いみたい。詳しくはここ見てみて！ https://github.com/rust-lang/rust/issues/132162" userName="steveklabnik" createdAt="2025/05/31 22:53:03" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="traitsとclassesの話、大事な違いを無視してるよ。Rustのtraitにはデータを持てないし、親traitのデータにもアクセスできないんだ。RustでOOP真似ようとするとすぐ混乱するよ。C++をRustで書こうとするならマジ問題。所有権の話も全くないしね。記事の「APIの2バージョン」の話も変じゃない？普通はResultに関数呼んで.unwrap()とか.expect()するだけだよ。RustとC++の違いは、書き方よりデータの繋げ方や所有権設計。C++でも難しいけど、実行時まで気づかないだけ。" userName="Animats" createdAt="2025/05/31 18:02:05" color="#785bff">}}




{{<matomeQuote body="記事の元の意図とは逆だけど、これ良いね。Rustが色々と改善してる点を学んで、それをC++書くときに活かせたらもっと良くなるかも。" userName="npalli" createdAt="2025/05/31 09:05:50" color="">}}




{{<matomeQuote body="Rustを少し学んで、これからもC++メインで書くって人たちが、この記事でC++に役立つ知識を得たってよく言ってるのを見かけるよ。C++委員会の提案書でも、「Rustはこれができてる」って言うのは、Pythonみたいな言語だけじゃなくて、C++みたいな「ちゃんとした」言語でも実現可能だって示すのに使われてるんだ。C++のstringにcontainsが入った時も、例としてRustが挙げられてたよ。" userName="tialaramex" createdAt="2025/05/31 11:33:21" color="#ff5733">}}




{{<matomeQuote body="これ見たんだけど、C++を知ってること前提みたいだなー。少なくとも両方の言語に同じくらい時間かけてるから、C++のやばいとこ（foot guns）は教えてくれないね。" userName="Tyr42" createdAt="2025/05/31 10:29:20" color="">}}




{{<matomeQuote body="確かに「C++を知ってる人」目線で書かれてるね。でも「知ってる」には（少なくとも）2つの意味合いがあると思うんだ。全く知らない人には役立たずだし、ベースは知ってるけどモダンC++を知らない人には、Rust部分は無視してC++のモダン化の参考になるかも。どっちにしても、C++のやばいとこは警告してくれないね（Rustを勧める以外は ;-））。" userName="skrishnamurthi" createdAt="2025/05/31 11:28:52" color="#38d3d3">}}




{{<matomeQuote body="この記事にあるパターンがモダンC++って言ってるけど、C++11以降って意味でしょ。それもう14年前だよ。今時C++17に対応してないツールチェイン探す方が難しいって。Debian old-stableとか古ーいRedHat向けにビルドしてる不幸な人もいるだろうけど、そういう場合はモダンなやり方してないって分かってるはずだし、それなりの理由があるんだろうしね。" userName="jpc0" createdAt="2025/05/31 15:36:32" color="">}}




{{<matomeQuote body="あと議論したいんだけど、多くの人がC++11のおかげだと思ってる「モダン」C++機能って、C++ARMからC++03の時代にはもう可能だったんだよ。ただ多くの人が注意してなかったか、ファイル名を.cppとかに変えてただけ。MFCみたいな低レベルなやり方と比べて、CSet++, OWL, VCLがいかに人間工学的に優れてたか、みたいな話と同じでさ。" userName="pjmlp" createdAt="2025/05/31 16:15:59" color="">}}




{{<matomeQuote body="これってチュートリアルとか学習ガイドって感じじゃないな。C++とRustの対応パターンをざっくり調べられるルックアップテーブルだね。学習を始めるにはあんまり向いてないかも。" userName="Mond_" createdAt="2025/05/31 14:32:49" color="">}}




{{<matomeQuote body="最高。これマジで良いじゃん。" userName="leoh" createdAt="2025/05/31 05:29:21" color="">}}




{{<matomeQuote body="しばらく見てなかったんだけど、DrysdaleのEffective Rustは本当に素晴らしい本だったよ。似たような読者層向けだね。<br>https://www.lurklurk.org/effective-rust/" userName="gtani" createdAt="2025/06/01 17:57:43" color="#ff33a1">}}




{{<matomeQuote body="いいね、C++経験がないRust開発者にも役に立つよ。" userName="unvalley" createdAt="2025/06/01 14:29:17" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
