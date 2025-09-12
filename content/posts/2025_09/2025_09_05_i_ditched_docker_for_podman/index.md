+++
date = '2025-09-05T00:00:00'
months = '2025/09'
draft = false
title = 'Dockerを捨ててPodmanに乗り換え！'
tags = ["Docker", "Podman", "コンテナ", "仮想化", "開発"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> Dockerを捨ててPodmanに乗り換え！

引用元：[https://news.ycombinator.com/item?id=45137525](https://news.ycombinator.com/item?id=45137525)




{{<matomeQuote body="2001年頃、OpenBSDとPythonでWiFiホットスポットを構築してたんだ。`chroot`とJailsを使って、`ptrace`でファイル利用を監視し、依存関係を抽出してデプロイをスリム化したんだよね。Docker登場時、この経験を思い出したよ。Dockerコンテナのファイル利用を監視して、サイズを最適化するような取り組みって今もあるのかな？" userName="ttul" createdAt="2025/09/05 19:09:50" color="#ff5733">}}




{{<matomeQuote body="初めてのDjangoデプロイが最高のCI/CDだったよ。Gitの`post-receive`フックでビルド・デプロイ。「`git push live master`」で終わり。Dockerたくさん使ったけど、あれが一番簡単だったね。Dockerの価値は理解してるけど、UbuntuやOpenBSDでのHTTP設定も簡単だし、Dockerの再現性がコンテナ管理のオーバーヘッドに見合うのか疑問だな。" userName="sroerick" createdAt="2025/09/05 19:32:17" color="#785bff">}}




{{<matomeQuote body="「Dockerの価値が理解できない」？単一Webサーバならそうかもね。でもうちのチームは45サービスある複雑なシステムを構築してる。異なるチームがそれぞれ言語やライブラリを使い、コンテナ化前は依存関係の競合で悪夢だったんだ。Dockerがあれば、各チームは自分のコンテナのビルドと実行だけ責任持てばいい。CIでビルドされるし、自分のマシンで動けば本番でも動く確信が高いんだよ。" userName="rcv" createdAt="2025/09/05 21:18:05" color="#ff5c5c">}}




{{<matomeQuote body="再現性ではないよ。四半期に一度使うPythonアプリのために、開発環境を毎回再構築しなくて済むこと、それが価値なんだ。Pythonのビルドチェーンって、他のものを壊しがちだからね。それが本当に助かるんだよ。" userName="Shog9" createdAt="2025/09/05 19:42:06" color="#45d325">}}




{{<matomeQuote body="なるほど、大企業マイクロサービスアーキテクチャの高度なユースケースなら理解できるよ。K8sやAnsibleみたいなツールと同じレベルの話だね。でも、ほとんどの開発チームにはそこまで必要ないんじゃないかな。みんなDockerを「`make install`」みたいな感覚で使ってる気がするよ。" userName="sroerick" createdAt="2025/09/06 01:47:09" color="">}}




{{<matomeQuote body="この「誤った再現性」の感覚が、俺が数年前にStablebuildに資金提供した理由だよ。Stablebuildは、Dockerfile内で固定できないOSパッケージリポジトリやDocker Hubタグ、ネット上のファイルを固定できるようにするんだ。だから1年後でも、まったく同じコンテナを再現できるんだよね。<br>https://docs.stablebuild.com/" userName="janjongboom" createdAt="2025/09/05 20:17:12" color="#ff5c5c">}}




{{<matomeQuote body="この問題って、アプリケーション用のイメージをビルドして、タグ付けしてDockerリポジトリにプッシュすれば解決するんじゃないの？俺の職場ではいつもそうしてたんだけど。何か見落としてるかな？" userName="jselysianeagle" createdAt="2025/09/05 20:40:35" color="">}}




{{<matomeQuote body="じゃあ、アプリケーションに一行修正みたいな変更が必要になったらどうするの？バイナリイメージを直接編集するわけ？" userName="lmm" createdAt="2025/09/06 01:55:14" color="">}}




{{<matomeQuote body="みんなのPCがバラバラだと再現性のある開発環境は超大事だよね。Dockerにはネットワーク効果もあるし。もっといい軽量ツールがあれば使うけど、現実にはない。理想論だけど、実際はそうじゃないんだよな。" userName="AlphaSite" createdAt="2025/09/06 02:12:09" color="#45d325">}}




{{<matomeQuote body="15年前、お客さんのとこで一つのマシンにPHPとかPythonとか色んなサービスを動かしてて、アプグレがマジで悪夢だったんだよ。Dockerはなかったけど、Proxmoxを使ってた。でも原理は一緒で、これって別に大企業だけの問題じゃないんだよね。" userName="em-bee" createdAt="2025/09/06 05:07:17" color="#785bff">}}




{{<matomeQuote body="マジか！俺はArch Linuxでたくさんのサービスを動かしてたけど、アプグレで壊れたことなんて一度もないんだよね。壊れたのはUbuntuベースのやつばっか。サービス自体じゃなくて、Linuxディストリビューションのクソみたいなパッケージマネージャーの問題だったんじゃないかな？俺はArch LinuxとOpenBSDしか使わないよ。" userName="johnisgood" createdAt="2025/09/06 17:45:57" color="">}}




{{<matomeQuote body="「みんなのPCが違う時に再現性のある開発環境は最高」って話だけど、Dockerとかコンテナ技術が「俺の環境では動くんだよな〜」って問題を解決してくれたんだよね。" userName="a012" createdAt="2025/09/06 03:36:02" color="#ff5c5c">}}




{{<matomeQuote body="「壊れた」ってのは優しい言い方だね。実際は、複数のPHPサービスを一度にアプグレしなきゃいけなくて、全部動き出すまで長いダウンタイムがあったんだ。コンテナだと一つずつ処理できるから、ダウンタイムも複雑さも劇的に減らせたんだよ。" userName="em-bee" createdAt="2025/09/06 19:33:13" color="#38d3d3">}}




{{<matomeQuote body="「Dockerの価値が分からない。UbuntuとかOpenBSDでHTTP設定するのなんて楽勝じゃん」って意見もあるけどさ、元運用担当者としては、Dockerは複数のDBやサービス、ツールで構成される複雑なシステムをパッケージ化して、環境変数とかマウントポイントでインターフェースを標準化できるのが超デカいんだよ。オンボーディングが超簡単になるし、アプグレも楽。それに開発、CI、本番で全部同じバージョンのライブラリとサービスを使えるのが最高なんだ。" userName="bolobo" createdAt="2025/09/05 20:18:35" color="#ff33a1">}}




{{<matomeQuote body="彼らのアーキテクチャが環境に合ってるかどうかの状況も聞かずに、適用できるかも分からないアドバイスをいきなり言い放ったの、最高だね（って皮肉）。何も聞いてないんだから、分かるわけないんだけどさ。" userName="latentsea" createdAt="2025/09/06 01:16:42" color="">}}




{{<matomeQuote body="Dockerファイルの最後に追記するんだよ。そうすれば、前のイメージがキャッシュされたビルドステップと一緒に、まだ有効な状態を保てるからね。" userName="zmmmmm" createdAt="2025/09/06 07:29:30" color="">}}




{{<matomeQuote body="「他の人のPCと違っても、最新のdevelopが動かせないなんてことは基本的にない」って言うけどさ、タイムゾーンに依存するテストを扱ったことないんじゃない？" userName="SkiFire13" createdAt="2025/09/06 12:57:12" color="#45d325">}}




{{<matomeQuote body="SELinuxの問題まだあるよ。クライアントがSELinuxオフで開発してるから、俺のマシンだとSELinuxオンだとDockerコンテナが動かないんだよね。" userName="em-bee" createdAt="2025/09/06 05:10:35" color="#38d3d3">}}




{{<matomeQuote body="全く同感だね。Nixの専門家じゃないけど、直感的にはNixOSがこの手の使い方には勝つと思うよ。Dockerのインフラはすごいけど、コンテナがカーネル持ってたり持たなかったり、外部レジストリにプッシュしたり、よくわからんUbuntuで動かしたりするのって意味不明なんだよね。" userName="sroerick" createdAt="2025/09/06 01:33:02" color="#ff5733">}}




{{<matomeQuote body="Googleで検索したら一番上に出てきたよ。2.2万スターついてるって。→ https://github.com/slimtoolkit/slim" userName="bmgoau" createdAt="2025/09/05 19:51:22" color="#38d3d3">}}




{{<matomeQuote body="“何してるか分からず友達に電話した”とか“Dockerが何をもたらすか理解できない”って書いてるけど、それって自分で自分の意見を無効にしちゃってるんじゃない？" userName="throwmeaway222" createdAt="2025/09/05 22:26:36" color="">}}




{{<matomeQuote body="並列プログラミングと一緒で、分散システムって必要な場面はごくわずかだよ。全体の1%にも満たないくらい。Googleじゃないなら、多分いらないんじゃないかな。それ以外は単なる楽しみか、ほとんどの場合苦痛でしかないね。" userName="const_cast" createdAt="2025/09/08 19:10:31" color="">}}




{{<matomeQuote body="コンテナ内のファイルを編集して、別のタグで再アップロードすることはいつでもできるよ。ベストプラクティスじゃないけど、別に魔法でもなんでもないし。" userName="xylophile" createdAt="2025/09/06 05:27:45" color="">}}




{{<matomeQuote body="タイムゾーンに依存するテストって何？なんか嫌な感じだね。" userName="sroerick" createdAt="2025/09/06 17:30:16" color="">}}




{{<matomeQuote body="複数のPHPバージョンを並行してインストールできたら、問題は解決したのかな？HPCシステムだとツールチェーンや環境の組み合わせ管理にModules[1]を使ってるよ。→ https://hpc-wiki.info/hpc/Modules" userName="curt15" createdAt="2025/09/06 20:19:58" color="#ff5733">}}




{{<matomeQuote body="SELinuxがオンになってる中間環境（ステージングとかプリプロダクション、カナリーとかね）が抜けてるんじゃないかな。" userName="znpy" createdAt="2025/09/06 10:56:21" color="#785bff">}}




{{<matomeQuote body="誰も何も学んだり、その経験を語ったりするなとは言ってないよ。俺はウェブアプリのデプロイとDocker使用で12年の経験があるんだから、意見を言う権利はあると思うな。温かいミルクでも飲んで落ち着いたらどう？" userName="sroerick" createdAt="2025/09/06 01:38:37" color="">}}




{{<matomeQuote body="Docker自体は単体だとあんまり役に立たないけど、コンテナが標準のデプロイ単位だから、その周りに大量のツールがあるのが強みだよね。デプロイ方法を統一するならNixかコンテナしかないけど、やっぱりコンテナの方が人気でツールも豊富だわ。" userName="kqr" createdAt="2025/09/06 13:46:25" color="#38d3d3">}}




{{<matomeQuote body="このツラさはすごくよくわかるし、このケースだとDockerが役立つのは当然だよね。でも、これって結局「その場しのぎ」の解決策ってことではお互い同意すると思うんだ。まぁ、完全にアリな選択肢だけどさ。" userName="sroerick" createdAt="2025/09/06 01:26:12" color="#ff5733">}}




{{<matomeQuote body="みんな「問題ある」って言ってるけど、俺は逆の意見だよ。Podman、まじ最高！Dockerって使いにくいし、ややこしいことだらけだけど、Podmanは全然そんなことない。しかもさ、うちの会社はライセンスの心配しなくていいんだぜ。まさにWin-winだよ！" userName="t43562" createdAt="2025/09/05 12:31:18" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「ライセンスの心配なし」って、企業にとってそんなに重要？Docker Desktopの有料ライセンス、結構リーズナブルだと思うけど。従業員250人未満で年商1000万ドル未満ならタダだしね。仮に開発チーム10人で超儲かっててライセンス必要でも、一人年9ドル。チームで年90ドルだよ。USのデベロッパー人件費考えたら200万ドル以上かかるのに、90ドルなんて実質タダでしょ。ランチ1回分より安いって。公式サポート付きで「ただ動く」ツールがこの値段はめちゃくちゃお買い得だよ。" userName="nickjj" createdAt="2025/09/05 12:51:21" color="#785bff">}}




{{<matomeQuote body="問題はコストじゃなくて、だいたいが複雑さだよ。誰がDocker Desktopをインストールしてるか把握しなきゃいけないし。今週5人も新人入ったけど、何人がDocker Desktop使うの？あー、ライセンス使い切っちゃった？じゃあ、また購買プロセスやり直して、発注書も修正しなきゃいけないじゃん。" userName="akerl_" createdAt="2025/09/05 12:54:36" color="#ff33a1">}}




{{<matomeQuote body="どの会社もライセンスの心配はいらないんだよ。Docker ENGINEは無料のオープンソースだから。Docker DESKTOPは会社で使うとライセンスが必要なソフトウェアスイートだけどさ。でも、Linux、Mac、WindowsでWSL2経由で動くコアのDocker Engineは、マジで1000%完全に無料で使えるんだから！" userName="Izmaki" createdAt="2025/09/05 12:37:41" color="#ff33a1">}}




{{<matomeQuote body="大企業がツールのライセンス買う時って、いろいろ対応しなきゃいけないからDockerだけが特別じゃないよ。IT部門なら誰が何を使ってるか自動で把握する仕組みとか、確立されたワークフローがあるはず。コンプライアンスでライセンスの合法性をチェックするのも普通だし。新人用にIT/HRにツールのリストをメールするのもよくある話だ。他のツールの方がオンボーディングがもっと複雑な場合も多いしね。Docker Desktopは、macOSユーザーなら使ってるって見ていいだろうから。これがそんなに大きな問題点だっていうのは、俺は納得できないな。" userName="nickjj" createdAt="2025/09/05 13:04:33" color="#45d325">}}




{{<matomeQuote body="ITチームがDockerのこと何も知らないとか、新しいライセンスは全部法務部の承認が必要で、マネージャーが追加予算を頼むのをビビってる、ってなるとマジで面倒になるんだよ。あと、Dockerデーモンが動かない原因を、使うたびにいちいち調べるのも嫌だしね。" userName="dec0dedab0de" createdAt="2025/09/05 14:48:03" color="#ff5c5c">}}




{{<matomeQuote body="そういう会社はさ、開発者のPCでDocker Desktopを使ってるんだよ。" userName="t43562" createdAt="2025/09/05 12:38:14" color="">}}




{{<matomeQuote body="公式ドキュメントによると、「Docker EngineはLinuxにインストールする方法を説明するけど、Docker Desktopを使えばWindows、macOS、Linuxでも使えるよ」だって。<br>https://docs.docker.com/engine/install/<br>俺は専門家じゃないけど、ネットで見た情報だと、DockerはLinuxで動くから、Macで使うならDocker DesktopとかColima、Podmanみたいな仮想環境が要るみたいだよ。" userName="xhrpost" createdAt="2025/09/05 12:55:32" color="#ff33a1">}}




{{<matomeQuote body="俺の職場みたいに、開発者みんながデスクトップLinuxをメインで使ってるなら、Podmanに乗り換える必要なんてないと思うよ。" userName="connicpu" createdAt="2025/09/05 12:42:17" color="">}}




{{<matomeQuote body="Macだと、Podmanに乗り換えても全然問題なかったよ。心配いらなかった。" userName="t43562" createdAt="2025/09/05 12:44:15" color="">}}




{{<matomeQuote body="Docker Desktopってさ、個人的には無意味で、みんなを無知にさせてると思うんだよね。Macユーザーが使ってるのを見ると、”image”と”container”の違いも分かってない人が多いし。CLIで全部できるじゃん。" userName="k4rli" createdAt="2025/09/05 13:56:38" color="">}}




{{<matomeQuote body="Docker DesktopはVMを動かしてくれるけど、WSLやMacのVMにDocker Engineを入れれば、Linuxみたいに使えるよ。ただ、VMからホストへの自動ポートフォワーディングは諦めることになるかもね。" userName="LelouBil" createdAt="2025/09/05 12:58:58" color="">}}




{{<matomeQuote body="「誰がDocker Desktopをインストールしてるか追跡が必要で、ライセンスが足りなくなる」っていう議論、よくわかんないな。<br>エンタープライズで従業員が使うソフトウェアならどれも同じじゃない？<br>Windowsだとローカルのdockerセキュリティグループに入れる必要があって少し面倒だけど、ライセンス追跡はかなり簡単な開発者ツールだよ。<br>250人以下、売上1000万ドル以下の企業には無料だしね。" userName="devjab" createdAt="2025/09/05 13:35:47" color="#ff33a1">}}




{{<matomeQuote body="大企業はオープンソースだろうと何だろうと、使うソフトウェアには支払うべきだよ。開発はタダじゃないしね。<br>もし支払ってても、社内の調達プロセスに縛られる問題は残る。新しいシート追加が大変なら、プロセス自体見直すべきだろ。<br>オープンソースは強制力がないから、企業が貢献者をおろそかにしちゃうだけだね。" userName="weberc2" createdAt="2025/09/05 18:37:16" color="#ff5c5c">}}




{{<matomeQuote body="Mac用のOrbStackって、他の代替品と比べてどうなの？意見ある？" userName="nickthegreek" createdAt="2025/09/05 13:22:45" color="">}}




{{<matomeQuote body="Docker Composeの特定オプションがPodman Composeにないと困るまでは、うまくいくよ。Podman Composeって、なぜかPythonで書かれてるけどね…。" userName="ac130kz" createdAt="2025/09/05 18:16:53" color="#45d325">}}




{{<matomeQuote body="macOSでDocker DesktopなしにDockerを動かすのは無理だと思う（limaとか使わない限りね）。<br>俺の理解だと、Docker DesktopってGUIだけじゃなくて、ハイパーバイザーレイヤーも入ってるでしょ？<br>これ、間違ってるかな？" userName="johnmaguire" createdAt="2025/09/05 15:32:01" color="">}}




{{<matomeQuote body="そうそう、俺もWSLでDockerを動かしてるよ。仕事だと開発は100%WSLだし。WindowsはほぼWebブラウザ専用だね。" userName="linuxftw" createdAt="2025/09/05 13:14:16" color="">}}




{{<matomeQuote body="macOSでDockerを動かすのなんてColima使えば超簡単だよ。brewコマンド一発だし、QEMUでx86もいけるしね。[1]https://formulae.brew.sh/formula/colima" userName="cduzz" createdAt="2025/09/05 16:54:23" color="#785bff">}}




{{<matomeQuote body="「ITチームがDockerを知らない」なんてまだマシだよ。「セキュリティ部門がローカルコンテナを禁止したがる」のが本物の問題だ。Podmanもこれは解決しないけどね。" userName="regularfry" createdAt="2025/09/05 16:28:55" color="">}}




{{<matomeQuote body="WindowsでDockerを入れるなら、Docker Desktopを使ってるのがほとんどでしょ。" userName="matsemann" createdAt="2025/09/05 12:41:29" color="">}}




{{<matomeQuote body="大企業だと何でも大変なんだよ。調達管理の専門チームがいるんだから、これは君が考えすぎだって。" userName="almosthere" createdAt="2025/09/05 13:45:35" color="">}}




{{<matomeQuote body="今はPodmanでも本物のCompose (Go) が使えるようになったんだよ。Python版だけが選択肢じゃないからね。" userName="carwyn" createdAt="2025/09/05 18:55:21" color="#ff33a1">}}




{{<matomeQuote body="企業ってのはチームの集まりで、大企業はさらにその上のチームの集まりなんだ。小さなチームは購買の決定権なんてほとんどないから、無料の代替品があればそれを使わなきゃいけないの。経費はコストセンターが負担するから、節約が第一目的になるんだよ。製品に組み込む技術の費用とは扱いが違うんだ。" userName="csours" createdAt="2025/09/05 14:18:35" color="#785bff">}}




{{<matomeQuote body="皮肉なユーザー名だね。WSLは悪くないけど、Bittorrentクライアントを勝手に隔離したり、Windows Updateで管理者ポリシーを上書きしたり、広告通知が出るOSには耐えられないんだよ。" userName="CuriouslyC" createdAt="2025/09/05 13:34:09" color="">}}




{{<matomeQuote body="「ITチームがDockerを知らない」って、それどこで働いてるの？2025年にもなって、そんなことありえる？" userName="axlee" createdAt="2025/09/05 15:49:07" color="">}}




{{<matomeQuote body="「従業員が欲しいどんなソフトウェアとどう違う？」って、オープンソースは調達がない点が違うんだよ。財務部門が調達を面倒にするから、みんなやりたがらないんだ。" userName="maigret" createdAt="2025/09/05 13:56:41" color="">}}




{{<matomeQuote body="大企業が開発ツールにお金を払うのを嫌がるのが本当に驚きだよ。わずかな費用なのにね。それなのに、誰も気にしない利益パーティーには10万ドルも使うんだから。これはマネジメントがスタッフを使い捨てにしたいからで、専門ツールは人がユニークであることを示唆しちゃうからなんだろうね。" userName="citizenpaul" createdAt="2025/09/05 20:15:12" color="#ff5733">}}




{{<matomeQuote body="Macを使ってるなら、Docker Desktopに課金するのって大した問題じゃないでしょ？って思うんだけど、どうなの？" userName="iainmerrick" createdAt="2025/09/05 13:37:51" color="">}}




{{<matomeQuote body="Docker Desktopを使ってる人って見たことないな。みんなコマンドラインでDockerコンテナを動かしてるよね。コマンドラインツールにはライセンスは要らないはずだけど、どうなんだろう？" userName="pmontra" createdAt="2025/09/05 14:07:00" color="">}}




{{<matomeQuote body="Podmanは気に入ってるんだけど、一部のコンテナ（特にGitLabみたいな大規模なやつ）だと、Dockerの歴史的経緯に依存してるのか動かないことがあるね。結局Dockerに戻っちゃう。自作コンテナは大体Podmanで動くけど、動かないやつはIncusのVMで動かしてるよ。PodmanとDockerでのGPUアクセスの挙動が違うのも困る。それでも全体的にはPodmanの方が好きだし、Rootlessは本当に素晴らしい点だよ。" userName="xrd" createdAt="2025/09/05 12:25:37" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="君の問題のほとんどは、rootでPID 1を起動するコンテナによるものだね。Podmanはデフォルトでrootlessだからそれが問題になる。もしDockerを使いたくないなら、rootfulとrootlessのPodmanマシンを2つ用意して、`--connection`フラグで使い分けるのが良いよ。Podman自身でVMを作ることもできるし（俺はLimaを使ってるけど）、安全のために`--capabilities`でコンテナの名前空間に制限をかけるのも忘れずに。Podman DesktopにはDocker互換レイヤーも入ってるよ。" userName="nunez" createdAt="2025/09/05 14:47:02" color="#ff5c5c">}}




{{<matomeQuote body="すごく良いアドバイスだね！これについてブログ記事を書いてくれたら、喜んでアップボートするよ。さっそく調べてみる！" userName="xrd" createdAt="2025/09/05 15:14:07" color="">}}




{{<matomeQuote body="昔、LimaでVMを作るブログ記事書いたよ: https://blog.carlosnunez.me/post/docker-desktop-alternative-...<br>PodmanでFedoraのrootfulなVMを作るスクリプトもあるよ: https://github.com/carlosonunez/bash-dotfiles/blob/main/lima...<br>Limaを使うなら`podman system connection add`でrootful/rootless VMを追加して、`--connection`フラグで使い分けるといい。エイリアスも便利だよ。近いうちに詳細なセットアップ方法の記事を書くね！" userName="nunez" createdAt="2025/09/08 16:18:14" color="#785bff">}}




{{<matomeQuote body="Podmanがすべてのコンテナで動くわけじゃない、っていうのは、多分この記事の執筆動機の一つだよね。Podmanの互換性は、ユーザーがもっと増えて、公開前にちゃんと動作確認されるようになれば解決するんじゃないかな。" userName="gorjusborg" createdAt="2025/09/05 12:54:33" color="">}}




{{<matomeQuote body="変だな、うちはGitLabサーバーもRunnerも全部Podmanで動かしてるよ。Runnerはk8sに移行したいけど、Podmanでも問題なく動いてるんだ。Traefikも使ってるし。" userName="firesteelrain" createdAt="2025/09/05 12:54:44" color="#ff5733">}}




{{<matomeQuote body="Podmanでコンテナの再起動問題があったからDockerに戻したよ。Dockerだと安定してるけど、本当はDocker使いたくないんだよね。Podmanの解決策は調べればわかると思うけど、時間がなかったんだ。<br>Podmanがうまく動いてるって聞いてよかった、できればDockerは使いたくないからね。" userName="xrd" createdAt="2025/09/05 15:08:31" color="#ff5733">}}




{{<matomeQuote body="俺の経験だと、Podman（特にrootless版）はDockerよりリソース制限をしっかり適用するみたい。Dockerだとリソース不足に気づかず動いてたコンテナも、Podmanだとちゃんと検出されてたよ。MacのDockerだとリソーススパイクを見逃してたってことだね。" userName="dathinab" createdAt="2025/09/05 16:19:17" color="#ff33a1">}}




{{<matomeQuote body="buildxをよく使うんだけど、Podmanでも一応動くことにはなってるけど、実際にはあまりうまくいったことがないんだよね。" userName="k_roy" createdAt="2025/09/05 14:49:52" color="">}}




{{<matomeQuote body="主な問題はUbuntuでのPodmanのサポートだよ。UbuntuはPodmanの古いバージョンを搭載してるから、そのままじゃ動かないんだ。俺はPodman v5を使ってるけど、GitHub ActionsはPodman v3だし、Ubuntuを使ってる同僚はDockerだし…。だからスクリプトが古いPodman、新しいPodman、Docker全部に対応しなきゃならないんだ。" userName="awoimbee" createdAt="2025/09/05 15:10:43" color="#38d3d3">}}




{{<matomeQuote body="それに、Podmanの.debパッケージをビルド・公開してる信頼できるリポジトリもないんだ。以前探した時は、全部古かったり、もう更新しないって書いてあったりしたよ。インストールは自分で頑張れるとしても、なぜPodmanはもっと簡単にインストールできるようにしないんだろう？って疑問に思うね。Red Hatが競合の製品をサポートしたくないって考えるのが一番納得できるかな。彼らは俺に何も借りがないけど、RHエコシステム以外のものが二級市民扱いされるのは気になるね。" userName="rsyring" createdAt="2025/09/05 15:28:45" color="#ff5c5c">}}




{{<matomeQuote body="PodmanはGitHubで静的リンクされたバイナリを公開してるよ（https://github.com/containers/podman/releases）。だから、インストールするだけならファイルをダウンロードして展開するだけでいいんだ。でも、aptリポジトリみたいに自動更新はされないんだよね。" userName="gucci-on-fleek" createdAt="2025/09/05 20:30:04" color="">}}




{{<matomeQuote body="Podmanは各ディストリビューション向けにパッケージを用意する以外に何ができるの？（https://podman.io/docs/installation#installing-on-linux）ソースからビルドする手順もあるよ（https://podman.io/docs/installation#building-from-source）。この件は知らないけど、DebianやUbuntuが古いソフトウェアを搭載してるのはよくある問題で、たいていはDebianやUbuntu自身の問題だよね。" userName="dathinab" createdAt="2025/09/05 15:42:19" color="#785bff">}}




{{<matomeQuote body="Dockerや他の多くのクロスOS機能に力を入れてるソフトウェアプロバイダーがやってるように、PodmanもUbuntuなどのOS向けにパッケージをビルドすればいいんだよ。例はここ（https://docs.docker.com/engine/install/ubuntu/#install-using...）。君がリンクしたインストール手順は、OSプロバイダーがPodmanをOSリリースの一部としてビルド・パッケージングするのに頼ってるけど、それは時代遅れになりがちなんだ。Podmanの問題じゃないって言えるかもしれないけど、やっぱり「なぜ他の人気プロジェクトみたいに、これを彼らの問題にしないんだろう？」って疑問に繋がるよね。以前にも答えたと思うけど。" userName="rsyring" createdAt="2025/09/05 15:47:44" color="#38d3d3">}}




{{<matomeQuote body="他のOS向けに重複した非公式ビルドを提供するなんて、OSのパッケージ管理を損ねるし、ユーザーを混乱させるし、開発者の追加コストもかかるんだ。お金になる理由がないなら、個人的にはすごく馬鹿げたことだと思うよ。申し訳ないけど、現代のソフトウェア開発サイクルに合うLinuxディストリビューションを使えばいいんじゃない？使ってるOSの問題を他の人のせいにするなんて、建設的じゃないと思うな。" userName="dathinab" createdAt="2025/09/05 16:47:05" color="#ff5733">}}




{{<matomeQuote body="俺がUbuntuやDebianを使わない理由の一つは、アップデートがめちゃくちゃ遅いからだよ。今でも問題だって気づいてるよ。FlatpakをUbuntuで使うこともできるけど、これはUbuntu/Debianが最初から提供すべきことだと感じるね。" userName="ramon156" createdAt="2025/09/05 15:33:44" color="">}}




{{<matomeQuote body="PodmanみたいにRedHatが支援してるプロジェクトって、他のOSSと違って開発リソースに限りがないよね。OSごとのビルドやSnap/Flatpack/AppImageみたいな選択肢があるのは、みんなにとってメリットが大きいと思うよ。ripgrepみたいなツールならOSのリポジトリのでも問題ないけど、Podmanは新しい技術だし、カーネル、OS、ユーザースペースとの連携が多いから、数年前のOS提供バージョンじゃ使い物にならないんだ。<br>「なんで最新の開発サイクルに対応したLinuxディストリビューションを使わないの？」って質問だけど、僕はOSには安定性や長期サポートを求めるし、アプリは古くならないでほしいんだ。Ubuntuはそのバランスがすごく良くて、15年以上使ってるよ。他のOSに変えるのは大変だし、今のままで満足してる。だから僕はPodmanを避けてるんだ。君の意見も尊重するけど、ちょっと自分の意見を押し付けすぎてるんじゃないかな。" userName="rsyring" createdAt="2025/09/05 18:02:20" color="#ff33a1">}}




{{<matomeQuote body="Debian TrixieにはPodman 5のパッケージが公式リポジトリにあるよ。Ubuntuでも使える可能性が高いんじゃないかな。" userName="kiney" createdAt="2025/09/05 15:39:56" color="#38d3d3">}}




{{<matomeQuote body="どうしてPodmanのLinuxインストーラーがないんだろう？" userName="Eduard" createdAt="2025/09/05 22:12:13" color="">}}




{{<matomeQuote body="えー、見落としてたよ。ありがとう。" userName="rsyring" createdAt="2025/09/05 21:00:02" color="">}}




{{<matomeQuote body="Ubuntu向けの公式で最新の.debパッケージがないのは、僕らの社内ユースケースでPodmanを使う上で本当に困るよ。Dockerの公式.debリポジトリみたいのが欲しいな。" userName="alyandon" createdAt="2025/09/05 15:20:59" color="">}}




{{<matomeQuote body="Snap/Flatpack/AppImageはripgrepみたいなツールにはいいってのは同意するけど、PodmanだとLinuxセキュリティモジュール（SELinux、AppArmorとか）との複雑な連携があるから、完全にOSに依存しないのは難しいんじゃないかな。将来的にはできるかもしれないけど、SELinux、AppArmor、どっちもなしって感じで3パターンのセットアップが必要になるかもね。そう考えると、やっぱり無理かな？" userName="dathinab" createdAt="2025/09/05 18:28:00" color="#ff33a1">}}




{{<matomeQuote body="RedHatがPodmanを支援してるってのはその通りだよ。僕はDebian向けにPodmanをビルドしたことがあるんだ。セキュリティ周りの機能が多くてちょっと大変だけど、ちゃんと動くよ。四半期に1万ドルもらえるなら、僕が代わりにやってもいいけどね。" userName="ibejoeb" createdAt="2025/09/06 00:46:44" color="#ff5c5c">}}




{{<matomeQuote body="長年「安定性と最新版」を求めてきたけど、結局Fedoraがこれだって気づいたよ。各リリースはすごく安定してるし、リリースの間隔も短すぎず長すぎずちょうどいいんだ。" userName="xylophile" createdAt="2025/09/06 05:41:14" color="#ff5c5c">}}




{{<matomeQuote body="HomebrewにあるPodmanのバージョンに何か問題でもあるの？<br>https://formulae.brew.sh/formula/podman" userName="c-hendricks" createdAt="2025/09/06 01:35:08" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
