+++
date = '2025-02-18T00:00:00'
draft = false
title = 'Pi-hole v6が登場！ネット環境が劇的に改善される理由とは？'
tags = ["Pi-hole", "ネットワーク", "広告ブロック", "DNS", "ソフトウェア"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> Pi-hole v6が登場！ネット環境が劇的に改善される理由とは？

引用元：[https://news.ycombinator.com/item?id=43093328](https://news.ycombinator.com/item?id=43093328)

{{<matomeQuote body="最近Pi-holeを始めたんだけど、基本的な機能がないのに驚いたよ。リクエストが実際にはブロックされず、ログにはブロックされるはずのものが表示される“ドライラン”みたいな機能がないのが重要なんだ。導入する前にネットワークの動きを見て修正したいんだよね。別のクライアントごとに異なる設定ができないのも困る。スマートテレビ用の厳しいリストと、スマホのリストを分けたいんだけど、ユーザーエラーかもしれないけどUIは分かりづらい。" userName="andy_xor_andrew" createdAt="2025-02-18T19:10:21" color="">}}

{{<matomeQuote body="＞“別のクライアントごとに異なる設定ができないのも困る”そういうメニューがあるよ、Clientsって。グループを作ってその中にクライアントを追加してブロックを設定すればいい。特定のクライアント用のグループを作ればうまくいくよ。" userName="MyOutfitIsVague" createdAt="2025-02-18T19:31:51" color="">}}

{{<matomeQuote body="ちょっと複雑なんだよね。君の提案は、(1) Pi-holeをDHCPサーバーにしているか、(2) すべてのデバイスがPi-holeのIPを使うように設定されてる場合にうまくいく。大体はルーターのDNS設定をPi-holeにしてて、そうなるとダッシュボードにはルーターだけが表示されるんだ。" userName="paxys" createdAt="2025-02-18T20:35:42" color="">}}

{{<matomeQuote body="＞ダッシュボードにはルーターだけが表示されるんだそれはルーターの性能に依るよ。多くのルーターはDHCPでクライアントに出すDNS情報の設定があって、そうすれば全てのクライアントが直接Pi-holeを使うことになる。設定の少ないルーターは上流のDNSサーバーの設定しかできないからPi-holeのグループ機能を使うのは無理だ。でも、ルーターのDHCPをオフにしてPi-holeを使えば簡単だよ。これが僕のネットワークの使い方なんだけど、特に問題はなかった。" userName="jimsmart" createdAt="2025-02-18T20:48:36" color="#ff5c5c">}}

{{<matomeQuote body="ゲートウェイの設定次第で、ポート53のリクエストを禁止したり、別のマシンにリダイレクトすることもできるよ。" userName="master_crab" createdAt="2025-02-18T23:24:06" color="">}}

{{<matomeQuote body="それはちょっとごちゃごちゃしてると思う。DNSはHTTPのようにリダイレクトできないから、君が言ってるのはポートフォワーディングを使って実装するしかないけど、DNSをトンネルさせるルーターは見たことがない。ポートフォワーディングでは、Pi-holeのグループ機能を使うには適さないと思うな。" userName="jimsmart" createdAt="2025-02-19T19:51:58" color="">}}

{{<matomeQuote body="＞DNSはHTTPのようにリダイレクトできないdnsmasqは最近すごく進化して、ドメインのリダイレクトができるようになったよ。今またmanページを読む時間だね。" userName="sml156" createdAt="2025-02-20T21:38:00" color="">}}

{{<matomeQuote body="それだと、デバイスがDHCPのDNSリクエストを無視する場合の解決にはならないよ。" userName="master_crab" createdAt="2025-02-19T23:12:54" color="">}}

{{<matomeQuote body="＞デバイスがDHCPのDNSリクエストを無視する場合の解決にはならないそれはこのスレッドで初めて出た話だね。でも君の言いたいことは分かった。iptablesを使って外部のトラフィックをローカルIPに転送することが可能だけど、単純にポート53のトラフィックを送るだけじゃなく、Pi-holeを除外するようにしないといけない。別のデバイスのためだけの特定のルールにする必要があるよ。" userName="jimsmart" createdAt="2025-02-20T01:17:21" color="">}}

{{<matomeQuote body="DHCPデバイスがDNSの挙動を制御する方法の話だよ。その多くはゲートウェイデバイスにもなっていて、内部のファイアウォールもあるからね。IoTや他のデバイスがネットワーク上で変な動きをすることも多い。IPをポート禁止やポートフォワードするのも簡単だったりして、Pi-holeの挙動には影響しないよ。DoHはまた別の話だ。ブラウザベースのDNSシステムのことだね。" userName="master_crab" createdAt="2025-02-21T00:22:09" color="">}}

{{<matomeQuote body="Unifiルーターを使ってるけど、Pi-holeにはルーターがDNSリクエストを出してるばかりでなんか残念。" userName="zaudo" createdAt="2025-02-19T10:37:02" color="">}}

{{<matomeQuote body="Pi-HoleをDHCPサーバーにしてないけど、ルーターのDHCPでクライアントにPi-holeをDNSとして使わせてるよ。" userName="MyOutfitIsVague" createdAt="2025-02-18T20:56:25" color="">}}

{{<matomeQuote body="クライアントとグループの設定で、お子さんのデバイスからYouTubeをブロックして他のは許可してる。Pi-holeはコンテナ内で動かしてるよ。" userName="bolster8505" createdAt="2025-02-18T21:14:47" color="#45d325">}}

{{<matomeQuote body="YouTubeをブロックするためのブロックリスト、教えてくれたら嬉しいな。結構難しいから。" userName="bilalel" createdAt="2025-02-19T07:39:25" color="">}}

{{<matomeQuote body="だと思うけど、YouTubeの広告じゃなくて子どものためにYouTubeそのものをブロックしてるんじゃないかな。Pi-holeは広告をブロックできないから。" userName="10729287" createdAt="2025-02-19T08:11:05" color="">}}

{{<matomeQuote body="私のコメントが分かりづらかったね。YouTubeを完全にブロックすることについて言ってたんだ。" userName="bilalel" createdAt="2025-02-19T10:09:10" color="">}}

{{<matomeQuote body="Pi-holeの'Domains'ページに行って、'Domain'ボックスにyoutube.comを入力して、'Add domain as wildcard'のチェックを入れて追加すれば、全クライアントのYouTubeをブロックできるよ。" userName="jimsmart" createdAt="2025-02-19T20:01:35" color="#ff5733">}}

{{<matomeQuote body="スマートTVなんて絶対買わない。広告が入るなんて最悪で、Kindleの広告みたいで腹立つ。UBOがChromeで使えなくなったらどうしよう。" userName="ge96" createdAt="2025-02-18T19:26:25" color="">}}

{{<matomeQuote body="非スマート4Kディスプレイの方が高いのは謎だよね。私はHDMIとDisplayPortあれば十分だから、余計な機能はいらない。" userName="b3lvedere" createdAt="2025-02-18T19:52:44" color="">}}

{{<matomeQuote body="＞本当に変だよね、余計なものがないのに。<br>ユーザーデータを売って利益を得てるから、そりゃそうだよね。" userName="Jeremy1026" createdAt="2025-02-18T20:01:32" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="マジでそうなの？利益率がめっちゃ大きいのか。4Kスマートテレビが4Kモニターの半額で売ってるの見たことあるけど。" userName="b3lvedere" createdAt="2025-02-18T20:17:21" color="">}}

{{<matomeQuote body="この世界に少しだけ関わったことがあるけど、Rokuみたいなストリーミングボックスやテレビがあの値段で売れるのは、データを売らないと成り立たないから。競争するには適正価格で売るしかないけど、安価な製品と棚のスペース争いになると厳しいよね。MBAが経営すると、データ販売に切り替えられるし。" userName="alabastervlog" createdAt="2025-02-18T21:34:17" color="#38d3d3">}}

{{<matomeQuote body="それなら、機能に見合った価格のApple TVを買えばいい。ネットワークや家の情報を盗られないし。" userName="lukevp" createdAt="2025-02-18T23:37:51" color="">}}

{{<matomeQuote body="テレビにDDWRT/OpenWRTみたいなものってないの？多くが組み込みLinuxボードでAndroidのフォークが動いてるから、安くていいハードウェアに入れ替え可能なファームウェアがあるテレビもあるべきだよね。HDMI入力を常時映すだけのでも良いし、AOSP＋VLC/Jellyfinがあれば最高。" userName="progbits" createdAt="2025-02-18T19:57:13" color="">}}

{{<matomeQuote body="＞Is there an equivalent of DDWRT/OpenWRT but for TVs?<br>安いミニPCを買ってLinuxをインストールすればいいよ。テレビをネットに繋がないようにすればOK。50-75ドルで解決できる。予算を気にせず、HDRみたいな機能に興味がなければこれが良い。libreElecみたいなテレビ専用のLinuxもいくつかある。もっとパワフルなAMD GPUを搭載したシステムを手に入れれば、Bazziteをインストールしてテレビ用SteamOSみたいにしたいな。コントローラーとも合うし。" userName="lotharcable2" createdAt="2025-02-18T21:18:08" color="#ff5733">}}

{{<matomeQuote body="＞Get a used mini-pc, install Linux on it<br>その方法を試したことがあるけど、楽しみたくない人にはおすすめしない。Apple TVやNvidia Shieldの方が断然マシだと思う。でも本格的なゲームメディアセンターが欲しいなら別。それに、ミニPC/RPiでは毎回問題が起きて、家族みんなで映画を観る時にトラブルシューティングをするのは嫌だった。" userName="close04" createdAt="2025-02-19T09:50:01" color="">}}

{{<matomeQuote body="MSI Tridentをゲーム・HTPCとして使ってるけど、家族も満足してる。みんなは様々なストリーミングサービスやSteam、Kodiを使って楽しんでるよ。" userName="b3lvedere" createdAt="2025-02-19T10:22:56" color="">}}

{{<matomeQuote body="HDMI入力を常時表示するテレビって大きなモニターじゃない？でも不思議なことに、テレビの方がいつも高い気がする。" userName="RandomDistort" createdAt="2025-02-18T20:04:13" color="">}}

{{<matomeQuote body="テレビOSをハックできたら楽しいだろうね。CrowdSupplyプロジェクトとして面白いかも。でも、ユーザー情報や広告で稼ぐ方が得られそうだから、難しいかも。" userName="b3lvedere" createdAt="2025-02-18T20:10:23" color="">}}

{{<matomeQuote body="＞For my 'smart tv' which I begrudgingly have to allow on my network occasionally for software updates<br>スマート機能を使ってないなら、何でソフトウェア更新するの？私のスマートテレビは何年もネットから隔離してる。" userName="josephg" createdAt="2025-02-18T19:26:38" color="">}}

{{<matomeQuote body="ソフトウェアのアップデートでメディアコーデックのサポートとかUIの改善、Bluetoothの互換性向上が期待できるかな。" userName="timoteostewart" createdAt="2025-02-18T20:15:13" color="">}}

{{<matomeQuote body="そうそう、いわゆるスマート機能だよね。Raspberry Piを繋いでからは初期設定以外触ってないわ。5年以上使ってるRaspberry Pi 2は今のスマートTVより優れてる。" userName="globular-toast" createdAt="2025-02-19T11:06:15" color="#785bff">}}

{{<matomeQuote body="＞”Raspberry Pi 2”<br>あれってネット速度が100MB/sに制限されててHEVCファイルのストリーミングもできないやつじゃなかったっけ？" userName="itsoktocry" createdAt="2025-02-19T11:36:56" color="">}}

{{<matomeQuote body="確かに100MbpsのEthernetはそうだけど、うちのTVも同じだし。HEVCメディアは持ってないからわからないけど、4K出力がないのは大きな欠点だな。それに、Pi2でストリーミングサービスがサポートされてるかも謎だし、今の時代でブラウザからYouTubeが見れるのかすら疑問。" userName="doubled112" createdAt="2025-02-19T11:50:14" color="">}}

{{<matomeQuote body="DNSブラックホールでTVの悪さを制限するのって正しい方法かな？そのデバイスがDNSルックアップ使わずに接続している可能性もあるし、ルーターにガードレールを追加する方が良さそう。" userName="BHSPitMonkey" createdAt="2025-02-18T19:48:13" color="">}}

{{<matomeQuote body="確かにスタートとしてはいいけど、追跡を厳重に行うTVはこういうブロックを簡単にかいくぐりそう。ほとんどのTVはそれほど高度ではないと思う。普通の人がスマート機能を楽しむには、これは良い妥協だね。ただ、ルーターでガードレールをどうやって追加するつもりなの？TVのインターネットアクセスを完全にブロックする以外に現実的な方法が思いつかない。" userName="xrisk" createdAt="2025-02-18T20:28:11" color="">}}

{{<matomeQuote body="スマートTVのオプトアウトテレメトリは悪意がある。" userName="nothrabannosir" createdAt="2025-02-18T20:34:19" color="#ff33a1">}}

{{<matomeQuote body="それにAdGuard Homeもあるよ。https://adguard.com/en/adguard-home/overview.html" userName="btreecat" createdAt="2025-02-18T23:24:14" color="">}}

{{<matomeQuote body="正直これ（[1]）はあまり関係ないと思う。DNSをブロックすることに破壊的な意味はないし、何年もPi-holeを使ってて、普通はブロックしてから例外を少し加えるだけ。数回しかトラブルシュートしたことないよ。" userName="guhcampos" createdAt="2025-02-18T22:59:07" color="">}}

{{<matomeQuote body="リモートデバイスにアクセスできなくなるなら、破壊的な行為だよ。ジェフ・ギーリングの”It was DNS T-Shirt”でも見てみ。https://www.redshirtjeff.com/shop/p/it-was-dns-shirt" userName="hotstickyballs" createdAt="2025-02-18T23:03:14" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="AdGuard Home使ってたけど、機能はほぼ同じで、DoHとかLinux以外のOSもサポートしてて少し洗練されてたよ。 > https://github.com/AdguardTeam/AdGuardHome" userName="LeoPanthera" createdAt="2025-02-18T18:52:10" color="">}}

{{<matomeQuote body="PiHoleからAdGuardに移って、最終的にはNextDNSにしたよ。いじったり管理するのが面倒になってさ。" userName="laweijfmvo" createdAt="2025-02-18T19:57:48" color="">}}

{{<matomeQuote body="NextDNS使ってたけど、Pi-holeは手間がかからないからサードパーティーにお金払う意味がないよ。5年前にrPi 3のArch LinuxにPi-holeをセットアップして以来、ずっと問題ないし。" userName="sph" createdAt="2025-02-19T07:17:19" color="#785bff">}}

{{<matomeQuote body="ローカルでDNSサーバーを運用する大きな利点はキャッシュだよ。外部プロバイダーを使うと毎回ネットに出ないといけないから。" userName="LeoPanthera" createdAt="2025-02-18T20:28:46" color="#785bff">}}

{{<matomeQuote body="うーん、うちのルーターがDNSクエリをキャッシュしてるけど。" userName="Novosell" createdAt="2025-02-18T21:39:10" color="">}}

{{<matomeQuote body="NextDNSをルーター上で動かすこともできるよ。" userName="pseufaux" createdAt="2025-02-19T00:16:03" color="">}}

{{<matomeQuote body="俺も同じだけどAdGuardはスキップして。PiでDNSを生かすのは楽しいと思ったけど、停電でストレスが溜まった。自分だけが解決できるポイント故障を増やすのはいやだし。" userName="mrmuagi" createdAt="2025-02-18T20:42:24" color="">}}

{{<matomeQuote body="Pi-holeが3年以上稼働してて、壊れたことが一度もないから、「DNSがダウンする」って本当に問題なのかな？ちょっと偏見かも。" userName="martin_a" createdAt="2025-02-18T21:43:31" color="#785bff">}}

{{<matomeQuote body="北米の都市に住んでて、高圧線が地上にあるから5年間で結構な数の停電を経験した。PiはSDカードで動かしてるから、停電に弱いことがわかって使うのをやめたよ。" userName="brummm" createdAt="2025-02-18T21:55:57" color="">}}

{{<matomeQuote body="Raspberry PiとPi-holeを同じSDカードで7年使ってるんだけど、定期的に電源切るだけで再起動してる。解決策は簡単で、Linuxのログファイルを/dev/nullに送るかRAMに送って、Pi-holeのクエリーロギングを無効にするだけ。それでかなり助かってるぞ！" userName="eldaisfish" createdAt="2025-02-18T23:19:20" color="#45d325">}}

{{<matomeQuote body="古いノートパソコンで運用してるけど、トラブルなし。メモリとCPUが余裕あるし、実際のハードディスクがあるから、停電後も99%の稼働率を維持できた。ノートパソコンはクラッシュ時も自動で再起動するし。" userName="sizzle" createdAt="2025-02-19T11:40:13" color="#ff5c5c">}}

{{<matomeQuote body="バンクーバーBCに住んでて、2年に1回は停電があるんだ。電源を接続しているデバイスに電力品質の問題もあるみたいで、UPSがあると助かるだろうな。" userName="mrmuagi" createdAt="2025-02-18T22:10:30" color="">}}

{{<matomeQuote body="停電について心配する理由は何？俺のPi-holeはルーターよりもずっと早くオンラインに戻るけど。" userName="distances" createdAt="2025-02-18T23:34:06" color="">}}

{{<matomeQuote body="停電時のDNSの問題はあまり心配しなくていいと思う。どうせインターネットとPCもダウンしてることが多いし。" userName="sph" createdAt="2025-02-19T07:19:00" color="">}}

{{<matomeQuote body="主要と副のDNS用に2台のRaspberry Piを用意するのは良い考えだね、メインが壊れたときのために。" userName="10729287" createdAt="2025-02-19T08:17:07" color="">}}

{{<matomeQuote body="Raspberry PiのKubernetesクラスターでPi-holeを運用するのはどう？UPSも設定して冗長な電源供給を忘れずに。もしRaspberry Piが壊れたら、ルーターのインターフェースを開いてISPのDNSにリセットするのは簡単だよ。賢くやれよ。" userName="sph" createdAt="2025-02-19T13:05:56" color="#45d325">}}

{{<matomeQuote body="妻にこの簡単さを教えてみな。フランスで出張中にOpenDNSがブロックされた日を今でも覚えてるよ、Pi-holeに設定してたのを忘れてたから。" userName="10729287" createdAt="2025-02-19T18:38:17" color="">}}

{{<matomeQuote body="Pi-holeはPiじゃなくてもいいんだ。ProxmoxサーバーのUbuntu Linuxコンテナで運用してるよ。" userName="weirdkid" createdAt="2025-02-19T00:43:38" color="">}}

{{<matomeQuote body="俺はルーターと同じデバイスでAdGuard Homeを使ってて、何かがダウンすればルーター全体がダウンするから同じさ。" userName="LeoPanthera" createdAt="2025-02-18T21:15:29" color="">}}

{{<matomeQuote body="NextDNS、いいよね。設定も管理も簡単で、すごく使いやすい。" userName="vosper" createdAt="2025-02-18T20:17:56" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="DoHはpiholeでcloudflaredを使えばできるよ。詳しくは”https://docs.pi-hole.net/guides/dns/cloudflared/”を見てね。" userName="brynx97" createdAt="2025-02-18T20:26:32" color="#ff5733">}}

{{<matomeQuote body="AdGuard Home好きだけど、ロシアの会社の単一バイナリはちょっと不安。自分でビルドする方向に進むかも。これは偏見かな？" userName="2OEH8eoCRo0" createdAt="2025-02-18T20:13:37" color="">}}

{{<matomeQuote body="＞これは偏見かな？<br>そんなことないよ。他国の人を国で判断するのは良くないけど、AdGuardの姿勢ははっきりしてるから、気になるなら確認すればいいよ。詳細は”https://www.reddit.com/r/Adguard/comments/t15gr4/announcemen...”と”https://adguard.com/en/blog/official-response-to-setapp.html”で。" userName="sunaookami" createdAt="2025-02-18T20:27:37" color="">}}

{{<matomeQuote body="＞他国の人を国で判断するのは良くない。<br>これは前のコメントの理解が全然間違ってるよ。AdGuardのバイナリの出所を気にしてるだけで、国民を否定してるわけじゃないから。政府の信頼性を確認してるだけだよ。国によって政府の管理が異なるし、それがリスク評価に影響するのは当然。" userName="sfRattan" createdAt="2025-02-18T23:51:18" color="#785bff">}}

{{<matomeQuote body="へえ、そんなこと知らなかった！ありがとう！" userName="2OEH8eoCRo0" createdAt="2025-02-18T20:28:11" color="">}}

{{<matomeQuote body="前は自分でビルドしてたけど、今はAlpine Linuxのテストブランチにパッケージされるようになったんだ。それでコンテナイメージも”apk add”で簡単に入れられる。信頼できるかは自分次第だね。" userName="seemaze" createdAt="2025-02-18T20:30:18" color="">}}

{{<matomeQuote body="＞これは偏見かな？<br>ロシア人だけを信じるか、他も信用するかでしょ。" userName="skotobaza" createdAt="2025-02-18T20:19:39" color="">}}

{{<matomeQuote body="自分はイラン、北朝鮮、中国も信用してない。簡単だよ、アメリカだし2025年だから。これらは現在の敵で、これは選んだことじゃない。2035年には仲良くなれるといいな。" userName="2OEH8eoCRo0" createdAt="2025-02-18T20:26:11" color="">}}

{{<matomeQuote body="＞信頼できない？<br>話してるのはその国の少数派で、全 populationではないことを理解してほしい。中国の人全員がアメリカをハッキングしようとしてるわけじゃない。そんなイメージはプロパガンダに過ぎない。コードを勉強して、しっかりとした見解を作るのが大切だよ。" userName="h4ck_th3_pl4n3t" createdAt="2025-02-18T22:51:34" color="#ff5c5c">}}

{{<matomeQuote body="自分はクライアントのファイアウォールでイラン、北朝鮮、中国、ロシアからのトラフィックを全部ブロックしてる。毎分アメリカのビジネスを狙ってるIPがログに現れるのを見たからさ。犯罪者のIPを特定しようとしても、すぐに別のIPに移動するから、ブロックリストが増え続けるだけ。国全体をブロックするのは合理的だし、自分の基準として、全球をブロックして特定の国だけを許可するってやり方を取ってる。なにかブロックされても調整は簡単だからね。ロシアに良い人がいるのはわかるけど、ロシアのコンピューターと自分のビジネスが繋がる必要はないんだ。" userName="theatomheart" createdAt="2025-02-19T00:46:50" color="#785bff">}}

{{<matomeQuote body="特定の国を選ぶ理由は何なの？オランダからの接続は安全だと単に思っているの？" userName="skotobaza" createdAt="2025-02-19T08:01:07" color="">}}

{{<matomeQuote body="統計的にはさ、オランダからの人が国家レベルのハッカーである確率は、ロシアのIPよりずっと低いわけ。" userName="theshrike79" createdAt="2025-02-19T11:49:47" color="">}}

{{<matomeQuote body="論理的に考えれば、ロシアが組織に infiltrate しようと思ったら、ロシアのIPから直接やるわけじゃなくて、オランダやドイツのプロキシを使うんじゃないかな。" userName="skotobaza" createdAt="2025-02-19T14:50:17" color="">}}

{{<matomeQuote body="でも経験から言うと、GPの言ってることは正しい。多くの悪意のあるトラフィックがその国家から来てるのを見てきた。" userName="CheBuzz" createdAt="2025-02-20T17:13:41" color="#785bff">}}

{{<matomeQuote body="米国から来たバイナリが悪意のあるコードを含んでいても、起源が違うから許されるってこと？" userName="skotobaza" createdAt="2025-02-18T20:51:25" color="">}}

{{<matomeQuote body="自宅のルーターで Adguard Home を動かしてるよ、オプンセンスでね。" userName="lawn" createdAt="2025-02-18T19:10:38" color="">}}

{{<matomeQuote body="オプンセンスに対応したルーターってどれがあるの？それともフルサーバーやコンテナが必要なの？ピーホールを数年間使ってて、このスレッドは自分にとって新しい情報がたくさんだよ。" userName="samplatt" createdAt="2025-02-19T02:46:42" color="">}}

{{<matomeQuote body="オプンセンスはオープンWRTみたいに、比較的パワフルなジェネリックなx86ハードウェア用に設計されてる。Intel CPUとネットワークハードウェアがBSDのドライバサポートの関係で一番安定してるけど、他のも使える。ただ、低消費電力の古いCPUであっても、ギガビット以上のルーティングは楽勝だから、特にファイアウォールルールやサービスをたくさん使う場合はね。オプンセンスの親会社PfsenseもARMをサポートしてるけど、そのバージョンは商業サポートしたハードウェアだけなんだ。" userName="gh02t" createdAt="2025-02-19T05:38:49" color="#785bff">}}

{{<matomeQuote body="ありがとう！古いサーバーをルーターとコンテナホストに変えようとずっと考えてたんだ。" userName="samplatt" createdAt="2025-02-19T06:33:44" color="">}}

{{<matomeQuote body="Pi-holeってほんといいツールだよね。自分はRaspberry Pi Zeroで数年使ってるけど、ブロックされるゴミの量にはいつも驚かされるよ。リリースおめでとう！Patreonでのサポートも嬉しいよ！" userName="Mossy9" createdAt="2025-02-18T18:36:58" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
