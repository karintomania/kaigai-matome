+++
date = '2025-03-10T00:00:00'
months = '2025/03'
draft = false
title = 'YouTubeが全動画にTVクライアント向けDRMを導入！これは何を意味するのか？'
tags = ["YouTube", "DRM", "テクノロジー", "ストリーミング", "クライアント"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> YouTubeが全動画にTVクライアント向けDRMを導入！これは何を意味するのか？

引用元：[https://news.ycombinator.com/item?id=43321145](https://news.ycombinator.com/item?id=43321145)

{{<matomeQuote body="これって何を意味してるのか誰か説明してくれない？チケットの内容が難しすぎて、普通の技術者でも理解できないことが多いから、みんなキーワードに飛びつくばっかりで生産的な議論にならないよ。特に、innertube clientやtv innertube clientって何か、TVHTML5、DRM形式、どうやって利用できるのか、何でtv innertube clientだけに関係あるのかが分からない。" userName="perching_aix" createdAt="2025-03-10T18:37:25" color="">}}

{{<matomeQuote body="つまり、YouTubeが特定のクライアントにDRM制限された動画ストリームだけを配信する変更をA/Bテストしてるってことだね。これは、yt-dlpがそれらのクライアントを装うから大きな問題。DRMロックされた動画のダウンロードはサポートされないから、yt-dlpは使えなくなる。" userName="nyx" createdAt="2025-03-10T18:53:24" color="#38d3d3">}}

{{<matomeQuote body="ログイントークンじゃなくて、attestationトークンだよ。たぶんTVクライアントにはDRMに結びつかない良いattestation機能がないんだ。" userName="brigade" createdAt="2025-03-11T00:16:38" color="">}}

{{<matomeQuote body="すごく助かる情報だ、ありがとう。途中で誤解していた部分もクリアにできたし。" userName="perching_aix" createdAt="2025-03-10T19:08:35" color="">}}

{{<matomeQuote body="それって、通常はお金払わないといけない“1080p premium”ってこと？" userName="gruez" createdAt="2025-03-10T23:37:36" color="">}}

{{<matomeQuote body="違うよ、720pが低信頼のクライアントで得られる一番いい画質だからそれ以上のは無理。" userName="brigade" createdAt="2025-03-11T00:21:03" color="">}}

{{<matomeQuote body="低信頼ってのは、Javascriptやattestationなしで使われるように設計された3rdパーティ用ってことだよ。たとえばWii Uクライアントとかね。" userName="brigade" createdAt="2025-03-11T01:03:16" color="">}}

{{<matomeQuote body="サインインすれば全部信頼されることになるよ。yt-dlpはログインなしで動こうとしてるから。" userName="philistine" createdAt="2025-03-11T19:43:47" color="">}}

{{<matomeQuote body="”1080pプレミアム”ってほんと意味不明だよな。普通の1080p動画よりも明らかにビットレートが減ってる気がするし。" userName="hoseja" createdAt="2025-03-11T13:45:33" color="">}}

{{<matomeQuote body="いや、それはまだ有効なユーザートークンがないと無理だよ。" userName="russelg" createdAt="2025-03-10T23:52:16" color="">}}

{{<matomeQuote body="じゃあ”高画質”動画って何？YouTubeのウェブインターフェースでは、今のところDRMなしで誰でも見れるじゃん。なんで特定のAPIだけみんながアピールするのか謎だね。" userName="gruez" createdAt="2025-03-11T00:06:33" color="">}}

{{<matomeQuote body="VP9の高ビットレートコーデックの話だよ。それを入手するにはプレミアムアカウントのクッキーが必要だし、yt-dlpならiPhoneヘッダーをエミュレートすることで簡単に取得できるよ。" userName="orangecolajuice" createdAt="2025-03-15T03:40:51" color="#45d325">}}

{{<matomeQuote body="今こうなってるのは、みんなが満足してるからだよね。映画とか音楽を持たないことにみんな満足してるし、所有したい人は少数派。ストリーミング自体は悪くないけど、少なくとも正当なデジタルコピーを手に入れる選択肢は提供すべきだよ。無DRMのファイルが欲しいし、それに対して払う気もある。そういうのが無い限り、金は一銭も払わないよ。" userName="liendolucas" createdAt="2025-03-10T22:31:15" color="#ff33a1">}}

{{<matomeQuote body="1時間のストリーミングで0.5gのカーボンが出るって計算したら、1日6時間で365日だと1人あたり1095gになるじゃん。全世界で20億人がストリーミングしたら、2190万トンの余計なCO2が出るってことになる。海賊行為は一回きり、海賊行為はエコだし、地球を救おう。" userName="InDubioProRubio" createdAt="2025-03-11T11:48:36" color="">}}

{{<matomeQuote body="＞”6時間で365日”<br>その主張には信頼できる根拠が必要だね。その数字はどう考えても非現実的だと思う。" userName="Eikon" createdAt="2025-03-11T13:37:53" color="">}}

{{<matomeQuote body="その通りだよ。<br>https://www.finder.com/uk/stats-facts/tv-statistics<br>イギリスは平均4.25時間で、高齢者の多い国（ドイツや日本）ではさらに上がるだろうね。" userName="InDubioProRubio" createdAt="2025-03-11T15:47:44" color="">}}

{{<matomeQuote body="YouTubeアプリの時間を大幅に減らしたよ。スクリプト使ってyt-dlpでサブスクリプションダウンロードして、mp3に変換して地元ネットワークでポッドキャストホストしてる。これが壊れたら外に出ないといけないかな。今はまだ動いてるから、春までは続くといいな。" userName="jareds" createdAt="2025-03-10T19:39:49" color="#45d325">}}

{{<matomeQuote body="yt-dlpを使って自分のサブスクリプションをダウンロードして、mp3に変換して、ローカルネットワーク内でポッドキャストフィードをホストしてるんだ。お互いにやってみようって考えてたけど、他にどんなツール使ってるの？もしRSSフィードを生成してるなら、それについても教えてほしいな。" userName="SlackingOff123" createdAt="2025-03-10T20:42:48" color="#ff5733">}}

{{<matomeQuote body="MeTubeってツールがいいかもしれないよ。スケジュール機能はないけど、ヘッドレスBeelinkコンピュータで動かしてる。必要なときにブラウザ開いてサーバーに行けば、好きな動画やチャンネルを取得できる。ダウンロード先はNASに設定してるから、どのデバイスでもメディアを見られる。yt-dlpのオプションも使えるし、SponsorBlockのような機能もあるよ。すごく便利だよ！" userName="Minor49er" createdAt="2025-03-10T21:57:39" color="#38d3d3">}}

{{<matomeQuote body="そのメTubeのフォーク版で、タスクスケジューリングやプリセット、通知機能がもっとあって便利だよ。YouTube関連の全タスクをドライブするのに使ってる。" userName="wowkise" createdAt="2025-03-11T03:23:40" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="新しい機能が追加されたのがいいね。試してみるよ。シェアしてくれてありがとう！" userName="SlackingOff123" createdAt="2025-03-11T07:43:06" color="">}}

{{<matomeQuote body="素晴らしいね！シェアしてくれてありがとう！" userName="Minor49er" createdAt="2025-03-12T20:32:02" color="">}}

{{<matomeQuote body="RSSフィードを作るのにgenRSSを使ってるんだ。それをDockerコンテナでホストして、NASのメディアと生成したXMLファイルを提供してるよ。" userName="jareds" createdAt="2025-03-10T21:17:37" color="#45d325">}}

{{<matomeQuote body="それはまさに探してたものだ！ありがとう！" userName="SlackingOff123" createdAt="2025-03-11T07:41:54" color="">}}

{{<matomeQuote body="そうだよ、-xフラグを使うとそれができるよ。ただ、音声はmp3じゃなくてopus形式で保存されるから、GPがそれを言ってたのかもね。" userName="alpaca128" createdAt="2025-03-11T13:19:50" color="">}}

{{<matomeQuote body="ダウンロード時にフォーマットはそのままで、異なるコンテナに保存されることもあるよ。直接ダウンロードしたい形式に変えることもできるよ。" userName="account42" createdAt="2025-03-12T12:05:38" color="">}}

{{<matomeQuote body="数年YTアプリ使ってないけど、uBlock origin、Newpipe、yt-dlpのおかげだわ。" userName="buyucu" createdAt="2025-03-11T11:31:11" color="">}}

{{<matomeQuote body="ほんと最悪なニュースだね。これがGoogleの高レベルな戦略の一部なのは明らかだし、数年前からずっと両面で投資してきたってことだわ。特にAIが関係してるなら、データ収集者がYoutube動画にアクセスできないようにしないといけないってことかも。でもDRMなしのYoutubeなんて今じゃ考えられないよね。" userName="freedomben" createdAt="2025-03-10T19:14:32" color="#38d3d3">}}

{{<matomeQuote body="このプラットフォームの権力集約にはもっと反対されるべきだよね。DRM導入はユーザーの利益に反してるし、FirefoxがEME拡張に乗っかってきた時点で終わりの始まりって思ったよ。DRMが普通になったら、それを受け入れることになっちゃう。" userName="unqueued" createdAt="2025-03-10T21:38:34" color="#38d3d3">}}

{{<matomeQuote body="FirefoxがEMEを採用した時、終わりの始まりだと思った。そうしないとNetflixがFirefoxで動かないって不満出るし、Chromeに乗り換えられる。" userName="gruez" createdAt="2025-03-11T00:55:03" color="">}}

{{<matomeQuote body="ユーザーが不満を持ってもどうするの？GoogleがやってるからFirefoxが悪いことをする必要はないじゃん。Firefoxは他と違う選択肢を提供するべきだから、EMEに反対すべきだった。" userName="unqueued" createdAt="2025-03-11T14:36:52" color="">}}

{{<matomeQuote body="その考えは多分正しいけど信じてない。Firefoxのシェアはひどいし、今はスマホやTVアプリでNetflix見る人が多いからブラウザがどうこうってあんまり問題じゃないんじゃない？" userName="Y_Y" createdAt="2025-03-11T08:52:04" color="">}}

{{<matomeQuote body="AIが executives が理解する脅威なんだろうね。GrayJayみたいな良いサードパーティYTクライアントもあるし、Googleのロックインを防ぐためにはいいんじゃない？" userName="RachelF" createdAt="2025-03-10T21:07:32" color="">}}

{{<matomeQuote body="以前はitag18や22のMP4動画があったけど、最近は分割された動画と音声形式に移行したみたい。それによりffmpegで音声と動画を結合する必要が出てきたんだ。" userName="1vuio0pswjnm7" createdAt="2025-03-11T00:00:08" color="">}}

{{<matomeQuote body="yt-dlpは複数のitagを取ってダウンロードプロセスでマージできるよ。例: `yt-dlp -f 137+140 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'`" userName="Aaron2222" createdAt="2025-03-11T05:29:06" color="#ff5733">}}

{{<matomeQuote body="動画ファイルと音声ファイルの二つが必要になるから、マージ後は余分なファイルが消える。itag18なら一つのファイルだけで済むから、ffmpeg使う必要もないよ。" userName="1vuio0pswjnm7" createdAt="2025-03-13T02:59:53" color="">}}

{{<matomeQuote body="yt-dlpはffmpegなしではできないよ。" userName="1vuio0pswjnm7" createdAt="2025-03-11T16:50:43" color="">}}

{{<matomeQuote body="はい、FFmpegが必要だけど、それは別の手順じゃないよ。" userName="Aaron2222" createdAt="2025-03-12T03:58:20" color="">}}

{{<matomeQuote body="例えば、yt-dlpはffmpegを使ってるんだ。" userName="1vuio0pswjnm7" createdAt="2025-03-11T16:06:46" color="">}}

{{<matomeQuote body="Youtube、動画ダウンロードに対抗してる気がする。Tor使ってると毎日“サインインしてロボットじゃないことを証明して”って表示されるし、普通のYoutubeは見れない。広告やキャプチャは別にいいけど、Youtubeの方法は最悪だね。" userName="codedokode" createdAt="2025-03-11T00:37:26" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="最近、Amazon FireCubeのYoutubeアプリが開くたびにログインを求めてくる。認証は必要ないけど、プロフィールを選ばないといけない。ここ数カ月で始まったことだけど、これが新しいDRMの前触れかも。Youtubeはますます避けたくなるね。" userName="Corrado" createdAt="2025-03-11T13:28:03" color="">}}

{{<matomeQuote body="ちなみに、こっちもYoutubeから“サインインしてロボットじゃないことを確認して”って表示されたよ。“コミュニティを守るためにこれをやってる”ってさ。アカウントを持たない私たちは間接的にアクセス方法を見つけないと。" userName="mdp2021" createdAt="2025-03-10T22:06:29" color="#ff5733">}}

{{<matomeQuote body="lofiやsynthwaveの曲を発見するためのYoutubeの代替は誰かおすすめある？" userName="blueflow" createdAt="2025-03-10T18:28:34" color="">}}

{{<matomeQuote body="Bandcampがおすすめ。アルバムを買うとDRMフリーでダウンロードできるよ。" userName="galleywest200" createdAt="2025-03-10T20:03:19" color="#ff5733">}}

{{<matomeQuote body="新しい音楽を発見するのはやっぱり最高だよね。" userName="throwawayq3423" createdAt="2025-03-10T23:05:16" color="#ff5c5c">}}

{{<matomeQuote body="Firefoxユーザーはどうなるの？FFのDRMは簡単に破られるから、YouTubeがFFのサポートをやめる可能性はあるの？" userName="Seattle3503" createdAt="2025-03-10T19:55:53" color="">}}

{{<matomeQuote body="これは今のところ特定のTVクライアントAPIにのみ関係があるみたいだけど、全ての動画にはまだ見られてないはず。でも、”メンバーシップ限定”の動画でも見られたことがあるから、全体には広がってないかも。<br>それにDRMがソフトウェアかハードウェアで違うという話もあって、FirefoxはハードウェアDRMの利用に取り組んでるっていうし、解像度に制限がかかるかもしれない。YouTubeがここまでやるかは分からないけど、少なくとも一時的にツールを使えなくするための DRMを導入すれば、ユーザーがまたプラットフォームに戻ることを促せるかも。" userName="OscarDC" createdAt="2025-03-10T20:40:26" color="#ff33a1">}}

{{<matomeQuote body="＞YouTubeがここまでやるかは分からないけど、NetflixやAmazonは権利者との契約があるから、その保護が必要なんだ。でもYouTubeは”Youtubers”との関係が違うから、そこまで厳しくはならないと思う。音楽レーベルとは関係があるから、ダウンローダーに対して訴訟を起こしたりしてるけど、その結果YouTubeが所有するDRMを導入する口実にもなるかも。" userName="Mindwipe" createdAt="2025-03-10T23:20:26" color="">}}

{{<matomeQuote body="DRMの主な目的は法律的にDMCAの適用を受けることだから、場合によってはyt-dlpがGithubでホストされなくなるかもしれないね。" userName="lxgr" createdAt="2025-03-10T20:22:37" color="">}}

{{<matomeQuote body="それが起きる可能性は低いと思うけど、他のストリーミングサービスではDRMに対応してないクライアントには低画質しか提供しないケースがある。" userName="Clamchop" createdAt="2025-03-10T20:34:08" color="">}}

{{<matomeQuote body="yt-dlpって広告スキップやオフライン視聴のために使うの？YouTube Premiumでもオフライン視聴できるし、広告をスキップできるんだから、それが無料でできるのはグーグルにとっては驚きじゃないの？ただ、YouTube Premiumは高く感じるし、無料で利用できるのは持続可能じゃないと思う。" userName="fancyfredbot" createdAt="2025-03-10T19:26:52" color="">}}

{{<matomeQuote body="＞なんでyt-dlp使うの？<br>いろんな理由があるよ。例えば、消えちゃうことがあるクリエイターのアーカイブや、サンプリング、リミックス用に動画をダウンロードしたり、面白いビデオを作るためにちょっと編集したり。オフラインでも使いたいし、旅行中にTwitchやYouTubeのVODをダウンロードして聴いたり。昔のコンピュータで使えるように転換したりするのも楽しいし、友達が古いパソコンを使ってるから、そういうのを助けるのも良いよ。" userName="officeplant" createdAt="2025-03-10T19:46:48" color="#ff5c5c">}}

{{<matomeQuote body="最近、YouTubeの“お気に入り”プレイリストを見てたんだけど、2年前に作ったアカウントからの動画が結構見れなくなってて驚いた。これって別に問題がある動画じゃなくて、著作権の関係で消えちゃったり、アップロードした人が削除したり、チャンネルのオーナーが変わったせいで消えたりとか。だから価値のある動画を残すためには必要だね。" userName="dcchambers" createdAt="2025-03-10T20:15:57" color="#ff5733">}}

{{<matomeQuote body="もし危ない動画があったら、ArchiveTeamに教えてあげてね。https://wiki.archiveteam.org/index.php/YouTube" userName="pabs3" createdAt="2025-03-12T05:52:35" color="">}}

{{<matomeQuote body="明日その動画が見れるかどうか分からないから、Youtubeが突然気に入らなくなって消しちゃったりアカウントが自動でブロックされたりしないようにしたいからね。" userName="m4rtink" createdAt="2025-03-10T19:35:22" color="">}}

{{<matomeQuote body="YouTubeが古い動画をただ存在させるだけでちゃんと再生できなくなることも稀だけどあるみたいなんだ。" userName="i80and" createdAt="2025-03-10T19:39:37" color="">}}

{{<matomeQuote body="YouTubeでのビットロットは実際に起こってて、何年も経つうちに再エンコードを繰り返して、古いコンテンツがすごく劣化して見えるようになったんだ。高解像度の選択肢も減ってるし、オリジナルのソースファイルすら保存しないみたい。昔の動画を見ると、昔の動画は綺麗じゃなかったって思いがちだけど、実際はYouTubeが圧縮を重ねたせいなんだよね。" userName="Chaosvex" createdAt="2025-03-10T20:30:40" color="#45d325">}}

{{<matomeQuote body="RedLetterMediaの動画がいくつか、監督に著作権で消されちゃって見れなくなったのを見たことがあるよ。" userName="angry_moose" createdAt="2025-03-10T19:41:15" color="">}}

{{<matomeQuote body="昔、yt-dlpを使って保存したい動画をアーカイブしてたけど、ある日突然ハードドライブが壊れて全部失っちゃったんだ。今はもうアーカイブしないけど、時々見たかったものを思い出すことはあるね。でもまあ、思い出を大切にして記憶だけで生きてるよ。" userName="mikedelfino" createdAt="2025-03-10T21:51:37" color="">}}

{{<matomeQuote body="いろいろなくなるのを見てきたから、5年後に見たいと思うものは今のうちに保存するようにしてる。チャンネル全部を保存することもあるよ。" userName="alabastervlog" createdAt="2025-03-10T19:43:29" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="自分はyt-dlpを使ってmpvで動画を見てる。Googleのアドブロック対策でブラウザでは全く見れなくなっちゃったからね。Youtube Premiumを匿名で払う方法もないし、アメリカの会社のGoogleに自分の情報をさらに渡すのは絶対に嫌だ。" userName="64805968473" createdAt="2025-03-10T19:48:03" color="#38d3d3">}}

{{<matomeQuote body="右クリック＋保存がYoutubeじゃできないんだよね。プレミアムだけどMP4ファイルのダウンロードができないから、yt-dlp使ってる。youtube-dlも使えるけど、他のSNSのミーム動画をダウンロードして友達とシェアする時にも使ってる。そうすれば、みんながアカウント作らなくても20秒のクリップが見れるからね。" userName="jeroenhd" createdAt="2025-03-10T21:22:33" color="#45d325">}}

{{<matomeQuote body="授業で使う動画をダウンロードしてるんだ。将来のクラスでもYoutubeから消えたとしても生徒に動画を提供できるし、時々そういうことがあるから。" userName="yig" createdAt="2025-03-10T21:55:41" color="">}}

{{<matomeQuote body="速度やデータ制限のある限られたインターネット接続の問題があるよね。Hughesnetみたいな衛星ISPだと、ピーク時にYoutubeは240p以上はストリーミングできないし、データ制限でダウンロードは深夜2時から6時までの間に強いられることもある。" userName="aqrit" createdAt="2025-03-10T20:16:12" color="">}}

{{<matomeQuote body="Tube Archivistを使って、検索の精度が格段に上がってる。技術系の映像を大体ミラーリングして、動画説明、音声トランスクリプト、コメントの細かいテキスト検索ができる。これはリアルタイムでミリ秒単位で行われ、Googleの検索よりずっと速いし便利。個人的に大事な動画のアーカイブにも使ってるし、資源に制約のあるパソコンで使う時も便利なんだ。" userName="gia_ferrari" createdAt="2025-03-10T22:32:48" color="#ff5c5c">}}

{{<matomeQuote body="短いクリップやミーム動画をダウンロードして、埋め込みができない友達に送ることが多い。頻繁に使うから、`vine`って名前のFish関数まで作っちゃったよ。" userName="nozzlegear" createdAt="2025-03-10T19:54:45" color="">}}

{{<matomeQuote body="オフラインで動画を見れるコピーがあれば、飛行機とかインターネットがない環境でも視聴できる。これを「タイムシフティング」って呼んでるんだ。" userName="ThinkingGuy" createdAt="2025-03-10T21:38:43" color="">}}

{{<matomeQuote body="Googleが気にしてるのは、間違いなくLLM企業がYouTubeをスクレイピングしてモデルの訓練することだろう。このクライアントは帯域幅を大量に使うし、広告収入を生み出さないから、Googleはその資産から得る利益がないんだ。" userName="mike_hearn" createdAt="2025-03-10T19:54:12" color="#ff33a1">}}

{{<matomeQuote body="それが優先事項にあるとは思えないな。> そのクライアントは帯域幅を大量に使う。実際、AI企業はどれくらいあるんだろう？現実には、せいぜい一動画あたりの追加ダウンロードが数回かもしれないし。> 広告収入を生み出さないこと。YouTubeは人間に広告を売るビジネスだから、両方をバイパスさせるものとは相反するだろう。それにLLMのインプレッションは広告主にはまだ役に立たないし。" userName="lxgr" createdAt="2025-03-10T20:27:08" color="">}}

{{<matomeQuote body="YouTubeには見られない動画がたくさんあって、スクレイパーは高速度で動ける。かつてSEO目的でウェブ検索をスクレイピングする企業がデータセンターの容量を消費したことがあって、スクレイピングはかなり深刻なビジネスなんだ。YouTubeを徐々にロックダウンするのに使っている技術は新しくなくて、何が変わったのか？明らかな答えはAIだと思う。" userName="mike_hearn" createdAt="2025-03-10T21:11:07" color="">}}

{{<matomeQuote body="確かに良い指摘だね。見られたことのない動画の長いテールを考慮していなかった。もし中央値の視聴数が非常に低いなら、それは問題になるかも。> Youtubeを徐々にロックダウンするために使われている技術は新しくないが、何が変わった？時間が経ってDRMがウェブ全体でより普及したし、YouTubeの広告増加に伴って広告ブロッカーを使う人も増えていると思う。AIの影響もあると思うけど、それが主な動機とは思わない。" userName="lxgr" createdAt="2025-03-10T21:29:28" color="">}}

{{<matomeQuote body="YouTubeではキャッシュミスがキャッシュヒットよりずっとコストかかるからね。それでコアデータセンターに戻っちゃうし。スクリaperは要するにキャッシュミスだよ。" userName="mike_hearn" createdAt="2025-03-11T09:48:37" color="#ff33a1">}}

{{<matomeQuote body="消えそうな動画をアーカイブするのに使ってるよ。主にニュース系の映像とかね。" userName="anigbrowl" createdAt="2025-03-10T19:36:55" color="#45d325">}}

{{<matomeQuote body="JavaScriptが無効なブラウザで動画を見るために使ってるよ。mpvみたいな動画プレイヤーでね。" userName="pabs3" createdAt="2025-03-12T05:51:38" color="">}}

{{<matomeQuote body="VRChatがyt-dlpをバックエンドに使って、VR環境で動画再生できるようにしてる。" userName="unsignedint" createdAt="2025-03-10T19:43:36" color="">}}

{{<matomeQuote body="ディスクに保存するためだね。ネット接続が無くても色んなデバイスで好きな時に見るために。" userName="nyarlathotep_" createdAt="2025-03-11T00:51:58" color="#45d325">}}

{{<matomeQuote body="クソみたいなブラウザプレイヤーを使わなくていいから、好みの動画プレイヤーが使えるのがいい。一般の人がそんなプレイヤーを受け入れてるのは驚きだよ。" userName="account42" createdAt="2025-03-12T12:26:15" color="">}}

{{<matomeQuote body="自分の国ではYouTube Premiumや他のGoogleサービスの支払い手段が無いんだ。選択肢があれば喜んで払うのに。" userName="yngvarr" createdAt="2025-03-12T22:19:32" color="">}}

{{<matomeQuote body="自分にとっては、動画をローカルの.mp4に広告を入れることはないし、アーカイブや飛行機で見るためにyt-dlpを使う人は多いと思う。YouTube Premiumは翌月に動画がある保証じゃないからね。" userName="mdaniel" createdAt="2025-03-10T19:33:51" color="#45d325">}}

{{<matomeQuote body="長距離フライトで見るために動画をダウンロードしておくのが、yt-dlpの主な使い方の一つだね。お金持ちの企業の意向に沿った考え方をする人には、利用料の申し出はありがたいけど、”それまで言ってるならさ、黙っててくれ”とだけ言いたい。" userName="nyx" createdAt="2025-03-10T19:49:00" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
