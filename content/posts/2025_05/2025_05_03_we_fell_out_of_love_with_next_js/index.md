+++
date = '2025-05-03T00:00:00'
months = '2025/05'
draft = false
title = 'Next.jsとは別れRuby on Railsにまた惹かれてしまった'
tags = ["Next.js", "Ruby on Rails", "SSR", "SPA", "開発者体験"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> Next.jsとは別れRuby on Railsにまた惹かれてしまった

引用元：[https://news.ycombinator.com/item?id=43881035](https://news.ycombinator.com/item?id=43881035)




{{<matomeQuote body="俺の意見だけど、SSRって消えてなかったし、ウェブがまたその良さを思い出した感じ。<br>最初の表示やSEOはサーバーからの方が良いし、Rails+TurboとかHTMX、Phoenix LiveView、React Server ComponentsみたいなFWもSSRを基本にしてるんだ。<br>ほとんどのアプリはクライアント側でゴテゴテせず、部分的なHTML更新で十分って分かったんだよね。<br>JSの複雑さやツール、セキュリティリスクを減らすのがホントの理由。<br>FigmaとかGmailみたいな例外はあるけど、基本は「HTMLで、JSは必要なとこだけ」っていうアイランド思考になってきてる。<br>これは昔に戻るんじゃなくて、JSを適正化してHTMLの得意なとこに任せようってこと。" userName="thembones" createdAt="2025/05/03 19:34:41" color="#ff33a1">}}




{{<matomeQuote body="サーバー側でアイランドとかFW使う方が、静的アセットとnginxで作るSPAより複雑になることもあるよ。<br>ツール周りも結局BEに移動しただけだし。<br>SEOとかファーストペイント気にしないサイトも多いから、そこメリットじゃないって反論できるんだ。<br>正直、APIが必須な時とかは、SPAの方が複雑さを減らせると思う。<br>DXもホットリロードとかあって圧倒的に良いしね。<br>Next.jsにみんな飛びつくのはReactのゴリ押しでしょ、微妙なプロダクトなのに。" userName="qudat" createdAt="2025/05/03 19:49:31" color="#ff5c5c">}}




{{<matomeQuote body="「DXはホットリロードとかで断然良い」って言うけど…<br>ユーザーとしては、普通のSPAは体験悪いよ。<br>テキストがちょっと表示される前に、空白ページにプログレスバーがグルグル回ってること多いし。" userName="0cf8612b2e1e" createdAt="2025/05/03 20:30:13" color="">}}




{{<matomeQuote body="俺は同意しないな。<br>SPAの問題は、状態を管理するとこが2つ（バックエンドとフロントエンド）になることだよ。<br>それが原因で、両者でズレが生じてバグる可能性がめっちゃ増えるんだ。" userName="stavros" createdAt="2025/05/03 20:23:06" color="#ff5733">}}




{{<matomeQuote body="でも逆に言えば、バックエンドはJavaScriptに縛られずに、好きな言語で書けるってメリットもあるけどね。" userName="freeone3000" createdAt="2025/05/03 19:59:11" color="">}}




{{<matomeQuote body="「ユーザーとしてSPAは体験悪い」って意見ね。<br>普通のSPAは無駄な通信が多いんだよね。<br>SSRは余計な通信ないけど、HTML swapみたいな方法でSPAっぽい体験でそれを避けることもできる。<br>vDOM diffingの計算負荷も問題だけど、SvelteやSolid JSみたいなのを使えば解消できるし。" userName="zozbot234" createdAt="2025/05/03 20:34:52" color="#ff33a1">}}




{{<matomeQuote body="DXツールへの執着こそが、JSの開発体験を最悪にしてる理由だよ。<br>常にちょっと良いものを追い求めてて、コロコロ変わる。<br>もしかしたら、JSがフロントエンド全部を食い尽くすこと自体が間違いだったのかも。<br>ツールを変えても良くならないのは、いつもウェブにとってホントに良いものを避けてるからだよ。" userName="dmix" createdAt="2025/05/03 21:00:07" color="#ff5733">}}




{{<matomeQuote body="でもさ、最も基本的な体験以外を求めるなら、SPAになる前からフロントエンドで状態管理しなきゃいけなかったじゃん？" userName="procaryote" createdAt="2025/05/03 20:33:33" color="">}}




{{<matomeQuote body="JS/TSで別に良いじゃん。<br>なんで言語とかフレームワークとかデータモデルとか…いちいち行ったり来たりするの？" userName="sroussey" createdAt="2025/05/03 20:29:31" color="">}}




{{<matomeQuote body="「FigmaとかGmailみたいなアプリには、重いクライアントロジックが必要」っていうのは図星だと思う。<br>俺が丁寧にあんたの考えに反対するのは、アプリがずっと小さいままって前提だからだよ。<br>アプリはどんどん大きくなるんだ。<br>今小さいからって「Pure JSでいい」って人もいるけど、5000行とか超えたら結局FWとTypeScriptで書き直すハメになる。<br>最初から無限にスケールできるやり方で始めた方が、壁にぶつからなくて済むよ。" userName="quantadev" createdAt="2025/05/03 19:44:57" color="#45d325">}}




{{<matomeQuote body="DXツールへの執着がJSをダメにしてるって言うけど、最近はViteのおかげでめっちゃスムーズじゃん。細かいホットリロードなしでUI開発なんてしたくないね。PHPとか.NETとかでもオートリロードあるけど、時間めっちゃ無駄になるよ。特にページ操作が必要なやつだと、何度も同じこと繰り返す羽目になるし。" userName="pier25" createdAt="2025/05/03 21:18:27" color="#ff33a1">}}




{{<matomeQuote body="「JSはマシ」ってのが前提ならまあね。でも実際はそうじゃない。TSの方が「マシ」に近いけど、それでもJSの変な決定からは逃れられないしね。" userName="baq" createdAt="2025/05/03 21:26:05" color="">}}




{{<matomeQuote body="いやいや、マジでいらないから。超複雑な古いアプリでフロントエンドに状態ほぼゼロのやつで仕事したことあるけど、せいぜいクエリパラメータ見るくらい。全部フルページリロードにしちゃえば全然問題ないって。" userName="const_cast" createdAt="2025/05/03 22:30:36" color="">}}




{{<matomeQuote body="じゃあカウンターを一つ増やすためだけに全ページリロードするわけ？" userName="balencpp" createdAt="2025/05/04 07:52:44" color="#38d3d3">}}




{{<matomeQuote body="Viteでスムーズになったって言うけど、結局NodeとかReactとかと同じ運命だろ？ いつだって新しいフロントJSが出てくるけど、すぐに古くなるんだよ。みんな新しいのが好きなだけ。俺は2013年からPHP、SQL、素のJSでやってるけど、今もサクサク動くアプリ作れてるし、ロード中表示なんて見たことないね。" userName="ToucanLoucan" createdAt="2025/05/03 23:35:11" color="#ff5733">}}




{{<matomeQuote body="SPAで一番ムカつくのは、戻る進むとか履歴が微妙に（あるいはあからさまに）壊れてること。<br>原理的にはちゃんと動くようにできるのは分かってるよ。問題は、ほとんどのWeb開発者がその努力をしたがらないこと。だから実際にはただ壊れてるんだよね。" userName="int_19h" createdAt="2025/05/03 22:02:48" color="#38d3d3">}}




{{<matomeQuote body="ただ、古い技術じゃPWAは作れないよね。今のWebコンテンツのほとんどはモバイルで見られてるし。俺も前は古いやり方でやってたけど、クライアントはモバイルアプリ欲しがるし、経営陣はPWAにすることにしたんだよ。だって既存のバックエンド（Perl, Mojolicious, SQL）使えるから。それが飯のタネになるなら、俺も今はそれに賛成だよ。" userName="petre" createdAt="2025/05/04 03:34:17" color="#ff5c5c">}}




{{<matomeQuote body="いやいや、JSはダメだよ。バグだらけで堅牢じゃない。undefinedがDBに文字列で保存されてるの見たことあるし。堅牢にするには防御的なコードが必要だけど、それが面倒で生産性を下げるんだ。C++の方がマシなくらい。" userName="const_cast" createdAt="2025/05/03 22:34:18" color="#38d3d3">}}




{{<matomeQuote body="スクリプトを動的にロードできるようにしたのは間違いだったと思うし、サポートやめるべき。iframeもそう。<br>readyの後にあるべきは全部静的コンテンツだったんだよ。" userName="vinnymac" createdAt="2025/05/03 19:45:43" color="">}}




{{<matomeQuote body="多くのSPAで無駄な通信が多いって話だけど、あれ実装の問題だよ、SPA自体の特性じゃないんだわ。<br>PWAとかService Workerでキャッシュうまくやれば、SSRより良い体験もできる（これもちゃんと実装すればだけど）。<br>計算コストが高いって言うけどさ、ステート管理とかクライアント側でやる方が合理的だと思うんだ。ホスティング費用安くなるし、特にスマホだとUX良くなるよ。" userName="boomskats" createdAt="2025/05/03 21:20:53" color="#ff33a1">}}




{{<matomeQuote body="”むしろC++の方がずっと合理的だって言いたいね”<br>ここでわかった、この人たち実際にどっちの言語も書いてないで、ミームで語ってるだけだわ。<br>JSには少し罠はあるけど、頭に入れられないほどじゃないし、C++ほど複雑じゃないよ。C++の方が合理的ってのは笑える。<br>”nullがデータベースに到達するのを見た”って言うけど、C++で全く同じこと見たことないの？　もっと悪いことに、ヒープが壊れてるのを見たことは？" userName="Capricorn2481" createdAt="2025/05/04 15:55:43" color="#45d325">}}




{{<matomeQuote body="”以前は私もそうしてたけど、クライアントがモバイルアプリを求めてて、経営陣がPWAにすると決めたんだ”<br>これがよくあることだって聞いて驚きだね。私自身を除けば、PWAをインストールした人を一人も知らないよ。 tech界隈の人でも、存在は知ってるけど。 tech以外の人なんて、そもそも存在すら知らないし。<br>経営陣は自分でPWAをインストールしてるの？" userName="jjani" createdAt="2025/05/04 04:34:28" color="">}}




{{<matomeQuote body="”ページをリロードせずに変更を見る”っていうのはhtmxでもできるよ。しかもまだ”サーバーサイドレンダリング”（か、ほぼね）。伝説的なウェブサイトで、インターネット最速って言われるサイトも、partial page cachingで速さを実現してるんだ。" userName="t-writescode" createdAt="2025/05/04 01:08:55" color="#38d3d3">}}




{{<matomeQuote body="ニュースサイトとかCRUDアプリにSPAいらないってのは同意だけど、あなたの意見はやりすぎだと思うな。Google Mapsみたいな動的なサイトはWeb 1.0じゃ無理でしょ？　Webが複雑なアプリをセキュアに動かせる場所になったのは素晴らしいことだよ。" userName="noodlesUK" createdAt="2025/05/03 19:53:44" color="#ff33a1">}}




{{<matomeQuote body="RoRみたいなシンプルなMVCフレームワークの方が、今のRedwoodjsとかReact使った複雑な構成より開発が速かったし、新人も馴染みやすかったよ。今の現場は小さい変更でも大変なんだ。JS界隈全体がごちゃごちゃしてる気がする。TurboとかStimulus、LiveViewで簡単だった昔が懐かしいね。" userName="princevegeta89" createdAt="2025/05/03 20:28:39" color="#ff5c5c">}}




{{<matomeQuote body="ただし、低スペックデバイスのユーザーだと、その大量データをJSコードでパフォーマンス良くフィルタリングしたり結合したりできないかもしれないし、あるいはデータをメモリに保持することすらできないかもしれないけどね。" userName="apothegm" createdAt="2025/05/04 01:44:22" color="">}}




{{<matomeQuote body="ずっとそう思ってた。Reactとか使うのは簡単だけど、開発者は「ベストプラクティス」に囚われすぎてる。分離とかマイクロサービス、適材適所とか、理論上はいいけど、実際には不要な複雑さを招くだけだよ。ほとんどのケースで一つのツールで十分なんだ。" userName="CooCooCaCha" createdAt="2025/05/03 20:37:52" color="#45d325">}}




{{<matomeQuote body="カウンターを増やすのにSPAは必要ないよ。ページに動的な挙動が必要ならJSを追加すればいいんだ。メモリ上のカウンターを追加するだけでも、APIコールでデータを保存・取得するだけでもね。JavaScriptを書くのは難しくないんだ。<br>SPAの問題点は、動的な挙動が必要ないページも含めて、全てのページでJS駆動のシステムを維持しなきゃいけないことなんだ。" userName="ysavir" createdAt="2025/05/04 14:26:03" color="#45d325">}}




{{<matomeQuote body="Reactだけ使えば良いよ．ほとんどのWebページは完全に静的じゃないし，少しでも動的になるとすぐJSのDOM操作地獄になるからReactとかが必要になるんだ．Reactは完璧だよ．Stateを更新するだけでページが魔法みたいに再描画される．超楽チンだね．" userName="quantadev" createdAt="2025/05/03 21:35:41" color="">}}




{{<matomeQuote body="去年はNext.jsのpages routerからapp routerに変えてSEO改善って言ってたのに，今度はVercel代高くてNextからReact+Inertia.jsへ？VPSに自分でデプロイすれば良いんじゃん？ブックアプリにGraphQLとか別FWとか複雑なビルドって必要？最初からRoRモノリスでVPSにデプロイすれば良かったんじゃんって思う．" userName="3sbi" createdAt="2025/05/03 21:10:07" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="GraphQL以外でWebアプリ作ると，アドホックで非公式な，バグだらけの遅いGraphQLの半分みたいになっちゃうんだよ．そう，ブックアプリにもGraphQLは絶対必要．別FWはNextみたいにバックエンドとフロントエンドを一緒に書けるなら不要．複雑なビルド？npm runでOK．RoRモノリスは問題多いよ．Nextが最初ならRoRを同じように批判してたはず．" userName="lmm" createdAt="2025/05/03 21:53:28" color="">}}




{{<matomeQuote body="<br>＞ ”連携開発なら柔軟性は不要”？全く違うよ．固定APIで問題ないアプリは多いしGraphQLは存在しない問題を解決して新しい問題を生む．柔軟性がバックエンドを複雑にしDoS対策やパフォーマンス理解を難しくしバグを増やすんだ．連携開発してるなら柔軟性はいらない．組織の問題だ．ブックアプリには不要だよ．" userName="Diggsey" createdAt="2025/05/03 23:02:23" color="#38d3d3">}}




{{<matomeQuote body="<br>＞ ”連携開発なら柔軟性は不要”？いや，柔軟性あっても問題ないでしょ．フロントエンドが変なクエリ使わなきゃOK．<br>＞ ”必要なAPIを提供すれば良い”？うん，でも実際どうやるの？N+1問題回避とか似たデータ必要なクエリ多いからGraphQLみたいに汎用的な方法が必要だよ．手書きエンドポイントは独自のライブラリ書くようなもん．" userName="lmm" createdAt="2025/05/03 23:37:18" color="">}}




{{<matomeQuote body="<br>＞ ”フロントエンドが変なクエリ使わなきゃOK”？悪意のある人はカスタムツールで大量に遅いクエリを実行できるんだよ．フロントエンドがどう使うかに制限されないんだからね．" userName="fvdessen" createdAt="2025/05/04 07:51:12" color="#ff5733">}}




{{<matomeQuote body="<br>＞ ”悪意のある人が遅いクエリを大量に”？システムの設定によるね．僕は本番インスタンスではコンパイル済みクエリだけ許可してるから，攻撃者は作者が書いてない違うクエリを実行する方法はないんだよ．" userName="lmm" createdAt="2025/05/04 08:51:19" color="#ff5c5c">}}




{{<matomeQuote body="デコンパイラとかリバースエンジニアリングが何かも分かってる？敵対者はシステム設計通りに使うのに制限されないよ．GraphQLクエリはWiresharkとか他のスニファーから簡単に引き出せる．ブラウザに渡してるなら，どんなに決意が固い敵対者でも手に入れられる，絶対に．LLMがデータ得るためにGraphQLエンドポイントスニッフィングしてても驚かないよ．" userName="solatic" createdAt="2025/05/04 15:04:41" color="#ff5c5c">}}




{{<matomeQuote body="デコンパイラやリバースエンジニアリングが何かも分かってるかだって？GraphQL（または昔ながらのRDBMS）のコンパイル済みクエリがどう動くか分かってる？ワイヤーで送られるのはクエリIDだけだよ．作者が書いてないクエリをサーバーに実行させる物理的な方法はないんだ．" userName="lmm" createdAt="2025/05/05 03:50:28" color="#ff5c5c">}}




{{<matomeQuote body="それじゃあGraphQLの利点を全部投げ捨てたってことじゃん．フロントエンドが必要なものを決定できるようにする代わりに，ページに必要なものを返す新しいバックエンドエンドポイントを書く必要がある．これは/rpc/bffe/get-profile-pageみたいな呼び出しと何も変わらない．そっちの方が書くのもずっとシンプルでツールもずっと優れてるのに．" userName="solatic" createdAt="2025/05/06 05:36:16" color="#ff5c5c">}}




{{<matomeQuote body="ううん、うちのbackendはfrontendが使うクエリ全部を（本番で）提供するけど、frontendが使うクエリだけだよ。ビルド時にコンパイルするんだ。新しいクエリ追加したいときは開発環境で決めて（非コンパイルクエリもOK、社外からは無理）、frontendに書けば次のbackendビルドに含まれる。これ全部結構普通の機能だよ。他の全員が馬鹿だって決めつける前に、システムがどう動くか5分くらい考えてみたら？" userName="lmm" createdAt="2025/05/06 05:43:54" color="">}}




{{<matomeQuote body="たぶん偏見かもだけど、GraphQLが意味をなすシナリオが全然見えないんだよね、複雑さがメリットに見合ってない。RESTのデバッグしやすさとかシンプルさを、ほぼゼロのメリットのために捨てることになる。" userName="realusername" createdAt="2025/05/03 23:32:34" color="">}}




{{<matomeQuote body="GraphQLは新しいMongoDBだね。みんな使いたがるイケてる新技術だけど、現実では全く意味不明で解決する以上に問題起こすだけ。Facebookみたいな特定の場所では意味ある問題を解決するけど、ウェブアプリとかウェブ・モバイルアプリしかない会社には全く意味ない。それだけ。GraphQL使うって決めるやつは馬鹿な決定してるよ。" userName="wordofx" createdAt="2025/05/04 02:48:30" color="">}}




{{<matomeQuote body="どうして？RESTと同じデバッグのしやすさあるじゃん。もちろんツール経由でリクエストとレスポンス見る必要があるけど、直接見る以外ってのはHTTPS使ってない場合（こっちの方が大問題）以外はすでにそうだったしね。開発者/管理者ページにGraphiQL立ててみれば、昔のREST APIよりずっと簡単に探索的なクエリできるよ。" userName="lmm" createdAt="2025/05/03 23:40:07" color="">}}




{{<matomeQuote body="ふーん、データベースは1970年代から同じことやってるよ（例えばregexesも考えてみて）。結局、柔軟で表現力豊かなクエリを書く言語をワイヤーフォーマットとして使うのが、常に一番安全でパフォーマンスが良いとは限らないんだよね。" userName="lmm" createdAt="2025/05/05 04:04:45" color="">}}




{{<matomeQuote body="Goodreads API終了時にhardcover見つけたんだけど、APIのために作られたサービスみたいで、みんながAPIで何をしたいか予想できないからGraphQLを選んだのはすごく理にかなってると思うんだ。柔軟性が高いしね。でも、Railsへの全面書き直しが正しかったかは疑問だな。前も今もアプリ遅くてグリッチ多いし、Next.jsのままでもできたことだと思う。特にユーザー3万人規模なら、Next.jsで改善できたんじゃないかな。" userName="Version467" createdAt="2025/05/04 11:57:29" color="#45d325">}}




{{<matomeQuote body="君の「GraphQLは既存ライブラリみたいなもん」ってコメントの意味がやっと分かったよ。でもみんなExpressとかKyselyとか使ってるじゃん。Apolloだけがそうじゃないって？変だよ。ちゃんとしたREST APIに最初投資すれば、既存エンドポイント使えるし、frontend変更でbackendビルド待つ必要ないかも。メンテしやすいツール使えるし、Productも実験しやすい（frontend変更でbackend変更要らない）、それにFAANG発だからって流行りに乗らない方が良いよ。" userName="solatic" createdAt="2025/05/06 18:50:20" color="#45d325">}}




{{<matomeQuote body="「一番遅いエンドポイントをどのチームが担当してる？」みたいな単純な質問が、GraphQLだと計算するのが急に悪夢になるんだ。どの業界も分業に移った理由があるんだよ。セキュリティ管理もめんどくさそうに見えるし、そうだね、frontendは何でも好きなことできるけど、そんなこと誰も望んでなかった。" userName="realusername" createdAt="2025/05/03 23:48:30" color="#38d3d3">}}




{{<matomeQuote body="GraphQLのコンパイル済みクエリをバックエンドに追加しなきゃいけないんだろ？それって、GraphQLを使わない人たちがバックエンドで色々やんなきゃいけないことを批判してた、君が最初に強く反論してたことと全く同じじゃん。まさに君が今説明したやり方こそ、親コメントが君がやってるだろうと思ってたことだよ。" userName="SpaceNugget" createdAt="2025/05/06 15:47:58" color="">}}




{{<matomeQuote body="コメントありがとう！うちのアプリが今の構造になった理由、色々と言い当ててるね。そうそう、Next.jsに投資する手もあったし、Railsに移行するよりそっちの方が良かったかもしれない。でも、Railsだとエンドポイントがどうなるか（コードベース、コスト、キャッシュ、開発環境、デプロイ、ホスティングとか）全体像がすごく見えやすかったんだ。もしあの時間Next.jsに投資してたら、まだ unclear な答えもあったと思う。もちろん Next.js でもそこにたどり着けるだろうけど、道筋が Rails ほど明確じゃなかったんだ。" userName="dyogenez" createdAt="2025/05/04 17:01:19" color="#ff33a1">}}




{{<matomeQuote body="全くその通り！みんなこの議論をすぐに用意したみたいに持ち出すけど、ちょっと考えればわかるはずなんだ。こういう（どんなシステムにもよくある）欠点を抑えるためのツールやパターンはもうしっかり確立されてるから、真剣に技術を見てる人にとっては全然問題にならないよ。" userName="sibeliuss" createdAt="2025/05/04 03:30:10" color="#785bff">}}




{{<matomeQuote body="＞ Sure, some use-cases might warrant the flexibility that GraphQL uses. A book tracking app does not.＜<br>これには同意！自分で体験をコントロールできるなら、僕も限られた体験のためにGraphQLを選ばないだろうね。プロジェクトはGoodreadsがAPIを終了したのがきっかけで、コミュニティのためにもっと良いものを作りたかったんだ。みんながどう使うか全然わからなかった。だから、提供できるものが多ければ多いほど、柔軟であればあるほど、解決できるユースケースも増えるだろうって思ったんだ。おかげで hundreds of people が僕が全く予想しなかった all kinds of things に GraphQL API を使ってくれてるよ。それが僕にとってのGraphQLの魅力で、使い道を後から考えられることかな。でも、GraphQL APIをゼロから作りたいとは思わない（もう二度と）。この場合は Hasura が全部やってくれたからね。うちの場合は REST API を作るより簡単だったんだ。" userName="dyogenez" createdAt="2025/05/04 17:08:33" color="#ff33a1">}}




{{<matomeQuote body="たまに external data providers （ほとんどが government agencies ）との連携を書かなきゃいけないんだけど、彼らは GraphQL をすごく好むんだよね。そこで使うのは IMHO としてもすごく理にかなってると思う。彼らは entity¹ に関するデータを X fields に分けて提供するんだけど、自分のアプリが必要なのは maybe 20% くらい。GraphQLのおかげで、その 20% だけをリクエストすればいいんだ。何億件もの records を読み込む時、 gigabytes もの不要な JSON を loading, parsing, そして throwing away する手間が省けるからね。¹ one example being tax records with all associated information about tax collecting agencies and taxpayers — it’s a lot of data" userName="homebrewer" createdAt="2025/05/04 11:37:14" color="#38d3d3">}}




{{<matomeQuote body="Facebookは publicly なアプリでは GraphQL をそのまま使ってるわけじゃないんだ。アプリは server side で定義された named queries を呼び出してるから、GraphQL はただの glorified RPC mechanism で、query language じゃないんだよね。" userName="Kwpolska" createdAt="2025/05/04 10:26:59" color="">}}




{{<matomeQuote body="それは fair な意見だね。<br>そしてはっきりさせておきたいんだけど（元のコメントが否定的に読めるかもしれないから）、僕は hardcover がすごく気に入ってるんだ。たまにうまくいかないこともあるけど、UI が charming だし、良い open api があるし、reading がすごく好きな人たちが作ったのがすごくよくわかるから、僕の読書記録は全部 hardcover でつけてるよ。君が手に入れられる最高の成功を祈ってる！" userName="Version467" createdAt="2025/05/04 19:38:01" color="">}}




{{<matomeQuote body="＞ Yea so you have to add the compiled queries to your back-end to be able to get them on prod, which is what you came out swinging against with a somewhat strongly worded to level comment berating people who choose to not use graphql for having to deal with.＜<br>何のこと？<br>ビルドプロセスが frontend が使いたい queries を取ってきて、コンパイルして、それを backend の build に含めるんだよ。 manual なステップは何もないし、 backend のコードや config を一行たりとも変えたりしない、ましてや新しい endpoint を書くなんてこともない。僕が知る限り、これは GraphQL の全く ordinary な使い方だよ。" userName="lmm" createdAt="2025/05/08 05:41:05" color="#ff33a1">}}




{{<matomeQuote body="GraphQLはもはや流行りじゃなくて、10年も前からあってプロダクションでも5年使われてるんだ。REST APIと比べてN+1問題とか有利な点もあるし、プロダクトチームも実験しやすい。ただ、チームが分かれた巨大システムならREST APIも良い。GraphQLはThriftやgRPCの流れを組んでて、多くの言語でライブラリがあるよ。人気なのは使えるからさ。" userName="lmm" createdAt="2025/05/08 06:08:31" color="#ff5733">}}




{{<matomeQuote body="GraphQLでもトレースツールやセキュリティは必要だよ。それはいつも同じ。俺の経験だと、GraphQLのツールはraw HTTPSより悪くないし、情報が多いからむしろ良いことも多いんだ。例えば、権限で特定のフィールドを隠すとか、GraphQLなら一箇所で済むから手書きのAPIよりずっと簡単だよ。" userName="lmm" createdAt="2025/05/04 07:44:40" color="">}}




{{<matomeQuote body="うちでもNextJS使ってたけど、もうやめ始めてるんだ。理由はいくつか：認証が大変だった（next-authもiron-sessionも）。API gatewayじゃなかったからrequestをproxyする必要があったけど、docsが不明確で問題が起きた。Vercelのcloudに誘導したがるのも合わなかった。あと、maintainerがあまり親切じゃなかったんだよね。Chillicream/HotChocolateは神対応なのに！" userName="twodave" createdAt="2025/05/03 22:03:42" color="#ff33a1">}}




{{<matomeQuote body="何に移行したの？うちはNextJSをfrontendで使ってて、server-side/apiの便利な処理も少し使ってるけど、backendはDjangoなんだ。基本的にはReactJSをNextJSの便利な機能（file based routingとか）と一緒に使ってるだけって感じだよ。" userName="vdfs" createdAt="2025/05/03 23:15:25" color="">}}




{{<matomeQuote body="俺はNext.jsよりRemixの方がこの用途にはずっと良いと思うな。ずっとシンプルだし、自分のサーバーでhostしやすい。Astroもすごく良くて、学ぶのもhostするのも簡単だよ。" userName="TranquilMarmot" createdAt="2025/05/04 18:46:31" color="">}}




{{<matomeQuote body="他にもAngularのプロジェクトがあって、NextJSは一種のproof of conceptだったんだ。開発者が一つのfront-end frameworkで仕事できるように（そしてupdateについていくのが大変！）、それらのdeployをAngular familyのfeatureに統合し直してるとこなんだ。" userName="twodave" createdAt="2025/05/04 02:18:24" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="Astro.buildってチェックした？必要なところにどんなframeworkでもdrop inできるから、持ってるAngular componentを持ってこれるし、必要ならReactに頼ることもできるよ。" userName="TranquilMarmot" createdAt="2025/05/04 18:47:23" color="">}}




{{<matomeQuote body="俺はNext.JS検討した結果、server-side renderingにKotlinとKtor (html dsl + htmx) を使うことにしたんだ。backendもKotlinだよ。Kotlin + Ktorはserversideで書くのがマジで気持ち良い。Rubyみたいに速くて簡単でスラスラ書けるのに、Javaのエコシステムと型も使えるのが最高だよ。" userName="t-writescode" createdAt="2025/05/04 01:02:36" color="#38d3d3">}}




{{<matomeQuote body="htmldslでreusable componentってどうやってるの？Ktorをちょっと試した時、これだけ分からなくて、情報も見つけられなかったから、それが理由でちょっとやめちゃったんだよね。" userName="catgirlinspace" createdAt="2025/05/04 14:34:23" color="">}}




{{<matomeQuote body="再利用可能なコンポーネントを作るために、たくさんのextension functionsとKotlinのfunction pointer構文を組み合わせて使ってるんだ。それで、コンポーネント自体はこんな感じになるよ：<br><br>    fun HtmlBlockTag.radioButtonWithLabel(...)<br>    <br>        radioInput(...)<br>        label { ... }<br>    }<br><br>使い方はこう：<br>  call.respondHtml {<br>      body {<br>          div(...) {<br>              radioButtonWIthLabel(...) {<br>                  +”Text for the label”<br>              }<br>          }<br>      }<br>  }<br><br>もっと複雑な例は、これをかなり拡張してるだけ。大きなセクションになる単一のextension functionのためだけにファイル全体を割くこともあるよ。それで、これらの単一ファンクションコンポーネントをテストするには、こうしてる：<br>  class SingleSectionTest {<br>      private suspend fun ApplicationTestBuilder.buildApplicationAndCall(...) : Document { ... }<br>      <br>      @Test<br>      fun “simple test case”() = testApplication {<br>          val data = DataUsedForSection(...)<br>          val body = buildApplicationAndCall(data)<br>          // all the asserts<br>      }<br>  }<br><br>こんな感じ。これが君が知りたかったこと？それとも違う例が見たい？" userName="t-writescode" createdAt="2025/05/04 17:13:05" color="#ff33a1">}}




{{<matomeQuote body="まさに探してた情報、共有してくれて本当にありがとう！これ、今まで見た中で一番いいやり方かも。ただ、Kotlinだと既存のHTMLタグの子（？）として追加せざるを得ないのがちょっと嫌だね、コンポーネントをimportするみたいにできたらよかったのに :(" userName="catgirlinspace" createdAt="2025/05/05 01:38:59" color="">}}




{{<matomeQuote body="Kotlinはそれを“Extensions”って呼んでるよ[0]。うん、結構面倒だよね。最初C#で知ったんだけど、StackOverflowとかMicrosoftのドキュメントでコード見つけても、必要なnugetパッケージ入れてないとメソッドがなかったりしてすごくイライラしたんだ。慣れてきて、それがどれだけ便利かも分かったけど、どうしても拭えない不満もいくつかあるんだ（importの問題とか、「このコードどこ！？」って問題とか）。Java/Typescriptでjsxやtsxファイルみたいに、ただのクラスとしてコンポーネントをimportできるとすごくクールだよね。データクラス作って fun renderInto(tag: HtmlBlockTag) { ... } みたいなメソッド追加すればそれっぽくはできるけど、KtorのDslの実装上、結局dslが作ってる巨大なStringBuilder（か何か）に繋げなきゃいけない。それに近づけるために、僕は大きなコンポーネントにはファイル全体を費やして、ファイル名もルートのHtmlBlockTag Extensionメソッドと同じにしてることが多いよ（さっきの例ならRadioButtonWithLabel.ktみたいに）。そういうファイルは、たくさんのヘルパーメソッドを同じファイルにまとめておけるから便利で、クラスみたいに全部をまとめておけるんだ。[0] https://kotlinlang.org/docs/extensions.html" userName="t-writescode" createdAt="2025/05/05 05:07:02" color="#ff5c5c">}}




{{<matomeQuote body="JSフルスタックでフロントもバックも特にDB絡みでやりたい時、みんなどうしてるのか本当に気になる。ORMの状況はバラバラに見えるし、pure sql書くか。バックエンドもexpressで生でいく？Next.jsは有名だけど目的が疑問だし（、Remix、Astro、TanStackとか色々。いつも使うものを調整したり再評価したりしないといけないから、ぐちゃぐちゃだよ。個人的なプロジェクトではRuby on Railsに戻っちゃうことが多いんだ。いつも気持ちいいんだよね。一方で、railsエンジニアはJSに比べてすごく少ないから、プロのプロジェクトには向かないんだ。JSとかバックエンドはJavaを選ぶのが無責任じゃなくなるんだ。みんなも同じ気持ちになる？" userName="madethemcry" createdAt="2025/05/03 20:59:30" color="#785bff">}}




{{<matomeQuote body="そうなんだよね。JSのORM状況は良くない。これが定番！っていうのがないし、その質問するとORMは別に必要ないよ、みたいな偉そうな返事がよく来る気がする。Kyselyは本当に良いけど、ORMじゃないんだ。僕の考えでは：JSエコシステムは理由もなく抽象化を避ける傾向がある。例えば、ウェブフレームワークがフォーム送信の形を透過的に検証すべきじゃないって考えるのは、魔法すぎるからって理由。代わりに正しいやり方とされてるのは、入力の形を記述するためにDSL（Zodとか）を学んで、それをチェックするコードを手作業で毎回書くこと。あ、それはReasonsっていう理由でTSの型でやっちゃダメなんだ。これ全部、Rails/Spring/ASP.NETみたいな、ゆうに10年以上前から確立されてるプラットフォームの存在を意図的に無視してるようにしか見えないんだ。良いアイデアを盗めばよかっただけなのに。でも、多分そういうフレームワークの最大の罪は、もうクールじゃなくなったことなんだろうね。これをあまりネガティブに聞こえないように伝えるのが難しいんだ。TSでSSRウェブ開発に挑戦しようとして、オープンな気持ちで臨んだんだけど、僕にとって必要な材料がそこにはなかった。Viteは開発がすごく快適だから、残念だよ。" userName="mattgreenrocks" createdAt="2025/05/03 22:04:43" color="#785bff">}}




{{<matomeQuote body="定番はDrizzleだよ" userName="welder" createdAt="2025/05/04 10:52:00" color="">}}




{{<matomeQuote body="うちは今、主要なアプリが二つあって、一つはtypescript、もう一つはrailsなんだ。両方でエンジニアを雇わないといけないんだけど、railsエンジニアを見つけるのがnode/typescriptエンジニアより難しいなんて経験はないよ。むしろ、スタックがずっと標準化されてるから、関連経験のあるrailsエンジニアを見つける方が簡単だとさえ思う。node経験がある人だと、たとえnodeエコシステムの他のライブラリを使ったことがあっても、うちが使ってるライブラリの経験が全くないって可能性がすごく高いんだ。でもrailsなら、経験ある人なら誰でもうちのアプリケーションにすぐに飛び込めて、お馴染みのものがいっぱい目に入るよ。個人的には今はelixir Phoenixのファンボーイだから、個人のプロジェクトではrailsを第一候補にはしないけど、会社にとっては素晴らしい選択肢だと思う。実際、人を雇う必要があるなら、他のどんなフレームワークよりも一番おすすめするかもしれないな。" userName="freedomben" createdAt="2025/05/03 21:30:59" color="#ff5c5c">}}




{{<matomeQuote body="＞ 定番が一つもないって<br>Prisma.jsが圧倒的に一番人気だと思ってたけど？ドキュメントとか例でいつも見るのはそれだよ。" userName="esperent" createdAt="2025/05/04 01:21:39" color="">}}




{{<matomeQuote body="面白いね、僕はPrismaが定番だって言うかな。うちはヘビーに使ってるけど、全然問題ないよ。" userName="TranquilMarmot" createdAt="2025/05/04 18:49:26" color="">}}




{{<matomeQuote body="Elixir / Phoenixがもっと人気になることを本当に願ってるよ。これでサーバー書くのはすごく簡単だし、ホスティングやデプロイも楽、アップグレードも（今のところ）痛みがなかったし、lintingやデバッグもすごく簡単だった。Rubyから来るなら、Elixirを学ぶにはちょっとした頭の切り替え（オブジェクト指向から関数型へ）が必要だけど、そのハードルを越えれば、ElixirでのプログラミングはRubyと同じくらい楽しいよ！ :)" userName="vishalontheline" createdAt="2025/05/04 03:17:39" color="#ff33a1">}}




{{<matomeQuote body="うん、良いと思うよ。ただ、俺の（Djangoっていう）黄金基準にはちょっと足りないかな。良い自動マイグレーションとか、マイグレーションでのトランザクションがないんだよね。" userName="DangitBobby" createdAt="2025/05/04 05:29:51" color="">}}




{{<matomeQuote body="なんでそんなに混乱すんの？俺の経験だと、常にプロジェクトの調整は必要だよ。イケてる新しいフレームワークなんて5年で廃れるしね。常に一部は書き換えることになるから、書き換えが楽なエコシステムを選んだ方がいいんだよ。" userName="ramon156" createdAt="2025/05/04 15:13:23" color="">}}




{{<matomeQuote body="両方使ったけど、TSコミュニティでは今Drizzleが定番になってるよ。" userName="welder" createdAt="2025/05/05 05:53:14" color="">}}




{{<matomeQuote body="＞ JSのフルスタックでフロントもバックも、特にDBあるときってどうしてるんだろう？Gel [1]使えばいいじゃん。ORMいらないし（他にも色々便利だよ）。[1] https://www.geldata.com/" userName="jakubmazanec" createdAt="2025/05/04 15:55:37" color="#38d3d3">}}




{{<matomeQuote body="ベテラン開発者の悲しい宿命は、良いものが消えて、それが再発明されて、みんなが『すげー！』って騒ぐけど、昔からあったの知らない、って状況を見ることだね。いつか誰かが良いアイデアをパクるんだ。で、みんな初めて出てきたかのように振る舞う。これ、何度か見てきたけど、毎回自分が年取ったなって感じるよ。" userName="actsasbuffoon" createdAt="2025/05/04 02:02:42" color="">}}




{{<matomeQuote body="500件も報告されてる未解決バグの一つに遭遇しなくてマジ幸運だったわ！" userName="switch007" createdAt="2025/05/04 19:45:08" color="">}}




{{<matomeQuote body="笑。んで、来年にはまた別の何かになってるだろうね。Drizzleとかまだ1.xにもなってないし。" userName="switch007" createdAt="2025/05/04 19:46:16" color="">}}




{{<matomeQuote body="Railsから来るなら、ここから始められるよ 😉 https://phoenixonrails.com/" userName="arrowsmith" createdAt="2025/05/04 10:59:40" color="">}}




{{<matomeQuote body="次に何か作る時に試してみるよ。職場の組織としては、何十ものプロジェクト全部Prismaを使ってるから、違うの試すのは大変そうだけどね。" userName="TranquilMarmot" createdAt="2025/05/05 18:10:36" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
