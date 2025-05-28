+++
date = '2025-05-21T00:00:00'
months = '2025/05'
draft = false
title = 'わずかなメモリが大量の時間に勝る？アルゴリズムの意外な真実'
tags = ["アルゴリズム", "計算量", "技術", "コンピュータサイエンス", "研究"]
featureimage = 'thumbnails/purple6.jpg'
+++

> わずかなメモリが大量の時間に勝る？アルゴリズムの意外な真実

引用元：[https://news.ycombinator.com/item?id=44055347](https://news.ycombinator.com/item?id=44055347)




{{<matomeQuote body="ざっくり言うと、時間tで動くMultitape Turing machineは、O(sqrt(t log t))のスペース（メモリね）でシミュレートできるんだって。普通は時間tよりはかかるらしいけど。詳細はここ見てね。<br>https://arxiv.org/abs/2502.17779" userName="cperciva" createdAt="2025/05/21 20:24:10" color="#785bff">}}




{{<matomeQuote body="Quantaの記事は詩的すぎるフワフワした表現が多いのが残念だね。数学の周りにね。この記事が招いた誤解を否定するスレッドが下にあるぐらいだよ。<br>記事の”あるタスクに対する既知のアルゴリズムは時間と空間が比例すると思われてた”って部分、よく読まないと誤解しそう。でも、”既知のアルゴリズム”で”特定のタスク”って話から、どうやって一般的な直感を得るの？って感じ。" userName="woolion" createdAt="2025/05/22 09:01:33" color="#45d325">}}




{{<matomeQuote body="Quanta、前はマシだったのに今はひどくなったね。『wormhole fiasco』の一件とかさ。間違いのエディターズノート出すのに4ヶ月もかかったのはありえないよ。すぐ対応しないと信用なくすってば。こういうのが科学への不信感を招くんだよ。専門家ばっかのメディアなのに、一般の人が何を信じればいいか分からなくなるじゃんか。<br>一番古いアーカイブはここだよ。<br>https://web.archive.org/web/20230329191417/https://www.quant..." userName="godelski" createdAt="2025/05/22 21:08:50" color="">}}




{{<matomeQuote body="この記事の著者です。<br>複雑性理論家は特定のタスクに時間とほぼ比例する空間が必要って直感はあったんだよ。Ryan、Scott Aaronsonのブログ見て。<br>私の記事は、この結果の『普遍性』が驚きだって何度も明確に書いてる。引用部分も含めてね。<br>誤解広めてるって批判は反論させて。注意深く読んでないのでは？スタイル批判はいいけどね。<br>Lance Fortnowも似たこと言ってる。<br>URLたち：<br>https://scottaaronson.blog/?p=8680<br>https://blog.computationalcomplexity.org/2025/02/you-need-mu...." userName="bbrubaker" createdAt="2025/05/23 18:25:08" color="#ff33a1">}}




{{<matomeQuote body="Pっていう複雑性クラスを『reasonable amount of time（妥当な時間）』で解ける問題全部、って説明するのに、『polynomial（多項式）』って言葉を使わないのは、読者をちょっと馬鹿にしてるみたいで嫌だな。" userName="alkyon" createdAt="2025/05/22 10:11:57" color="">}}




{{<matomeQuote body="大目に見てあげなよ、説明が楽になるんだって。もし”polynomial”って言っちゃったら、読者は”え、n^100みたいな多項式でもいいの？！”って思って、”そうだよ、でも指数関数よりはマシなんだ”って説明しなきゃいけなくなるじゃんか。そういう面倒を避けたんだと思うな。" userName="simpaticoder" createdAt="2025/05/22 16:11:03" color="">}}




{{<matomeQuote body="Quantaは平均より上の読者向けなんだから、polynomialについて説明したり簡単な図（Wikipedia[0]みたいの）を入れるくらい普通にできるはずだよ。<br>数学を見せるのを恐れるべきじゃない。それこそQuantaの存在意義でしょ。まあ信用できない間違いも多いけどね[2]。他の記事の図[1]はもっと複雑なのにさ。<br>リンクたち：<br>[0] https://en.wikipedia.org/wiki/PSPACE#/media/File:Complexity_...<br>[1] https://www.quantamagazine.org/june-huh-high-school-dropout-...<br>[2] https://news.ycombinator.com/item?id=44067043" userName="godelski" createdAt="2025/05/22 21:17:06" color="#785bff">}}




{{<matomeQuote body="僕が言いたいのは、この辺りで疑問に思うような読者は、a)複雑性クラスをもう知ってるか、b)自分で調べられる人だろうってこと。だから、complexityzoo.netみたいなとこにリンクを張るのが良い妥協点だったんじゃないかな。<br>追記：Scott Aaronsonでさえ、Pに関するセクションでn^100問題に言及してるよ。" userName="simpaticoder" createdAt="2025/05/22 21:51:56" color="">}}




{{<matomeQuote body="いや、違うと思うし、そもそも論点がずれてるね。知らないことについては疑問に思うことすら難しいよ。伝える側の仕事は、読者が知らないだろう重要な情報を先回りして提供することだろ。<br>記事のPとかPSPACEの説明が不十分だって話だよ。『妥当な時間で解ける問題全部』って言われても何も分からん。なんでPTIMEじゃないの？ってなるし。<br>この記事は時間と空間の概念をつなぐ話なのに、何をつなぐのか分からなきゃ理解できないじゃんか。少し言葉を加えるだけで、全然違うのにね。" userName="godelski" createdAt="2025/05/23 02:03:31" color="#ff33a1">}}




{{<matomeQuote body="Pの説明、結構分かりやすいと思うけどな。まあ、僕は『Quantum Computing Since Democritus』を読んだことがあるから、そう思うのかもしれないけどね。" userName="nathan_compton" createdAt="2025/05/23 14:19:57" color="">}}




{{<matomeQuote body="Perlの”Camel Book”からだよ、俺のお気に入りのプログラミング本の1冊（啓発されたからじゃなくて、面白かったからなんだけど）。Perlの哲学について書いてあるんだ。「メモリが足りなくなったら買えばいい。でも時間が足りなくなったら、もうどうしようもない」ってね。" userName="xlii" createdAt="2025/05/22 06:32:46" color="">}}




{{<matomeQuote body="これって両方の側面があるよね。プログラムが必要なメモリよりコンピュータのメモリが少なかったら、メモリ買うまで動かないもん。でも実行に倍の時間かかるだけなら、少なくとも動くは動くし。" userName="immibis" createdAt="2025/05/22 09:15:33" color="">}}




{{<matomeQuote body="最近のPCはメモリがいっぱいあるから、もうそんなの関係ない気がするよね。アルゴリズム用の配列とかGarbage Collectorとかにメモリを使うのって理にかなってるんだよ。余ってるメモリなんて無駄なんだから。全てのプログラムでメモリ使い切るくらいがちょうどいい。一方でCPUは、コンテキストスイッチとか駆使して常に忙しく動くようにできるんだ。CPUはエンジンで、メモリはガソリンタンクみたいなもん。エンジンをアイドリングさせるのは良くないけど、ガソリンタンクにガソリン入れたままでも損はしないし、助けにもならない。満タンだからって目的地に早く着くわけじゃないでしょ。" userName="const_cast" createdAt="2025/05/22 15:07:46" color="#45d325">}}




{{<matomeQuote body="それはそういうメモリ大食いなプログラムを1つだけ動かす場合の話だよね。普通そんなことできないし。複数のプログラムを同時に動かすワークロードの方が一般的だし、最大限メモリを使うって戦略はそういう環境じゃ通用しないんだよ。" userName="Mawr" createdAt="2025/05/23 22:02:40" color="#ff5c5c">}}




{{<matomeQuote body="Camel bookはMoore’s Lawがガンガン進んでた頃に書かれたんだ。あの頃は時間も結構買えたけど、今はもう大して買えない。今は水平スケールだね。まあ、結局は時間稼ぎなんだけどさ。" userName="hinkley" createdAt="2025/05/22 14:16:34" color="">}}




{{<matomeQuote body="事前計算したものを保存しておくルックアップテーブルが最強！ 実は、もしプロセッサが今までやった全ての計算を中央で保存できたら、もうプロセッサっていらなくなるんじゃないかな。高速な検索はまた別の問題だけどね。" userName="whatever1" createdAt="2025/05/21 21:31:16" color="">}}




{{<matomeQuote body="若い頃ストレージシステムで働き始めた時のことを思い出すな。一度、全ての4KBブロックを事前に計算して、データ書き込み時は正しいブロックへのポインタを使うって提案したんだ。そしたら誰かが、ユニークな4KBブロックの数（2^32768）は宇宙の原子の数よりはるかに多いって指摘してきたんだよ。" userName="crmd" createdAt="2025/05/22 00:23:09" color="#ff33a1">}}




{{<matomeQuote body="そのアイデア、そんなにかけ離れてないよ。既存のデータブロックでハッシュを計算して、そのハッシュとデータブロックのマッピングを保存するんだ。そうすれば、そのデータブロックがある場所ならどこでもそのハッシュを使える。つまり、重複するデータブロックは同じハッシュを使えるってこと。それがストレージのデデュープリケーションの仕組みだよ。" userName="ww520" createdAt="2025/05/22 01:13:20" color="#ff5c5c">}}




{{<matomeQuote body="ただし、衝突があるんだよな…" userName="valenterry" createdAt="2025/05/22 01:18:45" color="#ff5c5c">}}




{{<matomeQuote body="昔、小さい画像をブルートフォースで全部試そうとしたときを思い出した。各ピクセルを256段階グレーにすると7800万枚って考えたんだ。なんで違うか直感ないけど、全部繋げると256^307200通りって気づいた。めっちゃ多いね。" userName="jodrellblank" createdAt="2025/05/22 02:22:43" color="#785bff">}}




{{<matomeQuote body="完全に素人考えだけど、ハッシュ計算を区別するのに可逆な時間要素を組み込める？ 展開するとユニークで、分解すると標準に戻るみたいな。これ可能かな？" userName="datameta" createdAt="2025/05/22 01:32:20" color="#ff5733">}}




{{<matomeQuote body="暗号化ハッシュを使えるよ。" userName="ww520" createdAt="2025/05/22 16:16:24" color="">}}




{{<matomeQuote body="それって鳩ノ巣原理をどう回避するの？<br>データを消す前に値自体を比較する必要があると思う。重複排除はブロックが本当に同じ場合だけ。違うなら残さないとダメ（ハッシュリンクが違うデータを指してるから置き換えられない）" userName="anonymars" createdAt="2025/05/22 17:02:11" color="#785bff">}}




{{<matomeQuote body="640x480のグレースケール画像が7800万枚よりはるかに多いって気づくべきだったと思うよ。例えばこれ考えてみて：（URL省略）<br>もし7800万枚しか画像がないとしたら、なんでその肖像画が特定の人物ってわかる？ ドイツの全人口一人ずつの肖像画すら収まらないじゃん？" userName="deadfoxygrandpa" createdAt="2025/05/22 06:20:29" color="#38d3d3">}}




{{<matomeQuote body="あー、それ問題ないよ。検索の参照もキャッシュすればいいんだよ。" userName="chowells" createdAt="2025/05/21 22:12:51" color="">}}




{{<matomeQuote body="ハッシュ衝突の可能性はめちゃくちゃ低いよ。" userName="ww520" createdAt="2025/05/23 01:00:15" color="">}}




{{<matomeQuote body="「いつか」気づいてるってば！ なんで3桁の数字が000から999まであって各桁10通りなのに10x3じゃないかの直感がないんだよ。ChatGPTも組み合わせの説明ばっかりで。<br>＞「ドイツの全人口の肖像画も収まらないじゃん？」<br>「640x480画像がドイツ全人口の肖像画を収められるはずだ」っていうのが直感的じゃないってことだよ。人間は7800万枚なんてチェックできないし、覚えることも無理。人間の能力じゃ足りない。" userName="jodrellblank" createdAt="2025/05/22 12:57:58" color="#785bff">}}




{{<matomeQuote body="ハッシュは定義上、可逆じゃないんだ。<br>タイムスタンプをハッシュと一緒に保存したり、元データに含めたりはできるけど、タイムスタンプはハッシュの一部にはなれないんだよ。" userName="ruined" createdAt="2025/05/22 05:47:36" color="#38d3d3">}}




{{<matomeQuote body="少ないデータならそうかもね。でもデータが増えると、ぶつかる可能性ってめっちゃ高くなるんだよ。だからさ、ストレージシステム（s3とか）みたいなので使うには、お客さんがぶつかるリスクOKって言ってくれないと無理だね。例えば、動画とか写真みたいなメディアデータとかならいいかもだけど、普通のデータじゃ無理だと思う。" userName="valenterry" createdAt="2025/05/23 01:21:47" color="#38d3d3">}}




{{<matomeQuote body="2x2とか、次に3x3とかのイメージで始めて、全部の可能性を手作業でリストアップしてみるといいよ。" userName="ThomasBHickey" createdAt="2025/05/22 14:39:42" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="君が言ってることは間違ってないよ。LLMとかFAQのキャッシュとか使うと、トークン代がめっちゃ節約できるんだよね。AIってさ、基本的には探索問題を解いてて、モデルはデータの近似にすぎないんだよ - 線形回帰とかフーリエ変換みたいな感じ。学習ってのは、要は事前計算のことなんだ。大事なのは、何十億ってパラメータがあるモデルを事前に計算してることで、めちゃくちゃ正確なランダムな答えのセットで過学習してるわけじゃないってことなんだよね、へへ。" userName="EGreg" createdAt="2025/05/22 01:27:03" color="">}}




{{<matomeQuote body="ハッシュによっては検証用のビットがあって、ハッシュ自体が壊れてないか見るだけじゃなくて、別の「同じ」ハッシュを見分けるのに使うものもあるんだ。ただ、そういうハッシュは遅くなる傾向があるけどね。" userName="shakna" createdAt="2025/05/22 05:54:16" color="">}}




{{<matomeQuote body="https://conwaylife.com/wiki/HashLife っていうのはさ、まさにこの記事みたいなことをライフゲームでやるアルゴリズムなんだよ。ライフゲームってTuring completeなんだぜ。初めてこれを見たとき、もうわけわかんなかったのを覚えてる。ティックごとにシミュレーションしないといけないくらい、複雑で変化しまくるのに、いきなり未来に飛べるっていうんだから、えーって感じじゃん？" userName="handsclean" createdAt="2025/05/22 08:14:34" color="#45d325">}}




{{<matomeQuote body="もう一つの問題は、もし（可能なブロック全部を前もって計算するっていう、あの突拍子もない提案を文字通り受け止めるなら）これで全然スペースを節約できないってことだね。だって、「ポインタ」が指すブロックと同じ大きさになっちゃうんだから。" userName="benchloftbrunch" createdAt="2025/05/22 13:46:27" color="#38d3d3">}}




{{<matomeQuote body="それは論点がずれてるよ。前に言ったじゃん、「10 x 10 x 10、つまり10^3になるのは分かってるから、その説明はいらない（正しい組み合わせについてね）、僕が知りたいのは、なんでそれが10x3にならないのかっていう直感なんだ」って。" userName="jodrellblank" createdAt="2025/05/23 00:51:32" color="">}}




{{<matomeQuote body="例があるの？それ、ただ数ビット長いハッシュみたいに聞こえるだけなんだけど。" userName="grumbelbart2" createdAt="2025/05/22 06:15:24" color="">}}




{{<matomeQuote body="もしあのページをちゃんと読んでるなら、これって空白スペースで区切られてる部分に対してやるんだよね？<br>なるほど。<br>何も邪魔が入らなければ、点滅したり繰り返したりするパターンは将来も同じ形になるんだ。HashLifeが使う技術は、繰り返すパターンを見つける方法と、場所やパターンの衝突を見つけることだよ（Lifeの’lightspeed’がこれに役立つ）。" userName="RetroTechie" createdAt="2025/05/22 14:17:42" color="#38d3d3">}}




{{<matomeQuote body="「もし全ての操作を中央で保存するなら」って話、コミュニティ規模のキャッシュってプリコンパイル済みの配布物そのものだよね。あと、プログラミング言語設計で「良い機能だけどコンパイル効率が悪くてダメ」って壁をどうにかするアイデアもあるよ。超並列cloud compilationと、みんなで使うコミュニティ規模のcompiler cacheの組み合わせ。リリース毎に1回なら、たとえ1日かかっても別にいいわけだし。" userName="mncharity" createdAt="2025/05/22 00:39:36" color="">}}




{{<matomeQuote body="「ハッシュは定義上、不可逆」って言うけどさ、できるよ。全ての入力を生成してハッシュ計算して比較すればいい。まあ無限の計算（時間＆エネルギー）がかかるかもしれないけど、それは技術的な問題ってだけだよね？" userName="RetroTechie" createdAt="2025/05/22 13:44:16" color="">}}




{{<matomeQuote body="90年代に似たこと考えたな。低解像度で全画像を作ってみるプログラム作ったんだ。学校行ってる間に動かしたら、何時間も経っても最初のピクセル行すらほとんど終わってなくて、デジタル画像の可能性空間のデカさにマジで驚いたよ！" userName="danwills" createdAt="2025/05/22 09:40:29" color="#38d3d3">}}




{{<matomeQuote body="LLMとcacheeg FAQでtoken creditsを節約できるって話だけど、LLMのプロバイダーは顧客に請求するトークン数を変えずにcache使ってるの？" userName="walterbell" createdAt="2025/05/22 09:30:58" color="">}}




{{<matomeQuote body="プロセッサのcacheをオフにすると性能がガタ落ちするのは事実だよね。どれくらいの計算が、これまで全く見たことのない新しい計算なんだろう？" userName="whatever1" createdAt="2025/05/22 04:36:21" color="#ff5733">}}




{{<matomeQuote body="cryptographic hashing collisionの確率は、マジで宇宙終焉よりも小さいくらい超低いんだ。AWSが全backupを失ってdata lossするよりも低い確率だよ。" userName="ww520" createdAt="2025/05/23 02:07:27" color="">}}




{{<matomeQuote body="全blockやらないなら、Huffman Codingがあるじゃん。データの予測がつくなら、7bitで約512bitのblobを指して、8bit目が圧縮できなかった印、みたいなencoding schemeもできそうじゃない？" userName="lesuorac" createdAt="2025/05/22 16:48:19" color="">}}




{{<matomeQuote body="より多くの空間がより多くの時間を圧倒するのは直感的だよね。時間O(n)だと使えるcellはn個だけど、空間O(n)だとO(2^n)通りのsymbol配置ができるから、時間より空間の方ができることが全然多いんだ。" userName="LPisGood" createdAt="2025/05/21 20:27:55" color="#785bff">}}




{{<matomeQuote body="memory accessがO(1)ってassumptionがあるからmemoryを軽視しがちだけど、実際は問題に合わせてscalingするとO(n^(1／3))くらいになる。datacentersで見られる現象だよ。O(1) accessのmodel名、何だっけな。UMAじゃないやつ。" userName="frollogaston" createdAt="2025/05/21 22:35:11" color="#ff5c5c">}}




{{<matomeQuote body="セルを更新する時間もかかるから、そんなに直感的じゃないと思うけどな。" userName="qbane" createdAt="2025/05/21 20:39:18" color="">}}




{{<matomeQuote body="ここで何言ってるのかよくわかんないな。「より多くの領域」って話なら、かかる時間を考えてないんじゃないの？<br>もっと正確に言うと、O(n)の領域でどんな時間でも解ける問題のクラスは、O(n)の時間でどんな領域でも解ける問題のクラスよりずっと大きいってのは直感的だと思うよ。" userName="LPisGood" createdAt="2025/05/21 20:43:00" color="#ff5c5c">}}




{{<matomeQuote body="いや、実際はO(n^(1/2))でしょ。だってデータセンターって2次元であって3次元じゃないじゃん。（「地球の表面に建てる」っていう実用的な考慮はさておき、熱放散の制約で3次元空間の2次元回路に制限されるんだよ。）" userName="cperciva" createdAt="2025/05/21 23:05:55" color="">}}




{{<matomeQuote body="もしプログラムがO(n)時間で動くなら、O(n)より多くのメモリは使えない（メモリ使用量の上限）。もしプログラムがO(n)メモリを使うなら、少なくともO(n)時間で動くはずだ（時間の下限）。" userName="Almondsetat" createdAt="2025/05/21 21:05:39" color="">}}




{{<matomeQuote body="マシンがラックの列になってるなら、それって3次元じゃないの？<br>マシンは直接接続されてる別のマシンの上に置いたり、後ろに置いたり、横に置いたりできるじゃん。<br>内部のコンポーネントだって不均一なメモリアクセスを持ってるし。<br>もし熱放散が表面積に比例して2Dって言ってるなら、よくわかんないな。<br>水冷だと容量の方が重要になると思うけど、その辺の専門家じゃないし。" userName="frollogaston" createdAt="2025/05/21 23:38:52" color="">}}




{{<matomeQuote body="これ、反論するの超簡単だよ：<br>＞もしプログラムがO(n)時間で動くなら、O(n)より多くのメモリは使えない（メモリ使用量の上限）。<br>今日のあらゆるソフトウェアで明確に反論されてるじゃん。プログラム（特にゲーム）はプログラム内の命令数より明らかに多くのメモリを使うし。<br>＞もしプログラムがO(n)メモリを使うなら、少なくともO(n)時間で動くはずだ（時間の下限）。<br>メモリボムは信じられないほど大量のメモリをめちゃくちゃ早く使うぞ。" userName="withinboredom" createdAt="2025/05/22 14:12:46" color="#ff5733">}}




{{<matomeQuote body="直感的にはそうなんだけど、P != PSPACE がまだ証明されてないから、明確に示すのは難しいよね。" userName="thatguysaguy" createdAt="2025/05/21 20:35:17" color="#ff5733">}}




{{<matomeQuote body="その例でも限界計算だとやっぱり2次元だろ。<br>だって外側（建物追加）には増やせるけど、上（階追加）にはスケールできないじゃん。" userName="manwe150" createdAt="2025/05/22 02:26:55" color="">}}




{{<matomeQuote body="＞プログラム（特にゲーム）はプログラム内の命令数より明らかに多くのメモリを使う。<br>CPUに命令出さずにどうやってメモリの一部にアクセスするの？ あと「明らかに」は議論にならないよ。<br>＞メモリボムは信じられないほど大量のメモリをめちゃくちゃ早く使う。<br>CPUに命令出さずにどうやってメモリの一部にアクセスするの？ あと「信じられないほど早く」も議論にならないよ。<br>さらに言えば、O(n)は信じられないほど早いんだぞ。" userName="Almondsetat" createdAt="2025/05/23 06:13:23" color="#ff33a1">}}




{{<matomeQuote body="でもフロアは追加できるでしょ。<br>階をまたぐネットワークがある8階建てのデータセンターだってあるんだから。" userName="frollogaston" createdAt="2025/05/22 04:03:16" color="">}}




{{<matomeQuote body="“明らかに”は議論にならないって。君の主張は文字通り自己矛盾してるし、証明すべきは君だよ。だって1ビットより多く読み込める命令もあるんだから。命令なくどうやってメモリにアクセス？てか、命令はメモリにあるけど、それはアクセスされるって意味じゃない。命令数とメモリ使用量に関係はないよ。" userName="withinboredom" createdAt="2025/05/23 17:26:33" color="">}}




{{<matomeQuote body="俺の直感だけど、セルの値って何回も計算に使われた時間の結果を表せるんだ。中間結果が足りないと、同じ計算を何度もやり直す羽目に。だから1セルが何百時間分の結果を表せて、それを保存/再利用できれば時間を節約できる。スペースを“時間圧縮”に使えるってこと。中間結果が無関係ならダメだけど、それは超レア。キャッシュヒット率0%みたいに。逆は無理。時間単位を大量のセルの代わりにはできないよ、無限SIMDはないし。" userName="hn_acc1" createdAt="2025/05/21 21:24:05" color="#45d325">}}




{{<matomeQuote body="これは計算時間とメモリの複雑さの話で、計算機科学の形式的な分野だよ。君の返信は自分の曖昧な計算の理解についてで、ここでの話題じゃないんだ。" userName="Almondsetat" createdAt="2025/05/23 19:43:38" color="">}}




{{<matomeQuote body="P != EXPTIMEの証明すらまだないんだぜ、ハハ。<br>追記：俺アホだった、勘違いしてた。" userName="porphyra" createdAt="2025/05/21 21:48:43" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="ああそうだ、じゃあ高さは実際には定数なんだな。それなら確かに平方根だ。" userName="frollogaston" createdAt="2025/05/22 15:40:53" color="">}}




{{<matomeQuote body="うん、でも君はその関係が直接つながってるって主張してるんでしょ？ それ明らかに間違いだよ。O(n)メモリでO(n)時間、どっちもnを使ってるって言ったけど、それはつまりxバイトのプログラムはx秒しか動けないってことになっちゃう。これは明らかに真実じゃないよね。" userName="withinboredom" createdAt="2025/05/25 08:39:25" color="">}}




{{<matomeQuote body="もっと根本的にはO(n^(1/2))だよ。ホログラフィック原理ってのがあって、ある空間領域に符号化できる最大の情報量は、体積じゃなくて表面積に比例するんだ。（さらに実用的な放熱の制約とは別の話だけどね）" userName="mpoteat" createdAt="2025/05/22 00:23:01" color="#ff33a1">}}




{{<matomeQuote body="一方で、実際のコンピュータってハードウェアをスケールさせると並列で動けるんだ。それはTMの定式化には含まれてないことだよね。データ局所性を考慮した、大量の計算能力でうまく動くアルゴリズムはどれかってのは面白いかも。（脳がその典型的な例だね。）" userName="LegionMammal978" createdAt="2025/05/21 23:10:58" color="#45d325">}}




{{<matomeQuote body="この記事はP == PSPACEっていう新しい証明の話だよ。みんな直感ではそうと思ってたけど、誰かが分かりにくい方法で証明したんだね。――<br>これ、計算複雑性理論の衝撃的な結果なのに、そこにたどり着くまでがすごい回りくどい記事だわ。ネタバレごめん。<br>でも、P == PSPACEの記事ならもっと早く本題に入れよ…って感じ。" userName="dragontamer" createdAt="2025/05/21 20:39:32" color="#ff5c5c">}}




{{<matomeQuote body="これは明らかに正しいね。O(n)時間のチューリングマシンは停止必須だけど、O(n)空間のは停止しなくてもいい自由があるんだ。" userName="delusional" createdAt="2025/05/21 21:11:37" color="">}}




{{<matomeQuote body="＞xバイトのプログラムはx秒しか実行できないって意味じゃない。それは違うんだよ。記法に詳しくないなら、コンピューティングに関する個人的な考えを記号に当てはめてるだけだ。" userName="Almondsetat" createdAt="2025/05/25 19:10:31" color="">}}




{{<matomeQuote body="この記事はP = PSPACEの証明じゃないよ。もしそうならP = NPも含まれるから、もっとすごいニュースになってるはずだね。" userName="LPisGood" createdAt="2025/05/21 20:45:28" color="#ff5c5c">}}




{{<matomeQuote body="それは本当にタスクによると思うし、そんなに直感的じゃないかな。メモリにアクセスするのが計算を繰り返すより遅くなる時もあるんだ、特にストレージが遅い時はね。" userName="undefuser" createdAt="2025/05/22 03:04:58" color="">}}




{{<matomeQuote body="一方ではそうだけど、もう一方では本質的に並列化が難しい問題もあるんだ（交代チューリングマシンのPTIMEは決定性チューリングマシンのPSPACEと同じだよ）。そういう場合、空間があっても大したメリットにならない。論文のt/log tからsqrt(t log t)への飛躍は大きいけど、それでも無限の並列性があってもそれほど得られないかもしれない。" userName="IsTom" createdAt="2025/05/22 08:27:18" color="#ff33a1">}}




{{<matomeQuote body="この定理は現代のLLMsによく当てはまると思うな。事前に計算された重みを持つlarge language modelは、human knowledgeを近似するすごく複雑なアルゴリズムを計算できるんだ。そうじゃなければ不可能だったか、計算に何桁も多くのcomputeが必要だっただろうね。" userName="slt2021" createdAt="2025/05/21 21:30:50" color="#ff5c5c">}}




{{<matomeQuote body="興味深いね。いつも当然だと思ってたことだよ。graphics programmingで、事前に計算してmemoryに置くlookup tablesとかをよく使ってた。昨日投稿したserverツール[0]も、databaseに事前loadしてmemoryで使うやり方。いつも「ただそういう風にやってた」だけで、専門的な裏付けがあるって知って嬉しいな。毎日無意識にやってることの中には、賢い人や経験則から生まれた効率的なやり方があるんだね。[0] https://news.ycombinator.com/item?id=44046227[1] https://github.com/LittleGreenViper/LGV_TZ_Lookup/blob/e247f..." userName="ChrisMarshallNY" createdAt="2025/05/22 09:55:54" color="#785bff">}}




{{<matomeQuote body="今ゲームの最適化やってて、lookup table と適材適所が鍵って痛感してるんだ。lookup table って静的なイメージだけど、時間でちょっと変わるだけでも少ないメモリで効果絶大なんだよ。特に GPU にテクスチャとして送って使う方法が目からウロコ。メモリ操作全般を lookup table って呼んでる気もするけど、境界線って曖昧だよね。" userName="auto" createdAt="2025/05/22 13:36:55" color="#ff5733">}}




{{<matomeQuote body="コンピュータの重要な処理って、ある程度 lookup table で解決できる繰り返し作業じゃん。ゲームのスプライト描画とか考えると分かりやすいよ。一つ一つのスプライト描画は軽いから、遅いフレームは数が多いってこと。でも、本当に全然違うスプライトを大量に用意するのは大変で、現実的じゃない。レベルには限られた tile palette やキャラクターがいるだけだし。結局、スプライト描画が遅くなるのは、同じスプライトを何度も描いてる時なんだよね。 projectile を連射したり、dust particles 出したりとか、これはマジでよくあるパターン。" userName="recursivecaveat" createdAt="2025/05/22 22:18:28" color="#ff33a1">}}




{{<matomeQuote body="あんまり詳しく言えないんだけど（前の職場が超神経質で、心配させたくなくって）、lookup table を「オンザフライ」で作ってたことあったんだ。特にイテレーターの奥深くでね。例えば、ピクセルの各ブロックにごとに計算した特性があって、それを hash 経由で LUT から引っ張るんだけど、画像を進むにつれて特性も変わるの。まず LUT を作る「トリアージ」実行して、それからピクセルに LUT を適用する「詳細」実行、って流れだった。結構ややこしかったな。" userName="ChrisMarshallNY" createdAt="2025/05/22 14:53:02" color="#785bff">}}




{{<matomeQuote body="Ryan Williams の講義（どうやって始めたか）はこれ→ https://www.youtube.com/live/0DrFB2Cp7tg<br>あと論文も→ https://people.csail.mit.edu/rrw/time-vs-space.pdf" userName="felineflock" createdAt="2025/05/22 00:19:19" color="#45d325">}}




{{<matomeQuote body="ちょっと混乱。single-tape turing machine が N を受け取って N 個の 1 を書く処理は、N ステップじゃなくて O(N^2) かかるんじゃない？テープの端まで N 回往復するから。出力に N 個の 1 が必要なら、どうやって N より小さい空間でシミュレートできるの？ turing machine はジャンプできないから、現実のコンピュータに影響ある？" userName="IvanK_net" createdAt="2025/05/21 23:05:09" color="">}}




{{<matomeQuote body="multitape turing machine は single-tape machine より断然パワフルだよ（計算可能性じゃなくて実行速度の点でね）。君の疑問に答えるなら、ここで言う「space」は作業空間のことで、入力と出力は含まないんだ。" userName="cperciva" createdAt="2025/05/21 23:08:35" color="">}}




{{<matomeQuote body="この記事の元になった論文は、決定問題、つまり出力が1ビットの問題だけを見てるね。追記：これは理にかなってるよ。N個の出力がある問題を考えるなら、それは単にN個の決定問題を「貼り合わせた」ものとほぼ同じだからね（+ちょっぴりオーバーヘッドがあるけど）。" userName="iNic" createdAt="2025/05/22 09:06:44" color="#ff5733">}}




{{<matomeQuote body="時間と空間のトレードオフって、どっちかに制約かけたらもう片方は最適じゃなくなるって話だと思うんだ。速いからメモリが少ないとか、逆も然りって意味じゃない。これって他のパラメータでも同じで、例えばソートで安定性って制約加えると、速くてメモリも少ないってのは難しい。既知の安定ソートは遅いかメモリ食うかのどっちか。非安定ソートに匹敵する安定ソートはまだ無いんだよね。そういうこと。" userName="senfiaj" createdAt="2025/05/22 14:05:29" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
