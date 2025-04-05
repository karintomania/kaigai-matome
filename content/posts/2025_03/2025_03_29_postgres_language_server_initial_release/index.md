+++
date = '2025-03-29T00:00:00'
months = '2025/03'
draft = false
title = 'ついに登場 Postgres Language Server 初公開 SQL開発が激変か'
tags = ["Postgres", "SQL", "Language Server", "開発ツール", "データベース"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> ついに登場 Postgres Language Server 初公開 SQL開発が激変か

引用元：[https://news.ycombinator.com/item?id=43513996](https://news.ycombinator.com/item?id=43513996)

{{<matomeQuote body="へーい、HN！<br>Postgres Language Serverの最初のバージョンをリリースしたよ。2年くらい前から開発してたんだ[0]。リポジトリ[1]からバイナリをダウンロードして試してみて。npm、vscode extension、nvim-lspconfig、masonでも利用できるよ[2]。<br>色々な問題にぶつかったけど、なんとか解決してきた。今は実用的で、ちょっと単純な解決策を使ってる。<br>詳細はブログ[3]を見てね。<br>試してみて、バグとかあったら教えて。バグ報告、アイデア、コントリビューションは大歓迎だよー。特にRustをハックしたい人！<br>最後に、Biome[4]に感謝したい。彼らのコードをたくさん勉強して、多くのアプローチを取り入れたんだ。彼らの協力なしでは、ここにいなかったよ。<br>[0] Announcement Show HN: <br>https://news.ycombinator.com/item?id=37020610<br>[1] Repository: <br>https://github.com/supabase-community/postgres-language-serv...<br>[2] Installation Guides: <br>https://pgtools.dev/#installation<br>[3] Blog Post: <br>https://www.supabase.com/blog/postgres-language-server<br>[4] Biome: <br>https://biomejs.dev" userName="steinroe" createdAt="2025-03-29T09:13:43" color="#ff5c5c">}}

{{<matomeQuote body="READMEの紹介文にもう少しプロジェクトのスコープを詳しく書いてくれると助かるなー。「for postgres」だけだとちょっと曖昧だし、「開発者の体験と信頼性の高いSQLツールに焦点を当てている」だけじゃ、実際何ができるのかよくわかんない。<br>初めてこのプロジェクトに来た人がすぐに知りたいと思うのは、こんなことじゃないかな？<br>・どの言語のLanguage Serverなの？SQLだけ？PL/pgSQL？C extensionsの記述？<br>・PostgreSQL固有なのは何？PostgreSQLのSQL方言に従ってるってこと？<br>・データベースのスキーマを教える必要がある？データベース接続を教えるの？スキーマ定義ファイルを見せるの？" userName="mjw1007" createdAt="2025-03-29T12:08:36" color="#38d3d3">}}

{{<matomeQuote body="フィードバックありがとうね。良い点だね。READMEを改善するよ。<br>質問について答えるね。<br>1．今はSQLステートメントだけだけど、関数やPL/pgSQLにも対応する予定だよ。<br>2．その通り。PostgreSQLの方言に従ってる（Postgresのパーサーを使ってる）。<br>3．データベース接続を教えてもらえれば、pg_catalogテーブルから情報を取得するよ。接続情報がない場合は、それが必要な機能はバイパスするよ。" userName="juleswritescode" createdAt="2025-03-29T12:20:55" color="#38d3d3">}}

{{<matomeQuote body="＞データベース接続を教えてもらえれば、pg_catalogテーブルから情報を取得するよ。接続情報がない場合は、それが必要な機能はバイパスするよ。<br>手動で情報を取得して提供できるようにしてほしいな。" userName="jmholla" createdAt="2025-03-30T03:21:47" color="">}}

{{<matomeQuote body="そうだね。でも、自分のスキーマが入った空のDBを指定すればいいだけだよ。" userName="trillic" createdAt="2025-03-31T01:12:57" color="">}}

{{<matomeQuote body="ブログを読まない人のために言うと、これはかなりクールだったよ。<br>＞tree-sitterをlibpg_queryに加えて使うというアイデアは、以前のHNの投稿[0]へのフィードバックから得られたものだよ。感謝！<br>https://news.ycombinator.com/item?id=38570680" userName="kiwicopple" createdAt="2025-03-29T10:19:14" color="#38d3d3">}}

{{<matomeQuote body="Language Serverって何をするもの？" userName="d4rkp4ttern" createdAt="2025-03-29T11:30:43" color="">}}

{{<matomeQuote body="Language Server Protocolは、エディタが言語ツールと通信するための標準みたいなものだよ。最近のIDEにある、リファクタリング、定義へのジャンプ、オートコンプリートなどの機能は、エディタ内でLanguage Serverへの呼び出しとして実装されてる。そしてLanguage Serverが、その機能の具体的な実装を提供するんだ。<br>確かMicrosoftがVS Codeを作る時に定義したんだけど、今ではVim、Emacs、Sublime Text、IntelliJとか、いろんなエディタがサポートしてるよ。LSPを通して、ほとんどのメジャーな言語で、IDEみたいな体験ができるんだ。" userName="pdpi" createdAt="2025-03-29T11:38:17" color="#45d325">}}

{{<matomeQuote body="基本的に、どのエディタもEmacsみたいに遅くなるのがクールだと思ったんだね（愛情を込めて、Emacsユーザーとして言ってるよ）。だから今では、賢い処理はすべて、Webサーバーで実行されてて、それぞれがギガバイト単位のRAMを使ってる。" userName="thom" createdAt="2025-03-29T22:09:20" color="">}}

{{<matomeQuote body="＞Language Server Protocol (LSP)は、ソースコードエディタや統合開発環境 (IDE)と、「言語インテリジェンスツール」を提供するサーバー間で使用される、オープンなJSON-RPCベースのプロトコルだよ[1]: コード補完、構文ハイライト、警告とエラーのマーク、リファクタリングルーチンなどのプログラミング言語固有の機能がある。このプロトコルの目標は、プログラミング言語のサポートを、特定のエディタやIDEに依存せずに実装および配布できるようにすることだよ[2]。2020年代初頭には、LSPは言語インテリジェンスツールプロバイダーにとって「標準」になったよ[1]。<br>https://en.m.wikipedia.org/wiki/Language_Server_Protocol" userName="rad_gruchalski" createdAt="2025-03-29T11:35:48" color="#45d325">}}

{{<matomeQuote body="聞いてくれてありがとね！IDEの言語に関する機能全部を支えてるんだ。オートコンプリートとか、エラー表示、シンタックスハイライトとかね。今はオートコンプリート、構文エラー表示、タイプチェック、リンティングをサポートしてるよ。" userName="steinroe" createdAt="2025-03-29T11:38:23" color="#38d3d3">}}

{{<matomeQuote body="マジで楽しみ！ありがとうね。最初のテストでCTEsがあると失敗するんだけど、サポートされてないのかな？`with test as (select 1 as id) select * from test;`ってクエリでエラーが出ちゃう。" userName="ayhanfuat" createdAt="2025-03-29T12:32:15" color="">}}

{{<matomeQuote body="報告ありがとね！見落としだったわ。修正PR出しといた。[0]<br>[0] https://github.com/supabase-community/postgres-language-serv..." userName="steinroe" createdAt="2025-03-29T12:43:33" color="#ff5c5c">}}

{{<matomeQuote body="報告ありがとう。CTEsのテストはいくつかあったんだけどね。とりあえず、そのクエリでIssueを立ててみるよ。" userName="juleswritescode" createdAt="2025-03-29T12:36:46" color="">}}

{{<matomeQuote body="steinroeは仕事が早いね：<br>https://github.com/supabase-community/postgres-language-serv..." userName="juleswritescode" createdAt="2025-03-29T12:44:49" color="">}}

{{<matomeQuote body="それはいいね！ありがとう！" userName="ayhanfuat" createdAt="2025-03-29T12:57:21" color="#45d325">}}

{{<matomeQuote body="＞始めたのがほぼ2年前だって。<br>”JetBrainsがIDEにどれだけ力を入れてきたかを考えると、マジすごい。JetBrainsは人気のSQL方言をずっとサポートしてたもんね。FOSSの代替を提供してくれて感謝！今までJetBrainsに匹敵するものってなかったと思うし。" userName="homebrewer" createdAt="2025-03-29T12:11:19" color="#ff5c5c">}}

{{<matomeQuote body="大変だったけど、Rustを学びながら2人でやったサイドプロジェクトなんだよね。フルタイムのチームならもっと早く終わってたと思うよ。" userName="steinroe" createdAt="2025-03-29T12:22:19" color="">}}

{{<matomeQuote body="ちょっと言い過ぎじゃない？IntelliJ DB toolはまあまあだけど、特別ってほどじゃないよ。SQL Squirellだって同じくらい良いし、DB2みたいな特殊なDBの設定とかSQLの履歴管理とか、むしろ良いところもある。" userName="piokoch" createdAt="2025-03-29T21:07:23" color="">}}

{{<matomeQuote body="Language serverってマジ最高。作ってくれてありがとう！" userName="vaylian" createdAt="2025-03-29T11:13:15" color="#38d3d3">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="どういたしまして！もう一年以上、ローカルでデバッグビルドをIDEに設定してて、それが成熟していくの（クラッシュが減るって意味ね）を仕事中にゆっくり見れて、すごく良かったよ。" userName="steinroe" createdAt="2025-03-29T11:17:19" color="#ff33a1">}}

{{<matomeQuote body="もしかして、将来的にフォーマット機能も入る予定ある？" userName="crooked-v" createdAt="2025-03-29T18:54:47" color="">}}

{{<matomeQuote body="間違いなく入れるよ。もちろん、ちゃんと動くって約束はできないけど、優先順位は高い方だよ。" userName="juleswritescode" createdAt="2025-03-29T22:40:25" color="#785bff">}}

{{<matomeQuote body="biomeから学んだ、一番影響力があったり、目から鱗だったレッスンってどんなの？" userName="javajosh" createdAt="2025-03-29T22:07:37" color="">}}

{{<matomeQuote body="このプロジェクトでRustを学んだんだ。システムプログラミングの経験もあんまりなかったけど。普段は、動くまで色々試すのが一番だけど、language serverを作るのはかなり複雑。似たようなプロジェクトを色々読んだけど、biomeが一番理解しやすかった。アーキテクチャもまさに理想通りだったんだよね。language serverは単なるエントリーポイントの一つに過ぎない、汎用的なworkspace APIってのが。" userName="steinroe" createdAt="2025-03-29T22:23:05" color="#38d3d3">}}

{{<matomeQuote body="共同開発者です。一番面白いのはSQLファイルのパースかも。Postgresのパーサーは複雑で常に変化してるから、SQLをパースする自作のパーサーは作れないんだ。しかも、そのパーサーは有効で完全なSQLステートメントしか扱えないんだけど、LSPは無効だったり不完全なものを手助けするべきだよね。簡単な解決策は、二つのパーサーを使うことなんだ。一つはPostgres自体が使ってるオリジナルのlibpg_query。もう一つはtree-sitterで不完全なステートメントを扱う。そして、パース結果をマージするんだ。<br>そうすれば、診断用の実用的なASTと、オートコンプリート用のtree-sitterのCSTの両方が手に入る。" userName="juleswritescode" createdAt="2025-03-29T12:11:51" color="#ff5c5c">}}

{{<matomeQuote body="もしそれがちゃんと動くなら、これはゲームチェンジャーだね。今はSQLのlinting/autocompleteにDBeaverを使ってるんだけど、すごく良いんだ。Py/C++/Rs/Javaの文字列内のSQLステートメントのパースはどうなるんだろ？例えば、複数行の文字列を使って、VS Codeが、その行がSQLの複数行文字列の中かどうかで、別のlanguage serverを使うとか？そうすれば、コード内の文字列内のSQLステートメントを静的にチェックしたり、オートコンプリートできる。<br>それについてどう思う？理想的な世界では、全てが静的にチェック可能であるべきだ。潜在的なエラーは、実行前にキャッチされるべきだ。多くの型安全な言語ではこれが可能だ。SQLでは、このlanguage serverのおかげでこれが可能になった。しかし、SQLがコードに埋め込まれている場合はどうなる？" userName="edg5000" createdAt="2025-03-29T12:29:55" color="#38d3d3">}}

{{<matomeQuote body="まだちょっと粗削りだけど、コミュニティからのバグレポートに基づいて改善していきたいと思ってるよ！埋め込みSQLについては、エディター側で解決する必要があるよね。vscodeでは、リクエスト転送で可能になるはず。neovimにはotter.nvimみたいなプラグインがあるし。少なくともjsについては、workspace APIで直接サポートする予定だよ。postgrestools check file.tsで埋め込みSQLの診断を出力するようにね。これは、oxcを使ってjs/tsコードをRustで簡単にパースできるから実現可能になったんだ。他の言語で似たようなツールを知ってる？" userName="steinroe" createdAt="2025-03-29T12:38:20" color="#ff5733">}}

{{<matomeQuote body="これってTypescript Language Serverのプラグインとして動く？SvelteとかVueとかは、Typescriptをテンプレートファイル内で使えるようにするために似たようなことしてるよね。もしPostgres Language Serverを自分のコードベース内で使えるようになったら、ゲームチェンジャーになると思う。" userName="norman784" createdAt="2025-03-29T19:12:00" color="#ff5733">}}

{{<matomeQuote body="色々調べてみたんだけど、これらのツールは全部、tsserver内でTypescriptのlanguage serviceをプラグインとして実行してるみたい。つまり、隣で実行してるlanguage serverとは通信しないんだ。今のところ、考えてるのは、a. wasmビルドを動かして、tsserverプラグインを試してみる、b. oxcでコードをパースして、少なくともCLIでTypescriptの埋め込みSQLをサポートすること。" userName="steinroe" createdAt="2025-03-29T22:25:46" color="#785bff">}}

{{<matomeQuote body="これマジすごいね！誰か、SQLXみたいなツールと連携して、Rustの中でSQL書くときに型ヒント出せるか知ってる人いる？PythonのスクリプトでSQL書くときも動くとマジで最高じゃん？" userName="Pedro_Ribeiro" createdAt="2025-03-29T12:06:10" color="#785bff">}}

{{<matomeQuote body="Python 3．14でPEP−750のt−stringsが追加されるかもね。そうなると、こういうLSP連携がもっと現実的になるかも。https://discuss．python．org/t/pep750−template−strings−new−upd…" userName="pphysch" createdAt="2025-03-29T15:20:32" color="">}}

{{<matomeQuote body="TypeScriptで同じこと考えてるよ。最初はtsserverのプラグインでいけるかと思ったけど、他の言語サーバー呼べないみたい。VSCodeならrequest forwardingでできるかも[0]。neovimにはotter．nvimみたいなプラグインがある[1]。JS向けには、`postgrestools check file．ts`で埋め込みSQLの診断が出せるようにする予定。" userName="steinroe" createdAt="2025-03-29T12:18:41" color="#38d3d3">}}

{{<matomeQuote body="＞このプロジェクトはPostgres開発用のツールチェーンを提供してるってあるけど、この文脈での“Postgres開発”って何のこと？ストアドプロシージャ書く人向け？それとも、LSPサポートが必要な大規模で複雑なクエリ書く人向け？どういうユースケースがあるのか気になる。" userName="stevage" createdAt="2025-03-29T12:07:15" color="">}}

{{<matomeQuote body="いい質問だね。DBをあんまり変えないなら、そんなに役立たないかも。でも、SupabaseみたいなプラットフォームはPostgresのいろんな部分に依存してるんだ。INSERTフックでキューをトリガーしたり、Row Level Security (RLS)でデータを保護したり、SQL関数で集計クエリしたり。それに、ビジネスに合わせてスキーマも変えるし。普通はSQLのmigrationファイルに書くよね。LSPがないと、今のスキーマとか関数の状態を調べたり、エラーがないかmigrationを実行したりしないといけない。LSPがあれば、それが簡単になる。steinroeと自分は、普段の仕事（whatsappのニュースレターとfintechスタートアップ）でmigrationをたくさん使ってるよ。" userName="juleswritescode" createdAt="2025-03-29T12:28:45" color="#45d325">}}

{{<matomeQuote body="いいね！週末にチェックしてみる。" userName="casper14" createdAt="2025-03-29T11:57:25" color="">}}

{{<matomeQuote body="これクールだけど、自分は．sqlファイルにSQL書くことあんまりないんだよね。Golangのlib/pqとか、Rustのsqlxとか使って、．goとか．rsファイルに生のSQL書くことが多い。こういうワークフローもサポートする予定ある？" userName="bitbasher" createdAt="2025-03-30T15:13:37" color="#38d3d3">}}

{{<matomeQuote body="Jetbrainsが一番すごいと思う。クエリを解析するだけじゃなくて、ソースを与えれば実際のテーブルと照合してくれる。コードの中のSQL文字列でもできるのがクレイジー。" userName="ninetyninenine" createdAt="2025-03-29T23:24:58" color="#45d325">}}

{{<matomeQuote body="コードの中だけじゃなくて、コメントとかJSON Schemaを受け入れるところならどこでもできるよ。例えば、<br> ＃　例だけど、IJはこれがSQLだってわかってるはず<br> spring：<br> datasource：<br> hikari：<br> ＃ language＝sql<br> connection−test−query：<br> SELECT count(1) FROM my_table<br><br> あと、SQLっぽくないリテラルでも。<br> ＃！/usr/bin/env python<br> ＃ language＝sql<br> MY_AWESOME_QUERY ＝ ”””<br> WITH awesome AS (<br> −− ．．．<br> ) SELECT ＊ FROM awesome<br> ”””" userName="mdaniel" createdAt="2025-03-30T01:45:16" color="#ff33a1">}}

{{<matomeQuote body="こういうものがあるのは嬉しいね！<br>なんで今までPostgresの良いIDE体験がなかったんだろう？言い換えると、これを作る上で一番大変だったことは何？<br>静的型付け言語で慣れてるものに全然及ばないんだよね。Postgresみたいに厳密なら、もっと良いオートコンプリートがあってもいいと思うんだけどな。" userName="vendiddy" createdAt="2025-03-29T17:38:02" color="#45d325">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="IntelliJめっちゃ良いよ。VS Codeで色々試したけど全然かなわないって感じ。" userName="doctorpangloss" createdAt="2025-03-29T17:42:02" color="">}}

{{<matomeQuote body="何を探してるのかよくわかんないけど、PostgresのGUIが欲しいならMacのPosticoがマジで最高。オートコンプリートも良いし、UIも直感的で使いやすい。ネイティブアプリだからめっちゃ速いしね。Webアプリみたいな紛い物とは違うってこと。Javaみたいな静的型付け言語でPostgresサーバーとやり取りしたいなら、Jooqをチェックしてみて。前使ってたけど、Javaコードで型安全にPostgresデータベースにクエリを送れるようになるよ。" userName="lurking_swe" createdAt="2025-03-29T23:59:12" color="">}}

{{<matomeQuote body="ブログにも書いたんだけど、Postgresの構文ってどんどん進化するし、めっちゃ冗長なんだよね。Postgresのコードをちゃんと解析するのってマジで無理ゲー。よくあるツールはそれをやろうとして結局諦める。僕らはlibpg_queryを使ってる。これはPostgresサーバーのコードをCライブラリにしたもの。このパーサーは実行可能なSQLを解析するように作られてるから、いくつか工夫が必要だった。" userName="steinroe" createdAt="2025-03-29T22:30:44" color="#ff5c5c">}}

{{<matomeQuote body="試すの楽しみ！これまでも素晴らしい出来だね！<br>prettierみたいなフォーマット機能も検討されてるって聞いたけど、まだ可能性ある？（ストアドプロシージャを理解できるフォーマッターが見つからないんだけど、存在するのかな？）" userName="t1mmen" createdAt="2025-03-29T19:46:44" color="#45d325">}}

{{<matomeQuote body="まだ検討中だよ！フォーマッターじゃなくて、プリティプリンターみたいな感じになると思う。つまり、有効なコードだけを綺麗にするってこと。でも、それにはもっと労力がかかるから、まずは安定した基盤を作ることに集中したいんだ。" userName="steinroe" createdAt="2025-03-29T22:27:38" color="#785bff">}}

{{<matomeQuote body="PL/pgSQLのコードベースをマイグレーションファイルで管理するのに苦労してる人へ。これはマジで革命だよ。<br>https://github.com/t1mmen/srtd" userName="tmountain" createdAt="2025-03-29T13:20:37" color="#ff33a1">}}

{{<matomeQuote body="似たようなツールで、Tuskerも役に立つよ。これは宣言的なスキーマを比較して、マイグレーションを自動生成してくれるんだ。実行中のPostgresインスタンスに接続して比較することもできるから、複数のインスタンスを同期できる。マイグレーションを実行するものは別に必要だけど、生成は完全に自動化される。<br>https://github.com/bikeshedder/tusker" userName="perrygeo" createdAt="2025-03-29T14:25:26" color="#45d325">}}

{{<matomeQuote body="HNで自分のプロジェクトが紹介されてて嬉しい！誰かの役に立ってるみたいで良かった。" userName="t1mmen" createdAt="2025-03-29T19:38:27" color="">}}

{{<matomeQuote body="マジですごいね！宣言的なスキーマ管理もやりたいことリストの上位にあるし、このプロジェクトの一部になるかも。教えてくれてありがとう。チェックしてみるよ。" userName="steinroe" createdAt="2025-03-29T13:36:54" color="#45d325">}}

{{<matomeQuote body="monaco-editorを使って、ブラウザ内で動作させる方法はある？もしそうなら、何か例とかおすすめはありますか？" userName="matus_congrady" createdAt="2025-03-29T17:50:54" color="">}}

{{<matomeQuote body="Monaco使ったことないんだけど、Language Serverをリモートで動かして、エディタからLanguage Server Protocolで接続できるはずだよ。今はまだブラウザ内でサーバーを動かせるwasmビルドは提供してないんだけど、色々試してる感じ。" userName="steinroe" createdAt="2025-03-29T22:33:11" color="">}}

{{<matomeQuote body="開発が進んでるのを見るの嬉しいね。" userName="0xa2" createdAt="2025-03-29T14:36:08" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
