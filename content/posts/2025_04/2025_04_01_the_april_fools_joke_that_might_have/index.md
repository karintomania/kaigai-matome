+++
date = '2025-04-01T00:00:00'
months = '2025/04'
draft = false
title = '【マジか】エイプリルフールのジョークが原因でクビ寸前になった話ｗｗｗ'
tags = ["エイプリルフール", "ジョーク", "仕事", "失敗", "IT"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> 【マジか】エイプリルフールのジョークが原因でクビ寸前になった話ｗｗｗ

引用元：[https://news.ycombinator.com/item?id=43543743](https://news.ycombinator.com/item?id=43543743)

{{<matomeQuote body="高校時代、Netware 3.12の環境があって、Guestアカウントが有効だったんだ。権限はすごく限られてたけど、なぜかGuestでもNET SENDが使えて、相手の画面の最下行にメッセージが表示されるっていう。<br>当時、学校全体でT1回線を共有してたんだけど、メールには十分だったものの、World Wide Webが普及し始めてボトルネックになっちゃって。MP3ファイルとか見つけちゃったもんだから、もう遅くてイライラ。<br>ある日、ひどい天候で停電があって、ADMINから「サーバー室はUPS電源で動いてるから、ファイルを保存してすぐにログアウトして」ってメッセージが来たんだ。<br>で、数週間後、テクノロジープログラムの賢いヤツが、みんなログオフすれば帯域が解放されるって気づいたんだよね。それで、隣のPCにGUESTでログインして、NET SEND ALLで「SERVER ROOM POWER FAILURE - 11 MIN OF BATTERY REMAIN - SAVE FILES AND LOG OFF」って送ったら、マジで1分以内にT1回線がそのヤツのものに。8分くらい好き放題（fservをダウンロード）して、その後NET SEND ALLで「POWER RESTORED - RESUME YOUR WORK」だって。<br>また数週間後、何かホットなコンテンツがリリースされた時に同じことを繰り返したらしい。それでもまだ通用してて。誰もメッセージがGUESTからだって気づかなかったんだよ。最終的には管理者まで電気業者呼んでサーバー室の電源が不安定な原因を調べさせたらしい。誰かがそれに気づいて、管理者は真っ赤になって「マジで賢いけど、やめてくれ」って。罰はなかったけど、次の日にはGuestアカウントの権限が大幅に減らされたって。" userName="myself248" createdAt="2025-04-01T15:58:10" color="#38d3d3">}}

{{<matomeQuote body="＞Netwareの話が出てるけど、俺の記憶だとNetwareの機能はただの“SEND”で、“NET SEND”はMicrosoftのネットワーク機能だった気がする（Netwareの経験の後で統合されたのかも）。<br>俺が言いたいのは、高校時代にNetwareネットワークを使いまくった人間として、SENDプログラムを逆アセンブルして、メッセージに含まれるユーザー名は認証されてないってことを発見したんだ。IPX（かNETX、忘れちゃった）のソフトウェア割り込みは文字列を受け取るだけで、SEND実行ファイルがユーザー名をその文字列にフォーマットしてたんだよね。だから、ソフトウェア割り込みを直接使う独自のSENDプログラムを作れば、好きなユーザー名を偽装できたんだ。“ADMIN”からのメッセージも簡単に送れたってことさ。:)<br>これは、高校時代に起きたかもしれない、あるいは起きなかったかもしれないネットワーク上の悪ふざけの告白として解釈しないでください。;) :D :)" userName="simmons" createdAt="2025-04-01T18:48:33" color="#38d3d3">}}

{{<matomeQuote body="＞Netwareの話が出てるけど、俺の記憶だとNetwareの機能はただの“SEND”で、“NET SEND”はMicrosoftのネットワーク機能だった気がする。<br>Netwareの一部じゃなかった可能性も十分にあるね。昔のことだから細かいことは覚えてないんだ。ただ、DOSのテキストモードで動いてたし（Windowsはほとんど使ってなかった）、Microsoftがネットワークを意識したことをしたのはWindowsが普及してからだと思ってたんだよね。だからNovellの機能だと思ったんだ。<br>＞ユーザー名が認証されてない<br>マジか……。" userName="myself248" createdAt="2025-04-02T14:08:15" color="">}}

{{<matomeQuote body="Microsoftがネットワーキングを始める前にNetwareにNET SENDがあったと思うけど、間違ってるかも。確かにNTにはnetware互換のスタックがあったけど、それはnetwareが道を切り開いたずっと後の話だよね。" userName="diroussel" createdAt="2025-04-02T10:34:29" color="">}}

{{<matomeQuote body="俺も高校生の時にwindowsのnet sendコマンドを発見したんだ。みんなでジョークを送り合ったりしてたな。ある生徒が全員に送ろうと思ってワイルドカードを使ったら、地区全体の学校に「Hi」ってメッセージが届いちゃって。理由は忘れちゃったけど、最初は誰がやったのかわからなかったんだ。でも、管理者がリモートで画面を消したり、PCをロックしたりできるソフトが入ってて、そいつの画面がリモートで消されたんだよね。文句言ったらバレて。大した問題にはならなかったけど、net sendを教えたことを後悔したよ。" userName="pests" createdAt="2025-04-01T16:16:26" color="#ff5733">}}

{{<matomeQuote body="「誰かに教えたことを後悔する」って話だけど…俺が小学5年生くらいの時、友達がコンセントをショートさせる方法について話してたんだ。「紙クリップを2つ広げて、消しゴムに刺して、それをコンセントに差し込んで、紙クリップ同士を接触させればいい」って言ったんだ。<br>数日後、校長に呼ばれて。「彼にこれを教えたのか？」「教えたわけじゃなくて、ただやり方について話してただけ。」「…以前にもやったことがあるらしい。二度とこんなことするな。解散。」って言われた。よく許されたなと思うよ。嫌なやつらは権力を振りかざしたがるのに。" userName="linsomniac" createdAt="2025-04-01T17:36:20" color="">}}

{{<matomeQuote body=":)誰のことを権力を振りかざす嫌なやつって言ってるの？<br>・警告だけで済ませた校長？<br>・ブレーカーを落としたガキ？<br>・それとも、若い心を堕落させた君？:)" userName="wingspar" createdAt="2025-04-01T18:53:52" color="">}}

{{<matomeQuote body="校長のことだよ。権力を行使しなかったのが意外だったってこと。もう一人の子供はグレムリン。GPは質問者や質問の使われ方を考えずに答える、うっかりエンジニアタイプを演じてるんだ。" userName="fc417fc802" createdAt="2025-04-01T23:07:14" color="">}}

{{<matomeQuote body="うっかりエンジニアタイプを演じてるだけかも…あるいは、ただの10歳で、まだそういうことを学んでなかっただけかもね。;-)" userName="linsomniac" createdAt="2025-04-02T11:55:48" color="">}}

{{<matomeQuote body="俺も同じようなことを偶然やっちゃったことがあるよ。「test」って送ったら、地区内の複数の学校のPCに変なメッセージが出てるって噂になって、すぐに自白したんだ。ネットワーク管理者はただちょっと面白がってただけで、お咎めはなかったよ。" userName="BrainBacon" createdAt="2025-04-01T16:45:39" color="">}}

{{<matomeQuote body="マジかよ、それやったせいで学校から3日間の停学処分くらったわ。学校全体に「hello」みたいなクソどうでもいいメッセージ送っただけなのに。数分後、ITのおっさんがマジギレしながら走ってきて、こっぴどく怒られて個人情報まで取られたし。<br>調子に乗って友達に話したら、そいつらが学校中にクソみたいな悪口送りやがった（俺はそこにいなかったけど）。<br>友達はマジでバカなフリして何が起こるかわからなかったとか言い訳して1日停学で済んだけど、俺は3日も停学だよ。次の日が学校対抗のチェス大会だったからマジで勘弁して欲しかった。チェスのコーチが同情してくれて、学校の裏で待ってろって言ってくれて、スクールバスで拾ってくれたけど。" userName="nraf" createdAt="2025-04-02T11:54:08" color="">}}

{{<matomeQuote body="少なくとも、お偉いさんが「サイバーテロだー！犯人はこの部屋にいるぞー！」って叫びながら走ってこなかっただけマシじゃん[0]。<br>[0] <br>https://news.ycombinator.com/item?id=28846895" userName="snerbles" createdAt="2025-04-02T00:27:44" color="">}}

{{<matomeQuote body="今このスレッドにコメント書いたんだけど、一瞬自分のことかと思ったわ。笑" userName="xeromal" createdAt="2025-04-01T16:19:45" color="">}}

{{<matomeQuote body="高校時代、友達がデスクトップにネットワークドライブをマップしてアクセスできることに気づいたんだよね（Windows XP）。学校全体の生徒のユーザー名が{姓}{名イニシャル}だったから、誰のネットワークドライブ（要するに“ホームフォルダ”）にも読み書きアクセスできちゃったんだよ。彼はそれを使って先生からテストの解答を盗んだり、俺は“porn”、“porn 2”みたいな空のフォルダを作ったりしてた。<br>結局そいつはバレて（クラスメートがチクった）、10日間の停学処分。副校長は警察に電話すると脅してたけど…何の罪になるのかマジで意味不明。サイバー犯罪とサイバー犯罪に関する法律について根本的な誤解があると思うんだよね。だって、ユーザーアカウントにネットワークドライブをマップする権限が文字通りあったのに、本当に不正アクセス（もちろん“ハッキング”って言ってたけど）だったのかな？<br>彼らは生徒アカウントがネットワークドライブをマップする機能を削除したけど、地区のIT担当者はクビにならなかった。マジで意味わからん。労働組合が助けたのかな…でもよ、誰でもデスクトップで右クリックすればネットワークドライブをマップできるって知ってるじゃん。試そうと思ったことはなかったけど、だからって地区のIT担当者が許されるわけじゃないと思う。" userName="gymbeaux" createdAt="2025-04-01T17:11:44" color="#785bff">}}

{{<matomeQuote body="＞I mean was it really unauthorized access (they called it “hacking” of course) if his user account literally had permission to map network drives?<br>＞「自分のアクセスが許可されていないことを知ってアクセスするのは違法」って法律に書いてあるんじゃないかな。でも、言いたいことはわかるよ。<br>以前、裁判所のシステムに侵入するために雇われたペンテスターが、監査の許可を明示的に得ていたにもかかわらず、検察官から嫌がらせを受けたことを思い出したわ。<br>https://darknetdiaries.com/episode/59/<br>うちの司法制度はマジでふざけてる。" userName="alsetmusic" createdAt="2025-04-01T17:22:18" color="">}}

{{<matomeQuote body="フロリダ州のコンピューター犯罪法は1978年に制定されたから、想像できるようにかなり厳格なんだよね。16歳の俺が、学校が使っていたIE限定のWebフィルターを回避するために、LinuxをライブUSBから起動したのは軽犯罪だったと思う。" userName="gymbeaux" createdAt="2025-04-02T03:06:22" color="">}}

{{<matomeQuote body="もし誰かがペンテスターの活動に疑問を抱かなかったり、指摘しなかったりしたら、それはペンテストを受けている組織のセキュリティトレーニングの欠点になるはずだ。だからこそ、ペンテスターはアクセスに関する正当な懸念を解消し、ペンテスターを名乗る人が正当であることを保証するために、採用担当者にすぐにエスカレーションする方法が必要なんだ。" userName="thwarted" createdAt="2025-04-01T22:11:31" color="">}}

{{<matomeQuote body="このケースでは、確か彼らはまさにそれを持っていたけど、司法制度内の異なる派閥間のドラマに巻き込まれたんだよね。残念ながら、関係者の一部が悪意を持って行動したため、彼らはしばらく刑務所に閉じ込められた。<br>教訓があるとすれば、それはおそらく、職場の政治を倫理的な誠実さよりも優先するような、心の狭い個人についての注意喚起の物語だ。" userName="fc417fc802" createdAt="2025-04-01T23:14:12" color="">}}

{{<matomeQuote body="エピソードを聞けば、そのようなエスカレーションが発生したことがわかるでしょう。残念ながら、地元のLEOによる嫌がらせは止まりませんでした。" userName="Full_Clark" createdAt="2025-04-01T23:18:51" color="">}}

{{<matomeQuote body="＞I mean was it really unauthorized access (they called it “hacking” of course) if his user account literally had permission to map network drives?<br>＞ハッキングとは言えないかもしれないけど、確かに不正アクセスだった。ソフトウェアのネットワークポリシーは現実を反映すべきだけど、権限の源泉は人間にある。友達は、ソフトウェアの構成が悪くてアクセスできたとしても、先生のファイルにアクセスする権限は文字通りなかったんだ。" userName="chungy" createdAt="2025-04-01T21:58:17" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ドアが開いてたら不法侵入にならないってこと？んなこたーない。コンピューターへの不正アクセスと同じ理屈だってのに、なんでわかんない人がこんなにいるんだろ。" userName="dandelany" createdAt="2025-04-01T23:49:09" color="">}}

{{<matomeQuote body="面白いのは、社会的な期待ってやつが重要だってことだよね。普通は許可なしに人の家に入っちゃダメっていう社会通念があるから、招待されてなくてもドアが開いてたら不法侵入になる。でも、いつも勝手に入ってくるような親友なら、もう不法侵入にはならないかも。Remote computer accessはまだ歴史が浅いから、社会通念が確立されてないんだよね。例えば、open webserverを公開してて、URLをちょっといじられただけで公開するつもりのなかったdocumentにアクセスされたら、それって不法侵入？俺はそう考えない方が、健康的でtech-savvyな社会になると思うんだけどな。パーティーに招待して、入ってほしくない部屋に入られた、みたいなもんじゃない？faux-pasだけど、不法侵入って言うのは難しいよね。" userName="atq2119" createdAt="2025-04-02T01:06:07" color="#38d3d3">}}

{{<matomeQuote body="数か月前のIMG_0001についての議論を思い出すな。<br>＞https://news.ycombinator.com/item?id=42314547”<br>このsiteは、初期のiPhone YouTube appからアップロードされた古い動画をランダムに表示するんだけど、アップロードした人自身がよくわかってないことが多いんだよね。俺は用心深くありたい。ほとんどの人はtech savvyじゃないと思うし、俺たちみたいな人間は不法侵入しないように自制する必要があると思う。" userName="macintux" createdAt="2025-04-02T03:27:33" color="#ff33a1">}}

{{<matomeQuote body="気持ちはわかるけど、バランスが大事だよね。盗むな。恥ずかしい情報とかを共有するな。同時に、過剰な起訴から守られるべきだ。俺がそう思うのは、今の自分よりも、ハッカー精神を持った「kids」（若い大人、例えば大学生とかも含む）のためなんだ。社会として、そういう探求を奨励すべきだと思うんだよね。" userName="atq2119" createdAt="2025-04-02T12:18:39" color="#38d3d3">}}

{{<matomeQuote body="90年代後半から2000年代初頭の高校時代、誰かがCDRsで何かを配布してたらしい。<br>警察に呼ばれて、警官にこう聞かれたよ。「お前さん、そのCDをcopywriteしたのか？」" userName="pavel_lishin" createdAt="2025-04-01T20:27:41" color="">}}

{{<matomeQuote body="あるある" userName="gymbeaux" createdAt="2025-04-02T03:08:09" color="">}}

{{<matomeQuote body="俺も7年生の時に似たようなことやったな。ちょっと悪いことに、ピンボールとかSki FreeみたいなWindowsのbasic gameをhome driveにdropするのに50セントくらい徴収してたんだ。お気に入りの先生のdirectoryにjoke fileをいくつか作って、もっとヤバい奴が見つける前にIT adminに報告した。そのadminが俺のmentorになって、今では生涯の友人だよ。" userName="pathartl" createdAt="2025-04-01T20:20:54" color="#38d3d3">}}

{{<matomeQuote body="俺の高校のIT adminはマジで嫌な奴で、友達がnetwork driveをmappingしてるのがバレた時、めっちゃ個人的に受け止めてたらしい。computer classみたいなものはgraphic designくらいで、PhotoshopとかPremierで遊んでただけ。codeを書いたりとかは絶対させてもらえなかった。" userName="gymbeaux" createdAt="2025-04-02T03:10:38" color="">}}

{{<matomeQuote body="学校のadministratorが無意味に罰を与えるのは最悪だよね。俺の学校では、バカなkidが図書館にあった1990年代半ばのHP Officejetで20ドルのコピーを作ったんだ。当時でも、US currencyのコピーはダメになるようにprogramされてたんだよね（拡大されたり、色がめちゃくちゃになったり）。ただの「うわー、これ見て」って感じだったのに、それを貼り合わせて使おうとしたわけでもないのに。assistant principalがマジギレしてsecret serviceを呼んだんだ。そのkidは逮捕されて、何もないことで色々問題になった。俺はそれ以来、他人の苦痛を喜ぶような小さな暴君を軽蔑するようになった。" userName="Spooky23" createdAt="2025-04-01T23:25:45" color="#45d325">}}

{{<matomeQuote body="professional worldと同じように、学校の仕事の中にもsociopath/narcissist/psychopathを引き寄せるものがあると思う。もちろん、vice principalのことだよ。俺の小学校、中学校、高校のprincipalはみんな良い人だった。VPはほとんど近づきがたいhardassだった。principalとvice principalの責任の違いに関係があるのかも。他の国ではどうなのか知らないけど。" userName="gymbeaux" createdAt="2025-04-02T03:14:32" color="#38d3d3">}}

{{<matomeQuote body="校長とか教頭って、子供の頃にいじめられてたか、いじめてたかのどっちかって感じだよね。なんか、子供時代に健全な自尊心持ってると、教育関係の管理職の道には進まないのかも。" userName="BizarroLand" createdAt="2025-04-02T22:21:10" color="">}}

{{<matomeQuote body="それって、本当に不法侵入になるのかな？もし鍵が植木鉢の下にあって、それを見つけたなら。" userName="ummonk" createdAt="2025-04-02T01:04:46" color="">}}

{{<matomeQuote body="めっちゃ似たような話あるわ。高校時代、図書館がWindows使ってて、たまたまNET SENDみたいなのを発見したんだよね。友達のコンピューター名調べて、メッセージ送り始めたの。最終的にはそれでやり取りしてたんだけど、司書が厳しくてさ。で、みんなをイライラさせる計画を思いついたんだ。クソみたいなバッチファイル作って、すべてのコンピューター名にメッセージを大量送信したんだけど、イテレータをミスって永遠に終わらなくなっちゃった。たしか全部再起動することになったけど、友達以外誰も俺がやったって気づかなかった。あの頃が懐かしいし、あのクソPCでsoldatやったのも懐かしいな。" userName="xeromal" createdAt="2025-04-01T16:18:55" color="#785bff">}}

{{<matomeQuote body="オリジナル版の開発はもう終わってるし、FLOSSフォークもまだ準備できてないけど(soldank++とかopensoldat)、このゲームはまだ今のPCでもプレイできるし、Steamで無料だよ;)<br>(免責事項：元メンテナー)" userName="shoozza" createdAt="2025-04-01T20:21:36" color="#785bff">}}

{{<matomeQuote body="Steamにあったなんて知らなかったけど、あのゲームめっちゃやってたわ。たぶん10人か15人くらいで図書館でやってたよ。こんな楽しいゲーム作ってくれてありがとう！チェックしてみるわ。" userName="xeromal" createdAt="2025-04-01T20:50:10" color="#ff5733">}}

{{<matomeQuote body="昔、NetWareサーバーのシステムディスクをライブで交換したことがあるな。なんでだったか正確には覚えてないけど、たしか見てる目の前で不良セクタが増え始めて、新しいシステムディスクにデータをコピーして生かしておく必要があったんだ。それで、誰もログインしてないのを確認して、夜中の12時くらいにAlt-LeftShift-RightShift-Escを押して、NetWareがカーネルデバッガで一時停止してる間に、ディスクを交換した。デバッガを再開したら、うまくいったんだ:)" userName="jeffreygoesto" createdAt="2025-04-01T18:54:38" color="#ff5733">}}

{{<matomeQuote body="NET SENDの話がいっぱいあるスレッド。<br>＞https://news.ycombinator.com/item?id=28844101<br>そこで言ったように、昔、NET SENDを基盤にしたIMインターフェースをC++で書いたことがある。楽しかったな。" userName="Cyphase" createdAt="2025-04-02T01:34:15" color="">}}

{{<matomeQuote body="WindowsではこれらのメッセージはSMB IPCを使って作成されるんだけど、これって送信者（ユーザーとホスト）が認証されてるってことだと思いがちだけど、違うんだよね。送信者名はただの文字列フィールドで、何でもありなんだ。ホストもクライアントIPとか逆引きDNSlookupとかに基づいてると思うじゃん？Active Directoryもあるし。でも違うんだよね、それもただの文字列フィールドで何でもあり。SMB IPCでは特権コンポーネントだけが呼び出せると思うじゃん？でも違うんだよね、どのユーザーでもメッセージポップアップコマンドをどのマシンにも送信できて、誰にでもなりすませるんだ。昔はその知識を賢く使わなかったな。" userName="formerly_proven" createdAt="2025-04-01T21:40:21" color="#38d3d3">}}

{{<matomeQuote body="俺たちも中学校で似たような悪ふざけしてたな。先生のコンピューターがやっとWi-Fiに繋がったから、俺は小さいAndroidタブレットとUSB Wi-Fiカードを取り出して、Evil APを起動して、deauthして、HTTPにダウングレードして、Webページに好きなものを表示させてた。良い時代だった。" userName="_bin_" createdAt="2025-04-01T21:00:29" color="#785bff">}}

{{<matomeQuote body="このイタズラの面白いところは､作者が人々の反応を予測して､組織全体にどう影響するかを考えた点だよね｡誰が誰を知ってるかとか､その場にいるかどうかで反応が変わる｡人が笑ったり怒ったりする理由って､状況次第で変わるんだなって実感できる｡哲学が生まれた背景に､商人が異文化に触れたことがあるって話に似てるかも｡" userName="glenstein" createdAt="2025-04-01T12:34:06" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="問題は､会社が印刷に料金を導入しようとしてて､それを伝える方法が今回のイタズラとは違ったってことじゃないかな｡" userName="dullcrisp" createdAt="2025-04-01T13:55:35" color="">}}

{{<matomeQuote body="だよね｡pranksterが､会社が考えてた不人気な計画をうっかり暴露しちゃったんだよ｡上が怒ったのはそれが原因だと思う｡誰も無害な冗談で怒られない｡ボスより上の人を困らせるとヤバいんだよ｡" userName="ryandrake" createdAt="2025-04-01T14:19:04" color="#785bff">}}

{{<matomeQuote body="あー､それヤバいね｡大学時代､オフキャンパスからの印刷ができなくなった時､友達がAppleScriptで印刷サービス作ったんだ｡ユーザーの認証情報でオンキャンパスのターミナルにsshして印刷するスクリプト｡データ追跡のためだったんだけど､そいつのせいでめちゃくちゃになったらしい｡学生が勝手に抜け道作ったから｡大学は間違った教訓を得たんだと思う｡" userName="shadowgovt" createdAt="2025-04-01T15:25:31" color="#ff5733">}}

{{<matomeQuote body="うちの大学も似たような仕組みで､研究室のプリンターは研究室内からしか印刷できなかった｡プリンターにルーティング可能なIPがあったから､ホワイトリストを使ってたんだと思う｡オレはLinuxのタブレットPCからSSHして､StarOfficeで印刷して､研究室まで取りに行ってた｡怒られはしなかったけど､研究員に変な目で見られたな｡" userName="don-code" createdAt="2025-04-01T20:48:17" color="">}}

{{<matomeQuote body="大げさじゃない？ちょっとしたイタズラと､新しい印刷ポリシーについてのメールを送るのとは違う気がする｡一部の人が大笑いして､他の人がイライラしたって言うけど､本当に？それとも自作自演？ただの共感の寓話にしか見えない｡メールにジョークだとわかる要素がないと､ただの迷惑メールだよ｡" userName="refulgentis" createdAt="2025-04-01T18:10:03" color="">}}

{{<matomeQuote body="皮肉を言う時は､ジョークだとわかるようにしないとダメだよ｡人数が多いほど､大げさにする必要がある｡値段をめちゃくちゃ高くするとか｡5セントって書いてあったら､そこで怒って読むのをやめる人もいるからね｡オレなら､歌を歌うことを条件にするとか､メールにエイプリルフールって書くかな｡" userName="travisjungroth" createdAt="2025-04-01T19:18:45" color="#38d3d3">}}

{{<matomeQuote body="そうだね｡prankの面白い部分を体験できた人はほとんどいないと思う｡VFDパネルにINSERT 5 CENTSって表示されたのを見た人はほとんどいないだろうね｡99.9%の人にとって､prankは印刷にお金がかかるってメールが来たってだけ｡それって本当のことだし｡" userName="subroutine" createdAt="2025-04-01T18:40:42" color="">}}

{{<matomeQuote body="99.9%の人にとって､prankの面白さは後から来るんだよ｡prankだってわかった時とか､INSERT 5 CENTSの話を聞いた時とか｡それに､撤回や2回目の撤回も面白い｡他のスタッフが騙されて混乱したのも面白い｡それを人に話すともっと面白くなる｡" userName="afro88" createdAt="2025-04-01T19:16:05" color="">}}

{{<matomeQuote body="その一連の出来事を面白いって言う人は､サイコパスの可能性が高いと思う｡<br>＞“prank” ＝ ITの人がキャンパス全体に､一部のプリンターは1ページ0.05ドルかかるとメールした<br>＞“that they probably didn't see with their own eyes” ＝ ITの人が言ったことを否定するために､キャンパス中のプリンターをいちいち確認しなかった<br>＞“Plus the retraction, and 2nd retraction.” ＝ キャンパス中の全員の時間を3倍無駄にした<br>＞“And reactions of other staff who fell for it” ＝ ITからのメールを信じた人たち<br>＞“(and caused chaos)” ＝ カオスは面白くない<br>＞“And then extra value upon retelling all of the above to others.” ＝ 話す人が価値を得ると思ってるけど､聞く人に価値があるだけ｡話す人は損をする｡" userName="refulgentis" createdAt="2025-04-01T19:25:24" color="">}}

{{<matomeQuote body="朝9時半にメールチェックしてたら…7時28分に「新キャンパスの方針で印刷代が1枚5セントかかるようになった」ってメールが来て、8時34分に「Re: 新キャンパスの方針 – エイプリルフール！印刷は無料だよ」ってメールが来て、9時14分に「Re: Re: 新キャンパスの方針 – 今のところ印刷はまだ無料だよ」ってメールが来たって感じｗ 削除、削除、スパム認定。" userName="subroutine" createdAt="2025-04-01T19:36:07" color="">}}

{{<matomeQuote body="マジそれな。今回の件で言うと、面白いのは混乱と人々の反応の違いだって言ってるんだよね。IT部門をスパム扱いするのは置いといて。" userName="refulgentis" createdAt="2025-04-01T19:39:14" color="">}}

{{<matomeQuote body="こういう騒ぎが面白くないってことは、Bedlam DL3とかも楽しめないタイプ？ｗ 面白いと思うかどうかと、やった人の行動が適切だったかどうかは別問題だよね。" userName="fc417fc802" createdAt="2025-04-01T23:45:43" color="#785bff">}}

{{<matomeQuote body="トリックスターは知恵と混沌をもたらす古代の原型だよね。プラトン以前は、知識は神から与えられるものだったけど、ソクラテスの対話を通して人間の理性で知識を得るって考えが生まれたんだって。プラトンは prankster で、西洋文明はその結果って言えるかもね。" userName="norir" createdAt="2025-04-01T19:26:18" color="#ff5c5c">}}

{{<matomeQuote body="＞essentially all knowledge<br>ヨーロッパの一部の伝統ではそうかもね。でも他の地域では、トリックスター自身が神聖な知恵の源だったりするよ。ギリシャの Hermes とか、アメリカ南西部の Kokopelli とか。トリックスターが哲学のルーツっていう考え方は、西洋の視点だけじゃなくて、もっと広い範囲に及んでるんだよね。笑うことで心が開き、新しい経験ができるっていう Native American の考え方もあるらしい。" userName="kjellsbells" createdAt="2025-04-02T01:15:40" color="#ff5733">}}

{{<matomeQuote body="OPもあなたのまとめも、マジで的確だね。ありがとう。" userName="cnity" createdAt="2025-04-01T13:31:38" color="#ff33a1">}}

{{<matomeQuote body="こういう prank する人は、周りの反応を過大評価してると思うんだよね。記事にも「電話してきた人は笑って許してくれた」ってあるけど、実際はみんな呆れて適当に笑ってくれただけだと思うよ。 ”practical joker” って自称してる人の ego を満たすために付き合ってあげてるだけ。" userName="mvdtnz" createdAt="2025-04-01T23:02:16" color="">}}

{{<matomeQuote body="素晴らしい歴史の話だね！全然知らなかった。おかげで視野が広がったよ、感謝！" userName="disqard" createdAt="2025-04-01T16:19:02" color="#785bff">}}

{{<matomeQuote body="マジで最高のコメント！その通り。" userName="jimmydddd" createdAt="2025-04-01T13:41:42" color="#38d3d3">}}

{{<matomeQuote body="1997-98年、最初の仕事は保険会社の tech support だったんだ。メールは Lotus Notes を使ってて、プログラマー権限があったから、ユーザーからの依頼フォームとか作ってたんだよね。ある金曜日、 casual dress day でジーンズ OK ってメールが admin から来るんだけど、いたずらで「pants-less Friday」ってメールを admin のフリして送っちゃったんだ。もちろん下着は着用必須って書いたけどｗ 送信先を間違えて IT/Eng 全員に送っちゃって大騒ぎ。クビにはならなかったけど、謝罪メールを書いたよ。みんなにはウケてたけどね。その後、プログラミングの仕事に移ったんだけど、退屈しなくなったから良かったと思ってる。" userName="autarch" createdAt="2025-04-01T13:30:23" color="">}}

{{<matomeQuote body="マジかー、メールにLotus Notes使ってたんだ。お悔やみ申し上げます。" userName="oldgradstudent" createdAt="2025-04-01T13:45:31" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="2022年にLotus Notesをメールに使ってるクライアントがいたんだって(しかも全国展開してる会社！)。いまだに使ってるかもね。外部からの招待状のためにカレンダーを並行して使ってて、片方のカレンダーの時計が5分ずれてたから、いつも会議に遅れてたらしいよ。" userName="enlightens" createdAt="2025-04-01T16:04:53" color="#ff5c5c">}}

{{<matomeQuote body="なんか微笑ましいけど、恐ろしい話だね。デジタル時代なのに、頑固にアナログな人たちもいるんだね。" userName="cloudwalk9" createdAt="2025-04-01T21:01:27" color="">}}

{{<matomeQuote body="Lotus Notesは、俺が今まで使った中で最悪のソフトウェアだよ。あれもこれもやろうとして、全部ダメになった。" userName="romanhn" createdAt="2025-04-01T15:33:15" color="#38d3d3">}}

{{<matomeQuote body="Outlook使ってると、Notesのメールで良かった点が毎日恋しくなるんだよね。Notesサポートしてたから、検索とかエージェントの使い方を知ってたし。Notesをdisるやつらは使い方も知らないんだよ。Notes捨てた会社は、SharepointとかServiceNowで同じようなアプリを作り直してるし。業界は数年ごとに同じことを繰り返してて、全然進歩してないよね。" userName="Suppafly" createdAt="2025-04-01T16:18:21" color="#38d3d3">}}

{{<matomeQuote body="NotesからMicrosoftのクラウドとLyncに乗り換えたけど、Notesの方がマシだったよ。Notesには何千もの小さなアプリがあったし。Microsoftのソリューションの方が安くなるはずだったのに、アプリ移行のための時間も予算もなかった。何年も経っても、まだNotesにお金を払ってるよ。" userName="Hikikomori" createdAt="2025-04-01T17:43:52" color="#785bff">}}

{{<matomeQuote body="めっちゃ同意。Notesは時代を先取りしてたけど、IBMのせいで無視されて腐っていったんだよ。" userName="Spooky23" createdAt="2025-04-01T23:39:46" color="#38d3d3">}}

{{<matomeQuote body="いまだにLotus Notes使ってるとこあるんだよね。前の会社は90年代の創業時からNotesを使ってて、Lotus NotesからIBM Notes、そしてHCL Notesになったのを見てきたんだって。メールから倉庫の在庫管理、ERPシステム、会社のドキュメントまで、全部Notesだった。スカンジナビアのハイテク機器メーカーなのにね。生産性の邪魔にしかならなかったから、すぐに辞めたよ。" userName="kogens" createdAt="2025-04-01T19:00:03" color="#38d3d3">}}

{{<matomeQuote body="Lotus Notesを閉じるにはF5キー。他のアプリだとF5は更新なのに、Lotus Notesだと作業内容が消えるんだぜ。Gavin BelsonのSignature boxみたいに、エイプリルフールネタから始まったんじゃないかって思うよ。" userName="eastbound" createdAt="2025-04-01T19:19:33" color="">}}

{{<matomeQuote body="いやいや、当時はすごかったんだって。" userName="martinsnow" createdAt="2025-04-01T15:33:27" color="">}}

{{<matomeQuote body="マジかー、結構イケてたんだね。Notesの上にソフト製品が色々構築されてて、フォームとかワークフローとかもあったんだって。俺はそういうの全然プログラムしなかったから、そっちは分かんないけど。でも、俺がいた会社ではNotes使って、サクッと社内フォームとかワークフロー作ったり、社内掲示板とかドキュメントまとめたりしてたよ。結構便利だった記憶。<br>ただ、OS/2で動かさないといけなかったのが謎。サーバー室に一台だけOS/2マシンがあったし。メールは使ってなかったけど。" userName="SoftTalker" createdAt="2025-04-01T15:49:27" color="">}}

{{<matomeQuote body="俺がNotesを使ったのは1999年。C++の通信講座を受けてた時だね。先生が課題とか、読むべき資料とか、ユニットの終わりにクイズとかをメールで送ってきてたんだ。プロジェクトもそのシステムで提出してたし。今だったら違う意見かもだけど、当時は結構便利に使えてた記憶。" userName="khedoros1" createdAt="2025-04-01T17:05:01" color="">}}

{{<matomeQuote body="＞でも、理由の一つはもっと挑戦的だったってこと<br>これマジで重要だと思う。暇なやつはバカなイタズラするんだよね。で、挑戦が足りないとマジでヒマになる。" userName="hnaccount_rng" createdAt="2025-04-01T18:34:07" color="#ff5733">}}

{{<matomeQuote body="マジそれな。俺も大学入るまではずっとそうだった。" userName="autarch" createdAt="2025-04-01T21:29:01" color="">}}

{{<matomeQuote body="それで…パンツレス・フライデーってみんなマジでパンツ履かなかったの？" userName="kspacewalk2" createdAt="2025-04-01T15:01:59" color="">}}

{{<matomeQuote body="残念ながら、マジで履いてた。" userName="autarch" createdAt="2025-04-01T15:10:11" color="">}}

{{<matomeQuote body="エイプリルフールにやったらマジでウケたのに。" userName="kypro" createdAt="2025-04-01T15:12:38" color="">}}

{{<matomeQuote body="ここが一番笑えた:<br>＞それも失敗だった。なぜなら、俺の撤回文が、大学の事務がページごとの料金を検討していないと言ったのに、実際には検討していたから。だから、それを撤回して、その事実に触れない新しい撤回文を送らなければならなかった" userName="thruway516" createdAt="2025-04-01T16:48:12" color="#ff5c5c">}}

{{<matomeQuote body="多分、もっと高い金額を検討してたから、5セントじゃ安すぎたんだよ。" userName="instagib" createdAt="2025-04-01T19:45:14" color="">}}

{{<matomeQuote body="だよね？マジでありえそうで一番ウケる！" userName="whycome" createdAt="2025-04-01T19:46:04" color="">}}

{{<matomeQuote body="高校時代にプリンターの準備完了メッセージを全部「Insert Coin」に変えたんだよね。スクリプトのパラメータを確認しなかったせいで、学校区全体に展開しちゃった。意外なことに、これが原因でネットワークからBANされたわけじゃないんだよね。" userName="jamesrat" createdAt="2025-04-01T14:34:34" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
