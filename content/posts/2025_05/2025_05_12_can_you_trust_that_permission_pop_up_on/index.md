+++
date = '2025-05-12T00:00:00'
months = '2025/05'
draft = false
title = 'macOSで突然出るアレ、信頼できる？本物？偽物？'
tags = ["macOS", "セキュリティ", "ポップアップ", "権限", "UX"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> macOSで突然出るアレ、信頼できる？本物？偽物？

引用元：[https://news.ycombinator.com/item?id=43966089](https://news.ycombinator.com/item?id=43966089)




{{<matomeQuote body="Appleさんへお願い。アプデとかで突然ローカル管理者パスワードを聞くポップアップ出すの、いい加減やめてほしいんだよね。<br>誰でも簡単に偽物のポップアップ作れるし、「底辺80%」のユーザーは偽物か本物か見分けようとしないよ。<br>こんなことしてたら、正規のソフトが何のきっかけもなく勝手にパスワード要求するんだって、ユーザーに教え込むだけじゃん。それが今のダイアログのやってること。<br>メニューバーにカラフルなアイコン出すとか、Windowsみたいに専用画面使うとか、やり方あるでしょ。今のmacOSの「セキュリティ」UIはマジでひどい。" userName="xp84" createdAt="2025/05/12 23:12:32" color="#ff5733">}}




{{<matomeQuote body="こういうのホント嫌いなんだよね。なんで聞いてくるのか分かんないし、「いいえ」って言ったらどうなるかも分かんない。設定をどう管理すればいいかも全然。<br>アプリの設定画面みたいに、「はい、設定パネル開いてXXXを許可して」って言うのとは全然違う。そっちならアプリ名も機能も切り替えも見れて、オンオフ自由じゃん。<br>だから”capabilities”って概念、あんま好きじゃないんだ。UXがひどいし、ひどくならざるを得ない感じ。「新しいアプリをフルに楽しむには＜PCをroot化＞を有効にして。」開発者側が好き勝手メッセージ決めれたらこうなるでしょ。全然親切じゃない。" userName="whartung" createdAt="2025/05/12 23:36:24" color="#45d325">}}




{{<matomeQuote body="＞capabilitiesって概念のUXがひどいと思うって意見だけど、そんなことないと思うな。macOSのが中途半端で後付けだからダメなだけだよ。ちゃんとできるはず。<br>例えば、どのアプリにどんな長期的な権限あげたか設定画面で見れるようにするとか（Accessibility設定みたいにね）、最近どう使ったかのログとか、取り消しも。アプリが権限求めるときに理由説明つけるとか（iOSみたいに）。”いいえ”って言ったらどうなるかちゃんと示すとか。interdictionとかLogging、Little snitchみたいなのも。もっと細かい権限設定も必要。アプリに”PCをroot化”なんて権限絶対あげたくないし、そもそもそんなの必要ないでしょ。<br>macOSの問題はPOSIXベースでcapabilityを後付けしようとしてるからだと思う。アプリ開発者もcapability前提で考えてないし。本来ならfopen()とかもcapabilityを引数に取るべきだけど、それやったら今までの全部のソフト変えることになるから無理だよね。" userName="josephg" createdAt="2025/05/13 00:16:38" color="#ff33a1">}}




{{<matomeQuote body="macOSの内部をちょっと見てきた者として、これ全部めちゃ面白いね。でも気になるんだけど、capabilityってそんな低レベルで実装できると思う？POSIXのセキュリティモデルって、C言語で書きやすいシンプルなモデルだからああなってるんじゃないかなって気がするんだよね。<br>あなたが言ってるcapabilityシステムはすごいクールだけど、ずっと複雑に聞こえる。もしそれが本当に複雑で、本質的にシンプルじゃないなら、システムの一部を抜き出して悪用するみたいな回避策が出てきちゃわないかな。" userName="nmgycombinator" createdAt="2025/05/13 00:25:31" color="">}}




{{<matomeQuote body="もしmacOSがポップアップをウィンドウに紐付けたままでいてくれたら、これほど問題じゃなかったかもね[0]。完全に解決じゃないけど、マシだった。今のポップアップはツールバーの上に重なるから、アプリの一部にすごく見えちゃうんだよ。<br>Steve JobsもAquaのデモで、独立したモーダルの面倒さを指摘してたのにね[1]。なのに今はこれだよ。AppleがモバイルUIにやたらこだわる変な癖のせいでさ。" userName="ronnieboy493" createdAt="2025/05/13 06:55:58" color="#38d3d3">}}




{{<matomeQuote body="偽ポップアップをクリックすることの脅威モデルって何なの？だってシステムから来てないんだから、別に何も起こらないでしょ？" userName="matthewfcarlson" createdAt="2025/05/13 01:04:09" color="">}}




{{<matomeQuote body="iCloudにログインする時、平文のローカルパスワードがサーバーに送信されるって主張の証拠、お願いできますか。" userName="DowsingSpoon" createdAt="2025/05/13 00:25:56" color="">}}




{{<matomeQuote body="Capability自体はホントに低レベルで実装できるよ。各プロセスと関連付けられたcapabilityの配列みたいにね。Wikipediaのc-listってページ見てみて。あのページでも指摘してるけど、POSIXのファイルディスクリプタって実質c-listなんだよ。<br>Capability OSは、オープンファイル以外のリソースへのアクセス制御に、同じようなメカニズムを使うわけ。GP（前のコメント）が言ってた他のこと（Loggingとかinterdiction、UIとかね）は、一番下のcapabilityシステムの上に実装するレイヤーだよ。" userName="ryukafalz" createdAt="2025/05/13 01:35:21" color="#ff5733">}}




{{<matomeQuote body="passkeyのポップアップがjavascriptのポップアップと区別つかないのは、ひどいセキュリティ上の間違いだね。" userName="musicale" createdAt="2025/05/13 02:18:36" color="#ff33a1">}}




{{<matomeQuote body="SeL4はCで全部書かれた、能力ベースのOSツールキットだよ。OSのコア部分はたった数千行なんだ。しかも数学的にバグがないって証明されてるんだぜ、信じられないだろ。メモリ割り当ても能力を使うんだ。だから普通はシステム全体のメモリを管理するマイクロサービス（ユーザーランドプロセス）がいて、他のプロセスはそいつに頼んでヒープメモリを割り当ててもらうんだよ。（まぁ普通は大きなブロックを割り当てて、それを普通のあれで分割するけどね）。" userName="josephg" createdAt="2025/05/13 05:00:46" color="">}}




{{<matomeQuote body="プレーンテキストのパスワードを送るとは一言も言ってないよ。’暗号化’するって書いてあるのは、Keychainにアクセスする必要があるからだ。ダイアログにはそう書いてあるけど、この許可から逃れる方法はないんだよ。君は100%間違ってる。編集： https://apple.stackexchange.com/questions/467137/are-keychai..." userName="ssd646" createdAt="2025/05/13 02:36:59" color="">}}




{{<matomeQuote body="AppleはSEPコプロセッサにL4の派生を使ってると思うけど、それがSeL4かは分からないな。いつかじっくり調べるべきOSがまた増えた感じだ。" userName="nmgycombinator" createdAt="2025/05/13 07:09:19" color="">}}




{{<matomeQuote body="ここで何が問題なの？Javascriptのポップアップは指紋認証を読み取れないんだから、偽のpasskeyポップアップの最終的な狙いは何になるっていうの？" userName="sureIy" createdAt="2025/05/13 04:05:10" color="">}}




{{<matomeQuote body="macOSにはPrivacy ＆ Securityペインで細かい権限が見られる最初のUIがあるよ。App Store外アプリの説明はチェックされないから、macOSは説明を出さないんだ。「いいえ」の場合も同じ。偽の申請は変なユーザー体験になるし、怖がられるし、Appleらしくない。macOSは全てのアプリがサンドボックス化されてて、root権限も弱められてる。これは他のOSより優れてる点だね。" userName="mike_hearn" createdAt="2025/05/13 10:08:49" color="#38d3d3">}}




{{<matomeQuote body="悪意のあるアプリがこれを真似するのはかなり簡単そうだね。" userName="saagarjha" createdAt="2025/05/13 09:24:54" color="">}}




{{<matomeQuote body="この名作を再投稿する時が来たみたいだね：The Line of Death https://textslashplain.com/2017/01/14/the-line-of-death/" userName="yencabulator" createdAt="2025/05/13 03:21:14" color="">}}




{{<matomeQuote body="テクノロジー詳しくない親戚は、ローカルのデバイスパスワード／パスフレーズとiCloud／Apple IDパスワードの違いが分かんなくて、どれか動くまで全部入れちゃうんだ（UIが不明瞭で一貫性ないから仕方ない）。Appleは昔VistaのUACをからかってたけど、結局同じような突然のプロンプトまみれで、UIはむしろ弱くなってるね。" userName="pornel" createdAt="2025/05/13 02:58:51" color="#45d325">}}




{{<matomeQuote body="Keychainについて調べた者として、君はこの状況を誤解してると思うな。Keychain項目はiCloudとローカルに別々にあって、ローカルのはiCloudに行かない場合もある。ローカルマシンのパスワード（ログインに使うやつ）はKeychain項目として保存されないから、iCloudやローカルKeychainには入らないよ。コンピューターのパスワードはローカルKeychain解除に使うけど、パスワード自体は保存されないんだ。ローカルはiCloudとは別物だよ。Apple開発者じゃないけど調べたんだ。" userName="nmgycombinator" createdAt="2025/05/13 02:55:33" color="#ff5c5c">}}




{{<matomeQuote body="They also run L4 variants below and besides XNU, on same cores as the rest https://randomaugustine.medium.com/on-apple-exclaves-d683a2c．．．っていう技術的な話もあるらしいよ．残りのcoresと同じとこでね．" userName="SSLy" createdAt="2025/05/13 07:18:37" color="#38d3d3">}}




{{<matomeQuote body="The Plessey 250ってやつ，すごかったんだよ．．． https://en.wikipedia.org/wiki/Plessey_System_250" userName="FuriouslyAdrift" createdAt="2025/05/13 16:58:55" color="">}}




{{<matomeQuote body="Touch IDあっても全部のpassword popupsがすぐ消えるわけじゃないんだよね．会社のwork macbookのMDM／security settingsのせいかもだけど，Touch ID効いたりpassword求められたり．AppleよりUACの方がマシ．仕事終わりにapplications閉じたのに，password promptsが背景に残ってる日とかあるし．あれimportantだったの？Should I still permit them？誰にもわかんない！" userName="jeroenhd" createdAt="2025/05/13 08:39:28" color="#45d325">}}




{{<matomeQuote body="へぇ，なるほどねぇ．attached modalsはwindowがある前提だけど，たぶん10回のうち9回はtrueだろうしね．" userName="nmgycombinator" createdAt="2025/05/13 07:03:16" color="">}}




{{<matomeQuote body="こういう時にintegrated fingerprint readerがあるの，really appreciateなんだよね．普段はlaptop screen closedでexternal monitor使ってるけど，system dialogsでauthenticateするためにspecifically openしてるよ．" userName="aranchelk" createdAt="2025/05/13 01:14:36" color="#785bff">}}




{{<matomeQuote body="tech companiesのdamage controlをfor freeでするくらいなら，navyとかでlivesをsaveするdamage control skills活かした方がいいんじゃないの？More seriously，俺は”the app store”とか”walled gardens”が良いなんてstupid ideaにはnever surrenderだね．They are notだし，simply being on the app storeはanything at allのtrustのsignalじゃないよ．" userName="Der_Einzige" createdAt="2025/05/13 13:38:32" color="">}}




{{<matomeQuote body="それがgood or badだってargueしたんじゃなくて，only that it allows Apple to verify thingsだって言っただけだよ．Actually macOSはsometimes explanations使うじゃん．Calendar accessとかね．Anything where the rationaleがintuitively checkedできる seems to OK to use them．" userName="mike_hearn" createdAt="2025/05/13 18:43:03" color="">}}




{{<matomeQuote body="system preferences windowにくっついたdialogとしてopenするようにして，within thatにwhat app／serviceがpermissions求めてるかincludeすべきだよ．free floating windowはfor anyone isn’t goodだし，settings appをduplicatingするのはat least slightly more difficult to fakeにするだろうしね．" userName="jclardy" createdAt="2025/05/13 08:42:01" color="#ff5c5c">}}




{{<matomeQuote body="Thanks for posting．I’ve had this vividly in my mind for years，but didn’t remember the source．Makes so much sense．" userName="WA" createdAt="2025/05/13 05:37:25" color="">}}




{{<matomeQuote body="non technical userがscary pop ups and warningsをどれだけ気にしないかっていうexampleね．MacOS and Chrome動かしてるpeopleとか，full blue screenの”your computer has been locked by windows，call Microsoft support at this phone number to unlock”っていう詐欺にregularly fall forなんだよ．自分がwindows computerじゃないってことすらtheir mindsにenterしないまま，that it’s just scam content presented in a full screen browser windowだってcontemplateするbefore they evenね．" userName="walrus01" createdAt="2025/05/13 10:26:19" color="#ff33a1">}}




{{<matomeQuote body="うん，こういうシステム全般の問題点だよね．メッセージがユーザーにうまく伝わらないんだ．昔のjava appletは”このアプリは署名されてます，続けますか？”って聞くんだけど，それが本当に何を意味するのか（ユーザーが実行するとサンドボックス外で動くってこと），分かるのは底辺のエンジニアだけ．Windows UACとか他のLinuxデスクトップのセキュリティも似たようなもんかな．" userName="spoonsort" createdAt="2025/05/13 14:49:01" color="#ff5733">}}




{{<matomeQuote body="最近知ったんだけど，macアプリはシステムのApplicationsじゃなくて自分のホームディレクトリの方に入れるべきなんだって．非adminユーザーにしてアプリをホームのApplicationsに入れれば，ほとんどのアプリはadmin権限なしで勝手にアップデートできるから権限要求に悩まされないよ．ただしTailscaleとか一部例外あり．これはPareto Securityってアプリも推奨してる方法らしい．詳しくはリンク見てみて．" userName="cypherpunks01" createdAt="2025/05/12 22:37:54" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="残念ながら，多くの（ほとんど？）アプリ開発者もこのこと知らないんだよね．中にはアプリを明示的に／Applicationsにインストールしないと動かないようにしてる人たちもいるんだ．" userName="Etheryte" createdAt="2025/05/12 23:02:42" color="">}}




{{<matomeQuote body="全体のトピックは置いといて，俺は昔から＄HOME／Applicationsに入れてるよ．ほとんどのソフトは気にしない．たまに初心者に”Downloadsフォルダから起動してるけど，／Applicationsに移動しようか？”って聞くポップアップ出すくらい．Adobeとか”Installers”使うアプリだけは／Applicationsに入れてるけど，きっと移動したら動かないだろうな．こうするとホームディレクトリコピーするだけでアプリも簡単に移行できて楽なんだ．" userName="xp84" createdAt="2025/05/12 23:17:35" color="">}}




{{<matomeQuote body="＞ホームディレクトリ全部コピーすれば移行が楽になるって考えね．<br>関係ないけど，macOSのドラッグ＆ドロップインストールってマジで最高だよ．みんな文句言うけど，あれって単にフォルダをApplicationsフォルダに移動してるだけなんだって気づいてないんだよね．Windowsの”ウィザード”方式よりずっとシンプルでしょ．まあ，開発者によるけどね．" userName="nmgycombinator" createdAt="2025/05/12 23:22:23" color="">}}




{{<matomeQuote body="もしアプリを〜／Applicationsに入れると，rootなしで自動アップデートできるけど，怪しいコードもroot権限なしでそれを上書きできちゃうよ．" userName="throwaway290" createdAt="2025/05/13 05:46:14" color="">}}




{{<matomeQuote body="いやいや，それは何リリースか前に直ってるよ．macOSは何年もrootユーザーの概念を使ってない．実際のパーミッションモデルはUNIXと全然違うんだ．<br>１．アプリは他のアプリのファイルをいじれない．たとえ＄HOMEにあっても無理．ターミナルで試してみてよ．<br>２．rootでもSIPを無効にしない限りシステムに勝手な変更はできない（リカバリーモードでいじる必要あり）．だから昔みたいに簡単に上書きされたりはしないよ．" userName="mike_hearn" createdAt="2025/05/13 10:14:43" color="#ff5c5c">}}




{{<matomeQuote body="UNIXモデルが互換性のためだけってのは違うと思うな．<br>１．ターミナルになんらかの権限が必要ってことね．<br>２．多くのアプリはアップデート時にadminのパスワードを聞くよ．Dockerとかね．開発者向けソフトは”sudoが必要だから”って言うし．SIPで守られてるのは一部だけ．それ以外はrootが結構いじれるんじゃないかな．MacPortsとかは全部sudoの下だし．" userName="throwaway290" createdAt="2025/05/13 12:58:51" color="#785bff">}}




{{<matomeQuote body="grepは読み取り専用だから常に許可されてるよ．<br>うん，Dockerみたいな開発ツールはadminパスワードを聞いてくるけど，それはほとんどのMacユーザーが経験することじゃないね．Rootはまだ存在するけど，元々Linux用に作られたソフトとか一部の特殊なケース以外では，遭遇しないと思うな．" userName="mike_hearn" createdAt="2025/05/13 18:41:49" color="#ff5733">}}




{{<matomeQuote body="macOSの”とりあえずApplicationsにドラッグ”方式の問題はアンインストールだよ．フォルダを消してもユーザーデータ（破損してる可能性もあるよね？）は消えないし，初回起動時にアプリが作ったシステム側のファイルも消えないんだ．普通のWindowsインストーラーなら，ユーザーデータも消すだろうし（前者），システム側のファイルは確実に消してくれるんだけどね（後者）．" userName="Kwpolska" createdAt="2025/05/13 06:35:52" color="#45d325">}}




{{<matomeQuote body="Finderでアプリを/Applicationsにドラッグすると何か起こるみたい。mvコマンドで移動すると、アプリが動かないことが多いんだよ。昔やったことだから詳細忘れちゃった、ごめんね。誰か詳しい人いるかな。" userName="jen729w" createdAt="2025/05/13 04:57:41" color="#785bff">}}




{{<matomeQuote body="macOS 15.4.1だけど、~/Applicationsなんてフォルダないよ。" userName="nyanpasu64" createdAt="2025/05/13 04:56:38" color="">}}




{{<matomeQuote body="macOSのアンインストールが難しいのはマジで同意だわ。Appleはきっと将来、全部のアプリが自己完結型になって、ゴミ箱に入れるだけでホントに全部消せるようになるって考えてるんじゃないかな。でも、それは現実的じゃないかもね。ファイル移動だけで済むインストールやアンインストールって、やっぱり良いと思うんだ。" userName="nmgycombinator" createdAt="2025/05/13 06:44:20" color="">}}




{{<matomeQuote body="Finderでの/Applicationsには、ちょっとした魔法があるんだ。実はこれ二つのフォルダで構成されてて、一つはシステムパーティションにあって書き込みできなくて、もう一つはデータパーティションにあって自分でインストールしたものはそこに入るんだよ。" userName="tonyedgecombe" createdAt="2025/05/13 05:56:47" color="#ff5733">}}




{{<matomeQuote body="「grepは常に許可される」ってのは間違い。一部フォルダは許可必要だし、許可されれば書き込みもできる。アプリの署名検証（SIPとか）はあるけど、編集しても警告出ないケースもあるし、xcodeあれば自分で署名できちゃうから偽装も可能だよ。別のコメントでも言ったけど、~/Applicationsを使うのはSIPとかあっても、まだセキュリティは低いんだ。" userName="throwaway290" createdAt="2025/05/14 07:02:57" color="#ff5c5c">}}




{{<matomeQuote body="Apple自身にも、Applicationsフォルダにないアプリが読み取り専用でマウントされるっていう変な癖がいくつかあるんだ。このバグはしばらく見てないけど、直ったっていう公式な情報も見たことないから…。" userName="Klonoar" createdAt="2025/05/13 06:51:18" color="">}}




{{<matomeQuote body="「Applicationsにドラッグして、ゴミ箱に移動して削除」っていう流れは何十年も前、たぶんNeXTStep [0]の時代に発明されたんだよ。アプリケーションバンドルは書き込みできるようには作られてないし、ユーザーデータをそこに書くこともできない。もしAppleが将来の変更を考えてるなら、彼らはその実行力がマジで低いね。[0] https://www.nextcomputers.org/files/manuals/nd/Concepts/Inst..." userName="Kwpolska" createdAt="2025/05/13 20:45:46" color="#38d3d3">}}




{{<matomeQuote body="/Applicationsフォルダは三つあるんだよ、君が言った二つと、各グラフィカルユーザーのための~/Applicationsね。" userName="SSLy" createdAt="2025/05/13 07:21:00" color="">}}




{{<matomeQuote body="完全に署名ベースじゃないよ．ChromeのInfo.plist編集できるか試してみて．権限がわかるよ．署名はネイティブコードは毎回，データファイルやバンドル構造は初回だけチェックされるんだ．ネットなしでもOK，公証もチェックできるよ．" userName="mike_hearn" createdAt="2025/05/14 18:44:15" color="#38d3d3">}}




{{<matomeQuote body="管理者なら，今でも~/Applicationsにアプリをインストールすることを選べるよ．" userName="mulmen" createdAt="2025/05/12 23:35:26" color="">}}




{{<matomeQuote body="それはバグじゃなくて，translocationっていうセキュリティ機能（ハック？）なんだ．ダウンロードしたアプリをFinderで最初に移動させずに実行すると起こるんだよ．" userName="mike_hearn" createdAt="2025/05/13 10:11:49" color="#ff5733">}}




{{<matomeQuote body="それは異端だね！まあ，昔のiPodならそれに近かったけどね．Apple Storeの同僚がたくさんアプリとかをiPodに入れてたんだ．" userName="xp84" createdAt="2025/05/13 01:51:00" color="">}}




{{<matomeQuote body="僕のAdobeアプリは全部/Applications/gfxからちゃんと動いてるよ．~/Applicationsに入れたことはないんだ．それらは他にもいろいろなファイルをあちこちに置くけどね．" userName="egypturnash" createdAt="2025/05/13 02:03:47" color="">}}




{{<matomeQuote body="＞ChromeのInfo.plist編集できるか試してみて権限確認．署名アプリのplistは編集できても次回起動で”破損してる”扱いが多いけどTauriアプリは起動できた．マルウェアはアプリを書き換えるより削除して置き換える手があり，~/Applicationsなら権限なしでできちゃうんだ．" userName="throwaway290" createdAt="2025/05/15 09:46:17" color="#ff33a1">}}




{{<matomeQuote body="残念ながらmacOSは~/Applicationsのアプリを普通の”アプリケーション”に混ぜて表示する魔法はないんだ．でもSettingsやPhotosみたいなシステムアプリと/Applicationsに入れたアプリは混ぜて表示してくれるよ．僕はいつも両方のフォルダをサイドバーに入れてて，毎日どっちか忘れちゃうけどね．" userName="xp84" createdAt="2025/05/16 19:20:51" color="">}}




{{<matomeQuote body="そう思うんだけど，間違ってたら教えてね．SIPオンで信頼されないソフトが無効なら検知されるかもだけど，xcodeあれば怪しいコードも署名できちゃうかも．/Applicationsは開発者向けに多層防御になるみたい．アプリが更新で管理者権限要求したら拒否して，後で公式サイトとかで確認できるよ．" userName="throwaway290" createdAt="2025/05/13 08:24:51" color="#ff5c5c">}}




{{<matomeQuote body="インストーラーは全部そうってわけじゃないよ。ヘボい開発者のだけだよ。ちゃんとした開発者は「全員向け」か「自分だけ」か選べるようにしてるってば。" userName="traceroute66" createdAt="2025/05/13 08:42:08" color="">}}




{{<matomeQuote body="~/Applicationsは知ってたけど使ってなかったんだよね。新しい職場でadmin権限なくて使い始めたよ。Homebrewもそこに入れるようにしたら、だいたいのアプリが使えるようになった。" userName="stefandesu" createdAt="2025/05/13 17:36:11" color="">}}




{{<matomeQuote body="大事な訂正！記事でこのCVEはmacOS Sequoia 15.5とかでパッチ済みって書いたけど、間違ってたよ。実はVentura 13.7.6とSonoma 14.7.6にはパッチされてないみたい。Appleに問い合わせたけど返事なし。自分でテストしたら、まだ脆弱性が残ってたんだ。なんでAppleがこれら2つに入れなかったかは不明。情報入り次第、記事を更新するね。" userName="nmgycombinator" createdAt="2025/05/13 02:00:20" color="#ff5c5c">}}




{{<matomeQuote body="編集したよ：VenturaとSonomaは脆弱なまま。AppleはSequoiaだけでパッチするって決めたみたいだね。" userName="nmgycombinator" createdAt="2025/05/14 18:13:58" color="#785bff">}}




{{<matomeQuote body="MacはMac、PCはPCって広告でVistaをバカにしてたの思い出したわ。今じゃMacがVistaよりダメじゃん。マジうざいんだけど。" userName="muppetman" createdAt="2025/05/12 22:05:45" color="">}}




{{<matomeQuote body="アプリ更新するたびに、これネットからDLしたけど信じる？って聞かれるのがうざい。このアプリ、ローカルネットワーク見てもいい？ってのも。常にうるさくて、もう気にしなくなっちゃった。まさにVistaがやってた通りだよ。" userName="muppetman" createdAt="2025/05/12 22:12:35" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ローカルネットワークのポップアップは確かにやりすぎだと思う。でも”これネットからDLしたプログラムだよ”って警告は、ウザいけどいい面もあるかな。Appleが開発者をApp Storeに誘導したい狙いもあるのかもね（そっちの方が安全性が高いと信じてるなら）。一長一短だわ。OSがユーザーを守ろうとしてるのは偉いと思う。ポップアップ疲れする気持ちも分かるよ。" userName="nmgycombinator" createdAt="2025/05/12 22:18:18" color="#45d325">}}




{{<matomeQuote body="ああもう、聞かないで…<br>Macのウザいとこ他にもいっぱいあるんだよ。<br>iCloudの通知、Apple Musicの広告と勝手に開く挙動、AppleTV+とかのゴミアプリがプリインストール、パッケージ管理はクソでアーキテクチャ間の不一致、ユーザーを信用せずVulkanやNvidiaドライバがないこととかね。Vistaよりひどい自己矛盾だわ。" userName="bigyabai" createdAt="2025/05/12 22:14:44" color="">}}




{{<matomeQuote body="「App Storeに促す狙い」って話だけど、これは開発者への搾取だよ、シンプルに。Appleは実行環境を安全にすべきで、手動でチェックするレンタル警官みたいな真似はやめるべき。App Storeはスマホでもデスクトップでも露骨な金儲け。セキュリティってのは、開発者を自分の手中に収めたいっていうAppleの歪んだ動機を隠すための口実だね。" userName="bigyabai" createdAt="2025/05/12 22:21:24" color="#38d3d3">}}




{{<matomeQuote body="俺は信頼できるアプリをダウンロードしたら、この挙動をオフにするためにxattr -d downloaded-app.dmgってコマンドを実行してるよ。" userName="trollbridge" createdAt="2025/05/12 22:23:04" color="">}}




{{<matomeQuote body="たまにMacOSに戻ろうかなって考えることもあるんだけどさ（OS X 10.7がiOSっぽくなりすぎたのと、アプリが署名されたりApp Store必須ってのが嫌で辞めたんだ）、もうマジで辞めてて良かったわ！" userName="MiddleEndian" createdAt="2025/05/13 12:07:15" color="">}}




{{<matomeQuote body="これはVistaが”昔やってたこと”とは違って、macOSには昇格に加えてエンタイトルメントって仕組みがあるんだ。macOSがダメなのは、一回拒否した許可要求がアプリを起動するたびに出たり、複数の許可が必要な場合も一度に一つしか出なかったりすること。これはVistaにはなかった問題点だよ。AppleはMoTWに加えてnotarizationもあって厳しすぎる。このままだとmacOSユーザーは許可のポップアップばっか出てきて疲れちゃうだろうね。/r/macosで言われてる「UNIXだから安全！」ってのもこの件に関しては間違いだと思うな。" userName="p_ing" createdAt="2025/05/12 23:17:52" color="#ff5733">}}




{{<matomeQuote body="マジでうざいのが、”リムーバブル”って扱いのドライブから読み込む許可を求められること。うちのSteamのライブラリがあるドライブとかがそうなんだよね。" userName="TylerE" createdAt="2025/05/12 23:05:27" color="">}}




{{<matomeQuote body="最初から入ってるアプリの話だけど、Photosみたいなのがアンインストールできないのはもっとアホだよね。”Mac動かすのに必要らしい”とか言われてるけど。悪いけど、ソフト開発専用のPCで写真ライブラリなんていらねーんだよ！" userName="xp84" createdAt="2025/05/12 23:01:13" color="">}}




{{<matomeQuote body="それってどのくらいの頻度で出るの？OSが一度許可したことは覚えてて、また出ないようにしてくれるんじゃないの？" userName="nmgycombinator" createdAt="2025/05/12 23:33:18" color="">}}




{{<matomeQuote body="macOS 15では、GUIでのバイパス（右クリック→開く）ができなくなったんだ。xattrコマンドが唯一の方法みたい。誰かAutomationとか作ってるかもね。" userName="p_ing" createdAt="2025/05/12 23:19:28" color="#38d3d3">}}




{{<matomeQuote body="Linuxで権限昇格が必要なとき、すごくめんどくさいんだよね。Yes/Noじゃなくてパスワード要求されるし。コンピューターを放置した隙の攻撃とかは気にしないから、パスワード要求は意味ないし。必要なのは、何かを昇格させようとしてるって確認できることと、Windowsみたいにアプリが勝手にYesをクリックできないことだけ。Linuxではこれの解決策が見つからないし、生体認証に切り替える方法すら見つけられなかったよ。" userName="ziml77" createdAt="2025/05/14 00:27:36" color="">}}




{{<matomeQuote body="WindowsのUACダイアログはセキュアデスクトップで表示されるから、他のアプリと見分けがついて偽装されにくい点がすごくいいんだよね。保護されたメモリで分離されてて、見た目も他のUIを全部隠すし。macOSやLinuxのDEみたいに他のダイアログと同じ見た目だと簡単に偽装されちゃうし。UACのセキュアデスクトップは攻撃を防ぐのにも役立つはずだから、macOSもマジでこういう仕組みを使うべきだと思うよ。" userName="thewebguyd" createdAt="2025/05/13 16:00:30" color="#ff5c5c">}}




{{<matomeQuote body="「これはインターネットからダウンロードしたプログラムです」って警告は、App Storeより前からあったんだよ。昔のmacOSでは、アプリがアイコンを偽装してダウンロードさせ、ユーザーがharmlessなファイルだと思って実行しちゃう危険があったから、その対策として生まれたんだ。ダウンロードされたファイルに特別な属性をつけて、Finderがそれを見たら警告を出して属性を削除するっていう手っ取り早いセキュリティハックだったんだよね。サンドボックスとかSIPが登場する前の話だよ。" userName="mike_hearn" createdAt="2025/05/13 10:19:22" color="#ff33a1">}}




{{<matomeQuote body="NSO Groupも喜んでるみたいに、AppleはSMSとかSafariの中身をレビューしないし、「キュレーションされたセキュリティ」なんてウソで、全然信頼できないよ。iOSではマルウェアも詐欺もやりたい放題で、広告で宣伝されてるものもあるし。プライベート権限の扱いに頼りすぎてて、開発者がそれをどう使ってるかレビューする気もないみたい。UberとかTikTokの例を見てみ？Appleは「安全な」レビューを、アプリレビューやランタイム保護をしない言い訳に使ってるだけだよ。" userName="bigyabai" createdAt="2025/05/12 22:36:15" color="">}}




{{<matomeQuote body="mimeタイプの関連付けを変えるなら、これおすすめだよ → https://github.com/philocalyst/infat" userName="tough" createdAt="2025/05/12 22:23:56" color="">}}




{{<matomeQuote body="よく出るよ。問題はドライブごとじゃなくてアプリごとに出るってことなんだ。ホームディレクトリ全体を対象にしたこともあったんだけど、プロンプトが煩わしすぎてやめちゃったんだよね。" userName="TylerE" createdAt="2025/05/13 00:04:47" color="">}}




{{<matomeQuote body="セキュリティと拡張性のトレードオフって避けられない問題みたいだね。でも最近はちょっと状況が変わってきたかも。少なくともmacOSはWindowsみたいに悪質なプロセスに悩まされることがないし。まぁ、僕がただ注意深いだけなのかもしれないけどね。" userName="nixpulvis" createdAt="2025/05/13 03:30:47" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
