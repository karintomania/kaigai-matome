+++
date = '2025-06-18T00:00:00'
months = '2025/06'
draft = false
title = 'A*アルゴリズム入門！仕組みを分かりやすく解説'
tags = ["A*アルゴリズム", "アルゴリズム", "グラフ探索", "経路探索", "AI"]
featureimage = 'thumbnails/blue_green5.jpg'
+++

> A*アルゴリズム入門！仕組みを分かりやすく解説

引用元：[https://news.ycombinator.com/item?id=44296523](https://news.ycombinator.com/item?id=44296523)




{{<matomeQuote body="A*とかダイクストラ、BFSってさ、全部同じアルゴリズムなんだけど、優先キューの並び順が違うだけって考えると分かりやすいよ。BFSは発見順（キュー）、ダイクストラはここまでの距離＋次の距離、A*はそれに目標までの推定距離も加えるんだ。ダイクストラが推定距離0だから、A*の推定はそれより大きくちゃダメ、つまり過小評価じゃないとダメってわけ。" userName="apnorton" createdAt="2025/06/18 13:51:00" color="#ff5c5c">}}




{{<matomeQuote body="グラフ探索アルゴリズムってさ、未知のノード（白）、既知だけどまだ行ってないノード（灰）、行ったノード（黒）って３つのグループで考えられるんだけど、この”灰色のノード”をどう管理するかでアルゴリズムが決まるんだ。<br>DFSはキュー、BFSはスタック、ダイクストラは優先キューで辺の重さ、A*はヒューリスティックで並び替え。これ、他のアルゴリズムとかゴミコレクタにも応用できる考え方で面白いね。" userName="nostrademons" createdAt="2025/06/18 21:35:59" color="#ff5c5c">}}




{{<matomeQuote body="A*で使うヒューリスティック関数ってさ、ちょっと特別な条件があるんだ。それは”admissible”って言って、本当の最短距離より大きく見積もっちゃダメなんだよ。" userName="a-dub" createdAt="2025/06/18 22:16:10" color="">}}




{{<matomeQuote body="たとえ適切なヒューリスティックじゃなくても、記事に書いてある通りパスは見つかるんだ。ただ、そのパスが最短とは限らないってだけね。これ、結構普通にやられてることだよ。" userName="kragen" createdAt="2025/06/18 22:42:36" color="">}}




{{<matomeQuote body="この考え方、めっちゃ分かりやすくて良いね！使うわ、ありがとう。ちょっと細かいことだけど、DFSとBFS逆になってないかな？" userName="anitil" createdAt="2025/06/19 00:58:07" color="">}}




{{<matomeQuote body="幅優先探索はキューを使うよ。<br>深さ優先探索はスタック。<br>A*は優先キューだね。" userName="salamanderman" createdAt="2025/06/18 17:10:37" color="">}}




{{<matomeQuote body="正確には、ダイクストラが優先キューを使うんだ。<br>A*はダイクストラにプラスして、ゴールまでの推定値をコストに加えて、よりゴールに近いノードを優先的に探索するって感じかな。" userName="cornstalks" createdAt="2025/06/18 18:33:50" color="">}}




{{<matomeQuote body="コメント主が言ってるのはさ、BFSは優先キューでキーが`h(n)=0, g(n)=辺の数`、ダイクストラは`h(n)=0, g(n)=辺の重みの合計`、A*は`h(n)=heuristic(n), g(n)=辺の重みの合計`って考えられるってことだね。なるほど、面白い。" userName="JohnKemeny" createdAt="2025/06/18 20:55:00" color="#ff33a1">}}




{{<matomeQuote body="同じように、キューもさ、挿入するたびに増える数字をキーにした優先キューとして表現できるんだ。スタックならキーをマイナスにすればいい。これってdecorate-sort-undecorateパターンっていう考え方で、ヒープソートに違うキー関数を使うだけで色々なアルゴリズムになるってことなんだよ。" userName="nostrademons" createdAt="2025/06/18 21:17:17" color="#38d3d3">}}




{{<matomeQuote body="「元のコメント主の主張は、BFSはh(n)=0、g(n)=#edgesの優先度付きキューだってことだけど、彼はそんなこと言ってないし、それ違くない？」って指摘は違うと思うよ。彼はそんなこと言ってないし、それも正しくない。" userName="thaumasiotes" createdAt="2025/06/18 21:37:43" color="">}}




{{<matomeQuote body="理論計算機科学では「#xs」は「xsの数」って書くんだ。僕の文は「g(n) = number of edges」って読んで欲しかったんだよね。これは暗黙的に（BFSの話だから）今のノードnから見て、今までのエッジ数を意味してる。nは普通グラフのサイズだけど、A*では（AI:MAみたいに）現在のノードを表すことが多いんだ。全部私の責任です。（免責事項：CS教授で、毎年BFSとDijkstra、2年おきにA*を教えてます。）" userName="JohnKemeny" createdAt="2025/06/19 06:45:09" color="#ff5733">}}




{{<matomeQuote body="それは正しいと思うな。ただ、「#edges」は「開始点からノードまでのパスにあるエッジの数」って理解する必要があるけどね。それ、僕が最初に考えた3つの解釈には入ってなかったんだ。" userName="kragen" createdAt="2025/06/18 22:44:20" color="">}}




{{<matomeQuote body="ヒューリスティックが過大か過小か覚えるのに、「Dijkstraは推定値を”0”にしてるんだから、明らかに「許容可能なヒューリスティック」の基準は過小評価じゃなきゃだめだ」って考えるのは、ちょっと考えすぎかな :-) 。10歳の子が地図を見るみたいにシンプルに考えようよ。直線距離（Euclidean distance）は、地図上の距離を推定する一番分かりやすいヒューリスティックで、これは許容可能だよね。直線距離は距離を最小にする、つまり決して過大評価しない。これだけで過小評価が必要だって思い出せる十分なヒントになるよ。「競プロやってた時に、A*を「実用的で覚えやすい」視点から考えたのは、全部同じアルゴリズムで、優先度キューの優先度が違うだけってことだ」っていうのは、分かりやすいけど、A*をもっと魅力的（と個人的には思う）に捉える別の方法は、実はDijkstraを改造したグラフでやってるって考えることなんだ。各エッジの頂点間のヒューリスティックの差分をエッジの重みに調整する感じ。この方法で調整の符号を覚えるには、次の頂点が目的地にすごく近くなった状況を想像して、その場合重みを大きくする必要があるか小さくする必要があるかを考えよう。（目的地に近づいてるんだから、小さくする必要があるね。）" userName="dataflow" createdAt="2025/06/19 01:47:05" color="#ff33a1">}}




{{<matomeQuote body="どのアルゴリズムを使えばいいか：<br>エージェントが決定を下す必要がある（左か右か）という情報しかない場合：<br>- DFSまたはBFS<br>決定のコストについて少し情報がある場合：<br>- UCSまたはDijkstra’s algorithm<br>決定のコストのアイデアがあり、目標がだいたいどの方向にあるか rough ideaがある場合：<br>- A star<br>コストを知っているだけでなく、大まかな方向も知っていて、さらにuniform cost grid（均一コストグリッド）であることを知っている場合：<br>- Jump point search" userName="awesome_dude" createdAt="2025/06/18 21:15:51" color="#45d325">}}




{{<matomeQuote body="たぶん、過小評価/過大評価を覚える一番簡単な方法は、Euclidean distanceがすごく一般的な admissible heuristicだってことだけ覚えておくことだと思う。" userName="noqc" createdAt="2025/06/19 14:52:37" color="">}}




{{<matomeQuote body="LeetCodeは若いプログラマーを競プロや面接みたいな競技的なことのために鍛えてくれるよ。" userName="amy_petrik" createdAt="2025/06/19 00:57:04" color="">}}




{{<matomeQuote body="Codeforcesの方が断然良いよ。コミュニティも良いし、問題も良い。" userName="kccqzy" createdAt="2025/06/19 01:06:35" color="">}}




{{<matomeQuote body="あと、Depth First Searchはただのスタックだよ！" userName="breckognize" createdAt="2025/06/18 14:02:49" color="">}}




{{<matomeQuote body="うん、でもすぐにはそうならないんだ。一時的に深いノードを優先するとループしない深さ優先探索（Depth-first traversal）になって、グラフがTreeの場合は簡略化されて通常のスタックベースの深さ優先探索になるんだ。最初のゴールに落ち着くと、末尾再帰最適化されたDFSが得られるって感じ。" userName="dietr1ch" createdAt="2025/06/18 16:31:38" color="">}}




{{<matomeQuote body="Red Blob Gamesはゲーム開発に興味がある人には最高のブログだよ。解説が分かりやすいし、ほとんどの記事に疑似コードか実装例があって、大きな記事には直感的な理解を助ける素晴らしいアニメーションがたくさんあるんだ。" userName="ecshafer" createdAt="2025/06/18 12:42:53" color="">}}




{{<matomeQuote body="Advent of Codeの課題で六角形グリッドのパズルがあったのを覚えてるんだけど、Red Blob Gamesの六角形グリッドガイドがすごく良くて、一時的にサイトが落ちたことがあったな。後でCivilizationクローンを作った時にも使ったし、本当に素晴らしいリソースだよ。https://www.redblobgames.com/grids/hexagons/" userName="Barrin92" createdAt="2025/06/18 13:36:02" color="">}}




{{<matomeQuote body="10年経った今でも覚えてる、あのブログ記事のグラフィックが平面から尖った形に変わるだけでなく、コードもアニメーションするのを見た時の、あの小さな喜び。インタラクティブなグラフィックは、子供の頃に科学博物館にいた時のような楽しさを全部思い出させてくれるんだ。" userName="lelandfe" createdAt="2025/06/18 17:24:05" color="">}}




{{<matomeQuote body="僕も同じことを言いに来たよ。Red Blob Gamesはgamedevを始めたい人にとって、まさに宝の山だよ。" userName="S0y" createdAt="2025/06/18 16:39:15" color="">}}




{{<matomeQuote body="A*には深い愛情があるんだ。初めて完全に理解できた複雑なアルゴリズムだからね。大学でデータ構造とアルゴリズムの最初の授業（2000年代初頭）で、研究してコードを書いて論文を書くアルゴリズムを選ぶ課題があって、A*を選んだんだ。<br>この記事の作者がやったみたいに、何時間もかけて手書きで同じようなグリッドを描いて、手作業で計算したよ[0]。20年以上経った今でも、どこかにこれらのノートを持ってるんだ。自分がそれにかけた労力をすごく誇りに思ってたから。<br>とにかく、この記事と、昔を思い出させてくれてありがとう。[0] https://imgur.com/a/zRYaodL (Imgurリンクでごめんね)" userName="leftnode" createdAt="2025/06/18 16:47:52" color="#785bff">}}




{{<matomeQuote body="A*が昔「AI」って呼ばれてたの面白いね。今の「AI」ってGenAIとかDLのことで、昔の「AI」より狭い意味になってるじゃん？DLはMLの一部で、MLは昔のAIの一部、その中にGenAIがあるって関係？じゃあ、AI全体の分野って今なんて呼べばいいんだろ？って考えてるとこ。" userName="upghost" createdAt="2025/06/18 12:54:56" color="#ff33a1">}}




{{<matomeQuote body="↑のコメントだけど、ゲームのAIって昔からいろいろあったよ。NPCがプレイヤー見て攻撃したり逃げたりするコード全部「ゲームのAI」って呼ばれてたんだ。簡単なルールだけでもね。「AI」って他の分野よりゲームでは意味が軽かったけど、全体的に「AI」って言葉が使われるようになって変わってきたね。" userName="dspillett" createdAt="2025/06/18 13:28:25" color="#ff5733">}}




{{<matomeQuote body="ゲームAIだけじゃなくて、大学の「Artificial Intelligence」の授業でもA*とかformal logic、planning、knowledge representationとか教えてたんだよ。Russell-Norvigの有名な教科書とかね。Deep learningが流行ってからは、ああいう昔のAIはGOFAI、つまり”Good Old-Fashioned AI”ってちょっと皮肉っぽく呼ばれてるね。" userName="bonoboTP" createdAt="2025/06/18 14:46:52" color="#ff33a1">}}




{{<matomeQuote body="僕はRussellとNorvigの最初の教科書でAIの授業を受けた世代だよ。今の「AI」の95%くらいを占めるNeural networksは、当時は1章だけで、そんなに詳しくなかったんだ。僕も年取ったな。" userName="throwawayoldie" createdAt="2025/06/19 02:44:24" color="#785bff">}}




{{<matomeQuote body="RussellとNorvigのあの最高の教科書、最新版は「Artificial Intelligence：An Outdated Approach」ってタイトルにしないとかな？あの本めちゃくちゃ好きだから、LLMに「AI」って名前つけるの聞くと、なんかちょっとゾッとするんだよね。" userName="upghost" createdAt="2025/06/19 12:46:15" color="">}}




{{<matomeQuote body="もちろん、ゲームにもっとすごいAIもあるよ。ChessのDeep Blueとか、GoでLee Sedolに勝ったDeepMindとか覚えてる？ああいうClassic gamesは、今のVideo gamesよりAIの研究者たちに注目されてるんだ。" userName="kccqzy" createdAt="2025/06/18 14:35:02" color="">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="OpenAIがDota 2でAIを試したけど、人間に勝つためにはGameplayをすごく制限しないといけなかったんだ。大変だよね。" userName="yeasku" createdAt="2025/06/18 14:43:45" color="">}}




{{<matomeQuote body="「AI」のDefinitionって、ずーっと「どうやって動くかよく分かんないけど、詳しい人は少ない」っていう、Definitionが動くTargetだったんだ。AI Effectみたいな？だから、いつか今使ってるLLMだって、AIって呼ばれなくなる日が来ると思うよ。" userName="diggan" createdAt="2025/06/18 13:03:47" color="#45d325">}}




{{<matomeQuote body="これ見てみてよ。AI effectについてのWikipedia記事。LLMのことでもっと更新が必要かもね。誰かやる？<br>https://en.m.wikipedia.org/wiki/AI_effect" userName="Al-Khwarizmi" createdAt="2025/06/18 14:26:07" color="#ff5733">}}




{{<matomeQuote body="「Artificial intelligence」って言葉は、Technical termじゃなくて、いつもMarketing termだったんだ。John McCarthyがDARPAのGrantをもらうために、審査員にウケるようにカッコいいPhraseを選んだのが始まりらしいよ。" userName="throwawayoldie" createdAt="2025/06/18 15:02:50" color="#ff33a1">}}




{{<matomeQuote body="俺が生徒に説明する時は、「Traditional AI」、「Machine Learning」、「Data Science」をベン図で示すやり方なんだ（まあ、最近はGen AIが別の円を作り始めてるけどね）。<br>A*は「Traditional AI」の領域に分類されるよ。これは状態探索、論理表現、統計／確率（今はデータサイエンスって呼ばれてる）の混合なんだ。<br>一般の人が「AI」って考えてる場所は、それら全ての円が集まる所で、ロボットからif-else文まで何でも含まれてるんだ。" userName="tsumnia" createdAt="2025/06/19 01:47:50" color="#ff5733">}}




{{<matomeQuote body="＞これが昔「AI」と呼ばれてたのは興味深いね。<br>大学のAI研究室でA*を習ったのを覚えてるよ。<br>今はこういうのって些細に聞こえるし、当たり前だと思って使ってるよね。<br>老いを感じるね〜。" userName="pantulis" createdAt="2025/06/18 20:58:35" color="">}}




{{<matomeQuote body="大学院で「Game AI」の授業を取ったことがあるんだ。<br>その授業では、色々なパスファインディングのアプローチとか意思決定の方法を、MLやAIとは別の、役に立つ分野として学んだよ。" userName="ecshafer" createdAt="2025/06/18 13:28:09" color="">}}




{{<matomeQuote body="初期のAIの多くは、単純に昔からある古典的なデータ構造やアルゴリズムを応用したものだったんだ。<br>まあ、パーセプトロンは何十年も前からあるけどね。" userName="a-dub" createdAt="2025/06/18 14:34:30" color="">}}




{{<matomeQuote body="誰かこの情報をGarminのバカどもに送ってくれ！<br>あいつらのナビは、山とか水の上を真っ直ぐに進めって言って、到達できない目的地に案内するんだぜ。<br>まるで「私には分かりません」って言わないAIみたいだ。" userName="kazinator" createdAt="2025/06/18 20:00:35" color="#785bff">}}




{{<matomeQuote body="グリッドベースのパズルゲーム開発者として（https://thinky.gg — Pathologyは最短ステップでA地点からB地点に行くゲームの一つだよ）、A*には最適化だけでなく、その上に様々なヒューリスティックを構築することで他の種類のパスファインディングにももっと汎用的に使える点に魅力を感じてるんだ。<br>デベロッパーの中には、双方向探索、事前計算されたパターンデータベース、デッドロック検出みたいな技術を使うソルバーを作った人もいるよ。" userName="k2xl" createdAt="2025/06/18 14:07:48" color="#785bff">}}




{{<matomeQuote body="双方向探索、俺は「double-ended」って習ったんだけど、これマジで役に立つよ（30%速くなるって読んだことがある）。<br>都市や国の道路探索とかね。<br>実際の道路みたいに、複数の層（動脈路線の重要度が違う）があって、高速で（重みが軽い）移動できるんだ。<br>前の地図の仕事で、俺たちのバックエンドがこれを使ってマジで助かったよ。" userName="ncr100" createdAt="2025/06/18 17:54:05" color="#ff5733">}}




{{<matomeQuote body="これは「パスファインディング」のカテゴリでブックマークしてるよ。<br>一緒にブックマークしてるのはこれらかな。<br>https://juhrjuhr.itch.io/deep-space-exploitation/devlog/9454<br>https://www.redblobgames.com/grids/hexagons/" userName="90s_dev" createdAt="2025/06/19 02:34:46" color="#ff5733">}}




{{<matomeQuote body="関連リンクをいくつか。<br>https://lukeyoo.fyi/recap/2025/5/a-star<br>https://github.com/micttyoid/quantized-pathfinding" userName="lukeyoo" createdAt="2025/06/18 21:09:52" color="#ff5c5c">}}




{{<matomeQuote body="個人的にA*の最高の入門はルーマニアを旅することだと思うな :)<br>AI a Modern Approachっていう本もいいよ。" userName="kriro" createdAt="2025/06/18 20:36:23" color="#785bff">}}




{{<matomeQuote body="このチュートリアル、”ルーマニアの地理わかんない人には申し訳ないけど、みたいな注釈あったよね？”(うろ覚えだけど)って話。" userName="throwawayoldie" createdAt="2025/06/19 02:46:27" color="">}}




{{<matomeQuote body="A*の経路探索がどんな感じか、この動画で可視化しててわかりやすいよ → https://youtube.com/shorts/L8t0tt1Vrsw" userName="cryptomic22" createdAt="2025/06/18 15:28:43" color="#38d3d3">}}




{{<matomeQuote body="これ見て懐かしくなった！俺も何年か前に学校の課題でA*習った時、このチュートリアル EXACTLY 使ったんだよねー。" userName="mysteria" createdAt="2025/06/18 17:33:29" color="">}}




{{<matomeQuote body="超簡単な質問かもだけど、これってどう読むの？ A-star？ Ah-sterisk？" userName="0manrho" createdAt="2025/06/18 15:17:02" color="">}}




{{<matomeQuote body="Ay-star（エイスタァ）だよ。" userName="Ao7bei3s" createdAt="2025/06/18 15:42:21" color="">}}




{{<matomeQuote body="A*はシンプルでいいけど、環境がまだわかってない状態での経路探索って、どうやるんだろう？" userName="deadbabe" createdAt="2025/06/18 15:58:09" color="">}}




{{<matomeQuote body="知らない環境でのマッピングとか経路探索なら、Simultaneous localization and mapping ってやつがあるよ。詳しくはこちら → https://en.m.wikipedia.org/wiki/Simultaneous_localization_an..." userName="SnowflakeOnIce" createdAt="2025/06/18 16:49:45" color="">}}




{{<matomeQuote body="SLAMはマッピング向けかな。未知の環境でのプランニング（実行）なら、多分 D* Lite とかじゃない？" userName="gradstudent" createdAt="2025/06/19 00:08:27" color="#ff5c5c">}}




{{<matomeQuote body="確か今は、こういう問題には機械学習ベースのアプローチが一番いいと思うよ。他には、まず探索して環境情報を先に手に入れるステップを入れるとか。" userName="ViscountPenguin" createdAt="2025/06/18 16:45:24" color="#785bff">}}




{{<matomeQuote body="機械学習の手法はパス探索にはあまり向いてないね。最先端の技術でも、A*みたいなステート空間探索には敵わないんじゃないかな。" userName="gradstudent" createdAt="2025/06/19 00:09:45" color="">}}




{{<matomeQuote body="ベンチマークは見当たらないけど、俺が言ってたのはこういうアプローチの例だよ：https://www.researchgate.net/publication/355761412_Path_plan...<br>GOFAI技術ってのは、<br>A) 環境の後知恵を取り込むのが苦手なことが多いんだ。<br>それに、<br>B) 探索コストを考慮するように応用するのが、全く現実的じゃないことも多いんだよね。<br>最適な輸送理論とかを使った、未知の環境での最適な不偏パス探索のGOFAI技術も聞いたことはあるけどさ。でも不偏な方法って、実際の環境では明らかに劣るだろうね。" userName="ViscountPenguin" createdAt="2025/06/20 03:37:40" color="#ff33a1">}}




{{<matomeQuote body="いて座A*（Sagittarius A*）と間違えないようにね。こっちだよ：https://en.wikipedia.org/wiki/Sagittarius_A*" userName="Kye" createdAt="2025/06/18 19:58:56" color="">}}




{{<matomeQuote body="A*やHN初めての人もいるかもしれないって考えてみてよ！初めて見たって人もいるかもだろ？それに、透視図法の本を10冊持ってて、全部ないと理解できないってこともあるんだ。<br>あるいは、A*について教えてるなら、この記事が学生に一番よく伝わるってこともあるかもしれないだろ。他の記事へのリンクを提供してくれてありがとう！誰かの役には立つと思うよ！" userName="bandoti" createdAt="2025/06/18 12:35:56" color="">}}




{{<matomeQuote body="そうそう、前に記事が投稿されたらもう終わりで、みんなその日オンラインだったって思ってる変な抽象化に縛られて生きてる人がいるんだよね。で、何故かそれを指摘することで得られる『委員長ポイント』を追い求めてる。今日の視点からどんな議論ができるか見てみようぜ。" userName="add-sub-mul-div" createdAt="2025/06/18 12:42:45" color="">}}




{{<matomeQuote body="A*は人気があって当然だと思うよ。CS101でみんなが学ぶ深さ優先や幅優先探索の簡単な応用で、すごく役に立つ状況があるのに、なぜかCS教育の標準じゃないんだよね。<br>初めて学ぶ時は本当に素晴らしい発見だよ。<br>BFSとDFSの違いが「探索してないノードの袋から次に探索するノードをどう選ぶか」だって認識するのに役立つなら、さらに素晴らしい。<br>DFSを再帰アルゴリズムとしてだけ教わると、その対称性が見えなくなりがちだからね。<br>数年ごとに新しい世代のプログラマーを驚かせるために、繰り返し出てくればいいんだよ。" userName="repiret" createdAt="2025/06/18 18:33:28" color="#785bff">}}




{{<matomeQuote body="この記事見てびっくりしたよ。この時期じゃないんだもん。A*ってだいたい12月頃に出てくるんだよね。Advent of Codeを通じて知る人が多いから。<br>（僕もAdvent of Codeでしか使ったことないけど）" userName="dunham" createdAt="2025/06/18 14:49:42" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これはただ単に、パスファインディングを始めたばかりの人に教える最初の、最も分かりやすいものだからだと思うよ。現実世界でも使えるし、視覚化や計算も簡単だからね。<br>だからチュートリアルも全部これなんだ :)" userName="pmichaud" createdAt="2025/06/18 12:49:54" color="#ff5733">}}




{{<matomeQuote body="この記事が何度も戻ってくる本当の理由は、A*アルゴリズムそのものより、例とか視覚化を通して教えるのがいかに上手いか、だと思うね。" userName="teo_zero" createdAt="2025/06/18 18:09:58" color="#785bff">}}




{{<matomeQuote body="A*は好きじゃないなー。あれはパフォーマンスハックであって、モノが目的地に着こうとする時の自然な振る舞い方とは違うと思うんだ。" userName="hoseja" createdAt="2025/06/18 12:29:24" color="">}}




{{<matomeQuote body="ハックでもないし、何かみたいに振る舞おうとしてるわけでもないよ。A*は完全で最適なアルゴリズムで、ちゃんと証明できる性質を持ってるんだ。もし適切なヒューリスティックがあれば、ダイクストラ法よりA*を使うべきだよ。" userName="JohnKemeny" createdAt="2025/06/18 13:24:33" color="#785bff">}}




{{<matomeQuote body="非許容ヒューリスティックも役に立つことがあるし、それがどれだけ最適じゃなくなるかを考えるのは簡単だよ。最適な結果よりパフォーマンス優先したい時（探索空間の一部を無視とか）や、ゲームキャラをちょっとバカっぽく動かしたい時（ジグザグ行かせるとか）に使えるかもね。" userName="HelloNurse" createdAt="2025/06/18 14:24:55" color="#785bff">}}




{{<matomeQuote body="多分投稿者が言いたかったのは、非許容ヒューリスティックは、最適じゃなくても時々もっと自然に見える動きになるってことだと思うな。" userName="kccqzy" createdAt="2025/06/18 14:32:28" color="">}}




{{<matomeQuote body="A*って、どうやって行くかじゃなくて、どう行くかを「決める」方法なんだよ。結果は最短経路で、それに従って動くんだ。これは人が知らない場所で最短ルートを見つけるのと結構似てるね。地図で北の都市に行く最短ルート探す時、南に行く道はあんまり見ないでしょ？目的地にまっすぐ近づく道を中心に探すよね。" userName="wat10000" createdAt="2025/06/18 18:58:08" color="#ff5733">}}




{{<matomeQuote body="いろんな状況でめっちゃ役に立つよ。もし Civilizationみたいな見下ろし型ストラテジーゲーム作るなら、A*は完璧だね。なんか変なこと起きずに最短経路出してくれる、高速なパフォーマンスハックとして。でも、環境が違うとダメかな。レーシングゲームとかにはA*はそんなに役に立たないね。" userName="ecshafer" createdAt="2025/06/18 12:44:53" color="#ff5733">}}




{{<matomeQuote body="ヘックスタイルでA*を実装するのに3時間かかったけど、最初に試した時（陸地タイルだけね）動いたよ。特にCivみたいなゲーム向け。ユニットをまとめて一緒に動かそうとすると複雑になるんだ。貨物船や軍艦で水上を渡れるようにするのは、また別の課題だね。" userName="smallstepforman" createdAt="2025/06/18 12:52:08" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
