+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'Microsoft Officeが長年使ったSource DepotからGitへ移行！開発現場に変化が'
tags = ["Git", "バージョン管理システム", "Microsoft", "開発ツール", "エンジニアリング"]
featureimage = 'thumbnails/purple2.jpg'
+++

> Microsoft Officeが長年使ったSource DepotからGitへ移行！開発現場に変化が

引用元：[https://news.ycombinator.com/item?id=44253212](https://news.ycombinator.com/item?id=44253212)




{{<matomeQuote body="この記事はOfficeのGit移行っていう古い話の新しい語り直しだね。GitはVFSがないとOfficeみたいなリポジトリをgetするのに何時間もかかったって悪く言ってるけど、そんな操作はVFS（VFS for Git）で新しいファイルシステム作らないと実質不可能だったって事実をすっ飛ばしてるよ。Perforceは必要な部分だけチェックアウトできたから、SDのユーザーもOfficeスイート全部じゃなくて必要なアプリだけ取ってたと思う。VFSは「必要な時だけオブジェクトをダウンロードする」って感じで、その差を埋めてるね。PerforceやSDは当時の集中型VCSとしては素晴らしかったけど、時代は変わったってことかな。" userName="2d8a875f-39a2-4" createdAt="2025/06/12 09:00:52" color="#785bff">}}




{{<matomeQuote body="ウチの会社もまだ Perforce 使ってるけど、この時点でもう誰も好きじゃないって感じだね。世の中 Git なのにウチは違うって言うと、新卒の子たちの目が死ぬのがわかるよ。" userName="noitpmeder" createdAt="2025/06/12 12:49:18" color="">}}




{{<matomeQuote body="新卒がバージョン管理ソフトの選択でイライラするなんて信じられないなぁ。たくさんのハードルを超えて新しい会社に入ったんだから、そこのやり方やツールに対してオープンマインドでいるのは当然でしょ。" userName="kccqzy" createdAt="2025/06/12 12:56:22" color="">}}




{{<matomeQuote body="Discordはコミュニティとかネットワーク効果を考えればわかるけど、Bitbucket？コストを節約したいCTO以外でBitbucketを好む理由が全く分からないんだけど。" userName="evilduck" createdAt="2025/06/12 13:56:12" color="">}}




{{<matomeQuote body="ウチの職場はBitBucketを使ってるよ。特定の輸出規制があって、知財を含むサービスはできるだけオンプレミスにしたいから、BitBucket Serverなんだ。他にも選択肢はあるけど、クラウドのソリューションは全部無理だったんだ。" userName="connicpu" createdAt="2025/06/12 14:44:55" color="#45d325">}}




{{<matomeQuote body="やり方やツールに対してはオープンマインドなつもりなんだけど、今の時代Git以外のツールを使ってる会社は、よっぽどちゃんとした理由がない限り、VCSシステムを比較検討してGit以外を選んだんじゃなくて、レガシーなプロセスを最新化するパワーや政治的な意思がないってことの表れに感じちゃうんだよね。" userName="Marsymars" createdAt="2025/06/12 14:43:14" color="">}}




{{<matomeQuote body="うん、確かに新卒の開発者にとっては問題だね。記事でも「業界で使えるスキルが増えて多くの人がスッキリした。オンボーディング時間も半分になった」って言ってるしね。" userName="2d8a875f-39a2-4" createdAt="2025/06/12 14:19:40" color="">}}




{{<matomeQuote body="一部の会社はPerforce用にVFSみたいな独自技術を開発してるんだ。Office全体をチェックアウトしても、特定のアクセスを試みる時にだけファイルを引っ張ってくる方式。これはテキストファイルと一緒に巨大なバイナリ資産を置くゲーム開発ですごく重要なんだ。Windowsに内蔵されてるリモートドライブのプログラムが使ってる技術と同じだよ。個人的には履歴を全部ローカルに持たなくていいサーバーベースのVCSもちょっと欲しいけど、でもGitのstashとかstage hunksとかinteractive rebaseとかの機能が、自分の作業スタイルに合ってて手放せないんだよね。" userName="daemin" createdAt="2025/06/12 11:23:23" color="#ff5733">}}




{{<matomeQuote body="オンボーディングにそんなに時間がかかったのが意外だね。<br>Source Depotが特別変だったのか、Microsoftの使い方がすごく複雑にしてたのかも。<br>Perforceは使うのが難しいと感じたことないし、プログラマーは全然困ってないみたい。<br>アーティストやデザイナーも結構すぐに慣れてたよ。（Gitの面倒なやり方（git style of shit）に我慢する習慣がない点で、プログラマーとは大違いだけどね。）" userName="tom_" createdAt="2025/06/12 17:25:25" color="">}}




{{<matomeQuote body="SVNって、プロジェクトの好きな深さのフォルダやファイルだけチェックアウトしてコミットできたっけ？<br>チェックアウトやコミットはともかく、特定のサブツリーのログ履歴が見れたのはSVNのツールで懐かしいな。" userName="sixothree" createdAt="2025/06/12 14:18:20" color="">}}




{{<matomeQuote body="初めての職場で6ヶ月経ってからSVNからGitに移行した時、嬉しくて泣きそうになったよ。<br>最初の数週間は気にしないだろうけど、1ヶ月もすればその辛さがわかるはず。" userName="DanielHB" createdAt="2025/06/12 13:14:40" color="">}}




{{<matomeQuote body="「git style of shit」ってフレーズが分からないな。<br>もっと詳しく説明してくれる？" userName="throwaway2037" createdAt="2025/06/13 08:24:59" color="">}}




{{<matomeQuote body="GitがGitツリーの特定の場所だけチェックアウトする方法を提供してないのは、ちょっと驚きだな。<br>オブジェクトファイルを理解する中間サービスを使えば結構簡単にできそうな気がするんだけど。" userName="swsieber" createdAt="2025/06/12 15:57:51" color="">}}




{{<matomeQuote body="Perforceは使ったことないから何も言えないけど、職場でGitの代わりにGoogleのPiperが欲しいな。<br>左の睾丸と引き換えにしてもいいくらい！" userName="Degorath" createdAt="2025/06/12 21:04:16" color="">}}




{{<matomeQuote body="Microsoftみたいな有名な場所に来て、ひどく時代遅れのソフトを使う羽目になるのは問題だね。<br>Excelにいた時は、Script＃からTypeScriptへの移行、SourceDepotからGitへの移行、短い開発サイクル、良いツールなど、かなり改善したことに拍手を送りたい。<br>開発時間の大部分は開発者向けのツールや満足度に使われたよ。<br>でも、古い場所にまた行ってSourceDepotや「変更を行う」ツールである`osubmit`を使うのは本当に最悪だったね。<br>ハッピーパスでもパッチをレビューのために提出するのに16回もポップアップが出たりさ。<br>（変なWindows GUIレビューツールでもやってたし）<br>Gitはかなりの改善だったよ！:D" userName="inglor" createdAt="2025/06/12 18:29:11" color="#ff33a1">}}




{{<matomeQuote body="「新入社員がバージョン管理ソフトの選択に腹を立てるなんて信じられない」って？<br>腹を立てるよ、もしバージョン管理ソフトが基準に達してないならね。<br>Mercurial/hgを使ったことがなくても全然気にしなかったし、むしろ今ではGitより好きだよ、実際すごく良いから。<br>Gitもほとんどの人が慣れてる decentな選択肢だし、これで腹を立てることもないでしょ。<br>その一方で、Source Depotはひどかったね。<br>ずっと戦ってる感じだったよ。<br>慣れてきたら、余計嫌いになったんだ。" userName="filoleg" createdAt="2025/06/12 19:49:54" color="">}}




{{<matomeQuote body="新しい人が入ってきたとき、そのツールがhgとかSource Depotに似てるか分かんないんだよ。<br>だから判断は保留すべきだね。" userName="kccqzy" createdAt="2025/06/13 15:01:01" color="">}}




{{<matomeQuote body="`git log my/subfolder/`でサブフォルダのログ履歴って見れるんじゃない？<br>TortoiseGitみたいなツールなら右クリックで見れるよ。" userName="gilbertbw" createdAt="2025/06/12 14:28:48" color="">}}




{{<matomeQuote body="それ、前からあるじゃん。<br>Partial clonesとかLFSだよ。<br>https://git-scm.com/docs/partial-clone" userName="jjmarr" createdAt="2025/06/12 16:48:34" color="#45d325">}}




{{<matomeQuote body="SVNからgitになった時、嬉し泣きしたって話、マジ懐かしい！<br>RCS/CVSからSVN、そしてGitへって経験、すごく分かるよ。<br>Gitのコマンドは変だけど、昔よりずっとマシになった。<br>Gitに貢献した人たち、本当にありがとう！" userName="throwaway2037" createdAt="2025/06/13 08:40:13" color="#785bff">}}




{{<matomeQuote body="Bazelはバージョン管理ツールじゃないからね。" userName="kccqzy" createdAt="2025/06/12 18:20:12" color="">}}




{{<matomeQuote body="なんでGitLabとかGitHubのオンプレサーバー使わないの？" userName="prepend" createdAt="2025/06/13 10:25:32" color="">}}




{{<matomeQuote body="新しい人だと、Gitじゃないツールを使う理由があるか分かんないんだよね。<br>レガシーでもいいツールもあるかもだし。<br>モダン化のためにモダン化するのはJSの世界みたいでちょっと変だよ。" userName="kccqzy" createdAt="2025/06/12 18:15:17" color="">}}




{{<matomeQuote body="Gitって典型的なUnixツールだけど、使いにくいよね。<br>コマンド分かりにくいし、内部を知らないとダメ。<br>エラーも多い。<br>GUIもあるけど、使うと文句言われるし、絵とかマージできないファイルは苦手。<br>プログラマー以外にはもっと大変だよ。" userName="tom_" createdAt="2025/06/13 11:11:10" color="#45d325">}}




{{<matomeQuote body="でも、それらってすごくお金かかるんだよ！" userName="Tostino" createdAt="2025/06/12 14:11:26" color="">}}




{{<matomeQuote body="職人っていい道具をありがたがるよね。" userName="jayd16" createdAt="2025/06/12 15:43:48" color="">}}




{{<matomeQuote body="2016年のMicrosoftインターン中、Source Depotが何かも分からず automated code reviewer にSource Depot対応を追加するのに一週間近くかけたよ（https://austinhenley.com/blog/featurestheywanted.html）。<br>当時でもまだかなり多くの開発者が使ってたんだ。<br>もう全部gitに移行したのかな。" userName="azhenley" createdAt="2025/06/12 01:57:37" color="#45d325">}}




{{<matomeQuote body="いやいや、まだいっぱいsdで動いてるって！！<br>あのsdコマンドとか設定とか、マジでゾッとするね！！" userName="sciencesama" createdAt="2025/06/12 04:45:15" color="">}}




{{<matomeQuote body="CodeFlowが毎日恋しいな。<br>あれは本当に最高のツールだったのに。" userName="PretzelPirate" createdAt="2025/06/12 12:48:42" color="">}}




{{<matomeQuote body="CodeFlowはまだ生きてるし、評価高いよ。<br>GitHubリポジトリもサポートしてるんだ、gitだけじゃなくてね。<br>https://chromewebstore.google.com/detail/codeflow/aphnoipoco...<br>ただ、まだ社内向けとして buried されてるけどね。" userName="Plasmoid2000ad" createdAt="2025/06/13 12:35:45" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="今は日々のほとんどはgitでやってるよ。" userName="hacker_homie" createdAt="2025/06/12 05:46:49" color="">}}




{{<matomeQuote body="90年代にvssを使ったことあるから、全然言及されてないのが意外だったよ。<br>VSS（Visual SourceSafe）はMicrosoft独自のバージョン管理システムだったけど、Source DepotはPerforceからライセンスされてたんだよね。" userName="0points" createdAt="2025/06/12 11:23:22" color="#785bff">}}




{{<matomeQuote body="VSSはRaleighのOne Tree Software買収で手に入れたんだ。<br>彼らの製品がSourceSafeで、Visualって部分は他の開発ツールと一緒にバンドルされた時に付いたんだって。<br>その前はMicrosoft Deltaってクソ高くて酷くてNTに対応してないバージョン管理製品を売ってた。<br>買収でMicrosoftに入った一人にBrian Harryがいて、彼がTFVC（Team Foundation Serverの一部）の開発を率いたんだ。<br>あれはストレージにSQL Serverを使ってて、VSSより管理も信頼性も格段に向上した。<br>Brianはもう引退したと思うけど。<br>VSS使ってた頃、SMB経由のネットワークファイルロックが破損の大きな原因だった気がするな。<br>ネットワークがちょっと不安定だとリポジトリを修復しなきゃいけなかったんだ。<br>朝には使えるように、夜間に修復バッチジョブを走らせてたよ。" userName="chiph" createdAt="2025/06/12 20:55:23" color="#45d325">}}




{{<matomeQuote body="＞ ...SMB経由のネットワークファイルロックが破損の大きな原因だった気がする...<br>SMBで共有データベースファイル（どんな種類でも）とか…ゾッとする。<br>あの頃は本当に酷かった。" userName="EvanAnderson" createdAt="2025/06/12 22:42:12" color="#ff33a1">}}




{{<matomeQuote body="いくら願っても、smb sharesとaccess databasesはロックと同時ユーザーに関する昔と同じ酷い問題を抱えたまま生き残ってるんだよな。" userName="hypercube33" createdAt="2025/06/13 21:04:54" color="">}}




{{<matomeQuote body="へ〜、TIL！記事に加えてくれてサンキュー。俺のVSS経験もひどかったし、ファイル壊れたりもしたよ。" userName="0points" createdAt="2025/06/13 03:30:07" color="">}}




{{<matomeQuote body="90年代にVSS使ったけど、チーム開発じゃ悪夢だったわ。MS自身は内部でほとんど使ってなかったはずだよ。" userName="larrywright" createdAt="2025/06/12 13:31:36" color="">}}




{{<matomeQuote body="その通り。SDの前はMSの部署（OfficeとかWindowsとか）はSLMって内部ツール使ってたんだって。Raymond Chenがブログで書いてるよ：https://devblogs.microsoft.com/oldnewthing/20180122-00/?p=97..." userName="hpratt4" createdAt="2025/06/12 18:02:03" color="#38d3d3">}}




{{<matomeQuote body="90年代にソロでVSS使ったらすごかった。大学院ではRCSとかCVSも知った。2004年にMS入って、VSSは安全じゃなくて腐敗しやすいって聞いたよ。本当か噂か分かんないけど、仕事では使えなかったな。" userName="tamlin" createdAt="2025/06/12 12:08:05" color="">}}




{{<matomeQuote body="Sourcesafeとのツール連携は当時かなり良かったね。他にはああいうレベルなかった。でもVSSはマジ不安定で、理由なくランダムに壊れた。職場じゃ毎日バックアップから戻してたよ。PVCSに変えたらそれはなかった。VSSはローカルならマシだったかも。ネットワークだとすぐダメに。新しいバージョンほどひどくなった。GUIは分かりやすくて教えやすかったけど、チェックアウト／インモデルは分かりやすい反面、他のブランチシステムは最初分かりにくいよね。" userName="sumtechguy" createdAt="2025/06/12 12:28:21" color="#45d325">}}




{{<matomeQuote body="90年代後半の大学の授業でVSSを使わなきゃいけなくて、たった一つの授業、一つのプロジェクトなのに、それでも壊しちゃったよ。" userName="wvenable" createdAt="2025/06/12 15:38:44" color="">}}




{{<matomeQuote body="〉 No idea if that was true<br>それ、とんでもない控えめな言い方だよ。本気でVSS使っててファイルが壊れるのを見なかった人は、コード履歴を見なかった人だけ！" userName="marcosdumay" createdAt="2025/06/12 13:15:49" color="#45d325">}}




{{<matomeQuote body="90年代後半から2000年代初めまでVSSを数年使ったよ。無いよりはマシ、ってレベル。すごく遅くて、ネットワーク負荷も高かったし（MS Accessみたい）、マージ機能も超貧弱（ファイルチェックアウトしたら他の誰も変更できない）。あと、そう、めちゃくちゃ壊れやすかった。何回か履歴捨ててやり直すしかなかったもん。" userName="smithkl42" createdAt="2025/06/12 14:42:19" color="#785bff">}}




{{<matomeQuote body="SourceSafeには素晴らしいビジュアルマージツールがあったね。複数チェックアウトもできたんだ。VSSにはたくさん問題あったけど、複数チェックアウトを有効にしないのは会社が自分で苦しめただけだよ。SourceSafeのマージツールは今でもたまに懐かしくなるな。" userName="electroly" createdAt="2025/06/12 14:48:17" color="#45d325">}}




{{<matomeQuote body="Visual Studioのgit連携使ったことある？（注：マージ作業自体は他のとこでやって、VSで競合の管理したり、外からコミットしてもいいんだけどさ。）" userName="anonymars" createdAt="2025/06/12 23:29:12" color="">}}




{{<matomeQuote body="Visual Source Unsafeって呼んでたよ。<br>いっつもリポジトリが壊れてたからね。" userName="mmastrac" createdAt="2025/06/12 12:13:49" color="#45d325">}}




{{<matomeQuote body="たしか、特定の操作中にディスク容量なくなると、静かに壊れる問題があったんだ。<br>終わるまでどんだけ容量使うか分かんなくて、気づきもしなかったよ。<br>Microsoftにいた時、Source Depotは使ったVCの中でマシな方だったかな。もう一つのSource Library Managerはもっとひどかった。" userName="skipkey" createdAt="2025/06/12 13:30:52" color="#45d325">}}




{{<matomeQuote body="そうそう、Visual Source Shredって呼んでた気がするな。<br>自分だけの経験じゃなかったって知れてちょっと嬉しいよ。" userName="meepmorp" createdAt="2025/06/12 19:58:14" color="">}}




{{<matomeQuote body="記憶が曖昧だけど、VSSはクライアントのタイムスタンプを信用してて、誰かのクロックがズレると全部壊れた気がする。<br>2000年代前半のWindowsじゃNTPがちゃんと動かなかったから、しょっちゅう起きたんだよ。" userName="_whiteCaps_" createdAt="2025/06/13 15:38:07" color="#ff33a1">}}




{{<matomeQuote body="MicrosoftでXNSからTCP/IPへの移行を担当したチームにいたけど、あれは今回のより大変じゃなかったな。でも似たような学びはあったよ。<br>MSMAILからExchangeへの移行は、あれはキツかった！" userName="RyJones" createdAt="2025/06/12 05:13:13" color="">}}




{{<matomeQuote body="それって、「Exchange: The Most Feared and Loathed Team in Microsoft」っていうライセンスプレートフレームの元ネタ？<br>ちょっと wording 違うかも。20年近く見てないからね。" userName="aaronbrethorst" createdAt="2025/06/12 06:25:32" color="">}}




{{<matomeQuote body="多分そうだよ。<br>MSMAILを本当に愛してた人も多かったんだ。Exchangeはそうでもなかったな。<br>もっと長くて退屈なプロジェクトの話もあるけど、それはまた今度ね。" userName="RyJones" createdAt="2025/06/12 06:28:30" color="">}}




{{<matomeQuote body="たまにMSMAILを愛した理由が変なこともあったな…<br>MSMAILはWin3.x用に設計されてて、アプリにマルチスレッドがなかったんだ。メールポンプっていう見えないアプリがアイドル中にメールの送受信をチェックしてた。だからユーザーは送信ボタン押しても数秒待てば、気が変わって送信取り消しできたんだ。それでキャリアが終わるのを回避できた。<br>Exchangeはクライアントサーバー方式だから、送信押すとほぼ瞬時にサーバーが気づいて送っちゃう。ユーザーはまばたきする間に取り消せない。速すぎるって文句言うユーザーもいたんだよ。" userName="canucker2016" createdAt="2025/06/12 09:25:44" color="">}}




{{<matomeQuote body="MSPAGERって聞いてニューロンが反応してるけど、romeoとjulietは知らないな。それはいいことだね。<br>だってインフラ知ってても実装に関わってないなら、なんでその「ソーセージの作り方」を知ってるかには大抵ヤバい理由があるから！<br>あと、Bedlam DL3は生き残ったよ（Tシャツはもらえなかったけど）。<br>Bedlamの話の説明はここ見て→https://techcommunity.microsoft.com/blog/exchange/me-too/610..." userName="canucker2016" createdAt="2025/06/13 05:33:58" color="">}}




{{<matomeQuote body="昔MSMAILを使っててMSPAGERをccに入れてた場合、そのスレッドにいるPager持ってる人全員にPagerが飛んでたんだって。" userName="RyJones" createdAt="2025/06/13 05:40:00" color="">}}




{{<matomeQuote body="＞Exchangeが速すぎると文句を言うユーザーが何人かいた<br>それは実際よくあることで、“benevolent deception”って呼ばれてるんだ。HNでも数年前に議論されてたな[1]。[1] https://news.ycombinator.com/item?id=16289380" userName="mschuster91" createdAt="2025/06/12 12:10:37" color="">}}




{{<matomeQuote body="Mail Pumpの遅いメール処理も、Exchangeの速いメール処理も、“benevolent deception”とは言えないな。<br>MSMail/Exchange Client/Outlookでは、Outboxにメールがあるってことは送信待ちだけど、まだ処理されてないってことなんだ。<br>MSMailがExchangeよりメール送信が遅かったのは、ソフトウェアアーキテクチャによるリーキーアブストラクションなんだ。<br>Win3.xはマルチスレッドアプリをサポートしてなくて、協調的マルチタスクシステムを使ってた。だからアプリが何か重い処理をしてると、ユーザーはシステムに触れなくなってたんだ。ユーザーインターフェースのイベントが処理されないからね。<br>だからMail Pumpはシステムがアイドルかチェックしてた。ユーザーが操作してる最中なのにアイドルだって宣言したくないから、このヒューリスティクスは速くないんだ。なのでMail Pumpは辛抱強く待つ必要があった。つまりメールがOutboxに1秒以上留まることもあったってこと。<br>Exchange Serverは別の箱で動くサーバープロセスだった。メールクライアントがExchange Serverにメールを送るって通知したら、Exchange Serverはユーザーの操作をブロックする心配がないから、ほとんどすぐにメールを処理できたんだ。<br>でも、この問題には良い解決策があったんだ。Exchange Serverは意図的に遅延を追加しなかった。<br>誰かアーキテクトかプログラムマネージャーが、メールメッセージのサポートプロパティリストに「送信/処理前の遅延」プロパティを追加してたんだ。Exchange/Win95/Caponeクライアントはこのプロパティを使ってなかった。でも開発者はメール拡張機能を書くことができて、ユーザーが送信メールごとのデフォルト遅延を指定できるようにして、メール送信時にこの「送信/処理前の遅延」プロパティを設定すれば、Exchange Serverは指定された遅延時間だけ待ってからメッセージを処理するようにできたんだ。<br>送信メールの処理を遅くしたいユーザーは、このクライアント拡張機能をインストールして、希望の遅延時間を指定できたわけ。<br>Outlookは数年後にこのプロパティのサポートを追加したよ。<br>Gmailも送信済みメールの取り消しを有効にするための遅延サポートを追加したのに気づいてるよ。" userName="canucker2016" createdAt="2025/06/13 05:10:05" color="#ff33a1">}}




{{<matomeQuote body="ハハ、昔の記憶が錆びついてるかもだけど、この名前には見覚えがあるな。Raymond Chenの引用があった古いブログを書いてた人じゃない？一つ覚えてるのは「IDEとコマンドラインでコンパイル結果が違うコードをどうやって書くの？」ってやつで、答えが「そんなことしたら、ローカルビルドでデバッグしようとした同僚にお焚き上げされるぞ」みたいなのだったんだ。" userName="anonymars" createdAt="2025/06/12 23:37:34" color="">}}




{{<matomeQuote body="＞Authenticity mattered more than production value.<br>この本音のストーリー共有してくれてありがとう！私は元MSFTで、比較的小規模な製品ラインにいたんだけど、私が辞める直前の2015年にSourceDepotからGitへの移行を始めたばかりだったんだ。君たちがやった仕事がいかに素晴らしいか、心から共感するよ！" userName="carlual" createdAt="2025/06/12 03:12:18" color="">}}




{{<matomeQuote body="ありがとう！そういえば、Windows NTのリリースまでの道のりを書いた“Showstopper”って本思い出すよ。すごくおすすめ！" userName="carlual" createdAt="2025/06/12 04:10:39" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ついでに、そのジャンルが好きなら私のお気に入りの本の一つにインターネット開発の話の“where wizards stay up late”ってのがあるよ。" userName="zem" createdAt="2025/06/12 08:21:52" color="">}}




{{<matomeQuote body="Source Depotから移行させるのに結構時間かかったし、しばらくは危なかったよ。でも、その努力は報われたから、ありがとう！" userName="hacker_homie" createdAt="2025/06/12 05:50:15" color="#38d3d3">}}




{{<matomeQuote body="MicrosoftがVisual SourceSafeから社内的に移行したのはいつなのか知りたいな...。あれは一般の人が使い続けないように回収すべきだったんじゃないか。" userName="BobbyTables2" createdAt="2025/06/12 03:23:41" color="">}}




{{<matomeQuote body="使ってたよ。当時は他に良い方法を知らなかったんだ。Visual Studioと統合されてたから、小さいチームには分かりやすい選択肢だったね。<br>ファイルを変えたい時はチェックアウトしないといけなくて、そうすると他の人は変更できなくなるんだ。文字通り、チェックアウトしないとファイルは読み取り専用だった。「一人ずつどうぞ」っていうバージョン管理のアプローチだったね（もう一つは「マージは後で考えよう」っていうアプローチ）。" userName="codeulike" createdAt="2025/06/12 08:04:17" color="#38d3d3">}}




{{<matomeQuote body="君はラッキーだよ。僕が使う羽目になったツールの中でも間違いなく最悪の一つだった。変な理由でその上に何か作っちゃう人がいて、さらにひどくなってたんだ。" userName="masklinn" createdAt="2025/06/12 04:49:04" color="">}}




{{<matomeQuote body="ほとんどのチームはSource Depot使ってなかったと思うな。僕はMicrosoftで数年働いたけど、うちのチームはSource Depotを使ってたよ。たくさんの人が、うちの製品は特別だからMicrosoft自身のSource Control（当時はTFS）じゃ不十分だって考えてたんだ。<br>前の職場でTFSを使ったことがあって、あまり好きじゃなかったけど、Source Depotを使わなきゃならなくなってTFSが恋しくなったよ。" userName="RandallBrown" createdAt="2025/06/12 04:39:44" color="#785bff">}}




{{<matomeQuote body="それはCVS（とその前身のRCSとかSCCS）と全く同じ仕組みだね。ファイルベースのリビジョン管理で、リポジトリベースじゃなかったんだ。<br>SVNはtrunk／branches／tagsみたいなフォルダを追加して、ファイルベースのバージョン管理に重ねただけだったんだ。だからブランチ作成やマージがすごく複雑だったんだよね。どのファイルもマージできなかったら、途中の状態のブランチ元とブランチ先が残って、ロールバックしなきゃいけなかったから。" userName="rswail" createdAt="2025/06/12 09:18:44" color="#ff5733">}}




{{<matomeQuote body="マージがいらないようにするオプションがあった、当時大きな商用SCMツールを思い出したよ。Dropboxみたいにファイルシステムに”sync”できて、リリースやブランチを切るために専任の管理チームが必要だったんだ。IBMが買収したんだっけ？" userName="namdnay" createdAt="2025/06/12 09:11:41" color="">}}




{{<matomeQuote body="TFSが記事で全く言及されてないのが意外だったな（僕が読んだ限りではね）。同時期には存在してたはずだし、Microsoftの他の部署では使ってたはずだよ。2005年にリリースされたと思うけど、社内ではもっと前からあっただろうに。" userName="jbergens" createdAt="2025/06/12 08:47:38" color="">}}




{{<matomeQuote body="それってRational Roseのことかな？僕は2004年に最初の仕事（フィンテック）で、あれを使うハメになったよ。" userName="robin_reala" createdAt="2025/06/12 11:37:09" color="">}}




{{<matomeQuote body="Source Safeは少なくともCVSよりはちょっとマシだったかな。でも、当時SVNもあったのに、Source Safeを使ってる会社の考え方が全然理解できなかったんだよね。" userName="moron4hire" createdAt="2025/06/12 06:04:52" color="">}}




{{<matomeQuote body="CVSが“concurrent version system”と呼ばれたのは、チェックアウト時にファイルをロックしなかったからだよ。SVNもそう。Perforceはロックする方式だね。" userName="fanf2" createdAt="2025/06/12 09:46:05" color="">}}




{{<matomeQuote body="ロック方式はIC設計で今でも使われてるみたい。CadenceとかSynopsisの、マージできないバイナリデータファイル用とかね。詳しいことは知らないけど、社内の他の部署から聞いた話だよ。" userName="pjc50" createdAt="2025/06/12 09:43:41" color="">}}




{{<matomeQuote body="CVSよりちょっとマシ？それはかなり議論の余地ありだね。CVSのUIはひどかったけど、すぐ壊れることもなかったし、デフォルトでファイルロックも必要なかった（担当者が休んでファイルがチェックアウトされたままになったら、管理者呼んでロック解除しないといけなかった）。あと、Source SafeはSMB共有への書き込みアクセスが必要で、それがよく壊れる原因の一つだったんだよ。" userName="masklinn" createdAt="2025/06/12 07:19:14" color="#ff33a1">}}




{{<matomeQuote body="TFSはDevDivでかなり使われてたけど、Windowsの巨大なリポジトリではパフォーマンス的に満足いくレベルにはならなかったらしい。集中型ソース管理システムとしてはそんなに悪くなかったけど、SVNをマイクロソフト流に作り直した感じだったね。Visual Studioとの連携がすごく深い以外に、なんでSVNじゃなくてこれを使う必要があるのかよくわからなかったな。" userName="int_19h" createdAt="2025/06/12 16:28:23" color="#785bff">}}




{{<matomeQuote body="ホントそれ。Source Safeって自分のデータストアもよく壊れる変な癖があったよね。ソース管理システムとしてはまさに最悪！<br>でも、ぶっちゃけSource Safe使わないよりは、何も使わない方がもっとひどいけどね。" userName="mickeyp" createdAt="2025/06/12 07:35:37" color="">}}




{{<matomeQuote body="SVNのリポジトリでは、他の人が同じファイルを編集してても、自分のマシンで自由に編集できるはずだよ。" userName="umanwizard" createdAt="2025/06/12 12:00:26" color="">}}




{{<matomeQuote body="ファイルロック機能は面白かったね。担当者がロック解除忘れて休んじゃったりするとね。それに、ファイルが理由もなくランダムに消えるブラックホール機能も忘れちゃダメだ。あれは今まで使ったソフトウェアの中で一番ひどいものだったかも。" userName="Disposal8433" createdAt="2025/06/12 11:15:06" color="#ff5c5c">}}




{{<matomeQuote body="Source Safeは社内で大規模に使われてたかは分からないな。少なくとも主要なものには使われてないだろう。もし使ってたなら、あんな状態のまま売らなかっただろうし…<br>TFSは説明つかないな。あれは社内でも社外でもゴミだったよ。" userName="pianoben" createdAt="2025/06/12 04:37:56" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
