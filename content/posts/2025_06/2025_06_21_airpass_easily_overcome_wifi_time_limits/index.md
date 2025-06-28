+++
date = '2025-06-21T00:00:00'
months = '2025/06'
draft = false
title = 'AirpassでWi-Fi時間制限を簡単に突破'
tags = ["Wi-Fi", "ネットワーク", "ツール", "時間制限", "Mac"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> AirpassでWi-Fi時間制限を簡単に突破

引用元：[https://news.ycombinator.com/item?id=44310763](https://news.ycombinator.com/item?id=44310763)




{{<matomeQuote body="Electronアプリ全体を起動したくないなら、このコマンドラインが重要だよ： sudo.exec(”/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport en0 -z ＆＆ ifconfig en0 ether `openssl rand -hex 6 | sed ’s/\(..\)/\1:/g; s/.$//’`”)" userName="classichasclass" createdAt="2025/06/21 15:37:13" color="#ff33a1">}}




{{<matomeQuote body="ビジネスロジックたった200バイトなのにUI ＆ boilerplateとかで47MBってどういうこと？<br>Electronは開発楽だけど、最近のアプリがこうも肥大化してるのは残念だね。" userName="paxys" createdAt="2025/06/21 17:24:36" color="">}}




{{<matomeQuote body="今どきのアプリの肥大化を例えるならさ、ロジック20バイト、全体47MBは235万倍。<br>これは1ポンドの物を747二機とシロナガスクジラで運ぶようなもん！20バイト動かすだけなのに。" userName="aeonik" createdAt="2025/06/21 17:31:59" color="#ff5c5c">}}




{{<matomeQuote body="Mac専用でメニューバーアイコンと通知だけ出すアプリがなんでElectronなの？ それってSwiftなら30行もあれば書けるっしょ。" userName="rafram" createdAt="2025/06/21 15:47:52" color="#ff5c5c">}}




{{<matomeQuote body="でもさ、荷物を保護する機能満載で、環境負荷もほぼなく、小さい飛行機と大差ないなら、でかい747で運ぶかもね。<br>ソフト開発には小さく効率的にするインセンティブがなくて、無料のでかいの使うメリットはいっぱいあるんだよ。" userName="anon7000" createdAt="2025/06/21 18:32:17" color="">}}




{{<matomeQuote body="その例えはちょっと違うんじゃない？だってデメリットあるじゃん、遅いしメモリもディスクも使うし。<br>…今どきのマシンで、アプリいっぱい動かすとき、みんな肥大化してると全体でめちゃくちゃ重くなるんだよ。" userName="dented42" createdAt="2025/06/21 18:39:17" color="#785bff">}}




{{<matomeQuote body="あのコマンドって具体的に何してるの？Wi-FiインターフェースがEthernetだと思わせると早くなるとか？" userName="hk1337" createdAt="2025/06/21 16:02:02" color="">}}




{{<matomeQuote body="関係ないかもだけどさ： 人を車で運ぶって、ペットボトル2本をカートで運ぶみたいなもん。<br>歩行者天国でみんなカート使ったら大渋滞。これって道路と同じだよね！" userName="aquafox" createdAt="2025/06/21 18:12:58" color="">}}




{{<matomeQuote body="あれは単にMACアドレスをリセットしてるだけだよ。<br>そうするとルーターが新しいデバイスだと認識して、「X分まで無料Wi-Fi」みたいな制限にかからなくなるんだ。" userName="sodality2" createdAt="2025/06/21 16:07:57" color="#ff5733">}}




{{<matomeQuote body="それは「take up a ton of memory」じゃないし、もし47MBが「a lot of disk space」だと思うなら、たぶんもっと大きい disk が必要だね。ほとんどの laptop は少なくとも250GBあるから、この program は disk space の約0.0188%しか使わないよ。frankly、大した量じゃない。私はこれより大きいPDFファイルも持ってたし、これを常に loaded して running する必要もないから、「take up a ton of memory」じゃないんだ。" userName="leptons" createdAt="2025/06/21 19:20:21" color="">}}




{{<matomeQuote body="それはほとんどの free wifi サービスが使ってる sms code の requirent を circumvent できないよ。" userName="dizhn" createdAt="2025/06/21 16:53:20" color="#ff5733">}}




{{<matomeQuote body="＞ it has nearly no environntal downside and has no aningful downside<br>これはそうじゃないと思うな。例えば、私たちは数年ごとに computer を買い替えるけど、それは新しいのが今の computer ではできないことができるからじゃなくて、同じことをするための software がどんどん resource-hungry になるからなんだ。" userName="GTP" createdAt="2025/06/21 19:21:55" color="">}}




{{<matomeQuote body="app の frontend が欲しいなら、たぶん Electron を使って数分で済ませちゃうのが一番手っ取り早いよ。Qt とか他の fraework の docs を dig through するよりね。それだけの価値があるか？たぶんないけど、これは single-platfo app だし。でもJS+HTMLは the and custoize しやすいけど、Qt は…そこまで簡単じゃないんだ。" userName="SR2Z" createdAt="2025/06/21 16:52:15" color="">}}




{{<matomeQuote body="それは externalized cost って呼ばれてて、IRL と同じくらい software でも real なんだよ。" userName="iknowstuff" createdAt="2025/06/21 19:59:48" color="">}}




{{<matomeQuote body="つまり cost は存在するんだけど、developer が（直接は）払ってないだけ。でも結局、私たちみんなが誰か他の人の externalized cost を払うことになるんだ。もちろん、その developer も他の developer の externalized cost を払ってるんだけどね。" userName="GTP" createdAt="2025/06/21 20:36:54" color="">}}




{{<matomeQuote body="47MB って、かつて広く使われた commercial graphical operating syst の約3倍の容量なんだ。それだけあれば Microsoft Word も入って、まだ plenty の space が残ってたよ。どれだけ堕ちたんだろうね。" userName="BobbyTables2" createdAt="2025/06/21 20:46:49" color="">}}




{{<matomeQuote body="いいね、bash alias として追加したよ。<br>alias randoac=’sudo /Syste/Library/PrivateFraeworks/Apple80211.fraework/Versions/Current/Resources/airport en0 -z && sudo ifconfig en0 ether $(openssl rand -hex 6 | sed ”s/../&:/g; s/:$//”)’" userName="tommoor" createdAt="2025/06/21 17:44:41" color="#ff33a1">}}




{{<matomeQuote body="MacでActionScriptってまだ生きてんの？昔は色んな処理の土台だったのに、 criminally overlooked（ひどく見過ごされてた）感あるよね。" userName="gopher_space" createdAt="2025/06/21 19:53:03" color="">}}




{{<matomeQuote body="いや、過去の人？今はHDDだって36TBだよ。どんどんデカくなってるんだから、47MBなんてマジで気にすることないって。" userName="leptons" createdAt="2025/06/21 21:36:39" color="">}}




{{<matomeQuote body="Swift分からないけどElectron知ってるなら、Javascriptで30行で書く方が楽勝っしょ。気に入らないなら、自分で書いて公開すればいいだけだしね。" userName="jeroenhd" createdAt="2025/06/21 16:53:41" color="">}}




{{<matomeQuote body="その人たちって、20分運転して来たとか、仕事帰りとか、他の用事とか、子供の迎えとか、色々あるだろ。まあ、君には良いことだったね。" userName="bongodongobob" createdAt="2025/06/21 20:23:52" color="">}}




{{<matomeQuote body="マジで、もっと多くの開発者がこれに少しでも関心持ってほしいわ。今のデスクトップアプリ開発って、本当に恥ずかしすぎる状態だよ。" userName="ryandrake" createdAt="2025/06/21 18:03:14" color="">}}




{{<matomeQuote body="macOS 26で試したら`airport`コマンド無くなってたわ。`airportd.sb`ってファイルはあるけど、なんかs-expression＼LISPのパーミッションっぽい。変なの。<br>追記：macOS 15のVMで試したら、<br>WARNING: The airport command line tool is deprecated and will be removed in a future release. For diagnosing Wi-Fi related issues, use the Wireless Diagnostics app or wdutil command line tool.<br>って出た。マジで無くなるのかよ。" userName="commandersaki" createdAt="2025/06/21 18:39:30" color="#45d325">}}




{{<matomeQuote body="ソフトウェアだと人件費＝時間＝金で、物理的なモノでいう質量のanalogous（類似物）みたいなもんだ。だから、アプリ使う人全員のtime savings（時間節約）と、コード手打ちするのとで計算しろよ。Mass（質量）のanalogousとか、マジで意味ない比喩だし。" userName="foxglacier" createdAt="2025/06/21 21:48:37" color="#785bff">}}




{{<matomeQuote body="俺に言わせりゃ、Electronってのはちゃんとやる方法を学ばなくて済むoverkill（やりすぎ）な手抜き方法だよ。で、みんな学ぶのが大嫌いなのさ。" userName="palata" createdAt="2025/06/21 17:33:21" color="">}}




{{<matomeQuote body="Electronアプリが「時間節約」とかマジで馬鹿げてる！ホントのコスト削減はlabor（労働力）だよ。<br>Web開発は、QtとかFlutterとかと比べても、nativeアプリ複数管理するより、マジで参入障壁が低い。だから、これは材料費って話じゃなく、talent（才能）の話。<br>Webのリーダーはcomplacent（自己満足）になってて、時には真剣じゃない。<br>SvelteKitとか見てみろよ。俺Web屋じゃないけど、Svelteは好きだけどSvelteKitは嫌い。major releaseは毎回「fuck you」って感じ。" userName="tucnak" createdAt="2025/06/22 20:50:57" color="#45d325">}}




{{<matomeQuote body="最近のOSにこの機能が組み込まれてて良かったよ。MacOS（Sequoia以降）ならネットワークを忘れて再接続すれば新しいMACアドレスになるんだ [1]。Androidのドキュメントは接続ごとに新しいアドレスを生成するかどうかちょっとあいまい [2] だけど、多分忘れて再接続でいけると思う。開発者向け設定で「Wi-Fi非永続的MACランダム化」の項目をオンにする必要があるかもね。Windowsだと「ランダムハードウェアアドレス」のスイッチをオンにすれば、新しいシード／アドレスが生成されるみたい。<br>[1] https://support.apple.com/en-euro/102509<br>[2] https://source.android.com/docs/core/connect/wifi-mac-random..." userName="ammar2" createdAt="2025/06/21 15:45:05" color="#ff33a1">}}




{{<matomeQuote body="[1]によると、新しいiOS/macOSバージョンだと24時間に1回しか機能しないらしいよ。古いのだと2週間に1回だけだって。" userName="lxgr" createdAt="2025/06/21 17:51:25" color="#ff5c5c">}}




{{<matomeQuote body="そうそう、開発者向け設定をオンにする必要があったけど、フライト中（American Airlinesの広告を見たら20分無料のインターネット、MACごとに1回だけ）で完璧に機能したよ。" userName="km3r" createdAt="2025/06/21 16:54:12" color="#ff33a1">}}




{{<matomeQuote body="それって、iOS 18で開発者モードを有効にしたら、ネットワークを忘れるたびに新しいMacアドレスになるってこと？開発者モードじゃないと忘れても毎回新しくならないの？このスレッドの別の場所でリンクされてるAppleのドキュメントだと、通常はネットワークを忘れても24時間に1回だけ新しいMacになるって書いてあるんだけど。来週長い船旅に出るんだけど、もしそうならこの技使えるかも！" userName="fendale" createdAt="2025/06/21 19:59:40" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もう何年も前の汎用Androidスマホを持ってるんだけど、メーカーがWi-Fi NVRAMをプログラムするのすらサボってたから、ドライバをロード／アンロードするたびに新しいランダム生成のMACアドレスになったんだ。それが最近機能になってるなんて面白いね。" userName="userbinator" createdAt="2025/06/22 03:53:22" color="">}}




{{<matomeQuote body="ローテーションするアドレスって3つまでじゃなかった？この記事のスクリプトはランダムに生成してるけど。" userName="bapak" createdAt="2025/06/21 16:37:03" color="">}}




{{<matomeQuote body="これはDebian Linux（ほとんどのディストリビューションで動くはず）用の似たような小さなスクリプトだよ、classhasclassのコメントを参考にしたんだ。<br>`wlan0`は`ip link show`で確認できる君のワイヤレスインターフェースに置き換えてね、俺の場合は`wlp0s20f3`だよ。`openssl rand`コマンドは無効なMACを生成することがあったから、これに置き換えたんだ。これで有効なものだけになるはず。<br>NEW_MAC=$(printf ’02:%02x:%02x:%02x:%02x:%02x<br>’ $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))<br>sudo ip link set wlan0 down<br>sudo ip link set wlan0 address ”$NEW_MAC”<br>sudo ip link set wlan0 up" userName="purplehat_" createdAt="2025/06/21 17:22:07" color="#45d325">}}




{{<matomeQuote body="KDE PlasmaにはNetwork ManagerのUIのMACアドレスのフィールドの隣に「Random」ボタンがあるよ。俺はDebian Testingを使ってるから、いつ追加されたかは分からないけど。" userName="righthand" createdAt="2025/06/21 17:46:31" color="#45d325">}}




{{<matomeQuote body="昔、寮がアカウントごとに512kbpsしかくれなかったから、Linuxボックスに仮想ethを20個くらい繋げて、その20個のインターフェースを束ねて使ってたんだ。" userName="vachina" createdAt="2025/06/21 18:33:34" color="">}}




{{<matomeQuote body="認証はどうやってたの？あと、トラフィック制御のロジックはどうなってたの？" userName="xrisk" createdAt="2025/06/21 19:16:36" color="#ff33a1">}}




{{<matomeQuote body="認証はキャプティブポータルでID／パスワードだよ。帯域増やしたかったら金払う感じ。システムが“pwned”状態だったから、結局自分で無制限帯域にしちゃったんだ。" userName="vachina" createdAt="2025/06/22 05:09:56" color="#ff5733">}}




{{<matomeQuote body="Macなら別の方法もあるよ。これ見てみて→https://github.com/halo/LinkLiar" userName="o_____________o" createdAt="2025/06/21 16:20:37" color="#ff33a1">}}




{{<matomeQuote body="↑これが良さそうだね。オープンソースだし機能も多いみたいだし。" userName="visiondude" createdAt="2025/06/21 17:42:53" color="">}}




{{<matomeQuote body="マジで遊ぶならMACアドレスを00:00:00:00:00:00に設定してみなよ。<br>これは不正なアドレスなんだけど、テスト用デバイスでたまにあるから大体の機器は受け付けちゃう。でも、ちゃんとした機器だと技術的に不正だから拒否されるかもね。" userName="mannyv" createdAt="2025/06/21 16:46:07" color="#45d325">}}




{{<matomeQuote body="これ試したことあるけど、キャプティブポータルも時間制限も完全に突破できたよ。" userName="totetsu" createdAt="2025/06/22 00:34:58" color="#ff5c5c">}}




{{<matomeQuote body="あーあ、macOSだとダメだったわ。<br>sudo ifconfig en0 ether 00:00:00:00:00:01<br>ifconfig: ioctl （SIOCAIFADDR）： Can’t assign requested address<br><br>追記: でも外部NICではこれ動いた！ただ、ネットワークは機嫌悪くてDHCP動かなかったけどね。Ubiquitiのこれに関する面白いメモがあったよ。「公式にはXeroxだけど、0:0:0:0:0:0の方がよく見る」だって。" userName="varenc" createdAt="2025/06/22 05:00:40" color="#ff33a1">}}




{{<matomeQuote body="IPとかネットマスク、ルーターIPをメモしておけば、0 MACアドレスで接続にスタティックIPを設定して動かせるかもね。いつものことだけど、環境によるかな（ymmv）。<br>機器によっては、どう実装されてるか次第でブロードキャストストームを起こすかも。Cisco機器だと、設定次第でパケット受け取ってもどこ行くか分かんない場合、全ポートに送っちゃうやつとかあるし。" userName="mannyv" createdAt="2025/06/22 17:06:22" color="#ff33a1">}}




{{<matomeQuote body="これ、Androidのネットワーク設定にはずーっとあるオプションだよね。MACアドレスのランダム化。今じゃデフォルトで有効になってるんじゃなかったっけ？<br>これ基本的なプライバシー機能なんだ。デバイスのMACアドレスで個人特定されちゃうからね。" userName="kazinator" createdAt="2025/06/21 15:43:25" color="">}}




{{<matomeQuote body="そうそう。Androidはデフォルトでやってくれるけど、SSIDごとにランダムなMACが割り当てられてそれが維持されるんだ。でも手動でMAC変えるのも簡単だよ。プライバシーには使えるけど、個人的には公開Wi-Fiの制限回避には役立たないと思うな。だってログインにSMSでのOTPが必要なことがほとんどだから。" userName="jck" createdAt="2025/06/21 16:05:42" color="#785bff">}}




{{<matomeQuote body="Android 11以降のデバイスなら、開発者向けオプションで全てのWi-Fiネットワーク（MACアドレスのランダム化が有効なものね）に対して、一時的じゃないMACアドレスのランダム化をグローバルに有効にできるんだ。このオプションは、設定＞開発者向けオプション＞Wi-Fi non-persistent MAC randomizationってところにあるよ。" userName="rahimnathwani" createdAt="2025/06/21 18:01:32" color="#ff5c5c">}}




{{<matomeQuote body="どうやってやるのか詳しく教えてくれる？ちょっと検索したけど、”straightforward”（簡単）には見えなかったんだ。" userName="matsemann" createdAt="2025/06/21 18:11:31" color="">}}




{{<matomeQuote body="SMSでのOTPは国によるね。イギリスじゃ最近あんまり見ないかな。メールアドレスを聞かれることが多いけど、俺の経験だと有効性チェックしない場合がほとんどだよ。" userName="tengwar2" createdAt="2025/06/21 22:02:03" color="">}}




{{<matomeQuote body="iOSとかmacOSにも、SSIDごとに固定するMACアドレスとローテーションするオプションがあるよ。" userName="hhh" createdAt="2025/06/21 16:13:27" color="">}}




{{<matomeQuote body="いや、その設定はネットワーク間でMACアドレスを変えるけど、特定のネットワークでは同じMACを使い続けるんだ。だから、ネットワークに新規ユーザーと思わせるには、そのネットワーク向けのMACアドレスを変える必要があって、それはデフォルト設定じゃないし、そもそも設定がないことも多いんだよ。" userName="NoahZuniga" createdAt="2025/06/21 16:01:35" color="#785bff">}}




{{<matomeQuote body="GrapheneOSには接続ごとにMACアドレスをランダム化する per-connection って機能があって、それはデフォルトで有効になってるよ。" userName="khimaros" createdAt="2025/06/21 17:39:57" color="#ff33a1">}}




{{<matomeQuote body="Android 11以降なら、開発者向けオプションでその選択肢があるんだ。" userName="rahimnathwani" createdAt="2025/06/21 18:02:24" color="">}}




{{<matomeQuote body="Appleデバイスにもあるよ。「ネットワークを削除」して再接続すれば、新しい偽MACアドレスをネットワークに伝えるんだ。" userName="netsharc" createdAt="2025/06/21 15:57:23" color="#45d325">}}




{{<matomeQuote body="MACアドレスの衝突とかバッティングはどうなるの？素朴な疑問なんだけど、MACアドレスって全部ユニークじゃないといけないと思ってたんだ。" userName="alt227" createdAt="2025/06/21 19:35:31" color="">}}




{{<matomeQuote body="LANセグメント内ではユニークじゃないとダメなんだ。MACアドレスの下位3バイトだけが”ユニーク”で、上位3バイトはベンダーIDでほとんど固定。実際にはClass Cみたいなネットワーク（256台未満）では衝突の可能性は低いけど、同じベンダーのデバイス数百・数千台だと衝突は十分あり得るよ。MAC衝突のトラブルシューティングって結構厄介で、IP衝突より分かりにくいんだよね。" userName="BobbyTables2" createdAt="2025/06/21 20:55:02" color="#785bff">}}




{{<matomeQuote body="MACをランダム化してないと、衝突したときに自分が困るだけだよ。<br>ランダム化してれば、一度つなぎ直せば大丈夫。<br>MACのランダム化はOUIもできるらしい。<br>AndroidはOUIも部分的にランダムにするみたいだよ。<br>だから、ほとんど衝突は起きないはず。" userName="kazinator" createdAt="2025/06/22 17:18:14" color="#38d3d3">}}




{{<matomeQuote body="アドレスは50兆個くらいあるらしいから、一つのネットワークでぶつかるなんてまずないでしょ :)" userName="diggan" createdAt="2025/06/21 19:47:43" color="">}}




{{<matomeQuote body="昔あったアプリを思い出したよ。<br>有料Wi-FiにつないでるMACアドレスをスキャンして、自分のMACをそれに変えて、使い終わったら元に戻すやつ。" userName="josh_carterPDX" createdAt="2025/06/22 05:58:13" color="">}}




{{<matomeQuote body="それって、元のデバイスと干渉しないの？<br>お互いに相手宛てのパケットを受け取っちゃったりするんじゃないの？" userName="WJW" createdAt="2025/06/22 10:15:39" color="">}}




{{<matomeQuote body="うん、そうなるよ。あれは良くない（たぶん違法？）こと。<br>被害者のデバイスはパケットを失い始めて、ネットワークが不安定に見えるんだ。<br>最終的に、相手があきらめて切断して、君が完全にコントロールできるようになるってわけ。" userName="rafram" createdAt="2025/06/22 13:04:18" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="STPとかanti-flappingが有効になってるネットワークなら、すぐに対策されちゃうと思うけどね。" userName="bongodongobob" createdAt="2025/06/22 17:38:52" color="#785bff">}}




{{<matomeQuote body="パリのホテルでそれを試したら、うまくいったよ。" userName="bibelo" createdAt="2025/06/22 09:27:17" color="">}}




{{<matomeQuote body="別の方法として、Wi-Fiから切断して、このコマンドを使って再接続するんだ。<br>sudo ifconfig en0 ether 02:11:22:33:44:55<br>icelandairでこれに出くわしたよ。" userName="glerk" createdAt="2025/06/21 15:55:23" color="#ff33a1">}}




{{<matomeQuote body="それは一時的に使えるようにするだけだよ。<br>有効期限が切れるたびに、番号を変える必要があるね。" userName="pcl" createdAt="2025/06/21 17:12:11" color="">}}




{{<matomeQuote body="Electronアプリも同じ制限があるみたい（「無料Wi-Fiのためにネットワークに再接続して」って通知が出る）。<br>それに、ネットワークインターフェースが使われてたらMACアドレスは変えられないはずだよ。" userName="glerk" createdAt="2025/06/21 17:27:49" color="">}}




{{<matomeQuote body="この記事の簡単な対策は、Wi-Fiアクセスに時間制限パスワードを使うことだよ。有効なパスワード入れるまでアクセス拒否して、そのパスワードとMACアドレスの組み合わせだけ数分間許可するんだ。コーヒー買って新しいパスワードもらうとかね。" userName="netik" createdAt="2025/06/21 17:27:00" color="#ff33a1">}}




{{<matomeQuote body="へぇ、そんなに”簡単”なら何年も前にやってたでしょ。でもカフェは結局やめちゃったんだよね、全然簡単じゃなかったから。店員さんの時間は、コーヒー作るのに使った方が効率的でしょ？パスワード問題で何回も低いレベルの技術サポートするよりね。" userName="reaperducer" createdAt="2025/06/21 18:29:38" color="#38d3d3">}}




{{<matomeQuote body="技術的には簡単だけど、お店がWi-Fiルーター買い替えたりファームウェア更新したり、店員さんが今のパスワード見れるようにしたり、POSシステムと連携してレシートに印刷したり、看板更新したり…って話でしょ。普通のIT詳しくない経営者には全然簡単じゃないよね。" userName="pimlottc" createdAt="2025/06/21 18:10:08" color="#ff5c5c">}}




{{<matomeQuote body="MacってMACアドレスをランダムに変える機能もうあるよね？この機能を見破って、オフにしないと繋がらせてくれないアクセスポイントもあったよ。" userName="cactusplant7374" createdAt="2025/06/21 15:35:44" color="#ff5733">}}




{{<matomeQuote body="どうやって検出したんだろうね？もしかしたらランダムに生成されたMACアドレスのほとんどが、無効だったり割り当てられてないスペースにあるとか？" userName="myself248" createdAt="2025/06/21 15:47:18" color="">}}




{{<matomeQuote body="RFC 7042によると、MACアドレスには”ローカルビット”ってのがあるんだ。だから、2番目の文字がE、A、2、6のMACアドレスは”ローカル”で、実質”ソフトウェアがランダムに選んだ”ってことなんだよ。だから僕の今のmacOSが選んだMACアドレス 16:6a:d2:20:e6:eb は、2番目の数字が6だから”ローカル”ってわけ。" userName="jasongill" createdAt="2025/06/21 15:54:20" color="#ff5733">}}




{{<matomeQuote body="うーん、もしかして僕のM1 Macがカフェのホットスポットに繋がりにくい理由ってこれなのかな？よく、繋がったと思ったら1分もしないうちに切られちゃう場所があるんだよね。" userName="bapak" createdAt="2025/06/21 16:39:16" color="">}}




{{<matomeQuote body="これ知らなかった！普通はGPが言ってたみたいにOUIでやってると思ってたんだ。有効なOUIの小さいキャッシュテーブルを持ってて、その範囲外のプレフィックスは警告出すって感じでね。情報共有ありがとう！" userName="boston_clone" createdAt="2025/06/21 16:25:00" color="#ff5733">}}




{{<matomeQuote body="これってさ、自分のMACアドレスを管理するユーティリティとして使った方が役に立ちそうじゃない？例えば、PCとスマホの間でMACアドレスとかIPアドレスをクローンしたり、競合を自動で解決したりとか。そうすれば、飛行機とかで買ったWi-Fiを複数のデバイスで分け合えるしね。" userName="avidiax" createdAt="2025/06/21 15:38:20" color="#ff33a1">}}




{{<matomeQuote body="そうすれば、飛行機とかで買ったWi-Fiを複数のデバイスで分け合えるしね。それにはルーターが必要だけど、幸いなことに最近のほとんどのスマホやPCにはそれが内蔵されてるんだよ。" userName="userbinator" createdAt="2025/06/22 03:57:01" color="#ff33a1">}}




{{<matomeQuote body="同じMACアドレスじゃ複数台で共有は無理だよ。1台だけしか無理。" userName="jagged-chisel" createdAt="2025/06/21 20:24:59" color="">}}




{{<matomeQuote body="時間制限Wi-Fiなんて見たことないな〜。ネットカフェは昔あったけど、どこでよくあるの？" userName="balls187" createdAt="2025/06/21 19:48:48" color="">}}




{{<matomeQuote body="飛行機以外だと空港にもあるよ。チューリッヒ空港は4時間無料、シュトゥットガルト空港は60分とかね。" userName="mr_mitm" createdAt="2025/06/22 14:54:07" color="#ff5733">}}




{{<matomeQuote body="Virgin Atlanticは20分無料だよ。その後は有料。" userName="scarface_74" createdAt="2025/06/22 13:24:41" color="#ff33a1">}}




{{<matomeQuote body="記事のタイトルは航空会社の制限のことじゃない？JALとか1時間無料だったりするし。" userName="mcshicks" createdAt="2025/06/21 20:14:50" color="">}}




{{<matomeQuote body="飛行機での使い方を考えてたけど、普通座席番号とか聞かれるよね？MACアドレスだけで無料くれる航空会社あるの？メッセージング無料はよくあるけど。チャットで使えるサーバー作りたいな〜。" userName="andy99" createdAt="2025/06/21 20:33:35" color="">}}




{{<matomeQuote body="チャットで有用機能使えるサーバーはもうあるよ！<br>WhatsApp: https://news.ycombinator.com/item?id=33568994<br>Facebook Messenger: https://news.ycombinator.com/item?id=9203946<br>SMS: https://news.ycombinator.com/item?id=8304409" userName="userbinator" createdAt="2025/06/22 04:01:55" color="#ff5c5c">}}




{{<matomeQuote body="JALで試したけどメアド聞かれただけだったよ。メアド2つ使えば倍の時間いけるかと思ったけど、1時間無料だったから十分だったな。仕様変更されるかもね。" userName="mcshicks" createdAt="2025/06/21 20:51:03" color="#38d3d3">}}




{{<matomeQuote body="飛行機とかね。30分無料とかのやつ。" userName="josu" createdAt="2025/06/21 20:36:33" color="">}}




{{<matomeQuote body="最近フライトで時間制限が問題になったことないな〜。有料でログインするんじゃないの？そもそも繋がっても不安定で使えないのが最大の問題だけどね。" userName="seemaze" createdAt="2025/06/22 15:43:22" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
