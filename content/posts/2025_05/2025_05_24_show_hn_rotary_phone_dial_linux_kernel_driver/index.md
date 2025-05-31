+++
date = '2025-05-24T00:00:00'
months = '2025/05'
draft = false
title = 'まさか！ダイヤル式電話機がLinuxカーネルドライバーに！'
tags = ["Linux", "カーネル開発", "ハードウェア", "レトロテック", "自作"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> まさか！ダイヤル式電話機がLinuxカーネルドライバーに！

引用元：[https://news.ycombinator.com/item?id=44080803](https://news.ycombinator.com/item?id=44080803)




{{<matomeQuote body="70年代後半、俺のHP41Cでロータリー電話機ダイヤラー作ったんだぜ。圧電ブザーと”synthetic programming”使ってね。名前から電話かけられたんだよ。昔読んだ本の著者、Keith Jarrettさんと偶然会ったんだけど、ミュージシャンじゃない方の彼で、本の話で盛り上がったってエピソードも面白かったな。当時の苦労と技術への愛を感じる話だぜ。https://picclick.com/HP-41-Synthetic-Programming-Made-Easy-b...<br>https://www.hpmuseum.org/prog/synth41.htm" userName="anonymousiam" createdAt="2025/05/24 15:43:50" color="#ff5c5c">}}




{{<matomeQuote body="俺も友達とHP-41Cでダイヤラー作ったよ！どんな電話でも使える短縮ダイヤラーにしてたんだぜ。synthetic programming guideの現物もまだ持ってる。あの頃の電卓はマジでパワフルだったんだ。<br>大学でRF計算のプログラム作って教授に見せたら、テストで電卓使用禁止になったりもしたんだ。後で学科内の縄張り争いだって知って、人間の意思決定は技術だけじゃないって学んだね。" userName="johnea" createdAt="2025/05/25 02:09:53" color="#ff33a1">}}




{{<matomeQuote body="面白い話だな。俺も似た経験あるよ。大学の数学教授に電卓の計算能力見せたら、君は電卓なしでもできるでしょ、って shrug されたんだ。<br>俺もHP-41改造したぜ。ダイヤラー用に外部端子つけたり、磁石でクロックを倍速にする改造とかね。タイミング狂うからダイヤラーと併用はできなかったけど、GTEがESSに変わるまで楽しめたんだ。当時の改造熱が伝わってくる話だぜ。" userName="anonymousiam" createdAt="2025/05/25 02:50:04" color="#ff5733">}}




{{<matomeQuote body="クールなストーリーだね :) 気になってんだけど、そういうのって電卓本体でプログラミングするの？俺はHP49Gでやったことあるけど、ああいう制約された環境で書けたプログラムに誇り持ってたよ。でも41Cの1行ディスプレイはマジで偉業だよね！" userName="jtwaleson" createdAt="2025/05/24 19:31:31" color="">}}




{{<matomeQuote body="HP-41Cが俺の最初のコンピューターだったんだ。周辺機器に数千ドルも使ったよ。当時は他に何もなかったからね。でも結局、プログラム保存した磁気カードも含めて全部手放しちゃったんだ。コード書いたノートはまだあるかもだけど。<br>Synertek SYM-1とかCP/Mシステムも手放して、IMSAI 8080もあげちゃった。今ではコレクタブルらしいけどね。古いシステムは懐かしいけど、使うのは大変だから現代のシステムの方が快適だなって思うよ。" userName="anonymousiam" createdAt="2025/05/25 01:46:57" color="#38d3d3">}}




{{<matomeQuote body="今日に至るまで、俺はHP-41CX電卓のLinuxデスクトップシミュレーターをまだ使ってるぜ！<br>元のウェブサイトはもうオフラインみたいだけど：https://nonpareil.brouhaha.com/<br>でもコードはまだ手に入るよ：https://github.com/brouhaha/nonpareil" userName="johnea" createdAt="2025/05/25 02:21:26" color="">}}




{{<matomeQuote body="nonpareilを見て、試してみることにしたんだ。リストされてない依存関係がいくつかあって、wasm.hを3つのファイルでwasm_y.hに変えなきゃいけなかったし、その後は実行可能ファイル(str2png)実行しようとしてnfsマウントされたファイルシステムではビルドできなかったんだ。結局インストールして動いたよ。めちゃくちゃクールだね！" userName="anonymousiam" createdAt="2025/05/26 05:43:20" color="">}}




{{<matomeQuote body="俺は”realcalc”ってAndroidアプリを使ってるよ。1999年くらいにPalmOS版を最初に買ったんだ。マジで素晴らしいエミュレーターだよ。iPadではFree42を使ってる。<br>デスクトップなら、bcで十分かな。" userName="anonymousiam" createdAt="2025/05/25 02:59:09" color="">}}




{{<matomeQuote body="ロータリー電話機好きなみんなに shameless plug だぜ：俺、自分のロータリー電話機を完全に機能するBluetoothヘッドセットに改造したんだ。ダイヤルで番号かける機能もそのまま使えるぜ。Hackadayにも載ったんだよ。すごいと思わない？<br>https://hackaday.com/2024/10/31/bakelite-to-the-future-a-195...<br>https://blog.waleson.com/2024/10/bakelite-to-future-1950s-ro...<br>Bluetoothテンキー化のアイデアもあるんだ。面白そうだけど、時間がないのが悩みだな。" userName="jtwaleson" createdAt="2025/05/24 19:04:04" color="#45d325">}}




{{<matomeQuote body="いいね！最近はESP32使う方がずっと経済的だよね。でも、まあ、俺はLinux kernel driverをマジで書きたかったんだ ;-)" userName="sephalon" createdAt="2025/05/24 19:11:40" color="#45d325">}}




{{<matomeQuote body="わかるわかる ;) 時間計算したらハードウェアなんて全然かからないよね… キミのハードウェアセットアップ、ちょい見たいな！" userName="jtwaleson" createdAt="2025/05/24 19:26:19" color="">}}




{{<matomeQuote body="iPhoneがまだウワサだった頃、当時のiPodみたいなタッチホイールでロータリーダイヤル復活させたら面白いんじゃね？って提案したんだけど、みんなにバッサリ却下されたんだよ。これのおかげでさ、今やLinuxマシンさえ用意すれば、あのクラシックなロータリーの雰囲気味わえるじゃんか！" userName="mauvehaus" createdAt="2025/05/24 15:24:29" color="#785bff">}}




{{<matomeQuote body="実はキミだけじゃなく、Appleもタッチホイールでのロータリーダイヤル特許持ってたんだ。 https://www.patentlyapple.com/2010/12/apple-wins-patent-for-... Steve Jobsも発明者。俺も同時期にほぼ同じアイデアで特許出願したんだよ（俺のは失効）。SFで飲みすぎた時に同僚に話したアイデアで、特許委員会に送ったら通ったんだ！Steveの特許と似ててウケたと思うけど、違いはあったよ。マーケティングでiPhone関連の特許増やしたかったのかもね。" userName="herodotus" createdAt="2025/05/24 17:36:19" color="#38d3d3">}}




{{<matomeQuote body="これ、マジ好きだわ！ Appleの中に同じアイデア持ってた人がいたってのも、俺もそのアイデア出した時、実はビール何杯か入ってたってのも、どっちも最高すぎ！" userName="mauvehaus" createdAt="2025/05/24 17:53:21" color="">}}




{{<matomeQuote body="もしAppleがiPodにセルラー機能だけつけてアプデしてたら、最低でも1機種でもさ、めっちゃ面白いタイムラインだったろうな。そしたらタイピングはこれ使えるじゃん： https://www.youtube.com/watch?v=9BnLbv6QYcA" userName="spicybright" createdAt="2025/05/24 16:22:40" color="#38d3d3">}}




{{<matomeQuote body="あの動画が16年前に出てて、『Appleがビジネス向けPC作るか見もの』って言ってたけど、今俺が働いてるとこじゃ、Macbookにアプデ送ったらM1チップのは文鎮化するんだよ。M2/M3は大丈夫なのに。macOSが企業環境で使うの、今だに大変なのってマジ”すごい”わ。ビジネスには向かないってネタにされるの、Appleは気にしてないのかもね。" userName="gaudystead" createdAt="2025/05/24 19:19:24" color="">}}




{{<matomeQuote body="ビジネスによるかもだけど、俺はキャリアずっと企業環境でMac使ってるけど問題ゼロだよ。ちゃんと管理されたデバイスならね。アプデ前にテストできない会社が悪いんであって、MacとかWindowsとか関係ない。Apple Silicon Macbookならテストする機種なんて少ないだろ？何世代ものDell/Lenovo/HP混ぜてるWindows環境とは違う。" userName="jmb99" createdAt="2025/05/24 19:38:40" color="#38d3d3">}}




{{<matomeQuote body="これも1年か2年くらい前の動画ね。当時のこういうアイデアがどんだけ新しく見えたか分かるわ。 https://m.youtube.com/watch?v=BGGOn-H7s3Q" userName="afandian" createdAt="2025/05/25 09:51:43" color="">}}




{{<matomeQuote body="たぶん、タッチスクリーンでロータリーダイヤルして電話かけられるアプリ、あるっしょ。" userName="VladVladikoff" createdAt="2025/05/24 15:40:55" color="">}}




{{<matomeQuote body="うろ覚えだけど、appleは電話のUIにめっちゃ厳しくて、それを置き換えるアプリは認めない、みたいな感じだったと思うよ。" userName="woleium" createdAt="2025/05/24 16:11:26" color="">}}




{{<matomeQuote body="ついに誰かがあのダイヤル式電話機をうまく使って、Dark Soulsをクリアしたか！" userName="gchamonlive" createdAt="2025/05/24 13:59:34" color="">}}




{{<matomeQuote body="あんたのおかげで思い出したよ、Dreamcastの釣りコンでSoul Caliburが遊べたこと。" userName="HideousKojima" createdAt="2025/05/24 20:17:05" color="">}}




{{<matomeQuote body="DTMF版が必要だね。オーストラリアに小さいライン給電の箱を作ってる奴がいるんだ。ダイヤル式のパルスをプッシュトーンに変換してくれる。おかげで数年前、POTS配線がない建物に引っ越すまでダイヤル式電話を使え続けられたよ。残念。" userName="reaperducer" createdAt="2025/05/24 15:06:38" color="#ff5c5c">}}




{{<matomeQuote body="FXS/ATAにつないでVoIP電話にする？俺は他の連中と同じように、1920年代のキャンドルスティック電話をこれで今でも使ってるよ。" userName="Daviey" createdAt="2025/05/24 15:46:14" color="#ff5c5c">}}




{{<matomeQuote body="1920年代風のAIオペレーターをハックして、電話を取り次いでもらえたら最高だね。" userName="oneoffcomment" createdAt="2025/05/24 16:49:19" color="">}}




{{<matomeQuote body="これならCisco SPA232D ＋ Asterisk ＋ Deepgramでいけるはずだよ（［０］によると、俺も今テストしたり改良したりしてる）。［０］ https://blog.walledgarden.ai/2025-05-20/wabbit-s2-welcome-to..." userName="bishopsmother" createdAt="2025/05/24 19:16:39" color="#38d3d3">}}




{{<matomeQuote body="FXS/ATAにつないでVoIP電話にする？考えたことはあるけど、手軽さ、コスト、良いハードウェアの組み合わせがちょうどいいVoIPサービスが見つからなかったんだ。" userName="reaperducer" createdAt="2025/05/24 18:13:13" color="">}}




{{<matomeQuote body="その３つの基準は何？ハードウェアならパルスダイヤル対応のこれらで十分だよ（例：Minitar MVA11A、Grandstream HT502など多数）。出典はリンク見てね。手軽さとコストは国によるけどほぼ無料で接続できることも。あんたの基準は何なの？" userName="Daviey" createdAt="2025/05/24 18:20:51" color="#38d3d3">}}




{{<matomeQuote body="最後に調べたのは４年以上前。おすすめのU.S.サービスは何？年数回しか使わないから安さが大事だけど、嫁さんも使うから信頼性も大事。月10ドルくらいが理想だな。前のコメントのリストは７年前で、載ってるうち一つしか今は手に入らないんだ。" userName="reaperducer" createdAt="2025/05/24 19:14:50" color="">}}




{{<matomeQuote body="俺はhttps://voip.msで家の”固定電話”を運用してるよ。長年使ってる番号維持用。大事なアカウントや携帯にかけられたくない相手に教えてる。４～５ヶ月ごとにUSD ＄20チャージかな（１日あたり着信３～５件、発信は週に１～２件くらい）。ATAアダプターは手頃でvoip.msに直結できるはず。俺はFreePBX経由で使ってるけどね。" userName="jasonjayr" createdAt="2025/05/24 19:31:09" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="めっちゃいいね！こういう必要最低限のドライバー実装、大好きだよ。コードは少しで済むけど、カーネルの知識はたくさん必要だってわかるね。<br>Rustで再実装しようと思ったけど、まだ必要なバインディングがなくて残念。もし書く気があるなら、その経験をブログに書いたら面白そうだね。" userName="jeroenhd" createdAt="2025/05/24 13:27:22" color="#ff33a1">}}




{{<matomeQuote body="残念ながら、今すぐRustバインディングがあるのはほんの一握りのサブシステムAPIだけなんだ。だから、何か意味のあることを書けるほどは進まなかったよ。もしかしたら来年にはサポートが成熟して、Rustでの再実装が実現可能になるかもね。そうなったら喜んで僕の経験について書くよ" userName="sephalon" createdAt="2025/05/24 18:29:19" color="">}}




{{<matomeQuote body="これを読んで、30年くらい前にあったロータリー電話の経験を思い出したよ。直接ロータリー電話を使ったわけじゃないけど、互換性のある電話網の話なんだ。<br>話を繰り返すより、ここにリンクするね：https://news.ycombinator.com/item?id=40391220<br>もし誰か興味をそそられたら、それはドアへの大きなノックと…”San Jose Police！ Open up！”だった、ってさ。" userName="Stratoscope" createdAt="2025/05/25 03:51:55" color="">}}




{{<matomeQuote body="その話、聞き覚えあるなと思って、112が911にリダイレクトされること（まさに112の方がダイヤルしやすかったから）についてコメントしようとしたんだ。そしたら、1年前に初めてその投稿を見たときに同じことコメントしてたって気づいたよ。" userName="satiric" createdAt="2025/05/25 17:42:59" color="">}}




{{<matomeQuote body="FWIWだけど、PSTNは全部パルスダイヤリングと互換性があったか、今もあると思うよ。" userName="pram" createdAt="2025/05/25 06:26:04" color="">}}




{{<matomeQuote body="これ読んで、シアトルのConnections MuseumにいるSarahが、Linux上のAsteriskソフトPBXが古い電話交換機のpre-DTMF回線と話せるように、ドライバーを書いたことを思い出したよ。<br>動画はこちら：https://www.youtube.com/watch?v=35N5vKKGDy8" userName="kevvok" createdAt="2025/05/24 22:25:48" color="">}}




{{<matomeQuote body="面白い歴史的な事実だけど、ニュージーランドのロータリー電話機は数字とパルス数のマッピングが逆だったんだ。ここではパルス数は10-数字だったんだよ。" userName="bacon_waffle" createdAt="2025/05/24 20:19:35" color="">}}




{{<matomeQuote body="それには深い技術的な理由もあったんだ。知ってる人はもうほとんどいないと思うから、知識が失われないようにHNで共有するね。<br>ロータリー交換機っていう初期の機械式交換機があって、クラッチの摩耗が問題だったんだ。ニュージーランドは既存の番号計画があったんだけど、賢い人がダイヤル1を9パルスにすれば摩耗が減ると計算したんだ。そこから始まったらしい。<br>ノルウェーも同じ設定だったかも、ってさ。" userName="niccl" createdAt="2025/05/24 20:46:45" color="#45d325">}}




{{<matomeQuote body="これありがとう。僕はKiwiで、なんで僕たちだけ違ったのか不思議だったんだ。<br>友達がオーストラリアからプッシュボタン式やコードレス電話機を持ってき始めたとき、キーパッドの配線をいくつか逆にするだけでNZのナンバリングに変換できたんだ。これらはDTMFよりずっと前にパルスを生成してたんだよ。" userName="ztetranz" createdAt="2025/05/25 00:23:45" color="#ff5c5c">}}




{{<matomeQuote body="その理由のためにドライバーは代替キーコードマッピングをサポートしてるんだけど、君のコメントを読むまでパルス順序が逆になった動機は知らなかったよ。ありがとう！" userName="sephalon" createdAt="2025/05/25 13:10:29" color="">}}




{{<matomeQuote body="記事開いたらちょうどダイヤル式電話機を分解してた（ゼンマイ巻き直し中）．ナイスな偶然じゃん！" userName="CodeBeater" createdAt="2025/05/24 15:10:54" color="">}}




{{<matomeQuote body="本気で聞きたいんだけどさ、電話機どれくらい机の上で分解されたままなの？もし俺みたいだったらさ、たぶん2年くらいかな；）．" userName="jermaustin1" createdAt="2025/05/24 15:19:29" color="">}}




{{<matomeQuote body="俺のはちょっと前にモバイル化したよ：https://www.stavros.io/posts/irotary-saga/" userName="stavros" createdAt="2025/05/24 15:43:54" color="#ff33a1">}}




{{<matomeQuote body="”GSM shield”（https://www.stavros.io/posts/irotary-saga/#:~:text=GSM%20shi...）のリンク先、たぶん乗っ取られてるみたいだから、スナップショット（https://web.archive.org/web/20150524if_/www.gsmlib.org/）に置き換えた方がいいかもよ．" userName="nicolaslegland" createdAt="2025/05/24 16:50:44" color="#ff5c5c">}}




{{<matomeQuote body="いや、ほんと2日経ってないくらいだよ．あの電話機、今でも現役でさ、たまに固定電話からかける時にパルス信号でダイヤルしてるんだ．" userName="CodeBeater" createdAt="2025/05/24 22:52:34" color="">}}




{{<matomeQuote body="これ思い出させてくれたんだけどさ、Hayes compatible modemがあれば、ATDP（通常のATDTじゃなくて）でトーン信号じゃなくてダイヤル信号でかけられたんだよね．" userName="rcakebread" createdAt="2025/05/24 22:07:24" color="#45d325">}}




{{<matomeQuote body="俺はLinuxでBluetooth audioがちゃんと動くか、glibcで完全なUTF-8 supportの方がいいな．" userName="tempodox" createdAt="2025/05/25 11:40:55" color="">}}




{{<matomeQuote body="この人は自分のやりたいことのために頑張って作り上げたんだよ．さあ、今度は君の番だ！自分が求める変化を君自身が作り出すんだ．" userName="kstrauser" createdAt="2025/05/25 15:29:29" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
