+++
date = '2025-09-21T00:00:00'
months = '2025/09'
draft = false
title = 'Sj.h C99でたった150行！驚きの超軽量JSONパースライブラリ'
tags = ["C言語", "JSON", "プログラミング", "ライブラリ", "軽量"]
featureimage = 'thumbnails/blue_green2.jpg'
+++

> Sj.h C99でたった150行！驚きの超軽量JSONパースライブラリ

引用元：[https://news.ycombinator.com/item?id=45324349](https://news.ycombinator.com/item?id=45324349)




{{<matomeQuote body="この著者の作品はANSI CかLuaの単一ファイルライブラリで、スコープが絞られてて使いやすい。ドキュメントも充実してて、フリーソフトウェアライセンスなんだって。log.c、microui、fe、microtar、cembed、ini、json.lua、lite、cmixer、uuid4とか色々あるみたいだよ。" userName="lioeters" createdAt="2025/09/21 17:26:23" color="#ff5733">}}




{{<matomeQuote body="それってオープンソースで、フリーソフトウェアじゃないよ。" userName="maldonad0" createdAt="2025/09/21 21:02:57" color="">}}




{{<matomeQuote body="ライセンスは違うこと言ってるよ。パブリックドメインより自由なものってないしね。" userName="tonypapousek" createdAt="2025/09/21 21:07:49" color="#ff33a1">}}




{{<matomeQuote body="一般的な企業のセキュリティ部門ってパブリックドメインのソフトウェアについてどう考えてるんだろう？そういうライセンス（またはライセンスなし）のソフトウェアを受け入れるのかな？" userName="SoKamil" createdAt="2025/09/21 21:18:37" color="#45d325">}}




{{<matomeQuote body="誰が気にするの？真面目な話、君の作品を使いたい企業がライセンスを受け入れるかどうかは、リヒテンシュタインの首相がアメリカの家の外壁の色を気に入るかどうかと一緒だよ。つまり、全然気にすることじゃないってこと。" userName="jen20" createdAt="2025/09/21 21:38:22" color="#ff5733">}}




{{<matomeQuote body="「フリーソフトウェア」より「オープンソース」の方が情報量が多い言葉だよ。全てのフリーソフトウェアがオープンソースってわけじゃないけど、全てのオープンソースソフトウェアは無料なんだ。追記：FSFの定義は知らなかったんだ。有料じゃないソフトウェアをフリーソフトウェアとして使ってたよ。" userName="tripplyons" createdAt="2025/09/21 21:17:27" color="#ff5c5c">}}




{{<matomeQuote body="‘フリーソフトウェア’と‘オープンソースソフトウェア’は（それぞれFSFとOSIの定義によって、実際にはそう使われるんだけど）定義が重なってるよ。このプロジェクトはUnlicenseを通してパブリックドメインでリリースされてて、これはフリーソフトウェアの’ライセンス’として認められるんだ。他の多くのプロジェクトはMIT/Expatライセンスを使ってて、これもフリーソフトウェアライセンスだよ。<br>https://www.gnu.org/philosophy/free-sw.html<br>https://opensource.org/osd" userName="F3nd0" createdAt="2025/09/21 21:25:48" color="#785bff">}}




{{<matomeQuote body="それって、みんなが使えるようにオープンソースソフトウェアを公開してるかどうかによるよね。もしそうじゃないなら、なんで公開してるの？使ってほしくないならGPLが良いし、使ってほしいならMITかBSDの方がずっといいよ。" userName="rerdavies" createdAt="2025/09/22 00:50:19" color="#785bff">}}




{{<matomeQuote body="君が探してるのは”Source Available”と”Open Source”（OSI承認ライセンス付き）っていう言葉だよ。”自由な（Free as in speech）のか、無料の（Free as in beer）なのか？”が君のスローガンだね。" userName="ramses0" createdAt="2025/09/21 21:35:56" color="#ff5c5c">}}




{{<matomeQuote body="GPLライセンスのソフトウェアだと「エボラみたいな自由」って感じだよね。空気や太陽の光みたいな自由はどこ行っちゃったの？" userName="rerdavies" createdAt="2025/09/22 00:54:51" color="">}}




{{<matomeQuote body="C言語プロジェクトでlog.cをよく使うよ！作者がこんなに多作だとは思わなかったな。log.cは本当にオススメ。必要な機能を簡単に追加できるからね。" userName="olivia-banks" createdAt="2025/09/22 00:36:43" color="">}}




{{<matomeQuote body="君は間違ってると思うよ。オープンソースとフリーソフトウェアは、どっちかがどっちかの部分集合じゃないんだ。OSIはオープンソースって認めても、FSFはフリーって認めないライセンスとか、逆もあるしね[1]。 massiveな重複はあるけど、根本的に別の定義って言うのが適切じゃないかな。<br>[1] https://spdx.org/licenses/" userName="F3nd0" createdAt="2025/09/21 21:31:22" color="#45d325">}}




{{<matomeQuote body="で、それがどうやってオープンソースライセンスの資格がないって言うの？俺が見る限り、定義を満たしてるように見えるんだけど。" userName="rerdavies" createdAt="2025/09/21 22:50:17" color="">}}




{{<matomeQuote body="SQLiteがパブリックドメインをライセンスに選んだことで、結構問題があったって聞いたよ。後悔してるらしい。国際的に理解が広まってない概念で、ソフトウェアの文脈での法的判例も少ないから、法務部門の懸念で採用が難しいチームもあったんだってさ。" userName="captbaritone" createdAt="2025/09/21 21:21:41" color="#785bff">}}




{{<matomeQuote body="GPLはみんなに使ってほしい時に使うもの。MITは、大企業がそれをenshittifiedなプロプライエタリソフトウェアに変えて、あなたに何も還元せずに利益を上げてもいい時に使うものだよ。" userName="xigoi" createdAt="2025/09/22 04:17:30" color="">}}




{{<matomeQuote body="俺もUnlicenseを使ってるよ。文字通り、持てる中で一番許諾的なライセンスだからね 笑" userName="typpilol" createdAt="2025/09/21 22:20:26" color="">}}




{{<matomeQuote body="「全てのフリーソフトウェアがオープンソースってわけじゃない」ってコメントだけど、それはどの”フリーソフトウェア”の定義を言ってるかによるね。FSFの定義では、フリーソフトウェアはオープンソースであることが必須なんだよ。" userName="manbash" createdAt="2025/09/21 21:31:16" color="#ff5c5c">}}




{{<matomeQuote body="それは、守るものが何もなかったからenshittifiedになっちゃったんだよ。" userName="a96" createdAt="2025/09/22 06:42:29" color="">}}




{{<matomeQuote body="例えが悪いね。もし彼らが本当に君の家の色を気にするなら、いくらでも手はあるだろう。だって、かなりの数のアメリカの大企業の税制や企業構造は、リヒテンシュタイン政府のルールに大きく依存してるんだからさ。" userName="_puk" createdAt="2025/09/21 21:51:37" color="">}}




{{<matomeQuote body="HOAや地方議会みたいに、良くも悪くも影響力を持つ人達がいるよね。でもリヒテンシュタイン政府にはそういうのがないって話。" userName="jen20" createdAt="2025/09/22 01:11:14" color="">}}




{{<matomeQuote body="反対意見として、僕はMITライセンスよりGPLやAGPLのコードを使いたいな。コピーレフトの哲学が好きだから。GPLはフリーソフトウェアであり続けたいって意思表示だし、MITは将来的にプロプライエタリ化されるリスクがある。だからGPLの方が信頼できるし、みんなのためになると思うよ。" userName="zelphirkalt" createdAt="2025/09/22 09:21:51" color="#ff5733">}}




{{<matomeQuote body="Linux、Git、GNUシステムは反例だよね。FreeBSDは毎日衰退してるし。一般の人々と企業の法務部は違うんだよ。" userName="jen20" createdAt="2025/09/22 01:10:09" color="">}}




{{<matomeQuote body="Unlicenseは単なるパブリックドメインじゃないよ。PDが認められなくても「コピー、変更、公開、使用、コンパイル、販売、配布」を許可するフォールバック条項があるんだ。SQLiteは著作権を放棄するだけだから、最初の文が駄目だとあまり役立たないかもね。" userName="shiomiru" createdAt="2025/09/21 23:11:21" color="#ff5733">}}




{{<matomeQuote body="「みんなに使われたくないならGPLがいい」って、それ笑っちゃうね。" userName="TZubiri" createdAt="2025/09/22 04:34:16" color="">}}




{{<matomeQuote body="オープンソースじゃないとは言ってないよ。問題はフリーライセンスかどうかだったんだ。「フリーソフトウェアじゃない」って言ってたけど、実際はそうだよ。F3nd0が言ったように、両方なんだよね。" userName="Cogito" createdAt="2025/09/21 23:09:26" color="">}}




{{<matomeQuote body="Unlicenseの注意点だけど、一部の法域では機能しないことがあるんだ。その場合、著作権者以外は誰も使えない「文字通りライセンスなし」と見なされるかも。現実には訴えられることはないと思うけど、頭に入れておいて損はないよ。だから多くの団体はCC0やMITを推奨してるんだ。" userName="HighGoldstein" createdAt="2025/09/22 11:39:16" color="#ff5733">}}




{{<matomeQuote body="アメリカの視点だと、セキュリティに関してMITライセンスとの実質的な違いはないよ。企業はパッケージがちゃんとメンテされててバグがなく、脆弱性データベースに既知の攻撃がないかを重視するからね。あくまで僕の経験だけど、他の会社はもっと厳しい条件があるかもね。" userName="tonypapousek" createdAt="2025/09/21 22:20:50" color="#38d3d3">}}




{{<matomeQuote body="Stallmanの信奉者たちを召喚する呪文を唱えるのに成功したね。<br>追加の提案なんだけど、無料でただな「無料」を指すのには”gratis”も使えるよ。ラテン語由来で、スペイン語圏の国々では「無料」を意味するのに普通に使われるけど、自由の方の「無料」とは意味が違うんだ。" userName="TZubiri" createdAt="2025/09/22 04:36:34" color="#ff33a1">}}




{{<matomeQuote body="追記：FSFの定義を知らなかったんだ。僕は、お金を払わずに使えるソフトウェアをフリーソフトウェアだと思ってたよ。<br>それは「フリーウェア」って呼ばれるものだね。それに、オープンソースソフトウェアは有料でも良いんだ（ただし、誰かがそれを買ったら、無料で再配布することを許可しないといけないけどね）。" userName="xigoi" createdAt="2025/09/22 04:20:19" color="#ff5733">}}




{{<matomeQuote body="このライブラリ、符号付き整数オーバーフローをチェックしてない箇所があるよ:<br>https://github.com/rxi/sj.h/blob/eb725e0858877e86932128836c1...<br>https://github.com/rxi/sj.h/blob/eb725e0858877e86932128836c1...<br>https://github.com/rxi/sj.h/blob/eb725e0858877e86932128836c1...<br>特定の入力で未定義動作（UB）が起きる可能性があるね。" userName="layer8" createdAt="2025/09/21 17:54:52" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="肥大化したエッジケースライブラリについての良い記事があったね（[0]: https://43081j.com/2025/09/bloat-of-edge-case-libraries, [1]: https://news.ycombinator.com/item?id=45319399）。<br>全ての可能性のあるエラーを処理しようとすると、すぐに複雑になっちゃうから、それがライブラリの責任じゃないこともあるんだよ。" userName="skydhash" createdAt="2025/09/21 18:08:09" color="#ff5c5c">}}




{{<matomeQuote body="あなたは、一部の開発者が好む、シンプルなシングルヘッダCライブラリ文化を知らないんだね。Tsoding（ストリーマー）なんかがその代表例だよ。彼らは、こういうものが”セキュリティ”や”機能”に焦点を当ててないことを分かってて、それで良いんだって思ってる。全てのものが、何千もの有料顧客にさらされる超真剣なビジネスプロジェクトである必要はないからね。" userName="hypeatei" createdAt="2025/09/21 18:38:14" color="#ff5c5c">}}




{{<matomeQuote body="これには強く反対だよ。JSONは信頼できないソースから来る可能性があるし、これはセキュリティ上の影響がある問題だ。肥大化に関する記事が議論してるのは、インターフェースの契約が悪いっていう問題で、それとは種類が違うよ。" userName="klysm" createdAt="2025/09/21 18:33:52" color="#ff5c5c">}}




{{<matomeQuote body="intは最近のプラットフォームなら32ビットだから、オーバーフローが起きるには、それぞれの行で、<br>・20億を超える深さにネストされたJSONファイル<br>・20億行以上のファイル<br>・20億文字以上の行<br>が必要ってことだね。" userName="ricardobeat" createdAt="2025/09/21 18:16:50" color="#ff33a1">}}




{{<matomeQuote body="システム全体を制御していれば、JSONが必ずしも信頼できないソースから来るわけじゃないよ。システムを制御している限り、全てが絶対100%セキュアである必要はないんだ。公開システムならセキュリティに努めるべきだけど、パブリックな入力を処理しないプロジェクトでは必ずしも必要じゃない。<br>例えば、僕がアセンブリ言語で書いた簡易JSONパーサーは、シリアルポート経由で組み込みCPUに送られる制御メッセージを解析するものだったんだけど、カメラを回して写真を撮る小さなモーターを制御するやつでね。システムに”信頼できない”JSONが入る方法は全くなかったよ。完璧に機能したし、モーターを制御する組み込みデバイスにすごくシンプルなJSONパーサーがあっても、何も危うくなることはなかったんだ。" userName="leptons" createdAt="2025/09/21 19:57:54" color="#45d325">}}




{{<matomeQuote body="趣味のプロジェクトって、いつの間にか本番コードで使われ始めて、後でCVEになっちゃう傾向があるんだ。もし意図的に安全性を無視するなら、そのことについてREADMEに目立つ警告を載せるべきだよ。" userName="layer8" createdAt="2025/09/21 18:44:53" color="#785bff">}}




{{<matomeQuote body="じゃあ、もしそれが少人数のために設計された趣味のプロジェクトだとしたら、手抜きで彼らを危険に晒すのは急に大丈夫になるってこと？" userName="zwnow" createdAt="2025/09/21 18:41:50" color="">}}




{{<matomeQuote body="実際のシステムだと20億文字ってのは普通にありそうだよな。" userName="klysm" createdAt="2025/09/21 18:34:39" color="">}}




{{<matomeQuote body="C言語でやるなら、ありとあらゆる未定義動作（UB）を徹底的にチェックするか、別の言語に乗り換えるしかないよ（後者がおすすめ）。" userName="flykespice" createdAt="2025/09/21 18:44:45" color="#785bff">}}




{{<matomeQuote body="1つのJSONファイルで2GBは流石に異例でしょ。このヘッダを使う時の簡単な注意書きで十分だよ。『入力は2GB未満にしてください』とかね。" userName="naasking" createdAt="2025/09/21 19:14:21" color="">}}




{{<matomeQuote body="これは別に使う義務もないし、お金を払ったわけでもないオープンソースプロジェクトだよ。誰が危険に晒されるって言うんだ？ライセンスにも作者は損害賠償の責任を負わないって明記されてるし。" userName="hypeatei" createdAt="2025/09/21 18:44:04" color="">}}




{{<matomeQuote body="＞趣味プロジェクトが実用的なら製品コードに使われる傾向があるって言うけど、それが作者の問題なわけ？ライセンスには損害賠償の責任はないってハッキリ書いてあるよ。もしそんな真剣なプロジェクトを開発してるなら、適切な審査プロセスや依存関係のサポート契約が必要だろ。" userName="hypeatei" createdAt="2025/09/21 18:47:22" color="#ff5c5c">}}




{{<matomeQuote body="たぶん、相手側の制御はしてなかったんでしょ？そうでなければ、JSONよりもっとまともなものを使ってたんじゃない？" userName="userbinator" createdAt="2025/09/21 20:09:09" color="">}}




{{<matomeQuote body="チェック付きインクリメントがデフォルトのプログラミング言語はほとんどないよ。RustやJavaのプログラマーだって同じ間違いをするだろうね。他の言語みたいにチェック付き加算をする関数を書くのも、そんなに難しくないし。" userName="jeroenhd" createdAt="2025/09/21 19:56:43" color="">}}




{{<matomeQuote body="俺は両端を制御してたよ。JSONに変なところなんてないね。多くの用途で広く使われてる。JSONを送るシステムはNode.jsベースだったから、JSONを使うのは自然だった。それに、俺がそうしたかったからJSONを使ったんだ。どうせなら他のプロトコルを発明しなきゃいけなかっただろうし、アセンブリ言語で基本的なJSONパーサーを書くのが簡単だって思った時に、車輪の再発明をする気はなかったね（組み込みシステムで40年間アセンブリをコーディングしてきたから）。" userName="leptons" createdAt="2025/09/21 21:18:33" color="#785bff">}}




{{<matomeQuote body="作者の問題だとは言ってないよ。コードの問題だね。" userName="layer8" createdAt="2025/09/21 18:50:56" color="">}}




{{<matomeQuote body="今回の問題は、呼び出し側が制限を知らされていないから、サポート外の入力を渡すのを防ぐことも期待できないし、オーバーフローケースを後から処理する方法もないってことだね。" userName="layer8" createdAt="2025/09/21 18:17:18" color="#ff5733">}}




{{<matomeQuote body="簡単なものならJSONよりカスタムバイナリプロトコルかASN.1を選ぶな。HLLからの生成もLLLでのパースも楽だろ（俺も数十年Asm書いてるし）。" userName="userbinator" createdAt="2025/09/21 22:10:43" color="#38d3d3">}}




{{<matomeQuote body="なんでこんな言葉遊びしてんだ？ 作者の問題だって言いたいのか？ お金を払いたくないプロダクション＼ビジネスユーザーのために、READMEに警告を追記しろとまで言うのかよ。" userName="ethanwillis" createdAt="2025/09/21 21:01:14" color="">}}




{{<matomeQuote body="…で、オープンソースのソフトウェアライセンスで、作者が損害賠償の責任を負うものなんて、この世にどんなのあるんだ？" userName="flykespice" createdAt="2025/09/21 18:52:39" color="">}}




{{<matomeQuote body="プロジェクトにライブラリを追加するとき、レビューしないのか？ forgeのissueを見るか、コードを読めよ。コードが究極の仕様だ。ドキュメントと違う挙動や説明不足は信用しない。再帰やループの処理は特にチェックする。オーバーフロー処理がないなら、コードをFork＼Vendorしてアサーションを追加すればいい。" userName="skydhash" createdAt="2025/09/21 18:25:14" color="#45d325">}}




{{<matomeQuote body="「システムを制御している限り、何もかも100%安全である必要はない」ってのは、「家に入れるのが自分だけなら、家のセキュリティを心配する必要はない」って言ってるようなもんじゃないのか？" userName="ghurtado" createdAt="2025/09/21 21:27:28" color="#45d325">}}




{{<matomeQuote body="「安全性を無視するなら、READMEに警告が必要だ」って言うけど、LICENSEのこの条項はどう思う？「ソフトウェアは“現状有姿”で提供され、いかなる保証もなく、作者は損害賠償の責任を負わない」って明記されてるじゃん。" userName="koolba" createdAt="2025/09/21 19:30:27" color="#785bff">}}




{{<matomeQuote body="こんなライブラリにセキュリティは期待しないな。メモリセーフにしたければ、Fil-Cでコンパイルすればいいだろ。" userName="modeless" createdAt="2025/09/21 23:04:44" color="">}}




{{<matomeQuote body="おそらく、ライセンスに明示的な責任に関する記述が不足しているってことだろ。" userName="k_roy" createdAt="2025/09/21 19:30:17" color="">}}




{{<matomeQuote body="同感だね。JSONが変わらないと分かってたから、たった10行のパーサーを書いたよ。JSONパーサーとは言えないけど、俺が必要とするものはちゃんとパースしてくれるんだ。" userName="johnisgood" createdAt="2025/09/22 08:38:51" color="#ff5733">}}




{{<matomeQuote body="いや、違うね。俺はこれ毎日扱ってるんだ。もしライブラリに入力サイズの制限があるなら、それを明記すべきだろ。" userName="maleldil" createdAt="2025/09/21 20:24:42" color="#45d325">}}




{{<matomeQuote body="レベル深度が20億超えるか、行数が20億超えるとUBになるぜ。JSON入力は1GBまでにしろよ。Web経由で2GBのJSONファイルを受け取ったら、スタックの他の部分でもっと問題が起きるだろうしな。もし2GB超えるファイルで動かしたいなら、ソースのintを全部64bitに変えるぜ。でも入力が2^64超えたら結局クラッシュだろ。コードでintオーバーフローのチェックなんて絶対しねぇよ。" userName="habibur" createdAt="2025/09/21 22:47:18" color="#785bff">}}




{{<matomeQuote body="これ、メモリ安全性とは全然関係ねぇよ。" userName="layer8" createdAt="2025/09/21 23:09:44" color="">}}




{{<matomeQuote body="あんたの言う『古くない』ってどういう意味だよ？今でも32ビット整数がない組み込みシステムが作られてんだぜ。" userName="ranger_danger" createdAt="2025/09/21 19:29:02" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ、かなり寛容だよな。悪いことじゃないけど（コード見ずに使う奴のために注意書きはいるかもな）、でもだからこそこんなに小さくできるんだぜ。readmeのデモだと、`{”x”,10eee”y”22:5,{[:::,,}]”w”7”h”33`って入力が`rect: { 10, 22, 7, 33 }`になるんだぜ。" userName="LiamPowell" createdAt="2025/09/21 21:05:22" color="#45d325">}}




{{<matomeQuote body="パーサーってのは入力が正しいと仮定してるもんだろ。バリデーションは別の問題で、このライブラリの管轄外だ。ただデータを抽出するだけのライブラリを他にどう呼べってんだよ。" userName="hacker_homie" createdAt="2025/09/22 00:04:14" color="#ff33a1">}}




{{<matomeQuote body="個人的には、JSONパーサーライブラリ全般は苦しみのブラックホールだよ。だいたい別のユースケースを想定して書かれてるか、抽象化の複雑なごちゃまぜかのどっちか、いや両方の場合が多いな。自分の特定のユースケースに必要なものだけ書けば、そんなに難しい問題じゃないんだがな。" userName="codr7" createdAt="2025/09/21 17:36:20" color="#ff5c5c">}}




{{<matomeQuote body="現代のJSONライブラリがいかに複雑かってのは驚きだぜ。かつて“超シンプル”だったnlohmannのC++単一ヘッダーJSONライブラリですら、今や13歳、5時間前にもPRがマージされてるし、1.22億ものユニットテストがあるんだ。これでもC++で最速じゃない。最速ならsimdjsonを見てみろ。だからお前ら、自分のJSONパーサーライブラリなんて始めるな。やめとけ。45分で90%は作れても、残りの10%に1万時間かかるぞ。" userName="mbac32768" createdAt="2025/09/21 18:32:05" color="#ff33a1">}}




{{<matomeQuote body="でもこのライブラリより『意見がない』ものって、そうそうないだろ。キーと配列要素をイテレートして、値の型を識別して、文字列スライスを返すだけなんだから。" userName="flohofwoe" createdAt="2025/09/21 17:51:24" color="">}}




{{<matomeQuote body="俺にはなんか、半分しか仕事してないように感じるな。SAX“パーサー”がレキサーと大して変わらなかったのを思い出すぜ。" userName="IshKebab" createdAt="2025/09/21 17:59:53" color="">}}




{{<matomeQuote body="JSONファイルをイテレートするときに、他になにをすればいいっての？数値解析やUNICODE処理をユーザーに任せるのは、機能と見なせるよ（だって、どれだけコストをかけるか、どれだけ堅牢にするか、自分で決められるんだからね）。" userName="flohofwoe" createdAt="2025/09/21 18:05:24" color="#38d3d3">}}




{{<matomeQuote body="データをオブジェクトに抽出することだよ。SerdeやPydanticみたいなライブラリがそれをやってくれるんだ。ていうか、オリジナルのeval() JSONロードメソッドだってそうだったじゃん。" userName="IshKebab" createdAt="2025/09/21 20:03:10" color="#785bff">}}




{{<matomeQuote body="そうしたら、ストリーミングする能力を失っちゃうじゃん。" userName="meindnoch" createdAt="2025/09/21 22:58:21" color="">}}




{{<matomeQuote body="確かに、でも普通はデータがメモリに収まらないほど大きい場合にだけ必要で、そんな場合はそもそもJSONを使うべきじゃないんだ。（一度、JSONファイルがギガバイト単位になって、SQLiteに切り替えたらすごくうまくいったって経験があるよ。）" userName="IshKebab" createdAt="2025/09/22 06:49:14" color="#ff5733">}}




{{<matomeQuote body="実際、DOMスタイルのJSONパーサーは、データが利用メモリの半分より大きくなると限界が来るよ。JSONから独自のモデルオブジェクトを構築するなら、両方メモリにないとダメだからね（不要なDOM部分を段階的に破棄できるなら別だけど）。俺的には、ちゃんとしたJSONライブラリはSAXスタイルとDOMスタイルの両方を、レイヤー化して提供すべきだと思うね。" userName="meindnoch" createdAt="2025/09/22 08:06:14" color="#38d3d3">}}




{{<matomeQuote body="＞JSONから独自のモデルオブジェクトを構築したいだろうから、ある時点で両方がメモリに存在しないといけない。そうでもないよ、JSONライブラリ自体が入力ストリームできるからね。例えば`serde_json::from_reader()`を使えば、ファイル全体をメモリにロードせずにオブジェクトにパースできるんだ: https://docs.rs/serde_json/latest/serde_json/fn.from_reader。でも、それはちょっと学術的な話で、メモリの半分と全部って、同じくらいのレベルだよね。" userName="IshKebab" createdAt="2025/09/22 12:31:20" color="#ff5733">}}




{{<matomeQuote body="JSONのパースは地雷原だぜ（2016）<br>https://seriot.ch/projects/parsing_json.html" userName="forty" createdAt="2025/09/21 18:35:07" color="#ff5c5c">}}




{{<matomeQuote body="これってJSONっていうよりC++の話なんじゃね？" userName="modeless" createdAt="2025/09/21 23:06:41" color="">}}




{{<matomeQuote body="うん、俺これ使ってるし、友達のほとんども使ってると思うよ :)" userName="EasyMark" createdAt="2025/09/21 19:26:33" color="">}}




{{<matomeQuote body="＞一般的にJSONパーサーライブラリは苦しみのブラックホールだよ、って俺は思う。Sexprsはここで、誰かに愛されることを願って座ってるぜ。" userName="patrickmay" createdAt="2025/09/21 21:11:22" color="">}}




{{<matomeQuote body="「そんなに難しい問題じゃない」って言うやつは、実際にその問題を解決したことがないんだよ。" userName="TheRealPomax" createdAt="2025/09/21 20:46:53" color="">}}




{{<matomeQuote body="それはモデルオブジェクトがserdeのstructになってる場合だけだね。モデルを特定のディスクフォーマットに縛り付けたくないから、これは望ましくないんだ。" userName="meindnoch" createdAt="2025/09/22 14:29:04" color="#38d3d3">}}




{{<matomeQuote body="ユニットテストの統計には本当に驚いたよ。JSONパースで1億2200万ものバリエーションをカバーする必要があるなんて、どんなとんでもないエッジケースがあるんだろうね？" userName="vovavili" createdAt="2025/09/21 22:35:07" color="">}}




{{<matomeQuote body="Common Lispのライブラリはそこが好きだよ。ほとんどアルゴリズムに特化してて、データ構造はユーザー任せ。だから、関数を呼ぶ前にデータ構造が合ってるか確認するんだ。" userName="skydhash" createdAt="2025/09/21 18:12:26" color="">}}




{{<matomeQuote body="俺も書いたことあるけど、クラッシュレポーターで使うから、クラッシュ時に書きかけのファイルを回復できる必要があったし、エンコーダーもasync-safeじゃなきゃダメだったんだ。<br>https://github.com/kstenerud/KSCrash/blob/master/Sources/KSC...<br>うん、JSONコーデック書くのは本当に最悪だよ。<br>だから今、同じ機能を持つasync-safeでクラッシュ耐性もあって、35倍速くてコードも少ないBONJSONコーデックに置き換えてるところ。<br>https://github.com/kstenerud/ksbonjson/blob/main/library/src...<br>https://github.com/kstenerud/ksbonjson/blob/main/library/src..." userName="kstenerud" createdAt="2025/09/22 05:17:34" color="#785bff">}}




{{<matomeQuote body="ほとんどの人は残りの10%の機能なんて必要ないけど、小さくて保守しやすいコードベースを重視するんだよ（nlohmannは絶対そうじゃないけどね）。" userName="flohofwoe" createdAt="2025/09/22 09:25:10" color="#785bff">}}




{{<matomeQuote body="パフォーマンスがそこまで重要じゃないなら、問題の多くは消えるよ。そうすれば、もっと良くて安全でシンプルな言語で、正しいパーサーを書く選択肢が広がるからね。C/C++でもいける。" userName="zelphirkalt" createdAt="2025/09/22 09:56:17" color="">}}




{{<matomeQuote body="速度最適化をすればするほど、新しいエッジケースがどんどん厄介になるんだ。" userName="kstenerud" createdAt="2025/09/22 05:22:04" color="#45d325">}}




{{<matomeQuote body="1億2200万個のユニットテスト？何それ？" userName="typpilol" createdAt="2025/09/21 19:39:02" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
