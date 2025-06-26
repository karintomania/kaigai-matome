+++
date = '2025-06-19T00:00:00'
months = '2025/06'
draft = false
title = 'もしもKubernetes 2.0が登場したらどんな姿になる？'
tags = ["Kubernetes", "コンテナオーケストレーション", "サーバーレス", "デプロイ", "システム設計"]
featureimage = 'thumbnails/orange2.jpg'
+++

> もしもKubernetes 2.0が登場したらどんな姿になる？

引用元：[https://news.ycombinator.com/item?id=44317825](https://news.ycombinator.com/item?id=44317825)




{{<matomeQuote body="Kubernetesのダメなとこは、誰でも手軽に扱えないこと。まともに運用できるエンジニアは少ないよ。だからみんなサーバーレスに逃げるんだ。<br>Kubernetes 2.0はエンジニアが自分で簡単に運用できるプラットフォームになるべき。俺はRivetっていうのを作ってて、まさに”Kubernetes 2.0って何？”ってのを考えてる。コントローラーを trivially 作れるのがウリで、複雑なワークロードやマルチテナンシーとかに役立つんだ。 https://github.com/rivet-gg/rivet" userName="NathanFlurry" createdAt="2025/06/19 19:41:19" color="#45d325">}}




{{<matomeQuote body="コメント1の意見には同意できないな。よく聞く話だけど、毎回イラっとするよ。古い人間だからかな。<br>結局、何かの技術 X が「重すぎ」って言われて、シンプルなの Y を作る。Y が流行ると機能が足されてまた重くなる。そしたらまた別の人が「Y は重すぎ」って言うんだ。まさに「時間の車輪」みたいで、始まりも終わりもないね。" userName="stuff4ben" createdAt="2025/06/19 19:52:35" color="">}}




{{<matomeQuote body="俺もこのサイクルを何度も見てきた。でもね、毎回何かしら新しいものが出てきたり、違う失敗をしたり、つまり何らかの progress はあるんだ。<br>シンプルなシステムに機能が追加されるのは、プロダクションに必要と思われてるから。でも経験を積むと、それが不要だったりダメだったりする。新しい世代がシンプルなシステムを作り直す時に、そういう無駄が省かれるんだ。それは良いことだよ。<br>新しいシステムもまた複雑になるだろうけど、前のダメな機能は含まれない。新しいダメな機能は生まれるだろうけどね。でも、考えつかなかった良い機能も生まれるかも。" userName="rfrey" createdAt="2025/06/20 04:39:17" color="">}}




{{<matomeQuote body="Kubernetesへの批判のほとんどは、K8s の問題じゃなくて、実は批判してる奴らが問題なんだって分かったよ。<br>彼らは何も考えず、意味不明なことに K8s を使って、うまくいかないのを K8s のせいにするんだ。<br>ちょっと考えてみて。K8s が最高なのはこんな時：余ってるサーバーを使いたい、いろんな環境に簡単にデプロイしたい、開発者に DNS や network を気にさせたくない、自動で scale させたい、特定の framework に縛られたくない。もし余ってるハードウェアがないなら、K8s は多分必要ないよ。" userName="motorest" createdAt="2025/06/20 07:32:02" color="#45d325">}}




{{<matomeQuote body="これが Rivet の話じゃないことを願うな。Kubernetes は container orchestration at scale って本来の目的には良い仕事をしてると思う。でも進化は必要だね。<br>こういうシステム設計の仕事は、正しい primitive を決めて platform を作るのが仕事。<br>最初の cloud primitive は VM とかだった。<br>K8s が流行ったのは container app に必要な primitive を標準化したからだ。<br>Rivet は違うアプローチで、今の apps の deploy 方法に基づいた新しい primitive に投資してるんだ。<br>- Stateless Functions<br>- Stateful Workers<br>- Containers<br>これが新しい primitive って言うと反論あるだろうけど、俺たちの経験では actual apps の actual problem を解決してるよ。" userName="NathanFlurry" createdAt="2025/06/19 21:10:24" color="#45d325">}}




{{<matomeQuote body="（コメント5へ）君の primitive の話は buzzword に踊らされてるだけに見えるな。全然意味が分からない。<br>”stateless function” なんて、単なるイベントハンドラーしか動かせない制限されたサービスだろ？K8s の普通の deployment と比べて何が良いんだ？何もねぇよ。<br>それに君たちのコンセプトは全然練られてない。stateless functions と stateful workers は containers と無関係だろ？Cloudflare は V8 isolate で動かしてるって言ってるぞ。handler 動かすのに container がいるか？function 動かすのに container orchestrator cluster がいるか？K8s と serverless って buzzword を並べたいだけだろ。" userName="motorest" createdAt="2025/06/20 05:07:38" color="#785bff">}}




{{<matomeQuote body="（コメント4へ）「開発者に DNS や network を気にさせたくない」って言うけど、K8s の前にそんなの気にする必要あった？俺は20年以上やってるけど、普通の開発者はそんなこと全然気にしてなかったぞ。<br>「framework に縛られたくない」って話は、まあそうだけど違うとも言える。K8s は deploy を統一するのに役立つけど、一番大きい要因は technical なことより organizational なことだよ。（これは普通の会社の話ね。超一流エンジニアが集まる SV startup は別だけど。）" userName="darkwater" createdAt="2025/06/20 09:55:34" color="">}}




{{<matomeQuote body="（コメント7へ）「開発者に DNS や network を気にさせたくなかった」って件だけど、必要だっただろ？内部 service が別の service を呼ぶ設定はどうしてたんだ？<br>「普通の開発者は気にしてなかった」って？君は web service で働いてる？service が database に request 送るにはどうする？<br>これ、超 basic なユースケースだよ。Docker compose とかのウリの一つは network の扱いだろ。Microsoft の Aspire とかも、この辛いユースケースを軽減するために作られたんだ。なんでこれが問題じゃないって思えるんだ？" userName="motorest" createdAt="2025/06/20 10:03:37" color="#45d325">}}




{{<matomeQuote body="「Just Works じゃない」って？そんなことないよ。Talos を使えば N node cluster が10分くらいでできるんだ。9分はダウンロード待ちで、設定はたった1分だよ。それくらい簡単なんだぜ。" userName="jekwoooooe" createdAt="2025/06/20 02:39:01" color="">}}




{{<matomeQuote body="（コメント8へ）sysadmins か ops が用意した DNS を呼ぶだけだよ。開発者はそんなこと全然知らないね。" userName="darkwater" createdAt="2025/06/20 12:07:58" color="">}}




{{<matomeQuote body="SaaSとしてK8s使うなら、メンテ任せだから超複雑ってわけじゃないよ。設定は多いけど、プロダクションに必要なのはごく一部。docker-composeより少し複雑なくらいでデプロイできる。大半のアプリはdocker-composeレベルで十分だったのかもね。あれが流行らなかったのは惜しい。" userName="jeswin" createdAt="2025/06/20 02:47:02" color="#785bff">}}




{{<matomeQuote body="いやいや、k3sみたいなK8sクラスターのメンテはめっちゃ簡単だよ。自動アップグレードとかちゃんと設定すればね。ストレージもCephはあれだけどlonghornとかあるし。数千のhelmチャートで複雑なDBもすぐデプロイ。自分のサービスもhelmで楽勝。helmは完璧じゃないけど、やりたいようにやれるなら最高さ。serverlessみたいにすぐは無理だけど、ちょっと頑張れば本番環境で数十万も節約できるならやるっしょ。" userName="kachapopopow" createdAt="2025/06/20 05:29:35" color="#38d3d3">}}




{{<matomeQuote body="昔は俺もsysadminで、全部設定ファイル書いてたよ。今よりマジ大変だった。今はdevとしてmanifest書くだけで、クラスターが全部やってくれるんだから。ロードバランサーとかTLS証明書の管理とか、最高だよ。" userName="haiku2077" createdAt="2025/06/20 13:15:58" color="#ff5733">}}




{{<matomeQuote body="＞ If you’re using k8s as a service... この点は大事だね。筆者の意見は現実と違うってば。最近のK8sディストリビューションは超簡単にセットアップできて、パッケージ入れてコマンド打つだけでノード追加できるんだから。筆者がKubernetesを自分で触ったことあるのか疑問だなあ。" userName="motorest" createdAt="2025/06/20 04:48:54" color="#ff33a1">}}




{{<matomeQuote body="＞ I currently need a container... そんなことないってば。コンテナはデプロイや設定を扱うだけだよ。コンテナ自身がHTTPを話すわけじゃない。ポートを開けて、HTTPより下のOSI layerでトラフィックをルーティングするんだ。" userName="motorest" createdAt="2025/06/20 10:07:45" color="">}}




{{<matomeQuote body="Kubernetesの初期はPKIとかetcdの設定がマジ大変だったし、マネージドサービスもなかった。今はさ、どのスレッドでも10年近く前の、今の会社じゃほぼ直面しないような話ばっか繰り返してるんだよ。" userName="15155" createdAt="2025/06/20 05:06:03" color="">}}




{{<matomeQuote body="そうそう！言いたかったのはこれ！コンテナはカーネルインターフェース使って好きなポート開けるコード入れられるけど、serverless workerはダメ。WorkerはHTTPインターフェースでHTTPしか扱えない。コンテナじゃなくていい、そう、ネットワークソケットAPIがあるシステムが必要なんだよ。" userName="conradev" createdAt="2025/06/20 16:22:30" color="">}}




{{<matomeQuote body="シンプルに、物事が複雑すぎることだってあるっしょ。複雑だからって、別にそんなに複雑である必要はないんだよ。" userName="adrianmsmith" createdAt="2025/06/19 20:07:00" color="">}}




{{<matomeQuote body="誰も否定してないけど、GP(多分前の人)はK8sならdevはネットワーク知らなくていいって言ってたよね。昔からdevはそんなに知らなくてよかったんだよ。今はOpsの人でさえ知らなくていい部分があるかもね。でも、K8s内のSDNの複雑さは、昔自分でやってた構成(star topology + L4 routing + L7 proxies)より高いと思うけどな。" userName="darkwater" createdAt="2025/06/20 13:40:09" color="#785bff">}}




{{<matomeQuote body="＞これは全然本当じゃないね。Talosを使えばマジで10分くらいでNノードクラスタを立ち上げられるよ。9分はダウンロードとか設定待ちで、設定自体は1分。それくらい簡単なんだよ。俺も同意、OPの意見は現実と違うよ。COTSハードウェアや安いVMでも数分でKubernetesクラスタは作れる。CanonicalのmicroK8sとか見てよ。snap installでKubernetesノードを立ち上げて、コマンドでクラスタに登録するだけ。<br>これが今の時代にロケット科学？<br>大手クラウドプロバイダならもっと簡単だよ。" userName="motorest" createdAt="2025/06/20 04:52:13" color="#ff33a1">}}




{{<matomeQuote body="お前の全体的な主張には反対しないよ。ただ、俺はこういうプロジェクトにめちゃくちゃ詳しいんだ（5年前に職場で似たのを実装したし）。だから「どうやってこういうアーキテクチャに至るのか」についていくつか答えられるよ。<br>＞なんでハンドラーを動かすのにコンテナが必要だと思う？<br>必要ないけど、多くの人は気にせずこれをお願いしてくる。これは「バズワード駆動」って言う別の言い方だろうね。みんな「バズワード」を求めるから。<br>例えば、「コンテナネイティブなプラットフォームを探してます」「まだコンテナは使ってないですけどね」「今から始めて、ゆっくりコンテナ化していきたいんです」<br>とか、「コンテナを使う選択肢は欲しいけど、今コンテナにビジネス価値はないです。だから今はチームにはコードに集中させて、コンテナは後でやりたいです」<br>これらは実際に本当のCTOたちの本当の意見だよ。数百万ドルの潜在的な契約があるのに、「うーん、そうだね… Dockerfileテンプレートでも書こうかな？」って言えばいいだけなんだ。<br>＞関数を動かすためだけに、コンテナをオーケストレーションする本格的なクラスタが必要だと思う？<br>スケールのためだよ。複数マシンの問題を解決する必要があるんだ。システムは単一ノードじゃダメ。じゃあどう解決する？<br>腰を据えてKafkaやPostgresがクラスタでどうやってるか学ぶか、Kubernetesに大変な作業のほとんどを任せて、ハンドラーをそこにデプロイするか。<br>＞それは理にかなってる？<br>うーん… どうだろうね。俺が2つ作ったこういうシステムは、設計上めちゃくちゃ無駄でくだらない。でも需要が尽きることは絶対ない設計なんだ。<br>すごくおかしなパターンでもある。コスト、無駄、効率、パフォーマンス、コード構成とか、落とし穴がたくさんある。これ作った奴を見ると、機能がめちゃくちゃ限定的か、Dockerfileってものを「もっとシンプルに」再実装しただけか、だよ。そう、彼らにとっては「シンプル」なんだ、だって彼らがその詳細を知ってるから。" userName="eddythompson80" createdAt="2025/06/20 06:39:16" color="#45d325">}}




{{<matomeQuote body="お前がいる状況に必要なものだけを書けばいいんだ。<br>この業界の進歩は、汎用的なプラットフォームを作りたいっていうこの馬鹿げた必要性で終わりを迎えるだろうね。<br>お前がいる状況に必要なものだけを書けばいいんだ。<br>KubernetesやHelmを使うんじゃなくて、お前の問題を解決するためだけに特別に書かれたお前の小さいものを使えよ。まだ持ってないかもしれない将来の問題のためじゃなく、他人の問題のためでもなく、今お前が持ってる問題のためにね。<br>お前が思ってるよりずっと少ないコードで済むし、何度かやれば、他のソリューションは全部巨大なRube Goldberg machinesに見えるようになるよ（だって本当にそうだから）。<br>Kubernetesで動かしたり、あの怪物を維持したりするより、お前の小さいものを自分で書いて維持する方が100分の1の複雑さだ。<br>モノリスをまた書けって言ってるんじゃない。お前が本当に必要でやるべきKubernetesのほんの小さな部分だけを書いて、そこにデプロイするって話だよ。" userName="naikrovek" createdAt="2025/06/19 23:40:38" color="#ff5733">}}




{{<matomeQuote body="＞Kubernetesが初期の頃、クラスタを動かすのに必要なPKIとetcdの設定はかなり難しかった。それにマネージドサービスも存在しなかった。<br>同意だけど、etcdみたいなものは、信頼性の低いノードのアドホックなクラスタを組み合わせる場合にだけ重要なコンポーネントなんだって事実を強調するのは大事だよ。<br>よく考えてみて。<br>Kubernetesは高信頼性のために設計された分散システムで、自己修復のためにコンセンサスアルゴリズムに依存してる。それは安価で信頼性の低いCOTSハードウェアのクラスタを動かすならもっともらしいシナリオだ。<br>それがほとんどの人が使ってるもの？<br>絶対に違うね。" userName="motorest" createdAt="2025/06/20 07:36:41" color="#ff5733">}}




{{<matomeQuote body="＞CanonicalのmicroK8sディストリビューションを見てよ。snap installでKubernetesノードを立ち上げて、コマンドでクラスタに登録するだけ。<br>これが今の時代にロケット科学？<br>それはUbuntuカーネルと全てのソフトウェアをコンパイルした後だけの話だよ。<br>カンファレンスで配られるフロッピーディスクの不良セクタについては言うまでもないけどね！" userName="andreasmetsala" createdAt="2025/06/20 11:09:44" color="">}}




{{<matomeQuote body="それで、自分のOSを持ち込めるクラウドやVPSプロバイダはいくつある？<br>vdaを複数ディスクに分割できるのは？<br>教えてあげるよ、ゼロだよ。プレミアムを払う気がない限りね、そしてそれは法外な値段だって意味だよ。" userName="darqis" createdAt="2025/06/20 10:32:37" color="">}}




{{<matomeQuote body="＞Workersは提供されたHTTPインターフェースを使ってHTTPしか扱えない。<br>嘘だよ。Cloudflare WorkersはCronトリガーやservice bindingsの形でのRPCコールをサポートしてる。あと、Cloudflare Queuesはconsumer workersをサポートしてるんだ。<br>「WorkersはHTTPしか扱えない」って主張も無意味だよ、だってHTTPはイベントを扱うためにも使われるからね。例えば、Cloudflare QueuesはHTTPショートポーリングを使ってconsumerをサポートしてる。" userName="motorest" createdAt="2025/06/21 06:56:42" color="#45d325">}}




{{<matomeQuote body="俺が見たいのは、容量追加がプラグ＆プレイなものだよ。マシンをネットワークに繋いで、起動したら自動的にファームのUIに表示されてノードになるんだ。<br>PCにUSBメモリを挿すと数GBストレージが増えるみたいにね。" userName="arkh" createdAt="2025/06/20 07:41:29" color="">}}




{{<matomeQuote body="ちなみに、Lambdaはお前の主張と逆だよ。関数エントリーポイントがあって、HTTPとかgRPCとかStdinは実装の詳細なんだ。それは実際に見れるよ、golangのLambdaの「bootstrap」shim<br>https://pkg.go.dev/github.com/aws/aws-lambda-go@v1.49.0/lamb...<br>経由でね。これはRuntime Interface Emulator<br>https://github.com/aws/aws-lambda-runtime-interface-emulator...<br>に呼び出されるんだ。AzureやGCPの関数エミュレーションフレームワークへのリンクは持ってないけど、俺の記憶だと似たような動きをするよ、似たような理由でね。" userName="mdaniel" createdAt="2025/06/20 19:19:48" color="#38d3d3">}}




{{<matomeQuote body="全てのハードウェアは信頼できないし、障害の確率が十分に高くなって自己修復が必要になるかどうかは、単なるスケールの問題なんだ。" userName="DasIch" createdAt="2025/06/20 08:36:58" color="">}}




{{<matomeQuote body="Kubernetesってさ、インフラの専門チームとかクラウド屋が使うと最高なんだよね。でも、間違ってk8s使っちゃった小さい会社だと、開発チームが製品作りながらメンテもしなきゃいけなくてさ。複雑だから詳しい人いないと無理なんだよ。だから、最初の頃は簡単なk8sみたいなのが出てきたんだよね。" userName="ethbr1" createdAt="2025/06/20 12:35:48" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「メンテいらず」？いやいや、全然違うって！EKSとか使えばクラスタの健康診断は任せられるけど、Kubernetesって実質メンテの塊だよ。YAML投げるだけで動くのはマジすごいけど、その裏返しでメンテがハンパないの。設定、ArgoCD、オペレーター探し、values.yaml調整、アプデ、スケーリング時のノード入れ替えとか…全部大変なんだよ！<br>まじでメンテだらけ！" userName="fideloper" createdAt="2025/06/19 21:40:35" color="#ff33a1">}}




{{<matomeQuote body="「メンテが少ない」ってのは、他のやり方と比べたらって話でしょ。俺の経験だと、K8s使うと、スケーリングとかフェイルオーバー、デプロイ、元に戻したり、障害対策、DevOps、新しいクラスタ作るのとか、同じレベルのことやるのにメンテの手間が全然かからなかったよ。まあ、人それぞれだろうけどね。" userName="aljgz" createdAt="2025/06/19 22:06:18" color="">}}




{{<matomeQuote body="Kubernetesへの文句って、結局「複雑すぎ！」ってのが多いじゃん？でもさ、分散システム組むこと自体が複雑なんだよ、プラットフォーム関係なくね？Kubeが「複雑」に見えるのは、ソフトをデプロイするのに必要なアレコレ全部を、標準的なやり方でできちゃうからなんだって。Kubeなしで同じことやろうとしたら、自分で全部作る羽目になるし。もしそんなに色んな機能いらないなら、Kubeは別にいらないってこと。" userName="SOLAR_FIELDS" createdAt="2025/06/19 23:20:21" color="#ff5733">}}




{{<matomeQuote body="君たちが話してるのって、Kubernetesのメンテじゃなくて、CI/CDとかシークレット管理、DB操作の自動化とかのメンテでしょ。昔だったらYAMLじゃなくて、cronjobとかansible、systemd、bashスクリプトとかをメンテしなきゃいけなかったんだよ。" userName="zzyzxd" createdAt="2025/06/19 23:21:00" color="">}}




{{<matomeQuote body="俺、Hetznerでk3sを2年以上動かしてるけど、全然止まらないし（100％uptime）、マジでメンテいらずだったよ。あんまりメンテしなさすぎて、マスターノードのSSHキーなくしてさ、クラスタ全部作り直す羽目になったんだけど、それでも90分で終わった（ドキュメント直す時間込み）。急げば15分でいけるね。ARM環境でk3s、ノード3台とマスター1台、ストレージ、ロードバランサー、CloudflareでDNS自動化で、月たった20ユーロだよ。" userName="ljm" createdAt="2025/06/19 21:56:21" color="#45d325">}}




{{<matomeQuote body="あれって、要は自分で「クラウド」をイチから作ってるみたいなもんだよね。それがkuberetesの狙いなんだろうけど。そりゃメンテ大変だよ。自分のコードだけじゃなくて、CI/CDとかシークレット管理、ログ、ストレージ、DBとか、全部自分で動かしてるんだもん。全部自分持ちってわけ。でもさ、kuberetesで作ったやつって、クラウド変える時がめちゃくちゃ楽だったんだよね。今もAWSとAzureにノードがあるk3sクラスタ動かしてるし。" userName="eddythompson80" createdAt="2025/06/20 07:43:06" color="#ff33a1">}}




{{<matomeQuote body="このコメントの最初の部分、ちょっとわかんないな。Kubernetesって、本番で分散システム動かすのに必要な全部をまかなう、完璧なエンドツーエンドソリューションとしては設計されてないと思うんだけど。色んなことは管理してくれるけど、さっき言ってた全部をまとめて指揮するわけじゃないでしょ。" userName="otterley" createdAt="2025/06/20 15:57:54" color="">}}




{{<matomeQuote body="みんながKubernetesって複雑だよねって（それはそれで正しいんだけど）言うのは、そもそも分散システムなんて大半の人は必要としてないからだと思うんだよね。k8sが流行ってるからって手出しちゃうけど、正直多くの人はVM立ててChefとかで設定して、昔みたいにソフト動かした方が絶対楽だよ。" userName="bigstrat2003" createdAt="2025/06/19 23:52:15" color="#38d3d3">}}




{{<matomeQuote body="K8sは全部をまかなうもんじゃないって？いやいや、2017年からのKubernetesはエンドツーエンドでいけるように作られてるし、実際可能だよ。CNCFの https://landscape.cncf.io/guide#app-definition-and-developme... とか見てみ？CI/CDとかログとかストレージとか、何でもあるじゃん。クラウドのリソースをk8sのCRDで包んで、LoadBalancerとかみたいに抽象化するんだ。SaaSみたいなのも自分でCubeFSとか立てれば持てるし。K8sがあれば、AWSとかじゃなくてKubernetesがターゲットになるんだ。どこまで自分でやるか（ロックインしないか）決められるのが良いとこ。Kafkaは辛いからSQS？ロックイン嫌ならKafka？自分でリスク選べるってことだね。" userName="eddythompson80" createdAt="2025/06/20 19:17:03" color="#ff5733">}}




{{<matomeQuote body="K8Sを制御プレーンにするとGitHubとかCircleCIみたいなのを自分でメンテするハメになるんだよ。K8Sの核じゃない重い作業だし、問題はデータプレーンにあるってこと。CRDで制御プレーンをK8Sに寄せられるのはいいけど、細かいとこはデータプレーン次第だよね。" userName="otterley" createdAt="2025/06/20 19:52:11" color="">}}




{{<matomeQuote body="K8Sメンテのヤバさを話すのは、マジで顧客がいて大規模にやってる人たちなんだよ。月20€のインフラとかの話は全然役に立たない。俺たちは何千サービス、10万台規模で動かしてて、コンプライアンスとか契約もあるから、メンテの辛さは超重要なんだ。あんたのコメントはうちの現場じゃノイズでしかないね。" userName="busterarm" createdAt="2025/06/19 23:41:59" color="#ff5733">}}




{{<matomeQuote body="同じ制御プレーンだとデータプレーンも上手くいきやすいよ。K8SがS3バケットとか用意してくれるなら、どこのサービスか気にしなくてOK。K8Sの核はコンテナオーケストレーションと拡張性・抽象化だ。CRDは超核だよ。GitHubとかのメンテは大変だけど、K8Sを使えばどこまで自分でやるか選べるんだ。ベンダーロックインが嫌なら、K8Sで自分で管理すればいいじゃん。" userName="eddythompson80" createdAt="2025/06/20 20:52:23" color="">}}




{{<matomeQuote body="分散システム選ぶ時って、K8Sか自分で作るかじゃなくて、K8Sか、お金払ったら面倒見てくれるクラウドベンダーかって話だよね。" userName="nostrebored" createdAt="2025/06/19 23:33:25" color="#785bff">}}




{{<matomeQuote body="ほとんどの人は分散システムが要るんだよ。障害に強くて、スケールするシステムが欲しいんだ。昔は高かったけど、今は月50ドルも出せれば十分安い。ほぼどんなWebサイトでも分散システム避ける理由なくなったね。" userName="vbezhenar" createdAt="2025/06/20 13:58:00" color="">}}




{{<matomeQuote body="自分でK8S制御プレーンを動かすのってEKSとかGKEと大差ないよ。マジで複雑なのは、制御プレーンじゃなくて、その上に自分で作るインフラとかデプロイ、その設定なんだ。EKS使おうが自分でやろうが、オートスケーリングとか負荷分散、監視、ネットとかは自分で解決しないといけないからね。" userName="SOLAR_FIELDS" createdAt="2025/06/19 23:59:07" color="#45d325">}}




{{<matomeQuote body="K8Sメンテが辛いって言う人は、マネージドKubernetes使ってるんだろ。それがメンテの複雑さのほとんどをカバーしてくれてるからね。" userName="15155" createdAt="2025/06/20 05:10:04" color="">}}




{{<matomeQuote body="『同じ制御プレーンだとデータプレーンもうまくいく』は絶対ウソ。だからサービスごとに制御プレーンが違うんだよ。K8S制御プレーンは万能じゃない。ベンダーロックインがないなんてことないし（自前でも）。K8Sで減らせるけど、AWSのEKSで作った複雑なシステムをGKEとかに持っていくのは超大変だよ。" userName="otterley" createdAt="2025/06/21 01:31:32" color="#38d3d3">}}




{{<matomeQuote body="それ自業自得じゃね？余計なもん入れすぎるんだよ。追加するものは全部テクニカルデットで、タダでもコストかかるんだ。オートスケーリングがメンテよりコスト削減にならんなら、切れよ。" userName="turtlebits" createdAt="2025/06/19 22:14:31" color="">}}




{{<matomeQuote body="Helmチャートとかノードのインストーラーがあれば、インストールはマジ速い。うちはDBとか以外はクラスターのバックアップしないんだ。全部作り直せばいいからね。" userName="Bombthecat" createdAt="2025/06/19 22:02:36" color="">}}




{{<matomeQuote body="確かに、Kubernetesの比較って全然適切じゃないことが多いよね。固定リソースの固定アプリと比較しても意味ないじゃん？今のデプロイはそうじゃないし。<br>K8sが必要なデプロイが複雑すぎって意見もわかるけど、前の会社では超慎重だったのにK8sに移行したし、今の会社でもシステムは思ったよりシンプルになるけど、大規模になるとK8sみたいなのがないと調整が大変すぎるんだよ。" userName="danpalmer" createdAt="2025/06/19 23:25:57" color="#785bff">}}




{{<matomeQuote body="うん、そうだよ。でも90％じゃなくて75％くらいかな？<br>”月20ドルのスタックだからメンテ不要”みたいな単純な意見には全く同意できないね。" userName="busterarm" createdAt="2025/06/20 05:50:09" color="">}}




{{<matomeQuote body="それ、信じられないくらい自己中心的なコメントだよ。<br>みんなKubernetesを使う理由はたくさんあるのに、全部があなたのニーズと一致するわけじゃないんだから。" userName="abrookewood" createdAt="2025/06/20 02:45:46" color="">}}




{{<matomeQuote body="そうそう、Helmチャートとかノードインストーラーを手に入れたら終わりってわけじゃない。<br>でもほとんどのアプリでそこまでしなくてもいいと思うな。簡単なKustomizeスクリプトで大体の基本的なことはできるし。<br>シンプルにしたいと思えば、物事はシンプルになる時もあるんだよ。" userName="motorest" createdAt="2025/06/20 05:21:29" color="#ff33a1">}}




{{<matomeQuote body="バージョンアップグレードってどれくらいの頻度でやるの？<br>ノードとかコントロールプレーンのOSのパッチ当てとかは？<br>アプリの稼働時間や可用性が重要になると、すぐに複雑になるよね。" userName="verst" createdAt="2025/06/19 22:20:40" color="#38d3d3">}}




{{<matomeQuote body="そう、でも僕はEKSのことなんて言ってないよ。<br>k8sを採用してる会社の99％は、そもそも採用すべきじゃないし、このテクノロジーに対するビジネスケースがないんだ。" userName="nostrebored" createdAt="2025/06/22 02:11:00" color="">}}




{{<matomeQuote body="Kubernetesって、エンジニアリングの要件より、履歴書とか昇進資料を埋めるために選ばれることがよくあるんだよ。<br>本当にKubernetesが必要なくらい規模が大きくて複雑な組織は、それだけ専任の担当者を置けるくらい大きいんだ。" userName="bigfatkitten" createdAt="2025/06/20 02:06:06" color="#ff5733">}}




{{<matomeQuote body="すごく的確な意見だね。<br>それに加えて、E2Eソリューションならデプロイ前に学ぶ必要があるけど（それでも完璧にはできないけど）、そうじゃないと実際に問題が起きてから学ぶことになるんだ。<br>中途半端な分散システムを持ってる人に聞いても、自分のシステムの全ての失敗モードを知ってるわけじゃない。<br>ミッションクリティカルなシステムで見てきたよ。<br>でも、ちゃんとした信頼できるインフラがあった会社では、K8sベースの新しいインフラに移行したシステムは、メンテナンスが大幅に減って、DevOpsがずっと標準化されて（他のチームの人も必要な時に手伝えるようになった）、ミスもずっと少なくなったんだ。<br>K8sが全てを合理化したことに誰も異論はなかったよ。" userName="aljgz" createdAt="2025/06/20 16:57:10" color="#785bff">}}




{{<matomeQuote body="NixOSが簡単に設定、運用、オンボードできるようになって、成功してほしいって本気で願ってるんだ。<br>もう人生で他の設定管理ツールは使いたくないな。<br>そうすれば、シンプルなVMとか分散ユースケース向けのk8sとか、どっちもコードで宣言できるんだ。" userName="clvx" createdAt="2025/06/23 13:13:18" color="#785bff">}}




{{<matomeQuote body="みんな、K8sが何でもオーケストレーションできるなんて知らなかった頃から、可搬性のために「K8sのベストプラクティス」を議論するようになったんだ。進歩の余地はあるよ。<br>現実として、乗り換えコストがゼロなんてことはない。K8sをうまく使えば、一番手間のかからない移行方法に関するベストプラクティスはたくさんあるんだ。それは十分可能だし、いつもみんながやってるのを見かけるよ。" userName="eddythompson80" createdAt="2025/06/21 03:22:58" color="#45d325">}}




{{<matomeQuote body="K8sって、たくさんのアプリ開発者が共通で使えるプラットフォームを提供したいって思ったときに、やっと意味が分かってくるんだ。<br>GoogleのBorgから生まれて、彼らがこれでどんな問題を解決しようとしてたか理解できれば、その複雑さも納得できると思うよ。" userName="zomiaen" createdAt="2025/06/20 03:44:07" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="まず、K8Sは誰もYAMLを使うよう強制してないよ。慣習的かもしれないけど、必須じゃない。`kubectl apply`は最初からJSONもサポートしてるし、APIエンドポイントはJSONとgrpcだよ。好きな言語でJSONでもYAMLでも作れるし、Jsonnetとかすごく良いよね。<br>次に、なんでHelmチャートで依存関係とか順序が問題になってるのか不思議。LinuxやWindowsみたいにサービスの起動を待つ世界じゃないのに。Kubernetesの基本原則の一つはループだよ。依存先が使えないなら、アプリはそれをリカバリ可能なエラーとして扱って、利用可能になるまでリトライし続けるべきなんだ。もしくはクラッシュすれば、ReplicaSetコントローラーがアプリを再起動してくれるしね。<br>チャートに依存関係がなければ、依存の競合なんて起きないし（「考えてみて」ミームをどうぞ）、各チャートを個別にインストールすればいい。Helmは必要なら同じチャートを複数バージョンインストールすることもできるけど、それを一つのnamespaceでやると大変なことになるよ。<br>もしあるアプリが本当に別のアプリに依存するなら、依存先を同じHelmチャートに含めるのも選択肢の一つだよ！Helmチャートは最初から複数のアプリやサービスリソースを持てるようになってるんだから。" userName="otterley" createdAt="2025/06/19 20:23:18" color="#45d325">}}




{{<matomeQuote body="＞Kubernetesの基本原則の一つはループだよ<br>そうだね、Kubernetesで作業する上で、一番重要なアーキテクチャ機能は「調停ループ」だって言えるね。現在の状態を観察して、望ましい状態との差分を確認し、その差分を適用する。これを何度も何度も繰り返すんだ。失敗とか成功の状態があるわけじゃなくて、ただ観測できる状態と、そうあってほしい状態があるだけ。その間の違いは繰り返し処理されることで解消されていくんだ。<br>機械制御の主流で「十分良い技術」とされているPIDフィードバックループが、Kubernetesのこの核となる部分とかなり似てるってのは面白いと思うよ。" userName="delusional" createdAt="2025/06/19 20:37:51" color="#ff33a1">}}




{{<matomeQuote body="PIDフィードバックループ、OODAループ、そしてブラックボードシステム（AI設計モデル）は、どれもK8sが体現している有効な例えだよ。最初の2つはK8s 1.0の頃のプレゼンとかトークでよく使われてたぐらい、よく知られてるんだ。" userName="p_l" createdAt="2025/06/19 23:30:44" color="#785bff">}}




{{<matomeQuote body="君が説明してるのはController[0]のことだね。彼らが挙げてる部屋のサーモスタットの例はすごく分かりやすいよ。<br>でもその原則はControllerじゃないものにも当てはまる。例えば、データベースみたいなリソースがReadyになるまで待ってから、自分自身がReadyになるワークロードがよくあるパターンだね。WebサーバーPodの中だと、DBが利用可能になるのを待って、必要なマイグレーションが適用されたかチェックして、最後にリクエストを処理し始める、みたいな流れ。<br>つまり、基本的には「DB待ちループ」から「マイグレーション待ちループ」、そして「Webリクエスト待ちループ」へと進んでいく感じなんだ。最後のループが終わるとクラスターはそのPodを「Ready」と見なして、Deploymentのロールアウトとかが進むんだよ。<br>[0] https://kubernetes.io/docs/concepts/architecture/controller/" userName="globular-toast" createdAt="2025/06/20 08:28:42" color="#38d3d3">}}




{{<matomeQuote body="僕も何年か前にこういうシステム（君が調停ループって呼んでるやつ）を開発したことあるけど、失敗状態は間違いなく存在するよ（いろんな理由で）。でも「ループ」の一部として、望ましい状態に戻すためにそれを修正するロジックを持たせることはできるんだ。<br>僕たちは失敗と「起きたこと」を関連付けるために、統合されたモニタリング／ログ分析を使ってたね。" userName="tguvot" createdAt="2025/06/19 22:39:19" color="#785bff">}}




{{<matomeQuote body="依存関係の失敗がリカバリ可能であるべきっていう意見に大賛成だよ！<br>使われてなくてシャットダウンされつつあった依存サービスがfail-closedだったせいで起きた障害に巻き込まれたことがあるんだ。<br>サーバー間の依存関係はほとんどの場合、ソフトだよ。もしダウンストリームの依存サービスと通信できなくても、ただ500を返せばいいんだ。健全じゃないサーバーはロードバランサーに避けてもらえばいい。" userName="cbarrick" createdAt="2025/06/19 23:20:07" color="#785bff">}}




{{<matomeQuote body="＞クラッシュすれば、ReplicaSetコントローラーがアプリを再起動してくれるしね<br>これ、十分じゃないんだよね。今、Keycloakが起動に1分かかるんだけど、それに依存しててKeycloakがないと起動時にクラッシュするサービスが、起動に5～10分かかるんだ。ReplicaSetコントローラーがスロットリングし始めて、Keycloakが起動した後も何分も無駄に待たされるんだよ。最終的には動くけど、1分で済むのに10分も待ちたくないよ。<br>この問題の正しい解決策は、Init Containerを作って、依存サービスが起動するまで待ってからメインコンテナに処理を渡すことだと思う。でも、Kubernetesが起動時の依存関係を明示的に宣言できるようにしてほしいな。その依存が上がってないと僕のサービスは確実にクラッシュするんだから、何度か起動を試してスロットリングされるだけなのに、そもそも起動しようとする意味が分からないよ。<br>依存関係は依存関係なんだ。見て見ぬふりはできないよ。" userName="vbezhenar" createdAt="2025/06/20 14:08:33" color="#785bff">}}




{{<matomeQuote body="それは、初期デプロイの速度じゃなくて、全体のレジリエンス（回復力）を最適化してるんだと思うな。遅延を増やしながら依存サービスの呼び出しをリトライするのは、本番サービスではベストプラクティスだよ。最初のロールアウトでこの挙動を見るのは不便だけど、これも自己修復なんだ。<br>君が思ってるより時間はかかるかもしれないけど、そんなに我慢できないなら、君が説明したような回避策（Init Containerなど）もあるよ。" userName="otterley" createdAt="2025/06/20 14:45:31" color="#ff33a1">}}




{{<matomeQuote body="「～することになっている」って言うけど、それは自社で全部作る時に良いやり方だよ。でもさ、Kubernetesより前に作られて、Dockerで動くようになって、それを簡単にKubernetesでも動くようにしたソフトってどんだけあると思ってんの？<br>「これが一番良いやり方だ！」っていうOpinionatedなプラットフォームを作っても、結局みんな好き勝手やって失敗するだけ。それより、色んなやり方を選べる機能を追加して、ユーザーに決めさせてあげた方が良いんじゃない？" userName="Arrowmaster" createdAt="2025/06/19 20:36:49" color="#ff5733">}}




{{<matomeQuote body="それに対する反論としては、色々できすぎる（footguns）とか、注意を引くような厄介な機能（attractive nuisances）は、システムが安定（resilience）するのとは真逆だってことだよ。みんな別にいらなかった機能まで間違って使っちゃうし、新しい機能が増えるたびにバグや曖昧な挙動の原因になるんだから。" userName="otterley" createdAt="2025/06/20 00:38:22" color="">}}




{{<matomeQuote body="YAMLはJSONの上位互換（superset）なんだから。もちろん、YAMLをサポートしてるならJSONもサポートしてるに決まってるじゃん。" userName="LudwigNagasena" createdAt="2025/06/20 02:01:10" color="">}}




{{<matomeQuote body="でも出力側は違うってのも事実だよ。kubectlだってYAMLでって指定しないとYAMLでは出力しないしね。APIがサポートしてるのはJSONとprotobufだけで、YAMLじゃないんだ。" userName="bboreham" createdAt="2025/06/20 05:06:38" color="">}}




{{<matomeQuote body="＞Kubernetesの主要な考え方の一つはループ処理：依存関係が利用できなくても、アプリはそれを回復可能なエラーとして扱い、利用可能になるまで再試行することになっています。<br>これバカみたいに聞こえるかもしれないけど、ログの最初のエラー見ただけでみんなパニックになるんだよ。あるいは部署のトップがデモ見て「最高だね！でもデモする前にそのエラー消しといて」とか言うんだ。そしたらどうする？<br>「デプロイは成功したのに動かない。動かないならなんで受け付けたんだ」ってサポートチケットも来まくるし。<br>同僚みたいに「エラーログを保存しといて、2回目（いや3回？4回？いややっぱ5回だ！）のエラーで、3秒間隔で表示する。ただし最後だけは10秒まで待って、その後にネットワークエラーだったらさらに2分スリープ、最後に`logger.Info(”test1”)`を入れる」みたいな訳わかんないロジック追加するか、<br>もう「クソ食らえ」って依存関係の順序を強制するか、だよ。バカだって分かってるんだけどね…" userName="eddythompson80" createdAt="2025/06/20 07:54:45" color="#38d3d3">}}




{{<matomeQuote body="それは同僚を教育するチャンスだし、デプロイの仕組みにもっと高度な機能を取り入れる機会だと思うな。Kubernetesがあるコンポーネントのデプロイを「成功した」って言うのと、CI/CDパイプラインがアプリ全体のデプロイを「成功した」って確認するのは違うことだよ。K8sのが前で、後者はその後、時にはかなり後になることが多いからね。上司がエラーを見てるってことは、デプロイがまだ終わってないのに、誰かか何かが終わったって falsely に伝えてるからだよ。" userName="otterley" createdAt="2025/06/20 14:59:13" color="#785bff">}}




{{<matomeQuote body="何だって？Kubernetesに対する一番よく繰り返される批判の一つだよ。この記事の中でさえ、このスレッド全体がその話なのに、YAMLは何回も言及されてんじゃん。" userName="mardifoufs" createdAt="2025/06/20 17:47:47" color="">}}




{{<matomeQuote body="CRDの定義がインストールされる前に使ってみなよ。ハードエラーだよ。グレースフルなリトライなんてない。たまには依存順序が強制されることもあるんだ。" userName="wutwutwat" createdAt="2025/06/24 08:50:33" color="#785bff">}}




{{<matomeQuote body="YAMLからHCLへの置き換えには超反対だな。HCLって開発者には分かりにくいし、読みにくいんだよ。importできるの？エラーのデバッグも大変。protobufみたいな他の言語で好きなように書けばいいじゃん。" userName="pm90" createdAt="2025/06/19 15:19:46" color="">}}




{{<matomeQuote body="HCLが分かりにくいって？インフラ側でHCLとかTerraformを使ってる身としては、あれはコード書けない人向けの超簡単な設定言語だと思ってたよ。JavaScriptを毎日書いてる人がHCLで迷うなんて信じられないな。Terraformでのややこしさはあるけど、Kubernetesなら問題ないでしょ。" userName="dangus" createdAt="2025/06/19 18:29:01" color="">}}




{{<matomeQuote body="「HCLが分かりにくい、読みにくい」っていうのは、「新しいこと覚えるのが面倒だっただけ」にしか聞こえないね。HCL自体じゃなくて、複雑な設定対象と一緒に学んだからごちゃ混ぜになってるんじゃない？" userName="acdha" createdAt="2025/06/19 21:15:56" color="">}}




{{<matomeQuote body="HCLのこの書き方↓見て、分かりやすいって言える？<br>`outer { example { foo = ”bar” } example { foo = ”baz” } }`<br>なんかTOMLの変な書き方↓思い出すわ。<br>`[lol]<br>[[whut]]<br>foo = ”bar”<br>[[whut]]<br>foo = ”baz”`<br>TOMLならPythonで中身確認できるけど、HCLは無理じゃんね。" userName="mdaniel" createdAt="2025/06/19 19:36:22" color="">}}




{{<matomeQuote body="問題は開発者にHCLなんて学ばせたくないってことだよ。SREがnextやreactを覚えないのと同じ。一番いいのは簡単な抽象化があって、HCLみたいないけてない新しい概念を覚えなくて済むこと。HCLを学ぶのは始まりにすぎなくて、依存関係とかの管理がマジで大変なんだ。開発者がSREのTerraformについていくのは時間の無駄。それより開発に時間を使うべきでしょ。" userName="aduwah" createdAt="2025/06/19 21:40:30" color="#ff33a1">}}




{{<matomeQuote body="これは完全にユーザーに優しくないね。例↓みたいに書いても、`for_each`はmapか文字列のsetじゃないとダメで、tupleはダメってエラーが出るんだよ。<br>`variable ”my_list” { default = [”a”, ”b”] }`<br>`resource whatever something { for_each = var.my_list }`" userName="mdaniel" createdAt="2025/06/19 21:21:31" color="#ff33a1">}}




{{<matomeQuote body="YAMLじゃなくてHCLに価値はあると思うな。最近、TerraformでAWSのサブアカウントとかEKS、Karpenterとかプラットフォーム全部立ち上げたんだけど、KubernetesのリソースもTerraformで書いたんだ。HCLで書くいいところは、型とスキーマがあること。LSP対応のIDE（GNU Emacsとterraform-ls使ってる）なら、補完も効くし、書いた時点で間違いに気づける。Kubernetes APIリファレンスとIDEを行ったり来たりしてフィールド確認する手間が省けてマジで楽だったよ。" userName="znpy" createdAt="2025/06/19 18:39:13" color="#ff33a1">}}




{{<matomeQuote body="なんで？HCLくらい学べないようなら、成功する開発者にはなれないんじゃないの。もしインフラを学ぶべきじゃないって言うなら、それはどんな言語でも同じ話でしょ（YAMLのインデント知ってるからって何書けばいいか分かるわけじゃないし）。その意見は絶対正しいわけじゃないけど、まぁ理由は分からなくもないかな。" userName="acdha" createdAt="2025/06/19 22:02:03" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
