+++
date = '2025-11-12T00:00:00'
months = '2025/11'
draft = false
title = 'yt-dlp、YouTube対応で大変革！外部JSランタイムが必須に、その影響は？'
tags = ["yt-dlp", "YouTube", "JavaScript", "プログラミング", "ソフトウェア"]
featureimage = 'thumbnails/orange1.jpg'
+++

> yt-dlp、YouTube対応で大変革！外部JSランタイムが必須に、その影響は？

引用元：[https://news.ycombinator.com/item?id=45898407](https://news.ycombinator.com/item?id=45898407)




{{<matomeQuote body="Arch Linuxのリポジトリにyt-dlpが既に入ってて、新しいフラグ`--remote-components ejs:github`で動くみたいだよ。実行時にソルバーをダウンロードするけど、半秒くらいで終わるし、ダウンロードも以前より速くなった気がする。ログには「［youtube］ ［jsc:deno］ Solving JS challenges using deno」や「［youtube］ ［jsc:deno］ Downloading challenge solver lib script from https://github.com/yt-dlp/ejs/releases/download/0.3.1/yt.solver.lib.min.js」と表示されてた。<br>制限された環境で使うから、ソルバーを事前に手動でダウンロードできると便利なんだけどな。まあ、ダウンロード開始が速くなったのは全体的に嬉しいよ。" userName="embedding-shape" createdAt="2025/11/12 14:06:18" color="#ff5733">}}




{{<matomeQuote body="速くなったって聞いてよかった！YouTubeは最近、フルブラウザだとまともに動かないから、Pythonスクリプトでアクセスできるようにしてるチームには拍手だよ！" userName="WD-42" createdAt="2025/11/12 14:59:27" color="">}}




{{<matomeQuote body="おそらく君はChromeかBlinkエンジンを使ってるブラウザを使ってるんだろうね。投稿者（OP）はFirefoxみたいな非Blinkブラウザを使ってるんだと思う。俺はFirefoxを使ってるけど、ここ数ヶ月YouTubeの使いやすさはギリギリって感じなのは確かだよ。" userName="PuercoPop" createdAt="2025/11/12 18:21:54" color="#ff5733">}}




{{<matomeQuote body="YouTubeにアクセスできてPythonコードは動くけど、JSコードは動かせない環境って何？セキュリティが心配なら、Denoを使ってればJSはサンドボックス化されるようにチームは頑張ったみたいだよ。DenoやNodeがサポートしないOSやアーキテクチャなら、純粋なCで書かれたQuickJSも検討できるかも。遅いけどね。サンドボックスは失うけど、YouTubeの公式ドメインからGoogleが配信するコードなら安全だと思うよ。" userName="Wowfunhappy" createdAt="2025/11/12 15:21:09" color="#ff5c5c">}}




{{<matomeQuote body="YouTubeはかなり使い物にならないよ。動画はスロットリングされるし、リンクが機能しないこともある。ここ数年で一気にひどくなったね。" userName="phplovesong" createdAt="2025/11/12 15:46:51" color="">}}




{{<matomeQuote body="YouTubeは全然問題ないな。たぶんPremiumを払ってるからかも（主にYouTube Musicのためだけど）。それでも、Googleのサービスが時間とともに悪くなるのは傾向じゃなくて法則になってきてるね。" userName="ConceptJunkie" createdAt="2025/11/12 15:52:39" color="">}}




{{<matomeQuote body="VPNへの攻撃も激しくなってる。YouTubeで「ロボットじゃないことを確認するためにサインインして」と言われなくなるまで、Private Internet Access、Mulvad、AirVPNで5〜15個のサーバーを切り替える必要があるんだ。DiscordもVPNに異常に厳しく、ログイン中にメッセージが読み込めないことも。数年後、インターネットはマルウェアだらけの「自由な」ものと、政府ID必須でVPN禁止のWeChatみたいな「企業向け」に二分される気がするよ。" userName="jorvi" createdAt="2025/11/12 20:29:33" color="#45d325">}}




{{<matomeQuote body="俺はFirefoxとuBlockを使ってるけど、数回動画の開始が数秒遅れた以外は、前と変わらず動いてるよ。" userName="MrNeon" createdAt="2025/11/12 18:27:36" color="">}}




{{<matomeQuote body="＞JSコードが動かせない環境って？<br>YouTubeにアクセスできてPythonもJSも動く環境だよ。ログを見ればわかるように、ちゃんと動いてるしね。制限されたVMで最小権限のルールで運用してるだけさ。JSスクリプトはGitHubのyt-dlp組織（https://github.com/yt-dlp/ejs/releases/download/0.3.1/yt.sol…）からダウンロードされるもので、Googleとかのサイトからじゃないよ。" userName="embedding-shape" createdAt="2025/11/12 16:35:28" color="#ff5c5c">}}




{{<matomeQuote body="俺はYouTube Musicの価値が分かんないね。YouTubeで全部できるし、プレイリストも作れる。yt Vancedなら画面オフ再生もできたのに、有料になってから価値なし。それだけのために金払うなんてありえないよ。" userName="cons0le" createdAt="2025/11/12 16:32:47" color="">}}




{{<matomeQuote body="君もLinux版Firefoxを使ってる？俺の場合、4K動画がしょっちゅうフリーズするから、オンラインでは見ずにいつもyt-dlpでダウンロードしてるんだ。Chromeを試すほど気にはしてないけど、もしかしたら違いが出るかもね。" userName="tux1968" createdAt="2025/11/12 16:22:19" color="">}}




{{<matomeQuote body="彼らは「JSコードが動かせない」とは言ってないよ。その場所からsolverがダウンロードできなかったって言っただけ。IPv6オンリーの環境か（YouTubeはIPv6対応だけどGitHubは違う気がする）、あるいは外部サイトがホワイトリスト制で、GitHubが許可されてない可能性もあるね。" userName="dspillett" createdAt="2025/11/12 16:23:02" color="">}}




{{<matomeQuote body="＞どれくらい遅くなるか不明<br>V8 (Node/Deno) より30～50倍は遅いよ。最近いろいろなエンジンでベンチマークしたんだ。URLはこれ: https://ivankra.github.io/javascript-zoo/" userName="ivankra" createdAt="2025/11/12 16:53:31" color="#ff33a1">}}




{{<matomeQuote body="＞JSスクリプトはyt-dlpのGitHub組織から<br>俺が言いたかったのは、そもそもJavaScriptが必要になる原因の「チャレンジ」の方が、公式YouTubeドメインから提供されるコードを信頼すべきかって話だよ。yt-dlpのコードを信頼しないと使えないのは当然だよね。" userName="Wowfunhappy" createdAt="2025/11/12 18:43:06" color="">}}




{{<matomeQuote body="自分のFiatで問題ないからって、他も問題ないとは限らない。Googleと競合するブラウザエンジンを使ってる人は問題に直面してるかもよ？「誇張だ！」って決めつけるのは、それ自体が誇張だよ。俺のLinux環境だとChromiumは問題ないけど、Firefoxは調子悪い。FirefoxでユーザーエージェントをChromiumに変えるとバッファリングが速くなるんだ。" userName="embedding-shape" createdAt="2025/11/12 16:42:56" color="#45d325">}}




{{<matomeQuote body="ここ2日間、FirefoxでYouTube動画を見るにはuBlockを無効にしなきゃならなかったんだ。" userName="tedivm" createdAt="2025/11/12 21:10:15" color="">}}




{{<matomeQuote body="俺のDebianのFirefoxだとYouTubeは完璧に動くよ。何の問題があるの？" userName="jcalvinowens" createdAt="2025/11/12 21:39:39" color="">}}




{{<matomeQuote body="V8より30-50倍遅いって言うけどさ、1msの代わりに50msで動くソルバーなんて、ほとんどのユーザーには気づかれないでしょ。その数字でどんな時間枠を測ってるのか教えてよ。" userName="ranger_danger" createdAt="2025/11/12 17:04:20" color="#ff33a1">}}




{{<matomeQuote body="確実にそうなるよ。Web CredentialsやDigital ID、年齢認証はSecure Attestationで裏付けされる。Cloudflareが「年齢確認を必須にする」ってチェックボックスを用意すれば、サイトは子供から”安全”になる。でも言論の自由と匿名性は死ぬけど、政府が嫌がるようなこと言いたくないでしょ？" userName="mikestorrent" createdAt="2025/11/13 00:30:43" color="#ff5733">}}




{{<matomeQuote body="「自分のFiatが問題ないからって、他の車も問題ないとは言えない」って例えは違うよ。ウェブサイト開発者なら、たとえ複雑でも様々なブラウザで自動的にテストできるんだから。" userName="darkwater" createdAt="2025/11/12 18:05:22" color="">}}




{{<matomeQuote body="私は毎日ほとんどBraveブラウザでYouTubeを使ってるけど、すごくうまくいくよ。" userName="ElijahLynn" createdAt="2025/11/12 15:56:47" color="">}}




{{<matomeQuote body="今広告をブロックしてるなら、動画はかなり遅れて再生が始まるはずだよ。まるでサーバーが広告時間を待ってからストリーミングしてるみたいにね。" userName="therein" createdAt="2025/11/12 21:47:58" color="#ff5c5c">}}




{{<matomeQuote body="記事の「YouTubeドメイン上のGoogleコードは信頼できる」って意見は、ソルバースクリプトがYouTubeじゃなくgithub.comから来るって誤解だよ。俺はそれを訂正しただけ。「yt-dlpコードを信頼する」のは当然だけど、yt-dlpがgithub.com/*にアクセスすべきじゃないのが問題だ。でも大したことないし回避策も多いよ。" userName="embedding-shape" createdAt="2025/11/12 19:42:03" color="#38d3d3">}}




{{<matomeQuote body="言論の自由は死なないよ。自分でサイトをホストすればいいんだから。" userName="hhh" createdAt="2025/11/13 06:55:02" color="">}}




{{<matomeQuote body="SafariでYouTubeを毎日見てるんだけど、動画が読み込みで数十秒固まったり、映像なしで音だけ出たり、操作ボタンが見えなくなったりすることが頻繁にあるんだ。<br>Adblockerとか`yt-dlp`を同じIPで使いまくってるから、ブラックリストに載ってるのかもね。" userName="zimpenfish" createdAt="2025/11/12 16:15:04" color="#ff5c5c">}}




{{<matomeQuote body="Google Chromeブラウザを使ってる場合だけだよ。Firefoxみたいな他のブラウザは問題があるんだってさ。<br>[1]: https://news.ycombinator.com/item?id=41379517" userName="tuhgdetzhh" createdAt="2025/11/12 19:39:29" color="">}}




{{<matomeQuote body="ちょっと話がそれるけど、YouTubeのWeb版は先月から、埋め込み動画で“referrer header”を厳しく要求するようになったんだ。ごまかしてもダメな時があるし、“youtube.com/embed/＜videoid＞”に直接行ってもGoogleに直接情報を提供しないと見れない。<br>公開エラーコードって嘘ばっかりだよね？<br>“Error 15、何か問題があったみたいだね、てへっ。”<br>“Error 153、もう一度試してね、（ひっかかったな、お前ら！）”<br>しばらくそうやってたけど、ついにFAQを更新して意図的なものだって言ってるよ。<br>[1] https://support.google.com/youtube/answer/171780?hl=en#zippy...<br>“動画再生にはHTTP Refererヘッダーを提供してください。利用規約では埋め込み元にHTTP Refererの提供を義務付けています。情報が不足している場合、埋め込みYouTube動画を視聴しようとする視聴者は再生がブロックされ、エラー画面（“error 153”）に遭遇します。視聴者は“Watch on YouTube”をクリックしてYouTubeで動画を視聴することは可能です。囲んでいるWebページやコンテキストなしで埋め込みプレーヤーに直接アクセスする場合（Webブラウザのアドレスバーからアクセスするなど）は、通常HTTP Refererがないため、ユーザーはエラー画面に遭遇します。埋め込みプレーヤーは埋め込みコンテキスト内でのみ使用することを意図しています。”" userName="nofunsir" createdAt="2025/11/12 22:38:54" color="#ff33a1">}}




{{<matomeQuote body="ほとんどの埋め込みが、ここ数年でこうなってきたよね。Discordの埋め込みも忘れちゃいけない。彼らはトラッキングがしたいんだよ。たまに“botじゃないことを知るために”ログインさせられることすらあるし。" userName="Neywiny" createdAt="2025/11/12 23:07:21" color="#ff5c5c">}}




{{<matomeQuote body="Refererを“http://127.0.0.1”にしたら動くの？" userName="pwdisswordfishy" createdAt="2025/11/13 07:11:26" color="">}}




{{<matomeQuote body="マジかよ、やばいな。JSのたった一行のリダイレクタで直せないこともないだろ。<br>このクソみたいな実装にかかった費用：おそらく数万〜数十万ドル<br>バイパスにかかる費用：文字通りゼロ<br>結局彼らは“俺たちは好きなだけお前らをいじれるけど、お前らに何ができる？他にいくとこあるのか？”って言いたいだけなんだよ。" userName="hollow-moe" createdAt="2025/11/12 23:10:02" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ケーブル会社を潰したYouTubeが、自分自身がケーブル会社になっちゃったね。" userName="xeonmc" createdAt="2025/11/12 23:21:52" color="#785bff">}}




{{<matomeQuote body="ケーブル会社がそれまでのものを潰したのと同じだよね。どの企業も常に収益を最大化しようと行動するもんだよ。" userName="immibis" createdAt="2025/11/13 13:56:19" color="">}}




{{<matomeQuote body="俺は`yt-dlp`（昔は`youtube-dl`）で、いつもお気に入りの動画をアーカイブしてるんだ。2010年頃から始めて、今じゃ何万本も保存してる。ストレージは安いし、そのうちかなりの割合はもうサイトでは見られないんだよ。例えばNHK大相撲のハイライトみたいに、1ヶ月くらいで削除されちゃう期間限定の動画も保存してるよ。" userName="bdz" createdAt="2025/11/12 13:17:44" color="#ff5c5c">}}




{{<matomeQuote body="お前はデジタルコレクターだな。俺も写真をたくさん撮ったけど、見返すことなんてめったにないし。でもGoogle memoriesは本当にいい機能で、思い出を蘇らせてくれるよね。お前も、好きな動画の記憶をリフレッシュするようなサービスをやるべきだよ。" userName="cantor_S_drug" createdAt="2025/11/12 14:00:58" color="">}}




{{<matomeQuote body="cron job使ってる？みたいな。多分どうでもいいことなんだけどさ。" userName="nicman23" createdAt="2025/11/12 13:49:39" color="">}}




{{<matomeQuote body="人気のセルフホストソリューションはこれだよ：https://github.com/tubearchivist/tubearchivist" userName="ivanjermakov" createdAt="2025/11/12 13:57:38" color="#38d3d3">}}




{{<matomeQuote body="ほんとに動画見返すの？記録ってさ、書き終わった瞬間にほとんどの価値が生まれてる気がするんだよね。医療記録とかでもそう。人間関係の思い出の記録は例外かもしれないけどね。" userName="trallnag" createdAt="2025/11/12 13:39:13" color="">}}




{{<matomeQuote body="俺も同じだよ。好きな動画がランダムに削除されるのが嫌で保存始めたんだ。サムネイルをアルバムアートにしてID3タグを付けたり、スマホに同期するスクリプトとか作ったんだよね。これで「いいね」押すだけで無限に音楽がスマホに。Googleの天才エンジニアたちはなんでこれを機能にしないんだろ？" userName="moralestapia" createdAt="2025/11/12 13:28:40" color="#785bff">}}




{{<matomeQuote body="君たちっていつも物事を複雑にしすぎだよ。<br>yt-dlp -o ’%(uploader)s/%(upload_date)s - %(title)s [%(id)s].%(ext)s’ --cookies-from-browser chrome https://www.youtube.com/playlist?list=LL" userName="trvz" createdAt="2025/11/12 14:07:20" color="#45d325">}}




{{<matomeQuote body="チャンネル運営者が自分で動画を削除し始めたのがきっかけで俺も始めたよ。動画が良くないと思ったり、メンタルやられてチャンネルごと消したりするんだよね。良いコンテンツが消えちゃうのは困る。" userName="blarg1" createdAt="2025/11/12 13:35:15" color="#ff5733">}}




{{<matomeQuote body="俺も空の写真を衝動的に撮るけど、見返すことはないんだよね。同じく。" userName="ge96" createdAt="2025/11/12 14:03:28" color="">}}




{{<matomeQuote body="＞Googleの天才エンジニアたちがこれを機能として考えてないって…<br>それってYouTube Musicアプリのことじゃないの？" userName="anamexis" createdAt="2025/11/12 13:41:51" color="#ff33a1">}}




{{<matomeQuote body="実際に見返すよ！VLCでプレイリスト作って、なんか作業中にランダムに再生させてるんだ。BGM代わりにもなるしね。" userName="bdz" createdAt="2025/11/12 13:54:43" color="#38d3d3">}}




{{<matomeQuote body="昔のYTPsって最高だったのに、今はもう見られないんだよね。たくさんの才能とクリエイティビティが消えちゃって残念。" userName="doublerabbit" createdAt="2025/11/12 14:40:53" color="#ff5c5c">}}




{{<matomeQuote body="Google MemoriesとSnapchat Memoriesって何が違うの？プライバシーが心配だから写真はアップしたくないけど、ローカルで管理できるAIがあれば最高だよね。YouTubeで消えた動画を保存しとけばよかったって後悔してるよ。もしかして俺ってデジタルホーダー？" userName="johnisgood" createdAt="2025/11/12 14:59:02" color="#38d3d3">}}




{{<matomeQuote body="2万本以上も動画を保存してるらしいけど、もしYouTubeから消えても、本当に大事な動画ってどれくらいあるの？" userName="rob" createdAt="2025/11/12 15:04:33" color="">}}




{{<matomeQuote body="写真を撮りまくるのは上達への近道だよ。昔みたいにフィルム代を気にせずバンバン撮れるのは良いことだよね。失敗してもそこから学んで捨てちゃえばいいんだから。" userName="bluGill" createdAt="2025/11/12 14:15:01" color="">}}




{{<matomeQuote body="壁のe-inkフォトフレームが、10年以上前の写真から毎日ランダムで1枚表示してくれるんだ。数万枚ある写真も、一生に一度は日の目を見るチャンスがあるってわけ！" userName="ifdefdebug" createdAt="2025/11/12 16:22:08" color="#ff5733">}}




{{<matomeQuote body="YTPって何のこと？" userName="kragen" createdAt="2025/11/12 16:39:47" color="">}}




{{<matomeQuote body="アップローダーが「音楽」ってラベル付けしてない数億曲とか、スマホの音楽プレイヤーとの連携、YouTubeで気に入った曲が自動でデバイスに保存される機能、YouTubeから消えてもデバイスに残るってのが欲しいんだよね。（前のコメントを読んだ？）" userName="moralestapia" createdAt="2025/11/12 14:58:30" color="#45d325">}}




{{<matomeQuote body="BLSによると、1980年の0.30ドルは今だと1.25ドルらしいよ。当時のフィルムって1ロールで30枚くらい撮れて、30ドルくらいしたのかな？https://data.bls.gov/cgi-bin/cpicalc.pl?cost1=.30&year1=1980..." userName="fragmede" createdAt="2025/11/12 14:40:18" color="#785bff">}}




{{<matomeQuote body="YouTubeが始まった頃から見てるけど、10年後まで保存しときたいって思ったこと、正直一度もないんだよね。1万本以上の動画を保存するのはさすがに多すぎじゃない？" userName="rob" createdAt="2025/11/12 13:45:50" color="">}}




{{<matomeQuote body="昨日の夜、三年前くらいからの照強の幕内での素晴らしい相撲を見れないことを嘆いてたんだ。アーカイブしておけばよかったな。" userName="mynameisash" createdAt="2025/11/12 14:25:11" color="">}}




{{<matomeQuote body="YouTubeの動画はYouTube Musicアプリで全部再生できるし、高評価リストもあるじゃん。君の上のコメントは読んだけどさ。自分でダウンロードしてソリューションを持ちたい気持ちはわかるけど、それはGoogleのエンジニアやPMが機能を考えてないってことじゃないだろ。" userName="anamexis" createdAt="2025/11/12 15:23:06" color="">}}




{{<matomeQuote body="＞これってネガティブな意味？<br>俺にはネガティブには聞こえなかったな。VHSにテレビを録画しまくってた人たちを思い出したよ。彼らのコレクションは今じゃ他のどこにもない歴史的なメディアの宝物だもんね。君は君のやり方でやればいいさ。" userName="scotty79" createdAt="2025/11/12 15:20:22" color="">}}




{{<matomeQuote body="俺は小さいLLMを呼び出すスクリプトを持ってるんだ。「このタイトルに基づいてアーティスト名を返せ」って感じで、改行とかを取り除いてる。<br>うまくいくよ！タイトルになくても、よく正しい答えを推測できるんだ。" userName="FergusArgyll" createdAt="2025/11/12 14:17:39" color="">}}




{{<matomeQuote body="俺もそんなオーバーエンジニアリングされたプログラムは好きじゃないけど、yt-dlp単体だけじゃ完全なワークフローを再現するには足りないんだ。<br>君のコマンドは単一の動画をダウンロードするにはいいけど（俺もxclipでクリップボードからURLを渡してる）、お気に入りのチャンネルから毎日動画をアーカイブするにはもう少しスクリプトが必要だろうね。代わりに使えるような、ミニマルで人気のものは見つけられなかったな。" userName="ivanjermakov" createdAt="2025/11/12 22:46:59" color="#ff5c5c">}}




{{<matomeQuote body="インターネット上のものは何でも一瞬で消えちゃう可能性がある。もし君にとって何か大切なものなら、また見たいって保証するために保存しとくべきだよ。" userName="chrsw" createdAt="2025/11/12 14:28:20" color="#45d325">}}




{{<matomeQuote body="俺もYouTubeから音楽ビデオをたくさん持ってるんだ。<br>その多くはファンメイドで、もう見れないものも多いよ。<br>パーティーを開くときにプロジェクターで再生したりするんだ。" userName="avhception" createdAt="2025/11/12 14:25:32" color="#45d325">}}




{{<matomeQuote body="俺は空の写真を撮るんだけど、すぐにどこかに投稿するためじゃなくて、後で振り返るためのドキュメンタリーみたいな記録としてだよ。" userName="a012" createdAt="2025/11/12 14:48:14" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="https://github.com/yt-dlp/yt-dlp/issues/14404から<br>＞Seleniumやヘッドレスブラウザのソリューションはどうなの？<br>＞yt-dlpのメンテナーは最終手段として以外はこれに興味ないよ。ヘッドレスブラウザのソリューションは敗北の容認だし、このプロジェクトの精神に反するからね。" userName="karel-3d" createdAt="2025/11/12 14:56:03" color="#45d325">}}




{{<matomeQuote body="YouTubeは最近、アドブロックをブロックしたり、クリエイターのコンテンツをAI学習に勝手に使ったり、API関連でもユーザーにどんどん敵対的になってるね。競争相手がいないから、ユーザー体験を犠牲にしてやりたい放題って感じ。大手企業は顧客体験が悪くても困らない時代なのかも。" userName="bilekas" createdAt="2025/11/12 13:08:52" color="#ff5733">}}




{{<matomeQuote body="YouTubeのデータ保存や動画変換、帯域幅のコストは半端ない。HTMLとか画像だけのサイトならアドブロックの影響は小さいかもだけど、YouTubeの運用費を考えると、アドブロックは無理だろって思うね。" userName="Arainach" createdAt="2025/11/12 13:14:04" color="#45d325">}}




{{<matomeQuote body="YouTubeは第3四半期に100億ドルも儲けてるんだぜ。3ヶ月でそんな大金をサーバーやスタッフに使うなんて、俺には考えられないな。" userName="tgv" createdAt="2025/11/12 14:11:58" color="">}}




{{<matomeQuote body="利益があるからって、コストが高いせいでアドブロックが成り立たないってことは否定できないだろ。Walmartも儲かってるけど、万引きはダメなのと同じ。YouTubeでアドブロックを使うのは倫理的にどうなの？" userName="Arainach" createdAt="2025/11/12 14:44:30" color="#ff33a1">}}




{{<matomeQuote body="アドブロックが非倫理的だなんて思わないね。公共の場にある広告を見ないのも非倫理的ってことになるのか？まさか「バス停の派手な広告から目を背けるな」なんて言われるの？それってちょっとディストピアじゃない？" userName="tgv" createdAt="2025/11/12 16:46:23" color="">}}




{{<matomeQuote body="YouTubeには、流してる広告が詐欺じゃないか確認する義務があるはずだ。でも、そこのところが全然できてないだろ。" userName="bitmasher9" createdAt="2025/11/12 13:33:10" color="">}}




{{<matomeQuote body="なんでYouTubeにそんな義務があるの？ユーザーとの契約は「広告主がお金を払って、広告を見せてるよ」ってだけで、「広告の内容を保証する」じゃないんじゃない？広告の審査はもっと頑張ってほしいけど、義務ってわけじゃないと思うんだけどな。" userName="ethmarks" createdAt="2025/11/12 14:22:13" color="">}}




{{<matomeQuote body="アドブロックは、タイムシェアのディナーで耳栓するみたいなもんだ。やってもいいと思うけど、向こうが追い出すのもアリだろ。" userName="sodality2" createdAt="2025/11/12 17:16:23" color="">}}




{{<matomeQuote body="雑誌の広告ページを破り取ってから読むのと似てるよ。「広告ページを破っちゃダメ」って書いてあっても、そんなおかしなルールは無視していいだろ。" userName="engeljohnb" createdAt="2025/11/12 17:47:03" color="">}}




{{<matomeQuote body="正しい例えはこれだろ。新聞社が無料で瞬時に新聞を届けてくれるのに、お前が広告だけ破り取って読むようなもん。新聞社が無料提供するのは広告を見せるって約束があるからで、広告を見ないなら、a)サービスを拒否するか、b)有料の「Newspaper Premium」みたいなのを勧めるしかないだろ。" userName="bitpush" createdAt="2025/11/12 18:08:43" color="#ff5733">}}




{{<matomeQuote body="まず、広告視聴時間は金じゃない。紙（コンテンツ）が手元に来たら、俺は何だってできるし、紙の会社の期待は関係ない。無料で紙を配るのをやめればいいのに、まだそうしてないだろ。広告で一定の収益を上げたいって期待は、消費者に義務を負わせない。もしビジネスモデルが儲からないなら、戦略を変えるのは彼らの責任だ。" userName="engeljohnb" createdAt="2025/11/12 18:12:30" color="#785bff">}}




{{<matomeQuote body="詐欺師から金を受け取り、集めたプロファイルに基づいてカモを送り込むのは詐欺の共犯だよ。企業（特に世界最大の広告会社）は、誰とパートナーを組むか知るべきだ。未審査のパートナーに広告を出すのを許すのは、せいぜい怠慢だね。FBIが詐欺から身を守るためにAdblockを使うよう警告してるのに、誰も何も対策しないのは恥ずかしい。誰かが詐欺を承認したか、未審査のパートナーが活動できるシステムを承認したか、そのどちらかだ。これは刑事捜査されるべきだよ。だって、詐欺広告を報告しても「審査したけどポリシー違反じゃない」って返事が来たって話も聞くし（Facebookとかでも）。この時点で、彼らは詐欺を明確に認識して関与してることになる。そういう広告会社の奴らは刑務所行きになるべきだね。" userName="ndriscoll" createdAt="2025/11/12 15:58:09" color="#ff5c5c">}}




{{<matomeQuote body="YouTubeは2010年頃に黒字になって、それ以来ずっと儲かってるんだ。広告収入は運営コストに十分すぎるほどだったんだよ。ただの成長主義で広告が増えただけ。2010年のYouTube、つまりみんなが好きだったあの頃のプロダクトはもうない。これが「enshittification」だ。俺はAdblockなしじゃYouTubeは使えないと思ってる。Adblockがないデバイスだと、本当にイライラするんだ。" userName="titzer" createdAt="2025/11/12 14:16:28" color="#ff5c5c">}}




{{<matomeQuote body="2010年頃のYouTubeは、YouTube Premiumを払えば体験できるよ。個人的には、これって驚くほど合理的だと思うんだよね。俺が視聴する時間に対して払う金額を考えたら、最高のストリーミングサービスだよ。<br>※注意：俺はAlphabetで働いてるけど、YouTubeじゃないし、従業員割引もなくてYTPは定価で払ってる。" userName="Arainach" createdAt="2025/11/12 14:48:54" color="">}}




{{<matomeQuote body="「一度手元に紙が来たら、俺はそれを使いたいように使えるし、紙の会社の期待は関係ない」<br>全くその通りだね！俺もAdblockを使ってるよ！<br>でも同時に、彼らにもサービス提供を拒否する権利（アクセス拒否）や、ハードルを設ける権利（チャレンジを解かせるとか）があることには同意する？" userName="bitpush" createdAt="2025/11/12 18:21:28" color="#785bff">}}




{{<matomeQuote body="Adblockを使ってるユーザーはYouTubeのユーザーじゃない。広告ブロックがサービスに影響ないってどういうことだよ？「俺はこれを無料で手に入れるべきだ」って言ってるように聞こえるんだけど。" userName="TechSquidTV" createdAt="2025/11/13 03:03:53" color="">}}




{{<matomeQuote body="「ユーザー体験を犠牲にしてでも」って言うけど、最近の大企業はもう悪い顧客体験から影響を受けないんだ、ってのが俺の個人的な意見だね。彼らはまだ顧客満足度とか市場原理に左右されるけど、俺たち（無料ユーザーもPremiumユーザーも、それにコンテンツクリエイターさえも）は彼らの顧客じゃない。Googleは昔から広告サービス会社で、主な顧客は常に大口の広告主だ。そして彼らは広告主の体験を気にする。例えば、各広告のユニークなビューを特定するためにめちゃくちゃ頑張る。<br>一方で俺たち残りの連中—金を払わない奴らも、購読してる奴らも、そしてクリエイターさえも—は、彼らが広告主に売るための「 captive resource」（囚われのリソース）なんだ。彼らは俺たちの創造性と注意を売ってる。だから、彼らは俺たちを家畜みたいに扱い、質の悪いサポートしか提供せず、気にしない。YouTubeからGmail、Workspaceまで、彼らのプロダクトラインナップ全体でこれが顕著だよ。アカウントが間違ってフラグ立てされたり、彼らが気に入らない政治的理由で不当に疑われたりしたら、収益化を剥奪されたり、アカウントをロックされたり、助けもないまま見放される覚悟がいる。最善の場合でも、SNSで騒いで、向こうの誰かの目に留まるのを祈るしかない。<br>彼らの強みは、この虐待にもかかわらず、俺たちの大多数が彼らの奴隷を選ぶことだ。俺たちの働きと注意がなければ、彼らには広告主に提供するものが何もない。公平に言えば、彼らは最初にYouTubeを無料で提供して、競争相手を全て潰すという「bait and switch」戦術を俺たちに使ったんだ。今となっては彼らのホスティングリソースに匹敵するのは本当に難しい。でも、このやり方はもう持続可能じゃない。俺たちは他の解決策が必要だ、ただの不満じゃなくてね。こういう企業の悪だくみをしないなら、有料でも構わないよ。" userName="goku12" createdAt="2025/11/12 13:40:15" color="#ff33a1">}}




{{<matomeQuote body="なるほど、ごもっともだね。詳しい返信ありがとう。俺が気になってるのは、君が言ってる「詐欺広告」が具体的にどんなものかだよ。俺はほとんどAdblockを使ってるし、たまに見る広告はウザいけど、ほとんど無害なやつばかりだ。家具とか保険、チャータースクール、ソーシャルメディアアプリ、しょーもないモバイルゲームとかさ。ちょっと怪しい広告はたくさん見てきたけど、本当に有害だったり、露骨な詐欺広告はあんまり記憶にないんだ。他の人たちはどんなひどい広告を見てるのか、聞いてみたいな。" userName="ethmarks" createdAt="2025/11/12 16:53:05" color="">}}




{{<matomeQuote body="もちろん。YouTubeがいつか全部有料化しても、俺は文句言わないよ。でも、広告をブロックするのが somehow 悪いことだっていう、最近よく聞く考え方には反対だね。" userName="engeljohnb" createdAt="2025/11/12 18:31:06" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
