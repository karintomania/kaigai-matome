+++
date = '2025-04-04T00:00:00'
months = '2025/04'
draft = false
title = 'Gumroadのソースコードが公開！一体何がわかる？気になるAPI連携先も判明！'
tags = ["Gumroad", "ソースコード", "API", "Rails", "オープンソース"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> Gumroadのソースコードが公開！一体何がわかる？気になるAPI連携先も判明！

引用元：[https://news.ycombinator.com/item?id=43580103](https://news.ycombinator.com/item?id=43580103)

{{<matomeQuote body="コードをgrepして`api.`でベンダーを調べてみたよ。このコードベースが使ってるベンダーとか、コードを動かすために提携が必要なとことか。<br>支払いはhttps://api.paypal.com と https://api.stripe.com。<br>税金関係はhttps://api.taxjar.com、https://api.vatstack.com (EU VAT)、https://apiservices.iras.gov.sg。<br>iOSアプリ用(?)にhttps://api.appstoreconnect.apple.com と https://api.storekit.itunes.apple。<br>AI関係はhttps://api.iffy.com (AIコンテンツモデレーション)、https://api.helper.ai (AIサポート)、https://api.openai.com。<br>その他はhttps://api.easypost.com (shipping labels?)、https://api.sendgrid.com (email)、https://api.pwnedpasswords.com (haveibeenpwned)、https://api.worldbank.org (for purchasing power parity?)、https://api.dropboxapi.com (for “upload from dropbox”?)って感じかな。" userName="jvns" createdAt="2025-04-04T20:10:04" color="#785bff">}}

{{<matomeQuote body="普通の通販サイトにある400個くらいの外部パートナーに比べたら、かなりスッキリしてるよね。" userName="ricardobeat" createdAt="2025-04-04T21:45:35" color="#45d325">}}

{{<matomeQuote body="ほとんど間接的なものじゃないかな。Stripeだってクレジットカードを発行してるわけじゃないし、決済を処理してるわけでもない。クレジットカードネットワークと提携してて、それぞれのネットワークが世界中の銀行と提携してるんだよ。" userName="rafram" createdAt="2025-04-04T22:48:13" color="">}}

{{<matomeQuote body="Cookieの同意バナーで見るような、平均的なサイトと比較してるんだよ。管理画面を見てみると、ほとんどのECサイトが、自分のデータが共有される可能性のあるサードパーティを何百もリストアップしてる。これらはすべて直接的な統合で、フロントエンドかバックエンドのどっちかだよ。間接的なものじゃない。プロバイダーの下流の企業の許可を取る必要はないし。<br>[1]ほとんどの企業のコードベースは見れないから、これは統合の量を知る良い指標になる。" userName="ricardobeat" createdAt="2025-04-06T02:34:30" color="#ff5733">}}

{{<matomeQuote body="14年前にこのHNでローンチしたんだね。<br>https://x.com/shl/status/1908090697984426227/photo/1" userName="rmason" createdAt="2025-04-04T10:22:24" color="">}}

{{<matomeQuote body="Gumroadは初期のエンジニアにとって、スタートアップの株式の教訓になったな。創業当初からずっと見てたんだけど、2015年頃にうまくいかなくなって、ほとんどのチームが解雇された。投資家は大幅な割引で創業者に会社を売却。<br>創業エンジニアは職を失い、株式の価値はゼロになった。でも会社は存続してて、エンジニアは解雇されて株式を失ったのに、ビジネスは継続して収益を上げていた。創業者だけが会社の所有権を持って歩き去った。" userName="Aurornis" createdAt="2025-04-04T15:43:52" color="#ff5733">}}

{{<matomeQuote body="俺もその一人だった！2012年8月5日に入社して、0.5%の株式をもらったんだけど、ほとんどゼロになった。Sahilを恨んでる人はいないと思うよ。すごく楽しい職場だったし、親友や仕事のつながりもできた。人生とキャリアにとってプラスになった。Sahil/Gumroadがお金を稼いで成長してるのも別に良いんじゃない？13年間も頑張ってるんだから。" userName="tuhins" createdAt="2025-04-04T19:26:26" color="#45d325">}}

{{<matomeQuote body="友達が何年もスタートアップをやってたけど、うまくいかなくて、開発チームは全員辞めて株式も放棄した。その後、創業者は数百万ドルで買収された。<br>シリーズBかCの後に資金が尽きかけて、怪しい支出があったスタートアップもあった。数人を除いてみんな辞めた。創業者はメインの商品を格安でプライベートエクイティに売却。最後に残った資金で営業の人を雇って、フォーチュン500の企業にツールを売りまくって大儲けしてるらしい。" userName="jokethrowaway" createdAt="2025-04-04T17:24:57" color="#38d3d3">}}

{{<matomeQuote body="どうやって株式を全部失ったの？株式は無価値だって宣言できないはずだよ。新しいラウンドで評価額が変わって、前の投資家や従業員の株式が希薄化されるけど、自分たちの株式も希薄化されるはず。" userName="adrr" createdAt="2025-04-04T17:23:29" color="">}}

{{<matomeQuote body="株式を＂失う＂わけじゃなくても、実質的に無価値になることはあるよ。初期メンバーが受け取る＂株式＂は、(V)ESOP s = (仮想)従業員ストックオプションとかで、＂イグジットイベント＂が発生した時にしか実現しない。契約でイグジットイベントがどう定義されてるかによって、創業者が会社を非公開化（投資家からの撤退）すると、会社の価値が1ドルのイグジットイベントになることがある。" userName="hobofan" createdAt="2025-04-04T20:01:23" color="#785bff">}}

{{<matomeQuote body="マジかよ、ただの詐欺じゃん。もし本当にヤバかったんなら、クソみたいなパーセントを永遠に持ってるか、情に訴えられて1ドルで売るハメになるアホになるしかないね。" userName="beefnugs" createdAt="2025-04-05T18:36:51" color="">}}

{{<matomeQuote body="Googleで'drag along rights'を調べてみな。" userName="rahimnathwani" createdAt="2025-04-04T17:26:13" color="">}}

{{<matomeQuote body="＞エクイティを無価値だって宣言はできないよ。新しいラウンドで違う評価額をつけて、前の投資家とか従業員を希薄化させることはできるけど、自分たちも希薄化するじゃん。<br>投資家が会社を創業者に1ドルで買い戻させたんだよ。それってエクイティを無価値だって宣言するのとほぼ同じじゃん。" userName="Aurornis" createdAt="2025-04-05T03:43:38" color="#ff33a1">}}

{{<matomeQuote body="未公開株のエクイティって期限付きの場合が多いんだよね。もし期限までに流動性イベントがなかったら、会社が再発行しない限り消えちゃう。在職中の人にはたまにあるけど、元従業員にはほぼないね。" userName="bigtunacan" createdAt="2025-04-05T01:04:07" color="">}}

{{<matomeQuote body="元の議論スレッドはここだよ:<br>https://news.ycombinator.com/item?id=2406614" userName="ihowlatthemoon" createdAt="2025-04-04T10:31:00" color="">}}

{{<matomeQuote body="有料のリンク短縮サービスっていう最初の計画と、その逆のアプローチ（簡単に有料リンクアクセスを設定できるサービス）のメリットに関する面白い議論だね。Bitcoinが0.7セントだった頃に、決済方法としてBitcoinを追加することを議論してたんだ。" userName="occamschainsaw" createdAt="2025-04-04T14:56:54" color="">}}

{{<matomeQuote body="ここ笑っちゃった。<br>＞現在の約0.70ドル/Bitcoinだと、すべてのBitcoinが生成されたら、アメリカ人一人あたり約0.05ドルを電子ウォレットに持てることになる。世界の他の地域が全く参加せず、Bitcoinが均等に分配されると仮定して。<br>＞決済時にドルからBitcoin、Bitcoinからドルへの即時変換を想像することもできるし、より多くのコインを生成するbitcoin2.orgを想像することもできる。あるいは、Bitcoinの価値が大幅に上昇することを願うこともできる。<br>＞私はPaypalが残る方に賭けるけどね。<br>当時からBitcoinが0.70ドルのままっていうのはありえないって指摘されてたんだね。でも14年後に10万ドルになると信じてた人はいたのかな？<br>https://news.ycombinator.com/item?id=2407998" userName="spiderice" createdAt="2025-04-04T15:16:42" color="#ff5733">}}

{{<matomeQuote body="13年前に数百万ドルのプロジェクトを始めるために1日働いたんだ。それこそがリアルなバイブスだね。" userName="owebmaster" createdAt="2025-04-04T10:54:24" color="">}}

{{<matomeQuote body="知らない人もいるかもだけど、Sahilにとっていつも順風満帆だったわけじゃないんだよ。（Pinterestに留まっていれば、もっと楽な生活を送れたはず。）<br>https://news.ycombinator.com/item?id=37059594" userName="ignoramous" createdAt="2025-04-04T12:36:04" color="">}}

{{<matomeQuote body="確かPinterestをクビになったって言ってたよね？" userName="jatins" createdAt="2025-04-04T17:17:02" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="文句も多いけど、Sahilが言ってる面白い点も見てこうぜ！1. AI学習用Railsコードで5番目にデカいらしい。2. バウンティもあるし。ちょい額だけど、まあ良いじゃん。<br>Rails好きだし、AIツールが良くなるの期待してる。役に立つかは分からんけど、損はないでしょ。nextアプリはすぐ作れるけど、Railsは苦戦するんだよね。なんかコツあったら教えて！AI時代にバウンティがどう機能するかも気になる。AI使ってバウンティ荒稼ぎする人とか出てくるのかな？" userName="Multiplayer" createdAt="2025-04-04T16:01:40" color="">}}

{{<matomeQuote body="バウンティプラットフォーム（https://algora.io）運営してるけど、バウンティ立てた人がDevinみたいなAIで解決しようとしてたよ（@seveibarがライブ配信してた）。結果は全部失敗。300件以上のバウンティ（370万円相当）を達成したRustプロジェクトが、Algoraでバウンティを解決するAIコーディングエージェントを作ってる。面白いベンチマークになりそう。<br>これからどうなるか楽しみだけど、まだ全然そこまで行ってないね。" userName="irf1" createdAt="2025-04-04T19:14:58" color="#785bff">}}

{{<matomeQuote body="ChatGPTの世界なら、Laravelに乗り換えれば速攻で開発できるっしょ。" userName="jppope" createdAt="2025-04-05T05:25:35" color="">}}

{{<matomeQuote body="SHLさん、マジでオープンソースにしてよ！AGPLでも良いけど、MITライセンスが一番嬉しいな。お願い。" userName="Imustaskforhelp" createdAt="2025-04-04T12:11:09" color="">}}

{{<matomeQuote body="絶対にやらないでしょ。レバレッジと市場での優位性が無くなっちゃうもん。" userName="echelon" createdAt="2025-04-04T14:37:07" color="">}}

{{<matomeQuote body="コードじゃなくて、市場での立ち位置（リーダー）が彼らの強みなんだよ。" userName="deanc" createdAt="2025-04-04T19:07:23" color="">}}

{{<matomeQuote body="何か良いアイデアない？<br>別に気にしないけど、source availableにしてくれたのはマジ感謝。1億円の売り上げには届かないだろうけど、もし達成したら猶予期間が欲しいなーって思うよね。" userName="Imustaskforhelp" createdAt="2025-04-04T15:13:15" color="">}}

{{<matomeQuote body="ビジネスには制限が多すぎるライセンスだね。" userName="fbn79" createdAt="2025-04-04T10:37:03" color="">}}

{{<matomeQuote body="そうそう、オープンソースじゃないよね。OSDの5番目の項目に違反してるし。https://opensource.org/osd" userName="RobotToaster" createdAt="2025-04-04T10:48:05" color="">}}

{{<matomeQuote body="それってFree Softwareの定義にも違反してるから、フリーソフトじゃないんだよね[0]。<br>0. https://www.gnu.org/philosophy/free-sw.en.html" userName="snvzz" createdAt="2025-04-04T11:25:25" color="">}}

{{<matomeQuote body="だよねー。今までどっちにも当てはまらないライセンスってあったっけ？Free Software DefinitionとOpen Source Definitionは構造が違うけど、ほとんど同じ意味じゃん？" userName="Tomte" createdAt="2025-04-04T11:43:29" color="">}}

{{<matomeQuote body="OSDライセンスでFSDに合わないものはたくさんあるけど、フリーソフトのライセンスは必ずオープンソースだから、逆はありえないんだよね。" userName="desdenova" createdAt="2025-04-04T12:12:25" color="#ff5c5c">}}

{{<matomeQuote body="そういうライセンスの例ってマジで気になるんだけど。2つの定義の違いってどこにあるの？" userName="Tomte" createdAt="2025-04-04T12:47:41" color="">}}

{{<matomeQuote body="OPじゃないけど、ここに詳しく書いてあるよ。<br>https://news.ycombinator.com/item?id=43581484<br>NASA Open Source Agreementがそうみたい。" userName="lolinder" createdAt="2025-04-04T12:52:18" color="#45d325">}}

{{<matomeQuote body="ありがとう！" userName="Tomte" createdAt="2025-04-04T12:53:20" color="">}}

{{<matomeQuote body="OSDライセンスでFSDに違反するものはないはず。" userName="singpolyma3" createdAt="2025-04-04T12:36:17" color="">}}

{{<matomeQuote body="GNUが「非自由なオープンソース」ライセンスの例を載せてるよ[0]。<br>＞「オープンソース」って言葉は、フリーソフトとほぼ同じ意味で使う人もいるけど、厳密には違うんだ。restrictiveすぎるライセンスもあるし、フリーソフトとして認められてないライセンスもある。でも違いは小さいよ。非自由だけどオープンソースな例は少ない。<br>NASA Open Source Agreementがそうみたい。OSI[1]には認められてるけど、FSF[2]にはrejectされてる。<br>＞NASA Open Source Agreement, version 1.3は、変更が“original creation”であることを求める条項があるから、フリーソフトじゃないんだ。フリーソフトの開発はサードパーティのコードを組み合わせるから、NASAライセンスはそれを許してない。<br>[0] https://www.gnu.org/philosophy/categories.html<br>[1] https://opensource.org/license/nasa1-3-php<br>[2] https://www.gnu.org/licenses/license-list.html#NASA" userName="lolinder" createdAt="2025-04-04T12:47:46" color="#45d325">}}

{{<matomeQuote body="すべての“非自由なオープンソース”は解釈の違いだよ。NASAのケースを見て。Stallmanみたいに厳しく読んだら、OSDにも違反する。OSIの人は弁護士みたいに解釈してcompliantだと判断したんだ。今のOSIは違うかもね。明日のFSFは同意するかも。フリーソフトとオープンソースの違いじゃなくて、人間の解釈の違いだよ。" userName="singpolyma3" createdAt="2025-04-04T16:06:19" color="#ff5733">}}

{{<matomeQuote body="FSFと同じように読んだ場合、NASAの条項はOSDのどの点を違反するの？" userName="lolinder" createdAt="2025-04-04T16:44:16" color="#38d3d3">}}

{{<matomeQuote body="OSD 3<br>あと、もしかしたら9も？" userName="singpolyma3" createdAt="2025-04-04T22:04:44" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="えーと、OSD 3は派生作品が可能って言ってるだけで、第三者のソースコードを派生作品に組み込めるって言ってないじゃん。FSFの定義は、Freedom 1の重要な要素として、この自由を明確に要求してるよ。<br>> プログラムを修正する重要な方法の一つは、利用可能なフリーなサブルーチンやモジュールを組み込むことだ。もしプログラムのライセンスが、適切にライセンスされた既存のモジュールを組み込むことを許可しない場合ー例えば、追加するコードの著作権者であることを要求する場合ーそのライセンスはフリーとは言えないくらい制限が強すぎる。<br>[https://www.gnu.org/philosophy/free-sw.en.html#four-freedoms](https://www.gnu.org/philosophy/free-sw.en.html#four-freedoms)" userName="lolinder" createdAt="2025-04-05T01:33:21" color="#ff5733">}}

{{<matomeQuote body="ああ、どっちかっていうと定義的にはOpen Sourceってより“source available”だよね。AGPLとか使ってほしいな。" userName="arielcostas" createdAt="2025-04-04T10:42:25" color="">}}

{{<matomeQuote body="別の言い方すると、実際はOpen Sourceじゃないのに、Open Sourceって呼びたいんだね。" userName="graemep" createdAt="2025-04-04T10:44:51" color="#38d3d3">}}

{{<matomeQuote body="彼ら自身はOpen Sourceって言ってないと思うよ。HNの投稿者が（たぶん悪意なく）間違えたんじゃないかな。" userName="notpushkin" createdAt="2025-04-04T11:05:05" color="">}}

{{<matomeQuote body="創業者（founder）が言ってるよ。これ見て：<br>[https://x.com/shl/status/1908090697984426227](https://x.com/shl/status/1908090697984426227)" userName="ecedeno" createdAt="2025-04-04T11:19:09" color="">}}

{{<matomeQuote body="うわ、マジか :-(" userName="notpushkin" createdAt="2025-04-04T11:27:07" color="">}}

{{<matomeQuote body="誰かが自分と同じ定義に従わないからって間違いってわけじゃないよ。広く普及してる定義が2つあって、どっちも完全に正しい。もっと具体的に言いたければ“not OSI approved”って言えば、何について話してるのかより正確に反映できるし、そうしたくないなら、他の人がどう感じるか理解できるでしょ。" userName="gcau" createdAt="2025-04-04T20:24:17" color="#ff33a1">}}

{{<matomeQuote body="昔はもっと気にしてたけど、今はOpen Sourceって呼ぶかどうかよりも、後から条件が変わる方が問題だと思う。<br>Xでリリースをほのめかすのは、MatrixがApacheからAGPLにリライセンスして、ベンダーニュートラルなコミュニケーションプラットフォームじゃなくなったことよりはマシ。<br>Elementで働いてる人はAGPLのMatrix/Elementを使いたくないはず。だったら、昔からのユーザーや私みたいなコミュニティメンバーがAGPLで使いたいと思うと思う？<br>昔はOpen Sourceって言えば意味があったけど、今はライセンスとか、ライセンスの対象とか、リーダーシップとか、細かい情報が必要。" userName="benatkin" createdAt="2025-04-05T04:22:16" color="#ff5c5c">}}

{{<matomeQuote body="＞このライセンスに基づいてソフトウェアを使用できるのは、（1）あなたの会社の総収入が前会計年度に100万米ドル（2024年）未満、GMV（商品総額）が1,000万米ドル（2024年）未満の場合、または（2）あなたが非営利団体または政府機関である場合のみです。米労働統計局の都市消費者向け消費者物価指数（米国都市平均、全項目、季節調整なし、1982～1984年=100基準）に基づいて、インフレに合わせて収益基準を調整してください。”" userName="captn3m0" createdAt="2025-04-04T10:48:23" color="">}}

{{<matomeQuote body="個人ならなおさらだよね。" userName="WhyNotHugo" createdAt="2025-04-04T11:59:09" color="">}}

{{<matomeQuote body="ソースを参考に、もっとモダンな言語やフレームワークで何か新しいものを作ってみたら？" userName="ZeroTalent" createdAt="2025-04-04T10:45:47" color="#38d3d3">}}

{{<matomeQuote body="ライセンス条項的に、競合サービス作ってるならこのコード読まない方がいいかもね。" userName="rustc" createdAt="2025-04-04T11:28:50" color="">}}

{{<matomeQuote body="訴訟のリスクは限りなく低いと思うよ。" userName="ZeroTalent" createdAt="2025-04-07T08:19:32" color="">}}

{{<matomeQuote body="制限はあるけど、ひどくはないかな。<br>＞このライセンスでソフトウェアを使えるのは、(1)会社の年間総収入が100万ドル(2024年)未満、GMV(Gross Merchandise Value)が1000万ドル(2024年)未満、または(2)非営利団体か政府機関の場合のみ。”" userName="Timshel" createdAt="2025-04-04T10:46:25" color="">}}

{{<matomeQuote body="もし誰かがこのソフトを使って年間1000万ドルのGMVのビジネスを構築したら、Gumroadがどれくらいの分け前を要求するのか全く不明だね。" userName="handfuloflight" createdAt="2025-04-04T10:50:58" color="">}}

{{<matomeQuote body="そうだね。でも、そこまで行く前に、Gumroadと話し合う時間はあるんじゃない？" userName="Timshel" createdAt="2025-04-04T10:51:55" color="">}}

{{<matomeQuote body="ライセンスが重要になる頃には、ビジネスはプラットフォームを中心に構築されてるから、Gumroadが交渉で圧倒的に有利になるよね。彼らはこう言えるかもね。<br>・お前らはもう競合だ。ウチのソフト使うのやめろ(Gumroad.comで売ればいいじゃん、ヒント)。<br>・1年間、20%よこせ(来年はどうなるか知らないけど)。<br>・ライセンスはあげないけど、二束三文で買い取ってやるよ。" userName="eemil" createdAt="2025-04-04T11:24:42" color="#ff33a1">}}

{{<matomeQuote body="その時点で、コードを全部書き直すしかないから、Gumroadは何でも要求できる立場になっちゃう。" userName="rustc" createdAt="2025-04-04T11:26:02" color="#ff5c5c">}}

{{<matomeQuote body="クリエイターがユーザーに販売できるように設計されたeコマースプラットフォーム…らしい。<br>https://en.wikipedia.org/wiki/Gumroad" userName="_joel" createdAt="2025-04-04T10:54:03" color="">}}

{{<matomeQuote body="Androidのサポートをやめたから、俺もGumroadやめたわ。" userName="soco" createdAt="2025-04-04T10:59:49" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Webアプリで十分じゃん？Androidユーザーだけど、Gumroadで売ってるし。Webサイトにある機能しかないネイティブアプリなんてダウンロードしようと思ったことないよ。売上通知はメールに来るし、それが普通でしょ。" userName="rchaud" createdAt="2025-04-04T13:08:27" color="#45d325">}}

{{<matomeQuote body="このライセンス、最大100万ドルの収益までOKで、そこからピボットしてスタックを再構築できるってのがすごい。GumroadみたいなアプリのMVP作りたい人にはマジでゲームチェンジャーになるかも。MITライセンスが理想だけど、GPLの強制リリースモデルよりはこっちの方がいいな。" userName="shipscode" createdAt="2025-04-04T17:15:37" color="#785bff">}}

{{<matomeQuote body="動機ってなんだろうね？" userName="noname120" createdAt="2025-04-04T10:32:11" color="">}}

{{<matomeQuote body="Gumroadの道のりは面白いよね。<br><br>＞https://sahillavingia.com/reflecting “VCの支援を受けて数十億ドル規模を目指したけど、KleinerがGumroadに株を1ドルで買い戻させたことで、Sahilは会社を違う方向に導くことができた”<br><br>ソースを公開したのは、ワークカルチャーに関係があるのかもね。<br><br>＞https://sahillavingia.com/work" userName="verghese" createdAt="2025-04-04T11:02:06" color="#45d325">}}

{{<matomeQuote body="＞https://x．com/shl/status/1908146557708362188<br><br>全部ではないと思うけど、作者本人の意見。" userName="geenat" createdAt="2025-04-04T14:02:43" color="">}}

{{<matomeQuote body="彼は基本的に、倫理的に問題のある方法でトレーニングデータを入手している多国籍企業にコードを「寄付」してLLMをトレーニングさせてるってことに気づかざるを得ない。一方で、一般人や中小企業は自由じゃないライセンスに縛られてる。興味深い決断だね。" userName="spiffyk" createdAt="2025-04-04T14:58:39" color="#ff33a1">}}

{{<matomeQuote body="一般人がこのコードを使ってGumroadと直接競合する以外に何ができるのさ？" userName="s17n" createdAt="2025-04-04T20:56:45" color="">}}

{{<matomeQuote body="SahilはAIがソフトウェアを大幅にコモディティ化すると予想してる。特にDeepSeekの影響を受けて。彼はDevinをTwitterで宣伝してるし、Gumroadを従来のオープンソースeコマースプラットフォームに代わる、クリエイター向けの主要なプラットフォームとして位置づけようとしてるんじゃないかな。" userName="jslakro" createdAt="2025-04-04T11:58:31" color="#38d3d3">}}

{{<matomeQuote body="ブログ記事を探したけど見つからなかった。でもAntiworkのGithubプロファイルにはこう書いてある。<br><br>＞Antiworkは、繰り返しのタスクを自動化するというGumroadのミッションから生まれた。2025年、Gumroadの運営とスケールに役立ったツールスイート全体をオープンソース化するという大胆な一歩を踏み出す。強力な自動化を誰でも利用できるようにしたいと考えている。<br><br>マジか！Gumroadのシンプルさが好きだったんだよね。これで「Gumroadのオープンソース代替」を探してる人にとって、かなり魅力的な選択肢になるね。" userName="turnsout" createdAt="2025-04-04T10:24:00" color="#ff33a1">}}

{{<matomeQuote body="マジか、subredditのことかと思ったわ。" userName="ge96" createdAt="2025-04-04T14:52:15" color="">}}

{{<matomeQuote body="要はタダ働きってことじゃん。" userName="Brosper" createdAt="2025-04-04T10:29:01" color="">}}

{{<matomeQuote body="Rails製なんだ!" userName="psnehanshu" createdAt="2025-04-04T10:20:02" color="">}}

{{<matomeQuote body="確かSahilが、Railsは技術的負債だって考えてて、いずれ移行するって言ってた気がする。" userName="niklasbabel" createdAt="2025-04-04T10:39:26" color="">}}

{{<matomeQuote body="マーケティングのための炎上商法？" userName="omnimus" createdAt="2025-04-04T11:05:58" color="">}}

{{<matomeQuote body="技術的負債って、最近よく聞くよね。" userName="taylorportman" createdAt="2025-04-04T11:49:50" color="">}}

{{<matomeQuote body="フレームワークの選択と技術的負債はあんまり関係ないと思うけど。注目集めるために言ってるんじゃない？" userName="omnimus" createdAt="2025-04-04T12:41:25" color="">}}

{{<matomeQuote body="004_constants.rb:<br>=====================<br>DENYLIST = %w[ ... ladygaga kanye kanyewest randyjackson mariahcarey atrak deadmau5 avicii prettylights justinbieber calvinharris katyperry rihanna shakira barackobama kimkardashian taylorswift taylorswift13 nickiminaj oprah jtimberlake theellenshow ellen selenagomez kaka ....].freeze<br>ポップカルチャーの重要人物リストって感じ。" userName="itsthecourier" createdAt="2025-04-04T19:01:36" color="#785bff">}}

{{<matomeQuote body="厳しいライセンスがあるのに、このオープンソースって意味あるの？" userName="prakashn27" createdAt="2025-04-04T12:56:44" color="">}}

{{<matomeQuote body="オープンソースの定義をまた変えようとしてる、ずさんで雑なマーケティングだよ、残念ながら。" userName="DetroitThrow" createdAt="2025-04-04T12:59:07" color="">}}

{{<matomeQuote body="マジで冗談みたいなライセンスだな。これ、オープンソースじゃねーじゃん。VC界隈のやつらってマジでオープンソースの定義変えようとしてんの？頭おかしいんじゃねーの？" userName="udev4096" createdAt="2025-04-04T13:05:05" color="">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
