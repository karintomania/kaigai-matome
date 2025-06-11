+++
date = '2025-06-04T00:00:00'
months = '2025/06'
draft = false
title = 'ウェブサイトからのローカルネットワークアクセスに制限をかける提案'
tags = ["Web", "セキュリティ", "ネットワーク", "プライバシー", "ブラウザ"]
featureimage = 'thumbnails/purple8.jpg'
+++

> ウェブサイトからのローカルネットワークアクセスに制限をかける提案

引用元：[https://news.ycombinator.com/item?id=44183799](https://news.ycombinator.com/item?id=44183799)




{{<matomeQuote body="ウェブサイトからローカルIPへのHTTPリクエストはヤバいと思うよ。企業アプリが壊れてもいい。企業は設定で戻せるし、普通の人は「ローカルデバイスを操作したいけど許可する？」みたいなポップアップで決められるようにすればいいんだよ。" userName="mystifyingpoi" createdAt="2025/06/04 19:13:59" color="#ff5c5c">}}




{{<matomeQuote body="これは誤解だよ。ローカルデバイスはCORSで結構前から守られてる。ただ、CORSはサーバーが「いいよ」って言わないとダメなんだ。今回の提案は、サーバーとウェブサイトがオッケーでも、ユーザーにも「いい？」って聞こうってこと。Facebookみたいに、ウェブサイトとローカルアプリが結託してヤバいことするかもしれないからね。" userName="buildfocus" createdAt="2025/06/04 21:08:16" color="#785bff">}}




{{<matomeQuote body="CORSって、ウェブページのJavaScriptが応答を見れるかだけ制限するんじゃないの？リクエスト自体は送られちゃうんでしょ？つまり、JavaScriptで脆弱なプリンターとかにヤバいリクエストを送って、コードを実行させちゃう攻撃ができるんじゃない？ウェブページは成功したかわからなくても、それは問題ないかもね。" userName="xp84" createdAt="2025/06/04 21:14:07" color="#ff5733">}}




{{<matomeQuote body="いやいや、ブラウザは本物のリクエストの前にOPTIONSリクエストを送るんだよ。クライアントのブラウザがOPTIONSリクエストをURL以外で制御できるとは思えないけど、どうかな？タイミング攻撃でデバイスがあるかはわかるかもしれないけど、悪意のあるコードを送れるかはちょっと疑問だね。" userName="tombakt" createdAt="2025/06/04 21:21:39" color="#785bff">}}




{{<matomeQuote body="「普通の人にポップアップで許可＼拒否させればいい」って言うけどさ、MacOSってアプリごとに許可聞いてくるけど、みんな考えずに「はい」って押しちゃうんだよね。ウェブサイトごとになっても、そんなに変わらないんじゃないかな。" userName="lucideer" createdAt="2025/06/04 20:18:09" color="">}}




{{<matomeQuote body="ポップアップ許可なんてセキュリティにならないって、まだそんなこと言ってる人がいるの？WindowsのUACを見ればわかるだろ。ユーザーは何も考えずに全部クリックするんだよ。それに、普通の人にはこの許可が何を意味するのか、どんな危険があるのか全然わからない。ウェブサイトが動かないから、言われた通りに盲目的に許可するだけだよ、毎回ね。" userName="mystified5016" createdAt="2025/06/04 20:37:36" color="#ff33a1">}}




{{<matomeQuote body="悪い奴は、OPTIONSがいらないGETとかPOSTの「シンプルリクエスト」で、デバイスを攻撃するコードを作ろうとするだろうね。でも、実際にそんな上手いこといく例はまだ見たことないんだ（論文で読んだけど、漠然とした話だった）。" userName="LegionMammal978" createdAt="2025/06/04 21:28:40" color="">}}




{{<matomeQuote body="このタグ<br>＜img src=”http://192.168.1.1/router?reboot=1”＞<br>を使えば、CORS関係なくローカルネットワークにGETリクエストを送れるんだよ。" userName="varenc" createdAt="2025/06/05 03:32:18" color="#785bff">}}




{{<matomeQuote body="ポップアップ許可は本当にダメだね。今のMacは「許可する？しない？」って聞きまくりで、さらに手動で設定開いてアプリ探したりしないといけない。どっちも結局ダメなんだよ。テクノロジーのこと全然わからない人が、色んな機能も使いつつ、ヤバい奴から完全に身を守るなんて、誰も方法を見つけられてない。全部の許可を禁止するような、ガチガチに固めたアカウントくらいしか無理なんじゃないかな。" userName="xp84" createdAt="2025/06/04 21:20:32" color="#ff5733">}}




{{<matomeQuote body="Macって’許可/不許可’のポップアップだらけになったよね。<br>昔、AppleがMicrosoftのこれをバカにしてたCM知ってる？<br>これだよ → https://www.youtube.com/watch?v=DUPxkzV1RTc" userName="donnachangstein" createdAt="2025/06/04 22:59:30" color="#ff33a1">}}




{{<matomeQuote body="これマジでやばいと思うんだけど。ウェブサイトがローカルネットワークにアクセスできるべきなの？<br>全然新しい脅威が出てくるじゃん、対策なんてないし。<br>これ、他に良い方法ないのに、どうしても必要なケースってあるの？" userName="jm4" createdAt="2025/06/05 01:12:29" color="#38d3d3">}}




{{<matomeQuote body="Windows Vistaはさ、デスクトップにショートカット作るみたいな全然たいしたことない時でも権限ポップアップ出したよね。<br>あの実装、Microsoftは本当にバカにされるべきだったよ。" userName="GeekyBear" createdAt="2025/06/05 01:50:50" color="">}}




{{<matomeQuote body="ちょっと手間はかかるだろうけど、これがセキュリティのためなら仕方ないね。<br>俺らがアクセスしたウェブサイトが、localhost:8080で動かしてるセキュリティがゆるいテスト用ウェブサーバーにPingしたり攻撃したりできるなんて、マジででかいセキュリティリスクだよ。" userName="zaptheimpaler" createdAt="2025/06/04 19:25:18" color="#785bff">}}




{{<matomeQuote body="’mode: ’no-cors’’を忘れてない？<br>あれを使うとレスポンスは見えなくなるけど、CORSの事前リクエストとかヘッダーチェックを全部すり抜けちゃうんだ。" userName="rafram" createdAt="2025/06/05 01:52:39" color="#ff5733">}}




{{<matomeQuote body="それか、セキュリティが甘いルーターとかウェブカメラみたいな、ローカルネットワーク上の脆弱なHTTPサーバーを探し回ることもできる。<br>localhostだけじゃない、それはほんの一部だよ。" userName="duskwuff" createdAt="2025/06/04 19:34:25" color="#45d325">}}




{{<matomeQuote body="そうそう、POSTとかDELETEとかのフォームもトリガーできるんだ。<br>もしエンドポイントがリクエスト内のトークンを検証してなかったら、これはCSRFって呼ばれるやつだよ。<br>CORSは、権限のないXHRリクエストしか防げないんだ。<br>これ、全部何十年も前のOWASPの基本だね。" userName="lyu07282" createdAt="2025/06/05 06:26:57" color="#38d3d3">}}




{{<matomeQuote body="問題はね、これ許可しないとSynologyみたいなウェブUIが動かなくなることなんだ。<br>ああいうのってブラウザがローカルネットワークに接続する必要があるから…。<br>現状だと、あんまり良くないね。" userName="grokkedit" createdAt="2025/06/04 20:32:23" color="#ff5733">}}




{{<matomeQuote body="’ローカルネットワーク’って定義できる？<br>多分無理だね。<br>大抵の大企業は社内用に公開ルーティング可能なIPアドレスを持ってるし、社内ネットワークが192.168.0.0/24とは限らない。<br>foo.corp.example.comが9.10.11.12に解決されてもローカルってことだってある。<br>IPv6は？<br>これ、コーナーケースだらけの無意味な議論だよ。" userName="donnachangstein" createdAt="2025/06/04 19:42:37" color="#ff5c5c">}}




{{<matomeQuote body="これも誤解だよ。<br>CORSはLayer 7の通信にしか適用されない。<br>それ以外のことは、タイミングを見れば色々わかる。<br>Websocketsみたいなブラウザの主要な機能には、こんな制限は全然ないんだ。" userName="sidewndr46" createdAt="2025/06/05 13:32:42" color="#ff5733">}}




{{<matomeQuote body="昔、ルームメイトのWindows 98にマルウェアが入ったことあるんだ。画像ファイルを全部VBScriptに書き換えるワームで、クリックや実行されるたびに増殖して感染を広げるやつ。VBS拡張子を隠して元の画像に見せかけてた。<br>Windowsでショートカットを作るのが必ずしも安全ってわけじゃないんだよ。ユーザーがソフトをインストールするのに慣れてたから、マルウェアを仕込む最初の手段としてよく使われたんだ。Windowsのショートカットって、変なパス名やコマンドライン引数、カスタムアイコンとか色々なものを隠せるし、いつでも変更できちゃうんだよね。<br>だから、UACが過剰だったとか邪魔だって言われたり、Microsoftがセキュリティ甘いって馬鹿にされたりしたけど、こういうやり口について注意喚起したのは間違ってなかったのかもね。" userName="AStonesThrow" createdAt="2025/06/05 02:04:38" color="#ff5c5c">}}




{{<matomeQuote body="これ、大事な情報が抜けてるよ。preflightがスキップされるってのは正しいけど、このモードで動作する時はさらに制限があるんだ。サーバーの安全を保証するわけじゃないけど、“ safer”（より安全な）って言える動詞とヘッダーフィールドのサブセットで動かざるを得なくなるんだよ。<br>ブラウザはno-corsモードで送れるリクエストのヘッダーとメソッドを制限するんだ。（ヘッダーの場合はサイレント検閲、もっと具体的に言うとね）<br>GET、HEAD、POST以外のメソッドはブラウザでエラーになって送信されない。<br>CORS safelisted headers [0]以外のヘッダーは全部削除されるんだ。<br>それからContent-Typeはurlencoded、form-data、text-plainのどれかじゃないとダメ。それ以外を使おうとすると、ヘッダーがtext-plainに置き換えられるよ。<br>[0] https://developer.mozilla.org/en-US/docs/Glossary/CORS-safel..." userName="jonchurch_" createdAt="2025/06/05 13:58:03" color="#38d3d3">}}




{{<matomeQuote body="お前のBitcoinノードにjson-rpcリクエストを送って、ウォレットを空にされちゃうかもしれないぜ。" userName="drexlspivey" createdAt="2025/06/04 22:54:33" color="">}}




{{<matomeQuote body="昔は、フォーラムの署名に`＜img＞`タグで`http://someothersite.com/forum/ucp.php?mode=logout`とか埋め込んで、ウェブ上の皆のセッションをぶっ壊せたのを覚えてるよ。" userName="grrowl" createdAt="2025/06/05 07:31:20" color="">}}




{{<matomeQuote body="ほとんどのユーザーが’はい’をクリックするっていう証拠、何かあるの？<br>私の親は非技術者だけど、何もかもデフォルトで’いいえ’ってクリックしてるよ。たまに何か動かないときに助けを求められるんだけど、多くの場合、アプリに必要な許可（例えばオーディオ通話アプリがマイクへのアクセスを拒否されたとか）を拒否してるからなんだ。<br>統計がないと、安易な仮定はできないと思うんだよね。" userName="mastazi" createdAt="2025/06/04 22:45:53" color="">}}




{{<matomeQuote body="ユーザーが手動でショートカットを作るのは、権限プロンプトが必要なことじゃないだろ。<br>ユーザーにセキュリティプロンプトを無視することを教えたいなら、全く無意味な警告を出すのが一番だ。" userName="GeekyBear" createdAt="2025/06/05 02:20:20" color="">}}




{{<matomeQuote body="HN（ソフトウェアやセキュリティへの関心が平均よりはるかに高い読者層）で高く評価されてるコメントが、こういうことを間違えるってことは、なぜこれらの問題がいつまでも解決しないのか、ちょっと説明がついちゃうな。" userName="formerly_proven" createdAt="2025/06/05 11:10:47" color="">}}




{{<matomeQuote body="アプリからの権限プロンプトは、自分でそのアプリを意識的にダウンロードしたし、開発者やアプリが何をするか大体分かってるから受け入れやすいんだ。ソーシャルメディアアプリが写真への許可を求めても、音楽ストリーマーがスマートスピーカーに接続したいって言っても、その理由は簡単に理解できる。<br>でも、誰かがリンクしてきた見知らぬウェブサイトが、ローカルネットワークにアクセスしたいって？それは全然違うケースだね。ネットワークとか位置情報とかカメラとか、とにかくどんな種類のアクセスも、超極端な状況じゃない限りウェブサイトには絶対許可しないよ。" userName="paxys" createdAt="2025/06/04 22:19:25" color="#785bff">}}




{{<matomeQuote body="彼に完全に同意だ。お前の仕事のどこが難しくなろうが、プライバシーを不必要に侵害しないと動かないソフトが壊れようが、そんなの知ったこっちゃないね。インターネットが6ヶ月止まるって言われたって、俺は気にしないだろう。<br>ほとんどのユーザーを納得させるには、これが起こるべきではないという本当に強力な防御理由を考え出す必要があるだろうね。" userName="kulahan" createdAt="2025/06/04 19:52:58" color="#45d325">}}




{{<matomeQuote body="ユーザーセッション中に実行されるプログラムは、しばしばそのユーザーとして動いているんだよ。<br>これに対する「正しい答え」は、おそらく良い答えなんてない、ってことだろうな。<br>セキュリティはマジで地雷原だ。しかも日々悪化してるし。" userName="esseph" createdAt="2025/06/06 14:48:20" color="">}}




{{<matomeQuote body="AppleとかMicrosoftとかGoogleとかさ、USBやBluetoothにもローカルネットワークみたいに制限つけてほしいな。<br>最近アプリ入れるとすぐBluetoothのスキャン許可求めてくるけど、全部見られたくないんだよ。<br>アプリ側が使いたい特定のデバイスID（短いリスト）を事前に宣言して、OSがそのデバイスだけ接続できるように制限してほしい。<br>例えばBoseアプリはBoseデバイスだけとかね。<br>OSがカメラやGPSみたいに「このアプリがデバイスABCに接続したいんだけど？」って聞いてくれるのがいいな。<br>そのデバイスIDは会社が登録したプレフィックスで識別する感じ。<br>これでアプリが勝手にネットワークとかUSB、Bluetoothをブラブラできなくなる。" userName="socalgal2" createdAt="2025/06/05 01:23:49" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Appleがアプリに「偽の許可」を出す機能、いつか実現しないかなって密かに期待してるんだ。<br>「連絡先リストがないとダメ」っていうアプリには、ランダムな偽リストを渡すとかね。GPSも同じ。<br>WhatsAppは連絡先をFacebookに共有しないと、連絡先に名前をつけられないって聞いたことあるよ。" userName="3eb7988a1663" createdAt="2025/06/05 03:18:28" color="#ff5c5c">}}




{{<matomeQuote body="うん、俺もそうしてほしいよ。<br>俺の銀行アプリ、連絡先へのアクセスとか変な許可を求めてくるから使えないんだ。<br>なんで必要かわからないから拒否すると、アプリが動いてくれないんだよね。" userName="ordu" createdAt="2025/06/06 07:09:26" color="">}}




{{<matomeQuote body="iOSでは、アプリが連絡先の共有を強制するのは許されてないんだぜ。<br>もしそんな要求してくるアプリがあったら、それはApp Storeの規約違反だから報告した方がいいよ。" userName="quickthrowman" createdAt="2025/06/05 16:44:38" color="#ff5733">}}




{{<matomeQuote body="iOSではね、連絡先の一部だけ共有できる機能があるんだ。<br>これならWhatsAppでも、コメント3で話してたみたいにうまく使えると思うな。" userName="nothrabannosir" createdAt="2025/06/05 03:54:48" color="">}}




{{<matomeQuote body="＞iOSでは連絡先の一部だけ共有できる<br>問題は、アプリがそれを尊重するかどうかだよ。<br>WhatsAppは色々言われるけど、ちゃんと尊重するんだ。<br>「プライバシー」重視って言われてるTelegramはダメだったね。<br>連絡先全部共有しないと動かなくて、一部だけ共有したら「全部共有しろ」って文句言いっぱなしだった。" userName="shantnutiwari" createdAt="2025/06/05 08:46:30" color="#ff33a1">}}




{{<matomeQuote body="それ、iOS版のTelegramだけじゃない？<br>Android版のTelegramは、連絡先へのアクセス拒否してもちゃんと動くし、アプリ内で完全に独立した連絡先リストを持てるんだ（PC版とか他の端末とも共有されるけど）。<br>スマホよりTelegram使い始めた方が古いんだけど、アプリ独自のリストがあって当然だと思ってる。<br>で、WhatsAppは連絡先へのアクセスなしじゃ使えないんだよね。<br>独自のWhatsApp専用連絡先は作らせてくれないし、許可しないと連絡先を保存するところがないって文句言う。<br>正直、俺はコミュニケーション手段ごとに連絡先リストが分かれてるのが好きで、電話アプリとGMailの連絡先が共有されるのだって嫌なんだ。<br>Telegramはその点いいんだけど、WhatsAppはダメだな。" userName="blacklion" createdAt="2025/06/05 10:14:44" color="#38d3d3">}}




{{<matomeQuote body="俺はね、iOSのTelegramで連絡先もカメラもマイクも、一度もアクセス許可したことないけど、全然普通に使えてるけどな。" userName="kayodelycaon" createdAt="2025/06/05 18:39:02" color="">}}




{{<matomeQuote body="コメント7で言ってたTelegramの挙動、あれバグだったっぽいね。<br>連絡先アクセスを全部許可しないとアプリが完全に壊れてたけど、一部だけ許可したら（うっとうしい通知は出たけど）ちゃんと動いたよ。" userName="HnUser12" createdAt="2025/06/05 11:29:59" color="#38d3d3">}}




{{<matomeQuote body="Telegramが一部の連絡先しかアクセス許可されてないってどうやって知るの？<br>iOSはそんな情報アプリに漏らしちゃダメでしょ。" userName="pabs3" createdAt="2025/06/08 09:55:52" color="">}}




{{<matomeQuote body="普通iOSはApp Storeの審査でこういうの対応するのに、Telegramがこれで通ったの驚きだよ。<br>「全連絡先アクセスしないと機能使えないようにしちゃダメ」みたいなルールないの？位置情報だとあるのにさ。" userName="nothrabannosir" createdAt="2025/06/05 10:37:29" color="#ff33a1">}}




{{<matomeQuote body="WhatsAppは電話番号必要だけど、共有する連絡先は選べても項目は選べない。<br>家族を共有すると電話番号だけじゃなく誕生日とか全部行っちゃうんだよ。<br>この機能って実装の仕方的に全然意味ないと思う。<br>あと、部分許可って分かってるからって、ずっとフル許可を求めてくるのもマジうざいんだよね。" userName="WhyNotHugo" createdAt="2025/06/05 09:41:50" color="#ff5733">}}




{{<matomeQuote body="カメラについても、ランダムなノイズとかユーザーが選んだ画像・動画をアプリにあげちゃえばいいじゃん。" userName="yonatan8070" createdAt="2025/06/06 08:16:19" color="">}}




{{<matomeQuote body="GrapheneOSにはこの機能があるよ（GPS偽装は除くけど）。" userName="baobun" createdAt="2025/06/05 12:56:05" color="#ff5c5c">}}




{{<matomeQuote body="GitHubのサードパーティ連携みたいに、「ABCはあなたのリポジトリ見たいんだけど、どれを共有したい？」って選ばせてくれるといいよね。" userName="totetsu" createdAt="2025/06/05 01:46:25" color="#ff33a1">}}




{{<matomeQuote body="そのGitHubのUIって本当に自分で選べるの？<br>俺の経験だと、どの組織とリポジトリが共有されるか教えてくれるだけで、選ぶオプションはなかったんだけどな。" userName="kuschku" createdAt="2025/06/05 12:21:30" color="">}}




{{<matomeQuote body="最近入れるアプリが全部Bluetoothアクセス求めてくるって？<br>それはAppleとかGoogleのひどいBLE APIのせいだよ。<br>RSSI（距離の代わりによく使われる、マジでダメなやつ）を取るには「全部許可！」ってしないといけないんだ。<br>みんな欲しいのは「時間差」なんだけど、なぜか全然サポートされてないんだよね。" userName="bsder" createdAt="2025/06/05 22:06:08" color="#ff33a1">}}




{{<matomeQuote body="Safariはこの（フィンガープリンティングの）理由でWeb MIDIをサポートしてないらしいんだけど、そのせいでどんなMIDIウェブアプリも使えなくなってて困るんだよね。" userName="rjh29" createdAt="2025/06/05 10:29:38" color="#ff5c5c">}}




{{<matomeQuote body="ウェブアプリ、モバイルアプリ、デスクトップアプリ、それともブラウザ拡張機能？<br>どれについて話してるの？" userName="Thorrez" createdAt="2025/06/05 13:17:41" color="">}}




{{<matomeQuote body="WebアプリはUSBとかBluetoothで許可が必要だと思うけど、WindowsやLinuxのデスクトップアプリは基本的に何でもできるよね。ファイル読んだり。パーミッションシステムで制限かけるのは大変な変更だろうな。" userName="Thorrez" createdAt="2025/06/06 14:54:12" color="">}}




{{<matomeQuote body="AppleはiOS 18でAccessorySetupKitっていうので、もうこれやってるらしいよ。" userName="_bent" createdAt="2025/06/05 16:32:30" color="">}}




{{<matomeQuote body="Webブラウザでローカルネットワークにアクセスし放題なのが信じられないよ。ファイルシステムへのアクセスはダメなのにね。セキュリティがサーバー任せなのが問題。開発マシンでテスト中の認証なしのWebアプリに、FacebookとかGoogleからアクセスされる可能性もあるし、ホームネットワークでCORSちゃんと設定してる人なんてほぼいないでしょ？" userName="paxys" createdAt="2025/06/04 21:35:40" color="#ff5733">}}




{{<matomeQuote body="CS専攻してたのに、アクセスしたWebサイトがローカルネットワークにアクセスできるなんて全然知らなかったよ。マジか…。記事の提案以外に、このアクセスを制限する方法って何かあるのかな？" userName="3abiton" createdAt="2025/06/05 17:59:39" color="">}}




{{<matomeQuote body="ブラウザ自体には、まだそういう機能はないんだよね。一番いいのは、OSの設定でブラウザ全体がローカルネットワークにアクセスできないようにしちゃうことかな。（ローカル用には別のブラウザを使うとか。）サンドボックス化の方法とか、ChatGPTに聞いてみるのもいいかもね。" userName="bmacho" createdAt="2025/06/07 11:16:21" color="#ff33a1">}}




{{<matomeQuote body="ありがとう！VM向けにiptablesでローカルネットワークへのアクセスを拒否する設定は既にやってるんだ。今度はローカルアクセスにも同じ方法を使ってみようかな。" userName="3abiton" createdAt="2025/06/08 01:52:30" color="#45d325">}}




{{<matomeQuote body="さらに驚きなのは、誰もこの問題を学ばないで、同じ構造的弱点を持つ新しいプロトコルが作られ続けてることだよね。MCP agentsのことなんだけど、もし知らなかったら調べてみて。" userName="Too" createdAt="2025/06/05 18:32:14" color="">}}




{{<matomeQuote body="「みんなCORSちゃんと設定してるの？」って話だけど、たぶん0.1%より0%に近いと思うな。ほとんど誰もやってないんじゃない？" userName="thaumasiotes" createdAt="2025/06/05 05:24:47" color="">}}




{{<matomeQuote body="ローカルのサーバーが Access-Control-Allow-Origin: * を返さないと、この問題って起きないんじゃない？デフォルトでこれをやってる一般的なローカルWebサーバーとかサービスってあるの？心配じゃないわけじゃないけど、ちょっと気になった。" userName="reassess_blind" createdAt="2025/06/05 08:34:25" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、簡単なリクエスト、例えばGETとかtext/plainのPOSTリクエストはCORSのプリフライトは起こさないんだよ。リクエストはそのまま飛んじゃって、必要なCORSレスポンスヘッダーがないとブラウザがJSコードにレスポンスを見せないだけ。でもその頃にはもうリクエストは送信済みなんだよね。だから、もし君のローカルサービスにhttp://localhost:8080/launch_rocketsみたいなGETエンドポイントがあったり、Content-Typeをちゃんと検証しないPOSTエンドポイントがあったりしたら、どんなウェブサイトからでもトリガーできちゃうんだよ。[1] https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/COR..." userName="meindnoch" createdAt="2025/06/05 10:05:34" color="#ff5c5c">}}




{{<matomeQuote body="僕はレスポンスのデータ抜き出しのこと考えてたんだけど、まあ、確かにその/launch_rocketsエンドポイントは何か認証の裏に置いた方がいいね。" userName="reassess_blind" createdAt="2025/06/05 10:17:26" color="">}}




{{<matomeQuote body="Internet Explorerがゾーンシステムでこれ解決してたよね？<br>https://learn.microsoft.com/en-us/previous-versions/troubles..." userName="pacifika" createdAt="2025/06/04 19:31:20" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="皮肉にも、ChromeはWindows上でIEのセキュリティゾーンを部分的にサポートして利用してたんだよ、あんまりドキュメント化されてなかったけどね。" userName="donnachangstein" createdAt="2025/06/04 19:34:59" color="">}}




{{<matomeQuote body="正直、今もそれに匹敵する機能があると思ってたんだ。それが無いなんてあり得ない。ローカルネットワークはカメラとかマイクみたいに特別な許可がいるべきだよね。" userName="nailer" createdAt="2025/06/04 22:51:18" color="#ff33a1">}}




{{<matomeQuote body="とはいえ、あれはたいていIntranet上のActiveXコントロールにローカルマシンへの自由なアクセスを与えるためにIT部門がグループポリシーで設定してたんだよね。楽しい日々だったよ。" userName="bux93" createdAt="2025/06/05 09:56:24" color="">}}




{{<matomeQuote body="これは多分、Metaがネイティブアプリとウェブサイト間でローカルホスト経由でコソコソ識別コードを共有するのを防ぐのに役立つだろうね、特にAndroidだと。<br>[0] https://www.theregister.com/2025/06/03/meta_pauses_android_t..." userName="sroussey" createdAt="2025/06/04 18:56:34" color="#785bff">}}




{{<matomeQuote body="これはローカル接続をする必要のない多くのウェブサイトをブロックする役には立つけど、まだまだ大雑把だね。この許可が必要なほとんどのウェブサイトは、たった一つのローカルサーバーにアクセスできればいいんだ。全部に許可を与えちゃうのは最小権限の原則に違反する。ほとんどのユーザーは自分のローカルネットワークで何が動いてるか知らないから、リスクも理解できないだろうしね。" userName="skybrian" createdAt="2025/06/04 20:09:35" color="#785bff">}}




{{<matomeQuote body="ユーザーはローカルネットワークのこと知らないから、リスクもわかんないんだよ。<br>ブラウザの許可メッセージも専門用語ばっかりだと「Yes」って押しちゃうだけ。<br>もっとわかりやすいメッセージがいいよね。" userName="paxys" createdAt="2025/06/04 21:25:44" color="#ff5c5c">}}




{{<matomeQuote body="結局、攻撃者がうまく誘導すれば、どんなメッセージでもユーザーは「Yes」ってクリックしちゃうんだよね。<br>フィッシング詐欺みたいに、「大事な確認だから『Yes』を押して」って言われたら、意味わかんなくても押しちゃうでしょ。" userName="xp84" createdAt="2025/06/04 21:28:52" color="#ff5733">}}




{{<matomeQuote body="結局、どこまで人を守れるかっていうと限界があるよ。<br>自己責任な部分も必要。<br>Google（多分ブラウザのこと）が全部決めちゃうような世界には住みたくないな。" userName="kevincox" createdAt="2025/06/05 13:15:07" color="#ff33a1">}}




{{<matomeQuote body="理想を言えば、ブラウザがmDNSでローカルのサービスを見つけて、許可する時にその名前を表示できればいいんだけどね。<br>でも、現実にはmDNSのサービスなんてあんまり動いてないんだよね。" userName="derefr" createdAt="2025/06/04 21:54:36" color="#ff5c5c">}}




{{<matomeQuote body="え、みんなmDNSとか切ってないの？<br>OS入れるたびに、よくわかんないからオフにしてたんだけど。<br>Avahiとかは違う話なのかな？" userName="mixmastamyk" createdAt="2025/06/05 16:09:48" color="">}}




{{<matomeQuote body="Avahiっていうのは、mDNSとかDNS-SDとかを扱うZeroconfっていうネットワーク技術のことだよ。" userName="kayodelycaon" createdAt="2025/06/05 18:44:00" color="">}}




{{<matomeQuote body="「ローカルネットワーク上のリソース」ってメッセージでも、ユーザーは結局意味わかんないで適当に「許可」しちゃうと思うな。<br>さっきのコメントと同じだけど。" userName="cpburns2009" createdAt="2025/06/06 12:57:35" color="">}}




{{<matomeQuote body="スマホだったら、「このサイトから、このアプリに繋いでもいい？」みたいに聞くのがいいかも。<br>でも、ローカルネットワーク全体に対してやるのは難しいけどね。" userName="skybrian" createdAt="2025/06/05 03:05:23" color="#38d3d3">}}




{{<matomeQuote body="完璧にやるならファイアウォールみたいなもんだよね。<br>どのネットワーク範囲とか、どのポートとかで制御する。<br>ブラウザ拡張機能でそういうの作れるAPIがあればいいな。<br>特定の機器とか、LAN全体とか、カテゴリ別に許可したり、localhostだけ許可したり。" userName="nine_k" createdAt="2025/06/04 20:47:24" color="#45d325">}}




{{<matomeQuote body="ファイアウォールみたいなAPI、 Manifest V2にはあったんだけどね。<br>ChromeはManifest V3で削除しちゃったんだよ。<br>Firefoxにはまだあるよ。詳しくはここ見て→ https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/Web..." userName="kuschku" createdAt="2025/06/05 12:25:02" color="#ff5c5c">}}




{{<matomeQuote body="IPv6でサイトローカルかどうかって判定できるの？<br>難しいよね。<br>IoTアプリで困ったことあるんだけど、実際無理そう。<br>.localドメインもOSでバラバラだし、ローカルアドレスでHTTPS証明書使えないの、マジでイライラするんだよね。" userName="rerdavies" createdAt="2025/06/04 22:28:46" color="#ff5c5c">}}




{{<matomeQuote body="HTTPSはドメイン名でIPは関係ないよ。<br>自分のドメインならローカルIPに向けられるしね。<br>NATのせいでRFC 1918＝ローカルって勘違いしてる人多すぎ。<br>昔は公開IPでも自分にとってローカルだったんだ。<br>ルーター経由せず通信できればローカルなんだよ。" userName="globular-toast" createdAt="2025/06/05 20:37:30" color="#785bff">}}




{{<matomeQuote body="IPv6にもルーティング概念はあるよ。<br>リンクローカルはLAN用でAPIPAみたいなものね。<br>.localはDNSの話でIPとは関係ないよ。<br>Let’s EncryptとかでローカルIP向け証明書取るならDNS-01とかCNAME調べてみて。<br>ちょっと大変だけどね。<br>君、IPv4、IPv6、DNSとか、ちょっと分かってないみたいだから勉強しなよ。" userName="gerdesj" createdAt="2025/06/05 00:07:21" color="#45d325">}}




{{<matomeQuote body="IPv6でインバウンドが「ローカル」か判定？無理だよ。<br>IPv6はグローバルにルーティング可能が前提だから。<br>Googleの提案も完全にズレてる。<br>アプリは「ローカル限定」と思わず、公開前提でセキュリティ設計すべきだよ。<br>.localはmDNS用に予約されてるけど、みんな無視してるね。" userName="donnachangstein" createdAt="2025/06/04 22:51:35" color="#ff5c5c">}}




{{<matomeQuote body="Globally routableでも、間にファイアウォール置いてフィルタリングできるよ。<br>WANインターフェースとかで全部落とすこともできるしね。<br>SOHOルーターはNATとルーティングとファイアウォールをまとめてるけど、機能は別物だよ。" userName="donnachangstein" createdAt="2025/06/04 23:06:52" color="">}}




{{<matomeQuote body="うちのSOHOルーターは、IPv4はNAT、IPv6はルーティング＋ファイアウォールだけど、IPv6のファイアウォール設定は全くできないんだ。<br>できたとしても、家のIPv6アドレスは一時的で短命だから大変だろうね。" userName="rerdavies" createdAt="2025/06/05 05:10:32" color="">}}




{{<matomeQuote body="IPv6アドレスも永続的にできるんだ。<br>短命である必要はないよ。<br>MACアドレスでデバイスを識別して、アドレスが変わってもそれに紐付けてファイアウォールルールを設定できるホームファイアウォールもたくさんあるんだ。" userName="vel0city" createdAt="2025/06/05 15:31:30" color="">}}




{{<matomeQuote body="IPv6アドレスってGUIDみたいで覚えにくいよね。<br>ランダムな文字列みたい。<br>IPv4は電話番号みたいでルールがなんとなく分かるんだけどね。<br>IPv6の設定とか分かりやすい入門書あるのかな？<br>あと、デバイスがアドレスを複数持つことが多いから管理が大変なんだ。" userName="mixmastamyk" createdAt="2025/06/05 16:29:38" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
