+++
date = '2025-04-15T00:00:00'
months = '2025/04'
draft = false
title = 'え、マジ？TLS証明書の有効期間が47日に短縮決定！運用現場阿鼻叫喚不可避か'
tags = ["TLS", "証明書", "セキュリティ", "有効期限", "運用"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> え、マジ？TLS証明書の有効期間が47日に短縮決定！運用現場阿鼻叫喚不可避か

引用元：[https://news.ycombinator.com/item?id=43693900](https://news.ycombinator.com/item?id=43693900)

{{<matomeQuote body="結局何がしたいんだろ？反対意見に賛成だなー。30秒にすれば？もう「全部自動化しないとTLS使う意味ない」ってレベル超えたら、48時間以上持たせる意味なくね？絶対そんなレベルにはならないと思うけど。これって思想的なものって感じ。みんなに毎月インフラの椅子取りゲームさせるメリットって何かあるのかな？" userName="bob1029" createdAt="2025-04-16T18:21:01" color="">}}

{{<matomeQuote body="Let's Encryptのチームだけど、色々考えたよ。<br>短い有効期間のメリットは、1.失効システムの負担減。ドメインが変わった時とか、前の証明書が失効状態になる期間が短くなる。CRLが小さくなるのもいいね。2.失効させるべき証明書のリスク減。ドメインの前の所有者が誰か知らなかったとか、攻撃で証明書が発行されたとか。3.7日未満の短い証明書だと、多くのUAが失効チェックしない。今の失効技術と似たような感じ。パフォーマンス向上にもなる。自動化が難しい場合もあるけど、月1回の更新ならやりやすいかも。数日より短くすると、信頼性とスケールのリスクがある。CTログは可視性が高いけど、有効期間を短くするとスケールアップが必要になる。<br>CAが証明書を失効させる必要があっても、顧客が対応できないって問題があるから、自動化を進めるために短くしたいってのが動機。" userName="mcpherrinm" createdAt="2025-04-16T19:00:19" color="#45d325">}}

{{<matomeQuote body="一部の大手企業のためってことね。他は迷惑。" userName="0xbadcafebee" createdAt="2025-04-16T19:16:28" color="">}}

{{<matomeQuote body="CAとブラウザベンダーが決めたんだね。片方は需要が増えるし、もう片方はソフトウェアの管理コストが増えるから競争のハードルが上がる。セキュリティ上のメリットはあるけど、インフラ管理してる身としてはイライラする。25年とか30年前のシステムもあるのに、10年後にも使えるツールが必要なんだよ。ルーターの設定画面にIPアドレスでアクセスしたら、ブラウザがHTTPが安全じゃないとか、TLS証明書が検証されてないとか文句言うのと同じ。インターネットは大事だけど、それが全てじゃない。長期運用されるシステムへの投資もしてほしい。インフラがJava v1.3 on Windows 98みたいになってるのは、無視されてるから。" userName="da_chicken" createdAt="2025-04-16T21:23:27" color="">}}

{{<matomeQuote body="技術系のグループの人が、実際の使い方を無視してるのがムカつく。お高くとまった「俺らは分かってる」って感じ。現実世界はそんなに綺麗じゃないんだよ。Chromeチームみたいにね。でも現実を見ようとしないから、どんどん使いにくくなる。Googleは独善的な目標のために、他人を苦しめてる。" userName="bigstrat2003" createdAt="2025-04-17T07:28:26" color="">}}

{{<matomeQuote body="ルーターとかのWebページにアクセスする時、警告が出ないローカルな解決策がないのが信じられない。関係者全員のミス（または意図的）。ローカルなTLSが必要だわ。" userName="kcb" createdAt="2025-04-16T21:57:10" color="">}}

{{<matomeQuote body="一番簡単で安全なのは、ルーターにCA証明書のQRコードを貼る事。スマホで読み込んでCA証明書をインポートすれば安全になる（ステッカーがすり替えられてなければ）。WiFiのQRコード規格は2つもあるのに、CA証明書が含まれてないんだよね。Wi-Fi Easy Connectは企業向けだし、JavaのライブラリはアクセスポイントとWPAキーだけ。どっちもエンドユーザーのセキュリティは考えてない。" userName="0xbadcafebee" createdAt="2025-04-17T04:36:51" color="">}}

{{<matomeQuote body="家のCAを立てる事を考えた。ラズパイみたいなデバイスで、フロントパネルにUIを表示する。自己署名証明書で起動して、フロントパネルにフィンガープリントを表示する。PCからWeb UIにアクセスして、フィンガープリントを確認してルート証明書をインストールする。ルーターみたいなデバイスには、鍵を生成してCAに証明書をリクエストする。CAはフロントパネルに確認メッセージを表示して、OKなら証明書を発行する。これでローカルなHTTPSに警告なしでアクセスできる。" userName="hamburglar" createdAt="2025-04-17T07:41:08" color="#ff5c5c">}}

{{<matomeQuote body="なんでブラウザがルーターの自己署名証明書を信頼する必要があるの？自分で確認して、信頼するように設定すればいいじゃん。" userName="UltraSane" createdAt="2025-04-17T03:14:52" color="">}}

{{<matomeQuote body="パブリックじゃないTLS証明書用のCAがあったら便利かも。25年とか有効期限切れにならない証明書を発行するの。ドメインの検証には使っちゃダメだけど、暗号化には使えるようにする。192.0.0/24とか、リンクローカルアドレスで使う。TLDは.localとか。パブリックアドレスで使ったら警告を出す。自己署名証明書みたいに扱うけど、毎回追加する手間がない。Googleが導入してくれたら最高だけど、メリットあるかな？" userName="nine_k" createdAt="2025-04-17T05:27:07" color="">}}

{{<matomeQuote body="それって self-signed の証明書より価値あるの？ 例えば、ACME Router Corp が acmerouter.local の証明書を CA から発行してもらって、ルーターにプリロードしたとするじゃん？ 絶対誰かに抜き取られるって。だったらデバイスで自己署名した方が、少なくとも秘密鍵はデバイスに残って共有されないから良くない？" userName="jabiko" createdAt="2025-04-17T07:29:11" color="">}}

{{<matomeQuote body="価値はね、インストールしたてのブラウザでURL開いても、証明書が怪しいって言われないことだよ。秘密鍵はデバイスとか証明書作った場所に残るよ。CA がブラウザに信頼されてるってのがミソ。" userName="nine_k" createdAt="2025-04-17T07:57:00" color="#ff33a1">}}

{{<matomeQuote body="デバイス一個ハッキングして秘密鍵抜いたら、同じタイプのデバイス全部に有効な証明書ゲット！それをターゲットのネットワークに忍び込ませて man in the middle でイタズラできる。" userName="procaryote" createdAt="2025-04-17T09:03:02" color="">}}

{{<matomeQuote body="みんなにとってシステムがもっと信頼できて安全になるってことじゃん？ それってめっちゃ良くない？根本的な原因は失効がうまく機能してないからで、Web PKI に求められるセキュリティ特性を実現するためにもっと頑張らないとね。" userName="mcpherrinm" createdAt="2025-04-16T21:20:35" color="#ff33a1">}}

{{<matomeQuote body="自動化できる人にとっては、システムがもっと信頼できて安全になるよね。でも、組み込みデバイスとか、勉強中の人にとってはハードル上がるかも。TLS チェックを自動化できない人もいるし。" userName="fiddlerwoaroof" createdAt="2025-04-16T22:04:40" color="">}}

{{<matomeQuote body="手動で作った証明書を組み込みデバイスに入れるのは、完全に物理的に管理できない限り危険だよ。あと、失効システムがちゃんと動いてないから、証明書の有効期間を短くするのはリスクを下げるのに有効。組み込みとかローカルネットワークには良い解決策がないんだよね。特定のドメインとかIPアドレスに対して信頼できるCAを簡単に追加できるのが理想かな。" userName="thayne" createdAt="2025-04-17T01:09:24" color="#ff5733">}}

{{<matomeQuote body="マジな質問：組み込みデバイスの証明書ってどうするのが正解なの？ このコメント読むまで考えたことなかった。" userName="throwaway2037" createdAt="2025-04-17T05:01:03" color="">}}

{{<matomeQuote body="TLS が現実的じゃない組み込みデバイスも多いんだよ。リモートセンシングとか、バッテリーを最大限に活かしたい場合は電力消費が重要。テレメトリーが一番電力使うから、無線システムの稼働時間を増やしたくない。TLS はまさにそれ。" userName="steve_gh" createdAt="2025-04-17T06:48:38" color="">}}

{{<matomeQuote body="7日とかの短い証明書だと、自動で直らない更新エラーとかで手動で対応が必要になった時が問題になりそう。Let’s Encrypt は7日の証明書をどうするんだろ？ 毎日更新？ それとも3日ごと？ 休みとかもあるし、24時間対応じゃない人もいるし。更新の問題に対応するのに一週間は欲しいよね。短い証明書だと無理じゃん。" userName="klaas-" createdAt="2025-04-17T05:27:14" color="#ff5733">}}

{{<matomeQuote body="色々考えてるみたいだけど、理想の世界では CA なんて存在すべきじゃない？" userName="grey-area" createdAt="2025-04-16T20:17:12" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="もし全部作り直せるなら、DNSで鍵を安全に配ってCAいらなくなるよね。最近のDNSの代替はみんなそうだけど、DNSにとって代わるのは無理そう。DNSも似たようなこと試してるけど、うまくいってないし。" userName="Ajedi32" createdAt="2025-04-16T20:48:47" color="">}}

{{<matomeQuote body="解決策を理想化する人は、名前解決みたいなインターネットのコアな部分にPKIを詰め込むと、インフラ事業者の信頼を取り消すのが難しくなるってことを忘れちゃだめだよ。.comを信用しないなんてできないけど、Verisignは競合がいたからブラウザは信用しなくなったし、顧客も簡単に乗り換えられたんだ。" userName="tptacek" createdAt="2025-04-16T21:10:55" color="#38d3d3">}}

{{<matomeQuote body=".comは今でも勝手に証明書を発行できるし、CAに渡すDNS情報もコントロールしてる。今、誰もその脅威について話してないってこと以外、何が変わるんだろう。" userName="ysleepy" createdAt="2025-04-16T22:26:06" color="">}}

{{<matomeQuote body="Google.comの証明書を発行させてみたらどうなるか見てみなよ。" userName="tptacek" createdAt="2025-04-17T00:32:35" color="">}}

{{<matomeQuote body="これは良い指摘だね。技術的には正しい議論が多いけど、これが一番現実的な反論だよ。Verisign（今のSymantec）がめちゃくちゃなGoogle.comのワイルドカード証明書を発行して、秘密鍵と公開鍵のペアを個人的に送ることは理論的には可能だけど、実際には起こりえない。だって、ルールとセキュリティポリシーがある会社なんだもん。" userName="throwaway2037" createdAt="2025-04-17T05:14:15" color="#ff5733">}}

{{<matomeQuote body="＞すべてのブラックハット国家は、証明書発行サーバーに侵入して、主要なメールプロバイダーに対するman-in-the-middle攻撃を実行するために、正当な署名付き証明書をエクスポートしたいと考えているだろう”<br>Snowdenの文書で、とある三文字機関がそれを達成していたって聞いた気がするんだけど、勘違いかな？" userName="codethief" createdAt="2025-04-17T06:43:24" color="">}}

{{<matomeQuote body="それってハイプロファイルなドメインだけじゃない？CAは証明書を発行してCTにログを記録し、求められれば権威DNSサーバーからDNSレスポンスを受け取ったって言えばいいんだもん。そうなると水掛け論だよ。<br>DV発行にDNSSECは必須？もしそうなら、信頼できるTLDに頼ってることになるよね。<br>CAの暗黙的な鍵管理の監視にメリットがないとは言わないけど、DV証明書の代わりに、DNSSECに公開鍵を入れるのはローコストで良いと思うんだ。" userName="ysleepy" createdAt="2025-04-17T16:22:03" color="#ff5733">}}

{{<matomeQuote body="誰が気にするの？証明書って、誰かがお金を払ったってことしか教えてくれないじゃん。証明書の買い手は何を得るの？サイトが取り消されたり、期限切れになったりして、使えなくなる可能性だよ。訂正してほしい。" userName="transfire" createdAt="2025-04-16T22:04:20" color="">}}

{{<matomeQuote body="ダメだよ。<br>DANEこそが正義(https://en.wikipedia.org/wiki/DNS-based_Authentication_of_Na...)<br>でもどのブラウザも対応してないから、どうしようもないね…：/" userName="JackSlateur" createdAt="2025-04-17T06:45:37" color="">}}

{{<matomeQuote body="証明書の期限が切れずに、セキュリティ侵害につながった事例ってある？" userName="ocdtrekkie" createdAt="2025-04-17T03:57:02" color="">}}

{{<matomeQuote body="Heartbleedみたいな例だと、ユーザーが以前に漏洩した証明書を失効させずにローテーションしちゃうケースがあるんだよね[1]。[1]: https://en.wikipedia.org/wiki/Heartbleed#Certificate_renewal..." userName="woodruffw" createdAt="2025-04-17T04:01:35" color="">}}

{{<matomeQuote body="実際に証明書が漏洩して悪用されたケースってあるのかな？理論的な話じゃなくて、実際の侵害事例を知りたい。" userName="ocdtrekkie" createdAt="2025-04-18T01:41:48" color="">}}

{{<matomeQuote body="＞でも、顧客が適切なタイミングで対応できないってのは、顧客とプロバイダーの関係が逆転してるんじゃない？<br>顧客とプロバイダーの関係がおかしいってことかな。" userName="Lammy" createdAt="2025-04-16T19:34:39" color="">}}

{{<matomeQuote body="いや、顧客が契約違反してるんだよ。「お客様は神様」って考え方は、PKIインフラみたいな重要なものには通用しないんだ。インターネット全体の安全が損なわれるからね。CAがルールを守らないと、トラストストアから削除されることになるから、契約を守らない会社に例外はないんだよ。" userName="crote" createdAt="2025-04-16T19:46:33" color="#45d325">}}

{{<matomeQuote body="CAが小さい顧客に連絡できない（大きい会社は90日以内に対応できるはず）ことが、どうしてインターネット全体の安全を損なうことになるの？それに、インターネット全体の安全がそんなに危険なら、47日が許容範囲で90日がダメな理由は何？" userName="luckylion" createdAt="2025-04-16T20:46:43" color="">}}

{{<matomeQuote body="記事に「最終目標」が書いてあるよ。＞証明書の有効期間を短くすることで、失効した証明書の影響を軽減できる。2023年にCA/B Forumは、有効期間が7日以内の短い証明書を承認したんだって。これはOCSPとかCRLのサポートを必要としないんだ。<br>有効期間が短い証明書は、Web PKIにおけるOCSPなどの失効メカニズムの負担を軽減する。CAもブラウザも、タイムリーな失効方法をうまくスケールできてないから、これは良いことだよね。" userName="woodruffw" createdAt="2025-04-16T18:30:59" color="#ff5c5c">}}

{{<matomeQuote body="証明書の有効期間を短くすると、MITM攻撃のために作られた証明書を信用しやすくなるんじゃない？それって国家によるインターネット盗聴の次のステップだよね。" userName="sitkack" createdAt="2025-04-16T19:51:36" color="">}}

{{<matomeQuote body="まさか！証明書の有効期間を短くしても、すでに信頼されてるルート証明書が延長されるだけだよ。ユーザーとしてウェブを閲覧するときに気づくようなことじゃない。MITM証明書は手動で信頼する必要があるから、全然違う話。" userName="ezfe" createdAt="2025-04-16T20:17:00" color="#785bff">}}

{{<matomeQuote body="接続固有の証明書だと、他の人の証明書と比較できなくなって、攻撃に気づきにくくなるってことじゃないかな。CAがバックドア化されて、一部の重要なターゲットだけを狙えば、アクセスがバレる可能性も低くなる。" userName="Lammy" createdAt="2025-04-16T20:37:23" color="">}}

{{<matomeQuote body="インフラへの負荷も心配だよね。署名鍵は全部HSMに入ってるけど、無限にスケールするわけじゃないし。" userName="fs111" createdAt="2025-04-16T18:31:19" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="へー、大企業だと有効期限がどんどん短くなるから、全部自社署名の証明書に切り替えてるとこが多いみたいね。表向きのデバイスとかロードバランサーは公共の証明書使うけど、内部サービスは自前のCAで署名した有効期限長めの証明書使ってるって。アプリがクソだと証明書の扱いで苦労するからね。" userName="pixl97" createdAt="2025-04-15T15:33:21" color="#ff5733">}}

{{<matomeQuote body="それは良い流れだね。WebPKIのエコシステムとしては、みんなが内部のことにWebPKIを頼るのをやめてほしいんだよね。要件が全然違うし。内部CAで有効期限長めの証明書を使うのは理にかなってるし、公共のCAを使うより安全な場合も多いよ。" userName="plorkyeran" createdAt="2025-04-15T18:11:25" color="#ff5c5c">}}

{{<matomeQuote body="うちの会社が発行する証明書はTTLが72時間で、48時間ごとに更新しないといけないんだ。証明書のリロードでバグとか機能不足にめっちゃ苦労してる。ひどい回避策もいっぱいあるし。consul clientのリロードが、ソケット開いたり、ソケットのパラメータ調整したり、TCPコネクションの引き継ぎとか、全部まとめてやるのと同じレベルなんだよね。stateless clientにパラメータ投げてるだけなのに。でも負けない。証明書とシークレットはリロードしろ。もし内部証明書を大量に取り消して再発行しないといけない事態になったら、やってるやつは楽勝。やってないやつの面倒は見てらんない。" userName="tetha" createdAt="2025-04-16T18:37:10" color="">}}

{{<matomeQuote body="＞うちの会社が発行する証明書はTTLが72時間で、48時間ごとに更新しないといけないんだ。<br>木曜日に発行された証明書が週末に更新されなくて、月曜日に全部動かなくなって、誰も認証できなくなったり、建物に入れなくなったりした時の話、絶対教えてくれるって約束してくれる？" userName="donnachangstein" createdAt="2025-04-16T19:02:48" color="#ff33a1">}}

{{<matomeQuote body="約束するよ。この3年間、数百のアプリケーションのPostgres接続をそれに賭けてるんだ。もしこれでしくじったら、俺が言わなくてもすぐにバレる。" userName="tetha" createdAt="2025-04-16T19:33:12" color="">}}

{{<matomeQuote body="なんで証明書の更新が手動なの？" userName="wbl" createdAt="2025-04-16T20:24:14" color="">}}

{{<matomeQuote body="ブラウザは内部利用を想定してないからね。イントラネットだけで使うようなものにもHTTPSを要求してくるし。例えば、ブラウザAPIとかPWAとか。" userName="rlpb" createdAt="2025-04-16T11:54:40" color="">}}

{{<matomeQuote body="もうこのコメント欄で説明されてるけど、“内部利用”と“HTTPS”は両立するよ。企業は内部CAを立てて、好きなように内部証明書に署名して、それを自分のデバイスで信頼すればいいんだから。" userName="akerl_" createdAt="2025-04-16T12:53:40" color="#38d3d3">}}

{{<matomeQuote body="“内部利用”と“企業”を同じ意味で使ってるけど、全然違うからね。中小企業とか、他の組織とか、個人だって内部サービスを使いたいんだよ。ローカルネットワーク上のアプリにアクセスするためだけにCAを“セットアップ”して、全部のクライアントデバイスに証明書を追加しないといけないなんて、マジありえない！" userName="franga2000" createdAt="2025-04-16T17:29:20" color="#ff33a1">}}

{{<matomeQuote body="ありえないとは思わないな。個人的には、他の方法より内部CAをセットアップする方が簡単だと思うよ。一番手っ取り早いのは、CAを生成して、全部に対応するワイルドカード証明書を発行するコマンドをいくつか実行するだけ。あとは、新しいデバイスのブートストラップスクリプトかドキュメントに、CAを信頼させる行を1行追加すれば終わり。Hashicorp Vaultみたいなのをセットアップするのも難しくないし、組織の規模に関係なく、何らかの方法でシークレットを配布する必要があるでしょ。" userName="JimBlackwood" createdAt="2025-04-16T18:02:02" color="#ff5733">}}

{{<matomeQuote body="CA作るのちょろいって言うけどさー、うちの親父まだターミナルを「DOS窓」って呼んでて、なんでGUI使わないんだって言うんだぜ。自営やってるのに、ローカルプリンターとの通信とかでCA構築できるわけないじゃん。PDFリーダー買うのにも電話してくるレベルだし。<br>うちの会社は技術力高い方だけど、セキュアなハードウェアでCA構築するのに数日かかったよ。ドキュメントも壊れてたりしてさ。発行手順とか決めて、やっと上の人に渡したら、誰も使ってくれないんだもん。wikiにTLSとSSHのフィンガープリント載せてるだけ。" userName="lucb1e" createdAt="2025-04-16T18:39:22" color="">}}

{{<matomeQuote body="ほとんどの会社は、建築基準とか車の修理とか知らなくても問題なくやってるじゃん。専門家にお金払うのは全然ありだし、問題はどれだけ手間がかかるかってことで、素人ができるかどうかじゃないでしょ。" userName="Retric" createdAt="2025-04-16T19:01:33" color="">}}

{{<matomeQuote body="説明してくんない？　なんでそう思うのかわかんない。" userName="JimBlackwood" createdAt="2025-04-16T19:00:30" color="">}}

{{<matomeQuote body="すべての企業が技術系スタートアップで、有能なエンジニアが揃ってると思ってるんでしょ？　もうちょっと外の世界を見た方がいいよ。あなたのコメント読んでると、自分の世界に閉じこもってるようにしか見えない。「時代錯誤」って言葉がぴったりだし、よく考えた方がいいよ。" userName="Henchman21" createdAt="2025-04-16T19:43:00" color="#38d3d3">}}

{{<matomeQuote body="イントラネット専用で、色々チェックしないブラウザの需要ありそう。" userName="acedTrex" createdAt="2025-04-16T17:37:13" color="">}}

{{<matomeQuote body="親にandroid、iPhone、Windowsラップトップ、MacBookにCA追加して、自作のNextcloud使わせるなんて悪夢でしかない。中小企業だと、社員が自分のデバイス持ち込むのも普通だし（もちろん良くないけど）。大企業みたいにITサポート部隊がいるわけじゃないんだよ。" userName="jillyboel" createdAt="2025-04-16T17:39:59" color="#785bff">}}

{{<matomeQuote body="NextcloudにLetsEncrypt導入するのなんて超簡単じゃん。企業が独自のCA立てたい理由はいろいろあるだろうけど、個人のホームラボみたいなのとは全然違うでしょ。" userName="crote" createdAt="2025-04-16T19:55:20" color="">}}

{{<matomeQuote body="何かオススメある？　自分でもやってるけど、管理が簡単だとは言えないな。最近、ドメイン登録業者のAPIが廃止されて、自動化設定がぶっ壊れたんだよね。90日後に。" userName="GabeIsko" createdAt="2025-04-16T22:40:11" color="">}}

{{<matomeQuote body="なんで親が企業の内部ネットワークにいるんだ？" userName="richardwhiuk" createdAt="2025-04-16T17:41:49" color="">}}

{{<matomeQuote body="互換性はあるけど、HTTPSって特に小さい組織だと不要なことが多いよね。ブラウザが余計な複雑さを求めてくるせいで、そういう場合にブラウザは向いてないんだよ。" userName="rlpb" createdAt="2025-04-16T14:58:24" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="ブラウザがHTTPS以外も理解できればいいのに。証明書なしでHTTPSみたいなHTTPってのを誰か発明してよ。" userName="freeopinion" createdAt="2025-04-16T17:00:30" color="">}}

{{<matomeQuote body="HTTPSが要らない内部サービスって、あんまり想像できないんだけど。" userName="tedivm" createdAt="2025-04-16T16:45:47" color="">}}

{{<matomeQuote body="それは井の中の蛙だよ。内部ネットワークのドキュメントをホストするだけの静的なページに暗号化なんていらないじゃん。証明書の管理とか、問題が起きた時の調査とか、コストに見合わないよ。よくあるのは、ロードバランサーの後ろにHTTPサーバーを隠して、そこでワイルドカード証明書でSSL終端することだね。WebPKIとかいう人たちを黙らせるためだけの複雑な構成だよ。" userName="donnachangstein" createdAt="2025-04-16T16:52:40" color="#38d3d3">}}

{{<matomeQuote body="ブラウザが短い証明書を強制するようになったら、内部サイトも影響を受けるのが問題だよね。ブラウザ以外は証明書の期限切れとか気にしないことが多いけど。だから、内部サイトでもWebPKIを使う人はいると思うよ。" userName="ozim" createdAt="2025-04-16T05:44:40" color="">}}

{{<matomeQuote body="＞ほとんどの人が内部署名された証明書に移行してるのを見たよ<br>それって良いデフォルトじゃない？ネットワークアクセスもいらないし、公開証明書もいらないし、間違って公共のデバイスで信頼される心配もないし、証明書の発行ログもいらない。" userName="rsstack" createdAt="2025-04-15T15:59:31" color="#ff5c5c">}}

{{<matomeQuote body="そうだね。でも、社内CAを運用して、その証明書をすべてのクライアントに配布するのは大変だよ。昔は、ワイルドカード証明書を取るのが一番楽だったんだ。ネットワークアクセスもいらないし、情報も漏れないし。今は変わってきてるけど、良い変化だと思う。" userName="pavon" createdAt="2025-04-15T16:03:45" color="">}}

{{<matomeQuote body="＞A lot more work<br>'ipa-client-install'を使えば簡単だよ。証明書はドメインサービスの一部だからね。IPAとかで管理できない規模なら、まあ、仕方ないね。" userName="bravetraveler" createdAt="2025-04-15T23:09:24" color="">}}

{{<matomeQuote body="最近のクラウドネイティブな会社が、サーバーをドメインに参加させてるとは思えないな。サーバーをただの箱にして、アクセスは外部システムで管理するのが流行りだよ。" userName="Spivak" createdAt="2025-04-16T07:43:24" color="">}}

{{<matomeQuote body="＞内部サービスは、内部CAで署名された有効期限が長い証明書を使うだろうね。だって、証明書を使うのが面倒なアプリが多いんだもん。<br>Caddyとかをアプリの前に置いて、TLS終端だけさせるってのはどう？Caddyなら証明書を自動で更新してくれるよ。" userName="xienze" createdAt="2025-04-15T15:44:33" color="#ff5733">}}

{{<matomeQuote body="webとかtech系の会社以外はそうじゃないと思うよ。銀行とか金融、大手製造業はみんなF5とかAVIで処理してるんじゃないかな。そっち系のアップデートは問題ないと思うけど、最近はあんまりやらないから正確にはわかんない。" userName="pixl97" createdAt="2025-04-15T15:53:02" color="">}}

{{<matomeQuote body="F5ってACMEに対応してないんだよね。それが結構痛い。" userName="tikkabhuna" createdAt="2025-04-16T18:23:31" color="">}}

{{<matomeQuote body="CA/PKIを自分で構築して運用する必要があるんだよね。<br>もしくは、内部サービスのためにpublic internet経由で証明書をリクエストするか。ホスト名はwebに公開されるし、transparency reportsにも公開されることになる。" userName="cryptonym" createdAt="2025-04-15T15:55:21" color="">}}

{{<matomeQuote body="内部CAの大きなメリットは、TTLを短く設定しやすいことだと思ってる。" userName="lokar" createdAt="2025-04-16T16:45:53" color="#ff5733">}}

{{<matomeQuote body="ACMEにauthorization-certificateベースのチャレンジタイプがないのが不思議。それがあれば、マイクロセグメント化されたネットワークでもACMEが実用的になるのに。<br>近いのはこれかも：<br>＞https://blog.daknob.net/workload-mtls-with-acme/<br>＞https://blog.daknob.net/acme-end-user-client-certificates/" userName="formerly_proven" createdAt="2025-04-16T17:29:53" color="#ff33a1">}}

{{<matomeQuote body="mongoとTLSだけでもう面倒なのに、インターネットに公開してないエンドポイントで証明書を定期的に更新するとか無理。" userName="shlant" createdAt="2025-04-16T10:18:37" color="">}}

{{<matomeQuote body="そうだよね。letsencryptはpublic-facingなwebサーバーには便利だけど、webサーバーじゃないものとか、外部からのクエリを受け付けないものには、あの簡単な自動化は使えない。" userName="SoftTalker" createdAt="2025-04-16T17:17:46" color="#ff33a1">}}

{{<matomeQuote body="ACMEのdns challengeは、webサーバーじゃないものでも使えるよ。<br>外部クエリが許可されているホストで証明書を更新して、更新された証明書を外部クエリが許可されていないホストに自動的に配布する方法を見つければ良いんじゃないかな。" userName="procaryote" createdAt="2025-04-16T19:09:14" color="#785bff">}}

{{<matomeQuote body="DNSにTXTレコードを追加するAPIとか権限がないんだよね。サポートチケット発行して、早くても24時間後対応だよ。" userName="SoftTalker" createdAt="2025-04-16T19:42:54" color="">}}

{{<matomeQuote body="DNSレコードを作成するためにお金を払っている人がいるの？ 笑" userName="JackSlateur" createdAt="2025-04-16T21:15:13" color="">}}

{{<matomeQuote body="別のスレでも言ったけど、これって自分のサブドメインで独自のCAを作るのがほぼ不可能になるってことだよね。ブラウザに組み込まれてる大手だけが、好きな期間でCA証明書を持てるってわけか…<br>セキュリティ的には両刃の剣だと思うなー。<br>・みんな証明書が頻繁に変わることに慣れすぎて、証明書のピン留めとかしなくなるから、中国とか変な会社が偽の証明書を提供してきても気づきにくくなるんじゃない？<br>・今までは閉じたシステムで、証明書の更新も年1回とかだったのが、これからは世界中のマシンが常にランダムな証明書サーバーに接続して更新しなきゃいけなくなる。もしDigicertとかLetsencryptのサーバーとか、証明書更新クライアントがハッキングされたら、世界中のサーバーが一瞬でやられちゃうかも。<br>記事の説明も笑えるんだよね。<br>＞　47日が適当な数字に見えるかもしれないけど、単純な計算なんだってさ。<br>＞　47日 = 最大1ヶ月（31日） + 30日の半月（15日） + 1日の余裕<br><br>つまり、47日は適当じゃないけど、1ヶ月 + 半月 + 1日は適当じゃないってことね…" userName="greatgib" createdAt="2025-04-15T15:44:37" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
