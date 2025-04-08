+++
date = '2025-04-01T00:00:00'
months = '2025/04'
draft = false
title = 'React涙目？ Reactボタンより軽いNue爆誕！爆速Web開発の新星現る'
tags = ["JavaScript", "React", "Web開発", "フレームワーク", "パフォーマンス"]
featureimage = 'thumbnails/color2.jpg'
+++

> React涙目？ Reactボタンより軽いNue爆誕！爆速Web開発の新星現る

引用元：[https://news.ycombinator.com/item?id=43543241](https://news.ycombinator.com/item?id=43543241)

{{<matomeQuote body="Reactに頼りすぎてる人が多い気がするなー。問題は巨大なフレームワークがWebを遅くしてることじゃん？DevOpsとして、ロード10秒以下のサービスを見つけるのがマジ無理。10G回線で5ms以内のホストなのに、ホームページとかが10秒以上かかるのはJSのせい。速いブラウザエンジンと諦めモードの人だけが支えてる状態だよね。Nueが革命を起こすとは思わないけど、応援はするよ。" userName="fcpk" createdAt="2025-04-01T08:03:02" color="">}}

{{<matomeQuote body="Webの肥大化はReactみたいなフレームワークのせいじゃないよ。Reactのプロジェクトを`pnpm create vite -t react-ts`で作ると、圧縮後60KBくらい。Vueならもっと小さくて25KBくらい。React/Vueで200-300KBのプロジェクトも普通に作れるし、2G回線でも使えるよ。ホームぺージが10秒かかるのは作り方の問題。jQuery時代より酷いこともできるし。記事の比較も変。ReactのViewはボタンよりちょっと大きいだけ。" userName="oefrha" createdAt="2025-04-01T12:09:05" color="#ff5733">}}

{{<matomeQuote body="作者です。Reactのベースラインは確かにモンスターじゃないね。Vite/Reactで60KB、Vueなら25KBくらい。中規模プロジェクトで200-300KBは全然あり。でもね、React/ShadCNのボタン1個がNueのSPAデモより重いんだよ。タブとか足したら差は広がる一方。Nueはそこを覆す。Web標準で小さく始められて、そのまま小さく維持できる。コードも小さく、HMRも速い、ビルドも早い。効率が良いってこと。" userName="tipiirai" createdAt="2025-04-01T12:39:28" color="#45d325">}}

{{<matomeQuote body="100-200KBの追加は、ほとんどのユーザーにとって100ms程度のコスト。95%のユーザーでも1秒くらい。それなら開発効率を優先するよ。バンドルをやめるとか、ラウンドトリップをなくすとかは良いと思うけど、100KB追加するくらいなら大したことない。" userName="oefrha" createdAt="2025-04-01T12:52:59" color="">}}

{{<matomeQuote body="＞100-200KBの圧縮ファイルは、ほとんどのユーザーにとって～<br>それって光回線？ケーブル？5G？4G？最初のボタン？それとも各ボタン？日付をオブジェクトで管理したくなったら？dayjsを使う？自分で書く？他にどんなライブラリが必要？ビルド時間は？リンターは？Next.jsのアップデートは？セキュリティアラートは？Reactのコードベースを管理するのは大変なんだよ。AgenciesはReactを使うだろうね。90%はすぐ終わるし。インフラのことは気にしないから。小さなクライアントはハマって、チームは止まる。" userName="troyvit" createdAt="2025-04-01T14:00:37" color="">}}

{{<matomeQuote body="＞React’s baseline isn’t a monster.<br>そんなことない。問題はサイズじゃなくてロジック。コンポーネントが再レンダリングされるたびに、ルートループが実行される。useEffectもuseStateも全部再実行される。HTMLだけをレンダリングしたいのに。最適化はできるけど、根本的な問題だよね。" userName="eastbound" createdAt="2025-04-01T19:10:20" color="">}}

{{<matomeQuote body="このベンチマークは誤解を招くね。ShadCNボタンのソースコードと、クライアントがダウンロードするボタンのサイズは違うんじゃない？特にSSRを使ってる場合は。" userName="nicce" createdAt="2025-04-01T14:22:56" color="">}}

{{<matomeQuote body="デモを見ると、ペイロードはほぼReactとtailwindcssのクラスから来てる。ShadCNボタン1個のペイロードって言うのは嘘。React/tailwindcssの固定コストじゃん。でも、デモ自体は小さいから、誇張がちょっと残念。クライアント開発で重要なのは状態管理。ReactではMobXを使ってる。Nueが使いやすいかどうかは、インタラクティブ性がどれだけ良いかにかかってる。" userName="hombre_fatal" createdAt="2025-04-01T16:29:50" color="#45d325">}}

{{<matomeQuote body="＞It's dishonest to call this the payload of ”one shadcn button” since it's basically all react/tailwindcss fixed cost and not literally a shadcn button.<br>ShadCNのボタンはそのコストなしで動くの？" userName="mvdtnz" createdAt="2025-04-01T18:28:05" color="">}}

{{<matomeQuote body="ChatGPTっぽい。" userName="senordevnyc" createdAt="2025-04-01T13:01:12" color="">}}

{{<matomeQuote body="ダウンロードと実行は違うってことだね。60kbの圧縮されたJavaScriptをダウンロードするのは問題じゃなくて、問題はそのJavaScriptを実行すること、それから発生する大量のweb呼び出し、そしてボタンを丸くしたりするためだっけ？にかかる計算量だよ。ロード時間はもう良い体験の指標じゃないんだよね。今はページがレイアウトされて操作できるようになるまでの時間が大事だよね。あと、スマホ熱くない？" userName="ToucanLoucan" createdAt="2025-04-01T14:58:42" color="#785bff">}}

{{<matomeQuote body="60kbの圧縮されたJavaScriptをダウンロードする方が実行するよりも時間かかるよね。" userName="knubie" createdAt="2025-04-01T18:13:45" color="">}}

{{<matomeQuote body="最近のReactサイトが重すぎるのは嫌だし、メインのフレームワークだったけど、クライアントが指定しない限り使わなくなったんだ。<br>＞問題は、これらの巨大なフレームワークがwebをひどく遅いものにしてしまったことだ。”<br>これって違うと思うな。webが重いのは、最適化とかをしない怠慢な開発者とか、収益を絞り出そうとする大量のトラッキングスクリプトのせいだと思うよ。Reactサイトも開発者がちゃんとすれば速いし、Reactのせいじゃないことが多い。この記事ではボタンが78Kって言ってるけど、React全部読み込んでるからでしょ。ボタンが何百個もあるページなら毎回78K読み込まないし。" userName="ikurei" createdAt="2025-04-01T08:18:47" color="#785bff">}}

{{<matomeQuote body="＞最適化とかをしない怠慢な開発者とか…<br>＞(これはReactのせいかもね)<br>それもあるよね。でもReactが最適化を必要にしてるってことを忘れちゃだめだよ。ネットワークもマシンもめっちゃ速いじゃん。30年前にはPostscriptファイルのオンラインアダプテーションしてたんだよ。フォームの入力でPostscriptをレンダリングし直すの。ほぼ一瞬だったよ。" userName="mpweiher" createdAt="2025-04-01T10:56:39" color="#45d325">}}

{{<matomeQuote body="低スペックのAndroid端末もあるんだよ。アメリカとかヨーロッパとかアジア以外にもネットワークはあるし。Google map見てみなよ。世界はオフィスだけじゃないんだから。" userName="tmpz22" createdAt="2025-04-01T12:21:00" color="">}}

{{<matomeQuote body="そんな低スペックのAndroid端末ってどういうスペックにするの？" userName="mpweiher" createdAt="2025-04-01T16:30:22" color="">}}

{{<matomeQuote body="Alex Russelがこの件について色々書いてるし、スマホ市場の状況に基づいて毎年アップデートしてるよ。分析に基づいて中央値、P75、P95のデバイスを選んで、それに基づいてターゲットを設定できる。<br>https://infrequently.org/2024/01/performance-inequality-gap-<br>俺は一番安いスマホを買ったよ。Alcatel 1ってやつ。めっちゃ低スペック。ちょっとやりすぎかもしれないけど、それで動けば他でも動く。" userName="panstromek" createdAt="2025-04-03T10:33:00" color="#45d325">}}

{{<matomeQuote body="うーん…クールな記事だけど、俺が探してるものとはちょっと違うな。まあいいや、彼が言及してるスマホの構成を見てみよう。<br>”A51は遅いコアが8つ(4x2.3 GHz Cortex-A73と4x1.7 GHz Cortex-A53)搭載”<br>Wikipediaを見ると、少なくとも4GBのRAMと4Gインターネットも搭載してる。<br>Alcatel 1も少なくとも1 GHzのCPUと少なくとも1GBのRAMを搭載してるみたいだ。<br>PowerMac G3でwebベースのPostscriptレンダリングをやってたんだ。シングルコア32ビットプロセッサ、266 MHz、192MBのRAM。回線は初期のDSL、下り768KB、上り128KBだったと思う。<br>特に最適化しなくても速かったよ。<br>だから、今のコンピュータ、特に低スペックのスマホや時計は信じられないほどパワフルで速いって言いたいんだ。ネットワークもね。もし君の技術スタックが基本的なUIレンダリングでそのハードウェアを苦しめて、まともに動かすために最適化が必要なら、根本的に間違ってるよ。" userName="mpweiher" createdAt="2025-04-04T07:09:12" color="#45d325">}}

{{<matomeQuote body="＞最適化とかをしない怠慢な開発者とか…<br>＞…<br>＞収益を絞り出そうとする大量のトラッキングスクリプト<br>間近で見てると、開発者がa)に時間を使えないのは、b)みたいなことに時間を費やさなきゃいけないからってのが真実に近いと思うな。より良い体験を作りたいと思ってない開発者なんて会ったことないよ。でも、自分のコントロールできない理由でそれができない開発者にはたくさん会ったよ。<br>“開発者が気にすれば”って言うのは、完全に責任転嫁だよね。" userName="regularfry" createdAt="2025-04-01T09:10:00" color="#45d325">}}

{{<matomeQuote body="どっちもだよ。今のweb開発者の大半はクソだよ、はっきり言って。web開発で金儲けできると思って、エンジニアリングを芸術とか科学として見てないんだ。ただなんとかやり過ごして、仕事以外ではレベルアップしようとしないんだよ。<br>前に、開発者が自由に開発できたのに、メンテできない巨大なゴミアプリを作ったから、書き直したことがあるよ。<br>あと、Reactは悪夢。APIは変わり続けるし、新しいパラダイムに移行してない開発者を非難する文化があるし。大人向けのフレームワークなら、mithrilをチェックしてみて。小さくてAPIも安定してて直感的だし、邪魔にならない。" userName="soulofmischief" createdAt="2025-04-01T10:02:54" color="#45d325">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="それって、まとまりのあるビジョンが60%くらいあるって感じかな。まあ、ざっくりだけどね。0ってことはないと思うな。" userName="bryanrasmussen" createdAt="2025-04-01T11:24:59" color="">}}

{{<matomeQuote body="こういうのよくあるよね。<br>開発者: 「頼まれた画面作ったよー。見てみて、どう思う？レイアウトとか文言とか、何か変えるところある？」<br>PM: 「いいね！じゃあ、次だけど…」<br>開発者: 「ちょい待って！テストで入れたコード整理したいし、タイミングによっては副作用のあるループもあるんだよね。」<br>PM: 「問題ないでしょ。次行こうよ。」" userName="cbm-vic-20" createdAt="2025-04-01T11:26:42" color="">}}

{{<matomeQuote body="Balsamiqみたいなアプリの売りって、完成したページじゃなくて、スケッチっぽいものを見せられるってことじゃないの？<br>https://balsamiq.com/product/" userName="tonyedgecombe" createdAt="2025-04-01T12:04:49" color="">}}

{{<matomeQuote body="最初から作るならそうかもね。でも、成熟したアプリをメンテする時は違うよ。アプリとBalsamiqを同期させる時間も気力もお金もないもん。" userName="pmontra" createdAt="2025-04-01T12:29:51" color="#ff5c5c">}}

{{<matomeQuote body="＞どのサイトにもある、収益をできるだけ絞り出そうとする300個のトラッキングスクリプト<br>収益のためのトラッキングが必要で、議論の余地がないとするよ。 なんで「ONE scripts to rule them all」みたいなのがないんだろう？Segmentって会社があった気がするけど、ググってもそれっぽいのが出てこないな。" userName="ksec" createdAt="2025-04-01T11:10:02" color="">}}

{{<matomeQuote body="どっちも正しいと思うな。<br>1. Reactはもっと小さくて速くできるはず。今ならもっといい選択肢があるかも。<br>2. ウェブサイトは、新米開発者が多いのと、サイズやパフォーマンスに集中する時間がないせいで、必要以上に大きくて遅くなることが多い。Reactが人気ってことは、Reactが小さくて速くても、ウェブサイトは遅いままってこと。" userName="andrewingram" createdAt="2025-04-01T09:14:58" color="#45d325">}}

{{<matomeQuote body="なんでReactがもっと大きくて遅くなる必要があるの？成熟したプロジェクトで、プロの開発チームがいるんだから、無駄なものを削ってくれるって信じてるよ。そこにあるものは全部、何かの役に立ってるはず。セキュリティとか、安定性とか、互換性とか、拡張性とか、何かを犠牲にする覚悟がないなら、そういうこと言うべきじゃない。" userName="MartijnHols" createdAt="2025-04-01T09:29:09" color="">}}

{{<matomeQuote body="ReactとPreactを比べてみて。<br>https://preactjs.com/<br>Preactをよく使うけど、Reactの方が20倍も大きい理由になるような問題は、ほとんどないよ。" userName="afavour" createdAt="2025-04-01T11:41:45" color="#ff33a1">}}

{{<matomeQuote body="言いたいことはわかるけど、ちょっと大げさじゃない？うちの会社では、20個以上のウィジェットがあるSPAのダッシュボードがあって、全部リクエストして、2MB以上のJSを転送してるけど、2秒でロードされるよ。キャッシュは全部オフにしてるよ。フレームワークとかの問題じゃないんじゃない？" userName="jeffhuys" createdAt="2025-04-01T08:11:34" color="#ff5733">}}

{{<matomeQuote body="今度は、5年前のスマホで3G回線でパケットロスがある状態で試してみてよ。オフィスみたいな恵まれた環境じゃなくてさ。" userName="_Algernon_" createdAt="2025-04-01T08:15:35" color="">}}

{{<matomeQuote body="90年代育ちだから変に思われるかもだけど、ウィジェット付きのダッシュボードを表示するのに2MBのJSって、どうも納得いかないんだよね。" userName="InsideOutSanta" createdAt="2025-04-01T08:28:18" color="">}}

{{<matomeQuote body="それってJSだけの話じゃないんだよね。JSONとかCSSとか画像とか、全部含めたトラフィックの話だよ。それに、チャートもたくさん表示するし、金融系の人はチャートの機能にめっちゃうるさいんだから。全部入りじゃないと相手にされないんだ。" userName="jeffhuys" createdAt="2025-04-01T08:35:53" color="#45d325">}}

{{<matomeQuote body="そもそも、フレームワークって本当に必要なの？Pure JSで十分だし、JSなしならもっと良いじゃん。前にSAPのプロジェクトでJavaの層があって、その上にAngularのアプリがあったんだけど、結局SAPにリクエストばっかりしてたんだよね。リッチクライアントの必要性が不明で、PHPの方が良かったかもね。大企業はフレームワークでコーディングを統一して、開発者を替えやすくしてるだけじゃないかな。" userName="bambax" createdAt="2025-04-01T09:20:15" color="">}}

{{<matomeQuote body="＞フレームワークって本当に必要なの？<br>必要だよ。何千ものWebアプリで共通のAPIがあるメリットは議論の余地がないでしょ。" userName="j-krieger" createdAt="2025-04-01T09:21:55" color="">}}

{{<matomeQuote body="共通のAPIがあるメリットは議論の余地がないって言うけど、それってブラウザのことじゃない？議論すべきは、それよりも高いレベルのAPIが必要かどうかだよ。もし必要なら、それもブラウザのAPIの一部にすべきじゃないかな。" userName="onion2k" createdAt="2025-04-01T10:22:23" color="#ff5733">}}

{{<matomeQuote body="Pure JSがそのインターフェースじゃん…不要な抽象化レイヤーを重ねてるだけだよ。抽象化が多い＝使いやすい、じゃないからね。" userName="TickleSteve" createdAt="2025-04-01T09:55:13" color="">}}

{{<matomeQuote body="その通り。HTML、JS、CSSは関心の分離ができてて最高だよ。あとは、HTMLの繰り返しとか、ヘッダー、フッターをくっつけるテンプレートと、ルーティングがあれば完璧。HMRがあれば開発も捗るし。それがNueの肝だね。" userName="tipiirai" createdAt="2025-04-01T10:13:13" color="#38d3d3">}}

{{<matomeQuote body="＞HTML、JS、CSSは関心の分離ができてる<br>全然綺麗じゃないし、関心事がそんなに綺麗に分かれることなんてないよ。<br>＞アプリの場合<br>アプリなら、ちゃんとアプリっぽいものが必要で、関心の分離はこんな感じになるべきだよ：https://x.com/simonswiss/status/1664736786671869952" userName="troupo" createdAt="2025-04-01T12:37:43" color="">}}

{{<matomeQuote body="＞HTML、JS、CSSは関心の分離ができてる<br>＞<br>全然綺麗じゃないし、関心事がそんなに綺麗に分かれることなんてないって言うけど、めっちゃ綺麗だよ。UIフレームワークとかドキュメントシステムとか、みんな言ってるじゃん。構造、スタイル、インタラクションの分離だよ。Webアプリはドキュメントモデルに合うことが多いんだから。みんなデスクトップとかゲームのUIパターンを持ち込もうとするからおかしくなるんだよ。" userName="skydhash" createdAt="2025-04-01T16:55:24" color="">}}

{{<matomeQuote body="コメントにも書いたけど、クールなプロジェクトだけど、Reactの批判として提示するのは皮肉だよ。Reactはレンダリング層が必要で、残りは自分で書きたい人が選ぶんだよ。Vue/Astro/Nextを選ぶのは、モノリスなSSGが必要な人で、Nueのニッチだよ。Reactに勝てるレンダリングライブラリを作ったら、自慢してくれ。" userName="throwaway290" createdAt="2025-04-01T08:16:20" color="#ff5c5c">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="Reactの代わりにこれを使うらしいよ。<br>https://nuejs.org/docs/view.html<br>型がないViewレイヤーで、初期のAngular 2.0みたいな感じ。Modelファイルは普通のJavaScript。<br>どこにも型がないのは、Vue.jsの層をターゲットにしてるのかもね。マーケティングの方向性を少し変えた方がいいかも。Reactの人はViewレイヤーに型がある方が便利だからTypeScriptを使う人が多いし。" userName="davedx" createdAt="2025-04-01T08:31:25" color="">}}

{{<matomeQuote body="作者です。NueのViewレイヤーに型がないのは事実で、それは意図的なんだ。ReactのエコシステムはTypeScriptを何にでも使いたがるけど、それはやりすぎ。Nueは逆で、見た目はきれいでセマンティックに、Web標準が頑張って、静的型付け（RustとかGo）はビジネスロジックで活きるって考え。どう思う？" userName="tipiirai" createdAt="2025-04-01T08:50:21" color="">}}

{{<matomeQuote body="＞TypeScriptを何にでも使うのはやりすぎ<br>うわー、このフレームワークはまともな規模以上のプロジェクトじゃ絶対うまくいかないね。<br>TypeScriptでさえ問題があるのに。小さいチームで大規模なアプリを2つもTypeScriptで管理してるからわかる。PRの差分を読むときに型チェックされてると保証されてないと無理。" userName="tossandthrow" createdAt="2025-04-01T09:37:53" color="#45d325">}}

{{<matomeQuote body="それは言い過ぎだって。TypeScriptが普及する前から、JSで書かれた大規模プロジェクトはたくさんあったし、小規模チームや個人で管理されてたものもある。PythonやPHPでもそう。<br>個人的には型付き言語を選ぶけど、型がないと大規模プロジェクトは絶対に書けないってわけじゃない。" userName="mplanchard" createdAt="2025-04-01T12:23:32" color="">}}

{{<matomeQuote body="いや、できるのは確か。<br>でも、もっとお金がかかると思うよ。<br>予算内では無理って言っておくべきだったね（インフラからバックエンド、複数のフロントエンドまで全部2人くらいのフルタイムでやってるんだ）。" userName="tossandthrow" createdAt="2025-04-01T13:57:20" color="">}}

{{<matomeQuote body="それってフレームワークの問題じゃなくて、搾取されてるだけじゃない？" userName="Nijikokun" createdAt="2025-04-01T19:30:36" color="">}}

{{<matomeQuote body="＞Pythonで書かれた大規模プロジェクトはたくさんある<br>確かにそうだけど、扱うのがマジで大変なんだよね。<br>昔、ちょっと大きめのPythonのコードベースを触って、他の言語に移植したくなった。書いたのは数ヶ月前の自分なのに。<br>https://avi.im/blag/2023/refactoring-python/ で愚痴ってるよ。" userName="avinassh" createdAt="2025-04-01T17:15:32" color="#ff5c5c">}}

{{<matomeQuote body="なんで低評価されてるのかわからないけど、古くて型がないPythonプロジェクトは悪夢だよ。" userName="ddejohn" createdAt="2025-04-01T18:09:21" color="">}}

{{<matomeQuote body="短絡的すぎると思うな。一人でアプリを作るなら関係性とか依存関係を覚えてるだろうけど、小さいチーム（4人くらい）でも、しばらく経つと忘れることってあるじゃん。<br>LSPを使って名前を変えたり、壊れたものを修正したりできるのも良いよね。シンプルなWebサイトならいいけど、コンポーネントが増えてくると型がないのはマジで痛い。" userName="isqueiros" createdAt="2025-04-01T09:05:50" color="#38d3d3">}}

{{<matomeQuote body="作者が型がないのが特徴だって言うのは、興味をなくさせるための作戦かな。" userName="ko27" createdAt="2025-04-01T09:52:52" color="">}}

{{<matomeQuote body="マジレスすると、作者はどうかしてないよ。Svelteチームも数ヶ月前にJSDoc付きのJSに切り替えたし[0]。リポジトリのほとんどがJSでTSじゃない[1]。理由としては[2]、＞Svelteコンパイラ開発者として、ビルドステップなしでデバッグできると開発がめっちゃ楽になるんだって。以前はビルドステップありきでデバッグが大変だったんだよね。それに、JSDoc使ってもTSとほぼ同じ型安全性が保てるらしい。<br><br>この時は結構騒ぎになったんだよね。Rich Harris（Svelteチーム）もHNでコメントしてた[3]。開発界隈も「マジかよ」って思ったみたいだけど、Svelteは今んとこ問題なさそうだし、誰も気にしてないんじゃない？作者が型定義ファイルを出してくれれば、TypeScriptライブラリと変わらんと思うよ。" userName="CharlieDigital" createdAt="2025-04-01T11:10:46" color="#ff5c5c">}}

{{<matomeQuote body="投稿されたリンク[3]から引用すると、＞もしあなたがTypeScriptアンチで、この件で自分の立場が正しいと思ってるなら、残念なお知らせだよ。<br>RichとSvelteチームはJSDocと型定義ファイルを使ってTypeScriptを使ってるんだよね。Nueチームはview layerを型付けしないみたいだけど。親コメントの＞ビジネスロジックではRustやGoみたいな本物の静的型付けが活きるってあるけど、typescriptを”本物”の静的型付けだと思ってないんじゃないかな。" userName="unchar1" createdAt="2025-04-01T11:34:17" color="">}}

{{<matomeQuote body="TypeScriptはGo、Rust、C#みたいな”本物”の静的型付けじゃないんだよね。型情報はビルドした瞬間に消えちゃうし。<br>　function fn(x: string) {}<br><br>これは問題なく通っちゃう。<br>　fn(2)<br><br>ランタイムではね（だからZodとかValibotみたいなスキーマバリデーターが必要になるんだよね。開発環境の”静的型付け”は張りぼてだから）。＞RichとSvelteチームはTypeScriptを使ってるって言うけど。<br>正確に言うと、TypeScriptのバインディングを提供してるって感じかな。コードベース（実際に書いてるコード）は間違いなくJS[0]で、TypeScript用の`.d.ts`バインディングがある[1]。作者も同じようにして、後からTSバインディングを提供できるよ。" userName="CharlieDigital" createdAt="2025-04-01T11:42:11" color="#38d3d3">}}

{{<matomeQuote body="これはマジで問題だよね。もしスタック全体で、成熟した広く採用されてるフレームワークやライブラリがある言語を選べるなら、そうしてたよ。RustとかGo、Java、C#みたいなのがエンドツーエンドで動けば最高だったのに。実際、TypeScriptの弱い安全性でも、たくさんのバグを本番環境に持ち込む前に見つけられるから、価値があるんだよね。14万行以上のTypeScriptコードを本番環境で動かしてるけど、型がないと管理できないよ。" userName="tossandthrow" createdAt="2025-04-01T11:59:28" color="#38d3d3">}}

{{<matomeQuote body="＞14万行以上のTypeScriptコードを本番環境で動かしてるけど、型がないと管理できない。<br>SvelteチームはJSDocでそれを実現してるんだよね。GoogleのJSスタイルガイドも同じ理由でJSDocに力を入れてる[0]。ちょっと細かい話だけど、本番環境にあるのはJSで、TSは開発環境だけだよね。<br>＞Go、Java、C#みたいなのがエンドツーエンドで動けば最高だったのに。<br>できないわけじゃなくて、選んでないだけ（まあ、もっともな理由があるんだけどね）。C#（Blazorとか）のエンドツーエンドソリューションもあるし、ユースケースによっては全然ありだよ（すべてに最適ってわけじゃないけど）。FableもF#を使った例だね[1]。Bootsharp[2]みたいなライブラリも面白いことしてると思うし、OPのプロジェクトと同じようなエネルギーを感じる（型付けとロジックをランタイムがサポートするランタイムに移行して、JSとのインターフェースを最小限にする）。" userName="CharlieDigital" createdAt="2025-04-01T12:07:15" color="#785bff">}}

{{<matomeQuote body="＞本番環境にあるのはJSで、TSは開発環境だけ。<br>それは違うよ。うちはTSを本番環境で使ってるよ。JSにコンパイルされる部分でも、「C++を本番環境で使うことはできない。バイナリだけだ」とは言わないでしょ。プラットフォームの一部としてJSは一切書いてないよ。<br>＞できないわけじゃなくて、選んでないだけ<br>コメントで明確にしたと思うけど。<br>＞成熟した広く採用されてるフレームワークやライブラリがある言語をスタック全体で使いたい" userName="tossandthrow" createdAt="2025-04-01T13:39:14" color="">}}

{{<matomeQuote body="＞JSにコンパイルされる部分でも、”C++を本番環境で使うことはできない。バイナリだけだ”とは言わないでしょ。<br>それは言うよ。だってデコンパイルできるし、型情報も残ってるもん。C#も同じ。バイナリをデコンパイルすれば型情報が見える。「C++を本番環境で使ってる」とか「C#を本番環境で使ってる」とは言うけど、「TypeScriptを本番環境で使ってる」とは言わないかな。「TypeScriptでアプリを作ってる」なら正確だけど、それはJavaScriptにトランスパイルされるだけ。Node.jsサーバーがJavaScriptを解釈して、C++を実行するんだよね。" userName="CharlieDigital" createdAt="2025-04-01T14:10:36" color="">}}

{{<matomeQuote body="それは違うよ。バイナリにコンパイルする時、C++でも型消去するし、特にoフラグを使うと再構築できないものもあるよ。JSからTSにするのは簡単でしょ。全部に`: any`って書けばいいんだから。まあ、言葉遊びしてるだけだよね。" userName="tossandthrow" createdAt="2025-04-01T14:39:50" color="">}}

{{<matomeQuote body="TypeScriptは本物の静的型付けじゃないよね。コンパイルされたtypescriptプロジェクトはただのjavascriptで、間違った型でも受け入れちゃう。型が重要なのはコンパイル時だけ。" userName="mplanchard" createdAt="2025-04-01T12:25:25" color="">}}

{{<matomeQuote body="これこそが一番リアルな静的型付けだよ。”静的”っていうのはビルド時のことを指すんだ。定義上、静的型は実行時じゃなくてビルド時にチェックされる。もし実行時に型をチェックしたいなら、それは”動的”型付けって言うんだよ。" userName="recursive" createdAt="2025-04-01T17:50:19" color="#785bff">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="確かに技術的には正しいけどさー。TSってJSにコンパイルされるじゃん？で、JSは実行時に動的型付けになるんだよね。結局、動的型付けの言語にいるってことじゃん？<br>あと、普通の静的型付けのコンパイル言語だと、型が保証されないデータとやり取りするのって外部関数インターフェースだけじゃん。でもTypescriptだと、サードパーティのライブラリとのやり取り全部が普通のJS経由だから、型に合ってるかどうかわかんないんだよねー。" userName="mplanchard" createdAt="2025-04-01T18:43:13" color="">}}

{{<matomeQuote body="Svelteは悪い例だよ。<br>あの変更の前後で型チェックはほぼ同じだし。<br>あれは単に、どっちのシンタックスが好きかっていう美的センスの問題と、ビルドなしでブラウザで直接コードを実行したいっていう思想的なスタンスの問題でしょ。" userName="tshaddox" createdAt="2025-04-01T15:25:27" color="#ff33a1">}}

{{<matomeQuote body="「美的センスの問題」じゃないよー。<br>チームが言ってるように、デバッグとイテレーションのスピードを重視した機能的な選択なんだってば。" userName="CharlieDigital" createdAt="2025-04-01T15:26:37" color="#ff5733">}}

{{<matomeQuote body="JSDoc付きのJSって、結局Typescriptもどきって感じじゃん？" userName="IshKebab" createdAt="2025-04-01T12:10:56" color="">}}

{{<matomeQuote body="作者だけど言うねー。<br>型は大事だし、Nueでは本当に必要なところで使うのが良いと思ってる。<br>HTMLとかCSSみたいに、元々型がないところに型を足すのは、ただの無駄な重さになるだけじゃない？" userName="tipiirai" createdAt="2025-04-01T14:36:56" color="#ff33a1">}}

{{<matomeQuote body="HTMLもCSSも、もともと型がないわけじゃないよ。<br>むしろReactの型付けが足りない。<br>mossilaのドキュメントを見てよ。https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sp...<br>例えば＜span/＞はすべての要素を持てるわけじゃない。<br>もし型システムがこれを捉えられたら最高じゃない？" userName="tossandthrow" createdAt="2025-04-01T19:19:46" color="#785bff">}}

{{<matomeQuote body="もしそうなったら、多くのウェブ開発者は屋根に登って石を投げるんじゃないかなー。<br>HTMLをちゃんと理解して、セマンティックに要素を使わなきゃいけなくなるからね。<br>たぶん、多くのウェブコンポーネントも型チェックに通らなくなって、作り直すか、もっとシンプルな要素を使わざるを得なくなるだろうし。" userName="zelphirkalt" createdAt="2025-04-02T06:20:20" color="">}}

{{<matomeQuote body="昔は、閉じタグを書かなきゃいけないってなったら、フロントエンドの開発者たちは泣いてたと思うよ。" userName="tossandthrow" createdAt="2025-04-02T07:33:13" color="">}}

{{<matomeQuote body="＞Reactのエコシステムでは、開発者がTypeScriptを何にでも貼り付けていますーCSSにさえーそれはやりすぎです<br>「Reactを使っている人がCSSにTypescriptを使うからTypescriptを使わない」って、意味不明すぎない？" userName="mexicocitinluez" createdAt="2025-04-01T11:57:47" color="">}}

{{<matomeQuote body="自分の解釈を意味不明にするのは、マジ意味不明。" userName="ellinoora" createdAt="2025-04-01T15:28:06" color="">}}

{{<matomeQuote body="＞”ReactでCSSにTypescriptを使う人がいるからTypescriptは使わない”って言ってるんじゃないよ<br>あんたが勝手にそう解釈したんでしょ。OPは誰かがCSSにTypescript使ってるからTypescript使わないなんて言ってないってば。" userName="leptons" createdAt="2025-04-01T19:31:06" color="">}}

{{<matomeQuote body="お前の言う「ウェブ標準」ってのは何一つウェブ標準じゃないし、ウェブ標準じゃ「`nam` is not defined on object `user`」みたいな表示は無理。" userName="troupo" createdAt="2025-04-01T12:41:31" color="">}}

{{<matomeQuote body="頼むからChatGPTとか使うのやめてくれ。バレバレだし、信用度が90%下がる。多少変な英語でもいいから、そんな適当な文章読むよりマシ。マジで勘弁。ドキュメントも全部ChatGPTじゃん。マジで生身の人間なの？話してくれよ。" userName="jeffhuys" createdAt="2025-04-01T15:11:05" color="">}}

{{<matomeQuote body="＞Vuejsユーザーがターゲットかな？<br>VueはTSで書かれてて、テンプレートレベルでもファーストクラスのサポートがあるよ。" userName="epolanski" createdAt="2025-04-01T10:28:21" color="">}}

{{<matomeQuote body="Vue 3からだけど、型はまだReactほど良くないよね。" userName="IshKebab" createdAt="2025-04-01T12:09:31" color="">}}

{{<matomeQuote body="Vue 3はもう6年も経ってるけど。<br>あと、Reactより型が”まだ良くない”ってどういうこと？ 例を挙げて。" userName="epolanski" createdAt="2025-04-01T12:17:31" color="">}}

{{<matomeQuote body="残念ながら6年も前の話だから今は違うかも！(結局Reactに乗り換えたし)<br>たしかにかなり近いけど、Reactなら`string | undefined`って書くだけで済むところを、`{ type: String, required: false }`みたいに書く必要があった気がする。<br>もし今Vueを使ってたら、もっと色々問題点が見つかると思う。だってTypescriptを想定して作られた基盤の上に構築されてないからね。例えばこのスレッドを見て：https://www．reddit．com/r/vuejs/comments/l456fl/is_vue_3_real…" userName="IshKebab" createdAt="2025-04-01T14:10:23" color="#ff33a1">}}

{{<matomeQuote body="＞たしかにかなり近いけど、Reactなら`string | undefined`って書くだけで済むところを、`{ type: String, required: false }`みたいに書く必要があった気がする。<br>Vue 3から`string | undefined`って書けるよ。<br>あと、リンク先のredditのスレッドは4年前のものだよ。" userName="Timon3" createdAt="2025-04-01T14:36:17" color="#785bff">}}

{{<matomeQuote body="＞最近のReactユーザーはビューレイヤーでTypescriptの型が使えるのが超便利だからTypescript使ってる人が多いよね。<br>ほとんどの人がTypescriptを使ってるのは、Reactアプリがビジネスロジックと絡み合った20万行のコードに成長して、Typescriptなしでは管理できなくなったからだよ。違う方向に行けば、それほど必要なくなる。" userName="dlisboa" createdAt="2025-04-01T15:16:23" color="">}}

{{<matomeQuote body="Nueは良いよね。でもSvelteに投資しちゃったんだよねー。結構大きめのアプリ書いたんだけど、Reactを見直したらさ、意外と悪くないじゃんってなった。<br><br>- Hooks理解すればReactってそんな難しくない。<br>- 意外とReactも軽量。<br>- Reactはもう枯れた技術で安心。<br>- エコシステムがマジでかい。React Queryみたいなライブラリがあるのは強い。<br><br>だからしばらくReact使うわ。React compilerがFacebookとInstagramで使われてて、公開ベータも出るみたいだし。React Nativeも対応してるしね。SvelteのrunesはReact compilerには勝てないかも。runes使うとJavaScriptっぽくなくなるんだよね。React compilerのおかげでHooks地獄も減るし。" userName="wg0" createdAt="2025-04-01T09:50:14" color="#45d325">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
