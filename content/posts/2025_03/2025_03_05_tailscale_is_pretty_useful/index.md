+++
date = '2025-03-05T00:00:00'
draft = false
title = 'Tailscaleが便利すぎる！その理由とは？'
tags = ["Tailscale", "VPN", "ネットワーク", "セキュリティ", "テクノロジー"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> Tailscaleが便利すぎる！その理由とは？

引用元：[https://news.ycombinator.com/item?id=43270835](https://news.ycombinator.com/item?id=43270835)

{{<matomeQuote body="Tailscaleってオレのお気に入りの会社の一つで、すごく魅力的だと思う。CTOがその動機とビジョンについて詳しく説明してる素晴らしい記事があるよ＞”https://crawshaw.io/blog/remembering-the-lan”<br>個人的にはいくつかの懸念があるんだけど、VPNモデルって本当に合ってるのかな？誰かがTailscaleのノードを手に入れたら、tailnet上のすべてのサービスにアクセスできちゃうのはリスクだと思う。一般の人がVPNアプリをすべてのデバイスにインストールする気になるのかも疑問だ。<br>あと、DERPはいいけどシグナリング用で、CGNATの普及はIPv6より早いと思うし、ポートやプロトコルでACLを設定できる部分が大きな魅力だと思う。" userName="apitman" createdAt="2025-03-05T21:51:36" color="#38d3d3">}}

{{<matomeQuote body="確かにVPNモデルが本当にメリットあるのかは長期的にはわからないけど、ウチではTailscaleで特定の内部ウェブアプリへのアクセスを制限しつつ使ってる。ACLを使えば特定のポートのアクセスだけに制限できるから、安全に使えるよ。やっぱり、Tailscaleはゼロトラストな解決策とは言えないけど、便利なVPNに近い気がする。小規模な組織には価値があると思う。" userName="thewebguyd" createdAt="2025-03-05T22:17:50" color="#ff5733">}}

{{<matomeQuote body="Tailscaleって便利なだけじゃなくて、VPNがメッシュ状になってる場合（全トラフィックが同じ場所に行くわけじゃない）だと効率的なんだ。ノードが直接接続できるからね。従来のVPNだとできないから、そこが大きなメリット。" userName="wkat4242" createdAt="2025-03-05T22:31:40" color="#ff5733">}}

{{<matomeQuote body="どのVPN使ってんの？その理由も知りたい。" userName="guerby" createdAt="2025-03-06T04:33:41" color="">}}

{{<matomeQuote body="Tailscaleはデバイスの状態によってアクセスを制御するサイバーセキュリティの統合もあるんだよ。出てる機能が使われてないって話もあるけど、実際に検討してないから詳しくは言えないかな。" userName="frenchtoast8" createdAt="2025-03-05T23:39:40" color="">}}

{{<matomeQuote body="ポスチャー実装は簡単だし、統合のリストも増えてる。Kolideを使ってみたけど、Kandjiとも統合する予定。ポスチャーAPIを使えば、アクセス制限や敏感なアセットへの一時的アクセス設定ができるから、便利だと思う。" userName="cjcampbell" createdAt="2025-03-06T02:27:56" color="#ff5c5c">}}

{{<matomeQuote body="ほとんどのユーザーがその機能を使ってないと思うし、単なる機能の箇条書きみたいなもんじゃないか？" userName="jychang" createdAt="2025-03-05T23:56:37" color="">}}

{{<matomeQuote body="その機能って使えないの？" userName="ehutch79" createdAt="2025-03-06T00:39:37" color="">}}

{{<matomeQuote body="ほとんどのユーザーは企業じゃないし、使われてないからと言って価値がないわけじゃない。この点はちょっと違うんじゃないかな。" userName="joneskoo" createdAt="2025-03-06T04:51:35" color="">}}

{{<matomeQuote body="最初の点についてだけど、TailscaleのACL機能が多くの懸念を解消してくれるよ。ウチのノートPCはサーバーにSSHできるけど、その逆はできないし、サーバー同士も勝手に情報をやりとりできないから安心。" userName="jdolak" createdAt="2025-03-05T22:09:35" color="#ff5c5c">}}

{{<matomeQuote body="ACLの設定を教えてくれない？これはちょうど俺がやりたいことなんだ。" userName="notsylver" createdAt="2025-03-05T23:14:41" color="#45d325">}}

{{<matomeQuote body="この設定を探しているんだけど、もしよければシェアしてほしい。" userName="stampedbox" createdAt="2025-03-06T09:25:11" color="">}}

{{<matomeQuote body="いい視点だね。AndersはOpenZitiに含まれるzrokにも興味があると思うよ。<br>＞“デフォルトで拒否し、最小特権のモデル”は、ノードへのアクセスがオーバーレイ内のすべてのサービスへのアクセスを意味しないんだ。これにはSDKも含まれていて、許可されたアプリだけが埋め込まれるけど、アプリにはリスニングポートがないから攻撃されづらいよ。" userName="PLG88" createdAt="2025-03-06T09:03:55" color="#785bff">}}

{{<matomeQuote body="OpenZitiを応援してるんだけど、何度も見たけど自分には合わない感じがするんだ。SDKを使ってアプリにトンネリングを埋め込むというアイデアは独特で魅力的だね。だけど、もしライセンスが変わったりお金がなくなった場合の選択肢が心配なんだ。" userName="apitman" createdAt="2025-03-06T17:02:43" color="#ff5c5c">}}

{{<matomeQuote body="この選択はパフォーマンスやCPUの利用にどう影響するの？Wireguardは低リソースで良好なネットワークパフォーマンスを提供してるよね。" userName="infogulch" createdAt="2025-03-06T13:44:05" color="">}}

{{<matomeQuote body="OpenZitiとNebulaの違いは何？どこが優れていて、どこが劣ってるのか、ユースケースも違うの？" userName="concerndc1tizen" createdAt="2025-03-06T11:37:15" color="#ff5733">}}

{{<matomeQuote body="Nebulaの専門家じゃないけど、自分が見た限りでは似てる点と違う点があるね。<br>＞“OpenZitiはゼロトラスト原則に基づいてサービスを接続することに焦点を当てているが、Nebulaは機械を接続することにフォーカスしている“。" userName="PLG88" createdAt="2025-03-06T11:52:10" color="#ff5c5c">}}

{{<matomeQuote body="オーバーレイを構成するためにデプロイされたルーターは、まだインバウンドポートが必要だよね？10080の役割がそれだと思ってた。" userName="TNorthover" createdAt="2025-03-08T20:37:39" color="#785bff">}}

{{<matomeQuote body="素晴らしいね、Nebulaの問題を解決してくれそう。Kubernetesへの統合は進んでるの？資金調達モデルはどうなってるの？企業が開発をサポートしてくれるの？" userName="concerndc1tizen" createdAt="2025-03-06T15:13:50" color="#ff5c5c">}}

{{<matomeQuote body="OpenZitiはNetFoundryによって開発・保守されているよ。管理や運用が非常に簡単な製品版も提供しているし、セキュリティや法的な面でもサポートがあって安心できるよ。<br>＞“我々は独自の暗号を作っているわけではなく、オープンソースの標準実装を使っている”。" userName="PLG88" createdAt="2025-03-06T15:29:49" color="#ff5c5c">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="すごいね。NebulaがOpenZitiと同じことをやってないのが不思議だよ。Kubernetesのネットワークって弱点が多いと思うし、サービスメッシュのmTLSを使った認証は余計な負担だし、Ciliumのネットワークポリシーもラベルを使うのが面倒でポッド以外のワークロードとはうまくいかないし、多クラスターはうまく機能しないし、外部のワークロードも設定が面倒だよ。こういう問題を解決する簡単なソリューションがあればいいのに。" userName="concerndc1tizen" createdAt="2025-03-06T18:10:19" color="#ff33a1">}}

{{<matomeQuote body="彼らはいい方向に進んでいると思う。前に会社で技術的な話をしたとき、彼らが一般消費者向けのVPN製品を提供しようとしていると話したんだ。AppleのVPNみたいで、すべてが”簡単に使える”感じ。" userName="epscylonb" createdAt="2025-03-05T22:27:26" color="#785bff">}}

{{<matomeQuote body="一般の消費者は本当にVPNが必要なのかな？" userName="hattmall" createdAt="2025-03-05T22:56:26" color="">}}

{{<matomeQuote body="Tailscaleは実際にはVPNじゃなくて、TCP/IPの世界におけるOSIレイヤー5なんだ。90年代のLANパーティのように接続が簡単にできる。<br>私は Tailscale を使って、81歳の母のPCにリモートサポートをしたり、モバイルフォンやiPadからデスクトップにリモートアクセスしたり、旅行中に自宅ネットワークからメディアをストリーミングしたりしている。これにはほとんど設定が必要なくて、ソフトウェアをインストールして、”exit nodeを許可”するボックスにチェックを入れて、母のPCをtailnetに共有するだけだった。実際、ほとんど手間がかからずに便利なんだ。" userName="parasubvert" createdAt="2025-03-05T23:10:07" color="#ff5733">}}

{{<matomeQuote body="Magic DNS機能もすごく良いね。メインストリームのキラーアプリは何だかわからないけど、Tailscaleはそれが現れたときに実行する準備ができている気がする。AI時代によって、皆がデータプライバシーに対してもっと意識的になるかもしれないと思っているよ。将来的に、すべての家庭が家の自動化や個人情報の保存のためのミニサーバーを持つようになると思っている。クラウドの台頭がこれを遅らせたけど、クラウドとホームサーバーは相反するものではないと思う。" userName="epscylonb" createdAt="2025-03-05T23:47:15" color="#ff5733">}}

{{<matomeQuote body="その点は理解できるけど、どうしてVPNじゃないと言いながら、VPNについて長々と説明するの？もちろんVPNでしょ？たくさんの人がVPNをプロキシの置き換えとして使っているから、言葉の本来的な意味が薄まっているのかな。" userName="mr_mitm" createdAt="2025-03-06T06:59:10" color="">}}

{{<matomeQuote body="Tailscaleを使ってArma 3サーバーをホストしたことがあるよ。技術者じゃない人たちがマジックリンクを使ってデーモンを動かしていた。" userName="leoqa" createdAt="2025-03-06T02:20:47" color="">}}

{{<matomeQuote body="Kubernetesを使ってArma 3サーバーをホストしていたけど、AIの負荷を分散するためにスケーラブルなヘッドレスクライアントを持っていたんだ。友達は、数百のAIグループを使っても今までで一番スムーズなサーバーだったと言ってた。TailscaleならPodのホストネットワーキングを有効にする必要はなかったな、考えてみれば。" userName="dharmab" createdAt="2025-03-06T03:13:07" color="#785bff">}}

{{<matomeQuote body="この場合のAIグループって何？" userName="EQYV" createdAt="2025-03-06T08:01:27" color="">}}

{{<matomeQuote body="家庭の機器をスマホと繋げるメインストリームな理由があればいいね。個人のバックアップやゲームのストリーミングなど。私はこの意見には賛成じゃないけど、そうかもね！" userName="enos_feedler" createdAt="2025-03-06T03:09:45" color="">}}

{{<matomeQuote body="＞全てのデバイスにVPNアプリをインストールすることを、一般の人が果たしてやる気になるのかね。<br>もちろん、ネット検閲や地理的制限でお気に入りのサービスにアクセスできなくなったらみんな喜んでインストールするよ。<br>中国やロシア、ウクライナ、トルコ、イギリス、ドイツの人に聞いてみて。" userName="Andrew_nenakhov" createdAt="2025-03-06T05:34:31" color="#38d3d3">}}

{{<matomeQuote body="でも、あなたが言っているVPNアプリって、親コメントが言っているTailscaleとは全然異なるよ。<br>NordVPNやMullvad、Surfsharkを使うと、IPアドレスを隠すための逆プロキシとして使っているだけなんだ。<br>Tailscaleは自分専用のVPNを作って、安全にデバイスにアクセスすることがポイントなんだ。" userName="hn_throwaway_99" createdAt="2025-03-06T05:47:43" color="#ff33a1">}}

{{<matomeQuote body="＞あなたが言う“VPNアプリ”って、親コメントが言ってるTailscaleとは違うよね。<br>それが問題？<br>それでもインストールする意欲は示されてるじゃん。" userName="Dylan16807" createdAt="2025-03-06T09:28:15" color="">}}

{{<matomeQuote body="確かに。VPNは元々、LAN同士を安全に繋ぐために作られたものだからね。<br>プライバシーのためのものは副産物で、実際にはそこまで優れているわけじゃない。<br>プライバシー提供にはTorの方がずっといいよ。" userName="JFingleton" createdAt="2025-03-06T08:17:28" color="">}}

{{<matomeQuote body="やっぱりVPNには良い利用例があると思う。<br>別の場所にあるデバイスのアクセスを公開するいい方法でもあるし、セキュリティを強化するための良い防御層だよ。<br>Tailscaleは商業的すぎて使ってないけど、他のVPNメッシュサービスを使ってる。<br>もちろんエンドポイントを適切に守る必要はあるけどね。" userName="wkat4242" createdAt="2025-03-05T22:29:24" color="#ff5c5c">}}

{{<matomeQuote body="＞プライベートネットワークを全てのデバイス間で構築する。<br>面白いサイドプロジェクトをやってるんだ。<br>Piholesを通して、クリアとVPNの出口ノードを作って、友達に送ったRaspberry Piを使ってファイルや映画、ストリーミングサービスを共有するつもりだよ。<br>セキュリティ向上にもなるし、特に両親のPCを直すとき便利だから、少しでもマルウェアを防げるからね。<br>外出先でもホームネットワークのデバッグに便利だし、旅行中も映画が見れるし。" userName="godelski" createdAt="2025-03-06T01:47:16" color="#ff5733">}}

{{<matomeQuote body="＞TSの代わりにローカルネットワークを使うか条件を付けることはできない。<br>Tailscaleはヘアピン接続もできるから、条件を付ける必要がないかもしれないよ。" userName="nulbyte" createdAt="2025-03-06T12:19:53" color="">}}

{{<matomeQuote body="＞全てのデバイスにVPNアプリをインストールする必要がない。<br>ルーター上で運用して、サブネット全体にアクセスできるからね。" userName="LeoPanthera" createdAt="2025-03-06T02:22:29" color="#ff5733">}}

{{<matomeQuote body="有料のDERPが未来の道だというのは不幸なことだね。" userName="VikingCoder" createdAt="2025-03-06T02:10:09" color="">}}

{{<matomeQuote body="有料のDERPは小さいローカル企業にとって非常に良いモデルになると思うよ。<br>月5〜10USDでサービス提供できるからね。<br>ただ、DERPプロトコルがそのようにスケールできるかが心配だな。" userName="apitman" createdAt="2025-03-06T14:01:13" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="このコミュニティから、Tailscaleを信頼する理由を詳しく知りたいな。Tailnetロックのこと？それともTailscaleが侵害されないこと、家庭ネットワークが狙われないとか？" userName="iamdamian" createdAt="2025-03-05T20:06:58" color="#ff5733">}}

{{<matomeQuote body="俺はCappy Paranoid。サービスプロバイダーは絶対に信じないべきだと思ってる。Tailnetロックとか色々なセキュリティ対策もしてるけど、クライアント証明書の検証でアクセスも制限するつもり。そうすれば、Tailscaleネットワークが侵害されても、信頼できないクライアントは簡単に侵入できなくなるから。" userName="stego-tech" createdAt="2025-03-05T20:14:36" color="#ff5733">}}

{{<matomeQuote body="クライアント証明書を大量に設定するなら、何でWireguardを自ホストしないの？Wireguardサーバーのセットアップは超簡単だから。ポート開放と公開鍵の管理がちょい面倒だけど、クライアント証明書を設定する手間を考えたら自分でVPNを立てる方が楽だよ。" userName="codetrotter" createdAt="2025-03-05T21:09:17" color="">}}

{{<matomeQuote body="俺も自分でWireguardをやってるよ。最初はTailscaleを使ったけど、結局はしっかりしたWireguardの設定にした。これで家のLANにアクセスしつつ、DNSルックアップもPi-Hole経由にしてる。できるならWireguardを学ぶことを強く勧めるよ。" userName="stego-tech" createdAt="2025-03-05T21:55:30" color="#785bff">}}

{{<matomeQuote body="俺はWireguardをVPSで動かしてて、公に出たトラフィックを家のマシンにルーティングしてる。ISPがCGNATじゃなければ、これでも問題ないの？" userName="selfhoster" createdAt="2025-03-06T01:23:19" color="">}}

{{<matomeQuote body="CGNATのことは、家庭でWireguardサーバーをホストする話に関して言ってたんだ。ポートを開放する必要性があるから、CGNATが絡むと少し面倒って話。" userName="codetrotter" createdAt="2025-03-06T02:53:23" color="">}}

{{<matomeQuote body="理解した。家庭でサーバーを公開してる人もいるのを忘れてたわ。洞察ありがとう。" userName="selfhoster" createdAt="2025-03-06T14:27:00" color="">}}

{{<matomeQuote body="クラウドでトラフィックが解読されるのはどういい解決策なの？すべてのトラフィックが一つのノードに通るし、ACLもないし、鍵の配布も、静的IPも…？" userName="aborsy" createdAt="2025-03-06T02:07:14" color="">}}

{{<matomeQuote body="トラフィックがクラウドで解読されるってどういうことかは分からないけど、俺のやり方は、公に出てるトラフィックがVPSに来て、Wireguardがそれを家庭のVMにルーティングする感じ。VPSと受け取る側は自分で管理してる。" userName="selfhoster" createdAt="2025-03-06T14:30:36" color="#ff33a1">}}

{{<matomeQuote body="VPSでWireguardサーバーを動かしてたら、クライアントから家までのトラフィックの暗号化がエンドツーエンドじゃないよね。VPSでトラフィックが見えてるのが問題なんだ。" userName="aborsy" createdAt="2025-03-06T20:33:34" color="">}}

{{<matomeQuote body="Tailscaleを選ぶ理由が分からん。SlackのNebulaとか、最初から自ホスティングできる選択肢もあるし、Tailscaleにはなんか変なヒypeがある感じ。" userName="tjoff" createdAt="2025-03-05T20:54:24" color="">}}

{{<matomeQuote body="TailscaleのヒypeはVPNをかなり簡単にするからだと思う。特にビジネスやスタートアップ、ホームラボでは、他のことに集中できるのが大事。ただ、使う人が決定の理由を理解しないと、セキュリティを弱める使い方になることもある。" userName="stego-tech" createdAt="2025-03-05T21:07:44" color="#45d325">}}

{{<matomeQuote body="自分はTailscaleユーザーで、その簡単さが人気の理由だろうと思う。このシンプルさが、変な設定を生む要因にもなってるんじゃないかな。" userName="haswell" createdAt="2025-03-05T21:33:19" color="">}}

{{<matomeQuote body="シンプルにすることで他の人が新しい使い方を見つけ、また色々な問題が出てくるから、ITの仕事は安泰だと思う。" userName="stego-tech" createdAt="2025-03-05T21:42:52" color="">}}

{{<matomeQuote body="TailscaleはWireGuardを基にしてるよね？VPNを簡単にしたソフトウェアだと思う。EC2のディエンスでLANにトンネルを作るのも、超簡単な設定ファイルが2つあるだけで済んだ。" userName="xienze" createdAt="2025-03-05T21:37:40" color="#ff5733">}}

{{<matomeQuote body="Wireguardはトランスポートレベルを簡素化し、高性能を得るけど、Tailscaleも認証やACLなどを簡単にする。専門知識がないと難しい部分だね。" userName="nine_k" createdAt="2025-03-06T02:48:56" color="#45d325">}}

{{<matomeQuote body="自サービスは信じるべきじゃないって意見には極端すぎる気がする。それはZero Trustの意味じゃない。" userName="HumanOstrich" createdAt="2025-03-06T00:01:53" color="">}}

{{<matomeQuote body="Tailscaleは独自PKIがないから、E2EEはIdPを経由することで、裁判所からの命令でトラフィックを解読できる。NetFoundryはオープンソースで、PKIを内蔵してるよ。" userName="PLG88" createdAt="2025-03-06T09:09:48" color="#785bff">}}

{{<matomeQuote body="まず、tailnetに追加されたノードはトラフィックを解読する能力がない。ユーザーが送ったトラフィックは別だけど、他ノードとの連絡しかできないし、設定変更も管理コンソールでしか無理。後、tail lockで外部からノード追加はできないはず。確認してもらえる？" userName="aborsy" createdAt="2025-03-06T11:27:05" color="">}}

{{<matomeQuote body="コメントの内容を誤解していたので、編集しました。" userName="PLG88" createdAt="2025-03-06T12:06:51" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="これは間違った情報だよ。政府みたいな攻撃者がコーディネーションとリレーサーバー、IdPを運営しても、tailnetのトラフィックは解読できない。秘密鍵はデバイス上に留まるし、トラフィックはエンドツーエンドで暗号化される。クライアントエージェントには秘密鍵を送信する仕組みもない。このことを明確にするか修正して！" userName="aborsy" createdAt="2025-03-06T12:32:42" color="#45d325">}}

{{<matomeQuote body="headscale使ってみて！<br>https://headscale.net/stable/" userName="sgc" createdAt="2025-03-05T20:13:37" color="">}}

{{<matomeQuote body="これを自分でホスティングする場合の主な欠点は？思いつくのは、1. 高可用性の維持 2. パッチやアップグレードの対応 だけど、自己ホストのインスタンスがTailscaleを使うよりも危険な攻撃ベクトルになりうる確率が気になる。" userName="haswell" createdAt="2025-03-05T20:30:44" color="">}}

{{<matomeQuote body="高可用性は必要ないと思う。クライアントはかなり頑健で、私のヘッドスケールのインスタンスが少しダウンしても、特に問題なく動作するから。古い接続や新しい接続は困るけど、しばらく経ってもヘッドスケールがダウンしたことに気付かないレベルだよ。" userName="eddieroger" createdAt="2025-03-05T21:40:41" color="">}}

{{<matomeQuote body="一つのノードから別のノードへのデータはTSのインフラを通らないんだ。TailscaleはWireguardの鍵を管理するための認証のパラダイムだと思ってる。" userName="mbesto" createdAt="2025-03-05T21:35:22" color="">}}

{{<matomeQuote body="あんまり理解していないけど、キーエクスチェンジは重要な部分だよね。仮に諜報機関が暗号化されたトラフィックを記録して、AWSにTailscaleのキーディストリビューションサーバーとの通信を中間攻撃させたらどうなるの？大半のトラフィックは彼らのインフラを使わないけど、重要な部分が使うならあまり関係ないよね。" userName="sureglymop" createdAt="2025-03-05T23:15:29" color="#45d325">}}

{{<matomeQuote body="SSHで自宅サーバーにリモートで繋ぐのはまだ十分だと思うよ。CGNATの問題はないし、ルーターでポートフォワーディングもしてない。云々、VMをクラウドプロバイダで動かして、そのVMにSSHで接続し、逆向きSSHトンネルを作る構成。クラウドVMのポートを開放して家庭内のOpenBSDにトンネルするやり方だよ。" userName="idatum" createdAt="2025-03-05T23:05:45" color="#ff5733">}}

{{<matomeQuote body="IPアドレスが変わるときにトンネルが壊れるなら、全ての接続を再構築する必要があるってことだよね。タイルスケールを使う用途としては、自宅サーバーにSSH（または他の接続）を持ってること。カフェに行ったらそのネットワークに登録して、接続を続けられるようにしたい。サーバーのIPは変わらないし、家にいるときはパケットが家のネットワークを離れない。外に出るときは離れるけど、魔法みたいだよ！" userName="sfink" createdAt="2025-03-06T02:54:19" color="">}}

{{<matomeQuote body="ローカルホストだけのトンネルだから、VMは静的なIPv4/IPv6とDNSを持ってるよ。自宅からSSHトンネル接続は安定してて、リモートでVMにも問題なく繋がる。TailscaleとWireguardには感謝してるけど、ここでプロバイダを信用する必要がない、VMを稼働させる提供者だけだよ。tmuxでセッションを保存できるしね。" userName="idatum" createdAt="2025-03-07T01:25:05" color="#785bff">}}

{{<matomeQuote body="自分にとってTailscaleは、自分のWireguardを維持する手間を考えると十分価値があるよ。家のネットワークはすべて公に向けて設定してるんだ。" userName="harrall" createdAt="2025-03-05T22:53:48" color="#38d3d3">}}

{{<matomeQuote body="なんでそんなに手間がかかるのか分からないな。何年もWireguardを使ってて、新しいスマホの時にQRコードをスキャンする以外のことは何もしてないよ。沈静化を図るために、ルーターやホストベースのファイアウォールルールを使ってるってこと？" userName="felbane" createdAt="2025-03-06T01:43:52" color="">}}

{{<matomeQuote body="沈静化ってのは、すべての認証と権限付与が必須で、すべてはコンテナ化してて、ファイアウォールのデフォルトはかなり厳しいってことだよ。低メンテナンスってのは、ソフトウェアが長い間ほとんど手を加えずに使えるってことなんだ。Tailscaleは導入が簡単だったし、実際に使ってみても問題なかったから、そういう意味での低メンテナンスになるんだ。" userName="harrall" createdAt="2025-03-06T04:09:19" color="#45d325">}}

{{<matomeQuote body="なんで自ホスティングコミュニティでこんなに使われてるのか理解できないよ。俺ならサーバーにこれをインストールすることはないな、WireguardやOpenVPNを使うよ。<br>追記：CGNATのせいかもしれないけど。" userName="phito" createdAt="2025-03-05T20:31:48" color="">}}

{{<matomeQuote body="＞そうやって自ホスティングコミュニティで使われてるのが理解できないよ。<br>CGNATだけじゃなくて、外部ポートを全く開けないのが大事なんだ。以前はSSHポート(標準の22じゃない)を開けてて、その時は認証試行がすごい量来てた。今はファイアウォールでゼロポート開けてるけど、Tailscaleのおかげで家にいない時でも安全にマシンにアクセスできて、無許可の試行もゼロだよ。セキュリティの専門家だから、Tailscaleのロック機能も使ってて、Tailscale自身でも自分のネットワークにノードを追加できないんだ。万が一、彼らが侵入されたとしてもね。" userName="gabeio" createdAt="2025-03-05T22:29:33" color="#ff5733">}}

{{<matomeQuote body="鍵認証だけ使ってて、パスワード認証を無効にしてるなら、無許可の試行が問題になる理由が分からないよ。" userName="Carrok" createdAt="2025-03-05T22:46:06" color="">}}

{{<matomeQuote body="＞鍵認証だけ使ってて、パスワード認証を無効にしてるなら、無許可の試行が問題になる理由が分からない。<br>xzの脆弱性を見てみて。これは自分のポートやソフトウェアを信じないことに関する話なんだ。" userName="gabeio" createdAt="2025-03-05T23:27:07" color="">}}

{{<matomeQuote body="Tailscaleのインフラを確認したの？そしたら攻撃面がかなり広がってるんじゃない？xzがそこにある可能性もあるし。" userName="papichulo2023" createdAt="2025-03-06T08:52:17" color="">}}

{{<matomeQuote body="セキュリティの専門家なら、中央集権的な鍵交換サーバーが必要な理由を説明してくれる？すべてのノードの鍵を確認するなら、セキュリティを気にする必要があると思う。TailscaleのインフラはAWSで動いてるみたいだけど、それって検閲やプライバシーリスク的に信頼できる？Tailscaleは一時的な量子耐性も提供してないんじゃない？私には、セキュリティやプライバシーが重要なら、単に「便利さ」を理由にTailscaleを使う理由が見えない。間違ってたら教えてほしい。" userName="sureglymop" createdAt="2025-03-05T23:09:28" color="#ff5c5c">}}

{{<matomeQuote body="Wireguardは、SSHとは違って、クライアントが認証に成功するまでは、閉じたポートのように振る舞うんだ。つまり、認証されてないクライアントから見れば、オープンポートはないってことだよ。CGNATがある場合はどうしようもないけど、それ以外の場合に自ホスティングのWireguardを使うことに何が問題なの？" userName="jcgl" createdAt="2025-03-06T09:06:57" color="">}}

{{<matomeQuote body="Goのtailscale.com/tsnetパッケージは結構便利だよ。自分のtailnet内だけで使う単一バイナリのHTTPサーバーとか作れるんだ。golinkプロジェクトの例も良いし、実際便利だよ。自分はこれを使ってあるアプリのためにピアツーピア通信を構築したり、他のことを制御するためのAPIとSvelte SPAをtailnetでホストしたりしたんだ。" userName="tsujamin" createdAt="2025-03-05T20:04:42" color="#ff5733">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
