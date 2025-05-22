+++
date = '2025-05-15T00:00:00'
months = '2025/05'
draft = false
title = 'NumPyの多次元配列 使いにくすぎ問題'
tags = ["NumPy", "Python", "多次元配列", "数値計算", "データサイエンス"]
featureimage = 'thumbnails/cyan_orange2.jpg'
+++

> NumPyの多次元配列 使いにくすぎ問題

引用元：[https://news.ycombinator.com/item?id=43996431](https://news.ycombinator.com/item?id=43996431)




{{<matomeQuote body="配列が2次元超えるなら，Xarray［１］おすすめだよ．NumPyに次元名を付けられて，ブロードキャストとかアライメントが自動になるから，記事の不満はほぼ解決！NumPyより弱い分野もあるけど，NumPyに戻るの簡単だからヘルパー関数作ればOK．僕はNumPy嫌いじゃないけど，多次元データにはXarrayが便利だと思うな．3次元からXarray使うと効果あるよ．［１］https://xarray.dev" userName="WCSTombs" createdAt="2025/05/15 19:05:35" color="#38d3d3">}}




{{<matomeQuote body="Xarrayマジ最高！PandasとNumPyの良いとこ取りだよ．da.sel(...)みたいなインデクシング超分かりやすい．次元名のおかげでブロードキャストも曖昧にならないよ．地理空間データやArviz［１］使ったベイズモデリングにも便利．配列をDatasetにまとめて，共通の座標で一括選択できるのもいいね．［１］https://www.arviz.org/en/latest/" userName="renjimen" createdAt="2025/05/15 20:59:57" color="#785bff">}}




{{<matomeQuote body="賛成！僕の場合，XarrayがほとんどNumPyに取って代わったおかげで，生産性がすっごく上がったんだ．" userName="mgunyho" createdAt="2025/05/15 19:55:08" color="">}}




{{<matomeQuote body="TensorflowとかKeras，Pytorchでもこれみたいなのあるかな？最近はそんなに使ってないけど，前は今説明してくれたこと全部，デバッグが大変なやり方でやる必要があったんだよね．" userName="ddtaylor" createdAt="2025/05/15 20:20:54" color="#785bff">}}




{{<matomeQuote body="TorchにはNamed Tensorsっていうのがあるよ．似た感じで使えるはず：https://docs.pytorch.org/docs/stable/named_tensor.html ドキュメントにはプロトタイプ機能って書いてあって，もう何年もそんな感じだから，実運用向けかどうかは正直分からないな．" userName="mgunyho" createdAt="2025/05/15 20:23:47" color="#ff33a1">}}




{{<matomeQuote body="Xarrayのに比べてAPIがずっと悪いね．誰かPyTorchの上に作ってくれたらいいのに．" userName="xiphias2" createdAt="2025/05/15 21:16:47" color="">}}




{{<matomeQuote body="僕はeinopsがすごく好きだよ．NumPy，Pytorch，Keras/Tensorflowで使えるし，名前付きの転置とか繰り返し，einsum演算が簡単にできるんだ．" userName="SimplyUnknown" createdAt="2025/05/15 20:55:44" color="#ff5733">}}




{{<matomeQuote body="僕も同じ！最近einopsとjaxtypingを一緒によく使ってるけど，多次元配列のコード読むのも書くのもすごく楽になったよ．array_api_compatもいいよ．APIの網羅率は完璧じゃないけど，PyTorchとNumPy両方の配列で動くコード書けるのは結構満足度高いね．https://docs.kidger.site/jaxtyping/https://data-apis.org/array-api-compat/" userName="rsfern" createdAt="2025/05/16 00:12:41" color="#ff5c5c">}}




{{<matomeQuote body="pytorchだとNamed Tensorsが似てるかな．でもこれは仮の機能で，全部でサポートされてるわけじゃないんだ．https://docs.pytorch.org/docs/stable/named_tensor.html" userName="toth" createdAt="2025/05/15 20:25:19" color="">}}




{{<matomeQuote body="このライブラリ紹介してくれてありがとう．試してみるよ．’array[:, :, None]’みたいな書き方，あれ使うのが本当に嫌だって思ってるの自分だけかなって，しばらくちょっとおかしいのかなって感じてたんだ．" userName="michaelbarton" createdAt="2025/05/15 20:22:47" color="">}}




{{<matomeQuote body="そういう文脈で言うとさ、バイオシグナル処理だとNeuroPype[0]もNumPyをベースにしてるんだ。名前付き軸とか、各軸の要素データ（チャンネル名とか位置とか）を保存できる機能があるんだよ。[0] https：//www.neuropype.io/docs/" userName="insane_dreamer" createdAt="2025/05/15 20:47:56" color="#38d3d3">}}




{{<matomeQuote body="xarrayって便利だよ" userName="fsndz" createdAt="2025/05/15 21:23:37" color="">}}




{{<matomeQuote body="人生って時々巡り巡るよね。NumPyがだいたいNumericとNumarrayライブラリの合併から生まれたのを覚えてるよ。Numarrayの人たちがこの20年間、自分たちが正しい解決策だと証明し続けて、いつかElon Muskからお金をもらってXarray[0]に改名して、ついにNumPyを打ち負かし始めた—なんて想像したいね。[0] 上記のほとんどはフィクションだけど" userName="inasio" createdAt="2025/05/15 21:41:43" color="#ff5733">}}




{{<matomeQuote body="Juliaに乗り換えたのはNumPyの構文が難しかったからだよ。MATLABからNumPyで生産性が落ちて、数学より『パフォーマンスエンジニアリング』に時間を使うようになった。Juliaではベクトル化もループも速くて、コードの読みやすさに集中できるようになった。ブログ記事の気持ち、すごくわかるな。np.linalg.solveを盲目的に使うのも違うと思うんだ。問題特化の線形代数カーネルを作る理由はたくさんある。" userName="ChrisRackauckas" createdAt="2025/05/15 19:17:41" color="#785bff">}}




{{<matomeQuote body="＞ MATLABからNumPyで普通のプログラマーになった気分で、数学より『パフォーマンスエンジニアリング』に時間を使うようになった。<br>ベクトル化しないとMATLABもPythonと同じくらい遅いよ。Pythonの遅さは問題でJuliaは速いけど、ニッチな用途以外ではJuliaは使えないね。PythonにはJITハックがあるけど、パフォーマンスの良い代替言語はないのが残念だ。" userName="jampekka" createdAt="2025/05/15 20:05:46" color="#38d3d3">}}




{{<matomeQuote body="理由はすごくシンプルだよ。Juliaは科学計算のために設計された言語。NumPyは科学計算のために本当は設計されてない言語にフランケンシュタインみたいに接ぎ木されたライブラリなんだ。Juliaが何とかして勝って、ネットワーク効果でPythonで働くことを強いられてる人たちが解放されることを願うばかりだね。" userName="abdullahkhalids" createdAt="2025/05/15 20:41:32" color="#ff5733">}}




{{<matomeQuote body="”Juliaではベクトル化もループも速くて、コードの読みやすさに集中できるようになった”<br>これは現代Fortranにも言えることだね。" userName="Bostonian" createdAt="2025/05/15 19:40:35" color="">}}




{{<matomeQuote body="近い将来、AI翻訳のおかげで言語によるパフォーマンス差がなくなるんじゃないかな。現代AIは翻訳エンジンで、プログラミングコードの翻訳もできる。いずれPython/MATLABみたいなフロントエンドで書いて、裏でLLVMみたいな速いバックエンドで動くようになると思うんだ。MATLABからRustへのコード翻訳とかもうできるんだよ。全部うまく動かすための接着剤があれば、どの言語でも速く書けるようになるはず。" userName="AnotherGoodName" createdAt="2025/05/15 20:32:21" color="#785bff">}}




{{<matomeQuote body="それが違うなら、Pythonは何のために設計されたんだろうね？" userName="davedx" createdAt="2025/05/16 08:37:19" color="">}}




{{<matomeQuote body="＞ 残念ながらJuliaはかなりニッチな用途以外では事実上使えないね。<br>なんで？エコシステムだけが理由？" userName="Zambyte" createdAt="2025/05/15 20:33:05" color="">}}




{{<matomeQuote body="LFortranとかの最近のFortranへの取り組み，マジでハンパなくすごいんだよ！" userName="sundarurfriend" createdAt="2025/05/15 19:44:00" color="">}}




{{<matomeQuote body="RはPythonの代わりには全然ならないね．しかもPythonより遅いし．" userName="jampekka" createdAt="2025/05/15 22:24:34" color="">}}




{{<matomeQuote body="褒めるなら，GNU Fortranの開発者も入れとこうよ．オープンソースのFortranコンパイラ開発でマジで標準を作った人たちだから．" userName="pklausler" createdAt="2025/05/15 19:58:26" color="">}}




{{<matomeQuote body="MATLABってそんなに違うの？ループは遅い（バージョンによるけど），一番速いのはバックスラッシュっていう黒魔術ボックスの完璧さだよ．" userName="amluto" createdAt="2025/05/15 21:29:32" color="">}}




{{<matomeQuote body="これってTypescriptをJavaScriptにトランスパイルするのと似てるけど，全然違う言語に変換するから，プログラマはコードのパフォーマンス特性を理解できなくなる（「このPythonループ，トランスパイラは最適化できるの？」とか），それにLLMの非決定性も加わる．うわー，それはちょっと嫌だな．" userName="codethief" createdAt="2025/05/15 20:59:29" color="#ff33a1">}}




{{<matomeQuote body="主にREPL／Notebook以外での使いにくさや，他のものとの連携のしにくさかな．" userName="jampekka" createdAt="2025/05/15 21:11:28" color="">}}




{{<matomeQuote body="これ，15年間ずっと願ってることだけど，結局まだ全部Pythonでやってるんだよね．" userName="glial" createdAt="2025/05/16 03:20:44" color="">}}




{{<matomeQuote body="Pythonの一番的確な表現は「C libsの糊」って聞いたよ．" userName="lolc" createdAt="2025/05/17 09:34:07" color="">}}




{{<matomeQuote body="言語ライブラリの間や，同じライブラリでもバージョン違いで十分曖昧さがあるから，トランスパイルは常に検証が必要になる．おもちゃの例なら動くけど，ちゃんとしたコードだと，生成されたトランスパイル結果は実行するたびに違う形でエラーになるよ．" userName="lolc" createdAt="2025/05/17 10:40:59" color="#ff5c5c">}}




{{<matomeQuote body="何との連携？ C向けのFFI、PyCall、RCallなんかは結構上手くいくよ。REPL中心だけど、他に欲しいものって何？ VSCodeのデバッガー改善とか？" userName="joshjob42" createdAt="2025/05/17 10:48:30" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="たまたまこの記事見つけたんだ。<br>なんでそうなってるかうまく説明してるみたいだね。<br>https://news.ycombinator.com/item?id=44013455" userName="Zambyte" createdAt="2025/05/17 11:54:42" color="">}}




{{<matomeQuote body="matlabのJITはループに関してはnumbaと同程度だと思うな。" userName="tkuraku" createdAt="2025/05/16 02:14:06" color="">}}




{{<matomeQuote body="Python使う時って、性能より”外部ライブラリでGPU使うか”とか”O(log n)かO(n^2)か”を気にする感じ。<br>他の言語より10〜100倍遅いのは普通で、微妙な性能特性は気にしない言語なんだよ。<br>この記事みたいに”外部ライブラリを正しく呼んでるか”とか”アルゴリズムが指数時間か”以外はね。" userName="AnotherGoodName" createdAt="2025/05/15 21:50:44" color="#38d3d3">}}




{{<matomeQuote body="元々はスクリプト言語だったはず。<br>PerlとかTclの代替としてね。" userName="derriz" createdAt="2025/05/18 14:54:47" color="">}}




{{<matomeQuote body="Rは得意な分野ならPythonよりかなり性能良いよ。<br>でもDSLであって汎用言語じゃないけどね。" userName="bandrami" createdAt="2025/05/16 14:54:45" color="">}}




{{<matomeQuote body="”かなりニッチな目的”ってのが分からない。<br>Juliaは汎用言語で、bashスクリプトの代わりとか、web scraping、webプロジェクト、イラスト・アニメ生成、科学計算に使うよ。<br>言語も楽しいし、パッケージシステムが最高でライブラリを組み合わせるのが超楽なんだ。<br>1 https://lee-phillips.org/amazonJuliaBookRanks<br>2 https://www.admin-magazine.com/Archive/2025/853 https://lee-phillips.org/pluckit" userName="leephillips" createdAt="2025/05/16 16:49:36" color="#ff33a1">}}




{{<matomeQuote body="パッケージ豊富で汎用だから、何でも早く始められるよ。<br>性能気にしないなら、MVPとかFlaskサーバー、画像認識とか、何でも気軽にPythonでできて最高。<br>ライブラリが便利で、すぐ何か作り始められるんだ。<br>性能は犠牲になるけどね。" userName="xypage" createdAt="2025/05/16 23:06:11" color="">}}




{{<matomeQuote body="いや、”Pythonは何でも二番目に得意”で、銀河連邦よりライブラリ多いから、それは絶対ないね。" userName="lenkite" createdAt="2025/05/16 09:14:10" color="">}}




{{<matomeQuote body="へえ、いいね！<br>俺がFortranの世界に行くのは、Julia開発絡みの時だけなんだ。<br>その時に関連リンクとかプロジェクトを見るだけ。<br>だからGNU Fortranには詳しくないよ。<br>[1] https://fortran-lang.discourse.group/t/update-on-prima-a-jul...<br>[2] https://discourse.julialang.org/t/ann-julia-back-end-for-lfo..." userName="sundarurfriend" createdAt="2025/05/15 22:52:43" color="">}}




{{<matomeQuote body="Juliaは普及する前に、デプロイの話をもっと汎用的で分かりやすくする必要があるね。汎用性を約束して作られたのに、そのパッケージングは足かせになってるよ。" userName="waffletower" createdAt="2025/05/16 15:13:36" color="">}}




{{<matomeQuote body="最後にMatlabを真剣に使ったのは10年以上前だけど、その頃にはJITコンパイルが実装されてて、単純なループの方がベクトル化よりずっと速いことが多かったな。それに間違いも少なかった。確か、’￥’は単に連立方程式を解くショートカットで、精度を損なうことなく適切なLAPACK関数に頭の中で翻訳できたんだ。FortranやC(Pythonでさえも)より、余分なコピーを作るのには少し注意が必要だったけど、何も魔法じゃなかったよ。" userName="moregrist" createdAt="2025/05/16 01:11:35" color="">}}




{{<matomeQuote body="Matlab(とある程度Juliaも)と比べて、numpyへの俺の不満はこの2つの段落に集約されてるよ。<br>ある関数はaxes引数がある。違う名前の違うバージョンがある関数もある。規約に従うものもある。規約に従いつつaxes引数もあるものもある。そして、どんなベクトル化バージョンも提供してないものもある。<br>でもNumPyの最大の欠点はこれだよ。ある与えられた形状の配列で問題を解く関数を作ったとしよう。さて、それをより大きな配列の特定の次元にどう適用する？答えは：もっと複雑なやり方で、一から関数を書き直すんだ。プログラミングの基本原則は抽象化—単純な問題を解決して、その解決策をより複雑な問題のための構成要素として使うことだ。NumPyはそれを許してくれないんだ。<br>普段Matlabコードを書くときは、ベクトル化されたバージョンはだいたい動くし、何か変更が必要でも、かなり軽微で直感的だ。numpyだと、全ての関数のドキュメントを調べなきゃいけない気がするよ。特定の関数が期待するどんな形状にも配列を転置したりリシェイプしたりするんだ。ぜんぜん一貫性がない。" userName="brosco" createdAt="2025/05/15 18:54:48" color="#45d325">}}




{{<matomeQuote body="Matlabの配列の2次元以上のサポートはあまりにひどいから、記事で嘆かれてる状況に出くわすこと自体が珍しいくらいだよ。" userName="jampekka" createdAt="2025/05/15 20:08:15" color="">}}




{{<matomeQuote body="ああ、もし誰かMatlabで多次元データを扱わなきゃいけない不運に見舞われたら、Tensor Toolboxとか、Tensorlabとか、N-way Toolboxを勧めるよ。" userName="treefarmer" createdAt="2025/05/15 20:32:51" color="#ff33a1">}}




{{<matomeQuote body="後方互換性のために洗練されてない部分があるのは確かだけど、それ以外に何言ってるのか分からないな。Matlabは2次元以上の配列も問題なくサポートしてるし、少なくとも20年以上前からそうだよ。" userName="nycticorax" createdAt="2025/05/16 01:44:32" color="">}}




{{<matomeQuote body="2番目の問題だけど、もし俺が正しく理解してたら、jaxの`vmap`を試してみるといいかもね。" userName="breakds" createdAt="2025/05/15 19:00:42" color="#45d325">}}




{{<matomeQuote body="この記事の「特定の次元にどう適用すんの？」って文句、意味わかんねーんだけど？だってスライスしてスクイーズすればできるじゃん。何が問題なの？<br>もし「任意インデックスへの適用」みたいな変な話なら、もう言葉も出ないわ（だってそれ配列全体のことだし）。" userName="almostgotcaught" createdAt="2025/05/16 00:30:36" color="">}}




{{<matomeQuote body="NumPyの一番困る点は、ベクター化が分かりにくいことと、返り値の型が inconsistent なこと。特にpoly1dはひどくて、P*z0はpoly1dなのにz0*Pは配列になったり、P.coef[0]とP[2]が同じものを指したりする。これはpoly1dが古いAPIってのもあるけど、ライブラリ全体にこういう罠が多い。サイレントな型変換とか、デバッグにとっては悪夢だよ。" userName="vector_spaces" createdAt="2025/05/15 18:58:22" color="#785bff">}}




{{<matomeQuote body="これってdunder演算子メソッドのdispatchセマンティクスのせいなんだよね。Pythonのドキュメントはマジでこれの説明下手くそ。<br>君が言ってる返り値の型は、俺から見たら完全に予想通りだし、Pythonとしては慣習的なものだよ。これはNumPyの問題じゃないって。" userName="dumah" createdAt="2025/05/16 11:27:08" color="">}}




{{<matomeQuote body="俺が見るに、pythonデータサイエンスエコシステムの一番の問題は、何一つ標準化が全くないこと。ライブラリごとにフォーマットが違うから、データ処理じゃなくてフォーマット変換ばっかになるんだよね。<br>Juliaだと、色んなライブラリが自然に連携して動く。でもPythonだと、そういう連携のためにすごいboilerplateを書かないといけない。これが大変なんだ。" userName="SirHumphrey" createdAt="2025/05/15 19:32:50" color="#45d325">}}




{{<matomeQuote body="誰もarray-api（とかdata-apis全般）に触れてないね。これはpythonエコシステム全体で配列の扱い方を標準化しようとしてるプロジェクトなんだ。<br>https://github.com/data-apis/array-api<br>https://data-apis.org/blog/announcing_the_consortium/" userName="Evidlo" createdAt="2025/05/15 20:16:33" color="#ff5733">}}




{{<matomeQuote body="良いアイデアっぽいけど、実現は難しそうだね。発表ブログ記事がもう5年も前だけど、実際このプロジェクトってどれくらい影響あったの？" userName="bornfreddy" createdAt="2025/05/16 17:37:23" color="">}}




{{<matomeQuote body="Rは4つ（？）のクラスシステムで参戦だね。" userName="HdS84" createdAt="2025/05/15 19:44:05" color="">}}




{{<matomeQuote body="Rをかばうと、クラスシステムは確かにそれぞれ違う特性持ってるし、言語に深く入り込んでるわけでもないんだ。" userName="rienbdj" createdAt="2025/05/15 20:57:10" color="">}}




{{<matomeQuote body="著者の指摘はまあ分かるな〜。MatlabからNumpyに乗り換えたとき、ちょこちょこ不満があったんだよね。データのスライスとか、MatlabやJuliaよりNumpyの方がまだ使いにくい感じ。でも、だからってMatlabの統計とか信号処理ツールのライセンス料出すかって言ったら、それはないわ。記事で言われてる問題って、だいたい3階以上のテンソルに関するものだよね。Numpyって元々行列のために作られたっぽいから、その辺で困ることがあっても不思議じゃないかも。確かにTorchみたいな専門のライブラリの方がいい。でもTorchもまた別の難しさがあるんだよな〜。うーん、著者の”他のすべての配列言語以外ではNumpyは最悪の配列言語”って結論、なんか合ってる気がしてきた。もしかしたら俺の想像力不足だけかな。" userName="blululu" createdAt="2025/05/15 18:29:21" color="#ff5733">}}




{{<matomeQuote body="Numpyって最初からN次元配列を扱うためのものだったんだぜ。Ndのnumarrayの後継なんだからさ。" userName="jampekka" createdAt="2025/05/15 20:12:29" color="">}}




{{<matomeQuote body="ちょっと賢ぶって、記事にあったベクトル化されたマルチヘッドアテンションの実装で、einsumと最適化設定でパフォーマンス上げようとしたんだ。ベクトル化版より2倍速くなったけど、残念ながらループ版が一番速かった。なんでこうなるかコード見て考えてみて（リンク省略）。たぶんeinsumがキャッシュ効率考慮してないのが原因かもね。<br>" userName="threeducks" createdAt="2025/05/15 19:40:12" color="#ff5c5c">}}




{{<matomeQuote body="＞確かにベクトル化版より2倍速くなったけど、がっかりなことに、ループ版がさらに速かったんだよ。<br>CPUでの話？それともGPU？" userName="davedx" createdAt="2025/05/16 08:41:50" color="">}}




{{<matomeQuote body="公平に言うとさ、`import numpy as np`を`import cupy as np`に変えれば、コード変えずにGPUで動かせるけどね。全然パフォーマンス良くないけど。PyTorchの方がだいたい12倍速いんだよ。" userName="threeducks" createdAt="2025/05/17 20:34:10" color="#ff5733">}}




{{<matomeQuote body="俺がNumpyで一番問題だと思うのは、構文が長いことなんだよね。プログラミング言語として見たら、別にデメリットじゃないかも（むしろ良い点かも）しれないけど、実際使うとmatlabとかJuliaに比べて構文がめんどくさいんだよ。MatlabやJuliaのコードの方が読みやすいし分かりやすいし、数式の書き方とも合ってるし。" userName="aborsy" createdAt="2025/05/15 19:10:18" color="#38d3d3">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="本当の配列言語の構文は簡潔で表現豊かだよ。数式みたいに書けて、少ないコードで済むんだ。でもpython+numpyは違うと思う。Numpyはpythonに速度のためのベクトル化演算を追加するライブラリでしかない。これは本当の配列言語とは違うんだ。配列言語の構文の良いところは持ってないね。<br>" userName="nis251413" createdAt="2025/05/15 20:15:40" color="#785bff">}}




{{<matomeQuote body="numpyって自分のこと配列言語だって売り込んでんの？" userName="throwaway314155" createdAt="2025/05/15 22:04:54" color="">}}




{{<matomeQuote body="記事はNumPyのベクトル化コードの話だよね。MATLABと比較が多いけど、配列を使える言語と配列言語は違うんだ。全部が配列ベースの言語で書く方が自然で操作も一貫してるよ。<br>MATLABのデフォルト処理は、ユーザーのためってより高速化のためだしね。ほとんどの開発者は配列言語を使わないけど、ベクトル化コードを書く人が少ないからかも。全てをベクトル化できるわけでもないし。でも、書くなら配列言語が良いと思うな。" userName="nis251413" createdAt="2025/05/16 23:18:10" color="#45d325">}}




{{<matomeQuote body="うんうん。<br>MATLABのコード<br>A = ［1、 2； 3、 4］；<br>x = ［5； 6］；<br>y = A ＊ x；<br>と、NumPyのこのイケてないバージョンを比べてみてよ。<br>import numpy as np<br>A = np.array（［［1、 2］、 ［3、 4］］）<br>x = np.array（［［5］、 ［6］］）<br>y = A @ x" userName="aborsy" createdAt="2025/05/16 03:47:41" color="">}}




{{<matomeQuote body="NumPyの関数を使うなら、リストをnp.arrayでラップする必要はないんだよ（または、引数のどれかがすでにNumPy配列ならね。大体そうだけど）。<br>例：<br> from numpy import ＊<br><br> A = ［［1、 2］、 ［3、 4］］<br> x = ［［5］、 ［6］］<br> y = dot（A、 x）" userName="threeducks" createdAt="2025/05/16 05:07:36" color="">}}




{{<matomeQuote body="それ良いね。でも、僕の理解だとNumPy専用関数だけしか使えないんでしょ？Pythonの基本演算子（＋とか＊とか）と同じ記号を使うと、解釈が変わっちゃうんだよね。例えばA＋xだと、リストの連結になっちゃう。<br><br>コンテキストでできることとできないことを追跡しないといけないなんて、理想的じゃないと思うな。" userName="nis251413" createdAt="2025/05/16 22:10:37" color="#ff5c5c">}}




{{<matomeQuote body="その通り！これらの不満はnumpysaneでいくつか解決されてるよ：https://github.com/dkogan/numpysane/ 。numpysaneとgnuplotlibがあれば、NumPyも許容範囲になってきて、今では何にでもガシガシ使ってるよ。でも、そうだね；これら無しじゃ使えない感じ。" userName="dima55" createdAt="2025/05/15 18:21:11" color="#45d325">}}




{{<matomeQuote body="リンクありがとう！俺もこれらの問題にはブツブツ言ってたけど、NumPyの上にワークアラウンドのライブラリを探そうなんて思いもしなかったよ…" userName="alanbernstein" createdAt="2025/05/15 18:50:28" color="">}}




{{<matomeQuote body="numpysaneのほとんどはPythonでループしてるみたいだね。あれは本当のベクトル化じゃないよ。" userName="spott" createdAt="2025/05/16 00:32:32" color="">}}




{{<matomeQuote body="俺が問題だと思うのは、inplace操作を忘れるとあちこちメモリ確保しまくっちゃうのが簡単すぎるとこだね。cupyだとさらに酷くて、一連の操作で最終データを作るんじゃなく、操作ごとにデータのセットを作っちゃうんだ。回避策はあるけど、使いやすくないんだよね（cupy.fuse（）は良いけど、使うのを覚えておかないといけないし、色々形状の配列が必要なものには機能しないし）。" userName="a_t48" createdAt="2025/05/15 19:27:22" color="#45d325">}}




{{<matomeQuote body="強力型付け言語（F#とか）出身者として、これには同意するな。PyTorchとかNumPyはパワフルだけど、APIがマジで不親切。曖昧な型のオブジェクトを色々な組み合わせで受け付けて、ライブラリが実行時にブロードキャストとか魔法で勝手に処理を見つけてるんだ。<br>この手の”賢い”APIって、Pythonエコシステム全般のメリットであり呪いでもある気がするね。入門は超簡単だけど、マスターするのはめちゃくちゃ難しいんだよ。" userName="munchler" createdAt="2025/05/15 19:20:31" color="#45d325">}}




{{<matomeQuote body="Broadcastingは便利で強力な機能だよ．ちゃんと仕様があって覚えやすい．でもさ，現実の言語の型システムってBroadcastingを表現できるほど強力じゃないんだよね．" userName="kccqzy" createdAt="2025/05/15 20:34:27" color="#38d3d3">}}




{{<matomeQuote body="Broadcastingは良いんだけど，もっとハッキリしてるといいな．まあ，慣れてくると明示的すぎると逆に面倒になるのかもね．" userName="coolcase" createdAt="2025/05/15 20:25:56" color="">}}




{{<matomeQuote body="N＞3次元配列の扱いにくさ，わかるわ．高次元で考えるの難しいよね．著者の解決策は気になるけど，Eigen notationはそんな好きじゃないな．a[:,:,None]はいいんだけど，index arraysの挙動は戸惑うことあるね．あと，fftのaxisとfftshiftのaxesみたいに引数名が inconsistent なのもマジ勘弁．" userName="cycomanic" createdAt="2025/05/15 21:17:27" color="#45d325">}}




{{<matomeQuote body="＞人間が高次元で考えるのが得意じゃないって話だけど，4次元配列とかって「グリッドのグリッド」って考えられないかな？例えば2×3×4×5の配列は，2×3の行列の中に4×5の行列が入ってる，みたいな．（APLの例：https://tryapl.org/?clear&q=%7B%E2%8D%B5%2C%E2%8D%A5%E2%8A%8...）" userName="bear8642" createdAt="2025/05/15 23:12:59" color="">}}




{{<matomeQuote body="基本的には同意だよ．でもサブ行列の操作とかやろうとすると（この記事の主題でもあるけど）すぐにややこしくなるよね．正直，ネストしたループの方がかえって分かりづらいことも多いわ．まあ，自分がnumpyを圧倒的によく使うからかもしれないけどね．" userName="cycomanic" createdAt="2025/05/16 00:18:51" color="">}}




{{<matomeQuote body="＞グリッドのグリッドはグリッドと同じだってば．4×5行列を2×3に並べたって，配列が持つ4次元空間の構造は失われるんだよ．点Aと点Bの距離を例に考えてみてよ．タクシー距離は5だよ．" userName="thaumasiotes" createdAt="2025/05/16 05:10:18" color="">}}




{{<matomeQuote body="＞個人的に，np.einsumはNumPyの数少ない良いところだと思う．einsumって乗算しかできないのが結構残念なんだよね．Einstein notationにちゃんとのめり込めば（例えばhttps://tensora.drhagen.com/みたいに），もっと良くて高性能なものを作れると思うんだ．" userName="drhagen" createdAt="2025/05/15 20:34:03" color="#ff5c5c">}}




{{<matomeQuote body="俺はPythonのデータライブラリってあんまり好きじゃないんだよね．全体的にスタイルに一貫性がないっていうか．多分，だからRの方が「教室」としては良かったんだと思う．Juliaもいいし，Mathematicaも purely math にはいいよね（Mapleもいいぞ）．" userName="lvl155" createdAt="2025/05/15 19:22:29" color="">}}




{{<matomeQuote body="Numpyって結局BLAS/Lapackのインターフェースみたいなもんでしょ？大きな密行列向けで，細かい操作には向いてない．まあ，そういうもんだよ．個人的には，Jaxみたいな柔軟なライブラリで筆者が苦労したのが surprising だった．NumpyとJaxって得意分野違うし， mutual の領域に踏み込まない方が良いと思うけどね．" userName="bee_rider" createdAt="2025/05/15 19:15:09" color="#ff5c5c">}}




{{<matomeQuote body="EinsumはTullio.jlで知って，魔法みたいだったよ．Tullio.jlだと数学のnotationに近い書き方（例：＠tullio D［k, n］ ＝ ...）ができるんだ．PEP 750のテンプレート文字列を使えば，numpy.einsumももっと書きやすくなるかもね．それが実現したら neat だな．" userName="sundarurfriend" createdAt="2025/05/15 19:31:36" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
