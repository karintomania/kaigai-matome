+++
date = '2025-05-31T00:00:00'
months = '2025/05'
draft = false
title = 'Oniux カーネルレベルTor隔離！あらゆるLinuxアプリの通信を匿名化へ？'
tags = ["Tor", "Linux", "セキュリティ", "プライバシー", "カーネル"]
featureimage = 'thumbnails/purple1.jpg'
+++

> Oniux カーネルレベルTor隔離！あらゆるLinuxアプリの通信を匿名化へ？

引用元：[https://news.ycombinator.com/item?id=44146830](https://news.ycombinator.com/item?id=44146830)




{{<matomeQuote body="へえ、約10年前にTorの開発者とこのトピックで話したことあるよ。ネットワーク名前空間がまだ目新しかった頃かな。<br>もらった意見は「みんな安全だと思っちゃうけど、識別できる情報いっぱい漏らしちゃう簡単な方法だよ」って感じだったから、それ以上深掘りしなかったんだ。" userName="mjg59" createdAt="2025/06/01 01:56:00" color="#38d3d3">}}




{{<matomeQuote body="Torの開発者たちがその方針を推したのは根本的な戦略ミスだと思うな。<br>もちろん、深刻な脅威に直面してる人はTor Browserを使って、他の漏洩手段にも気を配る必要があるよ。<br>でも、「Tor Everywhere」になってたら、大量監視はもっと難しくなってたはずだ。<br>だって、今は大量監視で誰がTorを使ってるか検出できるけど、みんなが使ってたら関係なくなるからね。" userName="ajb" createdAt="2025/06/01 08:57:57" color="#ff5c5c">}}




{{<matomeQuote body="不思議だね。torsockやtorifyも同じことやってるのに、そっちの方が脆弱なんだから。" userName="computerfriend" createdAt="2025/06/01 05:12:07" color="">}}




{{<matomeQuote body="torsocksやtorifyで全部をやる場合、Tor経由で足跡を残しちゃうんだよ。Tor Browserみたいにウェブ上に何も痕跡を残さないように特別に設計されてるのとは違う。<br>カーネルレベルでTorを直接使うってことは、DNSが漏れたりOSのテレメトリが漏れたりするってこと。<br>いいアイデアだけど、上から下まで完全に実装しないと、間に何も残しちゃダメ。さもないとすぐに匿名じゃなくなっちゃうよ。" userName="gobip" createdAt="2025/06/01 08:34:56" color="#ff5733">}}




{{<matomeQuote body="これって全部TCPに限られた話じゃないの？<br>つまり、非TCPの通信はどうやって保護されるの？" userName="natmaka" createdAt="2025/06/01 01:59:47" color="">}}




{{<matomeQuote body="詳しいことは知らないんだけど、https://gitlab.torproject.org/tpo/core/onionmasq によると、<br>“このプロジェクトは、TCP*とUDP*の状態を扱えるシンプルなユーザー空間のネットワークスタックを実装して、そのトラフィックをTorネットワークに転送できるようにする試みです”<br>って書いてあるよ。" userName="yencabulator" createdAt="2025/06/01 19:52:03" color="#45d325">}}




{{<matomeQuote body="Tor BrowserユーザーはYouTubeとかDNSをどうしてるの？<br>あと、HTTP/3についてはどうなの？" userName="mmooss" createdAt="2025/06/01 16:37:06" color="">}}




{{<matomeQuote body="DNSはもうTorがやってるよ。<br>実際、生IPを渡すとTorの出力に警告が出るんだ。これはユーザーが誤ってTor経由でブラウジングしてるのに、DNS解決は普通の安全じゃない方法でやってる可能性があるってこと。<br>YouTubeは主にTorをかなりスロットリングしてくるし、CAPTCHAの終わらない雪崩やサービス拒否との戦いだよ。<br>ブリッジノードがこれを解決するんだけど、これは公開されてない出口ノードを経由するんだ。<br>ブリッジを使っても、Googleのボット検出に引っかかる可能性は高いけどね。<br>HTTP/3は非サポートだよ。" userName="FrostKiwi" createdAt="2025/06/03 07:51:23" color="#785bff">}}




{{<matomeQuote body="ありがとう。<br>”YouTubeは主にTORをスロットリング”<br>僕が言いたいのは、ストリーミングメディアは通常UDPを使う（YouTubeかどうかは知らないけど、そうだと思う）し、このスレッドによるとTorはTCPしかルーティングしないって話だよね。<br>だから、YouTubeとか他のストリーミングメディアはTorを経由せずにルーティングされてるってこと？" userName="mmooss" createdAt="2025/06/04 20:55:01" color="#38d3d3">}}




{{<matomeQuote body="（YouTubeかどうかは知らないけど、そうだと思う）<br>YouTubeは標準のHTTPSポート443経由で動画をチャンク単位で配信してるよ。Twitchも同じ。<br>YouTubeはHTTP/3をサポートしてるから、ブラウザとネットワークもサポートしてればQUIC経由でUDPを使うだろうけど、そうでなければ単にTCPでいくんだ。" userName="LegionMammal978" createdAt="2025/06/04 21:18:27" color="#38d3d3">}}




{{<matomeQuote body="TCPじゃない通信はルーティングされず送れないと思うよ。" userName="charcircuit" createdAt="2025/06/01 02:14:40" color="">}}




{{<matomeQuote body="Torデーモンを普通のUDP DNSサーバーとして使えるし、ネット経由でDNSリクエストを解決してくれるんだ。間違ってるかもしれないけど、I2Pに似てる感じ？I2PだとUDPを使いたいなら、アプリごとに専用のプラグインとかトランスポートが必要だった気がする。" userName="heavyset_go" createdAt="2025/06/01 07:28:40" color="">}}




{{<matomeQuote body="なるほどね、ありがとう。やっぱり最初の印象は正しかったみたい。UDPの対応がないと、どんなユーザーにとっても簡単に設定できて、透過的にプライバシーを守る方法にはならないんだね。" userName="natmaka" createdAt="2025/06/01 07:09:01" color="">}}




{{<matomeQuote body="いつものことだけど、”どんなユーザー”をどう定義するかによるね。UDP通信をよく使うユーザーはやり方を変える必要がある、それはそう。でも、コンピューターに詳しくない大多数のユーザーは、ブラウザ以外で何かすることってあんまりないんだよ。UDPを使おうとするユーザーも、個人情報を specifically 漏洩させることにはならず、ただ特定のものが動かない理由が少し confused になるだけだよ。" userName="HappMacDonald" createdAt="2025/06/01 08:04:42" color="">}}




{{<matomeQuote body="UDPはルーティングされないの？.." userName="izhak" createdAt="2025/06/01 04:11:21" color="">}}




{{<matomeQuote body="TORプロトコルは natively にはUDPをサポートしてないんだ。でも workarounds はあるよ [0]<br>[0]: https://www.whonix.org/wiki/Tunnel_UDP_over_Tor" userName="c0balt" createdAt="2025/06/01 05:21:55" color="#38d3d3">}}




{{<matomeQuote body="フロントページのインストール手順が動かないよ。バージョン番号を0.4.0から0.5.0に変える必要があるね。<br>cargo install --git https://gitlab.torproject.org/tpo/core/oniux oniux@0.5.0" userName="mike-cardwell" createdAt="2025/06/01 11:37:28" color="#38d3d3">}}




{{<matomeQuote body="ふむ。これはtorsocksみたいにローカルのTorデーモン経由で traffic を流すのかと思ってたんだ。でも、ローカルのTorデーモンを止めると、torify や torsocks は動かなくなるのに、oniux はまだ動くのに気づいたよ。[edit] ドキュメントにもそう書いてあったね。なかなか neat だ。docker 内でも動くけど、--privileged を使う必要があった。binary を debian:12 コンテナにコピーするだけで、そこで動いたよ。<br>docker run -it --rm --privileged -v ”$PWD/oniux:/usr/bin/oniux” debian:12" userName="mike-cardwell" createdAt="2025/06/01 12:12:57" color="#ff5c5c">}}




{{<matomeQuote body="たぶん、これは古いC言語のデーモンじゃなくて、Rustで書き直されたライブラリを使ってるんじゃないかな？<br>https://tpo.pages.torproject.net/core/arti/" userName="yencabulator" createdAt="2025/06/01 19:56:18" color="#ff33a1">}}




{{<matomeQuote body="Oniuxって、orjailみたいな公式にサポートされてるツールっぽいね。<br>orjailはもう4年コミットされてないけど、iptablesとかiprouteを使ったシェルスクリプトとしては今でもちゃんと動くよ！<br>https://github.com/orjail/orjail/blob/master/usr/sbin/orjail<br>あとorjailには、もっと隔離するためにfirejailと一緒に動かすオプションもあるんだけど、Oniuxにはまだその機能はなさそうだね。" userName="tobias2014" createdAt="2025/06/01 03:57:10" color="#ff5c5c">}}




{{<matomeQuote body="JavascriptなしのURLだよ。<br>https://raw.githubusercontent.com/orjail/orjail/master/usr/s..." userName="1vuio0pswjnm7" createdAt="2025/06/01 05:07:45" color="">}}




{{<matomeQuote body="面白い話なんだけど、これはTor開発者がアプリは.onionドメインを解決しようとすべきじゃないって主張したせいで、curlでは5年間も壊れたままなんだよね（ブログの例もそう）。<br>https://daniel.haxx.se/blog/2025/05/16/leeks-and-leaks/<br>解決策が見つかるといいね。" userName="Aissen" createdAt="2025/06/02 09:59:18" color="#ff5c5c">}}




{{<matomeQuote body="アクセスできるけど、絶対やらない方がいいよ！<br>Chromeだとめちゃくちゃ目立つからね。<br>Tor BrowserはChromeにはない色んなフィンガープリンティング対策をしてるんだ。" userName="kyguy23" createdAt="2025/06/01 02:38:36" color="#785bff">}}




{{<matomeQuote body="正直、今どきChromeを使ってる人が匿名性を気にしてるとは思わないな〜。<br>でも、onionサイトにはアクセスできるようになるよ。まあ、onionサイトを運営してる人なら誰でも言うと思うけど、普通のChromeでアクセスするのは最悪のアイデアだよ。" userName="jeroenhd" createdAt="2025/06/01 12:41:07" color="">}}




{{<matomeQuote body="BraveもTorのプライベートタブ機能があるけど、Tor Browserのフィンガープリンティング対策を真似ようとしてるのかな？" userName="OsrsNeedsf2P" createdAt="2025/06/01 03:02:59" color="">}}




{{<matomeQuote body="いや、真似てないね。<br>まず、`navigator.brave`があるかチェックすればBraveだってわかるよ。<br>俺が.onionサイトを運営してた時、JavaScriptでこれをチェックして、もし`navigator.brave`があったら特定のページにリダイレクトしてたんだ。<br>「あれ、君のTor Browserなんか変だよ？Tor hidden services(.onion)を見るときはTor Browserを使うべきだよ。古いバージョンか、それとも全然違うものを使ってるのかな？」ってね。<br>BraveはChromeだよ。Tor BrowserはFirefoxベースで、色んな tweaks（調整）や初期設定が違ってて、フィンガープリントも違うんだ。<br>Torでブラウジングするときは、JavaScriptを無効にするべきだよ。JavaScriptは多くの脆弱性の原因だからね。" userName="fatchan" createdAt="2025/06/01 04:01:59" color="#785bff">}}




{{<matomeQuote body="一番の対策は、Torを使ってるほとんどの人がTor Browserを使ってるってこと。<br>これで十分な集団になって、他の人と紛れることができるんだ。<br>Tor Browser以外を使うと、君だけが浮いちゃうよ。" userName="orbital-decay" createdAt="2025/06/01 04:11:34" color="#ff5c5c">}}




{{<matomeQuote body="プロキシ環境変数とか設定でTor使うのって前からできたよ。Torの標準ポートは9050ね。SOCKSプロキシ書けば好きなプロトコルで通信流せるし、syncthingでWebサイトとかもいける。ほら、ここに例のコードもあるし！ https://github.com/acheong08/syndicate" userName="acheong08" createdAt="2025/06/01 02:09:44" color="#38d3d3">}}




{{<matomeQuote body="Windows版Chromeって、ユーザーが触れるプロキシ設定とかPACサポートはないんだよね。でも --proxy-server ってコマンドライン引数は使えるよ。" userName="stepupmakeup" createdAt="2025/06/01 06:22:00" color="">}}




{{<matomeQuote body="例にHexchatが出てるけど、これってユーザーの設定そのまま使うの？IRCのユーザー名変え忘れたらヤバくない？<br>ブラウザ立ち上げたらCookieとか漏れちゃうの？" userName="ericfrederich" createdAt="2025/05/31 23:12:04" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="TorとかOniuxの主な目的は、送信元IPを分からなくすることだと思うな。フィンガープリンティング対策もしてるけどね。TorでGmailにログインする件（HTTPSじゃない場合ね）も、同じ話ができるでしょ。" userName="alfiedotwtf" createdAt="2025/06/01 00:50:09" color="">}}




{{<matomeQuote body="ユーザー名が漏れるって、Tor使ってるのがバレるって意味？それとも同じIRCサーバーに繋いでる皆が同一人物ってこと？IRCって切断時間とかログられてて他のネットワーク障害と紐付けられることあるから、匿名で使うのは結構危なそうだよ。" userName="charcircuit" createdAt="2025/06/01 00:28:43" color="">}}




{{<matomeQuote body="Torが匿名化してくれるのは、主にネットワークからだよ。相手には知られても傍受してる人には知られたくないって使い方はいっぱいあるんだ。接続時間の相関の話だけど、ネットワーク参加者から隠れたいんじゃなくて、場所を隠したいとか、政府とか企業のファイアウォールを避けたいって目的かもしれないよね。" userName="47282847" createdAt="2025/06/01 15:23:29" color="#ff5c5c">}}




{{<matomeQuote body="確かIrssiって、デフォルトでシステムユーザー名使う設定だったんだよ。だから初心者がうっかり本名とかを漏らしちゃってた。それ見て、俺はLinuxのユーザー名をいつも一般的なやつに変えたんだ。" userName="01HNNWZ0MV43FF" createdAt="2025/06/01 00:43:26" color="">}}




{{<matomeQuote body="俺が言ってたのは、HexChatを普段は「FooBar」ってユーザー名で使ってるけど、Torの時は「SpamEggs」にしたいってケースね。Oniuxで起動して設定ファイル読んだら、「FooBar」のままログイン押しちゃう可能性あるでしょ。" userName="ericfrederich" createdAt="2025/06/03 16:02:03" color="#785bff">}}




{{<matomeQuote body="一番よく使われるLinuxユーザー名って結局何なの？rootで普段の作業はしないし、guestも問題あるしね。<br>「一般的な名前」なんてあるの？" userName="SV_BubbleTime" createdAt="2025/06/01 01:02:10" color="">}}




{{<matomeQuote body="「一番よく使われる」かは分かんないけど、俺はいくつかVMで user をユーザー名に使ってるよ。" userName="tbrownaw" createdAt="2025/06/01 01:18:45" color="">}}




{{<matomeQuote body="この開発体験（DevEx）は本当に素晴らしいね、まさにバカでも使えるレベルだよ！開発チームはナイスワークだね＜3" userName="alfiedotwtf" createdAt="2025/06/01 00:45:50" color="">}}




{{<matomeQuote body="いやいや、全くそうじゃないよ。バカはむしろingenious（巧妙）なんだって。これを使って匿名性をちゃんと保つには、かなり運用に気をつけなきゃいけないから、ほとんどの人は無理だと思うな。" userName="brians" createdAt="2025/06/01 02:08:18" color="#38d3d3">}}




{{<matomeQuote body="いいね。これをC言語で書き直してくれるなら、ぜひ使ってみたいよ。" userName="hexo" createdAt="2025/06/01 04:54:51" color="">}}




{{<matomeQuote body="これはRust言語で書かれてるんだよ。なんでC言語版が必要なの？" userName="jsiepkes" createdAt="2025/06/01 06:18:28" color="">}}




{{<matomeQuote body="それが何か悪いことしてないか、自分でコードを読んで確認したいからさ。" userName="matt3210" createdAt="2025/06/01 07:27:57" color="#38d3d3">}}




{{<matomeQuote body="コードが悪いことしてないか確認するのは無理！XZ攻撃とかThe International Obfuscated C Code Contest見てみなよ。Reflections on Trusting Trustも読むといいかも。<br>[1] https://www.ioccc.org/<br>[2] https://www.cs.cmu.edu/~rdriley/487/papers/Thompson_1984_Ref..." userName="jsiepkes" createdAt="2025/06/04 12:24:36" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
