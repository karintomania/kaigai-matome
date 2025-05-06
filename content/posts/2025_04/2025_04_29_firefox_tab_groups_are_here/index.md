+++
date = '2025-04-29T00:00:00'
months = '2025/04'
draft = false
title = 'Firefoxの新機能 待ち望まれたタブグループがついに使えるように'
tags = ["Firefox", "タブグループ", "ブラウザ機能", "Webブラウジング", "効率化"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> Firefoxの新機能 待ち望まれたタブグループがついに使えるように

引用元：[https://news.ycombinator.com/item?id=43834101](https://news.ycombinator.com/item?id=43834101)




{{<matomeQuote body="うわー、これマジ待ち望まれてた最高の機能じゃん、なのに HN はネガティブなコメントばっか。Mozilla グッジョブだよ。俺もすごいいい”Simple Tab Groups”って拡張機能使ってたけど、こっちに乗り換えようかなって思う。" userName="hardwaresofton" createdAt="2025/04/29 20:05:20" color="#38d3d3">}}




{{<matomeQuote body="拡張機能ベースの XUL のUIハックより断然いいよ。サイドバーをいつ自動展開するか、それを解決できたら完璧になるね。" userName="evanb" createdAt="2025/04/30 01:59:35" color="">}}




{{<matomeQuote body=" Firefox は何年も前に XUL 拡張機能はやめたんだよー今は明確に定義された WebExtension モデルを使ってるんだけど、それはハックとは正反対のものなんだ。" userName="throw10920" createdAt="2025/04/30 02:13:03" color="">}}




{{<matomeQuote body="なのに、XUL 時代にはブラウザの UI をきれいに変更できた拡張機能の多くが、今はもっとハックっぽいユーザー体験になっちゃったんだよね。" userName="wtallis" createdAt="2025/04/30 07:22:30" color="">}}




{{<matomeQuote body="うん、API がまだ完璧に固まってないからね。もしかしたら永遠にそうならないかもだけど、それでも全然問題ないよ。だって WebExtension モデルはパフォーマンス、セキュリティ、移植性、API の安定性って点で明らかに優れてるから。" userName="throw10920" createdAt="2025/04/30 12:08:17" color="">}}




{{<matomeQuote body="パフォーマンスの点から見ると、WebExtensions が明らかに優れてるわけじゃないよ。便利な機能を取り除いて得たパフォーマンスは、カウントしない。" userName="wtallis" createdAt="2025/05/01 15:43:12" color="">}}




{{<matomeQuote body=" sidebery と比べてどう？ 俺はあれの縦タブ使ってて結構気に入ってるんだけど、それを見つけたのは別の機能、コンテナごとの socks5（ローカル IP 用と、必要に応じて mullvad vpn のトンネルを上書きするための安価な VPS を戦略的に配置したもの）のおかげなんだ。" userName="snapplebobapple" createdAt="2025/04/30 01:14:41" color="#785bff">}}




{{<matomeQuote body="それ完全に間違ってる、HN で一番不誠実な主張の一つだね。パフォーマンスは機能に関係なく速さそのもの。機能を取り除いて速くなったとしても、それは速いんだ。車の例えで言うと、機能が少なくても速い車 A を、機能が多い車 B よりスピードで劣ると言う人はいないだろ？機能はパフォーマンス測定には関係ないよ。" userName="throw10920" createdAt="2025/05/01 18:05:10" color="#ff33a1">}}




{{<matomeQuote body="変なの。タブグループ自体は移動できないって細かい不満はあるけど（周りの他のタブを動かす必要がある）、それ以外は俺が欲しいもの全部揃ってる。タブコンテナとも何の問題もなく”ただ動く”し、違うコンテナのグループを一つのグループに混ぜることもできるんだ。" userName="johnnyanmac" createdAt="2025/04/30 07:33:57" color="#ff5733">}}




{{<matomeQuote body="広告会社のインチキベンチマークがどう言おうと、広告ブロッカーを弱体化させても、平均的にブラウザが速くなるわけじゃないんだよね。XULを削除してもTreeStyleTabは速くならなかったし、むしろ逆だったんだ。<br>広告ブロッカーを弱体化させる以外に、WebExtensionsで理論的に性能が向上する要素ってあるの？それとも、出来の悪い拡張機能が悪影響を与える機会を減らすことだけが目的なのかな？" userName="wtallis" createdAt="2025/05/01 18:58:20" color="">}}




{{<matomeQuote body="Sideberyの方がまだ良いと思うんだ。階層的だから、タブがネストできるんだよね。でも、今回のタブグループでそれが変わるのかな？今すぐじゃなくても、将来的に変わる可能性はある？" userName="onli" createdAt="2025/04/30 05:25:00" color="">}}




{{<matomeQuote body="＞広告ブロッカーを弱体化させても、平均的にブラウザが速くなるわけじゃない<br>OK、また論点をすり替えて、言葉を不正に定義し続けて、自分の主張を裏付ける特定の拡張機能だけを選んでるね。君の全くのクレイジーな以前の主張を完全に論破した事実を無視してる。<br>＞広告ブロッカーを弱体化<br>違うだろ？WebExtensionsが広告ブロッカーを”弱体化”させたわけじゃないよ。Manifest v3と混同してるんじゃない？<br>＞XULを削除してもTreeStyleTabは速くならなかった<br>特定の項目だけを選んで自分の主張を支持しようとするのは、一般的な根拠がないことの証明だよ。これは早まった一般化の誤謬だね。WebExtensionsへの移行を経験した者として、僕の10数個の拡張機能で遅くなったと感じたことは一切なかったよ。<br>＞WebExtensionsで理論的に性能が向上する要素<br>あるよ—古い拡張機能モデルの知識が少しでもあれば、XULベースの古い拡張機能がFirefoxのマルチプロセスであるElectrolysisアーキテクチャへの移行を妨げていたことを知ってるはずだ。これでパフォーマンスは大幅に向上したんだ。<br>＞出来の悪い拡張機能が悪影響を与える機会を減らすことだけが目的<br>そう、それも（他の全てに加えて）パフォーマンス上の利点だよ。人間はロボットじゃない—みんな下手でバグの多いコードを書くんだ。そしてXULモデルは、バグが多く遅いコードを書きやすくしただけでなく、明確なインターフェースがなかったために硬直化を引き起こし、MozillaがFirefoxを開発する能力を massively 阻害したんだ。<br>たとえそうでなくても、下位99%のプログラマーが良いコードを書くのを助け／強制し、上位1%のプログラマーの能力を mildly 阻害するような変更は、 absolutely 価値があるし、実際にはパフォーマンスを massively 向上させたんだ。<br>これ以上コメントするのをやめたらどうかな？たくさんの誤謬を犯し、全くクレイジーな発言をし、人間的な要因が存在しないふりをし、何も理解していないことについて発言するのをやめられない限りね。" userName="throw10920" createdAt="2025/05/01 19:41:54" color="#ff33a1">}}




{{<matomeQuote body="垂直タブとタブグループを同時に使ってみたんだけど、「全てのタブを一覧表示」とか「最近のタブグループ」みたいなのが全くないみたいで、他のタブの中にタブグループが埋もれて見えなくなっちゃうんだ。「重複タブを閉じる」機能も垂直タブにはないしね。結局あのメニューに入り続けないといけないから、垂直タブは無効にしちゃったよ。" userName="clumsysmurf" createdAt="2025/04/30 03:49:37" color="">}}




{{<matomeQuote body="Firefox 138になってるか確認してね！<br>リリースノートから引用だよ：<br>＞タブグループをタブバー上でドラッグして位置を調整できるようにもなったよ。" userName="evilpie" createdAt="2025/04/30 07:41:27" color="#ff33a1">}}




{{<matomeQuote body="垂直タブはあまり好きじゃないな。タイトルが途中で切れるのが視野的な美学を損なうんだよね。最近は後で見たい時はタブをピン留めしてるんだけど、それにも限界があるし。" userName="iszomer" createdAt="2025/04/30 03:19:30" color="">}}




{{<matomeQuote body="FirefoxはWebExtensionsへ移行する前にマルチプロセスになったんだよ。Firefox拡張機能がこれまで何回も大規模な絶滅を経験してきたか数えきれないんだろうけど、マルチプロセスに対応するためにアップデートされたXUL拡張機能もあったし、その後XULが廃止された時には完全に新しいUIでゼロから書き直さなきゃいけなくなったんだ。AdBlock PlusやNoScriptといった拡張機能が受けたユーザビリティの打撃はcripplingだったし、MV3ほどひどくはなかったとしても、NoScriptはUIだけじゃなく機能自体を失ったものもあったんだ。" userName="wtallis" createdAt="2025/05/02 00:32:25" color="#ff5c5c">}}




{{<matomeQuote body="僕もFF 138にアップグレードしたよ。アップデート後にはタブグループのブログ記事まで開いたんだけど、設定を15分見ても、ブラウザにタブグループ機能は全くなかった。もちろん、後でプログレッシブ・ロールアウトだって分かったけどね。残念だよ。" userName="throwaway290" createdAt="2025/04/30 11:28:50" color="">}}




{{<matomeQuote body="うん、垂直タブとタブグループが僕にとってSideberyの階層構造とパネルの代わりになったよ。主に、組み込み機能だから少し滑らかでパフォーマンスが良い感じがするからかな。" userName="Vinnl" createdAt="2025/04/30 06:54:50" color="">}}




{{<matomeQuote body="垂直タブを有効にすると、メインツールバーの右端に「List All Tabs」（全てのタブを一覧表示）ボタンが出るんだよ。" userName="wongogue" createdAt="2025/04/30 03:52:20" color="#ff33a1">}}




{{<matomeQuote body="Microsoft Teamsで画面共有する時に、フローティングツールバーが邪魔にならないようにvertical tabsを使ってるよ。すごくうまくいってるし、もう横のタブは別にいらないかな。" userName="microflash" createdAt="2025/04/30 04:38:18" color="#45d325">}}




{{<matomeQuote body="（新機能）試してみたよ！ まだ慣れないけど、たぶんまた試すと思う。慣れるのに十分な時間を与えられなかったかもね。" userName="hardwaresofton" createdAt="2025/04/30 04:01:41" color="">}}




{{<matomeQuote body="そんな拡張機能、最後に使ったのはいつ？ たとえばSideberyは全然ハックみたいじゃないけどな。" userName="bool3max" createdAt="2025/04/30 06:16:34" color="">}}




{{<matomeQuote body="Sideberyと一緒にVertical tabsをしばらく使ってるよ。最小化されたvertical tabsはブラウザの上部がすごくすっきりして良い感じ。でも、Sideberyにはツリー構造とか整理用のパネルがたくさんあって、内蔵のvertical tabsにはまだできないんだ。だから今のところほとんどのナビゲーションはSidebery中心かな。タブグループは注目してるよ、Sideberyで複数のパネルを使ってる一部の役に立つかも。個人的にはネイティブな”ツリー構造”がもっと欲しいんだけどね。" userName="WorldMaker" createdAt="2025/04/30 16:04:59" color="#785bff">}}




{{<matomeQuote body="Sideberryとかtreestyletabより良いと思うな。ただ、僕はあの二つの階層機能は使ってなかったからね。こっちの方がシンプルで統合されてて使いやすいよ。" userName="phito" createdAt="2025/04/30 10:33:53" color="#ff5733">}}




{{<matomeQuote body="まさにそう、”list all tabs”はvertical tabの機能のスーパーセットだし、vertical tabsにないことのためにどうせそこに行かなきゃいけないから、vertical tabsは無効にしたんだ。" userName="clumsysmurf" createdAt="2025/04/30 04:31:11" color="">}}




{{<matomeQuote body="最近Sideberyに乗り換えたところなんだ。比較してみないとな。Sideberyは本当に気に入ってるよ、仕事のワークフローがすごく整理されたんだ。" userName="wickedsight" createdAt="2025/04/30 05:55:52" color="#785bff">}}




{{<matomeQuote body="FirefoxがWebExtensionsに移行する前にマルチプロセスになった？ だから？ XULアドオンの廃止はマルチプロセスアーキテクチャの前提条件だったんだよ。MozillaはただWebExtensionsがe10sと相性が良くて、Chromeとの互換性にも役立つ、健全で高性能な拡張APIだって気づいただけ。<br>Firefox拡張機能の大量絶滅？ 2回だけだよ。全然多くない。<br>XULモデルはWeb Extensionsモデルに劣る。ローカル機能やパフォーマンスの低下があった特定の拡張機能の例をいくら挙げたところで、①XULアドオンシステムが劣っていたこと、②Firefox全体をより高性能・安全・安定・メンテナンスしやすくするために廃止が必要だった、という事実は揺るがないんだ。" userName="throw10920" createdAt="2025/05/02 02:08:35" color="#45d325">}}




{{<matomeQuote body="Sideberyは最高だけど、僕が知る限りタブの状態をブラウザ間で同期できないみたいなんだ。TabStashは見た目はそこまで洗練されてないけど、Firefoxのブックマークを使ってその機能を実現してるよ。" userName="pantulis" createdAt="2025/04/30 07:40:56" color="#ff5c5c">}}




{{<matomeQuote body="＞おお、これは待ち望まれてた素晴らしい機能なのに、HNはネガティブなコメントばかりだね。<br>君はただ（コメントすることでそれに加担してる）反抗的なダイナミクスを経験してるだけだよ。" userName="latexr" createdAt="2025/04/30 09:49:11" color="">}}




{{<matomeQuote body="ある程度タブが開くと、垂直タブの方が水平タブよりタイトルが切り詰められにくいよ。あと、中心視界に表示されるタイトル量も、縦長の形より四角っぽい形の方が多くなるんだ。" userName="Zecc" createdAt="2025/04/30 06:43:16" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="普段タブを10個以上開かないから、自分にはあんまり関係ないかも。でもめっちゃ興味深い！<br>みんなそんなに大量のタブ、何に使ってんの？普通の”人”って。面白そうなものをとりあえず開けとくブックマーク代わり？履歴やブックマークから見つけられなくなるのが怖い？それって履歴とかブックマークが使いにくいのが原因？批判してるわけじゃなくて、自分と違うツールの使い方見るのが面白いんだ。" userName="canadianwriter" createdAt="2025/04/29 15:58:39" color="#ff5c5c">}}




{{<matomeQuote body="約2000個タブ開いてる。タブ管理はSideberry使用。「面白そうなものをとりあえず開けとくブックマーク代わり？」って質問？そう、そんな感じ。有限の時間内じゃ「終わらない」タブがいっぱい。例えばスチームジェネレーター探しで30～40個関連タブを開けてる。買い終わったら閉じる。Sideberryのタブグループ機能もたまに使うけどあんまり。忘れちゃうタブが多いのは難点だけど、頭のコストも計算のコストもほぼゼロなんだ。" userName="PaulDavisThe1st" createdAt="2025/04/29 16:16:13" color="#38d3d3">}}




{{<matomeQuote body="マジか、2kタブって！Sideberryは知らないんだけど、2kもあるとそれってもはや普通の’タブ’じゃなくてブックマークみたいなもんじゃない？「計算のコストはほぼゼロ」って、普通のFirefoxタブでもそうなの？（普段はChrome/Safariだけど）。それぞれメモリ使ったり、バックグラウンドタスク動かしたりしないの？もしどれかのタブでオーディオが鳴り出したら、どうやって見つけるの？" userName="radicality" createdAt="2025/04/29 16:29:15" color="#38d3d3">}}




{{<matomeQuote body="タブを閉じる習慣がない。どんどん増えてタイトルが見えなくなる。後で見ようと思って閉じないタブもある。結局、同じタブをまた開けちゃうことも。たまに「タブ破産」して、全部ブックマークしてから閉じる。でもそのブックマークは一度も見返したことない。[EDIT]タブを閉じるのに一つずつ評価が必要で時間がかかるのが問題。アイコンだけだとページを見なきゃいけない。UIの問題だね。ブラウザ開けてるときは基本的に作業中で「タブ整理」はしない。「新しいタブ」を開けて始めるのがいつもの行動。" userName="alabastervlog" createdAt="2025/04/29 16:03:04" color="#785bff">}}




{{<matomeQuote body="「約2000個タブ開いてる。Sideberryでタブ管理。」って？僕？Firefox + Sideberryで”オープン”タブが14571個でも完璧に動いてるって報告しに来ただけだよ。数百個以外はアンロードされてるし、JavaScriptも結構ブロックしてる。今んとこメモリは1992 MB使ってる。自分が問題抱えてるって言われても反論しないけど、FirefoxとSideberryのおかげで問題じゃなくなってるって言いたいね！" userName="quesera" createdAt="2025/04/29 18:29:22" color="#785bff">}}




{{<matomeQuote body="「それぞれメモリ使うんじゃない？」って？Firefoxは最近使われてないタブや、メモリがシステムの限界に近づくとタブをアンロードするよ。手動で一番最近使ってないロード済みのタブをアンロードすることもできるんだ。" userName="ziddoap" createdAt="2025/04/29 16:44:55" color="#ff33a1">}}




{{<matomeQuote body="うん、でも実際のところ、Firefox（少なくともLinuxだと）メモリが少なくなるとOSに強制終了されるのを経験したよ。最近、低優先度の読書プロジェクトのタブセットをいくつか失ったんだ（数ヶ月前に開けたやつだから、履歴から掘り出すのが大変だった）。だから、Sideberryと手動の’アンロード’タブオプションを結構使うようになったんだ。" userName="seltzered_" createdAt="2025/04/29 17:40:43" color="#38d3d3">}}




{{<matomeQuote body="ー「みんなそんなに大量のタブ、何に使ってんの？普通の”人”って？」<br>そこでなんで「普通」って言葉使うの？僕は無限の好奇心と注意欠陥のせいで何千個もタブを開けてるんだよ。開けてるタブってのは、短い人生じゃ実現できそうもない好奇心を真剣に表現したものなんだ。<br>ー「人の手は掴めるものより先に届くべき、そうでなきゃ天国は何のためにある？」だろ？" userName="perihelions" createdAt="2025/04/29 18:56:25" color="#ff5c5c">}}




{{<matomeQuote body="Arc使ってみたことある？こないだ乗り換えたんだけど、あっちのちょっと永続的な”タブ”への考え方、面白いよ。最初はブックマークが恋しかったけど、あれって自分がブラウザを使いたいやり方に実際はもっと近いんだなって分かった。" userName="barbazoo" createdAt="2025/04/29 16:23:05" color="">}}




{{<matomeQuote body="俺はタブを溜め込むタイプじゃないけど、Tab Groupsは将来見たいYouTube動画を貯めとくのに使ってるよ。前はPin Tabでまとめてたけど、Tab Groupsだとほぼ無限に動画を入れられて、折り畳むとfavicon1個分のスペースしか取らないんだ。" userName="breput" createdAt="2025/04/29 16:04:51" color="#785bff">}}




{{<matomeQuote body="Arcが好きだけど、オープンソースとかBlinkとかChromium以外が良いなら、ZenってブラウザがFirefoxベースでArcっぽい見た目だよ。https://zen-browser.app/" userName="cassianoleal" createdAt="2025/04/29 16:33:22" color="">}}




{{<matomeQuote body="えー、仮に今2200個もタブが開いてるとしてさ、どうやって例えば左から330番目のタブを開くの？どうやってアクセスするの？" userName="coldpie" createdAt="2025/04/29 19:04:33" color="">}}




{{<matomeQuote body="Firefoxを再起動した後、また開くまでタブは読み込まれないんだよ。だから90%以上のタブは、実質ブックマークみたいなもんだね。" userName="PaulDavisThe1st" createdAt="2025/04/29 16:43:26" color="">}}




{{<matomeQuote body="やばいね！大量にブックマークするなら、それってただの履歴じゃん？だったらブラウザの履歴使えばよくない？" userName="iworshipfaangs2" createdAt="2025/04/29 16:41:45" color="">}}




{{<matomeQuote body="YouTubeはPin Tabにすると、ずっとレンダリングされてるから良くないんだ。リークするからね。" userName="chupasaurus" createdAt="2025/04/29 18:33:23" color="#38d3d3">}}




{{<matomeQuote body="”どうやってアクセスするの？”と”もうアクセスするの諦めた？”は別の質問だよ。<br>たまにOmnibarの検索結果に出てくるんだ。開いてるタブは結果の上位に来るんだよ。" userName="perihelions" createdAt="2025/04/29 19:10:14" color="#38d3d3">}}




{{<matomeQuote body="いや、完全に同じじゃないんだ。俺が使うタブサスペンダーは、DOMの状態とかをディスクに保存するから、タブを再読み込みしても閉じる前の状態にかなり近いんだ。<br>もちろん、完全なリフレッシュを強制するページもあるけど、大体は前の場所に戻れるよ。" userName="OneDeuxTriSeiGo" createdAt="2025/04/29 17:07:36" color="#ff5c5c">}}




{{<matomeQuote body="”常にレンダリングされる”ってどういう意味？詳しく教えてくれる？" userName="firefax" createdAt="2025/04/29 18:55:25" color="">}}




{{<matomeQuote body="テストによると、64GBメモリがあればFirefoxとtree style tabで4万個以上のタブも大丈夫だったよ。<br>タスクマネージャーでタブをアンロードできるようになってから、すごい数のタブを持つのがさらに簡単になったね ;-)" userName="m4rtink" createdAt="2025/04/29 18:45:31" color="#45d325">}}




{{<matomeQuote body="面白いね、だって3つのbrowserの中でFirefoxがメモリ管理で一番優れてるはずだから。tabsのunloadingとかSessions recoveryもできるし。でも俺はWindowsとMacでしか使ったことないんだ。だからLinuxのことは全然わかんないんだよね。About:memoryでどのtabsがmemory食ってるか調べられるし、manual memory compactもできるよ。それにFirefoxはunlimited Historyなんだ。90日以上history残せないChromeとは違ってね。" userName="ksec" createdAt="2025/04/29 18:03:08" color="">}}




{{<matomeQuote body="omnibar featureはbookmarkやhistoryも検索できるから、tabを閉じても同じ方法で復元できるよ。でもそれはbookmarkしようと思ったか、browser historyから時間が経ってage outするのを受け入れるか次第だけどね。だから、ある意味 fragile bookmarkみたいな感じかな。多分reliableだけど、もしtab restorationが何かreasonでfailedしてもthe end of the worldじゃないって感じ。<br>あと、（I assume）tabsはPrevious Page listをretainしてるはず。これもちょっとvalueがあるね。Interesting。discussionありがとう！" userName="coldpie" createdAt="2025/04/29 19:15:22" color="">}}




{{<matomeQuote body="Mainly理由は、tabs、bookmarks、and historyのinterfacesが、unifiedであるべきなのに、all quite disparateだからだよ。None of them are good、but the interface for tabsはmore manageable。" userName="alanbernstein" createdAt="2025/04/29 16:08:08" color="">}}




{{<matomeQuote body="Basically they have a higher priority than regular tabs、mentioned here [0] in context of unloading and the same applies to execution scheduling。[0] https://hacks.mozilla.org/2021/10/tab-unloading-in-firefox-9..." userName="chupasaurus" createdAt="2025/04/29 19:55:27" color="">}}




{{<matomeQuote body="This sort of thing sounds like a fantastic use of Firefox’s bookmarks system。" userName="pdntspa" createdAt="2025/04/30 01:36:08" color="">}}




{{<matomeQuote body="メタファーで説明してみようか。buildingの中でroomごとに違うprojectをやってる想像してみて。毎晩cleaning crewが来て、全部tidies upしちゃうんだ。次の朝また始めるのにminutes to hoursかかるし、ADHD as fuckだからwhere you left off exactly覚えてない。That is what俺のlife feels like without tab groups。" userName="bityard" createdAt="2025/04/29 19:44:24" color="#ff5c5c">}}




{{<matomeQuote body="session manager extensionを使って、periodic snapshotsをするのがsuggestだよ。" userName="m4rtink" createdAt="2025/04/29 18:47:13" color="">}}




{{<matomeQuote body="なんでnormal peopleはso many tabsを使うかって？Basically、bookmarking webpagesはbroken since the 1990s。meaningful nameでbookmarkしてもfind it againするのがtoo difficult。(without extensions... Nextcloudにsaveするoneがあるけど) Bookmarkingはlocal、だからwork computerやhome computerやphoneにstranded。And、they go stale。openするtabsのManyはsoon after closedできる、certainly a few days on。Perhaps even most。But they’re mixed in with tabs that I would like to keep that content longer-term、and it’s tedious to go back through closing them。Giving me tools to have ever-more-complicated schemes to arrange them would only make the problem worse、not better。<br>Is this more an issue with bookmarks and history not being as useful as they could be？Historyはbookmarkingよりもeven more fucked up、which is saying something。close tabs carelesslyすると、closed tabs listに行く、which is so full of junk that finding them again will be impossible。full historyを使うと、hundreds of pages per dayでso spammed up that I’ll never find anything in that。forensic data techniciansのteamなんていない。Bookmarkingはsalvageable as a concept、if someone were to truly nail the implementation、but history hasn’t been useful since 1995。<br>Not judging or anything、It’s ok。Judge me。I know I have a problem。<br>PS at least some of this problemは、good note-taking appが見つからないからかも。それがあればbookmarking pagesよりsuperiorなnotesをjot downできる。one-liner on the command lineみたいなtrickはkeep clear in my headできない。stack overflow pageへのlinkじゃなくて、comment付きのexampleが必要。But note-taking software’s probably more difficult to get right than bookmarking。anywhereからaccessできる必要があるけど、corporate cloudにheld hostageされたくない。rich textが必要、but something around the level of markdown、not Evernote’s ”paste a pdf into it” crud。I am subscription-averse。And so on。" userName="NoMoreNicksLeft" createdAt="2025/04/29 16:22:19" color="#ff5c5c">}}




{{<matomeQuote body="More or less what you written ＋ sometimes toxic multitasking I would leave one work half done and start something different。Also sometimes I open new tab instead of working in the already opened one（that could be solved by some kind of tab dedup）。Fun Fact IOS Safariにはper group 500 pagesのlimitがあるthen you have to open a new one。" userName="fikama" createdAt="2025/04/29 16:03:21" color="">}}




{{<matomeQuote body="What are you using to unload tabs？I’ve got to confess that my FF memory managementはa run-as-needed-or-think-it-should-be-needed shell script which arbitrarily kills the top 10 Firefox processes by memory utilisation。If I’m leaving my desktop for a while I’ll run that several times。<br>Tree-style Tabsはthe slots open keeps、and can reload tabs as needed。<br>I’d really like to have the capacity to unload all tabs other than、say、a specifically-specified set。Though on balance、the tabs that are likely to be most usefully kept open also tend to be the worst memory offenders。<br>If I fail to prune、MacOS falls over early and often、which is somewhat unpleasant。" userName="dredmorbius" createdAt="2025/04/30 01:10:09" color="#45d325">}}




{{<matomeQuote body="スクショ見る限りUIひどいね。<br>またユーザーを”ごみ”から救う必要のあるバカとして扱うソフトが出てきたか。" userName="imcritic" createdAt="2025/04/29 22:50:42" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="めっちゃArcパクってるけど、Zenは核となるタブ整理機能が全然ダメ。<br>ピン留めキーバインドもないし、Firefoxのブックマーク優先だし。<br>Arcのタブシステムは全部置き換えるものだから、Zenは浅く感じる。<br>適当にArc機能詰め込んだFirefoxって感じ。<br>でもArc (macOS)はめちゃいいよ。<br>他のブラウザ使えなくなったレベル。<br>Arc windowsはMac版より全然ダメだけど、主要なタブ管理機能はしっかりしてるらしい（聞いた話）。" userName="ibll" createdAt="2025/04/30 06:15:26" color="#ff5c5c">}}




{{<matomeQuote body="Mozillaがベビーステップを踏み出したのは良かったけど、今のUIはダメ。<br>グループ名が必須なのが（タブバーのスペースも取るし）摩擦多すぎ。<br>キー一つでグループ解除できないし、ドラッグ＆ドロップでのグループ化がpreciseすぎて邪魔なのに無効化できない。<br>カスタムキーバインドのリクエストも、数年経ってもまだ実装に必要な票数に全然届いてないね…" userName="eviks" createdAt="2025/04/29 17:46:01" color="#785bff">}}




{{<matomeQuote body="Mozillaは勝てないね。<br>機能を実装しても、本来ターゲット層であるはずのコミュニティからのコメントがこれだよ。" userName="maccard" createdAt="2025/04/29 21:52:49" color="">}}




{{<matomeQuote body="長年ユーザーとして言わせてもらうと、誰も気にしてない”あなたの機能を投票して”サイトなんてない方がマシだね。<br>そこでは提案が死にに行く場所だよ。<br>多くの請願サイトみたいに、ああいうのは自分の声が重要だってユーザーをだますためだけに存在してるか、またはMozillaがユーザーが何を言ってるか気にしてるって自分自身をだますためだけだよ。" userName="sph" createdAt="2025/04/30 08:38:13" color="">}}




{{<matomeQuote body="名前の代わりにアイコンを使えるようになったら嬉しいな。<br>メンバータブの一つからfaviconを選べるとかさ。" userName="GordonS" createdAt="2025/04/29 18:38:23" color="">}}




{{<matomeQuote body="グループ名に絵文字一個使えるよ。" userName="reustle" createdAt="2025/04/29 20:07:58" color="">}}




{{<matomeQuote body="これができるって聞いてよかった。<br>俺のブックマークフォルダもたまに絵文字一個だけだよ。<br>スペース取らないのに内容がなんとなく分かるんだよね。" userName="accrual" createdAt="2025/04/29 21:45:42" color="">}}




{{<matomeQuote body="タブグループの名前付けが必須って？オレ137.0.2使ってるけど、名前なしのグループ普通に作れたぞ。全然大丈夫だった。スペースは重要だよね。" userName="johnnyanmac" createdAt="2025/04/30 07:53:32" color="">}}




{{<matomeQuote body="タブをまとめると、入力フィールドにフォーカス移っちゃうんだよ。余計な操作で消すか決定しなきゃいけない。それが「摩擦」ね、何も入力しなくてもだよ。水平タブだと場所一つ一つが大事なんだよ。" userName="eviks" createdAt="2025/04/30 08:06:51" color="">}}




{{<matomeQuote body="「摩擦」って言うけど、完全に好みの問題みたい。名前付けたいなら入力フィールドへのアクセスが手間ってことか。オプションはいいけど、最初のリリースで全部対応は無理でしょ。「場所一つ一つが大事」って言うけど、場所ゼロにしたいならタブ閉じれば？たかだか5ピクセルの帯なんて誰かの役に立つとは思えないな。" userName="johnnyanmac" createdAt="2025/04/30 09:52:46" color="">}}




{{<matomeQuote body="機能全体が好みだって、だから何？<br>摩擦は避けられる方法あるし、最初のリリースだからって言い訳はダメ。無駄ゼロにしたいのであって絶対ゼロじゃない！<br>「5ピクセル」とか適当言う前に、実際測って、画面に収まらないユーザー割合見ろよ。それが無駄ゼロが役立つ人の数だよ。" userName="eviks" createdAt="2025/04/30 10:21:19" color="">}}




{{<matomeQuote body="機能の好みは当然で、カスタマイズがベスト。まずはデフォルト固めるのが妥当だろ。「ダメな言い訳」って言うけど、もう2回アプデ来てるし、少しずつリリースの方がいい、「彼らに料理させとけ」ってね。<br>「無駄ゼロ」って何？人や文化で違うし。デザイナーもちゃんと測って、タブ数広範囲対応は大変なんだよ。平均タブ数は少ないらしいしね。" userName="johnnyanmac" createdAt="2025/04/30 10:46:31" color="">}}




{{<matomeQuote body="「ソリッドなデフォルト」なんて言えないし、「彼らに料理させとけ」？何十年も時間あっただろ！<br>少しずつリリースって言い訳もダメ。今のデザインは複雑だし。5ピクセルとか適当言う前に、デザイナーの話は関係ない。<br>広い範囲対応に難しさなんてない。無駄はすぐ明らか。タブ数関係ない。<br>「平均タブ数は少ない」って具体的な情報じゃないだろ。「誰か」って何%？" userName="eviks" createdAt="2025/04/30 12:29:04" color="">}}




{{<matomeQuote body="摩擦なんてないって。グループ作った後にやろうと思ってたこと進めるだけでいいんだよ。名前付けのポップアップは一時的なもので、他のこと何かしたら消えるから。" userName="just6979" createdAt="2025/04/30 16:27:55" color="">}}




{{<matomeQuote body="ああ、そうだねー<br>ページスクロールで下矢印押す：動く<br>グループコマンド実行：入力フィールドにフォーカス移る<br>”一時的なもの”消えるように下矢印押す。あれ？消えないじゃん、入力フィールドが実際に入力受け取っちゃうんだから！" userName="eviks" createdAt="2025/04/30 16:34:51" color="">}}




{{<matomeQuote body="「ドラッグ＆ドロップは精密すぎる」って？まあ、それはそれとして、複数タブ選んで右クリックの”Add tabs to group”でもできるよ。" userName="DamnInteresting" createdAt="2025/04/30 20:45:25" color="">}}




{{<matomeQuote body="いやー、ジェットコースターみたいな記事だったね。結局、今使えるのか、どのバージョンか、有効化や使い方、ドキュメントやバグ報告先とか、全然分かんなかったぞ。唯一のトップリクエストに集中したって？次は何？20年前からあるバグでも直すの？" userName="dizhn" createdAt="2025/04/29 18:06:49" color="">}}




{{<matomeQuote body="＞安定版で使えるか書いてないね<br>ってあるけど、俺はアップデートしたら機能の告知画面が出たから、アップデートすれば使えるみたいだよ。<br>＞20年も前のバグがまだあるの？<br>ブラウザって難しいみたいだね。これ見てよ https://gbhackers.com/google-to-patch-23-year-old-chrome-bug/" userName="godelski" createdAt="2025/04/29 18:16:46" color="">}}




{{<matomeQuote body="アップデートした（Firefox 138.0）けど、動画とかチュートリアル通りにやっても機能が出てこないんだ。<br>サポートページ見たら https://support.mozilla.org/en-US/kb/tab-groups 、「この機能は試験的で、段階的に導入されてるから、まだみんなは使えないかも」って書いてあったよ。<br>数日待つしかないのかな？" userName="esnard" createdAt="2025/04/30 08:26:49" color="#45d325">}}




{{<matomeQuote body="about:configでbrowser.tabs.groups.enabledをtrueに設定してみなよ。（俺は137だけどこれでできたよ）" userName="dizhn" createdAt="2025/04/30 09:19:09" color="#45d325">}}




{{<matomeQuote body="これ、実際の機能に関する良いリンクだよ。優先順位付けのプロセスじゃなくてね：https://blog.mozilla.org/en/firefox/firefox-tab-groups/" userName="SloopJon" createdAt="2025/04/29 19:45:00" color="#ff5733">}}




{{<matomeQuote body="どうやら新しいプロファイルマネージャーも出たらしいね。ようやく以前の使いにくいやつよりシンプルになったって。俺のワークフローでChromeを完全に捨てるのに、これが本当に最後の必要機能だったんだ。<br>https://support.mozilla.org/en-US/kb/profile-management" userName="m4r1k" createdAt="2025/04/29 16:34:12" color="#45d325">}}




{{<matomeQuote body="この機能がついに改良されたのは素晴らしい！でもFirefox 138にはいくつか制限があって、まだちょっと物足りない感じかな。<br>・右クリックメニューに「Open in プロファイル名」がないのが不便。別のプロファイルで開きたいリンクってよくあるのに、Chromeにはあったんだ。<br>・既存のabout:profileのプロファイルは、最初の以外インポートできない。手動でDBをいじればリストには出るみたいだけど、まだ少しおかしいんだ。<br>・他のアプリから特定のプロファイルでリンクを開く方法もよく分からない。「-P プロファイル名」はもう動かなくて、「--profile フルパス」なら動くみたい。プロファイル名だけで開けるといいんだけどね。" userName="terinjokes" createdAt="2025/04/30 00:34:20" color="#ff33a1">}}




{{<matomeQuote body="まあ、とりあえず始まったってことだね。これから良くなる一方だろう。新しいプロファイル管理の基本的なところが安定したのが重要だよ。他の機能もこれに続くといいな。段階的導入してるのはちょっとイライラするけどね。" userName="m4r1k" createdAt="2025/04/30 09:47:50" color="">}}




{{<matomeQuote body="＞Firefoxは、同じデバイスで同じMozillaアカウントを使って複数のプロファイルを同期するのを防ぎます。新しいFirefoxプロファイルを作って、そのデバイスの別のプロファイルで使ってるのと同じMozillaアカウントでSyncしようとすると、Firefoxはプロファイルを分けるためにサインインをブロックします。<br>これって一時的な技術的な制限なのかな？それとも直す予定あるの？なんでユーザーがどのプロファイルがどのデバイスで同期してるか覚えなきゃいけないわけ？" userName="philsnow" createdAt="2025/04/29 18:36:43" color="#ff33a1">}}




{{<matomeQuote body="それは壊れてるんじゃなくて、たぶんそういう仕様なんだと思うよ。プロファイルって色々な意味で別々になってるからね。全部のプロファイルを同期させるのは、かえって望ましくない場合もあるんだ。（例えば仕事用と個人用とか、意図的に分けてる場合）。これは以前のFirefoxやChromeとは違うけど、「separate」（別々）なものは本当に「separate」であってほしいってユーザーは期待するんじゃない？（container tabsとprofileの機能を混同してる人はすごく混乱してるみたいだけどね）。逆に、なんで急に全てのプロファイルが同じアカウントに同期されることを知らなきゃいけないんだ？たとえそれが意図されてて、ゼロから始める感じだとしても。" userName="pxoe" createdAt="2025/04/29 19:51:15" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
