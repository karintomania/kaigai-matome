+++
date = '2025-03-01T00:00:00'
months = '2025/03'
draft = false
title = 'Microsoft Azureを使わないべき400の理由とは？驚愕の体験談も紹介'
tags = ["Microsoft", "クラウド", "Azure", "体験談", "ITトラブル"]
featureimage = 'thumbnails/blue4.jpg'
+++

> Microsoft Azureを使わないべき400の理由とは？驚愕の体験談も紹介

引用元：[https://news.ycombinator.com/item?id=43210536](https://news.ycombinator.com/item?id=43210536)

{{<matomeQuote body="面白い話！数年前Mojangで働いてた時、Microsoftに買収されたからAzureに移行しようとしてたんだ。でも、結局はAWSの高い請求書の方がマシだったし、Azureは使えないって思ってる。" userName="amarant" createdAt="2025-03-01T01:21:48" color="">}}

{{<matomeQuote body="Jetで働いてた時、AWSの代わりにAzure使ったけど、CosmosDBが最悪だった。請求が予測できず、SDKもバグだらけで、遅くなるとWebUIが使えずアプリを落とす羽目に。少し改善したなら、またトライするかも。" userName="tombert" createdAt="2025-03-01T03:15:22" color="#ff5c5c">}}

{{<matomeQuote body="Jetと協力していたチームの話、Azureの問題を解決するために顧客に壊してもらうという戦略があった事が興味深かった。" userName="noen" createdAt="2025-03-01T10:09:58" color="">}}

{{<matomeQuote body="＞“壊すことで解決する”というのは理解できない。安定したアーキテクチャを考えるべきだと思う。" userName="naasking" createdAt="2025-03-01T13:45:37" color="">}}

{{<matomeQuote body="数年前に古いCosmos DBを使っていたプロジェクトを見たら、Entity Frameworkの設定が面倒だったが、更新後は単純なCRUD操作に変わった。すごい改善だ。" userName="motorest" createdAt="2025-03-01T08:33:03" color="">}}

{{<matomeQuote body="＞それにしても、10msは長い気がする？" userName="mort96" createdAt="2025-03-01T09:00:26" color="">}}

{{<matomeQuote body="＞その通りだけど、クラウドでの実装に問題がある場合は仕方ない。CosmosDBはグローバルに分散してるし。" userName="motorest" createdAt="2025-03-01T09:47:01" color="">}}

{{<matomeQuote body="確かに長いが、アメリカ東部１から２は10〜15msくらいだよ。" userName="maccard" createdAt="2025-03-01T09:40:49" color="">}}

{{<matomeQuote body="その通り、ちょっと誇張しちゃったな。ごめん。" userName="mort96" createdAt="2025-03-01T09:56:15" color="">}}

{{<matomeQuote body="謝る必要はないよ。確かにKVルックアップは数マイクロ秒でできるし、HTTPリクエストもローカルならもっと速い。外部サービスで遅くなるのは考えものだね。" userName="maccard" createdAt="2025-03-01T12:43:19" color="#38d3d3">}}

{{<matomeQuote body="誰も頼んでない数字だね（笑）ConcurrentDictionary<K, V>の読み取りレイテンシはキャッシュ内のデータで約7-15nsだし、RAMからだと75nsから150nsかかる。別の実装のNonBlocking.ConcurrentDictionaryは全データがL1キャッシュにあって分岐予測が完璧でも整数ベースのキーで3.5-5nsに達することもあるよ。" userName="neonsunset" createdAt="2025-03-01T14:41:57" color="">}}

{{<matomeQuote body="＞”データベースのリソースを過小供給してたら遅くなって、リソース増やすためのWebインターフェースも遅れるかも！”<br>なんでこんなことになるんだ？普通は制御プレーンAPIがデータプレーンを再構成するでしょ？！" userName="Twirrim" createdAt="2025-03-01T05:16:48" color="">}}

{{<matomeQuote body="Microsoftが'90年代にHotmailを買収したときの話を思い出すよ。FreeBSDとSolarisからWindows NT/IISへの移行に何年もかかったけど、あれが成功すれば世界最大のメールサービスがWindowsスタックで動くことになるはずだった。" userName="wayne" createdAt="2025-03-01T02:01:33" color="#38d3d3">}}

{{<matomeQuote body="あ、そのプロジェクトに関わったよ。それがWindowsに良い要件をもたらして、最終的にはWebベースのサービスが整備されたんだ。" userName="natnatenathan" createdAt="2025-03-01T02:18:19" color="">}}

{{<matomeQuote body="マジでWindows 2000は当時最も安定したOSだったよ。98の代わりに2000サーバーをデスクトップOSとして使ってたくらい。95/98/MEのクソみたいな状況とは全然違った。" userName="slt2021" createdAt="2025-03-01T03:57:24" color="#ff33a1">}}

{{<matomeQuote body="Windows 2000サーバーはピークのWindowsだった。以降のバージョンは管理が難しくなって、UIがどんどん悪化した。RDPで長時間過ごす人には、Vistaベースのサーバー製品は最悪。Windows 2019は嫌いじゃないけど、Linuxの方が簡単で速くて、2025年にIISやSQL Serverを使う気にはなれない。" userName="smackeyacky" createdAt="2025-03-01T04:53:40" color="#45d325">}}

{{<matomeQuote body="Windows XP x64エディションはかなり良かったし、NT4もなかなか。2000は確かに良かったけど、デザインの懐古もあるよね。XPやMeは見た目が可愛らしかったけど、2000は真面目なビジネスOSって感じだった。やっぱり一番好きなのはWin 7 Ultimate、Steve Ballmer Editionだな。" userName="genewitch" createdAt="2025-03-01T05:43:44" color="">}}

{{<matomeQuote body="XPへの懐かしさは分かるけど、サーバーOSとしては2000が最も軽量で管理しやすかった。MSがLinuxに負けた理由が本当に気になる。昔は本物の競争だったけど、今は何かを展開するのにWindowsを選ぶのは狂気だね。" userName="smackeyacky" createdAt="2025-03-01T06:36:00" color="">}}

{{<matomeQuote body="Windows Serverにも役割はある。AD DS、ファイルサービス、SQL Serverが主なものだけど、Linuxにはこれらを’より良く’できるアプリはないよ。" userName="p_ing" createdAt="2025-03-01T13:49:45" color="">}}

{{<matomeQuote body="MSFTがLinux上にActive Directoryとその周辺サービスを構築してくれればいいのに。Sambaでなんとかなるけど、統合度が劣る。自分の妄想としては、テキストモードで起動するNTの’ディストリビューション’があって、更新されたInterixサブシステムとWin32があれば完璧だと思ってる。" userName="EvanAnderson" createdAt="2025-03-01T15:33:08" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="NTがテキストモードで起動しても、今のソフトには役に立たないよね。UIライブラリに依存してるから。CLI専用のNTがあればいいけど、Microsoftはオンプレミスのソフトに興味ないみたい。" userName="p_ing" createdAt="2025-03-01T20:16:57" color="">}}

{{<matomeQuote body="＞“Windows 2000は昔、一番安定してたOSだった”<br>本当に？他のWindowsと比べても、OS/400やNetware 3、AIX、Solaris、OS/2 v2には到底及ばなかったよ。" userName="cobbaut" createdAt="2025-03-01T07:23:30" color="">}}

{{<matomeQuote body="特に安定さを比べるのは難しいけど、Win2kでは5〜7年使って全くクラッシュしなかった。Linux使いだからMicrosoftファンではないけど、確かに安定してたよ。" userName="tmountain" createdAt="2025-03-01T08:25:31" color="#785bff">}}

{{<matomeQuote body="＞“Windowsがウェブベースのサービスを支えるための道を開いた”<br>その後、.NETとSQL ServerがLinux用にリリースされ始めたね。" userName="DaiPlusPlus" createdAt="2025-03-01T02:26:12" color="">}}

{{<matomeQuote body="SQL Serverは実際にはSybaseだし、UNIXでも動作可能だった。20年前にLinuxベースの大規模なSybase ASEのアプリに関わってたけど、T-SQLは本当に良かった。" userName="tharkun__" createdAt="2025-03-01T04:06:42" color="">}}

{{<matomeQuote body="ビジネスは理論的には金儲けだけど、実際にはプライドで動いていることも多いよね。" userName="osigurdson" createdAt="2025-03-01T04:28:45" color="">}}

{{<matomeQuote body="移行の最大の障害は何だったの？AWSのプロプライエタリな部分かな？何が移行を難しくしたのか、いつも学びたい。" userName="stego-tech" createdAt="2025-03-01T01:34:38" color="">}}

{{<matomeQuote body="これ数年前の話だから、今は多くの問題が解決してると思うけど、確かにAzureが問題だった。Kubernetesのホスティングソリューションを使おうとしたけど、ポッド間の接続が不安定でスケーリングも不確実だった。" userName="amarant" createdAt="2025-03-01T06:22:34" color="#ff5733">}}

{{<matomeQuote body="親がAzureをダメだと言ってるけど、実際にはAWSやその使い方が問題かも。本当にAzureからAWSに移行できない場合、どちらを見限ることになるんだろう。" userName="mi_lk" createdAt="2025-03-01T02:42:22" color="">}}

{{<matomeQuote body="自分の経験ではAWSが安定していて、かつ移行リソースも多かった。Azureへの移行は予期しないバグとの闘いだった。Microsoftが大きな割引を出してきたからAzureに行く理由があったけど、AWSは楽だった。" userName="noodletheworld" createdAt="2025-03-01T03:24:53" color="#ff5c5c">}}

{{<matomeQuote body="現在Mojangの社員だけど、数年前に完全にAzureに移行したみたいだ。年々ゲーム向けの技術も進化してるしね。編集：AWSからAzureに移行したよ :)" userName="darknavi" createdAt="2025-03-01T02:21:21" color="">}}

{{<matomeQuote body="現在Mojangの社員なんだけど、Mojangアカウントを返してもらえる？強制的にMicrosoftに移行させられて、全然ログインできないんだ。Linuxだからボット扱いされてると思う。返金してもらえる？" userName="inetknght" createdAt="2025-03-01T03:12:05" color="">}}

{{<matomeQuote body="子供にMinecraftを買ったけど、Windows 10に設定するのに2時間かかって結局諦めた。古いUbuntuのノートパソコンで遊んでもらってる。" userName="mikepurvis" createdAt="2025-03-01T04:39:35" color="">}}

{{<matomeQuote body="AWSから別のクラウドに移るのは苦労すると思う。GCPに移行中だけど、問題が多すぎる。" userName="sakopov" createdAt="2025-03-01T01:58:32" color="">}}

{{<matomeQuote body="この理由で私はプロプライエタリサービスを避けてる。EC2、Postgres、S3使えば、どのクラウドでもあるいはベアメタルでも問題なくやっていけるよ。" userName="notpushkin" createdAt="2025-03-01T02:22:21" color="">}}

{{<matomeQuote body="確かに高くつく方法だよね！AWSを利用する理由の半分は、そのSaaSサービスを使うことだと思う。顧客が少なくとも基本的なことはやるけど、全体をAWSで組むのは危険だと思う。自分はセルフホスティング派だよ :) Dockerダッシュボード作ってる。" userName="lucb1e" createdAt="2025-03-01T04:43:57" color="#45d325">}}

{{<matomeQuote body="その通り、金がかかるよ！規制の厳しい業界では、監査があるからランダムなVPSプロバイダーを見せるのが難しいかもしれないけど、AWSを全て使うのは危険だと思う。自分はセルフホスティング派だよ！" userName="notpushkin" createdAt="2025-03-01T06:34:49" color="#785bff">}}

{{<matomeQuote body="今まで試したベアメタルのS3実装には満足してない。クライアントライブラリと各実装の互換性にも問題がある。最近の問題でバグ報告しようとしたら、$29とGCSの使用量に3%の手数料がかかるみたいだね。最悪。" userName="amluto" createdAt="2025-03-01T07:39:36" color="">}}

{{<matomeQuote body="その件はバグレポートのためのサポート契約の価格だよ。月$29か月々の請求の3%のどちらか高い方。でも多分、バグ報告してもbotoじゃなくてGoogleのライブラリ使えって言われるだけだと思う。" userName="ajross" createdAt="2025-03-01T11:32:21" color="">}}

{{<matomeQuote body="プロプライエタリサービスのS3なんだけど、最近Amazonが契約内容を勝手に変更して、全てのソフトがそれに対応するのに苦労していたらしいよ。" userName="darknavi" createdAt="2025-03-01T02:32:22" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="それはさておき、Microsoftは来週には別の名前に変えて、管理UIとAPIを完全に変更するんだろうな。今度はDynamics CoPilot OneAI 365 for Business OneCloudって呼ぶみたいだし。" userName="bigbuppo" createdAt="2025-03-01T07:19:38" color="">}}

{{<matomeQuote body="でも、一部のURLはまだ”live.com”で、他は”outlook.com”、他は”sharepoint.com”、他は”msbinbows.com”みたいになるんだよな。" userName="Biganon" createdAt="2025-03-01T14:51:27" color="">}}

{{<matomeQuote body="今は本当にそれを感じてる。3ヶ月前と全然違うものを手伝ってて、検索結果に表示されるドキュメントとも全く合わないけど、実際に正しいKB記事へのリンクはフォーラムポストで一度だけ言及されてるらしい。少なくともその作業請求はできるけど。" userName="bigbuppo" createdAt="2025-03-03T21:23:54" color="#45d325">}}

{{<matomeQuote body="私の経験（オンプレからLinode、AWS、Azureまで色々やってきた）では、マネージドサービスの使用に比例してクラウドインフラに対する不満が増える。仮想マシン（多分マネージドRDBMS付き）に依存するチームからはあまり不満を聞かないよ。スクリプトのメンテはちょっといるけど、それはマネージドサービスの問題と特異性に苦しむよりも小さな不便だし。" userName="hliyan" createdAt="2025-03-01T03:48:18" color="#ff5c5c">}}

{{<matomeQuote body="今は良くなったと思うけど、2016年にはAzureでVMをプロビジョニングするのに凄く時間がかかって、インスタンスをプロビジョニングするたびにMicrosoftのエンジニアがサーバーを買いに車で行くって冗談言ってたんだ。" userName="ajmurmann" createdAt="2025-03-01T05:51:27" color="">}}

{{<matomeQuote body="自分のスイスの銀行が営業時間外の振込みをサポートしていないことを思い出す。UBSのアプリで”送信”をクリックする時、ハンス・ウエリって名前の guy がテープ印刷物を受け取りに行って、地下で銀のピースを一つの引き出しから別の引き出しに移動させるのを想像しちゃう。" userName="bjackman" createdAt="2025-03-01T14:31:25" color="">}}

{{<matomeQuote body="大丈夫。2005年以降にITを更新してないクライアントのせいで、いくつかのクライアントをパイプラインで起動しないといけない。立ち上がりは1分未満で、ゼロからリソースグループを作成し、2つのVMと付随するリソースが揃う。" userName="HdS84" createdAt="2025-03-01T19:52:05" color="">}}

{{<matomeQuote body="VMの再起動はボタンを押してから２０分もかかるなんて遅すぎだろ。" userName="therealdrag0" createdAt="2025-03-01T19:22:48" color="">}}

{{<matomeQuote body="2016年のAzureのうわさでみんなが文句言ってるなら、このスレのコメントが納得できる。でも、最近はAzureもAWSも一長一短じゃないかな。Azureに対する反発もまだ残ってるみたいだけど、AWSが完璧ってわけじゃないし。" userName="gunsle" createdAt="2025-03-01T14:39:20" color="">}}

{{<matomeQuote body="この投稿には混乱してるな。管理されたサービスはVMよりメンテが楽だからお金払ってるんだろ？それを無意味だって言うのは違和感がある。多くの企業がクラウドに移行する主な理由は、この管理サービスだと思うけど。" userName="lancebeet" createdAt="2025-03-01T06:56:42" color="">}}

{{<matomeQuote body="管理サービスは無意味じゃないよ。時間を節約できるし、転換先も考えると違いに対応するための時間はかかるかも。クラウドに移行する主要な理由は、所有するのではなくエネルギーやハードウェアを借りる柔軟性だよ。" userName="conradev" createdAt="2025-03-01T07:11:15" color="">}}

{{<matomeQuote body="うちは管理サービスを使うけど、既存のソフトウェアの管理版だけ。Managed Postgresは使うけど、AzureやAWSの独自データベースは使わないから、移行が楽になる。" userName="scarab92" createdAt="2025-03-01T08:28:17" color="">}}

{{<matomeQuote body="あはは、Azureのバックアップを使って特定のテーブルを元に戻そうとしたら面倒だよ。確かAWSではそれが可能だったはず。Azureでは、データベース全体しか復元できないし、ダウンロードもできないよ。" userName="withinboredom" createdAt="2025-03-01T09:49:31" color="">}}

{{<matomeQuote body="＞ダウンロードはできるよ モード方法と場所を簡単に教えて。Azure SQL Databaseのこの機能を探して大分時間を無駄にしたから、詳細がほしい。" userName="tanseydavid" createdAt="2025-03-01T22:41:08" color="">}}

{{<matomeQuote body="Azure SQL Databaseでは、バックアップを新しいデータベースに復元したり、既存のものをbacpac形式でストレージアカウントにエクスポートできるよ。そのファイルはダウンロード可能。sqlpackage.exeを使えば、ポータルを使わずにローカルでも可能。ただし、アクティブなデータベースに接続する必要があるから、Azureのバックアップをダウンロードしたいなら、まず復元しなきゃ。Azure Postgresqlについては、pg_dumpとpg_restoreが使えると思う。" userName="tremon" createdAt="2025-03-04T00:32:54" color="#45d325">}}

{{<matomeQuote body="はい！もっと言うと、スタンダードに従った方が楽になるってこと。VMはcloud-initやイメージフォーマットなど、標準の一部だよ。2025年には、管理されたKubernetesはプロバイダー間で大差ないはずだよ。" userName="conradev" createdAt="2025-03-01T17:57:43" color="#785bff">}}

{{<matomeQuote body="もしレンタルマシンだけなら、みんなDigitalOceanやAWSのEC2使ってるだろうね。人はRDSやEKS/GKEを使って、運用のオーバーヘッドを避けてる。問題が出たらAmazonのエンジニアが対処してくれるしね。" userName="m11a" createdAt="2025-03-01T09:38:51" color="#38d3d3">}}

{{<matomeQuote body="管理されたIaaSで時間を節約したことはないな。オペレーション担当を雇わなくて済むと宣伝されてるけど、サプライヤーとの関係を管理する人は絶対に必要だよ。SaaSは全然違うけどね。" userName="marcosdumay" createdAt="2025-03-01T15:34:37" color="#ff33a1">}}

{{<matomeQuote body="VMのプロビジョニングはプロバイダーが維持する方が簡単。顧客にとって管理されたサービスのメンテナンスは楽なはずだけど、これは議論の余地があるね。" userName="n4r9" createdAt="2025-03-01T07:25:46" color="">}}

{{<matomeQuote body="クラウドサービスは動いてる時は素晴らしいけど、トラブルが起きたらデバッグする方法がないか、再起動しかできないこともある。AWSの管理されたIPsecソリューションを使ったけど、障害が発生した時の対応がイマイチだった。EC2も変なことがあったな。" userName="Szpadel" createdAt="2025-03-01T12:06:06" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="もっと理解してもらいたい。ボスは賛成してるけど、完全にはコントロールしていない。ベンダーロックインやOSSとの互換性の欠如が心配。”簡単だから”って言われても、実際どうなるか見ものだね。" userName="xahrepap" createdAt="2025-03-01T06:22:29" color="#38d3d3">}}

{{<matomeQuote body="Azureの反競争的行動が、AWSの価格引き下げを止めさせた原因でもある。2014年前はAWSは技術コストが下がると価格を定期的に引き下げてたけど、Azureがそれに合わせたからね。これは競争を殺すための策かもしれない。" userName="scarab92" createdAt="2025-03-01T08:23:32" color="#38d3d3">}}

{{<matomeQuote body="”より良い価格を見せてくれれば、それに合わせる”っていうのは新しい戦術じゃないし、クラウドに限ったことでもないよ。" userName="immibis" createdAt="2025-03-01T14:34:25" color="">}}

{{<matomeQuote body="Azureのツールとの統合が素晴らしいから好きになりたかったんだけど、VMの可用性やUXの不具合に苦しんだ。AWSではマシンを得るのが簡単だったのに。Azure Functionsは経験が変で、ログを取得するのもすごく面倒なんだ。" userName="bob1029" createdAt="2025-03-01T01:04:58" color="">}}

{{<matomeQuote body="ああ、リソースが必要なリージョンに利用可能なものがないのは最悪。SQLサーバーが立ち上がったって言っても、実際には20分待たされることもあるし、Terraformのtime_sleepはAzureの問題対策だったはず。" userName="woleium" createdAt="2025-03-01T01:09:53" color="">}}

{{<matomeQuote body="Azure App Servicesって、中間的な選択肢だよね。いろいろ機能があって、セキュアなWin Server/IISコンテナだし、自動スケールもできる。価格はVMより高いけど、セキュリティや更新を考えると楽だよ。" userName="briHass" createdAt="2025-03-01T03:12:07" color="#ff5c5c">}}

{{<matomeQuote body="App ServicesはLinuxコンテナでも動くけど、Windowsコンテナの方が機能が多い。メンテナンスを考えるとVMよりかなり安く済むよね。" userName="p_ing" createdAt="2025-03-01T03:58:11" color="">}}

{{<matomeQuote body="Azureはサービスの抽象化が最悪。30人の小規模な開発チームでAzureの設計がひどくて、業界標準に従って抽象化して別のプロバイダに移行したよ。コストも1/10で、開発体験は最高だね。" userName="jordanbeiber" createdAt="2025-03-01T07:27:23" color="#785bff">}}

{{<matomeQuote body="AWSとAzure両方使ってるけど、Azureのポータルが好きだね。AWSは難しい環境に入るとストレスが溜まるけど、Azureは必要な機能が直感的に整理されてる。" userName="crims0n" createdAt="2025-03-01T00:59:23" color="">}}

{{<matomeQuote body="確かにUIは遅いけど、AWSみたいに多くのサービスを切り替えずに済むから、Azureの方が楽なんだよね。AWSはリソースを探すのが面倒で、常にコンテキストを切り替えないといけないから大変。" userName="tsimionescu" createdAt="2025-03-01T06:17:23" color="">}}

{{<matomeQuote body="AWSのページは別々のチームが作ってるのが見える。結局IAACって言うけど、Azureは全てのリソースを一元的に見やすくできるのは良い点だね。" userName="zamalek" createdAt="2025-03-01T07:40:31" color="">}}

{{<matomeQuote body="Terraformのステート使ってルートテーブルのエントリ見てんの？" userName="Hikikomori" createdAt="2025-03-01T12:28:14" color="">}}

{{<matomeQuote body="ENIはコンソールのEC2の下にあって、APIやCLIではEC2と一緒に全部あるよ。インスタンスのネットワークタブ開いてそのENI IDクリックすればリソースに飛べるし、サブネットからはルートテーブルも2クリックでいける。リーチビリティアナライザー使えば、ソースとデスティネーションIPやポートのルーティングテーブルやSGルールも確認できる。以前Azureでネットワークエンジニアやってたけど、サポートやドキュメントがひどくて、問題多かった。" userName="Hikikomori" createdAt="2025-03-01T12:26:47" color="#45d325">}}

{{<matomeQuote body="＞”あなたが真剣だとは信じがたい”<br>Azure使った時、ポータルが本当に痛かった。こういう意見と真逆の人いるから、信じられないのも分かるけど。" userName="mexicocitinluez" createdAt="2025-03-01T13:41:01" color="">}}

{{<matomeQuote body="OPはAzureのAPIが遅くてひどいのと、UIデザインの違いを言いたいんじゃないかな。APIは最悪だけど、UIデザインは結構いいと思う。" userName="solatic" createdAt="2025-03-01T06:50:56" color="">}}

{{<matomeQuote body="リンクが新しいウィンドウで開けないのがイライラする。右クリックできないし、真ん中クリックも効かない！" userName="Epa095" createdAt="2025-03-01T08:30:41" color="">}}

{{<matomeQuote body="神よ、3年もこれについてフィードバック出してるのに、新しいタブで開けないのは本当におかしい。以前はできてたのに、なんでこんなことになったのか疑問。" userName="7bit" createdAt="2025-03-01T11:53:59" color="">}}

{{<matomeQuote body="おそらく有料のトロールだろう。まともなエンジニアがAzureポータルを良いと思うはずがない。UXがひどく、複雑すぎて直感的じゃない。全ての情報が画面に詰め込まれて意味不明。" userName="dustedcodes" createdAt="2025-03-01T15:00:05" color="#38d3d3">}}

{{<matomeQuote body="Azureポータルの大きな痛点は、リソースがいつ作成されたかや誰が作ったかが表示されないこと。これは許せないと思う。" userName="tanseydavid" createdAt="2025-03-01T23:03:27" color="">}}

{{<matomeQuote body="最近は当たり外れがあるけど、確実に改善してはいると思う。共通のエンジニア基準だよね、同意するよ。" userName="jwnin" createdAt="2025-03-02T01:29:39" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
