+++
date = '2025-07-17T00:00:00'
months = '2025/07'
draft = false
title = 'Notionデスクトップアプリがあなたの音声とネットワークを監視中！'
tags = ["Notion", "プライバシー", "監視", "データセキュリティ", "AI"]
featureimage = 'thumbnails/color4.jpg'
+++

> Notionデスクトップアプリがあなたの音声とネットワークを監視中！

引用元：[https://news.ycombinator.com/item?id=44594790](https://news.ycombinator.com/item?id=44594790)




{{<matomeQuote body="Notionのデスクトップアプリが会議中に「AIミーティングノートを開始しますか？」って通知出すんだ。最初はGoogle Workspaceでカレンダー見てるのかと思ったけど、遅れて参加しても通知が来るから違うって気づいたよ。<br>Notionサポートからの回答は「マイク監視とネットワークポート分析を組み合わせた検出」だって。OSレベルでマイクとネットワークを監視してるってこと。だから、もうNotionデスクトップアプリはアンインストールしたわ。" userName="HoyaSaxa" createdAt="2025/07/17 15:59:54" color="#45d325">}}




{{<matomeQuote body="やっほー！<br>1. Notionが音声を録音するのは、ミーティングノート機能を使った時だけだよ。詳しくはここ見てね: https://www.notion.com/help/ai-meeting-notes<br>2. Notionデスクトップアプリの会議通知は、マイクがオンになったのを検出してるだけで、マイクからの音声は聞いてないよ。この機能は設定でオフにできるんだ。通知 ＞ デスクトップ会議検出通知ってとこでね。ソース: Notionで働いてるんだ。" userName="wustep" createdAt="2025/07/17 18:54:09" color="#785bff">}}




{{<matomeQuote body="詳しく言うとね、<br>Notionデスクトップアプリは、Zoomみたいにマイクを使ってるプロセスがあるかを調べてるだけだよ。Notionは、マイクから入ってくる音声を環境的に聞いたり、他のアプリが受け取った信号を盗み聞きしたりはしないし、できないよ。検出は、マイクを使ってるプロセスがあるかどうかだけで、音声は関係ない。OSのマイクインジケーターを見れば、Notionがマイクを使ってないことがわかるはずだよ。<br>もしマイク使用中のプロセスを検出したら、Notionは通知を出すんだけど、カレンダーを連携してたら会議イベントと紐付けようとするよ。カレンダー連携は必須じゃないし、この通知は設定からオフにできるんだ。ユーザーがミーティングノートを始めて「録音」をクリックした時だけ、Notionはマイクを起動するよ。これにはOSの同意ダイアログが必要だから、勝手にはできないんだ。(Notionで働いてるよ)" userName="jitl" createdAt="2025/07/17 18:59:56" color="#38d3d3">}}




{{<matomeQuote body="これをオプトインにすれば問題ないのにね。" userName="chinathrow" createdAt="2025/07/17 19:04:29" color="">}}




{{<matomeQuote body="Notionはオプトインにするのが好きじゃないんだ。オプトインの機能は、オプトアウトの機能の1%くらいしか使われないからね。もっといい落としどころとしては、デフォルトで有効にしておいて、最初の数回は「これ、いらないからオフにして」ってボタンを見せることかな。<br>編集: 特定の役割の人を責めるべきじゃなかったね。僕らはオプトアウト、つまりデフォルト有効が、全体の利便性を高めるって考えてるんだ。でも、初回利用時にもっとユーザーに選択権を与えるとか、別のバランス点を見つける必要があるね。" userName="jitl" createdAt="2025/07/17 19:08:11" color="#785bff">}}




{{<matomeQuote body="説明ありがとう。今日Notionデスクトップをインストールするところだったけど、やめるわ。" userName="dakiol" createdAt="2025/07/17 19:14:45" color="">}}




{{<matomeQuote body="なんで？これの何が問題なのか理解できないんだけど。もしアプリが同意なしにNotionにデータを送ってるなら、それはもちろんプライバシー問題だけど、デスクトップアプリがただマイクを使ってるかチェックして録音を提案するだけなら、何が問題なの？" userName="XCabbage" createdAt="2025/07/17 19:21:51" color="">}}




{{<matomeQuote body="お前らの新機能はプライバシー侵害だよ。誰かのマイクがオンかどうかなんて、招待されてない限りお前らには関係ないだろ！<br>それがそんなに難しいのか？<br>「僕らのPMはオプトインが嫌いなんです」って、史上最低の言い訳だ。<br>マイクのアクティベーションについて、本社に電話してるんじゃないだろうな？してるのか？<br>最近、Notionを使ってる組織に入ったんだが、デスクトップアプリをインストールしないように、あるいはNotion自体をやめるように積極的に働きかけるつもりだ。" userName="chinathrow" createdAt="2025/07/17 19:16:42" color="#ff5733">}}




{{<matomeQuote body="「僕らのPMはオプトインが嫌いなんです」だって？<br>それなら実装を拒否しろよ。神に誓って、もっと尊厳を持て！" userName="meindnoch" createdAt="2025/07/17 19:36:11" color="">}}




{{<matomeQuote body="このアプリはほぼ間違いなく、同意なしにNotionにデータを送ってるだろうな。お前らには分からないだけだ。<br>企業がたとえ小さなプライバシー侵害でもするなら、俺は全く信用しないね。OpenSnitchとかLittleSnitchを動かしてみろよ。ほとんどのアプリが、お前らが知らない多くのドメインに接続してるのが分かるから。どんなデータが流出してるかなんて誰にも分からないよ。もちろん、オープンソースみたいなプライバシー保護アプリを使ってるなら話は別だけどな。" userName="const_cast" createdAt="2025/07/17 19:29:06" color="#ff33a1">}}




{{<matomeQuote body="マイクが使われ始めたのを検知するってことに、具体的にどんなプライバシー問題があるの？って疑問だな。" userName="hackinthebochs" createdAt="2025/07/17 21:44:33" color="">}}




{{<matomeQuote body="PMが俺の同意なしに俺のハードウェアを勝手にいじるなんてありえない。PMはオプトインを嫌うけど、ユーザーはオプトアウトを嫌がるんだよ。利用率が低いのはUXの問題だし、同意なしで有効にしても水増しされた指標になるだけだ。" userName="sturza" createdAt="2025/07/17 19:29:33" color="#ff5733">}}




{{<matomeQuote body="俺の習慣を追跡して、マイクの使い方がデータブローカーに報告されるってこと？それじゃ、俺の生活状況や習慣がもっと細かくプロファイリングされちゃうじゃん。" userName="bayindirh" createdAt="2025/07/17 22:21:05" color="">}}




{{<matomeQuote body="二者同意州ではどうなるんだ？俺は同意できても、会議の参加者は同意できないだろ？Notionは俺だけ聞いて、参加者は聞かないのか？数週間前にHR／法務から会議録音のメールが来て、これまで考えたことなかったからさ。" userName="fusslo" createdAt="2025/07/18 14:16:45" color="#785bff">}}




{{<matomeQuote body="「PMがオプトインを嫌う」って言うけど、HNとかで邪悪なMicrosoft、Apple、Googleの幹部が製品を劣化させようとしてるって言われても、現実はもっと単純なことが多いんだ。こっそり聞いてサーバーに全部送るアプリも、悪の仕業かもしれないけど、俺の経験だと、エンジニアとPMが「自社製品をユーザーに提示」ってタスクで「LLMで会話分析して製品勧めようか？」ってなった可能性の方が高いんじゃないかな？" userName="eddythompson80" createdAt="2025/07/17 19:29:15" color="#45d325">}}




{{<matomeQuote body="もし役立つなら、これは最近で一番頭に来たことの一つだよ。なんでこれがオプトインじゃなかったのか理解できないね。" userName="CubsFan1060" createdAt="2025/07/17 19:01:01" color="">}}




{{<matomeQuote body="ユーザーがオプトアウトを嫌うってのは事実じゃないね。HNのユーザーは嫌がる傾向にあるけど、多くのユーザーは代替案（設定で見つけにくいとか、邪魔な「新機能」の表示とか）を嫌ってると思うんだ。俺的には、オプトインとオプトアウトの使い分けはかなり微妙で、機能と既存の信頼によるよ。" userName="fiddlerwoaroof" createdAt="2025/07/17 19:59:25" color="#ff5733">}}




{{<matomeQuote body="いやエディ、おまえの単純なシナリオより、邪悪なテック企業がユーザーのプライバシーを侵害して、追加の利益のために許可されてないデータを集める「悪のシナリオ」の方が可能性高いに決まってるだろ。" userName="owebmaster" createdAt="2025/07/17 19:43:30" color="">}}




{{<matomeQuote body="私たちはあなたの習慣をデータブローカーには報告していません。この情報は純粋にローカルのUIのために使われています。" userName="jitl" createdAt="2025/07/18 01:04:05" color="#45d325">}}




{{<matomeQuote body="最初から全部オンにしといて、ユーザーが要らない機能はオフにできるようにポップアップ出せば？<br>どの機能に興味あるかデータも取れるし、いい妥協点だろ。" userName="FuriouslyAdrift" createdAt="2025/07/17 19:19:46" color="#38d3d3">}}




{{<matomeQuote body="多分、録音してるのはNotionの方だろ？<br>Notionは俺の同意しか必要としてない。<br>もし他の参加者が２者同意の州にいるなら、会議メモを無効にするのは俺の責任ってことか？" userName="fusslo" createdAt="2025/07/18 14:41:07" color="">}}




{{<matomeQuote body="PMちゃんとしろよ！<br>プライバシーはデフォルトで尊重されるべきで、ユーザーがオプトアウトしなくていいだろ。<br>マイク許可に価値があるならいいけど、ちゃんと教えろ！<br>カレンダー共有とか他のやり方もあるのに、これはズルいし隠してる。<br>Notionはもう使わない。" userName="mbreese" createdAt="2025/07/17 22:52:09" color="#ff5733">}}




{{<matomeQuote body="「ほぼ確実」って言ってるけど、何か証拠あんの？<br>それだけで話を進めるのは無理があるし、話が堂々巡りだろ。" userName="brookst" createdAt="2025/07/17 20:09:18" color="">}}




{{<matomeQuote body="Notionはなんでネットワークトラフィックを監視する前に、ちゃんと同意を取らなかったんだ？<br>他にネットワークトラフィックを監視するケースってあるの？<br>もしあるなら、何？" userName="dml2135" createdAt="2025/07/17 20:30:02" color="">}}




{{<matomeQuote body="あの怪しい会議には出てないけど、多分やってるんだろうな。<br>ユーザーへのアナリティクス属性付けの課題について、エンジニアやPMと議論したことはあるよ。" userName="eddythompson80" createdAt="2025/07/17 19:48:44" color="">}}




{{<matomeQuote body="新機能をユーザーに知らせて有効にするよう頼む方法は、いくらでもあるだろ。" userName="sturza" createdAt="2025/07/17 20:03:50" color="">}}




{{<matomeQuote body="マイク検出の機能って、チェックしたことやその結果がNotionにネットワークで送られたりするの？" userName="chaps" createdAt="2025/07/17 19:05:27" color="">}}




{{<matomeQuote body="Notionが盗聴できないなんて嘘っぱちだ。<br>Notionはいつでも盗聴できるんだよ。<br>Macのインジケーターも常に目立つわけじゃない。<br>俺が他の会議メモアプリで同じ盗聴システム作ったから、よく知ってる。<br>Appleともこのセキュリティ問題について話したんだ。" userName="wferrell" createdAt="2025/07/17 20:17:03" color="#ff5c5c">}}




{{<matomeQuote body="ソフト使う前に使い方聞かれたり、新機能のチュートリアルが出るのはマジでやめてほしい。使いたくなくなる。" userName="threetonesun" createdAt="2025/07/17 19:50:03" color="">}}




{{<matomeQuote body="「ほぼ確実に」ってのは憶測だろ？仮説で文句言うなよ。ローカルWebプロキシで確認できるし、Electronアプリなんだからソースコードも調べられるだろ。" userName="viraptor" createdAt="2025/07/17 20:13:37" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="マイクがオンか見るだけで、話してる内容は聞いてないよ（許可してない限り）。ネットワークトラフィックも見て音声が送信されてるか確認してるんだ。これは誤検出を減らすための一般的な方法で、LookAwayっていう自分のアプリも同じことしてるよ。https://lookaway.app" userName="_kush" createdAt="2025/07/17 17:23:13" color="#ff33a1">}}




{{<matomeQuote body="macOSってアプリがネットワークトラフィック監視するのには明確な許可がいるんじゃない？君のアプリはそう聞いてるんだろうけど、Notionは聞いてないから投稿者が驚いたんだろ。" userName="AlexandrB" createdAt="2025/07/17 17:25:28" color="">}}




{{<matomeQuote body="俺のNotion（macOS）はネットワーク上のデバイス検出を許可するように聞いてきたよ。これって”ネットワークトラフィック監視”に関係してると思うんだ。" userName="tbeseda" createdAt="2025/07/17 17:30:07" color="">}}




{{<matomeQuote body="いや、それはmacOS 15以降に出るようになった新しい”Local Network”のプロンプトだよ。<br>mDNSとかSSDP、WebRTC ICEとか、マルチキャストやブロードキャストソケットを開くアプリは許可を求められるんだ。NotionみたいなElectronアプリはデフォルトでこれをやるから、あのダイアログが出るんだよ。" userName="_kush" createdAt="2025/07/17 18:29:38" color="#ff33a1">}}




{{<matomeQuote body="Electronアプリがデフォルトで許可を求めるのは良くないデフォルト設定だな。ユーザーが無視して”はい”って答えちゃうように教育してるようなもんだ。" userName="jraph" createdAt="2025/07/17 21:51:36" color="">}}




{{<matomeQuote body="アプリ開発者から見たら、ユーザーが権限に何も考えずに同意してくれるのは良いことなんだよ。悪意がなくても、許可を拒否されると機能が動かなくて悪いレビューにつながるからね。OSがセキュリティに配慮した行動を簡単にさせてくれることを期待するけど、いつもがっかりさせられるわ。" userName="JadeNB" createdAt="2025/07/17 22:08:32" color="#38d3d3">}}




{{<matomeQuote body="”これってXXの許可がないと動かないんだ、なぜならYYだからね。[直す]”みたいなメッセージが出れば別に問題ないだろ。" userName="jraph" createdAt="2025/07/17 22:17:19" color="">}}




{{<matomeQuote body="ユーザーは納得しても、アプリ開発者を説得するのは難しいんだよ。俺も教師だけど、指示を読まない生徒にはうんざりする。でも、自分も急いでる時は大事なことを見落としがちだ。だから、明確な指示があっても、ユーザーはそれを無視して”動かない”って言いがちだし、そういうユーザーに対応しなくて済むなら、許可をデフォルトにしたくなる気持ちもわかるんだ。" userName="JadeNB" createdAt="2025/07/17 22:52:24" color="#ff5c5c">}}




{{<matomeQuote body="これはChromiumとmacOSの問題だと思うよ。詳細はこちら：<br>https://issues.chromium.org/issues/346505950https://x.com/rauchg/status/1846590635677004039?s=46&t=kVfjh..." userName="wustep" createdAt="2025/07/18 01:07:04" color="">}}




{{<matomeQuote body="面白いね。でも「ローカルデバイスの検出」権限がネットワーク監視を許可するって情報は見つけられなかったな。BonjourとかマルチキャストDNSだけみたいだけど、誰か確かなこと知ってる？" userName="simple10" createdAt="2025/07/17 18:20:20" color="">}}




{{<matomeQuote body="俺にとっても初耳だね。パケットキャプチャには普通スーパーユーザー権限が必要だけど、macOSのSystem/Network Extensionsについては詳しくないんだ。Appleのドキュメント[0]をざっと読んだ限りでは、パケットフィルタリングや傍受、読み込みには[1]が必要みたいだよ。<br>[0]: https://developer.apple.com/documentation/technotes/tn3179-u...<br>[1]: https://developer.apple.com/documentation/NetworkExtension/c..." userName="mh-" createdAt="2025/07/17 18:32:22" color="#45d325">}}




{{<matomeQuote body="現在のソケットのスナップショットを取るだけなら、特別な権限は必要ないよ。" userName="_kush" createdAt="2025/07/17 17:44:06" color="">}}




{{<matomeQuote body="そうそう、非サンドボックスアプリなら開いてるファイルディスクリプタを反復処理できるんだ。ローカルのどのアプリがTCPで接続してるか検知できるから超便利だよね。これをロックダウンしないでほしいな。トラフィックを傍受はできないけど、どこに接続してるかは見えるんだ。" userName="jjcob" createdAt="2025/07/17 18:37:58" color="#785bff">}}




{{<matomeQuote body="Notionの動作の遅さにめちゃくちゃ腹が立って大嫌いになったけど、ちっちゃいビジネスで使ってるから未だに課金してるんだよね。非技術系の従業員がクライアントやタスク、支払いのデータベースとして使ってるからさ。何回か代替案を探したけど、結局いいのが見つからないんだ。いっそ自分で作るべきかなって思う時もあるよ。" userName="untech" createdAt="2025/07/17 17:29:15" color="">}}




{{<matomeQuote body="Anytype（https://anytype.io）とかAppflowy（https://appflowy.com）はどう？" userName="tummler" createdAt="2025/07/17 17:49:10" color="">}}




{{<matomeQuote body="Anytypeって仕事で使ってる？俺は入れてみたけど、Notionに比べてメモを整理するのがちょっと大変に感じるんだよね。もっと抽象的な「知識管理システム」って感じがするし。今また開いてみたら「新機能」のポップアップが出てきて、「Relations are now properties」とか「types」、「templates」、「sets」、「queries」とか書いてあってさ。俺はただ単純な階層でメモを取りたいだけなのに。" userName="__jonas" createdAt="2025/07/17 20:42:11" color="">}}




{{<matomeQuote body="これらのコンセプトはNotionから直接コピーされてるね。俺はAnytypeの方がより効率的だと思うよ。Notionにめちゃくちゃ慣れてるから簡単に適応できたけどね。" userName="bGl2YW5j" createdAt="2025/07/17 20:51:38" color="">}}




{{<matomeQuote body="NocoDBはどうかな？ドキュメント向けじゃないけど、データベースとして使ってるって言ってたよね。https://github.com/nocodb/nocodb" userName="seanw444" createdAt="2025/07/17 17:38:11" color="#785bff">}}




{{<matomeQuote body="他にも提案あるけど、Affineはどう？<br>https://affine.pro/<br>自己ホストもできるし、Notionに近い機能でプライバシーもよさそう。会社でNotion使えないから、私もプライベートで安全なNotion代替を探してるんだ。テンプレート、タスク、スクラムが好きだけど、個人情報は保存したくないんだよね。" userName="tekawade" createdAt="2025/07/17 20:29:49" color="#38d3d3">}}




{{<matomeQuote body="パフォーマンス問題で困ってるんだね。過去1、2年でかなり改善したはずだよ。もし遅いページがあったら、僕にメールしてよ。" userName="wustep" createdAt="2025/07/18 01:11:27" color="#ff5733">}}




{{<matomeQuote body="個人のプロジェクトにNotionをたくさん使ってたけど、クライアント向けにはMicrosoft Loopに、個人向けにはObsidianに乗り換えたよ。" userName="major505" createdAt="2025/07/17 18:36:56" color="">}}




{{<matomeQuote body="Notionのパフォーマンスは本当ひどいよね。何年も使ってるけど、初期の頃と比べるとかなり悪くなったよ。" userName="dml2135" createdAt="2025/07/17 18:34:07" color="">}}




{{<matomeQuote body="Outlineもかなりいいよ。Notionのスペースも全部インポートできるんだ。<br>https://getoutline.com" userName="paul-tharun" createdAt="2025/07/17 18:55:51" color="#ff5c5c">}}




{{<matomeQuote body="Notionの代替を探してる人に。俺が作ってるDocmostはどうかな。<br>https://docmost.com<br>UIがいいし、リアルタイムコラボや図形もサポートしてるよ。自己ホストもできるんだ。" userName="Pi9h" createdAt="2025/07/17 17:34:29" color="#ff33a1">}}




{{<matomeQuote body="Docmostを自己ホストしてて気に入ってるよ、作ってくれてありがとう！Wikiとして公開できるようになるかな？今の共有機能だと、特定のURLを共有して公開ページをライブ編集しなきゃいけないんだ。" userName="xelia" createdAt="2025/07/17 17:52:38" color="#38d3d3">}}




{{<matomeQuote body="次の共有目標は「Space」単位で共有できるようにすることだよ。「Workspace」全体じゃないけど、それで合ってるかな？" userName="Pi9h" createdAt="2025/07/17 20:43:43" color="">}}




{{<matomeQuote body="そうだよ！音楽制作のドキュメントを公開したいんだ。貢献も受け入れたいな。作業中は公開せずにプライベートにしておきたいんだよ。" userName="xelia" createdAt="2025/07/17 22:25:39" color="#ff33a1">}}




{{<matomeQuote body="公開できるツールを探してたんだ。エンドユーザー向けのヘルプドキュメントシステムを作って、開発者向けの技術情報や議論も混ぜたいんだよね。ヘルプをアプリの挙動に関する唯一の真実のソースにしたい。これにはドキュメントのブロックを“public”ってマークして、それだけをちゃんと公開できるようにする機能が必要だよ。今できるのかな？それとも将来サポートする予定ある？" userName="oehpr" createdAt="2025/07/17 23:02:43" color="#ff5733">}}




{{<matomeQuote body="見た目がすごく素敵だね。でも、これObsidianみたいにスタンドアロンアプリだったらいいのに。メモにWebアプリはいらないんだ。メモは全部ファイルだからね。用途が違うのはわかるけど、Obsidianがもっと君のアプリやNotionみたいに見えて、感じられたらいいのにってすごく思うよ。" userName="barbazoo" createdAt="2025/07/17 17:49:51" color="#38d3d3">}}




{{<matomeQuote body="もっと調べてみたら、4oがNotionが優れてることをする機能を追加するプラグインのリストを実際に作成したんだ。だから、datatablesとかを手に入れる方法はおそらくあるってことだね。" userName="barbazoo" createdAt="2025/07/17 18:10:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これを上にあったnocodbと統合したらうまくいくか考えてるよ。僕もドキュメントでデータベースを使ってるからさ。" userName="savolai" createdAt="2025/07/17 19:39:16" color="">}}




{{<matomeQuote body="Iframe埋め込み機能を使って、君のNocoDBデータベースを埋め込めるよ。" userName="Pi9h" createdAt="2025/07/17 20:41:13" color="#38d3d3">}}




{{<matomeQuote body="それはUX的に本当に不器用だよ（スクロールバー、NocoDBページの周りのコンテンツとか）。もっと深い統合が必要だね。最低でも、Notionみたいに@を使って行に直接リンクできるとか、行のURLを調べずに済む機能が欲しいな。" userName="savolai" createdAt="2025/07/18 06:30:52" color="#ff33a1">}}




{{<matomeQuote body="すごくいいね。こんなツールが埋め込み可能だったらいいのに。例えば、既存のアプリに組み込めるとかさ。" userName="moomoo11" createdAt="2025/07/17 17:49:42" color="">}}




{{<matomeQuote body="面白い話があるんだ。Notionドキュメントを開こうとして、アプリでコマンドOを直感的に押したんだよね。もちろん、そのコマンドはNotionドキュメントを開かないんだけど、オーディオ転写をオンにするんだ。それで2時間後、チームの概要ページの一番下に、妻や犬との会話の断片から、まるで狂人の日記みたいに転写されてることに気づいたよ。気づいて削除できてよかった。" userName="toddmorey" createdAt="2025/07/17 19:35:02" color="#ff5733">}}




{{<matomeQuote body="犬も転写してたの？犬の鳴き声を翻訳できるLLMができるまであとどれくらいかな…" userName="TYPE_FASTER" createdAt="2025/07/17 19:41:30" color="#785bff">}}




{{<matomeQuote body="人々はクジラやイルカのコミュニケーションを分類しようと面白い研究をしてるよ。https://blog.padi.com/talk-to-whales-with-ai/" userName="callalex" createdAt="2025/07/17 20:03:30" color="#ff33a1">}}




{{<matomeQuote body="アプリ開発者だけど、これって悪意があるわけじゃないよ。マイクが使われてるかとか、ハードウェアのパターンで会議中か判断できるんだ。盗聴してるわけじゃない。" userName="pat64" createdAt="2025/07/17 19:14:05" color="#785bff">}}




{{<matomeQuote body="彼らのやり方が問題なんだよ。せめて『メモ取りアシスタントのために会議参加をチェックしてるけど、いい？』って同意を求めるべき。同意を勝手に前提にするな。" userName="shreddit" createdAt="2025/07/17 20:06:57" color="">}}




{{<matomeQuote body="Notion側を擁護すると、プライバシーに配慮した監視も可能だよ。例えば音声分析やマイク使用状況のチェックとか。でも、オフにするオプションやオプトイン方式にすべきだね。" userName="rob74" createdAt="2025/07/17 17:29:16" color="#45d325">}}




{{<matomeQuote body="プライバシーの問題はあるけど、データを外部サーバーに送る監視と、プログラムの正当な目的でオフラインのみで使う監視は区別すべきだ。" userName="like_any_other" createdAt="2025/07/17 18:19:22" color="">}}




{{<matomeQuote body="Notionデスクトップがマイク音声にアクセスできるってこと？それともマイクが使われてるかだけ分かるってこと？前者は心配だけど、後者なら気にしない。" userName="e9a8a0b3aded" createdAt="2025/07/17 17:23:36" color="">}}




{{<matomeQuote body="後者だよ。アプリがマイクの音声にアクセスするには、明示的なマイク監視の許可が必要だから。" userName="_kush" createdAt="2025/07/17 17:47:34" color="#45d325">}}




{{<matomeQuote body="設定 ＞ 通知 ＞ デスクトップ会議検出通知で、この機能をオフにできるよ。でも、マイクやネットワーク監視も完全に止まるかは確認してないけどね。" userName="jherdman" createdAt="2025/07/17 18:08:13" color="#ff5733">}}




{{<matomeQuote body="Macにはこの設定がないよ。" userName="sevenseacat" createdAt="2025/07/18 14:28:55" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
