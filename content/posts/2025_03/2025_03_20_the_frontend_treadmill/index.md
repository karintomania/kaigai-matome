+++
date = '2025-03-20T00:00:00'
months = '2025/03'
draft = false
title = 'フロントエンドの進化がマジで速すぎる件！もう勘弁して！'
tags = ["フロントエンド", "JavaScript", "開発", "技術", "トレンド"]
featureimage = 'thumbnails/orange1.jpg'
+++

> フロントエンドの進化がマジで速すぎる件！もう勘弁して！

引用元：[https://news.ycombinator.com/item?id=43422162](https://news.ycombinator.com/item?id=43422162)

{{<matomeQuote body="最近FEコードのビルドシステムをyarnからpnpmに乗り換える作業をしてるんだけど、普段はバックエンドエンジニアなんだよね。FEにちょっと手を出しただけで、マジで全部deprecatedになってるのが一番イライラするわ。2022年にapollo CLI使ってた？はい、deprecatedー。graphql-clientとかいう別の設定が必要で、同じオプション全部サポートしてないやつを学んでね！みたいな。古い方使ってpnpmのnode engineチェックをdisableにすればいいじゃんって話だけどさ。dependencyのpatch upgradeしたい？type signatureに頼ってたらご愁傷様！それもpin止めして、誰かがsignatureをアップデートしてくれるのを祈るしかない。何とか動くようになっても、インストール中にdeprecation warningが大量に出てくるのを見てるだけで気が滅入る。FE開発って、breaking changeとかdeprecationとかを積極的に受け入れすぎじゃない？Rustのプロジェクトを4年くらいやってるけど、サードパーティライブラリでminorなbreaking changeが数回あったくらいで、アプリケーションを大幅に変更する必要があったmajorなbreaking changeは1回だけだったよ。JSだと半年も経たないうちに何かを書き直さなきゃいけないってマジありえないわ。" userName="mplanchard" createdAt="2025-03-20T12:47:12" color="#45d325">}}

{{<matomeQuote body="＞FE開発全体がbreaking changeとかdeprecationを積極的に受け入れてるみたいだよね。<br>これってFEのインフルエンサーがめちゃくちゃ影響してると思うんだよね。FE界隈はSNSとかYouTube、Twitchとかを他の分野より積極的に活用してる気がする。インフルエンサーは常に新しいネタを提供してないと存在意義がないから、常に新しいものを追い求めるんだよね。カンファレンスも活発だし。FEとかJSのカンファレンスって、何かホットな新しいトピックを発表する競争みたいになってるし。FEの講座を売るのも大きな市場だしね。講座のクリエイターは、受講者に700ドルの動画講座を買ってもらわないといけないから、業界を古いものから新しいものへと移行させようと必死になるんだよ。" userName="Aurornis" createdAt="2025-03-20T16:08:32" color="#ff33a1">}}

{{<matomeQuote body="それめっちゃ面白いね。Web開発のインフルエンサーがそんなにデカい存在だって知らなかったわ。調べてみたら、マジで何百万人もフォロワーがいる人がいるんだね。個人的には、動画でコーディングを学ぶのはマジ無理。テキスト媒体じゃん。じっくり見て、考えて、コードを比較して、参照を辿って、関数を調べる時間が欲しいんだよね。動画形式が好きな人がいるのは別に驚かないけど、未だに理解できないんだよな。動画コンテンツで育って、それでコーディング始めたとしても、どこかのタイミングでテキストのドキュメントを参照する必要があるじゃん？そうなったら、テキストにこだわると思うんだけど、動画の方が面白いってことなのかな。" userName="ewzimm" createdAt="2025-03-20T16:31:33" color="">}}

{{<matomeQuote body="＞動画形式が好きな人がいるのは別に驚かないけど、未だに理解できない。<br>だよねー。でも、理由についてちょっと考えがあるんだよね。<br>あなたは本を読むのが早い？<br>私は平均よりは早いと思うよ。私がコーディングのトピックを動画で学ぶのが嫌いな理由の一つは、私の読むスピードに比べてマジで遅すぎるからなんだよね。playback speedを上げまくらないと理解できないし。検索性も悪いし、コードをコピーペーストできないし。アメリカでは読解力の低下が問題になってるらしいじゃん。読書スキルが低い人が増えてるから、動画で学ぶ効率がテキストと大差ないんじゃないかな。それに、読書スキルが低い人ほど読書嫌いな傾向があると思うから、動画は嫌なことを避けるための手段なのかもね。根拠はないけど、他の説明よりは納得できるかな。" userName="koreth1" createdAt="2025-03-21T00:21:45" color="#ff33a1">}}

{{<matomeQuote body="いや、通勤中とか、運転中とか、掃除中とか、ワークアウト中にaudioを聞けるじゃん。私は高いレベルのこととか、トピックの概要を掴むためにaudioが好きだよ。詳細を調べる時はtextを使うけどね。" userName="Swizec" createdAt="2025-03-21T00:54:14" color="">}}

{{<matomeQuote body="＞動画形式が好きな人がいるのは別に驚かない。<br>そういう“人”って、なりきり学生かプログラマーになりたいキッズでしょ。10年のキャリアの中で、Fireshipの動画で学んでるって言う人に会ったことないわ。" userName="wiseowise" createdAt="2025-03-20T17:14:03" color="">}}

{{<matomeQuote body="私はYouTubeのMCUの講義でデータベースの内部構造について学んだよ。マジで良かった。" userName="golergka" createdAt="2025-03-20T18:51:53" color="">}}

{{<matomeQuote body="例えばこれ。<br>https://remix.run/<br>こういう詐欺師が製品の講座を売ってるんだよ。未メンテのRemixアプリが会社にあったら、それは詐欺師が若手devを騙したってこと。<br>彼らはそれを宣伝しまくるんだ。<br>https://kentcdodds.com/blog/a-review-of-my-time-at-remix<br>https://kentcdodds.com/blog/why-i-love-remix<br>https://kentcdodds.com/courses<br>マジ詐欺。でも、ほとんどの人は良い人だから騙されちゃうんだよね。そして、こういうインフルエンサーが出てくる。彼らはcrypto詐欺と同じように顧客のDiscordを持ってる。<br>Edit: インフルエンサーについての議論で、有名な詐欺師を批判するのをdownvoteする理由がわからない。どのインフルエンサー？その話題が怖い？JS ecosystemの現状は偶然じゃない。<br>HNでもこういうのに騙されて、フロントエンドの問題についてblog postを書く人がいる。<br>https://news.ycombinator.com/item?id=39453767<br>(このスレッド全体が意図的なtestimonialのように見える。)<br>こういうの買うのやめよう。" userName="bloomingkales" createdAt="2025-03-20T17:21:29" color="#ff5c5c">}}

{{<matomeQuote body="Remixはマジで使いやすいと思うけどね。Web standardsを活用してるし(この記事がもっとやるべきだって主張してること)、講座を買わなくても無料で学べるし。講座を売ること自体は別に悪いことじゃないと思うけど、講座を売るために作られたわけじゃないよ。<br>でも、フロントエンドは変化が早すぎるし、frameworkが毎週のようにリリースされるってのは同意。" userName="flufluflufluffy" createdAt="2025-03-20T18:30:47" color="#38d3d3">}}

{{<matomeQuote body="いや、Web standards使ってないでしょ。他のframeworkと同じように独自のmental modelとかgotchaがあるじゃん。" userName="nullpoint420" createdAt="2025-03-20T19:20:55" color="">}}

{{<matomeQuote body="RemixはサーバーサイドレンダリングとSPAをいい感じにつなぐし、ほとんどWeb標準でできてるからマジですごいんだよね。クライアントサイドJSがなくてもRemixアプリは動くし。完璧じゃないけど、メリットはたくさんあるよ。フロントエンドの苦労はマジであるけど、「Webは1999年が最高だったんだから変えるな！」みたいな意見はつまんないし、怠慢だと思う。問題解決のために協力して、流行を追うのも、改善の余地がないフリをするのもやめようぜ。" userName="uhoh-itsmaciek" createdAt="2025-03-20T19:56:00" color="#38d3d3">}}

{{<matomeQuote body="＞mostly with web standards<br>マジでこれな。React Router v6をレガシーなフレームワークとかアプリに統合するときに苦労するんだよね。全部React Router v6にするなら最高だと思うけど。うちの会社じゃRemixとGraphQL Federationに移行してて、めっちゃ大変なんだわ。ExtJSからJQuery、JQueryからReactのクラスコンポーネントとか、色々終わってない移行がいっぱいあってさ。マジで６個くらいのフロントエンド技術を同時に知ってないといけないのが苦痛。しかも、変な自作のコードがいっぱいあるし。" userName="nullpoint420" createdAt="2025-03-20T22:08:02" color="">}}

{{<matomeQuote body="Kent C. Doddsの教材の質は知らないけど、Remixとの関係は短かったみたいだよ。彼が売ってるコースはRemix（オープンソースプロジェクトとか会社）とは関係ないみたいだし。ちなみに、RemixはReact Routerの開発者が作ったオープンソースプロジェクトで、React Routerをもっと便利にするためのものなんだって。React Routerはめっちゃ使われてるJavaScriptライブラリだし、オンラインコースで稼ごうとする詐欺師が作ったものとは全然違うよ。" userName="tshaddox" createdAt="2025-03-20T18:25:15" color="">}}

{{<matomeQuote body="RemixがShopifyに売られた時、Kent C. Doddsもお金もらってんのかな？もしそうなら、Remixを宣伝するときにそれを言わないのはちょっと怪しいよね。いい人だけど、そこは気になるんだよな。" userName="cmgriffing" createdAt="2025-03-20T20:47:41" color="">}}

{{<matomeQuote body="6000件以上のコミットがあって、10時間前にも更新されてるリポジトリを「ただの詐欺」って言うのはフェアじゃないと思うな。" userName="numinoid" createdAt="2025-03-20T17:29:12" color="">}}

{{<matomeQuote body="それが関係あるとは思えないな。詐欺っていうのは、何も提供せずに価値を搾取することだろ。Remixとそれに関連するコースを作った時間で、Reactのコースを作った方がずっと儲かるはずだ。Remixが間違ってる、とか、ダメなフレームワークだ、っていうのは詐欺とは違うと思う。DenoはNodeと同じ作者で、有料プロダクトがあるから詐欺なのか？俺はそう思わないけど。Remixが詐欺目的で作られたって意見には反対だな。Kentほどの人がお金を稼ぐ方法はいくらでもあるのに。" userName="numinoid" createdAt="2025-03-20T17:55:10" color="#45d325">}}

{{<matomeQuote body="昔は、”インフルエンサー”って言ったら、コピープロテクトを解除したり、ローディング画面にイントロを追加したり、ハードウェアじゃ無理だと思われてたアニメーションを作ったりできる人が、匿名グループのハンドルネームで活動してたんだよな。口コミはテープとかフロッピーで、BBSとかで広まってたし。今は、他人のやったことにコメントしたり、単機能のパッケージを作るだけ。" userName="pjmlp" createdAt="2025-03-20T17:20:43" color="">}}

{{<matomeQuote body="確かに、今のテックインフルエンサーになるハードルはめちゃくちゃ低いけど、今まで以上に難しくなってるよね。運ゲー要素が強くなってるってことかも。最近のテックインフルエンサーは、頭もいいし資格もあるけど、特定の分野の専門家ってわけでもないし、革新的でもない。アルゴリズムに選ばれた人たちって感じ。" userName="jongjong" createdAt="2025-03-20T21:58:10" color="#38d3d3">}}

{{<matomeQuote body="＞運ゲー要素が強くなってるってことかも<br>いや、運じゃないよ。カリスマ性だよ。パフォーマンス能力とか、場合によっては道化を演じるスキルとか。人に好かれる才能があるんだよ。学べるけど、プログラミングみたいに一生ものだよ。プログラミングと同じで、生まれつき得意な人もいるけどね。俺は即興演劇と道化の訓練を6年もしてるから、PrimagenとかJoe Roganが何やってるか詳しく説明できるけど、真似できない。前よりは上手くなったけど、彼らのレベルには全然及ばない。" userName="josephg" createdAt="2025-03-21T01:04:15" color="#ff33a1">}}

{{<matomeQuote body="最近になってdevインフルエンサーの動画を見るようになったんだけど（結構楽しい！）、PrimeagenとTheoくらいしか知らないんだよね。おすすめの人がいたら教えてほしいな。どんな人に注目して、何を無視すべきか、自分なりのモデルを作りたいんだ。" userName="ninininino" createdAt="2025-03-20T17:16:47" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Primeはほとんどアンチインフルエンサーだよ。依存関係を増やさないことを推奨することが多いし。AIブームをからかいながら、最新リリースをちゃんとレビューして、コードを学ぶべきだって言ってる。ここで議論されてるようなインフルエンサーとは全然違うと思う。" userName="viraptor" createdAt="2025-03-20T22:09:24" color="#45d325">}}

{{<matomeQuote body="一番ヤバいのは、それがJS/HTMLの上に構築されてるってことだよね。JS/HTMLって、実はすごく安定した技術なのに。15年前に書いた5KLOCのvanilla JSのWebアプリが、一行も変更せずに10人くらいに毎日使われてるんだぜ。Win32アプリよりも長持ちしてる！フロントエンドの変更は、ほとんどが政治的・組織的な問題だと思う。" userName="0x000xca0xfe" createdAt="2025-03-20T15:14:28" color="#785bff">}}

{{<matomeQuote body="数年前に同じことやったけど、マジで面白かったよ。毎週のように変わるReactの依存関係から解放されただけじゃなくて、パフォーマンスも大幅に向上したし（何倍も速くなった）、コードの行数も減ったし、フレームワークのせいで発生した問題を回避する必要がなくなったから、コードもシンプルになったんだよね。Webプラットフォームを長年学んできたから、ライブラリに頼らずに組み込み機能を使えたから簡単だったんだけど、若い開発者はReactしか知らないから、IE6時代の考え方から抜け出せないんだよね。だから生産性は上がるんだけど、依存関係が増えまくって、乗り換えるコストが高くなっちゃうんだ。" userName="acdha" createdAt="2025-03-20T21:07:26" color="#45d325">}}

{{<matomeQuote body="＞若い開発者はReactしか知らないから、IE6時代の考え方から抜け出せないんだよね<br>IE6の最終リリース：2008年<br>IE6をみんなに使わせないようにするキャンペーン：2009年<br>Microsoftがそのキャンペーンに参加：2011年<br>Reactの最初のリリース：2013年" userName="thaumasiotes" createdAt="2025-03-20T22:07:47" color="">}}

{{<matomeQuote body="安定してるから、古いReactとかKnockoutのアプリは、一行も変えなくてもエンドユーザーは問題なく使えるんだよね。不安定なのは、ツール周りとか依存関係の方。BroccoliとBowerを使ってるプロジェクトに戻るのは悪夢だよ。しかも、それってほんの数年前の話。パッケージのバージョンとHomebrewの依存関係の組み合わせを特定しないといけないんだ。" userName="lelandfe" createdAt="2025-03-20T16:02:17" color="#ff5733">}}

{{<matomeQuote body="＞JSの世界では、半年も経たないうちに何かを書き直さないといけない気がする。マジありえない。<br>いや、そんなことないよ。自制心を持って、プロジェクトに取り込むものをちゃんと吟味すればいいんだよ。vanilla JS/jQueryの時代は、”依存関係の管理”って言ったら、.jsファイルをvendor/ディレクトリにコピペするだけだった。それがnodejs/npmが出てきて、モジュールを自分でプログラムせずにダウンロードしろって言われるようになった。でも、その時点で、数千行の隠れたコードを抱えるよりも、自分でコードを書いて、ボランティアにアウトソースすることに疑問を持つ人も多かったんだよね。プロジェクトをちゃんと管理すれば、目に見えない部分を肥大化させずに済むよ。そのためには、自制心を持って、「このライブラリのこの関数だけが必要だから、ライブラリ全体に依存するんじゃなくて、関数をコピペしてテストを追加しよう」って考えに戻る必要がある。だから、これは人とプロセスの問題であって、JavaScriptの問題じゃないんだよね。JS開発者の中には、この問題に悩まされてない人もたくさんいるし。" userName="diggan" createdAt="2025-03-20T13:53:48" color="#ff5c5c">}}

{{<matomeQuote body="わかるー。気をつければ避けられるけど、JavaScriptの問題って気がするな。少なくとも他の言語よりは。変化を受け入れる文化って感じ。マイナーなライブラリから主要なフレームワークまで、RustとかC++、Pythonよりも破壊的な変更がJSの方が多くない？Emacs Lispはアップグレードしても変更しなくていいし、サードパーティのライブラリも滅多にdeprecatedにならないし、丁寧だよね。JSのコードベースを数ヶ月放置すると、今のツールでビルドできなくなったり、セキュリティの脆弱性を修正するためのアップグレードがマジで大変なことになる可能性あるし。" userName="mplanchard" createdAt="2025-03-20T14:03:27" color="">}}

{{<matomeQuote body="JSのUIエコシステムは、AndroidとかiOSみたいなUIエコシステムと比較するべきだよ。UIのない環境じゃなくてさ。ReactとSwiftUIを比べるとかさ。SwiftUIは常に変化してて、破壊的で、まだベータ版みたいな状態が10年続いてるのに、特定のAppleのハードウェアとソフトウェアでしか動かないし。大抵UIKit/Cocoaでもアプリの一部を作る羽目になるし。Reactの方が安定してるって。HTML/JSしか触ったことない人は、恵まれてることに気づいてないんだよ。UI技術の普遍的な難しさをJS特有の問題だと思い込んで、他の環境の方が良いと思い込んでるんだ。" userName="hombre_fatal" createdAt="2025-03-20T16:49:46" color="#ff5733">}}

{{<matomeQuote body="＞JSのUIエコシステムはAndroidやiOSと比べるべき<br>＞HTML/JSしか触ったことない人は恵まれてることに気づいてない<br>Delphi/Free Pascalは20年前のコードがちょっと修正すれば今でもコンパイルできるし、Qtは30年以上開発・メンテされてて、今6th major releaseだし、Win32とかMFC、WinForms、WPFもあるのにね。マジJSエコシステムがあってよかったー。それなしでどうやって生きてきたのか想像もできないわ。" userName="wolvesechoes" createdAt="2025-03-20T17:57:21" color="">}}

{{<matomeQuote body="一方で、React + たくさんのライブラリを使えば、複雑なグラフィックス関連のアプリを数日で書けるんだよね。Win32 APIで同じことをするのに、2005年は数ヶ月かかったよ。Reactによる開発速度はマジでヤバい。" userName="cyberax" createdAt="2025-03-20T19:01:02" color="#ff5c5c">}}

{{<matomeQuote body="フロントエンド開発とかNPM固有の問題じゃないと思うけど、JavaScriptのエコシステム、特にReact周りの文化的な問題だと思う。2015年頃に、みんながコードを学ぶように勧められて、特にJavaScriptとReactを教えるコーディングブートキャンプを通して学んだのが原因かな。同時に、オープンソースへの熱意と、Githubをソフトウェアエンジニアとしての最初の仕事を得るための、より良いLinkedinのようなものとして使うのが流行ったんだよね。<br>その結果、多くの人が'is-odd'のようなくだらないパッケージを作って使ったんだよね。コーディングは簡単だけど危険がいっぱいだから、真剣に取り組むなら使うべきだ、みたいな。" userName="mablopoule" createdAt="2025-03-20T15:53:59" color="">}}

{{<matomeQuote body="最悪なのは文化的な側面だよね。このdeprecatedと破壊的な変更地獄は、何百万ものミクロな選択の結果なんだ。「MultiselectDropdownをMultiSelectButtonDropdownにリネームしよう！コンポーネントのAPIも完全に新しいものに変えちゃおう！クールじゃん！」みたいな。互換性を破壊することのコストを理解する文化がないんだよね。Goは後方互換性の約束があるから、Goのライブラリ開発者の互換性に対する姿勢に影響を与えていると思う。10年前に書いたコードが最新のGoバージョンで完璧にコンパイルされて動くのは素晴らしい体験だよ。<br>JS/Web地獄から抜け出すためにFlutterに乗り換えたんだ。ほとんどのWebスタックの複雑さを忘れられたけど、”パッケージを壊してもOK”みたいな文化がDartエコシステムにも忍び寄ってきててマジ勘弁。" userName="divan" createdAt="2025-03-20T17:03:23" color="#45d325">}}

{{<matomeQuote body="JSの文化的な問題は、どの組織もJSを必要としているってことが原因だと思う。その結果、ジュニア/ミッドレベルの開発者が大量にいるし、自然とハイプサイクルが起こりやすいんだよね。もうほとんどの組織はJSスキルで人を雇うべきじゃないんじゃないかな。バックエンドエンジニアを雇って、プログレッシブエンハンスメントされたUIを書くように訓練した方がいいんじゃないかな。" userName="evantbyrne" createdAt="2025-03-20T18:05:08" color="">}}

{{<matomeQuote body="主にフロントエンドエンジニアで、Pythonもやってるけど、マジで同じ気持ち。Pythonはdeprecatedとアップグレード不可能なライブラリと依存関係の寄せ集めだよ。フロントエンドの方がマシだよー。少なくともフロントエンドは、TypeScriptと制限された言語のおかげで被害の範囲が限られてるし。Pythonはマジで何でもできるから、ライブラリ作者も何でもやるんだよ。モジュールのインポート方法を変えたい？どうぞ！メタクラスを作ってクラスの前提を全部ぶっ壊したい？楽しんで！静的型付けが役に立つと思う？無理ゲー。Partial＜T＞みたいなことすらできないし、2つのオブジェクトが同じ型であることを静的にアサートできないし。<br>ライブラリが変わることに文句言ってるけど、Python 2 -> 3の移行はマジでヤバくて、前にいた会社は100M行のPythonモノリスを3にアップグレードする予定はなかったよ。SqlAlchemy 1 -> 2は8段階の移行が必要で、全部書き直さないといけないし。Reactがhooksを追加しただけで文句言うとかマジ？<br>フロントエンドのトレッドミルについての記事はたくさんあるのに、逆のことは誰も文句言わないのなんで？" userName="johnfn" createdAt="2025-03-21T03:55:07" color="#ff5c5c">}}

{{<matomeQuote body="だからEmber.jsが大好きなんだよね。残念ながら、人気は落ちちゃったけど（Reactより100万行のレンダリングが遅いとか、ロード時間が長いとかの理由で）、安定したエコシステムを構築したんだよね！他のフロントエンドライブラリでは、こんなにも安定性と安全なアップグレードに力を入れているのを見たことがないよ。" userName="gtsop" createdAt="2025-03-20T13:05:21" color="#45d325">}}

{{<matomeQuote body="え、今はpnpmを使うべきなの？yarnはどうなったの？npmの何が悪いの？半年くらい目を離したら、インストーラまで変わってるじゃん。npxって何？" userName="fragmede" createdAt="2025-03-20T13:03:14" color="">}}

{{<matomeQuote body="エンジニアなら、コアなWeb技術を理解してれば市場価値を高く保てるってことだね。<br>フロントエンド20年やってきて、色んな変化を見てきたから言えるけど、コア技術を知ってる方がエンジニアとして成長できるのは間違いない。でも、それが就職に有利かっていうと、ちょっぴり疑問。採用担当者はパターン認識しがちだからね。<br>結局、市場価値を上げるにはReactを使いこなせないと厳しい。それが基本で、他の知識はReactができてからって感じかな。著者の意図を誤解してたらごめんね。" userName="localghost3000" createdAt="2025-03-20T15:54:43" color="">}}

{{<matomeQuote body="Webの基礎技術を深く理解してることはめっちゃ重要で、特に大企業じゃ高く評価されるよ。フレームワークなんて engineers からしたら minor detail だからね。すぐに使いこなせるし。だから、深い知識があれば高い市場価値を得られると思う。<br>ただ、君の言うこともわかる。特にコンサルとか契約の仕事だとね。採用担当者の隣で見てると、使いたい技術を知らない人は即落とされる。テクニカルアーキテクトでも同じだよ。スキルがあっても、技術を ramp up するのが嫌なんだって。<br>だから、常に最新技術を追いかけないと、履歴書はゴミ箱行きだよ。" userName="Jcampuzano2" createdAt="2025-03-20T17:05:12" color="#45d325">}}

{{<matomeQuote body="「コア」ってのは「ライブラリなし」って解釈してるよ。ブラウザとHTMLファイルだけで何ができるかってこと。<br>MDNを調べてみるといいかも。<br>dialogって知ってる？<br>＞https://developer.mozilla.org/en-US/docs/Web/HTML/Element/di...<br>MutationObserverは？<br>＞https://developer.mozilla.org/en-US/docs/Web/API/MutationObs...<br>URLは？<br>＞https://developer.mozilla.org/en-US/docs/Web/API/URL_API" userName="tylerchurch" createdAt="2025-03-21T02:20:46" color="#785bff">}}

{{<matomeQuote body="MutationObserverの例を見たんだけどさ。<br>＞if (mutation.type === ”childList”) {<br>＞  console.log(”A child node has been added or removed.”);<br>＞}<br>DOMの変更って、ページのコード以外で起こることある？もしコードが変更したなら、MutationObserverの処理も一緒にやるんじゃない？<br>フロントエンド開発は未経験なんだけど、管理ページを作る必要があって。便利で、時代遅れにならない軽量なフレームワークってないかな？" userName="DidYaWipe" createdAt="2025-03-21T03:37:28" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="＞How can such changes occur to the DOM that aren't brought about by other code on the page? And if other code on the page brought them about, why didn't it also perform whatever the MutationObserver is doing?”<br>君の言うとおり、それでもいいんだけど、MutationObserverは複雑さを減らすために使えるよ。「divの中身が変わったら、これをする」って感じで、変化の可能性を全部考えなくてもいいんだ。<br>フレームワークはどれも便利だって言うけどね…！<br>便利そうなのは：<br>・Polyfills：標準APIを使って、ブラウザ間の互換性を保つ。<br>・Web components：JSモジュールをHTMLタグみたいに使えるようにするもの。Litが良いらしい。<br>・Vite：HTMLとかJSをまとめてくれる。高速で信頼性も高い。色んなフレームワークで使われてる。" userName="iainmerrick" createdAt="2025-03-21T12:54:05" color="#785bff">}}

{{<matomeQuote body="ユーザー操作でHTMLがDOMに追加されたとするじゃん？その要素にイベントリスナーを付けたい場合、MutationObserverが要素の追加を検知して、リスナーを付けたり外したりできる。初期化コードは一回書けばOK。" userName="hecanjog" createdAt="2025-03-21T13:59:47" color="#785bff">}}

{{<matomeQuote body="＞How can such changes occur to the DOM that aren't brought about by other code on the page?”<br>・別のチームとか第三者が書いたコードかもしれない<br>・ブラウザ拡張とか bookmarklet が MutationObserver を設定してるかもしれない" userName="joestrouth1" createdAt="2025-03-21T14:01:57" color="">}}

{{<matomeQuote body="UIパターンがあって、要素のスタイルや操作を定義したいとする。ビジネスロジックにそれをさせたくないから、特定の要素を検出するデコレーターを使うと楽になる。（アーキテクチャの経験からの理論的な例だよ）" userName="ivan_gammel" createdAt="2025-03-21T09:16:50" color="">}}

{{<matomeQuote body="DOM、events、CSS、WCAG。TypeScriptならtypeとinterface。NodeならNodeのドキュメントにあるライブラリシステム。それだけだよ。<br>ビルドツールは必要ない。自分で作れるし。" userName="austin-cheney" createdAt="2025-03-21T09:56:06" color="">}}

{{<matomeQuote body="DOMとかeventsとかCSS、WCAGか。TypeScriptやりたいならtypeとかinterfaceキーワード見ればいいし、NodeならNodeのドキュメントのライブラリシステム見ればOK。マジこれだけ。<br>build toolsなんて言ってないし。自分でサクッと作れるし、フレームワークのくだらないこと全部いらない。マジでそれって不安な人が使うか、遅くなるだけだぜ。" userName="austin-cheney" createdAt="2025-03-21T10:01:04" color="">}}

{{<matomeQuote body="30年この業界にいるけど、FEで最高の仕事もいくつかやったし、Reactのプロジェクトやったの去年が初めてなんだよね。俺が変なのかな？React知らなくても困ったことないんだよね。「table stakes」って言い過ぎじゃね？" userName="colordrops" createdAt="2025-03-20T16:41:19" color="#785bff">}}

{{<matomeQuote body="そりゃ「30年の経験」ってのは、履歴書に書いてあるスキルよりも有利に働くことが多いだろうけどさ。ジュニアとかミドルレベルの開発者が自分の能力を示す方法とは違うと思うんだよね。特に応募者がめっちゃ多い時は、パターンマッチングが普通になっちゃってるし。" userName="CognitiveLens" createdAt="2025-03-20T19:38:39" color="">}}

{{<matomeQuote body="俺が今まで働いたところ全部、基本的なCSの知識とかweb標準よりも、フレームワークの専門知識を重視するのを嫌がってたな。そんなに珍しいことじゃないと思うけど。Reactのスキルがあるって言うのは悪いことじゃないけど、それを履歴書全体にしちゃう人もいるよね。" userName="colordrops" createdAt="2025-03-21T00:35:28" color="#38d3d3">}}

{{<matomeQuote body="反論：15年の経験（C++が10年、Angular/Vueが5年）がある同僚が2年も職がないんだよね。Reactの経験がないから。地元の企業は誰も雇ってくれないし（EUの中規模のテックハブ都市）。近いうちに引っ越さないといけないかも。" userName="jakub_g" createdAt="2025-03-21T07:57:52" color="">}}

{{<matomeQuote body="FEの仲間には、APIデザインとかUnix tooling、ネットワーク、テストとか、他のたくさんのことを学んでほしいな。同じことを何度もフレームワークを学び直すんじゃなくて。" userName="coffeebeqn" createdAt="2025-03-20T17:13:53" color="#785bff">}}

{{<matomeQuote body="＞事実として、”市場価値”を最大化したいなら、Reactがめっちゃ得意じゃないといけない。<br>ある意味そうだけど、フルスタックエンジニアは”市場価値”のトップには遠く及ばない。フロントエンドの給料には上限がある。ある程度進むと、もうUIを作る必要はなくなる。" userName="ForTheKidz" createdAt="2025-03-21T07:18:17" color="">}}

{{<matomeQuote body="俺もFEで10年以上、開発経験は20年以上だけど、あなたに同意するよ。<br>ほとんどの企業は、大企業でも、基本的なことを気にしないし、それについて質問もしないし、そういう人を雇わない。「Reactが得意」とか「Next.jsの経験が豊富」とかで判断する。基礎はスクラッチで構築するならいいけど、企業はほとんどそんなことしない。既にあるエコシステムが大きくてドキュメントが充実しているものを使う。それらが得意になれば雇われやすい。基礎は後から学べる。" userName="vlucas" createdAt="2025-03-24T16:10:43" color="#ff5733">}}

{{<matomeQuote body="面接で、特定のフレームワークの経験があるか聞かれたって話を直接聞いたことがあるよ。その人はFEの経験もあって、似たようなフレームワークを使ったことがあったのに、結局、その特定のフレームワークの経験がないって理由で落とされたらしい。<br>だから、基礎も大事だと思うけど、雇われ続けたいなら、それがベストな方法じゃないってのもわかる。" userName="skwee357" createdAt="2025-03-21T14:52:14" color="#ff33a1">}}

{{<matomeQuote body="わかるー。そういうフレームワークって独自のパラダイムとか抽象化を追加してくるから、Webのコアな標準を気にしなくても良くなっちゃうんだよね。でもそれって機会損失でもあると思ってて。標準も進化してるのに、多くのWeb開発者は2015年で止まってて、AngularとかReact、Bootstrapとか使ってるし。CSSだってoklchカラーとか変数とかレイヤーとか色々あるのにね。会社とかデザイナーも、フレームワークに縛られて、今できることを活かせてないんじゃないかな。React Nativeとかもそう。OSとかツールを理解せずに使っちゃうから、widgetとかlive activitiesみたいな機能が作れないんだよね。最高のアプリ体験を提供したいなら、専用のアプリ開発者とデザイナーが必要だよ。" userName="Cthulhu_" createdAt="2025-03-21T16:38:06" color="#45d325">}}

{{<matomeQuote body="いっそのこと、フレームワークを使わないのはどう？HTML5とCSSとVanilla JSで十分できることたくさんあるよ。最初から「フレームワークを選ぼう」ってなるのは間違いだと思うな。大規模なSPAなら別だけど。確かに、フレームワークを使えば無料で手に入るものを自分で書く必要はあるけど、長い目で見ればアップグレードの苦労がない分、むしろ楽だよ。" userName="speleding" createdAt="2025-03-21T12:23:46" color="#38d3d3">}}

{{<matomeQuote body="UIなんてなくても、ASCIIで数字の表を表示するだけで価値を最大化してきた人たちはたくさんいるよ。Perplexityみたいな検索サービスがAPIを食い荒らすようになるだろうし、UIなんて誰も気にしなくなるって。みんな自分のためにデータを見たいんだよ。UIが革新されたのは90年代のreactive-functional-spreadsheetsが最後かな。HTML/ブラウザも一時期はそうだったけど、すぐにsoc．net．brosに悪用されて、結局クローズドなアプリがオープンなインフラの上で動くようになっただけ。" userName="larodi" createdAt="2025-03-21T13:32:43" color="">}}

{{<matomeQuote body="＞どんなフレームワークを選んでも5年後には廃れるよ。<br>フロントエンドエンジニアじゃないんだけど、Reactを10年くらい使ってるよ。Svelteに移行する動きもあるけど、SvelteがReactを超える頃には、それくらい時間が経ってると思う。Angularもそのうち廃れるかもしれないけど、Reactより前からあるし。フロントエンドの進化は早いけど、そこまで酷くないよ。地味な選択をすれば、地味な結果になるってこと。" userName="jchw" createdAt="2025-03-20T15:51:21" color="">}}

{{<matomeQuote body="＞Angularが廃れるかもって話、それは正しいけど、見落としてる点もあると思う。Angular1と2は全く別物だったし。Angular自体も大きく変わってる。standalone componentsとか、新しいtemplate syntaxとか、signalsとか。Reactもそう。functional componentsとhooksが出てきて、パラダイムシフトが起きた。SSRが流行ったと思ったら、SPAになって、またSSRに戻ったりね。" userName="moooo99" createdAt="2025-03-20T19:30:45" color="#ff5733">}}

{{<matomeQuote body="Angular 2がAngular 1と全然違うってのは同意。Angularは安定してなかったし。Reactは初期のリリースを0．xとしてたけど、Angularはv4くらいまで不安定だったと思う。functional componentsは昔からあったけど、hooksはちょっと後から来た感じ。互換性があるのが大事だよね。class componentsも使い続けられるし。" userName="jchw" createdAt="2025-03-20T19:59:31" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="Angularの新しいバージョンってサポートがすぐ終わっちゃうから、うちのTLMトラッカーじゃリリース初日からもうリスク扱いだよ！" userName="samspot" createdAt="2025-03-21T16:15:51" color="#ff5733">}}

{{<matomeQuote body="それ、マジで問題だよね。LTSバージョンってことなのに12ヶ月しかサポートないとか短すぎ。" userName="moooo99" createdAt="2025-03-21T23:34:08" color="">}}

{{<matomeQuote body="今のReactって10年前のReactと全然違うじゃん。別のフレームワークって言ってもいいくらい。だから、そういう面もあるよね。" userName="eximius" createdAt="2025-03-20T21:06:21" color="">}}

{{<matomeQuote body="今のReactはhooksとか使うのが主流だけど、昔ながらのクラスベースのコンポーネントもまだ使えるし、新しいのと混ぜて使えるから徐々に移行できるんだよね。deprecationもいくつかあったけど、自動でコード移行するツールもあるし。" userName="nicoburns" createdAt="2025-03-20T23:54:55" color="#785bff">}}

{{<matomeQuote body="10年間React毎日使ってて、EmberとかAngularとかバックエンドのフレームワークも色々使ってきたけど、それには同意できないな。hooksくらいしか意味のある変更なかったと思うし、それだって理解するのに1日、使いこなせるようになるのに1週間くらいだったよ。Reactの基本的な使い方は最初から変わってないし。SQLとReactは一番長く使ってるツールだよ。" userName="cloverich" createdAt="2025-03-21T15:06:06" color="#785bff">}}

{{<matomeQuote body="同じようなこと言ったら、ほとんどのフレームワークも同じだし、JSのパッケージのアップデートも同じだよね。小さな非互換性が積み重なって、結局は作業が発生するってこと。" userName="eximius" createdAt="2025-03-21T16:15:32" color="">}}

{{<matomeQuote body="React Hooksが出てから8年経つけど、Reactのコードはここ8年でそんなに変わってないよ。Reduxを使わなくなったくらいかな。" userName="theknarf" createdAt="2025-03-21T10:31:26" color="#45d325">}}

{{<matomeQuote body="Reactだけ見てればそうかもしれないけど、みんなそうやって使ってるわけじゃないじゃん。8年前はcreate-react-appが出たばっかりでNext.js v2はwebpack 3だったんだよ。create-react-appはもう古いし、Nextも全然違うし。hooksは2019年にリリースされたし。" userName="joestrouth1" createdAt="2025-03-21T14:19:49" color="#785bff">}}

{{<matomeQuote body="ライブラリとかフレームワークが変更されて、プロジェクトのメンテナンスが必要になるのは仕方ないと思うよ。Qtでそうなっても怒らないし。Qtの方が頻度が少ないって言うかもしれないけど、QtはReactよりずっと古いし。Reactが10年前はまだstableだと思われてなかったし。<br>依存関係を少なくして、地味な選択をすれば、10年放置しても最新の依存関係でビルドできないかもしれないけど、全部書き直す必要は絶対ないはず。基礎を学ぶのは良いことだし、依存関係を減らすべきだけど、フレームワークは5年でなくなるから使わない方が良いって言うのは言い過ぎだと思う。" userName="jchw" createdAt="2025-03-20T21:16:03" color="">}}

{{<matomeQuote body="Reactの世界では、水面下で大きなことが起きてると思うな。新しいコンパイラとか、RNの新しいアーキテクチャとか。ほとんどのユーザーは知らないけど、すごいエンジニアが何年もかけて取り組んでる巨大なプロジェクトだよ。" userName="Cthulhu_" createdAt="2025-03-21T16:40:13" color="#785bff">}}

{{<matomeQuote body="Reactを10年くらいやってるんだけど、Svelte 5を数日前から触り始めたんだよね。マジでシンプルで使いやすい！簡単な在庫管理アプリを作ってみたら、bundle sizeが9kb(gzip)でビビった。他のフレームワークより全然小さいし、htmxよりも小さいってどういうことなの。" userName="jilles" createdAt="2025-03-20T19:14:55" color="#ff33a1">}}

{{<matomeQuote body="Svelte 5はマジで革新的だと思う。ただのフレームワークって感じがしないんだよね。生のHTML、CSS、JSでフロントエンドを作る延長線上で、最終的に困ることを解決してくれるような、そんな自然な感じ。" userName="sickblastoise" createdAt="2025-03-23T09:15:29" color="#785bff">}}

{{<matomeQuote body="確かにね。「時代遅れ」ってのは言い過ぎかも。古いフレームワークでも、人がいて、雇えるなら、しばらく使えるし。せいぜい「古い」とか「レガシー」って感じかな。誰もいなくなったら時代遅れだけどね。" userName="codingdave" createdAt="2025-03-20T16:33:46" color="">}}

{{<matomeQuote body="使えるけど、そのうち色々壊れてくるんだよね。依存関係は古くてCVEだらけだし（対応しないといけない契約になってるかも）。開発ツールの拡張機能はもうメンテされてないし、Sentryもサポートやめちゃうし。<br>新しいバージョンとか別のフレームワークに移行したいけど、色々変わってて大変。結局、フロントエンドを書き換えるだけの無駄な時間を過ごすことになるんだ。終わったと思ったらTailwind 4が出たりして。" userName="9dev" createdAt="2025-03-20T20:09:41" color="#ff33a1">}}

{{<matomeQuote body="偶然だけど、Tailwind v3からv4に移行したばかりなんだよね。Tailwindはあんまり好きじゃないんだけど。移行ツールが全部やってくれたよ。実行したら、v3じゃなくてv4でビルドできて動いた。" userName="jchw" createdAt="2025-03-20T21:01:56" color="#785bff">}}

{{<matomeQuote body="Reactだけじゃなくて、同僚がインストールしたよくわからないパッケージも問題なんだよね。" userName="endemic" createdAt="2025-03-20T17:41:52" color="">}}

{{<matomeQuote body="そうそう！マジでやめてほしい！数年しかメンテされないような適当なパッケージを入れるのは、メンテ的にもbundle size的にも最悪。自分でやるのは面倒だけど、そこまで大変じゃないし。<br>どうしてもサードパーティのパッケージを使うなら、ちゃんとサポートされてるか、長年活動してる開発者とか組織がバックにいるか、ライブラリ自体が成熟してるか、くらいは確認してほしい。" userName="jchw" createdAt="2025-03-20T17:56:36" color="#785bff">}}

{{<matomeQuote body="10年前に始めたReactと同じバージョン使ってる？そもそも10年前のReact使える？10年前のプロジェクトを今ビルドできる？" userName="mlboss" createdAt="2025-03-20T17:40:14" color="">}}

{{<matomeQuote body="前の職場では、2013年頃のClojureScriptのコードベースで、ReactベースのUIだったんだ。ClojureScriptとReactの大きなアップグレードを10年間乗り越えて、git blameで2013年〜2014年のコードがたくさん残ってたよ。<br>ClojureScriptは後方互換性を重視してるから、あまり変わらなかったんだと思う。Reactのコードも、ビジネス要件を満たしてて「動いてた」から、2013年から2022年まで全然変わってなかったり。<br>もうそこでは働いてないけど、初期のフロントエンドを今ビルドできない理由はないと思う。最近はTypeScriptでフロントエンド書いてて、React、TypeScript、色んなライブラリのアップグレードを乗り越えてるよ。<br>ただ、ライブラリのリリース速度は、他のエコシステム(Clojure, Java, Rustとか)に比べてマジで早い。" userName="koito17" createdAt="2025-03-20T17:52:29" color="#ff5733">}}

{{<matomeQuote body="話を変えてるじゃん！メンテが全く必要ないなんて言ってないよ。5年ごとに全てが崩壊するわけじゃないって言ってるだけ。<br>フロントエンド以外でも、10年前のプロジェクトはかなりヤバい状態になってると思う。C/C++のプロジェクトでも、コンパイラの改良でコンパイルできなくなることだってあるし。<br>2015年のReactプログラムなら、今のReactで動くようにするのはそんなに難しくないと思う。Reactの一番大きな変化は、createClassからECMAScript 2015 classesへの移行だった。ReactはECMAScript 2015 classesが登場する前にリリースされたけど、すぐに採用された。だから、10年前のプロジェクトはECMAScript 2015 classesを使ってるはず。もし違ったら、機械的に移行できる。他にも互換性がなくなる可能性はあるけど、全部ドキュメントされてるし、アプリを全部書き換える必要はないよ。<br>10年前のプロジェクトを、10年前のReactでビルドできるかって？できるよ。古いNode.jsが必要になるだろうけど、npmにはまだ古いパッケージが全部あるし。" userName="jchw" createdAt="2025-03-20T18:13:41" color="#38d3d3">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
