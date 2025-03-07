+++
date = '2025-02-28T00:00:00'
draft = false
title = '数億人が使うアプリにコード実行権を得る方法とは？'
tags = ["セキュリティ", "プログラミング", "エレクトロン", "アプリ開発", "脆弱性"]
featureimage = 'thumbnails/light-orange4.jpg'
+++

> 数億人が使うアプリにコード実行権を得る方法とは？

引用元：[https://news.ycombinator.com/item?id=43210858](https://news.ycombinator.com/item?id=43210858)

{{<matomeQuote body="Electronのメンテナとして言うけど、自動更新やコード署名、ノータリゼーションの仕組みは本当に大事。それを台無しにされると苦労が倍増。コード署名証明書が危険にさらされるのはマジで最悪の事態だから、気を付けて。自分のプロジェクトでは、抽象化や依存チェーンの長さには注意してるよ。" userName="felixrieseberg" createdAt="2025-02-28T23:38:33" color="#785bff">}}

{{<matomeQuote body="自動更新なしでソフトをリリースしよう。それぞれのソフトが永続的に使えることを目指すべき。ユーザーのシステムに触れるのは特別な場合だけに。サーバーが関わるアプリなら、ユーザーに混乱を与えない方法で通知だけして、良いアップデートの理由があればユーザーは自発的にアップデートするはず。" userName="RadiozRadioz" createdAt="2025-03-01T06:06:40" color="#ff5733">}}

{{<matomeQuote body="サポートの負担が増えるし、ユーザーのためにも、ソフトを時々アップデートできるようにしとくべき。でもその負担が全部サポートにいくのも現実だよね。" userName="Hackbraten" createdAt="2025-03-01T08:11:19" color="">}}

{{<matomeQuote body="サポートしないバージョンを拒否することはできる。でもユーザーが自分のPCでソフトを自由に使うことは許されるべきだよ。" userName="cdmyrm" createdAt="2025-03-01T08:37:03" color="">}}

{{<matomeQuote body="必ずしもB2Bの話じゃないよ。300ドル未満の製品に関しては、君の提案は無理があるから。" userName="PeterStuer" createdAt="2025-03-01T09:58:15" color="">}}

{{<matomeQuote body="B2Bも悪ソフトにやられることは多い。それに、自己更新機能は長期的には有利だから、古いソフトが放置されることがセキュリティ上の爆弾になるリスクを考えるべき。" userName="sigmoid10" createdAt="2025-03-01T11:30:57" color="#ff5c5c">}}

{{<matomeQuote body="企業内の閉じられたネットワークでは自己更新は有効でないよ。更新は運用の方針としてIT部門が決定するべきだから。" userName="buran77" createdAt="2025-03-01T12:48:08" color="">}}

{{<matomeQuote body="短期的にはユーザーが選んで更新するのが良いかもしれないけど、長期的には更新を遅らせるリスクは大きい。結局、システムがカオスになる。" userName="sigmoid10" createdAt="2025-03-03T10:18:58" color="">}}

{{<matomeQuote body="昔の消費者向けソフトはこうだったね、今は高速なブロードバンドがあるから珍しいけど。" userName="account42" createdAt="2025-03-04T11:47:18" color="">}}

{{<matomeQuote body="自動更新はプラットフォームが提供すべきだと思う。旧システムをサポートするのは難しいけど、ユーザーに影響を与えない更新が理想だってこともある。" userName="klabb3" createdAt="2025-03-01T12:19:15" color="">}}

{{<matomeQuote body="ファイル転送のことなんだから、ファイルに触れないでいるなんて無理でしょ。システムのプログラムファイルについて言ってるのは明らかだよね、ユーザーのパッケージマネージャーによって管理されてるファイルのこと。" userName="RadiozRadioz" createdAt="2025-03-01T13:23:41" color="">}}

{{<matomeQuote body="多くのケースでパッケージマネージャーなんて存在しないし、Windows StoreはMSアカウントが必要だし、macOSのアプリストアはサンドボックス制限でアプリを制限してる。Linuxはパッケージマネージャーの種類が多すぎて、対応が大変。自動更新機能は必要だけど、理想的にはアプリが自分でアップデートするべきじゃないんだよね。私のアプリはオフラインでも動くし、プライバシーのためにe2eeも使ってるから、アップデートの心配は無い方がいいけど、常に変わる環境の中では難しい。" userName="klabb3" createdAt="2025-03-01T14:12:46" color="#ff5733">}}

{{<matomeQuote body="あなたの意見には同意だけど、アップデートの役割については残念ながら違うと思う。理想的なビジョンは共有できるけど、現実はそれとは違う。AppleやMicrosoftは良いアップデートの仕組みを提供していないし、ユーザーがソフトを自分で更新するのは無理なんじゃない？" userName="pjerem" createdAt="2025-03-01T08:13:20" color="">}}

{{<matomeQuote body="今のLinuxのパッケージ管理はこうなってるよ。新しいバージョンをリリースして、パッケージの保守者がそれをパッケージ化してリリースする。解決策は存在するのに、JavaScriptを書いてる人がそのことを知らないのが現実なんだ。" userName="cdmyrm" createdAt="2025-03-01T08:38:07" color="">}}

{{<matomeQuote body="だから、私は”Linuxを除いて”って言ったわけ。みんなが使うOSでパッケージの保守者はどこにいるの？（これは皮肉じゃなく、私はLinuxのデスクトップでこの記事を書いてるよ）。" userName="pjerem" createdAt="2025-03-01T10:10:42" color="#38d3d3">}}

{{<matomeQuote body="この意見は正しいね。シューズボックスの鍵を持って、コピーを2*N（冗長性）作ってN個は2つのシューズボックスに保存する。鍵は常にオフラインにして、重要なものにはほとんど署名しない。もしあなたのCAが攻撃を受けても、オフラインの鍵があれば新しいCAの鍵を署名できるし、古いものの取り消しもできる。" userName="rustcleaner" createdAt="2025-03-01T12:16:31" color="#38d3d3">}}

{{<matomeQuote body="テープでも光学でもシリコンでも紙でも大丈夫だけど、数千ドルでハードウェアセキュリティモジュールを手に入れられるよ。理由がないわけじゃない。" userName="oncallthrow" createdAt="2025-03-01T12:54:34" color="">}}

{{<matomeQuote body="数千ドルはちょっと高すぎる理由じゃない？我々が知ってる中で最も信頼性が高く安価なハードウェアセキュリティモデルは紙だよ。QRコードを印刷して、火災対策の金庫に一つ、別の場所にも保管すればいいだけ。" userName="xandrius" createdAt="2025-03-01T14:05:33" color="">}}

{{<matomeQuote body="プリンターにはキャッシュされたページのハードドライブがあることが多いから注意が必要。" userName="HeatrayEnjoyer" createdAt="2025-03-01T15:04:53" color="">}}

{{<matomeQuote body="質問です。他のサイトからインポートするウェブサイトをよく見かけるけど、ハッシュが使われていないことが多い。これは見た目通り危険なの？どうして人々はハッシュを使わないの？" userName="TZubiri" createdAt="2025-03-01T02:13:03" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="やっぱりハッシュを見つけて追加する方法を知ってるかが重要だよね。実際、スクリプトを提供してるサードパーティーの責任だと思うんだけど、あそこはハッシュを使ってもらうインセンティブがないんだよ。" userName="bastawhiz" createdAt="2025-03-01T02:38:05" color="">}}

{{<matomeQuote body="正直、ブラウザがこれを簡単に解決できると思うけど。デブモードで「ハッシュXを持ってるスクリプトが静的に定義されてないのが読み込まれました。これは大きなセキュリティリスクです」と警告を出すだけでいいんだ。そうすれは、スクリプトを追加して、サイトを走らせて、ハッシュを追加するだけで完了。" userName="valenterry" createdAt="2025-03-01T04:20:42" color="#ff5733">}}

{{<matomeQuote body="CSPヘッダーを定義して、ハッシュが分かってるサードパーティーのスクリプトだけを実行するようにすればいいよ。" userName="sirl1on" createdAt="2025-03-01T06:36:26" color="">}}

{{<matomeQuote body="依存関係をベンダリングするのがいいって。メンテナンスする側にはこっちの方がずっと良いし、キャッシュは信頼性があるのはファーストパーティーのドメインだけだから。依存関係をベンダリングすれば、自分でハッシュを計算できるし。" userName="no_wizard" createdAt="2025-03-01T20:14:52" color="#ff5c5c">}}

{{<matomeQuote body="サードパーティー配信のCDNはハッシュにどう影響するかな？HTTPSとインテグリティハッシュは全然違う攻撃ベクターを対象にしてると思うんだ。" userName="TZubiri" createdAt="2025-03-01T21:45:14" color="">}}

{{<matomeQuote body="実際のメリット（キャッシングによる応答速度の改善）が得られないなら、ハッシュをちゃんとすることを気にしないで、信頼できるコピー（もしくは知られていて多分バージョン管理されたもの）をそのまま出せばいい。" userName="0xCMP" createdAt="2025-03-02T00:08:57" color="">}}

{{<matomeQuote body="でも、自分でハッシュを手に入れられるよね？例えば、wgetでURLを取得して、sha256でファイルを計算する感じ。" userName="TZubiri" createdAt="2025-03-01T21:43:51" color="">}}

{{<matomeQuote body="人気ブラウザが協力して、以下のアップデートを出してくれたらいいなと思う。<br＞- Xバージョン以降、ハッシュなしで読み込まれるスクリプトについて目立つポップアップを表示する。<br＞- Yバージョン以降、ハッシュなしで読み込まれるスクリプトをブロックする。こんな感じで、年内にはこの問題を解決できると思う。開発者がハッシュを指定しないなら、そのサイトは壊れちゃうし。" userName="quacksilver" createdAt="2025-03-01T10:08:46" color="#38d3d3">}}

{{<matomeQuote body="その通りだね。ハッシュは絶対に使うべきだよ。" userName="valenterry" createdAt="2025-03-01T04:19:12" color="#785bff">}}

{{<matomeQuote body="本来はやるべきじゃないけど、主要なブラウザのベンダーが追跡を好んでるから、禁止にはならないだろうね。" userName="LtWorf" createdAt="2025-03-01T06:45:18" color="">}}

{{<matomeQuote body="Chromeがハッシュのないスクリプトの読み込みを全てブロックすべきって言ってるの？それだとたくさんのサイトが壊れるよね。＞”ウェブを壊さないで”という記事を見てみて。 Disclosure:私はGoogleで働いてるけど、Chromeには携わってないよ。" userName="Thorrez" createdAt="2025-03-01T13:51:59" color="#ff5c5c">}}

{{<matomeQuote body="そうかもしれないけど、セキュリティの観点からは全然問題ないよ。" userName="valenterry" createdAt="2025-03-01T06:49:45" color="">}}

{{<matomeQuote body="追跡されるのは追跡されないよりもセキュリティが低いよね。" userName="LtWorf" createdAt="2025-03-01T07:05:38" color="#785bff">}}

{{<matomeQuote body="こんにちは、Electronアプリの開発者です。Electron BuilderとAWS S3を使って自動更新を行っていますが、商業用証明書のコストのせいでWindowsの署名を保留しています。Azure Trusted Signingは商業用証明書よりもかなり安いの？CIのビルドパイプラインで実行できるのかな？" userName="paradite" createdAt="2025-03-01T00:11:51" color="#ff5c5c">}}

{{<matomeQuote body="Azure Trusted Signingは、Microsoftが去年行ったアプリ開発者向けの最高の施策の一つで、本当に幸せです。月9.99ドルで、身元を確認できる個人や企業が利用可能です。単にsigntool.exeをカスタムDLLで呼び出すだけです。@electron/windows-signを作りました。リンクはこちら： https://github.com/electron/windows-sign" userName="felixrieseberg" createdAt="2025-03-01T00:16:48" color="#785bff">}}

{{<matomeQuote body="Azure Trusted Signingの大きな制約は、あなたの組織が少なくとも3年以上の歴史が必要なことです。この解決策の恩恵を受けられる開発者が他の選択肢に向かわせられるのは変な事例だね。" userName="itsFolf" createdAt="2025-03-01T00:26:11" color="">}}

{{<matomeQuote body="それにしても、たくさんの開発者が全てのリポジトリに対して完全な権限を要求するGitHubアプリをインストールしていて、これでその開発者がそのサービスを使ってる他の開発者にも同じことができるんだ。GitHubは、この可能性が存在することを恥じるべきだし、許可システムとUXがひどすぎて、アプリが全権限を要求する方向に導かれてるのを恥じるべき。GitHubは、ユーザーが権限を持たせたいリポジトリのリストを提示するようにすべきだし、各リポジトリに必要な特定の権限も表示するべきだよ。最小限の権限を奨励する設計が求められている。現状だと、アプリ開発者にとっては”全権限ちょうだい”が一番簡単な道だし、ユーザーは”いいよ、もちろん”ってなっちゃう。" userName="gamedever" createdAt="2025-03-01T00:27:48" color="#45d325">}}

{{<matomeQuote body="Daveだよ、ToDesktopの創業者。これまでの経緯をまとめたブログを共有したよ。＞”この脆弱性は本当に恥ずかしいものだった、こんなことが起きないよう徹底的に内部と外部の監査を行ったよ。” 特にEvaには責任をもって報告してくれて感謝してる。" userName="davej" createdAt="2025-02-28T21:59:36" color="#ff5733">}}

{{<matomeQuote body="＞”二度と起こらない。”傲慢だね。自信を感じないよ。素早い対応は評価するけど、具体的な改善はあったのかな？もしPoLPを守ってないなら他にも見落としがありそう。" userName="spudlyo" createdAt="2025-02-28T22:04:45" color="">}}

{{<matomeQuote body="確かに、”このシナリオが再発しないように”って言い直したほうが良さそうだね。改善策としてビルドコンテナを見直したんだけど、かなり大きな変更だったよ。" userName="davej" createdAt="2025-02-28T22:08:47" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="大きなプロジェクトを扱うチームよりはマシだと思うよ！笑" userName="AzzyHN" createdAt="2025-03-01T19:08:56" color="">}}

{{<matomeQuote body="いい対応だったね、直接的な判断に対処するのも上手いね。絶対的な表現は避けるべきだよ。＞”このシナリオが再び起こらないように全力を尽くした。”というのが現実的だと思うよ。" userName="ddingus" createdAt="2025-03-01T09:28:13" color="">}}

{{<matomeQuote body="ブログの内容を見る限り、もう一度起こることは”ない”と言えそうだね。" userName="abhiaagarwal" createdAt="2025-02-28T22:49:20" color="">}}

{{<matomeQuote body="その主張はどこから来たの？同じような深刻なバグが12ヶ月後に発覚する可能性は？" userName="beardedwizard" createdAt="2025-03-01T04:56:29" color="">}}

{{<matomeQuote body="明らかに間違ってると思うなら、一瞬立ち止まって考える価値があるかもね。ここでは、”これ”が”深刻なバグ”を指している話だと思うよ。" userName="GavinMcG" createdAt="2025-03-01T16:10:59" color="">}}

{{<matomeQuote body="誰もが明らかに間違ってるとは思わないし質問するのが好きだよ。多くのバグはクラスで存在して、バリエーションってのは生産事件に繋がるものだと思うけど。" userName="beardedwizard" createdAt="2025-03-01T20:32:51" color="">}}

{{<matomeQuote body="みんなこの反応をそんなに非難する理由が分からない。複雑な世の中だし、脆弱性は起こるもんだよ。迅速に修正して、報告者と連絡を取ったのも良い印象。" userName="BonusPlay" createdAt="2025-03-01T09:32:35" color="#38d3d3">}}

{{<matomeQuote body="ありがとう。企業向けの言葉についてはその通りだね。開示文で読みやすさを保とうとしたと思ってるけど、100パーセント正しいよ、さっきのコメントはもっと簡単に書けたかも。<br>私たちの開示文：全角”https://www.todesktop.com/blog/posts/security-incident-at-to...全角”" userName="davej" createdAt="2025-03-01T09:49:17" color="">}}

{{<matomeQuote body="ログを見てアプリバンドルを調査したけど、ログはFirebaseとは独立してるの？この脆弱性を悪用した人がログを消せる可能性はないの？" userName="AlexCoventry" createdAt="2025-03-01T03:40:45" color="#ff5c5c">}}

{{<matomeQuote body="例えばCursorのユーザーは、侵害を受けてないとどうやって確かめられるの？<br>＞悪意のある利用は検出されなかった<br>STRIDEみたいな方法があれば教えて欲しいな。" userName="hakaneskici" createdAt="2025-02-28T23:07:24" color="">}}

{{<matomeQuote body="todesktopの報告から：<br>＞ログのレビューを完了。全て確認したアクティビティは研究者からのもので、IPアドレスとユーザーエージェントで確認済み。" userName="Centigonal" createdAt="2025-03-01T00:36:19" color="#785bff">}}

{{<matomeQuote body="特権アクセスがあれば、証拠を改ざんできるから、ログに何も載っていないってのは許容範囲かもしれないけど、そう思わない人もいるだろうね。これらの攻撃ベクトルはSTRIDEの脅威モデルに含まれてるよ。" userName="hakaneskici" createdAt="2025-03-01T00:43:16" color="#38d3d3">}}

{{<matomeQuote body="詳しいログの内容は説明してないけど、優れたシステムなら管理者でもログの改ざんは許さないはず。" userName="morgante" createdAt="2025-03-01T01:51:36" color="">}}

{{<matomeQuote body="彼らのログシステムがどれくらい堅牢なのか、他のソフトウェアの状態を見てどう思う？" userName="cdmyrm" createdAt="2025-03-01T08:39:44" color="">}}

{{<matomeQuote body="年に一度のペンテストもいいけど、このギャップを見つけられなかったエンジニアリングデザインプロセスをどう改善するの？こんなことが二度と起きないってどうやって言えるのか気になる。<br>こういうのは結局あまり意味がなくて、もっと現実的な答えが必要だと思う。" userName="beardedwizard" createdAt="2025-03-01T04:47:16" color="#38d3d3">}}

{{<matomeQuote body="重要な秘密鍵はHSMに保管しないと、簡単に侵害されちゃうよ。" userName="UltraSane" createdAt="2025-03-02T00:46:19" color="#ff33a1">}}

{{<matomeQuote body="おいおい、パッチ後に被害を受けた顧客にすぐ連絡しなかったなんて信じられない。どれだけ他に脆弱性があったか分からんし、顧客がサービスを使い続けるかはその人たちが決めるべきだろ。" userName="ec109685" createdAt="2025-03-01T06:59:03" color="#ff5c5c">}}

{{<matomeQuote body="＞“彼らは私の努力に対してしっかり補償してくれて、全体的に良い対応だった。”え、補償してもらったけど詳しくは語ってないみたい。" userName="richardboegli" createdAt="2025-02-28T22:59:51" color="">}}

{{<matomeQuote body="前回の記事よりは対処が良かったみたいだね。Arcブラウザの会社は最初、同様のRCEに対してバウンティを出さなかったけど、批判されてから$2kを出し、その後さらに$20kに増額したから。" userName="jsheard" createdAt="2025-02-28T23:14:15" color="#ff5c5c">}}

{{<matomeQuote body="＞“この脆弱性のために合計5kもらった”って言ってたけど、そこまで責める気にはならんな。" userName="sphars" createdAt="2025-03-01T03:23:39" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="最初の5,000ドルに加えて50,000ドルもらったって！でかいな！最近の更新には”更新：Cursor（影響を受けた顧客の一つ）が私の努力に対して50k USDくれる”って書いてあった。" userName="oriettaxx" createdAt="2025-03-01T05:22:11" color="#ff5733">}}

{{<matomeQuote body="＞“この脆弱性のために合計5kもらった”ってのは確かにそうだったな。" userName="eviks" createdAt="2025-03-01T03:28:04" color="">}}

{{<matomeQuote body="更新ありがとう。最初のブログ投稿の時には、そんなことは言われてなかったから。" userName="edm0nd" createdAt="2025-03-01T22:23:19" color="">}}

{{<matomeQuote body="いい判断だね。責任のある開発者を解雇することも真剣に考えるべきだ。" userName="cdmyrm" createdAt="2025-03-01T08:40:16" color="#785bff">}}

{{<matomeQuote body="おいおい、そんなのマネージャーの無能さを示すだけだよ。社員がミスしたからって、教育に金かけたのに解雇する理由がわからん。" userName="throw339d00" createdAt="2025-03-01T09:16:36" color="#ff5733">}}

{{<matomeQuote body="心配すんな、君の依存先やツールをダウンロードした人の方が恥ずかしいよ。金払ってないなら、こっちに責任ないから。" userName="TZubiri" createdAt="2025-03-01T01:45:01" color="">}}

{{<matomeQuote body="贈り物として提供されたものなので、契約成立してないよね。金が動いてないから、直接の損害はないはず。間接的な損害については、少なくともアプリ側には免責事項があるはず。私は法律家じゃないから、法的アドバイスではないけどね。" userName="TZubiri" createdAt="2025-03-01T02:25:06" color="">}}

{{<matomeQuote body="爆弾とかウイルス入りのUSBを渡したら、絶対に責任負うことになるから、その点を考えてみて。" userName="remram" createdAt="2025-03-01T16:14:54" color="#ff5c5c">}}

{{<matomeQuote body="ウイルスの存在を知らないUSBを渡しても、責任は問われないぜ。保証がなければね。教訓：知らないUSBは使わない方がいい。爆弾渡すのは普通は違法だからな。" userName="ImPostingOnHN" createdAt="2025-03-02T14:14:38" color="#ff5733">}}

{{<matomeQuote body="全部大文字の免責条項があると思うよ、フリーウェアではよくあるし。ToDesktopは有料製品だけど。" userName="notpushkin" createdAt="2025-03-01T03:35:21" color="">}}

{{<matomeQuote body="この人が見つけた攻撃は二つ目だよね。前のはArcブラウザの脆弱性で、Firebaseの設定ミスを利用してた。Googleがどうして開発者にそんな簡単に躓く環境を提供するのか疑問だわ。" userName="sky2224" createdAt="2025-03-01T00:22:24" color="">}}

{{<matomeQuote body="Firebaseがすぐに使えるようにしてくれるから、適切な使用やセキュリティが疎かになりがちだ。開発者が急いで市場に出すせいだから、Googleを責めるのはお門違いだと思う。" userName="999900000999" createdAt="2025-03-01T01:07:11" color="">}}

{{<matomeQuote body="＞ Googleは、セキュリティ監査なしに有料製品を出したからって責任を負わないよ。簡単にセキュリティ問題を生むサービスを提供してるなら、その責任は開発者にある。それが面倒なら、もっと面倒な方法にしなきゃいけない。" userName="bastawhiz" createdAt="2025-03-01T02:40:59" color="#38d3d3">}}

{{<matomeQuote body="３人のためにPOCを作る必要があるけど、30,000人にスケールさせる時はセキュリティを真剣に考えないといけない。昔の教えで、完全に安全にしようとすると、むしろその安全を破る奴が出てくるって言ってた。Googleが大きな文字で”あなたは不安定なことをやっている”って警告しても、誰かがデプロイしちゃうから、デプロイボタンを無効にすべきだとは思わない。" userName="999900000999" createdAt="2025-03-01T02:54:04" color="#ff5733">}}

{{<matomeQuote body="子供向けのデータベースにセキュリティ考慮がないと、痛い目を見る人が増える。チュートリアルは、認証や個人情報の保存が必要なデータベースの重要なポイントにフォーカスしてほしい。クライアントサイドだけで動くアプリの提案もいいけど、問題を教えるのも必要。" userName="prophesi" createdAt="2025-03-01T04:59:23" color="#ff5c5c">}}

{{<matomeQuote body="ソフトウェアのセキュリティを考慮せずに使う専門家は単に無責任だと思う。無責任なプログラマーに非があるのに、それを責めないようにするのは分からない。" userName="cdmyrm" createdAt="2025-03-01T08:42:18" color="">}}

{{<matomeQuote body="プログラマーに責任があるとしたら、どうしたらいいのか？解決策を探しているのに、手を挙げるだけじゃなくて、効果的な方法で問題に取り組むか、開発者の過ちに対して結果が伴うようにしないと。どちらを選ぶ？" userName="Eisenstein" createdAt="2025-03-01T20:22:28" color="">}}

{{<matomeQuote body="選択肢が２つだけじゃなく、３つ目があると思う。人々に長期的な教育の重要性や資金を価値を理解してもらうこと。教育基盤をしっかりするのが将来のためには必要。それに、問題の根本的な原因をみんなが学べるように、責任を問わない振り返りを公開するのもいいこと。" userName="ImPostingOnHN" createdAt="2025-03-02T14:19:04" color="#ff33a1">}}

{{<matomeQuote body="やっぱり選択肢３を選ぶ。ソフトウェアの機能を制限するのも、極端に責任を問う振り返りも良くないから、選択肢３がベターだと思う。" userName="ImPostingOnHN" createdAt="2025-03-02T22:41:28" color="">}}

{{<matomeQuote body="責任がないシステムの助益者が責任を課すことに反対するのは理解できるけど、その理由を説明しないなら、考えを変える理由がわからない。責任を問う振り返りがなぜ悪いのか教えてよ。" userName="Eisenstein" createdAt="2025-03-03T11:56:16" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
