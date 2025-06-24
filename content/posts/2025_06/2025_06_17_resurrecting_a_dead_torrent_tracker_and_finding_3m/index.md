+++
date = '2025-06-17T00:00:00'
months = '2025/06'
draft = false
title = '死んだトレントトラッカーを復活させたら300万人が繋がってきた話'
tags = ["BitTorrent", "ネットワーク", "P2P", "プログラミング", "法律"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> 死んだトレントトラッカーを復活させたら300万人が繋がってきた話

引用元：[https://news.ycombinator.com/item?id=44301686](https://news.ycombinator.com/item?id=44301686)




{{<matomeQuote body="「これって合法？」って疑問だけど、なんで合法じゃないの？<br>実際はTrackerをHostしてなくて、入ってくるConnectionを見てるだけだよ。<br>たとえTrackerを動かしてても、それ自体が違法って主張は難しいんだ。<br>opentrackrみたいなのをHostするのはSearch Engineみたい。<br>法的なTakedown Requestにどう応じるかとか、Tracker周辺のInfraで意図が見られるんだ。<br>Trackerなんて単純なCoordination Server Softwareなのに、違法になるのはおかしいと思うな。" userName="diggan" createdAt="2025/06/17 18:17:29" color="#ff33a1">}}




{{<matomeQuote body="合法かどうかって質問はあまり役に立たないよ。<br>もっと良い質問は「どれくらい訴えられる可能性がある？」ってこと。<br>民事訴訟では合法かどうかは関係ない場合もあるし、弁護士のRadarに載っちゃうと訴えられて嫌がらせされることもあるからね。" userName="jekwoooooe" createdAt="2025/06/17 18:19:54" color="#ff5733">}}




{{<matomeQuote body="故意に他人の犯罪を助けるのは、自分で犯罪を犯すのと同じ扱いになるみたいだね。<br>米国の連邦法（18 USC 2a https://www.law.cornell.edu/uscode/text/18/2）でもそうだよ。<br>動かしてるSoftwareが「Simple」なのは違法行為の言い訳にはならない。<br>InternetやCopyrightのSafe Harbor Provisionsもあるかもしれないけど、弁護士じゃないからよく分からないな。<br>でも、「他人の犯罪を助ける」って聞いたら、「それもたぶん犯罪だな」って思うべきだよ。" userName="gpm" createdAt="2025/06/17 18:44:40" color="#785bff">}}




{{<matomeQuote body="特定の知識が必要なんじゃないかな？って疑問だね。<br>Googleの開発者たちはSearchが犯罪に使われるのを知ってるけど、それは明らかにそれ自体が違法じゃないでしょ？" userName="rockskon" createdAt="2025/06/17 19:02:04" color="#ff5733">}}




{{<matomeQuote body="警察がこのニュアンスを理解できると思う？<br>特に、通るTrafficのほとんどが著作権侵害だろうしね。<br>彼らは単にTrackerって見て、違法だって決めつけちゃうんじゃないかな。" userName="jedberg" createdAt="2025/06/17 18:20:24" color="">}}




{{<matomeQuote body="確実にMens rea（犯罪意図）が必要だよ。犯罪が行われてるのを知ってて、それをFacilitateするつもりがあるかどうか。<br>特定のRequestが犯罪か個別に知ってる必要はないと思うけど、弁護士じゃないんだ。<br>合法目的のServiceが一部の犯罪者に利用されるのと、違法なTorrentに主に使われてた古いDomain名を復活させてTrackerとして使うのは、意図がかなり違うね。<br>数分調べたら、少なくとも10年前の時点でここでの正確な線引きは明確じゃなかったみたいだよ。<br>https://www.scotusblog.com/2014/03/opinion-analysis-justice-...<br>偶発的なFacilitatorの責任（例：銃販売業者が一部の客が犯罪に使うと知っている場合）は言及されてるけど、解決はしてないって。" userName="gpm" createdAt="2025/06/17 19:22:56" color="#785bff">}}




{{<matomeQuote body="弁護士じゃないけど、特定のMens reaも必要だと思うね。<br>TorrentやそれをFacilitateすることは違法じゃない。善悪どちらにも使えるProtocolだから。<br>映画や音楽をHostしてるなら、それがPiracyだよ。<br>車を運転するのは違法じゃないけど、銀行強盗のGetaway Driverになるのはダメ、車が問題じゃなくて使い方だよね。<br>銀行強盗に車を売っても違法じゃない、売る相手が犯罪に使うと合理的に信じてなければね。<br>Telecom CompaniesにCarve outがあるのも同じ理由。犯罪計画のPacketやVoice Trafficを運んでも共謀にはならない。" userName="drob518" createdAt="2025/06/17 20:04:04" color="#ff5c5c">}}




{{<matomeQuote body="「Torrent Trackerを動かすこと」が違法だって言ってるわけじゃないよ。<br>Blizzardが（2015年以前に）StarcraftをTorrentで更新してた時、彼らはTrackerを動かしてたと思うし、それは完全に合法だった。<br>PirateがBlizzardのTrackerを利用できたとしてもね。<br>ここでは、「誰かがTrackerをPiracyに使う可能性がある」っていう単なる事実じゃないんだ。<br>大量の古い、ほとんどがPiracyのTorrentがこのDomainを指してるのをLiterally見てて、そのPiracyをAssistするServiceにこのDomainを戻そうとDecideしてるんだ。" userName="gpm" createdAt="2025/06/17 20:20:34" color="#ff5c5c">}}




{{<matomeQuote body="＞違法行為を助けてる点<br>それって本当かな？って疑問だね。<br>記事主はそれがほとんどPiracyかどうか知らないはずだよ。<br>彼が見てるのはHashとPeerだけだもん。" userName="KomoD" createdAt="2025/06/17 20:23:51" color="">}}




{{<matomeQuote body="それが本当か分からないけど、たぶんTakedown Noticeは届くかもね。<br>でも、訴えるには損害賠償をClaimしないといけないと思うんだ。<br>もしかしたら私が間違ってるかもしれないけど。<br>記事主がPeer Poolは見えても、Peer ListをAnnounceしなければ大丈夫なんじゃないかな？" userName="bilekas" createdAt="2025/06/17 20:01:07" color="">}}




{{<matomeQuote body="訴える必要なんてないって。差し止め命令出しときゃ、OPみたいなフツーのハッカーなら速攻でやめるだろ…。" userName="legohead" createdAt="2025/06/17 18:22:37" color="">}}




{{<matomeQuote body="これ、マジで現実的な意見だよな。弁護士の友達が教えてくれたんだけど、「裁判って、勝っても負けなんだよ」。実際、裁判なんてクソだし、訴えられるのも金持ち以外には地獄だ。1億ドル以下の俺らは、裁判なんて絶対避けるべき世界。" userName="chaboud" createdAt="2025/06/18 08:53:51" color="">}}




{{<matomeQuote body="彼、偶然ドメイン名選んだんじゃないって。著作権侵害トラッカーで使われてたの見て選んだんだよ。警察とか裁判所は見て見ぬふりしない義務はないし。そのドメイン名が前そうだったってだけで、ほぼ確実に捜索令状取れる根拠になるし、彼が意図的に著作権侵害した、助けたって証拠も確実に出るって。ブログ記事なくてもね…。" userName="gpm" createdAt="2025/06/17 22:06:59" color="#785bff">}}




{{<matomeQuote body="彼らは「Linux isos」をDLに使ったって言ってるけどさ、それってほぼ著作権侵害じゃないはずだろ（タダで配られてるし）。CanonicalだってUbuntuをBitTorrentで配ってるしね。URLも見て。<br>あ、OPの「uh,」見落としてたわ。訂正します。<br>https://ubuntu.com/download/alternative-downloads" userName="necovek" createdAt="2025/06/18 03:50:37" color="#45d325">}}




{{<matomeQuote body="RIAAは訴えなくてもOPを地獄に突き落とせるんだよ。合法的な要求書で攻めまくる弁護士がいっぱいいるから。たとえそれが嫌がらせだとしてもさ、OPはどうすんの？ RIAAを訴えんの？ 無理ゲーじゃん。" userName="dymk" createdAt="2025/06/17 20:45:32" color="#ff33a1">}}




{{<matomeQuote body="いやいや、ウザい手紙ばっか来たら、少額訴訟に持ち込んじゃえよ。お前は安いけど、向こうは高くつくし、来なきゃお前の勝ちだぜ。" userName="Retric" createdAt="2025/06/18 02:35:13" color="">}}




{{<matomeQuote body="「ほとんど著作権侵害だろう？」＞著作権侵害のモノはトラッカーは「通らない」ってば。トラッカーはtorrentのハッシュと繋がってる奴らのリストだけ持ってんだよ。" userName="SXX" createdAt="2025/06/17 19:13:32" color="#ff5c5c">}}




{{<matomeQuote body="彼らは「Linux ISO」DLしたって書いてるけどさ、それ使わない昔の海賊版トラッカードメイン使ってるじゃん。裁判所はアホじゃないんだぞ。" userName="immibis" createdAt="2025/06/18 08:52:56" color="#ff33a1">}}




{{<matomeQuote body="「犯罪を故意に手助け」＞うん、わかる。でもトラッカー運営が「犯罪を故意に手助け」になるの？ それって話が飛びすぎじゃね？ トラッカーやDHTでやり取りされる内容って幅広すぎだろ。" userName="diggan" createdAt="2025/06/17 19:25:57" color="">}}




{{<matomeQuote body="DMCAの「回避禁止条項」ってやつだとさ、「何人も、技術的保護手段を回避する目的で主として設計または製造された技術（または、技術的保護手段を回避すること以外の商業的に重要な目的や用途が限定的な技術）を製造、輸入、公衆への提供、提供、またはその他の方法で取引してはならない」んだってさ。" userName="eli" createdAt="2025/06/18 14:17:49" color="#38d3d3">}}




{{<matomeQuote body="刑事事件では、彼らが意図的にアホかどうかは検察が証明しなきゃいけないんだ。やったことが違法で、それを知っててやったのかどうかをね。裁判官や陪審員がこの人物やLinux ISOについてどう思うかは関係ない。彼らは与えられた情報を解釈するだけだよ。" userName="ranger_danger" createdAt="2025/06/18 19:22:50" color="#ff33a1">}}




{{<matomeQuote body="差し止め命令なんていらなかった。170万ものピアが虚空で仲間を求めてるのを見ただけで十分だったんだ。ハリウッドとお金に妙に優しい国に住んでるから、彼の気持ちはよく分かるよ。" userName="daneel_w" createdAt="2025/06/17 22:37:28" color="">}}




{{<matomeQuote body="これが適用されるかは難しいんじゃない？<br>BitTorrentクライアントかトラッカーが回避してる”アクセスを制御する技術的な措置”って何？<br>あと、BitTorrentソフトウェア自体が違法とされた判例は知らないな（弁護士じゃないけど）。" userName="myrmidon" createdAt="2025/06/18 14:36:43" color="#ff5c5c">}}




{{<matomeQuote body="警察が本当にインターネットを監視してると思う？<br>地元の警察じゃなくてFBIみたいな国家機関だとしても、彼らは児童虐待みたいな他の犯罪に集中してるし、それでもほとんど対応できてないんだよ。<br>著作権執行の圧倒的大多数は著作権者によるもので、インターネット著作権警察じゃないんだ。" userName="hungryhobbit" createdAt="2025/06/17 18:30:42" color="#ff5733">}}




{{<matomeQuote body="Pirate Bayみたいなトレントサイトも同じだよ。だからといって、著作権侵害者が訴えられたり刑務所に入ったりするのを防げるわけじゃないんだ。" userName="jeroenhd" createdAt="2025/06/17 21:35:52" color="">}}




{{<matomeQuote body="弁護士の友人が言ってたんだ。『訴訟になると、勝っても負けだ』ってね。<br>私の国では、この状況にぴったりの言葉がある。『罰はプロセスだ』って。<br>政府や権力者が嫌がらせをしたい時、勝てないと分かってても、ひたすら裁判で引っ張り回すだけでいいんだ。<br>だって、勝つための経験は、彼らが負けるよりも100倍苦痛だからね。<br>イギリス政府がFujitsuスキャンダルで郵政労働者にやったのがこれだよ。" userName="FirmwareBurner" createdAt="2025/06/18 10:28:40" color="#45d325">}}




{{<matomeQuote body="でも、記事の筆者はトラッカーを合法的な目的、つまりLinux ISOのダウンロードに使ってたって言ってるよ。<br>見るべきものはない、さっさと行け、ってね。<br>真面目な話、筆者自身も同じ主張をして、結論として『怖くなった。…動くのを確認した後、すぐにVPSをシャットダウンしてドメインを削除した』って言ってる。<br>弁護士じゃないけど、これは明らかに筆者が犯罪を助長する意図がなかったこと、そして何が起きてるか見てからシャットダウンしたことを示してると思うな。" userName="senko" createdAt="2025/06/17 19:33:50" color="#ff33a1">}}




{{<matomeQuote body="『これが合法か？ってのは役に立たない質問だ』って言うけど、なんでそう思うの？<br>一見『役に立たない』質問でも、価値ある議論や洞察につながることだってあると思うんだ。<br>それに、君の視点だけが唯一正しいわけじゃないかもしれないしね。<br>何が『役に立つ』かは人によって違うんだよ。" userName="ranger_danger" createdAt="2025/06/18 05:59:05" color="">}}




{{<matomeQuote body="彼は単に新しいトラッカーを始めたわけじゃない。<br>以前違法コピーに使われてた古いドメインを引き継いで、トレントがまだそのトラッカーを指してるのを見てから運営したんだ。<br>これは『著作権侵害に使われるだろうと彼は知っていた』にかなり直接的に繋がるんじゃないかな。" userName="gpm" createdAt="2025/06/17 19:32:36" color="#45d325">}}




{{<matomeQuote body="一人に同時にどれだけの訴訟をぶつけられるかの限度ってあるの？" userName="koakuma-chan" createdAt="2025/06/18 10:38:18" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ふと思ったんだけどさ、色んなBittorrent Clientがあるし、安全じゃない言語で書かれてるのも多いじゃん？これって悪質なTrackerから攻撃される可能性あるんかな？なんか不正なデータ食わされたら誤動作しても驚かないわ。" userName="nneonneo" createdAt="2025/06/17 19:20:23" color="">}}




{{<matomeQuote body="みんなが使ってるTorrent Clientの多くはね、実はLibtorrentっていう、めっちゃテストされて監査もされてるライブラリを包んでるだけなんだよ。" userName="treyd" createdAt="2025/06/17 21:55:06" color="#45d325">}}




{{<matomeQuote body="Libtorrentにはね、TrackerとかDHT Peerとの通信専用のFuzzerまであるんだぜ。まあ完璧じゃないけど、他の実装よりはるかに安心できるよ。" userName="dafugg" createdAt="2025/06/18 04:33:07" color="#45d325">}}




{{<matomeQuote body="あと注意して欲しいんだけど、『Libtorrent』って名乗るのが少なくとも3種類あってさ、俺の知る限り、実装はあんまり共通してないんだよね。" userName="delusional" createdAt="2025/06/18 05:23:39" color="#45d325">}}




{{<matomeQuote body="1. Libtorrent-rasterbar — https://packages.debian.org/sid/libtorrent-rasterbar-dev<br>2. Libtorrent-rakshasa (rTorrent) — https://packages.debian.org/sid/libtorrent-dev<br>あと一つは何？" userName="boramalper" createdAt="2025/06/21 08:45:37" color="#38d3d3">}}




{{<matomeQuote body="趣味でClient書いたことあるけど、答えはイエスだと思うよ。まずさ、制御できないサーバーからの入力を扱うじゃん。あとファイルシステムとのやり取りも結構あるし。メモリ安全な言語でもちゃんと動くClient書くの難しいのに、CとかC++で正しくやるのはマジで大変だろうね。" userName="asa400" createdAt="2025/06/17 21:13:20" color="#38d3d3">}}




{{<matomeQuote body="Transmissionがさ、DNS rebinding経由でremote code executionの脆弱性(CVE-2018-5702)あったんだよ。これで攻撃者が勝手にコマンド実行できたんだ。やっぱTrackerからの攻撃ってマジであり得る攻撃手段なんだよね。" userName="ethan_smith" createdAt="2025/06/18 00:39:57" color="#785bff">}}




{{<matomeQuote body="対策としてはさ、GvisorみたいなコンテナSandbox使うと絶対良いと思うよ。あるいは普通のSystemdプロセスでもFirejail使うとかね。" userName="udev4096" createdAt="2025/06/18 04:57:36" color="#ff5c5c">}}




{{<matomeQuote body="データはBencodeでエンコードされてて、バイト単位の形式なんだ。悪質なTrackerはね、例えば既知のPDFファイル全部にClientのOS狙いのペイロードを付け足す、みたいな感じで仕掛けてくることが多いよ。Announcement関連のAPIって実装は結構簡単なんだけど、Fuzzedなテスト環境でやってるとは思えないな。Transmissionとかさ、何年も前から脆弱性いっぱいあったじゃん。他のClientの実装は分かんないけどね。" userName="cookiengineer" createdAt="2025/06/18 03:19:26" color="#ff5733">}}




{{<matomeQuote body="トレントってチェックサムハッシュがあるんだよね？それともMD5みたいにダメなやつなの？" userName="Sophira" createdAt="2025/06/18 03:35:28" color="">}}




{{<matomeQuote body="そうそう。大抵のクライアントはダウンロード終わってから再検証するんだよね。チャンクの再ダウンロード具合によるけど（ウェブシードは206 Partial Contentヘッダー非対応だと無理な場合も）、全部再ダウンロードになるかもね。クライアントによって経験違うから、キャッシュ汚染された時の挙動は色々みたい。ハッシュアルゴリズムはだいたいSHA系が使われてるよ。SHA1の衝突は誰か成功させたか知らないけど、PDFでPoCがあったのは知ってる。詳しくはこちら:<br>[1] https://shattered.io/" userName="cookiengineer" createdAt="2025/06/18 03:44:11" color="#45d325">}}




{{<matomeQuote body="可能性はあるけど、なさそうかな。プロトコルは結構シンプルだし、クライアントもこれまでたくさん怪しい入力に晒されてきてるからね。" userName="userbinator" createdAt="2025/06/18 02:03:26" color="">}}




{{<matomeQuote body="筆者にそこ掘り下げてほしかったなー。" userName="fshafique" createdAt="2025/06/17 21:16:06" color="">}}




{{<matomeQuote body="rust以外で書かれたプログラムがどんだけあるか考えてみてよ。何も心配いらないって（もしくは全部心配しろってこと）。" userName="AzzyHN" createdAt="2025/06/17 23:57:04" color="">}}




{{<matomeQuote body="P2Pで一緒に見る目的で、超短期間だけど個人的なトラッカー動かしたことあるよ。おもちゃみたいなもんで、トラッカーの仕組みまでは深く見なかったけど（rust製のAquatic tracker使ったんだけど、お願いしたらwebtorrent対応してくれたんだ！ https://github.com/greatest-ape/aquatic ）。トラッカーって何をトラッキングしてるか知ってるのかな？ピアの待ち合わせをトラッカーが知らないようにする方法はある？直感では、みんながピアに聞いてるハッシュ/magnetみたいなもんな気がするんだ。magnet自体で十分で、何か特定する情報（人間が読める説明とか）は含める必要ないと思ってた。トラッカーはピアからそのハッシュをダウンロードして torrent info を得ることはできるだろうけど、自分でダウンロードしないと torrent が何なのか、中身が何なのかは分からないんじゃないかな。これ合ってる？magnet linkのどれくらいが待ち合わせの鍵になるの？トラッカーって人間向けフィールドを無視したり、入るときにブロックしたりして、中身を知らないようにできるの？" userName="jauntywundrkind" createdAt="2025/06/17 19:13:14" color="#785bff">}}




{{<matomeQuote body="トラッカーはtorrentの info hash しか扱わないよ。名前とか説明とか内容は一切なし。OPが使った opentracker を例にとると、ホワイトリストモードとブラックリストモード（またはそれに準じる用語）がある。前者は文字通りで、後者はブラックリスト以外のハッシュを全て許可する。torrent.eu とか opentrackr.org とかの公開トラッカーは、どんなユーザーでも集まれるように、常に（ほとんど）どんなコンテンツでも受け入れるためにブラックリスト方式で動いてるよ。" userName="daneel_w" createdAt="2025/06/17 22:46:34" color="#785bff">}}




{{<matomeQuote body="トラッカーは何をトラッキングしてるか知ってるよ。昔、TV番組のトラッカーを運営してたんだけど、全ユーザーのアップロード/ダウンロード比率を記録してたんだ。" userName="qingcharles" createdAt="2025/06/17 22:23:53" color="">}}




{{<matomeQuote body="ブログ記事は公開トラッカーの話だよ。君が説明してるのはプライベートトラッカーで、torrentのannounce URLにクライアント識別子を埋め込むんだ。公開トラッカーだとユーザーを特定する方法はIPアドレスだけで、それは信頼できないよ。" userName="aeyes" createdAt="2025/06/18 01:13:17" color="#ff33a1">}}




{{<matomeQuote body="ここで毎日更新されてるトラッカーのマスターリストがあるよ。他の死んだやつも見つかるかもね https://github.com/ngosang/trackerslist" userName="haunter" createdAt="2025/06/17 19:24:32" color="#ff5733">}}




{{<matomeQuote body="つまり、ドメイン登録してDNSいじるだけで、任意のIPにDDoS攻撃できるってこと？<br>やばくない？" userName="jldugger" createdAt="2025/06/17 20:22:44" color="#ff33a1">}}




{{<matomeQuote body="そんなにひどくなるかな？オレが使ってたBitTorrentクライアントは、つながらないと最低60秒は待つし、ポートも合わないし、BitTorrentも話さないなら、たとえ数百万BitTorrentクライアントでも大した問題じゃない気がするけど？" userName="57473m3n7Fur7h3" createdAt="2025/06/17 21:24:10" color="#ff5733">}}




{{<matomeQuote body="なりうるよ。このリンク見てみ。<br>https://www.jwz.org/blog/2015/01/chinese-bittorrent-the-gift..." userName="jldugger" createdAt="2025/06/18 01:57:20" color="#ff5733">}}




{{<matomeQuote body="注意して。この人、HN嫌いみたいで、クリックすると睾丸の写真が出てくるらしいよ。" userName="globular-toast" createdAt="2025/06/18 06:56:34" color="">}}




{{<matomeQuote body="たった一枚の画像をスパムするためだけに、ドメイン丸ごと登録するなんて、その執念、個人的には好きだけどね。" userName="graealex" createdAt="2025/06/18 14:00:01" color="">}}




{{<matomeQuote body="HN以外からそのサイトに行った人は、ちゃんと元の記事が見れるんだって。<br>あの写真、HNからのアクセスだけらしいよ。" userName="57473m3n7Fur7h3" createdAt="2025/06/20 09:13:55" color="">}}




{{<matomeQuote body="なるほど、つまり60秒に1回のリクエストが、3,000,000くらいのクライアントから来るってことか。<br>わかる？毎秒50,000リクエストだぜ。" userName="immibis" createdAt="2025/06/18 08:58:16" color="#785bff">}}




{{<matomeQuote body="一般的なクライアントのアナウンス間隔は結構長いんだ（たいてい30分）。<br>でも、300万ものピアが繋がってるなら、そりゃ相当なトラフィックになるよ。" userName="daneel_w" createdAt="2025/06/17 22:40:10" color="">}}




{{<matomeQuote body="もっと厄介だと思うのは、攻撃的な知的所有権者から来るDMCA苦情を全部、個人のIPアドレスに転送できちゃうこと。<br>ISPはトラッカーの運用が合法かどうかに関わらず、アカウントを停止してくるだろうね。" userName="ircop" createdAt="2025/06/18 15:45:20" color="#ff5733">}}




{{<matomeQuote body="つまり、筆者が理論的にDDoSしたいと思う任意のIPに全てのトラフィックをリダイレクトできるってこと？<br>そんなこと考えたこともなかったよ、300万のピア相手じゃマジで怖いね。" userName="udev4096" createdAt="2025/06/18 04:59:52" color="#ff5c5c">}}




{{<matomeQuote body="これはCloudflareがIPアドレス1.1.1.1を取得した時と似てるね。<br>公開された途端、大量のトラフィックが流れ込んできたのは、たくさんの人がそれにスクリプトを向けてたからさ。" userName="jedberg" createdAt="2025/06/17 18:21:51" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="“APNICの研究グループはIPアドレス1.1.1.1と1.0.0.1を保有してたんだ。アドレスは有効だったんだけど、たくさんの人が色んな適当なシステムに入力してたせいで、常にゴミトラフィックの洪水に圧倒されてた。<br>APNICはこのゴミトラフィックを研究したかったけど、IPをアナウンスするたびに、その洪水が通常のネットワークを圧倒しちゃってたんだ。”<br>https://blog.cloudflare.com/announcing-1111/" userName="jedberg" createdAt="2025/06/17 22:36:23" color="#38d3d3">}}




{{<matomeQuote body="Cloudflareのブログ記事で説明されてるよ。<br>‘私たちは、覚えやすいIPでDNSリゾルバを提供できることと引き換えに、Cloudflareのネットワークでゴミトラフィックを受け取って研究することを申し出ました’だってさ。" userName="rs_rs_rs_rs_rs" createdAt="2025/06/18 05:40:49" color="#785bff">}}




{{<matomeQuote body="まず最初に思ったのは、どれくらいのBitTorrentクライアントが脆弱なパースコードを持ってるんだろう？<br>悪意のある人間がドメインを登録して、クライアントを感染させられたりしないかな？" userName="ck45" createdAt="2025/06/17 19:31:28" color="#45d325">}}




{{<matomeQuote body="Jon Evansの小説”Invisible Armies”に出てくる、P2Pソフトウェアの”バグ”というかバックドアで作者がマシンを乗っ取る話を思い出したよ。" userName="EvanAnderson" createdAt="2025/06/17 21:08:57" color="">}}




{{<matomeQuote body="正直そこまで思わないな。トラッカーなんてBittorrent全体のほんの一部だし、クライアントがピアのリストをもらうためだけに使われるだけなんだ。要するにトラッカーへのHTTP呼び出しで、レスポンスが返ってくるだけ。すぐ思いつくヤバいことといえば、変なbencodeを返して初心者が書いたクライアントのメモリを食いつぶすくらいかな。ピアプロトコル（uTPみたいな亜種も）の方がよっぽど攻撃対象として面白いし、トラッカーをホストする必要もないんだ。トラッカーやDHTからピアのIP取ってきて、接続して、マジックをかませばいいんだから。" userName="CactusRocket" createdAt="2025/06/18 13:22:33" color="#ff33a1">}}




{{<matomeQuote body="utorrent v2.1はまだめっちゃ多くの人に使われてるから、間違いなく脆弱性はあるでしょ。" userName="SSLy" createdAt="2025/06/17 20:11:35" color="">}}




{{<matomeQuote body="それ超簡単じゃん。ドメインをロシアとか中国、イランみたいな国で登録して、サイトはAlibabaで動かせばいいんだよ。あいつらに法的通知みたいなトイレットペーパーを送らせてみろっての。絶対うまくいくわけないし。" userName="mystraline" createdAt="2025/06/17 21:10:10" color="">}}




{{<matomeQuote body="あー、ネット上の違法活動は全部「ロシア、中国、イランみたいな国」でドメイン登録すれば解決ってことか。TORの人たちに教えてあげないとね、やっとダークネット閉鎖して全部中国に移せるぞ！" userName="graealex" createdAt="2025/06/18 14:02:51" color="">}}




{{<matomeQuote body="なんで他のオープントラッカーにフォワードしないの？ そうすれば自分で何もホストしないことになるから、何か訴えられたら「そっちのオープントラッカーに言って」って言えるじゃん。" userName="avidiax" createdAt="2025/06/18 01:26:20" color="">}}




{{<matomeQuote body="外から見たら区別つかないし、どっちみち訴えられると思うよ。" userName="sneak" createdAt="2025/06/18 09:48:12" color="">}}




{{<matomeQuote body="IANAL（法律家じゃない）だけど、俺の理解だとアメリカではコンテンツ中立なトラッカーの運営は合法らしいよ。でも他の国では間違いなくそうじゃないし、VPSの場所とか.siっていうTLD（国別トップレベルドメイン）も別の国だから関係してくるだろうね。" userName="aidenn0" createdAt="2025/06/17 18:43:34" color="#45d325">}}




{{<matomeQuote body="ググってみたら、アメリカの法執行機関に閉鎖されたトラッカーは少なくとも一つ（EliteTorrents、2005年）あったみたい。<br>https://www.latimes.com/archives/la-xpm-2005-may-26-fi-torre...<br>多分もっとあるんじゃないかな。MPAAとかが損害賠償で訴えた民事訴訟も間違いなくもっとあるよ。アメリカだと立件が多少難しいのかもしれないけど、載せてるものの大部分が著作権物なら、アメリカでも閉鎖される可能性は結構高いと思う。" userName="jrochkind1" createdAt="2025/06/17 20:16:48" color="#785bff">}}




{{<matomeQuote body="それって実際のトラッカーだけが閉鎖されたの？ それともTorrentファイルとかフォーラムとかをホストしてるWebサイトもあったの？ 後者だとマジで大ターゲットになるからね。あー、rarbgとかKATが本当に懐かしいなぁ。" userName="NoMoreNicksLeft" createdAt="2025/06/17 21:38:26" color="">}}




{{<matomeQuote body="俺の経験だと、良いトレントは今プライベートトラッカーにあるんだ。なんでかはっきりしないけど、コミュニティ見てると、みんな質の高いファイル（例：きれいにフォーマットされたE-books、整理されたオーディオブックとか、映画やTV番組の色々な解像度・圧縮率のバリエーション）を作るのにすごくプライド持ってて、それをコミュニティ内に留めときたいみたいだね。" userName="komali2" createdAt="2025/06/18 02:06:28" color="">}}




{{<matomeQuote body="USの法律がどうなってたら、Webフロントエンドは違法（あるいは民事罰の対象）になるのにトラッカーはそうじゃないのか、不思議だね。" userName="jrochkind1" createdAt="2025/06/17 22:44:56" color="">}}




{{<matomeQuote body="トラッカーってのは、表向きはコンテンツに中立な中間業者なんだ。ISPも違法じゃない（そして最近まで民事罰の対象とも考えられてなかったけど、今は少なくとも一つ係争中のケースがある）。<br>こういうサイトの多くは「ここに来ていっぱい海賊版ダウンロードしなよ」って感じだったし、著作権侵害コンテンツを簡単に探せるツールがあったり、正しくタグ付けされてないトレントは削除したりしてた。多くの場合、サイト運営者の一部もSeedingしてたんだ。だから「俺たちはただパケットを流してるだけです」って言い訳は難しくなる。" userName="aidenn0" createdAt="2025/06/18 04:38:11" color="#ff5733">}}




{{<matomeQuote body="＞あーあ、rarbgとかKATが懐かしいな。<br>トレントする価値のあるものがなくなったよ。もしかしたら状況が変わったか、俺が大人になったのかもしれないけど：<br>1. 今必要なユーティリティソフトウェアはほとんど無料だし、ロシアのトレントで簡単に見つかる数少ないプログラムを除けばね。<br>2. ほとんどのゲームとか他のメディアはクソだ。<br>トレントはUSの法執行機関に潰されたんじゃなくて、ほとんどの企業が、質の高いものにお金払わせるより、広告とかルートボックス付きのクソをタダで提供する方がずっと良いビジネスモデルだって気づいたから死んだんだよ。<br>2000年の誰かに、Windowsがネイティブで広告表示するようになる、EAがFIFAが事実上のギャンブルだって訴訟で負ける、音楽業界がAI生成コンテンツを推し進めるようになるって言ってみてよ。でもどういうわけか、2025年にはこれが完全に普通だって受け入れてるんだ。そりゃ誰も何もトレントしないわけだ。" userName="anal_reactor" createdAt="2025/06/18 00:29:35" color="#ff5c5c">}}




{{<matomeQuote body="トレントが死んだのは、今やファイルホスティングサイトから何でもDLできるか、海賊版のOneDriveやGoogle Driveからできるからだよ。<br>2025年になっても良質なものはたくさんあるし、クソみたいなのも多い、ちょうど40年前と同じだよ。" userName="rjh29" createdAt="2025/06/18 04:02:58" color="">}}




{{<matomeQuote body="まあ、俺自身は今日の多くのTV番組はクソだと思うし、トレントソース経由で見る価値もないかなって考えてる。ストリーミングサービスのために大量生産される低品質コンテンツは今や普通のことだね。<br>でもこれは個人的な見方だよ。" userName="seb1204" createdAt="2025/06/18 04:51:33" color="">}}




{{<matomeQuote body="ETが閉鎖された日のこと覚えてるよ。あれは、何かメジャーな超大作映画をプレミア公開前にリリースしたからだったんだ。" userName="lossolo" createdAt="2025/06/17 20:48:14" color="">}}




{{<matomeQuote body="VPSはhttps://cockbox.org/（記事で参照されてる）からだって。ここはモルドバを拠点にしてるらしいよ。" userName="ZYbCRq22HbJ2y7" createdAt="2025/06/17 19:40:45" color="">}}




{{<matomeQuote body="昔、.siで動いてる大きな公開トラッカーがあったんだ。これは.siがあるスロベニアで広く使われてた。過去20年でネットやってるスロベニアのほとんどみんなが知ってるか使ったことあるよ。これも法的な通知で消えたんじゃなかったな。" userName="trinix912" createdAt="2025/06/17 22:09:59" color="">}}




{{<matomeQuote body="どれくらいのアンチトレントグループがこれを密かにやってるんだろうね。" userName="zaik" createdAt="2025/06/17 18:49:49" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
