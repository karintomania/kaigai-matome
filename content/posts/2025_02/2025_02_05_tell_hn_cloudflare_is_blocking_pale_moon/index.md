+++
date = '2025-02-05T00:00:00'
months = '2025/02'
draft = false
title = 'CloudflareがPale Moonなどのマイナーブラウザをブロックしてるってマジ！？サイト運営者とユーザー間で波紋広がる'
tags = ["Cloudflare", "ブラウザ", "Pale Moon", "Webサイト", "ブロック"]
featureimage = 'thumbnails/purple8.jpg'
+++

> CloudflareがPale Moonなどのマイナーブラウザをブロックしてるってマジ！？サイト運営者とユーザー間で波紋広がる

引用元：[https://news.ycombinator.com/item?id=42953508](https://news.ycombinator.com/item?id=42953508)

{{<matomeQuote body="昨日、ある小さい小売店のサイトで商品を買おうとしたんだけど、「カートに入れる」ボタンを押したらすぐにCloudflareから「ブロックされました」ってメッセージが出たんだよね。どうしようもなくて、ドメインのオーナーに連絡してブロックを解除してもらうしかなかった。もちろん、そんなことせずに別の店で買ったけど。怪しいことは何もしてないし、M1 MBPでArc使ってるだけなのに。こういう問題ってよくあるのかな？もしCloudflareを導入して、それが売上に悪影響を与え始めたらマジで嫌だわ。小売業者にとってはコストは微々たるものだといいんだけど、自動化されたトラフィックをブロックできるメリットは大きいんだろうね。さっき確認したらまだブロックされてるし。早く解決してほしい。" userName="nikkwong" createdAt="2025-02-06T05:13:16" color="">}}

{{<matomeQuote body="＞もしCloudflareを導入して、それが売上に悪影響を与え始めたらマジで嫌だわ。<br>　”問題は、Cloudflareのフォレンジックベースのスロットリングとブロックは売上には影響しないってこと。Arcを使ってるユーザーなんてほんの一握りだし、そういう人たちはサードパーティのトラッキングもCookieもなしでCloudflareにやってくることが多いから、怪しく見えるんだよ。まるで作りたてのヘッドレスブラウザみたいにね。普通のユーザーは大量のトラッキングデータを持ってるのに。Cookieとか広告をブロックしてたら、統計にも出てこないし。暗いサングラスかけてる人を店から追い出すみたいなもんでしょ。泥棒は目を隠したいだろうけど、盲目の人はもっと少ないし。ADAとか倫理的に問題があるから、現実世界では差別は許されないよね。ウェブは無法地帯だから、Cloudflareは誰でもブロックできるし、巻き添えになったユーザーに同情する理由もないんだよね。”" userName="LeifCarrotson" createdAt="2025-02-06T17:08:41" color="#38d3d3">}}

{{<matomeQuote body="Chrome、Edge、Safari、Firefox以外のブラウザを使ってる人って、全体の10％くらいいるんだよね。もし自分が店をやってて、ウェブサイトの目的が売上を上げることなのに、入り口で10％の客を拒否してたら、そのドアを交換するわ。" userName="TheRealPomax" createdAt="2025-02-06T20:38:59" color="#38d3d3">}}

{{<matomeQuote body="実際に店を経営してる人たちは、それが収入源なんだから、そんなことくらい考えてるんじゃないの？それなのにそうしないってことは、メリットを上回るデメリットがあるってことじゃない？" userName="lotsofpulp" createdAt="2025-02-06T21:20:17" color="">}}

{{<matomeQuote body="なんで標準じゃないブラウザを使ってる10％の人が何か買ってくれるって決めつけるの？デモグラフィックって大事だよ。Linuxユーザー向けのソフトウェアを売ってる店ならいいけど、それ以外のものを売ってるなら気にしないな。" userName="agoodusername63" createdAt="2025-02-06T20:59:55" color="">}}

{{<matomeQuote body="Cloudflareのこういうブロックって、スクリーンリーダーのユーザーにも影響あるのかな？もしそうなら、ADAに違反するかもしれないね。" userName="RobotToaster" createdAt="2025-02-06T17:42:52" color="#45d325">}}

{{<matomeQuote body="もしADAに違反してたとしても、今の政権の反DEIの司法省が訴訟を起こすと思う？" userName="dragontamer" createdAt="2025-02-06T18:17:03" color="">}}

{{<matomeQuote body="アクセシビリティとDEIは別物だよ。一部の人が「DEIA」って言葉を作ろうとしてるけど。" userName="pc86" createdAt="2025-02-06T20:40:25" color="">}}

{{<matomeQuote body="政権には何千人もの人がいるんだから、良いこともバカなことも同時に起こりうるってことでしょ。" userName="pc86" createdAt="2025-02-07T15:07:47" color="">}}

{{<matomeQuote body="トランプ政権のトップがマジで命令出したんだよね。今もその命令が実行されてる。<br>で、その命令が障害者支援プログラムとか他のアクセシビリティの問題に直接影響してるんだよ。" userName="dragontamer" createdAt="2025-02-07T15:11:42" color="">}}

{{<matomeQuote body="兄弟コメントでも引用されてるけど、重要なのはここだよ:<br>＞ Sec. 2. 実施。(a) 行政管理予算局 (OMB) 長官は、司法長官および人事管理局 (OPM) 長官の支援を受け、違法な DEI および「多様性、公平性、インクルージョン、アクセシビリティ」(DEIA) の義務、ポリシー、プログラム、好み、および活動を含む、すべての差別的なプログラムを、その名称に関係なく連邦政府内で終了させるよう調整するものとする。<br>個人的には、これは無関係なプログラムを一緒にまとめるべきではないってことの明白な例だと思う。アクセシビリティは概ね支持されてて、DEIは概ねそうじゃないから、アクセシビリティをDEIと一緒くたにするんだよ。前の政権がDEIをアクセシビリティと分けなかったせいで、彼らはこのEOの文言に縛られてる可能性が高い。アクセシビリティは数十年前からの活動だけど、DEIは政府関係や報道でほんの数年前からだもんね。前の政権が分けてDEIをDEIAに無理やり組み込まなければ、このOEでアクセシビリティが言及されることはなかったと思う。でも言及されてるから、連邦政府の職員なら、アクセシビリティはDEIAじゃないから残せるって主張しない限り選択肢はないよね。でもそれは負け戦だろうね。" userName="pc86" createdAt="2025-02-07T16:59:02" color="#785bff">}}

{{<matomeQuote body="iCloud Relayをブロックするベンダーはマジ最悪。絶対自分たちがそうしてるって気付いてないんだよ。でもAppleユーザーの結構な割合（これから増えると思うけど）がそのIPアドレス範囲から来てるんだよね。ビジネス下手すぎ。別の方法を見つけないと。IPアドレスのブロックはもう終わりだよ。" userName="jen729w" createdAt="2025-02-06T08:46:09" color="">}}

{{<matomeQuote body="＞Bad business, guys. You gotta find another way. Blocking IP addresses is o-ver.”<br>いや、それが最前線だよ。これからもそうだと思う。それがボットが嘘をつけない唯一のクライアント識別子だよ（ほぼ唯一）。$OLDJOBでは、ASNの評判がトラフィックの敵対性の最高の予測因子だった。どれをブロックできるか、できないかは大体わかってた。でもネットワークベースのブロックが終わったとかマジありえないんだけど…特にベンダーがユーザーエージェントのせいで善良なユーザーをブロックしてるって話の流れで。" userName="grayhatter" createdAt="2025-02-06T16:08:33" color="#ff33a1">}}

{{<matomeQuote body="iCloud Relayは使ってないけど、AppleのASNは評判良いんじゃないの？" userName="weare138" createdAt="2025-02-06T16:39:43" color="">}}

{{<matomeQuote body="CloudflareがiCloud Relayの出口ノードの一つとして機能してるって考えると、それは変だね。" userName="cprecioso" createdAt="2025-02-06T09:03:44" color="">}}

{{<matomeQuote body="親コメントはCloudflareじゃなくて、ターゲットのウェブサイトがブロックするって意味だと思うよ。<br>YouTubeが完璧な例。iCloud Private Relayを使うと、ボット扱いされて、ログインしないと動画が見れなくなる。" userName="latexr" createdAt="2025-02-06T09:56:35" color="#38d3d3">}}

{{<matomeQuote body="マジでよくある。だからhttps://cobalt.toolsを使ってコンテンツをダウンロードする簡単な自動化を作った。損してるのは向こうだよ。" userName="tessela" createdAt="2025-02-06T12:25:31" color="">}}

{{<matomeQuote body="え、このコメントでiCloud Relayの存在を知ったんだけど。AppleはAppleユーザー専用のTorを作ったってこと？なんでそんなことするの？Torを使えば良くない？" userName="rthomas6" createdAt="2025-02-06T14:25:00" color="">}}

{{<matomeQuote body="それってTorっていうよりVPNっぽいよね" userName="echoangle" createdAt="2025-02-06T15:30:58" color="">}}

{{<matomeQuote body="いやいや、Torに近いけど、2ホップに固定されてて、1ホップ目と2ホップ目は必ず違う組織（監査済み）なんだって。でも、Tor使ってくれたらよかったのに。" userName="hedora" createdAt="2025-02-06T15:42:20" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="WAFとかのセキュリティベンダーが、これらのIPを「匿名化ツール」とか「VPN」カテゴリに入れてるのが主な原因。安全面から、普通はブロックされるんだよね。リスク管理チームに「hacking tools」を許可するか、iCloud Relayの顧客を失うかの二択を迫られたら、どっちを選ぶと思う？カートとかチェックアウトページでベンダー使ってると、ブロックをコントロールできない場合もあるし。" userName="oremolten" createdAt="2025-02-06T14:57:48" color="#ff5c5c">}}

{{<matomeQuote body="Cloudflareのcaptchaがあるサイトにアクセスするとき、FirefoxからChromeに変えないといけないんだよね。拡張機能はデフォルトのやつだけ（ページに影響するのはublockだけ）。VPNは関係ないし、ISP経由で誰かとIPを共有してるから「フラグ」が立ってるんだろうな。Cloudflareのダッシュボード以外は全部ダメ。" userName="Xelbair" createdAt="2025-02-06T08:45:45" color="">}}

{{<matomeQuote body="これってCloudflareの問題だと思う。そういうサービスへの需要があるのかもしれないけど、実装するのは別問題。自由で安全なネットにとってはすごく悪いことだよ。ブラウザのintegrity checkがどういう攻撃を防げるのかもわからない。感染したクライアント対策？全然効果ないじゃん。" userName="raxxorraxor" createdAt="2025-02-06T12:38:40" color="">}}

{{<matomeQuote body="中国は政府がブロックして自由を奪うのを好み、アメリカは独占的な資本主義企業がそれをやるのを好むっていうのは、皮肉だよね。名前が違うだけでしょ。友達は慎重に選ぼう。" userName="wvh" createdAt="2025-02-06T13:50:54" color="">}}

{{<matomeQuote body="Arcはもう3（4？）年くらい経つし、2年くらいdevインフルエンサーの間で人気だったじゃん。ニッチなブラウザじゃないよ。特にCloudflareで働くようなdevの間ではね。" userName="yurishimo" createdAt="2025-02-06T07:51:05" color="">}}

{{<matomeQuote body="そこのサブレディットには52k人のメンバーがいるんだってさ。おそらく何十万人ものユーザーがいるんじゃないかな。まだまだニッチなブラウザだけど、Macでは結構普通に使われてるみたい。" userName="InsideOutSanta" createdAt="2025-02-06T08:50:13" color="">}}

{{<matomeQuote body="＞そこのサブレディットには52k人のメンバーがいるんだってさ。おそらく何十万人ものユーザーがいるんじゃないかな。”<br>それって理屈が通ってないと思うんだよね。Redditのユーザーのほんの一部しかブラウザをインストールして試したことすらないだろうし、ましてや定期的に使ってるなんてありえないんじゃない？" userName="littlestymaar" createdAt="2025-02-07T07:48:45" color="">}}

{{<matomeQuote body="そんなマイナーなブラウザのサブレディットに、一度も使ったことないやつが参加するわけないじゃん。" userName="InsideOutSanta" createdAt="2025-02-08T18:18:07" color="">}}

{{<matomeQuote body="それより低いってことはないと思うな。arcbrowserのサブレディットは50k人のメンバーがいるし。実際の数字はともかく、絶対的な基準で合意する必要はないと思うんだよね。Cloudflareはブラックリストを使ってウェブサイトへのアクセスをブロックすべきか、それともホワイトリストを使ってアクセスを許可すべきかっていう、もっと大きな問題があると思うんだ。特にUser Agentを偽装するのが簡単なわけだし。" userName="oneeyedpigeon" createdAt="2025-02-06T08:53:37" color="#785bff">}}

{{<matomeQuote body="なんでランダムなブラウザを使っただけでプロバイダーにブロックされなきゃいけないのか、まだよくわかんないんだよね。古いブラウザを使ったからって、サイトのプロバイダーにとってセキュリティリスクがあるとは思えないし。悪意のあるIPをブロックするのはありかもしれないけど、怪しいアクティビティならまだしも、ブラウザXを使ってるからってブロックするのはマジ勘弁。<br>これじゃ新しい技術が出てこなくなって、大手が勝つだけのつまらないインターネットになっちゃうよ。参入障壁が高すぎて、誰も新しいものを発明しなくなる。" userName="chrisandchris" createdAt="2025-02-06T08:53:39" color="#ff5733">}}

{{<matomeQuote body="Cookieを削除して、拡張機能を全部無効にしてみて。それでもブロックされるなら、モバイルホットスポットを試してみるといいかも。サーバー側のチェック（IP、TCPフィンガープリント、JA3など）に引っかかってるか、ブラウザの整合性チェック（プライバシー系の拡張機能とか、フィンガープリント対策設定とかでよくある）に引っかかってるかのどっちかだと思うよ。根本的な解決にはならないけど、原因を特定する手がかりにはなるかも。" userName="ghxst" createdAt="2025-02-06T05:52:30" color="#ff5733">}}

{{<matomeQuote body="VPN使ってた？" userName="kcrwfrd_" createdAt="2025-02-06T06:00:01" color="">}}

{{<matomeQuote body="一部のベンダーはマジで変だよな… EtsyでFirefox使ってると、サイトにアクセスした直後にブロックされんだよね。パズルを解かされて、正解すると「You have been blocked」ってリダイレクトされるし。Chrome系のブラウザなら大丈夫なんだけど、ますます使う気がなくなるわ。<br>VPNは使ってないよ。プライバシー設定はしっかりしてるけど。" userName="whilenot-dev" createdAt="2025-02-06T07:19:57" color="#45d325">}}

{{<matomeQuote body="Firefoxで「resist fingerprinting」設定が有効になってない？（about:configで確認できるよ）" userName="ghxst" createdAt="2025-02-06T08:06:26" color="">}}

{{<matomeQuote body="privacy.resistFingerprintingは”true”になってるよ。これからもそのままで使うつもり。パズルを解かせた後にブロックするとか意味不明すぎ。" userName="whilenot-dev" createdAt="2025-02-06T08:16:52" color="#ff5c5c">}}

{{<matomeQuote body="昔よくあったユーザーエージェントチェックみたいだね。ブラウザがちゃんと表示できても、ウェブサイトが「違う」ブラウザだと判断して機能を制限したり、表示を拒否したりしてたんだ。だからブラウザは他のブラウザになりすますようになったんだよね。例えば、M3 Macで動いてるChromeはこんなユーザーエージェントだよ：’Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36’　これってFirefoxとSafariになりすましてるってことじゃん。Cloudflareがどうやってブラウザを判断してるのか知らないけど、ユーザーエージェント偽装を見破ってるのかもね。なんか面白いし、昔を思い出すわ。" userName="tibbar" createdAt="2025-02-05T21:12:27" color="#ff33a1">}}

{{<matomeQuote body="いまだにデスクトップでMozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25使ってるぜ！インターネットはこうあるべきだよな！2010年の軽量モバイル版Googleとか、m.youtubeとか、UIがすっきりしてて広告もないし（iPhone 6使ってるように見えるから広告出す価値がないと思われてるんだな）。" userName="gloosx" createdAt="2025-02-06T07:07:23" color="">}}

{{<matomeQuote body="＞(apparently it's not worth to show you ads if you still appear to be using iphone 6)<br>広告を表示しない代わりに、デバイスをアップグレードするかプレミアムを購入するまで広告だけを表示する「adwall」を導入したらどうかな？" userName="anticensor" createdAt="2025-02-07T17:08:45" color="">}}

{{<matomeQuote body="それiOS 6であってiPhone 6じゃないからね。" userName="hexagonwin" createdAt="2025-02-06T22:12:00" color="">}}

{{<matomeQuote body="マジか。じゃあ3GS/4の頃まで遡るってことか。" userName="gloosx" createdAt="2025-02-07T05:27:39" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="OKをクリックすると、結局入れるけどね ;) " userName="gloosx" createdAt="2025-02-07T05:21:11" color="">}}

{{<matomeQuote body="試しにClaudeの使用状況を取得してPrometheusのメトリックとして公開するスクリプトをClaudeに書かせたんだ。パブリックAPIがないから、Networkタブからリクエストをコピーするように言われた。cURLとしてコピーして実行しようとしたら、CFから403で拒否されたんだ。<br>スクリプトを開いたまま20分くらいポーリングしてたら、急に動き出したんだよね。Firefoxと同じヘッダーを送っても、cURLだと自動アクセスだと判断されるみたいで、1分に1回しかポーリングしてないのを確認してから許可したみたい。すごいよね。微妙なタイミングを使ってるのかな？cURLってヘッダー以外にも簡単にわかるフィンガープリントがあるのかな？<br>以前の攻撃を思い出したよ。’curl | sh’でスクリプトが実行されているかどうかを検出し、ブラウザで読み込まれた場合とは異なるコードを提供するっていうやつ。" userName="johnmaguire" createdAt="2025-02-05T21:20:17" color="#ff5733">}}

{{<matomeQuote body="＞ Does cURL have an easy-to-spot fingerprint outside of its headers?<br>httpsのURLなら：TLS handshakeだよ。普通のブラウザのTLS handshake（とHTTP/2の設定）を真似ようとするcurlビルドもあるけどね。" userName="schroeding" createdAt="2025-02-05T21:51:39" color="#38d3d3">}}

{{<matomeQuote body="ja4 fingerprintみたいなものを使ってる可能性もあるよね（chromiumのバージョンをエミュレートするためにcurlをリビルドする必要があるけど）。" userName="bennyg" createdAt="2025-02-05T23:18:17" color="">}}

{{<matomeQuote body="Curl-impersonateってのが使えるらしいよ。<br>[https://github.com/lwthiker/curl-impersonate](https://github.com/lwthiker/curl-impersonate)" userName="ghxst" createdAt="2025-02-06T05:54:53" color="">}}

{{<matomeQuote body="もしかしたら、何か攻撃があって、それが収まったからCloudflareのbot対策が緩くなったのかもね。" userName="areyourllySorry" createdAt="2025-02-06T11:10:30" color="">}}

{{<matomeQuote body="＞ユーザーエージェントをごまかすくらいじゃ通用しない場合もあるかもね。<br>仕事でブラウザのフィンガープリントを見てるんだけど、ブラウザの種類を特定する商用・無料ソリューションがあるんだ。<br>ブラウザが公開してる情報だけでも簡単にわかる。値をテーブルと照合するだけ。例えば、[https://amiunique.org/fingerprint](https://amiunique.org/fingerprint) にそういう情報があるよ。<br>追記：有名なフィンガープリントライブラリはユーザーエージェントを無視して機能テストしてるみたい。<br>[https://github.com/fingerprintjs/fingerprintjs/blob/master/s...](https://github.com/fingerprintjs/fingerprintjs/blob/master/s...)" userName="ZeWaka" createdAt="2025-02-05T21:18:55" color="#38d3d3">}}

{{<matomeQuote body="Pale MoonはNetscapeが終わってFirefoxが出る前の古いMozillaのバージョンを装ってるんだね。KHTML（webkitの元になったやつ）とか、Firefox (Geckoエンジン)とか、ChromeとかSafariもごちゃまぜ。IEだけ仲間はずれ。" userName="wongarsu" createdAt="2025-02-05T22:45:56" color="">}}

{{<matomeQuote body="＞IEだけ仲間はずれ。<br>IEもMozilla/5.0 (とか4.0とか2.0とか)を送ってたから、仲間はずれじゃないよ。" userName="mh-" createdAt="2025-02-06T00:52:26" color="#ff5c5c">}}

{{<matomeQuote body="面白いことに、OSまで偽装してる！macOS 14なのに、ユーザーエージェントはMac OS X 10.15って言ってる。昔の怪しいチェックをするサイトのためだね。" userName="tibbar" createdAt="2025-02-06T04:21:32" color="">}}

{{<matomeQuote body="Apple Silicon Macも、昔はIntelだって嘘をついてたよ。ユーザーエージェントとかnavigatorのプロパティとかは、真実を伝えるためのものじゃないんだ。" userName="zerocrates" createdAt="2025-02-06T06:52:00" color="">}}

{{<matomeQuote body="＞Cloudflareが何の機能を使ってブラウザを判別してるのか知らないけど、ユーザーエージェントをごまかしてもバレちゃうのかもね。面白いけど、昔を思い出すよ。<br>TLSとかTCPスタックも特徴があるから、ごまかせないんだよね。他にもフィンガープリントできるものはたくさんあるし。" userName="Avamander" createdAt="2025-02-06T15:26:00" color="#38d3d3">}}

{{<matomeQuote body="＞それって、僕のブラウザがIntelチップのFirefoxとSafariのふりをしてるってこと？<br>そうじゃなくて、Chrome on MacOSだよ。残りの部分は古いサイトとの互換性のためのゴミ。" userName="createaccount99" createdAt="2025-02-06T19:31:01" color="">}}

{{<matomeQuote body="Chromeのユーザーエージェントだけど、他のブラウザ（古いOSとかアーキテクチャ）の情報が入ってるのは、古いウェブサイトがユーザーエージェントの文字列マッチングで判別してるから、それに合わせるため。" userName="tibbar" createdAt="2025-02-09T01:52:55" color="">}}

{{<matomeQuote body="Slackのhuddle機能でずっとこれやってた（たぶん今も）。マジ勘弁してほしいわー。" userName="christophilus" createdAt="2025-02-06T11:09:39" color="">}}

{{<matomeQuote body="別にイヤじゃないなー。むしろ「huddle回避カード」もらえた気分。" userName="6031769" createdAt="2025-02-06T23:07:40" color="">}}

{{<matomeQuote body="ベアメタルサーバーをインターネットに直結させてる人ってどれくらいいるの？DDoS攻撃ってマジでよくある問題？<br>俺は普通の*nixセキュリティ対策とプロバイダのDDoS防御だけでなんとかなってるけど。<br>なんでCloudflareに全部通す必要があるんだろ？" userName="ai-christianson" createdAt="2025-02-05T20:07:16" color="">}}

{{<matomeQuote body="DDoSはマジで問題だよ。家庭用光回線でも、小さいサイトの1uボックスやVPSより帯域広い人がゴロゴロいるし。帯域制限されたらDoS攻撃されるし、帯域が広くても超過料金でヤバいことになる。<br>昔はIPbanできたけど、今はもう無理ゲー。<br>AI企業が無限帯域前提でクローラー動かしてくるし、いろんな地域からアクセスしてくる。<br>Cloudflareのキャッシュ機能はマジで金銭的に助かる。<br>無料版でも十分使える機能あるし、使わない理由がない。<br>俺はCDNなしで10年以上サイト運営してたけど、マジで無理になったからCloudflare入れたわ。" userName="matt_heimer" createdAt="2025-02-05T20:54:58" color="#ff33a1">}}

{{<matomeQuote body="＞It's hard to say no to a free service that provides feature you need.<br>“必要な機能が無料で使えるなら、そりゃ断れないよね！”<br>その通り！でも、CFのDDoS防御がMITMプロキシとして通信を平文で読めるって知って驚く人もいる。<br>もちろん、トラフィックを検査するためだけど、CFはAdmin Panelとかドキュメントでそれをあんまり明確にしてないんだよね。" userName="johnmaguire" createdAt="2025-02-05T21:15:16" color="#785bff">}}

{{<matomeQuote body="経路に何か挟まないとDDoS防御なんて無理じゃね？" userName="sophacles" createdAt="2025-02-05T22:07:14" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="「トラフィックを検査するため」って書いた時点で、DDoSトラフィックを検出して分離するためだって理解してるの伝わってほしかったわー。<br>ただ、Cloudflareユーザーは技術者じゃない人も多いから、もっとちゃんと説明してほしいってだけ。<br>ちなみに、有料のMagic TransitとSpectrumなら、ペイロード検査なしでL3/L4 DDoS防御できるよ。" userName="johnmaguire" createdAt="2025-02-05T22:24:42" color="#ff5733">}}

{{<matomeQuote body="Proxyって単語もDecrypt/Re-encryptの説明も書いてあるし、Cloudflareのブログにも詳しく書いてあるじゃん。<br>ネガティブな理由でProxyしてるって言う人が多いから勘違いしたわ。<br>Magic Transitは面白いけど、小規模サイトには向かないかもね。BGPでプレフィックス全体をadvertiseするみたいだし。" userName="sophacles" createdAt="2025-02-05T22:56:56" color="">}}

{{<matomeQuote body="気持ちはわかるけど、CloudflareのアカウントにログインしてDNSレコードのページ見てもSSL復号のことなんてどこにも書いてないんだよね。<br>CloudflareがHTTPS傍受を批判する記事書いてるのも面白い。<br>https://blog.cloudflare.com/monsters-in-the-middleboxes/<br>やっぱりサービス設定してるユーザーにちゃんと表示すべきだと思う。<br>Proxyにはいろんな種類があるし、MITM復号は必須じゃないし。<br>Admin Panelのページから「Cloudflareの仕組み」みたいなページに飛んでもHTTPS傍受のことなんて書いてないんだよね。" userName="johnmaguire" createdAt="2025-02-05T23:06:11" color="#38d3d3">}}

{{<matomeQuote body="Cloudflareは主にキャッシュProxyでしょ。キャッシュするためには暗号化されてないオブジェクトが必要じゃん。はい論破。<br>車買うときにガソリンが必要だって説明書に書かないといけない時代なの悲しいね。" userName="shwouchk" createdAt="2025-02-06T01:14:04" color="">}}

{{<matomeQuote body="CloudflareのCDN機能はDDOS防御とは別なんだよね。リソースが機密性の高いもの（認証が必要なリクエストとか）だと、キャッシュできないことが多いんだって。それに、TLSの傍受に頼らないプロキシやDDOS防御もたくさんあるし、ガソリンを使わない車もあるじゃん？Cloudflareは、IPアドレスを隠したり、DDOS攻撃を避けたり、家のリソースにアクセスするために使ってる、技術に詳しくない一般ユーザーも多いんだよ。そういう人たちは、/r/homelabみたいなサブレディットで驚いてるみたい。" userName="johnmaguire" createdAt="2025-02-06T02:40:57" color="">}}

{{<matomeQuote body="どうやってキャッシュする内容を知るんだろ？サーバーからのレスポンスヘッダーは暗号化されてるじゃん。リソースがあれば、ハイエンドなL3保護はできるかもしれないけど。無料プランだとキャッシュがセットになってるよね。それに、コンテンツを見ないなら、証明書はどうやって機能するんだろ？" userName="shwouchk" createdAt="2025-02-06T02:53:52" color="">}}

{{<matomeQuote body="＞どうやってキャッシュする内容を知るんだろ？<br>キャッシュしない状況を説明しようとしてる人に聞くのは変な質問だね。<br>＞それと、コンテンツを見ないなら、証明書はどうやって機能するんだろ？<br>もっと具体的に言ってくれる？どの機能について聞いてるのか、どうやって証明書を使うのかがわからないよ。でも、答えはおそらく”その機能はDDOS防御には必須じゃない”ってことだと思う。" userName="Dylan16807" createdAt="2025-02-06T06:38:58" color="">}}

{{<matomeQuote body="いやいや、”解決策はある”って言ってるだけで、全然詳しく説明してないじゃん。確かに、トラフィックを保護する方法は他にも考えられるけど、CFの無料プランは、SSLを有効にすると、常にSSL終端と独自の証明書が含まれてるし、常にキャッシュも含まれてるよね。" userName="shwouchk" createdAt="2025-02-06T07:17:21" color="">}}

{{<matomeQuote body="＞他の方法を考え出す<br>いくつかの機能をオフにするだけで、ほとんどできるよ。再構築する必要はないんだ。それらの機能がデフォルトでバンドルされてるってことは、難易度とはほとんど関係ない。" userName="Dylan16807" createdAt="2025-02-06T09:07:22" color="">}}

{{<matomeQuote body="”可能”ってことじゃなくて、何も新しいことを追加する必要がないってことだよ。そっちの方がずっとハードルが低いじゃん。レストランでチーズバーガーを売ってて、僕がハンバーガーを食べたいって言ってるようなものだよ。”チーズを入れずにケチャップとチーズの比率をどうやって決めるんだ？”って。その部分を飛ばせばいいだけじゃん。寿司が”可能”だからって寿司を要求してるわけじゃないんだ。" userName="Dylan16807" createdAt="2025-02-07T01:40:15" color="#38d3d3">}}

{{<matomeQuote body="＞君の主張は、コーヒーにカフェインが含まれてるってことの不十分な開示についての不満から、デカフェの提供がないことへの不満に変わったってことでOK？<br>僕の主張は一度も変わってないよ。<br>主張が変わったのは、誰かがダウンサイドなしでDDOS防御をどうやるのかを具体的に質問したからだよ。<br>君はそれをどうやるのかを聞き続けた。<br>＞GoogleやFacebookが広告とアクティビティのロギングをすべてオフにするのも簡単だよ。今やってることよりも明らかに少なくすればいいんだ。すべてのユーザーのためにもなる！<br>Cloudflareは、プロキシしてるウェブサイトで個人情報を追跡してないはずじゃないの…？もし彼らがそれで稼いでると思うなら、それはかなりヤバいことだよ…<br>＞CFの場合、現在とは異なる技術を使ってボットを検出し、正当なユーザーに対する誤検知を回避するために、完全に異なるインフラを構築する必要があるだろうね。<br>そうは思わないな。<br>＞無料でチーズなしのハンバーガーを提供してくれるなら、僕が最初に並ぶよ。どこで申し込めるの？<br>まず、僕のビジネスがCloudflareと競合できて、Cloudflareがやってることとまったく同じことをできる状況に置いてもらう必要があるね。それから喜んでリクエストに応じるよ。この状況の難しいところは、その小さな変更が収益性に与える影響じゃなくて、その変更を実行できる立場になることなんだ。" userName="Dylan16807" createdAt="2025-02-07T19:17:01" color="">}}

{{<matomeQuote body="＞少なくとも連中はユーザーをトラッキングしてて、そのトラッキングを製品のヒューリスティクスの一部に使ってるってことだよね。<br>それってプロキシされたコンテンツを見なくてもできるじゃん。<br>だからFacebookとかGoogleに広告とトラッキングをやめろっていうアナロジーは完全に的外れ。<br>＞あと”キャッシングの追加機能をなくしても技術やビジネスに悪影響はない”って。<br>マジで？（もっと前から言われてたけど今頃気づいた？）あんたこそ問題だって言ってるけど、何か根拠あるの？<br>＞後者の場合は、仕組みを知ってれば明らかに嘘。<br>キャッシングってリソースめっちゃ食うし、帯域も使うじゃん。何がそんなに明らかなの？それにCloudflareユーザーはいつでもキャッシュをクリアできるし、別に心配してないでしょ。<br>https://developers.cloudflare.com/cache/how-to/cache-rules/s…<br>＞ここのトップページに載るような”正当なDDoS”には全く役に立たない。<br>みんなが心配してたのはそれじゃないでしょ。<br>それに普通のウェブサーバーなら対応できるって。" userName="Dylan16807" createdAt="2025-02-08T00:11:28" color="">}}

{{<matomeQuote body="いろんな方法があるけど、プラグアンドプレイじゃないからクライアントを何人か失うだろうね…でもトラフィックを嗅ぎまわるのが連中のビジネスモデルだから関係ないか。" userName="1oooqooq" createdAt="2025-02-06T13:54:01" color="">}}

{{<matomeQuote body="どんな方法があるのさ？教えてよ。俺はずっとこの仕事してるけど、Cloudflareがやってることを安くて簡単でスケーラブルに、HTTPレイヤーを使わずに実現する方法なんて思いつかないんだよね。何か新しいことを教えてくれよ。" userName="sophacles" createdAt="2025-02-06T19:03:46" color="#ff5c5c">}}

{{<matomeQuote body="L2ロードバランサーを提供して、キューとして機能させるのはどう？サイトがDoS攻撃か悪質なリクエストだと判断したら、ロードバランサーが読めるダウングレードされたレスポンスを送るか、サイドチャネルで通信する。そうすれば、ロードバランサーはIPアドレスとかL2情報だけで識別できるパターンに基づいて全てを遮断できる。<br>他にも色々あるよ。プライバシーを重視する業界の本を買うか、誰かにお金を払って教えてもらえば？" userName="1oooqooq" createdAt="2025-02-07T11:54:08" color="#ff5733">}}

{{<matomeQuote body="＞普通の家庭用光回線でも、1UボックスとかVPSでホストされてる小さなサイトより帯域があるのは珍しくないよね。<br>じゃあ自宅の回線でセルフホストすればいいじゃん。VPS代払うなって(笑)。俺はもう10年以上そうしてるけど、DDoS攻撃なんて一度も見たことないよ。<br>50Mbpsあれば十分色々なウェブサイトをホストできるし、認証なしで数GBのファイルをアップロードできるサイトもホストしてたよ。100Mbpsあると更に快適だけど、必須ってわけじゃない。もっとあれば嬉しいけど、2025年だと100Mbps以上あってもあんまり変わらないかな。動画とかTorリレーをホストするなら違うかもね。普通のウェブサイトの話ね。" userName="Aachen" createdAt="2025-02-06T05:37:53" color="">}}

{{<matomeQuote body="＞50 mbpsあれば十分色々なウェブサイトをホストできる<br>帯域幅はもう何年も制限要因になってないよ。<br>でも動的なページを生成すると、負荷が大きくなって辛くなることがある。今週もMetaのありえないくらい活発なボットが、実際のユーザーが1時間にするリクエストよりも多いリクエストを毎秒送ってくるから、ブラックリストに入れたよ。MetaとClaudeBotのせいで、ここ数週間断続的に過負荷になってたんだ。<br>減速させるのはもう諦めたから、403エラーを返すようにした。" userName="lucumo" createdAt="2025-02-06T10:41:44" color="">}}

{{<matomeQuote body="25年以上自分のベアメタルサーバーをコロケーションでホストしてるけど、ダウンするほど大規模なDDoS攻撃は1回だけだった。それは特定の人が特定の人にマジギレしたから起きたことで、攻撃者はDDoS行為で刑務所に入ったよ。<br>それ以外のDDoSの試みは全部効果がなかったり、フォームの悪用とか、素人レベルで何も落とせなかった。<br>ウェブ、メール、シェルをたくさんの人にホストしてて、その中にはインターネットとかセキュリティについて学んでる若い子もいる。そういう連中がIRCでくだらないことを言うせいで、もっとDDoS攻撃を受けてもおかしくないと思うんだけど。<br>だからCloudflareみたいな会社がいないとインターネットは崩壊するとか自信満々に言う人がいると、Cloudflareがどれだけ上手くマーケティングしたんだって思うわ。それともWordpressのデフォルト管理URLを開けっ放しにしてて、ハッキングされた！とか騒いでるだけかもしれないけど、それだけじゃCloudflare擁護者を説明できないし。<br>Cloudflareは独占したがってる。西側の国に住んでない人とか、主流のOSやブラウザを使いたくない人とか、立場の弱い人たちを全く気にかけてないってことを示してきた。詐欺師から金儲けしてるから詐欺師を保護する。そんな連中をなんで使いたいんだ？って話だよね。" userName="johnklos" createdAt="2025-02-06T01:29:59" color="#785bff">}}

{{<matomeQuote body="具体的にどの部分のこと？同じウェブホストとして、昔ゲーム制作フォーラムの子たちをホストしてたけど、完全に同意できるよ。" userName="Aachen" createdAt="2025-02-06T05:47:06" color="">}}

{{<matomeQuote body="＞ベアメタルをインターネットに直接繋いで運用してる人ってどれくらいいるの？<br>俺はそうしてるよ。知り合いにもたくさんいる。俺のリスクモデルだと、DDoSなんてただの理論上の話。起きる可能性はあるけど、誰かをマジで怒らせないと起きないかもね。" userName="grishka" createdAt="2025-02-05T20:45:43" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
