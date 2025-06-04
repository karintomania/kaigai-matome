+++
date = '2025-05-28T00:00:00'
months = '2025/05'
draft = false
title = 'VPNのMullvadが匿名検索Letaを発表！'
tags = ["プライバシー", "匿名", "検索エンジン", "Mullvad", "セキュリティ"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> VPNのMullvadが匿名検索Letaを発表！

引用元：[https://news.ycombinator.com/item?id=44116503](https://news.ycombinator.com/item?id=44116503)




{{<matomeQuote body="LetaはVPNと同じくディスクレスのRAMサーバーで動いてるんだって。検索結果はメモリ上のRedisに30日キャッシュ。でも再起動で消えちゃうの意外だね。VPNはセッションで終わりだけど、検索結果30日ってどうしてるんだろ？たぶんキャッシュは”おまけ”だから、消えてもまあいいかって感じかな。" userName="mtlynch" createdAt="2025/05/28 15:17:15" color="#45d325">}}




{{<matomeQuote body="”再起動で全部消える”って言ってるけど、全部のサーバーが同時に再起動しない限り大丈夫だよ。サーバー間でキャッシュを共有したり複製したりしてたら、ずっと残せるかもね。" userName="kikokikokiko" createdAt="2025/05/28 15:43:51" color="#38d3d3">}}




{{<matomeQuote body="FAQには”Letaが再起動すると、新しい秘密ハッシュができて、前の検索データは見えなくなる”って書いてある。これ読むと、キャッシュはインスタンスごとっぽいね。それぞれハッシュが違って再起動で変わるなら、サーバー間でデータ共有はできないんじゃないかな。" userName="vvillena" createdAt="2025/05/28 17:42:00" color="#45d325">}}




{{<matomeQuote body="この手のアプリなら、データを同期じゃなくて分散させると思うよ。" userName="treve" createdAt="2025/05/28 16:00:30" color="">}}




{{<matomeQuote body="うん、FAQにはシステム更新でキャッシュが消えるって書いてあるね。キャッシュはクエリのコスト削減のためだよ。" userName="KoolKat23" createdAt="2025/05/28 15:19:14" color="">}}




{{<matomeQuote body="外部のコストも関係あるね。BraveとかGoogleから結果取ってくるから。キャッシュないと大変だけど、全部キャッシュする必要はないよ。ソース元から取る必要があるし。それに長く持っておきたくないよね、ニュースとかすぐ古くなるし。" userName="bravetraveler" createdAt="2025/05/28 22:58:15" color="#ff5733">}}




{{<matomeQuote body="”キャッシュは”おまけ””の件についてね。ディスクレスでもネット繋がってるし、データは送受信できるよ。つまり、ディスクレスはこの場合、ChromeOSとかAndroidみたいに読み取り専用のパーティション使うのと、プライバシー面でそんなに変わらないんじゃない？" userName="ignoramous" createdAt="2025/05/28 15:27:32" color="#ff33a1">}}




{{<matomeQuote body="ごめん、どういう意味？”おまけ”って言ったのは、キャッシングのことだよ、ディスクレスじゃない。ディスクレスはストレージにデータが残る可能性をすごく減らすから、プライバシー良くなると思うけどな。" userName="mtlynch" createdAt="2025/05/28 15:38:17" color="#ff5733">}}




{{<matomeQuote body="ディスクレス（OSはinitramfs）は永続化防ぐのに最高だけど、RAMがいっぱい必要。うっかりデータ残るの防ぐなら、dm-verityだけ入れたディスクでも十分良いし、RAMもそんな使わないメリットがあるよ。書き込みできないrootfsで起動するだけでも完璧だよ。" userName="kees99" createdAt="2025/05/28 16:03:05" color="#45d325">}}




{{<matomeQuote body="NFSから実行すれば，そんなに余分なRAMは要らないと思うよ。それにローカルディスクが要らないから，1ノードあたり25ドルくらい節約できるしね。" userName="toast0" createdAt="2025/05/28 16:09:10" color="#ff33a1">}}




{{<matomeQuote body="極端なこと言うと，Google Drive（とか他のfuse FS）からブートすることだってできるよ。参考リンク：https://ersei.net/en/blog/fuse-root" userName="ChocolateGod" createdAt="2025/05/29 07:40:33" color="">}}




{{<matomeQuote body="うん，rootfs-on-NFSも”ディスクレス”に当てはまるね。訂正するよ。" userName="kees99" createdAt="2025/05/28 16:14:12" color="">}}




{{<matomeQuote body="もしVMで動かしてるなら，再起動が必要な時にVMを別のマシンにライブマイグレーションできるんじゃない？それか，Redisキャッシュのクラスターとか。" userName="xlt" createdAt="2025/05/28 18:04:09" color="">}}




{{<matomeQuote body="え，ハイパーバイザ用のディスクレスOSの上にディスクレスVM？悪夢っぽいね。VM再起動は？Redisキャッシュクラスターだと，キャッシュが1台のRAMサイズに制限されちゃうからダメだよ。" userName="HumanOstrich" createdAt="2025/05/31 20:39:05" color="#ff5c5c">}}




{{<matomeQuote body="最初のローンチ（2年前）からの過去の議論だよ。<br>リンク：<br>https://news.ycombinator.com/item?id=36402162<br>https://news.ycombinator.com/item?id=35964397" userName="jsnell" createdAt="2025/05/28 15:21:30" color="#ff5733">}}




{{<matomeQuote body="ありがとう！詳細だよ。<br>Mullvad Leta（Mullvad Browserの検索エンジン）<br>2023年6月スレ（142コメ）：https://news.ycombinator.com/item?id=36402162<br>2023年5月スレ（32コメ）：https://news.ycombinator.com/item?id=35964397" userName="dang" createdAt="2025/05/28 17:07:55" color="#ff5c5c">}}




{{<matomeQuote body="2023年に始まって，2025年にはハグ・オブ・デスが来るかもね。" userName="PrivacyDingus" createdAt="2025/05/28 16:04:15" color="">}}




{{<matomeQuote body="Mullvadがいきなり本気出してきてるね。サウスサンフランシスコにも看板出してるし。資金注入でもあったのかな？なんで急に拡大してんの？正直，もう名前変えてると思ってたけど…" userName="VonGuard" createdAt="2025/05/28 15:06:10" color="">}}




{{<matomeQuote body="ロンドンの地下鉄にも広告ばらまいてるよ。宝くじ当たったか，シリーズAの資金調達があったか，どっちかだね。" userName="oscarmoxon" createdAt="2025/05/28 15:06:54" color="">}}




{{<matomeQuote body="”資金注入でもあったの？急に拡大してるけど？”<br>資金注入はないよ。他の多くのVPNサービスみたいに、何年も前から成長してるんだ。NordとかExpressよりはまだだいぶ小さいけどね。広告についてだけど、うちはアフィリエイトプログラムをやってないし、オンライン広告でお客さんを追跡したくないんだ。だから代わりにこれを試してるんだよ。思ってるより安いよ。// Fredrik (Mullvad共同創業者)" userName="kfreds" createdAt="2025/05/29 07:09:49" color="#45d325">}}




{{<matomeQuote body="去年にiVPNに乗り換えたんだ。MullvadがブラックリストとかDNS遅延で使い物にならなくなっちゃってさ。ユーザー拡大で人気大手みたいにきれいなIPプールを維持できてないのかも。国中のどのサーバーも無限にre-captcha出てくるし、ほんとひどかったよ。" userName="tomxor" createdAt="2025/05/28 16:33:38" color="#785bff">}}




{{<matomeQuote body="スレッド横取りしてごめんね、でも聞かずにはいられないんだ。Mullvadにとって、標準で検閲回避機能があるのは目標じゃないのかな？だって、検閲回避技術が良いVPNもあれば、プライバシー保証が良いVPNもあるけど、両方提供できるのは知らないんだよね。Mullvadが今提供してるのは、10年前の古い技術で、ちょっとしたDPIにもブロックされるか、設定が面倒でたまにIPBANされる（もっとモダンな）プロトコルブリッジかだし。" userName="reisse" createdAt="2025/05/29 16:13:11" color="">}}




{{<matomeQuote body="Mullvadの使命は大規模監視とオンライン検閲を無効にすること。だから、標準で優れた検閲回避機能を提供するつもりだよ。ただ、長い間プライバシーを優先してきたんだ。検閲回避の改善項目はロードマップにいくつかあるよ。乞うご期待！" userName="kfreds" createdAt="2025/05/29 17:51:26" color="#ff33a1">}}




{{<matomeQuote body="bitcoinとmonero払いを一番最初に採用したところの一つだし、もしすぐに全部キャッシュに変えてなかったら、今頃かなりいい感じなんじゃないかな。" userName="parkaboy" createdAt="2025/05/28 15:10:31" color="">}}




{{<matomeQuote body="俺の経験とはちょっと違うな。<br>＞ 国中のどのサーバーを使っても無限にre-captchaが出てくる<br>それどういう意味？クッキーも無効にしてるの？<br>普通、それってCloudflareのCAPTCHAじゃないの、re-captchaじゃなくて。知る限り、履歴ゼロの人もだいたいこうなるよ。モダンなWebへようこそ、だね。" userName="lysace" createdAt="2025/05/28 16:44:08" color="">}}




{{<matomeQuote body="あと、Tailscaleとの提携も大事だよ。うちの会社では開発者がTailscaleのMullvad VPN機能を使ってグローバルテストしてたんだ。”何かブロックされてないか、GEOIPをちゃんと検出できてるか”とかね。" userName="dijit" createdAt="2025/05/28 16:03:37" color="#45d325">}}




{{<matomeQuote body="名前の変更しないでほしいな。MullvadもLetaも気に入ってるよ。何もかもアングロサクソン中心じゃなくていいじゃん :) プライバシーはほぼゼロだけど、歴史的に面白いIT人物がいたから、名前の背景調べるとたどり着くかもね。[1] [2] [3] Peter Löthberg [4]" userName="NalNezumi" createdAt="2025/05/29 09:02:09" color="#ff5733">}}




{{<matomeQuote body="1年前からNew York Cityで看板とかバス広告見てたよ。だからこういうマーケティングは全然新しくないんだよね。" userName="bosse" createdAt="2025/05/28 15:10:25" color="">}}




{{<matomeQuote body="セキュリティならiVPNもいい選択肢だよ。STbootも使ってるし。でもあそこのIPも、Mullvadと同じような問題抱えてるから、目立ってないだけじゃないかな。" userName="INTPenis" createdAt="2025/05/28 17:52:15" color="">}}




{{<matomeQuote body="あんなに広告出せるってことは、どれだけ信頼できるのかなって心配だよ。人気が出れば出るほどlaw enforcementに狙われるだろうし、あいつらの言ってることをverifyする術なんてマジでないし。" userName="JCattheATM" createdAt="2025/05/28 19:27:04" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ねえ、くだらない考えだけどさ。昔はMullvadだけをtrustしてたんだよね、foundersがideologically motivatedに見えたから（なんかinterview読んだのかな、定かじゃないけど）。でもadvertisingってそれがundermineされる感じがするな。俺がnaiveだっただけかも。" userName="jxjnskkzxxhx" createdAt="2025/05/29 23:53:05" color="">}}




{{<matomeQuote body="それって、service側がお前をblacklistedにしてるのに、そうじゃないふりして、ひたすらcaptchaとか出してkeep you busyにする状況のこと言ってるんじゃない？" userName="zargon" createdAt="2025/05/28 17:00:40" color="">}}




{{<matomeQuote body="もうshadowsocksが見えるのはniceだね。いくつかのrejoinではV2rayとxray-coreがmustだから、trafficをmy device→xray→my server→wireguard mullvadってrouteしてるよ。Works for now I suppose。あとsyncthing relay networkでsmall amountsのtrafficを通すexperimentもしてて、locallyでrunningしてるrelaysがあるから、less restrictiveなprovinceにあるかもと思ってさ。" userName="acheong08" createdAt="2025/05/30 17:13:21" color="#ff5c5c">}}




{{<matomeQuote body="The Tailscale integrationはtraveling中にsuper handyだよ。my home serverとmy home regionにaccessするのにOne appで済むんだ。" userName="haiku2077" createdAt="2025/05/28 19:47:37" color="">}}




{{<matomeQuote body="俺はnameはchangeしないと思うな。ikeaみたいなbranding strategyだよ。”funny” nordic（specifically swedishだけど、other brandsはnorweiganとdanishでもやってる）namesで、some peopleにはquaintでqualityに見えるんだ。" userName="SahAssar" createdAt="2025/05/29 10:39:11" color="">}}




{{<matomeQuote body="＞ there’s definitely been a lottery win or a series A<br>俺たちはlotteryにもwonしてないし、outside investmentもtaken onしてないよ。何年もgrowingしてきて、こういうcampaignsができるpointにreachedしたんだ。It is an interesting experiment by our marketing team。Still、俺はpeople on HNはこういうcampaignsのcostをoverestimateしてると思うな。" userName="kfreds" createdAt="2025/05/29 07:15:18" color="#ff33a1">}}




{{<matomeQuote body="7月末にオンライン安全法ができるから、オフィスとか仕事以外でのUKのVPN利用、めっちゃ増えそうだよ。" userName="noir_lord" createdAt="2025/05/28 17:21:34" color="">}}




{{<matomeQuote body="英語の発音の話で、強く読まない母音が弱まる”schwa化”について解説してるよ。”Dolores”の発音は”duh lorr uhss”みたいになって、これがclitorisに似てるかどうかって議論に関連してるみたいだけど、筆者にはそんなに似てるように聞こえないってさ。発音の専門的な話だよ。" userName="philsnow" createdAt="2025/05/28 21:22:56" color="">}}




{{<matomeQuote body="うん、こういう大衆向けの広告ってなんか気持ち悪いんだよね。意図したのとは逆の効果がある気がする。プライバシーとかデータ衛生を重視する会社なのに、変なブランドの自傷行為に見えるよ。" userName="sillyfluke" createdAt="2025/05/28 22:37:03" color="#ff33a1">}}




{{<matomeQuote body="うん、なんかキャッチーな名前じゃなきゃね。”Rakuten”みたいに！" userName="Barbing" createdAt="2025/05/28 15:09:22" color="">}}




{{<matomeQuote body="正直言ってさ、俺がこれまで”clitoris”って言葉を聞いたり言ったりした限りでは、”Dolores”とは全然韻を踏んでないと思うんだ。だから俺も（もしそういうクイズとかだったら）全然分からなかっただろうね。" userName="trealira" createdAt="2025/05/28 21:30:04" color="">}}




{{<matomeQuote body="同じく（広告見たよ）、俺はDC空港の電車で見たけどね。彼らが自分たちのミッションと行動を一致させてるのが良いと思った。こういう物理的な広告は、ユーザーのプライバシーを尊重してるから、プライバシーツールを宣伝するのに完璧な方法だと思うよ。" userName="al_borland" createdAt="2025/05/28 22:24:29" color="#38d3d3">}}




{{<matomeQuote body="彼らはターゲット絞ったオンライン広告より屋外広告を好んでるみたいだよ。<br>ブログ記事もあるよhttps://mullvad.net/en/blog/advertising-that-targets-everyon..." userName="prophesi" createdAt="2025/05/28 15:20:05" color="#ff33a1">}}




{{<matomeQuote body="Mullvad関係者です。昔は広告反対だったけど、EU法反対のキャンペーンは成功（後で警察に捜索されたけど）。広告へのフィードバック感謝！信頼を損なう理由をもっと詳しく知りたいです。広告自体が問題？守れない保証や恐怖煽りはしてません。成長して変わる心配？" userName="kfreds" createdAt="2025/05/30 01:39:00" color="#ff5733">}}




{{<matomeQuote body="この広告、ここ数週間ロンドンのあちこちでめちゃくちゃ見たよ。<br>でも広告の意味がよく分からなかったし、製品が具体的に何をするものなのか全然分からなかったな。" userName="jonplackett" createdAt="2025/05/28 16:39:15" color="">}}




{{<matomeQuote body="これって新しいけど古いマーケティング戦略だと思うんだよね．みんなが見て気がつくくらいには面白くするけど、何だかわからないようにして、自分で調べに行かせるのを期待する感じ．大胆な戦略だけど、まだやってるってことは、時にはうまくいくんだろうね．" userName="diggan" createdAt="2025/05/28 16:49:35" color="#ff5c5c">}}




{{<matomeQuote body="これ、人に何これ？って聞き合いたくなるように仕向けてるんだよね．でも、二人ともそれを見たことがあって聞き合うためには、広告がかなり浸透してないとダメだよね．" userName="Sammi" createdAt="2025/05/28 17:41:51" color="">}}




{{<matomeQuote body="結局、俺も何だか分からなかったんだよ．記事のリンク見てもさっぱりで、”これ何”って入力してもダメだった．HNのコメント読んで、ようやくそれが検索プロキシだって分かったんだよね．" userName="throw432196" createdAt="2025/05/29 02:20:48" color="">}}




{{<matomeQuote body="FAQには、特定のプライバシー対策を完璧にしてる人にはLetaは役に立たないって書いてあるんだ．でも、フィンガープリンティングを完全に防げるブラウザなんてほぼないから、結局みんな役に立つんじゃない？ってことだよね．" userName="nalekberov" createdAt="2025/05/28 16:18:34" color="#ff5733">}}




{{<matomeQuote body="Mullvadはフィンガープリンティングに強いブラウザも作ってるんだよ．画面サイズを小さく表示して、よくあるPCとかスマホに見せかけるみたいなテクニックを使ってるんだ．Firefoxベースだから完璧じゃないけど、やらないよりは全然マシだよね．" userName="haiku2077" createdAt="2025/05/28 19:51:27" color="#38d3d3">}}




{{<matomeQuote body="ユーザーエージェントを隠してないような、マイナーなブラウザ使う方がフィンガープリンティングにはかえって悪いんじゃないかって議論もあるよね．" userName="VTimofeenko" createdAt="2025/05/28 17:05:24" color="">}}




{{<matomeQuote body="最近のGoogle検索をJSじゃなくHTMLで使うなら、Letaはほぼ唯一の方法で最高だよ．scroogle.com時代を思い出すね．レトロマシンで使えないのは残念．Mullvadには、集中CA TLSだけでなくHTTP+HTTPSもサポートして、政府の検閲に強い頑丈さも考えてほしいな．そうすれば古いマシンでも使えるのに．" userName="superkuh" createdAt="2025/05/28 15:20:47" color="#38d3d3">}}




{{<matomeQuote body="で、どうやって儲けてるの？VPNサービスにユーザーを誘導したいのかな？それとも、Google APIの無料枠制限内に収めようとしてるだけ？" userName="smallerfish" createdAt="2025/05/28 16:31:33" color="">}}




{{<matomeQuote body="LetaはMullvad Browserの公式検索エンジンで、Mullvad BrowserはMullvad VPNと連携するプライバシー版Firefoxだよ．Mullvad Browserと普通のネットの関係は、Tor BrowserとOnionサイトみたいかな．つまり、これはMullvadのVPN契約者向けエコシステムの一部ってこと．" userName="haiku2077" createdAt="2025/05/28 16:51:39" color="#45d325">}}




{{<matomeQuote body="前はMullvadの有料ユーザーだけが使えたサービスだったんだって。いつから一般公開したのかは知らないけど、最初はそれがビジネス的な意味だったんだよ。" userName="prophesi" createdAt="2025/05/28 16:54:00" color="">}}




{{<matomeQuote body="残念ながら、これDDGと違ってドメインのせいで職場でブロックされることが多いんだよね。" userName="taco_emoji" createdAt="2025/05/28 15:13:50" color="">}}




{{<matomeQuote body="うちの会社のネットワークでは、理由として”proxy avoidance”って書かれてるよ。" userName="hypeatei" createdAt="2025/05/28 15:38:57" color="">}}




{{<matomeQuote body="多くの職場では会社のファイアウォールを使ってて、管理者パネルで”Porn”とか”Adult themes”とかサイトのカテゴリごとに有効無効を設定できるんだ。”VPN”っていうカテゴリもあるかもで、*.mullvad.netがそこに入ってて無効になってるのかもね。会社の監視を回避するのは多くの職場でルール違反だから、そういう技術は色々禁止されてるんだよ。" userName="npteljes" createdAt="2025/05/28 17:24:17" color="#45d325">}}




{{<matomeQuote body="それって最悪だよね。だって、たくさんの開発者向けツールが”.dev”とか”.ai”みたいな”お行儀の悪い”ドメインにあって、自動的にブロックリストに入れられちゃうんだから。" userName="0cf8612b2e1e" createdAt="2025/05/28 18:02:49" color="">}}




{{<matomeQuote body="この場合”.ai”が自動的にフィルタリングされてるってわけじゃないと思うな。どっちかっていうと個別のケースだと思う。それでも最悪だけどね。”Adult themes”とかOpenDNSではすごく広い範囲を指してて、例えば聴いてた曲の歌詞を見たくてdarklyrics.comっていうサイトに行こうとしたんだけど、無理だった。だってAdult Themesだから。" userName="npteljes" createdAt="2025/05/28 20:38:40" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Lol 関係ないね。うちの会社、ホワイトリストに載ってないものは何もインストールさせてくれないし。<br>ホワイトリスト: （空）<br>ブラックリスト: *" userName="culopatin" createdAt="2025/05/29 04:56:39" color="">}}




{{<matomeQuote body="うん、うちでもブロックされてるの今気づいた。これで「こいつ要注意」リストにさらに載っちゃったかもね。どう扱うのが正しいか分からないけど、NSFWCP（職場で見ちゃダメなサイバーセキュリティポリシー）みたいなタグが一部のリンクにあればいいのにね。" userName="pugworthy" createdAt="2025/05/28 16:19:59" color="">}}




{{<matomeQuote body="こういう代替検索エンジンって、なんか「過去の戦い」をしてる感じするんだよね。Webのコンテンツってマジで読者に優しくないから、単にページへのリンクを出すんじゃなくて、探してる答えとか情報を抽出してくれるツールが必要なんだよ。" userName="xnx" createdAt="2025/05/28 15:55:46" color="">}}




{{<matomeQuote body="いや、実際そうじゃないと思う。AIの要約をいっぱい読んだけど、llmが同姓同名の全然違う二人の情報を混ぜて、存在しない誰かの伝記を作っちゃってるのを見たことあるし。それに、チャットボットがこの役割で広く使われるようになったら、企業が今の検索みたいに役に立たなくなるまでそれを弄り倒さないなんて、少しでも思わない方がいいよ。" userName="SirHumphrey" createdAt="2025/05/28 16:39:11" color="#785bff">}}




{{<matomeQuote body="Slack AIで困ったことがあって、一緒に働いてる複数の人の情報を混ぜて、ネガティブなトーンの要約を作っちゃったんだよね。もちろん、この有害な振る舞いについてフィードバックする手段は全くなかった。" userName="haiku2077" createdAt="2025/05/28 16:53:20" color="">}}




{{<matomeQuote body="もしdead internet theoryが実現したら、「キュレーションされたインターネット」みたいなのができて、良いプレイヤーだけが参加できるようになるのかな、ってちょっと思うよ。" userName="hart_russell" createdAt="2025/05/28 18:36:28" color="">}}




{{<matomeQuote body="ユーザー情報の扱い－何を収集して、どれくらい保持して、何に使われるのか－って、どこに書いてあるの？Mullvadなら何も収集しないって言うと思うけど、どこかに書いてあるのかな？プライバシーポリシーとかある？<br>追記：書いてあるのは、GoogleとBraveから俺たちを守ってくれるってことだけだね。<br>＞キャッシュに検索がない場合、僕らのサーバー（leta.mullvad.net）が君の代わりに検索エンジンに問い合わせるよ。検索クエリだけが送られて、個人データは一切共有されない。<br>＞返される検索結果には、最終目的地へのダイレクトリンクだけが含まれるんだ。全てのトラッキング要素とサードパーティコンテンツは、君のプライバシーを守るために削除されてる。" userName="mmooss" createdAt="2025/05/28 23:20:55" color="#ff33a1">}}




{{<matomeQuote body="ネガティブになっちゃってごめんね。でも、僕にはただの宣伝活動にしか見えないんだ。本気で開発された製品じゃなくて、単なるGoogleのプロキシ。面白い試みだけど、本当の解決策じゃないよね。でも、VPNをプロモーションするためのマーケティング戦略としては、面白い一手だと思う。" userName="jeanlucas" createdAt="2025/05/28 16:12:46" color="">}}




{{<matomeQuote body="Googleのキャッシュプロキシは、現実の問題に対する本当の解決策だよ。君が抱えてる問題への解決策じゃないかもしれないけどね。" userName="lolinder" createdAt="2025/05/28 16:31:00" color="">}}




{{<matomeQuote body="君が俺が抱えてないと思ってるニッチな問題には解決策になるね。でも、これってちゃんと収益化する手段がないし、マーケティングとか宣伝の目的と合わなくなったら、すぐ閉鎖されそうなんだ。僕が指摘したかったのはそういうことだよ。" userName="jeanlucas" createdAt="2025/05/28 17:53:22" color="">}}




{{<matomeQuote body="Googleのプロキシなだけで、まじめな製品じゃないし、本当の解決策じゃないでしょ。面白いけどね。" userName="mystified5016" createdAt="2025/05/29 17:42:58" color="">}}




{{<matomeQuote body="これがどういう意味かよくわかんないな。だって実際に使える本物なんだから、明らかに”ただの宣伝活動”じゃないでしょ。" userName="skeaker" createdAt="2025/05/28 16:47:45" color="">}}




{{<matomeQuote body="つまり、これを実行可能な製品だとは思ってないんだ。コストが高くなったり、宣伝の目的が達成されたりしたら、すぐに閉鎖されると思うよ。" userName="jeanlucas" createdAt="2025/05/28 17:52:12" color="">}}




{{<matomeQuote body="彼らが開発を手伝った技術を使って、検索サーバーを完全に安全に、しかも状態を持つデータなしで動かしてるんだから、宣伝活動なんかじゃないって。" userName="INTPenis" createdAt="2025/05/28 17:53:16" color="#ff5733">}}




{{<matomeQuote body="うーん、そう言われるとより納得できるな。でも、私はやっぱりこれが実行可能な製品だとは思わないんだ。" userName="jeanlucas" createdAt="2025/05/28 19:49:46" color="">}}




{{<matomeQuote body="わかんないけど、”無料アニメ配信サイト”を検索してみたら、最初の結果で目的が達成できたよ。たぶん、意図した通りに動いてるんだと思うな。" userName="afroboy" createdAt="2025/05/29 12:50:26" color="#ff5c5c">}}




{{<matomeQuote body="Googleのプロキシでも、Googleだけじゃ提供できない追加機能があるなら製品でしょ…この場合はプライバシーだよね。" userName="xlt" createdAt="2025/05/28 18:08:12" color="#ff5c5c">}}




{{<matomeQuote body="僕の理解が正しければ、これもう2年も動いてるらしいよ。" userName="mmooss" createdAt="2025/05/28 23:16:49" color="">}}




{{<matomeQuote body="キャッシュがどれだけうまく動くのか気になるな。FAQには30日って書いてあるから、かなり古い結果が出るかもね。それにGoogleの”面白い事実：Google検索の15%はこれまで一度も検索されたことがない”ってのと合わせると、これらのクエリがどれだけ個人を特定しうるのか、ちょっと心配になるな。" userName="Zefiroj" createdAt="2025/05/28 15:44:28" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
