+++
date = '2025-05-09T00:00:00'
months = '2025/05'
draft = false
title = 'Starlinkユーザー端末をバラしてみたら'
tags = ["Starlink", "分解", "ハードウェア", "セキュリティ", "ネットワーク"]
featureimage = 'thumbnails/color3.jpg'
+++

> Starlinkユーザー端末をバラしてみたら

引用元：[https://news.ycombinator.com/item?id=43933452](https://news.ycombinator.com/item?id=43933452)




{{<matomeQuote body="Starlink 端末に初期化時、自動で41個の SSH public keys が authorized_keys に書き込まれるらしい。<br>しかも port 22 は常に開いてるって。<br>41個って誰が root アクセス持ってないんだよ？って話。" userName="jwrallie" createdAt="2025/05/09 05:02:04" color="">}}




{{<matomeQuote body="お前は持ってないだろ、たぶん。<br>もっと真面目な話だけど、これって ISP が提供してるルーターのリモート管理システムと何か違うの？プライバシーの面で言えば、もし SpaceX がユーザー端末にアクセスできなくても、衛星や地上局でトラフィックを傍受できるし。" userName="yonatan8070" createdAt="2025/05/09 05:25:14" color="">}}




{{<matomeQuote body="これって ISP が提供ルーターをリモート管理するのとどう違うの？<br>ヨーロッパでは自分のルーター/モデムを使わせる ISP が増えてるらしい。光回線で SFP+ 使って自分で繋いでる人もいるし、 Ubiquiti/OPNsense/OpenWrt ルーターでリモート管理されてない人も多い。 Starlink も ISP だし、これが適用されるのかな？" userName="danieldk" createdAt="2025/05/09 06:09:59" color="#ff5c5c">}}




{{<matomeQuote body="ISP は自分で用意したルーターの使用を許可するだけでいいみたい。<br> DOCSIS や GPON は複雑で、最近の ONT なんかはメディア変換以上のことをしてる。 ISP は TR-069 っていうバックドアで端末を完全に制御してるんだ。これは Starlink が SSH key でアクセスしてるのと似てる。<br>自分で用意したモデムを ISP がサポートする義務はまずないだろうね。ブリッジモードでも TR-069 は動いてるよ。" userName="prajaybasu" createdAt="2025/05/09 06:47:43" color="#ff33a1">}}




{{<matomeQuote body="単に41個のリージョンにある同じサーバーのインスタンスってだけかもね。別に心配する理由じゃないよ。 Starlink はグローバルサービスだし。41個のインスタンスが1つの key を共有してる方が俺は心配だ。" userName="niobe" createdAt="2025/05/09 06:06:17" color="">}}




{{<matomeQuote body="Starlink は従来の意味での ISP じゃないんだ。<br>普通の ISP がある国で事業をするなら、その国にインフラが必要になる。ってことは、その国の法律に従うか、インフラが差し押さえられるかだ。<br> Starlink は米国から完全に運用することもできるし、もし外国の法律を破っても、外国政府ができることはほとんどないだろうね。支払いや配送を複雑にすることはできるだろうけど、たぶん Starlink は多少合理的な要求なら応じるだろうさ。でも Musk は、本当に必要な状況なら不合理な制限にも立ち向かうって何度も示唆してるけどね。" userName="miki123211" createdAt="2025/05/09 08:40:36" color="#ff33a1">}}




{{<matomeQuote body="＞41個のインスタンスが1つの key を共有してる方が俺は心配だ。<br>何十、何百、何千っていうウェブサーバーが1つの証明書の private key を共有することなんて簡単だし、 public keys ならもっとまともな設計で色々できるよ。 ssh-keys を使って41台のサーバーを直接認証するなんて、ただの下手くそでいい加減なエンジニアリングだよ。" userName="overfeed" createdAt="2025/05/09 06:55:15" color="#ff33a1">}}




{{<matomeQuote body="＞ DOCSIS や GPON はそうはいかないんだ<br>少なくとも Finland じゃ、どのメーカーの DOCSIS modem でも使えるのが普通だよ。 ISP に modem の MAC address を伝えるだけさ。<br>でも GPON は違うね。" userName="AnssiH" createdAt="2025/05/09 08:39:57" color="#ff5733">}}




{{<matomeQuote body="俺はたった1人のユーザーだけど、 authorized_keys は25行あるんだ。<br>ノートパソコンには違う yubikeys が入ってるし、 keys on iPads や iPhones にも鍵がある、それに macs には secure enclave keys もあるしね。<br> Starlink には1人か2人以上の sysadmins がいると思うんだ。100個くらいの pubkeys は妥当だろうさ。" userName="sneak" createdAt="2025/05/09 07:44:42" color="">}}




{{<matomeQuote body="＞ 光回線で SFP+ module で自分で router を繋げる<br>君はこれがどういう仕組みか、あまり理解してないんじゃないか？<br> ISP はその fiber のもう一方の端っこが繋がってる先を制御してるんだよ。媒体が fiber だろうが copper だろうが piece of string だろうが関係ない。 ISP は customer interface の反対側を常に制御してるんだ。物理的に box が君の家に置いてあるかどうかは関係ない。<br> Starlink の場合は、全部1つの box に入ってる。<br> DOCSIS ( cable ) の場合、 modem を物理的に所有してるかもしれないけど、 ISP が netboots する firmware や device への full remote admin を制御してるんだ。" userName="donnachangstein" createdAt="2025/05/09 07:15:38" color="#ff33a1">}}




{{<matomeQuote body="国によっては衛星システム使うのに国内の地上設備が必要なんだって。Starlinkも地上局いっぱい要るらしいよ。全部スキップできるわけじゃないけど、米国だけじゃ全世界カバーはキツいみたい。" userName="verzali" createdAt="2025/05/09 09:32:29" color="#ff5c5c">}}




{{<matomeQuote body="＞だからさ、ISPが自分で用意したモデムのサポートを義務付けられてるかは怪しいな、EU法は分かんないけど。オランダのZiggoってとこはDOCSISで、自前モデムの使い方が載ってるみたい（リンクあり）。ブリッジモードじゃなくて、ホントに自分のモデムを使えるんだって。Edit: それ、ホントに自分のモデムを使ってる話だよ。ブリッジモードにする話じゃない。" userName="bkor" createdAt="2025/05/09 07:02:14" color="#ff5c5c">}}




{{<matomeQuote body="ルーターにアクセスできちゃうと、ローカルの通信もインターネットの通信も全部見られちゃう可能性があるね。" userName="ronsor" createdAt="2025/05/09 05:26:12" color="">}}




{{<matomeQuote body="アメリカでも一緒だよ。ケーブルネットならどこでも自分で用意したDOCSISモデム使えるんだ。" userName="devmor" createdAt="2025/05/09 12:47:33" color="">}}




{{<matomeQuote body="モデムもルーターも自前で使えるように許可しないといけないんだってさ。EUの決まりで”エンドユーザーは様々な端末機器を選べる自由がある”。ISPはネットに繋ぐ端末機器の利用に制限を課しちゃダメなんだって。［1］でも、今は全部守ってる国は5つだけだって（ドイツ、オランダ、ベルギー、フィンランド、リトアニア）。［2］例えばオランダのISPはPPPoEとSIP（電話）に必要な設定情報とかくれるんだ。［3］" userName="Tijdreiziger" createdAt="2025/05/10 01:11:16" color="#38d3d3">}}




{{<matomeQuote body="モデム持ってるだけじゃリンク層へのアクセスしかできないって。俺のルーターとかHTTPSの通信にはアクセスできなかったよ。" userName="mattclarkdotnet" createdAt="2025/05/09 07:26:04" color="">}}




{{<matomeQuote body="俺の場合はComcastが特定のモデルしかダメだったな。全部コントロールしたいからって。Comcastのファームウェアを入れられて、その後はComcastでしか使えなくなるって言われたよ。2017年くらいの話。" userName="bombela" createdAt="2025/05/09 20:45:02" color="#ff33a1">}}




{{<matomeQuote body="”お前の”モデムは”向こうの”ファームウェアをネットから読み込んでて、管理画面から全部リモートでアクセスされちゃうんだぜ。" userName="donnachangstein" createdAt="2025/05/09 07:22:06" color="">}}




{{<matomeQuote body="ルーターをroot権限で弄れたら、暗号化されてないHTTPSの通信にアクセスできると思う？" userName="jmb99" createdAt="2025/05/09 08:21:43" color="">}}




{{<matomeQuote body="プライベートキーって共有しない方が良くない？<br>サーバー侵害されたらもっと大変になるんじゃないの？" userName="gardenerik" createdAt="2025/05/09 07:38:36" color="">}}




{{<matomeQuote body="モデムの場合は違うと思うな、間接的に接続された端末設備には”例外”があるんだって。<br>面白いことに衛星地球局は法律に明記されてるから、多分自分のStarlinkアンテナは使えるけど、自分のモデムはダメかもね…法律って変だよね。" userName="raron" createdAt="2025/05/10 02:58:35" color="#38d3d3">}}




{{<matomeQuote body="それな。<br>どうせモデムのバックドアインターフェースで設定ファイル使ってプロビジョニングしてアクセスできちゃうしね。<br>モデルによるけど（例えばArrisモデムとか）、パスワードの今日のシードを設定したり（工場出荷時のデフォルトから変更）、もっとロックダウンしてリモートから管理アクセス得ることもできるんだ。" userName="kotaKat" createdAt="2025/05/09 10:22:23" color="#ff33a1">}}




{{<matomeQuote body="それなんか変だねー君のところのインフラの名残かな？<br>俺は同じ時期にComcastで独自のファームウェア入れた自分のDOCSISモデム使ってたよ。<br>ありきたりなArris Surfboardだったけど。" userName="devmor" createdAt="2025/05/10 01:22:09" color="">}}




{{<matomeQuote body="プライベートキーを世界中で使い回すのは手抜きエンジニアリングだと思うな。<br>普通、侵害時の露出は最小限に抑えたいもんでしょ、最大化じゃなくて。" userName="jmb99" createdAt="2025/05/09 08:23:58" color="">}}




{{<matomeQuote body="そういうキャプチャはパフォーマンスには最悪だよ。<br>ハードウェアオフロード無効にする必要があるし、キャプチャしたパケットをアップリンクで敵にストリームしなきゃいけない。<br>ローカルストレージも超遅い数ギガバイトに制限されるから、オフライン解析もできないね…<br>ルーターアクセスのリスクはむしろ、能動的な監視じゃなくて、ネットワークに入ってきて無防備で脆弱なものをいじることの方だよ。" userName="arghwhat" createdAt="2025/05/09 06:06:13" color="#45d325">}}




{{<matomeQuote body="法律ってのは実際そんな風には機能しないんだよ。<br>特定国の顧客に製品売るなら、大抵その国の法律に従う必要がある。<br>すごく小規模でサービスが完全に仮想なら避けられるかもね。<br>でもStarlinkが顧客に物理ハードウェア提供する限り、規制を強制する方法はいくらでもあるよ。<br>それに、いつでも人を追い詰めることはできるーStarlinkの幹部も顧客も両方ね。" userName="ratatoskrt" createdAt="2025/05/09 09:07:55" color="#ff5c5c">}}




{{<matomeQuote body="君が求めてるのはX.509ではサポートされてるけど、OpenSSHは独自の証明書交換標準を作ったから、その機能はサポートしてないんだよ。<br>HTTPSはX.509を使ってる。<br>OpenSSHはX.509をサポートする気もないし、俺が知る限りでは”自己署名”キー以外をサポートするようにバージョン変更する気もなさそうだね。" userName="harrall" createdAt="2025/05/09 15:35:14" color="#ff5733">}}




{{<matomeQuote body="DOCSISのことはよく知らないけど、ここThe Netherlandsの光回線では全く違うよ。<br>自分のOPNsenseマシン（か好きなもの）に自分で選んだSFP+モジュール繋げられるんだ（送信機が互換性あれば、だけどね）。<br>ISPがリモート管理する方法は全くないよ。<br>それにDOCSISはこっちじゃゆっくり死にかけてるし、ケーブルプロバイダーがネットで競争力ないから顧客がどんどん離れてるんだ。<br>もっと良いリニアTVパッケージがなかったら、顧客離れはもっとひどいだろうね。" userName="danieldk" createdAt="2025/05/11 08:07:01" color="#ff5733">}}




{{<matomeQuote body="”君”の端末なのにルートアクセスできないってどうなの？まあ擁護はしないけど、気になるわ。端末がローカルネットとかインターネットに繋がってないなら、その鍵で繋ぐには衛星ネットワーク通るんだよね？Starlinkって衛星ルーターでどんなNATとか使ってんのかな？" userName="adolph" createdAt="2025/05/09 11:37:03" color="#38d3d3">}}




{{<matomeQuote body="似たような投稿の議論だよ。<br>SpaceX Starlink User Terminalの分解<br>https://news.ycombinator.com/item?id=25277171 (2020年12月2日 — 158ポイント、138コメント)" userName="latchkey" createdAt="2025/05/09 04:27:57" color="#45d325">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="41個の公開鍵、投稿してみたら？誰が使ってるかわかるかもよ。" userName="purpleidea" createdAt="2025/05/09 08:43:30" color="">}}




{{<matomeQuote body="これ見て。<br>https://web.archive.org/www.darknavy.org/blog/a_first_glimps..." userName="walterbell" createdAt="2025/05/09 03:04:23" color="#ff5c5c">}}




{{<matomeQuote body="全部ユーザー空間でパケット処理してるって驚いたわ。1Gbpsで100バイトのUDPパケットだと、秒間百万個の処理が必要になる。1GHzのCPUじゃ1個に1000サイクルしか使えない。やれることではあるけど、アセンブリ手書きとかルックアップテーブル技とか駆使しないと簡単じゃないね。" userName="londons_explore" createdAt="2025/05/09 04:51:09" color="#45d325">}}




{{<matomeQuote body="＞ 既存の研究[3]によると、これらのプログラムや構成の予備的分析では、ネットワークスタックのアーキテクチャはDPDK[4]にいくらか似てて、主にユーザー空間のC++プログラムでカーネルをバイパスしてネットワークパケットを処理してるみたいだね。<br>普通は最初のパケットはソフト処理だけど、接続先が決まればハード経由になるよ。特定のパターンはソフト処理のこともある。<br>ソフトはパッチ当てたカーネルか、XDPみたいなカーネルバイパスかも。<br>Source：Intel PumaのモデムとかでDPDKに関わってた経験からの推測だけどね。" userName="hackernudes" createdAt="2025/05/09 05:02:20" color="#785bff">}}




{{<matomeQuote body="＞ パケットが全部ユーザー空間で処理されてるって聞いて驚いたな…<br>特に転送なら、DPDKみたいなやり方はバッファコピー減らせるから速くなるかもね。<br>Starlinkって25-200Mbpsしか出ないし、平均パケットサイズも7-8倍デカいから、多くても秒間36000パケットくらいだよ。<br>これなら1GHzでも結構ラクに処理できる。" userName="dilyevsky" createdAt="2025/05/09 07:34:12" color="#ff5c5c">}}




{{<matomeQuote body="カーネルでパケット処理するより効率悪くなる理由って何？<br>ハードウェアキューをユーザー空間にマップする方法があるんだよ（記事にもシステムがDPDKライクだって書いてる）。<br>そうなると、ポーリングコードがカーネルにないことがなんで問題になるの？" userName="riehwvfbk" createdAt="2025/05/09 05:03:03" color="#38d3d3">}}




{{<matomeQuote body="100Mbps以上のほとんどのハードウェアってハードウェアオフロードがあるんだよ。<br>要は、ハードウェアにどのパケットどこに送るか指示してて、ソフトは個々のパケットには触らないの（pingみたいな珍しいパケット以外ね）。" userName="londons_explore" createdAt="2025/05/09 06:12:30" color="#38d3d3">}}




{{<matomeQuote body="そうそう、でもユーザー空間でプロトコル処理しつつ、GSOとかGRO使うこともできるんだぜ。" userName="riehwvfbk" createdAt="2025/05/09 18:10:30" color="">}}




{{<matomeQuote body="いやいや、そんなことないよ。その速度なら、家庭用からエンタープライズまで、何年も前から簡単にCPUだけで動くルーターはいっぱいあるんだよ。" userName="Hikikomori" createdAt="2025/05/09 15:33:21" color="">}}




{{<matomeQuote body="＞100バイトのUDPパケットってあるけど、100バイト？？Starlinkは普通の1500バイトのMTUだよ。" userName="rapsey" createdAt="2025/05/09 05:50:20" color="">}}




{{<matomeQuote body="ネットワークの世界じゃ、パフォーマンスを測る時はpps、つまり小さいパケットで測るのが普通なんだ。DPIとか暗号化でもしない限り、ルーターはヘッダーだけ見てルーティング決めるから、ペイロードが10バイトだろうが1000バイトだろうが処理コストは同じ。大きいパケットだとハードウェアの帯域幅だけが重要になるけど、これはめったに問題にならない（DDR4の限界に一度ぶち当たったことあるけど、メモリ増やしたら直ったよ）。" userName="tuetuopay" createdAt="2025/05/09 08:08:47" color="#785bff">}}




{{<matomeQuote body="RTP通信だと、小さいパケットがたくさん発生することがよくあるんだ。" userName="Tepix" createdAt="2025/05/09 07:48:01" color="">}}




{{<matomeQuote body="ユーザー空間でやると、もう一つのmemcpyを避けられるから、ずっと速くなるんだ。" userName="_joel" createdAt="2025/05/09 11:32:49" color="">}}




{{<matomeQuote body="最近のLinuxは、ちょっと手間はかかるけど、カーネル経由でzero-copy network I/Oができるよ。" userName="jcalvinowens" createdAt="2025/05/09 23:46:22" color="">}}




{{<matomeQuote body="最初にさ、それ買わないとね。次に分解するじゃん。で、侵入方法考えんの。そんで実際にやる。そんで、壊しちゃったーって嘆くんだよ。大体UARTがあるもんだけど、Starlink端末にはないみたい。だから代わりにeMMCメモリーチップ（要は soldered microSDカード）を外したんだね。" userName="immibis" createdAt="2025/05/09 20:51:29" color="#38d3d3">}}




{{<matomeQuote body="ハードウェアエンジニアリングを先に勉強したら？部品が何するのかとか、どう扱うのか知らないと、リバースエンジニアリングするの難しいだろうね。" userName="dfedbeef" createdAt="2025/05/09 18:10:05" color="">}}




{{<matomeQuote body="＞DARKNAVYがRev3ファームウェア用のQEMUベースのエミュレーション環境を構築した<br>って書いてあるけど、外部デバイス（GPSとか）に繋がるファームウェアのエミュレーション方法とか、なんか ready solutions とか、そういう資料のリンク知ってる人いる？" userName="breppp" createdAt="2025/05/09 08:15:27" color="#785bff">}}




{{<matomeQuote body="これ見てみて。<br>https://android.googlesource.com/platform/external/qemu/+/2d...<br>Android EmulatorはQEMU Emulatorの下流だよ。Androidデバイスのブートとか、よくあるAndroidハードウェア（OpenGLとかGPS、GSM、Sensorsとかね）のエミュレーション、あとGUIインターフェースもサポートしてるんだ。Android Emulatorはいろんな形でQEMUを拡張してるんだよ。" userName="walterbell" createdAt="2025/05/09 10:46:58" color="#45d325">}}




{{<matomeQuote body="ありがとう、新しいエミュレートデバイスのネタ元としてすごく興味深いね。<br>でも、外部環境とやり取りするファームウェアを取り上げて、それをどうエミュレートするかっていう全体的なガイドを探してたんだ。" userName="breppp" createdAt="2025/05/10 09:15:05" color="">}}




{{<matomeQuote body="君が探してるのは、ソフトウェアとしてどれなの？<br>（a）”ファームウェア”＝OS/ドライバ/ユーザー空間を動かすプラットフォーム（x86/Arm SoCとか）をエミュレートするの？<br>（b）外部と通信するデバイス（MCU、センサー、ゲートウェア、ファームウェアとか）を（a）と通信させるようにエミュレートするの？<br>（c）（a）で動くOS+ユーザー空間ソフトの振る舞いをシミュレートするの？<br>（d）その他？<br>（a）みたいなのは、QEMU（OSS）、Ant Micro Renode（OSS）、Arm FVP（商用）、Intel SIMICS（商用）とかがあるよ。" userName="walterbell" createdAt="2025/05/10 21:27:12" color="#ff5733">}}




{{<matomeQuote body="a+bだよ。既存の組み込みファームウェアで、主にテスト目的でやりたいんだ。" userName="breppp" createdAt="2025/05/11 17:31:07" color="">}}




{{<matomeQuote body="製品のファームウェアをリバースエンジニアリングからどう守るかっていうのに興味あるんだ。SpaceXが使ってる技術の入門的な情報とか、どっかにないかな？" userName="alextousss" createdAt="2025/05/09 12:48:56" color="#ff5733">}}




{{<matomeQuote body="ステップ1はファームウェアの暗号化みたいなことかな。だからSpaceXは何もしてないか、後追いで対応してるんじゃないかって思う。誰かが攻撃方法を公開するまでデバッグピンがあったみたいだしね。" userName="wepple" createdAt="2025/05/09 13:58:23" color="#38d3d3">}}




{{<matomeQuote body="最低限やるなら、rootfsをセキュアエレメントから抜き出すのが難しい秘密鍵で暗号化すべきだね。さらに一歩進むなら、ARMのTrustZoneみたいなのを使って、大事な操作（ブートローダーとか、復号化、イメージの署名とか）を隠しちゃうこともできる。ファイルシステムを簡単にダンプできたってことは、記事で言ってるブートローダー以外の保護はSpaceXで使われてないってことだと思うよ。" userName="doawoo" createdAt="2025/05/09 17:33:50" color="#785bff">}}




{{<matomeQuote body="イマイチなファームウェアのいい製品いっぱい使ってきた経験から言うと、マジで強い、現実的な、ちゃんと分析した理由がない限り、今回の分解はやめたほうがいいと思うな。それよりも、リソースは賢く使って、みんなのためになったり製品を良くしたりすることに費やそうよ。ヘビーユーザーにとっては、製品を改造できる（たぶん想像もしてないような方法で）って理論上の可能性は、すごく価値のあるメリットになりうるんだよね。だから、これでなんかマジで損害被るって確信がない限り、価値が微妙なこと（あなたとユーザー’の）に時間を使わないことを考えてほしいな。これは技術的なエンドユーザーの視点から言ってるだけだよ。マジで疲れてて、デバイス（ライト、猫の餌やり機、今はローイングマシン）をちゃんと動かすためにハックしなきゃいけないのに、ちょっと憂鬱になってるんだ。" userName="drdaeman" createdAt="2025/05/09 18:06:10" color="#45d325">}}




{{<matomeQuote body="もしLinux使ってるなら、たぶんGPL違反になっちゃうよ。" userName="pabs3" createdAt="2025/05/11 22:36:15" color="">}}




{{<matomeQuote body="これ、ロケットとコードベース共有してんの！？ 超かっこいいじゃん！" userName="numpad0" createdAt="2025/05/09 16:01:41" color="">}}




{{<matomeQuote body="いや、もっとクールだよ、衛星とコードベース共有してるんだよ；たぶん衛星シミュレーターかも。テレメトリ送らなきゃいけないやつ。" userName="axus" createdAt="2025/05/09 17:30:01" color="">}}




{{<matomeQuote body="いや、OpenWRTベースだよ。" userName="antidumbass" createdAt="2025/05/09 17:09:31" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
