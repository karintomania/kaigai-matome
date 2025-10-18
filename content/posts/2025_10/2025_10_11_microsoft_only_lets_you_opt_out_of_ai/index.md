+++
date = '2025-10-11T00:00:00'
months = '2025/10'
draft = false
title = 'マイクロソフト、AI写真スキャンの拒否は年間たった3回まで！この仕様に波紋'
tags = ["Microsoft", "AI", "プライバシー", "データ管理", "写真"]
featureimage = 'thumbnails/blue3.jpg'
+++

> マイクロソフト、AI写真スキャンの拒否は年間たった3回まで！この仕様に波紋

引用元：[https://news.ycombinator.com/item?id=45551504](https://news.ycombinator.com/item?id=45551504)




{{<matomeQuote body="「年3回までしかオフにできない」って、信じられないね。Microsoftは、ユーザーにはこの理不尽でバカげた要求を受け入れるしか選択肢がないと思ってるんだろうな。ユーザーは写真の人物を自分で知ってるのに、なんでMicrosoftもそれを知りたがるんだ？プライバシーに関する法整備が全然足りてないよ。この手の行動は、企業に強烈な罰則を科すべきだ。Microsoftにはかなり前からお仕置きが必要だったんだ。これがそのきっかけになるはずだよ。" userName="themafia" createdAt="2025/10/11 20:02:22" color="#ff33a1">}}




{{<matomeQuote body="なんでみんなすぐに「悪い、ネガティブ、邪悪なこと」って思うんだろう？俺には理解できないよ。俺の推測だと、この機能がオンでオフにするとタグが削除され、またオンにすると再スキャンが必要になるんだろ。だから、処理の無駄を防ぐためにこの機能を切り替える回数を制限してるんじゃないかな。彼らの免責事項でも、写真をトレーニングに使わないって言ってるしね。" userName="CMay" createdAt="2025/10/12 01:51:57" color="">}}




{{<matomeQuote body="俺の最初の考えでは、CSAMスキャンをするためだったんじゃないかな。ユーザーにプライバシー侵害されない選択肢があるふりをしてね。" userName="14" createdAt="2025/10/11 21:43:57" color="#785bff">}}




{{<matomeQuote body="俺の理解だと、CSAMスキャンはどんなクラウドストレージシステムでも常にオンで必須の独立したサブシステムとされてるよ。" userName="bayindirh" createdAt="2025/10/11 21:45:03" color="">}}




{{<matomeQuote body="そうそう、E2EEじゃないクラウドストレージシステムは、CSAMに対して厳格なスキャンをしてるね。それはAIじゃなくてPerceptual Hashesに基づいてるんだ。AIシステムって、普通の見た目のadversarial imagesで結構簡単に騙されちゃうからね。" userName="odo1242" createdAt="2025/10/11 22:35:27" color="#ff33a1">}}




{{<matomeQuote body="設定画面に堂々と書いてあるのがウケるわ。なんで2回や4回じゃなくて3回なんだろうね？きっとプロダクトマネージャーが、どこまでふざけた設定にできるか考えて、それでも許されるラインを狙ったんだろうな。" userName="ryandrake" createdAt="2025/10/12 00:08:48" color="">}}




{{<matomeQuote body="俺も似たような写真IDシステムを、この目的やコンテンツのためじゃないけど作ったことがあるんだ。プラットフォームがPerceptual Hashesを使って人々の人生を台無しにする可能性があるって考えは恐ろしいよ。アルゴリズムやパラメーターによっては、かなりの誤検知が出る可能性があるんだ、特にハッシュ化の際に画像を縮小するアルゴリズムだとね。" userName="heavyset_go" createdAt="2025/10/11 22:46:00" color="#ff5733">}}




{{<matomeQuote body="もしそんなに単純なら、こんな紛らわしい方法で3回に制限する実用的な理由なんてないはずだ。もし俺がスクラブで時間を無駄にしたいなら、それは俺の自由であるべきだろ。本当にタグ付けされたデータのスクラブだけなら、だけどね。今まで学んだことがあるとすれば、与えられた機能はユーザーの不利益になり、会社の利益になる最悪の読み方をすべきだ、ってことだ。正直、最近はMicrosoftに多くを期待してない。いや、むしろこれ以上ガッカリさせられることはないと思ってたのに。でも奴らは、どうにかして期待を裏切る方法を見つけ出すんだから！" userName="A4ET8a8uTh0_v2" createdAt="2025/10/12 02:41:18" color="#ff5733">}}




{{<matomeQuote body="これはMicrosoftだぞ。彼らは同意なしにこれらのトグルを自動でオンに戻す確かな実績があるんだ。だから、最もプライベートな瞬間を彼らがデータセットに取り込んで漏洩させるのを拒否できるのはたった3回だけ。4回目に「バグ」（実際は機能）でオンになる確率はどれくらいかって？100%未満なんて見積もりは過小評価だね。そして、免責事項って法的に何の意味があるんだ？トレーニング目的で使っても、何の責任も負わないだろうね。ただ使ってないと否定するだけさ。もし使ってることがバレたら、「ごめん、意図的じゃなかった」って言うだろう。意図的だったことがバレたら、「お前のためだ、黙ってろ」って言うだろうね。" userName="forgotoldacc" createdAt="2025/10/12 03:05:50" color="#ff5733">}}




{{<matomeQuote body="Appleのアプローチは良さそうだったのに、みんなが仕組みをちゃんと知らずに、的外れな怒りばかりで話が変な方向に行っちゃったよね。" userName="JimDabell" createdAt="2025/10/12 00:46:16" color="">}}




{{<matomeQuote body="これ、写真の一括スキャンが原因でしょ。オフにしてまたオンにすると、全部再スキャンするからコストがかかるんだよ。Microsoftが悪いってわけじゃないと思うけど、やり方にはちょっと問題ありだよね。" userName="landl0rd" createdAt="2025/10/12 00:53:16" color="#38d3d3">}}




{{<matomeQuote body="これって、バグか、”設定を初期化しますか？”みたいなダイアログのせいじゃない？うちの親がBingを勝手に入れられちゃうみたいに、Microsoftが意図せず設定を戻すことってよくあるよね。" userName="nikanj" createdAt="2025/10/12 07:03:45" color="">}}




{{<matomeQuote body="これはちょっと違うんじゃない？オンオフする度にMSにはかなりの処理コストがかかるんだよ。だから、ユーザーが大量スキャンでMSのシステムに負担をかけるのを避けたいんだろ。もっと「この設定を年に4回しかオンにできません」って言い方をするべきだったね。" userName="buran77" createdAt="2025/10/12 10:13:06" color="#38d3d3">}}




{{<matomeQuote body="なんで3回なのか分からなくても、絶対理由がないってわけじゃないよ。感情的になりすぎ。俺は技術的な詳細にしか興味ないんだ。たぶんこれってオプトアウトでしょ。だって、亡くなった犬の写真をすぐ探したい人が24時間も待てないでしょ？そういうの嫌なら、暗号化されたVaultを使えばいいんだよ。" userName="CMay" createdAt="2025/10/12 03:14:40" color="#38d3d3">}}




{{<matomeQuote body="みんなが言うように、もしホントに処理が重いなら、これは「オプトイン」の制限になるはずだよね。でも実際は「オプトアウト」の制限なんだ。Microsoftは、昔からユーザーに強制的に同意させて、後で「オプトアウトしてね」って言う会社だから、処理が重いなんて誰も信じないよ。" userName="forgotoldacc" createdAt="2025/10/12 10:33:42" color="#785bff">}}




{{<matomeQuote body="もしWindowsをまだ使ってたら、俺も懐疑的になってたと思うよ。だって、Windowsアップデートの後でクラウド同期が勝手にオンになったって報告も昔あったし。MicrosoftがAIスキャン設定をうっかりオンに戻しても全然驚かないね。もし年に3回しかオフにできないなら、3回ミスられたらもう1年間は強制的にAIスキャンされちゃうってことだろ？オンにできる回数を制限するべきだよ。" userName="QuantumNomad_" createdAt="2025/10/12 02:05:41" color="#45d325">}}




{{<matomeQuote body="AppleのCSAMスキャンについて、みんなは「デバイスにハッシュが保存されて、画像がスキャンされる」って予想してたよね。あれって間違ってたの？「実際には起きてないことに対する無知な怒り」って言われたけど、将来的に監視システムが目的を拡大することや、誤検出・誤判定の心配って、かなり正当な懸念だったと思うよ。" userName="WarOnPrivacy" createdAt="2025/10/12 01:28:38" color="">}}




{{<matomeQuote body="OneDriveには、すごい量の写真を持ってる人がたくさんいるよね。写真の分析やタグ付けってタダじゃないんだ。顔認識は嫌だけど、普通のタグ付けはOKって人もいるし。Microsoftがプライバシー設定を無視した事例があるなら教えてほしいな。<br>https://support.microsoft.com/en-us/office/group-photos-by-p...<br>ソフトがWindowsの設定を勝手に変える問題はあったけど、それとは話が違うのかな？" userName="CMay" createdAt="2025/10/12 11:48:03" color="#785bff">}}




{{<matomeQuote body="うん。HIPAAルールで活動してるクライアントが、突然「書類がどこ行ったの？」って連絡してきたんだ。Microsoftはデスクトップに陽気なメモを残してて、Windows 10のアップデート後、事前警告なしに保護された患者の健康データ全部を、無許可のクラウドストレージアカウントに勝手にアップロードしたって言ってたらしいよ。まじかよ。" userName="nativeit" createdAt="2025/10/12 03:59:07" color="#785bff">}}




{{<matomeQuote body="＞みんな読んだよ。既知のハッシュ値がデバイスに保存されてて、画像はそれに対してスキャンされるって推測してたんだ。これって間違い？<br>うん。完全に間違ってる。全然違うよ。推測するんじゃなくて、ちゃんと読みにいったらどう？真面目な話、俺のコメントの意図は、推測してるだけの人との議論は無意味ってこと。" userName="JimDabell" createdAt="2025/10/12 01:49:27" color="">}}




{{<matomeQuote body="写真をスキャンしないのに、処理能力って必要なの？" userName="A4ET8a8uTh0_v2" createdAt="2025/10/12 03:01:34" color="">}}




{{<matomeQuote body="＞つまり、処理の無駄を防ぐために、この機能をオンオフできる回数に制限があるってことだと思ったんだけど。<br>それは設定を有効にできる回数の制限であって、オフにするのを防ぐものじゃないよ。" userName="barnabee" createdAt="2025/10/12 11:28:47" color="">}}




{{<matomeQuote body="＞君はこれに感情的になりすぎてて、公平に評価できないみたいだね<br>このセリフで議論に勝ったことある？それとも、ただ相手をイライラさせるために使ってるだけ？" userName="vasco" createdAt="2025/10/12 09:04:21" color="">}}




{{<matomeQuote body="いや、スキャンはMicrosoftのサーバーでやってるんじゃないかな、たぶん。だから、機能を有効にしたら写真をMicrosoftに送ってスキャンするんだろ...。オフにしたらデータを削除して、またオンにすると写真を再処理しなきゃいけない。有効にするたびにサーバーリソースを使ってるってことだね。でもこれって、3回オフにしたら再有効化できないって意味で、3回有効にしたらオフにできないってことじゃないはずだよ。" userName="cortesoft" createdAt="2025/10/12 03:47:45" color="#ff33a1">}}




{{<matomeQuote body="君の意見に賛成だけど、残念ながら別に驚くことじゃないよね、こうなる運命だったんだ。AIの悪用に関するほとんどの警告は、Hacker Newsの過度に熱狂的で知識不足の群衆には届かない。彼らはYCのテクノロジーロビイストたちによって思考停止させられてるからね。" userName="antegamisou" createdAt="2025/10/11 21:57:24" color="#ff5733">}}




{{<matomeQuote body="＞写真を分析してタグ付けするのは無料じゃない<br>じゃあなんで彼らはそれをしてるの？たぶんCIAやNSAや広告主がいいお金を払ってるからじゃない？" userName="hulitu" createdAt="2025/10/12 11:54:05" color="">}}




{{<matomeQuote body="有効化と無効化の両方にコストがかかるんだ（データを削除して、また作り直すからね）。でも、有効化したことでユーザーを罰したくはないだろうから、制限が無効化側にあるのは理にかなってるね。" userName="CMay" createdAt="2025/10/12 11:33:44" color="#38d3d3">}}




{{<matomeQuote body="なんでマイクロソフトは、西側諸国のほぼ全員の顔データベースを作りたがるんだ？それは抑圧的な政府にとって巨大なビジネスチャンスだし、広告にも使われるよな。マジ勘弁。" userName="choeger" createdAt="2025/10/12 09:32:32" color="#ff5c5c">}}




{{<matomeQuote body="考えてることをみんなに推測させるんじゃなくて、伝えたいことをハッキリ説明してよ。" userName="Pulcinella" createdAt="2025/10/12 03:42:16" color="">}}




{{<matomeQuote body="批判を避けるには、年間3回オフにした後は再有効化できないようにすればよかったのにね。オン＼オフを繰り返すと全写真が再スキャンされて、とんでもなくコストがかかるのが問題だろう。ユーザーが問題を直そうとスイッチをいじるのはよくあること。プライバシーを気にするならオフにしっぱなしでOKなんだから、これは無駄なオン＼オフを繰り返すユーザー対策だよ。" userName="Aurornis" createdAt="2025/10/12 00:47:58" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="「オフにしとけば問題ない」って言うけど、エラーやアップデートで勝手にオンに戻ったりしないだろうね？" userName="incompatible" createdAt="2025/10/12 02:11:18" color="#785bff">}}




{{<matomeQuote body="Facebookのプライバシー設定のせいで企業と揉めるのに疲れて、アカウントを削除したよ。Microsoftも同じことするだろうね。Windowsパーティションを消して、Steam OSかLinuxを入れようと思ってる。本当にWindowsが必要なのは、確定申告の時くらいだから、ARM VMで十分。" userName="technofiend" createdAt="2025/10/12 04:05:22" color="#ff33a1">}}




{{<matomeQuote body="Linuxの税務ソフトってそんなにダメなの？" userName="alex1138" createdAt="2025/10/12 13:23:41" color="">}}




{{<matomeQuote body="ほとんどの税務ソフトは今やWebベースのSaaSだと思ってたよ。" userName="api" createdAt="2025/10/12 13:27:48" color="">}}




{{<matomeQuote body="オンラインの選択肢は色々あるけど、確定申告のデータをクラウドに保存したくはないんだよ。" userName="technofiend" createdAt="2025/10/13 03:23:14" color="">}}




{{<matomeQuote body="今のトグルはオフにできるだろうけど、すぐに別の新機能が追加されて、それがデフォルトでオンになるよ。データ管理なんて幻想さ。アメリカ経済は企業のデータマイニングで成り立ってるんだ。だからMLエンジニアやAIエンジニアは家を買えるんだよ。" userName="taurath" createdAt="2025/10/12 19:31:10" color="#ff33a1">}}




{{<matomeQuote body="これは懸念だよな。テック企業が合理的なオプションをくれないのがイラつくんだ。”アップロード写真をスキャンするか？”（バッチ処理なし）”全スキャンデータを削除する”（プライバシー重視なら）”未スキャン写真をすべてスキャン”（年3回まで）みたいなのが欲しいのに。”ユーザーは何も理解できない馬鹿だ！”なんて態度じゃ、余計に理解できないだろ。" userName="crabmusket" createdAt="2025/10/12 03:04:38" color="#45d325">}}




{{<matomeQuote body="スキャン設定をオンオフできると、写真にタグが付いたり付かなかったりしてライブラリがごちゃごちゃになりそう。<br>年3回までしか「Scan all missing photos」できないのは、誰も使いこなせないし、ユーザーは混乱するだけだね。" userName="Aurornis" createdAt="2025/10/12 22:46:19" color="#45d325">}}




{{<matomeQuote body="オプションが明確なら「Scan missing photos」ボタンってGoogle検索トップに出るはずだよね。<br>結局、データ管理をユーザーに分かりやすくさせないから、みんな困惑するんだよ。" userName="crabmusket" createdAt="2025/10/13 12:08:31" color="#45d325">}}




{{<matomeQuote body="マイクロソフトさ、この機能はもうやめにして、作った開発者もクビにして、このアイデア自体忘れちゃいなよ。<br>そしたら処理能力も節約できるんじゃない？" userName="nativeit" createdAt="2025/10/12 04:08:37" color="">}}




{{<matomeQuote body="みんなは「スキャンを有効にする」のが年に3回までなら文句ないのに、マイクロソフトは「無効にする」のを制限するなんて、やっぱりダークパターンだよね。" userName="htk" createdAt="2025/10/12 14:42:28" color="#785bff">}}




{{<matomeQuote body="機能をオフにしてまたオンに戻すと、ライブラリ全部再スキャンされるなんて、ありえない実装だよね。<br>マイクロソフトだから驚かないけど、マジでバカげてるわ。" userName="godelski" createdAt="2025/10/12 01:06:52" color="">}}




{{<matomeQuote body="ユーザーがオプトアウトしたら、以前のスキャンデータ全部を消す法的義務があるからだろ？<br>だから、もう一回有効にするには全部スキャンし直すしかないんじゃない？" userName="urbandw311er" createdAt="2025/10/12 01:25:06" color="#ff33a1">}}




{{<matomeQuote body="データは暗号化して、キーをユーザーのデバイスに置けばいいんじゃない？<br>有効にしたらキーを送って、無効にしたらそっちでキーを消すって感じでさ。" userName="zaik" createdAt="2025/10/12 01:51:50" color="#785bff">}}




{{<matomeQuote body="デバイスにプライベートキーを保存しとけば、設定オフでMicrosoft側のデータはクリプトシュレッドできる。<br>再有効化したら、またプライベートキーをアップロードするって手もあるよ。" userName="fiddlerwoaroof" createdAt="2025/10/12 01:48:22" color="#38d3d3">}}




{{<matomeQuote body="それって、データ削除の法的要件を満たすことになるのかな？<br>ちょっと疑問だね。" userName="cortesoft" createdAt="2025/10/12 03:50:06" color="">}}




{{<matomeQuote body="ほとんどのデータ保護法では、削除義務側がキーを消せばクリプトシュレッディングが認められてるはず。<br>この仕組みがないと、不変なシステムとかバックアップでの削除は難しいしね。<br>ユーザーがキー持ってても関係ないと思うよ。" userName="fiddlerwoaroof" createdAt="2025/10/12 05:51:01" color="#ff33a1">}}




{{<matomeQuote body="キーがユーザーデバイス上にあってもアプリに制御されてたら、それはアプリの制御外って言える？ユーザーにキーを外部ファイルに書き出させたり、アプリが制御しない仕組みで暗号化しないとダメじゃないかな？" userName="grues-dinner" createdAt="2025/10/12 12:39:44" color="">}}




{{<matomeQuote body="データ削除はすぐやるな！タスクをスケジュールして、PCの負荷が低い時間帯にスキャンと削除をやれよ。すぐやったらユーザーはPCをオフにするぞ。電源やバッテリーも確認しろ。サーバー間でのデータ移行には時間かかるし、すぐに削除すると無限ループとか問題だらけになるぞ。並列処理知らないのか？画像をDBでキューに入れて、ハッシュで管理しろ。適当にやるとPCがぶっ壊れるぞ。「速く動いて壊せ」とかやめとけ。プログラミングする前に、ちゃんと問題を考えろ！最初の解決策はクソでいいから、もっと深く考えろよ。高給もらってんだからさ。" userName="godelski" createdAt="2025/10/12 02:19:44" color="#38d3d3">}}




{{<matomeQuote body="機能をオフにしたらデータが消えるのが普通でしょ？それが意図だし、そうしないと困るじゃん。何でそれが変だと思うのか分からないな。" userName="Aurornis" createdAt="2025/10/12 22:40:22" color="">}}




{{<matomeQuote body="他のコメント読んでから返信しろよ。俺はPCに負荷かけないように遅延を提案してるんだ。トグルはイベントをスケジュールするだけで、すぐ開始じゃないんだ。操作がすぐ終わるし、全部ローカルでできるとか単純に考えすぎだよ。" userName="godelski" createdAt="2025/10/13 02:21:07" color="">}}




{{<matomeQuote body="Microsoftが広告を主要事業にしてるのがよくわかるな。プライバシー侵害もFacebookやGoogleと同じ道を辿ってるって感じ。" userName="GeekyBear" createdAt="2025/10/11 20:40:58" color="">}}




{{<matomeQuote body="広告だけじゃないぞ。もしICEがMicrosoftに「人物X」の写真をアップした人のアカウントを教えろって言ったら、令状なしでも喜んで教えるだろうな。広告収入より、USGからの脅しのためにやってるんだと俺は思うね。" userName="dreamcompiler" createdAt="2025/10/11 20:46:44" color="#785bff">}}




{{<matomeQuote body="9/11の後、企業は政府に何でも情報提供しようとしてたよな。最終的にそれを金にする方法を覚えて、今や監視経済になってるんだ。昔を思い出せばわかる。" userName="zzgo" createdAt="2025/10/11 22:47:17" color="">}}




{{<matomeQuote body="ICEが頼む必要はないんだよ。USGはMicrosoftが収集した全データを持ってるんだから。Snowdenの告発記事を読んでみろよ。<br>https://www.pcmag.com/news/the-10-most-disturbing-snowden-re..." userName="einpoklum" createdAt="2025/10/11 22:46:33" color="#ff5733">}}




{{<matomeQuote body="アメリカのシステムがよく分かんないんだけど、Microsoftは政府機関からデータ要求されてもお金はもらわないの？" userName="nxpnsv" createdAt="2025/10/12 16:23:25" color="">}}




{{<matomeQuote body="令状なしでも喜んでやるだろうし、政府が簡単に要求を送ってリアルタイムで結果を受け取れるような専用ポータルまで作ってあげるだろうな。" userName="cube00" createdAt="2025/10/12 11:16:33" color="">}}




{{<matomeQuote body="MicrosoftがGDPRに従うなんてありえないね。法廷で会おうぜ。広報発表は真実とは限らず、世間をごまかすためだけの場合が多いからな。" userName="rf15" createdAt="2025/10/11 19:43:56" color="">}}




{{<matomeQuote body="ホント変だよな。数年前にWindowsから離れてよかったわ。今じゃXboxとかMS製品は通知地獄でマジ不愉快。昔はGUIと高度な機能がうまく融合してたのに、今はユーザーを顧客じゃなく社員か家畜みたいに扱ってる気がするよ。" userName="anigbrowl" createdAt="2025/10/11 21:44:07" color="">}}




{{<matomeQuote body="連中は何も変わってないね。SatyaがCEOになって“新しいMicrosoft”とかオタクどもが持ち上げてたけどさ、結局は自分たちの支配に執着してる強硬な会社だよ。" userName="Spooky23" createdAt="2025/10/11 21:28:46" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="俺はM365の内部関係者だけど、会社は変わったよ。Satyaじゃなくて、規制や悪評のせいだね。EUの監査とか、ヘマしたら炎上するから、プライバシーとセキュリティは真剣に考えてる。顧客に価値がないデータ利用は理論上無理。この会社はデカいから、真面目な奴もそうじゃない奴もいるけど、公式にはプライバシー重視だよ。昔はGoogleやFacebookと比べて“良い奴ら”って感じだったけど、もし顧客データ搾取に走るなら、俺は辞めるつもりさ。" userName="charles_f" createdAt="2025/10/11 23:05:39" color="#38d3d3">}}




{{<matomeQuote body="“プライバシーを尊重し、GoogleやFacebookと比べて“良い奴ら”だった。収益は広告じゃなくサブスクがメインだった。”って話だけど、MSがスタートメニューに広告を入れ始めたのって、いつからだっけ？" userName="thaumasiotes" createdAt="2025/10/11 23:17:53" color="">}}




{{<matomeQuote body="Satya Nadella自身はWindows 11を使ってないんじゃないかと思うんだ。もし使ってたら、スタートメニューをめちゃくちゃにしたチームをクビにして、デスクトップからの広告も全部禁止してるはず。Bill GatesだってWindows Phoneを捨ててAndroidのSamsung Galaxy Fold4に変えたくらいだしな。https://www.gearbrain.com/bill-gates-windows-phone-android-2..." userName="vee-kay" createdAt="2025/10/12 20:00:32" color="#ff5c5c">}}




{{<matomeQuote body="確かに。でも、“良い時期があった”ってのは、その状況が現在も続いてるって意味になるだろ？それは事実と合わない気がするけどな。" userName="thaumasiotes" createdAt="2025/10/12 05:03:37" color="">}}




{{<matomeQuote body="10年前だよ。https://news.ycombinator.com/item?id=10393812" userName="MYEUHD" createdAt="2025/10/12 02:23:01" color="#ff33a1">}}




{{<matomeQuote body="エンタープライズ分野での巨大なコアサービスに対するあなたの見解には感謝し、顧客としても同感だよ。でも、AIの最先端や未知の部分が気になるんだ。AIマニアは本当に迷惑だね。" userName="Spooky23" createdAt="2025/10/13 01:29:53" color="">}}




{{<matomeQuote body="EU政府が監査してるから法令遵守って？弁護士じゃなくてもわかるけど、写真スキャンから永続的にオプトアウトできないのは、EUの法律にほぼ確実に違反すると思うんだ。EUがMicrosoftを厳しく罰してほしいね。" userName="traceroute66" createdAt="2025/10/12 06:40:01" color="#785bff">}}




{{<matomeQuote body="僕の言いたいことはね、会社には正しいことをする人たちだけがいてほしいんだ。こういう際どい行為は、他の人の努力を台無しにするし、悪意を持ったプロダクトマネージャーを見てきたから、写真スキャン強制には疑問を持つよ。PRが説明を避ける状況じゃ、会社は信用されないよね。EUや世論の反発で改善されることを願うよ。" userName="charles_f" createdAt="2025/10/12 17:11:50" color="#ff5c5c">}}




{{<matomeQuote body="「プライバシーとセキュリティを真剣に考えている」って言う会社は、実際はそうじゃないんだ。あなたの残りの返答からわかるのは、法律で定められた最低限のことしかやってなくて、プライバシーやセキュリティなんてちっとも気にしてないってことだよね。" userName="account42" createdAt="2025/10/13 08:59:45" color="#38d3d3">}}




{{<matomeQuote body="あれって本当に事実なのかな？ソーシャルメディアは昔から世論誘導されてきたと思うんだ。根拠がなくても、多くの人がそう主張すれば真実のように感じられる。Microsoftが「すごい」って思えるようなオープンソース活動をしたことなんてあった？せいぜいLinuxを「Embrace」したくらいだけど、「Embrace, Extend, Extinguish」は彼らの戦略の核だったからね。" userName="uep" createdAt="2025/10/11 22:54:38" color="">}}




{{<matomeQuote body="Microsoftはまるで「ダメなMidas」みたいで、触るもの全てをゴミに変えるんだ。それでもみんな製品を買うけどね。何億ものハエが間違えるわけないって感じで。一方でAppleも独自の有害なパターンを使ってるよ。他のOSとの相互運用性がなくて、アプリはiCloudにデータを保存しようとするし、iPhoneにはジャックコネクタがないとかね。" userName="p0w3n3d" createdAt="2025/10/12 05:42:16" color="">}}




{{<matomeQuote body="金と権力だよ。Prismの資料に最初に載っていたBigTech企業はどこだった？90年代に競合他社を追い出したのは誰だった？" userName="mixmastamyk" createdAt="2025/10/11 21:16:33" color="">}}




{{<matomeQuote body="Microsoftは金が欲しいだけ。君のことなんて気にしちゃいないよ。" userName="buyucu" createdAt="2025/10/12 09:35:09" color="">}}




{{<matomeQuote body="「Microsoftはこの数年で完全に常軌を逸した」って言うけど、君の言うMicrosoftなんて知らないな。僕が知ってるのはCopilot Primeっていう会社だけだよ。" userName="BeetleB" createdAt="2025/10/12 03:25:40" color="#ff33a1">}}




{{<matomeQuote body="今週、MicrosoftからSkypeクレジット更新の通知が何度も来たよ。この会社が見せるものは全部おかしなことばかりだ。大規模なセキュリティ欠陥、プライバシー問題が山積みの手抜きAI機能、何の価値もないOSアップデートの強行、そして邪魔になりそうなものを何でも買収する昔からのやり方。Skypeの買収は2011年に8.5Bドル（今の金で12.24Bドル）だったね。" userName="quitit" createdAt="2025/10/11 23:22:24" color="#ff33a1">}}




{{<matomeQuote body="CEOサティアが原因だよ。あいつは革新的なことできないし、ただ他社の後追いしてるだけだろ" userName="1970-01-01" createdAt="2025/10/12 14:12:24" color="">}}




{{<matomeQuote body="みんなが怒るのが分からないな。この設定を切り替えるのはバックエンドでコストがかかるんだよ。オンにすれば全写真を再スキャン、オフにすればスキャン情報を全部削除だろ。ユーザーはさっさと決めて設定しろってこと。頻繁に大量の処理を発生させたくないだけだよ" userName="yuliyp" createdAt="2025/10/12 01:56:17" color="">}}




{{<matomeQuote body="もしそうなら、切り替え回数がなくなったらオフのままにするはずだろ。実際は、毎月勝手にオンになるんだからな" userName="xigoi" createdAt="2025/10/12 11:58:20" color="">}}




{{<matomeQuote body="サティア・ナデラがMicrosoftを再興させるって強い期待があった時代もあったな。時が経つと色々変わるもんだね！" userName="chanux" createdAt="2025/10/12 03:08:05" color="">}}




{{<matomeQuote body="WindowsからLinuxに切り替えてから毎日、どんどん摩擦が減って、Linuxを学んで使い続けてよかったと心から思ってるよ。Linuxに来いって言うわけじゃないけど、挑戦すれば苦労は報われるってこと。今のMicrosoftは、ユーザーを公然と侮辱してるだけだろ" userName="noisy_boy" createdAt="2025/10/12 02:31:56" color="#785bff">}}




{{<matomeQuote body="90年代のロシアのIT界隈では、Windowsは”マズダイ”、つまり”死ね”って意味で知られてたんだぜ。何も変わってないみたいだな" userName="lstodd" createdAt="2025/10/12 02:41:26" color="">}}




{{<matomeQuote body="このPR担当者は、その返答の非人間性に気づいてるのか？ごまかした無回答でみんなの時間を無駄にしてるって。仕事を続けるために言うべきことを知ってても、心の中ではこの馬鹿らしさに苦しんでるのか、それとも企業の歯車になりすぎて、全てが正しいと思い込んでるのか？" userName="Nition" createdAt="2025/10/12 01:01:18" color="#45d325">}}




{{<matomeQuote body="PRの仕事に固執する連中は、質問にちょっと関係あるけど何の役にも立たない回答をするゲームを楽しんでるんだと思うよ。面接官に質問に答えてないと真っ向から言われずに、どこまで押し通せるか楽しんでるんだろ。そうでもないと、まともでいられないだろうし" userName="staviette" createdAt="2025/10/12 01:38:12" color="#45d325">}}




{{<matomeQuote body="それが彼らの職務記述書なんだろ。彼らは自分たちの言葉がいかに大衆を騙せるかを誇りに思ってるんだろうな。彼らは狡猾で、それを楽しんでるのさ" userName="bapak" createdAt="2025/10/12 03:11:02" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
