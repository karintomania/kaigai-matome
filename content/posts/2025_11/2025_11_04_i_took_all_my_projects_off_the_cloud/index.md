+++
date = '2025-11-04T00:00:00'
months = '2025/11'
draft = false
title = '衝撃！クラウドから全プロジェクトを外したら数千ドル節約できた！'
tags = ["クラウド", "コスト削減", "インフラ", "Web開発", "DevOps"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> 衝撃！クラウドから全プロジェクトを外したら数千ドル節約できた！

引用元：[https://news.ycombinator.com/item?id=45816041](https://news.ycombinator.com/item?id=45816041)




{{<matomeQuote body="クラウドの黒白はっきりした意見は好きじゃないな。EC2 instanceだけ動かすスタートアップはHetznerとかに移行すればかなり節約できるのは本当だよ。でもクラウドにはたくさんメリットがあるんだ。<br>・色々なサービスがすぐ使える（バックアップ、DB、AZなど）。<br>・初期費用なしで、すぐ使える。<br>・ピーク負荷時に安くなる。<br>・多くのサービスが認証済み。<br>エンジニアリングの時間も高いから、クラウドの節約分なんてすぐに相殺されちゃうこともあるよ。多くの会社には当てはまらないけど、クラウドが高すぎるんじゃなくて、君が不要なものにお金を払ってるだけって話だよ。" userName="Sebb767" createdAt="2025/11/04 22:48:28" color="#45d325">}}




{{<matomeQuote body="「プロジェクト」から「ビジネス」になるまでは、ぶっちゃけクラウドの機能なんてほとんどいらないよ。自宅のLinux boxとCloudflare Tunnelsがあれば、驚くほど色んなことができるからね。" userName="John23832" createdAt="2025/11/05 00:40:02" color="">}}




{{<matomeQuote body="このサイトで似たような意見をよく見るから、Rust binaryとSQLiteだけで動くフォーラムを作ってみたんだ。Mac MiniとCloudflare Tunnelsで動かしてるよ。Litestreamで継続的にバックアップも取れて、テストも簡単。DBクエリが8つあっても応答は4～5msくらいで、めちゃ速いんだ。<br>メモリもRAMもいっぱい余ってるし、CI/CDも同じMac Miniで動かせるのが最高。M4ってクラウドのどのマシンよりもコンパイルが速いんだよね！" userName="koito17" createdAt="2025/11/05 01:07:38" color="#38d3d3">}}




{{<matomeQuote body="うちの開発環境だけで、製品が使う何十個ものデータベースのうち1つが12TBを超えてるんだよ。<br>これじゃクラウドを使わない選択肢なんてないでしょ？" userName="busterarm" createdAt="2025/11/05 01:30:21" color="#ff33a1">}}




{{<matomeQuote body="AWSのドキュメントを読み解くのは結構時間がかかるんだよ。「数クリックで終わる」なんて嘘だね。" userName="zigzag312" createdAt="2025/11/05 00:00:41" color="">}}




{{<matomeQuote body="DBのバックアップ方法を自分で調べるのも結構時間かかるよな。AWSを学ぶか、DBのバックアップ方法を自分で学ぶか、どっちにしろ時間かかる。AWSの仕組みを理解するだけで済むわけじゃないしね。ラッパーに頼らず自分でやる価値はあると思うけど、それが簡単かどうかは状況と経験次第だね。" userName="rtpg" createdAt="2025/11/05 00:29:39" color="">}}




{{<matomeQuote body="あの「箱」（物理サーバー）がなくてもかなりいけるよ。Cloudflare R2を無料のStatic Hostingとして使う手もあるしね。" userName="fragmede" createdAt="2025/11/05 01:03:24" color="">}}




{{<matomeQuote body="12TBのgp3ストレージだけで月960ドルもかかるんだよ。それなら12TBのNVMeストレージを買った方が960ドルより安く済むし、AWSより何桁も速いからね。君のユースケースはクラウドにとって最悪だよ。" userName="maccard" createdAt="2025/11/05 09:12:27" color="#785bff">}}




{{<matomeQuote body="クラウドについて一番誤解されてるのがディスクI/Oだね。標準的なクラウドディスクが負荷時にどれだけ遅いか、誰も理解してないんだ。<br>みんなは最初はパフォーマンスが良いからって、それがずっと続くと思ってるんだよね。でも、ほとんどのクラウドディスクはトークン追跡みたいなのを使ってて、I/Oがバーストしたり高い負荷が続いたりすると、すぐにディスク速度がゴミになることに気づくよ。CPUやメモリの限界は分かりやすいのに、ディスクは見過ごされがちだよね。" userName="pnutjam" createdAt="2025/11/05 11:40:29" color="#ff5c5c">}}




{{<matomeQuote body="CloudFlare PagesはGitHubからの自動プルで静的ホスティングがもっと簡単だよ。" userName="selcuka" createdAt="2025/11/05 01:49:57" color="#38d3d3">}}




{{<matomeQuote body="Netlifyのお客さんだけど、俺も同じ感じ。タダで使わせてもらってるけど、いつかお金払うのは全然OK！" userName="jen729w" createdAt="2025/11/05 02:11:19" color="">}}




{{<matomeQuote body="Akamaiに買収される前のLinodeは、もっと良くて料金も安かったんだよな。" userName="winddude" createdAt="2025/11/04 22:59:25" color="">}}




{{<matomeQuote body="データベースのバックアップは自力で考えないといけないよ。RDSから他のプロバイダで使えるバックアップを取り出すのは大変そうだしね。同じプロバイダでバックアップするのは良いけど、プロバイダ全体が信頼できるかが重要。今まさに、AWSにアカウントを消されたらどうする？って災害復旧訓練中だよ。" userName="anotherevan" createdAt="2025/11/05 01:08:02" color="#45d325">}}




{{<matomeQuote body="俺がイラつくのはさ、1. AWSとかはHetznerと比べても、小さいプロジェクトならそこまで高くないってこと。せいぜい2倍くらいかな。2. 開発者が忘れがちなのは、セルフホストだとサードパーティのサポートが得にくいってこと。AWSなら詳しい人を雇えばすぐ解決するけどね。俺はルートサーバでのセルフホストが好きだし、自分の会社ではいつもそうしてる。でもインフラを自分でいじりたくない人には、今のアンチクラウドの流れがあっても、やっぱりクラウドをおすすめするよ。" userName="fhd2" createdAt="2025/11/05 07:07:35" color="#ff5733">}}




{{<matomeQuote body="願いすぎると大変なことになるぞ。Netlifyが無料プランのユーザーに104,000ドルの請求書を送ったんだ。幸い、SNSで拡散されて助かったみたいだけどね。<br>https://news.ycombinator.com/item?id=39520776" userName="0cf8612b2e1e" createdAt="2025/11/05 05:34:57" color="#785bff">}}




{{<matomeQuote body="数十個のデータベースか…それはクラウドを使う理由になるユースケースだね。家でそれを信頼性高くホストするのは難しいだろうな。" userName="selcuka" createdAt="2025/11/05 01:51:06" color="">}}




{{<matomeQuote body="それがなくても、結局はSANみたいなインターフェースを介して、何らかのローカルキャッシュでアクセスしてるんだ。AWSで物理的なローカルドライブを使うと、パフォーマンスは全然違うよ。" userName="maccard" createdAt="2025/11/05 12:52:41" color="">}}




{{<matomeQuote body="AWSがそんなことするわけないじゃん :)それにAWSなら、アシッドでトリップしてても意味不明なUIを75回くらいクリックすれば同じことができるよ。" userName="bdangubic" createdAt="2025/11/05 02:01:45" color="">}}




{{<matomeQuote body="Netlifyは記事が出た後で料金体系を変えて、無料アカウントはずっと無料になったらしいぞ。" userName="ascorbic" createdAt="2025/11/05 07:22:09" color="">}}




{{<matomeQuote body="DBバックアップは結構時間かかることもあるけど、`apt install automysqlbackup autopostgresqlbackup`とか使えばいいんだよな。でもファイルシステムスナップショットがあれば、DBは常に整合性が取れてるはずだから、DBツールをスキップしてスナップショットでバックアップするのもアリじゃね？" userName="Dylan16807" createdAt="2025/11/05 00:57:59" color="">}}




{{<matomeQuote body="まず、12TBもの開発用DBがあるなら、それはめちゃくちゃ最適化されてないはずだ。NVMeドライブなら10倍の容量もある物理サーバーで簡単に扱えるぞ。" userName="sgarland" createdAt="2025/11/05 02:44:23" color="#ff5c5c">}}




{{<matomeQuote body="しつこく言うけど、製品の”開発環境”はビジネス（個人消費者じゃない）のためのものだろ。オフィスにサーバーラックを置くのはそんなに大変じゃないけど、管理のしやすさを考えるとクラウドの方がいいこともあるだろうな。" userName="c0balt" createdAt="2025/11/05 05:48:19" color="">}}




{{<matomeQuote body="12TBは2UサーバーのRAMに収まるぞ。俺の自宅にはRAIDZ2で約14TBのストレージがあるけど、“Linux ISOs”用だ。クラウドのブロックストレージはIOPSが低いことが多い。Oracle Cloudの12TBで月500ドル、RDS gp3なら月1400ドルだ。俺のNASより全然高い。Backblaze B2への12TBバックアップも月180ドルだぞ。多くのサイドプロジェクトは12TBの開発環境DBなんか必要ないってのが肝心だろ。俺が働いてた大企業でも、14TB HDDでオンプレミス製品は十分だったしな。<br>https://docs.oracle.com/en-us/iaas/Content/Block/Concepts/bl..." userName="koito17" createdAt="2025/11/05 02:08:53" color="#785bff">}}




{{<matomeQuote body="参照元を教えてくれないか？職場でNetlifyを勧めようとしてたんだけど、その話を聞いてやめたんだ。" userName="franciscop" createdAt="2025/11/05 09:36:22" color="">}}




{{<matomeQuote body="もちろん回避策はあるけど、それを計算に入れないと、多くの人が期待する節約額が全然違ってきちゃうぞ。あと、ローカルSANがあれば、SANはローカルディスクより速いことも多いんだ。" userName="pnutjam" createdAt="2025/11/05 14:27:10" color="">}}




{{<matomeQuote body="10年前にLinodeを使い始めたけど、AWSよりずっと高くなった。今はCloudflareが最強だ。無料だし匿名で登録できるぞ。Cloudflare Workersで爆速サイトやWebサービス、Cloudflare Tunnelで自前サーバーを公開もできる。GoogleクレジットでVertex AIとか、Dappで匿名決済もできるぞ。LEVEL 2では、ブラウザでJavaScriptソフトを動かして仮想通貨を稼がせたり、Wasmcloudで分散ML、WebRTCでP2Pライブストリーミングもできる。TURNサーバーには金がかかるけどな。LEVEL 3はP2PアプリのHypercore（旧Dat/Hypercore）を使えば、サーバーベースからP2Pへの発想転換で、ブラウザでもサーバーでも動く最強のアプリを作れるぞ。<br>https://wasmcloud.com/blog/2025-01-15-running-distributed-ml...<br>https://github.com/Qbix/Media/blob/main/web/js/WebRTC.js<br>https://pears.com/news/building-apocalypse-proof-application..." userName="EGreg" createdAt="2025/11/05 01:38:22" color="#ff5c5c">}}




{{<matomeQuote body="まだわかってないな。これは開発環境のサーバーが1台の話だろ？俺は10万台ものサーバーを管理してるんだ。クラウドのおかげで同じインフラを1/10の労力で運用できてるんだぞ。大規模企業にはクラウドが唯一の選択肢だ。ほとんどのオンプレミス推進派は数ラック程度しか持ってない。物理データセンターもやってるけど、クラウドとのコスト差は年間5万ドル以下。調達やベンダー管理の面倒がなくなり、エンジニアはもっと価値のある仕事に集中できるんだ。" userName="busterarm" createdAt="2025/11/05 02:21:49" color="#38d3d3">}}




{{<matomeQuote body="いや、ファイルシステムスナップショットだけだと、DBの整合性が取れたバックアップにならないかもしれないぞ。DBバックアップソフトウェアは普通、スナップショットを取る前にDBにデータの一貫化を指示するプラグインを使うんだ。" userName="ngc248" createdAt="2025/11/05 05:35:19" color="">}}




{{<matomeQuote body="AWS RDSのエクスポート機能を使えば、スナップショットからS3バケットにデータを出力できるんだ。<br>それからS3からローカルにコピーして、最後にApache ParquetからCSVへの変換ツールを使えばいい。<br>手順は簡単だよ。" userName="happymellon" createdAt="2025/11/05 07:37:30" color="#ff33a1">}}




{{<matomeQuote body="SANってローカルディスクより速いってどういうこと？<br>何か参考文献とかおすすめとかある？" userName="chrisandchris" createdAt="2025/11/06 13:13:32" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="自分でサーバーを何年も運用してるけど、AWSやAzureは設定がめちゃくちゃ複雑でUIもひどい。<br>サーバーはAnsibleとかでいつでも再構築できるようにしておくべきだね。<br>もしクラウド（仮想サーバー）を使うなら、DigitalOceanがシンプルで超おすすめだよ。<br>みんながKubernetesとかに夢中な中、自分はJVMで動くClojureモノリスを物理サーバーにAnsibleでデプロイして、ビジネスで儲けてるよ。" userName="jwr" createdAt="2025/11/05 12:27:16" color="#45d325">}}




{{<matomeQuote body="2000年代初頭にサーバークラスターを作ってたんだけど、AWSが流行り始めたら僕のスキルはゴミ扱いさ。<br>顔認識エッジサーバーの仕事で超高性能を実現したのに、顧客が信じられなくて、営業のために結局AWSに移行せざるを得なかったんだ。" userName="bsenftner" createdAt="2025/11/05 14:17:13" color="#45d325">}}




{{<matomeQuote body="「営業のため結局AWSに移行」って話、多くのB2Bビジネスで自社ホスティングする時の隠れたコストだよね。<br>経営陣だけじゃなく、クライアントを納得させるのが大変なんだよ。" userName="kevlened" createdAt="2025/11/05 17:57:16" color="#ff33a1">}}




{{<matomeQuote body="巨大企業は別として、「AWSだから大丈夫」じゃなくてSLAでサービス回復性を説明すべきじゃない？<br>なぜホスティングプロバイダーを公開する必要があるの？<br>それに顧客は自分のクラウドでホストしないの？" userName="easton" createdAt="2025/11/05 18:26:48" color="">}}




{{<matomeQuote body="ほとんどの顧客はホスティングしたくないんだよ。<br>ローカルでホストすれば大幅に節約できるって説明しても、IT担当者は不安がるし、役員は仕事外でもスマホで見たがる。<br>結局、10～20倍も高いウェブサービスを選んでたよ。" userName="bsenftner" createdAt="2025/11/05 21:32:18" color="#45d325">}}




{{<matomeQuote body="「毎秒8億顔比較」って聞いてゾッとしたよ。<br>これってリアルな世界でどんな用途があるの？<br>大規模なリアルタイム監視とかを想像しちゃうんだけど。" userName="throwaway2037" createdAt="2025/11/08 14:30:07" color="">}}




{{<matomeQuote body="顔認識がどう動くのか、特に「顔比較」って何なのか、ブログとか何か共有できるものがあったら教えてほしいな。<br>面白そう！" userName="MikeNotThePope" createdAt="2025/11/05 15:43:11" color="">}}




{{<matomeQuote body="顔認識については、このGitHubリポジトリを見てみてよ：https://github.com/bsenftner/UnderstandingFacialRecognition/" userName="bsenftner" createdAt="2025/11/05 17:45:38" color="">}}




{{<matomeQuote body="クラウド使うならDigitalOceanがおすすめだよ。シンプルで気が楽になるから。うちはDigitalOceanをサードティアの災害復旧用に使ってて、Terraformでクラスターを立ち上げて、同じAnsibleの設定で全部構築してるんだ。最近の世の中って、こういう二極化が進んでるよね。対話がなくて、”私たちと一緒か、そうじゃないか”って。悲しいな。" userName="hulitu" createdAt="2025/11/06 08:47:31" color="">}}




{{<matomeQuote body="これってクラウド前のペットと家畜のアプローチだよね。俺たちは数台のペットサーバーと、PXE、TFPT、Ansibleのおかげで、データセンターまるごと家畜サーバーで運用してたよ。Terraformなんていらなかったな。クラウドの無駄なあれこれの状態を制御する必要なかったからね。良い時代だったよ。ただ真冬の真夜中にトラブルがあって、犯人の黒い箱に唾を吐きかけるためにDCまでバイクで行くのはマジで大変だったけどさ。" userName="psnosignaluk" createdAt="2025/11/05 16:00:12" color="">}}




{{<matomeQuote body="あなたのアプリや収益について、どこか記事になってない？面白そうだね。" userName="le-mark" createdAt="2025/11/05 12:47:58" color="">}}




{{<matomeQuote body="それは確かにそうだね。成功してて楽しいビジネスしてる人は、それを回すのに忙しいもんね :-)" userName="jwr" createdAt="2025/11/05 14:19:11" color="">}}




{{<matomeQuote body="“Building in public”って合理的なマーケティング戦略だよ。全面的に否定するつもりはないな。" userName="brandall10" createdAt="2025/11/05 15:54:12" color="">}}




{{<matomeQuote body="マーケティング戦略って、顧客に届かなきゃ意味ないし、Hacker Newsの読者は基本、俺の顧客じゃないんだ。" userName="jwr" createdAt="2025/11/05 16:14:07" color="">}}




{{<matomeQuote body="著者の意見もわかるけど、自分でサーバー管理するってマジで大変だよ。ulimitsとかsyn cookiesの設定、Chat GPTが教えてくれないような細かいこと、ソフトの更新、ゼロデイ攻撃対策、Postgresのバージョン互換性、メール送信のドメイン・IP認証、GDPRみたいな規制対応とか、やること多すぎ。クラウド使う人がバカなわけじゃない。そんな単純な話じゃないんだから。" userName="piokoch" createdAt="2025/11/05 13:03:57" color="#ff5733">}}




{{<matomeQuote body="クラウドでホストしてるVMにもこの長いリストって当てはまるんじゃない？" userName="amtamt" createdAt="2025/11/05 14:15:31" color="">}}




{{<matomeQuote body="メールサーバーの設定だけは自宅ホストで無理だったよ。プロバイダーがPTRレコードをネットワークで提供してくれないからね。最近は「安全のため」って理由で断るプロバイダーも多いし、これだけでセルフホストかクラウドかの決め手になることもあるよ。" userName="Blahagun" createdAt="2025/11/05 13:43:55" color="#45d325">}}




{{<matomeQuote body="PostmarkのウェブサービスAPIを使えばいいじゃん。安くて信頼できるし、オンラインサービスでメールを本格的に使うならもっとできることもあるよ。https://postmarkapp.com/email-api" userName="bsenftner" createdAt="2025/11/05 14:21:48" color="#45d325">}}




{{<matomeQuote body="購読制のメールサービスがたくさんあるのは知ってるけど、それは論点が違うんだよ。メールサーバーみたいな些細なことで外部の有料サービスに頼るなら、セルフホスティングの良さって何？コストがかさむだけじゃん。" userName="Blahagun" createdAt="2025/11/05 14:51:52" color="">}}




{{<matomeQuote body="いや、メールって些細なことじゃないよ。時間を吸い取る厄介者だから、月15ドル払ってでも関わらないで済むなら嬉しいね。" userName="bsenftner" createdAt="2025/11/05 15:13:14" color="#38d3d3">}}




{{<matomeQuote body="記事の「メール送信が必要な場合」や「GDPRのような規制遵守が必要な場合」についての懸念は、クラウドか非クラウドかに関係なく、どちらの方法でもデータを適切に管理する必要があるよね。これはクラウドが魔法のように解決してくれるわけじゃない。" userName="fluoridation" createdAt="2025/11/05 13:40:21" color="#45d325">}}




{{<matomeQuote body="こういうのって、専用サーバーでもクラウドVMでも同じだよね。正直、このリストはFUDを煽って人を怖がらせようとしてるみたい。もちろん、これらのことを恐れるべきだけど、AWSやAzure、Googleみたいなクラウドプロバイダーにホストしたからって、魔法みたいに解決されるわけじゃないんだよ。" userName="jwr" createdAt="2025/11/05 14:17:52" color="#ff5733">}}




{{<matomeQuote body="一部の問題は、面倒な設定やセキュリティ運用を抽象化してくれるマネージドサービスを使えば解決できるよね。ブログ記事は冗長で繰り返しが多いけど、クラウドを導入すべきかは「必要な規制認定が得られるか？」「迅速なスケールアップ・ダウンが必要か？」「サーバーを自分で管理できるスキルを持つ人材を雇えるか？」「セキュリティアップデートに対応できるか？」というシンプルな質問に集約されるよ。これらを考慮すると、規制対象企業、成長志向の中小スタートアップ、需要変動の激しい企業がクラウドを使うべきだね。つまり、すべての企業がクラウドを使うべきでも使わないべきでもない。多くの企業はクラウドの付加価値を必要とせず、ただ高い料金を払ってるだけだよ。" userName="ethbr1" createdAt="2025/11/05 15:13:01" color="#ff5733">}}




{{<matomeQuote body="そうだね、基本的なシステム管理スキルがある人を雇うのは当然だよ。クラウドインフラはシステム管理者を雇う必要をなくすと宣伝されてるけど、それはマーケティングのでっち上げだよ。必要な社内スキルがないのにインフラを管理しようとするのは、クラウドだろうとオンプレミスだろうと、失敗のもとだね。" userName="ttkciar" createdAt="2025/11/05 16:35:20" color="#45d325">}}




{{<matomeQuote body="細かいことだけど、「10倍節約できる」って表現は間違いだよ。「10分の1にできる」とか「90％節約できる」が正しいね。以前のコストが現在のコストの10倍だった、とは言えるけど、「10倍節約」だと増えることになるから、節約とは言えないよ。" userName="jaredhallen" createdAt="2025/11/04 23:17:04" color="">}}




{{<matomeQuote body="英語で数字の後の「x」や「time(s)」は、動詞の「単位」を意味する。「10x増加」のように使うんだ。動詞が「節約」のような否定的意味なら、「10x節約」は「10で割る」を意味するよ。4倍少ないなどの表現も昔からあるからね。" userName="veqq" createdAt="2025/11/05 00:22:17" color="#45d325">}}




{{<matomeQuote body="いや、「x」は文字通り「掛ける」という意味だよ。それが somehow「割る」って意味にもなるなんてことはないから。パーセント記号を使うべきでしょ。それが本来の目的だからね。「私のコストを10xする」ってのは「私のコスト×10」ってことで、文字通り方程式だから。" userName="adammarples" createdAt="2025/11/05 00:41:17" color="#ff5733">}}




{{<matomeQuote body="それは反転だよ、2の2乗と2の-2乗の関係みたいなもんさ。否定的な言葉は同じように反転させるんだ。嫌がっても、何百万もの人が昔からこう話してるんだから。あと、掛け算にはドットとか2(3)とかいろんな書き方があるけど、プログラミングでは「*」を使うことが多いよね。" userName="veqq" createdAt="2025/11/05 01:19:56" color="">}}




{{<matomeQuote body="誰も「times」を「割る」って意味で使わないって。君の例で反転させてるのは「negative」って言葉のせいだよ。" userName="adammarples" createdAt="2025/11/06 12:32:07" color="">}}




{{<matomeQuote body="意見が合わないってことで、もうそれを受け入れようぜ。" userName="jaredhallen" createdAt="2025/11/05 00:44:53" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="要するに分数での掛け算だね。1/2かける1/2が1/4になるみたいに、掛け算が割り算になるパターンだよ。とはいえ、この表現は最適じゃないし、煽り気味なのは同感だわ…。" userName="ffsm8" createdAt="2025/11/05 05:14:25" color="">}}




{{<matomeQuote body="まったくその通り、掛け算だよ。例えば、以前は毎月10ドル貯金してたのが、今では10x10ドル、つまり100ドル貯金してるってこと。でも、この記事の文脈だとそうじゃないんだよね？だから親コメントの意見が正しいんだよ。" userName="imp0cat" createdAt="2025/11/05 07:30:36" color="">}}




{{<matomeQuote body="それは英語の仕組みとは違うな。「Saved 10x」って言うと、元々あった貯金額を何倍かにしたって意味になるはずだよ。" userName="happymellon" createdAt="2025/11/05 07:45:29" color="">}}




{{<matomeQuote body="10x節約することは可能だけど、そのためには「x」の基準が必要だよね。例えば、B方式で20ユーロ節約してたのが、C方式で200ユーロ節約できたら、それは10xだ。でも、みんな「fewer」とか「literally」を間違って使うように、言葉の意味なんてどうでもよくなって、感情が全てって感じになってるよね。" userName="tmtvl" createdAt="2025/11/05 11:40:23" color="#ff5733">}}




{{<matomeQuote body="全く同感だね、言葉って本当に大事だよ。ハッキリした表現はまさにスーパーパワーだ。全然細かいことを気にしてるわけじゃないと思うな。" userName="PantaloonFlames" createdAt="2025/11/04 23:27:53" color="">}}




{{<matomeQuote body="コミュ力はマジ最強。言葉にいちいちこだわるのは、効果的な会話を邪魔するだけ。正確なのはいいけど、細かすぎるのはやめようぜ。" userName="baq" createdAt="2025/11/05 07:15:42" color="">}}




{{<matomeQuote body="みんな「Costcoで買い物すりゃ10倍節約できる」ってフツーに言うじゃん。だから俺はOPに賛成。言ってることは正しいけど、いちいち細けえんだよな。" userName="big_maybe" createdAt="2025/11/05 01:19:33" color="">}}




{{<matomeQuote body="”みんなが”って言うけど、お前の例は意味ない専門用語で”savings”をデカく見せるための広告文だろ。普通そんな言い方しねえよ。" userName="happymellon" createdAt="2025/11/05 08:09:50" color="">}}




{{<matomeQuote body="貸借対照表を見りゃハッキリする。節約は”出費を減らす”ってことだけ。収入にはならないし、破産を遅らせるだけ。価格とか関係なく、100％以上節約なんて無理。1500％値下げとか言ってた奴いたけど、あれも同じデタラメだよ。" userName="jand" createdAt="2025/11/05 01:08:31" color="#ff5c5c">}}




{{<matomeQuote body="商品10円<br>初回割引後9円 =＞ 節約1円<br>2回目割引後6円 =＞ 節約4円<br>2回目の節約は初回の4倍だろ。" userName="gerdesj" createdAt="2025/11/05 00:30:12" color="#ff5733">}}




{{<matomeQuote body="それって”別の節約と比べて”4倍の節約ってことだろ。細かすぎてテクニカルには合ってるかもしれんけど、かなり特殊な例だし、記事の意図とは違うよね。" userName="jaredhallen" createdAt="2025/11/05 00:43:20" color="">}}




{{<matomeQuote body="うーん…レイテンシーが1秒から100ミリ秒になったら、10倍速くなったって言えるだろ？それも文句つける？<br>追記：よく考えると、「新しいコストの9倍節約」って言えるし、これは正しい文。参照フレームが前のコストと新しいコストのどっちかわからないから、どっちでもあり得るってのが問題か。" userName="arcastroe" createdAt="2025/11/05 01:39:26" color="#ff5733">}}




{{<matomeQuote body="”レイテンシーを1秒から100ミリ秒に減らした場合、10倍速くなったと祝える？”<br>ああ、言えるね。速度は時間の逆数で、レイテンシーは時間だからさ。レイテンシーを1/10にするのは、元の速度を10倍にするのと同じ。逆数ってそういうもんだろ。節約は、俺が知る限り、逆ドル単位じゃ測れないし。" userName="thedufer" createdAt="2025/11/05 02:22:33" color="#ff5c5c">}}




{{<matomeQuote body="同じ値段でリソースが10倍になるって考えてみろよ。つまり、リソース対価格の比率が10倍ってこと。でも10倍のリソースは要らないから、代わりに1/10の値段で普通のリソースを買うってことだよな。" userName="immibis" createdAt="2025/11/05 00:24:30" color="">}}




{{<matomeQuote body="確かに。同じ値段でリソースが10倍になる、っていうのはその考えを表すのにいい言い方だ。でも「10倍節約」は違うね。" userName="jaredhallen" createdAt="2025/11/05 00:44:19" color="#38d3d3">}}




{{<matomeQuote body="「思考を表現する」と「思考を伝える」は違うよ。「伝える」は共有したい意図があるけど、「表現」は個人的なもの。筆者はちゃんと表現したけど、考えが伝わってこなくて混乱したよ。" userName="fuzzy_biscuit" createdAt="2025/11/05 12:59:04" color="">}}




{{<matomeQuote body="口語では、10のべき乗の違いは「桁違い（orders of magnitude）」って言った方がしっくりくるよ。" userName="lblack00" createdAt="2025/11/05 02:45:52" color="">}}




{{<matomeQuote body="え、じゃあ君は気にしてるってこと？それとも「全く気にしてない（I could NOT care less）」って言いたかったのかな？" userName="abrookewood" createdAt="2025/11/05 01:54:14" color="">}}




{{<matomeQuote body="スタートアップでIT担当だった頃、高性能サーバー（OVH MG-512）を導入したら、上司が「AWSを使ってないから時代遅れ」って不安になったんだ。僕は8086アセンブリ育ちでコンパクトさを重視してたけど、CTOってバズワードに合わせるために無駄な予算を組むよね。効率やコンパクトさはIT部門にとってマーケティング的に不利だって痛感したよ。" userName="vijucat" createdAt="2025/11/05 08:54:13" color="#785bff">}}




{{<matomeQuote body="クオンツなら計算は理解できるはずだよね？彼と一緒に数字を検討しなかったの？世間の常識に従うと高くつくこともあるって、クオンツなら分かるはずなのにね。" userName="jimbokun" createdAt="2025/11/05 16:03:57" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
