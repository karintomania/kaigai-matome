+++
date = '2025-06-12T00:00:00'
months = '2025/06'
draft = false
title = 'ついにQEMU上でiPhone 11のエミュレーションに成功！'
tags = ["エミュレーション", "QEMU", "iPhone", "仮想化", "ARM"]
featureimage = 'thumbnails/purple7.jpg'
+++

> ついにQEMU上でiPhone 11のエミュレーションに成功！

引用元：[https://news.ycombinator.com/item?id=44258670](https://news.ycombinator.com/item?id=44258670)




{{<matomeQuote body="関連議論のリンクだよ！<br>Hacker Newsのスレッド（356ポイント、2022年、144コメント）これ→ https://news.ycombinator.com/item?id=30545425<br>あと、このリポジトリに言及してる関連記事（268ポイント、2ヶ月前、64コメント）これだよ→ https://news.ycombinator.com/item?id=43592409" userName="gnabgib" createdAt="2025/06/12 16:53:55" color="#38d3d3">}}




{{<matomeQuote body="Issue tracker見た感じ、その後かなり進んでるみたいだよ。" userName="msgodel" createdAt="2025/06/12 17:03:42" color="#ff33a1">}}




{{<matomeQuote body="進捗報告だよ！<br>eShardの記事にiOS 14エミュレーションの詳細があるみたい→ https://eshard.com/posts/emulating-ios-14-with-qemu-part2<br>QEMUでiOSをエミュレーション、こんな機能があるんだって:<br>• リストア起動<br>• ソフトレンダリング<br>• デバッグ<br>• ホストとペアリング<br>• シリアルSSHアクセス<br>• マルチタッチ<br>• ネットワーク<br>• IPA実行<br>あと、CellebriteがCorelliumを買収したってニュースもあるよ→ https://news.ycombinator.com/item?id=44221982" userName="walterbell" createdAt="2025/06/12 18:46:23" color="#785bff">}}




{{<matomeQuote body="eShardの取り組みとこのGitHubリポジトリは、知ってる限り結構違うみたい。<br>eShardの人たちは、このリポジトリの古いバージョンを見つけて、制限されたエミュレータで動かすためにiOSのいろんなところをパッチしまくったらしい。<br>一方、エミュレータ自体は進歩してて、たぶんeShardのパッチより速く進化してるんじゃないかな。<br>今の最新コミットでiOSを動かすのに必要なパッチは10命令もなくて、ディスプレイドライバじゃなくソフトレンダリング使うためのフォールバックコードパスを有効にするだけなんだって。<br>詳しくはここ→ https://github.com/ChefKissInc/QEMUAppleSilicon/wiki/Filesys..." userName="bri3d" createdAt="2025/06/12 21:29:09" color="#ff33a1">}}




{{<matomeQuote body="もっとちゃんと見てみたら、エミュレーション時にカーネルとSEP OSにいくつかのパッチがあったよ。<br>ここにある→ https://github.com/ChefKissInc/QEMUAppleSilicon/blob/6eff3ab...<br>でも、そんなに広範囲だったり移植が難しかったりするわけじゃないみたい。<br>だいたいcan_has_debugの戻り値をいじったり、sigcheckをバイパスしたり、launchdをresearch deviceモードにするお決まりのパッチだよ。" userName="bri3d" createdAt="2025/06/13 13:08:27" color="#ff5733">}}




{{<matomeQuote body="「制限されたエミュレータで動かすためにiOSのいろんなところをパッチしまくったらしい」<br>マジかよ！<br>プロセス全体をハックしてる感じで、めちゃくちゃ脆そう。<br>別のバージョンのソフトどころか、ハードウェアが変わったら持続的に移植なんて無理そうだな。" userName="sheepscreek" createdAt="2025/06/13 10:20:38" color="">}}




{{<matomeQuote body="eShardはChefKissIncに、1年くらい前にUIを動かすためにどうすればいいかのパッチ一式を提供したんだよ。<br>あと、ハードウェア、資金、知識でもプロジェクトを支援してたみたい。<br>両者とも、同じ共通目標の違う側面から取り組んでるだけなんだよね。<br>聞くところによると、もうiOS 18は動いてて、26も開発中らしいから、たぶん1年くらいしたらQEMUAppleSiliconもみんなが使えるようになるんじゃないかな！" userName="skrauqs" createdAt="2025/06/14 17:25:50" color="#ff5c5c">}}




{{<matomeQuote body="wikiのリンクありがとうね。" userName="walterbell" createdAt="2025/06/13 05:18:50" color="">}}




{{<matomeQuote body="たぶん、エクスプロイトのテストフレームワークを作るためだろうね。" userName="throwaway48476" createdAt="2025/06/12 19:55:22" color="">}}




{{<matomeQuote body="これは間違いなく究極のエミュレーションハックだね！関係者全員おめでとう。<br>これはHackintoshプロジェクトにもいい兆候だと思う。<br>もう行き止まりじゃないかも（まだまだ先は長いけど）。<br>ARM PCが普及してきたら、効率的なエミュレーションもいつか見られるかもね。" userName="jeswin" createdAt="2025/06/13 01:00:19" color="#ff33a1">}}




{{<matomeQuote body="ARMはIBM PCみたいにオープンじゃないんだよね。Androidスマホとかも独自カーネルに未公開部分あるし…。" userName="storus" createdAt="2025/06/13 02:30:11" color="">}}




{{<matomeQuote body="うわ、Springboardまで起動できるのか！それマジで凄いじゃん！" userName="msgodel" createdAt="2025/06/12 16:41:14" color="#45d325">}}




{{<matomeQuote body="QEMUでiPhone 11をSpringboardまで起動なんて信じられないくらい凄いよ。ChefKissIncチームと貢献したみんな、マジおめでとう！" userName="hiimwavy" createdAt="2025/06/13 08:36:16" color="#ff5c5c">}}




{{<matomeQuote body="IPAを復号できるtrollstoreって使えるの？" userName="ewuhic" createdAt="2025/06/12 16:43:32" color="#38d3d3">}}




{{<matomeQuote body="よく分かんないんだけど、これってどういうこと？" userName="mywittyname" createdAt="2025/06/12 17:16:39" color="">}}




{{<matomeQuote body="前のコメントへの補足ね。App StoreのIPAはAppleアカウントと紐付くDRMで暗号化されてるんだ。実行時にOSが復号するんだけど、普通の復号法はアプリを実行してデバッガーつけてメモリから読むんだよ。" userName="watusername" createdAt="2025/06/12 20:27:47" color="#38d3d3">}}




{{<matomeQuote body="trollstoreは脱獄いらないiOSの非公式アプリストア。（IPAはiOSアプリのファイル形式ね）暗号化されたIPAを復号してコードとか見れるアプリもあるよ。AndroidのJavaアプリを逆コンパイルするのと似てるかも。" userName="tom1337" createdAt="2025/06/12 17:37:58" color="#785bff">}}




{{<matomeQuote body="まさにこれ聞きに来た！もしそうならヤバいね！" userName="skvmb" createdAt="2025/06/12 16:50:32" color="">}}




{{<matomeQuote body="セキュリティ関連をエミュレートして理解・回避できるかが重要っぽいね。その辺はどう？銀行アプリとかDMVアプリをエミュレートで動かせたらマジ凄いのに。" userName="seany" createdAt="2025/06/13 04:58:22" color="#785bff">}}




{{<matomeQuote body="これ、QEMUのメイン開発ライン（upstream）に取り込もうとした方がいいんじゃない？　そうしないと、前のやつみたいに結局ダメになっちゃいそうだしさ。" userName="xvilka" createdAt="2025/06/13 07:23:57" color="">}}




{{<matomeQuote body="そういえばさ、QEMUのm68kでClassic Macってどう動くの？　ちょっと関係ないけど気になったんだよね。" userName="anthk" createdAt="2025/06/12 18:25:33" color="">}}




{{<matomeQuote body="ちゃんと動くよ！　Classic MacをQEMU m68kで動かす技術的な話は、ここのフォーラムでしてるよ。<br>https://www.emaculation.com/forum/viewforum.php?f=37&sid=6a9..." userName="lioeters" createdAt="2025/06/12 20:05:40" color="#45d325">}}




{{<matomeQuote body="あんまり良くないんだよね。Mini vMacを使った方がいいと思う。PPCのエミュレーションは問題なく動くけどね。" userName="LeoPanthera" createdAt="2025/06/12 20:04:08" color="">}}




{{<matomeQuote body="これってiOS全体をエミュレーションしてるの？　それともiOSのバイナリだけ動かしてるの？<br>あと、なんでわざわざiPhone 11って書いてあるの？　そこがちょっと気になったんだよね。" userName="dd_xplore" createdAt="2025/06/12 22:22:54" color="#38d3d3">}}




{{<matomeQuote body="iPhone 11のハードウェアをエミュレーションしてるんだよ。その上でiOS 14とsepOS（Apple Security Enclaveのファームウェア）が動いてるんだ。" userName="dadoum" createdAt="2025/06/13 16:51:10" color="#38d3d3">}}




{{<matomeQuote body="多分だけど、iPhone 11のバイナリだからじゃない？" userName="worldsavior" createdAt="2025/06/12 22:29:29" color="">}}




{{<matomeQuote body="WindowsでQEMUを使うときのちゃんとしたドキュメント、まだないんだよね。オプションとか引数とかさ。ネット上のバラバラな情報や、Linux版の情報を参考にしながら何とかするしかないんだ。" userName="VMtest" createdAt="2025/06/13 05:35:52" color="">}}




{{<matomeQuote body="正直言って、QEMUで遊んでる人のほとんどはUnix系OSを使ってると思うよ。WindowsにはVirtualBoxとかVMware、Hyper-Vみたいに使いやすい仮想化オプションがいっぱいあるし、WSLもあるしね。だからWindowsユーザーがQEMUを使うのは、こういう特別なケースだけだろうね。" userName="Liquix" createdAt="2025/06/13 06:39:53" color="">}}




{{<matomeQuote body="いやいや、それ公平じゃないって！　VirtualBoxはWindowsだとWHPX使わないのに、LinuxではKVMバックエンドがあるし。VMwareは重いし、ダウンロードに登録したくないんだよね。Hyper-VはFreeRDP使うから、ゲストOS側が対応してないとダメで、簡単じゃないんだ。<br>Linuxではlibvirtとかvirt-managerでQEMU使ってるけど、UIで設定できる表層的な使い方しかしてないよ。" userName="VMtest" createdAt="2025/06/14 00:31:13" color="#785bff">}}




{{<matomeQuote body="超初心者な質問なんだけど、QEMUでエミュレートしたiPhone 11にさ、iOSアプリってインストールできんの？ これって結構重要なポイントじゃん？" userName="tifa2up" createdAt="2025/06/13 10:50:18" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="超クール！これってさ、俺の１番好きなiPhoneモデルなんだよね。QEMUで動かせるようになったとかマジで凄い！" userName="startyz" createdAt="2025/06/13 06:59:05" color="">}}




{{<matomeQuote body="2番目のコメントの人へ。 specificallyに何が気に入ってるの？ 教えて欲しいな。ぶっちゃけさ、ここ３年でiPhone色々使ったけど、そんなにモデルごとの違いってわかんなくなくない？" userName="Minks" createdAt="2025/06/13 10:41:55" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
