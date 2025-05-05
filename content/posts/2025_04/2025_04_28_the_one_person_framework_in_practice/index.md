+++
date = '2025-04-28T00:00:00'
months = '2025/04'
draft = false
title = '一人フレームワーク 実践したらどこまでできた？'
tags = ["個人開発", "Web開発", "プログラミング", "開発手法", "効率化"]
featureimage = 'thumbnails/red1.jpg'
+++

> 一人フレームワーク 実践したらどこまでできた？

引用元：[https://news.ycombinator.com/item?id=43826584](https://news.ycombinator.com/item?id=43826584)




{{<matomeQuote body="Railsは未経験だけど、Djangoで似た経験あるよ。フルタイムで働きながら、個人でいくつかアプリ運用してるんだ。<br>一番大きいのはビューが約250（80は管理系）で、中規模企業のERPレベル。主要機能はたった1ヶ月で本番リリースできた（その時はフルタイムじゃなかった）。企業チームだと2年かかるって友達と試算したよ。<br>月100万～200万PVあるけど、よく見られるページはキャッシュしまくりで負荷は低い。django-distillで静的化してCloudflareで配信したりもしてる。<br>シンプルに保つのが鍵。RESTとか重いフロントエンドFWは避け、ほとんどBootstrapベースの普通ので十分。JSは必要なとこだけ。今はAlpineJS/HTMX使ってるよ。" userName="kukkeliskuu" createdAt="2025/04/29 08:08:18" color="#ff5733">}}




{{<matomeQuote body="Rubyはそんな好きじゃないけど、仮にRailsがDjangoより優れてるとしても、PythonじゃなくてRubyエコシステムに投資するのは難しそうだな。今、記事書いた人（OP）と似たようなことDjangoでやってるよ。" userName="mrits" createdAt="2025/04/29 13:14:45" color="">}}




{{<matomeQuote body="バックエンドWeb開発以外のドメインで広く使われてないことかな。Pythonはデータ分野の共通語になりつつある。Rubyエコシステムは良いけど、Pythonほどじゃないんだよな。" userName="pphysch" createdAt="2025/04/29 16:35:57" color="">}}




{{<matomeQuote body="もちろん人それぞれだけど、Rubyエコシステムが素晴らしいって反論するわけじゃないよ（2008年当時はそう思ってたけどね）、Python’sのたくさんあるパッケージマネージャーのこと考えると、エコシステムを”素晴らしい”とは言えないかな。あの言語を使わなきゃいけないときに気が滅入る主な理由の一つだよ。改善しようとする動きはたくさんあるけど、まだあちこちに散らばってる感じだね。" userName="turboladen" createdAt="2025/04/29 20:09:35" color="">}}




{{<matomeQuote body="今やPython開発者はみんな”AI開発者”で、普通のバックエンドPython開発者を見つけるのにAI税を払わなきゃいけないんだ。その点、規模は大きいけど流行りから外れた市場のRuby（や.NET）開発者は、かなり比較安価で手に入るのが嬉しいボーナスだよ。" userName="skeeter2020" createdAt="2025/04/29 16:59:15" color="">}}




{{<matomeQuote body="Django/FastAPI開発者限定で求人出してみた？ 個人的にはそういう求人たくさん見たことあるけどね。Ruby≈Railsだけど、Python＞＞Djangoって感じだよ。" userName="pphysch" createdAt="2025/04/29 17:47:41" color="">}}




{{<matomeQuote body="僕はPythonとDjango開発者だけど、”AI”なんてやりたくもないよ。自分が経験豊富で得意なことをやる方が好きだな。僕だけじゃないはずだ。" userName="graemep" createdAt="2025/04/30 14:17:13" color="">}}




{{<matomeQuote body="この前の週、EhimeであったRubyKaigiで、Ruby作ったMatzが”AI時代のプログラミング言語”について発表したんだって。キーノートで、RubyがAI時代にどう活躍できるか、簡潔さ、表現力、DSLsでの拡張性から話したらしいよ。まだオンラインで発表は見れないけど、Matzが何を言ったのか楽しみだな。" userName="psadauskas" createdAt="2025/04/29 16:36:22" color="">}}




{{<matomeQuote body="RubyにはAIライブラリあるよ。あとさ、AI界隈の重い処理は全部C++ライブラリがやってて、RubyはC++と連携するFFIが優秀なの忘れないでね。それにほとんどのアプリ開発者はどうせweb APIsと繋いでるだけだし。どっちにしても大丈夫だよ。" userName="dismalaf" createdAt="2025/04/29 16:18:05" color="">}}




{{<matomeQuote body="フレームワークじゃなくて人が大事だよ。一般的なフレームワークの無駄がいやで、小さいプロジェクト用にPythonで自分でフレームワーク作った経験があるんだけど、自分のスタイルに合わせてたからすごく時間とコストが節約できたんだ。一人開発なら、何を使ってもそんなに大差ないと思うな、楽しんでる限りはね。生産性分析なんて、個人的な意見だよ。" userName="alankarmisra" createdAt="2025/04/29 08:28:37" color="#45d325">}}




{{<matomeQuote body="出会い系サイトのPlentyOfFishって、一人で世界トップクラスまで育てて、match.comの親会社に1億ドルで売ったらしいよ。C#/.NETで書かれてたんだって。ほら、どの言語でもできるんだよ。" userName="loandbehold" createdAt="2025/04/29 17:56:48" color="#ff33a1">}}




{{<matomeQuote body="記事すごく良かった。RailsとかPhoenixみたいな従来のフレームワークは素晴らしいけど、10年以上フレームワーク作ってきた経験から言うと、時には合わないこともある。今のプロジェクトでClojureを使ってるのは、それが問題空間に合ってるからなんだ。4ヶ月ドメイン”shaping”に時間かけたりして、まだWebページはないけどMVPへの道筋が見えてきたよ。どんなフレームワークや技術を選ぶかは、プロジェクトによるってことだね。" userName="jhancock" createdAt="2025/04/29 03:36:25" color="#ff33a1">}}




{{<matomeQuote body="Clojureの話が出たの面白いね、「一人フレームワーク」って見たとき、すぐにBiffのこと思い出したよ。Biff（ClojureのWebフレームワークで、Railsとは比べ物にならない感じだけど）は使ったことないんだけど、作った開発者のThe Replの回がすごく良いんだ。プログラミングがいかに楽しくてクリエイティブかを思い出させてくれるインタビューの一つだよ。" userName="chamomeal" createdAt="2025/04/29 03:55:54" color="">}}




{{<matomeQuote body="興味ある人のために：Episode 48 ね。 https://www.therepl.net/episodes/48/" userName="SatvikBeri" createdAt="2025/04/29 05:27:37" color="">}}




{{<matomeQuote body="ドキュメント見てみたんだけど、認証がマジックリンクだけっていうフレームワークにすぐ引いちゃったよ。聞こえるほど制限的じゃなくて、違うことやるのに苦労しないといいんだけどな。引用されてる部分読むと、MailerSendとかRecaptchaの設定まではコンソールに出るみたい。" userName="graemep" createdAt="2025/04/30 14:21:56" color="#ff5c5c">}}




{{<matomeQuote body="Clojure選んだ一番の理由は楽しさだったな。" userName="jhancock" createdAt="2025/04/29 04:15:40" color="">}}




{{<matomeQuote body="アメリカ人だけど、その綴り見たことないし、公式な綴りって証拠もあんまり見つからないんだよね。なんでそう結論付けたのか気になるな。”Stymy”はMerriam-WebsterにもOEDにも載ってないよ。WiktionaryとDictionary.comには”variant”か”alternative”な綴りとして載ってるけど、それがアメリカ英語だって示唆はないんだ。（リンクは省略するね）" userName="bruckie" createdAt="2025/04/29 13:25:40" color="#ff5c5c">}}




{{<matomeQuote body="Google検索の結果をいろいろ見てたら、collinsdictionary.comにはそれがアメリカ英語って書いてあったんだ。Google検索じゃなくてchatgptを信じとけばよかったよ。" userName="fkyoureadthedoc" createdAt="2025/04/29 14:22:17" color="">}}




{{<matomeQuote body="この10年（かそこら）Rails Worldから遠ざかってた人のために言うと、去年の最後のカンファレンストークでOne-Person Frameworkってテーマで話したんだ。Rails 7+がどうソロ開発者でも野心的なアプリを作るのに役立つかって実際の事例を紹介したよ。（リンクは省略するね）" userName="searls" createdAt="2025/04/29 04:09:41" color="#ff5733">}}




{{<matomeQuote body="searlsさんのリンクから引用すると、<br>”講演は私の1年間の仕事をまとめたものだけど、ユーザーグループや地域のカンファレンスで話し始めてからの15年間で人生が教えてくれた数えきれない小さなことも含んでる。”<br>”でも、私の人生のこの章はこれで終わったんだ。他のことに進むのが楽しみだよ。”<br>ってことだよ。" userName="SirSavary" createdAt="2025/04/29 20:19:47" color="">}}




{{<matomeQuote body="今、AdonisJSっていうのを使ってアプリを作ってるんだ。Railsっぽい使い心地だけどnodeで動くって宣伝されてるよ。<br>Rails、Adonis、それからFiber（Goの”フレームワーク”）を比較した結果、Adonisに落ち着いたんだ（主にnodeのエコシステムとタイプセーフティが理由かな）。<br>今のところすごくいい感じだし、作者のチュートリアル動画シリーズがすごく分かりやすくて、すぐに慣れると思うよ。ドキュメントもいいんだ。<br>LLMは古いバージョンで混乱することがあるから、それは注意した方がいいね。（リンクは省略するね）" userName="hi_hi" createdAt="2025/04/29 05:49:22" color="#785bff">}}




{{<matomeQuote body="公式の認証システムがないのがちょっと嫌だったんだよね。例えばPhoenixだといいスタート地点を用意してくれてる（近いうちにmagic linksも）。Adonisはいろいろ機能があるけど、私が苦手な方に向けられちゃうんだよ。JSの認証実装のことね。" userName="dimitrisnl" createdAt="2025/04/29 10:18:29" color="">}}




{{<matomeQuote body="authってマジ大変だよねー。Adonisのauthとかbouncerは結構うまくまとめてるけど、他のjsみたいにまだちょっとイマイチなとこもあるんだ（ドキュメントとか動画は役に立つけどね）。Elixir／Phoenixは使ったことないけど、みんなおすすめしてるし、ちょっと触ってみようかなって思った。" userName="hi_hi" createdAt="2025/04/29 11:24:33" color="">}}




{{<matomeQuote body="公式のauthパッケージとかあったっけ？覚えてないや。adoniscastsの動画見ろって言われたけど、あれ有料のもあるんだよね。これだと広まるの難しそうじゃね？" userName="dimitrisnl" createdAt="2025/04/29 14:21:53" color="">}}




{{<matomeQuote body="「AdonisJS ships with a robust and secure authentication system you can use to log in and authenticate users of your application. Be it a server-rendered application, a SPA client, or a mobile app, you can set up authentication for all of them.」ってドキュメントに書いてあるよ。" userName="banashark" createdAt="2025/04/29 19:52:42" color="#38d3d3">}}




{{<matomeQuote body="ログインとか登録とかリセットとか、そういうページは自動で作ってくれないんだよね。コントローラーもなし。用意されてるのは基本的なミドルウェアだけだよ。" userName="dimitrisnl" createdAt="2025/04/30 07:33:27" color="#45d325">}}




{{<matomeQuote body="実は今度出すアプリ作ってるんだけどさ。Railsで全部自分でやってるんだ（ロゴデザインとか友達のUX意見以外ね）。しかもHotwire Native使ってモバイルアプリも作ってるんだよ。RailsとHotwire Nativeの普通のRails構成で、Webアプリ＋モバイルアプリ2つ（iOSとAndroid）を一人で作ってるんだ。Railsって今こんなに何でもできんのかってびっくりしてる。" userName="xutopia" createdAt="2025/04/29 01:57:42" color="#ff5733">}}




{{<matomeQuote body="RubyにもTypeScriptみたいにみんなが使う型システムがあればいいのにって思うわ。プロジェクトがデカくなると、型がないのってマジで辛いんだよね。SorbetとかRBSは悪くないけど、TypeScriptには全然及ばない感じ。" userName="AstroBen" createdAt="2025/04/29 02:25:21" color="#ff33a1">}}




{{<matomeQuote body="コード書かない人に、どの言語選ぶ？って聞かれた時に型の話をどう説明するかというと、「規模が大事」って言うのが一番だね。動的型は小さい規模だと超柔軟だけど、デカくなるとすぐカオスになる。逆に静的型は小さいとちょっと面倒で制約ある感じだけど、デカくなると頑丈でちゃんと構造化されるんだよ。" userName="sota_pop" createdAt="2025/04/29 02:54:01" color="#ff5733">}}




{{<matomeQuote body="コードの規模とかチームの大きさって意味なら…そうだね…型はそういう時に役立つ。でも小さいコードベースでチームも小さいなら、型なくても全然うまくやれるよ。俺はRailsアプリで、違うチームがコンポーネントごとのドメイン担当するみたいな場合に型がめっちゃ役に立つなって思ったんだ。人数少なくてコードベースも小さいなら、そこまでメリット感じないかな。" userName="xutopia" createdAt="2025/04/29 03:52:24" color="#ff5733">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="全部頭に入ってるなら、型っていらないんじゃね？って思うかも。でも大きいプロジェクトだと、それってほぼ無理なんだよ。" userName="sethammons" createdAt="2025/04/29 08:38:38" color="#785bff">}}




{{<matomeQuote body="言いたいことはわかるけど、大規模なコードベースでも問題になったことないんだよね。SorbetとかRBSは面倒だったな。ああいうの使うと開発めっちゃ遅くなるんだよ。言語に組み込まれてたらよかったなって思うけど、なくても全然いいんだ。ただ規約に従うだけでめちゃくちゃ上手くいってるからさ。" userName="xutopia" createdAt="2025/04/29 02:44:38" color="">}}




{{<matomeQuote body="いや、もう静的型付けなしには戻れないね。自信を持ってリファクタリングできる速さと、ツールが改善されるのが一番大きいよ。Basecampはなしで上手くやれるって証明したけど、他のほとんどのRailsカンパニーが結局静的型付けに移ったのにはちゃんとした理由があるんだ。" userName="AstroBen" createdAt="2025/04/29 13:36:39" color="#38d3d3">}}




{{<matomeQuote body="Jake ZimmermanがSorbetの現状について書いた、このブログポスト[1]は最高だよ。Sorbetの最近の構文変更には感動したし、それ以上にRuby VMでコードコメントを利用可能にしようっていう提案に驚いたんだ。そうなればSorbetはrbs-inlineコメント構文をランタイムチェックと静的解析の両方に使えるようになる。だから、これに関しては道が開けてきてるみたいで、すごくワクワクするね。1. https://blog.jez.io/history-of-sorbet-syntax/" userName="Lio" createdAt="2025/04/29 08:11:59" color="#785bff">}}




{{<matomeQuote body="このプレゼン/記事、すごく良いね、シェアしてくれてありがとう。他では見てなかったからさ。個人的にSorbetを使わない理由は、サポートしないことでRubyの特定機能（特に”prepend”とRefinements）を”悪い”って決めつけようとしてる所なんだよね。Refinementsは見たことないけど、”prepend”はめちゃくちゃ使うんだ。意見は尊重するけど、自分が便利だって知ってるツールを使っただけでダメ出しされるツールは使いたくないんだ。Goみたいなアドホックなインターフェースとか、もっとduck-typingをサポートしてくれたら最高なのにな。Sorbetが”言われた通りに継承しろ”って感じに見えるのは、俺の経験からするとRubyで良いものを作るやり方とは違うんだよね。SorbetとRBSの今後には注目してるよ！" userName="julik" createdAt="2025/04/29 21:11:20" color="#ff33a1">}}




{{<matomeQuote body="だって、Rails側で静的型付けのサポートがしっかりしてる方が良いからだよ。" userName="AstroBen" createdAt="2025/04/29 18:44:23" color="">}}




{{<matomeQuote body="ちょっと気になるんだけど、なんで？JavaとかC++、Haskellみたいに100倍速くなるなら静的型付けも好きだけど、単にそれだけのために？" userName="dismalaf" createdAt="2025/04/29 20:11:46" color="">}}




{{<matomeQuote body="俺はリファクタリングの時に一番価値を感じるかな。" userName="AstroBen" createdAt="2025/04/29 20:55:37" color="">}}




{{<matomeQuote body="自分のアプリはRailsとHotwire/Stimulusで始めたんだけど、正直、JS多めの選択肢より断然生産性を感じてるよ。Railsの世界だと何もかもがすごくいい感じに連携するんだ。" userName="xutopia" createdAt="2025/04/29 03:50:04" color="">}}




{{<matomeQuote body="正直に言うと、`Rails`は色んな意味で`Django`より優れてるかも。`Hotwire`とか新しいSOLIDなキャッシュ/キュー、`turbo-native`とかね。でも、俺はやっぱり全体の`python`エコシステムの方が好きなんだ。" userName="siliconc0w" createdAt="2025/04/29 15:05:50" color="">}}




{{<matomeQuote body="君は自分に十分な評価をしてないし、`Rails`に評価を与えすぎだと思うよ。似たアプローチを`PHP`でやってる開発者を知ってるし、俺の親戚は`node.js` + `react`で一人会社をやってる。うちの会社は`Python`で動いてるよ。大事なスキルは、必要な役割全部をこなせる良いジェネラリストであること。どんな技術スタックでも、たいていの小規模ビジネスニーズなら自動化できるから、そこに費やす時間を減らせるはずだよ。" userName="jokethrowaway" createdAt="2025/04/29 05:40:09" color="">}}




{{<matomeQuote body="同意。開発スピードはよく知られたフレームワークが最強だよ。あと、その言語でどれくらい経験があるかも考慮する必要があると思う。新しい言語はすぐ覚えられる人が多いけど、実際の経験があるのとは違うからね。職場で誰かが`Rust`でマイクロサービスを始めたんだけど、彼らは`Rust`に詳しかったし「速くできるだろう」と思ったらしい。でも、基本的な依存関係とかデプロイ、監視、デプロイ可能にするのに少なくとも半分以上の時間を格闘してたよ。これがスタートアップだったら、`PMF`に費やすべきだった時間を大幅に浪費したことになるね。" userName="throwawax295" createdAt="2025/04/29 11:44:30" color="#38d3d3">}}




{{<matomeQuote body="フレームワークってそこまで重要かな？何でもいいから人気のあるのを選べば、助けてくれる人がたくさんいるでしょ。俺はもう11年くらい`Laravel`を使ってるけど、嫌いだけど動き続けてるから書き直したい衝動は抑えてるよ。開発が特別遅いってことはないと思う。大変なのはビジネス側のことだよ。" userName="hdjrudni" createdAt="2025/04/29 07:37:28" color="">}}




{{<matomeQuote body="それはすごく重要だよ。俺が一人でビジネスを回すのに成功したのは`Laravel`のおかげだと思ってるんだ（`Rails`に影響されてる）。高レベルなビジネス目標をサポートするように設計された「全部入り」フレームワークだと、考えることや書くコードがすごく減るんだよね。以前は`Flask`みたいな基本的な`Python`フレームワークで10年以上アプリ書いてたけど、基本的な機能を実装するのにずっと多くの時間をコード書くのに費やす必要があった。もう一つ複雑さを劇的に減らすのは、バックエンドとフロントエンドが単一のコードベースにあること。`Rails`では`Turbolinks`で、`Laravel`では`Livewire`で実現されてる。これでコードの複雑さが少なくとも2倍は減るよ（実際には何年かのメンテで複合的に10倍くらいシンプルになる感じ）。" userName="myflash13" createdAt="2025/04/29 08:25:46" color="#ff5c5c">}}




{{<matomeQuote body="`PHP`開発者として言うと、正直`Laravel`で生産的かは微妙なんだよね。仕組みをちゃんと理解しないと難しいから。生産的な人が多いのは知ってるけど、俺はライトなフレームワークとORMの方がずっと扱いやすいと思う。完全に`Laravel`を諦めたわけじゃないけど。<br>エコシステムの移り変わりが激しすぎだし、色んなものがどう繋がってるかが分かりにくいから、使うたびに初心者気分になるんだ。`Volt`はマジひどい。はっきり言うけど、マジひどくて何も良いところを追加してない。関心の分離があったのに、`Livewire`でバックエンドロジック、`Alpine JS`でフロント、そして今はまたビューに全部入り。3つのオプションを繋ぎ合わせたフランケンシュタインみたいだ。良くてもただの変化だし、悪く言えば、デプロイを「複雑」にして有料サービスに誘導しようとしてるんじゃないかと思うよ、その複雑さを管理するために売り出されてるんだから。<br>仕組みがどう繋がってるかのせいで、バグも入りやすくて見つけにくいことが多い。`Filament`は良い技術だと思うけど、`Laravel 12`と`Volt`で`Filament`を使う時にたくさん問題があったよ。大きなインピーダンスミスマッチがあって、新しいアプリなのに管理ページに移動した時にレイアウトが突然壊れた理由を見つけ出すのは全然楽しくなかった。そんな経験をするべきじゃない。どう繋がってるかは明確であるべきなんだ。<br>あと、俺は`Laravel`エコシステムの専門家じゃないけど、問題が起きた時に、”エキスパート”を名乗る他の人たちに`Laravel`の仕組みを説明しないといけなかったことがある。彼らが偽物のエキスパートなんじゃなくて、`Laravel`を知るのがそれだけ難しいんだと思う。`OOP`の魔法みたいな文字列や動的な呼び出しがたくさんあって、コードがどう実行されるかについてみんな推測するしかなかったんだ。それで結構進めるかもしれないけど、運悪く問題にぶつかると、分かりにくい（でも長文の）ドキュメントと格闘して、なぜ特定のバグが起きているのか見つけ出す羽目になるんだ。" userName="Capricorn2481" createdAt="2025/04/29 17:33:30" color="#ff5733">}}




{{<matomeQuote body="これらの理由で、俺は`Psr4`オートローダー付きのルーターを自分で手書きしたよ。それでプロジェクトはうまくいってる。ほとんどのクライアントは`Laravel`とか特定のものを求めてなくて、ただビジネスロジックが動くことを求めてるんだ。" userName="bhu1st" createdAt="2025/05/03 06:39:48" color="">}}




{{<matomeQuote body="`Volt`/`Mix`がひどいってのは同意だね、でも俺は最初に設定したきり触ってないから、日々の作業では気にならないかな。フレームワークをハックしたりその魔法を知る必要は避けようとしてるんだ。オピニオンテッドなフレームワークの要点は、ただ彼らのやり方でやるってことだからね。これが俺には95%の時間はうまくいってる。標準的じゃないことをする必要がある数少ない時は、時間をかけてハックするのは構わないよ。君（コメント1088の人）は一つのプロジェクトを長年メンテするより、`Laravel`で新しいプロジェクトをたくさん作ってる感じがするな。" userName="myflash13" createdAt="2025/04/30 13:39:53" color="#785bff">}}




{{<matomeQuote body="`PHP`から`Ruby`（と`Rails`）に移った時、プログラミングがどれだけ楽しいか知ったよ。`Ruby`はただ、開発者の幸せっていう正しいことを最適化してるんだ。" userName="Maledictus" createdAt="2025/04/29 07:58:23" color="">}}




{{<matomeQuote body="それを何年も聞いてるけど、俺には全然理解できないな。魔法だらけじゃん。テストのアサーションとかテストライブラリは、全部DSLで別の学習プロセスが必要だし、 inconsistent なチェインで戻り値の型も inconsistent だ。言語の何でも上書きできるせいで、ユニコードの空白が未定義関数と解釈されるみたいなことが起きる。メソッド名も組み合わせて定義できるから、「my_func_that_is_cool」が実際にはmy_funcとthat_is_coolを組み合わせて複数ファイルで定義されてる、みたいな。こういうの`Chef cookbooks`でよく見たよ。`Ruby`はテストの山が必要（だからDSLがあるんだね）。`Ruby`を知ってること、`Rails`を知ってること、テストのやり方を知ってることは全部別だよ。俺は`Ruby`（と`Rails`）に喜びじゃなくてフラストレーションを感じる。魔法の反対は`Go`だね。俺は`Go`が大好きだよ。テストはただのコードで、魔法は必要ないし、モックもいらない。メソッドは素直だし使い方も一貫してる。コードは追いやすい。型があるから全てがより明確で追いやすいし、メンテしやすいね。俺は`Go`が組織の幸せにつながると思う。チームが生産的に一緒に働けるようになるからね。" userName="sethammons" createdAt="2025/04/29 08:34:50" color="#785bff">}}




{{<matomeQuote body="あなたは既に決めているし、あなたの経験や感情は有効だから、説得しようとは思わないよ。プログラミング言語は人それぞれ合うものが違うと思うし、ここに悪い選択はないね。この記事を読んでいて、Rubyを検討している他の誰かのために、いくつか言っておくことがあるよ。<br>1. いや、Rubyに魔法はないけど、柔軟性とメタプログラミングはある。魔法に見えるものは全部Rubyの構文で許されてて、いくつかのメタプログラミング機能に辿れるんだ。最初見た時は理解するの難しいかもしれないけど、ちゃんとRubyを理解すれば、その”魔法”もわかるようになるよ。<br>2. RSpecの代わりにMinitest（Railsのデフォルトのテストフレームワーク）を使うこともできるし、Minitestはアサーションのためのメソッドがいくつかあるだけの普通のRubyコードだよ。<br>3. モックはテストの重要な一部だ。<br>4. どんなプログラミング言語でも、言語に関係なく、コードを書くこととテストを書くことは違うんだ。テストフレームワークは、テストケースを実行可能なテストに変換するための抽象化にすぎないよ。" userName="gls2ro" createdAt="2025/04/29 17:26:40" color="#785bff">}}




{{<matomeQuote body="特定のフレームワークの”マジック”を批判する人がいるの、いつも面白いなって思ってた。結局のところ、ほとんどすべてのプログラミングは”マジック”（だってほとんど抽象化だもん）だし。非”マジック”がどこで終わって”マジック”が始まるかなんて、明確な区別はないだろうにね。<br>でも、誰もGCを使う代わりに`malloc`/`free`が必要じゃないこととか、`fetch`が自動でDNSクエリしてくれることには文句言わないんだよな。<br>そして、それこそまさに_なぜ_俺がフレームワークやライブラリを使う理由なんだ。低レベルなコードを書かなくて済むように、または誰かが言うかもしれないように、”マジック”を使うためにね。" userName="Lukas_Skywalker" createdAt="2025/04/29 20:04:02" color="#38d3d3">}}




{{<matomeQuote body="マジックは単なる抽象化じゃないんだよ。Rubyのマジックはメタプログラミングとか、可能な限り挙動を暗黙的にすることに傾倒してる傾向がある（これ文化的なもんなんだけど）。書くのは楽しいけど、デバッグはマジ地獄になる原因になるね。" userName="AstroBen" createdAt="2025/04/29 22:10:14" color="">}}




{{<matomeQuote body="Rubyのマジックはマジで大嫌いだけど、正しいタイミング、正しい目的のために正しいことをする、っていう側面は認めざるを得ない。特にRailsが使うマジックなんかはそうだね。<br>個人的には、あれを扱うのは無理。完全にイライラする。システムが何やってるかドキュメントがないし、コミュニティの誰も自分のコンピューターで一体何が起きてるか、かすりとも分かってないみたいに見える。でも、特定のニッチなユースケースで何かをオーバーライドする必要がある時以外は、ちゃんと動くし、うまく動くってことは否定できないよ…。" userName="marcosdumay" createdAt="2025/04/29 19:19:26" color="">}}




{{<matomeQuote body="多分それはPHPが7より前だったら真実だったかもね。俺にとって、PHPは意味が通じる。一方Rubyは、バラバラにされた本をランダムに貼り合わせたものを読んで人間の言葉を学んだ宇宙人が作ったみたいに感じる。" userName="TiredOfLife" createdAt="2025/04/30 11:01:17" color="">}}




{{<matomeQuote body="もしそれが嫌なら、自分を苦しめるのはやめなよ…。ビジネスケース作って切り替えるべきだ。開発者の生産性は大事なことだぞ。" userName="alpha_trion" createdAt="2025/04/29 15:04:09" color="">}}




{{<matomeQuote body="開発者の生産性は過大評価されてる。<br>何十億人もの人々が遅いWebアプリに付き合わされて、合計で何百万年も人生を無駄にしてるのは、たった数人の開発者が数時間作業をラクするためだ。<br>開発者がエンドユーザーの生産性より自分の生産性を高く評価するのをやめれば、世界のホワイトカラーの生産性は即座に10-20%向上するだろうね。" userName="gamblor956" createdAt="2025/04/29 16:32:10" color="#ff5c5c">}}




{{<matomeQuote body="かなりたくさんのRuby Webアプリで仕事したし、自分でもいくつか作ったけど、Ruby自体が十分なパフォーマンスを発揮できなくて困ったケースは3%くらいだったかな。じゃあ残りのユーザー生産性はどこで失われたかって？ 조직의 기능 부전（組織の機能不全）だよ。<br>これはWebアプリの話だから、ユーザーがランタイムとか依存関係をインストールする必要はなかった。それはまた全然別の話（少なくともスクリプト言語全般にとっては、そんな楽しい話じゃないね）。" userName="julik" createdAt="2025/04/29 21:22:27" color="#38d3d3">}}




{{<matomeQuote body="ユーザー自身が全体的に効率悪いことを要求する例も見つけられるだろうって思うと、これ面白いね。でも、どんなプログラミング言語でも、そしてプログラミング言語に関係なく、コードを書くこととテストを書くことは違うんだ。テストフレームワークは、テストケースを実行可能なテストに変換するための抽象化にすぎないよ。" userName="charlie0" createdAt="2025/04/29 17:02:55" color="">}}




{{<matomeQuote body="conventions over configurationsみたいな開発スピードでRuby on Railsと比べて遜色ないって主張できる他のフレームワークってある？ Ruby学びたくないから聞いてる。" userName="connectsnk" createdAt="2025/04/28 23:46:04" color="">}}




{{<matomeQuote body="ここで.NETが比較対象になるのか気になるなー．RailsとかASP.NETの経験は少ないけど，どっちもやれること多そうだし．でもRails開発者と.NET開発者ってあんまり被ってなさそうだよね．" userName="mmillin" createdAt="2025/04/29 01:14:05" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Elixir Phoenixだって．<br>https://x.com/whizzaf/status/1916541502408323313" userName="irf1" createdAt="2025/04/29 01:43:26" color="">}}




{{<matomeQuote body="一番近いのはDjangoかなー．多くのユニコーン企業がDjangoでできてるよ．でもRailsもDjangoもめちゃくちゃ遅いんだよね．だからある程度の規模になったら，InstagramがPythonのGCをオフにしたみたいな，かなり変なことやり始めなきゃいけなくなるんだよ ［1］．［1］ https://instagram-engineering.com/copy-on-write-friendly-pyt..." userName="VWWHFSfQ" createdAt="2025/04/29 00:13:55" color="#ff33a1">}}




{{<matomeQuote body="Rustにはloco［1］があるよ．Rust版Railsを目指してるみたい．個人的にはこれで本格的なものは作ったことないけど，おもちゃプロジェクトならかなり楽しかったよ．<br>1- https://loco.rs" userName="SchwKatze" createdAt="2025/04/29 01:40:54" color="">}}




{{<matomeQuote body="これらのスレッドでなんで.NETがほとんど話題にならないのか，いまだに分かんないんだよね．Phoenixとかloco.rsみたいな新しいとかニッチなフレームワークは話題になるのに，.NETは全然．これこそ”設定より規約”って感じなのにさ．" userName="hnhn34" createdAt="2025/04/29 05:09:32" color="">}}




{{<matomeQuote body="プラットフォームのサポートとオープンソース化かな．例えば，Phoenix 1．0が出たのは，最初のオープンソースでLinux対応の.NETが出るより1年も前なんだよね．.NETはクローズドソースでWindowsオンリーだったイメージから，まさに今変わり始めてるところだよ．" userName="dqv" createdAt="2025/04/29 05:54:04" color="">}}




{{<matomeQuote body="asp.net mvcは嫌いだったな．たくさんのレイヤーとか，叩き出す必要があったボイラープレートのせいだと思う．" userName="kristianp" createdAt="2025/04/30 21:16:01" color="">}}




{{<matomeQuote body="Rubyで学んだけどC# .Netは10年近く書いたよ．今じゃ忘れたことの方が多いかもだけど話半分で聞いてね．.Netは設定やボイラープレート多いけど，RailsにRails WayがあるようにMicrosoft Wayがあるんだ．Javaみたいに色んな会社のパッケージに頼るのと違って，Microsoftが全部やってるから99%のケースで使えるデフォルトがしっかりしてて，決めること少なくて済むしドキュメントも豊富．ここ数年JVMにいるけど，全然比較にならないね．Javaの人には悪いけど，彼らはもっと良い方法を知らないだけだと思うよ．" userName="sanex" createdAt="2025/04/29 02:20:12" color="#ff5c5c">}}




{{<matomeQuote body="Laravelは驚くほど完成度が高くて，最初の機能までのスピードとか，ほとんどどんな製品にも対応できるフルCI/CDセットアップの点で，他のほとんどは比較にならないって聞いたよ．何よりも繰り返し開発のスピードが重要だよね．" userName="j45" createdAt="2025/04/29 00:30:53" color="">}}




{{<matomeQuote body="Djangoってさあ，だいたいPythonでいうRailsみたいな感じなんだよね．特に管理者パネルがマジで便利．週末にサクッと作ったやつを一人で管理するには最高だよ．" userName="wavemode" createdAt="2025/04/29 00:26:19" color="#785bff">}}




{{<matomeQuote body="ちなみにね，MVCって今どきは全然必須じゃないんだよ．これ見てみ，マジで違うから→ https://learn.microsoft.com/en-us/aspnet/core/fundamentals/m..." userName="neonsunset" createdAt="2025/05/01 00:16:42" color="">}}




{{<matomeQuote body="なんでか教えてくれない？Rust好きで，実際にRustでWeb系のプロジェクト本番で動かしてて，もう一個始めようか考えてるんだけどさ．他の人の経験談，マジで聞きたいんだよね．" userName="skwee357" createdAt="2025/04/29 07:50:32" color="">}}




{{<matomeQuote body="動的なフレームワークってさ，型がないのに加えてドメイン分離がマジで難しいんだよね．デカいプロジェクトだとすぐスパゲッティ化して，DB遅くなったり，変更出すのに時間かかったりする．大規模になったのを直すのは超大変だし，動的言語だから成功したって言ってるけど，他の選択肢でも成功した可能性はあると思うよ．<br>＜不眠症の思考＞" userName="sethammons" createdAt="2025/04/29 08:56:01" color="#ff5c5c">}}




{{<matomeQuote body="．NETはさ，もう10年前からオープンソースになってるよ．" userName="dgellow" createdAt="2025/04/29 07:52:57" color="">}}




{{<matomeQuote body="ElixirとPhoenix，マジで最高だよ．全部自分で完結するスタックなんだ．他のフレームワークだと外部サービスに任せるようなこと全部，Elixirのプロセス（とPostgres）だけでできちゃう．バックグラウンドジョブも，リアルタイム通信も，ホットコードデプロイですら同じBEAMランタイムの中で動くんだぜ．少ない人数で一つのシンプルな技術スタックで開発するのは，今の時代にはマジで新鮮で気持ちいいよ．" userName="wtsnz" createdAt="2025/04/29 02:06:34" color="#ff33a1">}}




{{<matomeQuote body="Djangoみたいにちょっと遅いなって思うフレームワーク使うなら，細かい速度よりまずSLO（サービスレベル目標）を決めるのがマジ大事だよ．”〇〇は〇秒以内に”みたいに．B2Bとか正直結構遅いところ多いし，目標達成できてんならツールの良いとこ使えばいいじゃん．目標は後から変えればOK．平均より速いだけで十分改善だよ．" userName="rtpg" createdAt="2025/04/29 00:50:47" color="#785bff">}}




{{<matomeQuote body="開発のスピードって，プロジェクト全体の寿命の中で変わるんだよね．動的型付け言語だと最初はめっちゃ速く開発できるけど，本番で8年とか動いて，最初の開発者じゃないチームがコード触るようになると，動的型付けって開発スピードの足かせになるんだ．もし開発スピードを”機能3までどれだけ早く作れるか”だけで判断するなら，ちゃんとした言語で作ったやつより断然速いbashスクリプトを俺は山ほど持ってるぜ．" userName="lelanthran" createdAt="2025/04/29 07:35:33" color="#ff5c5c">}}




{{<matomeQuote body="Elixirなら→Phoenix，Pythonなら→Django，PHPなら→Laravelって感じ．他のフレームワークはちょっとマイナーだろうね．俺が知る限り，この四つ（あとRails）が今一番ユーザーが多くて活発なコミュニティ持ってると思うよ．" userName="nomadygnt" createdAt="2025/04/29 02:42:02" color="">}}




{{<matomeQuote body="Javaの人たちからしたらさ，もしやり方を一つに絞りたいなら，Microsoftのやり方真似しろよ”って言うと思うよ．Springもそれを目指したんだろうけど，多分Microsoftみたいに潤沢なリソースは無かったんだろうね．" userName="dullcrisp" createdAt="2025/04/29 03:42:09" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
