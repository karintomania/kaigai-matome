+++
date = '2025-10-26T00:00:00'
months = '2025/10'
draft = false
title = 'え、まさか？実はもうGitサーバー持ってるって知ってた？'
tags = ["Git", "サーバー", "リポジトリ", "分散型", "バージョン管理"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> え、まさか？実はもうGitサーバー持ってるって知ってた？

引用元：[https://news.ycombinator.com/item?id=45710721](https://news.ycombinator.com/item?id=45710721)




{{<matomeQuote body="`git init --bare`でワーキングツリーなしのGitリポジトリが作れるんだ。`origin`はデフォルト名で、リモートは複数設定できるし、名前空間を使ってPush先を変えることも可能だよ。複数ホスト間で直接Pushしたり、逆`git pull`のようにデプロイしたりする具体的な設定例も紹介してるぜ。" userName="jonhohle" createdAt="2025/10/26 13:43:49" color="#ff5733">}}




{{<matomeQuote body="`git clone --mirror ＜remote＞`は、リモートリポジトリの全ブランチ、タグ、ノートなどを完全にコピーしたベアリポジトリを作るコマンドだぜ。普通の`git clone`とは違って、ローカル追跡ブランチの設定はしないんだ。ただし、GitHubのPull Requestは含まれないから注意してくれ。" userName="webstrand" createdAt="2025/10/26 14:10:54" color="#ff5c5c">}}




{{<matomeQuote body="GitHubのPull Requestってさ、結局`git request-pull`の独自クラウド版でしょ？フリーソフトウェアがMicrosoftが支配する独自クラウドベースの「オープンソース」に変わっちゃったこと、本当に腹が立つよ。俺たちが望んでたのはこれじゃないはずなのに。" userName="Cheer2171" createdAt="2025/10/26 14:21:43" color="#38d3d3">}}




{{<matomeQuote body="こういう移行が起きるのって、元の実装に機能が足りなかったからじゃない？Gitが目指したコラボレーションのためには、CLIだけだと使い勝手の面で不十分だったってことだよな。" userName="velcrovan" createdAt="2025/10/26 15:36:36" color="">}}




{{<matomeQuote body="Gitって元々SVNみたいな集中型じゃなくて、分散型のピアツーピアバージョン管理システムなんだぜ。集中型で使うのは、あくまでワークフローの一つでしかない。リポジトリのどのクローンもリモートになれるし、ローカルに「Gitサーバー」を置くのだって全然ありなんだよ。" userName="Sharlin" createdAt="2025/10/26 14:04:52" color="#45d325">}}




{{<matomeQuote body="GitHubがデフォルトのリモート名を`origin`じゃなくて`github`にしてたら、初心者にもっとわかりやすかったんじゃないかなっていつも思うんだよね。" userName="kawsper" createdAt="2025/10/26 14:29:03" color="">}}




{{<matomeQuote body="Gitが想定してたコラボレーションって、Linuxカーネルメーリングリストのやり方なんだ。Pull Requestじゃなくて「パッチ」が本来の貢献単位で、`git format-patch`とか`git send-email`を使ったCLIベースのワークフローが本流だったんだぜ。`git request-pull`は高信頼コラボレーションの形式化であって、貢献のためじゃないんだ。" userName="derefr" createdAt="2025/10/26 20:15:22" color="#38d3d3">}}




{{<matomeQuote body="「パッチ」って複数のコミットのことだよね？じゃあ「パッチシリーズ」って、GitLabの依存MRみたいな感じなのかな？" userName="scuff3d" createdAt="2025/10/26 21:14:18" color="">}}




{{<matomeQuote body="Webインターフェースがあったからこそ、ユーザーはすごく喜んだみたいだよね。" userName="paulddraper" createdAt="2025/10/26 17:30:40" color="">}}




{{<matomeQuote body="自分のフォークがGitHubにもあるのに、混乱が少ないってどういうこと？全然わかんないんだけど。" userName="masklinn" createdAt="2025/10/26 14:30:52" color="">}}




{{<matomeQuote body="GitがGitHubのせいで分散開発の思想を失って、営利で中央集権、クローズドソースなGitHubがオープンソースの中心になったのは信じられない。Radicle, Forgejo, Giteaにもっと頑張ってほしいな！" userName="udev4096" createdAt="2025/10/26 18:12:59" color="#785bff">}}




{{<matomeQuote body="GitはP2Pでも動くけど、ポーセリンはハブアンドスポーク型に最適化されてるんだ。リモートリポジトリをクローンしても履歴の一部しかコピーされないし、Gitサブモジュールもローカルの別ブランチじゃなくてリモートしか参照できないのが原因だよ。" userName="webstrand" createdAt="2025/10/26 14:14:47" color="#45d325">}}




{{<matomeQuote body="Webインターフェースじゃなくて、24時間稼働の無料ホスティングが重要なんだよ。ローカルにGitLabやGiteaを入れたり、IDEを使えばUIは手に入るけど、GitHubが解決する公開サーバーや課題追跡は無理。GitとGitHubの前もSourceForgeとかCodeProjectで無料でコードを共有してたしね。" userName="jasode" createdAt="2025/10/26 18:04:00" color="#38d3d3">}}




{{<matomeQuote body="コミットごとに1つのパッチが普通だよ。パッチってのは、そのコミットと親コミットの差分なんだよね。（親が2つある場合のgit format-patchの扱いは忘れちゃったけど。）" userName="kragen" createdAt="2025/10/26 23:52:49" color="">}}




{{<matomeQuote body="プロジェクトの外部者がプルリクエスト出すのにフォーク要求するのはGitHubの癖で、AGitをサポートするGiteaやForgejoならフォークなしでできるよ。https://forgejo.org/docs/latest/user/agit-support/。俺は曖昧さを避けるため、GitHubの個人フォークにはgh-＜username＞って名前を付けてるけどね。" userName="matrss" createdAt="2025/10/26 15:17:51" color="#ff5733">}}




{{<matomeQuote body="それだと、コミット自体が結構大きくなるってこと？それとも、変更が論理的にまとまってたら大きくなってもいいってことかな？一緒に仕事してる人たちのPRは、たいてい小さなコミットがたくさん集まってるんだよね。" userName="scuff3d" createdAt="2025/10/27 00:35:28" color="">}}




{{<matomeQuote body="いや、それはGitの普通機能だよ。俺の変更を君がプルするには、君がアクセスできる場所にホストする必要がある。SSHで別々のApacheサーバーを使ってるなら、君がプルできるように、俺のサーバーのフォークにプッシュしないとね。Gitではクローンは全部フォークだよ。AGitは他人のリポジトリにブランチをプッシュできるらしいけど、常に可能じゃないし、かなり独特なやり方だね。" userName="kragen" createdAt="2025/10/26 18:39:20" color="#785bff">}}




{{<matomeQuote body="別の投稿で、誰かがOverleaf（LaTeX版のGoogle Docs）の代替にGitを提案してたらしいよ。技術的には可能で専門家には使えるけど、もっと多くのユーザーが使えるUIがない、っていう盲点がある人って多いんだろうね。" userName="Certhas" createdAt="2025/10/26 16:00:42" color="">}}




{{<matomeQuote body="大きな変更を、それぞれ単独で意味のある小さなコミットに分けるのが基本だよ。そうすれば、LinusとかGreg Kroah-Hartmanみたいなレビュアーが早く理解してくれて、受け入れてもらいやすくなるからね。" userName="kragen" createdAt="2025/10/27 00:42:38" color="#ff5733">}}




{{<matomeQuote body="「リモートリポジトリをクローンしても履歴の一部しかコピーされない」ってのは間違いだよ。デフォルトでは完全な履歴とブランチが全部手に入るんだ。大きなバイナリファイルがあるリポジトリだと、それがGit LFSとかが必要になる理由でもあるんだよ。" userName="jonhohle" createdAt="2025/10/26 14:19:29" color="#785bff">}}




{{<matomeQuote body="Gitは元のアイデアを失ってないよ。ただ、みんながカーネル開発者みたいな使い方をしたがらないってことを学ばなかっただけ。GitHubみたいな簡単な体験を提供しなかったから、GitHubが席巻したんだ。プロジェクトごとに独立したメーリングリストを作るなんて、一般の開発者はあんまり興味ないんだよね。" userName="viraptor" createdAt="2025/10/27 01:53:19" color="#ff5733">}}




{{<matomeQuote body="なるほど、よく分かったよ。ありがとう、Linuxカーネルの仕組みにはずっと興味があったんだ。" userName="scuff3d" createdAt="2025/10/27 00:53:18" color="">}}




{{<matomeQuote body="君の言う通り、俺が間違ってた。Gitは実際にはリモートのコミット全部をフェッチするんだね（でも、notesみたいな参照の全てじゃないけど）。<br>ただ、自分のクローンをさらにクローンしても、リモートブランチはデフォルトでクローンされないから、部分的な履歴しか持たないことになる。俺が考えてたのはこっちのことなんだ。" userName="webstrand" createdAt="2025/10/26 22:29:38" color="#38d3d3">}}




{{<matomeQuote body="GitHubって、基本的に無制限のストレージスペースだよね。無限にマウント可能なストレージとして使うためのスクリプトも山ほどあるんだから。" userName="udev4096" createdAt="2025/10/26 18:15:34" color="">}}




{{<matomeQuote body="”origin”はクローンしたリモートのデフォルト名なだけで、何でもいいし、リモートもいくつでも持てるんだよね。<br>さらに、一つのリモートに複数のURLを持たせることもできるんだ！これはあまり知られてないけど（EclipseのEGitすら対応してない）、複数のミラーに同時にプッシュしたい俺のワークフローにはすごく役立ってるよ。" userName="mzajc" createdAt="2025/10/26 17:49:36" color="#ff5733">}}




{{<matomeQuote body="「開発者は一般的にツールの使い方を学ぶことに熱心じゃない」ってのが俺の感じ方かな。GitやCMakeの基礎を学びたがらないとかね。これは批判じゃなくて観察なんだけど、Gitが強力なツールを学びたい人向けに設計されたのは特徴だと思う。そうじゃないならMicrosoftを使えばいい。<br>面白いことに、貢献じゃなくて機能要求ばかり避けたい場合、俺はGitHub以外の場所にGitリポジトリを置くんだ。ほとんどのプロの開発者はGitHub以外を扱えないみたいだからね。SourceHutのボーナスポイントは、メーリングリストで適切なパッチを送れるなら、その人はできるってことだ。" userName="palata" createdAt="2025/10/27 07:04:31" color="#ff5733">}}




{{<matomeQuote body="同意。どのみち別の名前が必要になるし、”origin”と”upstream”の方が”github”や”my-fork”より良いだろうね。その慣習はCodeberg、SourceHut、TFSみたいな他のGitホスト全部にも適用されるべきだと思うから。" userName="grimgrin" createdAt="2025/10/26 15:15:27" color="">}}




{{<matomeQuote body="Gitのsubmoduleって、UXがすごく扱いにくいから、かなり特殊でしっかり管理されたケース以外では使わない方がいいと思うな。前にも使ったことはあるけど、それだけの価値がないとね。でも、君の言いたいことはよく分かるよ。" userName="isaacremuant" createdAt="2025/10/26 14:18:13" color="#785bff">}}




{{<matomeQuote body="「OverleafってGit連携がちゃんとしてるのがジョークなの？」" userName="cozzyd" createdAt="2025/10/26 18:56:24" color="">}}




{{<matomeQuote body="「“origin”はクローンしたリモートのデフォルト名だよね。<br>俺、dotfilesのリポジトリもう使ってないんだ。いつもプッシュ忘れちゃうし。Tailscale経由でデバイスにSSHアクセスできるから、『git remote add $hostname $hostname:.config』ってやってる。これならどこからでも『cd ~/.config && git fetch/pull/rebase $hostname』できるんだ。bare repoと$GITDIRも考えたけど、このシンプルなやり方が一番なんだよね。」" userName="lloeki" createdAt="2025/10/27 10:13:10" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「`git config receive.denyCurrentBranch updateInstead`じゃなくて、bare repository（`git init --bare`）を使うべきだよ。ローカル変更があるとプッシュが失敗するからね。<br>http://canonical.org/~kragen/sw/dev3/ の俺の環境では、http://canonical.org/~kragen/sw/dev3.git のpost-update hookからプルを実行してる。スクリプトはこれ:<br>`#!/bin/sh` <br>`set -e` <br>`echo -n ’updating... ’` <br>`git update-server-info` <br>`echo ’done. going to dev3’` <br>`cd /home/kragen/public_html/sw/dev3` <br>`echo -n ’pulling... ’` <br>`env -u GIT_DIR git pull` <br>`echo -n ’updating... ’` <br>`env -u GIT_DIR git update-server-info` <br>`echo ’done.’`<br>ローカルサイトジェネレーターも使えるけど、俺はHEADER.htmlをチェックインして、.htaccessをいじるライトなやり方をしてるよ。ローカル変更でマージ競合が起きると更新失敗もあるけど、bare repo自体は大丈夫だからね。」" userName="kragen" createdAt="2025/10/26 16:25:09" color="#45d325">}}




{{<matomeQuote body="「あと、USBメモリにbare repositoryを入れるのも便利だよ。」" userName="kragen" createdAt="2025/10/26 18:34:07" color="">}}




{{<matomeQuote body="「USBドライブには、bundleを使う方がいいかな。オフラインでのリポジトリ配布向けだしね。それに単一ファイルだから、たくさんの小さいファイルを転送するオーバーヘッドもないんだ。」" userName="3eb7988a1663" createdAt="2025/10/26 22:44:50" color="">}}




{{<matomeQuote body="「USBメモリにクローンする前にリポジトリをrepackできるし、一度入れたら何度もプッシュやプルができるよ。まあ、最近のUSBメモリは速いから、毎回bundle全体をコピーしても問題ないだろうけどね。」" userName="kragen" createdAt="2025/10/26 23:40:35" color="">}}




{{<matomeQuote body="「あのpost-updateスクリプトについて教えてくれる？<br>俺は『cd /home/kragen/public_html/sw/dev3』→『git update-server-info』→『git pull』の順でやるべきだと思うんだけど。<br>あと、git pullの後にまたgit update-server-infoを走らせる必要はないんじゃないかな。あれってプッシュ後に`info/refs`を更新するものだと思ってたんだけど。何か勘違いしてる？」" userName="PantaloonFlames" createdAt="2025/10/26 19:58:30" color="">}}




{{<matomeQuote body="「最初のupdate-server-infoはbare repoで実行されてるんだ。そこは俺がプッシュした場所で、sw/dev3がプルする元になるからね。<br>2番目のupdate-server-infoが必要かは俺もよく分からない。<br>もし`env -u`について聞いてるなら、それはGitがその変数を設定して、`cd`で別の場所に移動してもコマンドがどのリポジトリにいるか分かるようにするんだけど、俺はそれを望まないからだよ。」" userName="kragen" createdAt="2025/10/26 20:49:09" color="#ff5733">}}




{{<matomeQuote body="「もしかして俺が古いのかな？SSHアクセスがあればGitが使えるって、本当に知らない人いるの？」" userName="thyristan" createdAt="2025/10/26 12:17:36" color="">}}




{{<matomeQuote body="「ほとんどの人は『Git＝GitHub』って思ってるよ。」" userName="liveoneggs" createdAt="2025/10/26 12:20:36" color="">}}




{{<matomeQuote body="俺、2007年からGit使ってるのに、中央サーバーなしでGit使えるって去年やっと分かったんだよね。Gitは専門家によって使い方がバラバラだから、結局みんな適当にやって自分だけのGitウィザードになっちゃうんだ。" userName="__MatrixMan__" createdAt="2025/10/26 13:52:09" color="#ff33a1">}}




{{<matomeQuote body="うん、分かる。公式の中央リポジトリがないとプロジェクト開始できないって言われたことあるけど、俺は「git initだけでいいんだよ」って言ったんだ。でも、全然聞いてもらえなかったよ。" userName="thwarted" createdAt="2025/10/26 14:10:25" color="#ff5733">}}




{{<matomeQuote body="とんでもない！GitがGitHubじゃないって知ってる人でも、SSHでリモートGitが使えるって知らないかもね。俺がまさにそれ！Gitは大好きだけどGitHubは微妙なんだ。SSHだけでリモートにプッシュできるなんて知らなかったよ。サーバーなしでどう動くの？多分SSHの理解が足りないんだと思う。" userName="bfkwlfkjf" createdAt="2025/10/26 12:34:29" color="#45d325">}}




{{<matomeQuote body="理由によるんじゃない？だって、Gitがなくても、PCがなくてもプロジェクトは始められるでしょ。紙にペンでコード書くとかね。「プロジェクト」の意味次第だよ。もし会社のポリシーなら、コードの保存方法が決まってるのかもね。" userName="mewpmewp2" createdAt="2025/10/26 16:24:34" color="">}}




{{<matomeQuote body="「エキスパートがみんな微妙に違う使い方をする」って、それ何？Gitリポジトリがただのフォルダって知ってるのは「エキスパート」じゃないでしょ。基本的な知識だよ。悲しいけど、ほとんどのGitユーザーは仕組みを分かってないよね。まるでほとんどのドライバーがギアチェンジを知らないのと同じくらい変な状況だ。" userName="haskellshill" createdAt="2025/10/26 14:16:39" color="#785bff">}}




{{<matomeQuote body="Microsoftで働いてるの？新しいリポジトリ作るたびに書類仕事が多すぎて、サイドプロジェクトが全然進まないんだよね。俺は同僚にSSHや（大変だけど）OneDriveでコード共有できるって教えたら、彼らはゴミ箱の裏でドラッグを吸うみたいに「危険だ、トラブルになる、ありえない」って反応したよ。" userName="fingerlocks" createdAt="2025/10/26 14:54:38" color="#45d325">}}




{{<matomeQuote body="あんまり知られてないけど、ディレクトリからクローンできるんだよ。バックアップにはならないけど、これも一つの選択肢だね。" userName="politelemon" createdAt="2025/10/26 12:41:49" color="">}}




{{<matomeQuote body="大企業で働いてて、自分のサイドプロジェクトじゃないなら、正直それは良くないアイデアに聞こえるよ。" userName="mewpmewp2" createdAt="2025/10/26 16:21:09" color="">}}




{{<matomeQuote body="昔はDropboxにベアリポジトリを置いて、それをローカルにクローンしてたんだ。これで同期の競合も心配なく、コードもPC外にバックアップされたよ。GitHubにしてからやめたけど、`Codeberg`への移行を考えてる。`tailscale`のおかげで、個人PCをインターネットに公開しなくても選択肢がたくさんあって良いよね。" userName="t_mahmood" createdAt="2025/10/26 12:56:00" color="#ff5733">}}




{{<matomeQuote body="Gitは分散型だから、各コピーは独立してて他には依存しないんだ。リモートを追加するのは、fetch、pull、push操作のためにURLに名前をつけるだけ。コミットは不変でチェーンになるから、分岐や競合解決も簡単だよ。Gitはssh、git、http、httpsをサポートしてるし、サーバーは不要。単純なパスを使って、ドライブに他のリポジトリを保存することもできるんだ。" userName="skydhash" createdAt="2025/10/26 12:51:17" color="#785bff">}}




{{<matomeQuote body="Pro Gitの本はオンラインで無料で読めるんだよ。<br>https://git-scm.com/book/en/v2" userName="skydhash" createdAt="2025/10/26 14:02:50" color="#ff5c5c">}}




{{<matomeQuote body="NFSとかを使えば、共同作業もできるじゃん。" userName="superdisk" createdAt="2025/10/26 13:29:04" color="">}}




{{<matomeQuote body="それ、ダメなんだよね。俺も試したけど、数日か数週間で壊れちゃうんだよ。DropboxとかGoogle DriveとかOneDriveでも一緒。Gitの何百ものファイル操作に同期システムが対応しきれないみたいでさ。なんでかは謎だけど、俺以外にも多くの人が経験してるんだ。ファイル操作の順番が狂うって説もあるよ。" userName="crazygringo" createdAt="2025/10/26 23:43:42" color="#ff5733">}}




{{<matomeQuote body="GitをNFS経由で使うのは、あんまり良いアイデアじゃないよ。" userName="mvanbaak" createdAt="2025/10/26 18:16:00" color="">}}




{{<matomeQuote body="こんなに長いマニュアルを読まないとGitをちゃんと使えないなら、みんなのワークフローがバラバラなのも当然だよな、って思うよ。これじゃ問題だよね。" userName="kevmo314" createdAt="2025/10/26 19:49:10" color="#38d3d3">}}




{{<matomeQuote body="試したことはないけど、もし一人の人が書き込み権限を持つだけなら問題ないと思うんだ。クローン間でのプルは自由にできるしね。問題が起きるのは、2つのGitクライアントが同じリポジトリに書き込もうとする時なんじゃないかな。" userName="kragen" createdAt="2025/10/26 18:47:23" color="">}}




{{<matomeQuote body="みんなのワークフローが違うのも、Gitの全部を理解するのに長いマニュアルを読むのも、問題だとは思わないな。幾何学に王道なんてないんだから。Pro Gitは微積の教科書よりずっと短いよ。Gitは10分あれば役立つくらいには使えるようになるけど、その後の上達が遅いとガッカリするのかもね。" userName="kragen" createdAt="2025/10/26 23:56:08" color="#ff5733">}}




{{<matomeQuote body="みんながGitサーバーを使わない理由なんてないんだよ。ポリシーの問題じゃない。Git initですぐにリポジトリ作って作業を始められるし、後から共通の場所にpushすればいいだけ。このやり方を教えないで、共通リポジトリのセットアップを急がせるのは、無駄な負担をかけてるだけだよ。" userName="thwarted" createdAt="2025/10/26 20:06:50" color="#45d325">}}




{{<matomeQuote body="君、筆者の言いたいことを完全に誤解してるよ。筆者が言いたいのは、みんなGitHubに慣れすぎちゃって、Gitをオフラインで使うってことを忘れちゃってるってことなんだから。" userName="udev4096" createdAt="2025/10/26 18:23:45" color="">}}




{{<matomeQuote body="「サーバーはない」って言うけど、実はSSHデーモンがサーバーなんだよ。俺も今まで気づかなかったけどね。" userName="bfkwlfkjf" createdAt="2025/10/26 13:42:14" color="">}}




{{<matomeQuote body="「Git＝GitHub」って認識を批判するのは筋違いだと思うな。だって、ほとんどの人がそう教わったからだよ。新人プログラマーを育てるのは村全体でやるものなのに、「なんで学校はXを教えないんだ」って言う世の中は悲しいね。" userName="halJordan" createdAt="2025/10/26 12:26:57" color="#45d325">}}




{{<matomeQuote body="Z世代にとってファイルシステムやフォルダーは、なじみがなくて理解しにくい概念らしいよ。<br>https://www.theverge.com/22684730/students-file-folder-direc..." userName="ryandv" createdAt="2025/10/26 12:31:17" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="（Gitサーバーを持っていることが）大したことないってことはないよ。変な職場でなければ、OPが言ったようなことは全然大したことないし、ほとんどの人はもっと詳しく知りたいと思うはずだよ。" userName="udev4096" createdAt="2025/10/26 18:21:35" color="">}}




{{<matomeQuote body="詳しく説明してほしいな。同僚と画面共有したり、機密事項を話したり、リモートアクセスで全部操作させたりもできるのに、なんでプレーンテキストのコードを直接彼らのマシンにPushするのが、他の情報共有手段とそんなに根本的に違うって言うの？" userName="fingerlocks" createdAt="2025/10/26 17:45:14" color="">}}




{{<matomeQuote body="この方法でGitHubやGitLabみたいなCI/CDをやる面白い/クリエイティブな方法って何かある？ Pushした時に次何をすべきかを決めるエントリスクリプトとかかな？ Pushの目的みたいな変数ってどうやって決めるんだろう？" userName="candiddevmike" createdAt="2025/10/26 13:13:50" color="#38d3d3">}}




{{<matomeQuote body="実際にGitをどう使うかを知ってる人がほとんどいないってことを考えると、そうだね。" userName="bluedino" createdAt="2025/10/26 13:40:36" color="">}}




{{<matomeQuote body="うん。GitがMicrosoftの製品だって言う人を何人も聞いたことあるよ…。" userName="setopt" createdAt="2025/10/26 12:39:09" color="">}}




{{<matomeQuote body="一元化されたリポジトリには何を使ってるの？そもそもなんでそんなに何日もかかるの？" userName="mewpmewp2" createdAt="2025/10/26 20:17:56" color="">}}




{{<matomeQuote body="同じGitリポジトリディレクトリへの共有書き込みアクセスは、いくつか設定を正しくやれば安全にできるよ（全ユーザーを同じグループにする、全てグループ書き込み可能にする、ディレクトリにスティッキービットを設定する、`config core.sharedRepository=group`を設定する）。<br>https://stackoverflow.com/a/29646155" userName="kbolino" createdAt="2025/10/26 19:31:40" color="#ff5c5c">}}




{{<matomeQuote body="この考え方は何度強調しても足りないね。ざっくり言うと、GitHubはGitにとってGmailがEメールにとってと同じようなものだよ。ほとんどの人が使いたいし、うまく機能するならそれでいいけど、そもそも深く集中化させるのが目的じゃないってことを忘れちゃいけないんだ。この考えはGitの構造自体に組み込まれているからね。" userName="jrm4" createdAt="2025/10/26 14:30:24" color="#ff33a1">}}




{{<matomeQuote body="このコメント、HNで昔の議論を思い出したよ。80〜90年代のインターネット標準は、Tim Berners-LeeとかVint Cerfみたいな学術関係者や趣味のハッカーが公共の利益のために作ってたんだ。でも2000年代以降はGoogleみたいな大企業が主導するようになって、Gmailとかが生まれたよね。<br>ウェブはプロプライエタリなフルホスト型ソフトウェア（Google Docsとか）をユーザーが受け入れる仕組みを作っちゃった。それでオープンソースを推す人たちの努力も疎外されてる。GitHubみたいなのも変な妥協だよね。オープンソースのGitの上に成り立ってるのに、完全にプロプライエタリで中央集権的だもん。<br>引用元: https://news.ycombinator.com/item?id=42760298" userName="pixelmonkey" createdAt="2025/10/26 15:54:35" color="#38d3d3">}}




{{<matomeQuote body="うん、そうだね。正直、Free SoftwareとOpen Sourceは勝ったって言っちゃうほどだよ。完全な自由なユートピアってわけじゃないけど、それでも、これだけ多くのものが「十分に自由」な状態を保てたのは本当にすごいことだよ。" userName="jrm4" createdAt="2025/10/26 17:00:05" color="#ff33a1">}}




{{<matomeQuote body="GitHubはGitにとって、FacebookがEメールにとっての立ち位置って感じかな。GitHubの価値はネットワーク効果や、バグ追跡みたいな機能にあるんだよね。少なくともGmailは他のシステムと通信できるEメールクライアントだけど。" userName="unethical_ban" createdAt="2025/10/27 06:28:34" color="#785bff">}}




{{<matomeQuote body="DNSも同じような状況だよね。:-p" userName="m3047" createdAt="2025/10/26 18:25:08" color="">}}




{{<matomeQuote body="Gitが中央集権的な使い方をされないように設計されたのかは疑問だな。他のよくあるCLIツールと同じで、誰が使うか関係なくPCやサーバーで動くように設計されただけで、企業が製品にするのを止められなかっただけじゃない？TorvaldsはGitとLinuxを作ったけど、LinuxはGitHubに置かれてるし。" userName="morshu9001" createdAt="2025/10/26 14:39:10" color="">}}




{{<matomeQuote body="LinusがGitを書いた理由は、CVSやSVNみたいな既存の中央集権型ソース管理システムを受け入れたくなかったからなんだよ。それに、当時使ってたプロプライエタリな分散型ソース管理システムのライセンスが、Larry McVoyが癇癪を起こしたせいで取り消されちゃってさ。Linusはオープンソースの代替が必要だったから、Monotoneみたいなオープンソースのシステムを試したけど、機能過多とパフォーマンス不足だったから、結局自分で「バカなコンテンツトラッカー」って呼ぶGitを書いたんだ。" userName="kragen" createdAt="2025/10/26 23:31:49" color="#ff33a1">}}




{{<matomeQuote body="Gitは“CLI”じゃないし、「分散型」はまさにその設計のポイントだったんだよ。" userName="jrm4" createdAt="2025/10/26 16:58:22" color="">}}




{{<matomeQuote body="サイトで使われてる言葉もそうだけど、「分散型」がポイントで、「非中央集権型」じゃないんだ。CVSのひどい状況と対比して、便利さと信頼性のために分散型にしたって説明されてるよ。特定のエンティティが強大な力を持つことを避けるっていうのは、ユーザーがそう考えてるかもしれないけど、設計の目的ではなさそう。普通は「祝福された」って呼ばれるマスターリポジトリがあるしね。Redis clusterは分散型だけど非中央集権型じゃないし、sshプロトコルも違う。XMPP、Matrix、Bitcoinは連合方式で非中央集権型プロトコルだよね。<br>参照: https://git-scm.com/about/distributed" userName="morshu9001" createdAt="2025/10/26 21:47:54" color="#38d3d3">}}




{{<matomeQuote body="Gitは明確に非中央集権型に設計されたんだよ。" userName="ashton314" createdAt="2025/10/26 15:41:04" color="">}}




{{<matomeQuote body="LinuxはGitHubで開発されてないからね。" userName="semanticc" createdAt="2025/10/26 21:23:15" color="">}}




{{<matomeQuote body="ミラーでしかないんだけど、なんか承認されてるみたいに見えるね。" userName="morshu9001" createdAt="2025/10/26 21:53:13" color="">}}




{{<matomeQuote body="`git clone`のSSHコマンドの書き方、いくつかあるって知ってた？`username@hostname:/path/to/repo`みたいな省略形もあるし、パスにスラッシュがない場合はリモートのホームディレクトリから相対パスになるんだって。" userName="eqvinox" createdAt="2025/10/26 13:32:42" color="#785bff">}}




{{<matomeQuote body="Gitは`~/.ssh/config`も見てくれるんだって。これを使うと、ホストごとに設定を変えられるから、複数のGitHubアカウントを簡単に切り替えられて便利だよ。" userName="DrNefario" createdAt="2025/10/27 08:29:54" color="#38d3d3">}}




{{<matomeQuote body="これって考えたことなかったわ...。昔、Host AがGitHub.comに繋がらないけど、Host Bは繋がっててリポジトリのローカルコピーがあるって問題があったんだよね。Host BからHost Aに`git clone ssh://`でコピーするのって、手動プロキシみたいなもん？Host AがNATされてる場合とか、Gitで変更をpushできるのか？結局rsync使っちゃったけどさ。" userName="mlrtime" createdAt="2025/10/27 11:37:10" color="">}}




{{<matomeQuote body="`git remote`のドキュメント、読んでみるといいかもね。SSHを使えば、リポジトリ間で自由にpullやfetch、pushができるんだよ。" userName="eqvinox" createdAt="2025/10/27 14:01:08" color="">}}




{{<matomeQuote body="サーバー側のリポジトリはbareにしておけば、チェックアウトされたブランチとか、`.git`ディレクトリの名前変更について心配する必要がなくなるから楽だよ。" userName="seba_dos1" createdAt="2025/10/26 12:28:30" color="#38d3d3">}}




{{<matomeQuote body="記事が言ってる「サーバー上のファイルをラグなく編集する」ってユースケースだとbareリポジトリは使えないんだよね。でも、SSHで接続するサーバーが単に複数のマシン間でコードを同期するための中央リポジトリなら、bareリポジトリにすれば記事で触れてる色々な手間が解決されるから、その場合は君が正しいよ。" userName="cl3misch" createdAt="2025/10/26 13:26:54" color="#ff33a1">}}




{{<matomeQuote body="bareリポジトリがどう動くかの具体的な例は、ここのHacker Newsのコメントを見てみて！ https://news.ycombinator.com/item?id=45713074" userName="kragen" createdAt="2025/10/26 23:32:53" color="">}}




{{<matomeQuote body="なんか変だよね。単純にリモートを`$HOME/repos/foo.git`とかにして、そこからローカルとリモートでクローンしないのが。" userName="liveoneggs" createdAt="2025/10/26 13:39:24" color="">}}




{{<matomeQuote body="`receive.denyCurrentBranch=updateInstead`って、単一ユーザーがリモートのバージョン管理ディレクトリで作業するなら確かに合理的な使い方だよ。でも、記事ではこれが必ずしも一般的な選択肢じゃないってことをはっきりさせるべきだったと俺は思うな。" userName="seba_dos1" createdAt="2025/10/26 13:45:13" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
