+++
date = '2025-10-29T00:00:00'
months = '2025/10'
draft = false
title = 'Androidはオープンであるべき！閉鎖化するスマホOSへの警鐘'
tags = ["Android", "オープンソース", "ベンダーロック", "スマホ", "規制"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> Androidはオープンであるべき！閉鎖化するスマホOSへの警鐘

引用元：[https://news.ycombinator.com/item?id=45742488](https://news.ycombinator.com/item?id=45742488)




{{<matomeQuote body="スマホを買う前に、オープンソースOS対応の安価なモデルを探したけど見つからなかったよ。高価なPixelか古いモデルしかないんだ。チップやデバイスCPUのメーカーが、再プログラミングを妨げるような障害を作れないように規制すべきだと思うね。例えばヒューズとかデジタル署名とか暗号化とかさ。デバイスを買ったら、自分のプログラムをロードできるようにして、メーカーはそれを技術的に止めちゃいけないんだ。規制の目的は、デジタルごみを減らして、ベンダーロックを防ぎ、ハードウェアの再利用を可能にすることだよ。もちろん、盗難防止機能とかは使えなくなるけど、ユーザーがその権利を放棄できるようにすればいいさ。" userName="codedokode" createdAt="2025/10/29 06:05:06" color="#ff5733">}}




{{<matomeQuote body="ほとんどのベンダーは、キャリアからデバイスを買ってなければ、カスタムOSの書き込みを許可してるよ。例えばここを見て→ https://github.com/zenfyrdev/bootloader-unlock-wall-of-shame...<br>ただし、DRMベースのアプリ（Netflixとか）や支払いアプリ、銀行アプリは使えなくなるけどね。" userName="maxloh" createdAt="2025/10/29 06:34:13" color="">}}




{{<matomeQuote body="GrapheneOSが、もうすぐ別の”主要なAndroid OEM”で利用可能になるみたいだよ [1]。GoogleがメーカーにAndroidを使うよう補助金を出すのを規制すべきだね。最近の独占禁止法 [2] がこのケースに適用されるんじゃないかな。あのひどくて削除できない検索バーをホーム画面に置くために、実質的にメーカーにお金を払ってるようなもんだからね。<br>[1] https://www.androidauthority.com/graphene-os-major-android-o...<br>[2] https://www.justice.gov/opa/pr/department-justice-wins-signi..." userName="willtemperley" createdAt="2025/10/29 06:45:28" color="#ff33a1">}}




{{<matomeQuote body="GrapheneOSは、ある意味オープンOSじゃないんだ。公式ビルドはrootアクセスを提供してない。だから例えば、アプリがデータを人質に取ることもできちゃうんだよね。セキュリティ強化のためなのは理解できるし、rootアクセスが制限された公式サポートビルドを作ることはできるよ。でもGrapheneOSがコンピューティングの自由への最終的な解決策ではないってことだ。もちろん、これらのデバイスでカスタムOS（Grapheneのroot対応ビルドとか、それ以外でも）をインストールできるようになることを願ってるけどね。" userName="kevincox" createdAt="2025/10/29 10:15:00" color="#785bff">}}




{{<matomeQuote body="murenaが提供してるもの、確認してみた？彼らのほとんどの電話はブートローダーのアンロックが可能だし、最初から入ってるOSもそこまで悪くないよ。" userName="theK" createdAt="2025/10/29 07:03:38" color="">}}




{{<matomeQuote body="これは法律家が関わるべき分野だと思うね。法律はエンジニアリングの仕様書じゃないけど、物事を支払ったり銀行を使ったりする能力は、社会参加者にとって最も基本的な権利に近いものだ。Netflixを使うために2台目のデバイスを買わなきゃいけないなら、それはそれでいい。でも、AppleやGoogleの許可なしにデジタル決済ができることを保証する法律が必要だよ。私が住んでいるような社会では、一部のビジネスが現金もカードも使えず、銀行や決済アプリだけで支払いを始めようとしている。そしてこれらのアプリは、「アメリカの2大テクノロジー独占企業のソフトウェアが動くデバイスを買い、支払いとは関係ない様々なソフトウェアを使うための彼らの頻繁に変わる全てのルールに従う」という非常に狭い状況でしか機能しないんだ。この制限は主に、銀行がより安全だと信じているからだけど、セキュリティは重要でも、無実の人々から支払い能力を奪ったり、AppleやGoogleとの何らかの紛争があったという理由で銀行システムから追放したりできるほどじゃない。政府はここにアクセス義務を課して介入すべきだね。さもないと、この問題は遅かれ遅かれ君の地域にもやってくるだろう。" userName="safety1st" createdAt="2025/10/29 07:39:39" color="#45d325">}}




{{<matomeQuote body="Motorolaの電話でさえ、ブートローダーをアンロックするには、文字通り彼らのウェブサイトのフォームから許可を求めなきゃいけないんだ。彼らがリモートでアンロックするか、生成されたコードを入力する形だね。他のメーカーも同じようなことしてて、アンロックできるようになるまでに45日間の期間を待たなきゃいけなかったり、ウェブサイトで許可を求めなきゃいけなかったりするよ。" userName="heavyset_go" createdAt="2025/10/29 07:38:01" color="">}}




{{<matomeQuote body="「安価なオープンソースOS対応モデルが見つからない」って言ってたけど、整備済みのPixel 5を200ドル以下で買えるよ。素晴らしい画面、素晴らしいカメラ、5Gも使えるし、決して「時代遅れ」なデバイスなんかじゃない。GrapheneOSやLineageOSも最小限の手間で動くよ。" userName="andrepd" createdAt="2025/10/29 10:43:55" color="#ff5733">}}




{{<matomeQuote body="彼らの製品はセキュリティに関してかなりひどいよ。詳しい情報はこちら→ https://eylenburg.github.io/android_comparison.htm" userName="microtonal" createdAt="2025/10/29 07:08:22" color="">}}




{{<matomeQuote body="5年以上前のデバイスだと、Good Lockのサイトが古すぎて何も解除できないんだってさ。俺も経験あるけど、マジで最悪だよね。" userName="munchlax" createdAt="2025/10/29 08:17:21" color="">}}




{{<matomeQuote body="ぶっちゃけ、5年以上前の古いスマホなら、たぶん特権昇格のExploitを見つけられるはずだよ。" userName="codedokode" createdAt="2025/10/29 08:30:48" color="">}}




{{<matomeQuote body="Pixel 8なら500ドルくらいで買えるし、長くサポートされるから、コスパはかなり良いと思うよ。" userName="gf000" createdAt="2025/10/29 11:05:29" color="">}}




{{<matomeQuote body="それでRootは取れるかもしれないけど、BootloaderのUnlockは無理だろうね。" userName="VagabundoP" createdAt="2025/10/29 10:09:09" color="">}}




{{<matomeQuote body="＞Security is important<br>この主張は実際にはセキュリティ上のメリットがあるっていうけど、あれはでたらめだよ。何の意味もない。デバイスがCompromisedされたら、パスワードをAttackerに送るだけで、Attestationなんて試されないしね。Attestationが試されるのは、デバイスがCompromisedされてない時だけだよ。" userName="AnthonyMouse" createdAt="2025/10/29 08:24:21" color="">}}




{{<matomeQuote body="Root Accessはデフォルトでは使えないけど、再起動の時間も含めて120秒くらいで追加できるよ。" userName="the_pwner224" createdAt="2025/10/29 18:36:17" color="">}}




{{<matomeQuote body="＞The solution, I think, would be a regulation that forbids manufacturers of any chip or device CPU from making obstacles to reprogramming the device (using fuses, digital signatures, encryption etc).<br>なんで不可欠なセキュリティ機能を違法にしようとするわけ？ 飛行制御ソフトが書き換えられちゃう飛行機に乗りたいの？<br>＞So if you buy a device with CPU and writable memory, you should be able to load your own program and manufacturer may not use technical measures to stop you.<br>問題はGoogleとAppleが彼らのOperating SystemをLockdownしていることであって、これはHardwareの技術的な制限じゃないんだよ。" userName="constantcrying" createdAt="2025/10/29 07:27:17" color="#45d325">}}




{{<matomeQuote body="Secure BootとOEM Bootloader Unlockは、Upgrade後にスマホをまたLockできるようなImageで動くべきだよね。俺はIrelandで、なぜかBootloaderがFuselockedされたUS RefurbishedのPixel 2を手に入れたんだ。Second Handで買ったけど、なんでそうなのかは分からない。Pixel Imageに縛られちゃってて、ROM Testingとかに使いたかったのにさ。" userName="VagabundoP" createdAt="2025/10/29 10:05:58" color="">}}




{{<matomeQuote body="GrapheneOSに都合よく焦点を当てて、彼らがやらないことを無視してるっていう、別のコメントに俺も賛成するよ。例えば、Rootを使ったFirewallは便利だけど、UserにデバイスのControlを任せたくないって決めたから、それは無理なんだよね。" userName="yjftsjthsd-h" createdAt="2025/10/29 16:29:25" color="">}}




{{<matomeQuote body="銀行に俺のスマホへのAccessを許可したくないから、Appが動かなくても問題ないよ。もし、自宅じゃない場所で、緊急でScammerにお金をTransferするみたいな変な状況になっても、銀行のWeb Appを使えばいいだけだろ。" userName="codedokode" createdAt="2025/10/29 08:29:05" color="">}}




{{<matomeQuote body="CalyxOSみたいに公式サポートされてなくて、アップデートのたびに手動でrootを再適用しなきゃいけないんだよね。" userName="treyd" createdAt="2025/10/29 19:35:53" color="">}}




{{<matomeQuote body="うーん、かなり偏った比較に見えるな。GrapheneOSを際立たせるセキュリティ機能を基準に、他のOSを評価してるみたいだ。GrapheneOSが安全なのは間違いないけど、GrapheneOSを真似してないからって他のOSを”セキュリティ面でかなり悪い”と分類するのは、ちょっと言い過ぎじゃないかな。" userName="theK" createdAt="2025/10/29 15:24:50" color="">}}




{{<matomeQuote body="そうそう、もしデバイスのセキュリティが基準なら、セキュリティアップデートが遅れてるデバイスのAttestationは取り消されるはずだ。でも、Google的には5年前の古いデバイスはOKで、最新のカスタムROMはダメなんだ。これって本当のセキュリティじゃなくて、Googleのコントロールが目的なんだよ。Googleのルールに従えばお墨付きをもらえるけど、従わないならSafetyNetは使えない。このルールには、ユーザーが自分のデータにアクセスするのに、制御アプリの許可が必要ってのも含まれてるんだ。" userName="kevincox" createdAt="2025/10/29 10:20:04" color="#785bff">}}




{{<matomeQuote body="ほとんどのDRMや銀行アプリはブラウザ経由で問題なく使えるし、ホーム画面に追加できるよ。Android PayやSamsung Payは動かなくなるけど、Garminウォッチを持ってるならそれで支払いはできるからね。" userName="nvdr" createdAt="2025/10/29 07:31:08" color="#38d3d3">}}




{{<matomeQuote body="Bootloaderのコードにも特権昇格のCVEがあるんだ。Androidの初期の頃、この方法でロックされたBootloaderをいくつか解除したのを覚えてるよ。" userName="kube-system" createdAt="2025/10/29 13:26:42" color="">}}




{{<matomeQuote body="Eylenburgのサイトはプライバシーとセキュリティに焦点を当てたソフトウェア比較をしてて、AndroidではGrapheneOSだけが強化型OSとして載ってる。Google Mobile Servicesを含まないOSと強化型OSは別物だよ。rootアクセスはどのOSもアプリからはできないし、Androidはファイアウォール管理を標準でサポートしてる。RethinkDNSはVPNサービスアプリ機能でローカルフィルタリングできる良い例だね。GrapheneOSだけが標準VPNロックダウン機能の全リークを修正してるのはすごい。これはEylenburgの表には詳しく載ってないけど、GrapheneOSの多くの特徴が「Hardened system components」みたいな大きなカテゴリにまとめられちゃってるんだ。" userName="strcat" createdAt="2025/10/30 00:28:49" color="#38d3d3">}}




{{<matomeQuote body="GrapheneOSはセキュリティがすべてで、プライバシーや自由が主目的じゃないんだ。たまたまプライバシーや自由の恩恵も得られるけど、それはセキュリティと衝突しない場合に限るってことだね。" userName="NoGravitas" createdAt="2025/10/29 22:21:49" color="#785bff">}}




{{<matomeQuote body="Eylenburgのサイトはプライバシーとセキュリティ比較に焦点を当ててて、AndroidベースOS比較ではGrapheneOSだけが強化型OSとして載ってる。他のOSはAndroidのセキュリティパッチに追いついてないことが多いんだ。GrapheneOSの多くの機能は表で詳しく触れられてないけど、例えばVPNロックダウンモードの既知のリーク5つを全て修正してるのはすごいポイントだよ。CalyxOSは1つだけ部分的に直してるだけだしね。／e／OSのPixel 7版がAndroid 13ベースのままとか、セキュリティパッチの遅延は深刻な問題だよ。Androidは中・低レベルのパッチはバックポートしないから、最新状態を維持することの重要性が比較表では十分に伝わってないんだ。" userName="strcat" createdAt="2025/10/30 00:27:55" color="#ff5733">}}




{{<matomeQuote body="見つけるのが大変なんだ。ここではPixel 8が670ドル、一番安いPixel 9aでも470ドルもする。この値段だと高すぎるよ。Pixel 8は8GB RAMだけど、Samsung A16の8GB版は230ドルで、ほぼ3分の1の値段だ。しかもSamsungはPixelと違って2枚のSIMカードをサポートしてるから、インターネット用と通話用みたいに分けられるんだ。" userName="codedokode" createdAt="2025/10/30 08:08:00" color="">}}




{{<matomeQuote body="「GrapheneOSが近いうちに別の”大手Android OEM”で使えるようになるらしい」ってね。密かにFrameworkかNothingだといいなーって思ってるよ。" userName="zikduruqe" createdAt="2025/10/29 10:17:28" color="">}}




{{<matomeQuote body="GrapheneOSなんかを入れたり、遊んだりするのに、eBayで中古のPixel 7が約170ドルで買えるよ。" userName="edm0nd" createdAt="2025/10/29 16:30:55" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ブートローダーは再ロックできるけど、メーカーのキーで署名された”公式”OSじゃないとSafetyNetチェックには失敗しちゃうんだよね。" userName="the_pwner224" createdAt="2025/10/29 18:38:31" color="">}}




{{<matomeQuote body="どうなってもGrapheneOSは頑張るだろうね。でもAndroidは監視や消費目的で作られてて、プライバシーやセキュリティよりそっちが優先されてるから、もっといいのはいろんなデバイスでmainline Linuxを動かすことだね。PurismのLibrem 5やPostmarketOSの取り組みみたいにさ。https://grapheneos.org/" userName="neilv" createdAt="2025/10/29 05:40:50" color="#45d325">}}




{{<matomeQuote body="問題は開発者にとってだよ。食っていくためにはAndroidをやめてLinuxに移行するのは無理がある。自分でLinuxスマホを使っても、作るソフトが3人しか使わないなら意味ないでしょ。Linux Desktopの年がどうなったかを考えると、Linuxスマホの年に賭けるよりAndroidの閉鎖化を阻止する方が断然いいと思うんだ。" userName="anonymous908213" createdAt="2025/10/29 05:49:44" color="#785bff">}}




{{<matomeQuote body="Linux Desktopの年は、ミームが示すほどじゃないけど、ある程度実現してるよ。Valveの努力、Linuxゲーミングハンドヘルドの普及、Bazziteみたいなディストリビューション、そしてWindows 11でみんなを怒らせたMicrosoftのおかげで、Linux Desktopはちゃんとした勢いを持ってるんだ。" userName="broodbucket" createdAt="2025/10/29 05:54:20" color="#785bff">}}




{{<matomeQuote body="どんなLinuxディストロでも、どんなパソコンにでもインストールできるし、仕事もゲームも日々のタスクもこなせる最高のデバイスになる。俺はこれを大成功だと思うね。" userName="pimeys" createdAt="2025/10/29 06:16:13" color="">}}




{{<matomeQuote body="そんなことないよ。これはMicrosoftがひどいことするたびに起きる一時的な高揚感に過ぎないんだ。結局、みんなWindowsに戻るよ。開発者だってほとんどLinuxをデスクトップで使ってない。僕が知ってる限り3人くらい。仕事ではいつも僕が”Linux担当”だよ。結局、給料くれるのはMicrosoftのASP.NET、SQL Server、AWS、Azure、GCPみたいな独占的な技術スタックなんだ。嫌だけど、これが現実。" userName="LogicHound" createdAt="2025/10/29 08:11:56" color="#38d3d3">}}




{{<matomeQuote body="たとえそれが本当だとしても、AOSPは他のどんなLinuxディストロよりもプライバシーとセキュリティに優れてるんだよ。" userName="charcircuit" createdAt="2025/10/29 06:46:57" color="">}}




{{<matomeQuote body="Androidに希望はないね。GoogleがFOSSのルーツに敵対するならもう進めない。Libre phoneしかない。無理やりにでも絆創膏を剥がすしかないんだ。" userName="3abiton" createdAt="2025/10/29 08:00:56" color="#45d325">}}




{{<matomeQuote body="セキュリティのアプローチが違うんだよね。GNU/Linuxのリポジトリには悪意あるアプリはないし。<br>もちろんLinuxのセキュリティはもっと改善すべきだけどね。俺はデスクトップでQubesを使ってるし。詳しいことはこっちも見てみて: https://source.puri.sm/Librem5/docs/community-wiki/-/wikis/F..." userName="fsflover" createdAt="2025/10/29 14:44:33" color="">}}




{{<matomeQuote body="なのに、俺のThinkPadでLinuxを使ってる時、Thunderboltディスプレイ繋いで起動すると1/4の確率でカーネルパニックするんだよ。指紋認証も日によって10〜50%しか動かないし、バッテリーは3〜4時間しか持たない。<br>GNOME使ってるけど、システムトレイのアイコンも動かない時がある。<br>Bluetoothヘッドホンも接続問題だらけで、デバイス間の切り替えもスムーズじゃない。デスクトップLinuxは細かい不便だらけだから、普及なんて無理だね。" userName="microtonal" createdAt="2025/10/29 07:35:27" color="#38d3d3">}}




{{<matomeQuote body="それは開発してるソフトウェアの種類にめちゃくちゃ依存すると思うな。<br>俺はWindowsをメインで使ってる開発者を一人も知らないよ。<br>周りの開発者は文字通りみんな開発作業にはLinuxを使ってるし、私用でもLinuxを使ってる人が大半だよ。" userName="xvfLJfx9" createdAt="2025/10/29 08:18:45" color="">}}




{{<matomeQuote body="AOSPはオープンソースだからフォークできるじゃん。" userName="preisschild" createdAt="2025/10/29 09:08:58" color="">}}




{{<matomeQuote body="もちろん。でも開発者がWindows使ってないなら、だいたいMacだよ。企業ではみんなWindows使ってる。<br>Linux使うならVMかWSL経由だし、家でLinux使ってる人なんていないって保証できるね。<br>君が知ってるLinux使いのデベロッパーより、IT部門から支給されたWindowsを使ってる人の方が圧倒的に多いんだよ。" userName="LogicHound" createdAt="2025/10/29 08:25:05" color="">}}




{{<matomeQuote body="だけど、多くの主要機能は今やAPEXモジュールとしてPlayStore経由で配信されてるじゃん。<br>https://source.android.com/docs/core/ota/apex" userName="pjmlp" createdAt="2025/10/29 10:05:06" color="">}}




{{<matomeQuote body="「会社でWindows使ってる奴は家でLinux使わない」って言ってるけど、それは間違ってるな。<br>俺は会社でWindowsを使わされてるけど、家では99%Linuxだよ。（残りの1%はBSDとillumosだけどね。）" userName="yjftsjthsd-h" createdAt="2025/10/30 05:15:33" color="">}}




{{<matomeQuote body="モバイルでメインラインのLinuxを動かすのは、Androidが何十年もかけてモバイルハードウェアに対応してきた開発を、いきなり高速で巻き戻すようなものだよ。<br>UNIXのユーザースペースモデルはモバイルでは通用しないし、デスクトップでももう無理だと思う。<br>セキュリティもない、リソース制御もない、ライフサイクルもないから、デバイスは熱くなるしバッテリーはすぐなくなる。<br>AndroidやiOSでは、アプリは常にライフサイクルがある環境で動いてるから、ちゃんとした動作をするには良い子ちゃんになる必要があったんだ。<br>「GNU-Linux」用の代替ユーザースペースを開発しない限り、Androidとは全く競争できないよ。" userName="gf000" createdAt="2025/10/29 09:03:43" color="#38d3d3">}}




{{<matomeQuote body="君たちは少数派だけど、好きなように信じればいいよ。<br>俺が一緒に仕事をしてきた多くの開発者は、Linuxのことなんてほとんど知らないんだ。<br>ターミナル（Powershell、CMD、Bash/Zsh）もろくに使えないし、IDE以外何もできない奴ばかり。<br>もしLinuxを使うとしても、Raspberry PIくらいで、それも数ヶ月で引き出しの中さ。<br>俺に低評価つけてる奴ら、君たちのチームや環境は例外だよ。俺は、ソフトウェアのプロの中でもLinuxユーザーは少数派だと受け入れたんだ。" userName="LogicHound" createdAt="2025/10/30 08:51:10" color="">}}




{{<matomeQuote body="GrapheneOSはapexモジュールを無効にしてるから、必要性を感じたことないんだって。<br>https://grapheneos.org/features#anti-persistence" userName="preisschild" createdAt="2025/10/29 10:33:46" color="">}}




{{<matomeQuote body="Windowsではブルースクリーンが頻繁で、毎年再インストールしてたわ。でも4年前にMint Linuxにしたら、古いDell G5でもずっとスムーズに動いてる。一度だけ問題あったけど、Timeshiftで簡単に解決できたし。Linuxで運が良いだけかもしれないけど、何言ってるか全然わかんないな。" userName="surgical_fire" createdAt="2025/10/29 09:43:26" color="#38d3d3">}}




{{<matomeQuote body="GNU/Linuxのリポジトリに悪意あるアプリがないってのは間違いだよ。開発者が悪意あるコードを配布した事例は何度もあるし、プライバシー侵害は悪意とみなされないことも多い。サンドボックスもない場合がほとんどで、F-Droidとかも上流のコードをちゃんと監査してるわけじゃないから、信頼性が劇的に上がるわけじゃないんだ。" userName="strcat" createdAt="2025/10/30 00:45:23" color="#ff5733">}}




{{<matomeQuote body="ARTのアップデートってAndroid 12からAPEX経由で配信されてるよね。これってJava 12で止まっちゃうってこと？" userName="pjmlp" createdAt="2025/10/29 11:56:40" color="">}}




{{<matomeQuote body="Microsoftがやらかす度に一時的な盛り上がりがあるけど、Linuxが普及するには自身のメリットで勝負すべきだ。「Android難民」を囲い込むなんて持続可能な成長じゃないよ。もしLinuxが本当にスマホで使えるなら、Androidがどうだろうととっくにエコシステムができてたはずだし、だからスマホのLinuxは期待できないね。" userName="anonymous908213" createdAt="2025/10/29 08:21:09" color="#38d3d3">}}




{{<matomeQuote body="僕は少数派だろうね。でもLinuxを使ってる人が誰もいないわけじゃないし、ただ一般的じゃないだけだよ。" userName="yjftsjthsd-h" createdAt="2025/10/30 15:58:09" color="">}}




{{<matomeQuote body="Mozillaとかが昔試してたけど、今こそWebアプリ専用OSの時代かもね。開発者たちはオフライン機能とかアップデートで助けが必要になるだろうけどさ。あと、アプリの起動時に大量のJavaScriptライブラリをパースしなくて済むと最高なんだけどな。夢か！" userName="vanviegen" createdAt="2025/10/29 07:35:52" color="#785bff">}}




{{<matomeQuote body="ソフトウェア開発者が飯を食っていくのにAndroidを捨てるのは無理ゲーだよ。次の地政学的な事件が起きて、Googleが中国のAndroidアプリをくだらない理由で禁止したら、ようやくエコシステムの多様性が戻るんじゃないかな。あと数年待ってみてくれ。" userName="otabdeveloper4" createdAt="2025/10/29 06:14:06" color="#45d325">}}




{{<matomeQuote body="「セキュリティへの別アプローチ」って言うけど、壁に穴開けるのと鍵付きドアを付けるのくらい違うよ。セキュリティなしは効果的じゃない。「GNU/Linuxリポジトリに悪意あるアプリはない」ってのも違う。バグでファイル削除とか悪意ある動作をすることもあるし、エクスプロイトされたらヤバい。サンドボックスは超大事。ターミナルとかも`curl | sh`とかでマルウェアを実行できちゃうし、セキュリティがないから何でもやりたい放題だよ。「Purism」なんてプライバシーもセキュリティもなくて、GoogleやAppleみたいなリソースもないってWikipediaに書いてある。Librem 5を売るために、Androidより劣るのに安全だって偽ってるだけさ。" userName="charcircuit" createdAt="2025/10/29 17:08:21" color="#785bff">}}




{{<matomeQuote body="プライバシー侵害が悪意とされないって言うけど、PureOSの元になってるDebianでは違うよ。信頼が大幅に減らないって言うけど、Google Playと比べたら悪意あるアプリは圧倒的に少ないのは事実。完璧じゃないしサンドボックスも改善すべきだけど、Debianのセキュリティモデルは多くの技術系ユーザーにとっては実際に機能してるんだ。" userName="fsflover" createdAt="2025/10/30 11:22:52" color="#ff5733">}}




{{<matomeQuote body="俺のTVもWebOS動いてるけど、全然世界を席巻してないよ。<br>https://webostv.developer.lge.com/discover" userName="pjmlp" createdAt="2025/10/29 10:03:19" color="">}}




{{<matomeQuote body="同意だけど、注意点があるよ。大半の消費者はLinuxやBSDとかの代替OSを知らないんだ。Linuxスマホには全く期待してないね。結局、15年前のスペックでGNU/FSF製の何かが登場して、シリアルコンソール経由でTrisquelをインストールして、Mahjongくらいしかアプリがないってことになるだろうね（ちょっと誇張してるけど）。" userName="LogicHound" createdAt="2025/10/29 08:31:02" color="#45d325">}}




{{<matomeQuote body="DebianはPureOSのアップストリームじゃない。彼らのソフトはプライバシー侵害がひどすぎる。<br>Google Playと比べて悪意あるアプリが少ないと言うけど、Android向けアプリストアは他にもあるし、Linuxみたいに良い方法もある。<br>Debianはセキュアモデルとして機能しているというけど、プライバシーとセキュリティはめちゃくちゃ悪いよ。<br>技術者なら大丈夫と言うけど、大規模なプライバシーとセキュリティ問題は解決しないし、サプライチェーン攻撃やOS全体のセキュリティの甘さは変わらない。" userName="strcat" createdAt="2025/11/01 06:44:18" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="別のスレッドでも言ったけど、オーストラリアの代替アプリストア利用者はACCCに苦情を言うべきだよ。<br>過去にはSteamに適切な返金ポリシーを導入させたし、今はMicrosoftをAI機能の件で訴えてるからね。<br>https://www.accc.gov.au/about-us/contact-us-or-report-an-iss..." userName="endgame" createdAt="2025/10/29 05:29:20" color="#ff5c5c">}}




{{<matomeQuote body="ACCCより、オーストラリアのConsumers’ Association (CHOICE)に苦情を言う方がいいと思うな。CHOICE経由でACCCに「指定苦情」を提出してもらうんだ。<br>ACCCへの苦情は個人の不満用だけど、指定苦情はオーストラリアの消費者に影響する「重要または体系的な市場問題」を扱うものだからね。<br>https://accounts.choice.com.au/contact-us/" userName="hekkle" createdAt="2025/10/29 06:03:38" color="#ff5733">}}




{{<matomeQuote body="残念だけど、アッテステーションはオーストラリア政府の他の部署、特にACSCが推進していると思うよ。" userName="shakna" createdAt="2025/10/29 05:51:53" color="">}}




{{<matomeQuote body="これは本当に良くない。汎用コンピューティングへの攻撃はイノベーションの死であり、デジタルな自由への直接的な攻撃だよ。もしアメリカ、イギリス、またはEUにいるなら、政府に連絡してほしい。" userName="layfellow" createdAt="2025/10/29 05:51:24" color="#785bff">}}




{{<matomeQuote body="もし政府が解決策になるなら、その唯一の役割はサービスにアプリ利用が必須にならないようにすることだけだよ（どのサービスがアプリ専用でいいかは議論の余地があるけどね）。" userName="A4ET8a8uTh0_v2" createdAt="2025/10/29 08:48:24" color="">}}




{{<matomeQuote body="利益は歪んだインセンティブだよ。" userName="rlopezcc" createdAt="2025/10/29 16:53:24" color="">}}




{{<matomeQuote body="2007年にiPhoneが出てスウェーデンで買った時、開発を始めたんだ。会社が毎年100ドルの手数料を払ってるうちは良かったけど、オープンソースの会社に転職したら、自分でソフトを携帯に入れるためだけに毎年100ドル払う必要が出てきたんだ...だからAndroidに乗り換えたのに、今度はGoogleがまた梯子を外そうとしてるなんてね...。" userName="jeena" createdAt="2025/10/29 07:01:35" color="#785bff">}}




{{<matomeQuote body="この状況はさ、もし俺たちが最初からESRみたいな中途半端なオープンソースじゃなくて、Stallman的GPLみたいに完全で妥協のないオープンソースを主張してたら避けられたんじゃないかな。ほとんどのプログラマーはMIT/Apache/BSDライセンスが好きだけど、こういうことあると、GPLみたいな「制限つきの自由」の方が、実は「完全に許容する自由」より良いんじゃないかって考えさせられるんだよ。" userName="pyeri" createdAt="2025/10/29 08:28:12" color="#ff5c5c">}}




{{<matomeQuote body="君が言う「制限つきの自由」こそ、本当の自由なんだよ。自由は判断力なしには存在しないんだから。自由にオープンな社会でナチスを許したら、一体いつまで自由でいられると思う？長くは続かないだろ。奴らは自分たちの自由を使って、他の人たちの自由を奪うんだから。自由には、「みんなを受け入れる人だけを受け入れる」っていう単純なルールが必要なんだ。GPLも、根本的にはこのルールを共有してるんだよ。" userName="survirtual" createdAt="2025/10/29 08:36:41" color="#45d325">}}




{{<matomeQuote body="俺はこの件について「強くもってるけど、いつでも考えを変える準備がある意見」があるんだ。オープンソースって、一般の人が使うソフトウェアにとっては災難だったと思うよ。一方では、開発者が苦労しても儲けにならないか、ほとんどゼロ。もう一方では、ユーザーはデバイスやSNSの制御を失うって exploited されてる。昔みたいに、手頃な料金で好きなようにソフトを使えた時代の方がずっと良かったよ。それが無料ソフトと「serf-ware」に挟まれて消えちゃったんだからね。結局のところ、腐ってるのはこの結果だろ。Edit: でも、有料ソフトの衰退をオープンソースのせいにするのは、もしかしたら不公平かもしれないね。" userName="hyghjiyhu" createdAt="2025/10/29 11:41:42" color="">}}




{{<matomeQuote body="スウェーデンの開発者にとって、年間100ドルなんてポケットにしまってても気づかないような金額だよ。スパム対策や管理費用を考えたら、ストアの少額の入場料は全然問題ないと思うね。OSSの開発者には、ストア側が goodwill のために料金を免除する仕組みがあれば、もっと良いんだけどね。ただ、売上の30%も取るのは話が別だね…これは両プラットフォームとも悪いよ。" userName="rafaelmn" createdAt="2025/10/29 07:46:44" color="">}}




{{<matomeQuote body="「昔はみんなお金を払って、好きなようにソフトを使えた」って言うけどさ、無料・オープンソースソフトウェアでも料金を取ることは可能だし、Stallman自身もそれを推奨してるんだよ。" userName="MarsIronPI" createdAt="2025/10/29 12:12:02" color="">}}




{{<matomeQuote body="僕らが「ナチスを許す」からって、社会が権威主義的な独裁国家になるわけじゃないよ。みんなバカじゃないんだから。" userName="Gud" createdAt="2025/10/29 09:16:50" color="">}}




{{<matomeQuote body="でもさ、自分のコピーを誰とでも共有できて、他の企業が半額で再販できるようなライセンス方式で、どうやって消費者向けソフトウェアのビジネスを成り立たせるんだい？" userName="dns_snek" createdAt="2025/10/29 13:16:38" color="">}}




{{<matomeQuote body="昔がどうだったか知らないけど、今の世の中じゃ、Xcodeでソフトウェアを書いて自分のデバイスにデプロイするだけなら、Appleにどんな料金も払う必要はないよ。無料の開発者アカウントは必要だけど、App Storeに公開しないなら料金はかからないんだ。" userName="jb1991" createdAt="2025/10/29 07:09:51" color="">}}




{{<matomeQuote body="俺は自分で書いたAGPLv3+のデスクトップアプリのコピーを販売してて、だいたい毎月2,000ドル稼いでるよ。ほとんどの人はライセンスなんて気にしないし、ただ便利に問題が解決できればいいだけなんだ。共有されても全然問題ない。だって、タダで手に入れた人たちは、元々買ってくれなかった層なんだからね。その人たちがもし公式のコピーやアップデート、サポートが欲しくなったら、俺のところに戻ってくるんだ。著作権作品の違法配信でも同じ効果が見られるよね。映画を共有すると興行収入が増えたり、アルバムを共有すると音楽の売上が増えたりする。無料でコピーを手に入れた人たちは、最初から買うつもりなんてなかったんだよ。そういう人たちに製品をexposure（露出）させると、何割かはファンになって、作品を宣伝してくれたり、お金を出してサポートしてくれたりするんだ。去年の俺の過去コメントを読んでみて、もっと情報が見つかるはずだよ。" userName="davisr" createdAt="2025/10/29 16:33:45" color="#38d3d3">}}




{{<matomeQuote body="無料プロビジョニングだと、Xcodeを使ってインストールしたアプリは7日で動作しなくなるんだ。その後は、またMacでXcodeを開いて新しいビルドをiPhoneにプッシュしないと使えないよ。有料プロビジョニングだと、開発者費用の更新までの残りの期間に基づいてビルドの有効期限が決まるんだ。だから、もし更新の1ヶ月前にアプリをビルドしてインストールしたら、そのアプリは1ヶ月後に動かなくなるってことだね。" userName="rezonant" createdAt="2025/10/29 07:14:26" color="#38d3d3">}}




{{<matomeQuote body="問題なのは、他人がアンタのソフトウェアを丸ごとパクって、自分のブランドとして売り出し、半額で元々のサービスを台無しにすることだ。個人的に使う分には全然問題ないんだけどさ。" userName="andoando" createdAt="2025/10/29 17:47:35" color="">}}




{{<matomeQuote body="あの100ドルはアプリを公開するための手数料じゃないぞ。アプリを作るだけでかかる費用なんだよ。iPhoneがネットに繋がってなくても、USBでアプリをiPhoneに送るだけでも必要になる。<br>これって単なる恐喝だろ。Appleがただできるからやってるだけで、技術的な理由なんて一つもないんだよ。" userName="array_key_first" createdAt="2025/10/29 12:24:20" color="#ff33a1">}}




{{<matomeQuote body="俺はミレニアル世代のデベロッパーなんだけど、Z世代の弟も同じ仕事を選んだんだ。15年経って、彼を見てると文化の変化が本当に恐ろしい。<br>今の若い世代は、無料のものは詐欺か違法だと教育されてるし、ツールは全部企業のもの、勉強は許可を得るための通過儀礼だって思ってる。どんどん閉鎖的になっていけば、この考えがもっと強まっちゃうのが怖いよな。" userName="kace91" createdAt="2025/10/29 08:19:29" color="">}}




{{<matomeQuote body="それがどうしたって？健全な競争じゃんか。サービスじゃなくてコピーだろ。顧客は再販が許されてるし、俺はそれでも開発を続けるのに十分な金稼げてるよ。<br>検索上位も取れてるし、SNSでの言及も山ほどある。ビジネスをパクるってのは製品だけじゃないんだぜ。俺の評判も販売経路もパクらなきゃダメだ。ビビんなって。フリーソフトウェアを売るのは良いことだし、持続可能だ。違うって奴は、マジで世間知らずか、裏があるだけだ。" userName="davisr" createdAt="2025/10/29 18:11:20" color="#ff33a1">}}




{{<matomeQuote body="「だからAndroidに乗り換えたのに、Googleも閉鎖的になるのかよ」って言ってるけど、1) 次のアップデートでもadbを使えば未署名のAPKはインストールできるよ。<br>2) Sideloading用のAPKに署名するならGoogle開発者アカウントが必要だけど、これは1回限りの25ドルで年額じゃない。だから、まだ無料でSideloadingできるし、adb避けたいならAppleの年額の1/4で済むんだぜ。" userName="frankacter" createdAt="2025/10/29 07:27:34" color="#ff33a1">}}




{{<matomeQuote body="話してるのはソフトウェアの配布とか、ストアに認めてもらうことじゃないんだ。アンタが金出して買った自分のデバイスで、何かを実行することについてなんだよ。" userName="4gotunameagain" createdAt="2025/10/29 07:58:56" color="">}}




{{<matomeQuote body="スウェーデンのデベロッパーにとって100ドルはたいしたことないだろうけど、これは金儲けしてる奴らの話じゃない。<br>本当の問題は30%の手数料だ。定額料金ってのは、金目当てじゃない人を苦しめるんだよ。手数料だけじゃなくて、それに伴う面倒な手続きが問題なんだ。<br>クレカのない子供とか、貧しい国の人はアプリを作って無料で提供できなくなるし、結果的に多くの人が無料の良いアプリを失って、スパムだらけの有料アプリに我慢しなきゃならなくなる。<br>もしその100ドルがそんなにはした金なら、なんで何兆ドルもある大企業が、何百万もの一般人からそんなちっぽけな金を集める必要があるんだ？" userName="AnthonyMouse" createdAt="2025/10/29 08:17:47" color="#45d325">}}




{{<matomeQuote body="「100ドルはアプリを作るだけでかかる」ってのは間違いだぞ。iPhoneがネットに繋がってなくても、USBでロードするだけでもかかるってのも違う。<br>100ドル払わなくてもアプリ開発は始められるし、自分のデバイスにアプリを入れることもできるんだ。App Storeで配布したい場合にだけ、その手数料を払う必要があるんだよ。" userName="jb1991" createdAt="2025/10/29 16:03:17" color="#785bff">}}




{{<matomeQuote body="皮肉なことに、2014年頃のGoogleは「Androidをオープンに保とう」ってキャンペーンをしてたんだ。俺もそれに賛同したけど、10年経って裏切られた気分だよ。<br>GoogleのビジョンはAndroidを閉鎖的な囲い込みエコシステムにする方向に変わったんだ。オープンソースのルーツに縛られながらも、単なる高いレンガの壁を築こうとしてる。<br>何度も約束は破られ、オープンソースの部分とGoogle専用の部分がごちゃ混ぜで、イシュートラッカーもコロコロ変わるからデバッグも難しい。たくさんの問題が放置されてきたんだ。<br>閉鎖的な部分が多いのに、エコシステムとしての約束すら果たせてない。<br>Googleは俺のメール、写真、クラウド、ブラウザ、電話を全部管理してるのに、どれ一つまともに同期できないんだ。<br>ダウンロードしたものがどこに行ったか分からないし、AirDropみたいな機能はサードパーティサービスが必要。<br>写真は5分後にやっとクラウドに上がるし、テスト用のサンドボックスアカウントもまともに機能しないから、認証システムが8割壊れる。<br>もうデベロッパーとしてAndroidをサポートする気はないね。最近iPhoneに替えたし、完全にAppleに移行するよ。Google株は持ってて儲かってるけど、その金はAppleのエコシステムで使うつもりだ。" userName="thecupisblue" createdAt="2025/10/29 08:10:10" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
