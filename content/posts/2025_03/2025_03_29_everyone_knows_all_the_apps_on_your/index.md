+++
date = '2025-03-29T00:00:00'
months = '2025/03'
draft = false
title = 'マジかよ！スマホに入ってるアプリ、全部筒抜けってマジ！？'
tags = ["Android", "プライバシー", "セキュリティ", "アプリ", "情報漏洩"]
featureimage = 'thumbnails/blue.jpg'
+++

> マジかよ！スマホに入ってるアプリ、全部筒抜けってマジ！？

引用元：[https://news.ycombinator.com/item?id=43518866](https://news.ycombinator.com/item?id=43518866)

{{<matomeQuote body="ACTION_MAINの抜け穴については以前にも書かれてるよ。https://commonsware.com/blog/2020/04/05/android-r-package-vi...　Googleはこれを修正する気がないみたい。Android VDPに権限バイパスとして提出したらどうなるかな？作者によるバイパスに関するSOの質問もあるよ。https://stackoverflow.com/q/79527331" userName="captn3m0" createdAt="2025-03-30T02:37:34" color="">}}

{{<matomeQuote body="ACTION_MAINの抜け穴は、宣言するアプリにランチャーになることを義務付ければ最終的には修正できるかもね。正当な連携には、もっと具体的なintentが必要だと思う。もし変なゲームがデフォルトランチャーになるか聞かれたら、ユーザーは警戒して報告するか、間違って選択してホーム画面が壊れてPlay Storeで報告されると思う。ランチャークラスのアプリとして公開するには、自動テストとか面倒な要件も増えるはず。" userName="fluidcruft" createdAt="2025-03-30T15:49:27" color="#38d3d3">}}

{{<matomeQuote body="それはいいね。" userName="robertlagrant" createdAt="2025-03-31T14:31:50" color="">}}

{{<matomeQuote body="＞Googleはこれを修正する気がないんだね。<br>だからXPL-Extended（と以前のXPrivacyLua）みたいなプロジェクトが絶対に必要なんだ。これなしでAndroidスマホは使えない。" userName="3abiton" createdAt="2025-03-30T04:13:33" color="#ff5c5c">}}

{{<matomeQuote body="＞情報セキュリティのコミュニティが常に失敗するのは、自分とは違うニーズや優先順位を持つ人、時間がない人や技術力がない人も、プライバシーとセキュリティに値するってこと。<br>https://hachyderm.io/@evacide/114184706291051769" userName="rollcat" createdAt="2025-03-30T15:27:52" color="#785bff">}}

{{<matomeQuote body="XPrivactLuaや他のXposedMod/Magisk拡張機能はアプリのサンドボックスをぶっ壊すから、usereng/engビルド（テストデバイス）での実行を制限した方がいいよ。prodビルド（ユーザーデバイス）では、Work Profiles（GrapheneOSは最大31個まで並行してサポート）かPrivate Spaces（Android 15以降）を使って、アプリ同士を完全に隔離するのがおすすめ。" userName="ignoramous" createdAt="2025-03-30T08:21:23" color="">}}

{{<matomeQuote body="アプリのサンドボックスの受益者は誰？ユーザー？それとも企業？ユーザーなら、悪意のあるプロセスがアプリを改ざんできないから。企業なら、ユーザーがアプリを改造できないようにして、純粋な消費者にするから。技術に詳しい人にとっては後者の方が正確だと思うし、サンドボックスをぶっ壊してプロセスをいじるのは非常に重要だと思う。広告ブロッカーを注入したり、自動化したり、外観を変更したり。ユーザーにはそうする権利があるべき。" userName="v1ne" createdAt="2025-03-30T11:06:29" color="#38d3d3">}}

{{<matomeQuote body="私はユーザーだよ。<br>悪意のあるアプリは審査をすり抜けてくるし、安全じゃないコンテンツを処理しないといけない正直なアプリもある。脆弱性があってもアプリだけに影響するように、スマホの全部が危険に晒されないようにしないと。強力なサンドボックス、メモリと実行保護が安全な方法だよ。サンドボックスを破壊することが、消費者の権利とどう関係あるの？Lucky Patcherみたいにパッチを当ててリパックできるじゃん。" userName="subscribed" createdAt="2025-03-30T11:53:42" color="#ff33a1">}}

{{<matomeQuote body="＞技術に詳しい人がAndroidを改造したいなら、Pixelみたいにブートローダーのロック解除と再ロックをサポートするAndroidデバイスを買って、CalyxOS/GrapheneOS usereng/engビルドを焼くべき。" userName="ignoramous" createdAt="2025-03-30T14:10:38" color="#38d3d3">}}

{{<matomeQuote body="Googleが作った流れは、modderにとってすごく敵対的になってる。セキュリティと利便性のトレードオフになってるんだよね。昔のAndroidはそうじゃなかったのに。CyanogenModの機能がPure Androidを超えてた時代が懐かしい。GAppsの制限からPlay Integrityまで、自分の好みに合わせたAndroid OSを作って、銀行や決済アプリを使うのがほぼ不可能になった。Googleのせいで2台持ちだよ。" userName="3abiton" createdAt="2025-04-01T23:30:58" color="">}}

{{<matomeQuote body="ContactsとかStorageみたいに、App List Scopesが待ち遠しいね。マジで早くしてほしい。イギリスの銀行は、いくつか口座持ってるところ全部、アプリのリストを本部に送ってるんだって。Revolutが起動しなくなった時に気づいた。NatwestとNationwideはデータ収集の前に教えてくれるけど、気にしてないみたい。結局、バンキングアプリは専用のプロファイルに閉じ込めることになったけど、もっと閉じ込めたいわ。" userName="subscribed" createdAt="2025-03-30T11:49:23" color="#45d325">}}

{{<matomeQuote body="NatWestのこと言ってるね。NoRoot FirewallでNatWestがFacebookと頻繁に通信してるのを見たことあるよ(Android)。もちろんFacebookとInstagramのIP範囲は全部ブロックしてるけどさ。なんで銀行がFacebookにアプリを起動したことを伝える必要があるんだよ？！ありえない！これがiOSを使わない理由。ファイアウォールがないし(batterygateスキャンダルもあったし)。" userName="HenryBemis" createdAt="2025-03-30T14:34:44" color="#ff5733">}}

{{<matomeQuote body="Android 14だけど、F-DroidのInsularかPlay StoreのIslandってアプリに満足してるよ。アプリのインスタンスを好きなだけインストールできて、Work Profileに表示されるから、他のインスタンスの存在を知らないんだ。" userName="saturnite" createdAt="2025-03-30T13:19:38" color="#38d3d3">}}

{{<matomeQuote body="Work Profile機能のフロントエンドだね。<br>今はもうInsularを使うのは推奨されてないよ。A14ならShelterを使って。" userName="1oooqooq" createdAt="2025-03-30T16:19:06" color="">}}

{{<matomeQuote body="root化のセキュリティリスクについて、すごく参考になる説明を見つけたよ。<br>https://madaidans-insecurities.github.io/android.html<br><br>サンドボックスについても説明してくれてる。" userName="schnatterer" createdAt="2025-03-30T13:11:12" color="">}}

{{<matomeQuote body="そのリンク、なんか意図があるみたい。説明が雑すぎる(例えば、root化したスマホが本質的にセキュリティ境界を壊してるのか、それとも[Linuxみたいに]実装にバグがなければ安全なのかを全く区別してない)。自分のデバイスの主権を求めるユーザーに、崖から飛び降りろって言ってるみたい。" userName="dataflow" createdAt="2025-03-30T17:42:18" color="#38d3d3">}}

{{<matomeQuote body="dataflowが言ってるように、あのサイトは意図があるよね。Android v4からずっとroot化してるけど、問題ないよ。むしろ、スマホから削除したクソアプリのせいで攻撃リスクが減って、root化のリスクをある程度相殺してると思う。<br>もちろん、みんなにroot化を勧めてるわけじゃない。最近は、テック系の友達にも勧めなくなったよ(相談されたら別だけど)。<br>root化してる人は、スマホを完全にコントロールできるって知ってるよね。例えば、トラッカーがたくさん入ってるけど、他に選択肢がないアプリとか。root化すれば、開発者の思うがままじゃなくて、自分のやりたいように使えるんだ。<br>root化にはリスクもあるけど、メリットの方が大きい。" userName="hilbert42" createdAt="2025-03-31T03:32:36" color="#785bff">}}

{{<matomeQuote body="Madaidanの記事は“セキュリティ至上主義”で有名で、ユーザーの自由を犠牲にしてることが多い。プライバシーを考えると現実的じゃないよね。デバイスを“改ざん”から守るだけのセキュリティに何の意味があるの？もちろん、セキュリティが高い方が良いけど、まずはスパイ行為をやめてほしい。完璧なセキュリティがあれば、Googleだけが全てのデータにアクセスできて、Googleだけがデータ収集を止められるってこと。" userName="max-privatevoid" createdAt="2025-03-30T18:52:05" color="#ff5c5c">}}

{{<matomeQuote body="rootアクセスの危険性について、もう一つ見つけたことを追加したい。<br>＞The term [rooting] generally also includes the functionality for making runtime code patches (eg. with Zygisk) and making runtime filesystem modifications (eg. Magisk modules).<br>＞Out of the many root-enabled apps I've studied or reverse engineered, the vast majority fail to handle arbitrary inputs properly (especially filenames). For example, some root-supporting file managers turn a seemingly benign action like listing a directory into local privilege escalation. This is trivially exploitable, especially with browsers auto-downloading files with server-provided filenames to /sdcard/Download/.<br>＞To avoid repeated root access UI prompts, some apps spawn a long-running shell session, write commands to stdin, and rely on parsing stdout and searching for the shell prompt to determine when commands complete. This approach is prone to desync, which can lead to commands being skipped or other inputs being interpreted as commands.<br>＞All in all, I simply do not trust most root-enabled apps to not leave a gaping security hole, so I avoid them entirely. There are apps that do handle root access in what I would consider a more proper way, by spawning a daemon as root and then talking to the daemon over a well defined binary protocol. Unfortunately, this approach is the extreme minority。<br>要するにroot化アプリは信用ならないってことだね。" userName="schnatterer" createdAt="2025-03-31T19:18:07" color="#45d325">}}

{{<matomeQuote body="root権限好きな人として言いたいのは、GrapheneOSとかCalyxOSみたいなディストリとか、VPN経由のrootなしフィルタリングも選択肢としてあるってことだよね。バックアップさえあれば、rootなしでも普段の生活なんとかなるかも。どうしてもって時はroot化して、OTAアップデートでまたroot化解除すればいいし:D<br><br>https://github.com/schnatterer/rooted-graphene/<br>GrapheneOSにはSeedvaultより良いバックアップ機能を提供してほしいな。" userName="schnatterer" createdAt="2025-03-31T19:14:58" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Androidチームによる、もっと最近の(2023年)サンドボックスと隔離の概要はここにあるよ:<br>https://arxiv.org/html/1904.05572v3/<br>(セクション4.3)" userName="ignoramous" createdAt="2025-03-30T14:18:46" color="">}}

{{<matomeQuote body="＞Androidのセキュリティ設計は基本的に、複数パーティ認証モデルに基づいているんだって。つまり、関係者全員が承認した場合にのみアクションが実行されるってこと。<br>＞関係者っていうのは、ユーザー、プラットフォーム、開発者（コンテンツプロデューサーやサービスプロバイダーを暗黙的に表している）のこと。誰か1人でも拒否権を行使できる。<br>これってユーザーにとってアンチじゃない？アプリ開発者が私の決定を拒否できるって明言してるじゃん…" userName="NotPractical" createdAt="2025-03-30T18:15:19" color="#38d3d3">}}

{{<matomeQuote body="責任共有モデルでは、そういう拒否権もアリなんじゃない？エンドユーザー（アプリからしたら泥棒かスパイかサルか、ほんとにデバイスの所有者かなんてわからない）がアクションを承認したからって、OSとアプリが承認する必要はないわけだし。 power userには厳しいのはわかるけど、Androidは全人類の50%が使ってて、“sudo make me a sandwich”レベルのコントロールを求めてる人がどれだけいるかなんて、誰にもわからないでしょ。" userName="ignoramous" createdAt="2025-03-31T13:56:56" color="">}}

{{<matomeQuote body="リンクありがとう。package visibility restrictionの導入以来、抜け穴は既にあって、ほとんどの人がその抜け穴を知ってるみたいだね。<br>＞Googleはこれを修正することを拒否している<br>Googleのエンジニアがこの広く使われている抜け穴を知らないとは思えないけど、修正を拒否したっていうソースはあるの？" userName="nexle" createdAt="2025-03-30T03:09:07" color="#ff33a1">}}

{{<matomeQuote body="その抜け穴は5年前に公開されてから、ずっと修正されてないじゃん。Googleの誰かに、修正を拒否してるって公式文書に書いてもらわないとダメなの？" userName="AznHisoka" createdAt="2025-03-30T03:30:27" color="">}}

{{<matomeQuote body="＞修正を拒否している<br>Googleは、Private SpaceとWork Profileで、(互換性を壊さずに)同じような隔離の問題に対処してるよ:<br>https://source.android.com/docs/security/features/private-sp..." userName="ignoramous" createdAt="2025-03-30T03:57:37" color="">}}

{{<matomeQuote body="セキュリティの問題なら、月例セキュリティパッチでリリースするべきだよね。Private Spaceも根本的な問題を解決してるとは思えない。4つのアプリがあって、互いに知られたくないなら、1つをメインプロファイル、ワークプロファイル、アプリロッカーに入れれば、最後の1つを入れる場所がなくなっちゃう。アプリロッカーの仕組みは、何十個ものサンドボックスには対応できないんだよ。" userName="whs" createdAt="2025-03-30T08:49:23" color="#ff5c5c">}}

{{<matomeQuote body="そういう答えを求めてないのはわかってるんだけど、ユーザープロファイルを使えるよ。標準のAOSP Androidでも複数のユーザーを作れるし、特定のAOSP由来のものなら、通知の転送もできる。Application List Scopesが追加されるまでは（ロードマップにあると思うけど）、ユーザーが連絡先リストの特定の連絡先だけ、ストレージ内の特定のフォルダだけをアプリに嘘をつけるのと同じようにね。" userName="subscribed" createdAt="2025-03-30T11:57:27" color="">}}

{{<matomeQuote body="悪意があるよね。明らかに報告された脆弱性を回避するために、複雑すぎる機能をリリースし続けて、power userを黙らせて、企業のシステム管理者を喜ばせてるんだ。残りの99.9%のユーザーは脆弱性を抱えたまま。広告ネットワークにとっては非常に有利。Androidを維持してる広告ネットワークがそうするのは当然だよね。" userName="1oooqooq" createdAt="2025-03-30T16:22:01" color="#45d325">}}

{{<matomeQuote body="AndroidのVDPに提出するのは良い考えだと思うけど、「意図通り」って言われて終わるかもね。" userName="ErigmolCt" createdAt="2025-03-30T09:56:13" color="">}}

{{<matomeQuote body="理想的なのは（俺的には「意図通り」）、例えば5個のアプリをmanifestでサポートして、開発者がもっと必要ならGoogleに例外申請する（AWSの制限緩和みたいに）。アプリごとに理由を添えて。" userName="gregw2" createdAt="2025-03-30T13:24:55" color="">}}

{{<matomeQuote body="みんな忘れちゃってるかもしれないけど、Androidはもともと相互運用性を念頭に置いて設計されたんだよね。システム開発もコミュニティの意見も、こんなに変わっちゃったのが悲しい。" userName="TeMPOraL" createdAt="2025-03-30T14:13:52" color="">}}

{{<matomeQuote body="「この修正を拒否した」ってどういうこと？Googleは、そのフィルターを要求するアプリの公開を拒否するよ。Playストアのlauncher以外は。" userName="izacus" createdAt="2025-03-30T03:48:20" color="#785bff">}}

{{<matomeQuote body="それって、記事の47個中31個のアプリがこのフィルターを持っていたって主張と矛盾してない？" userName="whatevertrevor" createdAt="2025-03-30T04:29:47" color="#38d3d3">}}

{{<matomeQuote body="「似たような」ってことは、言ってることが本当じゃないってこと？" userName="cAtte_" createdAt="2025-03-30T05:37:42" color="">}}

{{<matomeQuote body="筆者は、このハックが広く使われていて、PlayストアのSnapchatやFacebookなどのアプリにも含まれているって言ってるね。" userName="jim201" createdAt="2025-03-30T04:11:50" color="">}}

{{<matomeQuote body="HSBC銀行のアプリがこれを使ってて、Playストアにあるよ。" userName="Mindwipe" createdAt="2025-03-30T10:33:44" color="#ff5733">}}

{{<matomeQuote body="どうしてもネイティブの「アプリ」が必要な理由がマジでわからん。いまだに、ウェブサイト/ウェブアプリで済むアプリしか見たことないわ。むしろウェブアプリの方が良くなる場合が多いと思う。<br>アプリのメリットは、開発者がいらない個人情報にアクセスできることくらい。<br>あと「App Store」に出せること。でも「App Store」なんてApple/Googleが売上の分け前をかすめ取るための不必要なコンセプトじゃん。<br>ウェブブラウザはサンドボックスも優秀だし（完璧じゃないけど）、審査料もかからないし、誰でもアクセスできる。" userName="turblety" createdAt="2025-03-30T05:53:28" color="#ff5733">}}

{{<matomeQuote body="シンプルで使いやすいUXってことだね。実際、スマホのwebappってマジでイマイチなの多いじゃん？ネイティブアプリと比べるとUXが全然違うんだよね。テキスト選択させないでほしいし、毎回pull to refreshとかマジ勘弁。あと、左スワイプで前のページに戻るのとかもやめてほしい。回避策はあるんだろうけど、Silk libraryってのが結構ネイティブに近いらしいよ。でも、有料ってのが、やっぱ簡単じゃないってことだよね。" userName="xxprogamerxy" createdAt="2025-03-30T07:35:24" color="#ff5733">}}

{{<matomeQuote body="＞テキスト選択させないでほしいとか、pull to refreshとか、左スワイプで前のページに戻るとか”マジで意味不明。テキスト選択できないのとか、マジで敵意しか感じない。ただの嫌がらせでしょ？あと、複数ページ開けないのもクソ。まじで作業効率落ちるわ。ネイティブアプリのUXはゴミだけど、ネイティブだからってわけじゃないんだよね。デスクトップアプリは、まだマシなのあるし。モバイルのUXパターンとかUIフレームワークが悪いんだよ。" userName="fauigerzigerk" createdAt="2025-03-30T09:00:04" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="MacOSのネイティブアプリって、基本的にボタンとかのクリックできる要素以外はテキスト選択できるよね。" userName="tshaddox" createdAt="2025-03-30T14:31:06" color="">}}

{{<matomeQuote body="ブラウザアプリにも良いところはあるよ。<br>・テキスト選択できる<br>・拡大縮小できる<br>・広告ブロッカー使える<br>・ソースコード見れる<br><br>ネイティブアプリのメリットは<br>・動作がスムーズ(ナビゲーション、スクロール、アニメーションとか)<br>・パフォーマンスが良い(JavaScriptはネイティブに勝てない)<br>・ハードウェア使える(オーディオ、ビデオとか)。ブラウザじゃできないことたくさんある<br>・ウィジェット便利<br>・アプリのアイコンが目印になるから、サイトよりアプリをプッシュする" userName="mojuba" createdAt="2025-03-30T08:12:35" color="#ff33a1">}}

{{<matomeQuote body="言ってることは、ちゃんと開発されたPWAでもできるよ。もちろん、ウィジェットとか、もっと深いシステム連携(電話のコントロールとか)は無理だけどね。" userName="blacklight" createdAt="2025-03-30T09:17:27" color="#38d3d3">}}

{{<matomeQuote body="ブラウザで本格的な音楽シンセ作ってみたら？バッテリーすぐなくなると思うけど。" userName="mojuba" createdAt="2025-03-30T12:11:24" color="">}}

{{<matomeQuote body="＞ブラウザアプリの利点”って言ってるけど、Webアプリが今のUIに向いてない技術で作られてるからそうなってるだけじゃん？テキストを処理するエンジンが、無理やりUIのレンダリングエンジンやってるみたいなもん。<br><br>つまり<br>・ボタンとかまで全部選択できる<br>・拡大縮小でUX崩壊する。開発者がdisableにするか、ハックする必要がある<br><br>ブログならいいけど、UIには向いてない" userName="divan" createdAt="2025-03-30T13:42:00" color="#ff5733">}}

{{<matomeQuote body="＞テキスト選択できないのは”UXが悪いだけじゃなくて、マジでユーザーに敵対してる。" userName="nodar86" createdAt="2025-03-30T13:22:31" color="">}}

{{<matomeQuote body="UIでテキスト選択したいと思ったことないなー。昔、エラーメッセージをコピーしたかったことはあったけど、選択できなくてもコピーできたし。<br>メニューバーとか、テキストボックスのラベルとか、ダイアログのタイトルとか、間違って選択したくないし。" userName="crazygringo" createdAt="2025-03-30T14:24:21" color="">}}

{{<matomeQuote body="いやいや、具体的な例がないのは弱点だって。てか、人の気持ちを決めつけるなんてマジありえなくない？個人的な話にするならさ。そもそも、なんでメニューのラベルを選べる必要があるの？そんなの、今まで使ったどのOSにもないじゃん。変えたいなら理由を説明すべきじゃね？HNで人を批判するより、何か役に立つ情報を提供してよ。少なくとも俺は自分の経験を話したし、それもデータの一つじゃん。自分の経験を語るのがエゴなの？" userName="crazygringo" createdAt="2025-03-30T19:15:41" color="">}}

{{<matomeQuote body="例えば、日本に行って日本語のアプリを使うことになったとするじゃん？そしたら、翻訳するためにテキストを選択することすらできなくて超イライラすると思うよ。少なくとも最近のAndroidには、アプリ切り替え画面でテキストを選択できるOCRみたいな機能があるけどね。" userName="nazgul17" createdAt="2025-03-30T21:29:38" color="#ff5c5c">}}

{{<matomeQuote body="一部の機能を無効にできないブラウザを作ってる会社の動機って何なんだろうね？それって、ネイティブアプリの方がずっと優れてるってことじゃん（例えば、Safariのスワイプで戻る機能とか。10万回以上スワイプバックしてるけど、一度も意図的にやったことないし）。" userName="jonplackett" createdAt="2025-03-30T08:49:11" color="">}}

{{<matomeQuote body="＞I have never ever swiped back intentionally in over 100000 swipe backs<br>それマジな質問だけど、スワイプバックするときって、何がしたいの？" userName="rezonant" createdAt="2025-03-30T11:25:00" color="">}}

{{<matomeQuote body="それってマジで奇妙な意見だよね。ノートPCにネイティブアプリがある理由もないって言いたいの？それって、本質的には同じことじゃん。ネイティブアプリにしかできないことってたくさんあるんだよ。例えば、重いビデオやオーディオ編集、大量のRAMの使用、GPUコンピューティングの利用とか。ブラウザじゃ無理でしょ。" userName="jb1991" createdAt="2025-03-30T09:13:40" color="#45d325">}}

{{<matomeQuote body="デスクトップでは生産的な作業をするから、アプリにはネイティブな機能が必要なんだよ。モバイルアプリは主に消費、表示、閲覧がメインで、複雑なインタラクションはないじゃん。" userName="nsonha" createdAt="2025-03-31T16:16:39" color="">}}

{{<matomeQuote body="コンテンツ制作にiPadを使ってる人も多いよ。ちょっと視野が狭いんじゃない？iPhoneで撮影された長編映画もあるし、少なくとも2本はOscar受賞監督が撮ってるんだよ！モバイルブラウザで撮ったんじゃないよ。" userName="jb1991" createdAt="2025-03-31T17:05:42" color="#ff5733">}}

{{<matomeQuote body="＞I still、will never understand the need for native “Apps”。 To this day、I have never seen an “App” that couldn’t simply have been a website/webapp。<br>ネイティブアプリとWebアプリが両方ともiOSで使える場合、バッテリーの消費量や動作の遅さに大きな違いがあることが多いよね。あと、他の人も言ってるように、オフラインで使えるアプリも欲しいし、例えば地図とかメモとか。<br>AppleとGoogleのやり方は好きじゃないけど、Webアプリだけになるのは未来じゃないと思うな。だから、Chromebookの代わりに本物のコンピュータを使うつもり。" userName="setopt" createdAt="2025-03-30T07:20:10" color="#ff33a1">}}

{{<matomeQuote body="＞In cases where a native app and web app are both available on iOS、there’s often a huge difference in battery usage and sluggishness。<br>マジそれな、ネイティブのInstagramがSafariで複数のサイトを見るよりもバッテリー消費が早いみたいな。<br>＞For the same reason I won’t replace my real computer with a Chromebook for the foreseeable future。<br>＞real computer<br>最近のアプリって、WebラッパーかElectronアプリばっかじゃん。" userName="wiseowise" createdAt="2025-03-30T08:12:21" color="">}}

{{<matomeQuote body="＞Where most of the modern applications are either web wrappers or Electron apps。<br>Linuxみたいな時代遅れのプラットフォームに固執してるならそうかもね。Macなら、ネイティブアプリの方がWebラッパーよりもずっとパワフルで使いやすいよ。Linuxユーザーは、ブラウザでコンピュータを使うっていう壊れたやり方を他のプラットフォームにも押し付けようとするけど、他のプラットフォームは高品質なソフトウェアに慣れてるんだよね。" userName="carlosjobim" createdAt="2025-03-30T13:20:04" color="">}}

{{<matomeQuote body="良い感じのネイティブMacアプリも減ってきてるよね。" userName="mattl" createdAt="2025-03-30T15:56:03" color="">}}

{{<matomeQuote body="PWAってオフラインでも使えるじゃん。批判する前にちゃんと理解してる？" userName="jampekka" createdAt="2025-03-30T08:12:28" color="">}}

{{<matomeQuote body="言いたいことは一部わかるよ。企業が顧客のショッピングトークン集めたり、カスタマーサービスに連絡取ったりするために出してるアプリは、ウェブサイトの方が絶対良いよね。でもオフラインで動くアプリも欲しいし、自分のデータをコントロールできないサービスに預けたくないんだよね。山とかでOsmand/Organic Mapsみたいなオフライン地図アプリ使いたいし。可能な限り、アプリはオフライン優先で作って、必要な時だけネット使うようにしてほしい。ネット必須なアプリはウェブアプリでいいじゃん。" userName="chme" createdAt="2025-03-30T07:08:53" color="#ff5733">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="マジごめん。全然わかんない。モバイルウェブってマジで使いにくいし、アプリの方が全然良いじゃん。最後にモバイルウェブでフライト予約したのいつ？ブラウザのスペース無駄じゃん？アプリなら認証情報キャッシュしてFaceIDでログインできるのに、毎回ログインとかありえない。" userName="rzz3" createdAt="2025-03-30T07:13:23" color="">}}

{{<matomeQuote body="マジで、ホテルとかフライトの予約はウェブの方が良いって。複数のウィンドウで簡単に料金とか比較できるし。アプリ使う人の気持ちがわかんない。マジでめんどくさい。" userName="wodenokoto" createdAt="2025-03-30T07:34:37" color="">}}

{{<matomeQuote body="デスクトップとスマホを比べてるじゃん。デスクトップなら色々できるけど、スマホで複数タブとかマジ無理。" userName="pasc1878" createdAt="2025-03-30T13:50:24" color="">}}

{{<matomeQuote body="＞Having to log in every time<br>それ、壊れたウェブアプリじゃん。今使ってるHacker Newsは毎回ログインしなくてもいいよ？<br>＞when the app can just cache my authentication and FaceID me<br>それも壊れたログインフォームじゃん。Hacker NewsもパスワードマネージャーのおかげでFace IDでログインできるし。Passkeysも使えるし。" userName="whstl" createdAt="2025-03-30T10:14:58" color="#785bff">}}

{{<matomeQuote body="アプリでしか使えないサービスも増えてるよね。例えばRevolutみたいな金融アプリとか。Androidのエコシステム全体がGoogleに管理されてるのも問題。カスタムAndroid ROMも使えるけど、Play Integrity API使ってるアプリは使えなくなるし。" userName="ulrikrasmussen" createdAt="2025-03-30T06:13:15" color="#ff33a1">}}

{{<matomeQuote body="最悪なのはイギリスのNHSアプリ。ただのwebviewなのにアプリでしか使えないとか意味不明。" userName="IshKebab" createdAt="2025-03-30T07:21:52" color="">}}

{{<matomeQuote body="NHSのウェブページも同じ感じだよ。<br>iOSアプリの方がtouch IDとかfaceIDでログインできて便利。ウェブページはcookie求めるくせに、設定覚えられないみたい。" userName="pasc1878" createdAt="2025-03-30T13:49:07" color="">}}

{{<matomeQuote body="バンコクで地震があった時、Grab（Uberみたいなやつ）のおかげでタクシー呼んで子供たちを家に帰せたんだ。携帯のネットワークはほぼ一日中ダウンしてたけどね。みんな家族や友達の安否を知りたがってるから、Grabは回線が悪い状況でも最適化されてるんだろうね。UDPとかに切り替えてるんじゃないかな。ウェブアプリじゃなくて助かったよ。他の多くのケースでは同意だけどね。" userName="xenator" createdAt="2025-03-30T06:14:00" color="#38d3d3">}}

{{<matomeQuote body="ブラウザで動画アプリってどう作るの？例えば、動画撮って編集するとか。" userName="baxtr" createdAt="2025-03-30T06:41:46" color="">}}

{{<matomeQuote body="ちょっと言い過ぎな部分もあるけど、大体は合ってると思うな。多くのネイティブアプリは、ウェブアプリでも十分作れたはず。iOSでウェブアプリをホーム画面に追加できるけど、分かりにくいし使ってる人も少ないよね。FirefoxがPWAをサポートしてくれないのは謎。" userName="sph" createdAt="2025-03-30T06:57:33" color="#38d3d3">}}

{{<matomeQuote body="CapCutみたいな、スマホのカメラにアクセスして動画をキャプチャできるやつだよ。" userName="baxtr" createdAt="2025-03-30T07:01:25" color="">}}

{{<matomeQuote body="カレンダーとか、メモとか、メールとか、ネットに繋がってなくても使えるアプリって結構あるよね。オンラインになった時に同期してくれればいいし。" userName="halper" createdAt="2025-03-30T06:18:35" color="#ff5c5c">}}

{{<matomeQuote body="ああ、それね。実装がクソな場合が多いけど、ウェブアプリでもservice workers使えばできるよ。ホーム画面にインストールして、ネット接続なしで使えるようにね。" userName="turblety" createdAt="2025-03-30T06:24:49" color="#45d325">}}

{{<matomeQuote body="一番基本的なアプリ、メモ帳ですら、ネイティブの方が好きだな。Google KeepとかNotionからapple notesに移動すると違いがわかる。テキストが長くなると、ウェブアプリはコンテンツを読み込めなくなるんだよね。ブラウザが全てを解決するなんて言わないで。Notepad．exeとかviの代わりになれないウェブアプリが多いんだから。" userName="zer0zzz" createdAt="2025-03-30T05:59:15" color="#38d3d3">}}

{{<matomeQuote body="Hacker Newsが好き。<br>この記事昨日見つけてreddit androidに投稿したんだけど、https://old．reddit．com/r/Android/comments/1jmwg4w/everyone_k…<br>0票で、コメントは落ち込んでる人かボットばっかり。ここでは上位2位だし、面白いコメントが多い。サブレディットにもよるけど、r/androidは最悪。" userName="aucisson_masque" createdAt="2025-03-30T16:01:23" color="#785bff">}}

{{<matomeQuote body="マジレスすると、r/androidとか他のサブレよりも過疎ってる気がするんだよね。reddit全体が死んだインターネット理論に当てはまるかも。あと、特定のテーマのサブレは、そのテーマに利権持ってる人がモデレーターやってて、コミュニティのためになってない気がする。MetaのLlamaのライセンスについて詳しく書いた投稿が、r/LocalLlamaのモデレーターに理由もなく削除されたし。redditの粛清でモデレーターがredditの社員に変わった時、企業に場所を売ったのかもね。" userName="diggan" createdAt="2025-03-30T17:46:26" color="">}}

{{<matomeQuote body="モデレーションはRedditの弱点だよね。任期なしの君主制がウェブサイトでうまくいくなんて、Redditは何考えてるんだろ？ユーザーがモデレーションについてフィードバックできる投票もないし。/r/moviesみたいに映画ポスターにしか興味ないサブレとか、/r/runningみたいに週ごとのスレッド以外はほとんど話題にされないサブレとかあるし。" userName="Mistletoe" createdAt="2025-03-30T18:23:36" color="">}}

{{<matomeQuote body="redditの良いところは、大衆向けのサブレをフォローしなくてもいいところ。メンバーが多いサブレはだいたいひどい。/r/<city_name>runningみたいなニッチなサブレを見つけると、モデレーターはコミュニティのために面白いことをしてくれるし、スラングとかスパムに対処するだけじゃなくて、コミュニティを育ててくれる。" userName="xmprt" createdAt="2025-03-30T19:10:01" color="#38d3d3">}}

{{<matomeQuote body="大きいサブレの意見には賛成だけど、ニッチなサブレもモデレーションの問題があると思う。人気が出ると、モデレーションが気に入らなくても新しいサブレを作るのは難しい。昔、r/lgbtのモデレーターが暴走してr/ainbowができたけど、ほとんどの人はlgbtに行くよね。モデレーターは誰にも縛られてないから、redditがサブレをフォークしやすくすればいいと思う。" userName="hn_throwaway_99" createdAt="2025-03-30T19:31:27" color="">}}

{{<matomeQuote body="＞ Find a more niche subreddit like /r/<city_name>running<br>＞もっとニッチなsubredditを見つけろ、例えば/r/<city_name>runningみたいな<br>アメリカならそうかもね。redditユーザーの半分はアメリカ人みたいだし、runningみたいな一般的な話題ならね。でも、ローカルLLMについて議論できる場所はほとんどないし、モデレーターが議論を邪魔してるなら、どうしようもないよね。" userName="diggan" createdAt="2025-04-01T11:36:29" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
