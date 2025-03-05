+++
date = '2025-02-25T00:00:00'
draft = false
title = 'SQLインジェクションの裁判に参加してきた！その衝撃の内容とは'
tags = ["セキュリティ", "SQLインジェクション", "法律", "プログラミング", "地方政治"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> SQLインジェクションの裁判に参加してきた！その衝撃の内容とは

引用元：[https://news.ycombinator.com/item?id=43175628](https://news.ycombinator.com/item?id=43175628)

{{<matomeQuote body="みんなこんにちは、私がこの訴訟の原告です。今、tptacekの投稿に関連した記事を作成中です！すぐに準備する予定ですが、その間に質問があれば気軽にどうぞね。待っている間にこの古い投稿もチェックしてみて： https://mchap.io/that-time-the-city-of-seattle-accidentally-..." userName="chaps" createdAt="2025-02-25T19:39:56" color="#ff5733">}}

{{<matomeQuote body="Matt、君は本当に素晴らしい仕事をしてるよ。でもMattは技術的に負けたこともあるので、特に代表なしで市に対抗するのはとんでもない困難だってことをよく考えてね。法律を変える提案には賛成だよ。イリノイ州ではFOIA法の改正の歴史があるけど、開示の保護を強化する方向の変更も多いから注意が必要だよ。負けた組織には強い罰則が必要だね。イリノイ州では5000ドルの民事罰に制限されてるからね。" userName="qingcharles" createdAt="2025-02-26T00:54:58" color="#ff5733">}}

{{<matomeQuote body="負けた公共団体も法的手数料を負担することになるから、かなりの金額になる可能性がある。ただ、公共団体は誰かの金で運営されてるから、本当に警告できるのは、どれだけ彼らの時間を法的行動で食いつぶせるかってところだよ。" userName="tptacek" createdAt="2025-02-26T01:22:51" color="">}}

{{<matomeQuote body="カラム名を知っても攻撃者にとって助けにならないという主張が理解できないよ。特にワイルドカードを許可してないデータベースでは、’); SELECT col FROM logins’ができることを知ってれば、カラム名を推測しなくて済むから楽になると思うんだけど。" userName="dataflow" createdAt="2025-02-25T23:00:01" color="">}}

{{<matomeQuote body="常に`SELECT table_name, column_name, data_type FROM information_schema.columns`を使えるよ。それはSQL標準の一部だからね。<br>一般的にSQLインジェクションがあれば、試行回数は多いから、1回でロックアウトされることはないよ。SELECT {id,userid,user_id,uid} FROM {user,users,login,logins,customer,customer}`の全ての組み合わせに限界があるから、役立つ情報を見つけることができると思うよ。" userName="tczMUFlmoNk" createdAt="2025-02-25T23:25:11" color="#785bff">}}

{{<matomeQuote body="＞ いつでも`SELECT table_name, column_name, data_type FROM information_schema.columns`ができるって？私のデータベースは“no such table: information_schema.columns”と言ってるよ。もし私のデータベースがその機能を完全に無効にしてたらどうなるの？<br>さらに、SQLがここに含まれてるのかな？他のインジェクション“機能”を持つデータベースはスキーマを持ってるはずじゃない？" userName="dataflow" createdAt="2025-02-26T07:44:04" color="">}}

{{<matomeQuote body="＞ 常にそれができる？今私はそれを試したけど、私のデータベースは“no such table: information_schema.columns”と言ったよ。攻撃者は一度の試みであきらめないよ。使用しているデータベースソフトによって異なるから、最初のステップはSQLiを見つけた後にデータベースソフトを特定することだよ。<br>もし私のデータベースがこの機能を完全に無効にしてたら？" userName="lyu07282" createdAt="2025-02-26T08:37:18" color="">}}

{{<matomeQuote body="確かに、様々な方法で無効にできるし、役割やユーザーに応じて設定できるよ。" userName="spoaceman7777" createdAt="2025-02-26T09:45:51" color="">}}

{{<matomeQuote body="いいポイントだね、実際に存在しないカラムを選択するユーザーをロックアウトすることでデータベースを強化したことがある人はいるのかな？こうすれば生産に影響してしまうかもしれないが、誰かが君のデータベースでクエリを実行しているなら、それを考慮する価値があると思う。" userName="zachrip" createdAt="2025-02-25T23:52:27" color="#ff5c5c">}}

{{<matomeQuote body="表面的にはすごく魅力的なアイデアだね。まるで“たとえドアを開けっぱなしにしても、君は入るべきじゃない”って感じだね。" userName="Waterluvian" createdAt="2025-02-26T00:17:37" color="">}}

{{<matomeQuote body="優秀なDBAはアカウントのアクセスを制限して情報スキーマにアクセスできなくするよ。その環境では、DBAはしっかりしてるけどWeb開発者は緩いってのは想像しやすいね。" userName="default-kramer" createdAt="2025-02-26T01:20:34" color="#38d3d3">}}

{{<matomeQuote body="＞ そして、スキーマとファイルレイアウトに関して、裁判所に反対しないと思う。<br>法律が“ファイルレイアウト”の開示を禁止するとは思わないけど、スキーマはファイルレイアウトと類似してるから、制限されるのは明らかだね。" userName="AdamJacobMuller" createdAt="2025-02-26T04:08:19" color="">}}

{{<matomeQuote body="SQLスキーマはデータのファイル内の場所を示さないんだ。スキーマはテーブル行とデータを保存するページやインデックス間の関係を切り離すために存在してるからね。だから、スキーマはファイルレイアウトの逆だよ。" userName="tptacek" createdAt="2025-02-26T04:33:17" color="#ff5733">}}

{{<matomeQuote body="＞ もっと違う言い方をするとさ、<br>コートにジャケットとシャツのクローゼットがあるって言ったら、衣服の配置方法を教えてることになるよね。これは情報の一部に過ぎないけど。データベースでも同じで、カラムに名前があると、データがどう配置されてるか情報を提供してるわけ。" userName="dataflow" createdAt="2025-02-26T07:10:47" color="#785bff">}}

{{<matomeQuote body="ファイルレイアウトかそうでないかは明確だよ。「ファイルレイアウトに似てる」って書いたら、それはファイルレイアウトではないとされる。イリノイ州最高裁がそれを誤ってファイルレイアウトと見なしたんだ。" userName="tptacek" createdAt="2025-02-26T07:36:55" color="">}}

{{<matomeQuote body="＞ イリノイ州最高裁が誤ってファイルレイアウトと判断したんだけど、これはメッセージボードの論理を使ったものではなく、技術辞典からの定義を使ったんだ。<br>その定義が明確にスキーマとファイルレイアウトの違いを示してるなら、もっと良い結果が得られたかもね。" userName="dataflow" createdAt="2025-02-26T07:53:51" color="">}}

{{<matomeQuote body="＞ もしあなたの言うことが正しければ、カラム内のアイテムがディスク上で近くに集まると期待してるわけだね。<br>でもそれは相対的または絶対的なオフセットを与えないし、いろんなことを言い表すわけではないよ。要するに、SQLスキーマは通常の意味ではファイルレイアウトではないってことだね。" userName="fc417fc802" createdAt="2025-02-26T10:26:07" color="">}}

{{<matomeQuote body="＞ 私の言いたいのは、このカラムにあるアイテムがディスク上で集まりやすいということだよ。<br>それはファイルレイアウトだね。スキーマは完全ではないが、ファイルレイアウトの情報の一部ではあるのは確かだよ。" userName="dataflow" createdAt="2025-02-26T10:59:50" color="#45d325">}}

{{<matomeQuote body="“ファイルレイアウト”は、全てのバイトの正確な位置を意味する必要はないよ。抽象的なファイルレイアウトでも、それはファイルレイアウトだ。" userName="HDThoreaun" createdAt="2025-02-26T05:25:26" color="">}}

{{<matomeQuote body="＞ 攻撃者である私がSQLインジェクションを使ってSQLスキーマを回復する。<br>それは攻撃の結果だけど、目標ではないというのは自らを矛盾させてるよね。スキーマは攻撃者にとって価値がある。" userName="dmurray" createdAt="2025-02-26T00:07:53" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="いろんなものが価値あるけど、それが法律の基準じゃないんだよ。法律に免除されてない限り、開示することがシステムの安全を脅かすって証明するのは公的機関の責任だよ。" userName="tptacek" createdAt="2025-02-26T00:43:30" color="">}}

{{<matomeQuote body="やっぱりグレーゾーンが広いね。TFAが言う通り、「脅かす」と「脅かす可能性」の違いがあっても、「脅かす」の定義には「危険」が含まれているから、ほとんど関係ないんじゃないかな。" userName="hunter2_" createdAt="2025-02-26T02:30:47" color="">}}

{{<matomeQuote body="『脅かす』の違いが分析に関係ないってことだよ。何かが人を攻撃するのを助けるわけじゃなくて、そのシステムから得られる価値の一つなら、イリノイ州の法律下では脅かさないんだ。脅かす証明の基準も関係ないよ、そもそも脅かしの主張がないから。" userName="tptacek" createdAt="2025-02-26T02:51:40" color="#ff5c5c">}}

{{<matomeQuote body="もしも攻撃がシステムを脅かすものじゃないなら、それはイリノイ州の法律では脅かさないっていうのは分かる。でも、スキーマは攻撃者が攻撃を進めるために手に入れるものだから、システムを攻撃する手段になるんだよね。これが攻撃者にとっての価値の全てだよ。" userName="thaumasiotes" createdAt="2025-02-26T07:25:09" color="#785bff">}}

{{<matomeQuote body="君の主張がわからないよ。SQLIがあればスキーマを取得できるのに、スキーマが事前に公開されても何が問題なの？大切なのはSQLIがあるかどうかじゃないの？" userName="tptacek" createdAt="2025-02-26T07:40:36" color="">}}

{{<matomeQuote body="これまだ有効だけど、UIがワイルドカードをサニタイズしたり、データベースがそれを禁止するか、インジェストするまでの時間がないほどのデータが出てしまうと失敗するかもね。" userName="dataflow" createdAt="2025-02-25T23:45:43" color="">}}

{{<matomeQuote body="サニタイズはほとんど失敗するから、これって武器競争になるよね。" userName="wglb" createdAt="2025-02-26T02:17:44" color="">}}

{{<matomeQuote body="間違えなければ、そうだね。100％のセキュリティはないけど、正直もう2025年だから、SQLインジェクションを防ぐ方法はもう知ってるでしょ。ここに書いたよ：<br>https://valentin.willscher.de/posts/sql-api/" userName="valenterry" createdAt="2025-02-26T03:34:53" color="#ff5c5c">}}

{{<matomeQuote body="そうだけど、想定されるケースは完璧にサニタイズしてるサイトでもまだSQLインジェクションがあるってこと？そんなのありえるの？" userName="IshKebab" createdAt="2025-02-26T07:23:05" color="">}}

{{<matomeQuote body="でも、ここで想定されているケースは、完璧にサニタイズしたサイトがSQLインジェクションを許すってことだよね？ありえないと思うんだ。アスタリスクが含まれるものは拒否するだけで良いんだし。完璧にする必要はなくて、せめてハードルを設ければいいんだよ。試行回数を現実的に制限するだけで十分だし。" userName="dataflow" createdAt="2025-02-26T08:16:46" color="">}}

{{<matomeQuote body="そこにパーサーが示されてないから、変な入力の場合がどうなるかは不明だよね。誰かにペネトレーションテストを受けたことある？" userName="wglb" createdAt="2025-02-26T18:48:06" color="">}}

{{<matomeQuote body="まあ、既存のパーサーを選ぶのが普通だと思うよ。特に自分で書く必要はない。大体の言語にはテスト済みのパーサーがあるからね。私の場合、変な入力は拒否されて、ライブラリから”parser error”を受け取って、それを”query not supported”エラーにラップして400を返す感じ。>ペネトレーションテストを受けたことは？実際に受けたよ。ペンテスターたちはその手法に驚いたけど、問題は見つからなかった。" userName="valenterry" createdAt="2025-02-27T03:27:44" color="#785bff">}}

{{<matomeQuote body="興味本位なんだけど、”CANVASデータベースの全テーブルから1行のデータを要求する”みたいなことはできるの？" userName="foota" createdAt="2025-02-25T21:40:00" color="">}}

{{<matomeQuote body="これは人の問題に対する技術的解決策だと思う。市がこの情報を出したくないなら、技術的な解決策は無理だよね。そして、これがすでにイリノイ州最高裁判所に持ち込まれて負けた以上、結局は法の更新が唯一の解決策だよ。" userName="mbreese" createdAt="2025-02-25T22:12:18" color="">}}

{{<matomeQuote body="これは技術的解決策だとはいえ、裁判所が直接スキーマを尋ねられるかどうかを解釈していたんだよね。だから、”スキーマを尋ねることはできないけど、サンプル行を尋ねるのはOK”という選択肢はなかったと思う。" userName="foota" createdAt="2025-02-25T22:32:44" color="">}}

{{<matomeQuote body="短い答えは”はい”、これができる。メールでのリクエストでも、”blah@gov.comの最も最近のメールをください”っていう形でのリクエストが見かけたことがある。で、最終的にはテーブル名を使ってリクエストのバッチを送る計画だった。文法的には、”SELECT * FROM {table_name_from_schema_request} LIMIT 1”みたいな感じで、テーブルごとにFOIAリクエストを出すつもりだった。" userName="chaps" createdAt="2025-02-25T22:36:18" color="#45d325">}}

{{<matomeQuote body="CANVASの管理者は何を隠しているんだろう？" userName="doctorpangloss" createdAt="2025-02-25T19:58:57" color="">}}

{{<matomeQuote body="何とも言えないけど、私がこの訴訟を起こした背景には、シカゴが裏でチケットを処理している業者リストを持っているという情報がある。私がその情報を要求した時には、都市はそんなリストはないと言ったけど、信じている。だから、スキーマ情報があれば本当に彼らが嘘をついているかどうかを確かめられると思った。" userName="chaps" createdAt="2025-02-25T20:05:39" color="#38d3d3">}}

{{<matomeQuote body="真剣に聞くんだけど、もし彼らが嘘をついていると疑っているなら、どうしてFOIAリクエストに対して完全なスキーマを出すことを信じるの？おそらく、重要なカラムを省くんじゃない？" userName="9dev" createdAt="2025-02-25T22:37:53" color="">}}

{{<matomeQuote body="うーん、街がスキーマを公開すべきだとは思うけど、記事の主張には同意できないな。スキーマを知っても攻撃者には役立たないっていうのは間違いなんじゃないかな。攻撃の受け手が特定のテーブルからデータを引き出せるかどうかは、スキーマを知ってるかどうかに依存するんだよね。特に、攻撃者がクエリの失敗とか成功の結果だけを知る場合、スキーマを知ってた方が試行錯誤がしやすくなるんだよ。<br>攻撃は常に行われているし、失敗したクエリを記録していれば、攻撃を見つけやすくなる可能性もあるし、スキーマを知っているとその弱点を利用しやすくなると思うよ。" userName="SkidanovAlex" createdAt="2025-02-25T20:23:22" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="スキーマを知っていると攻撃者にとって有利になることはたくさんあるよ。サービスの名前や市役所にいる公務員の名前、駐車券の法的な説明を知っていることも同様だ。もし訴えられてハッキングを試みるなら、その訴訟の詳細を知るのが役立つのは明らかじゃん。だから、「有益な情報は全部隠すべき」っていうのは違うと思う。" userName="florbnit" createdAt="2025-02-26T12:11:49" color="#ff5c5c">}}

{{<matomeQuote body="私は攻撃者じゃなくて、ただのソフトウェア開発者だけど、SQLインジェクションがあったらスキーマに関係なくなると思うよ。確かにスキーマを知っていると、完全なインジェクションがなくてもデータを引き出すのに役立つ場面もあったから、スキーマは攻撃者にとって多少有利になるって意見には同意する。" userName="Volundr" createdAt="2025-02-25T21:51:50" color="">}}

{{<matomeQuote body="そのスキーマを裁判で認めるのは、何かしらの過失を認めることになるんじゃない？スキーマが漏れることがアプリに影響を及ぼす可能性があるなら、ちょっとまずいよね。" userName="butlike" createdAt="2025-02-25T22:12:53" color="">}}

{{<matomeQuote body="防御についての議論は簡単だよね。SQLインジェクションの穴が無いことを証明するのが難しいから不安だ。" userName="default-kramer" createdAt="2025-02-25T23:05:41" color="">}}

{{<matomeQuote body="スキーマがSQLインジェクションの穴を明らかにするとは思えないけど、他の脆弱性を見つける手助けにはなるかもしれないな。例えば、主キーの選択ミスやNULLの扱いなんかがそうかも。<br>えーっと、NULLを使い過ぎるか、逆に文字列の’NULL’を使ったりするってこと？" userName="hot_gril" createdAt="2025-02-26T01:02:13" color="">}}

{{<matomeQuote body="スキーマがSQLインジェクションの穴を明らかにすることは無いよ。ただ、過失の主張が『スキーマはSQLインジェクション穴がない限り無価値』っていうのが前提なのかなと思っただけだ。でも確かに、スキーマを秘密にしておく理由は他にも色々あるよね。" userName="default-kramer" createdAt="2025-02-26T01:17:07" color="">}}

{{<matomeQuote body="スキーマはアプリ開発者の考えを知る手掛かりになるから、それを利用して攻撃者はミスが潜んでる部分にたどり着くかもしれないな。" userName="londons_explore" createdAt="2025-02-26T01:11:36" color="">}}

{{<matomeQuote body="それは確かにそうだね。" userName="hot_gril" createdAt="2025-02-26T01:35:10" color="">}}

{{<matomeQuote body="これが市政府の話だから、訴訟の相手方はそのコードを書いたわけじゃないし、全てを確認する暇もない。彼らが知ってるのは、書いたのは猿みたいな奴らだったってことだけだ。それで、コードの中にSQLインジェクションがあるんじゃないかってある程度の根拠を持ってる可能性はあるんだろうね。" userName="HDThoreaun" createdAt="2025-02-26T05:32:40" color="#ff33a1">}}

{{<matomeQuote body="YouTubeのメール漏洩の脆弱性はスキーマを読むことから始まったって話を思い出すなあ。" userName="pockmarked19" createdAt="2025-02-25T20:48:23" color="">}}

{{<matomeQuote body="＞$10,000 feels extraordinarily high for a server-side web bugという意見にはちょっと疑問。バグの販売を前提にしてるみたいだけど、YouTubeのユーザーのメールアドレスをスキャンして危険人物に売る方法もあると思う。どれだけのメールが漏洩するかはGoogleしか分からないよね。" userName="robocat" createdAt="2025-02-25T22:01:23" color="#ff33a1">}}

{{<matomeQuote body="＞I wouldn’t call json a schema。あれはJSON形式でシリアライズされたprotobufだよ。protobuf定義がスキーマじゃないなら何なのかが分からない。" userName="pockmarked19" createdAt="2025-02-25T22:22:12" color="">}}

{{<matomeQuote body="うん、訂正ありがとう。" userName="robocat" createdAt="2025-02-26T07:23:59" color="">}}

{{<matomeQuote body="SQLインジェクションを示す失敗したデータベースクエリをログするようにしてるなら、スキーマによってその信号が減ることはないと思うけど。たとえシンタックスエラーが出ても、それは追跡する価値があると思うよ。" userName="tptacek" createdAt="2025-02-25T20:35:02" color="">}}

{{<matomeQuote body="スキーマの知識が攻撃者にアドバンテージを与えるのは理解できるよ。カラム名を知ってれば、正しいクエリを作りやすくなるし、失敗したクエリが記録されない可能性もある。" userName="kmoser" createdAt="2025-02-25T21:19:40" color="#ff33a1">}}

{{<matomeQuote body="カラム名の知識がどう役立つのかが分からない。SQLインジェクションの脆弱性を見つけるには、実際のクエリを確認しないと意味がない。" userName="tptacek" createdAt="2025-02-25T21:28:01" color="">}}

{{<matomeQuote body="カラム名の知識が脆弱性の有無を示すわけじゃなくて、脆弱性があった場合に何ができるかを示すんだよ。例えば、口座残高を1百万にしたいならカラム名が必要だよね。" userName="kmoser" createdAt="2025-02-25T23:52:34" color="#785bff">}}

{{<matomeQuote body="SQLインジェクションならスキーマ全体が分かるし、カラム名を事前に知ることの意味があまり分からない。今は非SQLインジェクションの脆弱性について考えてるんだ。" userName="hot_gril" createdAt="2025-02-26T00:57:06" color="">}}

{{<matomeQuote body="SQLインジェクションはデータベースへのSSHトンネルじゃないから、もし注入した行がセレクトでなくてバックエンドが取得しなければ、カラム名を知っても役に立たない。" userName="HDThoreaun" createdAt="2025-02-26T05:35:56" color="">}}

{{<matomeQuote body="待って、これはブラインドSQLiとして知られているけど、実際にはそこまで盲目的じゃないよ。タイミングを使って情報を一ビットずつ取得できるから、遅いけどDBエラーを引き起こさずにできるんだ。" userName="hot_gril" createdAt="2025-02-26T21:11:53" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="人間ってほんとに面白いこと考えるよね。" userName="HDThoreaun" createdAt="2025-02-26T21:56:10" color="">}}

{{<matomeQuote body="そうだね、これはクールなトリックだし、分かりづらいよね。SQLインジェクションでスキーマが取れるって言ったのは、セキュリティコースでの古い記憶を思い出してのことかも。" userName="hot_gril" createdAt="2025-02-27T05:01:12" color="">}}

{{<matomeQuote body="これ、テーブル名を列挙することで実現できるのを見たことある。" userName="wglb" createdAt="2025-02-26T18:57:52" color="">}}

{{<matomeQuote body="それは一般的な方法だね。ただエラーが通知される可能性もあるし、当然名前が簡単に推測できるわけじゃないから。" userName="hot_gril" createdAt="2025-02-26T19:59:55" color="">}}

{{<matomeQuote body="ああ、確かに。記録を見られない可能性もあるよね。" userName="hot_gril" createdAt="2025-02-26T06:14:24" color="">}}

{{<matomeQuote body="＞コラム名の知識はSQLインジェクションの脆弱性を見分けるのをどう助けるのか？<br>それはないよ。脆弱性を見つけたら、すぐに有効なクエリを作って、テーブル名やカラムを適当に推測する必要がなくなるから、'DBクエリ失敗'のアラートを出さずに済むんだ。<br>編集：ここが私が見逃していた部分なんだ。＞脆弱なクエリを一回でブラインド攻撃するには、SQL文自体を見る必要があるって、本当にそうなのか？やったことないから信じるしかないけど、壊れたシステムでは'bobby tables'や1=1 --'で発見できるかなと思ったけど。" userName="default-kramer" createdAt="2025-02-25T22:11:56" color="#785bff">}}

{{<matomeQuote body="テーブルやカラム名に触れずに有効なクエリも作れるよ。" userName="jstanley" createdAt="2025-02-25T22:34:40" color="">}}

{{<matomeQuote body="そうだね、それを使って脆弱性を見つけるんだ。ただ脆弱性を見つけても、全ての駐車違反を支払い済みに更新する時、スキーマがないと難しくてたくさん失敗するSQLになるよ。スキーマがあれば一発でできるかもしれない。" userName="default-kramer" createdAt="2025-02-25T23:03:02" color="#45d325">}}

{{<matomeQuote body="だから、普通のペンテストの過程では、SQLインジェクションの脆弱性を使ってスキーマ情報を回収することにするんだ。" userName="tptacek" createdAt="2025-02-25T23:10:06" color="#ff5c5c">}}

{{<matomeQuote body="情報の回復を許さないSQLiの脆弱性ってあるのか？スキーマ回復は常にできるものなのか？GPは、返ってくるシグナルの種類によって難しいこともあると言ってるけど。" userName="LegionMammal978" createdAt="2025-02-25T23:15:01" color="">}}

{{<matomeQuote body="自分の体験では、SQLを使ったサイトを何百も調査したけど、スキーマの有無がSQLインジェクションを行う能力に影響したことはない。専門家として、あり得ないシナリオを考えるのは仕事じゃないし、裁判所もその証言を重視しているから、そこは置いておくよ。" userName="tptacek" createdAt="2025-02-26T00:06:13" color="#785bff">}}

{{<matomeQuote body="“Blind” SQLiはあるけど、実際の例では完全にブラインドじゃなかった。タイミングで一度に一ビットの情報を取れたから、メールアドレスを見つけ出すことができた。タイミングで情報を得られないケースは想像しにくい。" userName="hot_gril" createdAt="2025-02-26T20:57:54" color="#ff5733">}}

{{<matomeQuote body="ちょっと無知かもしれないけど、アプリのアカウントがinformation_schemaにアクセスできない場合、どうやってやるのよ？" userName="default-kramer" createdAt="2025-02-25T23:15:34" color="">}}

{{<matomeQuote body="あまり一般的な設定じゃないと思うけど、自分の無知をさらけ出してるかも。ORMの人気を考えると、スキーマが多くの場合にアプリにロードされるから。" userName="lcnPylGDnU4H9OF" createdAt="2025-02-26T01:03:40" color="">}}

{{<matomeQuote body="アプリがスキーマを集めようとしたらすぐにロックアウトする賢い設計かもしれない。スキーマを前もって知ってれば、マルウェアの目的を達成するために一発でのインジェクションがしやすくなる。" userName="kmoser" createdAt="2025-02-25T23:56:59" color="">}}

{{<matomeQuote body="＞”あなたがスキーマに出来ることはそのフィードのシグナルを減らさない“<br>例えば、SQLの文法エラーがあれば、どこかにバグがあるページがあるってことだから、追跡する価値はあるよね。このことから、Apacheのエラーログを確認してバグを見つけて直すこともできた。" userName="lucb1e" createdAt="2025-02-25T22:25:29" color="#785bff">}}

{{<matomeQuote body="＞”アプリからのSyntaxエラーはどこかにバグがあることを示す“<br>これは政府のシステムで、最低入札の請負業者が作ったアプリだと思う。ほとんどの人は、展開されたアプリからの失敗したクエリの量に驚くはず。" userName="ethbr1" createdAt="2025-02-25T22:44:08" color="">}}

{{<matomeQuote body="調査する価値があるかは微妙だけど、特定の監視システムがあるか探るよりもFOIAをする方がいいと思う。スキーマは攻撃にとってはあまり関係ないし、それを公開するのも問題ない。" userName="lucb1e" createdAt="2025-02-26T12:59:11" color="">}}

{{<matomeQuote body="＞”クエリが失敗した“または”クエリが成功した、データをどうぞ“<br>Blind SQLインジェクションはエラーを表示しないタイプだけど、成功や失敗を示す微妙なシグナルはある。ある例では、成功したインジェクションは正常なレスポンスのバイト数が一つ多いことがあった。これを使ってスキーマもデータベース全体も引き出せた。" userName="wglb" createdAt="2025-02-26T02:30:59" color="#ff5733">}}

{{<matomeQuote body="Kurtはこれで俺をからかおうとしてる。ここでの観客は主に非技術系の地元シカゴランドの政治に関わる人たちだってことを知っておいてくれ。地元政治について少し伝えさせてくれ：全国政治に関わるのは厳しくて気が滅入るけど、地元政治は超反応的だ。俺は実際に法を通すこともできたし、ほとんど費用をかけずに暇な時間に実現できたんだ（全国政治とは大違いだよ）。地元政治のすごいところは、フォーラムが中心になってるところだ。場所はあまり行きたくないところ（特にFacebookグループとか）だけど、参加することを楽しむなら、政治にも参加できるし、フォーラムを活用して実際に物事を成し遂げることができるんだ。" userName="tptacek" createdAt="2025-02-25T18:50:23" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
