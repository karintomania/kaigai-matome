+++
date = '2025-03-12T00:00:00'
months = '2025/03'
draft = false
title = 'DuckDBの新しいローカルUIが登場、魅力的な特徴とは？'
tags = ["データベース", "オープンソース", "UIデザイン", "ビジュアライゼーション", "DuckDB"]
featureimage = 'thumbnails/orange_pink2.jpg'
+++

> DuckDBの新しいローカルUIが登場、魅力的な特徴とは？

引用元：[https://news.ycombinator.com/item?id=43342712](https://news.ycombinator.com/item?id=43342712)

{{<matomeQuote body="これすごいね！UIが素晴らしいし、オープンソースって書いてあるけど、実際はDuckDBの拡張がオープンソースなだけみたい。UIのコードは見つからないし、実際のUIはオープンソースなのかな？それともMotherDuckが使わせてるだけ？今のところ、ネットがないと動かない感じだね。" userName="vamega" createdAt="2025-03-12T14:40:20" color="#785bff">}}

{{<matomeQuote body="それは確かに心配だよね。UIの更新をui.duckdb.orgでホスティングするってのがちょっと違和感ありすぎ。少なくともduckdb.orgにホストされてるのは良い点だけど、ソースはどこかにあるべきだよ。がっかり。" userName="xemoka" createdAt="2025-03-12T15:24:07" color="#ff5733">}}

{{<matomeQuote body="そうなんだ！MotherDuckのエンジニア、Jeff Raymakersから確認があったみたいで、UIはオープンソースじゃないって。> Jeff Raymakers — 今日の午前9時25分に“ブログの表現が誤解を招くもので、修正する予定です”って言ってた。" userName="xemoka" createdAt="2025-03-12T16:29:20" color="#ff33a1">}}

{{<matomeQuote body="すごく期待してたのに、やっぱりそういうことか。これがあれば、TableauとかSASみたいなレガシープラットフォームは壊滅的だよ。" userName="dcreater" createdAt="2025-03-15T00:20:56" color="">}}

{{<matomeQuote body="リモートURLからUIを取得するのに「ローカルUI」って言えるの？もしかして、閉じたソースのUIが最初の実行時にダウンロードされて、ローカルにキャッシュされるのかな？それとも毎回リモートからロードするウェブアプリなの？" userName="plipt" createdAt="2025-03-12T16:59:43" color="">}}

{{<matomeQuote body="ウェブインターフェースだけど、ローカルマシンから提供されるんだ。デフォルトはhttp://localhost:4213/だよ。データの場所やMotherDuckへの明示的なオプトインについての注意もサイトにあるからチェックしてみて。" userName="daveguy" createdAt="2025-03-12T19:17:15" color="">}}

{{<matomeQuote body="ドキュメントには拡張のサーバー設定が書いてあって、ソースも見当たらないし、拡張のドキュメントはMotherDuckのUIを指してるみたいで、ちょっと混乱するな。" userName="jarpineh" createdAt="2025-03-12T15:17:12" color="">}}

{{<matomeQuote body="ドキュメントにもこんなことが書いてあるのが面白いね。> “設定したURLを信頼することが大事、なぜならアプリがDuckDBにロードしたデータにアクセスできるから”って。これが「ローカルUI」なら普通予想しないよね。DuckDBにちょっと触ってみたことがあるけど、これから使うならリモートにデータ送られないことを確認しなきゃと思う。" userName="radicality" createdAt="2025-03-12T23:34:05" color="#45d325">}}

{{<matomeQuote body="ブログの共著者なんだけど、言葉が紛らわしかったのを認めるよ。混乱を招いて申し訳ない。最後に注釈を追加したよ。> “リポジトリにはフロントエンドのソースコードは含まれておらず、現在はオープンソースとして利用できない。”ってね。" userName="szarnyasg" createdAt="2025-03-12T17:31:43" color="#ff5733">}}

{{<matomeQuote body="規制の厳しいデータを扱う仕事をしてる人もいるのに、こんなソフトウェアの危険な部分を知ったよ！デフォルトでインストールしないか、オプトインにしてほしい。ほんと危ないから。" userName="rastignack" createdAt="2025-03-13T11:05:20" color="#ff33a1">}}

{{<matomeQuote body="DuckDBのマルウェア化が始まるのかもね。投資家は収益が必要なんだろう。" userName="rastignack" createdAt="2025-03-13T11:03:41" color="">}}

{{<matomeQuote body="実際のUIはオープンソースじゃないよ。誰かが真のオープンソースUI拡張を作ることはできるけど、今のところそれには母Duckしか投資できてない。" userName="memset" createdAt="2025-03-12T15:47:48" color="">}}

{{<matomeQuote body="色々探したけど、これ（個人の成果）はいいベースになってるし、MITライセンスだよ：<br>https://github.com/caioricciuti/duck-ui<br>本物のOS UIを支えたいなら見てみて。" userName="dowager_dan99" createdAt="2025-03-12T15:57:22" color="#ff5733">}}

{{<matomeQuote body="どうしてUIプロジェクトがランディングページにスクリーンショットを最初に載せないのか理解できない。すごく明らかだと思うんだけど。" userName="dchuk" createdAt="2025-03-12T21:15:57" color="">}}

{{<matomeQuote body="Apache SupersetのSqlLabはすごく良いと思う。DuckDBをデータソースにしてるし、SqlAlchemyをサポートしてるものは何でも上手く動く。正直、スクリーンショットを初めて見た時、SqlLabかと思った。DuckDBのUIはまだ試してないけど。" userName="frankc" createdAt="2025-03-13T01:02:00" color="">}}

{{<matomeQuote body="それは面白いね。同じ組み合わせを使った小さなプロジェクトを考えてるんだけど、あなたのユースケースを少し教えてくれない？もっと知りたい。" userName="labso" createdAt="2025-03-17T18:50:28" color="">}}

{{<matomeQuote body="正直、いくつかはプロプライエタリな部分を残しておいてほしい。全てをFOSSにするのは持続可能なビジネスモデルじゃないと思うし、DuckDBには続いてほしい。Astralにも似た懸念がある。彼らはPythonを改良していて、資金が尽きるとまたPipに戻るのは悲劇だ。" userName="IshKebab" createdAt="2025-03-12T22:06:25" color="">}}

{{<matomeQuote body="ちょっと確認だけど、ローカルUIってほんとにローカルじゃないの？つまり、エアギャップなマシンでは使えないってこと？" userName="bigfatkitten" createdAt="2025-03-13T21:27:27" color="">}}

{{<matomeQuote body="同意する。これはちょっと混乱を招く表現だし、GUIコンポーネントは閉じられてるみたい。" userName="thenaturalist" createdAt="2025-03-12T15:09:48" color="">}}

{{<matomeQuote body="UIの見た目は、DuckDBで動いてる素晴らしいRillに似てる：<br>https://www.rilldata.com/<br>Rillはビジュアライゼーションやピボットテーブルが優れていて、Go/Svelteでオープンソースの洗練された製品だ。でもDuckDBのUIはSQLクエリ編集に素敵なJupyterノートブックスタイルの“セル”を持ってる。" userName="fenghorn" createdAt="2025-03-12T21:27:24" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="Rillの創業者だけど、UIの類似性については何も言わないよ。ただ、DuckDBベースのメトリクスレイヤーと探査的ダッシュボードを作ることが我々のビジョンで、Rillは完全にオープンソースだよ。詳しくはDuckCon #6で発表した資料を見てね。" userName="miked98" createdAt="2025-03-12T22:28:04" color="#ff33a1">}}

{{<matomeQuote body="HN好きだな。サービスについてのランダムなコメントがあって、返事は「私が創業者です」とか「私が書きました」ばっかり。" userName="archon810" createdAt="2025-03-13T03:22:21" color="">}}

{{<matomeQuote body="WhatTheDuckはduckdb-wasmでSQLを実行できるよ。Pygwalkerはpandasのデータフレームからオープンソースの記述統計とチャートを作成するんだ。ydata-profilingはPandasとSparkのデータフレームを使ったオープンソースの探索的データ分析を提供しているよ。" userName="westurner" createdAt="2025-03-12T23:58:25" color="#38d3d3">}}

{{<matomeQuote body="xeus-sqliteはJupyterやJupyterLite用のxeusカーネルで、SQLクエリのためのVegaビジュアライゼーションが使えるよ。jupyterlite-xeusはenvironment.ymlに基づいてパッケージをインストールするんだ。" userName="westurner" createdAt="2025-03-13T04:49:15" color="">}}

{{<matomeQuote body="duckdb-wasmに対して「emscripten-forgeパッケージ」の機能リクエストが出てるよ。" userName="westurner" createdAt="2025-03-13T05:42:13" color="">}}

{{<matomeQuote body="pygwalkerにもカーネル計算モードがあって、Rillからのクエリを扱うことができるよ。" userName="loa_observer" createdAt="2025-03-17T11:07:22" color="">}}

{{<matomeQuote body="あなたの講演のビデオはありますか？" userName="wodenokoto" createdAt="2025-03-13T04:56:18" color="">}}

{{<matomeQuote body="DuckConチームのおかげで、そのビデオはここにあるよ：“https://youtu.be/_IqvrFWY7ZM?si=1ux9SGUsh4kDs-ff”。他にも素晴らしい講演がいくつかあるから見てみて！" userName="miked98" createdAt="2025-03-13T05:36:05" color="#ff5c5c">}}

{{<matomeQuote body="追加の提案ありがとう！" userName="wodenokoto" createdAt="2025-03-13T07:56:04" color="">}}

{{<matomeQuote body="Hamilton Ulmerは両方に関わってたんだ。Twitterが流行ってた頃、彼の過程をフォローするのが本当に面白かった。" userName="ayhanfuat" createdAt="2025-03-12T22:21:12" color="">}}

{{<matomeQuote body="Blueskyではまだできるよ！" userName="articsputnik" createdAt="2025-03-13T06:58:28" color="">}}

{{<matomeQuote body="データ可視化にPerspectiveを使うのをおすすめ！私たちはDuckDBと一緒に使ってるけど、すごくいいよ。" userName="markhalonen" createdAt="2025-03-12T14:25:19" color="#ff33a1">}}

{{<matomeQuote body="俺たちもPerspectiveを使ってるよ！crabwalkっていうのを使ってて、DuckDBとの相性が抜群。数十万行の読み込みがほぼ瞬時で、全てをarrowで管理できるから最高だよ。<br>参考はここ！<br>https://github.com/definite-app/crabwalk" userName="mritchie712" createdAt="2025-03-12T14:41:01" color="#ff5733">}}

{{<matomeQuote body="どこでcrabwalkを使ってるの？面白そうだけど、ローカルETLの場合、SQLスクリプトのコレクションがあればいい気がする。ローカルなケースならもっとシンプルでいけるはずじゃない？" userName="0cf8612b2e1e" createdAt="2025-03-12T15:18:50" color="">}}

{{<matomeQuote body="いくつか特徴があるよ！<br>* カラムレベルの系譜が自動でわかる<br>* 系譜を可視化できる<br>* 入力・出力が楽チン（例：@configを指定すれば結果をparquet、csvにエクスポートできる）<br>* テストはまだだけど、将来的にはユニーク性や結合のテストに対応する予定。<br>今は系譜のためにだけ使ってるけど、面白いよ！" userName="mritchie712" createdAt="2025-03-12T15:23:22" color="">}}

{{<matomeQuote body="気に入ってくれて嬉しいよ！プロ版もチェックしてみて！DuckDBやPython/Pyodideなどもサポートしてるから！" userName="texodus" createdAt="2025-03-12T14:51:17" color="">}}

{{<matomeQuote body="それはすごく面白い！俺の博士論文は時系列データの安定したツリーマッピングアルゴリズムに関するもので、セルが位置を持つことが大事なんだ。デモで見た時、セルが飛び回るのはちょっと惜しい気がしたんだ。論文とデモも見てみて！コラボでPerspectiveに組み込むこともできるかも。" userName="pepperonipboy" createdAt="2025-03-12T16:06:47" color="#ff33a1">}}

{{<matomeQuote body="https://sql-workbench.comにも目を通してみて！DuckDB WASMとPerspectiveを使ってクエリ結果を表示してるよ。どう思う？" userName="tobilg" createdAt="2025-03-12T15:41:31" color="">}}

{{<matomeQuote body="実はこれでPerspectiveを知ったんだよね。" userName="markhalonen" createdAt="2025-03-12T17:47:33" color="">}}

{{<matomeQuote body="ハハハ、いいね。狭い世界だ。" userName="tobilg" createdAt="2025-03-12T19:32:56" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="オンラインデモはいい感じなのに、自分には使えないのが残念。condaでconda-forgeからインストールしようとしたけどダメだったし、pipでも同じ。GitHubからリポジトリをクローンしてビルド試みたけど、詳細は覚えてないや。どうしてソフトのインストールがこんなに大変なんだろう。" userName="ciupicri" createdAt="2025-03-12T15:36:35" color="">}}

{{<matomeQuote body="問題を報告したことある？俺は様々なプラットフォームでPerspectiveを使ってるけど、全然問題ないよ。" userName="timkpaine" createdAt="2025-03-12T16:58:08" color="#38d3d3">}}

{{<matomeQuote body="まだ報告してないけど、全ての手順をドキュメントにまとめつつもう一回挑戦しようと思ってる。" userName="ciupicri" createdAt="2025-03-12T17:52:46" color="">}}

{{<matomeQuote body="なんでPerspectiveを選ぶの？D3のラッパーならPlotのほうが柔軟性があるよ。" userName="dleeftink" createdAt="2025-03-12T14:32:50" color="">}}

{{<matomeQuote body="PlotとDuckDBの良い統合を作ったよ。ここにあるよ：>「https://www.duckplot.com/」" userName="summer_avery" createdAt="2025-03-12T15:43:13" color="">}}

{{<matomeQuote body="カラムエクスプローラーがすごく気に入ってる。>「https://motherduck.com/blog/introducing-column-explorer/」<br>最近Kaggle Datasetのようなカラムエクスプローラーを探してたけど、これが一番良かった！" userName="stared" createdAt="2025-03-12T14:48:32" color="#ff5c5c">}}

{{<matomeQuote body="いろんなDB GUIクライアントやクラウドベースのデータツールを見てきたけど、MotherDuckのカラムエクスプローラーは最高だと思う。データ分布やユニークな値、最小/最大/パーセントタイルが簡単に見れて、すごく強力。これを考えた人は本当に素晴らしいと思う。メタデータがクエリできれば、自動データプロファイリングやQAに役立つのに。" userName="thenaturalist" createdAt="2025-03-12T14:53:25" color="#ff5c5c">}}

{{<matomeQuote body="似たようなオープンソースのカラムエクスプローラーがあるよ：>「https://github.com/manzt/quak」<br>デモはこちら：>「https://manzt.github.io/quak/?source=https://pub-2fc10ef6724...」" userName="aszen" createdAt="2025-03-12T16:46:11" color="">}}

{{<matomeQuote body="オープンソースのTypeScriptコンポーネントって知らない？" userName="stared" createdAt="2025-03-12T15:03:21" color="">}}

{{<matomeQuote body="ああ、今のところUIはオープンソースじゃないね。Column Explorerをスタンドアロンコンポーネントとして出したいって話はしてるけど、優先できていないんだ。やりたいとは思っている！" userName="hamilton" createdAt="2025-03-12T16:54:06" color="">}}

{{<matomeQuote body="コミュニティにとって素晴らしいことだよね。それに、こんな素敵なコンポーネントを設計してくれてありがとう！" userName="stared" createdAt="2025-03-13T13:29:46" color="#ff33a1">}}

{{<matomeQuote body="これが他のデータベースで使われると非常に遅くて高くつくからって理由もあると思うよ。" userName="mritchie712" createdAt="2025-03-12T15:03:25" color="">}}

{{<matomeQuote body="ObservableHQのカラムサマリーに影響を受けてる気がするけど、いいことだよね！" userName="oulipo" createdAt="2025-03-12T14:57:10" color="">}}

{{<matomeQuote body="(Column Explorer機能を設計した人です)Observableのカラムサマリーは素晴らしい！ただ、こういう診断系は共通の系譜があると思うし、ここからやるべきことが多いから熱心なんだ。どんな複雑なことをしたかはこちらで詳しく説明しているよ。" userName="hamilton" createdAt="2025-03-12T16:47:18" color="">}}

{{<matomeQuote body="面白いね、あちらの作品から多くのアイデアが得られそう！" userName="oulipo" createdAt="2025-03-12T17:30:06" color="">}}

{{<matomeQuote body="この素晴らしい作品に感謝！使いやすさや情報の明確さがとても気に入ってる。" userName="thenaturalist" createdAt="2025-03-12T22:16:00" color="#785bff">}}

{{<matomeQuote body="UIは見た目が良くて嬉しいけど、これがDuckDBのデフォルト拡張ってのには疑問があるな。DuckDBの創設者とは別の会社の製品だし、DuckDBは今までVCなしで成長してきたのに、MotherDuckはVCから資金を得てるし。このリリースは将来のDuckDBにどう影響するのか心配だ。" userName="jarpineh" createdAt="2025-03-12T15:10:13" color="">}}

{{<matomeQuote body="DuckDBのメンテナーだよ。UIはDuckDBのリリースには組み込まれてなくて、MotherDuckが開発した拡張機能なんだ。この拡張は他の拡張と同じようにダウンロードしてインストールする形だよ。具体的には、-uiコマンド追加して、SQLクエリ（CALL start_ui()）を実行できるんだ。これを自分で設定できるよ。実行中にui拡張も自動でインストールされるけど、設定で無効にできるよ。" userName="mytherin" createdAt="2025-03-12T15:52:53" color="#785bff">}}

{{<matomeQuote body="UIが拡張機能ってのは分かりづらいね。インストール方法が他のとは違うからさ。UIは体感的に深く根付いてるように感じるし、HTTPプロキシ機能の説明ももっと詳しく載せてほしいところ。しかし記事は「内蔵のローカルUIがある」って書いてあって、リリースバイナリに含まれてる印象を受けるよ。今後のDuckDBの無償利用や商用利用にどう影響するのか気になるね。" userName="jarpineh" createdAt="2025-03-12T16:04:41" color="#ff5c5c">}}

{{<matomeQuote body="ブログの内容がUIが完全に組み込まれているように感じるのは同意するよ。でも実際には拡張機能であることを書き直したんだ。MotherDuckとの連携でUIを自動で立ち上げるのがスムーズになったけど、DuckDB FoundationはDuckDBと拡張エコシステムを完全に管理してるから影響はないよ。特に自動インストールは他の信頼できる拡張と同じで、特定の関数が呼ばれるとトリガーされる仕組みだよ。" userName="mytherin" createdAt="2025-03-12T17:28:10" color="#ff33a1">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="説明ありがとう！この拡張はDuckDBにHTTP APIを提供してるんだよね？これはDuckDBをHTTP経由で使う公式な方法になる可能性があるんじゃないかな？個人的にはこれの方が特定のUIよりも面白いと思う。コミュニティの拡張にも似た機能があるけど、公式に安定したスキーマバージョンのHTTP APIがあればいいな。" userName="jarpineh" createdAt="2025-03-13T08:56:18" color="#ff33a1">}}

{{<matomeQuote body="DenoのDeno K/V機能を思い起こさせるね。オープンソースのSQLiteと連携してるけど、Deno Deployで使うと大きくアップグレードされる感じがする。商業的なオープンソースプロジェクトにはビジネスモデルが必要だと思うし、賛否あるかもだけど、開発資金を調達するためには妥協が必要だよね。ただ、UI機能が外部のクローズドソース資産に依存してるなら、それはちょっと抵抗感があるな。" userName="simonw" createdAt="2025-03-12T15:23:20" color="">}}

{{<matomeQuote body="MotherDuckは支援契約なんかで収益を得てると思ってたけど、DuckDBのエコシステムにいる他のVC資金の企業みたいだね。新しい拡張がデフォルトの拡張に追加されることは線引きが曖昧になる気がする。クローズドソースのプロダクトへのプロキシっぽいのでさらに混乱するよね。有料拡張には賛成だけど、これは他社サービスの宣伝っぽく感じるな。" userName="jarpineh" createdAt="2025-03-12T15:57:35" color="">}}

{{<matomeQuote body="DuckDB labsはMotherDuckに株を持ってるから、所有権が一致してるんだ。理論的にはこういう密接なパートナーシップはいいと思うけど、オープンさが足りなくなるのは心配だね。DuckDBとMotherDuckのデータベースに関する統合は問題ないけど、ローカルUIが外部サービスに完全依存してるのは気になる。拡張だからちょっとマシだけど、ガバナンスや原則の視点からは心配が残る。" userName="datadrivenangel" createdAt="2025-03-12T17:00:01" color="">}}

{{<matomeQuote body="これは同じではないと思う。Denoは商業企業の中のオープンソース製品だけど、DuckDBはオープンソースのプロジェクトで、MotherDuckは営利企業だから。互いに密接な統合があっても、基本的には独立してるのに、これではその線が曖昧になる気がする。SQLiteの周りにはこんな混乱はないよ。" userName="dowager_dan99" createdAt="2025-03-12T15:55:06" color="">}}

{{<matomeQuote body="https://github.com/denoland/denokv<br>これがリンク先だよ。Deno KVは1年以上前から自己ホスティングできるようになったね。" userName="simlevesque" createdAt="2025-03-12T15:48:14" color="">}}

{{<matomeQuote body="リンク先が言ってることは変わらないよ。自分でホスティングするバックエンドは、ローカルのSQLiteバックエンドのネットワークにアクセス可能な版なんだ。ホスティングされたバックエンドは、 FoundationDBを使って globally replicated されていて、スケーリングの話が全然違うから。" userName="jorams" createdAt="2025-03-12T16:00:04" color="">}}

{{<matomeQuote body="フロス実装のおかげで、DenoKVをAzure CosmosやDynamoDB、CockroachLabsなどで自作するのもアリだよね。APIが小さいから、やろうと思えば簡単にできると思う。" userName="tracker1" createdAt="2025-03-12T18:09:52" color="">}}

{{<matomeQuote body="そうそう、私の記事でも触れてるよね：’https://til.simonwillison.net/deno/deno-kv#user-content-upda’。" userName="simonw" createdAt="2025-03-12T16:46:00" color="">}}

{{<matomeQuote body="ここが心配な人もいるけど、DucDbがRedisLabsみたいになるんじゃないかって話だよね。オープンソースになってしばらくしたら突然やめるとか。" userName="blackoil" createdAt="2025-03-12T17:42:56" color="">}}

{{<matomeQuote body="でも、AWSが大きな力を持ってRedisLabsの収益モデルを潰したのは事実だけど、それをルグプルと呼ぶのはちょっと不公平だと思う。" userName="threecheese" createdAt="2025-03-12T18:16:17" color="">}}

{{<matomeQuote body="UIはあくまで便利なツールだし、使わなくてもDuckDBの使い方は変わらないよ。本当に問題が起こるまで心配することないと思う。今は単に便利な機能なんだから。" userName="capkutay" createdAt="2025-03-12T18:23:44" color="#38d3d3">}}

{{<matomeQuote body="このUIは便利なツールであり広告でもあるんじゃないかな。もっと多くの人が使えるHTTP APIがあれば良かったのに、って思う。現状、ドキュメントなしのC++のAPIがあるけど公式な安定版がほしいな。" userName="jarpineh" createdAt="2025-03-13T09:37:59" color="#ff33a1">}}

{{<matomeQuote body="リリースおめでとう！かなりクールだね。ローカルなWebベースじゃないエディタ探してるなら、qstudioもチェックしてみて！’https://www.timestored.com/qstudio/help/duckdb-sql-editor’。" userName="RyanHamilton" createdAt="2025-03-12T23:28:04" color="">}}

{{<matomeQuote body="studioはkdbにも使えるんだ、DuckDBでも使えるなんて知らなかった！" userName="noisy_boy" createdAt="2025-03-13T05:02:20" color="">}}

{{<matomeQuote body="DuckDBについて詳しくは知らないけど、すごく良い感じに見えるね。タイムシリーズっぽいデータを直感的にSQLでクエリしたいな。" userName="sunshine-o" createdAt="2025-03-13T10:56:52" color="">}}

{{<matomeQuote body="’https://sql-workbench.com’もチェックしてみて。ブラウザでDuckDBのWASMが動いて、データ可視化もできるみたいだから、タイムシリーズの視覚化も可能！" userName="tobilg" createdAt="2025-03-13T20:00:29" color="#ff5733">}}

{{<matomeQuote body="QuestDBも試してみたらいいよ。上記の機能はすべてサポートしてるけど、ネイティブのグラフ表示はないね。ただ、Grafanaを使えるし、クエリのUIもいい感じ。軽量でビュンビュン動くよ俺の経験では。" userName="pants2" createdAt="2025-03-13T14:56:35" color="#ff5c5c">}}

{{<matomeQuote body="DuckDBは自分でプロットできないんだ。他のツール、たとえばmatplotlibを使う必要があるよ。" userName="raoulj" createdAt="2025-03-13T13:41:28" color="">}}

{{<matomeQuote body="俺はMotherDuckの共同設立者だよ。DuckDB Labsのチームと一緒にUIを作ってるんだ。これは初リリースで、簡単なチャートの要望を含めてみんなのリクエストがたくさんくるのは分かってる。気軽にこのスレッドに書き込んでくれれば、目を通すから！とにかくこのリリースを楽しんでくれ。作るの楽しんでたから。" userName="ryguyrg" createdAt="2025-03-12T13:49:46" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
