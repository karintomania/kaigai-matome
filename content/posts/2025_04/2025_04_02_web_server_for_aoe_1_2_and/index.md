+++
date = '2025-04-02T00:00:00'
months = '2025/04'
draft = false
title = 'AoE1, 2, 3決定版が完全オフラインLAN対戦に対応！激アツ環境構築を今すぐ実現'
tags = ["AoE", "LAN対戦", "オフライン", "ゲーム", "RTS"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> AoE1, 2, 3決定版が完全オフラインLAN対戦に対応！激アツ環境構築を今すぐ実現

引用元：[https://news.ycombinator.com/item?id=43562860](https://news.ycombinator.com/item?id=43562860)

{{<matomeQuote body="AoE好きのHacker News民なら、0 A.D.もハマるかもね。無料だし面白いけど、自分が戦略マスターだと思ってると打ちのめされるかもよ。https://play0ad.com/" userName="Rendello" createdAt="2025-04-03T00:41:55" color="">}}

{{<matomeQuote body="0adマジで好きだけど、ユニットが増えると途端に重くなるのが難点なんだよなー。" userName="bryancrisso" createdAt="2025-04-03T01:55:21" color="">}}

{{<matomeQuote body="0 A.D.のAlpha 27では、一部のユーザーでパフォーマンスが低下してるらしい。Vulkan対応とかで改善された人もいるみたいだけど。原因はSpidermonkeyの変更っぽい。詳しくはhttps://gitea.wildfiregames.com/0ad/0ad/issues/7714を見てね。ユニットが多いと重くなるのは、シングルスレッドだからマルチコアCPUを活かせてないせいかも。改善には労力がいるから、まだ誰も手をつけてないみたい。もし0 A.D.が好きなら、Open Sourceだし貢献歓迎だよ！" userName="Dunedan" createdAt="2025-04-03T08:16:24" color="#785bff">}}

{{<matomeQuote body="個人的にはそんな経験ないなー（10年くらいプレイしてる）。古いハードだとキツいのかもね。大規模チーム戦でユニット同士がぶつかり合うとラグるけど、それはネットワークの問題かも。" userName="Rendello" createdAt="2025-04-03T02:30:15" color="">}}

{{<matomeQuote body="ゲーム開発者じゃないから気になるんだけど、こういうゲームって決定論的なの？もしそうなら、大量のユニットを移動させて攻撃するってサーバーに送れば、結果はサーバーで計算できる？なんでネットワークの問題が起きるんだろ？" userName="yohannesk" createdAt="2025-04-03T04:20:05" color="#38d3d3">}}

{{<matomeQuote body="この記事はマジもんのクラシック。「28.8kbpsで1500人の射手を動かす：Age of Empiresのネットワークプログラミング」 https://www.gamedeveloper.com/programming/1500-archers-on-a-…<br>オリジナルはこちら：https://web.archive.org/web/20180719170411/https://www.gamas…<br>＞ゲーム内の各ユニットの状態を渡すのではなく、各マシンで全く同じシミュレーションを実行し、ユーザーが同時に発行した同一のコマンドセットを渡すことを想定していました。PCは基本的に最高の戦争映画の伝統の中でゲームウォッチを同期させ、プレイヤーがコマンドを発行できるようにし、まったく同じように同時に実行し、同一のゲームを実行していました。”" userName="matsemann" createdAt="2025-04-03T05:58:44" color="#785bff">}}

{{<matomeQuote body="それ、バグがあると「sync error」って出て、3時間プレイしたデータが消えるっていう最悪の事態になるんだよね。" userName="IshKebab" createdAt="2025-04-03T06:47:29" color="">}}

{{<matomeQuote body="Factorioで同じことが起きたときは、ゲームが一時停止して、サーバー役のプレイヤーがゲームを保存して他のプレイヤーに送信、みんながそれをロードして再開するんだ。最高に<br>ナイス<br>な体験ではないけど、「今日はもう遊べません、さようなら！」よりはマシ。" userName="immibis" createdAt="2025-04-03T09:07:18" color="">}}

{{<matomeQuote body="RA2/YRでも同じ。対戦相手がトレーナーとか不正IFSを使ったらゲームが終わる。ロビーがIRCd上で動いてたのは良かったな。Dreamforge IRCdのサーバーパスワードは「supersecret」だったし。" userName="doublerabbit" createdAt="2025-04-03T10:32:41" color="#ff5c5c">}}

{{<matomeQuote body="多くのRTSゲーム（全部じゃないけど）は、ロックスステップ同期っていうネットワーク方式を使ってる。これはゲームプレイが決定論的である必要があるけど、欠点もある。その一つが、誰か一人がラグると、<br>全員<br>ラグるってこと。AoE 1と2はこれを使ってて、3もそうだと思う。" userName="HideousKojima" createdAt="2025-04-03T04:31:34" color="#ff33a1">}}

{{<matomeQuote body="Beyond All Reasonだと、Spring/Recoilエンジンが最終的に「アクションウィンドウを閉じる」みたいになるらしいよ。誰か一人がめっちゃラグいと、そのラウンドのアクションが送信されなくて、他のプレイヤーは続行するんだって。俺も経験あって、終盤でPCがリアルタイムでシミュレーションできなくなって、ユニット操作できなくなったけど、他の人は普通にプレイしてた。チャットはできるから、チームメイトに自分の軍隊操作頼めるのは便利だね。" userName="NortySpock" createdAt="2025-04-03T15:08:18" color="#45d325">}}

{{<matomeQuote body="リプレイが無料でついてくるのは良いことだね。" userName="littlestymaar" createdAt="2025-04-03T05:53:32" color="">}}

{{<matomeQuote body="デメリットもあるよ。シミュレーションを実行しないとゲームの状態を復元できないことが多いし、巻き戻しもできないことが多い。リプレイで一瞬見逃したら、全部見直さなきゃいけないんだ。" userName="Panzer04" createdAt="2025-04-03T08:19:56" color="">}}

{{<matomeQuote body="それってどんなネットワーキングでも同じじゃない？" userName="gsich" createdAt="2025-04-03T12:46:53" color="">}}

{{<matomeQuote body="決定論的かもしれないけど、ゲームの種類について勘違いしてるかもね。<br>0ADとかAoEみたいなRTSゲームでは、単に一つの巨大なユニットを攻撃に送って結果を待つんじゃなくて、数十もの個々のユニットを敵ユニットの近くに送り込むんだ。そして、「戦闘」がリアルタイムで進行して、プレイヤーがユニットをマイクロマネジメントして結果に影響を与えることができる。サーバーはプレイヤーの思考プロセスをシミュレートできないから、サーバー上でシミュレートすることはできないんだ。" userName="arlort" createdAt="2025-04-03T06:23:47" color="#ff5c5c">}}

{{<matomeQuote body="AoE2の戦いはマイクロマネジメントが全てだよね。相手のトレビュシェットの攻撃に対して、最後の瞬間に大量のゴミユニットを分割してマイクロショットを打つことで、全てが変わるんだ。<br>ちょっと古いけど、ユニットごとのマイクロ戦術がたくさんあるよ: <br>＞https://youtu.be/hjUgisPD_C4?si=F-UvzDOTsWRZhZSq”" userName="vasco" createdAt="2025-04-03T06:42:48" color="#ff5c5c">}}

{{<matomeQuote body="俺も同じだよ。ゲームするときは最新のWindows 10 PC (Ryzen 5600x, RTX 3070Ti)を使ってる。Linuxの方がパフォーマンスが良いのかな。" userName="nophunphil" createdAt="2025-04-03T06:37:26" color="">}}

{{<matomeQuote body="え、これまだ開発されてるんだ？ Heavengamesのフォーラムのスレッドから生まれたのを覚えてるよ…" userName="RUnconcerned" createdAt="2025-04-03T08:36:21" color="">}}

{{<matomeQuote body="1月に大きなリリースがあったばかりだよ！" userName="Rendello" createdAt="2025-04-03T15:28:10" color="">}}

{{<matomeQuote body="8人マルチプレイはプレイできない。" userName="gsich" createdAt="2025-04-03T12:45:38" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="ラグがあるから、逆に作戦を練る時間が増えるって考えれば良くね？" userName="Rendello" createdAt="2025-04-03T15:30:23" color="">}}

{{<matomeQuote body="AoEみたいなゲームが未来でも遊べるようにするのは最高だね。サーバーが止められたせいで機能が失われるのは悲しい。" userName="recycledmatt" createdAt="2025-04-03T00:21:17" color="#38d3d3">}}

{{<matomeQuote body="AOE2のオンライン対戦にめちゃくちゃ時間を使った身としては、AOE2 DEが進化してるのは本当に嬉しい。文明の数が50以上になったり、グラフィックが向上したり、ゲームプレイも改善されてるし。オープンソースコミュニティのおかげで、こんな発展があるなんてマジですごい。" userName="princevegeta89" createdAt="2025-04-03T05:27:15" color="#ff5c5c">}}

{{<matomeQuote body="意味ないかもね。友達と「ランダム文明」でやると、いつもバイキングになるんだよね。海がないマップなのに。<br>それはさておき、このゲームが生き続けてるのは本当に素晴らしいことだ。" userName="moduspol" createdAt="2025-04-03T15:45:19" color="">}}

{{<matomeQuote body="バイキングは優秀な弓の文明だよ。テクノロジー全開放だし、無料の手押し車はトップレベルの経済ブースト。" userName="reactormonk" createdAt="2025-04-03T15:57:28" color="#ff5733">}}

{{<matomeQuote body="パラディンにボコボコにされて、対抗手段がほとんどなかった記憶が蘇る…。" userName="moduspol" createdAt="2025-04-03T16:20:11" color="">}}

{{<matomeQuote body="固有ユニットじゃないパラディンに対抗できるのは、重装ハルバード、重装らくだ、大量のArbalesterだけ。モンクは少数なら有効だけど、終盤で大量に生産されると、ハルバードとラクダを同数くらい用意しないと止められない。" userName="pertymcpert" createdAt="2025-04-03T17:59:10" color="#38d3d3">}}

{{<matomeQuote body="Arbalesterもパラディンにはボコボコにされるよ。壁の後ろとか、パラディンの攻撃範囲が狭くなる場所に誘導できない限り。" userName="princevegeta89" createdAt="2025-04-04T00:58:46" color="">}}

{{<matomeQuote body="広い場所でも、十分な数のArbalesterがいれば互角に戦えると思う。エチオピアのArbalesterは25%早く攻撃できるし。一体ずつパラディンを集中攻撃するように指示すれば、パラディンを一撃で倒せるし、攻撃面積は数に応じて増加する。ハルバード連打より手間はかかるけどね。" userName="pertymcpert" createdAt="2025-04-04T22:01:53" color="#ff5c5c">}}

{{<matomeQuote body="そうだね、相当なマイクロが必要だね。" userName="princevegeta89" createdAt="2025-04-05T14:45:18" color="">}}

{{<matomeQuote body="あの Viking Pikemen ってやつ、HPめっちゃ多いんだよね。" userName="princevegeta89" createdAt="2025-04-03T17:09:25" color="">}}

{{<matomeQuote body="次のリリース後、分割される文明の候補として有力だね。どうなるか楽しみだ。" userName="lippihom" createdAt="2025-04-03T18:07:27" color="">}}

{{<matomeQuote body="Vikings はマジで最強の文明だよ。Berserks は一番好きなユニットの一つ。今どうなってるか知らないけど、昔は Paladins と攻撃力で完全に匹敵してたんだぜ。" userName="princevegeta89" createdAt="2025-04-03T17:08:44" color="#45d325">}}

{{<matomeQuote body="もし AoE が Nintendo の所有だったら…想像してみて！<br>MS がこんなにオープンなコミュニティの成長を許すなんて、ちょっとした驚きだよね。MS ってゲームコミュニティの育成が下手だってことで有名じゃん。<br>2001年に MS が ES を買収した後、MS は厳しい IP 強制の役割を担って、例えば MFO の人々をターゲットにしたんだ。<br>DBD_Jinx が MS にアカウントを奪われた話は伝説だよね。DBD_Jinx は MS の商標をライセンスなしで使用した著作権侵害で ZONE アカウントを停止され、_IamJinx として再出発することになったんだ。<br>彼は何をしたかって？<br>MFO で、初期のゲームを有利に進めるためのアカデミー・トレーニングを宣伝したんだ。そこでは、マイクロマネジメント、ゲームプランニング、戦略、偵察に関するアドバイスを提供してた。<br>アメリカの 2000+ Zone Rating のやつらと一緒に、AoE を使ってちょっとした稼ぎを始めたんだよ。<br>MS の当時の過剰反応ったらなかったよね。<br>それが今や Red Bull Wololo だよ！2001年とは比べ物にならないくらいワクワクする！<br>僕は昔ながらの AoE 2 が好きなんだ。これからもこの調子で続いてほしいな。<br>_CN" userName="_the_inflator" createdAt="2025-04-03T09:29:34" color="#ff5733">}}

{{<matomeQuote body="これって Supreme Commander でもあったよね。<br>会社が閉鎖してサーバーが停止したんだけど、幸運なことに誰かがマッチメイキングサーバーを実装してくれたんだ。<br>今でもコミュニティは活発で成長を続けてて、ゲームの開発まで続けて、オリジナルを遥かに超えてるんだ。<br>それは Forged Alliance Forever って呼ばれてるよ。" userName="slightlygrilled" createdAt="2025-04-03T17:31:53" color="#ff5c5c">}}

{{<matomeQuote body="マジかよ。どんな変更を加えたの？クラシックゲームだと、その線引きって難しいんじゃないかな。" userName="apitman" createdAt="2025-04-03T18:05:55" color="">}}

{{<matomeQuote body="主にバランスとクオリティ・オブ・ライフだね。UI が特に大幅に改善されたよ。AI 対戦相手も良くなったし、いくつかの新しいユニットも追加されて、バランスが改善されたんだ。" userName="TsiCClawOfLight" createdAt="2025-04-04T05:43:51" color="#ff5c5c">}}

{{<matomeQuote body="これって法律で義務化されるべきだと思うわ。製品を使うのに必要なサービスを提供してる？素晴らしい。もしそのサービスの提供を停止して製品が動作しなくなったり一部しか動作しなくなったりする場合、実装とドキュメントを公開する義務を負うべきだよね。" userName="4gotunameagain" createdAt="2025-04-03T06:12:07" color="#785bff">}}

{{<matomeQuote body="AoE2 は 1997 年のゲームエンジンをベースに 1999 年にリリースされたんだけど、2025 年の春には新しい大型 DLC がリリースされる予定だよ (Definitive Edition 版)。Sandy Petersen は誇りに思うべきだね。" userName="red_admiral" createdAt="2025-04-03T09:16:26" color="#ff5733">}}

{{<matomeQuote body="俺たちが子供の頃、00 年代に LAN で AoE2 のセッションやってたんだけど、3 回に 1 回くらいの割合で 2～3 時間プレイした後、クラッシュしてたのを覚えてるわ。<br>ある意味、その方が良かったんだよね。誰も負けなくて済むし、みんな自分が勝ってると思ってたから。" userName="Seanambers" createdAt="2025-04-03T08:49:12" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="みんなで「タートル戦法」やってたから、ゲームが終わらないことなんてザラだったよね。" userName="matsemann" createdAt="2025-04-03T10:16:33" color="">}}

{{<matomeQuote body="それって子供のMonopolyみたいじゃん。でも、それが楽しいんだよね！" userName="rightbyte" createdAt="2025-04-03T11:51:56" color="">}}

{{<matomeQuote body="わかるー。俺らもタートル戦法よくやってたわ！最初は攻撃禁止の協定結んで、鉄壁都市を築き上げて、資源が尽きるまで耐えて、最後に城10個と兵舎と厩舎からユニットを量産して総攻撃！" userName="matsemann" createdAt="2025-04-03T12:05:52" color="#45d325">}}

{{<matomeQuote body="共有してくれてありがとう、マジですごい。<br>Steamは便利だし、SteamOSの開発も評価してるけど、ロックインが心配なんだよね。こういうプロジェクトは、購入したものをより自分のものにするのに役立つからluskanerは俺にとってヒーローだ。" userName="o1o1o1" createdAt="2025-04-03T03:47:30" color="#ff5733">}}

{{<matomeQuote body="SteamはゲームにDRMを必須にしてないってことを指摘するのは重要だと思う。SteamのDRMですら必須じゃないんだよ。ゲームの開発者とかパブリッシャー次第なんだよね。Steamにあるゲームの多くはDRMフリーで、ファイルをバックアップしてSteamなしでプレイできる。" userName="Rohansi" createdAt="2025-04-03T04:20:21" color="#ff5733">}}

{{<matomeQuote body="これってAoEにも当てはまるの？昔はあんまりやらなかったんだけど、ちゃんとやってみたいんだよね。でも、メンテナンスの問題があるかもしれないのに、DRM付きの古いゲームを買う気にはなれないな。" userName="herewulf" createdAt="2025-04-03T07:52:14" color="#ff33a1">}}

{{<matomeQuote body="AoEは自分で確認してないな。DRMが心配なら、Steam DRMを使ってるゲームは、ゲームに付属してるSteam DLLをエミュレートするDLLに置き換えるだけで簡単にクラックできるよ。" userName="Rohansi" createdAt="2025-04-03T15:17:03" color="#45d325">}}

{{<matomeQuote body="買ってからクラック版をダウンロードすればいいじゃん。" userName="lionkor" createdAt="2025-04-03T10:38:47" color="">}}

{{<matomeQuote body="俺も基本的にはそうしてたよ。AoEをCDで何回か買って、Steamでもまた買った。最初はISOイメージで仮想ドライブ使って、後でクラック版を使った。<br>今はSteam版しか使ってないけどね。世界中の友達と簡単にマルチプレイできるし。あと、Steamで手に入るAoEのリメイク版にある追加機能もマジで気に入ってる。" userName="o1o1o1" createdAt="2025-04-03T15:16:39" color="#38d3d3">}}

{{<matomeQuote body="指摘してくれてありがとう。AoEは多分そうじゃないよね？<br>いつか昔のAoEのバージョンがオープンソース化されるといいなー。そうなったら最高だ。" userName="o1o1o1" createdAt="2025-04-03T15:17:49" color="#ff5c5c">}}

{{<matomeQuote body="たぶん、マルチプレイのゲームだから、チーター対策したいんじゃないかな。" userName="pertymcpert" createdAt="2025-04-03T18:00:02" color="">}}

{{<matomeQuote body="Steam の DRM はチーター対策には全然なってないよ。" userName="Rohansi" createdAt="2025-04-03T21:33:40" color="">}}

{{<matomeQuote body="AGPL ライセンスで利用規約ってどういうこと？　それってライセンスで禁止されてる「さらなる制限」じゃないの？" userName="abigail95" createdAt="2025-04-03T00:39:40" color="#ff5733">}}

{{<matomeQuote body="訴訟対策みたいなもんでしょ。" userName="anamexis" createdAt="2025-04-03T01:11:11" color="">}}

{{<matomeQuote body="意味がないなら、それはただの訴訟対策だよ。" userName="HeatrayEnjoyer" createdAt="2025-04-03T02:30:28" color="">}}

{{<matomeQuote body="CYA は “Cover Your Ass” の略だよ。<br>Wikipedia によると、＞“個人が批判とか法的責任とか、仕事関係とか官僚的な文脈での不都合な結果から自分を守るためにやる行為”らしいよ。<br>引用元：https://en.wikipedia.org/wiki/Cover_your_ass" userName="pacificmint" createdAt="2025-04-03T02:38:18" color="#38d3d3">}}

{{<matomeQuote body="これはすごい。<br>AoE3 の API に関する公開ドキュメントってあるのかな？それとも全部リバースエンジニアリングで作ったのかな。そういうドキュメントについて質問してる人は見たことあるけど、実際にあるのを見たことないな。" userName="LPisGood" createdAt="2025-04-03T00:50:47" color="#ff5733">}}

{{<matomeQuote body="このリポジトリのどこかにあるんだろうけど、俺には無理だ… AoE2 DE って、主に P2P でマルチプレイしてるの？ マッチメイキングだけリージョナルサーバー使ってて、ゲームロジックは全部クライアント側で動いてるってこと？ マップハックがあることとか、誰か1人がラグるとみんなラグくなるってことからそう思ってるんだけど、AoE のフォーラムだと意見が分かれるんだよね。" userName="cheeseomlit" createdAt="2025-04-03T03:20:10" color="#ff33a1">}}

{{<matomeQuote body="もし読んでなかったら、オリジナルのネットコードに関する素晴らしい論文があるよ：https://zoo.cs.yale.edu/classes/cs538/readings/papers/terran...<br>Definitive Edition で設計が大幅に変更されて P2P じゃなくなってるとは思えないけど、確かな情報は何もないんだ。" userName="lightingthedark" createdAt="2025-04-03T03:54:46" color="#ff5733">}}

{{<matomeQuote body="AFAIK、DE版はp2pじゃなくてサーバーベースらしいよ。クライアントとサーバーが全部ロックステップで世界をシミュレートして、状態の完全なコピーを持ってるんだって。だからmap hackができるんだね。Paxosみたいなのはいらないみたい。もしどこかのマシンがミスったらゲームがdesyncして止まるけど、セーブポイントから復元できることが多いらしいよ。" userName="red_admiral" createdAt="2025-04-03T09:20:26" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="プロのトーナメントだと、サーバーは2人のプレイヤーの間に位置するように選ばれるんだって。例えば、ブラジル対中国の試合はEUサーバーでプレイされるかもしれないね。ってことは、サーバーはクライアント間の中心的な情報源として使われていて、すべてのゲームデータがサーバーを通過し、計算はすべてクライアント側で行われているんじゃないかな。" userName="Raudius" createdAt="2025-04-03T07:35:02" color="#785bff">}}

{{<matomeQuote body="それは昔の話だよ。DE版はネットワークが弱いプレイヤーだけラグるみたい（一人のプレイヤーのCPUパフォーマンスの低下は、すべてのプレイヤーに影響するけど）。" userName="arbitrandomuser" createdAt="2025-04-03T07:17:27" color="">}}

{{<matomeQuote body="AoE2がチェスみたいに長く続いてほしいな。本当に“完璧”なゲームの一つだよ。" userName="brink" createdAt="2025-04-03T02:14:40" color="#785bff">}}

{{<matomeQuote body="チェスは2年ぶりにプレイしてもルールが変わってないけど、AoE2はそうじゃないんだよね。そこが問題。" userName="guappa" createdAt="2025-04-03T05:53:50" color="">}}

{{<matomeQuote body="本当にそうだよね。しかも、どんどん改善されてるし。Definitive EditionはAoE3とか4よりも投資されてるんじゃないかな。" userName="hackernewds" createdAt="2025-04-03T02:35:57" color="#45d325">}}

{{<matomeQuote body="最近、ほぼ同じことを考えてたんだ。最高のゲームはずっと残ってほしいよね。楽しいゲームなら、バランスの問題とか、バグじゃない機能とかもそのままにしておけると思う。でも、netcodeのバグみたいな、純粋にマイナスなものは難しいよね。Idがソースを公開してくれて本当に感謝してる。AoE2でも同じことが起こるのを願ってるよ。" userName="apitman" createdAt="2025-04-03T17:07:40" color="#785bff">}}

{{<matomeQuote body="確かに素晴らしいゲームだよね。ランダム性とか、ターン制じゃないこととか、マルチプレイがあることも、チェスと比べて面白い点だよね。でもチェスはルールが1000倍シンプルで、変わらないし、APMが高くなくても競技的にプレイできるし。" userName="dominicrose" createdAt="2025-04-03T08:14:11" color="#785bff">}}

{{<matomeQuote body="AoE2が今年PS5で発売されるらしいよ。" userName="sqrt_1" createdAt="2025-04-03T08:11:44" color="">}}

{{<matomeQuote body="これのwebサーバーの部分がいまいちわからないんだけど。AoEマルチプレイのマッチメイキングとか、ゲームブロードキャストのことかな？" userName="hoten" createdAt="2025-04-03T00:49:00" color="">}}

{{<matomeQuote body="これ気になるよねー。routesファイル読んだの楽しかったよ！<br>https://github.com/luskaner/ageLANServer/blob/main/server/in…" userName="pininja" createdAt="2025-04-03T01:06:25" color="">}}

{{<matomeQuote body="LANでゲーム自体は動くけど、LANプレイにネットが必要なのって2つ理由があるよね。<br>1．ゲームがマルチプレイサービスに繋がること。<br>2．LAN設定の調整サーバー。<br>これは2をカバーしてるんだね。1はSteamを騙して接続してると思わせる必要があるから、もっと大変そう。" userName="apitman" createdAt="2025-04-03T17:03:36" color="#785bff">}}

{{<matomeQuote body="初代Age of Empiresにも同じようなのないのかな？Battle.NetにはDiablo 2からWarcraft 3までをカバーするPVPGNがあるけど、AoEの類似品は見つからないんだよね。" userName="CursedSilicon" createdAt="2025-04-03T03:43:21" color="">}}

{{<matomeQuote body="昔、仮想LANソフト使ってLAN対戦したことあるよ。みんなで同じソフト入れて、ゲーム内で繋がった。「Hamachi」だったかな？" userName="matsemann" createdAt="2025-04-03T10:19:48" color="">}}

{{<matomeQuote body="Vooblyってサイト見てみるといいかも。オリジナルのゲームやってる人が結構いるみたい。パッチ当てられたバージョンが多いみたいだけど。" userName="apitman" createdAt="2025-04-03T17:04:44" color="">}}

{{<matomeQuote body="初代はオフラインLANプレイできたと思うよ。友達にモデムで電話かけて繋いで対戦したの覚えてる。ネット接続なしで。" userName="lightingthedark" createdAt="2025-04-03T03:49:42" color="#785bff">}}

{{<matomeQuote body="昔はLANプレイの他に「インターネット」って選択肢があった気がする。ポートフォワーディング設定して、友達に電話でIPアドレス教えて入力してもらってたなー。" userName="red_admiral" createdAt="2025-04-03T09:12:49" color="">}}

{{<matomeQuote body="去年の12月にLANパーティーで試したけど、うまくいかなかったんだよね。次のLANパーティーでまた試してみるよ。開発頑張って！" userName="typh00n" createdAt="2025-04-03T09:54:16" color="">}}

{{<matomeQuote body="公式のLANサポートじゃなくて、これを使う理由って何？俺は飛行機の中で完全にネットなしで動かしたいんだよね。LANにネット接続が必要なのってマジ悲しい。" userName="apitman" createdAt="2025-04-03T17:00:17" color="#ff33a1">}}

{{<matomeQuote body="参加者全員がゲームの正規版を持ってるわけじゃないんだよね。俺は買う価値あると思ってるけど、一回きりのLANパーティーのために人に無理やり買わせたくないし。" userName="typh00n" createdAt="2025-04-03T20:45:58" color="">}}

{{<matomeQuote body="最近インターネットでLANゲームやるなら何がいいかな？<br>Hamachiはまだあるみたいだけど、できればオープンソースがいいな。<br>Tailscaleは残念ながらマルチキャストに対応してないんだよね。多分ほとんどのゲームがLAN探索にマルチキャスト使ってると思うから。<br>ZeroTierとかどうかな？" userName="apitman" createdAt="2025-04-03T20:23:28" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
