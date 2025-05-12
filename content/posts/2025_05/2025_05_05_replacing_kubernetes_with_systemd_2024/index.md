+++
date = '2025-05-05T00:00:00'
months = '2025/05'
draft = false
title = 'Kubernetesの代替はsystemd!?(2024)'
tags = ["Kubernetes", "systemd", "コンテナ", "オーケストレーション", "Linux"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Kubernetesの代替はsystemd!?(2024)

引用元：[https://news.ycombinator.com/item?id=43899236](https://news.ycombinator.com/item?id=43899236)




{{<matomeQuote body="作者の意見わかるわ〜。仕事ではKubernetes楽だけど、趣味で使うにはリソース食いすぎで無理なんだよね。安い$10/月 VPSじゃ動かないから、手作業でdocker compose使ったり、Ingressの代わりにTraefik使ったり。Kubernetesなら簡単にできることでも、自分で何とかしないといけなくて面倒くさい。もっと軽いKubernetes互換のやつ出てほしいな〜。" userName="drivenextfunc" createdAt="2025/05/05 21:53:50" color="#ff5c5c">}}




{{<matomeQuote body="k0sとかk3s試したことある？小さい規模でうまくいってる話いっぱい聞くよ。リンク見てみて。" userName="sweettea" createdAt="2025/05/05 21:58:40" color="#ff33a1">}}




{{<matomeQuote body="あはは、そのリンク自分のコメントじゃん！k3sまだ使ってるけど、マジで気に入ってるよ。古いPC4台で94個もPod動かせてる。平均CPU 500m、メモリ25GBくらい。ほぼ中古パーツでArch Linuxで動かしてる。YAMLだけで管理できて、デプロイがめっちゃ楽。3台落ちても大丈夫。古いマシンでもGCPとかより全然パワフルで安いんだ。電気代$32/月くらいで数百ドルかかってたクラウド代が浮いたよ。自宅にサーバ置くの、超オススメ！" userName="horsawlarway" createdAt="2025/05/06 00:37:58" color="#45d325">}}




{{<matomeQuote body="K8sが安い$10/月 VPSには重いって？ Oracle Cloud Free Tierが一番 generous だよ。小さなk8sクラスターも動かせるし、k8sのサービスも無料なんだ。無料なのにARM64コア4つと24GBのメモリがもらえるから、1つから4つくらいのノードに分けられるよ。ぜひリンク見てみて！" userName="Alupis" createdAt="2025/05/05 22:20:07" color="#38d3d3">}}




{{<matomeQuote body="平均450ワット消費？マジか！うちの家全部（サーバーと古いGPU含めても）より多いよ。電気温水器使ってるのに年間4MWhもいかないくらい。冬でも抵抗暖房とガス併用しててやっとそのくらい。音声操作とか動画配信のために常に450ワットは、エネルギー使いすぎじゃない？" userName="Aachen" createdAt="2025/05/06 08:38:10" color="">}}




{{<matomeQuote body="ただ、落とし穴もあってさ。商用利用はダメだし、いざ使おうと思ってもインスタンスの空きがないこと結構あるんだよね。" userName="waveringana" createdAt="2025/05/05 22:32:37" color="">}}




{{<matomeQuote body="ああ、ヨーロッパの人ね :) アメリカは電気代安いから、そんな気にしない人もいるかもね。うちのラックなんか800W使ってるけど、ほとんどアイドル状態だよ。古い企業向け機材いじるのが好きなんだけど、そういうのは電力食うんだよ。Dell R720とかNASとか色々で合計800Wくらいかな。" userName="aftbit" createdAt="2025/05/06 13:30:31" color="">}}




{{<matomeQuote body="俺はコストより環境への影響の方が気になるな。これもヨーロッパ人ならではかな？" userName="Kudos" createdAt="2025/05/06 14:26:25" color="">}}




{{<matomeQuote body="昔ながらのやり方で、ansibleとか使ってみれば？俺は数台の専用サーバーを全部ansibleで管理してるよ。docker composeをパワーアップさせた感じかな。traefikとラベルでリバースプロキシとか証明書を自動でやってくれるし、認証はautheliaで簡単。GitHubに例もいっぱいあるから、週末にセットアップすれば結構楽なシステムできるよ。" userName="nvarsj" createdAt="2025/05/05 22:04:14" color="#45d325">}}




{{<matomeQuote body="商用利用ダメって話だけど、あれは完全に無料の枠だけじゃないかな。クレジットカード登録して請求が発生するアカウントにしとけば（無料枠って扱いじゃなくなるけど）、毎月無料のリソースはもらえるんだよ。それを超えた分だけ請求されるってこと。" userName="Alupis" createdAt="2025/05/05 22:55:24" color="#45d325">}}




{{<matomeQuote body="traefikの古き良きNginxに対する利点って何？" userName="nicce" createdAt="2025/05/05 22:25:04" color="">}}




{{<matomeQuote body="OCIの無料枠には怖い話いっぱいあるんだ（redditのr／oraclecloud見てみて、要するに：アカウントがいきなり消されてデータも全部アクセスできなくなるよ）。マジで大事なもんは置かない方がいいって。" userName="rfl890" createdAt="2025/05/06 00:31:44" color="#45d325">}}




{{<matomeQuote body="＞Kubernetes互換APIで安いVPSでも動く軽量な代替欲しいよね。Podmanがそれだよ。KubeマニフェストからPodやコンテナ作れるし、docker composeみたいにも使える。systemdとも連携できるし、Docker APIもサポートしてる。<br>［0］ https：／／docs．podman．io／en／latest／markdown／podman−kube−play．1…<br>［1］ https：／／docs．podman．io／en／latest／markdown／podman−systemd．unit…" userName="figmert" createdAt="2025/05/06 12:01:33" color="#ff5c5c">}}




{{<matomeQuote body="アカウント登録は〜スパム〜マーケティングリード獲得のための客寄せだろうし、mailinatorみたいなドメインは受け付けないと思うよ。" userName="mdaniel" createdAt="2025/05/06 00:55:59" color="">}}




{{<matomeQuote body="ドキュメントだと不明だけど、”ゼロダウンタイム”デプロイできるの？つまり、まず新しいPod作って、ヘルスチェックでOKなの待ってから古いのは消す感じ？これをサービス／ingress／whateverとかと連携させて、健全な方にだけトラフィック流すとか？" userName="jillyboel" createdAt="2025/05/06 15:31:57" color="">}}




{{<matomeQuote body="これまさに俺がcanine.sh作った理由なんだよ−−基本、インディーズハッカーがHerokuみたいなフル体験をKubernetesのパワーと移植性でできるようにね。<br>シングルサーバーだとk3s使うんだけど、ホストマシンで〜200MBメモリ食う。理想じゃないけど、dockerデプロイと格闘する苦労とhetznerの安さを考えたらやる価値あった。" userName="czhu12" createdAt="2025/05/05 22:40:53" color="#38d3d3">}}




{{<matomeQuote body="＞Kubernetesは月＄10／monthのVPS（1共有vCPU、2GB RAM）じゃリソース食いすぎ。<br>俺はHetznerでそれよりずっと少ない値段でもっとリソース得てるよ。月＄8 a monthで4 vCPUsと8GB of RAM払ってる：https：／／www．hetzner．com／cloud<br>めちゃ安いARMサーバーはGerman onlyだから、USならレイテンシ高くなるけど、金節約するなら価値あると思う。" userName="MyOutfitIsVague" createdAt="2025/05/06 14:10:11" color="#ff5c5c">}}




{{<matomeQuote body="他のクラウドみたいに物理クレカが必要。privacy.comとか仮想カードはダメ。不正利用うんぬんで正直には言わないけどね。仮想カード使うと拒否られる。支払いは謎に失敗、理由も教えてくれないから自分で推測するしかない。これはOracleに限らずどのクラウドもそう。最近GCPでも同じ経験したよ。物理カードの写真送ったらやっと通った。巨大企業のやり取りってこんな感じだよね。" userName="SOLAR_FIELDS" createdAt="2025/05/06 02:37:25" color="#ff5c5c">}}




{{<matomeQuote body="設定とか状態管理のためのPersistent volumesってどうしてるの？それがk3sから離れる理由なんだよね。俺はオーバーヘッド少ないし状態管理やバックアップが楽だからProxmoxとLXCで動かしてるけどさ。" userName="rcarmo" createdAt="2025/05/06 07:14:44" color="">}}




{{<matomeQuote body="c0baltが言ってたことと基本的に同じだね。設定いらないし全部超簡単にセットアップできるよ。Traefikのイメージを実行して、他のコンテナにdocker labelsを追加するだけ。Traefikがそのラベルを見てそれぞれのリバースプロキシを設定してくれるんだ。letsencryptとかzerossl使ってTLS証明書まで生成してくれるし。" userName="nvarsj" createdAt="2025/05/06 11:13:40" color="#ff5733">}}




{{<matomeQuote body="俺はDocker swarmを社内＆軽量なプロダクション向けに5年以上使ってるけど問題ゼロだよ。追記すると、そこそこパワフルなマシン上のシングルノードクラスターだけど、何にせよやってることに対してはオーバースペックなくらい。だから趣味で使うには十分すぎるくらい良いと思うよ。俺のホームラボではマルチノードクラスターでも試してるけど、そっちもちゃんと動いてるし。" userName="rollcat" createdAt="2025/05/06 08:19:00" color="">}}




{{<matomeQuote body="CoolifyとDokployと比べてどうなの？" userName="satvikpendem" createdAt="2025/05/06 11:14:49" color="">}}




{{<matomeQuote body="それらの話って全部支払いカード入れてない人たちのこと？俺はLarry Ellisonsの「ジェット燃料ペニー」（タダ同然の無料枠）を1年半くらい楽しく吸い続けてるけど、こういう問題は全然ないよ。だって支払いカード入れてるからね。" userName="SOLAR_FIELDS" createdAt="2025/05/06 02:31:20" color="">}}




{{<matomeQuote body="それかmicrok8sだね。k8sの何がそんなにリソースを食ってるのか気になるな。何もしてないときはコントロールプレーンってほとんどアイドル状態じゃないの？" userName="mikepurvis" createdAt="2025/05/05 22:11:17" color="">}}




{{<matomeQuote body="K8sが重すぎる状況だとDocker Swarmはすごく理にかなってると思うな。「重い」っていうのはリソース消費の面でも、単純なユースケースには複雑すぎるって意味でもね。" userName="Taikonerd" createdAt="2025/05/06 15:11:44" color="">}}




{{<matomeQuote body="残念ながらどっちもkubernetesは使ってないね。このツールは評判悪いところもあるけど、俺が働いた会社はどこも最終的にはkubernetesに移行したよ。" userName="czhu12" createdAt="2025/05/06 17:24:53" color="">}}




{{<matomeQuote body="もしよかったら質問させてね。<br>Layer 2の Metallbって、Keepalivedみたいな役割をVRRPなしでやってるって理解で合ってる？<br>それってさ、どれかのノードが落ちてても外からクラスタ全体にアクセスできる、ただ一つの外部IPを割り当てるために使えるのかな？<br>この部分ってセルフホストする初心者には分かりにくいと思うんだよね。ドメインのDNSレコードをクラスタの単一IPに向けて、あとはK3sの中から全部設定できたら楽で便利なのに。" userName="sureglymop" createdAt="2025/05/06 10:35:47" color="#ff5c5c">}}




{{<matomeQuote body="systemdはかなり嫌われてるけど、実際たくさんの問題を解決してるんだよね。マジで軽視すべきじゃないよ。多分、systemdがデフォルトでディストリに入り始めた時、みんな変更しなきゃいけなくてイラついたからだと思うんだ。<br>いくつかクールな点を紹介するね。<br>- containers<br>- machinectl：これを使って以下を制御できるんだ。<br>- nspawn：もっと強力なchroot。これはdockerより良い解決策になることが多いよ。超軽量でカーネルを共有する。<br>- vmspawn：nspawnじゃ足りない時に、完全な仮想化が必要な場合。<br>- importctl：マシンをダウンロード、インポート、エクスポートできる。{vm,n}spawnでもdockerみたいにダウンロード機能を使えるんだ。ハブはあるけど、あまり活発じゃないね。<br>- homed/homectl：ユーザー管理を拡張して、ホームディレクトリの暗号化（別のマウント）、権限の細かい制御なんかを簡単にできる。<br>- mounts：fstabはもういいよ。ドライブやパーティションの自動マウント・アンマウントを簡単にする。アクセスベース、時間、他のユニット（spawnとか）、ソケット、なんでもトリガーにできるんだ。<br>- boot：起動を制御できるだけじゃなく、これが起動シーケンスでサービスを開始・停止するのにアクセスできる理由なんだ。<br>- timers：cronはもういいよ。cronはマシンを起こせないし、マシンがオフだったからサービスが動かなかったってことも教えてくれない。cronはあいまいな時間を設定したり、月の第三日曜日の場合でさらにY.serviceが動いてる時だけ起動からX分待つ、みたいな複雑なことはできない。なんでそんなことするんだって？いや、できるんだよ！<br>- service units：これが君のジョブだね。機能面で本当に制御できる。本来やるべきことだけをできるようにロックダウンできるんだ。<br>- overrides：systemctl editを使って設定を編集するんだ。これでoverride設定が作られて、元の設定を壊す必要がない。元の設定を見つけて、再インストールしてもなぜか戻せないっていうあの面倒な作業はもうないよ！元の設定がインストールで変わっても、君のoverrideは触られないんだ！<br>たくさんの機能があって、ほとんど全部システムにもう入ってるんだよ！学ぶのはちょっと面倒だけど、そんなに複雑なことをやりたくないなら、実際そんなに悪くない。でもその場合、ドキュメントいらずで超複雑なこともできるツールなんてないだろうしね。" userName="godelski" createdAt="2025/05/06 03:20:39" color="#38d3d3">}}




{{<matomeQuote body="mounts：fstabはもういいよ、ってさ。<br>彼らの自動マウントのルールは入り組んでて、ドキュメント通りに1：1でやっても全然うまく動かない時があるから、ファイルシステムが適切なタイミングでマウントされないってことについてはもう忘れな。<br>" userName="egorfine" createdAt="2025/05/06 11:14:11" color="">}}




{{<matomeQuote body="これマジでムカつくんだよね。<br>特定のアプリケーションが入ったdockerコンテナを動かしてるサーバーがあるんだ。そいつは特定のファイルシステムに書き込むんだ（もちろんコンテナ内にはちゃんとbind mountされてる）。<br>時々、ファイルシステムがマウントされる前にdockerが起動しちゃうんだ。<br>systemdでこれをどうにかできるのは分かってるけど、まだやってないんだよね。だってsystemdで何かするたびに、変な分かりにくいドキュメントを読まなきゃいけないんだもん。設定がどこに、どうやって入るか知る必要があるし。<br>journalctlを無効にできたのは良かったかな。だって、単純なローテートされたログファイルをgrepする方がjournalctlより億万倍速いんだもん。僕のコメントとスレッド全体を見てよ。<br>systemdのコンセプトは好きなんだけど、実装とそのリーダーは好きじゃないな。" userName="bombela" createdAt="2025/05/06 15:00:34" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Because grepping through simple rotated log files is a billion times faster than journalctl（ジャーナルctl経由で見るより、ただのローテートされたログファイルをgrepする方が億万倍速い）って言ってるけどさ。<br>これはイラつくけど、“回避策”があるんだ。<br>タイム journalctl | grep ”sshd” | wc -l<br> （めっちゃ時間かかる）<br>タイム journalctl ＞ /tmp/all.log && タイム wc -l /tmp/all.log<br> （これも時間かかる）<br># 解決策<br>タイム journalctl --grep=sshd | wc -l<br> （かなり速くなる）<br>パイプでgrepに渡す代わりに、--grepフラグを使う必要があるのはイラつくけど、その考え方に切り替えるのはそんなに難しくないよ。ちなみに、--no-pagerフラグを使うともう少し速くなったけど、微々たる差だから覚えなくてもいいや。<br>Sometimes docker starts before the filesystem is mounted.（時々、ファイルシステムがマウントされる前にdockerが起動する）ってやつだけどね。<br>systemctl cat docker.serviceの出力を見てみてよ。ユニットの中に“After”、“Wants”、“Requires”っていう引数があるはずだ。それを編集したいんだね（sudo systemctl edit docker.serviceを使うのを強くお勧めするよ、さっき言った理由で）。そして、マウントしたいドライブの後ろに来るように確認するんだ。Requires引数を設定して、そのドライブを必須にすれば、そのドライブが起動する前に絶対に開始しないはずだよ。<br>あるいは、ドライブを先に起動させることもできる。でも正直、dockerをこんなに早く起動させる理由はないんだけどね。<br>ターゲット順序の図[0]とArch wiki[1]のリンクを貼っておくね。みんな kinda lazily multi-user.target[0]を使ってるからややこしくなるんだ。<br>[0] https：//www.freedesktop.org/software/systemd/man/latest/boot...<br>[1] https：//wiki.archlinux.org/title/Systemd#Targets" userName="godelski" createdAt="2025/05/06 18:38:53" color="#45d325">}}




{{<matomeQuote body="journalctl --grepでも、単純なファイルに対してgrepするよりずっと遅いんだよ。それに、僕が好きなripgrepを使えば、さらに速いんだ。<br>いやマジで、journalctlは今の形では意味がないと思うんだ。設計自体がおかしい。<br>その潜在能力は好きなんだけどね。でも実装は好きじゃない。" userName="bombela" createdAt="2025/05/06 18:51:37" color="#38d3d3">}}




{{<matomeQuote body="journalctl --grep is still much slower than grep on simple files（journalctl --grepは、単純なファイルに対してgrepするよりずっと遅い）って言ってるけどさ。<br>なんて言えばいいか分かんないな。君は問題があって、使ったコマンドと時間を見せた。だから僕は、ダンプしてgrepする（君はそっちが速いって言ってた）よりも半分以下の時間で済む別の方法を見せたんだ。<br>僕の結果は君の結論と一致しないんだよね。<br>if you use ripgrep（もしripgrepを使うなら）って話だけどさ。<br>僕はripgrepに何度もやられたんだよ。デフォルトでファイルをフィルタリングするなんて、僕にとってはイカれた設計選択だね。特にgrepから逸脱してる！grepが無視すると思うのは、システムの隠しファイル（ドットファイル）と、僕が明示的に指示したものだけだよ。僕は.gitignoreファイルは作ったけど、grep ignoreファイルは作ってない。gitで無視してるものをgrepで探すことは結構あるんだ。grepで一番よく使うのは、ビルド成果物やログを探すことだね。Pushなんか絶対したくないものだよ。そして多くの人がやられるのがそこで、これらのファイルが消えた！って思うんだ。メンテナーもこの件でHNで僕にかなり失礼だったよ。意見が違うのは分かるけど、この挙動にみんながびっくりしないと思うのはやっぱイカれてると思うね。名前は文字通りgrepの代替だって言ってるんだぜ。うん、その挙動がgrepと大きく違うのは驚くよ（笑）" userName="godelski" createdAt="2025/05/06 19:16:15" color="#ff5c5c">}}




{{<matomeQuote body="Systemd gets a lot of hate but it really solves a lot of problems.（systemdはかなり嫌われてるけど、実際たくさんの問題を解決してるんだよね）って意見だけど。<br>僕の見方では、最初の数年（10年かな？）はかなり嫌われてたんだ。それはプロジェクト自体が悪かったからじゃなくて、むしろ、たくさんの他の問題を抱えていたにもかかわらず、非常に優れていたから成功したんだ。問題は、元々ちゃんと動いていたものを意図的に壊して、適切な修正策を提供しないメンテナーの態度だったんだ。<br>どっかに昔のコメントで、大きなリストがあったはずだよ。systemdの痛みを一度も感じたことがないなら、パーティーに遅れてきたか、あるいは君のニーズがたまたまコアメンテナーのニーズといつも一致していたかのどっちかだね。" userName="gwd" createdAt="2025/05/06 08:09:59" color="#ff33a1">}}




{{<matomeQuote body="boot: you can not only control boot but（boot：起動を制御できるだけじゃなく）って話だけど。<br>systemdではシーケンスを自分で制御できないから、ネットワークに安定して起動することは決してない。<br>そうそう、それがsystemdの主な利点の一つで、最も強力な機能の一つだと思うんだけど、それは同時に、ごく一般的なUbuntuインスタンスとか以外の環境で暮らしてるなら、不安定で起動が再現不能になる理由でもあるんだ。" userName="egorfine" createdAt="2025/05/06 11:15:40" color="#ff5733">}}




{{<matomeQuote body="HNでの態度やripgrepの挙動について言われたけど、具体的に教えてほしいな。ripgrepのデフォルト挙動に戸惑う人がいてもおかしくないけど、性能と並んで良い点として評価されてるんだ。そもそもripgrepは伝統的なgrepとは違うように作ったから、使う必要はないんだ。grepの代替って名前だっていうのも違うよ。もしgrepみたいに使いたいならオプションがあるんだ。デフォルト挙動が驚かれるのは分かってるから、説明書に書いてるし、無効化も簡単にできるようにしてるよ。" userName="burntsushi" createdAt="2025/05/06 20:16:22" color="#45d325">}}




{{<matomeQuote body="正直、ちょっとキモかったわ。もしかしてripgrepの言及を探してる？驚いたよ。サイレントエラーが大きなエラーより圧倒的に悪いってのは今も主張するね。予想してたファイルが見つからないのは、見つかりすぎるより悪いよ。ripgrepは使ってないけどね ;)<br>grepが.gitignoreを無視するのはバグじゃない。俺はエイリアスは機能を追加するために使うべきだと思うけど、あんたは削除するためだと思う。これは意見が合わないから、もう蒸し返したくないよ。" userName="godelski" createdAt="2025/05/06 20:55:43" color="">}}




{{<matomeQuote body="＞ただの /home は50年もちゃんと動いてたんだから、だからこそ絶対に置き換えないといけないんだな、きっと。<br>50年前と今じゃニーズが全然違うんだぜ。ノートPCとかハッキングとか、昔はなかっただろ？今はほとんどの人が自分のPCを持ってるんだ。だから”50年前に動いてた”なんて説得力がないよ。<br>homedが何を解決しようとしてるのか理解して、それが間違ってるのか議論する方がいいって。<br>気に入らないかもだけど、systemdが何か変えるのにはだいたい正当な理由があるんだ。壊すのが好きでやってるわけじゃないよ。" userName="jraph" createdAt="2025/05/06 11:32:38" color="#ff5c5c">}}




{{<matomeQuote body="＞grepが.gitignoreファイルを無視するのを「バグ」だとは思わない。 俺も思ってないけど？笑。<br>エイリアスやデフォルト設定の考え方が違うって？全然違うよ！俺は個々の挙動のメリットデメリットを見るだけだ。ripgrepは違うアプローチを取ってて多くのユーザーが評価してるんだ。<br>もう蒸し返したくないって？俺もだよ。でも俺の名前は守るし、主張は明確にする。蒸し返したくないならそうしてね。<br>つまりあんたはripgrepを使ってないのに文句を言って、俺をrudeとかcreepyとか呼んでるんだな。俺が乗り込んできて明確にしようとしたときに驚くのはやめてくれよ。" userName="burntsushi" createdAt="2025/05/06 21:37:04" color="#ff5c5c">}}




{{<matomeQuote body="タイマーはcronよりずっと良いって。笑い話にならないくらいだよ。何十年もUnixマシンを管理してきて、何万っていう大事なcronエントリで問題が起きることが本当に面倒だったんだ。タイマーが同期できて、バックアップできて、個別のファイルとして更新できるってだけでも、とんでもないアドバンテージなんだぜ。<br>“50年動いてた”っていうものの中には、実は50年間ずっとひどかったものもあるんだよ。C言語の文字列とかエラー処理を見てみろって。ちょっと間違って使うと、センシティブなデータを垂れ流すことになったりするんだ。" userName="MyOutfitIsVague" createdAt="2025/05/06 13:48:13" color="#ff33a1">}}




{{<matomeQuote body="journalctlのパフォーマンスについてだけど、俺のテスト結果はあんたの結論と違うんだ。SSD上でテストしたらjournalctlはrgより約107倍、grepより約21倍遅かったよ。605MBのログに4GiBも必要だったし、`--grep` をつけたら25402行中273行しか返ってこなかったんだ。全ログ出力だと全行出てくるのにね。具体的なコマンド出力も載せておくよ。俺の使い方が間違ってるなら教えてくれよ。" userName="bombela" createdAt="2025/05/07 03:27:24" color="#ff33a1">}}




{{<matomeQuote body="いいリストだね、sudoの代替としてrun0も加えるよ。唯一不満なのは、昔設定できたタイムアウトのデフォルトに相当するものがないことだな。回避策は`sudo -i`みたいに使うことなんだけど、俺の指癖とコピペには抵抗したよ。<br>＞Systemd gets a lot of hate<br>俺はそうじゃなくて、単にうるさいインターネットの少数派シンドロームの犠牲者だと思うな。もうただの一般的な名前になってて、initとかサービスユニットだけじゃなく、他のものも全部含めて言われてる感じだね。run0のマニュアルページもリンクしておくよ。" userName="holuponemoment" createdAt="2025/05/06 04:57:33" color="">}}




{{<matomeQuote body="＞まだ間違った使い方してるか教えて＜<br><br>使い方は合ってるけど，測り方が違うね．journalファイルはバイナリなんだ．journalctlはそれを読んでるけど，grepやrgはテキストを読んでるだけだからね．<br>＞journalctl --grepの方が速いなんて信じがたいな＜<br><br>なんで？並列で読んでるのかもしれないじゃん．追伸：ビルドログとか.gitignoreに入れるようなやつでgrepする羽目になるのはわかるよ．" userName="godelski" createdAt="2025/05/07 07:03:22" color="#45d325">}}




{{<matomeQuote body="＞実際50年間最悪だった＜<br>君に同意するよ，まさにその通りだね．<br>cronについてはちょっと意見が違うかな．似たような経験はあるけど，個人的にはcronで悩んだことは一度もないって言いたいね．systemdとは明らかに違う．" userName="egorfine" createdAt="2025/05/06 13:54:46" color="">}}




{{<matomeQuote body="そうだね．systemdなしじゃラップトップは完全に使えないし，ほとんどの機能はラップトップで確かに必要だ．<br>俺の不満はね：なんでそれがサーバーサイドでも無理やり押し付けられるんだよ？ってこと．" userName="egorfine" createdAt="2025/05/06 11:35:24" color="">}}




{{<matomeQuote body="＞マシン起動時にネットワークがない時がある？＜<br>ネットワークが利用可能なのに，時々ネットワークが利用可能になるのを待つことがあるんだ．これが何が原因か全然わからない．<br>＞起動しようとしてるサービスのunitファイルに依存関係が宣言されてないとか＜<br>いやいや，それなら簡単ですぐ直せるよ．" userName="egorfine" createdAt="2025/05/06 11:33:59" color="">}}




{{<matomeQuote body="systemdで唯一問題なのは，PID 1を乗っ取ってることだよ．数えきれないくらいのコードでできたバイナリで，アップグレードの時は自身をexecする手間までかけてるんだ．ここに，PID 1の役目を正しくこなすだけのシンプルなプログラムがあるんだ．［コード省略］これからsystemdを起動すれば，もし何かあってもすぐカーネルパニックにはならないってわけ．（Credit: https://ewontfix.com/14/）" userName="rollcat" createdAt="2025/05/06 08:28:05" color="#45d325">}}




{{<matomeQuote body="それについては完全に同意だね．繰り返しになるけど，cronはラップトップでは本当に使えないから，systemd timersが確かに助けになるんだ．<br>サーバーサイド？そんなのは全然いらないね．" userName="egorfine" createdAt="2025/05/06 17:52:04" color="">}}




{{<matomeQuote body="systemdが勝ったのは優れてたからじゃなくて，GNOME 3.8を使うにはsystemdが必要だったからだよ．upstartはもっとひどかったけどね．systemdは問題を解決してるけど，実装の質や使い勝手は全然良くないよ．デフォルトの扱いがダメだったり，ドキュメントが分かりにくかったり，systemctlみたいなCLIもひどい出来だ．" userName="p_l" createdAt="2025/05/07 09:51:30" color="#ff33a1">}}




{{<matomeQuote body="俺はサーバーサイドでもsystemdでかなり満足してるよ，色んなこと楽になるしね．あと，自分のサーバーでhomedには気づかなかったな．君のサーバーではhomedを無理やり押し付けられたの？" userName="jraph" createdAt="2025/05/06 11:38:34" color="">}}




{{<matomeQuote body="Cron にはマジでうんざりさせられたよ。再起動や DST でジョブが飛んだり、「月の第一日曜日」みたいな指定ができなかったり、何より同じジョブが複数回同時に動くのを防げなかったり…。Cron をめっちゃ使ってた会社では、これがしょっちゅう頭痛のタネだったね。Cron デーモンによっては多少できるのもあるけど標準じゃないし、特に AIX の Cron にはそういう機能なかった。systemd なら標準でできることも、Cron だと個別のスクリプトで何とかしないといけなくて、しかも出来が悪くなりがち。systemd でも苦労はあるけど、全体で見たら Cron よりはるかにマシで、悩まされることがずっと減ったよ。" userName="MyOutfitIsVague" createdAt="2025/05/06 14:26:13" color="#38d3d3">}}




{{<matomeQuote body="サーバーサイドだとマジで気にするよね！<br>サーバーがダウンするのは段違いにヤバいし、よりによって最悪のタイミングで起きるもんだと断言できる。他のコメントにもあったけど、Cron は同時に動いちゃう。でもサーバーだと実行順序が大事なことが多いんだ。これは systemd の方がずっと簡単に扱える。<br>確かに Cron はマジで simple に使えるけど、trivial なことしかできないんだ。一方 systemd は simple なのに complex なことまで色々できる。systemd を学ばないのはマジで損してるよ。そんなに難しくないし、タイマーの仕組みを覚えるのに30分もかからないのに、その見返りはめっちゃ大きいからね。" userName="godelski" createdAt="2025/05/06 18:18:45" color="#45d325">}}




{{<matomeQuote body="俺の homelab はしばらく Podman + systemd (quadlet) で動かしてるんだけど、新しい k8s バリアント調べるたびに、面倒すぎてやる価値ないなってなる。昔作った Ansible の playbook の一部で、事前にイメージプルしておいて unit ファイルを所定の場所に置くだけにしてる。<br>Voron 3D printer のスタック全部も Podman + systemd で動かしてるから、コンポーネント全部まとめてアップデートとかロールバックできるんだ。まあ、mkosi と systemd-sysupdate に切り替えて、ディスクイメージ丸ごとアップデート/ロールバックしちゃおうかなとも考えてる。<br>主な問題点はね：<br>1. みんな docker-compose ファイルで配布しがちだから、systemd unit に変換しないといけない。<br>2. Docker イメージって user/privilege の設定が色々複雑で、Podman なら要らないこと多いんだ。root で動くの拒否したり、他のユーザーに切り替えたりすると、うざい userns id mapping が必要な時もある。<br>でも、全体的にはどんな k8s (や k8s バリアント) の設定より全然複雑じゃない。systemd と journald に全部統合されてて、二箇所に分かれてないのも良い感じだよ。" userName="kaylynb" createdAt="2025/05/06 00:43:15" color="#ff5c5c">}}




{{<matomeQuote body="いいね！俺も似たようなやり方で長年運用してるんだよ: https://github.com/Mati365/hetzner-podman-bunjs-deploy 。Podman と systemd で組んでるんだけど、マジでその間全く壊れてない。超安定、超シンプル。unit ファイル置くだけで OK。rock solid だね。" userName="mati365" createdAt="2025/05/06 04:57:43" color="">}}




{{<matomeQuote body="へぇ、他のやり方も見れて良いね。rootless と `userns=auto` って、どういう理由で使い分けてるの？この issue: https://github.com/containers/podman/discussions/13728 以外でその話あんまり見かけないんだよね。" userName="kaylynb" createdAt="2025/05/07 19:13:18" color="#38d3d3">}}




{{<matomeQuote body="`podlet` を使えば compose ファイルを quadlet ファイルに変換できるよ。https://github.com/containers/podlet" userName="Touche" createdAt="2025/05/06 02:21:23" color="#ff33a1">}}




{{<matomeQuote body="それ、結構上手くいくよね。AIモデルでも結構うまく変換できること見つけたよ。もちろん出力は修正必要だけど、昔より変換ツールは良くなってるよね。" userName="kaylynb" createdAt="2025/05/07 19:15:14" color="#785bff">}}




{{<matomeQuote body="でも、単一（か独立した複数の）’ノード’の話だよね？<br>俺的には Podman/systemd/quadlet って、k8s ノードがコンテナを実行する方法（ lingo でいう CRI かな？）の実装詳細って感じにも見えるんだ。k8s が提供するノード間のオーケストレーション/スケジューリング抽象化の代わりにはならないんじゃないかな。「ここに Podman-systemd ファイルを実行できるマシンがあるよ、実行したいスペックはこれ、さあどうぞ」みたいな。" userName="OJFord" createdAt="2025/05/06 11:07:14" color="#ff5c5c">}}




{{<matomeQuote body="うちのサーバーは cattle じゃなくて pets なんだよね。ごちゃ混ぜで何年もかけて集めたやつだから。k8s 使っても結局ほとんど特定のマシンにサービス固定することになっちゃうだろうし。ラックも持ってないし、ただの寄せ集めボックスがワイヤーシェルフに積んであるだけなんだ。<br>いつかちゃんとネットワーク機器用のラック作って、k8s か何か動かすための同じスペックのサーバー揃えたいとは思うけど、今は優先度高くないんだ。<br>Podman-systemd が上位オーケストレーションの実装詳細って考え方は良いね。最近の Podman は template unit サポートしてるから、理論上は同じサービスを複数動かすのに unit ファイル重複させる必要すらないんだ。" userName="kaylynb" createdAt="2025/05/07 19:21:10" color="#45d325">}}




{{<matomeQuote body="俺も同じ経験だよ。俺のワークフローは、`podman run` コマンドでコンテナ動かして正しく動くか確認、`podlet` でベースとなる container ファイル作って、container ファイルを編集（特に volume と network は他の quadlet ファイルに分けてる）、そして終わり（理論上）。<br>podman-compose プロジェクトはまだ活発にメンテされてると思うし、docker-compose の代替としては良い選択肢かもね。でも Podman の systemd とのインターフェースがマジ気持ち良いんだ。" userName="mufasachan" createdAt="2025/05/06 09:46:56" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="podman-composeがアクティブに開発されてるかは分からないけど、docker-composeの良い代替じゃないんだよね。compose specの全機能をカバーしてないし、たまに変な挙動をする。でも朗報として、新しいdocker-compose (V2) はpodmanと問題なく動くよ。" userName="goku12" createdAt="2025/05/06 13:05:02" color="#ff5733">}}




{{<matomeQuote body="これをさらに簡単にする次のステップは、systemd内でQuadletを使ってコンテナを管理することだよ。もっと詳しい情報は、この Red Hat のブログにあるよ。https://www.redhat.com/en/blog/quadlet-podman" userName="masneyb" createdAt="2025/05/05 21:32:07" color="#ff5c5c">}}




{{<matomeQuote body="これこそ正解！ Quadlets はコンテナを動かすのに最高の方法だよ、ホント「設定したらあとはお任せ」って感じ。特に Fedora とか Rocky Linux なら、追加のパッケージも要らないしね。これ、いつか記事に書こうかな…" userName="rsolva" createdAt="2025/05/05 22:17:27" color="#38d3d3">}}




{{<matomeQuote body="そうそう！ Ubuntu 24.04 LTS で Podman 使うのに、subuid / subgid を予約するために`containers`ユーザーを作る必要があったんだよね。あと UserNS オプションについてのこの Red Hat のブログもすごく役立った。結局、rootful で`UserNS=auto`使うのが rootless より簡単でセキュアみたい（ Dan Walsh 談）。" userName="aorth" createdAt="2025/05/06 14:28:49" color="#38d3d3">}}




{{<matomeQuote body=" Dan Walsh が rootful で`userns=auto`使うのを推奨してたのはこれだね。引用：＞ User= は Podman 実行で問題多い。Rootless は簡単だけど、rootful に`--userns=auto`を使うのも推奨。各コンテナがユニークなユーザー名前空間で動くよ。ソースはこちら。https://github.com/containers/podman/issues/12778#issuecomme..." userName="aorth" createdAt="2025/05/07 07:23:00" color="#ff5733">}}




{{<matomeQuote body="記事の最後でもこれ（ Quadlet ）に触れてたけど、筆者はまだ深掘りしてなかったんだね。リンクありがとう。記事からの引用だよ：なんか運悪く、 Podman の systemd 連携はもう非推奨になってるらしくて、今は” Quadlet ”ファイルってのでコンテナを定義する話になってるらしい。それが何なのかは全然分からないから、それはまた今度学ぶことにするよ。" userName="al_borland" createdAt="2025/05/05 23:38:43" color="">}}




{{<matomeQuote body=" Quadlets について誰か触れてるか確認したくてコメント欄に来たんだ。先週、ホームサーバーを docker compose から rootless podman quadlets に移行したばっかり。移行は大変だったけど、結果にはすごく満足してるよ。" userName="overtone1000" createdAt="2025/05/05 22:23:30" color="#785bff">}}




{{<matomeQuote body="すごくクールみたいだけど、compose でできることが全部できるのかな？つまり、ネットワークとか複数のサービス、ボリューム、config(maps)、それに例えば traefik 用のラベルなんかも、全部1つのファイルにまとめて書けるの？そこが compose の気に入ってる所なんだ。シンプルだし、rootless podman ともちゃんと動くしね。" userName="sureglymop" createdAt="2025/05/05 23:06:39" color="">}}




{{<matomeQuote body="podlet っていうツールを調べてみて。これは compose ファイルとか kube manfiests 、動いてるコンテナなんかを Quadlets に変換してくれるツールなんだ。新しいサービスをデプロイする時（大抵 compose ファイルがあるから）、これで Quadlet の設定を作るのを爆速にしてるよ。" userName="grimblee" createdAt="2025/05/06 06:47:00" color="#38d3d3">}}




{{<matomeQuote body=" Quadlets に compose が持ってる機能で欠けてるものは少ないと思う。むしろ systemd サービスになるから、 Quadlets の方が多機能だよ。Services は Podman の pods に似てて、Volumes や mounts は同じ。config は secrets とか mounts で対応できるし、 Podman の secrets は Docker よりずっと良いと思う。 traefik を Quadlets で動かす例も探したら見つかったよ。ネットワーク周りはちょっと慣れが必要だけど、従来のネットワーク作ってアタッチするやり方もほぼそのままできるし、 Quadlets で全部対応できる。 Quadlets は YAML じゃなくて ini 形式。あとテキストハイライトのツールはまだ少ないかな。前のコメントにもあったけど、 Quadlets は systemd サービスごとにファイルが1つ必要だから、 compose みたいに概念的に近いものを1ファイルにまとめられないんだ。でも、 podman は Quadlet のディレクトリを再帰的に探してくれるから、関連サービスはディレクトリにまとめて管理できるよ。これは大きな変更だったけど、 YAML よりファイルシステムでコンテナを整理する方が気に入ったかも。" userName="overtone1000" createdAt="2025/05/06 17:44:36" color="#38d3d3">}}




{{<matomeQuote body="docker-compose.yamlをKubernetes YAMLに変換して，それを．kube拡張子付きのquadletとしてデプロイすればできるよ．" userName="0xC0ncord" createdAt="2025/05/05 23:37:28" color="">}}




{{<matomeQuote body="それは確かにすごくいいね．でもKubernetesのリソース定義はcomposeファイルよりずっと複雑だから，簡単に移行できるように．compose拡張子を追加するだけで同じことができたらいいのにね．" userName="sureglymop" createdAt="2025/05/06 06:30:01" color="">}}




{{<matomeQuote body="このブログ記事もぜひ見てみてよ．僕のhomelabでquadletsにスムーズに移行するのにすごく役立ったんだ：https：／／news．ycombinator．com／item？id＝43456934" userName="lstolcman" createdAt="2025/05/06 06:28:17" color="#ff33a1">}}




{{<matomeQuote body="skate（https：／／github．com／skateco／skate）っていうのを作ったんだ．基本的にこれなんだけど，マルチホストでk8s manifestsもサポートしてるんだ．内部ではpodmanとsystemdを使ってるよ．" userName="byrnedo" createdAt="2025/05/05 21:17:02" color="#ff33a1">}}




{{<matomeQuote body="これはすごくいいアプローチだね，僕もすごく共感するよ．マルチホストのDocker／Podmanを動かす簡単な方法がないのが本当に残念なんだ（Docker Swarmは残念ながら2019年から開発停止状態だし）．<br>でも，僕の意見ではK8sは考えうる限り最悪のAPIとUXだよ．Docker Composeの仕様の方がずっと使いやすいと思う．だから今，マルチホストのdocker-composeを実験してるんだ：https：／／github．com／psviderski／uncloud" userName="psviderski" createdAt="2025/05/07 02:12:40" color="#ff5c5c">}}




{{<matomeQuote body="K8sのUXについては君と議論しないよ．serviceとかcronjobとか，基本的な概念は全部持ってるから，また別の構文を考えるより労力が少なくて済んだんだ．" userName="byrnedo" createdAt="2025/05/07 05:10:35" color="">}}




{{<matomeQuote body="ありがとう！課題について話し合うのは大歓迎だよ．twitter ＠psviderski かメール me at psviderski．name に気軽に連絡してね．" userName="psviderski" createdAt="2025/05/07 05:48:32" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
