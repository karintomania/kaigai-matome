+++
date = '2025-06-23T00:00:00'
months = '2025/06'
draft = false
title = '主要Linuxディストロでroot権限奪われる危険！ udisksに新たな脆弱性が見つかる'
tags = ["Linux", "セキュリティ", "脆弱性", "root権限", "udisks"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> 主要Linuxディストロでroot権限奪われる危険！ udisksに新たな脆弱性が見つかる

引用元：[https://news.ycombinator.com/item?id=44325861](https://news.ycombinator.com/item?id=44325861)




{{<matomeQuote body="ローカル権限昇格なんて気にしないよ。共有カーネルでセキュリティ境界を引けるって今でも思ってるなら、カーネルのCVEデータベースを見てゾッとするべきだね。派手なタイトルのエクスプロイトの裏には、聞いたこともないのが20個もあるんだから。syscallの使用を制限して、最小限でちゃんと監査されたsyscallフィルタリング層を使ってカーネルのほとんどを隠せば、ある程度はできるかもしれないけど、本当に分かってる人がやらないと。ちゃんとしたセキュリティ強化はたくさんのソフトを壊しちゃうよ。基本的なレベルのセキュリティを得るには、「BPF」って文字がつくものは全部無効にして、＼procとか＼sysみたいな仮想ファイルシステムは全部隠して、io_uringも無効にして、何か動かなくなるまで見つけたCONFIG＿＊を全部削除しないとダメ。一部のサブシステムは他より脆弱みたいだね（皮肉なことにnetfilterが脆弱性の安定供給源に見える）。" userName="PhilipRoman" createdAt="2025/06/23 10:54:13" color="#45d325">}}




{{<matomeQuote body="それなのに、みんな実際にはコンテナベースの隔離をしょっちゅう使ってるし、世の中終わってないよ。それに、Androidシステムの全てのセキュリティドメインはカーネルを共有してるのに、Androidは世の中で最もセキュアなシステムの一つだ。確かにSELinuxを大量に使ってるけど、それがどうした？ 結局共有カーネルだし、かなり高機能なやつだよ。カーネル内部でセキュリティ隔離ができないからローカル権限昇格を気にする必要ないっていう考え方には賛成できないな。" userName="quotemstr" createdAt="2025/06/23 14:09:44" color="#ff33a1">}}




{{<matomeQuote body="コンテナは信頼できるセキュリティ境界としては機能しないよ。あれは開発者＼運用ツールなんだから。" userName="tptacek" createdAt="2025/06/23 16:37:00" color="">}}




{{<matomeQuote body="皮肉なことに、Ubuntu 24はユーザーが名前空間にアクセスするのをブロックしたらしいね。そのカーネルインターフェースでローカル権限昇格がたくさんあったからさ。隔離に使いたいプログラムはこれで壊れるけど。" userName="stefan_" createdAt="2025/06/23 15:31:44" color="#45d325">}}




{{<matomeQuote body="あんまり関係ないんじゃない？<br>話してる脅威はマルチユーザーシステム向けだよ。" userName="Dylan16807" createdAt="2025/06/23 16:17:50" color="">}}




{{<matomeQuote body="トーマス、Kata ContainersみたいなマイクロVMについてどう思う？ runcの代わりにDockerのバックエンドで使えるよ。知ってるとは思うけど、読者のために言うと、CPUのVT命令で隔離されてるんだ。VT命令はVMを隔離するために作られてるんだから。いまだに「コンテナはコンテナしない」（Dan Walshのボストン訛りで）とは思うけど、これはちゃんとしたスタートに見えるね。https://katacontainers.io" userName="SEJeff" createdAt="2025/06/23 17:36:45" color="#ff33a1">}}




{{<matomeQuote body="ここ10年くらいで、Linuxの名前空間はローカル権限昇格の、そして時にはカーネル空間での任意のコード実行の、絶対的に最も多い原因だったんだ。マルチユーザーシステムではユーザー名前空間のサポート無しでカーネルをビルドするのが、ほぼ同じくらい長い間、定番のアドバイスだったんだよ。Ubuntuはただ対応が遅れてるだけさ。彼らは主にサーバーかシングルユーザーデスクトップの顧客が多いからね。" userName="holowoodman" createdAt="2025/06/23 16:02:04" color="#ff33a1">}}




{{<matomeQuote body="で、Pulse Audioサービスって今どこのユーザーで動いてる？<br>これはローカルエクスプロイトだけど、言及されてるサービスの組み合わせをサポートしてるシステムなら、つまりたくさんのシステムで、危険があるんだ。RHEL系や多分Ubuntuもそうね。AlmaLinuxのブログでCVEのテストパッチの情報を見てみなよ。https://almalinux.org/blog/2025-06-18-test-patches-for-cve-2..." userName="rob_c" createdAt="2025/06/23 17:39:37" color="#ff5c5c">}}




{{<matomeQuote body="Androidのカーネルってさ、元の投稿にあった強化とか機能無効化のほとんどを備えてるんじゃないの？" userName="pxeger1" createdAt="2025/06/23 14:14:13" color="">}}




{{<matomeQuote body="それって開発には遅くてダメだよね。本番には多少良いかもだけど、検証されてないいろんなハイパーバイザー次第って感じ。" userName="burnt-resistor" createdAt="2025/06/23 19:06:59" color="">}}




{{<matomeQuote body="いや、違うよ。eBPFとかstrace、パケットフィルタリングは有効だよ。AndroidはSELinuxとかで、それらにアクセスできるコードを制限してるんだ。投稿主が必要だって言ってる、カーネルから完全に削除するのとは全然違うよ。" userName="quotemstr" createdAt="2025/06/23 14:41:00" color="#38d3d3">}}




{{<matomeQuote body="＞ pulseaudioは誰で動いてるの？<br>わかんない、pipewireみたい。<br>自分のアカウント以外だとしても、攻撃に使うユーザーじゃないでしょ。ログインや外部サーバー動かすアカウントが先にやられる必要があって、そしたらpulseaudioなしで直接エクスプロイト使えるじゃん。<br>/homeに一つしかフォルダないなら、君には管理者パッチの緊急性は低いかもね。" userName="Dylan16807" createdAt="2025/06/23 19:01:43" color="">}}




{{<matomeQuote body="どの”検証されてない”ハイパーバイザーのこと？ KataはFirecrackerで動くよ。" userName="tptacek" createdAt="2025/06/23 20:28:46" color="">}}




{{<matomeQuote body="Pipewireはpipewireユーザーで、systemdかOpenRCが管理してるんだ。だから、そいつらが管理するプロセスならどれでも新しいpipewireユーザープロセスを始められるってわけ。ローカルの権限昇格は、一つのエクスプロイト[0]でリモートにつながる可能性ありだよ。<br>[0] https://www.bleepingcomputer.com/news/security/hackers-collaboration-tools-breached-to-spread-linux-backdoor/" userName="shakna" createdAt="2025/06/23 21:31:42" color="#ff5c5c">}}




{{<matomeQuote body="コンテナの分離ってさ、共有レイヤーの共有ライブラリでもダメになることあるよね？ 俺のヤバいサービスが君の超大事なハードウェア制御サービスと同じ cooltechframework ってベースレイヤー使ってて、もしそこに間違いがあったら..." userName="galangalalgol" createdAt="2025/06/23 15:23:53" color="">}}




{{<matomeQuote body="＞ Pipewireはpipewireユーザーで、systemdかOpenRC管理。<br>俺が確認した環境じゃ pipewire ユーザーいなくて、ログインした自分のアカウントで動いてたよ。<br>＞ ローカル権限昇格はエクスプロイトでリモートにつながる。<br>それって外部とやり取りするアカウント向けだよね。<br>俺しかユーザーいないなら、自分と pipewire アカウント間を安全に保つセキュリティ機能は期待してない。権限昇格は、全然違う動かし方してるシステムにとってヤバいんだ。" userName="Dylan16807" createdAt="2025/06/24 02:28:46" color="">}}




{{<matomeQuote body="もし知らなかったらだけど、コンテナってセキュリティの壁じゃないんだよ。bubblewrap みたいなやつがセキュリティ境界になるんだ。" userName="zamalek" createdAt="2025/06/23 15:15:38" color="">}}




{{<matomeQuote body="もしブラウザからとか、自分で録ってないファイルから音を出すなら、君のアカウントは外部と通信してるってことになるよ。" userName="shakna" createdAt="2025/06/24 08:04:13" color="">}}




{{<matomeQuote body="別プロセスだからそれぞれ影響受けるだけだよ。同じコードでもデータが別なら関係ないじゃん。" userName="immibis" createdAt="2025/06/23 16:32:52" color="">}}




{{<matomeQuote body="名前空間って隔離とかセキュリティにめっちゃ使われてるのに、皮肉な話だよねー。" userName="ranger_danger" createdAt="2025/06/23 16:20:05" color="">}}




{{<matomeQuote body="Linux FoundationがCNAになってから、たいしたことない“脆弱性”にもCVEがバンバン出るようになったんだよね。CVEの数だけ見ても意味なくね？" userName="NicolaiS" createdAt="2025/06/23 15:42:04" color="">}}




{{<matomeQuote body="これがホントならさ、なんでLinuxデバイス全部root化されてないわけ？って思うよね。" userName="pinoy420" createdAt="2025/06/23 12:04:04" color="">}}




{{<matomeQuote body="同じ共有命令で動く別プロセスね。もし共有命令をハックして変えられたら、他のコンテナも好きな命令で動かせちゃうじゃん。" userName="galangalalgol" createdAt="2025/06/23 21:39:59" color="">}}




{{<matomeQuote body="実はbubblewrapの方がもっと酷いんだよ。何年も直されてない既知のヤバい抜け道があるからね。" userName="eyberg" createdAt="2025/06/23 21:39:59" color="">}}




{{<matomeQuote body="レイヤーはCOWだからさ、どっかのコンテナがレイヤー変えても、同じイメージから起動した他のコンテナには影響ないよ。元々の脆弱性は残るけど、それぞれ別々にハックしないといけないんだ。" userName="kbolino" createdAt="2025/06/23 21:59:40" color="#ff5c5c">}}




{{<matomeQuote body="もしsystemdとかOpenRCのユーザーが全然いない、超カスタムかマイナーなビルド環境だったらさ。その場合、ユーザーはvideoグループに入ってるから、ローカルでエスケープされれば、特別なことしなくてもroot取られちゃうんだよ。" userName="shakna" createdAt="2025/06/25 06:28:21" color="">}}




{{<matomeQuote body="udisksって、依存関係抜きでコードが26万5334行もあるんだってさ。それに比べてpmountは1万9978行で、13倍以上少ないんだ。sudoのCVE発生率（コード1000行あたり約0.5件、うち57.5％がCVSS7以上）で見積もると、udisksには約76件、pmountには約5件の深刻なCVEがありそうだねって計算だよ。" userName="pona-a" createdAt="2025/06/23 10:19:43" color="#ff33a1">}}




{{<matomeQuote body="UbuntuがsudoをRustで再実装したバージョンに切り替えるみたいだよ。記事はこれ→https://www.phoronix.com/news/Ubuntu-25.10-sudo-rs-Default リポジトリはここ→https://github.com/trifectatechfoundation/sudo-rs ライセンスが緩いのがちょっとなんだけど、長期的に見ればセキュリティは良くなるはずだよ。" userName="tormeh" createdAt="2025/06/23 12:28:57" color="">}}




{{<matomeQuote body="sudoにあんなにコード量があるなんてマジで信じらんないんだけど。OSに「これ制限なしで実行して」ってお願いするだけかと思ってたよ。自分でそういうロジックを持ってるなんて思ってもみなかったな。" userName="bapak" createdAt="2025/06/23 11:36:21" color="">}}




{{<matomeQuote body="Rust版への切り替え、時期尚早だって思わない？Rustバージョンには、まだ見つかってないロジックのバグがいっぱいあるって、俺は結構確信してるんだよね。" userName="johnisgood" createdAt="2025/06/23 13:34:06" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="複雑なシステムってさ、書き直されるときはいつもバグとかリグレッションがいっぱい出ちゃうもんなんだよ。" userName="jonathanstrange" createdAt="2025/06/23 14:00:53" color="">}}




{{<matomeQuote body="「ライセンスが緩いのが残念」だって？くそっ、それは残念だね。人が自分の作品を好きなように使うのを、それが俺個人の選択より制限が緩いってだけで許せないなんて、マジで嫌いだわ。もちろん皮肉だよ。" userName="stephenr" createdAt="2025/06/23 12:40:44" color="">}}




{{<matomeQuote body="Linuxは広くオープンで協力的なエコシステムでうまくいってる。一方、BSDはあんまり良くないLinuxみたいで、プロプライエタリ製品に押し込められてるだけ。GoogleはAndroidの“制限の少ない”ライセンスのおかげでAOSPを締め付けてる。結局、Copyleftライセンスの方が長い目で見るとオープンソースプロジェクトには明らかに良いって、もう十分に証明されてると思うよ。" userName="scheeseman486" createdAt="2025/06/23 12:46:41" color="">}}




{{<matomeQuote body="LinuxにそんなAPIはないよ。sudoにsetuidビットが設定されてるからカーネルが現在のユーザーに関係なくrootで起動するだけ。これ多分、まだ使われてる最悪な古い設計の一つだよ—どのバイナリもsetuidが設定されてたら、質問なしでrootとして実行されちゃう。逆に、実行中のバイナリの権限を上げる方法もない。これはWindowsみたいに、実行中のプロセスが権限を得たり失ったりするための堅牢な認証・認可APIで何十年も前に解決されるべきだった。ファイルシステムのビットがプログラムにroot権限を与えるなんて、頭おかしい。ファイルシステムをこっそり壊して、そのビットを自分のバイナリに設定することで見つかるCVEが多分ダース単位であるんじゃない？" userName="Asooka" createdAt="2025/06/23 13:15:31" color="#38d3d3">}}




{{<matomeQuote body="いくつか、ってのは？<br>十分すぎるくらい？<br>もしかしたら二つ、致命的なやつ？<br>こっちの方がマシ？" userName="johnisgood" createdAt="2025/06/24 12:17:12" color="">}}




{{<matomeQuote body="ネットワーク越しのsudoers共有とか、そういうのに全部関係してると思うな。ああいうゴミみたいなのを全部取っ払えば、言語は本当にスッキリするだろうね。だって、今はsudoってそういう使い方されてないでしょ。" userName="commandersaki" createdAt="2025/06/23 12:30:55" color="#38d3d3">}}




{{<matomeQuote body="OpenDoas、OpenBSDのdoasの移植版だけど、予想されることのほとんどをたった4260行のコードでやってるんだ。sudoにはほとんど誰も知らないポリシーツールがたくさんあるけど、それが攻撃対象領域を増やしてるんだよ。" userName="pona-a" createdAt="2025/06/23 11:57:56" color="#785bff">}}




{{<matomeQuote body="210個のsudo CVEのリスト、どう探しても見つからないんだけど。それホントに合ってる？" userName="j-krieger" createdAt="2025/06/23 11:55:20" color="">}}




{{<matomeQuote body="既存のプログラムだって、致命的なバグが２つはあるだろうね。不完全なものを不完全なもので置き換えるだけで、書き直しが必ずしも悪いわけじゃない。特に時間が経って巨大化したプログラムなら、もっと良い構造にしたり、良い仕様書をつけたりするメリットがある。他のものが依存してるから変えられない、みたいな偶然の振る舞いをどうしても維持したいシステムもあるけど、sudoはそういうんじゃないと思うよ。" userName="Dylan16807" createdAt="2025/06/24 12:57:49" color="#38d3d3">}}




{{<matomeQuote body="例えば、Alpine linuxではOpenDoasがデフォルトで使われてるよ。" userName="puzzlingcaptcha" createdAt="2025/06/23 13:30:44" color="#ff33a1">}}




{{<matomeQuote body="そもそも、どうして何もかも制限なしに実行される必要があるわけ？" userName="ikekkdcjkfke" createdAt="2025/06/23 12:38:46" color="">}}




{{<matomeQuote body="＞ if any binary has setuid set, it runs as root<br>More precisely, it runs as the file owner. Which is often root." userName="SoftTalker" createdAt="2025/06/23 13:47:10" color="">}}




{{<matomeQuote body="There’s also full sudo session logging and a logging server now, along with binaries to replay all those logs.  Whether those LOC reflect the logging server, I don’t know.It literally replays in the terminal like a movie.  It’s nice, but I worry too much about the security implications (passwords captured, etc) to roll it out.edit:Ah yes, sudoreplay.  You can see this video a playback via it.  That’s not the guy typing, that’s sudoreplay time-accurately replaying what happens.https://www.youtube.com/watch?v=8XHlowCiLaM" userName="bbarnett" createdAt="2025/06/23 12:58:38" color="#785bff">}}




{{<matomeQuote body="Should your calculator ask who you are to compute 2+2? Contrary to popular belief, access control was stapled onto the computation space. There was a time when it was considered an unnecessary extravagance. It only became the night unbuckle mandate that machines give a shit about who you are once we started using computers as the basis of business systems.Accounts thereafter, ruined everything." userName="salawat" createdAt="2025/06/23 12:54:48" color="">}}




{{<matomeQuote body="There’s been some work on alternatives to setuid sudo. For example run0 from systemd." userName="jowea" createdAt="2025/06/23 17:29:29" color="">}}




{{<matomeQuote body="Asking the OS to do something without restrictions is not very difficult; sudo does that by virtue of its existence (it’s setuid). The extra code is deciding when not to do that." userName="saagarjha" createdAt="2025/06/23 11:44:52" color="">}}




{{<matomeQuote body="For anyone thinking this is unnecessarily pedantic, it’s not.I didn’t exactly know what setuid did. I learned something today. :)" userName="kayodelycaon" createdAt="2025/06/23 14:55:24" color="">}}




{{<matomeQuote body="I got it from here [0]. I didn’t notice it was a keyword search, so it’s an overcount. Thanks for correcting me.<br>Going off its security advisories page [1] and this tracker [2], it seems to be around 43 CVEs, most rated high severity.<br>So the actual rate would be 43 CVE / 430 kLoC = ~0.01 CVE per kLoC, so ~2.65 CVEs for udisks and ~0.2 for pmount.[0] https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=sudo[1] https://www.sudo.ws/security/advisories/[2] https://security.snyk.io/package/linux/debian%3A10/sudo" userName="pona-a" createdAt="2025/06/23 11:59:32" color="#ff5c5c">}}




{{<matomeQuote body="Someone said this: https://news.ycombinator.com/item?id=44364842I agree.How about we just start using doas, anyway?" userName="johnisgood" createdAt="2025/06/24 14:19:21" color="">}}




{{<matomeQuote body="I remember last time I installed it, there was neither sudo nor doas preinstalled." userName="pona-a" createdAt="2025/06/23 14:24:58" color="">}}




{{<matomeQuote body="sudo has a lot of machinery for representing complex policies which involve partial access to elevated (or just different) permissions, and with more conditions than just a correct password for the requesting user. The kernel itself just sees a binary running as root which may drop some of those permissions before starting another process.<br>(And this isn’t even the most arcane part of linux userland authorization and authentication. PAM is by far the scariest bit, very few people understand it and the underlying architecture is kinda insane)" userName="rcxdude" createdAt="2025/06/23 11:49:02" color="#ff33a1">}}




{{<matomeQuote body="言いたいことわかったわ。<br>君の言い方だと、使われてる言葉とか開発者への批判みたいに聞こえちゃったんだよ。複雑なツールを単に書き直したって事実だけじゃなくてね。<br>そういえば、`sudo`って仕様とか、過去の脆弱性に対する既存のユニットテストとかないのかな？<br>こんなに重要なものを実装するのに、リグレッションテストとかドキュメントがたくさんないなんて超びっくりだわ。" userName="faceplanted" createdAt="2025/06/24 10:19:52" color="#ff5c5c">}}




{{<matomeQuote body="エンジニアによる書き直しで、元のツールが自身の仕様に従ってないケースが見つかることもあるんだ。この書き直しで元のsudoに二つ問題が見つかったし。<br>このプロジェクトに関わったうちのエンジニアの一人が、使ったテスト手法や見つけた問題についてここで書いてるよ: https://ferrous-systems.com/blog/testing-sudo-rs/.<br>その後、書き直し版専用のセキュリティ監査をやって三つの問題が見つかったんだけど、そのうち一つは元のsudoの実装にも影響するんだ: https://ferrous-systems.com/blog/sudo-rs-audit/.<br>俺も、大きくて複雑なコードベースの書き直しはたいてい悪い選択だって考えには賛成だよ。<br>でも、sudoは特に大きなコードベースじゃないし、特に複雑でもないんだ—ただ、特にセンシティブなだけ。<br>そういう場合、トレードオフが逆転することもあると思う。<br>古くて機能が安定したコードベースを（範囲を絞って）書き直すことは、あらゆる面で改善につながる可能性があるんだ。" userName="Xylakant" createdAt="2025/06/24 12:25:11" color="#ff33a1">}}




{{<matomeQuote body="デスクトップで20年以上もLinuxを結構ハッピーに使ってる者として言わせてもらうと、機能面でもセキュリティ面でも、いまだに永遠の実験みたいに感じるね。" userName="hbogert" createdAt="2025/06/23 07:34:37" color="">}}




{{<matomeQuote body="Linuxが実験的だと思うなら、他のOSを見たらいいよ。" userName="stavros" createdAt="2025/06/23 07:39:27" color="">}}




{{<matomeQuote body="BSDファミリーはかなり成熟してて安全だと俺は結構確信してるな。<br>Linuxはほとんどの人にとって、まあ十分って感じ。" userName="ahofmann" createdAt="2025/06/23 07:57:41" color="">}}




{{<matomeQuote body="それは確かに興味深い見方だね。<br>俺はプライベートでも仕事でも両方使ってるけど、セキュリティ面では（selinuxあっても）物足りなさを感じるのは認めるとしても、機能面では俺がもう一つ使ってるWindowsをゲーム体験以外ではるかに超えてると思うよ。<br>GrapheneOSみたいなのがデスクトップにもあればいいのになぁ（Qubesは知ってるよ）" userName="subscribed" createdAt="2025/06/23 07:43:19" color="">}}




{{<matomeQuote body="ローカルのroot権限昇格って、最近はほとんど関係ないんだよね。<br>実際、エクスプロイトチェーンの一部としてしか役に立たないって感じ。<br>シェルサーバーとか、もうないでしょ。" userName="sneak" createdAt="2025/06/23 07:47:50" color="">}}




{{<matomeQuote body="大きな違いの一つは、BSDは統括委員会によって設計されてるってこと。<br>普通、同じ問題に対する解決策が15種類もあるんじゃなくて、うまく機能する解決策が2～3種類なんだよ。<br>ファイルシステムを例にとると、公式のファイルシステムはUFS(1＼2)とZFS。<br>GEOMをLVMやLUKSとかに使ってる。<br>そうは言っても、開発資金や開発者の大部分はLinuxに注ぎ込まれてるから、それ自体が（最終的には）より良いシステムにするのかもしれないね。<br>追記: もちろんUFSは非推奨じゃないよ。" userName="8fingerlouie" createdAt="2025/06/23 09:38:59" color="#45d325">}}




{{<matomeQuote body="＞GrapheneOSみたいなのがデスクトップにもあればいいのになぁ（Qubesは知ってるよ）<br>SecureBlueとKicksecureが一番近い代替だよ。" userName="IlikeKitties" createdAt="2025/06/23 07:56:17" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="エクスプロイトチェーンだって？<br>まさに、同じ記事で言ってたFedoraに影響するPAMの問題と組み合わせるみたいなやつ？" userName="magicalhippo" createdAt="2025/06/23 07:54:27" color="#ff5c5c">}}




{{<matomeQuote body="Linuxは成熟して安全っていうけど、iOSやAndroidみたいなアプリごとの権限管理（ファイルやカメラの使用許可とか）がないんだよね。昔は良かったのかもしれないけど、最近はちょっと競争相手に遅れをとってるんじゃない？" userName="charcircuit" createdAt="2025/06/23 09:15:37" color="">}}




{{<matomeQuote body="記事の脆弱性はローカル権限昇格（LPE）の話で、PAMはその一部。LPEはまずコード実行が必要ってこと。ほとんどのシングルユーザーLinuxでは、LPEは大したことないと思うな。俺のPCみたいに一人で使ってるなら、ユーザーでコード実行されればパスワードとか全部盗まれるし、結局`sudo`のパスワードもバレてroot取られるでしょ。LPEがあっても、永続化とかがちょっとやりやすくなるくらいで、結果はそんなに変わらない気がする。" userName="TheDong" createdAt="2025/06/23 08:09:19" color="#45d325">}}




{{<matomeQuote body="「シングルユーザーLinuxデバイスでLPEは意味ない」って話、ほとんどがAndroidじゃないかな？って思う。もしそうなら、Androidはアプリをちゃんとサンドボックス化してるから、rootを取れるってのは結構大きなアドバンテージになるはずだよ。" userName="simoncion" createdAt="2025/06/23 08:14:57" color="">}}




{{<matomeQuote body="「Eternal experiment（永遠の実験）」って言うけどさ…Windows 11、見たことある？ 10でもいいけど。開発者たちはしょっちゅう色んなとこいじって、壊して、直して…ってのを数ヶ月ごとに繰り返してるじゃん。" userName="franga2000" createdAt="2025/06/23 08:50:48" color="">}}




{{<matomeQuote body="BSDは運営委員会が設計してるから、同じ問題に15個も解決策があるんじゃなくて、ちゃんと動くのが2〜3個って感じ。比べるなら、特定のBSDとLinuxそのものじゃなくて、特定のBSDとLinuxディストロの間で比べるのが正しいよ。" userName="graemep" createdAt="2025/06/23 09:48:48" color="">}}




{{<matomeQuote body="Androidってシングルユーザーシステムじゃないんだよね。アプリとかサービスとか、基本的に全部それぞれ独自のユーザーを持ってる。アプリごとに違うユーザーIDとSELinuxコンテキストがあるし、Androidのセキュリティはかなりしっかりしてるよ。" userName="akdev1l" createdAt="2025/06/23 20:34:48" color="#38d3d3">}}




{{<matomeQuote body="そのサイトからして事実と違うって！ grsecurity®は高性能なexploit対策を提供する唯一のカーネル置き換えって言ってるけど、secureblueはフルデスクトップディストロで、grapheneosの強化ツール（hardened mallocとか hardened chromiumのフォーク）を組み込んで、flatpakで hardenedアプリを展開するベースにしてる。grsecurityは全然そんなことしてないよ。" userName="IlikeKitties" createdAt="2025/06/23 12:16:11" color="">}}




{{<matomeQuote body="そうそう、grsecurityは「インチキだよ」って言われるんじゃなくて、ちゃんとシステムを硬くする現実的な方法を提供してるんだよ。" userName="mathverse" createdAt="2025/06/23 13:51:08" color="">}}




{{<matomeQuote body="ねぇ、「シングルユーザーシステム」って言葉の使い方がややこしいんだよ。ノートPCみたいに「人が一人しか使わない」って意味ならAndroidもそうだけど、システム上のユーザーアカウントとは別次元の話。<br>Androidはアプリがサンドボックスされてるから、root権限が取られるってのはやっぱりヤバいことなんだ。その点では同意だよ。" userName="simoncion" createdAt="2025/06/24 13:14:37" color="#38d3d3">}}




{{<matomeQuote body="なんか、平均的なLinuxディストロよりも、BSDたち（FreeBSDとかOpenBSDとか）の方が、それぞれ全然違う感じがするんだよね。" userName="jeltz" createdAt="2025/06/23 10:06:40" color="">}}




{{<matomeQuote body="「BSDってかなり成熟してて安全だと思うよ」って話だけど、illumosベースのシステムもそうだってことを忘れちゃダメだよ。" userName="NexRebular" createdAt="2025/06/23 10:11:02" color="">}}




{{<matomeQuote body="人気のあるLinuxディストロは似てるけど、Void、Alpine、Gentoo、Chimera、NixOSみたいに、全部のディストロを見たら全然違うんだよ。<br>使ってるC librariesとかinit systemsとかも色々違うからね。" userName="graemep" createdAt="2025/06/23 12:03:48" color="">}}




{{<matomeQuote body="BSDは委員会設計で質が高いって言うけど、Linuxのユーザー空間って「首なし鶏」みたいにバラバラだよね。kernelみたいにTorvaldsみたいな「独裁者」がいた方が、まとまりがあって良いものができると思うんだ。Jobsとかもそうだよね。" userName="uncircle" createdAt="2025/06/23 13:27:08" color="">}}




{{<matomeQuote body="昔Open SolarisをLaptopで使ってみたけど、けっこう良かったんだ。でも、とにかくsoftwareのsupportが全然なくて大変だったな。<br>最近はWeb中心になったけど、Illumosも状況はきっと変わってないだろうね。" userName="johannes1234321" createdAt="2025/06/23 11:50:29" color="">}}




{{<matomeQuote body="ねぇ、container escapingって、VM escapingと比べてどれくらい難しいの？Containersはホントはsecurity boundariesじゃないんだけど、よくそう思われて使われてるよね。" userName="coderatlarge" createdAt="2025/06/23 08:53:05" color="">}}




{{<matomeQuote body="従来のLinux desktopって、全部自分のuser権限で動かしてるんだよ。Firefoxもdesktop environmentもsudoもね。これはAndroidと全然違う話。<br>「multi-seat」かどうかは関係ないんだ。人気のLinux distrosは、desktopではちゃんとしたmulti-user configurationになってない。<br>Serversは別だけど、ここではdesktopの話をしてるんだ。" userName="akdev1l" createdAt="2025/06/24 17:28:46" color="#ff33a1">}}




{{<matomeQuote body="Chromium OSは、けっこう（appのisolationって点で）近いことやってるよ。VM baseでLinux applicationsを動かしてて、GPU accelerationもできるんだ。<br>でも、Googleが出してるやつ以外で、人気のあるdistroがないんだよね。" userName="lima" createdAt="2025/06/23 09:52:39" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
