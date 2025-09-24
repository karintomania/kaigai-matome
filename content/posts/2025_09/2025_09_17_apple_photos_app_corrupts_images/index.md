+++
date = '2025-09-17T00:00:00'
months = '2025/09'
draft = false
title = 'まさか！Apple Photosアプリで画像破損のバグ報告。あなたの写真も危険？'
tags = ["Apple", "Photos", "バグ", "画像破損", "データ損失"]
featureimage = 'thumbnails/cyan_orange1.jpg'
+++

> まさか！Apple Photosアプリで画像破損のバグ報告。あなたの写真も危険？

引用元：[https://news.ycombinator.com/item?id=45274277](https://news.ycombinator.com/item?id=45274277)




{{<matomeQuote body="写真の画像破損はインポート時のバグっぽいね。RAWとJPEGの結合とかプレビュー生成とか、Photosがインポートで色々やるから、バッファ再利用とかファイルハンドルの閉じ忘れみたいな並行処理バグかも。稀に起きる予測不能な破損って感じ。" userName="deviation" createdAt="2025/09/17 11:47:23" color="#ff5c5c">}}




{{<matomeQuote body="俺もそう思うわ。最悪だよね。Appleに報告したいけど、再現性が不定だからどうやって再現手順を提供すればいいかわかんない。" userName="tenderlove" createdAt="2025/09/17 12:08:32" color="">}}




{{<matomeQuote body="Appleにバグ報告しても全然ダメなんだよね。デモしやすいバグでも、サンプルプロジェクトを要求してくるから超面倒。報告は無視されるし、修正されたか確認してくれって連絡が来るのは稀。数ヶ月したら、見るのも嫌になって自分でクローズしてるわ。Appleはバグ報告を全部迷惑だと思ってそう。変な会社だけど、時価総額3兆ドル超えだから文句は言えないのかな。でもムカつく。" userName="ChrisMarshallNY" createdAt="2025/09/17 12:32:03" color="#ff33a1">}}




{{<matomeQuote body="適当に言ってるわけじゃないけど、これって業界標準だと思うんだ。Apple含め、いくつかのFAANGとかのレポで、俺のPRが10個くらい承認されずに放置されてる。数週間後にAppleで働き始めるから、俺の意見はちょっと偏ってるかもだけどね。" userName="deviation" createdAt="2025/09/17 12:49:10" color="#ff5733">}}




{{<matomeQuote body="もしよかったら、マジで人が死ぬかもしれないバグFB13400242を動かしてくれない？ロック画面から緊急通報するとき、iPhoneの両側のボタンを握るとできるはずなのに、ボリュームボタンしか効かないんだって。アクションボタンは対応してない。だから子供に教える時、”両側を握る”じゃなくて”あっ、でもそれじゃない方ね！”ってなる。これのせいで俺の知り合いが死にかけたんだ。幸い誰か助けに来てくれたけど。" userName="dmd" createdAt="2025/09/17 13:17:16" color="#ff33a1">}}




{{<matomeQuote body="いつか機会があったら、君がそのプロセスを改善する人になれるかもね。大手テック企業じゃ標準だとしても、新しい標準を作るのは君かもしれない！新しい仕事、頑張ってね。" userName="devmor" createdAt="2025/09/17 14:12:17" color="">}}




{{<matomeQuote body="VPとかSVPの役職じゃない限り、大手テック企業に入って”プロセスを改善する”機会なんてほとんどないよ。君はチーム54の歯車21として雇われるんだし、JIRA（ここではRadarね）の大量の未処理チケットをこなすだけ。プロセスについて教えてくれる人たちはいるけど、逸脱しちゃダメ。彼らに怒る必要はないよ。彼らはただのメッセンジャーで、もっと上の人に言われたことを伝えてるだけだから。" userName="ryandrake" createdAt="2025/09/17 14:40:38" color="#785bff">}}




{{<matomeQuote body="Appleのエコシステムで最悪なのは、密結合してるせいでPhotosのバグ修正がmacOSアップデートの一部としてしか来ないことだね。つまり、もしそのバグが（今ではサポートされてない）Mavericks時代からあったとしたら、もうお手上げってことだよ！" userName="ValentineC" createdAt="2025/09/17 14:14:00" color="#38d3d3">}}




{{<matomeQuote body="もう小さい子供じゃないし、こういうジェスチャーは覚えてないな。<br>スマホでスクリーンショットを撮ったり、緊急モードを起動しちゃったりするのはいつも事故。<br>緊急時にスマホがすごく役立つなんて期待してないよ。" userName="SoftTalker" createdAt="2025/09/17 15:05:06" color="">}}




{{<matomeQuote body="Appleにバグを報告したって意味ある？<br>業界ではAppleがバグ報告を無視するのは有名だよ。<br>それに、このバグは大多数のユーザーには影響しないから、絶対直らないね。" userName="egorfine" createdAt="2025/09/17 14:22:19" color="#ff33a1">}}




{{<matomeQuote body="10年前Photosチームで働いてたんだ。君の言う通り、珍しいバグは優先度が下がるけど、データ破損なら最優先だ。<br>でも、既に出荷済みのバグだと優先度が低く見られがちなんだよね。<br>Photosみたいに人気のアプリのバグは膨大だから、優先順位付けは必須だよ。" userName="JKCalhoun" createdAt="2025/09/17 14:33:50" color="#ff5733">}}




{{<matomeQuote body="個人的にはAppleファンじゃないけど、緊急時の機能は最高峰だ。<br>義父が深夜にトイレで倒れた時、Apple Watchが自動で緊急連絡線と繋ぎ、救急車が早く到着して命が助かった。<br>妻にも義父が倒れたかもしれないという大きなメッセージが届いたよ。<br>Appleが緊急サービスにどう情報伝達してるのか気になるね。" userName="darkwater" createdAt="2025/09/17 15:36:07" color="#ff5733">}}




{{<matomeQuote body="夜はスマホをオフにしてるし、Watchも持ってない。<br>巨大企業にFUDされて、彼らのテクノロジーを買うことで事故の生存率が劇的に変わるなんて思いたくないな。<br>でも、他の人たちが違う見方をしてるのは分かるよ。" userName="SoftTalker" createdAt="2025/09/17 15:54:46" color="">}}




{{<matomeQuote body="もう一度考え直した方がいいんじゃない？<br>まさに今、誰かの命を救ったという体験談に返信しているんだよ。<br>https://support.apple.com/en-us/104959" userName="KerrAvon" createdAt="2025/09/17 17:38:50" color="#ff5c5c">}}




{{<matomeQuote body="5歳児なら「ただ握る」方がそれをするより簡単だろうね。" userName="dmd" createdAt="2025/09/17 14:20:52" color="">}}




{{<matomeQuote body="やる気があるとかないとかの問題じゃないんだよ。<br>10万人以上の大企業に入って、バグ修正みたいな広範な企業文化をまるごと変えるなんて誰にも無理。<br>何百ものチームがあって、何十年も根付いた文化があるんだ。<br>自分の持ち場でできることを改善するのはいいけど、自分の影響範囲は現実的に見なきゃ。" userName="ryandrake" createdAt="2025/09/17 16:18:08" color="#ff5733">}}




{{<matomeQuote body="なんでAppleがファーストパーティアプリのアップデートをOSアップデートに限定してるのか、いまだに理解できないな。<br>GoogleがAndroidでやってるみたいに、アプリのアップデートをOSから切り離した方が断然いいはず。<br>みんなと同じようにApp Store経由でアプリをアップデートして、OSは別のスケジュールでアップデートすればいいのに。" userName="thewebguyd" createdAt="2025/09/17 15:17:13" color="#ff5c5c">}}




{{<matomeQuote body="ファイル取り込む前にローカルディスクにコピーしてみた？" userName="strunz" createdAt="2025/09/17 12:41:39" color="">}}




{{<matomeQuote body="全部交換したら30%の失敗率が単一の失敗を見つけるのに時間がかかるようになったのは面白いね。ランダムはランダムだし、固まることもあるから、部品交換は関係ないかもしれないけど…彼の交換旅の間にどれくらいの頻度で破損が起きたのか、もっと詳しく知りたかったよ。<br>追伸：まさか仕事中に”tenderlovemaking.com”に行っちゃうとは。きもいな。笑" userName="inanutshellus" createdAt="2025/09/17 13:08:57" color="">}}




{{<matomeQuote body="＞結果には逆らえないだろうね、3兆ドル以上の市場価値があるんだから<br>これは同等のとんでもない技術的負債によって支えられてるんだよ。" userName="lapcat" createdAt="2025/09/17 12:58:00" color="">}}




{{<matomeQuote body="メンテナンスコストが増えて生産品質が下がったプロジェクトや会社をどうやって資金調達するの？それが技術的負債ってやつだよ。素早く進むためのコストさ。君が何を言いたいのかよく分からないんだけど。" userName="imchillyb" createdAt="2025/09/17 14:03:29" color="">}}




{{<matomeQuote body="何度か“大手テック”企業に就職する人や、辞めた人を面接したことがあるよ。彼らはよく「違いを生み出す」場所で働くことにワクワクして始めるんだけど、1年もしないうちに、違いなんて生み出す可能性は全然ないと結論に至るんだ。そういう組織は、自分のプロセスに協力しない人を雇う気なんて全くないからね。" userName="PaulHoule" createdAt="2025/09/17 19:30:21" color="#38d3d3">}}




{{<matomeQuote body="でもmacOSのアップデートは年に何回もあるよね。もし修正が見つかって（そしてバグが十分高い優先度と見なされれば）、2025年が終わる前にリリースされる可能性はあるよ。" userName="JKCalhoun" createdAt="2025/09/17 14:28:55" color="">}}




{{<matomeQuote body="誰も何も変えられないし、新入社員はコードモンキーになる以外の抱負や目標は持つべきじゃないって？キャリア成長に対する君の見方はニヒリズム的で、現実的じゃないね。" userName="devmor" createdAt="2025/09/17 19:33:16" color="">}}




{{<matomeQuote body="Appleの”ウォッチャー”な人たち（例えば9to5macとか）に声をかけて、ソーシャルメディアで後押ししてもらえないか検討してみたら？こんな騒ぎを起こして注目を集めなきゃいけないなんて、かなり嫌な状況だけど、現状はそうだからね。" userName="RankingMember" createdAt="2025/09/17 14:17:07" color="#45d325">}}




{{<matomeQuote body="＞Photosみたいな人気アプリのバグは多すぎて直せない、って？何十億人も使うならテスターやエンジニアを増やす余裕あるはずだ。バグは無限じゃないから、導入より早く解決すればゼロに近づく。再現簡単なバグが何年も放置されて増えてるなら、開発プロセスに問題がある。新しいバグの発生を止め、ワークフローを見直し、古いバグを修正すべきだよ。そうしないとコードはバグだらけで使い物にならなくなるだけ。" userName="crote" createdAt="2025/09/17 18:45:53" color="#785bff">}}




{{<matomeQuote body="記事で「OM Systemカメラ固有の問題か不明」って言ってるけど、USB-CカードリーダーをMacに直差ししてテストすれば、問題がケーブルやカメラ側にあるか切り分けられたんじゃない？OM-1のUSBサポートは完璧じゃないみたいで、マニュアルにも「USB転送は保証されない場合がある」って書いてあるし、普通はカードリーダー使うのが定石だね。" userName="CharlesW" createdAt="2025/09/17 17:26:01" color="#785bff">}}




{{<matomeQuote body="「USB転送は保証されない場合がある」ってマニュアルに書いてあるのは、正直言って結構ヤバいよね…。俺は今まで色んなカメラを使ってきたけど、基本的な機能でこんなに保険をかけるメーカーは見たことないな。" userName="gyomu" createdAt="2025/09/18 00:10:03" color="">}}




{{<matomeQuote body="いや、これって結構よくある注意書きだよ。ひどい話だけど、マウスですらUSBハブに繋ぐなって書いてあることもあるしね。「USBポートを増設したPCや、OSがプリインストールされてないPC、自作PCなどではデータ転送は保証しない」ってOM-1のマニュアル1.7版286ページに書いてあるよ。URLはこれ→https://download.omsystem.com/pages/inst/om1/manual_om1_v1.7..." userName="vladvasiliu" createdAt="2025/09/19 08:39:51" color="#ff33a1">}}




{{<matomeQuote body="その通り！俺はプロの写真家でNikonユーザーだけど、カメラから直接インポートすることはめったにないよ。カードからLightroomに直接取り込む時に問題があったら、まず全部ハードドライブにコピーしてから、そこからインポートするようにしてるんだ。" userName="chiefgeek" createdAt="2025/09/17 18:57:17" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="全く同感！どんなブランドのカメラでも、SDカードを抜いて信頼できるリーダー（LexarとかSonyのハブがおすすめ）を使うべきだよ。USB経由でカメラから転送するのは絶対にやめとけ。CanonもSonyもPanasonicもFujiも、どれも体験は最悪だからね。無駄な苦労はせずに、30ドルのUSBハブを買ってさっさと済ませようぜ。" userName="softfalcon" createdAt="2025/09/17 19:16:18" color="#ff5733">}}




{{<matomeQuote body="俺の経験だと、これは人それぞれって感じかな。俺はOM1を持ってるけど、基本的にはカメラのUSB接続だけで写真を転送してるよ。最速のSDカードじゃないけど、専用のSandisk SDカードリーダーと同じくらいの100 MB/sで転送できてる。OM1はUSB-Cで充電もできるから、あれこれ部品をいじる手間もなくてめちゃくちゃ便利。何万枚も転送してきたけど、一度も画像破損はなかったな。ちなみに、古いカメラはMacに繋ぐたびにSDカードの文句を言ってきたけど、フォーマットしたら治って、そのカードもまだ使えてるんだ。Windows PCでLightroomを使ってファイル転送してるよ（カードからは削除しないけどね）。" userName="vladvasiliu" createdAt="2025/09/19 08:22:20" color="#ff5c5c">}}




{{<matomeQuote body="全く同感だね。もうセミプロじゃないけど、最近はUSB-C SDリーダーをiPhoneに直接挿して画像をアップロードしてるんだ。これがまたすごく快適なんだよ。まだ破損は一度もないけど、イタリア旅行で1000枚くらい撮っただけだからね！" userName="girvo" createdAt="2025/09/17 22:00:34" color="">}}




{{<matomeQuote body="運が良かったね。昔はiPhoneだとSDカードリーダーが使えなかったのに、同じデバイスとiOSでもiPadだと動いたんだよな。明らかに意図的だったと思う。俺は昔からのUnix使いだからね。ファイルはファイル。カードからコンピューターへ、処理は後からってのが俺のやり方さ。" userName="k310" createdAt="2025/09/22 00:59:51" color="">}}




{{<matomeQuote body="Olympusユーザーだけど、このトラブルシューティング、高すぎない？PCとカメラを替える前に、Photos以外のソフト（Olympusのだって無料だよ）を試すべきじゃない？インポート時に削除するのも危ないし、俺はバックアップしてから消す派だよ。<br>あと、インポート後に削除するのはかなりリスク高いと思うな。俺のワークフローは、インポートした写真が１）バックアップされて、２）最初の選別が終わってから、カメラから削除するようにしてるよ。" userName="doodaddy" createdAt="2025/09/17 13:39:47" color="#38d3d3">}}




{{<matomeQuote body="写真家として全く同感！俺はファイルをPCに複数コピーして、さらにSDカードからNASに直接バックアップするよ。絶対にデータが安全だって確認できるまで、SDカードはフォーマットしたり削除したりしない。VFXの仕事をしていたから、データ損失はマジでヤバいって知ってるんだ。" userName="softfalcon" createdAt="2025/09/17 19:18:59" color="#ff33a1">}}




{{<matomeQuote body="一度こんな問題が起きたら、新しい撮影システムを買う前に、『インポート後に削除』のチェックを外すのが普通じゃない？" userName="in_cahoots" createdAt="2025/09/17 15:03:03" color="">}}




{{<matomeQuote body="俺のやり方は、インポート後に削除しないで、後でカメラでカードをフォーマットするって感じ。XXXLサイズのカードを使ってるから、フォーマットし忘れてもそんなに困らない。<br>一度撮影をしくじった時、ファイル破損かなと思ったんだけど、Disk Drill (https://www.cleverfiles.com/data-recovery-software.html) でほとんどの画像を復元できたんだ。確認したら破損じゃなくてユーザーエラーだったけどね。Windows版もMac版もあるよ。" userName="PaulHoule" createdAt="2025/09/17 15:37:04" color="#45d325">}}




{{<matomeQuote body="メディアファイルには、LinuxのPhotoRecがおすすめだよ。testdiskの一部としてパッケージされてることもあるね。" userName="eichin" createdAt="2025/09/17 20:52:24" color="">}}




{{<matomeQuote body="SDカードは書き込み専用として使って、新しいのを買い続けるって手もあるよ。" userName="philsnow" createdAt="2025/09/17 22:13:04" color="">}}




{{<matomeQuote body="俺が最初に思ったのは、『ソフトウェアのトラブルシューティングの方が、ハードウェアよりずっと安いのに！』ってこと。ひょっとして、著者は俺たちが慣れてる経済状況とは違うのかもね。" userName="GuinansEyebrows" createdAt="2025/09/17 14:41:19" color="">}}




{{<matomeQuote body="俺もたまに、トラブルシューティングを口実に、前から欲しかった新しいハードウェアにアップグレードすることにしてるんだ。" userName="JKCalhoun" createdAt="2025/09/17 14:37:41" color="">}}




{{<matomeQuote body="Macにカメラを直接繋ぐのをやめて、SDカードを取り出してリーダーを使うべきじゃない？ほとんどの写真家がそうしてるみたいにさ。" userName="vitaflo" createdAt="2025/09/18 01:19:41" color="">}}




{{<matomeQuote body="Appleがめちゃくちゃ儲けてる理由はこれだよ。Photos（他のものと互換性がないこと）が、参入障壁になってるんだからさ。" userName="doctorpangloss" createdAt="2025/09/17 18:02:15" color="">}}




{{<matomeQuote body="同意。適切なトラブルシューティングでは、ただ部品を交換するだけでなく、可能性やコストも考えるべきだよ。ソフトウェアを変えるのは、問題を解決する可能性が高いし、無料で速く試せるからね。" userName="burnte" createdAt="2025/09/17 17:45:32" color="#38d3d3">}}




{{<matomeQuote body="Gearspaceってすごく有名なプロオーディオサイトがあるんだけど、長い間もっと刺激的な名前だったんだよ。https://gearspace.com/<br>https://www.reddit.com/r/audioengineering/comments/mftc0g/ge..." userName="sholladay" createdAt="2025/09/17 13:04:30" color="">}}




{{<matomeQuote body="現代がすごく味気なく感じるのは、みんなが最低限の共通点に同意して、それを「iNcLuSiViTy（包括性）」って祝ってるからじゃないかな。<br>もし何か個性的なこと、つまり標準的なやり方から外れたことをすると、すぐに自由市場で不利な立場になっちゃう。<br>まるで、楽しさより効率をみんなで優先してるのに、効率的になった人生が楽しくないのはなんでだろうって思ってるみたいだね。" userName="anal_reactor" createdAt="2025/09/17 14:45:46" color="">}}




{{<matomeQuote body="何がすごいの？知らない人のために、何の参考資料か教えてくれない？" userName="crazygringo" createdAt="2025/09/17 12:21:23" color="">}}




{{<matomeQuote body="馬鹿なフラットボーイの婉曲表現が今や個性ってこと？<br>その名前が本当に多くの人を不快にさせたり、歓迎されていないと感じさせたりした事実を抜きにしても、ただティーンエイジャーみたいで未熟だったよね。<br>性的なことでニヤニヤしなくても、社交の場に個性や楽しさを注入する方法はあるんだよ。<br>「最低限の共通点」って言うならさ..." userName="jrajav" createdAt="2025/09/17 15:52:05" color="#38d3d3">}}




{{<matomeQuote body="90年代の終わりに、当時の妻がある日僕の肩越しに見てて、アドレスバーに「freshmeat.net」ってドメインがオートコンプリートで表示されるのを見たんだ。<br>妻は当然疑ったけど、それがただのソフトウェア配布サイトだって見せるまでだったよ。" userName="macintux" createdAt="2025/09/17 12:27:46" color="#ff5c5c">}}




{{<matomeQuote body="インフォハザード警告: C++ referenceもこういうのの一つだよ。" userName="devnullbrain" createdAt="2025/09/17 12:37:06" color="">}}




{{<matomeQuote body="成人の大人に「tender love making dot com」っていう（性的な意味合いの）ウェブサイトに行かせて、すごく特定のニッチなテクノロジーブログを読ませるって、シンプルにめっちゃ面白いよね。" userName="rhgraysonii" createdAt="2025/09/17 12:23:54" color="#45d325">}}




{{<matomeQuote body="このサイト、Aaron Pattersonさんのものだよ。彼は世界で一番Rubyを開発してるすごい人だよ。" userName="dcchambers" createdAt="2025/09/17 11:58:20" color="">}}




{{<matomeQuote body="”tender love making”って言葉と、URLに写真と破損ってワードが入ってるのが、めちゃくちゃ悪い風に見えちゃうかもね！" userName="sombragris" createdAt="2025/09/17 14:19:43" color="">}}




{{<matomeQuote body="うわー、Redditで名前変更がこんなに喜ばれてるなんて驚きだわ。”unix porn”とか”food porn”みたいな”porn”って言葉と大差ないと思うんだけどな。これって、自分たちが不必要に機材を買い替えてることを自虐的にネタにしてるんだろうって思ってたよ。音楽やアートみたいに個性的な表現で、別に堅苦しいsysadminフォーラムじゃないんだしね…。200字超" userName="rendaw" createdAt="2025/09/17 16:36:12" color="#785bff">}}




{{<matomeQuote body="「バカな学生のセクハラまがいの冗談が個性になるってわけ？」って？色々な個性があるんだからさ、何もかもが成熟してる必要なんてないんだよ。" userName="efilife" createdAt="2025/09/17 18:09:51" color="">}}




{{<matomeQuote body="この著者の名前はtenderloveだよ。彼はRubyとRailsの有名人として、もう10年以上も貢献してるんだ。もしこれが気に食わないって言うなら、それは君の知識不足だよ。" userName="meterogue" createdAt="2025/09/17 14:30:15" color="#38d3d3">}}




{{<matomeQuote body="”tender lovemaking”って、そんなに衝撃的なわけ？" userName="coldtea" createdAt="2025/09/17 12:36:51" color="">}}




{{<matomeQuote body="この人、Rubyコミュニティにすごい貢献をしてる本当に良い人だよ。でも、コミュニティの代表者って立場を考えると、やっぱり名前を変えてほしいな。だって、彼のリポジトリを参照してるコードがあるから、インターンに説明する時とか、ちょっと気まずいんだよね。" userName="moritonal" createdAt="2025/09/17 19:06:00" color="#38d3d3">}}




{{<matomeQuote body="このURL、なんか違う記事と勘違いされてない？" userName="brulard" createdAt="2025/09/17 12:19:55" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Stack Overflowができる前にはexpertsexchange.comってサイトがあったんだけど、みんながexpertSEXchangeってからかったから、ハイフンを入れてexperts-exchange.comになったんだってさ。" userName="Romario77" createdAt="2025/09/17 14:48:22" color="">}}




{{<matomeQuote body="マジか、EEには20年もログインしてなかったわ。<br>今試したら、なんと一発でユーザー名と5文字のパスワードを当てちゃったよ。<br>でも入るには$9.99払えってさ。でも、俺の実績は全部残ってるって言うんだよな…" userName="qingcharles" createdAt="2025/09/17 17:15:44" color="">}}




{{<matomeQuote body="AppleやGoogle製のものはもう絶対使いたくないね。俺はGrapheneOS Pixelと、Nextcloud、HomeAssistant、自分のメールサーバーでセルフホストのクラウドを使ってるんだ。Big Techのクソみたいなソフトとは比較にならないくらいの制御とパフォーマンスだよ。AI chatbotもセルフホストできるだろうけど、新しいサービスだからまだクソ化してないみたいだね。" userName="drnick1" createdAt="2025/09/17 20:49:03" color="#785bff">}}




{{<matomeQuote body="詳しくないんだけど、GoogleってGrapheneOSをいつでも潰せるんじゃないの？銀行アプリやメッセージアプリと互換性がなくなると思って試したことないんだ。5～10年後も存続する長期計画とかあるのかな？" userName="cons0le" createdAt="2025/09/17 21:11:46" color="">}}




{{<matomeQuote body="セルフホストのメールサーバーで、メールの到達性の問題ってどうしてる？いつも、それが難しい、少なくとも扱いにくい問題だって聞いてるんだけど。" userName="jonahx" createdAt="2025/09/17 21:40:44" color="#785bff">}}




{{<matomeQuote body="ちょっと細かい話だけど、PixelはGoogle製だよ。Grapheneで脱Google化したのはわかるけど、それでもGoogleのハードウェア上で動いてるよね。他の実行可能な代替案があるのかな、って思うんだけど。" userName="abustamam" createdAt="2025/09/17 20:55:41" color="">}}




{{<matomeQuote body="メール到達性の問題は、i) IP、ii) ドメイン運用歴、iii) DKIM設定が重要だと思うよ。一番難しいのはIPアドレスかな。俺は運良く非住宅ブロックのクリーンなIPv4アドレスを使えてる。問題があるなら、Mailgunみたいなリレーサービスを考えてみて。俺は主にメールを受け取るだけだし、たとえ送信できなくても自分のサーバーで運用するプライバシーのメリットはかなり大きいよ。" userName="drnick1" createdAt="2025/09/17 22:27:57" color="#ff5c5c">}}




{{<matomeQuote body="Graphene OSで銀行アプリが一時的に使えなかったけど、今はまた使えるようになったよ。その間はモバイルウェブサイトで対処。BitwardenやKeePassDXはVanadiumブラウザと連携してログインはスムーズだったよ。リアルタイム通知は諦めたけど許容範囲。GoogleはChromeで「コンピューティングプラットフォームの検証」技術を導入しようとしてて、Google Playの「整合性」チェックと同じ影響がある。ベンダーロックインへの最終的な解決策は、立法によるべきだね。" userName="sfRattan" createdAt="2025/09/17 21:25:09" color="#ff5733">}}




{{<matomeQuote body="で、仕事や大事な人たちのための時間って、どれくらい残ってるの？" userName="rob_c" createdAt="2025/09/17 21:30:01" color="">}}




{{<matomeQuote body="写真ならEnteも見てみるといいかもね :) https://ente.io/俺は喜んでセルフホストしてるユーザーだよ。" userName="neop1x" createdAt="2025/09/18 15:49:42" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
