+++
date = '2025-08-28T00:00:00'
months = '2025/08'
draft = false
title = '【知らないと損】現代HTML/CSSの今！あなたの常識は古いかも？'
tags = ["HTML", "CSS", "ウェブ開発", "フロントエンド", "プログラミング"]
featureimage = 'thumbnails/blue_green1.jpg'
+++

> 【知らないと損】現代HTML/CSSの今！あなたの常識は古いかも？

引用元：[https://news.ycombinator.com/item?id=45056878](https://news.ycombinator.com/item?id=45056878)




{{<matomeQuote body="ネストが追加されたのは評価するけど、CSSは全体的に見て本当に変でひどい言語だと思うね。たぶん使い方が悪いだけかもしれないけど、複雑でめちゃくちゃだし、呪文を並べて動かす感じ。継承ベースのスタイリングシステムと、継承なしで内包だけするレイアウトシステムが組み合わさってる。スタイリングとレイアウトを結合したのは間違いだったし、根本的に壊れてるものに機能を追加しても直らないよ。" userName="b_e_n_t_o_n" createdAt="2025/08/29 04:20:06" color="">}}




{{<matomeQuote body="反対意見だね。CSSに関するこういう意見は、ちゃんと時間をかけて学んでない人、特にカスケードを理解してない人が言ってるんだと思う。何年も前に新しい実装のためにCSSの仕様を深く掘り下げたけど、マークアップのセマンティクスからスタイルを分離するという目的にはすごく良く設計されてると感心したよ。" userName="tmpfs" createdAt="2025/08/29 10:39:15" color="">}}




{{<matomeQuote body="記事の「CSSへの否定的な意見の多くは、使い方をよく知らないことから来ている。多くの開発者はJavaやTypeScriptばかりでCSSの基礎を学ぶのを飛ばして、理解してないスタイリング言語に文句を言う」ってのは、あんたみたいな人のことだよ。ちゃんと学ばないくせに知ったかぶるのは傲慢だね。" userName="archerx" createdAt="2025/08/29 06:42:31" color="">}}




{{<matomeQuote body="あの複雑さは全部罠だよ。ひどい設計に無駄に時間を費やした人だけが、他人が学ぶ時間のない秘密を握ってる。あの複雑さは時間とエネルギーを食うだけで無意味だ。CSSはひどい設計、ひどいドキュメント、秘密だらけのひどい代物だよ。" userName="bsenftner" createdAt="2025/08/29 11:14:51" color="">}}




{{<matomeQuote body="あんたも筆者も、すごく傲慢な言い方だね。CSSへの反感にはもっとちゃんとした理由があるんだ。IE11にはNested flexboxのバグがあったし、サポート終了は2022年だ。記事のNested CSSは2023年12月に出たばっかり。CSSは1996年からあるんだから、現状は改善されたけど、それまでの20年以上ひどかったことを忘れないでほしいね。" userName="wmil" createdAt="2025/08/29 07:57:54" color="#ff33a1">}}




{{<matomeQuote body="「IE11にNested flexboxのバグがあった。IEのメンテが悪かったからCSSが嫌い、ってのがまともな議論になるの？」" userName="bryanrasmussen" createdAt="2025/08/29 08:16:20" color="">}}




{{<matomeQuote body="長い間、90年代後半からだいたい2012年くらいまで、IEが一番人気のブラウザだったんだ。IEで動かなかったら、それは“動かない”ってことだったから、IEに合わせて開発するしかなかったんだよ。" userName="icedchai" createdAt="2025/08/29 12:39:46" color="#ff5c5c">}}




{{<matomeQuote body="「スタイリングとレイアウトを組み合わせたのは間違いだった」って言ってるけど、UI開発したことある人なら、スタイリングとレイアウトは密接に絡み合ってるってよく知ってるはずだろ？例えば、文字列の長さ、サイズ、改行、マージンとかさ。ボーダーやパディングを変えたら、子要素のスペースも変わるじゃん。根本的に結合してるものをどうやって切り離すっていうんだよ？" userName="motorest" createdAt="2025/08/29 18:40:37" color="#ff33a1">}}




{{<matomeQuote body="じゃあ、あんたの提案はなに？" userName="darkwater" createdAt="2025/08/29 11:31:42" color="">}}




{{<matomeQuote body="いちいちツールの細かいところまで何週間もかけて学ぶ暇なんてないよ。ただ使ってパッと終わらせたいだけなんだ。もしツールが直感に反して使いにくいなら、それはツールが悪いし、みんなが別のを探すのも当然でしょ。" userName="m-schuetz" createdAt="2025/08/29 09:31:31" color="#38d3d3">}}




{{<matomeQuote body="Webのフロントエンドは一回捨てて、グラフィックアプリ向けに作られたシステムでやり直そうよ。HTTPは残し、HTML/CSSはPDFみたいにドキュメント用にしてさ。UIはRedLangやProcessingみたいにサクサク動くものが欲しいんだよ。開発者が大量のシムウェアをクライアントに押し付けるのはもうやめようぜ。" userName="mikestorrent" createdAt="2025/08/29 20:15:31" color="#45d325">}}




{{<matomeQuote body="個人的にはCSSのカスケードが問題だと思うな。シンプルなドキュメントならよかったけど、アプリを作るようになったらもうカスケードが無限の頭痛の種だよ。今時のCSSモジュールとかTailwindとかって、まさにカスケードや詳細度の問題を避けるためにあるんだし。概念は難しくないけど、実際何百ものCSSファイルがあるアプリだと、もう地獄絵図だよ。" userName="sensanaty" createdAt="2025/08/29 18:15:54" color="#45d325">}}




{{<matomeQuote body="そうかもしれないけど、HTML構造とレイアウトを分離できるって考えがそもそも間違いだと思うんだ。特にレイアウトが親や兄弟を参照してる時とか。CSSの夢はスタイルと意味を分けることだったけど、結局HTMLが意味をなさなくなって全部divになった。CSSはサイトをドキュメントだと思ってた時代に作られたから、その概念自体が欠陥だったんだよ。だからReactとかJetpack Composeみたいな新しいフレームワークは、この分離をやめてスタイルをコンポーネントに直接入れるんだ。あれはUIフレームワークであってドキュメントじゃないって認めてるからね。全部プレゼンテーションだよ。" userName="nostrademons" createdAt="2025/08/29 18:52:30" color="#ff5733">}}




{{<matomeQuote body="毎日何十ものCSSファイルと格闘してる俺が言うけど、問題はCSSじゃないんだ。作業をドキュメント化しない怠惰なデベロッパーが悪いんだよ。みんなが同じ仕様で作業してたら、一貫性のある信頼できる結果が出るんだ。デベロッパーが手探りで、数ヶ月ごとに車輪の再発明をしてたらそりゃ酷いことになるよ。" userName="reaperducer" createdAt="2025/08/29 19:36:18" color="#45d325">}}




{{<matomeQuote body="ツールをきちんと学ばないで、自分の怠け心を棚に上げてツールのせいにするってわけね。なるほど。" userName="archerx" createdAt="2025/08/29 12:42:41" color="">}}




{{<matomeQuote body="確かに俺もCSSの複雑な挙動をじっくり学ぶ時間はなかったな。カスケードとか詳細度みたいなカスケードプロパティはやっぱり最悪の機能だと思うよ。スタイルルールの全体像を頭の中で維持するのって難しいし、結局は試行錯誤になっちゃうんだ。結局CSSに変換されるたくさんの「方言」以外、誰ももっといい代替案を出せてないけどね。" userName="raxxorraxor" createdAt="2025/08/29 11:50:20" color="#ff5733">}}




{{<matomeQuote body="結局、全部エッジケースだよ。" userName="bsenftner" createdAt="2025/08/29 12:27:55" color="">}}




{{<matomeQuote body="今のCSSは問題だらけだけど、もっと統一感のあるレイアウトシステムを設計して、CSSをコンパイル先にできないかな？今のプリプロセッサは、CSSの半端なアイデアの上にさらに半端なアイデアを乗せてるだけって感じだよね。" userName="tobr" createdAt="2025/08/29 05:00:36" color="#38d3d3">}}




{{<matomeQuote body="TailwindはCSSの問題をかなり解消してくれるから人気なんだろうね。レイアウトシステムってよりは、CSSの嫌な部分を減らしてくれる感じ。Reactの＜Flex＞とか＜Grid＞みたいな高レベルの抽象化でも、うまくいくかもね。" userName="b_e_n_t_o_n" createdAt="2025/08/29 06:03:18" color="#38d3d3">}}




{{<matomeQuote body="具体的な例とかあるの？" userName="yladiz" createdAt="2025/08/29 15:20:05" color="">}}




{{<matomeQuote body="UI構築専用のネイティブフレームワークがいっぱいあるのに、Webフロントエンドがそれらを全部打ち負かしたってすごいよね。" userName="peanut-walrus" createdAt="2025/08/29 20:30:27" color="">}}




{{<matomeQuote body="ちゃんと学ばないで不満を言うのは、その人自身を物語ってる。間違ったやり方をしてツールを責めるなんて、一番傲慢な態度だよ。" userName="archerx" createdAt="2025/08/29 12:47:28" color="">}}




{{<matomeQuote body="Flexboxって、実際みんなが使い始めたのは2013年くらいからじゃない？2022年のIEのバグの話と2012年の話は関係ないと思うな。WDで2009年にあったのは知ってるけど、人気が出たのは2014〜2015年頃だよ。" userName="bryanrasmussen" createdAt="2025/08/30 16:20:11" color="#785bff">}}




{{<matomeQuote body="CSSに文句を言う人って、ろくに勉強もしないで「オモチャ」扱いする人が多いってのが俺の経験。見た目が良くてメンテしやすいページを作るのって、バックエンドのコードを書くのと同じくらい労力と計画が必要なんだよ。" userName="pseudosavant" createdAt="2025/08/29 17:55:32" color="#ff33a1">}}




{{<matomeQuote body="みんなCSSがどれだけ難しいかって過剰に騒ぎすぎだよ。昔も今も、技術は進歩してるのに、勉強を嫌がってネットで文句ばかり言う人の態度は変わってないんだよね。" userName="archerx" createdAt="2025/08/29 12:45:39" color="">}}




{{<matomeQuote body="ビデオゲームって、「お前が学ぶ努力をしてないだけ」じゃなくて、「俺たちのデザインが悪かった」って反省して、誰でも楽しめるように作り直したから良くなったんだよ。プログラミング言語もそう謙虚であるべきだよね。" userName="jimbob45" createdAt="2025/08/29 19:06:09" color="#785bff">}}




{{<matomeQuote body="CSS Zen Gardenは健在だけど、Webが出版プラットフォームとして盛り上がった時代は終わったね。今CSSを書くのはWebアプリの文脈で、Zen Gardenみたいなスタイルはむしろアウト。個人サイトはスパムやハッカー、ビットコインマイナーのリスクだらけだし、プレゼンテーションを自由にできないFacebookやTikTok、RedditみたいなSNSが主流になったってこと。MySpaceやLiveJournalみたいにCSSで遊べたSNSはもうないんだ。" userName="nostrademons" createdAt="2025/08/29 19:06:20" color="#38d3d3">}}




{{<matomeQuote body="もちろん、僕は怠け者だよ、なんで不必要な手間をかけたいんだ？もしツールが悪いUXで余計な労力を要求するなら、僕は別のものを見つける。使える時間は限られてるからね。もし他のツールがないなら、「そこそこでいい」仕事をして、もっと重要なタスクに移るよ。幸運なことに、Kritaの代わりにGimp、Cuda&OpenGLの代わりにVulkan、C++の代わりにRustみたいな代替品はよくあるんだ。" userName="m-schuetz" createdAt="2025/08/29 16:21:45" color="">}}




{{<matomeQuote body="この記事の内容には共感するけど、「JavaScriptを望まないユーザーがいる」っていう価値提案は正直響かないな。僕はArchユーザーで、ブラウザスクリプトやWebクローリングもする「True Believer」だけど、これはかなりニッチなユーザー層の好みだよ。まるで「10%のユーザーがIE6を使ってる」時代の議論に逆戻りするみたいで、CSSが優位に立つ理由は、もっと説得力のあるところにあるはずだ。" userName="keeganpoppen" createdAt="2025/08/28 23:12:37" color="#ff33a1">}}




{{<matomeQuote body="ちなみに、僕はnoscriptを使ってインターネットを利用してるけど、完璧に使いやすいよ。JavaScriptが必要なサイトは、拡張機能から有効にするだけでいいから、いつも使うサイトで邪魔になることはないんだ。パフォーマンスやバッテリー、セキュリティにとってもかなり良い。一週間以上noscriptで生活してみたことある？きっとあなたの見方も少し変わると思うよ。ちなみに、僕はこのブログ記事の作者です。" userName="rebane2001" createdAt="2025/08/28 23:39:06" color="#38d3d3">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="noscriptを使ってるってことは、結局大量のアプリを代わりに使ってるってことだよね？Windowsアプリ、iOSアプリ、何でも。でしょ？だって、FacebookやWhatsApp、BSky、Drive、CoD:BO6、その他諸々を使いたい（ただ見るだけじゃなく）んだから。そしてそれらは全部、同じプライバシーを侵害する力を持つ環境で動いてる（正直もっと危険なことも多い）。「noscriptを使え」っていうのは、結局「ブラウザを使わずにスマホを使え」って言ってるのと同じじゃない？何の意味があるんだ。（正直、この議論をしてる人のほとんどが最終的にこう認めるんだ。「no javascript」は「no Google」を意味してるだけで、彼らの目標はプライバシーなんかじゃなく、World Wide Webというプラットフォームを破壊してAppleの製品を優遇することなんだ、ってね）。" userName="ajross" createdAt="2025/08/29 01:49:02" color="#ff5c5c">}}




{{<matomeQuote body="「一部のユーザーはJavaScriptを望まない」って？<br>その通りだよ、ほとんどの人が望んでないね。" userName="exabrial" createdAt="2025/08/29 00:11:25" color="">}}




{{<matomeQuote body="Webユーザーの99.9%以上はJavaScriptなんて聞いたこともないよ。" userName="dmd" createdAt="2025/08/29 00:13:23" color="">}}




{{<matomeQuote body="僕はDiscordやBlueskyみたいなWebアプリではJavaScriptを有効にしてるよ。まだ訪れたことのないサイトでJavaScriptをデフォルトで無効にするのは、攻撃を受けるリスクを制限するのにすごく有効なんだ。Facebookみたいなサイトはあまり使わないから、同意した時だけJavaScriptを動かす感じ。もちろんプログラムやアプリは使うけど、攻撃を受けるリスクと脅威モデルは「ゼロかヒャクか」じゃないから、できるだけ安全にする方がいいでしょ。" userName="rebane2001" createdAt="2025/08/29 01:57:27" color="#ff5733">}}




{{<matomeQuote body="でもさ、市場の決定ってミクロ経済的なものじゃないんだよ。もしみんながnoscriptをデフォルトで使うような世界になったら、誰もWebアプリなんて作らなくなる（だってプラットフォームがデフォルトで最悪になるから）。そしてみんなが、その時の支配的なベンダーのネイティブアプリを使うようになる。それって、プライバシーやセキュリティ含めて、ほぼ全ての指標で今よりずっと（はるかに）悪い状況になるんだよ。あなたの論理は「寄生虫」みたいにしか機能しない。ほとんどの人がnoscriptを使わないからこそ、あなたはそれを使って自分を「守れる」んだ。" userName="ajross" createdAt="2025/08/29 02:22:37" color="#ff33a1">}}




{{<matomeQuote body="僕にとっての魅力は、宣言的なCSSで数バイトでできることが、命令的なJavaScriptだと何行も書かないとダメで、変な挙動やフレームワークの互換性問題が減るし、Time-to-interactiveも低いことなんだ。noscriptの状況で動くのは、おまけみたいなものだよ。心の奥底では、DSSSLが恋しいな。" userName="inopinatus" createdAt="2025/08/29 01:41:43" color="#45d325">}}




{{<matomeQuote body="俺もnoscriptをほぼいつもオンにしてるよ。でもさ、JSがないと動かないものが結構あるんだ。GoogleやBingの検索、YouTube、Tor Browserじゃない普通のFireFoxだとDuckDuckGoすら動かない。Tor BrowserならDuckDuckGoは動くから普段はそれ使ってるんだけどね。JS必須の点滅広告とかあるサイトは、だいたいスキップしてるわ。" userName="Mars008" createdAt="2025/08/29 00:14:47" color="#785bff">}}




{{<matomeQuote body="俺は個人的なthreat modelを持ってるんだから、“parasite”なんかじゃないよ。ブラウザのCVEsだって二桁ある人間だから、余計な注意を払うのは当然だと思うね。それにnoscriptってのは、JavaScriptが実行できないって意味じゃなくて、FlashやJava Appletみたいに同意が必要ってことなんだよ。あんたの議論は、noscriptユーザーがJavaScriptを全然使わないって決めつけてるけど、それは違うね。" userName="rebane2001" createdAt="2025/08/29 02:57:05" color="#45d325">}}




{{<matomeQuote body="90%なら信じるけど、99.9%はちょっと言い過ぎな気がするな。" userName="__MatrixMan__" createdAt="2025/08/29 02:54:46" color="">}}




{{<matomeQuote body="「1週間noscriptで暮らしたことある？」って？俺はJavaScriptもマウスもなしで20年以上生きてるんだが。Webを始めた頃はJavaScriptなんてなかったんだよ。テキストを読んでファイルをダウンロードするのは毎年どんどん簡単になってるしね。普段はブラウザでHTTPリクエストすることは避けてるし、保存したHTMLをテキストオンリーのブラウザで読むこともあるよ。" userName="1vuio0pswjnm7" createdAt="2025/08/29 04:20:23" color="#ff33a1">}}




{{<matomeQuote body="あんたは平均的なユーザーがコンピューターについてどれくらい知ってるか、めっちゃ過大評価してると思うよ。" userName="ChrisRR" createdAt="2025/08/29 12:57:58" color="">}}




{{<matomeQuote body="JavaScriptを使いたくないユーザーのことには軽く触れてるだけだけど、記事のほとんどはCSSの機能を紹介することに費やされてるね。パフォーマンス向上の動機も挙げられてるけど、動機付けの全体を深く掘り下げてないのは良いと思うよ。個人的には、技術を見せることに集中してる方が生産的だと思うね。" userName="bee_rider" createdAt="2025/08/28 23:58:15" color="#38d3d3">}}




{{<matomeQuote body="多くの人は膵臓がんのことなんて聞いたこともないだろ。それを説明して、彼らが納得するか見てみろよ。IEのJavaScriptは、多分、彼らのシステムを少なくとも何回も台無しにしてきたはずだし、彼らはトラッキングが何かも知ってるんだ。" userName="pessimizer" createdAt="2025/08/29 00:26:13" color="">}}




{{<matomeQuote body="「個人的なthreat modelを持ってるから“parasite”じゃない」って？違うね。もしみんなが君の「personal threat model」を持ったら、君が使ってるプラットフォームが死んで、noscriptの選択肢すらなくなっちゃうんだよ。だからこの比喩は的を射てるし、俺は主張を曲げないね。" userName="ajross" createdAt="2025/08/29 14:08:41" color="#ff5733">}}




{{<matomeQuote body="Tor Browserって、めちゃくちゃ遅いんじゃないの？" userName="typpilol" createdAt="2025/08/29 01:49:14" color="">}}




{{<matomeQuote body="noscriptを使ってる人たちをターゲットにするのは、あまり意味がないってのは同意するよ。でも同時に、あまり触れられてないもう一つの側面を強く強調したいんだ。つまり、コードを減らしてブラウザの機能をもっと活用するのは、とてつもなく価値があるってことさ！やることを減らしてブラウザに任せるのは、すごく良い結果をもたらすんだよ。" userName="jauntywundrkind" createdAt="2025/08/28 23:32:11" color="#45d325">}}




{{<matomeQuote body="私はnoscript賛成派だけど、それはオタク界隈だけの話かもね。一般の人にはあまり響かないだろうし。個人的にはnoscriptに価値があると思ってるよ。記事はすごく良いのに、こういう些細なことで議論が盛り上がっちゃうのは残念だな。" userName="keeganpoppen" createdAt="2025/08/29 03:00:57" color="">}}




{{<matomeQuote body="FacebookやWhatsAppを使いたきゃJSいるって言うけど、俺はGoogleやFacebookみたいな巨大企業に縛られたくないね。Googleアカウントも持ってないし、AndroidからGoogleアプリも消してるよ。JSなしで平気な奴は、SNSやGoogleアプリなしでも生きていけるタイプだと思う。これは根本的に違う世界観だから、無理に分かり合おうとする必要もないんじゃないかな。" userName="hilbert42" createdAt="2025/08/29 05:36:37" color="#45d325">}}




{{<matomeQuote body="ad-techで働いてる奴らがいるってことだな！冗談は抜きにして、JSがない時代からWebを使ってる俺たちからすれば、JSなしでも問題なく動くんだよ。最近、SEOとか非JS向けに作ったルーターをReact用に更新したら、JSなしでもページ全体が見れるようになった。curlでテキストも画像プレースホルダーも表示できるし。JSなしのサポートってそんなに難しくないって！" userName="floydnoel" createdAt="2025/08/31 11:09:49" color="">}}




{{<matomeQuote body="もうそんな時代じゃないよ。JSがいらない時はすごく使えるんだ。Torで5MB/s以上のダウンロードも見たことあるしね。良くも悪くも、出口ノードは制御できないから、リセットしないと変えられないけど。一部のサイトはユーザーの場所を気にするから注意が必要だけどね。" userName="Mars008" createdAt="2025/08/29 07:32:28" color="">}}




{{<matomeQuote body="誰にとって悪いって？エンドユーザーじゃないでしょ。彼らは使うなら一度許可するだけなんだから。ブラウザの通知とかマイクの許可と一緒だよ。もし全員がnoscriptを使ったら、たぶんインターフェースも許可フローみたいに変わるかもね。それに、みんなDiscordやSlackみたいな「ネイティブ」アプリを選んでるけど、あれってただのWebアプリのラッパーじゃん。スマホでも同じで、Twitter/XのネイティブアプリをWeb版より好むよね。でも、それでもWebアプリは作り続けられてるし、みんながnoscriptを使っても作り続けられるよ。" userName="Jach" createdAt="2025/08/29 02:55:49" color="#45d325">}}




{{<matomeQuote body="私は普段JavaScriptをオフにしてて、必要な時だけオンにするタイプなんだ。JSなしのメリットが大きすぎて、もう手放せないね。JS自体が嫌いなわけじゃなくて、プライバシー侵害とか、重すぎるページ、ロードの遅さとか、サイト側がユーザーにしてくる「嫌がらせ」が問題なんだよ。CSSだけでだいたいのことはできるし。JSをオフにするだけでページがめちゃくちゃ速くなるから、もっと多くの人にこの快適さを知ってほしいな。" userName="hilbert42" createdAt="2025/08/29 04:28:34" color="#ff5c5c">}}




{{<matomeQuote body="noscriptで、インタラクティブな要素が必要な時にだけ許可する「オプトイン」の体験が気に入ってるよ。決済とかでたまにカクつくことはあるけど、もう10年くらいnoscript使ってるから慣れちゃったね。CPU食いまくりの広告とか、意味不明な動画広告に比べたら全然気にならないよ。" userName="djtango" createdAt="2025/08/29 02:38:42" color="">}}




{{<matomeQuote body="「ブラウザに任せればいい」っていうのは分かるけど、もしブラウザがそれをちゃんと、一貫性を持ってやってくれるなら、って話だよね。残念ながらそうじゃないんだ。ある環境ではマウスが動くと変な色のスライダーが飛び出してくるのに、別の環境では固定サイズの違う色のスライダーが出てくる。これじゃあ、統一感のあるデザインなんて作れないよ。" userName="lukan" createdAt="2025/08/29 01:09:47" color="">}}




{{<matomeQuote body="JSオフのメリットは大きいのに、最近のブラウザは無効化しにくいよね。Firefoxも昔は簡単だったのに、Googleの圧力で機能が削除されたんだろうな。JSなしだと広告がほとんど出ないし。AndroidならPrivacy Browser、WindowsやLinuxならPale Moonで簡単にオフにできるよ。HNみたいなテックサイトでこのメリットが語られないのは、JSで稼いでる人が多いからだろうね。" userName="hilbert42" createdAt="2025/08/29 05:07:46" color="#ff33a1">}}




{{<matomeQuote body="NoScriptを長年使ってるけど、’完璧に使える’ってのは言い過ぎだと思うな。HNやRedditで新しいサイトに行くと、JSなしじゃまともに動かないサイトが多すぎる。JSを悪者にしてCSSで何でもやろうとした時期もあったけど、大規模な開発だとそれぞれ得意なことが違うって気づいたよ。どちらも進化してるし、CSSでできることが増えてるのは良いことだね。" userName="h4ny" createdAt="2025/08/29 03:56:50" color="">}}




{{<matomeQuote body="CSSの最悪なところは、多くの人がちゃんと学ぼうとしないで、たった一日使っただけで強い意見を持つことだよね。" userName="firefoxd" createdAt="2025/08/29 06:04:22" color="">}}




{{<matomeQuote body="20年前にCSSを学んだ俺から言わせれば、カスケーディング（継承）は最悪だよ。チームで開発してると、ある変更が全く別のところをぶっ壊す、みたいなことばかり。複雑なセレクタとか、もはや意味不明。シンプルなレイアウトすら昔は激ムズだったし、何でCascading Rulesなんてものにしたのか理解できないね。レイアウト組むのがフルタイムの仕事になるなんておかしいだろ。" userName="locallost" createdAt="2025/08/29 06:37:40" color="#ff5c5c">}}




{{<matomeQuote body="俺はCSSのカスケーディングが好きだし、継承は’適切な場所’なら最高のアイデアだよ。CSSのカスケーディングはツリー構造だから、ドキュメントを解析するのにすごく合ってるんだ。人間も知識を整理するのにツリーを使うことが多いしね。ドキュメントとCSSは相性バツグンだと思うよ。" userName="tankenmate" createdAt="2025/08/29 07:20:04" color="#38d3d3">}}




{{<matomeQuote body="問題は、どのプロパティがカスケーディングするかしないか、全然分からないってことだよね。ブロック要素、Flexbox、リンクとか、特殊なケースが多すぎる。結局、試行錯誤で一番よくあるパターンを覚えるしかないんだ。" userName="easyThrowaway" createdAt="2025/08/29 11:03:25" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="30年前に学んだ時、CSSがこんなに普及するとは誰も思ってなかったよ。DSSSLとかJSSとか、他にも選択肢があったんだ。DSSSLはHTMLと同じSGML系、JSSはNetscapeが推してたJavaScript構文だった。ちなみに、JavaScriptってCSSより先にブラウザに登場してたんだよ。" userName="weinzierl" createdAt="2025/08/29 08:24:57" color="#38d3d3">}}




{{<matomeQuote body="俺もCSSを20年やってるけど、それって君のスキル不足じゃないの？" userName="archerx" createdAt="2025/08/29 06:44:58" color="">}}




{{<matomeQuote body="昔ポッドキャストアプリを作った時、CSSでフッターを’常に下部に表示’、’常に可視’、’コンテンツを隠さない’、’ハック不要’で実装しようとしたんだ。でも、結局無理だったよ。本当にひどいシステムだと思ったね。" userName="jhhh" createdAt="2025/08/30 00:35:21" color="">}}




{{<matomeQuote body="挙げた条件のどれかを破らずにやるのは無理だよ。SOとかブログで提案されてる解決策は、コンテンツが多すぎると画面外に押し出されたり（条件2違反）、少なすぎると最後の要素の下に引き上げられたり（条件1違反）、絶対配置を使うとコンテンツを隠したりする（条件3違反）。結局、フッターと同じサイズの空要素を絶対配置で使うことになり、それがフッターの下をスクロールする要素になる（条件4）。Google Podcastsもそうしてたはずだけど、これってただのハックだよ。ページに犠牲になる要素を作らなくても、もっとシンプルな方法がありそうなもんだけどね。" userName="jhhh" createdAt="2025/08/30 02:13:04" color="#45d325">}}




{{<matomeQuote body="隠したくないコンテンツに下パディングがあれば、フローティングフッターはその追加パディングの真上にくるはずだよ。さらに、FlexboxやGridを使えば、もっとうまく、ハックなしで処理できる。これって、CSSで見た中で一番複雑なことには思えないな。" userName="firefoxd" createdAt="2025/08/30 06:20:52" color="">}}




{{<matomeQuote body="それはもう俺の投稿で言及したハックのことだね。もしシンプルにFlexboxやGridで解決できるなら、自由に投稿してくれよ。" userName="jhhh" createdAt="2025/08/30 13:26:00" color="">}}




{{<matomeQuote body="＞CSSの最悪なところは、多くの人が学習しようとしないことだ<br>20以上の仕様を全部深く学ばずにCSSを使うなんて、とんでもない！ひどい話だ！<br>ツールを使うのに問題があるなら、人じゃなくてツールの方を見るべきだよ。人は変わらない。バンドソーを使う人にもっと注意しろとは言わないだろ？安全機能を付けるんだよ。" userName="noelwelsh" createdAt="2025/08/29 07:29:28" color="#ff5c5c">}}




{{<matomeQuote body="もちろん、20年分の仕様を全部学ぶ必要なんてないよ。他のプログラミング言語やマークアップ言語と同じで、現代的に使うのに必要なことはいくつかあって、それ以外のことは時間をかけて覚えていけばいいんだ。" userName="bryanrasmussen" createdAt="2025/08/29 08:18:10" color="">}}




{{<matomeQuote body="もし無謀な行動を示したなら、実際はバンドソーを使わせないだろ。" userName="grebc" createdAt="2025/08/29 09:53:53" color="">}}




{{<matomeQuote body="そうだね、でもそれは有能なプロに「もっと注意しろ」と言うのとは違うよ。事故は、個人にもっと用心深さを求めるんじゃなくて、事故が起こりにくいシステムを作ることで防ぐんだ。だからバンドソーにはガードとか他の安全機能が付いてるんだよ。" userName="noelwelsh" createdAt="2025/08/29 10:52:07" color="#785bff">}}




{{<matomeQuote body="1時間くらいでCSSを効果的に使う方法が分からない人は”プロ”じゃないね。CSSはすごくシンプルで、すごくパワフルだ。みんなの理解が不足してるみたいだし、これらのコメントを見ると、意図的な無知に行き着くように思えるよ。" userName="leptons" createdAt="2025/08/29 18:17:19" color="">}}




{{<matomeQuote body="例えばJSみたいな他のプログラミング言語に対しても、同じ基準を適用する？" userName="rebane2001" createdAt="2025/08/29 07:35:24" color="">}}




{{<matomeQuote body="Of course. I think JS is full of mistakes. To be fair some of the more egregious ones have been fixed, but there are still plenty left.I’m a big believer in learning new stuff, when that stuff has lasting value. However it is far more efficient to fix things, a one time cost that benefits everyone, than to ask everyone to learn the quirks of a tool, a cost that is paid every time someone new comes along." userName="noelwelsh" createdAt="2025/08/29 07:39:14" color="">}}




{{<matomeQuote body="Are you implying that having both String.prototype.substring and String.prototype.substr is somehow confusing?JS is in general better because by the time it came out people knew what to expect from a scripting language.CSS didn’t really have a lot of earlier styling and layout languages to copy. Also the original vision was much more limited." userName="wmil" createdAt="2025/08/29 08:09:02" color="">}}




{{<matomeQuote body="＞  Also the original vision was much more limited.Is this about CSS or JS (and things like Node)?" userName="timeon" createdAt="2025/08/29 09:34:40" color="">}}




{{<matomeQuote body="You don’t tell people to be careful when using a saw?!How about we do both? We expect people to be able to use the tools, you know, properly, and make sure the tools are well-designed?" userName="squigz" createdAt="2025/08/29 10:38:04" color="">}}




{{<matomeQuote body="＞ How dare people use CSS without learning in-depth all 20+ specifications! It’s an outrage!Is strange reaction to:＞ ... then have a strong opinion after they were forced to use it for a day.There is not problem with using something without understanding all complex rules. Point is about forming strong opinion based on superficial knowledge.People are not humble these days." userName="timeon" createdAt="2025/08/29 09:32:53" color="">}}




{{<matomeQuote body="I didn’t realize that nesting is official now, last time I checked it was still a proposal. Nice!CSS has a lot of weirdness but I feel like it’s been following the trajectory of Javascript toward becoming decent language. Flexbox and the :has selector, and now nesting, cover a lot of the pain points I’ve had over the years." userName="thedanbob" createdAt="2025/08/29 11:27:48" color="#ff5c5c">}}




{{<matomeQuote body="Two of those wishlists css features already exist as specs:＞ n-th child variableSee sibiling-index() and sibling-count() https://developer.mozilla.org/en-US/docs/Web/CSS/sibling-ind...＞ Reusable blocksSee @function and @mixin draft spec, https://drafts.csswg.org/css-mixins-1/ and https://css-tricks.com/functions-in-css/Both are available in chrome already." userName="dsmmcken" createdAt="2025/08/29 02:29:11" color="#ff5c5c">}}




{{<matomeQuote body="Okay, but are those radio tabs accessible?I think that if you want to follow WAI-ARIA practices, the aria-selected, tabindex and aria-controls need to be updated via JS when the active tab changes? I’d love to be wrong about that.Accessibility is often an afterthought. And, sometimes there’s an assumption that by working with HTML/CSS directly, accessibility comes built in. Just Something to keep in mind when choosing an approach." userName="atomicfiredoll" createdAt="2025/08/29 06:11:46" color="#45d325">}}




{{<matomeQuote body="I think so?I am aware that people who read the blog might base parts of their websites on my examples, so I definitely want to make sure they’re accessible as to not cause a negative ripple effect on the web.I don’t have a background in accessibility, but I try to do the best I can. I try out what I make with various accessibility tools (e.g. keyboard navigation, screenreaders), and also read up on how things should be handled.For the radio tabs specifically - they are keyboard navigable, work with screenreaders, and follow the tabbing to content practice mentioned in the WAI-ARIA example[0].[0] https://www.w3.org/WAI/ARIA/apg/patterns/tabs/examples/tabs-..." userName="rebane2001" createdAt="2025/08/29 07:47:52" color="#ff5733">}}




{{<matomeQuote body="Thanks! Sorry if I came off as brash, time has been tight recently. You’ve already put a lot of work into a very informative article, and it’s appreciated. The outlook is solid. I’d like to find an opportunity to revisit some of my own code with your writing in mind.Part of the reason for mentioning the radio-tabs is because I was working on my own implementation for a personal project a few weeks ago. My goal was specifically using the role=”tab”/role=”tabpanel” pattern, but my read of the guidance left me feeling like I was trapped with using JS to set those. Since it was timeboxed, I bailed out to augmenting it with JS for and moved on.My hope was maybe somebody on HN with more of a background on accessibility could interject some thoughts here." userName="atomicfiredoll" createdAt="2025/08/29 09:59:49" color="#ff33a1">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
