+++
date = '2025-08-15T00:00:00'
months = '2025/08'
draft = false
title = 'EdkaならHetznerにKubernetesを爆速デプロイ！自分専用クラスタを超簡単に構築しコスト削減も！'
tags = ["Kubernetes", "Hetzner", "クラウド", "DevOps", "インフラ構築"]
featureimage = 'thumbnails/blue.jpg'
+++

> EdkaならHetznerにKubernetesを爆速デプロイ！自分専用クラスタを超簡単に構築しコスト削減も！

引用元：[https://news.ycombinator.com/item?id=44915164](https://news.ycombinator.com/item?id=44915164)




{{<matomeQuote body="Kubernetes歴10年の僕がHetzner Cloudでのコスト削減を手伝ってきたんだ。k3sやhetzner-k3sでプロビジョニングは楽になったけど、設定はまだ大変。そこでEdkaを作ったよ。2分で本番環境クラスタを立ち上げ、自動化も可能。<br>Edkaはクラスタプロビジョニング、アドオン、アプリ、デプロイメントをサポート。技術スタックはTypeScript、Reactなど。<br>まだベータ版で趣味だけど、HetznerでKubernetes使ってる人、EKS/GKE/AKSの代替を探してる人からフィードバックが欲しいな。詳細：https://edka.io/<br>デモ：https://edka.io/apps/, https://edka.io/deployments/" userName="camil" createdAt="2025/08/15 17:34:54" color="#ff5733">}}




{{<matomeQuote body="HNトップに載って製品フィードバックをもらえたのは幸運だったよ。でもGitHubからレート制限くらっちゃった（これはすぐ直ったけど…）。その後Hetznerで一部障害が出て、インスタンスが作れず、多くのクラスタが「作成中」で止まっちゃったんだ。みんな、興味を持ってくれてありがとう！サイドプロジェクトなのにこんなことになるとは。これからも改善して、フィードバックに全部対応できるよう頑張るね。" userName="camil" createdAt="2025/08/16 01:18:32" color="">}}




{{<matomeQuote body="それはみんなよくあることだよ :) 気にしないで、君はよくやった！プロジェクトを共有してくれてありがとう。" userName="lagniappe" createdAt="2025/08/16 01:25:24" color="">}}




{{<matomeQuote body="Hetznerについては今に始まったことじゃないよ。7月以降、10回のデプロイのうち1～2回は数時間から永久に「作成中」のままで止まっちゃうんだ。特にマルチノードクラスタをデプロイするときは本当にイライラするね。" userName="js4ever" createdAt="2025/08/16 15:14:05" color="#785bff">}}




{{<matomeQuote body="多分僕はあまりデプロイしてないか、EUリージョンの方が安定してるのかも。クラスタプロビジョニング中の問題は経験してないな。7月以降、色々小さな問題はあったけど、僕の場合は主にファイアウォール設定など、プロビジョニングされたリソースの削除に関するものだったね。WebSocketもよく失敗して、更新を見るにはハードリフレッシュが必要なことにも気づいたよ。" userName="camil" createdAt="2025/08/18 08:45:22" color="">}}




{{<matomeQuote body="Hetznerもサポートしているkops（https://github.com/kubernetes/kops）のような確立されたツールと何が違うの？" userName="MaKey" createdAt="2025/08/15 18:22:55" color="#ff5c5c">}}




{{<matomeQuote body="多分一番簡単なのはhttps://github.com/vitobotta/hetzner-k3sだね。Hetzner terraformプロジェクトは複雑だけど完全だよ。Edkaの主なアイデアは、HetznerでのKubernetesプロビジョニングだけでなく、ingress controllers、prometheus、elasticsearch、データベースなど、Kubernetesの機能を拡張する一般的なアプリやツールもシンプルにすることなんだ。" userName="camil" createdAt="2025/08/15 19:53:23" color="#45d325">}}




{{<matomeQuote body="Talosもあるよ。これもHetznerをサポートしてる（https://www.talos.dev/v1.10/talos-guides/install/cloud-platf...）し、同様に効率化されてる。アイデアは全く同じじゃないけど、すごく似てるね。" userName="abound" createdAt="2025/08/15 18:40:56" color="#45d325">}}




{{<matomeQuote body="これはhttps://github.com/vitobotta/hetzner-k3sを使うのとどう違うのか誰か知ってる？" userName="worldsayshi" createdAt="2025/08/15 20:59:40" color="#ff5733">}}




{{<matomeQuote body="k8sを立ち上げるのは簡単そうに見えるね。でもこれ、Hetznerのクラウドにデプロイされるんだね。うち（https://lithus.eu）ではちょっと不安定だったんだ。クライアントにはベアメタルの方を使ってるんだけど、そっちは安定してるよ。ただ、ある程度のクラスタサイズがないとベアメタル導入は費用や手間が見合わないから、これは注目していくよ。" userName="adamcharnock" createdAt="2025/08/15 21:28:55" color="#ff5c5c">}}




{{<matomeQuote body="Hetznerの強力なベアメタルインスタンスにk8sを自動デプロイするガイドはまだ見たことがないな。クラウドとベアメタル両方のインスタンスを含むクラスタを組むのが理想で、自分はそうしてるよ。昔はHetzner仮想スイッチでL2ネットワークを共有してたけど、今はTailscaleを使ってるんだ。TFとかのツールがAPIでノードの追加や削除をするけど、ベアメタルを扱うクラスのノードを渡せるようになれば最高だね。" userName="figassis" createdAt="2025/08/15 18:46:09" color="#ff5733">}}




{{<matomeQuote body="CAPH（https://github.com/syself/cluster-api-provider-hetzner）が君の問題を解決してくれるかも？Cluster API（https://github.com/kubernetes/autoscaler/tree/a9cb59fdd2dd88...）を使って、Cluster Autoscalerと連携させればいいんだよ。" userName="SOLAR_FIELDS" createdAt="2025/08/15 20:37:45" color="#45d325">}}




{{<matomeQuote body="この会社がどこにあるのか、詐欺じゃないのかが分からないんだ。ウェブサイトには会社情報や連絡先がないし、プライバシーポリシーにあるメールアドレスもCloudflareで隠されてる。”Edka Digital S.L.”って書いてるけど、どの国で登録されてるのかも不明だよ。住所も運営者も登録も不明で、なんか怪しい感じがするね。VATについては書かれてるけど、EU VATなのかも定かじゃないし。" userName="bflesch" createdAt="2025/08/15 20:55:05" color="#ff33a1">}}




{{<matomeQuote body="こんにちは。投稿でも言ったけど、これは個人的なサイドプロジェクトで、スペインでフリーランサーとして登録してるんだ。VAT番号ESY1848661Gで確認できるよ。フィードバックを集めるつもりで、正直こんなに注目されるとは思わなかった。プライバシーポリシーと利用規約は修正するよ。会社にするつもりだったけど、まだフリーランサーとしてやってるんだ。フィードバックありがとう！間違いは直すよ。" userName="camil" createdAt="2025/08/15 21:05:35" color="#ff5733">}}




{{<matomeQuote body="すぐに返信ありがとう！起業おめでとう。スペイン拠点なら、Hetznerみたいに「aviso legal」や「legal notice」（会社情報）が必要だよ。会社の実在を証明するためにね。スペインのS.L.は詳しくないけど、最低3000EURの資本金が必要で、全額払い込み不要なのは顧客にとってリスクかも。EU圏なら、顧客の信頼を得るためにも、これらの法的情報を明確に伝えることをおすすめするよ。<br>https://www.hola.com/aviso-legal/<br>https://www.hetzner.com/legal/legal-notice/<br>https://www.lawants.com/en/sl-spain/#:~:text=minimum%20share..." userName="bflesch" createdAt="2025/08/15 21:22:02" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！プライバシーポリシーと利用規約はすぐに更新したよ。数日中にすべての法的文書を詳しく見直すね。それまでは、ここhttps://www.einforma.com/rapp/ficha/empresas?id=dWSG1MwtU312... とここhttps://ceo.oepm.es/detalleExpediente?numExp=N0486066 で僕の法人情報を確認できるよ。" userName="camil" createdAt="2025/08/16 04:45:39" color="#38d3d3">}}




{{<matomeQuote body="個人的には、ウェブサイトに名前と顔を出してる会社の方が信頼できるな。そうすれば、その人が実在するかどうかを確認できるからね（大抵はLinkedInで確認するよ）。" userName="lclc" createdAt="2025/08/16 06:35:28" color="">}}




{{<matomeQuote body="簡単に探せると思うけど、僕のLinkedInプロフィールはここだよ：https://www.linkedin.com/in/camilblanaru/" userName="camil" createdAt="2025/08/16 13:42:14" color="#ff33a1">}}




{{<matomeQuote body="名前や顔はソフトな手がかりだけど、以前のSNS繋がりがないと確認が難しいよね。会社の登録情報は検証できるよ。" userName="bflesch" createdAt="2025/08/16 12:21:05" color="">}}




{{<matomeQuote body="Hetznerにk3sをTerraformでデプロイするプロジェクトがあるよ。ちょっと手間だけど、自分で全部管理できるしTerraformやSSHで直せるよ。HetznerでマネージドKubernetesが見れるのは最高だね！<br>https://github.com/kube-hetzner/terraform-hcloud-kube-hetzne..." userName="andix" createdAt="2025/08/15 18:26:17" color="#38d3d3">}}




{{<matomeQuote body="こっちのモジュールの方が断然いいよ！<br>https://github.com/hcloud-k8s/terraform-hcloud-kubernetes/tr...<br>俺、今これ使ってるんだ。" userName="trolla" createdAt="2025/08/15 18:35:55" color="#ff5c5c">}}




{{<matomeQuote body="そうだね、これが一番完成されてると思う。俺のプロジェクトでは、Kubernetesの準備だけじゃなく、よく使うアプリやツール、低レベルの設定にも抽象化レイヤーを提供したいんだ。" userName="camil" createdAt="2025/08/15 20:03:06" color="">}}




{{<matomeQuote body="フィードバックありがとう。プロジェクトがまだ新しかった頃に偶然見つけて、これいいなと思ったんだ。kube-hetznerはちょっと停滞してるみたいだね。次の大きなリリースに向けてたくさんのタスクがあるみたいだけど、もしかしたら出ないかもね。" userName="andix" createdAt="2025/08/15 18:43:35" color="">}}




{{<matomeQuote body="すごくいいね！Kubernetesをデプロイする良いプロジェクトは多いけど、ダッシュボードで管理できて基本的なアプリも入れてくれるのはすごくスムーズに感じるよ。自分でKubernetesを設定するのは簡単だけど、いざ問題が起きると解決が大変だよね。コアビジネスじゃないなら、Kubernetesの管理は避け、アプリのデプロイに集中すべきだね。syself (https://syself.com)みたいなマネージドKubernetesもあって、月300ユーロでAWSを超える体験ができるのは超お得だよ。" userName="2start" createdAt="2025/08/18 14:03:48" color="#38d3d3">}}




{{<matomeQuote body="Syself (https://syself.com)の推薦に賛成するよ。俺たちはPaaSプラットフォーム（Sherpa.sh）をHetznerとSyselfで動かしてるんだ。Vercelより5倍も安く、SyselfのおかげでK8sクラスターを自動でスケールできるんだ。hetzner-k3sとか色々試したけど、Syselfが一番だよ。サポートも最高！ダッシュボードがないのが唯一の欠点だけど、きっと開発中だろうね。もうSyselfなしじゃ考えられないよ。" userName="kazanz" createdAt="2025/08/18 15:16:17" color="#ff33a1">}}




{{<matomeQuote body="興味ある人向けに、Kube-Hetzner (https://github.com/kube-hetzner/terraform-hcloud-kube-hetzne... 3k github stars) を使ったコースを今作ってるんだ。バックアップやリストア、トラブルシューティングとか、全部スクリプトで見せるよ。仕組みを理解しないとダメだからね。待機リストはここだよ: https://shipacademy.dev" userName="tzahifadida" createdAt="2025/08/16 07:29:24" color="">}}




{{<matomeQuote body="HetznerでのK8sで一番困るのは、1台から中規模にベアメタルだけで移行する方法がないことだね。Gateway APIとEnvoyでIngressノードはできたけど、ストレージが問題なんだ。Ceph Rookは1台だと重すぎるし、ローカルボリュームから分散型に簡単に移行できる軽量なツールが見つからないんだよね。" userName="flowerthoughts" createdAt="2025/08/16 06:43:03" color="#785bff">}}




{{<matomeQuote body="このフォーカスは好きだな。まさか本番環境でK8sを使いたい人と、K8sの設定や管理にGUIを求める人がこんなに重なるとは思わなかったけど、俺が間違ってたのかもしれないね。" userName="barbazoo" createdAt="2025/08/15 18:05:01" color="">}}




{{<matomeQuote body="K8sクラスタで本番ワークロードを動かしたい人と、GUIでK8sクラスタをセットアップ・管理したい人の間に、そんなに大きな重なりがあるとは思わなかったな。でも、俺が間違ってるのかも。GKEとかEKSのユーザーがどれくらいいるか数えてみろよ？" userName="0x457" createdAt="2025/08/15 18:42:27" color="">}}




{{<matomeQuote body="K8sのインストールが壊れたら誰かが直してくれるってところが、魅力なんだろ？" userName="tormeh" createdAt="2025/08/15 19:38:17" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="すごく良いアイデアで気に入ったよ！5月に連絡しようかと思ったけど、ベアメタルで動かしたかったからやめたんだ。Hetznerのベアメタルでこれを使える可能性はある？うちはK8sをHetznerのベアメタルで動かしてる。動かすのは大変だけど、専用10G LAN（同じラックにベアメタルのCassandraクラスタも）のおかげでパフォーマンスが段違いなんだ。コストもAX41-NVMeサーバが1台約EUR 64で、クラウドインスタンス（CCX43相当）だとコストがほぼ倍になるよ。" userName="physix" createdAt="2025/08/15 21:17:34" color="#38d3d3">}}




{{<matomeQuote body="もしHetznerでカスタマイズされたインフラを使ったマネージドK8sに興味があるなら、https://loopback.cloud をチェックしてみるといいかもね。彼らはその分野に特化したドイツの会社だよ。" userName="derfabianpeter" createdAt="2025/08/18 18:50:50" color="#ff5733">}}




{{<matomeQuote body="今、似たようなニーズを持つデータヘビーなクライアントの設定をしてるんだ。Hetznerのカスタムソリューションチームと協力して、25Gネットワーキングと100G AZインターコネクトを備えたマルチAZセットアップをプロビジョニングしてるよ。話したければプロフィール欄のリンクを見てくれ、メールはadam@..." userName="adamcharnock" createdAt="2025/08/15 21:35:39" color="#ff33a1">}}




{{<matomeQuote body="俺はHetznerでクラウドインスタンスとベアメタルのVM（Proxmoxホスト）を使ったDocker Swarmを動かしてるよ。良い点は、Ubuntuノードを作るのにほぼ同じcloud-initスクリプトを使えること（ProxmoxもHetznerクラウドインスタンスもcloud-initをサポートしてるからね）。これらのノードをWireGuardで接続してるんだ。" userName="oriettaxx" createdAt="2025/08/16 10:18:16" color="">}}




{{<matomeQuote body="Hetznerのクラウドサーバと同じようにベアメタルサーバをプロビジョニングできるのかって聞いてる？それとも、あなたのHetznerベアメタルサーバ上のクラスタを管理できるのかってこと？後者ならRancherみたいなツールの方が良いかもしれないね。" userName="VoidWhisperer" createdAt="2025/08/15 21:37:36" color="#ff5c5c">}}




{{<matomeQuote body="どっちかっていうと、俺が”自分のサーバを持ってくる”って方の、前者の意味で考えてたんだ。それが本当に理にかなってるのかは、まだちゃんと考えてないけどね。" userName="physix" createdAt="2025/08/15 21:54:26" color="">}}




{{<matomeQuote body="Hetznerと直接連携しないと、それはちょっと難しいかもしれないね。彼らのAPIはベアメタルのプロビジョニングには対応してなくて、クラウドと’ストレージボックス’だけだったと思うから。" userName="VoidWhisperer" createdAt="2025/08/15 22:10:11" color="#ff5733">}}




{{<matomeQuote body="君が欲しいのはCluster-APIプロジェクトだよ。K8sクラスタのライフサイクル管理における”聖杯”だからね。" userName="moondev" createdAt="2025/08/16 05:27:41" color="#785bff">}}




{{<matomeQuote body="Hetznerがなんでマネージドコントロールプレーンを自分たちで提供しないのか疑問だよ。GKE/EKS/AKSにいる大量の顧客を取り込むためにも、少しの投資で大きなリターンがあるはずだよね。それに、いいIAMの仕組みがあれば、ただのサーバ置き場じゃなくて、完全なクラウドソリューションとして見られるようになるのに。インフラはあるんだから、あとはパッケージングするだけだよ。" userName="Too" createdAt="2025/08/17 07:15:41" color="#ff5c5c">}}




{{<matomeQuote body="Hetznerの社員が以前教えてくれたんだけど、彼らは何年もの間、自分たちのKubernetes-as-a-serviceソリューションを開発しようと頑張ってるんだって。今もまだ取り組んでるのかどうか気になるね。" userName="Lucasoato" createdAt="2025/08/16 01:09:35" color="">}}




{{<matomeQuote body="何年も？！マジかよ。IAMの機能がないプラットフォームだし、特別なコンソールパスワードを誰が使ってるか記録するのも大変なんだろうね。" userName="mdaniel" createdAt="2025/08/16 02:08:00" color="">}}




{{<matomeQuote body="Hetznerは自分たちのマネージドサービスも開発中だけど、いつリリースされるか誰も分からないみたいだね。Redditのスレッドを見てみて。https://www.reddit.com/r/hetzner/comments/18yhy89/seems_like..." userName="Seattle3503" createdAt="2025/08/16 01:29:05" color="#785bff">}}




{{<matomeQuote body="Hetznerのオブジェクトストレージがひどい出来だから、俺は絶対これを使わないと思うよ。" userName="k8sToGo" createdAt="2025/08/16 09:48:40" color="">}}




{{<matomeQuote body="それは知ってるよ。俺もHetznerのオブジェクトストレージは使ってないし。ほとんどGCSが好きで、たまにS3とかR2を使うね。コンピュートのほうは特に問題ないよ。2年以上100%稼働してるクラスターもいくつかあるし。" userName="camil" createdAt="2025/08/18 08:54:52" color="#ff5733">}}




{{<matomeQuote body="俺はHetznerのオブジェクトストレージで問題ないけどね。" userName="krystofbe" createdAt="2025/08/16 10:43:10" color="">}}




{{<matomeQuote body="Hetznerのsubredditは問題に関する投稿でいっぱいだよ。" userName="k8sToGo" createdAt="2025/08/16 13:45:26" color="">}}




{{<matomeQuote body="このサイトじゃ、ストレージがどう解決されるのか書かれてないな。例えばPostgreSQLを使うときに、このソリューションはローカルフォルダのプロビジョニングを使うの？" userName="betaby" createdAt="2025/08/15 20:15:13" color="#ff5c5c">}}




{{<matomeQuote body="ごめんね、こんなに反響があると思わなかったよ。まだドキュメント化されてない部分もあるけど、何でも質問に答えるよ。PostgreSQLのポッドには、https://github.com/hetznercloud/csi-driverを使って永続ボリュームをアタッチしてるよ。" userName="camil" createdAt="2025/08/15 20:22:02" color="#ff33a1">}}




{{<matomeQuote body="Hetznerの分散ストレージってどのくらい信頼できるのかな？俺はHetznerをベアメタルを提供するだけのコントロールプレーンだと見てたから、マネージドストレージはそこまで信頼できない気がするけど、経験が少ないのもあるんだよね。正直、Rookみたいなのが使われてないのがちょっと意外。でも、Hetznerのストレージを信じてうまくいくことを願うしかないって感じなのかな。" userName="__turbobrew__" createdAt="2025/08/16 01:46:31" color="">}}




{{<matomeQuote body="もしHetznerでPostgreSQLを探してるなら、Ubicloudをチェックしてみてほしいな。Hetznerを含むいろんなベアメタルプロバイダでホスティングしてるんだ。（俺がUbicloud PostgreSQLのリードエンジニアだから、質問があれば何でも答えられるよ）" userName="pwmtr" createdAt="2025/08/15 20:28:30" color="">}}




{{<matomeQuote body="ちょっと話題から外れるけど、RakuがHetzner APIをサポートしたって知ってた？これでデプロイのスクリプト言語としてRakuが使えるんだよ。詳細はこちら: https://raku.land/zef:wayland/WWW::CloudHosting::Hetzner" userName="librasteve" createdAt="2025/08/16 07:44:19" color="">}}




{{<matomeQuote body="いくつか教えてほしいことがあるんだけど。<br>1) スケーリングの制限って何？プログラムで操作できるの？つまり、特定のタイプのPodを増やすリクエストを送ったりできる？<br>2) セキュリティ強化のために何をしたの？堅牢なPod／クラスタって言ってるけど、具体的にペネトレーションテストはした？ベストプラクティスに従っただけ？定期スキャンとかストレステストは？" userName="SCHiM" createdAt="2025/08/15 18:01:47" color="#38d3d3">}}




{{<matomeQuote body="質問ありがとう！<br>1) このプラットフォームは、君のHetznerアカウントにクラスタをデプロイする手助けをするコントロールプレーンなんだ。だからリソースは君がコントロールできて、Hetznerに直接利用料を払う形だよ。<br>2) 君はKubernetesクラスタにフルアクセスできるし、君自身のHetznerアカウントで動かすから、セキュリティは共有責任だよ。君の要件に合わせて設定を細かく調整できるんだ。プラットフォームのセキュリティは俺たちの責任で、ベストプラクティスに従い、内部のペネトレーションテストも実施したよ。まだベータ版だから、こういった製品への関心があるか試している段階なんだ。" userName="camil" createdAt="2025/08/15 19:17:58" color="#ff5733">}}




{{<matomeQuote body="これはサイドプロジェクトというより、もっと大きなものに見えるね。本当に良くできてるよ。<br>最近はHetznerにもたくさんのKubernetesプロバイダがいるけど、俺が本当に気に入ってるのはSyself.comだね。自己修復、ベアメタルサポート、OIDC統合とか、プロダクションレディなKubernetesをたくさん提供してるんだ。クラウドと移行の専門家として評価したけど、彼らはめちゃくちゃ性能が良かったよ。" userName="softwaredam" createdAt="2025/08/18 15:20:43" color="">}}




{{<matomeQuote body="俺が話してるのは、このhttps://syself.com/のことだよ。" userName="softwaredam" createdAt="2025/08/18 15:21:21" color="">}}




{{<matomeQuote body="Hetznerで暗号化されたディスクを使う良い方法を見つけた人、誰かいない？" userName="everfrustrated" createdAt="2025/08/15 19:30:53" color="#ff5733">}}




{{<matomeQuote body="もしHetznerでディスク暗号化が必要なら、俺がTerraformモジュールを作ったよ。デフォルトで暗号化ディスクが有効になったKubernetesクラスタをセットアップできるんだ。ここを見てみてね: https://github.com/hcloud-k8s/terraform-hcloud-kubernetes" userName="M4t7e" createdAt="2025/08/15 20:43:15" color="#ff5733">}}




{{<matomeQuote body="インストーラーがLUKSに対応してるって。俺はdropbearを設定して、別の暗号化されたインスタンスで毎分スクリプトを走らせて、dropbearポートをチェックし、SSHでキーを渡して起動してるよ。OVHやHetznerでfastcommentsのためにやってることだね。" userName="winrid" createdAt="2025/08/15 19:40:55" color="#45d325">}}




{{<matomeQuote body="ストレージ暗号化でどんな脅威モデルを軽減したいの？物理ディスクが使用後にちゃんとワイプされないってこと？それならLUKSを使って、キーを別のマシンや外部ボリュームとか、どこか他の場所に保存すればいいんじゃない？" userName="ralala" createdAt="2025/08/15 20:51:35" color="">}}




{{<matomeQuote body="Kubernetesの視点から言うとね、OpenEBS MayastorもLocalZFSも、今はディスク暗号化に対応してるよ。" userName="adamcharnock" createdAt="2025/08/15 21:48:33" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="暗号化ディスクはarchlinuxとLUKS、tinySSHで簡単に設定できるよ。SSH経由でリモート解除も可能だ。" userName="bflesch" createdAt="2025/08/15 20:56:53" color="#ff5c5c">}}




{{<matomeQuote body="https://syself.comみたいな既存のソリューションと比べてどうなの？ベアメタルサーバーもサポートしてる？" userName="lucasrattz" createdAt="2025/08/18 15:32:04" color="">}}




{{<matomeQuote body="やあ、これ試してみるかも（Hacker Newsの「ハグ・オブ・デス」が落ち着いたらね）。SadServersでPoCのためにGKEクラスターを0.2vCPUのワークロードで動かしたら、1日CAD $50もかかってたんだ。GCPが何もしないPodでノードを1CPU使ってたり、隠れたPrometheusメトリクスとかで、コストがかさむことにはうんざりしたよ。" userName="fduran" createdAt="2025/08/16 17:30:33" color="#ff5c5c">}}




{{<matomeQuote body="これはすごいタイミングだね。10年以上AWSの顧客だけど、最近は大変でね。移行を検討してるんだ。Terraformとコンテナベースのインフラなら、Claude Codeを使えばどこにでも簡単に移行できるはずだって思ってるよ。" userName="mfrye0" createdAt="2025/08/15 20:35:59" color="#785bff">}}




{{<matomeQuote body="まさに俺たちがやってることだよ！クライアントをAWSからHetznerのベアメタルKubernetesクラスターに移行させて、彼らのDevOpsチームにもなるんだ（Amazonよりずっと安くね）。ベアメタルでKubernetesクラスターを立ち上げるのは、特にモニタリングや分散ブロックストレージ（OpenEBSを使ってる）なんかでは結構大変で、数ヶ月はかかるかな。Hetznerのクラウドサービスの方が楽だろうけど、そっちは期待より信頼性が低いと感じたよ。もっと話したいならadam@...へどうぞ！<br>https://lithus.eu" userName="adamcharnock" createdAt="2025/08/15 21:45:32" color="#ff5733">}}




{{<matomeQuote body="その目的のために、https://loopback.cloudも確認してみるといいかもね。" userName="derfabianpeter" createdAt="2025/08/18 18:52:38" color="">}}




{{<matomeQuote body="僕は小さいKubernetesクラスターにはAWSを使ってるよ。S3とECR以外の”マネージド”AWS製品のほとんどは避けてる。僕のKubernetesスタックはpacker、tofu、k3s、zfsで構成されていて、簡単で簡潔、セルフマネージドだからコストも予測しやすいんだ。" userName="topspin" createdAt="2025/08/16 02:08:42" color="#785bff">}}




{{<matomeQuote body="タイトルに”Hetzner”、本文に”AWS KMS”ってあるけど、これで混乱してるのって私だけ？" userName="deknos" createdAt="2025/08/15 19:45:28" color="">}}




{{<matomeQuote body="フィードバックありがとう！混乱させるつもりはなかったよ。AWS KMSは、プラットフォームがVaultに機密データを保存する前後に暗号化・復号化するために使われてて、開発で使う技術スタックの一部なんだ。" userName="camil" createdAt="2025/08/15 20:12:12" color="#45d325">}}




{{<matomeQuote body="Hetznerで動かしてても、AWSにシークレットを置くなら、結局AWSに依存し続けるってことだよね。Hetzner上で動くシークレット管理のソリューションを見つける方が良いと思うんだけど。" userName="deknos" createdAt="2025/08/16 07:15:26" color="#45d325">}}




{{<matomeQuote body="リリースおめでとう！WordPressがプロ向けアプリとしてあるみたいだね。WordPressホスティングにお金を払ってるユーザーとしては、WordPressインスタンスをメディアやDB含めて全て新しいホスト名で”フォーク”して、色々な試行やアップデートができる機能が欲しいな。" userName="slig" createdAt="2025/08/15 18:06:46" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう！WordPressは無料で使えるようになる予定だけど、今はまだ完成してないんだ。多分来週には準備できると思うよ。" userName="camil" createdAt="2025/08/15 18:15:59" color="">}}




{{<matomeQuote body="これってK3sをデプロイしてるの？それとも、コントロールプレーンとワーカープレーンが別インスタンスにあるようなフルKubernetesをデプロイしてるの？" userName="czhu12" createdAt="2025/08/15 18:12:05" color="">}}




{{<matomeQuote body="これは、コントロールプレーンとノードプールが別々になってる、すぐに使えるKubernetesのセットアップだよ。" userName="camil" createdAt="2025/08/15 18:17:32" color="#ff5733">}}




{{<matomeQuote body="K3sもコントロールプレーンとワーカーノードプールを別々に実行できるよ。おもちゃのプロジェクトやシングルノードクラスタだけじゃなくて、結構大きなクラスタも動かせるんだ。" userName="andix" createdAt="2025/08/15 18:35:03" color="">}}




{{<matomeQuote body="Hetznerの専用サーバー間の接続オプションってどうなってるの？同じラック内に専用スイッチを置いて料金を払うこともできるみたいだけど、それってラックの電源やスイッチで単一障害点のリスクが生じない？" userName="marcosscriven" createdAt="2025/08/15 21:14:24" color="#ff5733">}}




{{<matomeQuote body="リリースおめでとう！GitlabやGitlab Registry（あるいは他のRegistry）をサポートする予定はある？" userName="zft" createdAt="2025/08/15 18:05:54" color="#ff5733">}}




{{<matomeQuote body="ありがとう！うん、両方計画中だよ。レジストリはすごく簡単に実装できるはずだよ。" userName="camil" createdAt="2025/08/15 18:22:18" color="">}}




{{<matomeQuote body="Syself.comと何が違うの？最近、Syself.comを調べてたんだけど。" userName="julienmarie" createdAt="2025/08/16 01:59:19" color="#ff5733">}}




{{<matomeQuote body="まだSyself.comは試せてないけど、成熟した製品だと思ってるよ。このプラットフォームの狙いは、Kubernetesの知識がない開発者や小さい会社、あるいは開発やテスト目的でサクッとクラスタを立ち上げたい人にもっと使いやすくすることなんだ。" userName="camil" createdAt="2025/08/16 04:56:22" color="#ff33a1">}}




{{<matomeQuote body="誤字だよ：「One Cluser always free」ってなってる。" userName="kopadudl" createdAt="2025/08/15 18:33:31" color="">}}




{{<matomeQuote body="修正したよ、ありがとう！" userName="camil" createdAt="2025/08/15 20:25:08" color="">}}




{{<matomeQuote body="US VAリージョンで小さいクラスタをデプロイしようとしたら、ステータスが「Failed」と「Creating」を行ったり来たりして、どうやってトラブルシューティングすればいいか全く分からなかったよ。IDはこれ：7ad975fb-3c8e-47a9-b03d-9e6bec81f0db。" userName="rumblefrog" createdAt="2025/08/15 21:05:03" color="#ff5c5c">}}




{{<matomeQuote body="やあ、ごめんね。今すぐ調べるよ。" userName="camil" createdAt="2025/08/15 21:06:47" color="">}}




{{<matomeQuote body="Hetzner以外にも拡張する予定はある？Hetznerは特定の用途（例えばVPNとか）でかなり制限があるから、Datapacketみたいなプロバイダーのサポートにすごく興味があるんだ。" userName="Banou" createdAt="2025/08/16 07:20:35" color="#ff33a1">}}




{{<matomeQuote body="彼らの驚くほどひどいAPIからすると、Datapacketへの拡張は無理だろうね。「create a server」のmutationですら、ユーザーデータをサポートしてないんだ。ここ見てみ：https://api.datapacket.com/#definition-ServerInput" userName="mdaniel" createdAt="2025/08/16 19:04:14" color="#785bff">}}




{{<matomeQuote body="最初はHetzner向けに設計されたんだけど、今の作り方ならどんなプロバイダーにも拡張できるはずだよ。<br>特に、独自のKubernetesディストリビューションを提供してるプロバイダーにはね。" userName="camil" createdAt="2025/08/16 13:22:21" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
