+++
date = '2025-11-09T00:00:00'
months = '2025/11'
draft = false
title = '物理演算なしでは無理？数時間動き続ける「大理石の噴水」の設計術がすごい'
tags = ["3Dプリンター", "シミュレーション", "物理演算", "軌道設計", "エンジニアリング"]
featureimage = 'thumbnails/orange1.jpg'
+++

> 物理演算なしでは無理？数時間動き続ける「大理石の噴水」の設計術がすごい

引用元：[https://news.ycombinator.com/item?id=45866697](https://news.ycombinator.com/item?id=45866697)




{{<matomeQuote body="物理演算なしだとビー玉がコースアウトしたり詰まったりする信頼性問題があるけど、この噴水は何時間も動いててすごいね。<br>多くのコースは二つのレールで、ビー玉との接触点も二つ。物理学者じゃないけど、理想的にはこの二つの接触点にかかる力が常にほぼ等しくなるように、コースが完璧に傾斜してるべきだと思う。<br>脱線する時は、どちらかの接触点からビー玉が離れるから、垂直抗力がゼロになるはずだね。" userName="kazinator" createdAt="2025/11/09 20:38:20" color="#ff33a1">}}




{{<matomeQuote body="実はもっと変なんだ。傾斜（バンキング）は回転軸を変えて、そのせいで回転慣性が失われるんだよ。<br>ビー玉が加速しすぎたりコースから飛び出したりしないように、かなり急な傾斜にしてるんだ。<br>これで滑らかな下降と、すべてのビー玉がほぼ同じ速度で動く理由の一部だね。<br>正直、最終的なシステムでも30分に1回くらいビー玉は失くすよ。<br>調整は、ビー玉がどこで失われるか動画を撮ったり見つめたりして見つけてた。<br>手動調整じゃなくて、ジェネレーターを更新して別のを印刷する感じだね。<br>カメラでループを閉じるのも考えてるけど、それはまた新しいプロジェクトになっちゃうな。" userName="WillMorr" createdAt="2025/11/09 21:02:51" color="#45d325">}}




{{<matomeQuote body="ジェットコースターにはシミュレーションソフトウェアがあるよね。それはあなたのMarble Fountainのビー玉と似た状況だと思う。<br>https://www.nolimitscoaster.com/<br>最初はAnsysやCATIAを考えたけど、ビー玉のシミュレーションに特化したモジュールは見つからなかったよ。<br>でも、これらの会社の人が面白いユースケースとしてシミュレーションに協力してくれるかもしれないね。（これらのソフトウェアは個人プロジェクトには高すぎるけどね。）" userName="sixtyj" createdAt="2025/11/09 21:29:01" color="#ff5733">}}




{{<matomeQuote body="でもこれはあくまでSIM（シミュレーション）の話で、OPのWillMorは3Dプリンターで実際に作ってるんだよ！" userName="djmips" createdAt="2025/11/09 21:43:00" color="">}}




{{<matomeQuote body="言いたかったのは、そういうソフトウェアを使えば、ビー玉がコースから速く落ちすぎるところを観察して見つける代わりに、シミュレーションで軌道の弱い部分を見つけられるってことだよ。<br>Ansysで実際の路面電車のシミュレーションを見たことがあるからね。" userName="sixtyj" createdAt="2025/11/09 22:43:37" color="">}}




{{<matomeQuote body="物理法則は違うと思うな。ビー玉は基本的にデフがない車だから、レール上での挙動も違うでしょ。<br>そのせいで、ビー玉のシミュレーションはもっと難しいんじゃないかな。" userName="stavros" createdAt="2025/11/10 00:20:06" color="">}}




{{<matomeQuote body="スレッドの別の場所で話題になってたHilbert曲線マーブルトラックの結果の一つに、Blenderでどう作るかを示す動画があったよ。<br>Blenderには物理エンジンがあるから、かなりうまくシミュレーションできるはずだ。<br>https://www.youtube.com/watch?v=8YeXyUNCnhM<br>3Dプリント可能なモデルをBlenderにインポートして、あとはビー玉とリフトの動きを追加するだけ、って感じじゃないかな。" userName="bazzargh" createdAt="2025/11/10 13:38:33" color="#38d3d3">}}




{{<matomeQuote body="これらのプロフェッショナルな（そして高価な）ソフトウェアなら何でもシミュレーションできるよ。<br>https://ansyshelp.ansys.com/public/account/secured?returnurl...<br>でも趣味の目的なら、大学に問い合わせてみるのがいいんじゃないかな。<br>大学にはそういうソフトウェアがあるし、Marble Fountainでのビー玉の動きのシミュレーションは研究や教育目的で興味深いと思ってくれるかもしれないよ。" userName="sixtyj" createdAt="2025/11/10 22:00:02" color="#ff33a1">}}




{{<matomeQuote body="30分後もコースの温度ってそんなに変わるものなのかな？" userName="adzm" createdAt="2025/11/10 01:59:28" color="">}}




{{<matomeQuote body="まだ測ってないけど、それは良いアイデアだね！サーマルカメラ借りてテストしてみようかな。触っても全然温かくないんだけど、これは位置エネルギーを熱と音に変換するシステムだから、きっと測定可能な変化はあるはずだよ。" userName="WillMorr" createdAt="2025/11/10 17:28:18" color="#45d325">}}




{{<matomeQuote body="良い考えだね！でもそれだと故障率が変わっちゃいそうだけど、今回は故障率は一定みたいだね。" userName="4gotunameagain" createdAt="2025/11/10 07:57:30" color="">}}




{{<matomeQuote body="下に受け皿を付けて、たまに迷子になるボールを自動で列に戻すようにできるかな？もうそうしてる？" userName="rendall" createdAt="2025/11/11 12:01:25" color="#785bff">}}




{{<matomeQuote body="成果を貶すわけじゃないけど、元の記事（TFA）には作品の限界がはっきり書いてあるよ。1時間で2～3個ボールを失くして、モーターが過熱するから数時間しか動かせなかったって。IMO、それを隠さずに言ってくれた方が、何も言わないよりもっとすごいと思うな。（もっと多くのビー玉が失われると思ってたし。）" userName="rjmill" createdAt="2025/11/10 04:43:37" color="#ff33a1">}}




{{<matomeQuote body="「何時間もボールが飛び出さずに動いているらしい」って話だけど、動画の最後でボールが床に落ちてるのが見えるよ :-) " userName="hdjrudni" createdAt="2025/11/10 00:54:09" color="">}}




{{<matomeQuote body="慣性が考慮されてないね。ボールの状態は重心位置、線速度、角速度の9つのパラメータで表せるよ。レールにかかる力は同じでなくても、ボールの加速度が常にトラックに平行ならOK。ただ、運動方程式は複雑で最適化は難しいだろうね。あと、システムは安定しているべきで、小さな揺れは吸収されなきゃ。例えば、速いボールは減速させつつ、遅いボールは減速させないような調整が必要だよ。" userName="jjcob" createdAt="2025/11/10 08:43:19" color="#ff5c5c">}}




{{<matomeQuote body="もう一つのパラメータとして、トラックデザイナーならトラックの幅を操作してボールの速度を変えられるよ。幅を変えるとボールがトラック上で上下して、転がり直径と重心の両方が変わるんだ。これはカーブの前にボールの速度を微妙に調整するのに使えるね。" userName="there4" createdAt="2025/11/10 18:50:39" color="#ff5733">}}




{{<matomeQuote body="ちょっと細かいことだけど、彼の装置の隣に少なくとも1つボールが転がってるのが動画で見えるよ :-) でも、それが全体の素晴らしさを損なうわけじゃないね。" userName="fho" createdAt="2025/11/10 06:47:06" color="">}}




{{<matomeQuote body="素人考えだと、非対称なトラックの圧力がないとボールの進路は変えられないんじゃないかな。" userName="ljsprague" createdAt="2025/11/10 04:23:33" color="">}}




{{<matomeQuote body="これ、美しいね。トラックでオーディオをエンコード／デコードできたらすごいと思わない？ビー玉の軌道でいろんな周波数を生成できるとか…。" userName="MomsAVoxell" createdAt="2025/11/09 19:09:53" color="#45d325">}}




{{<matomeQuote body="MIDIをマーブルランに変換するPythonスクリプトを試したけど、ボールが跳ねすぎて音程が出なかったよ。もっと柔らかい素材とか大きなベアリングならうまくいったかもだけど、普通のバージョンを完成させることに集中したんだ。" userName="WillMorr" createdAt="2025/11/09 22:12:25" color="#45d325">}}




{{<matomeQuote body="君の前のプロジェクトを見たら、試したって聞いて驚かないよ :) <br>https://hackaday.com/2022/09/25/this-found-sound-organ-was-m...<br>マーブルが底でいろんな音響特性の表面に落ちるようにしたらどうかな？トラックの選択で表面を、リリースタイムでタイミングを決めるんだ。" userName="m_kos" createdAt="2025/11/10 06:09:58" color="#45d325">}}




{{<matomeQuote body="いろんな音を出すために、凸凹じゃなくてレールの厚みを変えてみた？" userName="smusamashah" createdAt="2025/11/09 22:35:50" color="">}}




{{<matomeQuote body="カリフォルニアにある音楽の道について、Tom Scottの動画があるよ。<br>https://www.youtube.com/watch?v=Ef93WmlEho0" userName="amenghra" createdAt="2025/11/09 21:08:39" color="">}}




{{<matomeQuote body="有機的な”木みたいな”サポート構造を作る粒子シミュレーションのアプローチは超クリエイティブだね！物理法則を定義して、”時間”次元をZ軸にマッピングしてシミュレーションを実行したの？これって有名なアプローチ？それとも君が考えたの？どっちにしても美しいよ。このアイデアで遊んでみたいな。" userName="titanomachy" createdAt="2025/11/10 00:05:18" color="#785bff">}}




{{<matomeQuote body="その通りだよ！堅牢なキープアウトゾーンができる、僕が思いついた中で一番シンプルなサポート方法だね。最初はパスを塞ぐ問題がたくさんあったけど、ちょっと調整したら驚くほど一貫するようになったよ。僕が最初じゃないと思うけど、似たシステムは見たことないな。ありがとう！こんなシンプルなシステムなのに、出てくる形は想像以上に面白いんだ。" userName="WillMorr" createdAt="2025/11/10 03:24:59" color="#45d325">}}




{{<matomeQuote body="「こんなシンプルなシステムなのに、出てくる形は想像以上に面白いんだ。」<br>へへ、自然界の進化がどうやって美を生み出すのか、これみたいなのかもね :-D" userName="froh" createdAt="2025/11/10 06:40:07" color="#785bff">}}




{{<matomeQuote body="これは3Dプリンターの良い使い方だね。スムーズなマーブルランの動きと有機的に絡み合った形は、他の方法じゃ一つ作るだけでもすごく大変だろうな。" userName="LandStander" createdAt="2025/11/09 19:35:05" color="#45d325">}}




{{<matomeQuote body="3Dプリンターの良い使い方って、僕の生活の質をすごく上げてくれる、ランダムで小さくてカスタムな家庭用品のことで、ユニークな彫刻よりもそっちなんだよね。" userName="stavros" createdAt="2025/11/10 00:21:38" color="">}}




{{<matomeQuote body="それ、何のプリンター使ってるの？満足してる？" userName="cissou" createdAt="2025/11/10 04:10:33" color="">}}




{{<matomeQuote body="俺じゃないけど、どんな品質改善を求めてるか、予算、3Dデザインスキル、プリンターでの作業に対する許容度によって、何がベストかは変わってくるよ。もし気軽に興味があるなら、Bambu Lab A1コンボが、大抵のことはそこそこ信頼性高くやってくれるけど、閉鎖的なエコシステムだよ。もっと頑丈なものが欲しいならPrusaがいいけど、ちょっと手がかかるのは覚悟してね。完全にカスタマイズされた特注品で、学習曲線が高いものならVoronがおすすめ。" userName="gaudystead" createdAt="2025/11/10 05:14:47" color="#ff33a1">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="もっとオープンソースがいいならPrusaがいいよ。でもPrusaがBambuより頑丈ってのは俺は信じないな。俺はPrusa Mini使ってたけど、Bambu X1Cに変えたら全然違うんだ。もう戻れないね。" userName="jstanley" createdAt="2025/11/10 09:19:48" color="#ff33a1">}}




{{<matomeQuote body="俺の生活から例を挙げるとね。クローゼット用に安いLEDライトを買ったんだけど、リモコンの置き場所がなくて、ピッタリ合う壁掛けホルダーを作ったんだ。あとSimplisafeのホームセキュリティシステムも買ったんだけど、ドアセンサーがドア枠に合わなくてね。だからSimplisafeとドア枠に寸法がピッタリ合う小さな部品をプリントしたんだ。これで部品がちゃんと収まって、見た目も変じゃないよ。もちろん、プリントするものの99%はPrintablesで見つけた役に立たない面白いものだけど、たまには本当に役立つものも作るんだ！" userName="CobrastanJorji" createdAt="2025/11/10 08:27:50" color="#ff33a1">}}




{{<matomeQuote body="これすごい！動画も素晴らしい出来だよ！シンプルなナレーション、シンクロした音楽、そして噴水そのものが語りかけてくるね。ブラボー。" userName="collingreen" createdAt="2025/11/09 19:09:05" color="">}}




{{<matomeQuote body="超クール！白とか透明のでLEDが付いてるのも見てみたいな。Rainbow Roadみたいにね :)" userName="bix6" createdAt="2025/11/09 21:25:00" color="">}}




{{<matomeQuote body="実はLEDを付けた透明プリントやったことあるんだ。底が明るすぎて、上に行くほど暗くなって、なんか安っぽく見えちゃってね。サポート材を中空にして光ファイバーを通そうとしたけど、あんまり効果なかったな。このプロジェクトで色々試して、全然ダメだったり最終製品にならなかったりした変なものがいっぱいあるから、失敗作の“大理石の噴水”の動画も作らなきゃね。" userName="WillMorr" createdAt="2025/11/10 03:29:25" color="#45d325">}}




{{<matomeQuote body="ちょっとした提案／お願いなんだけど、GitHubリポジトリに動作するSTLファイルを最終的に追加してくれると嬉しいな。PythonコードをLinuxで動かせない人たちも、プリントしてどんな感じか試すのがもっと簡単になるんじゃないかな。（まだ試してないけどね。）" userName="timmg" createdAt="2025/11/11 03:03:24" color="#ff5733">}}




{{<matomeQuote body="ぜひやって！あと、機械が特定の角度から数分動いてる映像も最高だよ！素晴らしいね！ :)" userName="gaudystead" createdAt="2025/11/10 05:17:21" color="">}}




{{<matomeQuote body="白や透明はフィラメントを選ぶだけの問題だけど、LEDを組み込むのは簡単じゃなさそうだな。" userName="Taek" createdAt="2025/11/10 01:02:40" color="">}}




{{<matomeQuote body="記事の作品、本当に素晴らしいし、俺みたいなビルダーの“妙に満足する”ポイントをたくさん押さえてるね。君もそうだったみたいだね、もちろんさ。<br>それと、この記事を見るタイミングが凄すぎるんだ。俺、子供たちに確率を教えるのにビー玉転がしを使ってて、そのレッスンの撮影をしてたんだよ。そしたら、この記事がHNのトップに！まるで心を読まれたみたいだったよ。" userName="cyrusradfar" createdAt="2025/11/09 19:53:27" color="#ff5733">}}




{{<matomeQuote body="シンプルなのに魅力的で美しいね。こういうの、本当に好きだなぁ。" userName="Levitz" createdAt="2025/11/09 18:50:30" color="">}}




{{<matomeQuote body="“魅力的”って言葉がピッタリだね。『何時間でも見れる』ってのが俺にとって重要だったな。人間って、ランダムに動くものにずっと魅せられるのって不思議だよね。火とか海とか、常に予測不能に変化してるからだって思ってたんだけど、このビー玉の噴水は道も決まってるし、ボールのペースも規則的だよね？なのに、なんでこんなに魅せられるんだろう。" userName="CGMthrowaway" createdAt="2025/11/09 21:15:35" color="#ff5733">}}




{{<matomeQuote body="最高の魅了を味わうなら、音をオンにするのを忘れるなよ！" userName="foltik" createdAt="2025/11/09 19:15:49" color="">}}




{{<matomeQuote body="俺もOpenSCADとPythonを使って、Hilbert Curveのビー玉トラックをたくさん設計したことあるよ！" userName="eschluntz" createdAt="2025/11/09 19:37:41" color="">}}




{{<matomeQuote body="俺はGosper curveを選んだんだけど、デカくなりすぎたから、特定のパーツを切り出してそれらを繋げたんだ。そうすると、全体的に統一感が出るし、空間を色々な方法で埋められるようになるんだよ。" userName="CasperH2O" createdAt="2025/11/10 06:06:20" color="#785bff">}}




{{<matomeQuote body="それ、めっちゃ面白いじゃん！リンクとかあったら教えてよ？" userName="WillMorr" createdAt="2025/11/09 21:03:28" color="">}}




{{<matomeQuote body="俺は質問された人じゃないけど、Thingiverse、Printables、Thangsで“Hilbert Curve”って検索してみろよ。ビー玉の噴水に関する詳しい情報が見つかるはずだぜ。" userName="gaudystead" createdAt="2025/11/10 05:20:04" color="#38d3d3">}}




{{<matomeQuote body="コードがどう動くのか、解説記事があればいいのになぁ。リポジトリにPythonコードがたくさんあるみたいだし、PythonがOpenSCADコードを生成してるように見えるよね。" userName="lloydatkinson" createdAt="2025/11/09 19:08:24" color="">}}




{{<matomeQuote body="SolidPython2を使ってモデルを生成してるんだよ。最初はちょっとコードをきれいにして、数学的な部分をもっと分かりやすくしたかったんだけど、いざ動くようになったらそれがもうとんでもない大仕事でさ。もしまたコードをいじるなら、コードベース全体をリファクタリングして、別の3Dエンジンを使うと思うな。" userName="WillMorr" createdAt="2025/11/09 20:49:05" color="#38d3d3">}}




{{<matomeQuote body="CADコードにBuild123Dを使ってみた？俺も1年くらい前からプロシージャル生成で大理石トラックを3Dプリントしてるんだけど、Build123Dはマジで便利だよ。コミュニティも活発だし、Fusion360とかSolidWorksの機能に似てるけど全部コードで書けるんだ。" userName="CasperH2O" createdAt="2025/11/10 06:10:11" color="#ff5733">}}




{{<matomeQuote body="SolidPython2やOpenSCADのアプローチのどこが気に入らなかったの？次に使う別の3Dエンジンに何を求めるんだ？" userName="fogleman" createdAt="2025/11/10 02:21:28" color="">}}




{{<matomeQuote body="主に速度が問題なんだ。大きなブーリアン結合やチェーンハルを大量にやると、OpenSCADはかなりもたつくんだよ。得意なことには素晴らしいツールだけどね。ポートする前にSDFsが最良の選択肢に見えるけど、まだ100%確信はないな。君のSDFライブラリ(github.com/fogleman/sdf)も試してみようと思ってるけど、その前に実験とベンチマークが必要だね。" userName="WillMorr" createdAt="2025/11/10 03:39:11" color="#38d3d3">}}




{{<matomeQuote body="関係あるか分からないけど、俺の理解（といくつかの実験）では「スライサー」って暗黙的にユニオン（結合）を実行するみたいだよ。つまり、たくさんの重なり合うブロブがあるSTLでも、3Dプリンターのスライスコードは`isInside`をチェックするだけで、実質的にユニオンなんだ。コードでSTLを生成してた時にそう気づいたよ。" userName="timmg" createdAt="2025/11/11 03:07:52" color="#ff33a1">}}




{{<matomeQuote body="これ、マジですごいね！俺もOpenSCADを学習してPythonで3Dモデルを作ってたんだけど、これはめちゃくちゃインスピレーションになるよ。OpenSCADの最新ナイトリーバージョン、試してみてほしいな。エクスポートが劇的に速くなってるから！秒単位になるくらいだよ。" userName="worldmerge" createdAt="2025/11/10 17:15:13" color="#ff33a1">}}




{{<matomeQuote body="これは本当に興味深くて、俺が取り組んでるプロジェクトに似てるよ。Perplexusみたいな大理石の dexterity trackをプロシージャル生成してるんだ。主なツールはPython、Build123Dライブラリ、そして3Dプリンターだよ。" userName="CasperH2O" createdAt="2025/11/09 19:48:36" color="">}}




{{<matomeQuote body="これ最高！オフィスにプリントしたいんだけど、スクリプトを実行しなくてもプリントできるようにSTLファイルとかってある？" userName="frenchie4111" createdAt="2025/11/10 21:40:20" color="">}}




{{<matomeQuote body="美しいな。これを大規模にしたらどんなクレイジーなことが可能になるんだろう。建物全体がブロックごとにプリントされて組み立てられるとか、現実世界のMinecraftみたいになるのかな。" userName="wxce" createdAt="2025/11/09 19:02:27" color="">}}




{{<matomeQuote body="プロシージャル生成のジェットコースターって、もう存在するの？" userName="temp0826" createdAt="2025/11/09 19:40:18" color="">}}




{{<matomeQuote body="Blame!っていう漫画だと、人間が滅びた後もロボットが永遠にMegastructureをプロシージャル生成し続けてるんだ。地球から木星まで届く規模らしいよ。あと、映画Fractureにもクールな大理石マシンが出てくるから見てみて。https://www.youtube.com/watch?v=Y-v6E9H6nh0 昔の映画はユニークで良い脚本だったのになあ。" userName="sergiotapia" createdAt="2025/11/09 20:29:39" color="">}}




{{<matomeQuote body="惑星そのものを丸ごと消費する以外は、材料について特に指定はないんだ。構造の一部はただの中空の球体だよ：https://preview.redd.it/7tvkbj5bp2hb1.jpg?width=1951&format=...<br>隕石とかがメガストラクチャーに衝突して、無限の資源を供給している可能性も考えられるね。" userName="sergiotapia" createdAt="2025/11/10 01:38:13" color="#785bff">}}




{{<matomeQuote body="3Dプリント住宅には真剣な取り組みがあって、実用的な試作品もできてるよ。これが驚くほどうまくいってて、数ヶ月かかっていた建設が数日でできるようになるんだ。将来性もすごくあるし、深掘りする価値がある面白い分野だよ！" userName="9dev" createdAt="2025/11/09 20:32:41" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="本当に安くなるの？SIPパネルより安価な3Dプリント住宅はまだ見たことないんだけど。" userName="IshKebab" createdAt="2025/11/09 22:09:22" color="">}}




{{<matomeQuote body="素晴らしいプロジェクトだね！色々なプロシージャル生成のアプローチを読むのが大好きなんだ！" userName="ch_fr" createdAt="2025/11/10 13:23:37" color="">}}




{{<matomeQuote body="すごいプロジェクトだし、ビデオも素晴らしいね！音楽もすごく合ってるよ。" userName="xnx" createdAt="2025/11/09 18:36:15" color="">}}




{{<matomeQuote body="色々な意味ですごいね！！情報源も載せてくれてありがとう。" userName="neomantra" createdAt="2025/11/09 18:46:02" color="">}}




{{<matomeQuote body="ダジャレ？よくわからないから説明してくれる？" userName="scubbo" createdAt="2025/11/09 19:05:52" color="">}}




{{<matomeQuote body="同じ文字を使ってるってこと、rambleからmarbleへ。" userName="dbacar" createdAt="2025/11/09 21:14:56" color="">}}




{{<matomeQuote body="これ、静かに、もしくはそれに近い状態で動かせないかな。" userName="randyrand" createdAt="2025/11/09 20:21:36" color="">}}




{{<matomeQuote body="あのmarble music作ってる人が最近、違う素材のインサートを使ってほとんどの騒音をなくすボールの漏斗を開発したんだ。でもその場合、運動量も失われるから、このデザインでどうなるかは分からないな。harmonicsを減らすためにサポートにbushingsを入れるのもいいかもね。" userName="hinkley" createdAt="2025/11/09 20:45:29" color="#45d325">}}




{{<matomeQuote body="俺の脳みそがいつもの”プロジェクトが始まらないほど物事を複雑にする”状態になってるよ…Active noise cancellingだね。トラックの振動部分に振動検出器を置いて、LRAsとかで反対の振動を積極的に駆動するんだ。安価なActive noise cancelling headphonesにある電子部品を使えないかな？高速カメラとvideo motion amplificationを使って、どこに配置するのが最適か見つけるのもいいかも？" userName="bigiain" createdAt="2025/11/09 22:00:41" color="#38d3d3">}}




{{<matomeQuote body="物体の取り付け方はすごく重要だし、harmonicsを防ぐために形状を調整することも、この人がアルゴリズムに追加できることかもね。大学時代に、友達がスピーカーをミルククレートに乗せるようにして、重低音が階下の隣人に響かないようにしたことがあったよ。土台から分離するとか、TPU製の土台にするのも効果的だろうね。" userName="hinkley" createdAt="2025/11/09 22:17:37" color="#ff33a1">}}




{{<matomeQuote body="Hades 2のBonesみたいに見えるね。きれいで、すごくクールだ。" userName="underdeserver" createdAt="2025/11/09 20:45:46" color="">}}




{{<matomeQuote body="傾斜は意図的に過剰だって書いてあるよ。" userName="stevage" createdAt="2025/11/09 20:27:25" color="">}}




{{<matomeQuote body="上から見た時の足元の形が四角くないのはなんでだろうね？" userName="ljsprague" createdAt="2025/11/10 04:26:43" color="">}}




{{<matomeQuote body="次はこれを見ようぜ：https://www.youtube.com/watch?v=IvUU8joBb1Q" userName="codr7" createdAt="2025/11/10 07:10:35" color="">}}




{{<matomeQuote body="これ、金属でプリントされたり焼結されたりしてるの？" userName="rwmj" createdAt="2025/11/09 20:19:16" color="">}}




{{<matomeQuote body="繊維が注入されたフィラメントみたいに見えるね。" userName="hinkley" createdAt="2025/11/09 20:45:55" color="#ff33a1">}}




{{<matomeQuote body="これは魔法みたいだね。シェアしてくれてありがとう！" userName="ecountry" createdAt="2025/11/09 18:55:00" color="">}}




{{<matomeQuote body="これは本当に素晴らしいね。" userName="matthewfcarlson" createdAt="2025/11/09 18:06:23" color="">}}




{{<matomeQuote body="色のせいかもしれないし、もっと明るい色の方が良いかもしれないけど、俺はこれ嫌いだな。なんかおかしいし、悪意があるように見えるよ。" userName="hinkley" createdAt="2025/11/09 20:43:07" color="">}}




{{<matomeQuote body="これ、緑のレールと茶色のサポートにしたら超カッコよくなると思うな。あと、ボールが底に着く時に見失いやすいのを解消する手助けにもなるかもね。視覚的なノイズでボールを追うのが難しくなってるよ。" userName="hinkley" createdAt="2025/11/09 22:19:52" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
