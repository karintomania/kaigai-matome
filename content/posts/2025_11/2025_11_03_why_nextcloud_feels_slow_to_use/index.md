+++
date = '2025-11-03T00:00:00'
months = '2025/11'
draft = false
title = 'Nextcloud、なぜか「もっさり」？その使い勝手の悪さを徹底解明！'
tags = ["Nextcloud", "クラウドストレージ", "セルフホスト", "ファイル同期", "パフォーマンス"]
featureimage = 'thumbnails/light-orange1.jpg'
+++

> Nextcloud、なぜか「もっさり」？その使い勝手の悪さを徹底解明！

引用元：[https://news.ycombinator.com/item?id=45798681](https://news.ycombinator.com/item?id=45798681)




{{<matomeQuote body="Nextcloudが存在すること自体は素晴らしいけど、他のものより優れてるとは言えないな。たまに致命的なエラーが出て、修復不能になったり、同期が止まったりするのがマジでイライラするんだよね。「locked webdav」みたいなエラーで80GBの写真も無駄になるし。家族に使わせたいから、安定して動いてくれないと困るんだよ。iCloud以外に、親のiOSで写真ギャラリーをバックグラウンドで同期できるアプリってないのかな？<br>信頼性が低すぎるのが問題だね。" userName="palata" createdAt="2025/11/03 14:35:44" color="#38d3d3">}}




{{<matomeQuote body="写真の用途ならImmichが一番良くて、もっと快適だよ。でも、一般的なDropboxの代替になるものは、まだ見つかってないんだ。" userName="Larrikin" createdAt="2025/11/03 14:56:01" color="#785bff">}}




{{<matomeQuote body="最近、copypartyっていう超軽量な代替ツールが作られたんだって。これなら、みんなが必要とする機能を無駄なく提供してくれそうだね。<br>[0]: https://github.com/9001/copyparty" userName="lompad" createdAt="2025/11/03 14:55:44" color="#45d325">}}




{{<matomeQuote body="それは代替案にはならないね、ファイルしかカバーしてないから。記事にあるように「Nextcloudはファイル、カレンダー、連絡先、メモ、ToDoリスト、写真など、色々なサービスをまとめて置き換えられるのが好きだけど、」ってとこがポイントでしょ。うちの小さな会社（約10人）ではNextcloud AIOが最高だよ。Microsoftから救ってくれて、開発者には本当に感謝してる。Goで書き直されるといいな。" userName="chappi42" createdAt="2025/11/03 15:32:19" color="">}}




{{<matomeQuote body="Dropboxの代替を探してるなら、Syncthingを調べてみて。俺は何年も使ってるけど、すごく満足してるよ。" userName="63stack" createdAt="2025/11/03 15:21:04" color="">}}




{{<matomeQuote body="iOSアプリでデータが消えちゃったから、Nextcloudはもう使うのをやめたんだ。アプリがバックグラウンドで勝手にアカウントから切断されることがあって、FilesアプリからNextcloudにデータを貼り付けたら、同期されずにデータが失われたんだよ。警告も出なかったからね。" userName="benhurmarcel" createdAt="2025/11/03 15:43:44" color="#ff5c5c">}}




{{<matomeQuote body="NextcloudがGoでゼロから完全に書き直されるなんてありえないし、ドイツがどうこうしても、そんなことには全く影響しないよ。" userName="mynameisvlad" createdAt="2025/11/03 15:46:14" color="">}}




{{<matomeQuote body="Syncthing、使ってみたかったけど諦めたんだ。数ダースのmarkdownファイルをラップトップとスマホで同期したかっただけなのに、毎回コンフリクトファイルが発生して、修正する方が時間かかっちゃってさ。一人で使ってるのに何でこんなことになるのか、マジで意味不明だよ。" userName="troyvit" createdAt="2025/11/03 15:33:58" color="">}}




{{<matomeQuote body="Immichは俺も大好きだけど、大規模なライブラリを同期しようとすると、問題がたくさん起きるんだ。iPhoneアプリが途中でフリーズしちゃうこともあるよ。" userName="cortesoft" createdAt="2025/11/03 16:35:56" color="">}}




{{<matomeQuote body="「人々」って言うけど、これほとんど一人の人が書いたんだぜ。マジで驚くほどすごい機能セットだよな。ローンチビデオも見る価値あるよ。<br>https://www.youtube.com/watch?v=15_-hgsX2V0&pp=ygUJY29weXBhc...<br>他の人の貢献を貶めたり、ソフトウェアを批判してるわけじゃない。ただ、この一人が成し遂げた離れ業を伝えたいだけなんだ。" userName="nucleardog" createdAt="2025/11/03 15:21:18" color="#45d325">}}




{{<matomeQuote body="実は、Nextcloudの元フォーク/前身であるOwnCloudが、OCIS（OwnCloud Infinite Scale）として全部書き直してたんだ。最近Kiteworksに買収されて、スタッフと揉めたみたいでさ。<br>それで、チームの大部分が「OpenCloud」を立ち上げたんだよ。これはOCISのフォークで、Nextcloudの強力な競合になってる。Nextcloudより安定しててリソースも少ないけど、機能はファイル共有だけみたいだね。<br>https://github.com/opencloud-eu" userName="preya2k" createdAt="2025/11/03 21:45:04" color="#38d3d3">}}




{{<matomeQuote body="Ente-photoはImmichと同じくらいか、それ以上良いと思うな。<br>https://github.com/ente-io/ente" userName="guilamu" createdAt="2025/11/03 15:04:39" color="#785bff">}}




{{<matomeQuote body="ドイツがなんで公金をこんな民間企業に無駄遣いするんだ？<br>彼らはオープンソースっぽい「コミュニティ」向け提供品にどんどん制限増やしてるし、「エンタープライズ」版の価格はMS365の2倍*なのに機能は少ないし、連携も悪い、おまけにホスティングとかストレージ、メンテの費用もかかるんだぜ？<br>（*Nextcloud Talkを除けば同じだけど、そしたらチャット機能ないしな）" userName="lachiflippi" createdAt="2025/11/03 16:04:51" color="#38d3d3">}}




{{<matomeQuote body="データが完全に消えたことはないけど、やっぱり信頼できないんだよね。長期的に見たらSyncthingの方がずっと使えるってわかったよ。<br>最近3回何かした時も、新しいマシンに古いマシンを置き換える作業だったし。<br>Syncthingは一部のフォルダやファイルをダウンロードしないようにできないのが残念だけど、それらは別のストレージに移したよ。Nextcloudの頭痛の種よりはマシだね。" userName="ToucanLoucan" createdAt="2025/11/03 22:28:09" color="#38d3d3">}}




{{<matomeQuote body="俺はSyncthingを使ってるよ。電話、ノートPC、メディアセンターの間でフォルダを共有してて、全部簡単に同期できるんだ。" userName="exe34" createdAt="2025/11/03 15:16:40" color="">}}




{{<matomeQuote body="「memories for nextcloud」ってのもあってさ、Immichとほぼ同じ機能なんだよ（先月までは上回ってたけど）。Nextcloudにmemoriesを組み合わせると、Google DriveとかDropboxのすごく良い代替になると思うぜ。" userName="redrblackr" createdAt="2025/11/03 16:32:00" color="#38d3d3">}}




{{<matomeQuote body="ああ、そこでの「人々」ってのは、ほとんど一人の男のことだよな。<br>たった一人の開発者で、あの小さなプログラムがこれほどたくさんできるなんて、本当に信じられないよ。" userName="mouse-5346" createdAt="2025/11/03 20:02:02" color="#ff5733">}}




{{<matomeQuote body="一般のDropbox代替はなかなか見つからないよな。俺はSeafile[0]でめっちゃうまくいったんだ。<br>これは完全なグループウェアじゃないけど、ファイル同期/Dropboxソリューションとしては本当に優秀だよ。全部信頼できて速いし、チャンクレベルの重複排除とか、ネイティブアプリもあって、rcloneとかWindowsの仮想ドライブとしてマウントもできる。公開共有、共有ドライブ、E2EEとか、ファイル同期ソリューションに求めることはほぼ全部あるね。<br>唯一気に入らなかったのは、データがディスク上で不透明なチャンクとして保存されること。データベースが壊れたらデータ抽出が大変かもってちょっと心配だったけど、4～5年使って何も問題なかったし、バックアップも取ってたから大丈夫だったよ。<br>[0]: https://www.seafile.com/en/home/" userName="nucleardog" createdAt="2025/11/03 15:18:24" color="#38d3d3">}}




{{<matomeQuote body="でも、それってちゃんと復旧できるの？それとも結局、セットアップが壊れた状態になっちゃう？<br>例えば、iOSから写真をバックアップして、スマホの容量を空けるためにiOSから一部を削除したとするよね（もちろんクラウドには残したいわけ）。で、後でモバイルアプリが同期しなくなったら、一部の写真はiOSに、一部はクラウドに、でもどのデバイスも全部持ってない、みたいな状況になって、簡単に再同期できないのは嫌だなぁ。" userName="palata" createdAt="2025/11/03 18:50:01" color="#ff33a1">}}




{{<matomeQuote body="きっと誤解してるかもだけど、もしかしたら.stignoreファイル[1]を探してるんじゃないかな？もし違ったらごめんね。URL: https://docs.syncthing.net/users/ignoring.html" userName="cG_" createdAt="2025/11/04 11:48:59" color="">}}




{{<matomeQuote body="ああ、気にしないで！それはgitignoreみたいに動くのはわかるんだけど、俺が言ってるのはNextcloudとかDropboxみたいに、どのフォルダーをこのPCに同期するか選べる機能のことなんだ。Syncthingにはないと思うんだよね。謝らないで！助けてくれてありがとう！" userName="ToucanLoucan" createdAt="2025/11/04 11:58:50" color="">}}




{{<matomeQuote body="俺の家のサーバーでOpenCloudが動いてるよ。これはオフィスアプリ向けにCollaboraスイートと連携してるんだ。Draw.ioももうサポートされてるよ。" userName="brendoelfrendo" createdAt="2025/11/04 02:22:42" color="">}}




{{<matomeQuote body="うん、たぶん俺の問題は、モバイルアプリが写真を失くしたり、同期を止めたり、全部同期しなかったりするのを信用できないってことなんだ。それなら全然使えないよ。Nextcloudを信用できないってだけでNextcloudとiCloudを両方使う意味がないよね :D。" userName="palata" createdAt="2025/11/03 18:47:36" color="#ff33a1">}}




{{<matomeQuote body="コミュニティ版にどんな制限があるのか、詳しく教えてくれる？" userName="redrblackr" createdAt="2025/11/03 16:28:14" color="">}}




{{<matomeQuote body="小さいフォルダーならうまく動くけど、数千ファイルあるフォルダーだとめちゃくちゃ遅くなるんだ。空の共有フォルダーにファイルを追加したらほぼ即座に同期するんだけど、写真を撮ると両側はすぐに変更を認識するのに、転送を始める前に5分間何もせずに止まってるんだ。" userName="dns_snek" createdAt="2025/11/03 19:09:24" color="#ff5c5c">}}




{{<matomeQuote body="忘れちゃいけないのが、「コードの多くはバスの中でtmuxとvimを使って携帯電話で書かれた」ってことだね。<br>すごいことだよね。" userName="tspng" createdAt="2025/11/03 20:34:14" color="">}}




{{<matomeQuote body="iPhoneアプリはバックアップを有効にしても復旧しない時があり、一度は45000枚の画像・動画を再同期するためにアプリの再インストールが必要だった。サーバーも奇怪なエラーで再起動や、データベースエラーでフル再インストールが必要なことも。俺は熟練のシステム管理者だけど、このプロジェクトにはまだいくつかの問題があると感じるね。" userName="cortesoft" createdAt="2025/11/03 19:00:44" color="#ff5c5c">}}




{{<matomeQuote body="500ユーザーを超えると、OIDCや2FAに必要なNextcloudのアプリストアが使えなくなるよ。アドオンは手動で入れられるけど連携はダメ。クローズドソースらしい通知プッシュサービス[0]も、ドキュメントがあれば自分で立てられるんだけどね。ログイン画面にはエンタープライズ版の広告バナーが出るし、管理者には広告メールが来る。「fair use policy」[1]も曖昧なんだ。<br>URL: [0] https://github.com/nextcloud/notifications/issues/82 <br> [1] https://nextcloud.com/fairusepolicy/" userName="lachiflippi" createdAt="2025/11/03 16:49:04" color="#ff5c5c">}}




{{<matomeQuote body="Collaboraを設定するためのDocker composeファイルは提供してるけど、他のアプリについては、ましてや連携については情報が見つからないんだ。どこで何がサポートされてるか確認できるかな？" userName="brnt" createdAt="2025/11/04 09:37:55" color="">}}




{{<matomeQuote body="Go製のOpenCloud（https://opencloud.eu/de）ってファイル共有・ストレージソリューションがあるんだって。次これ試してみようと思ってるんだ。期待できそうだね。" userName="thuttinger" createdAt="2025/11/03 15:11:00" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="携帯でmicro-editor（https://micro-editor.github.io/）を動かしてみたけど、tmuxとvim使う人はすごいよね。<br>Androidだと普通にタイピングするのが一番で、ctrlとか押すのは嫌だったんだ。microは素晴らしいからピッタリで、携帯でPCよりPythonコード書いてたよ。<br>UserLandでAlpine動かしてて、Python動かすのに苦労したけど、色々学んだな。解決策はすごくハッキーだったけど（たぶんgcompat）、気に入ってたんだ。" userName="Imustaskforhelp" createdAt="2025/11/03 22:26:03" color="">}}




{{<matomeQuote body="JavaScriptの量が問題なのは分かるけど、Nextcloudはキャッシュされててももっさりするよね。<br>カレンダーページの更新でネットワーク呼び出しが124回もあって、31回もキャッシュされてないんだって。カレンダーごとに30ms以上かかる呼び出しをしてるから、カレンダーが多いほど積み重なるね。<br>JavaScriptのパフォーマンスを見たら、作業の半分以上がこれらの非同期呼び出しと、それらをページに表示する更新作業に費やされてる。通知とかグループとかも全部個別のネットワーク呼び出しをしてるんだ。だから遅いんだと思うよ。<br>2.5Gbpsのローカルネットワークでも1秒、4Gだと33.10秒もかかるんだ。この設計がレイテンシに弱いってことだね。" userName="PaulKeeble" createdAt="2025/11/03 15:08:24" color="#ff5c5c">}}




{{<matomeQuote body="JSのサイズが問題なのは初回ダウンロード時だけだから、記事の不満は遅さの根本原因じゃないと思うな。<br>JS最適化の“犯人”はだいたい次の通りだよ。1. 大量の小さいファイル（バンドルすべき！） 2. たくさんのAJAXリクエスト（WebSockets使え！） 3. 競合状態（バグ直せ！） 4. 多すぎるJSアニメーション（CSSを使え！）。<br>Nextcloudは2番の「たくさんのAJAXリクエスト」が原因で遅いみたいだね。<br>RESTはモバイルネットワークで超遅いんだから、もうRESTは“お休み”させたら？WebSocketsの方がはるかに優れてるし、もう15年も経ってるんだよ。" userName="riskable" createdAt="2025/11/03 15:54:45" color="#ff33a1">}}




{{<matomeQuote body="15MBのJavaScriptは、ブラウザが実行しようとしている15MBのコードってことだよね。<br>「100万行のコードをコンパイルするのって、1000行よりもずっと時間かかるでしょ？」っていうのと同じ考えだよ。" userName="fwlr" createdAt="2025/11/03 16:00:55" color="">}}




{{<matomeQuote body="それはもっと複雑だよ。<br>15MBのJSファイルでも、関数が必要な時に呼ばれるだけならオーバーヘッドはすごく低いんだ。現代のJSエンジンはJITコンパイルするし、”ホット”な部分は最適化されるからね。<br>問題は、ページロード直後に15MBのJSがすぐに実行されて、たくさんのネストされた呼び出しがある場合だよ。DRY原則はコードの可読性にはいいけど、JSの実行パフォーマンスには必ずしも理想的じゃないんだ。<br>現代のバンドラーがファイルサイズ最適化に偏りすぎてるのが残念だね。JSエコシステム全体が「一つのことをうまくやる小さなパッケージ」の巨大なカオスで、それが不必要なネストを生んでるんだよ。" userName="riskable" createdAt="2025/11/03 16:29:03" color="#ff5c5c">}}




{{<matomeQuote body="15MBのJSは、解釈モードで実行されても、ページがロードされるたびに全部パースされる必要があるんだよ。<br>低スペックのデバイスだとキャッシュがすごく少ないから、ワーキングセットが使えるキャッシュよりもはるかに大きくなって、パフォーマンスがガタ落ちするんだ。" userName="Joeri" createdAt="2025/11/03 17:03:51" color="">}}




{{<matomeQuote body="ああ、それだよ。「ページロード時」っていうのは、一回だけのコストなんだ！<br>最新のページルーティングを使ってるなら、「新しいURLをロードする」のは実際には新しいページをロードしてるわけじゃないからね。<br>それに、15MBのJSなんて現代の“低スペックデバイス”でも全然平気だよ。古いRaspberry Pi 2だってへっちゃらだし、それより遅いデバイスなんて俺の問題じゃない！笑<br>10年前のデバイスをサポートし続けるのは、最新・最高の技術を提供する上で割に合わない時が来るんだよ。「いいものが手に入らない！」じゃなくて、「お前にはいいものが手に入らないんだ！」ってね。" userName="riskable" createdAt="2025/11/03 17:33:05" color="">}}




{{<matomeQuote body="こんな考え方でコード書かれたら、俺の最新CPU（16コア、4GHz、64GB RAM）でもPentium 3（900MHz、512MB RAM）みたいに感じちゃうよ。<br>マジでやめてくれ。" userName="snovv_crash" createdAt="2025/11/03 17:51:35" color="">}}




{{<matomeQuote body="俺のiPhone 11はそんなに古くないけど、Chromeに最適化されたサイトは重いんだよな。M1 Airでもたまにキツい時があるし。もう2026年が近いんだから、クソみたいなWeb開発のせいでクライアントデバイスのせいにするのはやめようぜ。" userName="port11" createdAt="2025/11/04 12:10:12" color="#ff5733">}}




{{<matomeQuote body="10年前のデバイスをサポートするのは無理って言うけどさ、昔と今じゃ10年のハードウェアの進化が違うんだよ。2015年でも2005年のPCはまあまあ使えたし。10年前のハードで動かないなら、5年前のとか低予算の人も大変だろ。コストはわかるけど、どこまで最適化するかってのは慎重に決めるべきで、適当に「俺の知ったこっちゃない」とか言うのはダメだぜ。" userName="fluoridation" createdAt="2025/11/03 19:44:11" color="#785bff">}}




{{<matomeQuote body="「モバイルネットワークでRESTコールよりWebSocketsのレイテンシが低い理由が分からない」って言ってたけどさ、それはTLSハンドシェイクに複数回のラウンドトリップが必要だからだよ。接続を開きっぱなしにすれば、ハンドシェイクは一回で済むから速くなるんだ。" userName="fluoridation" createdAt="2025/11/03 16:02:24" color="#ff5c5c">}}




{{<matomeQuote body="HTTPって接続をオープンにしたままにするんじゃないの？" userName="binary132" createdAt="2025/11/03 18:45:40" color="">}}




{{<matomeQuote body="それはクライアントがどう処理するか次第だよ。WebSocketsに切り替えるとレイテンシが改善される理由を説明しただけだし。もしレイテンシの改善がないなら、クライアントがリクエスト間で接続を維持してるってことだね。" userName="fluoridation" createdAt="2025/11/03 19:24:51" color="">}}




{{<matomeQuote body="AIにWebSocketsが通常のHTTPより低レイテンシな理由を聞いてみたよ。接続セットアップなし、モバイルの無線モデム状態の維持、メッセージあたりの処理層の少なさ、CORSプリフライトなし、ウォームパス効果、TLSハンドシェイクを一回で済ませるってのが大きな理由だって。モバイル環境では、HTTPよりWebSocketsの方が安定して速いってことみたいだね。" userName="riskable" createdAt="2025/11/03 16:47:50" color="#ff5c5c">}}




{{<matomeQuote body="おいおい、非効率すぎるだろ。俺が言ったことと全く同じ内容を20倍も文字数かけて言ってんじゃん。<br>もちろん、暗号化されてないHTTPリクエストは1回のラウンドトリップで完了するぜ。WebSocketで接続を維持すれば、接続設定の追加コストも節約できるしな。" userName="fluoridation" createdAt="2025/11/03 17:25:39" color="">}}




{{<matomeQuote body="はいでもいいえでもないな。問題はTLSハンドシェイクが複数回のラウンドトリップを必要とすることだと考えたことある？（皮肉）" userName="cloudfudge" createdAt="2025/11/03 18:50:34" color="">}}




{{<matomeQuote body="WebSocketsをRESTの代わりにするって話は聞いたことないな。これって一般的に推奨されてる解決策じゃないの？モバイルクライアント専用の話なのか？" userName="Yokolos" createdAt="2025/11/03 16:15:11" color="">}}




{{<matomeQuote body="WebSocketsは、少〜中規模アプリに最高の「ライブ」機能をもたらす魔法だよ。リクエスト／レスポンスの枠を超え、ユーザーがサーバーにずっと繋がるのが最大の魅力。処理結果リアルタイム送信、UIへの進捗表示、ライブデバッグログ、キャンセル、ユーザーへのY/N確認、ネストRPCも簡単だ。RESTだと手間がかかる機能も、WebSockets（HTTP/3も）ならゲームチェンジャーだぜ！ぜひ試してみて！" userName="DecoPerson" createdAt="2025/11/03 17:44:06" color="#ff5733">}}




{{<matomeQuote body="DecoPersonがWebSocketsを愛するように、誰かにあなたを愛してもらいなよ。" userName="tyre" createdAt="2025/11/03 19:48:08" color="">}}




{{<matomeQuote body="長年の開発経験から言うと、HTTPとWebSocketsはこう使い分けるのがベストだよ。<br>ブラウザの最適パスがあるならHTTP、 shittyなファイアウォールがあるならHTTP、リクエストが稀ならHTTP。<br>それ以外はWebSocketsでしょ！めっちゃすごいからね。RESTよりコードがシンプルになるし、API設計も楽になるよ。<br>コラボレーションエディタのプロジェクトでは、「call」/「call:ok」構造でWebSocket APIを組んでるんだ。<br>エラーは別のフォーマットで返すんだけど、昔は「:err」だったっけな。あと、SophosXG Firewall、WatchGuard、McAfee Web GatewayっていうクソファイアウォールはWebSocketsが使えないから気を付けてね。" userName="riskable" createdAt="2025/11/03 17:21:45" color="#ff5733">}}




{{<matomeQuote body="なんでWebSocketsなの？30個のデータが必要なら、凝ったプロトコルで一つずつストリームするか、全部一気に要求するかだろ？<br>普通のHTTP(S)で後者はいけるし、APIがRESTfulじゃなくても問題ないじゃん。" userName="amluto" createdAt="2025/11/04 09:24:53" color="">}}




{{<matomeQuote body="じゃあ、SSEについてはどう思う？" userName="jadbox" createdAt="2025/11/04 01:45:08" color="">}}




{{<matomeQuote body="来週はSync Confだね。Nextcloudみたいな問題がなくなることを期待してるよ。<br>Electric SQLみたいに、変更を一括でフェッチするAPIが大事なんだ。https://electric-sql.com/docs/api/http<br>チームがデータロードをうまくやるのは稀だし、キャッシュもなかなか効果的じゃない。でも、新しい同期のアイデアは、クライアントに必要なデータを一貫して提供する魅力的な可能性を秘めてるね。<br>あと、TC39のimport source提案 https://github.com/tc39/proposal-source-phase-imports がNextcloudみたいな大規模アプリのJS読み込み遅延に役立つといいな。<br>Nextcloudのwaterfall問題はマジでヤバいと思うよ！" userName="jauntywundrkind" createdAt="2025/11/03 16:39:40" color="#785bff">}}




{{<matomeQuote body="Nextcloudのカレンダー、数年前は最高だったのに！Thunderbirdのアドオンとか色々試したけど、ダントツで良かった。<br>なのに、ある時「リデザイン」されてから、もう完全にクソになったよ。見た目は幼児向けだし、イベントの追加や編集がマジで苦痛。時間範囲の指定も変でイライラする。<br>カレンダーがないよりはマシだけど、ギリギリのレベルだね。<br>オープンソースのカレンダーサーバーはいっぱいあるけど、良いWebベースのカレンダーって全然見つからないんだよな。" userName="bityard" createdAt="2025/11/03 19:05:08" color="#ff5c5c">}}




{{<matomeQuote body="Nextcloudのソフトフォークをメンテしたことがあるんだけどさ、マジでパフォーマンスが残されてる部分が多すぎだよ。<br>ちょっとパッチを当てるだけでファイルマネージャーのレンダリング速度が格段に上がったもん。<br>問題は、コア自体が何層にも重なったコードの塊みたいで、根本的な問題を直さずに、ただ新しい層を追加してる感じなんだよね。<br>「根本的に間違ってる？じゃあRedisを追加しとけ。効果あるか？知らん。また何か追加しよ。」みたいなサイクルで、結果には全く信用してないから、結局プロジェクトは放棄したよ。<br>OwncloudがGolangで再構築したのは、この辺の問題を認識してたからじゃないかな？これらのプロジェクトは「overbuild」（過剰構築）に苦しんでると思う。<br>あと、この「overbuild」が、Nextcloudみたいなオープンソースソリューション周りのホスティングビジネスを活気づけてるんだろうね。<br>過剰設計でドキュメントもひどいから、うまく動かすには専任のシステム管理者チームが必要になるってわけ。" userName="dingdingdang" createdAt="2025/11/03 15:10:55" color="#785bff">}}




{{<matomeQuote body="僕もそう思うよ。Nextcloudはまるでサイロみたいに少しずつ成長してきたんだよね。<br>それぞれの機能は昔からのプラグインが持ち込まれたものだから、Ajaxコール全部で共通のWebSocketバスがなかったりするんだ。<br>Nextcloudはモジュール化しすぎて、パフォーマンスを犠牲にしちゃったんだね。もっとドキュメント共有に特化した、まとまりのあるツールが必要だよ。<br>正直、IaCとコンテナがある今の時代なら、SSOで連携するたくさんのツールを使う方が、セルフホスティングには良いアプローチだと思うな。<br>「Unix哲学」だよね、一つのことをうまくやるっていう。" userName="INTPenis" createdAt="2025/11/03 16:23:22" color="#ff5c5c">}}




{{<matomeQuote body="h2が同じSSLトンネルで全部のHTTPリクエストを並行して処理できるのに、なんで共通のWebSocketバスが必要なの？" userName="eYrKEC2" createdAt="2025/11/04 03:39:38" color="">}}




{{<matomeQuote body="それでも、アプリをまたいだ認証、 centralなファイル共有、アクセスルール、それにプロジェクトの概念が必要だよね。" userName="rahkiin" createdAt="2025/11/03 17:59:26" color="#785bff">}}




{{<matomeQuote body="2つ質問があるんだけどさ。1. 君の基本パッチでバックポートリクエストはしたの？もし桁違いの速度改善なら、共有しないと損だよ！2. Nextcloudを動かすのにsysadminチームなんて絶対いらないって。うちの会社じゃ（大組織だけど）3つのインスタンスが動いてるし、そのうち専任がいるのは1つだけだよ。俺なんて個人用と100人規模のNPO用を自分で回してるけど、設定しちゃえば全然手間じゃないんだ。他のシステムの方がよっぽど設定が面倒だって、信じてくれよ。" userName="redrblackr" createdAt="2025/11/03 16:41:53" color="#ff5c5c">}}




{{<matomeQuote body="1. そもそもバックポートする意味がなかったんだ。パッチの多くは機能を無効化するもので、upstreamには乗せられないからね。例を挙げると、サムネイル生成のひどいパフォーマンス。これはハックして、画像だけのシンプルな生成に置き換えたら、ファイルマネージャーがちゃんと動くようになったんだ。2. それは議論の余地があるかな、スキルにもよるかもね（俺のせいかもしれないけど）。それに、きれいに整理できないシステムにどれだけ慣れてるかの問題でもある。記事みたいに、俺もあの肥大化には我慢できなかったし、気分が悪くなったよ。結局GDPRの要件で、複数のドメインでGoogleに移行したんだ。<br>あと、オンラインでのフォルダーリスト再生成はマジでシシュポスの岩運びだよね。マルチユーザーとアクセストークンを電話やPCのファイルシステムにちゃんと組み込む方法が必要だよ。一番近いのはGoogle Driveだけど、OS側でセキュリティとクロスエコシステム対応が必要だよね。Apple、MS、Android、iPhone、Linuxとか。…ああ、HTMLのスパゲッティを磨き続けるしかないか、はは。" userName="dingdingdang" createdAt="2025/11/03 22:39:08" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="OSSプロジェクトへの不満に対して「じゃあ自分で直せよ」って言うのは嫌われるって分かってるけど、ここのコメント欄見てると、そう思わずにはいられないんだよな。Nextcloudが遅い、肥大化してる、ダメだって50〜100人も言ってるのに、a)有効な代替案を出さない、b)行動しない、ってのはどうなんだろうね。<br>俺はNextcloudが遅くても大好きだよ。自分のストレージを持てるし、魂を悪魔（データ）に売らずにGoogle Driveみたいなことができる。コードもオープンだから自分でパッチ当てられるし。大量のJavaScriptをダウンロードして数秒待つのが悪いかって？うん、悪い。でもそれに対して金を払ったか？いや。Nextcloudを選んだ結果、俺が製品になったか？いや、それもない。<br>基本的なファイルシステムに加えて、Dropboxの代替機能があって、拡張機能や追加ツールを「お買い物」できるのが、超クールで楽しいんだ。パスワードマネージャーを自分で持ちたい？ほら、できる。カレンダー、メール、カンバンを一つにまとめたい？ほら、できる。コードベースはAGPLで、インストールも簡単、アップデートごとに大手術もいらないし。もう6年以上、何のトラブルもなく動かしてるよ。<br>みんなのデータを吸い取ろうとする邪悪な巨大テック企業が作ったプラットフォームみたいに速くてスムーズだったらって思う？そりゃそうだよ。でもNextcloudが存在してくれて嬉しいか？うん！<br>ここまで読んでくれた君、ぜひ試してみてくれよ。無料だし、すぐに削除できるけど、もし改善できることを見つけて、やり方を知ってるなら、手伝ってくれ。それは俺たちみんなの助けになるんだから。" userName="xandrius" createdAt="2025/11/03 21:13:37" color="#ff33a1">}}




{{<matomeQuote body="うん、前のコメントが俺の気持ちを完璧にまとめているね。俺は追加機能には手を出さないことが多いかな。品質が当たり外れだからね（公平に見て当たりが多いけど）。でも、Nextcloudみたいなものが使えるってのは、本当に特別なことなんだ。無料のパッケージとして、Nextcloudは俺にとって計り知れない価値があるよ。最近は、Nextcloudについて悪いことを言うときは、必ずその価値も一緒に付け加えるようにしてるんだ。" userName="aeldidi" createdAt="2025/11/04 06:25:21" color="">}}




{{<matomeQuote body="正直に言うとね、NextcloudがGSuiteみたいに組織やパワーユーザーからの有料課金で資金を得てる競合と戦うとして、どうやって同じような機能パリティを維持しつつ、「今は大変だけど長期的には良い」ってエンジニアリングを期待しろっていうんだ？それはちょっと無理があるんじゃないかな。" userName="nxobject" createdAt="2025/11/04 12:03:29" color="#38d3d3">}}




{{<matomeQuote body="この論文はNextcloudがなぜ遅く感じるのかをちゃんと説明できてないと思うんだ。大量のJavaScriptがダウンロードされる大きな数字は示してるけど、それが実際にユーザー体験にどう影響するのか？「遅い」Nextcloudは、ただこれらのJSアセットがロードされてパースされるのを待ってるだけなのかな？<br>俺の経験からすると、これはパフォーマンスに意味のある影響は与えてないんだ。パフォーマンス問題は、フロントエンドの「偶然のO(N^2)ロジック」、最適化されてないUIの更新、そして多すぎるAPIコールから来てるんだよ。" userName="madeofpalk" createdAt="2025/11/03 15:33:08" color="#38d3d3">}}




{{<matomeQuote body="大量のJavaScriptがダウンロードされて、解凍されて、パースされて、実行されて、何億ものonFoundMyNavelイベントコールバックが全部JavaScriptを走らせて、何百万ものスクリプト断片がそれぞれの仕事をする間、無制御なDOM操作があらゆる方法で行われて、DOMコンテンツレディイベントに応答してxhrがxhrを呼び、数えきれない例外が投げられては飲み込まれ、いくつかの少し非最適化な（でもそこまでひどくない）ページ巡回があって、…リストは延々と続くんだ。要するに、これ全部が積み重なるし、15MBものコードがあれば、これら全部が起こる機会は山ほどあるってことだよ。俺、昔大きなサイトで働いてたとき、ホームページが200KB超えたらストップウォッチ出してナイフでコードを削ってたんだ。だってそれは俺たちがずさんになってるってことだったからね。" userName="hamburglar" createdAt="2025/11/03 15:46:54" color="#ff5c5c">}}




{{<matomeQuote body="15メガバイト以上の実行可能コードって、多くのAAAゲームと比べてもかなり正気じゃないように見えるよね。Unity WebGLビルドでも、10メガバイト未満でちゃんとしたものが作れるんだから。" userName="bob1029" createdAt="2025/11/03 15:59:15" color="#785bff">}}




{{<matomeQuote body="そういうコードサイズだと、分析してみると13種類のjQueryと100種類の独特なconsole.logラッパーが見つかるんだよね、きっと。" userName="hamburglar" createdAt="2025/11/03 16:12:34" color="#ff33a1">}}




{{<matomeQuote body="そうだよな、Windows 3.11は1.44MBのフロッピーディスク6枚で提供されてたんだぜ。今のソフトウェアは本当にひどいよな。" userName="72deluxe" createdAt="2025/11/03 16:34:22" color="">}}




{{<matomeQuote body="Windows 3.11もモバイル回線で使ったら、6x1.44MBでも激遅だったろうな。Nextcloudのもっさり感、そういうことじゃない？" userName="hamburglar" createdAt="2025/11/03 16:42:38" color="">}}




{{<matomeQuote body="でもさ、少なくとも彼らは早すぎる最適化をしてないんだよな。" userName="nikanj" createdAt="2025/11/03 21:43:17" color="">}}




{{<matomeQuote body="確かに。毎回全部ダウンロードされるならキャッシュがおかしいね。ページ読み込み時にリソースを先読みしすぎてるのも原因かもな。" userName="shermantanktop" createdAt="2025/11/03 15:37:18" color="#45d325">}}




{{<matomeQuote body="15MBものJavaScript読み込みをキャッシュで隠すのは、深刻なごまかしだよ。" userName="hamburglar" createdAt="2025/11/03 16:05:27" color="">}}




{{<matomeQuote body="その通り！でも通常のキャッシュなら、記事で言ってるような結果にはならないはずだよ。コールドスタートには影響するけど、ページを開くたびには起きない。だから何か別の問題があるんだろ。" userName="shermantanktop" createdAt="2025/11/03 22:02:42" color="#ff33a1">}}




{{<matomeQuote body="いろんなセルフホスト型ファイルマネージャーを試したよ。Pydioは遅くてダメ、Nextcloudもやめた。FileRunは速くて良かったけど有料になっちゃった。SeaFileは設定が難しかったな。copypartyはシンプルで速いけど、一般向けじゃないしFileRunの「ファイルリクエスト」機能が懐かしい。https://github.com/9001/copyparty" userName="RiverCrochet" createdAt="2025/11/03 14:45:37" color="#ff5c5c">}}




{{<matomeQuote body="セルフホストのファイルマネージャーならfilebrowserがいいよ。Syncthingと組み合わせれば、Dropboxみたいなのが簡単に作れるよ。<br>https://github.com/filebrowser/filebrowser<br>https://github.com/hurlenko/filebrowser-docker" userName="accrual" createdAt="2025/11/03 16:20:39" color="#785bff">}}




{{<matomeQuote body="俺も同じ。最近filebrowser-quantumに乗り換えたよ。まだ完全にオススメはできないけど、期待できそう。Docker Composeでの設定は少し手間がかかったけど、元のもそうだったからね。https://github.com/gtsteffaniak/filebrowser" userName="iN7h33nD" createdAt="2025/11/04 05:35:06" color="">}}




{{<matomeQuote body="FileRunの「ファイルリクエスト」機能は、copypartyの「shares」（--shr）機能で同じことできると思うよ。一時的なアップロードリンクを作れるし、既存ファイルは見せないようにできる。デモはこちら: https://a.ocv.me/pub/demo/#gf-bb96d8ba%26t=13:44" userName="tripflag" createdAt="2025/11/03 18:51:13" color="#ff5c5c">}}




{{<matomeQuote body="copypartyは片方向同期しかできないから、Nextcloudの代わりにはならないことが多いよ。Syncthingとの組み合わせを考えてるんだけど、CPU使用率が上がらないか心配なんだ。誰か試した人いる？" userName="t_mann" createdAt="2025/11/03 16:48:37" color="">}}




{{<matomeQuote body="copypartyとSyncthingの組み合わせは extensively にテストしてないけど、問題を聞いたことはないよ。symlinkベースのファイル deduplication もちゃんと動くみたい。でも、copypartyの.histフォルダはデバイス間で同期しない方がいいかも。CPU使用率が高いのは、ファイルが continuously に modified されるときに reindex するからだよ。何か issue があったら教えてね！" userName="tripflag" createdAt="2025/11/03 18:56:24" color="#ff5733">}}




{{<matomeQuote body="Nextcloudには愛憎半ばだよ。家族写真のバックアップに7年使ってるけど、Google Docs みたいにはいかないし、使いづらい部分も多い。大きいファイルの uploading は finicky だし、thumbnail の loading もめちゃ遅いんだ。でも、他に replacement がないし、プライベートな場所でファイルを保存できるのは本当にありがたいから感謝してるよ。" userName="aeldidi" createdAt="2025/11/03 19:05:38" color="#38d3d3">}}




{{<matomeQuote body="Immich ってそれのこと？ちょっと触ってみたけど深くは調べてないんだ。pictures と videos に関しては、何でもできるって言ってるよね。" userName="realaaa" createdAt="2025/11/03 22:59:31" color="">}}




{{<matomeQuote body="Immich は実際 usable だよ！thumbnail previews も setup なしで動くし、mobile app もすごく responsive なんだ。Nextcloud と違って、信頼できるし、issue なしで upgrade できる気がするね。" userName="nyadesu" createdAt="2025/11/04 00:09:43" color="#38d3d3">}}




{{<matomeQuote body="それは really promising だね、もしかしたら僕の家族には Immich の方が向いてるかも。でも、Nextcloud も management はほぼ painless だよ。オールインワンの Docker setup はかなり solid だと思うね。" userName="aeldidi" createdAt="2025/11/04 06:19:53" color="#ff5c5c">}}




{{<matomeQuote body="僕の Nextcloud は general な file storage として使ってるんだけど、家族が主に photo を使うから、その aspect を強調したんだ。Immich は聞いたことあるから、perhaps いつか honest に try してみるべきかな。" userName="aeldidi" createdAt="2025/11/04 06:15:43" color="">}}




{{<matomeQuote body="photo storage だけが必要なら Immich の方が way better だよ。Google Photos level だからね。" userName="jacooper" createdAt="2025/11/03 23:58:20" color="#45d325">}}




{{<matomeQuote body="Nextcloud は bloated で slow だけど、works して reliable だよ。ビジネスで8人くらいの daily user で何年も動かしてるけど、rock solid で zero maintenance なんだ。みんな web apps は遅いから使わないで、desktop sync client が primary interface だね。IMAP authentication plugin が main feature で、これがあるから使い続けてるよ。" userName="bogwog" createdAt="2025/11/03 15:17:04" color="#45d325">}}




{{<matomeQuote body="Web apps は slow である必要はないよ。僕は system apps より web apps の方が好きで、 extra programs を install しなくて済むし、uMatrix で tracking stuff を block したり、uBlock で unwanted element を block したり、userstyle で見た目を変えたりできるからね。" userName="imcritic" createdAt="2025/11/03 15:25:17" color="#38d3d3">}}




{{<matomeQuote body="君は web-based file browser も prefer するの？僕の Nextcloud の main use は files で、desktop sync は crucial だし、OS と integrates してるのが重要なんだ。" userName="Jaxan" createdAt="2025/11/03 17:41:53" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
