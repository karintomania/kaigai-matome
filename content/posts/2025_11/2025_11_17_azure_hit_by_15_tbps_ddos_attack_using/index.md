+++
date = '2025-11-17T00:00:00'
months = '2025/11'
draft = false
title = 'Azureに50万IPから15TbpsのDDoS攻撃が発生！その驚異的な規模とは？'
tags = ["サイバー攻撃", "DDoS", "セキュリティ", "Azure", "ボットネット"]
featureimage = 'thumbnails/light_colour4.jpg'
+++

> Azureに50万IPから15TbpsのDDoS攻撃が発生！その驚異的な規模とは？

引用元：[https://news.ycombinator.com/item?id=45955900](https://news.ycombinator.com/item?id=45955900)




{{<matomeQuote body="Microsoftの公式ブログ記事だよ。DDoS攻撃の詳しい情報はこちらで見てね！https://techcommunity.microsoft.com/blog/azureinfrastructure..." userName="speckx" createdAt="2025/11/17 17:39:15" color="#38d3d3">}}




{{<matomeQuote body="Netscoutのブログ記事によると、Aisuru DDoSボットネットはDDoS請負サービスで、政府機関とかは狙わないようにしてるらしい。ほとんどの攻撃はオンラインゲーム関連だって。それなのに、なんでゲームを落とすためにお金を払うんだ？数時間ゲームをダウンさせるメリットがマジで分からん。" userName="haunter" createdAt="2025/11/17 22:00:03" color="#38d3d3">}}




{{<matomeQuote body="ガキみたいな癇癪（かんしゃく）だよ。「俺が楽しめないなら、誰も楽しむな！」って考え方だね。あとは強要の手段。「モデレーターにしてくれなきゃDDoS攻撃してコミュニティを破壊するぞ」とか。それから、サーバー運営者が競合をDDoS攻撃して潰すこともあるんだ。カスタムサーバーでは有料コスメとかモデレーター権限で結構儲かるからね。" userName="denkmoon" createdAt="2025/11/17 22:08:06" color="#ff5c5c">}}




{{<matomeQuote body="カスタムサーバーで儲けがあるのは分かったけどさ、15 TbpsものDDoS攻撃って、実際いくらくらいかかるんだ？数千ドル？それとも数万ドルとかするのかな？誰か教えて！" userName="alickz" createdAt="2025/11/18 00:53:18" color="">}}




{{<matomeQuote body="大体の計算だと、Hetznerで1500 IPから半時間なら5000～6000ドルくらいでできるらしいよ（アカウントBANされなければね）。ただ、ちゃんとしたボットネットがどれくらい費用がかかるか、利益率がどれくらいかは俺も全然知らないや。" userName="hansvm" createdAt="2025/11/18 01:06:57" color="#ff33a1">}}




{{<matomeQuote body="そもそも、なんでAzureを攻撃するんだ？Microsoftから金なんか取れないだろうし、攻撃する意味が全然分かんないんだけど。誰か理由を教えてくれないかな？" userName="vl" createdAt="2025/11/17 23:30:02" color="#45d325">}}




{{<matomeQuote body="ボットネットって、攻撃者が帯域使用料を払うんじゃなくて、マルウェアに感染した一般人の回線を勝手に使ってるってことじゃないの？だから、正規の帯域価格とは全然違う値段で取引されてるはずだよね。どっちの方向にズレてるのかは分かんないけど。" userName="anamexis" createdAt="2025/11/18 02:01:27" color="#785bff">}}




{{<matomeQuote body="「ゲームサーバー」って言っても、ティミーのMinecraftサーバーみたいな個人運営のだけじゃないよ。大規模な商業ゲームも含まれるんだ。例えば、Final Fantasy XIVは去年の9月からAisuruに何度も攻撃されてるしね。https://na.finalfantasyxiv.com/lodestone/news/detail/6b56814..." userName="redwall_hp" createdAt="2025/11/18 01:17:38" color="#ff33a1">}}




{{<matomeQuote body="オンラインゲームを数時間ダウンさせる理由？競争の激しいMMOを想像してみてよ。ギルドがイベントで負けそうになったら、DDoS攻撃でサーバーをダウンさせてイベントを中止させるんだ。これでイベントのリソースは温存できるし、それをリアルマネーで売ることもできる。そういうゲームの裏側はマジでえげつないんだよ。" userName="arkh" createdAt="2025/11/18 08:27:16" color="#45d325">}}




{{<matomeQuote body="ボットネットってのは、誰かが「所有」していて、その「財産」を金銭と引き換えにレンタルしてるってことだよ。まるで合法的なビジネスみたいにね。" userName="lukan" createdAt="2025/11/18 08:16:45" color="#ff5733">}}




{{<matomeQuote body="レンタル価格が帯域幅の価格と全然合ってないってのは変わらない事実だよね。" userName="anamexis" createdAt="2025/11/18 13:00:08" color="">}}




{{<matomeQuote body="DDoS市場ってさ、しばらくゲームが中心だったんだよね。競合サーバーを落としたり、「DDoS保護」サービスを売りつけたりさ。ゲームとかKrebs’s blogが狙われたりね。https://krebsonsecurity.com/2025/05/krebsonsecurity-hit-with..." userName="bstsb" createdAt="2025/11/17 22:12:20" color="#38d3d3">}}




{{<matomeQuote body="トローリングやチート、ルール違反でBANされた奴らが復讐したがるんだ。どのゲーム運営も、こういうアホな連中に対処しなきゃいけないんだよな。" userName="iknowstuff" createdAt="2025/11/17 22:10:17" color="">}}




{{<matomeQuote body="参考までに言うと、Final Fantasy XIVって年間で6500万ドルくらいの収益があるんだ（しかも減ってる）。" userName="hx8" createdAt="2025/11/18 01:49:28" color="">}}




{{<matomeQuote body="うん、MinecraftサーバーはDDoS攻撃が多すぎてさ、Cloudflareが専用の保護サービスをまるごと提供してるんだよ。https://www.cloudflare.com/en-gb/application-services/products/minecraft-ddos-protection/" userName="jsheard" createdAt="2025/11/18 00:17:45" color="#ff5c5c">}}




{{<matomeQuote body="「Microsoftから何か脅し取るのは不可能」って？は？冗談だろ？https://www.businessinsider.com/trump-white-house-ballroom-deal-microsoft-2025-1<br>https://www.cnbc.com/2025/01/09/microsoft-contributes-1-million-to-trump-inauguration.html" userName="markdown" createdAt="2025/11/18 02:30:50" color="">}}




{{<matomeQuote body="最新の財務報告書（https://www.hd.square-enix.com/eng/ir/library/pdf/25q4slides.pdf の11ページ）によると、555億円、つまり約3億5700万ドルも稼いでるんだって。6500万ドルよりずいぶん多いじゃん。" userName="UnlockedSecrets" createdAt="2025/11/18 03:03:54" color="#ff5c5c">}}




{{<matomeQuote body="EVE Onlineはさ、テロとみなされそうな話が出た時に、断固として対応しなきゃいけなかったんだよ。" userName="razakel" createdAt="2025/11/18 09:15:13" color="">}}




{{<matomeQuote body="98年頃、100ドルで100MBのダウンロード制限があるケーブル接続だったんだ。Quake TFで「lpb（おそらくlow ping bastard）」だったから誰かにDoS攻撃されたの覚えてるよ。警告で90MBだけだったけどね。数年後、TF2は完全にDoSされて、DDoS for hireで恐喝されてる。変わることもあれば、変わらないこともあるんだな。" userName="weq" createdAt="2025/11/18 05:21:24" color="#ff5733">}}




{{<matomeQuote body="2000年頃にDoS攻撃を受けて閉鎖したkuro5hinってサイトを覚えてるくらいには年寄りだよ。" userName="SJC_Hacker" createdAt="2025/11/18 15:58:24" color="#45d325">}}




{{<matomeQuote body="これは恐喝とは真逆だね。彼らは政治的な便宜を買うためなら喜んで金を出すんだから。それは「焼け石に水」ってやつだよ。<br>「ボーイング、Microsoft、Amazonがバイデン大統領の就任式に多額の寄付」<br>https://www.seattletimes.com/seattle-news/politics/boeing-mi..." userName="adventured" createdAt="2025/11/18 04:23:14" color="#38d3d3">}}




{{<matomeQuote body="恐喝だよ。君、良いゲームサーバー持ってるじゃないか。もし何かあったら残念だよね。" userName="Hnrobert42" createdAt="2025/11/17 23:01:57" color="">}}




{{<matomeQuote body="君が言ってることはMinecraftコミュニティにピッタリ当てはまるね。君はMinecraftコミュニティのこと言ってるの？それとも他のゲームコミュニティも？" userName="sabatonfan" createdAt="2025/11/18 00:58:13" color="">}}




{{<matomeQuote body="DDoSの多くの理論としては恐喝やみかじめ料がしっくりくるね。「払わなきゃDDoSするぞ」、または「払わなきゃ’誰か’がDDoSするぞ」ってやつ。それだけでも説明つくけど、もっと陰謀論的に行くなら、インターネットの大部分を監視できる保護サービスが仕組まれてるってのもあり得る。HTTPS everywhereが鬱陶しいからってのもあるかもね。これが現状だとは言わないけど、知的に心に留めておくべき可能性だし、歴史とも一致するよ。" userName="neilv" createdAt="2025/11/18 00:22:41" color="#ff5733">}}




{{<matomeQuote body="1ギガバイトあたり1ドルの超過料金？それなら他人のクレジットカード使うね..." userName="razakel" createdAt="2025/11/18 09:22:52" color="">}}




{{<matomeQuote body="ああ、もしそいつがDDoS攻撃しちゃったら、そいつのBANは100%正当化されるって俺は確信してるよ、笑。" userName="iknowstuff" createdAt="2025/11/17 22:19:07" color="">}}




{{<matomeQuote body="ボットネットの活動が活発になると、注目されてIPがブラックリスト入りしたり、所有者が気づいたりして、使いづらくなるんだ。大量の悪意ある通信は隠すのが難しいから、犯罪者にとって帯域幅にはコストがかかるってことだね。" userName="lukan" createdAt="2025/11/18 13:15:46" color="#38d3d3">}}




{{<matomeQuote body="みんなデュプリケーションに言及しないのが不思議だって。ゲーム内でアイテムや通貨をリアルマネーで売るのは大金になるし、サーバーのクラッシュって、デュプリケーションの悪用を可能にしがちなんだよ。ただ、このAzureのDDoS攻撃がそれと関係あるとは言ってないけどね。" userName="c420" createdAt="2025/11/17 23:28:30" color="">}}




{{<matomeQuote body="関連情報としてAisuruボットネットの記事がいくつかあるよ。CloudflareがAisuruボットネットをトップドメインリストから排除した話（https://news.ycombinator.com/item?id=45857836 - 2025年11月）。AisuruボットネットがDDoSから居住用プロキシに移行した話（https://news.ycombinator.com/item?id=45741357 - 2025年10月）。AisuruボットネットがUSのISPを記録的なDDoSで攻撃した話（https://news.ycombinator.com/item?id=45574393 - 2025年10月）だよ。" userName="dang" createdAt="2025/11/17 18:45:04" color="#785bff">}}




{{<matomeQuote body="TotoLinkルーターのファームウェアサーバーがハッキングされて、10万台ものデバイスが感染してボットネットが急拡大したってのが怖いね。OpenWRTみたいなオープンソースプロジェクトは素晴らしいけど、サーバーの監視は誰がしてるの？寄付と少ない予算じゃセキュリティ担当なんて雇えないでしょ。OpenWRTってデジタル署名で対策してるのかな？" userName="shoddydoordesk" createdAt="2025/11/17 19:23:08" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OpenWRTのファームウェアとパッケージは署名されてるよ。アップデート前に手動でイメージ署名を確認できるんだ。ビルドインフラは格好の標的で、ビルド後に署名前に感染させられたら多くのデバイスがやられちゃう。だから、ビットパーフェクトな再現可能なビルドが超重要なんだ。OpenWRTはそれに対応してるよ: https://openwrt.org/docs/guide-developer/security#reproducib..." userName="nine_k" createdAt="2025/11/17 19:52:59" color="#38d3d3">}}




{{<matomeQuote body="ビット再現可能なインフラがあれば、もっと分散したビルドアーキテクチャも可能だって。APTミラーみたいにビルド提供者を募り、最もビット一致するグループのビルドを公開するなんてどうかな。Torの問題点（ボットネット攻撃）や、悪意のあるノードによるリリース妨害の可能性もあるけどね。評判ベースのシステムも提案されてるけど、時間があれば破られちゃう。でも、再現性のある、決定論的なビルドと信頼できるソースでのテストの組み合わせは、重い分散化を可能にしてて面白いよ。" userName="tetha" createdAt="2025/11/17 21:40:33" color="#ff5733">}}




{{<matomeQuote body="オープンなリポジトリは何百人もが見てるけど、会社のビルドサーバーだと、運が良くても一人しか見てないのが実情だよ、ってさ。" userName="whatshisface" createdAt="2025/11/17 19:32:16" color="">}}




{{<matomeQuote body="このやり取り、ちょっと笑えるよね。「コードが公開されてて検証できるのに、どうやって安全を保つんだ！」ってさ。「営利企業による検証不能で未確認で無収益なセキュリティ修正に背を向けたら、誰が俺たちを守ってくれるんだ！」って、皮肉たっぷりに言ってるんだよ。" userName="contravariant" createdAt="2025/11/17 23:55:38" color="#785bff">}}




{{<matomeQuote body="OpenWRTに自動アップデート機能がデフォルトでついてないのは、まさに（セキュリティ上の理由から）このためだよ。" userName="sam_lowry_" createdAt="2025/11/17 19:29:38" color="">}}




{{<matomeQuote body="お前が説明してる分散配信システムは昔からあるよ。BitTorrentを使えばいいんだ。" userName="smt88" createdAt="2025/11/17 22:29:55" color="">}}




{{<matomeQuote body="みんな見てるっていうけど、どれだけちゃんと見てる？主要なプロジェクトでも、悪意あるコミットが何ヶ月も紛れ込んでたって話は山ほどあるじゃん。" userName="TylerE" createdAt="2025/11/17 19:42:28" color="">}}




{{<matomeQuote body="＞コードを公開して検証できるなら、どうやったら安全に保てるんだ！<br>それって、いつも万能薬ってわけじゃないんだよ。ChromiumとかFirefox、LLVMみたいなのを自分でビルドしたことある？ミドルクラスどころかロースペックのデバイスじゃ現実的じゃないでしょ。ローカルビルドを頑張って設定しても、ビルドシステムはすぐ出所の分からないバイナリの塊をダウンロードしようとするし。ネットワークが遮断された環境で一般的なソフトウェアをビルドしてみてごらん、きっと驚くほどうまくいかないから。もしプロジェクトが本当にこれを真剣に考えてたら、sectorlispとか純粋な人間が読めるソースコードから、バイナリの塊もネットワークアクセスもなしでブートストラップできるはずなんだ。それなのに、今のnpmとか、ひどいもんじゃん。" userName="fc417fc802" createdAt="2025/11/18 00:35:34" color="#ff5c5c">}}




{{<matomeQuote body="＞アップデートをフラッシュする前に、自分で独立してイメージ署名を確認できる。<br>そりゃできるさ。TOSだって「承諾」をクリックする前に読めるけど、誰がそんなことする？" userName="elAhmo" createdAt="2025/11/18 11:57:42" color="#ff5733">}}




{{<matomeQuote body="いくつか例を挙げてくれよ。" userName="alphager" createdAt="2025/11/17 23:57:18" color="">}}




{{<matomeQuote body="あんた、これの深刻さを軽視しすぎだよ。彼らのパッケージマネージャーは広く使われてる。ビルドサーバーを乗っ取られれば大惨事だ。彼らのファームウェアダウンロードツール、ちょっと前に脆弱性があったんじゃなかったっけ？OpenWRTとLinuxディストロの違いは、テストと可視性の量だよ。OpenWRTは住宅用デバイスに搭載されて忘れ去られるけど、Linuxディストロにはプロのsysadminが24時間体制で面倒見てる。xzバックドアは、Microsoftのある「autist」がパフォーマンステストで微細な性能差に気づいたから発見されたんだぞ。" userName="shoddydoordesk" createdAt="2025/11/17 19:35:31" color="#785bff">}}




{{<matomeQuote body="デジタル署名があったって、ハッキングされたビルドサーバーからは守ってくれないんだぞ。" userName="immibis" createdAt="2025/11/17 19:43:47" color="">}}




{{<matomeQuote body="もし誰かが90%以上のピアを悪意あるファイル提供者にして、そのファイルに一致するDHTを流したらどうなるの？" userName="cluckindan" createdAt="2025/11/17 23:18:44" color="">}}




{{<matomeQuote body="https://en.wikipedia.org/wiki/XZ_Utils_backdoor<br>https://medium.com/@aleksamajkic/fake-sms-how-deep-does-the-...<br>https://blog.linuxmint.com/?p=2994<br>https://www.bleepingcomputer.com/news/linux/malicious-packag...<br>https://www.cnx-software.com/2021/04/22/phd-students-willful...<br>まだまだあるけど、これで十分だろ。" userName="TylerE" createdAt="2025/11/18 01:39:01" color="#45d325">}}




{{<matomeQuote body="Torrentファイルはハッシュ化されてるから、俺が言ってたコメントと全く同じリスクプロファイルだよ。でも、一般的にハッシュアルゴリズムは衝突耐性が十分にあるから、あんたが言ってることは事実上不可能（何年もの計算時間が必要）なんだ。" userName="smt88" createdAt="2025/11/18 01:16:03" color="#ff5733">}}




{{<matomeQuote body="なんでOpenWRTばっかりにこだわってるんだ？あんたが引用してた脆弱性（TotoLink）は、あるブランドの公式ファームウェアアップデートサーバーの話だろ。OpenWRTがハッキングされる可能性を「怖い」って思うのは、ソフトウェアにおける理論上の可能性にビビってるだけならそうだけど、それが関連してるか？いや、あんまりね。企業の公式サーバーがオープンソースプロジェクトのサーバーより安全だって？この件では、そうじゃなかったみたいだけどな。" userName="jacobgkau" createdAt="2025/11/17 19:41:06" color="#785bff">}}




{{<matomeQuote body="わからないな。セキュリティ担当者の大群を動かすって？企業は責任逃れのため最低限しか金使わないよ。ハッキングされたルーターのボットネットはよくある話で、業務用や消費者向けルーターがOpenWrtよりずっと格好のターゲットさ。" userName="tempest_" createdAt="2025/11/17 19:45:21" color="#ff33a1">}}




{{<matomeQuote body="確かBitTorrentはまだSHA-1を使ってるんだけど、それがどんどん問題になってきてるんだよね。" userName="pabs3" createdAt="2025/11/18 02:09:56" color="">}}




{{<matomeQuote body="怖いのは、OpenWrtが良い製品を作りたくて動いてるのに、企業は利益優先でセキュリティに厳しくするよりずさんにする方が安上がりなら改善しないってことだ。脆弱な機器を作る企業がDDoS攻撃に使われた場合、刑事過失で罰せられない限り、オープンソースの方が安価なハードウェアを大量生産してすぐにサポート終了する企業よりずっと信頼できて脆弱性も少ないままだろうね。" userName="danudey" createdAt="2025/11/17 21:45:24" color="#ff33a1">}}




{{<matomeQuote body="あの法律のどこにOpenWrtが違法になるって書いてあるの？OpenWrtは規制に対応するため、サポートブランチ向けに自動セキュリティアップデートを出すだろうね。それに、ちゃんと読んだら、オープンソースソフトウェアには例外があるって書いてあるよ！" userName="mbilker" createdAt="2025/11/17 20:09:10" color="#ff33a1">}}




{{<matomeQuote body="知らず知らずのうちにボットネットに参加したくない人たちだよ。" userName="antonvs" createdAt="2025/11/18 13:56:59" color="">}}




{{<matomeQuote body="企業は責任逃れのため最低限しか金を使わないってね。「セキュリティは真剣です」って情報漏洩通知メッセージを書くチームに、実際の「セキュリティ担当者」より金かけてるんだろうな。少なくとも、外部のCyber Security Consultantsに情報漏洩の「調査」を依頼して、Cスイート（経営幹部）ではない誰かに責任を押し付けられるようになるまではね。" userName="bigiain" createdAt="2025/11/17 23:38:26" color="#ff5733">}}




{{<matomeQuote body="企業は責任逃れのため最低限しか金を使わないってね。オープンソースチームが、基準や20年前の時代遅れな監査プロセスに縛られないのも、おそらく役立ってるんだろうな。" userName="Aeolun" createdAt="2025/11/17 23:59:52" color="#785bff">}}




{{<matomeQuote body="ネットワークから隔離された環境で一般的なソフトウェアを構築してみろってね。どれだけうまくいかないか驚くはずだよ。エアギャップ環境で何かが一発でインストールやビルドできた経験なんてないな。いつも動かすために何かと工夫しなきゃならないんだ。" userName="nunez" createdAt="2025/11/18 01:56:32" color="">}}




{{<matomeQuote body="分散ビルドインフラに侵入する方が、悪意のある開発者を送り込むよりも面倒なはずってね。そんなことはないよ。他人がビルドしたものをミラーリングできるから、強力なビルドサーバーさえ必要ないんだ。既存の信頼できる人物のノードを買ったりハッキングしたりもできるしね。" userName="charcircuit" createdAt="2025/11/17 22:37:34" color="#ff5733">}}




{{<matomeQuote body="がっかりなのは、企業が工場出荷時からオープンソースファームウェアをデバイスに積まないことだよ。オープンソース版の方が機能が多いことすらよくあるのに。そうすれば、企業がサポートやめてもコミュニティがメンテし続けるから、何百万もの未パッチデバイスが放置されることもないのにね。" userName="AnthonyMouse" createdAt="2025/11/18 00:40:41" color="">}}




{{<matomeQuote body="アメリカとかの住宅向けISPにある、乗っ取られたホームルーターやカメラからの攻撃って、発信元のIPアドレスを記録できるはずだよね？なんでISPはa)所有者にメールで知らせたり、b)対策させるために一時的にトラフィックを遮断したりしないの？DDoS攻撃の被害よりも、そっちの経済的コストの方が高いってこと？" userName="helsinkiandrew" createdAt="2025/11/18 10:55:56" color="#ff5733">}}




{{<matomeQuote body="オランダでは既にそういうことが起きてるよ。ルーターが隔離モードにされて、”ウイルス”がなくなったことを証明しなきゃいけないんだ。<br>僕も経験したけど、その時は変だと思ったけど、今回のDDoS攻撃の件を見るとすごく納得できるね。" userName="ramon156" createdAt="2025/11/18 11:32:03" color="#ff5c5c">}}




{{<matomeQuote body="こんなこと、どれくらいの人がやり方を知ってると思う？このプロセスにかかる時間はどれくらい？その間、仕事とか教育、安全とか、全部ストップしちゃうの？" userName="mrits" createdAt="2025/11/18 14:32:05" color="">}}




{{<matomeQuote body="ルーターは自分で買ったの？ISPから提供されたものじゃないの？" userName="NooneAtAll3" createdAt="2025/11/18 17:01:15" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="オーストラリアでは、ISP提供のものよりいいルーターモデムを自分で買えるんだ。" userName="greazy" createdAt="2025/11/19 09:02:56" color="">}}




{{<matomeQuote body="経済的コストは（住宅向け）ISPにかかるんだけど、彼らはDDoS攻撃からの追加帯域でほとんど費用が発生しないんだ。ほとんどの場合、ゼロ。質には影響するかもしれないし、わずかに高いトランジット費用が発生する可能性はあるけど、結局ISPにとっては問題じゃないんだよ。顧客に感染デバイスがあることをメールで知らせるインフラを整えても、顧客は結局、A)サポートに電話して担当者を拘束する（担当者もよく分からない）、B)SNSで文句言うか解約する、C)無視する、のどれか。自分で問題を直すのは100万人に1人くらいだろうね。" userName="matt-p" createdAt="2025/11/18 11:27:57" color="#ff33a1">}}




{{<matomeQuote body="ISPの同意なしに通知メールを送る外部の悪役が必要ってことだよな。" userName="BeFlatXIII" createdAt="2025/11/18 14:25:16" color="">}}




{{<matomeQuote body="一部のデバイスはISPが管理してるんだ。例えばT-Mobileの5Gルーターとかは、ユーザーが直したり管理できる範囲がすごく限られてるブラックボックスデバイスだよな。" userName="seethishat" createdAt="2025/11/18 12:16:40" color="#ff5733">}}




{{<matomeQuote body="ISP管理のブラックボックスとボットネットに感染したノードが重なる可能性は低いと思うけど、もしそうならISPも一部責任を負うべきだよね。" userName="phendrenad2" createdAt="2025/11/18 17:25:56" color="">}}




{{<matomeQuote body="これはいつも見て見ぬふりされてきた問題だよね。個人的には、アメリカの諜報機関が望まないから議会も動かないんだよ。諜報機関が必要な時にボットネットを管理したり買ったりしてるから、この分野での規制は常に押し付けられないけど、他の国ではもっと一般的だね。" userName="zoeysmithe" createdAt="2025/11/18 17:12:32" color="">}}




{{<matomeQuote body="うーん、ボットネットで見つかったIPアドレスの「Have I Been Pwned」みたいなサービスってあるのかな？既知のインシデントと関連付けてさ。自分のマシンが不正に使われてないか知りたいな。" userName="ByThyGrace" createdAt="2025/11/18 15:38:25" color="#785bff">}}




{{<matomeQuote body="その業界団体には大手クラウドプロバイダーも必要だけど、彼らも不正なトラフィックを遮断したがらないんだよね。" userName="mrweasel" createdAt="2025/11/18 11:29:52" color="">}}




{{<matomeQuote body="なぜなら、そうするとISPはデバイスを安全にするためのサポートを提供しなきゃいけなくなるからね。" userName="elorant" createdAt="2025/11/18 12:44:17" color="">}}




{{<matomeQuote body="ほとんどの場合、家庭用のルーターはISP自身が提供してるって言えるな。" userName="kwanbix" createdAt="2025/11/18 12:48:44" color="">}}




{{<matomeQuote body="確かにね。でももしISPが「こうしてああしてデバイスを安全にして」って言ったら、多くのユーザーがサポート問題を起こすだろうな。指示を理解できなかったり、間違ったボタンを押したり、誤った値を入力したり、いろんなことが起こりうる。ISPはそれらを解決するためにリソースを割かなきゃいけないけど、見返りはないんだからね。" userName="elorant" createdAt="2025/11/18 14:20:14" color="#ff33a1">}}




{{<matomeQuote body="ほとんどのISPが提供するルーターはリモート管理が有効になってるから、エンドユーザーを介さずにISP自身が再設定できるんだ。" userName="jon-wood" createdAt="2025/11/18 16:07:32" color="#38d3d3">}}




{{<matomeQuote body="皮肉にも、Cloudflareの大障害のせいでこの記事が読めないんだよね。" userName="ulrikrasmussen" createdAt="2025/11/18 13:43:46" color="">}}




{{<matomeQuote body="今日がMicrosoftのカンファレンス基調講演の日だって誰も触れてないのが驚きだね。" userName="jadbox" createdAt="2025/11/18 15:40:12" color="">}}




{{<matomeQuote body="うん、アクセスしようとした多くのリンクがダメだったよ。これほどインターネットが中央集権的だと困るよね。" userName="johnisgood" createdAt="2025/11/18 14:15:28" color="">}}




{{<matomeQuote body="おい、もしそんなにたくさんのノードがあったら、どれだけクールな技術が作れるか想像できるか？Torとマジで競えるし、分散型アーカイブシステムも作れるぞ。でも、結局これらのノードは、何者かのエゴを満たすためだけに使われるんだろ。マジで無駄だ。犯罪を犯すなら、せめて何かクールなことをしろよ。" userName="Uptrenda" createdAt="2025/11/18 01:27:07" color="#ff5733">}}




{{<matomeQuote body="ほとんどの乗っ取られたデバイスはルーターかIoTデバイスで、IPアドレスにリクエストをスパムする以外に面白いことはできない計算能力なんだよ。" userName="GaryNumanVevo" createdAt="2025/11/18 08:39:42" color="#ff5c5c">}}




{{<matomeQuote body="最適化された高密度キャビネットを2つ使えば、もっと良いパフォーマンスが簡単に出せるし、はるかに信頼性も高いし、合法的に運用するのもそんなに高くないよ。" userName="mgaunard" createdAt="2025/11/18 10:03:13" color="#ff5c5c">}}




{{<matomeQuote body="DDoS攻撃ってよく企業のセキュリティチームをかく乱するために使われるんだよ。セキュリティ担当者がウェブサイトをオンラインに戻そうと慌ててる間に、攻撃者はその混乱を利用して、より深刻で秘密裏の攻撃を仕掛けるんだ。" userName="perfmode" createdAt="2025/11/17 19:33:44" color="#ff33a1">}}




{{<matomeQuote body="そういう散発的な例はあるだろうけど、「よくある」って言うのは何が根拠なんだ？DDoS緩和ってセキュリティシステムを緩めることはめったにないから、あまり報われる戦術には思えないな。再設定中にミスは起こりうるけど、それは問題がまだ生きてる間に捕まえなきゃ。これは高度な脅威アクターの話であって、普通のランサムウェア攻撃者じゃないみたいだね（彼らが未熟とは限らないけど、確実に悪用できる簡単な獲物があるのに、こんな確率に手間かけるかな？）。" userName="Aachen" createdAt="2025/11/17 23:11:33" color="#45d325">}}




{{<matomeQuote body="記録的な攻撃でもMicrosoftのサービスに全く支障が出なかったって読んだのは面白かったね。普段からめちゃくちゃ遅いから、もしかしてこれが戦略なのかなって思い始めたよ。こういう状況に備えて余裕を持たせてるのか、すでに遅いから誰も遅くなったことに気づかないのかって。これはただのクレイジーな考えで、攻撃中に起こってることとは関係ないんだけどね。" userName="mihaaly" createdAt="2025/11/17 20:12:35" color="#ff33a1">}}




{{<matomeQuote body="Azure上でうまく動くものはたくさんあるよ。優秀な開発チームを持つ企業が構築したものね。<br>https://trends.builtwith.com/websitelist/Microsoft-Azure<br>リストにはひどいウェブサイトもいっぱいあるけどね。" userName="RajT88" createdAt="2025/11/18 01:04:35" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
