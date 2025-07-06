+++
date = '2025-06-29T00:00:00'
months = '2025/06'
draft = false
title = 'なんと、ロシア語キーボードがあるとランサムウェアが停止する！'
tags = ["ランサムウェア", "マルウェア", "セキュリティ", "サイバー攻撃", "検出回避"]
featureimage = 'thumbnails/orange_pink3.jpg'
+++

> なんと、ロシア語キーボードがあるとランサムウェアが停止する！

引用元：[https://news.ycombinator.com/item?id=44415233](https://news.ycombinator.com/item?id=44415233)




{{<matomeQuote body="マシンをマルウェア解析用のサンドボックスみたいに見せかけると、多くのマルウェアは解析されたくないから止まるんだって。まあ、これはイタチごっこの一部だよね。" userName="ttul" createdAt="2025/06/29 19:59:20" color="#ff5733">}}




{{<matomeQuote body="ファームウェアにVirtualBoxって文字列を入れてみたらどうかな？<br>（ちょっとニヤリ）" userName="ronsor" createdAt="2025/06/29 20:09:08" color="">}}




{{<matomeQuote body="そうそう、もっとVMっぽく見せるなら、ホストマシンにVirtualBoxのゲスト拡張機能を入れるのもアリかもね！<br>（あくまでネタだけど！）" userName="tripplyons" createdAt="2025/06/29 20:58:21" color="">}}




{{<matomeQuote body="これ、冗談抜きでやるのって何かデメリットある？結構効果ありそうだけどさ。" userName="thrtythreeforty" createdAt="2025/06/29 21:52:59" color="">}}




{{<matomeQuote body="最初からシステムを強化して、そもそも脆弱にならないようにする方が、そんなに大変じゃないし、もっと多くの脅威から守れると思うよ。" userName="DelaneyM" createdAt="2025/06/29 22:04:44" color="#38d3d3">}}




{{<matomeQuote body="同意だね。例えば、管理者権限じゃないアカウントを使うとかさ。" userName="Melatonic" createdAt="2025/06/29 22:29:42" color="#45d325">}}




{{<matomeQuote body="それってランサムウェアからどうやって守ってくれるの？<br>詳しく教えて！" userName="anonymars" createdAt="2025/06/30 00:10:30" color="">}}




{{<matomeQuote body="権限が少ないユーザーだと、書き込みできるファイルが限られるから、被害の範囲をそこに留められるんだよ。" userName="petersellers" createdAt="2025/06/30 00:46:22" color="#ff33a1">}}




{{<matomeQuote body="でもさ、普段書き込み権限があるファイルって、俺にとって大事なファイルなんだよね。そういうのは、変更できないスナップショットとかオフラインバックアップが役に立つよ。" userName="azov" createdAt="2025/06/30 03:59:07" color="#785bff">}}




{{<matomeQuote body="これ、個人より会社みたいな環境でめっちゃ重要なんだよね。攻撃者がローカル管理者権限を持っちゃうと、ネットワーク内であちこち動き回るのがすごく簡単になっちゃうからさ。" userName="mr_mitm" createdAt="2025/06/30 06:09:58" color="#38d3d3">}}




{{<matomeQuote body="ローカルadmin権限って、ネットワーク内を移動するのにどう関係あるの？" userName="anonymars" createdAt="2025/06/30 12:57:08" color="">}}




{{<matomeQuote body="そうそう、賢いマルウェアはPCのCPUコア数とかHDD容量とか、ハードウェア温度やデバッガがあるかまでチェックするんだよ。Windowsのマルウェアは30年でかなり進化してるんだよねー。" userName="mrkramer" createdAt="2025/06/30 10:02:50" color="">}}




{{<matomeQuote body="アカウントがPCにログインすると痕跡が残るからだよ。メモリやディスクに認証情報とかが残るんだ。管理者が適当なPCにログインすることも多いし、サービスアカウントもあるし、昔はadminパスワードが全部同じだったりね。ちゃんとやってれば大丈夫だけど、そうじゃないとこが多いんだ。これらにアクセスするにはローカルadmin権限が必要で、それを使えば他のシステムにも入れるんだよ。" userName="mr_mitm" createdAt="2025/06/30 14:47:29" color="#785bff">}}




{{<matomeQuote body="アンチチートソフトがなんか文句言いそうだな。" userName="akersten" createdAt="2025/06/29 23:10:52" color="">}}




{{<matomeQuote body="最近の（アンチチートとかマルウェア検出とか）がどれくらい優秀か、何かおすすめの本とか記事ある？昔はゲームをクラックしてたんだよねー。" userName="wiz21c" createdAt="2025/06/30 10:55:08" color="">}}




{{<matomeQuote body="最近のWindowsサーバーはほとんど仮想化されてるから、これがまだ効くかは分かんないね。他の情報を見てる可能性もあるけど。" userName="Melatonic" createdAt="2025/06/29 22:29:01" color="">}}




{{<matomeQuote body="（引用）「サンドボックスに見せかけるとマルウェアは解析避けて止まる」<br>はあ？それは全然別の話だよ。ロシア語の入力方法が入ってたら、マルウェアは法的な問題避けるために止まるんだってば。" userName="thaumasiotes" createdAt="2025/06/29 22:48:31" color="#ff33a1">}}




{{<matomeQuote body="リバースエンジニアとかホワイトハッカーじゃないけど、こういう話読むの好きだな。マルウェアのほとんどはWindows向けなんだって。理由はWindowsの市場シェアがデカいから。Windowsマルウェアの情報は、この辺のセキュリティ企業のブログから仕入れてるよ。<br>https://www.trendmicro.com/en_us/research.html<br>https://www.proofpoint.com/us/blog<br>https://research.checkpoint.com/<br>https://blog.talosintelligence.com/<br>https://www.welivesecurity.com/en/<br>Microsoftのセキュリティブログもいいよ: https://www.microsoft.com/en-us/security/blog/<br>研究のほとんどは、マルウェアの永続化、アンチVM、アンチデバッグ技術に関することだね。例えば、マルウェアのアンチデバッグとアンチVM技術のいいまとめだよ:<br>https://anti-debug.checkpoint.com/<br>https://github.com/CheckPointSW/Evasions" userName="mrkramer" createdAt="2025/06/30 11:16:29" color="#38d3d3">}}




{{<matomeQuote body="なるほどね。アカウントそのものっていうより、ローカルマシンで管理者権限がないと取得できない他のアカウントデータに関することなんだね（ほとんどクレデンシャルスタッフィングみたいだ）。" userName="anonymars" createdAt="2025/06/30 17:42:09" color="">}}




{{<matomeQuote body="他にも手がかりはあるよ。例えば、今他のHNの人気投稿で回避しようとしてるこれとかね:<br>https://wbenny.github.io/2025/06/29/i-made-my-vm-think-it-ha..." userName="loktarogar" createdAt="2025/06/30 05:21:13" color="">}}




{{<matomeQuote body="公平に言うと、俺たちが目にする（特にニュースで聞く）ほとんどの攻撃は、レベルの低いセキュリティ設定とか、不十分なトレーニングやアーキテクチャから来てるんだよね。ほとんどの会社が持ってないか、ほとんど何もしてないセキュリティ監視については言うまでもないけどね。ゼロデイ攻撃なんて、それに比べたらごくわずかだよ。定義上パッチが当たってないわけだし。だから、コメントした人は基本を指摘してて正しかったと思うよ。" userName="ofjcihen" createdAt="2025/06/29 23:06:03" color="">}}




{{<matomeQuote body="Qubes OSは、コンパートメント化のアプローチを使ってる限り、未知の脆弱性からも守ってくれるはずだよ。俺には効いてるみたいだけどね（願わくばだけど）。" userName="fsflover" createdAt="2025/06/30 10:39:41" color="">}}




{{<matomeQuote body="Mac向けのマルウェアって今すっげー増えてるらしいぜ。個人的には、iOSを狙ったマルウェアが一番興味深いな。詳しいことはこの辺のサイト見てみろよ。<br>https://taomm.org/<br>https://citizenlab.ca/<br>https://objective-see.org/blog.html" userName="tackypenguin" createdAt="2025/06/30 13:34:54" color="">}}




{{<matomeQuote body="PatyaとかContiみたいなランサムウェアとか、Fancy BearやCozy Bearみたいな連中については、ロシア政府が非公式に“ロシア人以外なら攻撃しても黙認してやるよ”って保証してる証拠があるんだってさ。<br>あと、もし自分がロシア人だって言ったり、そいつらとロシア語でやり取りしたりすると、無料でシステムを元に戻してくれることもあるらしいぜ。" userName="exiguus" createdAt="2025/06/29 21:30:47" color="#45d325">}}




{{<matomeQuote body="もしロシア人だって言ったり、ロシア語でそいつらとやり取りしたら、タダでシステムを直してくれるって話だけど、AI翻訳がめっちゃ使える今の時代に、それがどう通用するのかマジで不思議だよな〜。<br>ちょっと違う話だけど、前にロシア人のシェアウェア作者が、ロシア人向けに無料ライセンスを配ってたのを思い出したわ。" userName="userbinator" createdAt="2025/06/29 21:38:08" color="#38d3d3">}}




{{<matomeQuote body="AI翻訳の時代にそれがどう機能するのかって不思議に思ってるみたいだけど、単に訳すだけじゃ文化的近さなんて示せないんだぜ。話し方のパターンが全然違うからね。<br>AIに全部の会話をやらせるって手もあるかもしれないけど、例えばClaudeなんて正確なフレーズを出すの拒否するんだ。だって、ソーシャルエンジニアリング攻撃だってちゃんと見抜くからさ。" userName="ivan_gammel" createdAt="2025/06/29 22:13:03" color="#785bff">}}




{{<matomeQuote body="優秀なLLMに“ネイティブっぽく振る舞って”ってプロンプトするのって、そんな難しくないんだぜ。必要ならジェイルブレイクだって楽勝だ。<br>この話で難しいのは、そいつ（LLM）が本当にネイティブみたいに機能してるかってのを確かめることの方だな。" userName="orbital-decay" createdAt="2025/06/30 02:30:13" color="">}}




{{<matomeQuote body="君は、LLMに『〇〇みたいに振る舞って』ってプロンプトすれば、どんな〇〇に対しても自動的にそうなるって思い込んでるみたいだね。<br>LLMの能力には限界があるんだ。例えば『IQ300の核物理学者になって材料科学の博士号を教えて』ってやっても、何かは出てくるだろうけど、指定されたペルソナに完璧になりきれる保証はないんだよ。一応、頑張ってはくれるだろうけどね。" userName="overfeed" createdAt="2025/06/30 06:33:08" color="">}}




{{<matomeQuote body="仮定なんかしてないってば。俺はネイティブスピーカーで、Claudeを実際に使った経験を話してるんだよ。Claudeはロールプレイングとか主要な言語にはかなり強いけど、いくつか注意点はあるんだ。<br>もし君がネイティブスピーカーじゃないなら、そいつが良い結果出してるかってのを確かめるのは難しいだろうな、それが言いたかったことだよ。" userName="orbital-decay" createdAt="2025/06/30 08:03:27" color="">}}




{{<matomeQuote body="いやいや、それは無理だって。よく使うフレーズをいくつか出すことはできても、独自の話し方を持つ一人の人間みたいになりきるなんて別の話だよ。<br>例えば、Claudeはネイティブっぽく聞こえる友達との会話の始め方として、こんなフレーズを出すんだ（引用）: Прив! Чё как?とかДарова, живой?とかね。<br>でも、どれが良い？って聞くと、Дарова, как сам?って選んじゃうんだけど、これってもう多くの状況でヘンに聞こえるんだよ。" userName="ivan_gammel" createdAt="2025/06/30 09:53:35" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="それ、LLMの使い方としておかしいだろ。" userName="hn-shithole" createdAt="2025/06/30 13:24:04" color="">}}




{{<matomeQuote body="そりゃそうだろ。でも、お前が何を聞くべきかを正確に知ってなきゃ（それには言葉と文化の知識が必要で、お前にはそれがないだろうけど）、LLMはさっきみたいな答えを返す可能性があるんだよ。" userName="ivan_gammel" createdAt="2025/06/30 14:16:43" color="">}}




{{<matomeQuote body="こんな感じで会話始めたら 相手に こいつ12歳だろ”って思われるよ" userName="tclover" createdAt="2025/06/30 11:19:56" color="">}}




{{<matomeQuote body="そうそう その言語知らないと LLMのせいでティーンエイジャーみたいになってるって絶対気づかないよね" userName="ivan_gammel" createdAt="2025/06/30 13:18:18" color="">}}




{{<matomeQuote body="完璧じゃん お母さんのパソコンで困ってて”って言えばいいよ 12歳を演じ続けろ もし怪しまれて学校のこととか聞かれたら？LLMに信じられる返事させられるかな 大変だよ！" userName="taneliv" createdAt="2025/06/30 12:31:33" color="">}}




{{<matomeQuote body="AIで日常会話レベルの外国語は学べないってこと？" userName="lelele" createdAt="2025/06/29 22:30:49" color="">}}




{{<matomeQuote body="外国語を日常会話レベルにするには 実際に日常で使う必要がある つまり その言語が話されてる文化にどっぷり浸かるってこと" userName="bigfatkitten" createdAt="2025/06/30 00:31:36" color="">}}




{{<matomeQuote body="はは Lobsters 2001 が毎日現実味を帯びてくるな 作中のセリフ引用 いや ごめん 商用翻訳ソフトは使わないんだ 通訳者は思想的に疑わしいし 資本主義的な記号論と従量課金APIばかりだ もっと英語をうまく実装しないと だろ 私と話すためだけに自分で言葉を覚えたってこと ああ 簡単だった 10億ノードのニューラルネットワークを生成して TeletubbiesとSesame Streetをフルスピードでダウンロードしたんだ 文法の間違いはエントロピーのオーバーレイのせいでごめんね デジタル指紋が僕らのチュートリアルに埋め込まれてるのが怖いんだ ヤバいEULAにひどくやられた チェチェンの情報テロリストが持ってる特許ペーパーカンパニーなんて実験する気はないよ 君は人間だから ライセンスのない食べ物を消化したからってシリアル会社に小腸を取り上げられる心配はいらないだろ https://www.antipope.org/charlie/blog-static/fiction/acceler..." userName="BlueTemplar" createdAt="2025/07/02 20:14:31" color="#785bff">}}




{{<matomeQuote body="じゃあロシア人に金払って交渉してもらえばいいじゃん" userName="raverbashing" createdAt="2025/06/30 09:28:32" color="">}}




{{<matomeQuote body="どんでん返し 実は身代金を要求してきたのはそいつらだったっていう ドメイン名のブローカーを思い出すな ベストプライス交渉してあげる”って言って 販売額の何パーセントか持ってくやつら" userName="sebastiennight" createdAt="2025/06/30 13:32:28" color="">}}




{{<matomeQuote body="ロシア語の シボレス が出てくるだろうなって思うよ[0] https://en.wikipedia.org/wiki/Shibboleth" userName="Terr_" createdAt="2025/06/30 06:22:04" color="#45d325">}}




{{<matomeQuote body="AI翻訳の時代にどうなるんだろうね もし疑われたらアルバニア語で繰り返せって言われるよ" userName="orthoxerox" createdAt="2025/06/30 09:45:27" color="">}}




{{<matomeQuote body="そんな単純じゃないと思うな。<br>どこにでもロシア人はいるし、被害者の会社にもいるだろうから、ロシア人ってだけじゃダメだよ。<br>会社がロシア系だって納得させるか、親がFSBだって言うとか、そういうことしないと。<br>身代金が何億とかだったらね。" userName="atemerev" createdAt="2025/06/29 22:21:49" color="">}}




{{<matomeQuote body="いや、それは単純なことだよ。<br>会社にロシア人が一人いるだけで、どうしてランサムウェアから守れるの？<br>そんなことがマルウェアに検出できるわけないじゃん。<br>ていうか、コンピューター使ってる人の父親が誰かなんて、ランサムウェアが気にするわけないでしょ？" userName="IAmBroom" createdAt="2025/06/30 13:57:38" color="">}}




{{<matomeQuote body="それ、まさに核心をついてるね。<br>「テントの中で小便するな」（身内を攻撃するな）って方針は、ロシアのグループはみんなよく分かってることなんだ。" userName="mdhb" createdAt="2025/06/30 06:20:36" color="">}}




{{<matomeQuote body="ロシア人を攻撃しないのは、被害者が警察に訴えて、警察は捜査せざるを得なくなるからだと思うよ。<br>外国相手だと、この点では問題にならないんだね。<br>特別な免責があるわけじゃないと思うけど。<br>でも、外国人も問題になることあるよ。<br>最近、Joe Bidenからの訴えで始まった捜査の後、何人かのサイバー専門家が有罪になったし。" userName="codedokode" createdAt="2025/06/30 18:49:16" color="">}}




{{<matomeQuote body="00年代後半に友達の PC から「winlockers」をいっぱい消してたロシア人として、私は反対かな :D<br>でも、あれはそんなに洗練されてなかったと思う。<br>ファイルは暗号化しないんだ。<br>閉じられない画面で「払え」って要求するだけ。<br>たまに「アダルトサイトへのクイックアクセスウィジェットをインストールしてくれてありがとう」とか、笑える言い方のもあったし。" userName="grishka" createdAt="2025/06/30 00:37:41" color="">}}




{{<matomeQuote body="キリル文字キーボードが有効になってるシステムを特に標的とするマルウェアがないとしたら、逆にびっくりするけどね。" userName="I_am_tiberius" createdAt="2025/06/29 22:04:50" color="">}}




{{<matomeQuote body="キリル文字キーボードはいっぱいあるんだよ。<br>ブルガリア人を攻撃しないでね :)" userName="Shorel" createdAt="2025/07/01 10:19:35" color="">}}




{{<matomeQuote body="どの Windows でも最高のマルウェア対策は、普段使うアカウントを管理者じゃないやつにすることだよ。<br>別に管理者権限のあるアカウント（ローカルでも OK）を作って、パスワードは別にする。<br>何かインストールしたり管理者で Powershell/CMD 動かす時に、管理者アカウントのログイン画面がポップアップで出るんだ。<br>これは Linux の sudo と同じ。<br>ちゃんとした IT 部門はみんなこうしてるよ。<br>何もしてないのに管理者の画面が出たらおかしいってすぐわかるし、ほとんどのマルウェアは入らない。<br>普段使いは普通（短すぎず）のパスワード、管理者はもっと複雑のにできるのもいいね。<br>「おばあちゃんの PC」とか、変なもんクリックしがちな人に特にオススメだよ。" userName="Melatonic" createdAt="2025/06/29 20:33:20" color="#ff33a1">}}




{{<matomeQuote body="あー、Linux使えばいいんじゃね？" userName="Phurist" createdAt="2025/06/29 20:39:06" color="">}}




{{<matomeQuote body="俺もLinux毎日使おうと何年かおきに試すけどさ、「Linuxは時間がタダなら無料」ってジョーク、マジだなって思うわ。" userName="floundy" createdAt="2025/06/29 20:55:37" color="">}}




{{<matomeQuote body="管理者昇格のポップアップが出てなくてもマルウェアは結構何でもできるんだよね。権限ないユーザーで実行されても、そのユーザーができるファイル操作とか、ネット接続は自由自在。<br>データ流出とかユーザーの重要ファイルへのランサムウェア攻撃、ただの破壊行為は防げないよ。" userName="zahlman" createdAt="2025/06/29 21:41:13" color="#ff5733">}}




{{<matomeQuote body="2000年代〜2012年くらいまでは管理者じゃないアカウント使うのは有効だったかもね。でもVista以降のマルウェアはUACに対応して、今は普通のユーザーとしてもうまく動くんだよ。通常のユーザーがアクセスできるデータは全部ランサムウェアの標的。<br>管理者権限を制限してもデータ保護にはほとんど役に立たないね。<br>俺は大事なことは物理的に別PCでやるけど、Windowsの非管理者アカウントでデータアクセスを分けるのもほぼ同じくらい良いよ。Windowsのユーザー間の隔離は結構しっかりしてる。<br>Chromiumのカスタム版も同じような動きするね。" userName="EvanAnderson" createdAt="2025/06/29 20:59:10" color="#45d325">}}




{{<matomeQuote body="これは本当だけど、防御って多層的にやるもんだし、Microsoft謹製のDefender AVとかもめちゃくちゃ良くなってるよ。<br>俺に言わせれば、ほとんどのマルウェアは無知なユーザーが間違ったことしてるからかかるんだと思うけど、それはまた別の話だな。" userName="Melatonic" createdAt="2025/06/29 22:32:03" color="">}}




{{<matomeQuote body="「無知なユーザーが間違ったことしてる」ってのはちょっと厳しいんじゃない？そういうユーザーは犯罪行為の被害者だよ。防御策はもっと良くできるはず。<br>Windowsにはローカルファイルの不変性とか、非特権ユーザーとして実行されるランサムウェアから守る機能がない。突然大量のデータを上書きし始めたアプリを保護する機能もない。<br>代わりに、ランサムウェア対策の唯一の答えみたいにOneDriveをゴリ押ししようとしてるだけなんだよ。" userName="cube00" createdAt="2025/06/29 23:03:15" color="#785bff">}}




{{<matomeQuote body="適材適所だよな。Linuxはデプロイ用、LinuxかMacは開発用、Windowsはゲームと普段使い用。それぞれの分野で圧倒的に優れてるし、議論するまでもないくらい明白だろ。" userName="johanneskanybal" createdAt="2025/06/29 21:07:35" color="">}}




{{<matomeQuote body="何がうまくいかなかったのか、もうちょっと詳しく教えてくれる？最近のMacBookにインストールしたとか、サポートがあんまり良くないやつ？<br>俺の経験だと、ポピュラーなディストリビューションのインストールと実行は超簡単だよ。Windowsより楽なくらい。クラウドアカウント作らされたり、プライバシーの質問に山ほど答えさせられたりしないからね。インストールしたらすぐ新しいデスクトップが起動する感じ。" userName="pkulak" createdAt="2025/06/29 21:06:57" color="">}}




{{<matomeQuote body="「quasi-malicious customized versions of Chrome」って何のこと？" userName="pogue" createdAt="2025/06/29 22:18:33" color="">}}




{{<matomeQuote body="いろんなデバイスで使ってみたよ。DellのノートPC（GPU切り替えがLinuxのディスプレイドライバーで悪夢だった）、自作デスクトップ、Raspberry PiにRPi OSとか。<br>Linuxのほとんどのことは大丈夫だし、ターミナルも結構使えるんだ。でも、Windows/Macだと一瞬なのにLinuxだとすごく面倒な10%くらいのことのせいで、結局離れちゃうんだよね。<br>例えば、Google DriveのLinuxクライアントはないでしょ。rcloneで1時間いじって、双方向同期できるようにしても、トークンは毎週期限切れで更新しなきゃいけない。<br>まあ、「Google Drive使うな」ってのが解決策の一つなのはわかるけど、今のワークフローをLinuxで動かすための小さいプロジェクトとか、Linuxの制約に合わせるためにワークフローを変えるのにかかる時間が、結局無駄な時間として積み重なっちゃうんだ。" userName="floundy" createdAt="2025/06/29 21:19:29" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="大きな組織で情報セキュリティの仕事してる者だけど、正直、この記事は間違ってないよ。どんなに分かりやすいセキュリティトレーニングとかEDR対策をしても、インシデントの９５％以上は、ユーザーが（たまに超分かりやすい）フィッシング詐欺のリンクを踏んだせいなんだ。<br>あと、記事で言われてるのと違って、Windows DefenderはAirlockと組み合わせてランサムウェア攻撃から救ってくれたこともあるよ。" userName="ropable" createdAt="2025/06/30 01:06:34" color="#ff5733">}}




{{<matomeQuote body="Linuxでゲームはもう何年も前からできるよ。<br>Windowsが必須なのは、アンチチートがあるマルチプレイヤーゲームをやる場合がほとんどじゃないかな。" userName="ekianjo" createdAt="2025/06/29 21:59:24" color="">}}




{{<matomeQuote body="マルウェア対策でLinuxのセキュリティ構造に特別なものはないよ。Linuxの市場シェアが低いから標的にされないだけで、これはせいぜい知られてないことによるセキュリティ効果だよ。UnixのセキュリティモデルはWindows NTよりずっと単純だし、みんなSELinux無効にするから機能も生きてないんだ。<br>もしマルウェアに感染したら、LinuxでもユーザーアカウントのデータはWindowsと同じくらい漏洩とか身代金のリスクがあるってこと。" userName="EvanAnderson" createdAt="2025/06/29 21:07:00" color="#38d3d3">}}




{{<matomeQuote body="「Controlled folder access」って、その保護機能の一部なんじゃない？<br>あとシステムの復元ポイントとかも対策になるよね？" userName="eviks" createdAt="2025/06/30 09:17:41" color="">}}




{{<matomeQuote body="＞There is no Google Drive client for Linux<br>え、何言ってんの？<br>GnomeにはGoogleアカウントの機能が何年も前からあるし、NautilusからGoogle Driveに普通にアクセスできるじゃん。" userName="tokai" createdAt="2025/06/29 21:24:04" color="">}}




{{<matomeQuote body="https://xkcd.com/1200/<br>リンクだけ貼るのは気が引けるけど、まさにこの通りだよ。複数人で使うシステムなら意味あるけど、たぶんほとんどのHN読者は一人で使ってるでしょ？<br>一人用デスクトップで管理者権限を分けるメリットって正直思いつかないんだ。<br>管理者じゃないからって、マルウェアが実行されてユーザーアカウント内に居座るのを防げるわけじゃないしね。" userName="Aachen" createdAt="2025/06/29 21:39:32" color="#ff33a1">}}




{{<matomeQuote body="（ユーザーのローカルデータにアクセスされても）広がりを止めるのには結構役立つよ。（小さく始めて昇格していく）昇格経路攻撃が今も定番なのはそのためさ。<br>あと、AppLockerとかで使うアプリだけを許可する方法もあるし。<br>PCを物理的に分ける代わりにVMを使うのはどうかな？" userName="Melatonic" createdAt="2025/06/29 22:34:23" color="">}}




{{<matomeQuote body="そうそう、LinuxでPongが動くのと、Linuxでゲーム全体ができるのはイコールじゃないんだよね。<br>ほとんどのゲームは起動しないか、動作が悪かったりするから。" userName="johanneskanybal" createdAt="2025/06/30 00:57:11" color="">}}




{{<matomeQuote body="それってさ、Windows Vista（2006年）の頃からUser Account Control (UAC)がやってることとそっくりじゃない？" userName="noisem4ker" createdAt="2025/06/29 20:45:21" color="">}}




{{<matomeQuote body="Windowsを使わなきゃいけない理由っていっぱいあるんだよ。俺はゲームいくつかやってて、それがLinuxだとWINEやProton使っても対応してないからWindows箱を持ってるんだ。" userName="cortesoft" createdAt="2025/06/29 21:38:27" color="">}}




{{<matomeQuote body="それは無理だよ。悪意ある第三者がChromiumのディストリビューションを作ってて、管理者権限なしでユーザーのAppDataフォルダに完全に機能するブラウザとしてインストールされるんだ。閲覧履歴を抜き出したりとか、余計な機能が付いてるんだよ。Electronベースのアプリって大体そう。AppDataフォルダからChromiumが動いてるだけ。ITや中央管理を回避するための「シャドウIT」ソフトウェアのエコシステム全体が、AppDataフォルダにインストールされて管理者権限なしでバッチリ機能してるんだ。" userName="EvanAnderson" createdAt="2025/06/29 22:52:57" color="#45d325">}}




{{<matomeQuote body="もうずいぶん前からゲームのためにWindowsなんて要らないってば。SteamのゲームはLinuxで動くし。" userName="cynicalsecurity" createdAt="2025/06/29 21:49:33" color="">}}




{{<matomeQuote body="「みんなSELinux無効にしてる」って言うけど、それ多分RH系の話でしょ。個人的な見解だけど、多くのLinuxデスクトップはapparmorかカーネルセキュリティモジュールなしでやってると思うよ。あ、そうそう、俺はSELinux無効にしないけどね、それが原因かクイックチェックする時以外は。当然俺は「みんな」じゃないけど、「誰か」ではあるね。" userName="gerdesj" createdAt="2025/06/29 21:46:23" color="">}}




{{<matomeQuote body="ProtonDBがどれくらいのゲームがうまく動くか調べるのにすっごく役立つって分かったよ。URL: https://www.protondb.com/<br>Steamでログインして自分の正確なライブラリのサマリーを見ることもできるから、興味ある人はどうぞ。" userName="KronisLV" createdAt="2025/06/29 22:49:57" color="">}}




{{<matomeQuote body="数年おきに誰かが俺にWindowsを使わせるんだけど、俺のデータって全く価値ないんだなって思うよ。だってあれって巨大なアンチパターンで、ただただ時間を無駄にするだけだもん。" userName="fredfish" createdAt="2025/06/29 21:08:41" color="">}}




{{<matomeQuote body="＞「Controlled folder access」ってその防御の一部じゃないの？<br>デフォルトで無効だと効果出すの難しいよね。<br>＞restore pointsも？<br>System Restoreを使えば、個人ファイルに影響なくこれらの変更を元に戻せるよ→https://support.microsoft.com/en-au/windows/system-restore-a..." userName="cube00" createdAt="2025/06/30 16:50:47" color="#38d3d3">}}




{{<matomeQuote body="＞広がりを止めるのにかなり役立つよ（ユーザーのローカルデータにアクセスできてもね）。<br>日常使いのWindowsマシンでは、ユーザーは権限の低いユーザーアカウントで実行すべきだよ。<br>そうは言っても、最近の攻撃は全部データが目的なんだ。金になるからexfil＼ransomware＼blackmailが全てなんだよ。個人の家庭用PCには横方向の移動や大きな標的はないしね。<br>xkcdを引用するのは気が引けるけど、本当なんだ：https://xkcd.com/1200/<br>＞あと、applockerみたいなのを実行して、使うアプリ全部ホワイトリスト化することもできるんじゃない？<br>個人のマシンにはちょっとやりすぎだし、そもそもAppLockerのライセンスないでしょ。AppLockerは企業のマシンでもすっごい大変なんだよ。タスクがすごく特定されたコンピューター以外でAppLockerを設定した経験だと、ホワイトリスト化して、また試して、もっとホワイトリスト化して、また試して、の巨大で終わりのない苦行なんだ。洗って、すすいで、エンドユーザーから苦情来て、繰り返し。<br>＞あと、個別の物理箱じゃなくて、VM使えばいいんじゃない？<br>現実的な問題だね。俺は余ってる低スペックのノートPCをいっぱい持ってるんだ。俺のマシンは、ほとんどがカスタマーのお古ゴミ。ちゃんとしたマシンにお金かけたのは2015年頃から無いんだよ。😊" userName="EvanAnderson" createdAt="2025/06/29 22:50:22" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
