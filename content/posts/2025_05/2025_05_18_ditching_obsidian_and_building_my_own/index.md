+++
date = '2025-05-18T00:00:00'
months = '2025/05'
draft = false
title = 'もうObsidianは使わない！知識管理ツールをゼロから自作した理由'
tags = ["PKMS", "自作システム", "開発", "ノートアプリ", "Markdown"]
featureimage = 'thumbnails/blue3.jpg'
+++

> もうObsidianは使わない！知識管理ツールをゼロから自作した理由

引用元：[https://news.ycombinator.com/item?id=44022448](https://news.ycombinator.com/item?id=44022448)




{{<matomeQuote body="いい記事だけどObsidianヘビーユーザーとしていくつか反論させてね。20年使えるか？で選ばなかったのは逆じゃない？だって普通のMarkdownだからObsidian消えてもEmacs org modeとかVS Codeとか、マジで何にでも簡単に移行できるよ。<br>あとスマホでノート見たいのに有料ってイラっとしたって話、ちょっと変かなって。PKMS自作できるくらい詳しいのにGitリポジトリに入れてモバイルアプリと同期できるの知らなかったのかな？俺はGitea上のVPSに同期させてるけど結構スムーズだよ。<br>作者さんが楽しかったなら良かったね。俺はObsidianに満足だしプラグインのおかげで拡張も簡単だよ。" userName="vunderba" createdAt="2025/05/18 17:11:19" color="#38d3d3">}}




{{<matomeQuote body="フィードバックありがとう！Git同期は良い方法だよね。でもGithubはちょっとな…。今、自作データベースファイルとMarkdownファイルの同期方法を色々試してるところ。Vimが好きすぎてDirectusのMarkdownエディタ使うのは嫌なんだ。" userName="williamsss" createdAt="2025/05/18 17:35:26" color="">}}




{{<matomeQuote body="技術力ある作者さんがGit同期知らないの変って話だけど、ObsidianってAppleユーザーなら無料でiCloud同期も使えるよ。有料のSyncプランも月4ドルと安くなったしね。10年で1000ドルだって毎日使ってたらそれ以上の価値あるんじゃない？他のサービスより全然安いし。" userName="danieldk" createdAt="2025/05/19 05:51:29" color="">}}




{{<matomeQuote body="熱狂的なObsidianファンだけど「ただのMarkdown」ってのは完全に正しくないよ。プラグインで新しい構文とかJavaScript機能を使いまくると、それはもう独自のカスタム構文になっちゃう。Obsidianとプラグインが無料なのはマジ良いけど、データ衛生と長持ちするかって点では気をつけた方がいいよ。" userName="braden-lk" createdAt="2025/05/18 20:26:14" color="#38d3d3">}}




{{<matomeQuote body="変なのは、なぜ100％（ゼロから）やったの？Obsidianにプラグイン作るだけで良かったんじゃない？なんか極端すぎない？" userName="charlie0" createdAt="2025/05/18 19:22:44" color="">}}




{{<matomeQuote body="20年後にそのプラグイン動くかな？どうかな。" userName="williamsss" createdAt="2025/05/18 19:28:12" color="">}}




{{<matomeQuote body="そうだね、でもフォーマットはテキストのままだよ。”災害”が起きても、a）無視するか、b）それを処理するコードを自分で書く（例えばプラグインをVSCodeか何かに移植する）とかできる。独自形式よりずっと良いよ。" userName="edanm" createdAt="2025/05/18 21:06:49" color="">}}




{{<matomeQuote body="いやいや…この問題は皆が思ってるよりずっと根深いよ。まずObsidianは独自のMarkdown風味を使ってるし、ヘビーな機能の多くはプラグインに強く依存してるんだけど、これらが壊れたり消えたりしやすいんだ。Obsidianのプラグインコミュニティは活発だけど消えるのもマジ早い。Obsidian本体の変更でプラグインが使えなくなるからさらにヤバい。ここ数年でも多くの機能やプラグインがダメになったし、次の20年でどれだけ壊れるか分からないよ。他のテキストエディタに変えるだけじゃダメ、失われた機能は使えないから。データが無事なだけマシ、ってレベルだよ。だから自分で全部コントロールできるシステムをゼロから作るっていうのは、短期的には大変でも長い目で見れば全然理にかなってるんだよ。" userName="PurpleRamen" createdAt="2025/05/19 12:59:00" color="#ff5733">}}




{{<matomeQuote body="もっと簡単な方法として、私はDropboxフォルダに入れてるよ。これが作者さんにとって”最後の決定打”になったっていうのがすごく変に感じたな。でも、代わりに作るっていう経験を楽しんで学べたのは本当に良かったね！" userName="scubbo" createdAt="2025/05/18 22:37:35" color="">}}




{{<matomeQuote body="独自形式でもエクスポート機能があれば、コードを書いて処理しないといけないっていう不便さは同じだよね。" userName="eviks" createdAt="2025/05/18 21:52:24" color="">}}




{{<matomeQuote body="20年前のコードをコンパイルするのだって、めちゃくちゃ大変な「考古学的努力」が必要だよ。<br>その頃にはそれが一番の問題じゃないかな、きっと。" userName="9dev" createdAt="2025/05/18 21:30:33" color="#45d325">}}




{{<matomeQuote body="Syncthing...<br>あれでもできるよ。<br>俺の写真も同期してるしね。" userName="ErrorNoBrain" createdAt="2025/05/19 08:49:29" color="">}}




{{<matomeQuote body="え？？？<br>俺は20年前のプロジェクトを何十個も今コンパイルできるけど。" userName="aidenn0" createdAt="2025/05/19 01:47:47" color="">}}




{{<matomeQuote body="失礼だけど、それはどうかな。<br>20年前のtarballを取り出して、手を加えずに最新のディストロでコンパイルしてみたことある？" userName="adastra22" createdAt="2025/05/19 05:33:26" color="">}}




{{<matomeQuote body="いくつかの理由でその考えは違うと思うよ。<br>1. 外部サービスや定期バックアップに頼る。<br>2. エクスポート形式が独自仕様だとパースが大変かも。<br>3. 全データが含まれてないかも。<br>4. Markdownは標準でパースなしでも読めるけど、他の形式はそうじゃないかも。<br>一部機能を失うくらいなら、全てを失うよりずっといい。" userName="edanm" createdAt="2025/05/19 06:01:26" color="#45d325">}}




{{<matomeQuote body="そういえば、SyncthingのAndroidアプリってわりと最近非推奨になったんじゃなかったっけ？" userName="joseda-hg" createdAt="2025/05/19 12:57:51" color="">}}




{{<matomeQuote body="gitの何が君にとって都合悪いの？<br>サードパーティプロバイダーを使いたくないのは分かったけど、君が今データ預けてるVPSにgitリポジトリ置いて、それをクライアントデバイス間の同期調整に使ったらどう？" userName="e28eta" createdAt="2025/05/18 17:59:12" color="#ff5733">}}




{{<matomeQuote body="1. データもアプリもローカルで何も頼ってない。<br>2. パースの方が簡単かも。代替案を勝手に悪くしないで。<br>3. それは独自形式の特徴じゃないよ。<br>4. Markdownにエクスポートできるかもね。<br>逆に複雑なデータは原始形式じゃ読めないけど。HTMLもMarkdownに変換できるツールあるよ。" userName="eviks" createdAt="2025/05/19 06:42:58" color="#45d325">}}




{{<matomeQuote body="この件についてスレッドにコメントしたよ。<br>PKMSは進化していくと思うし、長期的に見てより良い選択肢だと分かれば、自己ホスト型のGitサーバーも選択肢から外さないよ。" userName="williamsss" createdAt="2025/05/18 18:32:44" color="#38d3d3">}}




{{<matomeQuote body="iCloud同期は信頼性低いし、不透明すぎて俺には無理だな。" userName="memming" createdAt="2025/05/19 06:40:22" color="">}}




{{<matomeQuote body="＞ 1．データはすでにローカルにあるし、アプリもローカルで、何もに依存してないんでしょ．．．それは必ずしも本当じゃないね．アプリによってはデータのキャッシュコピーだけローカルで、残りはクラウドって場合があるし．ローカルファイルがバイナリ形式でエクスポート機能がないと読めないこともあるし、さらに最近のバージョンだとエクスポート機能が削除されてることもあるんだよ．<br>＞ 2．プラグインの機能を全部再現するより、パースする方がはるかに簡単かもしれない．君は代替手段を勝手に悪く言ってるだけだ<br>まあ、これは使うアプリによるのは明らかだよね．<br>でも、Markdownみたいなテキスト形式が他のどんな形式よりもパースしやすいって主張は、説得力があるとは思えないな．<br>＞ 3．それはまた君が勝手に作った話で、代替の独自形式に共通の特徴じゃないだろ<br>勝手に作ったわけじゃないよ．君が話してる代替アプリによるんだ．メタデータ全部含めてフルデータをエクスポートするアプリもあれば、メタデータの一部を含まないアプリとか色々あるでしょ．<br>僕が言いたいのは、もしデータが全部コンピューター上のMarkdownファイルとして存在してるなら、すべてのデータを持ってるかどうかって疑問の余地がないってことなんだ．<br>＞ 4．Markdownにエクスポートすることもあるかもしれない．繰り返すけど、君が人為的な壁を作らない限りね<br>これもまた、特定のアプリによるね．僕はEvernoteを長いこと使ってたし、今もサブスクしてるよ．ちょっと確認したら、”enex”っていう形式か、単一のhtmlページか、pdfにエクスポートできるみたいだ．それは素晴らしいね！そして、これを他のアプリで使えなくなる可能性はほぼゼロだ．だって、みんなEvernoteからのインポートに対応しようとしてるからね．<br>これはEvernoteから得られる追加機能と、手元にある”エクスポート”ファイルのシンプルさのトレードオフだね．Obsidianでは、別個のエクスポートはない．ファイルはシンプルに読めるMarkdownで保存されてる．でも、機能は少ない．<br>トレードオフなんだよ．どっちが優れてるとは言ってない．でも、トレードオフがないふりをするのは、単に間違ってる．<br>＞ でも逆もできるわけで、例えば、セル内書式設定がある大きなテーブルみたいな些細じゃないものは、君の原始的なプレーンテキストベースの独自形式では読めないだろうし、読めないExcel xmlやそのバイナリ形式よりずっとひどいだろうね．でもそれははるかに好ましいエクスポート形式だろうね．なぜなら、君がObsidianプラグインが理解するために使う新しいスプレッドシートパーサーを開発することはないだろうからだ<br>そうだね．スプレッドシートが必要なことはObsidianではやらないだろうね．単にExcelを使うよ．そっちの方が億万倍優れてるから．<br>僕は適切なツールを適切な仕事に使うことに反対じゃないし、一般的な独自形式にも反対じゃないよ．" userName="edanm" createdAt="2025/05/19 08:34:30" color="#785bff">}}




{{<matomeQuote body="Gitは分散型だよ．ラップトップとスマホ間で直接同期できるし、第三者のサーバーは必要ないんだ．" userName="JonChesterfield" createdAt="2025/05/18 18:12:51" color="">}}




{{<matomeQuote body="1．フォーマットに関する議論以来、それは本当だね．オープンなフォーマットのストレージもクラウドに限定できるよ．<br>＞そして、特定のアプリの新しいリリースではエクスポート機能が削除されます．<br>それなら、エクスポート機能が無傷の古いリリースを使えばいいだけだよ．”Obsidianはすべてのローカルファイルを削除/暗号化してクラウドコピーだけを残し、エクスポート機能なしで課金を開始するアプリをリリースできる”みたいなことも勝手に作り話できるだろ．<br>＞でも、Markdownのようなテキスト形式が他のほとんどの形式よりもパースしやすいと、説得力を持って主張できるとは思えません．<br>これはMarkdownじゃなくて、Markdown＋数十の拡張機能だろ．だから、数十の形式に対してカスタムパーサーを書くよりも、それらの拡張機能を必要としない、もっと凝った形式の既存のパーサーを使う方がはるかに難しいと主張するのはとても簡単だよ．<br>＞ファイルは読みやすいMarkdownで保存されています<br>保存されてないよ．使ってる拡張機能によって未定義の形式で保存されてるんだ．その一部がMarkdown（リッチな書式設定されたドキュメントの非原始的なケースでは、読みやすい形式じゃない）だよ．<br>＞別個のエクスポートはありません<br>それは利点じゃない！それは、あなたがObsidianのエコシステムから抜け出せないってことだ．なぜなら、他のアプリで使えるような明確に定義された形式がないから！だから、（実質的には）Evernoteよりもさらに悪い．だって、Evernoteはすでに広くサポートされてるけど、理論的には同じことだ．<br>＞でも、トレードオフがないふりをするのは、単に間違っています．<br>それでも、君はそれを見つけられなかったね．結局、すべては”特定のアプリによる”んだ！まあ、アプリ同士を比較するのはいいけど、一般的な議論は、エコシステムが死んだ場合にデータ損失の可能性がある（または変換に多大な労力がかかる可能性がある）テキストベースの独自形式と、テキストベースの形式にエクスポートできる汎用的な独自形式．．．同じリスクを伴うものについてだったんだよ！" userName="eviks" createdAt="2025/05/19 12:19:55" color="#ff5c5c">}}




{{<matomeQuote body="でも、望めば完全にコントロールできるんだよ．プラグインを変更したり自分で作ったりするのを止めるものは何もない．<br>プラグインはローカルディレクトリにあるからね．改造するのはとても簡単だよ．" userName="SamPatt" createdAt="2025/05/19 13:24:05" color="">}}




{{<matomeQuote body="率直に興味があるんだけど、多くの重い機能がそれらに依存しているって言う時、例えばどんなプラグインのことを言ってるの？<br>dataviewプラグインは例として考えられるけど（僕は個人的には使ってないけど）、他のほとんどのプラグインは、手動でもかなり簡単にできることをより便利な方法でできるようにするだけに見えるんだよね．（例えばTemplatesとか）．" userName="matkv" createdAt="2025/05/19 14:11:16" color="">}}




{{<matomeQuote body="シェルスクリプトは、プラグイン、ファイル同期、マルチプラットフォーム対応、そして多くの動く部品を持つMarkdown編集アプリとは全く違うものだよ．そして、20年前のシェルスクリプトでさえ、かなりひどい結果になるだろうね．<br>2005年で最も一般的なプロセッサーが何だったか覚えてる？Pentium 4か、Celeronだったかもしれないね．64ビットオペレーティングシステムが出始めた頃だ．例えば、2005年のOpenSSLのバージョンを現代のハードウェアでコンパイルさせるのを見てみたいものだよ．．．" userName="9dev" createdAt="2025/05/21 20:32:05" color="#785bff">}}




{{<matomeQuote body="何に同意してないのかよくわからないな．<br>＞これはMarkdownじゃなくて、Markdown + 数十の拡張機能です．<br>そうだね、もし君のObsidianの使い方がそれぞれが独自の形式を使う数十の拡張機能を含んでいるなら、多くの点でEvernoteをただ使うのと似てるよ．<br>もし君が主にプレーンなMarkdownで、ほんの一握りのカスタム形式しか使ってないなら、それでもまだ簡単だ．<br>もし今日、今すぐにObsidianが動かなくなったとしても、文字通りVSCodeでObsidianのフォルダを開いて、Obsidianでやってることの90%はまだできるだろうね．<br>もし今日、今すぐにEvernoteが動かなくなったとしたら、動くバージョンを見つけて、ファイルをエクスポートして、Markdownか何かに変換したりするのにいくらか努力が必要になるだろうね．<br>Obsidianの外で使う方が独自のものよりも労力がかかるって、どうして主張できるのかがただわからないんだ．" userName="edanm" createdAt="2025/05/19 12:32:30" color="#ff5c5c">}}




{{<matomeQuote body="≫ Since my PKMS is hosted online... {Screenshot of a login form}<br>自分のPKMSをオンラインでホストしてデバイス間で同期するなら、セキュリティは何層にもするべきだね。<br>自作ホストする人におすすめの最大のライフハックは、自宅ネットワークにVPNを立てて、家庭外にはサービスを公開しないことだよ。これやる前はアプリのセキュリティが常に心配だったけど、今はシンプルなサービスなら認証すら設定しないことも多い。だって、そこにアクセスされるようなら、他にもっと深刻な問題があるってことだから。" userName="lolinder" createdAt="2025/05/18 17:23:03" color="#45d325">}}




{{<matomeQuote body="もっと良いのはTailscaleだね。設定が段違いに簡単で、すごく安定してる（ファイアウォール越えもOK）。可能な時は直接（暗号化された）接続を使うよ。数クリックで全部設定できるんだ。IoT VLAN公開とか、全トラフィックを家にトンネルする出口ノード設定とかマジで楽。特定のデバイスを友達と共有するのも超便利だよ。特に見られたくないメモアプリとか、特定のユーザー/デバイスにTailscale側でアクセス制限できるから、アプリに認証つける手間が省けるんだ。IPでユーザー/デバイスを調べて認証にする方法もあるらしい。もしTailscaleを信頼しないなら、自分でHeadscaleサーバーをホストすればいいだけだよ。" userName="miki123211" createdAt="2025/05/18 23:00:40" color="#38d3d3">}}




{{<matomeQuote body="デメリットは、2週間の休み中にもし自宅ネットワークやサーバーが止まっちゃったら、家に帰るまでどうにもならないってことだね。オンラインホストなら、99.99%の高い稼働率で、どんな時でもSSHアクセスできるから安心だよ。" userName="rafram" createdAt="2025/05/18 18:27:48" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="マジそれな。Wireguardをスマホとか全部に入れてて、自分のWi-Fiじゃないのに繋がったら勝手に起動するようにしてるんだ。だからどこにいても自宅LANにいるみたいだよ。超スムーズに完璧に動く。俺も色んなサービスを自分でホストしてるけど、Wireguardとかないとリモートアクセスなんて無理ゲーだね。" userName="caconym_" createdAt="2025/05/18 19:04:57" color="#ff5c5c">}}




{{<matomeQuote body="Tailscaleって、普通のWireguardトンネルと比べて何がもっと安全で、信頼できるの？<br>Tailscaleの複雑さとか機能は、ノードが200とか、せめて20とかあるなら分かるけど、3〜5ノードならオーバースペックな気がするんだ。余計な依存が増えて、一番アクセスしたい時に自分のノードから閉め出されるんじゃないかって心配だよ。" userName="nine_k" createdAt="2025/05/19 02:16:09" color="">}}




{{<matomeQuote body="自分のWi-Fiじゃないネットワークに繋がった時に、Wireguardが自動で起動するように、どうやって設定したの？<br>それが俺には分からない唯一の部分なんだよね。" userName="Arch-TK" createdAt="2025/05/18 20:34:17" color="">}}




{{<matomeQuote body="NAT越えと、鍵管理がいらないってとこかな。Tailscaleにどんな余計な依存関係があるの？" userName="pcpuser" createdAt="2025/05/19 02:22:25" color="">}}




{{<matomeQuote body="あるいは、特定の会社に依存するのが嫌だって人は、Headscaleを自分で立てるのも結構簡単で早いよ。俺は今、これ使っていくつかの都市でデバイスを同期してるんだ。" userName="rtrgrd" createdAt="2025/05/19 00:10:05" color="">}}




{{<matomeQuote body="これらの方法って組み合わせられるんだよ。VPSの上でVPN経由で動かせばいいんじゃない？" userName="Zambyte" createdAt="2025/05/18 18:58:35" color="">}}




{{<matomeQuote body="キミの”ライフハック”は良いアドバイスじゃないよ。perimeter based securityが機能しない理由はよく説明されてるし。変なのは、正しい場所から始めたことだね、”各アプリのセキュリティ懸念に常に気を配る”ってとこは。残念ながら面倒で時間かかるけど、それがデータをプライベートに保つ正しいやり方。もし面倒すぎんなら、他人に金払ってやってもらう価値があるってこと。もし世界を救うためにハッキングする必要があるとしたら、キミのセキュリティアプローチを使ってる奴が一番の望みだね。" userName="old-gregg" createdAt="2025/05/18 21:29:19" color="">}}




{{<matomeQuote body="じゃあ、zero-trustとかに関する過去10年のセキュリティ学習を全部忘れちゃったってこと？" userName="SahAssar" createdAt="2025/05/18 19:00:16" color="">}}




{{<matomeQuote body="そうね、Tailscaleのサーバーに依存してる点が一つ。NATを回避できてるのはTailscaleがそれを処理するサーバーを動かしてるからだし、鍵管理を避けてるのは彼らがキミの鍵を管理して独自の認証レイヤーを重ねてるから。" userName="akerl_" createdAt="2025/05/19 04:29:06" color="#38d3d3">}}




{{<matomeQuote body="＞もしTailscaleがネットワークの制御を握るのが嫌なら<br>Tailscale侵害の可能性に関して、ベータ版のtailnet lock機能があるよ。<br>tailnet lockを使えば、tailnetにノードを追加する際に信頼されたノードによって署名されているか検証できるんだ。tailnet lockが有効なら、たとえTailscaleのインフラが悪意を持つかハッキングされても、攻撃者はキミのtailnetでトラフィックを送受信できない。［1］<br>https://tailscale.com/kb/1226/tailnet-lock" userName="dankebitte" createdAt="2025/05/19 00:07:16" color="#ff5733">}}




{{<matomeQuote body="sshを非標準ポートで公開し、root無効で、鍵ベース認証を使うのはかなり異論ないはず。<br>security through obscurity（非標準ポート、root無効）はどっちもちょっと馬鹿げてるけど、まあいいじゃないか。<br>とはいえ、Tailscaleみたいに素晴らしいサービスがあれば、ネットワークから締め出されることはまずないね。Tailscaleは”ただ動く”のが本当にすごい。" userName="jauntywundrkind" createdAt="2025/05/18 18:32:38" color="">}}




{{<matomeQuote body="私って心配性になるべき？Tailscaleを使ったことないんだけど、サードパーティにネットワークへのアクセス管理を任せるって考えはゾッとするんだ。でも正直、どうなんだろ、馬鹿げてるのかな？正直、Tailscale™が（意図的かそうでないかに関わらず）私を困らせるより、自分でHeadscaleサーバーを立ててヘマする可能性の方が低いってことはないのかな？" userName="krick" createdAt="2025/05/19 02:14:10" color="">}}




{{<matomeQuote body="Wireguardとは一緒に使ってないけど、ZerotierはAndroidで全然うまく動くよ。" userName="viraptor" createdAt="2025/05/18 19:58:24" color="">}}




{{<matomeQuote body="でも、もし自宅のhypervisorがダウンしたらどうなるの？" userName="bloqs" createdAt="2025/05/19 00:08:07" color="">}}




{{<matomeQuote body="Apple platformでのTailscaleアプリだと、それはVPN On Demandって呼ばれてるよ。ここに設定方法がある。<br>https://tailscale.com/kb/1291/ios-vpn-on-demand" userName="runjake" createdAt="2025/05/18 21:17:26" color="#45d325">}}




{{<matomeQuote body="完璧じゃないけど、稼働時間伸ばすために工夫したこといくつかあるよ。<br>＊ UPSの上に機器置いて停電とかブレーカー落ちても大丈夫にした<br>＊ Dynamic DNSでcron使って1日4回IP変わっても追従するようにした<br>＊ たまに全部再起動して、起動時の設定とかミスってないか確認してる、とか。" userName="accrual" createdAt="2025/05/18 19:25:42" color="#785bff">}}




{{<matomeQuote body="分かりやすい説明の例、教えてくれる？" userName="gugagore" createdAt="2025/05/18 21:38:25" color="">}}




{{<matomeQuote body="Tailscaleもできるよ！" userName="Jarwain" createdAt="2025/05/18 20:10:03" color="">}}




{{<matomeQuote body="Tailscaleはクライアントのソースコード全部公開してるから、データとか鍵が暗号化されずにサーバー経由しないか、自分で確認できるよ。https：／／github.com／tailscale／tailscale<br>Wireguardを立てる意味もあると思うけど（無料枠超えたいとか、Tailscaleサーバーが不安定とか）、Tailscaleで”怖いお化けがデータ見るぞ”って言う人は、技術的に無知か、ただの心配性だよ。" userName="simplesocieties" createdAt="2025/05/19 04:13:08" color="#ff33a1">}}




{{<matomeQuote body="Tailscaleで家のサーバーのVPN IPにDNSレコード設定できるよ。これ、Tailscaleだとかなり固定されてるみたい。あと家のサーバーにリバースプロキシ置けば、app1.my-domiain.comみたいに、VPN繋いでるときだけ使えるようになる。<br>欠点は、家でもVPN繋がないとダメなのと、今SSL設定してないからブラウザが警告出すこと。2つ目は直せるけど、1つ目は解決策あるかな。" userName="chris12321" createdAt="2025/05/18 20:51:30" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、違うよ。『VPN over a VPS』って言ったと思ったかもだけど、それはただのVPNと同じで、今回の解決策を組み合わせる話じゃないんだ。" userName="Zambyte" createdAt="2025/05/19 01:05:38" color="">}}




{{<matomeQuote body="”ゼロトラスト”製品売ってるベンダー見てみなよ。どれもホワイトペーパー出してて、a）境界防御は”死んだ”とか、b）うちのゼロトラストこそ唯一無二の本物でデータ保護できる唯一の方法だって言ってる。<br>例外なくメアド入れないとホワイトペーパー見れないから、営業が”うちのゼロトラストを信用する重要性”をしっかり理解させてくる。他のとこは信用しちゃダメだって。<br>冗談じゃないよ−ちょっともね。" userName="marcusb" createdAt="2025/05/18 22:54:09" color="">}}




{{<matomeQuote body="価格ページ見ると、これ”enterprise”プランだけみたいだよ。" userName="ra" createdAt="2025/05/19 01:01:32" color="">}}




{{<matomeQuote body="Tailscaleでどうやって自分を認証するの？" userName="nine_k" createdAt="2025/05/19 04:11:12" color="">}}




{{<matomeQuote body="たぶん言いたかったのは、オンラインとか自宅サーバーだったら、VPN経由でしか全サービスにアクセスできないようにするってことだと思う。Wireguardは比較的簡単に設定できるし、全サービスをWireguard経由でしか使えないようにできる。<br>SSHがバックドア仕掛けられそうになって以来、うちのサーバーで”公開”してるのはWireguardだけ。UDPベースだから動いてるか分かりにくいし。SSHもWireguard経由でやってるよ。" userName="vhanda" createdAt="2025/05/18 18:36:33" color="#ff5c5c">}}




{{<matomeQuote body="なんかこれDirectusの宣伝みたいじゃない？Obsidianの代わりに使ってるやつね。サイト行ったら”Start For Free”とかあって、料金ページ見ても”Lets chat”しかなくて、明確な料金体系がなくて微妙。これオープンソースって言ってるけど、説明見ると”SQLデータベースのコンテンツ管理用”って感じで、個人のノートシステムには合わないんじゃない？彼が記事で言ってる使い方にはフィットしない気がするな。" userName="ThinkBeat" createdAt="2025/05/18 22:46:11" color="#ff5c5c">}}




{{<matomeQuote body="だよね、データをデータベースに保存したいんなら、信頼できて昔からあるFOSSのJoplinに戻るだけだわ。" userName="KetoManx64" createdAt="2025/05/19 02:53:31" color="">}}




{{<matomeQuote body="価格ページの情報だよ。Open Licenseってのがあってね、あなたやあなたの組織の年間総収入が＄5M未満なら、Directusのセルフホスティングは無料だよ。これ、本番環境とか商用プロジェクトでもOKらしい。つまり、個人利用なら基本無料ってことだね。" userName="ryanwhitney" createdAt="2025/05/19 02:29:46" color="#ff5733">}}




{{<matomeQuote body="公平に見て、Directusが20年後も使えるか、Obsidianと同じ基準で評価する必要があると思うよ。" userName="smarx007" createdAt="2025/05/19 06:47:13" color="#ff33a1">}}




{{<matomeQuote body="BSLとその収益の上限は、オープンソースじゃなくてshared-sourceだよ。" userName="nyanpasu64" createdAt="2025/05/19 08:37:31" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="＞ Obsidianは長い間個人的には良いツールだったんだ。でも外出先でスマホからノートにアクセスしたい時、この機能が有料だと知ってガッカリしたんだよね。<br>俺はSyncthing [0] を使ってデバイス間でvaultを同期してるよ。PCで常に動かしておいて、スマホで開くと変更をフェッチする感じ。Obsidian純正みたいにスムーズじゃないけど、Gitより楽だしファイルがリモートサーバーに残らないのが良いね。<br>[0]: https://syncthing.net" userName="mutoyoru" createdAt="2025/05/18 17:51:33" color="#785bff">}}




{{<matomeQuote body="俺もObsidian結構使ってるよ。Syncthing Forkとか、AndroidでGoogle DriveとDriveSyncで同期してるけど上手くいってるよ。他のクラウドも使えるみたい。色々な同期ツールの比較をブログに書いたから参考にしてみてね：https://bryanhogan.com/blog/how-to-sync-obsidian" userName="bryanhogan" createdAt="2025/05/18 21:43:33" color="#ff5c5c">}}




{{<matomeQuote body="SyncThingには同期の落とし穴がいくつかあってね。編集して移動するとファイルが再出現したり、競合してないのに”sync-conflict”ファイルができたり。履歴が見れないのもちょっとって感じ。今日なんか同期フォルダ全部使えなくなって再追加するハメになったよ：https://github.com/Catfriend1/syncthing-android/issues/1430<br>でも、全体的には4台でちゃんと動いてるから、まあまあかな。" userName="remram" createdAt="2025/05/19 17:46:36" color="#ff33a1">}}




{{<matomeQuote body="これやってるけど、俺は常に動いてるRaspberry Piも使ってるんだ。だからノートPCとスマホが直接同期できなくてもバッチリなんだよね。SyncTrainっていうiOSアプリがちょうどいいタイミングで出てくれたよ。" userName="mk12" createdAt="2025/05/18 19:52:07" color="#ff5c5c">}}




{{<matomeQuote body="Obsidianのノート同期は月に4ドルだよ、気になる人のためにね。" userName="trwhite" createdAt="2025/05/18 18:09:10" color="">}}




{{<matomeQuote body="これ初めて知ったわ。最近変わったのかもね、俺は契約してからずっとそれ以上払ってるし。アカウント見てみたら、10ドル請求されてたけど、どうやら自動的にストレージが多い”Plus”プランに移されてたみたい。だから別に文句はないんだ。それか4ドルプランが新しいのか。4ドルはストレージ1GBだけなんだ。もしノートに画像とか使うなら、50GBの10ドルをおすすめするよ。" userName="galleywest200" createdAt="2025/05/18 18:20:12" color="#45d325">}}




{{<matomeQuote body="4ドルのプランは2024年3月20日に始まったんだよ。" userName="kepano" createdAt="2025/05/18 18:42:06" color="">}}




{{<matomeQuote body="いい値段だけど、Nextcloudとか似たようなの動かしたりお金払ってたりするなら、それでも無駄に感じるかもね。" userName="harvey9" createdAt="2025/05/18 18:15:42" color="">}}




{{<matomeQuote body="プラグインを使えば、他の方法で無料で同期できるんだよ。筆者がこれに気づかないか、触れてないのが分からないな。俺はRemotely SaveをWebDAVで何年も問題なく使ってるよ。それにノートは全部ただのMarkdownファイルだし。もしObsidianのソフトがなくなっても、ノートは全部手元に残るんだ。誰かが自分のソフトを作るために時間を費やしたいのはいいけど、この記事で挙げられてる理由は何一つ意味をなさないね。" userName="nsteel" createdAt="2025/05/18 18:52:56" color="#38d3d3">}}




{{<matomeQuote body="俺にとっては、”とにかく使える”って感じと、プロジェクトを安くサポートできる便利な方法っていうのが決め手だった。お金払ってる限り、俺はお客さんであって、商品じゃないって思えるしね。サードパーティのやつ、iCloudとかDropboxとか色々試したけど、どれも同期できてないノートのせいでデータ失くしたり、手動で直したりしなきゃいけなかったんだ。毎日 literally 使うツールとして、月に4ドルでゼロ問題っていうのは、その価値十分にあったよ。" userName="theshrike79" createdAt="2025/05/19 06:08:10" color="#ff33a1">}}




{{<matomeQuote body="素晴らしいソフトをサポートするのは無駄じゃないよ。" userName="BiteCode_dev" createdAt="2025/05/18 21:03:22" color="">}}




{{<matomeQuote body="あんたのコメント、すごく不誠実だと思うよ。それがまたサブスクだからっていうだけじゃなくてね。あのプランは、もし複数のVaultを使ってるならダメなんだ。そしてObsidian使ってるなら、たぶん複数のVaultを持ってるだろうしね。" userName="bryanhogan" createdAt="2025/05/18 21:40:21" color="">}}




{{<matomeQuote body="なんで誰もが複数のVaultを使いたがるんだ？俺は単にフォルダを分けて使ってるよ。思いつく唯一の理由は、承認されてないサービスを使っちゃいけない職場でObsidianを使う場合ぐらいかな。" userName="TheFreim" createdAt="2025/05/18 22:03:45" color="">}}




{{<matomeQuote body="俺はObsidianをサブのメモアプリとして使ってるよ。ゲームごとにVaultを分けてるんだ。例えばXenobladeの技の組み合わせのページと、Hyruleで装備強化に必要ないろんなアイテムの詳細ページを同じVaultでリンクさせるとごちゃごちゃするからね。" userName="adiabatty" createdAt="2025/05/22 01:27:59" color="#45d325">}}




{{<matomeQuote body="俺だけかもだけど、俺は3つ持ってるよ。Personal、Work、Shared。でも仕事用は仕事のPCに置いとく必要があるから、同期してるのはPersonalとSharedだけだよ。" userName="Xss3" createdAt="2025/05/18 22:40:23" color="">}}




{{<matomeQuote body="時間とお金のトレードオフだよね。個人的には、この2年くらいVault一つで使ってたけど、その間の同期にかかる月4ドルは全然OKだったよ。今はVault10個で月8ドルになったけど（最近2個目を追加したばっか）、トイレットペーパー代より安いこと考えたら、まだ全然大したことない額だよ。" userName="trwhite" createdAt="2025/05/18 21:52:22" color="">}}




{{<matomeQuote body="AppleがiCloudのディレクトリを常にダウンロードできるようになったおかげで、これで解決したよ。" userName="charkubi" createdAt="2025/05/18 21:29:26" color="">}}




{{<matomeQuote body="そうそう。俺はObsidianのVaultにiCloud使ってるよ。常にダウンロードするように設定してある。問題起きたことないし、別に新しい費用もかかってないよ（Photo LibraryでiCloudにお金払ってる以外はね）。" userName="al_borland" createdAt="2025/05/18 21:53:03" color="#45d325">}}




{{<matomeQuote body="iCloud＆Windowsの注意点ってまだ当てはまる？このリンク見て。<br>https：//help.obsidian.md/sync-notes" userName="avtar" createdAt="2025/05/18 23:45:22" color="#ff5c5c">}}




{{<matomeQuote body="syncthingに切り替えようと思ってるんだよね。今はLinuxでgoogle driveの同期にinsync使ってて、これがほぼ即時でずっと同期してくれる。あるPCで編集して、ラップトップ取る頃には同期済みって感じ。ただ、もうgoogle drive使いたくないんだよね。" userName="MSFT_Edging" createdAt="2025/05/18 18:07:34" color="#785bff">}}




{{<matomeQuote body="Syncthingはマジ救世主だよ、めっちゃ使えるツール！Obsidianには同期用のコミュニティプラグインもいくつかあるよ。俺はWebDAV経由のRemotely Saveを使ってる。" userName="Saris" createdAt="2025/05/18 18:32:22" color="#38d3d3">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
