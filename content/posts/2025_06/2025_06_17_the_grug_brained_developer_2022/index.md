+++
date = '2025-06-17T00:00:00'
months = '2025/06'
draft = false
title = 'デバッガーよりログ出力！泥臭い開発者のスタイル'
tags = ["プログラミング", "デバッグ", "開発スタイル", "エンジニア", "技術論"]
featureimage = 'thumbnails/purple4.jpg'
+++

> デバッガーよりログ出力！泥臭い開発者のスタイル

引用元：[https://news.ycombinator.com/item?id=44303542](https://news.ycombinator.com/item?id=44303542)




{{<matomeQuote body="「グッドデバッガーは光る石より価値がある、いやそれ以上だね」って。僕はずっとデバッガー派だけど、ほとんどの人がprintデバッグしてるみたい。デバッガーの方がシステム理解しやすいし、コールスタック見る方が頭で追うより断然楽。若手のみんな、デバッガーはちょっとした超能力だから、使えるようにしとくといいよ。" userName="titanomachy" createdAt="2025/06/17 23:45:58" color="#ff5c5c">}}




{{<matomeQuote body="これ昔話題になったね[0]。KernighanとPikeの引用があるんだけど、彼らはデバッガーはスタックトレースとか変数の確認くらいで十分で、printデバッグの方が効率的だって言ってる。コードを読むよりログを見る方が早いし、デバッグセッションは消えるけどログは残る。僕も大体同意で、printデバッグの方が速いことが多いかな。コードのモデルが頭にあって、printで期待値と違うところを見るのが楽なんだ。<br>[0] The unreasonable effectiveness of print debugging (349 points, 354 comments) April 2021 https://news.news.ycombinator.com/item?id=26925570" userName="demosthanos" createdAt="2025/06/18 00:16:15" color="#38d3d3">}}




{{<matomeQuote body="逆にJohn Carmackはデバッガー好きだよね。Lex Friedmanとのインタビューでツールの重要性を話してる。だからこの話は単純じゃないと思うな。僕の推測だけど、問題領域の理解が浅い時はデバッガーが役に立つ。新しい会社に入ったとか、初めてのコードとか。よく知ってるコードで問題箇所が分かってる時は、printデバッグの方がサッと確認できて楽なんじゃないかな。" userName="johnfn" createdAt="2025/06/18 02:56:33" color="#ff5c5c">}}




{{<matomeQuote body="僕もデバッガーはあまり使わない派かな。printじゃなくて「ログ」を追加するんだけど、それは消さないんだ。主要なところにはINFOレベルで関数の出入りとかパラメータを記録しとく。使いながら必要に応じて詳細なログを追加するんだ。これは始めやすくてメンテも楽だし、問題が起きた時にすごく助かる。ログのフォーマットにもこだわってて、分散システムではノードIDとかPIDとかタイムスタンプを固定幅にしとくと、ログをまとめて見やすくて便利だよ。" userName="geophile" createdAt="2025/06/18 00:54:51" color="#ff5733">}}




{{<matomeQuote body="僕は大企業しか経験ないんだけど、マイクロサービスが多いとこだとリアルなデバッガーは使えないことばっか。ローカルで動かせないし、テスト環境もデバッガーをつなげないことが多いんだ。だからログ（printデバッグ）しか頼るものがない。ログシステム自体がおかしかったり、ログが流れる前にクラッシュしたりすると、それすらダメになるんだよね。" userName="roncesvalles" createdAt="2025/06/18 00:12:10" color="#38d3d3">}}




{{<matomeQuote body="それ（コメント4の「ログを残し続ける」）はアンチパターンだよ。正常な時に大量のログノイズが出るし、もう関係ない情報も残っちゃう。僕が見た中では1日ギガバイト単位のログになってた例もある。詳細な呼び出し履歴が必要なら、Writer Monad[0]を使うとか、エラーが発生した時だけとか、ローカルテスト環境とか「常にトレースログを出す」環境だけで出力すべきだよ。<br>[0] https://williamyaoh.com/posts/2020-07-26-deriving-writer-mon..." userName="AdieuToLogic" createdAt="2025/06/18 02:37:52" color="#785bff">}}




{{<matomeQuote body="ログレベルとかフィルタリングツールがあれば、それは全然アンチパターンじゃないよ。エリアごとにデバッグ出力をフィルタできるのに、「全てのログを常に出す」のがデフォルトだと思うのはちょっと変かな。既存のロギングパッケージにラッパーを作るか、npmのdebugパッケージ[https://www.npmjs.com/package/debug]みたいにエリア指定できるのを使うのがいい例だね。例えば`DEBUG=app:middleware:rate-limiter npm start`ってやれば、その部分だけデバッグできるんだ。" userName="strken" createdAt="2025/06/18 03:05:45" color="#45d325">}}




{{<matomeQuote body="C++とかRustみたいなネイティブアプリでprintデバッグは、コンパイルとリンク待ちが大変で最悪だね。こういうのは断然デバッガー。トレースポイントとか使うとprintデバッグみたいなこともできるし。でもスクリプト言語とか分散システムだとprintデバッグの方が理にかなってると思う。マルチスレッドの問題は、ブレークするデバッガーよりロギングの方がやりやすいかな。僕はどっちも使うよ。" userName="tcoff91" createdAt="2025/06/18 05:37:31" color="#45d325">}}




{{<matomeQuote body="コメント7への返信だけど、アンチパターンなのはログレベルとかフィルタリングのツールの話じゃなくて、コメント4の人が言ってた「関数の出入りとパラメータをINFOレベルで常に記録する」っていう方針そのものだよ。成功した時に詳細なログがあっても価値ないでしょ。サービスのリクエスト＼レスポンスログとは別ね。大量ログのコストも無視できない。ランタイムでフィルタできるのは当たり前で、「全てのログを常に出す」なんて誰も言ってないよ。君のnpmの例は僕が言った「ローカルのユニットテストとか統合テストみたいな、トレースログを常に出す環境」ってシナリオに当てはまると思うな。<br>0 - https://logback.qos.ch/<br>1 - https://logging.apache.org/log4net/index.html<br>2 - https://log4cpp.sourceforge.net/" userName="AdieuToLogic" createdAt="2025/06/18 03:58:47" color="#ff5c5c">}}




{{<matomeQuote body="僕の会社では、20個以上のサービスが全部minikubeでローカルで動かせるし、JetBrainsで簡単にデバッグできるんだ。" userName="idontwantthis" createdAt="2025/06/18 01:18:30" color="#45d325">}}




{{<matomeQuote body="コンパイラやリンカーを待つ時間なんて、せいぜい数秒だろ？プロジェクト全体を再コンパイルするわけじゃなく、通常は一つのソースファイルだけなんだから。<br>でもデバッガーを使おうと思ったら、最適化なしでビルドするために全部再コンパイルしなきゃならない。そりゃ何分もかかるだろうね。それに、最適化なしで問題が再現できるかどうかも祈るしかない。面倒だよ。" userName="mort96" createdAt="2025/06/18 06:36:39" color="">}}




{{<matomeQuote body="John Carmackが自分の問題領域を理解してないってのは考えにくいな。たぶん、問題領域そのものが違うんだよ。ゲーム開発とWeb開発みたいにね。ゲーム開発は状態が多くて一つのプロセスで動く。これは複雑な単一コンピュータープログラムや、MPIみたいな密結合なマルチコンピュータープログラムにも当てはまる。<br>Web開発は事実上クラスター上で動いてて、状態はデータベースみたいなサードパーティに預けがちだし、I/Oは疎結合でイベント駆動だ。Web開発には、システム全体の状態を調べられるように全サービスを一時停止できるようなデバッガーはないし、たぶんそんなの望まないだろう。だから、何が起きてるか理解するにはロギングが一番なんだ。<br>とにかく、両方のやり方を理解して、状況に合わせて大胆に使えばいいんだよ。必要なら、反逆者になってデバッガーを使ったり、反逆者になってprintfを追加したりすればいい。ただ、何かの部族の儀式みたいに弱々しく従うのはやめようぜ。" userName="osigurdson" createdAt="2025/06/18 13:10:08" color="#38d3d3">}}




{{<matomeQuote body="printfデバッグがLinux界隈で widespreadなのは、そっちのGUIが一般的に壊れてるせいで、GUIデバッガーがちゃんと動くか信用できないからって言う傾向があると思うんだ。<br>俺がデバッガーをちゃんと使うようになったのは、(1)Windowsにどっぷり浸かってGUIが動くのが当たり前で、LI（たぶんコマンドラインインターフェースのことかな）がダメなのを知った時、(2)デバッグ用のprintf()をバンバン追加してたらバージョン管理でチェックインされちゃって問題になった経験を何度もした時だ。<br>それからCLIデバッガーでも色々冒険したよ。gdbで別のgdbをデバッグしたり、Java/C++システムをデバッグするためにjdbとgdbを同じプロセスで同時に使ったり、gdbを自動化したりね。でも、君が言うように、特定のシステムでデバッガーを動くようにするには、たいていある程度の投資が必要なんだ。<br>良いIDEがあれば、JavaのJUnit＋デバッグは、Pythonみたいな言語のREPLを使うのと似た体験を提供してくれると思う。実験的なコードを書いて試せるんだけど、この場合はコードがターミナルに流れて消えるだけじゃなくて、最終的にはユニットテストとしてチェックインされるんだ。" userName="PaulHoule" createdAt="2025/06/18 00:17:52" color="#785bff">}}




{{<matomeQuote body="このスレッドの別の場所にも投稿したんだけど、インタビューでのCarmackの話を聞くとすごく面白いよ。彼はパフォーマンスのアイデアを得たり、冗長性がないか確認したりするために、ゲームプレイのフレーム全体をステップ実行することが時々あったんだ。これが俺の言う「問題領域を理解してない」ってことなんだ。彼は賢い男だけど、チームの他の全員が追加したコード全部と、それらがどう相互作用してるかを即座に理解できる人なんていないだろ。" userName="johnfn" createdAt="2025/06/18 14:57:45" color="">}}




{{<matomeQuote body="ルールに対するいくつかの例外を説明してくれたのはわかるけど、二つの点に反対だな。一つは、geophileが無能だからロギングを条件付きにしなかったんだっていう決めつけ。もう一つは、あれだけ nuanceがあるものに”anti-pattern”っていうラベルを貼ること。<br>＞膨大なログ出力の非自明なコスト的影響<br>もしログ出力がコンパイル時条件付きなら、非自明なコスト的影響なんてないし、実行時ですらコストはしばしば自明だよ。" userName="strken" createdAt="2025/06/18 04:18:53" color="">}}




{{<matomeQuote body="＞... geophileが無能だからロギングを条件付きにしなかったんだっていう決めつけ...<br>そんな決めつけはしてないよ。俺がしたのは、あるanti-patternを特定して、経験上より良いアプローチだとわかってる代替策を説明しただけだ。”Incompetence”（無能）は君の言葉であって、俺のじゃない。<br>＞... そして、あれだけnuanceがあるものに”anti-pattern”っていうラベルを貼ること。<br>君が見えているらしいnuanceが俺には見えないな。<br>＞＞膨大なログ出力の非自明なコスト的影響<br>＞もしログ出力がコンパイル時条件付きなら、非自明なコスト的影響なんてないし、実行時ですらコストはしばしば自明だよ。<br>Cloud deploymentでは、ログエントリを知るためには一つ以上のlog aggregatorsに転送する必要がある。<br>これは定義上、Network I/Oを伴う。<br>ネットワーク通信はローカルI/Oより桁違いに遅い。<br>”function entry/exit, with param values”みたいな無駄なロギングはNetwork I/Oへの圧力を高める。<br>ロギングがlossyであることが許されない限り（そんなことはない）、ログバッファが容量一杯に近づいたら転送を完了させなきゃならない。<br>過剰なロギングをするproduction systemsを用意するには、そうでないシステムよりも多くのresourcesが必要になることが多いんだ。<br>したがって、これは間違いだ：<br>＞... 実行時ですらコストはしばしば自明だよ。<br>production environmentでの膨大なログ出力の影響を考えるならね。" userName="AdieuToLogic" createdAt="2025/06/18 05:09:41" color="#ff33a1">}}




{{<matomeQuote body="「自然に理解できる」多くの人にとっては visual debuggers は pointless だと思うけど、コンピューターの仕組みを直感的に理解できない人にとっては、その直感を育むのに invaluable なんだ。<br>俺は学生たちに、Stackが実際にどういうものか、Loopがどうやって実行されるか、といった理由で、授業でvisual debuggerを学ばせることを insist してるんだ。<br>Print debugging や考えることの代替にはならないけど、適切に使えば両方をcomplementしてくれるんだよ。" userName="recursivedoubts" createdAt="2025/06/18 01:53:20" color="">}}




{{<matomeQuote body="ログとデバッガーは全然違うものだよ。ログは何が起きたかを教えてくれるけど、デバッガーは全体の状態を見せてくれるから、自分で頭の中で組み立てる必要がないんだ。" userName="hobs" createdAt="2025/06/18 01:08:56" color="">}}




{{<matomeQuote body="ありがたいことに、AAA games全体を一人の人間がほぼゼロから書き上げられる時代に俺たちは生きてる。皮肉じゃなくてね。自分でコードを書いたなら、どこに問題が起きうるかほとんどわかるんだ。だから俺はデバッガーを使わないって言っても驚かないだろ。" userName="chickenzzzzu" createdAt="2025/06/18 15:20:04" color="">}}




{{<matomeQuote body="マイクロサービスでもデバッグは全然できるよ。アプリをデバッグできないってのは、エンジニアリング的にヤバい状態だね。" userName="phito" createdAt="2025/06/18 06:52:56" color="#38d3d3">}}




{{<matomeQuote body="Rob PikeとBrian Kのデバッグ話、面白いね。Brian Kはただ考えてるだけでバグを見つけちゃったって。自分もデバッガーは使うけど、たまにはPCから離れてじっくり考えるのも大事かもと思ったよ。" userName="josephg" createdAt="2025/06/18 02:30:42" color="#38d3d3">}}




{{<matomeQuote body="俺も同じ状況！デバッガーが使えないんだ。マイクロサービスじゃないのにね。" userName="frollogaston" createdAt="2025/06/18 00:23:29" color="">}}




{{<matomeQuote body="”print文をどこに置くか決める時間”って言うけどさ、そこにブレークポイント置けば良くない？いちいちprint文入れて消すよりブレークポイントの方が早いよ。永続的なログなら話は別だけど、それとデバッグ用のprint文は違うでしょ。" userName="neogodless" createdAt="2025/06/18 03:08:09" color="#ff5c5c">}}




{{<matomeQuote body="”デバッガーが使えない”って、物理的に無理なの？それとも使えるようにするにはエンジニアリング作業が必要ってこと？" userName="monkeyelite" createdAt="2025/06/18 14:50:38" color="">}}




{{<matomeQuote body="技術的には可能だよ。でも誰も有効化する作業をしてないんだ。むしろローカルで動かすのも難しくなってきてるし、昔あったステージング環境のデバッガーも消されたり。単体テスト用のデバッガーは使えるけど、あんまり役に立たないのが現状かな。" userName="frollogaston" createdAt="2025/06/18 17:24:02" color="#ff5c5c">}}




{{<matomeQuote body="コード、コールスタック、変数、ウォッチ、スレッド、メモリ、ブレークポイントとか、必要な情報全部が一目でわかって、データ構造もクリックで見れるのに？なんでデバッガー使いたくないの？良いGUIデバッガーはプログラムの状態を示すダッシュボードだよ。CLIとかTUIじゃ無理。" userName="kryptiskt" createdAt="2025/06/18 07:07:56" color="#785bff">}}




{{<matomeQuote body="確かにブレークポイントで止まるけど、結局一つずつステップ実行する事になるよね。Printfデバッグは実行全体の流れをまとめて見れるから、時間の経過と状態変化が分かりやすいんだ。デバッガーは特定の時点の状態を見るのには良いけど、変化を追うならPrintfの方が役立つ事も多いよ。" userName="demosthanos" createdAt="2025/06/18 03:11:56" color="#ff5733">}}




{{<matomeQuote body="コンパイラとかリンカの待ち時間って実際どれくらい？<br>たった3秒？<br>プロジェクト全体を再コンパイルしてるわけじゃないし、たいていソースファイル1つで10分かかるでしょ。<br><br>デバッガー使いたいなら、最適化なしでビルドするために全部再コンパイルが必要になる。<br>これに何分もかかるんだ。<br>いつもデバッグサポート付きでコンパイルしてるよ。<br>最適化ビルドでもデバッグできるし。<br>全部再コンパイルすると45分かかる時もある。<br>デバッガーを使う最大の理由が再コンパイル時間ってのは、うーん。<br>てか、俺はrrがすごく好きで、プリントデバッグよりそっちがいいな。" userName="writebetterc" createdAt="2025/06/18 07:56:00" color="#ff5733">}}




{{<matomeQuote body="Carson教授、もしコメント見てたら、心の底から感謝してるって伝えたくて。<br>あなたが貢献してくれた全てにありがとう。<br>大学でHTMXをなんで学ぶんだろう、なんでそんなに盛り上がってるんだろうって当時は分かんなかったけど、何年も経った今、やっと理解できたよ。<br>HTML over the wireこそ全てだね。<br>Staff Ruby on Rails Engineerとして、Hotwireであなたの仕事ぶりを見てる。<br>たまにHacker Newsであなたを見かけるのがマジでクールだし、GitHubでHotwireのデベロッパー達と話してるのも見てるよ。<br>プログラミングコミュニティの光になってくれてありがとう。<br>本当に尊敬されてるし、感謝されてるよ。" userName="butterlesstoast" createdAt="2025/06/17 21:09:22" color="">}}




{{<matomeQuote body="HTMXってミームだったの？<br>Poe’s Lawのせいでマジかネタか判断つかないわ。" userName="deadbabe" createdAt="2025/06/17 21:15:14" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="htmxはクソだよ: https://htmx.org/essays/htmx-sucks/" userName="recursivedoubts" createdAt="2025/06/17 21:17:51" color="">}}




{{<matomeQuote body="まあ、少なくとも君（あなた？）のスタイルは一貫してるね。<br>皮肉と風刺で他の人のアイデアを批判するやり方、藁人形論法で打ち負かそうとしてる感じが。" userName="someothherguyy" createdAt="2025/06/17 21:45:03" color="">}}




{{<matomeQuote body="それな！<br>マグカップ手に入れようぜ！<br>https://swag.htmx.org/products/htmx-sucks-mug" userName="recursivedoubts" createdAt="2025/06/17 22:29:33" color="">}}




{{<matomeQuote body="ものによるね！<br>使い時とそうじゃない時があるよ。<br>https://htmx.org/essays/when-to-use-hypermedia/<br>https://htmx.org/essays/#on-the-other-hand" userName="recursivedoubts" createdAt="2025/06/17 22:30:02" color="">}}




{{<matomeQuote body="これ読んで「ダメじゃん」って思ったんなら、多分使わない方がいいよ。" userName="recursive" createdAt="2025/06/17 22:30:28" color="">}}




{{<matomeQuote body="SolopreneurとしてB2B SaaSでHTMX使ってるよ。クライアントは派手さ求めてないから、部分的にHTMX使うのがめちゃくちゃフィットしてるんだ。これで十分！" userName="brushfoot" createdAt="2025/06/17 21:34:22" color="#785bff">}}




{{<matomeQuote body="HTMX使い始めて、ウェブ開発の楽しさを取り戻したんだ！以前は失ってたんだよね。お客さんも製品に満足してるみたいだし、安定して収益出てる製品の話だよ。" userName="stevoski" createdAt="2025/06/18 07:57:26" color="">}}




{{<matomeQuote body="“pizazz！”が必要だって言うクライアントじゃなくて、君みたいなクライアントだったらよかったなー！羨ましい！" userName="deadbabe" createdAt="2025/06/17 21:54:48" color="">}}




{{<matomeQuote body="“pizazz！”求めるクライアントは、お客さんに見せるサイトが欲しいんだよね。飾り気のないクライアントは、自分たちが使うサイトが欲しいの。ターゲットが違うんだ。" userName="wvbdmp" createdAt="2025/06/17 22:17:19" color="">}}




{{<matomeQuote body="このクライアントの要求、zombo.comっぽい雰囲気を感じるな。なんかヤバそう？" userName="aspenmayer" createdAt="2025/06/17 22:13:07" color="">}}




{{<matomeQuote body="zombo.comではなんでもできるんだぜ！ハッハッハー！" userName="foo42" createdAt="2025/06/18 06:07:33" color="">}}




{{<matomeQuote body="HTMXは以前からやってたことの進化版だから、早くから使い始めたよ。効果的でシンプル、表現力もあって最高！クライアントサイドレンダリングも少しは必要だけどね。innerHTMLがデフォルトとか、エラー時にswapしないとか、嫌いな部分もあるけど。でも基本はいいよ。<br>https://hypermedia.systems/<br>の本、マジおすすめ。" userName="dgb23" createdAt="2025/06/17 21:56:55" color="#38d3d3">}}




{{<matomeQuote body="この記事には色々良いこと書いてるけど、マイクロサービスについての部分が一番好きだね。「grug wonder why big brain take hardest problem, factoring system correctly, and introduce network call too」ってやつ。" userName="anthomtb" createdAt="2025/06/17 21:05:08" color="">}}




{{<matomeQuote body="システムを細かく分けるって言っても、APIコール以外に方法を知らない人もいるんじゃないかな。そういう人には、APIになってないとただの理解不能な再利用できないコードに見えるんだろうね。" userName="default-kramer" createdAt="2025/06/17 22:57:10" color="#ff5733">}}




{{<matomeQuote body="これをいつも小さなチームに説明してるんだけど、普通すぎるウェブアプリを「マイクロサービス」に分けるんだよ。共有DB、APIマネジメント、キュー、メール、独自監視とか。そして、簡単なフォームを「簡単だから」ってSPAにする。もう分かったよ、「アーキテクチャ」や「パターン」って無能な開発者のための仕事なんだ。これか、道で「JavaScript書くんでサンドイッチください」って言うかだね。" userName="jiggawatts" createdAt="2025/06/17 21:56:31" color="#ff33a1">}}




{{<matomeQuote body="いやマジで、今いるとこの人、CSV結合にJavaでREST API作ったんだって。一回だけ使うやつなのに。入力POSTしたら結合CSV返してくれるってさ。叫びたいけど真空状態。誰も気にしないし。<br>しかも500行のテストファイルで数秒、2万行の本番で10分かかるって。" userName="isoprophlex" createdAt="2025/06/18 09:07:23" color="#ff33a1">}}




{{<matomeQuote body="この数回転職して empirically 経験したこと。多くの開発者は microservice の分解と契約設計は真剣にやるけど、 monolith のモジュール分解と interface 設計に同じくらい頑張る人はほとんどいない。Grug 脳の結論: Grug は多くの谷で良い microservice を見る。Grug はそれを持って帰って焼く。何度も味わう。Shaman は vision で良い monolith の話をする。Grug も夢見る。たぶん死後に味わうだろう。Grug は今から良い microservice を狩りに行く。" userName="dkarl" createdAt="2025/06/17 23:09:38" color="#ff33a1">}}




{{<matomeQuote body="network boundary が多くの言語の module system にはない factoring tool になるんだ。内部で協力する package の集まりが、 codebase の他の部分に小さな API だけを公開できる能力ね。それが network だからさらに module は data だけ交換する規律が生まれて programming を単純化するし、 interface を後方互換的に進化させられるから、違う module を違うタイミングで hot reload しても壊れないようになる。これを literal な network hop なしでも大部分はできるだろうけど、真剣な試みは見たことないな。" userName="closeparen" createdAt="2025/06/18 05:22:58" color="#45d325">}}




{{<matomeQuote body="junior dev が architect ぶってるせいでしょ。業界に useless な senior/architect が多すぎる。あるアプリは architect が micro service/mediator pattern/DDD を使ってて、元の機能はただの10ページ紙 form の置き換え。政府が数百万ドルかけたけど、俺なら3ヶ月でできた。簡単な form と ORM でよかったんだ。load 問題を指摘したら architect は big 5 が承認したから大丈夫だと主張。call 中に test server に 10 requests 送って落としてやったよ。" userName="mattmanser" createdAt="2025/06/17 22:18:33" color="#ff5733">}}




{{<matomeQuote body="多くの言語はライブラリの仕組みがあるんだから public API で module 定義を形式的、非形式的にサポートしてるんじゃないの？それとも俺が何か見落としてる？ Go, Java, C# みたいな言語で interface や Python の Protocols で定義できない API boundary の例を教えてくれない？" userName="jakewins" createdAt="2025/06/18 05:39:02" color="">}}




{{<matomeQuote body="まあ、インメモリの sqlite database に import して union all query 実行して csv に dump した方が速いだろうね。それでもたぶん間違ったやり方だけど、2万行のファイルに10分は最も基本的な意味で poor engineering だと思うよ。" userName="withinboredom" createdAt="2025/06/18 09:40:08" color="">}}




{{<matomeQuote body="API call でないとopaque blobだという考えは、組織によっては network boundary でしか system boundary を維持できないのが事実だから正しいと思う。network がないと code は big ball of mud になる。原因は developer の discipline 不足と、それを考慮しない programming language の設計。microservice が Node.js/Python が dominant になった後に流行ったのは偶然じゃない。強い static type system が必要だけど、 Python/JavaScript は dynamic language としても特に酷かった。Rust は良いけどまだ改善の余地あり。" userName="demosthanos" createdAt="2025/06/17 23:22:43" color="#ff5c5c">}}




{{<matomeQuote body="これ陰謀論だけど、 microservice って cloud が儲けるための pattern じゃない？ K8S なしで動かせなくしたり、 bandwidth/CPU 使わせたり。state を共有しにくくして managed DB/queue (Kafka とか) 使わせたり。 local で動かせなくして cloud に dev 環境作らせたり。 cloud lock in 増やしたり。 cloud が IT 費用節約って言われてたの笑えるよね。2000年代から BS だと思ってた。全部高くつくだろって。" userName="api" createdAt="2025/06/17 23:59:56" color="#ff33a1">}}




{{<matomeQuote body="俺が今まで聞いた中で唯一役に立つ ”service” の定義は「 database 」ってやつだよ。jobs と network calls が何かってのは関係ない。 database が二つあれば jobs が一つでも二つの service 、一つの database を二つの jobs で共有してたら一つの service だ。かつて10チームで一つの database を共有してたんだけど、あらゆる意味でそれは一つの huge な service だった（そして disaster だった）。" userName="frollogaston" createdAt="2025/06/18 00:26:38" color="">}}




{{<matomeQuote body="今関わってるサービスには25個くらいのパッケージがあるんだ。言語的に見れば、それぞれのパッケージは「モジュール」で、「public」なAPIを持ってる。でもマイクロサービスっていう観点だと、全体が1つのモジュールで、メソッドは数個しかないんだよね。" userName="closeparen" createdAt="2025/06/18 05:42:15" color="">}}




{{<matomeQuote body="俺たちはモノリスの中のモジュールが、ちゃんと定義されたAPIからだけ呼び出しあえるようにして、それ以外の呼び出しはCIでエラーになるようにすることで、この問題を解決したんだよ。" userName="stavros" createdAt="2025/06/18 00:07:01" color="">}}




{{<matomeQuote body="でもなんで、モジュールのユーザーが依存パッケージを気にする必要があるんだ？メソッド数個だけのモジュールだって、それがインターフェースとして機能するじゃないか。" userName="rcxdude" createdAt="2025/06/18 06:56:46" color="">}}




{{<matomeQuote body="顧客は、全然関係ない機関が合併してできた政府機関なんだ。合併で何十人、下手したら百人超のデベロッパーが来た。当然、一貫性も組織構造もない。元々の機関もバラバラで、適当な小さい開発チームに金だけポンと出す。そいつらは喜んで金を受け取る！金はただ…消える。まるで手品か、パリみたいな遅れた場所で旅行者をカモるスリみたいだ。俺は「クラウドコンサルタント」として最後に1、2週間呼ばれて、ぐちゃぐちゃのコードを本番にデプロイするんだ。これがいつも揉め事になる。だってスリが売ったコードは何もするのに向かない、特にPIIや金を扱うなんて無理。でも予算は使い切って、進捗報告はずっとOKだったんだ。根本的な問題は、PaaSやIaCとかで「クラウドに行く」って言ってるけど、それが何を意味するのか、適正なコストでやるために必要な監視を完全に理解してないこと。「でもMicrosoftの感じの良い営業さんが、クラウドは安いって保証したのに！」ってさ。" userName="jiggawatts" createdAt="2025/06/17 22:26:52" color="#ff33a1">}}




{{<matomeQuote body="100パーセントこれだね。君の言う通りだよ（シャレね）。<br>いろんなパイプライン、IaC、IaCをデプロイするためのパイプライン、テスト/開発/ステージング/その他環境、組織の権限戦略とかも忘れないでね。<br>俺が大きな、えー、クラウド会社でコンサルとして働いてた時、ソリューションはよく「ベストプラクティス」に合わせたものだった—つまり実際には、監視、ログ、NoSQL、キューとか色々な統合が入った、大きくて複雑なサーバレス/コンテナ構成。RPIでRoRかNodeJSを動かせば汗もかかずにサービスできるような、ちっちゃいもののためにね。<br>稀な例外を除いて、シンプルにVMでGoのサーバ動かして、ロードバランサーの裏でオートスケーリングさせて、マネージドデータベース使うみたいな、普通すぎる構成はできなかった。あまりに平凡すぎるんだと。<br>確かに「高可用性」のための「ベストプラクティス」だけど、ほとんどの場合やりすぎで、トラブルシューティングは悪夢だったよ。" userName="nyarlathotep_" createdAt="2025/06/18 01:02:26" color="#ff33a1">}}




{{<matomeQuote body="これは大体、チーム間でシステムを分割するためだと思うんだよね。その方が管理しやすいから。技術的な決定ってより、開発のやり方の問題だね。<br>代替策は何？Mono-repo？俺的にはそれよりひどいと思うけど。" userName="npodbielski" createdAt="2025/06/18 12:59:11" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="たった20行のbashスクリプトだよ。sqliteに何かをパイプすれば終わり。<br>でもそいつは「仕事をやり遂げることで知られている」らしいな、どうやら。" userName="isoprophlex" createdAt="2025/06/18 10:30:25" color="#ff33a1">}}




{{<matomeQuote body="マイクロサービスとMono-repoは排他的じゃないんだよ。モノリスはそうだけどね。重要な区別だと思うな。Mono-repoでのマイクロサービスは間違いなくうまくいくし、俺の経験ではマルチrepoよりずっと優れてるよ。もちろん最高の組み合わせはMono-repoとモノリスだけどね :3" userName="nothrabannosir" createdAt="2025/06/19 00:12:34" color="">}}




{{<matomeQuote body="Java界隈だとSpringとかGuiceがこれをやるためにあるんだよ。ISomethingがあれば、ILocalSomethingとIDistributedSomethingを作って簡単に切り替えられる可能性があるんだ。" userName="PaulHoule" createdAt="2025/06/18 00:22:17" color="">}}




{{<matomeQuote body="今はSaaSにどっぷり浸かった世代のデベロッパーがいて、文字通りそれ以外のやり方を知らないし、簡単なことをするのにどれだけパワーが必要か、めちゃくちゃ歪んだ見方をしてるんだ。それ以外のことで人を雇うのが難しいね。マシンの管理が分からないから、一部のワークロード（特に帯域幅）で何千倍も安いベアメタルなんてありえない。Raspberry Piで十分ってのは全然大げさじゃないよ。" userName="api" createdAt="2025/06/18 02:10:48" color="#ff5733">}}




{{<matomeQuote body="あいつが書いたプログラムがUnixのcutとpasteの再実装だって、管理職は知らねーのさ。だからそいつは無知につけ込んで評価されるってわけ。正直、基本的なUnixユーティリティを余計な手順で再発明して金稼ぎしてなかったら、経済は崩壊するかもな。" userName="bee_rider" createdAt="2025/06/18 11:16:01" color="#38d3d3">}}




{{<matomeQuote body="見てきたのはそれだけなんだ。なぜやってるかわからない。ジュニアがアーキテクトぶってるだけだからね。この業界には全く使えないシニアやアーキテクトが多すぎる。<br>AIが仕事を奪うって話の本質はこれだ。企業でよく見るよ。経験年数だけあって専門知識が浅い人が多い。大きな非テック系企業とかで、「Enterprise Architects」とか名乗って会議ばかり、C#を少ししか書かない人たち。ソフトウェア業界って本当に変。何年経験しても、その「経験」の中身を理解してないと価値にならない。" userName="nyarlathotep_" createdAt="2025/06/18 00:53:55" color="#38d3d3">}}




{{<matomeQuote body="正確に言うと、特定の操作がアトミックになる境界があるんだ。例えば、「専用スキーマ」と「データベース」の違いは、DBがトランザクションと災害復旧の境界ってこと。もし2つのサービスを同じDBに入れたら、いくら論理的に分けてもDBAがリストアすればトランザクションは一緒にロールバックされる。これはタイト結合で、独立したアプリとは言えなくなる。多くのアーキテクトは図に矢印描くだけで、アイコンが同じ場所を指すと部分全体がダメになる、という結合を理解してないんだ。" userName="jiggawatts" createdAt="2025/06/19 22:23:06" color="#785bff">}}




{{<matomeQuote body="もし「みんなが」public APIとして意図されたパッケージだけをimportすれば、まあうまくいくんだろうけど、みんなはそうしないのさ。" userName="closeparen" createdAt="2025/06/18 14:37:59" color="">}}




{{<matomeQuote body="開発者がこういうことやるの見たことあるぜ。`from submodule import pandas`<br>なんで？わからんけど、やってるんだ。一度だけじゃないのが恐ろしい。Microservicesでネットワーク呼び出し入れるのは、この場合はバグじゃなくて機能だね。開発者がこんなことするのを物理的に止めるブロッカーだから。ここだけgrugに同意できない。でも、これもうまく使われた場合だけ。ほとんどは流行りとか、会社のウェブサイトに書くためとか、すごい開発者がレジュメ盛るために使われてるんだよ。" userName="dijksterhuis" createdAt="2025/06/18 12:01:42" color="#785bff">}}




{{<matomeQuote body="これは基本的に悪いアイデアだと思うよ。APIがネットワーク依存かどうか、透過的にわからなくなるのは本当に大変だ。クライアントは常にネットワーク呼び出しのコストを払うと仮定する必要があるってことだろ。たとえLocalな実装を使っていてもね。" userName="pbh101" createdAt="2025/06/18 01:03:56" color="">}}




{{<matomeQuote body="「アーキテクチャ」や「パターン」は、役立たずの開発者のための仕事プログラムだ。<br>それなのに、開発者はいつもパターンを使ってるし、アーキテクチャについて考えてるじゃん。お前もここでやってるだろ。「フォーム送信」っていうパターンと、「リクエスト・レスポンス」っていうアーキテクチャをな。" userName="someothherguyy" createdAt="2025/06/17 22:09:34" color="#45d325">}}




{{<matomeQuote body="grugが「複雑さと1対1でT-Rexと戦うなら、grugはT-Rexを選ぶ: 少なくともgrugはT-Rexが見えるから」って言ってるの、週に1回は思い出すよ。" userName="arturocamembert" createdAt="2025/06/17 21:09:32" color="#ff5c5c">}}




{{<matomeQuote body="grugはきっと目に見えないT-Rexとは戦ったことないんだな。<br>このgrugは目に見えないT-Rexと1対1で戦い続けて、呪われてるよ。" userName="boricj" createdAt="2025/06/17 22:23:19" color="">}}




{{<matomeQuote body="記事読んだら、なんか第三の目が開けた感じ！<br>マジ感動したわ〜。" userName="dev0p" createdAt="2025/06/18 10:33:11" color="">}}




{{<matomeQuote body="みんなが同じ問題に集中してるなんて、これフィクションだろｗ<br>リアルじゃありえんからね。" userName="hackable_sand" createdAt="2025/06/18 07:07:58" color="">}}




{{<matomeQuote body="洗練されたコードも書ける人が、経験からあえてシンプルにしてるってとこが良いね。<br>もちろん高度な抽象化とか必要な時もあるけど、それ自体に価値があるわけじゃないっていう哲学はすごく良いアドバイスだと思う。<br>AI使う時も、シンプルで定型的なコードの方が効く感じするしね。<br>YMMV" userName="dgb23" createdAt="2025/06/17 22:10:16" color="#785bff">}}




{{<matomeQuote body="これってあのベルカーブのミームっぽいよね！<br>Novice dev writes simple code<br>Intermediate dev writes complex code<br>Expert dev writes simple code<br>まさにって感じ。" userName="cowthulhu" createdAt="2025/06/18 01:46:08" color="#ff5c5c">}}




{{<matomeQuote body="数年前に会社の中堅devにアドバイスしたんだ。<br>「君は優秀だけど、何でも一番複雑な解決策を探す癖はやめた方がいいよ」ってね。<br>そしたら彼はちゃんと聞いてくれて、今年の初めに昇進したんだ！<br>見てて嬉しかったよ :)" userName="bluefirebrand" createdAt="2025/06/18 05:46:24" color="#ff5733">}}




{{<matomeQuote body="洗練とか抽象化が必要なのは、それを理解するのにいちいち説明がいらないくらい、コードを分かりやすくしてくれる時だね。<br>まあ、どのくらい説明が必要ないかは状況によるけど。" userName="ahartmetz" createdAt="2025/06/17 22:57:54" color="#45d325">}}




{{<matomeQuote body="<br>「全てを可能な限りシンプルにせよ。<br>ただし、シンプルにしすぎるな」" userName="cortesoft" createdAt="2025/06/17 22:50:31" color="#ff5c5c">}}




{{<matomeQuote body="今の開発の皮肉なとこだよね。<br>結局時間短縮になると思って逆に複雑にしちゃうこと。<br>例えばDRYで早すぎる抽象化したり、コンパイルでバグ見つけようとして型を複雑にしたり。<br>定型コード避けるためにマクロやDSL作ったりね。<br>これらって、上手くいく時もあるけど、いつもじゃないんだよね。<br>シンプルにするために、いつ複雑さを導入するかを決められるのが、IMHO、良いsoftware engineerの証だと思うよ。" userName="GMoromisato" createdAt="2025/06/17 23:01:08" color="#785bff">}}




{{<matomeQuote body="経験則を知りたい人には、DRYよりSPoT（single point of truth）の方が良いと思ってるよ。<br>ビジネスロジックは一箇所にまとめるのが理想。<br>それ以外のコードは必要ならコピペで重複させても、それ自体は悪いことじゃないんだ。<br>DRYを調整するために「rule of three」を意識してる。<br>同じコードが3回出てくるまではコピペOKで、それ以上なら抽象化を考えるって感じかな。<br>もちろん絶対的なルールはないし、その感覚を教えるのは難しいけどね。" userName="mplanchard" createdAt="2025/06/18 00:36:21" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
