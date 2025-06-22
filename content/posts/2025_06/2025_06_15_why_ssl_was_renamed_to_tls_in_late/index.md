+++
date = '2025-06-15T00:00:00'
months = '2025/06'
draft = false
title = 'SSLからTLSへ！ 90年代後半に起きた改名の理由とは？'
tags = ["SSL", "TLS", "セキュリティ", "プロトコル", "歴史"]
featureimage = 'thumbnails/blue_green4.jpg'
+++

> SSLからTLSへ！ 90年代後半に起きた改名の理由とは？

引用元：[https://news.ycombinator.com/item?id=44282378](https://news.ycombinator.com/item?id=44282378)




{{<matomeQuote body="バージョン番号がプロトコルの違いをよく示してないせいで、状況は余計ややこしいね。<br>具体的にはね、SSLv2はSSLで最初に広く使われたバージョンだけど、この記事にもある通り問題があったんだ。<br>SSLv3はほとんど完全に新しいプロトコルだよ。<br>TLS 1.0はSSLv3によく似てるけど、IETFの標準化過程でちょっと修正されたもの。<br>TLS 1.1はTLS 1.0の本当にマイナーな改訂版で、ブロック暗号の使い方に関する問題を解決したんだ。<br>TLS 1.2はTLS 1.1から結構な規模の改訂があったもので、暗号技術の進歩に対応したんだ。特に、MD5とSHA-1の弱点を受けて新しいハッシュをサポートしたり、AES-GCMみたいなAEAD暗号スイートをサポートしたりしたよ。<br>TLS 1.3はTLS 1.2以前の一部を再利用してるけど、ほとんど新しいプロトコルなんだ。<br>これらのプロトコルは、バージョンを自動でネゴシエートできるように設計されてるから、クライアントとサーバーが接続を失うことなく個別にアップグレードできるようになってるよ。" userName="ekr____" createdAt="2025/06/16 00:08:00" color="#ff5733">}}




{{<matomeQuote body="＞ これらのプロトコルは、バージョンを自動でネゴシエートできるように設計されてるから、クライアントとサーバーが接続を失うことなく個別にアップグレードできるようになってるよ。<br>そして、何十年にもわたる様々なダウングレード攻撃を招いたんだよね。" userName="cortesoft" createdAt="2025/06/16 02:37:31" color="">}}




{{<matomeQuote body="TLSに対するダウングレード攻撃は、あるバージョンに失敗したときに、それが無い状態で新しい接続を再試行するクライアントの振る舞いの場合にしか、実際には存在しないんだ。<br>これは様々な壊れたサーバー側の実装や、壊れた中間機器をバイパスするために必要だったんだけど、TLS自体に必ずしも欠陥があったわけじゃないんだよ。<br>でも、この問題から学んだこととして、TLS 1.3は1.2とワイヤー上で非常によく似て見えるようにかなり工夫してるんだ。" userName="mcpherrinm" createdAt="2025/06/16 02:50:15" color="#785bff">}}




{{<matomeQuote body="それに、ここで選択肢はほとんどないんだ。この種の自動バージョンネゴシエーションがないと、新しいバージョンを展開するのは事実上不可能だから。" userName="ekr____" createdAt="2025/06/16 03:06:08" color="">}}




{{<matomeQuote body="新しいバージョンは展開できるよ、ただ古いクライアントが新しいバージョンを実装してるサーバーに接続できなくなるだけ。<br>TLS 1.2の後にHTTPSをHTTPTかなんかに改名して、後方互換性をぶっ壊すのは非常識ではなかったと思うな（うん、「S」は「SSL」じゃなくて「Secure」の略なのは分かってるけど、HTTPTでも「HTTP with TLS」として通用しただろうね）。" userName="pcthrowaway" createdAt="2025/06/16 05:12:34" color="">}}




{{<matomeQuote body="まあ、できるけど、それには通常こういうものに対して存在する以上の高度な政治的スキルが必要だろうね。ほとんど全員が新しいバージョンに同意して、それを実装する必要があっただろう。実装が十分に高まったら、スイッチオーバーの日を決めるんだ。<br>そういうアプローチの大きなリスクは、何かを実装した後に政治が失敗して、何も成果が得られない可能性があるってことだ。<br>ネゴシエーションの大きな欠点は、誰も何かにコミットする必要がないから何でも可能になってしまうこと。TLSの場合、それが延々と bikeshedding（どうでもいい議論）を招いて、オプションが多すぎてほとんど標準じゃなくなってしまった標準を生み出してしまったようだね。本当に標準である必要があるのはネゴシエーションの仕組みだけなんだ。" userName="upofadown" createdAt="2025/06/16 11:21:12" color="">}}




{{<matomeQuote body="プロトコルが広く間違って使われるなら、それはプロトコルに欠陥があると思うな。でも全体的には、SSLの標準化はかなりうまくいったよ。私はいつもXMPPを悪い例として対比させる良い例として挙げるんだ。" userName="frollogaston" createdAt="2025/06/16 03:58:03" color="#ff33a1">}}




{{<matomeQuote body="＞ HTTPSをHTTPTかなんかに改名して、後方互換性をぶっ壊すのは非常識ではなかったと思うな<br>それは少なくともちょっと非常識だっただろうね。だって、ウェブリンクがプロトコルバージョン番号を埋め込むことになっちゃうじゃん。その結果、古いURLがまだ機能するように、古いバージョンのTLSを永久に残しておく必要が出てくるんだ。<br>逆の方向に進めたら良かったのにと思うな。HTTP://がTLSが利用可能なら暗黙的にTLSを使うようにするべきだったんだ。<br>HTTP://.../x と HTTPS://.../x が異なるリソースに解決できるようにしたのは、大きな間違いだったよ。" userName="josephg" createdAt="2025/06/16 06:03:33" color="#ff5733">}}




{{<matomeQuote body="中間者がTLSハンドシェイクを邪魔するって？<br>ハンドシェイクは暗号化されてないから、メッセージを書き換えてサーバーが壊れた暗号しかサポートしてないように見せかけることができるんだ。そうすると、中間者は badly encrypted（悪く暗号化された）データだから全部読めちゃうんだよ。<br>レガシーな使用法とか incompetency（無能さ）のせいで、驚くほど多くのサーバーがまだ壊れた暗号をサポートしてるんだ。" userName="sjducb" createdAt="2025/06/16 06:48:03" color="#38d3d3">}}




{{<matomeQuote body="まあ、僕が本当に言いたかった唯一の点は、壊れてるのはTLSのバージョンネゴシエーションじゃないってこと。ダウングレード攻撃を招いたのは、新しいバージョンにtolerant（寛容）じゃないものへの回避策だったんだ。<br>幸い、それは全部過去の話になったし、1.2から1.3への移行は1.0から1.2への移行よりもずっとスムーズに進んでるよ。" userName="mcpherrinm" createdAt="2025/06/16 04:02:36" color="#ff33a1">}}




{{<matomeQuote body="大きな違いの一つは態度だったね。TLS 1.3のダウングレード防止機能は一部のよく使われている機器と互換性がなかったんだ。Googleは「知ったことか、ベンダーが直すか、一年後にこの一時しのぎがなくなったらChromeは使えなくなるぞ」って突き放したんだ。ほとんどのベンダーは顧客の怒りに『励まされて』この問題の無料修正を出荷したらしいよ。以前（初期のプロトコルバージョン）は、普通のユーザーには悪い影響があるにもかかわらず、ひどい機器に対して誰も立ち向かわなかったんだ。" userName="tialaramex" createdAt="2025/06/16 09:23:31" color="#ff5c5c">}}




{{<matomeQuote body="これって、どんな状況でも考えられないくらいすごい政治的なスキルが必要みたいだね。アップグレードできないものも含めて、インターネット中のすべての端末を変える話だよ。そんなことができる主体なんて思いつかないな。しかも、最善の場合でも、普及の恩恵を受けるのに何年も、いや何十年もかかることになる。7年経っても、TLS 1.3の普及率は100％には程遠い。例えば、PQ暗号を早急に展開して、収穫後復号攻撃を防ぎたい。これが100％普及を待つべき理由はないでしょ？<br>＞交渉の大きな欠点は、誰も何も決めなくていいから、何でも可能になってしまうことだ。TLSの場合、それが延々と自転車置き場の議論につながり、多くのオプションがあるせいでほとんど標準とは言えないものになってしまったようだ。本当に標準である必要があるのは交渉スキームだけだ。<br>これは特にWebではそれほど正確だとは思わないな。実際広く使われているオプションはかなり限られているよ。TLSは様々な設定で使われているから、それらをカバーするために多くのオプションがあるのは驚くことじゃない。TLS 1.3はそれらをかなり減らすことに成功したけどね。" userName="ekr____" createdAt="2025/06/16 12:20:17" color="#38d3d3">}}




{{<matomeQuote body="最後の段落についてだけど、それってHSTS preloadのおかげでほぼ解決済みじゃない？小さなレシピブログの技術に詳しくない作者は設定方法を知らないかもしれないけど、銀行ならそういうことを担当するスタッフ（と監査役）がいるはずだよ。" userName="cpach" createdAt="2025/06/16 07:46:51" color="">}}




{{<matomeQuote body="受け取ったハンドシェイクをサーバーの証明書で暗号化して送り返す方法はどうかな。もしサーバーが送ったと思ったものと一致しなかったら、ハンドシェイクを中断するんだ。サーバーの証明書が壊れてない限り、これで改ざんされたハンドシェイクを検出できるし、もしサーバーの証明書が壊れてたら、そもそも接続を開始するための信頼の根拠がないからね。" userName="kevincox" createdAt="2025/06/16 08:25:31" color="#ff5733">}}




{{<matomeQuote body="＞これって、どんな状況でも考えられないくらいすごい政治的なスキルが必要みたいだね。アップグレードできないものも含めて、インターネット中のすべての端末を変える話だよ。そんなことができる主体なんて思いつかないな。<br>いい例がIPv6の普及だね。IPv4との間に相互運用性や交渉はない（少なくとも重要な意味で）。それが今のめちゃくちゃな状況につながってるんだ。" userName="Sophira" createdAt="2025/06/16 12:32:58" color="#45d325">}}




{{<matomeQuote body="それは、http://とhttps://というURLを、://以降の同じ文字列でも別のリソースとしてクライアントが扱わなければならない問題を解決しないね。" userName="account42" createdAt="2025/06/16 08:45:29" color="">}}




{{<matomeQuote body="＞結果として、古いURLが機能するように、古いバージョンのTLSを無期限に残しておく必要があるだろう<br>今のhttpリクエストがやってるみたいに、httpsからhttpへリダイレクトできないのかな？<br>サーバーには少しだけオーバーヘッドが増えるけど、暗号化されてないhttpから移行した時と何も変わらないんじゃない？" userName="pcthrowaway" createdAt="2025/06/16 17:44:38" color="">}}




{{<matomeQuote body="それが原因で、QUICが独自のレベル4プロトコルではなく、UDPベースのハックになってしまった多くの固定化を元に戻すのに使える可能性はあるかな？" userName="adgjlsfhk1" createdAt="2025/06/16 19:18:08" color="">}}




{{<matomeQuote body="＞私はいつもXMPPを悪い例として対比させる良い例としてこれを挙げる。<br>ここをもう少し詳しく説明してもらえる？プロトコルの拡張性の扱いとか、全体的なプロセスや関係者のこと？" userName="meepmorp" createdAt="2025/06/16 12:41:04" color="">}}




{{<matomeQuote body="多くのサーバーとクライアントはIPv4とIPv6の両方をサポートしてるよ。だから、ある意味、クライアントとサーバーの間で「交渉」が起きてるんだ。" userName="vladvasiliu" createdAt="2025/06/16 14:41:15" color="">}}




{{<matomeQuote body="一斉切り替えなんて無理だよ。ARPANETからTCP/IPへの移行が最後だろ。<br>IPv6だって30年経っても進まないしね。https://ipv4flagday.net/を見てみ。" userName="drob518" createdAt="2025/06/16 13:18:29" color="#45d325">}}




{{<matomeQuote body="HTTPとHTTPSで、リダイレクト以外に違うコンテンツを見せたり、ポート80と443で何か違うことしてるサイトとかある？" userName="dotancohen" createdAt="2025/06/16 11:09:21" color="">}}




{{<matomeQuote body="暗号化プロトコルの合意ってどうやるの？それは対応プロトコルリストを返すだけだよ。<br>攻撃者がBobの返信をいじって、安全じゃないプロトコルだけ提案させることもできる。<br>AliceがTrentにBobの公開鍵を聞くとか、TLSはそんな仕組みじゃないし。" userName="sjducb" createdAt="2025/06/16 11:57:59" color="#38d3d3">}}




{{<matomeQuote body="前はあったけど今は少ないね。HTTPとHTTPSを分けるのは、HTTPSは整合性があるけどHTTPはないから。<br>HTTPでアクセスしてリダイレクトされた時、攻撃者がJSを仕込んでキャッシュさせると、後でHTTPSでアクセスしてもサイトが乗っ取られちゃうかも。" userName="ekr____" createdAt="2025/06/16 12:29:41" color="#ff5733">}}




{{<matomeQuote body="それはネゴシエーションじゃないよ。v4で繋いでサーバーからv6に切り替えろなんて言われないでしょ。<br>単にv4とv6の全く違うプロトコルを両方サポートしてるだけじゃん。" userName="happyopossum" createdAt="2025/06/16 15:36:18" color="#ff5c5c">}}




{{<matomeQuote body="全員が同じ日に切り替えるなんて必要ないよ。<br>新しいものが十分普及したら、徐々にそっちへ移っていけばいい。<br>「フラッグデー」ってのは、古い方式をサポートしなくて良くなったって決める日のことだよ。" userName="upofadown" createdAt="2025/06/16 15:26:14" color="#ff5733">}}




{{<matomeQuote body="サイト運営者の視点から考えてるね。個々のサイトはできても、全部じゃない。<br>ブラウザの視点だと、全てのサーバーがリダイレクトするわけじゃないから、古いURLのために古いTLSをいつまでもサポートしないといけないんだ。<br>古いTLSを使うのは古いCコンパイラと違って、セキュリティ問題がヤバい。<br>たくさんバージョン持つと、攻撃されやすくなるんだ。" userName="josephg" createdAt="2025/06/16 21:45:18" color="#ff5c5c">}}




{{<matomeQuote body="XMPPはゆるすぎてダメ。特にセキュリティ。<br>認証や暗号化がオプションで、設定ミスるとヤバい。<br>メールも似てるけどXMPPはもっとひどい。拡張機能とかもバラバラで合意しない。<br>https://wiki.xmpp.org/web/Securing_XMPP<br>SSL（TLS）はちゃんとしてる。認証と暗号化がセット。<br>前は甘かったけど、Google Chromeが怖い警告出すって言い出して皆直したんだ。" userName="frollogaston" createdAt="2025/06/16 18:22:56" color="#45d325">}}




{{<matomeQuote body="TLS1.0は「拡張機能」で大きく変わったんだ。<br>minor evolution なんてレベルじゃない。<br>サーバーが状態を保たずにセッションを再開できるセッションチケットとか、<br>一つのサーバーで複数の証明書を使えるServer Name Indicationとか、色々できるようになったんだよ。" userName="nextgens" createdAt="2025/06/16 07:33:04" color="#38d3d3">}}




{{<matomeQuote body="違うよ。ハンドシェイクは暗号化されてないけど、認証されてるから攻撃者は変えられない。<br>攻撃者ができるのは、嫌いな設定での接続を邪魔すること。<br>クライアントによっては、サーバーが応答しないと「ネゴシエーション失敗した」と思って、古いTLSで再接続しようとするんだ。" userName="mcpherrinm" createdAt="2025/06/16 12:35:38" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="プロバイダがMIM（中間者攻撃）でデータを覗こうとしてたのが最悪だったんだよね。自分のネットワークに”価値”を加えるとか言ってさ。TLS 1.3になってそれが難しくなったけど、Googleの市場支配力がなかったら、プロバイダを潰せなかっただろうね。" userName="drob518" createdAt="2025/06/16 13:24:12" color="">}}




{{<matomeQuote body="当時のMicrosoftは全く別の化け物だったから、コメントの意見もおかしくないね。あの頃のM$（適切な名前だ）は全てを支配しようとして、オープンソースなインターネット技術を2010年代初頭までずっと邪魔し続けてた。俺の意見では、Java Appletsを潰すのに成功したと思うよ。あれは最初のバージョンから全然良くならなかったし、JavaScriptとCSSも何年も足止めされた。今でも覚えてるよ、会社の偉い人たちがIEの最新技術を使えってプッシュしてきたけど、俺は抵抗したんだ。代わりにMozilla 3.0をサポートし始めたら、俺たちの自社開発JavaScript SPAツール向けのコアJSバグを修正してくれたんだよ。それが大正解で、数年後には他の社内アプリでもMozilla＼Firefoxを使い始めるようになったんだ。一般的になるずっと前の話。" userName="Timothycquinn" createdAt="2025/06/16 00:34:25" color="#45d325">}}




{{<matomeQuote body="Java Appletsを潰したのはMicrosoftじゃないと思うな。だって、IEでは常に動いてたんだし、M$が影響できたのはIE経由だけだったはず。いや、Java Appletsが失敗したのは、「Javaは遅い」っていうイメージの象徴になっちゃったからだよ。全体的にはそうじゃなくても、Appletsに関してはホントだった。ダウンロード待って、JVMの起動待ってって感じ。ダメになったのは、1）HTML＼JS自体がダイナミックな処理が得意になったこと、2）HTMLじゃ足りないニッチな部分はFlashが取って代わったこと、だよ。" userName="int_19h" createdAt="2025/06/16 04:17:35" color="">}}




{{<matomeQuote body="Java Appletsが最終的にダメになったもう一つの理由は、サンドボックスのエスケープが止まらなかったこと。あれは信頼できるコードとそうじゃないコードを同じVMで動かして、どっちかを追跡しようとする設計に根本的な問題があったんだ。VM全体をサンドボックスに入れる方がずっと分かりやすい。代表的な脆弱性は「trusted method chaining」だよ。攻撃者が標準ライブラリのオブジェクトを予期しない方法で呼び出すチェーンを作るんだ。標準ライブラリのクラスをサブクラス化したり、インターフェースを実装したりして、より変則的な経路を作るんだ。そして、標準ライブラリのどこかの入り口にチェーンの最初のメソッドを呼ばせる。呼び出しスタックには攻撃者のコードが全く現れないから（標準ライブラリが標準ライブラリを呼んでるだけ）、スタックの最下層では信頼されたコンテキストだと判断されて、ファイルとかにアクセスできちゃう。もちろん、悪意のあることをするメソッドチェーンを見つけて構築するのは簡単じゃないけどね。" userName="immibis" createdAt="2025/06/16 14:02:21" color="#45d325">}}




{{<matomeQuote body="HTML5が出る前から、AppletsよりFlashの方が断然UXが良かったね。Appletsはブラウザでアプリを読み込んでる感じだったけど、Flashはページ内の一要素って感じだったし。" userName="cap11235" createdAt="2025/06/16 14:32:01" color="">}}




{{<matomeQuote body="Java Appletsって、読み込み中にブラウザ全体が固まったよね。Windows MediaとかQuickTime、Real Playerのプラグインよりもひどかった。Flashプラグインだけは、 noticeableにブラウザを固めなかったな。あれ、CPU最適化がすごく進んでて、たしかAVXまで使ってた気がする。" userName="cubefox" createdAt="2025/06/16 09:19:10" color="">}}




{{<matomeQuote body="＞ ＞ 「Javaは遅い」っていうイメージの象徴になっちゃったからだよ。<br>＞ Java Appletsって、読み込み中にブラウザ全体が固まったよね。これは単なる「象徴」どころじゃなくて、Java Appletsこそが「Javaは遅い」っていうミームの起源だと思うよ。多くの人が初めてJavaを知ったのが、Applet読み込みでブラウザが1分も固まって、ステータスバーにJavaが犯人って出てた時だったんじゃないかな。" userName="cesarb" createdAt="2025/06/16 14:34:51" color="">}}




{{<matomeQuote body="Appletsが死んだ理由はたくさんあるね。JREの absurdな起動時間（くだらないアニメーションのためだけなのに）、当時の absurdなメモリ要求とそれに伴うクラッシュ、初期のJavaプラットフォームでの変な互換性問題、CA証明書を持ってる良い人だけがPCでやりたい放題できるっていう assumptionsに基づいた変なセキュリティモデル、IEだけじゃないブラウザの未熟なサンドボックス技術、とかね。" userName="grandiego" createdAt="2025/06/16 04:41:16" color="#ff33a1">}}




{{<matomeQuote body="うん、GoogleとかAppleとかみんな追いついてきたからね。どれも同じなら、もう差別化する必要も減るってことだよね。" userName="twodave" createdAt="2025/06/16 15:42:12" color="">}}




{{<matomeQuote body="Microsoftの悪質さは形を変えたよ。VSCodeとVisual Studio、AIへのアプローチを見ればわかる。ビル・ゲイツならOpenAIを買っただろうけど、今のCEOサティアは人類のためのAI開発を重視してる。Azureクレジットを多額寄付したけど、見返りは発言権とかだけ。PRの違いって言う人もいるけど、それだけじゃない気がするな。" userName="sillystu04" createdAt="2025/06/16 15:05:59" color="#785bff">}}




{{<matomeQuote body="以前よりEvil Big Tech Coの分野で競争相手が増えたってのもあるかもね。" userName="aaronbaugher" createdAt="2025/06/16 14:38:46" color="">}}




{{<matomeQuote body="Amazonにもs2n-tlsってのがあったよ。URLは https://github.com/aws/s2n-tls 。s2nには期待してたけど、AWS以外では広まらなかったみたい。" userName="jimt1234" createdAt="2025/06/16 16:17:21" color="">}}




{{<matomeQuote body="TLSとSSLを区別したがる人は、自分は違いを知ってて、お前も知るべきだ！って思ってるんだよ。でも実際は、.docと.docxの違いみたいなもんじゃない？素人には同じに見える。現場の人たちは、httpsがちゃんと動くかだけ気にしてて、細かい仕組みは気にしないんだよ。" userName="webprofusion" createdAt="2025/06/16 01:07:15" color="#38d3d3">}}




{{<matomeQuote body="一番大変だったのは、素人にTLSv1.0がSSLv2とかSSLv3より新しくて良いんだよって説明することだったな。数字が大きい方が良いって思い込んでる人が結構いて、説明に苦労した覚えがあるよ。" userName="entuno" createdAt="2025/06/16 07:51:45" color="#ff5c5c">}}




{{<matomeQuote body="SSLってもうめっちゃ古いのに、みんなまだ暗号化通信って言えばSSLって思うみたい。TLSって言えば今の暗号化通信ってすぐわかるのにね。マジでレガシーなシステムでSSL使ってる時だけSSLって言えばいいんじゃない？<br>" userName="ozim" createdAt="2025/06/16 10:39:39" color="">}}




{{<matomeQuote body="みんなXじゃなくTwitterって言うのと同じだよ。最初に浸透した名前の方が使われ続けるでしょ。Comcast→Xfinity、MCI→Worldcomみたいに社名変更くらいしか成功してないんじゃない？ssl.comがtls.comにリダイレクトして、みんながまだSSLって呼んでてムカついてたらウケるね。<br>" userName="dylan604" createdAt="2025/06/16 13:15:14" color="">}}




{{<matomeQuote body="例えは違うと思うけど、他は同意。TLSとSSLって覚えやすさ、そんな変わんないでしょ。TwitterとXは別だけどね。まぁポルノサイトだったら逆かな。<br>" userName="unaindz" createdAt="2025/06/16 19:02:11" color="">}}




{{<matomeQuote body="それがデカいよね。Twitterって投稿の名前があったもんね。今はただのポストじゃないかな。<br>" userName="strawhatguy" createdAt="2025/06/17 15:02:03" color="">}}




{{<matomeQuote body="TLSってさ、なんか言いにくいんだよね、SSLの方がしっくりくる。それに一番使われてるTLSのソフトがOpenSSLだしね。<br>" userName="commandlinefan" createdAt="2025/06/16 13:16:14" color="">}}




{{<matomeQuote body="俺はもうさ、HTTPSって言うようにしたよ。そっちの方が圧倒的にみんなに伝わるし、大体それで十分だから。<br>" userName="bux93" createdAt="2025/06/16 10:57:19" color="#ff33a1">}}




{{<matomeQuote body="TCP接続をTLS化するって言うまでは、だけどね。<br>" userName="casper14" createdAt="2025/06/16 11:44:22" color="">}}




{{<matomeQuote body="うわ、俺の頭、無意識にSSLとTLSを区別するの大変だったんだって今わかった！まさか20年も経って理由を知るとはね！<br>" userName="ahofmann" createdAt="2025/06/15 20:49:07" color="">}}




{{<matomeQuote body="俺もだよ。なんか自分バカみたいって思った。この業界15年なのに、SSLとTLSが同じことだってやっと知ったわ。<br>" userName="oc1" createdAt="2025/06/15 21:18:30" color="">}}




{{<matomeQuote body="昔は、SSLは古いバージョンだけを指して、全部TLSだって言い張る人がいたんだよね。UCSPI-SSLの話をしてると、「今はSSLなんてやってない」って誰かが口を挟む場面を何度か見た覚えがあるよ。見出しの記事にもあるけど、何十年も経った今考えると、あの無理な区別はバカげてるね。<br>SMTPのおかげで、みんなの頭の中の呼び方が複雑になっちゃったんだ。ほぼ透明な暗号化接続上のSMTPと、最初は非暗号化で始まってから交渉して切り替わるSMTP、それと昔ながらの平文があったからね。RFC 2487がSTARTTLSは「SSLとしてより一般的に知られているTLS」を交渉するって説明したのも、ややこしさに拍車をかけたよ。RFC 8314は、SMTPが突入した歴史的な混乱、2種類のSMTP（リレーとサブミッション）と3種類のトランスポートについて説明してるね。<br>あと、「submission」のSが「SSL」と「TLS」のSと紛らわしい可能性もあった。省略語だけじゃなく、本当に曖昧だよね。「SMTPS」と「SSMTP」の混乱もあったし、「sSMTP」みたいな名前のプログラムをつけた人も、全然助けにならなかった。<br>俺は2025年もSSLって呼び続けるよ。（笑）Erwin Hoffmannもそうだしね。* https://www.fehcom.de/ipnet/sslserver.html * https://manpages.debian.org/unstable/ssmtp/ssmtp.8.en.html" userName="JdeBP" createdAt="2025/06/15 22:23:02" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、違うって。それらは特定の機能とバージョンを持つ特定のプロトコルの名前だよ。「SSL 1.0」と「TLS 1.0」は全然違うからね（https://aws.amazon.com/compare/the-difference-between-ssl-an... を見て）。<br>重要な点：<br>- 「SSL」は、あまりにも古くて使い物にならない、危険なプロトコル群。誰も使うべきじゃないよ。サンスクリット語みたいに、古くて死んだもの。<br>- 「TLS」は「SSL」よりずっと良いけど、まだ安全でないバージョンもある。セキュリティホールがあるから、1.2より前のバージョンはもうサポートされてないんだ。<br>- 技術的には「SSL証明書」は「SSL」でも「TLS」でもなくて、本当は「Extended Key Usage: Server Authenticationが付いたX.509 Certificate」のこと。でも、これじゃ口に出しにくいよね。1996年の証明書を今のTLSサーバーで使うことはできるけど、問題は有効期限と、当時のハッシュ／署名関数が非推奨になってることだ。（一部のサーバーは古いクライアントをサポートするために、まだ安全でないメソッドをサポートしてるけど、それはダメだね）" userName="0xbadcafebee" createdAt="2025/06/15 21:57:42" color="#ff5733">}}




{{<matomeQuote body="言いたいのは、SSL 3.0とTLS 1.0がほぼ同じだったってことだよ。つまり、類似性の途切れはSSL 2.0→SSL 3.0（そしてTLS 1.2→TLS 1.3も多少）のところであって、TLS 1.0が全てを変えたっていうよくある誤解とは違うんだ。<br>でも、そうだね、結局今はTLS 1.2未満は使うのが危ないから、細かいことはちょっとどうでもいいけどね。" userName="creatonez" createdAt="2025/06/16 05:25:01" color="">}}




{{<matomeQuote body="そうだね、でもやってることは同じだし、みんなSSLからTLSへ一方的に移行するだけだもん。ReactとAngularを選ぶのとは違って、新しいプロジェクトのためにReactバージョン5とバージョン10を選ぶみたいなもんだよ。この視点から見れば、SSLとTLSは意味のある点では全部同じさ。" userName="MOARDONGZPLZ" createdAt="2025/06/15 22:17:09" color="">}}




{{<matomeQuote body="うーん、いやSSLとTLSはReactとAngularJSみたいな感じかな。<br>2025年にSSLもAngularJSも誰も使うべきじゃないよ、どうしてもレガシー対応とかで維持する必要がある場合を除いてね。" userName="ozim" createdAt="2025/06/16 10:43:55" color="">}}




{{<matomeQuote body="実際、君はSSLなんて使ったことないかもね。<br>もし使うほど年取ってるなら、ここ何十年も使ってないはずだよ（そう願うけど）。" userName="commandlinefan" createdAt="2025/06/16 13:17:13" color="">}}




{{<matomeQuote body="2010年頃に知ったんだけど、それまでは全然だったんだ。<br>Javaでは今でもTLSv1.3使う時でさえSSLSocketで接続始めるのが驚きだよ！" userName="brabel" createdAt="2025/06/16 06:36:51" color="#785bff">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="やっぱり“Transport Layer Security”って名前の方がいいね。<br>“TLS”って言う方が好きだよ。Sが二つ続くと蛇みたいに聞こえるしね。" userName="pkulak" createdAt="2025/06/15 19:59:30" color="">}}




{{<matomeQuote body="問題は、TLSが当時Thread Local Storageとして既に使われてたことだね。<br>Transport Layer Securityは1999年だけど、Thread Local Storageは1996年まで遡れるみたい。<br>Microsoftとかでよく使われてたかな。<br>資料足りないだけかもだけど。" userName="o11c" createdAt="2025/06/15 20:54:00" color="#ff5c5c">}}




{{<matomeQuote body="それはそうかもだけど、Thread Local Storageなんてずっと後まで聞いたことなかったな。<br>その世界では普通でも、外ではそんなに知られてなかったと思うよ。" userName="kstrauser" createdAt="2025/06/15 21:00:40" color="">}}




{{<matomeQuote body="OS/2のマニュアル持ってるかも。でもいらないかな(-:<br>これはOS/2の話じゃないんだ。Thread Local StorageならOS/2じゃなくてWindows NTを見て。<br>TlsAlloc()とかがNT 3.1からWin32 APIにあったはずだよ。" userName="JdeBP" createdAt="2025/06/15 21:29:55" color="#ff5733">}}




{{<matomeQuote body="個人的には「SSL」の方が名前としてしっくりくるな〜。TLSって、理論上はどんなプロトコルにも使えるはずなのに、実際はほとんどTCP専用って感じだし。UDP版のDTLSとかQUICは仕様にないしね。LinuxやWindowsにもkernel TLSはあるけど、socketにflag立てるみたいに簡単じゃないし。あとさ、ヘビみたいな「SSL」って発音、カッコよくない？" userName="jeroenhd" createdAt="2025/06/15 20:08:47" color="">}}




{{<matomeQuote body="そういえばIPsecもさ、ネットの「標準」暗号化になるはずだったんだって。今TLS使ってるみたいに、色んなsecure connectionsに使う想定だったらしいよ。もしIPsecが勝ってたら、OSレベルでsecurity処理されて、アプリは何も知らなくなる世界だったかもね。ユーザーにも安全かどうかわからなくなるのはどうなんだろ？結局、IPsecはopportunistic connectionとしては使われず、設定超難しいtunnel専用になっちゃった。柔軟すぎたのがダメだったんだと思う。" userName="somat" createdAt="2025/06/16 15:59:19" color="">}}




{{<matomeQuote body="いや、違うんじゃない？transport layerっていうのは、OSI modelとかIP modelでいうLayer 4とか5のことだよ。TCPみたいに、下の層のバラバラなpacketsから、信頼できるcontinuous data-streamを作る層のこと。TLSが上の層に提供するinterfaceは、まさにこのdata-streamだから、transport layerっぽく見えるんだよね。" userName="LukeShu" createdAt="2025/06/15 22:28:29" color="">}}




{{<matomeQuote body="君に同意しようと思ったんだけどさ、DTLSの記事読んで考え直したよ。TLSがdata-streamを提供するって話、それこそ問題なんだ。UDP packetsは失われるかもでしょ？そうするとstream cipherで暗号化されたdataはダメになる。DTLSはpacketsごとに暗号化するんだよ。詳しくはこれ見て→https://en.m.wikipedia.org/wiki/Datagram_Transport_Layer_Sec..." userName="aoetalks" createdAt="2025/06/16 10:20:12" color="#45d325">}}




{{<matomeQuote body="ちょっと技術的な話ね。TLS 1.3ってAEAD ciphersしか使わないんだけど、nonceはrecord numbersで決まるから、packetsが順不同で来ても、違うrecord numbersで試せば原理的にはdecryptできるんだよ。TLSはTCPの上だから順番通りに来るからやらないだけ。DTLSはrecord numberのヒントをくれるんだ。詳しくはこれ見て→https://www.rfc-editor.org/rfc/rfc9147.html#name-reconstruct...." userName="ekr____" createdAt="2025/06/16 12:35:11" color="#ff5c5c">}}




{{<matomeQuote body="DTLSは名前が変（misnomer）ってのには同意だな。普通のTLSが提供するlayer-4/transport-layerみたいなinterfaceじゃないもんね。(完全にlayer-3/internetwork-layerでもないけど、UDPの上に乗っててmultiplexing componentがあるから、Layer 4 interfaceの「半分」はあるかな)。" userName="LukeShu" createdAt="2025/06/17 02:58:51" color="">}}




{{<matomeQuote body="結局、一番良い名前ってさ、最初に出てきてみんなが使い続けたやつだよね。" userName="frollogaston" createdAt="2025/06/16 04:02:12" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
