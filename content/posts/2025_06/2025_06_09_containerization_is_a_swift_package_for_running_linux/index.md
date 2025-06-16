+++
date = '2025-06-09T00:00:00'
months = '2025/06'
draft = false
title = 'macOSでLinuxコンテナが動く！ Swift製パッケージが登場、Apple公式開発'
tags = ["macOS", "Linux", "コンテナ", "Swift", "開発ツール"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> macOSでLinuxコンテナが動く！ Swift製パッケージが登場、Apple公式開発

引用元：[https://news.ycombinator.com/item?id=44229348](https://news.ycombinator.com/item?id=44229348)




{{<matomeQuote body="これに関するビデオだよ！<br>https://developer.apple.com/videos/play/wwdc2025/346/<br>コンテナごとに軽いLinux VMが動くみたい。<br>このツールをDLすれば試せるよ→ https://github.com/apple/container/releases (macOS 26が必要だけどね)" userName="commandersaki" createdAt="2025/06/09 22:41:26" color="#38d3d3">}}




{{<matomeQuote body="”コンテナごとに軽いLinux VMが動く”ってのは、”本来の”コンテナじゃないってことだね。<br>Linuxのシステムコールをエミュレートするのって、どれくらい大変なのかな？" userName="zoobab" createdAt="2025/06/10 06:28:10" color="">}}




{{<matomeQuote body="＞ コンテナごとに軽いLinux VMが動くみたい。<br>それ、結構重そうだけど…？<br>12個コンテナ動かすプロジェクトだと、カーネルが1個じゃなくて12個動くってこと？<br>この方式の性能データが見たいな。" userName="WhyNotHugo" createdAt="2025/06/10 10:40:02" color="">}}




{{<matomeQuote body="＞ Linuxのシステムコールをエミュレートするのって、どれくらい大変なのかな？<br>不可能ではないけど、かなり大変だよ。MicrosoftがWSL1でやったけど、WSL2では諦めたんだ。" userName="teruakohatu" createdAt="2025/06/10 06:34:19" color="#ff5c5c">}}




{{<matomeQuote body="WSL1で”やった”ってわけじゃなくて、やろうとしてたけど、全部カバーするのが大変すぎて諦めてVM方式にしたんだよ。<br>WSL1はWindows上で動く完全なLinuxエミュレーターには程遠かったんだ、一般的なタスクはできたけどね。" userName="tsimionescu" createdAt="2025/06/10 07:43:53" color="#45d325">}}




{{<matomeQuote body="なんでLinuxだけがVMなしで”本当の”コンテナができるんだろうって、いつも思ってたんだ。<br>技術的な色々なハードルについて書かれた良いブログ記事とかないかな？" userName="benwad" createdAt="2025/06/10 08:16:39" color="">}}




{{<matomeQuote body="いや、違うよ。Dockerはホストのカーネルを使うから、追加のカーネルはゼロなんだ。<br>Linux以外のOSでは、当然Linuxカーネルを追加で動かす必要がある。今回の場合だと、追加のカーネルがN個動くことになるね。" userName="WhyNotHugo" createdAt="2025/06/10 12:01:36" color="#ff5733">}}




{{<matomeQuote body="このアプローチは、Kata ContainersとかFirecrackerで使われてるやつと同じだよ。<br>共有カーネル方式と比べて重さはそんなに変わらないけど、セキュリティはめちゃくちゃ上がるんだ。<br>VMの性能的なオーバーヘッドは最小限だけど、コンテナの起動時間はトレードオフになるね。" userName="haiku2077" createdAt="2025/06/10 14:18:33" color="#45d325">}}




{{<matomeQuote body="＞ Linux以外のOSでは、当然Linuxカーネルを追加で動かす必要がある。<br>それは実際そうだけど、必ずしも必須じゃないと思うな。<br>WSL1みたいに、かなり違うOSの上でLinuxのシステムコールをエミュレーションする層を作ることは可能だからね。" userName="quietbritishjim" createdAt="2025/06/10 12:10:35" color="#45d325">}}




{{<matomeQuote body="面白い選択だね～。それってコンテナ同士の連携が難しくなって、コンテナごとのオーバーヘッドも大きくなるってこと？共有VMの方がいいと思ったんだけどなぁ。何でこれを選んだんだろ？" userName="zmmmmm" createdAt="2025/06/10 01:14:27" color="">}}




{{<matomeQuote body="WSL1ってさ、本当はVMじゃなかったんじゃない？たしかWindowsのカーネル上でシステムコールを動かしてたはずだよ。" userName="paulryanrogers" createdAt="2025/06/10 12:28:12" color="">}}




{{<matomeQuote body="いやいや逆だよ。DockerがVMよりいいのは、OSの共有部分は1個だけで動くから、VMよりリソースを使わないし、イメージもOSが入ってないから小さいんだって。" userName="rtkwe" createdAt="2025/06/10 11:52:25" color="">}}




{{<matomeQuote body="Windowsだって“本当の”コンテナはできるんだぜ。まあ、そういうコンテナではLinuxのイメージは動かないけどさ。" userName="notpushkin" createdAt="2025/06/10 08:20:23" color="">}}




{{<matomeQuote body="Linuxのシステムコールをエミュレートするのってどれくらい大変なの？FreeBSDにはlinuxulatorがあるし、illumosにはlx-zonesってのがあって、”コンテナ”の中でLinuxのバイナリを動かせるんだ。何でAppleは同じようなことしなかったんだろ？" userName="NexRebular" createdAt="2025/06/10 08:19:28" color="">}}




{{<matomeQuote body="この場合の”lightweight”ってのは、Linuxのカーネルを1個だけ共有してるか、LinuxのカーネルAPIをmacOSに変換するエミュレーション層があるかのどっちかだと思うよ。どっちにしろ、コンテナごとにLinuxカーネルを動かしてるわけじゃないと思うんだ。" userName="solarexplorer" createdAt="2025/06/10 12:14:13" color="">}}




{{<matomeQuote body="macOSは知らんけど、他の主要OSは今どきコンテナをネイティブに動かせるんだぜ。でも、Linux以外のコンテナなんてほとんど興味持たれないけどね。WindowsのネイティブコンテナでKubernetesをWindowsのバイナリとして動かすのは絶対できるけど[0]、誰がそんなことする？<br>コンテナってのは、ホストOSのカーネルに頼るのが定義なんだ。だからWindowsコンテナはWindowsのシステムコールを使うWindowsバイナリしか動かせない。LinuxのバイナリをWindowsコンテナで動かすのは、Windowsでそのまま動かせないのと同じだよ。WindowsコンテナでWordは動くけど、GCCは無理。<br>[0] https://learn.microsoft.com/en-us/virtualization/windowscont..." userName="tsimionescu" createdAt="2025/06/10 09:48:27" color="#ff5733">}}




{{<matomeQuote body="Windowsでの使い道はそんなにないと思うけど、昔の.NET Frameworkのアプリを動かすのには結構使えるんじゃないかな。" userName="kcoddington" createdAt="2025/06/10 11:36:56" color="">}}




{{<matomeQuote body="RAMのオーバーヘッドはバカにならないことがあるよ。カーネルごとにページキャッシュを持ってるからね。" userName="surajrmal" createdAt="2025/06/10 14:53:40" color="#45d325">}}




{{<matomeQuote body="え、そうなの？俺の理解だと、WindowsコンテナにはHyper-Vが必要で、イメージ自体にNTカーネルが入ってるみたいなんだ。それじゃ、ビルドされたバージョン以外のWindowsじゃ動かないみたいだしね。" userName="dijit" createdAt="2025/06/10 11:00:16" color="">}}




{{<matomeQuote body="コンテナってのは基本的にLinuxカーネルのcgroupsっていう機能をラップしたツールなんだよね。レイヤードFSとか配布方法みたいな追加要素もあるけど。systemdと一緒にcgroupsだけ使うこともできるし。他のOSでも似たようなことはできるだろうけど、結局ほとんどのコンテナ化されたソフトはLinuxソフトだから使えなくなるんだ。" userName="ownagefool" createdAt="2025/06/10 08:35:19" color="">}}




{{<matomeQuote body="Appleって、なんで共有VMじゃなくて分離VMアプローチを選んだんだろう？セキュリティをそこまで気にする理由が分からないな。だってAppleハードウェアが本番環境でコンテナホストに使われることなんてなさそうじゃん。むしろ開発用で使われることが多いだろうし、そっちだとメモリオーバーヘッドが気になるんだけど。" userName="Yeroc" createdAt="2025/06/10 19:26:25" color="">}}




{{<matomeQuote body="BSDにはJailsっていうBSDコンテナが10年以上前からあるんだぜ？コンテナの性質上、カーネルがないからホストと同じOSじゃないとダメなんだ。そうじゃないとVMルートになるしかない。" userName="bayindirh" createdAt="2025/06/10 08:50:21" color="">}}




{{<matomeQuote body="動画に映ってるMichael Crosbyさんに拍手！彼こそがOpen Containers（https://opencontainers.org）をv1.0にするのに貢献した中心人物なんだ。大変なプロセスだったけど、彼は常に冷静で力強かった。" userName="philips" createdAt="2025/06/10 21:58:55" color="">}}




{{<matomeQuote body="そうだね、WSL1はVMじゃないよ。言った通り、あれは「全く違うOSの上にLinux syscallをエミュレーションするレイヤー」だね。俺の言いたかったことは、原理的にはVMを使わずに他のOSでLinuxコンテナを実装できる可能性があるってこと。でも、君が言ったように（そして俺も言ったように）、実際には誰もやってない。VMを使うより手間がかかるし、それだけの価値がないんだろうね。特に、すべてのコンテナが単一のVMを共有できるから、結局カーネルは2つしか実行しない（例えば10個のコンテナで11個とかじゃなくて）。それこそDocker on WSL2の仕組みだよ。" userName="quietbritishjim" createdAt="2025/06/10 12:49:05" color="">}}




{{<matomeQuote body="「Protocolの新しいレポートによると、Appleはこの数ヶ月間、クラウドコンピューティング分野で大量採用を行っている…。Michael Crosbyは、今年Appleに入社した数名の元Dockerエンジニアの一人だ。彼こそが今日のコンテナを生み出してくれた人物で、その全ての原動力となったエンジニアだと、匿名の元同僚は語った。」<br>https://9to5mac.com/2020/05/11/apple-cloud-computing/" userName="discohead" createdAt="2025/06/10 22:13:16" color="#ff5733">}}




{{<matomeQuote body="cgroupsはリソース割り当て（CPU、RAMとか）の制御用だよ。君が言いたいのはおそらくnamespacesのことじゃないかな。" userName="xrisk" createdAt="2025/06/10 08:50:04" color="">}}




{{<matomeQuote body="macOSの上にVMでLinuxカーネルを一つ動かして（L0）、そのホストOSの中でコンテナを12個動かすっていう構成も考えられるね。" userName="AdamN" createdAt="2025/06/10 12:53:56" color="">}}




{{<matomeQuote body="コンテナ化ってのは、ホストのリソースをどれだけ使うかじゃなくて、その仕組みが大事なんだよね。ホストサービスなら、リソース共有でコスト抑えるためにたくさんのコンテナを1つのカーネルで動かすか、VMで隔離するか選ぶ感じ。でも開発なら、動かしたいコンテナの合計リソースがシステムに負荷かけすぎなきゃ、そんなに気にしなくて大丈夫だと思うよ。" userName="dwaite" createdAt="2025/06/10 16:50:28" color="#ff5733">}}




{{<matomeQuote body="プレスリリースとかWWDCセッションで出てたCLIは、このGitHubリポジトリにあるよ→https://github.com/apple/container<br>個人的に興味あったんだけど、最新のXcode Betaにはまだ入ってないみたい。まだプリビルドパッケージはないけど、作業中らしいね→https://github.com/apple/container/issues/54" userName="sangeeth96" createdAt="2025/06/09 22:22:48" color="#ff5c5c">}}




{{<matomeQuote body="あ、あなたのコメントからちょうど1分後にプリビルドパッケージがリリースされたみたいだよ！ここにあるよ→https://github.com/apple/container/releases/tag/0.1.0" userName="n2d4" createdAt="2025/06/09 22:58:35" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="この件、Hacker Newsでも議論されてるよ→https://news.ycombinator.com/item?id=44229239" userName="OJFord" createdAt="2025/06/09 23:36:10" color="">}}




{{<matomeQuote body="これについてDockerはどう思ってるんだろうね？Docker DesktopってMacユーザーがかなり多いだろうし…。" userName="candiddevmike" createdAt="2025/06/09 21:43:25" color="">}}




{{<matomeQuote body="DockerとしてはDocker Desktopの開発がめちゃくちゃ楽になるんじゃない？もう裏で独自のLinux VMを動かす必要なくなるんだから。でも、DockerのCLIとかUX、Docker Composeみたいな「使い慣れてる感」があるから、他のコンテナランタイムに乗り換えるのは難しいし、結局Docker Desktop使い続ける人が多いと思うよ。" userName="paxys" createdAt="2025/06/09 21:48:17" color="#785bff">}}




{{<matomeQuote body="Docker Desktopは使ったことないんだけど、DockerとかコンテナってCUIで操作するものだと思ってたから、GUIで何するのかよく分からないんだよね。" userName="prmoustache" createdAt="2025/06/09 22:18:06" color="">}}




{{<matomeQuote body="GUIだとログをすぐ見れたり、http://localhost:＜ポート番号＞をすぐに開くボタンがあったり、コンテナを止めたり起動したり、コンテナの中でシェルを使ったり、開発やテストでローカルに必要な色々なことが手軽にできるんだよ。" userName="stackskipton" createdAt="2025/06/09 22:28:19" color="#ff33a1">}}




{{<matomeQuote body="たぶん、Podmanが出てきた時と似たような感じ方なんじゃないかな。" userName="cogman10" createdAt="2025/06/09 21:49:07" color="">}}




{{<matomeQuote body="開発者ならランタイムでポートリダイレクトするとか、そもそもコンテナをフォアグラウンドで動かさないとか、そういうのを選ばない人がいるのに驚いたよ。" userName="prmoustache" createdAt="2025/06/09 22:39:16" color="">}}




{{<matomeQuote body="Podmanって結構ニッチだよね。これはApple製品だから、Apple開発者界隈はきっと強く推すだろうな。" userName="Kwpolska" createdAt="2025/06/09 22:14:46" color="">}}




{{<matomeQuote body="Docker Desktopのライセンスが嫌な企業にはPodmanが手軽な選択肢なんだよね。Appleもきっと独自のDockerっぽいツールを推すだろうけど、他のOSでも動かないとDocker Desktopを使ってる企業を取り込むのは難しいかもね。" userName="jeroenhd" createdAt="2025/06/10 04:50:14" color="#ff5733">}}




{{<matomeQuote body="そうかもね、でもGUIを使わずにコンテナを動かしてるなら、ほとんどのことはDocker LogsやDocker Execコマンドでタダでできるよ。みんなDockerってCLI以外で学ぶのかな？" userName="Spivak" createdAt="2025/06/09 23:06:38" color="">}}




{{<matomeQuote body="WindowsだとRancher Desktopが使われることが多いみたい。特にPodmanが最近やっとGUIを提供し始めたからね。残念ながら、どれもElectronベースなんだ。" userName="pjmlp" createdAt="2025/06/10 07:09:34" color="">}}




{{<matomeQuote body="Windowsを使ってる同僚のほとんどは、こういうデスクトップアプリ使ってないよ。WSL2やお気に入りのIDEのDocker連携機能を使ってるなら、これらのアプリの機能にはほとんど価値がないって言ってた。" userName="hocuspocus" createdAt="2025/06/10 12:30:09" color="#38d3d3">}}




{{<matomeQuote body="Dropboxは一般ユーザー向けだったけど、Docker DesktopやAppleのコンテナ化ツールは開発者向けって点で違うと思うな。プログラミングみたいなもので、Microsoft OfficeやXcode、VSCodeでもコードは書けるけど、俺が会ったプログラマーはみんなedかviを選んでるよ。" userName="TheDong" createdAt="2025/06/10 02:10:00" color="">}}




{{<matomeQuote body="俺にとっては、Docker DesktopはDockerデーモンを起動したり、イメージやログを確認したりする簡単な方法ってだけだよ。それ以外はCLIで十分事足りるんだ。" userName="arjonagelhout" createdAt="2025/06/09 22:24:29" color="">}}




{{<matomeQuote body="Linuxで長年Dockerを使ってきたけど、仕事でMacを使うことになってDocker Desktopを入れないとCLIが使えないって知ってマジで戸惑ってる。GUIが必要だったり欲しい理由が全く分からないんだ。GUI反対ってわけじゃないけど、DockerってGUIで使うなんて想像もしたことなかったんだよ。" userName="queenkjuul" createdAt="2025/06/09 23:39:09" color="">}}




{{<matomeQuote body="開発者だってユーザーなんだよ。なんでいつも大変なやり方しないといけないのか、そのマッチョな考え方は理解できないな。" userName="pjmlp" createdAt="2025/06/10 20:02:40" color="">}}




{{<matomeQuote body="職場でDocker Desktopがお金かかるようになったからか、Lima/Colimaに乗り換えたんだよね。<br>もし今回のAppleのやつで、Dockerコンテナ動かすための設定が一つ減るなら、めっちゃ良いと思うよ！" userName="hiccuphippo" createdAt="2025/06/09 23:06:21" color="">}}




{{<matomeQuote body="あのさ、ちょっとキツいかもだけど、XcodeとかAppleのツールをめっちゃ気にする”Apple開発者”って、Macでコード書いてる全体からしたら少数派じゃない？<br>僕の経験だと、Mac使う普通の開発者はVSCodeでJSとかPython書いてて、ファイル間違ってXcode起動すると「うわっ」てなるし、Linuxサーバーみたいに普通のDockerを使いたいって思うはず。Apple独自の変なのは多分避けたいんじゃない？<br>”Apple開発者”って言われるのは、ElectronとかReact NativeじゃないMacアプリとかiOSアプリ作る一部の個人開発者とかでしょ？でも、そういう人たちって大体クライアントサイド書いてて、サーバーなんて全然触らない人がほとんどだし。<br>こうは言っても、DockerとかOrbstackとか、Macでコンテナが必要な開発者のニーズはもう満たしてるのに、なんでAppleがわざわざ時間かけてこれ作ったのかは、上の”勘”では説明つかないんだよね。" userName="xp84" createdAt="2025/06/09 23:12:47" color="#45d325">}}




{{<matomeQuote body="Docker Desktopがお金取るようになってから、代替ツールは全然ニッチじゃなくなったよね。<br>うちの会社も最初は上の人たち、ちゃんと聞いてくれなかったんだけど、サブスク代が社員一人分の給料くらいになったら、PodmanとかRancherとか(Co)Limaに変えた人たちの話を聞き始めたって感じ。" userName="hocuspocus" createdAt="2025/06/09 23:29:15" color="#38d3d3">}}




{{<matomeQuote body="Docker Desktopって、GUIだけじゃなくてDocker daemonも提供してるってこと、見落としてない？<br>MacやWindowsには他にも選択肢はあるけど、多くの人は単にCLIからDockerコンテナ動かせるために「Docker Desktop」を使ってるんじゃないかなと思うんだ。" userName="smw" createdAt="2025/06/10 15:58:36" color="">}}




{{<matomeQuote body="なんでデフォルトでCLIがGUIより難しいって決めつけるのか、それが分からないな。<br>全然逆の場合も多いんだよ。例えば、ITサポートの人が企業アンチウイルスの問題で、GUIで3時間くらい訳分かんないクリックを続けてるのを見たことがある。<br>GUIやそのインターフェースって、情報がマジでなくて、遅くて、効率悪いんだよね。<br>もしそこに-statusとか-reportみたいなフラグがあるシンプルなCLIツールがあったら、問題の原因がすぐ分かって、関わる全員にとってずっと楽だったと思うんだ。" userName="prmoustache" createdAt="2025/06/11 12:57:23" color="#45d325">}}




{{<matomeQuote body="Docker DesktopってWindowsでWSLを使ってDocker daemonを提供してるじゃん？<br>だからDocker Desktopとしては、できるところでこうやってOSの仮想化機能に頼るっていう歴史があるんじゃないかな。" userName="pxc" createdAt="2025/06/10 00:07:48" color="">}}




{{<matomeQuote body="僕はRancher Desktopと、Homebrewで入れたFOSS版のdocker CLIを使ってるんだ。<br>これでうまく動いてるし、ライセンスの問題も全然ないよ。" userName="bruckie" createdAt="2025/06/10 03:06:10" color="">}}




{{<matomeQuote body="たぶん問題は、WindowsとかmacOSだと、Docker DesktopなしにはDocker daemonとかインストールできないことなんだよね。<br>Macでコンテナ使うの、マジで大変。Podman, UTM, colima, Docker Desktopとか色々試したけど、結局行き着くのは同じこと。<br>つまり、Linux VMを動かして、CLIツールがそのVMと上手く連携してコンテナ動かすってことなんだよ。<br>どれが一番ストレスなくてイライラしないかっていうと、多分まだDockerが一番かもね。<br>今の僕の環境は、UTMでDebian VMを動かしてて、ソースコードのディレクトリを共有してSSHで入ってdockerを動かしてるんだ。<br>こっちの方が、Linux VMが隠れてなくて自分で管理してるから、なんか分かりやすいんだよね。<br>でも共有ディレクトリのマウント分かりにくいし、ネットワーク問題（今はsudo sshしないと繋がらない）にマジでしょっちゅう当たる。Mac再起動すれば前は直ってたけど、もうダメ。直すのは諦めてsudoしてるよ。" userName="dajtxx" createdAt="2025/06/11 03:56:06" color="#ff33a1">}}




{{<matomeQuote body="俺的には、Docker Desktopみたいなツールの重要な部分はGUIじゃないと思うんだ。良いのは、①Linux VMをセットアップしてDockerデーモンを動かしてくれることと、②ホストOSでDockerクライアントを実行してVMと「直接」通信できるソケット転送の仕組みを扱ってくれること。Podman DesktopとかRancher Desktopとかも同じだね。GUIはおまけだよ。" userName="pxc" createdAt="2025/06/10 00:36:48" color="#785bff">}}




{{<matomeQuote body="GUIを使うのは、メモリとかDockerエンジンの設定くらいだろ。あんまり使わないよ。" userName="bdcravens" createdAt="2025/06/09 23:10:56" color="">}}




{{<matomeQuote body="これがめちゃくちゃ互換性の高いDockerソケット実装を提供しないと、厳しいと思うな。Docker Desktopのライセンスが変わって、前の職場では使う許可取るのが大変だったんだ。でも、いくつかのツールがDockerソケットを使うから、それを使ってるって言えば許可は出たんだよね。Dockerソケットにバイト列を突っ込んだり取り出したりすることを期待してるツールがいっぱいあるから、非Docker実装で統合しようとする動きはあるけど、前回試した時はまだ問題にぶつかったよ。" userName="coredog64" createdAt="2025/06/10 13:19:59" color="#ff33a1">}}




{{<matomeQuote body="これはDocker for Desktopとは競合しないと思うな。もっと低レベルのツールだからね。Docker for Desktopはコンテナ／仮想化ソフトウェア（MacならHypervisor.frameworkやQEMU、WindowsならWSL、Linuxならcontainerd）の上で動いてるんだ。だから、将来的にDocker for Desktopがこのライブラリを使う可能性は十分あるけど、お互いに競合するわけじゃないんだよ。" userName="n2d4" createdAt="2025/06/10 01:00:50" color="#ff33a1">}}




{{<matomeQuote body="CLIツールが必ずしも良いとは限らないって決めつけてるね。同じ会社が出してるCLIツールも、多くの場合はGUIと同じくらいひどいことがあるから。" userName="pjmlp" createdAt="2025/06/11 20:32:19" color="">}}




{{<matomeQuote body="これが新しいmacOSにデフォルトで入るかどうかにかかってると思うな。そうならなきゃ、ユーザーがdocker/podman/これ…って選ぶことになるだろうし、どうなるか分からない。もしデフォルトで入って、コマンドラインのフラグとかソケットAPIとかがほとんど互換性あるなら、Dockerはヤバいかもね。ちなみに俺はpodman派だけど、LinuxでもDockerじゃないと動かない特定の چیز がまだあるんだ。" userName="baby_souffle" createdAt="2025/06/09 23:21:11" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これが一番驚きで面白い部分だと思うね：<br>＞ `container`への貢献は歓迎され奨励されています。詳細はメインのコントリビューションガイドを参照してください。<br>これってAppleにしてはかなり珍しいよね？ WebKitは基本的にKHTMLの敵対的フォークだったし、Darwinも時々一部を投げ出すだけだったし。Appleが最近GitHubに出してる他のプロジェクトも、ユーザー開発者からの実りある協力があると良いな。俺は本質的にF/OSS好きなんだが、企業の方針でLinuxが使えなくて、しぶしぶ毎日のMacユーザーになったんだ。ここ数年でApple Siliconのおかげで、自宅のメインノートPCもApple製を使うようになったよ（最近はもっと同等でLinuxフレンドリーな選択肢が近づいてるみたいだし、そっちも楽しみだけどね）。こういうのって、葛藤を感じずに済むような良い変化だと思うんだ。とにかく、ここでの成功は、Appleがオープンソースと関わる方法で、コミュニティとの協力が増える良いサイクルの一部になるかもしれないね。俺みたいな開発者も、個人的に利益を得られるし、Appleを尊敬するようになると思うよ。" userName="pxc" createdAt="2025/06/10 00:06:19" color="#ff5733">}}




{{<matomeQuote body="＞ WebKit was basically a hostile fork of KHTML<br>ChromiumがWebKitの敵対的フォークだよ。WebKitはKHTMLからかなり丁寧にフォークしたんだ、フルタイムのプログラマーチームがいたからKHTMLが upstream のリクエストに追いつけなくて、WebKitの方がうまくやってくれたから諦めたんだ。個人的には、企業が俺のオープンソースプロジェクトに対してこういうことをしてくれるのは大歓迎だよ。" userName="boxed" createdAt="2025/06/10 03:41:12" color="">}}




{{<matomeQuote body="BlinkがWebKitの敵対的フォークだよ。企業にそうされて嬉しいわけないだろ？ HNだけでも、Chrome用に作られてSafariでは動かないウェブサイトについて不満を言う人が山ほどいる。これはAppleがKHTMLへの貢献を無視してKonquererユーザーにしたことに対する、本当に公平な報いだよ。" userName="bigyabai" createdAt="2025/06/10 04:17:36" color="">}}




{{<matomeQuote body="これはLinuxに触れてるから、Linuxはコピーレフトだし、Appleはこうせざるを得ないんだよ。" userName="nhumrich" createdAt="2025/06/10 00:40:20" color="">}}




{{<matomeQuote body="Appleって良いものいっぱい出してるよね？<br>llvmとかCUPSもAppleのだっけ？" userName="noufalibrahim" createdAt="2025/06/10 04:54:28" color="">}}




{{<matomeQuote body="引用の話は歴史の書き換えだよ。<br>KHTML開発者はAppleに雇われたし、Konquerorも新しいエンジンでうまくいったんだ。<br>ライセンスが許してるからおあいこだって言えるんであって、GoogleはKHTMLユーザーの復讐者じゃないよ。" userName="kergonath" createdAt="2025/06/10 05:12:58" color="#45d325">}}




{{<matomeQuote body="AppleはCUPSを放棄したんだ。<br>長いこと放置されてたけど、今はフォークされたけど成功してるか不明。<br>LLVMはChris Lattnerを雇って引き継いで、長い間たくさん投資してリソース注ぎ込んだんだ。<br>LLVMは今も続いてるよ。" userName="kergonath" createdAt="2025/06/10 05:15:24" color="#45d325">}}




{{<matomeQuote body="そんなに驚くことじゃないよね。<br>Swiftとそのフレームワークの多くはオープンソースコミュニティが貢献してるんだから。" userName="zapzupnz" createdAt="2025/06/10 00:17:27" color="">}}




{{<matomeQuote body="引用の「会社の制約でMacユーザーになったLinux好き」に対するコメントだよ。<br>この動きは、君みたいにWSLに流れる人を止めようとしてるんじゃないかな。" userName="overfeed" createdAt="2025/06/10 01:09:27" color="">}}




{{<matomeQuote body="Linuxに触れるだけじゃダメで、派生著作物である必要があるけど、多分これは違うでしょ？<br>それに、投稿者はライセンスの話をしてるんじゃないと思う。<br>AppleはFOSSだけど、貢献を拒否したりコミュニティを育てなかったりするよね。" userName="n2d4" createdAt="2025/06/10 00:51:34" color="">}}




{{<matomeQuote body="それはそうだけど、Swiftはプログラミング言語だから例外かと思ってた。<br>プログラミング言語はそうするのが普通になったからね。<br>僕の考えが古かったら知りたいな。<br>どっちにしても希望は同じだよ。" userName="pxc" createdAt="2025/06/10 00:26:36" color="">}}




{{<matomeQuote body="引用の「企業のやり方に文句を言う人たち」へのコメントだよ。<br>Chrome向けでSafari向けじゃないサイトに文句言うのと、今回の話は別物だよね。" userName="boxed" createdAt="2025/06/10 08:55:57" color="">}}




{{<matomeQuote body="GPL強制じゃないって話に加えて、たとえ強制でもライセンスはコミュニティとの協力や貢献の受け入れを強制しないよ。<br>クローズドな開発やフィードバック無視、パッチ不採用もできるし、求められるまでソースコード出さなくてもいい。<br>Appleは文字通りどれもやる必要はないんだ。" userName="mirashii" createdAt="2025/06/10 01:10:31" color="#45d325">}}




{{<matomeQuote body="引用の「派生著作物」についてだけど、それに静的にリンクするものを配布するのもだよ。<br>それは派生著作物になると言う人もいるからね。" userName="TimTheTinker" createdAt="2025/06/10 02:00:30" color="">}}




{{<matomeQuote body="WebKitはKHTMLから派生したんだって。でも2005年からはちゃんとオープンソースとして活動してる。Swiftも2015年からそうだし、2025年にまた新しい注目プロジェクトが出てくるのは普通のことだよね。" userName="holycrapwhodat" createdAt="2025/06/10 02:36:54" color="">}}




{{<matomeQuote body="俺もLinuxからMacに乗り換えた reluctant convert なんだ。仕事だと Mac は just works で助かる。職場で一番サポートされてるしね。ハードウェアも really really really nice。<br>個人用 MacBook pro（https://gigatexal.blog/pages/new-laptop/new-laptop.html）もあるけど、i3 いじりとかは恋しいな。でも歳とると just works が一番。今回の container binary 試してみるよ。Looks interesting！" userName="gigatexal" createdAt="2025/06/10 03:46:52" color="#ff5733">}}




{{<matomeQuote body="Appleが KHTML に出したパッチについて、最初はちょっと心配だったんだと思う。すごくたくさんのコード（ifdef 文がいっぱい）をマージしなきゃいけなかったからね。" userName="mattl" createdAt="2025/06/10 05:50:23" color="">}}




{{<matomeQuote body="cups は今、ちゃんとメンテナンスされてるみたいだよ。ほら、ここで見れる。<br>https://github.com/openprinting/cups" userName="Squarex" createdAt="2025/06/10 09:16:54" color="">}}




{{<matomeQuote body="正直、世の中のプリンタドライバ見たら、なんで手放したか分かるよ。 PPD も良い標準じゃないしね。メーカーがクソみたいなプリンタ動かすために、バイナリとか変な拡張入れるんだ。 Xerox なんかすごい変なドライバ出すし。Windows の PPD からバイナリ取って使うことよくあるもん。" userName="merb" createdAt="2025/06/10 20:21:20" color="">}}




{{<matomeQuote body="KDE の昔のブログとか調べない方がいいよ、議論がひっくり返るかも。”Google は poor KHTML users を助ける white knight じゃない。”<br>違うね。彼らはあなたの runtime を破壊しに来てるんだ。普通なら Linux と Mac users は組んで corporations と戦えって言うけど、もう無理だね。最近は Safari の運命に quite content だよ。ライセンスで許されてるならそれでいいんだ。No fuss, and no drama。" userName="bigyabai" createdAt="2025/06/10 16:26:06" color="">}}




{{<matomeQuote body="ずっと Linux user だけど、M1 Pro の Mac の体験は Windows の WSL より断然上だって confident に言えるよ！<br>Mac を primary machine として、WSL みたいに hassle なく happily 使えるんだ。" userName="guztaver" createdAt="2025/06/10 01:29:37" color="#ff33a1">}}




{{<matomeQuote body="あのコメントはオープンソースにすることじゃなくて、contributions を歓迎するって話だったと思うよ。" userName="Aurornis" createdAt="2025/06/10 01:38:32" color="">}}




{{<matomeQuote body="開発者が move on しただけだよ。だからオリジナルの KHTML に momentum がなかったんだ。 WebKit は Acid tests の頃に gold standard になって、KHTML を置き換えた。機能は同じだけど resources が桁違いに増えたね。GTK update の方がよっぽど drama あるよ。<br>”These days I’m quite content with Safari’s fate...” って言うけど、bitching しても unproductive だしね。Blink monoculture は残念だけど、Chrome が WebKit 使ってても Gecko に切り替えてても同じだったよ。Chrome の drama は誰が誰を forked したかとは関係ない。" userName="kergonath" createdAt="2025/06/10 19:49:22" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
