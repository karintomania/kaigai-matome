+++
date = '2025-06-16T00:00:00'
months = '2025/06'
draft = false
title = 'KubernetesベースのHeroku代替Canineとは？'
tags = ["Kubernetes", "PaaS", "ホスティング", "開発", "OSS"]
featureimage = 'thumbnails/red3.jpg'
+++

> KubernetesベースのHeroku代替Canineとは？

引用元：[https://news.ycombinator.com/item?id=44292103](https://news.ycombinator.com/item?id=44292103)




{{<matomeQuote body="やっほーHNのみんな！Canineを1年くらい作ってるんだ。HerokuとかRenderとかFlyとかの高っかい料金にマジでうんざりして始めたんだよね。前は月に400ドル以上払ってたんだ。Hetznerにしたら4GBマシンがたったの4ドルだよ！でもHetznerはDNSとかチーム管理とかGitHub連携が面倒なんだよね。だからHerokuみたいなのサクッと作れるかと思ったら、意外と大変だった。でも今はHelmチャートも簡単にホストできるのが最高だよ。PostgresとかRedisとか、何でもいける。見てみてねー！<br>オープンソース版: https://github.com/czhu12/canine<br>クラウドホスト版: https://canine.sh" userName="czhu12" createdAt="2025/06/16 18:27:59" color="#45d325">}}




{{<matomeQuote body="マジでこういうHeroku的なやつ探してたんだ、ありがとう！これ良さそう！<br>あと、K8sのドキュメントがマジで分かりやすいね。一番親切かも。<br>https://canine.gitbook.io/canine.sh/technical-details/kubern...<br>質問なんだけどさ、Digital OceanとかのマネージドK8sで使えるの？Hetznerでの”クラスター”って1台のマシンを分けてるだけ？それとも本当のマルチマシンK8s？別のサーバーでインストールスクリプト実行したらクラスターに参加できる？既存のマネージドK8sにCanineでデプロイする方法はある？" userName="TheTaytay" createdAt="2025/06/16 21:00:56" color="#785bff">}}




{{<matomeQuote body="うん、今のところ2つのパターンをサポートしてるよ。<br>1. シングルHetzner VPS<br>2. 既存のKubernetesクラスターね。<br>僕は開発に1、本番はDigital OceanでK8sクラスター用意して2を使ってるんだ。Canineが直接マルチノードのHetznerクラスター作る機能はまだないんだよね。<br>HetznerでK8sクラスター作るTerraformはあるんだけど（https://github.com/kube-hetzner/terraform-hcloud-kube-hetzne...）、これはまだCanineには入ってない。UI改善を先にやりたいけど、検討はするよ。今は既存クラスターがあるか、シングルVPSにK3s入れるのを手伝う感じかな。" userName="czhu12" createdAt="2025/06/16 21:53:27" color="#45d325">}}




{{<matomeQuote body="おっ！それ良いニュースだね！僕はHetznerでのK8sについて聞いてたんじゃなくて、マネージドクラスター（Digital Oceanとか）で使えるか聞いてたんだよ。使えるんだね、最高！docsで見落としてたみたい。" userName="TheTaytay" createdAt="2025/06/17 00:49:54" color="">}}




{{<matomeQuote body="まず—こういうの成功してほしいとマジで思ってるから、頑張って！現時点ではこれかDokploy（Docker Swarmは過小評価されてる）かな。<br>ちょっとしたフィードバックなんだけど、「Why you should NOT use Canine」のセクションがマジでマイナスだよ。正直な欠点リストかと思ったら、皮肉っぽくてイラッとした。サーバー管理しなきゃとか、ダウンしたら責任取らなきゃとか、まだ開発初期で一人で作ってるんだとか、正直に書くべきだよ。" userName="nwienert" createdAt="2025/06/16 20:10:57" color="#ff5733">}}




{{<matomeQuote body="ハハ、他のランディングページと差別化しようとした僕の試みはダメだったか。もう一回考えてみるよ、フィードバックマジで感謝！" userName="czhu12" createdAt="2025/06/16 22:01:07" color="">}}




{{<matomeQuote body="うん…俺も「Why you should not use Canine」のセクション好きだよ。<br>ちょうど今朝Posthogのサイト見てて、似たようなセクションがあったんだよ。<br>https://www.dropbox.com/scl/fi/rky248hgutwzzkzwhifxz/posthog..." userName="harrisreynolds" createdAt="2025/06/17 14:40:33" color="">}}




{{<matomeQuote body="やるのは全然いいんだけど、Canineみたいに超初期段階だと、やっぱ本当のデメリットがあるんだよ。Posthogはアルファ版じゃないし、ユーモアも上手だし、その辺が違うんだよね。あれは残しとくとして、正直な点も加えるべきだよ。" userName="nwienert" createdAt="2025/06/17 17:24:29" color="">}}




{{<matomeQuote body="あれ、絶対残しておいて！マジで最高だから！（言っとかなきゃいけないことだしね！）<br>でも、批判的なポイントも追加でね。" userName="1oooqooq" createdAt="2025/06/16 22:18:37" color="">}}




{{<matomeQuote body="Docker Swarmって今どうなってんの？Dockerチームに捨てられた気がして、何年も追ってないんだけど。" userName="dgellow" createdAt="2025/06/17 10:45:46" color="">}}




{{<matomeQuote body="いや、DockerがSwarmを捨てたなんてことないよ。最新のDocker Engineのリリースノート見たけど、いっぱい修正とか機能追加あったもん。Kubernetesみたいに人気はないけど、ちゃんと生きてるって。" userName="vbezhenar" createdAt="2025/06/17 11:14:21" color="">}}




{{<matomeQuote body="ちょっとそれ、簡単には言えないな。上の人が言ってるのは、多分『classic swarm』のことだと思うけど、あれはマジでもう死んでる（詳しくはこちら: https://github.com/docker-archive/classicswarm）。<br>Dockerがサポートしてるのは別の『Swarm mode』っていうデプロイ方法で、これはhttps://github.com/moby/swarmkitがベースで、正直Kubernetesにすごく似てるんだよね。<br>なんで今さらDockerのKubernetesツールじゃなくてこっちを選ぶのか、全然わかんないな…。裸のKubernetesより設定が楽ってだけなら、k3sとかmicrok8sでもっと簡単にできるし。<br>もし誰かSwarm modeを本番で使ってる人いたら、ぜひ他の意見を聞かせてほしいな！" userName="horsawlarway" createdAt="2025/06/17 14:24:45" color="#ff5c5c">}}




{{<matomeQuote body="もし自分でベアメタルKubernetes組むなら、俺はSwarmを試すね。k3sとか他のやつは使わない。Kubernetesの最大の問題は、専門知識とかメンテにかかるコストが半端なく高いこと（ちゃんとやろうとしたらね。適当にやっててコスト低いと思い込んでる人も多いけど）。Swarmなら、短期でも長期でもコストは全然小さくなると思うよ。" userName="0xbadcafebee" createdAt="2025/06/17 14:46:19" color="#ff33a1">}}




{{<matomeQuote body="k3sがかけるコストで、Swarmが解決するっていう具体的な点について、もっと詳しく教えてくれない？<br>今のあなたのコメント、なんかSwarmのドキュメントによくあるFUDと同じ種類の匂いがするんだよね（Dockerが出してるドキュメントには、DockerがKubernetesツールに時間かけてるのに、Swarmを選ぶ『なぜ』が全然魅力的じゃないんだ）。<br>まあ、話は聞くけどさ、俺はk3sでベアメタルのクラスター動かしてるけど、メンテは超簡単だよ。" userName="horsawlarway" createdAt="2025/06/17 16:39:19" color="#ff5733">}}




{{<matomeQuote body="元のコメント主じゃないんだけど、数年前にKubernetesからSwarmに移行したことあるんだよね。詳しいことは正直もう覚えてないんだけど、とにかく設定ファイルをめっちゃ消した（ローカルのComposeとの重複もなくなって）、全体的にすごく扱いやすかったのを覚えてる。数台マシン追加したときも、内蔵機能で簡単にできたし。まあ、俺はインフラ専門家じゃないし、Kubernetesの経験もたいしたことないんだけどね。" userName="nwienert" createdAt="2025/06/23 03:39:01" color="">}}




{{<matomeQuote body="CapRoverって、まさにそれ（Swarm mode）を使ってるよ。" userName="conradfr" createdAt="2025/06/17 18:50:09" color="">}}




{{<matomeQuote body="PaaSプラットフォームのリストをGitHubでまとめてるよ。<br>https://github.com/debarshibasak/awesome-paas" userName="debarshri" createdAt="2025/06/16 19:04:43" color="#785bff">}}




{{<matomeQuote body="dokkuはVPSでも動くシンプルなPaaSだよ。dokku-scheduler-kubernetesもあるけど、Helmチャートはサポートしてないみたい。<br>https://github.com/dokku/dokku-scheduler-kubernetes<br>クラウドコンピューティングアーキテクチャ › Delivery ってところでSaaS, DaaS, DaaS, PaaS, IaaSにリンクしてるね。<br>https://en.wikipedia.org/wiki/Cloud_computing_architecture<br>クラウドコンピューティング比較のページもある。<br>https://en.wikipedia.org/wiki/Cloud-computing_comparison<br>Category:Cloud platformsも。<br>https://en.wikipedia.org/wiki/Category:Cloud_platforms<br>awesome-selfhostedにはserverless / FaaSカテゴリがあって、それはawesome-sysadmin › PaaSにリンクしてるね。<br>https://github.com/awesome-selfhosted/awesome-selfhosted#sof..." userName="westurner" createdAt="2025/06/17 02:32:23" color="#ff33a1">}}




{{<matomeQuote body="最近、OSSのセルフホスト型データプラットフォームkitsunadata（https://github.com/kot-behemoth/kitsunadata）をDokkuでデプロイして始めたんだ。すごく成熟してて使いやすいし、ドキュメントもたくさんある。<br>勉強中にいろんなリンク集めて、awesome-dokku（https://github.com/kot-behemoth/awesome-dokku）ってリストも作ったから、誰かの役に立てば嬉しいな！" userName="kot-behemoth" createdAt="2025/06/17 07:08:53" color="#ff5c5c">}}




{{<matomeQuote body="DokkuのK3sを使った、もっと機能豊富なデプロイ方法がこれだよ。<br>https://dokku.com/docs/deployment/schedulers/k3s/<br>見てみて！" userName="emilsedgh" createdAt="2025/06/17 05:02:05" color="#ff5733">}}




{{<matomeQuote body="付け加えるけど、これは僕が今まで作った中で断トツに楽しかったプロジェクトだよ。<br>技術スタックを上から下まで全部自分で握るのって、めちゃくちゃ満足感があるんだ。<br>Railsアプリ、Canineインフラ、Raspberry Piサーバー、自分のISP。<br>これを全部自分で管理してアプリを動かせるようにしたんだ。" userName="czhu12" createdAt="2025/06/16 18:51:46" color="">}}




{{<matomeQuote body="ちょっと細かい指摘だけど。<br>KubernetesはDockerコンテナを動かすわけじゃないんだ。<br>OCI（Open Container Initiative）に準拠したコンテナを動かすんだよ。<br>Dockerはライセンスされたブランド名だからね。" userName="vanillax" createdAt="2025/06/16 20:30:23" color="">}}




{{<matomeQuote body="もう一つ細かい指摘があるよ。<br>https://canine.gitbook.io/canine.sh/technical-details/kubern...<br>これは一般的な説明だろうけど、「10,000サーバー」ってのはちょっと…Kubernetesは公式には最大5,000ノードまでしかサポートしてないんだよ。<br>https://kubernetes.io/docs/setup/best-practices/cluster-larg...<br>もっと大規模なクラスターもあるけど、それにはかなりのチューニング（例えばAPIレジストリを完全に置き換えるとか）が必要なんだ。Kubernetesは現状、大規模クラスターをそのままサポートするのにはまだ遠いよ。" userName="cmckn" createdAt="2025/06/16 21:17:40" color="#38d3d3">}}




{{<matomeQuote body="あー、確かに僕が間違ってるかも。<br>昔Airbnbにいた頃、誰かが1万サーバーまでスケールできるかって内部テストをしてた記憶があるんだけど、あれは2016年の話だし、自分でやったわけじゃないからね。<br>それは撤回するよ。" userName="czhu12" createdAt="2025/06/16 21:39:00" color="">}}




{{<matomeQuote body="そうそう、Docker必須って見ると嫌なんだ。<br>もうDockerを使うことはほとんどなくて、Podmanとかcontainerdばっかり使ってるよ。" userName="cchance" createdAt="2025/06/17 01:17:09" color="">}}




{{<matomeQuote body="めっちゃいいね。僕もセルフホスティングで同じようなことやろうと思ってて、DockerとKubernetesの中間みたいなのを探してたんだ。<br>Nomadも良さそうだったけど、それでもDockerよりはちょっと手間がかかるし、エコシステムも少ないんだよね。<br>結局Dockerだけ使って、アップグレード時のデプロイダウンタイムは我慢することにしたよ。個人のホームサーバーならそれで十分。<br>でもプロダクションサービスだと、CanineはK8sをどれくらい抽象化してくれるんだろう？<br>内部を覗く必要はあるのかな？<br>僕はk8sエキスパートじゃないから分からないけど、DockerとK8sの間にちょうどいいものって、そもそも存在しないのかな？" userName="conqrr" createdAt="2025/06/16 19:46:59" color="">}}




{{<matomeQuote body="まさにDockerとKubernetesの中間みたいなの、僕も作ってる最中だよ！<br>https://github.com/psviderski/uncloud<br>君と同じように、運用のオーバーヘッドがない中間層が欲しかったんだ。<br>基本的にはDockerみたいなCLIとDocker Composeに似た使い勝手で、複数マシンでの運用やプロダクション対応もしてるけど、管理が必要なコントロールプレーンはないんだ。<br>まだ開発中だけど、各レイヤーで何が起きてるか簡単に理解できて、トラブルシューティングもできるくらいシンプルに保つのが目標だよ。" userName="psviderski" createdAt="2025/06/16 22:24:39" color="#785bff">}}




{{<matomeQuote body="これ、いい感じ！まさに解決してほしかったことだよ。WireGuardとCaddyの組み合わせもナイスだね。Zero Downtime Deployはどうやるの？Swarmみたいに？" userName="conqrr" createdAt="2025/06/16 22:40:30" color="#785bff">}}




{{<matomeQuote body="ありがとう！Zero Downtime DeployはK8sとかSwarmみたいに、コンテナを一つずつローリングアップデートするんだ。新しいのを動かして、大丈夫か確認して、Caddyが切り替えて、古いのは消すよ。CLIで操作するから、何かあってもすぐにわかるのが違うところ。" userName="psviderski" createdAt="2025/06/16 22:50:12" color="#45d325">}}




{{<matomeQuote body="コンセプト、めっちゃいいじゃん！K8sってすごいけど、複雑すぎるとこあるよね（昔のx86仮想化みたい）。資料見たら、K8sの基本をよくわかってるみたいで、色々な場面で使えそうだね。特に自分でホスティングする時に、PVEやMicrocloud、Cockpitより人気出るかも。N100 NUCがMicrocloud入れたまま放置されてるから、それ外してCanine試してみるか！" userName="stego-tech" createdAt="2025/06/16 19:56:27" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Helmはちょっと扱いにくいなーって思うときあったよ。values.yamlを更新したときに、どれが適用されるかとか、起動時に設定しないといけないかとか、ちょっと読めないんだよね。あと、大量のサービスがデプロイされると、どれを再起動していいか分からなくなる。でも、K8sのコアの部分は、ステートレスなジョブには使うの楽しいけどね。" userName="czhu12" createdAt="2025/06/16 20:57:57" color="">}}




{{<matomeQuote body="Helmって、ぶっちゃけうざいよね。ソフトのインストールが楽になるのは感謝だけど、npmに感謝するのと同じような感じ。" userName="jitl" createdAt="2025/06/17 11:15:08" color="">}}




{{<matomeQuote body="なんかさー、この”複雑”って話、どこから来てるんだろう？昔はKubesprayとかでクラスター作るのに2時間とかかかったかもしれないけど、RKEみたいなの使えば、今はYAMLファイル一つとSSHキーだけでしょ。" userName="cyberpunk" createdAt="2025/06/16 20:25:45" color="#38d3d3">}}




{{<matomeQuote body="K8sの独特なとこに慣れすぎて、気づいてないんじゃない？あと、デバッグ経験豊富だから、問題あってもあんまり気にしないとか。ちょっと前、GKEで普通のデプロイなのにDNS障害起きて、ずっと頑張ったけど結局ダメで、新しいクラスター立て直したよ。Linodeに乗り換えようかなとも思ったくらい。K8sはさ、HerokuとかGoogle Cloud Runと違って、自分で管理する部分にたくさんの部品が動いてるから複雑なんだよ。やれることも多いしね。あなたが慣れてるからって、複雑じゃないってわけじゃないと思うな。" userName="hombre_fatal" createdAt="2025/06/16 22:53:31" color="#45d325">}}




{{<matomeQuote body="ベアメタルで大規模にデプロイして、ソフトとかファームウェアの管理するの、やっぱり結構複雑だよ。今のツールは良くなってるけど、”簡単”ってわけじゃないんだ。K8sの氷山図、3年以上前のだけど、まだかなり正確だと思う。見てみて。<br>https://www.reddit.com/r/kubernetes/comments/u9b95u/kubernet..." userName="esseph" createdAt="2025/06/16 22:28:52" color="#45d325">}}




{{<matomeQuote body="あー、それ同意だわ。K8s自体のセットアップは結構簡単なんだよね。証明書とかドメインとか、CICD（FluxとかArgoとか）あたりで複雑になってくるんだよ。家でホスティングするのに、一番分かりやすくて、しかもちゃんと使えるレベルのセットアップ方法の動画、持ってるよ。" userName="vanillax" createdAt="2025/06/16 20:46:14" color="#ff5733">}}




{{<matomeQuote body="あなたの動画、k3sみたいだよ。普通のK8sをベアメタルでセットアップするの期待してた人向けに、一応言っとくね。" userName="nabeards" createdAt="2025/06/17 00:26:48" color="">}}




{{<matomeQuote body="数年前、DigitalOceanで40ドルくらいでK8sクラスター組んでみたんだ。<br>このチュートリアル通りにね→ https://www.digitalocean.com/community/tutorials/how-to-auto...<br>簡単なYAML数行で新しいサービス作ってデプロイできたし、DNSとかLets Encryptも自動でやってくれた。<br>kubectlコマンド一発で更新できるのが超楽で、気に入ったよ！" userName="xp84" createdAt="2025/06/16 21:30:23" color="#ff5733">}}




{{<matomeQuote body="K8sが複雑って言う人たちは、きっと複雑な使い方をしてるか、あるいはマネージドK8s以外の話をしてるんじゃないかな。<br>複雑なニーズってそもそも複雑だから、K8sだけが複雑にしてるわけじゃないと思うよ。<br>もしK8s自体が一番の複雑さの原因なら、それ多分使い方が間違ってるか、使うツールを間違えてるね。" userName="notnmeyer" createdAt="2025/06/16 20:44:54" color="#ff33a1">}}




{{<matomeQuote body="コメント6の「マネージドK8sじゃない話だろ」ってとこ、それな！<br>ハイパースケーラーのマネージドK8sは確かに楽ちんだけど、クラスター管理者とかベアメタルから見ると全然違うんだよ。<br>基本機能動かすだけでいろんなレイヤーの細かい設定が必要で、イライラするんだ。<br>マネージド使って「複雑じゃない」とか言わないでほしいな。<br>K8sも昔よりはマシになったけど、ESXiとかHypervisorみたいにプラグアンドプレイじゃないんだよね。<br>だからCanineみたいなのに期待してるんだ！<br>（てか、よっぽどの理由がない限り、ベアメタルで自前K8sとかやめとけ。マジで大変だから！）" userName="stego-tech" createdAt="2025/06/16 21:12:56" color="#ff33a1">}}




{{<matomeQuote body="コメント7の最後の追記以外は全部同意かな。<br>Nutanixとか、ああいうのがK8s周りをだいぶ助けてくれてるよね。<br>Talosも結構好きだし、もっと普及してほしいなー。" userName="esseph" createdAt="2025/06/16 22:30:27" color="">}}




{{<matomeQuote body="コメント8への応答だよ。「なるほどね！」<br>Nutanixは俺も感心したけど、収益性がちょっと気になったんだよね。VMware Tanzuも悪くなかったけど、AWSのK8sの方が楽だったかな。<br>Talosは今度チェックしようと思ってて、特にコミュニティライセンスがいい感じ。<br>K8s周りは日々進化してるけど、結局のところ本番環境ならマネージドK8sが一番かなって思ってる。<br>YAML数行でバックアップとかシークレット管理もできるし。まぁ、その分毎月すごい額の請求が来るけどね！" userName="stego-tech" createdAt="2025/06/16 23:26:00" color="#ff33a1">}}




{{<matomeQuote body="CISAが言ってるんだけど、重要インフラ分野だとネットなしで24時間以上動けるようにしろ、って推奨があるらしい。<br>ネット依存してるものをネットなしで制御するのは正直難しいよねー。<br>そういえば、Nutanixが最近K8s関連で面白い買収してるから、もし興味あったら調べてみてよ。" userName="esseph" createdAt="2025/06/16 23:31:57" color="#ff33a1">}}




{{<matomeQuote body="ウェブサイトのライセンスが2024年でMITってなってるけど、GitHubのApache licenseと違うのは大問題だね。どっちが本当なの？" userName="reconnecting" createdAt="2025/06/17 08:00:59" color="#45d325">}}




{{<matomeQuote body="KubernetesベースのHeroku代替!? KubernetesやHelm chartsを知る必要があるなら、俺にとってHeroku代替じゃないよ。echo helloみたいな簡単なデプロイでもKubernetesのことなんて考えたくないのに。" userName="serial_dev" createdAt="2025/06/17 15:51:48" color="#38d3d3">}}




{{<matomeQuote body="うん、それがCanineの目標だったんだ。Kubernetesがあることを知らなくても、そのエコシステムを活用できるようにすること。そして将来的には、もっと高度な機能が必要になったらKubernetes API’sを直接公開するんだよ。" userName="czhu12" createdAt="2025/06/17 16:47:51" color="">}}




{{<matomeQuote body="ストレージとsecretsの扱いはどうなってるか気になるね。Kubernetesの課題はデプロイより、ストレージやデータを一貫した場所に置く方法なんだ。<br>デモは公開repo、has dockerfiles等だったけど、private codeとimagesはどうなの？" userName="rcarmo" createdAt="2025/06/16 19:32:11" color="#ff33a1">}}




{{<matomeQuote body="昔heroku使ってたけどいい思い出だよ。ランディングページが基本的な疑問に答えられてないと思うんだ。<br>1. git pushみたいな簡単なデプロイできる？<br>2. Procfileみたいにワークロードを簡単に定義できる？" userName="znpy" createdAt="2025/06/16 21:41:51" color="#785bff">}}




{{<matomeQuote body="stacktape.comで同じことやってるんだけど、君らのやってることいいと思うよ。でも正直、厳しい市場だね。安いのが魅力でも、HerokuのDXには遠く及ばないし、シングルVM構成は本番向きじゃないよ。信頼性とか色々足りてないね。でもAI時代で変わるかも、頑張って。<br>https://stacktape.com" userName="matus_congrady" createdAt="2025/06/16 22:22:26" color="">}}




{{<matomeQuote body="うん、君に同意だよ。でもだからこそKubernetesは良い基盤だと思うんだ。巨大なAPIエコシステムがあるし、kubectlのDXもかなり良い。K8は大規模クラスターへのスケールも比較的簡単だよ。" userName="czhu12" createdAt="2025/06/16 23:34:51" color="">}}




{{<matomeQuote body="これ、Kuberoとそっくりだね。問題は、Kuberoは全然人気が出なかったこと。Coolifyみたいなシンプルなツールをユーザーは求めてるのかもね。" userName="tonyhart7" createdAt="2025/06/16 21:35:16" color="#ff5733">}}




{{<matomeQuote body="＜br＞全然人気が出なかった。＜br＞このプロジェクトの活動状況を見てよ： https://github.com/czhu12/canine/graphs/code-frequency＜br＞結構頑張ってるじゃん。" userName="Terretta" createdAt="2025/06/17 04:09:49" color="">}}




{{<matomeQuote body="プロジェクトはまだ骨組みだけで、TODOがいっぱいだね。これはかなり大変な作業になりそう。" userName="tonyhart7" createdAt="2025/06/17 12:46:06" color="">}}




{{<matomeQuote body="開発者さん、どういう経緯でこれを構築できたの？APIとReactは少し分かるけど、複雑なものをどう分解して形にするかアイデアがなくて。Heroku代替を完全に機能するオープンソースにするには？機能検討でHerokuの料金ページから始める俺のアプローチ、多分間違ってるよね。" userName="mattfrommars" createdAt="2025/06/17 22:09:46" color="#45d325">}}




{{<matomeQuote body="動画の例、シングルマシンやVMで自己ホストしたい人にはちょっと分かりにくいな。managed DO K8sとかの参照が必要なの？ローカルVMをクラスターにしたいんだけど。全部入りで単体マシンにインストールする方法とか、そこからアプリを追加・デプロイする方法の他の動画か、作ってくれる？" userName="indigodaddy" createdAt="2025/06/16 21:37:25" color="#ff33a1">}}




{{<matomeQuote body="あー、動画のセットアップは基本的にstagingとか非productionアプリ用だよ。普通は単体のHetzner VPSを起動して、K8互換サーバーをインストールすればすぐ使える。ProductionはDigitalOceanのmanaged Kubernetesと、同じデータセンター内のmanaged Postgresを使ってる。レイテンシー対策にもなるし、夜も安心して眠れるからね笑" userName="czhu12" createdAt="2025/06/16 21:40:36" color="#38d3d3">}}




{{<matomeQuote body="RKE2とかK3S（Rancher製品）ってK8互換なの？（追記：調べたらGoogle AIは互換って言ってるみたい）" userName="indigodaddy" createdAt="2025/06/18 14:38:21" color="">}}




{{<matomeQuote body="なるほどね。個人的な趣味アプリとかプロジェクト用に、シングル構成で使いたい人が多いと思うんだ。staging用の構成、ドキュメントある？" userName="indigodaddy" createdAt="2025/06/16 22:14:04" color="#ff5c5c">}}




{{<matomeQuote body="readmeのスクリーンショットにあるGoogle Sheets backendって、もしかしてデータベースとして使ってる？もしそうならすごい尊敬する。俺もhttps://holos.runでk8s版Herokuみたいなの作ろうと思ってたから、これ見てめっちゃ嬉しい。cluster apiでシングル・マルチノードクラスターを立てるとか、統合を色々探求してみたいな。" userName="JeffMcCune" createdAt="2025/06/16 23:36:48" color="#38d3d3">}}




{{<matomeQuote body="Haha、そうだよ！まさにこれ、https://google-sheets-backend.canine.sh/。こういうの、どれだけ簡単にコードで雰囲気出せるかなって思ってたんだけど、超簡単だったんだ。" userName="czhu12" createdAt="2025/06/17 05:52:04" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="すごくいいね！まさに探してたやつだよ。Helm chartsの上に構築されてるってのが試したくなるね。CanineはHelm chartsを自動でアップグレードしてくれるの？もしそうなら最高なんだけど。有料プランにいるのは、アップグレード忘れちゃうのが嫌だからなんだ。あと、オペレーションの知識って、忘れた頃に必要になるから困るんだよね。" userName="film42" createdAt="2025/06/16 20:19:24" color="#ff33a1">}}




{{<matomeQuote body="アップグレードはできるみたいだけど、安全にアップグレードするっていう根本的な問題は解決しないと思うよ。大抵は大丈夫だけど、バージョン跨ぐと設定キーが変わったりするしね。手動での監視なしにHelm chartsをアップグレードするのは、まだ未解決の問題っぽいな。" userName="czhu12" createdAt="2025/06/16 20:59:13" color="#ff5c5c">}}




{{<matomeQuote body="プロジェクト作成がうまくいかないな。「Deploy from Docker Hub instead →」をクリックして、詳細（名前、イメージ、クラスター）を入れてSubmitしたら、またプロジェクトページ（空）に戻っちゃうんだ。<br>追記：どうやらPOST https://canine.sh/projects が422を返してるみたい。" userName="federicotdn" createdAt="2025/06/16 22:23:24" color="#38d3d3">}}




{{<matomeQuote body="おかしいな、見てみるよ。Docker Hubにアクセスする権限の問題かな。プライベートリポジトリ？前にDockerhubのイメージをデプロイしようとした時、プロビジョンされたトークンに読み取り権限がなかった気がするんだ。少なくとも、もっと良いエラーメッセージを表示するバグがあるから、それはすぐ直すよ！" userName="czhu12" createdAt="2025/06/16 23:37:28" color="#ff33a1">}}




{{<matomeQuote body="ああ、そうだよ、プライベートリポジトリ。" userName="federicotdn" createdAt="2025/06/17 07:39:53" color="">}}




{{<matomeQuote body="これをHerokuのオープンソース版であるDokkuと比較してる記事とかチャートはある？" userName="chrisaiv" createdAt="2025/06/20 18:10:21" color="">}}




{{<matomeQuote body="コンピューティングのコストは下がってるのに、クラウドのコストは上がり続けるのがいつも不思議だったんだ。これを作ってくれて、賞賛に値するよ、ありがとう。" userName="Everhusk" createdAt="2025/06/16 20:15:24" color="">}}




{{<matomeQuote body="コンピューティングのコストは下がるのに、クラウドのコストは上がり続けるのはいつも不思議だったんだ。これを作ってくれて、賞に値するよ、ありがとう！" userName="Everhusk" createdAt="2025/06/16 20:16:25" color="">}}




{{<matomeQuote body="うん、前の会社での最後の年は、あるPaaSベンダーの8つのインスタンスで合計約512GBのメモリに年間約40万ドル以上も使ったんだ。ほとんどいつもメモリがボトルネックだったから、コンピュート側はいくらかかったかさえ分からないくらい。今やハードウェア自体を直接買っても8千ドル以下で済むのに、馬鹿げてると思ったよ。SOC2対応とかエンタープライズプランとかはあったけど、四半期ごとの請求はキツかったね。" userName="czhu12" createdAt="2025/06/16 21:04:48" color="#ff5c5c">}}




{{<matomeQuote body="https://world.hey.com/dhh/our-cloud-exit-savings-will-now-to... - このブログ記事、去年よく回ってたんだけど、似たような主張をしてるよ。" userName="bbkane" createdAt="2025/06/17 04:39:15" color="#785bff">}}




{{<matomeQuote body="Webサイトの「Canineを使うべきでない理由」ってセクションで、背景にあるカードがスワイプできちゃうのがすごく変なUXだね。これはChrome 137、Android 13での話。<br>それは置いといて...ちょっと試してみるつもりだよ。N100 NUCが3台あって、2台はKubernetes学習で挫折してから使ってないんだ。<br>もしかしたらこれでうまくいくかも。" userName="serbuvlad" createdAt="2025/06/16 20:13:41" color="#ff33a1">}}




{{<matomeQuote body="うん、背景のカードがスワイプできちゃうのは混乱するよね。なんでそうなるかは理解できるけど、ちょっとしか見えてないのにそれができちゃうのはおかしいな。" userName="wkat4242" createdAt="2025/06/17 02:52:08" color="">}}




{{<matomeQuote body="Kubernetes Crash Courseの「Day ＼#4. Services」ってところにtypoがあるんじゃないかな。<br>「NodePortサービスはインターネットからアクセスできません」って書いてあるけど、本当はアクセスできるって言いたかったんじゃないかな。" userName="RamRodification" createdAt="2025/06/17 19:15:18" color="#45d325">}}




{{<matomeQuote body="ちょうどhetzner上にk3sをセットアップするってのをやった時に、これ使ったんだよね: https://github.com/vitobotta/hetzner-k3s/<br>これは役に立つかな？" userName="diamondfist25" createdAt="2025/06/17 14:54:43" color="#ff33a1">}}




{{<matomeQuote body="Addonってどういう仕組みなの？<br>ただ事前にビルドされたDockerfileとか？<br>それとも何か特別なことがあるの？<br>もしDockerfileとかDockerイメージ以上の特別な何かがあるなら、mariadbをリクエストしたいな。" userName="dabbz" createdAt="2025/06/17 03:49:15" color="#ff5733">}}




{{<matomeQuote body="herokuが「review apps」って呼んでる機能、つまりPRごとに一時的な環境が自動で作られるやつ、これのサポートはある？（それか対応予定とか）<br>ドキュメントとかリポジトリをざっと見たけど、見当たらなかったんだよね。" userName="lotyrin" createdAt="2025/06/17 00:45:14" color="#785bff">}}




{{<matomeQuote body="まだだよ、ロードマップには載ってるんだ。Gitlabサポートと一緒にね。<br>今後数週間のうちに、アップデートとして少しずつ出していくつもりだよ。" userName="czhu12" createdAt="2025/06/17 05:53:05" color="#ff5c5c">}}




{{<matomeQuote body="既存のk8sクラスターを使えるようにできないの？<br>それとも常に組み込まれてるk3sを使う必要があるの？<br>単にk3sを使ってるだけなら、自分でクラスターを持ち込む（bring your own）のも簡単にできそうな気がするけど..." userName="vanillax" createdAt="2025/06/16 20:28:00" color="#ff33a1">}}




{{<matomeQuote body="そうだよ、既存のk8sクラスターと一緒に使うことを想定してるんだ。<br>k3sはどっちかっていうと例外的な使い方なんだけど、すごく安いシングルインスタンスのマシンもサポートしたくてさ。<br>ホームページとかreadmeでその辺をもっと分かりやすくしようと思うよ。" userName="czhu12" createdAt="2025/06/17 05:54:42" color="#ff5733">}}




{{<matomeQuote body="k3sはKubernetesだよ。<br>K8sとk3sは同じさ。違いはないんだ。<br>Linuxみたいに、ただ色々なバージョンとか配布版があるだけだよ。" userName="vanillax" createdAt="2025/06/17 14:01:48" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
