+++
date = '2025-03-17T00:00:00'
months = '2025/03'
draft = false
title = 'WHOISついに終了へ！次世代RDAPへの移行でドメイン情報公開はどう変わる？'
tags = ["ドメイン", "WHOIS", "RDAP", "インターネット", "プライバシー"]
featureimage = 'thumbnails/purple2.jpg'
+++

> WHOISついに終了へ！次世代RDAPへの移行でドメイン情報公開はどう変わる？

引用元：[https://news.ycombinator.com/item?id=43384069](https://news.ycombinator.com/item?id=43384069)

{{<matomeQuote body="これって去年の初め頃に発表されたんだよね。TLDとかnTLD（ccTLD以外）の運営者がWHOISサービスを提供する必要がなくなるけど、閉鎖しなきゃいけないわけじゃないんだ。今のところ、ほとんどのTLDがまだWHOISサービスをオンラインにしてるから、sunsettingの影響は少ないみたい。実際には、多くのTLDとnTLDがWHOISとRDAPの両方を利用できる期間が続くと思うよ。それに、ccTLDはICANNの管轄じゃないから、RDAPサービスがないところも多いし。だから、しばらくはインターネット全体でRDAPとWHOISが混在する状態が続くことになるんじゃないかな。<br>Disclosure：https://viewdns.info/ を運営してて、WHOISとRDAPの解析に何時間も費やして、うちのサービスがプロトコルに関係なく一貫したデータ（ウェブインターフェースとAPI経由）を返せるようにしてるんだ。" userName="hughesey" createdAt="2025-03-17T05:55:38" color="">}}

{{<matomeQuote body="RDAPはもっと多くのccTLDで採用されると思うな。WHOISってあんまり人気ないプロトコルだし（ICANNがタイムラインについてプレゼンしたIETFの会議にいたんだけど、みんなWHOISの終焉を文字通り応援してたよ）。<br>Disclosure：ccTLD関連の仕事してる。" userName="tephra" createdAt="2025-03-17T07:57:36" color="#ff5c5c">}}

{{<matomeQuote body="完全に同意！もっと多くのccTLD運営者がRDAPを実装してくれるといいよね。プロトコルが統一されればされるほど、状況は良くなるよね！" userName="hughesey" createdAt="2025-03-17T08:40:44" color="#ff33a1">}}

{{<matomeQuote body="勝手に宣伝：公式のbootstrapファイルに基づいてDNS RDAPの採用状況を監視するmastodon/activity pub botを運営してるよ：https://social.haukeluebbers.de/@stateofrdap<br>昨日の最新投稿：<br>＞今日の時点で、全1443トップレベルドメインのうち82.25％（1187）が、権威のあるRDAPサービスを宣言しています。<br>＞追加されたTLD：<br>＞.ye" userName="dubbel" createdAt="2025-03-17T13:31:12" color="#38d3d3">}}

{{<matomeQuote body="多くのサービスが、人間が読めるプレーンテキスト形式から構造化されたプロトコルに移行してるのを見るのは面白いよね。まるで、LLMが非構造化プロトコルを解析できるようになったタイミングで、移行が進んでるみたいだ。" userName="jbverschoor" createdAt="2025-03-17T06:12:48" color="">}}

{{<matomeQuote body="LLMにどんな形式のデータも確実に解析させることはできないよ。完璧に解析できるのは何かって？それはパーサーだよ。完璧に、そして一貫して動作する。" userName="vrighter" createdAt="2025-03-17T11:14:43" color="#38d3d3">}}

{{<matomeQuote body="＞完全に動作する<br>…適合する入力に対して、バグがない場合にね。" userName="robotresearcher" createdAt="2025-03-17T17:00:32" color="">}}

{{<matomeQuote body="もちろんできるよ。信頼性って二択じゃなくてグラデーションでしょ。好きなだけ上げられるし、”エラー率が低すぎて気にしない”とか”エラー率が低すぎて実際には起こりそうにない”レベルで止めればいいんだよ。別に新しい概念じゃないでしょ。何十年も使ってるアルゴリズムの中には、統計的に正しいだけのものもたくさんある。素数判定が良い例で、確率的な性質[0]を持ってるけど、エラーの確率を”宇宙の熱的死が起こる前に起こる可能性は低い”くらいに簡単に小さくできる。<br>[0] - https://en.wikipedia.org/wiki/Primality_test#Probabilistic_t..." userName="TeMPOraL" createdAt="2025-03-17T14:33:56" color="#ff5c5c">}}

{{<matomeQuote body="この比較には2つの問題があるよ。まず、確率的素数生成には、反復によって改善される数学的に証明された下限がある。LLMには、これに匹敵するロバストな調整パラメータはない。別のモデルを使ったり、同じモデルのより大きなバリアントを使ったりできるけど、これらはすべて経験的に決定され、文脈に依存する信頼性レベルを持っており、調整できない。第二に、素数生成関数は常に整数を返し、決してリンゴや自転車、幻影を返すことはない。LLMはリハーサルやハルシネーションを行うため、単なるエラー率だけが重要な指標ではない。どれだけひどく間違っていて、ナンセンスなエラーであるかも考慮する必要がある。" userName="kbolino" createdAt="2025-03-17T15:06:19" color="#ff33a1">}}

{{<matomeQuote body="要するにさ、LLMの解析エラー率を下げる機能が今あるかないかじゃなくて、そもそも「LLMは完璧じゃないから使えない」って考え方が現実的じゃないって話だよ。多分あんたが今読んでるこの文章だって、ほとんどの場合ちゃんと表示されてるけど、絶対に正しいとは限らないハードウェアで表示されてるんだぜ？" userName="dcow" createdAt="2025-03-17T15:26:07" color="">}}

{{<matomeQuote body="まさにこれ！みんなLLMが100%信用できないってだけで、その有用性を否定するけど、それってちょっと違うんじゃない？<br>・LLM = ChatGPTのインターフェースじゃないし、単独で動かす必要もないし、全部をLLMにやらせる必要もない。<br>・100%信用できるシステムなんてない。電圧は変動するし、放射線でビットが反転することもあるし、人間だってLLMに負けず劣らず作り話をする。<br>・信用できないシステムから信用を作り出す。<br>LLMは魔法の粉じゃないんだから、触るもの全てをダメにするわけじゃない。LLMも他のシステムと同じように、信頼性に上限があるってだけ。それを他のシステムと組み合わせることで、全体の信頼性を上げることができるんだよ。<br>EDIT:確率的素数判定の例えは、エラー率の上限を計算できるから良くなかったかも。LLMはそうじゃない。でも、私たちが毎日使ってるシステムの中にも、信頼性が経験的に確立されてるものってたくさんあるよね。つまり、十分に信頼できるまで改善して、あとはうまくいくことを祈るしかない。そして、たまに起こるエラーに対処する。それって、別に新しいことじゃないよね。" userName="TeMPOraL" createdAt="2025-03-17T19:16:37" color="#785bff">}}

{{<matomeQuote body="いやいや、LLMに「信頼性の上限」なんてないよ。LLMの信頼性の数字は、全部特定の状況下で、人工的なベンチマークを使った経験的な観察に基づいたものじゃん。金融の世界で言うように、「過去のパフォーマンスは将来の結果を保証するものではない」んだよ。<br>LLMがランダムなビットフリップと大差ないって言うのも、根拠がない比較だよ。ビットエラーはECCで制御できるけど、LLMの出力は、使い物にならなくする以外、制御できない。" userName="kbolino" createdAt="2025-03-17T19:27:19" color="">}}

{{<matomeQuote body="上限があるって言ったけど、その上限がどれだけタイトかって話はしてないよ。科学は全部、経験的な観察を上限で縛るってことだし、経験的に確立されたエラー率を持つシステムに頼るのも、エンジニアリングの基本だよ。" userName="TeMPOraL" createdAt="2025-03-17T19:30:10" color="">}}

{{<matomeQuote body="今のところ、この「上限」に割り当てられる9の数はゼロだよ。90%の信頼性すらないんだから。90%どころか、95%とか99%に到達する簡単な方法もない。あんたが最初に言ってた信頼性の段階的なスケールなんて存在しないんだよ。<br>30%の確率で間違ってて、10%の確率で危険な間違い（見た目は正しいけど、微妙な部分で壊れてる）、5%の確率でヤバいことになるようなプロセスがあったとして、それを許容できるシステムをわざわざ作る？そんなことしたら、人間オペレーターの訓練とか監査とか監督にめちゃくちゃ手間がかかって、本末転倒にならない？<br>LLMの一番良い使い方は、エンジニアリングレベルの精度が不要な場面だよ。" userName="kbolino" createdAt="2025-03-17T19:44:36" color="">}}

{{<matomeQuote body="HNでみんながハルシネーションしてるのよく見るじゃん。それを受け入れてる。なんで？信用できないもの（人間）を含めることで、全体的な価値が上がるからでしょ。LLMのエラー率は重要じゃない。ネットの価値が重要なんだよ。だから、エラー率を許容できるくらいの価値があれば、使う。ダメになる可能性があるってだけで、全部否定するのは違う。壊滅的な失敗をする可能性のあるものだって、いつも設計してる。LLMは、ネットの価値がプラスになる場所ならどこにでも現れるよ。もしかしたら、あなたはもっとニュアンスのある立場なのかもしれないけど、「一度でもハルシネーションしたら使えない」みたいな意見をよく見る。それは単純に非合理的。重要なことには使えないってのも違う。医者は今、LLMを使ってデータをまとめて診断を提案してる。訓練された専門家が対応することで、「最悪の失敗」は軽減される。だから、LLMが重要じゃないことにしか使えないって意見には賛成できない。" userName="dcow" createdAt="2025-03-18T13:33:10" color="#ff33a1">}}

{{<matomeQuote body="LLMを全部否定するのは間違いだと思う。<br>ただ、自動コード生成のためのLLM（このスレッドの文脈だとそうだと思うけど）は、ステロイドを使った怪しいコードのコピペ機みたいなもん。そもそも、そんなやり方でコードを書くのは間違ってるし、それを自動化して加速させても、改善にはならない。<br>Stack Overflowからコードをコピペした時だって、何かしら修正しないと動かないことがほとんど。むしろ、全部書き直した方が良い場合もある。もちろん、クレジットとして、それから将来的に間違いがあった時のために、参照元を明記する。他の人の助けを借りて解決する問題と問題の間には、自分で書いたコードがたくさんある。<br>世の中には、セキュリティの観点から見ても、悪いコードがたくさんある。LLMは良いコードも悪いコードも吐き出すし、良いコードと悪いコードを説明するブログ記事まで学習してる！しかも、LLMは帰属意識がないから、複数のソースを混ぜて、めちゃくちゃなやり方で結びつける。その結果、動いたとしても、保守できないゴミができあがる。<br>だから、LLMはコンパイラじゃないし、人間の抽象的な思考を具体的なコードに変える確実な方法でもない。便利なツールだけど、質の高いコードを開発する上で自動化された一部にはならない。これは、同じレベルの信頼性が必要な非コーディングのシナリオにも当てはまる。" userName="kbolino" createdAt="2025-03-18T15:11:48" color="">}}

{{<matomeQuote body="でも、LLMを使うのってめっちゃ高くつくよね？無駄じゃない？" userName="francislavoie" createdAt="2025-03-17T06:28:55" color="">}}

{{<matomeQuote body="うちのデスクトップのGPUなら、小さいモデルを毎秒185トークンで実行できるよ。投機的デコード付きの大きいモデルなら50t/s。ドラフトモデルとして小さい、ファインチューンされたモデルを使えば、推論にそんなに電力はかからないと思うよ。<br>訓練は確かに高いけど、それは一度きり。<br>それが良いアイデアかっていうと、そうは思わないけど、エネルギー消費が理由じゃない。" userName="genewitch" createdAt="2025-03-17T06:43:19" color="">}}

{{<matomeQuote body="毎秒50トークンか。Pythonで書いた手抜きパーサーとか、正規表現と比べたら？桁違いに遅くて、コストもかかる。" userName="boxed" createdAt="2025-03-17T07:18:25" color="">}}

{{<matomeQuote body="＞エネルギー消費が理由じゃないって言うなら<br>＞ちゃんと数字出して、実際のパーサーと比較して見せてくれよ。<br>大規模サーバー向けのパーサーなら書いたことあるけど、俺もベンチマーク持ってないんだよね。でも、どんな処理でも専用のパーサーの方がLLMより絶対性能良いって賭けてもいい。Rustで書いたパーサーなら、今のLLMよりエネルギー消費1万分の1以下とかマジであると思う。sedとかawkとかbashのヤバいスクリプトでも、LLMより数百倍はエネルギー効率良いんじゃないかな。" userName="berkes" createdAt="2025-03-17T08:24:12" color="#785bff">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="LLMでパーサー書かせて、そのパーサーで解析するのと、最初からLM使うのとで、エネルギー的にどっちが得になるんだろ？何回パースすれば元取れるの？" userName="chgs" createdAt="2025-03-17T09:10:00" color="">}}

{{<matomeQuote body="LLMなしでプログラミングする方法を学ぶべきだな。仮にLLM使ってパーサー書くにしても、100回くらいリクエストしたらエネルギー節約できるっしょ。こういう考え方だから、今のソフトは30年前より遅いんだよ。ハードウェアは数百倍速いのに。" userName="RUnconcerned" createdAt="2025-03-17T10:01:53" color="">}}

{{<matomeQuote body="＞LLMを使ってパーサーを書く<br>相手がLLM必要だって決めつけてるけど、今までたくさん書いてきたって言ってるから、多分いらないんじゃない？" userName="GTP" createdAt="2025-03-17T09:48:19" color="#38d3d3">}}

{{<matomeQuote body="エネルギーだけじゃなくて、GPUの購入コストとか、もっと価値のあることにGPUを使えない機会損失もでかいよね（買った後だけど）。特に大規模だと、一台のデスクトップでやるのとは違うから。<br>もちろん、良くないって言ってるのはわかるけど、規模が大きくなるとこういう点も影響してくると思う。" userName="Hercuros" createdAt="2025-03-17T07:06:21" color="#ff5c5c">}}

{{<matomeQuote body="そりゃ、クライシスを120fpsで動かしたいよね。" userName="SlightlyLeftPad" createdAt="2025-03-17T07:35:57" color="">}}

{{<matomeQuote body="モデルはどんどん安くなってると思う。だから、OpenAIとかAnthropicとか使って作って、1年後にはローカルとかホスト型のモデルに乗り換えればいいんじゃない？<br>データ抽出なら結構安全だと思う。データベースのクエリみたいに、遅いけど可用性が高くて、比較的安い呼び出しとして扱えば。" userName="genmon" createdAt="2025-03-17T06:47:15" color="">}}

{{<matomeQuote body="安くはなるだろうけど、昔ながらのやり方でデータ解析するより速くも効率的にもならないと思うよ。<br>AI使ってコンピューティングするのって、フロントエンドを非効率なWebテクノロジーに移行した時みたい。昔と同じ性能出すために、より強力なシステムが必要になったり、クラウドコンピューティングで効率とか速度がコードの効率じゃなくてカードの限度額に左右されたりするのと同じじゃん？<br>時代遅れって言われても良いけど、ソフトウェア開発者としてもっと頑張って、無駄を減らして、機械に寄り添うべきだと思う。AIでコード生成するのは良いけど、データ解析みたいなタスクをAIでやるのは間違った方向だと思うな。" userName="Cthulhu_" createdAt="2025-03-17T09:14:10" color="#ff33a1">}}

{{<matomeQuote body="この問題、よく知ってるよ。AIは妥当な解決策だと思う。WHOISレコードは、人が読めるように意図的に作られてて、機械が解析するのはめっちゃ大変なの。スクレイピングする人が多かったからね。だから、同じレジストラでも、レコードの形式がバラバラだったりする。頑張れば全部に対応できるコード書けるけど、大量にやらなければAIの方が安く済むと思うよ。<br>例えば、このライブラリはWHOIS解析ではかなり良いけど、全部のサーバーに対応できるわけじゃないって言ってるし。15年以上かけて開発してるのにね。" userName="relistan" createdAt="2025-03-17T10:16:15" color="#45d325">}}

{{<matomeQuote body="でも、それこそがこのスレッドのテーマじゃん。RDAPが未来であって、WHOISじゃないんだよ。" userName="LadyCailin" createdAt="2025-03-17T10:46:25" color="#ff5c5c">}}

{{<matomeQuote body="うん、その通り。俺が何に返信してるのかちゃんと読んで。" userName="relistan" createdAt="2025-03-17T11:00:57" color="">}}

{{<matomeQuote body="君たち両方とも正しいと思うし、同時にポイントを見失ってる気もするな。<br>LLMを使ってWHOISデータを解析するのは、一時しのぎとしてはアリかもね（できれば最終手段として）。でも、最初からデータをちゃんと構造化する（つまりRDAP）のが、長期的にはベターな解決策だよ。" userName="notpushkin" createdAt="2025-03-17T11:11:53" color="#ff5c5c">}}

{{<matomeQuote body="どっちの世界に住みたい？<br>・機械で解析できる構造化されたプロトコル<br>・大量の電力と遅延を必要とするLLMで、いい加減に解析される非構造化プロトコル" userName="klysm" createdAt="2025-03-17T21:51:18" color="#785bff">}}

{{<matomeQuote body="話が逸れるけど、viewdns.infoを運営してくれてありがとう。普段は使わないけど、たまにWHOIS情報を調べるときに使うといつも完璧に動いてくれるよ。" userName="RealStickman_" createdAt="2025-03-17T09:40:39" color="">}}

{{<matomeQuote body="一部のオペレーターが実際に経験したことがないってのが面白いよね。例えば、.esは公開WHOISを持ったことがなくて、アクセスするには国民IDで登録する必要があるんだ（確か固定IPアドレスも）。" userName="tecleandor" createdAt="2025-03-17T08:08:01" color="#785bff">}}

{{<matomeQuote body="国民IDが必要っていうのは、もう昔の話じゃないかな。俺は.es（ニックネームはberkes、ドメインはberk.es）をもう16年近く持ってるけど、EUに住んでてスペインにはいないし。最初はスペイン国外の会社が.esを登録するサービスを使ってたんだ（たしか彼らが技術的にはドメインを所有してた？）。でも今は、IDなしでローカルのドメイン登録業者に登録してるよ。<br>あの.esがWHOISを持ってないってのは、実はメリットだと思ってるんだ。昔は、WHOISからメールアドレスを拾ってスパムを送ってくるやつらを寄せ付けなかったからね。俺の.comとか.nlとか他のドメインは、もっとたくさんのスパムを受け取ってたよ。電話番号とか他の個人情報が、効率的な分散型ネットワークでばらまかれるのは言うまでもないね。最近のプライバシーアドオン(?)で、それは少し緩和されたけど。" userName="berkes" createdAt="2025-03-17T08:18:07" color="#ff5733">}}

{{<matomeQuote body="通常、IDが必要なのは個人（特に自国民）だけだよ。他の人は必要ないはず。一般的な考え方としては、国家は自分たちが持っているデータしか検証できないってこと。<br>一部のccTLDは、そのccTLDを所有する国に居住していない人による登録を禁止するルールがあるから、その場合は有効な国民IDまたは組織番号が必要になる。俺が見る限り、.esにはその要件はないね。" userName="belorn" createdAt="2025-03-17T11:34:20" color="#ff5733">}}

{{<matomeQuote body="俺の別のコメント[0]を見てくれ。WHOISサービスにアクセスするためって意味だよ。登録するためじゃなくてね。もしWHOISリクエストを試したら、nic.esのサイトに送られるメッセージが返ってくるよ。そこで登録されたドメインの情報を得ようとすると、captchaが表示されるんだ。<br>＞0：https://news.ycombinator.com/item?id=43392356" userName="tecleandor" createdAt="2025-03-17T20:22:34" color="">}}

{{<matomeQuote body="captchaを要求するのと、国民IDを要求するのでは全然違う。" userName="teddyh" createdAt="2025-03-18T14:32:48" color="">}}

{{<matomeQuote body=".esは公開WHOISを持ったことがなくて、アクセスするには国民IDで登録する必要があるんだ（確か固定IPアドレスも）。<br>これって最近の話？俺は2011年頃に.esドメインを持ってたけど、スペイン人でもヨーロッパ人でさえなかったよ。" userName="reaperducer" createdAt="2025-03-17T11:12:28" color="">}}

{{<matomeQuote body="WHOISって長年なんか怪しい感じだったよね。ドメイン登録すると、レジストラが年間数ドル余分に”ドメインプライバシー”料をむしり取るんだよ。名前とか住所とか電話番号とかメールアドレスを公開しない特権のためだってさ。それが何千もの怪しいサイトにミラーリングされるんだぜ。それに、SEOとかサイト改修とか、うさんくさい業者からのメールや電話がマジでウザい。全部、たった10ドルのdot comドメインのためなんだからなー。昔の電話帳とは全然違うっての。" userName="transcriptase" createdAt="2025-03-17T01:31:25" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="これはWHOISプロトコルを廃止してRDAPに移行する話で、ドメイン所有者の登録データをなくすってわけじゃないよ。" userName="Tarball10" createdAt="2025-03-17T01:40:18" color="">}}

{{<matomeQuote body="マジで、見出しだけ読んでコメントしたり、アップボートする人が多すぎ。あと、タイトルが記事と違うのも意味不明。" userName="anthropodie" createdAt="2025-03-17T02:34:18" color="">}}

{{<matomeQuote body="まあ、OPが記事に直接関係あるって言ってるわけじゃないし。オレもよく、ちょっと関連するくらいの話題を投稿するんだよね。HNの連中と議論したいけど、いい機会がないからさ。全然関係ない話題はダメだと思うけど、ある程度関連してて、議論が盛り上がるなら良いんじゃないかな。" userName="jader201" createdAt="2025-03-17T05:02:09" color="">}}

{{<matomeQuote body="記事から引用すると、RDAPはWHOISよりも、登録データへのアクセスを差別化できるって利点があるらしいよ。" userName="raldi" createdAt="2025-03-17T05:29:22" color="">}}

{{<matomeQuote body="つまり、人々からもっとお金を搾り取れるってことだよね。勘弁してくれよ…" userName="kelnos" createdAt="2025-03-17T05:44:46" color="">}}

{{<matomeQuote body="それ昔はよくあったけど、今はほとんどのレジストラが無料でWHOISプライバシーを提供してるよ。少なくとも、一部のTLDはWHOIS情報を隠すことを禁止してるけどね。" userName="jsheard" createdAt="2025-03-17T01:40:42" color="#ff5c5c">}}

{{<matomeQuote body="例えば、*.usドメインのレジストラはプライバシー保護が許可されてないんだって。<br>＞https://www.reddit.com/r/webdev/comments/101qjbq/wow_never_b…" userName="mrbluecoat" createdAt="2025-03-17T01:47:31" color="">}}

{{<matomeQuote body=".inドメイン（インド）も同じで、WHOISプライバシーは利用規約で禁止されてるみたい。[1]<br>[1]: https://www.registry.in/system/files/Terms_and_Conditions_fo..." userName="wtmt" createdAt="2025-03-17T02:40:42" color="">}}

{{<matomeQuote body="へー、面白い！Porkbunはnotpushk.inのデータをちゃんと編集してくれてるよ。" userName="notpushkin" createdAt="2025-03-17T06:53:43" color="">}}

{{<matomeQuote body="それって、ネットでちょっと話すとすぐに”修正”されちゃうような類の事実だよね。" userName="londons_explore" createdAt="2025-03-17T08:46:48" color="">}}

{{<matomeQuote body="前から不思議に思ってたんだ… Namecheapで買った2つの.inドメイン、ドメインプライバシー追加できないのに、WHOISデータが全部「REDACTED FOR PRIVACY」になってる。Namecheapのページにも.inドメインはプライバシーサービス提供できないって書いてあるのにね。" userName="ssnepenthe" createdAt="2025-03-17T16:37:39" color="#38d3d3">}}

{{<matomeQuote body="マジか！このポリシー、30年遅れてるじゃん。WHOISに電話番号とか住所を公開するなんて、今どきありえないっしょ！" userName="throwaway150" createdAt="2025-03-17T02:05:05" color="#45d325">}}

{{<matomeQuote body="ドイツの法律だと、ドイツの個人または企業が運営するウェブサイトはすべて、名前、住所、メールアドレス、電話番号を記載したインプリントが必要なんだって。" userName="justmedep" createdAt="2025-03-17T03:40:02" color="#ff5733">}}

{{<matomeQuote body="つまりこれって、実質的に大規模な中央集権化への動きだよね。FacebookページとかInstagramアカウント持ってれば、あんなにプライバシー侵害のリスクを冒さなくても済むし。" userName="pjc50" createdAt="2025-03-17T09:38:05" color="">}}

{{<matomeQuote body="自分のNAP情報がもう誰かの手に渡ってないなんて考えるのも無理があるよね。DBリークとかマルウェアとか、連絡先に入ってる人がいるだけでも情報が漏れる可能性あるし。結婚とか家の購入とかでもプライバシー守るの難しくなるし。ドメインプライバシー使うなって言ってるわけじゃなくて、現実を言ってるだけ。プライバシー守るには、複数の電話回線とペーパーカンパニーが必要だよ。それでも引きこもりにならないと無理だけどね。" userName="kevindamm" createdAt="2025-03-17T03:23:58" color="#ff5c5c">}}

{{<matomeQuote body="一部の人がデータを持ってるのと、誰でも簡単にツール使って調べられる状態なのとは全然違うじゃん。" userName="simonh" createdAt="2025-03-17T03:37:36" color="#ff33a1">}}

{{<matomeQuote body="引きこもりになるわ。" userName="ForOldHack" createdAt="2025-03-17T15:15:31" color="">}}

{{<matomeQuote body=".usの方が.comより信頼できるってことか。覚えとくわ。開発者が隠しすぎてるせいで、VS Codeの拡張機能ウイルスとかが蔓延してると思うんだよね。匿名になるなって強制はしないけど、自分のデバイスで実行するソフトウェアには責任を持ってほしい。給料にも反映されるべきだと思う。たぶん unpopular だろうけど。" userName="danielscrubs" createdAt="2025-03-17T07:33:23" color="#ff5c5c">}}

{{<matomeQuote body="言いたいことはわかるけど、ちょっと曖昧な部分があるね。もし私があなたのデバイスでソフトウェアを実行しているとしたら、あなたはクラウドプロバイダーってことだよね。その場合、あなたが求めてる責任は、あなたのデバイスで私のソフトウェアを実行してる場合とは違う形で提供されるんじゃないかな。開発者の匿名性に対する嫌悪感は興味深いね。別のスレッドで議論すべきだけど、重要なことだと思う。" userName="freeopinion" createdAt="2025-03-17T13:41:18" color="#38d3d3">}}

{{<matomeQuote body="どっちにしろ、開発者の匿名性を嫌うのは面白いね。個人的には、もっと信頼できる社会が必要だと思う。" userName="pharrington" createdAt="2025-03-17T16:44:26" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="E-ZPassの未払い料金通知だってさ。<br><br>＞親愛なるユーザーへ、システムで未払い料金が見つかったから12時間以内に払えって。<br>https://e-zpass.org-qrh.xin/indexshtml “<br><br>中国のレジストラにスパム止めてもらうのは無理ゲーだよね。キャリアもわかってないし。もう*.Xin全部ブロックしてるわ。" userName="ForOldHack" createdAt="2025-03-17T14:35:44" color="">}}

{{<matomeQuote body="レジストラが悪いだけだよ。<br>Porkbunとか使えば？<br>https://porkbun.com/products/whois_privacy" userName="october8140" createdAt="2025-03-17T01:40:00" color="">}}

{{<matomeQuote body="Porkbunって2014年にできたんだよね。<br>問題発生から20年遅いじゃん。" userName="CursedSilicon" createdAt="2025-03-17T01:41:21" color="">}}

{{<matomeQuote body="昔はPHPの共有ホスティングが月10ドルで、SSL証明書が150ドルもしたんだよなー。" userName="nextts" createdAt="2025-03-17T01:56:08" color="">}}

{{<matomeQuote body="Let’s encryptが無料で証明書を提供してくれてマジ感謝。HTTPSがデフォルトになるのが遅すぎた。HTTPS化にお金払えなかったから、もしブラウザが強制してたらヤバかった。" userName="endofreach" createdAt="2025-03-17T03:07:29" color="#45d325">}}

{{<matomeQuote body=".comが9.59ドルもするの理解できない。登録されてる.comドメイン名って1億6千万もあるんでしょ？ルートサーバーの運営にお金がかかるのはわかるけど、年間15億ドルもかかるわけないじゃん！Wikipediaのホスティング費用なんて年間300万ドルだよ？" userName="scarab92" createdAt="2025-03-17T03:29:52" color="#ff33a1">}}

{{<matomeQuote body="ICANNっていう非営利団体に入るのは0.18ドルだけ。残りはVerisignっていう上場企業に入るんだよね。Verisignは年間15.6億ドルの収入があって、12.1億ドルも自社株買いに使ってるんだよ。" userName="DoctorOW" createdAt="2025-03-17T04:06:13" color="#ff5c5c">}}

{{<matomeQuote body="Verisignは.comのTLDを所有してなくて、ICANNのサービスプロバイダーにすぎないんだよね。だったらICANNがVerisignを別の、もっと安い登録機関に変えればいいのに。" userName="scarab92" createdAt="2025-03-17T06:41:10" color="#45d325">}}

{{<matomeQuote body="それじゃ問題解決にならないよ。安くしたら需要が無くならないから、全部買い占められるよ。(今より酷くなる！)転売対策とか必要になるけど、実装が大変。ドメインの買い占め対策ポリシーとか？でも、どうやって実施するんだろ。特にお金がないと。" userName="notpushkin" createdAt="2025-03-17T07:09:55" color="">}}

{{<matomeQuote body="なるほどね。でも、squattingを防ぐために最低価格を設定するなら、その余剰利益をなんで私企業にプレゼントしなきゃいけないんだ？ICANNがその利益を回収して、慈善目的に使うべきじゃない？" userName="scarab92" createdAt="2025-03-17T08:04:31" color="">}}

{{<matomeQuote body="だって、natural monopolyじゃん。誰も.bizアドレスを真剣に受け止めないでしょ。（.comは基本的に価格規制されてるんだよね。Verisignは好きな時に好きなように価格を上げられない。でも、彼らにとってはかなりうまい話だと思うけどね。）" userName="ocdtrekkie" createdAt="2025-03-17T04:01:42" color="#ff5c5c">}}

{{<matomeQuote body="NamecheapでWHOIS protectionのためにお金払ったことないな。" userName="doublepg23" createdAt="2025-03-17T01:57:27" color="">}}

{{<matomeQuote body="最高のregistrarじゃないけど、WHOISから自分の情報を隠すのは無料だよ。" userName="fitsumbelay" createdAt="2025-03-17T02:44:13" color="">}}

{{<matomeQuote body="GDPRがこれを変えたんだよね。それまでは、registrarは無料で情報を隠すインセンティブがほとんどなかった。代わりに、サービスに対して料金を請求できたから。Google Domains（rip）が最初から無料のprivacy proxyを提供していたのは、trivialじゃなかった。" userName="CydeWeys" createdAt="2025-03-17T03:28:31" color="#ff5c5c">}}

{{<matomeQuote body="＞ GDPR<br>でも、ドイツのサイトは全部こういうの持ってなきゃいけないんでしょ？<br>＞”https://0pointer.net/imprint”" userName="betaby" createdAt="2025-03-17T03:49:19" color="">}}

{{<matomeQuote body="全部のサイトじゃないよ。個人サイトはimprintいらないんじゃないかな。" userName="whilenot-dev" createdAt="2025-03-17T07:06:26" color="">}}

{{<matomeQuote body="電話帳は街に出て行ったけど、インターネットはバンガロールからバングラデシュまで、あらゆる詐欺師でいっぱいだ。" userName="throwaway48476" createdAt="2025-03-17T08:05:54" color="">}}

{{<matomeQuote body="奇妙なほどfocusするregionがlimitedだね。" userName="b800h" createdAt="2025-03-17T08:34:50" color="">}}

{{<matomeQuote body="新しいprotocolにreplaceされることにnoteして。新しいprotoでidentity data disclosureのrequirementsが緩くなるってindicationはある？" userName="TZubiri" createdAt="2025-03-17T02:10:55" color="">}}

{{<matomeQuote body="RDAPってのがWHOISに代わるんだってさ。もっと技術的に進んでて、ドメインがプライバシーサービスで保護されてるかどうかがわかりやすくなるらしいよ。" userName="brown" createdAt="2025-03-17T01:11:52" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
