+++
date = '2025-05-26T00:00:00'
months = '2025/05'
draft = false
title = 'ブルームフィルタで可逆動画圧縮が実現'
tags = ["動画圧縮", "可逆圧縮", "ブルームフィルタ", "アルゴリズム", "プログラミング"]
featureimage = 'thumbnails/orange_pink1.jpg'
+++

> ブルームフィルタで可逆動画圧縮が実現

引用元：[https://news.ycombinator.com/item?id=44100179](https://news.ycombinator.com/item?id=44100179)




{{<matomeQuote body="「記事の説明、シンプルなアイデアなのに分かりにくいと思うんだ．たぶん内容はこう：フレーム間の変更ピクセルをビットマップに記録し、１になったオフセットをBloom filterに追加．Bloom filterの反応を基に、そのピクセルの元データを保存してフレームを復元．変わったピクセルのx，yをBloom filterで圧縮する感じ．位置的な変化はフレーム間で似てること多いから、もっと圧縮できる余地あると思うよ．」" userName="antirez" createdAt="2025/05/26 20:44:12" color="#ff5733">}}




{{<matomeQuote body="「コメント欄まず見る理由がこれだよ．あ、キミkilo作った人じゃん．やるね．［edit］笑った、編集したのかよ．．．いつも編集するよね、皆」" userName="90s_dev" createdAt="2025/05/26 20:46:53" color="">}}




{{<matomeQuote body="「Redisじゃなくてkiloとかdump1090、hpingで皆が僕を認識してくれるの、いつもうれしいんだ：D サイドプロジェクト最高．コメントありがとう！」" userName="antirez" createdAt="2025/05/26 20:47:52" color="">}}




{{<matomeQuote body="「マジでRedis使ったことないし、何かも知らないんだ．2008年からソフト開発でお金稼いでるのに、それ知らないなんて信じられないよ．．．SQLとかC＋＋とかもね．知ってることより知らないことの方がずっと多いな．まあ、とにかくRedisとか書いたならおめでとう．名前は確かに聞いたことあるよ．」" userName="90s_dev" createdAt="2025/05/26 20:54:14" color="">}}




{{<matomeQuote body="「僕には”現代ソフトウェアシステムの等価性”って呼んでる理論があって、Redisとか他の技術がいかに重要じゃないかってことをよく表してるんだ．つまり、現代のコンピューティングはすごく進化してて、トップクラスの言語、カーネル、データベースならどれを選んでも、大体どんなプロジェクトでもそんなに苦労なく作れるってこと．PHP ／ Win32 ／ SQLite？大丈夫、それでうまくやれる．Ruby ／ Linux ／ Redis？うん、それでも全然問題ないね．」" userName="antirez" createdAt="2025/05/26 20:56:03" color="">}}




{{<matomeQuote body="「redisはスケーリング向けに設計されてるからさ、でかいプロジェクトじゃないならいらないよ」" userName="tehjoker" createdAt="2025/05/26 21:02:24" color="">}}




{{<matomeQuote body="「別名：必要なのはPGと、アプリをHTTPS越しに出す何かだけ．：joy：」" userName="cryptonector" createdAt="2025/05/26 22:11:59" color="">}}




{{<matomeQuote body="「で、Bloom filterってHash tableみたいなのと比べてどう役に立つの？」" userName="bilsbie" createdAt="2025/05/26 23:52:33" color="#38d3d3">}}




{{<matomeQuote body="「Redisを設計した本人にRedisが何のために設計されたか説明してるのって、可愛くない？」" userName="tie_" createdAt="2025/05/26 21:12:15" color="">}}




{{<matomeQuote body="「Redisじゃなくてdump1090ユーザーだよ！こんにちは！（dump1090で取ったデータを使った論文を出すところなんだ、面白いことにね．．．）．」" userName="cozzyd" createdAt="2025/05/26 20:59:31" color="">}}




{{<matomeQuote body="すごい！ありがとう！近いうち（時間あれば）に dump1090 の V2 をやろうと思ってたんだ。パフォーマンスをすごく改善できるかもないくつかアイデアがあるんだよね。" userName="antirez" createdAt="2025/05/26 21:02:47" color="">}}




{{<matomeQuote body="ブルームフィルタにない座標の差分は保存する必要ないよ。変更された座標の数が少なければ、ブルームフィルタのサイズも小さくなるし、これは大きな最適化だよ。" userName="returningfory2" createdAt="2025/05/27 00:42:12" color="#785bff">}}




{{<matomeQuote body="V2でJSON/JSONlinesのTCPエンドポイントを作る計画ある？今は無いよね？リアルタイムでデータを処理したいんだけど、今はポート30002の生メッセージを自分でデコードしなきゃいけないんだよ。" userName="echoangle" createdAt="2025/05/27 07:01:26" color="">}}




{{<matomeQuote body="多くの動画圧縮は動きが重要だよね。パンで同じピクセルが2ピクセル左にスライドするような動きはどう扱うの？" userName="hinkley" createdAt="2025/05/26 21:04:39" color="#ff5c5c">}}




{{<matomeQuote body="じゃあ連続する0を圧縮してるだけ？たいていの圧縮アルゴリズムみたいに…？" userName="raincole" createdAt="2025/05/27 02:24:23" color="">}}




{{<matomeQuote body="要は、フレーム間の差分を保存する場合、変化しないピクセルはただのゼロだよね。ゼロの羅列を圧縮するのは可逆圧縮にとって最も簡単なことだし、ブルームフィルタと違って偽陽性もない。ブルームフィルタは複雑なハイブリッド圧縮戦略の一部としてなら考えられるかな。そういう圧縮器はツールが多いほどいいけど、平均的にはそんなに改善しないと思うな。" userName="3cats-in-a-coat" createdAt="2025/05/26 22:01:37" color="#ff5733">}}




{{<matomeQuote body="それいいね。TODOリストに追加しとくよ。" userName="antirez" createdAt="2025/05/27 07:40:46" color="">}}




{{<matomeQuote body="俺さ，まだCFML / MySQL（っていうかLucee / MariaDBだけど）使ってるんだよね。イケてる奴らじゃないってのは置いといて，わざわざ変えるほど魅力的なもんが見つからないんだよ。" userName="simondotau" createdAt="2025/05/27 01:45:17" color="">}}




{{<matomeQuote body="Redisってさ，みんなが知らないすごい機能いっぱいあって，全部超最適化されてるんだぜ。俺はそう思わないけどね。ほとんどの人はキャッシュとしてしか見てないけど，入札システムとか色んなことできるんだ。スケーリングは商用版でできるらしい。使ってみたかったなぁ。" userName="mattbis" createdAt="2025/05/26 22:38:37" color="">}}




{{<matomeQuote body="フレームn+1からフレームn+2にはどうやって進むの？" userName="macleginn" createdAt="2025/05/26 23:30:12" color="#38d3d3">}}




{{<matomeQuote body="どっちが良いかの比較だ：解凍して行列合計？ それともキーを取って個別の値を増やす？後者のやり方は柔軟性があるけど，単純には疎行列合計みたいで似てるかも。でも柔軟性はいいし，ブルームフィルタは超空間効率が良くて誤検知率を好きなだけ低くできるんだよ。" userName="wrsh07" createdAt="2025/05/27 03:08:42" color="#ff5c5c">}}




{{<matomeQuote body="データ駆動モデル同期マシンが技術スタックを終わらせるかもね。技術がエネルギー制約を受けるようになり，保存する状態を削る必要があるんだ。<br>ほとんどのソフトはソフトを届けるためのもの。<br>単機能ハードウェアはモデル同期エンジンになるだろう。<br>もう2025年なのに，まだ1970年代みたいなソフト書いてるんだぜ。超ハイテク！<br>編集：https://arxiv.org/abs/2309.10668<br>LLMからエネルギーモデルまでね。" userName="braaaahp" createdAt="2025/05/26 21:19:42" color="">}}




{{<matomeQuote body="Redisはスケーリング向けには全然設計されてないよ。Valkeyはそうかもしれないけど，まだ使ったことないんだ。" userName="secondcoming" createdAt="2025/05/26 21:14:09" color="">}}




{{<matomeQuote body="超最適化？ 却下だね。もっとずっと良いモダンなスレッドセーフなハッシュマップを使えるはずだよ。少なくともパフォーマンスは２倍になる。でも，使いやすさは最高だね。" userName="rurban" createdAt="2025/05/27 15:35:50" color="">}}




{{<matomeQuote body="Redisはスケーリング向けに設計されてないよ。「デフォルト」版はシングルコアのアプリで，アベイラビリティに全く重点を置いてないんだ。うん，Redis Clusterはあるけど，それは別の話だし，ほとんどのRedisインストールでは使われてないよ。" userName="joaohaas" createdAt="2025/05/27 15:07:03" color="">}}




{{<matomeQuote body="Youtube動画みたいに一度圧縮・解凍された動画だと記事の前提「ほとんどのピクセルが変わらない」ってのが成り立つかもね。でも生データだとノイズで下位ビットは結構変わるから、その前提は崩れると思うな。圧縮・解凍通すとノイズ消えるから静的な動画になるのかも。" userName="meatmanek" createdAt="2025/05/26 21:03:58" color="#785bff">}}




{{<matomeQuote body="これロスレスじゃないんじゃない？ GitHubのコード見たけど、RGB値の平均が10未満しか変わらないピクセルは差分を保存してないみたいだよ。たとえば純粋な青（＃00ff00）から純粋な赤（＃ff0000）に変わっても、どっちのフレームでも青としてデコードされちゃうってことだよね。" userName="hxtk" createdAt="2025/05/27 04:25:24" color="#ff5c5c">}}




{{<matomeQuote body="HSLに変換してから距離を計算した方が良いかもね。HSLの方がグレースケールより色の類似性を正確に保てるし。" userName="arcastroe" createdAt="2025/05/27 06:20:50" color="">}}




{{<matomeQuote body="それじゃ問題の解決にならないよ。どんな色空間でも、小さな変化を捨てるのは根本的にロスレスじゃないんだから。" userName="oivey" createdAt="2025/05/27 07:30:27" color="#ff33a1">}}




{{<matomeQuote body="うん、同意するよ。でも俺のコメントは、前の人が言ってた「純粋な青と純粋な赤がグレースケール値が同じだから近い」って話に答えてたんだ。" userName="arcastroe" createdAt="2025/05/28 07:00:38" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="L＊abみたいなこと言ってるんじゃない？ HSLは人間の視覚には全然合わないよ。" userName="Sesse__" createdAt="2025/05/27 10:35:03" color="">}}




{{<matomeQuote body="写真にPNGを使わないみたいに、実写映像にロスレスコーデックは使わないでしょ。画面録画みたいなデジタルコンテンツ向けの方がもっと理にかなってるよ。ああいうのだとピクセルがあまり変わらないって前提がもっと当てはまるしね。" userName="nasso_dev" createdAt="2025/05/26 22:48:11" color="#45d325">}}




{{<matomeQuote body="いやいや、ロスレスフォーマット（DPXとかEXRシーケンス、大体ZIP圧縮とか）はポストプロダクションのワークフローで実写映像によく使われるよ！まぁ、ほとんどの消費者はそういうのに関わらないけどね。写真家がPNG使わないのは、カメラRAWとかEXRで十分だからだよ。" userName="shrinks99" createdAt="2025/05/27 03:29:32" color="#ff5733">}}




{{<matomeQuote body="動画の種類としてはアニメーションとかに合いそうかもね。画面録画と同じ理由で圧縮しやすいだろうし。" userName="einsteinx2" createdAt="2025/05/26 23:21:29" color="">}}




{{<matomeQuote body="使えるよ。例えば ffv1とかhuffyuvは可逆で動画をアーカイブするのに使われてるよ。" userName="kookamamie" createdAt="2025/05/27 03:30:03" color="">}}




{{<matomeQuote body="HEVC/H.265やVP9は可逆モードでffv1/huffyuvより圧縮率良いけど、扱いづらい。特にHEVCで可逆アーカイブするのは大変だったよ。JPEGのカラースペース問題（YUV444PとRGBの非可逆変換）とかで、ビットパーフェクト維持が超難関だった。結局TIFFでやったんだ。コードはここ。lossyなJPEGをlossless HEVCにするのは一見変だけど、intra-frame圧縮でスペース節約できるんだ。" userName="nulld3v" createdAt="2025/05/28 06:14:30" color="#ff5733">}}




{{<matomeQuote body="高いシネマカメラだと非可逆圧縮が普通だよ。ほとんどの場合、圧縮率が低いから見た目には可逆に見えるんだ。" userName="themerone" createdAt="2025/05/27 19:10:26" color="">}}




{{<matomeQuote body="普通の人はrawなんて使わないから、大した問題じゃないかもね。スマホとかカメラはどっちみちMP4とかAV1とかで保存してるし。自分で設定しないと、rawとか未処理の概念があることすら気づかない人もいるかも。それまで考えたことなかったな。" userName="MBCook" createdAt="2025/05/26 22:14:53" color="">}}




{{<matomeQuote body="だから、現状だとアニメーションにはすごく良さそうだね。" userName="sionisrecur" createdAt="2025/05/26 21:28:44" color="">}}




{{<matomeQuote body="手抜きなやり方だと、8K動画をダウンロードして720pとかにダウンサンプルするとか。あるいは、カメラ買って日常シーンのraw 8K映像を撮りまくるとかかな。" userName="jiggawatts" createdAt="2025/05/26 21:11:18" color="">}}




{{<matomeQuote body="＞ 下位ビットは少なくとも半分は changing してると思う。<br>コードは読んでないけど、readmeはビットの32.4%未満が1かどうか に焦点を当ててるね。<br>だから、各フレーム間で下位ビットの pixel がたくさん changing してても、上位ビットの changing してないのが十分にあれば、原理的には still work ってことかな？" userName="abeppu" createdAt="2025/05/27 17:22:58" color="#ff33a1">}}




{{<matomeQuote body="てか、キミのグラフ ［1］ によると、この新しい圧縮ってGZIP使うより always worse なの？［1］ https://github.com/ross39/new_bloom_filter_repo/blob/main/co..." userName="meindnoch" createdAt="2025/05/26 20:27:24" color="#ff5733">}}




{{<matomeQuote body="このグラフにはないけど、ブルームフィルタのアプローチって、少なくともgzipよりは faster なのかもって思うんだ。でも、他に perf metrics が anywhere else 見当たらないんだよね…" userName="Retr0id" createdAt="2025/05/26 20:53:15" color="#ff5c5c">}}




{{<matomeQuote body="なんで faster だと思うの？ hashingとか witness data の lookup とか、色々やんなきゃいけないじゃん。あと、fast で good compression が欲しいなら、gzipじゃなくて Zstandard 使いなって。" userName="croemer" createdAt="2025/05/26 21:42:16" color="#45d325">}}




{{<matomeQuote body="gzipとかzstandardのデコードは基本的には順番に処理するけど、ブルームフィルタのルックアップは好きなだけ並列にできるんだよね。" userName="Retr0id" createdAt="2025/05/27 01:27:58" color="#45d325">}}




{{<matomeQuote body="今回のブルームフィルタは順繰りに見ていく処理とくっついてるから基本並列じゃないんだ。保存データが（x,y,r,g,b）の組だから、単純な並列チェックじゃなくて、順番に見て対応させる必要があるんだよ。エンコード・デコードで同じ順番で処理するんだ。" userName="hxtk" createdAt="2025/05/27 04:34:33" color="#45d325">}}




{{<matomeQuote body="ブルームフィルタにn個並列で問い合わせして、それからステートマシンテーブルを使ってk個のアクション（たいていkはnより小さい）を、多くの場合これも並列に（SIMDで）実行できるよ。だって単なるバイトの並べ替えだから。" userName="thesz" createdAt="2025/05/27 05:44:34" color="#785bff">}}




{{<matomeQuote body="うーん、それは良い指摘だね。ブルームフィルタのチェックの方がルックアップ後のアクションよりCPUに負荷かかるなら、全部まとめて並列にチェックして、それからコピーを全部まとめてやればいいんだね。" userName="hxtk" createdAt="2025/05/27 05:55:30" color="">}}




{{<matomeQuote body="複数のストリームを並列にデコード/エンコードできるよ、効率へのコストは最小限でね。gzipならpigzを見てみて。動画ならx264/x265がどうやって動画フレームをスライスしてるか見てみるといいよ。" userName="alexjurkiewicz" createdAt="2025/05/27 01:53:21" color="">}}




{{<matomeQuote body="並列にしたからって速くなるとは限らないんだよ。Zstandardのデコードはめちゃくちゃ速いから、複数のコア使う必要ないし。" userName="croemer" createdAt="2025/05/27 02:26:16" color="">}}




{{<matomeQuote body="ブルームフィルタのルックアップは超並列で、CPUコアを全く使わずにGPUのフラグメントシェーダーでもできちゃうくらいだよ。他にもダメな理由はあるだろうけど、試してみたいね。" userName="Retr0id" createdAt="2025/05/27 03:30:13" color="">}}




{{<matomeQuote body="鍵となる洞察: バイナリ文字列で1の密度が低い場合、1の位置だけエンコードする方が効率的ってやつね。<br>JPEG/MPEGの多くは、長いゼロの連続を作れるように問題を再構成してるんだ。DCTブロックのスキャン方法とか、多くの動画＆画像圧縮技術で最も革新的な側面のひとつかもしれないね。" userName="bob1029" createdAt="2025/05/26 20:14:28" color="#ff5c5c">}}




{{<matomeQuote body="全く同意。OPの手法は動画圧縮には最悪だよ。動画のピクセル変化の局所性を捨ててるんだから。この手法はどんなビット列の差分にも使えるけど、既存より良くなる可能性はないね。圧縮は非ランダムな分布じゃないとできないのに、ハッシュ関数はその非ランダム性を壊しちゃうから。" userName="akoboldfrying" createdAt="2025/05/27 02:08:37" color="#785bff">}}




{{<matomeQuote body="これは違うんじゃない？DCTとか色変換って細かいとこを高周波に、大事なとこを低周波にするんだよ。そこから画質とか圧縮率は高周波を捨てるかどうかで決まるだけさ。それに、JPEGはHuffmanテーブルも使って画像を小さくしてるし、ゼロのランを減らすために特別なことはしてないと思うな。だからゼロが並んでもあんまり役に立たないんだ。" userName="cogman10" createdAt="2025/05/26 20:52:22" color="#45d325">}}




{{<matomeQuote body="それは合ってるけど、元の投稿者も正しかったよ。DCT成分は量子化されて、最後にゼロの長い列ができるように並べてるんだ。" userName="IshKebab" createdAt="2025/05/26 21:01:23" color="">}}




{{<matomeQuote body="高い周波数の成分を捨てると（てか、めっちゃ量子化すると）さ、結構な確率でゼロのランができるんだよ。成分をしまう順番（斜めにジグザグ）が、ゼロになりやすいやつらをまとめてくれるんだ。高画質だと全部ゼロのランはないかもだけど、少なくともエントロピーが低い値のランはできるね。" userName="Retr0id" createdAt="2025/05/26 21:03:10" color="#45d325">}}




{{<matomeQuote body="高い周波数を捨てるとゼロのランはできるし、JPEGだってゼロのランをランレングスで符号化してるよ（仕様書のRRRRってやつ）。でもDCTは可逆圧縮にはあんまり使えないんだ。だって、可逆な周波数領域の表現は元データより広い範囲が必要になるのに、量子化でそれを抑えることができないからさ。" userName="brigade" createdAt="2025/05/26 21:26:47" color="#45d325">}}




{{<matomeQuote body="JPEGには「ここから先は全部ゼロだから、このブロックは終わりね」っていう特別なコードまであるんだよ。フォーマット全体が、できるだけたくさんのゼロ係数ができるように工夫されてる感じだね。" userName="Sesse__" createdAt="2025/05/27 10:37:10" color="#785bff">}}




{{<matomeQuote body="このコードのここ、よく分かんないんだけどさ<br>https://github.com/ross39/new_bloom_filter_repo/blob/4798d90...<br>これだと非可逆になっちゃって、例えば＃ffffffから＃fffffaみたいな変化を捨てちゃうんじゃないの？その上でピクセルデータの平均取ってるとこも、＃ff0000から＃00ff00みたいな変化を、閾値関係なく捨ててるように見えるんだけど。俺がこのコードの役割を間違って理解してるかな？できたマスクが0のとこは、ブルームフィルタに入らないみたいだし。" userName="hxtk" createdAt="2025/05/27 04:39:05" color="#ff5c5c">}}




{{<matomeQuote body="圧縮率の計算方法は載せてるけど、一番悪い場合、平均、一番良い場合の圧縮率の例はある？<br>追記：あ、リポジトリに写真があるんだね。READMEにも載せてくれると分かりやすいな。" userName="clayhacks" createdAt="2025/05/26 19:44:25" color="#ff5733">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="作者です。リポジトリはマジでゴチャゴチャだけど、グラフとか作るコードはいくつか入れてあるよ。ちゃんとテストして、もっと分かりやすくするつもり。まだ全然整理できてない状態なんだ。" userName="rh3939" createdAt="2025/05/26 20:27:37" color="#38d3d3">}}




{{<matomeQuote body="まだちょっと散らかってるけど、アップロードしたことマジ尊敬するよ。俺もそうしてるし。何もないよりは何かあった方が絶対いいもんね。コードを綺麗にするまでアップロードしたくないって言う人もいるけど、結局そのままだったり、やる頃にはみんな忘れちゃってたりするんだよ。少なくとも messy なリポジトリなら、中身見れるし、スターつけて後でチェックすることもできるかもしんないしね。" userName="codetrotter" createdAt="2025/05/26 22:26:24" color="">}}




{{<matomeQuote body="作者です。フィードバックを受けて生のビデオテストに注力、圧縮率4.8％、速度も秒間8フレーム超えと promising な結果が出たよ。主要コーデックとの比較も載せた。でも色の可逆性に課題あり。YUV→BGR変換での丸め誤差や、変換後のBGR処理で精度落ちてるんだ。今後はYUV直接処理や bit-exact 化で真の可逆目指すね。数学的証明まではまだ遠いけど、このアイデアは続けるよ。" userName="rh3939" createdAt="2025/05/27 21:28:06" color="#38d3d3">}}




{{<matomeQuote body="H.264みたいなコーデックは，本当のロスレスモードでも動かせるんだけど，ほとんど使われないんだよね．" userName="Dwedit" createdAt="2025/05/26 20:04:34" color="">}}




{{<matomeQuote body="そうそう，NVENC使ってハードウェアアクセラレーションでも動かせたよ．ただ再生が大変だったんだよね，ffplayだとできたけど，他のはダメだった．" userName="perching_aix" createdAt="2025/05/26 20:45:12" color="">}}




{{<matomeQuote body="可愛いアイデアだけど，もし疎なバイナリ文字列なら，多分従来の方法の方がうまくいくんじゃないかな！" userName="vintermann" createdAt="2025/05/26 20:36:51" color="">}}




{{<matomeQuote body="本当だね，gzipとの比較がこれで見れるよ：https://github.com/ross39/new_bloom_filter_repo/blob/main/co..." userName="croemer" createdAt="2025/05/26 21:47:15" color="#ff5733">}}




{{<matomeQuote body="リポジトリわかりにくいけど，圧縮率はピクセルの差をどれだけ捨てられたかで計算してるっぽいね．面白いけど，現在の方法と比べてどうか見るには，YouTube動画のフレームの平均バイトサイズと比べるべきだよ．もしロッシーならロスレスじゃなく他のロッシーアルゴリズムと比べるべきだね．" userName="oivey" createdAt="2025/05/27 07:53:10" color="#ff33a1">}}




{{<matomeQuote body="圧縮にBloom filtersを使いたいなら，binary fuse filtersとかribbon filtersみたいな，スペース使用量の1/ln(2)っていう先行ファクターを避けるやつを検討した方がいいかもね．" userName="less_less" createdAt="2025/05/26 21:06:36" color="#ff5733">}}




{{<matomeQuote body="READMEが混乱するな．YouTube動画に言及してるけど，”ロスレス動画”とも言ってるし．既存のH.264動画をロスレスで再圧縮するの？それともソースから新しいのをロスレスで作るの？前者はJPEG XLが古いJPEGを再圧縮するのに似てるけどロスレスにはならないんだ．H.264は元々ロスレスにもできるけどYouTubeは提供してないね．" userName="chungy" createdAt="2025/05/26 19:03:15" color="#38d3d3">}}




{{<matomeQuote body="著者です．H.264がロスレスになりうるのは同意だけど通常はロッシー．僕のアイデアはフレーム差分をrational bloom filterで圧縮すること．以前rational k使う条件付きbloom filterを投稿した．それはURLの悪意度でkを変えるもの．これにより同じサイズで偽陽性率が下がる．最近この論文［https://arxiv.org/html/2502.02193v2］を見て，ほぼ同じアプローチだったよ．今のセットアップは雑だけどアイデアは示せてると思うし，今後もっと厳密なテストをするつもり．" userName="rh3939" createdAt="2025/05/26 19:38:36" color="#45d325">}}




{{<matomeQuote body="じゃあ，ここでrational Bloom filtersを使ってるのは単に圧縮率を上げるためってことかな，基本的なテクニックは従来のBloom filtersでも使えるってこと？rational Bloom filtersを使うことでどれくらいスペースが節約できるか知ってる？僕にはどれくらいメリットがあるかよくわからないんだ．" userName="wging" createdAt="2025/05/26 20:14:33" color="">}}




{{<matomeQuote body="このやり方だと，IフレームとPフレームはそこそこ圧縮できるかもしれないね．でも差分を除いて，空間領域だけを扱ってるように見えるけど？それとも動き推定にもbloom filtersを適用する方法があるの？" userName="pipo234" createdAt="2025/05/26 20:08:10" color="">}}




{{<matomeQuote body="記事の導入部分読むと、これはh.264とかの代替を目指してるみたい。従来は情報捨てるけど、これは完全復元できるのに圧縮できないか探求。ブルームフィルタをロスレス圧縮に使う変わったアプローチだよ。フレーム全体じゃなく差分に適用するのがポイントらしい。これは適してるね。差分圧縮は昔からあるけど、エントロピー符号化の代替と見るのが一番近いかも。" userName="magicalhippo" createdAt="2025/05/26 19:24:44" color="#ff33a1">}}




{{<matomeQuote body="youtubeサンプル使ってるってことは、たぶん元はvp9/avc/av1を一度非圧縮に戻してから、今回の方式で圧縮してるんだと思う。で、圧縮率も非圧縮データとの比較でしょ。じゃないと、readmeがもっと”やったぜ！”みたいな感じになってるはずだよ。" userName="perching_aix" createdAt="2025/05/26 19:13:12" color="">}}




{{<matomeQuote body="あー、そうだね、もし論文として書くなら、’.raw’ファイル使った方が（説得力あって）良かっただろうね。" userName="runeblaze" createdAt="2025/05/26 19:20:11" color="">}}




{{<matomeQuote body="これでまともな圧縮性能が出る気が全然しないな。圧縮ってパターン利用だけど、位置をハッシュ化すると局所性の情報が無くなっちゃう。人が腕を振るみたいに一部分だけ変わる場合でも、ランダムに散らばったピクセルが変わる場合でも、たぶん同じスペースが必要になっちゃうんだよ。これは効率悪いよね。動き推定みたいな既存技術にも触れてないし、正直どうなんだろ。" userName="akoboldfrying" createdAt="2025/05/27 01:41:04" color="#ff33a1">}}




{{<matomeQuote body="それ、”動画圧縮”じゃなくて”動画解凍”のこと言ってるんじゃない？圧縮の方が理論的にはずっと効率的で、アルゴリズムもすごく単純だから、simdとかでフィルタ計算もすごく速くできると思うけど。" userName="joaohaas" createdAt="2025/05/27 15:23:11" color="">}}




{{<matomeQuote body="圧縮の世界で”効率”って言ったら、普通は”どれだけ圧縮できるか”のことだよ。”速度”のことなら、opのアプローチがめちゃくちゃ速くなる可能性があるのは同意。でも、それはあんまり圧縮できないアルゴリズム全部に言えることなんだよね。一番速いアルゴリズムは入力をそのままにするやつで、これは無限に速いけど圧縮は全然できないでしょ。" userName="akoboldfrying" createdAt="2025/05/27 21:55:54" color="#38d3d3">}}




{{<matomeQuote body="なんでロスレスなのか動機がよく分かんないなー。コンシューマー用途だとロスレスってあんまり意味なくない？特にyoutubeとか通した入力で。元の圧縮で劣化したものをロスレスにしても意味ない気がするんだよね。古いdvdを.265で高ビットレート変換したより、元のmpeg2の方が良く見えた経験もあるし。圧縮済みのものをロスレスにしても、アーティファクトを保存してるだけじゃん。apple proresみたいなのでさえ高ビットレートだし、ロスレスにどれだけ需要があるんだろう。" userName="mxfh" createdAt="2025/05/26 20:29:11" color="#785bff">}}




{{<matomeQuote body="多分、あなたは誤解してるんじゃないかな。これは別に、ロスレスが今すぐ実用的になるとか、youtube動画をこれで再エンコするのが役に立つとか、そういう話じゃないんだよ。ただ”ブルームフィルタを圧縮に使う”っていうことそのものが目的なの。動機はブルームフィルタへの技術的な興味だけだよ。readmeにもちゃんと書いてあるじゃん。「このプロジェクトは、ブルームフィルタ—通常メンバーシップテストに使われる—をロスレス動画圧縮メカニズムとして再利用するという、型破りなアプローチを探求します。」ってね。動画ソースなんて、実際の動画であれば何でもいいんだよ。" userName="perching_aix" createdAt="2025/05/26 20:58:14" color="#38d3d3">}}




{{<matomeQuote body="なんでイチから全部作り直してるんだろ？既存のコーデック（av1とか）で圧縮して、残った差分だけをブルームフィルタで補正する形の方が良くない？av1とかは動き補償とかで差分を最小化してるから、それに乗っかって小さい残差だけ処理する方が効率的だと思うな。残差はノイズっぽいだろうから、jpeg xlとか他の汎用圧縮との比較がベンチマークになるべきだね。実績ある技術で重い処理させて、ブルームフィルタは残差追う、これが理にかなってると思う。デモとしてはいいけど、実用的なメリットはまだ見えないな。" userName="mxfh" createdAt="2025/05/26 21:53:26" color="#ff5733">}}




{{<matomeQuote body="そうだね、他のやり方もたくさんあるだろうけど、そうしたらそれは”これ”じゃなくなるじゃん。君の期待値がちょっとズレてるのかもしれないね。もう一回、この記事全部を読み直してみたらどうかな？" userName="perching_aix" createdAt="2025/05/26 22:29:14" color="">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
