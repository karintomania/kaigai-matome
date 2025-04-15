+++
date = '2025-04-08T00:00:00'
months = '2025/04'
draft = false
title = 'マジかよ！Apache EChartsが最強のグラフ描画ライブラリって噂、マジだった'
tags = ["グラフ描画", "JavaScript", "可視化", "データ分析", "Apache"]
featureimage = 'thumbnails/blue_green3.jpg'
+++

> マジかよ！Apache EChartsが最強のグラフ描画ライブラリって噂、マジだった

引用元：[https://news.ycombinator.com/item?id=43624220](https://news.ycombinator.com/item?id=43624220)

{{<matomeQuote body="Briefer作るとき、色んな可視化ライブラリ試したけど、Apache EChartsがマジで最強だったわ。<br>他のライブラリって、見た目が微妙だったり、使いにくかったり、柔軟性が足りなかったりするんだよね。<br>EChartsはその3つを全部解決してる。デフォルトで綺麗だし、バックエンドでグラフの定義を計算して、必要な定義だけフロントに送れるし、柔軟性もヤバくて、普通のBIツールでできることは全部できる。マジ神。" userName="lucasfcosta" createdAt="2025-04-08T23:33:26" color="#45d325">}}

{{<matomeQuote body="EChartsの良いところ、まだあるよ！<br>・プロジェクトで唯一安心してアップデートできる依存関係。アップデートで壊れる心配がない。3.xから5.xへのアップグレードも余裕！npm updateするだけで全部動くとかありえない。<br>・SSRにもSPAにも対応。vanilla-jsだから、ReactとかVueとか、RailsとかASP.netとか、どんな環境でも動く。サーバーサイドでJSON作ってEChartsに渡せるし、Vueのリアクティブオブジェクトも使える。<br>・細かい調整が必要な時（例えば、円グラフのホバー時のラベルに太字でパーセンテージを表示するとか）でも、ソースコードを掘る必要がない。大体ググれば解決する。" userName="jitbit" createdAt="2025-04-11T11:24:16" color="#ff5733">}}

{{<matomeQuote body="ECharts、昔見たことあるかもだけど、Chart.jsで十分だったからなー。変なカスタムもできるし。ビジネス分析はMetabaseをセルフホストしてる。Metabaseの可視化オプションがもっとあれば良いんだけど、設定が楽なんだよね。カスタムチャート作るほどじゃないし。" userName="noduerme" createdAt="2025-04-09T03:01:05" color="">}}

{{<matomeQuote body="グラデーションの折れ線グラフを作る必要があって、y軸の各ステップが色を表してて、隣の色とブレンドされるみたいなやつ。色々試したけど、EChartsが一番しっくりきた。Reactとの連携が最初分かりにくかったけど、普通のjsライブラリと同じように使えた。EChartsマジですごい。" userName="naught0" createdAt="2025-04-09T03:42:37" color="#45d325">}}

{{<matomeQuote body="いや、それは同意できないな。<br>EChartsは良いけど、Plotlyも超良いし、observablehq.com/plotもマジですごくなりそう。" userName="zurfer" createdAt="2025-04-09T09:15:07" color="">}}

{{<matomeQuote body="Plotlyはドキュメントに書かれてない機能が多い。コンサルティングで開発者を助けてるからじゃないかな。" userName="ramonverse" createdAt="2025-04-09T09:26:35" color="">}}

{{<matomeQuote body="選ぶときに考えたのは、chart.jsはCanvasだけっぽいけど、EChartsはSVGで出力できるってことかな。何百万点もプロットするならCanvasの方が速いかもだけど、シンプルなチャートならSVGの方がCSSだけでレスポンシブにできるから、JSで再レンダリングしなくても済むんだよね" userName="anentropic" createdAt="2025-04-09T08:58:08" color="#ff33a1">}}

{{<matomeQuote body="なるほどね、apacheの方も試してみるよ。教えてくれてありがと" userName="zwnow" createdAt="2025-04-09T09:38:13" color="">}}

{{<matomeQuote body="vega/vega liteとは比べた？どうだったか気になるな" userName="stuartaxelowen" createdAt="2025-04-09T01:05:05" color="">}}

{{<matomeQuote body="どっちも使ったことあるけど、Vegaは使い道があると思う反面、Web開発者には優しくないかな。フロントエンドのエンジニアはロジック、構成、スタイリングを分けたいんだよね。JSONドキュメントに全部まとめちゃうと、開発体験が悪くなるし、独自のやり方が多くなるし。とは言え、データベースにあるJSONに全部入ってるってのは最高だよね。でも、そこまで頑張る人が少ないから、ちょっと自己満足な技術選定になっちゃうかも" userName="spaceribs" createdAt="2025-04-09T01:21:04" color="#ff5733">}}

{{<matomeQuote body="vega liteのヘビーユーザーとしては、それは確かにそう思う。データ可視化の専門家が、研究とか分析で正確なチャートが必要な時に輝くと思う。簡単なメトリクスダッシュボードみたいなのには、開発者には難しいかもね" userName="RobinL" createdAt="2025-04-09T07:37:45" color="#ff5733">}}

{{<matomeQuote body="わかる" userName="adeptima" createdAt="2025-04-09T05:03:10" color="">}}

{{<matomeQuote body="`go-echarts`もおすすめだよ[1]。Golangの型でチャートを宣言できて、GolangのJSON marshallerがJSONに変換してくれるんだ。いろんなプロジェクトで使ってて、問題とかPRがあれば、メンテナーがすぐに対応してくれる。[1] https://github.com/go-echarts/go-echarts<br>[2] https://github.com/NimbleMarkets/dbn-duckduck-goose/blob/mai…" userName="neomantra" createdAt="2025-04-08T19:19:22" color="#45d325">}}

{{<matomeQuote body="マジか、教えてくれてありがとう。GoとDuckDBをよく使うんだよね。今までJSとかhtml/templateでごまかしてたけど、これで楽しくなりそう" userName="TheGoodBarn" createdAt="2025-04-08T20:32:00" color="#38d3d3">}}

{{<matomeQuote body="マジですごい" userName="rochak" createdAt="2025-04-09T16:27:50" color="">}}

{{<matomeQuote body="EChartsは最高だと思う。意外とリストとか検索に出てこないんだよね。chart.jsとかgoogle chartsとかamChartsとかHighchartsとかApexChartsとか全部試したけど。うちのツール/ライブラリでも使ってるよ。https://docs.chartsql.com/" userName="rorylaitila" createdAt="2025-04-08T18:36:15" color="#ff33a1">}}

{{<matomeQuote body="それって中国のプロジェクトだからじゃないかなー。Ant Design Componentsも同じで、マジですごいのに、もっと知られてもいいはずなのにね。" userName="eigenvalue" createdAt="2025-04-08T18:52:25" color="#45d325">}}

{{<matomeQuote body="中国製ってのが理由の一つだと思うな。初期の頃のサンプルが中国語だけだったりして、それで尻込みした人もいるかも。確かに複雑だけど（良い意味でね）、単純なチャートを作りたい人には向かないから、有名じゃないのもわかる気がする。でも、EChartsなら企業のニーズにも応えられるんだよね。" userName="sdesol" createdAt="2025-04-08T19:09:43" color="#ff33a1">}}

{{<matomeQuote body="やっぱりそうかもね。何年か前に「あのクールなチャートライブラリ」を探してたんだけど、Googleで全然出てこなかったもん。" userName="rorylaitila" createdAt="2025-04-08T19:53:50" color="">}}

{{<matomeQuote body="Apache EChartsのデベロッパーとかユーザーって中国人が多いみたい。" userName="ranger_danger" createdAt="2025-04-09T04:26:59" color="">}}

{{< details summary="もっとコメントを表示（1）">}}
{{<matomeQuote body="へー、教えてくれてありがとー。機能豊富そうだね！" userName="RowanH" createdAt="2025-04-08T22:20:46" color="">}}

{{<matomeQuote body="参考までにリンク貼っとくね。<br>https://github.com/antvis<br>良さそうだけど、ドキュメントのウェブサイトがマジでクソ。でも最近ちょっとマシになったみたい。<br>e.g <br>https://g6.antv.antgroup.com/<br>全体的に見て、Apacheにしとけば間違いないと思う。" userName="nchmy" createdAt="2025-04-09T01:14:45" color="">}}

{{<matomeQuote body="もう一個情報。antvのリーダーってechartsの開発者なんだって。" userName="hamsterbase" createdAt="2025-04-09T08:37:31" color="#785bff">}}

{{<matomeQuote body="マジで？なんで？" userName="nchmy" createdAt="2025-04-09T20:52:40" color="">}}

{{<matomeQuote body="陰謀論を語らせてもらうぜ。<br>下の方までスクロールすると、コメント欄全体が検索結果とAIのサジェストを修正するキャンペーンみたいに見えてくるんだよね。ありきたりな業者によるレビューみたいなコメントが多すぎる。「素晴らしい製品！」とか「X、Y、Zを試したけど、これで問題解決！」とか。" userName="athrowaway3z" createdAt="2025-04-09T05:33:40" color="">}}

{{<matomeQuote body="D3jsはどうなの？D3jsはローレベルだけど、AIがあれば簡単じゃん。" userName="abirch" createdAt="2025-04-08T18:48:45" color="">}}

{{<matomeQuote body="Plotってやつならスタンドアロンだよ[0]。でも、深さと範囲で言ったらD3に敵うもんないと思うけどねー。<br>[0]: https://github.com/observablehq/plot" userName="dleeftink" createdAt="2025-04-08T19:16:34" color="">}}

{{<matomeQuote body="最近書いた論文でPlot使ったんだけど、Plotだけが求めてたチャート作れたんだよねー。対数スケールを使ったグループ化された棒グラフとか。例えばこれ→https://github.com/josephg/egwalker-paper/blob/master/diagra…。echartsは試してないけど、良いなら試してみる価値あるかも。" userName="josephg" createdAt="2025-04-09T00:18:33" color="#45d325">}}

{{<matomeQuote body="matplotlibでも同じようなの作れるんじゃない？慣れてるかどうかにめっちゃ左右されるけど。" userName="shiandow" createdAt="2025-04-09T14:42:51" color="">}}

{{<matomeQuote body="マジ残念だよねー。D3.jsの人気を使ってObservableを宣伝したかった以外に理由が思いつかない。" userName="kowlo" createdAt="2025-04-08T22:54:14" color="">}}

{{<matomeQuote body="ObservableがD3を手に入れたのいつ？最後にD3見たの5年くらい前だけど、オープンソースのライブラリだと思ってたんだけどなー。" userName="the_real_cher" createdAt="2025-04-09T13:22:38" color="">}}

{{<matomeQuote body="ここ数年の話だけど、正確な時期は分かんない。たぶん重要なこと見落としてるかもだけど、Mike BostockがObservable共同設立したのが4～5年前？だから、事実上ずっと同じクルーだったんだけど、D3のドキュメントをObservableのnotebookと密接に結び付けるって決めたんだよね。" userName="infecto" createdAt="2025-04-09T23:13:01" color="">}}

{{<matomeQuote body="＞When did Observable get their hands on D3？”<br>ObservableとD3って同じ人が作ったんだよ。" userName="gaws" createdAt="2025-04-12T15:55:34" color="#ff5733">}}

{{<matomeQuote body="マジで意味不明な意見だなー。D3のコードをコピペしたいだけなら、ドキュメントがObservableでホストされてるせいで問題あるかもね。でもD3のAPIとかデザインパターンはObservableと全く関係ないじゃん。PyTorchのドキュメントがmkdocsで作られてるからPyTorch使わない、みたいなもんじゃん？しかも、Observableが制限になってるとしても（そうじゃないけど）、全部オープンソースなんだから叩くのおかしくね？金払わないとドキュメント見れないわけじゃないし、Observable PlotとかObservable frameworkとか、色々vizのエコシステムに貢献してるじゃん。echartsは良いツールだよ。宣言的な構文はちょっと変だけど、コンポーネントライブラリに簡単に組み込めるし。AWS Quicksightとか、今でも多くのBIツールで使われてるらしいし。" userName="jwilber" createdAt="2025-04-08T19:27:32" color="#ff33a1">}}

{{<matomeQuote body="Observableが今のD3のエコシステムにめっちゃ影響与えてるって言うのは別に変なことじゃないと思うけど。D3のAPIが変わったって言うより、たくさんの学習リソースとかサンプルとかドキュメントがObservableのreactive notebook形式に作り直されてて、Observable使わない人にとっては間接的で分かりにくいんだよね。D3のことめっちゃ詳しい人には関係ないかもだけど、初心者にとってはちょっと嫌かも。別にいいんだけどね！コピペだけの問題じゃなくて、他の実行環境を学ぶ必要なくD3を使いたいってことなんだよね。時間とか集中力が限られてるなら当然じゃん？" userName="infecto" createdAt="2025-04-08T19:40:28" color="#ff5733">}}

{{<matomeQuote body="Pre-observable時代は、d3でリアルタイム更新する複雑なやつ作ったんだよね。d3って考え抜かれてるけど複雑で大変だったけど、ドキュメントとかサンプルのおかげで理解できたし、結果は最高だったよ。でも数年後、簡単なやつ作ろうとしたらd3のバージョン上がってて、サンプルとか全部Observableになっててマジ無理。概念も忘れてるし、Observableからどうやってd3を取り出すかわからんくて諦めたわ。悲しい。" userName="abtinf" createdAt="2025-04-08T20:59:54" color="">}}

{{<matomeQuote body="俺も同じで、結局Apache Echartに落ち着いた（他の人もそうみたいだけど）。" userName="edoceo" createdAt="2025-04-09T00:22:13" color="#785bff">}}

{{<matomeQuote body="俺も経験豊富なエンジニアだけど、D3を初めて触ってみた感想はマジそれ。notebooksは余計なハードルって感じ。大したことないけど、ちょっとイライラする。" userName="WuxiFingerHold" createdAt="2025-04-09T03:02:14" color="">}}

{{<matomeQuote body="イタリック体どんだけ使ってもいいけど、それは大胆な主張じゃないと思うし、反例も意味不明。D3は最高のドキュメントがあるライブラリの一つ。書籍もYouTubeビデオもたくさんあるし、メンテナーも頑張ってる。<br>＞Observable Notebooksの形式でD3ドキュメントがある方が、ドキュメントがないよりマシ。<br>AIでObservable Notebookを普通のJavaScriptファイルに変換できるってマジ？" userName="jwilber" createdAt="2025-04-08T21:11:44" color="">}}

{{<matomeQuote body="長文レスありがとう。でも誤解されてる気がするから、いくつか釈明させて。ObservableはD3を学ぶ上での主要な媒体になってる。公式サンプルとかドキュメントとかObservableの環境に組み込まれてて、独自のモデルとか構文とか実行方法がある。それは些細なことじゃなくて、JavaScriptでD3を使いたい人にとってはマジで障害。<br>＞AIで変換しろ<br>っていうのは解決策になってない。誰もがブラックボックスに頼りたいわけじゃない。" userName="infecto" createdAt="2025-04-08T21:22:07" color="">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（2）">}}
{{<matomeQuote body="全然関係ないけど、「理解を外注する」って表現初めて聞いた。めっちゃいい。" userName="boomskats" createdAt="2025-04-08T23:11:57" color="">}}

{{<matomeQuote body="＞Observable NotebookをAIに変換しろ。<br>D3.jsのドキュメントは昔は良かったのに、今はAIに頼らないと理解できないの？" userName="kowlo" createdAt="2025-04-08T23:00:33" color="">}}

{{<matomeQuote body="＞でも、D3ドキュメントは、無料のインタラクティブなObservable Notebooks形式である方が、ドキュメントが全くないよりはマシ。<br>そこが核心。今のD3ドキュメントは、昔のnotebookベースじゃないD3ドキュメントよりマジで質が悪い。" userName="listenallyall" createdAt="2025-04-09T19:32:53" color="#785bff">}}

{{<matomeQuote body="例を挙げてくれる？俺は10年近くD3使ってるけど、ドキュメントはREADMEから静的なページに変わっただけでしょ（https://d3js.org/d3-selection/selecting）。何がそんなに悪いの？俺には同じに見えるんだけど（https://github.com/d3/d3-selection/tree/86）。bl.ocks.orgのこと言ってるなら、それはD3のドキュメントとは別。" userName="jwilber" createdAt="2025-04-10T17:08:22" color="">}}

{{<matomeQuote body="APIドキュメントがなくなったわけじゃなくて、初心者の学習体験が悪化したってこと。Observable優先になったせいで、新しいユーザーはD3を理解するのがマジで難しくなった。Observableとかいう新しいランタイムとかメンタルモデルに慣れないといけないから。例は増えてるけど、Observableとかのリアクティブなnotebookモデルを前提にしてる。" userName="infecto" createdAt="2025-04-11T04:08:12" color="#38d3d3">}}

{{<matomeQuote body="好きなだけイタリック体を使えるってことね。マジでウケるんだけど。" userName="gaws" createdAt="2025-04-12T15:57:22" color="">}}

{{<matomeQuote body="ああ、出た！オープンソースだから批判しちゃダメっていうやつ！<br>Observableはデータノートブック作りたいときには最高。でもVueアプリにD3のパイチャート入れたいときに、D3のAPI呼び出しをreactive cell valuesから解きほぐさないといけないのはマジ勘弁。見た目は普通のJavaScriptなのにそうじゃなくて、コピペしたらコンパイルエラーとかランタイムエラーになるし。<br>D3のリソースがD3のドキュメントとD3のデモとObservableのデモをごっちゃにしてるのが問題なんだよね。全部別々なら誰も文句言わないのに。" userName="9dev" createdAt="2025-04-08T21:05:03" color="">}}

{{<matomeQuote body="＞ObservableはVueアプリにD3のパイチャート入れたいときに、D3のAPI呼び出しをreactive cell valuesから解きほぐさないといけないのはマジ勘弁”<br>そうそう、書いた通り。“d3のコードをコピペしたいだけなら、Observableでホストされてるドキュメントに苦労するかも”ってね。<br>ちゃんとAPI（selectionsとかbindingsとかupdate patterns）を学べば、どんなチャートだってレイアウトとかジェネレーターを使いこなすだけよ。<br>d3 pieのドキュメントはここにあるよ：https://d3js．org/d3-shape/pie<br>Observableなんていらないし。でも、Observableからコードをコピペしたいなら、この例が超シンプルだよ：https://observablehq．com/@d3/donut-chart/2<br>reactive cellなんてないし、cellの中のコードをコピペするだけ。" userName="jwilber" createdAt="2025-04-10T03:38:44" color="#ff5733">}}

{{<matomeQuote body="Observableを攻撃するのは変じゃない？全部オープンソースで公開してるのに。<br>マジで？ノートブックエディタもオープンソースになったの？GitHubで見つからないんだけど。長らくプロプライエタリだったノートブックエディタが、Observableに対する不満の大きな原因なんだよね。" userName="mkl" createdAt="2025-04-08T22:39:53" color="">}}

{{<matomeQuote body="SQLからのアドホックなビジネスレポーティングにチャートが必要だったんだけど、EChartsは使いやすさ、使えるチャートの種類、インタラクティブ性、見た目の良さ、全部がちょうど良かったんだよね。" userName="rorylaitila" createdAt="2025-04-08T19:48:39" color="#ff5733">}}

{{<matomeQuote body="VisXのコントロール性がマジで好き。" userName="hajile" createdAt="2025-04-08T23:36:05" color="">}}

{{<matomeQuote body="Plotlyが好き。" userName="RedShift1" createdAt="2025-04-08T19:09:10" color="">}}

{{<matomeQuote body="Plotlyも検討したけど、Javaバックエンド用にJsソリューションが欲しかったから、GraalVMでSQLチャートレイヤーを実行できるようにしたかったんだ。" userName="rorylaitila" createdAt="2025-04-08T19:52:20" color="#ff33a1">}}

{{<matomeQuote body="色々試した結果、うちのチームは去年Apache EChartsに落ち着いたんだけど、後悔してないよ。ドキュメントは最高だし、パフォーマンスも良いし、設定も色々できるのに使いやすいし、必要なチャートタイプ（棒、積み上げ棒、地図、ズーム/スクロール可能な時系列、散布図）全部サポートしてるし。" userName="evaneykelen" createdAt="2025-04-08T19:09:15" color="#45d325">}}

{{<matomeQuote body="ag-grid chartと比べてどうなの？" userName="nXqd" createdAt="2025-04-08T19:50:33" color="">}}

{{<matomeQuote body="有料プランのあるライブラリは評価してないよ。" userName="evaneykelen" createdAt="2025-04-08T20:23:51" color="">}}

{{<matomeQuote body="Vegaはどう？" userName="aargh_aargh" createdAt="2025-04-08T21:38:45" color="">}}

{{<matomeQuote body="line raceめっちゃクールじゃん。<br>https://echarts.apache.org/examples/en/editor.html?c=line-ra...<br>スイッチを切り替えてレースをトリガーして。ちなみに、ノルウェーよくやった！" userName="FredPret" createdAt="2025-04-08T17:44:22" color="#45d325">}}

{{<matomeQuote body="見た目は neatだけど、誰かが言ってた Hans Rosling の例と違って、アニメーションは追加の情報がないよね。最後のフレームだけ見せる方が、もっと早く理解できるし、アクセスしやすいと思う。chartjunkの一種だね。<br>https://en.wikipedia.org/wiki/Chartjunk" userName="NicuCalcea" createdAt="2025-04-08T20:09:23" color="">}}

{{<matomeQuote body="プレゼンターが自分が詳しいトピックで質問するみたいなもんでしょ？このアニメーションも同じ。情報を隠して読者の興味を引きつけてるんだよ。誰が一位になるか予想しちゃったし。もし最初からチャートを見せられてたら気づかなかったかも。YouTubeでこれがどれだけ効果的か分かるよ。このアニメーションだけで多くのフォロワーを集めてるチャンネルがあるんだから。" userName="razemio" createdAt="2025-04-08T21:51:38" color="#38d3d3">}}


{{< /details >}}
{{< details summary="もっとコメントを表示（3）">}}
{{<matomeQuote body="完全に無関係ではないけど、昔 The D in Vegas にあった、今はLinqにある機械式の競馬ゲームも、人間の心理に似たような効果があるよね。ほとんどのスポーツイベントでのギャンブルもそう。アップダウンが多いものとか。カジノゲームを開発してた15年くらい前から考え始めたんだ。ゲームとか未来のイベントでも同じことが言える。結果が分からない時、時間っていうのは感情的なピークと谷の連続として経験されるんだ。デザインのフックとして最高だし、情報をエンコードする強力な方法だと思う。特に時間参照データがあって、他の軸とかサイズを使い果たした場合とかね。この「レース」を使うことに対する主な主張は、x軸を他のことに使って、グラフ全体を時間経過で変化させることができるってこと。" userName="noduerme" createdAt="2025-04-09T03:28:20" color="#45d325">}}

{{<matomeQuote body="こういうチャンネルは、情報をより良く表示する方法だから存在するんじゃないよ。クリックベイトのためだよ。<br>そういうチャートは、タイトルで言うと「誰が勝つか当てられない」みたいなもん。<br>“X over 50 years videos” にハマって、満足感を得るために最後まで見ちゃうけど、結果を全然覚えてないんだよね。<br>動画形式のエンゲージメントベイトだよ。リアルタイムで更新されない限り、このWebページ上のチャートは chart junk だよ。" userName="kortilla" createdAt="2025-04-09T06:32:43" color="#45d325">}}

{{<matomeQuote body="便乗するみたいで悪いけど、人間の観察者っていう穏やかな仮定をすれば、ここにはもっと多くの情報があるって言えると思う。<br>アニメーション版では、人間の観察者はリアルタイムの観察者の精神状態を占めることを許されている（強制されている）。「Xが飛び出した - 長く続くかな - おー、Yが急上昇してる」っていう経験をするんだ。<br>この生々しい経験は重要で、すべての情報が最初に提示された場合、事後的に再現することは不可能だよ。<br>(編集: 観察者にもっと印象を残すという意味で「より多くの情報」)" userName="NiloCK" createdAt="2025-04-09T01:05:45" color="#785bff">}}

{{<matomeQuote body="1. race animation は情報を追加しないけど、一連の瞬間を見てるっていう考えをより良く伝えてくれる。各瞬間には独自の歴史と感情的な影響があるんだ。線がレースするのを見ることで、各年でこのグラフを見てるような気分になれる。<br>2. Chartjunk の wiki は Adolf Loos の「装飾は犯罪である」という考えを引用してる。でも、現代のミニマリズムは終わって、装飾の喜びを再発見する過程にあると思う。これは美的選択であり、同意しないかもしれないけどね。<br>https://en.wikipedia.org/wiki/Ornament_and_Crime" userName="FredPret" createdAt="2025-04-08T23:44:36" color="#ff5c5c">}}

{{<matomeQuote body="アニメーションは追加情報がないってことね。いや、情報を削ってるんだよ。進化に合わせて、ある期間に集中できるようにね。グラフが変化していくのを見るのは、静的なグラフを見るのとは違うから、chart junkとは言えないんじゃない？" userName="bjarneh" createdAt="2025-04-09T05:17:46" color="">}}

{{<matomeQuote body="親コメントの考えだと、テーブルが常にベストな選択になるってこと？　だって、アクセシビリティとか、伝えたいデータの把握が、完全にオーディエンスに依存しないって前提じゃん。もし自分が静的なチャートが好きでも、アニメーションチャートの方が、より多くの人に印象的に伝わるかもしれないし。" userName="helloplanets" createdAt="2025-04-09T07:54:22" color="#ff33a1">}}

{{<matomeQuote body="めっちゃ同意。彼は“chart junk”って言葉を使いたくてウズウズしてたんだなー（笑）。" userName="bjarneh" createdAt="2025-04-10T06:56:07" color="">}}

{{<matomeQuote body="もっと早く要点が伝わるかもね。でも、面白みは減るかも。これは二度と見ないグラフの例だし、情報なんてどうでもいい。ただのオモチャみたいなもんだし、“おっ、このvizualisation packageはクールじゃん”って思わせるための、ちょっとした楽しい例って感じ。<br>もし仕事で使うダッシュボードがこんな感じだったら、一週間でキレるわ。でもこれは仕事用じゃないし、EChartsを覚えてもらうためのデモだから、目的は達成されてる。" userName="dijksterhuis" createdAt="2025-04-08T23:22:22" color="#38d3d3">}}

{{<matomeQuote body="Hans Roslingに敬意を表して。<br>＞https://www.youtube.com/watch?v=hVimVzgtD6w<br>”（2003）”" userName="rrr_oh_man" createdAt="2025-04-08T18:05:55" color="">}}

{{<matomeQuote body="なんか変だぞ。データは“life-expectancy-table.json”なのに、タイトルはIncomeになってる。どっちが間違いなんだ？" userName="vecinu" createdAt="2025-04-08T18:10:55" color="">}}

{{<matomeQuote body="ファイル名とは違って、ソースデータには国と年ごとの所得、寿命、人口が入ってるよ。<br>＞https://echarts.apache.org/examples/data/asset/data/life-exp..." userName="macNchz" createdAt="2025-04-08T18:20:31" color="">}}

{{<matomeQuote body="＞＞ちなみに、ノルウェーよくやった！<br>原油価格とどれくらい相関があるんだろう？" userName="gadders" createdAt="2025-04-09T11:12:23" color="">}}

{{<matomeQuote body="ウェブクライアント向けのチャートライブラリを探してるなら、charts.cssもおすすめだよ。マジで神。コンセプトが他のライブラリよりシンプルで、同じことができちゃう。サーバーサイドレンダリングとかhtmxとか、昔ながらの方法で使うのがめっちゃ簡単になる。" userName="simlevesque" createdAt="2025-04-08T18:03:45" color="#ff5733">}}

{{<matomeQuote body="同じように、JSで強化された<br>https://pancake-charts.surge.sh/<br>(NYT graphics teamが開発してcovid chartsに使われたやつ)も昔から好き。" userName="paulirish" createdAt="2025-04-08T18:18:21" color="">}}

{{<matomeQuote body="なんかSvelteっぽいなーって思ったんだよね。案の定、Rich Harris本人がNYTにいた頃に作ったやつだった。<br>きれいなチャートだけど、もうメンテされてないみたいで残念。" userName="tkcranny" createdAt="2025-04-08T23:55:20" color="">}}

{{<matomeQuote body="Chart cssは他のラインチャート描画ライブラリと変わんないよ。EChartsとは全然別物。" userName="infecto" createdAt="2025-04-08T19:14:04" color="">}}

{{<matomeQuote body="＞同じことができるって言ってるけど、<br>＞EChartsとかamChartsのデモ見た？基本同じだけど有料版みたいなもんじゃん。<br>＞https://www.amcharts.com/demos<br>chartscssに文句はないけど、子供のおもちゃと宇宙船くらい違う。仕事でApache Supersetみたいな分析アプリ作ってるけど、chart.cssじゃ無理だわ。" userName="homebrewer" createdAt="2025-04-08T19:05:40" color="#785bff">}}

{{<matomeQuote body="EChartsの方が機能が多いのは同意だけど、セマンティックなテーブルデータをチャートに変換するのはいいね！<br>ECharts使ってて満足だけど、データテーブルの各行にスパークライン入れたい時があって、EChartsインスタンス大量に作るのは大変だから、このライブラリは良さそう。" userName="anentropic" createdAt="2025-04-09T09:05:34" color="#ff5c5c">}}

{{<matomeQuote body="一番の問題は、SVGみたいにDOMでポイントを表してること。データポイントが大量にあると、このライブラリはパンクする。" userName="didip" createdAt="2025-04-09T18:04:11" color="">}}

{{<matomeQuote body="これはキープだな。<br>アナウンス: “ECharts, a JS charts package”<br>予想: 1年以内にメンテされなくなる。<br>アナウンス: “Apache ECharts, a JS charts package”<br>予想: 来年もメンテされる。" userName="miiiiiike" createdAt="2025-04-08T19:40:50" color="#ff5c5c">}}


{{< /details >}}


[記事一覧へ]({{% ref "/posts/" %}})
