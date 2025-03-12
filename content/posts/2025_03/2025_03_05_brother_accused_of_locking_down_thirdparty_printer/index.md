+++
date = '2025-03-05T00:00:00'
draft = false
title = 'Brotherがサードパーティーのインクカートリッジをロックする疑惑！消費者に冷たいファームウェアの影響とは'
tags = ["プリンター", "Brother", "インクカートリッジ", "消費者問題", "ファームウェア"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> Brotherがサードパーティーのインクカートリッジをロックする疑惑！消費者に冷たいファームウェアの影響とは

引用元：[https://news.ycombinator.com/item?id=43261933](https://news.ycombinator.com/item?id=43261933)

{{<matomeQuote body="Brotherのファームウェア更新には消費者に厳しい実験があったらしいよ。今はupdate.brother.co.jpのrdnsをブロックしてる。サブネットはこれらの範囲だよ。<br>・3.164.143.0/24<br>・13.249.98.0/24<br>・18.154.219.0/24<br>・18.155.68.0/24<br>・18.160.225.0/24<br>BrotherはCDNサービスにcloudfront使ってるらしいから、地域によってサブネットが違うみたい。" userName="WarOnPrivacy" createdAt="2025-03-05T04:41:27" color="#785bff">}}

{{<matomeQuote body="プリンターは絶対にインターネットに繋げない！ネットに出られないゴミ箱サブネットに入れてる。HPだけど、ファームウェアが取れないことに文句言うから、逆に安心するよ。" userName="ohgr" createdAt="2025-03-05T07:18:00" color="#45d325">}}

{{<matomeQuote body="注意しないとね。ファームウェアの更新が印刷ジョブで送られることがあるから、WindowsやMac、Android、iOS、Chromebookのクライアントがプリンターに全く接触しない方がいいよ。" userName="Brian_K_White" createdAt="2025-03-05T13:11:29" color="">}}

{{<matomeQuote body="それはずるいし悪いことだね。詳しいメカニズムについて教えてほしい。たとえばPDFに埋め込まれたJavaScriptで送られるなら、プロキシを使ってそれを外せるかも。" userName="throw10920" createdAt="2025-03-05T13:23:23" color="">}}

{{<matomeQuote body="特別な同意がなければ、無許可のアクセスや無許可の改変は、少なくとも英国と米国では犯罪として判断されるんじゃない？" userName="pbhjpbhj" createdAt="2025-03-05T13:41:13" color="#ff5c5c">}}

{{<matomeQuote body="AndroidやiOSはプリンタードライバーをサポートしてないから安全じゃない？" userName="account42" createdAt="2025-03-05T13:48:12" color="">}}

{{<matomeQuote body="iOSについては分からないけど、Androidからは印刷できるよ。iOSからは印刷できないなんて信じられないけど、Appleのエコシステムは本当に奇妙だからなあ。今のWebOSがLG TVにまだプリンタードライバーを持っているかは分からないけど、仮にあったとしてもオープンソースじゃないから信頼できないね。" userName="Brian_K_White" createdAt="2025-03-05T14:16:19" color="">}}

{{<matomeQuote body="印刷できるからといって自分のプリンター用のドライバーがあるわけじゃないよ。両方とも、半標準化されたプロトコルをサポートしてるからね。" userName="account42" createdAt="2025-03-05T14:21:36" color="">}}

{{<matomeQuote body="それはドライバーでもあるし接続でもある。psパッケージがhttpsやbluetooth、lpr、jetdirect経由で送られても関係ない。要は、コントロールできないソフトウェアがデータを生成してプリンターに届けたってことだよ。" userName="Brian_K_White" createdAt="2025-03-05T14:38:43" color="">}}

{{<matomeQuote body="OSがプリンターメーカーのソフトウェアなしにランダムなプリンターのファームウェア更新を送信することはないよ。" userName="account42" createdAt="2025-03-05T14:45:19" color="#785bff">}}

{{<matomeQuote body="でもさ、何が問題なの？iOSのクライアントをプリンターにアクセスさせないって言っただけで、Appleがそのソフトを作ったなんて言ってないよ。WindowsでもMicrosoftからの危険はない。HPのソフトをダウンロードしてインストールすれば、やられちゃうからね。理論的には安全なオープンソースのドライバを書けるけど、信用できないドライバもあるし。Androidでも同様にHPやSamsungのドライバがあるし、メーカーが書いてるんだよ。だから、信用できないドライバについて言ったわけ。" userName="Brian_K_White" createdAt="2025-03-05T15:00:12" color="#45d325">}}

{{<matomeQuote body="で、具体的に何が心配なの？iOSかAndroidのユーザーがbrother.comに行って”brick_my_printer.pdf”を印刷するってこと？そんな心配をしてたら、プリンターなんて捨てた方がいいよ。アップデートがステガノグラフィーで隠される可能性だってあるし、品質を下げずにフィルターもサーバーもキャッチできないからね。" userName="account42" createdAt="2025-03-05T15:13:27" color="">}}

{{<matomeQuote body="なんでそんなことをする必要があるの？全部が”許可”であって”ブロック”じゃなきゃダメだよ。機械は我々、ユーザーのために働くべきなのに。昔のWindows ExplorerがMicrosoftにアクセスしていた時は理解できなかった。WordやExcelが「ヘルプ」を求めるのは分かるけど、普通のファイル検索で外に出る必要はないんだ。一般的な家庭のユーザーはブラウザとWindows更新以外はネットに必要ないんだから。" userName="HenryBemis" createdAt="2025-03-05T08:43:40" color="">}}

{{<matomeQuote body="機械は我々、ユーザーのために働くべきって同意するけど、時には消費者が誘惑に負けて自由を少し取られることもある。現実には、買い手はあまり気にしないし、その違いや結果についてもよく理解してないことが多いんだよね。" userName="thih9" createdAt="2025-03-05T09:45:55" color="">}}

{{<matomeQuote body="それは多くの人が企業に対して懐疑的になった理由を説明する良い argument になるかもね。企業が人を利用している例は数えきれないよ。祖父の世代の話を聞くと、かつては会社を信じていたなんて言うけど、今ではその時代よりもっと悪いものがあると確信してる。" userName="toofy" createdAt="2025-03-05T12:54:12" color="#ff5733">}}

{{<matomeQuote body="ほとんどの人はそういうことを望んでないよ。セキュリティの問題はパッチを当てて、できれば何も作業しなくても直して欲しいと思ってる。バグが直せるのも望んでるし、クライアントが求める機能を優先して直して欲しいと思ってる。多くの場合、無料のものを選ぶし、無料だとユーザーが見るべき広告も考えないといけない。" userName="miki123211" createdAt="2025-03-05T10:30:17" color="">}}

{{<matomeQuote body="ただのプリンターだよ。セキュリティの問題があるとしたら、インターネットに直接繋がってるか、LAN内のデバイスが攻撃してる場合だけだ。この前者は知識がないと実現できないし、後者は可能性はあるけど、プリンターがシンプルすぎて持続的な脅威になることは少ないよ。" userName="Zak" createdAt="2025-03-05T13:17:19" color="">}}

{{<matomeQuote body="もちろん、セキュリティの問題はデバイスがインターネットにアクセスしていないことでかなり軽減されているし、ほとんどの人は広告が嫌いだよ、私もね。" userName="wkat4242" createdAt="2025-03-05T11:46:43" color="">}}

{{<matomeQuote body="広告が嫌いな人、多いよね。私はマナーある広告は気にしないけど、嫌なのは広告業界に蔓延るストーキング。これは全然マナーがないからブロックしてる。<br>＞“昔のポップアップ広告や、自動再生の動画、音声に干渉するようなものはほんとに嫌だ。”" userName="dspillett" createdAt="2025-03-05T12:30:56" color="">}}

{{<matomeQuote body="インターネット広告は本当にひどい戦争だよ。クズな手法を使わないと、他の競合にやられちゃうからさ。最近、マナーのある広告を見た記憶がないよ。PiHoleのリストは増える一方、インターネットが変わらない限りずっとこのままだと思う。" userName="pdimitar" createdAt="2025-03-05T19:04:20" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Moto Edgeのバッテリー寿命、Rethink DNSで倍増したよ。アプリごとにブロックしてて、電話ホームしないゴミがいっぱい。" userName="zecg" createdAt="2025-03-05T14:20:58" color="">}}

{{<matomeQuote body="プリンターと無料の無制限SIMカード、いいね！" userName="notpushkin" createdAt="2025-03-05T09:29:17" color="">}}

{{<matomeQuote body="eSIMが普及するまではいいけど、そうなったら電子機器を全部アルミホイルで包まなきゃ。" userName="hhjj" createdAt="2025-03-05T10:24:24" color="">}}

{{<matomeQuote body="消費者を監視しない安価な電子機器が生まれればいいけど、現実はどうだろうね。" userName="hkt" createdAt="2025-03-05T11:02:11" color="">}}

{{<matomeQuote body="監視しないハードウェアはますます高くなるよ。" userName="FredPret" createdAt="2025-03-05T13:32:23" color="">}}

{{<matomeQuote body="この返信はHNにはあまり価値がないけど、お前のコメントは古いミームそのものだね。<br>＞“家の中には全てIoTが繋がってて、スマホでコントロールするのが好き！”と“最新の技術は2004年のプリンターで、異音がしたら撃つ覚悟”って感じ。" userName="DoingIsLearning" createdAt="2025-03-05T08:40:21" color="#ff5733">}}

{{<matomeQuote body="冗談言ってるけど、90年代のCompuserveのCDが初体験でした。突然ハードドライブのランプが点いたから、電源切ってCDをゴミ箱にポイしたよ。この体験以来、プログラムには超疑い深くなってて、復讐が何度もあった。" userName="LinuxBender" createdAt="2025-03-05T10:56:58" color="">}}

{{<matomeQuote body="ブラウザからプリンターに接続する悪さをするJavaScriptがあるかもね。" userName="throwawayqqq11" createdAt="2025-03-05T10:32:08" color="">}}

{{<matomeQuote body="最近のスマートデバイスが公衆Wi-Fiに接続されるのが心配なんだ。工場出荷時に設定されてたらやばい。" userName="ohgr" createdAt="2025-03-05T11:21:32" color="">}}

{{<matomeQuote body="Amazonのサーバーをブロックしてるかもね。Brotherのサーバーはそのうち再配置されるし、DNS名の解決を防ぐ方がいいかも。" userName="viraptor" createdAt="2025-03-05T05:22:35" color="">}}

{{<matomeQuote body="それはありえないと思う。多くの企業は監視のために暗号化DNSを許可しないから。" userName="viraptor" createdAt="2025-03-05T13:38:38" color="">}}

{{<matomeQuote body="特に理由がなければ、プリンターのインターネットアクセスを全てブロックするのがベストだと思う。" userName="jchw" createdAt="2025-03-05T06:01:58" color="#ff5c5c">}}

{{<matomeQuote body="共有フォルダーに直接スキャンする？メールに送る？" userName="gregncheese" createdAt="2025-03-05T07:00:05" color="">}}

{{<matomeQuote body="スキャナーがメール送るのが便利だとは思えない。ローカルネットワークでBrotherプリンターは共有フォルダーにスキャンできるし十分だよ。" userName="jchw" createdAt="2025-03-05T07:26:50" color="">}}

{{<matomeQuote body="＞でもスキャナーがメール送るのが便利だとは思えない。大きいレーザーコンボを使ってるけど、領収書をスキャンしたら共有フォルダーにアップロードして会計士が受け取るんだ。" userName="rafaelmn" createdAt="2025-03-05T07:49:43" color="">}}

{{<matomeQuote body="まだ確証がないとこで飛び込むのは嫌だな。Brotherでアフターマーケットのトナー使ってるけど全然問題ないし。このLouisのウィキの投稿は2、3年前のもので、redditの報告も3人しかいないんだよね。あの長い動画は新しい情報がなく、toms hardwareの記事も同じことを繰り返してるだけ。これが主な情報源だよ：<br>1. https://www.reddit.com/r/printers/comments/s9b2eg/brother_mf...<br>2. https://github.com/sedrubal/brother_printer_fwupd/issues/9<br>3. https://news.ycombinator.com/item?id=31860131" userName="samlinnfer" createdAt="2025-03-05T04:09:34" color="">}}

{{<matomeQuote body="私の経験では、Brother MDC-J480DWを使って3年、サードパーティのインクをいつも買ってたんだけど、2週間前にカラーインクを交換したらインクが入ってないって言われたの。見た目はあるのに、いろんな黒カートリッジもダメだった。その後、Walmartで普通のやつを買ったら問題なく動いた。みんなの体験がこうじゃないかもしれないけど、最近変わった気がするし、インクが切れたら捨てちゃうつもり。" userName="philipodonnell" createdAt="2025-03-05T04:23:48" color="#ff5733">}}

{{<matomeQuote body="これは別の問題のようだね。インクレベルが高いのが受け入れられないって報告してるけど、他の投稿は高いミスアライメントのこと言ってる。" userName="viraptor" createdAt="2025-03-05T04:35:56" color="">}}

{{<matomeQuote body="全てのBrotherモデルにあてはまるかは分からないけど、うちのはトナーのオドメーターをリセットするキーの組み合わせがあるから、トナーを使い切れるまで軽いグレーで印刷できるよ。" userName="PennRobotics" createdAt="2025-03-05T10:38:43" color="">}}

{{<matomeQuote body="俺のJ480DWも先月まさに同じ問題があった。別のブランドのアフターマーケットカートリッジを頼んだら、問題なく使えた。供給元の問題かもしれない。" userName="nazgulsenpai" createdAt="2025-03-05T21:14:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="MFC-J480DWを長年使ってて、安いジェネリックインクカートリッジで満足してた。でも、ここで読んでることが心配になってきた。USBでPCに接続してるけど、更新がPCから来てるかわからない。" userName="venusenvy47" createdAt="2025-03-06T00:59:41" color="">}}

{{<matomeQuote body="これ確認できるよ。Brother HL-L3270CDWカラーレーザーは、サードパーティのトナーは最初は問題なかったけど、ファームウェアアップグレード後は認識しなくなった。いろんなブランドのを試したけど、どれもダメで、古いファームウェアに戻す方法もない。これが最後のBrotherカラー印刷機になるかな、普通のトナーを受け入れるまで。" userName="jeffdubin" createdAt="2025-03-05T06:19:17" color="#ff5733">}}

{{<matomeQuote body="このモデルのファミリーのファームウェアをロールバックする方法があるから、インターネットで調べてみて。俺もやってみたら同じ問題が解決したよ。" userName="grumpysysop" createdAt="2025-03-05T09:22:41" color="">}}

{{<matomeQuote body="当時使ってた有用なリンクを覚えてる：<br>https://www.reddit.com/r/printers/comments/qcstzv/downgrade_...（ドイツ語）<br>https://github.com/CauldronDevelopmentLLC/oh-brother/issues/...  <br>https://www.reddit.com/r/printers/comments/w60687/comment/ih...  <br>https://www.reddit.com/r/printers/comments/w9bc3g/downdgradi..." userName="grumpysysop" createdAt="2025-03-05T13:02:22" color="">}}

{{<matomeQuote body="＞それが最後のBrotherカラー印刷機になるかな 代わりに何を買えばいいの？Brotherは一般にジェネリック消耗品に対して最も寛容で、反消費者的な行為が少ないブランドとして知られてるのに、今やBrotherもこの手のことをするとは...。" userName="GuB-42" createdAt="2025-03-05T18:06:44" color="#ff33a1">}}

{{<matomeQuote body="そのプリンター持ってるんだけど、初めてサードパーティのトナー買おうとしてたんだ。どのファームウェアバージョンでサードパーティのトナーが使えなくなったの？今は1.35なんだけど、自動更新のチェックは無効にした。でも遅すぎたかもな。" userName="mholt" createdAt="2025-03-05T18:22:59" color="#785bff">}}

{{<matomeQuote body="じゃあ、何を買えばいいの？Brotherは最後の良心的なプリンター会社だと思ってたんだけど。" userName="Ma8ee" createdAt="2025-03-06T02:16:49" color="">}}

{{<matomeQuote body="最近トナーを替えたら、”未確認のインクを使用してます”ってメッセージが出て、片側に黒い線が入って印刷されるようになった。何年も問題なかったのに、意図的に体験を悪化させようとしてる気がする。" userName="schneems" createdAt="2025-03-05T04:47:20" color="">}}

{{<matomeQuote body="自分も同じような経験があって、サードパーティのトナーに替えたらプリンターが機能しなくなったってサポートから言われた。OEMの始まりのカートリッジからDRMチップをサードパーティのカートリッジに移植したら問題は解決した。" userName="MostlyStable" createdAt="2025-03-05T08:00:38" color="#ff5c5c">}}

{{<matomeQuote body="自分は同じことやったけど、オリジナルのBrotherトナーセットからチップを移してもダメだったな。" userName="varispeed" createdAt="2025-03-05T10:57:07" color="">}}

{{<matomeQuote body="確認なんだけど、”それ”はBrotherのプリンター？それとも他のブランド？" userName="noname120" createdAt="2025-03-05T08:12:22" color="">}}

{{<matomeQuote body="うん、二つの異なるモデル（どちらもBrother）。シンプルな白黒プリンターと、白黒+スキャナーのモデルだったと思う。型番は今思い出せないけど。" userName="MostlyStable" createdAt="2025-03-05T16:28:59" color="">}}

{{<matomeQuote body="それは残念だな。Brotherはこんなごまかしをする会社じゃないと思ってたのに。古い型番のプリンターに戻るしかないな。" userName="noname120" createdAt="2025-03-07T11:07:17" color="">}}

{{<matomeQuote body="BrotherのHL-3220CWを買ったけど、互換トナーが使えないの。新しいファームウェアもなし。数年前に買ったHL-3230CDWは互換トナーが問題なく使えてるのに。古いプリンターはトナーが35ポンドで済むけど、新しいのは150ポンドかかるんだ。" userName="varispeed" createdAt="2025-03-05T10:54:19" color="#38d3d3">}}

{{<matomeQuote body="プリンターの推薦は難しいよね。古いモデルを使ってる支持者が多いから、会社が悪化してもすぐには評価が変わらないんだよ。" userName="wewxjfq" createdAt="2025-03-05T08:02:05" color="">}}

{{<matomeQuote body="このスレには似たような話がたくさんあるけど、あまり信じられない。Brotherのプリンターでトナーが認識されなくなったことがあって、リセットするボタンの組み合わせを使うこともあった。新しい問題がBrotherの陰謀かもしれないけど、センサーの不具合も考えられる。" userName="drfuzzy89" createdAt="2025-03-05T18:41:16" color="">}}

{{<matomeQuote body="昔はBrotherのプリンターを使ってたけど、最近古い型番のBrotherでも互換トナーが使えなくなってショック。HPもBrotherもダメなら、他に良心的なプリンター売ってる会社は残ってるの？" userName="drpixie" createdAt="2025-03-05T11:42:59" color="">}}

{{<matomeQuote body="今となっては、モデルごとに調べるしかないね。会社全体を信用できないから。いいプリンターリストがあればすごく助かるけど、古いHPのプリンターは安いトナーも使えるんだよね。" userName="opan" createdAt="2025-03-05T12:55:54" color="">}}

{{<matomeQuote body="Epson EcoTankに乗り換えたのは最高の決断だった。インクタンクは大きいから、気にせず何年も補充しなくて済むし、今までのカートリッジ式プリンターとは全然違う。" userName="javawizard" createdAt="2025-03-05T03:57:37" color="#785bff">}}

{{<matomeQuote body="従来のカートリッジは、定期的に印刷しないとインクが乾いて詰まることがある。だから、私はレーザープリンターが好き。パイプが詰まるとなると、プリンター全体がダメになるかもね。" userName="john01dav" createdAt="2025-03-05T04:21:50" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Brotherのスキャナー行ったとき、サポートが最悪で、間違ったキャリブレーションシートを送られて、ユーザー側の問題だと言われた。Xeroxは良い選択肢かもね。" userName="zamalek" createdAt="2025-03-05T05:28:16" color="">}}

{{<matomeQuote body="いつ買ったの？ちょっと調べた感じだと、Xeroxも3rd-party消耗品に対して詐欺的な行為をするみたいだね。品質を人工的に落としたり、地域ロックしたり、インクを早く使い切るように騙したり、金銭的に利益が出ないものは全く使えなくするDRMを使ったり。" userName="noname120" createdAt="2025-03-05T08:19:22" color="#ff5733">}}

{{<matomeQuote body="レーザーで印刷ヘッドを動かすって、そういう仕組みじゃないよ。まあ、自分の6515には3rd-partyトナー使ってるけど、全然問題ないよ。トラブルがあるのは、メーター付きプリンターを買った人たちかも。" userName="zamalek" createdAt="2025-03-05T16:39:30" color="">}}

{{<matomeQuote body="レーザーのヘッドはずれることもあるけど、Xeroxがやってるかは不明。6515は9年前のモデルだし、もう売られてないよね。時代が変わってる可能性もあるし、高価格なプロ向けモデルだし、あまりそんなことしないと思うけど。まあ、調べたら取り換えられないパーツもあるみたい。例えば、フューザーはユーザーが交換できないらしい。" userName="noname120" createdAt="2025-03-07T11:06:14" color="">}}

{{<matomeQuote body="＞人工的に品質を落とす（DPIを下げたり、印刷ヘッドを動かしたり）<br>うーん、ユーザーはそれのせいでプリンターのせいにするんじゃない？" userName="account42" createdAt="2025-03-05T15:07:21" color="">}}

{{<matomeQuote body="3rd-partyカートリッジだけの時にだけ起こるなら、それは言い訳にならないでしょ。Xeroxが純正と比べて低品質だと言ってるし。" userName="noname120" createdAt="2025-03-07T10:59:11" color="">}}

{{<matomeQuote body="Xerox最高！オフィスが潰れた会社から持ってきたVersaLinkを使ってるけど、最初に入ってたトナーで今も印刷してる！印刷は鮮明で早いし、アイドル時の電力も少ないから、大好き！" userName="skyyler" createdAt="2025-03-05T19:17:05" color="#785bff">}}

{{<matomeQuote body="湿気が多い場所ではトナーは固まってしまって、インクは乾かないよね。SEアジアではインクジェットが人気の理由もそこかも。" userName="userbinator" createdAt="2025-03-05T05:25:47" color="">}}

{{<matomeQuote body="家の中は湿気が少ないからそうでもないよ。20年前に南フロリダでインクジェットはもうやめた。" userName="sejje" createdAt="2025-03-05T12:37:13" color="">}}

{{<matomeQuote body="熱帯地方にはエアコンを常にかけない家も多い場所があるよ。例えば南東アジアみたいに。" userName="starspangled" createdAt="2025-03-05T12:49:25" color="">}}

{{<matomeQuote body="いいポイントだね。<br>自分も似たような使い方で、今まで問題ないよ。ほとんど数ヶ月使わない時もあったけど、ちょっとヘッドクリーニングしたらすぐ良くなるし。文書印刷にはレーザープリンタは最高だけど、自分の印刷の半分がステッカーや高品質の写真印刷だから、インクジェットも捨てられないね。自分のプリンターはEpson EcoTank ET-8550。" userName="javawizard" createdAt="2025-03-05T04:38:06" color="#ff5733">}}

{{<matomeQuote body="インクが詰まるのが問題じゃないんだよ。ヘッド詰まりだともうプリンターは壊れちゃう。" userName="sebazzz" createdAt="2025-03-05T06:35:15" color="">}}

{{<matomeQuote body="Epsonプリンターのヘッド詰まりは、イソプロピルアルコール数滴で解消できたことがあるよ。再発しないことが多いから、不気味だけど効果はあるかも。" userName="numpad0" createdAt="2025-03-05T07:03:23" color="#45d325">}}

{{<matomeQuote body="どこでそんなの聞いたの？カートリッジレスプリンターの交換ヘッドは、別売りで購入できるのがほとんどだよ。" userName="javawizard" createdAt="2025-03-05T06:51:47" color="">}}

{{<matomeQuote body="印刷が少ないから、プリンターは買い替えなかった。文書印刷サービスがページあたり約10セントで済むし、その値段は安い。" userName="starspangled" createdAt="2025-03-05T13:07:03" color="">}}

{{<matomeQuote body="レーザーは良い選択。カラーレーザーが最適だけど、一部のインクジェットには及ばないこともあるね。" userName="j45" createdAt="2025-03-05T04:36:56" color="">}}

{{<matomeQuote body="中古のHPエンタープライズワークグループプリンターが個人用には最適だよ。高額なレーザープリンターは修理可能で耐久性もある。" userName="alsoforgotmypwd" createdAt="2025-03-05T05:12:16" color="">}}

{{<matomeQuote body="白黒印刷の選択肢はたくさんあるし、Laser LEDプリンターはコスパがいいよ。" userName="j45" createdAt="2025-03-06T18:34:11" color="">}}

{{<matomeQuote body="リフィル可能な液体インクタンクのプリンターは、内部の廃インクスペースに注意。Canonは交換可能なモデルもあったよ。" userName="gradschool" createdAt="2025-03-05T14:49:59" color="#ff5c5c">}}

{{<matomeQuote body="EcoTankプリンターは特に注意が必要。廃インクパスはユーザーが交換可能だけど、交換しないとエラーが出るから厄介だよ。" userName="username190" createdAt="2025-03-05T16:00:31" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
