+++
date = '2025-08-24T00:00:00'
months = '2025/08'
draft = false
title = '良いAPI設計の全てを語ろう！'
tags = ["API", "設計", "ソフトウェア開発", "プログラミング", "ソフトウェア工学"]
featureimage = 'thumbnails/cyan_orange3.jpg'
+++

> 良いAPI設計の全てを語ろう！

引用元：[https://news.ycombinator.com/item?id=45006801](https://news.ycombinator.com/item?id=45006801)




{{<matomeQuote body="「ユーザー空間を壊すな」って原則は良いけど、カーネル API は警告なしで壊すって、その裏側も忘れないでね。API を壊すなってより、安定な部分をちゃんと宣言して、そこを壊さないってのが大事なんだよ。" userName="dwattttt" createdAt="2025/08/24 22:53:30" color="#ff5c5c">}}




{{<matomeQuote body="カーネルがユーザー空間を壊さなくても、GNU libc はいつも壊しちゃうから、Linux のユーザー空間は結局壊れるの。新しい libc でビルドしたプログラムは古い libc では動かないし。Windows が再配布可能パッケージでこの問題を数十年前に解決したのは、ちょっと皮肉だよね。" userName="delta_p_delta_x" createdAt="2025/08/24 23:37:33" color="#38d3d3">}}




{{<matomeQuote body="GNU libc の後方互換性は結構良いよ。もし幅広いバージョンで動かしたいなら、頑張って古い libc にリンクするといい。でも GUI ライブラリとかはもっと厄介で、互換性が壊れやすいし、古いバージョンはディストリビューションからなくなるし、全部アプリに同梱してもプロトコルの問題が出たりするんだよね。" userName="rcxdude" createdAt="2025/08/25 02:13:46" color="">}}




{{<matomeQuote body="君は全然違う二つのことを言ってるよ。必要なライブラリバージョン1.9のプログラムが1.0で動かないのは当たり前。glibc は2000年の2.2以降、バイナリ互換性がすごく良いんだ。Linux の「ユーザーランドを壊さない」ほどじゃないけど、かなり近いよ。でも実は Linux も過去にはその約束を破ってる。2.4から2.6への移行とかはひどかったね。古い静的リンクのバイナリは、ファイルシステムの変化で動かなくなることもあるよ。" userName="o11c" createdAt="2025/08/25 04:22:17" color="#ff5733">}}




{{<matomeQuote body="glibc の API/ABI の変更履歴は、このサイトで確認できるよ。2023年以降は更新されてないけど、各バージョンでどのシンボルが削除されたかの傾向はわかるはずさ。<br>URL: https://abi-laboratory.pro/?view=timeline&l=glibc" userName="throwaway2046" createdAt="2025/08/25 07:28:32" color="#785bff">}}




{{<matomeQuote body="ウェブサイトが glibc 2.34 で24個のシンボルが削除されたって言ってるけど、チェンジログ見たら、ほとんどは後方互換性のためにシンボルが残ってるか、デバッグツール関連で、リンクの問題は起こさないみたいだよ。案外、大したことないように思えるな。" userName="ben-schaaf" createdAt="2025/08/25 08:01:39" color="#ff5733">}}




{{<matomeQuote body="僕が知ってる中で一番ひどい削除は `crypt` だね。でもそれも、再リンクできないなら適切な `LD_PRELOAD` を追加するだけで対処できるんだ。" userName="o11c" createdAt="2025/08/25 17:24:42" color="">}}




{{<matomeQuote body="「glibc のバイナリ互換性は2000年の2.2以降、すごく良い」って話だけど、最近、実行可能なスタックを宣言したライブラリのロードを壊しちゃったんだ。たとえ使ってなくてもね。しかも、この後方互換性の問題を直す計画もないみたいだよ。" userName="account42" createdAt="2025/08/26 13:45:32" color="#ff5733">}}




{{<matomeQuote body="その一方で、静的リンクされた実行ファイルは、すごく安定してるんだ。その選択肢があるのは良いことだね。" userName="Retr0id" createdAt="2025/08/25 00:39:15" color="">}}




{{<matomeQuote body="俺の理解だと、`GNU`の`libc.a`をソースコード非公開で静的リンクするのは`LGPL`違反らしい。これって、`Linux`上でプロプライエタリソフトウェアを動かしてる会社の95%くらいがやばいんじゃないかな。<br>`musl libc`はもっと許諾型のライセンスだけど、`GNU libc`より性能が悪いって聞くね。`LLVM libc[1]`に期待したいな。そしたらコンパイラドライバーから`C/C++`標準ライブラリまで、ツールチェイン全部が`Clang/LLVM`になるし、ユーザーコードから`libc`実装まで丸ごと最適化して、デッドコードも消して、バイナリサイズも小さくできたら最高だろ！<br>`[1]: https://libc.llvm.org/`" userName="delta_p_delta_x" createdAt="2025/08/25 00:44:24" color="#45d325">}}




{{<matomeQuote body="俺が知る限り、`LGPL`の下で`glibc`を静的リンクするのは技術的には合法だよ。ただし、アプリのオブジェクトコードのコピーと、ユーザーが別の`glibc`と再リンクする方法の説明を含める必要がある。`.o`ファイルのソースは必要ない。でも、実際にこれをやってる人は見たことないな。" userName="teraflop" createdAt="2025/08/25 01:08:11" color="#ff5c5c">}}




{{<matomeQuote body="静的リンクするなら、やっぱり`Musl`の方が良い選択肢だと思うよ。`GNU libc`はいくつかの重要な機能で動的リンクに依存してるからね。" userName="rcxdude" createdAt="2025/08/25 02:12:10" color="#ff33a1">}}




{{<matomeQuote body="`Windows`の再頒布可能ファイルって、ユーザーとしてはマジでウザいんだよね。昔アプリを使うたびに`Microsoft`の公式ページでダウンロードしろって言われて、正しいボタンを見つけるのが大変だったのを覚えてるよ。ユーザーに負担を押し付けてるみたいで最悪だった。" userName="resonious" createdAt="2025/08/25 02:12:16" color="">}}




{{<matomeQuote body="多くのインストーラーはちゃんとやってくれるから、ユーザーが自分でやる必要はないんだよ。" userName="IcyWindows" createdAt="2025/08/25 04:08:37" color="">}}




{{<matomeQuote body="`GNU LibC`はどのみち静的リンクするのがすごく難しいんだ（`getaddrinfo`とかね）。ほとんどの人は`musl`を使ってるけど、中には`uclibc`を使う人もいるよ。`Musl`は一部で性能的な欠点があるとしても、実際にはかなり良い選択肢だね。" userName="dijit" createdAt="2025/08/25 05:52:41" color="#ff33a1">}}




{{<matomeQuote body="アプリケーションと一緒に、特定の`libc.so`を配布するっていう手もあるよ（実質同じことだけど）。`GNU maximalists`以外で、これでアプリが`(L)GPL`に感染するなんて思ってる奴はいないんじゃないかな。" userName="loeg" createdAt="2025/08/25 01:22:33" color="#ff5c5c">}}




{{<matomeQuote body="`ld.so`も一緒に配布しないとダメだよ。そうしないと`ld`と`libc`の非互換性の問題にぶつかるからね。" userName="Retr0id" createdAt="2025/08/25 07:02:34" color="#785bff">}}




{{<matomeQuote body="…それに`ld.so`は特定の絶対パスにないとダメなんだ。だからアプリと一緒に配布するだけじゃなくて、ちゃんとしたコンテナを使わないといけないよ。" userName="account42" createdAt="2025/08/26 13:52:23" color="#ff5c5c">}}




{{<matomeQuote body="LGPLライブラリをアプリのソースコードなしで配布するのがダメって思ってるやつは、LGPLを全く分かってないんだよ。そういう人に限って、”GNU maximalist”とかいうおかしな言葉を使うんだから。" userName="cxr" createdAt="2025/08/25 13:55:11" color="#45d325">}}




{{<matomeQuote body="あ、前のコメント、俺の言葉選びが悪かったわ。LGPLライブラリをアプリのソースコードなしで配布するのが「禁止」って思ってるやつは、LGPLを全く分かってないって言いたかったんだよ。" userName="cxr" createdAt="2025/08/25 17:04:14" color="#ff33a1">}}




{{<matomeQuote body="Linuxには安定した公開ドライバAPIがないって有名だよね。GoogleのFuschiaもそれが動機だったはず。Linuxはユーザースペースとハードウェアの両方で意見が偏ってる、でも真逆のやり方でさ。" userName="chubot" createdAt="2025/08/24 23:04:59" color="">}}




{{<matomeQuote body="これは単なる意見の押し付けじゃないんだ。カーネルがモジュールをgitツリーに入れない人たちへの梃子なんだよ。彼らは置き去りにされて、常に動くターゲットを追いかけるためにメンテナーにお金を払う羽目になる。解決策はコードを貢献することだよ。" userName="matheusmoreira" createdAt="2025/08/25 17:45:26" color="#ff33a1">}}




{{<matomeQuote body="ソフトウェアエンジニアリングでは「インターフェース、実装ではない」って昔から言われてる（Uncle Bobが教えてた）。これは「ユーザースペースを壊さない」の一般化で、実装に依存せずインターフェースを宣言すること。C++ではインターフェースを型として使う。LinuxはCコードベースだけど、構造体へのポインタを渡してカーネルが自由に使う。これが彼らの”オブジェクト指向プログラミング”だよ。" userName="hackrmn" createdAt="2025/08/26 08:37:35" color="#ff5c5c">}}




{{<matomeQuote body="これを聞くとEvanが言ってたのを思い出すな。2から3への移行パスは提供したんだけど、内部変更が多すぎてたくさんのプラグインが壊れちゃったって話。" userName="brainzap" createdAt="2025/08/25 12:19:41" color="">}}




{{<matomeQuote body="作者はバージョンベースAPIをあまり好きじゃないみたいだけど、俺はアプリの最初から組み込むことを常に推奨するね。未来は予測できないし、いつか自分じゃコントロールできない誰かに破壊的変更を強いられることになるからな。" userName="pixl97" createdAt="2025/08/24 21:54:48" color="#ff5c5c">}}




{{<matomeQuote body="もし将来、破壊的変更を強いられるなら、関数に違う名前を使えばいいんじゃない？" userName="claw-el" createdAt="2025/08/24 22:36:07" color="">}}




{{<matomeQuote body="REST APIなら、バージョンベースAPIを最初から組み込む必要は別にないよ。`application/vnd.foobar`ってクライアントがリクエストしても、後から`application/vnd.foo.bar;version=2`を計画なしで追加できるからね。" userName="JimDabell" createdAt="2025/08/25 05:58:01" color="#ff33a1">}}




{{<matomeQuote body="バージョニングを後から追加することに何の害もないと思うな。例えばAPIが`/api/posts`なら、次のバージョンはシンプルに`/api/v2/posts`にすればいいだけだ。" userName="andix" createdAt="2025/08/24 23:31:27" color="#ff5c5c">}}




{{<matomeQuote body="Discoverability。<br>`/v1/downloadFile`や`/v2/downloadFile`みたいにバージョンを付けた方が、`/v3`がないかチェックするのも楽だよね。<br>`/api/downloadFile`、`/api/downloadFileOver2gb`、`/api/downloadSignedFile`みたいにすると大変だよ。" userName="pixl97" createdAt="2025/08/25 00:55:18" color="#ff33a1">}}




{{<matomeQuote body="これは下流の問題だよ。インテグレーターがv1にバージョン番号を入れるのを強制されてなかったから、v2を使うときの改修コストが、最初からバージョン番号があればかからなかった分だけ高くなるんだ。" userName="choult" createdAt="2025/08/25 00:07:37" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ほとんどのREST APIは、それ（バージョニング）をサポートしてないよ。だから、すでにリクエストタイプが指定されてるAPIなら、バージョニングなんて必要ないんじゃないかな。" userName="lazyasciiart" createdAt="2025/08/25 09:04:45" color="">}}




{{<matomeQuote body="俺も筆者の意見に賛成。v1って付けてもめったに役に立たないよ。<br>APIが成長したら、まず互換性を壊さずに既存エンドポイントを拡張する。<br>後方互換性のない変更が必要になったら、エンドポイント名も再検討して、新しい名前のエンドポイントを作る方が多いんだ（v2とはしない）。<br>API全体を再設計するなら、サービス/API全体を非推奨にして、新しいサービスに置き換える方が多い。<br>だから、`/v2`が付くエンドポイントなんて本当に稀。業界25年だけど、`/v1`と`/v2`があったサービスは一度しか見たことないな。" userName="paulhodge" createdAt="2025/08/25 00:47:04" color="#ff5c5c">}}




{{<matomeQuote body="これだよ、これ！ファイル内で`/v1/`ってgrepすれば、すべてのAPIエンドポイントを確認できるし、見落としがないか確かめるのもずっと簡単になるんだ。" userName="pixl97" createdAt="2025/08/25 00:51:23" color="#ff5c5c">}}




{{<matomeQuote body="サービスで`/v2`が登場するのって、今まで2回しか見たことないな。<br>大抵は`/v1`の全てを破綻宣告して、皆を強制的に`/v2`に移行させるためだね（それが可能ならだけど）。" userName="echelon" createdAt="2025/08/25 02:04:40" color="#785bff">}}




{{<matomeQuote body="OpenAPIジェネレーターみたいなものを使ってて、v2で違うDTOを使いたいなら、あんたの提案したやり方じゃ無理だよ。" userName="946789987649" createdAt="2025/08/25 07:01:12" color="">}}




{{<matomeQuote body="API設計の議論で何を言いたいのかよく分かんないな。<br>APIを設計する人が、何をサポートするかを決めるんだよ。" userName="JimDabell" createdAt="2025/08/25 10:14:35" color="">}}




{{<matomeQuote body="問題はパラメーター（やヘッダー）で、同じAPIスキーマに縛られちゃうことだよね（名前変更とかできない）。<br>でも、バージョンのおかげで、うちの仕事では`/v1/oauthApple`とか`/v1/oauthGoogle`みたいな古いAPIを`/v2/login/oauth/apple`や`/v2/login/oauth/google`にリネームできたんだ。見た目もずっと良くなったよ。" userName="spixy" createdAt="2025/08/25 20:54:59" color="#ff5c5c">}}




{{<matomeQuote body="それって、アプリケーションの最初から（バージョンを）組み込むってことだよね。でも、君はそんなの必要ないって言ってたじゃん。" userName="lazyasciiart" createdAt="2025/08/26 17:41:03" color="">}}




{{<matomeQuote body="筆者は最初から/v1を入れないって言ってるんじゃなくて、/v2を避けるべきってことだよ。だって、/v2が出るとバグ修正も2倍になるし、コードがスパゲッティみたいになるじゃん？それは/v1が未来を見越して設計されてなかったってことだね。" userName="gitremote" createdAt="2025/08/25 01:42:02" color="#785bff">}}




{{<matomeQuote body="OpenAPIを長年使ってるけど、ヘッダーやメディアタイプでバージョン管理しても、Java、Typescript、Goでコード生成は全然問題ないよ。" userName="jamietanna" createdAt="2025/08/26 09:40:02" color="">}}




{{<matomeQuote body="バージョン管理されたAPIってのは、特定のバージョンではやり方が一つしかないようにできるから、もうサポートされてない古いやり方を捨てられるってことだよ。昔のシステムを壊さずに、不要になったものをきれいサッパリできるわけだね。" userName="soulofmischief" createdAt="2025/08/24 22:55:43" color="#785bff">}}




{{<matomeQuote body="OpenAPIなら、複数のメディアタイプを指定できるよ。" userName="JimDabell" createdAt="2025/08/25 08:53:10" color="">}}




{{<matomeQuote body="もしv1を長くメンテしたいなら、v2の上で軽いshimとして作り直せばいいんじゃない？" userName="account42" createdAt="2025/08/26 13:56:09" color="">}}




{{<matomeQuote body="互換性のないAPIに変更するなら、どうせ手直しは必要になるよ。APIを使う側ってのは、普通、複数のバージョンを同時にサポートしたりしないからね。" userName="andix" createdAt="2025/08/25 13:08:03" color="">}}




{{<matomeQuote body="^/api(/(?!v[0-9]).)?$がv1で、^/api/v2(/.)?$がv2ってことだね。これって実際は問題ないんだよ。ただ、思い通りに綺麗じゃないから、ちょっと気持ち悪いってだけじゃないかな。" userName="andix" createdAt="2025/08/25 13:10:00" color="">}}




{{<matomeQuote body="「パラメータやヘッダーだとAPIスキーマを変えられない」って主張、意味不明だな。バージョン作る意味ってスキーマ変えることでしょ？URL構造のこと？<br>ヘッダーを使う利点は同じURLを使えることだよ。REST APIでURLは主キーだから、/v1/foo/1と/v2/foo/1は別のリソースになる。でもapplication/vnd.foo;version=1とversion=2で/foo/1なら同じリソースで相互運用できるんだ。<br>URL構造を変えたいなら、バージョンなしでも変えられるよ。" userName="JimDabell" createdAt="2025/08/26 00:19:15" color="#ff33a1">}}




{{<matomeQuote body="賛成できないな。バージョン管理を最初から導入しちゃうと、使われる可能性が高くなるけど、それって良くないことだと思うよ。" userName="pbreit" createdAt="2025/08/25 02:26:43" color="">}}




{{<matomeQuote body="著者はバージョン管理を推奨してるんだけど、「APIを責任を持って変更する方法」としてだよ。でも、新しいバージョンに切り替えるのは最終手段にすべきだって言ってるんだよね。" userName="grodriguez100" createdAt="2025/08/25 05:26:47" color="">}}




{{<matomeQuote body="著者は「v1」を追加するなって言ってないよ。バージョン管理はAPIを責任を持って変える方法だって言ってるけど、最終手段としてだけやるべきだってさ。<br>だから「v1」を追加して、いざって時にv2に上げられるようにしておくけど、できる限りv2に上げるのを避けるように努力するってことだね。" userName="grodriguez100" createdAt="2025/08/25 05:24:45" color="#ff5c5c">}}




{{<matomeQuote body="実は、「Version: 2」みたいなカスタムHeaderをリクエストやレスポンスで使うこともできるんだよね。" userName="9dev" createdAt="2025/08/25 20:07:45" color="#ff33a1">}}




{{<matomeQuote body="Win32 APIにあるたくさんの「Ex」付き関数が良い例だね！まさにそれだよ！" userName="Bjartr" createdAt="2025/08/24 23:14:51" color="">}}




{{<matomeQuote body="/api/postsFinalFinalV2Copy1-2025(1)ExtraFixed<br>みたいなパスになっちゃうのは避けたいよね。" userName="jahewson" createdAt="2025/08/25 00:13:39" color="">}}




{{<matomeQuote body="＞結局、エンドポイントの名前に「/v2」が入ることはめったにない<br>これって本当に？一番使われてるHTTP API 100個調べてみたらどうなるか興味あるな。Dropbox APIは「v2」使ってるよ（URLでは「/2/」だけどね）。<br>v1からv2への移行ガイドも面白いね: https://www.dropbox.com/developers/reference/migration-guide<br>彼らがStoneっていう仕様言語を開発してるよ: https://github.com/dropbox/stone" userName="ks2048" createdAt="2025/08/25 01:09:22" color="#45d325">}}




{{<matomeQuote body="grepで`/*`を検索して、`/v2`を無視すればいいってこと？" userName="cmcconomy" createdAt="2025/08/25 04:53:46" color="">}}




{{<matomeQuote body="カーソルベースのページネーションには他にも便利な特徴があるよ。ユーザーがページを読み込んだ後で次のボタンを押した時、アイテムが追加されていても、インデックスベースだと前のページで見たアイテムが重複して表示されちゃうけど、カーソルベースなら見たことない新しいアイテムのリストが表示されるんだ。無限スクロールに便利だね。デメリットは、ページNにジャンプするボタンを作るのが難しいことかな。" userName="swagasaurus-rex" createdAt="2025/08/25 00:46:10" color="#ff5733">}}




{{<matomeQuote body="カーソルは不透明にするべきだよ。データベースのサイズがバレないようにね。それに、不透明なカーソルには検索パラメータとか、ウォームキャッシュやルーティングのトポロジーなんかの追加の状態をエンコードすることもできるんだ。" userName="echelon" createdAt="2025/08/25 02:02:59" color="#45d325">}}




{{<matomeQuote body="全く同感！この件に関する最高の記事はこれだよ: https://use-the-index-luke.com/sql/partial-results/fetch-nex..." userName="rockwotj" createdAt="2025/08/25 02:34:50" color="#ff33a1">}}




{{<matomeQuote body="冪等性キーをRedisに保存するのは、全ての障害ケースで冪等性を保証できるとは思えないな。キーの保存と操作ペイロードは、アトミックにコミット（失敗したらロールバック）されるべきだよ。結局、冪等性キーってのは実行される操作（リクエスト）のIDそのものじゃないか？" userName="achernik" createdAt="2025/08/25 01:16:32" color="#ff5733">}}




{{<matomeQuote body="アルゴリズムは、APIから200が返るか、ページがリフレッシュされるか、別のページに変わるたびにキーが変更されるってことだよ。" userName="spixy" createdAt="2025/08/25 21:08:06" color="">}}




{{<matomeQuote body="頼むから冪等性のために別のコンポーネントを追加するのはやめとけ。変な抽象化漏れとか、デリバリー保証を理解してないと壊れるぞ。ユーザーが既存データと一緒に進捗を追えるようなラベルやメタデータを書き込み時にサポートする方がずっと良いね。" userName="rockwotj" createdAt="2025/08/25 02:40:23" color="#ff33a1">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="APIバージョニング、特にURLに入れるやつは、結局v1で止まっちゃうことが多いね。v2は珍しくて、v3はなぜか多い。クライアント側でURLを更新するのが面倒だからハードコードされがちだし、結局バージョンなんかめったに変わらないから使われないツールだよ。だから安全にスキップしても問題ないし、もし必要になったらv2のURLスペースを追加すれば良い。うちはAPIバージョンをクライアントヘッダーで管理して、古いバージョンは409で弾いてるよ。これならウェブアプリでは全く問題ないね。" userName="jillesvangurp" createdAt="2025/08/25 06:22:22" color="#ff5733">}}




{{<matomeQuote body="Discord API[0]は今、バージョン6がデフォルトだけど、バージョン10ももう使えるみたいだよ。<br>https://discord.com/developers/docs/reference" userName="shrx" createdAt="2025/08/25 06:34:33" color="">}}




{{<matomeQuote body="例外もあるけど、Quickbooksはマイナーバージョン75までいってるらしいね。" userName="TrueSlacker0" createdAt="2025/08/29 12:40:09" color="">}}




{{<matomeQuote body="バージョンなしのエンドポイントをv1のエンドポイントにフォールバックさせれば（例：/auth/loginと/v1/auth/loginを同じにする）、バージョニングもできるし、URLもシンプルにできるぞ。" userName="spixy" createdAt="2025/08/25 21:14:41" color="#ff5c5c">}}




{{<matomeQuote body="ページネーションで、たった640Bとかのちっちゃいデータしか返さないのやめてくれ！AzureのBlobストレージなんて0Bのレスポンスもあったぞ。設計するときは、レコードの大きさを考えて、妥当な数のアイテムを1ページで返すようにしてくれ。あと、「30個のAPIエンドポイントがあるから、新しいバージョンごとに30個増える」って言うけど、変更する部分だけバージョンアップすれば良いんだよ。" userName="deathanatos" createdAt="2025/08/25 07:30:19" color="#45d325">}}




{{<matomeQuote body="ページサイズは、最初に考えてるよりも大きくすべきだね。ページネーションされてるエンドポイントは結局全部データを取得することが多いから、複数のリクエストによるオーバーヘッドは避けたい。ただ、最初にページネーションを実装しないと、後でデータ量が増えたときに破壊的変更になっちゃう。だから、大きいページサイズとページネーションを組み合わせるのが良いバランスだよ。" userName="mulholio" createdAt="2025/08/29 08:03:48" color="#45d325">}}




{{<matomeQuote body="うん、ページネーションは良いオプションだし、デフォルトでも良いと思う。でも、それしか選択肢がないようにしないで、開発者がリクエスト数とペイロードサイズのトレードオフを選べるようにしてほしいね。" userName="atoav" createdAt="2025/08/25 07:37:19" color="#ff5c5c">}}




{{<matomeQuote body="あのさ、ページネーションしか提供しないのって、バックエンドの都合があるの？全部のリソースをX回呼び出して取得するより、バックエンドの作業が少ないとか？" userName="rirze" createdAt="2025/08/25 15:55:05" color="">}}




{{<matomeQuote body="組み込み系の経験から言うと、メモリやレイテンシの制約が厳しいならページングは役に立つけど、ほとんどのAPIはそうじゃないでしょ。もちろん最大サイズは必要だけど、1200行のテキストを100行ずつしか返さず、オフにするオプションもないAPIには困るよね。" userName="atoav" createdAt="2025/08/25 17:14:08" color="#ff5733">}}




{{<matomeQuote body="唯一同意できないのは、内部ユーザーもただのユーザーだってこと。技術的かもしれないけど、彼らも忙しいんだよ。自分のAPIを他の人に公開する前に、時間をかけて自分たちで使ってみるべきだね。一度公開しちゃったら、『ユーザー空間を壊さない』っていう契約を尊重しなきゃいけないんだから。" userName="runroader" createdAt="2025/08/24 22:41:23" color="#ff5733">}}




{{<matomeQuote body="バージョン管理はまだこの問題を解決するのに役立つと思うよ。内部ユーザーに対しては、負担をかけないように色々できることがたくさんある。一番役立つのは、仕様について協力し合って、作業中のコピーを関係者に利用可能にすることだね。" userName="devmor" createdAt="2025/08/24 22:47:29" color="">}}




{{<matomeQuote body="内部ユーザーには、連絡して移行を促す手段があるから、APIのバージョンを廃止できるんだ。だからAPIバージョン管理は魅力的な解決策になるよ。僕もAPIバージョン管理に参加したし、それを便利だから使ってる組織も見てきたね。" userName="Supermancho" createdAt="2025/08/25 01:57:01" color="#38d3d3">}}




{{<matomeQuote body="大きな違いは、内部ユーザーには『アップデートしろ、さもないと』って言えることだよ。タダじゃないし、ちゃんとしたビジネス上の理由が必要だけど、内部組織があるから短期間でそれができるんだ。エンドユーザーや顧客には同じようにはできないよね、だって彼らは組織の一部じゃないんだから。" userName="scott_w" createdAt="2025/08/25 18:04:26" color="">}}




{{<matomeQuote body="APIバージョン管理については少し違う意見もあるけど、議論はわかるな。べき等性については絶対に必須じゃないって意見には異論があるね。それは選択肢じゃなくて必須だよ。各リクエストにべき等性トークンを必須にする必要はないけど、指定できるオプションは必要だ。Stripe APIのクライアントが良い例で、自動でべき等性トークンを生成してくれるんだ。<br>このリストに足りないけど、いくつか大事だったこと：<br>1. Deadlines。リクエストが無意味になる期限を指定できるべき。APIの実装はその期限を使って保留中の操作をキャンセルできる。<br>2. 関連するけど、Backpressureと依存サービス。APIは自身の依存サービスを無駄なリトライで過負荷にしないように設計されるべき。いくつかのリトライは有用だけど、一般的にAPIはエラー状態を呼び出し元に素早く伝えるべきだね。<br>3. Static stability。APIの背後にあるシステムはStatic stabilityするように設計されるべき。そうすれば、変更操作が失敗しても何らかの機能は維持される。" userName="cyberax" createdAt="2025/08/24 22:48:49" color="#38d3d3">}}




{{<matomeQuote body="確かにね。DELETE comments/32を3回連続で送った場合、3つのコメントが削除されるわけじゃない。最初の成功したリクエストでID 32のコメントが削除されて、残りのリクエストはもう削除されてて見つからないから404を返すって言うけど、そうとは限らないんだ。<br>多くの実装では、要素がそこに存在したかどうかに関わらず、DELETEが成功（つまり要素がなくなった）した場合、HTTP 204を返すんだよ。個人的には、404よりずっと理にかなってると思うけどな。" userName="weinzierl" createdAt="2025/08/25 09:14:10" color="#ff5733">}}




{{<matomeQuote body="本当にそう。べき等性をアクションだけじゃなくて、可能な限りレスポンスにも広げるべきだね。" userName="gbrits" createdAt="2025/08/25 21:59:05" color="">}}




{{<matomeQuote body="でも、なんで？それだとクライアントが得られる情報が厳密に減るだけじゃん。クライアントはDELETEに対する404をすでに処理できる能力を持ってるんだし。" userName="account42" createdAt="2025/08/26 14:03:14" color="#785bff">}}




{{<matomeQuote body="「API」って聞くとみんなWeb APIを想像するけど、もともとは1940年代からある「Application Programming Interface」のことなんだよ。Web以前のAPIがどんな目的でどう使われてたか、今のWeb APIにどう関連するのか考えてみようぜ。昔のAPIは80年以上も前から存在してて、Web以前のAPIに関する本や論文は、この記事を読んでるみんなよりもずっと古いんだぜ。<br>あの頃のプログラマーはどうやって問題を解決してたんだろうね？" userName="0xbadcafebee" createdAt="2025/08/25 00:47:42" color="#ff5c5c">}}




{{<matomeQuote body="過去の話みたいに言ってるけど、WebじゃないAPIだって今でも山ほどあるよ。Every software library has an APIって感じ。Web系の奴らが「API」って言葉を「Web API」の略語みたいに使いまくってるの、マジでイラつくんだよね。" userName="spacechild1" createdAt="2025/08/25 11:40:05" color="">}}




{{<matomeQuote body="「Web系の奴らが『API』って言葉を『Web API』の略語みたいに使いまくってる」って言われても、俺はそうは思わないな。「API」って曖昧すぎて、一つのタイプのAPIだけを指すには不十分だよ。Webが登場する前も、Web APIも、修飾語がないと不完全。誰も用語を乗っ取ったわけじゃないし、君のその言い方も不完全だよ。" userName="stronglikedan" createdAt="2025/08/25 17:01:06" color="">}}




{{<matomeQuote body="Web開発者は絶対に「API」を「Web API」の同義語として使ってるよね。だって、この記事のタイトルだって「良いAPI設計の全て」なのに、内容はWeb APIのことばっかりじゃん。普通ならAPI全般の話だと思うじゃん？" userName="spacechild1" createdAt="2025/08/25 20:08:11" color="#45d325">}}




{{<matomeQuote body="あなたはまるで昔の話みたいに言ってるけどさ、俺は20歳で、「API」って言われたらAPI/ABIのことしか考えないよ。プロトコルエンドポイントはAPIじゃないと思うな。" userName="1718627440" createdAt="2025/08/25 18:19:59" color="">}}




{{<matomeQuote body="「1940年代から」ってマジ？！それはめちゃくちゃ早いじゃん。当時なんてサブルーチンライブラリすらほとんどなかったでしょ。その頃の「Application Programming Interface」の例が見てみたいな。<br>俺はMicrosoftが1990年代にWindowsで使い始めるまで、この言葉を聞いた記憶がないんだよね。それまではライブラリ関数とかスーパーバイザコールみたいな言い方だったな。まあ、あの頃は経験が少なかったから、もっと専門的なプログラマー用語は知らなかっただけかもしれないけどさ。" userName="fanf2" createdAt="2025/08/25 16:04:35" color="#ff5733">}}




{{<matomeQuote body="彼らはべき等性キーをRedisに保存することを提案してるけど、可能なら書き込みを行うシステムに、書き込み処理と単一トランザクションで一緒に保存すべきだと思うな。" userName="barapa" createdAt="2025/08/25 02:34:10" color="#785bff">}}




{{<matomeQuote body="「ユーザー空間を絶対に壊すな」っていう忠告はめちゃくちゃ重要なのに、よく見落とされがちだよね…Spotify、Reddit、Twitterとか、まさにそれじゃん。" userName="frabonacci" createdAt="2025/08/24 22:33:28" color="#ff5c5c">}}




{{<matomeQuote body="技術的にダメなプロダクトだと、エレガントなAPIを作るのはほぼ無理ゲーだよね。API設計ってプロダクトの”基本的なリソース”（例えばJiraならissue、project、userとか）を反映するものだから、リソースが変だとAPIも変になるんだよな。不必要な抽象化されたリソースって、人間が直感的に理解しにくいし、特に初めて触る人には大変。それに、インシデント発生時のトラブルシューティングもマジでやりにくいんだよ。" userName="claw-el" createdAt="2025/08/24 22:29:56" color="#45d325">}}




{{<matomeQuote body="これ最高！一つ付け加えるなら、APIの品質は、APIドキュメントの入手がどれだけ難しいかに反比例するってこと。契約しないとAPIドキュメントがもらえないなら、そのAPIは絶望的に悪いと決めつけていいよ。" userName="JimDabell" createdAt="2025/08/25 05:13:15" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
