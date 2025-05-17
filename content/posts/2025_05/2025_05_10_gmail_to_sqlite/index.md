+++
date = '2025-05-10T00:00:00'
months = '2025/05'
draft = false
title = 'GmailをSQLiteに！'
tags = ["SQLite", "Gmail", "データベース", "データ管理", "プログラミング"]
featureimage = 'thumbnails/blue2.jpg'
+++

> GmailをSQLiteに！

引用元：[https://news.ycombinator.com/item?id=43943236](https://news.ycombinator.com/item?id=43943236)




{{<matomeQuote body="なんでヘッダーをバラバラのカラムにしたの？全部まとめてheadersっていうJSONカラムにして、生成列とか式インデックスを使えばパフォーマンスも大丈夫だし、あとから必要なヘッダーだけインデックス付きで追加できて便利だよって提案。具体的なSQL例もあるよ。" userName="unsnap_biceps" createdAt="2025/05/10 06:58:54" color="#785bff">}}




{{<matomeQuote body="てかさ、生成列いらないかも。SQLiteは式インデックスもできるから、json_extract(headers, ’$.Subject’)みたいに式に直接インデックス貼れるんだ。<br>CREATE INDEX subjectidx ON messages(json_extract(headers, ’$.Subject’))<br>これでその式を参照するクエリでインデックス使ってくれるよ。俺は生成列じゃなくて、こういうインデックスと、その式を使うVIEWを組み合わせるのが好きだな。テーブルの中身を変えなくて済むし。" userName="Hakkin" createdAt="2025/05/10 10:45:29" color="#45d325">}}




{{<matomeQuote body="あと、VIEWとインデックスならデータ自体は変わらないから、https://github.com/fsaintjacques/recordlite みたいなツールでスキーマ管理を自動化できるらしいよ。" userName="pkhuong" createdAt="2025/05/10 13:12:23" color="">}}




{{<matomeQuote body="これいいね！結構好きだな〜。" userName="snthpy" createdAt="2025/05/12 18:14:57" color="">}}




{{<matomeQuote body="いやー、めっちゃタイミングいい情報だわ。ちょうどこういうやり方探してたんだよね。サンキュー！" userName="randito" createdAt="2025/05/10 19:34:59" color="">}}




{{<matomeQuote body="一時的なクエリのためにインデックス追加するのってあんまり良くなくない？俺はいつも使うって分かってるカラムは、特にメールヘッダーみたいに安定してるやつは、分けて置く方が好きだな。<br>JSONカラムだとスキーマ変更は楽だけど、それって書き込みの面倒を読み込みの面倒に変えてるだけだし、こっそり失敗しちゃう可能性もあるしね。" userName="tqi" createdAt="2025/05/10 15:44:21" color="#38d3d3">}}




{{<matomeQuote body="俺もPostgreSQLで同じようなやり方よく使うんだ。<br>最初は必要なフィールドだけ決めてテーブル作って、それ以外のメタデータは全部JSONカラムに入れとく。で、数ヶ月経って「あ、このフィールド必要だわ」ってなったら、JSONから移したりAPIで更新したりVIEW作ったりする。<br>これは「全部mongoにぶち込め」とか「ファイルシステムに置いとけ」みたいなやり方と違って、あとから柔軟に対応できるし、そんなにコストもかからないからマジ助かる。" userName="timeinput" createdAt="2025/05/10 19:22:43" color="#ff5c5c">}}




{{<matomeQuote body="dkimカラムをNOT NULLにしてるけど、メールにDkim-Signatureヘッダーがない場合ってどうなるの？" userName="dotancohen" createdAt="2025/05/10 07:38:08" color="">}}




{{<matomeQuote body="多分、<br>Error: stepping, NOT NULL constraint failed: messages.dkim (19)<br>みたいなエラーになると思う。MySQLと違って、SQLiteはJSONのnull値にはSQLのNULLを返すみたいだからね。" userName="hun3" createdAt="2025/05/10 08:28:37" color="#ff5c5c">}}




{{<matomeQuote body="うん、hun3が言った通りエラーになるね。急いで作った例だから間違ってたよ。閉じカッコも一個足りなかったのに今気づいた。やっちまった〜。" userName="unsnap_biceps" createdAt="2025/05/10 10:16:11" color="">}}




{{<matomeQuote body="json_extractみたいな表現に直接インデックス作ることもできるよ" userName="formerly_proven" createdAt="2025/05/10 10:45:25" color="#ff5c5c">}}




{{<matomeQuote body="何年か前にGmailみたいな大量のメールを可視化するもの作ったことあるよ<br>Githubのリンク貼っとくね<br>https://github.com/terhechte/postsack" userName="terhechte" createdAt="2025/05/10 06:19:43" color="#38d3d3">}}




{{<matomeQuote body="これすごいね<br>ディスク使用量可視化ツールみたいだけど、ディスク使用量よりメールの総量に焦点を当ててるみたい<br>サイズオプションもある<br>どの送信者が一番容量食ってるか知りたいな<br>あと、君のウェブサイトのSSL証明書が期限切れだよ" userName="andai" createdAt="2025/05/10 06:25:01" color="#ff5c5c">}}




{{<matomeQuote body="今はないんだ<br>でも簡単に追加できると思うよ<br>しばらくツール更新してないんだ<br>証明書教えてくれてありがとう" userName="terhechte" createdAt="2025/05/10 07:44:01" color="">}}




{{<matomeQuote body="面白そうだね<br>readmeにあるgmvaultへのリンクが無効になってるみたいだけど、これであってる？<br>https://github.com/gaubert/gmvault<br>サンキュー" userName="mywacaday" createdAt="2025/05/10 10:17:28" color="#785bff">}}




{{<matomeQuote body="＞ readmeのgmvaultへのリンクは無効になってるみたいだけど、これであってる？https://github.com/gaubert/gmvault<br>面白いことに、そのページが指してるgmvault.orgドメインはGoDaddyの駐車場サイトだよ<br>あと、ソースファイルじゃない2つを除いて10年以上更新されてない" userName="sgbeal" createdAt="2025/05/11 13:24:04" color="#ff33a1">}}




{{<matomeQuote body="これ面白そうだね<br>前にもqdirstatで似たようなのをDIYしたことあるけど、あれは日付フォルダみたいにメールを特定の方式で整理しないといけないし、違う基準で再分類できないんだ<br>一方で、qdirstatの”キャッシュ”ファイルは生成がすごく簡単だから、たくさんのファイルみたいなものの可視化に使えるよ" userName="nijave" createdAt="2025/05/10 13:39:07" color="#ff5733">}}




{{<matomeQuote body="アプリケーション固有パスワードでもサインインできなくなって、oauthクライアント取ってoauthフロー通さないといけないの、マジで残念だわ<br>自分のメールなのに、Googleが自分自身でアクセスするためのオープンスタンダードまで奪っちゃうんだから" userName="the_mitsuhiko" createdAt="2025/05/10 08:25:16" color="">}}




{{<matomeQuote body="無料のGmailアドレスで受け取るスパムの量（有料のフリーランス用と比べて）、あとGmailサーバーからGmailじゃない自分のアカウントで受け取るスパムの量考えると、どんどんdegooglingしたくなるわ<br>特に、フリーランスのメールが受信側でスパム扱いされてるって情報が増えてるから<br>でも、Googleエコシステムの習慣からどうやって抜け出すか、よく分かんないんだよね<br>気が重い感じ" userName="sdoering" createdAt="2025/05/10 10:25:35" color="">}}




{{<matomeQuote body="少しずつやってるよ。`Postfix`で`*@immibis.com`のメール受け取れるようにした。まずは重要じゃないメーリングリストとかに使ってて、今は新しいアカウント登録にデフォルトで使ってる。失敗しても大したことないことからね。でも銀行口座とかには絶対`gmail`使うな。向こうは法人だからこっちのサーバーに問題あると対応してくれないだろうし。<br>Googleから99%脱却できれば十分じゃないかな。銀行アプリは`Android`だしね。`Youtube`もまだ代替できてないし。<br>`Mozilla`がプライバシー嫌いって言い出した後、`Firefox`ベースの`Zen Browser`にブラウザは変えてる途中だよ。" userName="immibis" createdAt="2025/05/13 15:27:54" color="#38d3d3">}}




{{<matomeQuote body="あと、ステップ０として自分のメールドメインを買うのがいいと思うよ。" userName="someguydave" createdAt="2025/05/10 14:00:04" color="">}}




{{<matomeQuote body="思ってるより難しくないと思うよ。俺は`https://mailwip.com`にお金払ってる。そこの創業者が設定を手伝ってくれたんだ。結局のところ、比較的簡単だったよ。今も払い続けてるのは、彼の仕事に感謝してるし、俺のメールは完璧だし、彼らが提供するログが気に入ってるからさ。" userName="codazoda" createdAt="2025/05/10 19:05:51" color="">}}




{{<matomeQuote body="俺も数年前から自分でメールをホスティングしてるけど、今のところ配信の問題はないな。ただ`DNS`の設定を全部ちゃんとやることと、`DO`とか`AWS`みたいな評判の悪い`IP`範囲は避けるようにすることだよ。" userName="acheong08" createdAt="2025/05/10 17:59:45" color="">}}




{{<matomeQuote body="有名な`MX`ホストを使えばこんなことにはならないよ。" userName="someguydave" createdAt="2025/05/13 01:24:08" color="">}}




{{<matomeQuote body="ごめん、なんでアプリ固有のパスワードがオープンスタンダードで、`oauth`は違うって思うの？" userName="kasey_junk" createdAt="2025/05/10 13:39:19" color="">}}




{{<matomeQuote body="`POP3`とか`IMAP`は、それに対応してるどんなクライアントでも動くよね。`OAuth`は全然違うんだ。俺が作った`OAuth`連携は、いつもちょっとしたカスタム開発が必要な感じだった。<br>あと、自分のデータにアクセスするためのトークンを取る`OAuth`フローも普通に最悪だよ。自分のトークンを得るためだけに、一時的なウェブアプリ立ち上げて大量のリダイレクトを処理しないといけなかったことさえあるんだから！" userName="simonw" createdAt="2025/05/10 15:42:15" color="#ff5733">}}




{{<matomeQuote body="プロキシ作ったらしく、IMAP/POP/SMTP そのままで OAuth 知らなくていいらしいよ。これでめっちゃ簡単になるってさ。ここで見れるって： https://github.com/simonrob/email-oauth2-proxy" userName="sir" createdAt="2025/05/10 15:52:58" color="#38d3d3">}}




{{<matomeQuote body="OAuth 知らなくていいって言うけど、client_id/client_secret 取るのがそもそも大変なんだよね。今はアカウントごとに whitelist するか Google 認証通さないといけないし。昔は誰でもOKな client_id もあったんだけど、もう過去の話。" userName="the_mitsuhiko" createdAt="2025/05/10 16:48:53" color="#ff5733">}}




{{<matomeQuote body="それってさ、プロトコルどっちが好きかって話で、オープンかどうかとは違うんじゃない？正直そっちの話だったらもっと分かりやすかったし、混乱しなかったと思うよ。" userName="kasey_junk" createdAt="2025/05/10 20:07:52" color="">}}




{{<matomeQuote body="違いをはっきりさせとくね。IMAP は RFC標準プロトコルで Google の許可いらない。OAuth は標準じゃないしプロバイダーごとに違う（Outlook と Google とか）。それに Google の許可（client_id 取得とか審査）が絶対いるんだ。開発用アプリは100人までで、それもユーザーをちゃんと whitelist しないといけないよ。" userName="the_mitsuhiko" createdAt="2025/05/10 21:01:02" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それは IETF 標準にこだわる話で、俺は違う考えだけど、それは置いといて「オープンさ」とは別次元だよ。プロトコルって公開されてて広く使われてればオープンなんだ。今回の設定（OAuth/XOAUTH2かな？）はそうじゃない？" userName="tptacek" createdAt="2025/05/10 22:29:20" color="">}}




{{<matomeQuote body="Google に App password はもうないよ。" userName="the_mitsuhiko" createdAt="2025/05/11 09:44:11" color="">}}




{{<matomeQuote body="それ100%違うよ。App password で機能作ったし、毎日使ってるもん。" userName="isaachinman" createdAt="2025/05/11 09:50:49" color="">}}




{{<matomeQuote body="うちの Google Workspace だと App password がユーザー設定に出ないんだ。ドキュメントも非推奨って書いてあるし、IMAP docs は OAuth2 だけサポートってなってる。でも、直接ページ行けばまだ使えるかもって見たから、今から試してみるね。" userName="the_mitsuhiko" createdAt="2025/05/11 14:59:56" color="#45d325">}}




{{<matomeQuote body="Marco（https://marcoapp.io）ではApp Passwordsを使ってるよ、メールのスコープで特権的なOAuthアクセスを得るのが不必要なくらい厳しいプロセスだからね。<br>ここにユーザー向けにリンクしてるサポート記事があるよ：https://support.google.com/accounts/answer/185833<br>でもWorkspaceだとちょっと違うんだ。管理者がApp Passwordsを有効にする必要があるんだよ。" userName="isaachinman" createdAt="2025/05/11 16:22:07" color="#ff33a1">}}




{{<matomeQuote body="最近、自分のアプリ（[0]）にGmailを連携させようとしたんだけど、マジで時間をかけすぎたわ。Gmailのサポートはやらないことに決めたよ。<br>“Gmail to SQLite”の記事には認証を動かすのに6ステップって書いてあるけど、僕の場合は全然違った。<br>6ステップの後、<br>– Googleがアプリが公開されてないって言うから公開した<br>– Googleは自分がworkspaceユーザーじゃないからアプリはinternalにできないって言った<br>– 外部アプリの場合、<br>– アプリが検証されるまで使えないって言った<br>– 検証ではドメイン、住所、他の詳細を聞かれた<br>– スコープの正当化を聞かれた<br>– アプリがどう使われるか説明するビデオを要求された<br>– 提供したデータの検証に時間がかかると言われた<br>全部、設定の迷宮みたいだよ。ユーザーにGoogleが要求するハードルを越えさせるなんて、単純に無理すぎる。<br>リンク：<br>[0] https://github.com/rumca-js/Django-link-archive" userName="renegat0x0" createdAt="2025/05/10 19:56:23" color="#38d3d3">}}




{{<matomeQuote body="GoogleがAPIキー取るのに人々に飛び越えさせるハードルは、マジでクレイジーだね。<br>なんでこんなにひどいの？誰か理由知ってる？" userName="bradgessler" createdAt="2025/05/10 20:03:23" color="">}}




{{<matomeQuote body="多分、誰かのメールアカウントにAPIアクセスできたらゲームオーバーだからだよ。<br>そして人々はバカだから、怪しいアプリにもYesってクリックしちゃうだろうね。そしたらGoogleが守ってくれなかったって非難されるんだよ。" userName="victorbjorklund" createdAt="2025/05/10 21:48:02" color="#ff33a1">}}




{{<matomeQuote body="そうしないとさ、大量の人が匿名で、めちゃくちゃ広いスコープでAPIキーを作っちゃうからだよ。<br>それが必然的に悪用された時、Googleのイメージが傷つく結果になるからね。" userName="IMTDb" createdAt="2025/05/10 20:31:59" color="#ff5c5c">}}




{{<matomeQuote body="普通の昔ながらのIMAPをApp Passwordで使えばいいじゃん。<br>あいつらのハードルを飛び越える必要ないって。" userName="isaachinman" createdAt="2025/05/10 20:42:35" color="#ff5c5c">}}




{{<matomeQuote body="毎年IMAPオプション（”app passwords”ってやつ）は、設定のどんどん奥深くに埋められていくんだよね。" userName="xyzzy123" createdAt="2025/05/10 21:26:36" color="">}}




{{<matomeQuote body="本当にそうだよ。今有効にするの、かなり面倒になった。2FAを含む複数の要件があるんだ。" userName="isaachinman" createdAt="2025/05/10 21:52:59" color="">}}




{{<matomeQuote body="最高のオープンソースのGmailバックアップソフトって何かな？誰かセットアップしたことある？（添付ファイルもまるっとアーカイブするやつとか）" userName="oulipo" createdAt="2025/05/10 11:33:53" color="">}}




{{<matomeQuote body="https://github.com/GAM-team/got-your-back<br>– オープンソース<br>– レジューム機能（だからバックアップ/リストアは最終的に完了するよ）<br>もう一つのおすすめ：https://www.mailstore.com/en/products/mailstore-home/<br>– オープンソースじゃない<br>– インデックス付きのGUI：ローカルでメール検索するのに良い<br>– レジュームはバックアップのみ（だから大きなリストアはだいたい失敗するよ）" userName="Leftium" createdAt="2025/05/10 12:31:01" color="#38d3d3">}}




{{<matomeQuote body="俺，長いこと：https://github.com/gaubert/gmvault使ってて調子いいんだ．でもGYBは活発にメンテされてるみたいだから，乗り換えるべきかな．" userName="crazygringo" createdAt="2025/05/10 17:28:50" color="">}}




{{<matomeQuote body="ちなみに，前にgmvault使ってたんだけど（個別の圧縮解除とか，squashfsでまとめるのが面倒だった），アーカイブ検索が不便だったから，https://github.com/karteum/gmvaultdbっての作ったよ．ローカルのsqlite DBに変換できるんだ．（個人用だしシンプルにしたけど，大きくなったらスキーマ変えるかも．添付ファイルはDBじゃなくてファイルシステムに直接出したよ）<br>あと，https://takeout.google.com/のmboxも処理できるけど，Takeoutは古いエンコーディングのバグで情報失うことあるから，gmvaultかimapでのバックアップの方がいいかもね．" userName="karteum" createdAt="2025/05/11 01:24:36" color="#38d3d3">}}




{{<matomeQuote body="これが求めてるものと完全に一緒じゃないけど，GoogleにはTakeoutってサービスがあるよ．Gmail含め全部のデータをダウンロードできるんだ．数ヶ月ごとにこれやってローカルにバックアップしてるよ．確かgzippedなmboxファイルでくるはず．" userName="sbarre" createdAt="2025/05/10 11:45:20" color="#ff5c5c">}}




{{<matomeQuote body="そうなんだろうけど，俺は”continuously”やりたいんだ．心配してるのは，Googleが何か適当な理由でアカウントをロックすることだからさ．" userName="oulipo" createdAt="2025/05/11 08:01:56" color="">}}




{{<matomeQuote body="IMAPクライアントを使う手もあるよ．オフライン／ダウンロードモードに設定すれば，全部ダウンロードしてローカルに保存できるんだ．Evolutionだと”offline mode”って名前だったと思うけど，Thunderbirdとか他のクライアントはわかんないな．" userName="nijave" createdAt="2025/05/10 13:36:00" color="#ff33a1">}}




{{<matomeQuote body="これって”imap to sqlite”とかにするべきじゃない？なんで特定のメールプロバイダに結びつけるの？" userName="TekMol" createdAt="2025/05/10 06:32:17" color="">}}




{{<matomeQuote body="だってGmailに特化してるんだもん．OAuthとかAPIアクセス使ってるでしょ．IMAPはもっと難しいし，遅いし，Googleの帯域制限に引っかかるからさ．" userName="isaachinman" createdAt="2025/05/10 07:49:36" color="#785bff">}}




{{<matomeQuote body="Google TakeoutでGmailからmboxをエクスポートするの，けっこう速いよ．" userName="pastage" createdAt="2025/05/10 11:17:26" color="">}}




{{<matomeQuote body="え，何？あれ予約しないといけないし，文字通り3日待たないと始まらないんだよ．それからダウンロードできるようになるまで一日かかることもあるんだ．全然速くないってば．" userName="remram" createdAt="2025/05/10 14:33:33" color="">}}




{{<matomeQuote body="そんなに待ったことないよ．いつも20分くらいでダウンロードできるし，データは15 GBだよ．" userName="kilroy123" createdAt="2025/05/10 16:01:29" color="">}}




{{<matomeQuote body="そんな経験ないなー．何かスケジュールする必要もないし，ダウンロードできるようになるまでせいぜい1時間くらいじゃない？でも，壊れてたり需要が高かったりした時もあったのかもね？" userName="crazygringo" createdAt="2025/05/10 17:25:20" color="">}}




{{<matomeQuote body="ちなみに，俺は何年も`imap`で`Gmail`バックアップ試したけどダメだったんだよね．ツールも駄目．多分古すぎるメールは取れないとか？だから`Google`のAPIの方がマシなのかも（知らんけど）．まあ，今`Google Takeout`で`mbox`形式取れるからかなり楽になったよ．でも，継続的な更新はできないんだよね．俺は結局`infomaniak`ってとこに移行したんだけど，自分のドメイン名使ってて本当に良かったと思ったね．" userName="phh" createdAt="2025/05/10 12:20:12" color="#785bff">}}




{{<matomeQuote body="俺も`Google`やめた時同じ問題あったよ．データ量少なかったから，過去検索用に内容だけ欲しくて荒っぽい解決策やったんだ．ローカルPCに`Thunderbird`とか入れて，両方のメアドでログイン．メールを片方からもう片方にコピーするだけ．ローテクだけど結構うまくいったよ．ヘッダー残るかは要確認だけど，俺にはどうでも良かったな．いつか`Gmail`移行プロセスについて記事書きたいわ．" userName="pertique" createdAt="2025/05/10 13:48:30" color="#ff5733">}}




{{<matomeQuote body="`imapsync`使った？`https://imapsync.lamiral.info/`" userName="natmaka" createdAt="2025/05/11 04:41:30" color="">}}




{{<matomeQuote body="全文検索も有効にできるといいね" userName="yread" createdAt="2025/05/10 06:35:29" color="">}}




{{<matomeQuote body="そうそう！検索会社がやってるのに，`Gmail`の全文検索はびっくりするほどダメだと思うんだよね．" userName="padjo" createdAt="2025/05/10 07:18:09" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="でも，`Outlook 365`の検索よりはマシかな…" userName="porker" createdAt="2025/05/10 09:16:19" color="">}}




{{<matomeQuote body="`iOS`と`macOS`の`Mail.app`も同じくらいひどいけどね" userName="jbverschoor" createdAt="2025/05/10 10:12:15" color="">}}




{{<matomeQuote body="最近AIが悪くなって、かなりひどくなったよ。今は馬鹿な同義語を使うんだ。“doctorate”って検索すると、“he’d”みたいな“D”だけのインスタンスまでハイライトし始める。（多分Ph.D.を拾おうとしてる？）しばらくは“A”で検索しても“the”までハイライトされてたんだ。" userName="NelsonMinar" createdAt="2025/05/10 14:13:54" color="">}}




{{<matomeQuote body="これはマシな方だよ―YahooやThunderbirdデスクトップよりは俺の経験上ね。ただ、gmailの帯域制限を突き破るのが怖くて、Thunderbirdにはフルメッセージをダウンロードしないけど。" userName="jgalt212" createdAt="2025/05/10 14:21:08" color="">}}




{{<matomeQuote body="探してるメールの件名にある、かなり珍しい単語ペアで検索したのに、的外れな結果が20件も出たよ。見つける唯一の方法は送信者と日付でフィルタリングすることだった。" userName="padjo" createdAt="2025/05/11 10:12:07" color="">}}




{{<matomeQuote body="面白いね…俺も昨日同じことやったんだ、ドメイン別に受信者メールをリスト化したかったから。<br>コードはひどいけど、ここにあるよ。<br>https://github.com/hugoferreira/gmail-sqlite-db" userName="bytter" createdAt="2025/05/10 20:20:56" color="">}}




{{<matomeQuote body="そうそう。俺もドメインと送信者でグループ化するためにやったよ。" userName="alimbada" createdAt="2025/05/10 20:22:50" color="">}}




{{<matomeQuote body="少しPostgresをバックエンドにしたIMAPサーバー Archiveopteryxを思い出したよ。<br>https://github.com/aox/aox<br>AOXのスキーマはいつもすごく良いなと思ってたんだけど、まだちゃんと試せてないんだ。主にメールのAnalyticsと検索のために使いたかったんだ（普段使いのIMAPサーバーじゃなくて）。" userName="EvanAnderson" createdAt="2025/05/10 19:29:54" color="">}}




{{<matomeQuote body="Manitou-Mailを思い出したな、強力なPostgreSQLベースの普段使いのメールクライアントで、かなり堅牢でパワフルだよ。<br>https://www.manitou-mail.org/" userName="natmaka" createdAt="2025/05/11 04:37:50" color="">}}




{{<matomeQuote body="その情報ありがとう。面白そうなアプローチだね。" userName="EvanAnderson" createdAt="2025/05/11 15:03:32" color="">}}




{{<matomeQuote body="ここでの帯域幅のコストはどうなるの？<br>40GB以上のGmailアカウントを持ってるんだけど、このツールを使って転送したら課金されるのかな？<br>Google Take Outを使えば簡単に直せると思うんだ（名前合ってるかな？）。それは無料だと思うし、ダウンロードしたファイルをパースすればいいから。<br>それでも、立ち上げて使うって意味ではこのツールの方が速いだろうけど。" userName="ThinkBeat" createdAt="2025/05/10 19:33:24" color="#45d325">}}




{{<matomeQuote body="面白いツールだね。今試してるところだよ。個人のアカウントなのにGoogleの管理パネルでいくつか面倒な手順を踏まなきゃいけなくて、たぶんOAuthの組織とか作らされたんだと思う…今はメッセージ同期してるけど、すっごく遅いんだよね。Async処理とか使うともっと速くなるかもね。" userName="rantingdemon" createdAt="2025/05/11 15:15:24" color="#ff5c5c">}}




{{<matomeQuote body="google takeoutのmbox形式もサポートしてくれたらよかったのにね。" userName="shinryuu" createdAt="2025/05/11 02:54:28" color="">}}




{{<matomeQuote body="これすごい良さそう、シンプルだし。たぶん試すよ。将来、添付ファイルのメタデータ（とか添付ファイルそのものへのアクセス）も含まれるようになる可能性はある？" userName="hamburglar" createdAt="2025/05/10 16:52:18" color="">}}




{{<matomeQuote body="いろんなプラットフォームのsqlite exporterはアーカイブに超便利だよね、もちろん他の用途にも。俺は mail2db ってやつで、使わないメアドで毎月どれくらいメール来るか調べたことがあるよ。送信者のトップ10を見て、購読解除したり再登録したりしたんだ。" userName="flas9sd" createdAt="2025/05/10 13:09:31" color="#45d325">}}




{{<matomeQuote body="最高！機能リクエスト：メールの内容を解析して購読解除リンクを抽出して、よく来る送信者から簡単に購読解除できるようにしてほしいな。" userName="vladgur" createdAt="2025/05/10 23:51:05" color="#785bff">}}




{{<matomeQuote body="俺も Got Your Back と LinqPad で C# を適当にいじって、似たようなことやったことあるよ。自分のメール分析するためにね。" userName="alimbada" createdAt="2025/05/10 19:53:45" color="">}}




{{<matomeQuote body="そういえば、昔、ずいぶん前に自分のGmailのXMLフィードを取得できた時期ってなかったっけ？" userName="1vuio0pswjnm7" createdAt="2025/05/11 03:58:59" color="">}}




{{<matomeQuote body="これって単一テーブルのDBなんでしょ？だったらcsvとかdataframeとかにエクスポートして、分析パッケージ使ってやりたいこと分析する方が良くない？正直、ユースケースを理解してないか、Gmailアカウントが実際にどれくらい大きいか考えてないだけかもだから、もしそうなら無視してくれていいよ！" userName="noer" createdAt="2025/05/10 18:35:45" color="">}}




{{<matomeQuote body="いくつか思いつく理由があるよ：<br>・プレーンテキストの検索はO(n)だけど、適切にインデックス付けされてる（今どきFTS5で超簡単）SQLiteデータベースの検索は、最悪ケースO(log n)でベストケースはO(1)。これでdataframeとかよりSQLiteが良い理由は説明できないけど、大量のメールを扱うならプレーンテキストより良いのは確か。<br>・SQLiteはカスタムビューとかプログラムを作りやすい。ほとんどの主要なプログラミング言語で問題なく使えるよ。simonwのdatasette.ioも見てみて。<br>・SQLiteは、もしデジタル保存の深い世界に行きたいなら、アメリカのLibrary of Congressで認められてるアーカイブ形式なんだ。" userName="hiAndrewQuinn" createdAt="2025/05/10 18:43:36" color="#45d325">}}




{{<matomeQuote body="個人的には、Googleが送ってくるメールのバックアップ（たぶん大きなemlファイル）をパースするスクリプトの方が良かったな。" userName="jokoon" createdAt="2025/05/10 07:01:56" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
