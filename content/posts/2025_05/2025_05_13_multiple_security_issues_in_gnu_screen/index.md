+++
date = '2025-05-13T00:00:00'
months = '2025/05'
draft = false
title = 'GNU Screenに複数のセキュリティ問題が見つかる'
tags = ["GNU Screen", "セキュリティ", "脆弱性", "tmux", "システム管理"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> GNU Screenに複数のセキュリティ問題が見つかる

引用元：[https://news.ycombinator.com/item?id=43971716](https://news.ycombinator.com/item?id=43971716)




{{<matomeQuote body="記事良いねー＞ screenのマルチユーザーモードって知らなかったんだけど，tmateみたいなのができるのはこれのおかげなのかな．そういえばtmuxも同じ脆弱性の影響あるのかなって思うな．" userName="RMPR" createdAt="2025/05/13 11:51:43" color="">}}




{{<matomeQuote body="いや，tmuxはunix domain socket使ってるよ．なんでscreenがsetuidなんて方法選んだのか分かんないな； root権限なんて全然いらない気がするけど．追記：記事をさらに読むと，開発チームがコード詳しくないから，その代わりにsetuid-rootが一番楽だったのかもって説明があったよ．" userName="dooglius" createdAt="2025/05/13 12:08:06" color="#45d325">}}




{{<matomeQuote body="screenにはさ，1987年の最初のバージョンから引き継がれてる古い設計のクセがたくさんあるんだよね．set-UIDもその一つだよ．当時のドキュメントここに貼っとくね： https：//sources．vsta．org/comp．sources．unix/volume10/screen/" userName="JdeBP" createdAt="2025/05/13 12:14:13" color="#ff5733">}}




{{<matomeQuote body="個人的にはさ，screenって10年以上前からほぼ終わってる感じだったんだよね（！）．tmux出てきてからそっちに乗り換えて，全然screen使ってないし，周りにも結構そういう人いるよ．" userName="entropie" createdAt="2025/05/13 13:14:39" color="">}}




{{<matomeQuote body="同じようなことがzellijとtmuxの間でも起きてるんだよね．zellijに乗り換えてから，tmuxが古いって感じるようになったよ．" userName="dbdoskey" createdAt="2025/05/13 15:07:46" color="">}}




{{<matomeQuote body="screenの主な使い方ってリモートでemacs開くことなんだよね．tmuxの主な使い方ってunix IDEのつなぎ役って感じかな．この二つは全然違う使い方で，ツールもそれぞれに特化してるんだ．" userName="noosphr" createdAt="2025/05/13 13:38:59" color="#785bff">}}




{{<matomeQuote body="色々試してるんだけどさ，tmuxのキーバインド全然覚えられないんだよね．もうGNU Screenのキーバインドが頭に染みつきすぎちゃって．" userName="DrillShopper" createdAt="2025/05/13 14:02:06" color="">}}




{{<matomeQuote body="問題なのは screen -x ... の使い方そのものじゃなくてさ， ls -l ”$(which screen)　” の結果が -rwsr-xr-x 1 root root ... /usr/bin/screen みたいになってる場合なんだよね．これの4番目の s がsetuidビットが付いてる証拠で，つまりscreenがroot権限で動くってこと．<br>それが screen がroot権限で動くって意味なんだ．" userName="qwertox" createdAt="2025/05/13 12:29:59" color="#38d3d3">}}




{{<matomeQuote body="俺はsetuidのことよく知ってるよ。親コメントには実際の機能に使う引数を教えてあげてただけだよ。" userName="trollied" createdAt="2025/05/13 12:49:21" color="">}}




{{<matomeQuote body="Zellijは使ったことなかったけど、試してみたよ。見た目はtmuxよりいい感じだし、tmuxとキーバインドが似てるから乗り換えもスムーズだった。だけど、バイナリがめっちゃデカいんだよね。zellijがスタティックリンクなのはわかるけど、tmuxは900KiBくらいで依存も少ないのに。strippedしてもターミナルマルチプレクサが38MiBもあるなんて信じられないよ。" userName="fullstop" createdAt="2025/05/13 15:39:14" color="#ff5733">}}




{{<matomeQuote body="最初の投稿者がそれを知らなかったって聞いて驚いたよ。俺がscreenを使うことになった最初の理由（リモートデバッグセッションの共有）だったのにさ。" userName="johnmaguire" createdAt="2025/05/13 15:00:47" color="">}}




{{<matomeQuote body="長時間実行するジョブでは、システムからログアウトするとジョブの出力が止まっちゃうから、その状況を見たいってことがよくあるんだよね。" userName="esseph" createdAt="2025/05/14 00:22:32" color="">}}




{{<matomeQuote body="それ（Zellij）はtmuxより何がいいの？それともfishとzshみたいな感じ？どっちも古いわけじゃないけど、ターゲットユーザーが全然違うみたいな。" userName="lxgr" createdAt="2025/05/13 15:10:15" color="">}}




{{<matomeQuote body="あとは、SSHでシステムアップグレードしてる時みたいに、ターミナルセッションが切れるリスクを負えない場合とかね。" userName="qwertox" createdAt="2025/05/14 07:19:33" color="">}}




{{<matomeQuote body="確かにね、でもzellijは機能も多いし、一回起動したらそのまま使い続けるものだからバイナリサイズはまあいいんじゃない？単位を調整しないとね。MacでEmacsが350MBもRAM使ってるのを見て驚いたけど、マシンのRAMから見ればほんの少しだし、それより他のリソースで楽しいことしたいって思うよ。" userName="kstrauser" createdAt="2025/05/13 16:51:36" color="#ff5c5c">}}




{{<matomeQuote body="いくつか要因があるよ。プロジェクトの歴史が複雑で、開発者が何度も入れ替わってる。今screenの内部を学ぶのは、OSの歴史や移植性の問題があって昔よりずっと大変になった。擬似端末の動作やセキュリティ問題の対処もOSによってばらつきがある。screenは1980年代の考え方に縛られてる部分が多いんだ。例えばTERMCAPとかね。セキュリティに対する考え方も変わって、記事にあるセキュリティホールも昔は便利な機能だったりしたんだよ。" userName="JdeBP" createdAt="2025/05/13 13:51:02" color="#45d325">}}




{{<matomeQuote body="フラッシュが128MiBしかない組み込みデバイスをいくつか持ってるんだけど、tmuxはちゃんと動くよ。もちろん、この目的でzellijなんて考えもしないけどね。そこにtmuxが入ってるのは「開発目的には良いものだね」って感じ。メモリ使用量に関しては、Zellijは63MiBくらい使うみたいだけど、tmuxは3.8MiBだよ。良いんだけど、かなりメモリ食いだね。これはLinuxでの話で、Macだと違うかもね。" userName="fullstop" createdAt="2025/05/13 18:51:09" color="#785bff">}}




{{<matomeQuote body="システムアップグレードでセッション切れるなんてありえないだろ，少なくとも俺が知ってるほとんどの環境ではな．" userName="esseph" createdAt="2025/05/14 12:37:50" color="">}}




{{<matomeQuote body="いや，screenの主な使い道は，場当たり的に適当なスクリプトをデーモン化する方法だろ．" userName="jstanley" createdAt="2025/05/13 15:17:44" color="">}}




{{<matomeQuote body="組み込みは全然違うのは確かだね．あんな小さいのにtmuxを入れる余地があるなんて驚きだよ．でもデスクトップシステムなら，俺のMacだとZellijはディスク28MB，RAM40MBしか食わないんだ．これは利用可能なディスクの3万7000分の1，RAMの1600分の1だ．最適化されてて小さいアプリは大好きだけど，これくらいだと俺の注意を引くほどでもないな．" userName="kstrauser" createdAt="2025/05/13 19:09:15" color="#ff5733">}}




{{<matomeQuote body="ネストできるようにわざわざキーを変えたらしいけど，プレフィックスキーは意図的に分かりにくくしてあって，再マッピングされる前提だって言ってるぜ，たぶんscreenみたいに^aに．" userName="jethro_tell" createdAt="2025/05/14 04:43:35" color="">}}




{{<matomeQuote body="リスクは，インタラクティブな長時間実行プロセス中に他の何かが接続を切断することだ．nohupを使うか，screenかtmuxみたいなものの中で実行すればいい．" userName="ycombobreaker" createdAt="2025/05/14 13:59:08" color="">}}




{{<matomeQuote body="^aはemacsユーザーにとって最悪だよ，だって^aは行頭への移動で，めっちゃ使うんだもん．何年か前に初めてscreenを使い始めたとき，emacswiki（だと思う）でも言及されてて，^pに再マップするのをおすすめしてたんだ．それ以来screenとtmuxで俺はそうしてるよ．（なんか記憶違いかも）" userName="entropie" createdAt="2025/05/14 16:05:07" color="#ff5733">}}




{{<matomeQuote body="俺のシステムではscreenはsetuid持ってないな．" userName="guappa" createdAt="2025/05/13 13:43:21" color="">}}




{{<matomeQuote body="OpenBSDへの移植のような作業は大変だ．特に今は難しくて，昔（90年代）の方が情報源（Usenetなど）があってやりやすかった．1980年代にscreenを修正したり自分で似たプログラムを書いたりした経験から言ってる．<br>https://jdebp.uk/FGA/bernstein-on-ttys/" userName="JdeBP" createdAt="2025/05/13 14:46:04" color="#ff5733">}}




{{<matomeQuote body="注：Debianでは，GNU screenはsetuid-root権限でインストールされてないよ．" userName="teddyh" createdAt="2025/05/13 12:09:43" color="#45d325">}}




{{<matomeQuote body="それにDebian Stable（別名 bookworm）に入ってるパッケージは古すぎてバージョン5．0．0の脆弱性には影響されないんだ．昔はDebianがいつもソフトのバージョン遅れてるのが嫌いだったけど，今はどうしても古いのに頼りたくない数少ないアプリ（ブラウザとか）には別のパッケージソース使ってるし，それ以外は古いのでも全然大丈夫だよ :-) " userName="perlgeek" createdAt="2025/05/13 13:24:44" color="#45d325">}}




{{<matomeQuote body="Debian stableのユーザーはheartbleedに全く引っかからなかったんだよね．この氷河みたいなペース，もっと評価されていいと思うよ．" userName="bandrami" createdAt="2025/05/14 02:45:22" color="#785bff">}}




{{<matomeQuote body="＞ Debian stableのユーザーはheartbleedに全く引っかからなかったんだよね<br>引っかからなかった？とんでもない，Debianは何年も前にあの手のバグの先駆けだったんだよ！<br>https://github.com/g0tmi1k/debian-ssh" userName="rs_rs_rs_rs_rs" createdAt="2025/05/14 09:49:45" color="">}}




{{<matomeQuote body="それにデフォルトのSELinuxの設定もたしか15年くらい壊れてたんだよね．いつも何かしら問題はあるってことさ．" userName="bandrami" createdAt="2025/05/14 12:38:25" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="氷河みたいに遅いベースのOSに，オプションでサンドボックス化されたもっと新しいユーザーランドのパッケージとかランタイムをホストシステムの上に乗せるって構成，Flatpak／Snap／AppImageの夢だったよね？" userName="krferriter" createdAt="2025/05/14 02:57:51" color="">}}




{{<matomeQuote body="うん，でもそれには問題もあるよね．サンドボックスアプリが触るデータこそ大事なデータだし．SilverblueシステムでOpenSSLいくつ動いてるかなんて正直分かんないし．Flathubの誰かが保証してるだけのアプリが金融情報盗む可能性もある．でもシステムファイルを消したりはできない．" userName="bandrami" createdAt="2025/05/14 04:11:21" color="">}}




{{<matomeQuote body="それ良い視点だね．でも付け加えるなら，君が実行してる別のFlatpakアプリは，君の金融情報にアクセスするのちゃんとサンドボックスされてるかもしれない．それこそがこういうシステムの本当のメリットだよ．" userName="rlpb" createdAt="2025/05/15 16:16:02" color="">}}




{{<matomeQuote body="関連：<br>https://bugzilla.mozilla.org/show_bug.cgi?id=1966096<br>DebianでFirefoxを使ってる人は手動でアップデートしてね．パッケージリポジトリが落ちてるから．最初’サポート’チケット出したけど見られてないみたい．" userName="mjevans" createdAt="2025/05/13 13:35:15" color="">}}




{{<matomeQuote body="Mozillaのリポジトリはパッケージのインストールやアップデートには使えそうだよ。Googleのサーバーっぽいからファイル一覧は見れないけど。apt-getでchangelog見たり、パッケージを再ダウンロードできたりすることは確認したよ。" userName="sillystuff" createdAt="2025/05/13 16:12:59" color="">}}




{{<matomeQuote body="他の読者のために明確にしとくね。Debianのfirefox-esrパッケージはFirefoxだよ。単にMozillaのExtended Support Release版で、君が使ってるRapid Release版とは違うってだけ。別のプロジェクトや製品じゃないからね。" userName="foresto" createdAt="2025/05/13 23:34:49" color="">}}




{{<matomeQuote body="ちなみに、Slackware 15だとscreenのバージョンは4.9.0で、suidはついてないみたい。" userName="jmclnx" createdAt="2025/05/13 13:22:35" color="">}}




{{<matomeQuote body="追記ね、Slackware 15はscreenが4.9.1にアップデートされてるよ。このアップデートでセキュリティ問題が直ったんだ。具体的には、PTYの一時的な0666モードを防いだり、ファイル存在テストの情報漏洩を防いだり、root権限でシグナルを送らないようにしたりね。" userName="jmclnx" createdAt="2025/05/14 00:49:33" color="#ff33a1">}}




{{<matomeQuote body="Gentooでも同じだよ。でもGentooだとutmpグループに対してSETGIDが付いてるんだ。これってどういう意味があるのかよく分かんないけど。" userName="jesprenj" createdAt="2025/05/13 12:27:56" color="">}}




{{<matomeQuote body="utmpグループにいると、ログイン情報データベースをいじれちゃうんだ。Unixから受け継いだこのシステムは、screenみたいな偽端末を使う非rootプログラムがデータベースに書き込みたいっていうのと、rootだけが管理するっていう元々の設計がうまく合ってないのが問題。Laurent Bercotさんがクライアント・サーバーモデルにして改善したけど、グループ内のクライアントならログイン情報を上書きできるっていう設計上の問題はまだ完全に解決してないよ。" userName="JdeBP" createdAt="2025/05/13 13:29:11" color="#ff33a1">}}




{{<matomeQuote body="だから、TMPDIRを$HOME/tmpにしたんだ。" userName="anthk" createdAt="2025/05/13 14:00:42" color="">}}




{{<matomeQuote body="名前以外は、TMPDIRとutmpは関係ないよ。" userName="blueflow" createdAt="2025/05/13 17:20:42" color="">}}




{{<matomeQuote body="分かってるよ。でも、いくつかの潜在的な競合状態を緩和できるんだ。" userName="anthk" createdAt="2025/05/13 17:46:03" color="">}}




{{<matomeQuote body="Fedoraに入ってるみたいだね。" userName="ktm5j" createdAt="2025/05/13 12:37:42" color="">}}




{{<matomeQuote body="Fedoraでは、rootじゃなくてsetgid screenになってるよ。" userName="mlichvar" createdAt="2025/05/13 13:31:53" color="#785bff">}}




{{<matomeQuote body="攻撃対象領域を減らすSELinuxポリシーがあるのかな" userName="znpy" createdAt="2025/05/13 13:16:04" color="">}}




{{<matomeQuote body="ほぼ確実にあるよ、Fedoraはベースにある全てのソフトウェアにSELinuxポリシーがあるはずだから。" userName="JCattheATM" createdAt="2025/05/13 18:17:51" color="">}}




{{<matomeQuote body="Archでも同じだよ。" userName="tmtvl" createdAt="2025/05/13 13:17:13" color="">}}




{{<matomeQuote body="レンダリングされたブログ記事はこちらだよ：https://security.opensuse.org/2025/05/12/screen-security-iss" userName="jedimastert" createdAt="2025/05/13 12:37:16" color="#785bff">}}




{{<matomeQuote body="Screenのログ機能のドキュメント足りない件でさ、作者にメールしたんだ。http://www.zoobab.com/screenrc ってとこ。<br>GNUってさ、もっとちゃんとした課題追跡システム要るよね：）" userName="zoobab" createdAt="2025/05/13 12:46:59" color="">}}




{{<matomeQuote body="Tmuxの作者とのQ＆Aがあったんだけどさ。16年くらい前にドキュメントが足りないって愚痴ってたんだよ。https://undeadly.org/cgi?action=article＆sid=20090712190402" userName="CelestialMystic" createdAt="2025/05/13 13:40:23" color="">}}




{{<matomeQuote body="TmuxはずっとOBSDのベースに入ってるし、最初からドキュメントもあるよ。" userName="anthk" createdAt="2025/05/13 13:59:33" color="">}}




{{<matomeQuote body="GNU screenのマニュアルに詳しく載ってるよ。ここね。https://www.gnu.org/software/screen/manual/screen.html#Log" userName="amszmidt" createdAt="2025/05/14 06:09:08" color="#ff5733">}}




{{<matomeQuote body="古いプロジェクトの課題追跡システムは、メーリングリストやIRCで情報が埋もれやすいのが問題だよね。Discordもそうだけど、IRCはもっとひどい。<br>GiteaとかForgejoとかCodeberg、GitLab、GitHubみたいな新しいシステムに移行して、情報を一箇所にまとめて、探しやすくしてほしいな。" userName="Avamander" createdAt="2025/05/14 10:49:23" color="#38d3d3">}}




{{<matomeQuote body="Zellijってさ、screenやtmuxの代わりに使えるマジでナイスな今どきのやつなんだ。<br>デフォルト設定もすっごく良いし、UIも分かりやすいようにマジで頑張ってる。<br>ターミナルマルチプレクサのメリットに対して、覚えるのがめんどくさいなって思ってる人に超おすすめだよ。<br>https://zellij.dev<br>https://github.com/zellij‐org/zellij" userName="sundarurfriend" createdAt="2025/05/13 15:32:36" color="#ff5733">}}




{{<matomeQuote body="2年くらい前に試してみたんだけどさ、かなり洗練されてたよ。<br>でも、レイテンシがtmuxに比べて結構気になったんだ。<br>当時すでに回線が遅かったこともあって、それに結構敏感なんだよね。だから今もtmux使ってる。" userName="collinvandyck76" createdAt="2025/05/13 15:39:57" color="">}}




{{<matomeQuote body="私は個人的には感じなかったんだけどさ、そういうのって人によって感じ方が違うもんね。<br>最近また試してみた？ 2年前って言ったら、もうすごく前だよ。<br>まだもっさり感じるのか気になるな。（開発者じゃない、ただのユーザーだけどね。）" userName="kstrauser" createdAt="2025/05/13 17:01:05" color="">}}




{{<matomeQuote body="最後にZellijを見た時，マルチプレクサのエコシステムでは素晴らしい新しいプロジェクトに見えたんだけど，純粋なキーボード操作でのコピペ機能がサポートされてなかったんだ。俺はそれをめっちゃ使うから，それ無しじゃ無理だった。だからそれが追加されるまでtmuxだな。" userName="afmrak" createdAt="2025/05/14 03:20:35" color="">}}




{{<matomeQuote body="うん，俺もいつもあれを使ってるよ。キーボード操作にこだわってターミナルを使ってるから，コピペ機能はマジ必須なんだ。なんでマルチプレクサ作るのにこれが無いのか理解できないね。screenやtmuxみたいにvimショートカットでスクロールバックバッファをナビゲートできるのが超便利で，作業がマジ速くなる。マウスなんて使いたくないんだよ。" userName="gitaarik" createdAt="2025/05/14 18:44:01" color="#38d3d3">}}




{{<matomeQuote body="それは良いんだけどさ，俺はマジで，マジでscreenが好きなんだ。コマンドが筋肉記憶に焼き付いてるんだよ。20年以上使ってるからね。" userName="fergie" createdAt="2025/05/14 08:02:28" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="初めてtmuxを試した時，俺も同じ感じだったよ。でも結局，screenのショートカットにめっちゃ近くするようにtmuxを設定したんだ。違うのはいくつかだけだけど，それでtmuxの追加機能やプラグインが使えるようになったんだ。興味あるなら俺の設定ファイル共有できるよ。" userName="gitaarik" createdAt="2025/05/14 18:47:01" color="">}}




{{<matomeQuote body="今回の件にupstreamが関わってたのは意外だな。5年くらい前，GNU screenの開発は完全に止まったって（悲しい）結論に至ったんだけど，まだそうじゃないのか？<br>あと，既存のscreenにアタッチしないで新しいウィンドウを追加する機能ってscreenにあるんだっけ？" userName="mmsc" createdAt="2025/05/13 12:05:31" color="">}}




{{<matomeQuote body="オープンソースって，あるソフトが終わってそれを置き換える別のソフトが作られる時に，乗り換える即座のインセンティブがないっていう慣性の問題があるよね。アップデートじゃなくてスイッチだからさ。一方で，Audacityみたいに既存ソフトの商標を誰かが買って全く別のものに置き換えちゃうのも悪い。だから良い解決策って無いんだよな。" userName="immibis" createdAt="2025/05/13 13:16:08" color="">}}




{{<matomeQuote body="これってdistroの役目じゃないの？例えばDebianがscreenをtmuxに置き換えることを決めて，もしかしたらscreenと同じコマンドライン引数を受け付けるけど内部的にはtmuxを使うみたいな互換性パッケージを出すとか。（俺はscreenをほとんど使ったことないしtmuxも使ったことないから，この文脈でこれが意味をなすかは分からないけど。)" userName="Wowfunhappy" createdAt="2025/05/13 13:27:14" color="">}}




{{<matomeQuote body="upstreamがSUSEチームに見てもらうよう依頼したらしい。開発は人員不足で，upstreamには適切にメンテする専門知識がないのかもしれない。もしそれが本当なら悲しいね―tmuxとか他のがあるのは知ってるけど，たくさんの人が何年もScreenを使ってきたんだから。ツールがbitrotするのは最悪だよ。" userName="jzb" createdAt="2025/05/13 12:51:58" color="#ff5c5c">}}




{{<matomeQuote body="どう見てもtech-debtまみれの巨大なソフトで，新しい開発者には理解できないみたいだね。もしそうなら，”人員不足”じゃなくて，置き換えられるか書き直されるまで腐っていく運命なんだよ。良いニュースは，ほぼ完璧な代替品がそこら中にあって，しかもほとんどがもっとスリムってことだな。" userName="marcosdumay" createdAt="2025/05/13 13:51:33" color="">}}




{{<matomeQuote body="Tmuxはシリアルポートに対応してないよ。" userName="kevin_thibedeau" createdAt="2025/05/13 13:44:03" color="#ff33a1">}}




{{<matomeQuote body="screenのカジュアルユーザーなんだけど、代わりにどんなツールを見ればいいの？" userName="doctoboggan" createdAt="2025/05/13 16:36:40" color="">}}




{{<matomeQuote body="screenより良いのが欲しいならtmux。<br>概念を見直したのが欲しいならzellij。<br>俺は後者の方が好きだな。自分の考え方と合ってるし、多くの人が乗り換えて良かったって言ってるよ。前者（tmux）を毎日使ってる人も多いけどね。" userName="kstrauser" createdAt="2025/05/13 16:57:18" color="#785bff">}}




{{<matomeQuote body="tmuxは素晴らしいけど、screenの9割の使い道”切断したりログアウトしてもプロセスを動かし続けたい”には高機能すぎるんだよね。<br>moshもうまくいったことがあるけど、これもなんか停滞してるみたい。<br>https://mosh.org<br>俺の使い道にはこれで十分だけどね。" userName="bombcar" createdAt="2025/05/13 18:03:58" color="#ff33a1">}}




{{<matomeQuote body="GNUツールの開発が止まるのが必ずしも悲しいわけじゃないよ（バグ修正以外はね）。それは基本的に完成してるってことの表れだと思うんだ。" userName="criddell" createdAt="2025/05/13 13:44:07" color="">}}




{{<matomeQuote body="なんで”screen”が2つの別々の機能を統合したのかよく分かんないんだよね。シリアルポートアクセスには”tio”みたいなもっとミニマルなものを使えるし、そっちの方がずっとエレガントだよ。" userName="PhilipRoman" createdAt="2025/05/13 13:56:53" color="#ff5733">}}




{{<matomeQuote body="setuid-rootで配布してる限りは関与してるってこと。<br>そう設定してるDistrosは脆弱だけど、そうじゃないのは大丈夫。<br>ほとんど関与してないって言えるかな。’<br>upstreamが遅すぎたらDistrosがパッチ当てるしね。" userName="croemer" createdAt="2025/05/13 12:18:29" color="#785bff">}}




{{<matomeQuote body="シリアルポートって何？何に使うの？" userName="im3w1l" createdAt="2025/05/13 15:47:57" color="">}}




{{<matomeQuote body="TFA（記事）によると、upstreamがレビューを求めたって書いてあるよ。" userName="mmsc" createdAt="2025/05/13 12:20:06" color="">}}




{{<matomeQuote body="普通、ああいう風にツールを別のものに透過的に置き換えることはできないよ。互換性がない例を他のコメントでみんな挙げてくれてるし。<br>もしDistrosがこっそり置き換えようとしたら、ユーザーの間で大騒ぎになるだろうね。<br>せいぜい、それを望む人向けに”tmux-as-screen”みたいなパッケージを提供できるくらいじゃない？" userName="layer8" createdAt="2025/05/13 17:15:03" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
