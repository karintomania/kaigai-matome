+++
date = '2025-06-05T00:00:00'
months = '2025/06'
draft = false
title = 'Datadogの代替に？ClickHouseとHyperDX発、オープンソースのClickStack'
tags = ["オブザーバビリティ", "Datadog", "オープンソース", "ClickHouse", "ClickStack"]
featureimage = 'thumbnails/cyan1.jpg'
+++

> Datadogの代替に？ClickHouseとHyperDX発、オープンソースのClickStack

引用元：[https://news.ycombinator.com/item?id=44194082](https://news.ycombinator.com/item?id=44194082)




{{<matomeQuote body="Hey HN！ClickHouseチームのMikeとWarrenだよ！ClickStackてOSS出したんだ。ClickHouse、HyperDX、OTelでオブザーバビリティを実現！ログとかメトリクスとかトレースを簡単に集めて検索や可視化、アラートもできるよ。DataDogみたいに高くないし、パフォーマンスも良い。QuickStartとか見て試してみてね！フィードバック待ってるよ！<br>`docker run -p 8080:8080 -p 4317:4317 -p 4318:4318 docker.hyperdx.io/hyperdx/hyperdx-all-in-one`<br>ブラウザでライブデモ（サインアップ不要！）：https://play.hyperdx.io/<br>ランディングページ：https://clickhouse.com/o11y<br>Githubリポジトリ：https://github.com/hyperdxio/hyperdx<br>Discordコミュニティ：https://hyperdx.io/discord<br>ドキュメント：https://clickhouse.com/docs/use-cases/observability/clicksta..." userName="mikeshi42" createdAt="2025/06/05 18:01:21" color="#45d325">}}




{{<matomeQuote body="DataDogが高いこと考えるとこれマジすごいね！俺LogLayer（https://loglayer.dev）てTypeScriptのロガー作者なんだけど、HyperDXとの連携作ったからプルリク送ったよ（https://github.com/hyperdxio/hyperdx-js/pull/184）。俺のページにHyperDXとの連携ドキュメントを載せたいんだけど、Integrationsセクション追加してもらえると嬉しいな。" userName="theogravity" createdAt="2025/06/06 04:48:20" color="#ff33a1">}}




{{<matomeQuote body="VictoriaLogsにログを送る機能を追加できない？対応してるデータインジェスチョンプロトコルはここにあるよ → https://docs.victoriametrics.com/victorialogs/data-ingestion..." userName="valyala" createdAt="2025/06/07 00:48:20" color="">}}




{{<matomeQuote body="もちろん可能だよ。HTTP直送はよくあるパターンだから、今そのための汎用的なHTTPトランスポートを作ってるんだ。完成したら連絡するね。" userName="theogravity" createdAt="2025/06/07 21:00:47" color="#785bff">}}




{{<matomeQuote body="サンキュー！もし連携で何か問題があったら、このIssueに報告してくれればすぐ対応するよ → https://github.com/VictoriaMetrics/VictoriaMetrics/issues" userName="valyala" createdAt="2025/06/10 12:06:10" color="">}}




{{<matomeQuote body="HyperDX本番で使ってるけど超気に入ってるし、コスト効率がめちゃくちゃ良いから助かってるんだよね。ClickHouseと一緒になったClickStackが出たけど、元々のHyperDXはもう使えなくなるの？ClickStackに移行準備した方が良い？" userName="readdit" createdAt="2025/06/05 19:06:14" color="#45d325">}}




{{<matomeQuote body="お！うちの製品を本番で使ってくれてありがとう！HyperDXは非推奨にならないから安心してね。ClickStackはHyperDX v2とClickHouseとかを組み合わせたもの。HyperDXは使いやすさに注力しつつ、ClickHouseの強力なバックエンドを使うって感じ。スムーズに移行できるようにするからね。" userName="mikeshi42" createdAt="2025/06/05 21:18:30" color="#45d325">}}




{{<matomeQuote body="HyperDXとClickStackの関係性がまだよくわかんないんだよね。HyperDXってClickStackと同じなの？ClickStackはHyperDXに何か商用のものを足したもの？クラウド版？それともHyperDXって名前が変わっただけ？" userName="HatchedLake721" createdAt="2025/06/06 00:02:11" color="">}}




{{<matomeQuote body="フィードバックありがとう、分かりにくかったね！HyperDXはClickStackの一部だよ。ClickStackは｛HyperDX、ClickHouse、OTel｝のセットなんだ。HyperDX v2はクエリ機能に力を入れてて、色んなClickHouseの使い方に対応できるようになったんだよ。これで少しはっきりしたかな？" userName="mikeshi42" createdAt="2025/06/06 02:47:18" color="#45d325">}}




{{<matomeQuote body="OTelって小規模・高性能環境でどう思う？数年使ってるけど、Vectorみたいなシンプルなのと比べると、範囲広すぎて複雑じゃない？記事でOTelや「他の方法」に触れてたから、詳しい意見聞きたくてさ。市場の動向とかも知りたいな。" userName="wvh" createdAt="2025/06/06 08:37:45" color="">}}




{{<matomeQuote body="VectorがOTelよりシンプルかは微妙だね（VRLはOTTLより複雑だし）。otel collector builderでスリム化もできるよ。俺的にはOTelが一番良い投資だと思うな。広くサポートされてるし、otel-arrowとかでパフォーマンスも向上してるし。俺たちもOTelをもっと使いやすくしていくつもり。ただ、OTel collectorが常にベストなわけじゃなく「状況による」ってのが正直な答えかな。でもOTelは好きだよ、将来は明るいと思う。" userName="mikeshi42" createdAt="2025/06/06 16:10:19" color="#ff5733">}}




{{<matomeQuote body="ありがとう、現場の最前線にいる人から意見聞けて良かったよ。" userName="wvh" createdAt="2025/06/09 09:37:10" color="">}}




{{<matomeQuote body="ちょっと混乱してるんだけど。HyperDX Cloud使ってて、NextJSから直接データ送ってるんだ。ClickStack使うメリットってHyperDX Cloudと比べて何なの？" userName="3dteemu" createdAt="2025/06/06 07:30:42" color="">}}




{{<matomeQuote body="ClickStackは今オープンソース版だけなんだ。クラウド版とかはまだないよ！（ClickHouse CloudでClickHouseをホストするのはできるけど）。だから君には多分必要ないかな。HyperDX Cloudでもv1からv2へのアップグレードで、これらの改善は取り込まれる予定だよ。" userName="mikeshi42" createdAt="2025/06/06 16:12:01" color="#45d325">}}




{{<matomeQuote body="トレースとログはOtelで良いけど、メトリクスはやりすぎかな。ClickStackはStatsDデータを取り込める？Datadog拡張付きで（タグ付けできるやつ）。unified service taggingでトレース、ログ、メトリクスを関連付けられる？UIでリンクできる？なんでElixir SDKはotelじゃなくhyperdxライブラリなの？Notebooksはロードマップに入ってる？" userName="hosh" createdAt="2025/06/05 19:31:43" color="#38d3d3">}}




{{<matomeQuote body="良い質問だね！<br>OTel Metricsは仕様が複雑なのはわかるよ。StatsDはOTel collectorで取り込めるし、直接ClickHouseにも書けるよ: https://github.com/open-telemetry/opentelemetry-collector-co...<br>トレース・ログはtrace/span idで、メトリクスはresource attributesで関連付けてるよ。K8s以外も増やしていく予定。Exemplarsはまだだよ。<br>Elixir SDKはOTel SDKと並行して進化してるけど、再評価するかも。俺たちは早期からOTelに関わってるからね。Deno連携は公式より1年以上早く出したんだ ＜3<br>Notebooksは実験版が間もなくリリースされる予定！何かアイデアあったらぜひ教えてね。" userName="mikeshi42" createdAt="2025/06/05 21:11:39" color="#ff5c5c">}}




{{<matomeQuote body="ありがとう。別のスレッドでOtel StatsD receiverの話を見たから、StatsDは大丈夫そうだよ。前見た時はotelのメトリクス仕様が複雑すぎたんだ。これでDatadogの代替として真剣に検討するには十分な機能がありそうだね。" userName="hosh" createdAt="2025/06/06 03:25:14" color="">}}




{{<matomeQuote body="＞ but I think the Otel metrics is over-engineered.<br>OTelメトリクスの何が難しく感じた？StatsDとかDatadogエージェントみたいな他のメトリクスソースのreceiverも設定できるから、すぐに全部置き換えなくても大丈夫だよ。" userName="phillipcarter" createdAt="2025/06/05 20:01:52" color="">}}




{{<matomeQuote body="俺にとって致命的な問題が一つ：raw metricsをサポートしてないこと。たまに、メトリクス全部をサーバーに送って、処理はサーバー側でやりたいんだよ。もう一つ面倒なのはAPI。「metrics.AddMeasurement(’my_metric’, 11)」みたいにシンプルに書けず、Meter作ったり（ライブラリ名も必要）しないといけないんだ。" userName="cyberax" createdAt="2025/06/06 00:24:39" color="#ff33a1">}}




{{<matomeQuote body="6ヶ月くらい前にAWS LambdaでOTELを試したけどうまくいかなかったんだ。主な問題はPrometheus remote writerで、拡張機能が不安定でキューエラーが頻繁に出たよ。Prometheusのラベルとの連携も悪かったし、deltaとかnon-deltaメトリクスの設定もごちゃごちゃだった。使ってたスタックはexponential histogramsもサポートしてなかったね。何日もいじってなんとか動いたけど、安定しなかったんだ。結局やめて happier だったよ。Prometheus remote writerを使わない pure OTELスタックならもっと良かったかもね、将来試してみたいと思ってるよ。OTELとサーバーレスの成功談、ぜひ聞きたいな！" userName="carefulfungi" createdAt="2025/06/05 20:50:15" color="#38d3d3">}}




{{<matomeQuote body="Signozに似てるって言える？両方ともClickHouseを使ってて、オープンソース版とホスト版があるでしょ？Signozと比べてどう違うのかな？（UIも似てる気がするけど、オブザーバビリティツールって似たようなUIが多いよね）" userName="wiradikusuma" createdAt="2025/06/06 06:24:43" color="">}}




{{<matomeQuote body="私も両者の比較に興味ある！" userName="oulipo" createdAt="2025/06/06 09:10:10" color="">}}




{{<matomeQuote body="下のスレッドでもっと詳しく答えたよ！ <br>https://news.ycombinator.com/item?id=44196484" userName="mikeshi42" createdAt="2025/06/08 02:51:57" color="">}}




{{<matomeQuote body="別のYC仲間でClickHouseを使ってるオブザーバビリティツールのSignozとどう違うの？" userName="codegeek" createdAt="2025/06/05 19:09:26" color="">}}




{{<matomeQuote body="下のコメントにもあるけど、一つ明確なのは、うちはClickHouseのチームで、公式のファーストパーティ製品ってことかな。それによって以下のような違いがあるよ：<br>- どんなClickHouseインスタンスでも柔軟に使える。ClickHouseにどんなスキーマを使ってもだいたい動くんだ。カスタムスキーマはパフォーマンスチューニングとか、Anthropicみたいな規模になるとかなり重要だよ。だから使い始めるのがめちゃくちゃ簡単なんだ（特に既にClickHouseにデータがあるならね）。<br>- 上記にも関連するけど、OTELに縛られる必要がないんだ。俺はOTEL大好きだけど、Vector、Cribl、S3、カスタムスクリプトなんかを良い理由で使ってる会社もあるよね。そういうのもClickHouseのいろんな連携機能でネイティブにサポートされてるから、もちろんClickStackやHyperDXもそのシナリオで使えるよ。<br>- あと、テレメトリを大規模に処理するためのクールなツールもいくつかあるよ。Event Deltas（遅いスパンと正常なスパンを高カーディナリティ相関で根本原因特定）とかEvent Patterns（MLで類似のログやスパンを自動的にクラスタリング）とかね。これらは検索やグラフ化だけじゃなく、ユーザーがデータに深く潜るのを助けてくれるんだ。<br>- セッションリプレイ機能もあるよ。クリックからインフラメトリクスまで全てを真に統合するためだね。<br>うちはClickHouse Cloudをモニタリングするために社内で運用してる100PB以上の規模で動くように作られてるけど、サポート案件でたまに出てくるような特定のユーザーの問題を end-to-end でピンポイントで特定できるくらい柔軟なんだ。<br>きっともっとたくさんあるけど、見落としてるかも。結局プロダクト哲学の観点から言うと、うちは”3つの柱”っていう考え方にはあまり賛成してないんだ。あれって「ログ」「メトリクス」「トレース」で3つのサイロやタブに分かれがちだよね（これはSignozだけじゃなくて業界全体に言えること）。俺は、シグナルや手がかりを一つにまとめて集中させて、エンジニアに適切なタイミングで適切なデータポイントを提供するツールを作ってるって強く信じてるんだ。インシデント中は、問題の根本原因を見つけるために次にどんな手がかりを得られるかだけを考えるのであって、ログ製品を使ってるかトレース製品を使ってるかなんて考えないよ。" userName="mikeshi42" createdAt="2025/06/05 23:09:06" color="#45d325">}}




{{<matomeQuote body="こんにちは、Signozのメンテナーです。<br>＞ an official first-party product on top<br>だから、あなたの方向性としては、異なるClickHouseインスタンス（Cloud／BYOC／Self hosted）への取り込みを可能にして、その上にHyperDXをクエリ＆可視化レイヤーとして使うということかな？<br>SigNozでの根本的なアプローチの違いは、我々はオブザーバビリティを解決したいと思っていて、今日ClickHouseを使っているのは単なる現時点での事実だっていうことだよ。将来的には、オブザーバビリティにとってよりパフォーマンスの高い他のデータストアを使うことにもオープンなんだ。オブザーバビリティの異なるユースケースを補強するために、異なるデータベースを使うこともできるよ。<br>＞ 結局プロダクト哲学の観点から言うと、うちは”3つの柱”っていう考え方にはあまり賛成してないんだ。（中略）ログ製品を使ってるかトレース製品を使ってるかなんて考えないよ。<br>これが実際にどう機能するのか、あまりよく分からないんだよね。メトリクスとログのクエリを同じエクスプローラーで書くのを想定してるの？我々の経験では、ログとメトリクスのクエリの書き心地は全然違って、ユーザーがクエリを書くUXを簡単にするためには異なるデフォルトが必要なんだよ。<br>まあ、シグナル横断でクエリできる能力が重要なポイントだっていうのは同意するし、我々もSigNozで既にこれに取り組んでるよ（https://signoz.io/blog/observability-requires-querying-acros/）。" userName="pranay01" createdAt="2025/06/07 05:17:19" color="#ff33a1">}}




{{<matomeQuote body="ここで言う”You”はClickHouseのことだよ" userName="oatsandsugar" createdAt="2025/06/05 19:46:31" color="">}}




{{<matomeQuote body="そうだけど、それはHyperDXがClickHouseに買収されたからでしょ。でも私の質問はまだ残ってるよ。" userName="codegeek" createdAt="2025/06/06 15:47:46" color="">}}




{{<matomeQuote body="Kibanaの代わりに新しいロギングソリューションを探してるんだ。ClickHouseの経験はとても良いし、HyperDXはそれのまともなUIに見えるね。<br>主にログに興味があるんだけど、既存のログシッピングパイプラインはKubernetes上のVectorなんだ。確かにVectorにはベータ版のOTELシンクがあるけど、特に元のデータがOTELじゃなくて plain JSON でアプリから出てくることを考えると、それがログをシッピングする最良・最速の方法なのか気になるね。<br>現在のシステムは毎日数TBを処理してて、追いつくためにはかなり深刻なスループットが必要なんだ。" userName="atombender" createdAt="2025/06/05 23:01:47" color="#ff5733">}}




{{<matomeQuote body="幸いClickHouseとマジで高いスループットは同義語みたいなもんだよ。ウチは内部で100PB以上のテレメトリを自前の監視システムに貯めてる。VectorはClickHouseに直接書き込めるのをサポートしてるんだ - いくつかの会社が大規模に使ってるよ（Anthropicもまさにこれを使ってたはず、最近ウチのカンファレンスで話してた）。ぜひ試してみて、どうだったか教えてほしいな！喜んで手伝うよ :)" userName="mikeshi42" createdAt="2025/06/05 23:11:39" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ありがとう！ClickHouseはよく知ってるよ。でもさ、ログってHyperDXを通さずにCHに入れられるの？ HyperDXはVectorのパイプラインがペイロードを適応させる必要がある特定のスキーマを要求しないの？" userName="atombender" createdAt="2025/06/05 23:14:15" color="">}}




{{<matomeQuote body="いやいや！ウチは事実上スキーマ気にしなくていいんだ。カスタムスキーマをObservabilityの概念にマッピングできるよ（例えばTraceIDのSQL式とか、カラムでも関数でも表現でも大丈夫）。取り込みパイプラインとかスキーマにロックインされることはない。もちろんOTel経路に最適化してるけど、それなしでも全然うまくいくよ。" userName="mikeshi42" createdAt="2025/06/05 23:15:50" color="">}}




{{<matomeQuote body="CHには大満足だけど、HyperDXには正直ガッカリだよ：<br>・カラムの並び替えができない？<br>・セル内改行ができない？<br>・Kibanaにあるような「フィールドの人気度」みたいな概念がないみたい（フィールドを「固定」できるのも）？<br>・ログビューのチャートが超シンプル。ブレークダウンもなし。タイムセレクターもすごく原始的。良いものを見たいならGoogle Cloudのログビューを見てみなよ。<br>・クエリビルダー使う時にフィールド値の自動補完がない？<br>・ライブビューが超 annoying。新しいデータがなくても数秒ごとにトップにスクロールしちゃう。<br>・チャートビューはほぼ使い物にならない。2つの時系列計算、平均とP95を表示するチャートを作ろうとしたんだけど、正しく描画されないし、シリーズがごちゃごちゃになるし、全体的に使えないと思う。もっと詳しく説明してもいいけど、ちょっと試せば再現するはず。<br>幸いGrafanaがCHデータにアクセスしてずっと良い仕事をしてくれる。<br>・ドリルダウンのサイドバーも何が重要か全然分かってないみたいで、絶対にフィルタリングしたくないフィールドがリストの上の方にあって、そうでないのが下の方。フィールドを並び替えられないの？<br>・他にもたくさんの些細な不満点。<br>全体的に、ログとチャートの両方でKibanaよりずっと、ずっと機能が弱いと思った。Kibanaですら両方ともかなりひどいのに、ね。<br>ElasticをCHに置き換えたいから多分これで我慢できるだろうけど、KibanaのUI機能とはお別れすることになりそうだよ。" userName="atombender" createdAt="2025/06/11 16:57:09" color="#ff33a1">}}




{{<matomeQuote body="このフィードバックは本当に助かるよ。いくつか補足：<br>・カラム並び替え：トップのSELECT文の順番を変更すればできるはずだよ。<br>・改行：全く同意 - これは追加予定で、近いTODOリストに入ってる。<br>・フィールド固定：全くその通り、値は固定できるけど、フィルタ全体の優先度付けはできてない。これもキューに入れるよ。<br>・タイムピッカー：Google Cloudのタイムピッカーが良いってのは分かるよ、確かに良くできてる。でも breakdown についてもっと詳しく聞きたいな、ログレベル以上のグループ化をカスタマイズしたいってこと？<br>・自動補完：v2.0.0だと regression あったかも、多分それに当たってるんじゃないかな。v2.0.1ならluceneにフィールド値の自動補完があるはず。SQLにはまだないんだ。<br>・ライブビュー：何がスクロールするのか clarify してくれる？ それともライブを無効にする話？<br>・チャートビュー：ちょっと試してみた感じ大丈夫そうだったんだけど、もっと詳細教えてくれる？<br>・サイドバー：これはフィールドの人気度でフィールドを固定するのと関連してる？それとも何か違う？<br>このフィードバック全部めちゃくちゃ助かるよ - まだ完璧な体験を作り上げてる最中だって分かるでしょ。Discord（https://hyperdx.io/discord）かメール（michael.shi@clickhouse.com）で深く掘り下げられたら嬉しいな。どちらにしてもこれは非常に役に立ったよ :)" userName="mikeshi42" createdAt="2025/06/11 18:02:19" color="#45d325">}}




{{<matomeQuote body="返信ありがとう。多分そのうちDiscordに行くよ！<br>・並び替えはUIでできるべきだよ。普通ログ見るときって、ビューをどんどん変えて、カラム足したり消したり並べ替えたりして、特定のものを並べて見れるようにするんだ。このプロセスはサクサクでストレスフリーであるべき。<br>・Breakdown：Kibanaの例がこれ（https://imgur.com/Dkz6j9K）。どんなディメンションでもタイムラインを積み上げ棒グラフにできるんだ。<br>・ライブビュー：ローカルで実行した時にバグ踏んだのかもしれない。ライブテールのモードを有効にして下にスクロールしたら、数秒後に新しいデータが全然来てないのにページ全体がトップにスクロールしたんだ。今あなたのライブデモを試したら、スクロールするとライブビューが無効になるね。これも悪いUXだと思うよ、「Resume」をまたクリックしなきゃいけないなんて。少なくとも上にスクロールし直したらモードを再開すべき。<br>・チャートビュー：別の修正されたバグに当たってたのかもしれない。最新のHyperDXをDocker Composeで起動したら、今は再現できないや。<br>さらにチャートのバグにいくつか当たったんだけど：ドラッグでズームするとテキストが選択されるのと、ズームした時にX軸の範囲がズームしたところに正確に合わないんだ。例えば、カーブの始まりから終わりまでを選択したら、ズームしたビューも同じ場所で始まる・終わることを期待するんだけど、なんか X ポイントの丸め処理がおかしいのかもしれない。動画がここにあるよ：https://imgur.com/p6XOZ6U。［編集：粒度のことだ。ズームは正しいと分かった、ただあなたの自動粒度設定がすごくアグレッシブなんだ：https://imgur.com/C3TarFo。Grafanaでこんなこと見たことないよ、あそこは計算された時間間隔を横方向に表示できるデータポイント数、つまりチャートビューが何ピクセル幅かに基づいてるんだ。盗むべきアイデアかもしれないね？］<br>なんかチャートは今の方がうまく動いてるけど、まだ Kibana から何マイルも何マイルも遅れてるって言わざるを得ないな。Kibanaにはたくさんのビジュアライゼーション（線、棒、積み上げ棒、エリア、テーブルとか；あなたがやってるみたいな線スムージングは望ましくないことも多くて、階段状の方がいいことも多い）があるし、トップ値でグループ化みたいな異なる集計をサポートしてるんだ：sum(duration) を顧客IDでグループ化した積み上げ棒グラフとか、すごく良いビジュアライゼーションになることが多いよ。<br>HyperDXが各データシリーズにフィルタを持ってるのは良いね、Kibanaは複雑なUIの裏に隠してるから。<br>・サイドバー：そうだね、多分！<br>もう一つ思いついたのがサイドバーのフィルタ。 ResourceAttributes［’foo’］みたいに見えるのはあんまり良いUXじゃないね、フィールドのほとんどがリソース属性だし、通常横方向に切り詰められちゃう。あなたのデモから：https://imgur.com/a/69lD3t5。" userName="atombender" createdAt="2025/06/11 21:01:55" color="#ff33a1">}}




{{<matomeQuote body="それはいいね。すぐ詳しく見てみるよ。" userName="atombender" createdAt="2025/06/05 23:18:15" color="">}}




{{<matomeQuote body="データ転送／ワイヤーフォーマットにotelを選ぶのは、将来に向けてほとんどの可能性を提供する素晴らしい戦略的な選択だと思う。懸念が2つ減るね。" userName="smetj" createdAt="2025/06/06 07:05:36" color="">}}




{{<matomeQuote body="俺はワイヤーフォーマットより、高負荷・高スループットシステムでの複雑性やボトルネックを減らすことの方が気にかかるな。ClickHouseに取り込むためだけの中間APIが必要だと、遅くなったり壊れたりするステップが一つ増えるだけだ。JSONペイロードをINSERTに変換するだけのgRPC APIとか、直接INSERTできるならかなり無駄でしょ。" userName="atombender" createdAt="2025/06/06 11:18:33" color="#38d3d3">}}




{{<matomeQuote body="VictoriaLogsの開発者だけど、君に同意。データベース側で複数のポピュラーなデータ取り込みプロトコルをサポートするのは重要だよね。そうすればユーザーは既存のプロトコルを使い続けられるし、変換用の中間プロキシとか追加する必要がないもん。だからVictoriaLogsは複数のデータ取り込みプロトコル（[1] https://docs.victoriametrics.com/victorialogs/data-ingestion...）をサポートしてるんだ。JSON line protocolみたいに、JSONログを何も変換せずに送るのに使えるやつもあるよ（[2] https://docs.victoriametrics.com/victorialogs/data-ingestion...）。" userName="valyala" createdAt="2025/06/07 11:13:56" color="#ff5c5c">}}




{{<matomeQuote body="これ何したいんだろ？アカウント作ったら、左のサイドバーに「この検索結果は役に立ちましたか？」ってウィジェットが出てて、まだ何も検索してないのに変だった。非表示ボタン押したら「何かフィードバックは？」に変わって、このバグ教えようとフィードバック押したらまた「役に立ちましたか？」に戻った。UXも読みにくすぎ。等幅フォントで文字小さくて、暗い背景に白と明るい緑の文字とか…。フォント変えてもあんま変わんなかった。80年代の端末みたいなネタに走るより、普通のがいいな。これだけで使う気失せる。読むのが苦痛じゃなくて、楽じゃないと。" userName="JimDabell" createdAt="2025/06/06 08:47:24" color="#785bff">}}




{{<matomeQuote body="「ログ」されるゴミの量がマジでヤバすぎるってのにビックリ。デカいビジネスになってるし、DevOpsの主要タスクの一つにまでなってる。ログ出すこと自体が目的みたいになってて、出力見ると超怖い。何の目的か不明なデカいメッセージがログされてる。100KB超える意味不明なbase64エンコードされた単一traceとか見たことあるし！それに、そのサービスに金払わないといけないから重要に見えるだけ。デバッグには超役立つって言うけど、ほとんどの場合は1）多すぎ、2）結局使わない。それに、面白いのはデバッグバージョンの最後の10分くらいで、そのためだけに「サービス」なんていらないんだよ。<br>/me 説教終わり :-)" userName="buserror" createdAt="2025/06/05 20:40:38" color="">}}




{{<matomeQuote body="君の言ってることは少なくとも部分的には正しいと思うよ。全部じゃないけど、多くのデータは役に立たなくて、お金、帯域幅、電気とかの無駄になってる。クライアント側で、何をログするか／フィルタするか、もっと動的に制御できるようにすべきだよね。" userName="metta2uall" createdAt="2025/06/06 05:07:53" color="">}}




{{<matomeQuote body="Datadogが高いのは本当。でも、遅いと感じたことはないな。速度がキラーフィーチャーじゃない。ログとかmetricsが流れてきた後に、それで何でもできるのがすごいんだ。dashboardとか直感的に作れるし、airflowのログからアラート作るのもDSL使えば簡単。Slackとかへの通知連携も普通に動く。だから、Datadogのコストは、節約できるエンジニアリング時間（エンジニアはまだ高いし、AIはまだ代わりになってない）と、生のログやmetricsから役立つ洞察へ素早く動けることで正当化できるんだよ。" userName="gigatexal" createdAt="2025/06/06 05:06:42" color="#ff33a1">}}




{{<matomeQuote body="完全に同意！監視ツールは、ただ検索が速いだけじゃなくて、自分の疑問に素早く答えられるから使うんだよね。スケールした時の生パフォーマンスとコスト効率はもちろん超重要だけど、HyperDXのアプリケーション層自体が直感的に使えるようにもすごく力を入れてるよ。どんな感じかはplay.hyperdx.ioでいつでも触ってみて！" userName="mikeshi42" createdAt="2025/06/06 06:31:52" color="#ff5c5c">}}




{{<matomeQuote body="これマジで面白いね。ClickHouseだけがこのスタックの中で状態を持つ部分なの？Rustで書かれたOTELコレクターRotel[0]と互換性があるといいな。そうすればサーバーレス環境でも使えるようになるし。Datadogが持ってる独自のOTELコレクターの代替は、もっとパフォーマンスが高いのが一つの鍵だよね。<br>[0]: https://github.com/streamfold/rotel" userName="bilalq" createdAt="2025/06/05 19:57:54" color="#785bff">}}




{{<matomeQuote body="同意！RotelはOTELとの軽量なlambda統合にすごく良いフィットだと思う。OTELのIngest Endpointを立ててるから、データ送るのも既にシームレスに動くはずだよ！（OTELの良いところだよね！）RotelのMike＆Rayとも少し前から連絡取ってるんだけど、最近ClickHouseのサポートを追加したって教えてくれた。これでさらに話が良くなったね！" userName="mikeshi42" createdAt="2025/06/05 20:07:41" color="#45d325">}}




{{<matomeQuote body="皆さんこんにちは — Rotelの開発者の一人です。BilalさんとMichaelさん、優しい言葉ありがとう。OTELとClickhouseは強力な可観測性スタックになるって信じてるから、RotelのClickhouse統合をClickStackでテストするの楽しみにしてるよ。僕たちのオープンソースのRust製OpenTelemetryコレクターは、高性能でリソースが限られた環境向けに設計されてるんだ。ぜひチェックしてみてほしい！" userName="mike_heffner" createdAt="2025/06/05 22:56:07" color="#ff33a1">}}




{{<matomeQuote body="うわー、Rotel知らなかった…。<br>マジで面白そうだね。特にあのPython bindingsは…。<br>ブックマークした！" userName="smetj" createdAt="2025/06/06 07:15:28" color="">}}




{{<matomeQuote body="偶然これを見つけた人向けの情報だよ：UIのストレージ層にはMongoDBが使われてるみたい。" userName="bilalq" createdAt="2025/06/07 16:27:37" color="">}}




{{<matomeQuote body="あ、ごめん、その質問見落としてた。うん、MongoDBとClickHouseが二つのstatefulサービスだよ。ClickHouseだけに簡素化できるモードを提供できるか検討していくけど、それにはもう少し作業が必要かな。" userName="mikeshi42" createdAt="2025/06/08 03:42:34" color="#45d325">}}




{{<matomeQuote body="すごくいいね、SigNozを思い出すよ。これをk8sでセルフホストするにはどうすればいい？ Altinity operatorでClickHouseクラスターをデプロイして、HyperDX local modeで接続するとか？ ClickStackをセルフホストする推奨アプローチは何？" userName="dustedcodes" createdAt="2025/06/06 11:25:56" color="">}}




{{<matomeQuote body="まず始めるなら、すごく使いやすいhelm chartがあるからチェックしてみてよ。これだよ：https://clickhouse.com/docs/use-cases/observability/clicksta..." userName="mikeshi42" createdAt="2025/06/08 03:41:27" color="#ff5c5c">}}




{{<matomeQuote body="うちはフルGrafana stack（Loki, tempo, Prometheus, alloy agent, Grafana）を使ってて、セルフホストS3にバックアップしてるんだ（全部オンプレ物理）。今のstackも好きだけど、コンポーネントが多くて設定大変。一度動けば問題ないけどね。<br>これと比較してどう思う？ データ量は多くなくて、1ヶ月のmetricsは約200GB、logsは2週間で1TB以下だよ。" userName="regnerba" createdAt="2025/06/06 06:47:25" color="">}}




{{<matomeQuote body="metrics 200GBとlogs 1TBくらいなら、metrics/logsに最適化されたシングルノードの監視ソリューション（例えばVictoriaMetrics/VictoriaLogs）で効率的に処理できるよ。Raspberry Piみたいな低スペックPCでも動くんだ。そんな小規模ワークロードでクラスターとかmicro-service architecture、object storageでシステムを複雑にする意味はゼロだよ :)" userName="valyala" createdAt="2025/06/07 11:23:20" color="#ff33a1">}}




{{<matomeQuote body="昔、MikeがHuggingfaceができる前にHuggingfaceみたいなのをやってたのを覚えてるな。彼は時代を先取りしてたんだよ。model depotがもうないのは残念だね。" userName="Immortalin" createdAt="2025/06/05 19:49:50" color="">}}




{{<matomeQuote body="log aggregatorsが多すぎて、もう全然追いきれないよ。Datadogは extensively 使ってたけど、高すぎるしUIがすごく分かりづらいと思ったな。" userName="user3939382" createdAt="2025/06/05 19:42:15" color="">}}




{{<matomeQuote body="何かのニーズがあるとそうなるんだよね。提供されるものが爆発的に増えて、最終的に一握りの生き残りに絞られるんだ。" userName="RhodesianHunter" createdAt="2025/06/05 20:21:02" color="">}}




{{<matomeQuote body="みんな Datadog 高すぎるって気づいたんだよね！<br>だから Prometheus と Grafana に乗り換えるんだけど、今度は Prometheus cluster を管理しなきゃいけないんだ。はるかに安いけど、その分はるかにめんどくさいね。" userName="secondcoming" createdAt="2025/06/05 22:51:35" color="">}}




{{<matomeQuote body="Datadog の経験はないんだけど、「 cheaper 」が簡単に quantify できる形容詞なのかは疑問だな。Kubernetes での whole metrics/logs/traces thing は相変わらず painful で、すごく work が必要だし、 confusion に終わりがない。何年も in the trenches にいるけど、 monitoring stack の install 、 configure 、 make sense にかかる時間（つまり more money ）は、監視対象の software を setup するよりまだ長いよ。<br>ほとんどの software が ancient で、 heaps of stack traces と wall-of-text output を吐き出して、 structured logging を使わないし、 generally monitoring しやすくないのも助けにならないね。<br>だから、 highly available observability stack から meaningful insights を得るには Serious な time と resources がかかるだろうし、 smaller companies が third party に handing over して core business （ AKA easy billing ）に get on するのも理解できるよ。" userName="wvh" createdAt="2025/06/06 10:02:03" color="#ff5733">}}




{{<matomeQuote body="Datadog は good product だけど、 I’ve had the displeasure to use した中で最も blatantly overpriced なものの一つだね。" userName="landl0rd" createdAt="2025/06/06 01:13:03" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="この space の他の player 、 Signoz との comparison は？あれも backend に clickhouse 使ってるよ。" userName="SOLAR_FIELDS" createdAt="2025/06/05 22:27:38" color="#ff5733">}}




{{<matomeQuote body="Really interesting ！Unfortunately 、 HyperDX は Mongo に depends してるみたい？ open source の document stores （ possibly a mongo compatible one ）で、 that could work with it なのないかな？" userName="ensignavenger" createdAt="2025/06/05 23:08:48" color="#ff5733">}}




{{<matomeQuote body="FerretDB って great alternative に見えるね、 thanks ！ I’ll be keeping Ferret と ClickStack on my radar ！" userName="ensignavenger" createdAt="2025/06/06 00:29:00" color="">}}




{{<matomeQuote body="FerretDB maintainer だよー！もっと詳しく知りたいなら Community Slack に feel free to join して ping してね！<br>https://join.slack.com/t/ferretdb/shared_invite/zt-36uaz8zgg..." userName="gwozdzm" createdAt="2025/06/09 08:37:05" color="#38d3d3">}}




{{<matomeQuote body="In theory FerretDB とか使ってみることもできるはずだよ。<br> compatibility layer （ such as ferret ）を proper support するか、 or more likely ClickHouse 自体を operational data store として just using するかを investigate するのを medium term roadmap に入れてるんだ。" userName="mikeshi42" createdAt="2025/06/05 23:14:41" color="#ff5733">}}




{{<matomeQuote body="FerretDB maintainer だよー！ we’ll be looking at this." userName="ptrfarkas" createdAt="2025/06/05 23:22:16" color="#38d3d3">}}




{{<matomeQuote body="That’d be awesome ！ Ferret は for a while now radar にあったんだよね :) If you want to chat with us on Discord: https://hyperdx.io/discord" userName="mikeshi42" createdAt="2025/06/05 23:25:52" color="#785bff">}}




{{<matomeQuote body="やあ、HyperDXのメンテナーだよ。もしよかったらコラボレーションについて話したいな。MongoDBからの移行を計画してるんだ。Discordのwarrenに連絡してね。" userName="wrn14897" createdAt="2025/06/06 05:24:54" color="#45d325">}}




{{<matomeQuote body="なんで既存のGrafanaじゃなくて、カスタムのFrontend作ったの？" userName="Omnipresent" createdAt="2025/06/07 00:01:58" color="">}}




{{<matomeQuote body="Grafanaは今でも素晴らしいツールだし、Grafanaのエコシステムにたくさん投資してるチームも多いよね。ClickHouseの公式Grafanaプラグインのサポートも続けるし、今回のリリースでもそれは変わらないよ。<br>ただ、僕らが目指してるユーザー体験には根本的な違いがあるんだ。Grafanaは従来のモニタリングダッシュボード、低カーディナリティのモニタリングワークフローに本当に長けてるよね。<br>ClickHouseは高カーディナリティ、高性能の可観測性っていう新しいパラダイムを可能にするんだ。静的なダッシュボードから作業するんじゃなくて、エンジニアが新しい問題を素早くクエリできるような新しいワークフローやUXを実現するんだ。それが僕らの大きな焦点だから、探索、検索、構文、UIレイアウトがGrafanaとかなり違うのがわかると思うよ。これは僕らだけが気づいたことじゃなくてね。例えばShopifyは、ClickHouseへの移行時に似た理由で、Grafanaの認証部分だけ残して完全にカスタムアプリを構築したんだ。" userName="mikeshi42" createdAt="2025/06/11 05:04:40" color="#ff33a1">}}




{{<matomeQuote body="GrafanaがAGPLv3ライセンスなのが、その大きな理由の一つだろうね。https://github.com/grafana/grafana/blob/v12.0.1/LICENSE" userName="mdaniel" createdAt="2025/06/07 19:43:52" color="#785bff">}}




{{<matomeQuote body="Dockerコンテナ使うとき、サインイン必要？" userName="ah27182" createdAt="2025/06/06 02:43:08" color="">}}




{{<matomeQuote body="ローカルモードって呼んでるバージョンがあって、それはエンジニアがローカルデバッグワークフローの一部として使うことを想定してるんだ。https://clickhouse.com/docs/use-cases/observability/clicksta...<br>それ以外のバージョンでは、メールとパスワードで認証できるよ（オープンソース版ではメールは何もしてないけど、一貫性を持たせるためにユーザー識別子として残してるだけ）。" userName="mikeshi42" createdAt="2025/06/06 03:22:57" color="#45d325">}}




{{<matomeQuote body="リンクが実際のソースコードであるhttps://github.com/hyperdxio/hyperdxになってたらもっと良かったな。だって、ここのHNのメッセージがなかったら、「オープンソースの可観測性スタック」が何を意味するのかウェブページには説明がないし、HyperDXやそのコードへのリンクも提供されてないから分からないもん。「Open Source Datadog」全体がClickhouse Github内のClickStackリポジトリにあると期待してたけど、どこにも見つからないんだ。<br>でも、それ以外はおめでとう！長い間、誰もClickhouseの上にDatadog／New Relicの競合を作らないのが不思議だったんだ。<br>Clickhouse DBは、以前は利用不可能だった、または不可能だったオープンソースの「スケーラブルな」Web Analyticsの海を切り開いたんだ。可観測性プラットフォームでもこの変化が再び起こることを願ってるよ。" userName="ksec" createdAt="2025/06/05 19:13:11" color="#ff5733">}}




{{<matomeQuote body="SigNozも見てみて。https://github.com/SigNoz/signoz<br>僕らは4年前にDatadog／New RelicのOS代替としてSigNozを作り始めたんだ。最初からOpenTelemetryネイティブだよ。OpenTelemetryのセマンティック規約と僕らのクエリビルダーのおかげで、シグナルを跨いだあらゆるテレメトリを関連付けられるんだ。" userName="ankit01-oss" createdAt="2025/06/06 02:29:16" color="#ff5c5c">}}




{{<matomeQuote body="SigNozはClickHouse上に構築された、僕が知ってるDatadog／New Relic代替だよ。" userName="sirfz" createdAt="2025/06/05 19:39:47" color="">}}




{{<matomeQuote body="やあ、リンクの指摘は良い点だね！残念ながら今は変更できないけど、テキストの冒頭近くに置いたから、もっと掘り下げたい人には役立つと思ったんだ :)<br>それはさておき、君が言ったように、ClickHouseのおかげでたくさんの「大量データを保存する」アプリが可能になったよね。可観測性は、まさに同じカテゴリーにいる段階だよ。ClickHouseは大量のデータを保存できるし、OTelはそれを収集・処理するのを助けてくれる。あとは、エンジニアが直感的にすべてを調べられるようなアナリティクスのユーザー体験レイヤーが必要なんだ。" userName="mikeshi42" createdAt="2025/06/05 19:23:27" color="#45d325">}}




{{<matomeQuote body="今はそこにリンクしてるみたいだね。古いリンクは後学のためにhttps://clickhouse.com/use-cases/observabilityだよ。" userName="cbhl" createdAt="2025/06/05 21:50:08" color="">}}




{{<matomeQuote body="同意だね。LGTMとAlloyのスタックもかなり良いと思うよ。observabilityスタックを提供するなら、比較検討すべきものだね。" userName="verdverm" createdAt="2025/06/05 20:20:39" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
