+++
date = '2025-05-19T00:00:00'
months = '2025/05'
draft = false
title = 'WSLがオープンソース化！'
tags = ["WSL", "Windows", "Linux", "オープンソース", "開発"]
featureimage = 'thumbnails/red1.jpg'
+++

> WSLがオープンソース化！

引用元：[https://news.ycombinator.com/item?id=44031385](https://news.ycombinator.com/item?id=44031385)




{{<matomeQuote body="WSLが出た時、マジで超嬉しかったんだよね！<br>やっとWindowsで本物のLinuxシェル使えるじゃんって！<br>ゲーミングPCとしてWindows使ってたから、ゲームも開発もこれ一台でできると思ってた。<br>まさに解決策って感じだったんだけど、時間とともにちょっとした問題がいっぱい出てきたんだ。<br>パッケージがうまく動かなかったり、WindowsとWSL間の壁で問題があったり。<br>なんかいつもちょっと摩擦がある感じだったんだよね。<br>ValveがProtonとLinuxゲーミングをマジで推してるから、最近UbuntuとNixosに乗り換えたよ。<br>今度はゲーム側でちょっと摩擦があるけど、だいたいうまくいってる。<br>Linuxは急速に良くなってるし、開発側でなんでもサクッと動くのはマジで新鮮。<br>いくつかのAAA titlesがLinuxで動かないとはいえ、Windows w/ WSLより良い体験だと今は感じてる。" userName="jjcm" createdAt="2025/05/19 17:55:33" color="#45d325">}}




{{<matomeQuote body="WSL 1は、NTカーネルでLinuxカーネルをエミュレートする「Windows on NT」みたいな感じだったらしいね。<br>たくさんの機能をスキップして、結局バージョン2でコンテナ化された仮想マシン方式に全部捨てちゃったけど。<br>あのNTでの方式がうまくいってたら良かったのにって思うけど、複雑だったのはわかる。" userName="hypercube33" createdAt="2025/05/20 01:38:50" color="">}}




{{<matomeQuote body="マジで思うんだけど、もしAAA titlesがWindows専売じゃなくなったら、誰もWindows使う良い理由なんてないよ、惰性以外は。" userName="gloosx" createdAt="2025/05/20 08:29:58" color="">}}




{{<matomeQuote body="ちょっと興味あるんだけど、どんなゲームで問題出たの？" userName="nickserv" createdAt="2025/05/19 18:38:06" color="">}}




{{<matomeQuote body="Excelに頼ってるビジネスがどれだけ多いか、見くびりすぎだと思うな。" userName="Peanuts99" createdAt="2025/05/20 08:48:32" color="">}}




{{<matomeQuote body="まるで代替がないみたいに言ってるけど、Libre Office CalcとかGoogle SheetsとかNumbersで同じExcelファイルを問題なく開いて編集できるじゃん。" userName="gloosx" createdAt="2025/05/20 10:02:39" color="">}}




{{<matomeQuote body="みんな試したことあると思うよ。<br>GPU（ゲームとか）が、今の時点でWindowsをなんとか関連付けてる唯一のものだね。<br>俺も2012年のプロジェクトでMakefileがmsvcでもビルドするようになってたけど、もう二度とやりたくないね。<br>2015年のプロジェクトはcygwin用のビルドパスがあったけど、これも二度と。<br>2019年のプロジェクトではmsys2/git-bash-for-windowsで動くようにビルドスクリプトで選択してたけど、これも二度と。<br>今はWSLでビルドできるようになったけど、WSL下でpsqlコンテナをちょっと違う方法で動かすためにenvファイルを少し変えるだけ…<br>「もう二度と」って言うまでどれだけ耐えられるか、見ものだね。" userName="1oooqooq" createdAt="2025/05/19 18:44:13" color="#785bff">}}




{{<matomeQuote body="俺も言うよ！<br>Excelの上級機能に頼ってる人にとって、真面目な代替はないんだ。<br>Libre Office CalcとかGoogle SheetsとかNumbersで、問題なくExcelファイルを編集なんてできないよ。" userName="skobes" createdAt="2025/05/20 10:39:19" color="">}}




{{<matomeQuote body="わかってるよ -- WSL1が出て超ワクワクしたし、うまくいくことを願ってた。<br>NTが始まった頃はOS/2のペルソナだったし、あの時はNTが全てのOSを（ペルソナとして）実行する究極のOSになると思ってワクワクしてたんだ。<br>でもWSL2はマジで信じられないくらいすごい！<br>これが見られて超興奮してるし、あとはWindowsの残りの部分もLinuxカーネルに移行して、どこでもbashをネイティブにサポートしてくれたら良いのにって思う。<br>Powershellは全然好きじゃなかったんだ、sh/dash/ash/bashの方が全然良い感じ。" userName="rcleveng" createdAt="2025/05/20 07:03:28" color="#38d3d3">}}




{{<matomeQuote body="もしWSL 1がうまく終わってたら、MSの歴史上で最高の偶然の一つになっただろうね。<br>90年代にその優位性を押し出すために使われた、他のほとんどのOSにはない、NTカーネルの長い間忘れられてた機能が、約30年後に復活して、再びUnixベースのOSと戦うなんて。<br>Gorge Lucasの言葉を借りるなら「それは詩のようだ、韻を踏んでいる」ってね。" userName="dbdoskey" createdAt="2025/05/20 05:59:13" color="">}}




{{<matomeQuote body="そういう高度な機能の例を教えてくんない？ 代替がないって言われるこの”Excel”に、どんなすごい機能が詰まってるのかマジでわかんないんだけど．XLSXから他のフォーマットに移行するだけが問題なら、それってめちゃくちゃ簡単なはずだし、きっとツールもあるでしょ．" userName="gloosx" createdAt="2025/05/20 11:33:06" color="">}}




{{<matomeQuote body="Windowsはゲームだけとか言うの腹立つ！技術者は現実知らなすぎ。クリエイティブや産業用ソフト使う人もいる．Linuxでクリエイティブはサドマゾ．Linux/macOSは古いソフト動かないがWindowsは35年前のも動く．日本語/中国語入力もLinuxは無理ゲー、Waylandも問題．アクセシビリティも Waylandは無視．<br>Windowsはゲームじゃなく、一番安定した”ゴミ”なんだよ．" userName="sertraline" createdAt="2025/05/19 19:32:39" color="#ff5733">}}




{{<matomeQuote body="ならLinux使えばよくね？<br>今のWindowsの良さって、a） デバイスメーカーにGPLを押し付けないカーネルと b） ドライバAPIの安定性を気にしてくれてるおかげで、カーネルアプグレごとにメーカーとかメンテナーが手入れしなくてもドライバがちゃんと動くこと、だよ．" userName="reisse" createdAt="2025/05/20 07:19:29" color="">}}




{{<matomeQuote body="興味ある人向けに、ProtonDBのトップページ見るとLinuxゲーミングの状況がかなりわかるよ：<br>https://www.protondb.com/<br>メダルのとこ見ると、2万5千以上のゲームのうち、50%が完璧かほぼOK（Platinum/Gold）でプレイ可能．別の20%は特定の条件下でまあまあイケる（Silver）．" userName="npteljes" createdAt="2025/05/19 19:47:44" color="#45d325">}}




{{<matomeQuote body="企業はWindowsから抜け出せない．お偉いさんの知識不足で何でもMicrosoft．オフィスはWin10/11でTeams/Outlookなど、製造現場はWin7も．IT部門も知識不足で手が出せない．<br>そんな状況でビジネス界をLinuxに切り替えるなんて無理ゲー．古いインフラを一気に変えるようなもんだ．コストと知識がヤバい．Microsoftはビジネス界にうまく入り込んだ．" userName="0xEF" createdAt="2025/05/20 08:47:50" color="#45d325">}}




{{<matomeQuote body="AoE2:DEはGold評価だけど、マルチプレイは全然動かないよ．チート対策の問題ですらないし．" userName="frollogaston" createdAt="2025/05/19 20:27:38" color="">}}




{{<matomeQuote body="もしWindows NTのPOSIXサブシステムがマジで使えるUNIX体験だったなら、俺はあのSlackware 2.0のインストールディスクで苦労したりしなかったね．<br>サブシステムの概念なんて、マイクロコンピュータとかメインフレームの世界じゃ結構普通だったし、MicrosoftがWindowsのために思いついたアイデアじゃないよ．" userName="pjmlp" createdAt="2025/05/20 07:38:48" color="">}}




{{<matomeQuote body="元々のPOSIXサブシステムは、MSが「存在しますよ」（国防総省の要件通すため）って言うためだけに置かれてたんだ．<br>2k/XPバージョンで実際にある程度使えるようになって、Vistaでちょっと良くなった（特に：ユーティリティインストーラーにbashをデフォルトシェルにするオプションがあった）．で、うろ覚えだけど7の時にもMSはまたマーケティングでそれの存在に言及してた（なんかかっこいい新しい名前つけて）．" userName="dfox" createdAt="2025/05/20 11:31:39" color="">}}




{{<matomeQuote body="そうそう，だから大学で場所取りに苦労するくらいなら家で勉強しようと思っても，DG/UX端末みたいなのがないから，他の探すしかなかったんだよね．後でもっと良くなったのは知ってるけど，最初がアレだったし，third party integrationsとのごたごたとか，Microsoftがいつも開発をoutsourcedしてた（MKSとかInterixとか）せいもあって，誰も後から気にしなくなっちゃったんだよ．First impressions matter mostだからね．" userName="pjmlp" createdAt="2025/05/20 12:42:16" color="">}}




{{<matomeQuote body="根本的な問題はさ，critical Windows APIsのCreateProcessとかNTFS file systemとかが，UNIX-likeな使い方するには遅すぎたってことなんだよ．WSL1でgit動かしたりbuildしたり（key use caseじゃん？）すると，nativeとかVM Linuxでやるよりぜんぜん遅かったんだよね．" userName="pjc50" createdAt="2025/05/20 08:31:55" color="#ff33a1">}}




{{<matomeQuote body="Realisticallyさ，気にするような奴はCygwinみたいなの使ってたっしょ（original UNIX server market segmentはLinuxのせいでevaporatedしたし，あの形でNTにmigratingする気なんてzero interestだったんだよ—なかには．NETみたいなapplication layer benefitsでmigrateしたやつもいるけど，not for the same workloadsだし）．" userName="mmx1" createdAt="2025/05/20 18:23:10" color="">}}




{{<matomeQuote body="いや、NVIDIAのGTXシリーズは全部独自のドライバで、管理できないくらいデバイス固有のインターフェース使ってたんだ。RTXシリーズからはまだ独自のドライバはあるけど、デバイス固有じゃなくて共有の公開インターフェース使うようになったから、互換性とか性能は断然良くなったよ。全部ってわけじゃないけど、ゲーミングベンチマークでWindowsよりLinuxの方が性能出てる例もあるんだぜ。" userName="spartanatreyu" createdAt="2025/05/20 01:13:12" color="#785bff">}}




{{<matomeQuote body="逆にした方が良いよ。LinuxからWindowsをVMで使うんだ。もしWindowsを使いたい衝動にかられたら、一度きっぱりLinuxに乗り換えちゃえ。もう絶対戻れないから。俺は15年近くそうしてるよ。HNでも色々言われてるけど、今のWindowsがどうなってるか考えると、VMで動かすのも正直ためらうね。" userName="liendolucas" createdAt="2025/05/19 17:36:09" color="#785bff">}}




{{<matomeQuote body="GPU関連（ゲームとかAdobeアプリとか）が必要な場合は、VMにパススルーするための別のGPUが必要になるけど、みんなが持ってるわけじゃない。それが無いとVMでグラフィック加速なしで我慢。WINEで動かないソフトは大体グラフィック加速が必要だから”VMで”って解決策は現実的じゃない。VMでPhotoshop試したけどQEMU QXLは遅いしVirGLはWindowsゲスト未対応。VMWareとかVirtualBoxはマシだけどベアメタルには劣るね。" userName="MrPowerGamerBR" createdAt="2025/05/19 18:25:26" color="#ff33a1">}}




{{<matomeQuote body="みんなVMとかWINEとか簡単みたいに言うけど、実際は全然そうじゃないからね。" userName="frollogaston" createdAt="2025/05/19 20:34:25" color="">}}




{{<matomeQuote body="Linuxだと結構簡単だよ。KVMはOSの本体に入ってるし、libvirtとvirt-managerを入れればVM作るのめっちゃ楽になる。GPUパススルーだって最近はそんな難しくないと思うけど、まあハードウェアの構成によるかな。" userName="sureglymop" createdAt="2025/05/19 21:58:52" color="#785bff">}}




{{<matomeQuote body="”Linuxだと結構簡単だよ…”っていうのは、例の「LinuxユーザーならFTPアカウント取って〜簡単に構築できる」っていう有名な皮肉[1]を思い出すね。ソフトウェアの便利機能ってマジで重要で、どんなに良くできてても、全部隠して自動でやってくれるシステムの方が簡単だし、新しいユーザーはそういうのを求めるから大体勝つんだよ。良くない方が勝つとか言われるけどね。" userName="Affric" createdAt="2025/05/20 00:13:34" color="#ff5c5c">}}




{{<matomeQuote body="HNのWindowsスレッドってさ、いつも生産性アプリでWindowsが必要な人と、そうじゃない人との間のハッキリした線引きを見せつけられるよね。俺がWindowsマシンで必要としてるアプリは、VMで気持ちよく動くようなタイプじゃないんだ。GPU関連のものは何でもWindowsがベースのOSになる必要があるね。たまに軽いツール使うくらいならVMでも大丈夫だけど、CADとかゲームみたいなものには無理だよ。" userName="Aurornis" createdAt="2025/05/19 19:03:36" color="#ff5733">}}




{{<matomeQuote body="君がリンクしてるコメント（※コメント126が引用した「FTPアカウントで…」の元ネタと思われる）は、このサイトで一番誤解されてるコメントの一つだよ。一番引用されてるからそうなるんだろうね。これが一番良いコメントってわけじゃないだろうけど、すぐ見つかったから貼っとくね。" userName="skyyler" createdAt="2025/05/20 13:36:36" color="">}}




{{<matomeQuote body="Windows VMで3Dモデリングやってみたけど、アクセラレーションがパススルーできなかったんだよね。" userName="vvpan" createdAt="2025/05/19 21:00:30" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GPUパススルーを使ったWindows VMはマジで良いよ。まだニッチなやり方だけど、昔よりは全然簡単になった。シングルGPUでもできちゃう（ノートPCとか）。俺は個人的にデスクトップPCにAMDのGPUと、Windows用パススルー用のNvidiaのGPU積んでる。ディスプレイ出力とか入力デバイスをevdev使って切り替える仕組み入れてるんだ。" userName="sureglymop" createdAt="2025/05/19 22:03:54" color="#38d3d3">}}




{{<matomeQuote body="Linuxじゃできない3Dモデリングってどんなことしてたの？" userName="voidUpdate" createdAt="2025/05/20 10:01:53" color="">}}




{{<matomeQuote body="説明されてたFTPベースのDropbox的なやつでも、DRMかかってるソフトとかGPUアクセラレーションをちゃんとVMで動かすよりはマシだよ。" userName="frollogaston" createdAt="2025/05/20 00:17:17" color="#ff33a1">}}




{{<matomeQuote body="なんでGPUくらいのサイズのパッケージにフル機能のコンピューターがないんだろ。GPUでWindows動かして、CPUでLinuxとか。課題はあるだろうけど、ARM PCにx86拡張したり、x86 PCにARM拡張したりできたら面白そう。グラフィックとか他のアクセラレーターも同じね。" userName="hermitShell" createdAt="2025/05/19 19:23:01" color="">}}




{{<matomeQuote body="ホントに？ GNOME Boxes使えば結構簡単だよ。KDEにもすぐ同じようなの来るらしいし。" userName="skyyler" createdAt="2025/05/20 13:37:08" color="#785bff">}}




{{<matomeQuote body="何が誤解されてるか分かんないけど、それでユーザーをからかうのは良くないよ。" userName="frollogaston" createdAt="2025/05/20 14:59:32" color="">}}




{{<matomeQuote body="パソコンにGPUが2枚刺さってたら良い感じなの？" userName="madeofpalk" createdAt="2025/05/19 23:05:28" color="">}}




{{<matomeQuote body="それって結局、後から見ればそう聞こえるだけ。今みたいにファイル同期アプリが巨大産業になってる時代だと変に聞こえるけど、当時はそれが一般的な意見だったんだよ。Joel on Softwareの記事にもあるけど、ファイル同期なんてキラーアプリじゃないって多くの人が思ってた。今考えたらあり得ないけどね。" userName="skyyler" createdAt="2025/05/20 15:21:17" color="#785bff">}}




{{<matomeQuote body="GNOME BoxesでGPUパススルーできるの？ VMがホストのGPU（Nvidiaとか）を認識してホストと同じように動くってこと？ それか、VMでPhotoshopがフルハードウェアアクセラレーションで動くかどうか。GNOME Boxesは試してないけど、調べた感じはそうじゃないみたいだけど。" userName="frollogaston" createdAt="2025/05/20 16:17:14" color="#45d325">}}




{{<matomeQuote body="大体のパソコンがそうだよ。ノートPCもデスクトップも大半はCPUに統合GPUが載ってる。" userName="Stevvo" createdAt="2025/05/20 09:36:25" color="#ff33a1">}}




{{<matomeQuote body="結構な数の人がIntelの内蔵グラフィックとAMDかNVidiaの単体グラボ、両方持ってるよ。" userName="teaearlgraycold" createdAt="2025/05/19 18:59:29" color="#ff5733">}}




{{<matomeQuote body="MacでParallelsでいつもWindows使ってるよ。残念ながら、arm64 Mac向けのVirtualBoxはまだいまいちだけどね。" userName="nxobject" createdAt="2025/05/19 18:08:05" color="">}}




{{<matomeQuote body="Counterpoint: VR用のValve Indexみたいなやつは、どんだけ頑張ってもこの環境じゃうまく動かないんだよね。<br>俺も初心者じゃないよ、普段の仕事でLinuxの超低レベルなとこ触ってるし。12歳でPentium 2でlinux from scratchやったこともある。言いたいのは、確かに同意するけど、例外的なケースもあるってこと。この一方的な言い分が全部の用途に当てはまるわけじゃないからね。" userName="ghotli" createdAt="2025/05/19 18:01:02" color="#ff5733">}}




{{<matomeQuote body="考えてみたけど、Windowsで必要な機能が2つあって、Linuxでちゃんと設定するにはちょっと時間かかりそうなんだよね。<br>1. WindowsのUWF（Education Edition）を使ってるんだ。C:/へのディスク書き込みは全部一時的なんだよ。再起動するたびに全部消えて、PCが最初にセットアップした時の状態に戻るんだ。永続的に必要なドキュメント用に別のパーティションは用意してるけどね。<br>2. 画面ミラーリング用のMiracastだよ。" userName="arcastroe" createdAt="2025/05/19 18:05:15" color="#ff33a1">}}




{{<matomeQuote body="大きな違いはハードウェアアクセスだね。<br>昔はVFIOでハードウェアパススルーして、Linux使いながらCADみたいなWindowsソフトをgfx card活用して動かしてたんだ。あれは設定も使うのも大変だったよ。<br>その逆はすごく簡単。WSL2なら、データをカードに移動させるちょっとしたオーバーヘッドだけでMLタスクが動かせるんだ。" userName="ActorNightly" createdAt="2025/05/19 18:00:02" color="#ff33a1">}}




{{<matomeQuote body="Fusion360はLinuxでは動かないんだよね。少なくとも何回も試したけど動かせなかったな。" userName="rhdjebejdbd" createdAt="2025/05/20 16:17:25" color="#ff5c5c">}}




{{<matomeQuote body="それは本当に何を実行したいかによるね。最近Linuxノート（Mint）をちょっと使ってるんだけど、古いもの（1996年〜1999年くらいのやつね）がWindows 10だとどういうわけか”ただ動く”のに、WINEで動くように設定するのはすごく面倒なんだ。たくさんの注意点や回避策、そしてサイレントクラッシュがつきものなんだよね。" userName="krige" createdAt="2025/05/20 10:47:54" color="#ff33a1">}}




{{<matomeQuote body="PyTorchとか、他のほとんどのML系ソフトはWindowsネイティブ版があるよ。" userName="lostmsu" createdAt="2025/05/20 00:17:20" color="">}}




{{<matomeQuote body="生産性アプリのためにWindowsが必要な人とそうじゃない人って話だけど、LibreOfficeは長年かけてかなり良くなったよ、MSOファイル形式の相互運用性もまあまあだし、ThunderbirdもExchange Serverをサポートしてるみたいだね。だから、MS ProjectとかMS Visioみたいなものはちゃんとした代替がないかもしれないけど（たぶんね、よく知らないけど）、それ以外なら、生産性アプリのためにどうしてもWindowsが必要ってわけじゃないみたいだよ。" userName="einpoklum" createdAt="2025/05/19 20:57:07" color="#ff5733">}}




{{<matomeQuote body="あー、最初のコメント読んで「おいおい」ってなりかけたけど、DRMソフト絡みのGPUパススルーって見て納得。めちゃくちゃヤバいね。" userName="Affric" createdAt="2025/05/20 21:50:55" color="">}}




{{<matomeQuote body="全盲のソフトウェア開発者だけど、WSL 2のおかげで本当に助かってるんだ。Windowsの最高の画面読み上げ（NVDA）とLinuxの最高の開発ツール両方使えるのが最高。MicrosoftのAIとか広告は嫌いだけど、僕みたいな状況なら絶対WSL使うって。Mac Osの画面読み上げは停滞してるし、Linux（Gnome）も頑張ってるけど、まだ不安定な部分もあって、ブログ記事（https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-d...）にも書かれてる通り、整備中の状態なんだよね。" userName="tuukkao" createdAt="2025/05/20 06:27:28" color="#38d3d3">}}




{{<matomeQuote body="＞Mac Osの画面読み上げは停滞してる<br>あくまで伝聞だけど、Mac Osの画面読み上げ機能はSteve Jobsが直接強く要求して開発されたらしい。初期のiphone/ipadを使うのに苦労してた視覚障害のある人たちがすごく怒ってたのに遭遇したからだって。でも、僕の情報源はJobs本人と話したって主張する人で、その人はいくつか嘘をついてて、すごく攻撃的な人だった。それでも、Appleの経営陣や法務部でその主張を否定する人はいなかったし、彼はAppleのCEOにいつでも電話できるって思い込んでたみたいなんだ。" userName="protocolture" createdAt="2025/05/21 05:27:34" color="">}}




{{<matomeQuote body="教えてくれてありがとう。僕は視覚障害ないけど、それでもWindowsのグラフィックとか表示機能は他のOSより明らかに良い気がするよ。" userName="hodgesrm" createdAt="2025/05/20 15:42:55" color="">}}




{{<matomeQuote body="WSLはLinux開発で何年か使ってるけど、動くときは最高！でもダメなときはマジで最悪なんだ…ネットワークやVPN、XServer、ウィンドウサイズ、ハードウェアアクセラレーションとか、ずっと問題だらけ。ソフト開発するよりWSLの問題解決に時間使ってるよ。速くてパワフルだけど、普段使いはすごく辛い経験。できるだけ避けてMSYS2で作業してる。MSYS2は遅いけど、少なくともずっと安定して動いてるからね。" userName="Night_Thastus" createdAt="2025/05/19 17:33:06" color="#ff33a1">}}




{{<matomeQuote body="僕は開発でWSLを毎日使ってるよ。今まで全然問題なかった。マジで好き。VS Codeから使ってる。" userName="odie5533" createdAt="2025/05/20 04:33:39" color="">}}




{{<matomeQuote body="WSL2だとUSBシリアルデバイスがまだ使えないんだよね。WSL1ではできたんだけど、WSL1とは全然違うものだし。「全然問題なかった」って言うのは意味ないよ。そもそもやったことない無限のことに関しては「全然問題なかった」って言えるわけだから。" userName="Brian_K_White" createdAt="2025/05/20 04:46:21" color="">}}




{{<matomeQuote body="俺、USB pass through みたいなのは全然やってないんだよね。完全に linux tooling を software development のために使ってる。その用途にはマジで完璧な system だと思うし、おすすめだよ。" userName="odie5533" createdAt="2025/05/23 14:42:16" color="">}}




{{<matomeQuote body="GUI program でこの progress を automatic するのあるみたい[1]<br>俺は Zephyr の Firmware 開発に WSL 使ってるけど、今のとこ problem ないよ。<br>[1]: https://blog.golioth.io/usb-support-in-wsl2-now-with-a-gui/" userName="mrheosuper" createdAt="2025/05/20 08:05:37" color="#ff5c5c">}}




{{<matomeQuote body="Win10 だと最近までダメだったけど、情報ありがとう。ついに使えるようになったっぽいね。<br>俺の環境で動くかは要確認だな。使う devices が timing に超 intolerant なんだよ。usb-serial でさえキツいのに、the ip stack 通すとか問題外。rs-232 virtualizing は無理あったけど、高速 host で回避。<br>最近の devices は usb-serial に合わせた作りだから多少は大丈夫だけど、ip 経由だと timing は garbage だし、全部は動かない。たいていは大丈夫だろうけどね。" userName="Brian_K_White" createdAt="2025/05/20 16:54:50" color="#ff33a1">}}




{{<matomeQuote body="Since WSL2 は basically VM now だから、VM に usb device を passthrough できる guess。the whole IP stack skip できるし。latency は still there だろうけど、usbipd より much better。" userName="mrheosuper" createdAt="2025/05/21 02:07:32" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺、WSLg couple of times tried。all I run は xclock みたいな something to ensure it works。literally 0 interest in running GUI Linux apps。so for me it all smooth sailing。" userName="CoolCold" createdAt="2025/05/20 00:52:46" color="">}}




{{<matomeQuote body="These days、俺は WSL distro を directly use することすらないんだ。my Docker Desktop の backend として use してるよ。" userName="Kuraj" createdAt="2025/05/20 15:54:48" color="">}}




{{<matomeQuote body="The beta version は actually updates more often than the release group。俺は the beta use してるから updates が sooner。It’s been rock stable for me for YEARS。" userName="burnte" createdAt="2025/05/19 21:21:23" color="">}}




{{<matomeQuote body="俺は use it all the time。but then I’ve never run a GUI application in it。" userName="wvenable" createdAt="2025/05/20 03:16:52" color="">}}




{{<matomeQuote body="hn で WSL 褒めると karma tax 払わされるけど、譲れない。WSL は Linux より powerful だよ。同じ computer で複数の OS（Linux versions ね）を run するのが超 easy だから。<br>Ubuntu22 な project と Ubuntu24 な project とか、OS update に stress せず使い分けできる。Docker wrappers みたいに useful で janky じゃなく、configuration required なしで absolute delight。" userName="elif" createdAt="2025/05/19 16:58:11" color="#ff5733">}}




{{<matomeQuote body="「Linuxよりパワフル」ってのはおかしい。ただのVMだよ。Linuxそのものと機能は同じだし、VMなしで全く同じことできる方がずっと便利。Distroboxやtoolbxを使えばVMなしで同じ環境に入れるし、ハードウェアとかも問題なく動く。LinuxにWSLがないのは、Linux使うのにVMがいらないからだよ。" userName="jchw" createdAt="2025/05/19 17:22:32" color="#785bff">}}




{{<matomeQuote body="Linuxだけ使うなら、そりゃフルLinuxの方がいいわな。WSL2は他のソフトも動かしたい時にマジ便利。例えば、Solidworks使ってるからWindowsは必須だし、Ford車のForscanもWindowsでしか動かん。WSL2があればPC一台でどんなソフトでも動かせてマジ助かる。" userName="ActorNightly" createdAt="2025/05/19 17:55:54" color="">}}




{{<matomeQuote body="LinuxのDistroboxでも似たことはできるけど、Windows+WSLで両方いいとこ取りも良いね。Microsoftは無駄を省いたWindows（Dev版とか）とMac並みの良いハードウェア出せばAppleに勝てるはず。今Macだけど本当はWindows+WSLが好き。でもMicrosoftの敵対的な態度や長いアプデが無理。PowerToysやWSLとか良い点もあるんだけどね。MacBook並のハードウェアもないし。" userName="thewebguyd" createdAt="2025/05/19 17:36:04" color="#45d325">}}




{{<matomeQuote body="「Linuxよりパワフル」がバカげてるって？いや、そうは思わないね。確かにVMだけどさ、Linuxに再起動するのが面倒になるくらいマジで良いんだよ。WSLがあれば両方の良いとこ取りできるじゃん。" userName="0x457" createdAt="2025/05/19 17:45:07" color="">}}




{{<matomeQuote body="Windows上でLinux VMを動かす方が、ただLinuxにブートするより良いって？へー、すごい意見だね。最近のWindowsはユーザー敵対的すぎて、使わなきゃいけない人マジかわいそうだと思うわ。それが「素晴らしい」なんて言うのは、なんかストックホルム症候群の症状みたいに見えるけどな。" userName="pton_xd" createdAt="2025/05/19 17:36:06" color="">}}




{{<matomeQuote body="俺にとって、LinuxをベースOSで使う一番良い点はWindowsを扱わなくて済むこと。スタートメニューの広告も無いし、無駄のないOSで、ファイルバックアップとかも簡単。他のプロセスが使ってても再起動なしでファイル消せたりとか。ホストとゲストを逆にするのがどうして良いのか分からない。" userName="lxgr" createdAt="2025/05/19 18:37:37" color="#45d325">}}




{{<matomeQuote body="ハードウェア目的でMacBookに移ったけど、前はWSLが私のLinux”ディストロ”だったよ。サスペンド、バッテリー、ハードウェアアクセラレーション、ディスプレイ設定みたいな基本的なことを動かすのに時間かけたくなかったからね。" userName="alex_smart" createdAt="2025/05/19 18:02:46" color="">}}




{{<matomeQuote body="俺はWindows開発がメインだけど、LinuxホストにWindows VMゲストの方が好きだな。安定してるし、アプデで壊れてもスナップショットで戻せる。使わないQA環境も複数バックアップできる。週末にVMの状態を保存して、次の週にそこから始められるのが便利。ベアメタルのWindowsじゃできないし、Windowsはスリープ復帰問題もあるから。" userName="yndoendo" createdAt="2025/05/19 19:04:29" color="#38d3d3">}}




{{<matomeQuote body="LinuxでLinuxができるってのは論点ズレてるよ。Windowsが深く統合されてて全機能使える、Linux上の逆WSLはどこにあるの？Wine/Crossoverは対応ソフト少ないし、Windows VMはWSLと同じじゃん。WSL2はVMだけど、使いやすくWindowsと統合するユニークなツールがあるんだよ。" userName="ThinkBeat" createdAt="2025/05/19 17:50:09" color="#ff33a1">}}




{{<matomeQuote body="WindowsとLinux、どっちが好きかの99.9%は「スタートメニューの広告が俺の潔癖症（OCD）を刺激するかどうか」にかかってる、って理論が俺の中にあるんだわ。" userName="phendrenad2" createdAt="2025/05/19 18:40:30" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
