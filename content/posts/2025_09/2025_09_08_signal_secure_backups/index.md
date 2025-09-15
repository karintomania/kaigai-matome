+++
date = '2025-09-08T00:00:00'
months = '2025/09'
draft = false
title = 'Signalのセキュアバックアップ！機種変更時のメッセージ履歴消失問題に終止符か'
tags = ["Signal", "バックアップ", "データ移行", "セキュリティ", "メッセージアプリ"]
featureimage = 'thumbnails/cyan2.jpg'
+++

> Signalのセキュアバックアップ！機種変更時のメッセージ履歴消失問題に終止符か

引用元：[https://news.ycombinator.com/item?id=45170515](https://news.ycombinator.com/item?id=45170515)




{{<matomeQuote body="AndroidからiOSに機種変したとき、Signal、WhatsApp、ThreemaみたいにE2EE使ってるメッセンジャーアプリの履歴が全部消えちゃったんだ。Telegramだけは暗号化されてないから「ただ動いた」けどね。WhatsAppにはiPhone設定時にやる移行アプリがあったけど、バグで失敗したし、SignalのバックアップもOSバージョン間で互換性がないみたいだった。これ、ずっと欲しかった機能なんだよな！" userName="nikeee" createdAt="2025/09/08 20:43:13" color="#38d3d3">}}




{{<matomeQuote body="AndroidからAndroidへの履歴移行はいつもできてたよ。iOSに機種変したときは、妻がMessagesを使い始めることになったから、履歴は移行しなかったんだ。俺は妻とSignalで画質を落とさずに画像をやり取りするためだけにSignalを使っていたからね。" userName="giancarlostoro" createdAt="2025/09/09 15:37:09" color="">}}




{{<matomeQuote body="Signalは画像に非可逆圧縮をかけるんだよ。「Standard」から「High」に設定で変更はできるけど、無効にはできないんだ。" userName="47282847" createdAt="2025/09/10 13:10:41" color="#38d3d3">}}




{{<matomeQuote body="すでにデスクトップ版をセットアップしていれば、メッセージ履歴は移行できるよ。ただし、45日より古いメディアはダメだけどね。暗号化バックアップがどこでも使えるようになるまでの一時しのぎにはなるかもな。" userName="nar001" createdAt="2025/09/08 21:25:08" color="">}}




{{<matomeQuote body="他のデバイス間ではいくらでもデータ移動できるのに、この奇妙でひどい恣意的な制限は何なんだよ。Signalの最悪な部分だよな。" userName="zbrozek" createdAt="2025/09/08 23:54:48" color="">}}




{{<matomeQuote body="その上、Androidにはこの制限がないんだぜ。まるで企業ITでファイル制限があるのに、みんな個人用のOneDriveにファイルをアップロードできるような感じだよ。" userName="rjzzleep" createdAt="2025/09/09 02:22:44" color="">}}




{{<matomeQuote body="Windowsクライアントだとエラーで動かないんだ。AndroidとLinuxは問題ないんだけどね。" userName="anilakar" createdAt="2025/09/09 05:33:21" color="">}}




{{<matomeQuote body="俺の場合は動くよ。なんで君のところでエラーになるのかは知らないけどね。" userName="nar001" createdAt="2025/09/09 10:10:27" color="">}}




{{<matomeQuote body="WhatsAppの移行アプリはバグでダメだったって？あんな大企業のQAがこれほどひどいのは驚きだよ。Androidデバイス間の移行ツールも、俺が2年前に試したときは動かなかったんだ。" userName="littlestymaar" createdAt="2025/09/09 08:35:10" color="">}}




{{<matomeQuote body="Signalって、もう別のデバイスにメッセージを転送する機能あるよね？" userName="arccy" createdAt="2025/09/08 21:54:32" color="">}}




{{<matomeQuote body="Android同士なら隣同士の端末間で数年前からできたよ。でもAndroidからiOSへの転送はまだ無理だと思うな。" userName="flaburgan" createdAt="2025/09/08 21:58:04" color="#785bff">}}




{{<matomeQuote body="iOS同士はいけるし、Android同士もいけるよ。でもiOSとAndroid間はダメ。あと、盗まれたスマホから新しいスマホへの移行もできないよ。" userName="internet_points" createdAt="2025/09/09 09:33:45" color="#ff5c5c">}}




{{<matomeQuote body="盗まれたスマホから新しいスマホへ移行できないって話、気になるな～。持ち主が気付く前に、実際に“盗んだ人”が試したことあるのかな？" userName="giancarlostoro" createdAt="2025/09/09 15:39:23" color="">}}




{{<matomeQuote body="あー、俺はスマホがもう手元にない状態でSignalの履歴を見たいケースを考えてたんだよ。でも、そう読むこともできるね。" userName="internet_points" createdAt="2025/09/11 08:13:53" color="">}}




{{<matomeQuote body="それには、まずスマホのロックを解除できて、SignalのPINコードも知らないと無理だよ。" userName="jraph" createdAt="2025/09/10 13:36:06" color="#38d3d3">}}




{{<matomeQuote body="これ最高じゃん！テストリストアを簡単にさせてほしいな。メイン端末をいじらずに、秘密鍵で新しい端末にリストアしたいんだ。PC版Signalじゃメッセージ履歴は見れないけど、今回のバックアップでPCでも全部見れるようになる？大画面で見るのはすごく便利なんだよ。" userName="akkartik" createdAt="2025/09/08 16:58:22" color="#38d3d3">}}




{{<matomeQuote body="やあ、Signalの開発者だよ。ある程度はできるよ！新しい端末にリストアすると古い端末は登録解除されるけど、データはそのまま残るんだ。だから新しい端末で何か変なことがあっても、古い端末で再登録すれば元に戻れるよ。実はこれ、僕たちが自分たちのデータで機能をテストするやり方の一つでもあるんだ。" userName="greysonp" createdAt="2025/09/08 18:03:56" color="#785bff">}}




{{<matomeQuote body="Signal大好き！ありがとう！バックアップのテストって、実際にリストアしようとする時とは別に重要だよね。必要な時にバックアップが壊れてたって分かったら最悪だよ。Mike Nahas氏の「Tao of Backups」っていうのを強くおすすめするよ。<br>http://taobackup.com/" userName="mdnahas" createdAt="2025/09/14 23:34:41" color="#38d3d3">}}




{{<matomeQuote body="これに関連した質問なんだけどさ、Androidに機種変更した時に移せなかった古いSignalメッセージが全部残ってるiPhoneがあるんだ。この新しいツールを使って、iPhoneの古い会話を、今Androidにある新しいメッセージを消さずにAndroidに移動させる方法ってあるのかな？つまり、2つの履歴をマージしたいんだけど。" userName="eigenspace" createdAt="2025/09/08 22:10:24" color="#ff5c5c">}}




{{<matomeQuote body="iOS版がリリースされたら、新バックアップ機能を使うにはまず古いiPhoneのデータをAndroidデバイスに転送する必要があるみたいだよ（予備のAndroidでも、今のAndroidにバックアップを取ってからでもOK）。詳しくはこのURLを見てね。https://news.ycombinator.com/item?id=45174779" userName="codethief" createdAt="2025/09/08 22:28:12" color="#ff5c5c">}}




{{<matomeQuote body="残念ながらすぐに履歴をマージする予定はないんだって。他の人も言ってるけど、サードパーティ製ツールでマージできるかもしれないけど、それはすごく“at your own risk”って感じだよ。" userName="greysonp" createdAt="2025/09/09 13:53:53" color="">}}




{{<matomeQuote body="マルチデバイス対応は良い機能だね。質問だけど、今日Androidで取ったバックアップは、iOS版がリリースされたらiOSに復元できるのかな？" userName="oezi" createdAt="2025/09/08 18:51:47" color="">}}




{{<matomeQuote body="このURLを見てね。https://news.ycombinator.com/item?id=45171576" userName="winterqt" createdAt="2025/09/08 20:32:34" color="">}}




{{<matomeQuote body="困ったな。iPhoneを再インストールしたいんだけど（機種変更じゃなくて）、チャットを保存する方法が見つからないんだ。MacのSignal Desktopアプリはチャットが表示されるけど、写真が全部なくて“ダウンロード失敗”になるし、Desktopから消去したiPhoneにインポートできるかも分からないんだよね…。<br>" userName="nuker" createdAt="2025/09/10 01:09:17" color="">}}




{{<matomeQuote body="数ヶ月前から、Desktopアプリをセットアップするときに、メッセージ履歴をコピーするオプションが実際に使えるようになったよ。" userName="aprilnya" createdAt="2025/09/09 01:43:40" color="#785bff">}}




{{<matomeQuote body="情報ありがとう！この一年、DebianベースじゃなくてArchベースのディストロ（UbuntuからManjaro）に移行したから、Desktop版のSignalからは遠ざかってたんだ。これを機にまた使うことを考え直すかも。（うーん。）" userName="akkartik" createdAt="2025/09/09 03:49:05" color="">}}




{{<matomeQuote body="Signal開発者さんへ。バックアップの選択肢が“locally”（柔軟だけど一部のユースケースだけ）か“to Signal’s special servers”（柔軟性なし、多くのユーザーには法的に不可能かも）の2つしかないのはなぜ？ Signalのユーザーは、すでに信頼しているバックアッププロバイダーを使いたいと思ってるはずだよ。iCloudやGoogle Driveみたいなサードパーティプロバイダーにも対応して、データはSignal側で完全に暗号化するべきだよ。Signalのサーバーにバックアップするよりも、他のプロバイダーに預ける方が、データへのアクセスを心配する必要が減って安心できるはずだから。<br>" userName="derefr" createdAt="2025/09/08 18:56:57" color="#38d3d3">}}




{{<matomeQuote body="ひょっとしたら対応するんじゃないかな？＞ 将来の計画には、選んだ場所にセキュアなバックアップアーカイブを保存できるようにすることが含まれています。" userName="jimkleiber" createdAt="2025/09/08 18:59:34" color="">}}




{{<matomeQuote body="バックアップオプションは何年も前からなくて困ってたんだ。この件に関する将来の計画は、永遠にかかるみたいだね。" userName="_aavaa_" createdAt="2025/09/08 19:14:08" color="">}}




{{<matomeQuote body="昔作ったセキュアなジャーナルアプリでもバックアップが一番脆弱だと感じた。Signalのバックアップ遅延は、技術と思想の両面での懸念があったんだろうな。俺も同じ経験したよ。" userName="jimkleiber" createdAt="2025/09/09 07:27:52" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="データはどんな方法で暗号化してたの？それがバックアップには向かなかったのはどうして？" userName="_aavaa_" createdAt="2025/09/09 11:46:53" color="">}}




{{<matomeQuote body="SQLcipherを使ったけど、アプリ起動時に毎回パスワードを求めると、みんな短いのを設定しちゃうから、特にAndroidではハッキングされやすくなるんだ。今はPINとPasskeyの組み合わせも考えられるけど、紛失時の復旧とか、俺が保管しない方法を考えると、すごく複雑になるね。" userName="jimkleiber" createdAt="2025/09/10 06:59:03" color="#ff5c5c">}}




{{<matomeQuote body="俺は何年もSDカードにバックアップしてるよ。デバイス外へ転送するスクリプトは設定してないけどね。" userName="crtasm" createdAt="2025/09/09 00:11:06" color="">}}




{{<matomeQuote body="それ、Androidでしか使えないでしょ。スマホ内へのバックアップみたいな基本的な機能ですら、今までずっと無かったんだよ。" userName="_aavaa_" createdAt="2025/09/09 11:44:39" color="">}}




{{<matomeQuote body="混乱してるんだけど、Signalがファイルとしてスマホにバックアップするなら、既存のバックアップサービスでそれを自動同期すればいいんじゃない？毎日自動で同期できないの？" userName="nar001" createdAt="2025/09/08 21:35:00" color="">}}




{{<matomeQuote body="Androidの既存バックアップは増分じゃなくて、俺のバックアップは850MBもあるんだ。毎日アップロードするのは面倒だし、主要なクラウドストレージもAndroidでの同期を提供してない。今のところ、数ヶ月に一度手動でOneDriveにアップロードしてるよ。新しいサービスには課金しない、これ以上ストレージサービスには払いたくないね。" userName="daveoc64" createdAt="2025/09/08 22:32:19" color="#45d325">}}




{{<matomeQuote body="「850MBのバックアップは毎日アップロードするには大きい」って言うけど、アプリのストレージ確認機能を使って、画像やファイルをアプリ外に保存して削除すればサイズは減らせるよ。君がバックアップしてるのは「チャット」じゃなくて、チャットアプリ内の画像ライブラリでしょ。850MBの全てがチャット内に必須なデータだとは考えにくいね。" userName="styanax" createdAt="2025/09/09 10:34:56" color="#ff33a1">}}




{{<matomeQuote body="バックアップサイズを減らすのは一つの解決策だけど、本当に困るのは自動化されてないことなんだ。" userName="daveoc64" createdAt="2025/09/09 11:18:00" color="#ff33a1">}}




{{<matomeQuote body="部分的には実現してるよ。「ストレージ」でメッセージ保存期間を設定できるから、俺は1年にしてる。ちゃんと古いメッセージは削除されるんだ。Google Messagesにはこの機能が全くないし、SMSの整理やバックアップにはサードパーティツールが必要で、Signalの方がはるかに進んでるね。" userName="styanax" createdAt="2025/09/09 12:26:41" color="#ff5733">}}




{{<matomeQuote body="iOS版Signalって、これまでバックアップ全然サポートしてなかったんだぜ。" userName="hackmiester" createdAt="2025/09/08 21:51:53" color="#ff5733">}}




{{<matomeQuote body="Signalはバックアップを暗号化すべきだけど、特定のアプリやデバイスでしか読めないのは多くの人にとって不便だよな。E2EEが重要なんだから、メッセージが自分のデバイスにあれば制御したいんだ。安全なアーカイブの選択肢も欲しいぜ。" userName="Silhouette" createdAt="2025/09/08 20:12:06" color="#ff33a1">}}




{{<matomeQuote body="気持ちはわかるけど、Signalがプレーンテキストエクスポートを許可しないのは、みんなが不安になるからってのもわかるんだ。でも俺は`sigtop`（https://github.com/tbvdm/sigtop）ってプロジェクトでメッセージをプレーンテキストにエクスポートして、検索できるようにしてるよ。便利だぜ。" userName="varenc" createdAt="2025/09/08 20:44:15" color="#45d325">}}




{{<matomeQuote body="プレーンテキストエクスポートを許さないのは非合理的だろ。Signalだってアナログホールには弱いんだから。メッセージ受け取った人が、その情報を残したり共有したりするのを止められないんだよ。「消えるメッセージ」もカメラ使えば意味ないしな。相手を信頼できないなら、送らないのが一番だよ。" userName="Silhouette" createdAt="2025/09/08 23:48:53" color="#ff5c5c">}}




{{<matomeQuote body="人は合理的じゃないし、Signalはみんなを安心させたいってこと？でも、メッセージエクスポートに手間がかかることで保護になるケースもあるんだ。例えば、4週間で消えるメッセージを使ってるとして、エクスポートが簡単になったら、今まで保存してなかった人まで保存し始めるだろ。そしたら消えるメッセージの意味が薄れちゃうじゃん。" userName="varenc" createdAt="2025/09/09 09:22:45" color="#785bff">}}




{{<matomeQuote body="Signalのユーザーが既存のバックアッププロバイダーを信頼したいって言うけど、俺は1週間以上前のメッセージなんてどうでもいいぜ、プライバシーに関わるしな。プライバシー気にする人は消えるメッセージ使うだろ、バックアップとは逆じゃん？このバックアップ機能って誰のためなんだろうな？メディアバックアップとして使われてるのか？" userName="barbazoo" createdAt="2025/09/10 16:17:19" color="#ff33a1">}}




{{<matomeQuote body="そうだよな。昔からのSignalユーザーは、信頼できるバックアップよりも履歴が完全に消える方を好むんだよ。でも、この層はもうそんなに増えてないみたいだな。" userName="kdmtctl" createdAt="2025/09/10 19:27:34" color="">}}




{{<matomeQuote body="Signalってなんか怪しいことやってるよな。インフラ自動化のバックエンドコードとか、秘密にしとく理由ないだろ。全部公開すべきだぜ！" userName="purpleidea" createdAt="2025/09/09 08:47:15" color="">}}




{{<matomeQuote body="Android版Signalのバックアップって、ずっと無料でオフラインでできたんだぜ。アプリがスマホのメモリにバックアップファイル作ってくれるから、それをコピーして新しいスマホに戻せばいいんだ。ファイルはパスコードで暗号化されてるし、データベースも抽出できるよ。これ使えばできるぜ：https://github.com/bepaald/signalbackup-tools" userName="poisonborz" createdAt="2025/09/08 17:34:09" color="#ff5c5c">}}




{{<matomeQuote body="Signalの既存バックアップって問題が2つあるんだ。<br>1. 非増分で容量と時間がかかりすぎる（俺のは18GBで数時間かかった）。<br>2. バックアップをスマホから移動させるのが大変。特にSyncThingがPlay Storeから消えてから、明確な方法がないんだ。ローカルで良い方法があれば最高だけど、月2ドルのクラウドバックアップは現実的な選択肢だよな。" userName="Sesse__" createdAt="2025/09/08 17:46:37" color="#45d325">}}




{{<matomeQuote body="「バックアップをスマホからどうやって出す？」って？adb pull使えばいいじゃん？少なくともHackers Newsの読者ならできるっしょ。" userName="nottorp" createdAt="2025/09/08 17:55:52" color="">}}




{{<matomeQuote body="人が手作業でやる必要があるバックアップなんて、もうバックアップとは言えないぜ。" userName="Sesse__" createdAt="2025/09/08 17:56:51" color="">}}




{{<matomeQuote body="クラウドなしのバックアップの話だと思ってたんだけど。それだと、手動でスマホと何かを接続しなきゃならないってことだよね…。" userName="nottorp" createdAt="2025/09/08 18:01:17" color="">}}




{{<matomeQuote body="SyncThingがPlay Storeから消えたのは、Googleがアップデートを拒否したせいだよ。元の開発者がやめた後、F-droidには完璧に動くフォークがあるから、そっちを使えばいいんだ。" userName="dns_snek" createdAt="2025/09/08 18:40:44" color="#ff5c5c">}}




{{<matomeQuote body="WireguardとF-DroidのSyncThingはちゃんと動くよ。充電中に起動させれば、PCからスマホへの同期も超簡単になるんだ。" userName="nine_k" createdAt="2025/09/08 18:31:55" color="#ff33a1">}}




{{<matomeQuote body="リモートマシンで復号されない暗号化されたバックアップが、どうやって増分バックアップになるか考えたことある？" userName="h4ck_th3_pl4n3t" createdAt="2025/09/08 20:53:21" color="">}}




{{<matomeQuote body="大量のデータをスマホとやり取りするなら、USB転送がダントツで最高のやり方だぜ。" userName="UltraSane" createdAt="2025/09/08 21:35:16" color="">}}




{{<matomeQuote body="はっきり言っとくけど、SignalとSyncThingの組み合わせも問題なく動くからな。俺もそうしてるし。" userName="hiq" createdAt="2025/09/08 19:35:14" color="">}}




{{<matomeQuote body="マジ？Androidが普通のUSBストレージじゃなくてMTPになってから、全然うまくいったことないんだけど。MTPってマジで遅いんだよね。" userName="codethief" createdAt="2025/09/08 22:49:35" color="">}}




{{<matomeQuote body="月1.99ドルって、今のバックアップの問題を直すためのものじゃなくて、結局YACSS（Yet Another Cloud Storage Subscription）に組み込んで、みんなからカネを巻き上げる口実でしょ？スマホのデータ同期ができないってのが、YACSSにお金払う価値ある問題だとは思えないんだけど。" userName="zamadatix" createdAt="2025/09/08 18:03:32" color="#38d3d3">}}




{{<matomeQuote body="新しいスマホにバックアップを復元するとさ、デスクトップPC全部を再同期しなきゃいけないんだよ。Windowsだと古いメッセージの同期がうまくいったためしがないし。" userName="anilakar" createdAt="2025/09/09 05:36:03" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="うん、あんまり触れられてなかったけど、今の機能はまだ使えるんだよね？使えるって信じてるよ。" userName="tjoff" createdAt="2025/09/08 19:41:27" color="">}}




{{<matomeQuote body="全然うまくいかないんだよ。スマホにデータベースサイズの2倍の空き容量がないとバックアップできないとか、全然解決策になってないじゃん。だから俺はもうやめたよ。Syncthingじゃファイルの削除もできないし、めちゃくちゃ難しいスクリプトを書かないといけないんだよね。" userName="XorNot" createdAt="2025/09/08 19:50:18" color="#ff5c5c">}}




{{<matomeQuote body="LinuxのKDE Connectなら、FUSEファイルシステムとしてスマホのファイルシステムをマウントできるから、Dolphinみたいなデスクトップファイルエクスプローラーで使えるよ。統合されててオプションとして自動で出てくるし、かなり便利。パフォーマンスも結構いいよ。" userName="whatevaa" createdAt="2025/09/08 18:25:15" color="#ff33a1">}}




{{<matomeQuote body="どんな方法がもっと速いと思う？" userName="UltraSane" createdAt="2025/09/08 23:58:27" color="">}}




{{<matomeQuote body="どんなLinuxデスクトップでもMTP経由でできるよ。(Googleはマスストレージとしてのアクセスをもう許可してないからね)" userName="andrepd" createdAt="2025/09/08 18:42:50" color="">}}




{{<matomeQuote body="Signalは今ある便利な機能をやめて、自分のサーバーにデータを保存させる、もっと悪いサービスを強制してくるだろうなと俺は思うよ。PINの時みたいにさ。あの時はすっごい反発があって強制を止めたけど、それでも1年か2年はしつこく通知が来たし。PINとリモートアテステーションがどうとかで、小さいパスフレーズでデータが保護されるって理屈も信用できなかったし、既存の便利なバックアップ機能を削除しないってのも信用できない。あと、既存のバックアップソリューションって、リバースエンジニアリングされたコミュニティのソリューション（GitHubプロジェクト）を使わないと、暗号化を解除してチャットをエクスポートできないんだぜ。他のメッセンジャーじゃこんなこと一度もなかったのに。" userName="halyconWays" createdAt="2025/09/08 21:19:47" color="#45d325">}}




{{<matomeQuote body="Signalはセキュリティ上の理由で、サブのクライアントには古いメッセージを同期しないんだよ。" userName="poisonborz" createdAt="2025/09/09 08:06:17" color="#ff5733">}}




{{<matomeQuote body="多分、彼らが言ってるのはGoogleが全アプリに開発者署名必須にするって計画のことだね。これ、F-Droidからインストールしたアプリにも影響するんだよ。<br>参照: https://news.ycombinator.com/item?id=45017028" userName="cyphar" createdAt="2025/09/08 20:15:13" color="#45d325">}}




{{<matomeQuote body="Syncthingってあんまり理解できなかったんだよね。最近、Windows用のGo GUIを雰囲気で作って、rcloneとsshd4aを使ってスマホからファイルを引っ張ってきて、必要なら削除してるんだけど、sshd4aをスマホで起動しとかないといけないから、すごく手動なんだ。" userName="roywiggins" createdAt="2025/09/09 02:14:38" color="">}}




{{<matomeQuote body="君の批判は理解できるし、僕も同じ気持ちだけど、Signalはローカルバックアップを引き続きサポートするみたいだよ。<br>参照: https://news.ycombinator.com/item?id=45171576<br>参照: https://news.ycombinator.com/item?id=45172188" userName="codethief" createdAt="2025/09/08 22:59:10" color="#785bff">}}




{{<matomeQuote body="個人的には、ファイルをデバイスから別の場所にエクスポートするのを調整して定期的にスケジュールしたり、それをそこで管理したりするのは「無料」じゃないと思うな。新しいサービスは妥当な価格だと思うよ。" userName="growse" createdAt="2025/09/08 17:42:50" color="">}}




{{<matomeQuote body="記事から明確に引用するね。「でも、セキュアバックアップはこれで終わりじゃないんだ。この初期バージョンのセキュアバックアップの基盤となる技術は、近い将来、よりセキュアなバックアップオプションの土台にもなるだろう。今後の計画には、好きな場所にセキュアなバックアップアーカイブを保存できるようにしたり、暗号化されたメッセージ履歴をAndroid、iOS、Desktopデバイス間で転送できるようにする機能も含まれてるよ。」" userName="andrepd" createdAt="2025/09/08 18:45:24" color="#ff33a1">}}




{{<matomeQuote body="もしGrapheneOS版のAndroidを使ってるなら、そうじゃないよ。" userName="npoc" createdAt="2025/09/09 07:25:15" color="">}}




{{<matomeQuote body="え？僕のスマホには完璧に動く802.11チップセットがあるし、クラウドじゃない自分のマシンと会話できるよ。手動接続もいらない。これは純粋にソフトウェアかエコシステムの問題だね。" userName="Sesse__" createdAt="2025/09/08 18:09:01" color="#ff33a1">}}




{{<matomeQuote body="すごいね、副次的な効果として、AndroidとiOS間でメッセージ履歴を失わずに移行できるようになるかもね。マジで、なんでこの2つのプラットフォームで移行プロトコルが完全に違うんだろう？" userName="amluto" createdAt="2025/09/08 17:03:55" color="">}}




{{<matomeQuote body="こんにちは、Signal開発者だよ。新しいバックアップ形式は確かにクロスプラットフォームなんだ。iPhoneでバックアップの復元に成功したし、今まさに安定化させているところだよ！<br>もし興味があるなら、Androidの今のローカルバックアップがクロスプラットフォームじゃない理由は、昔作られたもので、文字通りAndroidのSQLiteデータベースを再作成できる全てのSQLiteステートメントのダンプだからなんだ（強力な、ランダムなローカルキーで暗号化されているよ）。だから、あんまりポータブルじゃないんだよね！<br>でも、この新しいやつは全部クロスプラットフォームで、近い将来にはローカルバックアップもクロスプラットフォームにするつもりだよ。" userName="greysonp" createdAt="2025/09/08 17:58:29" color="#785bff">}}




{{<matomeQuote body="やあGreyson！<br>＞ でも、この新しいやつは全部クロスプラットフォームで、近い将来にはローカルバックアップもクロスプラットフォームにするつもりだよ。<br>これは素晴らしいニュースだね！バックアップ形式に関する公式ドキュメントや、signalbackup-tools[0]みたいにオフラインでバックアップにアクセス／解析できる公式ツールも出るのかな？僕はSignal/TextSecureを10年使ってるから、バックアップはすごく大事なんだ（もちろんね）し、これまでにバックアップデータを掘り下げて処理したいと思ったことが何度かあったんだ。（会話からメディアを自動で抽出したり、もっと凝った検索を構築したり…）<br>僕のバックアップは15〜20 GBに達していて、毎日バックアップを取って48時間後に上書きされる前にうまく同期するのが難しくなってきているんだ。だから、新しい“クラウドバックアップ”機能[1]を使い始めない限り（使いたいかどうかわからないけど）、いつか既存のSignal会話をどこかにアーカイブして最初からやり直す（つまりアプリをリセットする）必要があるだろうね。その場合、[0]が今提供しているみたいに、新旧のバックアップをオフライン（デスクトップで）でマージして読み込める公式に文書化された方法があるといいな。<br>[0]: https://github.com/bepaald/signalbackup-tools<br>[1]: EDIT: 実際、新しいクラウドバックアップ機能はインクリメンタルバックアップもサポートしていないみたい？ https://news.ycombinator.com/item?id=45175387" userName="codethief" createdAt="2025/09/08 22:38:33" color="#45d325">}}




{{<matomeQuote body="やあ！すごく公式なものは出ないかもしれないけど、コードは当然全部オープンソースだし、バックアップファイルはただのProtobufs[1]のストリームだから、ツールを作るのはそんなに大変じゃないはずだよ。僕もいくつか荒削りなCLIツールを持ってるから、このローカルバックアップ部分がリリースされたときに、何か整理して公開できるものがあるか見てみるよ。<br>あと、誰かも言ってたけど、形式は確かにインクリメンタルなんだ。だから、ディスクに最後の2つのバックアップを保持するっていうことは続けるけど、その2つのバックアップはほとんど同じメディアファイルを共有するから、ディスク上のサイズはかなり小さくなるよ。僕も50 GBのバックアップファイルを持ってるから、これは僕にとってすごく大きな目標だったんだ :)<br>[1] https://github.com/signalapp/Signal-Android/blob/main/app/sr..." userName="greysonp" createdAt="2025/09/09 12:00:21" color="#785bff">}}




{{<matomeQuote body="＞ ローカルバックアップ部分がリリースされたときに、何か整理して公開できるものがあるか見てみるよ。<br>それ、最高だね！本当にありがとう！<br>＞ 僕も50 GBのバックアップファイルを持ってるから、これは僕にとってすごく大きな目標だったんだ :)<br>ハハ、僕だけじゃなくてよかったよ！" userName="codethief" createdAt="2025/09/09 13:04:12" color="">}}




{{<matomeQuote body="それらは確かにインクリメンタルで、Signalが現在作成している現在のモノリシックなバックアップよりも小さいよ。[0]やったね！<br>[0]: https://news.ycombinator.com/item?id=45176074" userName="morserer" createdAt="2025/09/09 07:59:32" color="">}}




{{<matomeQuote body="おい、Signalにインフラ自動化コード全部をリリースさせてくれよ。そうすれば、誰かがSignalのインフラ全体を監査できるし、アメリカの法律とかで必要になったらいつでもフォークできるだろ。それを秘密にする理由はないし、Signalがこの点について話さない理由もないだろ。頼むよ！" userName="purpleidea" createdAt="2025/09/09 08:55:28" color="">}}




{{<matomeQuote body="一部壊れた古いデバイスからの移行でSignal iOSインストールが使えなくなったんだけど、君たちはそれを直すアップデートを出すつもりかい？メッセージの受信・閲覧はできたけど、送信はできなかったんだ。再登録しようとしたら、今ではクライアントが完全に壊れてSMSで届く登録認証コードを入力するとクラッシュするんだ。" userName="amatecha" createdAt="2025/09/08 23:24:27" color="">}}




{{<matomeQuote body="新しいバックアップ形式は、AndroidとiOS間のファイルタイプ変換もサポートするの？以前は、Androidからのボイスメモが参加者間で直接送られてない限り、iOSで開けなかったんだ。" userName="oezi" createdAt="2025/09/08 18:54:30" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
