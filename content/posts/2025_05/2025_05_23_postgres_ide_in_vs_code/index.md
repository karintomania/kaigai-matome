+++
date = '2025-05-23T00:00:00'
months = '2025/05'
draft = false
title = 'VS CodeがPostgresのIDEに！'
tags = ["VS Code", "Postgres", "データベース", "開発ツール", "IDE"]
featureimage = 'thumbnails/orange2.jpg'
+++

> VS CodeがPostgresのIDEに！

引用元：[https://news.ycombinator.com/item?id=44073588](https://news.ycombinator.com/item?id=44073588)




{{<matomeQuote body="俺、pgstrapってnpm作ったんだけど、これVS CodeでPostgres見れるの超便利！DB構造をファイル化してLLMとかコードレビューに使えるんだ。Railsのschema.rbみたいなね。エディタ側でDB認識させるか、コードに入れるか迷うけど、VS Codeなら開発での標準になるかもね。" userName="seveibar" createdAt="2025/05/23 16:29:09" color="#785bff">}}




{{<matomeQuote body="え、分かんないんだけどさ。DBスキーマとそこに至るまでのマイグレーションをバージョン管理に入れるのって、Webフレームワークなら普通じゃないの？" userName="semiquaver" createdAt="2025/05/23 23:01:25" color="">}}




{{<matomeQuote body="それって社員が＜10人で顧客が＜3社とかまでしか通用しない話だよ。それ以上になると、RailsアプリだけがDBの持ち主じゃなくなるからね。" userName="wredcoll" createdAt="2025/05/23 23:19:02" color="">}}




{{<matomeQuote body="複数のアプリで共通のDBスキーマいじることあるの？それどうやって全部のアプリで同期保つの？" userName="sbarre" createdAt="2025/05/23 23:56:19" color="">}}




{{<matomeQuote body="俺は読み取り専用ログインできるMCPサーバー使ってるよ（copilotかclineと一緒に）。" userName="jsmith99" createdAt="2025/05/23 16:58:44" color="">}}




{{<matomeQuote body="まあ普通はどれか一つが”メイン”になるんだけど、個人的には”やめとけ”って言うかな。君も気づいてるだろうけど、色々問題あるからさ。ここで言う”やめとけ”ってのは、複数のアプリが同じDBスキーマを使うなってことね。" userName="scott_w" createdAt="2025/05/24 11:14:31" color="">}}




{{<matomeQuote body="”やめとけ”ってのは正解だよ。他の人も言ってるけど、俺が働いた大手SaaS企業の多くは、アプリごとにDB持たせてた。何か必要ならAPIかETLを使うんだ。" userName="throwaway7783" createdAt="2025/05/24 14:22:30" color="">}}




{{<matomeQuote body="それは絶対間違ってるね。むしろ完全に逆の答えだよ。サービスにすると遅いし、色々制限されるし、トランザクションみたいな実際のDBMSのメリットも得られない。それに余計な依存関係や障害点も増えるんだ。" userName="ecb_penguin" createdAt="2025/05/24 19:38:07" color="">}}




{{<matomeQuote body="＞これはサービス使うかどうかの議論じゃなく、サービスがDBとやり取りする場合の話ね。複数アプリがDB直接触ると悪夢になりがち。互いのコードをDB内部から切り離すためにも、サービス間で契約決めてやり取りする方が断然良いってこと。" userName="scott_w" createdAt="2025/05/25 16:58:35" color="#ff5733">}}




{{<matomeQuote body="＞前のコメントの「サービスで隔てる」ってやつね。それだと依存関係が移っただけで、スキーマ変更時にサービス更新も必要になって手間が増える。トランザクションとか性能、柔軟性も失うし、負荷も失敗も増える。良いとこないよ。" userName="ecb_penguin" createdAt="2025/05/27 16:32:41" color="#ff5733">}}




{{<matomeQuote body="他のサービスにアクセスさせるのがAPIの役割だよね。Jeff Bezosが昔言ってたけど[1]、そうしない奴はクビだって。俺もそう思うよ。[1] https://news.ycombinator.com/item?id=18916406" userName="bigfatkitten" createdAt="2025/05/24 03:23:57" color="">}}




{{<matomeQuote body="それってさ、LLMにDBの正真のデータ源に直接アクセスさせるより、絶対悪い方法だよ。DBとLLMの間で余計なやり取りが増えるし、コード生成始まる前にツール呼び出しを会話に挟むことになるからね。それに、有名なPostgresのMCP実装はPostgresの型とかマテリアライズドビューを含んでないんだ。Zed.devのMCPサーバーとかも、その移植版みたいで同じ問題を抱えてるみたいだよ。" userName="BoorishBears" createdAt="2025/05/23 18:29:46" color="#ff5733">}}




{{<matomeQuote body="ちょっと分かんないな。複数のアプリが同じDBを管理したりアクセスしたりするって話だったよね。どう考えても、スキーマを更新したらアプリも更新しなきゃいけないじゃん。むしろ、サービス指向のアプローチなら、APIのバージョン管理とか互換性ロジックを1箇所に書くことで影響を隔離できる可能性だってあるのに。" userName="throwaway7783" createdAt="2025/05/27 16:44:30" color="#ff5c5c">}}




{{<matomeQuote body="ちょっと興味あるんだけどさ、結果のデータはLLMが使うの？それともただSQLを生成して、実行して、結果を返すだけ？" userName="layoric" createdAt="2025/05/23 21:22:52" color="">}}




{{<matomeQuote body="それよりさ、DB使ってるもののバージョン管理に、DBのスキーマ全体がリポジトリに含まれてるのがもっと謎なんだけど。" userName="cerved" createdAt="2025/05/23 23:25:10" color="">}}




{{<matomeQuote body="そういうことよくあるけど、スキーマが言語固有のORM向けに書かれてる場合もあるんだよね。そのコードがプラグインとかフィーチャーフラグを持ってて、実行時まで具体的なSQLスキーマが分かんないってこともある。シードデータとかマイグレーションも同じ。だから、実際のDB接続と比べて、この形式がツールとか発見にどれだけ役に立つかはユースケース次第だね。" userName="xyzzy123" createdAt="2025/05/24 00:41:06" color="#45d325">}}




{{<matomeQuote body="＞ スキーマ更新はアプリ更新を伴う<br>1. DB → App = 2回の更新、スキーマとアプリ<br>2. DB → Service → App = 3回の更新、スキーマとサービスとアプリ<br>どちらの場合も、当然DBは変わるよね。アプリも変わる。2番目のケースでは、サービスも更新しなきゃいけないってこと。" userName="ecb_penguin" createdAt="2025/05/27 17:33:04" color="#38d3d3">}}




{{<matomeQuote body="まともなORMなら、migrationファイルにはSQLを使うだろうね。" userName="tough" createdAt="2025/05/24 17:57:16" color="">}}




{{<matomeQuote body="プロジェクトのPMだけどね。クエリの結果は基本的にはLLMは使わないよ。ただエージェントモードだと、クエリ計画中にエージェントがデータのサンプルを取得してクエリの精度を上げることはある。例えば、ディメンションテーブルからユニークな値を取ってきて、自然言語のステートメントからフィルタ条件を解決するとかだね。" userName="maxluk" createdAt="2025/05/23 21:33:57" color="#ff5733">}}




{{<matomeQuote body="すごく実用的なツールみたいだね、シェアしてくれてありがとう！興味あるんだけどさ、triggersとかstore proceduresとかも出力するの？多くのツールはテーブルとかカラム、インデックスを定義したところで止まってるみたいだけど、DBの他の機能をもっと活用するためのツールがあると嬉しいな。" userName="netghost" createdAt="2025/05/23 16:55:04" color="#785bff">}}




{{<matomeQuote body="いや、DB変更はそんなに分かりやすくないって。だって、そのスキーマに依存してるチームとはあんま話さないし、そもそもそんなチームがいることすら知らないかもじゃん。API契約でも同じだけど、API変更の文化はもっと「伝えなきゃいけないこと」って理解されてて、プロセスもちゃんと決まってるんだよね。" userName="scott_w" createdAt="2025/05/28 05:56:27" color="">}}




{{<matomeQuote body="＞いや、DB変更はそんなに分かりやすくない…って？<br>君が言ったこと、全部サービスやAPI契約にもそっくり当てはまるじゃん。何も解決してないよ。<br>＞API変更の文化はもっと「伝えなきゃいけないこと」って理解されてて…<br>それはただの作り話だよ。毎日何千件もインシデント起きてるじゃん、誰かが全関係者に伝えずAPI変えちゃってさ。”サービスの方がデータベースより優れてるのは、サービスオーナーの方がデータベースオーナーより変更伝えるのが上手いから”とか、全然説得力ない主張だよ。<br>ひどい技術ソリューション導入する前に、コミュニケーションの問題を直す努力をした方がいいと思うけどね。" userName="ecb_penguin" createdAt="2025/05/28 15:17:38" color="#785bff">}}




{{<matomeQuote body="そうそう！基本的には pg_dump を実行して、その出力をいろんなファイルに分類してくれるんだ。だから網羅的だと思うよ。確か、functions/function_name.sql とか misc.sql とか triggers.sql とか、そんな感じであったはず。" userName="seveibar" createdAt="2025/05/23 18:30:00" color="">}}




{{<matomeQuote body="どうも。こういうツールが本番DBに繋がるの、ちょっと心配なんだよね。。特にLLMエンドポイントを簡単に切り替えられること考えると、そのデータがどこに行って、どう保持されて、文脈とかさ、プライバシー的にちょっと悪夢になりそうだし。。" userName="layoric" createdAt="2025/05/23 22:30:17" color="#45d325">}}




{{<matomeQuote body="アプリのDBスキーマは、実質的にコードと言えるくらい密結合してるし、マイグレーションも多分チェックインされてるはず。だから、DBスキーマが時間とともにどう変わるか—おそらくそのスキーマを使うクエリと一緒に—見れるようになるんだよ。" userName="schrodinger" createdAt="2025/05/24 02:27:12" color="">}}




{{<matomeQuote body="カノニカルな状態ってのは、本番DBにあるものだよ。バージョン管理に入ってるのは、それを再構築できるといいなって感じだね、ただしデータを再投入できる可能性は極めて低いっていう明らかな注意点付きでさ。" userName="jen20" createdAt="2025/05/24 07:15:41" color="">}}




{{<matomeQuote body="全くもって正当な懸念だね。うちの拡張機能は Github Copilot 経由でLLMに繋がってるんだ。Github Copilot は Microsoft の製品で、いろんなエンタープライズプランを提供してるから、情シスがどんなデータを何に使えるか承認できるんだよ。これで企業の要求へのコンプライアンスに向けて明確な道筋ができるわけ。" userName="maxluk" createdAt="2025/05/23 22:49:19" color="#ff5c5c">}}




{{<matomeQuote body="そうした方がずっといいのは同意するけど、たぶん一番大きいフレームワークって Django とか Rails じゃない？で、それらは（そう）しないんだよね。" userName="OJFord" createdAt="2025/05/24 18:00:00" color="">}}




{{<matomeQuote body="500ミリ秒未満のラウンドトリップ（たぶん50トークン分くらい）が、もしかしたら役立つかもしれないからって、何千トークンも余計にプロンプトに含めるより悪いって考えがよく分からないんだよね。コンテキスト疲れは言うまでもないし。<br>もしうまく設計されてれば—メモリで生成を中断して、＜function_result＞を挿入する感じで、生成を再開したりディスクからキャッシュ取ってきたりせず—ラウンドトリップ/ツール呼び出しの方が優れてるんだよ（待ち時間で50トークン相当＋function_resultトークン分だけ）。" userName="tempaccount420" createdAt="2025/05/23 20:54:02" color="#ff5733">}}




{{<matomeQuote body="＞他のサービスへのアクセス提供こそAPIの役目だろ。<br>そうそう、そしてデータベースだって、複数の消費者向けに、すごく実績があって堅牢なセキュリティと権限モデルを備えた、広範なAPIを公開してるんだよ。" userName="dragonwriter" createdAt="2025/05/24 22:03:57" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="彼がそうしたのはビジネス的な理由だよ。スタックのどんな部分でも外部顧客に公開サービスとして提供できるようにしたかったんだ。<br>逆に、内部サービスを公開サービスと競合させるためでもあったんだって。<br>でも、これってAWSみたいなものを作る場合にだけ有効な話だよね。みんながみんなそうするわけじゃない。<br>リレーショナルデータベースにきめ細かい権限システムがあるのには理由があるんだよ。" userName="bsaul" createdAt="2025/05/24 08:47:30" color="">}}




{{<matomeQuote body="うわーこれすごいね！<br>SQL ServerじゃなくてPostgresのためにここまで力を入れたってのはかなり驚きだよ。<br>Postgresの方が需要がずっと高いんだろうね。" userName="pier25" createdAt="2025/05/23 15:38:54" color="">}}




{{<matomeQuote body="Microsoftはここ10～15年くらいオープンソースにかなり本気を出してきてるみたいだね。<br>ユーザーの視点から見るとほとんどみんなメリットを受けてるんじゃないかな。<br>ビジネスの視点から見ると無償の協力者やコミュニティからの良い評判を得られるってわけだ。" userName="90s_dev" createdAt="2025/05/23 17:27:02" color="">}}




{{<matomeQuote body="＞ここ10～15年くらいオープンソースにかなり本気を出してきてるみたいだね<br>VS CodeにはたくさんのMicrosoft製のクローズドソース拡張機能があってこれはオープンソース版のVS Codeとは法的に一緒に使えないんだよね。<br>だから彼らが”完全に本気を出してる”とは言えないと思うな。<br>せいぜい腰まで浸かってるって感じかな。" userName="teruakohatu" createdAt="2025/05/23 17:47:38" color="">}}




{{<matomeQuote body="クローズド拡張機能の状況からオープンソースの部分がなんか不誠実に見えちゃうんだよね。<br>なんか無料プランは10ユーザーまででそれ以降はめっちゃ高くなるみたいな状況に似てる。<br>目的は無料プランじゃなくて最終的に本当においしいところへ誘導するための広告手段って感じ。" userName="ahartmetz" createdAt="2025/05/23 18:01:05" color="">}}




{{<matomeQuote body="MS SQL serverはレガシーシステムだよ。<br>技術的な理由で他に選択肢がない場合を除いて新しいデータベースをSQL serverで作るビジネスなんてないと思うな。" userName="coliveira" createdAt="2025/05/23 17:24:19" color="">}}




{{<matomeQuote body="彼らすでにSQL Server Management Studio[1]を持ってるじゃん。<br>あれってこれと似たような範囲をカバーしてるみたいだけど？<br>多分いつかSSMSをVS Codeに移行させたいと思ってるんじゃないかな。<br>だから新しい分野のPostgreSQLを扱うことでそれを試してるって考えるのは理にかなってると思うんだ。<br>[1]: https://learn.microsoft.com/en-us/ssms/sql-server-management..." userName="magicalhippo" createdAt="2025/05/23 16:01:16" color="#38d3d3">}}




{{<matomeQuote body="君は考えがごちゃ混ぜになってるよ。<br>Microsoftが”誠実”じゃないのは彼らが単なるビジネスをやってるからだよ。お金を稼ぐっていうビジネスがやることそのもの。<br>彼らは利他的とか原則に従ってるとかそういうのを目指してるわけじゃない。ただビジネスをしてるだけなんだ。<br>でも個人的にはTypeScriptとVS Codeを自由に使えてこの取引からは恩恵を受けてるけどね。" userName="90s_dev" createdAt="2025/05/23 19:24:46" color="">}}




{{<matomeQuote body="僕はすべてのビジネスが”ただのビジネス”だとは思わないな。<br>タバコ会社とかPurdue Pharmaみたいな極端な例もあればMozilla CorporationとかValve（議論の余地はあるけど僕は彼らはクールだと思う）みたいな反対側の例もある。<br>もちろん大きな会社は実際にはたくさんの異なる存在が集まってるみたいなものだけどね。<br>Microsoftには長い間不誠実な行動の歴史があるんだ。<br>中にはかなり洗練されてて長期的な視点に基づいたものもある。<br>だから彼らを一般的に信頼するのはすごく難しいんだよ。<br>そもそもなんでVS Codeの一部はFOSSじゃないんだろう？" userName="ahartmetz" createdAt="2025/05/23 23:21:08" color="#ff5c5c">}}




{{<matomeQuote body="いや目的が違うんだよ。<br>VS Code拡張機能と以前のADSは開発向けだけどSSMSはサーバーとデータベースの管理向けなんだ。<br>僕はSSMSをすごくよく使うし必要なことは全部そこでできるんだ。<br>VS Codeはかなり使うけどMS SQL用のVS Code拡張機能はインストールしてても使ってないんだよ。<br>これは僕がDBAチームのバックアップや監督もしてるからでDBAの仕事に関わってるからなんだ。" userName="AdrianB1" createdAt="2025/05/23 19:59:50" color="#ff5733">}}




{{<matomeQuote body="＞ Microsoftが不誠実だって言うけど、20年前の独禁法裁判以外に最近の具体的な例ってあるの？他の人の借り物意見をただ繰り返してるだけじゃない？って思うんだよね。自分で体験したことじゃなくて、読んだことだけでMicrosoftのこと悪く言う人が多い気がする。" userName="tomnipotent" createdAt="2025/05/23 23:50:45" color="#ff33a1">}}




{{<matomeQuote body="SQL Serverって技術的にはめちゃくちゃ良いんだよ。でも、使うにはすごいお金がかかる。エンタープライズ向けなら、それだけの価値があるかもしれないけどね。" userName="harrall" createdAt="2025/05/23 17:32:48" color="">}}




{{<matomeQuote body="これって、MSSQLのツールがAzure Data Studioでメンテされてて、良い状態だったからじゃないかな？ADSはもう終わる方向だし、VS CodeのPostgres拡張見たら6年も更新されてなかったみたい。だから、ADSから移行先がなくて、ずっとADS使い続けてたんだよね。" userName="nevi-me" createdAt="2025/05/23 15:55:25" color="#ff33a1">}}




{{<matomeQuote body="VSCodeって、オープンソースのエディターで、Pythonとかの有名言語の拡張もOSSだよ！って宣伝してたじゃん。なのに、人気出てvscodiumみたいなフォークが増えてきたら、Microsoftは閉鎖的にしたんだよな。今じゃPython拡張はクローズドソースで、VSCodeのフォークじゃ使えないようにした。これって完全に”ベイトアンドスイッチ”だろ。" userName="infamia" createdAt="2025/05/24 01:52:29" color="#785bff">}}




{{<matomeQuote body="俺も同じ意見だよ。SSMSはSQL ServerのVSツールよりずっと良いし、Transact-SQLのサポートとかも含めてね。" userName="pjmlp" createdAt="2025/05/23 22:00:55" color="">}}




{{<matomeQuote body="Microsoftはpostgresのプラグインを、Microsoftの社員じゃないと貢献できないように作っちゃったんだよな。Azure Data Studioの他の部分もそうだけど、彼らが管理レベルを高く保とうとしたせいで、誰も一緒に開発しようって思わなかったんだ。" userName="hobs" createdAt="2025/05/23 15:58:54" color="">}}




{{<matomeQuote body="Microsoftのデベロッパーアドボケイトだけど、SQL ServerチームもPostgreSQLチームも拡張機能の改善にめちゃくちゃ力入れてるよ！<br>使いやすさの調査とか、バグ潰しにも参加したんだけど、どっちのチームも開発者にツールを楽しんでほしいってすごく思ってるから、使ってみて欲しい機能とか、不満な点とか、どんどんフィードバック送ってね！<br>SQL Server拡張のニュースはCarlos Robles、PostgreSQL拡張のニュースはJoshua Johnsonをフォローすると良いよ！" userName="pamelafox" createdAt="2025/05/23 21:47:19" color="#45d325">}}




{{<matomeQuote body="＞ VSCodeの宣伝で「ベイトアンドスイッチ」だって言うけど、そんな宣伝どこにあったの？1.0リリースのアナウンスブログ読んだけど、見当たらないんだけど。<br>プロジェクトが成長して成熟していく上で、ちゃんとルールを決めるのは当たり前じゃん。プラグインマーケットプレイスをMSの独自のものにするのも、全然理にかなってると思うよ。<br>MicrosoftはVSCodeにめちゃくちゃ貢献してるんだから、プラグプレイスとかPython拡張をクローズドにする権利くらいあるでしょ。<br>なんでみんな、VSCodeにちょっと関連してるものなら全部”just because”でタダで使えるのが当たり前、とか、Microsoftが他の億万長者の会社のビジネスを補助する義務がある、とか思うわけ？<br>「ベイトアンドスイッチ」だって言うけど、どこが？クローズドソースのプラグイン出しただけなのに、最高の根拠がそれなら、これはまた別の”借り物の意見”として分類させてもらうよ。" userName="tomnipotent" createdAt="2025/05/24 02:41:56" color="#ff5c5c">}}




{{<matomeQuote body="個人的には、昔のSQL Query AnalyzerとかProfilerが好きだったなぁ。今でもあれが一番使いやすかったSQL IDEだと思うんだよね。" userName="petepete" createdAt="2025/05/23 23:18:48" color="">}}




{{<matomeQuote body="この件（と他のMicrosoftのやり方）、「”偽のオープンソース”」って呼んだんだよね。コメントには賛否両論すっごくあってさ、みんなが同意してるわけじゃないのは明らか。オレ的には、Microsoftはオープンソースのいい感じとPRだけが欲しいだけで、ほんとはオープンソースになりたくないんだと思う。だからこの分野で今でも多くの人が彼らを信用してないんだよ。" userName="Alupis" createdAt="2025/05/23 22:12:05" color="#38d3d3">}}




{{<matomeQuote body="SQL ServerはOracleみたいに、技術的には超すごいよ。長いことPostgresより先を行ってたし、今でもそうだって言う人も結構いるね。みんながあんまり使わないのは、タダじゃないし全然安くないからさ。" userName="smt88" createdAt="2025/05/23 17:35:56" color="">}}




{{<matomeQuote body="彼らのvscodeへの貢献はすごいけど、Python拡張を最初はOSSにして人気が出たらプロプライエタリにしたのはどうなの？最初に意図を明確にすべきだったんじゃない？人気が出てからOSSだったものをクローズドにしたのは”おとり商法”だろ。Pythonスタック全体をOSSで出して、その後プロプライエタリ版を出してOSS版を非推奨にし、他のフォークが使えないようにしたんだから。" userName="infamia" createdAt="2025/05/24 05:02:53" color="#ff33a1">}}




{{<matomeQuote body="これって多くのツールに当てはまるみたいだね。Microsoftの公式Pythonライブラリ使ってるんだけど、リポジトリはGitHubで公開されてるのに、CIとか裏側の連携は全部Microsoftの内部で非公開。だから外部からは全然参加できないんだ。しかも、前にそのツールをサポートしてたチームがいなくなっちゃったから、今は誰もメンテできない状態だよ。" userName="0cf8612b2e1e" createdAt="2025/05/23 16:03:30" color="#ff5733">}}




{{<matomeQuote body="8年前くらいの話だけどさ、Microsoftがドイツのオフィスをミュンヘンに移して、その代わりにミュンヘン市がLinuxへの移行を止めるように仕向けたんだ。別に嘘ついてるわけじゃないけど、応援してた競争相手を潰すためのパワープレイだよね。僕がいた頃のMicrosoftは、誰も歯止めかけられられなかった時期はマジでひどい奴だったよ。事実は動かないんだから。" userName="ahartmetz" createdAt="2025/05/24 09:14:37" color="">}}




{{<matomeQuote body="そうそう、特に古いアプリが恋しいね。あれは本当によくデザインされてて、めっちゃサクサク動いたんだよ。SSMSが始まった頃は、俺のPCだとめちゃくちゃ遅くて重かったなあ。その頃にPostgresに切り替えたから、もう20年もブランクがあるけど。" userName="petepete" createdAt="2025/05/24 07:20:21" color="">}}




{{<matomeQuote body="だってさ、巨大企業にバックアップされてるんだからそうあるべきでしょ。それにPostgresみたいなオープンソースのDBから学んで、彼らのシステムをもっと良くできるんだし。" userName="tonyhart7" createdAt="2025/05/23 19:33:53" color="">}}




{{<matomeQuote body="キャリアの始めはMSSQL、今はPgなんだ。MSSQLはデータベースエンジンとして本当に、本当に優秀だよ。でもびっくりするほど高いんだ。使ったことない人は、どれだけ優秀か知らないだろうね。" userName="CharlieDigital" createdAt="2025/05/23 17:45:49" color="#ff5c5c">}}




{{<matomeQuote body="＞ It would have been fine if MS had started with their Python extension being proprietary<br>それ、全然違うってば。Pyrightは最初からオープンソースで今もそう。PylanceはPyrightの上に作られたけど、ずっとオープンソースじゃないんだよ。別に約束とかしてないしね。オープンソースのPython Language ServerをやめてPylanceを使うようにしたのだって、全然ありな判断でしょ。コミュニティがメンテナンス続けるのは自由だったけどね。俺の知ってるほとんどの人はPylanceに頼り続けてるけどさ。<br>＞ Instead, they lured folks in<br>そう言うのは勝手だけど、本当じゃないってば。<br>＞ Instead, they lured folks in （no small part due to open source）, and once it became popular, they started turning the screws and making things proprietary and locking it down.<br>MicrosoftはVS Code関連でオープンソースにしたものをひっこめたことは一度もないよ。全部オープンソースじゃないからって悪者にするのは無理があるってば。<br>＞ I don’t think it is unreasonable to ask someone to make their intentions known up front do you？<br>伝えてるしね。Microsoftが不誠実なやり方をした実際の例を一つでも挙げてみてよ。99%がFOSSなのに、一部をプロプライエタリにしてるって話じゃなくてさ。<br>＞ Vscodium is an entirely free and open source fork<br>MicrosoftとVS CodeチームはVscodiumのこと考えて長期的な判断はしてないよ。でも、WindsurfとかCursorのことは心配してるかもね。特にCursorは（数十億ドルの会社なのに）MicrosoftのTOSに違反してたし。<br>Microsoftは10年以上もVS Codeの公式プラグインエコシステムに投資して、良い管理者であろうとしてきたんだ。それを自分たちのも" userName="tomnipotent" createdAt="2025/05/24 08:23:07" color="#45d325">}}




{{<matomeQuote body="これってビジネス以外の何ものなの？地方自治体が雇用とかSALTを生み出す企業に譲歩するのなんて当たり前で、Microsoftが特別ってわけじゃないよ。<br>＞ One of these is that Microsoft was a pretty bad actor when nobody reigned them in, and I was around at the time.<br>俺もそうだよ（当時はRedmondで働いてた）。彼らのやり方は、今AppleやGoogleがやってることより悪くなかったってば。独占禁止法訴訟自体、90%がお芝居だったし、Microsoftはお目玉食らっただけで済んだのに、なぜか世間では実際よりずっと大変だったことになってる。これは「M$悪い」っていうバイアスを強めるからだろうね。こういうコメントは、自分で調べた意見じゃなくて「借りてきた」意見としか思えないし、Microsoftのこととなると、みんな自分で考えずに人の意見を借りてきてるんだなって改めて確信したよ。<br>そう、Microsoftは25年以上前にひどいことをいくつかやって、その報いも受けた。でも、2025年の今、時価総額で世界最大の会社になっても、他の企業と同じように活動してるよ。いつまでもこのカードを切り札みたいに出し続けるのはもう無理だってば。" userName="tomnipotent" createdAt="2025/05/24 20:41:07" color="">}}




{{<matomeQuote body="＞＞ all without ever leaving your favorite code editor<br>それ、Neovimにどうやってインストールするの？LSPはある？それともこれってMicrosoft独自の囲い込み？Copilot連携なしで、他の競合製品と比べてどれだけ良いのかな。<br>俺は今DBeaver CEを使ってるよ。これならSQLiteも含めて必要なことは全部できるしね。" userName="WuxiFingerHold" createdAt="2025/05/24 03:48:18" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="営利企業が「みんなのためにXを民主化！」って書くときは、「金払える人で、禁輸されてない人向け」って意味。‟シンプルに”って書くときは、「うちの囲い込みにハマれ」って意味。「お気に入りのX！」って書くときは、「あんたに売りつけてる製品」って意味。そんな感じだよ。<br>こういうビジネス用語辞典でプレスリリースを読み始めると、すぐにタブを閉じて次に進むのがすごく楽になるよ。" userName="diggan" createdAt="2025/05/24 11:26:26" color="">}}




{{<matomeQuote body="DuckDBのためにも、俺はDBeaver CEをプロとして過去9年間使ってるよ。Python開発してる時も、すぐに何か必要な時はJupySQLをJupyterで使うし、それはVS CodeでもJupyterプラグイン経由で動くよ。" userName="fithisux" createdAt="2025/05/24 12:44:42" color="">}}




{{<matomeQuote body="絶対これチェックするつもり。キャリアを主にSQL ServerとSSMSで始めたから、SSMSが手袋みたいに脳にフィットするんだよね。Postgresに移ってから多分10年くらいになるけど、pgadminとかdbeaverとかdatagripみたいな典型的な選択肢にずっと不満だったんだ。Postgres自体は最高なんだけど（誤解しないで、SQL Serverも素晴らしいし、金がかかるだけ）、そのDBMSツールのエコシステムについて、なんでコミュニティでもっと騒ぎにならないのかずっと理解できなかった。" userName="qntmfred" createdAt="2025/05/23 15:54:19" color="">}}




{{<matomeQuote body="Datagripが断トツで一番すごいユニバーサルデータベースツールだって分かったよ。全部試したと思うけど、どれもIDEデザイナーじゃなくてデータベース作ってる人が作った感じなんだよね。機能の深さ、拡張性、改善ペース—すごく満足してる顧客だよ。<br>オープンソースを悪く言いたくないけど、pgadminとかdbeaverは全然同じレベルじゃない。Oracleで仕事してるけど、Datagripにマジで救われた。" userName="FeloniousHam" createdAt="2025/05/23 17:59:05" color="#ff5733">}}




{{<matomeQuote body="Datagripで特に気に入ってる機能って、DBeaverにはないものなの？" userName="Errsher" createdAt="2025/05/23 18:16:05" color="">}}




{{<matomeQuote body="Datagrip使う前はDBeaver（コミュニティ版）使ってたけど、全体的にはDatagripに軍配が上がるかな。Jetbrainsの全製品パック持ってなかったら試してなかったと思う。DBeaverも素晴らしい、誤解しないでくれ。でも、Datagripの方が全体的に洗練されてて、設定とかUIがもっと直感的に感じるんだ。" userName="cwbriscoe" createdAt="2025/05/24 00:50:47" color="">}}




{{<matomeQuote body="もっと洗練されたUIだね。グラフビューアはテーブルに色つけたり関連テーブルを表示したりして、見やすいと思うよ。内観とかコード整形もちょっと良い感じ。リファクタリングもしやすいし、DBeaverでEclipseプラグインを使うよりIdeaVimも簡単に動かせるんだ。<br>個人的な経験だと、DataGripの方がDBeaverよりすぐに使い始められてIDEの機能も充実してるけど、DBeaverもかなり優秀だよ。例えば、DataGripではAccessと連携できなかったけど、DBeaverはあのゴミみたいなAccessでも結構使えるんだ。しかも無料だしね。どっちも良いツールだよ。" userName="cerved" createdAt="2025/05/23 23:45:02" color="#785bff">}}




{{<matomeQuote body="DatagripはJetbrains製品のデザインが好きって人も嫌いな人もいるよ。30日トライアルで1日試せば合うか分かるんじゃないかな。どんなDBでもサポートしてるし、IDEベースだからプロジェクトやスクリプト管理が楽なのは開発者にとってすごく便利。<br>ただ年間99ドルの価値があるかは微妙かも。僕はJetbrainsのパックで使ってるから実質タダだけどね。Jetbrainsユーザーじゃないなら値段と価値を考えてみて。" userName="jeroenhd" createdAt="2025/05/24 13:48:58" color="#38d3d3">}}




{{<matomeQuote body="Datagripだと、JetBrainsのIDEの良いところ全部使えるんだよね。すごいカスタマイズ性、たくさんのプラグイン（IdeaVimとかGitHub Copilotとかね）、ドキュメントも豊富だし。それに、数えきれないくらいのDbエンジンをサポートしてるのもいいね。まだサポートされてないDbは見たことないかも。唯一、Redisのサポートは中途半端だったけど、あれは厳密にはDbじゃないしね。一番大事なのは、PgAdminみたいにUIがもっさりしてないこと。全部が洗練されてて、多くても1、2クリックで済む感じだよ。" userName="zeppelin101" createdAt="2025/05/23 21:14:00" color="#ff5733">}}




{{<matomeQuote body="どんな新しいイケてるツールが出てきても、俺をDatagripから引き離すのは無理だろうな。長年たくさんのdatabase admin UIsを使ってきたけど、Datagripが断トツで一番すごいよ。" userName="GordonS" createdAt="2025/05/23 21:33:15" color="">}}




{{<matomeQuote body="これは主観的な意見だけど、インターフェースは良い感じだよ。特に他のjetbrain製品に慣れてるならね。しばらくpgAdminは使ってないけど、autocompleteが使いにくくて正直かなり悪かった覚えがあるな。会社の余ってたDatagrip licencesを使ってみたら、notepadからIDEに移行したみたいで感動したよ。あれ以来、もう他のツールには戻れないね。" userName="lbreakjai" createdAt="2025/05/23 20:52:20" color="#45d325">}}




{{<matomeQuote body="前のコメントのDBAの話、同意だよ。ツールは重要だけど、開発者向けのツールは珍しいね。多くのツールは管理寄りで、開発ワークフローを理解してるツールが少ないんだ。昔Oracle向けにあったPL/SQL Developerみたいな開発中心のツールがPostgreSQL向けにはまだ見つからないな。<br>今はDataGripでなんとかやってる。DataGripはtext editorよりはマシで、必要な機能がギリギリ揃ってる感じだよ。" userName="sbuttgereit" createdAt="2025/05/23 23:46:16" color="#45d325">}}




{{<matomeQuote body="前のコメントのDBAの話を受けて、自身のDB開発経験（Hibernateの失敗談、自作ツールの話）を展開している。記事のテーマ（VS CodeのIDE化）やコメントの主流（DataGrip/DBeaverの比較）からは少し外れるが、DB開発のワークフローやツールに関する深い洞察を提供している。関連性は中程度だが、内容は面白い。中高得点。 -＞ 65点。" userName="specialist" createdAt="2025/05/24 13:27:14" color="">}}




{{<matomeQuote body="ふーん、面白いね。俺もDatagripを何年か使ってたけど、今はDBeaverを使ってるんだ（もうJB subscriptionに入ってないからね）。Datagripは賢いintellisenseとかあって、前も今も多分すごく強力だと思うよ。今はDBeaverを使ってるけど、これもすごく安定してるね。まあ、一日中使ってるわけじゃないけど、必要な時にはちゃんと仕事してくれるよ。" userName="WuxiFingerHold" createdAt="2025/05/24 04:06:51" color="#45d325">}}




{{<matomeQuote body="俺にとってJetBrainsがVSCodeより圧倒的に良かったのは、すごくきれいな組み込みのデータベースツールだったんだよ。" userName="impalallama" createdAt="2025/05/23 15:51:55" color="#38d3d3">}}




{{<matomeQuote body="データベースツールは別に（DataGripとして）実行することもできるよ。俺はそうしてる。" userName="bdcravens" createdAt="2025/05/23 16:52:59" color="">}}




{{<matomeQuote body="毎年くらいVSCodeに戻ろうとしてるんだけど、JetBrainsのgitとデータベース連携がマジで良すぎて乗り換えられないんだよね。" userName="mierz00" createdAt="2025/05/23 23:00:51" color="#ff5733">}}




{{<matomeQuote body="VS Codeのgit連携は悪くないと思うけど、その実装方法がすごくMicrosoftっぽいんだよね。UIがプロフェッショナルなVisual StudioのUIにそっくりで、それが良いか悪いかは完全に個人の好みだね。俺はJB’sのgit連携の方がずっと好きだけど、UIが全然違うからってだけでダメだとは言わないけどさ。" userName="jeroenhd" createdAt="2025/05/24 13:52:20" color="#45d325">}}




{{<matomeQuote body="Posticoがいつも俺のPostgresを操作する定番ツールなんだ。Posticoユーザーでこれを試した人いるか気になるな。" userName="FajitaNachos" createdAt="2025/05/23 16:25:06" color="">}}




{{<matomeQuote body="めっちゃMac向けだよね、それにIntelliJの組み込みDBエディタの方が全然機能が多いと思うな。" userName="deepsun" createdAt="2025/05/23 19:01:35" color="">}}




{{<matomeQuote body="すごくMacのUXに準拠してるのが、PosticoをPostgresの簡単な作業の99%で使うのが好きな理由なんだ。" userName="jasoncartwright" createdAt="2025/05/24 09:09:42" color="">}}




{{<matomeQuote body="Posticoを10年以上使ってるよ。これ試してみるつもり。node-pgを使う時にCopilotがスキーマを認識し始めてくれるといいんだけどな。" userName="georgel" createdAt="2025/05/23 19:12:57" color="#ff5c5c">}}




{{<matomeQuote body="ローンチおめでとう！俺がMicrosoftで最初にデモしたんだよ。その時の動画はこれ：https://www.youtube.com/watch?v=k6Vm2hakkV4＜br＞デモした全機能はこのリポジトリで試せるよ：https://github.com/Azure-Samples/postgresql-extension-playgr...＜br＞何かあったらここで報告してね：https://github.com/microsoft/vscode-pgsql/issues" userName="pamelafox" createdAt="2025/05/23 21:49:06" color="#45d325">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
