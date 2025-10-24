+++
date = '2025-10-17T00:00:00'
months = '2025/10'
draft = false
title = 'AWSからHetznerへ移行したらこうなった！驚きの実態'
tags = ["AWS", "Hetzner", "クラウド移行", "ベアメタル", "コスト削減"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> AWSからHetznerへ移行したらこうなった！驚きの実態

引用元：[https://news.ycombinator.com/item?id=45614922](https://news.ycombinator.com/item?id=45614922)




{{<matomeQuote body="ベアメタルへのデプロイは、パフォーマンスが2倍に向上し、すごく安定するよ。レイテンシ、キャッシュ、Disk IOが劇的に改善されるんだ。AWSより10倍安い価格で、オートスケーラーの重要性は下がり、S3コストの心配も無くなる。毎月の請求額も一定で、高速ストレージやPostgresqlも格安で使えるよ。全部合わせてAWSの10分の1のコストだ。もし自分でやりたくないなら、AWSの半額で私たちがDevOpsチームになって全部サポートするよ！<br>https://lithus.eu<br>Email: adam@lithus.eu" userName="adamcharnock" createdAt="2025/10/17 12:16:07" color="#ff5733">}}




{{<matomeQuote body="「昔ながらのものがまた新しくなってるね」。うちの会社は保守的で動きが遅いせいで、あえて何もせず「Local Cloud Edge Our Basement」みたいなのを先行してる感じだよ。" userName="rightbyte" createdAt="2025/10/17 12:21:18" color="">}}




{{<matomeQuote body="クラウドはずっと検討してたけど、複雑でコストが高い割にパフォーマンスが低くてね。「スケーラビリティ」って言われても、そんなに急いでサーバー追加するほどじゃないし、ベアメタルならコスト面で1年くらい先行できるよ。" userName="radu_floricica" createdAt="2025/10/17 13:03:37" color="">}}




{{<matomeQuote body="複雑だって？高可用性PostgresやRedisクラスターを専用ハードウェアで組むのが、AWSで数クリックでOSの心配なしにできるより簡単だとは思えないな。無限にスケールするロードバランサーもAWSならできるしね。" userName="odie5533" createdAt="2025/10/17 13:33:32" color="">}}




{{<matomeQuote body="「マシンがあれば速い」「お金は問題じゃない」っていうソフトウェア開発の時代はもう終わってほしいな。以前いた.NETの会社では、数台の強力なサーバーで何百万ものユーザーを処理してたのに、クラウド移行したら恐ろしい請求書といつもパフォーマンス問題に悩まされてたよ。" userName="torginus" createdAt="2025/10/17 14:22:35" color="#ff33a1">}}




{{<matomeQuote body="組織で一番大きなコストは人件費だよね。システム管理者やネットワーク管理者がいなくてもシステムを動かせるなら、クラウドプロバイダーに任せる方が、特に高額な週末やBlack Friday/Xmasの時期なんかは、かなりの節約になるよ。" userName="kitd" createdAt="2025/10/17 13:27:36" color="">}}




{{<matomeQuote body="俺の陰謀論だけど、「クラウドスケーリング」って、Slashdotでサイトが落ちるのを見て育った人たちが、「秒速で無限大にスケールできること」が世界で一番重要だと信じて推進したんじゃないかな。" userName="bombcar" createdAt="2025/10/17 15:50:25" color="">}}




{{<matomeQuote body="いや、クラウド導入の理由は、ハードウェア購入の承認に2年も待たされたり、必要な量の4分の1しかもらえなかったりしたチームの苦労だよ。予算が下りないから、みんなリソース不足に悩まされてた。クラウドなら5秒で新しいマシンが手に入るし、予算申請も不要。スケーリングで節約できるのに、それをちゃんとやってる組織は少ないけどね。" userName="colechristensen" createdAt="2025/10/17 16:14:49" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、ネットワーク維持、サーバーのセキュリティ、監視、更新をするチームを雇う費用って、特定の規模の組織じゃないとペイしないよね。だから、中小企業はセキュリティや運用コスト最適化のためにクラウドの方がいいんじゃないかって、俺はまだ思うな。" userName="realitysballs" createdAt="2025/10/17 13:09:07" color="">}}




{{<matomeQuote body="インフラエンジニアとして、この記事には反対だな。クラウドの良さは、いちいち許可を取らずにリソースを自分で管理できる俊敏性にある。ベアメタルでも同じようにIaaSとしてVMを提供できるはずだし、内部サービスチームはセルフサービスと会計処理を導入すべきだね。" userName="Aissen" createdAt="2025/10/17 12:33:08" color="#785bff">}}




{{<matomeQuote body="セルフホスティング派からすると、AWSでPostgresやRedisクラスターを動かすなんて想像できないくらい複雑そうだよな。どこで何をすればいいか、IPはどうなるか、ファイアウォールは？設定変更は？って感じで。その点、自分でSSHしてスクリプト書けば、ダウンロード、コンパイル、実行までサッとできて、ログも全部見れるし設定も自由自在。ブラックボックスがないのは最高だね。" userName="AznHisoka" createdAt="2025/10/17 14:22:22" color="#38d3d3">}}




{{<matomeQuote body="動きの速い会社ならクラウドなんていらないけど、昔は社内データセンターでサーバー1台増やすのに半年も待たされた経験があるよ。クラウドの最大のメリットは、データセンター部門やIT部門の”お偉いさん”にいちいち許可をもらわずに済むことだったんだ。クラウド移行は、組織の自作自演の政治問題を解決するためのものだったんだよね。もしサーバー管理する側と使う側で目標が揃ってたら、こんなにクラウド移行は増えなかっただろうね。" userName="hibikir" createdAt="2025/10/17 14:31:27" color="#38d3d3">}}




{{<matomeQuote body="Hetznerのハードウェアとあんたのプロダクト、どっちが先に壊れると思う？ハードウェア障害が全く起きないとは言わないけど、週末もプロダクトを動かし続けたいなら、週末に直せる人をちゃんと準備しとけよ。" userName="Arch-TK" createdAt="2025/10/17 14:09:30" color="#ff5733">}}




{{<matomeQuote body="クラウドネイティブな考え方に染まった開発者や運用者をどうやって変えればいいんだろうな？セルフホスティングを怖がらない人を雇うのが本当に難しいんだ。1994年にフロッピーからLinuxをインストールしてた俺からすると変な話だけど、最近のデベロッパーはクラウドが何でもやってくれるって信じ切ってる。これが、企業が高額なクラウドを使う理由の一つで、他の方法だと人が集まらないんだよ。クラウドはデベロッパーとIT業界の考え方を完全に支配しちゃってる。" userName="api" createdAt="2025/10/17 14:54:56" color="#45d325">}}




{{<matomeQuote body="これってさ、クラウド企業がみんなを囲い込む手口だよな。「本番環境でセルフホストは複雑すぎ」なんて、過去10～15年で植え付けられた間違った考え方だよ。専用サーバーにプロダクションDBをデプロイするのって、そんなに難しくないんだから。クラウドを使わないと素人だと思われるって風潮が、なんだか悲しいよね。" userName="codegeek" createdAt="2025/10/17 13:56:23" color="#ff5733">}}




{{<matomeQuote body="ちょっと話がそれるけど、なんでクラウドをやめる記事って”beefy”って単語をよく使うんだろうね？いつも「クラウドなんていらない、beefyなサーバーで何でもできる」みたいな言い方でさ。Oxide Computerとかがこれ読んでたら、”BEEFY server inc...”に社名変更した方がいいんじゃない？<br>URL: https://hn.algolia.com/?dateRange=all&page=0&prefix=true&que..." userName="dematz" createdAt="2025/10/17 17:43:10" color="">}}




{{<matomeQuote body="S3 APIを使うのは、玉ねぎを切るのと同じだね。やればやるほど、涙が出てくるよ。" userName="Thicken2320" createdAt="2025/10/17 12:24:56" color="#45d325">}}




{{<matomeQuote body="こういう比較を見るといつも笑っちゃうんだ。技術者の時間の方が、Raw Opex（運用コスト）よりもずっと価値があるってことを分かってないんだよね。みんなに4000ドルのMacBookを使うのは無駄だって言って、Linuxデスクトップにすれば大幅にコストを削減できるって言うのと一緒だよ。" userName="mjr00" createdAt="2025/10/17 13:58:21" color="#785bff">}}




{{<matomeQuote body="しかもさ、今クラウドでも同じ問題が起きてるんだよ、しかももっと高くてパフォーマンスも悪い状況でね。Azureでは、1ヶ月以上も普通のVMが確保できずに困ってるんだ。提供済みのはずのキャパシティすら満たせないなんて、ひどい話だよね。" userName="dinvlad" createdAt="2025/10/17 16:43:09" color="#785bff">}}




{{<matomeQuote body="はは！俺の唯一の「そうだけど…」って意見はこれだね。S3で秒間5万APIコール（S3だとAPIコールだけで秒間20ドルから250ドル！）ってのは、S3の誤用みたいな気がするんだ。ユースケースは分からないけど、AWSの別のサービスの方が良い答えなんじゃない？AWSを擁護するわけじゃないけど、多分これは比較対象が間違ってるかもね。Hetznerについては学びたいけどさ。" userName="Esophagus4" createdAt="2025/10/17 12:48:26" color="#45d325">}}




{{<matomeQuote body="あるグラフデータベースがあって、DBの起動、バックアップ、リストアのディスクIOを単一スレッドのシーケンシャル8KB操作でやるんだ。EBS上だと、io2でもレイテンシが約0.5msあるせいで、せいぜい200MB/sしか出ない。ディスク自体はもっと速くできるのに、EBSスループットが十分あるノードならベンチマークで数GB/s出せるんだけどね。同じEC2インスタンスのローカルSSDなら、インスタンスが出せる限界（俺の場合は約2GB/s）まで喜んで使い切るよ。" userName="jnsaff2" createdAt="2025/10/17 12:22:13" color="#ff5c5c">}}




{{<matomeQuote body="それは最近までの話だよ。俺もあんたも認めたくないだろうけど、真実はね、ChatGPTが「ネットワークを保守し、継続的にサーバーを安全に監視し、更新・パッチを適用するチーム」に払うような仕事の99％を処理できるんだ。実際、ChatGPTは全てを包含していて、彼らを凌駕してる。どんな会社でも今やOpenAIのサービスに払うだけで、「それらの専門家の給料」に費やしていたお金の大部分を節約できる。ちなみに、ChatGPT Proは月200ドルだよ…どっちに払いたいと思う？" userName="DisabledVeteran" createdAt="2025/10/17 13:48:10" color="#45d325">}}




{{<matomeQuote body="「自分でやりたくないなら、AWSの半額でDevOpsチームとしてもやってあげる」ってのは、実はAWSのビジネスケースを強化してるんじゃない？ハードウェアのコスト削減なんて、2日分の時給で食い潰されちゃうんだから。俺はプロジェクトのコストをあらゆる側面から見るのが好きだね…" userName="belter" createdAt="2025/10/17 12:51:57" color="#ff5c5c">}}




{{<matomeQuote body="確かに、でもそれはAzureだからだろ。誰かがそこを選ぶ決断をしたのは気の毒だね。AWSやGCPじゃ、少なくとも以前は在庫切れなんてほとんど聞いたことなかったよ。" userName="lazide" createdAt="2025/10/17 17:23:43" color="">}}




{{<matomeQuote body="クラウドプロバイダやCloudflareだってしょっちゅうダウンするんだから、落ち着けよ。" userName="grim_io" createdAt="2025/10/17 14:28:43" color="">}}




{{<matomeQuote body="じゃあDBも自己ホストするってこと？データ損失はどう防ぐ？複数の物理ロケーションにDBクラスターを組んで自動フェイルオーバーさせる？レプリケーションラグの監視は誰がやるの？バックアップはどこに保存するの？パフォーマンスチューニングの責任者は誰なんだ？" userName="awestroke" createdAt="2025/10/17 15:10:54" color="#ff33a1">}}




{{<matomeQuote body="確かに。でもAWSがダウンしたらAmazonが週末でも直してくれる。自分でホストするなら、誰か人を雇ってオンコールで直させる必要があるだろ。" userName="fwip" createdAt="2025/10/17 15:14:14" color="#45d325">}}




{{<matomeQuote body="内部ITから逃げても、いつかは追いつかれるよ。うちの職場では、クラウドVMを一つ立ち上げるのに何年もかかる。プロジェクトが長すぎて、途中でクラウドベンダーが技術スタックの非推奨通知を出してきたのに、結局「舵を切るのが大変」だからって強行したんだ。今の「逃亡者」はSalesforceみたいなSaaSプラットフォームに向かってるけど、これはクラウドよりも10倍ひどいロックインだぞ。" userName="jiggawatts" createdAt="2025/10/17 22:40:25" color="#ff5c5c">}}




{{<matomeQuote body="ハードウェア承認に時間かかりすぎ問題は、交渉力不足か組織の問題。ハードウェア調達を遅らせてた人たちが今度はクラウド移行も遅らせてるみたい。根本原因の組織のズレとか機能不全が解決されてないからだよね。<br>" userName="kaliszad" createdAt="2025/10/17 20:21:16" color="#ff5733">}}




{{<matomeQuote body="専用サーバの方が全然使えると思うな。俺はHetznerでいくつかノードを動かしてるけど、中古の3年前のマシンでもVMとは比べ物にならないくらい性能が良いんだよ。クラウドプロバイダーって高コア数、低クロックでI/O重視のサーバを過剰供給してるし、ディスクもNAS上でエミュレートとかヤバいことしてる。普通のスタートアップには、そんな過度な仮想化は必要ないでしょ。Hetznerの専用サーバレンタルがコスパ最強。Hetznerみたいな価格と品質の北米（特にカナダ）の会社を知ってたら教えて欲しいな。OVHは知ってるんだけど。<br>" userName="lisperforlife" createdAt="2025/10/17 10:34:50" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="前のコメントで「Hetznerみたいな北米の会社知りたい」って言ってたけど、実はHetzner自体がアメリカに2つデータセンターを持ってるんだよ。もし「Hetzner品質でアメリカにあるものが欲しい」ってだけなら、別に他の会社を探す必要ないんじゃないかな？<br>" userName="codethief" createdAt="2025/10/17 11:22:04" color="#ff5733">}}




{{<matomeQuote body="最近見つけたんだけど、このサイトが役立つかもよ: https://vpspricetracker.com <br>めちゃくちゃ良いから教えるね。ここに載ってるほとんどのプロバイダーは、専用サーバも扱ってるらしいよ。<br>" userName="eahm" createdAt="2025/10/17 10:50:22" color="#38d3d3">}}




{{<matomeQuote body="専用サーバを借りるときは注意してね。VPSでは普通問題にならないようなことに出くわすことがあるからさ。例えば、俺はHetznerでRyzen搭載の専用サーバ借りたらSIMDが不安定で、ZFSのチェックサムがランダムに失敗したり、mprimeもエラーを出したりしたんだ。チケット切ったけど「診断で検出できないから問題ない」って言われたよ。<br>" userName="bakugo" createdAt="2025/10/17 10:46:39" color="#38d3d3">}}




{{<matomeQuote body="そうなんだよ、Hetznerのサポートって、良くも悪くもかなり技術的でさ、問題があったら全部証拠を揃えて送らないとダメなんだ。でもね、俺は過去にランダムな問題があった時、見つけたトラブルシューティングと証拠を全部送ったら、数時間後には同じスペックの新しいホストを用意してくれたよ。多分、俺たちの経験が違うように、受けるサポートの質も変わってくるのかもね :)<br>" userName="CaptainOfCoit" createdAt="2025/10/17 10:48:19" color="#45d325">}}




{{<matomeQuote body="俺の記憶が確かなら、Hetznerの専用インスタンスって、ドイツとフィンランドのデータセンターでしか使えないはずなんだよね。残念ながら他の場所では利用できないみたいだよ :/ <br>" userName="CaptainOfCoit" createdAt="2025/10/17 11:37:57" color="">}}




{{<matomeQuote body="他のコメントでもよく言われるけど、みんなGoogleとかFBがやってることが正解だと思ってるよね。俺の職場はヨーロッパのVPSプロバイダーで modest な運用をしてるんだけど、新しい社員が入ってくるたびに「グラウンドホッグデー」みたいに「俺たちはもうクラウドだぞ。履歴書を飾って他の会社に行くために『クラウド移行プロジェクト』とか始めるな！」って、毎回ChatGPTに頼んで優しいトーンで説明してるよ。<br>" userName="ozim" createdAt="2025/10/17 12:46:38" color="#785bff">}}




{{<matomeQuote body="実は俺、これをベンチマークして、数年前に記事を書いたんだよね。今でもかなり当てはまると思うよ: https://jan.rychter.com/enblog/cloud-server-cpu-performance-...<br>" userName="jwr" createdAt="2025/10/17 11:12:40" color="#ff33a1">}}




{{<matomeQuote body="HetznerはZFSの問題をHDD故障だって言い張って1週間も診断させられたよ。<br>結局SIMD無効にしたら解決したんだから、最初からそうしてくれればよかったのに。諦めてZFSのSIMDを切ったらうまくいったって感じ。" userName="bakugo" createdAt="2025/10/17 10:56:03" color="#ff33a1">}}




{{<matomeQuote body="OVH以外で同じような専用サーバーを探してるなら、USだとVultrを使ったことあるよ。値段は結構良いんだけど、帯域無制限じゃないのが惜しいな。<br>Hetznerでホストしてる個人/コミュニティのやつは自分で払ってるんだ。" userName="CaptainOfCoit" createdAt="2025/10/17 10:38:26" color="#785bff">}}




{{<matomeQuote body="1週間も問題の診断に時間がかかるって最悪だよね。<br>俺は怪しいところ見つけてデータ送ったら2～3時間で新しいインスタンスを用意してもらえたよ。<br>HNとか他のところのコメント見てると、Hetznerのサポート品質と速度って本当にバラつきがあるみたい。" userName="CaptainOfCoit" createdAt="2025/10/17 11:01:00" color="#38d3d3">}}




{{<matomeQuote body="カナダ（トロントDatacenter）でVultrの専用メタルを検討してるんだけど、Hetznerと比べてどうなの？<br>最高の取引じゃなくても良いから、EC2よりは価値あるものが欲しいんだよね。EC2はEgress費用が高いし。" userName="rapind" createdAt="2025/10/17 14:10:15" color="">}}




{{<matomeQuote body="HetznerみたいなサービスをAPAC、特に日本、台湾、韓国で探してるんだけど、なかなか良い選択肢が見つからないんだよね。" userName="deaux" createdAt="2025/10/17 11:52:00" color="">}}




{{<matomeQuote body="うん、その通り。HetznerはUSではVPSしか提供してないよ。" userName="joshstrange" createdAt="2025/10/17 11:52:39" color="">}}




{{<matomeQuote body="残念ながら、USにはHetznerの価格に匹敵する専用サーバーは無いね。<br>もし誰か知ってたら教えてほしい！serversearcher.comでClouviderとLatitiudeが良い値段って出てくるけど、Hetznerレベルじゃないし。" userName="matt-p" createdAt="2025/10/17 13:28:23" color="#ff33a1">}}




{{<matomeQuote body="GoogleやFBはほとんどのコードをVMじゃなくてコンテナでデプロイしてるよ。VMは使ってないんだ。" userName="kccqzy" createdAt="2025/10/17 14:08:47" color="">}}




{{<matomeQuote body="創業者が密接に関わらなくなった後も、常に良いテクニカルサポートを提供できるスケールしたテック企業ってあるのかな？<br>多くのお客さんは自分が思ってるほど知識がないから、これを完璧にするのは本当に難しいと思うよ。" userName="vanviegen" createdAt="2025/10/17 12:16:30" color="#45d325">}}




{{<matomeQuote body="テスト中に「preheat」した？<br>クラウドインスタンスって「バースト可能」なvCPUが多いんだよね。起動後とか長時間のアイドル後だと最初の数分は良い性能が出るけど、その後は徐々に性能が落ちてくるよ。" userName="kees99" createdAt="2025/10/17 11:55:30" color="#ff33a1">}}




{{<matomeQuote body="ウェブサイトは良いんだけど、結果を“カード”表示にするのは失敗だね。昔ながらの表の方が断然スキャンしやすいし、いちいち読まなくても欲しい情報がすぐ見つかるのに。これだと本当に探しにくいよ…<br>Edit: 皮肉なことに、そのウェブサイトにはHetznerがインデックスにないんだ。" userName="CaptainOfCoit" createdAt="2025/10/17 10:52:31" color="">}}




{{<matomeQuote body="Hetznerのクラウドブロックストレージ、結構遅いんだよね。うちのタイムスケールデータベースだとすぐにボトルネックになっちゃった。今はNetcup.comの“root servers”を試してるんだ。これは専用CPUコアとすごく速いストレージのVPSだよ。" userName="micw" createdAt="2025/10/17 11:48:37" color="#38d3d3">}}




{{<matomeQuote body="俺も最近、クラウドプロバイダー間でベンチマークをやって、価格とパフォーマンスを比較してみたよ。<br>https://dillonshook.com/postgres-cloud-benchmarks-for-indie-..." userName="vicarrion" createdAt="2025/10/17 23:21:38" color="#45d325">}}




{{<matomeQuote body="AWSでパフォーマンスを見積もるのが本当にイライラするんだ。自分の開発用ラップトップ（M2 MBP）の性能からかなり下方修正しなきゃいけないんだから。AWSにデプロイすると15倍も遅くなるのを何度も経験してるよ。これは俺だけの話じゃなくて、色々な会社でクラウドホスティングサービスを使ってる時に見た一貫した傾向なんだ。一番のパフォーマンスヒットはサーバー間のレイテンシだよ。もしサーバーが秒間何百、何千とDBクエリを発行するなら、クラウドだとその痛みをより強く感じるはず。たとえクラウドDBサーバーのCPUが比較的暇でもね。これってネットワークレイテンシなんだよ。AWSのコストを見ても、月に100,000ドル以上簡単に使うことになる。俺はベアメタルやVPSでサービスを動かした経験もあるけど、AWSやGCPから得られるものよりはるかに良いパフォーマンスを、ずっと少ないコストで手に入れられたよ。俺にとって“クラウド”ってのは、ベンダーロックイン、ひどいパフォーマンス、そして途方もないコストを意味するね。" userName="mrinterweb" createdAt="2025/10/17 18:56:55" color="#ff33a1">}}




{{<matomeQuote body="でもVPSもAWSよりそんなにずっと高性能なの？" userName="atonse" createdAt="2025/10/17 13:30:01" color="">}}




{{<matomeQuote body="＞北米（特にカナダ）でHetznerみたいな価格とサービス品質の会社を知りたいな。2日前のスレッドでioflood.comがアメリカ拠点の代替案としておすすめされてたよ。" userName="wongarsu" createdAt="2025/10/17 11:40:41" color="#ff5733">}}




{{<matomeQuote body="latitude.shはアメリカでベアメタルをうまくやってるね。" userName="ccakes" createdAt="2025/10/17 13:49:20" color="#785bff">}}




{{<matomeQuote body="もし君がカナダの会社なら、VultrよりOVHを選ぶべきだよ。OVH USは彼らのカナダやEUのサービスとは法的に完全に別会社なんだ。これは特に、他のOVHがCLOUD Actの影響を受けないようにするためなんだよ。Vultrはアメリカの会社だから、もしアメリカ政府が君のデータを要求してきたら、たとえカナダのロケーションであってもVultrも君もそれを止めることはできない。これは数年前は考慮する必要がなかったことだけど、国境の南（アメリカ）で物事がどれだけ早く悪化しているかを考えると、今ではもっとリスクが高まってる。もし俺がカナダで会社を経営するなら、顧客に彼らのデータがカナダの裁判所を通さずにアメリカに没収されることはないと保証できるようにしたいね。ちなみに、OVH Canadaは今、Beauharnoisの元のロケーションとケンブリッジの新しいロケーション、二つのカナダのロケーションがあるから、冗長性のために二つのゾーンを持つこともできるよ。" userName="Sanzig" createdAt="2025/10/17 19:40:48" color="#38d3d3">}}




{{<matomeQuote body="カナダだとここらへんがあるよ。<br>https://www.hostpapa.ca/<br>https://www.cacloud.com/<br>https://www.keepsec.ca/<br>https://www.canspace.ca/" userName="BiraIgnacio" createdAt="2025/10/17 12:21:08" color="#785bff">}}




{{<matomeQuote body="LayerStackはAPACだとめちゃくちゃ速いらしいよ。<br>https://www.layerstack.com/en/dedicated-cloud" userName="b0ner_t0ner" createdAt="2025/10/17 14:55:07" color="#ff33a1">}}




{{<matomeQuote body="Hetznerの価格は知らないけど、OVHcloudの専用サーバーはアメリカやカナダにもあって、長年使ってるけどかなり良いよ！" userName="MrPowerGamerBR" createdAt="2025/10/17 15:47:03" color="">}}




{{<matomeQuote body="wholesaleinternet.netを使ったことがあるけど、アメリカの中心部にあるよ。" userName="shrubble" createdAt="2025/10/17 10:59:07" color="">}}




{{<matomeQuote body="最近、Hetznerに移行するチームが多いけど、Postgresの運用を再構築しないといけないのが大変みたいだね。うちはHetznerで動くマネージドPostgresを構築したよ。HA、バックアップ、PITRを自動でやってくれて、AWSのようなエグレスやI/Oの問題もないオープンソースサービスなんだ。詳細はこのブログを見てみてね。<br>[1] https://www.ubicloud.com/blog/difference-between-running-pos...<br>[2] https://www.ubicloud.com/use-cases/postgresql" userName="pwmtr" createdAt="2025/10/17 10:53:58" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Big Cloud、特にPaaSやマネージドSQLの魅力は、運用知識がなくても安心できることだね。データベースのバックアップや復元、セキュリティパッチの適用、本番環境へのアクセス制限、DoS対策とか、自分で全部やらなくていいのがすごく助かる。大手クラウドを選べば、技術的にも政治的にも安心できる部分が多いと感じるよ。" userName="normie3000" createdAt="2025/10/17 11:26:35" color="#38d3d3">}}




{{<matomeQuote body="セキュリティパッチの適用って、すぐに対応が必要なケースは稀だし、DBエンジンを外部に公開することは普通ないから、そこまで心配しなくて大丈夫だよ。メジャーリリースを定期的に追って、テストしてから本番に適用すればOK。むしろ、何年もアップデートしない古いバージョンを使い続ける方が危険だね。自動スキャナーに引っかかったり、エクスプロイトコードが出回ったりするリスクが高いから。" userName="ozim" createdAt="2025/10/17 12:10:21" color="#45d325">}}




{{<matomeQuote body="いろんなプロバイダーでマネージドデータベースを提供するSaaSってあるのかな？サーバーは自分で買って、ソフトウェアの導入やバックアップはサービス側でやってくれるようなやつ。誰か良いサービスを知ってたら教えてほしいな。" userName="DanielHB" createdAt="2025/10/17 12:20:03" color="">}}




{{<matomeQuote body="AWSのデータベース復元サポートって、バックアップから新しいDBクラスターを立ち上げるのが基本だから、「全部ロールバック」以外のリカバリ戦略だと、バックアップデータと現在のデータをマージする仕組みは自分で作る必要があるんだ。意外と手間がかかることもあるよ。" userName="swiftcoder" createdAt="2025/10/17 12:25:16" color="#45d325">}}




{{<matomeQuote body="そうだね、たいていの人は手動で対応するか、特定の時点に丸ごと戻すって決めることが多いんじゃないかな。" userName="matt-p" createdAt="2025/10/17 12:32:35" color="">}}




{{<matomeQuote body="そうなんだよ。デフォルトの戦略だと、単純じゃないデータ破損に初めて遭遇すると本当に大変だよね。僕の以前の会社では、テストでステージ環境のテーブルを消してバックアップから復元してたけど、これは簡単だった。でも、実際に本番で起こったデータ破損は数週間気づかれなくて、復元しようとしたら、数万件のレコードを複数の関連テーブル間でマージするのにすごく苦労したんだ。" userName="swiftcoder" createdAt="2025/10/17 12:51:49" color="#ff5733">}}




{{<matomeQuote body="ていうかさ、一回きりの変なデータ破損バグ全部を自動解決するのって、マジでめちゃくちゃ手間かかるんだよね。" userName="matt-p" createdAt="2025/10/17 12:54:47" color="">}}




{{<matomeQuote body="ほんとそれ。新しいDBクラスター作るより、既存DBにいろんなデータ引っ張ってきて、新旧データ両方にクエリできるようにするパイプラインが大事って話ね。" userName="swiftcoder" createdAt="2025/10/17 13:47:43" color="">}}




{{<matomeQuote body="まさにコレ。小さいチームで機能開発とか顧客維持に集中してるなら、こういうのは喜んで外部に任せてぐっすり寝るのが一番。コストとか性能じゃなくて、これを自分でやり出したら本業がおろそかになるってこと。トレードオフだよね。" userName="recroad" createdAt="2025/10/17 16:01:20" color="">}}




{{<matomeQuote body="ほんとそう。Cloud 66の顧客もHetznerでのPaaS体験は良いって言うけど、うちのマネージドDBが一番役立つって言ってるんだ。" userName="ksajadi" createdAt="2025/10/17 11:41:35" color="">}}




{{<matomeQuote body="自己管理型おまかせPostgresの関連で、これもあるよ: https://www.elephant-shed.io/" userName="baobun" createdAt="2025/10/17 11:56:04" color="">}}




{{<matomeQuote body="多分いいプロジェクトなんだろうけど、README見てるとメンテ状況が気になったな。依存関係のリンク半分くらい古いか動かないし、Dockerに触れずにVagrant参照してるのはちょっと…" userName="bdcravens" createdAt="2025/10/17 12:07:02" color="">}}




{{<matomeQuote body="うん、メンテ不足だからプラグ＆プレイとか自動化だけで本番運用は無理だね。でもVMとか専用サーバーで使うなら良いベースになるし、DIY以外だとこれより良いのまだ見つからないよ。" userName="baobun" createdAt="2025/10/17 12:24:36" color="">}}




{{<matomeQuote body="あとPigsty [1] も。個人的にはちょっと重すぎる感じだけど、他のHNerの経験も聞いてみたいな。<br>[1] https://pigsty.io/" userName="slig" createdAt="2025/10/17 15:13:06" color="">}}




{{<matomeQuote body="この手の投稿って、アドバイスなのに文脈語らないコメントが多いのすごいな。教会のお便りホスティングしてるのか、それとも数百万の顧客と専門DevOpsチームがいる大企業向けウェブアプリ運用してるのかさ。どんな価格／性能／可用性のアドバイスも、状況を説明しないと意味ないって。みんなウェブを複雑にしすぎるのは、違う要求の人たちのアドバイスに従っちゃうからだよ。" userName="andybak" createdAt="2025/10/17 12:16:43" color="#ff5733">}}




{{<matomeQuote body="ウェブ開発が複雑化してるのは、要求が全然違う人のアドバイス聞いたり、AWSのアカウントマネージャーが経営層に忍び込んでるからだよ。<br>このスレッドの他のコメントでも、上層部からAWS使うよう指示されるって話があったね。<br>AWSのアーキテクトがチームにいて、一番高いサーバーレスオプション勧めてくるのがマジ変。<br>しかも、セキュリティのために毎日Dockerイメージを再構築・デプロイしなきゃいけないなんて教えてくれないんだよね。ベアメタルみたいにパッチ当ててるのと変わらないじゃん。" userName="cube00" createdAt="2025/10/17 14:34:35" color="#785bff">}}




{{<matomeQuote body="マジでわからんけど、俺の個人用pastebinはベアメタルで動かさないと全然追いつかないんだよ。" userName="casparvitch" createdAt="2025/10/17 13:42:55" color="">}}




{{<matomeQuote body="違う要件には、違うスキルセット、違うコスト、違う課題があるんだ。<br>AWSとHetznerは、両方かなり使った経験から言うと、表面上は同じ製品ってだけで、全然違うよ。" userName="Hasz" createdAt="2025/10/17 14:25:44" color="#ff5733">}}




{{<matomeQuote body="3大陸にまたがる専任のDevOpsチームなんて、99.9999%のケースでは必要ないよ。" userName="sergiotapia" createdAt="2025/10/17 16:36:30" color="#ff5c5c">}}




{{<matomeQuote body="めっちゃ同意！<br>これ書いた時はあなたのコメント見てなかったんだよね。詳しくはこっちを見てね: https://news.ycombinator.com/item?id=45616366<br>TL;DR: ホスティングプロバイダーは料金グリッド（DIY、Get Started、Pro、Team、Enterprise）みたいに考えて、YAGNIなら選ぶな、ってこと。" userName="Terretta" createdAt="2025/10/17 13:13:20" color="#ff5733">}}




{{<matomeQuote body="俺のSaaSはHetznerサーバーで10年以上動かしてるよ。<br>DEとFIに専用ハードウェアのクラスターがあって、Ansibleで管理してる。<br>サーバー間のプライベートVPNはvpncloud使ってるんだけど、これすごくいいソフトだよ。<br>AWSとかに払う料金の何分の1かで済むし、サーバーもずっと速いから、シンプルなアーキテクチャでサーバー数も少なくできる。<br>スケールするときはサーバーを追加すればいいだけ。<br>物理サーバーだと数分でスケールアップ・ダウンはできないけど、数時間から数日で計画すれば全然問題ないよ。<br>耐障害性のために分散データベース（RethinkDBからFoundationDBに移行中）を使ってる。" userName="jwr" createdAt="2025/10/17 11:05:00" color="#785bff">}}




{{<matomeQuote body="俺と似たようなセットアップだね（RethinkDBも含む）。<br>なんでFoundationDBを選ぶの？<br>RethinkDBってまだメンテされてて、たまに機能も追加されてるよ（俺、RethinkDBのSlackにいるし、非同期PHPドライバーもメンテしてるから）。<br>ただ、一人でパートタイムでやってるだけなんだけどね。" userName="withinboredom" createdAt="2025/10/17 12:56:23" color="#45d325">}}




{{<matomeQuote body="RethinkDBは一応メンテされてるし、すごく良いDBでうまく動くけど、将来性がないんだ。<br>もっと大きな理由は、パフォーマンスが必要で、10年も経つとデータアクセスパターンがよく分かるから、FoundationDBをうまく使えるんだよね。<br>特にFoundationDBを選んだのは、ほとんどが正確性のためで、厳密な直列化可能性を提供し、それを実現してくれる唯一の分散DBだからだよ。<br>パフォーマンスは#2の理由かな。" userName="jwr" createdAt="2025/10/17 15:25:53" color="#ff5733">}}




{{<matomeQuote body="3つのAZがないことや、FIからDEへのレイテンシ不足はどう対応するの？" userName="vjerancrnjak" createdAt="2025/10/17 21:23:48" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
