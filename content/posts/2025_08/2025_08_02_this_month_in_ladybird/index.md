+++
date = '2025-08-02T00:00:00'
months = '2025/08'
draft = false
title = 'Ladybirdブラウザ、今月の進捗！開発者必見の最新情報と貢献ガイド'
tags = ["ブラウザ", "C++", "Web開発", "オープンソース", "ソフトウェア開発"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Ladybirdブラウザ、今月の進捗！開発者必見の最新情報と貢献ガイド

引用元：[https://news.ycombinator.com/item?id=44765292](https://news.ycombinator.com/item?id=44765292)




{{<matomeQuote body="貢献の始め方ガイドだよ！: https://github.com/LadybirdBrowser/ladybird/tree/master/Docu...<br>最新のWeb Platform (WPT) テストはここ: https://wpt.fyi/results/?run_id=6292901677236224<br>質問があればDiscordに来てね: https://discord.gg/c8JEZkDvtY<br>自分でビルドして動かしてみよう（15〜20分かかるよ）。FirefoxやChromeと比べて何が問題か見つけて、直してPRを送ってね。Ladybirdのビルド方法はここだよ: https://github.com/LadybirdBrowser/ladybird/blob/master/Docu..." userName="net01" createdAt="2025/08/02 07:47:54" color="#785bff">}}




{{<matomeQuote body="これが学習を始める一番いい方法だよ。WPTテストを見て、そこに集中してみよう。Web Specも見てみて。Discordでどこを見ればいいか質問すれば、みんな喜んで助けてくれるはずさ！:)" userName="net01" createdAt="2025/08/02 08:07:50" color="">}}




{{<matomeQuote body="残念ながらC++は、業界がRustに移行しつつあるんだ。保守的な企業ですら、新しいプロジェクトにはRustを使ってるよ。ボトルネックはRust開発者の不足だね。C++を書くのはレガシーなコードベースのメンテナンスで雇われる確実な方法だよ。Ladybirdは例外的なプロジェクトだろうけど、就職したいならRustっていう新しいスキルを身につけるべきだね。Ladybirdに貢献してC++を学ぶのはプロジェクトに興味があればいいけど、キャリアのためには学ぶべきじゃない。" userName="its-kostya" createdAt="2025/08/02 10:44:09" color="#785bff">}}




{{<matomeQuote body="もしかしたら君は視野が狭いのかも。Rustは素晴らしいけど、C++はその分野ではまだ圧倒的だよ。今君が使ってるWebブラウザは？C++だ。使ってるOSは？おそらくCとC++の入り混じったものだろうね。ゲーム機やパソコンのゲームは？C++で書かれてるのが普通だよ。" userName="zarzavat" createdAt="2025/08/02 11:42:43" color="#ff5c5c">}}




{{<matomeQuote body="https://news.ycombinator.com/item?id=44768882" userName="its-kostya" createdAt="2025/08/02 16:38:28" color="">}}




{{<matomeQuote body="その人は新しいプロジェクトの話をしてたのに、なんで君はWebブラウザやOSの話をしてるの？" userName="andrepd" createdAt="2025/08/02 13:23:31" color="">}}




{{<matomeQuote body="新しいゲームはRustでは作られてないよ。Rustは必死に頑張ってるけど、全く進んでないね。" userName="Thaxll" createdAt="2025/08/02 13:38:47" color="">}}




{{<matomeQuote body="今、主要な新しいプロジェクトでC++を扱ってるんだ。僕らの場合は、高性能な2D GPUアクセラレーション描画アプリケーションで、C++と、長年の実績がある多くの確立されたライブラリこそが、唯一の選択肢なんだ。Rustは幅広い種類のアプリにとっては非現実的だよ。" userName="Wintamute" createdAt="2025/08/02 13:40:02" color="#785bff">}}




{{<matomeQuote body="Rust開発者が引っ張りだこって、君はどこに住んでるの？俺が見た感じ、Rustの求人って仮想通貨系のスタートアップがほとんどだよ。非仮想通貨系のRust求人は、Linux Kernel開発8年＋Rust3年とか、ネットワークドライバ開発5年＋Rust4年とか、めちゃくちゃニッチな専門家を求めてる会社ばっかり。仮想通貨系含めても、RustよりC++の仕事の方が圧倒的に多いと思うんだけど。" userName="ndiddy" createdAt="2025/08/02 12:55:43" color="">}}




{{<matomeQuote body="業界全体がRustに移行してるわけじゃないよ。ChromiumとかWindows Kernelみたいに、安全性が重要なコードとか、一部の状況で使われてるだけ。C++での開発をやめてRustに切り替わった主要なプロジェクトなんて、俺は知らないな。" userName="rs186" createdAt="2025/08/02 12:42:38" color="">}}




{{<matomeQuote body="組み込み系のプロジェクトでは今でもC言語が使われてるし、俺のいる場所じゃC++の需要もすごく高いよ。キャリアに関するアドバイスって、住んでる場所や業界にすごく左右されるよね。俺がこの仕事を始めた頃は、俺の街じゃNode.js開発者を雇う人なんてほとんどいなかったし。" userName="saidinesh5" createdAt="2025/08/02 11:03:30" color="">}}




{{<matomeQuote body="君と同じ世界に住んでみたいよ。詐欺みたいなスタートアップ以外、Rustの仕事なんて実質ゼロだもん。" userName="desdenova" createdAt="2025/08/02 11:51:00" color="">}}




{{<matomeQuote body="Rust開発者の不足がボトルネックだって言うけど、C++を書くのはレガシーコード保守の仕事に就く確実な方法だよ。この市場で本当に雇われやすくなりたいなら、両方学ぶべきだね。そうしないと、C++開発からRustへの移行なんて全く進まないだろうし。Ladybirdは例外で、他にもいくつか似たプロジェクトはあるだろうけど、雇われたいならRustという新しいスキルを身につけるべきだってね。あと、システムソフトウェアで見られるDSA問題を解くのにすごく経験があるって示すなら、RustコードでLeetcodeのハード問題の準備しなよって提案するよ。それから、LadybirdだけがOKで他はダメなのって、どうして？" userName="rvz" createdAt="2025/08/02 12:49:17" color="#ff5c5c">}}




{{<matomeQuote body="彼らが移行するならRustじゃなくてSwiftになる可能性が高いだろうね。" userName="xdfgh1112" createdAt="2025/08/02 11:21:10" color="">}}




{{<matomeQuote body="C++への文句は意味不明。現代のC++ならスマートポインタや`std::move`でメモリ安全も大丈夫だし、`std::auto`で型推論もできる。ラムダで関数型プログラミングもいける。エコシステムもツールも最高で、俺がやりたいことは全部C++でできるぜ。" userName="landdate" createdAt="2025/08/02 12:38:40" color="">}}




{{<matomeQuote body="「スマートポインタでメモリ安全は大丈夫」だって？とんでもない！`std::move`後もアクセスできるし、ローカル変数の参照を返したり、二重解放や未初期化変数を使うことだってできるんだ。毎日C++を書いてる俺からしたら、未だに問題だらけだよ、残念だけどね。" userName="lII1lIlI11ll" createdAt="2025/08/02 13:24:24" color="#45d325">}}




{{<matomeQuote body="毎日C++書いてるのに、ムーブされたオブジェクトが有効だって知らないのか？ローカル参照や未初期化変数なんて、マトモなコンパイラなら警告出すって。スマートポインタ使ってれば二重解放も心配ないし。結局、Rustだって`unsafe`使えば何でもできるんだから、言語がアホから守れる範囲なんて限られてるだろ。" userName="throwaway18373" createdAt="2025/08/02 15:47:19" color="">}}




{{<matomeQuote body="君の返信からダニング＝クルーガー効果が見え見えだぜ。「ムーブ済みオブジェクトが有効」なんて、STLでも未指定状態が多いんだ。カスタムコードならなおさらな。まともなコンパイラ？「No true Scotsman」論かよ。「ちゃんとメモリ管理してバグ避ければOK」って、それでC++の開発は上手くいったのか？<br> [0] https://wiki.sei.cmu.edu/confluence/display/cplusplus/EXP63-...<br> [1] https://stackoverflow.com/a/17735913" userName="lII1lIlI11ll" createdAt="2025/08/04 08:22:58" color="#785bff">}}




{{<matomeQuote body="モダンC++の問題はエコシステムだね。未だにレガシーC++ライブラリだらけで、`cmake`を使っていても、サードパーティライブラリの統合は摩擦が多いんだ。`cargo`みたいにスムーズなものはないしね。`Vcpkg`、`hunter`、`conan`、ベンダリングとかあるけどさ。Rustよりライブラリは多いけど、モダンC++ライブラリは少ない気がする。レガシーコードを混ぜると、初心者がメモリリークとか二重解放とかし放題だよ。" userName="saidinesh5" createdAt="2025/08/03 01:06:18" color="">}}




{{<matomeQuote body="いっぱいコメントあったからまとめて返信するわ。俺の主張への指摘や拡大解釈もあったけど、簡潔にしようとして雑な部分があったのは許してくれ。米国の卒業生ネットワークから得たデータだけど、政府契約が多い企業が新しい技術を採用するかが、その技術が長続きするかの試金石なんだ。仮想化やコンテナでそのパターンを見た。政府請負業者は保守的で、人材確保のために確立された技術を選ぶ傾向があった。でも、`Rust`はもう中長期プロジェクトの「高リスク」と見なされなくなったんだ。`Rust`開発者を育てたり、足りないライブラリを開発する余裕があるなら、`Rust`が選ばれるようになってきた。既存の安定したライブラリに依存する業界ではそうじゃないかもしれないけど、既存ライブラリの一部が`Rust`でリファクタリングされて並行して使われるケースもある。だから両方できるデベロッパーが有利かもね。あと、社内で`Rust`を学ぶ機会も増えてて、既存社員が`Rust`プロジェクトに移って、その穴を新しい`C++`デベロッパーで埋める戦術が一般的だ。`Rust`はシステムプログラマーやゼロトラストアプリケーションで需要があるぜ。" userName="its-kostya" createdAt="2025/08/02 16:23:48" color="#38d3d3">}}




{{<matomeQuote body="お前らマジですごいぜ。こんなご時世に新しいエンジンが登場するなんて、誰が想像した？しかも兆ドル企業が何億も投じることなく、小さなチームで成し遂げるとは！これ、俺の人生で見た中でも最高にヤバいことの一つだよ。" userName="pmkary" createdAt="2025/08/02 09:57:30" color="">}}




{{<matomeQuote body="「兆ドル企業が何億も注ぎ込むことなく、小さなチームで成し遂げるなんて誰が思った？」って？大規模ソフト開発チームで働いたことある奴なら誰でもそう思うだろ。そういう状況を経験したことある奴なら信じるぜ。コンピューティングの歴史は、巨大資金チームを少人数チームが打ち負かした例で溢れてるんだ。これは、仕事が与えられた時間とリソースいっぱいに広がる（`Parkinson’s Law`）からで、大企業はそれらがほぼ無限にあるからだよ。" userName="kloop" createdAt="2025/08/02 12:40:09" color="">}}




{{<matomeQuote body="個人的に好きなことをやってる人たちは、やらなきゃいけないからやってる人たち（大企業によくある）より、物事を早く進める傾向にあるよね。まさにその通り。" userName="badsectoracula" createdAt="2025/08/02 15:51:25" color="">}}




{{<matomeQuote body="ブラウザエンジン開発は、既知の目標に向かって開発できるし、テストスイートも充実してるから「簡単」って意味でも助けになるよ。ちょっとした改善が常にできてモチベーションも維持しやすいし、生産性も測りやすい。熟練したボランティアチームがこれを得意としてて、貢献者も集めやすいんだ。ブラウザエンジン開発は理想的だね。タスクの幅は広いけど、Ladybirdは成功できる。KDEでKHTMLを作ったときも、Mozillaのバグをエミュレートしてたんだ。貢献を検討してみて！" userName="sho_hn" createdAt="2025/08/02 17:15:52" color="#ff33a1">}}




{{<matomeQuote body="なるほどね。ドッグフーディングしやすいし、もし行き詰まってもBlink、WebKit、Geckoがどう実装してるか読めばいいんだもんね。" userName="01HNNWZ0MV43FF" createdAt="2025/08/03 00:50:48" color="#38d3d3">}}




{{<matomeQuote body="高リフレッシュレート対応が120Hz制限って変だね。高リフレッシュレートモニターで一番一般的なのは144Hzだし、もっと速いのもあるのに。144Hzモニターで120fpsのアニメーションを実行するとフレームが重複して、メリットの大部分が台無しになっちゃうよ。" userName="mrob" createdAt="2025/08/02 08:56:42" color="#785bff">}}




{{<matomeQuote body="最初、モバイル向けに120Hzディスプレイが多いから考慮したのかと思ったけど、Ladybirdは今んとこモバイルをサポートしてないみたいだね。<br>ウェブサイトがrequestAnimationFrameを使うと対応ハードウェアで最大120Hzでレンダリングされるようになった”って表現は、単に性能の問題だったのかも。60から120に変わったんだし、将来的に144とか240にもなるかもね。" userName="hyperbrainer" createdAt="2025/08/02 09:09:32" color="#ff33a1">}}




{{<matomeQuote body="これ、ニュースレターの書き方がちょっと間違ってるんだと思うよ。実際のコードでは、スクリーンのリフレッシュレートに合わせて設定されてるからね。" userName="trflynn89" createdAt="2025/08/02 15:16:40" color="#ff33a1">}}




{{<matomeQuote body="もしかして、実装した開発者が120Hzディスプレイしかテストに持ってなかったとか？" userName="m12k" createdAt="2025/08/02 09:55:58" color="">}}




{{<matomeQuote body="120Hzで動くモニターもあるし、ほとんどの144Hzモニターも120Hzに設定できるよ。それに、144Hzで120フレーム動かすことが、なんでそんなにメリットを打ち消すことになるの？ これらの数字が24の倍数に落ち着いたのは、それが理由なんだからさ。" userName="Melatonic" createdAt="2025/08/03 22:09:40" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="TwitterでAndreasが、今年のFUTOカンファレンスでのLadybird Browserに関する彼の基調講演が、このプロジェクトについて今一番よくわかる紹介になるかもって言ってるよ。https://www.youtube.com/watch?v=9YM7pDMLvr4" userName="samuell" createdAt="2025/08/02 07:56:53" color="#785bff">}}




{{<matomeQuote body="これ、数ヶ月前にYouTubeでたまたま見つけて観たよ。ブラウザ開発者じゃなくてもすごく良い話で、面白かった。プレゼンもうまいね。" userName="dewey" createdAt="2025/08/02 16:17:29" color="">}}




{{<matomeQuote body="大企業がウェブを独占するのを防ぐのに、このプロジェクトはすごく大事。Andreasもいいやつだし、謙虚そうだしね。" userName="samuell" createdAt="2025/08/02 07:53:21" color="#38d3d3">}}




{{<matomeQuote body="Andreasが良いやつで謙虚って、まさにその通りだね！彼の毎月のアップデート動画は見ててすごく落ち着くよ。" userName="Xaiph_Rahci" createdAt="2025/08/02 11:45:17" color="#38d3d3">}}




{{<matomeQuote body="その主張が本当なら、LadybirdはFirefoxみたいな企業製じゃないブラウザよりも、かなり大きな市場シェアが必要になるだろうね。" userName="charcircuit" createdAt="2025/08/02 15:35:17" color="#45d325">}}




{{<matomeQuote body="LLMを使って開発を加速してるのか気になるな。15年前ならブラウザを新規開発するなんて無謀だったけど、今は理にかなってる気がする。" userName="larodi" createdAt="2025/08/02 07:56:43" color="#38d3d3">}}




{{<matomeQuote body="それは熟練したプログラマーじゃないと無理だよ。平均的なプログラマーがCopilotを使ってブラウザを作ろうとしても、きっと失敗する。複雑すぎて全体設計と規律がめちゃくちゃ重要だからね。" userName="RadiozRadioz" createdAt="2025/08/02 08:05:15" color="#785bff">}}




{{<matomeQuote body="俺が言いたかったのはそういうことじゃないんだ。antirezは新人じゃないけどLLMアシストでコードを書いてる。なぜこんなにダウンボートされるんだ？intellisenseを使ってるか聞くのは違法なのか？人々がどうやって短期間で何千ものLOCをブートストラップするのか興味があるだけなのに。vibecodedなんて一言も言ってないぞ。" userName="larodi" createdAt="2025/08/02 20:43:12" color="">}}




{{<matomeQuote body="Ladybirdは425k LOCで、Chromiumは3.5m LOCだぞ。LLMを使って新しいブラウザを作るのはコンテキスト維持が難しいだろうね。AndreasはCopilotをかなり使うけど、基本的に一行ずつで使ってて、しょっちゅう disagreesして自分で書き直してからまたプロンプト出してる。つまり、彼はそれをただのすごいオートコンプリートとして使ってるだけだね。<br>https://www.youtube.com/watch?v=8mxubNQC5O8&t=3099s" userName="shakna" createdAt="2025/08/02 10:09:43" color="#45d325">}}




{{<matomeQuote body="すごいとかどうとか言っても、オートコンプリートはオートコンプリートだよ。もしそれがクラスや関数を一つずつオートコンプリートするとしても、それをHNで聞くのがそんなに不快なことなのか？" userName="larodi" createdAt="2025/08/02 20:44:55" color="">}}




{{<matomeQuote body="80年代からマクロ展開があったんだぞ。お前のIDEがオートコンプリートできないなら、それはIDEじゃなくてただのテキストエディタだろ。だから、実現可能性に全然影響しないし、聞く意味がない質問だよ。" userName="shakna" createdAt="2025/08/03 00:31:14" color="#ff5c5c">}}




{{<matomeQuote body="まさにその通りだよ、兄弟。年配のプログラマーたちがRAG＋LLMオートコンプリートをIDEと組み合わせるようになっているのに、一部の連中は高レベルなコードアシスタンスを使う人に怒ってるんだ。それはバカげてるし、すごく攻撃的だよ。" userName="larodi" createdAt="2025/08/03 06:52:20" color="#ff33a1">}}




{{<matomeQuote body="Chromiumは3500万行くらいのコードらしいよ。" userName="adamrt" createdAt="2025/08/02 16:28:55" color="">}}




{{<matomeQuote body="Ladybirdプロジェクトの多くの人はLLMを使ってないんだって。C++はなぜかAIと相性良くないからね、すごい仕様駆動なのにさ。" userName="net01" createdAt="2025/08/02 07:58:13" color="">}}




{{<matomeQuote body="でもAndreasはかなり使ってるよ。彼のコーディングVODs見たら、よくCopilotに頼ってるのがわかるはず。" userName="hyperbolablabla" createdAt="2025/08/02 08:02:33" color="">}}




{{<matomeQuote body="VODsは見てないけど、Copilotの使い方に興味あるな。ただの気の利いたオートコンプリート？それとも書いたコードのセカンドチェック？はたまたコードの大部分を生成してる？SerenityOSは「NIH症候群」が核だし、AIコード生成には懐疑的だろうと思ってた。でも最近CloudflareがAI生成ソフトをリリースした記事もあったし、Andreasの使い方も、キーストロークを減らしたり、生成されたコードのエラーを自分の経験で見つけたりする感じかもね。VODs見てみるわ。<br>SerenityOSプロジェクトについて: 「The SerenityOS project, which has a strong culture of writing everything from scratch.」 https://ladybird.org/#faq<br>Cloudflareの記事: https://news.ycombinator.com/item?id=44159166" userName="SpecialistK" createdAt="2025/08/02 09:11:03" color="#ff33a1">}}




{{<matomeQuote body="多くのコードはLLMなしで書かれたけど、今Ladybirdは独立したプロジェクトだから、NIH（自分で作る）志向はだいぶ薄れてるよ。今はサードパーティのコードもたくさん使ってる。彼らのミッションはChromeと競うことで、100%NIHであることじゃないんだ。" userName="xdfgh1112" createdAt="2025/08/02 11:23:36" color="#ff5c5c">}}




{{<matomeQuote body="「他のブラウザのコードなし」って、ブラウザだとほとんどのコードはゼロから書かれてるってことだよね？" userName="lttlrck" createdAt="2025/08/02 21:56:34" color="">}}




{{<matomeQuote body="元のプロジェクトは全部ゼロから作ってたよ。ビデオ/オーディオデコード、SSL、フォントレンダリングとか、コードの大部分がね。今も既存のブラウザコードは使ってないよ。ウェブ標準を独立して実装するのが重要な目標だから。実装するだけで標準のバグを見つけたこともあるんだ。" userName="xdfgh1112" createdAt="2025/08/02 23:53:10" color="#45d325">}}




{{<matomeQuote body="それって何にでも当てはまるコメントだね。見てよ、このスレッドでAIについて話してるのは君のサブスレッドだけじゃん。このスレッドはAIやLLMとは関係ないんだよ、ちゃんと理由があってね。" userName="therein" createdAt="2025/08/02 08:44:29" color="">}}




{{<matomeQuote body="お前ら酷評してるけど、この開発者はCopilotを開発動画でよく使ってるぞ。なんでそんなに皆騒いでるんだ？もちろん、彼はすごく、すごく熟練した開発者でブラウザの専門家だ。お前が示唆してるような適当なコーディングじゃなくて、LLMも開発に使ってるんだ。" userName="kome" createdAt="2025/08/02 09:54:45" color="">}}




{{<matomeQuote body="だって、テーマに深く関わってない俺たちからすれば、フロントページの半分以上がAIの話ばかりで十分うんざりなのに、AIと全く関係ない話題のコメント欄まで”でもLLMは？”みたいなコメントで溢れてたら、Hacker Newsの楽しさが多くの人にとって台無しになるんだよ。" userName="NoboruWataya" createdAt="2025/08/02 11:31:12" color="">}}




{{<matomeQuote body="MLを全部AIと評価したり、全ての条件構造を思考だとみなすなら別だけど、それは全然違うね。悪意を吐き出す前に、まずそれらを評価して数えてみたらどうだ？正直なところ、OpenAIが初めてGPTsをリリースした頃と比べて、Hacker Newsのフロントページに載るAI関連の記事ははるかに少ないよ。毎月何千もの論文が出て、何十ものスタートアップが途方もない評価額で立ち上がって、そのほとんどがKarmaとか影響力のためにここに投稿されてるのに。それに、確率的グラフィカルモデルによる知識表現が今や異端視されるなんて、一体いつからだ？MPEGとかMP3の時代からか？" userName="larodi" createdAt="2025/08/02 20:50:08" color="">}}




{{<matomeQuote body="今LLMが流行ってるからって、新しいブラウザを開発するのが良いアイデアかどうかとか、もっと実用的かってことには全く関係ないだろ。" userName="squigz" createdAt="2025/08/02 10:25:20" color="">}}




{{<matomeQuote body="驚くべきことに、関係あるんだよ。賢い開発者なら2025年には何らかのコードアシストやオートコンプリートを使ってるだろ。だから、今はオートコンプリートの知能の閾値について議論してるみたいで、本当に馬鹿げてるな。俺は25年コードを書いてきたけど、俺のコメントは適当なコーディングなんて一切示唆してない。俺は自分が何を話してるかちゃんと分かってるし、ここにいる他の多くの人もそうだ。" userName="larodi" createdAt="2025/08/02 20:47:29" color="">}}




{{<matomeQuote body="こんなに大勢の人が情熱を持って集まって、本当に信じてるものを協力して作り上げてるのを見るのは、すごく素晴らしいし心が温まるね。Ladybirdがメインブラウザとして使えるようになることを心から願ってるよ。" userName="Timwi" createdAt="2025/08/02 07:52:16" color="#785bff">}}




{{<matomeQuote body="自分でコンパイル（全部コンパイルするのに15〜20分かかる）してウェブサイトで試してみなよ。FirefoxとかChromeと比較して、どこがおかしいか見つけて直してPRを提出するんだ。<br>Ladybirdのビルド方法：<br>https://github.com/LadybirdBrowser/ladybird/blob/master/Docu..." userName="net01" createdAt="2025/08/02 07:54:58" color="#785bff">}}




{{<matomeQuote body="実際、友達がコンパイルして動かすのを見たし、いくつかのシンプルなウェブページで試して感動したよ！でも、自分でビルドしてPRを出すには二つの壁があるんだ。一つは、Windowsでの公式サポートがないから、まずWSLに慣れるかデュアルブート環境を整えないといけない。もう一つは、それが時代遅れで使えないC++で書かれてること。Rustとかを学ぶ良い機会になったらよかったんだけど、C++は精神衛生上危険だと分かってるから、手を出さないことにしてるんだ。" userName="Timwi" createdAt="2025/08/02 09:09:07" color="#ff5c5c">}}




{{<matomeQuote body="＞ 二つ目は、それが時代遅れで使えないC++で書かれてること。<br>おいおい、冗談だろ。自分が苦手って言うのに、もっとマシな言い方があるだろ。全部得意じゃなくても大丈夫なんだからさ。人のせいにするのはやめとけよ。" userName="skrebbel" createdAt="2025/08/02 10:37:24" color="">}}




{{<matomeQuote body="C++が得意なやつなんていないよ。俺もC++を書いたことがあるし、ある程度は使いこなしてるって感じたこともあったけど、正直あれはただの勘違いと傲慢さだったね。" userName="tormeh" createdAt="2025/08/02 11:10:45" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ブラウザの仕組みや、メンテナーの時間無駄にしないLadybirdでの適切なコードの書き方を理解するのに膨大な学習曲線があるのを忘れてない？この前試したけど、動くウェブサイトが見つからなかったよ。こんな大きくて複雑で、まだWIPなプロジェクトにどうやって貢献し始めるの？参入障壁が高すぎる。" userName="phito" createdAt="2025/08/02 08:34:02" color="">}}




{{<matomeQuote body="そう考えると、誰も何も得意じゃないってことになるよね。それはそうかもしれないけど、あんまり役に立つ考え方じゃないな。この何十年もの間、何百万人もの人がC++で意味のあるソフトウェアを作ってきた。どこにでもあるし、だいたいちゃんと動くよ。もちろん、C++が全てにおいてベストな選択ってわけじゃないけど、1995年と同じように2025年でも多くのことにとって妥当な選択肢だよ。" userName="apelapan" createdAt="2025/08/02 11:52:09" color="">}}




{{<matomeQuote body="ジュニアプログラマーのコードへの信頼度って、言語によって違うよね。C++だと一番低い部類に入るよ。もし何千人ものHN読者が急にLadybirdプロジェクトにすぐ貢献しようとして、10年以上かかるC++の学習を始めなきゃってなったら、あんまり役に立たないでしょ？" userName="SleepyMyroslav" createdAt="2025/08/02 12:37:24" color="">}}




{{<matomeQuote body="俺、C++はかなり得意だよ。すごくシンプルなテクニックを使って、過去15年間でバグを一つも書かずに済んでるんだ。" userName="desdenova" createdAt="2025/08/02 12:50:00" color="">}}




{{<matomeQuote body="そのシンプルなテクニックって、C++が得意なのに全然書かないってことだよね？" userName="whytevuhuni" createdAt="2025/08/02 15:03:42" color="">}}




{{<matomeQuote body="なんで口調にいちいち文句つけるの？それは役に立たないよ。親コメントは的を得てて、役に立つリソースにリンクしてたのに。みんなを信用して、良い意図だと考えようよ。" userName="newdee" createdAt="2025/08/02 15:34:53" color="">}}




{{<matomeQuote body="もし何千人ものプログラミング経験や知識がほとんどないジュニアが、同時にLadybirdのためにC++コードを学習しながら貢献し始めたら、それは変な状況になるね。だけど、CSのちゃんとした基礎や、少しプログラミング経験がある二、三人くらいがLadybirdを助けるためにC++を学ぶと決めたなら、かなりうまくいくと思うよ。" userName="apelapan" createdAt="2025/08/02 14:23:24" color="#ff5c5c">}}




{{<matomeQuote body="以前試した時はLadybirdブラウザで動くサイトが見つからなかったけど、昨日また試したらYouTubeみたいな複雑なページもたくさん開けたよ。自分でビルドするの、めっちゃ簡単でスムーズだからおすすめ。みんなもやってみてね。" userName="therein" createdAt="2025/08/02 08:45:51" color="#ff5733">}}




{{<matomeQuote body="Rustは好きだけど、Rust信者が他の言語を見下すのは嫌だな。俺たちRustコミュニティはそんなことしないよ。それはさておき、AndreasはC++を選んだ理由をハッキリ説明してる。彼には長年の経験があるんだ。WebはOOPの時代に進化して、C++は当時のOOP言語だからWebのOOPスタイルにピッタリ合うって言ってたよ。" userName="emilbratt" createdAt="2025/08/02 11:36:48" color="#38d3d3">}}




{{<matomeQuote body="どの世界にいるか知らないけど、C++は全然時代遅れじゃないよ。Rustがもっと普及してほしいのは山々だけど、まだそうなってないのが現状だね。" userName="rs186" createdAt="2025/08/02 13:38:31" color="">}}




{{<matomeQuote body="別に大きな新機能を実装しなくてもいいんだよ。俺のサイトでLadybirdをテストしたらレイアウトの不具合を見つけたんだけど、ブラウザ開発の経験なしで結構簡単に直せたんだ。" userName="paddim8" createdAt="2025/08/02 23:00:30" color="#ff5c5c">}}




{{<matomeQuote body="Rustとブラウザエンジニアリングに興味があるなら、Servoに貢献するっていう選択肢もあるよ。" userName="robin_reala" createdAt="2025/08/02 09:14:13" color="">}}




{{<matomeQuote body="やっほー！俺の表現がめっちゃ曖昧だったみたいでごめん。Rustの伝道者じゃないし、Rustのコードを書いたこともないし、機能も理論レベルでしか知らないんだ。C++を使う人の選択を批判したわけでもないよ。みんな好きなもの、使い慣れてるものを使えばいいんだ。俺はC++から距離を置く自分自身の個人的な経験と理由を説明しただけだよ。" userName="Timwi" createdAt="2025/08/08 01:51:42" color="">}}




{{<matomeQuote body="ほぼ動くサイトを選んで、完全に動くように修正してみるのはどうかな？" userName="saagarjha" createdAt="2025/08/02 08:59:25" color="">}}




{{<matomeQuote body="すごい！今すぐまた試してみるよ。俺も数ヶ月前に試したんだ。" userName="phito" createdAt="2025/08/02 09:52:15" color="">}}




{{<matomeQuote body="WSLの部分だけど、PowershellかCMDでコマンド一つ打って、Microsoft Storeからダウンロードするだけだよ。全然難しくないし、99％のケースではそれ以上何もないから。C++に関しては、LadybirdはすごくモダンなC++を使ってて、昔のC++より安全なコードをかなり書きやすくなってる。<br>安全な言語に世界が移行してほしいのは山々だけど、C++はどこにでもあるんだ。主要なブラウザは全部C++で書かれてるし、全然”使えない”言語じゃないよ（とはいえ、今からC++を学ぶのは確かに面白くないし、モダンなC++を使えるようなC++の求人市場も期待できないのは分かる）。<br>ウェブブラウザみたいなセキュリティリスクがあるプロジェクトが、C++じゃなくてRustを”ただ”使ってくれたらなって世界に住みたいけど、ブラウザを開発してる人たちに、自分たちの時間や上司の時間を割いてRustを学んでもらうように説得するのは大変だよ。Rustでオープンソースブラウザに貢献したいならServoがあるけど、Ladybirdと比べると開発スピードが遅いみたいだから、助けが必要そうだね。" userName="jeroenhd" createdAt="2025/08/02 12:29:06" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
