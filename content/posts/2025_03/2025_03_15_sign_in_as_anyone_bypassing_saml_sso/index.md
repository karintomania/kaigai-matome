+++
date = '2025-03-15T00:00:00'
months = '2025/03'
draft = false
title = 'マジかよ！？SAML SSO認証にバイパス脆弱性！誰でもなりすませるってマジ？'
tags = ["SAML", "SSO", "認証", "セキュリティ", "脆弱性"]
featureimage = 'thumbnails/red2.jpg'
+++

> マジかよ！？SAML SSO認証にバイパス脆弱性！誰でもなりすませるってマジ？

引用元：[https://news.ycombinator.com/item?id=43374519](https://news.ycombinator.com/item?id=43374519)

{{<matomeQuote body="GitHubのSAML実装はマジで使えねーわ。自分のアカウントを企業に持ち込むってのは、サイト上ではなんとかなるけど、GitHubでログインするアプリが、組織レベルで許可しちまうと組織のメンバーシップを読めなくなるのを防げないんだよねー（許可しなかったら、OAuthトークンから隠されちゃうけど、ちゃんと機能は持ってんの！）。SAMLセッションが必要なのは、アプリがユーザーから取得したトークンでデータを取得する場合だけーで、ざっと見た感じ、そんなケースほぼない。SASTツールは大抵アプリインスタンスのトークン使うし、GitHubアカウント持ってるやつなら誰でも組織のコード見せびらかしてくる。Tailscaleは指摘したら直してくれたけど、Sonarcloudは「誰にも言わないで」って言われたし、GitHubは数週間かけて「想定通り」って言ってきた。マジかよ。セキュリティバグ報告ってマジで報われない。たまたま見つけただけでもそう思うわ。仕事でやってる人とか尊敬する。" userName="asmor" createdAt="2025-03-15T20:50:37" color="">}}

{{<matomeQuote body="＞The idea is that you can bring your own account into an enterprise<br>＞ってことは認証だけの問題じゃないんだよね。GitHubがたまに、マジでたまーに、仕事のPRをマージする時に、デフォルトで個人のメルアド使ってくることがあるんだわ。誰かに聞かれたら、GitHub（とか他の場所）で、個人のと仕事のをごっちゃにしない方がいいってアドバイスしてる。" userName="eCa" createdAt="2025-03-15T22:19:06" color="">}}

{{<matomeQuote body="だからアカウントとデバイスの分離にはマジで神経質になっちゃうんだよね。Gitのプロファイルすら信用してない。GitKrakenのライセンスは、たとえ避けられたとしても、転職するたびに新しいの買ってる。個人的なGitHubで仕事のGitHubにコミットしようとしたり、その逆とか、ありえないからね。Microsoftアカウントとそのヤバい技術的負債が原因のスパゲッティも同じ。例えば、iOSのOutlookにログインしようとすると、「システム管理者がデバイス全体をリモートで制御してワイプできる」みたいな脅迫メッセージが表示される。無能なIT部門が悪意を持って個人のデバイスをワイプする可能性があるなら、マジ勘弁。あと、HNのスレで、父親が子供にラップトップを使わせたら、子供が学校のMicrosoftアカウントにサインインして、なぜか父親の個人のMicrosoftアカウントが学校のアカウントに統合されて、どうやっても直せなくて、学校のIT部門も気にしなかったって話もあったな。" userName="MortyWaves" createdAt="2025-03-16T13:24:02" color="#ff33a1">}}

{{<matomeQuote body="iOSだけじゃなくて、AndroidのOutlookも同じことするよ。皮肉なことに、Teamsは同じようなことしないから、緊急の用件があるときは、Teamsに送ってくれって言ってる。Outlookは絶対インストールしないから。" userName="soco" createdAt="2025-03-17T10:55:11" color="">}}

{{<matomeQuote body="組織によるんじゃない？今はコントロールがもっと細かくなってると思うよ。例えば、個人のスマホにTeamsとOutlook入れてるけど、できることはアプリの削除だけ。スクリーンショットは真っ白になるし、コピー＆ペーストもできない。" userName="cyberpunk" createdAt="2025-03-16T13:59:34" color="">}}

{{<matomeQuote body="MAM vs MDMね。MAMは、開発者がSlackで連絡できるようにしたいけど、MDMを個人のデバイスにインストールするのは（当然のことながら）嫌がる場合に有効ー少なくともうちの会社はそう思ってるみたい。" userName="deergomoo" createdAt="2025-03-16T16:44:14" color="">}}

{{<matomeQuote body="なんでそんな変なアカウント名使うんだ？個人のアカウント使えばいいじゃん？って言われた時、「マジかよ」って思ったわ。SAMLとか関係なく、仕事とプライベートは混ぜるなっていう主義だからね！顧客にメール送るのに個人のメールアドレスは使わないよ。" userName="nextts" createdAt="2025-03-15T23:31:36" color="">}}

{{<matomeQuote body="仕事用の2FAとか、職場のタスクに個人の携帯使うのって普通になってきてるよね。会社支給の端末を要求すると、もう持ってるじゃんって不思議がられる。個人の車でも同じようなことあるし。仕事とプライベートを分けるって考え方は古臭くなってきてるのかもね。" userName="freeopinion" createdAt="2025-03-16T13:56:31" color="">}}

{{<matomeQuote body="それマジわかる。だから、電話番号をIDとして扱うべきじゃないんだよ。" userName="mjevans" createdAt="2025-03-16T05:27:30" color="">}}

{{<matomeQuote body="ここで言うコネクションってどんな感じ？詳しく教えて！" userName="tsimionescu" createdAt="2025-03-16T15:24:08" color="">}}

{{<matomeQuote body="個人のidentityを、本人がほとんど管理できなくて、複数持ちにくいものに結びつけるのはどうなの？特に、個人用、準 профессиональный、 NSFW用、仕事用（でもサービスが要求するXを持ってない）とか、3つ以上欲しい場合もあるじゃん。" userName="mjevans" createdAt="2025-03-16T16:05:34" color="">}}

{{<matomeQuote body="うちの会社は、従業員が辞めた後の問題を防ぐために、仕事で個人のGitHubとかFacebook、Instagramとかを使うのを一切禁止してるんだよね。" userName="l72" createdAt="2025-03-15T23:13:31" color="#38d3d3">}}

{{<matomeQuote body="組織から削除すればよくない？" userName="booi" createdAt="2025-03-15T23:38:32" color="">}}

{{<matomeQuote body="GitHubのログイン名を＜company_name＞LIESとかに変えられたら、過去のPRとかIssueに全部残っちゃうじゃん。顧客が見る可能性のある公開リポジトリにも。" userName="onionisafruit" createdAt="2025-03-16T00:11:24" color="#ff5c5c">}}

{{<matomeQuote body="それって、個人のアカウントより、仕事専用のGitHubアカウントの方が当てはまるよね？どっちにしても、会社から削除されてもログインしてアカウント名を変えられるし。共有じゃなければ個人のアカウントも傷つかないし…だよね？これって実体験？" userName="TheDong" createdAt="2025-03-16T01:20:04" color="">}}

{{<matomeQuote body="仕事専用のアカウントなら、会社はいつでもアカウントを乗っ取れる（必要ならメールリセットとかで。だって仕事のメールアカウントは会社のものだし）。で、好きなようにできる。" userName="wlesieutre" createdAt="2025-03-16T02:02:43" color="#38d3d3">}}

{{<matomeQuote body="仕事専用のアカウントで、仕事のメールアドレスを使う場合ね…そこが抜けてた。でも、そうするとオープンソースの活動履歴が全部消えちゃう。採用とか履歴書で重要なのに。" userName="rendaw" createdAt="2025-03-16T03:39:45" color="#38d3d3">}}

{{<matomeQuote body="仕事用と個人用の両方のメールアドレスを記載したキーで、コミットに暗号署名する方法もあるよ（会社のポリシーが許せば）。そうすれば、会社は管理できるけど、あなたも自分のやったことの証明になる。" userName="cdogl" createdAt="2025-03-16T04:56:02" color="">}}

{{<matomeQuote body="もし会社のGitHubの履歴からあなたを消そうとするなら、署名済みのコミットを新しいコミットに置き換えることもできる。あなたはその仕事に対する法的権利を持ってない可能性が高いし、gitは履歴を書き換えられるし。" userName="tsimionescu" createdAt="2025-03-16T06:04:58" color="#785bff">}}

{{<matomeQuote body="国によるね。アメリカでは、著作権譲渡は通常永久的。EUやカナダでは、権利を取り戻せる場合もあるし、”道徳的権利”によって、会社が”悪いこと”をしたら使用を取り消せる場合もある。<br>アメリカでも、会社が”契約違反”をした場合、あなたのコードを全部削除させられる。" userName="withinboredom" createdAt="2025-03-16T10:41:50" color="#ff5733">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="EUとかカナダでも、仕事でやったことに対する著作権はないと思うよ。会社のために作ったものの著作権は、できた瞬間から全部会社のもの。<br>もしあなたが会社の請負業者なら話は別だけど。従業員なら、仕事で書いたコードの著作者としての権利はないんじゃないかな。" userName="tsimionescu" createdAt="2025-03-16T15:09:54" color="">}}

{{<matomeQuote body="「人格権」について調べてみて。道徳的に問題がある場合、自分の作品の使用を取り消せる場合があるよ。" userName="withinboredom" createdAt="2025-03-17T11:22:32" color="">}}

{{<matomeQuote body="一部の国では、著作者は人格権を譲渡・譲渡したり、主張しないことを認めたりできるんだって。普通はちゃんと書面でする必要があるみたいだけどね。" userName="TheNewsIsHere" createdAt="2025-03-17T18:25:46" color="">}}

{{<matomeQuote body="＞gitは履歴をめちゃくちゃに書き換えられるよね。<br>技術的にはそうだけど、代償が大きすぎるよ。リポジトリをcloneした人はみんなローカルコピーを消さなきゃいけなくなるからね。" userName="shiomiru" createdAt="2025-03-16T08:49:40" color="">}}

{{<matomeQuote body="署名なしのcommitも同じじゃない？commit hashを変えずにcommitのメタデータを変更できるの？" userName="tsimionescu" createdAt="2025-03-16T15:11:12" color="">}}

{{<matomeQuote body="＞もちろん、署名なしのcommitも同じじゃない？<br>そうだと思うよ。<br>GPの考えは、commitに積極的に署名することだったと思う。" userName="shiomiru" createdAt="2025-03-16T19:08:32" color="">}}

{{<matomeQuote body="質問なんだけど、commitに署名するのは本当に役立つの？commitが署名されていても、リポジトリの履歴から自分を消すのは同じくらい難しいんじゃない？" userName="tsimionescu" createdAt="2025-03-16T19:57:41" color="">}}

{{<matomeQuote body="もし意地悪な元雇用主が、誰かが辞めたときに公開リポジトリのcommit履歴から元従業員の名前を消したいと思っても、止めることはできないと思う。やる価値があるよりも面倒だし、規模が大きくならないと思うけどね。そうじゃなければ、会社のメールアドレスにまだあなたの名前が入っていれば、やった仕事の功績を失うことはないと思うよ。" userName="connicpu" createdAt="2025-03-16T05:26:17" color="#38d3d3">}}

{{<matomeQuote body="会社のメールアドレスへのアクセスが取り消される前に変更すればいいんじゃない？" userName="OJFord" createdAt="2025-03-16T13:43:40" color="">}}

{{<matomeQuote body="メールアドレスを隠すときに取得できるGitHubが生成したメールアドレスを使えばいいんじゃない？" userName="PokestarFan" createdAt="2025-03-15T23:07:10" color="#ff33a1">}}

{{<matomeQuote body="GitHubって、個人向けアプリにビジネス機能が無理やりくっついてる感じがするんだよね。うちの会社じゃ、GitHubだけが個人アカウントと仕事用システムがごっちゃになっててマジ困ってた。だからForgejoを試してみたらGitHub（とかGitLab、Gitea）より良かったから乗り換えたんだ。前の会社じゃみんな個人のGitHubアカウントを仕事で使ってたけど、エンタープライズ機能とか言い出して、従業員のSSOとか約束し始めたら、オンプレミスに逃げちゃった（GitHub EEじゃなくてね）。" userName="TheNewsIsHere" createdAt="2025-03-17T18:20:33" color="#38d3d3">}}

{{<matomeQuote body="複数のGithubアカウントを使うのは利用規約違反だよ。" userName="whyever" createdAt="2025-03-16T11:55:43" color="">}}

{{<matomeQuote body="ユーザーメニューの上にある、二つの反対向きの矢印のボタンに気づいたかな？それをクリックしてみて。" userName="asmor" createdAt="2025-03-16T18:42:26" color="">}}

{{<matomeQuote body="ベンダーさんたちを擁護すると、Githubってマジで色々やりにくいんだよね。リポジトリとかコミットとかPRを分析するツール（https://dev.log.xyz）を作ったんだけど、「Githubで見れるものはDevlogでも見れる」ようにするのがめっちゃ大変だった。OAuthの権限を選ぶ画面もマジで分かりにくいし。Githubでログインする時、どの組織の何の情報を共有してるのか全然わかんない。" userName="peterldowns" createdAt="2025-03-15T23:45:57" color="">}}

{{<matomeQuote body="＞Githubが色々やりにくいってマジ？「Githubで見れるものはDevlogでも見れる」ようにするのがめっちゃ大変だったって言うけど。<br>チームとか、メンバーシップとか、リポジトリへの割り当てとか、そんなの気にしなくて良くない？APIコール一発でいけるじゃん。<br>＞認証されたユーザーは、自分が所有するリポジトリ、コラボレーターであるリポジトリ、組織を通じてアクセスできるリポジトリにアクセスする権限がある。<br>https://docs.github.com/en/rest/repos/repos?apiVersion=2022-…" userName="wutwutwat" createdAt="2025-03-16T08:46:44" color="">}}

{{<matomeQuote body="このエンドポイント、ちゃんとテストすべきだったわ。GitHubのSAML実装って別のチームがやってて、いつも品質がイマイチで、データのパッチも汚いんだよね。例えば、通知のフィルタリングがテンプレートエンジンの中で行われてて、SAMLで全部制限されてると、ヘッダーだけ表示されて、その下に「すべてキャッチアップ」って表示が出ないし、「1-0/113」とか表示される。GitHub Enterprise Cloudってマジで色々貼り付けられてるだけだなって思うわ。" userName="asmor" createdAt="2025-03-16T08:57:22" color="#ff5c5c">}}

{{<matomeQuote body="これ、どこでも同じだよ。若い開発者ってJavaScriptで育ってるから、クライアントサイドの検証だけじゃ不十分だってことを信じさせるのがマジで大変。ましてや、要件とか予算を決めるビジネスオーナーに理解させるなんて無理ゲー。" userName="weard_beard" createdAt="2025-03-15T21:14:12" color="">}}

{{<matomeQuote body="「JavaScriptで育った若い開発者にクライアントサイドの検証だけじゃ不十分だってことを信じさせるのが難しい」って言うけど、それってJSplainingじゃない？<br>具体的にどれくらい難しいの？例とかある？説得する側と説得される側、どっちが大変？" userName="cluckindan" createdAt="2025-03-15T23:16:25" color="">}}

{{<matomeQuote body="それは経験させないと分かんないんじゃない？もしそれで満足してるなら、バグ見つけたら10ドルあげるって言って、そいつのブランチをハックしてデプロイしてみれば？そんで10ドルは没収して、教訓を覚えてもらう。" userName="nextts" createdAt="2025-03-15T23:34:36" color="">}}

{{<matomeQuote body="マジか。クライアントサイドの検証を信じちゃいけないってことを人に信じさせるのが、そんなに大変だなんて思わなかった。「自分が書いたコードにはXSSとかSQLインジェクションの脆弱性はない」とかなら、まだ信じられるけど。クライアントサイドの検証を信じるってありえないでしょ。" userName="fn-mote" createdAt="2025-03-16T01:16:23" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="SAML導入したけど、この記事のタイトルは全然驚きじゃないなー。SAMLの仕様自体はまあまあだけど、XML署名（とXML正規化）がマジでヤバいんだよね。あんなの委員会じゃないと作れないって。署名をアウトオブバンドで送るだけで、SAMLはもっと楽になるのに。" userName="Diggsey" createdAt="2025-03-15T20:39:36" color="#ff5c5c">}}

{{<matomeQuote body="もっとヤバいよ。XMLは拡張可能なマークアップ言語だから、SAMLの標準化委員会が独自の拡張メカニズム言語を作っちゃったんだもん。認証クッキー程度のデータに、プロトコルの上にプロトコルを重ねるなんて、 бюрократический な委員会しか思いつかない。" userName="jiggawatts" createdAt="2025-03-15T20:46:53" color="#45d325">}}

{{<matomeQuote body="SAMLの人たちが一番ヤバいわけじゃないよ。XML署名が一番ヤバいんだって（xADESとかSOAPとかにもある）。内部プラットフォーム効果を避けるために、署名を構造自体に埋め込むようにしたから、こういう問題が起きるんだよね。JWTはJSONの中にJSONだけど、少なくともアーキテクチャ的にはこういう問題は避けてる。" userName="whizzter" createdAt="2025-03-16T17:49:06" color="#ff33a1">}}

{{<matomeQuote body="SSOってマジで救いようないのかな？アカウントに個別にログインする方が良くない？アカウントを繋げるって、全部 megacompromised になるリスクがあるってことじゃん。" userName="TZubiri" createdAt="2025-03-15T23:02:58" color="">}}

{{<matomeQuote body="SAMLだけがSSOの標準じゃないよ。SAMLの前はKerberosがあったし、今はOpen ID Connectもある。他の標準にも問題はあるけど、SAMLはマジでひどい。SSOの脆弱性は一部のクライアントにしか影響しないことが多いけど、プロバイダー全体が壊れることは少ない。だから、複数のアカウントを持つよりSSOの方が安全だと思うよ。" userName="unscaled" createdAt="2025-03-16T00:47:00" color="">}}

{{<matomeQuote body="一番の問題は、ユーザーが全部同じパスワードを設定して、’SSOみたいなこと’をしちゃうこと。弱いシステムが攻撃されたら、組織全体で有効なクレデンシャルが漏洩する。パスワードマネージャーを使うべきだけど、現実的には無理。オンボーディングとかオフボーディングも面倒だし、サポートも大変。セキュリティ対策も全部のシステムで実装しなきゃいけないしね。" userName="blincoln" createdAt="2025-03-16T11:45:14" color="#38d3d3">}}

{{<matomeQuote body="＞Having decentralised authentication means that onboarding and offboarding need to have a bunch of tedious manual steps, or custom automation.”<br>分散認証は、オンボーディングとオフボーディングを手動でするか、自動化する必要があるってことだよね。<br>さらに、SAML SSOだけじゃダメで、SCIMも実装して、リアルタイムにアイデンティティをアップデートする必要がある。これもSAMLとは別のプロトコル。" userName="semitones" createdAt="2025-03-16T16:28:32" color="">}}

{{<matomeQuote body="’If there are regulatory requirements for account lockouts’<br>＞もしアカウントロックアウトの規制要件があるなら”<br>ベンダーが実装すれば良いんじゃない？コントロールが必要なことが、リスクになることもあるよね。" userName="TZubiri" createdAt="2025-03-16T13:04:01" color="">}}

{{<matomeQuote body="OIDCはSAMLよりマシだけど、ハードル低いよね。OIDCにも問題はあるけど。" userName="thayne" createdAt="2025-03-16T01:18:11" color="">}}

{{<matomeQuote body="OIDCの問題はSAMLとは全然違うんだよね。" userName="tptacek" createdAt="2025-03-16T01:33:51" color="">}}

{{<matomeQuote body="SAMLの代わりにOIDCをSSOに使うこともできるよ。" userName="gusmd" createdAt="2025-03-16T00:20:56" color="">}}

{{<matomeQuote body="SAML(もっと広く言うとXML-DSIG)はマジで一番ヤバいセキュリティプロトコルだと思う。OAuthに移行するために必要なことは全部やるべき。少なくとも、SAMLに頼る新製品は絶対に出したくない。マジで危険。実用的な形式検証でブレークスルーがない限り、これがDSIGの最後の脆弱性になることはないと思う。" userName="tptacek" createdAt="2025-03-15T21:11:06" color="#ff5733">}}

{{<matomeQuote body="いつかXML DSigがやらかしてるアホなこと全部エッセイに書きたい。暗号化とか抜きにしても。企業のソフトウェア脳って感じ。<br>誰かWS-*とOASIS/XACMLとかのメーリングリストと標準化団体の闇を深掘りしてくれ。" userName="nimish" createdAt="2025-03-15T23:30:38" color="#45d325">}}

{{<matomeQuote body="ぜひそれについて書いてください。マジで読みたいです。" userName="pushkar2911" createdAt="2025-03-16T16:38:02" color="#ff5c5c">}}

{{<matomeQuote body="Security Cryptography Whatever’sの今週のSAMLについてのくだらない話はマジで楽しみ。" userName="shellcromancer" createdAt="2025-03-15T21:22:21" color="">}}

{{<matomeQuote body="マジか、考えたことなかったけど、確かにそれやるべきだわ。サンキュー！" userName="tptacek" createdAt="2025-03-15T21:28:40" color="#ff5733">}}

{{<matomeQuote body="infosecのグチを言うポッドキャストに登録したい。VTuberじゃないやつに月5ドルPatreonでサブスクしたいわ。" userName="janderson215" createdAt="2025-03-16T00:01:56" color="">}}

{{<matomeQuote body="俺の理解が間違ってるかもしれないんだけど、SAMLにはSSOプロバイダーがセッションをキャンセルできるっていう利点があるんだよね？それってマジ？" userName="akdor1154" createdAt="2025-03-16T01:43:52" color="#ff5c5c">}}

{{<matomeQuote body="マジで？多くのSAMLのセットアップでは、IDPとサービスの間に直接的なネットワークインタラクションはないんじゃない？せいぜいURL経由でメタデータを共有するくらい。" userName="akerl_" createdAt="2025-03-16T03:18:50" color="#45d325">}}

{{<matomeQuote body="MicrosoftがAzure/M365でこれ実装してるよ。" userName="p_ing" createdAt="2025-03-16T13:39:12" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="OIDCにはアウトオブバンドのバックチャネルログアウトがあるよ。" userName="Nextgrid" createdAt="2025-03-16T02:51:44" color="">}}

{{<matomeQuote body="REXMLは他に選択肢がない時以外マジで使うべきじゃないよ。無効なXMLも平気でパースしちゃうから、後々無限に問題が起きるんだよね。正規表現でXMLをパースするってマジありえない。Nokogiriが使われるようになったのは性能だけじゃなくて、正確だから。" userName="kayodelycaon" createdAt="2025-03-15T21:05:24" color="#ff5c5c">}}

{{<matomeQuote body="＞正規表現でXMLをパースするってマジありえない。”正規言語じゃないものを正規表現でパースするなっていう教科書的な例だよね。" userName="LtWorf" createdAt="2025-03-15T23:09:52" color="#ff5733">}}

{{<matomeQuote body="もっと言っちゃうと、正規表現でパースするなって話。検索（テキストに探してるものが含まれてるか）に使うべきで、パース（非構造化入力から構文木を作る）に使うべきじゃない。" userName="wavemode" createdAt="2025-03-16T17:04:27" color="#ff5733">}}

{{<matomeQuote body="AIコードアシスタンスのリスクの一つは、大規模なコードベースで使われるライブラリについて、全体像を見てるとは限らないことだよね。o3をテストしてたとき、ライブラリと関係ない問題を直そうとするたびに、コードブロックで使われてるライブラリが勝手に変わってた。" userName="mtkd" createdAt="2025-03-15T21:40:09" color="">}}

{{<matomeQuote body="Samlは設計上安全じゃない。他の人も言ってるけど、例えばhttps://joonas.fi/2021/08/saml-is-insecure-by-design/とか。Parser differentialsは想定されてるし、必要なことでもある。AWS SigアルゴリズムはV4は理論上安全だけど、SigV1とSigV3は設計上安全じゃなかった。" userName="GauntletWizard" createdAt="2025-03-15T21:16:03" color="#ff5733">}}

{{<matomeQuote body="これは素晴らしい記事だね。ahacker1に感謝。SAML実装を安全にするために、すごい高度で価値のある仕事をしてる。SSOReadyの俺たちは彼の仕事に感謝してる。WorkOSも彼とのコラボについて記事を書いてるよ: https://workos.com/blog/samlstorm" userName="noleary" createdAt="2025-03-15T20:33:25" color="#ff5c5c">}}

{{<matomeQuote body="＞GitLabでこの脆弱性の悪用可能なインスタンスを発見し、セキュリティチームに通知したよ。”GitLabが修正をリリースしたみたい: https://about.gitlab.com/releases/2025/03/12/patch-release-g..." userName="derektank" createdAt="2025-03-15T19:26:00" color="#785bff">}}

{{<matomeQuote body="関連情報として、Latacoraの(2019)年の記事、「JSONオブジェクトに署名する方法（とその落とし穴）」[1]があるよ。<br>要するに、ネストされた構造に署名するのは難しくて、ミスしやすいってこと。メッセージをraw stringで包んで、そのraw stringに署名するのが簡単だよね。<br>[1]: https://www.latacora.com/blog/2019/07/24/how-not-to/" userName="RainyDayTmrw" createdAt="2025-03-16T01:29:18" color="">}}

{{<matomeQuote body="もっと単純な結論として、署名があるべき場所を探すべきじゃないかな？　むやみやたらにXPathの”//ds:Signature”みたいなのを使って、想定外の場所にある署名を見つけようとするんじゃなくてさ。" userName="wcoenen" createdAt="2025-03-15T20:46:54" color="">}}

{{<matomeQuote body="脆弱性への対応って、甘すぎる気がするんだよね。全部捨てて、危険な部分だけを取り除くことができないから、大規模な化学療法みたいになっちゃうんだ。<br>もしあなたがプライドのあるIT管理者なら、SAMLなんて将来の計画から外すべきだよ。SSOっていう考え方自体が怪しいし。XMLの解析は一週間で二回も問題が起きてるから、今後は避けるべき。XMLをJSONに置き換えるポリシーってどうなの？" userName="TZubiri" createdAt="2025-03-15T23:06:29" color="#ff33a1">}}

{{<matomeQuote body="＞XML解析が一週間で二回も問題になってるから、今後は避けるべきで、XMLをJSONに置き換えるポリシーってどうなの？<br>OAuth 2.0とその拡張であるOpen ID Connectは、もう10年以上前からあるんだよね。こいつらにも独自の落とし穴（OIDCの定義が甘いID tokenとか、考えの足りないimplicit flowとかhybrid flow）があるけど、SAMLほど危険なものはないよ。<br>ほとんどのアプリケーションがOpen ID Connectに対応してるのに、組織が惰性でSAMLを選んでるのを見ると、もったいないなって思う。" userName="unscaled" createdAt="2025-03-16T00:53:56" color="#45d325">}}

{{<matomeQuote body="ある程度の規模の組織（例えば10人以上）なら、SSOを展開しないのは職務怠慢だよ。SSOの目的は、単一の管理ポイントと必須の2FAスタックを持つことなんだから。<br>もちろん、SAMLを使ったSSOを避けられるなら、避けるべきだよね。" userName="tptacek" createdAt="2025-03-15T23:29:23" color="">}}

{{<matomeQuote body="このJSONを正しくパースして<br>{<br>    ”data”: ”XXX”,<br>    ”sig”: ”BAD”,<br>    ”sig”: ”GOOD”<br>}" userName="L-four" createdAt="2025-03-16T01:34:25" color="">}}

{{<matomeQuote body="セキュリティが重要な状況では、パーサーは重複キーがあったらエラーを返す必要があるよね。一般的なパーサーがどうとか、RFCがどうとか関係なく。<br>つまり、JSONを扱うセキュリティソフトウェアは、Go, Javascript, ruby, pythonとかで書くべきじゃないってこと（ほとんどの人が重複キーを無視するJSONパーサーを使ってるから）。<br>haskell (aeson)とかrust (serde_json)とかjava (gson, org.json)みたいに、重複キーでエラーを出すJSONライブラリがある言語を選ぼう。<br>正しいパース結果は’400 bad request’だよ。" userName="TheDong" createdAt="2025-03-16T08:31:29" color="#ff33a1">}}

{{<matomeQuote body="Javaだと、gsonじゃなくてJacksonのことじゃないかな？　もしかしたら変わったのかもしれないけど。あの大御所でも間違えることがあるってことだね。<br>https://github.com/protocolbuffers/protobuf/blob/6aefdde9736..." userName="chrome111" createdAt="2025-03-16T11:13:44" color="">}}

{{<matomeQuote body="最後のやつで上書きするよ。<br>これは厳密にはパーサーの問題じゃないね。<br>CSVもあるし。<br>インデックスベースの暗黙的なキーを持つバイナリプロトコルや、可変長フィールドの前にバイト長を付加するものもある。これらは最高の標準だよ（IPヘッダーとかTCPヘッダーを見て）。" userName="TZubiri" createdAt="2025-03-16T13:04:59" color="">}}

{{<matomeQuote body="過激な意見だけど、ウェブ開発者がセキュリティ関連のコードに触れないようにするのが一番だと思ってる。設計、プロトコル、データフォーマットからね。ウェブ開発の習慣や設計思想は、セキュリティが必要なコードには合わないんだよ。むしろ逆効果になることさえある。" userName="Muromec" createdAt="2025-03-15T21:03:24" color="#ff5c5c">}}

{{<matomeQuote body="ウェブ開発者のスキルを責めるのはフェアじゃないと思うな（でも、JavaScript使ってleftpaddingしてるなら自業自得かも）。ウェブソフトウェアってリスクがめっちゃ高いし、100%繋がってるから、他のどんなものより100倍危ないんだよね。" userName="TZubiri" createdAt="2025-03-15T23:07:54" color="">}}

{{<matomeQuote body="ブログ記事で脆弱性を説明しといて、問題のparser differentialを省略するのはちょっとイラっとくるな。まるで物語の導入部分だけ書いて、クライマックスを省くみたいなもんじゃん。" userName="bawolff" createdAt="2025-03-15T20:32:27" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
