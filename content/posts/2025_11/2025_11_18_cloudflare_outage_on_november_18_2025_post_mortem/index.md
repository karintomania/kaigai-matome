+++
date = '2025-11-18T00:00:00'
months = '2025/11'
draft = false
title = 'Cloudflare 2025年11月18日システム停止！その原因と復旧の舞台裏'
tags = ["Cloudflare", "システム障害", "ネットワーク", "インフラ", "SRE"]
featureimage = 'thumbnails/purple6.jpg'
+++

> Cloudflare 2025年11月18日システム停止！その原因と復旧の舞台裏

引用元：[https://news.ycombinator.com/item?id=45973709](https://news.ycombinator.com/item?id=45973709)




{{<matomeQuote body="関連情報：Cloudflareのグローバルネットワークで問題発生中だってさ。https://news.ycombinator.com/item?id=45963780 これは2025年11月の記事で、1580件もコメントがついてるよ。" userName="eastdakota" createdAt="2025/11/18 23:31:22" color="">}}




{{<matomeQuote body="Cloudflareのエラーページが改善されたのは良かったね。「セキュリティチェック」より全然マシ。障害原因をサイバー攻撃じゃなくDB権限の変更って正直に話してるのも好感持てるよ。でもさ、解決に4時間、完全復旧まで8時間って、なんでこんなに時間かかったの？設定変更の巻き戻しとか、すぐできなかったのかな？" userName="gucci-on-fleek" createdAt="2025/11/18 23:53:52" color="#ff5733">}}




{{<matomeQuote body="最初は攻撃だと思ってたんだ。原因が分かっても、正しいファイルをキューに入れられなかったし、不良ファイルを削除するために世界中のたくさんのマシンを再起動する必要があったから、時間かかったんだよ。" userName="eastdakota" createdAt="2025/11/19 00:07:27" color="#785bff">}}




{{<matomeQuote body="この話、去年のCrowdStrikeの障害を思い出すなぁ。<br>攻撃対策のために頻繁な設定更新が必要で、不正なデータファイルがプッシュされて、そこから簡単に自動復旧できないっていう共通点があるんだね。CrowdStrikeの方がひどかったけど、Cloudflareはまだ使える部分もあったし、数時間で全部解決したから良かった。" userName="gucci-on-fleek" createdAt="2025/11/19 00:20:41" color="#785bff">}}




{{<matomeQuote body="CrowdStrikeと似てるって思うのは、多分規模のせいだろうね。障害ってさ、ほとんどの場合、新しいバージョンのデプロイとか設定変更が原因で起こるんだよ。" userName="cocoa19" createdAt="2025/11/19 15:41:36" color="">}}




{{<matomeQuote body="まずはデプロイをblue/green方式でゾーン分けするべきだよ。小さいblueゾーンでテストして、問題なければgreenゾーンに展開するんだ。それと、設定ファイルが肥大化するのは設計ミスだよね！その理由が知りたいな。" userName="harivyom" createdAt="2025/11/20 04:56:47" color="">}}




{{<matomeQuote body="Richard Cookの「#18 (and #10) strikes again!」<br>彼の本「https://how.complexsystems.fail/#18」はやっぱりすごいね。Cloudflareがこういった事態にどう対応してるのか、もっと知りたいな。チームで訓練したり、改善策を検討したりしてるのかな？" userName="tptacek" createdAt="2025/11/19 00:13:51" color="">}}




{{<matomeQuote body="Dr. Cookのこの文書は、システム障害に関する標準だって、やっぱりそうだよね。議論に持ち出してくれてありがとう！" userName="asenchi" createdAt="2025/11/19 14:26:15" color="">}}




{{<matomeQuote body="ロンドンでWARPが一時的に無効にされたこと、RCAで全然触れられてないんだけど？アップデートでは言われてたのにさ。ロンドンのユーザーにとっては、これで障害の影響が一時的にもっとひどくなったはずだよ。" userName="philipwhiuk" createdAt="2025/11/19 02:43:22" color="">}}




{{<matomeQuote body="当時はWARP経由でLHRに攻撃トラフィックが来てるって誤解してたんだ。実際は、不良ファイルが伝播したことと、その時たまたまロンドンが稼働時間だったから、まずそこで障害が出始めたってだけだったんだよ。" userName="eastdakota" createdAt="2025/11/19 12:22:54" color="#785bff">}}




{{<matomeQuote body="多分、ロンドンチームがインシデント調査してて、最初はDDoSかもって結論出したんだろ。自分たちのシステムにもログインできなかったみたいだし。" userName="aaronmdjones" createdAt="2025/11/19 07:01:21" color="">}}




{{<matomeQuote body="システム停止の時間考えたら、それも納得だね。彼らがだいたい勤務時間中だったろうし。（まあ、もうそんな概念が当てはまるかはわかんないけどさ）" userName="noir_lord" createdAt="2025/11/19 08:55:48" color="">}}




{{<matomeQuote body="ちょっと質問なんだけど、なんで仮想とかステージングのミニノードで先に機能ファイルの変更を受け取って、エラーを検知してから本番にデプロイしないの？それとも、そういうのあるのにDBの権限変更だけは本番でこけたってこと？" userName="dbetteridge" createdAt="2025/11/19 00:58:20" color="#ff33a1">}}




{{<matomeQuote body="これの理由は、プッシュするファイルの性質にあると思うよ。Post Mortemによれば、この機能ファイルは数分ごとに更新されて全ネットワークに公開されるんだって。Internetのトラフィック変動や新しいボット攻撃に対応するために、迅速な展開がマジで重要らしいよ。" userName="forsalebypwner" createdAt="2025/11/19 01:11:44" color="#ff33a1">}}




{{<matomeQuote body="今回はファイルがすぐに壊れたんだよね。ファイルをロードしてみるだけの事前テストでも見つけられたはずだよ。数分あれば、そんなチェックするのに十分すぎる時間じゃん。" userName="gizmo686" createdAt="2025/11/19 04:29:47" color="#ff33a1">}}




{{<matomeQuote body="単純な疑問なんだけど、この問題解決にはだいたい何人くらいのスタッフが関わったのかな？定時外とか、本来の仕事から回された人とかさ。" userName="prawn" createdAt="2025/11/19 03:15:28" color="">}}




{{<matomeQuote body="設定変更の健全性をチェックして、監視して、もしうまくいかなかったら前の設定に戻せるような方法はないのかな？" userName="mindentropy" createdAt="2025/11/20 16:25:40" color="#785bff">}}




{{<matomeQuote body="うん、この挿入作業は相当なプレッシャーだったんだろうなって想像できるわ。" userName="tetec1" createdAt="2025/11/19 00:16:12" color="">}}




{{<matomeQuote body="残り15秒で核爆弾を解除するときに、赤、緑、青のどれかのワイヤーを選ぶみたいな、コンピュータサイエンス版の状況だよね。" userName="globalise83" createdAt="2025/11/19 14:07:13" color="">}}




{{<matomeQuote body="マジでそう？それとも、『こんな簡単な変更ならテストいらないっしょ』って考えだったりして？今回のTFAとは違うかもしんないけど、一部の人って自信満々でプレッシャー感じないじゃん。それに、警報の赤い光しか見えない状況でワイヤーの色なんて区別できないことも忘れちゃダメだよ。" userName="dylan604" createdAt="2025/11/19 15:50:05" color="#38d3d3">}}




{{<matomeQuote body="説明ありがとう！俺たちはデジタル資産のセキュリティ向けに100%オンチェーンシステムを作ってるんだけど、それだとEVMsみたいなパブリックチェーンを改ざん防止ゲートにできるぜ。新しい設定アーティファクトは、(a)遅延やmulti-sigレビューが終わって、(b)200未満の特徴、重複なし、schema Xみたいな安全性の条件を満たす簡潔な証明があれば初めて適用されるってね。それなら、あのでかいファイルがエッジに到達するずっと前にブロックできたかもな！" userName="hbbio" createdAt="2025/11/19 02:33:10" color="#ff5733">}}




{{<matomeQuote body="“接続のセキュリティを確認中”ってメッセージ、アレ全然ウソじゃん！俺、インドのブロードバンド使ってるから“example.comが続行する前に接続のセキュリティをレビューする必要があります”って表示によく遭遇するんだけど、この真っ赤なウソの言い回しがまだ続いてるのがマジでイラつくわ。（“下記のアクションを完了して人間であることを確認してください”ってチェックボックスもウソだけど、こっちの方がまだちょっとマシに感じる。）" userName="chrismorgan" createdAt="2025/11/19 09:19:45" color="">}}




{{<matomeQuote body="いつも通り、障害発生から24時間以内にpost mortemを公開したことに拍手だよ。こんなことができるtech organizationsはマジで少ないからな。" userName="SerCe" createdAt="2025/11/18 23:51:06" color="#45d325">}}




{{<matomeQuote body="Cloudflareがこんなに早く、こんなに透明性高くpost mortemを公開できる内部policiesってどうなってるのか、マジで気になるわ。他のそこそこ大きいcompanyだと、“stakeholders”の何層もの承認でプロセスが遅れまくるし、codeを公開なんてまず許されないだろ。" userName="yen223" createdAt="2025/11/19 00:15:31" color="">}}




{{<matomeQuote body="俺たちは透明性のcultureを真剣に受け止めてるんだ。law schoolでの3年間は無駄だと思ったこともあったけど、今日みたいな日には役に立つんだよな。俺はほぼずっとtriage video bridge callに参加してた。事態が落ち着いてからは、customersと話したりもしたよ。その後家に帰った。今LisbonのEUHQにいるんだ。元CTOで現Board memberのJohn Graham-Cummingにメッセージしたら、彼は書き方が明確だから昔から尊敬してるんだけど、来てくれた。息子も連れてきてくれたよ（“仕事はいつも楽しいわけじゃないって見せるため”だってさ）。Chief Legal Officer（Doug）もちょうどtownにいたから、彼も来てくれた。teamは全部の詳細を記したtechnical docと、何がいつ起こったかの詳細なtick-tockを用意してくれてた。俺はbalconyにこもって、愛用のBBEdit text editorでintroとconclusionを書き始めた。Johnはtechnical middleに取り掛かり、Dougは不明瞭な箇所をeditしてくれた。ある時、Johnがsushiを注文したんだけど、delivery selection optionsが限られてて、俺はshellfish allergyだからburritoを頼んだんだ。teamは何が起こったかをさらに詳しく fleshed outしていった。書き進めるうちに、「database permission changeがどうやってquery resultsにimpactしたんだ？」とか「そもそもなんでpermission changeをしてたんだ？」みたいなquestionsが出てきて、Google Docで質問したらanswersが返ってきたよ。数時間前にこれでdoneだ！ってdeclaredしたんだ。DougとJohn、それにJohnの息子のために、俺がtop-to-bottom out loudで読んだよ。誰もhappyじゃなかった―何が起こったかにembarrassedを感じてたんだ―でも、trueでaccurateだってdeclaredしたんだ。SFにいるMichelleにdraftを送って、technical teamsが一通りgave it a once overした。俺たちのsocial media teamがblogにstagedした。JohnにHNにpostしたいかtextしてみたんだけど、数分経っても返事がなかったから俺がpostした。That was the process。" userName="eastdakota" createdAt="2025/11/19 00:38:43" color="#ff33a1">}}




{{<matomeQuote body="しかもさ、すげーwell-writtenなんだよな。AWSのport-mortemと比較したら、これはもうliteratureレベルだぜ。" userName="bayesnet" createdAt="2025/11/18 23:52:24" color="">}}




{{<matomeQuote body="これで透明性って言うの？一番大事な質問に答えてないじゃん。ブリトーの中身は何だった？美味しかった？おすすめできるの？" userName="philipgross" createdAt="2025/11/19 01:26:50" color="#38d3d3">}}




{{<matomeQuote body="Cloudflareの障害に関して、みんなに現状を知ってほしい。H1Bビザ全面禁止の法案や人種差別が、アメリカのテック業界やイノベーションに悪影響を与えるんだ。オンラインの意見が現実の法律に影響してるのは残念だね。" userName="SilverElfin" createdAt="2025/11/19 03:21:15" color="#ff5733">}}




{{<matomeQuote body="確かにその通りだね。意識を高めるのと、それを広めすぎるのとのバランスって難しいよな。正直、その線引きがどこにあるのか全く分からないよ。" userName="mh-" createdAt="2025/11/19 03:23:56" color="">}}




{{<matomeQuote body="ただ、ロンドンでのWarpに対する対応については、解決策の過程で何も記録されてないのが残念だね。" userName="philipwhiuk" createdAt="2025/11/19 03:16:09" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="情報の編集ってどうしてるの？信頼できる人が記事を書いても、うっかり情報が漏れる可能性はあると思うんだ。そういうミスを専門のチームがチェックするのが一番じゃないかな。インサイトをありがとう。" userName="ynx0" createdAt="2025/11/19 03:27:22" color="#785bff">}}




{{<matomeQuote body="断言するけど、LLMは全く使ってないよ。使おうとしても無理だった。昔ながらのやり方なんだ。正直、それを完全に誇りに思ってるわけじゃないけどね。" userName="eastdakota" createdAt="2025/11/19 00:26:52" color="">}}




{{<matomeQuote body="リスボンのCoyo Tacoのチキンブリトーだよ。誇れるようなものじゃないね。Chipotleで頼むよりはマシだけど、リスボンにはまだChipotleがないんだ…。" userName="eastdakota" createdAt="2025/11/19 01:43:06" color="#ff5733">}}




{{<matomeQuote body="インシデント発生から12時間以内に公開されたんだね。これだけ迅速かつ明確に情報をまとめたチームに誇りを感じるよ。" userName="eastdakota" createdAt="2025/11/19 12:27:37" color="">}}




{{<matomeQuote body="チームのセンスって結構いいんだけどさ、今回はボット管理機能のテーブルの列名が機密情報に見えたんだ。俺らが参照してたマスタードキュメントには「列名は修正すべき」ってコメントが追加されてたし。ジョンと俺が、チームがもし見逃したとしても大体キャッチするんだよね。俺の場合、法学部卒なのも役に立つけど、大学でコンピュータサイエンスを専攻してて、SQLもRustのコードも理解できるってのが大きいな。" userName="eastdakota" createdAt="2025/11/19 12:33:08" color="#785bff">}}




{{<matomeQuote body="俺は君が返信してた相手じゃないけどさ、よく見るルールで、直接返信したり引用ツイートしたりすると「エンゲージメント」がそのアイデアを支持してるように見えちゃうからダメってのがあるよ。だから、スクリーンショット（ユーザー名削除済み）を撮って、そのリンクを貼るのが勧められてるね。" userName="DoctorOW" createdAt="2025/11/19 12:25:12" color="">}}




{{<matomeQuote body="根本原因を突き止めてデバッグする間にやったことだけど、ブログ記事には載せなかったことがたくさんあるんだ。WARPの停止で迷惑かけちゃってごめんね。さっき上のコメントでも言ったけど、俺らが英国のデータセンターのWARPエンドポイントを標的とした攻撃だと（間違って）信じちゃった結果だったんだ。間違いだったけど、エラーが最初に急増した場所から考えると、それは妥当な仮説で、俺らはそれを排除したかったんだよ。" userName="eastdakota" createdAt="2025/11/19 12:36:20" color="#38d3d3">}}




{{<matomeQuote body="このブログ記事とHacker Newsの投稿の両方を書いたのは、Cloudflareの超技術者で億万長者の創設者の一人、Matthew Princeだよ。彼が何か望めば、それが実現するのは間違いないね。" userName="thesh4d0w" createdAt="2025/11/19 00:21:04" color="">}}




{{<matomeQuote body="すごく人間味があって、正直な対応だね。こういうの好きだよ。採用活動にもめちゃくちゃ効果的だろうな。" userName="richardlblair" createdAt="2025/11/19 03:32:09" color="">}}




{{<matomeQuote body="＞ジョンにHNに投稿したいかテキスト送ったら、数分返信がなかったから俺がやった<br>企業のカルマ稼ぎって容赦ないね、たった数分がSLAなんて。俺にはこんな大企業のSLAは無理だわ。" userName="jofzar" createdAt="2025/11/19 01:51:09" color="">}}




{{<matomeQuote body="まあ、CEOがポストモーテムを投稿したんだから、そんなに多くのステークホルダーが上層にいるわけじゃないよね。他のエンジニアによるポストモーテムに関しては、Matthewが以前、エンジニアリングチームがブログを運営してて、彼がたとえ vetoしたいと思ってもやり方すら知らないだろうって言ってたよ。このURLも見てみて: https://news.ycombinator.com/item?id=45588305" userName="tom1337" createdAt="2025/11/19 00:25:15" color="#ff5c5c">}}




{{<matomeQuote body="俺が今まで見てきた感じだとさ、それが「エンジニアリングカンパニー」かどうかによるんだよね。" userName="madeofpalk" createdAt="2025/11/19 00:30:59" color="">}}




{{<matomeQuote body="Cloudflareは、このレベルの透明性を彼らの文化とインシデント対応プロセスにしっかり組み込んでるみたいだね。" userName="BrtByte" createdAt="2025/11/19 11:51:00" color="">}}




{{<matomeQuote body="彼だって数時間はトラフィック流したいと思ってたろうけど、結局流れなかったんだよね :p" userName="NewJazz" createdAt="2025/11/19 14:19:48" color="">}}




{{<matomeQuote body="ロースクールがどう役立ったか、もう少し詳しく教えてほしいな。CLOとコミュニケーションを取りやすくなったから？" userName="noname120" createdAt="2025/11/19 17:58:16" color="">}}




{{<matomeQuote body="こんなに偉い人の文章で「この人たちの下で働きたい」って強く思ったのは初めてだよ。求人広告がこんなにフランクで自由だったら、この記事は人柄を見るリトマス試験紙になるね。" userName="auto" createdAt="2025/11/21 17:01:55" color="#38d3d3">}}




{{<matomeQuote body="障害報告の障害報告か、いいね！透明性が2乗って感じだ。" userName="jeffrallen" createdAt="2025/11/19 06:49:19" color="">}}




{{<matomeQuote body="数百万ドル規模の`.unwrap()`の話だね。インターネットの重要なインフラで`Result`に`.unwrap()`を使うのは「絶対に失敗しない、もし失敗したら即スレッドをクラッシュさせる」って言ってるのと同じ。Rustコンパイラは失敗する可能性を認めさせたのに、彼らは優雅に処理せずパニックを選んだ。これは「パースしろ、検証するな」というアンチパターンだね。後の祭りだけど、これだけ大きな障害なら仕方ないよ。" userName="ojosilva" createdAt="2025/11/19 00:10:04" color="#ff5c5c">}}




{{<matomeQuote body="みんな`.unwrap()`には盲点があるみたいだね。サンプルコードでよく使われるからかな。本番コードでは`unwrap`や`expect`は`panic`と同じようにレビューすべきだ。結局`panic`を呼ぶなら`unwrap`を使っても無効ではないけど、`unsafe`ブロックに`SAFETY`コメントが必要なように、本番の`unwrap`には`INFALLIBILITY`コメントが必要だよ。`clippy::unwrap_used`で強制できる。" userName="wrs" createdAt="2025/11/19 00:32:07" color="#ff5733">}}




{{<matomeQuote body="FAANGで複数インシデント対応を主導した俺の見解だけど、根本問題はRustやコーディングエラーじゃないよ。問題は、1. ボット管理システムが全ネットワークに設定を高速配布する設計で、これがリスクを生む。2. 高いリスクがあるのに、設定が原因だと特定するのに2時間、ロールバックにさらに1時間かかったこと。障害時のSOPは既知の正常状態へのロールバックだ。コードの根本原因も大事だけど、信頼性はバグを避けるだけじゃなくて、変更と挙動の関係性を可視化し、素早いロールバック能力を持つことだよ。Cloudflareは長年素晴らしい仕事をしてきたし、Rustコードは今やインターネットトラフィックの20%を担ってる。本当に素晴らしいチームだ。" userName="abalone" createdAt="2025/11/19 05:04:38" color="#38d3d3">}}




{{<matomeQuote body="エラーをちゃんと処理するより、安易にパニックを起こさせる方が簡単だったら、それはダメな言語設計だね。" userName="arccy" createdAt="2025/11/19 00:35:23" color="">}}




{{<matomeQuote body="彼らは色々なレベルで失敗したね。自分で設定した最大機能数を超える`config`を処理しないプロキシをどう書いたんだ？機能数にハードリミットがあるのに、DBのエクスポートクエリにリミットがないのはなぜ？なぜ本番環境で非重要変更をステージングでテストせずにやるんだ？なぜサイバー攻撃だと思って、2時間後にやっと`config`ファイルだと気づいた？なぜボットネットをそんなに恐れるんだ？次のAisuru攻撃を処理できるか不安だよ。俺は顧客をCloudflareから移行させることにする。次のボットネット攻撃をCloudflareが耐えきれるとは思えないし、もしそうなったら全員道連れだからね。" userName="polack" createdAt="2025/11/19 09:47:57" color="#785bff">}}




{{<matomeQuote body="`unwrap()`にはINFALLIBILITYコメントが必要って話だけど、`foo[i]`みたいな配列アクセスも`get(i).unwrap()`と一緒じゃん？これも全部にコメント必要になるの？" userName="dist1ll" createdAt="2025/11/19 01:11:33" color="#ff5733">}}




{{<matomeQuote body="例で`unwrap()`を使うのはやめてほしいな。みんな真似しちゃうから。`burntsushi.net/unwrap/`の記事みたいにちゃんと理解してるなら別だけど、たいていの開発者は判断できないんだし、`expect()`とかでエラー処理する方がいいって。" userName="brabel" createdAt="2025/11/19 07:56:02" color="#ff5733">}}




{{<matomeQuote body="『数億円の`.unwrap()`話』ってちょっと言い過ぎじゃない？本当の問題は“前提が崩れた”ことだよ。たとえちゃんとエラー処理してたとしても、結果は変わらなかったはずだって。" userName="jcalvinowens" createdAt="2025/11/19 02:45:29" color="#ff5733">}}




{{<matomeQuote body="Javaのchecked exceptionsへの対応と同じだよ。みんな適当に例外処理したり、runtime exceptionとして再スローしちゃうんだ。RustのResultが流行った時、スタックトレースのないchecked exceptionって言われて、ちょっと変な感じがしたな。" userName="dehrmann" createdAt="2025/11/19 02:09:01" color="#38d3d3">}}




{{<matomeQuote body="スライスとかはイテレーターで関数型スタイルで書くべき。複雑な数少ないケースで`[i]`使うなら、インデックスの正しさをわざわざ説明しなくてもいいけど、やってもいい。Rustはほぼ安全だからSAFETYコメントも稀だし、コンパイラが境界チェックしてくれるから、イテレーター使えばコメントもいらないよ。" userName="tux3" createdAt="2025/11/19 01:21:02" color="#ff5c5c">}}




{{<matomeQuote body="この話は『パニック禁止コード』が前提。パニックOKなら`unwrap`/`expect`/`index`でいいし、CLIツールとかならレビューも楽。だから、パニック禁止コードで`[i]`を使うなら、境界内である理由を説明すべき。それすら避けるべきだけどね。no-panic crateみたいに、コンパイラがパニックしないことを証明する取り組みもあるよ。" userName="wrs" createdAt="2025/11/19 02:13:16" color="#ff5c5c">}}




{{<matomeQuote body="言語やスタイルガイドによっては、例外を投げっぱなしにするのはダメって決まってるんだ。Google C++は例外禁止で、`absl::Status`を使う。Rustは知らないけど、`unwrap`もそういう禁止対象になりそうだね。" userName="cvhc" createdAt="2025/11/19 00:56:43" color="#38d3d3">}}




{{<matomeQuote body="Facebookでは危険な機能に`DANGEROUSLY_CAST_THIS_TO_THAT`とか、デカい名前つけて“使うなよ！”って強調してる。`unwrap()`も`UNWRAP_OR_PANIC()`って名前なら、もっと慎重に使われるはずだよ。パニックする可能性のある箇所をコンパイルエラーにするような、超厳格モードがあれば最高なのに。" userName="nine_k" createdAt="2025/11/19 01:08:37" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="`unwrap`って、怠けてるわけじゃないんだ。`Result`が絶対に失敗しないって保証してるんだよ。もし失敗したら、プロセス全体を止めるってこと。問題は開発者の思い込みであって、`unwrap`の使い方が悪かったんじゃないよ。" userName="SchwKatze" createdAt="2025/11/19 00:45:59" color="#785bff">}}




{{<matomeQuote body="`unwrap()`は非推奨にして`or_panic()`に改名してほしいな。stdlibメソッドと一貫性も出るし、もっと使わないようにって意識させられると思うんだ。" userName="speed_spread" createdAt="2025/11/19 02:36:35" color="">}}




{{<matomeQuote body="Rustのおかげでメモリやスレッド安全性が当たり前になったのは嬉しいね。今度はそれ以上のコード正確性を目指せるなんて最高だ。これからの進化がマジ楽しみ！" userName="bombela" createdAt="2025/11/19 07:51:59" color="">}}




{{<matomeQuote body="Cloudflareから顧客を移行させるのはやりすぎじゃない？完璧なシステムなんてないし、Cloudflare使ってたDDoS対策ができなくなるぞ。サービスは100%稼働しない、ただ稼働率が高いか低いかの違いだけだ。" userName="jve" createdAt="2025/11/19 10:12:07" color="#38d3d3">}}




{{<matomeQuote body="`unwrap`にはlintが必要って意見にはちょっと異論あり。`expect`ならエラーの理由を書かされるからまだマシ。`unwrap`は怠慢だ。あと、`indexing_slicing`のlintがClippyでデフォルトじゃないなんて信じられない。" userName="tormeh" createdAt="2025/11/19 08:51:00" color="#ff5c5c">}}




{{<matomeQuote body="Cargoにはpanicしないことを証明できるクレート用のラベルが要るな。panicするクレートは依存から全部排除したいんだ。言語レベルでこの辺りの静的保証があれば最高なのに。俺は絶対使うね。" userName="echelon" createdAt="2025/11/19 03:59:18" color="#785bff">}}




{{<matomeQuote body="もし言語設計者がそれを`UNWRAP_OR_PANIC()`って名付けてたら、みんな「なんでtry-catch使えないんだよ！」ってキレてたに違いないよな。" userName="Nathanba" createdAt="2025/11/19 01:11:14" color="">}}




{{<matomeQuote body="botnet対策には、Cloudflare以外にも自前でホストできるサービスはたくさんあるんだぞ。Cloudflareに頼る必要なんてないし、全部彼らの管理下にあるのは嫌だな。" userName="Carriethebest" createdAt="2025/11/19 10:20:00" color="">}}




{{<matomeQuote body="`expect(”damn it, how did this happen”)`みたいにしても、結局`unwrap`と挙動は一緒で、エラーメッセージも役に立たないことが多いんだ。最近のRustだと`expect`が`unwrap`より優れてるってことはあまりないね。" userName="wongarsu" createdAt="2025/11/19 09:25:11" color="#45d325">}}




{{<matomeQuote body="不正なfeatureファイルがあった時に、プログラムがまともな処理をできるとは限らない。Nginxのコンフィグエラーみたいに、パニックするのが普通ってこともあるんだ。本当の問題は、変なファイルが作られてデプロイされた、もっと上流にあるってことだね。" userName="AgentME" createdAt="2025/11/19 01:53:02" color="#ff33a1">}}




{{<matomeQuote body="Swiftのimplicit unwrap `!`は使わないな。`self.view?.isEnabled ?? false`みたいに、`?`で明示的にアンラップする方を選んでる。`@IBOutlets`も、`!`じゃなくて`?`で定義してるんだ。俺は「ベルトとサスペンダー」タイプだからね。" userName="ChrisMarshallNY" createdAt="2025/11/19 01:37:48" color="">}}




{{<matomeQuote body="Rustの`unwrap()`や`expect()`は使うべきじゃない。これはRustのNull Pointer Exceptionだよ。`unwrap()`、`expect()`、変な計算とかさ、全部Rust開発者の怠慢か、言語の設計機能をちゃんと使ってないせいだね。言語側でこのコードを危険ってマークできる機能が必要だし、依存ツリーからこういうコードを除外する静的ツールも必要だよ。俺が使ってるライブラリが`unwrap()`して、そいつらのバカなパニックでアプリがクラッシュするなんてゴメンだね。Rust開発者は明らかにこの杖に頼りすぎだよ: https://github.com/search?q=unwrap%28%29+language%3ARust&typ...<br>Rustチームは早くこの穴を塞ぐべきだ。" userName="echelon" createdAt="2025/11/19 11:39:07" color="#785bff">}}




{{<matomeQuote body="「Checked Exceptionsって実は良いよね」派の人たち、集まれ！:p<br>もう少し構文糖衣があったら、採用は全然違った結果になっただろうね。例えば、「このメソッドでDeepExceptionが上がってきたら、すぐに元の例外を原因とする新しいMylayerExceptionに置き換える」みたいな簡単な構文があればよかったのに。そうすれば、レイジーなプログラマーが全部GenericなMylayerExceptionにぶち込むようなシステムを作っちゃうかもしれないけど、それでも後から直すのは、あちこちに散らばったRuntimeExceptionsを直すよりずっと楽になるはずだよ。" userName="Terr_" createdAt="2025/11/19 02:46:31" color="">}}




{{<matomeQuote body="ひどい`unwrap`系メソッドについては、色々やるべきことがあるね。<br>いくつかのアイデアはこうだ。<br>− 本番Rustコードではコンパイルさせない。<br>− `unsafe`ブロックの中だけで使えるようにする。<br>− エンジニアからの明示的な「safe」アノテーションを要求する。（これは時間が経つと間違ったものになる可能性があるけどね。）<br>− Cargoで依存関係や推移的依存関係における`unsafe`の使用を禁止できるようにする。" userName="echelon" createdAt="2025/11/19 03:25:47" color="#45d325">}}




{{<matomeQuote body="`unwrap()`するってことは「`Result`は絶対に失敗しない」って言ってるようなもんだろ。<br>`Result`を返すってことは、そもそもメソッドが失敗する可能性があるってことだよな。" userName="Rohansi" createdAt="2025/11/19 01:09:22" color="">}}




{{<matomeQuote body="`unwrap`は決してOKじゃないってことに、俺は反対するよ。もし`unwrap`を使う必要があるなら、君の型が問題と一致していないんだ。直すべき。型にエンコードされた不変条件が現実と合ってないんだよ。API境界を変えて、要件と潜在的な失敗ケースの食い違いを、処理できるエッジ部分で表面化させろ。値が必要なら、それが利用できないケースを明示的に処理する必要がある。エラーパスを定義しろ。そうしないと、まあ、今回みたいになるんだよ。" userName="frumplestlatz" createdAt="2025/11/19 09:22:52" color="#ff5733">}}




{{<matomeQuote body="この手の問題にはlintツールさえあるのに、みんなは我慢できずにそれを無効にしちゃうか、デフォルトじゃなくせって言い争ってるんだよな。いつものことだけど、技術の問題じゃなくて人間の問題だろ。ここ数年で随分進歩したけど、人は人だからね。" userName="pdimitar" createdAt="2025/11/19 01:29:24" color="">}}




{{<matomeQuote body="`unwrap`：あまり良くないけど、まあ理解はできる。「ありえない」はずのケースに、部分的なConfigでサイレントに動きつつオンコールを呼ぶ方がマシだけど、それにはかなりの工数がかかるね。<br>カナリアがないこと：懸念事項だけど、Cloudflareがユースケース上避けられないって言うなら、ある程度信じるよ。でも、だからこそさらに注意すべきだったのに、一部ではそうじゃなかった。<br>原因究明の遅さ：完全に不運だね。ステータスページもダウンしてたし、昨日はAzureのDDoSもニュースになってたし。<br>ぶっ壊れたSQL：これはもし俺がCloudflareで働いてたらブチギレるレベルだよ。ほぼ全てのプロダクションにConfigを一斉展開できる上に、通常の変更追跡の多くをバイパスできるシステムで、これがテストやレビューをすり抜けるのは大失敗だね。" userName="thatoneengineer" createdAt="2025/11/19 05:35:29" color="#38d3d3">}}




{{<matomeQuote body="俺の意見だけど、不正な設定に対しては明示的なエラーパスがあるべきだよ。プログラムは特定の終了コードやメッセージでアボートして、それを検知する監視役が古い、動作するConfigにロールバックして数分待ってから、また新しいConfigを適用してみるべきなんだ（もちろん、対応するアラートつきでね）。だから基本的に、悪いConfigは明示的に処理して、既知の動作するConfigにロールバックして対応すべきだよ。" userName="vbezhenar" createdAt="2025/11/19 10:42:04" color="#45d325">}}




{{<matomeQuote body="そんな仰々しいことまでしなくてもいいだろ。もしConfigが5分ごとに更新されるなら、きっとホットリロードされてるはずだ。もしそうなら、新しいConfigをパースしてる時、古いConfigはすでにメモリにあるはずだろ。そうなら、パースはパニックするんじゃなくて、警告をログに出して、メモリにある古いConfigで続行すべきだよ。" userName="jgilias" createdAt="2025/11/19 12:04:34" color="#ff5c5c">}}




{{<matomeQuote body="「古いConfigがすでにメモリにある」ってとこだけど、それって明らかに非目標だと思うな。俺の理解では、Cloudflareはフェイルセーフ（正当なトラフィックをブロックする）をフェイルオープン（有害なトラフィックを許可する）よりも優先してるからね。" userName="DoctorOW" createdAt="2025/11/19 12:27:19" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
