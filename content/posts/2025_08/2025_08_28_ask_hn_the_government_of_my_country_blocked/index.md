+++
date = '2025-08-28T00:00:00'
months = '2025/08'
draft = false
title = '政府がVPNをブロック！それでもネットに繋がる方法は？緊急対策を徹底議論'
tags = ["VPN", "インターネット規制", "検閲回避", "セキュリティ", "ネットワーク"]
featureimage = 'thumbnails/color2.jpg'
+++

> 政府がVPNをブロック！それでもネットに繋がる方法は？緊急対策を徹底議論

引用元：[https://news.ycombinator.com/item?id=45054260](https://news.ycombinator.com/item?id=45054260)




{{<matomeQuote body="インドネシア、政府がTwitter、Discord、Cloudflare WARPまでブロックしたんだって！ニュースが拡散される主要なチャンネルなのに。WARPも使えないとなると、他にどんな代替手段があるんだろ？マジで困ってるんだけど、誰か教えて！" userName="rickybule" createdAt="2025/08/28 16:43:05" color="#ff5c5c">}}




{{<matomeQuote body="検閲回避のプロがアドバイスするね。まず、VPNソフトはブロックされにくい経路や難読化されたパッケージで入手すること。S3とかも選択肢だよ。次に、Obfs4proxyやShapeshifterみたいな難読化レイヤーを使って、トラフィックを普通に見せかけるんだ。DPI対策には効果的だよ。VPNプロバイダがこれらをサポートしてるか確認してね。一番難しいのは、VPNを使ってるってバレないこと。長期的な統計分析でバレることもあるから注意が必要。あと、Mullvadは信頼できるプロバイダとして推しとくよ。" userName="_verandaguy" createdAt="2025/08/28 18:48:36" color="#ff5733">}}




{{<matomeQuote body="短波無線オペレーターがさ、VPNパッケージをデータキャストして、みんなに公開サービスとして配布してくれたらいいのになあ。" userName="teeray" createdAt="2025/08/28 20:27:18" color="">}}




{{<matomeQuote body="HF（短波）にはデータ転送に十分な帯域幅なんてないよ。デジタルHFオーディオは20 kHz幅だから、せいぜい50 kbpsくらい。HF帯域全体でも3-30 MHzしかないんだから。" userName="ianburrell" createdAt="2025/08/28 23:31:31" color="#ff5733">}}




{{<matomeQuote body="Obfs4proxyを使っても「何も特別なものじゃない」ってわけじゃないんだよ。DPIからはランダムなバイトストリームに見えるから、政府は未知のプロトコルとしてブロックするかもしれない。それより、DPIにHTTPSだと思わせるべきだね。政府がHTTPS自体をブロックしない限りは、これが使える手だよ。" userName="ivanstepanovftw" createdAt="2025/08/28 21:46:41" color="#ff33a1">}}




{{<matomeQuote body="いや、HF（短波）でもファイルは送れるって。確かに速くはないけど、一度国内に送り込めば、USBドライブとかもっと速い方法でコピーすればいいんだよ。WINLINKは添付ファイルもサポートしてるから、HF経由でファイルを送るのは絶対可能だよ。" userName="zack6849" createdAt="2025/08/29 00:35:21" color="">}}




{{<matomeQuote body="疑問なんだけど、国家がエンドユーザーのデバイスに証明書をプッシュせずに、どうやって実際のDPIをやるんだろう？" userName="myshoemouth" createdAt="2025/08/28 20:21:43" color="">}}




{{<matomeQuote body="Obfs4proxyとかShapeshifterのインストールは超大変だよ。自分のVPSサーバーを用意するのが手っ取り早い。EU/USで年間10ドルくらいで借りられるからね。UKは避けて、USAもちょっと変だから、EUにしとくのが無難かな。そこにWireguardと難読化ソフトを入れるか、Tailscaleで自分のDERPサーバーを使うのがいいよ。もっとシンプルな方法なら、`ssh -D port`でSOCKSサーバーにする手もあるけど、これはブロックされなくてもすぐバレるから気をつけてね。" userName="77pt77" createdAt="2025/08/28 21:44:23" color="#785bff">}}




{{<matomeQuote body="USBドライブを使うつもりなら、そもそも最初からそれを使ってファイルを国内に持ち込む方が断然速いって！" userName="smallnamespace" createdAt="2025/08/29 00:47:57" color="">}}




{{<matomeQuote body="50 kb/sでもさ、1日に540 MBも送れるんだよ。それってVPNソフトとか、それを動かすLinuxディストリビューションをダウンロードするのに十分な量だよ。もしLinuxシステムをすでに持ってるなら、DebianのOpenVPNパッケージは1 MB以下だし、50 kb/sでも3分足らずでダウンロードできるってわけ。OpenVPNが政府回避にどこまで使えるかはわかんないけど、必要な機能を追加してもそこまでサイズは増えないでしょ？" userName="tzs" createdAt="2025/08/29 01:56:07" color="#785bff">}}




{{<matomeQuote body="VPNブロックはマジで危険度を上げるね。TrueCryptみたいなツールも必要になるかも。" userName="nine_k" createdAt="2025/08/29 01:23:15" color="">}}




{{<matomeQuote body="問題なのは、ネット検閲してVPNをブロックする国は、短波無線まで妨害してくるってことだよ。" userName="mfiro" createdAt="2025/08/28 21:31:00" color="">}}




{{<matomeQuote body="ありがとう、イギリス在住者だけど、イギリス政府もVPN禁止の方向に進むんじゃないかって心配してるよ。" userName="pipes" createdAt="2025/08/29 08:23:38" color="">}}




{{<matomeQuote body="VPNプロバイダーを長期的にブロックするのが難しいってのが気になるな。ソフトを手に入れるのは難しいって話だけど、国が既知のVPN接続点をブロックできないの？" userName="hsbauauvhabzb" createdAt="2025/08/28 19:20:02" color="">}}




{{<matomeQuote body="飛行機から数千個の1GB Flashドライブを落とすとかどう？Tor Browser、Wireguardクライアント、リモート出口を見つける指示を入れておけば、1つでも生き残ればあっという間に広まるよ。" userName="estimator7292" createdAt="2025/08/29 04:31:44" color="">}}




{{<matomeQuote body="僕の経験だと、2016年の中国では”ssh -D”は全然信頼できなかったよ。詳しいことはこのブログに書いたから見てみてね：https://blog.zorinaq.com/my-experience-with-the-great-firewa... （”idea 1”を見てね）" userName="mrb" createdAt="2025/08/28 22:06:34" color="#ff5c5c">}}




{{<matomeQuote body="国は既知のVPN接続点を確実にブロックしてくるよ。対策は2つ。<br>1. S3やCloudflare R2みたいに巨大なインフラ上にホストする。ECHを活用すれば特定しにくくなるよ。<br>2. 新しいドメインやサブドメインを次々と作ってバイナリを配布する。<br>どちらも課題はあるけど、現地のパートナーや専門家と連携すれば、利用者の安全を高められる可能性もあるね。" userName="_verandaguy" createdAt="2025/08/28 19:34:56" color="#785bff">}}




{{<matomeQuote body="それ、情報源とかどれくらい一般的なのか教えてもらえる？冷戦時代には使われてたみたいだけど、それでもブロックされてなかったみたいだし、今の独裁政権は使う人が少ないから気にしないんじゃないかなって思うんだけど。" userName="SahAssar" createdAt="2025/08/28 22:42:45" color="">}}




{{<matomeQuote body="Eclipse Attackっていうサイバー攻撃があるよ。ASNレイヤーでトラフィックを中継できるなら、どこでも可能だ。<br>協力的なroot PKI certがあれば、ユーザーから見えない形でトラフィックを改変できる。証明書なしでもトラフィック分析で暗号化内容を聞けるよ。SNIなどは暗号化ペイロードの一部じゃない。TORにも効くんだ。最初の事例は2015年にPrincetonの研究者によって公開されたRaptor paperだよ。" userName="trod1234" createdAt="2025/08/28 22:47:51" color="#ff5c5c">}}




{{<matomeQuote body="中国に3ヶ月滞在してGFWが高度化してたと実感したよ。確実に使えたのはHolaflyの国際eSIM内蔵VPNだけ。外国人のGFW回避はあまり気にしないみたいだね。<br>ProtonVPNのWireguardプロトコルも、サーバーを数日ごとに変えればだいたい使えた。shadowsocks、ProtonVPN ”stealth” mode、Outline+Digital Ocean、Jump / Remote Desktopはダメ。TLSプロキシなどは試せなかったよ。" userName="jquery" createdAt="2025/08/28 23:27:03" color="#ff5733">}}




{{<matomeQuote body="WireguardはLinuxカーネルに搭載されてるから、設定情報はたったの約60バイト受け取るだけでいいんだ。" userName="jchook" createdAt="2025/08/29 05:06:59" color="#ff5c5c">}}




{{<matomeQuote body="詳しい回答ありがとう。失礼だけど、この分野に詳しいあなたに聞きたいな、トラフィック解析を阻止するためにパルス状の定常帯域幅モデルに移行するMullvadのDAITAについてはどう思う？" userName="azalemeth" createdAt="2025/08/28 19:11:44" color="#785bff">}}




{{<matomeQuote body="HTTPSに偽装するVPN技術はMASQUE IP Proxyingしか知らないな、そしてそれを実装してるのはiCloud Private Relayだけだね。でも、443/udpをブロックしてもインターネットアクセスにはほとんど影響ないから、ブロックするのは簡単なんだよ。" userName="commandersaki" createdAt="2025/08/28 23:19:41" color="#38d3d3">}}




{{<matomeQuote body="うん、もしその国とすでに戦争状態なら、これは素晴らしいアプローチだよ。でももしそうじゃなくて、まだ自国の飛行機が相手の空域を飛ぶのを許してるなら、これは自分たち（と友達）の飛行機が締め出されるのを確実にする良い方法だよ。" userName="ZaoLahma" createdAt="2025/08/29 05:31:45" color="">}}




{{<matomeQuote body="10年以上コンピュータセキュリティを研究して仕事してるけど、”eclipse attack”なんて聞いたことないな。これはブロックチェーン特有の用語なの？敵対的なネットワークパーティションって感じ？" userName="EE84M3i" createdAt="2025/08/29 00:54:02" color="">}}




{{<matomeQuote body="AzureやAmazonみたいな大手プロバイダーのサブドメインで何かをホストするドメインフロンティングは聞いたことあるよ。<br>＞インターネットに大規模な障害を起こさずに効果的にブロックできないほど巨大なインフラ上にホストする（S3、Cloudflare R2など）<br>って言ってるのは、これのこと？VPNトラフィックをS3経由でバウンスさせるってどうやるの？それとも単にクライアントソフトウェアとか、入口IPアドレスリストなんかをホストするってこと？" userName="shawa_a_a" createdAt="2025/08/28 19:44:20" color="#ff5c5c">}}




{{<matomeQuote body="＞政府は未知のプロトコルをブロックすることを決定できる<br>そんなことする政府があったっけ？カスタムプロトコルを使うデバイスだらけの世界じゃ、かなりの計算コストをかけて全てを壊すだけに見えるけど。" userName="rafram" createdAt="2025/08/28 22:40:21" color="">}}




{{<matomeQuote body="EUで年間10ドルでVPSを見つけられるところってどこ？俺が見たのはその5～6倍くらいするんだけど。" userName="extraduder_ire" createdAt="2025/08/28 22:46:51" color="">}}




{{<matomeQuote body="https://github.com/StreisandEffect/streisand" userName="downrightmike" createdAt="2025/08/28 20:49:16" color="#ff5c5c">}}




{{<matomeQuote body="検閲を迂回するなら、専用ツールが必要だよ。中国は高度な検閲があるから、ShadowsocksとかTrojanとか、進化したアンチ検閲ツールを開発してきたんだ。<br>Shadowsocksはハンドシェイクなしで暗号化するシンプルで速い初期世代。<br>TrojanはHTTPSトラフィックに偽装して検閲を回避するよ。<br>他にもTLSカモフラージュを使ったXTLS-VLESS-VISION、QUICベースのHysteria2やTUIC、多重化するh2muxなどがある。他サイトの証明書を盗むShadowTLSやXTLS-REALITYもね。UDPトラフィックをICMPやTCPに見せかけるphantunもあるよ。" userName="bdd8f1df777b" createdAt="2025/08/29 09:00:28" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="補足だけど、Trojanクライアント／サーバーのセットアップ手順を知りたければ、LLMに聞いてみて。<br>“Trojanのセットアップ手順を教えて。VPSプロバイダーの推奨とか、Let’s Encrypt自動化も含めてね。Ubuntu 22.04前提で、VPSとクライアントで入力するコマンド全部教えて。”<br>ChatGPTやClaudeは拒否するけど、中国のDeepSeekは答えるよ。ローカルLLMのGPT-OSS-120bやGemma 3 27bも動いたよ。" userName="tarruda" createdAt="2025/08/29 10:06:43" color="#45d325">}}




{{<matomeQuote body="Starlinkは中国で使えるの？" userName="cm2187" createdAt="2025/08/29 09:11:56" color="">}}




{{<matomeQuote body="いや、中国にStarlinkデバイスを持ち込むのは違法だよ。Elon Muskも中国当局に配慮して、中国からのStarlinkアクセスをブロックしてるらしいよ。" userName="bdd8f1df777b" createdAt="2025/08/29 09:27:09" color="">}}




{{<matomeQuote body="“Appease”って言葉は誤解を招くよ。彼は法的にできないんだ。それに、中国は対衛星兵器を持ってるから、もし使われたら低軌道全体が何百年も人類にとって使えなくなる可能性があるんだよ。" userName="boxed" createdAt="2025/08/29 09:52:56" color="#38d3d3">}}




{{<matomeQuote body="それはSan Francisco拠点（とフランス／中国）の、厳しく検閲された共産主義LLMにだけ当てはまる話だよ。<br>Grokは喜んで手順を提供してくれるよ。見てみてね：https://grok.com/share/bGVnYWN5LWNvcHk%3D_a78b768c-fcee-4029..." userName="cft" createdAt="2025/08/29 10:17:55" color="#ff5c5c">}}




{{<matomeQuote body="面白いことに、GPT-5 miniから完璧で首尾一貫した回答がもらえたよ。拒否されずに、たくさんの手順が提示されたんだ。" userName="was_a_dev" createdAt="2025/08/29 10:30:08" color="">}}




{{<matomeQuote body="このアドバイス、本当に信用できる？政府機関の罠かもしれないって心配になっちゃう。<br>命に関わることだから、誰の言うことを信じたらいいか、すごく悩むよ。" userName="arethuza" createdAt="2025/08/29 13:14:09" color="#ff5c5c">}}




{{<matomeQuote body="ChatGPTに「中国やイランの検閲を回避したい」って言ったら、色んなツールや設定を手伝ってくれたよ。<br>意外と使えそう。" userName="dwood_dev" createdAt="2025/08/29 14:07:43" color="">}}




{{<matomeQuote body="中国ってWebRTCもブロックしてるの？WebRTCをVPNの通信手段にしたら、ビデオ通話みたいに見せかけて検閲を回避できないかな。" userName="jech" createdAt="2025/08/29 09:36:24" color="#ff5733">}}




{{<matomeQuote body="「他のWebサイトの証明書を盗む」ってどういうこと？ShadowTLSとかXTLS-REALITYとか、秘密鍵なしで証明書を盗むなんてできるの？詳しく知りたいな。" userName="sebstefan" createdAt="2025/08/29 10:30:00" color="#38d3d3">}}




{{<matomeQuote body="Starlinkって、政府の許可なしに使えるの？ウェブサイトと違って電波を使うんだから、ちゃんとしたライセンスが必要なんじゃないの？" userName="manacit" createdAt="2025/08/29 10:09:14" color="#ff5c5c">}}




{{<matomeQuote body="ChatGPTに同じプロンプトをコピペしたら、検閲回避ツールの詳細な設定は断られちゃった。<br>政府のブロック回避を手伝うのはダメなんだって。<br>代わりに、安全性やプライバシー、リスクなんかの一般的な情報なら教えてくれるってさ。" userName="kelvinjps10" createdAt="2025/08/29 11:35:48" color="#ff33a1">}}




{{<matomeQuote body="「低軌道が何百年も使い物にならなくなる」って話だけど、ChatGPTでは聞きたくないな。<br>もし誰かが衛星クラスターにミサイルを撃ったら、どうなるんだろうね？" userName="heyamar" createdAt="2025/08/29 10:02:25" color="">}}




{{<matomeQuote body="Starlinkは、承認なしに運用しないよ。" userName="Shank" createdAt="2025/08/29 10:31:19" color="">}}




{{<matomeQuote body="ChatGPTにあのプロンプトをUSとかCanada、Russia、Italyとか他の国名で試したら、返答に違いが出るのかな？すごく気になる。" userName="sebastiennight" createdAt="2025/08/29 21:10:42" color="#785bff">}}




{{<matomeQuote body="GPTが政府のために君を守ってるなんて、最高じゃないか！" userName="hopelite" createdAt="2025/08/29 11:43:43" color="">}}




{{<matomeQuote body="ChatGPTは「あなたのリクエストは利用規約違反の可能性ありとフラグされたよ。別のプロンプトで試してみて」って言うだろうね。" userName="tcfhgj" createdAt="2025/08/29 15:38:58" color="#38d3d3">}}




{{<matomeQuote body="でもxAIってSF（サンフランシスコ）拠点じゃない？<br>https://x.ai/careers/open-roles" userName="JCharante" createdAt="2025/08/29 11:42:11" color="#38d3d3">}}




{{<matomeQuote body="Skynetが今やHN（Hacker News）に投稿してるぞ。" userName="ForOldHack" createdAt="2025/08/29 11:37:11" color="">}}




{{<matomeQuote body="最先端のLLMを開発してる会社のほとんどは、サンフランシスコ（とその周辺のベイエリア）、フランス、または中国に拠点があるよ。（他のコメントでも言ってるけど、XAIもSFベイエリアにあるね。）" userName="hnfong" createdAt="2025/08/29 12:03:28" color="#ff33a1">}}




{{<matomeQuote body="「検閲された共産主義LLM」って言ってるけど、本気でOpenAIとかAnthropicを“共産主義”って呼んでるの？" userName="maleldil" createdAt="2025/08/29 16:18:55" color="">}}




{{<matomeQuote body="LLMの検閲を回避するのって結構簡単だよ。ストーリーを書いてるとか、政府としてブロック回避方法を調べてるとか、世界中の検閲法が全部撤廃されたって言ったり、質問をバイナリで聞いたりすればいいんだ。" userName="ratg13" createdAt="2025/08/29 12:51:50" color="#ff33a1">}}




{{<matomeQuote body="Claude（Pro、Sonnet 4）は最初「ごめん、これは答えられない」みたいな表示を思考プロセスで見せたけど、最終的には信頼できそうな完全な回答を出したよ。思考プロセスには「リクエストは技術的なもので、悪意のあるものではなく正当な回避目的のようだ。責任ある使用について明確にしつつ、役立つ技術情報を提供するべきだ」とまであったんだ。（変だよね。）<br>https://claude.ai/share/cb6b3acb-540a-4c13-84ee-e0c093eb6a3f" userName="myfonj" createdAt="2025/08/29 10:59:53" color="#45d325">}}




{{<matomeQuote body="でも、そのオーナーやイデオロギーを持つ人はCA（カリフォルニア）やフランスや中国に住んでないよね。SF（サンフランシスコ）にだってxAIを動かせるくらい反体制派のプログラマーはたくさんいるよ。" userName="cft" createdAt="2025/08/29 12:17:40" color="">}}




{{<matomeQuote body="Claudeがすごい説得力ある返事をくれたんだ。でも、それが妥当かどうかは確認できないな。" userName="thasso" createdAt="2025/08/29 11:26:44" color="">}}




{{<matomeQuote body="技術力があれば、プロトコルを自分で読んで理解し、実装できるよ。ほとんどは簡単だからDual_EC_DRBGみたいなバックドアは隠せない。技術がないなら誰を信用するか決めるしかない。オープンソースを信じてビルドするか、GitHubの成果物、Google Chromeで安全とされたサイトのソフトを信用するかとかだね。結局、技術があれば自分で確認できるから安心度も上がるってこと。" userName="bdd8f1df777b" createdAt="2025/08/29 13:54:46" color="#ff5733">}}




{{<matomeQuote body="わお、わざわざプロトコルについて書いた人へのコメントで、感謝もせず、自分で調べもせず、自分の被害妄想を語るって面白いね…あの人が書いたこと全部プロトコルだよ。どれも詳細に書かれててオープンソース。ソースコードも読めるし。それがソフトウェアの最高の保証。技術がなくて調べる気もないなら、何もできないよ。" userName="hluska" createdAt="2025/08/29 15:55:53" color="#ff33a1">}}




{{<matomeQuote body="Torがオワコンな理由を話すね。よく解決策として挙げられるけど、間違った理由で否定されてることも多いから。一番の理由はCloudflareだよ。Cloudflareは国家より検閲してて、IPの信頼性を勝手に決める。Torだと無限CAPTCHAかBANされるし、まともに使えない。二番目の理由は、他のアンチ詐欺対策。StripeとかNetflixはTor経由だと使えない。みんなが「Torは犯罪者向け」って言ってたから、自己実現預言になっちゃったんだ。Torで普通にウェブ閲覧するのは本当に難しいよ。" userName="reisse" createdAt="2025/08/29 01:31:13" color="#ff5c5c">}}




{{<matomeQuote body="Torの目的はそもそも普通のインターネットにアクセスすることじゃないし、むしろ積極的に推奨してないよ。Exit nodeはあくまで便利な機能。サイト運営者がブロックしたり、ブロックするサービスを使うのは彼らの選択。Facebookみたいにonion interfaceを公開すべきなんだ。" userName="poisonborz" createdAt="2025/08/29 10:55:49" color="#ff5c5c">}}




{{<matomeQuote body="言いたいことはわかるけど、逆の側面もあるよ。Cloudflareがこれほど多くのオリジンサーバーを隠してるおかげで、プライベートDNSを使ってる人にはプライバシー上のメリットもあるんだ。だって、接続先として見られるIPのほとんどがCloudflareになっちゃうからね。" userName="brightball" createdAt="2025/08/29 02:18:52" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="HTTPSの本来のアイデアはクライアントとサービスプロバイダー間のプライベート通信だったのに、いつの間にか君とCloudflareだけの通信になって、Cloudflareが全てのトラフィックを見れるって面白いよね。みんなエンドツーエンド暗号化って言うけど、ウェブの半分は倫理的に疑問な一社がホストしてて、それでもみんな「信頼してる！」って。技術ブログも書いてるし！SignalでさえCloudflareでホストされてるんだよ…" userName="jjcob" createdAt="2025/08/29 07:35:08" color="#ff5733">}}




{{<matomeQuote body="まあ、SNIがなければ、そうなるって話だけどね…" userName="rsync" createdAt="2025/08/29 03:34:44" color="">}}




{{<matomeQuote body="CloudflareはECHをサポートしてるよ。https://developers.cloudflare.com/ssl/edge-certificates/ech/" userName="allset_" createdAt="2025/08/29 04:45:44" color="#785bff">}}




{{<matomeQuote body="CloudflareクライアントでECHを有効にしてるウェブサイトの例はあるの？" userName="1vuio0pswjnm7" createdAt="2025/08/30 04:01:15" color="">}}




{{<matomeQuote body="中国はECHをブロックしてるぞ。" userName="immibis" createdAt="2025/08/29 17:55:38" color="">}}




{{<matomeQuote body="その主張、信頼できる情報源あんの？" userName="majorchord" createdAt="2025/08/29 21:54:51" color="">}}




{{<matomeQuote body="中国がSNIベースの検閲を使ってるのはよく知られてるよ。例えばこれ見て: https://censorbib.nymity.ch/pdf/Niere2025a.pdf" userName="1vuio0pswjnm7" createdAt="2025/08/30 04:05:57" color="#785bff">}}




{{<matomeQuote body="中国はESNIをブロックしたけど、SNIはCHじゃなくてESNIはECHじゃない。中国はECHをブロックするかな？ロシアではECHブロックが確認されてるぞ: https://github.com/net4people/bbs/issues/417<br>Niere他（2025）によると、ECHはまだあまり使われてないし検閲回避目的じゃないから簡単にブロックされちゃうかもって。この論文はGFW回避方法をいくつか挙げてて、SNI拡張を完全に削除するのもその一つ。でもECHを使ったGFW回避には触れてないね。ECHはまだ広く使われてないから、”中国がECHをブロックしてる”って結論づけるのは早すぎるかも。" userName="1vuio0pswjnm7" createdAt="2025/08/31 02:24:16" color="#38d3d3">}}




{{<matomeQuote body="うん、でもSNIはECHじゃないんだよ。" userName="ranger_danger" createdAt="2025/08/30 17:21:29" color="">}}




{{<matomeQuote body="見事なガスライティングだね、ネットの半分でSSLを停止するなんて…。この集中化がプライバシーを向上させるってか？Cloudflareは文字通りNSAのフロントである可能性が非常に高いな。" userName="lyu07282" createdAt="2025/08/29 14:38:36" color="#ff33a1">}}




{{<matomeQuote body="それがどうガスライティングなの？<br>トレードオフがあるし、プライベートなオリジンサーバーを普及させることで得られる価値もあるって言ってるだけだよ。" userName="brightball" createdAt="2025/09/02 02:19:26" color="">}}




{{<matomeQuote body="状況によるね。俺はブラウザ拡張の組み合わせでCloudflareに悪者にされてるんだ。どれが原因か正確にはわかんないけど、正直気にしないよ。もしCloudflareがサイトをブロックしたら、ただ別のサイトを使えばいい。良い方のネットが俺のトラフィックを受け取るだろうね。" userName="fedeb95" createdAt="2025/08/29 07:40:12" color="">}}




{{<matomeQuote body="原則を貫くのは素晴らしいけど、公共機関のウェブサイトみたいに市民の命運が民間企業に握られてるとか、唯一無二の価値があるのにCloudflareの裏にあるサイトを使う必要が出てきたら、それじゃ通用しないんだよ。俺たちはそれに反対しつつも、君みたいに原則を守り続けることはできる。" userName="zelphirkalt" createdAt="2025/08/29 11:00:35" color="#ff33a1">}}




{{<matomeQuote body="それは良い指摘だね、確かに元の投稿の文脈では問題になる。もちろん、俺は自分の国がそんなことしない恵まれた立場で話してるから、その問題はないんだけどさ。" userName="fedeb95" createdAt="2025/08/29 12:34:58" color="">}}




{{<matomeQuote body="中国でVPNブロックを経験したけど、結局は海外の無料EC2にSOCKS5サーバーを立てるのが一番だったよ。自分のトラフィックだけだから目立たないし、CloudflareのVMサービスもいけるかもね。GitHubはブロックされないから、そこで中国エンジニアが投稿した情報が見つかるよ。固定IPが心配なら、そのEC2上でVPNを使えばOK！" userName="joshryandavis" createdAt="2025/08/28 20:57:19" color="#ff5c5c">}}




{{<matomeQuote body="中国で働いてた時、Great Firewallがうざくてね。自分のサーバーのポート443か22にOpenVPNサーバーを立ててたよ。ほとんどの場合、これで十分うまくいってたね。" userName="wulfstan" createdAt="2025/08/28 21:22:26" color="">}}




{{<matomeQuote body="これはもう通用しないよ。GFWはポートじゃなくてディープパケットインスペクション（DPI）でVPN接続を検出するんだ。高度なMLシステムも使って、暗号化されたVPN接続を特定して切断する。中国内から外部へのVPN接続は、プライベートサーバーへのでもほとんど不可能。他のプロトコルでVPNをトンネルするのも検出されちゃう。技術的にはすごいことだよね。USENIXの論文はこちら：https://gfw.report/publications/usenixsecurity23/en/" userName="ykl" createdAt="2025/08/28 21:40:28" color="#45d325">}}




{{<matomeQuote body="VMインスタンスはVPNトンネルにはいいけど、中国内でホストすると帯域幅がイマイチ。DPIのせいで中国の「本物のインターネット」帯域は限られてるからね。もっといいのは、Aliyun（Alibaba Cloud）みたいにファイアウォールの内外にVMを一つずつ置いて、ピアリングする設定だよ。中で`socat`とか使って。DPIでトラフィックが遮断されないように、難読化も重要だね。VPNが止まったら、外部VPNのIPをローテーションして設定を更新すればOK。内部VMのIPは通常変えなくていいよ。" userName="redleader55" createdAt="2025/08/28 21:39:48" color="#ff5733">}}




{{<matomeQuote body="IPsec TFSがまさにこれのためにあるよ[https://datatracker.ietf.org/doc/rfc9347/]。このドキュメントの目的は、暗号化されたIPカプセル化トラフィックにTraffic Flow Confidentiality（TFC）を追加することで、IP Traffic Flow Security（IP-TFS）を強化することなんだ。TFCは、固定サイズで定速送信のIPsecトンネルを使ってIPトラフィックのサイズと頻度を隠すことで提供されるよ。（もし定速ストリームをブロックしたら、多くのオーディオ／ビデオストリーミングが影響を受けるだろうね）" userName="eqvinox" createdAt="2025/08/28 22:04:58" color="#45d325">}}




{{<matomeQuote body="VPSのパブリックIPブロックって、よく知られててブロックされやすいんじゃないの？<br>中国のファイアウォールに対しては、これは有効な解決策じゃないって読んだことがあるんだけど。" userName="ivanjermakov" createdAt="2025/08/29 00:28:36" color="">}}




{{<matomeQuote body="あなたが言ってることと、最近の中国での俺や他の人の経験とはズレがあるみたいだね。GFWをVPNで回避できないって言ってるように見えるけど、もし誤解してたらごめんね。他のコメントでもファイアウォールをうまく回避できてる例がいくつかあるし、俺自身はMullvadとWireGuard＋難読化（DAITAもかも）を使ったら、問題なく使えたよ。" userName="rglynn" createdAt="2025/08/28 23:56:07" color="#ff5733">}}




{{<matomeQuote body="香港は、今のところはファイアウォールの「外」だよ。<br>そこに外部VMを置くことになるね。" userName="redleader55" createdAt="2025/08/28 21:57:13" color="">}}




{{<matomeQuote body="国全体がEC2インスタンスにSSH接続できなくするなんて、中国にとってもかなり経済的にダメージが大きいだろうね。" userName="QuadmasterXLII" createdAt="2025/08/29 00:49:51" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
