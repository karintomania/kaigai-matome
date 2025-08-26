+++
date = '2025-08-19T00:00:00'
months = '2025/08'
draft = false
title = 'OpenMowerとは？現行ロボット芝刈り機の不満を解消するオープンソースが登場！'
tags = ["オープンソース", "ロボット", "芝刈り機", "DIY", "ナビゲーション"]
featureimage = 'thumbnails/blue.jpg'
+++

> OpenMowerとは？現行ロボット芝刈り機の不満を解消するオープンソースが登場！

引用元：[https://news.ycombinator.com/item?id=44946996](https://news.ycombinator.com/item?id=44946996)




{{<matomeQuote body="最近のロボット芝刈り機はランダム走行なんてほとんどしないよ！俺が買ったEufy E15はGPSなしでカメラでマッピングして、すげー効率的に芝刈りするんだ。<br>OpenMowerがGPSだけだと木の下とかで困るかもね。カメラも組み合わせたらもっと良くなるんじゃない？" userName="albertzeyer" createdAt="2025/08/19 14:03:21" color="#38d3d3">}}




{{<matomeQuote body="俺、Husqvarna使ってるけどめっちゃ満足だよ。ランダム走行だけど、3年間も造園業者いらずで、端と茂みの手入れだけで済んでるんだ。5000sqftのほとんど平らな庭で使ってるよ。" userName="mrbonner" createdAt="2025/08/19 16:50:06" color="#ff5733">}}




{{<matomeQuote body="ワイヤーもGPSも使わないと、簡単に盗まれちゃわないかな？" userName="k7sune" createdAt="2025/08/19 14:56:10" color="">}}




{{<matomeQuote body="俺も盗難のこと考えてたんだ。GPSは絶対必要だね。場所と紐付けとけば、盗まれても動かなくできるし。指定エリア外に出たらテキストで通知する機能も欲しいな。でもバッテリー目的で盗まれる可能性もあるし、なかなか難しい問題だよ。" userName="JoeAltmaier" createdAt="2025/08/19 14:59:26" color="#ff5733">}}




{{<matomeQuote body="GPSって、芝生によくある木の下だと、ちゃんと動かないのが問題だよね。木がある庭が多いから、結局GPS以外に何か必要で、それがあるならGPS自体いらないかもって思うんだ。" userName="bluGill" createdAt="2025/08/19 18:05:21" color="#ff33a1">}}




{{<matomeQuote body="GarminのサイクリングコンピューターみたいなマルチGNSSがあればいいのに。あれ、めっちゃ正確で、道路のどっち側を走ってるかとか、車線のどこにいるかまでわかるんだぜ！" userName="typpilol" createdAt="2025/08/19 22:26:22" color="">}}




{{<matomeQuote body="信号が届かない場所じゃ、マルチGNSSだって役に立たないよ。他の情報を使えばもっと正確になることもあるけど、いつでもってわけじゃないんだ。" userName="bluGill" createdAt="2025/08/19 23:38:58" color="">}}




{{<matomeQuote body="「盗まれたら動かない」なんて、iPhoneみたいな保護レベルにはならないって断言できるね。芝刈り機には工場出荷時リセットボタンが絶対あるよ。" userName="0x457" createdAt="2025/08/19 18:59:01" color="#38d3d3">}}




{{<matomeQuote body="外部と連絡する手段がないと、あまり意味がないよね。一部のメーカーは、セルモジュールつけてSOS送れるようにしてるけど、それには毎月／毎年お金がかかるんだよ。" userName="Kirby64" createdAt="2025/08/20 16:54:27" color="#ff5c5c">}}




{{<matomeQuote body="うちの庭は通りから見えにくい場所にあって、近所の人を信頼してるから、盗難はそんなに問題にならないと思う（願わくばね）。eufyにも追跡目的でオプションのGPSモジュールがあるみたいだけど、ナビゲーションには使われないはず。ただ、詳細はちゃんと確認してないんだ。追跡用のGPSモジュールがオプションで買えるロボットはいくつか見たことがあるよ。" userName="albertzeyer" createdAt="2025/08/19 16:09:12" color="#38d3d3">}}




{{<matomeQuote body="急に小さなLLMと音声シンセサイザーを追加したくなったよ。そうすれば、見知らぬ人が来たら芝刈り機が助けを叫べるじゃん。" userName="joshmarlow" createdAt="2025/08/19 14:58:24" color="">}}




{{<matomeQuote body="ロボット工学三原則の第三原則は「自己防衛！」だね。" userName="jiehong" createdAt="2025/08/19 15:10:38" color="">}}




{{<matomeQuote body="GPSやカメラの代わりに、ローカル測位システムを使うのはどうかな？芝生の周りに、ソーラー給電の小型ビーコンを3つ設置するんだ。" userName="goda90" createdAt="2025/08/19 14:17:29" color="#785bff">}}




{{<matomeQuote body="アンテナ（RTKアンテナ？）を設置するタイプのロボットも見たことあるけど、自分には手間がかかりすぎだったからeufyを選んだんだ。読んだレポートによると、アンテナ付きが必ずしもナビゲーションの精度が良いわけじゃないみたい。むしろ、カメラのみのロボットの方がナビゲーションの問題が一番少なかった印象だよ。" userName="albertzeyer" createdAt="2025/08/19 16:18:24" color="#785bff">}}




{{<matomeQuote body="これは直接GPSは使わないんだよ。GPSだと精度が足りないからね。RTKを使って、基地局から相対的な位置をすごく正確に計算するんだ。" userName="aidenn0" createdAt="2025/08/20 15:32:53" color="#ff5733">}}




{{<matomeQuote body="RTK GPSは、葉っぱが茂った場所の下ではまだ苦戦するよ。やっぱりGPS信号は必要だね。OpenMowerプロジェクトにはデッドレコニング用のアクティブメーターが入ってるけど、すぐにGPSロックに戻らないと、位置精度をあっという間に失ってしまうんだ。" userName="Kirby64" createdAt="2025/08/21 14:59:46" color="#ff33a1">}}




{{<matomeQuote body="君の芝生はどれくらい広くて、ほとんど平らなの？うちの芝生はすごく広くて、片側が傾斜してるから試してみたいんだけど。" userName="codegeek" createdAt="2025/08/19 15:43:56" color="">}}




{{<matomeQuote body="300 m^2くらいかな。eufy E15は最大800 m^2、eufy E18は最大1200 m^2まで対応してるよ。もっと広い芝生用の（高価で大きい）ロボットも見たことがあるな。うちの庭は比較的平らだけど、少し凹凸があるよ。芝生の一部を常に除外するエリアとして簡単にマークできるんだ。" userName="albertzeyer" createdAt="2025/08/19 16:15:32" color="#ff33a1">}}




{{<matomeQuote body="これってValetudo[0]の芝刈り機版って感じ？すごくクールじゃん！ロボット掃除機と芝刈り機でどれくらいコードが共有されてるのか気になるな。<br>[0]: https://valetudo.cloud/" userName="boomskats" createdAt="2025/08/19 09:24:19" color="#38d3d3">}}




{{<matomeQuote body="OpenMowerって知らなかったけど、すごく面白そうだね。7年前のロボット掃除機をこれで「アップグレード」してみようかな。" userName="lxn" createdAt="2025/08/19 09:40:09" color="#ff5c5c">}}




{{<matomeQuote body="Valetudoと違って、OpenMowerは芝刈り機のシャーシとモーターは使うけど、電子機器は全部入れ替えるんだって。" userName="cuu508" createdAt="2025/08/19 10:00:03" color="#ff5733">}}




{{<matomeQuote body="Mowgliプロジェクトは元の芝刈り機のメインボードを再利用するんだって（RPiで強化されるかも）。OpenMowerのデフォルト方式みたいに、メインボードを引っこ抜いて交換するほど洗練されてないみたいだね。" userName="reitanuki" createdAt="2025/08/19 10:14:55" color="#ff33a1">}}




{{<matomeQuote body="リンクありがとう、これすごく役に立つよ。ValetudoとOpenMower、両方すぐに使うことになるかも！ところで、防犯カメラでこれに匹敵するプロジェクトってあるかな？" userName="aswegs8" createdAt="2025/08/19 12:27:36" color="#785bff">}}




{{<matomeQuote body="カメラファームウェアはここを見てね: <br>https://thingino.com<br>https://news.ycombinator.com/item?id=44791984<br>https://openipc.org<br>https://news.ycombinator.com/item?id=44758463<br>NVRはこれ:<br>https://frigate.video<br>https://news.ycombinator.com/item?id=44794508" userName="jonah" createdAt="2025/08/19 15:23:10" color="#785bff">}}




{{<matomeQuote body="防犯カメラに匹敵するものはあるか、だって？それならReoLinkとFrigateだよ。<br>https://frigate.video/" userName="all2" createdAt="2025/08/19 17:39:32" color="#ff5733">}}




{{<matomeQuote body="「現行のロボット芝刈り機はひどい」って記事にあったけど、実はランダム走行でもかなりうまくいくんだよね。境界ワイヤーの設置は大変だけど、一度やれば完璧だし、隣の庭に行ったりしない。ランダム走行も効果的だよ。もっとスマートなロボットで何が改善できるんだろう？<br>境界ワイヤーなしで100%動けば最高だね。あと、子供のおもちゃを壊さないように障害物検出もあればいいな（片付けのモチベーションにもなるけどね！）。" userName="micheljansen" createdAt="2025/08/19 13:49:43" color="#38d3d3">}}




{{<matomeQuote body="Mammotion Yubaを使ってるんだけど、グリッドやライン状に刈られた芝生は本当にかっこいいよ。ロゴだって作れるんだ。ランダム走行よりも見た目もずっといいし、スピードも速いね。" userName="razemio" createdAt="2025/08/19 14:08:56" color="#ff5c5c">}}




{{<matomeQuote body="うちには古いautomower（315xとか）と、navimow x330みたいな新しいボットが混在してるんだ。navimowは”ミニストライプ”にしてくれて綺麗だけど、automowerのランダムパターンだと芝生がちょっと”カーペット”みたいに見えることがあるかな。" userName="ai-christianson" createdAt="2025/08/19 15:36:00" color="#ff5733">}}




{{<matomeQuote body="ソフトウェアの残りのタスクとしては、障害物回避が一番重要みたいだね。位置決めはRTK GPSセンサーを選べるみたいだから、”脱走防止”のためにガイドワイヤーもサポートし続けるのは面白いかも。" userName="zamadatix" createdAt="2025/08/19 14:09:57" color="#45d325">}}




{{<matomeQuote body="ワイヤー式のロボット芝刈り機が良いって言っても、最新世代がダメってわけじゃないよ。俺のMammotion Luba 2はバッチリ動くし、ハードウェアも測位も最高。ソフトは細かい不満もあるけど、全体的にすごいぜ！" userName="foobarian" createdAt="2025/08/19 14:08:21" color="#785bff">}}




{{< details summary="もっとコメントを表示（1）">}}

{{<matomeQuote body="ロボット芝刈り機のブレードはここ見ると分かるよ - https://images.squarespace-cdn.com/content/v1/676d76e61268a4...。Sunseeker X7を使ってるけど、ハードウェアは完璧で、あとはソフトウェア次第って感じ。アプデでどんどん良くなるのは、Elonの車みたいだね。ロボット芝刈り機は人間より優秀だし、夜中の3時に動かして防犯や野生動物の監査にも使えるって、マジで興奮する時代だよ！" userName="aaron695" createdAt="2025/08/19 02:39:19" color="#45d325">}}




{{<matomeQuote body="夜行性のハリネズミとか動物を守るために、夜中にロボット芝刈り機を動かすのはやめてほしいな。" userName="lars_francke" createdAt="2025/08/19 06:25:04" color="">}}




{{<matomeQuote body="動物だけでなく、静かな夜を過ごしたいみんなのためにも、夜中に動かすのはやめてほしいよ。" userName="lukan" createdAt="2025/08/19 08:34:13" color="">}}




{{<matomeQuote body="夜中に動かせるって話だから、もしかして静かなのかな？もしそうじゃないなら、元の投稿者はクレイジーだよな。俺はそう思っちゃうんだけど、どうかな？" userName="alias_neo" createdAt="2025/08/19 08:59:37" color="">}}




{{<matomeQuote body="高回転のものは静かじゃないよ、特に夜はね。ガソリン芝刈り機よりは静かだけど、田舎じゃ昼間でもうるさいと感じる。夜に使ってる人は見たことないし、それには理由があるんだ。元の投稿者はもうシャドウバンされてて、ひどい返信をしてたみたいだよ。" userName="lukan" createdAt="2025/08/19 09:10:37" color="#ff5c5c">}}




{{<matomeQuote body="ハリネズミみたいな野生動物は、ロボット芝刈り機に轢かれて切り刻まれたら、血まみれになって苦しみながら死んでいくことになるよ。素敵な野生動物の監査だね。ハリネズミは絶滅危惧種なんだから、昼間にロボット芝刈り機を動かしてくれよ。こういう想像が嫌なら、ハリネズミ救助で働く人たちのことを考えてみてほしい。" userName="lionkor" createdAt="2025/08/19 07:47:48" color="#45d325">}}




{{<matomeQuote body="モデルによるんじゃないかな。俺のは10メートル以上離れたら、もう聞こえないくらい静かだよ。" userName="phito" createdAt="2025/08/19 09:43:47" color="">}}




{{<matomeQuote body="電気モーターって、RPMが高くてもデシベルは低くできるんだ。完全に静かじゃないけど、25フィート（約7.6メートル）くらい離れれば、ほとんど聞こえなくなるくらい静かだよ。" userName="infecto" createdAt="2025/08/19 12:23:13" color="#45d325">}}




{{<matomeQuote body="うん、夜中の芝刈り機はひどいアイデアだね。この前、隣の家の煙探知機が電池切れで鳴ってるのが聞こえて、翌日電池を換えに行ってあげたんだ。あと、「showdead」設定なんて知らなかったよ、教えてくれてありがとう。" userName="alias_neo" createdAt="2025/08/19 09:23:30" color="">}}




{{<matomeQuote body="芝生の大部分を自然な景観に変えて、レクリエーションに使う部分だけを芝刈りする方がずっといいよね。" userName="goda90" createdAt="2025/08/19 14:22:12" color="">}}




{{<matomeQuote body="電動芝刈り機（ロボットじゃないけど）を使ってるんだけど、ガソリン式とそんなに音量が変わらないんだよね。エンジンの音はしないけど、ブレードが芝を刈る音が大半の騒音になってる。だからロボット芝刈り機を夜中に動かすのはあんまり良くないと思うよ。" userName="bigstrat2003" createdAt="2025/08/19 14:36:03" color="#785bff">}}




{{<matomeQuote body="chrip！YouTubeやTikTokの動画で、そういう生活をしてる人が増えてるって発見があるんだよな。" userName="SV_BubbleTime" createdAt="2025/08/19 14:42:10" color="">}}




{{<matomeQuote body="夜中？それは疑わしいな。日中なら、通常の環境音レベルでなら可能かもね。" userName="lukan" createdAt="2025/08/19 09:47:08" color="">}}




{{<matomeQuote body="ある程度経つと、脳がそのビーコン音を完全に無視するようになるよ。もしそもそもその音に気づくならね。トラックのバック音も、どこにいるか聞こえなくならないようにホワイトノイズ（または他の色のノイズ）を出すものに置き換えられてるのと似た理由だよ。これは体験しないと信じられないけどね。" userName="extraduder_ire" createdAt="2025/08/19 18:50:17" color="#785bff">}}




{{<matomeQuote body="＞夜中に使ってる人を見たことないって言うけど…いつまで確認してたの？朝5時に設定して、起きる前に終わらせるっていうのはアリだと思うよ。" userName="PunchyHamster" createdAt="2025/08/19 13:58:45" color="">}}




{{<matomeQuote body="それは同意できないな（SA650BベースのOpenMowerを自分で作ったんだけど）。田舎の地域だと、夜中でも10mくらい離れたら聞こえないよ。<br>午後の作業が終わる時以外は夜中に動かさないけどね。" userName="reitanuki" createdAt="2025/08/19 10:12:20" color="#ff5733">}}




{{<matomeQuote body="ちょっと頑丈になったロボット掃除機みたいなものにしては、まだ価格が高すぎるよ。その値段なら中古車が買えて、信頼性を上げるのにも十分な予算が残るくらいだ。安価なモデルの品質も良くない。Einhell（ヨーロッパのDeWaltみたいな電動工具ブランド）のを2台買ったけど、両方ともモーター故障で返品したよ。交換モーターは150ユーロで、バッテリーなしの400ユーロのロボット用だった。（18Vの工具バッテリーが使えるのが魅力だったんだけどね、簡単に交換できるから。）" userName="fy20" createdAt="2025/08/19 06:07:35" color="#ff33a1">}}




{{<matomeQuote body="最新のカミソリブレード式ロボット芝刈り機はほとんど聞こえないよ。Segwayは58 dBAと主張してる。都市部（こういう小型ロボット芝刈り機は小さな都市の芝生向けだけど）だと、背景騒音レベルもそれくらいになる。隣に立ってれば少し聞こえるかもしれないけど、フェンスとか隣人との距離があれば誰も迷惑しないんじゃないかな。" userName="Kirby64" createdAt="2025/08/20 17:08:00" color="#ff5733">}}




{{<matomeQuote body="ハリネズミって、自分に向かってくるうるさいものも無視するの？" userName="PunchyHamster" createdAt="2025/08/19 13:59:39" color="">}}




{{<matomeQuote body="住んでる場所やどんな生き物、昆虫がいるかで大きく変わるよ。自然な景観は大好きだけど、ただ芝生を伸ばしっぱなしにするのは違うんだよね。" userName="SV_BubbleTime" createdAt="2025/08/19 14:40:38" color="">}}




{{<matomeQuote body="そうだね、でも人間にとって静かでも、ハリネズミにとっては全然違うかもってこと忘れないで。地面を伝わる振動とか、人間目線じゃ気づかないことが、野生動物を混乱させるって意外と多いんだよね。" userName="wrasee" createdAt="2025/08/19 13:49:15" color="#45d325">}}




{{<matomeQuote body="ていうか、この芝刈り機ってどれくらい速いの？動物をひき殺すほど速いとは思えないんだけど。" userName="wing-_-nuts" createdAt="2025/08/19 16:04:44" color="">}}




{{<matomeQuote body="モデルによるだろうけど、うちのはMammotion Luba 2で、すごく静かだよ。夜中に動かさないのは、ヘッドライトがかなり明るいから。隣の家に影とか光の影響が出ちゃうかもって心配で、小さい子どもがいるの知ってるからね。" userName="foobarian" createdAt="2025/08/19 14:19:39" color="#ff33a1">}}




{{<matomeQuote body="良い考えだけど、結局動物は殺しちゃうんだよね。俺は48インチの乗用芝刈り機で田舎に住んでるけど、最初は小動物を心配してた。でも、どんなに頑張っても何匹かは死んじゃうって気づいたんだ。芝生は伸びてから刈るし、自然な環境だから小動物がたくさん住んでる。ウサギをひいたのは一回だけ覚えてるけど、見えないところでどれくらい死んでるか。子鹿じゃないだけマシかな。赤ちゃん鹿は、コンバインに引き寄せられるみたいだからね。" userName="HeyLaughingBoy" createdAt="2025/08/19 21:03:45" color="#ff33a1">}}




{{<matomeQuote body="朝5時に、隣の人が何か道具使ってる音で起こされたことないの？" userName="nemomarx" createdAt="2025/08/19 14:21:22" color="">}}




{{<matomeQuote body="「ただ伸ばしっぱなしにしろ」とは言ってないよ。レクリエーションに使う部分以外は自然な景観に変えようってこと。多くの場所で、例えば前庭なんてほとんど使わないでしょ。そこを自然な景観にしたら、実際に何を植えるかにもよるけど、年に1回以下しか芝刈りしなくて済むかもしれないよ。" userName="goda90" createdAt="2025/08/19 14:53:13" color="">}}




{{<matomeQuote body="もしかして、あなたの特定のモデルの話？俺はMakitaの電動芝刈り機を使ってるけど、全然違うよ。すごくリラックスできるし、耳栓なしで芝刈りしてるんだ。どのくらい音が届くかテストしたけど、隣近所の人は誰も聞こえないみたい。一方で、周りの隣人や何区画も離れたところから、ガソリン芝刈り機の音が聞こえてくるんだよね。" userName="lowkj" createdAt="2025/08/20 13:23:37" color="#ff5c5c">}}




{{<matomeQuote body="これは情報不足だよ。うちのNavimowはほとんど音が出ないんだ。草を刈る時にカチカチッとかプツプツッて音が少しするだけ。機械の部品が全然違ってて、ヘリコプターみたいなブレードじゃなくて、縁にカミソリの刃がついた静かなソリッドディスクなんだ。" userName="arcticfox" createdAt="2025/08/19 16:56:45" color="#45d325">}}




{{<matomeQuote body="超静音の新しい世代の芝刈り機があるのか、それとも俺たちの聴力レベルが全然違うのか、どっちかだな。追記:でも、俺は周りを歩いてて感じる芝刈り機の音しか知らないからね。自分では持ってないし、そのモデル番号も調べてないんだ。もしかしたら調べてみるかも。" userName="lukan" createdAt="2025/08/19 10:48:12" color="">}}




{{<matomeQuote body="脅かされた時に隠れたり動かない動物が心配って話だろ。ウサギを追いかけるわけじゃなくてさ。それに、動物たちは騒音に慣れていくうちに怪我することもあるだろうし。" userName="eightys3v3n" createdAt="2025/08/19 20:46:28" color="">}}

{{</details>}}




{{< details summary="もっとコメントを表示（2）">}}

{{<matomeQuote body="これ、ハードウェアのプロジェクトだったら良かったのに。今の乗用芝刈り機は品質も価格もひどい。俺も2台壊れて、1台は配線が燃えるし、もう1台は数十年使われてる最悪なエンジンで年に数回ぶっ壊れる。新品も中古も信じられないくらい高いんだ。だから、Ryobiの電動芝刈り機からモーターを回収して、既存の乗用芝刈り機をフル電動化することにしたんだ。Ryobiの40Vバッテリーを再利用できるから、バッテリーシステムを自作する必要がないのがマジでいい。こういうちゃんと設計されたプロジェクトが出てきたら最高なんだけどね。eBayでモーターが約50ドル、コントローラーも同じくらいで手に入るし、可能性はすごいあると思うよ。" userName="IgorPartola" createdAt="2025/08/19 05:07:59" color="#ff33a1">}}




{{<matomeQuote body="最新の技術部品とUS製10年保証バッテリー、バイオ複合材を使って、John Deere Gatorを凌駕する電動UTVをゼロから設計したんだ。NEVの特例措置は面白いね。RCカーをスケールアップする方法を学んだから、LincolnやTeslaがEVだからといって色んなものを詰め込む考え方とは違う。EVはシンプルに使うのが一番だよ。" userName="6stringmerc" createdAt="2025/08/19 14:26:42" color="">}}




{{<matomeQuote body="もし情報がオンラインにあるなら、もっと詳しく聞きたいな。うちの乗用芝刈り機とガーデントラクターが壊れないから、電動芝刈り機はしばらく諦めてるんだ。修理できる限り古いものを使いたいしね。でも、Honda Foremanより静かな電動UTVを作るのはすごく興味あるよ。" userName="HeyLaughingBoy" createdAt="2025/08/19 21:10:29" color="">}}




{{<matomeQuote body="新品も中古も価格が高すぎるってことはさ、発表されてるインフレ率って間違ってんじゃないの？こんな事例がいくつあれば、その仮説を立てられるんだろうね。" userName="vdupras" createdAt="2025/08/19 12:21:28" color="">}}




{{<matomeQuote body="芝刈り機みたいな一部の商品だけじゃなくて、食料、住宅、エネルギー、教育、医療みたいにみんなが大量に買うものを見ないとインフレは判断できないよ。(ところで、君の数字が正しいかどうかも分からないし、どこの国にいるのかも知らないけどね。)" userName="marcosdumay" createdAt="2025/08/19 13:59:47" color="">}}




{{<matomeQuote body="インフレって測り方が色々あるんだよね。絶対値じゃなくて、たくさんの商品の平均値みたいなもんだよ。色々な証券の組み合わせがあるインデックスファンドみたいな感じだね。" userName="IgorPartola" createdAt="2025/08/19 17:19:03" color="">}}




{{<matomeQuote body="価格の高さも問題だけど、Briggs & Strattonのエンジン設計が本当にひどいんだよ。ガバナーとオイルポンプが一体で壊れやすいし、圧縮開放機構も貧弱で金属片が飛散する。カムシャフトの構造も粗悪で、ヘッドガスケットもすぐにダメになる。ロッカーアームも常に調整が必要で、今の小型乗用芝刈り機市場はクソ。GreenworksやRyobiの電動機はいいけど5,000ドルもするし、ガソリンに比べてバッテリーのエネルギー密度が低すぎるのが課題だね。<br>画像リンク: https://www.lawnmowerpros.com/prodimages/691968.jpg, https://www.briggsbits.co.uk/acatalog/84005207.3.jpeg, https://www.lsengineers.co.uk/media/catalog/product/cache/21..." userName="IgorPartola" createdAt="2025/08/19 17:58:03" color="#ff33a1">}}




{{<matomeQuote body="このデザインって新しいの？うちの40年前のMurrayガーデントラクター、冬はかかりにくいけど全然壊れる気配ないんだよね。18hp 2気筒 Briggs 4ストロークエンジンなんだけどさ。" userName="HeyLaughingBoy" createdAt="2025/08/19 21:15:05" color="#38d3d3">}}




{{<matomeQuote body="これはIntekシングルシリンダー500ccで、16-18hpらしいね。新しいデザインなんだろうけど、そこまで最新じゃないと思う。Vツインはもっと壊れにくいらしいけど、分解してないからわかんないや。でもVツインは配線不良で火事になるって噂もあるんだよね。" userName="IgorPartola" createdAt="2025/08/19 21:47:58" color="#ff5c5c">}}




{{<matomeQuote body="もし投稿者がUSAの人なら、インフレだけじゃなくてTrump Tariffsも影響してるんじゃないかな？" userName="Mumps" createdAt="2025/08/19 13:41:12" color="">}}




{{<matomeQuote body="うん、USAに住んでるよ。インフレは物価全体の上がることだから、関税もその一因だよね。どれくらいかはわかんないけど、この件では結構影響してる気がするな。" userName="IgorPartola" createdAt="2025/08/19 17:17:19" color="">}}




{{<matomeQuote body="「新しい挑戦を探してる」って？じゃあ芝刈り機を改造して道路脇のゴミを自動で拾うようにして、Caltransに売ってくれよ。dot.ca.govを見てみてくれ！" userName="sema4hacker" createdAt="2025/08/19 01:32:58" color="#785bff">}}




{{<matomeQuote body="タイトルを読んで思い出したけど、90年代にうちの近所の人たちは自作で芝刈り機作ってたんだ。父がスクラップと洗濯機のモーター、ベビーカーの車輪で作ったんだよ。オープンソースみたいな感じで、みんな真似したり手伝ったりしてたな。結構長く使えてたんだよ :)" userName="paffdragon" createdAt="2025/08/19 03:57:09" color="#45d325">}}




{{<matomeQuote body="うちの叔父さん、何年も半DIYの芝刈り機使ってたんだ。壊れたエンジンを古い電動ドリルに替えてたんだけど、それでちゃんと動いてたよ。" userName="jabl" createdAt="2025/08/19 06:04:28" color="">}}




{{<matomeQuote body="近所の人、太陽光発電で排気ガスゼロ、自動で肥料まいて生物多様性も高める自律型芝刈りロボットを何台も持ってるんだ。彼はそれを「tortoises」って呼んでるよ。" userName="coryodaniel" createdAt="2025/08/19 13:08:04" color="#ff33a1">}}




{{<matomeQuote body="これ楽しいプロジェクトだよね。数年前、プッシュリールモアを自律制御できるように改造したんだ。一般的なロボット芝刈り機よりは安全じゃないけど、Lidarを選んでベースアンテナも要らなかった。週1で動かすだけで、カット品質が最高なんだ。" userName="conductr" createdAt="2025/08/19 04:36:12" color="#ff33a1">}}




{{<matomeQuote body="芝刈り機の写真とかビデオ、共有してくれない？俺、プッシュリールモアをキットなしで電動化したんだけど、自律化を目指して、駆動輪用に高トルク低速モーターを導入しようかと思ってるんだ。君の経験、ぜひ見たいな！" userName="skewbone" createdAt="2025/08/19 12:15:19" color="#38d3d3">}}




{{<matomeQuote body="自宅用にOpenMower作ったけど、部品調達の店が閉まっちゃった。シャーシはVスロットアルミフレームで組んで、ハブモーターやバッテリーはAmazonとかAliexpressで買ったよ。マイコンはArduino Megaで、ケースはひっくり返したRubbermaidコンテナを使ったんだ。<br>あとは芝刈り部分をどう取り付けるかだけ考えれば、他の乗り物を作るのと同じさ。" userName="conductr" createdAt="2025/08/19 13:44:36" color="#785bff">}}




{{<matomeQuote body="簡単に聞こえたらごめんね。YouTubeで学んだことを自分のニーズに合わせて応用しただけなんだ。俺みたいな金融畑の人間でもできたから、みんなにも希望はあるよ :)<br>確かに俺はいくつかロボット作ってたから楽だったけど、初めてなら半年かかるかもね。メーカー気分が好きならいいけど、基本的には買った方がいいよ。" userName="conductr" createdAt="2025/08/20 12:57:41" color="">}}




{{<matomeQuote body="アメリカで1400平方メートルの芝生をOpenMowerで管理してるよ。何でも聞いてね。(PS. 興味があるなら、ドキュメントやGitHubページを読むだけじゃなく、Discordに行った方がいいよ。そっちが一番活発だからね！)" userName="jeremysalwen" createdAt="2025/08/19 07:12:59" color="">}}




{{<matomeQuote body="記事に障害物回避がないって書いてあるけど、どうやって障害物に対応してるの？せめてぶつかったことを検知するセンサーはあるのかな？これが一番心配だよ。<br>あと、どれくらい使ってて、どれくらい使えない期間があった？" userName="wickedsight" createdAt="2025/08/19 13:21:31" color="#ff33a1">}}




{{<matomeQuote body="障害物回避はないけど、よくスタックするのを認識して、次の目的地を飛ばすことで、回避してるように見えることもあるよ。新しい機能でスタックしたらまずバックするようになった。<br>これはハッキング可能なROSシステムだから、みんなセンサーを加えて障害物回避を実現してるね。公式サポートはないけど。<br>この夏と去年の夏に使ってるけど、使えない時間ってよりは、スタックして助けが必要なことが多いかな。でもうちの庭は一番難しいOpenMowerユーザーだと思うよ。" userName="jeremysalwen" createdAt="2025/08/19 13:49:14" color="#45d325">}}




{{<matomeQuote body="アメリカでOpenMowerに必要なハードウェアを手に入れるのって、どれくらい大変だった？なんか難しそうだし、高くつきそうだよね。" userName="zeroping" createdAt="2025/08/19 12:40:52" color="">}}




{{<matomeQuote body="Yardforce500はUSAでは手に入りにくいけど、ヨーロッパだとすごく安いんだ。ドイツから転送サービス使って、本体が$208、転送費が$135だったよ。費用は全部このスプレッドシートにまとめてあるから見てみてね！<br>URL: https://docs.google.com/spreadsheets/d/1BV8VCtqTer8iodXvyRd1..." userName="jeremysalwen" createdAt="2025/08/19 13:43:01" color="#785bff">}}




{{<matomeQuote body="プロジェクトを始めてから、OpenMowerが『ちゃんと動いてる！』って感じられるようになるまで、どれくらいの時間がかかった？" userName="napo" createdAt="2025/08/19 07:20:54" color="">}}




{{<matomeQuote body="具体的な期間は言いにくいな。2023年秋に『動いた』けど、実用じゃなかった。2024年夏に実用になったけど、手助けとアップグレードが常に必要だったよ。今年はほとんど任せられるようになったけど、まだ頻繁に助けが必要。でも自分でやるよりは全然楽だね。<br>うちの庭はOpenMowerにとって一番難しい場所だよ。バーモント州で、急斜面、凸凹、GPS不良、雨が多い。庭も広くて複雑。簡単な使い方ならもっと早くうまくいっただろうね。Mowgliビルドを選んだのも複雑さの原因だよ。" userName="jeremysalwen" createdAt="2025/08/19 07:50:41" color="#785bff">}}

{{</details>}}



[記事一覧へ]({{% ref "/posts/" %}})
