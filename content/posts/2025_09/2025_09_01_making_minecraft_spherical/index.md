+++
date = '2025-09-01T00:00:00'
months = '2025/09'
draft = false
title = 'マインクラフトを球体化する挑戦！ 歪みと極の問題をどう乗り越えたのか？'
tags = ["Minecraft", "ゲーム開発", "3Dグラフィックス", "ボクセル", "アルゴリズム"]
featureimage = 'thumbnails/light_colour1.jpg'
+++

> マインクラフトを球体化する挑戦！ 歪みと極の問題をどう乗り越えたのか？

引用元：[https://news.ycombinator.com/item?id=45055205](https://news.ycombinator.com/item?id=45055205)




{{<matomeQuote body="この問題への挑戦について、素晴らしい記事だね！MinecraftとSuper Mario Galaxyをプレイした多くの人が、きっと同じようなことを考えたはず。君はそれを実際のデモンストレーションまで持って行って、考えをすごく明確に書いてるのがすごいよ。<br>個人的には垂直方向の歪みが最大の問題だね。水平方向のタイリングなら、各”シェル”をドーナツ状にすれば完璧なグリッドができるし、さらに一度ねじれば、歪み問題も解決してstellarator fusion deviceを発明できちゃうかもね！" userName="mrtracy" createdAt="2025/09/01 15:13:01" color="#38d3d3">}}




{{<matomeQuote body="Super Mario Galaxyはプレイしたことないんだけど、この記事とどう関係があるの？" userName="tantalor" createdAt="2025/09/01 21:06:16" color="">}}




{{<matomeQuote body="あのゲームの多くのレベルは、球状の表面と中心重力を持つ小さな惑星みたいなところで繰り広げられるんだ。”Spherical”ってだけじゃ足りないくらい、Marioが走り回れる場所は本当にワイルドな地形もあったよ。" userName="mrtracy" createdAt="2025/09/01 23:43:32" color="">}}




{{<matomeQuote body="そのゲームには、独自の重力を持つ小さな惑星がたくさんあって、そこを飛び移れるんだ。" userName="kg" createdAt="2025/09/01 23:08:10" color="">}}




{{<matomeQuote body="実際のMinecraftには、世界を球体にするshader packsがあるんだよ。あれ、いい追加要素だよね。" userName="simooooo" createdAt="2025/09/02 04:19:20" color="">}}




{{<matomeQuote body="これを反転させてInceptionスタイルで遊ぶこともできるよ！" userName="squigz" createdAt="2025/09/03 12:34:39" color="">}}




{{<matomeQuote body="Space Engineersは絶対チェックするべきだよ。あそこもボクセルで球体の問題に直面してるけど、”orbital bodies”の実装に関しては君ほど深くはやってないと思うな。<br>宇宙、gfx、そのレンダリングアルゴリズムに熱心な者として、本当にお見事。問題点は知ってたから自分では試さなかったんだけど、歪み補正やチャンキングはすごいよ。掘れる深さをコアの半分くらいに制限すれば、コアの潰れたブロックの問題は避けられるんじゃないかな。<br>quad-sphereについて言及してるのも重要だね。これが実現可能にするんだ。WGS84が球体のマッピングには向かないって指摘も、みんな意外と知らないから、すごく良かったよ。" userName="reactordev" createdAt="2025/09/01 15:28:21" color="#785bff">}}




{{<matomeQuote body="「WGS84が球体のマッピングに向かない」ってあったけど、WGS84は地図投影じゃないんだよ。これは参照楕円体や地上局の参照位置を規定する測地基準系なんだ。<br>詳しくは https://en.m.wikipedia.org/wiki/World_Geodetic_System#WGS84 を見てみてね。" userName="maxnoe" createdAt="2025/09/02 08:16:57" color="#ff5c5c">}}




{{<matomeQuote body="コアまで掘削できないようにすると、重力の変な問題を解決できるんだ。Astroneerでは惑星のコアの重力がすごく変で、そこで身動きが取れなくなって振動しちゃうことがあったよ。" userName="lsaferite" createdAt="2025/09/01 15:32:25" color="">}}




{{<matomeQuote body="もしリアルさを追求するなら、コアには重力がないはずだよ :P。深く掘り進むほど足が軽くなる。地球の球体内で自分より下にある全ての質量は一方向に重力を及ぼし、自分より上にある質量は逆方向に同じだけ重力を及ぼすからね。" userName="reactordev" createdAt="2025/09/01 15:35:26" color="#ff5c5c">}}




{{<matomeQuote body="もし地球が全部水だったら、深く泳ぐほどどんどん水圧がかかるよね。水がいろんな方向に引っ張られるから、ある時点でその水圧は減り始めるのかな？" userName="hdjrudni" createdAt="2025/09/02 06:37:26" color="">}}




{{<matomeQuote body="＞ 水がいろんな方向に引っ張られるから、ある時点でその水圧は減り始めるのかな？<br>水圧は減らないよ、ただ増加が緩やかになるだけ。中心の重力はゼロだけど、上にある質量は重力（反対側と打ち消し合う）だけでなく、その重さによる圧力もかけてくるんだ。だから水圧は着実に上がるけど、中心に近づくほど上昇率は遅くなり、中心で最大になるよ。" userName="chii" createdAt="2025/09/02 06:57:44" color="#38d3d3">}}




{{<matomeQuote body="その通り。重力は差し引きゼロになるけど、圧力は全世界の海洋分になるだろうね。" userName="reactordev" createdAt="2025/09/02 14:36:28" color="">}}




{{<matomeQuote body="＞ 深く掘り進むほど足が軽くなる。<br>面白い事実として、重力は全行程で減少し続けるわけじゃないんだ！単調に減るのはコアに到達してからだよ。詳しくはこちら: https://physics.stackexchange.com/questions/18446/how-does-g..." userName="noahbp" createdAt="2025/09/02 22:40:30" color="#38d3d3">}}




{{<matomeQuote body="うん、ほとんど知ってるよ。この場合、「変」は「間違ってる」って意味じゃなくて、陸に住む人間にとっては「変な感じ」って意味だったんだ :)" userName="lsaferite" createdAt="2025/09/01 15:47:15" color="">}}




{{<matomeQuote body="もし本当にリアルさを追求するなら、重力は惑星上の全てのクアッドに依存すべきだよ。だから、もし巨大な浮遊島を作ったら、それと惑星の間の重力は通常よりも小さくなるはずだね。" userName="nomdep" createdAt="2025/09/02 00:24:34" color="#ff5c5c">}}




{{<matomeQuote body="現実世界で本当にリアルさを追求するなら、地球の核まで掘るなんて、莫大な予算と国際的な協力が必要だけど、政治とか運営のせいで絶対無理だよ。結局、実現しないんじゃないかな。" userName="DrewADesign" createdAt="2025/09/02 01:36:15" color="">}}




{{<matomeQuote body="ちょっとした疑問なんだけど、本当に物質があって完全に重力がゼロになるような物理的な一点って現実にあるのかな？プランク長より大きいものなら、何かしらの重力はあると思うんだけど。" userName="b3lvedere" createdAt="2025/09/02 08:59:37" color="">}}




{{<matomeQuote body="少なくとも、自分自身の体だって、君に何らかの重力を及ぼすんだよ。" userName="Filligree" createdAt="2025/09/02 13:08:34" color="">}}




{{<matomeQuote body="これって、現実（IRL）で起こることにかなり近いと思うんだよね。核に近づくと質量がほとんど周りにある状態になるから、スピードが出すぎて中心を通り過ぎて、また戻ってくる、みたいな動きになるんじゃないかな。<br>でも、中空の惑星なんて珍しいから、これはただの想像だけどね。きっと誰か、 exactly（正確に）何が起こるか計算してるはずだよ。" userName="jacquesm" createdAt="2025/09/01 15:37:31" color="">}}




{{<matomeQuote body="ニュートンが「シェル定理」としてこれを解き明かしたんだ。中空の球対称な物体の中では、どんな点でも正味の重力はゼロになるよ。逆に、シェルの外側の点では、その物体が点質量であるかのように同じ力が働くんだ。<br>理想的な惑星（球対称）で地下にいる場合、惑星を2つの領域に分けられる。その点より“上”の惑星のシェルは影響がなく、“下”のシェルだけが全体の影響を与えるから、中心に近づくにつれて重力はゼロになるんだ。<br>実際には惑星は完全な球対称じゃないけど、良い近似になるくらいには近いんだよ。" userName="gizmo686" createdAt="2025/09/01 17:48:59" color="#38d3d3">}}




{{<matomeQuote body="Outer Wildsはこれを完璧にやってたと思うよ。核に向かって落ちていくと、重力が消えていったのを覚えてるな。" userName="Aeolun" createdAt="2025/09/01 23:15:03" color="">}}




{{<matomeQuote body="Astroneerは意図的に重力の挙動を奇妙にしてるんだよね。単なるシンプルな重力の実装じゃないんだ。" userName="rcxdude" createdAt="2025/09/04 14:29:44" color="">}}




{{<matomeQuote body="Space Engineersは記事で言及された”ブロック状の球体”アプローチを使ってて、重力方向を固定点に向けることで表面を歩く問題を回避し、ボクセル構築を許さないことで”上向きに構築する”問題をクリアしてるらしい。クワッドスフィアは全然使ってないんだね。" userName="RA2lover" createdAt="2025/09/01 18:31:19" color="#785bff">}}




{{<matomeQuote body="そうだよね。だからOPほど深くやってないって言ったんだよ。ブロックが四角じゃなくなるって気づいて、多くの人はクワッドスフィアで終わっちゃうんだよね。" userName="reactordev" createdAt="2025/09/01 20:19:40" color="">}}




{{<matomeQuote body="みんなコアまで掘りたいし、そこに無重力なクールな居住地を建てたいって思うよね。少なくとも俺は真っ先にやったよ :)" userName="tomaskafka" createdAt="2025/09/02 11:25:03" color="">}}




{{<matomeQuote body="だからマトリックスには液体コアが必要なんだよ。" userName="cyptus" createdAt="2025/09/01 20:40:40" color="">}}




{{<matomeQuote body="これって気になるんだけど、三部作（映画）のどこかにちゃんとした説明があるの？" userName="pvankessel" createdAt="2025/09/02 02:17:05" color="">}}




{{<matomeQuote body="これめちゃくちゃ楽しいね！君はクールなvoxel風味の惑星間ゲームの基礎を作ってるよ。俺は”軌道に乗る”のが楽しくて、近地点で加速して遠地点で減速するのを見て、[Space]でロケットで着陸したよ。MinecraftとKerbal Space Programが合体したゲームがあったら最高だし、その材料はもうここにあるね。:D" userName="accrual" createdAt="2025/09/01 15:39:19" color="#ff33a1">}}




{{<matomeQuote body="MinecraftとKerbal Space Programの融合ゲームが好きなら、Space Engineersが良いかもね。でも、Space Engineersはバグが多くて、勝手に色々爆発したり、たまにクラッシュすることもあるんだ。まあ、Kerbal Space Programっぽいと言えばそうかもだけど。Space Engineers 2が開発中だから、そっちには期待してるよ。" userName="inetknght" createdAt="2025/09/02 17:58:51" color="#ff5c5c">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="Eco: Global Survival (https://play.eco/) は歪み問題を避けるために、歪みのないフラットなvoxelグリッドを使ってるけど、球体表示はtorisphere状に描画してるよ。中心付近の移動が球体より長くかかるのは課題だけど（掘れる高さを制限して対応）、俺はもっとエレガントな解決策だと思うんだ。" userName="RA2lover" createdAt="2025/09/01 18:19:25" color="#38d3d3">}}




{{<matomeQuote body="それはエレガントなレンダリング技術だけど、もしワールドがtorusとして表現されてるなら、球体ビューでの回転は直感的じゃないと思うよ。例えば、各地点に単一のantipodeじゃなくて3つもantipodeがあることになる。球体ならAから経度緯度180度移動すればAに戻るけど、torusだと全く違う場所（Cのantipode）に行っちゃうからね。そこからまた180度移動するとDのantipodeに着くことになる。" userName="mrtracy" createdAt="2025/09/01 19:09:56" color="#45d325">}}




{{<matomeQuote body="ルート計画は、対蹠点（アンティポダル）に近いランドマークじゃなくて、沿道にあるランドマークを無意識に参照して道をプロットするから、問題だとは思わないよ。<br>俺がプレイしたワールドの一つは、最初から道路計画があって、世界全体を4x4の四角いグリッドで覆う道路網があった。点Dへの経路は、一方向に2ブロック、それと直交する方向に2ブロック進むだけだったんだ。<br>そういう道路がない世界では、代わりに海や大陸みたいなランドマークを探すだろ？<br>結局、地球儀が今見てる場所の対蹠点（アンティポデス）は、地球儀を回転させないと見えないから、どこが対蹠点（アンティポダル）だろうと気にしないよ。" userName="RA2lover" createdAt="2025/09/01 22:39:28" color="#ff5c5c">}}




{{<matomeQuote body="この記事を読んでて、俺も同じようなアイデアを思いついたんだ。誰かがそれを実装したのを見るのはめちゃくちゃクールだね！" userName="superb_dev" createdAt="2025/09/01 20:53:40" color="">}}




{{<matomeQuote body="最近これについて考えてたんだ。光学機器が安価になる前は、ずっと下げ振りや水準器を使って家や建物を建ててたよね。これは、ほとんどの建物が実際にはCartesianじゃなくてpolarだってことじゃないかな？地球のサイズを考えれば誤差はかなり小さいけど、今座ってる部屋が球形の床と天井を持つfrustum（円錐台）の形をしてるって考えるのは面白いな。設計図とは違うけどね。" userName="harvie" createdAt="2025/09/02 10:05:51" color="#785bff">}}




{{<matomeQuote body="もし床や天井、壁がWhitworthの三枚すり合わせ法（[1] https://ericweinhoffer.com/blog/2017/7/30/the-whitworth-thre...）で水平・垂直にされたら、角は実際には90度じゃないんだよ！1830年代にWhitworthによって広められた方法だけど、古代の人たちも直定規や平らな板を作ってたんだ。" userName="LeifCarrotson" createdAt="2025/09/02 11:28:01" color="#ff5c5c">}}




{{<matomeQuote body="研究やテストに使われるすごく長くて狭い波のプールがあるんだけど、それは水の表面が中心から完全にまっすぐ伸びる線と比べて、測定できるほどカーブするくらい長いんだよ。" userName="UltraSane" createdAt="2025/09/02 14:07:46" color="#ff5c5c">}}




{{<matomeQuote body="ニューヨークのVerrazano Narrows Bridgeみたいな長い橋は、地球が球体であることを考慮した計画で作られてるよ。両端の塔は平行じゃなくて、それぞれの場所の重力に沿うように傾いてるんだ。" userName="mdnahas" createdAt="2025/09/03 12:41:57" color="#ff5733">}}




{{<matomeQuote body="たぶん、建築の不完全さの方がこの効果よりも大きいだろうね。" userName="brokensegue" createdAt="2025/09/02 11:10:30" color="">}}




{{<matomeQuote body="4km離れた2つの建物（Central Parkくらいの長さ）があると、‘up’の方向が約0.036°変わるんだ。もし建物が300mの高さなら、300×sin(0.036°) = 0.188mになる。<br>これは強風での建物の揺れより小さいけど、現代の建築の許容範囲外だから、理論的には平均偏差として測定できるだろうね。" userName="jameshart" createdAt="2025/09/02 12:40:31" color="#ff33a1">}}




{{<matomeQuote body="記事ではcubesphereの長方形のサイズの差を避ける方法が説明されてないから、僕が教えるね。<br>ダメなやり方は、Cubeを生成して、linear interpolation (lerp)で各面を細分化し、各ベクトルをunit sphereに正規化すること。<br>良いやり方は、Cubeを生成して、spherical linear interpolation (slerp)で細分化するだけ！<br>cubesphereは特にtexture mappingで面白い幾何学的特性がたくさんあるよ。" userName="exDM69" createdAt="2025/09/01 14:08:11" color="#38d3d3">}}




{{<matomeQuote body="以前、開発が中止されたSeed of Andromeda [0] [1]には惑星スケールのVoxelsとPhysicsがあったんだ！Explosionで巨大なAvalanchesを起こしたり、多くの水のプールが下り坂を流れていくの [2] を自分で見たりしたのを覚えてるよ。とても可能性があったんだよね。<br>sphereをVoxelsにマッピングする方法についてのdev blogかYouTube video [3] があったけど、Waybackで見つけられなかったな。こういうスケールで局所的な効果に気づくことはあまりないけど（Flat Earth illusion）、Blocky Planetは極端なもう一方の端を示してるね。Distant Horizonsのcurvature optionや他のrounded world shadersでは決して達成できないものだよ！（+Outer Wilds vibes）<br>[0]: https://github.com/RegrowthStudios<br>[1]: https://web.archive.org/web/20210416224527/https://www.seedo...<br>[2]: https://youtu.be/qCoyNH6y7CU?t=529 + at 9:23<br>[3]: https://youtu.be/bJr4QlDxEME" userName="Tremeschin" createdAt="2025/09/01 18:39:40" color="#785bff">}}




{{<matomeQuote body="これを見て、Minetestでの別の試みを思い出したよ。この人は、その背後にある数学について解説している、もっと技術的な動画も出してるんだ。→ https://youtu.be/ztAg643gJBA?si=8vDgg0rFCOj9I7no" userName="gatane" createdAt="2025/09/01 16:51:29" color="#ff5c5c">}}




{{<matomeQuote body="これって、Eskil Steenbergのゲーム『Love』がどんな仕組みだったのかとふと思ったよ。あれも球体型のブロックワールドだったよね。→ https://www.quelsolaar.com/love/" userName="boriskourt" createdAt="2025/09/01 14:50:31" color="#ff5c5c">}}




{{<matomeQuote body="変なウェブページだね。作者は意図的にゲームの説明を避けて、他のことばかり話してるみたいだ。もし他の人が気になったら、メインページからワンクリックでたどり着ける説明文を教えてあげるよ。<br>LOVEは協力型オンライン一人称アドベンチャーゲームで、小さな惑星でスカベンジャーとして他の人とモノリスを設置して環境を自由に形作り、集落を築くゲームだよ。" userName="vova_hn" createdAt="2025/09/03 04:48:39" color="#785bff">}}




{{<matomeQuote body="私もこのゲームについてコメントしに来たよ。ゲームプレイにはいろいろ問題があったみたいだけど、技術は本当に魅力的だったよね。" userName="iamacyborg" createdAt="2025/09/01 22:25:56" color="">}}




{{<matomeQuote body="この記事は美しく書かれてて、イラストも素敵だったね。" userName="wolframhempel" createdAt="2025/09/01 14:40:23" color="">}}




{{<matomeQuote body="Tiny Gladeとか、それに似たゲームがMinecraftの進化形なんだと思うよ。" userName="cantor_S_drug" createdAt="2025/09/01 19:34:51" color="">}}




{{<matomeQuote body="うん、読んでて純粋に楽しかったよ。" userName="bckr" createdAt="2025/09/01 14:45:34" color="">}}




{{<matomeQuote body="本当にそう思う。シンプルでよくできたイラストに感動したよ。OPが何を使って作ったのか気になるな。" userName="WhyNotHugo" createdAt="2025/09/02 08:18:18" color="">}}




{{<matomeQuote body="もし僕みたいにデモ動画を探してる人がいたら、これだよ。→ https://www.youtube.com/watch?v=752-Oo1hok4" userName="fra" createdAt="2025/09/02 12:28:43" color="#785bff">}}




{{<matomeQuote body="クワッドグリッドを隣接する三角形の面に自然にマッピングできることを考えると、膨らませた立方体じゃなく測地線球をベースにすれば、歪みの分布が良くなるんじゃないかな。座標系はさらに複雑になるだろうけど。特殊なノードは避けられないし、標高の問題も解決しないけど、特に全体の直径が大きくなると、より均一な表面になると思うよ。" userName="mikepurvis" createdAt="2025/09/01 19:21:30" color="#ff5733">}}




{{<matomeQuote body="双曲平面でMinecraftがどう見えるか想像してるんだよね。指数関数的な地形を線形半径に詰め込んだらどうなるかなって。ユークリッド幾何学より双曲幾何学の方が「実用的」かもって思うんだ。みんなすごく近いのに、スペースはたっぷりあるって意味でね。" userName="perihelions" createdAt="2025/09/01 15:17:15" color="#ff5c5c">}}




{{<matomeQuote body="何十もの地図投影法に悩まされてきたよ。UTMとかMGRSゾーンもそれぞれ投影法と考えたら、何千と見てきたことになるね。地球が平らだったらどれだけ楽か！って本当に思うよ。" userName="Waterluvian" createdAt="2025/09/01 16:22:18" color="">}}




{{<matomeQuote body="「深く掘り進む」問題を避けるには、まずボクセルで立方体を作って、その立方体の表面だけじゃなく、内部にも歪みを適用して球体にするのはどうかな？<br>そうすれば四角い球体になるんじゃないかなって。どう説明したらいいか分からないから、コード書こうかな、笑。" userName="vova_hn" createdAt="2025/09/01 16:34:57" color="#ff5733">}}




{{<matomeQuote body="君の言いたいことはわかるよ。Minecraftスタイルのゲームではキャラクターのサイズは一定だけど、そうである必要はないんだ。深く掘り進むほどキャラクターが小さくなって、内部のボクセルサイズに合わせて調整されるんだよ。これは穴を覗き込むときに、底のものが実際よりも遠くに見えるような遠近法の効果も生むだろうね。" userName="seabass-labrax" createdAt="2025/09/01 20:08:28" color="#ff5c5c">}}




{{<matomeQuote body="一番簡単な方法は、ある地点で破壊できない溶岩にぶち当たるようにすることじゃないかな。" userName="skybrian" createdAt="2025/09/01 16:51:09" color="">}}




{{<matomeQuote body="Minecraftは、マップの最下層を特別なブロックである’bedrock’にして、ゲーム内のどんなツールでも壊せないようにすることで問題を解決してるんだ。adminコマンドとか’creative’モードを使わない限りはね。" userName="mister_mort" createdAt="2025/09/02 11:06:55" color="">}}




{{<matomeQuote body="まさに現実世界と同じだね。ちょっと待って…。" userName="sixo" createdAt="2025/09/01 18:22:26" color="">}}




{{<matomeQuote body="世界の球体と同じ大きさの四面体を使って、ボクセルが最小サイズになるまで細分化するべきだったんじゃないかな。カメラの位置に基づいて、空気と交差する部分を三角形に変換すれば、自動でLODが得られるよ。" userName="ChrisGreenHeur" createdAt="2025/09/02 05:18:15" color="#45d325">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="軌道力学で遊ぶのがちょっと楽しかったな。最初は惑星のコアの周りを、次に惑星そのものの周りを飛び回ったよ。<br>ある地点で宇宙に十分飛び出したら、星のオブジェクトを通り過ぎて、あたりが真っ暗になったんだ。あれはちょっと不気味だったね。すごくクールな小さいゲームだ！" userName="redundantly" createdAt="2025/09/01 17:00:50" color="">}}




{{<matomeQuote body="Rectangular Surface Parameterization[1]みたいなのをボクセルでやる方法がないかなって思うんだ。均一なボクセルの体積が得られて、頂点識別も簡単になるだろうしね。<br>[1]: https://www.cs.cmu.edu/~kmcrane/Projects/RectangularSurfaceP..." userName="programjames" createdAt="2025/09/01 20:30:11" color="#45d325">}}




{{<matomeQuote body="すごいデモだね！マインクラフトに代わるのは、一人称視点から見てずっと小さいボクセルを使ったゲームだと思うよ。マインクラフトのブロックの1/8くらいのサイズかな。" userName="sureglymop" createdAt="2025/09/01 20:23:09" color="#785bff">}}




{{<matomeQuote body="これ見てみて！ https://store.steampowered.com/app/2283580/Voxile/" userName="emmelaich" createdAt="2025/09/02 09:54:12" color="">}}




{{<matomeQuote body="似たようなボクセルシステムだと、RobloxにGravity-Controllerってのがあるよ： https://web.roblox.com/games/4597506405/Gravity-Controller。うちの息子がそれを基に作ったゲームもあるんだ： https://www.robloxgo.com/game/4617217359/Gravity-Combat" userName="torial" createdAt="2025/09/01 21:27:55" color="">}}




{{<matomeQuote body="話はそれるけど、昔、Dwarf Fortressみたいなゲームで、八角形十二面体のハニカム構造でパスファインディングを動かそうとしたことがあるんだ。普通の3レベルのオクトツリーじゃ物足りないと思ってね。うまくいかなかったけど、めちゃくちゃ面白かったよ。<br>視覚化するためにピザの箱からひし形十二面体を1週間かけて作ったんだ。そこで学んだのは、普通の立方体よりもずっと楽しいおもちゃになるってことと、浅くて疎なオクトツリーみたいなものが、そういうゲーム（GISもね）には実は向いてるってことだよ。" userName="lstodd" createdAt="2025/09/01 21:13:12" color="#ff5733">}}




{{<matomeQuote body="これを見てGoogleのS2を思い出したよ。地球表面の1cm^2未満のほぼ正方形のエリアごとに64ビットのIDを割り当てるんだ。広いエリアには少ないビットを使うよ。<br>https://s2geometry.io/<br>https://docs.google.com/presentation/d/1Hl4KapfAENAOf4gv-pSn..." userName="yencabulator" createdAt="2025/09/01 18:30:02" color="#ff5c5c">}}




{{<matomeQuote body="マインクラフトみたいなゲームだと、表面だけを対象にするのは十分じゃないよね。" userName="Tepix" createdAt="2025/09/02 02:47:30" color="">}}




{{<matomeQuote body="記事はZ座標を追加してるけど、同じことが言えるね。" userName="yencabulator" createdAt="2025/09/02 02:51:44" color="">}}




{{<matomeQuote body="だまして、もっと大きな四角いマップ（上下左右がループするやつ）の一部を円の中にレンダリングして、それを変形させて見せかけの球体にするのはどうかな？<br>Blenderで試したら、立方体を作って細分割モディファイアで記事みたいな偽の球体ができるんだ。カメラを表面に近づけて焦点距離を短くすると、球体に見えるけど、3つの四角が交わる変な点は視界から外れるから、結局6面球の一面しか見えないって感じだね。<br>その一面にワールドマップの約50%を表示するテクスチャを貼って、球体を『回転』させようとするとテクスチャをスクロール・回転させれば、本物の球体と区別できないはずだよ。上に100%普通の2D四角いMinecraftグリッドがある状態だね。結構いい感じに見えるよ：https://postimg.cc/XXNgCYF8<br>テクスチャリングは少し変なんだ。極地は世界の二つの領域で、その間にあらゆる方向のものが挟まっているから、適切な距離とサイズで配置して表示させる必要があるよ。それに、世界を東西にスクロールして回転させると消えちゃうんだ。常に表示させるには、世界の半分を極地にする必要があるね。ゲームによっては、惑星の南北をつなぐ広大な氷のバイオームとか、北と南の氷の壁で隔てられた二つの領域があるって設定でもいいかもね。<br>https://postimg.cc/34GCKkDj<br>こんな低い焦点距離だとライティングがどうなるか分からないけど、大丈夫かもしれないね。<br>https://postimg.cc/ThGWyN8v" userName="scotty79" createdAt="2025/09/01 19:43:23" color="#45d325">}}




{{<matomeQuote body="僕のお気に入りの球体マインクラフトみたいなゲーム開発プロジェクトはPlanetSmithだよ。これは六角形（といくつかの五角形）のボクセルを使ってるんだ。開発ブログはよく作られてるから、ぜひチェックしてみてね。<br>https://youtube.com/@incandescentgames" userName="mkaic" createdAt="2025/09/01 17:27:21" color="#ff5733">}}




{{<matomeQuote body="これは記事の中で触れられてるよ：『プレイヤーをシェルの一部に限定することで、見た目の歪みを減らせる。そうすれば、ブロックサイズが頂点と底面でどれだけ違うか全部は見えなくなるからね。』<br>僕が見る限り、これは近日発売のゲームPlanetSmithが、六角形ブロックの惑星で使ってるアプローチみたいだね。" userName="seabass-labrax" createdAt="2025/09/01 20:10:55" color="#ff33a1">}}




{{<matomeQuote body="いいね。Planet Smithという、似たコンセプト（球体Minecraft）のゲームを思い出すな。あっちはキューブじゃなくてヘックスを使ってるんだ。ヘックスだと歪みが減るけど、独自の複雑さが増すんだよ。タイリングを機能させるために、表面には少数のペンタゴンもあるんだ。" userName="jamilton" createdAt="2025/09/01 15:53:48" color="#785bff">}}




{{<matomeQuote body="高すぎるところまで飛ぶと、かなり面白いことになるよ。最終的に地面を見失って、上に螺旋状に上がっていくんだ…実質「落ち上がる」みたいな感じ。地面に向かって落ち始める場所を見つけるには、逆に戻らないといけないんだ。" userName="al_borland" createdAt="2025/09/01 15:39:35" color="#ff33a1">}}




{{<matomeQuote body="これは、十分高い高度にバリアを追加すれば解決できるんじゃない？いわば「天蓋（firmament）」だな。こうすれば、Minecraftのマップが丸く見えても、みんな実は平らだって知ってるよ…っていう状況にできる。" userName="andrewclunn" createdAt="2025/09/01 15:47:56" color="">}}




{{<matomeQuote body="コアに近づくにつれてプレイヤーを小さくするのはどうかな？そうすれば各レイヤーが同じに見えるんじゃないかな。レイヤーが二重になったり半分になったりする継ぎ目も無くなるはずだよ。" userName="s0a" createdAt="2025/09/01 16:17:37" color="#45d325">}}




{{<matomeQuote body="たくさんレイヤーがあっても、「尖った」問題は残るんじゃない？一番下のブロックは三角形になるはずだよ。" userName="mcfry" createdAt="2025/09/02 15:46:23" color="#38d3d3">}}




{{<matomeQuote body="3つのクワッドが1つの頂点で交わる、8つの奇妙な点がある代わりに、Minecraftみたいなゲームなら、バレルみたいなマッピングにして、氷冠の部分は建築できないゾーンにする方が理にかなってるんじゃないかな。そうすれば、氷の境界線に建築不可能なリングができるよ。" userName="scotty79" createdAt="2025/09/01 21:39:24" color="#38d3d3">}}




{{<matomeQuote body="実は昔、これと漠然と似たようなことに挑戦したことがあるんだ：https://github.com/jeffparsons/planetkit<br>俺のアプローチは、測地線球体にヘックスグリッドを構築することだったな。これはかなり違うトレードオフなんだ。" userName="jeffparsons" createdAt="2025/09/02 00:15:05" color="#785bff">}}




{{<matomeQuote body="これは僕がかなりの時間を費やして考えてきた問題だけど、こんなにエレガントな解決策は思いつかなかったな。素晴らしい記事をありがとう。いつかオープンソースにしてくれることを願ってるよ。コードをいじってみたいな。" userName="mikestaas" createdAt="2025/09/02 00:00:27" color="">}}




{{<matomeQuote body="リンクで`ERR_SSL_VERSION_OR_CIPHER_MISMATCH`エラーが出たけど、HTTPSじゃないURLなら見れたよ：http://www.bowerbyte.com/posts/blocky-planet/" userName="pgt" createdAt="2025/09/01 16:24:49" color="#ff5c5c">}}




{{<matomeQuote body="俺も同じエラーが出たけど、ページをリフレッシュしたら見れたよ。あと、このウェブサイトの証明書はMon, 01 Sep 2025 15:24:40 GMTに作られたばっかりみたいだね。" userName="s20n" createdAt="2025/09/01 16:26:20" color="#ff5733">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
