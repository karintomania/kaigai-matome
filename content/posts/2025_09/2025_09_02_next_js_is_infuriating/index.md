+++
date = '2025-09-02T00:00:00'
months = '2025/09'
draft = false
title = 'Next.jsは最悪だと断言！開発者が『もう二度と使わない』と怒り爆発する理由とは？'
tags = ["Next.js", "React", "フロントエンド", "Web開発", "Vercel"]
featureimage = 'thumbnails/purple1.jpg'
+++

> Next.jsは最悪だと断言！開発者が『もう二度と使わない』と怒り爆発する理由とは？

引用元：[https://news.ycombinator.com/item?id=45099922](https://news.ycombinator.com/item?id=45099922)




{{<matomeQuote body="完全に同意！Next.jsは最悪で、二度と使わないし、他のチームにも使うのをやめるよう勧めるよ。Next.jsはほとんどのプロジェクトに不要な抽象化レイヤーが多すぎるんだ。僕が今まで使った中で一番ひどい技術だよ。" userName="YuukiRey" createdAt="2025/09/02 10:04:35" color="#ff33a1">}}




{{<matomeQuote body="Next.jsの荒削りなところはバグじゃなくて、むしろ意図的な機能だと感じてる。全部Vercelのホスティングを使わせるために設計されてるんだよね。" userName="jbreckmckye" createdAt="2025/09/02 11:00:55" color="#38d3d3">}}




{{<matomeQuote body="全く同感だね。Next.jsはさらに悪くなるだろう。今、PluralSightとかのオンラインコースがReact関連のほぼ全てのコースでNext.jsを推してるんだ。こんなひどい状況になったのは一体どういう考えからなのか、全然理解できないよ。" userName="motorest" createdAt="2025/09/02 12:12:08" color="#ff33a1">}}




{{<matomeQuote body="みんなが使ってるからって理由で、自分も使うって流れなんだろうね。" userName="felipeccastro" createdAt="2025/09/02 13:12:45" color="">}}




{{<matomeQuote body="「みんなが使ってるから」ってだけじゃない気がするな。Next.jsはcreate-react-appの後継としてreact.dev[1]でも推されてるけど、これは前提からして変だ。何かおかしなことが起こってるよ。<br>[1] https://react.dev/learn/creating-a-react-app" userName="motorest" createdAt="2025/09/02 14:29:21" color="#785bff">}}




{{<matomeQuote body="同じ意見の人がいて嬉しい！Next.jsでアプリ作ったけど、Pocketbaseだけが唯一良かった点だよ。無限の複雑さ、絶え間ない破壊的変更、意味不明なドキュメントで最悪だった。Next.jsはReactよりもひどい。GoとVanilla JSで作ったCMSはDXは劣るけど、何が起こるか予測できる。ReactとNext.jsでは6年経っても何が起こるか常に勘に頼ってる。なんでフロントエンドでこれができないんだ？" userName="throwaway77385" createdAt="2025/09/02 13:33:46" color="#45d325">}}




{{<matomeQuote body="代わりに何を使ったの？" userName="lysecret" createdAt="2025/09/02 11:00:41" color="">}}




{{<matomeQuote body="Next.jsの多くの抽象化やツールは、OSがもっとうまく、きれいに、そして予測可能にやってくれることをしてるんだ。ENVや.envの複雑なロード階層はWindowsがENV varsを持たない（持たなかった？）せいもあるかもね。inotify、ポート検出、スレッド管理もそうだけど、両OSで同じように動くようにするとNext.jsみたいな再発明の車輪と抽象化の山になっちゃうんだよ。" userName="berkes" createdAt="2025/09/02 10:23:13" color="#785bff">}}




{{<matomeQuote body="先月、クライアントのためにアフリカのエンジニアリンググループが作ったNext.jsのアプリに手を出したんだけど、Vercelのホスティングにべったりで他のどこでも動かせなかったよ。NPOだったからVercelを使う余裕がなくて、僕が動かそうとしたけど1週間格闘しても無理だった。「JavaScriptなんだからどこでも動くはず！」って思ったのが甘かったね。スパゲッティコードとライブラリの山を解きほぐせず、コンパイルは通っても出力は欠陥だらけでエラーも出ない。ツールチェーンからデプロイプラットフォームまで、とにかく変なことだらけだったよ。" userName="a2tech" createdAt="2025/09/02 13:07:48" color="#ff5733">}}




{{<matomeQuote body="最近のフロントエンド面接、面白かったよ。30分でReactプロジェクト作らせて、useStateやuseEffectの使い方を見てもらうんだけど、GoogleもChatGPTも使っていい。でもね、候補者の半分以上がNext.jsなしでReactを使えなくて、不可能だとまで言い張る人もいたんだ。信じられないだろ？" userName="whstl" createdAt="2025/09/02 14:36:13" color="#ff33a1">}}




{{<matomeQuote body="多分、基本的なReact経験を見てるんじゃない？だいたいどんな面接も、誰かにとっちゃダメに聞こえるもんだよ。で、君にはどんな面接がうまくいったんだい？" userName="recursive" createdAt="2025/09/02 16:05:35" color="">}}




{{<matomeQuote body="あれってReactの細かい部分のテストって感じだろ？フレームワークからランダムなピースを取り除いて、その周辺をどれだけ知ってるか、ってさ。フレームワークってデカくて複雑だし、運任せにしか思えないな。俺は最近、「これはChatGPTが作ったコードだけど、どこがダメ？どうする？」って質問してるよ。（実際にChatGPTが作ったかどうかは関係ないんだけどね）" userName="fragmede" createdAt="2025/09/02 16:15:26" color="#38d3d3">}}




{{<matomeQuote body="4年半、Next.jsとGraphQLでSaaSやってるけど、Pages Routerを使い続けたらほとんど複雑さが消えたよ。最近authをbetter-authっていう別サービスに書き換えたおかげで、Next.jsから完全に乗り換え始めてるんだ（React Router 7かTanstack Routerを検討中）。Next.jsはSSRを簡単にしてくれたけど、結局俺には必要なかったってオチ。マーケティングサイトは静的だし、アプリはクライアントレンダリングだからね。" userName="rozenmd" createdAt="2025/09/02 12:16:05" color="#ff5733">}}




{{<matomeQuote body="「数年前のコードベースもまだしっかりしてる」ってのが、俺には一番重要だね。最近、8年前の趣味のJava/Mavenプロジェクトを動かしてみたら、一発でコンパイルしてバッチリ動いたんだ。これを8年前のJavaScriptプロジェクトでやろうとしたら…想像してみてよ、絶対無理だろ？" userName="fourseventy" createdAt="2025/09/02 14:34:54" color="#ff33a1">}}




{{<matomeQuote body="JavaScript版のSpringって感じがするね。" userName="jimbokun" createdAt="2025/09/02 13:23:28" color="">}}




{{<matomeQuote body="みんなNext.jsに不満を言うけど、完璧な解決策なんてないんだよ。Nextで問題になる複雑さは、他の方法でも形を変えて出てくるんだ。Remixも競合だけど、それにも独特の癖がある。ViteやTanstack Routerなんかで自分で作ることもできるけど、結局は同じような機能を自分で実装することになるだけ。それはそれでニーズに合うかもしれないけど、みんなにベストな選択肢ってわけじゃない。" userName="nonethewiser" createdAt="2025/09/02 13:29:58" color="#38d3d3">}}




{{<matomeQuote body="＞Windowsには環境変数がない（なかった？）って？いやいや、WindowsはDOSの頃から、ちゃんと標準的な環境変数を持ってるんだよ。" userName="rcxdude" createdAt="2025/09/02 10:52:08" color="">}}




{{<matomeQuote body="Next.jsは、その荒い部分がバグじゃなくて機能で、Vercelのホスティングを使わせようとしてるって意見に同意だわ。SSRとかもスムーズに導入されるけど、Vercelにお金払わないとこのスムーズさは維持できない気がする。Reactエコシステム全体が企業に乗っ取られちゃったんじゃないかって心配だよ。どうなるか見てみよう。" userName="motorest" createdAt="2025/09/02 12:17:08" color="#45d325">}}




{{<matomeQuote body="今のWeb開発ってブログみたいなコンテンツサイトからECサイト、UXデザインや動画編集みたいな複雑なアプリまで、範囲が広すぎでしょ。こんな幅広いソリューションを全部同じ解決策でカバーしようとするのはナンセンスだよ。" userName="koonsolo" createdAt="2025/09/02 13:53:49" color="#ff5733">}}




{{<matomeQuote body="Bashみたいに`KEY=value ./myApp`って感じで、実行一回だけに変数スコープさせる機能が「足りない」ってことだな。WindowsのコマンドプロンプトやPowerShellだと、そういう風にはできないんだよな。" userName="colejohnson66" createdAt="2025/09/02 12:13:28" color="">}}




{{<matomeQuote body="完璧な解決策はフロントエンドにReact、バックエンドにPHP, Java, Rubyとかを使うことだよ。サーバーサイドReactなんて、いらん変な機能を追加するだけだ。VCが出資してるVercelはNext.jsをわざと単純にして、みんなからお金を取ろうとしてるんだ。この罠にはみんな気をつけなきゃいけないぞ。" userName="tacker2000" createdAt="2025/09/02 15:10:57" color="#38d3d3">}}




{{<matomeQuote body="SvelteKitが大好きなのは、自己ホストしやすいし、どこでもサーバーレスでホストできるからだよ。俺はCloudflareにホストしてるんだ。LLMの分野ではみんなNext.jsを推してるみたいだけど、SvelteKitでもすごいことできるし、SvelteKitを使ってる時が楽しいんだ。" userName="Imustaskforhelp" createdAt="2025/09/02 12:40:51" color="#ff5c5c">}}




{{<matomeQuote body="ちょっとやりすぎかもしれないけど、Cogent Core[0]ってのがあってさ。これはデスクトップ、モバイル、Webアプリ全部をサポートしてるんだ。2Dも3Dもいけるし、Goでバックエンドもフロントエンド（WASM使ってね）も全部できるんだよ。 <br>[0] https://github.com/cogentcore/core" userName="tankenmate" createdAt="2025/09/02 14:23:29" color="#45d325">}}




{{<matomeQuote body="なんでだよ？MicrosoftのGUIフレームワークもAppleのも、Webブラウザが出てくる前からいろんなユースケースをカバーしてたじゃんか。" userName="fragmede" createdAt="2025/09/02 15:29:08" color="">}}




{{<matomeQuote body="完全に分離させたいなら、`cmd /C ”set KEY=value && ./myApp”`もそこまで悪くないぜ。" userName="amonith" createdAt="2025/09/02 12:33:50" color="">}}




{{<matomeQuote body="Win32やMFCがそんなにすごかったんなら、なんでHTMLはあんなに人気になったんだろうね？" userName="koonsolo" createdAt="2025/09/02 16:54:45" color="">}}




{{<matomeQuote body="覚えておいてほしいんだけど、Next.jsは最新のReact機能の一部をサポートできる唯一のフレームワークなんだ。だから多くの人にとっては、”みんな最新のReact機能が欲しいはずで、それを手に入れる唯一の方法がNext.jsなら、みんなNext.jsを欲しがるはず”っていう単純なロジックなんだよ。" userName="hungryhobbit" createdAt="2025/09/02 14:38:17" color="">}}




{{<matomeQuote body="問題の半分は、コードがどこで動いているのかという誤解から来てるんだ。Next.jsはブラウザ、ミドルウェア、Edge、Node.js、SSRが絡み合ってて、ものすごく複雑なんだよ。だから、本当に合うのは特定の状況だけ。<br>例えば、グローバルなB2C製品を売っててEdgeがレイテンシを改善する、Vercelに高い金を払ってホスティングしてもらう、バックグラウンド処理がいらない場合、とかね。そうじゃないなら、React-Vite SPAかRailsみたいな普通のSSRで十分だよ。" userName="solatic" createdAt="2025/09/02 08:42:37" color="#ff5733">}}




{{<matomeQuote body="成熟したやり方でSPAを書くべきだよ。APIはそれに合った言語とフレームワーク（Rails、Spring、今年のMicrosoftの.NETウェブ技術とか、何でもいいよ）で書いて、フロントエンドはTypeScriptで書くべき。2015年に”isomorphic”って言葉を覚えたJavaScript開発者が多いけど、フロントエンドとバックエンドを密結合させる理由は全くないんだ。" userName="mvdtnz" createdAt="2025/09/02 09:39:10" color="#ff5733">}}




{{<matomeQuote body="俺にとっては、フロントエンドとバックエンドを同じ言語でモノレポにするのが、めちゃくちゃ生産性向上につながるんだ。もちろん、フロントエンドとバックエンドでチームが別なら逆も真だけど、とにかくリリースしたいなら、これ以外の方法は考えられないね。" userName="matt-p" createdAt="2025/09/02 11:07:46" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="コードがどこで動いているかの誤解って話だけど、JavaScriptがどこでも使えるのはメリットだと思ってたけど、今は悪いアイデアだと思ってるよ。うちの会社はInertia.jsとVueを使ってるんだけど、かなり良い体験だよ。モダンなフロントエンドの全てのパワーは得られるのに、アーキテクチャははるかにシンプルなんだ。ルーティングは100%サーバーサイドだし、一般的なAPIは必要ない。<br>うちは最初Nuxtを試したんだけど、ひどいもんだった。バックエンドサーバーとフロントエンドサーバーの2つになっちゃって、コードがどこで動いてるか訳わからなくて複雑すぎたんだ。今はすごくシンプルだよ。PHPならサーバー、JSならブラウザ。これを疑う必要がないのが、めちゃくちゃ助かってる。" userName="ncphillips" createdAt="2025/09/02 10:58:54" color="#ff33a1">}}




{{<matomeQuote body="Vercelは、資金難に苦しむ多くのオープンソースプロジェクトに資金提供やスポンサーをしてるんだよ。彼らのフレームワークがプラットフォームに合わせて作られてるのは、それが良い体験になるから。俺は今使ってないけど、良い開発者体験だからみんな有料プランに流れてるんだ。彼らが営利企業で独自の動機があるのは認めるけど、”現代ウェブのガン”ってのは言い過ぎだと思うな。" userName="oompydoompy74" createdAt="2025/09/02 12:55:47" color="">}}




{{<matomeQuote body="コードがどこで動いているかの誤解って話だけど、他の言語を見ると、こういうマルチスレッドの問題は通常、標準ライブラリで別のコンテキストや同期パッケージ（ミューテックスやアトミック処理を扱うもの）を提供することで表現されてるんだ。Node.jsやブラウザ側のJS環境には、こういう落とし穴にはまらないようにする標準ライブラリが完全に欠けてるんだと思う。それが下流のパッケージやライブラリの品質を向上させるためにも必要なんじゃないかな。" userName="h4ck_th3_pl4n3t" createdAt="2025/09/02 09:41:31" color="#ff33a1">}}




{{<matomeQuote body="App Routerはコードがどこで動いてるか分かりにくいのが問題だよな。Pages Routerならこんなことなかったのに。" userName="rco8786" createdAt="2025/09/02 12:33:54" color="#38d3d3">}}




{{<matomeQuote body="同感。ボタンのパディング変えるだけで、バックエンド全体が再デプロイされるとかマジありえないだろ。" userName="b_e_n_t_o_n" createdAt="2025/09/02 10:13:58" color="#ff5733">}}




{{<matomeQuote body="Vercelはインフルエンサーをうまく使ってバズってるけど、そのせいで悪い評判も出てるんだよね。インフルエンサーってウザいけど、マーケティングには必要な悪みたいなもんか。" userName="rustystump" createdAt="2025/09/02 15:33:57" color="">}}




{{<matomeQuote body="僕はそうは思わないな。フロントとバックエンドを同じ言語で書けるのはめちゃくちゃ便利だよ。もう前のやり方には戻りたくないね。Django使ってた時、JavaScriptとPythonで全部重複させるのが本当に大変だったからさ。" userName="zarzavat" createdAt="2025/09/02 10:47:12" color="#ff5733">}}




{{<matomeQuote body="フルスタックでリッチなスキーマは、長期的な品質と開発速度にめちゃくちゃ貢献するんだよ。ZodとかArkType、Valibotは全部すごい。" userName="webdevladder" createdAt="2025/09/02 11:54:44" color="">}}




{{<matomeQuote body="コードの実行場所が分かりにくいって？ファイルの先頭にある”use client”を探せばいいだけだろ。" userName="robertoandred" createdAt="2025/09/02 16:30:20" color="#ff5733">}}




{{<matomeQuote body="その状況に同意はできないね。仮にNext.jsと合致したとしても、生産性や保守性の低下に見合うものじゃない。僕はGleamのLustreを使ってて、もう後戻りできないよ。Elmの創業者がNext.jsとは真逆のケーススタディを発表してるから見てみて。https://www.youtube.com/watch?v=sl1UQXgtepE" userName="oDot" createdAt="2025/09/02 09:32:10" color="#45d325">}}




{{<matomeQuote body="”PHPならサーバー、JavaScriptならブラウザ”っていう明確な区別が便利だったって？<br>言語切り替え、特にPHPとの間でコンテキストスイッチする方がよっぽど大変だろ。strlen($var)かvar.lengthかmb_strlen($var)かとかさ。JavaScriptをPHPから出力するの？あと、JavaScriptとPHPでロジックの重複をどう避けるんだよ？特にバリデーションとか。Next.jsならその問題から解放されるんだ。" userName="fragmede" createdAt="2025/09/02 15:40:51" color="#785bff">}}




{{<matomeQuote body="そうなんだよな。VercelはReact Server Components、Partial Pre-rendering、Edge servers、ストリーミングなんかを駆使して、パフォーマンスを最適化しようとしてるんだ。Next.jsの変に見える設計やAPIの決定は、ほとんどがその目的から来てる。必要なら便利だけど、Edge functionでSSRするだけでも結構いけるからね。" userName="b_e_n_t_o_n" createdAt="2025/09/02 09:05:03" color="#ff5c5c">}}




{{<matomeQuote body="モノレポはどんな技術スタックでもできるよ。フロントエンドとバックエンドを同じ言語で書くこともできるしね。君の生産的なセットアップに文句はないけど、Next.jsがフロントエンドとバックエンドを密接に結合させるのは間違いない事実だ。" userName="happimess" createdAt="2025/09/02 12:03:55" color="#785bff">}}




{{<matomeQuote body="SPAなんて書かなくていいんだよ。バックエンドからハイパーメディア送って、HTMX + AlpineとかDatastar使えばそれでOKじゃん。" userName="nchmy" createdAt="2025/09/02 11:59:59" color="#ff5733">}}




{{<matomeQuote body="バックエンド開発者なんだけど、イベント用の一時的なサイトを作るのにフロントエンドを学ぼうと思ってさ。<br>20種類のフレームワーク見てSSRとかCSRで混乱した結果、Nuxtを選んだんだ。Vueアプリが簡単になると思ってたけど、めちゃくちゃ間違いだったよ。<br>SupabaseとVercelと連携したら、いろんな問題にぶつかって、Squarespaceで作り直そうかと思ったくらい。" userName="makestuff" createdAt="2025/09/02 13:08:42" color="#45d325">}}




{{<matomeQuote body="まるで中間管理職の言い草だな。<br>誰がPHPからJavaScriptを送るんだ？JSONの翻訳とかヌルチェックの重複なんて気にする意味ある？<br>今の時代、全部コードなんだからさ。言語を変えるって？ほとんどのJSはそのまま使えないし、split()みたいな簡単なものでも変なバグが多いから、みんな結局ユーティリティライブラリからコード使うんだよ。" userName="1oooqooq" createdAt="2025/09/02 17:42:26" color="#ff33a1">}}




{{<matomeQuote body="これって、何年にもわたる履歴書と仕事の安定を追い求めた開発の最終産物なんじゃないかな。" userName="cluckindan" createdAt="2025/09/02 10:17:59" color="">}}




{{<matomeQuote body="じゃあHTMLは？JavaScript経由でHTMLを書いてるの？<br>そうじゃないなら、もうすでに複数の言語を使ってるってことじゃん。" userName="turtlebits" createdAt="2025/09/02 17:16:43" color="">}}




{{<matomeQuote body="OPじゃないけど、記事はasync/awaitのコンテキスト問題についてじゃなかった？<br>もしミドルウェアAPIのhandle()メソッドがcontext.Contextパラメータを提供してたら、記述されてるデバッグ問題のほとんどは解決してたと思わない？" userName="cookiengineer" createdAt="2025/09/02 10:48:56" color="#45d325">}}




{{<matomeQuote body="“use client”の挙動は複雑で、初期レンダーはサーバーだし、子コンポーネントにも継承されるから、“use client”を探すだけじゃダメだよ。公式ドキュメントの説明も難解で、いつ、どこで何がレンダーされてるのか理解するのがめちゃくちゃ大変！特にRSC Payloadによる「調整」とか、プリフェッチ・キャッシュの裏側とか、Next.jsのレンダリングモデルは本当にわかりにくいんだ。" userName="rco8786" createdAt="2025/09/03 13:19:01" color="#785bff">}}




{{<matomeQuote body="これってWeb開発に内在する問題なんじゃないかな。JavaScript開発者たちは型システムを手にして、強力な型チェックでネットワーク呼び出しを改善できると考え、プログラミングの頂点に達したと思ったんだ。<br>でも、ある時点で、もうWebアプリじゃなくて、不安定で不正確なランタイムで、速度もなく多くの欠点があるアプリを書く方がマシになる。<br>Webの最も根本的な部分である相互運用性も失われるしね。<br>他の言語を特定のオブジェクト方言に合わせることはできるだろうけど、他の型システムを悩ませる問題は、君のシステムでも悩ませるだろうね。<br>結局、何もないと砂に頭を突っ込んで主張しても、何も良くならないんだよ。" userName="smaudet" createdAt="2025/09/02 12:17:00" color="#ff5c5c">}}




{{<matomeQuote body="違うよ。インフルエンサーじゃなくて、ベンチャーキャピタルに支援されてるVercelのビジネスプランが問題なんだ。<br>彼らは主要なWebフレームワークのコアコントリビューターを雇って、自社内で開発を続けさせてる。だから、Webプラットフォームの継続的な改善は、Vercelの投資家たちの気まぐれに大きく左右されるんだ。<br>彼らは全てのホスティングプロバイダーに平等に対応してるふりをするけど、Next.jsを見てみろよ。常にVercel向けに作られてる。NuxtやSveltekitもいつかこうなるのかな？<br>Vercelは今やSSR市場全体で戦略的な動きができる立場にある。その力を使うかどうかにかかわらず、その力を振るう立場にあること自体が問題なんだよ。<br>こんな状況が良い結果を生んだことなんてないし、これからもないだろうね。" userName="9dev" createdAt="2025/09/02 20:09:06" color="#ff5c5c">}}




{{<matomeQuote body="最初のカテゴリに当てはまるとしても、VercelとSSRでパフォーマンスボトルネックが解決するとは思えないな。みんながやってるような巨大なバンドルサイズや遅いAPIコールを考えると、プロファイリングや最適化、簡素化といった基本の方が、複雑なアーキテクチャに変えるよりよっぽど効果的だよ。" userName="vendiddy" createdAt="2025/09/02 08:51:16" color="#785bff">}}




{{<matomeQuote body="”Next.jsはフロントとバックエンドを密結合させる”って意見は間違ってると思うよ。Next.jsサーバを直接DBに繋ぐ必要なんてなくて、内部APIと連携させればいいんだ。モノレポで管理したり、最適化されたペイロードやレンダリングキャッシュにだけ使ったり、ほぼ純粋なSPAとしてNextをクライアントコンポーネントの提供だけに使うこともできるしね。結合の密着度は実装者次第だよ。" userName="evilduck" createdAt="2025/09/02 15:31:45" color="#ff5733">}}




{{<matomeQuote body="フィードバックありがとう。MiddlewareのDXの問題はよく分かってるよ。Next.js 15.5でNode runtimeのサポートを大きく進めて、多くの報告された問題を解決したんだ。昔に戻れるなら、”ルーティングMiddleware”か”ルーティングハンドラ”って呼んだだろうな。ログの話だけど、計測と可観測性のためにOpenTelemetryを採用してて、`instrumentation.ts`っていう規約があるよ。<br>https://nextjs.org/blog/next-15-5#nodejs-middleware-stable<br>https://nextjs.org/docs/app/api-reference/file-conventions/i..." userName="Rauchg" createdAt="2025/09/02 08:31:50" color="#ff5c5c">}}




{{<matomeQuote body="返信ありがとう。でも…OpenTelemetryを採用したってことは、扱いにくいログ機能の答えが、さらに複雑なレイヤーを追加することってこと？きっと全てのアプリにOpenTelemetryが必要なわけじゃないよね。なんで`logger().info()`がまともに動かないのさ？こんな難しい問題じゃないはずなのに、他の言語やフレームワークはみんなできてんじゃん！" userName="throwaway150" createdAt="2025/09/02 09:02:16" color="#ff5733">}}




{{<matomeQuote body="”なんで`logger().info()`がまともに動かないのさ？”って話だけど、OpenTelemetryはベンダーフリーでかなり合理的だと思うよ。デバッグモードならコンソールエクスポーターも使えるしね。<br>Next.jsがプロダクションレベルのアプリを簡単に作れるフレームワークとして設計されてるなら、OpenTelemetryで可観測性を標準化するってのは価値のあるトレードオフじゃないかな？それがやりすぎだと思うなら、たぶんNext.jsのターゲット層じゃないのかもしれないよ。<br>https://opentelemetry.io/docs/languages/js/exporters/#consol..." userName="conor-" createdAt="2025/09/02 14:42:05" color="#38d3d3">}}




{{<matomeQuote body="ネガティブな意見が多いけど、Next.jsはやってることに見合って本当に素晴らしいよ。数百万のウェブサイトを動かしてるのはすごい。ただ、ネガティブなのは詳細なドキュメントやリファレンスがほとんどないからじゃないかな。ドキュメントは「何があるか」は伝えるけど、「どう使うか」や「よくある落とし穴」が足りないんだ。初心者には優しいけど、APIの実行コンテキストやサーバ環境でのReactの複雑さについて詳細が欠けてる。良いドキュメントは難しいけど、引き続き頑張って！" userName="arnorhs" createdAt="2025/09/02 11:03:16" color="#38d3d3">}}




{{<matomeQuote body="8年も経つフレームワークなのに、もうバージョン15.xに達してるって問題だと思わない？もしセマンティックバージョニングに従ってるなら、15回も後方互換性のないアップグレードがあったってことになるよね？" userName="mhitza" createdAt="2025/09/02 11:18:57" color="">}}




{{<matomeQuote body="やっとまともなサーバサイドMiddlewareをサポートすることにしたんなら、なんでMiddleware関数が一つしか使えないって制限があるんだ？他のちゃんとしたサーバ実装はみんなMiddlewareのチェーンを提供してるじゃん！" userName="rozumbrada" createdAt="2025/09/02 09:06:16" color="#ff5c5c">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="`middleware.ts`をルートMiddlewareだって考えればいいんじゃないかな。その中で自分でMiddlewareチェーンを作るのは簡単だし、何も問題ないよ。Next.jsがその機能を実装したとしても、結局どこかにルートがあるわけで、同じように動くはずだよ。" userName="bestest" createdAt="2025/09/02 09:23:13" color="">}}




{{<matomeQuote body="なんでNext.jsみたいな重いツールが必要なの？PHPのMonologみたいに、ほとんどのフレームワークには最初から強力なロガーがあるのにさ。" userName="tacker2000" createdAt="2025/09/02 15:21:36" color="">}}




{{<matomeQuote body="それじゃ前の質問に答えてないじゃん。みんな「ミドルウェア」が特定の意味を持つことや、特定の動作をすることに期待してるんだよ。" userName="rs186" createdAt="2025/09/02 10:01:18" color="">}}




{{<matomeQuote body="Next.jsを簡単に動かしたり監視したりさせないのは、彼らの利益にならないからだよ。それが難しいからこそ、みんな彼らのプラットフォームを使うことになるんだ。目標はスタックを複雑にして、Next.jsを自分で使うのを難しくする、見栄えの良い事前最適化を提供することだね。" userName="specialp" createdAt="2025/09/02 16:28:56" color="#785bff">}}




{{<matomeQuote body="OTELの何が具体的に重いんだ？OTELはログの標準と収集の標準だろ。重さは実装次第で変わるよ。PHPのMonolog用ハンドラーもあるし、両立できるんだ。詳しくはこちら: https://github.com/open-telemetry/opentelemetry-php/blob/main/examples/monolog/README.md" userName="conor-" createdAt="2025/09/02 20:40:34" color="#785bff">}}




{{<matomeQuote body="ミドルウェアは `fn(req) → next(req)` の形だよ。ExpressやKoaみたいなフレームワークにはチェーン機能があるけど、Next.jsでは自分でチェーンを組めばいいだけだ。具体的なTypeScriptのコード例も紹介してくれてるよ。ルートは決まってるから、チェーンの実装は簡単だって言ってるね。" userName="bestest" createdAt="2025/09/02 10:14:27" color="#ff33a1">}}




{{<matomeQuote body="Next.jsアプリのセルフホスティングは詳しくないけど、k8sにデプロイするなら、OpenTelemetryコレクターのサイドカーを動かすのは難しくないよ。Prometheusスクレーパーでログやメトリクスを収集するのと同じで、APM、ログ、トレースをOTLPフォーマットで一元管理できるんだ。" userName="conor-" createdAt="2025/09/03 23:37:36" color="#ff5733">}}




{{<matomeQuote body="この記事の著者は、ドメインの違いを理解せず、どこでも同じ関数呼び出しを適用しようとしてるね。それはうまくいかないよ。Next.jsの誤りは、本質的に違うドメインを混ぜようとすることだ。これをやめれば大丈夫。エッジとSSR、Nodeとクライアントサイドを混ぜるのは混乱のもとで、結果的にフレームワークが複雑になるだけだよ。" userName="bestest" createdAt="2025/09/02 09:48:14" color="#785bff">}}




{{<matomeQuote body="Next.jsは使ったことないんだけど、ほとんど自動でコードを修正して移行してくれるツールがあるみたいだね。コマンドは `npx @next/codemod@canary upgrade latest` だって。" userName="conradkay" createdAt="2025/09/02 17:03:52" color="">}}




{{<matomeQuote body="それじゃ、ドメインを混ぜるのが重要なReact Server Componentsも好きじゃないってことになりそうだね。" userName="presentation" createdAt="2025/09/02 12:06:31" color="#ff5733">}}




{{<matomeQuote body="あのミドルウェアの実装は全然簡単じゃないよ。どこにミドルウェアがあるか管理しないといけないし、`reduceRight`も分かりにくい。僕はフレームワークが、そういう面倒な部分を標準化して、使いやすくしてくれることを期待してるんだ。だからフレームワークを使うんだよ。" userName="rafaelmn" createdAt="2025/09/02 11:10:32" color="#38d3d3">}}




{{<matomeQuote body="k8sを持ち出すと彼らの主張を裏付けてるじゃん。ロギングはもっと死ぬほど簡単であるべきで、ほとんど何も設定せずできるべき。sidecarコンテナなんて知る必要ないんだよ。" userName="camdenreslink" createdAt="2025/09/04 16:39:34" color="">}}




{{<matomeQuote body="そう、でも例えばテキストファイルにログる代わりにOTELが必要なんだ。それが俺の言いたいこと。Monologにこのツールのハンドラーがあるのは関係ないけど、複雑なレイヤーが一つ増えたってことだよ。" userName="tacker2000" createdAt="2025/09/03 17:25:20" color="#45d325">}}




{{<matomeQuote body="使いやすさと詳細さのバランスを取るのは難しいね。ドキュメントは初心者には優しいけど、APIの実行コンテキストやサーバ環境でのReactの複雑さについては詳細が足りてない。Edge runtimeの扱いもそう。この点についてはアップデートするよ。ドキュメントは存在するものは教えてくれるけど、使い方や落とし穴は教えてくれないって指摘、他にも例ある？revalidateTags/PathsとかuseSearchParamsとかは改善してきたんだけど。問題が無視されてるって話もあるけど、それは変わりつつある。何か見つけたらドキュメントのissueを開いて教えてくれ。ここ数ヶ月で対応してるから。" userName="icyJoseph" createdAt="2025/09/02 11:22:11" color="#ff5c5c">}}




{{<matomeQuote body="ドメインを混ぜるのはいいけど、フレームワークが無能なせいで一部のレベルでロギングできないのはダメだね。" userName="hungryhobbit" createdAt="2025/09/02 14:42:04" color="">}}




{{<matomeQuote body="OpenTelemetryの設定がマジで大変だったよ。Next.jsでOTELをセットアップするのに、似たような時間を費やしたと思う。実験的ってマークされてるパッケージが多いのも不安だった。pinoのインストゥルメンテーションを動かすのにも苦労したよ。pinoをserverExternalPackagesに追加しないとダメだし、自動インストゥルメンテーションはimportの順序にめちゃくちゃ敏感なんだ。あとpinoのデフォルトエクスポートだけがインストゥルメントされるんだよね。モジュールローカル変数も期待通りに動かず、globalThisを使う羽目になった。それと、この問題にもぶち当たったよ: https://github.com/vercel/next.js/issues/80445。動くには動いたけど、セットアップは最悪だったよ。" userName="dminik" createdAt="2025/09/02 15:10:52" color="#38d3d3">}}




{{<matomeQuote body="でもそれって別にOTELが重いって意味じゃないよ。確かに余計なレイヤーだけど、複雑じゃないし、一度設定すれば後は他のロギングと変わらない。ローカルでテキストファイルにログってもいいけど、Next.jsみたいにクラウド（多分サーバレス）にデプロイする前提だと、テキストファイルにログるだけって選択肢は事実上ないんだ。だからOTELがo11yのOOTBサポートされてる方法としてあるのは、DatadogやNew Relicみたいなベンダー固有のゴミに吸い込まれるよりずっとマシだよ。" userName="conor-" createdAt="2025/09/03 23:34:34" color="#ff5733">}}




{{<matomeQuote body="ほとんどのアップグレードはかなり楽だったよ。DependabotでCIが通ってマージされるってわけじゃないけど、だいたいは自動codemodを実行すれば終わり。リリースノートと移行ガイドはいつも確認するけどね。うちのアプリケーションの基盤としては、それくらいは当然の作業だと思ってる。" userName="Vinnl" createdAt="2025/09/02 12:09:07" color="">}}




{{<matomeQuote body="「死ぬほど簡単」ってのは、ターゲットと方法によって全然違うよ。制御できないハードウェアや複数インスタンスでクラウドデプロイするなら、OTELはかなりシンプルだね。インスタンス追跡とか相関IDとか、無料でたくさん得られるから。もし複数の場所にデプロイされるサービスで「死ぬほど簡単」なテキストベースのロギングをしたいなら、ほとんどのOTELドライバーが提供するログ相関機能と同じものを得るために、たくさんの無駄なコードを書くことになるだろうね。だから、単一のVPCにデプロイされるモノリスなアプリを構築してるなら「多分このフレームワークは君には合わない」ってことになるけど、分散型やレプリケートされたものに取り組む状況なら、OTELは過去のベンダー固有の代替品と比べてもかなりシンプルだよ。" userName="conor-" createdAt="2025/09/04 22:03:18" color="#38d3d3">}}




{{<matomeQuote body="そう思うよ、だからまだ不安定で、年に2回もメジャー変更があるんだ。" userName="brazukadev" createdAt="2025/09/02 12:57:59" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
