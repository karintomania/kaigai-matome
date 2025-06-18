+++
date = '2025-06-11T00:00:00'
months = '2025/06'
draft = false
title = '驚異の記録！ GitHubリポジトリ10億個達成！'
tags = ["GitHub", "リポジトリ", "開発", "システム", "プログラミング"]
featureimage = 'thumbnails/purple3.jpg'
+++

> 驚異の記録！ GitHubリポジトリ10億個達成！

引用元：[https://news.ycombinator.com/item?id=44252076](https://news.ycombinator.com/item?id=44252076)




{{<matomeQuote body="OSMの1億回目コミットを思い出したよ。何人か狙ってたけど、アフリカをマッピングしてた人が偶然達成したんだって。その人はOSM賞にもノミネートされたことあるんだ。OSMはライブだから変なものは作りにくいのが大きいかもね。そのおかげで偶然の人が達成しやすいのかも？どっちにしても、GitHubにとっても楽しい成果だね！OSMのマイルストーンについてもっと読みたい人は公式ブログを見てね。https://blog.openstreetmap.org/2021/02/25/100-million-edits-... 僕が書いた当時の changeset の活動に関する記事はこちら。https://www.openstreetmap.org/user/LucGommans/diary/395954" userName="Aachen" createdAt="2025/06/11 23:03:35" color="#45d325">}}




{{<matomeQuote body="友達が会社のHelp Deskで100万個目のTicketを作るために丸一日費やしたことがあるよ。どうやったか知らないけど、みんなでお祝いしたんだ。たぶん15年くらい前の話だけど、あの頃のTech業界はもっと楽しかった気がするな。" userName="ash_091" createdAt="2025/06/12 02:29:00" color="">}}




{{<matomeQuote body="昔、FQAの仕事で99,999番目と100,000番目のTicketに関わったことがあるよ。研修中にデモで作っただけで、すぐ消したけどね。誰もCoolな数字なんて気にしてなかったな。" userName="deruta" createdAt="2025/06/12 15:03:16" color="">}}




{{<matomeQuote body="初めての仕事でJIRA-1337を登録したんだ。周りの若いNerdyなゲーマー仲間にはちょっと自慢だったけど、マネージャーはネタで登録したかったらしくて微妙な顔されたな。でも、ちゃんと仕事のバグを登録したから、数字のためにやってるわけじゃないって感じで満足だったよ。" userName="jpsouth" createdAt="2025/06/12 16:02:33" color="">}}




{{<matomeQuote body="今日の最新IDはいくつになってるんだろうね？気になるな。" userName="darkwater" createdAt="2025/06/12 06:21:22" color="">}}




{{<matomeQuote body="Awesome！GitHubのOpenAPI Specも、Workflowの実行IDみたいにint32がオーバーフローし始めるまで、あと10億個ちょっとだね！<br>https://github.com/github/rest-api-description/issues/4511" userName="caleblloyd" createdAt="2025/06/11 22:54:35" color="#ff33a1">}}




{{<matomeQuote body="前にCTOをやってた会社で、重要なテーブルの主キーに32ビット整数を使ってたんだ。既に13億行あって、このままいったら数ヶ月でオーバーフローするペースだったから、ヤバい大惨事を防ぐために急いで64ビットにアップグレードするプロジェクトをやったよ。" userName="bartread" createdAt="2025/06/11 23:05:56" color="#ff5733">}}




{{<matomeQuote body="そういうプロジェクトって、どんな課題があるの？いつも何人くらいでやるの？サービス停止したりするの？インフラとかコード的に大きな技術的課題だったりするの？" userName="gchamonlive" createdAt="2025/06/11 23:25:28" color="#38d3d3">}}




{{<matomeQuote body="へへっ、これ、俺が働いた会社のうち少なくとも5社で見た光景だよ。DB見てみろよ、通貨がfloatだったり、笑えるindex、integer overflow寸前、中身すっからかんなデカい型とかさ。" userName="hobs" createdAt="2025/06/11 23:08:07" color="">}}




{{<matomeQuote body="経験浅いからちょっと気になったんだけど、decimalにindex張るの何が悪いの？floatよりdecimalの方が一貫性あって予測可能だし、そんな大したことないんじゃない？間違ってたら教えて。CMIIW" userName="azophy_2" createdAt="2025/06/12 01:51:28" color="">}}




{{<matomeQuote body="ああ、大した問題じゃないけど、結局役に立たないんだ。だってさ、価格だけってカラムでクエリすることないだろ。カテゴリと価格みたいにいくつか一緒にクエリするから、そういう時は複数カラムのindex使うんだよ。価格だけのindexなんて絶対使われないんだ。" userName="rudasn" createdAt="2025/06/12 04:09:19" color="">}}




{{<matomeQuote body="もし”高価な商品トップ100”とか、$0.01～$10、$10.01～$100とかの範囲で商品の数を数えたい場合はどうするの？もちろんfull table scanでもできるけど、商品がたくさんあったら価格にindexがあればどっちのクエリもすごく速くなるよ。もちろん、価格変更や商品の追加削除の時のindex更新の手間を補えるほどindexが使われるか検討は必要だけどね。" userName="cwbriscoe" createdAt="2025/06/12 07:05:11" color="#38d3d3">}}




{{<matomeQuote body="index追加は手っ取り早い解決策だね、確かに。でもそれはOLTPシステムにOLAPの質問してるようなもんだよ。そういう質問は、少なくとも本番から切り離したread replicaとか、もっと言えばanalytics DBでやるのがベストさ。" userName="erulabs" createdAt="2025/06/12 07:33:44" color="">}}




{{<matomeQuote body="元のコメンターじゃないけど、こういう件のポストモーテムをいくつか読んだことあるよ。結論から言うと「イエス」、課題はあるし、時には停止時間とかbreaking changesは避けられないね。まず、IDが2^31のsigned integer限界に近づいてるってことは、定義上ほぼ20億行、めちゃくちゃデカいDBテーブルってことだよ！そんな量のデータに素早く変更加えられるシステムなんて一握りさ。何やっても何時間も停止するか、増分／ローリング変更を慎重に調整する必要がある。この問題はビジネスで最も重要で「一番デカい」テーブル、例えば「売上明細」とか「ユーザーコメント」で最初に現れがちで、誰も気にしないような周辺的なものではないんだ。<br>次に、小さいinteger IDを使ってるなら、その理由はきっとそのintegerを外部キーとして使ったり、セカンダリindexを効率化するためだろう。GUIDはいくつかの点では「単純」だけど、ストレージが4倍必要（MySQLやSQL Serverみたいなクラスター型DB使ってるとして）。32ビットから64ビットに変えるだけでも、たくさんの場所でストレージサイズが倍になる。20億行だと、最低8GB以上、全てのテーブルとindex合わせたらまず間違いなく100GB超えるよ。<br>3つ目、多くのDBエンジンは型が一致しないと外部キー制約の設定を拒否する。これがビッグバン変更とか、移行中のめちゃくちゃ複雑なデータの複製を強制する場合がある。<br>4つ目、これは全てのAPI、内部外部両方にとってbreaking changeだ。全てのORM、REST endpointなんかは新しいメジャーバージョンに更新しなきゃいけない。分析、ETLジョブなんかも全て手を入れなきゃいらんない可能性だってある。<br>楽しい時間だね。" userName="jiggawatts" createdAt="2025/06/11 23:33:10" color="#ff33a1">}}




{{<matomeQuote body="＞ まず、IDが2^31 signed integerの限界に近づいてるなら、定義上ほぼ20億行だ<br>ここだけちょっと揚げ足取りたいんだけど、これは厳密には絶対真実じゃないんだ。いくつかのシステムでは、insert失敗でもカウンターは増えるし、行を削除しても通常は削除されたIDを再利用できない（新しいinsertは現在のカウンターを使う）。もちろん、それはどうでもいいポイントなんだけどね。：この限界に近づいてるテーブルの典型的なケースは、ものすごくデカいテーブルだよ。" userName="lcnPylGDnU4H9OF" createdAt="2025/06/11 23:52:13" color="">}}




{{<matomeQuote body="これ、よく分かんないんだけど。out of production read replicaって何？なんで本番のread replicaじゃダメなの？あと、この文脈での”analytics db”って何のこと？" userName="robertlagrant" createdAt="2025/06/12 08:56:22" color="">}}




{{<matomeQuote body="カラムの型変更自体は大したことないんだけど、巨大なテーブルだと簡単な作業じゃないんだ、だけどそれに加えて、そのカラムに触れる全ての場所で型を変更しなきゃいけない、代入されたりコピーされたり、ネットワーク越しに送られて仮定されてる場所で逆シリアル化されたり、全てのテストとか、もう延々とだよ。もしint.MaxValueに特別な意味を持たせてたりしたらもう神に祈るしかない（幸い俺たちの場合はそうじゃなかったけど）。<br>当時のホスティング環境はdata centreでストレージに限りがあったから、ちょっと厄介だった。理想的には、テーブルのコピーを作ってPKカラムを広くして両方のテーブルに書き込んで、それから読み込みを移行するとかだけど、テーブルがデカすぎて十分な空き容量がなかったからできなかったんだ。ドライブ増やせはしたけど何週間もかかったりして—cloud portalでスライダー動かすみたいにはいかない。で、もちろん誰かが物理的に繋ぎ込むためのメンテナンス時間をスケジュールしなきゃいけない。特に2017年後半から2018年前半だったことを考えると、もう絶対的に古臭かったね。<br>徹底的にテストするために複数の環境が必要なんだけど、その時点ではほとんど持ってなかったし、主要なシステムコンポーネント全部に影響したから、プラットフォーム全体を再デプロイしなきゃならなかった。それに、PKカラムが影響を受けたから、段階的な移行とかロールバックなんて、プロジェクトがもっと複雑になってずっと時間がかからないとできなかった—32ビットinteger値を消費する速さから見て、そんな時間はなかったんだ。<br>結局、何事もなくうまくいったけど、本番に投入する時はまだちょっと手に汗握る瞬間だったね。" userName="bartread" createdAt="2025/06/12 00:00:35" color="#45d325">}}




{{<matomeQuote body="データベースをキュー代わりに使うのはダメだけど、実際やってる所あるし、そういうシステムだと行数が少なくても問題起きるんだよね。" userName="lmm" createdAt="2025/06/12 01:02:12" color="">}}




{{<matomeQuote body="SQLServerが強制終了されると、PKのインクリメント値が1000も増えちゃうんだって。" userName="jamwil" createdAt="2025/06/12 02:25:32" color="">}}




{{<matomeQuote body="よくやった！これを維持してる縁の下の力持ちはすごいね。最初にint32を選んだ人たちはもういないんだろうけど（笑）。" userName="robertlagrant" createdAt="2025/06/12 08:47:23" color="">}}




{{<matomeQuote body="JavaScriptだと、i32からi64に変えるとDBドライバーが値を文字列とかBigIntで返すようになるんだ。IEEE754じゃなくなるからAPIの変更が必要になるよ。それが嫌ならUUIDにしちゃうのもありかもね。JavaScriptの安全な最大整数を超えてもそのまま使うハックもあるけど、後でヤバいバグになる可能性大だよ。" userName="tengbretson" createdAt="2025/06/12 02:21:27" color="#38d3d3">}}




{{<matomeQuote body="CDCイベントをSnowflakeとかDatabricksみたいな所にストリームして、リードレプリカを作れば、そこで色んなOLAP分析ができるよ。" userName="gkalin59" createdAt="2025/06/12 14:05:59" color="">}}




{{<matomeQuote body="このコメント、int64も将来int128とかint255に変わる時にまた使えるね。" userName="ipaddr" createdAt="2025/06/12 20:35:29" color="">}}




{{<matomeQuote body="かわいそうなSQL Serverが何百万回もクラッシュして、ID値が何十億にもなっちゃったのを想像しないようにしよう！" userName="jiggawatts" createdAt="2025/06/12 12:57:05" color="">}}




{{<matomeQuote body="UUIDに移行した方がいいんじゃない？ handlingを楽にするパッケージもあるみたいだけど、古いi32 IDをマッピングする簡単な方法は必要だけどね。" userName="dietr1ch" createdAt="2025/06/12 04:09:38" color="">}}




{{<matomeQuote body="昔のプロジェクトでi32からi64への変更があったんだけど、TypeScriptのフロントエンドが大きくて古くて、型の修正がめっちゃ大変だったんだ。数千件もエラーが出て。時間もなかったから、サーバーからの応答部分だけ型を直して、他の場所はnumber型のままにしたんだ。実際はstringだけどね。IDで数値計算ってほぼしないから大丈夫だったんだ。後で少しずつstring型に直していけたんだ。一気に全部じゃなくてね。今思うと変なやり方だけど、あの時は sensible に思えたんだ。良い思い出だよ :)" userName="roberttod" createdAt="2025/06/12 04:34:16" color="#ff5c5c">}}




{{<matomeQuote body="サイト全体って読み取り専用DBから配信すりゃいいんじゃね？なんでメインDBと別に分析用DBがあんの？" userName="robertlagrant" createdAt="2025/06/13 08:33:50" color="">}}




{{<matomeQuote body="負荷を分けるためだよ。ユーザーの速いクエリと分析の重いクエリを混ぜないんだ。レプリカを分ければ、分析でユーザーが遅くなるのを防げるんだよ。" userName="erulabs" createdAt="2025/06/15 20:05:40" color="#ff5733">}}




{{<matomeQuote body="MySQLテーブルでそれやったわ〜。一番良かったのは、結局そのテーブルが（移行してだいぶ経ってから）廃止されたこと。データモデル自体がおかしかったんだよね。" userName="darkwater" createdAt="2025/06/12 06:25:42" color="">}}




{{<matomeQuote body="まずはdecimalsが必要だけど、インデックスを全ての列に、複数回作ったの見たことあるよ。インデックスの合計サイズが元データの26倍とかになるやつ…しかもまだ書き込んでるのに。" userName="hobs" createdAt="2025/06/13 03:04:33" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="bignums使えってマジで。ちゃんとした型システムなら、効率のために小さい表現を使えるし、うっかりシステム壊したりしない。暗号に出てくるような数字も…数字として扱えるし、Base64とかのバイト列じゃなくて済むんだ。マシンワードは効率のためのハックだよ。" userName="eadmund" createdAt="2025/06/13 13:15:33" color="">}}




{{<matomeQuote body="Amazon社内でも同じ話があったらしいぞ。" userName="cyberax" createdAt="2025/06/12 04:13:53" color="">}}




{{<matomeQuote body="数週間前、LuaコミュニティでLuaRocksが65535パッケージ超えた件で問題になったんだ。LuaJITでの実装とぶつかって、一部の人のCI/CDが動かなくなった。すぐ直ったけど面白かったよ！<br>[1] https://github.com/luarocks/luarocks/issues/1797<br>[2] https://github.com/openresty/docker-openresty/issues/276" userName="neomantra" createdAt="2025/06/12 09:56:57" color="#38d3d3">}}




{{<matomeQuote body="Appleにいれば良かったな〜。みんな知ってると思うけど、Appleは昔から「Radar」っていう内部ツールを使ってるんだ。RadarにはID（バグ番号）があるんだよ。100万番とかのは特別だった。失敗しない限り（チームをがっかりさせない限り）、中はジョークだらけの偽Radarだったんだ。一つ開けば他のRadarに飛んで…大抵そのままrabbit holeにハマって楽しむんだよね。チャンスあったのにいくつか（印刷でも）取っておかなかったの、マジで馬鹿だったわ。" userName="JKCalhoun" createdAt="2025/06/12 00:48:19" color="">}}




{{<matomeQuote body="Googleでは、monorepoのVCSで変更に増えるだけのIDを付けてるんだ。残念ながら数年前、キリ番に近づいた時に、IDを取ろうとするスクリプト攻撃でシステムが止まった。だから今は大きなキリ番の近くはIDを飛ばしてるんだ:( スキーマ設計で学ぶべきことがあるんだろうな…" userName="bjackman" createdAt="2025/06/12 06:54:46" color="#ff33a1">}}




{{<matomeQuote body="GitHubの最初のrepo IDは1だよ。ここから見れる：<br>https://api.github.com/repositories/1<br>実体はこれ：https://github.com/mojombo/grit" userName="8organicbits" createdAt="2025/06/11 22:46:25" color="">}}




{{<matomeQuote body="最初のcommitはこれだよ：<br>https://github.com/mojombo/grit/commit/634396b2f541a9f2d58b0..." userName="dgellow" createdAt="2025/06/12 09:30:52" color="">}}




{{<matomeQuote body="100万個目のrepoは”vim-scripts/nexus.vim”だって。<br>1000個目は消えてるみたい。" userName="mkagenius" createdAt="2025/06/12 02:37:19" color="">}}




{{<matomeQuote body="特定の番号を狙ってrepoを作る方法を解説。スクリプトで確認して、番号が近くなったら複数作って削除する手があるって。<br>作者は”yep”で狙ったけど”shit”で失敗したかもって推測してる。<br>FacebookのD666666も似た方法で番号取ってたらしいよ。" userName="CGamesPlay" createdAt="2025/06/11 23:59:35" color="#45d325">}}




{{<matomeQuote body="いや、そうじゃないかもよ？なんでこの人がわざと狙ってrepo取ったって決めつけるのさ？" userName="notfed" createdAt="2025/06/12 03:45:24" color="">}}




{{<matomeQuote body="特定の番号を取る方法を共有したかっただけだけど、このユーザーは普段活動してなくて、番号が近づいた時に2つrepo作ったから、意図的だったと思うよ。間違ってるかもだけどね！" userName="CGamesPlay" createdAt="2025/06/12 03:53:19" color="#38d3d3">}}




{{<matomeQuote body="repoが空だから、やっぱ（意図的）でしょ。" userName="ramon156" createdAt="2025/06/14 10:08:07" color="">}}




{{<matomeQuote body="GitHubが新規リポジトリの作成ペースを簡単に公開してるのは驚きだよ。普通、こういうデータって企業秘密だと思ってたんだけどな。" userName="umanwizard" createdAt="2025/06/11 22:33:44" color="#785bff">}}




{{<matomeQuote body="10億個もリポジトリがあるなら、守りが固いというか、余裕綽々でパンツ一丁で歩き回れる感じなのかな。" userName="cheschire" createdAt="2025/06/11 22:41:36" color="">}}




{{<matomeQuote body="GitHubがこの情報を隠す必要ある？ どうやったらGitHubにとって不利になるの？（多くの会社が情報を隠したがる理由は分かるんだけどね）" userName="raincole" createdAt="2025/06/11 22:41:08" color="">}}




{{<matomeQuote body="会社がこういう情報を隠すのはね、競合に自分たちが成長してるか、縮小してるか分からないようにするためだよ。" userName="xboxnolifes" createdAt="2025/06/11 22:59:34" color="#38d3d3">}}




{{<matomeQuote body="会社がこういう情報を隠すのは、VCとか株の投資家にもっとお金を出してもらうためだったりもするんだよ。" userName="blitzar" createdAt="2025/06/12 07:19:59" color="#ff5733">}}




{{<matomeQuote body="スケール考えるエンジニアなら、IDに順番つけるのってグローバルロックとかホットスポットの原因になるから、普通避けるよねー。" userName="dietr1ch" createdAt="2025/06/12 02:16:18" color="">}}




{{<matomeQuote body="リポジトリ作る速さは普通だけど、全部リストできるのは困るかもね。新しいの追いかけて情報漏洩チェックされるのヤだ。GitHubにフィードあんのかな？<br>てか順番IDだと作る時に全体ロックかかるよね。ほんとは部分ロックでいいはずなのに。まぁ、サーバごとにID範囲割り当ててたりして、実は順番じゃないかもだけど。" userName="toast0" createdAt="2025/06/11 22:48:33" color="#785bff">}}




{{<matomeQuote body="「新しいリポジトリ追って情報漏洩チェックされるのはヤだ」って話だけど、それやってる人いるんだよねー。GitHubも始めたから、変なサプライズじゃなくて先にメールが来るようになったらしいよ。" userName="colechristensen" createdAt="2025/06/11 23:04:53" color="">}}




{{<matomeQuote body="メールなんて嫌だねー。大袈裟な”セキュリティ”関連のGitHubからのメールは、私含めみんな/dev/nullしてると思うよ。でも、多くのプロバイダは公開リポジトリで見つかったヤツを自動で無効化する連携機能持ってて、そっちの方が超便利だと思うんだよね。<br>https://docs.github.com/en/code-security/secret-scanning/sec...<br>リストは思ったよりずっと多い:<br>https://docs.github.com/en/code-security/secret-scanning/int..." userName="mdaniel" createdAt="2025/06/12 00:40:17" color="#785bff">}}




{{<matomeQuote body="GitHubのセキュリティ警告、要らなかったらオフにできるよ。<br>”多くのプロバイダは〜無効化する連携機能”って話だけど、私もAmazonから、誰かが漏らしたキー無効化したよってメールもらったことあるわ（昔すぎて内容は忘れたけど）。AWSのメールは読むけどね。" userName="colechristensen" createdAt="2025/06/12 03:51:24" color="">}}




{{<matomeQuote body="「GitHubに新しいリポジトリのフィードあんのかな？」って？あるよ！<br>https://docs.github.com/en/rest/repos/repos?apiVersion=2022-...<br>（指定日以降に作られたリポジトリだけに絞り込めるんだー）。" userName="progval" createdAt="2025/06/12 08:35:02" color="#38d3d3">}}




{{<matomeQuote body="あと、GitHubの分かりにくいGraphQL API使えば、どんなリポジトリでも新しいコミットに対して同じこと（フィード追跡みたいなの）できるよ。エンタープライズ向けには、秘密漏洩検知のシステム持ってるみたい。" userName="tough" createdAt="2025/06/12 18:38:51" color="">}}




{{<matomeQuote body="グローバルロックの何が問題なの？リポジトリ作るのなんて、コンピュータ的には超レアなイベントだと思うんだけどなー。" userName="4hg4ufxhy" createdAt="2025/06/12 03:09:51" color="">}}




{{<matomeQuote body="あと、バイナリサーチ使えば最新のIDがめちゃくちゃ速く見つけられるんだよ！私、これで色んなウェブサイトの成長を追跡してたんだー。" userName="beaugunderson" createdAt="2025/06/12 05:39:00" color="">}}




{{<matomeQuote body="リポジトリ名前変わったみたいで、今はここのURLにリダイレクトされるよ。<br>https://github.com/AasishPokhrel/repository/Lame。<br>残念！" userName="Sohcahtoa82" createdAt="2025/06/12 05:06:45" color="">}}




{{<matomeQuote body="元の名前に戻ったって！やったね！" userName="Sohcahtoa82" createdAt="2025/06/12 16:35:19" color="">}}




{{<matomeQuote body="AasishPokhrelはさ、１０億個目になるためにこのリポジトリ作ったのかなって思ってるんだよね。" userName="Cyphase" createdAt="2025/06/11 22:25:21" color="">}}




{{<matomeQuote body="AasishPokhrelは昨日”shit”と”yep”ってリポジトリ２つ作ったらしいよ。<br>５月１７日から６月１０日まで全く動きなかったって。<br>どれくらいのペースでリポジトリできてんのか計算して、ちょうどいいタイミングでゾロ目とか狙えるか、全然わかんないなー。" userName="maniacalhack0r" createdAt="2025/06/11 22:40:15" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これって結構簡単にズルできるよね。<br>１０億個目になるまでひたすらリポジトリ作り続けて、古いの消せばいいんだもん。<br>API使えば超楽勝。<br>問題はAPIのレート制限と、他の人も同時に作ってるってことだけ。<br>だから結局は運ゲーだね。" userName="paxys" createdAt="2025/06/11 22:39:18" color="#38d3d3">}}




{{<matomeQuote body="なんかさ、Metaにいた人で、特定のマジックナンバー追いかけて過剰な自動diff作りまくってクビになった奴いたらしいよ。" userName="GodelNumbering" createdAt="2025/06/11 22:52:45" color="">}}




{{<matomeQuote body="へー、面白そう！これについてなんかネットに情報あったりする？" userName="nithssh" createdAt="2025/06/12 07:20:51" color="">}}




{{<matomeQuote body="古いリポジトリの番号をさ、振り直しはしないと思うなー。<br>あと、そんなに簡単ってわけじゃないでしょ。<br>だってさ、二人で同時に狙ったら、どっちか一人しか成功できないじゃん。" userName="recursive" createdAt="2025/06/11 22:47:49" color="">}}




{{<matomeQuote body="次は1兆個目指そうぜ！" userName="handfuloflight" createdAt="2025/06/11 22:49:17" color="">}}




{{<matomeQuote body="怪しいAIエージェントがループしまくってたら、すぐ1兆個になるんじゃないの。" userName="hu3" createdAt="2025/06/12 01:51:59" color="">}}




{{<matomeQuote body="10億個目を作った人がネパールの学生らしいね。この出来事が世界に広がるのは感動的だ。履歴書にしっかり書いて、開発者として良い仕事が見つかるといいね！" userName="kylehotchkiss" createdAt="2025/06/11 23:34:57" color="#785bff">}}




{{<matomeQuote body="これがなんで履歴書の強みになったり、良い仕事につながったりするのか分かんないな。偶然ラッキーな数字になっただけで仕事に関係あるなんて考える採用担当者は、ちょっとヤバいと思うけど…。" userName="netsharc" createdAt="2025/06/11 23:52:58" color="">}}




{{<matomeQuote body="これを実績としてアピールする人がいたら、そいつの知性を疑うわ。ジョークならいいけどね。" userName="mkagenius" createdAt="2025/06/12 02:39:40" color="">}}




{{<matomeQuote body="この注目が完全に一方的で、作った本人は全然気づいてないかもって考えるとなんかウケるね。" userName="notfed" createdAt="2025/06/12 03:41:43" color="">}}




{{<matomeQuote body="ForgejoとかGitLabとか、GitHub以外のローカルサーバーも含めたリポジトリって全部でどれくらいあるんだろう？SubversionやMercurialとかも入れたら？そういうの検索できるエンジンとか誰か作ってないかな？コードが見つけやすいのが集中型サービスの良いとこだよね。MicrosoftがGitHub買った頃から検索エンジン作ろうか考えてたけど、マーケティングとか無理そうだからやめたんだ。Codebergに置いてるプロジェクトも増えてきたし、また考えてるんだけど、誰かに先越されたかな？" userName="Aachen" createdAt="2025/06/11 22:53:06" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
