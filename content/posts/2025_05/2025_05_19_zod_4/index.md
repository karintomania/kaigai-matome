+++
date = '2025-05-19T00:00:00'
months = '2025/05'
draft = false
title = 'Zod 4 登場！パフォーマンス向上や気になる改善点は？'
tags = ["TypeScript", "バリデーション", "ライブラリ", "パフォーマンス", "バージョン管理"]
featureimage = 'thumbnails/light_colour3.jpg'
+++

> Zod 4 登場！パフォーマンス向上や気になる改善点は？

引用元：[https://news.ycombinator.com/item?id=44030850](https://news.ycombinator.com/item?id=44030850)




{{<matomeQuote body="バージョニングについて作者だけど、なんでも聞いてね！Zodの状況はnpmが想定してない特殊なケースなんだ。多くのライブラリがZod内部に依存してるから、メジャーバージョン上げると依存ライブラリも全部上げなきゃいけなくて、バージョンアバランチ起きちゃう。だからGolangみたいに、破壊的変更は新しいサブパス（”zod/v3”とか”zod/v4”）で出す方式にしたよ。これで依存ライブラリもユーザーも両方対応しやすくなるんだ。詳しい理由はIssue[0]見てね。" userName="colinmcd" createdAt="2025/05/19 18:32:43" color="#38d3d3">}}




{{<matomeQuote body="Zodの開発お疲れ様です！特にパフォーマンス向上やdiscriminated unionsの改善、うちのコードベースでは超助かると思う！バージョン管理の理由は理解できるけど、個人的にはv4.0.0パッケージみたいなのが欲しかったな。依存関係の衝突気にしないユーザーにとっては、importを”zod/v4”に変えるのめっちゃ面倒になりそうなんだよね。IDEの自動インポートとかlintルールとかで対応しなきゃいけないだろうし。でも、全体的に超良さそうだし、これは小さな不満だよ。開発本当にありがとう！" userName="Shacklz" createdAt="2025/05/19 20:39:08" color="#ff33a1">}}




{{<matomeQuote body="+1。うちもZodは内部バリデーションにだけ使ってるから、v4だけのリリース（zod4とか@zod/zodみたいな別のパッケージでもいい）があればよかったな。新規プロジェクトの人たちもきっとそっちの方がいいって思うはずだよ。" userName="e1g" createdAt="2025/05/19 21:20:56" color="">}}




{{<matomeQuote body="＞ Golangがやってるのと同じアプローチにしたんだね。破壊的変更は新しいサブパスで出す感じ。TypeScriptエコシステムでは、peer dependencyでzod@^3.25.0にしとけば、”zod/v3”と”zod/v4”から必要なものをimportして両方サポートできるってこと。ユーザーも少しずつアップグレードできていいね。これ、めちゃくちゃ賢いね！これで古いバージョンのセキュリティアップデートも同じコードベースで全部提供できるってことだもんね。" userName="robertlagrant" createdAt="2025/05/20 09:05:29" color="">}}




{{<matomeQuote body="記事に書いてあったらすまん、今スマホなんだ。.optional()のTypeScriptでの挙動修正[0]って、トップ10の修正に入ってる？これがZodで一番困ってたことなんだよ…でもZodはそれくらい良いから、それでも使い続けてるけどね :) このエコシステムの素晴らしい一部をありがとう！[0] https://github.com/colinhacks/zod/issues/635" userName="kaoD" createdAt="2025/05/19 20:40:58" color="">}}




{{<matomeQuote body="そうだよ！Zodは今、z.string().optional()とz.union([z.string(), z.undefined()])（TypeScriptそのものみたいにね）を区別するようになったんだ。詳しいことはこのポスト見てね：https://x.com/colinhacks/status/1919291504587137496" userName="colinmcd" createdAt="2025/05/20 07:26:50" color="#ff33a1">}}




{{<matomeQuote body="まずハードワークお疲れ様です！新しい機能で、俺がローカルで色々やってたハックがいらなくなりそうで超助かるよ！フォーム名のタイプミスとか防ぐのに、https://github.com/raflymln/zod-key-parserみたいなのを自分で魔改造して使ってるんだ。これZod本体に実装されてないの、ちょっと意外でさ。これはZodのスコープ外って考えてる？それともまだ手が回ってないだけ？作者の意見聞いてみたい。（これについての議論はここにあるよ：https://github.com/colinhacks/zod/discussions/2134）" userName="elbajo" createdAt="2025/05/19 18:57:17" color="">}}




{{<matomeQuote body="FormData/URLSearchParamsみたいな構造への対応はスコープ内だよ。でも今回は見送られたんだ。HTML input/formはTypeScriptとは「optional」の考え方が違うし、別のサブライブラリ（”zod/v4-form”みたいな）でやるのが良いかもね。君の紹介してくれたzod-key-parserライブラリ良いね！エコシステムページに追加するPR出してよ :)" userName="colinmcd" createdAt="2025/05/19 19:10:03" color="#ff5733">}}




{{<matomeQuote body="Zod 4の最初のバージョンが3.25.0ってこと？これ、やばくない？---俺、Zodのアルファ版を何か月も使ってたんだけど、package.json編集するだけでアップグレードしたかったのに。今は代わりにgit履歴をあちこち見なきゃいけないってこと？Colin、君のプロジェクトにはマジ感謝してるよ。フィードバックとして言わせてもらうと、これ↑君がやらなくても良かったくらい大変にしたと思うよ。（もしかして、3.xのやつと一緒に4.xも公開できなかったの？）" userName="paulddraper" createdAt="2025/05/19 19:29:34" color="">}}




{{<matomeQuote body="衝動的な反応だってのはわかるよ。軽く考えてやったわけじゃないんだ。<br>＞3.xと4.xを一緒に公開したらどうか<br>npmの仕組みについていくつか誤解してるみたいだね。残念ながら君が思ってるより単純じゃないんだ。`latest`タグは一つだけだし、「最新」バージョンも一つだけ。後続バージョンはsemverに従うのが前提だよ。zod@4を公開したら、もうzod@3.x.xの追加バージョンは出せないんだ。回避策でv3を別のdistタグ（zod@three）にする手もあるけど、それを使う人はsemverの範囲指定ができなくなる。詳しくは[0]の解説を読んでみてほしいな。単純なメジャーバージョンアップが招く混乱の大きさとか、Zodエコシステムのライブラリの継続性確保のためにこの方法が必要だった理由を、君は十分理解できてないと思うよ。[0] https://github.com/colinhacks/zod/issues/4371" userName="colinmcd" createdAt="2025/05/20 18:40:14" color="#45d325">}}




{{<matomeQuote body="4.x.xの後に3.x.xを公開することは絶対できるよ、ただ“latest”にはならないだけで（もちろんね）。<br>率直に言って、これってnpmでライブラリがアップグレードされる普通のやり方じゃないし、こんな提案をするのは信頼感を抱かせないね。" userName="paulddraper" createdAt="2025/05/21 00:05:13" color="">}}




{{<matomeQuote body="破壊的変更をリリースする時のあなたの配慮に本当に感謝したいです。全てのライブラリがあなたの方法を使えるわけじゃないのは分かってますが、フロントエンドプラットフォームエンジニアとして、もっと多くのライブラリがそうしてくれることを願っています。" userName="dclowd9901" createdAt="2025/05/20 00:55:19" color="">}}




{{<matomeQuote body="短期的な痛みが一番少ない道が、多くの場合最善の道だよね。<br>Pythonエコシステムに長くいる人はみんな、Python 2と3の移行騒動を覚えてるよ。" userName="miohtama" createdAt="2025/05/19 18:40:35" color="">}}




{{<matomeQuote body="他の多くのライブラリみたいに、世界を破壊しなかったことに心から感謝します！<br>基盤だけど補助的なライブラリでの破壊的変更は、フロントエンド開発の世界ではもう笑えないくらい辛いんですよ。" userName="egorfine" createdAt="2025/05/20 08:56:27" color="">}}




{{<matomeQuote body="v3とv4のスキーマ自体の間に相互運用性はあるのかな？うちは数百（もしかしたら数千）ものZodスキーマの巨大なグラフを持ってて、多くが他のを継承したり拡張したりしてるんだ。両バージョンがきれいに連携できないと、段階的なアップグレードができるとは考えにくいね。でも、最悪の場合500行のスキーマファイルが80万行の生成型になるっていう僕たちの問題がこれで直るか見るのが楽しみだよ。" userName="andrewingram" createdAt="2025/05/20 11:17:49" color="#ff5c5c">}}




{{<matomeQuote body="いいえ、その種の相互運用性、特に静的な（代入互換性）のは全く不可能だったんだ。変更ログは長いけど、ユーザー向けのAPI表面での破壊的変更はごくわずかだよ。ほとんどが内部や構造的な変更、それに非推奨化（大体は検索と置換で直せる）なんだ。.d.tsの問題についてはまた報告してね。ずっと良くなってるはずだよ。ああいう型の爆発は、TypeScriptが関数やメソッドの戻り値の型を推論する必要がある時に起きがちなんだ。Zod 4は`isolatedDeclarations`を使ってるから、ああいうことは起きないはずだよ。" userName="colinmcd" createdAt="2025/05/20 18:32:40" color="#785bff">}}




{{<matomeQuote body="いいえ。これを試すとエラーが出るでしょう。" userName="paulddraper" createdAt="2025/05/20 13:33:08" color="">}}




{{<matomeQuote body="両方のバージョンを一緒に公開するのは互換性の問題には役立つけど、tree-shakingが有効になってない環境だとライブラリがさらに重くなるね。例えばReact Nativeでは、tree-shakingを機能させるにはかなり苦労しないといけないんだ（デフォルトのmetro bundlerから抜け出す必要があったりして、それが無理なことも多い）。" userName="bilalq" createdAt="2025/05/20 03:49:09" color="#ff5c5c">}}




{{<matomeQuote body="再帰的なスキーマの型推論を解き明かしたっていうあなたのツイートを見たよ。この問題の解決策ってかなり分かりやすくてシンプルみたいだね。解決策はgetterを使うくらい単純だったのか、それとも僕が理解できてない何か別の複雑さがあるのかな？" userName="ssousa666" createdAt="2025/05/20 03:44:22" color="#785bff">}}




{{<matomeQuote body="解決策はTypeScriptがオブジェクトの値の型を積極的に検証するのを避けることだよ。積極的な検証は循環参照を壊しちゃうんだ．" userName="mary-ext" createdAt="2025/05/23 05:35:53" color="">}}




{{<matomeQuote body="Zodのソースコードって，何が起きてるか説明するのちょっと大変だと思うんだよね．だから，同じ原理を使った自分で書いた小さなバリデーションライブラリがこれさ<br>https://github.com/mary-ext/atcute/blob/596e023bcb490b16d09a..." userName="mary-ext" createdAt="2025/05/23 05:37:25" color="">}}




{{<matomeQuote body="Zodの開発作業，本当にどうもありがとう！すごいライブラリだし，この2年間Node環境でのデータ検証－解析でめちゃくちゃ役に立ってるよ．" userName="jjice" createdAt="2025/05/19 19:13:49" color="">}}




{{<matomeQuote body="再帰型とdiscriminated unionを組み合わせるのにすごく苦労したんだ（例えばjsonの中のxmlみたいなの）．<br>これで良くなると良いね．" userName="waynenilsen" createdAt="2025/05/19 21:08:36" color="">}}




{{<matomeQuote body="新しいAPIを既存のに加えていくのは良い進化戦略だけど，v3．25にv4を同梱するやり方はsemantic versioningがごちゃごちゃになって混乱するね．<br>v3 APIが非推奨になるかもって心配もある．長期で使うプロジェクトでZodに手を出すのはちょっとためらうかな．<br>数年後には今のv3みたいにv4も扱われるだろうと予測できるから．<br>でも開発者が古いAPIをずっとメンテしたくないって気持ちもわかるよ．" userName="jmull" createdAt="2025/05/19 21:25:38" color="#ff5733">}}




{{<matomeQuote body="うーん…単にzod4っていうパッケージを公開した方がもっと理にかなってない？" userName="IshKebab" createdAt="2025/05/20 11:04:05" color="">}}




{{<matomeQuote body="TLDR：package jsonに何て書けば最新の最新の最新が手に入るの？<br>”^4”かな？" userName="nisten" createdAt="2025/05/20 04:27:33" color="">}}




{{<matomeQuote body="記事から引用：”Zod 4はZod 3と並行してzod@3．25リリースの一部として公開される．Zod 4は「／v4」サブパスからインポートする”<br>npmは依存関係管理システムとして完全にダメだね．<br>peer dependenciesが壊れすぎて，v4がv3のふりをしなきゃならなくなったんだから．" userName="rafram" createdAt="2025/05/19 16:01:38" color="">}}




{{<matomeQuote body="＞peer dependenciesは壊れすぎてて，v4はv3のふりをしなきゃならなくなったんだ<br>これは正しい結論じゃないと思うな．<br>zod v4がv3に含まれてるのは，ユーザーが段階的に移行できるようにするためだと思うよ．<br>つまり，全部の箇所を一つずつ’import ... from ’zod／v4’’にリファクタリングして，それが終わったら完全にv4にアップグレードする，ってこと．" userName="gejose" createdAt="2025/05/19 16:13:30" color="#45d325">}}




{{<matomeQuote body="どうやってインクリメンタルに移行すんの？なんで古いコードと新しいコードを一緒にするの、まるでフランケンシュタインのプロジェクトみたいじゃん？特に自分で所有してるコードベースなのにさ。ライブラリでしょ、プラットフォームじゃないんだし。" userName="skydhash" createdAt="2025/05/19 17:36:06" color="">}}




{{<matomeQuote body="もう何年もnpmしか使ってないからわかんないんだけどさ、v3からv4へ一気にやらずに、ちょっとずつ移行する良い方法って他にないの？" userName="herrkanin" createdAt="2025/05/19 17:21:53" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="解決策の一つとして、新しい名前でパッケージ出すってのはどうかな。個人的には、ライブラリでそれを考えてて、公開APIは絶対に変えないって決めて、もっといいやり方を見つけたら、代わりに新しいライブラリを作るんだ。そしたら、古いAPIを使いたい人やメンテしたい人はそのまま続けられるでしょ。" userName="diggan" createdAt="2025/05/19 17:44:54" color="#38d3d3">}}




{{<matomeQuote body="Zodがコードベースの土台になってる大規模プロジェクトでは、一括移行は無理で、少しずつやりたいんだよね。npmでV4をV3として出すのが良いかは分かんないけど、それがインクリメンタル移行を楽にするための狙いみたいだよ。" userName="diggan" createdAt="2025/05/19 17:43:20" color="#38d3d3">}}




{{<matomeQuote body="新しい名前に変えてもさ、名前ってすごい定着しちゃうから、誰も新しい方には変えないんじゃないの？意味なくない？" userName="Sammi" createdAt="2025/05/19 19:41:55" color="">}}




{{<matomeQuote body="もしそれがコア領域の一部なら、機能セットとかAPIは可能な限り安定させたい理由の一つだね。NPM/JS文化は全てを一つの言語で書くせいで、モジュール化やSOLID原則を忘れがち。DX重視でメンテを後回しにするのは良くないね。" userName="skydhash" createdAt="2025/05/19 17:53:42" color="#785bff">}}




{{<matomeQuote body="著者だよ。npmはZodの状況に合わないのは確かだけど、Zodは他のライブラリにない制約があって、メジャーバージョンアップが”バージョンの雪崩”を引き起こすリスクがあったんだ。だからGolangみたいに新しいサブパス（zod/v4）で対応するアプローチにしたんだよ。これでzod@^3.25.0のpeer dependencyでv3もv4もサポートできるし、みんなも少しずつ移行できるんだ。<br>https://github.com/colinhacks/zod/issues/4371" userName="colinmcd" createdAt="2025/05/19 18:23:01" color="#ff5733">}}




{{<matomeQuote body="Zodは”自分のコア領域”で使われる全てのスキーマと型を定義するために使うんだよ。これはビジネスロジックとかモデル、インターフェース定義の土台だし、FEとBEの間でこれら全部を共有できるようにするんだ。これは正確さでも開発生産性でもとてつもない改善だよ。" userName="Sammi" createdAt="2025/05/19 19:15:27" color="#785bff">}}




{{<matomeQuote body="新しいのが必要になったら、みんなそれに切り替えるでしょ。それに、しばらくしたら古い方のサポートを打ち切る権利もあるんだからさ（みんなに移行する時間は与えるべきだけど）。" userName="skydhash" createdAt="2025/05/19 19:55:25" color="">}}




{{<matomeQuote body="FE/BEでスキーマを共有したい気持ちは分かるけど、それは欠陥アプローチだと思うな。FEとBEはドメインが違うから、モデルは時間が経つとズレてくるものだよ。シンプルなアプリなら単一スキーマでもいいけど、複雑になるとちゃんとデータ形状を設計する必要があることを忘れちゃダメだよ。" userName="skydhash" createdAt="2025/05/19 19:43:05" color="#45d325">}}




{{<matomeQuote body="＞10倍良くないと乗り換えないよ<br>そうならない理由を説明したでしょ。みんな慣れてて信頼してるものにしがみつくんだ。ただ単に良さそうな別のものがあるからって変えたりしないんだよ。何かから別のものに移行するには、10倍良くないとダメなんだ。もしあるものを少しずつ良くしたいなら、そのものに対して少しずつ改善していくしかないよね。" userName="Sammi" createdAt="2025/05/20 09:33:15" color="">}}




{{<matomeQuote body="Zod 4のβ版を既に使ってて、すごく改善されてるんだけど、うちの巨大なコードベースだと必要なmoduleResolutionの設定に対応できなくて、アップグレードできないんだ…<br>せめてレガシー層なしでメジャーバージョンとして出してくれても良かったのに。<br>EDIT：理由はこっちで見たばっかりだよ：https://github.com/colinhacks/zod/issues/4371<br>TLDR：彼はエコシステム全体に「バージョンバンプ雪崩」を起こしたくないんだって。（でも、v3のバグ修正とかサポートはできるんだから、それは起こらないと思うんだけどね、今もそうしてるみたいにさ）" userName="derN3rd" createdAt="2025/05/19 16:12:25" color="#785bff">}}




{{<matomeQuote body="別の”zod4”パッケージとして公開するのと比べて、このアプローチに何かメリットあるの？そっちの方がオプトインで段階的だし、ダウンロードサイズがずっと膨らむこともないし、うっかり間違ったものをimportしにくくなると思うんだけど。" userName="codeflo" createdAt="2025/05/19 18:32:14" color="#ff5c5c">}}




{{<matomeQuote body="みんなネガティブなものにはすぐ高評価付ける感じだね。これはnpmの制限ってわけじゃないし、この決定に繋がるnpmの根本的な問題があるわけでもないよ。これは、たくさんの破壊的変更を導入したライブラリを、段階的に変えていくことを可能にする、もっと現実的なやり方だと思うな。" userName="Trufa" createdAt="2025/05/19 17:38:27" color="">}}




{{<matomeQuote body="npmに元々あるpackage aliasesのサポートを使って、zod@3をzodとして、zod@4をzod-nextとして同時にインストールするとか？<br>Edit：理由を読んでるんだけど、peer dependenciesについての話なんだね。まだちょっと混乱してるよ。" userName="strken" createdAt="2025/05/19 17:33:50" color="">}}




{{<matomeQuote body="ポイントは、どこかでバイトをネットワーク越しに送り、誰かがそれを受け取る必要があるってこと。チームが違ったり、スキルのレベルがバラバラだったりする場合、型付きのシリアライズライブラリはすごく助けになるんだ。<br>仕事でHaskellっぽいプログラミング言語をメンテしてて、OLAPクエリのJSON表現を吐き出してるんだけど、その言語を詳しく知ってるのは僕だけなんだ。でもみんなそのJSONを使って作業するってことになってる。もし僕が何か間違ってシリアライズしたり、他の誰かがフロントエンドのJSON定義を間違ってタイプしたりしたら、すごく大変なことになるんだ。<br>言うまでもなく、みんなにとってその状況をもっと安全にするために、Zodみたいなものを追加するつもりだよ。" userName="dmkolobov" createdAt="2025/05/19 20:30:49" color="#785bff">}}




{{<matomeQuote body="＞10倍良くないと乗り換えない。みんな慣れてるものにしがみつくんだ。<br>それはその通りだね、彼らの視点から見ても筋が通ってるよ。僕もたぶん同じことすると思う。<br>既存のライブラリを変えるんじゃなくて、新しいライブラリを作る方が、使う側はどっちのアプローチにするか選べるようになるんだ。最新で素晴らしいものが欲しいけどAPIが壊れてもいいならこのライブラリを使って、今のAPIを使い続けたいならこのライブラリを使って、みたいにね。そうじゃなくて、最初のやり方をみんなに半ば強制してる感じがして、個人的にはあんまり好きじゃないな。" userName="diggan" createdAt="2025/05/20 11:23:44" color="#785bff">}}




{{<matomeQuote body="実際のv4リリースをして、zod/v4をそこでデフォルトにする計画ってあるの？もしかして、zod v3が/v4パスを含んで、zod v4が/v3パスを含む、みたいな同時リリースとか？それから4.1以降は/v3なしの純粋なzod v4に収束するとか。" userName="Lvl999Noob" createdAt="2025/05/19 19:54:40" color="#785bff">}}




{{<matomeQuote body="うん、2つのバージョンをimportできるってことはさ、v3のオブジェクトをv4のメソッドに渡したり、その逆もできちゃうかもしれないってことだよね。それはめちゃくちゃマズいアイデアに思えるな（型チェック通るか、実行できるかどうかもだけどさ）。" userName="rafram" createdAt="2025/05/19 17:42:39" color="">}}




{{<matomeQuote body="エコシステムのライブラリは、単一のpeer dependencyから2つのoptional peer dependencyに切り替える必要があるんだ。技術的には“optional peer dependencies”ってものが一応あっても、ライブラリがユーザーが実際にどっちのパッケージを使ってるかを判断するのは機能的には不可能だよ。<br>例えば、ライブラリが`acceptSchema`関数を実装しようとしてて、それが`Zod3Type`か`Zod4Type`を受け付けるとしよう。まず：Zod 3とZod 4が別パッケージだったら、その2つのインターフェースが両方利用できるわけがないよね。だから、もうそこで行き詰まりだよ。そして、実行時にそれらを区別するには、どのパッケージがインストールされてるか知る必要があるんだけど、これは一般的なケースでは不可能（主にフロントエンドのbundlerがoptional peer dependencyを考慮しないから）。<br>このことについては、ここで詳しく説明してるよ：[X(旧Twitter)のスレッドへの言及]" userName="colinmcd" createdAt="2025/05/19 18:38:55" color="#38d3d3">}}




{{<matomeQuote body="メジャーバージョンアップはどの界隈も大変だけど、node/npmはすぐ次出しがちだよね。Webpackとかもそう。他の言語ならまだv1かもね。APIは良くなると言われるけど、見た目だけの変更も多くてイライラするんだ。みんな、バンドラーのAPIなんてどうでもいいんだよ。ただ動いてセキュリティアップデートがあればいい。API変換の時間なんて、使う側には何の価値もないんだ。" userName="danenania" createdAt="2025/05/19 18:17:49" color="#45d325">}}




{{<matomeQuote body="でも、それはいつも選択肢だよ。<br>エイリアスでインポートできるじゃん。<br>もしaxiosとかzodとかの2つのバージョンを使いたいコードがあるなら…<br>”zod4”: ”npm:zod@4.0.0”<br>ってできるし。" userName="paulddraper" createdAt="2025/05/19 20:47:51" color="">}}




{{<matomeQuote body="＞チームが違うとか、専門知識のレベルがバラバラとかだったら、型付きシリアライゼーションライブラリみたいなのはすごく助けになるね。<br>それすら必要ないよ、俺は自分とやり取りする時でも型付きシリアライゼーション使ってるもん。そうでなきゃ、送受信するデータの形をどうやって保証するの？コードベースに何か間違ってたらすぐ怒って欲しいんだよ。" userName="Spivak" createdAt="2025/05/19 21:00:52" color="">}}




{{<matomeQuote body="ほんとこれ。そのライブラリ使うって決めたら、もう欠点込みで受け入れてるんだよ。ユーザーは技術なんか気にしないし。悪くてもラッパー作って機能開発に集中できる。俺は新機能よりセキュリティアップデートが欲しいな。リファクタリングは数年使えるならコストに見合うけどね。" userName="skydhash" createdAt="2025/05/19 19:53:48" color="#ff33a1">}}




{{<matomeQuote body="君がほのめかしてるように、エイリアスした”zod-next”依存は、Zodをpeer depにしてるどのパッケージの要件も満たせないだろうね。でもこのアプローチにはもっと根本的な欠陥があるんだ。俺の目標は、エコシステムのライブラリがZod 3とZod 4を同時にサポートできるようにすること。同じパッケージ内にないと、それを信頼性高くやる方法はないんだよ。<br>[0][0] https://github.com/colinhacks/zod/issues/4371" userName="colinmcd" createdAt="2025/05/20 18:55:50" color="#ff33a1">}}




{{<matomeQuote body="このコメントは現実からかけ離れてる気がするな。大規模プロジェクトで主要な依存関係を移行するのはいつも面倒だよ。複雑なタスクを小さなピースに分解することで簡単にできるっていう普遍の真実がある。Zodがやってるみたいな理にかなった前方移行パスを提供するのは、何の害もなく、みんなの生活を楽にするだけだ。「NPM/JS」文化、それが何を意味するにしても、とは全く関係ないことだよ。" userName="mmcnl" createdAt="2025/05/19 18:58:08" color="">}}




{{<matomeQuote body="それは型チェック通らないよ、この場合はそれが良いことなんだけどね、君が言うようにそれはすごく悪いアイデアだから" userName="colinmcd" createdAt="2025/05/20 18:45:48" color="">}}




{{<matomeQuote body="うん、エコシステムでZod 4が十分にサポートされたと判断できる、ある不明確な時点で、`zod@4.0.0`をnpmに公開するよ。これは記事に詳しく書かれてるよ<br>[0][0] https://github.com/colinhacks/zod/issues/4371" userName="colinmcd" createdAt="2025/05/20 07:24:38" color="#45d325">}}




{{<matomeQuote body="Zodでサーバーから返るJSONをTypeScriptの複雑な型に変換するやり方を知りたいな。APIでは表現できない型（判別Unionとか）を扱いたいんだけど、`username`がnullになる匿名Userとか、モデレーターのPostに特別な属性がある場合とか。今はnormalize関数をいっぱい書いてるけど、エンドポイントごとに違うからすごくごちゃごちゃになるんだよね。みんなこういう問題ってどう解決してるの？" userName="johnfn" createdAt="2025/05/19 15:49:48" color="">}}




{{<matomeQuote body="discriminated unions使うといいと思うよ。例えばこんな感じで定義できる：<br>const MyResult = z.discriminatedUnion（”status”, [ z.object（｛ status： ”success”, data： string ｝）、 z.object（｛ status： ”failed”, error： string ｝）]）；<br>passthroughとか、共有スキーマを使い回す方法もあるよ。可能性が多いと大変だけど、バリデーターで検証できるだけでもマシかもね。" userName="stephen_hn" createdAt="2025/05/19 16:03:52" color="#ff33a1">}}




{{<matomeQuote body="うーん、面白そうだけど問題もあってさ。Zodでサーバーからのオブジェクトをdiscriminated unionにできるけど、それがどのユニオンか判別できないみたいなんだ。例えばapi/user/mod-panelみたいに特定のエンドポイントがモデレーターオブジェクトだけ返す場合、API側はフィールド知ってるのにZodでパースすると忘れちゃうんだよね。" userName="johnfn" createdAt="2025/05/19 16:15:42" color="">}}




{{<matomeQuote body="じゃあそのエンドポイントにはdiscriminated unionを使わないで、モデレーターユーザーオブジェクトだけを受け付けるスキーマを使えばいいじゃん。それは別に驚くことじゃないよ。”このエンドポイントはモデレーターユーザーオブジェクトだけを返します”っていうのは、なんかコードで表現する必要がある知識なんだからさ。" userName="Scarblac" createdAt="2025/05/19 17:08:55" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ユニオンから特定の型を取り出すのに’is’メソッドを使えるよ。まあ、もしユニオンがdiscriminatedされてるなら、’kind’とかの識別子で区別されてるはずだから、受け取ったのがどの種類か分かるはずだよ。" userName="vjerancrnjak" createdAt="2025/05/19 16:40:58" color="">}}




{{<matomeQuote body="APIが特定型だけって分かってるなら、そのメソッドではその型だけを検証すればいいよ。何でもかんでも一つのデカいユニオンにしちゃダメ。擬似コードだけど例ね。<br>Person = { name: string, height: number }<br>Animal = { name: string, capability: string }<br>A = { post: object, methodType: string, person: Person }<br>ModeratorA = { post: object, moderatorField1: string, moderatorField2: string, person: Person }<br>UnionA = A && ModeratorA<br>B = { post: object, animal: Animal }<br>endpoint person parses UnionA<br>endpoint animal parses B<br>全ての型を一つにまとめるのはやめよう。" userName="stephen_hn" createdAt="2025/05/19 16:26:25" color="#ff33a1">}}




{{<matomeQuote body="違うサブタイプを全部別々に定義して、それらを使ってdiscriminated unionを作ることはできるよ。そして、エンドポイントが単一の型だけを使うなら、その単一の型だけを使えばいい。複数の型を実際に扱う可能性があるところでだけ、discriminated unionを使えばいいんだ。" userName="Sammi" createdAt="2025/05/19 19:49:26" color="#785bff">}}




{{<matomeQuote body="理想的には、Userがどんな形になりうるかっていう真のソースが一つあるといいね（UserとAnonymousUserとかのdiscriminated unionになるかも）。Fullstack TSじゃない場合だと、PythonバックエンドならPydanticモデル+ユニオンでUserのいろんな形を定義して、それからOpenAPI/GraphQLでスキーマ生成とTSクライアント用のコード生成をするとかかな。" userName="probabletrain" createdAt="2025/05/19 16:00:42" color="#ff5733">}}




{{<matomeQuote body="これの問題はね、”唯一の真のUser”形だと、Optionalなプロパティが増えがちなことだよ。プロフィールだとPost[]取るけどディレクトリだと取らない、みたいな。もし全エンドポイントが同じUser形を返すなら、プロフィールのユーザーで.postsが存在するって分かってても、アクセス前にチェックする必要が出てきちゃうんだ。" userName="johnfn" createdAt="2025/05/19 16:06:43" color="">}}




{{<matomeQuote body="少なくともTypescriptでは、discriminated unionを正しく設定すれば、typeフィールドを一度チェックするだけでいいんだ。そうすればTSが型を絞り込んで、例えば.postsがあるかないか判断できるようになるよ。" userName="iainmerrick" createdAt="2025/05/19 16:17:22" color="#ff5733">}}




{{<matomeQuote body="これ、できるとは思うんだけど、かなりの繰り返し作業になるんだよね。例えばapi/profile（.postsあり）とapi/user-directory（なし）があって、Userをdiscriminated unionで`user-with-posts`と`user-no-posts`で定義するじゃん。写真ギャラリーみたいに写真が加わると、`user-with-posts-and-photos`とか、タイプが増えまくって、DMとか加わったらさらに大変になるんだ…" userName="johnfn" createdAt="2025/05/19 16:26:26" color="">}}




{{<matomeQuote body="string unionを使って判別するのもアリだけど、それだけがやり方じゃないよ。この場合は、アイテム自体が存在するかどうかで判別する（厳密な型保証付きのダックタイピングみたいな感じ）のがいいかもね。Typescript playgroundで試せるよ。" userName="joshfee" createdAt="2025/05/19 16:58:54" color="">}}




{{<matomeQuote body="これで、GPで俺が言ってた問題にぶつかるわけだ。blahが確実にあるって分かってても、いちいち「もし(blah)」って書かなきゃいけなくなるやつね。" userName="johnfn" createdAt="2025/05/19 19:08:07" color="">}}




{{<matomeQuote body="APIの設計を変えちゃえばいいんじゃない？ postsとかphotosとかをuserオブジェクトの中じゃなくて、同じ階層に返すようにするの。｛user:｛…｝, photos: ［…］｝みたいにね。それか、エンドポイントごとに基本のUserスキーマを拡張した別のスキーマを定義するとか。俺はなるべくどこでも同じ構造にしたいけどね。" userName="Scarblac" createdAt="2025/05/19 17:11:25" color="#ff33a1">}}




{{<matomeQuote body="他のスタックがどう解決してるか分からないけど、GraphQLだとバックエンドが全部のフィールドを持ったUser型を定義して、クライアントが必要なフィールドだけ問い合わせるんだ。codegenを使えば型安全になるよ。だから／postsページでクライアントが｛ user: ｛ id, posts: ｛ id, content ｝［］ ｝ ｝って聞いたら、それに合わせた型が付く関数が生成される感じ。" userName="probabletrain" createdAt="2025/05/19 16:58:08" color="#ff5c5c">}}




{{<matomeQuote body="ユースケースが分からないと何とも言えないけど、user＿typeみたいな判別プロパティをUnion内の全部の型に追加すると、一般的なケースと特定のケースを扱いやすくなるかもね。例えば<br>もし(user．user＿type ＝＝＝ ’authenticated’)｛<br>  ／／ここでuser．nameにアクセスできるって型システムが分かってくれる<br>｝" userName="adpirz" createdAt="2025/05/19 15:56:33" color="#ff5c5c">}}




{{<matomeQuote body="あんたのケースには役立たないけど、GraphQLはまさにこのために発明されたんだよ。GQLクエリ用のTSライブラリは、選択したフィールドの形からレスポンスの形を動的に推測してくれるんだ。だから<br>query ｛<br>    user ｛<br>        username<br>        posts ｛<br>            text<br>        ｝<br>    ｝<br>｝<br><br>みたいなクエリだったら、<br>type Response ＝ ｛<br>    user: ｛<br>        username: string<br>        posts: Array＜｛<br>            text: string<br>        ｝＞<br>    ｝<br>｝<br><br>って型になるし、｛ user ｛ username ｝ ｝だけのクエリならpostsプロパティは完全に省略される。" userName="gavinray" createdAt="2025/05/19 16:21:49" color="">}}




{{<matomeQuote body="サーバー側が型をエクスポートするべきなんだよ。クライアントで手書きするとかマジで意味分かんない。サーバーはどんなデータ送るか知ってるんだから、その情報をクライアントにメタデータとして提供すべきでしょ。実際には、PythonのPydanticスキーマを使えばOpenAPI仕様を自動生成できるし、それを使えばクライアントの型も生成できるよ。" userName="mmcnl" createdAt="2025/05/19 19:07:27" color="#ff5c5c">}}




{{<matomeQuote body="その答え、理想の世界の話だね。でも俺はTypeScriptほど正確に型を絞り込めない、貧弱な型システムのサーバーに縛られてるから無理なんだ…。" userName="johnfn" createdAt="2025/05/19 19:22:04" color="">}}




{{<matomeQuote body="Zodは他の代替案よりずっとマシだとは思うけど、こういう明示的な検証が必要なこと自体が、今のモダンなウェブ開発が迷走してる証拠って気がするわ。JSの入力検証、API定義のSwagger、サーバー側の入力検証、スキーマのORM、そしてクライアントとサーバー両方で必要なTypeScriptの型定義…同じデータの形を何度も何度も定義しなきゃいけないのがマジでダルい。" userName="causal" createdAt="2025/05/19 15:39:38" color="#45d325">}}




{{<matomeQuote body="TypeScriptが静的な型チェック専門で実行時に関係ないのは、エコシステム全体にとって残念なんだよね。TypeScript自身に実行時チェッカーになってほしいわけじゃないんだけど、クラスや関数、オブジェクトの型情報をエクスポートして使えるようにしてほしいんだ。TypeScriptは最高の真実の源になり得るのに、現状では色んなライブラリが独自の方法で型情報を定義して頑張ってる。記事で挙げられてる5つの分野も、それぞれ複数の実装がある状態。<br>古いTypeScriptの型エミッター、reflect-metadataは実行時に型情報を提供できたみたいだけど、古い仕様ターゲットだし、モデルがどのくらい正確か分からないんだよね（https://www.npmjs.com/package/reflect-metadata）。<br>今はStandard Schema Projectとか、TypeScriptとは別だけど統一に向かう動きの始まりかもしれない。主要なバリデーションライブラリはサポートしてるみたいだけど、API定義やORMへの拡張はまだ初期段階なんだ（https://github.com/standard-schema/standard-schema?tab=readm...）。" userName="jauntywundrkind" createdAt="2025/05/19 15:53:01" color="#38d3d3">}}




{{<matomeQuote body="＞ TypeScriptに実行時チェッカーになってほしくない<br>俺はなってほしいね。<br>内部の型が整合取れてるなら実行時バリデーションはいらないけど、外部データを受け取るならZodとか使うじゃん。同じようなことやってるからって、この二つを混同する必要はないと思うな。" userName="sureIy" createdAt="2025/05/20 09:34:25" color="#785bff">}}




{{<matomeQuote body="めっちゃ同意！TSCはもう型情報を持ってるのに、なんで世界中のたくさんのライブラリがそれを重複させなきゃいけないの？みんなが違う、面倒な実行時バリデーションライブラリで同じこと繰り返すより、single source of truthの方が絶対うまくいくよ。" userName="lenkite" createdAt="2025/05/20 05:36:04" color="#45d325">}}




{{<matomeQuote body="うん。TypeScriptの方が慣れてるし、いくつか理由があってそっちが好きなんだけど、Pydanticがデザイン時と実行時の両方でバリデーションに使われてるのを見て、すごく刺激を受けたよ。" userName="causal" createdAt="2025/05/19 18:45:15" color="">}}




{{<matomeQuote body="でも、それこそZodみたいなものの最大のメリットじゃん。一度スキーマを定義すれば、下流のものは全部動的に生成できるんだよ。だから、Zod schemaを一度変更すれば、型チェックと一緒にアプリ全体に伝播するんだ。Zod schemaがsource of truthになるってわけ。" userName="koolba" createdAt="2025/05/19 15:42:00" color="#ff5c5c">}}




{{<matomeQuote body="そうなの？俺はJVMバックエンドでZod使ってないけど、どうやって使うの？<br>OpenAPIを使うのに加えて、GradleタスクでデータクラスからTSインターフェースを生成してるよ。" userName="esafak" createdAt="2025/05/19 15:44:35" color="#45d325">}}




{{<matomeQuote body="Zod schemaをJSON schemaに変換して、そこからJavaに変換するっていうやり方があるかも？そのためのライブラリも見つけたよ［1］。でも、それがどのくらい情報ロスするかわからないな。専用のコンバーターならもっとうまくいくかもね。<br>［1］ https://jsontypedef.com/docs/java-codegen/" userName="skybrian" createdAt="2025/05/19 21:51:54" color="#ff33a1">}}




{{<matomeQuote body="OpenAPI定義とかからzod schemaを生成するライブラリがあるみたいだね。<br>https://zod.dev/ecosystem?id=x-to-zod" userName="presentation" createdAt="2025/05/20 11:58:59" color="#38d3d3">}}




{{<matomeQuote body="Zodって本当にそこまでサポートしてる？もしGoバックエンドで開発始めて、後からTS/JSコンポーネントを追加した場合とか？source of truthがもう少し言語に依存しないものだったらいいのにね。" userName="worldsayshi" createdAt="2025/05/19 15:44:26" color="#38d3d3">}}




{{<matomeQuote body="OpenAPIみたいなものを使って、それからzod schemaを生成する方がいいんじゃないかな。" userName="oxidant" createdAt="2025/05/19 15:54:05" color="#ff5c5c">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
